// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vplsad_common_accuracy_top.h for the primary calling header

#include "Vplsad_common_accuracy_top.h"
#include "Vplsad_common_accuracy_top__Syms.h"

//==========

VL_CTOR_IMP(Vplsad_common_accuracy_top) {
    Vplsad_common_accuracy_top__Syms* __restrict vlSymsp = __VlSymsp = new Vplsad_common_accuracy_top__Syms(this, name());
    Vplsad_common_accuracy_top* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Reset internal values
    
    // Reset structure values
    _ctor_var_reset();
}

void Vplsad_common_accuracy_top::__Vconfigure(Vplsad_common_accuracy_top__Syms* vlSymsp, bool first) {
    if (0 && first) {}  // Prevent unused
    this->__VlSymsp = vlSymsp;
}

Vplsad_common_accuracy_top::~Vplsad_common_accuracy_top() {
    delete __VlSymsp; __VlSymsp=NULL;
}

void Vplsad_common_accuracy_top::eval() {
    VL_DEBUG_IF(VL_DBG_MSGF("+++++TOP Evaluate Vplsad_common_accuracy_top::eval\n"); );
    Vplsad_common_accuracy_top__Syms* __restrict vlSymsp = this->__VlSymsp;  // Setup global symbol table
    Vplsad_common_accuracy_top* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
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
            VL_FATAL_MT("plsad_common_accuracy_top.sv", 1, "",
                "Verilated model didn't converge\n"
                "- See DIDNOTCONVERGE in the Verilator manual");
        } else {
            __Vchange = _change_request(vlSymsp);
        }
    } while (VL_UNLIKELY(__Vchange));
}

void Vplsad_common_accuracy_top::_eval_initial_loop(Vplsad_common_accuracy_top__Syms* __restrict vlSymsp) {
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
            VL_FATAL_MT("plsad_common_accuracy_top.sv", 1, "",
                "Verilated model didn't DC converge\n"
                "- See DIDNOTCONVERGE in the Verilator manual");
        } else {
            __Vchange = _change_request(vlSymsp);
        }
    } while (VL_UNLIKELY(__Vchange));
}

