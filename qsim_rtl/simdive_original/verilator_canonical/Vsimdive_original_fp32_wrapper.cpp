// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vsimdive_original_fp32_wrapper.h for the primary calling header

#include "Vsimdive_original_fp32_wrapper.h"
#include "Vsimdive_original_fp32_wrapper__Syms.h"

//==========

VL_CTOR_IMP(Vsimdive_original_fp32_wrapper) {
    Vsimdive_original_fp32_wrapper__Syms* __restrict vlSymsp = __VlSymsp = new Vsimdive_original_fp32_wrapper__Syms(this, name());
    Vsimdive_original_fp32_wrapper* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Reset internal values
    
    // Reset structure values
    _ctor_var_reset();
}

void Vsimdive_original_fp32_wrapper::__Vconfigure(Vsimdive_original_fp32_wrapper__Syms* vlSymsp, bool first) {
    if (0 && first) {}  // Prevent unused
    this->__VlSymsp = vlSymsp;
}

Vsimdive_original_fp32_wrapper::~Vsimdive_original_fp32_wrapper() {
    delete __VlSymsp; __VlSymsp=NULL;
}

void Vsimdive_original_fp32_wrapper::eval() {
    VL_DEBUG_IF(VL_DBG_MSGF("+++++TOP Evaluate Vsimdive_original_fp32_wrapper::eval\n"); );
    Vsimdive_original_fp32_wrapper__Syms* __restrict vlSymsp = this->__VlSymsp;  // Setup global symbol table
    Vsimdive_original_fp32_wrapper* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
#ifdef VL_DEBUG
    // Debug assertions
    _eval_debug_assertions();
#endif  // VL_DEBUG
    // Initialize
    if (VL_UNLIKELY(!vlSymsp->__Vm_didInit)) _eval_initial_loop(vlSymsp);
    // Evaluate till stable
    int __VclockLoop = 0;
    QData __Vchange = 1;
    do {
        VL_DEBUG_IF(VL_DBG_MSGF("+ Clock loop\n"););
        _eval(vlSymsp);
        if (VL_UNLIKELY(++__VclockLoop > 100)) {
            // About to fail, so enable debug to see what's not settling.
            // Note you must run make with OPT=-DVL_DEBUG for debug prints.
            int __Vsaved_debug = Verilated::debug();
            Verilated::debug(1);
            __Vchange = _change_request(vlSymsp);
            Verilated::debug(__Vsaved_debug);
            VL_FATAL_MT("/homes/user/stud/fall25/pd2827/ee6321/research/rtl/simdive_original/simdive_original_fp32_wrapper.v", 4, "",
                "Verilated model didn't converge\n"
                "- See DIDNOTCONVERGE in the Verilator manual");
        } else {
            __Vchange = _change_request(vlSymsp);
        }
    } while (VL_UNLIKELY(__Vchange));
}

void Vsimdive_original_fp32_wrapper::_eval_initial_loop(Vsimdive_original_fp32_wrapper__Syms* __restrict vlSymsp) {
    vlSymsp->__Vm_didInit = true;
    _eval_initial(vlSymsp);
    // Evaluate till stable
    int __VclockLoop = 0;
    QData __Vchange = 1;
    do {
        _eval_settle(vlSymsp);
        _eval(vlSymsp);
        if (VL_UNLIKELY(++__VclockLoop > 100)) {
            // About to fail, so enable debug to see what's not settling.
            // Note you must run make with OPT=-DVL_DEBUG for debug prints.
            int __Vsaved_debug = Verilated::debug();
            Verilated::debug(1);
            __Vchange = _change_request(vlSymsp);
            Verilated::debug(__Vsaved_debug);
            VL_FATAL_MT("/homes/user/stud/fall25/pd2827/ee6321/research/rtl/simdive_original/simdive_original_fp32_wrapper.v", 4, "",
                "Verilated model didn't DC converge\n"
                "- See DIDNOTCONVERGE in the Verilator manual");
        } else {
            __Vchange = _change_request(vlSymsp);
        }
    } while (VL_UNLIKELY(__Vchange));
}

