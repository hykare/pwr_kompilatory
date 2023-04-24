.PHONY: zad_3 zad_5 zad_6

all: zad_1 zad_2 zad_3 zad_5 zad_6

zad_3:
	@echo "---------------- ZAD 3 ------------------\n"
	@$(MAKE) -s -C zad_3
	@echo "\n"

zad_5:
	@echo "---------------- ZAD 5 ------------------\n"
	@$(MAKE) -s -C zad_5
	@echo "\n"

zad_6:
	@echo "---------------- ZAD 6 ------------------\n"
	@$(MAKE) -s -C zad_6
	@echo "\n"

zad_1:
	@echo "---------------- ZAD 1 ------------------\n"
	@rspec spec/zad_1_spec.rb --format documentation

zad_2:
	@echo "---------------- ZAD 2 ------------------\n"
	@rspec spec/zad_2_spec.rb --format documentation

# zad_4:
	# @echo "---------------- ZAD 4 ------------------\n"
# 	@rspec spec/zad_4_spec.rb --format documentation