VL_INLINE_OPT void Vplsad_common_accuracy_top::_combo__TOP__1(Vplsad_common_accuracy_top__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vplsad_common_accuracy_top::_combo__TOP__1\n"); );
    Vplsad_common_accuracy_top* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->plsad_common_accuracy_top__DOT__m4__DOT__impl__DOT__core__DOT__x2 
        = (0x7fffU & ((0x400000U & vlTOPp->y) ? ((0x200000U 
                                                  & vlTOPp->y)
                                                  ? 
                                                 ((0x100000U 
                                                   & vlTOPp->y)
                                                   ? 
                                                  (~ 
                                                   (0x1ff8U 
                                                    & (vlTOPp->y 
                                                       >> 0xaU)))
                                                   : 
                                                  (~ 
                                                   (0x1ff8U 
                                                    & (vlTOPp->y 
                                                       >> 0xaU))))
                                                  : 
                                                 ((0x100000U 
                                                   & vlTOPp->y)
                                                   ? 
                                                  (~ 
                                                   (0x1ff8U 
                                                    & (vlTOPp->y 
                                                       >> 0xaU)))
                                                   : 
                                                  (~ 
                                                   (0x1ff8U 
                                                    & (vlTOPp->y 
                                                       >> 0xaU)))))
                       : ((0x200000U & vlTOPp->y) ? 
                          ((0x100000U & vlTOPp->y) ? 
                           (~ (0x1ff8U & (vlTOPp->y 
                                          >> 0xaU)))
                            : (~ (0x3ff0U & (vlTOPp->y 
                                             >> 9U))))
                           : ((0x100000U & vlTOPp->y)
                               ? (~ (0x3ff0U & (vlTOPp->y 
                                                >> 9U)))
                               : (~ (0xffcU & (vlTOPp->y 
                                               >> 0xbU)))))));
    vlTOPp->plsad_common_accuracy_top__DOT__m6__DOT__impl__DOT__core__DOT__x2 
        = (0x7fffU & ((0x400000U & vlTOPp->y) ? ((0x200000U 
                                                  & vlTOPp->y)
                                                  ? 
                                                 ((0x100000U 
                                                   & vlTOPp->y)
                                                   ? 
                                                  (~ 
                                                   (0x1ff8U 
                                                    & (vlTOPp->y 
                                                       >> 0xaU)))
                                                   : 
                                                  (~ 
                                                   (0x1ff8U 
                                                    & (vlTOPp->y 
                                                       >> 0xaU))))
                                                  : 
                                                 ((0x100000U 
                                                   & vlTOPp->y)
                                                   ? 
                                                  (~ 
                                                   (0x1ff8U 
                                                    & (vlTOPp->y 
                                                       >> 0xaU)))
                                                   : 
                                                  (~ 
                                                   (0x1ff8U 
                                                    & (vlTOPp->y 
                                                       >> 0xaU)))))
                       : ((0x200000U & vlTOPp->y) ? 
                          ((0x100000U & vlTOPp->y) ? 
                           (~ (0x1ff8U & (vlTOPp->y 
                                          >> 0xaU)))
                            : (~ (0x3ff0U & (vlTOPp->y 
                                             >> 9U))))
                           : ((0x100000U & vlTOPp->y)
                               ? (~ (0x3ff0U & (vlTOPp->y 
                                                >> 9U)))
                               : (~ (0xffcU & (vlTOPp->y 
                                               >> 0xbU)))))));
    vlTOPp->plsad_common_accuracy_top__DOT__m8__DOT__impl__DOT__core__DOT__x2 
        = (0x7fffU & ((0x400000U & vlTOPp->y) ? ((0x200000U 
                                                  & vlTOPp->y)
                                                  ? 
                                                 ((0x100000U 
                                                   & vlTOPp->y)
                                                   ? 
                                                  (~ 
                                                   (0x1ff8U 
                                                    & (vlTOPp->y 
                                                       >> 0xaU)))
                                                   : 
                                                  (~ 
                                                   (0x1ff8U 
                                                    & (vlTOPp->y 
                                                       >> 0xaU))))
                                                  : 
                                                 ((0x100000U 
                                                   & vlTOPp->y)
                                                   ? 
                                                  (~ 
                                                   (0x1ff8U 
                                                    & (vlTOPp->y 
                                                       >> 0xaU)))
                                                   : 
                                                  (~ 
                                                   (0x1ff8U 
                                                    & (vlTOPp->y 
                                                       >> 0xaU)))))
                       : ((0x200000U & vlTOPp->y) ? 
                          ((0x100000U & vlTOPp->y) ? 
                           (~ (0x1ff8U & (vlTOPp->y 
                                          >> 0xaU)))
                            : (~ (0x3ff0U & (vlTOPp->y 
                                             >> 9U))))
                           : ((0x100000U & vlTOPp->y)
                               ? (~ (0x3ff0U & (vlTOPp->y 
                                                >> 9U)))
                               : (~ (0xffcU & (vlTOPp->y 
                                               >> 0xbU)))))));
    vlTOPp->plsad_common_accuracy_top__DOT__m4__DOT__impl__DOT__core__DOT__x1 
        = (0x7fffU & ((0x400000U & vlTOPp->y) ? ((0x200000U 
                                                  & vlTOPp->y)
                                                  ? 
                                                 ((0x100000U 
                                                   & vlTOPp->y)
                                                   ? 
                                                  (0x7feU 
                                                   & (vlTOPp->y 
                                                      >> 0xcU))
                                                   : 
                                                  (0x3ffU 
                                                   & (vlTOPp->x 
                                                      >> 0xdU)))
                                                  : 
                                                 ((0x100000U 
                                                   & vlTOPp->y)
                                                   ? 
                                                  (0x7feU 
                                                   & (vlTOPp->x 
                                                      >> 0xcU))
                                                   : 
                                                  (0x7feU 
                                                   & (vlTOPp->x 
                                                      >> 0xcU))))
                       : ((0x200000U & vlTOPp->y) ? 
                          ((0x100000U & vlTOPp->y) ? 
                           (~ (0xffcU & (vlTOPp->x 
                                         >> 0xbU)))
                            : (~ (0xffcU & (vlTOPp->x 
                                            >> 0xbU))))
                           : ((0x100000U & vlTOPp->y)
                               ? (~ (0x7feU & (vlTOPp->x 
                                               >> 0xcU)))
                               : (~ (0x3ff0U & (vlTOPp->y 
                                                >> 9U)))))));
    vlTOPp->plsad_common_accuracy_top__DOT__m6__DOT__impl__DOT__core__DOT__x1 
        = (0x7fffU & ((0x400000U & vlTOPp->y) ? ((0x200000U 
                                                  & vlTOPp->y)
                                                  ? 
                                                 ((0x100000U 
                                                   & vlTOPp->y)
                                                   ? 
                                                  (0x7feU 
                                                   & (vlTOPp->y 
                                                      >> 0xcU))
                                                   : 
                                                  (0x3ffU 
                                                   & (vlTOPp->x 
                                                      >> 0xdU)))
                                                  : 
                                                 ((0x100000U 
                                                   & vlTOPp->y)
                                                   ? 
                                                  (0x7feU 
                                                   & (vlTOPp->x 
                                                      >> 0xcU))
                                                   : 
                                                  (0x7feU 
                                                   & (vlTOPp->x 
                                                      >> 0xcU))))
                       : ((0x200000U & vlTOPp->y) ? 
                          ((0x100000U & vlTOPp->y) ? 
                           (~ (0xffcU & (vlTOPp->x 
                                         >> 0xbU)))
                            : (~ (0xffcU & (vlTOPp->x 
                                            >> 0xbU))))
                           : ((0x100000U & vlTOPp->y)
                               ? (~ (0x7feU & (vlTOPp->x 
                                               >> 0xcU)))
                               : (~ (0x3ff0U & (vlTOPp->y 
                                                >> 9U)))))));
    vlTOPp->plsad_common_accuracy_top__DOT__m8__DOT__impl__DOT__core__DOT__x1 
        = (0x7fffU & ((0x400000U & vlTOPp->y) ? ((0x200000U 
                                                  & vlTOPp->y)
                                                  ? 
                                                 ((0x100000U 
                                                   & vlTOPp->y)
                                                   ? 
                                                  (0x7feU 
                                                   & (vlTOPp->y 
                                                      >> 0xcU))
                                                   : 
                                                  (0x3ffU 
                                                   & (vlTOPp->x 
                                                      >> 0xdU)))
                                                  : 
                                                 ((0x100000U 
                                                   & vlTOPp->y)
                                                   ? 
                                                  (0x7feU 
                                                   & (vlTOPp->x 
                                                      >> 0xcU))
                                                   : 
                                                  (0x7feU 
                                                   & (vlTOPp->x 
                                                      >> 0xcU))))
                       : ((0x200000U & vlTOPp->y) ? 
                          ((0x100000U & vlTOPp->y) ? 
                           (~ (0xffcU & (vlTOPp->x 
                                         >> 0xbU)))
                            : (~ (0xffcU & (vlTOPp->x 
                                            >> 0xbU))))
                           : ((0x100000U & vlTOPp->y)
                               ? (~ (0x7feU & (vlTOPp->x 
                                               >> 0xcU)))
                               : (~ (0x3ff0U & (vlTOPp->y 
                                                >> 9U)))))));
    vlTOPp->plsad_common_accuracy_top__DOT__oadm_l0__DOT__implementation__DOT__plane__DOT__centered_plane 
        = (0x1fffffffU & (((IData)(0x1200000U) + ((0xfe000000U 
                                                   & (VL_NEGATE_I((IData)(
                                                                          (1U 
                                                                           & (VL_MULS_III(11,11,11, (IData)(0x18U), 
                                                                                (0x7ffU 
                                                                                & VL_EXTENDS_II(11,5, 
                                                                                ((0x10U 
                                                                                & ((~ 
                                                                                (vlTOPp->x 
                                                                                >> 0x16U)) 
                                                                                << 4U)) 
                                                                                | (0xfU 
                                                                                & (vlTOPp->x 
                                                                                >> 0x12U)))))) 
                                                                              >> 0xaU)))) 
                                                      << 0x19U)) 
                                                  | (0x1ffc000U 
                                                     & (VL_MULS_III(11,11,11, (IData)(0x18U), 
                                                                    (0x7ffU 
                                                                     & VL_EXTENDS_II(11,5, 
                                                                                ((0x10U 
                                                                                & ((~ 
                                                                                (vlTOPp->x 
                                                                                >> 0x16U)) 
                                                                                << 4U)) 
                                                                                | (0xfU 
                                                                                & (vlTOPp->x 
                                                                                >> 0x12U)))))) 
                                                        << 0xeU)))) 
                          - ((0xfe000000U & (VL_NEGATE_I((IData)(
                                                                 (1U 
                                                                  & (VL_MULS_III(11,11,11, (IData)(0x18U), 
                                                                                (0x7ffU 
                                                                                & VL_EXTENDS_II(11,5, 
                                                                                ((0x10U 
                                                                                & ((~ 
                                                                                (vlTOPp->y 
                                                                                >> 0x16U)) 
                                                                                << 4U)) 
                                                                                | (0xfU 
                                                                                & (vlTOPp->y 
                                                                                >> 0x12U)))))) 
                                                                     >> 0xaU)))) 
                                             << 0x19U)) 
                             | (0x1ffc000U & (VL_MULS_III(11,11,11, (IData)(0x18U), 
                                                          (0x7ffU 
                                                           & VL_EXTENDS_II(11,5, 
                                                                           ((0x10U 
                                                                             & ((~ 
                                                                                (vlTOPp->y 
                                                                                >> 0x16U)) 
                                                                                << 4U)) 
                                                                            | (0xfU 
                                                                               & (vlTOPp->y 
                                                                                >> 0x12U)))))) 
                                              << 0xeU)))));
    vlTOPp->plsad_common_accuracy_top__DOT__m4__DOT__impl__DOT__core__DOT__x3 
        = ((0x400000U & vlTOPp->y) ? ((0x200000U & vlTOPp->y)
                                       ? ((0x100000U 
                                           & vlTOPp->y)
                                           ? 0x3800U
                                           : 0x3d00U)
                                       : ((0x100000U 
                                           & vlTOPp->y)
                                           ? 0x3b00U
                                           : 0x3b80U))
            : ((0x200000U & vlTOPp->y) ? ((0x100000U 
                                           & vlTOPp->y)
                                           ? 0x3900U
                                           : 0x4500U)
                : ((0x100000U & vlTOPp->y) ? 0x4100U
                    : 0x4000U)));
    vlTOPp->plsad_common_accuracy_top__DOT__m4__DOT__impl__DOT__core__DOT__x0 
        = (0x7fffU & ((0x400000U & vlTOPp->y) ? ((0x200000U 
                                                  & vlTOPp->y)
                                                  ? 
                                                 ((0x100000U 
                                                   & vlTOPp->y)
                                                   ? 
                                                  (0x1ff8U 
                                                   & (vlTOPp->x 
                                                      >> 0xaU))
                                                   : 
                                                  (0x1ff8U 
                                                   & (vlTOPp->x 
                                                      >> 0xaU)))
                                                  : 
                                                 ((0x100000U 
                                                   & vlTOPp->y)
                                                   ? 
                                                  (0x1ff8U 
                                                   & (vlTOPp->x 
                                                      >> 0xaU))
                                                   : 
                                                  (0x1ff8U 
                                                   & (vlTOPp->x 
                                                      >> 0xaU))))
                       : (0x3ff0U & (vlTOPp->x >> 9U))));
    vlTOPp->plsad_common_accuracy_top__DOT__oadm_l1__DOT__implementation__DOT__plane__DOT__x_product 
        = (0x1fffU & VL_MULS_III(13,13,13, (0x1fffU 
                                            & VL_EXTENDS_II(13,7, 
                                                            ((0x60U 
                                                              & (VL_NEGATE_I((IData)(
                                                                                (1U 
                                                                                & (~ 
                                                                                (vlTOPp->x 
                                                                                >> 0x15U))))) 
                                                                 << 5U)) 
                                                             | (0x1fU 
                                                                & (vlTOPp->x 
                                                                   >> 0x10U))))), 
                                 (0x1fffU & VL_EXTENDS_II(13,6, 
                                                          (0x3fU 
                                                           & ((IData)(0x14U) 
                                                              + 
                                                              (8U 
                                                               & (vlTOPp->y 
                                                                  >> 0x13U))))))));
    vlTOPp->plsad_common_accuracy_top__DOT__oadm_l1__DOT__implementation__DOT__plane__DOT__y_product 
        = (0x1fffU & VL_MULS_III(13,13,13, (0x1fffU 
                                            & VL_EXTENDS_II(13,7, 
                                                            ((0x60U 
                                                              & (VL_NEGATE_I((IData)(
                                                                                (1U 
                                                                                & (~ 
                                                                                (vlTOPp->y 
                                                                                >> 0x15U))))) 
                                                                 << 5U)) 
                                                             | (0x1fU 
                                                                & (vlTOPp->y 
                                                                   >> 0x10U))))), 
                                 (0x1fffU & VL_EXTENDS_II(13,6, 
                                                          (0x3fU 
                                                           & ((IData)(0x14U) 
                                                              + 
                                                              (8U 
                                                               & (vlTOPp->x 
                                                                  >> 0x13U))))))));
    vlTOPp->plsad_common_accuracy_top__DOT__oadm_l2__DOT__implementation__DOT__plane__DOT__x_product 
        = (0x1fffU & VL_MULS_III(13,13,13, (0x1fffU 
                                            & VL_EXTENDS_II(13,7, 
                                                            ((0x70U 
                                                              & (VL_NEGATE_I((IData)(
                                                                                (1U 
                                                                                & (~ 
                                                                                (vlTOPp->x 
                                                                                >> 0x14U))))) 
                                                                 << 4U)) 
                                                             | (0xfU 
                                                                & (vlTOPp->x 
                                                                   >> 0x10U))))), 
                                 (0x1fffU & VL_EXTENDS_II(13,6, 
                                                          (0x3fU 
                                                           & ((IData)(0x12U) 
                                                              + 
                                                              (0xcU 
                                                               & (vlTOPp->y 
                                                                  >> 0x13U))))))));
    vlTOPp->plsad_common_accuracy_top__DOT__oadm_l2__DOT__implementation__DOT__plane__DOT__y_product 
        = (0x1fffU & VL_MULS_III(13,13,13, (0x1fffU 
                                            & VL_EXTENDS_II(13,7, 
                                                            ((0x70U 
                                                              & (VL_NEGATE_I((IData)(
                                                                                (1U 
                                                                                & (~ 
                                                                                (vlTOPp->y 
                                                                                >> 0x14U))))) 
                                                                 << 4U)) 
                                                             | (0xfU 
                                                                & (vlTOPp->y 
                                                                   >> 0x10U))))), 
                                 (0x1fffU & VL_EXTENDS_II(13,6, 
                                                          (0x3fU 
                                                           & ((IData)(0x12U) 
                                                              + 
                                                              (0xcU 
                                                               & (vlTOPp->x 
                                                                  >> 0x13U))))))));
    vlTOPp->plsad_common_accuracy_top__DOT__oadm_l3__DOT__implementation__DOT__plane__DOT__x_product 
        = (0x1fffU & VL_MULS_III(13,13,13, (0x1fffU 
                                            & VL_EXTENDS_II(13,7, 
                                                            ((0x78U 
                                                              & (VL_NEGATE_I((IData)(
                                                                                (1U 
                                                                                & (~ 
                                                                                (vlTOPp->x 
                                                                                >> 0x13U))))) 
                                                                 << 3U)) 
                                                             | (7U 
                                                                & (vlTOPp->x 
                                                                   >> 0x10U))))), 
                                 (0x1fffU & VL_EXTENDS_II(13,6, 
                                                          (0x3fU 
                                                           & ((IData)(0x11U) 
                                                              + 
                                                              (0xeU 
                                                               & (vlTOPp->y 
                                                                  >> 0x13U))))))));
    vlTOPp->plsad_common_accuracy_top__DOT__oadm_l3__DOT__implementation__DOT__plane__DOT__y_product 
        = (0x1fffU & VL_MULS_III(13,13,13, (0x1fffU 
                                            & VL_EXTENDS_II(13,7, 
                                                            ((0x78U 
                                                              & (VL_NEGATE_I((IData)(
                                                                                (1U 
                                                                                & (~ 
                                                                                (vlTOPp->y 
                                                                                >> 0x13U))))) 
                                                                 << 3U)) 
                                                             | (7U 
                                                                & (vlTOPp->y 
                                                                   >> 0x10U))))), 
                                 (0x1fffU & VL_EXTENDS_II(13,6, 
                                                          (0x3fU 
                                                           & ((IData)(0x11U) 
                                                              + 
                                                              (0xeU 
                                                               & (vlTOPp->x 
                                                                  >> 0x13U))))))));
    vlTOPp->plsad_common_accuracy_top__DOT__oadm_l0__DOT__implementation__DOT__exponent_adjust = 0U;
    if ((1U & (~ (3U & (((IData)(0x3bU) * (0x7fU & 
                                           (vlTOPp->plsad_common_accuracy_top__DOT__oadm_l0__DOT__implementation__DOT__plane__DOT__centered_plane 
                                            >> 0x12U))) 
                        >> 0xcU))))) {
        vlTOPp->plsad_common_accuracy_top__DOT__oadm_l0__DOT__implementation__DOT__exponent_adjust 
            = ((0x800U & ((IData)(0x3bU) * (0x7fU & 
                                            (vlTOPp->plsad_common_accuracy_top__DOT__oadm_l0__DOT__implementation__DOT__plane__DOT__centered_plane 
                                             >> 0x12U))))
                ? 7U : 6U);
    }
    vlTOPp->plsad_common_accuracy_top__DOT__oadm_l0__DOT__implementation__DOT__normalized_fraction 
        = ((0x1000U & ((IData)(0x3bU) * (0x7fU & (vlTOPp->plsad_common_accuracy_top__DOT__oadm_l0__DOT__implementation__DOT__plane__DOT__centered_plane 
                                                  >> 0x12U))))
            ? (0x7ff800U & (((IData)(0x3bU) * (0x7fU 
                                               & (vlTOPp->plsad_common_accuracy_top__DOT__oadm_l0__DOT__implementation__DOT__plane__DOT__centered_plane 
                                                  >> 0x12U))) 
                            << 0xbU)) : ((0x800U & 
                                          ((IData)(0x3bU) 
                                           * (0x7fU 
                                              & (vlTOPp->plsad_common_accuracy_top__DOT__oadm_l0__DOT__implementation__DOT__plane__DOT__centered_plane 
                                                 >> 0x12U))))
                                          ? (0x7ff000U 
                                             & (((IData)(0x3bU) 
                                                 * 
                                                 (0x7fU 
                                                  & (vlTOPp->plsad_common_accuracy_top__DOT__oadm_l0__DOT__implementation__DOT__plane__DOT__centered_plane 
                                                     >> 0x12U))) 
                                                << 0xcU))
                                          : (0x7fe000U 
                                             & (((IData)(0x3bU) 
                                                 * 
                                                 (0x7fU 
                                                  & (vlTOPp->plsad_common_accuracy_top__DOT__oadm_l0__DOT__implementation__DOT__plane__DOT__centered_plane 
                                                     >> 0x12U))) 
                                                << 0xdU))));
    vlTOPp->plsad_common_accuracy_top__DOT__m4__DOT__impl__DOT__core__DOT__quotient 
        = ((0x7800U & (((((((IData)(vlTOPp->plsad_common_accuracy_top__DOT__m4__DOT__impl__DOT__core__DOT__x0) 
                            >> 0xbU) + ((IData)(vlTOPp->plsad_common_accuracy_top__DOT__m4__DOT__impl__DOT__core__DOT__x1) 
                                        >> 0xbU)) + 
                          ((IData)(vlTOPp->plsad_common_accuracy_top__DOT__m4__DOT__impl__DOT__core__DOT__x2) 
                           >> 0xbU)) + ((IData)(vlTOPp->plsad_common_accuracy_top__DOT__m4__DOT__impl__DOT__core__DOT__x3) 
                                        >> 0xbU)) + 
                        (3U & (((((1U & ((IData)(vlTOPp->plsad_common_accuracy_top__DOT__m4__DOT__impl__DOT__core__DOT__x0) 
                                         >> 0xaU)) 
                                  + (1U & ((IData)(vlTOPp->plsad_common_accuracy_top__DOT__m4__DOT__impl__DOT__core__DOT__x1) 
                                           >> 0xaU))) 
                                 + (1U & ((IData)(vlTOPp->plsad_common_accuracy_top__DOT__m4__DOT__impl__DOT__core__DOT__x2) 
                                          >> 0xaU))) 
                                + (1U & ((IData)(vlTOPp->plsad_common_accuracy_top__DOT__m4__DOT__impl__DOT__core__DOT__x3) 
                                         >> 0xaU))) 
                               >> 1U))) << 0xbU)) | 
           (0x7ffU & ((((IData)(vlTOPp->plsad_common_accuracy_top__DOT__m4__DOT__impl__DOT__core__DOT__x0) 
                        | (IData)(vlTOPp->plsad_common_accuracy_top__DOT__m4__DOT__impl__DOT__core__DOT__x1)) 
                       | (IData)(vlTOPp->plsad_common_accuracy_top__DOT__m4__DOT__impl__DOT__core__DOT__x2)) 
                      | (IData)(vlTOPp->plsad_common_accuracy_top__DOT__m4__DOT__impl__DOT__core__DOT__x3))));
    vlTOPp->plsad_common_accuracy_top__DOT__m6__DOT__impl__DOT__core__DOT__quotient 
        = ((0x7e00U & (((((((IData)(vlTOPp->plsad_common_accuracy_top__DOT__m4__DOT__impl__DOT__core__DOT__x0) 
                            >> 9U) + ((IData)(vlTOPp->plsad_common_accuracy_top__DOT__m6__DOT__impl__DOT__core__DOT__x1) 
                                      >> 9U)) + ((IData)(vlTOPp->plsad_common_accuracy_top__DOT__m6__DOT__impl__DOT__core__DOT__x2) 
                                                 >> 9U)) 
                         + ((IData)(vlTOPp->plsad_common_accuracy_top__DOT__m4__DOT__impl__DOT__core__DOT__x3) 
                            >> 9U)) + (3U & (((((1U 
                                                 & ((IData)(vlTOPp->plsad_common_accuracy_top__DOT__m4__DOT__impl__DOT__core__DOT__x0) 
                                                    >> 8U)) 
                                                + (1U 
                                                   & ((IData)(vlTOPp->plsad_common_accuracy_top__DOT__m6__DOT__impl__DOT__core__DOT__x1) 
                                                      >> 8U))) 
                                               + (1U 
                                                  & ((IData)(vlTOPp->plsad_common_accuracy_top__DOT__m6__DOT__impl__DOT__core__DOT__x2) 
                                                     >> 8U))) 
                                              + (1U 
                                                 & ((IData)(vlTOPp->plsad_common_accuracy_top__DOT__m4__DOT__impl__DOT__core__DOT__x3) 
                                                    >> 8U))) 
                                             >> 1U))) 
                       << 9U)) | (0x1ffU & ((((IData)(vlTOPp->plsad_common_accuracy_top__DOT__m4__DOT__impl__DOT__core__DOT__x0) 
                                              | (IData)(vlTOPp->plsad_common_accuracy_top__DOT__m6__DOT__impl__DOT__core__DOT__x1)) 
                                             | (IData)(vlTOPp->plsad_common_accuracy_top__DOT__m6__DOT__impl__DOT__core__DOT__x2)) 
                                            | (IData)(vlTOPp->plsad_common_accuracy_top__DOT__m4__DOT__impl__DOT__core__DOT__x3))));
    vlTOPp->plsad_common_accuracy_top__DOT__m8__DOT__impl__DOT__core__DOT__quotient 
        = ((0x7f80U & (((((((IData)(vlTOPp->plsad_common_accuracy_top__DOT__m4__DOT__impl__DOT__core__DOT__x0) 
                            >> 7U) + ((IData)(vlTOPp->plsad_common_accuracy_top__DOT__m8__DOT__impl__DOT__core__DOT__x1) 
                                      >> 7U)) + ((IData)(vlTOPp->plsad_common_accuracy_top__DOT__m8__DOT__impl__DOT__core__DOT__x2) 
                                                 >> 7U)) 
                         + ((IData)(vlTOPp->plsad_common_accuracy_top__DOT__m4__DOT__impl__DOT__core__DOT__x3) 
                            >> 7U)) + (3U & (((((1U 
                                                 & ((IData)(vlTOPp->plsad_common_accuracy_top__DOT__m4__DOT__impl__DOT__core__DOT__x0) 
                                                    >> 6U)) 
                                                + (1U 
                                                   & ((IData)(vlTOPp->plsad_common_accuracy_top__DOT__m8__DOT__impl__DOT__core__DOT__x1) 
                                                      >> 6U))) 
                                               + (1U 
                                                  & ((IData)(vlTOPp->plsad_common_accuracy_top__DOT__m8__DOT__impl__DOT__core__DOT__x2) 
                                                     >> 6U))) 
                                              + (1U 
                                                 & ((IData)(vlTOPp->plsad_common_accuracy_top__DOT__m4__DOT__impl__DOT__core__DOT__x3) 
                                                    >> 6U))) 
                                             >> 1U))) 
                       << 7U)) | (0x7fU & ((((IData)(vlTOPp->plsad_common_accuracy_top__DOT__m4__DOT__impl__DOT__core__DOT__x0) 
                                             | (IData)(vlTOPp->plsad_common_accuracy_top__DOT__m8__DOT__impl__DOT__core__DOT__x1)) 
                                            | (IData)(vlTOPp->plsad_common_accuracy_top__DOT__m8__DOT__impl__DOT__core__DOT__x2)) 
                                           | (IData)(vlTOPp->plsad_common_accuracy_top__DOT__m4__DOT__impl__DOT__core__DOT__x3))));
    vlTOPp->plsad_common_accuracy_top__DOT__oadm_l1__DOT__implementation__DOT__reduced_scale_product 
        = (0xffffU & ((0x1ffU & ((((0x1ff8000U & ((
                                                   (0x3fU 
                                                    & ((IData)(0x14U) 
                                                       + 
                                                       (8U 
                                                        & (vlTOPp->x 
                                                           >> 0x13U)))) 
                                                   * 
                                                   (0x3fU 
                                                    & ((IData)(0x14U) 
                                                       + 
                                                       (8U 
                                                        & (vlTOPp->y 
                                                           >> 0x13U))))) 
                                                  << 0xfU)) 
                                   + ((0xfe000000U 
                                       & (VL_NEGATE_I((IData)(
                                                              (1U 
                                                               & ((IData)(vlTOPp->plsad_common_accuracy_top__DOT__oadm_l1__DOT__implementation__DOT__plane__DOT__x_product) 
                                                                  >> 0xcU)))) 
                                          << 0x19U)) 
                                      | ((IData)(vlTOPp->plsad_common_accuracy_top__DOT__oadm_l1__DOT__implementation__DOT__plane__DOT__x_product) 
                                         << 0xcU))) 
                                  - ((0xfe000000U & 
                                      (VL_NEGATE_I((IData)(
                                                           (1U 
                                                            & ((IData)(vlTOPp->plsad_common_accuracy_top__DOT__oadm_l1__DOT__implementation__DOT__plane__DOT__y_product) 
                                                               >> 0xcU)))) 
                                       << 0x19U)) | 
                                     ((IData)(vlTOPp->plsad_common_accuracy_top__DOT__oadm_l1__DOT__implementation__DOT__plane__DOT__y_product) 
                                      << 0xcU))) >> 0x10U)) 
                      * ((0x400000U & vlTOPp->y) ? 0x2aU
                          : 0x53U)));
    vlTOPp->plsad_common_accuracy_top__DOT__oadm_l2__DOT__implementation__DOT__reduced_scale_product 
        = (0x1ffffU & ((0x1ffU & ((((0x1ff8000U & (
                                                   ((0x3fU 
                                                     & ((IData)(0x12U) 
                                                        + 
                                                        (0xcU 
                                                         & (vlTOPp->x 
                                                            >> 0x13U)))) 
                                                    * 
                                                    (0x3fU 
                                                     & ((IData)(0x12U) 
                                                        + 
                                                        (0xcU 
                                                         & (vlTOPp->y 
                                                            >> 0x13U))))) 
                                                   << 0xfU)) 
                                    + ((0xfe000000U 
                                        & (VL_NEGATE_I((IData)(
                                                               (1U 
                                                                & ((IData)(vlTOPp->plsad_common_accuracy_top__DOT__oadm_l2__DOT__implementation__DOT__plane__DOT__x_product) 
                                                                   >> 0xcU)))) 
                                           << 0x19U)) 
                                       | ((IData)(vlTOPp->plsad_common_accuracy_top__DOT__oadm_l2__DOT__implementation__DOT__plane__DOT__x_product) 
                                          << 0xcU))) 
                                   - ((0xfe000000U 
                                       & (VL_NEGATE_I((IData)(
                                                              (1U 
                                                               & ((IData)(vlTOPp->plsad_common_accuracy_top__DOT__oadm_l2__DOT__implementation__DOT__plane__DOT__y_product) 
                                                                  >> 0xcU)))) 
                                          << 0x19U)) 
                                      | ((IData)(vlTOPp->plsad_common_accuracy_top__DOT__oadm_l2__DOT__implementation__DOT__plane__DOT__y_product) 
                                         << 0xcU))) 
                                  >> 0x10U)) * ((0U 
                                                 == 
                                                 (3U 
                                                  & (vlTOPp->y 
                                                     >> 0x15U)))
                                                 ? 0xcbU
                                                 : 
                                                ((1U 
                                                  == 
                                                  (3U 
                                                   & (vlTOPp->y 
                                                      >> 0x15U)))
                                                  ? 0x88U
                                                  : 
                                                 ((2U 
                                                   == 
                                                   (3U 
                                                    & (vlTOPp->y 
                                                       >> 0x15U)))
                                                   ? 0x61U
                                                   : 0x49U)))));
    vlTOPp->plsad_common_accuracy_top__DOT__oadm_l3__DOT__implementation__DOT__reduced_scale_product 
        = (0x1ffffU & ((0x1ffU & ((((0x1ff8000U & (
                                                   ((0x3fU 
                                                     & ((IData)(0x11U) 
                                                        + 
                                                        (0xeU 
                                                         & (vlTOPp->x 
                                                            >> 0x13U)))) 
                                                    * 
                                                    (0x3fU 
                                                     & ((IData)(0x11U) 
                                                        + 
                                                        (0xeU 
                                                         & (vlTOPp->y 
                                                            >> 0x13U))))) 
                                                   << 0xfU)) 
                                    + ((0xfe000000U 
                                        & (VL_NEGATE_I((IData)(
                                                               (1U 
                                                                & ((IData)(vlTOPp->plsad_common_accuracy_top__DOT__oadm_l3__DOT__implementation__DOT__plane__DOT__x_product) 
                                                                   >> 0xcU)))) 
                                           << 0x19U)) 
                                       | ((IData)(vlTOPp->plsad_common_accuracy_top__DOT__oadm_l3__DOT__implementation__DOT__plane__DOT__x_product) 
                                          << 0xcU))) 
                                   - ((0xfe000000U 
                                       & (VL_NEGATE_I((IData)(
                                                              (1U 
                                                               & ((IData)(vlTOPp->plsad_common_accuracy_top__DOT__oadm_l3__DOT__implementation__DOT__plane__DOT__y_product) 
                                                                  >> 0xcU)))) 
                                          << 0x19U)) 
                                      | ((IData)(vlTOPp->plsad_common_accuracy_top__DOT__oadm_l3__DOT__implementation__DOT__plane__DOT__y_product) 
                                         << 0xcU))) 
                                  >> 0x10U)) * ((0x400000U 
                                                 & vlTOPp->y)
                                                 ? 
                                                ((0x200000U 
                                                  & vlTOPp->y)
                                                  ? 
                                                 ((0x100000U 
                                                   & vlTOPp->y)
                                                   ? 0x44U
                                                   : 0x4eU)
                                                  : 
                                                 ((0x100000U 
                                                   & vlTOPp->y)
                                                   ? 0x5aU
                                                   : 0x69U))
                                                 : 
                                                ((0x200000U 
                                                  & vlTOPp->y)
                                                  ? 
                                                 ((0x100000U 
                                                   & vlTOPp->y)
                                                   ? 0x7cU
                                                   : 0x95U)
                                                  : 
                                                 ((0x100000U 
                                                   & vlTOPp->y)
                                                   ? 0xb6U
                                                   : 0xe3U)))));
    vlTOPp->oadm_l0_out = ((0x80000000U & (vlTOPp->x 
                                           ^ vlTOPp->y)) 
                           | ((0x7f800000U & (((IData)(0x7fU) 
                                               + ((
                                                   (vlTOPp->x 
                                                    >> 0x17U) 
                                                   - 
                                                   (vlTOPp->y 
                                                    >> 0x17U)) 
                                                  + 
                                                  ((0xf8U 
                                                    & (VL_NEGATE_I((IData)(
                                                                           (1U 
                                                                            & ((IData)(vlTOPp->plsad_common_accuracy_top__DOT__oadm_l0__DOT__implementation__DOT__exponent_adjust) 
                                                                               >> 2U)))) 
                                                       << 3U)) 
                                                   | (IData)(vlTOPp->plsad_common_accuracy_top__DOT__oadm_l0__DOT__implementation__DOT__exponent_adjust)))) 
                                              << 0x17U)) 
                              | vlTOPp->plsad_common_accuracy_top__DOT__oadm_l0__DOT__implementation__DOT__normalized_fraction));
    vlTOPp->m4_out = ((0x80000000U & (vlTOPp->x ^ vlTOPp->y)) 
                      | ((0x7f800000U & (((IData)(0x7fU) 
                                          + (((vlTOPp->x 
                                               >> 0x17U) 
                                              - (vlTOPp->y 
                                                 >> 0x17U)) 
                                             + ((0xf8U 
                                                 & (VL_NEGATE_I((IData)(
                                                                        (1U 
                                                                         & (VL_NEGATE_I(
                                                                                (1U 
                                                                                & (~ 
                                                                                ((IData)(vlTOPp->plsad_common_accuracy_top__DOT__m4__DOT__impl__DOT__core__DOT__quotient) 
                                                                                >> 0xeU)))) 
                                                                            >> 2U)))) 
                                                    << 3U)) 
                                                | (7U 
                                                   & VL_NEGATE_I(
                                                                 (1U 
                                                                  & (~ 
                                                                     ((IData)(vlTOPp->plsad_common_accuracy_top__DOT__m4__DOT__impl__DOT__core__DOT__quotient) 
                                                                      >> 0xeU)))))))) 
                                         << 0x17U)) 
                         | (0x7fe000U & (((0x4000U 
                                           & (IData)(vlTOPp->plsad_common_accuracy_top__DOT__m4__DOT__impl__DOT__core__DOT__quotient))
                                           ? (IData)(vlTOPp->plsad_common_accuracy_top__DOT__m4__DOT__impl__DOT__core__DOT__quotient)
                                           : ((IData)(vlTOPp->plsad_common_accuracy_top__DOT__m4__DOT__impl__DOT__core__DOT__quotient) 
                                              << 1U)) 
                                         << 9U))));
    vlTOPp->m6_out = ((0x80000000U & (vlTOPp->x ^ vlTOPp->y)) 
                      | ((0x7f800000U & (((IData)(0x7fU) 
                                          + (((vlTOPp->x 
                                               >> 0x17U) 
                                              - (vlTOPp->y 
                                                 >> 0x17U)) 
                                             + ((0xf8U 
                                                 & (VL_NEGATE_I((IData)(
                                                                        (1U 
                                                                         & (VL_NEGATE_I(
                                                                                (1U 
                                                                                & (~ 
                                                                                ((IData)(vlTOPp->plsad_common_accuracy_top__DOT__m6__DOT__impl__DOT__core__DOT__quotient) 
                                                                                >> 0xeU)))) 
                                                                            >> 2U)))) 
                                                    << 3U)) 
                                                | (7U 
                                                   & VL_NEGATE_I(
                                                                 (1U 
                                                                  & (~ 
                                                                     ((IData)(vlTOPp->plsad_common_accuracy_top__DOT__m6__DOT__impl__DOT__core__DOT__quotient) 
                                                                      >> 0xeU)))))))) 
                                         << 0x17U)) 
                         | (0x7fe000U & (((0x4000U 
                                           & (IData)(vlTOPp->plsad_common_accuracy_top__DOT__m6__DOT__impl__DOT__core__DOT__quotient))
                                           ? (IData)(vlTOPp->plsad_common_accuracy_top__DOT__m6__DOT__impl__DOT__core__DOT__quotient)
                                           : ((IData)(vlTOPp->plsad_common_accuracy_top__DOT__m6__DOT__impl__DOT__core__DOT__quotient) 
                                              << 1U)) 
                                         << 9U))));
    vlTOPp->m8_out = ((0x80000000U & (vlTOPp->x ^ vlTOPp->y)) 
                      | ((0x7f800000U & (((IData)(0x7fU) 
                                          + (((vlTOPp->x 
                                               >> 0x17U) 
                                              - (vlTOPp->y 
                                                 >> 0x17U)) 
                                             + ((0xf8U 
                                                 & (VL_NEGATE_I((IData)(
                                                                        (1U 
                                                                         & (VL_NEGATE_I(
                                                                                (1U 
                                                                                & (~ 
                                                                                ((IData)(vlTOPp->plsad_common_accuracy_top__DOT__m8__DOT__impl__DOT__core__DOT__quotient) 
                                                                                >> 0xeU)))) 
                                                                            >> 2U)))) 
                                                    << 3U)) 
                                                | (7U 
                                                   & VL_NEGATE_I(
                                                                 (1U 
                                                                  & (~ 
                                                                     ((IData)(vlTOPp->plsad_common_accuracy_top__DOT__m8__DOT__impl__DOT__core__DOT__quotient) 
                                                                      >> 0xeU)))))))) 
                                         << 0x17U)) 
                         | (0x7fe000U & (((0x4000U 
                                           & (IData)(vlTOPp->plsad_common_accuracy_top__DOT__m8__DOT__impl__DOT__core__DOT__quotient))
                                           ? (IData)(vlTOPp->plsad_common_accuracy_top__DOT__m8__DOT__impl__DOT__core__DOT__quotient)
                                           : ((IData)(vlTOPp->plsad_common_accuracy_top__DOT__m8__DOT__impl__DOT__core__DOT__quotient) 
                                              << 1U)) 
                                         << 9U))));
    vlTOPp->plsad_common_accuracy_top__DOT__oadm_l1__DOT__implementation__DOT__exponent_adjust = 0U;
    if ((1U & (~ ((IData)(vlTOPp->plsad_common_accuracy_top__DOT__oadm_l1__DOT__implementation__DOT__reduced_scale_product) 
                  >> 0xeU)))) {
        vlTOPp->plsad_common_accuracy_top__DOT__oadm_l1__DOT__implementation__DOT__exponent_adjust 
            = ((0x2000U & (IData)(vlTOPp->plsad_common_accuracy_top__DOT__oadm_l1__DOT__implementation__DOT__reduced_scale_product))
                ? 7U : 6U);
    }
    vlTOPp->plsad_common_accuracy_top__DOT__oadm_l1__DOT__implementation__DOT__normalized_fraction 
        = ((0x4000U & (IData)(vlTOPp->plsad_common_accuracy_top__DOT__oadm_l1__DOT__implementation__DOT__reduced_scale_product))
            ? (0x7ffe00U & ((IData)(vlTOPp->plsad_common_accuracy_top__DOT__oadm_l1__DOT__implementation__DOT__reduced_scale_product) 
                            << 9U)) : ((0x2000U & (IData)(vlTOPp->plsad_common_accuracy_top__DOT__oadm_l1__DOT__implementation__DOT__reduced_scale_product))
                                        ? (0x7ffc00U 
                                           & ((IData)(vlTOPp->plsad_common_accuracy_top__DOT__oadm_l1__DOT__implementation__DOT__reduced_scale_product) 
                                              << 0xaU))
                                        : (0x7ff800U 
                                           & ((IData)(vlTOPp->plsad_common_accuracy_top__DOT__oadm_l1__DOT__implementation__DOT__reduced_scale_product) 
                                              << 0xbU))));
    vlTOPp->plsad_common_accuracy_top__DOT__oadm_l2__DOT__implementation__DOT__exponent_adjust = 0U;
    if ((1U & (~ (vlTOPp->plsad_common_accuracy_top__DOT__oadm_l2__DOT__implementation__DOT__reduced_scale_product 
                  >> 0xfU)))) {
        vlTOPp->plsad_common_accuracy_top__DOT__oadm_l2__DOT__implementation__DOT__exponent_adjust 
            = ((0x4000U & vlTOPp->plsad_common_accuracy_top__DOT__oadm_l2__DOT__implementation__DOT__reduced_scale_product)
                ? 7U : 6U);
    }
    vlTOPp->plsad_common_accuracy_top__DOT__oadm_l2__DOT__implementation__DOT__normalized_fraction 
        = ((0x8000U & vlTOPp->plsad_common_accuracy_top__DOT__oadm_l2__DOT__implementation__DOT__reduced_scale_product)
            ? (0x7fff00U & (vlTOPp->plsad_common_accuracy_top__DOT__oadm_l2__DOT__implementation__DOT__reduced_scale_product 
                            << 8U)) : ((0x4000U & vlTOPp->plsad_common_accuracy_top__DOT__oadm_l2__DOT__implementation__DOT__reduced_scale_product)
                                        ? (0x7ffe00U 
                                           & (vlTOPp->plsad_common_accuracy_top__DOT__oadm_l2__DOT__implementation__DOT__reduced_scale_product 
                                              << 9U))
                                        : (0x7ffc00U 
                                           & (vlTOPp->plsad_common_accuracy_top__DOT__oadm_l2__DOT__implementation__DOT__reduced_scale_product 
                                              << 0xaU))));
    vlTOPp->plsad_common_accuracy_top__DOT__oadm_l3__DOT__implementation__DOT__exponent_adjust = 0U;
    if ((1U & (~ (vlTOPp->plsad_common_accuracy_top__DOT__oadm_l3__DOT__implementation__DOT__reduced_scale_product 
                  >> 0xfU)))) {
        vlTOPp->plsad_common_accuracy_top__DOT__oadm_l3__DOT__implementation__DOT__exponent_adjust 
            = ((0x4000U & vlTOPp->plsad_common_accuracy_top__DOT__oadm_l3__DOT__implementation__DOT__reduced_scale_product)
                ? 7U : 6U);
    }
    vlTOPp->plsad_common_accuracy_top__DOT__oadm_l3__DOT__implementation__DOT__normalized_fraction 
        = ((0x8000U & vlTOPp->plsad_common_accuracy_top__DOT__oadm_l3__DOT__implementation__DOT__reduced_scale_product)
            ? (0x7fff00U & (vlTOPp->plsad_common_accuracy_top__DOT__oadm_l3__DOT__implementation__DOT__reduced_scale_product 
                            << 8U)) : ((0x4000U & vlTOPp->plsad_common_accuracy_top__DOT__oadm_l3__DOT__implementation__DOT__reduced_scale_product)
                                        ? (0x7ffe00U 
                                           & (vlTOPp->plsad_common_accuracy_top__DOT__oadm_l3__DOT__implementation__DOT__reduced_scale_product 
                                              << 9U))
                                        : (0x7ffc00U 
                                           & (vlTOPp->plsad_common_accuracy_top__DOT__oadm_l3__DOT__implementation__DOT__reduced_scale_product 
                                              << 0xaU))));
    vlTOPp->oadm_l1_out = ((0x80000000U & (vlTOPp->x 
                                           ^ vlTOPp->y)) 
                           | ((0x7f800000U & (((IData)(0x7fU) 
                                               + ((
                                                   (vlTOPp->x 
                                                    >> 0x17U) 
                                                   - 
                                                   (vlTOPp->y 
                                                    >> 0x17U)) 
                                                  + 
                                                  ((0xf8U 
                                                    & (VL_NEGATE_I((IData)(
                                                                           (1U 
                                                                            & ((IData)(vlTOPp->plsad_common_accuracy_top__DOT__oadm_l1__DOT__implementation__DOT__exponent_adjust) 
                                                                               >> 2U)))) 
                                                       << 3U)) 
                                                   | (IData)(vlTOPp->plsad_common_accuracy_top__DOT__oadm_l1__DOT__implementation__DOT__exponent_adjust)))) 
                                              << 0x17U)) 
                              | vlTOPp->plsad_common_accuracy_top__DOT__oadm_l1__DOT__implementation__DOT__normalized_fraction));
    vlTOPp->oadm_l2_out = ((0x80000000U & (vlTOPp->x 
                                           ^ vlTOPp->y)) 
                           | ((0x7f800000U & (((IData)(0x7fU) 
                                               + ((
                                                   (vlTOPp->x 
                                                    >> 0x17U) 
                                                   - 
                                                   (vlTOPp->y 
                                                    >> 0x17U)) 
                                                  + 
                                                  ((0xf8U 
                                                    & (VL_NEGATE_I((IData)(
                                                                           (1U 
                                                                            & ((IData)(vlTOPp->plsad_common_accuracy_top__DOT__oadm_l2__DOT__implementation__DOT__exponent_adjust) 
                                                                               >> 2U)))) 
                                                       << 3U)) 
                                                   | (IData)(vlTOPp->plsad_common_accuracy_top__DOT__oadm_l2__DOT__implementation__DOT__exponent_adjust)))) 
                                              << 0x17U)) 
                              | vlTOPp->plsad_common_accuracy_top__DOT__oadm_l2__DOT__implementation__DOT__normalized_fraction));
    vlTOPp->oadm_l3_out = ((0x80000000U & (vlTOPp->x 
                                           ^ vlTOPp->y)) 
                           | ((0x7f800000U & (((IData)(0x7fU) 
                                               + ((
                                                   (vlTOPp->x 
                                                    >> 0x17U) 
                                                   - 
                                                   (vlTOPp->y 
                                                    >> 0x17U)) 
                                                  + 
                                                  ((0xf8U 
                                                    & (VL_NEGATE_I((IData)(
                                                                           (1U 
                                                                            & ((IData)(vlTOPp->plsad_common_accuracy_top__DOT__oadm_l3__DOT__implementation__DOT__exponent_adjust) 
                                                                               >> 2U)))) 
                                                       << 3U)) 
                                                   | (IData)(vlTOPp->plsad_common_accuracy_top__DOT__oadm_l3__DOT__implementation__DOT__exponent_adjust)))) 
                                              << 0x17U)) 
                              | vlTOPp->plsad_common_accuracy_top__DOT__oadm_l3__DOT__implementation__DOT__normalized_fraction));
}

