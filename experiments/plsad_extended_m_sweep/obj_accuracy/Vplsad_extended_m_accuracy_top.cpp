// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vplsad_extended_m_accuracy_top.h for the primary calling header

#include "Vplsad_extended_m_accuracy_top.h"
#include "Vplsad_extended_m_accuracy_top__Syms.h"

//==========

VL_CTOR_IMP(Vplsad_extended_m_accuracy_top) {
    Vplsad_extended_m_accuracy_top__Syms* __restrict vlSymsp = __VlSymsp = new Vplsad_extended_m_accuracy_top__Syms(this, name());
    Vplsad_extended_m_accuracy_top* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Reset internal values
    
    // Reset structure values
    _ctor_var_reset();
}

void Vplsad_extended_m_accuracy_top::__Vconfigure(Vplsad_extended_m_accuracy_top__Syms* vlSymsp, bool first) {
    if (0 && first) {}  // Prevent unused
    this->__VlSymsp = vlSymsp;
}

Vplsad_extended_m_accuracy_top::~Vplsad_extended_m_accuracy_top() {
    delete __VlSymsp; __VlSymsp=NULL;
}

void Vplsad_extended_m_accuracy_top::eval() {
    VL_DEBUG_IF(VL_DBG_MSGF("+++++TOP Evaluate Vplsad_extended_m_accuracy_top::eval\n"); );
    Vplsad_extended_m_accuracy_top__Syms* __restrict vlSymsp = this->__VlSymsp;  // Setup global symbol table
    Vplsad_extended_m_accuracy_top* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
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
            VL_FATAL_MT("accuracy_top.sv", 1, "",
                "Verilated model didn't converge\n"
                "- See DIDNOTCONVERGE in the Verilator manual");
        } else {
            __Vchange = _change_request(vlSymsp);
        }
    } while (VL_UNLIKELY(__Vchange));
}

void Vplsad_extended_m_accuracy_top::_eval_initial_loop(Vplsad_extended_m_accuracy_top__Syms* __restrict vlSymsp) {
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
            VL_FATAL_MT("accuracy_top.sv", 1, "",
                "Verilated model didn't DC converge\n"
                "- See DIDNOTCONVERGE in the Verilator manual");
        } else {
            __Vchange = _change_request(vlSymsp);
        }
    } while (VL_UNLIKELY(__Vchange));
}

