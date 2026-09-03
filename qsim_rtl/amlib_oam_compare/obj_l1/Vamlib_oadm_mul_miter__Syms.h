// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table internal header
//
// Internal details; most calling programs do not need this header,
// unless using verilator public meta comments.

#ifndef _VAMLIB_OADM_MUL_MITER__SYMS_H_
#define _VAMLIB_OADM_MUL_MITER__SYMS_H_  // guard

#include "verilated.h"

// INCLUDE MODULE CLASSES
#include "Vamlib_oadm_mul_miter.h"

// SYMS CLASS
class Vamlib_oadm_mul_miter__Syms : public VerilatedSyms {
  public:
    
    // LOCAL STATE
    const char* __Vm_namep;
    bool __Vm_didInit;
    
    // SUBCELL STATE
    Vamlib_oadm_mul_miter*         TOPp;
    
    // CREATORS
    Vamlib_oadm_mul_miter__Syms(Vamlib_oadm_mul_miter* topp, const char* namep);
    ~Vamlib_oadm_mul_miter__Syms() {}
    
    // METHODS
    inline const char* name() { return __Vm_namep; }
    
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

#endif  // guard
