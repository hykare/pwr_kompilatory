.PHONY: default clean

default: compile run

compile:
	@flex rules.l
	@g++ lex.yy.c

run:
	@./a.out < "input.txt"

test: compile
	@./a.out < input.txt > output.txt
	@diff correct.txt output.txt

clean:
	@echo "cleaning up files"
	rm lex.yy.c
	rm a.out