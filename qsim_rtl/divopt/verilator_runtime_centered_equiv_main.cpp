#include "Vtb_runtime_centered_residual_equiv.h"
#include "verilated.h"

vluint64_t main_time = 0;
double sc_time_stamp() { return main_time; }

int main(int argc, char **argv) {
    Verilated::commandArgs(argc, argv);
    Vtb_runtime_centered_residual_equiv *top =
        new Vtb_runtime_centered_residual_equiv;
    while (!Verilated::gotFinish() && main_time < 100000) {
        top->eval();
        ++main_time;
    }
    top->final();
    delete top;
    return Verilated::gotFinish() ? 0 : 1;
}
