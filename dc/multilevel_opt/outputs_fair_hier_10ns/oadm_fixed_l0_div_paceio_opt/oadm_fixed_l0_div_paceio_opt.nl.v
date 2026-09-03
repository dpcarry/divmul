/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Wed Sep  2 14:54:41 2026
/////////////////////////////////////////////////////////////


module oadm_fixed_plane_centered_LEVEL0 ( x_mantissa, y_mantissa, divide_mode, 
        plane_exact );
  input [23:0] x_mantissa;
  input [23:0] y_mantissa;
  output [28:0] plane_exact;
  input divide_mode;
  wire   intadd_1_A_21_, intadd_1_A_20_, intadd_1_B_21_, intadd_1_B_20_,
         intadd_1_CI, intadd_1_SUM_19_, intadd_1_SUM_18_, intadd_1_SUM_17_,
         intadd_1_SUM_16_, intadd_1_SUM_15_, intadd_1_SUM_14_,
         intadd_1_SUM_13_, intadd_1_SUM_12_, intadd_1_SUM_11_,
         intadd_1_SUM_10_, intadd_1_SUM_9_, intadd_1_SUM_8_, intadd_1_SUM_7_,
         intadd_1_SUM_6_, intadd_1_SUM_5_, intadd_1_SUM_4_, intadd_1_SUM_3_,
         intadd_1_SUM_2_, intadd_1_SUM_1_, intadd_1_SUM_0_, intadd_1_n22,
         intadd_1_n21, intadd_1_n20, intadd_1_n19, intadd_1_n18, intadd_1_n17,
         intadd_1_n16, intadd_1_n15, intadd_1_n14, intadd_1_n13, intadd_1_n12,
         intadd_1_n11, intadd_1_n10, intadd_1_n9, intadd_1_n8, intadd_1_n7,
         intadd_1_n6, intadd_1_n5, intadd_1_n4, intadd_1_n3, intadd_1_n2,
         intadd_2_A_20_, intadd_2_A_19_, intadd_2_A_18_, intadd_2_A_17_,
         intadd_2_A_16_, intadd_2_A_15_, intadd_2_A_14_, intadd_2_A_13_,
         intadd_2_A_12_, intadd_2_A_11_, intadd_2_A_10_, intadd_2_A_9_,
         intadd_2_A_8_, intadd_2_A_7_, intadd_2_A_6_, intadd_2_A_5_,
         intadd_2_A_4_, intadd_2_A_3_, intadd_2_A_2_, intadd_2_A_1_,
         intadd_2_A_0_, intadd_2_B_20_, intadd_2_B_19_, intadd_2_B_18_,
         intadd_2_B_17_, intadd_2_B_16_, intadd_2_B_15_, intadd_2_B_14_,
         intadd_2_B_13_, intadd_2_B_12_, intadd_2_B_11_, intadd_2_B_10_,
         intadd_2_B_9_, intadd_2_B_8_, intadd_2_B_7_, intadd_2_B_6_,
         intadd_2_B_5_, intadd_2_B_4_, intadd_2_B_3_, intadd_2_B_2_,
         intadd_2_B_1_, intadd_2_B_0_, intadd_2_CI, intadd_2_SUM_20_,
         intadd_2_SUM_19_, intadd_2_SUM_18_, intadd_2_SUM_17_,
         intadd_2_SUM_16_, intadd_2_SUM_15_, intadd_2_SUM_14_,
         intadd_2_SUM_13_, intadd_2_SUM_12_, intadd_2_SUM_11_,
         intadd_2_SUM_10_, intadd_2_SUM_9_, intadd_2_SUM_8_, intadd_2_SUM_7_,
         intadd_2_SUM_6_, intadd_2_SUM_5_, intadd_2_SUM_4_, intadd_2_SUM_3_,
         intadd_2_SUM_2_, intadd_2_SUM_1_, intadd_2_SUM_0_, intadd_2_n21,
         intadd_2_n20, intadd_2_n19, intadd_2_n18, intadd_2_n17, intadd_2_n16,
         intadd_2_n15, intadd_2_n14, intadd_2_n13, intadd_2_n12, intadd_2_n11,
         intadd_2_n10, intadd_2_n9, intadd_2_n8, intadd_2_n7, intadd_2_n6,
         intadd_2_n5, intadd_2_n4, intadd_2_n3, intadd_2_n2, intadd_2_n1,
         intadd_3_CI, intadd_3_n20, intadd_3_n19, intadd_3_n18, intadd_3_n17,
         intadd_3_n16, intadd_3_n15, intadd_3_n14, intadd_3_n13, intadd_3_n12,
         intadd_3_n11, intadd_3_n10, intadd_3_n9, intadd_3_n8, intadd_3_n7,
         intadd_3_n6, intadd_3_n5, intadd_3_n4, intadd_3_n3, intadd_3_n2,
         intadd_3_n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;

  FA1D0 intadd_1_U23 ( .A(x_mantissa[2]), .B(x_mantissa[3]), .CI(intadd_1_CI), 
        .CO(intadd_1_n22), .S(intadd_1_SUM_0_) );
  FA1D0 intadd_1_U22 ( .A(x_mantissa[3]), .B(x_mantissa[4]), .CI(intadd_1_n22), 
        .CO(intadd_1_n21), .S(intadd_1_SUM_1_) );
  FA1D0 intadd_1_U21 ( .A(x_mantissa[4]), .B(x_mantissa[5]), .CI(intadd_1_n21), 
        .CO(intadd_1_n20), .S(intadd_1_SUM_2_) );
  FA1D0 intadd_1_U20 ( .A(x_mantissa[5]), .B(x_mantissa[6]), .CI(intadd_1_n20), 
        .CO(intadd_1_n19), .S(intadd_1_SUM_3_) );
  FA1D0 intadd_1_U19 ( .A(x_mantissa[6]), .B(x_mantissa[7]), .CI(intadd_1_n19), 
        .CO(intadd_1_n18), .S(intadd_1_SUM_4_) );
  FA1D0 intadd_1_U18 ( .A(x_mantissa[7]), .B(x_mantissa[8]), .CI(intadd_1_n18), 
        .CO(intadd_1_n17), .S(intadd_1_SUM_5_) );
  FA1D0 intadd_1_U17 ( .A(x_mantissa[8]), .B(x_mantissa[9]), .CI(intadd_1_n17), 
        .CO(intadd_1_n16), .S(intadd_1_SUM_6_) );
  FA1D0 intadd_1_U16 ( .A(x_mantissa[9]), .B(x_mantissa[10]), .CI(intadd_1_n16), .CO(intadd_1_n15), .S(intadd_1_SUM_7_) );
  FA1D0 intadd_1_U15 ( .A(x_mantissa[10]), .B(x_mantissa[11]), .CI(
        intadd_1_n15), .CO(intadd_1_n14), .S(intadd_1_SUM_8_) );
  FA1D0 intadd_1_U14 ( .A(x_mantissa[11]), .B(x_mantissa[12]), .CI(
        intadd_1_n14), .CO(intadd_1_n13), .S(intadd_1_SUM_9_) );
  FA1D0 intadd_1_U13 ( .A(x_mantissa[12]), .B(x_mantissa[13]), .CI(
        intadd_1_n13), .CO(intadd_1_n12), .S(intadd_1_SUM_10_) );
  FA1D0 intadd_1_U12 ( .A(x_mantissa[13]), .B(x_mantissa[14]), .CI(
        intadd_1_n12), .CO(intadd_1_n11), .S(intadd_1_SUM_11_) );
  FA1D0 intadd_1_U11 ( .A(x_mantissa[14]), .B(x_mantissa[15]), .CI(
        intadd_1_n11), .CO(intadd_1_n10), .S(intadd_1_SUM_12_) );
  FA1D0 intadd_1_U10 ( .A(x_mantissa[15]), .B(x_mantissa[16]), .CI(
        intadd_1_n10), .CO(intadd_1_n9), .S(intadd_1_SUM_13_) );
  FA1D0 intadd_1_U9 ( .A(x_mantissa[16]), .B(x_mantissa[17]), .CI(intadd_1_n9), 
        .CO(intadd_1_n8), .S(intadd_1_SUM_14_) );
  FA1D0 intadd_1_U8 ( .A(x_mantissa[17]), .B(x_mantissa[18]), .CI(intadd_1_n8), 
        .CO(intadd_1_n7), .S(intadd_1_SUM_15_) );
  FA1D0 intadd_1_U7 ( .A(x_mantissa[18]), .B(x_mantissa[19]), .CI(intadd_1_n7), 
        .CO(intadd_1_n6), .S(intadd_1_SUM_16_) );
  FA1D0 intadd_1_U6 ( .A(x_mantissa[19]), .B(x_mantissa[20]), .CI(intadd_1_n6), 
        .CO(intadd_1_n5), .S(intadd_1_SUM_17_) );
  FA1D0 intadd_1_U5 ( .A(x_mantissa[20]), .B(x_mantissa[21]), .CI(intadd_1_n5), 
        .CO(intadd_1_n4), .S(intadd_1_SUM_18_) );
  FA1D0 intadd_1_U4 ( .A(x_mantissa[22]), .B(x_mantissa[21]), .CI(intadd_1_n4), 
        .CO(intadd_1_n3), .S(intadd_1_SUM_19_) );
  FA1D0 intadd_2_U22 ( .A(intadd_2_A_0_), .B(intadd_2_B_0_), .CI(intadd_2_CI), 
        .CO(intadd_2_n21), .S(intadd_2_SUM_0_) );
  FA1D0 intadd_2_U21 ( .A(intadd_2_A_1_), .B(intadd_2_B_1_), .CI(intadd_2_n21), 
        .CO(intadd_2_n20), .S(intadd_2_SUM_1_) );
  FA1D0 intadd_2_U20 ( .A(intadd_2_A_2_), .B(intadd_2_B_2_), .CI(intadd_2_n20), 
        .CO(intadd_2_n19), .S(intadd_2_SUM_2_) );
  FA1D0 intadd_2_U19 ( .A(intadd_2_A_3_), .B(intadd_2_B_3_), .CI(intadd_2_n19), 
        .CO(intadd_2_n18), .S(intadd_2_SUM_3_) );
  FA1D0 intadd_2_U18 ( .A(intadd_2_A_4_), .B(intadd_2_B_4_), .CI(intadd_2_n18), 
        .CO(intadd_2_n17), .S(intadd_2_SUM_4_) );
  FA1D0 intadd_2_U17 ( .A(intadd_2_A_5_), .B(intadd_2_B_5_), .CI(intadd_2_n17), 
        .CO(intadd_2_n16), .S(intadd_2_SUM_5_) );
  FA1D0 intadd_2_U16 ( .A(intadd_2_A_6_), .B(intadd_2_B_6_), .CI(intadd_2_n16), 
        .CO(intadd_2_n15), .S(intadd_2_SUM_6_) );
  FA1D0 intadd_2_U15 ( .A(intadd_2_A_7_), .B(intadd_2_B_7_), .CI(intadd_2_n15), 
        .CO(intadd_2_n14), .S(intadd_2_SUM_7_) );
  FA1D0 intadd_2_U14 ( .A(intadd_2_A_8_), .B(intadd_2_B_8_), .CI(intadd_2_n14), 
        .CO(intadd_2_n13), .S(intadd_2_SUM_8_) );
  FA1D0 intadd_2_U13 ( .A(intadd_2_A_9_), .B(intadd_2_B_9_), .CI(intadd_2_n13), 
        .CO(intadd_2_n12), .S(intadd_2_SUM_9_) );
  FA1D0 intadd_2_U12 ( .A(intadd_2_A_10_), .B(intadd_2_B_10_), .CI(
        intadd_2_n12), .CO(intadd_2_n11), .S(intadd_2_SUM_10_) );
  FA1D0 intadd_2_U11 ( .A(intadd_2_A_11_), .B(intadd_2_B_11_), .CI(
        intadd_2_n11), .CO(intadd_2_n10), .S(intadd_2_SUM_11_) );
  FA1D0 intadd_2_U10 ( .A(intadd_2_A_12_), .B(intadd_2_B_12_), .CI(
        intadd_2_n10), .CO(intadd_2_n9), .S(intadd_2_SUM_12_) );
  FA1D0 intadd_2_U9 ( .A(intadd_2_A_13_), .B(intadd_2_B_13_), .CI(intadd_2_n9), 
        .CO(intadd_2_n8), .S(intadd_2_SUM_13_) );
  FA1D0 intadd_2_U8 ( .A(intadd_2_A_14_), .B(intadd_2_B_14_), .CI(intadd_2_n8), 
        .CO(intadd_2_n7), .S(intadd_2_SUM_14_) );
  FA1D0 intadd_2_U7 ( .A(intadd_2_A_15_), .B(intadd_2_B_15_), .CI(intadd_2_n7), 
        .CO(intadd_2_n6), .S(intadd_2_SUM_15_) );
  FA1D0 intadd_2_U6 ( .A(intadd_2_A_16_), .B(intadd_2_B_16_), .CI(intadd_2_n6), 
        .CO(intadd_2_n5), .S(intadd_2_SUM_16_) );
  FA1D0 intadd_2_U5 ( .A(intadd_2_A_17_), .B(intadd_2_B_17_), .CI(intadd_2_n5), 
        .CO(intadd_2_n4), .S(intadd_2_SUM_17_) );
  FA1D0 intadd_2_U4 ( .A(intadd_2_A_18_), .B(intadd_2_B_18_), .CI(intadd_2_n4), 
        .CO(intadd_2_n3), .S(intadd_2_SUM_18_) );
  FA1D0 intadd_2_U3 ( .A(intadd_2_A_19_), .B(intadd_2_B_19_), .CI(intadd_2_n3), 
        .CO(intadd_2_n2), .S(intadd_2_SUM_19_) );
  FA1D0 intadd_2_U2 ( .A(intadd_2_A_20_), .B(intadd_2_B_20_), .CI(intadd_2_n2), 
        .CO(intadd_2_n1), .S(intadd_2_SUM_20_) );
  FA1D0 intadd_3_U21 ( .A(y_mantissa[2]), .B(y_mantissa[3]), .CI(intadd_3_CI), 
        .CO(intadd_3_n20), .S(intadd_2_B_1_) );
  FA1D0 intadd_3_U20 ( .A(y_mantissa[3]), .B(y_mantissa[4]), .CI(intadd_3_n20), 
        .CO(intadd_3_n19), .S(intadd_2_B_2_) );
  FA1D0 intadd_3_U19 ( .A(y_mantissa[4]), .B(y_mantissa[5]), .CI(intadd_3_n19), 
        .CO(intadd_3_n18), .S(intadd_2_B_3_) );
  FA1D0 intadd_3_U18 ( .A(y_mantissa[5]), .B(y_mantissa[6]), .CI(intadd_3_n18), 
        .CO(intadd_3_n17), .S(intadd_2_B_4_) );
  FA1D0 intadd_3_U17 ( .A(y_mantissa[6]), .B(y_mantissa[7]), .CI(intadd_3_n17), 
        .CO(intadd_3_n16), .S(intadd_2_B_5_) );
  FA1D0 intadd_3_U16 ( .A(y_mantissa[7]), .B(y_mantissa[8]), .CI(intadd_3_n16), 
        .CO(intadd_3_n15), .S(intadd_2_B_6_) );
  FA1D0 intadd_3_U15 ( .A(y_mantissa[8]), .B(y_mantissa[9]), .CI(intadd_3_n15), 
        .CO(intadd_3_n14), .S(intadd_2_B_7_) );
  FA1D0 intadd_3_U14 ( .A(y_mantissa[9]), .B(y_mantissa[10]), .CI(intadd_3_n14), .CO(intadd_3_n13), .S(intadd_2_B_8_) );
  FA1D0 intadd_3_U13 ( .A(y_mantissa[10]), .B(y_mantissa[11]), .CI(
        intadd_3_n13), .CO(intadd_3_n12), .S(intadd_2_B_9_) );
  FA1D0 intadd_3_U12 ( .A(y_mantissa[11]), .B(y_mantissa[12]), .CI(
        intadd_3_n12), .CO(intadd_3_n11), .S(intadd_2_B_10_) );
  FA1D0 intadd_3_U11 ( .A(y_mantissa[12]), .B(y_mantissa[13]), .CI(
        intadd_3_n11), .CO(intadd_3_n10), .S(intadd_2_B_11_) );
  FA1D0 intadd_3_U10 ( .A(y_mantissa[13]), .B(y_mantissa[14]), .CI(
        intadd_3_n10), .CO(intadd_3_n9), .S(intadd_2_B_12_) );
  FA1D0 intadd_3_U9 ( .A(y_mantissa[14]), .B(y_mantissa[15]), .CI(intadd_3_n9), 
        .CO(intadd_3_n8), .S(intadd_2_B_13_) );
  FA1D0 intadd_3_U8 ( .A(y_mantissa[15]), .B(y_mantissa[16]), .CI(intadd_3_n8), 
        .CO(intadd_3_n7), .S(intadd_2_B_14_) );
  FA1D0 intadd_3_U7 ( .A(y_mantissa[16]), .B(y_mantissa[17]), .CI(intadd_3_n7), 
        .CO(intadd_3_n6), .S(intadd_2_B_15_) );
  FA1D0 intadd_3_U6 ( .A(y_mantissa[17]), .B(y_mantissa[18]), .CI(intadd_3_n6), 
        .CO(intadd_3_n5), .S(intadd_2_B_16_) );
  FA1D0 intadd_3_U5 ( .A(y_mantissa[18]), .B(y_mantissa[19]), .CI(intadd_3_n5), 
        .CO(intadd_3_n4), .S(intadd_2_B_17_) );
  FA1D0 intadd_3_U4 ( .A(y_mantissa[19]), .B(y_mantissa[20]), .CI(intadd_3_n4), 
        .CO(intadd_3_n3), .S(intadd_2_B_18_) );
  FA1D0 intadd_3_U3 ( .A(y_mantissa[21]), .B(y_mantissa[20]), .CI(intadd_3_n3), 
        .CO(intadd_3_n2), .S(intadd_2_B_19_) );
  FA1D0 intadd_3_U2 ( .A(y_mantissa[21]), .B(intadd_1_A_21_), .CI(intadd_3_n2), 
        .CO(intadd_3_n1), .S(intadd_2_B_20_) );
  FA1D0 intadd_1_U3 ( .A(intadd_1_A_20_), .B(intadd_1_B_20_), .CI(intadd_1_n3), 
        .CO(intadd_1_n2), .S(plane_exact[22]) );
  FA1D0 intadd_1_U2 ( .A(intadd_1_A_21_), .B(intadd_1_B_21_), .CI(intadd_1_n2), 
        .CO(plane_exact[24]), .S(plane_exact[23]) );
  INVD0 U3 ( .I(y_mantissa[22]), .ZN(intadd_1_A_21_) );
  INVD0 U4 ( .I(intadd_2_SUM_0_), .ZN(plane_exact[1]) );
  INVD0 U5 ( .I(intadd_2_SUM_1_), .ZN(plane_exact[2]) );
  INVD0 U6 ( .I(intadd_2_SUM_2_), .ZN(plane_exact[3]) );
  INVD0 U7 ( .I(intadd_2_SUM_3_), .ZN(plane_exact[4]) );
  INVD0 U8 ( .I(intadd_2_SUM_4_), .ZN(plane_exact[5]) );
  INVD0 U9 ( .I(intadd_2_SUM_5_), .ZN(plane_exact[6]) );
  INVD0 U10 ( .I(intadd_2_SUM_6_), .ZN(plane_exact[7]) );
  INVD0 U11 ( .I(intadd_2_SUM_7_), .ZN(plane_exact[8]) );
  INVD0 U12 ( .I(intadd_2_SUM_8_), .ZN(plane_exact[9]) );
  INVD0 U13 ( .I(intadd_2_SUM_9_), .ZN(plane_exact[10]) );
  INVD0 U14 ( .I(intadd_2_SUM_10_), .ZN(plane_exact[11]) );
  INVD0 U15 ( .I(intadd_2_SUM_11_), .ZN(plane_exact[12]) );
  INVD0 U16 ( .I(intadd_2_SUM_12_), .ZN(plane_exact[13]) );
  INVD0 U17 ( .I(intadd_2_SUM_13_), .ZN(plane_exact[14]) );
  INVD0 U18 ( .I(intadd_2_SUM_14_), .ZN(plane_exact[15]) );
  INVD0 U19 ( .I(intadd_2_SUM_15_), .ZN(plane_exact[16]) );
  INVD0 U20 ( .I(intadd_2_SUM_16_), .ZN(plane_exact[17]) );
  INVD0 U21 ( .I(intadd_2_SUM_17_), .ZN(plane_exact[18]) );
  INVD0 U22 ( .I(intadd_2_SUM_18_), .ZN(plane_exact[19]) );
  INVD0 U23 ( .I(intadd_2_SUM_19_), .ZN(plane_exact[20]) );
  INVD0 U24 ( .I(intadd_2_SUM_20_), .ZN(plane_exact[21]) );
  INVD0 U25 ( .I(x_mantissa[22]), .ZN(n2) );
  CKND2D0 U26 ( .A1(intadd_3_n1), .A2(n2), .ZN(intadd_1_B_21_) );
  OAI21D0 U27 ( .A1(intadd_3_n1), .A2(n2), .B(intadd_1_B_21_), .ZN(
        intadd_1_B_20_) );
  INVD0 U28 ( .I(intadd_2_n1), .ZN(intadd_1_A_20_) );
  INVD0 U29 ( .I(y_mantissa[1]), .ZN(n4) );
  OAI21D0 U30 ( .A1(y_mantissa[0]), .A2(n4), .B(y_mantissa[2]), .ZN(n3) );
  OAI31D0 U31 ( .A1(y_mantissa[0]), .A2(y_mantissa[2]), .A3(n4), .B(n3), .ZN(
        intadd_2_CI) );
  INVD0 U32 ( .I(intadd_1_SUM_0_), .ZN(intadd_2_A_1_) );
  INVD0 U33 ( .I(intadd_1_SUM_1_), .ZN(intadd_2_A_2_) );
  INVD0 U34 ( .I(intadd_1_SUM_2_), .ZN(intadd_2_A_3_) );
  INVD0 U35 ( .I(intadd_1_SUM_3_), .ZN(intadd_2_A_4_) );
  INVD0 U36 ( .I(intadd_1_SUM_4_), .ZN(intadd_2_A_5_) );
  INVD0 U37 ( .I(intadd_1_SUM_5_), .ZN(intadd_2_A_6_) );
  INVD0 U38 ( .I(intadd_1_SUM_6_), .ZN(intadd_2_A_7_) );
  INVD0 U39 ( .I(intadd_1_SUM_7_), .ZN(intadd_2_A_8_) );
  INVD0 U40 ( .I(intadd_1_SUM_8_), .ZN(intadd_2_A_9_) );
  INVD0 U41 ( .I(intadd_1_SUM_9_), .ZN(intadd_2_A_10_) );
  INVD0 U42 ( .I(intadd_1_SUM_10_), .ZN(intadd_2_A_11_) );
  INVD0 U43 ( .I(intadd_1_SUM_11_), .ZN(intadd_2_A_12_) );
  INVD0 U44 ( .I(intadd_1_SUM_12_), .ZN(intadd_2_A_13_) );
  INVD0 U45 ( .I(intadd_1_SUM_13_), .ZN(intadd_2_A_14_) );
  INVD0 U46 ( .I(intadd_1_SUM_14_), .ZN(intadd_2_A_15_) );
  INVD0 U47 ( .I(intadd_1_SUM_15_), .ZN(intadd_2_A_16_) );
  INVD0 U48 ( .I(intadd_1_SUM_16_), .ZN(intadd_2_A_17_) );
  INVD0 U49 ( .I(intadd_1_SUM_17_), .ZN(intadd_2_A_18_) );
  INVD0 U50 ( .I(intadd_1_SUM_18_), .ZN(intadd_2_A_19_) );
  INVD0 U51 ( .I(intadd_1_SUM_19_), .ZN(intadd_2_A_20_) );
  MUX2ND0 U52 ( .I0(n4), .I1(y_mantissa[1]), .S(y_mantissa[0]), .ZN(n5) );
  INR2D0 U53 ( .A1(n5), .B1(x_mantissa[1]), .ZN(n7) );
  INVD0 U54 ( .I(x_mantissa[2]), .ZN(n9) );
  INVD0 U55 ( .I(x_mantissa[1]), .ZN(n6) );
  OAI22D0 U56 ( .A1(n7), .A2(n9), .B1(n5), .B2(n6), .ZN(intadd_1_CI) );
  OA21D0 U57 ( .A1(y_mantissa[0]), .A2(y_mantissa[2]), .B(y_mantissa[1]), .Z(
        intadd_3_CI) );
  MAOI222D0 U58 ( .A(n5), .B(x_mantissa[1]), .C(x_mantissa[0]), .ZN(
        intadd_2_B_0_) );
  NR2D0 U59 ( .A1(n6), .A2(n5), .ZN(n8) );
  NR2D0 U60 ( .A1(n8), .A2(n7), .ZN(n10) );
  MUX2ND0 U61 ( .I0(x_mantissa[2]), .I1(n9), .S(n10), .ZN(intadd_2_A_0_) );
  INVD0 U62 ( .I(x_mantissa[0]), .ZN(n11) );
  MUX2ND0 U63 ( .I0(x_mantissa[0]), .I1(n11), .S(n10), .ZN(plane_exact[0]) );
