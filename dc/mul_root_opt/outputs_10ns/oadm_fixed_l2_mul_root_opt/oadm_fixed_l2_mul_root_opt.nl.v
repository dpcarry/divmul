/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Thu Sep  3 02:48:06 2026
/////////////////////////////////////////////////////////////


module oadm_fixed_l2_mul_root_opt ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   intadd_0_A_14_, intadd_0_A_13_, intadd_0_A_12_, intadd_0_A_11_,
         intadd_0_A_10_, intadd_0_A_9_, intadd_0_A_8_, intadd_0_A_7_,
         intadd_0_A_6_, intadd_0_A_5_, intadd_0_A_4_, intadd_0_A_3_,
         intadd_0_A_2_, intadd_0_A_1_, intadd_0_B_14_, intadd_0_B_13_,
         intadd_0_B_12_, intadd_0_B_11_, intadd_0_B_10_, intadd_0_B_9_,
         intadd_0_B_8_, intadd_0_B_7_, intadd_0_B_6_, intadd_0_B_5_,
         intadd_0_B_4_, intadd_0_B_3_, intadd_0_B_2_, intadd_0_B_1_,
         intadd_0_CI, intadd_0_SUM_14_, intadd_0_SUM_13_, intadd_0_SUM_12_,
         intadd_0_SUM_11_, intadd_0_SUM_10_, intadd_0_SUM_9_, intadd_0_SUM_8_,
         intadd_0_SUM_7_, intadd_0_SUM_6_, intadd_0_SUM_5_, intadd_0_SUM_4_,
         intadd_0_SUM_3_, intadd_0_SUM_2_, intadd_0_SUM_1_, intadd_0_SUM_0_,
         intadd_0_n15, intadd_0_n14, intadd_0_n13, intadd_0_n12, intadd_0_n11,
         intadd_0_n10, intadd_0_n9, intadd_0_n8, intadd_0_n7, intadd_0_n6,
         intadd_0_n5, intadd_0_n4, intadd_0_n3, intadd_0_n2, intadd_0_n1,
         intadd_1_A_5_, intadd_1_A_4_, intadd_1_A_3_, intadd_1_A_2_,
         intadd_1_A_1_, intadd_1_B_5_, intadd_1_B_4_, intadd_1_B_3_,
         intadd_1_B_2_, intadd_1_B_1_, intadd_1_SUM_0_, intadd_1_n6,
         intadd_1_n5, intadd_1_n4, intadd_1_n3, intadd_1_n2, intadd_1_n1,
         intadd_2_A_5_, intadd_2_A_4_, intadd_2_A_3_, intadd_2_A_2_,
         intadd_2_A_1_, intadd_2_A_0_, intadd_2_B_5_, intadd_2_B_4_,
         intadd_2_B_3_, intadd_2_B_2_, intadd_2_B_1_, intadd_2_B_0_,
         intadd_2_CI, intadd_2_SUM_5_, intadd_2_SUM_4_, intadd_2_SUM_3_,
         intadd_2_SUM_2_, intadd_2_SUM_1_, intadd_2_SUM_0_, intadd_2_n6,
         intadd_2_n5, intadd_2_n4, intadd_2_n3, intadd_2_n2, intadd_2_n1,
         intadd_3_A_5_, intadd_3_A_4_, intadd_3_A_3_, intadd_3_A_2_,
         intadd_3_A_1_, intadd_3_A_0_, intadd_3_B_5_, intadd_3_B_4_,
         intadd_3_B_3_, intadd_3_B_2_, intadd_3_B_1_, intadd_3_B_0_,
         intadd_3_CI, intadd_3_SUM_5_, intadd_3_SUM_4_, intadd_3_SUM_3_,
         intadd_3_SUM_2_, intadd_3_SUM_1_, intadd_3_SUM_0_, intadd_3_n6,
         intadd_3_n5, intadd_3_n4, intadd_3_n3, intadd_3_n2, intadd_3_n1,
         intadd_4_A_3_, intadd_4_A_2_, intadd_4_A_1_, intadd_4_B_3_,
         intadd_4_B_2_, intadd_4_B_1_, intadd_4_B_0_, intadd_4_CI,
         intadd_4_SUM_3_, intadd_4_SUM_2_, intadd_4_SUM_1_, intadd_4_SUM_0_,
         intadd_4_n4, intadd_4_n3, intadd_4_n2, intadd_4_n1, intadd_5_A_3_,
         intadd_5_A_2_, intadd_5_A_1_, intadd_5_B_3_, intadd_5_B_2_,
         intadd_5_B_1_, intadd_5_B_0_, intadd_5_CI, intadd_5_SUM_3_,
         intadd_5_SUM_2_, intadd_5_SUM_0_, intadd_5_n4, intadd_5_n3,
         intadd_5_n2, intadd_5_n1, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182;

  FA1D0 intadd_0_U16 ( .A(x[12]), .B(y[12]), .CI(intadd_0_CI), .CO(
        intadd_0_n15), .S(intadd_0_SUM_0_) );
  FA1D0 intadd_0_U15 ( .A(intadd_0_A_1_), .B(intadd_0_B_1_), .CI(intadd_0_n15), 
        .CO(intadd_0_n14), .S(intadd_0_SUM_1_) );
  FA1D0 intadd_0_U14 ( .A(intadd_0_A_2_), .B(intadd_0_B_2_), .CI(intadd_0_n14), 
        .CO(intadd_0_n13), .S(intadd_0_SUM_2_) );
  FA1D0 intadd_0_U13 ( .A(intadd_0_A_3_), .B(intadd_0_B_3_), .CI(intadd_0_n13), 
        .CO(intadd_0_n12), .S(intadd_0_SUM_3_) );
  FA1D0 intadd_0_U12 ( .A(intadd_0_A_4_), .B(intadd_0_B_4_), .CI(intadd_0_n12), 
        .CO(intadd_0_n11), .S(intadd_0_SUM_4_) );
  FA1D0 intadd_0_U11 ( .A(intadd_0_A_5_), .B(intadd_0_B_5_), .CI(intadd_0_n11), 
        .CO(intadd_0_n10), .S(intadd_0_SUM_5_) );
  FA1D0 intadd_0_U10 ( .A(intadd_0_A_6_), .B(intadd_0_B_6_), .CI(intadd_0_n10), 
        .CO(intadd_0_n9), .S(intadd_0_SUM_6_) );
  FA1D0 intadd_0_U9 ( .A(intadd_0_A_7_), .B(intadd_0_B_7_), .CI(intadd_0_n9), 
        .CO(intadd_0_n8), .S(intadd_0_SUM_7_) );
  FA1D0 intadd_0_U8 ( .A(intadd_0_A_8_), .B(intadd_0_B_8_), .CI(intadd_0_n8), 
        .CO(intadd_0_n7), .S(intadd_0_SUM_8_) );
  FA1D0 intadd_0_U7 ( .A(intadd_0_A_9_), .B(intadd_0_B_9_), .CI(intadd_0_n7), 
        .CO(intadd_0_n6), .S(intadd_0_SUM_9_) );
  FA1D0 intadd_0_U6 ( .A(intadd_0_A_10_), .B(intadd_0_B_10_), .CI(intadd_0_n6), 
        .CO(intadd_0_n5), .S(intadd_0_SUM_10_) );
  FA1D0 intadd_0_U5 ( .A(intadd_0_A_11_), .B(intadd_0_B_11_), .CI(intadd_0_n5), 
        .CO(intadd_0_n4), .S(intadd_0_SUM_11_) );
  FA1D0 intadd_0_U4 ( .A(intadd_0_A_12_), .B(intadd_0_B_12_), .CI(intadd_0_n4), 
        .CO(intadd_0_n3), .S(intadd_0_SUM_12_) );
  FA1D0 intadd_0_U3 ( .A(intadd_0_A_13_), .B(intadd_0_B_13_), .CI(intadd_0_n3), 
        .CO(intadd_0_n2), .S(intadd_0_SUM_13_) );
  FA1D0 intadd_0_U2 ( .A(intadd_0_A_14_), .B(intadd_0_B_14_), .CI(intadd_0_n2), 
        .CO(intadd_0_n1), .S(intadd_0_SUM_14_) );
  FA1D0 intadd_1_U7 ( .A(x[24]), .B(y[23]), .CI(y[24]), .CO(intadd_1_n6), .S(
        intadd_1_SUM_0_) );
  FA1D0 intadd_1_U6 ( .A(intadd_1_A_1_), .B(intadd_1_B_1_), .CI(intadd_1_n6), 
        .CO(intadd_1_n5), .S(result[25]) );
  FA1D0 intadd_1_U5 ( .A(intadd_1_A_2_), .B(intadd_1_B_2_), .CI(intadd_1_n5), 
        .CO(intadd_1_n4), .S(result[26]) );
  FA1D0 intadd_1_U4 ( .A(intadd_1_A_3_), .B(intadd_1_B_3_), .CI(intadd_1_n4), 
        .CO(intadd_1_n3), .S(result[27]) );
  FA1D0 intadd_1_U3 ( .A(intadd_1_A_4_), .B(intadd_1_B_4_), .CI(intadd_1_n3), 
        .CO(intadd_1_n2), .S(result[28]) );
  FA1D0 intadd_1_U2 ( .A(intadd_1_A_5_), .B(intadd_1_B_5_), .CI(intadd_1_n2), 
        .CO(intadd_1_n1), .S(result[29]) );
  FA1D0 intadd_2_U7 ( .A(intadd_2_A_0_), .B(intadd_2_B_0_), .CI(intadd_2_CI), 
        .CO(intadd_2_n6), .S(intadd_2_SUM_0_) );
  FA1D0 intadd_2_U6 ( .A(intadd_2_A_1_), .B(intadd_2_B_1_), .CI(intadd_2_n6), 
        .CO(intadd_2_n5), .S(intadd_2_SUM_1_) );
  FA1D0 intadd_2_U5 ( .A(intadd_2_A_2_), .B(intadd_2_B_2_), .CI(intadd_2_n5), 
        .CO(intadd_2_n4), .S(intadd_2_SUM_2_) );
  FA1D0 intadd_2_U4 ( .A(intadd_2_A_3_), .B(intadd_2_B_3_), .CI(intadd_2_n4), 
        .CO(intadd_2_n3), .S(intadd_2_SUM_3_) );
  FA1D0 intadd_2_U3 ( .A(intadd_2_A_4_), .B(intadd_2_B_4_), .CI(intadd_2_n3), 
        .CO(intadd_2_n2), .S(intadd_2_SUM_4_) );
  FA1D0 intadd_2_U2 ( .A(intadd_2_A_5_), .B(intadd_2_B_5_), .CI(intadd_2_n2), 
        .CO(intadd_2_n1), .S(intadd_2_SUM_5_) );
  FA1D0 intadd_3_U7 ( .A(intadd_3_A_0_), .B(intadd_3_B_0_), .CI(intadd_3_CI), 
        .CO(intadd_3_n6), .S(intadd_3_SUM_0_) );
  FA1D0 intadd_3_U6 ( .A(intadd_3_A_1_), .B(intadd_3_B_1_), .CI(intadd_3_n6), 
        .CO(intadd_3_n5), .S(intadd_3_SUM_1_) );
  FA1D0 intadd_3_U5 ( .A(intadd_3_A_2_), .B(intadd_3_B_2_), .CI(intadd_3_n5), 
        .CO(intadd_3_n4), .S(intadd_3_SUM_2_) );
  FA1D0 intadd_3_U4 ( .A(intadd_3_A_3_), .B(intadd_3_B_3_), .CI(intadd_3_n4), 
        .CO(intadd_3_n3), .S(intadd_3_SUM_3_) );
  FA1D0 intadd_3_U3 ( .A(intadd_3_A_4_), .B(intadd_3_B_4_), .CI(intadd_3_n3), 
        .CO(intadd_3_n2), .S(intadd_3_SUM_4_) );
  FA1D0 intadd_3_U2 ( .A(intadd_3_A_5_), .B(intadd_3_B_5_), .CI(intadd_3_n2), 
        .CO(intadd_3_n1), .S(intadd_3_SUM_5_) );
  FA1D0 intadd_4_U5 ( .A(y[16]), .B(intadd_4_B_0_), .CI(intadd_4_CI), .CO(
        intadd_4_n4), .S(intadd_4_SUM_0_) );
  FA1D0 intadd_4_U4 ( .A(intadd_4_A_1_), .B(intadd_4_B_1_), .CI(intadd_4_n4), 
        .CO(intadd_4_n3), .S(intadd_4_SUM_1_) );
  FA1D0 intadd_4_U3 ( .A(intadd_4_A_2_), .B(intadd_4_B_2_), .CI(intadd_4_n3), 
        .CO(intadd_4_n2), .S(intadd_4_SUM_2_) );
  FA1D0 intadd_4_U2 ( .A(intadd_4_A_3_), .B(intadd_4_B_3_), .CI(intadd_4_n2), 
        .CO(intadd_4_n1), .S(intadd_4_SUM_3_) );
  FA1D0 intadd_5_U5 ( .A(x[16]), .B(intadd_5_B_0_), .CI(intadd_5_CI), .CO(
        intadd_5_n4), .S(intadd_5_SUM_0_) );
  FA1D0 intadd_5_U4 ( .A(intadd_5_A_1_), .B(intadd_5_B_1_), .CI(intadd_5_n4), 
        .CO(intadd_5_n3), .S(intadd_0_A_9_) );
  FA1D0 intadd_5_U3 ( .A(intadd_5_A_2_), .B(intadd_5_B_2_), .CI(intadd_5_n3), 
        .CO(intadd_5_n2), .S(intadd_5_SUM_2_) );
  FA1D0 intadd_5_U2 ( .A(intadd_5_A_3_), .B(intadd_5_B_3_), .CI(intadd_5_n2), 
        .CO(intadd_5_n1), .S(intadd_5_SUM_3_) );
  MAOI22D0 U52 ( .A1(n46), .A2(n148), .B1(n148), .B2(n46), .ZN(intadd_4_B_0_)
         );
  INVD0 U53 ( .I(n150), .ZN(n148) );
  MAOI22D0 U54 ( .A1(n42), .A2(n169), .B1(n169), .B2(n42), .ZN(intadd_5_B_0_)
         );
  NR2D0 U56 ( .A1(n181), .A2(intadd_0_SUM_14_), .ZN(n179) );
  INVD1 U57 ( .I(n102), .ZN(intadd_0_B_13_) );
  ND2D0 U58 ( .A1(intadd_2_SUM_5_), .A2(intadd_3_SUM_5_), .ZN(n81) );
  ND2D0 U59 ( .A1(n123), .A2(n79), .ZN(n125) );
  NR2D0 U60 ( .A1(n124), .A2(intadd_3_SUM_2_), .ZN(n123) );
  ND2D0 U61 ( .A1(n77), .A2(n78), .ZN(n124) );
  ND2D0 U62 ( .A1(intadd_2_SUM_0_), .A2(intadd_3_SUM_0_), .ZN(n77) );
  ND2D0 U63 ( .A1(n114), .A2(n113), .ZN(intadd_3_B_1_) );
  ND2D0 U64 ( .A1(n72), .A2(n71), .ZN(intadd_2_CI) );
  ND2D0 U65 ( .A1(n66), .A2(n65), .ZN(n73) );
  ND2D0 U66 ( .A1(n68), .A2(n67), .ZN(intadd_3_CI) );
  ND2D0 U67 ( .A1(n104), .A2(n103), .ZN(intadd_2_B_1_) );
  CKND2D0 U68 ( .A1(n80), .A2(n86), .ZN(intadd_0_CI) );
  OAI31D0 U69 ( .A1(n148), .A2(y[13]), .A3(n153), .B(n63), .ZN(n66) );
  ND2D0 U70 ( .A1(n116), .A2(n94), .ZN(n115) );
  ND2D0 U71 ( .A1(n96), .A2(n106), .ZN(n105) );
  CKND2D0 U72 ( .A1(n148), .A2(n169), .ZN(n80) );
  ND2D0 U73 ( .A1(n70), .A2(n169), .ZN(n106) );
  CKND2D0 U74 ( .A1(n43), .A2(n48), .ZN(n96) );
  ND2D0 U75 ( .A1(n150), .A2(n48), .ZN(n86) );
  INVD0 U76 ( .I(n61), .ZN(intadd_1_A_1_) );
  INVD0 U77 ( .I(n179), .ZN(n178) );
  INVD0 U79 ( .I(n98), .ZN(intadd_0_A_12_) );
  INVD0 U80 ( .I(n88), .ZN(intadd_0_A_11_) );
  INVD0 U81 ( .I(n92), .ZN(intadd_0_B_12_) );
  XNR3D0 U82 ( .A1(n42), .A2(intadd_5_n1), .A3(n97), .ZN(n99) );
  INVD0 U83 ( .I(n82), .ZN(intadd_0_B_9_) );
  INVD0 U84 ( .I(n85), .ZN(intadd_0_B_10_) );
  XNR3D0 U85 ( .A1(n46), .A2(intadd_4_n1), .A3(n95), .ZN(n100) );
  INVD0 U86 ( .I(intadd_4_SUM_3_), .ZN(n89) );
  INVD0 U87 ( .I(intadd_5_SUM_3_), .ZN(n90) );
  INVD0 U88 ( .I(intadd_4_SUM_1_), .ZN(n83) );
  OAI21D0 U89 ( .A1(intadd_2_SUM_5_), .A2(intadd_3_SUM_5_), .B(n81), .ZN(
        intadd_0_A_8_) );
  INVD0 U90 ( .I(n81), .ZN(n84) );
  AOI21D0 U91 ( .A1(intadd_3_SUM_4_), .A2(n125), .B(intadd_0_B_8_), .ZN(
        intadd_0_B_7_) );
  INVD0 U92 ( .I(intadd_2_n1), .ZN(intadd_5_B_1_) );
  OA21D0 U93 ( .A1(n123), .A2(n79), .B(n125), .Z(intadd_0_B_6_) );
  NR2XD0 U94 ( .A1(n125), .A2(intadd_3_SUM_4_), .ZN(intadd_0_B_8_) );
  INVD0 U95 ( .I(intadd_3_n1), .ZN(intadd_4_B_1_) );
  INVD0 U96 ( .I(intadd_2_SUM_4_), .ZN(intadd_0_A_7_) );
  AOI21D0 U97 ( .A1(intadd_3_SUM_2_), .A2(n124), .B(n123), .ZN(intadd_0_B_5_)
         );
  OA21D0 U98 ( .A1(n78), .A2(n77), .B(n124), .Z(intadd_0_B_4_) );
  INVD0 U99 ( .I(intadd_3_SUM_3_), .ZN(n79) );
  INVD0 U100 ( .I(intadd_2_SUM_3_), .ZN(intadd_0_A_6_) );
  INVD0 U101 ( .I(intadd_2_SUM_2_), .ZN(intadd_0_A_5_) );
  INVD0 U102 ( .I(intadd_2_SUM_1_), .ZN(intadd_0_A_4_) );
  OAI21D0 U103 ( .A1(intadd_2_SUM_0_), .A2(intadd_3_SUM_0_), .B(n77), .ZN(
        intadd_0_A_3_) );
  INVD0 U104 ( .I(intadd_3_SUM_1_), .ZN(n78) );
  INVD0 U105 ( .I(n76), .ZN(intadd_0_B_3_) );
  INVD0 U106 ( .I(n69), .ZN(intadd_0_B_2_) );
  INVD0 U107 ( .I(n110), .ZN(intadd_5_A_2_) );
  INVD0 U108 ( .I(n117), .ZN(intadd_4_A_1_) );
  INVD0 U109 ( .I(n108), .ZN(intadd_5_B_2_) );
  INVD0 U110 ( .I(n107), .ZN(intadd_5_A_1_) );
  INVD0 U111 ( .I(n122), .ZN(intadd_4_B_3_) );
  INVD0 U112 ( .I(n120), .ZN(intadd_4_A_2_) );
  AOI21D0 U113 ( .A1(n128), .A2(n127), .B(n126), .ZN(intadd_0_A_14_) );
  INVD0 U114 ( .I(n118), .ZN(intadd_4_B_2_) );
  INVD0 U115 ( .I(n112), .ZN(intadd_5_B_3_) );
  INVD0 U116 ( .I(intadd_5_SUM_0_), .ZN(intadd_2_A_5_) );
  NR2XD0 U117 ( .A1(n127), .A2(n128), .ZN(n126) );
  OAI21D0 U118 ( .A1(n104), .A2(n103), .B(intadd_2_B_1_), .ZN(intadd_2_A_0_)
         );
  INVD0 U119 ( .I(n132), .ZN(n133) );
  INVD0 U120 ( .I(intadd_4_SUM_0_), .ZN(intadd_3_A_5_) );
  OA21D0 U121 ( .A1(n72), .A2(n71), .B(intadd_2_CI), .Z(intadd_0_A_2_) );
  OAI21D0 U122 ( .A1(n114), .A2(n113), .B(intadd_3_B_1_), .ZN(intadd_3_A_0_)
         );
  OA21D0 U123 ( .A1(n66), .A2(n65), .B(n73), .Z(intadd_0_A_1_) );
  OAI21D0 U124 ( .A1(n68), .A2(n67), .B(intadd_3_CI), .ZN(n75) );
  AOI22D0 U125 ( .A1(n147), .A2(n140), .B1(n145), .B2(n149), .ZN(n139) );
  AOI22D0 U126 ( .A1(n166), .A2(n161), .B1(n168), .B2(n165), .ZN(n164) );
  AOI22D0 U127 ( .A1(n147), .A2(n149), .B1(n145), .B2(n141), .ZN(n136) );
  AOI22D0 U128 ( .A1(n168), .A2(n167), .B1(n166), .B2(n165), .ZN(n172) );
  AOI22D0 U129 ( .A1(n168), .A2(n173), .B1(n166), .B2(n167), .ZN(intadd_2_B_0_) );
  AOI22D0 U130 ( .A1(n168), .A2(n170), .B1(n166), .B2(n162), .ZN(n157) );
  AOI22D0 U131 ( .A1(n147), .A2(n153), .B1(n145), .B2(n146), .ZN(intadd_3_B_0_) );
  AOI22D0 U132 ( .A1(n147), .A2(n146), .B1(n145), .B2(n144), .ZN(n152) );
  AOI22D0 U133 ( .A1(n168), .A2(n161), .B1(n166), .B2(n170), .ZN(n160) );
  AOI22D0 U134 ( .A1(n147), .A2(n144), .B1(n145), .B2(n140), .ZN(n143) );
  AOI22D0 U135 ( .A1(n168), .A2(n158), .B1(n166), .B2(n155), .ZN(n109) );
  AOI22D0 U136 ( .A1(n147), .A2(n137), .B1(n145), .B2(n134), .ZN(n119) );
  ND3D0 U137 ( .A1(n130), .A2(n93), .A3(intadd_0_CI), .ZN(n101) );
  AOI22D0 U138 ( .A1(n168), .A2(n155), .B1(n166), .B2(n42), .ZN(n111) );
  AOI22D0 U139 ( .A1(n147), .A2(n134), .B1(n145), .B2(n46), .ZN(n121) );
  INVD0 U140 ( .I(n115), .ZN(n145) );
  OAI32D0 U141 ( .A1(x[12]), .A2(x[13]), .A3(n169), .B1(n105), .B2(n173), .ZN(
        n71) );
  AOI22D0 U142 ( .A1(n150), .A2(n64), .B1(n175), .B2(n148), .ZN(n129) );
  INVD0 U143 ( .I(n105), .ZN(n166) );
  OAI22D0 U144 ( .A1(n44), .A2(n116), .B1(y[18]), .B2(n115), .ZN(intadd_4_CI)
         );
  OAI22D0 U145 ( .A1(n45), .A2(n106), .B1(x[18]), .B2(n105), .ZN(intadd_5_CI)
         );
  OAI21D0 U146 ( .A1(x[12]), .A2(n105), .B(n106), .ZN(n103) );
  OAI31D0 U147 ( .A1(n169), .A2(x[13]), .A3(n173), .B(n62), .ZN(intadd_0_B_1_)
         );
  INVD0 U148 ( .I(n106), .ZN(n168) );
  AOI22D0 U149 ( .A1(n150), .A2(n47), .B1(n43), .B2(n116), .ZN(n127) );
  INVD0 U150 ( .I(n49), .ZN(n131) );
  INVD0 U151 ( .I(n64), .ZN(n175) );
  MAOI222D0 U152 ( .A(n47), .B(n43), .C(n80), .ZN(n74) );
  AOI22D0 U153 ( .A1(n48), .A2(x[14]), .B1(n165), .B2(n169), .ZN(n72) );
  AOI22D0 U154 ( .A1(n48), .A2(x[15]), .B1(n161), .B2(n169), .ZN(n104) );
  OAI21D0 U155 ( .A1(n148), .A2(n70), .B(n51), .ZN(n50) );
  AOI22D0 U156 ( .A1(n48), .A2(n162), .B1(n45), .B2(n169), .ZN(n163) );
  AOI22D0 U157 ( .A1(n48), .A2(n170), .B1(x[16]), .B2(n169), .ZN(n171) );
  AOI22D0 U158 ( .A1(n150), .A2(n141), .B1(n44), .B2(n148), .ZN(n142) );
  MAOI222D0 U159 ( .A(n169), .B(n93), .C(n150), .ZN(n49) );
  INVD0 U160 ( .I(n147), .ZN(n116) );
  OAI21D0 U161 ( .A1(n169), .A2(n173), .B(x[13]), .ZN(n62) );
  AOI22D0 U162 ( .A1(n48), .A2(n158), .B1(x[18]), .B2(n169), .ZN(n159) );
  CKND2D0 U163 ( .A1(n46), .A2(n94), .ZN(n154) );
  CKND2D0 U164 ( .A1(n42), .A2(n96), .ZN(n174) );
  AOI22D0 U165 ( .A1(n48), .A2(n155), .B1(x[19]), .B2(n169), .ZN(n156) );
  OAI21D0 U166 ( .A1(n47), .A2(n43), .B(n93), .ZN(n64) );
  AOI22D0 U167 ( .A1(n150), .A2(y[15]), .B1(n140), .B2(n148), .ZN(n114) );
  AOI22D0 U168 ( .A1(n150), .A2(n137), .B1(y[18]), .B2(n148), .ZN(n138) );
  AOI22D0 U169 ( .A1(n150), .A2(y[14]), .B1(n144), .B2(n148), .ZN(n68) );
  INVD0 U170 ( .I(n45), .ZN(n162) );
  AOI22D0 U171 ( .A1(n150), .A2(n134), .B1(y[19]), .B2(n148), .ZN(n135) );
  AOI22D0 U172 ( .A1(n150), .A2(n149), .B1(y[16]), .B2(n148), .ZN(n151) );
  INVD0 U173 ( .I(n44), .ZN(n141) );
  INVD0 U174 ( .I(n43), .ZN(n70) );
  CKND2D0 U175 ( .A1(n47), .A2(n48), .ZN(n51) );
  CKND2D0 U176 ( .A1(n150), .A2(n47), .ZN(n94) );
  CKND2D1 U177 ( .A1(n47), .A2(n43), .ZN(n93) );
  OAI21D0 U178 ( .A1(n148), .A2(n153), .B(y[13]), .ZN(n63) );
  NR2XD0 U179 ( .A1(n150), .A2(n47), .ZN(n147) );
  INVD0 U180 ( .I(intadd_1_SUM_0_), .ZN(n59) );
  INVD0 U181 ( .I(x[16]), .ZN(n170) );
  INVD0 U182 ( .I(y[16]), .ZN(n149) );
  INVD0 U183 ( .I(x[18]), .ZN(n158) );
  BUFFD1 U184 ( .I(x[17]), .Z(n45) );
  BUFFD1 U185 ( .I(y[17]), .Z(n44) );
  INVD0 U186 ( .I(y[18]), .ZN(n137) );
  BUFFD1 U187 ( .I(x[22]), .Z(n47) );
  INVD0 U188 ( .I(y[14]), .ZN(n144) );
  BUFFD1 U189 ( .I(y[22]), .Z(n43) );
  BUFFD1 U190 ( .I(y[20]), .Z(n46) );
  INVD0 U191 ( .I(x[14]), .ZN(n165) );
  INVD0 U192 ( .I(x[23]), .ZN(n57) );
  INVD0 U193 ( .I(x[13]), .ZN(n167) );
  INVD0 U194 ( .I(x[12]), .ZN(n173) );
  BUFFD1 U195 ( .I(y[21]), .Z(n48) );
  INVD0 U196 ( .I(y[19]), .ZN(n134) );
  INVD0 U197 ( .I(x[15]), .ZN(n161) );
  BUFFD1 U198 ( .I(x[21]), .Z(n150) );
  INVD0 U199 ( .I(x[19]), .ZN(n155) );
  INVD0 U200 ( .I(y[15]), .ZN(n140) );
  INVD0 U201 ( .I(y[13]), .ZN(n146) );
  BUFFD1 U202 ( .I(x[20]), .Z(n42) );
  INVD0 U203 ( .I(n41), .ZN(result[0]) );
  INVD0 U204 ( .I(n41), .ZN(result[1]) );
  INVD0 U205 ( .I(n41), .ZN(result[4]) );
  INVD0 U206 ( .I(n41), .ZN(result[2]) );
  INVD0 U207 ( .I(n41), .ZN(result[3]) );
  INVD0 U208 ( .I(n41), .ZN(result[7]) );
  INVD0 U209 ( .I(n41), .ZN(result[5]) );
  INVD0 U210 ( .I(n41), .ZN(result[6]) );
  TIEH U211 ( .Z(n41) );
  OAI21D0 U212 ( .A1(y[12]), .A2(n115), .B(n116), .ZN(n113) );
  OAI32D0 U213 ( .A1(y[12]), .A2(y[13]), .A3(n148), .B1(n115), .B2(n153), .ZN(
        n67) );
  INVD0 U214 ( .I(y[12]), .ZN(n153) );
  INVD1 U215 ( .I(n48), .ZN(n169) );
  OAI31D1 U216 ( .A1(n148), .A2(n70), .A3(n51), .B(n50), .ZN(n87) );
  NR2D1 U217 ( .A1(n126), .A2(intadd_0_n1), .ZN(n182) );
  INVD1 U218 ( .I(n182), .ZN(n181) );
  MUX2D0 U219 ( .I0(intadd_0_SUM_13_), .I1(intadd_0_SUM_12_), .S(n180), .Z(
        result[21]) );
  AO222D0 U220 ( .A1(n181), .A2(intadd_0_SUM_2_), .B1(n179), .B2(
        intadd_0_SUM_0_), .C1(n180), .C2(intadd_0_SUM_1_), .Z(result[10]) );
  AO222D0 U221 ( .A1(n181), .A2(intadd_0_SUM_3_), .B1(n179), .B2(
        intadd_0_SUM_1_), .C1(n180), .C2(intadd_0_SUM_2_), .Z(result[11]) );
  AO222D0 U222 ( .A1(n181), .A2(intadd_0_SUM_4_), .B1(n179), .B2(
        intadd_0_SUM_2_), .C1(n180), .C2(intadd_0_SUM_3_), .Z(result[12]) );
  AO222D0 U223 ( .A1(n181), .A2(intadd_0_SUM_5_), .B1(n180), .B2(
        intadd_0_SUM_4_), .C1(intadd_0_SUM_3_), .C2(n179), .Z(result[13]) );
  AO222D0 U224 ( .A1(n181), .A2(intadd_0_SUM_7_), .B1(n180), .B2(
        intadd_0_SUM_6_), .C1(intadd_0_SUM_5_), .C2(n179), .Z(result[15]) );
  AO222D0 U225 ( .A1(n181), .A2(intadd_0_SUM_8_), .B1(n180), .B2(
        intadd_0_SUM_7_), .C1(intadd_0_SUM_6_), .C2(n179), .Z(result[16]) );
  AO222D0 U226 ( .A1(n181), .A2(intadd_0_SUM_6_), .B1(n180), .B2(
        intadd_0_SUM_5_), .C1(intadd_0_SUM_4_), .C2(n179), .Z(result[14]) );
  AO222D0 U227 ( .A1(n181), .A2(intadd_0_SUM_9_), .B1(n180), .B2(
        intadd_0_SUM_8_), .C1(intadd_0_SUM_7_), .C2(n179), .Z(result[17]) );
  AOI22D0 U228 ( .A1(intadd_0_SUM_9_), .A2(n180), .B1(intadd_0_SUM_10_), .B2(
        n181), .ZN(n53) );
  CKND2D0 U229 ( .A1(n53), .A2(n178), .ZN(result[18]) );
  AOI22D0 U230 ( .A1(intadd_0_SUM_11_), .A2(n180), .B1(intadd_0_SUM_12_), .B2(
        n181), .ZN(n54) );
  CKND2D0 U231 ( .A1(n54), .A2(n178), .ZN(result[20]) );
  AOI22D0 U232 ( .A1(intadd_0_SUM_10_), .A2(n180), .B1(intadd_0_SUM_11_), .B2(
        n181), .ZN(n55) );
  CKND2D0 U233 ( .A1(n55), .A2(n178), .ZN(result[19]) );
  INVD0 U234 ( .I(n56), .ZN(result[23]) );
  FA1D0 U235 ( .A(y[23]), .B(n57), .CI(n180), .CO(n60), .S(n56) );
  INVD0 U236 ( .I(n58), .ZN(result[24]) );
  FA1D0 U237 ( .A(n178), .B(n60), .CI(n59), .CO(n61), .S(n58) );
  MUX2ND0 U238 ( .I0(n64), .I1(n175), .S(n80), .ZN(n65) );
  FA1D0 U239 ( .A(n75), .B(n74), .CI(n73), .CO(n76), .S(n69) );
  FA1D0 U240 ( .A(intadd_0_CI), .B(n84), .CI(n83), .CO(n85), .S(n82) );
  FA1D0 U241 ( .A(n93), .B(n87), .CI(n86), .CO(n130), .S(n91) );
  FA1D0 U242 ( .A(n91), .B(n90), .CI(n89), .CO(n92), .S(n88) );
  FA1D0 U243 ( .A(n101), .B(n100), .CI(n99), .CO(n102), .S(n98) );
  FA1D0 U244 ( .A(n45), .B(n109), .CI(intadd_5_B_0_), .CO(n110), .S(n107) );
  FA1D0 U245 ( .A(n158), .B(n45), .CI(n111), .CO(n112), .S(n108) );
  FA1D0 U246 ( .A(n44), .B(n119), .CI(intadd_4_B_0_), .CO(n120), .S(n117) );
  FA1D0 U247 ( .A(n137), .B(n44), .CI(n121), .CO(n122), .S(n118) );
  INR2D0 U248 ( .A1(intadd_0_SUM_0_), .B1(n182), .ZN(result[8]) );
  FA1D0 U249 ( .A(n131), .B(n130), .CI(n129), .CO(n128), .S(n132) );
  FA1D0 U250 ( .A(n42), .B(n46), .CI(n133), .CO(intadd_0_B_14_), .S(
        intadd_0_A_13_) );
  FA1D0 U251 ( .A(n140), .B(n136), .CI(n135), .CO(intadd_3_B_5_), .S(
        intadd_3_A_4_) );
  FA1D0 U252 ( .A(n144), .B(n139), .CI(n138), .CO(intadd_3_B_4_), .S(
        intadd_3_A_3_) );
  FA1D0 U253 ( .A(n146), .B(n143), .CI(n142), .CO(intadd_3_B_3_), .S(
        intadd_3_A_2_) );
  FA1D0 U254 ( .A(n153), .B(n152), .CI(n151), .CO(intadd_3_B_2_), .S(
        intadd_3_A_1_) );
  FA1D0 U255 ( .A(n44), .B(y[19]), .CI(n154), .CO(n95), .S(intadd_4_A_3_) );
  FA1D0 U256 ( .A(n161), .B(n157), .CI(n156), .CO(intadd_2_B_5_), .S(
        intadd_2_A_4_) );
  FA1D0 U257 ( .A(n165), .B(n160), .CI(n159), .CO(intadd_2_B_4_), .S(
        intadd_2_A_3_) );
  FA1D0 U258 ( .A(n167), .B(n164), .CI(n163), .CO(intadd_2_B_3_), .S(
        intadd_2_A_2_) );
  FA1D0 U259 ( .A(n173), .B(n172), .CI(n171), .CO(intadd_2_B_2_), .S(
        intadd_2_A_1_) );
  FA1D0 U260 ( .A(n45), .B(x[19]), .CI(n174), .CO(n97), .S(intadd_5_A_3_) );
  FA1D0 U261 ( .A(n175), .B(intadd_5_SUM_2_), .CI(intadd_4_SUM_2_), .CO(
        intadd_0_B_11_), .S(intadd_0_A_10_) );
  FA1D0 U262 ( .A(x[25]), .B(y[25]), .CI(n179), .CO(intadd_1_A_2_), .S(
        intadd_1_B_1_) );
  FA1D0 U263 ( .A(x[26]), .B(y[26]), .CI(n179), .CO(intadd_1_A_3_), .S(
        intadd_1_B_2_) );
  FA1D0 U264 ( .A(x[27]), .B(y[27]), .CI(n179), .CO(intadd_1_A_4_), .S(
        intadd_1_B_3_) );
  FA1D0 U265 ( .A(x[28]), .B(y[28]), .CI(n179), .CO(intadd_1_A_5_), .S(
        intadd_1_B_4_) );
  FA1D0 U266 ( .A(x[29]), .B(y[29]), .CI(n179), .CO(n176), .S(intadd_1_B_5_)
         );
  XOR4D0 U267 ( .A1(x[30]), .A2(y[30]), .A3(n176), .A4(intadd_1_n1), .Z(n177)
         );
  MUX2ND0 U268 ( .I0(n179), .I1(n178), .S(n177), .ZN(result[30]) );
  XOR2D0 U269 ( .A1(y[31]), .A2(x[31]), .Z(result[31]) );
  AO22D0 U270 ( .A1(n180), .A2(intadd_0_SUM_0_), .B1(intadd_0_SUM_1_), .B2(
        n181), .Z(result[9]) );
  OA22D0 U271 ( .A1(intadd_0_SUM_14_), .A2(n182), .B1(n181), .B2(
        intadd_0_SUM_13_), .Z(result[22]) );
  CKAN2D1 U55 ( .A1(n182), .A2(intadd_0_SUM_14_), .Z(n180) );
endmodule

