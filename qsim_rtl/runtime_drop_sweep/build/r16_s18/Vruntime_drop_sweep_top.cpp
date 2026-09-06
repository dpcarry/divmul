// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vruntime_drop_sweep_top.h for the primary calling header

#include "Vruntime_drop_sweep_top.h"
#include "Vruntime_drop_sweep_top__Syms.h"

//==========

VL_CTOR_IMP(Vruntime_drop_sweep_top) {
    Vruntime_drop_sweep_top__Syms* __restrict vlSymsp = __VlSymsp = new Vruntime_drop_sweep_top__Syms(this, name());
    Vruntime_drop_sweep_top* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Reset internal values
    
    // Reset structure values
    _ctor_var_reset();
}

void Vruntime_drop_sweep_top::__Vconfigure(Vruntime_drop_sweep_top__Syms* vlSymsp, bool first) {
    if (0 && first) {}  // Prevent unused
    this->__VlSymsp = vlSymsp;
}

Vruntime_drop_sweep_top::~Vruntime_drop_sweep_top() {
    delete __VlSymsp; __VlSymsp=NULL;
}

void Vruntime_drop_sweep_top::eval() {
    VL_DEBUG_IF(VL_DBG_MSGF("+++++TOP Evaluate Vruntime_drop_sweep_top::eval\n"); );
    Vruntime_drop_sweep_top__Syms* __restrict vlSymsp = this->__VlSymsp;  // Setup global symbol table
    Vruntime_drop_sweep_top* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
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
            VL_FATAL_MT("/homes/user/stud/fall25/pd2827/ee6321/research/qsim_rtl/runtime_drop_sweep/runtime_drop_sweep_top.sv", 1, "",
                "Verilated model didn't converge\n"
                "- See DIDNOTCONVERGE in the Verilator manual");
        } else {
            __Vchange = _change_request(vlSymsp);
        }
    } while (VL_UNLIKELY(__Vchange));
}

void Vruntime_drop_sweep_top::_eval_initial_loop(Vruntime_drop_sweep_top__Syms* __restrict vlSymsp) {
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
            VL_FATAL_MT("/homes/user/stud/fall25/pd2827/ee6321/research/qsim_rtl/runtime_drop_sweep/runtime_drop_sweep_top.sv", 1, "",
                "Verilated model didn't DC converge\n"
                "- See DIDNOTCONVERGE in the Verilator manual");
        } else {
            __Vchange = _change_request(vlSymsp);
        }
    } while (VL_UNLIKELY(__Vchange));
}

