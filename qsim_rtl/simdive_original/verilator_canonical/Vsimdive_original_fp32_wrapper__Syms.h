// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table internal header
//
// Internal details; most calling programs do not need this header,
// unless using verilator public meta comments.

#ifndef _VSIMDIVE_ORIGINAL_FP32_WRAPPER__SYMS_H_
#define _VSIMDIVE_ORIGINAL_FP32_WRAPPER__SYMS_H_  // guard

#include "verilated.h"

// INCLUDE MODULE CLASSES
#include "Vsimdive_original_fp32_wrapper.h"

// SYMS CLASS
class Vsimdive_original_fp32_wrapper__Syms : public VerilatedSyms {
  public:
    
    // LOCAL STATE
    const char* __Vm_namep;
    bool __Vm_didInit;
    
    // SUBCELL STATE
    Vsimdive_original_fp32_wrapper* TOPp;
    
    // CREATORS
    Vsimdive_original_fp32_wrapper__Syms(Vsimdive_original_fp32_wrapper* topp, const char* namep);
    ~Vsimdive_original_fp32_wrapper__Syms() {}
    
    // METHODS
    inline const char* name() { return __Vm_namep; }
    
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

#endif  // guard
