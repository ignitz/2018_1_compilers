all: lexer

lex.yy.cc: cool.flex
	flex -o $@ $? 

lexer: lex.yy.cc 
	g++ *.cc -o $@

clean:
	rm -f lex.yy.cc
	rm -f lexer
