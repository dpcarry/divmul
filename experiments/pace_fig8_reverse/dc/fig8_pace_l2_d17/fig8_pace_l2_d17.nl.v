/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Sat Sep  5 13:01:42 2026
/////////////////////////////////////////////////////////////


module CSA3_2_Array_WIDTH8_0 ( In_1, In_2, In_3, S, C );
  input [7:0] In_1;
  input [7:0] In_2;
  input [7:0] In_3;
  output [7:0] S;
  output [7:0] C;
  wire   n9, n10, n11, n12, n13, n14, n15;

  CKXOR2D1 U2 ( .A1(In_3[6]), .A2(In_2[6]), .Z(S[6]) );
  CKXOR2D1 U3 ( .A1(In_3[5]), .A2(In_2[5]), .Z(S[5]) );
  CKXOR2D1 U4 ( .A1(In_3[4]), .A2(In_2[4]), .Z(S[4]) );
  CKXOR2D1 U5 ( .A1(In_3[3]), .A2(In_2[3]), .Z(S[3]) );
  CKXOR2D1 U6 ( .A1(In_3[2]), .A2(In_2[2]), .Z(S[2]) );
  CKXOR2D1 U7 ( .A1(In_3[1]), .A2(In_2[1]), .Z(S[1]) );
  CKXOR2D1 U8 ( .A1(In_3[0]), .A2(In_2[0]), .Z(S[0]) );
  XNR2D0 U1 ( .A1(In_3[7]), .A2(In_2[7]), .ZN(S[7]) );
  CKND0 U9 ( .I(n15), .ZN(C[6]) );
  CKND1 U10 ( .I(n14), .ZN(C[5]) );
  CKND2D0 U11 ( .A1(In_3[6]), .A2(In_2[6]), .ZN(n15) );
  CKND1 U12 ( .I(n13), .ZN(C[4]) );
  CKND2D0 U13 ( .A1(In_3[5]), .A2(In_2[5]), .ZN(n14) );
  CKND1 U14 ( .I(n12), .ZN(C[3]) );
  CKND2D0 U15 ( .A1(In_3[4]), .A2(In_2[4]), .ZN(n13) );
  CKND1 U16 ( .I(n11), .ZN(C[2]) );
  CKND2D0 U17 ( .A1(In_3[3]), .A2(In_2[3]), .ZN(n12) );
  CKND1 U18 ( .I(n10), .ZN(C[1]) );
  CKND2D0 U19 ( .A1(In_3[2]), .A2(In_2[2]), .ZN(n11) );
  CKND1 U20 ( .I(n9), .ZN(C[0]) );
  CKND2D0 U21 ( .A1(In_3[1]), .A2(In_2[1]), .ZN(n10) );
  CKND2D0 U22 ( .A1(In_3[0]), .A2(In_2[0]), .ZN(n9) );
endmodule


