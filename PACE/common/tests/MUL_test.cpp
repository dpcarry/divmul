#include <verilated.h>
#include "VMUL.h"
#include <iostream>

int main(int argc, char **argv) {
    Verilated::commandArgs(argc, argv);
    VMUL *tb = new VMUL;
	for (unsigned int x = 0; x < (1 << 10); x++)
	{
		tb->x = x;
		for (unsigned int y = 0; y < (1 << 10); y++)
		{
			tb->y = y;
			tb->eval();

			if (tb->xy != x*y) {
            std::cerr << "Error testing:"<<x<<' '<<y
			          <<" expected "<< x*y
					  << ", got (" << tb->xy <<")"
					  << std::endl;
            return 1;
        }
		}
	}
	std::cout << "mul passed" << std::endl;
	delete tb;
	return 0;
}
