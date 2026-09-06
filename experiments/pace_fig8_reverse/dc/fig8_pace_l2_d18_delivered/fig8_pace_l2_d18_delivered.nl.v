/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Sat Sep  5 13:41:07 2026
/////////////////////////////////////////////////////////////


module fig8_delivered_core_l2_MANTISSA_WIDTH5 ( Mantissa_X, Mantissa_Y, 
        Mantissa_Out, Shift );
  input [4:0] Mantissa_X;
  input [4:0] Mantissa_Y;
  output [4:0] Mantissa_Out;
  output Shift;
  wire   n25, n26, n27, n28, n29, n30, N9, N8, N7, N13, N12, N11, N10,
         L1_Res_5_, L1_Res_4_, L1_Res_3_, L1_Res_2_, L1_Res_1_, L1_Res_0_,
         sub_307_carry_3_, n1, n2, n3, n4, n6, n80, n90, n100, n110, n120,
         n130, n14, n15, n16, n17, n18;
  wire   [5:3] y_sub_x;
  wire   [6:0] L1_p2;
  wire   [6:0] L2_p;
  wire   [5:1] Res;
  wire   [5:1] sub_306_carry;
  wire   [6:2] add_0_root_add_0_root_add_334_carry;
  wire   [6:2] add_1_root_add_0_root_add_334_carry;

  MOAI22D1 U6 ( .A1(n25), .A2(n15), .B1(Res[5]), .B2(Shift), .ZN(
        Mantissa_Out[4]) );
  OR2D1 U13 ( .A1(Res[5]), .A2(Shift), .Z(n26) );
  AO222D1 U18 ( .A1(y_sub_x[4]), .A2(n30), .B1(L1_Res_4_), .B2(n29), .C1(
        L1_Res_3_), .C2(n27), .Z(L2_p[1]) );
  AO222D1 U19 ( .A1(y_sub_x[3]), .A2(n30), .B1(L1_Res_3_), .B2(n29), .C1(
        L1_Res_2_), .C2(n27), .Z(L2_p[0]) );
  AOI22D1 U3 ( .A1(n29), .A2(L1_Res_5_), .B1(y_sub_x[5]), .B2(n30), .ZN(n28)
         );
  AN2XD1 U4 ( .A1(N7), .A2(L2_p[0]), .Z(n1) );
  AN2XD1 U5 ( .A1(L1_Res_0_), .A2(L1_p2[0]), .Z(n2) );
  XNR2D1 U7 ( .A1(N7), .A2(L2_p[0]), .ZN(n3) );
  ND2D1 U8 ( .A1(Res[5]), .A2(n14), .ZN(n25) );
  OAI22D1 U9 ( .A1(n14), .A2(n15), .B1(n25), .B2(n16), .ZN(Mantissa_Out[3]) );
  FA1D0 U10 ( .A(L2_p[6]), .B(N12), .CI(add_0_root_add_0_root_add_334_carry[5]), .CO(add_0_root_add_0_root_add_334_carry[6]), .S(Res[5]) );
  INVD1 U11 ( .I(Shift), .ZN(n14) );
  OAI222D0 U12 ( .A1(n25), .A2(n18), .B1(n16), .B2(n26), .C1(n14), .C2(n17), 
        .ZN(Mantissa_Out[1]) );
  OAI222D0 U14 ( .A1(n25), .A2(n17), .B1(n15), .B2(n26), .C1(n14), .C2(n16), 
        .ZN(Mantissa_Out[2]) );
  INVD1 U15 ( .I(Res[4]), .ZN(n15) );
  INVD1 U16 ( .I(Res[3]), .ZN(n16) );
  XOR3D1 U17 ( .A1(L2_p[6]), .A2(N13), .A3(
        add_0_root_add_0_root_add_334_carry[6]), .Z(Shift) );
  XOR3D1 U20 ( .A1(L1_p2[6]), .A2(sub_306_carry[5]), .A3(
        add_1_root_add_0_root_add_334_carry[6]), .Z(N13) );
  FA1D0 U21 ( .A(L2_p[6]), .B(N10), .CI(add_0_root_add_0_root_add_334_carry[3]), .CO(add_0_root_add_0_root_add_334_carry[4]), .S(Res[3]) );
  FA1D0 U22 ( .A(L2_p[6]), .B(N11), .CI(add_0_root_add_0_root_add_334_carry[4]), .CO(add_0_root_add_0_root_add_334_carry[5]), .S(Res[4]) );
  AN2XD1 U23 ( .A1(n120), .A2(sub_307_carry_3_), .Z(n4) );
  CKXOR2D1 U24 ( .A1(L1_Res_5_), .A2(n6), .Z(y_sub_x[5]) );
  ND2D1 U25 ( .A1(n130), .A2(n4), .ZN(n6) );
  IOA21D1 U26 ( .A1(L1_Res_5_), .A2(n27), .B(n28), .ZN(L2_p[6]) );
  FA1D0 U27 ( .A(L1_p2[6]), .B(L1_Res_5_), .CI(
        add_1_root_add_0_root_add_334_carry[5]), .CO(
        add_1_root_add_0_root_add_334_carry[6]), .S(N12) );
  OAI222D0 U28 ( .A1(n3), .A2(n25), .B1(n17), .B2(n26), .C1(n18), .C2(n14), 
        .ZN(Mantissa_Out[0]) );
  INVD1 U29 ( .I(Res[2]), .ZN(n17) );
  INVD1 U30 ( .I(Res[1]), .ZN(n18) );
  FA1D0 U31 ( .A(L2_p[1]), .B(N8), .CI(n1), .CO(
        add_0_root_add_0_root_add_334_carry[2]), .S(Res[1]) );
  FA1D0 U32 ( .A(L2_p[2]), .B(N9), .CI(add_0_root_add_0_root_add_334_carry[2]), 
        .CO(add_0_root_add_0_root_add_334_carry[3]), .S(Res[2]) );
  IOA21D1 U33 ( .A1(n27), .A2(L1_Res_4_), .B(n28), .ZN(L2_p[2]) );
  INVD1 U34 ( .I(L1_Res_4_), .ZN(n130) );
  INVD1 U36 ( .I(L1_Res_3_), .ZN(n120) );
  FA1D0 U38 ( .A(L1_p2[6]), .B(L1_Res_4_), .CI(
        add_1_root_add_0_root_add_334_carry[4]), .CO(
        add_1_root_add_0_root_add_334_carry[5]), .S(N11) );
  FA1D0 U39 ( .A(L1_p2[3]), .B(L1_Res_3_), .CI(
        add_1_root_add_0_root_add_334_carry[3]), .CO(
        add_1_root_add_0_root_add_334_carry[4]), .S(N10) );
  INR2D1 U40 ( .A1(L1_Res_4_), .B1(Mantissa_Y[4]), .ZN(L1_p2[3]) );
  FA1D0 U41 ( .A(L1_p2[2]), .B(L1_Res_2_), .CI(
        add_1_root_add_0_root_add_334_carry[2]), .CO(
        add_1_root_add_0_root_add_334_carry[3]), .S(N9) );
  INR2D1 U42 ( .A1(L1_Res_3_), .B1(Mantissa_Y[4]), .ZN(L1_p2[2]) );
  FA1D0 U43 ( .A(L1_p2[1]), .B(L1_Res_1_), .CI(n2), .CO(
        add_1_root_add_0_root_add_334_carry[2]), .S(N8) );
  INR2D1 U44 ( .A1(L1_Res_2_), .B1(Mantissa_Y[4]), .ZN(L1_p2[1]) );
  INR2D1 U45 ( .A1(L1_Res_1_), .B1(Mantissa_Y[4]), .ZN(L1_p2[0]) );
  INR2D1 U46 ( .A1(Mantissa_Y[4]), .B1(Mantissa_Y[3]), .ZN(n29) );
  NR2D1 U47 ( .A1(Mantissa_Y[3]), .A2(Mantissa_Y[4]), .ZN(n27) );
  INR2D1 U48 ( .A1(Mantissa_Y[3]), .B1(Mantissa_Y[4]), .ZN(n30) );
  FA1D0 U49 ( .A(Mantissa_X[4]), .B(n110), .CI(sub_306_carry[4]), .CO(
        sub_306_carry[5]), .S(L1_Res_4_) );
  INVD1 U50 ( .I(Mantissa_Y[4]), .ZN(n110) );
  FA1D0 U51 ( .A(Mantissa_X[1]), .B(n80), .CI(sub_306_carry[1]), .CO(
        sub_306_carry[2]), .S(L1_Res_1_) );
  INVD1 U53 ( .I(Mantissa_Y[1]), .ZN(n80) );
  FA1D0 U54 ( .A(Mantissa_X[2]), .B(n90), .CI(sub_306_carry[2]), .CO(
        sub_306_carry[3]), .S(L1_Res_2_) );
  INVD1 U55 ( .I(Mantissa_Y[2]), .ZN(n90) );
  FA1D0 U56 ( .A(Mantissa_X[3]), .B(n100), .CI(sub_306_carry[3]), .CO(
        sub_306_carry[4]), .S(L1_Res_3_) );
  INVD1 U57 ( .I(Mantissa_Y[3]), .ZN(n100) );
  CKXOR2D1 U60 ( .A1(sub_307_carry_3_), .A2(n120), .Z(y_sub_x[3]) );
  CKXOR2D1 U61 ( .A1(n4), .A2(n130), .Z(y_sub_x[4]) );
  CKXOR2D1 U62 ( .A1(L1_Res_0_), .A2(L1_p2[0]), .Z(N7) );
  NR3D0 U64 ( .A1(L1_Res_0_), .A2(L1_Res_2_), .A3(L1_Res_1_), .ZN(
        sub_307_carry_3_) );
  CKND0 U35 ( .I(sub_306_carry[5]), .ZN(L1_Res_5_) );
  NR2D0 U37 ( .A1(Mantissa_Y[4]), .A2(sub_306_carry[5]), .ZN(L1_p2[6]) );
  CKXOR2D0 U52 ( .A1(Mantissa_X[0]), .A2(Mantissa_Y[0]), .Z(L1_Res_0_) );
  IND2D0 U58 ( .A1(Mantissa_X[0]), .B1(Mantissa_Y[0]), .ZN(sub_306_carry[1])
         );
