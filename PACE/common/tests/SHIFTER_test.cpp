#include <verilated.h>
#include "VSHIFTER.h"
#include <iostream>
#include <bitset>
int main(int argc, char **argv) {
    Verilated::commandArgs(argc, argv);
    VSHIFTER *tb = new VSHIFTER;
	for (unsigned int left=0;left<=1;left++)
	{
		tb->left=left;
		for (unsigned int x = 0; x < (1 << 10); x++)
		{
			tb->x = x;
			for (unsigned int s = 0; s < 10; s++)
			{
				tb->shift = s;
				tb->eval();

				unsigned int ans;
				if(left)
					ans=(x<<s)&((1<<10)-1)|(x>>(10-s));
				else ans= (x>>s)|((x&((1<<s) -1))<<(10-s));
				
				if ((unsigned int)(tb->out) != ans) {
					std::bitset<10> bans(ans);
					std::bitset<10> bout((unsigned int)(tb->out));
					std::cerr << "Error testing:" << x << (left?"<<":">>") << s
							  << " expected " << bans
							  <<", got " << bout
							  << std::endl;
					return 1;
			}
			}
		}
	}
	
	std::cout << "shifter passed" << std::endl;
	delete tb;
	return 0;
}