VL_INLINE_OPT void Vplsad_extended_m_accuracy_top::_combo__TOP__1(Vplsad_extended_m_accuracy_top__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vplsad_extended_m_accuracy_top::_combo__TOP__1\n"); );
    Vplsad_extended_m_accuracy_top* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->plsad_extended_m_accuracy_top__DOT__m8__DOT__impl__DOT__core__DOT__x2 
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
    vlTOPp->plsad_extended_m_accuracy_top__DOT__m10__DOT__impl__DOT__core__DOT__x2 
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
    vlTOPp->plsad_extended_m_accuracy_top__DOT__m12__DOT__impl__DOT__core__DOT__x2 
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
    vlTOPp->plsad_extended_m_accuracy_top__DOT__m15__DOT__impl__DOT__core__DOT__x2 
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
    vlTOPp->plsad_extended_m_accuracy_top__DOT__m8__DOT__impl__DOT__core__DOT__x1 
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
    vlTOPp->plsad_extended_m_accuracy_top__DOT__m10__DOT__impl__DOT__core__DOT__x1 
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
    vlTOPp->plsad_extended_m_accuracy_top__DOT__m12__DOT__impl__DOT__core__DOT__x1 
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
    vlTOPp->plsad_extended_m_accuracy_top__DOT__m15__DOT__impl__DOT__core__DOT__x1 
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
    vlTOPp->plsad_extended_m_accuracy_top__DOT__m8__DOT__impl__DOT__core__DOT__x3 
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
    vlTOPp->plsad_extended_m_accuracy_top__DOT__m8__DOT__impl__DOT__core__DOT__x0 
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
    vlTOPp->plsad_extended_m_accuracy_top__DOT__m15__DOT__impl__DOT__core__DOT__approximate_sum__DOT__exact_addition__DOT__exact_sum 
        = (0x1ffffU & ((((0x7fffU & ((0x400000U & vlTOPp->y)
                                      ? ((0x200000U 
                                          & vlTOPp->y)
                                          ? ((0x100000U 
                                              & vlTOPp->y)
                                              ? (0x1ff8U 
                                                 & (vlTOPp->x 
                                                    >> 0xaU))
                                              : (0x1ff8U 
                                                 & (vlTOPp->x 
                                                    >> 0xaU)))
                                          : ((0x100000U 
                                              & vlTOPp->y)
                                              ? (0x1ff8U 
                                                 & (vlTOPp->x 
                                                    >> 0xaU))
                                              : (0x1ff8U 
                                                 & (vlTOPp->x 
                                                    >> 0xaU))))
                                      : (0x3ff0U & 
                                         (vlTOPp->x 
                                          >> 9U)))) 
                         + (IData)(vlTOPp->plsad_extended_m_accuracy_top__DOT__m15__DOT__impl__DOT__core__DOT__x1)) 
                        + (IData)(vlTOPp->plsad_extended_m_accuracy_top__DOT__m15__DOT__impl__DOT__core__DOT__x2)) 
                       + ((0x400000U & vlTOPp->y) ? 
                          ((0x200000U & vlTOPp->y) ? 
                           ((0x100000U & vlTOPp->y)
                             ? 0x3800U : 0x3d00U) : 
                           ((0x100000U & vlTOPp->y)
                             ? 0x3b00U : 0x3b80U)) : 
                          ((0x200000U & vlTOPp->y) ? 
                           ((0x100000U & vlTOPp->y)
                             ? 0x3900U : 0x4500U) : 
                           ((0x100000U & vlTOPp->y)
                             ? 0x4100U : 0x4000U)))));
    vlTOPp->plsad_extended_m_accuracy_top__DOT__m8__DOT__impl__DOT__core__DOT__quotient 
        = ((0x7f80U & (((((((IData)(vlTOPp->plsad_extended_m_accuracy_top__DOT__m8__DOT__impl__DOT__core__DOT__x0) 
                            >> 7U) + ((IData)(vlTOPp->plsad_extended_m_accuracy_top__DOT__m8__DOT__impl__DOT__core__DOT__x1) 
                                      >> 7U)) + ((IData)(vlTOPp->plsad_extended_m_accuracy_top__DOT__m8__DOT__impl__DOT__core__DOT__x2) 
                                                 >> 7U)) 
                         + ((IData)(vlTOPp->plsad_extended_m_accuracy_top__DOT__m8__DOT__impl__DOT__core__DOT__x3) 
                            >> 7U)) + (3U & (((((1U 
                                                 & ((IData)(vlTOPp->plsad_extended_m_accuracy_top__DOT__m8__DOT__impl__DOT__core__DOT__x0) 
                                                    >> 6U)) 
                                                + (1U 
                                                   & ((IData)(vlTOPp->plsad_extended_m_accuracy_top__DOT__m8__DOT__impl__DOT__core__DOT__x1) 
                                                      >> 6U))) 
                                               + (1U 
                                                  & ((IData)(vlTOPp->plsad_extended_m_accuracy_top__DOT__m8__DOT__impl__DOT__core__DOT__x2) 
                                                     >> 6U))) 
                                              + (1U 
                                                 & ((IData)(vlTOPp->plsad_extended_m_accuracy_top__DOT__m8__DOT__impl__DOT__core__DOT__x3) 
                                                    >> 6U))) 
                                             >> 1U))) 
                       << 7U)) | (0x7fU & ((((IData)(vlTOPp->plsad_extended_m_accuracy_top__DOT__m8__DOT__impl__DOT__core__DOT__x0) 
                                             | (IData)(vlTOPp->plsad_extended_m_accuracy_top__DOT__m8__DOT__impl__DOT__core__DOT__x1)) 
                                            | (IData)(vlTOPp->plsad_extended_m_accuracy_top__DOT__m8__DOT__impl__DOT__core__DOT__x2)) 
                                           | (IData)(vlTOPp->plsad_extended_m_accuracy_top__DOT__m8__DOT__impl__DOT__core__DOT__x3))));
    vlTOPp->plsad_extended_m_accuracy_top__DOT__m10__DOT__impl__DOT__core__DOT__quotient 
        = ((0x7fe0U & (((((((IData)(vlTOPp->plsad_extended_m_accuracy_top__DOT__m8__DOT__impl__DOT__core__DOT__x0) 
                            >> 5U) + ((IData)(vlTOPp->plsad_extended_m_accuracy_top__DOT__m10__DOT__impl__DOT__core__DOT__x1) 
                                      >> 5U)) + ((IData)(vlTOPp->plsad_extended_m_accuracy_top__DOT__m10__DOT__impl__DOT__core__DOT__x2) 
                                                 >> 5U)) 
                         + ((IData)(vlTOPp->plsad_extended_m_accuracy_top__DOT__m8__DOT__impl__DOT__core__DOT__x3) 
                            >> 5U)) + (3U & (((((1U 
                                                 & ((IData)(vlTOPp->plsad_extended_m_accuracy_top__DOT__m8__DOT__impl__DOT__core__DOT__x0) 
                                                    >> 4U)) 
                                                + (1U 
                                                   & ((IData)(vlTOPp->plsad_extended_m_accuracy_top__DOT__m10__DOT__impl__DOT__core__DOT__x1) 
                                                      >> 4U))) 
                                               + (1U 
                                                  & ((IData)(vlTOPp->plsad_extended_m_accuracy_top__DOT__m10__DOT__impl__DOT__core__DOT__x2) 
                                                     >> 4U))) 
                                              + (1U 
                                                 & ((IData)(vlTOPp->plsad_extended_m_accuracy_top__DOT__m8__DOT__impl__DOT__core__DOT__x3) 
                                                    >> 4U))) 
                                             >> 1U))) 
                       << 5U)) | (0x1fU & ((((IData)(vlTOPp->plsad_extended_m_accuracy_top__DOT__m8__DOT__impl__DOT__core__DOT__x0) 
                                             | (IData)(vlTOPp->plsad_extended_m_accuracy_top__DOT__m10__DOT__impl__DOT__core__DOT__x1)) 
                                            | (IData)(vlTOPp->plsad_extended_m_accuracy_top__DOT__m10__DOT__impl__DOT__core__DOT__x2)) 
                                           | (IData)(vlTOPp->plsad_extended_m_accuracy_top__DOT__m8__DOT__impl__DOT__core__DOT__x3))));
    vlTOPp->plsad_extended_m_accuracy_top__DOT__m12__DOT__impl__DOT__core__DOT__quotient 
        = ((0x7ff8U & (((((((IData)(vlTOPp->plsad_extended_m_accuracy_top__DOT__m8__DOT__impl__DOT__core__DOT__x0) 
                            >> 3U) + ((IData)(vlTOPp->plsad_extended_m_accuracy_top__DOT__m12__DOT__impl__DOT__core__DOT__x1) 
                                      >> 3U)) + ((IData)(vlTOPp->plsad_extended_m_accuracy_top__DOT__m12__DOT__impl__DOT__core__DOT__x2) 
                                                 >> 3U)) 
                         + ((IData)(vlTOPp->plsad_extended_m_accuracy_top__DOT__m8__DOT__impl__DOT__core__DOT__x3) 
                            >> 3U)) + (3U & (((((1U 
                                                 & ((IData)(vlTOPp->plsad_extended_m_accuracy_top__DOT__m8__DOT__impl__DOT__core__DOT__x0) 
                                                    >> 2U)) 
                                                + (1U 
                                                   & ((IData)(vlTOPp->plsad_extended_m_accuracy_top__DOT__m12__DOT__impl__DOT__core__DOT__x1) 
                                                      >> 2U))) 
                                               + (1U 
                                                  & ((IData)(vlTOPp->plsad_extended_m_accuracy_top__DOT__m12__DOT__impl__DOT__core__DOT__x2) 
                                                     >> 2U))) 
                                              + (1U 
                                                 & ((IData)(vlTOPp->plsad_extended_m_accuracy_top__DOT__m8__DOT__impl__DOT__core__DOT__x3) 
                                                    >> 2U))) 
                                             >> 1U))) 
                       << 3U)) | (7U & ((((IData)(vlTOPp->plsad_extended_m_accuracy_top__DOT__m8__DOT__impl__DOT__core__DOT__x0) 
                                          | (IData)(vlTOPp->plsad_extended_m_accuracy_top__DOT__m12__DOT__impl__DOT__core__DOT__x1)) 
                                         | (IData)(vlTOPp->plsad_extended_m_accuracy_top__DOT__m12__DOT__impl__DOT__core__DOT__x2)) 
                                        | (IData)(vlTOPp->plsad_extended_m_accuracy_top__DOT__m8__DOT__impl__DOT__core__DOT__x3))));
    vlTOPp->m15_out = ((0x80000000U & (vlTOPp->x ^ vlTOPp->y)) 
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
                                                                                (vlTOPp->plsad_extended_m_accuracy_top__DOT__m15__DOT__impl__DOT__core__DOT__approximate_sum__DOT__exact_addition__DOT__exact_sum 
                                                                                >> 0xeU)))) 
                                                                             >> 2U)))) 
                                                     << 3U)) 
                                                 | (7U 
                                                    & VL_NEGATE_I(
                                                                  (1U 
                                                                   & (~ 
                                                                      (vlTOPp->plsad_extended_m_accuracy_top__DOT__m15__DOT__impl__DOT__core__DOT__approximate_sum__DOT__exact_addition__DOT__exact_sum 
                                                                       >> 0xeU)))))))) 
                                          << 0x17U)) 
                          | (0x7fe000U & (((0x4000U 
                                            & vlTOPp->plsad_extended_m_accuracy_top__DOT__m15__DOT__impl__DOT__core__DOT__approximate_sum__DOT__exact_addition__DOT__exact_sum)
                                            ? vlTOPp->plsad_extended_m_accuracy_top__DOT__m15__DOT__impl__DOT__core__DOT__approximate_sum__DOT__exact_addition__DOT__exact_sum
                                            : (vlTOPp->plsad_extended_m_accuracy_top__DOT__m15__DOT__impl__DOT__core__DOT__approximate_sum__DOT__exact_addition__DOT__exact_sum 
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
                                                                                ((IData)(vlTOPp->plsad_extended_m_accuracy_top__DOT__m8__DOT__impl__DOT__core__DOT__quotient) 
                                                                                >> 0xeU)))) 
                                                                            >> 2U)))) 
                                                    << 3U)) 
                                                | (7U 
                                                   & VL_NEGATE_I(
                                                                 (1U 
                                                                  & (~ 
                                                                     ((IData)(vlTOPp->plsad_extended_m_accuracy_top__DOT__m8__DOT__impl__DOT__core__DOT__quotient) 
                                                                      >> 0xeU)))))))) 
                                         << 0x17U)) 
                         | (0x7fe000U & (((0x4000U 
                                           & (IData)(vlTOPp->plsad_extended_m_accuracy_top__DOT__m8__DOT__impl__DOT__core__DOT__quotient))
                                           ? (IData)(vlTOPp->plsad_extended_m_accuracy_top__DOT__m8__DOT__impl__DOT__core__DOT__quotient)
                                           : ((IData)(vlTOPp->plsad_extended_m_accuracy_top__DOT__m8__DOT__impl__DOT__core__DOT__quotient) 
                                              << 1U)) 
                                         << 9U))));
    vlTOPp->m10_out = ((0x80000000U & (vlTOPp->x ^ vlTOPp->y)) 
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
                                                                                ((IData)(vlTOPp->plsad_extended_m_accuracy_top__DOT__m10__DOT__impl__DOT__core__DOT__quotient) 
                                                                                >> 0xeU)))) 
                                                                             >> 2U)))) 
                                                     << 3U)) 
                                                 | (7U 
                                                    & VL_NEGATE_I(
                                                                  (1U 
                                                                   & (~ 
                                                                      ((IData)(vlTOPp->plsad_extended_m_accuracy_top__DOT__m10__DOT__impl__DOT__core__DOT__quotient) 
                                                                       >> 0xeU)))))))) 
                                          << 0x17U)) 
                          | (0x7fe000U & (((0x4000U 
                                            & (IData)(vlTOPp->plsad_extended_m_accuracy_top__DOT__m10__DOT__impl__DOT__core__DOT__quotient))
                                            ? (IData)(vlTOPp->plsad_extended_m_accuracy_top__DOT__m10__DOT__impl__DOT__core__DOT__quotient)
                                            : ((IData)(vlTOPp->plsad_extended_m_accuracy_top__DOT__m10__DOT__impl__DOT__core__DOT__quotient) 
                                               << 1U)) 
                                          << 9U))));
    vlTOPp->m12_out = ((0x80000000U & (vlTOPp->x ^ vlTOPp->y)) 
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
                                                                                ((IData)(vlTOPp->plsad_extended_m_accuracy_top__DOT__m12__DOT__impl__DOT__core__DOT__quotient) 
                                                                                >> 0xeU)))) 
                                                                             >> 2U)))) 
                                                     << 3U)) 
                                                 | (7U 
                                                    & VL_NEGATE_I(
                                                                  (1U 
                                                                   & (~ 
                                                                      ((IData)(vlTOPp->plsad_extended_m_accuracy_top__DOT__m12__DOT__impl__DOT__core__DOT__quotient) 
                                                                       >> 0xeU)))))))) 
                                          << 0x17U)) 
                          | (0x7fe000U & (((0x4000U 
                                            & (IData)(vlTOPp->plsad_extended_m_accuracy_top__DOT__m12__DOT__impl__DOT__core__DOT__quotient))
                                            ? (IData)(vlTOPp->plsad_extended_m_accuracy_top__DOT__m12__DOT__impl__DOT__core__DOT__quotient)
                                            : ((IData)(vlTOPp->plsad_extended_m_accuracy_top__DOT__m12__DOT__impl__DOT__core__DOT__quotient) 
                                               << 1U)) 
                                          << 9U))));
}