endmodule


module fp32_normal_finite_wrapper_DW01_add_1_DW01_add_4 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [7:2] carry;

  XOR3D1 U1_7 ( .A1(A[7]), .A2(B[7]), .A3(carry[7]), .Z(SUM[7]) );
  FA1D0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1D0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1D0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1D0 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA1D0 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  FA1D0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  AN2D1 U1 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
  CKXOR2D1 U2 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
endmodule


module fp32_normal_finite_wrapper ( x, y, divide_mode, fraction_x, fraction_y, 
        result_fraction, exponent_adjust, result );
  input [31:0] x;
  input [31:0] y;
  output [22:0] fraction_x;
  output [22:0] fraction_y;
  input [22:0] result_fraction;
  input [2:0] exponent_adjust;
  output [31:0] result;
  input divide_mode;
  wire   N9, N8, N7, N6, N5, N4, N3, N17, N16, N15, N14, N13, N12, N11, N10,
         n1, n79;
  wire   [7:2] add_0_root_add_0_root_add_22_2_carry;

  CKXOR2D1 U2 ( .A1(y[31]), .A2(x[31]), .Z(result[31]) );
  fp32_normal_finite_wrapper_DW01_add_1_DW01_add_4 add_1_root_add_0_root_add_22_2 ( 
        .A(x[30:23]), .B({y[30], N17, N16, N15, N14, N13, N12, N11}), .CI(n79), 
        .SUM({N10, N9, N8, N7, N6, N5, N4, N3}) );
  AN2XD1 U3 ( .A1(exponent_adjust[0]), .A2(N3), .Z(n1) );
  FA1D0 U41 ( .A(N4), .B(exponent_adjust[1]), .CI(n1), .CO(
        add_0_root_add_0_root_add_22_2_carry[2]), .S(result[24]) );
  FA1D0 U42 ( .A(N5), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[2]), .CO(
        add_0_root_add_0_root_add_22_2_carry[3]), .S(result[25]) );
  FA1D0 U43 ( .A(N6), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[3]), .CO(
        add_0_root_add_0_root_add_22_2_carry[4]), .S(result[26]) );
  FA1D0 U44 ( .A(N7), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[4]), .CO(
        add_0_root_add_0_root_add_22_2_carry[5]), .S(result[27]) );
  FA1D0 U45 ( .A(N8), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[5]), .CO(
        add_0_root_add_0_root_add_22_2_carry[6]), .S(result[28]) );
  FA1D0 U46 ( .A(N9), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[6]), .CO(
        add_0_root_add_0_root_add_22_2_carry[7]), .S(result[29]) );
  XOR3D1 U55 ( .A1(N10), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_22_2_carry[7]), .Z(result[30]) );
  INVD1 U63 ( .I(y[29]), .ZN(N17) );
  INVD1 U64 ( .I(y[24]), .ZN(N12) );
  INVD1 U65 ( .I(y[25]), .ZN(N13) );
  INVD1 U66 ( .I(y[26]), .ZN(N14) );
  INVD1 U67 ( .I(y[27]), .ZN(N15) );
  INVD1 U68 ( .I(y[28]), .ZN(N16) );
  CKBD1 U87 ( .I(x[22]), .Z(fraction_x[22]) );
  CKBD1 U88 ( .I(x[21]), .Z(fraction_x[21]) );
  CKBD1 U89 ( .I(x[20]), .Z(fraction_x[20]) );
  CKBD1 U90 ( .I(x[19]), .Z(fraction_x[19]) );
  CKBD1 U91 ( .I(x[18]), .Z(fraction_x[18]) );
  CKBD1 U92 ( .I(y[22]), .Z(fraction_y[22]) );
  CKBD1 U93 ( .I(y[21]), .Z(fraction_y[21]) );
  CKBD1 U94 ( .I(y[20]), .Z(fraction_y[20]) );
  CKBD1 U95 ( .I(y[19]), .Z(fraction_y[19]) );
  CKBD1 U96 ( .I(y[18]), .Z(fraction_y[18]) );
  CKBD1 U97 ( .I(result_fraction[22]), .Z(result[22]) );
  CKBD1 U98 ( .I(result_fraction[21]), .Z(result[21]) );
  CKBD1 U99 ( .I(result_fraction[20]), .Z(result[20]) );
  CKBD1 U100 ( .I(result_fraction[19]), .Z(result[19]) );
  CKBD1 U101 ( .I(result_fraction[18]), .Z(result[18]) );
  TIEL U110 ( .ZN(n79) );
  CKXOR2D1 U111 ( .A1(exponent_adjust[0]), .A2(N3), .Z(result[23]) );
  CKND0 U119 ( .I(y[23]), .ZN(N11) );
