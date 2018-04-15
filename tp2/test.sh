EX_PATH="examples"

for i in `seq 1 3`; do
	cp $EX_PATH/test$i.cl test$i.cl
	./lexer test$i.cl > /tmp/lex.out
	diff /tmp/lex.out $EX_PATH/test$i.cl.out
	rm test$i.cl
done

rm /tmp/lex.out
echo "Done"
