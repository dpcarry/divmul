// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table implementation internals

#include "Vplsad_extended_m_accuracy_top__Syms.h"
#include "Vplsad_extended_m_accuracy_top.h"



// FUNCTIONS
Vplsad_extended_m_accuracy_top__Syms::Vplsad_extended_m_accuracy_top__Syms(Vplsad_extended_m_accuracy_top* topp, const char* namep)
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
