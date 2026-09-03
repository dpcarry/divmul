/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Thu Aug 20 03:00:10 2026
/////////////////////////////////////////////////////////////


module CSA3_2_Array_WIDTH25 ( In_1, In_2, In_3, S, C );
  input [24:0] In_1;
  input [24:0] In_2;
  input [24:0] In_3;
  output [24:0] S;
  output [24:0] C;
  wire   n26;

  CKND2D0 U1 ( .A1(In_3[24]), .A2(In_2[24]), .ZN(n26) );
  INVD0 U2 ( .I(n26), .ZN(C[23]) );
  CKAN2D0 U3 ( .A1(In_3[0]), .A2(In_2[0]), .Z(C[0]) );
  CKAN2D0 U4 ( .A1(In_3[1]), .A2(In_2[1]), .Z(C[1]) );
  CKAN2D0 U5 ( .A1(In_3[2]), .A2(In_2[2]), .Z(C[2]) );
  CKAN2D0 U6 ( .A1(In_3[3]), .A2(In_2[3]), .Z(C[3]) );
  CKAN2D0 U7 ( .A1(In_3[4]), .A2(In_2[4]), .Z(C[4]) );
  CKAN2D0 U8 ( .A1(In_3[5]), .A2(In_2[5]), .Z(C[5]) );
  CKAN2D0 U9 ( .A1(In_3[6]), .A2(In_2[6]), .Z(C[6]) );
  CKAN2D0 U10 ( .A1(In_3[7]), .A2(In_2[7]), .Z(C[7]) );
  CKAN2D0 U11 ( .A1(In_3[8]), .A2(In_2[8]), .Z(C[8]) );
  CKAN2D0 U12 ( .A1(In_3[9]), .A2(In_2[9]), .Z(C[9]) );
  CKAN2D0 U13 ( .A1(In_3[10]), .A2(In_2[10]), .Z(C[10]) );
  CKAN2D0 U14 ( .A1(In_3[11]), .A2(In_2[11]), .Z(C[11]) );
  CKAN2D0 U15 ( .A1(In_3[12]), .A2(In_2[12]), .Z(C[12]) );
  CKAN2D0 U16 ( .A1(In_3[13]), .A2(In_2[13]), .Z(C[13]) );
  CKAN2D0 U17 ( .A1(In_3[14]), .A2(In_2[14]), .Z(C[14]) );
  CKAN2D0 U18 ( .A1(In_3[15]), .A2(In_2[15]), .Z(C[15]) );
  CKAN2D0 U19 ( .A1(In_3[16]), .A2(In_2[16]), .Z(C[16]) );
  CKAN2D0 U20 ( .A1(In_3[17]), .A2(In_2[17]), .Z(C[17]) );
  CKAN2D0 U21 ( .A1(In_3[18]), .A2(In_2[18]), .Z(C[18]) );
  CKAN2D0 U22 ( .A1(In_3[19]), .A2(In_2[19]), .Z(C[19]) );
  CKAN2D0 U23 ( .A1(In_3[20]), .A2(In_2[20]), .Z(C[20]) );
  CKAN2D0 U24 ( .A1(In_3[21]), .A2(In_2[21]), .Z(C[21]) );
  OAI21D0 U25 ( .A1(In_3[24]), .A2(In_2[24]), .B(n26), .ZN(S[24]) );
  INVD0 U26 ( .I(S[24]), .ZN(S[23]) );
  CKAN2D0 U27 ( .A1(In_3[24]), .A2(In_2[22]), .Z(C[22]) );
  IAO21D0 U28 ( .A1(In_3[0]), .A2(In_2[0]), .B(C[0]), .ZN(S[0]) );
  IAO21D0 U29 ( .A1(In_3[1]), .A2(In_2[1]), .B(C[1]), .ZN(S[1]) );
  IAO21D0 U30 ( .A1(In_3[2]), .A2(In_2[2]), .B(C[2]), .ZN(S[2]) );
  IAO21D0 U31 ( .A1(In_3[3]), .A2(In_2[3]), .B(C[3]), .ZN(S[3]) );
  IAO21D0 U32 ( .A1(In_3[4]), .A2(In_2[4]), .B(C[4]), .ZN(S[4]) );
  IAO21D0 U33 ( .A1(In_3[5]), .A2(In_2[5]), .B(C[5]), .ZN(S[5]) );
  IAO21D0 U34 ( .A1(In_3[6]), .A2(In_2[6]), .B(C[6]), .ZN(S[6]) );
  IAO21D0 U35 ( .A1(In_3[7]), .A2(In_2[7]), .B(C[7]), .ZN(S[7]) );
  IAO21D0 U36 ( .A1(In_3[8]), .A2(In_2[8]), .B(C[8]), .ZN(S[8]) );
  IAO21D0 U37 ( .A1(In_3[9]), .A2(In_2[9]), .B(C[9]), .ZN(S[9]) );
  IAO21D0 U38 ( .A1(In_3[10]), .A2(In_2[10]), .B(C[10]), .ZN(S[10]) );
  IAO21D0 U39 ( .A1(In_3[11]), .A2(In_2[11]), .B(C[11]), .ZN(S[11]) );
  IAO21D0 U40 ( .A1(In_3[12]), .A2(In_2[12]), .B(C[12]), .ZN(S[12]) );
  IAO21D0 U41 ( .A1(In_3[13]), .A2(In_2[13]), .B(C[13]), .ZN(S[13]) );
  IAO21D0 U42 ( .A1(In_3[14]), .A2(In_2[14]), .B(C[14]), .ZN(S[14]) );
  IAO21D0 U43 ( .A1(In_3[15]), .A2(In_2[15]), .B(C[15]), .ZN(S[15]) );
  IAO21D0 U44 ( .A1(In_3[16]), .A2(In_2[16]), .B(C[16]), .ZN(S[16]) );
  IAO21D0 U45 ( .A1(In_3[17]), .A2(In_2[17]), .B(C[17]), .ZN(S[17]) );
  IAO21D0 U46 ( .A1(In_3[18]), .A2(In_2[18]), .B(C[18]), .ZN(S[18]) );
  IAO21D0 U47 ( .A1(In_3[19]), .A2(In_2[19]), .B(C[19]), .ZN(S[19]) );
  IAO21D0 U48 ( .A1(In_3[20]), .A2(In_2[20]), .B(C[20]), .ZN(S[20]) );
  IAO21D0 U49 ( .A1(In_3[21]), .A2(In_2[21]), .B(C[21]), .ZN(S[21]) );
  IAO21D0 U50 ( .A1(In_3[24]), .A2(In_2[22]), .B(C[22]), .ZN(S[22]) );
