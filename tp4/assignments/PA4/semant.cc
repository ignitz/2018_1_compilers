#include <stdlib.h>
#include <stdio.h>
#include <stdarg.h>
#include "semant.h"
#include "utilities.h"

extern int semant_debug;
extern char *curr_filename;

//////////////////////////////////////////////////////////////////////
//
// Symbols
//
// For convenience, a large number of symbols are predefined here.
// These symbols include the primitive type and method names, as well
// as fixed names used by the runtime system.
//
//////////////////////////////////////////////////////////////////////
static Symbol
    arg,
    arg2,
    Bool,
    concat,
    cool_abort,
    copy,
    Int,
    in_int,
    in_string,
    IO,
    length,
    Main,
    main_meth,
    No_class,
    No_type,
    Object,
    out_int,
    out_string,
    prim_slot,
    self,
    SELF_TYPE,
    Str,
    str_field,
    substr,
    type_name,
    val;

static Class_ curr_class = NULL;
static ClassTable *classtable;
static SymbolTable<Symbol, Symbol> attribtable;

typedef SymbolTable<Symbol, method_class> MethodTable;
static std::map<Symbol, MethodTable> methodtables;

//
// Initializing the predefined symbols.
//
static void initialize_constants(void)
{
    arg = idtable.add_string("arg");
    arg2 = idtable.add_string("arg2");
    Bool = idtable.add_string("Bool");
    concat = idtable.add_string("concat");
    cool_abort = idtable.add_string("abort");
    copy = idtable.add_string("copy");
    Int = idtable.add_string("Int");
    in_int = idtable.add_string("in_int");
    in_string = idtable.add_string("in_string");
    IO = idtable.add_string("IO");
    length = idtable.add_string("length");
    Main = idtable.add_string("Main");
    main_meth = idtable.add_string("main");
    //   _no_class is a symbol that can't be the name of any
    //   user-defined class.
    No_class = idtable.add_string("_no_class");
    No_type = idtable.add_string("_no_type");
    Object = idtable.add_string("Object");
    out_int = idtable.add_string("out_int");
    out_string = idtable.add_string("out_string");
    prim_slot = idtable.add_string("_prim_slot");
    self = idtable.add_string("self");
    SELF_TYPE = idtable.add_string("SELF_TYPE");
    Str = idtable.add_string("String");
    str_field = idtable.add_string("_str_field");
    substr = idtable.add_string("substr");
    type_name = idtable.add_string("type_name");
    val = idtable.add_string("_val");
}

ClassTable::ClassTable(Classes classes) : semant_errors(0), error_stream(cerr)
{
    int i;

    install_basic_classes();

    i = classes->first();
    while (classes->more(i))
    {
        if (classes->nth(i)->GetName() == SELF_TYPE)
        {
            semant_error(classes->nth(i)) << "Error! SELF_TYPE redeclared!" << std::endl;
        }

        if (m_classes.find(classes->nth(i)->GetName()) == m_classes.end())
        {
            m_classes.insert(std::make_pair(classes->nth(i)->GetName(), classes->nth(i)));
        }
        else
        {
            semant_error(classes->nth(i)) << "Error! Class " << classes->nth(i)->GetName() << " has been defined!" << std::endl;
            return;
        }
        i = classes->next(i);
    }

    if (m_classes.find(Main) == m_classes.end())
    {
        semant_error() << "Class Main is not defined." << std::endl;
    }

    i = classes->first();
    while (classes->more(i))
    {
        curr_class = classes->nth(i);

        Symbol parent_name = curr_class->GetParent();
        while (parent_name != Object && parent_name != classes->nth(i)->GetName())
        {
            if (m_classes.find(parent_name) == m_classes.end())
            {
                semant_error(curr_class) << "Error! Cannot find class " << parent_name << std::endl;
                return;
            }
            if (parent_name == Int || parent_name == Str || parent_name == SELF_TYPE || parent_name == Bool)
            {
                semant_error(curr_class) << "Error! Class " << curr_class->GetName() << " cannot inherit from " << parent_name << std::endl;
                return;
            }

            curr_class = m_classes[parent_name];
            parent_name = curr_class->GetParent();
        }

        if (parent_name != Object)
        {
            semant_error(curr_class) << "Error! Cycle inheritance!" << std::endl;
            return;
        }
        i = classes->next(i);
    }
}

