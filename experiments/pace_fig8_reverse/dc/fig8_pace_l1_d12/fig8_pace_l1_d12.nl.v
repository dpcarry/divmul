/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Sat Sep  5 12:50:00 2026
/////////////////////////////////////////////////////////////


module CSA3_2_Array_WIDTH13 ( In_1, In_2, In_3, S, C );
  input [12:0] In_1;
  input [12:0] In_2;
  input [12:0] In_3;
  output [12:0] S;
  output [12:0] C;
  wire   n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25;

  CKXOR2D1 U1 ( .A1(In_3[9]), .A2(In_2[9]), .Z(S[9]) );
  CKXOR2D1 U2 ( .A1(In_3[8]), .A2(In_2[8]), .Z(S[8]) );
  CKXOR2D1 U3 ( .A1(In_3[7]), .A2(In_2[7]), .Z(S[7]) );
  CKXOR2D1 U4 ( .A1(In_3[6]), .A2(In_2[6]), .Z(S[6]) );
  CKXOR2D1 U5 ( .A1(In_3[5]), .A2(In_2[5]), .Z(S[5]) );
  CKXOR2D1 U6 ( .A1(In_3[4]), .A2(In_2[4]), .Z(S[4]) );
  CKXOR2D1 U7 ( .A1(In_3[3]), .A2(In_2[3]), .Z(S[3]) );
  CKXOR2D1 U8 ( .A1(In_3[2]), .A2(In_2[2]), .Z(S[2]) );
  CKXOR2D1 U9 ( .A1(In_3[1]), .A2(In_2[1]), .Z(S[1]) );
  CKXOR2D1 U11 ( .A1(In_3[11]), .A2(In_2[11]), .Z(S[11]) );
  CKXOR2D1 U12 ( .A1(In_3[10]), .A2(In_2[10]), .Z(S[10]) );
  CKXOR2D1 U13 ( .A1(In_3[0]), .A2(In_2[0]), .Z(S[0]) );
  XNR2D0 U10 ( .A1(In_3[12]), .A2(In_2[12]), .ZN(S[12]) );
  CKND0 U14 ( .I(n25), .ZN(C[11]) );
  CKND0 U15 ( .I(n24), .ZN(C[10]) );
  CKND2D0 U16 ( .A1(In_3[11]), .A2(In_2[11]), .ZN(n25) );
  CKND0 U17 ( .I(n23), .ZN(C[9]) );
  CKND2D0 U18 ( .A1(In_3[10]), .A2(In_2[10]), .ZN(n24) );
  CKND0 U19 ( .I(n22), .ZN(C[8]) );
  CKND2D0 U20 ( .A1(In_3[9]), .A2(In_2[9]), .ZN(n23) );
  CKND0 U21 ( .I(n21), .ZN(C[7]) );
  CKND2D0 U22 ( .A1(In_3[8]), .A2(In_2[8]), .ZN(n22) );
  CKND0 U23 ( .I(n20), .ZN(C[6]) );
  CKND2D0 U24 ( .A1(In_3[7]), .A2(In_2[7]), .ZN(n21) );
  CKND0 U25 ( .I(n19), .ZN(C[5]) );
  CKND2D0 U26 ( .A1(In_3[6]), .A2(In_2[6]), .ZN(n20) );
  CKND0 U27 ( .I(n18), .ZN(C[4]) );
  CKND2D0 U28 ( .A1(In_3[5]), .A2(In_2[5]), .ZN(n19) );
  CKND0 U29 ( .I(n17), .ZN(C[3]) );
  CKND2D0 U30 ( .A1(In_3[4]), .A2(In_2[4]), .ZN(n18) );
  CKND0 U31 ( .I(n16), .ZN(C[2]) );
  CKND2D0 U32 ( .A1(In_3[3]), .A2(In_2[3]), .ZN(n17) );
  CKND0 U33 ( .I(n15), .ZN(C[1]) );
  CKND2D0 U34 ( .A1(In_3[2]), .A2(In_2[2]), .ZN(n16) );
  CKND1 U35 ( .I(n14), .ZN(C[0]) );
  CKND2D0 U36 ( .A1(In_3[1]), .A2(In_2[1]), .ZN(n15) );
  CKND2D0 U37 ( .A1(In_3[0]), .A2(In_2[0]), .ZN(n14) );