VL_INLINE_OPT void Vruntime_drop_sweep_top::_combo__TOP__1(Vruntime_drop_sweep_top__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vruntime_drop_sweep_top::_combo__TOP__1\n"); );
    Vruntime_drop_sweep_top* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->runtime_drop_sweep_top__DOT__candidate__DOT__plane__DOT__y_midpoint 
        = ((0U == (IData)(vlTOPp->level)) ? 0x18U : 
           (0x3fU & ((1U == (IData)(vlTOPp->level))
                      ? ((IData)(0x14U) + (8U & (vlTOPp->y 
                                                 >> 0x13U)))
                      : ((2U == (IData)(vlTOPp->level))
                          ? ((IData)(0x12U) + (0xcU 
                                               & (vlTOPp->y 
                                                  >> 0x13U)))
                          : ((IData)(0x11U) + (0xeU 
                                               & (vlTOPp->y 
                                                  >> 0x13U)))))));
    vlTOPp->runtime_drop_sweep_top__DOT__candidate__DOT__plane__DOT__x_midpoint 
        = ((0U == (IData)(vlTOPp->level)) ? 0x18U : 
           (0x3fU & ((1U == (IData)(vlTOPp->level))
                      ? ((IData)(0x14U) + (8U & (vlTOPp->x 
                                                 >> 0x13U)))
                      : ((2U == (IData)(vlTOPp->level))
                          ? ((IData)(0x12U) + (0xcU 
                                               & (vlTOPp->x 
                                                  >> 0x13U)))
                          : ((IData)(0x11U) + (0xeU 
                                               & (vlTOPp->x 
                                                  >> 0x13U)))))));
    vlTOPp->runtime_drop_sweep_top__DOT__candidate__DOT__plane__DOT__x_product 
        = (0x1fffU & VL_MULS_III(13,13,13, (0x1fffU 
                                            & VL_EXTENDS_II(13,7, 
                                                            (0x7fU 
                                                             & (((0U 
                                                                  == (IData)(vlTOPp->level))
                                                                  ? 
                                                                 ((0x400000U 
                                                                   & ((~ 
                                                                       (vlTOPp->x 
                                                                        >> 0x16U)) 
                                                                      << 0x16U)) 
                                                                  | (0x3fffffU 
                                                                     & vlTOPp->x))
                                                                  : 
                                                                 ((1U 
                                                                   == (IData)(vlTOPp->level))
                                                                   ? 
                                                                  ((0x600000U 
                                                                    & (VL_NEGATE_I((IData)(
                                                                                (1U 
                                                                                & (~ 
                                                                                (vlTOPp->x 
                                                                                >> 0x15U))))) 
                                                                       << 0x15U)) 
                                                                   | (0x1fffffU 
                                                                      & vlTOPp->x))
                                                                   : 
                                                                  ((2U 
                                                                    == (IData)(vlTOPp->level))
                                                                    ? 
                                                                   ((0x700000U 
                                                                     & (VL_NEGATE_I((IData)(
                                                                                (1U 
                                                                                & (~ 
                                                                                (vlTOPp->x 
                                                                                >> 0x14U))))) 
                                                                        << 0x14U)) 
                                                                    | (0xfffffU 
                                                                       & vlTOPp->x))
                                                                    : 
                                                                   ((0x780000U 
                                                                     & (VL_NEGATE_I((IData)(
                                                                                (1U 
                                                                                & (~ 
                                                                                (vlTOPp->x 
                                                                                >> 0x13U))))) 
                                                                        << 0x13U)) 
                                                                    | (0x7ffffU 
                                                                       & vlTOPp->x))))) 
                                                                >> 0x10U)))), 
                                 (0x1fffU & VL_EXTENDS_II(13,6, (IData)(vlTOPp->runtime_drop_sweep_top__DOT__candidate__DOT__plane__DOT__y_midpoint)))));
    vlTOPp->runtime_drop_sweep_top__DOT__baseline__DOT__plane__DOT__x_product 
        = (0x7ffffU & VL_MULS_III(19,19,19, (0x7ffffU 
                                             & VL_EXTENDS_II(19,13, 
                                                             (0x1fffU 
                                                              & (((0U 
                                                                   == (IData)(vlTOPp->level))
                                                                   ? 
                                                                  ((0x400000U 
                                                                    & ((~ 
                                                                        (vlTOPp->x 
                                                                         >> 0x16U)) 
                                                                       << 0x16U)) 
                                                                   | (0x3fffffU 
                                                                      & vlTOPp->x))
                                                                   : 
                                                                  ((1U 
                                                                    == (IData)(vlTOPp->level))
                                                                    ? 
                                                                   ((0x600000U 
                                                                     & (VL_NEGATE_I((IData)(
                                                                                (1U 
                                                                                & (~ 
                                                                                (vlTOPp->x 
                                                                                >> 0x15U))))) 
                                                                        << 0x15U)) 
                                                                    | (0x1fffffU 
                                                                       & vlTOPp->x))
                                                                    : 
                                                                   ((2U 
                                                                     == (IData)(vlTOPp->level))
                                                                     ? 
                                                                    ((0x700000U 
                                                                      & (VL_NEGATE_I((IData)(
                                                                                (1U 
                                                                                & (~ 
                                                                                (vlTOPp->x 
                                                                                >> 0x14U))))) 
                                                                         << 0x14U)) 
                                                                     | (0xfffffU 
                                                                        & vlTOPp->x))
                                                                     : 
                                                                    ((0x780000U 
                                                                      & (VL_NEGATE_I((IData)(
                                                                                (1U 
                                                                                & (~ 
                                                                                (vlTOPp->x 
                                                                                >> 0x13U))))) 
                                                                         << 0x13U)) 
                                                                     | (0x7ffffU 
                                                                        & vlTOPp->x))))) 
                                                                 >> 0xaU)))), 
                                  (0x7ffffU & VL_EXTENDS_II(19,6, (IData)(vlTOPp->runtime_drop_sweep_top__DOT__candidate__DOT__plane__DOT__y_midpoint)))));
    vlTOPp->runtime_drop_sweep_top__DOT__candidate__DOT__plane__DOT__y_product 
        = (0x1fffU & VL_MULS_III(13,13,13, (0x1fffU 
                                            & VL_EXTENDS_II(13,7, 
                                                            (0x7fU 
                                                             & (((0U 
                                                                  == (IData)(vlTOPp->level))
                                                                  ? 
                                                                 ((0x400000U 
                                                                   & ((~ 
                                                                       (vlTOPp->y 
                                                                        >> 0x16U)) 
                                                                      << 0x16U)) 
                                                                  | (0x3fffffU 
                                                                     & vlTOPp->y))
                                                                  : 
                                                                 ((1U 
                                                                   == (IData)(vlTOPp->level))
                                                                   ? 
                                                                  ((0x600000U 
                                                                    & (VL_NEGATE_I((IData)(
                                                                                (1U 
                                                                                & (~ 
                                                                                (vlTOPp->y 
                                                                                >> 0x15U))))) 
                                                                       << 0x15U)) 
                                                                   | (0x1fffffU 
                                                                      & vlTOPp->y))
                                                                   : 
                                                                  ((2U 
                                                                    == (IData)(vlTOPp->level))
                                                                    ? 
                                                                   ((0x700000U 
                                                                     & (VL_NEGATE_I((IData)(
                                                                                (1U 
                                                                                & (~ 
                                                                                (vlTOPp->y 
                                                                                >> 0x14U))))) 
                                                                        << 0x14U)) 
                                                                    | (0xfffffU 
                                                                       & vlTOPp->y))
                                                                    : 
                                                                   ((0x780000U 
                                                                     & (VL_NEGATE_I((IData)(
                                                                                (1U 
                                                                                & (~ 
                                                                                (vlTOPp->y 
                                                                                >> 0x13U))))) 
                                                                        << 0x13U)) 
                                                                    | (0x7ffffU 
                                                                       & vlTOPp->y))))) 
                                                                >> 0x10U)))), 
                                 (0x1fffU & VL_EXTENDS_II(13,6, (IData)(vlTOPp->runtime_drop_sweep_top__DOT__candidate__DOT__plane__DOT__x_midpoint)))));
    vlTOPp->runtime_drop_sweep_top__DOT__baseline__DOT__plane__DOT__y_product 
        = (0x7ffffU & VL_MULS_III(19,19,19, (0x7ffffU 
                                             & VL_EXTENDS_II(19,13, 
                                                             (0x1fffU 
                                                              & (((0U 
                                                                   == (IData)(vlTOPp->level))
                                                                   ? 
                                                                  ((0x400000U 
                                                                    & ((~ 
                                                                        (vlTOPp->y 
                                                                         >> 0x16U)) 
                                                                       << 0x16U)) 
                                                                   | (0x3fffffU 
                                                                      & vlTOPp->y))
                                                                   : 
                                                                  ((1U 
                                                                    == (IData)(vlTOPp->level))
                                                                    ? 
                                                                   ((0x600000U 
                                                                     & (VL_NEGATE_I((IData)(
                                                                                (1U 
                                                                                & (~ 
                                                                                (vlTOPp->y 
                                                                                >> 0x15U))))) 
                                                                        << 0x15U)) 
                                                                    | (0x1fffffU 
                                                                       & vlTOPp->y))
                                                                    : 
                                                                   ((2U 
                                                                     == (IData)(vlTOPp->level))
                                                                     ? 
                                                                    ((0x700000U 
                                                                      & (VL_NEGATE_I((IData)(
                                                                                (1U 
                                                                                & (~ 
                                                                                (vlTOPp->y 
                                                                                >> 0x14U))))) 
                                                                         << 0x14U)) 
                                                                     | (0xfffffU 
                                                                        & vlTOPp->y))
                                                                     : 
                                                                    ((0x780000U 
                                                                      & (VL_NEGATE_I((IData)(
                                                                                (1U 
                                                                                & (~ 
                                                                                (vlTOPp->y 
                                                                                >> 0x13U))))) 
                                                                         << 0x13U)) 
                                                                     | (0x7ffffU 
                                                                        & vlTOPp->y))))) 
                                                                 >> 0xaU)))), 
                                  (0x7ffffU & VL_EXTENDS_II(19,6, (IData)(vlTOPp->runtime_drop_sweep_top__DOT__candidate__DOT__plane__DOT__x_midpoint)))));
    vlTOPp->runtime_drop_sweep_top__DOT__candidate__DOT__plane__DOT__centered_plane 
        = (0x1fffffffU & ((IData)(vlTOPp->divide_mode)
                           ? (((0x1ff8000U & (((IData)(vlTOPp->runtime_drop_sweep_top__DOT__candidate__DOT__plane__DOT__x_midpoint) 
                                               * (IData)(vlTOPp->runtime_drop_sweep_top__DOT__candidate__DOT__plane__DOT__y_midpoint)) 
                                              << 0xfU)) 
                               + ((0xfe000000U & (VL_NEGATE_I((IData)(
                                                                      (1U 
                                                                       & ((IData)(vlTOPp->runtime_drop_sweep_top__DOT__candidate__DOT__plane__DOT__x_product) 
                                                                          >> 0xcU)))) 
                                                  << 0x19U)) 
                                  | ((IData)(vlTOPp->runtime_drop_sweep_top__DOT__candidate__DOT__plane__DOT__x_product) 
                                     << 0xcU))) - (
                                                   (0xfe000000U 
                                                    & (VL_NEGATE_I((IData)(
                                                                           (1U 
                                                                            & ((IData)(vlTOPp->runtime_drop_sweep_top__DOT__candidate__DOT__plane__DOT__y_product) 
                                                                               >> 0xcU)))) 
                                                       << 0x19U)) 
                                                   | ((IData)(vlTOPp->runtime_drop_sweep_top__DOT__candidate__DOT__plane__DOT__y_product) 
                                                      << 0xcU)))
                           : (((0x1ff8000U & (((IData)(vlTOPp->runtime_drop_sweep_top__DOT__candidate__DOT__plane__DOT__x_midpoint) 
                                               * (IData)(vlTOPp->runtime_drop_sweep_top__DOT__candidate__DOT__plane__DOT__y_midpoint)) 
                                              << 0xfU)) 
                               + ((0xfe000000U & (VL_NEGATE_I((IData)(
                                                                      (1U 
                                                                       & ((IData)(vlTOPp->runtime_drop_sweep_top__DOT__candidate__DOT__plane__DOT__x_product) 
                                                                          >> 0xcU)))) 
                                                  << 0x19U)) 
                                  | ((IData)(vlTOPp->runtime_drop_sweep_top__DOT__candidate__DOT__plane__DOT__x_product) 
                                     << 0xcU))) + (
                                                   (0xfe000000U 
                                                    & (VL_NEGATE_I((IData)(
                                                                           (1U 
                                                                            & ((IData)(vlTOPp->runtime_drop_sweep_top__DOT__candidate__DOT__plane__DOT__y_product) 
                                                                               >> 0xcU)))) 
                                                       << 0x19U)) 
                                                   | ((IData)(vlTOPp->runtime_drop_sweep_top__DOT__candidate__DOT__plane__DOT__y_product) 
                                                      << 0xcU)))));
    vlTOPp->runtime_drop_sweep_top__DOT__baseline__DOT__plane__DOT__centered_plane 
        = (0x1fffffffU & ((IData)(vlTOPp->divide_mode)
                           ? (((0x1ff8000U & (((IData)(vlTOPp->runtime_drop_sweep_top__DOT__candidate__DOT__plane__DOT__x_midpoint) 
                                               * (IData)(vlTOPp->runtime_drop_sweep_top__DOT__candidate__DOT__plane__DOT__y_midpoint)) 
                                              << 0xfU)) 
                               + ((0xfe000000U & (VL_NEGATE_I((IData)(
                                                                      (1U 
                                                                       & (vlTOPp->runtime_drop_sweep_top__DOT__baseline__DOT__plane__DOT__x_product 
                                                                          >> 0x12U)))) 
                                                  << 0x19U)) 
                                  | (vlTOPp->runtime_drop_sweep_top__DOT__baseline__DOT__plane__DOT__x_product 
                                     << 6U))) - ((0xfe000000U 
                                                  & (VL_NEGATE_I((IData)(
                                                                         (1U 
                                                                          & (vlTOPp->runtime_drop_sweep_top__DOT__baseline__DOT__plane__DOT__y_product 
                                                                             >> 0x12U)))) 
                                                     << 0x19U)) 
                                                 | (vlTOPp->runtime_drop_sweep_top__DOT__baseline__DOT__plane__DOT__y_product 
                                                    << 6U)))
                           : (((0x1ff8000U & (((IData)(vlTOPp->runtime_drop_sweep_top__DOT__candidate__DOT__plane__DOT__x_midpoint) 
                                               * (IData)(vlTOPp->runtime_drop_sweep_top__DOT__candidate__DOT__plane__DOT__y_midpoint)) 
                                              << 0xfU)) 
                               + ((0xfe000000U & (VL_NEGATE_I((IData)(
                                                                      (1U 
                                                                       & (vlTOPp->runtime_drop_sweep_top__DOT__baseline__DOT__plane__DOT__x_product 
                                                                          >> 0x12U)))) 
                                                  << 0x19U)) 
                                  | (vlTOPp->runtime_drop_sweep_top__DOT__baseline__DOT__plane__DOT__x_product 
                                     << 6U))) + ((0xfe000000U 
                                                  & (VL_NEGATE_I((IData)(
                                                                         (1U 
                                                                          & (vlTOPp->runtime_drop_sweep_top__DOT__baseline__DOT__plane__DOT__y_product 
                                                                             >> 0x12U)))) 
                                                     << 0x19U)) 
                                                 | (vlTOPp->runtime_drop_sweep_top__DOT__baseline__DOT__plane__DOT__y_product 
                                                    << 6U)))));
    vlTOPp->runtime_drop_sweep_top__DOT__candidate__DOT__core_value 
        = ((IData)(vlTOPp->divide_mode) ? (0x1fff800U 
                                           & (((0x7fU 
                                                & (vlTOPp->runtime_drop_sweep_top__DOT__candidate__DOT__plane__DOT__centered_plane 
                                                   >> 0x12U)) 
                                               * ((0U 
                                                   == (IData)(vlTOPp->level))
                                                   ? 0x39U
                                                   : 
                                                  ((1U 
                                                    == (IData)(vlTOPp->level))
                                                    ? 
                                                   ((0x400000U 
                                                     & vlTOPp->y)
                                                     ? 0x2aU
                                                     : 0x52U)
                                                    : 
                                                   ((2U 
                                                     == (IData)(vlTOPp->level))
                                                     ? 
                                                    ((0U 
                                                      == 
                                                      (3U 
                                                       & (vlTOPp->y 
                                                          >> 0x15U)))
                                                      ? 0x65U
                                                      : 
                                                     ((1U 
                                                       == 
                                                       (3U 
                                                        & (vlTOPp->y 
                                                           >> 0x15U)))
                                                       ? 0x44U
                                                       : 
                                                      ((2U 
                                                        == 
                                                        (3U 
                                                         & (vlTOPp->y 
                                                            >> 0x15U)))
                                                        ? 0x30U
                                                        : 0x24U)))
                                                     : 
                                                    ((0x400000U 
                                                      & vlTOPp->y)
                                                      ? 
                                                     ((0x200000U 
                                                       & vlTOPp->y)
                                                       ? 
                                                      ((0x100000U 
                                                        & vlTOPp->y)
                                                        ? 0x22U
                                                        : 0x27U)
                                                       : 
                                                      ((0x100000U 
                                                        & vlTOPp->y)
                                                        ? 0x2dU
                                                        : 0x34U))
                                                      : 
                                                     ((0x200000U 
                                                       & vlTOPp->y)
                                                       ? 
                                                      ((0x100000U 
                                                        & vlTOPp->y)
                                                        ? 0x3eU
                                                        : 0x4aU)
                                                       : 
                                                      ((0x100000U 
                                                        & vlTOPp->y)
                                                        ? 0x5bU
                                                        : 0x71U))))))) 
                                              << 0xbU))
            : vlTOPp->runtime_drop_sweep_top__DOT__candidate__DOT__plane__DOT__centered_plane);
    vlTOPp->runtime_drop_sweep_top__DOT__baseline__DOT__core_value 
        = ((IData)(vlTOPp->divide_mode) ? (0x1ffff80U 
                                           & (((0x7ffU 
                                                & (vlTOPp->runtime_drop_sweep_top__DOT__baseline__DOT__plane__DOT__centered_plane 
                                                   >> 0xeU)) 
                                               * ((0U 
                                                   == (IData)(vlTOPp->level))
                                                   ? 0x39U
                                                   : 
                                                  ((1U 
                                                    == (IData)(vlTOPp->level))
                                                    ? 
                                                   ((0x400000U 
                                                     & vlTOPp->y)
                                                     ? 0x2aU
                                                     : 0x52U)
                                                    : 
                                                   ((2U 
                                                     == (IData)(vlTOPp->level))
                                                     ? 
                                                    ((0U 
                                                      == 
                                                      (3U 
                                                       & (vlTOPp->y 
                                                          >> 0x15U)))
                                                      ? 0x65U
                                                      : 
                                                     ((1U 
                                                       == 
                                                       (3U 
                                                        & (vlTOPp->y 
                                                           >> 0x15U)))
                                                       ? 0x44U
                                                       : 
                                                      ((2U 
                                                        == 
                                                        (3U 
                                                         & (vlTOPp->y 
                                                            >> 0x15U)))
                                                        ? 0x30U
                                                        : 0x24U)))
                                                     : 
                                                    ((0x400000U 
                                                      & vlTOPp->y)
                                                      ? 
                                                     ((0x200000U 
                                                       & vlTOPp->y)
                                                       ? 
                                                      ((0x100000U 
                                                        & vlTOPp->y)
                                                        ? 0x22U
                                                        : 0x27U)
                                                       : 
                                                      ((0x100000U 
                                                        & vlTOPp->y)
                                                        ? 0x2dU
                                                        : 0x34U))
                                                      : 
                                                     ((0x200000U 
                                                       & vlTOPp->y)
                                                       ? 
                                                      ((0x100000U 
                                                        & vlTOPp->y)
                                                        ? 0x3eU
                                                        : 0x4aU)
                                                       : 
                                                      ((0x100000U 
                                                        & vlTOPp->y)
                                                        ? 0x5bU
                                                        : 0x71U))))))) 
                                              << 7U))
            : vlTOPp->runtime_drop_sweep_top__DOT__baseline__DOT__plane__DOT__centered_plane);
    vlTOPp->runtime_drop_sweep_top__DOT__candidate__DOT__normalized_fraction 
        = (0x7fffffU & ((0x1000000U & vlTOPp->runtime_drop_sweep_top__DOT__candidate__DOT__core_value)
                         ? (vlTOPp->runtime_drop_sweep_top__DOT__candidate__DOT__core_value 
                            >> 1U) : ((0x800000U & vlTOPp->runtime_drop_sweep_top__DOT__candidate__DOT__core_value)
                                       ? vlTOPp->runtime_drop_sweep_top__DOT__candidate__DOT__core_value
                                       : ((0x400000U 
                                           & vlTOPp->runtime_drop_sweep_top__DOT__candidate__DOT__core_value)
                                           ? (0x7ffffeU 
                                              & (vlTOPp->runtime_drop_sweep_top__DOT__candidate__DOT__core_value 
                                                 << 1U))
                                           : (0x7ffffcU 
                                              & (vlTOPp->runtime_drop_sweep_top__DOT__candidate__DOT__core_value 
                                                 << 2U))))));
    vlTOPp->runtime_drop_sweep_top__DOT__candidate__DOT__exponent_adjust = 0U;
    if ((0x1000000U & vlTOPp->runtime_drop_sweep_top__DOT__candidate__DOT__core_value)) {
        vlTOPp->runtime_drop_sweep_top__DOT__candidate__DOT__exponent_adjust = 1U;
    } else {
        if ((1U & (~ (vlTOPp->runtime_drop_sweep_top__DOT__candidate__DOT__core_value 
                      >> 0x17U)))) {
            vlTOPp->runtime_drop_sweep_top__DOT__candidate__DOT__exponent_adjust 
                = ((0x400000U & vlTOPp->runtime_drop_sweep_top__DOT__candidate__DOT__core_value)
                    ? 7U : 6U);
        }
    }
    vlTOPp->runtime_drop_sweep_top__DOT__baseline__DOT__normalized_fraction 
        = (0x7fffffU & ((0x1000000U & vlTOPp->runtime_drop_sweep_top__DOT__baseline__DOT__core_value)
                         ? (vlTOPp->runtime_drop_sweep_top__DOT__baseline__DOT__core_value 
                            >> 1U) : ((0x800000U & vlTOPp->runtime_drop_sweep_top__DOT__baseline__DOT__core_value)
                                       ? vlTOPp->runtime_drop_sweep_top__DOT__baseline__DOT__core_value
                                       : ((0x400000U 
                                           & vlTOPp->runtime_drop_sweep_top__DOT__baseline__DOT__core_value)
                                           ? (0x7ffffeU 
                                              & (vlTOPp->runtime_drop_sweep_top__DOT__baseline__DOT__core_value 
                                                 << 1U))
                                           : (0x7ffffcU 
                                              & (vlTOPp->runtime_drop_sweep_top__DOT__baseline__DOT__core_value 
                                                 << 2U))))));
    vlTOPp->runtime_drop_sweep_top__DOT__baseline__DOT__exponent_adjust = 0U;
    if ((0x1000000U & vlTOPp->runtime_drop_sweep_top__DOT__baseline__DOT__core_value)) {
        vlTOPp->runtime_drop_sweep_top__DOT__baseline__DOT__exponent_adjust = 1U;
    } else {
        if ((1U & (~ (vlTOPp->runtime_drop_sweep_top__DOT__baseline__DOT__core_value 
                      >> 0x17U)))) {
            vlTOPp->runtime_drop_sweep_top__DOT__baseline__DOT__exponent_adjust 
                = ((0x400000U & vlTOPp->runtime_drop_sweep_top__DOT__baseline__DOT__core_value)
                    ? 7U : 6U);
        }
    }
    vlTOPp->runtime_drop_sweep_top__DOT__candidate__DOT__fp_wrapper__DOT__exponent_adjust_extended 
        = ((0xf8U & (VL_NEGATE_I((IData)((1U & ((IData)(vlTOPp->runtime_drop_sweep_top__DOT__candidate__DOT__exponent_adjust) 
                                                >> 2U)))) 
                     << 3U)) | (IData)(vlTOPp->runtime_drop_sweep_top__DOT__candidate__DOT__exponent_adjust));
    vlTOPp->runtime_drop_sweep_top__DOT__baseline__DOT__fp_wrapper__DOT__exponent_adjust_extended 
        = ((0xf8U & (VL_NEGATE_I((IData)((1U & ((IData)(vlTOPp->runtime_drop_sweep_top__DOT__baseline__DOT__exponent_adjust) 
                                                >> 2U)))) 
                     << 3U)) | (IData)(vlTOPp->runtime_drop_sweep_top__DOT__baseline__DOT__exponent_adjust));
    vlTOPp->candidate_result = ((0x80000000U & (vlTOPp->x 
                                                ^ vlTOPp->y)) 
                                | ((0x7f800000U & (
                                                   ((IData)(vlTOPp->divide_mode)
                                                     ? 
                                                    ((IData)(0x7fU) 
                                                     + 
                                                     (((vlTOPp->x 
                                                        >> 0x17U) 
                                                       - 
                                                       (vlTOPp->y 
                                                        >> 0x17U)) 
                                                      + (IData)(vlTOPp->runtime_drop_sweep_top__DOT__candidate__DOT__fp_wrapper__DOT__exponent_adjust_extended)))
                                                     : 
                                                    ((((vlTOPp->x 
                                                        >> 0x17U) 
                                                       + 
                                                       (vlTOPp->y 
                                                        >> 0x17U)) 
                                                      - (IData)(0x7fU)) 
                                                     + (IData)(vlTOPp->runtime_drop_sweep_top__DOT__candidate__DOT__fp_wrapper__DOT__exponent_adjust_extended))) 
                                                   << 0x17U)) 
                                   | vlTOPp->runtime_drop_sweep_top__DOT__candidate__DOT__normalized_fraction));
    vlTOPp->baseline_result = ((0x80000000U & (vlTOPp->x 
                                               ^ vlTOPp->y)) 
                               | ((0x7f800000U & (((IData)(vlTOPp->divide_mode)
                                                    ? 
                                                   ((IData)(0x7fU) 
                                                    + 
                                                    (((vlTOPp->x 
                                                       >> 0x17U) 
                                                      - 
                                                      (vlTOPp->y 
                                                       >> 0x17U)) 
                                                     + (IData)(vlTOPp->runtime_drop_sweep_top__DOT__baseline__DOT__fp_wrapper__DOT__exponent_adjust_extended)))
                                                    : 
                                                   ((((vlTOPp->x 
                                                       >> 0x17U) 
                                                      + 
                                                      (vlTOPp->y 
                                                       >> 0x17U)) 
                                                     - (IData)(0x7fU)) 
                                                    + (IData)(vlTOPp->runtime_drop_sweep_top__DOT__baseline__DOT__fp_wrapper__DOT__exponent_adjust_extended))) 
                                                  << 0x17U)) 
                                  | vlTOPp->runtime_drop_sweep_top__DOT__baseline__DOT__normalized_fraction));
}

