class Stack {

   isNil() : Bool { true };
   head()  : String { { abort(); ""; } };
   tail()  : Stack { { abort(); self; } };
   cons(i : String) : Stack {
      (new Cons).init(i, self)
   };

};

class Cons inherits Stack {

   car : String;
   cdr : Stack;
   isNil() : Bool { false };
   head()  : String { car };
   tail()  : Stack { cdr };
   init(i : String, rest : Stack) : Stack {
      {
     car <- i;
     cdr <- rest;
     self;
      }
   };

};

class Main inherits IO {
    my_stack: Stack;

    input : String;

    a2i : A2I;

    print_stack(l : Stack) : Object {
      if l.isNil() then out_string("")
                   else {
               out_string(l.head());
               out_string("\n");
               print_stack(l.tail());
                }
      fi
    };
    
    push(s : String) : Object
    {
        my_stack <- my_stack.cons(s)
    };

    pop() : String {
        (let top : String <- my_stack.head() in
            {
                my_stack <- my_stack.tail();
                top;
            }
        )
    };

    eval() : Object {
        (let top : String <- my_stack.head() in
            if top = "+" then
            {
                pop();
                (let x : String <- pop() in
                    (let y : String <- pop() in
                        {
                            a2i <- new A2I;
                            push(a2i.i2a(a2i.a2i(x) + a2i.a2i(y)));
                        }
                    )
                );
            }
            else if top = "s" then
            {
                pop();
                (let x : String <- pop() in
                    (let y : String <- pop() in
                        {
                            push(x);
                            push(y);
                        }
                    )
                );
            }
            else 
            {
                out_string(top);
                out_string("\n");
            }
            fi fi
        )
    };

    prompt() : String {
        {
            out_string(">");
            in_string();
        }
    };


    main() : Object
    {
        {
            my_stack <- new Stack;

            input <- prompt();
            while (not input = "x") loop
            {
                if input = "e" then eval()
                else if input = "d" then print_stack(my_stack)
                else push(input)
                fi fi;

                input <- prompt();                
            } pool;

            (* while (not my_stack.isNil()) loop
            {
                print_stack(my_stack);
                my_stack <- my_stack.tail();
            }
            pool;*)
        }
    };
};
