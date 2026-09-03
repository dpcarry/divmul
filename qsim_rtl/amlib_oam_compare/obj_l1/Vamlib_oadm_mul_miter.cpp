// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vamlib_oadm_mul_miter.h for the primary calling header

#include "Vamlib_oadm_mul_miter.h"
#include "Vamlib_oadm_mul_miter__Syms.h"

//==========

VL_CTOR_IMP(Vamlib_oadm_mul_miter) {
    Vamlib_oadm_mul_miter__Syms* __restrict vlSymsp = __VlSymsp = new Vamlib_oadm_mul_miter__Syms(this, name());
    Vamlib_oadm_mul_miter* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Reset internal values
    
    // Reset structure values
    _ctor_var_reset();
}

void Vamlib_oadm_mul_miter::__Vconfigure(Vamlib_oadm_mul_miter__Syms* vlSymsp, bool first) {
    if (0 && first) {}  // Prevent unused
    this->__VlSymsp = vlSymsp;
}

Vamlib_oadm_mul_miter::~Vamlib_oadm_mul_miter() {
    delete __VlSymsp; __VlSymsp=NULL;
}

void Vamlib_oadm_mul_miter::eval() {
    VL_DEBUG_IF(VL_DBG_MSGF("+++++TOP Evaluate Vamlib_oadm_mul_miter::eval\n"); );
    Vamlib_oadm_mul_miter__Syms* __restrict vlSymsp = this->__VlSymsp;  // Setup global symbol table
    Vamlib_oadm_mul_miter* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
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
            VL_FATAL_MT("research/qsim_rtl/amlib_oam_compare/amlib_oadm_mul_miter.v", 1, "",
                "Verilated model didn't converge\n"
                "- See DIDNOTCONVERGE in the Verilator manual");
        } else {
            __Vchange = _change_request(vlSymsp);
        }
    } while (VL_UNLIKELY(__Vchange));
}

void Vamlib_oadm_mul_miter::_eval_initial_loop(Vamlib_oadm_mul_miter__Syms* __restrict vlSymsp) {
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
            VL_FATAL_MT("research/qsim_rtl/amlib_oam_compare/amlib_oadm_mul_miter.v", 1, "",
                "Verilated model didn't DC converge\n"
                "- See DIDNOTCONVERGE in the Verilator manual");
        } else {
            __Vchange = _change_request(vlSymsp);
        }
    } while (VL_UNLIKELY(__Vchange));
}

