// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Primary design header
//
// This header should be included by all source files instantiating the design.
// The class here is then constructed to instantiate the design.
// See the Verilator manual for examples.

#ifndef _VSIMDIVE_ORIGINAL_FP32_WRAPPER_H_
#define _VSIMDIVE_ORIGINAL_FP32_WRAPPER_H_  // guard

#include "verilated.h"

//==========

class Vsimdive_original_fp32_wrapper__Syms;

//----------

VL_MODULE(Vsimdive_original_fp32_wrapper) {
  public:
    
    // PORTS
    // The application code writes and reads these signals to
    // propagate new values into/out from the Verilated model.
    VL_IN8(divide_mode,0,0);
    VL_IN(x,31,0);
    VL_IN(y,31,0);
    VL_OUT(result,31,0);
    
    // LOCAL SIGNALS
    // Internals; generally not touched by application code
    CData/*4:0*/ simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__ka;
    CData/*4:0*/ simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__kb;
    CData/*3:0*/ simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__func_4_bit_add;
    CData/*2:0*/ simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__temp_0_8_bit;
    CData/*2:0*/ simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__temp_1_8_bit;
    CData/*2:0*/ simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__temp_2_8_bit;
    CData/*2:0*/ simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__temp_3_8_bit;
    CData/*3:0*/ simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__temp_0_16_bit;
    CData/*3:0*/ simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__temp_1_16_bit;
    CData/*4:0*/ simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__temp_0_32_bit;
    CData/*2:0*/ simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__temp_0_8_bit;
    CData/*2:0*/ simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__temp_1_8_bit;
    CData/*2:0*/ simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__temp_2_8_bit;
    CData/*2:0*/ simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__temp_3_8_bit;
    CData/*3:0*/ simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__temp_0_16_bit;
    CData/*3:0*/ simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__temp_1_16_bit;
    CData/*4:0*/ simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__temp_0_32_bit;
    CData/*7:0*/ simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_0;
    CData/*7:0*/ simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_1;
    CData/*7:0*/ simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_2;
    CData/*7:0*/ simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_3;
    CData/*7:0*/ simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_0;
    CData/*7:0*/ simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_1;
    CData/*7:0*/ simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_2;
    CData/*7:0*/ simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_3;
    SData/*8:0*/ simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__adder_result1;
    SData/*8:0*/ simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__adder_result2;
    SData/*8:0*/ simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__adder_result3;
    SData/*8:0*/ simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__adder_result4;
    SData/*8:0*/ simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__adder_result5;
    SData/*8:0*/ simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__adder_result6;
    SData/*8:0*/ simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__adder_result7;
    SData/*8:0*/ simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__adder_result8;
    SData/*15:0*/ simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_upper;
    SData/*15:0*/ simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_upper;
    SData/*15:0*/ simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_lower;
    SData/*15:0*/ simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_lower;
    IData/*31:0*/ simdive_original_fp32_wrapper__DOT__core_x;
    IData/*22:0*/ simdive_original_fp32_wrapper__DOT__fraction;
    IData/*31:0*/ simdive_original_fp32_wrapper__DOT__exponent;
    IData/*31:0*/ simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_a;
    IData/*31:0*/ simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b;
    IData/*31:0*/ simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__correction_mul_div;
    IData/*31:0*/ simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__temp_result;
    WData/*95:0*/ simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__div_mul__DOT__shift_reg[3];
    WData/*95:0*/ simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__div_mul__DOT__shift_reg_temp[3];
    QData/*63:0*/ simdive_original_fp32_wrapper__DOT__core_result;
    QData/*63:0*/ simdive_original_fp32_wrapper__DOT__magnitude;
    QData/*63:0*/ simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_shift_frac_a__DOT__temp;
    QData/*63:0*/ simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_shift_frac_b__DOT__temp;
    
    // LOCAL VARIABLES
    // Internals; generally not touched by application code
    CData/*2:0*/ __Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__0__Vfuncout;
    CData/*7:0*/ __Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__0__a_var;
    CData/*2:0*/ __Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__1__Vfuncout;
    CData/*7:0*/ __Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__1__a_var;
    CData/*2:0*/ __Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__2__Vfuncout;
    CData/*7:0*/ __Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__2__a_var;
    CData/*2:0*/ __Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__3__Vfuncout;
    CData/*7:0*/ __Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__3__a_var;
    CData/*2:0*/ __Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__4__Vfuncout;
    CData/*7:0*/ __Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__4__a_var;
    CData/*2:0*/ __Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__5__Vfuncout;
    CData/*7:0*/ __Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__5__a_var;
    CData/*2:0*/ __Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__6__Vfuncout;
    CData/*7:0*/ __Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__6__a_var;
    CData/*2:0*/ __Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__7__Vfuncout;
    CData/*7:0*/ __Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__7__a_var;
    IData/*31:0*/ simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT____Vcellinp__twos_complement_inst__in;
    
    // INTERNAL VARIABLES
    // Internals; generally not touched by application code
    Vsimdive_original_fp32_wrapper__Syms* __VlSymsp;  // Symbol table
    
    // CONSTRUCTORS
  private:
    VL_UNCOPYABLE(Vsimdive_original_fp32_wrapper);  ///< Copying not allowed
  public:
    /// Construct the model; called by application code
    /// The special name  may be used to make a wrapper with a
    /// single model invisible with respect to DPI scope names.
    Vsimdive_original_fp32_wrapper(const char* name = "TOP");
    /// Destroy the model; called (often implicitly) by application code
    ~Vsimdive_original_fp32_wrapper();
    
    // API METHODS
    /// Evaluate the model.  Application must call when inputs change.
    void eval();
    /// Simulation complete, run final blocks.  Application must call on completion.
    void final();
    
    // INTERNAL METHODS
  private:
    static void _eval_initial_loop(Vsimdive_original_fp32_wrapper__Syms* __restrict vlSymsp);
  public:
    void __Vconfigure(Vsimdive_original_fp32_wrapper__Syms* symsp, bool first);
  private:
    static QData _change_request(Vsimdive_original_fp32_wrapper__Syms* __restrict vlSymsp);
  public:
    static void _combo__TOP__1(Vsimdive_original_fp32_wrapper__Syms* __restrict vlSymsp);
  private:
    void _ctor_var_reset() VL_ATTR_COLD;
  public:
    static void _eval(Vsimdive_original_fp32_wrapper__Syms* __restrict vlSymsp);
  private:
#ifdef VL_DEBUG
    void _eval_debug_assertions();
#endif  // VL_DEBUG
  public:
    static void _eval_initial(Vsimdive_original_fp32_wrapper__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void _eval_settle(Vsimdive_original_fp32_wrapper__Syms* __restrict vlSymsp) VL_ATTR_COLD;
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

//----------


#endif  // guard
