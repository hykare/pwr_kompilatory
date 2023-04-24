.PHONY: default clean

default: compile run

compile:
	@flex rules.l
	@g++ lex.yy.c -w

run:
	@./a.out < "input_short.txt"

clean:
	@echo "cleaning up files"
	rm lex.yy.c
	rm a.out