module CSA3_2_Array_WIDTH8_1 ( In_1, In_2, In_3, S, C );
  input [7:0] In_1;
  input [7:0] In_2;
  input [7:0] In_3;
  output [7:0] S;
  output [7:0] C;
  wire   n10, n11, n12, n13, n14, n15, n17;

  CKXOR2D1 U2 ( .A1(In_3[6]), .A2(n15), .Z(S[6]) );
  CKXOR2D1 U3 ( .A1(In_3[5]), .A2(n14), .Z(S[5]) );
  CKXOR2D1 U4 ( .A1(In_3[4]), .A2(n13), .Z(S[4]) );
  CKXOR2D1 U5 ( .A1(In_3[3]), .A2(n12), .Z(S[3]) );
  CKXOR2D1 U6 ( .A1(In_3[2]), .A2(n11), .Z(S[2]) );
  CKXOR2D1 U7 ( .A1(In_3[1]), .A2(n10), .Z(S[1]) );
  CKXOR2D1 U8 ( .A1(In_3[0]), .A2(In_1[0]), .Z(S[0]) );
  CKXOR2D1 U12 ( .A1(In_2[6]), .A2(In_1[6]), .Z(n15) );
  CKXOR2D1 U14 ( .A1(In_2[5]), .A2(In_1[5]), .Z(n14) );
  CKXOR2D1 U16 ( .A1(In_2[4]), .A2(In_1[4]), .Z(n13) );
  CKXOR2D1 U18 ( .A1(In_2[3]), .A2(In_1[3]), .Z(n12) );
  CKXOR2D1 U20 ( .A1(In_2[2]), .A2(In_1[2]), .Z(n11) );
  CKXOR2D1 U22 ( .A1(In_2[1]), .A2(In_1[1]), .Z(n10) );
  AO22D0 U9 ( .A1(In_2[6]), .A2(In_1[6]), .B1(n15), .B2(In_3[6]), .Z(C[6]) );
  AO22D0 U11 ( .A1(In_2[4]), .A2(In_1[4]), .B1(n13), .B2(In_3[4]), .Z(C[4]) );
  AO22D0 U13 ( .A1(In_2[5]), .A2(In_1[5]), .B1(n14), .B2(In_3[5]), .Z(C[5]) );
  AO22D0 U15 ( .A1(In_2[1]), .A2(In_1[1]), .B1(n10), .B2(In_3[1]), .Z(C[1]) );
  AO22D0 U17 ( .A1(In_2[2]), .A2(In_1[2]), .B1(n11), .B2(In_3[2]), .Z(C[2]) );
  AO22D0 U19 ( .A1(In_2[3]), .A2(In_1[3]), .B1(n12), .B2(In_3[3]), .Z(C[3]) );
  XOR3D0 U1 ( .A1(In_1[7]), .A2(In_3[7]), .A3(In_2[7]), .Z(S[7]) );
  CKND1 U10 ( .I(n17), .ZN(C[0]) );
  CKND2D0 U21 ( .A1(In_3[0]), .A2(In_1[0]), .ZN(n17) );
endmodule


module Mantissa_Div_L2_MANTISSA_WIDTH6_DW01_add_0 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [7:3] carry;

  FA1D0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1D0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1D0 U1_2 ( .A(A[2]), .B(B[2]), .CI(n1), .CO(carry[3]), .S(SUM[2]) );
  FA1D0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA1D0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  XOR3D1 U1_7 ( .A1(A[7]), .A2(B[7]), .A3(carry[7]), .Z(SUM[7]) );
  AN2XD1 U1 ( .A1(B[1]), .A2(A[1]), .Z(n1) );
  CKXOR2D1 U2 ( .A1(B[1]), .A2(A[1]), .Z(SUM[1]) );
endmodule


