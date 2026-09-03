/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Thu Sep  3 02:44:50 2026
/////////////////////////////////////////////////////////////


module oadm_fixed_l1_mul_root_opt ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   intadd_0_A_11_, intadd_0_A_10_, intadd_0_A_9_, intadd_0_A_8_,
         intadd_0_A_7_, intadd_0_A_6_, intadd_0_A_5_, intadd_0_A_4_,
         intadd_0_A_3_, intadd_0_A_2_, intadd_0_A_1_, intadd_0_B_11_,
         intadd_0_B_10_, intadd_0_B_9_, intadd_0_B_8_, intadd_0_B_7_,
         intadd_0_B_6_, intadd_0_B_5_, intadd_0_B_4_, intadd_0_B_3_,
         intadd_0_B_2_, intadd_0_B_1_, intadd_0_CI, intadd_0_SUM_11_,
         intadd_0_SUM_10_, intadd_0_SUM_9_, intadd_0_SUM_8_, intadd_0_SUM_7_,
         intadd_0_SUM_6_, intadd_0_SUM_5_, intadd_0_SUM_4_, intadd_0_SUM_3_,
         intadd_0_SUM_2_, intadd_0_SUM_1_, intadd_0_SUM_0_, intadd_0_n12,
         intadd_0_n11, intadd_0_n10, intadd_0_n9, intadd_0_n8, intadd_0_n7,
         intadd_0_n6, intadd_0_n5, intadd_0_n4, intadd_0_n3, intadd_0_n2,
         intadd_0_n1, intadd_1_A_5_, intadd_1_A_4_, intadd_1_A_3_,
         intadd_1_A_2_, intadd_1_A_1_, intadd_1_B_5_, intadd_1_B_4_,
         intadd_1_B_3_, intadd_1_B_2_, intadd_1_B_1_, intadd_1_SUM_0_,
         intadd_1_n6, intadd_1_n5, intadd_1_n4, intadd_1_n3, intadd_1_n2,
         intadd_1_n1, intadd_2_A_4_, intadd_2_A_3_, intadd_2_A_2_,
         intadd_2_A_1_, intadd_2_A_0_, intadd_2_B_5_, intadd_2_B_4_,
         intadd_2_B_3_, intadd_2_B_2_, intadd_2_B_1_, intadd_2_B_0_,
         intadd_2_CI, intadd_2_SUM_5_, intadd_2_SUM_4_, intadd_2_SUM_3_,
         intadd_2_SUM_2_, intadd_2_SUM_1_, intadd_2_SUM_0_, intadd_2_n6,
         intadd_2_n5, intadd_2_n4, intadd_2_n3, intadd_2_n2, intadd_2_n1,
         intadd_3_A_4_, intadd_3_A_3_, intadd_3_A_2_, intadd_3_A_1_,
         intadd_3_A_0_, intadd_3_B_5_, intadd_3_B_4_, intadd_3_B_3_,
         intadd_3_B_2_, intadd_3_B_1_, intadd_3_B_0_, intadd_3_CI,
         intadd_3_SUM_5_, intadd_3_SUM_4_, intadd_3_SUM_3_, intadd_3_SUM_2_,
         intadd_3_SUM_1_, intadd_3_SUM_0_, intadd_3_n6, intadd_3_n5,
         intadd_3_n4, intadd_3_n3, intadd_3_n2, intadd_3_n1, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91;

  FA1D0 intadd_0_U13 ( .A(x[14]), .B(y[14]), .CI(intadd_0_CI), .CO(
        intadd_0_n12), .S(intadd_0_SUM_0_) );
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
  FA1D0 intadd_2_U2 ( .A(intadd_2_A_4_), .B(intadd_2_B_5_), .CI(intadd_2_n2), 
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
  FA1D0 intadd_3_U2 ( .A(intadd_3_A_4_), .B(intadd_3_B_5_), .CI(intadd_3_n2), 
        .CO(intadd_3_n1), .S(intadd_3_SUM_5_) );
  INVD0 U43 ( .I(n82), .ZN(n81) );
  OAI21D0 U44 ( .A1(n79), .A2(n81), .B(n50), .ZN(intadd_0_CI) );
  NR2D0 U45 ( .A1(intadd_0_SUM_11_), .A2(n90), .ZN(n88) );
  ND2D0 U46 ( .A1(intadd_3_SUM_4_), .A2(intadd_2_SUM_4_), .ZN(n62) );
  ND2D0 U47 ( .A1(n70), .A2(n61), .ZN(n72) );
  NR2D0 U48 ( .A1(n71), .A2(intadd_2_SUM_1_), .ZN(n70) );
  ND2D0 U49 ( .A1(n59), .A2(n60), .ZN(n71) );
  ND2D0 U50 ( .A1(n54), .A2(n55), .ZN(n59) );
  CKND2D0 U51 ( .A1(n53), .A2(n52), .ZN(intadd_2_CI) );
  ND2D0 U52 ( .A1(n58), .A2(n57), .ZN(intadd_3_CI) );
  BUFFD0 U53 ( .I(y[15]), .Z(n39) );
  INVD0 U54 ( .I(n47), .ZN(intadd_1_A_1_) );
  INVD0 U55 ( .I(n88), .ZN(n87) );
  AN2D1 U56 ( .A1(intadd_0_SUM_11_), .A2(n91), .Z(n89) );
  INVD0 U57 ( .I(n90), .ZN(n91) );
  AOI21D0 U58 ( .A1(n74), .A2(n73), .B(intadd_0_B_10_), .ZN(intadd_0_A_9_) );
  INVD0 U59 ( .I(n63), .ZN(intadd_0_B_8_) );
  INVD0 U60 ( .I(n65), .ZN(intadd_0_B_9_) );
  XOR2D0 U61 ( .A1(intadd_2_n1), .A2(n66), .Z(n73) );
  INVD0 U62 ( .I(n62), .ZN(n64) );
  AOI21D0 U63 ( .A1(intadd_2_SUM_3_), .A2(n72), .B(intadd_0_B_7_), .ZN(
        intadd_0_B_6_) );
  OAI21D0 U64 ( .A1(intadd_3_SUM_4_), .A2(intadd_2_SUM_4_), .B(n62), .ZN(
        intadd_0_A_7_) );
  INVD0 U65 ( .I(intadd_3_SUM_5_), .ZN(intadd_0_A_8_) );
  XOR2D0 U66 ( .A1(intadd_3_n1), .A2(n67), .Z(n74) );
  NR2XD0 U67 ( .A1(n72), .A2(intadd_2_SUM_3_), .ZN(intadd_0_B_7_) );
  OA21D0 U68 ( .A1(n70), .A2(n61), .B(n72), .Z(intadd_0_B_5_) );
  INVD0 U69 ( .I(intadd_3_SUM_3_), .ZN(intadd_0_A_6_) );
  AOI21D0 U70 ( .A1(intadd_2_SUM_1_), .A2(n71), .B(n70), .ZN(intadd_0_B_4_) );
  INVD0 U71 ( .I(intadd_3_SUM_2_), .ZN(intadd_0_A_5_) );
  OA21D0 U72 ( .A1(n60), .A2(n59), .B(n71), .Z(intadd_0_B_3_) );
  INVD0 U73 ( .I(intadd_2_SUM_2_), .ZN(n61) );
  INVD0 U74 ( .I(intadd_3_SUM_1_), .ZN(intadd_0_A_4_) );
  OAI21D0 U75 ( .A1(n55), .A2(n54), .B(n59), .ZN(intadd_0_B_2_) );
  INVD0 U76 ( .I(intadd_3_SUM_0_), .ZN(intadd_0_A_3_) );
  INVD0 U77 ( .I(intadd_2_SUM_0_), .ZN(n60) );
  OA21D0 U78 ( .A1(n39), .A2(n50), .B(n54), .Z(intadd_0_A_1_) );
  OAI21D0 U79 ( .A1(n53), .A2(n52), .B(intadd_2_CI), .ZN(n55) );
  OA21D0 U80 ( .A1(n58), .A2(n57), .B(intadd_3_CI), .Z(intadd_0_A_2_) );
  AOI21D0 U81 ( .A1(n39), .A2(n81), .B(n75), .ZN(intadd_2_A_0_) );
  AOI22D0 U82 ( .A1(n82), .A2(y[18]), .B1(y[19]), .B2(n81), .ZN(intadd_2_B_4_)
         );
  AOI22D0 U83 ( .A1(n80), .A2(x[16]), .B1(x[17]), .B2(n79), .ZN(intadd_3_A_2_)
         );
  INVD0 U84 ( .I(n39), .ZN(n48) );
  AOI22D0 U85 ( .A1(n80), .A2(x[18]), .B1(x[19]), .B2(n79), .ZN(intadd_3_B_4_)
         );
  AOI22D0 U86 ( .A1(n80), .A2(n68), .B1(x[20]), .B2(n79), .ZN(intadd_3_B_3_)
         );
  AOI22D0 U87 ( .A1(n82), .A2(y[17]), .B1(y[18]), .B2(n81), .ZN(intadd_2_A_3_)
         );
  AOI22D0 U88 ( .A1(n82), .A2(y[19]), .B1(y[20]), .B2(n81), .ZN(intadd_2_B_5_)
         );
  AOI22D0 U89 ( .A1(n82), .A2(n69), .B1(y[20]), .B2(n81), .ZN(intadd_2_B_3_)
         );
  OA21D0 U90 ( .A1(n80), .A2(n84), .B(n83), .Z(intadd_3_A_0_) );
  AOI22D0 U91 ( .A1(n82), .A2(y[16]), .B1(y[17]), .B2(n81), .ZN(intadd_2_A_2_)
         );
  AOI22D0 U92 ( .A1(n80), .A2(x[19]), .B1(x[20]), .B2(n79), .ZN(intadd_3_B_5_)
         );
  INVD0 U93 ( .I(n49), .ZN(n75) );
  AOI22D0 U94 ( .A1(n82), .A2(n39), .B1(y[16]), .B2(n81), .ZN(intadd_2_A_1_)
         );
  AOI22D0 U95 ( .A1(n80), .A2(x[15]), .B1(x[16]), .B2(n79), .ZN(intadd_3_A_1_)
         );
  AOI22D0 U96 ( .A1(n80), .A2(x[17]), .B1(x[18]), .B2(n79), .ZN(intadd_3_A_3_)
         );
  AOI22D0 U97 ( .A1(n80), .A2(x[21]), .B1(n77), .B2(n79), .ZN(intadd_3_A_4_)
         );
  CKND2D0 U98 ( .A1(n80), .A2(x[14]), .ZN(n83) );
  INVD0 U99 ( .I(intadd_1_SUM_0_), .ZN(n45) );
  INVD0 U100 ( .I(x[20]), .ZN(n68) );
  INVD0 U101 ( .I(y[20]), .ZN(n69) );
  BUFFD1 U102 ( .I(x[22]), .Z(n82) );
  INVD0 U103 ( .I(x[23]), .ZN(n43) );
  BUFFD1 U104 ( .I(y[22]), .Z(n80) );
  INVD0 U105 ( .I(x[21]), .ZN(n77) );
  INVD0 U106 ( .I(x[15]), .ZN(n84) );
  INVD0 U107 ( .I(n38), .ZN(result[3]) );
  INVD0 U108 ( .I(n38), .ZN(result[7]) );
  INVD0 U109 ( .I(n38), .ZN(result[1]) );
  INVD0 U110 ( .I(n38), .ZN(result[0]) );
  INVD0 U111 ( .I(n38), .ZN(result[8]) );
  INVD0 U112 ( .I(n38), .ZN(result[2]) );
  INVD0 U113 ( .I(n38), .ZN(result[6]) );
  INVD0 U114 ( .I(n38), .ZN(result[9]) );
  INVD0 U115 ( .I(n38), .ZN(result[4]) );
  INVD0 U116 ( .I(n38), .ZN(result[10]) );
  INVD0 U117 ( .I(n38), .ZN(result[5]) );
  TIEH U118 ( .Z(n38) );
  INVD0 U119 ( .I(x[14]), .ZN(n56) );
  AOI22D0 U120 ( .A1(n82), .A2(y[21]), .B1(n78), .B2(n81), .ZN(intadd_2_A_4_)
         );
  INVD0 U121 ( .I(y[21]), .ZN(n78) );
  OAI32D0 U122 ( .A1(y[14]), .A2(n39), .A3(n81), .B1(n82), .B2(n51), .ZN(n53)
         );
  INVD0 U123 ( .I(y[14]), .ZN(n51) );
  CKND2D0 U124 ( .A1(y[14]), .A2(n82), .ZN(n49) );
  INVD1 U125 ( .I(n80), .ZN(n79) );
  ND2D1 U126 ( .A1(n81), .A2(n79), .ZN(n50) );
  INVD1 U127 ( .I(n50), .ZN(n76) );
  XOR3D1 U128 ( .A1(intadd_0_n1), .A2(n40), .A3(n76), .Z(n90) );
  MUX2D0 U129 ( .I0(intadd_0_SUM_10_), .I1(intadd_0_SUM_9_), .S(n89), .Z(
        result[21]) );
  CKAN2D0 U130 ( .A1(intadd_0_SUM_0_), .A2(n90), .Z(result[11]) );
  AOI22D0 U131 ( .A1(n90), .A2(intadd_0_SUM_9_), .B1(n89), .B2(intadd_0_SUM_8_), .ZN(n41) );
  CKND2D0 U132 ( .A1(n41), .A2(n87), .ZN(result[20]) );
  INVD0 U133 ( .I(n42), .ZN(result[23]) );
  AO222D0 U134 ( .A1(n90), .A2(intadd_0_SUM_7_), .B1(n89), .B2(intadd_0_SUM_6_), .C1(intadd_0_SUM_5_), .C2(n88), .Z(result[18]) );
  AO222D0 U135 ( .A1(n90), .A2(intadd_0_SUM_8_), .B1(n89), .B2(intadd_0_SUM_7_), .C1(intadd_0_SUM_6_), .C2(n88), .Z(result[19]) );
  AO222D0 U136 ( .A1(n90), .A2(intadd_0_SUM_6_), .B1(n89), .B2(intadd_0_SUM_5_), .C1(intadd_0_SUM_4_), .C2(n88), .Z(result[17]) );
  AO222D0 U137 ( .A1(n90), .A2(intadd_0_SUM_5_), .B1(n89), .B2(intadd_0_SUM_4_), .C1(intadd_0_SUM_3_), .C2(n88), .Z(result[16]) );
  AO222D0 U138 ( .A1(n90), .A2(intadd_0_SUM_3_), .B1(intadd_0_SUM_2_), .B2(n89), .C1(intadd_0_SUM_1_), .C2(n88), .Z(result[14]) );
  AO222D0 U139 ( .A1(n90), .A2(intadd_0_SUM_2_), .B1(intadd_0_SUM_0_), .B2(n88), .C1(n89), .C2(intadd_0_SUM_1_), .Z(result[13]) );
  AO222D0 U140 ( .A1(n90), .A2(intadd_0_SUM_4_), .B1(intadd_0_SUM_2_), .B2(n88), .C1(intadd_0_SUM_3_), .C2(n89), .Z(result[15]) );
  FA1D0 U141 ( .A(y[23]), .B(n43), .CI(n89), .CO(n46), .S(n42) );
  INVD0 U142 ( .I(n44), .ZN(result[24]) );
  FA1D0 U143 ( .A(n87), .B(n46), .CI(n45), .CO(n47), .S(n44) );
  OAI221D0 U144 ( .A1(n75), .A2(n39), .B1(n49), .B2(n48), .C(n50), .ZN(n54) );
  MUX2ND0 U145 ( .I0(n81), .I1(n82), .S(y[16]), .ZN(n52) );
  OAI32D1 U146 ( .A1(x[14]), .A2(x[15]), .A3(n79), .B1(n80), .B2(n56), .ZN(n58) );
  MUX2ND0 U147 ( .I0(n79), .I1(n80), .S(x[16]), .ZN(n57) );
  FA1D0 U148 ( .A(intadd_0_CI), .B(intadd_2_SUM_5_), .CI(n64), .CO(n65), .S(
        n63) );
  AOI221D0 U149 ( .A1(y[21]), .A2(y[20]), .B1(n78), .B2(n69), .C(n81), .ZN(n66) );
  AOI221D0 U150 ( .A1(x[21]), .A2(x[20]), .B1(n77), .B2(n68), .C(n79), .ZN(n67) );
  NR2D1 U151 ( .A1(n73), .A2(n74), .ZN(intadd_0_B_10_) );
  FA1D0 U152 ( .A(n78), .B(n77), .CI(n76), .CO(intadd_0_B_11_), .S(
        intadd_0_A_10_) );
  MUX2ND0 U153 ( .I0(n80), .I1(n79), .S(x[17]), .ZN(intadd_3_B_0_) );
  MUX2ND0 U154 ( .I0(n80), .I1(n79), .S(x[18]), .ZN(intadd_3_B_1_) );
  MUX2ND0 U155 ( .I0(n80), .I1(n79), .S(x[19]), .ZN(intadd_3_B_2_) );
  MUX2ND0 U156 ( .I0(n82), .I1(n81), .S(y[17]), .ZN(intadd_2_B_0_) );
  MUX2ND0 U157 ( .I0(n82), .I1(n81), .S(y[18]), .ZN(intadd_2_B_1_) );
  MUX2ND0 U158 ( .I0(n82), .I1(n81), .S(y[19]), .ZN(intadd_2_B_2_) );
  MUX2ND0 U159 ( .I0(x[15]), .I1(n84), .S(n83), .ZN(intadd_0_B_1_) );
  FA1D0 U160 ( .A(x[21]), .B(y[21]), .CI(intadd_0_CI), .CO(n40), .S(
        intadd_0_A_11_) );
  FA1D0 U161 ( .A(x[25]), .B(y[25]), .CI(n88), .CO(intadd_1_A_2_), .S(
        intadd_1_B_1_) );
  FA1D0 U162 ( .A(x[26]), .B(y[26]), .CI(n88), .CO(intadd_1_A_3_), .S(
        intadd_1_B_2_) );
  FA1D0 U163 ( .A(x[27]), .B(y[27]), .CI(n88), .CO(intadd_1_A_4_), .S(
        intadd_1_B_3_) );
  FA1D0 U164 ( .A(x[28]), .B(y[28]), .CI(n88), .CO(intadd_1_A_5_), .S(
        intadd_1_B_4_) );
  FA1D0 U165 ( .A(x[29]), .B(y[29]), .CI(n88), .CO(n85), .S(intadd_1_B_5_) );
  XOR4D0 U166 ( .A1(x[30]), .A2(y[30]), .A3(n85), .A4(intadd_1_n1), .Z(n86) );
  MUX2ND0 U167 ( .I0(n88), .I1(n87), .S(n86), .ZN(result[30]) );
  XOR2D0 U168 ( .A1(y[31]), .A2(x[31]), .Z(result[31]) );
  AO22D0 U169 ( .A1(n90), .A2(intadd_0_SUM_1_), .B1(intadd_0_SUM_0_), .B2(n89), 
        .Z(result[12]) );
  OA22D0 U170 ( .A1(n91), .A2(intadd_0_SUM_11_), .B1(intadd_0_SUM_10_), .B2(
        n90), .Z(result[22]) );
endmodule