endmodule


module oadm_multilevel_opt_FIXED_LEVEL0_FP_STYLE1 ( x, y, level, divide_mode, 
        result );
  input [31:0] x;
  input [31:0] y;
  input [1:0] level;
  output [31:0] result;
  input divide_mode;
  wire   N29, N30, N31, N32, N33, N34, N35, C5_DATA2_0, C5_DATA2_1, C5_DATA2_2,
         C5_DATA2_3, C5_DATA2_4, C5_DATA2_5, C5_DATA2_6,
         DP_OP_42J1_123_2791_n50, DP_OP_42J1_123_2791_n49,
         DP_OP_42J1_123_2791_n27, DP_OP_42J1_123_2791_n26,
         DP_OP_42J1_123_2791_n25, DP_OP_42J1_123_2791_n24,
         DP_OP_42J1_123_2791_n23, DP_OP_42J1_123_2791_n22,
         DP_OP_42J1_123_2791_n21, DP_OP_42J1_123_2791_n20,
         DP_OP_42J1_123_2791_n19, DP_OP_42J1_123_2791_n18,
         DP_OP_42J1_123_2791_n17, DP_OP_42J1_123_2791_n16,
         DP_OP_42J1_123_2791_n15, DP_OP_42J1_123_2791_n14,
         DP_OP_42J1_123_2791_n8, DP_OP_42J1_123_2791_n7,
         DP_OP_42J1_123_2791_n6, DP_OP_42J1_123_2791_n5,
         DP_OP_42J1_123_2791_n4, DP_OP_42J1_123_2791_n3,
         DP_OP_42J1_123_2791_n2, intadd_0_A_21_, intadd_0_A_20_,
         intadd_0_A_19_, intadd_0_A_18_, intadd_0_A_17_, intadd_0_A_16_,
         intadd_0_A_15_, intadd_0_A_14_, intadd_0_A_13_, intadd_0_A_12_,
         intadd_0_A_11_, intadd_0_A_10_, intadd_0_A_9_, intadd_0_A_8_,
         intadd_0_A_7_, intadd_0_A_6_, intadd_0_A_5_, intadd_0_A_4_,
         intadd_0_A_3_, intadd_0_A_2_, intadd_0_A_1_, intadd_0_A_0_,
         intadd_0_B_21_, intadd_0_B_20_, intadd_0_B_19_, intadd_0_B_18_,
         intadd_0_B_17_, intadd_0_B_16_, intadd_0_B_15_, intadd_0_B_14_,
         intadd_0_B_13_, intadd_0_B_12_, intadd_0_B_11_, intadd_0_B_10_,
         intadd_0_B_9_, intadd_0_B_8_, intadd_0_B_7_, intadd_0_B_6_,
         intadd_0_B_5_, intadd_0_B_4_, intadd_0_B_3_, intadd_0_B_2_,
         intadd_0_B_1_, intadd_0_B_0_, intadd_0_CI, intadd_0_SUM_21_,
         intadd_0_SUM_20_, intadd_0_SUM_19_, intadd_0_SUM_18_,
         intadd_0_SUM_17_, intadd_0_SUM_16_, intadd_0_SUM_15_,
         intadd_0_SUM_14_, intadd_0_SUM_13_, intadd_0_SUM_12_,
         intadd_0_SUM_11_, intadd_0_SUM_10_, intadd_0_SUM_9_, intadd_0_SUM_8_,
         intadd_0_SUM_7_, intadd_0_SUM_6_, intadd_0_SUM_5_, intadd_0_SUM_4_,
         intadd_0_SUM_3_, intadd_0_SUM_2_, intadd_0_SUM_1_, intadd_0_SUM_0_,
         intadd_0_n22, intadd_0_n21, intadd_0_n20, intadd_0_n19, intadd_0_n18,
         intadd_0_n17, intadd_0_n16, intadd_0_n15, intadd_0_n14, intadd_0_n13,
         intadd_0_n12, intadd_0_n11, intadd_0_n10, intadd_0_n9, intadd_0_n8,
         intadd_0_n7, intadd_0_n6, intadd_0_n5, intadd_0_n4, intadd_0_n3,
         intadd_0_n2, intadd_0_n1, n26, n27, n28, n290, n300, n310, n320, n330,
         n340, n350, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84;
  wire   [24:0] plane_full;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3;

  oadm_fixed_plane_centered_LEVEL0 fixed_centered_plane_plane ( .x_mantissa({
        1'b0, x[22:0]}), .y_mantissa({1'b0, y[22:0]}), .divide_mode(1'b0), 
        .plane_exact({SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, plane_full}) );
  HA1D0 DP_OP_42J1_123_2791_U22 ( .A(DP_OP_42J1_123_2791_n27), .B(x[23]), .CO(
        DP_OP_42J1_123_2791_n20), .S(N29) );
  FA1D0 DP_OP_42J1_123_2791_U21 ( .A(DP_OP_42J1_123_2791_n26), .B(x[24]), .CI(
        DP_OP_42J1_123_2791_n20), .CO(DP_OP_42J1_123_2791_n19), .S(N30) );
  FA1D0 DP_OP_42J1_123_2791_U20 ( .A(DP_OP_42J1_123_2791_n25), .B(x[25]), .CI(
        DP_OP_42J1_123_2791_n19), .CO(DP_OP_42J1_123_2791_n18), .S(N31) );
  FA1D0 DP_OP_42J1_123_2791_U19 ( .A(DP_OP_42J1_123_2791_n24), .B(x[26]), .CI(
        DP_OP_42J1_123_2791_n18), .CO(DP_OP_42J1_123_2791_n17), .S(N32) );
  FA1D0 DP_OP_42J1_123_2791_U18 ( .A(DP_OP_42J1_123_2791_n23), .B(x[27]), .CI(
        DP_OP_42J1_123_2791_n17), .CO(DP_OP_42J1_123_2791_n16), .S(N33) );
  FA1D0 DP_OP_42J1_123_2791_U17 ( .A(DP_OP_42J1_123_2791_n22), .B(x[28]), .CI(
        DP_OP_42J1_123_2791_n16), .CO(DP_OP_42J1_123_2791_n15), .S(N34) );
  FA1D0 DP_OP_42J1_123_2791_U16 ( .A(DP_OP_42J1_123_2791_n21), .B(x[29]), .CI(
        DP_OP_42J1_123_2791_n15), .CO(DP_OP_42J1_123_2791_n14), .S(N35) );
  FA1D0 DP_OP_42J1_123_2791_U9 ( .A(DP_OP_42J1_123_2791_n50), .B(n84), .CI(N29), .CO(DP_OP_42J1_123_2791_n8), .S(C5_DATA2_0) );
  FA1D0 DP_OP_42J1_123_2791_U8 ( .A(N30), .B(DP_OP_42J1_123_2791_n49), .CI(
        DP_OP_42J1_123_2791_n8), .CO(DP_OP_42J1_123_2791_n7), .S(C5_DATA2_1)
         );
  FA1D0 DP_OP_42J1_123_2791_U7 ( .A(N31), .B(n84), .CI(DP_OP_42J1_123_2791_n7), 
        .CO(DP_OP_42J1_123_2791_n6), .S(C5_DATA2_2) );
  FA1D0 DP_OP_42J1_123_2791_U6 ( .A(N32), .B(n84), .CI(DP_OP_42J1_123_2791_n6), 
        .CO(DP_OP_42J1_123_2791_n5), .S(C5_DATA2_3) );
  FA1D0 DP_OP_42J1_123_2791_U5 ( .A(N33), .B(n84), .CI(DP_OP_42J1_123_2791_n5), 
        .CO(DP_OP_42J1_123_2791_n4), .S(C5_DATA2_4) );
  FA1D0 DP_OP_42J1_123_2791_U4 ( .A(N34), .B(n84), .CI(DP_OP_42J1_123_2791_n4), 
        .CO(DP_OP_42J1_123_2791_n3), .S(C5_DATA2_5) );
  FA1D0 DP_OP_42J1_123_2791_U3 ( .A(N35), .B(n84), .CI(DP_OP_42J1_123_2791_n3), 
        .CO(DP_OP_42J1_123_2791_n2), .S(C5_DATA2_6) );
  FA1D0 intadd_0_U23 ( .A(intadd_0_A_0_), .B(intadd_0_B_0_), .CI(intadd_0_CI), 
        .CO(intadd_0_n22), .S(intadd_0_SUM_0_) );
  FA1D0 intadd_0_U22 ( .A(intadd_0_A_1_), .B(intadd_0_B_1_), .CI(intadd_0_n22), 
        .CO(intadd_0_n21), .S(intadd_0_SUM_1_) );
  FA1D0 intadd_0_U21 ( .A(intadd_0_A_2_), .B(intadd_0_B_2_), .CI(intadd_0_n21), 
        .CO(intadd_0_n20), .S(intadd_0_SUM_2_) );
  FA1D0 intadd_0_U20 ( .A(intadd_0_A_3_), .B(intadd_0_B_3_), .CI(intadd_0_n20), 
        .CO(intadd_0_n19), .S(intadd_0_SUM_3_) );
  FA1D0 intadd_0_U19 ( .A(intadd_0_A_4_), .B(intadd_0_B_4_), .CI(intadd_0_n19), 
        .CO(intadd_0_n18), .S(intadd_0_SUM_4_) );
  FA1D0 intadd_0_U18 ( .A(intadd_0_A_5_), .B(intadd_0_B_5_), .CI(intadd_0_n18), 
        .CO(intadd_0_n17), .S(intadd_0_SUM_5_) );
  FA1D0 intadd_0_U17 ( .A(intadd_0_A_6_), .B(intadd_0_B_6_), .CI(intadd_0_n17), 
        .CO(intadd_0_n16), .S(intadd_0_SUM_6_) );
  FA1D0 intadd_0_U16 ( .A(intadd_0_A_7_), .B(intadd_0_B_7_), .CI(intadd_0_n16), 
        .CO(intadd_0_n15), .S(intadd_0_SUM_7_) );
  FA1D0 intadd_0_U15 ( .A(intadd_0_A_8_), .B(intadd_0_B_8_), .CI(intadd_0_n15), 
        .CO(intadd_0_n14), .S(intadd_0_SUM_8_) );
  FA1D0 intadd_0_U14 ( .A(intadd_0_A_9_), .B(intadd_0_B_9_), .CI(intadd_0_n14), 
        .CO(intadd_0_n13), .S(intadd_0_SUM_9_) );
  FA1D0 intadd_0_U13 ( .A(intadd_0_A_10_), .B(intadd_0_B_10_), .CI(
        intadd_0_n13), .CO(intadd_0_n12), .S(intadd_0_SUM_10_) );
  FA1D0 intadd_0_U12 ( .A(intadd_0_A_11_), .B(intadd_0_B_11_), .CI(
        intadd_0_n12), .CO(intadd_0_n11), .S(intadd_0_SUM_11_) );
  FA1D0 intadd_0_U11 ( .A(intadd_0_A_12_), .B(intadd_0_B_12_), .CI(
        intadd_0_n11), .CO(intadd_0_n10), .S(intadd_0_SUM_12_) );
  FA1D0 intadd_0_U10 ( .A(intadd_0_A_13_), .B(intadd_0_B_13_), .CI(
        intadd_0_n10), .CO(intadd_0_n9), .S(intadd_0_SUM_13_) );
  FA1D0 intadd_0_U9 ( .A(intadd_0_A_14_), .B(intadd_0_B_14_), .CI(intadd_0_n9), 
        .CO(intadd_0_n8), .S(intadd_0_SUM_14_) );
  FA1D0 intadd_0_U8 ( .A(intadd_0_A_15_), .B(intadd_0_B_15_), .CI(intadd_0_n8), 
        .CO(intadd_0_n7), .S(intadd_0_SUM_15_) );
  FA1D0 intadd_0_U7 ( .A(intadd_0_A_16_), .B(intadd_0_B_16_), .CI(intadd_0_n7), 
        .CO(intadd_0_n6), .S(intadd_0_SUM_16_) );
  FA1D0 intadd_0_U6 ( .A(intadd_0_A_17_), .B(intadd_0_B_17_), .CI(intadd_0_n6), 
        .CO(intadd_0_n5), .S(intadd_0_SUM_17_) );
  FA1D0 intadd_0_U5 ( .A(intadd_0_A_18_), .B(intadd_0_B_18_), .CI(intadd_0_n5), 
        .CO(intadd_0_n4), .S(intadd_0_SUM_18_) );
  FA1D0 intadd_0_U4 ( .A(intadd_0_A_19_), .B(intadd_0_B_19_), .CI(intadd_0_n4), 
        .CO(intadd_0_n3), .S(intadd_0_SUM_19_) );
  FA1D0 intadd_0_U3 ( .A(intadd_0_A_20_), .B(intadd_0_B_20_), .CI(intadd_0_n3), 
        .CO(intadd_0_n2), .S(intadd_0_SUM_20_) );
  FA1D0 intadd_0_U2 ( .A(intadd_0_A_21_), .B(intadd_0_B_21_), .CI(intadd_0_n2), 
        .CO(intadd_0_n1), .S(intadd_0_SUM_21_) );
  INVD0 U4 ( .I(plane_full[24]), .ZN(n49) );
  CKND2D0 U5 ( .A1(plane_full[22]), .A2(n49), .ZN(n42) );
  IND2D0 U6 ( .A1(intadd_0_n1), .B1(n42), .ZN(n26) );
  NR2D0 U7 ( .A1(plane_full[24]), .A2(n26), .ZN(n27) );
  IND2D0 U8 ( .A1(plane_full[23]), .B1(n27), .ZN(n290) );
  OAI21D0 U9 ( .A1(plane_full[23]), .A2(intadd_0_n1), .B(plane_full[24]), .ZN(
        n28) );
  CKND2D1 U10 ( .A1(n290), .A2(n28), .ZN(n83) );
  MUX2D0 U11 ( .I0(C5_DATA2_0), .I1(N29), .S(n83), .Z(result[23]) );
  MUX2D0 U12 ( .I0(C5_DATA2_1), .I1(N30), .S(n83), .Z(result[24]) );
  MUX2D0 U13 ( .I0(C5_DATA2_2), .I1(N31), .S(n83), .Z(result[25]) );
  MUX2D0 U14 ( .I0(C5_DATA2_3), .I1(N32), .S(n83), .Z(result[26]) );
  MUX2D0 U15 ( .I0(C5_DATA2_4), .I1(N33), .S(n83), .Z(result[27]) );
  MUX2D0 U16 ( .I0(C5_DATA2_5), .I1(N34), .S(n83), .Z(result[28]) );
  MUX2D0 U17 ( .I0(C5_DATA2_6), .I1(N35), .S(n83), .Z(result[29]) );
  XOR2D0 U18 ( .A1(y[30]), .A2(x[30]), .Z(n300) );
  XOR2D0 U19 ( .A1(DP_OP_42J1_123_2791_n14), .A2(n300), .Z(n320) );
  INVD0 U20 ( .I(n320), .ZN(n310) );
  XOR2D0 U21 ( .A1(n310), .A2(DP_OP_42J1_123_2791_n2), .Z(n330) );
  MUX2D0 U22 ( .I0(n330), .I1(n320), .S(n83), .Z(result[30]) );
  INVD0 U23 ( .I(n83), .ZN(n84) );
  XNR3D0 U24 ( .A1(plane_full[23]), .A2(n42), .A3(intadd_0_n1), .ZN(n350) );
  CKAN2D0 U25 ( .A1(n350), .A2(n84), .Z(DP_OP_42J1_123_2791_n50) );
  NR2XD0 U26 ( .A1(n350), .A2(n83), .ZN(DP_OP_42J1_123_2791_n49) );
  CKAN2D0 U27 ( .A1(intadd_0_SUM_0_), .A2(n83), .Z(result[0]) );
  NR2D0 U28 ( .A1(n83), .A2(intadd_0_SUM_21_), .ZN(n340) );
  MOAI22D0 U29 ( .A1(n350), .A2(n340), .B1(intadd_0_SUM_20_), .B2(
        DP_OP_42J1_123_2791_n50), .ZN(result[22]) );
  AO222D0 U30 ( .A1(n83), .A2(intadd_0_SUM_4_), .B1(DP_OP_42J1_123_2791_n49), 
        .B2(intadd_0_SUM_3_), .C1(DP_OP_42J1_123_2791_n50), .C2(
        intadd_0_SUM_2_), .Z(result[4]) );
  AO222D0 U31 ( .A1(n83), .A2(intadd_0_SUM_2_), .B1(DP_OP_42J1_123_2791_n49), 
        .B2(intadd_0_SUM_1_), .C1(DP_OP_42J1_123_2791_n50), .C2(
        intadd_0_SUM_0_), .Z(result[2]) );
  AO222D0 U32 ( .A1(n83), .A2(intadd_0_SUM_21_), .B1(DP_OP_42J1_123_2791_n49), 
        .B2(intadd_0_SUM_20_), .C1(intadd_0_SUM_19_), .C2(
        DP_OP_42J1_123_2791_n50), .Z(result[21]) );
  AO222D0 U33 ( .A1(n83), .A2(intadd_0_SUM_3_), .B1(intadd_0_SUM_2_), .B2(
        DP_OP_42J1_123_2791_n49), .C1(intadd_0_SUM_1_), .C2(
        DP_OP_42J1_123_2791_n50), .Z(result[3]) );
  AO222D0 U34 ( .A1(n83), .A2(intadd_0_SUM_19_), .B1(DP_OP_42J1_123_2791_n49), 
        .B2(intadd_0_SUM_18_), .C1(intadd_0_SUM_17_), .C2(
        DP_OP_42J1_123_2791_n50), .Z(result[19]) );
  AO222D0 U35 ( .A1(n83), .A2(intadd_0_SUM_18_), .B1(DP_OP_42J1_123_2791_n49), 
        .B2(intadd_0_SUM_17_), .C1(intadd_0_SUM_16_), .C2(
        DP_OP_42J1_123_2791_n50), .Z(result[18]) );
  AO222D0 U36 ( .A1(n83), .A2(intadd_0_SUM_17_), .B1(DP_OP_42J1_123_2791_n49), 
        .B2(intadd_0_SUM_16_), .C1(intadd_0_SUM_15_), .C2(
        DP_OP_42J1_123_2791_n50), .Z(result[17]) );
  AO222D0 U37 ( .A1(n83), .A2(intadd_0_SUM_16_), .B1(DP_OP_42J1_123_2791_n49), 
        .B2(intadd_0_SUM_15_), .C1(intadd_0_SUM_14_), .C2(
        DP_OP_42J1_123_2791_n50), .Z(result[16]) );
  AO222D0 U38 ( .A1(n83), .A2(intadd_0_SUM_20_), .B1(DP_OP_42J1_123_2791_n49), 
        .B2(intadd_0_SUM_19_), .C1(intadd_0_SUM_18_), .C2(
        DP_OP_42J1_123_2791_n50), .Z(result[20]) );
  AO222D0 U39 ( .A1(n83), .A2(intadd_0_SUM_14_), .B1(DP_OP_42J1_123_2791_n49), 
        .B2(intadd_0_SUM_13_), .C1(intadd_0_SUM_12_), .C2(
        DP_OP_42J1_123_2791_n50), .Z(result[14]) );
  AO222D0 U40 ( .A1(n83), .A2(intadd_0_SUM_15_), .B1(DP_OP_42J1_123_2791_n49), 
        .B2(intadd_0_SUM_14_), .C1(intadd_0_SUM_13_), .C2(
        DP_OP_42J1_123_2791_n50), .Z(result[15]) );
  AO222D0 U41 ( .A1(n83), .A2(intadd_0_SUM_13_), .B1(DP_OP_42J1_123_2791_n49), 
        .B2(intadd_0_SUM_12_), .C1(intadd_0_SUM_11_), .C2(
        DP_OP_42J1_123_2791_n50), .Z(result[13]) );
  AO222D0 U42 ( .A1(n83), .A2(intadd_0_SUM_12_), .B1(DP_OP_42J1_123_2791_n49), 
        .B2(intadd_0_SUM_11_), .C1(intadd_0_SUM_10_), .C2(
        DP_OP_42J1_123_2791_n50), .Z(result[12]) );
  AO222D0 U43 ( .A1(n83), .A2(intadd_0_SUM_11_), .B1(DP_OP_42J1_123_2791_n49), 
        .B2(intadd_0_SUM_10_), .C1(intadd_0_SUM_9_), .C2(
        DP_OP_42J1_123_2791_n50), .Z(result[11]) );
  AO222D0 U44 ( .A1(n83), .A2(intadd_0_SUM_10_), .B1(DP_OP_42J1_123_2791_n49), 
        .B2(intadd_0_SUM_9_), .C1(intadd_0_SUM_8_), .C2(
        DP_OP_42J1_123_2791_n50), .Z(result[10]) );
  AO222D0 U45 ( .A1(n83), .A2(intadd_0_SUM_9_), .B1(DP_OP_42J1_123_2791_n49), 
        .B2(intadd_0_SUM_8_), .C1(intadd_0_SUM_7_), .C2(
        DP_OP_42J1_123_2791_n50), .Z(result[9]) );
  AO222D0 U46 ( .A1(n83), .A2(intadd_0_SUM_8_), .B1(DP_OP_42J1_123_2791_n49), 
        .B2(intadd_0_SUM_7_), .C1(intadd_0_SUM_6_), .C2(
        DP_OP_42J1_123_2791_n50), .Z(result[8]) );
  AO222D0 U47 ( .A1(n83), .A2(intadd_0_SUM_7_), .B1(DP_OP_42J1_123_2791_n49), 
        .B2(intadd_0_SUM_6_), .C1(intadd_0_SUM_5_), .C2(
        DP_OP_42J1_123_2791_n50), .Z(result[7]) );
  AO222D0 U48 ( .A1(n83), .A2(intadd_0_SUM_6_), .B1(DP_OP_42J1_123_2791_n49), 
        .B2(intadd_0_SUM_5_), .C1(intadd_0_SUM_4_), .C2(
        DP_OP_42J1_123_2791_n50), .Z(result[6]) );
  AO222D0 U49 ( .A1(n83), .A2(intadd_0_SUM_5_), .B1(DP_OP_42J1_123_2791_n49), 
        .B2(intadd_0_SUM_4_), .C1(intadd_0_SUM_3_), .C2(
        DP_OP_42J1_123_2791_n50), .Z(result[5]) );
  INVD0 U50 ( .I(plane_full[1]), .ZN(n43) );
  INVD0 U51 ( .I(plane_full[7]), .ZN(n37) );
  INVD0 U52 ( .I(n36), .ZN(intadd_0_CI) );
  FA1D0 U53 ( .A(n43), .B(plane_full[4]), .CI(n37), .CO(n38), .S(n36) );
  INVD0 U54 ( .I(n38), .ZN(intadd_0_B_1_) );
  INVD0 U55 ( .I(plane_full[2]), .ZN(n45) );
  INVD0 U56 ( .I(plane_full[8]), .ZN(n40) );
  INVD0 U57 ( .I(n39), .ZN(intadd_0_A_1_) );
  INVD0 U58 ( .I(plane_full[6]), .ZN(n76) );
  NR2D0 U59 ( .A1(n76), .A2(plane_full[3]), .ZN(intadd_0_A_0_) );
  FA1D0 U60 ( .A(n45), .B(plane_full[5]), .CI(n40), .CO(n41), .S(n39) );
  INVD0 U61 ( .I(n41), .ZN(intadd_0_A_2_) );
  INVD0 U62 ( .I(plane_full[9]), .ZN(n82) );
  MOAI22D0 U63 ( .A1(intadd_0_A_0_), .A2(n82), .B1(plane_full[3]), .B2(n76), 
        .ZN(intadd_0_B_3_) );
  INVD0 U64 ( .I(plane_full[10]), .ZN(n65) );
  CKND2D0 U65 ( .A1(plane_full[7]), .A2(n65), .ZN(n73) );
  NR2D0 U66 ( .A1(n65), .A2(plane_full[7]), .ZN(n72) );
  AO21D0 U67 ( .A1(plane_full[4]), .A2(n73), .B(n72), .Z(intadd_0_B_4_) );
  INVD0 U68 ( .I(plane_full[11]), .ZN(n63) );
  CKND2D0 U69 ( .A1(plane_full[8]), .A2(n63), .ZN(n70) );
  NR2D0 U70 ( .A1(n63), .A2(plane_full[8]), .ZN(n69) );
  AO21D0 U71 ( .A1(plane_full[5]), .A2(n70), .B(n69), .Z(intadd_0_B_5_) );
  INVD0 U72 ( .I(plane_full[12]), .ZN(n61) );
  CKND2D0 U73 ( .A1(plane_full[9]), .A2(n61), .ZN(n67) );
  NR2D0 U74 ( .A1(n61), .A2(plane_full[9]), .ZN(n66) );
  AO21D0 U75 ( .A1(plane_full[6]), .A2(n67), .B(n66), .Z(intadd_0_B_6_) );
  INVD0 U76 ( .I(plane_full[13]), .ZN(n74) );
  OAI21D0 U77 ( .A1(n72), .A2(n74), .B(n73), .ZN(intadd_0_B_7_) );
  INVD0 U78 ( .I(plane_full[14]), .ZN(n71) );
  OAI21D0 U79 ( .A1(n69), .A2(n71), .B(n70), .ZN(intadd_0_B_8_) );
  INVD0 U80 ( .I(plane_full[15]), .ZN(n68) );
  OAI21D0 U81 ( .A1(n66), .A2(n68), .B(n67), .ZN(intadd_0_B_9_) );
  INVD0 U82 ( .I(plane_full[16]), .ZN(n51) );
  CKND2D0 U83 ( .A1(plane_full[13]), .A2(n51), .ZN(n58) );
  NR2D0 U84 ( .A1(n51), .A2(plane_full[13]), .ZN(n57) );
  AO21D0 U85 ( .A1(plane_full[10]), .A2(n58), .B(n57), .Z(intadd_0_B_10_) );
  INVD0 U86 ( .I(plane_full[17]), .ZN(n50) );
  CKND2D0 U87 ( .A1(plane_full[14]), .A2(n50), .ZN(n55) );
  NR2D0 U88 ( .A1(n50), .A2(plane_full[14]), .ZN(n54) );
  AO21D0 U89 ( .A1(plane_full[11]), .A2(n55), .B(n54), .Z(intadd_0_B_11_) );
  INVD0 U90 ( .I(plane_full[19]), .ZN(n59) );
  OAI21D0 U91 ( .A1(n57), .A2(n59), .B(n58), .ZN(intadd_0_B_13_) );
  INVD0 U92 ( .I(plane_full[20]), .ZN(n56) );
  OAI21D0 U93 ( .A1(n54), .A2(n56), .B(n55), .ZN(intadd_0_B_14_) );
  NR2D0 U94 ( .A1(n59), .A2(plane_full[22]), .ZN(intadd_0_B_19_) );
  MOAI22D0 U95 ( .A1(intadd_0_B_19_), .A2(n51), .B1(n59), .B2(plane_full[22]), 
        .ZN(intadd_0_B_16_) );
  NR2D0 U96 ( .A1(n56), .A2(plane_full[23]), .ZN(intadd_0_B_20_) );
  MOAI22D0 U97 ( .A1(intadd_0_B_20_), .A2(n50), .B1(n56), .B2(plane_full[23]), 
        .ZN(intadd_0_B_17_) );
  INVD0 U98 ( .I(plane_full[21]), .ZN(n53) );
  CKND2D0 U99 ( .A1(n49), .A2(n53), .ZN(intadd_0_A_21_) );
  OAI21D0 U100 ( .A1(n53), .A2(n49), .B(intadd_0_A_21_), .ZN(intadd_0_A_20_)
         );
  OA21D0 U101 ( .A1(plane_full[22]), .A2(n49), .B(n42), .Z(intadd_0_B_21_) );
  INVD0 U102 ( .I(y[23]), .ZN(DP_OP_42J1_123_2791_n27) );
  INVD0 U103 ( .I(y[24]), .ZN(DP_OP_42J1_123_2791_n26) );
  INVD0 U104 ( .I(y[25]), .ZN(DP_OP_42J1_123_2791_n25) );
  INVD0 U105 ( .I(y[26]), .ZN(DP_OP_42J1_123_2791_n24) );
  INVD0 U106 ( .I(y[27]), .ZN(DP_OP_42J1_123_2791_n23) );
  INVD0 U107 ( .I(y[28]), .ZN(DP_OP_42J1_123_2791_n22) );
  INVD0 U108 ( .I(y[29]), .ZN(DP_OP_42J1_123_2791_n21) );
  AOI21D0 U109 ( .A1(plane_full[4]), .A2(n43), .B(plane_full[3]), .ZN(n44) );
  INVD0 U110 ( .I(plane_full[4]), .ZN(n80) );
  AOI22D0 U111 ( .A1(plane_full[0]), .A2(n44), .B1(plane_full[1]), .B2(n80), 
        .ZN(n46) );
  MAOI222D0 U112 ( .A(plane_full[5]), .B(n46), .C(n45), .ZN(n48) );
  INVD0 U113 ( .I(plane_full[0]), .ZN(n47) );
  AO21D0 U114 ( .A1(plane_full[3]), .A2(n76), .B(intadd_0_A_0_), .Z(n81) );
  MAOI222D0 U115 ( .A(n48), .B(n47), .C(n81), .ZN(intadd_0_B_0_) );
  INVD0 U116 ( .I(plane_full[18]), .ZN(n52) );
  MAOI222D0 U117 ( .A(plane_full[15]), .B(n52), .C(n61), .ZN(intadd_0_B_12_)
         );
  MAOI222D0 U118 ( .A(plane_full[18]), .B(n53), .C(n68), .ZN(intadd_0_B_15_)
         );
  AOI21D0 U119 ( .A1(plane_full[22]), .A2(n59), .B(intadd_0_B_19_), .ZN(
        intadd_0_B_18_) );
  MAOI222D0 U120 ( .A(plane_full[21]), .B(n49), .C(n52), .ZN(intadd_0_A_18_)
         );
  AOI21D0 U121 ( .A1(plane_full[23]), .A2(n56), .B(intadd_0_B_20_), .ZN(
        intadd_0_A_19_) );
  XOR2D0 U122 ( .A1(y[31]), .A2(x[31]), .Z(result[31]) );
  MUX2ND0 U123 ( .I0(n52), .I1(plane_full[18]), .S(intadd_0_A_20_), .ZN(
        intadd_0_A_17_) );
  MUX2ND0 U124 ( .I0(n50), .I1(plane_full[17]), .S(intadd_0_A_19_), .ZN(
        intadd_0_A_16_) );
  MUX2ND0 U125 ( .I0(n51), .I1(plane_full[16]), .S(intadd_0_B_18_), .ZN(
        intadd_0_A_15_) );
  AOI22D0 U126 ( .A1(plane_full[18]), .A2(n68), .B1(plane_full[15]), .B2(n52), 
        .ZN(n60) );
  MUX2ND0 U127 ( .I0(n53), .I1(plane_full[21]), .S(n60), .ZN(intadd_0_A_14_)
         );
  INR2D0 U128 ( .A1(n55), .B1(n54), .ZN(n62) );
  MUX2ND0 U129 ( .I0(n56), .I1(plane_full[20]), .S(n62), .ZN(intadd_0_A_13_)
         );
  INR2D0 U130 ( .A1(n58), .B1(n57), .ZN(n64) );
  MUX2ND0 U131 ( .I0(n59), .I1(plane_full[19]), .S(n64), .ZN(intadd_0_A_12_)
         );
  MUX2ND0 U132 ( .I0(n61), .I1(plane_full[12]), .S(n60), .ZN(intadd_0_A_11_)
         );
  MUX2ND0 U133 ( .I0(n63), .I1(plane_full[11]), .S(n62), .ZN(intadd_0_A_10_)
         );
  MUX2ND0 U134 ( .I0(n65), .I1(plane_full[10]), .S(n64), .ZN(intadd_0_A_9_) );
  INR2D0 U135 ( .A1(n67), .B1(n66), .ZN(n75) );
  MUX2ND0 U136 ( .I0(n68), .I1(plane_full[15]), .S(n75), .ZN(intadd_0_A_8_) );
  INR2D0 U137 ( .A1(n70), .B1(n69), .ZN(n77) );
  MUX2ND0 U138 ( .I0(n71), .I1(plane_full[14]), .S(n77), .ZN(intadd_0_A_7_) );
  INR2D0 U139 ( .A1(n73), .B1(n72), .ZN(n79) );
  MUX2ND0 U140 ( .I0(n74), .I1(plane_full[13]), .S(n79), .ZN(intadd_0_A_6_) );
  MUX2ND0 U141 ( .I0(n76), .I1(plane_full[6]), .S(n75), .ZN(intadd_0_A_5_) );
  INVD0 U142 ( .I(plane_full[5]), .ZN(n78) );
  MUX2ND0 U143 ( .I0(n78), .I1(plane_full[5]), .S(n77), .ZN(intadd_0_A_4_) );
  MUX2ND0 U144 ( .I0(n80), .I1(plane_full[4]), .S(n79), .ZN(intadd_0_A_3_) );
  MUX2ND0 U145 ( .I0(plane_full[9]), .I1(n82), .S(n81), .ZN(intadd_0_B_2_) );
  AO22D0 U146 ( .A1(intadd_0_SUM_0_), .A2(DP_OP_42J1_123_2791_n49), .B1(
        intadd_0_SUM_1_), .B2(n83), .Z(result[1]) );
endmodule


module oadm_fixed_l0_div_paceio_opt ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   n2, n3;

  oadm_multilevel_opt_FIXED_LEVEL0_FP_STYLE1 impl ( .x(x), .y({y[31:1], n3}), 
        .level({1'b0, 1'b0}), .divide_mode(1'b0), .result(result) );
  INVD0 U6 ( .I(y[0]), .ZN(n2) );
  INVD0 U7 ( .I(n2), .ZN(n3) );
endmodule