void Vplsad_extended_m_accuracy_top::_eval(Vplsad_extended_m_accuracy_top__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vplsad_extended_m_accuracy_top::_eval\n"); );
    Vplsad_extended_m_accuracy_top* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->_combo__TOP__1(vlSymsp);
}

void Vplsad_extended_m_accuracy_top::_eval_initial(Vplsad_extended_m_accuracy_top__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vplsad_extended_m_accuracy_top::_eval_initial\n"); );
    Vplsad_extended_m_accuracy_top* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
}

void Vplsad_extended_m_accuracy_top::final() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vplsad_extended_m_accuracy_top::final\n"); );
    // Variables
    Vplsad_extended_m_accuracy_top__Syms* __restrict vlSymsp = this->__VlSymsp;
    Vplsad_extended_m_accuracy_top* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
}

void Vplsad_extended_m_accuracy_top::_eval_settle(Vplsad_extended_m_accuracy_top__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vplsad_extended_m_accuracy_top::_eval_settle\n"); );
    Vplsad_extended_m_accuracy_top* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->_combo__TOP__1(vlSymsp);
}

VL_INLINE_OPT QData Vplsad_extended_m_accuracy_top::_change_request(Vplsad_extended_m_accuracy_top__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vplsad_extended_m_accuracy_top::_change_request\n"); );
    Vplsad_extended_m_accuracy_top* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    // Change detection
    QData __req = false;  // Logically a bool
    return __req;
}

