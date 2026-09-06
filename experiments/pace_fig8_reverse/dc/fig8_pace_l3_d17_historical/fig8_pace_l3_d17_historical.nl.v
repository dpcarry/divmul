/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Sat Sep  5 13:39:20 2026
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
  CKND1 U18 ( .I(n9), .ZN(C[0]) );
  CKND1 U19 ( .I(n10), .ZN(C[1]) );
  CKND2D0 U20 ( .A1(In_3[2]), .A2(In_2[2]), .ZN(n11) );
  CKND2D0 U21 ( .A1(In_3[1]), .A2(In_2[1]), .ZN(n10) );
  CKND2D0 U22 ( .A1(In_3[0]), .A2(In_2[0]), .ZN(n9) );
endmodule


module CSA3_2_Array_WIDTH8_3 ( In_1, In_2, In_3, S, C );
  input [7:0] In_1;
  input [7:0] In_2;
  input [7:0] In_3;
  output [7:0] S;
  output [7:0] C;
  wire   n9, n10, n11, n12, n13, n14, n15;

  CKXOR2D1 U2 ( .A1(In_3[6]), .A2(n15), .Z(S[6]) );
  CKXOR2D1 U3 ( .A1(In_3[5]), .A2(n14), .Z(S[5]) );
  CKXOR2D1 U4 ( .A1(In_3[4]), .A2(n13), .Z(S[4]) );
  CKXOR2D1 U5 ( .A1(In_3[3]), .A2(n12), .Z(S[3]) );
  CKXOR2D1 U6 ( .A1(In_3[2]), .A2(n11), .Z(S[2]) );
  CKXOR2D1 U7 ( .A1(In_3[1]), .A2(n10), .Z(S[1]) );
  CKXOR2D1 U8 ( .A1(In_3[0]), .A2(n9), .Z(S[0]) );
  CKXOR2D1 U12 ( .A1(In_2[6]), .A2(In_1[6]), .Z(n15) );
  CKXOR2D1 U14 ( .A1(In_2[5]), .A2(In_1[5]), .Z(n14) );
  CKXOR2D1 U16 ( .A1(In_2[4]), .A2(In_1[4]), .Z(n13) );
  CKXOR2D1 U18 ( .A1(In_2[3]), .A2(In_1[3]), .Z(n12) );
  CKXOR2D1 U20 ( .A1(In_2[2]), .A2(In_1[2]), .Z(n11) );
  CKXOR2D1 U22 ( .A1(In_2[1]), .A2(In_1[1]), .Z(n10) );
  CKXOR2D1 U24 ( .A1(In_2[0]), .A2(In_1[0]), .Z(n9) );
  AO22D0 U9 ( .A1(In_2[1]), .A2(In_1[1]), .B1(n10), .B2(In_3[1]), .Z(C[1]) );
  AO22D0 U11 ( .A1(In_2[2]), .A2(In_1[2]), .B1(n11), .B2(In_3[2]), .Z(C[2]) );
  AO22D0 U13 ( .A1(In_2[3]), .A2(In_1[3]), .B1(n12), .B2(In_3[3]), .Z(C[3]) );
  AO22D0 U15 ( .A1(In_2[0]), .A2(In_1[0]), .B1(n9), .B2(In_3[0]), .Z(C[0]) );
  AO22D0 U17 ( .A1(In_2[4]), .A2(In_1[4]), .B1(n13), .B2(In_3[4]), .Z(C[4]) );
  AO22D0 U19 ( .A1(In_2[5]), .A2(In_1[5]), .B1(n14), .B2(In_3[5]), .Z(C[5]) );
  AO22D0 U21 ( .A1(In_2[6]), .A2(In_1[6]), .B1(n15), .B2(In_3[6]), .Z(C[6]) );
  XOR3D0 U1 ( .A1(In_3[7]), .A2(In_1[7]), .A3(In_2[7]), .Z(S[7]) );
endmodule