void Vruntime_drop_sweep_top::_eval(Vruntime_drop_sweep_top__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vruntime_drop_sweep_top::_eval\n"); );
    Vruntime_drop_sweep_top* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->_combo__TOP__1(vlSymsp);
}

void Vruntime_drop_sweep_top::_eval_initial(Vruntime_drop_sweep_top__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vruntime_drop_sweep_top::_eval_initial\n"); );
    Vruntime_drop_sweep_top* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
}

void Vruntime_drop_sweep_top::final() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vruntime_drop_sweep_top::final\n"); );
    // Variables
    Vruntime_drop_sweep_top__Syms* __restrict vlSymsp = this->__VlSymsp;
    Vruntime_drop_sweep_top* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
}

void Vruntime_drop_sweep_top::_eval_settle(Vruntime_drop_sweep_top__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vruntime_drop_sweep_top::_eval_settle\n"); );
    Vruntime_drop_sweep_top* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->_combo__TOP__1(vlSymsp);
}

VL_INLINE_OPT QData Vruntime_drop_sweep_top::_change_request(Vruntime_drop_sweep_top__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vruntime_drop_sweep_top::_change_request\n"); );
    Vruntime_drop_sweep_top* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    // Change detection
    QData __req = false;  // Logically a bool
    return __req;
}

