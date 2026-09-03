#include <verilated.h>
#include "obj_dir/Vtop.h"
#include "verilated_vcd_c.h"
#include <iostream>

int main(int argc, char **argv) {
    Verilated::commandArgs(argc, argv);
    Vtop *tb = new Vtop;
	Verilated::traceEverOn(true);
	VerilatedVcdC *tfp = new VerilatedVcdC;
    tb->trace(tfp, 99);
    tfp->open("vtop.vcd");
	// tb->x = 190;	tb->y = 11;
	// tb->x = 1535;tb->y = 3;
	// tb->x = 1064;	tb->y = 1;
	// tb->x = 1025;	tb->y = 1;
	tb->x = 1024;	tb->y = 3;
	// tb->x = 400;	tb->y = 1;
	// tb->x = 1281;	tb->y = 1;
	tb->cycle1 = 0;
	tb->eval();
	tfp->dump(0);
	tb->cycle1 = 1;
	tb->eval();
	tfp->dump(1);
	tb->cycle1 = 0;
	tb->eval();
	std::cout << VL_TO_STRING(tb->out) << std::endl;
	// std::cout << (double((unsigned long long)(tb->out))/double(1<<(width-1)))<<std::endl;
	tfp->dump(2);
	tfp->close();
	delete tfp;
	delete tb;
	return 0;
}