module Mantissa_Div_L2_MANTISSA_WIDTH6_DW01_sub_1_DW01_sub_2 ( A, B, CI, DIFF, 
        CO );
  input [6:0] A;
  input [6:0] B;
  output [6:0] DIFF;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6;
  wire   [6:1] carry;

  FA1D0 U2_5 ( .A(A[5]), .B(n2), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  FA1D0 U2_2 ( .A(A[2]), .B(n5), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  FA1D0 U2_1 ( .A(A[1]), .B(n6), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  FA1D0 U2_4 ( .A(A[4]), .B(n3), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FA1D0 U2_3 ( .A(A[3]), .B(n4), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  INVD1 U1 ( .I(B[3]), .ZN(n4) );
  INVD1 U2 ( .I(B[4]), .ZN(n3) );
  INVD1 U4 ( .I(B[1]), .ZN(n6) );
  INVD1 U6 ( .I(B[2]), .ZN(n5) );
  INVD1 U7 ( .I(B[5]), .ZN(n2) );
  CKND0 U10 ( .I(carry[6]), .ZN(DIFF[6]) );
  CKXOR2D0 U3 ( .A1(A[0]), .A2(B[0]), .Z(DIFF[0]) );
  IND2D0 U5 ( .A1(A[0]), .B1(B[0]), .ZN(carry[1]) );
endmodule


module Mantissa_Div_L2_MANTISSA_WIDTH6 ( Mantissa_X, Mantissa_Y, Mantissa_Out, 
        Shift );
  input [5:0] Mantissa_X;
  input [5:0] Mantissa_Y;
  output [5:0] Mantissa_Out;
  output Shift;
  wire   n13, n21, n22, n23, n24, n25, n26, n2, n3, n4, n5, n6, n7, n8, n9,
         n10, n11, n12, n14, n15, n16, n17;
  wire   [6:0] x_sub_y;
  wire   [6:3] y_sub_x;
  wire   [7:0] L1_p2;
  wire   [7:0] L2_p;
  wire   [7:0] A11S;
  wire   [6:0] A11C;
  wire   [7:0] A21S;
  wire   [6:0] A21C;
  wire   [6:1] Res;
  wire   [6:3] sub_17_carry;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2;

  MOAI22D1 U10 ( .A1(n21), .A2(n11), .B1(Res[6]), .B2(Shift), .ZN(
        Mantissa_Out[5]) );
  OR2D1 U16 ( .A1(Res[6]), .A2(Shift), .Z(n22) );
  AO222D1 U21 ( .A1(y_sub_x[5]), .A2(n26), .B1(x_sub_y[5]), .B2(n25), .C1(
        x_sub_y[4]), .C2(n23), .Z(L2_p[2]) );
  AO222D1 U22 ( .A1(y_sub_x[4]), .A2(n26), .B1(x_sub_y[4]), .B2(n25), .C1(
        x_sub_y[3]), .C2(n23), .Z(L2_p[1]) );
  AO222D1 U23 ( .A1(y_sub_x[3]), .A2(n26), .B1(x_sub_y[3]), .B2(n25), .C1(
        x_sub_y[2]), .C2(n23), .Z(L2_p[0]) );
  CSA3_2_Array_WIDTH8_0 Stage_1_1 ( .In_1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .In_2({x_sub_y[6], x_sub_y}), .In_3({L1_p2[7], L1_p2[7], 
        L1_p2[7], L1_p2[4:0]}), .S(A11S), .C({SYNOPSYS_UNCONNECTED__0, A11C})
         );
  CSA3_2_Array_WIDTH8_1 Stage_2_1 ( .In_1(A11S), .In_2({A11C, 1'b0}), .In_3({
        L2_p[7], L2_p[7], L2_p[7], L2_p[7], L2_p[3:0]}), .S(A21S), .C({
        SYNOPSYS_UNCONNECTED__1, A21C}) );
  Mantissa_Div_L2_MANTISSA_WIDTH6_DW01_add_0 add_68 ( .A(A21S), .B({A21C, n13}), .CI(n13), .SUM({Shift, Res, SYNOPSYS_UNCONNECTED__2}) );
  Mantissa_Div_L2_MANTISSA_WIDTH6_DW01_sub_1_DW01_sub_2 sub_16 ( .A({n13, 
        Mantissa_X}), .B({n13, Mantissa_Y}), .CI(n13), .DIFF(x_sub_y) );
  OAI222D0 U3 ( .A1(n21), .A2(n15), .B1(n12), .B2(n22), .C1(n10), .C2(n14), 
        .ZN(Mantissa_Out[2]) );
  OAI222D0 U4 ( .A1(n21), .A2(n14), .B1(n11), .B2(n22), .C1(n10), .C2(n12), 
        .ZN(Mantissa_Out[3]) );
  OAI22D1 U5 ( .A1(n10), .A2(n11), .B1(n21), .B2(n12), .ZN(Mantissa_Out[4]) );
  AOI22D1 U6 ( .A1(n25), .A2(x_sub_y[6]), .B1(y_sub_x[6]), .B2(n26), .ZN(n24)
         );
  IOA21D1 U7 ( .A1(n23), .A2(x_sub_y[5]), .B(n24), .ZN(L2_p[3]) );
  IOA21D1 U8 ( .A1(x_sub_y[6]), .A2(n23), .B(n24), .ZN(L2_p[7]) );
  INVD1 U9 ( .I(Shift), .ZN(n10) );
  ND2D1 U11 ( .A1(Res[6]), .A2(n10), .ZN(n21) );
  OAI222D0 U12 ( .A1(n21), .A2(n16), .B1(n22), .B2(n14), .C1(n10), .C2(n15), 
        .ZN(Mantissa_Out[1]) );
  INVD1 U13 ( .I(Res[5]), .ZN(n11) );
  INVD1 U14 ( .I(Res[4]), .ZN(n12) );
  INVD1 U15 ( .I(Res[3]), .ZN(n14) );
  INVD1 U17 ( .I(Res[2]), .ZN(n15) );
  INR2D1 U18 ( .A1(x_sub_y[6]), .B1(Mantissa_Y[5]), .ZN(L1_p2[7]) );
  FA1D0 U19 ( .A(Mantissa_Y[3]), .B(n7), .CI(sub_17_carry[3]), .CO(
        sub_17_carry[4]), .S(y_sub_x[3]) );
  INVD1 U20 ( .I(Mantissa_X[3]), .ZN(n7) );
  FA1D0 U24 ( .A(Mantissa_Y[4]), .B(n8), .CI(sub_17_carry[4]), .CO(
        sub_17_carry[5]), .S(y_sub_x[4]) );
  INVD1 U25 ( .I(Mantissa_X[4]), .ZN(n8) );
  INVD1 U26 ( .I(Mantissa_Y[1]), .ZN(n6) );
  FA1D0 U27 ( .A(Mantissa_Y[5]), .B(n9), .CI(sub_17_carry[5]), .CO(
        sub_17_carry[6]), .S(y_sub_x[5]) );
  INVD1 U28 ( .I(Mantissa_X[5]), .ZN(n9) );
  INR2D1 U29 ( .A1(x_sub_y[5]), .B1(Mantissa_Y[5]), .ZN(L1_p2[4]) );
  INR2D1 U30 ( .A1(x_sub_y[3]), .B1(Mantissa_Y[5]), .ZN(L1_p2[2]) );
  INR2D1 U31 ( .A1(x_sub_y[4]), .B1(Mantissa_Y[5]), .ZN(L1_p2[3]) );
  INR2D1 U32 ( .A1(x_sub_y[2]), .B1(Mantissa_Y[5]), .ZN(L1_p2[1]) );
  INR2D1 U33 ( .A1(x_sub_y[1]), .B1(Mantissa_Y[5]), .ZN(L1_p2[0]) );
  INR2D1 U34 ( .A1(Mantissa_Y[5]), .B1(Mantissa_Y[4]), .ZN(n25) );
  NR2D1 U35 ( .A1(Mantissa_Y[4]), .A2(Mantissa_Y[5]), .ZN(n23) );
  INR2D1 U36 ( .A1(Mantissa_Y[4]), .B1(Mantissa_Y[5]), .ZN(n26) );
  OAI222D0 U37 ( .A1(n17), .A2(n21), .B1(n15), .B2(n22), .C1(n16), .C2(n10), 
        .ZN(Mantissa_Out[0]) );
  INVD1 U38 ( .I(A21S[0]), .ZN(n17) );
  INVD1 U39 ( .I(Res[1]), .ZN(n16) );
  TIEL U42 ( .ZN(n13) );
  CKND0 U43 ( .I(sub_17_carry[6]), .ZN(y_sub_x[6]) );
  INR2D0 U44 ( .A1(Mantissa_X[0]), .B1(Mantissa_Y[0]), .ZN(n3) );
  AN2D0 U45 ( .A1(n3), .A2(n6), .Z(n2) );
  OAI22D0 U46 ( .A1(n3), .A2(n6), .B1(Mantissa_X[1]), .B2(n2), .ZN(n4) );
  NR2D0 U47 ( .A1(Mantissa_Y[2]), .A2(n4), .ZN(n5) );
  MOAI22D0 U48 ( .A1(Mantissa_X[2]), .A2(n5), .B1(n4), .B2(Mantissa_Y[2]), 
        .ZN(sub_17_carry[3]) );
endmodule


module fp32_normal_finite_wrapper_DW01_add_1_DW01_add_2 ( A, B, CI, SUM, CO );
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
  fp32_normal_finite_wrapper_DW01_add_1_DW01_add_2 add_1_root_add_0_root_add_22_2 ( 
        .A(x[30:23]), .B({y[30], N17, N16, N15, N14, N13, N12, N11}), .CI(n79), 
        .SUM({N10, N9, N8, N7, N6, N5, N4, N3}) );
  AN2XD1 U3 ( .A1(exponent_adjust[0]), .A2(N3), .Z(n1) );
  FA1D0 U39 ( .A(N4), .B(exponent_adjust[1]), .CI(n1), .CO(
        add_0_root_add_0_root_add_22_2_carry[2]), .S(result[24]) );
  FA1D0 U40 ( .A(N5), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[2]), .CO(
        add_0_root_add_0_root_add_22_2_carry[3]), .S(result[25]) );
  FA1D0 U41 ( .A(N6), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[3]), .CO(
        add_0_root_add_0_root_add_22_2_carry[4]), .S(result[26]) );
  FA1D0 U42 ( .A(N7), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[4]), .CO(
        add_0_root_add_0_root_add_22_2_carry[5]), .S(result[27]) );
  FA1D0 U43 ( .A(N8), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[5]), .CO(
        add_0_root_add_0_root_add_22_2_carry[6]), .S(result[28]) );
  FA1D0 U44 ( .A(N9), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[6]), .CO(
        add_0_root_add_0_root_add_22_2_carry[7]), .S(result[29]) );
  XOR3D1 U53 ( .A1(N10), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_22_2_carry[7]), .Z(result[30]) );
  INVD1 U61 ( .I(y[29]), .ZN(N17) );
  INVD1 U62 ( .I(y[24]), .ZN(N12) );
  INVD1 U63 ( .I(y[25]), .ZN(N13) );
  INVD1 U64 ( .I(y[26]), .ZN(N14) );
  INVD1 U65 ( .I(y[27]), .ZN(N15) );
  INVD1 U66 ( .I(y[28]), .ZN(N16) );
  CKBD1 U87 ( .I(x[22]), .Z(fraction_x[22]) );
  CKBD1 U88 ( .I(x[21]), .Z(fraction_x[21]) );
  CKBD1 U89 ( .I(x[20]), .Z(fraction_x[20]) );
  CKBD1 U90 ( .I(x[19]), .Z(fraction_x[19]) );
  CKBD1 U91 ( .I(x[18]), .Z(fraction_x[18]) );
  CKBD1 U92 ( .I(x[17]), .Z(fraction_x[17]) );
  CKBD1 U93 ( .I(y[22]), .Z(fraction_y[22]) );
  CKBD1 U94 ( .I(y[21]), .Z(fraction_y[21]) );
  CKBD1 U95 ( .I(y[20]), .Z(fraction_y[20]) );
  CKBD1 U96 ( .I(y[19]), .Z(fraction_y[19]) );
  CKBD1 U97 ( .I(y[18]), .Z(fraction_y[18]) );
  CKBD1 U98 ( .I(y[17]), .Z(fraction_y[17]) );
  CKBD1 U99 ( .I(result_fraction[22]), .Z(result[22]) );
  CKBD1 U100 ( .I(result_fraction[21]), .Z(result[21]) );
  CKBD1 U101 ( .I(result_fraction[20]), .Z(result[20]) );
  CKBD1 U102 ( .I(result_fraction[19]), .Z(result[19]) );
  CKBD1 U103 ( .I(result_fraction[18]), .Z(result[18]) );
  CKBD1 U104 ( .I(result_fraction[17]), .Z(result[17]) );
  TIEL U110 ( .ZN(n79) );
  CKXOR2D1 U111 ( .A1(exponent_adjust[0]), .A2(N3), .Z(result[23]) );
  CKND0 U119 ( .I(y[23]), .ZN(N11) );
