.PHONY: all runtime fixed-l4

all:
	./run_all.sh

runtime:
	@for depth in np p2 p3 p4 p5 p6 p7; do ./run_one.sh runtime $$depth; done

fixed-l4:
	@for depth in np p2 p3 p4 p5 p6 p7; do ./run_one.sh fixed_l4 $$depth; done
