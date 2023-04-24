.PHONY: zad_3 zad_5 zad_6

all: zad_3 zad_5 zad_6

zad_3:
	@$(MAKE) -s -C zad_3

zad_5:
	@$(MAKE) -s -C zad_5

zad_6:
	@$(MAKE) -s -C zad_6

# run rspec