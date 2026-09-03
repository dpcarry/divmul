#include <verilated.h>
#include "obj_dir/Vtop.h"
#include "verilated_vcd_c.h"
#include <cstdio>
#include <string>
#include <iostream>
// unsigned int width = 10;
// unsigned int shift_bits=width-1;
// const char *fname = "./output/INZeD.txt";
int main(int argc, char **argv) // argv[0]: self filename, argv[1]: width, argv[2]: shift bits, argv[3]: output fname
{
	unsigned int width = std::stoi(argv[1]);
	unsigned int shift_bits = std::stoi(argv[2]);
	char *fname = argv[3];

	printf("width=%d, shift_bits=%d, output to %s\n", width, shift_bits, fname);
	freopen(fname, "w", stdout);
	Verilated::commandArgs(argc, argv);
	Vtop *tb = new Vtop;
	unsigned int Max = 2000;
	std::cout << shift_bits << std::endl;

	for (unsigned int x = 0; x < Max; x++)
	{
		tb->x = x;
		for (unsigned int y = 1; y < x; y++)
		{
			tb->y = y;
			tb->eval();
			fprintf(stderr, "%d/%d, %lf%\r",x,Max, double(x) / double(Max)*100);
			std::cout << (tb->x) << ' ' << (tb->y) << " " << VL_TO_STRING(tb->out) << std::endl;
		}
	}
	delete tb;
	return 0;
}