void Vamlib_oadm_mul_miter::_settle__TOP__1(Vamlib_oadm_mul_miter__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vamlib_oadm_mul_miter::_settle__TOP__1\n"); );
    Vamlib_oadm_mul_miter* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__CG__Const = 9U;
    vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__sign_input 
        = (1U & ((vlTOPp->x ^ vlTOPp->y) >> 0x1fU));
    vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__fixed_centered_plane__DOT__plane__DOT__x_residual_product 
        = (0xfffffffU & VL_MULS_III(28,28,28, (0xfffffffU 
                                               & VL_EXTENDS_II(28,22, 
                                                               ((0x200000U 
                                                                 & ((~ 
                                                                     (vlTOPp->x 
                                                                      >> 0x15U)) 
                                                                    << 0x15U)) 
                                                                | (0x1fffffU 
                                                                   & vlTOPp->x)))), 
                                    (0xfffffffU & VL_EXTENDS_II(28,6, 
                                                                (0x1fU 
                                                                 & ((IData)(0x14U) 
                                                                    + 
                                                                    (8U 
                                                                     & (vlTOPp->y 
                                                                        >> 0x13U))))))));
    vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__fixed_centered_plane__DOT__plane__DOT__y_residual_product 
        = (0xfffffffU & VL_MULS_III(28,28,28, (0xfffffffU 
                                               & VL_EXTENDS_II(28,22, 
                                                               ((0x200000U 
                                                                 & ((~ 
                                                                     (vlTOPp->y 
                                                                      >> 0x15U)) 
                                                                    << 0x15U)) 
                                                                | (0x1fffffU 
                                                                   & vlTOPp->y)))), 
                                    (0xfffffffU & VL_EXTENDS_II(28,6, 
                                                                (0x1fU 
                                                                 & ((IData)(0x14U) 
                                                                    + 
                                                                    (8U 
                                                                     & (vlTOPp->x 
                                                                        >> 0x13U))))))));
    vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__fixed_centered_plane__DOT__plane__DOT__x_rounding_error 
        = (1U & ((((((~ (vlTOPp->y >> 0x16U)) & (~ 
                                                 (vlTOPp->x 
                                                  >> 1U))) 
                    | ((vlTOPp->y >> 0x16U) & (vlTOPp->x 
                                               >> 1U))) 
                   | ((((((~ (vlTOPp->y >> 0x16U)) 
                          & (~ (vlTOPp->y >> 0x15U))) 
                         & (~ (vlTOPp->y >> 0x14U))) 
                        & (~ (vlTOPp->x >> 3U))) & 
                       (~ (vlTOPp->x >> 2U))) & (~ 
                                                 (vlTOPp->x 
                                                  >> 1U)))) 
                  | ((((((vlTOPp->y >> 0x16U) & (vlTOPp->y 
                                                 >> 0x15U)) 
                        & (vlTOPp->y >> 0x14U)) & (vlTOPp->x 
                                                   >> 3U)) 
                      & (vlTOPp->x >> 2U)) & (vlTOPp->x 
                                              >> 1U))) 
                 & vlTOPp->x));
    vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__fixed_centered_plane__DOT__plane__DOT__y_side_x_error 
        = (1U & ((((((~ (vlTOPp->x >> 0x16U)) & (~ 
                                                 (vlTOPp->y 
                                                  >> 1U))) 
                    | ((vlTOPp->x >> 0x16U) & (vlTOPp->y 
                                               >> 1U))) 
                   | ((((((~ (vlTOPp->x >> 0x16U)) 
                          & (~ (vlTOPp->x >> 0x15U))) 
                         & (~ (vlTOPp->x >> 0x14U))) 
                        & (~ (vlTOPp->y >> 3U))) & 
                       (~ (vlTOPp->y >> 2U))) & (~ 
                                                 (vlTOPp->y 
                                                  >> 1U)))) 
                  | ((((((vlTOPp->x >> 0x16U) & (vlTOPp->x 
                                                 >> 0x15U)) 
                        & (vlTOPp->x >> 0x14U)) & (vlTOPp->y 
                                                   >> 3U)) 
                      & (vlTOPp->y >> 2U)) & (vlTOPp->y 
                                              >> 1U))) 
                 & vlTOPp->y));
    vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__x_inf 
        = ((0xffU == (0xffU & (vlTOPp->x >> 0x17U))) 
           & (0U == (0x7fffffU & vlTOPp->x)));
    vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__y_inf 
        = ((0xffU == (0xffU & (vlTOPp->y >> 0x17U))) 
           & (0U == (0x7fffffU & vlTOPp->y)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp2 
        = (0xffffffU & ((~ (0xfffffeU & (vlTOPp->x 
                                         << 1U))) ^ 
                        (0xfffffeU & (vlTOPp->y << 1U))));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1 
        = ((0xfffffeU & (vlTOPp->x << 1U)) ^ (0xfffffeU 
                                              & (vlTOPp->y 
                                                 << 1U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In 
        = (0x3fffffU & ((0x400000U & vlTOPp->y) ? vlTOPp->x
                         : (~ vlTOPp->x)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPX__In 
        = ((0x400000U & (((vlTOPp->x >> 0x16U) ^ ~ 
                          (vlTOPp->y >> 0x16U)) << 0x16U)) 
           | (0x3fffffU & ((0x400000U & vlTOPp->x) ? vlTOPp->y
                            : (~ vlTOPp->y))));
    vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__plane_full 
        = (0x1fffffffU & ((((0x1ff8000U & (((IData)(0x190U) 
                                            + ((((IData)(0x14U) 
                                                 * 
                                                 (0xfU 
                                                  & ((1U 
                                                      & (vlTOPp->x 
                                                         >> 0x16U)) 
                                                     + 
                                                     (1U 
                                                      & (vlTOPp->y 
                                                         >> 0x16U))))) 
                                                << 3U) 
                                               + (0xfc0U 
                                                  & (((1U 
                                                       & (vlTOPp->x 
                                                          >> 0x16U)) 
                                                      * 
                                                      (1U 
                                                       & (vlTOPp->y 
                                                          >> 0x16U))) 
                                                     << 6U)))) 
                                           << 0xfU)) 
                            + VL_SHIFTRS_III(29,29,32, 
                                             ((0x10000000U 
                                               & (vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__fixed_centered_plane__DOT__plane__DOT__x_residual_product 
                                                  << 1U)) 
                                              | vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__fixed_centered_plane__DOT__plane__DOT__x_residual_product), 4U)) 
                           + VL_SHIFTRS_III(29,29,32, 
                                            ((0x10000000U 
                                              & (vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__fixed_centered_plane__DOT__plane__DOT__y_residual_product 
                                                 << 1U)) 
                                             | vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__fixed_centered_plane__DOT__plane__DOT__y_residual_product), 4U)) 
                          - (7U & ((IData)(vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__fixed_centered_plane__DOT__plane__DOT__x_rounding_error) 
                                   + (IData)(vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__fixed_centered_plane__DOT__plane__DOT__y_side_x_error)))));
    vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__invalid_input 
        = (((0xffU == (0xffU & (vlTOPp->x >> 0x17U))) 
            & (0U != (0x7fffffU & vlTOPp->x))) | ((0xffU 
                                                   == 
                                                   (0xffU 
                                                    & (vlTOPp->y 
                                                       >> 0x17U))) 
                                                  & (0U 
                                                     != 
                                                     (0x7fffffU 
                                                      & vlTOPp->y))));
    vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__invalid_input 
        = (((IData)(vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__invalid_input) 
            | ((0U == (0xffU & (vlTOPp->x >> 0x17U))) 
               & (IData)(vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__y_inf))) 
           | ((IData)(vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__x_inf) 
              & (0U == (0xffU & (vlTOPp->y >> 0x17U)))));
    vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__infinity_input 
        = ((~ (IData)(vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__invalid_input)) 
           & ((IData)(vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__x_inf) 
              | (IData)(vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__y_inf)));
    vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__zero_input 
        = (((~ (IData)(vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__invalid_input)) 
            & (~ (IData)(vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__infinity_input))) 
           & ((0U == (0xffU & (vlTOPp->x >> 0x17U))) 
              | (0U == (0xffU & (vlTOPp->y >> 0x17U)))));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
        = ((0xfffffeU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C) 
           | (1U & (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1 
                    & vlTOPp->x)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
        = ((0xfffffdU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C) 
           | (2U & (((2U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1)
                      ? (0x3fffffU & (vlTOPp->x >> 1U))
                      : vlTOPp->x) << 1U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
        = ((0xfffffbU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C) 
           | (4U & (((4U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1)
                      ? (0x1fffffU & (vlTOPp->x >> 2U))
                      : (vlTOPp->x >> 1U)) << 2U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
        = ((0xfffff7U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C) 
           | (8U & (((8U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1)
                      ? (0xfffffU & (vlTOPp->x >> 3U))
                      : (vlTOPp->x >> 2U)) << 3U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
        = ((0xffffefU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C) 
           | (0x10U & (((0x10U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1)
                         ? (0x7ffffU & (vlTOPp->x >> 4U))
                         : (vlTOPp->x >> 3U)) << 4U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
        = ((0xffffdfU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C) 
           | (0x20U & (((0x20U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1)
                         ? (0x3ffffU & (vlTOPp->x >> 5U))
                         : (vlTOPp->x >> 4U)) << 5U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
        = ((0xffffbfU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C) 
           | (0x40U & (((0x40U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1)
                         ? (0x1ffffU & (vlTOPp->x >> 6U))
                         : (vlTOPp->x >> 5U)) << 6U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
        = ((0xffff7fU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C) 
           | (0x80U & (((0x80U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1)
                         ? (0xffffU & (vlTOPp->x >> 7U))
                         : (vlTOPp->x >> 6U)) << 7U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
        = ((0xfffeffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C) 
           | (0x100U & (((0x100U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1)
                          ? (0x7fffU & (vlTOPp->x >> 8U))
                          : (vlTOPp->x >> 7U)) << 8U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
        = ((0xfffdffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C) 
           | (0x200U & (((0x200U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1)
                          ? (0x3fffU & (vlTOPp->x >> 9U))
                          : (vlTOPp->x >> 8U)) << 9U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
        = ((0xfffbffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C) 
           | (0x400U & (((0x400U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1)
                          ? (0x1fffU & (vlTOPp->x >> 0xaU))
                          : (vlTOPp->x >> 9U)) << 0xaU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
        = ((0xfff7ffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C) 
           | (0x800U & (((0x800U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1)
                          ? (0xfffU & (vlTOPp->x >> 0xbU))
                          : (vlTOPp->x >> 0xaU)) << 0xbU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
        = ((0xffefffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C) 
           | (0x1000U & (((0x1000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1)
                           ? (0x7ffU & (vlTOPp->x >> 0xcU))
                           : (vlTOPp->x >> 0xbU)) << 0xcU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
        = ((0xffdfffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C) 
           | (0x2000U & (((0x2000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1)
                           ? (0x3ffU & (vlTOPp->x >> 0xdU))
                           : (vlTOPp->x >> 0xcU)) << 0xdU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
        = ((0xffbfffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C) 
           | (0x4000U & (((0x4000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1)
                           ? (0x1ffU & (vlTOPp->x >> 0xeU))
                           : (vlTOPp->x >> 0xdU)) << 0xeU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
        = ((0xff7fffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C) 
           | (0x8000U & (((0x8000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1)
                           ? (0xffU & (vlTOPp->x >> 0xfU))
                           : (vlTOPp->x >> 0xeU)) << 0xfU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
        = ((0xfeffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C) 
           | (0x10000U & (((0x10000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1)
                            ? (0x7fU & (vlTOPp->x >> 0x10U))
                            : (vlTOPp->x >> 0xfU)) 
                          << 0x10U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
        = ((0xfdffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C) 
           | (0x20000U & (((0x20000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1)
                            ? (0x3fU & (vlTOPp->x >> 0x11U))
                            : (vlTOPp->x >> 0x10U)) 
                          << 0x11U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
        = ((0xfbffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C) 
           | (0x40000U & (((0x40000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1)
                            ? (0x1fU & (vlTOPp->x >> 0x12U))
                            : (vlTOPp->x >> 0x11U)) 
                          << 0x12U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
        = ((0xf7ffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C) 
           | (0x80000U & (((0x80000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1)
                            ? (0xfU & (vlTOPp->x >> 0x13U))
                            : (vlTOPp->x >> 0x12U)) 
                          << 0x13U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
        = ((0xefffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C) 
           | (0x100000U & (((0x100000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1)
                             ? (7U & (vlTOPp->x >> 0x14U))
                             : (vlTOPp->x >> 0x13U)) 
                           << 0x14U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
        = ((0xdfffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C) 
           | (0x200000U & (((0x200000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1)
                             ? (3U & (vlTOPp->x >> 0x15U))
                             : (vlTOPp->x >> 0x14U)) 
                           << 0x15U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
        = ((0xbfffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C) 
           | (0x400000U & (((0x400000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1)
                             ? (1U & (vlTOPp->x >> 0x16U))
                             : (vlTOPp->x >> 0x15U)) 
                           << 0x16U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
        = ((0x7fffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C) 
           | (((0x800000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1)
                ? 0U : (1U & (vlTOPp->x >> 0x16U))) 
              << 0x17U));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
        = ((0xfffffeU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S) 
           | (1U & ((1U & vlTOPp->x) ? vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp2
                     : vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
        = ((0xfffffdU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S) 
           | (2U & (((2U & vlTOPp->x) ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp2 
                                         >> 1U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1 
                                                   >> 1U)) 
                    << 1U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
        = ((0xfffffbU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S) 
           | (4U & (((4U & vlTOPp->x) ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp2 
                                         >> 2U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1 
                                                   >> 2U)) 
                    << 2U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
        = ((0xfffff7U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S) 
           | (8U & (((8U & vlTOPp->x) ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp2 
                                         >> 3U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1 
                                                   >> 3U)) 
                    << 3U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
        = ((0xffffefU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S) 
           | (0x10U & (((0x10U & vlTOPp->x) ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp2 
                                               >> 4U)
                         : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1 
                            >> 4U)) << 4U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
        = ((0xffffdfU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S) 
           | (0x20U & (((0x20U & vlTOPp->x) ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp2 
                                               >> 5U)
                         : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1 
                            >> 5U)) << 5U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
        = ((0xffffbfU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S) 
           | (0x40U & (((0x40U & vlTOPp->x) ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp2 
                                               >> 6U)
                         : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1 
                            >> 6U)) << 6U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
        = ((0xffff7fU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S) 
           | (0x80U & (((0x80U & vlTOPp->x) ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp2 
                                               >> 7U)
                         : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1 
                            >> 7U)) << 7U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
        = ((0xfffeffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S) 
           | (0x100U & (((0x100U & vlTOPp->x) ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp2 
                                                 >> 8U)
                          : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1 
                             >> 8U)) << 8U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
        = ((0xfffdffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S) 
           | (0x200U & (((0x200U & vlTOPp->x) ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp2 
                                                 >> 9U)
                          : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1 
                             >> 9U)) << 9U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
        = ((0xfffbffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S) 
           | (0x400U & (((0x400U & vlTOPp->x) ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp2 
                                                 >> 0xaU)
                          : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1 
                             >> 0xaU)) << 0xaU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
        = ((0xfff7ffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S) 
           | (0x800U & (((0x800U & vlTOPp->x) ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp2 
                                                 >> 0xbU)
                          : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1 
                             >> 0xbU)) << 0xbU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
        = ((0xffefffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S) 
           | (0x1000U & (((0x1000U & vlTOPp->x) ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp2 
                                                   >> 0xcU)
                           : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1 
                              >> 0xcU)) << 0xcU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
        = ((0xffdfffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S) 
           | (0x2000U & (((0x2000U & vlTOPp->x) ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp2 
                                                   >> 0xdU)
                           : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1 
                              >> 0xdU)) << 0xdU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
        = ((0xffbfffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S) 
           | (0x4000U & (((0x4000U & vlTOPp->x) ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp2 
                                                   >> 0xeU)
                           : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1 
                              >> 0xeU)) << 0xeU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
        = ((0xff7fffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S) 
           | (0x8000U & (((0x8000U & vlTOPp->x) ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp2 
                                                   >> 0xfU)
                           : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1 
                              >> 0xfU)) << 0xfU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
        = ((0xfeffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S) 
           | (0x10000U & (((0x10000U & vlTOPp->x) ? 
                           (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp2 
                            >> 0x10U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1 
                                         >> 0x10U)) 
                          << 0x10U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
        = ((0xfdffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S) 
           | (0x20000U & (((0x20000U & vlTOPp->x) ? 
                           (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp2 
                            >> 0x11U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1 
                                         >> 0x11U)) 
                          << 0x11U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
        = ((0xfbffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S) 
           | (0x40000U & (((0x40000U & vlTOPp->x) ? 
                           (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp2 
                            >> 0x12U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1 
                                         >> 0x12U)) 
                          << 0x12U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
        = ((0xf7ffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S) 
           | (0x80000U & (((0x80000U & vlTOPp->x) ? 
                           (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp2 
                            >> 0x13U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1 
                                         >> 0x13U)) 
                          << 0x13U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
        = ((0xefffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S) 
           | (0x100000U & (((0x100000U & vlTOPp->x)
                             ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp2 
                                >> 0x14U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1 
                                             >> 0x14U)) 
                           << 0x14U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
        = ((0xdfffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S) 
           | (0x200000U & (((0x200000U & vlTOPp->x)
                             ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp2 
                                >> 0x15U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1 
                                             >> 0x15U)) 
                           << 0x15U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
        = ((0xbfffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S) 
           | (0x400000U & (((0x400000U & vlTOPp->x)
                             ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp2 
                                >> 0x16U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1 
                                             >> 0x16U)) 
                           << 0x16U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
        = ((0x7fffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S) 
           | (0x800000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp2 
        = (0xffffffU & ((~ (0xfffffeU & (vlTOPp->y 
                                         << 1U))) ^ vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPX__In));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1 
        = ((0xfffffeU & (vlTOPp->y << 1U)) ^ vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPX__In);
    vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__shared_value 
        = ((0x18000000U & (VL_NEGATE_I((IData)((1U 
                                                & (vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__plane_full 
                                                   >> 0x1aU)))) 
                           << 0x1bU)) | (0x7ffffffU 
                                         & vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__plane_full));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
        = ((0xfffffeU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S) 
           | (1U & ((1U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In)
                     ? vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp2
                     : vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
        = ((0xfffffdU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S) 
           | (2U & (((2U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In)
                      ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp2 
                         >> 1U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1 
                                   >> 1U)) << 1U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
        = ((0xfffffbU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S) 
           | (4U & (((4U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In)
                      ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp2 
                         >> 2U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1 
                                   >> 2U)) << 2U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
        = ((0xfffff7U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S) 
           | (8U & (((8U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In)
                      ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp2 
                         >> 3U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1 
                                   >> 3U)) << 3U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
        = ((0xffffefU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S) 
           | (0x10U & (((0x10U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In)
                         ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp2 
                            >> 4U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1 
                                      >> 4U)) << 4U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
        = ((0xffffdfU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S) 
           | (0x20U & (((0x20U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In)
                         ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp2 
                            >> 5U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1 
                                      >> 5U)) << 5U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
        = ((0xffffbfU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S) 
           | (0x40U & (((0x40U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In)
                         ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp2 
                            >> 6U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1 
                                      >> 6U)) << 6U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
        = ((0xffff7fU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S) 
           | (0x80U & (((0x80U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In)
                         ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp2 
                            >> 7U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1 
                                      >> 7U)) << 7U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
        = ((0xfffeffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S) 
           | (0x100U & (((0x100U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In)
                          ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp2 
                             >> 8U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1 
                                       >> 8U)) << 8U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
        = ((0xfffdffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S) 
           | (0x200U & (((0x200U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In)
                          ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp2 
                             >> 9U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1 
                                       >> 9U)) << 9U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
        = ((0xfffbffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S) 
           | (0x400U & (((0x400U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In)
                          ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp2 
                             >> 0xaU) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1 
                                         >> 0xaU)) 
                        << 0xaU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
        = ((0xfff7ffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S) 
           | (0x800U & (((0x800U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In)
                          ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp2 
                             >> 0xbU) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1 
                                         >> 0xbU)) 
                        << 0xbU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
        = ((0xffefffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S) 
           | (0x1000U & (((0x1000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In)
                           ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp2 
                              >> 0xcU) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1 
                                          >> 0xcU)) 
                         << 0xcU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
        = ((0xffdfffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S) 
           | (0x2000U & (((0x2000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In)
                           ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp2 
                              >> 0xdU) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1 
                                          >> 0xdU)) 
                         << 0xdU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
        = ((0xffbfffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S) 
           | (0x4000U & (((0x4000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In)
                           ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp2 
                              >> 0xeU) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1 
                                          >> 0xeU)) 
                         << 0xeU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
        = ((0xff7fffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S) 
           | (0x8000U & (((0x8000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In)
                           ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp2 
                              >> 0xfU) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1 
                                          >> 0xfU)) 
                         << 0xfU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
        = ((0xfeffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S) 
           | (0x10000U & (((0x10000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In)
                            ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp2 
                               >> 0x10U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1 
                                            >> 0x10U)) 
                          << 0x10U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
        = ((0xfdffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S) 
           | (0x20000U & (((0x20000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In)
                            ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp2 
                               >> 0x11U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1 
                                            >> 0x11U)) 
                          << 0x11U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
        = ((0xfbffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S) 
           | (0x40000U & (((0x40000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In)
                            ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp2 
                               >> 0x12U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1 
                                            >> 0x12U)) 
                          << 0x12U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
        = ((0xf7ffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S) 
           | (0x80000U & (((0x80000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In)
                            ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp2 
                               >> 0x13U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1 
                                            >> 0x13U)) 
                          << 0x13U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
        = ((0xefffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S) 
           | (0x100000U & (((0x100000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In)
                             ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp2 
                                >> 0x14U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1 
                                             >> 0x14U)) 
                           << 0x14U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
        = ((0xdfffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S) 
           | (0x200000U & (((0x200000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In)
                             ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp2 
                                >> 0x15U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1 
                                             >> 0x15U)) 
                           << 0x15U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
        = ((0xbfffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S) 
           | (0x400000U & (((0x400000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In)
                             ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp2 
                                >> 0x16U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1 
                                             >> 0x16U)) 
                           << 0x16U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
        = ((0x7fffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S) 
           | (0x800000U & (((0x800000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In)
                             ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp2 
                                >> 0x17U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1 
                                             >> 0x17U)) 
                           << 0x17U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C 
        = ((0xfffffeU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C) 
           | (1U & (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1 
                    & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C 
        = ((0xfffffdU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C) 
           | (2U & (((2U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1)
                      ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In 
                         >> 1U) : vlTOPp->y) << 1U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C 
        = ((0xfffffbU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C) 
           | (4U & (((4U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1)
                      ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In 
                         >> 2U) : (vlTOPp->y >> 1U)) 
                    << 2U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C 
        = ((0xfffff7U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C) 
           | (8U & (((8U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1)
                      ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In 
                         >> 3U) : (vlTOPp->y >> 2U)) 
                    << 3U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C 
        = ((0xffffefU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C) 
           | (0x10U & (((0x10U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1)
                         ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In 
                            >> 4U) : (vlTOPp->y >> 3U)) 
                       << 4U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C 
        = ((0xffffdfU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C) 
           | (0x20U & (((0x20U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1)
                         ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In 
                            >> 5U) : (vlTOPp->y >> 4U)) 
                       << 5U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C 
        = ((0xffffbfU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C) 
           | (0x40U & (((0x40U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1)
                         ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In 
                            >> 6U) : (vlTOPp->y >> 5U)) 
                       << 6U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C 
        = ((0xffff7fU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C) 
           | (0x80U & (((0x80U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1)
                         ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In 
                            >> 7U) : (vlTOPp->y >> 6U)) 
                       << 7U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C 
        = ((0xfffeffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C) 
           | (0x100U & (((0x100U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1)
                          ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In 
                             >> 8U) : (vlTOPp->y >> 7U)) 
                        << 8U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C 
        = ((0xfffdffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C) 
           | (0x200U & (((0x200U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1)
                          ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In 
                             >> 9U) : (vlTOPp->y >> 8U)) 
                        << 9U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C 
        = ((0xfffbffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C) 
           | (0x400U & (((0x400U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1)
                          ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In 
                             >> 0xaU) : (vlTOPp->y 
                                         >> 9U)) << 0xaU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C 
        = ((0xfff7ffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C) 
           | (0x800U & (((0x800U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1)
                          ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In 
                             >> 0xbU) : (vlTOPp->y 
                                         >> 0xaU)) 
                        << 0xbU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C 
        = ((0xffefffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C) 
           | (0x1000U & (((0x1000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1)
                           ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In 
                              >> 0xcU) : (vlTOPp->y 
                                          >> 0xbU)) 
                         << 0xcU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C 
        = ((0xffdfffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C) 
           | (0x2000U & (((0x2000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1)
                           ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In 
                              >> 0xdU) : (vlTOPp->y 
                                          >> 0xcU)) 
                         << 0xdU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C 
        = ((0xffbfffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C) 
           | (0x4000U & (((0x4000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1)
                           ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In 
                              >> 0xeU) : (vlTOPp->y 
                                          >> 0xdU)) 
                         << 0xeU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C 
        = ((0xff7fffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C) 
           | (0x8000U & (((0x8000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1)
                           ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In 
                              >> 0xfU) : (vlTOPp->y 
                                          >> 0xeU)) 
                         << 0xfU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C 
        = ((0xfeffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C) 
           | (0x10000U & (((0x10000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1)
                            ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In 
                               >> 0x10U) : (vlTOPp->y 
                                            >> 0xfU)) 
                          << 0x10U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C 
        = ((0xfdffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C) 
           | (0x20000U & (((0x20000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1)
                            ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In 
                               >> 0x11U) : (vlTOPp->y 
                                            >> 0x10U)) 
                          << 0x11U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C 
        = ((0xfbffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C) 
           | (0x40000U & (((0x40000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1)
                            ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In 
                               >> 0x12U) : (vlTOPp->y 
                                            >> 0x11U)) 
                          << 0x12U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C 
        = ((0xf7ffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C) 
           | (0x80000U & (((0x80000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1)
                            ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In 
                               >> 0x13U) : (vlTOPp->y 
                                            >> 0x12U)) 
                          << 0x13U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C 
        = ((0xefffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C) 
           | (0x100000U & (((0x100000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1)
                             ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In 
                                >> 0x14U) : (vlTOPp->y 
                                             >> 0x13U)) 
                           << 0x14U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C 
        = ((0xdfffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C) 
           | (0x200000U & (((0x200000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1)
                             ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In 
                                >> 0x15U) : (vlTOPp->y 
                                             >> 0x14U)) 
                           << 0x15U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C 
        = ((0xbfffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C) 
           | (0x400000U & (((0x400000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1)
                             ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In 
                                >> 0x16U) : (vlTOPp->y 
                                             >> 0x15U)) 
                           << 0x16U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C 
        = ((0x7fffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C) 
           | (0x800000U & (((0x800000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1)
                             ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In 
                                >> 0x17U) : (vlTOPp->y 
                                             >> 0x16U)) 
                           << 0x17U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__normalized_value 
        = vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__shared_value;
    vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__result_exponent 
        = (0x3ffU & (((0xffU & (vlTOPp->x >> 0x17U)) 
                      + (0xffU & (vlTOPp->y >> 0x17U))) 
                     - (IData)(0x7fU)));
    if ((0x1000000U & vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__shared_value)) {
        vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__result_exponent 
            = (0x3ffU & ((IData)(1U) + VL_EXTENDS_II(10,10, (IData)(vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__result_exponent))));
        vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__normalized_value 
            = (0x1fffffffU & VL_SHIFTRS_III(29,29,32, vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__shared_value, 1U));
    } else {
        if ((0x800000U & vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__shared_value)) {
            vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__normalized_value 
                = vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__shared_value;
        } else {
            if ((0x400000U & vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__shared_value)) {
                vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__result_exponent 
                    = (0x3ffU & (VL_EXTENDS_II(10,10, (IData)(vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__result_exponent)) 
                                 - (IData)(1U)));
                vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__normalized_value 
                    = (0x1fffffffU & (vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__shared_value 
                                      << 1U));
            } else {
                vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__result_exponent 
                    = (0x3ffU & (VL_EXTENDS_II(10,10, (IData)(vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__result_exponent)) 
                                 - (IData)(2U)));
                vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__normalized_value 
                    = (0x1fffffffU & (vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__shared_value 
                                      << 2U));
            }
        }
    }
    vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__finite_result 
        = (VL_GTES_III(1,32,32, 0U, VL_EXTENDS_II(32,10, (IData)(vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__result_exponent)))
            ? ((IData)(vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__sign_input) 
               << 0x1fU) : (VL_LTES_III(1,32,32, 0xffU, 
                                        VL_EXTENDS_II(32,10, (IData)(vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__result_exponent)))
                             ? (0x7f800000U | ((IData)(vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__sign_input) 
                                               << 0x1fU))
                             : (((IData)(vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__sign_input) 
                                 << 0x1fU) | ((0x7f800000U 
                                               & ((IData)(vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__result_exponent) 
                                                  << 0x17U)) 
                                              | (0x7fffffU 
                                                 & vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__normalized_value)))));
    vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__result_comb 
        = ((IData)(vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__invalid_input)
            ? 0x7fc00000U : ((IData)(vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__infinity_input)
                              ? (0x7f800000U | ((IData)(vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__sign_input) 
                                                << 0x1fU))
                              : ((IData)(vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__zero_input)
                                  ? ((IData)(vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__sign_input) 
                                     << 0x1fU) : vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__finite_result)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp2 
        = (0x1ffffffU & ((~ (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
                             << 1U)) ^ (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C 
                                        << 1U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1 
        = ((vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
            ^ vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C) 
           << 1U);
    vlTOPp->oadm_z = vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__result_comb;
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C 
        = ((0x1fffffeU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C) 
           | (1U & (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1 
                    & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C 
        = ((0x1fffffdU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C) 
           | (2U & (((2U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1)
                      ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
                         >> 1U) : vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S) 
                    << 1U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C 
        = ((0x1fffffbU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C) 
           | (4U & (((4U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1)
                      ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
                         >> 2U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
                                   >> 1U)) << 2U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C 
        = ((0x1fffff7U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C) 
           | (8U & (((8U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1)
                      ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
                         >> 3U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
                                   >> 2U)) << 3U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C 
        = ((0x1ffffefU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C) 
           | (0x10U & (((0x10U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1)
                         ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
                            >> 4U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
                                      >> 3U)) << 4U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C 
        = ((0x1ffffdfU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C) 
           | (0x20U & (((0x20U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1)
                         ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
                            >> 5U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
                                      >> 4U)) << 5U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C 
        = ((0x1ffffbfU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C) 
           | (0x40U & (((0x40U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1)
                         ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
                            >> 6U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
                                      >> 5U)) << 6U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C 
        = ((0x1ffff7fU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C) 
           | (0x80U & (((0x80U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1)
                         ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
                            >> 7U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
                                      >> 6U)) << 7U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C 
        = ((0x1fffeffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C) 
           | (0x100U & (((0x100U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1)
                          ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
                             >> 8U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
                                       >> 7U)) << 8U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C 
        = ((0x1fffdffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C) 
           | (0x200U & (((0x200U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1)
                          ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
                             >> 9U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
                                       >> 8U)) << 9U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C 
        = ((0x1fffbffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C) 
           | (0x400U & (((0x400U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1)
                          ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
                             >> 0xaU) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
                                         >> 9U)) << 0xaU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C 
        = ((0x1fff7ffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C) 
           | (0x800U & (((0x800U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1)
                          ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
                             >> 0xbU) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
                                         >> 0xaU)) 
                        << 0xbU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C 
        = ((0x1ffefffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C) 
           | (0x1000U & (((0x1000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1)
                           ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
                              >> 0xcU) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
                                          >> 0xbU)) 
                         << 0xcU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C 
        = ((0x1ffdfffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C) 
           | (0x2000U & (((0x2000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1)
                           ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
                              >> 0xdU) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
                                          >> 0xcU)) 
                         << 0xdU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C 
        = ((0x1ffbfffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C) 
           | (0x4000U & (((0x4000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1)
                           ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
                              >> 0xeU) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
                                          >> 0xdU)) 
                         << 0xeU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C 
        = ((0x1ff7fffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C) 
           | (0x8000U & (((0x8000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1)
                           ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
                              >> 0xfU) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
                                          >> 0xeU)) 
                         << 0xfU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C 
        = ((0x1feffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C) 
           | (0x10000U & (((0x10000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1)
                            ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
                               >> 0x10U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
                                            >> 0xfU)) 
                          << 0x10U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C 
        = ((0x1fdffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C) 
           | (0x20000U & (((0x20000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1)
                            ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
                               >> 0x11U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
                                            >> 0x10U)) 
                          << 0x11U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C 
        = ((0x1fbffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C) 
           | (0x40000U & (((0x40000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1)
                            ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
                               >> 0x12U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
                                            >> 0x11U)) 
                          << 0x12U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C 
        = ((0x1f7ffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C) 
           | (0x80000U & (((0x80000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1)
                            ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
                               >> 0x13U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
                                            >> 0x12U)) 
                          << 0x13U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C 
        = ((0x1efffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C) 
           | (0x100000U & (((0x100000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1)
                             ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
                                >> 0x14U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
                                             >> 0x13U)) 
                           << 0x14U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C 
        = ((0x1dfffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C) 
           | (0x200000U & (((0x200000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1)
                             ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
                                >> 0x15U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
                                             >> 0x14U)) 
                           << 0x15U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C 
        = ((0x1bfffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C) 
           | (0x400000U & (((0x400000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1)
                             ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
                                >> 0x16U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
                                             >> 0x15U)) 
                           << 0x16U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C 
        = ((0x17fffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C) 
           | (0x800000U & (((0x800000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1)
                             ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
                                >> 0x17U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
                                             >> 0x16U)) 
                           << 0x17U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C 
        = ((0xffffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C) 
           | (0x1000000U & (((0x1000000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1)
                              ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
                                 >> 0x18U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
                                              >> 0x17U)) 
                            << 0x18U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
        = ((0x1fffffeU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S) 
           | (1U & ((1U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S)
                     ? vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp2
                     : vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
        = ((0x1fffffdU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S) 
           | (2U & (((2U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S)
                      ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp2 
                         >> 1U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1 
                                   >> 1U)) << 1U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
        = ((0x1fffffbU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S) 
           | (4U & (((4U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S)
                      ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp2 
                         >> 2U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1 
                                   >> 2U)) << 2U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
        = ((0x1fffff7U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S) 
           | (8U & (((8U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S)
                      ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp2 
                         >> 3U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1 
                                   >> 3U)) << 3U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
        = ((0x1ffffefU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S) 
           | (0x10U & (((0x10U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S)
                         ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp2 
                            >> 4U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1 
                                      >> 4U)) << 4U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
        = ((0x1ffffdfU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S) 
           | (0x20U & (((0x20U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S)
                         ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp2 
                            >> 5U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1 
                                      >> 5U)) << 5U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
        = ((0x1ffffbfU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S) 
           | (0x40U & (((0x40U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S)
                         ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp2 
                            >> 6U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1 
                                      >> 6U)) << 6U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
        = ((0x1ffff7fU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S) 
           | (0x80U & (((0x80U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S)
                         ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp2 
                            >> 7U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1 
                                      >> 7U)) << 7U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
        = ((0x1fffeffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S) 
           | (0x100U & (((0x100U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S)
                          ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp2 
                             >> 8U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1 
                                       >> 8U)) << 8U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
        = ((0x1fffdffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S) 
           | (0x200U & (((0x200U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S)
                          ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp2 
                             >> 9U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1 
                                       >> 9U)) << 9U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
        = ((0x1fffbffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S) 
           | (0x400U & (((0x400U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S)
                          ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp2 
                             >> 0xaU) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1 
                                         >> 0xaU)) 
                        << 0xaU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
        = ((0x1fff7ffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S) 
           | (0x800U & (((0x800U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S)
                          ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp2 
                             >> 0xbU) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1 
                                         >> 0xbU)) 
                        << 0xbU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
        = ((0x1ffefffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S) 
           | (0x1000U & (((0x1000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S)
                           ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp2 
                              >> 0xcU) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1 
                                          >> 0xcU)) 
                         << 0xcU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
        = ((0x1ffdfffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S) 
           | (0x2000U & (((0x2000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S)
                           ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp2 
                              >> 0xdU) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1 
                                          >> 0xdU)) 
                         << 0xdU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
        = ((0x1ffbfffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S) 
           | (0x4000U & (((0x4000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S)
                           ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp2 
                              >> 0xeU) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1 
                                          >> 0xeU)) 
                         << 0xeU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
        = ((0x1ff7fffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S) 
           | (0x8000U & (((0x8000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S)
                           ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp2 
                              >> 0xfU) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1 
                                          >> 0xfU)) 
                         << 0xfU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
        = ((0x1feffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S) 
           | (0x10000U & (((0x10000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S)
                            ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp2 
                               >> 0x10U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1 
                                            >> 0x10U)) 
                          << 0x10U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
        = ((0x1fdffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S) 
           | (0x20000U & (((0x20000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S)
                            ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp2 
                               >> 0x11U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1 
                                            >> 0x11U)) 
                          << 0x11U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
        = ((0x1fbffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S) 
           | (0x40000U & (((0x40000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S)
                            ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp2 
                               >> 0x12U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1 
                                            >> 0x12U)) 
                          << 0x12U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
        = ((0x1f7ffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S) 
           | (0x80000U & (((0x80000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S)
                            ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp2 
                               >> 0x13U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1 
                                            >> 0x13U)) 
                          << 0x13U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
        = ((0x1efffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S) 
           | (0x100000U & (((0x100000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S)
                             ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp2 
                                >> 0x14U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1 
                                             >> 0x14U)) 
                           << 0x14U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
        = ((0x1dfffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S) 
           | (0x200000U & (((0x200000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S)
                             ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp2 
                                >> 0x15U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1 
                                             >> 0x15U)) 
                           << 0x15U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
        = ((0x1bfffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S) 
           | (0x400000U & (((0x400000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S)
                             ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp2 
                                >> 0x16U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1 
                                             >> 0x16U)) 
                           << 0x16U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
        = ((0x17fffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S) 
           | (0x800000U & (((0x800000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S)
                             ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp2 
                                >> 0x17U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1 
                                             >> 0x17U)) 
                           << 0x17U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
        = ((0xffffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S) 
           | (0x1000000U & (((0x1000000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S)
                              ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp2 
                                 >> 0x18U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1 
                                              >> 0x18U)) 
                            << 0x18U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp2 
        = (0x3ffffffU & ((~ vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S) 
                         ^ (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C 
                            << 1U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1 
        = (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
           ^ (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C 
              << 1U));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C 
        = ((0x3fffffeU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C) 
           | (1U & ((~ vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1) 
                    & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C 
        = ((0x3fffffdU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C) 
           | (2U & (((~ (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1 
                         >> 1U)) << 1U) & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C 
        = ((0x3fffffbU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C) 
           | (4U & (((4U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1)
                      ? vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C
                      : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
                         >> 2U)) << 2U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C 
        = ((0x3fffff7U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C) 
           | (8U & (((8U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1)
                      ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
                         >> 1U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
                                   >> 3U)) << 3U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C 
        = ((0x3ffffefU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C) 
           | (0x10U & (((0x10U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1)
                         ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
                            >> 2U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
                                      >> 4U)) << 4U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C 
        = ((0x3ffffdfU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C) 
           | (0x20U & (((0x20U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1)
                         ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
                            >> 3U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
                                      >> 5U)) << 5U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C 
        = ((0x3ffffbfU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C) 
           | (0x40U & (((0x40U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1)
                         ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
                            >> 4U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
                                      >> 6U)) << 6U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C 
        = ((0x3ffff7fU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C) 
           | (0x80U & (((0x80U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1)
                         ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
                            >> 5U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
                                      >> 7U)) << 7U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C 
        = ((0x3fffeffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C) 
           | (0x100U & (((0x100U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1)
                          ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
                             >> 6U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
                                       >> 8U)) << 8U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C 
        = ((0x3fffdffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C) 
           | (0x200U & (((0x200U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1)
                          ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
                             >> 7U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
                                       >> 9U)) << 9U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C 
        = ((0x3fffbffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C) 
           | (0x400U & (((0x400U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1)
                          ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
                             >> 8U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
                                       >> 0xaU)) << 0xaU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C 
        = ((0x3fff7ffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C) 
           | (0x800U & (((0x800U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1)
                          ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
                             >> 9U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
                                       >> 0xbU)) << 0xbU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C 
        = ((0x3ffefffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C) 
           | (0x1000U & (((0x1000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1)
                           ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
                              >> 0xaU) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
                                          >> 0xcU)) 
                         << 0xcU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C 
        = ((0x3ffdfffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C) 
           | (0x2000U & (((0x2000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1)
                           ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
                              >> 0xbU) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
                                          >> 0xdU)) 
                         << 0xdU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C 
        = ((0x3ffbfffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C) 
           | (0x4000U & (((0x4000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1)
                           ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
                              >> 0xcU) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
                                          >> 0xeU)) 
                         << 0xeU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C 
        = ((0x3ff7fffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C) 
           | (0x8000U & (((0x8000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1)
                           ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
                              >> 0xdU) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
                                          >> 0xfU)) 
                         << 0xfU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C 
        = ((0x3feffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C) 
           | (0x10000U & (((0x10000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1)
                            ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
                               >> 0xeU) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
                                           >> 0x10U)) 
                          << 0x10U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C 
        = ((0x3fdffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C) 
           | (0x20000U & (((0x20000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1)
                            ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
                               >> 0xfU) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
                                           >> 0x11U)) 
                          << 0x11U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C 
        = ((0x3fbffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C) 
           | (0x40000U & (((0x40000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1)
                            ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
                               >> 0x10U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
                                            >> 0x12U)) 
                          << 0x12U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C 
        = ((0x3f7ffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C) 
           | (0x80000U & (((0x80000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1)
                            ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
                               >> 0x11U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
                                            >> 0x13U)) 
                          << 0x13U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C 
        = ((0x3efffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C) 
           | (0x100000U & (((0x100000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1)
                             ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
                                >> 0x12U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
                                             >> 0x14U)) 
                           << 0x14U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C 
        = ((0x3dfffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C) 
           | (0x200000U & (((0x200000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1)
                             ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
                                >> 0x13U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
                                             >> 0x15U)) 
                           << 0x15U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C 
        = ((0x3bfffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C) 
           | (0x400000U & (((0x400000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1)
                             ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
                                >> 0x14U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
                                             >> 0x16U)) 
                           << 0x16U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C 
        = ((0x37fffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C) 
           | (0x800000U & (((0x800000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1)
                             ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
                                >> 0x15U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
                                             >> 0x17U)) 
                           << 0x17U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C 
        = ((0x2ffffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C) 
           | (0x1000000U & (((0x1000000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1)
                              ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
                                 >> 0x16U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
                                              >> 0x18U)) 
                            << 0x18U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C 
        = ((0x1ffffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C) 
           | (0x2000000U & (((0x2000000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1)
                              ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
                                 >> 0x17U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
                                              >> 0x19U)) 
                            << 0x19U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S 
        = ((0x3fffffeU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S) 
           | (1U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S 
        = ((0x3fffffdU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S) 
           | (2U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S 
        = ((0x3fffffbU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S) 
           | (4U & (((1U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C)
                      ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp2 
                         >> 2U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1 
                                   >> 2U)) << 2U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S 
        = ((0x3fffff7U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S) 
           | (8U & (((2U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C)
                      ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp2 
                         >> 3U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1 
                                   >> 3U)) << 3U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S 
        = ((0x3ffffefU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S) 
           | (0x10U & (((4U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C)
                         ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp2 
                            >> 4U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1 
                                      >> 4U)) << 4U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S 
        = ((0x3ffffdfU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S) 
           | (0x20U & (((8U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C)
                         ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp2 
                            >> 5U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1 
                                      >> 5U)) << 5U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S 
        = ((0x3ffffbfU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S) 
           | (0x40U & (((0x10U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C)
                         ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp2 
                            >> 6U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1 
                                      >> 6U)) << 6U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S 
        = ((0x3ffff7fU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S) 
           | (0x80U & (((0x20U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C)
                         ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp2 
                            >> 7U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1 
                                      >> 7U)) << 7U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S 
        = ((0x3fffeffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S) 
           | (0x100U & (((0x40U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C)
                          ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp2 
                             >> 8U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1 
                                       >> 8U)) << 8U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S 
        = ((0x3fffdffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S) 
           | (0x200U & (((0x80U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C)
                          ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp2 
                             >> 9U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1 
                                       >> 9U)) << 9U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S 
        = ((0x3fffbffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S) 
           | (0x400U & (((0x100U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C)
                          ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp2 
                             >> 0xaU) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1 
                                         >> 0xaU)) 
                        << 0xaU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S 
        = ((0x3fff7ffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S) 
           | (0x800U & (((0x200U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C)
                          ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp2 
                             >> 0xbU) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1 
                                         >> 0xbU)) 
                        << 0xbU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S 
        = ((0x3ffefffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S) 
           | (0x1000U & (((0x400U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C)
                           ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp2 
                              >> 0xcU) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1 
                                          >> 0xcU)) 
                         << 0xcU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S 
        = ((0x3ffdfffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S) 
           | (0x2000U & (((0x800U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C)
                           ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp2 
                              >> 0xdU) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1 
                                          >> 0xdU)) 
                         << 0xdU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S 
        = ((0x3ffbfffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S) 
           | (0x4000U & (((0x1000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C)
                           ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp2 
                              >> 0xeU) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1 
                                          >> 0xeU)) 
                         << 0xeU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S 
        = ((0x3ff7fffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S) 
           | (0x8000U & (((0x2000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C)
                           ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp2 
                              >> 0xfU) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1 
                                          >> 0xfU)) 
                         << 0xfU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S 
        = ((0x3feffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S) 
           | (0x10000U & (((0x4000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C)
                            ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp2 
                               >> 0x10U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1 
                                            >> 0x10U)) 
                          << 0x10U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S 
        = ((0x3fdffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S) 
           | (0x20000U & (((0x8000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C)
                            ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp2 
                               >> 0x11U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1 
                                            >> 0x11U)) 
                          << 0x11U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S 
        = ((0x3fbffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S) 
           | (0x40000U & (((0x10000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C)
                            ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp2 
                               >> 0x12U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1 
                                            >> 0x12U)) 
                          << 0x12U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S 
        = ((0x3f7ffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S) 
           | (0x80000U & (((0x20000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C)
                            ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp2 
                               >> 0x13U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1 
                                            >> 0x13U)) 
                          << 0x13U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S 
        = ((0x3efffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S) 
           | (0x100000U & (((0x40000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C)
                             ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp2 
                                >> 0x14U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1 
                                             >> 0x14U)) 
                           << 0x14U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S 
        = ((0x3dfffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S) 
           | (0x200000U & (((0x80000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C)
                             ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp2 
                                >> 0x15U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1 
                                             >> 0x15U)) 
                           << 0x15U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S 
        = ((0x3bfffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S) 
           | (0x400000U & (((0x100000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C)
                             ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp2 
                                >> 0x16U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1 
                                             >> 0x16U)) 
                           << 0x16U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S 
        = ((0x37fffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S) 
           | (0x800000U & (((0x200000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C)
                             ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp2 
                                >> 0x17U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1 
                                             >> 0x17U)) 
                           << 0x17U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S 
        = ((0x2ffffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S) 
           | (0x1000000U & (((0x400000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C)
                              ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp2 
                                 >> 0x18U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1 
                                              >> 0x18U)) 
                            << 0x18U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S 
        = ((0x1ffffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S) 
           | (0x2000000U & (((0x800000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C)
                              ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp2 
                                 >> 0x19U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1 
                                              >> 0x19U)) 
                            << 0x19U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_3_0__DOT__temp2 
        = (0x3fU & ((~ (0x1fU & (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S 
                                 >> 0x15U))) ^ (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C 
                                                >> 0x14U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_3_0__DOT__temp1 
        = (0x3fU & ((0x1fU & (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S 
                              >> 0x15U)) ^ (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C 
                                            >> 0x14U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_3_0__C 
        = ((0x3eU & (IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_3_0__C)) 
           | (1U & ((IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_3_0__DOT__temp1) 
                    | (0x1fU & (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S 
                                >> 0x15U)))));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_3_0__S 
        = ((0x3eU & (IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_3_0__S)) 
           | (1U & (IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_3_0__DOT__temp2)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_3_0__C 
        = ((0x3dU & (IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_3_0__C)) 
           | (2U & (((~ ((IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_3_0__DOT__temp1) 
                         >> 1U)) << 1U) & (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S 
                                           >> 0x15U))));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_3_0__S 
        = ((0x3dU & (IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_3_0__S)) 
           | (2U & (IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_3_0__DOT__temp1)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_3_0__C 
        = ((0x3bU & (IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_3_0__C)) 
           | (4U & (((~ ((IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_3_0__DOT__temp1) 
                         >> 2U)) << 2U) & (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S 
                                           >> 0x15U))));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_3_0__S 
        = ((0x3bU & (IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_3_0__S)) 
           | (4U & (IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_3_0__DOT__temp1)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_3_0__C 
        = ((0x37U & (IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_3_0__C)) 
           | (8U & ((0xfffffff8U & (IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_3_0__DOT__temp1)) 
                    | (0x18U & (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S 
                                >> 0x15U)))));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_3_0__S 
        = ((0x37U & (IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_3_0__S)) 
           | (8U & (IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_3_0__DOT__temp2)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_3_0__C 
        = ((0x2fU & (IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_3_0__C)) 
           | (0x10U & (((~ ((IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_3_0__DOT__temp1) 
                            >> 4U)) << 4U) & (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S 
                                              >> 0x15U))));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_3_0__S 
        = ((0x2fU & (IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_3_0__S)) 
           | (0x10U & (IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_3_0__DOT__temp1)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_3_0__C 
        = (0x1fU & (IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_3_0__C));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_3_0__S 
        = ((0x1fU & (IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_3_0__S)) 
           | (0x20U & (IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_3_0__DOT__temp1)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__final_sum 
        = (0x7ffffffU & ((((IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_3_0__S) 
                           << 0x15U) | (0x1fffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S)) 
                         + ((0x7c00000U & ((IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_3_0__C) 
                                           << 0x16U)) 
                            | (0x1ffffeU & (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C 
                                            << 1U)))));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__exp_overflow 
        = (0x3ffU & (((0xffU & (vlTOPp->x >> 0x17U)) 
                      + (0xffU & (vlTOPp->y >> 0x17U))) 
                     + (0x380U | ((2U & (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__final_sum 
                                         >> 0x19U)) 
                                  | (1U & ((vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__final_sum 
                                            >> 0x19U) 
                                           & (~ (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__final_sum 
                                                 >> 0x1aU))))))));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__overflow 
        = (1U & (((~ ((IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__exp_overflow) 
                      >> 9U)) & ((IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__exp_overflow) 
                                 >> 8U)) | (((~ ((IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__exp_overflow) 
                                                 >> 9U)) 
                                             & (~ ((IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__exp_overflow) 
                                                   >> 8U))) 
                                            & (0xffU 
                                               == (0xffU 
                                                   & (IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__exp_overflow))))));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__underflow 
        = (1U & (((IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__exp_overflow) 
                  >> 9U) & ((IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__exp_overflow) 
                            >> 8U)));
    vlTOPp->amlib_z = ((0x80000000U & (vlTOPp->x ^ vlTOPp->y)) 
                       | ((((IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__overflow)
                             ? 0xfeU : ((IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__underflow)
                                         ? 1U : (0xffU 
                                                 & (IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__exp_overflow)))) 
                           << 0x17U) | ((IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__overflow)
                                         ? 0x7fffffU
                                         : ((IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__underflow)
                                             ? 0U : 
                                            (0x7fffffU 
                                             & ((0x4000000U 
                                                 & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__final_sum)
                                                 ? 
                                                (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__final_sum 
                                                 >> 3U)
                                                 : 
                                                ((0x2000000U 
                                                  & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__final_sum)
                                                  ? 
                                                 (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__final_sum 
                                                  >> 2U)
                                                  : 
                                                 (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__final_sum 
                                                  >> 1U))))))));
}

VL_INLINE_OPT void Vamlib_oadm_mul_miter::_combo__TOP__2(Vamlib_oadm_mul_miter__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vamlib_oadm_mul_miter::_combo__TOP__2\n"); );
    Vamlib_oadm_mul_miter* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__sign_input 
        = (1U & ((vlTOPp->x ^ vlTOPp->y) >> 0x1fU));
    vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__fixed_centered_plane__DOT__plane__DOT__x_residual_product 
        = (0xfffffffU & VL_MULS_III(28,28,28, (0xfffffffU 
                                               & VL_EXTENDS_II(28,22, 
                                                               ((0x200000U 
                                                                 & ((~ 
                                                                     (vlTOPp->x 
                                                                      >> 0x15U)) 
                                                                    << 0x15U)) 
                                                                | (0x1fffffU 
                                                                   & vlTOPp->x)))), 
                                    (0xfffffffU & VL_EXTENDS_II(28,6, 
                                                                (0x1fU 
                                                                 & ((IData)(0x14U) 
                                                                    + 
                                                                    (8U 
                                                                     & (vlTOPp->y 
                                                                        >> 0x13U))))))));
    vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__fixed_centered_plane__DOT__plane__DOT__y_residual_product 
        = (0xfffffffU & VL_MULS_III(28,28,28, (0xfffffffU 
                                               & VL_EXTENDS_II(28,22, 
                                                               ((0x200000U 
                                                                 & ((~ 
                                                                     (vlTOPp->y 
                                                                      >> 0x15U)) 
                                                                    << 0x15U)) 
                                                                | (0x1fffffU 
                                                                   & vlTOPp->y)))), 
                                    (0xfffffffU & VL_EXTENDS_II(28,6, 
                                                                (0x1fU 
                                                                 & ((IData)(0x14U) 
                                                                    + 
                                                                    (8U 
                                                                     & (vlTOPp->x 
                                                                        >> 0x13U))))))));
    vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__fixed_centered_plane__DOT__plane__DOT__x_rounding_error 
        = (1U & ((((((~ (vlTOPp->y >> 0x16U)) & (~ 
                                                 (vlTOPp->x 
                                                  >> 1U))) 
                    | ((vlTOPp->y >> 0x16U) & (vlTOPp->x 
                                               >> 1U))) 
                   | ((((((~ (vlTOPp->y >> 0x16U)) 
                          & (~ (vlTOPp->y >> 0x15U))) 
                         & (~ (vlTOPp->y >> 0x14U))) 
                        & (~ (vlTOPp->x >> 3U))) & 
                       (~ (vlTOPp->x >> 2U))) & (~ 
                                                 (vlTOPp->x 
                                                  >> 1U)))) 
                  | ((((((vlTOPp->y >> 0x16U) & (vlTOPp->y 
                                                 >> 0x15U)) 
                        & (vlTOPp->y >> 0x14U)) & (vlTOPp->x 
                                                   >> 3U)) 
                      & (vlTOPp->x >> 2U)) & (vlTOPp->x 
                                              >> 1U))) 
                 & vlTOPp->x));
    vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__fixed_centered_plane__DOT__plane__DOT__y_side_x_error 
        = (1U & ((((((~ (vlTOPp->x >> 0x16U)) & (~ 
                                                 (vlTOPp->y 
                                                  >> 1U))) 
                    | ((vlTOPp->x >> 0x16U) & (vlTOPp->y 
                                               >> 1U))) 
                   | ((((((~ (vlTOPp->x >> 0x16U)) 
                          & (~ (vlTOPp->x >> 0x15U))) 
                         & (~ (vlTOPp->x >> 0x14U))) 
                        & (~ (vlTOPp->y >> 3U))) & 
                       (~ (vlTOPp->y >> 2U))) & (~ 
                                                 (vlTOPp->y 
                                                  >> 1U)))) 
                  | ((((((vlTOPp->x >> 0x16U) & (vlTOPp->x 
                                                 >> 0x15U)) 
                        & (vlTOPp->x >> 0x14U)) & (vlTOPp->y 
                                                   >> 3U)) 
                      & (vlTOPp->y >> 2U)) & (vlTOPp->y 
                                              >> 1U))) 
                 & vlTOPp->y));
    vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__x_inf 
        = ((0xffU == (0xffU & (vlTOPp->x >> 0x17U))) 
           & (0U == (0x7fffffU & vlTOPp->x)));
    vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__y_inf 
        = ((0xffU == (0xffU & (vlTOPp->y >> 0x17U))) 
           & (0U == (0x7fffffU & vlTOPp->y)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp2 
        = (0xffffffU & ((~ (0xfffffeU & (vlTOPp->x 
                                         << 1U))) ^ 
                        (0xfffffeU & (vlTOPp->y << 1U))));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1 
        = ((0xfffffeU & (vlTOPp->x << 1U)) ^ (0xfffffeU 
                                              & (vlTOPp->y 
                                                 << 1U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In 
        = (0x3fffffU & ((0x400000U & vlTOPp->y) ? vlTOPp->x
                         : (~ vlTOPp->x)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPX__In 
        = ((0x400000U & (((vlTOPp->x >> 0x16U) ^ ~ 
                          (vlTOPp->y >> 0x16U)) << 0x16U)) 
           | (0x3fffffU & ((0x400000U & vlTOPp->x) ? vlTOPp->y
                            : (~ vlTOPp->y))));
    vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__plane_full 
        = (0x1fffffffU & ((((0x1ff8000U & (((IData)(0x190U) 
                                            + ((((IData)(0x14U) 
                                                 * 
                                                 (0xfU 
                                                  & ((1U 
                                                      & (vlTOPp->x 
                                                         >> 0x16U)) 
                                                     + 
                                                     (1U 
                                                      & (vlTOPp->y 
                                                         >> 0x16U))))) 
                                                << 3U) 
                                               + (0xfc0U 
                                                  & (((1U 
                                                       & (vlTOPp->x 
                                                          >> 0x16U)) 
                                                      * 
                                                      (1U 
                                                       & (vlTOPp->y 
                                                          >> 0x16U))) 
                                                     << 6U)))) 
                                           << 0xfU)) 
                            + VL_SHIFTRS_III(29,29,32, 
                                             ((0x10000000U 
                                               & (vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__fixed_centered_plane__DOT__plane__DOT__x_residual_product 
                                                  << 1U)) 
                                              | vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__fixed_centered_plane__DOT__plane__DOT__x_residual_product), 4U)) 
                           + VL_SHIFTRS_III(29,29,32, 
                                            ((0x10000000U 
                                              & (vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__fixed_centered_plane__DOT__plane__DOT__y_residual_product 
                                                 << 1U)) 
                                             | vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__fixed_centered_plane__DOT__plane__DOT__y_residual_product), 4U)) 
                          - (7U & ((IData)(vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__fixed_centered_plane__DOT__plane__DOT__x_rounding_error) 
                                   + (IData)(vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__fixed_centered_plane__DOT__plane__DOT__y_side_x_error)))));
    vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__invalid_input 
        = (((0xffU == (0xffU & (vlTOPp->x >> 0x17U))) 
            & (0U != (0x7fffffU & vlTOPp->x))) | ((0xffU 
                                                   == 
                                                   (0xffU 
                                                    & (vlTOPp->y 
                                                       >> 0x17U))) 
                                                  & (0U 
                                                     != 
                                                     (0x7fffffU 
                                                      & vlTOPp->y))));
    vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__invalid_input 
        = (((IData)(vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__invalid_input) 
            | ((0U == (0xffU & (vlTOPp->x >> 0x17U))) 
               & (IData)(vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__y_inf))) 
           | ((IData)(vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__x_inf) 
              & (0U == (0xffU & (vlTOPp->y >> 0x17U)))));
    vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__infinity_input 
        = ((~ (IData)(vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__invalid_input)) 
           & ((IData)(vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__x_inf) 
              | (IData)(vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__y_inf)));
    vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__zero_input 
        = (((~ (IData)(vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__invalid_input)) 
            & (~ (IData)(vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__infinity_input))) 
           & ((0U == (0xffU & (vlTOPp->x >> 0x17U))) 
              | (0U == (0xffU & (vlTOPp->y >> 0x17U)))));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
        = ((0xfffffeU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C) 
           | (1U & (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1 
                    & vlTOPp->x)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
        = ((0xfffffdU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C) 
           | (2U & (((2U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1)
                      ? (0x3fffffU & (vlTOPp->x >> 1U))
                      : vlTOPp->x) << 1U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
        = ((0xfffffbU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C) 
           | (4U & (((4U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1)
                      ? (0x1fffffU & (vlTOPp->x >> 2U))
                      : (vlTOPp->x >> 1U)) << 2U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
        = ((0xfffff7U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C) 
           | (8U & (((8U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1)
                      ? (0xfffffU & (vlTOPp->x >> 3U))
                      : (vlTOPp->x >> 2U)) << 3U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
        = ((0xffffefU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C) 
           | (0x10U & (((0x10U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1)
                         ? (0x7ffffU & (vlTOPp->x >> 4U))
                         : (vlTOPp->x >> 3U)) << 4U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
        = ((0xffffdfU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C) 
           | (0x20U & (((0x20U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1)
                         ? (0x3ffffU & (vlTOPp->x >> 5U))
                         : (vlTOPp->x >> 4U)) << 5U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
        = ((0xffffbfU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C) 
           | (0x40U & (((0x40U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1)
                         ? (0x1ffffU & (vlTOPp->x >> 6U))
                         : (vlTOPp->x >> 5U)) << 6U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
        = ((0xffff7fU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C) 
           | (0x80U & (((0x80U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1)
                         ? (0xffffU & (vlTOPp->x >> 7U))
                         : (vlTOPp->x >> 6U)) << 7U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
        = ((0xfffeffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C) 
           | (0x100U & (((0x100U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1)
                          ? (0x7fffU & (vlTOPp->x >> 8U))
                          : (vlTOPp->x >> 7U)) << 8U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
        = ((0xfffdffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C) 
           | (0x200U & (((0x200U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1)
                          ? (0x3fffU & (vlTOPp->x >> 9U))
                          : (vlTOPp->x >> 8U)) << 9U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
        = ((0xfffbffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C) 
           | (0x400U & (((0x400U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1)
                          ? (0x1fffU & (vlTOPp->x >> 0xaU))
                          : (vlTOPp->x >> 9U)) << 0xaU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
        = ((0xfff7ffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C) 
           | (0x800U & (((0x800U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1)
                          ? (0xfffU & (vlTOPp->x >> 0xbU))
                          : (vlTOPp->x >> 0xaU)) << 0xbU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
        = ((0xffefffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C) 
           | (0x1000U & (((0x1000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1)
                           ? (0x7ffU & (vlTOPp->x >> 0xcU))
                           : (vlTOPp->x >> 0xbU)) << 0xcU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
        = ((0xffdfffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C) 
           | (0x2000U & (((0x2000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1)
                           ? (0x3ffU & (vlTOPp->x >> 0xdU))
                           : (vlTOPp->x >> 0xcU)) << 0xdU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
        = ((0xffbfffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C) 
           | (0x4000U & (((0x4000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1)
                           ? (0x1ffU & (vlTOPp->x >> 0xeU))
                           : (vlTOPp->x >> 0xdU)) << 0xeU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
        = ((0xff7fffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C) 
           | (0x8000U & (((0x8000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1)
                           ? (0xffU & (vlTOPp->x >> 0xfU))
                           : (vlTOPp->x >> 0xeU)) << 0xfU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
        = ((0xfeffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C) 
           | (0x10000U & (((0x10000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1)
                            ? (0x7fU & (vlTOPp->x >> 0x10U))
                            : (vlTOPp->x >> 0xfU)) 
                          << 0x10U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
        = ((0xfdffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C) 
           | (0x20000U & (((0x20000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1)
                            ? (0x3fU & (vlTOPp->x >> 0x11U))
                            : (vlTOPp->x >> 0x10U)) 
                          << 0x11U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
        = ((0xfbffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C) 
           | (0x40000U & (((0x40000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1)
                            ? (0x1fU & (vlTOPp->x >> 0x12U))
                            : (vlTOPp->x >> 0x11U)) 
                          << 0x12U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
        = ((0xf7ffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C) 
           | (0x80000U & (((0x80000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1)
                            ? (0xfU & (vlTOPp->x >> 0x13U))
                            : (vlTOPp->x >> 0x12U)) 
                          << 0x13U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
        = ((0xefffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C) 
           | (0x100000U & (((0x100000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1)
                             ? (7U & (vlTOPp->x >> 0x14U))
                             : (vlTOPp->x >> 0x13U)) 
                           << 0x14U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
        = ((0xdfffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C) 
           | (0x200000U & (((0x200000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1)
                             ? (3U & (vlTOPp->x >> 0x15U))
                             : (vlTOPp->x >> 0x14U)) 
                           << 0x15U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
        = ((0xbfffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C) 
           | (0x400000U & (((0x400000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1)
                             ? (1U & (vlTOPp->x >> 0x16U))
                             : (vlTOPp->x >> 0x15U)) 
                           << 0x16U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
        = ((0x7fffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C) 
           | (((0x800000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1)
                ? 0U : (1U & (vlTOPp->x >> 0x16U))) 
              << 0x17U));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
        = ((0xfffffeU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S) 
           | (1U & ((1U & vlTOPp->x) ? vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp2
                     : vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
        = ((0xfffffdU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S) 
           | (2U & (((2U & vlTOPp->x) ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp2 
                                         >> 1U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1 
                                                   >> 1U)) 
                    << 1U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
        = ((0xfffffbU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S) 
           | (4U & (((4U & vlTOPp->x) ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp2 
                                         >> 2U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1 
                                                   >> 2U)) 
                    << 2U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
        = ((0xfffff7U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S) 
           | (8U & (((8U & vlTOPp->x) ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp2 
                                         >> 3U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1 
                                                   >> 3U)) 
                    << 3U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
        = ((0xffffefU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S) 
           | (0x10U & (((0x10U & vlTOPp->x) ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp2 
                                               >> 4U)
                         : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1 
                            >> 4U)) << 4U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
        = ((0xffffdfU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S) 
           | (0x20U & (((0x20U & vlTOPp->x) ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp2 
                                               >> 5U)
                         : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1 
                            >> 5U)) << 5U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
        = ((0xffffbfU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S) 
           | (0x40U & (((0x40U & vlTOPp->x) ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp2 
                                               >> 6U)
                         : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1 
                            >> 6U)) << 6U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
        = ((0xffff7fU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S) 
           | (0x80U & (((0x80U & vlTOPp->x) ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp2 
                                               >> 7U)
                         : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1 
                            >> 7U)) << 7U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
        = ((0xfffeffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S) 
           | (0x100U & (((0x100U & vlTOPp->x) ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp2 
                                                 >> 8U)
                          : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1 
                             >> 8U)) << 8U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
        = ((0xfffdffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S) 
           | (0x200U & (((0x200U & vlTOPp->x) ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp2 
                                                 >> 9U)
                          : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1 
                             >> 9U)) << 9U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
        = ((0xfffbffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S) 
           | (0x400U & (((0x400U & vlTOPp->x) ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp2 
                                                 >> 0xaU)
                          : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1 
                             >> 0xaU)) << 0xaU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
        = ((0xfff7ffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S) 
           | (0x800U & (((0x800U & vlTOPp->x) ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp2 
                                                 >> 0xbU)
                          : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1 
                             >> 0xbU)) << 0xbU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
        = ((0xffefffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S) 
           | (0x1000U & (((0x1000U & vlTOPp->x) ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp2 
                                                   >> 0xcU)
                           : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1 
                              >> 0xcU)) << 0xcU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
        = ((0xffdfffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S) 
           | (0x2000U & (((0x2000U & vlTOPp->x) ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp2 
                                                   >> 0xdU)
                           : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1 
                              >> 0xdU)) << 0xdU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
        = ((0xffbfffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S) 
           | (0x4000U & (((0x4000U & vlTOPp->x) ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp2 
                                                   >> 0xeU)
                           : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1 
                              >> 0xeU)) << 0xeU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
        = ((0xff7fffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S) 
           | (0x8000U & (((0x8000U & vlTOPp->x) ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp2 
                                                   >> 0xfU)
                           : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1 
                              >> 0xfU)) << 0xfU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
        = ((0xfeffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S) 
           | (0x10000U & (((0x10000U & vlTOPp->x) ? 
                           (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp2 
                            >> 0x10U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1 
                                         >> 0x10U)) 
                          << 0x10U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
        = ((0xfdffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S) 
           | (0x20000U & (((0x20000U & vlTOPp->x) ? 
                           (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp2 
                            >> 0x11U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1 
                                         >> 0x11U)) 
                          << 0x11U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
        = ((0xfbffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S) 
           | (0x40000U & (((0x40000U & vlTOPp->x) ? 
                           (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp2 
                            >> 0x12U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1 
                                         >> 0x12U)) 
                          << 0x12U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
        = ((0xf7ffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S) 
           | (0x80000U & (((0x80000U & vlTOPp->x) ? 
                           (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp2 
                            >> 0x13U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1 
                                         >> 0x13U)) 
                          << 0x13U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
        = ((0xefffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S) 
           | (0x100000U & (((0x100000U & vlTOPp->x)
                             ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp2 
                                >> 0x14U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1 
                                             >> 0x14U)) 
                           << 0x14U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
        = ((0xdfffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S) 
           | (0x200000U & (((0x200000U & vlTOPp->x)
                             ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp2 
                                >> 0x15U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1 
                                             >> 0x15U)) 
                           << 0x15U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
        = ((0xbfffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S) 
           | (0x400000U & (((0x400000U & vlTOPp->x)
                             ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp2 
                                >> 0x16U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1 
                                             >> 0x16U)) 
                           << 0x16U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
        = ((0x7fffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S) 
           | (0x800000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp2 
        = (0xffffffU & ((~ (0xfffffeU & (vlTOPp->y 
                                         << 1U))) ^ vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPX__In));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1 
        = ((0xfffffeU & (vlTOPp->y << 1U)) ^ vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPX__In);
    vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__shared_value 
        = ((0x18000000U & (VL_NEGATE_I((IData)((1U 
                                                & (vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__plane_full 
                                                   >> 0x1aU)))) 
                           << 0x1bU)) | (0x7ffffffU 
                                         & vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__plane_full));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
        = ((0xfffffeU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S) 
           | (1U & ((1U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In)
                     ? vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp2
                     : vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
        = ((0xfffffdU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S) 
           | (2U & (((2U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In)
                      ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp2 
                         >> 1U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1 
                                   >> 1U)) << 1U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
        = ((0xfffffbU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S) 
           | (4U & (((4U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In)
                      ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp2 
                         >> 2U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1 
                                   >> 2U)) << 2U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
        = ((0xfffff7U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S) 
           | (8U & (((8U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In)
                      ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp2 
                         >> 3U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1 
                                   >> 3U)) << 3U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
        = ((0xffffefU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S) 
           | (0x10U & (((0x10U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In)
                         ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp2 
                            >> 4U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1 
                                      >> 4U)) << 4U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
        = ((0xffffdfU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S) 
           | (0x20U & (((0x20U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In)
                         ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp2 
                            >> 5U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1 
                                      >> 5U)) << 5U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
        = ((0xffffbfU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S) 
           | (0x40U & (((0x40U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In)
                         ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp2 
                            >> 6U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1 
                                      >> 6U)) << 6U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
        = ((0xffff7fU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S) 
           | (0x80U & (((0x80U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In)
                         ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp2 
                            >> 7U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1 
                                      >> 7U)) << 7U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
        = ((0xfffeffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S) 
           | (0x100U & (((0x100U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In)
                          ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp2 
                             >> 8U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1 
                                       >> 8U)) << 8U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
        = ((0xfffdffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S) 
           | (0x200U & (((0x200U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In)
                          ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp2 
                             >> 9U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1 
                                       >> 9U)) << 9U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
        = ((0xfffbffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S) 
           | (0x400U & (((0x400U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In)
                          ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp2 
                             >> 0xaU) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1 
                                         >> 0xaU)) 
                        << 0xaU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
        = ((0xfff7ffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S) 
           | (0x800U & (((0x800U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In)
                          ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp2 
                             >> 0xbU) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1 
                                         >> 0xbU)) 
                        << 0xbU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
        = ((0xffefffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S) 
           | (0x1000U & (((0x1000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In)
                           ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp2 
                              >> 0xcU) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1 
                                          >> 0xcU)) 
                         << 0xcU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
        = ((0xffdfffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S) 
           | (0x2000U & (((0x2000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In)
                           ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp2 
                              >> 0xdU) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1 
                                          >> 0xdU)) 
                         << 0xdU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
        = ((0xffbfffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S) 
           | (0x4000U & (((0x4000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In)
                           ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp2 
                              >> 0xeU) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1 
                                          >> 0xeU)) 
                         << 0xeU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
        = ((0xff7fffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S) 
           | (0x8000U & (((0x8000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In)
                           ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp2 
                              >> 0xfU) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1 
                                          >> 0xfU)) 
                         << 0xfU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
        = ((0xfeffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S) 
           | (0x10000U & (((0x10000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In)
                            ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp2 
                               >> 0x10U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1 
                                            >> 0x10U)) 
                          << 0x10U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
        = ((0xfdffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S) 
           | (0x20000U & (((0x20000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In)
                            ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp2 
                               >> 0x11U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1 
                                            >> 0x11U)) 
                          << 0x11U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
        = ((0xfbffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S) 
           | (0x40000U & (((0x40000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In)
                            ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp2 
                               >> 0x12U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1 
                                            >> 0x12U)) 
                          << 0x12U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
        = ((0xf7ffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S) 
           | (0x80000U & (((0x80000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In)
                            ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp2 
                               >> 0x13U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1 
                                            >> 0x13U)) 
                          << 0x13U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
        = ((0xefffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S) 
           | (0x100000U & (((0x100000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In)
                             ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp2 
                                >> 0x14U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1 
                                             >> 0x14U)) 
                           << 0x14U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
        = ((0xdfffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S) 
           | (0x200000U & (((0x200000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In)
                             ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp2 
                                >> 0x15U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1 
                                             >> 0x15U)) 
                           << 0x15U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
        = ((0xbfffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S) 
           | (0x400000U & (((0x400000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In)
                             ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp2 
                                >> 0x16U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1 
                                             >> 0x16U)) 
                           << 0x16U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
        = ((0x7fffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S) 
           | (0x800000U & (((0x800000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In)
                             ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp2 
                                >> 0x17U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1 
                                             >> 0x17U)) 
                           << 0x17U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C 
        = ((0xfffffeU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C) 
           | (1U & (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1 
                    & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C 
        = ((0xfffffdU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C) 
           | (2U & (((2U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1)
                      ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In 
                         >> 1U) : vlTOPp->y) << 1U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C 
        = ((0xfffffbU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C) 
           | (4U & (((4U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1)
                      ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In 
                         >> 2U) : (vlTOPp->y >> 1U)) 
                    << 2U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C 
        = ((0xfffff7U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C) 
           | (8U & (((8U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1)
                      ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In 
                         >> 3U) : (vlTOPp->y >> 2U)) 
                    << 3U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C 
        = ((0xffffefU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C) 
           | (0x10U & (((0x10U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1)
                         ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In 
                            >> 4U) : (vlTOPp->y >> 3U)) 
                       << 4U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C 
        = ((0xffffdfU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C) 
           | (0x20U & (((0x20U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1)
                         ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In 
                            >> 5U) : (vlTOPp->y >> 4U)) 
                       << 5U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C 
        = ((0xffffbfU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C) 
           | (0x40U & (((0x40U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1)
                         ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In 
                            >> 6U) : (vlTOPp->y >> 5U)) 
                       << 6U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C 
        = ((0xffff7fU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C) 
           | (0x80U & (((0x80U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1)
                         ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In 
                            >> 7U) : (vlTOPp->y >> 6U)) 
                       << 7U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C 
        = ((0xfffeffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C) 
           | (0x100U & (((0x100U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1)
                          ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In 
                             >> 8U) : (vlTOPp->y >> 7U)) 
                        << 8U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C 
        = ((0xfffdffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C) 
           | (0x200U & (((0x200U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1)
                          ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In 
                             >> 9U) : (vlTOPp->y >> 8U)) 
                        << 9U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C 
        = ((0xfffbffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C) 
           | (0x400U & (((0x400U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1)
                          ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In 
                             >> 0xaU) : (vlTOPp->y 
                                         >> 9U)) << 0xaU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C 
        = ((0xfff7ffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C) 
           | (0x800U & (((0x800U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1)
                          ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In 
                             >> 0xbU) : (vlTOPp->y 
                                         >> 0xaU)) 
                        << 0xbU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C 
        = ((0xffefffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C) 
           | (0x1000U & (((0x1000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1)
                           ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In 
                              >> 0xcU) : (vlTOPp->y 
                                          >> 0xbU)) 
                         << 0xcU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C 
        = ((0xffdfffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C) 
           | (0x2000U & (((0x2000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1)
                           ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In 
                              >> 0xdU) : (vlTOPp->y 
                                          >> 0xcU)) 
                         << 0xdU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C 
        = ((0xffbfffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C) 
           | (0x4000U & (((0x4000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1)
                           ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In 
                              >> 0xeU) : (vlTOPp->y 
                                          >> 0xdU)) 
                         << 0xeU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C 
        = ((0xff7fffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C) 
           | (0x8000U & (((0x8000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1)
                           ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In 
                              >> 0xfU) : (vlTOPp->y 
                                          >> 0xeU)) 
                         << 0xfU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C 
        = ((0xfeffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C) 
           | (0x10000U & (((0x10000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1)
                            ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In 
                               >> 0x10U) : (vlTOPp->y 
                                            >> 0xfU)) 
                          << 0x10U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C 
        = ((0xfdffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C) 
           | (0x20000U & (((0x20000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1)
                            ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In 
                               >> 0x11U) : (vlTOPp->y 
                                            >> 0x10U)) 
                          << 0x11U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C 
        = ((0xfbffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C) 
           | (0x40000U & (((0x40000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1)
                            ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In 
                               >> 0x12U) : (vlTOPp->y 
                                            >> 0x11U)) 
                          << 0x12U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C 
        = ((0xf7ffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C) 
           | (0x80000U & (((0x80000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1)
                            ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In 
                               >> 0x13U) : (vlTOPp->y 
                                            >> 0x12U)) 
                          << 0x13U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C 
        = ((0xefffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C) 
           | (0x100000U & (((0x100000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1)
                             ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In 
                                >> 0x14U) : (vlTOPp->y 
                                             >> 0x13U)) 
                           << 0x14U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C 
        = ((0xdfffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C) 
           | (0x200000U & (((0x200000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1)
                             ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In 
                                >> 0x15U) : (vlTOPp->y 
                                             >> 0x14U)) 
                           << 0x15U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C 
        = ((0xbfffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C) 
           | (0x400000U & (((0x400000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1)
                             ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In 
                                >> 0x16U) : (vlTOPp->y 
                                             >> 0x15U)) 
                           << 0x16U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C 
        = ((0x7fffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C) 
           | (0x800000U & (((0x800000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1)
                             ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In 
                                >> 0x17U) : (vlTOPp->y 
                                             >> 0x16U)) 
                           << 0x17U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__normalized_value 
        = vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__shared_value;
    vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__result_exponent 
        = (0x3ffU & (((0xffU & (vlTOPp->x >> 0x17U)) 
                      + (0xffU & (vlTOPp->y >> 0x17U))) 
                     - (IData)(0x7fU)));
    if ((0x1000000U & vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__shared_value)) {
        vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__result_exponent 
            = (0x3ffU & ((IData)(1U) + VL_EXTENDS_II(10,10, (IData)(vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__result_exponent))));
        vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__normalized_value 
            = (0x1fffffffU & VL_SHIFTRS_III(29,29,32, vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__shared_value, 1U));
    } else {
        if ((0x800000U & vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__shared_value)) {
            vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__normalized_value 
                = vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__shared_value;
        } else {
            if ((0x400000U & vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__shared_value)) {
                vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__result_exponent 
                    = (0x3ffU & (VL_EXTENDS_II(10,10, (IData)(vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__result_exponent)) 
                                 - (IData)(1U)));
                vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__normalized_value 
                    = (0x1fffffffU & (vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__shared_value 
                                      << 1U));
            } else {
                vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__result_exponent 
                    = (0x3ffU & (VL_EXTENDS_II(10,10, (IData)(vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__result_exponent)) 
                                 - (IData)(2U)));
                vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__normalized_value 
                    = (0x1fffffffU & (vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__shared_value 
                                      << 2U));
            }
        }
    }
    vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__finite_result 
        = (VL_GTES_III(1,32,32, 0U, VL_EXTENDS_II(32,10, (IData)(vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__result_exponent)))
            ? ((IData)(vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__sign_input) 
               << 0x1fU) : (VL_LTES_III(1,32,32, 0xffU, 
                                        VL_EXTENDS_II(32,10, (IData)(vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__result_exponent)))
                             ? (0x7f800000U | ((IData)(vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__sign_input) 
                                               << 0x1fU))
                             : (((IData)(vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__sign_input) 
                                 << 0x1fU) | ((0x7f800000U 
                                               & ((IData)(vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__result_exponent) 
                                                  << 0x17U)) 
                                              | (0x7fffffU 
                                                 & vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__normalized_value)))));
    vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__result_comb 
        = ((IData)(vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__invalid_input)
            ? 0x7fc00000U : ((IData)(vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__infinity_input)
                              ? (0x7f800000U | ((IData)(vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__sign_input) 
                                                << 0x1fU))
                              : ((IData)(vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__zero_input)
                                  ? ((IData)(vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__sign_input) 
                                     << 0x1fU) : vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__finite_result)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp2 
        = (0x1ffffffU & ((~ (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
                             << 1U)) ^ (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C 
                                        << 1U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1 
        = ((vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
            ^ vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C) 
           << 1U);
    vlTOPp->oadm_z = vlTOPp->amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__result_comb;
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C 
        = ((0x1fffffeU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C) 
           | (1U & (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1 
                    & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C 
        = ((0x1fffffdU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C) 
           | (2U & (((2U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1)
                      ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
                         >> 1U) : vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S) 
                    << 1U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C 
        = ((0x1fffffbU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C) 
           | (4U & (((4U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1)
                      ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
                         >> 2U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
                                   >> 1U)) << 2U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C 
        = ((0x1fffff7U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C) 
           | (8U & (((8U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1)
                      ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
                         >> 3U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
                                   >> 2U)) << 3U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C 
        = ((0x1ffffefU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C) 
           | (0x10U & (((0x10U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1)
                         ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
                            >> 4U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
                                      >> 3U)) << 4U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C 
        = ((0x1ffffdfU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C) 
           | (0x20U & (((0x20U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1)
                         ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
                            >> 5U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
                                      >> 4U)) << 5U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C 
        = ((0x1ffffbfU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C) 
           | (0x40U & (((0x40U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1)
                         ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
                            >> 6U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
                                      >> 5U)) << 6U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C 
        = ((0x1ffff7fU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C) 
           | (0x80U & (((0x80U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1)
                         ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
                            >> 7U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
                                      >> 6U)) << 7U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C 
        = ((0x1fffeffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C) 
           | (0x100U & (((0x100U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1)
                          ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
                             >> 8U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
                                       >> 7U)) << 8U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C 
        = ((0x1fffdffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C) 
           | (0x200U & (((0x200U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1)
                          ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
                             >> 9U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
                                       >> 8U)) << 9U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C 
        = ((0x1fffbffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C) 
           | (0x400U & (((0x400U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1)
                          ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
                             >> 0xaU) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
                                         >> 9U)) << 0xaU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C 
        = ((0x1fff7ffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C) 
           | (0x800U & (((0x800U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1)
                          ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
                             >> 0xbU) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
                                         >> 0xaU)) 
                        << 0xbU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C 
        = ((0x1ffefffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C) 
           | (0x1000U & (((0x1000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1)
                           ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
                              >> 0xcU) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
                                          >> 0xbU)) 
                         << 0xcU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C 
        = ((0x1ffdfffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C) 
           | (0x2000U & (((0x2000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1)
                           ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
                              >> 0xdU) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
                                          >> 0xcU)) 
                         << 0xdU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C 
        = ((0x1ffbfffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C) 
           | (0x4000U & (((0x4000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1)
                           ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
                              >> 0xeU) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
                                          >> 0xdU)) 
                         << 0xeU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C 
        = ((0x1ff7fffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C) 
           | (0x8000U & (((0x8000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1)
                           ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
                              >> 0xfU) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
                                          >> 0xeU)) 
                         << 0xfU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C 
        = ((0x1feffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C) 
           | (0x10000U & (((0x10000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1)
                            ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
                               >> 0x10U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
                                            >> 0xfU)) 
                          << 0x10U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C 
        = ((0x1fdffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C) 
           | (0x20000U & (((0x20000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1)
                            ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
                               >> 0x11U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
                                            >> 0x10U)) 
                          << 0x11U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C 
        = ((0x1fbffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C) 
           | (0x40000U & (((0x40000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1)
                            ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
                               >> 0x12U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
                                            >> 0x11U)) 
                          << 0x12U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C 
        = ((0x1f7ffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C) 
           | (0x80000U & (((0x80000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1)
                            ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
                               >> 0x13U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
                                            >> 0x12U)) 
                          << 0x13U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C 
        = ((0x1efffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C) 
           | (0x100000U & (((0x100000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1)
                             ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
                                >> 0x14U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
                                             >> 0x13U)) 
                           << 0x14U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C 
        = ((0x1dfffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C) 
           | (0x200000U & (((0x200000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1)
                             ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
                                >> 0x15U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
                                             >> 0x14U)) 
                           << 0x15U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C 
        = ((0x1bfffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C) 
           | (0x400000U & (((0x400000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1)
                             ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
                                >> 0x16U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
                                             >> 0x15U)) 
                           << 0x16U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C 
        = ((0x17fffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C) 
           | (0x800000U & (((0x800000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1)
                             ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
                                >> 0x17U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
                                             >> 0x16U)) 
                           << 0x17U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C 
        = ((0xffffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C) 
           | (0x1000000U & (((0x1000000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1)
                              ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S 
                                 >> 0x18U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S 
                                              >> 0x17U)) 
                            << 0x18U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
        = ((0x1fffffeU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S) 
           | (1U & ((1U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S)
                     ? vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp2
                     : vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
        = ((0x1fffffdU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S) 
           | (2U & (((2U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S)
                      ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp2 
                         >> 1U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1 
                                   >> 1U)) << 1U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
        = ((0x1fffffbU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S) 
           | (4U & (((4U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S)
                      ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp2 
                         >> 2U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1 
                                   >> 2U)) << 2U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
        = ((0x1fffff7U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S) 
           | (8U & (((8U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S)
                      ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp2 
                         >> 3U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1 
                                   >> 3U)) << 3U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
        = ((0x1ffffefU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S) 
           | (0x10U & (((0x10U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S)
                         ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp2 
                            >> 4U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1 
                                      >> 4U)) << 4U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
        = ((0x1ffffdfU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S) 
           | (0x20U & (((0x20U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S)
                         ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp2 
                            >> 5U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1 
                                      >> 5U)) << 5U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
        = ((0x1ffffbfU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S) 
           | (0x40U & (((0x40U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S)
                         ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp2 
                            >> 6U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1 
                                      >> 6U)) << 6U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
        = ((0x1ffff7fU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S) 
           | (0x80U & (((0x80U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S)
                         ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp2 
                            >> 7U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1 
                                      >> 7U)) << 7U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
        = ((0x1fffeffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S) 
           | (0x100U & (((0x100U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S)
                          ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp2 
                             >> 8U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1 
                                       >> 8U)) << 8U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
        = ((0x1fffdffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S) 
           | (0x200U & (((0x200U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S)
                          ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp2 
                             >> 9U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1 
                                       >> 9U)) << 9U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
        = ((0x1fffbffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S) 
           | (0x400U & (((0x400U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S)
                          ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp2 
                             >> 0xaU) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1 
                                         >> 0xaU)) 
                        << 0xaU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
        = ((0x1fff7ffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S) 
           | (0x800U & (((0x800U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S)
                          ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp2 
                             >> 0xbU) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1 
                                         >> 0xbU)) 
                        << 0xbU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
        = ((0x1ffefffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S) 
           | (0x1000U & (((0x1000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S)
                           ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp2 
                              >> 0xcU) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1 
                                          >> 0xcU)) 
                         << 0xcU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
        = ((0x1ffdfffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S) 
           | (0x2000U & (((0x2000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S)
                           ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp2 
                              >> 0xdU) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1 
                                          >> 0xdU)) 
                         << 0xdU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
        = ((0x1ffbfffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S) 
           | (0x4000U & (((0x4000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S)
                           ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp2 
                              >> 0xeU) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1 
                                          >> 0xeU)) 
                         << 0xeU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
        = ((0x1ff7fffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S) 
           | (0x8000U & (((0x8000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S)
                           ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp2 
                              >> 0xfU) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1 
                                          >> 0xfU)) 
                         << 0xfU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
        = ((0x1feffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S) 
           | (0x10000U & (((0x10000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S)
                            ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp2 
                               >> 0x10U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1 
                                            >> 0x10U)) 
                          << 0x10U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
        = ((0x1fdffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S) 
           | (0x20000U & (((0x20000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S)
                            ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp2 
                               >> 0x11U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1 
                                            >> 0x11U)) 
                          << 0x11U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
        = ((0x1fbffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S) 
           | (0x40000U & (((0x40000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S)
                            ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp2 
                               >> 0x12U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1 
                                            >> 0x12U)) 
                          << 0x12U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
        = ((0x1f7ffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S) 
           | (0x80000U & (((0x80000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S)
                            ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp2 
                               >> 0x13U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1 
                                            >> 0x13U)) 
                          << 0x13U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
        = ((0x1efffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S) 
           | (0x100000U & (((0x100000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S)
                             ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp2 
                                >> 0x14U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1 
                                             >> 0x14U)) 
                           << 0x14U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
        = ((0x1dfffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S) 
           | (0x200000U & (((0x200000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S)
                             ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp2 
                                >> 0x15U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1 
                                             >> 0x15U)) 
                           << 0x15U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
        = ((0x1bfffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S) 
           | (0x400000U & (((0x400000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S)
                             ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp2 
                                >> 0x16U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1 
                                             >> 0x16U)) 
                           << 0x16U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
        = ((0x17fffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S) 
           | (0x800000U & (((0x800000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S)
                             ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp2 
                                >> 0x17U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1 
                                             >> 0x17U)) 
                           << 0x17U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
        = ((0xffffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S) 
           | (0x1000000U & (((0x1000000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S)
                              ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp2 
                                 >> 0x18U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1 
                                              >> 0x18U)) 
                            << 0x18U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp2 
        = (0x3ffffffU & ((~ vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S) 
                         ^ (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C 
                            << 1U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1 
        = (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
           ^ (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C 
              << 1U));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C 
        = ((0x3fffffeU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C) 
           | (1U & ((~ vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1) 
                    & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C 
        = ((0x3fffffdU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C) 
           | (2U & (((~ (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1 
                         >> 1U)) << 1U) & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C 
        = ((0x3fffffbU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C) 
           | (4U & (((4U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1)
                      ? vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C
                      : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
                         >> 2U)) << 2U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C 
        = ((0x3fffff7U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C) 
           | (8U & (((8U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1)
                      ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
                         >> 1U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
                                   >> 3U)) << 3U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C 
        = ((0x3ffffefU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C) 
           | (0x10U & (((0x10U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1)
                         ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
                            >> 2U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
                                      >> 4U)) << 4U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C 
        = ((0x3ffffdfU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C) 
           | (0x20U & (((0x20U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1)
                         ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
                            >> 3U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
                                      >> 5U)) << 5U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C 
        = ((0x3ffffbfU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C) 
           | (0x40U & (((0x40U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1)
                         ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
                            >> 4U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
                                      >> 6U)) << 6U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C 
        = ((0x3ffff7fU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C) 
           | (0x80U & (((0x80U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1)
                         ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
                            >> 5U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
                                      >> 7U)) << 7U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C 
        = ((0x3fffeffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C) 
           | (0x100U & (((0x100U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1)
                          ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
                             >> 6U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
                                       >> 8U)) << 8U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C 
        = ((0x3fffdffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C) 
           | (0x200U & (((0x200U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1)
                          ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
                             >> 7U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
                                       >> 9U)) << 9U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C 
        = ((0x3fffbffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C) 
           | (0x400U & (((0x400U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1)
                          ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
                             >> 8U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
                                       >> 0xaU)) << 0xaU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C 
        = ((0x3fff7ffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C) 
           | (0x800U & (((0x800U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1)
                          ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
                             >> 9U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
                                       >> 0xbU)) << 0xbU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C 
        = ((0x3ffefffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C) 
           | (0x1000U & (((0x1000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1)
                           ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
                              >> 0xaU) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
                                          >> 0xcU)) 
                         << 0xcU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C 
        = ((0x3ffdfffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C) 
           | (0x2000U & (((0x2000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1)
                           ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
                              >> 0xbU) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
                                          >> 0xdU)) 
                         << 0xdU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C 
        = ((0x3ffbfffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C) 
           | (0x4000U & (((0x4000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1)
                           ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
                              >> 0xcU) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
                                          >> 0xeU)) 
                         << 0xeU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C 
        = ((0x3ff7fffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C) 
           | (0x8000U & (((0x8000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1)
                           ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
                              >> 0xdU) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
                                          >> 0xfU)) 
                         << 0xfU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C 
        = ((0x3feffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C) 
           | (0x10000U & (((0x10000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1)
                            ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
                               >> 0xeU) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
                                           >> 0x10U)) 
                          << 0x10U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C 
        = ((0x3fdffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C) 
           | (0x20000U & (((0x20000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1)
                            ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
                               >> 0xfU) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
                                           >> 0x11U)) 
                          << 0x11U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C 
        = ((0x3fbffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C) 
           | (0x40000U & (((0x40000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1)
                            ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
                               >> 0x10U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
                                            >> 0x12U)) 
                          << 0x12U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C 
        = ((0x3f7ffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C) 
           | (0x80000U & (((0x80000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1)
                            ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
                               >> 0x11U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
                                            >> 0x13U)) 
                          << 0x13U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C 
        = ((0x3efffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C) 
           | (0x100000U & (((0x100000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1)
                             ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
                                >> 0x12U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
                                             >> 0x14U)) 
                           << 0x14U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C 
        = ((0x3dfffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C) 
           | (0x200000U & (((0x200000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1)
                             ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
                                >> 0x13U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
                                             >> 0x15U)) 
                           << 0x15U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C 
        = ((0x3bfffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C) 
           | (0x400000U & (((0x400000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1)
                             ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
                                >> 0x14U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
                                             >> 0x16U)) 
                           << 0x16U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C 
        = ((0x37fffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C) 
           | (0x800000U & (((0x800000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1)
                             ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
                                >> 0x15U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
                                             >> 0x17U)) 
                           << 0x17U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C 
        = ((0x2ffffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C) 
           | (0x1000000U & (((0x1000000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1)
                              ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
                                 >> 0x16U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
                                              >> 0x18U)) 
                            << 0x18U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C 
        = ((0x1ffffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C) 
           | (0x2000000U & (((0x2000000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1)
                              ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C 
                                 >> 0x17U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S 
                                              >> 0x19U)) 
                            << 0x19U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S 
        = ((0x3fffffeU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S) 
           | (1U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S 
        = ((0x3fffffdU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S) 
           | (2U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S 
        = ((0x3fffffbU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S) 
           | (4U & (((1U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C)
                      ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp2 
                         >> 2U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1 
                                   >> 2U)) << 2U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S 
        = ((0x3fffff7U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S) 
           | (8U & (((2U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C)
                      ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp2 
                         >> 3U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1 
                                   >> 3U)) << 3U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S 
        = ((0x3ffffefU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S) 
           | (0x10U & (((4U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C)
                         ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp2 
                            >> 4U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1 
                                      >> 4U)) << 4U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S 
        = ((0x3ffffdfU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S) 
           | (0x20U & (((8U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C)
                         ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp2 
                            >> 5U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1 
                                      >> 5U)) << 5U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S 
        = ((0x3ffffbfU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S) 
           | (0x40U & (((0x10U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C)
                         ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp2 
                            >> 6U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1 
                                      >> 6U)) << 6U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S 
        = ((0x3ffff7fU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S) 
           | (0x80U & (((0x20U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C)
                         ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp2 
                            >> 7U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1 
                                      >> 7U)) << 7U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S 
        = ((0x3fffeffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S) 
           | (0x100U & (((0x40U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C)
                          ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp2 
                             >> 8U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1 
                                       >> 8U)) << 8U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S 
        = ((0x3fffdffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S) 
           | (0x200U & (((0x80U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C)
                          ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp2 
                             >> 9U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1 
                                       >> 9U)) << 9U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S 
        = ((0x3fffbffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S) 
           | (0x400U & (((0x100U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C)
                          ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp2 
                             >> 0xaU) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1 
                                         >> 0xaU)) 
                        << 0xaU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S 
        = ((0x3fff7ffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S) 
           | (0x800U & (((0x200U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C)
                          ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp2 
                             >> 0xbU) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1 
                                         >> 0xbU)) 
                        << 0xbU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S 
        = ((0x3ffefffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S) 
           | (0x1000U & (((0x400U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C)
                           ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp2 
                              >> 0xcU) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1 
                                          >> 0xcU)) 
                         << 0xcU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S 
        = ((0x3ffdfffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S) 
           | (0x2000U & (((0x800U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C)
                           ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp2 
                              >> 0xdU) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1 
                                          >> 0xdU)) 
                         << 0xdU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S 
        = ((0x3ffbfffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S) 
           | (0x4000U & (((0x1000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C)
                           ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp2 
                              >> 0xeU) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1 
                                          >> 0xeU)) 
                         << 0xeU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S 
        = ((0x3ff7fffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S) 
           | (0x8000U & (((0x2000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C)
                           ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp2 
                              >> 0xfU) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1 
                                          >> 0xfU)) 
                         << 0xfU)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S 
        = ((0x3feffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S) 
           | (0x10000U & (((0x4000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C)
                            ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp2 
                               >> 0x10U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1 
                                            >> 0x10U)) 
                          << 0x10U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S 
        = ((0x3fdffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S) 
           | (0x20000U & (((0x8000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C)
                            ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp2 
                               >> 0x11U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1 
                                            >> 0x11U)) 
                          << 0x11U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S 
        = ((0x3fbffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S) 
           | (0x40000U & (((0x10000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C)
                            ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp2 
                               >> 0x12U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1 
                                            >> 0x12U)) 
                          << 0x12U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S 
        = ((0x3f7ffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S) 
           | (0x80000U & (((0x20000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C)
                            ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp2 
                               >> 0x13U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1 
                                            >> 0x13U)) 
                          << 0x13U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S 
        = ((0x3efffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S) 
           | (0x100000U & (((0x40000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C)
                             ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp2 
                                >> 0x14U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1 
                                             >> 0x14U)) 
                           << 0x14U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S 
        = ((0x3dfffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S) 
           | (0x200000U & (((0x80000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C)
                             ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp2 
                                >> 0x15U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1 
                                             >> 0x15U)) 
                           << 0x15U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S 
        = ((0x3bfffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S) 
           | (0x400000U & (((0x100000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C)
                             ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp2 
                                >> 0x16U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1 
                                             >> 0x16U)) 
                           << 0x16U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S 
        = ((0x37fffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S) 
           | (0x800000U & (((0x200000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C)
                             ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp2 
                                >> 0x17U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1 
                                             >> 0x17U)) 
                           << 0x17U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S 
        = ((0x2ffffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S) 
           | (0x1000000U & (((0x400000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C)
                              ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp2 
                                 >> 0x18U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1 
                                              >> 0x18U)) 
                            << 0x18U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S 
        = ((0x1ffffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S) 
           | (0x2000000U & (((0x800000U & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C)
                              ? (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp2 
                                 >> 0x19U) : (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1 
                                              >> 0x19U)) 
                            << 0x19U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_3_0__DOT__temp2 
        = (0x3fU & ((~ (0x1fU & (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S 
                                 >> 0x15U))) ^ (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C 
                                                >> 0x14U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_3_0__DOT__temp1 
        = (0x3fU & ((0x1fU & (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S 
                              >> 0x15U)) ^ (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C 
                                            >> 0x14U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_3_0__C 
        = ((0x3eU & (IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_3_0__C)) 
           | (1U & ((1U & (IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_3_0__DOT__temp1))
                     ? (IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__CG__Const)
                     : (0x1fU & (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S 
                                 >> 0x15U)))));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_3_0__S 
        = ((0x3eU & (IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_3_0__S)) 
           | (1U & ((1U & (IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__CG__Const))
                     ? (IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_3_0__DOT__temp2)
                     : (IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_3_0__DOT__temp1))));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_3_0__C 
        = ((0x3dU & (IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_3_0__C)) 
           | (2U & (((2U & (IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_3_0__DOT__temp1))
                      ? ((IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__CG__Const) 
                         >> 1U) : (0xfU & (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S 
                                           >> 0x16U))) 
                    << 1U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_3_0__S 
        = ((0x3dU & (IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_3_0__S)) 
           | (2U & (((2U & (IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__CG__Const))
                      ? ((IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_3_0__DOT__temp2) 
                         >> 1U) : ((IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_3_0__DOT__temp1) 
                                   >> 1U)) << 1U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_3_0__C 
        = ((0x3bU & (IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_3_0__C)) 
           | (4U & (((4U & (IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_3_0__DOT__temp1))
                      ? ((IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__CG__Const) 
                         >> 2U) : (7U & (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S 
                                         >> 0x17U))) 
                    << 2U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_3_0__S 
        = ((0x3bU & (IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_3_0__S)) 
           | (4U & (((4U & (IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__CG__Const))
                      ? ((IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_3_0__DOT__temp2) 
                         >> 2U) : ((IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_3_0__DOT__temp1) 
                                   >> 2U)) << 2U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_3_0__C 
        = ((0x37U & (IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_3_0__C)) 
           | (8U & (((8U & (IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_3_0__DOT__temp1))
                      ? ((IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__CG__Const) 
                         >> 3U) : (3U & (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S 
                                         >> 0x18U))) 
                    << 3U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_3_0__S 
        = ((0x37U & (IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_3_0__S)) 
           | (8U & (((8U & (IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__CG__Const))
                      ? ((IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_3_0__DOT__temp2) 
                         >> 3U) : ((IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_3_0__DOT__temp1) 
                                   >> 3U)) << 3U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_3_0__C 
        = ((0x2fU & (IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_3_0__C)) 
           | (0x10U & (((0x10U & (IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_3_0__DOT__temp1))
                         ? ((IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__CG__Const) 
                            >> 4U) : (1U & (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S 
                                            >> 0x19U))) 
                       << 4U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_3_0__S 
        = ((0x2fU & (IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_3_0__S)) 
           | (0x10U & (((0x10U & (IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__CG__Const))
                         ? ((IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_3_0__DOT__temp2) 
                            >> 4U) : ((IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_3_0__DOT__temp1) 
                                      >> 4U)) << 4U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_3_0__C 
        = ((0x1fU & (IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_3_0__C)) 
           | (((0x20U & (IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_3_0__DOT__temp1))
                ? (1U & ((IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__CG__Const) 
                         >> 5U)) : 0U) << 5U));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_3_0__S 
        = ((0x1fU & (IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_3_0__S)) 
           | (0x20U & (((0x20U & (IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__CG__Const))
                         ? ((IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_3_0__DOT__temp2) 
                            >> 5U) : ((IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_3_0__DOT__temp1) 
                                      >> 5U)) << 5U)));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__final_sum 
        = (0x7ffffffU & ((((IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_3_0__S) 
                           << 0x15U) | (0x1fffffU & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S)) 
                         + ((0x7c00000U & ((IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_3_0__C) 
                                           << 0x16U)) 
                            | (0x1ffffeU & (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C 
                                            << 1U)))));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__exp_overflow 
        = (0x3ffU & (((0xffU & (vlTOPp->x >> 0x17U)) 
                      + (0xffU & (vlTOPp->y >> 0x17U))) 
                     + (0x380U | ((2U & (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__final_sum 
                                         >> 0x19U)) 
                                  | (1U & ((vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__final_sum 
                                            >> 0x19U) 
                                           & (~ (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__final_sum 
                                                 >> 0x1aU))))))));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__overflow 
        = (1U & (((~ ((IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__exp_overflow) 
                      >> 9U)) & ((IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__exp_overflow) 
                                 >> 8U)) | (((~ ((IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__exp_overflow) 
                                                 >> 9U)) 
                                             & (~ ((IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__exp_overflow) 
                                                   >> 8U))) 
                                            & (0xffU 
                                               == (0xffU 
                                                   & (IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__exp_overflow))))));
    vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__underflow 
        = (1U & (((IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__exp_overflow) 
                  >> 9U) & ((IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__exp_overflow) 
                            >> 8U)));
    vlTOPp->amlib_z = ((0x80000000U & (vlTOPp->x ^ vlTOPp->y)) 
                       | ((((IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__overflow)
                             ? 0xfeU : ((IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__underflow)
                                         ? 1U : (0xffU 
                                                 & (IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__exp_overflow)))) 
                           << 0x17U) | ((IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__overflow)
                                         ? 0x7fffffU
                                         : ((IData)(vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__underflow)
                                             ? 0U : 
                                            (0x7fffffU 
                                             & ((0x4000000U 
                                                 & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__final_sum)
                                                 ? 
                                                (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__final_sum 
                                                 >> 3U)
                                                 : 
                                                ((0x2000000U 
                                                  & vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__final_sum)
                                                  ? 
                                                 (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__final_sum 
                                                  >> 2U)
                                                  : 
                                                 (vlTOPp->amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__final_sum 
                                                  >> 1U))))))));
}

void Vamlib_oadm_mul_miter::_eval(Vamlib_oadm_mul_miter__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vamlib_oadm_mul_miter::_eval\n"); );
    Vamlib_oadm_mul_miter* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->_combo__TOP__2(vlSymsp);
}

void Vamlib_oadm_mul_miter::_eval_initial(Vamlib_oadm_mul_miter__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vamlib_oadm_mul_miter::_eval_initial\n"); );
    Vamlib_oadm_mul_miter* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
}

void Vamlib_oadm_mul_miter::final() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vamlib_oadm_mul_miter::final\n"); );
    // Variables
    Vamlib_oadm_mul_miter__Syms* __restrict vlSymsp = this->__VlSymsp;
    Vamlib_oadm_mul_miter* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
}

void Vamlib_oadm_mul_miter::_eval_settle(Vamlib_oadm_mul_miter__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vamlib_oadm_mul_miter::_eval_settle\n"); );
    Vamlib_oadm_mul_miter* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->_settle__TOP__1(vlSymsp);
}

VL_INLINE_OPT QData Vamlib_oadm_mul_miter::_change_request(Vamlib_oadm_mul_miter__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vamlib_oadm_mul_miter::_change_request\n"); );
    Vamlib_oadm_mul_miter* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    // Change detection
    QData __req = false;  // Logically a bool
    return __req;
}

#ifdef VL_DEBUG
void Vamlib_oadm_mul_miter::_eval_debug_assertions() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vamlib_oadm_mul_miter::_eval_debug_assertions\n"); );
}
#endif  // VL_DEBUG

void Vamlib_oadm_mul_miter::_ctor_var_reset() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vamlib_oadm_mul_miter::_ctor_var_reset\n"); );
    // Body
    x = VL_RAND_RESET_I(32);
    y = VL_RAND_RESET_I(32);
    amlib_z = VL_RAND_RESET_I(32);
    oadm_z = VL_RAND_RESET_I(32);
    amlib_oadm_mul_miter__DOT__amlib__DOT__exp_overflow = VL_RAND_RESET_I(10);
    amlib_oadm_mul_miter__DOT__amlib__DOT__overflow = VL_RAND_RESET_I(1);
    amlib_oadm_mul_miter__DOT__amlib__DOT__underflow = VL_RAND_RESET_I(1);
    amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__CG__Const = VL_RAND_RESET_I(4);
    amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__C = VL_RAND_RESET_I(24);
    amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_0__S = VL_RAND_RESET_I(24);
    amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__C = VL_RAND_RESET_I(24);
    amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_0_1__S = VL_RAND_RESET_I(24);
    amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__C = VL_RAND_RESET_I(25);
    amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_1_0__S = VL_RAND_RESET_I(25);
    amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__C = VL_RAND_RESET_I(26);
    amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_2_0__S = VL_RAND_RESET_I(26);
    amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_3_0__C = VL_RAND_RESET_I(6);
    amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT____Vcellout__Stage_3_0__S = VL_RAND_RESET_I(6);
    amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__final_sum = VL_RAND_RESET_I(27);
    amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPX__In = VL_RAND_RESET_I(23);
    amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__PGEN__DOT____Vcellinp__PP_GEN__BRA__1__KET____DOT__ConnectPPY__In = VL_RAND_RESET_I(23);
    amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp1 = VL_RAND_RESET_I(24);
    amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_0__DOT__temp2 = VL_RAND_RESET_I(24);
    amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp1 = VL_RAND_RESET_I(24);
    amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_0_1__DOT__temp2 = VL_RAND_RESET_I(24);
    amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp1 = VL_RAND_RESET_I(25);
    amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_1_0__DOT__temp2 = VL_RAND_RESET_I(25);
    amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp1 = VL_RAND_RESET_I(26);
    amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_2_0__DOT__temp2 = VL_RAND_RESET_I(26);
    amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_3_0__DOT__temp1 = VL_RAND_RESET_I(6);
    amlib_oadm_mul_miter__DOT__amlib__DOT__OAUM__DOT__Stage_3_0__DOT__temp2 = VL_RAND_RESET_I(6);
    amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__sign_input = VL_RAND_RESET_I(1);
    amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__x_inf = VL_RAND_RESET_I(1);
    amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__y_inf = VL_RAND_RESET_I(1);
    amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__invalid_input = VL_RAND_RESET_I(1);
    amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__infinity_input = VL_RAND_RESET_I(1);
    amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__zero_input = VL_RAND_RESET_I(1);
    amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__plane_full = VL_RAND_RESET_I(29);
    amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__shared_value = VL_RAND_RESET_I(29);
    amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__normalized_value = VL_RAND_RESET_I(29);
    amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__result_exponent = VL_RAND_RESET_I(10);
    amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__finite_result = VL_RAND_RESET_I(32);
    amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__result_comb = VL_RAND_RESET_I(32);
    amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__fixed_centered_plane__DOT__plane__DOT__x_residual_product = VL_RAND_RESET_I(28);
    amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__fixed_centered_plane__DOT__plane__DOT__y_residual_product = VL_RAND_RESET_I(28);
    amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__fixed_centered_plane__DOT__plane__DOT__x_rounding_error = VL_RAND_RESET_I(2);
    amlib_oadm_mul_miter__DOT__oadm__DOT__impl__DOT__fixed_centered_plane__DOT__plane__DOT__y_side_x_error = VL_RAND_RESET_I(2);
}
