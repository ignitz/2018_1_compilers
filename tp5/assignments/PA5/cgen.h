#include <assert.h>
#include <stdio.h>
#include <bits/stdc++.h>
#include "emit.h"
#include "cool-tree.h"
#include "symtab.h"

enum Basicness
{
  Basic,
  NotBasic
};
#define TRUE 1
#define FALSE 0

extern Symbol No_class;

class CgenClassTable;
typedef CgenClassTable *CgenClassTableP;

class CgenNode;
typedef CgenNode *CgenNodeP;

class CgenClassTable : public SymbolTable<Symbol, CgenNode>
{
private:
  List<CgenNode> *nds;
  ostream &str;
  int stringclasstag;
  int intclasstag;
  int boolclasstag;
  std::vector<CgenNode *> m_class_nodes;
  std::map<Symbol, int> m_class_tags;

  // The following methods emit code for
  // constants and global declarations.

  void code_global_data();
  void code_global_text();
  void code_bools(int);
  void code_select_gc();
  void code_constants();
  void code_class_nameTab();
  void code_class_objTab();
  void code_dispatchTabs();
  void code_protObjs();
  void code_class_inits();
  void code_class_methods();
  // The following creates an inheritance graph from
  // a list of classes.  The graph is implemented as
  // a tree of `CgenNode', and class names are placed
  // in the base class symbol table.

  void install_basic_classes();
  void install_class(CgenNodeP nd);
  void install_classes(Classes cs);
  void build_inheritance_tree();
  void set_relations(CgenNodeP nd);

public:
  CgenClassTable(Classes, ostream &str);
  void Execute();
  void code();
  CgenNodeP root();
  std::vector<CgenNode *> GetClassNodes();
  std::map<Symbol, int> GetClassTags();
  CgenNode *GetClassNode(Symbol class_name);
};

class CgenNode : public class__class
{
private:
  CgenNodeP parentnd;       // Parent of class
  List<CgenNode> *children; // Children of class
  Basicness basic_status;   // `Basic' if class is basic
                            // `NotBasic' otherwise

public:
  int class_tag;
  CgenNode(Class_ c,
           Basicness bstatus,
           CgenClassTableP class_table);

  void add_child(CgenNodeP child);
  List<CgenNode> *get_children() { return children; }
  void set_parentnd(CgenNodeP p);
  CgenNodeP get_parentnd() { return parentnd; }
  int basic() { return (basic_status == Basic); }

  std::vector<CgenNode *> GetChildren();
  void code_protObj(ostream &s);
  void code_init(ostream &s);
  void code_methods(ostream &s);

  std::vector<method_class *> GetMethods();
  std::vector<method_class *> m_methods;

  std::vector<method_class *> GetFullMethods();
  std::vector<method_class *> m_full_methods;

  std::map<Symbol, Symbol> GetDispatchClassTab();
  std::map<Symbol, Symbol> m_dispatch_class_tab;

  std::map<Symbol, int> GetDispatchIdxTab();
  std::map<Symbol, int> m_dispatch_idx_tab;

  std::vector<attr_class *> GetAttribs();
  std::vector<attr_class *> m_attribs;

  std::vector<attr_class *> GetFullAttribs();
  std::vector<attr_class *> m_full_attribs;

  std::map<Symbol, int> GetAttribIdxTab();
  std::map<Symbol, int> m_attrib_idx_tab;

  std::vector<CgenNode *> GetInheritance();
  std::vector<CgenNode *> inheritance;
};

class BoolConst
{
private:
  int val;

public:
  BoolConst(int);
  void code_def(ostream &, int boolclasstag);
  void code_ref(ostream &) const;
};

class Environment
{
public:
  std::vector<int> m_scope_lengths;
  std::vector<Symbol> m_var_idx_tab;
  std::vector<Symbol> m_param_idx_tab;
  CgenNode *m_class_node;

  Environment();

  void EnterScope();

  void ExitScope();

  int LookUpAttrib(Symbol);

  // The vars are in reverse order. By the lecture from Gordo
  int LookUpVar(Symbol);

  int AddVar(Symbol);

  int AddObstacle();

  int LookUpParam(Symbol);

  int AddParam(Symbol);
};