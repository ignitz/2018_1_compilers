EX_PATH="examples"

# ./lexer examples/test1.cl > temp.txt
for i in `seq 1 3`; do
	./lexer $EX_PATH/test$i.cl > /tmp/lex.out
	diff /tmp/lex.out $EX_PATH/test$i.cl.out
done

rm /tmp/lex.out