endmodule


module FP_DIV_WRAPPER_32_width_trunc18 ( x, y, out0, mantissa_x, mantissa_y, 
        mantissa_out, shift );
  input [31:0] x;
  input [31:0] y;
  output [31:0] out0;
  output [4:0] mantissa_x;
  output [4:0] mantissa_y;
  input [4:0] mantissa_out;
  input [0:0] shift;

  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31, 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, 
        SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39, 
        SYNOPSYS_UNCONNECTED__40, SYNOPSYS_UNCONNECTED__41, 
        SYNOPSYS_UNCONNECTED__42, SYNOPSYS_UNCONNECTED__43, 
        SYNOPSYS_UNCONNECTED__44, SYNOPSYS_UNCONNECTED__45, 
        SYNOPSYS_UNCONNECTED__46, SYNOPSYS_UNCONNECTED__47, 
        SYNOPSYS_UNCONNECTED__48, SYNOPSYS_UNCONNECTED__49, 
        SYNOPSYS_UNCONNECTED__50, SYNOPSYS_UNCONNECTED__51, 
        SYNOPSYS_UNCONNECTED__52, SYNOPSYS_UNCONNECTED__53;

  fp32_normal_finite_wrapper shared_wrapper ( .x({x[31:18], 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0}), .y({y[31:18], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .divide_mode(1'b0), .fraction_x({mantissa_x, SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15, SYNOPSYS_UNCONNECTED__16, 
        SYNOPSYS_UNCONNECTED__17}), .fraction_y({mantissa_y, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31, 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35}), 
        .result_fraction({mantissa_out, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .exponent_adjust({shift[0], shift[0], shift[0]}), .result({out0[31:18], 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, 
        SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39, 
        SYNOPSYS_UNCONNECTED__40, SYNOPSYS_UNCONNECTED__41, 
        SYNOPSYS_UNCONNECTED__42, SYNOPSYS_UNCONNECTED__43, 
        SYNOPSYS_UNCONNECTED__44, SYNOPSYS_UNCONNECTED__45, 
        SYNOPSYS_UNCONNECTED__46, SYNOPSYS_UNCONNECTED__47, 
        SYNOPSYS_UNCONNECTED__48, SYNOPSYS_UNCONNECTED__49, 
        SYNOPSYS_UNCONNECTED__50, SYNOPSYS_UNCONNECTED__51, 
        SYNOPSYS_UNCONNECTED__52, SYNOPSYS_UNCONNECTED__53}) );
endmodule


module fig8_pace_l2_d18_delivered ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   shift, n1;
  wire   [4:0] mx;
  wire   [4:0] my;
  wire   [4:0] mz;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17;
  assign result[0] = 1'b0;
  assign result[1] = 1'b0;
  assign result[2] = 1'b0;
  assign result[3] = 1'b0;
  assign result[4] = 1'b0;
  assign result[5] = 1'b0;
  assign result[6] = 1'b0;
  assign result[7] = 1'b0;
  assign result[8] = 1'b0;
  assign result[9] = 1'b0;
  assign result[10] = 1'b0;
  assign result[11] = 1'b0;
  assign result[12] = 1'b0;
  assign result[13] = 1'b0;
  assign result[14] = 1'b0;
  assign result[15] = 1'b0;
  assign result[16] = 1'b0;
  assign result[17] = 1'b0;

  fig8_delivered_core_l2_MANTISSA_WIDTH5 core ( .Mantissa_X(mx), .Mantissa_Y(
        my), .Mantissa_Out(mz), .Shift(shift) );
  FP_DIV_WRAPPER_32_width_trunc18 shell ( .x({x[31:18], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .y({y[31:18], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .out0({result[31:18], SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17}), .mantissa_x(mx), 
        .mantissa_y(my), .mantissa_out(mz), .shift(n1) );
  INVD1 U2 ( .I(shift), .ZN(n1) );
endmodule

