/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Sat Sep  5 12:48:12 2026
/////////////////////////////////////////////////////////////


module CSA3_2_Array_WIDTH21 ( In_1, In_2, In_3, S, C );
  input [20:0] In_1;
  input [20:0] In_2;
  input [20:0] In_3;
  output [20:0] S;
  output [20:0] C;
  wire   n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41;

  CKXOR2D1 U1 ( .A1(In_3[9]), .A2(In_2[9]), .Z(S[9]) );
  CKXOR2D1 U2 ( .A1(In_3[8]), .A2(In_2[8]), .Z(S[8]) );
  CKXOR2D1 U3 ( .A1(In_3[7]), .A2(In_2[7]), .Z(S[7]) );
  CKXOR2D1 U4 ( .A1(In_3[6]), .A2(In_2[6]), .Z(S[6]) );
  CKXOR2D1 U5 ( .A1(In_3[5]), .A2(In_2[5]), .Z(S[5]) );
  CKXOR2D1 U6 ( .A1(In_3[4]), .A2(In_2[4]), .Z(S[4]) );
  CKXOR2D1 U7 ( .A1(In_3[3]), .A2(In_2[3]), .Z(S[3]) );
  CKXOR2D1 U8 ( .A1(In_3[2]), .A2(In_2[2]), .Z(S[2]) );
  CKXOR2D1 U10 ( .A1(In_3[1]), .A2(In_2[1]), .Z(S[1]) );
  CKXOR2D1 U11 ( .A1(In_3[19]), .A2(In_2[19]), .Z(S[19]) );
  CKXOR2D1 U12 ( .A1(In_3[18]), .A2(In_2[18]), .Z(S[18]) );
  CKXOR2D1 U13 ( .A1(In_3[17]), .A2(In_2[17]), .Z(S[17]) );
  CKXOR2D1 U14 ( .A1(In_3[16]), .A2(In_2[16]), .Z(S[16]) );
  CKXOR2D1 U15 ( .A1(In_3[15]), .A2(In_2[15]), .Z(S[15]) );
  CKXOR2D1 U16 ( .A1(In_3[14]), .A2(In_2[14]), .Z(S[14]) );
  CKXOR2D1 U17 ( .A1(In_3[13]), .A2(In_2[13]), .Z(S[13]) );
  CKXOR2D1 U18 ( .A1(In_3[12]), .A2(In_2[12]), .Z(S[12]) );
  CKXOR2D1 U19 ( .A1(In_3[11]), .A2(In_2[11]), .Z(S[11]) );
  CKXOR2D1 U20 ( .A1(In_3[10]), .A2(In_2[10]), .Z(S[10]) );
  CKXOR2D1 U21 ( .A1(In_3[0]), .A2(In_2[0]), .Z(S[0]) );
  XNR2D0 U9 ( .A1(In_3[20]), .A2(In_2[20]), .ZN(S[20]) );
  CKND0 U22 ( .I(n41), .ZN(C[19]) );
  CKND0 U23 ( .I(n40), .ZN(C[18]) );
  CKND2D0 U24 ( .A1(In_3[19]), .A2(In_2[19]), .ZN(n41) );
  CKND0 U25 ( .I(n39), .ZN(C[17]) );
  CKND2D0 U26 ( .A1(In_3[18]), .A2(In_2[18]), .ZN(n40) );
  CKND0 U27 ( .I(n38), .ZN(C[16]) );
  CKND2D0 U28 ( .A1(In_3[17]), .A2(In_2[17]), .ZN(n39) );
  CKND0 U29 ( .I(n37), .ZN(C[15]) );
  CKND2D0 U30 ( .A1(In_3[16]), .A2(In_2[16]), .ZN(n38) );
  CKND0 U31 ( .I(n36), .ZN(C[14]) );
  CKND2D0 U32 ( .A1(In_3[15]), .A2(In_2[15]), .ZN(n37) );
  CKND0 U33 ( .I(n35), .ZN(C[13]) );
  CKND2D0 U34 ( .A1(In_3[14]), .A2(In_2[14]), .ZN(n36) );
  CKND0 U35 ( .I(n34), .ZN(C[12]) );
  CKND2D0 U36 ( .A1(In_3[13]), .A2(In_2[13]), .ZN(n35) );
  CKND0 U37 ( .I(n33), .ZN(C[11]) );
  CKND2D0 U38 ( .A1(In_3[12]), .A2(In_2[12]), .ZN(n34) );
  CKND0 U39 ( .I(n32), .ZN(C[10]) );
  CKND2D0 U40 ( .A1(In_3[11]), .A2(In_2[11]), .ZN(n33) );
  CKND0 U41 ( .I(n31), .ZN(C[9]) );
  CKND2D0 U42 ( .A1(In_3[10]), .A2(In_2[10]), .ZN(n32) );
  CKND0 U43 ( .I(n30), .ZN(C[8]) );
  CKND2D0 U44 ( .A1(In_3[9]), .A2(In_2[9]), .ZN(n31) );
  CKND0 U45 ( .I(n29), .ZN(C[7]) );
  CKND2D0 U46 ( .A1(In_3[8]), .A2(In_2[8]), .ZN(n30) );
  CKND0 U47 ( .I(n28), .ZN(C[6]) );
  CKND2D0 U48 ( .A1(In_3[7]), .A2(In_2[7]), .ZN(n29) );
  CKND0 U49 ( .I(n27), .ZN(C[5]) );
  CKND2D0 U50 ( .A1(In_3[6]), .A2(In_2[6]), .ZN(n28) );
  CKND0 U51 ( .I(n26), .ZN(C[4]) );
  CKND2D0 U52 ( .A1(In_3[5]), .A2(In_2[5]), .ZN(n27) );
  CKND0 U53 ( .I(n25), .ZN(C[3]) );
  CKND2D0 U54 ( .A1(In_3[4]), .A2(In_2[4]), .ZN(n26) );
  CKND0 U55 ( .I(n24), .ZN(C[2]) );
  CKND2D0 U56 ( .A1(In_3[3]), .A2(In_2[3]), .ZN(n25) );
  CKND0 U57 ( .I(n23), .ZN(C[1]) );
  CKND2D0 U58 ( .A1(In_3[2]), .A2(In_2[2]), .ZN(n24) );
  CKND1 U59 ( .I(n22), .ZN(C[0]) );
  CKND2D0 U60 ( .A1(In_3[1]), .A2(In_2[1]), .ZN(n23) );
  CKND2D0 U61 ( .A1(In_3[0]), .A2(In_2[0]), .ZN(n22) );
