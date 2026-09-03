// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table implementation internals

#include "Vsimdive_original_fp32_wrapper__Syms.h"
#include "Vsimdive_original_fp32_wrapper.h"



// FUNCTIONS
Vsimdive_original_fp32_wrapper__Syms::Vsimdive_original_fp32_wrapper__Syms(Vsimdive_original_fp32_wrapper* topp, const char* namep)
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