endmodule


module FP_DIV_WRAPPER_32_width_trunc17 ( x, y, out0, mantissa_x, mantissa_y, 
        mantissa_out, shift );
  input [31:0] x;
  input [31:0] y;
  output [31:0] out0;
  output [5:0] mantissa_x;
  output [5:0] mantissa_y;
  input [5:0] mantissa_out;
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
        SYNOPSYS_UNCONNECTED__50;

  fp32_normal_finite_wrapper shared_wrapper ( .x({x[31:17], 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .y({y[31:17], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .divide_mode(1'b0), .fraction_x({mantissa_x, SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15, SYNOPSYS_UNCONNECTED__16}), .fraction_y({
        mantissa_y, SYNOPSYS_UNCONNECTED__17, SYNOPSYS_UNCONNECTED__18, 
        SYNOPSYS_UNCONNECTED__19, SYNOPSYS_UNCONNECTED__20, 
        SYNOPSYS_UNCONNECTED__21, SYNOPSYS_UNCONNECTED__22, 
        SYNOPSYS_UNCONNECTED__23, SYNOPSYS_UNCONNECTED__24, 
        SYNOPSYS_UNCONNECTED__25, SYNOPSYS_UNCONNECTED__26, 
        SYNOPSYS_UNCONNECTED__27, SYNOPSYS_UNCONNECTED__28, 
        SYNOPSYS_UNCONNECTED__29, SYNOPSYS_UNCONNECTED__30, 
        SYNOPSYS_UNCONNECTED__31, SYNOPSYS_UNCONNECTED__32, 
        SYNOPSYS_UNCONNECTED__33}), .result_fraction({mantissa_out, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0}), .exponent_adjust({shift[0], shift[0], shift[0]}), 
        .result({out0[31:17], SYNOPSYS_UNCONNECTED__34, 
        SYNOPSYS_UNCONNECTED__35, SYNOPSYS_UNCONNECTED__36, 
        SYNOPSYS_UNCONNECTED__37, SYNOPSYS_UNCONNECTED__38, 
        SYNOPSYS_UNCONNECTED__39, SYNOPSYS_UNCONNECTED__40, 
        SYNOPSYS_UNCONNECTED__41, SYNOPSYS_UNCONNECTED__42, 
        SYNOPSYS_UNCONNECTED__43, SYNOPSYS_UNCONNECTED__44, 
        SYNOPSYS_UNCONNECTED__45, SYNOPSYS_UNCONNECTED__46, 
        SYNOPSYS_UNCONNECTED__47, SYNOPSYS_UNCONNECTED__48, 
        SYNOPSYS_UNCONNECTED__49, SYNOPSYS_UNCONNECTED__50}) );
endmodule


module fig8_pace_l2_d17 ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   shift, n1;
  wire   [5:0] mx;
  wire   [5:0] my;
  wire   [5:0] mz;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16;
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

  Mantissa_Div_L2_MANTISSA_WIDTH6 core ( .Mantissa_X(mx), .Mantissa_Y(my), 
        .Mantissa_Out(mz), .Shift(shift) );
  FP_DIV_WRAPPER_32_width_trunc17 shell ( .x({x[31:17], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .y({y[31:17], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .out0({
        result[31:17], SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16}), .mantissa_x(mx), .mantissa_y(my), 
        .mantissa_out(mz), .shift(n1) );
  INVD1 U2 ( .I(shift), .ZN(n1) );
endmodule