endmodule


module Mantissa_Div_L1_MANTISSA_WIDTH23 ( Mantissa_X, Mantissa_Y, Mantissa_Out, 
        Shift );
  input [22:0] Mantissa_X;
  input [22:0] Mantissa_Y;
  output [22:0] Mantissa_Out;
  output Shift;
  wire   Res_0_, intadd_0_CI, intadd_0_SUM_21_, intadd_0_SUM_20_,
         intadd_0_SUM_19_, intadd_0_SUM_18_, intadd_0_SUM_17_,
         intadd_0_SUM_16_, intadd_0_SUM_15_, intadd_0_SUM_14_,
         intadd_0_SUM_13_, intadd_0_SUM_12_, intadd_0_SUM_11_,
         intadd_0_SUM_10_, intadd_0_SUM_9_, intadd_0_SUM_8_, intadd_0_SUM_7_,
         intadd_0_SUM_6_, intadd_0_SUM_5_, intadd_0_SUM_4_, intadd_0_SUM_3_,
         intadd_0_SUM_2_, intadd_0_SUM_1_, intadd_0_SUM_0_, intadd_0_n22,
         intadd_0_n21, intadd_0_n20, intadd_0_n19, intadd_0_n18, intadd_0_n17,
         intadd_0_n16, intadd_0_n15, intadd_0_n14, intadd_0_n13, intadd_0_n12,
         intadd_0_n11, intadd_0_n10, intadd_0_n9, intadd_0_n8, intadd_0_n7,
         intadd_0_n6, intadd_0_n5, intadd_0_n4, intadd_0_n3, intadd_0_n2,
         intadd_0_n1, intadd_1_A_21_, intadd_1_B_21_, intadd_1_B_20_,
         intadd_1_B_19_, intadd_1_B_18_, intadd_1_B_17_, intadd_1_B_16_,
         intadd_1_B_15_, intadd_1_B_14_, intadd_1_B_13_, intadd_1_B_12_,
         intadd_1_B_11_, intadd_1_B_10_, intadd_1_B_9_, intadd_1_B_8_,
         intadd_1_B_7_, intadd_1_B_6_, intadd_1_B_5_, intadd_1_B_4_,
         intadd_1_B_3_, intadd_1_B_2_, intadd_1_B_1_, intadd_1_B_0_,
         intadd_1_CI, intadd_1_SUM_21_, intadd_1_SUM_20_, intadd_1_SUM_19_,
         intadd_1_SUM_18_, intadd_1_SUM_17_, intadd_1_SUM_16_,
         intadd_1_SUM_15_, intadd_1_SUM_14_, intadd_1_SUM_13_,
         intadd_1_SUM_12_, intadd_1_SUM_11_, intadd_1_SUM_10_, intadd_1_SUM_9_,
         intadd_1_SUM_8_, intadd_1_SUM_7_, intadd_1_SUM_6_, intadd_1_SUM_5_,
         intadd_1_SUM_4_, intadd_1_SUM_3_, intadd_1_SUM_2_, intadd_1_SUM_1_,
         intadd_1_SUM_0_, intadd_1_n22, intadd_1_n21, intadd_1_n20,
         intadd_1_n19, intadd_1_n18, intadd_1_n17, intadd_1_n16, intadd_1_n15,
         intadd_1_n14, intadd_1_n13, intadd_1_n12, intadd_1_n11, intadd_1_n10,
         intadd_1_n9, intadd_1_n8, intadd_1_n7, intadd_1_n6, intadd_1_n5,
         intadd_1_n4, intadd_1_n3, intadd_1_n2, intadd_1_n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33;
  wire   [22:0] x_sub_y;
  wire   [24:0] L1_p2;
  wire   [24:1] A11S;
  wire   [23:0] A11C;
  wire   SYNOPSYS_UNCONNECTED__0;

  CSA3_2_Array_WIDTH25 Stage_0_0 ( .In_1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .In_2({intadd_1_n1, 1'b0, 
        x_sub_y}), .In_3({L1_p2[24], 1'b0, 1'b0, L1_p2[21:0]}), .S({A11S, 
        Res_0_}), .C({SYNOPSYS_UNCONNECTED__0, A11C}) );
  FA1D0 intadd_0_U23 ( .A(A11C[1]), .B(A11S[2]), .CI(intadd_0_CI), .CO(
        intadd_0_n22), .S(intadd_0_SUM_0_) );
  FA1D0 intadd_0_U22 ( .A(A11C[2]), .B(A11S[3]), .CI(intadd_0_n22), .CO(
        intadd_0_n21), .S(intadd_0_SUM_1_) );
  FA1D0 intadd_0_U21 ( .A(A11C[3]), .B(A11S[4]), .CI(intadd_0_n21), .CO(
        intadd_0_n20), .S(intadd_0_SUM_2_) );
  FA1D0 intadd_0_U20 ( .A(A11C[4]), .B(A11S[5]), .CI(intadd_0_n20), .CO(
        intadd_0_n19), .S(intadd_0_SUM_3_) );
  FA1D0 intadd_0_U19 ( .A(A11C[5]), .B(A11S[6]), .CI(intadd_0_n19), .CO(
        intadd_0_n18), .S(intadd_0_SUM_4_) );
  FA1D0 intadd_0_U18 ( .A(A11C[6]), .B(A11S[7]), .CI(intadd_0_n18), .CO(
        intadd_0_n17), .S(intadd_0_SUM_5_) );
  FA1D0 intadd_0_U17 ( .A(A11C[7]), .B(A11S[8]), .CI(intadd_0_n17), .CO(
        intadd_0_n16), .S(intadd_0_SUM_6_) );
  FA1D0 intadd_0_U16 ( .A(A11C[8]), .B(A11S[9]), .CI(intadd_0_n16), .CO(
        intadd_0_n15), .S(intadd_0_SUM_7_) );
  FA1D0 intadd_0_U15 ( .A(A11C[9]), .B(A11S[10]), .CI(intadd_0_n15), .CO(
        intadd_0_n14), .S(intadd_0_SUM_8_) );
  FA1D0 intadd_0_U14 ( .A(A11C[10]), .B(A11S[11]), .CI(intadd_0_n14), .CO(
        intadd_0_n13), .S(intadd_0_SUM_9_) );
  FA1D0 intadd_0_U13 ( .A(A11C[11]), .B(A11S[12]), .CI(intadd_0_n13), .CO(
        intadd_0_n12), .S(intadd_0_SUM_10_) );
  FA1D0 intadd_0_U12 ( .A(A11C[12]), .B(A11S[13]), .CI(intadd_0_n12), .CO(
        intadd_0_n11), .S(intadd_0_SUM_11_) );
  FA1D0 intadd_0_U11 ( .A(A11C[13]), .B(A11S[14]), .CI(intadd_0_n11), .CO(
        intadd_0_n10), .S(intadd_0_SUM_12_) );
  FA1D0 intadd_0_U10 ( .A(A11C[14]), .B(A11S[15]), .CI(intadd_0_n10), .CO(
        intadd_0_n9), .S(intadd_0_SUM_13_) );
  FA1D0 intadd_0_U9 ( .A(A11C[15]), .B(A11S[16]), .CI(intadd_0_n9), .CO(
        intadd_0_n8), .S(intadd_0_SUM_14_) );
  FA1D0 intadd_0_U8 ( .A(A11C[16]), .B(A11S[17]), .CI(intadd_0_n8), .CO(
        intadd_0_n7), .S(intadd_0_SUM_15_) );
  FA1D0 intadd_0_U7 ( .A(A11C[17]), .B(A11S[18]), .CI(intadd_0_n7), .CO(
        intadd_0_n6), .S(intadd_0_SUM_16_) );
  FA1D0 intadd_0_U6 ( .A(A11C[18]), .B(A11S[19]), .CI(intadd_0_n6), .CO(
        intadd_0_n5), .S(intadd_0_SUM_17_) );
  FA1D0 intadd_0_U5 ( .A(A11C[19]), .B(A11S[20]), .CI(intadd_0_n5), .CO(
        intadd_0_n4), .S(intadd_0_SUM_18_) );
  FA1D0 intadd_0_U4 ( .A(A11C[20]), .B(A11S[21]), .CI(intadd_0_n4), .CO(
        intadd_0_n3), .S(intadd_0_SUM_19_) );
  FA1D0 intadd_0_U3 ( .A(A11C[21]), .B(A11S[22]), .CI(intadd_0_n3), .CO(
        intadd_0_n2), .S(intadd_0_SUM_20_) );
  FA1D0 intadd_0_U2 ( .A(A11C[22]), .B(A11S[23]), .CI(intadd_0_n2), .CO(
        intadd_0_n1), .S(intadd_0_SUM_21_) );
  FA1D0 intadd_1_U23 ( .A(Mantissa_Y[1]), .B(intadd_1_B_0_), .CI(intadd_1_CI), 
        .CO(intadd_1_n22), .S(intadd_1_SUM_0_) );
  FA1D0 intadd_1_U22 ( .A(Mantissa_Y[2]), .B(intadd_1_B_1_), .CI(intadd_1_n22), 
        .CO(intadd_1_n21), .S(intadd_1_SUM_1_) );
  FA1D0 intadd_1_U21 ( .A(Mantissa_Y[3]), .B(intadd_1_B_2_), .CI(intadd_1_n21), 
        .CO(intadd_1_n20), .S(intadd_1_SUM_2_) );
  FA1D0 intadd_1_U20 ( .A(Mantissa_Y[4]), .B(intadd_1_B_3_), .CI(intadd_1_n20), 
        .CO(intadd_1_n19), .S(intadd_1_SUM_3_) );
  FA1D0 intadd_1_U19 ( .A(Mantissa_Y[5]), .B(intadd_1_B_4_), .CI(intadd_1_n19), 
        .CO(intadd_1_n18), .S(intadd_1_SUM_4_) );
  FA1D0 intadd_1_U18 ( .A(Mantissa_Y[6]), .B(intadd_1_B_5_), .CI(intadd_1_n18), 
        .CO(intadd_1_n17), .S(intadd_1_SUM_5_) );
  FA1D0 intadd_1_U17 ( .A(Mantissa_Y[7]), .B(intadd_1_B_6_), .CI(intadd_1_n17), 
        .CO(intadd_1_n16), .S(intadd_1_SUM_6_) );
  FA1D0 intadd_1_U16 ( .A(Mantissa_Y[8]), .B(intadd_1_B_7_), .CI(intadd_1_n16), 
        .CO(intadd_1_n15), .S(intadd_1_SUM_7_) );
  FA1D0 intadd_1_U15 ( .A(Mantissa_Y[9]), .B(intadd_1_B_8_), .CI(intadd_1_n15), 
        .CO(intadd_1_n14), .S(intadd_1_SUM_8_) );
  FA1D0 intadd_1_U14 ( .A(Mantissa_Y[10]), .B(intadd_1_B_9_), .CI(intadd_1_n14), .CO(intadd_1_n13), .S(intadd_1_SUM_9_) );
  FA1D0 intadd_1_U13 ( .A(Mantissa_Y[11]), .B(intadd_1_B_10_), .CI(
        intadd_1_n13), .CO(intadd_1_n12), .S(intadd_1_SUM_10_) );
  FA1D0 intadd_1_U12 ( .A(Mantissa_Y[12]), .B(intadd_1_B_11_), .CI(
        intadd_1_n12), .CO(intadd_1_n11), .S(intadd_1_SUM_11_) );
  FA1D0 intadd_1_U11 ( .A(Mantissa_Y[13]), .B(intadd_1_B_12_), .CI(
        intadd_1_n11), .CO(intadd_1_n10), .S(intadd_1_SUM_12_) );
  FA1D0 intadd_1_U10 ( .A(Mantissa_Y[14]), .B(intadd_1_B_13_), .CI(
        intadd_1_n10), .CO(intadd_1_n9), .S(intadd_1_SUM_13_) );
  FA1D0 intadd_1_U9 ( .A(Mantissa_Y[15]), .B(intadd_1_B_14_), .CI(intadd_1_n9), 
        .CO(intadd_1_n8), .S(intadd_1_SUM_14_) );
  FA1D0 intadd_1_U8 ( .A(Mantissa_Y[16]), .B(intadd_1_B_15_), .CI(intadd_1_n8), 
        .CO(intadd_1_n7), .S(intadd_1_SUM_15_) );
  FA1D0 intadd_1_U7 ( .A(Mantissa_Y[17]), .B(intadd_1_B_16_), .CI(intadd_1_n7), 
        .CO(intadd_1_n6), .S(intadd_1_SUM_16_) );
  FA1D0 intadd_1_U6 ( .A(Mantissa_Y[18]), .B(intadd_1_B_17_), .CI(intadd_1_n6), 
        .CO(intadd_1_n5), .S(intadd_1_SUM_17_) );
  FA1D0 intadd_1_U5 ( .A(Mantissa_Y[19]), .B(intadd_1_B_18_), .CI(intadd_1_n5), 
        .CO(intadd_1_n4), .S(intadd_1_SUM_18_) );
  FA1D0 intadd_1_U4 ( .A(Mantissa_Y[20]), .B(intadd_1_B_19_), .CI(intadd_1_n4), 
        .CO(intadd_1_n3), .S(intadd_1_SUM_19_) );
  FA1D0 intadd_1_U3 ( .A(Mantissa_Y[21]), .B(intadd_1_B_20_), .CI(intadd_1_n3), 
        .CO(intadd_1_n2), .S(intadd_1_SUM_20_) );
  FA1D0 intadd_1_U2 ( .A(intadd_1_A_21_), .B(intadd_1_B_21_), .CI(intadd_1_n2), 
        .CO(intadd_1_n1), .S(intadd_1_SUM_21_) );
  INVD0 U4 ( .I(n10), .ZN(n2) );
  INVD0 U5 ( .I(n2), .ZN(n3) );
  INVD0 U6 ( .I(n24), .ZN(n4) );
  INVD0 U7 ( .I(n4), .ZN(n5) );
  INVD0 U8 ( .I(n25), .ZN(n6) );
  INVD0 U9 ( .I(n6), .ZN(n7) );
  INVD0 U10 ( .I(n6), .ZN(n8) );
  INVD0 U11 ( .I(n6), .ZN(n9) );
  INVD0 U12 ( .I(n6), .ZN(n10) );
  INVD0 U13 ( .I(n24), .ZN(n11) );
  INVD0 U14 ( .I(n11), .ZN(n12) );
  INVD0 U15 ( .I(n11), .ZN(n13) );
  INVD0 U16 ( .I(n11), .ZN(n14) );
  INVD0 U17 ( .I(n11), .ZN(n15) );
  XOR3D0 U18 ( .A1(intadd_0_n1), .A2(A11C[23]), .A3(A11S[24]), .Z(n16) );
  BUFFD0 U19 ( .I(n16), .Z(n23) );
  BUFFD0 U20 ( .I(n23), .Z(Shift) );
  BUFFD0 U21 ( .I(Mantissa_Y[22]), .Z(n33) );
  BUFFD0 U22 ( .I(n33), .Z(intadd_1_A_21_) );
  INR2D0 U23 ( .A1(intadd_1_n1), .B1(intadd_1_A_21_), .ZN(L1_p2[24]) );
  INR2D0 U24 ( .A1(intadd_0_SUM_21_), .B1(Shift), .ZN(n24) );
  AO22D0 U25 ( .A1(Shift), .A2(intadd_0_SUM_20_), .B1(n24), .B2(
        intadd_0_SUM_19_), .Z(Mantissa_Out[21]) );
  OA21D0 U26 ( .A1(Shift), .A2(intadd_0_SUM_20_), .B(intadd_0_SUM_21_), .Z(
        Mantissa_Out[22]) );
  CKAN2D0 U27 ( .A1(A11S[1]), .A2(A11C[0]), .Z(intadd_0_CI) );
  IAO21D0 U28 ( .A1(A11S[1]), .A2(A11C[0]), .B(intadd_0_CI), .ZN(n17) );
  BUFFD0 U29 ( .I(n16), .Z(n20) );
  BUFFD0 U30 ( .I(n20), .Z(n18) );
  NR2D0 U31 ( .A1(n18), .A2(intadd_0_SUM_21_), .ZN(n25) );
  AO222D0 U32 ( .A1(n23), .A2(intadd_0_SUM_0_), .B1(n17), .B2(n13), .C1(n25), 
        .C2(intadd_0_SUM_1_), .Z(Mantissa_Out[1]) );
  AO222D0 U33 ( .A1(n18), .A2(n17), .B1(Res_0_), .B2(n12), .C1(n7), .C2(
        intadd_0_SUM_0_), .Z(Mantissa_Out[0]) );
  AO222D0 U34 ( .A1(n23), .A2(intadd_0_SUM_1_), .B1(n9), .B2(intadd_0_SUM_2_), 
        .C1(n15), .C2(intadd_0_SUM_0_), .Z(Mantissa_Out[2]) );
  AO222D0 U35 ( .A1(n18), .A2(intadd_0_SUM_18_), .B1(n7), .B2(intadd_0_SUM_19_), .C1(n5), .C2(intadd_0_SUM_17_), .Z(Mantissa_Out[19]) );
  AO222D0 U36 ( .A1(n18), .A2(intadd_0_SUM_19_), .B1(n8), .B2(intadd_0_SUM_20_), .C1(n5), .C2(intadd_0_SUM_18_), .Z(Mantissa_Out[20]) );
  BUFFD0 U37 ( .I(n20), .Z(n19) );
  AO222D0 U38 ( .A1(n19), .A2(intadd_0_SUM_17_), .B1(n7), .B2(intadd_0_SUM_18_), .C1(n13), .C2(intadd_0_SUM_16_), .Z(Mantissa_Out[18]) );
  AO222D0 U39 ( .A1(n19), .A2(intadd_0_SUM_16_), .B1(n3), .B2(intadd_0_SUM_17_), .C1(n14), .C2(intadd_0_SUM_15_), .Z(Mantissa_Out[17]) );
  BUFFD0 U40 ( .I(n20), .Z(n21) );
  AO222D0 U41 ( .A1(n21), .A2(intadd_0_SUM_15_), .B1(n25), .B2(
        intadd_0_SUM_16_), .C1(n13), .C2(intadd_0_SUM_14_), .Z(
        Mantissa_Out[16]) );
  AO222D0 U42 ( .A1(n19), .A2(intadd_0_SUM_14_), .B1(n7), .B2(intadd_0_SUM_15_), .C1(n12), .C2(intadd_0_SUM_13_), .Z(Mantissa_Out[15]) );
  AO222D0 U43 ( .A1(n19), .A2(intadd_0_SUM_13_), .B1(n10), .B2(
        intadd_0_SUM_14_), .C1(n5), .C2(intadd_0_SUM_12_), .Z(Mantissa_Out[14]) );
  BUFFD0 U44 ( .I(n20), .Z(n22) );
  AO222D0 U45 ( .A1(n22), .A2(intadd_0_SUM_7_), .B1(n10), .B2(intadd_0_SUM_8_), 
        .C1(n12), .C2(intadd_0_SUM_6_), .Z(Mantissa_Out[8]) );
  AO222D0 U46 ( .A1(n21), .A2(intadd_0_SUM_12_), .B1(n3), .B2(intadd_0_SUM_13_), .C1(n12), .C2(intadd_0_SUM_11_), .Z(Mantissa_Out[13]) );
  AO222D0 U47 ( .A1(n21), .A2(intadd_0_SUM_11_), .B1(n10), .B2(
        intadd_0_SUM_12_), .C1(n15), .C2(intadd_0_SUM_10_), .Z(
        Mantissa_Out[12]) );
  AO222D0 U48 ( .A1(n21), .A2(intadd_0_SUM_10_), .B1(n9), .B2(intadd_0_SUM_11_), .C1(n24), .C2(intadd_0_SUM_9_), .Z(Mantissa_Out[11]) );
  AO222D0 U49 ( .A1(n22), .A2(intadd_0_SUM_9_), .B1(n9), .B2(intadd_0_SUM_10_), 
        .C1(n15), .C2(intadd_0_SUM_8_), .Z(Mantissa_Out[10]) );
  AO222D0 U50 ( .A1(n22), .A2(intadd_0_SUM_8_), .B1(n25), .B2(intadd_0_SUM_9_), 
        .C1(n15), .C2(intadd_0_SUM_7_), .Z(Mantissa_Out[9]) );
  AO222D0 U51 ( .A1(n22), .A2(intadd_0_SUM_6_), .B1(n9), .B2(intadd_0_SUM_7_), 
        .C1(n14), .C2(intadd_0_SUM_5_), .Z(Mantissa_Out[7]) );
  BUFFD0 U52 ( .I(n23), .Z(n26) );
  AO222D0 U53 ( .A1(n26), .A2(intadd_0_SUM_5_), .B1(n8), .B2(intadd_0_SUM_6_), 
        .C1(n5), .C2(intadd_0_SUM_4_), .Z(Mantissa_Out[6]) );
  AO222D0 U54 ( .A1(n26), .A2(intadd_0_SUM_4_), .B1(n8), .B2(intadd_0_SUM_5_), 
        .C1(n14), .C2(intadd_0_SUM_3_), .Z(Mantissa_Out[5]) );
  AO222D0 U55 ( .A1(n26), .A2(intadd_0_SUM_3_), .B1(n3), .B2(intadd_0_SUM_4_), 
        .C1(n14), .C2(intadd_0_SUM_2_), .Z(Mantissa_Out[4]) );
  AO222D0 U56 ( .A1(n26), .A2(intadd_0_SUM_2_), .B1(n8), .B2(intadd_0_SUM_3_), 
        .C1(n13), .C2(intadd_0_SUM_1_), .Z(Mantissa_Out[3]) );
  INVD0 U57 ( .I(Mantissa_Y[0]), .ZN(n27) );
  NR2D0 U58 ( .A1(n27), .A2(Mantissa_X[0]), .ZN(intadd_1_CI) );
  AO21D0 U59 ( .A1(Mantissa_X[0]), .A2(n27), .B(intadd_1_CI), .Z(x_sub_y[0])
         );
  NR2D0 U60 ( .A1(intadd_1_A_21_), .A2(intadd_1_SUM_0_), .ZN(L1_p2[0]) );
  INVD0 U61 ( .I(intadd_1_SUM_0_), .ZN(x_sub_y[1]) );
  BUFFD0 U62 ( .I(Mantissa_Y[22]), .Z(n30) );
  BUFFD0 U63 ( .I(n30), .Z(n28) );
  NR2D0 U64 ( .A1(n28), .A2(intadd_1_SUM_1_), .ZN(L1_p2[1]) );
  INVD0 U65 ( .I(intadd_1_SUM_1_), .ZN(x_sub_y[2]) );
  NR2D0 U66 ( .A1(n28), .A2(intadd_1_SUM_2_), .ZN(L1_p2[2]) );
  INVD0 U67 ( .I(intadd_1_SUM_2_), .ZN(x_sub_y[3]) );
  NR2D0 U68 ( .A1(n28), .A2(intadd_1_SUM_3_), .ZN(L1_p2[3]) );
  INVD0 U69 ( .I(intadd_1_SUM_3_), .ZN(x_sub_y[4]) );
  NR2D0 U70 ( .A1(n28), .A2(intadd_1_SUM_4_), .ZN(L1_p2[4]) );
  INVD0 U71 ( .I(intadd_1_SUM_4_), .ZN(x_sub_y[5]) );
  BUFFD0 U72 ( .I(n30), .Z(n29) );
  NR2D0 U73 ( .A1(n29), .A2(intadd_1_SUM_5_), .ZN(L1_p2[5]) );
  INVD0 U74 ( .I(intadd_1_SUM_5_), .ZN(x_sub_y[6]) );
  NR2D0 U75 ( .A1(n29), .A2(intadd_1_SUM_6_), .ZN(L1_p2[6]) );
  INVD0 U76 ( .I(intadd_1_SUM_6_), .ZN(x_sub_y[7]) );
  NR2D0 U77 ( .A1(n29), .A2(intadd_1_SUM_7_), .ZN(L1_p2[7]) );
  INVD0 U78 ( .I(intadd_1_SUM_7_), .ZN(x_sub_y[8]) );
  NR2D0 U79 ( .A1(n29), .A2(intadd_1_SUM_8_), .ZN(L1_p2[8]) );
  INVD0 U80 ( .I(intadd_1_SUM_8_), .ZN(x_sub_y[9]) );
  BUFFD0 U81 ( .I(n30), .Z(n32) );
  NR2D0 U82 ( .A1(n32), .A2(intadd_1_SUM_9_), .ZN(L1_p2[9]) );
  INVD0 U83 ( .I(intadd_1_SUM_9_), .ZN(x_sub_y[10]) );
  NR2D0 U84 ( .A1(n32), .A2(intadd_1_SUM_10_), .ZN(L1_p2[10]) );
  INVD0 U85 ( .I(intadd_1_SUM_10_), .ZN(x_sub_y[11]) );
  NR2D0 U86 ( .A1(n32), .A2(intadd_1_SUM_11_), .ZN(L1_p2[11]) );
  INVD0 U87 ( .I(intadd_1_SUM_11_), .ZN(x_sub_y[12]) );
  BUFFD0 U88 ( .I(n33), .Z(n31) );
  NR2D0 U89 ( .A1(n31), .A2(intadd_1_SUM_12_), .ZN(L1_p2[12]) );
  INVD0 U90 ( .I(intadd_1_SUM_12_), .ZN(x_sub_y[13]) );
  NR2D0 U91 ( .A1(n31), .A2(intadd_1_SUM_13_), .ZN(L1_p2[13]) );
  INVD0 U92 ( .I(intadd_1_SUM_13_), .ZN(x_sub_y[14]) );
  NR2D0 U93 ( .A1(n31), .A2(intadd_1_SUM_14_), .ZN(L1_p2[14]) );
  INVD0 U94 ( .I(intadd_1_SUM_14_), .ZN(x_sub_y[15]) );
  NR2D0 U95 ( .A1(n31), .A2(intadd_1_SUM_15_), .ZN(L1_p2[15]) );
  INVD0 U96 ( .I(intadd_1_SUM_15_), .ZN(x_sub_y[16]) );
  NR2D0 U97 ( .A1(n32), .A2(intadd_1_SUM_16_), .ZN(L1_p2[16]) );
  INVD0 U98 ( .I(intadd_1_SUM_16_), .ZN(x_sub_y[17]) );
  NR2D0 U99 ( .A1(n33), .A2(intadd_1_SUM_17_), .ZN(L1_p2[17]) );
  INVD0 U100 ( .I(intadd_1_SUM_17_), .ZN(x_sub_y[18]) );
  NR2D0 U101 ( .A1(n33), .A2(intadd_1_SUM_18_), .ZN(L1_p2[18]) );
  INVD0 U102 ( .I(intadd_1_SUM_18_), .ZN(x_sub_y[19]) );
  INVD0 U103 ( .I(intadd_1_SUM_19_), .ZN(x_sub_y[20]) );
  INVD0 U104 ( .I(intadd_1_SUM_20_), .ZN(x_sub_y[21]) );
  NR2D0 U105 ( .A1(intadd_1_A_21_), .A2(intadd_1_SUM_21_), .ZN(L1_p2[21]) );
  INVD0 U106 ( .I(intadd_1_SUM_21_), .ZN(x_sub_y[22]) );
  INVD0 U107 ( .I(Mantissa_X[1]), .ZN(intadd_1_B_0_) );
  INVD0 U108 ( .I(Mantissa_X[2]), .ZN(intadd_1_B_1_) );
  INVD0 U109 ( .I(Mantissa_X[3]), .ZN(intadd_1_B_2_) );
  INVD0 U110 ( .I(Mantissa_X[4]), .ZN(intadd_1_B_3_) );
  INVD0 U111 ( .I(Mantissa_X[5]), .ZN(intadd_1_B_4_) );
  INVD0 U112 ( .I(Mantissa_X[6]), .ZN(intadd_1_B_5_) );
  INVD0 U113 ( .I(Mantissa_X[7]), .ZN(intadd_1_B_6_) );
  INVD0 U114 ( .I(Mantissa_X[8]), .ZN(intadd_1_B_7_) );
  INVD0 U115 ( .I(Mantissa_X[9]), .ZN(intadd_1_B_8_) );
  INVD0 U116 ( .I(Mantissa_X[10]), .ZN(intadd_1_B_9_) );
  INVD0 U117 ( .I(Mantissa_X[11]), .ZN(intadd_1_B_10_) );
  INVD0 U118 ( .I(Mantissa_X[12]), .ZN(intadd_1_B_11_) );
  INVD0 U119 ( .I(Mantissa_X[13]), .ZN(intadd_1_B_12_) );
  INVD0 U120 ( .I(Mantissa_X[14]), .ZN(intadd_1_B_13_) );
  INVD0 U121 ( .I(Mantissa_X[15]), .ZN(intadd_1_B_14_) );
  INVD0 U122 ( .I(Mantissa_X[16]), .ZN(intadd_1_B_15_) );
  INVD0 U123 ( .I(Mantissa_X[17]), .ZN(intadd_1_B_16_) );
  INVD0 U124 ( .I(Mantissa_X[18]), .ZN(intadd_1_B_17_) );
  INVD0 U125 ( .I(Mantissa_X[19]), .ZN(intadd_1_B_18_) );
  INVD0 U126 ( .I(Mantissa_X[20]), .ZN(intadd_1_B_19_) );
  INVD0 U127 ( .I(Mantissa_X[21]), .ZN(intadd_1_B_20_) );
  INVD0 U128 ( .I(Mantissa_X[22]), .ZN(intadd_1_B_21_) );
  NR2D0 U129 ( .A1(Mantissa_Y[22]), .A2(intadd_1_SUM_19_), .ZN(L1_p2[19]) );
  NR2D0 U130 ( .A1(Mantissa_Y[22]), .A2(intadd_1_SUM_20_), .ZN(L1_p2[20]) );