bool ClassTable::CheckInheritance(Symbol ancestor, Symbol child)
{
    if (ancestor == SELF_TYPE)
    {
        return child == SELF_TYPE;
    }

    if (child == SELF_TYPE)
    {
        child = curr_class->GetName();
    }

    while (child != No_class)
    {
        if (child == ancestor)
        {
            return true;
        }
        child = m_classes.find(child)->second->GetParent();
    }
    return false;
}

std::list<Symbol> ClassTable::GetInheritancePath(Symbol type)
{
    if (type == SELF_TYPE)
    {
        type = curr_class->GetName();
    }

    std::list<Symbol> path;

    while (type != No_class)
    {
        path.push_front(type);
        type = m_classes[type]->GetParent();
    }

    return path;
}

Symbol ClassTable::FindCommonAncestor(Symbol type1, Symbol type2)
{

    std::list<Symbol> path1 = GetInheritancePath(type1);
    std::list<Symbol> path2 = GetInheritancePath(type2);

    Symbol ret;
    std::list<Symbol>::iterator iter1 = path1.begin(),
                                iter2 = path2.begin();

    while (iter1 != path1.end() && iter2 != path2.end())
    {
        if (*iter1 == *iter2)
        {
            ret = *iter1;
        }
        else
        {
            break;
        }

        iter1++;
        iter2++;
    }

    return ret;
}

void ClassTable::install_basic_classes()
{

    // The tree package uses these globals to annotate the classes built below.
    // curr_lineno  = 0;
    Symbol filename = stringtable.add_string("<basic class>");

    // The following demonstrates how to create dummy parse trees to
    // refer to basic Cool classes.  There's no need for method
    // bodies -- these are already built into the runtime system.

    // IMPORTANT: The results of the following expressions are
    // stored in local variables.  You will want to do something
    // with those variables at the end of this method to make this
    // code meaningful.

    //
    // The Object class has no parent class. Its methods are
    //        abort() : Object    aborts the program
    //        type_name() : Str   returns a string representation of class name
    //        copy() : SELF_TYPE  returns a copy of the object
    //
    // There is no need for method bodies in the basic classes---these
    // are already built in to the runtime system.

    Class_ Object_class =
        class_(Object,
               No_class,
               append_Features(
                   append_Features(
                       single_Features(method(cool_abort, nil_Formals(), Object, no_expr())),
                       single_Features(method(type_name, nil_Formals(), Str, no_expr()))),
                   single_Features(method(copy, nil_Formals(), SELF_TYPE, no_expr()))),
               filename);

    //
    // The IO class inherits from Object. Its methods are
    //        out_string(Str) : SELF_TYPE       writes a string to the output
    //        out_int(Int) : SELF_TYPE            "    an int    "  "     "
    //        in_string() : Str                 reads a string from the input
    //        in_int() : Int                      "   an int     "  "     "
    //
    Class_ IO_class =
        class_(IO,
               Object,
               append_Features(
                   append_Features(
                       append_Features(
                           single_Features(method(out_string, single_Formals(formal(arg, Str)),
                                                  SELF_TYPE, no_expr())),
                           single_Features(method(out_int, single_Formals(formal(arg, Int)),
                                                  SELF_TYPE, no_expr()))),
                       single_Features(method(in_string, nil_Formals(), Str, no_expr()))),
                   single_Features(method(in_int, nil_Formals(), Int, no_expr()))),
               filename);

    //
    // The Int class has no methods and only a single attribute, the
    // "val" for the integer.
    //
    Class_ Int_class =
        class_(Int,
               Object,
               single_Features(attr(val, prim_slot, no_expr())),
               filename);

    //
    // Bool also has only the "val" slot.
    //
    Class_ Bool_class =
        class_(Bool, Object, single_Features(attr(val, prim_slot, no_expr())), filename);

    //
    // The class Str has a number of slots and operations:
    //       val                                  the length of the string
    //       str_field                            the string itself
    //       length() : Int                       returns length of the string
    //       concat(arg: Str) : Str               performs string concatenation
    //       substr(arg: Int, arg2: Int): Str     substring selection
    //
    Class_ Str_class =
        class_(Str,
               Object,
               append_Features(
                   append_Features(
                       append_Features(
                           append_Features(
                               single_Features(attr(val, Int, no_expr())),
                               single_Features(attr(str_field, prim_slot, no_expr()))),
                           single_Features(method(length, nil_Formals(), Int, no_expr()))),
                       single_Features(method(
                           concat,
                           single_Formals(formal(arg, Str)),
                           Str,
                           no_expr()))),
                   single_Features(method(
                       substr,
                       append_Formals(
                           single_Formals(formal(arg, Int)),
                           single_Formals(formal(arg2, Int))),
                       Str,
                       no_expr()))),
               filename);
    m_classes.insert(std::make_pair(Object, Object_class));
    m_classes.insert(std::make_pair(IO, IO_class));
    m_classes.insert(std::make_pair(Int, Int_class));
    m_classes.insert(std::make_pair(Bool, Bool_class));
    m_classes.insert(std::make_pair(Str, Str_class));
}