void Vplsad_common_accuracy_top::_eval(Vplsad_common_accuracy_top__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vplsad_common_accuracy_top::_eval\n"); );
    Vplsad_common_accuracy_top* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->_combo__TOP__1(vlSymsp);
}

void Vplsad_common_accuracy_top::_eval_initial(Vplsad_common_accuracy_top__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vplsad_common_accuracy_top::_eval_initial\n"); );
    Vplsad_common_accuracy_top* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
}

void Vplsad_common_accuracy_top::final() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vplsad_common_accuracy_top::final\n"); );
    // Variables
    Vplsad_common_accuracy_top__Syms* __restrict vlSymsp = this->__VlSymsp;
    Vplsad_common_accuracy_top* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
}

void Vplsad_common_accuracy_top::_eval_settle(Vplsad_common_accuracy_top__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vplsad_common_accuracy_top::_eval_settle\n"); );
    Vplsad_common_accuracy_top* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->_combo__TOP__1(vlSymsp);
}

VL_INLINE_OPT QData Vplsad_common_accuracy_top::_change_request(Vplsad_common_accuracy_top__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vplsad_common_accuracy_top::_change_request\n"); );
    Vplsad_common_accuracy_top* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    // Change detection
    QData __req = false;  // Logically a bool
    return __req;
}

