// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table implementation internals

#include "Vamlib_oadm_mul_miter__Syms.h"
#include "Vamlib_oadm_mul_miter.h"



// FUNCTIONS
Vamlib_oadm_mul_miter__Syms::Vamlib_oadm_mul_miter__Syms(Vamlib_oadm_mul_miter* topp, const char* namep)
    // Setup locals
    : __Vm_namep(namep)
    , __Vm_didInit(false)
    // Setup submodule names
{
    // Pointer to top level
    TOPp = topp;
    // Setup each module's pointers to their submodules
    // Setup each module's pointer back to symbol table (for public functions)
    TOPp->__Vconfigure(this, true);
}