////////////////////////////////////////////////////////////////////
//
// semant_error is an overloaded function for reporting errors
// during semantic analysis.  There are three versions:
//
//    ostream& ClassTable::semant_error()
//
//    ostream& ClassTable::semant_error(Class_ c)
//       print line number and filename for `c'
//
//    ostream& ClassTable::semant_error(Symbol filename, tree_node *t)
//       print a line number and filename
//
///////////////////////////////////////////////////////////////////

ostream &ClassTable::semant_error(Class_ c)
{
    if (c == NULL)
        return semant_error();
    return semant_error(c->get_filename(), c);
}

ostream &ClassTable::semant_error(Symbol filename, tree_node *t)
{
    error_stream << filename << ":" << t->get_line_number() << ": ";
    return semant_error();
}

ostream &ClassTable::semant_error()
{
    semant_errors++;
    return error_stream;
}

void method_class::AddMethodToTable(Symbol class_name)
{
    methodtables[class_name].addid(name, new method_class(copy_Symbol(name), formals->copy_list(), copy_Symbol(return_type), expr->copy_Expression()));
}

void method_class::AddAttribToTable(Symbol class_name) {}

void attr_class::AddMethodToTable(Symbol class_name) {}

void attr_class::AddAttribToTable(Symbol class_name)
{

    if (name == self)
    {
        classtable->semant_error(curr_class) << "Error! 'self' cannot be the name of an attribute in class " << curr_class->GetName() << std::endl;
    }
    if (attribtable.lookup(name) != NULL)
    {
        classtable->semant_error(curr_class) << "Error! attribute '" << name << "' already exists!" << std::endl;
        return;
    }

    attribtable.addid(name, new Symbol(type_decl));
}

void method_class::CheckFeatureType()
{
    int i;

    if (classtable->m_classes.find(return_type) == classtable->m_classes.end() && return_type != SELF_TYPE)
    {
        classtable->semant_error(curr_class) << "Error! return type " << return_type << " doesn't exist." << std::endl;
    }
    attribtable.enterscope();
    std::set<Symbol> used_names;

    i = formals->first();
    while (formals->more(i))
    {
        Symbol name = formals->nth(i)->GetName();
        if (used_names.find(name) != used_names.end())
        {
            classtable->semant_error(curr_class) << "Error! formal name duplicated. " << std::endl;
        }
        else
        {
            used_names.insert(name);
        }

        Symbol type = formals->nth(i)->GetType();
        if (classtable->m_classes.find(type) == classtable->m_classes.end())
        {
            classtable->semant_error(curr_class) << "Error! Cannot find class " << type << std::endl;
        }
        if (formals->nth(i)->GetName() == self)
        {
            classtable->semant_error(curr_class) << "Error! self in formal " << std::endl;
        }
        attribtable.addid(formals->nth(i)->GetName(), new Symbol(formals->nth(i)->GetType()));
        i = formals->next(i);
    }

    Symbol expr_type = expr->CheckExprType();
    std::cout << return_type << '\n';
    std::cout << expr_type << '\n';

    if (classtable->CheckInheritance(return_type, expr_type) == false && return_type != SELF_TYPE)
    {
        classtable->semant_error(curr_class) << "Error! return type is not ancestor of expr type. " << std::endl;
    }
    attribtable.exitscope();
}

