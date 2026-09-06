// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Primary design header
//
// This header should be included by all source files instantiating the design.
// The class here is then constructed to instantiate the design.
// See the Verilator manual for examples.

#ifndef _VPLSAD_COMMON_ACCURACY_TOP_H_
#define _VPLSAD_COMMON_ACCURACY_TOP_H_  // guard

#include "verilated.h"

//==========

class Vplsad_common_accuracy_top__Syms;

//----------

VL_MODULE(Vplsad_common_accuracy_top) {
  public:
    
    // PORTS
    // The application code writes and reads these signals to
    // propagate new values into/out from the Verilated model.
    VL_IN(x,31,0);
    VL_IN(y,31,0);
    VL_OUT(m4_out,31,0);
    VL_OUT(m6_out,31,0);
    VL_OUT(m8_out,31,0);
    VL_OUT(oadm_l0_out,31,0);
    VL_OUT(oadm_l1_out,31,0);
    VL_OUT(oadm_l2_out,31,0);
    VL_OUT(oadm_l3_out,31,0);
    
    // LOCAL SIGNALS
    // Internals; generally not touched by application code
    CData/*2:0*/ plsad_common_accuracy_top__DOT__oadm_l0__DOT__implementation__DOT__exponent_adjust;
    CData/*2:0*/ plsad_common_accuracy_top__DOT__oadm_l1__DOT__implementation__DOT__exponent_adjust;
    CData/*2:0*/ plsad_common_accuracy_top__DOT__oadm_l2__DOT__implementation__DOT__exponent_adjust;
    CData/*2:0*/ plsad_common_accuracy_top__DOT__oadm_l3__DOT__implementation__DOT__exponent_adjust;
    SData/*14:0*/ plsad_common_accuracy_top__DOT__m4__DOT__impl__DOT__core__DOT__x0;
    SData/*14:0*/ plsad_common_accuracy_top__DOT__m4__DOT__impl__DOT__core__DOT__x1;
    SData/*14:0*/ plsad_common_accuracy_top__DOT__m4__DOT__impl__DOT__core__DOT__x2;
    SData/*14:0*/ plsad_common_accuracy_top__DOT__m4__DOT__impl__DOT__core__DOT__x3;
    SData/*14:0*/ plsad_common_accuracy_top__DOT__m4__DOT__impl__DOT__core__DOT__quotient;
    SData/*14:0*/ plsad_common_accuracy_top__DOT__m6__DOT__impl__DOT__core__DOT__x1;
    SData/*14:0*/ plsad_common_accuracy_top__DOT__m6__DOT__impl__DOT__core__DOT__x2;
    SData/*14:0*/ plsad_common_accuracy_top__DOT__m6__DOT__impl__DOT__core__DOT__quotient;
    SData/*14:0*/ plsad_common_accuracy_top__DOT__m8__DOT__impl__DOT__core__DOT__x1;
    SData/*14:0*/ plsad_common_accuracy_top__DOT__m8__DOT__impl__DOT__core__DOT__x2;
    SData/*14:0*/ plsad_common_accuracy_top__DOT__m8__DOT__impl__DOT__core__DOT__quotient;
    SData/*15:0*/ plsad_common_accuracy_top__DOT__oadm_l1__DOT__implementation__DOT__reduced_scale_product;
    SData/*12:0*/ plsad_common_accuracy_top__DOT__oadm_l1__DOT__implementation__DOT__plane__DOT__x_product;
    SData/*12:0*/ plsad_common_accuracy_top__DOT__oadm_l1__DOT__implementation__DOT__plane__DOT__y_product;
    SData/*12:0*/ plsad_common_accuracy_top__DOT__oadm_l2__DOT__implementation__DOT__plane__DOT__x_product;
    SData/*12:0*/ plsad_common_accuracy_top__DOT__oadm_l2__DOT__implementation__DOT__plane__DOT__y_product;
    SData/*12:0*/ plsad_common_accuracy_top__DOT__oadm_l3__DOT__implementation__DOT__plane__DOT__x_product;
    SData/*12:0*/ plsad_common_accuracy_top__DOT__oadm_l3__DOT__implementation__DOT__plane__DOT__y_product;
    IData/*22:0*/ plsad_common_accuracy_top__DOT__oadm_l0__DOT__implementation__DOT__normalized_fraction;
    IData/*28:0*/ plsad_common_accuracy_top__DOT__oadm_l0__DOT__implementation__DOT__plane__DOT__centered_plane;
    IData/*22:0*/ plsad_common_accuracy_top__DOT__oadm_l1__DOT__implementation__DOT__normalized_fraction;
    IData/*16:0*/ plsad_common_accuracy_top__DOT__oadm_l2__DOT__implementation__DOT__reduced_scale_product;
    IData/*22:0*/ plsad_common_accuracy_top__DOT__oadm_l2__DOT__implementation__DOT__normalized_fraction;
    IData/*16:0*/ plsad_common_accuracy_top__DOT__oadm_l3__DOT__implementation__DOT__reduced_scale_product;
    IData/*22:0*/ plsad_common_accuracy_top__DOT__oadm_l3__DOT__implementation__DOT__normalized_fraction;
    
    // INTERNAL VARIABLES
    // Internals; generally not touched by application code
    Vplsad_common_accuracy_top__Syms* __VlSymsp;  // Symbol table
    
    // CONSTRUCTORS
  private:
    VL_UNCOPYABLE(Vplsad_common_accuracy_top);  ///< Copying not allowed
  public:
    /// Construct the model; called by application code
    /// The special name  may be used to make a wrapper with a
    /// single model invisible with respect to DPI scope names.
    Vplsad_common_accuracy_top(const char* name = "TOP");
    /// Destroy the model; called (often implicitly) by application code
    ~Vplsad_common_accuracy_top();
    
    // API METHODS
    /// Evaluate the model.  Application must call when inputs change.
    void eval();
    /// Simulation complete, run final blocks.  Application must call on completion.
    void final();
    
    // INTERNAL METHODS
  private:
    static void _eval_initial_loop(Vplsad_common_accuracy_top__Syms* __restrict vlSymsp);
  public:
    void __Vconfigure(Vplsad_common_accuracy_top__Syms* symsp, bool first);
  private:
    static QData _change_request(Vplsad_common_accuracy_top__Syms* __restrict vlSymsp);
  public:
    static void _combo__TOP__1(Vplsad_common_accuracy_top__Syms* __restrict vlSymsp);
  private:
    void _ctor_var_reset() VL_ATTR_COLD;
  public:
    static void _eval(Vplsad_common_accuracy_top__Syms* __restrict vlSymsp);
  private:
#ifdef VL_DEBUG
    void _eval_debug_assertions();
#endif  // VL_DEBUG
  public:
    static void _eval_initial(Vplsad_common_accuracy_top__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void _eval_settle(Vplsad_common_accuracy_top__Syms* __restrict vlSymsp) VL_ATTR_COLD;
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

//----------


#endif  // guard