endmodule


module Mantissa_Div_L1_MANTISSA_WIDTH19_DW01_add_0 ( A, B, CI, SUM, CO );
  input [20:0] A;
  input [20:0] B;
  output [20:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [20:3] carry;

  FA1D0 U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  FA1D0 U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  FA1D0 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  FA1D0 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  FA1D0 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  FA1D0 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  FA1D0 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FA1D0 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FA1D0 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  FA1D0 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FA1D0 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA1D0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA1D0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1D0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1D0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1D0 U1_2 ( .A(A[2]), .B(B[2]), .CI(n1), .CO(carry[3]), .S(SUM[2]) );
  FA1D0 U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  FA1D0 U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  XOR3D1 U1_20 ( .A1(A[20]), .A2(B[20]), .A3(carry[20]), .Z(SUM[20]) );
  AN2XD1 U1 ( .A1(B[1]), .A2(A[1]), .Z(n1) );
  CKXOR2D1 U2 ( .A1(B[1]), .A2(A[1]), .Z(SUM[1]) );
endmodule


module Mantissa_Div_L1_MANTISSA_WIDTH19_DW01_sub_0_DW01_sub_1 ( A, B, CI, DIFF, 
        CO );
  input [19:0] A;
  input [19:0] B;
  output [19:0] DIFF;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19;
  wire   [19:1] carry;

  FA1D0 U2_18 ( .A(A[18]), .B(n2), .CI(carry[18]), .CO(carry[19]), .S(DIFF[18]) );
  FA1D0 U2_17 ( .A(A[17]), .B(n3), .CI(carry[17]), .CO(carry[18]), .S(DIFF[17]) );
  FA1D0 U2_16 ( .A(A[16]), .B(n4), .CI(carry[16]), .CO(carry[17]), .S(DIFF[16]) );
  FA1D0 U2_15 ( .A(A[15]), .B(n5), .CI(carry[15]), .CO(carry[16]), .S(DIFF[15]) );
  FA1D0 U2_14 ( .A(A[14]), .B(n6), .CI(carry[14]), .CO(carry[15]), .S(DIFF[14]) );
  FA1D0 U2_13 ( .A(A[13]), .B(n7), .CI(carry[13]), .CO(carry[14]), .S(DIFF[13]) );
  FA1D0 U2_12 ( .A(A[12]), .B(n8), .CI(carry[12]), .CO(carry[13]), .S(DIFF[12]) );
  FA1D0 U2_11 ( .A(A[11]), .B(n9), .CI(carry[11]), .CO(carry[12]), .S(DIFF[11]) );
  FA1D0 U2_10 ( .A(A[10]), .B(n10), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  FA1D0 U2_9 ( .A(A[9]), .B(n11), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  FA1D0 U2_8 ( .A(A[8]), .B(n12), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  FA1D0 U2_7 ( .A(A[7]), .B(n13), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  FA1D0 U2_6 ( .A(A[6]), .B(n14), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  FA1D0 U2_5 ( .A(A[5]), .B(n15), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  FA1D0 U2_4 ( .A(A[4]), .B(n16), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FA1D0 U2_3 ( .A(A[3]), .B(n17), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  FA1D0 U2_2 ( .A(A[2]), .B(n18), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  FA1D0 U2_1 ( .A(A[1]), .B(n19), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  INVD1 U3 ( .I(B[1]), .ZN(n19) );
  INVD1 U4 ( .I(B[2]), .ZN(n18) );
  INVD1 U5 ( .I(B[3]), .ZN(n17) );
  INVD1 U6 ( .I(B[4]), .ZN(n16) );
  INVD1 U7 ( .I(B[5]), .ZN(n15) );
  INVD1 U8 ( .I(B[6]), .ZN(n14) );
  INVD1 U9 ( .I(B[7]), .ZN(n13) );
  INVD1 U10 ( .I(B[8]), .ZN(n12) );
  INVD1 U11 ( .I(B[9]), .ZN(n11) );
  INVD1 U12 ( .I(B[10]), .ZN(n10) );
  INVD1 U13 ( .I(B[11]), .ZN(n9) );
  INVD1 U14 ( .I(B[12]), .ZN(n8) );
  INVD1 U15 ( .I(B[13]), .ZN(n7) );
  INVD1 U16 ( .I(B[14]), .ZN(n6) );
  INVD1 U17 ( .I(B[15]), .ZN(n5) );
  INVD1 U18 ( .I(B[16]), .ZN(n4) );
  INVD1 U19 ( .I(B[17]), .ZN(n3) );
  INVD1 U20 ( .I(B[18]), .ZN(n2) );
  CKND0 U23 ( .I(carry[19]), .ZN(DIFF[19]) );
  CKXOR2D0 U1 ( .A1(A[0]), .A2(B[0]), .Z(DIFF[0]) );
  IND2D0 U2 ( .A1(A[0]), .B1(B[0]), .ZN(carry[1]) );
endmodule


module Mantissa_Div_L1_MANTISSA_WIDTH19 ( Mantissa_X, Mantissa_Y, Mantissa_Out, 
        Shift );
  input [18:0] Mantissa_X;
  input [18:0] Mantissa_Y;
  output [18:0] Mantissa_Out;
  output Shift;
  wire   n7, n29, n30, n2, n3, n4, n5, n6, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23;
  wire   [19:0] x_sub_y;
  wire   [20:0] L1_p2;
  wire   [20:0] A11S;
  wire   [19:0] A11C;
  wire   [19:1] Res;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1;

  CSA3_2_Array_WIDTH21 Stage_0_0 ( .In_1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0}), .In_2({x_sub_y[19], x_sub_y}), .In_3({L1_p2[20], 
        L1_p2[20], L1_p2[20], L1_p2[17:0]}), .S(A11S), .C({
        SYNOPSYS_UNCONNECTED__0, A11C}) );
  Mantissa_Div_L1_MANTISSA_WIDTH19_DW01_add_0 add_38 ( .A(A11S), .B({A11C, n7}), .CI(n7), .SUM({Shift, Res, SYNOPSYS_UNCONNECTED__1}) );
  Mantissa_Div_L1_MANTISSA_WIDTH19_DW01_sub_0_DW01_sub_1 sub_16 ( .A({n7, 
        Mantissa_X}), .B({n7, Mantissa_Y}), .CI(n7), .DIFF(x_sub_y) );
  ND2D1 U3 ( .A1(n3), .A2(n2), .ZN(n30) );
  OAI222D0 U4 ( .A1(n12), .A2(n29), .B1(n30), .B2(n10), .C1(n2), .C2(n11), 
        .ZN(Mantissa_Out[11]) );
  OAI222D0 U5 ( .A1(n29), .A2(n15), .B1(n30), .B2(n13), .C1(n14), .C2(n2), 
        .ZN(Mantissa_Out[8]) );
  OAI222D0 U6 ( .A1(n29), .A2(n14), .B1(n30), .B2(n12), .C1(n13), .C2(n2), 
        .ZN(Mantissa_Out[9]) );
  OAI222D0 U7 ( .A1(n29), .A2(n13), .B1(n30), .B2(n11), .C1(n12), .C2(n2), 
        .ZN(Mantissa_Out[10]) );
  OAI222D0 U8 ( .A1(n29), .A2(n22), .B1(n30), .B2(n20), .C1(n2), .C2(n21), 
        .ZN(Mantissa_Out[1]) );
  OAI222D0 U9 ( .A1(n29), .A2(n21), .B1(n30), .B2(n19), .C1(n2), .C2(n20), 
        .ZN(Mantissa_Out[2]) );
  OAI222D0 U10 ( .A1(n29), .A2(n20), .B1(n30), .B2(n18), .C1(n2), .C2(n19), 
        .ZN(Mantissa_Out[3]) );
  OAI222D0 U11 ( .A1(n29), .A2(n19), .B1(n30), .B2(n17), .C1(n2), .C2(n18), 
        .ZN(Mantissa_Out[4]) );
  OAI222D0 U12 ( .A1(n29), .A2(n18), .B1(n30), .B2(n16), .C1(n2), .C2(n17), 
        .ZN(Mantissa_Out[5]) );
  OAI222D0 U13 ( .A1(n29), .A2(n17), .B1(n30), .B2(n15), .C1(n2), .C2(n16), 
        .ZN(Mantissa_Out[6]) );
  OAI222D0 U14 ( .A1(n29), .A2(n16), .B1(n30), .B2(n14), .C1(n2), .C2(n15), 
        .ZN(Mantissa_Out[7]) );
  OAI222D0 U15 ( .A1(n29), .A2(n11), .B1(n30), .B2(n9), .C1(n2), .C2(n10), 
        .ZN(Mantissa_Out[12]) );
  OAI222D0 U16 ( .A1(n29), .A2(n10), .B1(n30), .B2(n8), .C1(n2), .C2(n9), .ZN(
        Mantissa_Out[13]) );
  OAI222D0 U17 ( .A1(n29), .A2(n9), .B1(n30), .B2(n6), .C1(n2), .C2(n8), .ZN(
        Mantissa_Out[14]) );
  OAI222D0 U18 ( .A1(n29), .A2(n8), .B1(n30), .B2(n5), .C1(n2), .C2(n6), .ZN(
        Mantissa_Out[15]) );
  OAI222D0 U19 ( .A1(n29), .A2(n6), .B1(n30), .B2(n4), .C1(n2), .C2(n5), .ZN(
        Mantissa_Out[16]) );
  OAI22D1 U20 ( .A1(n2), .A2(n4), .B1(n29), .B2(n5), .ZN(Mantissa_Out[17]) );
  OAI22D1 U21 ( .A1(n29), .A2(n4), .B1(n3), .B2(n2), .ZN(Mantissa_Out[18]) );
  INR2D1 U22 ( .A1(x_sub_y[19]), .B1(Mantissa_Y[18]), .ZN(L1_p2[20]) );
  INR2D1 U23 ( .A1(x_sub_y[3]), .B1(Mantissa_Y[18]), .ZN(L1_p2[2]) );
  INR2D1 U24 ( .A1(x_sub_y[4]), .B1(Mantissa_Y[18]), .ZN(L1_p2[3]) );
  INR2D1 U25 ( .A1(x_sub_y[5]), .B1(Mantissa_Y[18]), .ZN(L1_p2[4]) );
  INR2D1 U26 ( .A1(x_sub_y[6]), .B1(Mantissa_Y[18]), .ZN(L1_p2[5]) );
  INR2D1 U27 ( .A1(x_sub_y[7]), .B1(Mantissa_Y[18]), .ZN(L1_p2[6]) );
  INR2D1 U28 ( .A1(x_sub_y[8]), .B1(Mantissa_Y[18]), .ZN(L1_p2[7]) );
  INR2D1 U29 ( .A1(x_sub_y[9]), .B1(Mantissa_Y[18]), .ZN(L1_p2[8]) );
  INR2D1 U30 ( .A1(x_sub_y[10]), .B1(Mantissa_Y[18]), .ZN(L1_p2[9]) );
  INR2D1 U31 ( .A1(x_sub_y[11]), .B1(Mantissa_Y[18]), .ZN(L1_p2[10]) );
  INR2D1 U32 ( .A1(x_sub_y[12]), .B1(Mantissa_Y[18]), .ZN(L1_p2[11]) );
  INR2D1 U33 ( .A1(x_sub_y[13]), .B1(Mantissa_Y[18]), .ZN(L1_p2[12]) );
  INR2D1 U34 ( .A1(x_sub_y[14]), .B1(Mantissa_Y[18]), .ZN(L1_p2[13]) );
  INR2D1 U35 ( .A1(x_sub_y[15]), .B1(Mantissa_Y[18]), .ZN(L1_p2[14]) );
  INR2D1 U36 ( .A1(x_sub_y[16]), .B1(Mantissa_Y[18]), .ZN(L1_p2[15]) );
  INR2D1 U37 ( .A1(x_sub_y[17]), .B1(Mantissa_Y[18]), .ZN(L1_p2[16]) );
  INR2D1 U38 ( .A1(x_sub_y[18]), .B1(Mantissa_Y[18]), .ZN(L1_p2[17]) );
  INR2D1 U39 ( .A1(x_sub_y[2]), .B1(Mantissa_Y[18]), .ZN(L1_p2[1]) );
  INR2D1 U40 ( .A1(x_sub_y[1]), .B1(Mantissa_Y[18]), .ZN(L1_p2[0]) );
  INVD1 U41 ( .I(Shift), .ZN(n2) );
  OAI222D0 U42 ( .A1(n23), .A2(n29), .B1(n21), .B2(n30), .C1(n22), .C2(n2), 
        .ZN(Mantissa_Out[0]) );
  INVD1 U43 ( .I(A11S[0]), .ZN(n23) );
  ND2D1 U44 ( .A1(Res[19]), .A2(n2), .ZN(n29) );
  INVD1 U45 ( .I(Res[19]), .ZN(n3) );
  INVD1 U46 ( .I(Res[18]), .ZN(n4) );
  INVD1 U47 ( .I(Res[17]), .ZN(n5) );
  INVD1 U48 ( .I(Res[16]), .ZN(n6) );
  INVD1 U49 ( .I(Res[15]), .ZN(n8) );
  INVD1 U50 ( .I(Res[14]), .ZN(n9) );
  INVD1 U51 ( .I(Res[13]), .ZN(n10) );
  INVD1 U52 ( .I(Res[12]), .ZN(n11) );
  INVD1 U53 ( .I(Res[11]), .ZN(n12) );
  INVD1 U54 ( .I(Res[10]), .ZN(n13) );
  INVD1 U55 ( .I(Res[9]), .ZN(n14) );
  INVD1 U56 ( .I(Res[8]), .ZN(n15) );
  INVD1 U57 ( .I(Res[7]), .ZN(n16) );
  INVD1 U58 ( .I(Res[6]), .ZN(n17) );
  INVD1 U59 ( .I(Res[5]), .ZN(n18) );
  INVD1 U60 ( .I(Res[4]), .ZN(n19) );
  INVD1 U61 ( .I(Res[3]), .ZN(n20) );
  INVD1 U62 ( .I(Res[2]), .ZN(n21) );
  INVD1 U63 ( .I(Res[1]), .ZN(n22) );
  TIEL U66 ( .ZN(n7) );
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
  CKBD1 U13 ( .I(result_fraction[15]), .Z(result[15]) );
  CKBD1 U14 ( .I(result_fraction[12]), .Z(result[12]) );
  CKBD1 U15 ( .I(result_fraction[13]), .Z(result[13]) );
  CKBD1 U16 ( .I(result_fraction[14]), .Z(result[14]) );
  CKBD1 U17 ( .I(result_fraction[5]), .Z(result[5]) );
  CKBD1 U18 ( .I(result_fraction[6]), .Z(result[6]) );
  CKBD1 U19 ( .I(result_fraction[7]), .Z(result[7]) );
  CKBD1 U20 ( .I(result_fraction[8]), .Z(result[8]) );
  CKBD1 U21 ( .I(result_fraction[9]), .Z(result[9]) );
  CKBD1 U22 ( .I(result_fraction[10]), .Z(result[10]) );
  CKBD1 U23 ( .I(result_fraction[11]), .Z(result[11]) );
  CKBD1 U24 ( .I(result_fraction[16]), .Z(result[16]) );
  CKBD1 U25 ( .I(result_fraction[17]), .Z(result[17]) );
  CKBD1 U26 ( .I(result_fraction[18]), .Z(result[18]) );
  CKBD1 U27 ( .I(result_fraction[19]), .Z(result[19]) );
  CKBD1 U28 ( .I(result_fraction[20]), .Z(result[20]) );
  CKBD1 U29 ( .I(result_fraction[21]), .Z(result[21]) );
  CKBD1 U30 ( .I(result_fraction[22]), .Z(result[22]) );
  FA1D0 U31 ( .A(N4), .B(exponent_adjust[1]), .CI(n1), .CO(
        add_0_root_add_0_root_add_22_2_carry[2]), .S(result[24]) );
  FA1D0 U32 ( .A(N5), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[2]), .CO(
        add_0_root_add_0_root_add_22_2_carry[3]), .S(result[25]) );
  FA1D0 U33 ( .A(N6), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[3]), .CO(
        add_0_root_add_0_root_add_22_2_carry[4]), .S(result[26]) );
  FA1D0 U34 ( .A(N7), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[4]), .CO(
        add_0_root_add_0_root_add_22_2_carry[5]), .S(result[27]) );
  FA1D0 U35 ( .A(N8), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[5]), .CO(
        add_0_root_add_0_root_add_22_2_carry[6]), .S(result[28]) );
  FA1D0 U36 ( .A(N9), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[6]), .CO(
        add_0_root_add_0_root_add_22_2_carry[7]), .S(result[29]) );
  CKBD1 U37 ( .I(result_fraction[4]), .Z(result[4]) );
  XOR3D1 U46 ( .A1(N10), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_22_2_carry[7]), .Z(result[30]) );
  CKBD1 U47 ( .I(y[6]), .Z(fraction_y[6]) );
  CKBD1 U48 ( .I(y[7]), .Z(fraction_y[7]) );
  CKBD1 U49 ( .I(y[8]), .Z(fraction_y[8]) );
  CKBD1 U50 ( .I(y[9]), .Z(fraction_y[9]) );
  CKBD1 U51 ( .I(y[10]), .Z(fraction_y[10]) );
  CKBD1 U52 ( .I(y[11]), .Z(fraction_y[11]) );
  CKBD1 U53 ( .I(y[12]), .Z(fraction_y[12]) );
  CKBD1 U54 ( .I(y[13]), .Z(fraction_y[13]) );
  CKBD1 U55 ( .I(y[14]), .Z(fraction_y[14]) );
  CKBD1 U56 ( .I(y[15]), .Z(fraction_y[15]) );
  CKBD1 U57 ( .I(y[16]), .Z(fraction_y[16]) );
  CKBD1 U58 ( .I(y[17]), .Z(fraction_y[17]) );
  CKBD1 U59 ( .I(y[18]), .Z(fraction_y[18]) );
  CKBD1 U60 ( .I(y[5]), .Z(fraction_y[5]) );
  CKBD1 U61 ( .I(y[4]), .Z(fraction_y[4]) );
  INVD1 U69 ( .I(y[29]), .ZN(N17) );
  INVD1 U70 ( .I(y[24]), .ZN(N12) );
  INVD1 U71 ( .I(y[25]), .ZN(N13) );
  INVD1 U72 ( .I(y[26]), .ZN(N14) );
  INVD1 U73 ( .I(y[27]), .ZN(N15) );
  INVD1 U74 ( .I(y[28]), .ZN(N16) );
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
  CKBD1 U98 ( .I(x[11]), .Z(fraction_x[11]) );
  CKBD1 U99 ( .I(x[10]), .Z(fraction_x[10]) );
  CKBD1 U100 ( .I(x[9]), .Z(fraction_x[9]) );
  CKBD1 U101 ( .I(x[8]), .Z(fraction_x[8]) );
  CKBD1 U102 ( .I(x[7]), .Z(fraction_x[7]) );
  CKBD1 U103 ( .I(x[6]), .Z(fraction_x[6]) );
  CKBD1 U104 ( .I(x[5]), .Z(fraction_x[5]) );
  CKBD1 U105 ( .I(x[4]), .Z(fraction_x[4]) );
  CKBD1 U106 ( .I(y[22]), .Z(fraction_y[22]) );
  CKBD1 U107 ( .I(y[21]), .Z(fraction_y[21]) );
  CKBD1 U108 ( .I(y[20]), .Z(fraction_y[20]) );
  CKBD1 U109 ( .I(y[19]), .Z(fraction_y[19]) );
  TIEL U110 ( .ZN(n79) );
  CKXOR2D1 U111 ( .A1(exponent_adjust[0]), .A2(N3), .Z(result[23]) );
  CKND0 U119 ( .I(y[23]), .ZN(N11) );
endmodule


module FP_DIV_WRAPPER_32_width_trunc4 ( x, y, out0, mantissa_x, mantissa_y, 
        mantissa_out, shift );
  input [31:0] x;
  input [31:0] y;
  output [31:0] out0;
  output [18:0] mantissa_x;
  output [18:0] mantissa_y;
  input [18:0] mantissa_out;
  input [0:0] shift;

  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11;

  fp32_normal_finite_wrapper shared_wrapper ( .x({x[31:4], 1'b0, 1'b0, 1'b0, 
        1'b0}), .y({y[31:4], 1'b0, 1'b0, 1'b0, 1'b0}), .divide_mode(1'b0), 
        .fraction_x({mantissa_x, SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3}), .fraction_y({mantissa_y, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7}), .result_fraction({
        mantissa_out, 1'b0, 1'b0, 1'b0, 1'b0}), .exponent_adjust({shift[0], 
        shift[0], shift[0]}), .result({out0[31:4], SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11}) );
endmodule


module fig8_pace_l1_d4 ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   shift, n1;
  wire   [18:0] mx;
  wire   [18:0] my;
  wire   [18:0] mz;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3;
  assign result[0] = 1'b0;
  assign result[1] = 1'b0;
  assign result[2] = 1'b0;
  assign result[3] = 1'b0;

  Mantissa_Div_L1_MANTISSA_WIDTH19 core ( .Mantissa_X(mx), .Mantissa_Y(my), 
        .Mantissa_Out(mz), .Shift(shift) );
  FP_DIV_WRAPPER_32_width_trunc4 shell ( .x({x[31:4], 1'b0, 1'b0, 1'b0, 1'b0}), 
        .y({y[31:4], 1'b0, 1'b0, 1'b0, 1'b0}), .out0({result[31:4], 
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3}), .mantissa_x(mx), 
        .mantissa_y(my), .mantissa_out(mz), .shift(n1) );
  INVD1 U2 ( .I(shift), .ZN(n1) );
endmodule

