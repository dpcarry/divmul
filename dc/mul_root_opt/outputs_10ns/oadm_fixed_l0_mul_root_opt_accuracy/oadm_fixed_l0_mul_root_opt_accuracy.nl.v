/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Thu Sep  3 02:38:49 2026
/////////////////////////////////////////////////////////////


module oadm_fixed_l0_mul_root_opt_accuracy ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   intadd_0_A_11_, intadd_0_A_10_, intadd_0_A_9_, intadd_0_A_8_,
         intadd_0_A_7_, intadd_0_A_6_, intadd_0_A_5_, intadd_0_A_4_,
         intadd_0_A_3_, intadd_0_A_2_, intadd_0_A_1_, intadd_0_A_0_,
         intadd_0_B_11_, intadd_0_B_10_, intadd_0_B_9_, intadd_0_B_8_,
         intadd_0_B_7_, intadd_0_B_6_, intadd_0_B_5_, intadd_0_B_4_,
         intadd_0_B_3_, intadd_0_B_2_, intadd_0_B_1_, intadd_0_B_0_,
         intadd_0_CI, intadd_0_SUM_11_, intadd_0_SUM_10_, intadd_0_SUM_9_,
         intadd_0_SUM_8_, intadd_0_SUM_7_, intadd_0_SUM_6_, intadd_0_SUM_5_,
         intadd_0_SUM_4_, intadd_0_SUM_3_, intadd_0_SUM_2_, intadd_0_SUM_1_,
         intadd_0_SUM_0_, intadd_0_n12, intadd_0_n11, intadd_0_n10,
         intadd_0_n9, intadd_0_n8, intadd_0_n7, intadd_0_n6, intadd_0_n5,
         intadd_0_n4, intadd_0_n3, intadd_0_n2, intadd_0_n1, intadd_1_A_7_,
         intadd_1_CI, intadd_1_SUM_7_, intadd_1_SUM_6_, intadd_1_SUM_5_,
         intadd_1_SUM_4_, intadd_1_SUM_3_, intadd_1_SUM_2_, intadd_1_SUM_1_,
         intadd_1_SUM_0_, intadd_1_n8, intadd_1_n7, intadd_1_n6, intadd_1_n5,
         intadd_1_n4, intadd_1_n3, intadd_1_n2, intadd_1_n1, intadd_2_A_7_,
         intadd_2_CI, intadd_2_SUM_7_, intadd_2_SUM_6_, intadd_2_SUM_5_,
         intadd_2_SUM_4_, intadd_2_SUM_3_, intadd_2_SUM_2_, intadd_2_SUM_1_,
         intadd_2_SUM_0_, intadd_2_n8, intadd_2_n7, intadd_2_n6, intadd_2_n5,
         intadd_2_n4, intadd_2_n3, intadd_2_n2, intadd_2_n1, intadd_3_A_5_,
         intadd_3_A_4_, intadd_3_A_3_, intadd_3_A_2_, intadd_3_A_1_,
         intadd_3_B_5_, intadd_3_B_4_, intadd_3_B_3_, intadd_3_B_2_,
         intadd_3_B_1_, intadd_3_SUM_0_, intadd_3_n6, intadd_3_n5, intadd_3_n4,
         intadd_3_n3, intadd_3_n2, intadd_3_n1, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69;

  FA1D0 intadd_0_U13 ( .A(intadd_0_A_0_), .B(intadd_0_B_0_), .CI(intadd_0_CI), 
        .CO(intadd_0_n12), .S(intadd_0_SUM_0_) );
  FA1D0 intadd_0_U12 ( .A(intadd_0_A_1_), .B(intadd_0_B_1_), .CI(intadd_0_n12), 
        .CO(intadd_0_n11), .S(intadd_0_SUM_1_) );
  FA1D0 intadd_0_U11 ( .A(intadd_0_A_2_), .B(intadd_0_B_2_), .CI(intadd_0_n11), 
        .CO(intadd_0_n10), .S(intadd_0_SUM_2_) );
  FA1D0 intadd_0_U10 ( .A(intadd_0_A_3_), .B(intadd_0_B_3_), .CI(intadd_0_n10), 
        .CO(intadd_0_n9), .S(intadd_0_SUM_3_) );
  FA1D0 intadd_0_U9 ( .A(intadd_0_A_4_), .B(intadd_0_B_4_), .CI(intadd_0_n9), 
        .CO(intadd_0_n8), .S(intadd_0_SUM_4_) );
  FA1D0 intadd_0_U8 ( .A(intadd_0_A_5_), .B(intadd_0_B_5_), .CI(intadd_0_n8), 
        .CO(intadd_0_n7), .S(intadd_0_SUM_5_) );
  FA1D0 intadd_0_U7 ( .A(intadd_0_A_6_), .B(intadd_0_B_6_), .CI(intadd_0_n7), 
        .CO(intadd_0_n6), .S(intadd_0_SUM_6_) );
  FA1D0 intadd_0_U6 ( .A(intadd_0_A_7_), .B(intadd_0_B_7_), .CI(intadd_0_n6), 
        .CO(intadd_0_n5), .S(intadd_0_SUM_7_) );
  FA1D0 intadd_0_U5 ( .A(intadd_0_A_8_), .B(intadd_0_B_8_), .CI(intadd_0_n5), 
        .CO(intadd_0_n4), .S(intadd_0_SUM_8_) );
  FA1D0 intadd_0_U4 ( .A(intadd_0_A_9_), .B(intadd_0_B_9_), .CI(intadd_0_n4), 
        .CO(intadd_0_n3), .S(intadd_0_SUM_9_) );
  FA1D0 intadd_0_U3 ( .A(intadd_0_A_10_), .B(intadd_0_B_10_), .CI(intadd_0_n3), 
        .CO(intadd_0_n2), .S(intadd_0_SUM_10_) );
  FA1D0 intadd_0_U2 ( .A(intadd_0_A_11_), .B(intadd_0_B_11_), .CI(intadd_0_n2), 
        .CO(intadd_0_n1), .S(intadd_0_SUM_11_) );
  FA1D0 intadd_1_U9 ( .A(x[14]), .B(x[15]), .CI(intadd_1_CI), .CO(intadd_1_n8), 
        .S(intadd_1_SUM_0_) );
  FA1D0 intadd_1_U8 ( .A(x[15]), .B(x[16]), .CI(intadd_1_n8), .CO(intadd_1_n7), 
        .S(intadd_1_SUM_1_) );
  FA1D0 intadd_1_U7 ( .A(x[16]), .B(x[17]), .CI(intadd_1_n7), .CO(intadd_1_n6), 
        .S(intadd_1_SUM_2_) );
  FA1D0 intadd_1_U6 ( .A(x[17]), .B(x[18]), .CI(intadd_1_n6), .CO(intadd_1_n5), 
        .S(intadd_1_SUM_3_) );
  FA1D0 intadd_1_U5 ( .A(x[18]), .B(x[19]), .CI(intadd_1_n5), .CO(intadd_1_n4), 
        .S(intadd_1_SUM_4_) );
  FA1D0 intadd_1_U4 ( .A(x[19]), .B(x[20]), .CI(intadd_1_n4), .CO(intadd_1_n3), 
        .S(intadd_1_SUM_5_) );
  FA1D0 intadd_1_U3 ( .A(x[21]), .B(x[20]), .CI(intadd_1_n3), .CO(intadd_1_n2), 
        .S(intadd_1_SUM_6_) );
  FA1D0 intadd_1_U2 ( .A(x[21]), .B(intadd_1_A_7_), .CI(intadd_1_n2), .CO(
        intadd_1_n1), .S(intadd_1_SUM_7_) );
  FA1D0 intadd_2_U9 ( .A(y[14]), .B(y[15]), .CI(intadd_2_CI), .CO(intadd_2_n8), 
        .S(intadd_2_SUM_0_) );
  FA1D0 intadd_2_U8 ( .A(y[15]), .B(y[16]), .CI(intadd_2_n8), .CO(intadd_2_n7), 
        .S(intadd_2_SUM_1_) );
  FA1D0 intadd_2_U7 ( .A(y[16]), .B(y[17]), .CI(intadd_2_n7), .CO(intadd_2_n6), 
        .S(intadd_2_SUM_2_) );
  FA1D0 intadd_2_U6 ( .A(y[17]), .B(y[18]), .CI(intadd_2_n6), .CO(intadd_2_n5), 
        .S(intadd_2_SUM_3_) );
  FA1D0 intadd_2_U5 ( .A(y[18]), .B(y[19]), .CI(intadd_2_n5), .CO(intadd_2_n4), 
        .S(intadd_2_SUM_4_) );
  FA1D0 intadd_2_U4 ( .A(y[19]), .B(y[20]), .CI(intadd_2_n4), .CO(intadd_2_n3), 
        .S(intadd_2_SUM_5_) );
  FA1D0 intadd_2_U3 ( .A(y[21]), .B(y[20]), .CI(intadd_2_n3), .CO(intadd_2_n2), 
        .S(intadd_2_SUM_6_) );
  FA1D0 intadd_2_U2 ( .A(y[21]), .B(intadd_2_A_7_), .CI(intadd_2_n2), .CO(
        intadd_2_n1), .S(intadd_2_SUM_7_) );
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
  INVD0 U45 ( .I(n42), .ZN(n56) );
  INVD0 U46 ( .I(n68), .ZN(n69) );
  BUFFD1 U47 ( .I(y[12]), .Z(n40) );
  AOI21D0 U48 ( .A1(intadd_2_SUM_7_), .A2(intadd_1_SUM_7_), .B(intadd_0_B_10_), 
        .ZN(intadd_0_A_9_) );
  AOI21D0 U49 ( .A1(n62), .A2(n61), .B(n60), .ZN(intadd_2_CI) );
  AOI21D0 U50 ( .A1(n63), .A2(n65), .B(n59), .ZN(intadd_1_CI) );
  INVD0 U51 ( .I(y[22]), .ZN(intadd_2_A_7_) );
  INVD0 U52 ( .I(x[22]), .ZN(intadd_1_A_7_) );
  INVD0 U53 ( .I(n39), .ZN(result[3]) );
  INVD0 U54 ( .I(n39), .ZN(result[6]) );
  INVD0 U55 ( .I(n39), .ZN(result[9]) );
  INVD0 U56 ( .I(n39), .ZN(result[5]) );
  INVD0 U57 ( .I(n39), .ZN(result[8]) );
  INVD0 U58 ( .I(n39), .ZN(result[7]) );
  INVD0 U59 ( .I(n39), .ZN(result[2]) );
  INVD0 U60 ( .I(n39), .ZN(result[4]) );
  INVD0 U61 ( .I(n39), .ZN(result[0]) );
  INVD0 U62 ( .I(n39), .ZN(result[1]) );
  TIEH U63 ( .Z(n39) );
  NR2D0 U64 ( .A1(n40), .A2(x[12]), .ZN(intadd_0_B_0_) );
  OAI21D0 U65 ( .A1(intadd_1_A_7_), .A2(intadd_2_A_7_), .B(intadd_0_n1), .ZN(
        n42) );
  AOI21D0 U66 ( .A1(x[12]), .A2(n40), .B(intadd_0_B_0_), .ZN(n58) );
  NR2D0 U67 ( .A1(n56), .A2(n58), .ZN(result[10]) );
  AOI22D0 U68 ( .A1(n56), .A2(intadd_0_SUM_10_), .B1(intadd_0_SUM_11_), .B2(
        n42), .ZN(result[22]) );
  INVD0 U69 ( .I(x[23]), .ZN(n46) );
  NR2D0 U70 ( .A1(n42), .A2(intadd_0_SUM_11_), .ZN(n45) );
  INVD0 U71 ( .I(n41), .ZN(result[23]) );
  INVD0 U72 ( .I(n45), .ZN(n57) );
  OAI22D0 U73 ( .A1(n58), .A2(n57), .B1(n56), .B2(intadd_0_SUM_0_), .ZN(
        result[11]) );
  INVD0 U74 ( .I(intadd_0_SUM_8_), .ZN(n43) );
  AOI21D0 U75 ( .A1(n43), .A2(intadd_0_SUM_11_), .B(n42), .ZN(n44) );
  OAI22D0 U76 ( .A1(intadd_0_SUM_9_), .A2(n57), .B1(intadd_0_SUM_10_), .B2(n44), .ZN(result[21]) );
  CKND2D0 U77 ( .A1(n56), .A2(intadd_0_SUM_11_), .ZN(n68) );
  FA1D0 U78 ( .A(y[23]), .B(n46), .CI(n45), .CO(n49), .S(n41) );
  INVD0 U79 ( .I(intadd_3_SUM_0_), .ZN(n48) );
  INVD0 U80 ( .I(n47), .ZN(result[24]) );
  FA1D0 U81 ( .A(n68), .B(n49), .CI(n48), .CO(n50), .S(n47) );
  INVD0 U82 ( .I(n50), .ZN(intadd_3_A_1_) );
  INVD0 U83 ( .I(x[13]), .ZN(n59) );
  INVD0 U84 ( .I(x[12]), .ZN(n63) );
  AOI22D0 U85 ( .A1(x[12]), .A2(n59), .B1(x[13]), .B2(n63), .ZN(intadd_0_A_0_)
         );
  INVD0 U86 ( .I(y[13]), .ZN(n60) );
  INVD0 U87 ( .I(n40), .ZN(n62) );
  AOI22D0 U88 ( .A1(n40), .A2(y[13]), .B1(n60), .B2(n62), .ZN(intadd_0_CI) );
  INVD0 U89 ( .I(y[14]), .ZN(n61) );
  OAI33D1 U90 ( .A1(n40), .A2(y[14]), .A3(n60), .B1(n62), .B2(n61), .B3(y[13]), 
        .ZN(n52) );
  INVD0 U91 ( .I(n52), .ZN(n51) );
  OAI21D0 U92 ( .A1(intadd_0_CI), .A2(y[14]), .B(n51), .ZN(intadd_0_A_1_) );
  CKND2D0 U93 ( .A1(n52), .A2(intadd_2_SUM_0_), .ZN(n54) );
  OAI21D0 U94 ( .A1(n52), .A2(intadd_2_SUM_0_), .B(n54), .ZN(intadd_0_B_2_) );
  INVD0 U95 ( .I(intadd_1_SUM_0_), .ZN(intadd_0_A_2_) );
  INVD0 U96 ( .I(intadd_2_SUM_1_), .ZN(n53) );
  NR2D0 U97 ( .A1(n53), .A2(n54), .ZN(n55) );
  AO21D0 U98 ( .A1(n54), .A2(n53), .B(n55), .Z(intadd_0_B_3_) );
  INVD0 U99 ( .I(intadd_1_SUM_1_), .ZN(intadd_0_A_3_) );
  CKND2D0 U100 ( .A1(n55), .A2(intadd_2_SUM_2_), .ZN(intadd_0_B_5_) );
  OAI21D0 U101 ( .A1(n55), .A2(intadd_2_SUM_2_), .B(intadd_0_B_5_), .ZN(
        intadd_0_B_4_) );
  INVD0 U102 ( .I(intadd_1_SUM_2_), .ZN(intadd_0_A_4_) );
  CKND2D0 U103 ( .A1(intadd_2_SUM_3_), .A2(intadd_1_SUM_3_), .ZN(intadd_0_B_6_) );
  OAI21D0 U104 ( .A1(intadd_2_SUM_3_), .A2(intadd_1_SUM_3_), .B(intadd_0_B_6_), 
        .ZN(intadd_0_A_5_) );
  CKND2D0 U105 ( .A1(intadd_2_SUM_4_), .A2(intadd_1_SUM_4_), .ZN(intadd_0_B_7_) );
  OAI21D0 U106 ( .A1(intadd_2_SUM_4_), .A2(intadd_1_SUM_4_), .B(intadd_0_B_7_), 
        .ZN(intadd_0_A_6_) );
  CKND2D0 U107 ( .A1(intadd_2_SUM_5_), .A2(intadd_1_SUM_5_), .ZN(intadd_0_B_8_) );
  OAI21D0 U108 ( .A1(intadd_2_SUM_5_), .A2(intadd_1_SUM_5_), .B(intadd_0_B_8_), 
        .ZN(intadd_0_A_7_) );
  CKND2D0 U109 ( .A1(intadd_2_SUM_6_), .A2(intadd_1_SUM_6_), .ZN(intadd_0_B_9_) );
  OAI21D0 U110 ( .A1(intadd_2_SUM_6_), .A2(intadd_1_SUM_6_), .B(intadd_0_B_9_), 
        .ZN(intadd_0_A_8_) );
  NR2D0 U111 ( .A1(intadd_1_SUM_7_), .A2(intadd_2_SUM_7_), .ZN(intadd_0_B_10_)
         );
  CKND2D0 U112 ( .A1(intadd_2_n1), .A2(intadd_1_n1), .ZN(intadd_0_A_11_) );
  OAI21D0 U113 ( .A1(intadd_2_n1), .A2(intadd_1_n1), .B(intadd_0_A_11_), .ZN(
        intadd_0_A_10_) );
  AOI22D0 U114 ( .A1(x[22]), .A2(intadd_2_A_7_), .B1(y[22]), .B2(intadd_1_A_7_), .ZN(intadd_0_B_11_) );
  OAI222D0 U115 ( .A1(n57), .A2(intadd_0_SUM_1_), .B1(n68), .B2(
        intadd_0_SUM_0_), .C1(intadd_0_SUM_2_), .C2(n56), .ZN(result[13]) );
  OAI222D0 U116 ( .A1(n57), .A2(intadd_0_SUM_4_), .B1(n68), .B2(
        intadd_0_SUM_3_), .C1(intadd_0_SUM_5_), .C2(n56), .ZN(result[16]) );
  OAI222D0 U117 ( .A1(n57), .A2(intadd_0_SUM_5_), .B1(n68), .B2(
        intadd_0_SUM_4_), .C1(intadd_0_SUM_6_), .C2(n56), .ZN(result[17]) );
  OAI222D0 U118 ( .A1(n57), .A2(intadd_0_SUM_7_), .B1(n68), .B2(
        intadd_0_SUM_6_), .C1(intadd_0_SUM_8_), .C2(n56), .ZN(result[19]) );
  OAI222D0 U119 ( .A1(n57), .A2(intadd_0_SUM_8_), .B1(n68), .B2(
        intadd_0_SUM_7_), .C1(intadd_0_SUM_9_), .C2(n56), .ZN(result[20]) );
  OAI222D0 U120 ( .A1(n57), .A2(intadd_0_SUM_6_), .B1(n68), .B2(
        intadd_0_SUM_5_), .C1(intadd_0_SUM_7_), .C2(n56), .ZN(result[18]) );
  OAI222D0 U121 ( .A1(n57), .A2(intadd_0_SUM_3_), .B1(n68), .B2(
        intadd_0_SUM_2_), .C1(intadd_0_SUM_4_), .C2(n56), .ZN(result[15]) );
  OAI222D0 U122 ( .A1(n68), .A2(intadd_0_SUM_1_), .B1(n57), .B2(
        intadd_0_SUM_2_), .C1(intadd_0_SUM_3_), .C2(n56), .ZN(result[14]) );
  OAI222D0 U123 ( .A1(n68), .A2(n58), .B1(n57), .B2(intadd_0_SUM_0_), .C1(
        intadd_0_SUM_1_), .C2(n56), .ZN(result[12]) );
  INVD0 U124 ( .I(x[14]), .ZN(n65) );
  CKND2D0 U125 ( .A1(x[13]), .A2(n63), .ZN(n64) );
  MUX2ND0 U126 ( .I0(n65), .I1(x[14]), .S(n64), .ZN(intadd_0_B_1_) );
  FA1D0 U127 ( .A(x[25]), .B(y[25]), .CI(n69), .CO(intadd_3_A_2_), .S(
        intadd_3_B_1_) );
  FA1D0 U128 ( .A(x[26]), .B(y[26]), .CI(n69), .CO(intadd_3_A_3_), .S(
        intadd_3_B_2_) );
  FA1D0 U129 ( .A(x[27]), .B(y[27]), .CI(n69), .CO(intadd_3_A_4_), .S(
        intadd_3_B_3_) );
  FA1D0 U130 ( .A(x[28]), .B(y[28]), .CI(n69), .CO(intadd_3_A_5_), .S(
        intadd_3_B_4_) );
  FA1D0 U131 ( .A(x[29]), .B(y[29]), .CI(n69), .CO(n66), .S(intadd_3_B_5_) );
  XOR4D0 U132 ( .A1(x[30]), .A2(y[30]), .A3(n66), .A4(intadd_3_n1), .Z(n67) );
  MUX2ND0 U133 ( .I0(n69), .I1(n68), .S(n67), .ZN(result[30]) );
  XOR2D0 U134 ( .A1(y[31]), .A2(x[31]), .Z(result[31]) );
endmodule

