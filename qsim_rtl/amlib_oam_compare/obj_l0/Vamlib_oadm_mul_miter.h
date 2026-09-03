// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Primary design header
//
// This header should be included by all source files instantiating the design.
// The class here is then constructed to instantiate the design.
// See the Verilator manual for examples.

#ifndef _VAMLIB_OADM_MUL_MITER_H_
#define _VAMLIB_OADM_MUL_MITER_H_  // guard

#include "verilated.h"

//==========

class Vamlib_oadm_mul_miter__Syms;

//----------

VL_MODULE(Vamlib_oadm_mul_miter) {
  public:
    
    // PORTS
    // The application code writes and reads these signals to
    // propagate new values into/out from the Verilated model.
    VL_IN(x,31,0);
    VL_IN(y,31,0);
    VL_OUT(amlib_z,31,0);
    VL_OUT(oadm_z,31,0);
    
    // LOCAL SIGNALS
    // Internals; generally not touched by application code
    CData/*0:0*/ amlib_oadm_mul_miter__DOT__amlib__DOT__overflow;
    CData/*0:0*/ amlib_oadm_mul_miter__DOT__amlib__DOT__underflow;
    CData/*3:0*/ amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1;
    CData/*3:0*/ amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp2;
    CData/*0:0*/ amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__sign_input;
    CData/*0:0*/ amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__x_inf;
    CData/*0:0*/ amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__y_inf;
    CData/*0:0*/ amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__invalid_input;
    CData/*0:0*/ amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__infinity_input;
    CData/*0:0*/ amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__zero_input;
    SData/*9:0*/ amlib_oadm_mul_miter__DOT__amlib__DOT__exp_overflow;
    SData/*9:0*/ amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__result_exponent;
    IData/*25:0*/ amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__final_sum;
    IData/*23:0*/ amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1;
    IData/*23:0*/ amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp2;
    IData/*24:0*/ amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1;
    IData/*24:0*/ amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp2;
    IData/*28:0*/ amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__plane_full;
    IData/*28:0*/ amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__shared_value;
    IData/*28:0*/ amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__normalized_value;
    IData/*31:0*/ amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__finite_result;
    IData/*31:0*/ amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__result_comb;
    
    // LOCAL VARIABLES
    // Internals; generally not touched by application code
    CData/*3:0*/ amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C;
    CData/*3:0*/ amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S;
    IData/*23:0*/ amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C;
    IData/*23:0*/ amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S;
    IData/*24:0*/ amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C;
    IData/*24:0*/ amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S;
    
    // INTERNAL VARIABLES
    // Internals; generally not touched by application code
    Vamlib_oadm_mul_miter__Syms* __VlSymsp;  // Symbol table
    
    // CONSTRUCTORS
  private:
    VL_UNCOPYABLE(Vamlib_oadm_mul_miter);  ///< Copying not allowed
  public:
    /// Construct the model; called by application code
    /// The special name  may be used to make a wrapper with a
    /// single model invisible with respect to DPI scope names.
    Vamlib_oadm_mul_miter(const char* name = "TOP");
    /// Destroy the model; called (often implicitly) by application code
    ~Vamlib_oadm_mul_miter();
    
    // API METHODS
    /// Evaluate the model.  Application must call when inputs change.
    void eval();
    /// Simulation complete, run final blocks.  Application must call on completion.
    void final();
    
    // INTERNAL METHODS
  private:
    static void _eval_initial_loop(Vamlib_oadm_mul_miter__Syms* __restrict vlSymsp);
  public:
    void __Vconfigure(Vamlib_oadm_mul_miter__Syms* symsp, bool first);
  private:
    static QData _change_request(Vamlib_oadm_mul_miter__Syms* __restrict vlSymsp);
  public:
    static void _combo__TOP__1(Vamlib_oadm_mul_miter__Syms* __restrict vlSymsp);
  private:
    void _ctor_var_reset() VL_ATTR_COLD;
  public:
    static void _eval(Vamlib_oadm_mul_miter__Syms* __restrict vlSymsp);
  private:
#ifdef VL_DEBUG
    void _eval_debug_assertions();
#endif  // VL_DEBUG
  public:
    static void _eval_initial(Vamlib_oadm_mul_miter__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void _eval_settle(Vamlib_oadm_mul_miter__Syms* __restrict vlSymsp) VL_ATTR_COLD;
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

//----------


#endif  // guard