module CSA3_2_Array_WIDTH8_2 ( In_1, In_2, In_3, S, C );
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
  AO22D0 U9 ( .A1(In_2[1]), .A2(In_1[1]), .B1(n10), .B2(In_3[1]), .Z(C[1]) );
  AO22D0 U11 ( .A1(In_2[3]), .A2(In_1[3]), .B1(n12), .B2(In_3[3]), .Z(C[3]) );
  AO22D0 U13 ( .A1(In_2[2]), .A2(In_1[2]), .B1(n11), .B2(In_3[2]), .Z(C[2]) );
  AO22D0 U15 ( .A1(In_2[4]), .A2(In_1[4]), .B1(n13), .B2(In_3[4]), .Z(C[4]) );
  AO22D0 U17 ( .A1(In_2[5]), .A2(In_1[5]), .B1(n14), .B2(In_3[5]), .Z(C[5]) );
  AO22D0 U19 ( .A1(In_2[6]), .A2(In_1[6]), .B1(n15), .B2(In_3[6]), .Z(C[6]) );
  XOR3D0 U1 ( .A1(In_3[7]), .A2(In_1[7]), .A3(In_2[7]), .Z(S[7]) );
  CKND1 U10 ( .I(n17), .ZN(C[0]) );
  CKND2D0 U21 ( .A1(In_3[0]), .A2(In_1[0]), .ZN(n17) );
endmodule


module CSA3_2_Array_WIDTH8_1 ( In_1, In_2, In_3, S, C );
  input [7:0] In_1;
  input [7:0] In_2;
  input [7:0] In_3;
  output [7:0] S;
  output [7:0] C;
  wire   In_1_0_, n10, n11, n12, n13, n14, n15;
  assign S[0] = In_1_0_;
  assign In_1_0_ = In_1[0];

  CKXOR2D1 U2 ( .A1(In_3[6]), .A2(n15), .Z(S[6]) );
  CKXOR2D1 U3 ( .A1(In_3[5]), .A2(n14), .Z(S[5]) );
  CKXOR2D1 U4 ( .A1(In_3[4]), .A2(n13), .Z(S[4]) );
  CKXOR2D1 U5 ( .A1(In_3[3]), .A2(n12), .Z(S[3]) );
  CKXOR2D1 U6 ( .A1(In_3[2]), .A2(n11), .Z(S[2]) );
  CKXOR2D1 U7 ( .A1(In_3[1]), .A2(n10), .Z(S[1]) );
  CKXOR2D1 U12 ( .A1(In_2[6]), .A2(In_1[6]), .Z(n15) );
  CKXOR2D1 U14 ( .A1(In_2[5]), .A2(In_1[5]), .Z(n14) );
  CKXOR2D1 U16 ( .A1(In_2[4]), .A2(In_1[4]), .Z(n13) );
  CKXOR2D1 U18 ( .A1(In_2[3]), .A2(In_1[3]), .Z(n12) );
  CKXOR2D1 U20 ( .A1(In_2[2]), .A2(In_1[2]), .Z(n11) );
  CKXOR2D1 U22 ( .A1(In_2[1]), .A2(In_1[1]), .Z(n10) );
  AO22D0 U9 ( .A1(In_2[6]), .A2(In_1[6]), .B1(n15), .B2(In_3[6]), .Z(C[6]) );
  AO22D0 U11 ( .A1(In_2[2]), .A2(In_1[2]), .B1(n11), .B2(In_3[2]), .Z(C[2]) );
  AO22D0 U13 ( .A1(In_2[3]), .A2(In_1[3]), .B1(n12), .B2(In_3[3]), .Z(C[3]) );
  AO22D0 U15 ( .A1(In_2[4]), .A2(In_1[4]), .B1(n13), .B2(In_3[4]), .Z(C[4]) );
  AO22D0 U17 ( .A1(In_2[5]), .A2(In_1[5]), .B1(n14), .B2(In_3[5]), .Z(C[5]) );
  AO22D0 U21 ( .A1(In_2[1]), .A2(In_1[1]), .B1(n10), .B2(In_3[1]), .Z(C[1]) );
  XOR3D0 U1 ( .A1(In_1[7]), .A2(In_3[7]), .A3(In_2[7]), .Z(S[7]) );
endmodule


