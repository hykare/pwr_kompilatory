.PHONY: default clean

default: compile run

compile:
	@lex rules.l
	@gcc lex.yy.c

run:
	@./a.out < input.txt

test: compile
	@./a.out < input.txt > output.txt
	@diff correct.txt output.txt

clean:
	@echo "cleaning up files"
	rm lex.yy.c
	rm a.out