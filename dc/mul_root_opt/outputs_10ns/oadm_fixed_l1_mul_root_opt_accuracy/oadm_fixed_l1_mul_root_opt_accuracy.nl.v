/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Thu Sep  3 02:47:00 2026
/////////////////////////////////////////////////////////////


module oadm_fixed_l1_mul_root_opt_accuracy ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   intadd_0_A_15_, intadd_0_A_14_, intadd_0_A_13_, intadd_0_A_12_,
         intadd_0_A_11_, intadd_0_A_10_, intadd_0_A_9_, intadd_0_A_8_,
         intadd_0_A_7_, intadd_0_A_6_, intadd_0_A_5_, intadd_0_A_4_,
         intadd_0_A_3_, intadd_0_A_2_, intadd_0_A_1_, intadd_0_B_15_,
         intadd_0_B_14_, intadd_0_B_13_, intadd_0_B_12_, intadd_0_B_11_,
         intadd_0_B_10_, intadd_0_B_9_, intadd_0_B_8_, intadd_0_B_7_,
         intadd_0_B_6_, intadd_0_B_5_, intadd_0_B_4_, intadd_0_B_3_,
         intadd_0_B_2_, intadd_0_B_1_, intadd_0_CI, intadd_0_SUM_15_,
         intadd_0_SUM_14_, intadd_0_SUM_13_, intadd_0_SUM_12_,
         intadd_0_SUM_11_, intadd_0_SUM_10_, intadd_0_SUM_9_, intadd_0_SUM_8_,
         intadd_0_SUM_7_, intadd_0_SUM_6_, intadd_0_SUM_5_, intadd_0_SUM_4_,
         intadd_0_SUM_3_, intadd_0_SUM_2_, intadd_0_SUM_1_, intadd_0_SUM_0_,
         intadd_0_n16, intadd_0_n15, intadd_0_n14, intadd_0_n13, intadd_0_n12,
         intadd_0_n11, intadd_0_n10, intadd_0_n9, intadd_0_n8, intadd_0_n7,
         intadd_0_n6, intadd_0_n5, intadd_0_n4, intadd_0_n3, intadd_0_n2,
         intadd_0_n1, intadd_1_A_8_, intadd_1_A_7_, intadd_1_A_6_,
         intadd_1_A_5_, intadd_1_A_4_, intadd_1_A_3_, intadd_1_A_2_,
         intadd_1_A_1_, intadd_1_A_0_, intadd_1_B_9_, intadd_1_B_8_,
         intadd_1_B_7_, intadd_1_B_6_, intadd_1_B_5_, intadd_1_B_4_,
         intadd_1_B_3_, intadd_1_B_2_, intadd_1_B_1_, intadd_1_B_0_,
         intadd_1_CI, intadd_1_SUM_9_, intadd_1_SUM_8_, intadd_1_SUM_7_,
         intadd_1_SUM_6_, intadd_1_SUM_5_, intadd_1_SUM_4_, intadd_1_SUM_3_,
         intadd_1_SUM_2_, intadd_1_SUM_1_, intadd_1_SUM_0_, intadd_1_n10,
         intadd_1_n9, intadd_1_n8, intadd_1_n7, intadd_1_n6, intadd_1_n5,
         intadd_1_n4, intadd_1_n3, intadd_1_n2, intadd_1_n1, intadd_2_A_8_,
         intadd_2_A_7_, intadd_2_A_6_, intadd_2_A_5_, intadd_2_A_4_,
         intadd_2_A_3_, intadd_2_A_2_, intadd_2_A_1_, intadd_2_A_0_,
         intadd_2_B_9_, intadd_2_B_8_, intadd_2_B_7_, intadd_2_B_6_,
         intadd_2_B_5_, intadd_2_B_4_, intadd_2_B_3_, intadd_2_B_2_,
         intadd_2_B_1_, intadd_2_B_0_, intadd_2_CI, intadd_2_SUM_9_,
         intadd_2_SUM_8_, intadd_2_SUM_7_, intadd_2_SUM_6_, intadd_2_SUM_5_,
         intadd_2_SUM_4_, intadd_2_SUM_3_, intadd_2_SUM_2_, intadd_2_SUM_1_,
         intadd_2_SUM_0_, intadd_2_n10, intadd_2_n9, intadd_2_n8, intadd_2_n7,
         intadd_2_n6, intadd_2_n5, intadd_2_n4, intadd_2_n3, intadd_2_n2,
         intadd_2_n1, intadd_3_A_5_, intadd_3_A_4_, intadd_3_A_3_,
         intadd_3_A_2_, intadd_3_A_1_, intadd_3_B_5_, intadd_3_B_4_,
         intadd_3_B_3_, intadd_3_B_2_, intadd_3_B_1_, intadd_3_SUM_0_,
         intadd_3_n6, intadd_3_n5, intadd_3_n4, intadd_3_n3, intadd_3_n2,
         intadd_3_n1, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95;

  FA1D0 intadd_0_U17 ( .A(x[10]), .B(y[10]), .CI(intadd_0_CI), .CO(
        intadd_0_n16), .S(intadd_0_SUM_0_) );
  FA1D0 intadd_0_U16 ( .A(intadd_0_A_1_), .B(intadd_0_B_1_), .CI(intadd_0_n16), 
        .CO(intadd_0_n15), .S(intadd_0_SUM_1_) );
  FA1D0 intadd_0_U15 ( .A(intadd_0_A_2_), .B(intadd_0_B_2_), .CI(intadd_0_n15), 
        .CO(intadd_0_n14), .S(intadd_0_SUM_2_) );
  FA1D0 intadd_0_U14 ( .A(intadd_0_A_3_), .B(intadd_0_B_3_), .CI(intadd_0_n14), 
        .CO(intadd_0_n13), .S(intadd_0_SUM_3_) );
  FA1D0 intadd_0_U13 ( .A(intadd_0_A_4_), .B(intadd_0_B_4_), .CI(intadd_0_n13), 
        .CO(intadd_0_n12), .S(intadd_0_SUM_4_) );
  FA1D0 intadd_0_U12 ( .A(intadd_0_A_5_), .B(intadd_0_B_5_), .CI(intadd_0_n12), 
        .CO(intadd_0_n11), .S(intadd_0_SUM_5_) );
  FA1D0 intadd_0_U11 ( .A(intadd_0_A_6_), .B(intadd_0_B_6_), .CI(intadd_0_n11), 
        .CO(intadd_0_n10), .S(intadd_0_SUM_6_) );
  FA1D0 intadd_0_U10 ( .A(intadd_0_A_7_), .B(intadd_0_B_7_), .CI(intadd_0_n10), 
        .CO(intadd_0_n9), .S(intadd_0_SUM_7_) );
  FA1D0 intadd_0_U9 ( .A(intadd_0_A_8_), .B(intadd_0_B_8_), .CI(intadd_0_n9), 
        .CO(intadd_0_n8), .S(intadd_0_SUM_8_) );
  FA1D0 intadd_0_U8 ( .A(intadd_0_A_9_), .B(intadd_0_B_9_), .CI(intadd_0_n8), 
        .CO(intadd_0_n7), .S(intadd_0_SUM_9_) );
  FA1D0 intadd_0_U7 ( .A(intadd_0_A_10_), .B(intadd_0_B_10_), .CI(intadd_0_n7), 
        .CO(intadd_0_n6), .S(intadd_0_SUM_10_) );
  FA1D0 intadd_0_U6 ( .A(intadd_0_A_11_), .B(intadd_0_B_11_), .CI(intadd_0_n6), 
        .CO(intadd_0_n5), .S(intadd_0_SUM_11_) );
  FA1D0 intadd_0_U5 ( .A(intadd_0_A_12_), .B(intadd_0_B_12_), .CI(intadd_0_n5), 
        .CO(intadd_0_n4), .S(intadd_0_SUM_12_) );
  FA1D0 intadd_0_U4 ( .A(intadd_0_A_13_), .B(intadd_0_B_13_), .CI(intadd_0_n4), 
        .CO(intadd_0_n3), .S(intadd_0_SUM_13_) );
  FA1D0 intadd_0_U3 ( .A(intadd_0_A_14_), .B(intadd_0_B_14_), .CI(intadd_0_n3), 
        .CO(intadd_0_n2), .S(intadd_0_SUM_14_) );
  FA1D0 intadd_0_U2 ( .A(intadd_0_A_15_), .B(intadd_0_B_15_), .CI(intadd_0_n2), 
        .CO(intadd_0_n1), .S(intadd_0_SUM_15_) );
  FA1D0 intadd_1_U11 ( .A(intadd_1_A_0_), .B(intadd_1_B_0_), .CI(intadd_1_CI), 
        .CO(intadd_1_n10), .S(intadd_1_SUM_0_) );
  FA1D0 intadd_1_U10 ( .A(intadd_1_A_1_), .B(intadd_1_B_1_), .CI(intadd_1_n10), 
        .CO(intadd_1_n9), .S(intadd_1_SUM_1_) );
  FA1D0 intadd_1_U9 ( .A(intadd_1_A_2_), .B(intadd_1_B_2_), .CI(intadd_1_n9), 
        .CO(intadd_1_n8), .S(intadd_1_SUM_2_) );
  FA1D0 intadd_1_U8 ( .A(intadd_1_A_3_), .B(intadd_1_B_3_), .CI(intadd_1_n8), 
        .CO(intadd_1_n7), .S(intadd_1_SUM_3_) );
  FA1D0 intadd_1_U7 ( .A(intadd_1_A_4_), .B(intadd_1_B_4_), .CI(intadd_1_n7), 
        .CO(intadd_1_n6), .S(intadd_1_SUM_4_) );
  FA1D0 intadd_1_U6 ( .A(intadd_1_A_5_), .B(intadd_1_B_5_), .CI(intadd_1_n6), 
        .CO(intadd_1_n5), .S(intadd_1_SUM_5_) );
  FA1D0 intadd_1_U5 ( .A(intadd_1_A_6_), .B(intadd_1_B_6_), .CI(intadd_1_n5), 
        .CO(intadd_1_n4), .S(intadd_1_SUM_6_) );
  FA1D0 intadd_1_U4 ( .A(intadd_1_A_7_), .B(intadd_1_B_7_), .CI(intadd_1_n4), 
        .CO(intadd_1_n3), .S(intadd_1_SUM_7_) );
  FA1D0 intadd_1_U3 ( .A(intadd_1_A_8_), .B(intadd_1_B_8_), .CI(intadd_1_n3), 
        .CO(intadd_1_n2), .S(intadd_1_SUM_8_) );
  FA1D0 intadd_1_U2 ( .A(intadd_1_A_8_), .B(intadd_1_B_9_), .CI(intadd_1_n2), 
        .CO(intadd_1_n1), .S(intadd_1_SUM_9_) );
  FA1D0 intadd_2_U11 ( .A(intadd_2_A_0_), .B(intadd_2_B_0_), .CI(intadd_2_CI), 
        .CO(intadd_2_n10), .S(intadd_2_SUM_0_) );
  FA1D0 intadd_2_U10 ( .A(intadd_2_A_1_), .B(intadd_2_B_1_), .CI(intadd_2_n10), 
        .CO(intadd_2_n9), .S(intadd_2_SUM_1_) );
  FA1D0 intadd_2_U9 ( .A(intadd_2_A_2_), .B(intadd_2_B_2_), .CI(intadd_2_n9), 
        .CO(intadd_2_n8), .S(intadd_2_SUM_2_) );
  FA1D0 intadd_2_U8 ( .A(intadd_2_A_3_), .B(intadd_2_B_3_), .CI(intadd_2_n8), 
        .CO(intadd_2_n7), .S(intadd_2_SUM_3_) );
  FA1D0 intadd_2_U7 ( .A(intadd_2_A_4_), .B(intadd_2_B_4_), .CI(intadd_2_n7), 
        .CO(intadd_2_n6), .S(intadd_2_SUM_4_) );
  FA1D0 intadd_2_U6 ( .A(intadd_2_A_5_), .B(intadd_2_B_5_), .CI(intadd_2_n6), 
        .CO(intadd_2_n5), .S(intadd_2_SUM_5_) );
  FA1D0 intadd_2_U5 ( .A(intadd_2_A_6_), .B(intadd_2_B_6_), .CI(intadd_2_n5), 
        .CO(intadd_2_n4), .S(intadd_2_SUM_6_) );
  FA1D0 intadd_2_U4 ( .A(intadd_2_A_7_), .B(intadd_2_B_7_), .CI(intadd_2_n4), 
        .CO(intadd_2_n3), .S(intadd_2_SUM_7_) );
  FA1D0 intadd_2_U3 ( .A(intadd_2_A_8_), .B(intadd_2_B_8_), .CI(intadd_2_n3), 
        .CO(intadd_2_n2), .S(intadd_2_SUM_8_) );
  FA1D0 intadd_2_U2 ( .A(intadd_2_A_8_), .B(intadd_2_B_9_), .CI(intadd_2_n2), 
        .CO(intadd_2_n1), .S(intadd_2_SUM_9_) );
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
  INVD0 U55 ( .I(n86), .ZN(n85) );
  ND2D0 U56 ( .A1(intadd_2_SUM_8_), .A2(intadd_1_SUM_8_), .ZN(n66) );
  ND2D0 U57 ( .A1(n74), .A2(n65), .ZN(n76) );
  NR2D0 U58 ( .A1(n75), .A2(intadd_1_SUM_1_), .ZN(n74) );
  ND2D0 U59 ( .A1(n63), .A2(n64), .ZN(n75) );
  ND2D0 U60 ( .A1(n58), .A2(n59), .ZN(n63) );
  CKND2D0 U61 ( .A1(n57), .A2(n56), .ZN(intadd_1_CI) );
  CKND2D0 U62 ( .A1(n62), .A2(n61), .ZN(intadd_2_CI) );
  CKND2D1 U63 ( .A1(n85), .A2(n83), .ZN(n54) );
  BUFFD0 U64 ( .I(y[11]), .Z(n43) );
  INVD0 U65 ( .I(n51), .ZN(intadd_3_A_1_) );
  INVD0 U66 ( .I(n92), .ZN(n91) );
  AN2D1 U67 ( .A1(intadd_0_SUM_15_), .A2(n95), .Z(n93) );
  INVD0 U68 ( .I(n94), .ZN(n95) );
  AOI21D0 U69 ( .A1(n78), .A2(n77), .B(intadd_0_B_14_), .ZN(intadd_0_A_13_) );
  INVD0 U70 ( .I(n69), .ZN(intadd_0_B_13_) );
  INVD0 U71 ( .I(n67), .ZN(intadd_0_B_12_) );
  INVD0 U72 ( .I(n66), .ZN(n68) );
  OAI21D0 U73 ( .A1(intadd_2_SUM_8_), .A2(intadd_1_SUM_8_), .B(n66), .ZN(
        intadd_0_A_11_) );
  XOR2D0 U74 ( .A1(intadd_2_n1), .A2(n71), .Z(n78) );
  INVD0 U75 ( .I(intadd_2_SUM_9_), .ZN(intadd_0_A_12_) );
  XOR2D0 U76 ( .A1(intadd_1_n1), .A2(n70), .Z(n77) );
  AOI21D0 U77 ( .A1(intadd_2_SUM_7_), .A2(intadd_1_SUM_7_), .B(intadd_0_B_11_), 
        .ZN(intadd_0_A_10_) );
  AOI21D0 U78 ( .A1(intadd_2_SUM_6_), .A2(intadd_1_SUM_6_), .B(intadd_0_B_10_), 
        .ZN(intadd_0_A_9_) );
  NR2XD0 U79 ( .A1(intadd_1_SUM_7_), .A2(intadd_2_SUM_7_), .ZN(intadd_0_B_11_)
         );
  NR2XD0 U80 ( .A1(intadd_1_SUM_6_), .A2(intadd_2_SUM_6_), .ZN(intadd_0_B_10_)
         );
  AOI21D0 U81 ( .A1(intadd_2_SUM_5_), .A2(intadd_1_SUM_5_), .B(intadd_0_B_9_), 
        .ZN(intadd_0_A_8_) );
  NR2XD0 U82 ( .A1(intadd_1_SUM_5_), .A2(intadd_2_SUM_5_), .ZN(intadd_0_B_9_)
         );
  AOI21D0 U83 ( .A1(intadd_1_SUM_3_), .A2(n76), .B(intadd_0_B_7_), .ZN(
        intadd_0_B_6_) );
  AOI21D0 U84 ( .A1(intadd_2_SUM_4_), .A2(intadd_1_SUM_4_), .B(intadd_0_B_8_), 
        .ZN(intadd_0_A_7_) );
  NR2XD0 U85 ( .A1(intadd_1_SUM_4_), .A2(intadd_2_SUM_4_), .ZN(intadd_0_B_8_)
         );
  OA21D0 U86 ( .A1(n74), .A2(n65), .B(n76), .Z(intadd_0_B_5_) );
  NR2XD0 U87 ( .A1(n76), .A2(intadd_1_SUM_3_), .ZN(intadd_0_B_7_) );
  AOI21D0 U88 ( .A1(intadd_1_SUM_1_), .A2(n75), .B(n74), .ZN(intadd_0_B_4_) );
  INVD0 U89 ( .I(intadd_2_SUM_3_), .ZN(intadd_0_A_6_) );
  OA21D0 U90 ( .A1(n64), .A2(n63), .B(n75), .Z(intadd_0_B_3_) );
  INVD0 U91 ( .I(intadd_2_SUM_2_), .ZN(intadd_0_A_5_) );
  INVD0 U92 ( .I(intadd_1_SUM_2_), .ZN(n65) );
  INVD0 U93 ( .I(intadd_2_SUM_1_), .ZN(intadd_0_A_4_) );
  OAI21D0 U94 ( .A1(n59), .A2(n58), .B(n63), .ZN(intadd_0_B_2_) );
  INVD0 U95 ( .I(intadd_1_SUM_0_), .ZN(n64) );
  INVD0 U96 ( .I(intadd_2_SUM_0_), .ZN(intadd_0_A_3_) );
  OA21D0 U97 ( .A1(n43), .A2(n54), .B(n58), .Z(intadd_0_A_1_) );
  OA21D0 U98 ( .A1(n62), .A2(n61), .B(intadd_2_CI), .Z(intadd_0_A_2_) );
  OAI21D0 U99 ( .A1(n57), .A2(n56), .B(intadd_1_CI), .ZN(n59) );
  OAI21D0 U100 ( .A1(n83), .A2(n85), .B(n54), .ZN(intadd_0_CI) );
  INVD0 U101 ( .I(n54), .ZN(n80) );
  AOI21D0 U102 ( .A1(n43), .A2(n85), .B(n79), .ZN(intadd_1_A_0_) );
  OA21D0 U103 ( .A1(n84), .A2(n88), .B(n87), .Z(intadd_2_A_0_) );
  AOI22D0 U104 ( .A1(n86), .A2(y[17]), .B1(y[18]), .B2(n85), .ZN(intadd_1_A_7_) );
  AOI22D0 U105 ( .A1(n86), .A2(n43), .B1(y[12]), .B2(n85), .ZN(intadd_1_A_1_)
         );
  AOI22D0 U106 ( .A1(n86), .A2(y[14]), .B1(y[15]), .B2(n85), .ZN(intadd_1_A_4_) );
  INVD0 U107 ( .I(n53), .ZN(n79) );
  AOI22D0 U108 ( .A1(n84), .A2(x[12]), .B1(x[13]), .B2(n83), .ZN(intadd_2_A_2_) );
  AOI22D0 U109 ( .A1(n84), .A2(x[17]), .B1(x[18]), .B2(n83), .ZN(intadd_2_A_7_) );
  AOI22D0 U110 ( .A1(n86), .A2(y[12]), .B1(y[13]), .B2(n85), .ZN(intadd_1_A_2_) );
  AOI22D0 U111 ( .A1(n84), .A2(n72), .B1(x[20]), .B2(n83), .ZN(intadd_2_B_7_)
         );
  AOI22D0 U112 ( .A1(n86), .A2(y[15]), .B1(y[16]), .B2(n85), .ZN(intadd_1_A_5_) );
  AOI22D0 U113 ( .A1(n84), .A2(x[16]), .B1(x[17]), .B2(n83), .ZN(intadd_2_A_6_) );
  AOI22D0 U114 ( .A1(n84), .A2(x[13]), .B1(x[14]), .B2(n83), .ZN(intadd_2_A_3_) );
  AOI22D0 U115 ( .A1(n86), .A2(n73), .B1(y[20]), .B2(n85), .ZN(intadd_1_B_7_)
         );
  AOI22D0 U116 ( .A1(n86), .A2(y[18]), .B1(y[19]), .B2(n85), .ZN(intadd_1_B_8_) );
  INVD0 U117 ( .I(n43), .ZN(n52) );
  AOI22D0 U118 ( .A1(n84), .A2(x[19]), .B1(x[20]), .B2(n83), .ZN(intadd_2_B_9_) );
  AOI22D0 U119 ( .A1(n86), .A2(y[19]), .B1(y[20]), .B2(n85), .ZN(intadd_1_B_9_) );
  AOI22D0 U120 ( .A1(n84), .A2(x[14]), .B1(x[15]), .B2(n83), .ZN(intadd_2_A_4_) );
  AOI22D0 U121 ( .A1(n86), .A2(y[16]), .B1(y[17]), .B2(n85), .ZN(intadd_1_A_6_) );
  AOI22D0 U122 ( .A1(n84), .A2(x[15]), .B1(x[16]), .B2(n83), .ZN(intadd_2_A_5_) );
  AOI22D0 U123 ( .A1(n86), .A2(y[13]), .B1(y[14]), .B2(n85), .ZN(intadd_1_A_3_) );
  AOI22D0 U124 ( .A1(n84), .A2(x[18]), .B1(x[19]), .B2(n83), .ZN(intadd_2_B_8_) );
  AOI22D0 U125 ( .A1(n84), .A2(x[21]), .B1(n81), .B2(n83), .ZN(intadd_2_A_8_)
         );
  AOI22D0 U126 ( .A1(n84), .A2(x[11]), .B1(x[12]), .B2(n83), .ZN(intadd_2_A_1_) );
  CKND2D0 U127 ( .A1(n84), .A2(x[10]), .ZN(n87) );
  INVD0 U128 ( .I(intadd_3_SUM_0_), .ZN(n49) );
  BUFFD1 U129 ( .I(x[22]), .Z(n86) );
  INVD0 U130 ( .I(x[21]), .ZN(n81) );
  INVD0 U131 ( .I(x[23]), .ZN(n47) );
  INVD0 U132 ( .I(x[20]), .ZN(n72) );
  INVD0 U133 ( .I(x[11]), .ZN(n88) );
  BUFFD1 U134 ( .I(y[22]), .Z(n84) );
  INVD0 U135 ( .I(y[20]), .ZN(n73) );
  INVD0 U136 ( .I(n42), .ZN(result[6]) );
  INVD0 U137 ( .I(n42), .ZN(result[5]) );
  INVD0 U138 ( .I(n42), .ZN(result[4]) );
  INVD0 U139 ( .I(n42), .ZN(result[0]) );
  INVD0 U140 ( .I(n42), .ZN(result[3]) );
  INVD0 U141 ( .I(n42), .ZN(result[2]) );
  INVD0 U142 ( .I(n42), .ZN(result[1]) );
  TIEH U143 ( .Z(n42) );
  INVD0 U144 ( .I(x[10]), .ZN(n60) );
  AOI22D0 U145 ( .A1(n86), .A2(y[21]), .B1(n82), .B2(n85), .ZN(intadd_1_A_8_)
         );
  INVD0 U146 ( .I(y[21]), .ZN(n82) );
  OAI32D0 U147 ( .A1(y[10]), .A2(n43), .A3(n85), .B1(n86), .B2(n55), .ZN(n57)
         );
  INVD0 U148 ( .I(y[10]), .ZN(n55) );
  CKND2D0 U149 ( .A1(y[10]), .A2(n86), .ZN(n53) );
  INVD1 U150 ( .I(n84), .ZN(n83) );
  XOR3D1 U151 ( .A1(intadd_0_n1), .A2(n44), .A3(n80), .Z(n94) );
  MUX2D0 U152 ( .I0(intadd_0_SUM_14_), .I1(intadd_0_SUM_13_), .S(n93), .Z(
        result[21]) );
  CKAN2D0 U153 ( .A1(intadd_0_SUM_0_), .A2(n94), .Z(result[7]) );
  AOI22D0 U154 ( .A1(n94), .A2(intadd_0_SUM_13_), .B1(n93), .B2(
        intadd_0_SUM_12_), .ZN(n45) );
  NR2D1 U155 ( .A1(intadd_0_SUM_15_), .A2(n94), .ZN(n92) );
  CKND2D0 U156 ( .A1(n45), .A2(n91), .ZN(result[20]) );
  INVD0 U157 ( .I(n46), .ZN(result[23]) );
  AO222D0 U158 ( .A1(n94), .A2(intadd_0_SUM_7_), .B1(n93), .B2(intadd_0_SUM_6_), .C1(intadd_0_SUM_5_), .C2(n92), .Z(result[14]) );
  AO222D0 U159 ( .A1(n94), .A2(intadd_0_SUM_8_), .B1(n93), .B2(intadd_0_SUM_7_), .C1(intadd_0_SUM_6_), .C2(n92), .Z(result[15]) );
  AO222D0 U160 ( .A1(n94), .A2(intadd_0_SUM_9_), .B1(n93), .B2(intadd_0_SUM_8_), .C1(intadd_0_SUM_7_), .C2(n92), .Z(result[16]) );
  AO222D0 U161 ( .A1(n94), .A2(intadd_0_SUM_10_), .B1(n93), .B2(
        intadd_0_SUM_9_), .C1(intadd_0_SUM_8_), .C2(n92), .Z(result[17]) );
  AO222D0 U162 ( .A1(n94), .A2(intadd_0_SUM_11_), .B1(n93), .B2(
        intadd_0_SUM_10_), .C1(intadd_0_SUM_9_), .C2(n92), .Z(result[18]) );
  AO222D0 U163 ( .A1(n94), .A2(intadd_0_SUM_12_), .B1(n93), .B2(
        intadd_0_SUM_11_), .C1(intadd_0_SUM_10_), .C2(n92), .Z(result[19]) );
  AO222D0 U164 ( .A1(n94), .A2(intadd_0_SUM_6_), .B1(n93), .B2(intadd_0_SUM_5_), .C1(intadd_0_SUM_4_), .C2(n92), .Z(result[13]) );
  AO222D0 U165 ( .A1(n94), .A2(intadd_0_SUM_5_), .B1(n93), .B2(intadd_0_SUM_4_), .C1(intadd_0_SUM_3_), .C2(n92), .Z(result[12]) );
  AO222D0 U166 ( .A1(n94), .A2(intadd_0_SUM_2_), .B1(intadd_0_SUM_0_), .B2(n92), .C1(n93), .C2(intadd_0_SUM_1_), .Z(result[9]) );
  AO222D0 U167 ( .A1(n94), .A2(intadd_0_SUM_3_), .B1(intadd_0_SUM_2_), .B2(n93), .C1(intadd_0_SUM_1_), .C2(n92), .Z(result[10]) );
  AO222D0 U168 ( .A1(n94), .A2(intadd_0_SUM_4_), .B1(intadd_0_SUM_2_), .B2(n92), .C1(intadd_0_SUM_3_), .C2(n93), .Z(result[11]) );
  FA1D0 U169 ( .A(y[23]), .B(n47), .CI(n93), .CO(n50), .S(n46) );
  INVD0 U170 ( .I(n48), .ZN(result[24]) );
  FA1D0 U171 ( .A(n91), .B(n50), .CI(n49), .CO(n51), .S(n48) );
  OAI221D0 U172 ( .A1(n79), .A2(n43), .B1(n53), .B2(n52), .C(n54), .ZN(n58) );
  MUX2ND0 U173 ( .I0(n85), .I1(n86), .S(y[12]), .ZN(n56) );
  OAI32D1 U174 ( .A1(x[10]), .A2(x[11]), .A3(n83), .B1(n84), .B2(n60), .ZN(n62) );
  MUX2ND0 U175 ( .I0(n83), .I1(n84), .S(x[12]), .ZN(n61) );
  FA1D0 U176 ( .A(intadd_0_CI), .B(intadd_1_SUM_9_), .CI(n68), .CO(n69), .S(
        n67) );
  AOI221D0 U177 ( .A1(y[21]), .A2(y[20]), .B1(n82), .B2(n73), .C(n85), .ZN(n70) );
  AOI221D0 U178 ( .A1(x[21]), .A2(x[20]), .B1(n81), .B2(n72), .C(n83), .ZN(n71) );
  NR2D1 U179 ( .A1(n77), .A2(n78), .ZN(intadd_0_B_14_) );
  FA1D0 U180 ( .A(n82), .B(n81), .CI(n80), .CO(intadd_0_B_15_), .S(
        intadd_0_A_14_) );
  MUX2ND0 U181 ( .I0(n84), .I1(n83), .S(x[13]), .ZN(intadd_2_B_0_) );
  MUX2ND0 U182 ( .I0(n84), .I1(n83), .S(x[14]), .ZN(intadd_2_B_1_) );
  MUX2ND0 U183 ( .I0(n84), .I1(n83), .S(x[15]), .ZN(intadd_2_B_2_) );
  MUX2ND0 U184 ( .I0(n84), .I1(n83), .S(x[16]), .ZN(intadd_2_B_3_) );
  MUX2ND0 U185 ( .I0(n84), .I1(n83), .S(x[17]), .ZN(intadd_2_B_4_) );
  MUX2ND0 U186 ( .I0(n84), .I1(n83), .S(x[18]), .ZN(intadd_2_B_5_) );
  MUX2ND0 U187 ( .I0(n84), .I1(n83), .S(x[19]), .ZN(intadd_2_B_6_) );
  MUX2ND0 U188 ( .I0(n86), .I1(n85), .S(y[13]), .ZN(intadd_1_B_0_) );
  MUX2ND0 U189 ( .I0(n86), .I1(n85), .S(y[14]), .ZN(intadd_1_B_1_) );
  MUX2ND0 U190 ( .I0(n86), .I1(n85), .S(y[15]), .ZN(intadd_1_B_2_) );
  MUX2ND0 U191 ( .I0(n86), .I1(n85), .S(y[16]), .ZN(intadd_1_B_3_) );
  MUX2ND0 U192 ( .I0(n86), .I1(n85), .S(y[17]), .ZN(intadd_1_B_4_) );
  MUX2ND0 U193 ( .I0(n86), .I1(n85), .S(y[18]), .ZN(intadd_1_B_5_) );
  MUX2ND0 U194 ( .I0(n86), .I1(n85), .S(y[19]), .ZN(intadd_1_B_6_) );
  MUX2ND0 U195 ( .I0(x[11]), .I1(n88), .S(n87), .ZN(intadd_0_B_1_) );
  FA1D0 U196 ( .A(x[21]), .B(y[21]), .CI(intadd_0_CI), .CO(n44), .S(
        intadd_0_A_15_) );
  FA1D0 U197 ( .A(x[25]), .B(y[25]), .CI(n92), .CO(intadd_3_A_2_), .S(
        intadd_3_B_1_) );
  FA1D0 U198 ( .A(x[26]), .B(y[26]), .CI(n92), .CO(intadd_3_A_3_), .S(
        intadd_3_B_2_) );
  FA1D0 U199 ( .A(x[27]), .B(y[27]), .CI(n92), .CO(intadd_3_A_4_), .S(
        intadd_3_B_3_) );
  FA1D0 U200 ( .A(x[28]), .B(y[28]), .CI(n92), .CO(intadd_3_A_5_), .S(
        intadd_3_B_4_) );
  FA1D0 U201 ( .A(x[29]), .B(y[29]), .CI(n92), .CO(n89), .S(intadd_3_B_5_) );
  XOR4D0 U202 ( .A1(x[30]), .A2(y[30]), .A3(n89), .A4(intadd_3_n1), .Z(n90) );
  MUX2ND0 U203 ( .I0(n92), .I1(n91), .S(n90), .ZN(result[30]) );
  XOR2D0 U204 ( .A1(y[31]), .A2(x[31]), .Z(result[31]) );
  AO22D0 U205 ( .A1(n94), .A2(intadd_0_SUM_1_), .B1(intadd_0_SUM_0_), .B2(n93), 
        .Z(result[8]) );
  OA22D0 U206 ( .A1(n95), .A2(intadd_0_SUM_15_), .B1(intadd_0_SUM_14_), .B2(
        n94), .Z(result[22]) );
endmodule