#ifdef VL_DEBUG
void Vplsad_common_accuracy_top::_eval_debug_assertions() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vplsad_common_accuracy_top::_eval_debug_assertions\n"); );
}
#endif  // VL_DEBUG

void Vplsad_common_accuracy_top::_ctor_var_reset() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vplsad_common_accuracy_top::_ctor_var_reset\n"); );
    // Body
    x = VL_RAND_RESET_I(32);
    y = VL_RAND_RESET_I(32);
    m4_out = VL_RAND_RESET_I(32);
    m6_out = VL_RAND_RESET_I(32);
    m8_out = VL_RAND_RESET_I(32);
    oadm_l0_out = VL_RAND_RESET_I(32);
    oadm_l1_out = VL_RAND_RESET_I(32);
    oadm_l2_out = VL_RAND_RESET_I(32);
    oadm_l3_out = VL_RAND_RESET_I(32);
    plsad_common_accuracy_top__DOT__m4__DOT__impl__DOT__core__DOT__x0 = VL_RAND_RESET_I(15);
    plsad_common_accuracy_top__DOT__m4__DOT__impl__DOT__core__DOT__x1 = VL_RAND_RESET_I(15);
    plsad_common_accuracy_top__DOT__m4__DOT__impl__DOT__core__DOT__x2 = VL_RAND_RESET_I(15);
    plsad_common_accuracy_top__DOT__m4__DOT__impl__DOT__core__DOT__x3 = VL_RAND_RESET_I(15);
    plsad_common_accuracy_top__DOT__m4__DOT__impl__DOT__core__DOT__quotient = VL_RAND_RESET_I(15);
    plsad_common_accuracy_top__DOT__m6__DOT__impl__DOT__core__DOT__x1 = VL_RAND_RESET_I(15);
    plsad_common_accuracy_top__DOT__m6__DOT__impl__DOT__core__DOT__x2 = VL_RAND_RESET_I(15);
    plsad_common_accuracy_top__DOT__m6__DOT__impl__DOT__core__DOT__quotient = VL_RAND_RESET_I(15);
    plsad_common_accuracy_top__DOT__m8__DOT__impl__DOT__core__DOT__x1 = VL_RAND_RESET_I(15);
    plsad_common_accuracy_top__DOT__m8__DOT__impl__DOT__core__DOT__x2 = VL_RAND_RESET_I(15);
    plsad_common_accuracy_top__DOT__m8__DOT__impl__DOT__core__DOT__quotient = VL_RAND_RESET_I(15);
    plsad_common_accuracy_top__DOT__oadm_l0__DOT__implementation__DOT__normalized_fraction = VL_RAND_RESET_I(23);
    plsad_common_accuracy_top__DOT__oadm_l0__DOT__implementation__DOT__exponent_adjust = VL_RAND_RESET_I(3);
    plsad_common_accuracy_top__DOT__oadm_l0__DOT__implementation__DOT__plane__DOT__centered_plane = VL_RAND_RESET_I(29);
    plsad_common_accuracy_top__DOT__oadm_l1__DOT__implementation__DOT__reduced_scale_product = VL_RAND_RESET_I(16);
    plsad_common_accuracy_top__DOT__oadm_l1__DOT__implementation__DOT__normalized_fraction = VL_RAND_RESET_I(23);
    plsad_common_accuracy_top__DOT__oadm_l1__DOT__implementation__DOT__exponent_adjust = VL_RAND_RESET_I(3);
    plsad_common_accuracy_top__DOT__oadm_l1__DOT__implementation__DOT__plane__DOT__x_product = VL_RAND_RESET_I(13);
    plsad_common_accuracy_top__DOT__oadm_l1__DOT__implementation__DOT__plane__DOT__y_product = VL_RAND_RESET_I(13);
    plsad_common_accuracy_top__DOT__oadm_l2__DOT__implementation__DOT__reduced_scale_product = VL_RAND_RESET_I(17);
    plsad_common_accuracy_top__DOT__oadm_l2__DOT__implementation__DOT__normalized_fraction = VL_RAND_RESET_I(23);
    plsad_common_accuracy_top__DOT__oadm_l2__DOT__implementation__DOT__exponent_adjust = VL_RAND_RESET_I(3);
    plsad_common_accuracy_top__DOT__oadm_l2__DOT__implementation__DOT__plane__DOT__x_product = VL_RAND_RESET_I(13);
    plsad_common_accuracy_top__DOT__oadm_l2__DOT__implementation__DOT__plane__DOT__y_product = VL_RAND_RESET_I(13);
    plsad_common_accuracy_top__DOT__oadm_l3__DOT__implementation__DOT__reduced_scale_product = VL_RAND_RESET_I(17);
    plsad_common_accuracy_top__DOT__oadm_l3__DOT__implementation__DOT__normalized_fraction = VL_RAND_RESET_I(23);
    plsad_common_accuracy_top__DOT__oadm_l3__DOT__implementation__DOT__exponent_adjust = VL_RAND_RESET_I(3);
    plsad_common_accuracy_top__DOT__oadm_l3__DOT__implementation__DOT__plane__DOT__x_product = VL_RAND_RESET_I(13);
    plsad_common_accuracy_top__DOT__oadm_l3__DOT__implementation__DOT__plane__DOT__y_product = VL_RAND_RESET_I(13);
}