module Mantissa_Div_L3_MANTISSA_WIDTH6_DW01_add_0 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   A_1_;
  wire   [7:3] carry;
  assign SUM[1] = A_1_;
  assign A_1_ = A[1];

  FA1D0 U1_2 ( .A(A[2]), .B(B[2]), .CI(1'b0), .CO(carry[3]), .S(SUM[2]) );
  FA1D0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA1D0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1D0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1D0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  XOR3D1 U1_7 ( .A1(A[7]), .A2(B[7]), .A3(carry[7]), .Z(SUM[7]) );
endmodule


module Mantissa_Div_L3_MANTISSA_WIDTH6_DW01_sub_1 ( A, B, CI, DIFF, CO );
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


module Mantissa_Div_L3_MANTISSA_WIDTH6 ( Mantissa_X, Mantissa_Y, Mantissa_Out, 
        Shift );
  input [5:0] Mantissa_X;
  input [5:0] Mantissa_Y;
  output [5:0] Mantissa_Out;
  output Shift;
  wire   n13, n21, n22, n23, n24, n25, n26, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n14, n15, n16, n17, n18, n19, n20, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45;
  wire   [6:0] x_sub_y;
  wire   [6:3] y_sub_x;
  wire   [7:0] L1_p2;
  wire   [7:0] L2_p;
  wire   [3:0] L3_p1;
  wire   [1:0] L3_p2;
  wire   [7:0] A11S;
  wire   [6:0] A11C;
  wire   [7:0] A12S;
  wire   [6:0] A12C;
  wire   [7:0] A21S;
  wire   [6:0] A21C;
  wire   [7:0] A31S;
  wire   [6:1] A31C;
  wire   [6:1] Res;
  wire   [6:3] sub_18_carry;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5;

  MOAI22D1 U8 ( .A1(n21), .A2(n40), .B1(Res[6]), .B2(Shift), .ZN(
        Mantissa_Out[5]) );
  OR2D1 U14 ( .A1(Res[6]), .A2(Shift), .Z(n22) );
  AO222D1 U19 ( .A1(y_sub_x[5]), .A2(n26), .B1(x_sub_y[5]), .B2(n25), .C1(
        x_sub_y[4]), .C2(n23), .Z(L2_p[2]) );
  AO222D1 U20 ( .A1(y_sub_x[4]), .A2(n26), .B1(x_sub_y[4]), .B2(n25), .C1(
        x_sub_y[3]), .C2(n23), .Z(L2_p[1]) );
  AO222D1 U21 ( .A1(y_sub_x[3]), .A2(n26), .B1(x_sub_y[3]), .B2(n25), .C1(
        x_sub_y[2]), .C2(n23), .Z(L2_p[0]) );
  CSA3_2_Array_WIDTH8_0 Stage_1_1 ( .In_1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .In_2({x_sub_y[6], x_sub_y}), .In_3({L1_p2[7], L1_p2[7], 
        L1_p2[7], L1_p2[4:0]}), .S(A11S), .C({SYNOPSYS_UNCONNECTED__0, A11C})
         );
  CSA3_2_Array_WIDTH8_3 Stage_1_2 ( .In_1({L2_p[7], L2_p[7], L2_p[7], L2_p[7], 
        L2_p[3:0]}), .In_2({L3_p1[3], L3_p1[3], L3_p1[3], L3_p1[3], L3_p1}), 
        .In_3({L3_p2[1], L3_p2[1], L3_p2[1], L3_p2[1], L3_p2[1], L3_p2[1], 
        L3_p2}), .S(A12S), .C({SYNOPSYS_UNCONNECTED__1, A12C}) );
  CSA3_2_Array_WIDTH8_2 Stage_2_1 ( .In_1(A11S), .In_2({A11C, 1'b0}), .In_3(
        A12S), .S(A21S), .C({SYNOPSYS_UNCONNECTED__2, A21C}) );
  CSA3_2_Array_WIDTH8_1 Stage_3_1 ( .In_1(A21S), .In_2({A21C, 1'b0}), .In_3({
        A12C, 1'b0}), .S(A31S), .C({SYNOPSYS_UNCONNECTED__3, A31C, 
        SYNOPSYS_UNCONNECTED__4}) );
  Mantissa_Div_L3_MANTISSA_WIDTH6_DW01_add_0 add_128 ( .A(A31S), .B({A31C, 
        1'b0, n13}), .CI(n13), .SUM({Shift, Res, SYNOPSYS_UNCONNECTED__5}) );
  Mantissa_Div_L3_MANTISSA_WIDTH6_DW01_sub_1 sub_17 ( .A({n13, Mantissa_X}), 
        .B({n13, Mantissa_Y}), .CI(n13), .DIFF(x_sub_y) );
  OAI222D0 U3 ( .A1(n21), .A2(n42), .B1(n40), .B2(n22), .C1(n39), .C2(n41), 
        .ZN(Mantissa_Out[3]) );
  OAI22D1 U4 ( .A1(n39), .A2(n40), .B1(n21), .B2(n41), .ZN(Mantissa_Out[4]) );
  INVD1 U5 ( .I(Shift), .ZN(n39) );
  ND2D1 U6 ( .A1(Res[6]), .A2(n39), .ZN(n21) );
  OAI222D0 U7 ( .A1(n21), .A2(n43), .B1(n41), .B2(n22), .C1(n39), .C2(n42), 
        .ZN(Mantissa_Out[2]) );
  INVD1 U9 ( .I(Res[5]), .ZN(n40) );
  INVD1 U10 ( .I(Res[4]), .ZN(n41) );
  INVD1 U11 ( .I(Res[3]), .ZN(n42) );
  INVD1 U13 ( .I(x_sub_y[4]), .ZN(n37) );
  INVD1 U15 ( .I(x_sub_y[5]), .ZN(n38) );
  OAI222D0 U16 ( .A1(n21), .A2(n44), .B1(n22), .B2(n42), .C1(n39), .C2(n43), 
        .ZN(Mantissa_Out[1]) );
  AOI22D1 U17 ( .A1(n25), .A2(x_sub_y[6]), .B1(y_sub_x[6]), .B2(n26), .ZN(n24)
         );
  IOA21D1 U18 ( .A1(n23), .A2(x_sub_y[5]), .B(n24), .ZN(L2_p[3]) );
  IOA21D1 U22 ( .A1(x_sub_y[6]), .A2(n23), .B(n24), .ZN(L2_p[7]) );
  INVD1 U23 ( .I(Res[2]), .ZN(n43) );
  INVD1 U24 ( .I(n15), .ZN(n35) );
  FA1D0 U25 ( .A(Mantissa_Y[3]), .B(n9), .CI(sub_18_carry[3]), .CO(
        sub_18_carry[4]), .S(y_sub_x[3]) );
  INVD1 U26 ( .I(Mantissa_X[3]), .ZN(n9) );
  FA1D0 U27 ( .A(Mantissa_Y[4]), .B(n10), .CI(sub_18_carry[4]), .CO(
        sub_18_carry[5]), .S(y_sub_x[4]) );
  INVD1 U28 ( .I(Mantissa_X[4]), .ZN(n10) );
  INVD1 U29 ( .I(Mantissa_Y[1]), .ZN(n8) );
  FA1D0 U30 ( .A(Mantissa_Y[5]), .B(n11), .CI(sub_18_carry[5]), .CO(
        sub_18_carry[6]), .S(y_sub_x[5]) );
  INVD1 U31 ( .I(Mantissa_X[5]), .ZN(n11) );
  INVD1 U32 ( .I(Mantissa_Y[3]), .ZN(n33) );
  INR2D1 U33 ( .A1(x_sub_y[6]), .B1(Mantissa_Y[5]), .ZN(L1_p2[7]) );
  INVD1 U34 ( .I(Mantissa_Y[4]), .ZN(n34) );
  INR2D1 U35 ( .A1(x_sub_y[5]), .B1(Mantissa_Y[5]), .ZN(L1_p2[4]) );
  INR2D1 U36 ( .A1(x_sub_y[4]), .B1(Mantissa_Y[5]), .ZN(L1_p2[3]) );
  INR2D1 U37 ( .A1(x_sub_y[3]), .B1(Mantissa_Y[5]), .ZN(L1_p2[2]) );
  INVD1 U38 ( .I(Mantissa_Y[5]), .ZN(n36) );
  INR2D1 U39 ( .A1(x_sub_y[2]), .B1(Mantissa_Y[5]), .ZN(L1_p2[1]) );
  INR2D1 U40 ( .A1(Mantissa_Y[5]), .B1(Mantissa_Y[4]), .ZN(n25) );
  NR2D1 U41 ( .A1(Mantissa_Y[4]), .A2(Mantissa_Y[5]), .ZN(n23) );
  INR2D1 U42 ( .A1(Mantissa_Y[4]), .B1(Mantissa_Y[5]), .ZN(n26) );
  INR2D1 U43 ( .A1(x_sub_y[1]), .B1(Mantissa_Y[5]), .ZN(L1_p2[0]) );
  INVD1 U44 ( .I(Res[1]), .ZN(n44) );
  OAI222D0 U45 ( .A1(n45), .A2(n21), .B1(n43), .B2(n22), .C1(n44), .C2(n39), 
        .ZN(Mantissa_Out[0]) );
  INVD1 U46 ( .I(A31S[0]), .ZN(n45) );
  TIEL U50 ( .ZN(n13) );
  CKND0 U51 ( .I(sub_18_carry[6]), .ZN(y_sub_x[6]) );
  INR2D0 U52 ( .A1(Mantissa_X[0]), .B1(Mantissa_Y[0]), .ZN(n5) );
  AN2D0 U53 ( .A1(n5), .A2(n8), .Z(n4) );
  OAI22D0 U54 ( .A1(n5), .A2(n8), .B1(Mantissa_X[1]), .B2(n4), .ZN(n6) );
  NR2D0 U55 ( .A1(Mantissa_Y[2]), .A2(n6), .ZN(n7) );
  MOAI22D0 U56 ( .A1(Mantissa_X[2]), .A2(n7), .B1(n6), .B2(Mantissa_Y[2]), 
        .ZN(sub_18_carry[3]) );
  AO22D0 U57 ( .A1(Mantissa_Y[3]), .A2(x_sub_y[5]), .B1(n33), .B2(x_sub_y[6]), 
        .Z(n12) );
  AOI32D0 U58 ( .A1(Mantissa_Y[5]), .A2(Mantissa_Y[3]), .A3(y_sub_x[5]), .B1(
        n12), .B2(n36), .ZN(n14) );
  OAI32D0 U59 ( .A1(n38), .A2(Mantissa_Y[3]), .A3(n34), .B1(Mantissa_Y[4]), 
        .B2(n14), .ZN(L3_p2[0]) );
  OAI22D0 U60 ( .A1(Mantissa_Y[4]), .A2(Mantissa_Y[5]), .B1(Mantissa_Y[3]), 
        .B2(n34), .ZN(n15) );
  NR2D0 U61 ( .A1(n33), .A2(Mantissa_Y[4]), .ZN(n17) );
  AO32D0 U62 ( .A1(y_sub_x[6]), .A2(n35), .A3(n17), .B1(x_sub_y[6]), .B2(n15), 
        .Z(L3_p2[1]) );
  NR2D0 U63 ( .A1(n34), .A2(n36), .ZN(n16) );
  CKND2D0 U64 ( .A1(x_sub_y[6]), .A2(n16), .ZN(n30) );
  AOI22D0 U65 ( .A1(n33), .A2(n16), .B1(n17), .B2(Mantissa_Y[5]), .ZN(n20) );
  NR2D0 U66 ( .A1(n16), .A2(Mantissa_Y[3]), .ZN(n28) );
  INR2D0 U67 ( .A1(n17), .B1(Mantissa_Y[5]), .ZN(n27) );
  AOI22D0 U68 ( .A1(x_sub_y[3]), .A2(n28), .B1(y_sub_x[4]), .B2(n27), .ZN(n18)
         );
  OAI221D0 U69 ( .A1(n33), .A2(n30), .B1(n20), .B2(n37), .C(n18), .ZN(L3_p1[0]) );
  AOI22D0 U70 ( .A1(x_sub_y[4]), .A2(n28), .B1(y_sub_x[5]), .B2(n27), .ZN(n19)
         );
  OAI221D0 U71 ( .A1(n33), .A2(n30), .B1(n38), .B2(n20), .C(n19), .ZN(L3_p1[1]) );
  CKND2D0 U72 ( .A1(y_sub_x[6]), .A2(n27), .ZN(n32) );
  AOI32D0 U73 ( .A1(Mantissa_Y[5]), .A2(Mantissa_Y[3]), .A3(x_sub_y[6]), .B1(
        x_sub_y[5]), .B2(n28), .ZN(n29) );
  ND3D0 U74 ( .A1(n30), .A2(n32), .A3(n29), .ZN(L3_p1[2]) );
  OAI21D0 U75 ( .A1(n33), .A2(Mantissa_Y[5]), .B(x_sub_y[6]), .ZN(n31) );
  CKND2D0 U76 ( .A1(n32), .A2(n31), .ZN(L3_p1[3]) );
endmodule


module fig8_historical_wrapper_width_trunc17_DW01_sub_0_DW01_sub_2 ( A, B, CI, 
        DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   n3, n4, n5, n6, n7, n8;
  wire   [7:1] carry;

  FA1D0 U2_6 ( .A(A[6]), .B(n3), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  FA1D0 U2_5 ( .A(A[5]), .B(n4), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  FA1D0 U2_4 ( .A(A[4]), .B(n5), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FA1D0 U2_3 ( .A(A[3]), .B(n6), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  FA1D0 U2_2 ( .A(A[2]), .B(n7), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  FA1D0 U2_1 ( .A(A[1]), .B(n8), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  INVD1 U3 ( .I(B[1]), .ZN(n8) );
  INVD1 U5 ( .I(B[2]), .ZN(n7) );
  INVD1 U6 ( .I(B[3]), .ZN(n6) );
  INVD1 U7 ( .I(B[4]), .ZN(n5) );
  INVD1 U8 ( .I(B[5]), .ZN(n4) );
  INVD1 U9 ( .I(B[6]), .ZN(n3) );
  XNR3D0 U1 ( .A1(carry[7]), .A2(A[7]), .A3(B[7]), .ZN(DIFF[7]) );
  CKXOR2D0 U2 ( .A1(A[0]), .A2(B[0]), .Z(DIFF[0]) );
  IND2D0 U4 ( .A1(A[0]), .B1(B[0]), .ZN(carry[1]) );
endmodule


module fig8_historical_wrapper_width_trunc17 ( x, y, out0, mantissa_x, 
        mantissa_y, mantissa_out, shift );
  input [31:0] x;
  input [31:0] y;
  output [31:0] out0;
  output [5:0] mantissa_x;
  output [5:0] mantissa_y;
  input [5:0] mantissa_out;
  input [0:0] shift;
  wire   N8, N7, N6, N5, N4, N3, N2, N1, N0, n19, n43, n45;
  wire   [7:2] add_0_root_sub_0_root_add_42_carry;

  CKXOR2D1 U3 ( .A1(y[31]), .A2(x[31]), .Z(out0[31]) );
  fig8_historical_wrapper_width_trunc17_DW01_sub_0_DW01_sub_2 sub_1_root_sub_0_root_add_42 ( 
        .A(x[30:23]), .B(y[30:23]), .CI(n45), .DIFF({N7, N6, N5, N4, N3, N2, 
        N1, N0}) );
  INVD1 U27 ( .I(shift[0]), .ZN(N8) );
  CKBD1 U37 ( .I(x[22]), .Z(mantissa_x[5]) );
  CKBD1 U38 ( .I(x[21]), .Z(mantissa_x[4]) );
  CKBD1 U39 ( .I(x[20]), .Z(mantissa_x[3]) );
  CKBD1 U40 ( .I(x[19]), .Z(mantissa_x[2]) );
  CKBD1 U41 ( .I(x[18]), .Z(mantissa_x[1]) );
  CKBD1 U42 ( .I(x[17]), .Z(mantissa_x[0]) );
  CKBD1 U43 ( .I(y[22]), .Z(mantissa_y[5]) );
  CKBD1 U44 ( .I(y[21]), .Z(mantissa_y[4]) );
  CKBD1 U45 ( .I(y[20]), .Z(mantissa_y[3]) );
  CKBD1 U46 ( .I(y[19]), .Z(mantissa_y[2]) );
  CKBD1 U47 ( .I(y[18]), .Z(mantissa_y[1]) );
  CKBD1 U48 ( .I(y[17]), .Z(mantissa_y[0]) );
  CKBD1 U49 ( .I(mantissa_out[5]), .Z(out0[22]) );
  CKBD1 U50 ( .I(mantissa_out[4]), .Z(out0[21]) );
  CKBD1 U51 ( .I(mantissa_out[3]), .Z(out0[20]) );
  CKBD1 U52 ( .I(mantissa_out[2]), .Z(out0[19]) );
  CKBD1 U53 ( .I(mantissa_out[1]), .Z(out0[18]) );
  CKBD1 U54 ( .I(mantissa_out[0]), .Z(out0[17]) );
  TIEL U55 ( .ZN(n45) );
  XNR2D1 U56 ( .A1(n19), .A2(N1), .ZN(out0[24]) );
  XNR2D1 U57 ( .A1(add_0_root_sub_0_root_add_42_carry[2]), .A2(N2), .ZN(
        out0[25]) );
  XNR2D1 U58 ( .A1(add_0_root_sub_0_root_add_42_carry[3]), .A2(N3), .ZN(
        out0[26]) );
  XNR2D1 U59 ( .A1(add_0_root_sub_0_root_add_42_carry[4]), .A2(N4), .ZN(
        out0[27]) );
  XNR2D1 U60 ( .A1(add_0_root_sub_0_root_add_42_carry[5]), .A2(N5), .ZN(
        out0[28]) );
  CKXOR2D1 U62 ( .A1(N8), .A2(N0), .Z(out0[23]) );
  CKXOR2D1 U63 ( .A1(N7), .A2(add_0_root_sub_0_root_add_42_carry[7]), .Z(
        out0[30]) );
  CKXOR2D0 U4 ( .A1(N6), .A2(n43), .Z(out0[29]) );
  NR2D0 U5 ( .A1(add_0_root_sub_0_root_add_42_carry[5]), .A2(N5), .ZN(n43) );
  IND2D0 U6 ( .A1(N6), .B1(n43), .ZN(add_0_root_sub_0_root_add_42_carry[7]) );
  OR2D0 U7 ( .A1(add_0_root_sub_0_root_add_42_carry[4]), .A2(N4), .Z(
        add_0_root_sub_0_root_add_42_carry[5]) );
  OR2D0 U8 ( .A1(add_0_root_sub_0_root_add_42_carry[3]), .A2(N3), .Z(
        add_0_root_sub_0_root_add_42_carry[4]) );
  OR2D0 U9 ( .A1(add_0_root_sub_0_root_add_42_carry[2]), .A2(N2), .Z(
        add_0_root_sub_0_root_add_42_carry[3]) );
  OR2D0 U10 ( .A1(n19), .A2(N1), .Z(add_0_root_sub_0_root_add_42_carry[2]) );
  AN2D0 U11 ( .A1(N8), .A2(N0), .Z(n19) );
endmodule


module fig8_pace_l3_d17_historical ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   shift, n1, n19;
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

  Mantissa_Div_L3_MANTISSA_WIDTH6 core ( .Mantissa_X(mx), .Mantissa_Y(my), 
        .Mantissa_Out(mz), .Shift(shift) );
  fig8_historical_wrapper_width_trunc17 shell ( .x({x[31:17], 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .y({y[31:17], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .out0({
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
  TIEH U2 ( .Z(n19) );
  INVD1 U3 ( .I(n19), .ZN(result[0]) );
  INVD1 U4 ( .I(n19), .ZN(result[1]) );
  INVD1 U5 ( .I(n19), .ZN(result[2]) );
  INVD1 U6 ( .I(n19), .ZN(result[3]) );
  INVD1 U7 ( .I(n19), .ZN(result[4]) );
  INVD1 U8 ( .I(n19), .ZN(result[5]) );
  INVD1 U9 ( .I(n19), .ZN(result[6]) );
  INVD1 U10 ( .I(n19), .ZN(result[7]) );
  INVD1 U11 ( .I(n19), .ZN(result[8]) );
  INVD1 U12 ( .I(n19), .ZN(result[9]) );
  INVD1 U13 ( .I(n19), .ZN(result[10]) );
  INVD1 U14 ( .I(n19), .ZN(result[11]) );
  INVD1 U15 ( .I(n19), .ZN(result[12]) );
  INVD1 U16 ( .I(n19), .ZN(result[13]) );
  INVD1 U17 ( .I(n19), .ZN(result[14]) );
  INVD1 U18 ( .I(n19), .ZN(result[15]) );
  INVD1 U19 ( .I(n19), .ZN(result[16]) );
  INVD1 U20 ( .I(shift), .ZN(n1) );
endmodule