void attr_class::CheckFeatureType()
{

    if (init->CheckExprType() == No_type)
    {
    }
}

Symbol assign_class::CheckExprType()
{
    Symbol *lvalue_type = attribtable.lookup(name);
    Symbol rvalue_type = expr->CheckExprType();
    if (lvalue_type == NULL)
    {
        classtable->semant_error(curr_class) << "Error! Cannot find lvalue " << name << std::endl;
        type = Object;
        return type;
    }
    if (classtable->CheckInheritance(*lvalue_type, rvalue_type) == false)
    {
        classtable->semant_error(curr_class) << "Error! lvalue is not an ancestor of rvalue. " << std::endl;
        type = Object;
        return type;
    }
    type = rvalue_type;
    return type;
}

Symbol static_dispatch_class::CheckExprType()
{
    bool error = false;
    int i;
    std::list<Symbol>::iterator iter;

    Symbol expr_class = expr->CheckExprType();

    if (classtable->CheckInheritance(type_name, expr_class) == false)
    {
        error = true;
        classtable->semant_error(curr_class) << "Error! Static dispatch class is not an ancestor." << std::endl;
    }

    std::list<Symbol> path = classtable->GetInheritancePath(type_name);
    method_class *method = NULL;

    iter = path.begin();
    while (iter != path.end())
    {
        if ((method = methodtables[*iter].lookup(name)) != NULL)
        {
            break;
        }
        ++iter;
    }

    if (method == NULL)
    {
        error = true;
        classtable->semant_error(curr_class) << "Error! Cannot find method '" << name << "'" << std::endl;
    }

    i = actual->first();
    while (actual->more(i))
    {
        Symbol actual_type = actual->nth(i)->CheckExprType();
        if (method != NULL)
        {
            Symbol formal_type = method->GetFormals()->nth(i)->GetType();
            if (classtable->CheckInheritance(formal_type, actual_type) == false)
            {
                classtable->semant_error(curr_class) << "Error! Actual type " << actual_type << " doesn't suit formal type " << formal_type << std::endl;
                error = true;
            }
        }
        i = actual->next(i);
    }

    if (error)
    {
        type = Object;
    }
    else
    {
        type = method->GetType();
        if (type == SELF_TYPE)
        {
            type = type_name;
        }
    }

    return type;
}

Symbol dispatch_class::CheckExprType()
{
    bool error = false;
    std::list<Symbol>::iterator iter;
    int i;

    Symbol expr_type = expr->CheckExprType();

    if (expr_type == SELF_TYPE)
    {
    }
    else
    {
    }

    // Find the method along the inheritance path.
    // We want the definition in a subclass.
    std::list<Symbol> path = classtable->GetInheritancePath(expr_type);
    method_class *method = NULL;

    iter = path.begin();
    while (iter != path.end())
    {
        if ((method = methodtables[*iter].lookup(name)) != NULL)
        {
            break;
        }
        ++iter;
    }

    if (method == NULL)
    {
        error = true;
        classtable->semant_error(curr_class) << "Error! Cannot find method '" << name << "'" << std::endl;
    }

    // Check the params.
    i = actual->first();
    while (actual->more(i))
    {
        Symbol actual_type = actual->nth(i)->CheckExprType();
        if (method != NULL)
        {
            Symbol formal_type = method->GetFormals()->nth(i)->GetType();
            if (classtable->CheckInheritance(formal_type, actual_type) == false)
            {
                classtable->semant_error(curr_class) << "Error! Actual type " << actual_type << " doesn't suit formal type " << formal_type << std::endl;
                error = true;
            }
        }
        i = actual->next(i);
    }

    if (error)
    {
        type = Object;
    }
    else
    {
        type = method->GetType();
        if (type == SELF_TYPE)
        {
            type = expr_type;
        }
    }

    return type;
}