VL_INLINE_OPT void Vsimdive_original_fp32_wrapper::_combo__TOP__1(Vsimdive_original_fp32_wrapper__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vsimdive_original_fp32_wrapper::_combo__TOP__1\n"); );
    Vsimdive_original_fp32_wrapper* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Variables
    WData/*95:0*/ __Vtemp1[3];
    WData/*95:0*/ __Vtemp2[3];
    WData/*95:0*/ __Vtemp3[3];
    // Body
    vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__4__a_var 
        = (0xffU & (0x800000U | (0x7fffffU & vlTOPp->y)));
    if (((((((((0x80U == (0x80U & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__4__a_var))) 
               | (0x40U == (0xc0U & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__4__a_var)))) 
              | (0x20U == (0xe0U & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__4__a_var)))) 
             | (0x10U == (0xf0U & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__4__a_var)))) 
            | (8U == (0xf8U & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__4__a_var)))) 
           | (4U == (0xfcU & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__4__a_var)))) 
          | (2U == (0xfeU & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__4__a_var)))) 
         | (1U == (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__4__a_var)))) {
        vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__4__Vfuncout 
            = ((0x80U == (0x80U & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__4__a_var)))
                ? 7U : ((0x40U == (0xc0U & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__4__a_var)))
                         ? 6U : ((0x20U == (0xe0U & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__4__a_var)))
                                  ? 5U : ((0x10U == 
                                           (0xf0U & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__4__a_var)))
                                           ? 4U : (
                                                   (8U 
                                                    == 
                                                    (0xf8U 
                                                     & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__4__a_var)))
                                                    ? 3U
                                                    : 
                                                   ((4U 
                                                     == 
                                                     (0xfcU 
                                                      & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__4__a_var)))
                                                     ? 2U
                                                     : 
                                                    ((2U 
                                                      == 
                                                      (0xfeU 
                                                       & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__4__a_var)))
                                                      ? 1U
                                                      : 0U)))))));
    }
    vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__temp_0_8_bit 
        = vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__4__Vfuncout;
    vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__5__a_var 
        = (0xffU & (0x8000U | (0x7fffU & (vlTOPp->y 
                                          >> 8U))));
    if (((((((((0x80U == (0x80U & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__5__a_var))) 
               | (0x40U == (0xc0U & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__5__a_var)))) 
              | (0x20U == (0xe0U & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__5__a_var)))) 
             | (0x10U == (0xf0U & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__5__a_var)))) 
            | (8U == (0xf8U & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__5__a_var)))) 
           | (4U == (0xfcU & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__5__a_var)))) 
          | (2U == (0xfeU & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__5__a_var)))) 
         | (1U == (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__5__a_var)))) {
        vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__5__Vfuncout 
            = ((0x80U == (0x80U & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__5__a_var)))
                ? 7U : ((0x40U == (0xc0U & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__5__a_var)))
                         ? 6U : ((0x20U == (0xe0U & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__5__a_var)))
                                  ? 5U : ((0x10U == 
                                           (0xf0U & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__5__a_var)))
                                           ? 4U : (
                                                   (8U 
                                                    == 
                                                    (0xf8U 
                                                     & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__5__a_var)))
                                                    ? 3U
                                                    : 
                                                   ((4U 
                                                     == 
                                                     (0xfcU 
                                                      & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__5__a_var)))
                                                     ? 2U
                                                     : 
                                                    ((2U 
                                                      == 
                                                      (0xfeU 
                                                       & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__5__a_var)))
                                                      ? 1U
                                                      : 0U)))))));
    }
    vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__temp_1_8_bit 
        = vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__5__Vfuncout;
    vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__6__a_var 
        = (0xffU & (0x80U | (0x7fU & (vlTOPp->y >> 0x10U))));
    if (((((((((0x80U == (0x80U & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__6__a_var))) 
               | (0x40U == (0xc0U & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__6__a_var)))) 
              | (0x20U == (0xe0U & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__6__a_var)))) 
             | (0x10U == (0xf0U & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__6__a_var)))) 
            | (8U == (0xf8U & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__6__a_var)))) 
           | (4U == (0xfcU & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__6__a_var)))) 
          | (2U == (0xfeU & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__6__a_var)))) 
         | (1U == (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__6__a_var)))) {
        vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__6__Vfuncout 
            = ((0x80U == (0x80U & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__6__a_var)))
                ? 7U : ((0x40U == (0xc0U & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__6__a_var)))
                         ? 6U : ((0x20U == (0xe0U & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__6__a_var)))
                                  ? 5U : ((0x10U == 
                                           (0xf0U & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__6__a_var)))
                                           ? 4U : (
                                                   (8U 
                                                    == 
                                                    (0xf8U 
                                                     & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__6__a_var)))
                                                    ? 3U
                                                    : 
                                                   ((4U 
                                                     == 
                                                     (0xfcU 
                                                      & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__6__a_var)))
                                                     ? 2U
                                                     : 
                                                    ((2U 
                                                      == 
                                                      (0xfeU 
                                                       & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__6__a_var)))
                                                      ? 1U
                                                      : 0U)))))));
    }
    vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__temp_2_8_bit 
        = vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__6__Vfuncout;
    vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__7__a_var = 0U;
    if (((((((((0x80U == (0x80U & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__7__a_var))) 
               | (0x40U == (0xc0U & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__7__a_var)))) 
              | (0x20U == (0xe0U & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__7__a_var)))) 
             | (0x10U == (0xf0U & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__7__a_var)))) 
            | (8U == (0xf8U & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__7__a_var)))) 
           | (4U == (0xfcU & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__7__a_var)))) 
          | (2U == (0xfeU & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__7__a_var)))) 
         | (1U == (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__7__a_var)))) {
        vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__7__Vfuncout 
            = ((0x80U == (0x80U & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__7__a_var)))
                ? 7U : ((0x40U == (0xc0U & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__7__a_var)))
                         ? 6U : ((0x20U == (0xe0U & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__7__a_var)))
                                  ? 5U : ((0x10U == 
                                           (0xf0U & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__7__a_var)))
                                           ? 4U : (
                                                   (8U 
                                                    == 
                                                    (0xf8U 
                                                     & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__7__a_var)))
                                                    ? 3U
                                                    : 
                                                   ((4U 
                                                     == 
                                                     (0xfcU 
                                                      & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__7__a_var)))
                                                     ? 2U
                                                     : 
                                                    ((2U 
                                                      == 
                                                      (0xfeU 
                                                       & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__7__a_var)))
                                                      ? 1U
                                                      : 0U)))))));
    }
    vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__temp_3_8_bit 
        = vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__7__Vfuncout;
    vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__temp_0_16_bit 
        = (((0U == (IData)(vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__temp_1_8_bit)) 
            & (~ (0x8000U | (0x7fffU & (vlTOPp->y >> 8U)))))
            ? (IData)(vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__temp_0_8_bit)
            : (8U | (IData)(vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__temp_1_8_bit)));
    vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__temp_1_16_bit 
        = ((0U == (IData)(vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__temp_3_8_bit))
            ? (IData)(vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__temp_2_8_bit)
            : (8U | (IData)(vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__temp_3_8_bit)));
    vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__temp_0_32_bit 
        = (((0U == (IData)(vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__temp_1_16_bit)) 
            & (~ (0x80U | (0x7fU & (vlTOPp->y >> 0x10U)))))
            ? (IData)(vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__temp_0_16_bit)
            : (0x10U | (IData)(vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__temp_1_16_bit)));
    vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__kb 
        = vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__temp_0_32_bit;
    vlTOPp->simdive_original_fp32_wrapper__DOT__core_x 
        = ((IData)(vlTOPp->divide_mode) ? (0x80000000U 
                                           | (0x7fffff00U 
                                              & (vlTOPp->x 
                                                 << 8U)))
            : (0x800000U | (0x7fffffU & vlTOPp->x)));
    vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_shift_frac_b__DOT__temp 
        = ((QData)((IData)((0x800000U | (0x7fffffU 
                                         & vlTOPp->y)))) 
           << 0x1fU);
    vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b 
        = (IData)((vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_shift_frac_b__DOT__temp 
                   >> (IData)(vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__kb)));
    vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__0__a_var 
        = (0xffU & vlTOPp->simdive_original_fp32_wrapper__DOT__core_x);
    if (((((((((0x80U == (0x80U & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__0__a_var))) 
               | (0x40U == (0xc0U & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__0__a_var)))) 
              | (0x20U == (0xe0U & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__0__a_var)))) 
             | (0x10U == (0xf0U & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__0__a_var)))) 
            | (8U == (0xf8U & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__0__a_var)))) 
           | (4U == (0xfcU & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__0__a_var)))) 
          | (2U == (0xfeU & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__0__a_var)))) 
         | (1U == (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__0__a_var)))) {
        vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__0__Vfuncout 
            = ((0x80U == (0x80U & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__0__a_var)))
                ? 7U : ((0x40U == (0xc0U & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__0__a_var)))
                         ? 6U : ((0x20U == (0xe0U & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__0__a_var)))
                                  ? 5U : ((0x10U == 
                                           (0xf0U & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__0__a_var)))
                                           ? 4U : (
                                                   (8U 
                                                    == 
                                                    (0xf8U 
                                                     & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__0__a_var)))
                                                    ? 3U
                                                    : 
                                                   ((4U 
                                                     == 
                                                     (0xfcU 
                                                      & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__0__a_var)))
                                                     ? 2U
                                                     : 
                                                    ((2U 
                                                      == 
                                                      (0xfeU 
                                                       & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__0__a_var)))
                                                      ? 1U
                                                      : 0U)))))));
    }
    vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__temp_0_8_bit 
        = vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__0__Vfuncout;
    vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__1__a_var 
        = (0xffU & (vlTOPp->simdive_original_fp32_wrapper__DOT__core_x 
                    >> 8U));
    if (((((((((0x80U == (0x80U & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__1__a_var))) 
               | (0x40U == (0xc0U & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__1__a_var)))) 
              | (0x20U == (0xe0U & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__1__a_var)))) 
             | (0x10U == (0xf0U & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__1__a_var)))) 
            | (8U == (0xf8U & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__1__a_var)))) 
           | (4U == (0xfcU & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__1__a_var)))) 
          | (2U == (0xfeU & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__1__a_var)))) 
         | (1U == (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__1__a_var)))) {
        vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__1__Vfuncout 
            = ((0x80U == (0x80U & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__1__a_var)))
                ? 7U : ((0x40U == (0xc0U & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__1__a_var)))
                         ? 6U : ((0x20U == (0xe0U & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__1__a_var)))
                                  ? 5U : ((0x10U == 
                                           (0xf0U & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__1__a_var)))
                                           ? 4U : (
                                                   (8U 
                                                    == 
                                                    (0xf8U 
                                                     & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__1__a_var)))
                                                    ? 3U
                                                    : 
                                                   ((4U 
                                                     == 
                                                     (0xfcU 
                                                      & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__1__a_var)))
                                                     ? 2U
                                                     : 
                                                    ((2U 
                                                      == 
                                                      (0xfeU 
                                                       & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__1__a_var)))
                                                      ? 1U
                                                      : 0U)))))));
    }
    vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__temp_1_8_bit 
        = vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__1__Vfuncout;
    vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__2__a_var 
        = (0xffU & (vlTOPp->simdive_original_fp32_wrapper__DOT__core_x 
                    >> 0x10U));
    if (((((((((0x80U == (0x80U & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__2__a_var))) 
               | (0x40U == (0xc0U & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__2__a_var)))) 
              | (0x20U == (0xe0U & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__2__a_var)))) 
             | (0x10U == (0xf0U & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__2__a_var)))) 
            | (8U == (0xf8U & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__2__a_var)))) 
           | (4U == (0xfcU & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__2__a_var)))) 
          | (2U == (0xfeU & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__2__a_var)))) 
         | (1U == (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__2__a_var)))) {
        vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__2__Vfuncout 
            = ((0x80U == (0x80U & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__2__a_var)))
                ? 7U : ((0x40U == (0xc0U & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__2__a_var)))
                         ? 6U : ((0x20U == (0xe0U & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__2__a_var)))
                                  ? 5U : ((0x10U == 
                                           (0xf0U & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__2__a_var)))
                                           ? 4U : (
                                                   (8U 
                                                    == 
                                                    (0xf8U 
                                                     & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__2__a_var)))
                                                    ? 3U
                                                    : 
                                                   ((4U 
                                                     == 
                                                     (0xfcU 
                                                      & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__2__a_var)))
                                                     ? 2U
                                                     : 
                                                    ((2U 
                                                      == 
                                                      (0xfeU 
                                                       & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__2__a_var)))
                                                      ? 1U
                                                      : 0U)))))));
    }
    vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__temp_2_8_bit 
        = vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__2__Vfuncout;
    vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__3__a_var 
        = (0xffU & (vlTOPp->simdive_original_fp32_wrapper__DOT__core_x 
                    >> 0x18U));
    if (((((((((0x80U == (0x80U & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__3__a_var))) 
               | (0x40U == (0xc0U & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__3__a_var)))) 
              | (0x20U == (0xe0U & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__3__a_var)))) 
             | (0x10U == (0xf0U & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__3__a_var)))) 
            | (8U == (0xf8U & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__3__a_var)))) 
           | (4U == (0xfcU & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__3__a_var)))) 
          | (2U == (0xfeU & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__3__a_var)))) 
         | (1U == (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__3__a_var)))) {
        vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__3__Vfuncout 
            = ((0x80U == (0x80U & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__3__a_var)))
                ? 7U : ((0x40U == (0xc0U & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__3__a_var)))
                         ? 6U : ((0x20U == (0xe0U & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__3__a_var)))
                                  ? 5U : ((0x10U == 
                                           (0xf0U & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__3__a_var)))
                                           ? 4U : (
                                                   (8U 
                                                    == 
                                                    (0xf8U 
                                                     & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__3__a_var)))
                                                    ? 3U
                                                    : 
                                                   ((4U 
                                                     == 
                                                     (0xfcU 
                                                      & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__3__a_var)))
                                                     ? 2U
                                                     : 
                                                    ((2U 
                                                      == 
                                                      (0xfeU 
                                                       & (IData)(vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__3__a_var)))
                                                      ? 1U
                                                      : 0U)))))));
    }
    vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__temp_3_8_bit 
        = vlTOPp->__Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__3__Vfuncout;
    vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__temp_0_16_bit 
        = (((0U == (IData)(vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__temp_1_8_bit)) 
            & (~ (vlTOPp->simdive_original_fp32_wrapper__DOT__core_x 
                  >> 8U))) ? (IData)(vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__temp_0_8_bit)
            : (8U | (IData)(vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__temp_1_8_bit)));
    vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__temp_1_16_bit 
        = (((0U == (IData)(vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__temp_3_8_bit)) 
            & (~ (vlTOPp->simdive_original_fp32_wrapper__DOT__core_x 
                  >> 0x18U))) ? (IData)(vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__temp_2_8_bit)
            : (8U | (IData)(vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__temp_3_8_bit)));
    vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__temp_0_32_bit 
        = (((0U == (IData)(vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__temp_1_16_bit)) 
            & (~ (vlTOPp->simdive_original_fp32_wrapper__DOT__core_x 
                  >> 0x10U))) ? (IData)(vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__temp_0_16_bit)
            : (0x10U | (IData)(vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__temp_1_16_bit)));
    vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__ka 
        = vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__temp_0_32_bit;
    vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_shift_frac_a__DOT__temp 
        = ((QData)((IData)(vlTOPp->simdive_original_fp32_wrapper__DOT__core_x)) 
           << 0x1fU);
    vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_a 
        = (IData)((vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_shift_frac_a__DOT__temp 
                   >> (IData)(vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__ka)));
    if ((0x40000000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_a)) {
        if ((0x20000000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_a)) {
            if ((0x10000000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_a)) {
                if ((0x40000000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                    if ((0x20000000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                        if ((0x10000000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_upper = 0x31U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_upper = 0x163U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_3 = 0U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_3 = 1U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_upper = 0xe0U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_upper = 0x6c4U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_3 = 0U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_3 = 6U;
                        }
                    } else {
                        if ((0x10000000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_upper = 0x180U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_upper = 0xb5aU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_3 = 1U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_3 = 0xbU;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_upper = 0x1b3U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_upper = 0x1100U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_3 = 1U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_3 = 0x11U;
                        }
                    }
                } else {
                    if ((0x20000000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                        if ((0x10000000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_upper = 0x280U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_upper = 0x1455U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_3 = 2U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_3 = 0x14U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_upper = 0x333U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_upper = 0x14baU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_3 = 3U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_3 = 0x14U;
                        }
                    } else {
                        if ((0x10000000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_upper = 0x3c0U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_upper = 0xf0dU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_3 = 3U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_3 = 0xfU;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_upper = 0x267U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_upper = 0x650U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_3 = 2U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_3 = 6U;
                        }
                    }
                }
            } else {
                if ((0x40000000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                    if ((0x20000000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                        if ((0x10000000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_upper = 0xe0U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_upper = 0x7aU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_3 = 0U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_3 = 0U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_upper = 0x282U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_upper = 0x173U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_3 = 2U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_3 = 1U;
                        }
                    } else {
                        if ((0x10000000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_upper = 0x400U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_upper = 0x619U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_3 = 4U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_3 = 6U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_upper = 0x53aU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_upper = 0xbe6U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_3 = 5U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_3 = 0xbU;
                        }
                    }
                } else {
                    if ((0x20000000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                        if ((0x10000000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_upper = 0x718U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_upper = 0xf00U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_3 = 7U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_3 = 0xfU;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_upper = 0x900U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_upper = 0xe21U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_3 = 9U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_3 = 0xeU;
                        }
                    } else {
                        if ((0x10000000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_upper = 0xa24U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_upper = 0xe00U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_3 = 0xaU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_3 = 0xeU;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_upper = 0x4d2U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_upper = 0x506U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_3 = 4U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_3 = 5U;
                        }
                    }
                }
            }
        } else {
            if ((0x10000000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_a)) {
                if ((0x40000000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                    if ((0x20000000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                        if ((0x10000000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_upper = 0x180U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_upper = 0x125U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_3 = 1U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_3 = 1U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_upper = 0x400U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_upper = 0x1acU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_3 = 4U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_3 = 1U;
                        }
                    } else {
                        if ((0x10000000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_upper = 0x6c0U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_upper = 0x187U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_3 = 6U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_3 = 1U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_upper = 0x928U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_upper = 0x605U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_3 = 9U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_3 = 6U;
                        }
                    }
                } else {
                    if ((0x20000000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                        if ((0x10000000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_upper = 0xc00U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_upper = 0x9e3U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_3 = 0xcU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_3 = 9U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_upper = 0xe00U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_upper = 0xbc1U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_3 = 0xeU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_3 = 0xbU;
                        }
                    } else {
                        if ((0x10000000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_upper = 0x80cU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_upper = 0x9e9U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_3 = 8U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_3 = 9U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_upper = 0x460U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_upper = 0x431U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_3 = 4U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_3 = 4U;
                        }
                    }
                }
            } else {
                if ((0x40000000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                    if ((0x20000000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                        if ((0x10000000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_upper = 0x1b3U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_upper = 0x16bU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_3 = 1U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_3 = 1U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_upper = 0x53aU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_upper = 0x344U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_3 = 5U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_3 = 3U;
                        }
                    } else {
                        if ((0x10000000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_upper = 0x928U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_upper = 0x2bfU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_3 = 9U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_3 = 2U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_upper = 0xd0cU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_upper = 0x19eU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_3 = 0xdU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_3 = 1U;
                        }
                    }
                } else {
                    if ((0x20000000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                        if ((0x10000000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_upper = 0x1088U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_upper = 0x432U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_3 = 0x10U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_3 = 4U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_upper = 0x1400U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_upper = 0x7fbU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_3 = 0x14U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_3 = 7U;
                        }
                    } else {
                        if ((0x10000000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_upper = 0xc38U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_upper = 0x7f5U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_3 = 0xcU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_3 = 7U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_upper = 0x2daU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_upper = 0x24fU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_3 = 2U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_3 = 2U;
                        }
                    }
                }
            }
        }
    } else {
        if ((0x20000000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_a)) {
            if ((0x10000000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_a)) {
                if ((0x40000000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                    if ((0x20000000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                        if ((0x10000000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_upper = 0x280U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_upper = 0x203U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_3 = 2U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_3 = 2U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_upper = 0x718U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_upper = 0x48aU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_3 = 7U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_3 = 4U;
                        }
                    } else {
                        if ((0x10000000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_upper = 0xc00U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_upper = 0x5f9U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_3 = 0xcU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_3 = 5U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_upper = 0x1088U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_upper = 0x46eU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_3 = 0x10U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_3 = 4U;
                        }
                    }
                } else {
                    if ((0x20000000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                        if ((0x10000000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_upper = 0x1400U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_upper = 0x199U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_3 = 0x14U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_3 = 1U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_upper = 0xfd0U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_upper = 0x3e0U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_3 = 0xfU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_3 = 3U;
                        }
                    } else {
                        if ((0x10000000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_upper = 0x904U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_upper = 0x4deU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_3 = 9U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_3 = 4U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_upper = 0x240U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_upper = 0x303U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_3 = 2U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_3 = 3U;
                        }
                    }
                }
            } else {
                if ((0x40000000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                    if ((0x20000000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                        if ((0x10000000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_upper = 0x333U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_upper = 0x2e8U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_3 = 3U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_3 = 2U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_upper = 0x900U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_upper = 0x5a8U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_3 = 9U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_3 = 5U;
                        }
                    } else {
                        if ((0x10000000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_upper = 0xe00U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_upper = 0x87cU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_3 = 0xeU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_3 = 8U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_upper = 0x1400U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_upper = 0x8ccU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_3 = 0x14U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_3 = 8U;
                        }
                    }
                } else {
                    if ((0x20000000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                        if ((0x10000000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_upper = 0xfd0U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_upper = 0x65fU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_3 = 0xfU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_3 = 6U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_upper = 0xab4U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_upper = 0x15bU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_3 = 0xaU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_3 = 1U;
                        }
                    } else {
                        if ((0x10000000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_upper = 0x602U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_upper = 0x2aaU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_3 = 6U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_3 = 2U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_upper = 0x1e8U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_upper = 0x1e1U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_3 = 1U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_3 = 1U;
                        }
                    }
                }
            }
        } else {
            if ((0x10000000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_a)) {
                if ((0x40000000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                    if ((0x20000000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                        if ((0x10000000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_upper = 0x3c0U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_upper = 0x336U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_3 = 3U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_3 = 3U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_upper = 0xa24U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_upper = 0x835U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_3 = 0xaU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_3 = 8U;
                        }
                    } else {
                        if ((0x10000000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_upper = 0x80cU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_upper = 0xbc5U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_3 = 8U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_3 = 0xbU;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_upper = 0xc38U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_upper = 0xd75U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_3 = 0xcU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_3 = 0xdU;
                        }
                    }
                } else {
                    if ((0x20000000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                        if ((0x10000000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_upper = 0x904U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_upper = 0xc67U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_3 = 9U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_3 = 0xcU;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_upper = 0x602U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_upper = 0x8f9U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_3 = 6U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_3 = 8U;
                        }
                    } else {
                        if ((0x10000000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_upper = 0x3baU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_upper = 0x101U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_3 = 3U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_3 = 1U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_upper = 0x12dU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_upper = 0xbbU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_3 = 1U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_3 = 0U;
                        }
                    }
                }
            } else {
                if ((0x40000000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                    if ((0x20000000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                        if ((0x10000000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_upper = 0x267U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_upper = 0x100U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_3 = 2U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_3 = 1U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_upper = 0x4d2U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_upper = 0x9d8U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_3 = 4U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_3 = 9U;
                        }
                    } else {
                        if ((0x10000000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_upper = 0x460U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_upper = 0x1000U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_3 = 4U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_3 = 0x10U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_upper = 0x2daU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_upper = 0x1212U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_3 = 2U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_3 = 0x12U;
                        }
                    }
                } else {
                    if ((0x20000000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                        if ((0x10000000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_upper = 0x240U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_upper = 0x1147U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_3 = 2U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_3 = 0x11U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_upper = 0x1e8U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_upper = 0x107eU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_3 = 1U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_3 = 0x10U;
                        }
                    } else {
                        if ((0x10000000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_upper = 0x12dU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_upper = 0x9e3U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_3 = 1U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_3 = 9U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_upper = 0x3dU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_upper = 0x21U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_3 = 0U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_3 = 0U;
                        }
                    }
                }
            }
        }
    }
    if ((0x400000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_a)) {
        if ((0x200000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_a)) {
            if ((0x100000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_a)) {
                if ((0x400000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                    if ((0x200000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                        if ((0x100000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_2 = 0U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_2 = 1U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_2 = 0U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_2 = 6U;
                        }
                    } else {
                        if ((0x100000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_2 = 1U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_2 = 0xbU;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_2 = 1U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_2 = 0x11U;
                        }
                    }
                } else {
                    if ((0x200000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                        if ((0x100000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_2 = 2U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_2 = 0x14U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_2 = 3U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_2 = 0x14U;
                        }
                    } else {
                        if ((0x100000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_2 = 3U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_2 = 0xfU;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_2 = 2U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_2 = 6U;
                        }
                    }
                }
            } else {
                if ((0x400000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                    if ((0x200000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                        if ((0x100000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_2 = 0U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_2 = 0U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_2 = 2U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_2 = 1U;
                        }
                    } else {
                        if ((0x100000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_2 = 4U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_2 = 6U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_2 = 5U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_2 = 0xbU;
                        }
                    }
                } else {
                    if ((0x200000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                        if ((0x100000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_2 = 7U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_2 = 0xfU;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_2 = 9U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_2 = 0xeU;
                        }
                    } else {
                        if ((0x100000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_2 = 0xaU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_2 = 0xeU;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_2 = 4U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_2 = 5U;
                        }
                    }
                }
            }
        } else {
            if ((0x100000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_a)) {
                if ((0x400000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                    if ((0x200000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                        if ((0x100000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_2 = 1U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_2 = 1U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_2 = 4U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_2 = 1U;
                        }
                    } else {
                        if ((0x100000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_2 = 6U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_2 = 1U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_2 = 9U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_2 = 6U;
                        }
                    }
                } else {
                    if ((0x200000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                        if ((0x100000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_2 = 0xcU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_2 = 9U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_2 = 0xeU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_2 = 0xbU;
                        }
                    } else {
                        if ((0x100000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_2 = 8U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_2 = 9U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_2 = 4U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_2 = 4U;
                        }
                    }
                }
            } else {
                if ((0x400000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                    if ((0x200000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                        if ((0x100000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_2 = 1U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_2 = 1U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_2 = 5U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_2 = 3U;
                        }
                    } else {
                        if ((0x100000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_2 = 9U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_2 = 2U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_2 = 0xdU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_2 = 1U;
                        }
                    }
                } else {
                    if ((0x200000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                        if ((0x100000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_2 = 0x10U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_2 = 4U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_2 = 0x14U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_2 = 7U;
                        }
                    } else {
                        if ((0x100000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_2 = 0xcU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_2 = 7U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_2 = 2U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_2 = 2U;
                        }
                    }
                }
            }
        }
    } else {
        if ((0x200000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_a)) {
            if ((0x100000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_a)) {
                if ((0x400000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                    if ((0x200000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                        if ((0x100000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_2 = 2U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_2 = 2U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_2 = 7U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_2 = 4U;
                        }
                    } else {
                        if ((0x100000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_2 = 0xcU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_2 = 5U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_2 = 0x10U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_2 = 4U;
                        }
                    }
                } else {
                    if ((0x200000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                        if ((0x100000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_2 = 0x14U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_2 = 1U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_2 = 0xfU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_2 = 3U;
                        }
                    } else {
                        if ((0x100000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_2 = 9U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_2 = 4U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_2 = 2U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_2 = 3U;
                        }
                    }
                }
            } else {
                if ((0x400000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                    if ((0x200000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                        if ((0x100000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_2 = 3U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_2 = 2U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_2 = 9U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_2 = 5U;
                        }
                    } else {
                        if ((0x100000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_2 = 0xeU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_2 = 8U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_2 = 0x14U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_2 = 8U;
                        }
                    }
                } else {
                    if ((0x200000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                        if ((0x100000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_2 = 0xfU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_2 = 6U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_2 = 0xaU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_2 = 1U;
                        }
                    } else {
                        if ((0x100000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_2 = 6U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_2 = 2U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_2 = 1U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_2 = 1U;
                        }
                    }
                }
            }
        } else {
            if ((0x100000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_a)) {
                if ((0x400000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                    if ((0x200000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                        if ((0x100000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_2 = 3U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_2 = 3U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_2 = 0xaU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_2 = 8U;
                        }
                    } else {
                        if ((0x100000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_2 = 8U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_2 = 0xbU;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_2 = 0xcU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_2 = 0xdU;
                        }
                    }
                } else {
                    if ((0x200000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                        if ((0x100000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_2 = 9U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_2 = 0xcU;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_2 = 6U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_2 = 8U;
                        }
                    } else {
                        if ((0x100000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_2 = 3U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_2 = 1U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_2 = 1U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_2 = 0U;
                        }
                    }
                }
            } else {
                if ((0x400000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                    if ((0x200000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                        if ((0x100000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_2 = 2U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_2 = 1U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_2 = 4U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_2 = 9U;
                        }
                    } else {
                        if ((0x100000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_2 = 4U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_2 = 0x10U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_2 = 2U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_2 = 0x12U;
                        }
                    }
                } else {
                    if ((0x200000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                        if ((0x100000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_2 = 2U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_2 = 0x11U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_2 = 1U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_2 = 0x10U;
                        }
                    } else {
                        if ((0x100000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_2 = 1U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_2 = 9U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_2 = 0U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_2 = 0U;
                        }
                    }
                }
            }
        }
    }
    if ((0x4000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_a)) {
        if ((0x2000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_a)) {
            if ((0x1000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_a)) {
                if ((0x4000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                    if ((0x2000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                        if ((0x1000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_lower = 0x31U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_lower = 0x163U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_1 = 0U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_1 = 1U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_lower = 0xe0U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_lower = 0x6c4U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_1 = 0U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_1 = 6U;
                        }
                    } else {
                        if ((0x1000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_lower = 0x180U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_lower = 0xb5aU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_1 = 1U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_1 = 0xbU;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_lower = 0x1b3U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_lower = 0x1100U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_1 = 1U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_1 = 0x11U;
                        }
                    }
                } else {
                    if ((0x2000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                        if ((0x1000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_lower = 0x280U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_lower = 0x1455U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_1 = 2U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_1 = 0x14U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_lower = 0x333U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_lower = 0x14baU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_1 = 3U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_1 = 0x14U;
                        }
                    } else {
                        if ((0x1000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_lower = 0x3c0U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_lower = 0xf0dU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_1 = 3U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_1 = 0xfU;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_lower = 0x267U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_lower = 0x650U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_1 = 2U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_1 = 6U;
                        }
                    }
                }
            } else {
                if ((0x4000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                    if ((0x2000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                        if ((0x1000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_lower = 0xe0U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_lower = 0x7aU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_1 = 0U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_1 = 0U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_lower = 0x282U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_lower = 0x173U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_1 = 2U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_1 = 1U;
                        }
                    } else {
                        if ((0x1000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_lower = 0x400U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_lower = 0x619U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_1 = 4U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_1 = 6U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_lower = 0x53aU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_lower = 0xbe6U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_1 = 5U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_1 = 0xbU;
                        }
                    }
                } else {
                    if ((0x2000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                        if ((0x1000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_lower = 0x718U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_lower = 0xf00U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_1 = 7U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_1 = 0xfU;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_lower = 0x900U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_lower = 0xe21U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_1 = 9U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_1 = 0xeU;
                        }
                    } else {
                        if ((0x1000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_lower = 0xa24U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_lower = 0xe00U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_1 = 0xaU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_1 = 0xeU;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_lower = 0x4d2U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_lower = 0x506U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_1 = 4U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_1 = 5U;
                        }
                    }
                }
            }
        } else {
            if ((0x1000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_a)) {
                if ((0x4000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                    if ((0x2000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                        if ((0x1000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_lower = 0x180U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_lower = 0x125U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_1 = 1U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_1 = 1U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_lower = 0x400U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_lower = 0x1acU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_1 = 4U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_1 = 1U;
                        }
                    } else {
                        if ((0x1000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_lower = 0x6c0U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_lower = 0x187U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_1 = 6U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_1 = 1U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_lower = 0x928U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_lower = 0x605U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_1 = 9U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_1 = 6U;
                        }
                    }
                } else {
                    if ((0x2000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                        if ((0x1000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_lower = 0xc00U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_lower = 0x9e3U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_1 = 0xcU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_1 = 9U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_lower = 0xe00U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_lower = 0xbc1U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_1 = 0xeU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_1 = 0xbU;
                        }
                    } else {
                        if ((0x1000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_lower = 0x80cU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_lower = 0x9e9U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_1 = 8U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_1 = 9U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_lower = 0x460U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_lower = 0x431U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_1 = 4U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_1 = 4U;
                        }
                    }
                }
            } else {
                if ((0x4000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                    if ((0x2000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                        if ((0x1000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_lower = 0x1b3U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_lower = 0x16bU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_1 = 1U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_1 = 1U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_lower = 0x53aU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_lower = 0x344U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_1 = 5U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_1 = 3U;
                        }
                    } else {
                        if ((0x1000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_lower = 0x928U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_lower = 0x2bfU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_1 = 9U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_1 = 2U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_lower = 0xd0cU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_lower = 0x19eU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_1 = 0xdU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_1 = 1U;
                        }
                    }
                } else {
                    if ((0x2000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                        if ((0x1000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_lower = 0x1088U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_lower = 0x432U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_1 = 0x10U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_1 = 4U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_lower = 0x1400U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_lower = 0x7fbU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_1 = 0x14U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_1 = 7U;
                        }
                    } else {
                        if ((0x1000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_lower = 0xc38U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_lower = 0x7f5U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_1 = 0xcU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_1 = 7U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_lower = 0x2daU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_lower = 0x24fU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_1 = 2U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_1 = 2U;
                        }
                    }
                }
            }
        }
    } else {
        if ((0x2000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_a)) {
            if ((0x1000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_a)) {
                if ((0x4000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                    if ((0x2000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                        if ((0x1000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_lower = 0x280U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_lower = 0x203U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_1 = 2U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_1 = 2U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_lower = 0x718U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_lower = 0x48aU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_1 = 7U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_1 = 4U;
                        }
                    } else {
                        if ((0x1000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_lower = 0xc00U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_lower = 0x5f9U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_1 = 0xcU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_1 = 5U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_lower = 0x1088U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_lower = 0x46eU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_1 = 0x10U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_1 = 4U;
                        }
                    }
                } else {
                    if ((0x2000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                        if ((0x1000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_lower = 0x1400U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_lower = 0x199U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_1 = 0x14U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_1 = 1U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_lower = 0xfd0U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_lower = 0x3e0U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_1 = 0xfU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_1 = 3U;
                        }
                    } else {
                        if ((0x1000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_lower = 0x904U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_lower = 0x4deU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_1 = 9U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_1 = 4U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_lower = 0x240U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_lower = 0x303U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_1 = 2U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_1 = 3U;
                        }
                    }
                }
            } else {
                if ((0x4000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                    if ((0x2000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                        if ((0x1000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_lower = 0x333U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_lower = 0x2e8U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_1 = 3U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_1 = 2U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_lower = 0x900U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_lower = 0x5a8U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_1 = 9U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_1 = 5U;
                        }
                    } else {
                        if ((0x1000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_lower = 0xe00U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_lower = 0x87cU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_1 = 0xeU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_1 = 8U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_lower = 0x1400U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_lower = 0x8ccU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_1 = 0x14U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_1 = 8U;
                        }
                    }
                } else {
                    if ((0x2000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                        if ((0x1000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_lower = 0xfd0U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_lower = 0x65fU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_1 = 0xfU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_1 = 6U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_lower = 0xab4U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_lower = 0x15bU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_1 = 0xaU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_1 = 1U;
                        }
                    } else {
                        if ((0x1000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_lower = 0x602U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_lower = 0x2aaU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_1 = 6U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_1 = 2U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_lower = 0x1e8U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_lower = 0x1e1U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_1 = 1U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_1 = 1U;
                        }
                    }
                }
            }
        } else {
            if ((0x1000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_a)) {
                if ((0x4000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                    if ((0x2000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                        if ((0x1000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_lower = 0x3c0U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_lower = 0x336U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_1 = 3U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_1 = 3U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_lower = 0xa24U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_lower = 0x835U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_1 = 0xaU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_1 = 8U;
                        }
                    } else {
                        if ((0x1000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_lower = 0x80cU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_lower = 0xbc5U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_1 = 8U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_1 = 0xbU;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_lower = 0xc38U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_lower = 0xd75U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_1 = 0xcU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_1 = 0xdU;
                        }
                    }
                } else {
                    if ((0x2000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                        if ((0x1000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_lower = 0x904U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_lower = 0xc67U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_1 = 9U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_1 = 0xcU;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_lower = 0x602U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_lower = 0x8f9U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_1 = 6U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_1 = 8U;
                        }
                    } else {
                        if ((0x1000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_lower = 0x3baU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_lower = 0x101U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_1 = 3U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_1 = 1U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_lower = 0x12dU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_lower = 0xbbU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_1 = 1U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_1 = 0U;
                        }
                    }
                }
            } else {
                if ((0x4000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                    if ((0x2000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                        if ((0x1000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_lower = 0x267U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_lower = 0x100U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_1 = 2U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_1 = 1U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_lower = 0x4d2U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_lower = 0x9d8U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_1 = 4U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_1 = 9U;
                        }
                    } else {
                        if ((0x1000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_lower = 0x460U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_lower = 0x1000U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_1 = 4U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_1 = 0x10U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_lower = 0x2daU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_lower = 0x1212U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_1 = 2U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_1 = 0x12U;
                        }
                    }
                } else {
                    if ((0x2000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                        if ((0x1000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_lower = 0x240U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_lower = 0x1147U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_1 = 2U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_1 = 0x11U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_lower = 0x1e8U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_lower = 0x107eU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_1 = 1U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_1 = 0x10U;
                        }
                    } else {
                        if ((0x1000U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_lower = 0x12dU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_lower = 0x9e3U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_1 = 1U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_1 = 9U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_lower = 0x3dU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_lower = 0x21U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_1 = 0U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_1 = 0U;
                        }
                    }
                }
            }
        }
    }
    if ((0x40U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_a)) {
        if ((0x20U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_a)) {
            if ((0x10U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_a)) {
                if ((0x40U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                    if ((0x20U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                        if ((0x10U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_0 = 0U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_0 = 1U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_0 = 0U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_0 = 6U;
                        }
                    } else {
                        if ((0x10U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_0 = 1U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_0 = 0xbU;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_0 = 1U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_0 = 0x11U;
                        }
                    }
                } else {
                    if ((0x20U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                        if ((0x10U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_0 = 2U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_0 = 0x14U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_0 = 3U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_0 = 0x14U;
                        }
                    } else {
                        if ((0x10U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_0 = 3U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_0 = 0xfU;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_0 = 2U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_0 = 6U;
                        }
                    }
                }
            } else {
                if ((0x40U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                    if ((0x20U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                        if ((0x10U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_0 = 0U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_0 = 0U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_0 = 2U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_0 = 1U;
                        }
                    } else {
                        if ((0x10U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_0 = 4U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_0 = 6U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_0 = 5U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_0 = 0xbU;
                        }
                    }
                } else {
                    if ((0x20U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                        if ((0x10U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_0 = 7U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_0 = 0xfU;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_0 = 9U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_0 = 0xeU;
                        }
                    } else {
                        if ((0x10U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_0 = 0xaU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_0 = 0xeU;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_0 = 4U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_0 = 5U;
                        }
                    }
                }
            }
        } else {
            if ((0x10U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_a)) {
                if ((0x40U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                    if ((0x20U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                        if ((0x10U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_0 = 1U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_0 = 1U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_0 = 4U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_0 = 1U;
                        }
                    } else {
                        if ((0x10U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_0 = 6U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_0 = 1U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_0 = 9U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_0 = 6U;
                        }
                    }
                } else {
                    if ((0x20U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                        if ((0x10U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_0 = 0xcU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_0 = 9U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_0 = 0xeU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_0 = 0xbU;
                        }
                    } else {
                        if ((0x10U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_0 = 8U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_0 = 9U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_0 = 4U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_0 = 4U;
                        }
                    }
                }
            } else {
                if ((0x40U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                    if ((0x20U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                        if ((0x10U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_0 = 1U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_0 = 1U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_0 = 5U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_0 = 3U;
                        }
                    } else {
                        if ((0x10U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_0 = 9U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_0 = 2U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_0 = 0xdU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_0 = 1U;
                        }
                    }
                } else {
                    if ((0x20U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                        if ((0x10U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_0 = 0x10U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_0 = 4U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_0 = 0x14U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_0 = 7U;
                        }
                    } else {
                        if ((0x10U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_0 = 0xcU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_0 = 7U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_0 = 2U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_0 = 2U;
                        }
                    }
                }
            }
        }
    } else {
        if ((0x20U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_a)) {
            if ((0x10U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_a)) {
                if ((0x40U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                    if ((0x20U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                        if ((0x10U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_0 = 2U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_0 = 2U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_0 = 7U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_0 = 4U;
                        }
                    } else {
                        if ((0x10U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_0 = 0xcU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_0 = 5U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_0 = 0x10U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_0 = 4U;
                        }
                    }
                } else {
                    if ((0x20U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                        if ((0x10U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_0 = 0x14U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_0 = 1U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_0 = 0xfU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_0 = 3U;
                        }
                    } else {
                        if ((0x10U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_0 = 9U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_0 = 4U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_0 = 2U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_0 = 3U;
                        }
                    }
                }
            } else {
                if ((0x40U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                    if ((0x20U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                        if ((0x10U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_0 = 3U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_0 = 2U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_0 = 9U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_0 = 5U;
                        }
                    } else {
                        if ((0x10U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_0 = 0xeU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_0 = 8U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_0 = 0x14U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_0 = 8U;
                        }
                    }
                } else {
                    if ((0x20U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                        if ((0x10U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_0 = 0xfU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_0 = 6U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_0 = 0xaU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_0 = 1U;
                        }
                    } else {
                        if ((0x10U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_0 = 6U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_0 = 2U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_0 = 1U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_0 = 1U;
                        }
                    }
                }
            }
        } else {
            if ((0x10U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_a)) {
                if ((0x40U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                    if ((0x20U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                        if ((0x10U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_0 = 3U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_0 = 3U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_0 = 0xaU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_0 = 8U;
                        }
                    } else {
                        if ((0x10U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_0 = 8U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_0 = 0xbU;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_0 = 0xcU;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_0 = 0xdU;
                        }
                    }
                } else {
                    if ((0x20U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                        if ((0x10U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_0 = 9U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_0 = 0xcU;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_0 = 6U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_0 = 8U;
                        }
                    } else {
                        if ((0x10U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_0 = 3U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_0 = 1U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_0 = 1U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_0 = 0U;
                        }
                    }
                }
            } else {
                if ((0x40U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                    if ((0x20U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                        if ((0x10U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_0 = 2U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_0 = 1U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_0 = 4U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_0 = 9U;
                        }
                    } else {
                        if ((0x10U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_0 = 4U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_0 = 0x10U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_0 = 2U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_0 = 0x12U;
                        }
                    }
                } else {
                    if ((0x20U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                        if ((0x10U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_0 = 2U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_0 = 0x11U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_0 = 1U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_0 = 0x10U;
                        }
                    } else {
                        if ((0x10U & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b)) {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_0 = 1U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_0 = 9U;
                        } else {
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_0 = 0U;
                            vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_0 = 0U;
                        }
                    }
                }
            }
        }
    }
    vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__correction_mul_div 
        = (((((((((0U == ((IData)(vlTOPp->divide_mode)
                           ? 1U : 0U)) | (1U == ((IData)(vlTOPp->divide_mode)
                                                  ? 1U
                                                  : 0U))) 
                 | (2U == ((IData)(vlTOPp->divide_mode)
                            ? 1U : 0U))) | (3U == ((IData)(vlTOPp->divide_mode)
                                                    ? 1U
                                                    : 0U))) 
               | (4U == ((IData)(vlTOPp->divide_mode)
                          ? 1U : 0U))) | (5U == ((IData)(vlTOPp->divide_mode)
                                                  ? 1U
                                                  : 0U))) 
             | (6U == ((IData)(vlTOPp->divide_mode)
                        ? 1U : 0U))) | (7U == ((IData)(vlTOPp->divide_mode)
                                                ? 1U
                                                : 0U)))
            ? ((0U == ((IData)(vlTOPp->divide_mode)
                        ? 1U : 0U)) ? ((IData)(vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_upper) 
                                       << 0x10U) : 
               ((1U == ((IData)(vlTOPp->divide_mode)
                         ? 1U : 0U)) ? ((IData)(vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_upper) 
                                        << 0x10U) : 
                ((2U == ((IData)(vlTOPp->divide_mode)
                          ? 1U : 0U)) ? (((IData)(vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_upper) 
                                          << 0x10U) 
                                         | (IData)(vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_lower))
                  : ((3U == ((IData)(vlTOPp->divide_mode)
                              ? 1U : 0U)) ? (((IData)(vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_upper) 
                                              << 0x10U) 
                                             | (IData)(vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_lower))
                      : ((4U == ((IData)(vlTOPp->divide_mode)
                                  ? 1U : 0U)) ? (((IData)(vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_upper) 
                                                  << 0x10U) 
                                                 | (IData)(vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_lower))
                          : ((5U == ((IData)(vlTOPp->divide_mode)
                                      ? 1U : 0U)) ? 
                             (((IData)(vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_3) 
                               << 0x18U) | (((IData)(vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_2) 
                                             << 0x10U) 
                                            | (((IData)(vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_1) 
                                                << 8U) 
                                               | (IData)(vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_0))))
                              : ((6U == ((IData)(vlTOPp->divide_mode)
                                          ? 1U : 0U))
                                  ? (((IData)(vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_3) 
                                      << 0x18U) | (
                                                   ((IData)(vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_2) 
                                                    << 0x10U) 
                                                   | (((IData)(vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_1) 
                                                       << 8U) 
                                                      | (IData)(vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_0))))
                                  : (((IData)(vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_3) 
                                      << 0x18U) | (
                                                   ((IData)(vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_2) 
                                                    << 0x10U) 
                                                   | (((IData)(vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_1) 
                                                       << 8U) 
                                                      | (IData)(vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_0)))))))))))
            : ((8U == ((IData)(vlTOPp->divide_mode)
                        ? 1U : 0U)) ? (((IData)(vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_3) 
                                        << 0x18U) | 
                                       (((IData)(vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_2) 
                                         << 0x10U) 
                                        | (((IData)(vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_1) 
                                            << 8U) 
                                           | (IData)(vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_0))))
                : ((9U == ((IData)(vlTOPp->divide_mode)
                            ? 1U : 0U)) ? (((IData)(vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_3) 
                                            << 0x18U) 
                                           | (((IData)(vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_2) 
                                               << 0x10U) 
                                              | (((IData)(vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_1) 
                                                  << 8U) 
                                                 | (IData)(vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_0))))
                    : 0U)));
    vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__adder_result1 
        = (0x1ffU & ((0xffU & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b) 
                     + (0xffU & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__correction_mul_div)));
    vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__adder_result2 
        = (0x1ffU & (((0xffU & (vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b 
                                >> 8U)) + (0xffU & 
                                           (vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__correction_mul_div 
                                            >> 8U))) 
                     + (1U & ((IData)(vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__adder_result1) 
                              >> 8U))));
    vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__adder_result3 
        = (0x1ffU & (((0xffU & (vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b 
                                >> 0x10U)) + (0xffU 
                                              & (vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__correction_mul_div 
                                                 >> 0x10U))) 
                     + (1U & ((IData)(vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__adder_result2) 
                              >> 8U))));
    vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__adder_result4 
        = (0x1ffU & (((0xffU & (vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b 
                                >> 0x18U)) + (0xffU 
                                              & (vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__correction_mul_div 
                                                 >> 0x18U))) 
                     + (1U & ((IData)(vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__adder_result3) 
                              >> 8U))));
    vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT____Vcellinp__twos_complement_inst__in 
        = ((0xff000000U & ((IData)(vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__adder_result4) 
                           << 0x18U)) | ((0xff0000U 
                                          & ((IData)(vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__adder_result3) 
                                             << 0x10U)) 
                                         | ((0xff00U 
                                             & ((IData)(vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__adder_result2) 
                                                << 8U)) 
                                            | (0xffU 
                                               & (IData)(vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__adder_result1)))));
    vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__func_4_bit_add 
        = ((7U & (IData)(vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__func_4_bit_add)) 
           | (8U & ((IData)(((0U == ((IData)(vlTOPp->divide_mode)
                                      ? 1U : 0U)) ? 
                             (VL_ULL(1) | ((QData)((IData)(vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT____Vcellinp__twos_complement_inst__in)) 
                                           << 1U)) : 
                             ((QData)((IData)(((IData)(1U) 
                                               + (~ vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT____Vcellinp__twos_complement_inst__in)))) 
                              << 1U))) << 3U)));
    vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__temp_result 
        = (IData)((((0U == ((IData)(vlTOPp->divide_mode)
                             ? 1U : 0U)) ? (VL_ULL(1) 
                                            | ((QData)((IData)(vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT____Vcellinp__twos_complement_inst__in)) 
                                               << 1U))
                     : ((QData)((IData)(((IData)(1U) 
                                         + (~ vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT____Vcellinp__twos_complement_inst__in)))) 
                        << 1U)) >> 1U));
    vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__adder_result5 
        = (0x1ffU & (((0xffU & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_a) 
                      + (0xffU & vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__temp_result)) 
                     + (1U & ((IData)(vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__adder_result4) 
                              >> 8U))));
    vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__adder_result6 
        = (0x1ffU & (((0xffU & (vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_a 
                                >> 8U)) + (0xffU & 
                                           (vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__temp_result 
                                            >> 8U))) 
                     + (1U & ((IData)(vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__adder_result5) 
                              >> 8U))));
    vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__adder_result7 
        = (0x1ffU & (((0xffU & (vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_a 
                                >> 0x10U)) + (0xffU 
                                              & (vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__temp_result 
                                                 >> 0x10U))) 
                     + (1U & ((IData)(vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__adder_result6) 
                              >> 8U))));
    vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__adder_result8 
        = (0x1ffU & (((0xffU & (vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_a 
                                >> 0x18U)) + (0xffU 
                                              & (vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__temp_result 
                                                 >> 0x18U))) 
                     + (1U & ((IData)(vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__adder_result7) 
                              >> 8U))));
    __Vtemp1[0U] = (0x80000000U | ((0x7f000000U & ((IData)(vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__adder_result8) 
                                                   << 0x18U)) 
                                   | ((0xff0000U & 
                                       ((IData)(vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__adder_result7) 
                                        << 0x10U)) 
                                      | ((0xff00U & 
                                          ((IData)(vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__adder_result6) 
                                           << 8U)) 
                                         | (0xffU & (IData)(vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__adder_result5))))));
    __Vtemp1[1U] = 0U;
    __Vtemp1[2U] = 0U;
    VL_EXTEND_WW(96,95, __Vtemp2, __Vtemp1);
    vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__div_mul__DOT__shift_reg_temp[0U] 
        = __Vtemp2[0U];
    vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__div_mul__DOT__shift_reg_temp[1U] 
        = __Vtemp2[1U];
    vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__div_mul__DOT__shift_reg_temp[2U] 
        = __Vtemp2[2U];
    VL_SHIFTL_WWI(96,96,7, __Vtemp3, vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__div_mul__DOT__shift_reg_temp, 
                  (0x7fU & ((8U & (IData)(vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__func_4_bit_add))
                             ? (((IData)(vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__ka) 
                                 + (IData)(vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__kb)) 
                                + (1U & ((IData)(vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__adder_result8) 
                                         >> 7U))) : 
                            (((IData)(vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__ka) 
                              - (IData)(vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__kb)) 
                             - (1U & ((IData)(vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__adder_result8) 
                                      >> 7U))))));
    vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__div_mul__DOT__shift_reg[0U] 
        = __Vtemp3[0U];
    vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__div_mul__DOT__shift_reg[1U] 
        = __Vtemp3[1U];
    vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__div_mul__DOT__shift_reg[2U] 
        = __Vtemp3[2U];
    vlTOPp->simdive_original_fp32_wrapper__DOT__core_result 
        = (((QData)((IData)(vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__div_mul__DOT__shift_reg[2U])) 
            << 0x21U) | (((QData)((IData)(vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__div_mul__DOT__shift_reg[1U])) 
                          << 1U) | ((QData)((IData)(
                                                    vlTOPp->simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__div_mul__DOT__shift_reg[0U])) 
                                    >> 0x1fU)));
    vlTOPp->result = 0U;
    vlTOPp->simdive_original_fp32_wrapper__DOT__magnitude 
        = vlTOPp->simdive_original_fp32_wrapper__DOT__core_result;
    vlTOPp->simdive_original_fp32_wrapper__DOT__fraction = 0U;
    vlTOPp->simdive_original_fp32_wrapper__DOT__exponent = 0U;
    if ((((0U != (0xffU & (vlTOPp->x >> 0x17U))) & 
          (0xffU != (0xffU & (vlTOPp->x >> 0x17U)))) 
         & ((0U != (0xffU & (vlTOPp->y >> 0x17U))) 
            & (0xffU != (0xffU & (vlTOPp->y >> 0x17U)))))) {
        if (vlTOPp->divide_mode) {
            if ((VL_ULL(0x200) <= vlTOPp->simdive_original_fp32_wrapper__DOT__magnitude)) {
                vlTOPp->simdive_original_fp32_wrapper__DOT__fraction 
                    = (0x7fffffU & ((IData)((vlTOPp->simdive_original_fp32_wrapper__DOT__magnitude 
                                             >> 1U)) 
                                    - (IData)(0x100U)));
                vlTOPp->simdive_original_fp32_wrapper__DOT__exponent 
                    = ((IData)(0x80U) + ((0xffU & (vlTOPp->x 
                                                   >> 0x17U)) 
                                         - (0xffU & 
                                            (vlTOPp->y 
                                             >> 0x17U))));
            } else {
                if ((VL_ULL(0x100) <= vlTOPp->simdive_original_fp32_wrapper__DOT__magnitude)) {
                    vlTOPp->simdive_original_fp32_wrapper__DOT__fraction 
                        = (0x7fffffU & (IData)(((vlTOPp->simdive_original_fp32_wrapper__DOT__magnitude 
                                                 - VL_ULL(0x100)) 
                                                << 0xfU)));
                    vlTOPp->simdive_original_fp32_wrapper__DOT__exponent 
                        = ((IData)(0x7fU) + ((0xffU 
                                              & (vlTOPp->x 
                                                 >> 0x17U)) 
                                             - (0xffU 
                                                & (vlTOPp->y 
                                                   >> 0x17U))));
                } else {
                    if ((VL_ULL(0x80) <= vlTOPp->simdive_original_fp32_wrapper__DOT__magnitude)) {
                        vlTOPp->simdive_original_fp32_wrapper__DOT__fraction 
                            = (0x7fffffU & (IData)(
                                                   ((vlTOPp->simdive_original_fp32_wrapper__DOT__magnitude 
                                                     - VL_ULL(0x80)) 
                                                    << 0x10U)));
                        vlTOPp->simdive_original_fp32_wrapper__DOT__exponent 
                            = ((IData)(0x7eU) + ((0xffU 
                                                  & (vlTOPp->x 
                                                     >> 0x17U)) 
                                                 - 
                                                 (0xffU 
                                                  & (vlTOPp->y 
                                                     >> 0x17U))));
                    }
                }
            }
        } else {
            if ((VL_ULL(0x800000000000) <= vlTOPp->simdive_original_fp32_wrapper__DOT__magnitude)) {
                vlTOPp->simdive_original_fp32_wrapper__DOT__fraction 
                    = (0x7fffffU & (IData)((vlTOPp->simdive_original_fp32_wrapper__DOT__magnitude 
                                            >> 0x18U)));
                vlTOPp->simdive_original_fp32_wrapper__DOT__exponent 
                    = (((0xffU & (vlTOPp->x >> 0x17U)) 
                        + (0xffU & (vlTOPp->y >> 0x17U))) 
                       - (IData)(0x7eU));
            } else {
                vlTOPp->simdive_original_fp32_wrapper__DOT__fraction 
                    = (0x7fffffU & (IData)((vlTOPp->simdive_original_fp32_wrapper__DOT__magnitude 
                                            >> 0x17U)));
                vlTOPp->simdive_original_fp32_wrapper__DOT__exponent 
                    = (((0xffU & (vlTOPp->x >> 0x17U)) 
                        + (0xffU & (vlTOPp->y >> 0x17U))) 
                       - (IData)(0x7fU));
            }
        }
        vlTOPp->result = (VL_GTES_III(1,32,32, 0U, vlTOPp->simdive_original_fp32_wrapper__DOT__exponent)
                           ? 0U : (VL_LTES_III(1,32,32, 0xffU, vlTOPp->simdive_original_fp32_wrapper__DOT__exponent)
                                    ? (0x7f800000U 
                                       | (0x80000000U 
                                          & (vlTOPp->x 
                                             ^ vlTOPp->y)))
                                    : ((0x80000000U 
                                        & (vlTOPp->x 
                                           ^ vlTOPp->y)) 
                                       | ((0x7f800000U 
                                           & (vlTOPp->simdive_original_fp32_wrapper__DOT__exponent 
                                              << 0x17U)) 
                                          | vlTOPp->simdive_original_fp32_wrapper__DOT__fraction))));
    } else {
        vlTOPp->result = (((0U == vlTOPp->x) | (0U 
                                                == vlTOPp->y))
                           ? 0U : 0x7fc00000U);
    }
}

void Vsimdive_original_fp32_wrapper::_eval(Vsimdive_original_fp32_wrapper__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vsimdive_original_fp32_wrapper::_eval\n"); );
    Vsimdive_original_fp32_wrapper* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->_combo__TOP__1(vlSymsp);
}

void Vsimdive_original_fp32_wrapper::_eval_initial(Vsimdive_original_fp32_wrapper__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vsimdive_original_fp32_wrapper::_eval_initial\n"); );
    Vsimdive_original_fp32_wrapper* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
}

void Vsimdive_original_fp32_wrapper::final() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vsimdive_original_fp32_wrapper::final\n"); );
    // Variables
    Vsimdive_original_fp32_wrapper__Syms* __restrict vlSymsp = this->__VlSymsp;
    Vsimdive_original_fp32_wrapper* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
}

void Vsimdive_original_fp32_wrapper::_eval_settle(Vsimdive_original_fp32_wrapper__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vsimdive_original_fp32_wrapper::_eval_settle\n"); );
    Vsimdive_original_fp32_wrapper* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->_combo__TOP__1(vlSymsp);
}

VL_INLINE_OPT QData Vsimdive_original_fp32_wrapper::_change_request(Vsimdive_original_fp32_wrapper__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vsimdive_original_fp32_wrapper::_change_request\n"); );
    Vsimdive_original_fp32_wrapper* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    // Change detection
    QData __req = false;  // Logically a bool
    return __req;
}

#ifdef VL_DEBUG
void Vsimdive_original_fp32_wrapper::_eval_debug_assertions() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vsimdive_original_fp32_wrapper::_eval_debug_assertions\n"); );
    // Body
    if (VL_UNLIKELY((divide_mode & 0xfeU))) {
        Verilated::overWidthError("divide_mode");}
}
#endif  // VL_DEBUG

void Vsimdive_original_fp32_wrapper::_ctor_var_reset() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vsimdive_original_fp32_wrapper::_ctor_var_reset\n"); );
    // Body
    x = VL_RAND_RESET_I(32);
    y = VL_RAND_RESET_I(32);
    divide_mode = VL_RAND_RESET_I(1);
    result = VL_RAND_RESET_I(32);
    simdive_original_fp32_wrapper__DOT__core_x = VL_RAND_RESET_I(32);
    simdive_original_fp32_wrapper__DOT__core_result = VL_RAND_RESET_Q(64);
    simdive_original_fp32_wrapper__DOT__magnitude = VL_RAND_RESET_Q(64);
    simdive_original_fp32_wrapper__DOT__fraction = VL_RAND_RESET_I(23);
    simdive_original_fp32_wrapper__DOT__exponent = VL_RAND_RESET_I(32);
    simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__ka = VL_RAND_RESET_I(5);
    simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__kb = VL_RAND_RESET_I(5);
    simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_a = VL_RAND_RESET_I(32);
    simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__fraction_b = VL_RAND_RESET_I(32);
    simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__correction_mul_div = VL_RAND_RESET_I(32);
    simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__adder_result1 = VL_RAND_RESET_I(9);
    simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__adder_result2 = VL_RAND_RESET_I(9);
    simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__adder_result3 = VL_RAND_RESET_I(9);
    simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__adder_result4 = VL_RAND_RESET_I(9);
    simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__adder_result5 = VL_RAND_RESET_I(9);
    simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__adder_result6 = VL_RAND_RESET_I(9);
    simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__adder_result7 = VL_RAND_RESET_I(9);
    simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__adder_result8 = VL_RAND_RESET_I(9);
    simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__temp_result = VL_RAND_RESET_I(32);
    simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__func_4_bit_add = VL_RAND_RESET_I(4);
    simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT____Vcellinp__twos_complement_inst__in = VL_RAND_RESET_I(32);
    simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__temp_0_8_bit = VL_RAND_RESET_I(3);
    simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__temp_1_8_bit = VL_RAND_RESET_I(3);
    simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__temp_2_8_bit = VL_RAND_RESET_I(3);
    simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__temp_3_8_bit = VL_RAND_RESET_I(3);
    simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__temp_0_16_bit = VL_RAND_RESET_I(4);
    simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__temp_1_16_bit = VL_RAND_RESET_I(4);
    simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__temp_0_32_bit = VL_RAND_RESET_I(5);
    simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__temp_0_8_bit = VL_RAND_RESET_I(3);
    simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__temp_1_8_bit = VL_RAND_RESET_I(3);
    simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__temp_2_8_bit = VL_RAND_RESET_I(3);
    simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__temp_3_8_bit = VL_RAND_RESET_I(3);
    simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__temp_0_16_bit = VL_RAND_RESET_I(4);
    simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__temp_1_16_bit = VL_RAND_RESET_I(4);
    simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__temp_0_32_bit = VL_RAND_RESET_I(5);
    simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_shift_frac_a__DOT__temp = VL_RAND_RESET_Q(64);
    simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_shift_frac_b__DOT__temp = VL_RAND_RESET_Q(64);
    simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_upper = VL_RAND_RESET_I(16);
    simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_upper = VL_RAND_RESET_I(16);
    simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_mul_lower = VL_RAND_RESET_I(16);
    simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_16_bit_div_lower = VL_RAND_RESET_I(16);
    simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_0 = VL_RAND_RESET_I(8);
    simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_1 = VL_RAND_RESET_I(8);
    simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_2 = VL_RAND_RESET_I(8);
    simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_div_3 = VL_RAND_RESET_I(8);
    simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_0 = VL_RAND_RESET_I(8);
    simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_1 = VL_RAND_RESET_I(8);
    simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_2 = VL_RAND_RESET_I(8);
    simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_cofficient__DOT__temp_8_bit_mul_3 = VL_RAND_RESET_I(8);
    VL_RAND_RESET_W(96, simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__div_mul__DOT__shift_reg);
    VL_RAND_RESET_W(96, simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__div_mul__DOT__shift_reg_temp);
    __Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__0__Vfuncout = VL_RAND_RESET_I(3);
    __Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__0__a_var = VL_RAND_RESET_I(8);
    __Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__1__Vfuncout = VL_RAND_RESET_I(3);
    __Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__1__a_var = VL_RAND_RESET_I(8);
    __Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__2__Vfuncout = VL_RAND_RESET_I(3);
    __Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__2__a_var = VL_RAND_RESET_I(8);
    __Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__3__Vfuncout = VL_RAND_RESET_I(3);
    __Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_upper_half__DOT__lod_pos_8_bit__3__a_var = VL_RAND_RESET_I(8);
    __Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__4__Vfuncout = VL_RAND_RESET_I(3);
    __Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__4__a_var = VL_RAND_RESET_I(8);
    __Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__5__Vfuncout = VL_RAND_RESET_I(3);
    __Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__5__a_var = VL_RAND_RESET_I(8);
    __Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__6__Vfuncout = VL_RAND_RESET_I(3);
    __Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__6__a_var = VL_RAND_RESET_I(8);
    __Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__7__Vfuncout = VL_RAND_RESET_I(3);
    __Vfunc_simdive_original_fp32_wrapper__DOT__simdive_original_core__DOT__inst_loda_lower_half__DOT__lod_pos_8_bit__7__a_var = VL_RAND_RESET_I(8);
}
