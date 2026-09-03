/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Thu Sep  3 02:47:49 2026
/////////////////////////////////////////////////////////////


module oadm_fixed_l0_mul_canonical ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   intadd_0_A_22_, intadd_0_A_21_, intadd_0_A_20_, intadd_0_A_19_,
         intadd_0_A_18_, intadd_0_A_17_, intadd_0_A_16_, intadd_0_A_15_,
         intadd_0_A_14_, intadd_0_A_13_, intadd_0_A_12_, intadd_0_A_11_,
         intadd_0_A_10_, intadd_0_A_9_, intadd_0_A_8_, intadd_0_A_7_,
         intadd_0_A_6_, intadd_0_A_5_, intadd_0_A_4_, intadd_0_A_3_,
         intadd_0_A_2_, intadd_0_A_1_, intadd_0_B_23_, intadd_0_B_21_,
         intadd_0_B_20_, intadd_0_B_19_, intadd_0_B_18_, intadd_0_B_17_,
         intadd_0_B_16_, intadd_0_B_15_, intadd_0_B_14_, intadd_0_B_13_,
         intadd_0_B_12_, intadd_0_B_11_, intadd_0_B_10_, intadd_0_B_9_,
         intadd_0_B_8_, intadd_0_B_7_, intadd_0_B_6_, intadd_0_B_5_,
         intadd_0_B_4_, intadd_0_B_3_, intadd_0_B_2_, intadd_0_B_1_,
         intadd_0_CI, intadd_0_SUM_23_, intadd_0_SUM_22_, intadd_0_SUM_21_,
         intadd_0_SUM_20_, intadd_0_SUM_19_, intadd_0_SUM_18_,
         intadd_0_SUM_17_, intadd_0_SUM_16_, intadd_0_SUM_15_,
         intadd_0_SUM_14_, intadd_0_SUM_13_, intadd_0_SUM_12_,
         intadd_0_SUM_11_, intadd_0_SUM_10_, intadd_0_SUM_9_, intadd_0_SUM_8_,
         intadd_0_SUM_7_, intadd_0_SUM_6_, intadd_0_SUM_5_, intadd_0_SUM_4_,
         intadd_0_SUM_3_, intadd_0_SUM_2_, intadd_0_SUM_1_, intadd_0_SUM_0_,
         intadd_0_n24, intadd_0_n23, intadd_0_n22, intadd_0_n21, intadd_0_n20,
         intadd_0_n19, intadd_0_n18, intadd_0_n17, intadd_0_n16, intadd_0_n15,
         intadd_0_n14, intadd_0_n13, intadd_0_n12, intadd_0_n11, intadd_0_n10,
         intadd_0_n9, intadd_0_n8, intadd_0_n7, intadd_0_n6, intadd_0_n5,
         intadd_0_n4, intadd_0_n3, intadd_0_n2, intadd_0_n1, intadd_1_A_19_,
         intadd_1_CI, intadd_1_n20, intadd_1_n19, intadd_1_n18, intadd_1_n17,
         intadd_1_n16, intadd_1_n15, intadd_1_n14, intadd_1_n13, intadd_1_n12,
         intadd_1_n11, intadd_1_n10, intadd_1_n9, intadd_1_n8, intadd_1_n7,
         intadd_1_n6, intadd_1_n5, intadd_1_n4, intadd_1_n3, intadd_1_n2,
         intadd_1_n1, intadd_2_CI, intadd_2_n19, intadd_2_n18, intadd_2_n17,
         intadd_2_n16, intadd_2_n15, intadd_2_n14, intadd_2_n13, intadd_2_n12,
         intadd_2_n11, intadd_2_n10, intadd_2_n9, intadd_2_n8, intadd_2_n7,
         intadd_2_n6, intadd_2_n5, intadd_2_n4, intadd_2_n3, intadd_2_n2,
         intadd_2_n1, intadd_3_A_5_, intadd_3_A_4_, intadd_3_A_3_,
         intadd_3_A_2_, intadd_3_A_1_, intadd_3_B_5_, intadd_3_B_4_,
         intadd_3_B_3_, intadd_3_B_2_, intadd_3_B_1_, intadd_3_SUM_0_,
         intadd_3_n6, intadd_3_n5, intadd_3_n4, intadd_3_n3, intadd_3_n2,
         intadd_3_n1, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88;

  FA1D0 intadd_0_U25 ( .A(y[0]), .B(n71), .CI(intadd_0_CI), .CO(intadd_0_n24), 
        .S(intadd_0_SUM_0_) );
  FA1D0 intadd_0_U24 ( .A(intadd_0_A_1_), .B(intadd_0_B_1_), .CI(intadd_0_n24), 
        .CO(intadd_0_n23), .S(intadd_0_SUM_1_) );
  FA1D0 intadd_0_U23 ( .A(intadd_0_A_2_), .B(intadd_0_B_2_), .CI(intadd_0_n23), 
        .CO(intadd_0_n22), .S(intadd_0_SUM_2_) );
  FA1D0 intadd_0_U22 ( .A(intadd_0_A_3_), .B(intadd_0_B_3_), .CI(intadd_0_n22), 
        .CO(intadd_0_n21), .S(intadd_0_SUM_3_) );
  FA1D0 intadd_0_U21 ( .A(intadd_0_A_4_), .B(intadd_0_B_4_), .CI(intadd_0_n21), 
        .CO(intadd_0_n20), .S(intadd_0_SUM_4_) );
  FA1D0 intadd_0_U20 ( .A(intadd_0_A_5_), .B(intadd_0_B_5_), .CI(intadd_0_n20), 
        .CO(intadd_0_n19), .S(intadd_0_SUM_5_) );
  FA1D0 intadd_0_U19 ( .A(intadd_0_A_6_), .B(intadd_0_B_6_), .CI(intadd_0_n19), 
        .CO(intadd_0_n18), .S(intadd_0_SUM_6_) );
  FA1D0 intadd_0_U18 ( .A(intadd_0_A_7_), .B(intadd_0_B_7_), .CI(intadd_0_n18), 
        .CO(intadd_0_n17), .S(intadd_0_SUM_7_) );
  FA1D0 intadd_0_U17 ( .A(intadd_0_A_8_), .B(intadd_0_B_8_), .CI(intadd_0_n17), 
        .CO(intadd_0_n16), .S(intadd_0_SUM_8_) );
  FA1D0 intadd_0_U16 ( .A(intadd_0_A_9_), .B(intadd_0_B_9_), .CI(intadd_0_n16), 
        .CO(intadd_0_n15), .S(intadd_0_SUM_9_) );
  FA1D0 intadd_0_U15 ( .A(intadd_0_A_10_), .B(intadd_0_B_10_), .CI(
        intadd_0_n15), .CO(intadd_0_n14), .S(intadd_0_SUM_10_) );
  FA1D0 intadd_0_U14 ( .A(intadd_0_A_11_), .B(intadd_0_B_11_), .CI(
        intadd_0_n14), .CO(intadd_0_n13), .S(intadd_0_SUM_11_) );
  FA1D0 intadd_0_U13 ( .A(intadd_0_A_12_), .B(intadd_0_B_12_), .CI(
        intadd_0_n13), .CO(intadd_0_n12), .S(intadd_0_SUM_12_) );
  FA1D0 intadd_0_U12 ( .A(intadd_0_A_13_), .B(intadd_0_B_13_), .CI(
        intadd_0_n12), .CO(intadd_0_n11), .S(intadd_0_SUM_13_) );
  FA1D0 intadd_0_U11 ( .A(intadd_0_A_14_), .B(intadd_0_B_14_), .CI(
        intadd_0_n11), .CO(intadd_0_n10), .S(intadd_0_SUM_14_) );
  FA1D0 intadd_0_U10 ( .A(intadd_0_A_15_), .B(intadd_0_B_15_), .CI(
        intadd_0_n10), .CO(intadd_0_n9), .S(intadd_0_SUM_15_) );
  FA1D0 intadd_0_U9 ( .A(intadd_0_A_16_), .B(intadd_0_B_16_), .CI(intadd_0_n9), 
        .CO(intadd_0_n8), .S(intadd_0_SUM_16_) );
  FA1D0 intadd_0_U8 ( .A(intadd_0_A_17_), .B(intadd_0_B_17_), .CI(intadd_0_n8), 
        .CO(intadd_0_n7), .S(intadd_0_SUM_17_) );
  FA1D0 intadd_0_U7 ( .A(intadd_0_A_18_), .B(intadd_0_B_18_), .CI(intadd_0_n7), 
        .CO(intadd_0_n6), .S(intadd_0_SUM_18_) );
  FA1D0 intadd_0_U6 ( .A(intadd_0_A_19_), .B(intadd_0_B_19_), .CI(intadd_0_n6), 
        .CO(intadd_0_n5), .S(intadd_0_SUM_19_) );
  FA1D0 intadd_0_U5 ( .A(intadd_0_A_20_), .B(intadd_0_B_20_), .CI(intadd_0_n5), 
        .CO(intadd_0_n4), .S(intadd_0_SUM_20_) );
  FA1D0 intadd_0_U4 ( .A(intadd_0_A_21_), .B(intadd_0_B_21_), .CI(intadd_0_n4), 
        .CO(intadd_0_n3), .S(intadd_0_SUM_21_) );
  FA1D0 intadd_1_U21 ( .A(x[2]), .B(x[3]), .CI(intadd_1_CI), .CO(intadd_1_n20), 
        .S(intadd_0_A_2_) );
  FA1D0 intadd_1_U20 ( .A(x[3]), .B(x[4]), .CI(intadd_1_n20), .CO(intadd_1_n19), .S(intadd_0_B_3_) );
  FA1D0 intadd_1_U19 ( .A(x[4]), .B(x[5]), .CI(intadd_1_n19), .CO(intadd_1_n18), .S(intadd_0_B_4_) );
  FA1D0 intadd_1_U18 ( .A(x[5]), .B(x[6]), .CI(intadd_1_n18), .CO(intadd_1_n17), .S(intadd_0_B_5_) );
  FA1D0 intadd_1_U17 ( .A(x[6]), .B(x[7]), .CI(intadd_1_n17), .CO(intadd_1_n16), .S(intadd_0_B_6_) );
  FA1D0 intadd_1_U16 ( .A(x[7]), .B(x[8]), .CI(intadd_1_n16), .CO(intadd_1_n15), .S(intadd_0_B_7_) );
  FA1D0 intadd_1_U15 ( .A(x[8]), .B(x[9]), .CI(intadd_1_n15), .CO(intadd_1_n14), .S(intadd_0_B_8_) );
  FA1D0 intadd_1_U14 ( .A(x[9]), .B(x[10]), .CI(intadd_1_n14), .CO(
        intadd_1_n13), .S(intadd_0_B_9_) );
  FA1D0 intadd_1_U13 ( .A(x[10]), .B(x[11]), .CI(intadd_1_n13), .CO(
        intadd_1_n12), .S(intadd_0_B_10_) );
  FA1D0 intadd_1_U12 ( .A(x[11]), .B(x[12]), .CI(intadd_1_n12), .CO(
        intadd_1_n11), .S(intadd_0_B_11_) );
  FA1D0 intadd_1_U11 ( .A(x[12]), .B(x[13]), .CI(intadd_1_n11), .CO(
        intadd_1_n10), .S(intadd_0_B_12_) );
  FA1D0 intadd_1_U10 ( .A(x[13]), .B(x[14]), .CI(intadd_1_n10), .CO(
        intadd_1_n9), .S(intadd_0_B_13_) );
  FA1D0 intadd_1_U9 ( .A(x[14]), .B(x[15]), .CI(intadd_1_n9), .CO(intadd_1_n8), 
        .S(intadd_0_B_14_) );
  FA1D0 intadd_1_U8 ( .A(x[15]), .B(x[16]), .CI(intadd_1_n8), .CO(intadd_1_n7), 
        .S(intadd_0_B_15_) );
  FA1D0 intadd_1_U7 ( .A(x[16]), .B(x[17]), .CI(intadd_1_n7), .CO(intadd_1_n6), 
        .S(intadd_0_B_16_) );
  FA1D0 intadd_1_U6 ( .A(x[17]), .B(x[18]), .CI(intadd_1_n6), .CO(intadd_1_n5), 
        .S(intadd_0_B_17_) );
  FA1D0 intadd_1_U5 ( .A(x[18]), .B(x[19]), .CI(intadd_1_n5), .CO(intadd_1_n4), 
        .S(intadd_0_B_18_) );
  FA1D0 intadd_1_U4 ( .A(x[19]), .B(x[20]), .CI(intadd_1_n4), .CO(intadd_1_n3), 
        .S(intadd_0_B_19_) );
  FA1D0 intadd_1_U3 ( .A(x[21]), .B(x[20]), .CI(intadd_1_n3), .CO(intadd_1_n2), 
        .S(intadd_0_B_20_) );
  FA1D0 intadd_1_U2 ( .A(x[21]), .B(intadd_1_A_19_), .CI(intadd_1_n2), .CO(
        intadd_1_n1), .S(intadd_0_B_21_) );
  FA1D0 intadd_2_U20 ( .A(y[3]), .B(y[4]), .CI(intadd_2_CI), .CO(intadd_2_n19), 
        .S(intadd_0_A_3_) );
  FA1D0 intadd_2_U19 ( .A(y[4]), .B(y[5]), .CI(intadd_2_n19), .CO(intadd_2_n18), .S(intadd_0_A_4_) );
  FA1D0 intadd_2_U18 ( .A(y[5]), .B(y[6]), .CI(intadd_2_n18), .CO(intadd_2_n17), .S(intadd_0_A_5_) );
  FA1D0 intadd_2_U17 ( .A(y[6]), .B(y[7]), .CI(intadd_2_n17), .CO(intadd_2_n16), .S(intadd_0_A_6_) );
  FA1D0 intadd_2_U16 ( .A(y[7]), .B(y[8]), .CI(intadd_2_n16), .CO(intadd_2_n15), .S(intadd_0_A_7_) );
  FA1D0 intadd_2_U15 ( .A(y[8]), .B(y[9]), .CI(intadd_2_n15), .CO(intadd_2_n14), .S(intadd_0_A_8_) );
  FA1D0 intadd_2_U14 ( .A(y[9]), .B(y[10]), .CI(intadd_2_n14), .CO(
        intadd_2_n13), .S(intadd_0_A_9_) );
  FA1D0 intadd_2_U13 ( .A(y[10]), .B(y[11]), .CI(intadd_2_n13), .CO(
        intadd_2_n12), .S(intadd_0_A_10_) );
  FA1D0 intadd_2_U12 ( .A(y[11]), .B(y[12]), .CI(intadd_2_n12), .CO(
        intadd_2_n11), .S(intadd_0_A_11_) );
  FA1D0 intadd_2_U11 ( .A(y[12]), .B(y[13]), .CI(intadd_2_n11), .CO(
        intadd_2_n10), .S(intadd_0_A_12_) );
  FA1D0 intadd_2_U10 ( .A(y[13]), .B(y[14]), .CI(intadd_2_n10), .CO(
        intadd_2_n9), .S(intadd_0_A_13_) );
  FA1D0 intadd_2_U9 ( .A(y[14]), .B(y[15]), .CI(intadd_2_n9), .CO(intadd_2_n8), 
        .S(intadd_0_A_14_) );
  FA1D0 intadd_2_U8 ( .A(y[15]), .B(y[16]), .CI(intadd_2_n8), .CO(intadd_2_n7), 
        .S(intadd_0_A_15_) );
  FA1D0 intadd_2_U7 ( .A(y[16]), .B(y[17]), .CI(intadd_2_n7), .CO(intadd_2_n6), 
        .S(intadd_0_A_16_) );
  FA1D0 intadd_2_U6 ( .A(y[17]), .B(y[18]), .CI(intadd_2_n6), .CO(intadd_2_n5), 
        .S(intadd_0_A_17_) );
  FA1D0 intadd_2_U5 ( .A(y[18]), .B(y[19]), .CI(intadd_2_n5), .CO(intadd_2_n4), 
        .S(intadd_0_A_18_) );
  FA1D0 intadd_2_U4 ( .A(y[19]), .B(y[20]), .CI(intadd_2_n4), .CO(intadd_2_n3), 
        .S(intadd_0_A_19_) );
  FA1D0 intadd_2_U3 ( .A(y[21]), .B(y[20]), .CI(intadd_2_n3), .CO(intadd_2_n2), 
        .S(intadd_0_A_20_) );
  FA1D0 intadd_3_U7 ( .A(x[24]), .B(y[23]), .CI(y[24]), .CO(intadd_3_n6), .S(
        intadd_3_SUM_0_) );
  FA1D0 intadd_3_U6 ( .A(intadd_3_A_1_), .B(intadd_3_B_1_), .CI(intadd_3_n6), 
        .CO(intadd_3_n5), .S(result[25]) );
  FA1D0 intadd_3_U5 ( .A(intadd_3_A_2_), .B(intadd_3_B_2_), .CI(intadd_3_n5), 
        .CO(intadd_3_n4), .S(result[26]) );
  FA1D0 intadd_3_U4 ( .A(intadd_3_A_3_), .B(intadd_3_B_3_), .CI(intadd_3_n4), 
        .CO(intadd_3_n3), .S(result[27]) );
  FA1D0 intadd_3_U3 ( .A(intadd_3_A_4_), .B(intadd_3_B_4_), .CI(intadd_3_n3), 
        .CO(intadd_3_n2), .S(result[28]) );
  FA1D0 intadd_3_U2 ( .A(intadd_3_A_5_), .B(intadd_3_B_5_), .CI(intadd_3_n2), 
        .CO(intadd_3_n1), .S(result[29]) );
  FA1D0 intadd_2_U2 ( .A(y[21]), .B(y[22]), .CI(intadd_2_n2), .CO(intadd_2_n1), 
        .S(intadd_0_A_21_) );
  FA1D0 intadd_0_U3 ( .A(intadd_0_A_22_), .B(intadd_1_n1), .CI(intadd_0_n3), 
        .CO(intadd_0_n2), .S(intadd_0_SUM_22_) );
  FA1D0 intadd_0_U2 ( .A(x[22]), .B(intadd_0_B_23_), .CI(intadd_0_n2), .CO(
        intadd_0_n1), .S(intadd_0_SUM_23_) );
  OR2D0 U77 ( .A1(intadd_0_SUM_23_), .A2(intadd_0_n1), .Z(n86) );
  INVD0 U78 ( .I(n77), .ZN(intadd_3_A_1_) );
  AOI32D0 U79 ( .A1(intadd_0_SUM_20_), .A2(intadd_0_SUM_22_), .A3(n80), .B1(
        intadd_0_n1), .B2(intadd_0_SUM_22_), .ZN(n81) );
  INVD0 U80 ( .I(intadd_0_SUM_23_), .ZN(n80) );
  IOA21D0 U81 ( .A1(intadd_2_n1), .A2(y[22]), .B(intadd_0_B_23_), .ZN(
        intadd_0_A_22_) );
  OR2D1 U82 ( .A1(y[22]), .A2(intadd_2_n1), .Z(intadd_0_B_23_) );
  OAI31D0 U83 ( .A1(n71), .A2(y[3]), .A3(n82), .B(n79), .ZN(intadd_0_B_2_) );
  MAOI22D0 U84 ( .A1(y[2]), .A2(n71), .B1(n71), .B2(y[2]), .ZN(intadd_0_A_1_)
         );
  OAI21D0 U85 ( .A1(n71), .A2(n82), .B(y[3]), .ZN(n79) );
  OAI31D0 U86 ( .A1(x[0]), .A2(x[2]), .A3(n83), .B(n78), .ZN(intadd_0_B_1_) );
  IAO21D0 U87 ( .A1(y[3]), .A2(n71), .B(n82), .ZN(intadd_2_CI) );
  INVD0 U88 ( .I(intadd_3_SUM_0_), .ZN(n75) );
  IAO21D0 U89 ( .A1(x[2]), .A2(x[0]), .B(n83), .ZN(intadd_1_CI) );
  INVD0 U90 ( .I(x[1]), .ZN(n83) );
  BUFFD1 U91 ( .I(y[1]), .Z(n71) );
  INVD0 U92 ( .I(y[2]), .ZN(n82) );
  INVD0 U93 ( .I(x[23]), .ZN(n73) );
  OAI21D0 U94 ( .A1(x[0]), .A2(n83), .B(x[2]), .ZN(n78) );
  INVD0 U95 ( .I(x[22]), .ZN(intadd_1_A_19_) );
  MAOI22D0 U96 ( .A1(intadd_0_n1), .A2(n80), .B1(intadd_0_SUM_22_), .B2(
        intadd_0_n1), .ZN(result[22]) );
  NR2D1 U97 ( .A1(n80), .A2(intadd_0_n1), .ZN(n88) );
  INVD0 U98 ( .I(n72), .ZN(result[23]) );
  INVD1 U99 ( .I(n86), .ZN(n87) );
  AO222D0 U100 ( .A1(intadd_0_n1), .A2(intadd_0_SUM_2_), .B1(intadd_0_SUM_0_), 
        .B2(n87), .C1(n88), .C2(intadd_0_SUM_1_), .Z(result[1]) );
  AO222D0 U101 ( .A1(intadd_0_n1), .A2(intadd_0_SUM_4_), .B1(intadd_0_SUM_2_), 
        .B2(n87), .C1(intadd_0_SUM_3_), .C2(n88), .Z(result[3]) );
  AO222D0 U102 ( .A1(intadd_0_n1), .A2(intadd_0_SUM_21_), .B1(n88), .B2(
        intadd_0_SUM_20_), .C1(intadd_0_SUM_19_), .C2(n87), .Z(result[20]) );
  AO222D0 U103 ( .A1(intadd_0_n1), .A2(intadd_0_SUM_3_), .B1(intadd_0_SUM_2_), 
        .B2(n88), .C1(intadd_0_SUM_1_), .C2(n87), .Z(result[2]) );
  AO222D0 U104 ( .A1(intadd_0_n1), .A2(intadd_0_SUM_20_), .B1(n88), .B2(
        intadd_0_SUM_19_), .C1(intadd_0_SUM_18_), .C2(n87), .Z(result[19]) );
  AO222D0 U105 ( .A1(intadd_0_n1), .A2(intadd_0_SUM_19_), .B1(n88), .B2(
        intadd_0_SUM_18_), .C1(intadd_0_SUM_17_), .C2(n87), .Z(result[18]) );
  AO222D0 U106 ( .A1(intadd_0_n1), .A2(intadd_0_SUM_18_), .B1(n88), .B2(
        intadd_0_SUM_17_), .C1(intadd_0_SUM_16_), .C2(n87), .Z(result[17]) );
  AO222D0 U107 ( .A1(intadd_0_n1), .A2(intadd_0_SUM_17_), .B1(n88), .B2(
        intadd_0_SUM_16_), .C1(intadd_0_SUM_15_), .C2(n87), .Z(result[16]) );
  AO222D0 U108 ( .A1(intadd_0_n1), .A2(intadd_0_SUM_16_), .B1(n88), .B2(
        intadd_0_SUM_15_), .C1(intadd_0_SUM_14_), .C2(n87), .Z(result[15]) );
  AO222D0 U109 ( .A1(intadd_0_n1), .A2(intadd_0_SUM_15_), .B1(n88), .B2(
        intadd_0_SUM_14_), .C1(intadd_0_SUM_13_), .C2(n87), .Z(result[14]) );
  AO222D0 U110 ( .A1(intadd_0_n1), .A2(intadd_0_SUM_9_), .B1(n88), .B2(
        intadd_0_SUM_8_), .C1(intadd_0_SUM_7_), .C2(n87), .Z(result[8]) );
  AO222D0 U111 ( .A1(intadd_0_n1), .A2(intadd_0_SUM_14_), .B1(n88), .B2(
        intadd_0_SUM_13_), .C1(intadd_0_SUM_12_), .C2(n87), .Z(result[13]) );
  AO222D0 U112 ( .A1(intadd_0_n1), .A2(intadd_0_SUM_13_), .B1(n88), .B2(
        intadd_0_SUM_12_), .C1(intadd_0_SUM_11_), .C2(n87), .Z(result[12]) );
  AO222D0 U113 ( .A1(intadd_0_n1), .A2(intadd_0_SUM_12_), .B1(n88), .B2(
        intadd_0_SUM_11_), .C1(intadd_0_SUM_10_), .C2(n87), .Z(result[11]) );
  AO222D0 U114 ( .A1(intadd_0_n1), .A2(intadd_0_SUM_11_), .B1(n88), .B2(
        intadd_0_SUM_10_), .C1(intadd_0_SUM_9_), .C2(n87), .Z(result[10]) );
  AO222D0 U115 ( .A1(intadd_0_n1), .A2(intadd_0_SUM_10_), .B1(n88), .B2(
        intadd_0_SUM_9_), .C1(intadd_0_SUM_8_), .C2(n87), .Z(result[9]) );
  AO222D0 U116 ( .A1(intadd_0_n1), .A2(intadd_0_SUM_8_), .B1(n88), .B2(
        intadd_0_SUM_7_), .C1(intadd_0_SUM_6_), .C2(n87), .Z(result[7]) );
  AO222D0 U117 ( .A1(intadd_0_n1), .A2(intadd_0_SUM_7_), .B1(n88), .B2(
        intadd_0_SUM_6_), .C1(intadd_0_SUM_5_), .C2(n87), .Z(result[6]) );
  AO222D0 U118 ( .A1(intadd_0_n1), .A2(intadd_0_SUM_6_), .B1(n88), .B2(
        intadd_0_SUM_5_), .C1(intadd_0_SUM_4_), .C2(n87), .Z(result[5]) );
  AO222D0 U119 ( .A1(intadd_0_n1), .A2(intadd_0_SUM_5_), .B1(n88), .B2(
        intadd_0_SUM_4_), .C1(intadd_0_SUM_3_), .C2(n87), .Z(result[4]) );
  FA1D0 U120 ( .A(y[23]), .B(n73), .CI(n88), .CO(n76), .S(n72) );
  INVD0 U121 ( .I(n74), .ZN(result[24]) );
  FA1D0 U122 ( .A(n86), .B(n76), .CI(n75), .CO(n77), .S(n74) );
  IOA21D0 U123 ( .A1(intadd_0_SUM_21_), .A2(n88), .B(n81), .ZN(result[21]) );
  MUX2ND0 U124 ( .I0(n83), .I1(x[1]), .S(x[0]), .ZN(intadd_0_CI) );
  FA1D0 U125 ( .A(x[25]), .B(y[25]), .CI(n87), .CO(intadd_3_A_2_), .S(
        intadd_3_B_1_) );
  FA1D0 U126 ( .A(x[26]), .B(y[26]), .CI(n87), .CO(intadd_3_A_3_), .S(
        intadd_3_B_2_) );
  FA1D0 U127 ( .A(x[27]), .B(y[27]), .CI(n87), .CO(intadd_3_A_4_), .S(
        intadd_3_B_3_) );
  FA1D0 U128 ( .A(x[28]), .B(y[28]), .CI(n87), .CO(intadd_3_A_5_), .S(
        intadd_3_B_4_) );
  FA1D0 U129 ( .A(x[29]), .B(y[29]), .CI(n87), .CO(n84), .S(intadd_3_B_5_) );
  XOR4D0 U130 ( .A1(x[30]), .A2(y[30]), .A3(n84), .A4(intadd_3_n1), .Z(n85) );
  MUX2ND0 U131 ( .I0(n87), .I1(n86), .S(n85), .ZN(result[30]) );
  XOR2D0 U132 ( .A1(y[31]), .A2(x[31]), .Z(result[31]) );
  AO22D0 U133 ( .A1(intadd_0_n1), .A2(intadd_0_SUM_1_), .B1(intadd_0_SUM_0_), 
        .B2(n88), .Z(result[0]) );
endmodule