Symbol cond_class::CheckExprType()
{
    if (pred->CheckExprType() != Bool)
    {
        classtable->semant_error(curr_class) << "Error! Type of pred is not Bool." << std::endl;
    }

    Symbol then_type = then_exp->CheckExprType();
    Symbol else_type = else_exp->CheckExprType();

    if (else_type == No_type)
    {
        type = then_type;
    }
    else
    {
        type = classtable->FindCommonAncestor(then_type, else_type);
    }
    return type;
}

Symbol loop_class::CheckExprType()
{
    if (pred->CheckExprType() != Bool)
    {
        classtable->semant_error(curr_class) << "Error! Type of pred is not Bool." << std::endl;
    }
    body->CheckExprType();
    type = Object;
    return type;
}

Symbol typcase_class::CheckExprType()
{

    Symbol expr_type = expr->CheckExprType();

    Case branch;
    std::vector<Symbol> branch_types;
    std::vector<Symbol> branch_type_decls;

    int i = cases->first();
    while (cases->more(i))
    {
        branch = cases->nth(i);
        Symbol branch_type = branch->CheckBranchType();
        branch_types.push_back(branch_type);
        branch_type_decls.push_back(((branch_class *)branch)->GetTypeDecl());
        i = cases->next(i);
    }

    for (size_t i = 0; i < branch_types.size() - 1; ++i)
    {
        for (size_t j = i + 1; j < branch_types.size(); ++j)
        {
            if (branch_type_decls[i] == branch_type_decls[j])
            {
                classtable->semant_error(curr_class) << "Error! Two branches have same type." << std::endl;
            }
        }
    }

    type = branch_types[0];
    for (size_t i = 1; i < branch_types.size(); ++i)
    {
        type = classtable->FindCommonAncestor(type, branch_types[i]);
    }
    return type;
}

Symbol branch_class::CheckBranchType()
{
    attribtable.enterscope();

    attribtable.addid(name, new Symbol(type_decl));
    Symbol type = expr->CheckExprType();

    attribtable.exitscope();

    return type;
}

Symbol block_class::CheckExprType()
{
    int i = body->first();
    while (body->more(i))
    {
        type = body->nth(i)->CheckExprType();
        i = body->next(i);
    }
    return type;
}

Symbol let_class::CheckExprType()
{
    if (identifier == self)
    {
        classtable->semant_error(curr_class) << "Error! self in let binding." << std::endl;
    }

    attribtable.enterscope();
    attribtable.addid(identifier, new Symbol(type_decl));

    Symbol init_type = init->CheckExprType();
    if (init_type != No_type)
    {
        if (classtable->CheckInheritance(type_decl, init_type) == false)
        {
            classtable->semant_error(curr_class) << "Error! init value is not child." << std::endl;
        }
    }

    type = body->CheckExprType();
    attribtable.exitscope();
    return type;
}

Symbol plus_class::CheckExprType()
{
    Symbol e1_type = e1->CheckExprType();
    Symbol e2_type = e2->CheckExprType();
    if (e1_type != Int || e2_type != Int)
    {
        classtable->semant_error(curr_class) << "Error! '+' meets non-Int value." << std::endl;
        type = Object;
    }
    else
    {
        type = Int;
    }
    return type;
}

Symbol sub_class::CheckExprType()
{
    Symbol e1_type = e1->CheckExprType();
    Symbol e2_type = e2->CheckExprType();
    if (e1_type != Int || e2_type != Int)
    {
        classtable->semant_error(curr_class) << "Error! '-' meets non-Int value." << std::endl;
        type = Object;
    }
    else
    {
        type = Int;
    }
    return type;
}

