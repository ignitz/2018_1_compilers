(* Sua implementação deverá estar neste arquivo.  *)

class StackCommand
{
    top : String; -- Topo da pilha.
    rest : StackCommand; -- Resto da pilha.

    init(s : String) : Object { top <- s };

    initRest(stcmd : StackCommand) : Object { rest <- stcmd };

    getCmd() : String { top };

    getNext() : StackCommand { rest };
};

class Main inherits IO {
--------------------------------------------------------------------------
-- -- -- -- -- -- -- Declaração das variáveis auxiliares -- -- -- -- -- --
--------------------------------------------------------------------------

    sizeStack : Int;

    input : String;
    top : String;
    top2 : String;
    aux : String;

    cmd : StackCommand;
    cmd_top : StackCommand;
    cmd_aux : StackCommand;

    converter : A2I;

------------------------------------------------------------------------
-- -- -- -- -- -- -- Declaração dos métodos auxiliares -- -- -- -- -- --
------------------------------------------------------------------------

    --`Percorre a pilha imprimindo os elementos
    printStack() : Object
    {
        {
            cmd_aux <- cmd_top;
            while not isvoid cmd_aux loop
            {
                out_string(cmd_aux.getCmd());
                newline();
                cmd_aux <- cmd_aux.getNext();
            } pool;
        }
    };

    evaluateStack() : Object
    {
        {
            converter <- new A2I;
            aux <- popStack();
            if aux = "+" then -- Soma os dois primeiros elementos da pilha.
            {
                top <- popStack();
                top2 <- popStack();
                pushStack(converter.i2a( converter.a2i(top) + converter.a2i(top2) ));
            }
            else if aux = "s" then -- Troca os dois primeiros elementos da pilha.
            {
                top <- popStack();
                top2 <- popStack();
                pushStack(top);
                pushStack(top2);
            }
            else "NÃO FAZ NADA" -- Se não for '+' e nem 's' não faz nada.
            fi fi;
        }
    };

    pushStack(s : String) : Object
    {
        {
            sizeStack <- sizeStack + 1; -- Incrementa o contador.
            cmd <- new StackCommand;
            cmd.init(s);
            if sizeStack = 1 then cmd_top <- cmd
            else
            {
                cmd.initRest(cmd_top); -- "Empurra" a pilha.
                cmd_top <- cmd; -- Insere 's' como primeiro elemento.
            }
            fi;
        }
    };

    popStack() : String
    {
        {
            sizeStack = sizeStack - 1; -- Decrementa o contador.
            aux <- cmd_top.getCmd(); -- Pega a string do comando.
            cmd_top <- cmd_top.getNext(); -- Remove da pilha transformando o next em novo topo.
            aux; -- Retorna a string do comando.
        }
    };

    -- Apenas para facilitar a entrada de dados.
    prompt() : String { { out_string(">"); in_string(); } };

    newline() : Object { out_string("\n") };

------------------------------------------------------------------------
-- -- -- -- -- -- -- -- -- -- Função Main -- -- -- -- -- -- -- -- -- --
------------------------------------------------------------------------

    main() : Object
    {
        {
            sizeStack <- 0; -- Inicializa o contador com 0.
            input <- prompt(); -- Lê a primeira entrada.
            while not input = "x" loop -- Enquanto a entrada não for X.
            { -- Verifica qual tipo de comando é.
                if input = "d" then printStack()
                else if input = "e" then evaluateStack()
                else pushStack(input) -- Se não é X, D ou E, então empilha.
                fi fi;
                input <- prompt(); -- Lê a entrada novamente.
            } pool;
        }
    };
};