#ifdef VL_DEBUG
void Vruntime_drop_sweep_top::_eval_debug_assertions() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vruntime_drop_sweep_top::_eval_debug_assertions\n"); );
    // Body
    if (VL_UNLIKELY((level & 0xfcU))) {
        Verilated::overWidthError("level");}
    if (VL_UNLIKELY((divide_mode & 0xfeU))) {
        Verilated::overWidthError("divide_mode");}
}
#endif  // VL_DEBUG

void Vruntime_drop_sweep_top::_ctor_var_reset() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vruntime_drop_sweep_top::_ctor_var_reset\n"); );
    // Body
    x = VL_RAND_RESET_I(32);
    y = VL_RAND_RESET_I(32);
    level = VL_RAND_RESET_I(2);
    divide_mode = VL_RAND_RESET_I(1);
    candidate_result = VL_RAND_RESET_I(32);
    baseline_result = VL_RAND_RESET_I(32);
    runtime_drop_sweep_top__DOT__candidate__DOT__core_value = VL_RAND_RESET_I(29);
    runtime_drop_sweep_top__DOT__candidate__DOT__normalized_fraction = VL_RAND_RESET_I(23);
    runtime_drop_sweep_top__DOT__candidate__DOT__exponent_adjust = VL_RAND_RESET_I(3);
    runtime_drop_sweep_top__DOT__candidate__DOT__plane__DOT__x_midpoint = VL_RAND_RESET_I(6);
    runtime_drop_sweep_top__DOT__candidate__DOT__plane__DOT__y_midpoint = VL_RAND_RESET_I(6);
    runtime_drop_sweep_top__DOT__candidate__DOT__plane__DOT__x_product = VL_RAND_RESET_I(13);
    runtime_drop_sweep_top__DOT__candidate__DOT__plane__DOT__y_product = VL_RAND_RESET_I(13);
    runtime_drop_sweep_top__DOT__candidate__DOT__plane__DOT__centered_plane = VL_RAND_RESET_I(29);
    runtime_drop_sweep_top__DOT__candidate__DOT__fp_wrapper__DOT__exponent_adjust_extended = VL_RAND_RESET_I(8);
    runtime_drop_sweep_top__DOT__baseline__DOT__core_value = VL_RAND_RESET_I(29);
    runtime_drop_sweep_top__DOT__baseline__DOT__normalized_fraction = VL_RAND_RESET_I(23);
    runtime_drop_sweep_top__DOT__baseline__DOT__exponent_adjust = VL_RAND_RESET_I(3);
    runtime_drop_sweep_top__DOT__baseline__DOT__plane__DOT__x_product = VL_RAND_RESET_I(19);
    runtime_drop_sweep_top__DOT__baseline__DOT__plane__DOT__y_product = VL_RAND_RESET_I(19);
    runtime_drop_sweep_top__DOT__baseline__DOT__plane__DOT__centered_plane = VL_RAND_RESET_I(29);
    runtime_drop_sweep_top__DOT__baseline__DOT__fp_wrapper__DOT__exponent_adjust_extended = VL_RAND_RESET_I(8);
}