Symbol mul_class::CheckExprType()
{
    Symbol e1_type = e1->CheckExprType();
    Symbol e2_type = e2->CheckExprType();
    if (e1_type != Int || e2_type != Int)
    {
        classtable->semant_error(curr_class) << "Error! '*' meets non-Int value." << std::endl;
        type = Object;
    }
    else
    {
        type = Int;
    }
    return type;
}

Symbol divide_class::CheckExprType()
{
    Symbol e1_type = e1->CheckExprType();
    Symbol e2_type = e2->CheckExprType();
    if (e1_type != Int || e2_type != Int)
    {
        classtable->semant_error(curr_class) << "Error! '/' meets non-Int value." << std::endl;
        type = Object;
    }
    else
    {
        type = Int;
    }
    return type;
}

Symbol neg_class::CheckExprType()
{
    if (e1->CheckExprType() != Int)
    {
        classtable->semant_error(curr_class) << "Error! '~' meets non-Int value." << std::endl;
        type = Object;
    }
    else
    {
        type = Int;
    }
    return type;
}

Symbol lt_class::CheckExprType()
{
    Symbol e1_type = e1->CheckExprType();
    Symbol e2_type = e2->CheckExprType();
    if (e1_type != Int || e2_type != Int)
    {
        classtable->semant_error(curr_class) << "Error! '<' meets non-Int value." << std::endl;
        type = Object;
    }
    else
    {
        type = Bool;
    }
    return type;
}

Symbol eq_class::CheckExprType()
{
    Symbol e1_type = e1->CheckExprType();
    Symbol e2_type = e2->CheckExprType();
    if (e1_type == Int || e2_type == Int || e1_type == Bool || e2_type == Bool || e1_type == Str || e2_type == Str)
    {
        if (e1_type != e2_type)
        {
            classtable->semant_error(curr_class) << "Error! '=' meets different types." << std::endl;
            type = Object;
        }
        else
        {
            type = Bool;
        }
    }
    else
    {
        type = Bool;
    }
    return type;
}

Symbol leq_class::CheckExprType()
{
    Symbol e1_type = e1->CheckExprType();
    Symbol e2_type = e2->CheckExprType();
    if (e1_type != Int || e2_type != Int)
    {
        classtable->semant_error(curr_class) << "Error! '<=' meets non-Int value." << std::endl;
        type = Object;
    }
    else
    {
        type = Bool;
    }
    return type;
}

Symbol comp_class::CheckExprType()
{
    if (e1->CheckExprType() != Bool)
    {
        classtable->semant_error(curr_class) << "Error! 'not' meets non-Bool value." << std::endl;
        type = Object;
    }
    else
    {
        type = Bool;
    }
    return type;
}

Symbol int_const_class::CheckExprType()
{
    type = Int;
    return type;
}

Symbol bool_const_class::CheckExprType()
{
    type = Bool;
    return type;
}

Symbol string_const_class::CheckExprType()
{
    type = Str;
    return type;
}

Symbol new__class::CheckExprType()
{
    if (type_name != SELF_TYPE && classtable->m_classes.find(type_name) == classtable->m_classes.end())
    {
        classtable->semant_error(curr_class) << "Error! type " << type_name << " doesn't exist." << std::endl;
    }
    type = type_name;
    return type;
}

Symbol isvoid_class::CheckExprType()
{
    e1->CheckExprType();
    type = Bool;
    return type;
}

Symbol no_expr_class::CheckExprType()
{
    return No_type;
}

Symbol object_class::CheckExprType()
{
    if (name == self)
    {
        type = SELF_TYPE;
        return type;
    }

    Symbol *found_type = attribtable.lookup(name);
    if (found_type == NULL)
    {
        classtable->semant_error(curr_class) << "Cannot find object " << name << std::endl;
        type = Object;
    }
    else
    {
        type = *found_type;
    }

    return type;
}