#ifdef VL_DEBUG
void Vplsad_extended_m_accuracy_top::_eval_debug_assertions() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vplsad_extended_m_accuracy_top::_eval_debug_assertions\n"); );
}
#endif  // VL_DEBUG

void Vplsad_extended_m_accuracy_top::_ctor_var_reset() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vplsad_extended_m_accuracy_top::_ctor_var_reset\n"); );
    // Body
    x = VL_RAND_RESET_I(32);
    y = VL_RAND_RESET_I(32);
    m8_out = VL_RAND_RESET_I(32);
    m10_out = VL_RAND_RESET_I(32);
    m12_out = VL_RAND_RESET_I(32);
    m15_out = VL_RAND_RESET_I(32);
    plsad_extended_m_accuracy_top__DOT__m8__DOT__impl__DOT__core__DOT__x0 = VL_RAND_RESET_I(15);
    plsad_extended_m_accuracy_top__DOT__m8__DOT__impl__DOT__core__DOT__x1 = VL_RAND_RESET_I(15);
    plsad_extended_m_accuracy_top__DOT__m8__DOT__impl__DOT__core__DOT__x2 = VL_RAND_RESET_I(15);
    plsad_extended_m_accuracy_top__DOT__m8__DOT__impl__DOT__core__DOT__x3 = VL_RAND_RESET_I(15);
    plsad_extended_m_accuracy_top__DOT__m8__DOT__impl__DOT__core__DOT__quotient = VL_RAND_RESET_I(15);
    plsad_extended_m_accuracy_top__DOT__m10__DOT__impl__DOT__core__DOT__x1 = VL_RAND_RESET_I(15);
    plsad_extended_m_accuracy_top__DOT__m10__DOT__impl__DOT__core__DOT__x2 = VL_RAND_RESET_I(15);
    plsad_extended_m_accuracy_top__DOT__m10__DOT__impl__DOT__core__DOT__quotient = VL_RAND_RESET_I(15);
    plsad_extended_m_accuracy_top__DOT__m12__DOT__impl__DOT__core__DOT__x1 = VL_RAND_RESET_I(15);
    plsad_extended_m_accuracy_top__DOT__m12__DOT__impl__DOT__core__DOT__x2 = VL_RAND_RESET_I(15);
    plsad_extended_m_accuracy_top__DOT__m12__DOT__impl__DOT__core__DOT__quotient = VL_RAND_RESET_I(15);
    plsad_extended_m_accuracy_top__DOT__m15__DOT__impl__DOT__core__DOT__x1 = VL_RAND_RESET_I(15);
    plsad_extended_m_accuracy_top__DOT__m15__DOT__impl__DOT__core__DOT__x2 = VL_RAND_RESET_I(15);
    plsad_extended_m_accuracy_top__DOT__m15__DOT__impl__DOT__core__DOT__approximate_sum__DOT__exact_addition__DOT__exact_sum = VL_RAND_RESET_I(17);
}
