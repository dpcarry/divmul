/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Thu Sep  3 02:45:55 2026
/////////////////////////////////////////////////////////////


module oadm_fixed_l1_mul_root_opt_aggressive ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   intadd_0_A_9_, intadd_0_A_8_, intadd_0_A_7_, intadd_0_A_6_,
         intadd_0_A_5_, intadd_0_A_4_, intadd_0_A_3_, intadd_0_A_2_,
         intadd_0_A_1_, intadd_0_B_9_, intadd_0_B_8_, intadd_0_B_7_,
         intadd_0_B_6_, intadd_0_B_5_, intadd_0_B_4_, intadd_0_B_3_,
         intadd_0_B_2_, intadd_0_B_1_, intadd_0_CI, intadd_0_SUM_9_,
         intadd_0_SUM_8_, intadd_0_SUM_7_, intadd_0_SUM_6_, intadd_0_SUM_5_,
         intadd_0_SUM_4_, intadd_0_SUM_3_, intadd_0_SUM_2_, intadd_0_SUM_1_,
         intadd_0_SUM_0_, intadd_0_n10, intadd_0_n9, intadd_0_n8, intadd_0_n7,
         intadd_0_n6, intadd_0_n5, intadd_0_n4, intadd_0_n3, intadd_0_n2,
         intadd_0_n1, intadd_1_A_5_, intadd_1_A_4_, intadd_1_A_3_,
         intadd_1_A_2_, intadd_1_A_1_, intadd_1_B_5_, intadd_1_B_4_,
         intadd_1_B_3_, intadd_1_B_2_, intadd_1_B_1_, intadd_1_SUM_0_,
         intadd_1_n6, intadd_1_n5, intadd_1_n4, intadd_1_n3, intadd_1_n2,
         intadd_1_n1, intadd_2_A_2_, intadd_2_A_1_, intadd_2_A_0_,
         intadd_2_B_3_, intadd_2_B_2_, intadd_2_B_1_, intadd_2_B_0_,
         intadd_2_CI, intadd_2_SUM_3_, intadd_2_SUM_2_, intadd_2_SUM_1_,
         intadd_2_SUM_0_, intadd_2_n4, intadd_2_n3, intadd_2_n2, intadd_2_n1,
         intadd_3_A_2_, intadd_3_A_1_, intadd_3_A_0_, intadd_3_B_3_,
         intadd_3_B_2_, intadd_3_B_1_, intadd_3_B_0_, intadd_3_CI,
         intadd_3_SUM_3_, intadd_3_SUM_2_, intadd_3_SUM_1_, intadd_3_SUM_0_,
         intadd_3_n4, intadd_3_n3, intadd_3_n2, intadd_3_n1, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92;

  FA1D0 intadd_0_U11 ( .A(x[16]), .B(y[16]), .CI(intadd_0_CI), .CO(
        intadd_0_n10), .S(intadd_0_SUM_0_) );
  FA1D0 intadd_0_U10 ( .A(intadd_0_A_1_), .B(intadd_0_B_1_), .CI(intadd_0_n10), 
        .CO(intadd_0_n9), .S(intadd_0_SUM_1_) );
  FA1D0 intadd_0_U9 ( .A(intadd_0_A_2_), .B(intadd_0_B_2_), .CI(intadd_0_n9), 
        .CO(intadd_0_n8), .S(intadd_0_SUM_2_) );
  FA1D0 intadd_0_U8 ( .A(intadd_0_A_3_), .B(intadd_0_B_3_), .CI(intadd_0_n8), 
        .CO(intadd_0_n7), .S(intadd_0_SUM_3_) );
  FA1D0 intadd_0_U7 ( .A(intadd_0_A_4_), .B(intadd_0_B_4_), .CI(intadd_0_n7), 
        .CO(intadd_0_n6), .S(intadd_0_SUM_4_) );
  FA1D0 intadd_0_U6 ( .A(intadd_0_A_5_), .B(intadd_0_B_5_), .CI(intadd_0_n6), 
        .CO(intadd_0_n5), .S(intadd_0_SUM_5_) );
  FA1D0 intadd_0_U5 ( .A(intadd_0_A_6_), .B(intadd_0_B_6_), .CI(intadd_0_n5), 
        .CO(intadd_0_n4), .S(intadd_0_SUM_6_) );
  FA1D0 intadd_0_U4 ( .A(intadd_0_A_7_), .B(intadd_0_B_7_), .CI(intadd_0_n4), 
        .CO(intadd_0_n3), .S(intadd_0_SUM_7_) );
  FA1D0 intadd_0_U3 ( .A(intadd_0_A_8_), .B(intadd_0_B_8_), .CI(intadd_0_n3), 
        .CO(intadd_0_n2), .S(intadd_0_SUM_8_) );
  FA1D0 intadd_0_U2 ( .A(intadd_0_A_9_), .B(intadd_0_B_9_), .CI(intadd_0_n2), 
        .CO(intadd_0_n1), .S(intadd_0_SUM_9_) );
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
  FA1D0 intadd_2_U5 ( .A(intadd_2_A_0_), .B(intadd_2_B_0_), .CI(intadd_2_CI), 
        .CO(intadd_2_n4), .S(intadd_2_SUM_0_) );
  FA1D0 intadd_2_U4 ( .A(intadd_2_A_1_), .B(intadd_2_B_1_), .CI(intadd_2_n4), 
        .CO(intadd_2_n3), .S(intadd_2_SUM_1_) );
  FA1D0 intadd_2_U3 ( .A(intadd_2_A_2_), .B(intadd_2_B_2_), .CI(intadd_2_n3), 
        .CO(intadd_2_n2), .S(intadd_2_SUM_2_) );
  FA1D0 intadd_2_U2 ( .A(intadd_2_A_2_), .B(intadd_2_B_3_), .CI(intadd_2_n2), 
        .CO(intadd_2_n1), .S(intadd_2_SUM_3_) );
  FA1D0 intadd_3_U5 ( .A(intadd_3_A_0_), .B(intadd_3_B_0_), .CI(intadd_3_CI), 
        .CO(intadd_3_n4), .S(intadd_3_SUM_0_) );
  FA1D0 intadd_3_U4 ( .A(intadd_3_A_1_), .B(intadd_3_B_1_), .CI(intadd_3_n4), 
        .CO(intadd_3_n3), .S(intadd_3_SUM_1_) );
  FA1D0 intadd_3_U3 ( .A(intadd_3_A_2_), .B(intadd_3_B_2_), .CI(intadd_3_n3), 
        .CO(intadd_3_n2), .S(intadd_3_SUM_2_) );
  FA1D0 intadd_3_U2 ( .A(intadd_3_A_2_), .B(intadd_3_B_3_), .CI(intadd_3_n2), 
        .CO(intadd_3_n1), .S(intadd_3_SUM_3_) );
  INVD0 U42 ( .I(n43), .ZN(n83) );
  INVD0 U43 ( .I(n44), .ZN(n82) );
  CKND2D0 U44 ( .A1(n83), .A2(n82), .ZN(n55) );
  NR2D0 U45 ( .A1(intadd_0_SUM_9_), .A2(n91), .ZN(n89) );
  XOR3D1 U46 ( .A1(intadd_0_n1), .A2(n45), .A3(n79), .Z(n91) );
  NR2D0 U47 ( .A1(n66), .A2(n74), .ZN(n68) );
  NR2D0 U48 ( .A1(n75), .A2(intadd_3_SUM_1_), .ZN(n74) );
  ND2D0 U49 ( .A1(n64), .A2(n65), .ZN(n75) );
  ND2D0 U50 ( .A1(n59), .A2(n60), .ZN(n64) );
  CKND2D0 U51 ( .A1(n58), .A2(n57), .ZN(intadd_3_CI) );
  ND2D0 U52 ( .A1(n63), .A2(n62), .ZN(intadd_2_CI) );
  BUFFD0 U53 ( .I(y[17]), .Z(n42) );
  INVD0 U54 ( .I(n52), .ZN(intadd_1_A_1_) );
  INVD0 U55 ( .I(n89), .ZN(n88) );
  AN2D1 U56 ( .A1(intadd_0_SUM_9_), .A2(n92), .Z(n90) );
  INVD0 U57 ( .I(n91), .ZN(n92) );
  AOI21D0 U58 ( .A1(n77), .A2(n76), .B(intadd_0_B_8_), .ZN(intadd_0_A_7_) );
  INVD0 U59 ( .I(n67), .ZN(intadd_0_B_6_) );
  INVD0 U60 ( .I(n69), .ZN(intadd_0_B_7_) );
  NR2XD0 U61 ( .A1(n76), .A2(n77), .ZN(intadd_0_B_8_) );
  AO21D0 U62 ( .A1(n74), .A2(n66), .B(n68), .Z(intadd_0_B_5_) );
  INVD0 U63 ( .I(intadd_2_SUM_3_), .ZN(intadd_0_A_6_) );
  XOR2D0 U64 ( .A1(intadd_2_n1), .A2(n71), .Z(n77) );
  XOR2D0 U65 ( .A1(intadd_3_n1), .A2(n70), .Z(n76) );
  AOI21D0 U66 ( .A1(intadd_3_SUM_1_), .A2(n75), .B(n74), .ZN(intadd_0_B_4_) );
  OA21D0 U67 ( .A1(n65), .A2(n64), .B(n75), .Z(intadd_0_B_3_) );
  INVD0 U68 ( .I(intadd_2_SUM_2_), .ZN(intadd_0_A_5_) );
  INVD0 U69 ( .I(intadd_3_SUM_2_), .ZN(n66) );
  INVD0 U70 ( .I(intadd_2_SUM_1_), .ZN(intadd_0_A_4_) );
  OAI21D0 U71 ( .A1(n60), .A2(n59), .B(n64), .ZN(intadd_0_B_2_) );
  INVD0 U72 ( .I(intadd_3_SUM_0_), .ZN(n65) );
  INVD0 U73 ( .I(intadd_2_SUM_0_), .ZN(intadd_0_A_3_) );
  OAI21D0 U74 ( .A1(n58), .A2(n57), .B(intadd_3_CI), .ZN(n60) );
  OA21D0 U75 ( .A1(n63), .A2(n62), .B(intadd_2_CI), .Z(intadd_0_A_2_) );
  OA21D0 U76 ( .A1(n42), .A2(n55), .B(n59), .Z(intadd_0_A_1_) );
  OAI21D0 U77 ( .A1(n82), .A2(n83), .B(n55), .ZN(intadd_0_CI) );
  INVD0 U78 ( .I(n55), .ZN(n79) );
  AOI21D0 U79 ( .A1(n42), .A2(n83), .B(n78), .ZN(intadd_3_A_0_) );
  AOI22D0 U80 ( .A1(n44), .A2(x[18]), .B1(x[19]), .B2(n82), .ZN(intadd_2_B_2_)
         );
  AOI22D0 U81 ( .A1(n44), .A2(n72), .B1(x[20]), .B2(n82), .ZN(intadd_2_B_1_)
         );
  AOI22D0 U82 ( .A1(n44), .A2(x[19]), .B1(x[20]), .B2(n82), .ZN(intadd_2_B_3_)
         );
  AOI22D0 U83 ( .A1(n44), .A2(x[21]), .B1(n80), .B2(n82), .ZN(intadd_2_A_2_)
         );
  AOI22D0 U84 ( .A1(n44), .A2(x[17]), .B1(x[18]), .B2(n82), .ZN(intadd_2_A_1_)
         );
  AOI22D0 U85 ( .A1(n43), .A2(y[19]), .B1(y[20]), .B2(n83), .ZN(intadd_3_B_3_)
         );
  AOI22D0 U86 ( .A1(n43), .A2(n42), .B1(y[18]), .B2(n83), .ZN(intadd_3_A_1_)
         );
  AOI22D0 U87 ( .A1(n43), .A2(y[18]), .B1(y[19]), .B2(n83), .ZN(intadd_3_B_2_)
         );
  AOI22D0 U88 ( .A1(n43), .A2(n73), .B1(y[20]), .B2(n83), .ZN(intadd_3_B_1_)
         );
  OA21D0 U89 ( .A1(n44), .A2(n85), .B(n84), .Z(intadd_2_A_0_) );
  INVD0 U90 ( .I(n54), .ZN(n78) );
  CKND2D0 U91 ( .A1(n44), .A2(x[16]), .ZN(n84) );
  INVD0 U92 ( .I(n42), .ZN(n53) );
  INVD0 U93 ( .I(intadd_1_SUM_0_), .ZN(n50) );
  INVD0 U94 ( .I(x[23]), .ZN(n48) );
  INVD0 U95 ( .I(y[20]), .ZN(n73) );
  BUFFD1 U96 ( .I(x[22]), .Z(n43) );
  INVD0 U97 ( .I(x[20]), .ZN(n72) );
  INVD0 U98 ( .I(x[21]), .ZN(n80) );
  INVD0 U99 ( .I(x[17]), .ZN(n85) );
  BUFFD1 U100 ( .I(y[22]), .Z(n44) );
  INVD0 U101 ( .I(n41), .ZN(result[12]) );
  INVD0 U102 ( .I(n41), .ZN(result[11]) );
  INVD0 U103 ( .I(n41), .ZN(result[10]) );
  INVD0 U104 ( .I(n41), .ZN(result[9]) );
  INVD0 U105 ( .I(n41), .ZN(result[6]) );
  INVD0 U106 ( .I(n41), .ZN(result[3]) );
  INVD0 U107 ( .I(n41), .ZN(result[8]) );
  INVD0 U108 ( .I(n41), .ZN(result[7]) );
  INVD0 U109 ( .I(n41), .ZN(result[4]) );
  INVD0 U110 ( .I(n41), .ZN(result[0]) );
  INVD0 U111 ( .I(n41), .ZN(result[5]) );
  INVD0 U112 ( .I(n41), .ZN(result[2]) );
  INVD0 U113 ( .I(n41), .ZN(result[1]) );
  TIEH U114 ( .Z(n41) );
  INVD0 U115 ( .I(x[16]), .ZN(n61) );
  AOI22D0 U116 ( .A1(n43), .A2(y[21]), .B1(n81), .B2(n83), .ZN(intadd_3_A_2_)
         );
  INVD0 U117 ( .I(y[21]), .ZN(n81) );
  OAI32D0 U118 ( .A1(y[16]), .A2(n42), .A3(n83), .B1(n43), .B2(n56), .ZN(n58)
         );
  INVD0 U119 ( .I(y[16]), .ZN(n56) );
  CKND2D0 U120 ( .A1(y[16]), .A2(n43), .ZN(n54) );
  MUX2D0 U121 ( .I0(intadd_0_SUM_8_), .I1(intadd_0_SUM_7_), .S(n90), .Z(
        result[21]) );
  CKAN2D0 U122 ( .A1(intadd_0_SUM_0_), .A2(n91), .Z(result[13]) );
  AOI22D0 U123 ( .A1(n91), .A2(intadd_0_SUM_7_), .B1(n90), .B2(intadd_0_SUM_6_), .ZN(n46) );
  CKND2D0 U124 ( .A1(n46), .A2(n88), .ZN(result[20]) );
  INVD0 U125 ( .I(n47), .ZN(result[23]) );
  AO222D0 U126 ( .A1(n91), .A2(intadd_0_SUM_6_), .B1(n90), .B2(intadd_0_SUM_5_), .C1(intadd_0_SUM_4_), .C2(n89), .Z(result[19]) );
  AO222D0 U127 ( .A1(n91), .A2(intadd_0_SUM_5_), .B1(n90), .B2(intadd_0_SUM_4_), .C1(intadd_0_SUM_3_), .C2(n89), .Z(result[18]) );
  AO222D0 U128 ( .A1(n91), .A2(intadd_0_SUM_2_), .B1(intadd_0_SUM_0_), .B2(n89), .C1(n90), .C2(intadd_0_SUM_1_), .Z(result[15]) );
  AO222D0 U129 ( .A1(n91), .A2(intadd_0_SUM_3_), .B1(intadd_0_SUM_2_), .B2(n90), .C1(intadd_0_SUM_1_), .C2(n89), .Z(result[16]) );
  AO222D0 U130 ( .A1(n91), .A2(intadd_0_SUM_4_), .B1(intadd_0_SUM_2_), .B2(n89), .C1(intadd_0_SUM_3_), .C2(n90), .Z(result[17]) );
  FA1D0 U131 ( .A(y[23]), .B(n48), .CI(n90), .CO(n51), .S(n47) );
  INVD0 U132 ( .I(n49), .ZN(result[24]) );
  FA1D0 U133 ( .A(n88), .B(n51), .CI(n50), .CO(n52), .S(n49) );
  OAI221D0 U134 ( .A1(n78), .A2(n42), .B1(n54), .B2(n53), .C(n55), .ZN(n59) );
  MUX2ND0 U135 ( .I0(n83), .I1(n43), .S(y[18]), .ZN(n57) );
  OAI32D1 U136 ( .A1(x[16]), .A2(x[17]), .A3(n82), .B1(n44), .B2(n61), .ZN(n63) );
  MUX2ND0 U137 ( .I0(n82), .I1(n44), .S(x[18]), .ZN(n62) );
  FA1D0 U138 ( .A(intadd_0_CI), .B(intadd_3_SUM_3_), .CI(n68), .CO(n69), .S(
        n67) );
  AOI221D0 U139 ( .A1(y[21]), .A2(y[20]), .B1(n81), .B2(n73), .C(n83), .ZN(n70) );
  AOI221D0 U140 ( .A1(x[21]), .A2(x[20]), .B1(n80), .B2(n72), .C(n82), .ZN(n71) );
  FA1D0 U141 ( .A(n81), .B(n80), .CI(n79), .CO(intadd_0_B_9_), .S(
        intadd_0_A_8_) );
  MUX2ND0 U142 ( .I0(n44), .I1(n82), .S(x[19]), .ZN(intadd_2_B_0_) );
  MUX2ND0 U143 ( .I0(n43), .I1(n83), .S(y[19]), .ZN(intadd_3_B_0_) );
  MUX2ND0 U144 ( .I0(x[17]), .I1(n85), .S(n84), .ZN(intadd_0_B_1_) );
  FA1D0 U145 ( .A(x[21]), .B(y[21]), .CI(intadd_0_CI), .CO(n45), .S(
        intadd_0_A_9_) );
  FA1D0 U146 ( .A(x[25]), .B(y[25]), .CI(n89), .CO(intadd_1_A_2_), .S(
        intadd_1_B_1_) );
  FA1D0 U147 ( .A(x[26]), .B(y[26]), .CI(n89), .CO(intadd_1_A_3_), .S(
        intadd_1_B_2_) );
  FA1D0 U148 ( .A(x[27]), .B(y[27]), .CI(n89), .CO(intadd_1_A_4_), .S(
        intadd_1_B_3_) );
  FA1D0 U149 ( .A(x[28]), .B(y[28]), .CI(n89), .CO(intadd_1_A_5_), .S(
        intadd_1_B_4_) );
  FA1D0 U150 ( .A(x[29]), .B(y[29]), .CI(n89), .CO(n86), .S(intadd_1_B_5_) );
  XOR4D0 U151 ( .A1(x[30]), .A2(y[30]), .A3(n86), .A4(intadd_1_n1), .Z(n87) );
  MUX2ND0 U152 ( .I0(n89), .I1(n88), .S(n87), .ZN(result[30]) );
  XOR2D0 U153 ( .A1(y[31]), .A2(x[31]), .Z(result[31]) );
  AO22D0 U154 ( .A1(n91), .A2(intadd_0_SUM_1_), .B1(intadd_0_SUM_0_), .B2(n90), 
        .Z(result[14]) );
  OA22D0 U155 ( .A1(n92), .A2(intadd_0_SUM_9_), .B1(intadd_0_SUM_8_), .B2(n91), 
        .Z(result[22]) );
endmodule

