// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table internal header
//
// Internal details; most calling programs do not need this header,
// unless using verilator public meta comments.

#ifndef _VPLSAD_COMMON_ACCURACY_TOP__SYMS_H_
#define _VPLSAD_COMMON_ACCURACY_TOP__SYMS_H_  // guard

#include "verilated.h"

// INCLUDE MODULE CLASSES
#include "Vplsad_common_accuracy_top.h"

// SYMS CLASS
class Vplsad_common_accuracy_top__Syms : public VerilatedSyms {
  public:
    
    // LOCAL STATE
    const char* __Vm_namep;
    bool __Vm_didInit;
    
    // SUBCELL STATE
    Vplsad_common_accuracy_top*    TOPp;
    
    // CREATORS
    Vplsad_common_accuracy_top__Syms(Vplsad_common_accuracy_top* topp, const char* namep);
    ~Vplsad_common_accuracy_top__Syms() {}
    
    // METHODS
    inline const char* name() { return __Vm_namep; }
    
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

#endif  // guard
