// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Primary design header
//
// This header should be included by all source files instantiating the design.
// The class here is then constructed to instantiate the design.
// See the Verilator manual for examples.

#ifndef _VRUNTIME_DROP_SWEEP_TOP_H_
#define _VRUNTIME_DROP_SWEEP_TOP_H_  // guard

#include "verilated.h"

//==========

class Vruntime_drop_sweep_top__Syms;

//----------

VL_MODULE(Vruntime_drop_sweep_top) {
  public:
    
    // PORTS
    // The application code writes and reads these signals to
    // propagate new values into/out from the Verilated model.
    VL_IN8(level,1,0);
    VL_IN8(divide_mode,0,0);
    VL_IN(x,31,0);
    VL_IN(y,31,0);
    VL_OUT(candidate_result,31,0);
    VL_OUT(baseline_result,31,0);
    
    // LOCAL SIGNALS
    // Internals; generally not touched by application code
    CData/*2:0*/ runtime_drop_sweep_top__DOT__candidate__DOT__exponent_adjust;
    CData/*5:0*/ runtime_drop_sweep_top__DOT__candidate__DOT__plane__DOT__x_midpoint;
    CData/*5:0*/ runtime_drop_sweep_top__DOT__candidate__DOT__plane__DOT__y_midpoint;
    CData/*7:0*/ runtime_drop_sweep_top__DOT__candidate__DOT__fp_wrapper__DOT__exponent_adjust_extended;
    CData/*2:0*/ runtime_drop_sweep_top__DOT__baseline__DOT__exponent_adjust;
    CData/*7:0*/ runtime_drop_sweep_top__DOT__baseline__DOT__fp_wrapper__DOT__exponent_adjust_extended;
    IData/*28:0*/ runtime_drop_sweep_top__DOT__candidate__DOT__core_value;
    IData/*22:0*/ runtime_drop_sweep_top__DOT__candidate__DOT__normalized_fraction;
    IData/*18:0*/ runtime_drop_sweep_top__DOT__candidate__DOT__plane__DOT__x_product;
    IData/*18:0*/ runtime_drop_sweep_top__DOT__candidate__DOT__plane__DOT__y_product;
    IData/*28:0*/ runtime_drop_sweep_top__DOT__candidate__DOT__plane__DOT__centered_plane;
    IData/*28:0*/ runtime_drop_sweep_top__DOT__baseline__DOT__core_value;
    IData/*22:0*/ runtime_drop_sweep_top__DOT__baseline__DOT__normalized_fraction;
    IData/*18:0*/ runtime_drop_sweep_top__DOT__baseline__DOT__plane__DOT__x_product;
    IData/*18:0*/ runtime_drop_sweep_top__DOT__baseline__DOT__plane__DOT__y_product;
    IData/*28:0*/ runtime_drop_sweep_top__DOT__baseline__DOT__plane__DOT__centered_plane;
    
    // INTERNAL VARIABLES
    // Internals; generally not touched by application code
    Vruntime_drop_sweep_top__Syms* __VlSymsp;  // Symbol table
    
    // CONSTRUCTORS
  private:
    VL_UNCOPYABLE(Vruntime_drop_sweep_top);  ///< Copying not allowed
  public:
    /// Construct the model; called by application code
    /// The special name  may be used to make a wrapper with a
    /// single model invisible with respect to DPI scope names.
    Vruntime_drop_sweep_top(const char* name = "TOP");
    /// Destroy the model; called (often implicitly) by application code
    ~Vruntime_drop_sweep_top();
    
    // API METHODS
    /// Evaluate the model.  Application must call when inputs change.
    void eval();
    /// Simulation complete, run final blocks.  Application must call on completion.
    void final();
    
    // INTERNAL METHODS
  private:
    static void _eval_initial_loop(Vruntime_drop_sweep_top__Syms* __restrict vlSymsp);
  public:
    void __Vconfigure(Vruntime_drop_sweep_top__Syms* symsp, bool first);
  private:
    static QData _change_request(Vruntime_drop_sweep_top__Syms* __restrict vlSymsp);
  public:
    static void _combo__TOP__1(Vruntime_drop_sweep_top__Syms* __restrict vlSymsp);
  private:
    void _ctor_var_reset() VL_ATTR_COLD;
  public:
    static void _eval(Vruntime_drop_sweep_top__Syms* __restrict vlSymsp);
  private:
#ifdef VL_DEBUG
    void _eval_debug_assertions();
#endif  // VL_DEBUG
  public:
    static void _eval_initial(Vruntime_drop_sweep_top__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void _eval_settle(Vruntime_drop_sweep_top__Syms* __restrict vlSymsp) VL_ATTR_COLD;
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

//----------


#endif  // guard
