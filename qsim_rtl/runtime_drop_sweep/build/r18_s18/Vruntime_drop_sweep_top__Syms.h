// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table internal header
//
// Internal details; most calling programs do not need this header,
// unless using verilator public meta comments.

#ifndef _VRUNTIME_DROP_SWEEP_TOP__SYMS_H_
#define _VRUNTIME_DROP_SWEEP_TOP__SYMS_H_  // guard

#include "verilated.h"

// INCLUDE MODULE CLASSES
#include "Vruntime_drop_sweep_top.h"

// SYMS CLASS
class Vruntime_drop_sweep_top__Syms : public VerilatedSyms {
  public:
    
    // LOCAL STATE
    const char* __Vm_namep;
    bool __Vm_didInit;
    
    // SUBCELL STATE
    Vruntime_drop_sweep_top*       TOPp;
    
    // CREATORS
    Vruntime_drop_sweep_top__Syms(Vruntime_drop_sweep_top* topp, const char* namep);
    ~Vruntime_drop_sweep_top__Syms() {}
    
    // METHODS
    inline const char* name() { return __Vm_namep; }
    
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

#endif  // guard