/*   This is the entry point to the semantic checker.
     Your checker should do the following two things:
     1) Check that the program is semantically correct
     2) Decorate the abstract syntax tree with type information
        by setting the `type' field in each Expression node.
        (see `tree.h')
     You are free to first do 1), make sure you catch all semantic
     errors. Part 2) can be done in a second stage, when you want
     to build mycoolc.
 */
void program_class::semant()
{
    initialize_constants();

    classtable = new ClassTable(classes);

    if (classtable->errors())
    {
        cerr << "Compilation halted due to static semantic errors." << endl;
        exit(1);
    }

    for (std::map<Symbol, Class_>::iterator iter = classtable->m_classes.begin(); iter != classtable->m_classes.end(); ++iter)
    {

        Symbol class_name = iter->first;
        methodtables[class_name].enterscope();
        Features curr_features = classtable->m_classes[class_name]->GetFeatures();
        for (int j = curr_features->first(); curr_features->more(j); j = curr_features->next(j))
        {
            Feature curr_feature = curr_features->nth(j);
            curr_feature->AddMethodToTable(class_name);
        }
    }

    for (std::map<Symbol, Class_>::iterator iter = classtable->m_classes.begin(); iter != classtable->m_classes.end(); ++iter)
    {
        Symbol class_name = iter->first;
        curr_class = classtable->m_classes[class_name];

        Features curr_features = classtable->m_classes[class_name]->GetFeatures();

        for (int j = curr_features->first(); curr_features->more(j); j = curr_features->next(j))
        {
            Feature curr_method = curr_features->nth(j);

            if (curr_method->IsMethod() == false)
            {
                continue;
            }

            Formals curr_formals = ((method_class *)(curr_method))->GetFormals();

            std::list<Symbol> path = classtable->GetInheritancePath(class_name);
            for (std::list<Symbol>::reverse_iterator iter = path.rbegin(); iter != path.rend(); ++iter)
            {

                Symbol ancestor_name = *iter;

                method_class *method = methodtables[ancestor_name].lookup(curr_method->GetName());

                if (method != NULL)
                {
                    Formals formals = method->GetFormals();

                    int k1 = formals->first(), k2 = curr_formals->first();
                    for (; formals->more(k1) && curr_formals->more(k2); k1 = formals->next(k1), k2 = formals->next(k2))
                    {
                        if (formals->nth(k1)->GetType() != curr_formals->nth(k2)->GetType())
                        {

                            classtable->semant_error(classtable->m_classes[class_name]) << "Method override error: formal type not match." << std::endl;
                        }
                    }

                    if (formals->more(k1) || curr_formals->more(k2))
                    {

                        classtable->semant_error(classtable->m_classes[class_name]) << "Method override error: length of formals not match." << std::endl;
                    }
                }
            }
        }
    }

    for (int i = classes->first(); classes->more(i); i = classes->next(i))
    {
        curr_class = classes->nth(i);

        std::list<Symbol> path = classtable->GetInheritancePath(curr_class->GetName());
        for (std::list<Symbol>::iterator iter = path.begin(); iter != path.end(); iter++)
        {
            curr_class = classtable->m_classes[*iter];
            Features curr_features = curr_class->GetFeatures();
            attribtable.enterscope();
            for (int j = curr_features->first(); curr_features->more(j); j = curr_features->next(j))
            {
                Feature curr_feature = curr_features->nth(j);
                curr_feature->AddAttribToTable(curr_class->GetName());
            }
        }

        curr_class = classes->nth(i);
        Features curr_features = curr_class->GetFeatures();

        for (int j = curr_features->first(); curr_features->more(j); j = curr_features->next(j))
        {
            Feature curr_feature = curr_features->nth(j);
            curr_feature->CheckFeatureType();
        }

        for (size_t j = 0; j < path.size(); ++j)
        {
            attribtable.exitscope();
        }
    }

    if (classtable->errors())
    {
        cerr << "Compilation halted due to static semantic errors." << endl;
        exit(1);
    }
}