#include <verilated.h>
#include "VZERO_CNT.h"
#include <iostream>

int main(int argc, char **argv) {
    Verilated::commandArgs(argc, argv);
    VZERO_CNT *tb = new VZERO_CNT;
	for (unsigned int i = 0; i < (1 << 10); i++)
	{
		tb->x = i;
        tb->eval();
		unsigned int ans = i == 0 ? 10 : __builtin_clz(i) - 22;
		if (tb->num0 !=ans)
		{
			std::cerr << "Error testing:"<<i 
			          <<" expected "<< ans
					  << ", got (" << (unsigned int)(tb->num0) <<")"
					  << std::endl;
            return 1;
		}
	}
	std::cout << "zero_cnt passed" << std::endl;
	delete tb;
	return 0;
}