endmodule


module FP_DIV_WRAPPER_32 ( x, y, out0, mantissa_x, mantissa_y, mantissa_out, 
        shift );
  input [31:0] x;
  input [31:0] y;
  output [31:0] out0;
  output [22:0] mantissa_x;
  output [22:0] mantissa_y;
  input [22:0] mantissa_out;
  input [0:0] shift;
  wire   intadd_2_A_6_, intadd_2_A_5_, intadd_2_A_4_, intadd_2_A_3_,
         intadd_2_A_2_, intadd_2_B_6_, intadd_2_B_5_, intadd_2_B_4_,
         intadd_2_B_3_, intadd_2_B_2_, intadd_2_B_1_, intadd_2_B_0_,
         intadd_2_CI, intadd_2_SUM_6_, intadd_2_SUM_5_, intadd_2_SUM_4_,
         intadd_2_SUM_3_, intadd_2_SUM_2_, intadd_2_SUM_1_, intadd_2_SUM_0_,
         intadd_2_n7, intadd_2_n6, intadd_2_n5, intadd_2_n4, intadd_2_n3,
         intadd_2_n2, intadd_2_n1, n1, n2, n3, n4, n5, n6, n7;

  FA1D0 intadd_2_U8 ( .A(shift[0]), .B(intadd_2_B_0_), .CI(intadd_2_CI), .CO(
        intadd_2_n7), .S(intadd_2_SUM_0_) );
  FA1D0 intadd_2_U7 ( .A(y[23]), .B(intadd_2_B_1_), .CI(intadd_2_n7), .CO(
        intadd_2_n6), .S(intadd_2_SUM_1_) );
  FA1D0 intadd_2_U6 ( .A(intadd_2_A_2_), .B(intadd_2_B_2_), .CI(intadd_2_n6), 
        .CO(intadd_2_n5), .S(intadd_2_SUM_2_) );
  FA1D0 intadd_2_U5 ( .A(intadd_2_A_3_), .B(intadd_2_B_3_), .CI(intadd_2_n5), 
        .CO(intadd_2_n4), .S(intadd_2_SUM_3_) );
  FA1D0 intadd_2_U4 ( .A(intadd_2_A_4_), .B(intadd_2_B_4_), .CI(intadd_2_n4), 
        .CO(intadd_2_n3), .S(intadd_2_SUM_4_) );
  FA1D0 intadd_2_U3 ( .A(intadd_2_A_5_), .B(intadd_2_B_5_), .CI(intadd_2_n3), 
        .CO(intadd_2_n2), .S(intadd_2_SUM_5_) );
  FA1D0 intadd_2_U2 ( .A(intadd_2_A_6_), .B(intadd_2_B_6_), .CI(intadd_2_n2), 
        .CO(intadd_2_n1), .S(intadd_2_SUM_6_) );
  BUFFD0 U2 ( .I(y[2]), .Z(mantissa_y[2]) );
  BUFFD0 U3 ( .I(y[8]), .Z(mantissa_y[8]) );
  BUFFD0 U4 ( .I(y[16]), .Z(mantissa_y[16]) );
  BUFFD0 U5 ( .I(y[0]), .Z(mantissa_y[0]) );
  BUFFD0 U6 ( .I(y[1]), .Z(mantissa_y[1]) );
  BUFFD0 U7 ( .I(y[22]), .Z(mantissa_y[22]) );
  BUFFD0 U8 ( .I(mantissa_out[0]), .Z(out0[0]) );
  BUFFD0 U9 ( .I(mantissa_out[2]), .Z(out0[2]) );
  BUFFD0 U10 ( .I(mantissa_out[17]), .Z(out0[17]) );
  BUFFD0 U11 ( .I(x[22]), .Z(mantissa_x[22]) );
  BUFFD0 U12 ( .I(x[21]), .Z(mantissa_x[21]) );
  BUFFD0 U13 ( .I(x[20]), .Z(mantissa_x[20]) );
  BUFFD0 U14 ( .I(x[19]), .Z(mantissa_x[19]) );
  BUFFD0 U15 ( .I(x[18]), .Z(mantissa_x[18]) );
  BUFFD0 U16 ( .I(x[17]), .Z(mantissa_x[17]) );
  BUFFD0 U17 ( .I(x[16]), .Z(mantissa_x[16]) );
  BUFFD0 U18 ( .I(x[15]), .Z(mantissa_x[15]) );
  BUFFD0 U19 ( .I(x[14]), .Z(mantissa_x[14]) );
  BUFFD0 U20 ( .I(x[13]), .Z(mantissa_x[13]) );
  BUFFD0 U21 ( .I(x[12]), .Z(mantissa_x[12]) );
  BUFFD0 U22 ( .I(x[11]), .Z(mantissa_x[11]) );
  BUFFD0 U23 ( .I(x[10]), .Z(mantissa_x[10]) );
  BUFFD0 U24 ( .I(x[9]), .Z(mantissa_x[9]) );
  BUFFD0 U25 ( .I(x[8]), .Z(mantissa_x[8]) );
  BUFFD0 U26 ( .I(x[7]), .Z(mantissa_x[7]) );
  BUFFD0 U27 ( .I(x[6]), .Z(mantissa_x[6]) );
  BUFFD0 U28 ( .I(x[5]), .Z(mantissa_x[5]) );
  BUFFD0 U29 ( .I(x[4]), .Z(mantissa_x[4]) );
  BUFFD0 U30 ( .I(x[3]), .Z(mantissa_x[3]) );
  BUFFD0 U31 ( .I(x[2]), .Z(mantissa_x[2]) );
  BUFFD0 U32 ( .I(x[1]), .Z(mantissa_x[1]) );
  BUFFD0 U33 ( .I(x[0]), .Z(mantissa_x[0]) );
  BUFFD0 U34 ( .I(mantissa_out[1]), .Z(out0[1]) );
  BUFFD0 U35 ( .I(mantissa_out[3]), .Z(out0[3]) );
  BUFFD0 U36 ( .I(mantissa_out[4]), .Z(out0[4]) );
  BUFFD0 U37 ( .I(mantissa_out[5]), .Z(out0[5]) );
  BUFFD0 U38 ( .I(mantissa_out[6]), .Z(out0[6]) );
  BUFFD0 U39 ( .I(mantissa_out[7]), .Z(out0[7]) );
  BUFFD0 U40 ( .I(mantissa_out[8]), .Z(out0[8]) );
  BUFFD0 U41 ( .I(mantissa_out[9]), .Z(out0[9]) );
  BUFFD0 U42 ( .I(mantissa_out[10]), .Z(out0[10]) );
  BUFFD0 U43 ( .I(mantissa_out[11]), .Z(out0[11]) );
  BUFFD0 U44 ( .I(mantissa_out[12]), .Z(out0[12]) );
  BUFFD0 U45 ( .I(mantissa_out[13]), .Z(out0[13]) );
  BUFFD0 U46 ( .I(mantissa_out[14]), .Z(out0[14]) );
  BUFFD0 U47 ( .I(mantissa_out[15]), .Z(out0[15]) );
  BUFFD0 U48 ( .I(mantissa_out[16]), .Z(out0[16]) );
  BUFFD0 U49 ( .I(mantissa_out[18]), .Z(out0[18]) );
  BUFFD0 U50 ( .I(mantissa_out[19]), .Z(out0[19]) );
  BUFFD0 U51 ( .I(mantissa_out[20]), .Z(out0[20]) );
  BUFFD0 U52 ( .I(mantissa_out[21]), .Z(out0[21]) );
  BUFFD0 U53 ( .I(mantissa_out[22]), .Z(out0[22]) );
  BUFFD0 U54 ( .I(y[3]), .Z(mantissa_y[3]) );
  BUFFD0 U55 ( .I(y[4]), .Z(mantissa_y[4]) );
  BUFFD0 U56 ( .I(y[5]), .Z(mantissa_y[5]) );
  BUFFD0 U57 ( .I(y[6]), .Z(mantissa_y[6]) );
  BUFFD0 U58 ( .I(y[7]), .Z(mantissa_y[7]) );
  BUFFD0 U59 ( .I(y[9]), .Z(mantissa_y[9]) );
  BUFFD0 U60 ( .I(y[10]), .Z(mantissa_y[10]) );
  BUFFD0 U61 ( .I(y[11]), .Z(mantissa_y[11]) );
  BUFFD0 U62 ( .I(y[12]), .Z(mantissa_y[12]) );
  BUFFD0 U63 ( .I(y[13]), .Z(mantissa_y[13]) );
  BUFFD0 U64 ( .I(y[14]), .Z(mantissa_y[14]) );
  BUFFD0 U65 ( .I(y[15]), .Z(mantissa_y[15]) );
  BUFFD0 U66 ( .I(y[17]), .Z(mantissa_y[17]) );
  BUFFD0 U67 ( .I(y[18]), .Z(mantissa_y[18]) );
  BUFFD0 U68 ( .I(y[19]), .Z(mantissa_y[19]) );
  BUFFD0 U69 ( .I(y[20]), .Z(mantissa_y[20]) );
  BUFFD0 U70 ( .I(y[21]), .Z(mantissa_y[21]) );
  INVD0 U71 ( .I(y[29]), .ZN(n7) );
  NR2D0 U72 ( .A1(n7), .A2(x[29]), .ZN(n6) );
  XNR4D0 U73 ( .A1(n6), .A2(y[30]), .A3(x[30]), .A4(intadd_2_n1), .ZN(out0[30]) );
  INVD0 U74 ( .I(intadd_2_SUM_0_), .ZN(out0[23]) );
  INVD0 U75 ( .I(intadd_2_SUM_1_), .ZN(out0[24]) );
  INVD0 U76 ( .I(intadd_2_SUM_2_), .ZN(out0[25]) );
  INVD0 U77 ( .I(intadd_2_SUM_3_), .ZN(out0[26]) );
  INVD0 U78 ( .I(intadd_2_SUM_4_), .ZN(out0[27]) );
  INVD0 U79 ( .I(intadd_2_SUM_5_), .ZN(out0[28]) );
  INVD0 U80 ( .I(intadd_2_SUM_6_), .ZN(out0[29]) );
  INVD0 U81 ( .I(x[23]), .ZN(intadd_2_CI) );
  INVD0 U82 ( .I(y[23]), .ZN(intadd_2_B_0_) );
  INVD0 U83 ( .I(y[24]), .ZN(n1) );
  NR2D0 U84 ( .A1(n1), .A2(x[24]), .ZN(intadd_2_B_2_) );
  INVD0 U85 ( .I(y[25]), .ZN(n2) );
  NR2D0 U86 ( .A1(n2), .A2(x[25]), .ZN(intadd_2_B_3_) );
  INVD0 U87 ( .I(y[26]), .ZN(n3) );
  NR2D0 U88 ( .A1(n3), .A2(x[26]), .ZN(intadd_2_B_4_) );
  INVD0 U89 ( .I(y[27]), .ZN(n4) );
  NR2D0 U90 ( .A1(n4), .A2(x[27]), .ZN(intadd_2_B_5_) );
  INVD0 U91 ( .I(y[28]), .ZN(n5) );
  NR2D0 U92 ( .A1(n5), .A2(x[28]), .ZN(intadd_2_B_6_) );
  AOI21D0 U93 ( .A1(x[24]), .A2(n1), .B(intadd_2_B_2_), .ZN(intadd_2_B_1_) );
  AOI21D0 U94 ( .A1(x[25]), .A2(n2), .B(intadd_2_B_3_), .ZN(intadd_2_A_2_) );
  AOI21D0 U95 ( .A1(x[26]), .A2(n3), .B(intadd_2_B_4_), .ZN(intadd_2_A_3_) );
  AOI21D0 U96 ( .A1(x[27]), .A2(n4), .B(intadd_2_B_5_), .ZN(intadd_2_A_4_) );
  AOI21D0 U97 ( .A1(x[28]), .A2(n5), .B(intadd_2_B_6_), .ZN(intadd_2_A_5_) );
  AOI21D0 U98 ( .A1(x[29]), .A2(n7), .B(n6), .ZN(intadd_2_A_6_) );
  XOR2D0 U99 ( .A1(y[31]), .A2(x[31]), .Z(out0[31]) );
endmodule


module pace_fp32_l1 ( x, y, out0 );
  input [31:0] x;
  input [31:0] y;
  output [31:0] out0;
  wire   shift, n2;
  wire   [22:0] mantissa_x;
  wire   [22:0] mantissa_y;
  wire   [22:0] mantissa_out;

  Mantissa_Div_L1_MANTISSA_WIDTH23 mantissa_div ( .Mantissa_X(mantissa_x), 
        .Mantissa_Y(mantissa_y), .Mantissa_Out(mantissa_out), .Shift(shift) );
  FP_DIV_WRAPPER_32 fp_wrapper ( .x(x), .y(y), .out0(out0), .mantissa_x(
        mantissa_x), .mantissa_y(mantissa_y), .mantissa_out(mantissa_out), 
        .shift(n2) );
  INVD0 U2 ( .I(shift), .ZN(n2) );
endmodule