endmodule


module Mantissa_Div_L1_MANTISSA_WIDTH11_DW01_add_0 ( A, B, CI, SUM, CO );
  input [12:0] A;
  input [12:0] B;
  output [12:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [12:3] carry;

  FA1D0 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  FA1D0 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FA1D0 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA1D0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA1D0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1D0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1D0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1D0 U1_2 ( .A(A[2]), .B(B[2]), .CI(n1), .CO(carry[3]), .S(SUM[2]) );
  FA1D0 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FA1D0 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  XOR3D1 U1_12 ( .A1(A[12]), .A2(B[12]), .A3(carry[12]), .Z(SUM[12]) );
  AN2XD1 U1 ( .A1(B[1]), .A2(A[1]), .Z(n1) );
  CKXOR2D1 U2 ( .A1(B[1]), .A2(A[1]), .Z(SUM[1]) );
endmodule


module Mantissa_Div_L1_MANTISSA_WIDTH11_DW01_sub_0_DW01_sub_1 ( A, B, CI, DIFF, 
        CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] DIFF;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  wire   [11:1] carry;

  FA1D0 U2_10 ( .A(A[10]), .B(n2), .CI(carry[10]), .CO(carry[11]), .S(DIFF[10]) );
  FA1D0 U2_9 ( .A(A[9]), .B(n3), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9]) );
  FA1D0 U2_8 ( .A(A[8]), .B(n4), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  FA1D0 U2_7 ( .A(A[7]), .B(n5), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  FA1D0 U2_6 ( .A(A[6]), .B(n6), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  FA1D0 U2_5 ( .A(A[5]), .B(n7), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  FA1D0 U2_4 ( .A(A[4]), .B(n8), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FA1D0 U2_3 ( .A(A[3]), .B(n9), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  FA1D0 U2_2 ( .A(A[2]), .B(n10), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  FA1D0 U2_1 ( .A(A[1]), .B(n11), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  INVD1 U3 ( .I(B[1]), .ZN(n11) );
  INVD1 U4 ( .I(B[2]), .ZN(n10) );
  INVD1 U5 ( .I(B[3]), .ZN(n9) );
  INVD1 U6 ( .I(B[4]), .ZN(n8) );
  INVD1 U7 ( .I(B[5]), .ZN(n7) );
  INVD1 U8 ( .I(B[6]), .ZN(n6) );
  INVD1 U9 ( .I(B[7]), .ZN(n5) );
  INVD1 U10 ( .I(B[8]), .ZN(n4) );
  INVD1 U11 ( .I(B[9]), .ZN(n3) );
  INVD1 U12 ( .I(B[10]), .ZN(n2) );
  CKND0 U15 ( .I(carry[11]), .ZN(DIFF[11]) );
  CKXOR2D0 U1 ( .A1(A[0]), .A2(B[0]), .Z(DIFF[0]) );
  IND2D0 U2 ( .A1(A[0]), .B1(B[0]), .ZN(carry[1]) );
endmodule


module Mantissa_Div_L1_MANTISSA_WIDTH11 ( Mantissa_X, Mantissa_Y, Mantissa_Out, 
        Shift );
  input [10:0] Mantissa_X;
  input [10:0] Mantissa_Y;
  output [10:0] Mantissa_Out;
  output Shift;
  wire   n7, n21, n22, n2, n3, n4, n5, n6, n8, n9, n10, n11, n12, n13, n14,
         n15;
  wire   [11:0] x_sub_y;
  wire   [12:0] L1_p2;
  wire   [12:0] A11S;
  wire   [11:0] A11C;
  wire   [11:1] Res;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1;

  CSA3_2_Array_WIDTH13 Stage_0_0 ( .In_1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .In_2({x_sub_y[11], 
        x_sub_y}), .In_3({L1_p2[12], L1_p2[12], L1_p2[12], L1_p2[9:0]}), .S(
        A11S), .C({SYNOPSYS_UNCONNECTED__0, A11C}) );
  Mantissa_Div_L1_MANTISSA_WIDTH11_DW01_add_0 add_38 ( .A(A11S), .B({A11C, n7}), .CI(n7), .SUM({Shift, Res, SYNOPSYS_UNCONNECTED__1}) );
  Mantissa_Div_L1_MANTISSA_WIDTH11_DW01_sub_0_DW01_sub_1 sub_16 ( .A({n7, 
        Mantissa_X}), .B({n7, Mantissa_Y}), .CI(n7), .DIFF(x_sub_y) );
  OAI222D0 U3 ( .A1(n21), .A2(n6), .B1(n4), .B2(n22), .C1(n5), .C2(n2), .ZN(
        Mantissa_Out[8]) );
  OAI222D0 U4 ( .A1(n21), .A2(n14), .B1(n22), .B2(n12), .C1(n2), .C2(n13), 
        .ZN(Mantissa_Out[1]) );
  OAI222D0 U5 ( .A1(n21), .A2(n13), .B1(n22), .B2(n11), .C1(n2), .C2(n12), 
        .ZN(Mantissa_Out[2]) );
  OAI222D0 U6 ( .A1(n21), .A2(n12), .B1(n22), .B2(n10), .C1(n2), .C2(n11), 
        .ZN(Mantissa_Out[3]) );
  OAI222D0 U7 ( .A1(n21), .A2(n11), .B1(n22), .B2(n9), .C1(n2), .C2(n10), .ZN(
        Mantissa_Out[4]) );
  OAI222D0 U8 ( .A1(n21), .A2(n10), .B1(n22), .B2(n8), .C1(n2), .C2(n9), .ZN(
        Mantissa_Out[5]) );
  OAI222D0 U9 ( .A1(n21), .A2(n9), .B1(n22), .B2(n6), .C1(n2), .C2(n8), .ZN(
        Mantissa_Out[6]) );
  OAI222D0 U10 ( .A1(n21), .A2(n8), .B1(n5), .B2(n22), .C1(n2), .C2(n6), .ZN(
        Mantissa_Out[7]) );
  ND2D1 U11 ( .A1(n3), .A2(n2), .ZN(n22) );
  OAI22D1 U12 ( .A1(n4), .A2(n2), .B1(n21), .B2(n5), .ZN(Mantissa_Out[9]) );
  OAI22D1 U13 ( .A1(n21), .A2(n4), .B1(n3), .B2(n2), .ZN(Mantissa_Out[10]) );
  INR2D1 U14 ( .A1(x_sub_y[11]), .B1(Mantissa_Y[10]), .ZN(L1_p2[12]) );
  INR2D1 U15 ( .A1(x_sub_y[3]), .B1(Mantissa_Y[10]), .ZN(L1_p2[2]) );
  INR2D1 U16 ( .A1(x_sub_y[4]), .B1(Mantissa_Y[10]), .ZN(L1_p2[3]) );
  INR2D1 U17 ( .A1(x_sub_y[5]), .B1(Mantissa_Y[10]), .ZN(L1_p2[4]) );
  INR2D1 U18 ( .A1(x_sub_y[6]), .B1(Mantissa_Y[10]), .ZN(L1_p2[5]) );
  INR2D1 U19 ( .A1(x_sub_y[7]), .B1(Mantissa_Y[10]), .ZN(L1_p2[6]) );
  INR2D1 U20 ( .A1(x_sub_y[8]), .B1(Mantissa_Y[10]), .ZN(L1_p2[7]) );
  INR2D1 U21 ( .A1(x_sub_y[9]), .B1(Mantissa_Y[10]), .ZN(L1_p2[8]) );
  INR2D1 U22 ( .A1(x_sub_y[10]), .B1(Mantissa_Y[10]), .ZN(L1_p2[9]) );
  INR2D1 U23 ( .A1(x_sub_y[2]), .B1(Mantissa_Y[10]), .ZN(L1_p2[1]) );
  INR2D1 U24 ( .A1(x_sub_y[1]), .B1(Mantissa_Y[10]), .ZN(L1_p2[0]) );
  ND2D1 U25 ( .A1(Res[11]), .A2(n2), .ZN(n21) );
  INVD1 U26 ( .I(Shift), .ZN(n2) );
  OAI222D0 U27 ( .A1(n15), .A2(n21), .B1(n13), .B2(n22), .C1(n14), .C2(n2), 
        .ZN(Mantissa_Out[0]) );
  INVD1 U28 ( .I(A11S[0]), .ZN(n15) );
  INVD1 U29 ( .I(Res[11]), .ZN(n3) );
  INVD1 U30 ( .I(Res[10]), .ZN(n4) );
  INVD1 U31 ( .I(Res[9]), .ZN(n5) );
  INVD1 U32 ( .I(Res[8]), .ZN(n6) );
  INVD1 U33 ( .I(Res[7]), .ZN(n8) );
  INVD1 U34 ( .I(Res[6]), .ZN(n9) );
  INVD1 U35 ( .I(Res[5]), .ZN(n10) );
  INVD1 U36 ( .I(Res[4]), .ZN(n11) );
  INVD1 U37 ( .I(Res[3]), .ZN(n12) );
  INVD1 U38 ( .I(Res[2]), .ZN(n13) );
  INVD1 U39 ( .I(Res[1]), .ZN(n14) );
  TIEL U42 ( .ZN(n7) );
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
  CKBD1 U29 ( .I(result_fraction[20]), .Z(result[20]) );
  CKBD1 U30 ( .I(result_fraction[13]), .Z(result[13]) );
  CKBD1 U31 ( .I(result_fraction[14]), .Z(result[14]) );
  CKBD1 U32 ( .I(result_fraction[15]), .Z(result[15]) );
  CKBD1 U33 ( .I(result_fraction[16]), .Z(result[16]) );
  CKBD1 U34 ( .I(result_fraction[17]), .Z(result[17]) );
  CKBD1 U35 ( .I(result_fraction[18]), .Z(result[18]) );
  CKBD1 U36 ( .I(result_fraction[19]), .Z(result[19]) );
  CKBD1 U37 ( .I(result_fraction[21]), .Z(result[21]) );
  FA1D0 U38 ( .A(N4), .B(exponent_adjust[1]), .CI(n1), .CO(
        add_0_root_add_0_root_add_22_2_carry[2]), .S(result[24]) );
  FA1D0 U39 ( .A(N5), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[2]), .CO(
        add_0_root_add_0_root_add_22_2_carry[3]), .S(result[25]) );
  FA1D0 U40 ( .A(N6), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[3]), .CO(
        add_0_root_add_0_root_add_22_2_carry[4]), .S(result[26]) );
  FA1D0 U41 ( .A(N7), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[4]), .CO(
        add_0_root_add_0_root_add_22_2_carry[5]), .S(result[27]) );
  FA1D0 U42 ( .A(N8), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[5]), .CO(
        add_0_root_add_0_root_add_22_2_carry[6]), .S(result[28]) );
  FA1D0 U43 ( .A(N9), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[6]), .CO(
        add_0_root_add_0_root_add_22_2_carry[7]), .S(result[29]) );
  CKBD1 U44 ( .I(result_fraction[12]), .Z(result[12]) );
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
  CKBD1 U93 ( .I(x[16]), .Z(fraction_x[16]) );
  CKBD1 U94 ( .I(x[15]), .Z(fraction_x[15]) );
  CKBD1 U95 ( .I(x[14]), .Z(fraction_x[14]) );
  CKBD1 U96 ( .I(x[13]), .Z(fraction_x[13]) );
  CKBD1 U97 ( .I(x[12]), .Z(fraction_x[12]) );
  CKBD1 U98 ( .I(y[22]), .Z(fraction_y[22]) );
  CKBD1 U99 ( .I(y[21]), .Z(fraction_y[21]) );
  CKBD1 U100 ( .I(y[20]), .Z(fraction_y[20]) );
  CKBD1 U101 ( .I(y[19]), .Z(fraction_y[19]) );
  CKBD1 U102 ( .I(y[18]), .Z(fraction_y[18]) );
  CKBD1 U103 ( .I(y[17]), .Z(fraction_y[17]) );
  CKBD1 U104 ( .I(y[16]), .Z(fraction_y[16]) );
  CKBD1 U105 ( .I(y[15]), .Z(fraction_y[15]) );
  CKBD1 U106 ( .I(y[14]), .Z(fraction_y[14]) );
  CKBD1 U107 ( .I(y[13]), .Z(fraction_y[13]) );
  CKBD1 U108 ( .I(y[12]), .Z(fraction_y[12]) );
  CKBD1 U109 ( .I(result_fraction[22]), .Z(result[22]) );
  TIEL U110 ( .ZN(n79) );
  CKXOR2D1 U111 ( .A1(exponent_adjust[0]), .A2(N3), .Z(result[23]) );
  CKND0 U119 ( .I(y[23]), .ZN(N11) );
endmodule


module FP_DIV_WRAPPER_32_width_trunc12 ( x, y, out0, mantissa_x, mantissa_y, 
        mantissa_out, shift );
  input [31:0] x;
  input [31:0] y;
  output [31:0] out0;
  output [10:0] mantissa_x;
  output [10:0] mantissa_y;
  input [10:0] mantissa_out;
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
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35;

  fp32_normal_finite_wrapper shared_wrapper ( .x({x[31:12], 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y({y[31:12], 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .divide_mode(1'b0), .fraction_x({mantissa_x, SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11}), .fraction_y({mantissa_y, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23}), 
        .result_fraction({mantissa_out, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .exponent_adjust({shift[0], 
        shift[0], shift[0]}), .result({out0[31:12], SYNOPSYS_UNCONNECTED__24, 
        SYNOPSYS_UNCONNECTED__25, SYNOPSYS_UNCONNECTED__26, 
        SYNOPSYS_UNCONNECTED__27, SYNOPSYS_UNCONNECTED__28, 
        SYNOPSYS_UNCONNECTED__29, SYNOPSYS_UNCONNECTED__30, 
        SYNOPSYS_UNCONNECTED__31, SYNOPSYS_UNCONNECTED__32, 
        SYNOPSYS_UNCONNECTED__33, SYNOPSYS_UNCONNECTED__34, 
        SYNOPSYS_UNCONNECTED__35}) );
endmodule


module fig8_pace_l1_d12 ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   shift, n1;
  wire   [10:0] mx;
  wire   [10:0] my;
  wire   [10:0] mz;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11;
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

  Mantissa_Div_L1_MANTISSA_WIDTH11 core ( .Mantissa_X(mx), .Mantissa_Y(my), 
        .Mantissa_Out(mz), .Shift(shift) );
  FP_DIV_WRAPPER_32_width_trunc12 shell ( .x({x[31:12], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y({y[31:12], 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .out0({result[31:12], SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11}), .mantissa_x(mx), 
        .mantissa_y(my), .mantissa_out(mz), .shift(n1) );
  INVD1 U2 ( .I(shift), .ZN(n1) );
endmodule

