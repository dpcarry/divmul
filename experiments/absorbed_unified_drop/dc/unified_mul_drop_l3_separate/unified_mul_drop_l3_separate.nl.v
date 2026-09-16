/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Wed Sep 16 00:52:53 2026
/////////////////////////////////////////////////////////////


module unified_mul_drop_l3_separate_div_DW_mult_tc_1_DW_mult_tc_3 ( a, b, 
        product );
  input [9:0] a;
  input [5:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n17,
         n18, n19, n20, n21, n23, n24, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n199;

  FA1D0 U2 ( .A(n42), .B(n15), .CI(n2), .CO(n1), .S(product[14]) );
  FA1D0 U3 ( .A(n17), .B(n161), .CI(n3), .CO(n2), .S(product[13]) );
  FA1D0 U4 ( .A(n19), .B(n18), .CI(n4), .CO(n3), .S(product[12]) );
  FA1D0 U5 ( .A(n23), .B(n20), .CI(n5), .CO(n4), .S(product[11]) );
  FA1D0 U6 ( .A(n24), .B(n26), .CI(n6), .CO(n5), .S(product[10]) );
  FA1D0 U7 ( .A(n28), .B(n27), .CI(n7), .CO(n6), .S(product[9]) );
  FA1D0 U8 ( .A(n30), .B(n29), .CI(n8), .CO(n7), .S(product[8]) );
  FA1D0 U9 ( .A(n32), .B(n31), .CI(n9), .CO(n8), .S(product[7]) );
  FA1D0 U10 ( .A(n34), .B(n33), .CI(n10), .CO(n9), .S(product[6]) );
  FA1D0 U11 ( .A(n36), .B(n35), .CI(n11), .CO(n10), .S(product[5]) );
  FA1D0 U12 ( .A(n37), .B(n38), .CI(n12), .CO(n11), .S(product[4]) );
  FA1D0 U13 ( .A(n39), .B(n40), .CI(n13), .CO(n12), .S(product[3]) );
  FA1D0 U14 ( .A(n70), .B(n61), .CI(n14), .CO(n13), .S(product[2]) );
  HA1D0 U15 ( .A(n71), .B(n41), .CO(n14), .S(product[1]) );
  FA1D0 U17 ( .A(n43), .B(n21), .CI(n51), .CO(n17), .S(n18) );
  FA1D0 U18 ( .A(n52), .B(n44), .CI(n162), .CO(n19), .S(n20) );
  FA1D0 U20 ( .A(n62), .B(n53), .CI(n162), .CO(n23), .S(n24) );
  FA1D0 U22 ( .A(n63), .B(n45), .CI(n54), .CO(n26), .S(n27) );
  FA1D0 U23 ( .A(n64), .B(n46), .CI(n55), .CO(n28), .S(n29) );
  FA1D0 U24 ( .A(n65), .B(n47), .CI(n56), .CO(n30), .S(n31) );
  FA1D0 U25 ( .A(n66), .B(n48), .CI(n57), .CO(n32), .S(n33) );
  FA1D0 U26 ( .A(n67), .B(n49), .CI(n58), .CO(n34), .S(n35) );
  FA1D0 U27 ( .A(n68), .B(n50), .CI(n59), .CO(n36), .S(n37) );
  HA1D0 U28 ( .A(n60), .B(n69), .CO(n38), .S(n39) );
  XNR2D1 U119 ( .A1(b[3]), .A2(b[4]), .ZN(n196) );
  INVD1 U121 ( .I(b[0]), .ZN(n163) );
  ND2D1 U122 ( .A1(b[1]), .A2(n163), .ZN(n174) );
  INVD1 U123 ( .I(b[3]), .ZN(n160) );
  INVD1 U124 ( .I(n15), .ZN(n161) );
  INVD1 U125 ( .I(n21), .ZN(n162) );
  INVD1 U126 ( .I(a[9]), .ZN(n164) );
  INVD1 U127 ( .I(a[1]), .ZN(n172) );
  INVD1 U128 ( .I(a[3]), .ZN(n170) );
  INVD1 U129 ( .I(a[0]), .ZN(n173) );
  INVD1 U130 ( .I(a[2]), .ZN(n171) );
  INVD1 U131 ( .I(a[4]), .ZN(n169) );
  INVD1 U132 ( .I(a[5]), .ZN(n168) );
  INVD1 U133 ( .I(a[6]), .ZN(n167) );
  INVD1 U134 ( .I(a[7]), .ZN(n166) );
  INVD1 U135 ( .I(a[8]), .ZN(n165) );
  CKND0 U136 ( .I(n1), .ZN(product[15]) );
  NR2D0 U137 ( .A1(n173), .A2(n163), .ZN(product[0]) );
  OAI22D0 U138 ( .A1(a[0]), .A2(n174), .B1(n175), .B2(n163), .ZN(n71) );
  OAI22D0 U139 ( .A1(n175), .A2(n174), .B1(n176), .B2(n163), .ZN(n70) );
  CKXOR2D0 U140 ( .A1(b[1]), .A2(n172), .Z(n175) );
  OAI22D0 U141 ( .A1(n176), .A2(n174), .B1(n177), .B2(n163), .ZN(n69) );
  CKXOR2D0 U142 ( .A1(b[1]), .A2(n171), .Z(n176) );
  OAI22D0 U143 ( .A1(n177), .A2(n174), .B1(n178), .B2(n163), .ZN(n68) );
  CKXOR2D0 U144 ( .A1(b[1]), .A2(n170), .Z(n177) );
  OAI22D0 U145 ( .A1(n178), .A2(n174), .B1(n179), .B2(n163), .ZN(n67) );
  CKXOR2D0 U146 ( .A1(b[1]), .A2(n169), .Z(n178) );
  OAI22D0 U147 ( .A1(n179), .A2(n174), .B1(n180), .B2(n163), .ZN(n66) );
  CKXOR2D0 U148 ( .A1(b[1]), .A2(n168), .Z(n179) );
  OAI22D0 U149 ( .A1(n180), .A2(n174), .B1(n181), .B2(n163), .ZN(n65) );
  CKXOR2D0 U150 ( .A1(b[1]), .A2(n167), .Z(n180) );
  OAI22D0 U151 ( .A1(n181), .A2(n174), .B1(n182), .B2(n163), .ZN(n64) );
  CKXOR2D0 U152 ( .A1(b[1]), .A2(n166), .Z(n181) );
  MOAI22D0 U153 ( .A1(n182), .A2(n174), .B1(n183), .B2(b[0]), .ZN(n63) );
  CKXOR2D0 U154 ( .A1(b[1]), .A2(n165), .Z(n182) );
  IOA21D0 U155 ( .A1(n163), .A2(n174), .B(n183), .ZN(n62) );
  XNR2D0 U156 ( .A1(b[1]), .A2(n164), .ZN(n183) );
  NR2D0 U157 ( .A1(n184), .A2(n173), .ZN(n61) );
  OAI22D0 U158 ( .A1(n185), .A2(n186), .B1(n184), .B2(n187), .ZN(n60) );
  CKXOR2D0 U159 ( .A1(b[3]), .A2(n173), .Z(n185) );
  OAI22D0 U160 ( .A1(n187), .A2(n186), .B1(n184), .B2(n188), .ZN(n59) );
  CKXOR2D0 U161 ( .A1(b[3]), .A2(n172), .Z(n187) );
  OAI22D0 U162 ( .A1(n188), .A2(n186), .B1(n184), .B2(n189), .ZN(n58) );
  CKXOR2D0 U163 ( .A1(b[3]), .A2(n171), .Z(n188) );
  OAI22D0 U164 ( .A1(n189), .A2(n186), .B1(n184), .B2(n190), .ZN(n57) );
  CKXOR2D0 U165 ( .A1(b[3]), .A2(n170), .Z(n189) );
  OAI22D0 U166 ( .A1(n190), .A2(n186), .B1(n184), .B2(n191), .ZN(n56) );
  CKXOR2D0 U167 ( .A1(b[3]), .A2(n169), .Z(n190) );
  OAI22D0 U168 ( .A1(n191), .A2(n186), .B1(n184), .B2(n192), .ZN(n55) );
  CKXOR2D0 U169 ( .A1(b[3]), .A2(n168), .Z(n191) );
  OAI22D0 U170 ( .A1(n192), .A2(n186), .B1(n184), .B2(n193), .ZN(n54) );
  CKXOR2D0 U171 ( .A1(b[3]), .A2(n167), .Z(n192) );
  OAI22D0 U172 ( .A1(n193), .A2(n186), .B1(n184), .B2(n194), .ZN(n53) );
  CKXOR2D0 U173 ( .A1(b[3]), .A2(n166), .Z(n193) );
  OAI22D0 U174 ( .A1(n194), .A2(n186), .B1(n184), .B2(n195), .ZN(n52) );
  CKXOR2D0 U175 ( .A1(b[3]), .A2(n165), .Z(n194) );
  AO21D0 U176 ( .A1(n186), .A2(n184), .B(n195), .Z(n51) );
  CKXOR2D0 U177 ( .A1(n160), .A2(a[9]), .Z(n195) );
  NR2D0 U178 ( .A1(n196), .A2(n173), .ZN(n50) );
  OAI22D0 U179 ( .A1(n173), .A2(n197), .B1(n196), .B2(n172), .ZN(n49) );
  OAI22D0 U180 ( .A1(n172), .A2(n197), .B1(n196), .B2(n171), .ZN(n48) );
  OAI22D0 U181 ( .A1(n171), .A2(n197), .B1(n196), .B2(n170), .ZN(n47) );
  OAI22D0 U182 ( .A1(n170), .A2(n197), .B1(n196), .B2(n169), .ZN(n46) );
  OAI22D0 U183 ( .A1(n169), .A2(n197), .B1(n196), .B2(n168), .ZN(n45) );
  OAI22D0 U184 ( .A1(n167), .A2(n197), .B1(n196), .B2(n166), .ZN(n44) );
  OAI22D0 U185 ( .A1(n166), .A2(n197), .B1(n196), .B2(n165), .ZN(n43) );
  AO21D0 U186 ( .A1(n197), .A2(n196), .B(n164), .Z(n42) );
  IOA21D0 U187 ( .A1(n173), .A2(b[1]), .B(n174), .ZN(n41) );
  OAI32D0 U188 ( .A1(n160), .A2(a[0]), .A3(n184), .B1(n160), .B2(n186), .ZN(
        n40) );
  OAI22D0 U190 ( .A1(n168), .A2(n197), .B1(n196), .B2(n167), .ZN(n21) );
  OAI22D0 U191 ( .A1(n196), .A2(n164), .B1(n165), .B2(n197), .ZN(n15) );
  CKND2D0 U192 ( .A1(n196), .A2(b[4]), .ZN(n197) );
  OAI211D0 U118 ( .A1(b[2]), .A2(b[3]), .B(n199), .C(n184), .ZN(n186) );
  XNR2D0 U120 ( .A1(b[2]), .A2(b[1]), .ZN(n184) );
  CKND2D0 U189 ( .A1(b[2]), .A2(b[3]), .ZN(n199) );
endmodule


module unified_mul_drop_l3_separate_div_DW_mult_tc_0_DW_mult_tc_2 ( a, b, 
        product );
  input [9:0] a;
  input [4:0] b;
  output [14:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n15, n16, n17,
         n18, n21, n22, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143;

  FA1D0 U2 ( .A(n15), .B(n129), .CI(n2), .CO(n1), .S(product[13]) );
  FA1D0 U3 ( .A(n16), .B(n17), .CI(n3), .CO(n2), .S(product[12]) );
  FA1D0 U4 ( .A(n21), .B(n18), .CI(n4), .CO(n3), .S(product[11]) );
  FA1D0 U5 ( .A(n24), .B(n22), .CI(n5), .CO(n4), .S(product[10]) );
  FA1D0 U6 ( .A(n26), .B(n25), .CI(n6), .CO(n5), .S(product[9]) );
  FA1D0 U7 ( .A(n28), .B(n27), .CI(n7), .CO(n6), .S(product[8]) );
  FA1D0 U8 ( .A(n30), .B(n29), .CI(n8), .CO(n7), .S(product[7]) );
  FA1D0 U9 ( .A(n32), .B(n31), .CI(n9), .CO(n8), .S(product[6]) );
  FA1D0 U10 ( .A(n34), .B(n33), .CI(n10), .CO(n9), .S(product[5]) );
  FA1D0 U11 ( .A(n35), .B(n36), .CI(n11), .CO(n10), .S(product[4]) );
  FA1D0 U12 ( .A(n37), .B(n59), .CI(n12), .CO(n11), .S(product[3]) );
  FA1D0 U13 ( .A(n60), .B(n51), .CI(n13), .CO(n12), .S(product[2]) );
  HA1D0 U14 ( .A(n61), .B(n39), .CO(n13), .S(product[1]) );
  FA1D0 U16 ( .A(a[8]), .B(a[6]), .CI(n41), .CO(n15), .S(n16) );
  FA1D0 U17 ( .A(n130), .B(a[7]), .CI(n42), .CO(n17), .S(n18) );
  FA1D0 U19 ( .A(n43), .B(n130), .CI(n52), .CO(n21), .S(n22) );
  FA1D0 U21 ( .A(n44), .B(a[5]), .CI(n53), .CO(n24), .S(n25) );
  FA1D0 U22 ( .A(n45), .B(a[4]), .CI(n54), .CO(n26), .S(n27) );
  FA1D0 U23 ( .A(n46), .B(a[3]), .CI(n55), .CO(n28), .S(n29) );
  FA1D0 U24 ( .A(n47), .B(a[2]), .CI(n56), .CO(n30), .S(n31) );
  FA1D0 U25 ( .A(n48), .B(a[1]), .CI(n57), .CO(n32), .S(n33) );
  FA1D0 U26 ( .A(n49), .B(a[0]), .CI(n58), .CO(n34), .S(n35) );
  HA1D0 U27 ( .A(n50), .B(n38), .CO(n36), .S(n37) );
  INVD1 U85 ( .I(n142), .ZN(n128) );
  INVD1 U86 ( .I(n143), .ZN(n127) );
  INVD1 U87 ( .I(b[0]), .ZN(n125) );
  INVD1 U88 ( .I(b[1]), .ZN(n126) );
  ND2D1 U89 ( .A1(b[1]), .A2(n125), .ZN(n132) );
  INVD1 U90 ( .I(a[9]), .ZN(n129) );
  INVD1 U91 ( .I(a[0]), .ZN(n131) );
  INVD1 U92 ( .I(a[6]), .ZN(n130) );
  CKND0 U93 ( .I(n1), .ZN(product[14]) );
  NR2D0 U94 ( .A1(n131), .A2(n125), .ZN(product[0]) );
  OAI22D0 U95 ( .A1(a[0]), .A2(n132), .B1(n133), .B2(n125), .ZN(n61) );
  OAI22D0 U96 ( .A1(n133), .A2(n132), .B1(n134), .B2(n125), .ZN(n60) );
  CKXOR2D0 U97 ( .A1(n126), .A2(a[1]), .Z(n133) );
  OAI22D0 U98 ( .A1(n134), .A2(n132), .B1(n135), .B2(n125), .ZN(n59) );
  CKXOR2D0 U99 ( .A1(n126), .A2(a[2]), .Z(n134) );
  OAI22D0 U100 ( .A1(n135), .A2(n132), .B1(n136), .B2(n125), .ZN(n58) );
  CKXOR2D0 U101 ( .A1(n126), .A2(a[3]), .Z(n135) );
  OAI22D0 U102 ( .A1(n136), .A2(n132), .B1(n137), .B2(n125), .ZN(n57) );
  CKXOR2D0 U103 ( .A1(n126), .A2(a[4]), .Z(n136) );
  OAI22D0 U104 ( .A1(n137), .A2(n132), .B1(n138), .B2(n125), .ZN(n56) );
  CKXOR2D0 U105 ( .A1(n126), .A2(a[5]), .Z(n137) );
  OAI22D0 U106 ( .A1(n138), .A2(n132), .B1(n139), .B2(n125), .ZN(n55) );
  CKXOR2D0 U107 ( .A1(b[1]), .A2(n130), .Z(n138) );
  OAI22D0 U108 ( .A1(n139), .A2(n132), .B1(n140), .B2(n125), .ZN(n54) );
  CKXOR2D0 U109 ( .A1(n126), .A2(a[7]), .Z(n139) );
  MOAI22D0 U110 ( .A1(n140), .A2(n132), .B1(n141), .B2(b[0]), .ZN(n53) );
  CKXOR2D0 U111 ( .A1(n126), .A2(a[8]), .Z(n140) );
  IOA21D0 U112 ( .A1(n125), .A2(n132), .B(n141), .ZN(n52) );
  CKXOR2D0 U113 ( .A1(b[1]), .A2(a[9]), .Z(n141) );
  NR2D0 U114 ( .A1(n127), .A2(n131), .ZN(n51) );
  OAI22D0 U115 ( .A1(a[0]), .A2(n128), .B1(a[1]), .B2(n127), .ZN(n50) );
  OAI22D0 U116 ( .A1(a[1]), .A2(n128), .B1(a[2]), .B2(n127), .ZN(n49) );
  OAI22D0 U117 ( .A1(a[2]), .A2(n128), .B1(a[3]), .B2(n127), .ZN(n48) );
  OAI22D0 U118 ( .A1(a[3]), .A2(n128), .B1(a[4]), .B2(n127), .ZN(n47) );
  OAI22D0 U119 ( .A1(a[4]), .A2(n128), .B1(a[5]), .B2(n127), .ZN(n46) );
  OAI22D0 U120 ( .A1(a[5]), .A2(n128), .B1(a[6]), .B2(n127), .ZN(n45) );
  OAI22D0 U121 ( .A1(a[6]), .A2(n128), .B1(a[7]), .B2(n127), .ZN(n44) );
  OAI22D0 U122 ( .A1(a[7]), .A2(n128), .B1(a[8]), .B2(n127), .ZN(n43) );
  OAI22D0 U123 ( .A1(a[8]), .A2(n128), .B1(a[9]), .B2(n127), .ZN(n42) );
  OAI21D0 U124 ( .A1(n142), .A2(n143), .B(n129), .ZN(n41) );
  OAI21D0 U125 ( .A1(a[0]), .A2(n126), .B(n132), .ZN(n39) );
  OAI21D0 U126 ( .A1(a[0]), .A2(n127), .B(n128), .ZN(n38) );
  NR2D0 U127 ( .A1(n143), .A2(b[2]), .ZN(n142) );
  CKXOR2D0 U128 ( .A1(b[1]), .A2(b[2]), .Z(n143) );
endmodule


module unified_mul_drop_l3_separate_div_DW01_add_0_DW01_add_2 ( A, B, CI, SUM, 
        CO );
  input [19:0] A;
  input [19:0] B;
  output [19:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [18:3] carry;

  FA1D0 U1_2 ( .A(A[2]), .B(B[2]), .CI(n1), .CO(carry[3]), .S(SUM[2]) );
  FA1D0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1D0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1D0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1D0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA1D0 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA1D0 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FA1D0 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  FA1D0 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FA1D0 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FA1D0 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  FA1D0 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  FA1D0 U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  FA1D0 U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  FA1D0 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  FA1D0 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  AN2XD1 U1 ( .A1(B[1]), .A2(A[1]), .Z(n1) );
  CKBD1 U2 ( .I(B[0]), .Z(SUM[0]) );
  CKXOR2D1 U3 ( .A1(B[18]), .A2(carry[18]), .Z(SUM[18]) );
  CKXOR2D1 U4 ( .A1(B[1]), .A2(A[1]), .Z(SUM[1]) );
endmodule


module unified_mul_drop_l3_separate_div_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [20:0] A;
  input [20:0] B;
  output [20:0] DIFF;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16;
  wire   [18:1] carry;

  FA1D0 U2_1 ( .A(A[1]), .B(n16), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  FA1D0 U2_3 ( .A(A[3]), .B(n14), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  XOR3D1 U2_18 ( .A1(A[18]), .A2(n2), .A3(carry[18]), .Z(DIFF[18]) );
  FA1D0 U2_2 ( .A(A[2]), .B(n15), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  FA1D0 U2_4 ( .A(A[4]), .B(n13), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FA1D0 U2_5 ( .A(A[5]), .B(n12), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  FA1D0 U2_6 ( .A(A[6]), .B(n11), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  FA1D0 U2_7 ( .A(A[7]), .B(n10), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  FA1D0 U2_8 ( .A(A[8]), .B(n9), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  FA1D0 U2_9 ( .A(A[9]), .B(n8), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9]) );
  FA1D0 U2_10 ( .A(A[10]), .B(n7), .CI(carry[10]), .CO(carry[11]), .S(DIFF[10]) );
  FA1D0 U2_11 ( .A(A[11]), .B(n6), .CI(carry[11]), .CO(carry[12]), .S(DIFF[11]) );
  FA1D0 U2_12 ( .A(A[12]), .B(n5), .CI(carry[12]), .CO(carry[13]), .S(DIFF[12]) );
  FA1D0 U2_13 ( .A(A[13]), .B(n4), .CI(carry[13]), .CO(carry[14]), .S(DIFF[13]) );
  FA1D0 U2_14 ( .A(A[14]), .B(n3), .CI(carry[14]), .CO(carry[15]), .S(DIFF[14]) );
  FA1D0 U2_16 ( .A(A[16]), .B(n2), .CI(carry[16]), .CO(carry[17]), .S(DIFF[16]) );
  FA1D0 U2_17 ( .A(A[17]), .B(n2), .CI(carry[17]), .CO(carry[18]), .S(DIFF[17]) );
  FA1D0 U2_15 ( .A(A[15]), .B(n2), .CI(carry[15]), .CO(carry[16]), .S(DIFF[15]) );
  INVD1 U1 ( .I(B[14]), .ZN(n3) );
  INVD1 U2 ( .I(B[13]), .ZN(n4) );
  INVD1 U3 ( .I(B[12]), .ZN(n5) );
  INVD1 U4 ( .I(B[11]), .ZN(n6) );
  INVD1 U5 ( .I(B[10]), .ZN(n7) );
  INVD1 U6 ( .I(B[9]), .ZN(n8) );
  INVD1 U7 ( .I(B[8]), .ZN(n9) );
  INVD1 U8 ( .I(B[7]), .ZN(n10) );
  INVD1 U9 ( .I(B[6]), .ZN(n11) );
  INVD1 U10 ( .I(B[5]), .ZN(n12) );
  INVD1 U11 ( .I(B[20]), .ZN(n2) );
  INVD1 U12 ( .I(B[4]), .ZN(n13) );
  INVD1 U13 ( .I(B[2]), .ZN(n15) );
  INVD1 U15 ( .I(B[3]), .ZN(n14) );
  INVD1 U17 ( .I(B[1]), .ZN(n16) );
  CKXOR2D0 U14 ( .A1(A[0]), .A2(B[0]), .Z(DIFF[0]) );
  IND2D0 U16 ( .A1(A[0]), .B1(B[0]), .ZN(carry[1]) );
endmodule


module unified_mul_drop_l3_separate_div ( fx, fy, value );
  input [22:0] fx;
  input [22:0] fy;
  output [28:0] value;
  wire   rx_9_, ry_9_, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194,
         n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205,
         n206, n207, n208, n209, n210, n211, n213, n214, n215, n216, n217,
         n218, n219, n220, n221, n222, n224, n225, n226, n227, n228, n229,
         n230, n231, n232, n233, n234, n235, n236, n237, n238, n239, n240,
         n241, n242, n243, n246, n247, n248, n249, n250, n251, n252, n253,
         n254, n255, n256, n257, n258, n259, n260, n261, n262, n263, n264,
         n265, n266, n267, n268, n269, n270, n271, n272, n273, n274, n275,
         n276, n277, n278, n279, n280, n281, n282, n283, n284, py_9_, py_8_,
         py_7_, py_6_, py_5_, py_4_, py_3_, py_2_, py_1_, py_15_, py_14_,
         py_13_, py_12_, py_11_, py_10_, py_0_, px_15, px_9_, px_8_, px_7_,
         px_6_, px_5_, px_4_, px_3_, px_2_, px_1_, px_13_, px_12_, px_11_,
         px_10_, px_0_, N2500, N2490, N2480, N2470, N2460, N245, N244, N2430,
         N2420, N2410, N2400, N2390, N2380, N2370, N2360, N2350, N2340, N2330,
         N2320, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n62,
         n63, n64, n65, n66, n67, n68, n69, n285, n286, n287, n288, n289, n290
;
  wire   [2:0] a;
  wire   [4:0] b;
  wire   [17:1] t;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2;

  AN4XD1 U27 ( .A1(n126), .A2(n127), .A3(n105), .A4(n128), .Z(n125) );
  AN4XD1 U40 ( .A1(n150), .A2(n151), .A3(n152), .A4(n84), .Z(n149) );
  AN2XD1 U60 ( .A1(n183), .A2(n184), .Z(n182) );
  AN4XD1 U66 ( .A1(n195), .A2(n172), .A3(n196), .A4(n197), .Z(n109) );
  AN4XD1 U74 ( .A1(n167), .A2(n183), .A3(n206), .A4(n207), .Z(n192) );
  AN2XD1 U124 ( .A1(n246), .A2(n247), .Z(n222) );
  AN2XD1 U126 ( .A1(n248), .A2(n246), .Z(n236) );
  AN2XD1 U128 ( .A1(n146), .A2(n142), .Z(n249) );
  AN2XD1 U131 ( .A1(n224), .A2(n250), .Z(n73) );
  AN4XD1 U140 ( .A1(n254), .A2(n33), .A3(n126), .A4(n255), .Z(n148) );
  AN2XD1 U143 ( .A1(n257), .A2(n258), .Z(n251) );
  AN2XD1 U145 ( .A1(n258), .A2(n259), .Z(n250) );
  AN2XD1 U155 ( .A1(n263), .A2(n224), .Z(n141) );
  AN4XD1 U156 ( .A1(n268), .A2(n127), .A3(n166), .A4(n178), .Z(n159) );
  AN3XD1 U159 ( .A1(n256), .A2(n255), .A3(n126), .Z(n268) );
  AN2XD1 U161 ( .A1(n269), .A2(n224), .Z(n133) );
  AN2XD1 U164 ( .A1(n248), .A2(n270), .Z(n265) );
  OR2D1 U165 ( .A1(n153), .A2(n25), .Z(n162) );
  AN2XD1 U167 ( .A1(n263), .A2(n9), .Z(n153) );
  AN2XD1 U168 ( .A1(n272), .A2(n259), .Z(n263) );
  AN4XD1 U169 ( .A1(n154), .A2(n143), .A3(n124), .A4(n118), .Z(n101) );
  AN2XD1 U172 ( .A1(n8), .A2(n271), .Z(n121) );
  AN2XD1 U174 ( .A1(n270), .A2(n247), .Z(n271) );
  AN2XD1 U177 ( .A1(n257), .A2(n272), .Z(n269) );
  AN4XD1 U178 ( .A1(n105), .A2(n209), .A3(n172), .A4(n82), .Z(n254) );
  AN4XD1 U187 ( .A1(n104), .A2(n124), .A3(n279), .A4(n145), .Z(n220) );
  AN2XD1 U195 ( .A1(n280), .A2(n224), .Z(n134) );
  AN2XD1 U200 ( .A1(n248), .A2(n258), .Z(n275) );
  AN2XD1 U205 ( .A1(n258), .A2(n247), .Z(n280) );
  AN2XD1 U214 ( .A1(n282), .A2(n224), .Z(n99) );
  AN2XD1 U215 ( .A1(n246), .A2(n259), .Z(n282) );
  AN2XD1 U219 ( .A1(n257), .A2(n270), .Z(n277) );
  AN2XD1 U226 ( .A1(n272), .A2(n247), .Z(n276) );
  AN3XD1 U230 ( .A1(n105), .A2(n204), .A3(n185), .Z(n189) );
  AN2XD1 U232 ( .A1(n248), .A2(n272), .Z(n284) );
  AN2XD1 U237 ( .A1(n257), .A2(n246), .Z(n281) );
  AN2XD1 U242 ( .A1(n259), .A2(n270), .Z(n278) );
  unified_mul_drop_l3_separate_div_DW_mult_tc_1_DW_mult_tc_3 mult_76_S2 ( .a({
        ry_9_, fy[18:10]}), .b({n289, b}), .product({py_15_, py_14_, py_13_, 
        py_12_, py_11_, py_10_, py_9_, py_8_, py_7_, py_6_, py_5_, py_4_, 
        py_3_, py_2_, py_1_, py_0_}) );
  unified_mul_drop_l3_separate_div_DW_mult_tc_0_DW_mult_tc_2 mult_76 ( .a({
        rx_9_, fx[18:10]}), .b({n289, n7, a}), .product({px_15, px_13_, px_12_, 
        px_11_, px_10_, px_9_, px_8_, px_7_, px_6_, px_5_, px_4_, px_3_, px_2_, 
        px_1_, px_0_}) );
  unified_mul_drop_l3_separate_div_DW01_add_0_DW01_add_2 add_1_root_sub_78 ( 
        .A({n289, n289, t, n289}), .B({px_15, px_15, px_15, px_15, px_15, 
        px_15, px_13_, px_12_, px_11_, px_10_, px_9_, px_8_, px_7_, px_6_, 
        px_5_, px_4_, px_3_, px_2_, px_1_, px_0_}), .CI(n289), .SUM({
        SYNOPSYS_UNCONNECTED__0, N2500, N2490, N2480, N2470, N2460, N245, N244, 
        N2430, N2420, N2410, N2400, N2390, N2380, N2370, N2360, N2350, N2340, 
        N2330, N2320}) );
  unified_mul_drop_l3_separate_div_DW01_sub_0 sub_0_root_sub_78 ( .A({1'b0, 
        1'b0, N2500, N2490, N2480, N2470, N2460, N245, N244, N2430, N2420, 
        N2410, N2400, N2390, N2380, N2370, N2360, N2350, N2340, N2330, N2320}), 
        .B({py_15_, py_15_, py_15_, py_15_, py_15_, py_15_, py_14_, py_13_, 
        py_12_, py_11_, py_10_, py_9_, py_8_, py_7_, py_6_, py_5_, py_4_, 
        py_3_, py_2_, py_1_, py_0_}), .CI(n289), .DIFF({
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, value[24:6]}) );
  TIEH U3 ( .Z(n7) );
  NR2D1 U10 ( .A1(n285), .A2(n69), .ZN(n224) );
  INVD1 U11 ( .I(b[4]), .ZN(n22) );
  INVD1 U12 ( .I(n218), .ZN(n33) );
  INVD1 U13 ( .I(n225), .ZN(n19) );
  INVD1 U14 ( .I(n266), .ZN(n18) );
  INVD1 U15 ( .I(n241), .ZN(n47) );
  INVD1 U16 ( .I(n147), .ZN(n39) );
  ND4D1 U17 ( .A1(n266), .A2(n152), .A3(n159), .A4(n267), .ZN(n225) );
  NR3D0 U18 ( .A1(n141), .A2(n64), .A3(n58), .ZN(n267) );
  ND4D1 U19 ( .A1(n118), .A2(n168), .A3(n169), .A4(n170), .ZN(t[14]) );
  NR3D0 U20 ( .A1(n42), .A2(n141), .A3(n48), .ZN(n169) );
  NR4D0 U21 ( .A1(n40), .A2(n53), .A3(n106), .A4(n171), .ZN(n170) );
  ND4D1 U22 ( .A1(n17), .A2(n143), .A3(n163), .A4(n164), .ZN(t[15]) );
  NR3D0 U23 ( .A1(n53), .A2(n32), .A3(n30), .ZN(n163) );
  NR4D0 U24 ( .A1(n59), .A2(n165), .A3(n134), .A4(n26), .ZN(n164) );
  ND4D1 U25 ( .A1(n148), .A2(n24), .A3(n252), .A4(n143), .ZN(b[4]) );
  NR2D1 U26 ( .A1(n40), .A2(n41), .ZN(n252) );
  ND2D1 U28 ( .A1(n256), .A2(n168), .ZN(n218) );
  NR3D0 U29 ( .A1(n20), .A2(n59), .A3(n134), .ZN(n266) );
  NR2D1 U30 ( .A1(n36), .A2(n133), .ZN(n152) );
  NR4D0 U31 ( .A1(n54), .A2(n42), .A3(n73), .A4(n44), .ZN(n146) );
  INVD1 U32 ( .I(n116), .ZN(n24) );
  NR3D0 U33 ( .A1(n63), .A2(n64), .A3(n62), .ZN(n142) );
  ND4D1 U34 ( .A1(n189), .A2(n140), .A3(n16), .A4(n273), .ZN(a[0]) );
  NR4D0 U35 ( .A1(n58), .A2(n30), .A3(n18), .A4(n108), .ZN(n273) );
  INVD1 U36 ( .I(n90), .ZN(n31) );
  INVD1 U37 ( .I(n239), .ZN(n12) );
  INR4D0 U38 ( .A1(n283), .B1(n205), .B2(n70), .B3(n32), .ZN(n140) );
  NR2D1 U39 ( .A1(n44), .A2(n11), .ZN(n283) );
  NR2D1 U41 ( .A1(n57), .A2(n99), .ZN(n241) );
  INR4D0 U42 ( .A1(n240), .B1(n180), .B2(n162), .B3(n47), .ZN(n100) );
  NR2D1 U43 ( .A1(n65), .A2(n26), .ZN(n240) );
  NR3D0 U44 ( .A1(n134), .A2(n73), .A3(n133), .ZN(n195) );
  ND4D1 U45 ( .A1(n100), .A2(n37), .A3(n226), .A4(n227), .ZN(b[2]) );
  NR4D0 U46 ( .A1(n44), .A2(n20), .A3(n68), .A4(n23), .ZN(n227) );
  INVD1 U49 ( .I(n201), .ZN(n16) );
  INVD1 U50 ( .I(n118), .ZN(n23) );
  INVD1 U51 ( .I(n181), .ZN(n68) );
  INVD1 U52 ( .I(n137), .ZN(n37) );
  NR3D0 U53 ( .A1(n45), .A2(n64), .A3(n53), .ZN(n196) );
  NR3D0 U54 ( .A1(n50), .A2(n141), .A3(n40), .ZN(n147) );
  NR4D0 U55 ( .A1(n95), .A2(n35), .A3(n133), .A4(n141), .ZN(n77) );
  IINR4D0 U56 ( .A1(n140), .A2(n77), .B1(n41), .B2(n107), .ZN(n139) );
  ND4D1 U57 ( .A1(n142), .A2(n143), .A3(n24), .A4(n144), .ZN(n95) );
  NR3D0 U58 ( .A1(n30), .A2(n31), .A3(n38), .ZN(n144) );
  INVD1 U59 ( .I(n168), .ZN(n38) );
  NR4D0 U61 ( .A1(n27), .A2(n66), .A3(n30), .A4(n26), .ZN(n193) );
  INVD1 U62 ( .I(n185), .ZN(n55) );
  NR4D0 U65 ( .A1(n216), .A2(n51), .A3(n60), .A4(n20), .ZN(n215) );
  NR3D0 U67 ( .A1(n39), .A2(n47), .A3(n218), .ZN(n214) );
  ND4D1 U68 ( .A1(n192), .A2(n188), .A3(n202), .A4(n203), .ZN(n171) );
  NR4D0 U69 ( .A1(n63), .A2(n133), .A3(n49), .A4(n29), .ZN(n203) );
  INR2D1 U70 ( .A1(n190), .B1(n205), .ZN(n202) );
  ND4D1 U71 ( .A1(n254), .A2(n101), .A3(n260), .A4(n261), .ZN(a[1]) );
  NR4D0 U72 ( .A1(n262), .A2(n15), .A3(n44), .A4(n51), .ZN(n261) );
  NR3D0 U73 ( .A1(n162), .A2(n62), .A3(n225), .ZN(n260) );
  ND2D1 U75 ( .A1(n188), .A2(n264), .ZN(n262) );
  ND4D1 U76 ( .A1(n155), .A2(n22), .A3(n156), .A4(n157), .ZN(t[17]) );
  INR3D0 U77 ( .A1(n152), .B1(n158), .B2(n134), .ZN(n157) );
  ND4D1 U78 ( .A1(n159), .A2(n123), .A3(n160), .A4(n161), .ZN(t[16]) );
  NR3D0 U79 ( .A1(n56), .A2(n52), .A3(n23), .ZN(n160) );
  NR4D0 U80 ( .A1(n70), .A2(n129), .A3(n162), .A4(n107), .ZN(n161) );
  ND2D1 U81 ( .A1(n277), .A2(n224), .ZN(n256) );
  ND4D1 U82 ( .A1(n198), .A2(n22), .A3(n150), .A4(n249), .ZN(a[2]) );
  ND2D1 U83 ( .A1(n278), .A2(n224), .ZN(n105) );
  ND2D1 U84 ( .A1(n251), .A2(n224), .ZN(n168) );
  IND4D1 U85 ( .A1(n122), .B1(n148), .B2(n174), .B3(n175), .ZN(t[13]) );
  NR4D0 U86 ( .A1(n176), .A2(n60), .A3(n64), .A4(n58), .ZN(n175) );
  NR3D0 U87 ( .A1(n180), .A2(n55), .A3(n75), .ZN(n174) );
  INVD1 U88 ( .I(n155), .ZN(n64) );
  INVD1 U89 ( .I(n173), .ZN(n59) );
  ND4D1 U90 ( .A1(n189), .A2(n109), .A3(n190), .A4(n191), .ZN(t[12]) );
  NR4D0 U91 ( .A1(n38), .A2(n46), .A3(n41), .A4(n129), .ZN(n191) );
  INVD1 U92 ( .I(n206), .ZN(n58) );
  INVD1 U93 ( .I(n156), .ZN(n20) );
  INR2D1 U94 ( .A1(n184), .B1(n121), .ZN(n143) );
  INVD1 U95 ( .I(n177), .ZN(n35) );
  ND4D1 U96 ( .A1(n177), .A2(n198), .A3(n199), .A4(n200), .ZN(t[11]) );
  NR3D0 U97 ( .A1(n57), .A2(n25), .A3(n50), .ZN(n199) );
  INR4D0 U98 ( .A1(n193), .B1(n46), .B2(n171), .B3(n201), .ZN(n200) );
  ND4D1 U99 ( .A1(n16), .A2(n17), .A3(n210), .A4(n211), .ZN(t[10]) );
  NR2D1 U100 ( .A1(n116), .A2(n97), .ZN(n210) );
  NR4D0 U101 ( .A1(n64), .A2(n11), .A3(n12), .A4(n153), .ZN(n211) );
  INVD1 U102 ( .I(n231), .ZN(n36) );
  IND4D1 U103 ( .A1(n70), .B1(n19), .B2(n71), .B3(n72), .ZN(t[9]) );
  NR4D0 U104 ( .A1(n25), .A2(n73), .A3(n14), .A4(n65), .ZN(n72) );
  NR2D1 U105 ( .A1(n74), .A2(n75), .ZN(n71) );
  ND2D1 U106 ( .A1(n224), .A2(n271), .ZN(n118) );
  ND3D1 U107 ( .A1(n188), .A2(n253), .A3(n118), .ZN(n116) );
  INVD1 U108 ( .I(n89), .ZN(n44) );
  IND4D1 U109 ( .A1(n76), .B1(n77), .B2(n78), .B3(n79), .ZN(t[8]) );
  NR3D0 U110 ( .A1(n74), .A2(n29), .A3(n28), .ZN(n78) );
  NR4D0 U111 ( .A1(n80), .A2(n59), .A3(n65), .A4(n60), .ZN(n79) );
  INVD1 U112 ( .I(n253), .ZN(n25) );
  ND2D1 U113 ( .A1(n265), .A2(n224), .ZN(n188) );
  IND4D1 U114 ( .A1(n83), .B1(n84), .B2(n85), .B3(n86), .ZN(t[7]) );
  NR3D0 U115 ( .A1(n12), .A2(n55), .A3(n13), .ZN(n85) );
  NR4D0 U116 ( .A1(n87), .A2(n56), .A3(n32), .A4(n46), .ZN(n86) );
  INVD1 U117 ( .I(n235), .ZN(n42) );
  INVD1 U118 ( .I(n117), .ZN(n62) );
  ND4D1 U119 ( .A1(n91), .A2(n92), .A3(n93), .A4(n94), .ZN(t[6]) );
  NR3D0 U120 ( .A1(n99), .A2(n58), .A3(n59), .ZN(n93) );
  NR4D0 U121 ( .A1(n95), .A2(n96), .A3(n97), .A4(n98), .ZN(n94) );
  INVD1 U122 ( .I(n128), .ZN(n54) );
  INVD1 U123 ( .I(n151), .ZN(n41) );
  ND2D1 U125 ( .A1(n275), .A2(n224), .ZN(n124) );
  INVD1 U127 ( .I(n92), .ZN(n40) );
  INVD1 U129 ( .I(n81), .ZN(n51) );
  INVD1 U130 ( .I(n166), .ZN(n63) );
  ND4D1 U132 ( .A1(n100), .A2(n101), .A3(n102), .A4(n103), .ZN(t[5]) );
  NR2D1 U133 ( .A1(n39), .A2(n107), .ZN(n102) );
  IINR4D0 U134 ( .A1(n104), .A2(n105), .B1(n20), .B2(n106), .ZN(n103) );
  INVD1 U135 ( .I(n186), .ZN(n15) );
  IND4D1 U136 ( .A1(n108), .B1(n109), .B2(n110), .B3(n111), .ZN(t[4]) );
  NR4D0 U137 ( .A1(n112), .A2(n67), .A3(n28), .A4(n54), .ZN(n111) );
  NR3D0 U138 ( .A1(n34), .A2(n56), .A3(n116), .ZN(n110) );
  ND4D1 U139 ( .A1(n117), .A2(n118), .A3(n119), .A4(n120), .ZN(t[3]) );
  NR3D0 U141 ( .A1(n45), .A2(n73), .A3(n20), .ZN(n119) );
  NR4D0 U142 ( .A1(n121), .A2(n83), .A3(n98), .A4(n122), .ZN(n120) );
  ND4D1 U144 ( .A1(n220), .A2(n154), .A3(n146), .A4(n221), .ZN(n158) );
  NR4D0 U146 ( .A1(n11), .A2(n15), .A3(n62), .A4(n12), .ZN(n221) );
  ND4D1 U147 ( .A1(n179), .A2(n167), .A3(n19), .A4(n219), .ZN(b[3]) );
  NR3D0 U148 ( .A1(n213), .A2(n107), .A3(n158), .ZN(n219) );
  ND4D1 U149 ( .A1(n220), .A2(n209), .A3(n274), .A4(n127), .ZN(n108) );
  INR2D1 U150 ( .A1(n256), .B1(n14), .ZN(n274) );
  NR2D1 U151 ( .A1(n31), .A2(n21), .ZN(n279) );
  INVD1 U152 ( .I(n264), .ZN(n21) );
  ND2D1 U153 ( .A1(n281), .A2(n224), .ZN(n90) );
  ND2D1 U154 ( .A1(n276), .A2(n224), .ZN(n239) );
  ND4D1 U157 ( .A1(n241), .A2(n187), .A3(n88), .A4(n113), .ZN(n70) );
  ND4D1 U158 ( .A1(n140), .A2(n101), .A3(n232), .A4(n233), .ZN(b[1]) );
  NR3D0 U160 ( .A1(n96), .A2(n74), .A3(n218), .ZN(n232) );
  NR4D0 U162 ( .A1(n27), .A2(n234), .A3(n153), .A4(n18), .ZN(n233) );
  INVD1 U163 ( .I(n136), .ZN(n57) );
  ND4D1 U166 ( .A1(n104), .A2(n123), .A3(n138), .A4(n139), .ZN(t[2]) );
  NR3D0 U170 ( .A1(n13), .A2(n73), .A3(n14), .ZN(n138) );
  ND4D1 U171 ( .A1(n123), .A2(n217), .A3(n195), .A4(n242), .ZN(n180) );
  NR3D0 U173 ( .A1(n66), .A2(n42), .A3(n56), .ZN(n242) );
  INVD1 U175 ( .I(n135), .ZN(n11) );
  INVD1 U176 ( .I(n243), .ZN(n56) );
  INVD1 U179 ( .I(n167), .ZN(n14) );
  ND4D1 U180 ( .A1(n239), .A2(n243), .A3(n82), .A4(n126), .ZN(n205) );
  INVD1 U181 ( .I(n91), .ZN(n66) );
  ND4D1 U182 ( .A1(n172), .A2(n105), .A3(n228), .A4(n229), .ZN(n76) );
  NR2D1 U183 ( .A1(n49), .A2(n48), .ZN(n228) );
  NR4D0 U184 ( .A1(n54), .A2(n15), .A3(n21), .A4(n67), .ZN(n229) );
  INVD1 U185 ( .I(n230), .ZN(n67) );
  ND4D1 U186 ( .A1(n150), .A2(n185), .A3(n204), .A4(n81), .ZN(n107) );
  ND2D1 U188 ( .A1(n284), .A2(n224), .ZN(n185) );
  ND3D1 U189 ( .A1(n235), .A2(n198), .A3(n115), .ZN(n74) );
  ND4D1 U190 ( .A1(n100), .A2(n147), .A3(n237), .A4(n238), .ZN(b[0]) );
  NR4D0 U191 ( .A1(n44), .A2(n35), .A3(n121), .A4(n12), .ZN(n238) );
  INR2D1 U192 ( .A1(n196), .B1(n108), .ZN(n237) );
  INVD1 U193 ( .I(n115), .ZN(n26) );
  INVD1 U194 ( .I(n187), .ZN(n48) );
  INVD1 U196 ( .I(n114), .ZN(n65) );
  ND3D1 U197 ( .A1(n230), .A2(n181), .A3(n150), .ZN(n96) );
  INVD1 U198 ( .I(n88), .ZN(n49) );
  INVD1 U199 ( .I(n172), .ZN(n32) );
  ND2D1 U201 ( .A1(n117), .A2(n155), .ZN(n234) );
  ND2D1 U202 ( .A1(n236), .A2(n224), .ZN(n181) );
  ND3D1 U203 ( .A1(n198), .A2(n183), .A3(n208), .ZN(n213) );
  INVD1 U204 ( .I(n179), .ZN(n30) );
  INVD1 U206 ( .I(n217), .ZN(n27) );
  ND3D1 U207 ( .A1(n186), .A2(n255), .A3(n123), .ZN(n201) );
  ND2D1 U208 ( .A1(n222), .A2(n224), .ZN(n183) );
  ND2D1 U209 ( .A1(n231), .A2(n113), .ZN(n137) );
  INVD1 U210 ( .I(n150), .ZN(n53) );
  INVD1 U211 ( .I(n82), .ZN(n45) );
  INVD1 U212 ( .I(n178), .ZN(n50) );
  ND4D1 U213 ( .A1(n192), .A2(n193), .A3(n194), .A4(n173), .ZN(n129) );
  NR2D1 U216 ( .A1(n65), .A2(n141), .ZN(n194) );
  NR3D0 U217 ( .A1(n67), .A2(n68), .A3(n28), .ZN(n207) );
  IND4D1 U218 ( .A1(n129), .B1(n33), .B2(n130), .B3(n131), .ZN(n83) );
  NR3D0 U220 ( .A1(n137), .A2(n21), .A3(n40), .ZN(n130) );
  NR4D0 U221 ( .A1(n132), .A2(n133), .A3(n50), .A4(n134), .ZN(n131) );
  ND2D1 U222 ( .A1(n135), .A2(n136), .ZN(n132) );
  INVD1 U223 ( .I(n208), .ZN(n28) );
  NR4D0 U224 ( .A1(n34), .A2(n153), .A3(n51), .A4(n52), .ZN(n84) );
  ND4D1 U225 ( .A1(n146), .A2(n147), .A3(n148), .A4(n149), .ZN(t[1]) );
  INVD1 U227 ( .I(n154), .ZN(n34) );
  INVD1 U228 ( .I(n198), .ZN(n52) );
  ND4D1 U229 ( .A1(n123), .A2(n124), .A3(n104), .A4(n125), .ZN(n98) );
  NR4D0 U231 ( .A1(n36), .A2(n48), .A3(n99), .A4(n52), .ZN(n197) );
  ND3D1 U233 ( .A1(n186), .A2(n187), .A3(n188), .ZN(n122) );
  INVD1 U234 ( .I(n145), .ZN(n13) );
  ND3D1 U235 ( .A1(n172), .A2(n173), .A3(n37), .ZN(n106) );
  ND3D1 U236 ( .A1(n113), .A2(n114), .A3(n115), .ZN(n112) );
  ND3D1 U238 ( .A1(n88), .A2(n114), .A3(n209), .ZN(n97) );
  INVD1 U239 ( .I(n209), .ZN(n46) );
  ND3D1 U240 ( .A1(n88), .A2(n89), .A3(n90), .ZN(n87) );
  INVD1 U241 ( .I(n127), .ZN(n60) );
  NR3D0 U243 ( .A1(n121), .A2(n21), .A3(n153), .ZN(n190) );
  ND4D1 U244 ( .A1(n181), .A2(n90), .A3(n182), .A4(n135), .ZN(n75) );
  ND2D1 U245 ( .A1(n81), .A2(n82), .ZN(n80) );
  INVD1 U246 ( .I(n204), .ZN(n29) );
  ND2D1 U247 ( .A1(n151), .A2(n217), .ZN(n216) );
  ND3D1 U248 ( .A1(n177), .A2(n178), .A3(n179), .ZN(n176) );
  ND2D1 U249 ( .A1(n166), .A2(n167), .ZN(n165) );
  ND2D1 U250 ( .A1(n277), .A2(n10), .ZN(n126) );
  ND2D1 U251 ( .A1(n8), .A2(n277), .ZN(n255) );
  ND2D1 U252 ( .A1(n277), .A2(n9), .ZN(n172) );
  ND2D1 U253 ( .A1(n278), .A2(n10), .ZN(n82) );
  ND2D1 U254 ( .A1(n278), .A2(n8), .ZN(n209) );
  ND2D1 U255 ( .A1(n8), .A2(n275), .ZN(n127) );
  ND2D1 U256 ( .A1(n265), .A2(n9), .ZN(n166) );
  ND2D1 U257 ( .A1(n263), .A2(n10), .ZN(n178) );
  NR2D1 U258 ( .A1(n288), .A2(n43), .ZN(n247) );
  ND2D1 U259 ( .A1(n265), .A2(n10), .ZN(n155) );
  ND2D1 U260 ( .A1(n275), .A2(n10), .ZN(n173) );
  ND2D1 U261 ( .A1(n275), .A2(n9), .ZN(n206) );
  ND2D1 U262 ( .A1(n280), .A2(n10), .ZN(n156) );
  AOI21D1 U263 ( .A1(n9), .A2(n269), .B(n35), .ZN(n154) );
  ND2D1 U264 ( .A1(n269), .A2(n8), .ZN(n177) );
  ND2D1 U265 ( .A1(n9), .A2(n271), .ZN(n184) );
  ND2D1 U266 ( .A1(n269), .A2(n10), .ZN(n231) );
  ND2D1 U267 ( .A1(n278), .A2(n9), .ZN(n89) );
  ND2D1 U268 ( .A1(n10), .A2(n271), .ZN(n253) );
  ND2D1 U269 ( .A1(n251), .A2(n9), .ZN(n235) );
  ND2D1 U270 ( .A1(n8), .A2(n265), .ZN(n117) );
  ND2D1 U271 ( .A1(n250), .A2(n10), .ZN(n128) );
  ND2D1 U272 ( .A1(n251), .A2(n8), .ZN(n151) );
  ND2D1 U273 ( .A1(n251), .A2(n10), .ZN(n92) );
  ND2D1 U274 ( .A1(n8), .A2(n263), .ZN(n81) );
  ND2D1 U275 ( .A1(n280), .A2(n9), .ZN(n186) );
  ND2D1 U276 ( .A1(n280), .A2(n8), .ZN(n264) );
  NR2D1 U277 ( .A1(n286), .A2(n287), .ZN(n246) );
  ND2D1 U278 ( .A1(n8), .A2(n250), .ZN(n150) );
  ND2D1 U279 ( .A1(n9), .A2(n250), .ZN(n198) );
  ND2D1 U280 ( .A1(n284), .A2(n10), .ZN(n136) );
  ND2D1 U281 ( .A1(n8), .A2(n276), .ZN(n145) );
  ND2D1 U282 ( .A1(n276), .A2(n10), .ZN(n135) );
  ND2D1 U283 ( .A1(n281), .A2(n10), .ZN(n104) );
  ND2D1 U284 ( .A1(n284), .A2(n8), .ZN(n243) );
  ND2D1 U285 ( .A1(n9), .A2(n276), .ZN(n167) );
  ND2D1 U286 ( .A1(n284), .A2(n9), .ZN(n113) );
  ND2D1 U287 ( .A1(n282), .A2(n8), .ZN(n88) );
  ND2D1 U288 ( .A1(n8), .A2(n236), .ZN(n91) );
  ND2D1 U289 ( .A1(n282), .A2(n10), .ZN(n187) );
  ND2D1 U290 ( .A1(n236), .A2(n10), .ZN(n230) );
  ND2D1 U291 ( .A1(n281), .A2(n8), .ZN(n204) );
  ND2D1 U292 ( .A1(n222), .A2(n9), .ZN(n115) );
  ND2D1 U293 ( .A1(n236), .A2(n9), .ZN(n114) );
  ND2D1 U294 ( .A1(n222), .A2(n8), .ZN(n217) );
  ND2D1 U295 ( .A1(n282), .A2(n9), .ZN(n123) );
  ND2D1 U296 ( .A1(n281), .A2(n9), .ZN(n179) );
  ND2D1 U297 ( .A1(n222), .A2(n10), .ZN(n208) );
  NR2D1 U298 ( .A1(n43), .A2(fy[20]), .ZN(n257) );
  INVD1 U299 ( .I(fx[22]), .ZN(n43) );
  NR2D1 U300 ( .A1(fy[22]), .A2(fy[21]), .ZN(n270) );
  INVD1 U301 ( .I(fx[21]), .ZN(n69) );
  INVD1 U304 ( .I(fx[20]), .ZN(n285) );
  NR2D1 U307 ( .A1(fy[20]), .A2(fx[22]), .ZN(n259) );
  NR2D1 U308 ( .A1(n287), .A2(fy[22]), .ZN(n258) );
  NR2D1 U311 ( .A1(n288), .A2(fx[22]), .ZN(n248) );
  NR2D1 U312 ( .A1(n286), .A2(fy[21]), .ZN(n272) );
  INVD1 U313 ( .I(fy[22]), .ZN(n286) );
  INVD1 U314 ( .I(fy[21]), .ZN(n287) );
  INVD1 U315 ( .I(fy[20]), .ZN(n288) );
  INVD1 U316 ( .I(fx[19]), .ZN(rx_9_) );
  INVD1 U317 ( .I(fy[19]), .ZN(ry_9_) );
  TIEL U318 ( .ZN(n289) );
  NR2D0 U4 ( .A1(n290), .A2(n213), .ZN(n17) );
  ND3D0 U5 ( .A1(n215), .A2(n189), .A3(n214), .ZN(n290) );
  INR2D0 U6 ( .A1(n142), .B1(n76), .ZN(n226) );
  NR2XD0 U7 ( .A1(fx[21]), .A2(fx[20]), .ZN(n9) );
  NR2XD0 U8 ( .A1(n69), .A2(fx[20]), .ZN(n10) );
  NR2D2 U9 ( .A1(n285), .A2(fx[21]), .ZN(n8) );
endmodule


module unified_mul_drop_l3_separate_mul_DW_mult_tc_1 ( a, b, product );
  input [9:0] a;
  input [5:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n16, n17,
         n18, n19, n20, n21, n23, n24, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n64, n65, n66, n67, n68, n69, n70, n71, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n178;

  FA1D0 U2 ( .A(n153), .B(n155), .CI(n2), .CO(n1), .S(product[14]) );
  FA1D0 U3 ( .A(n17), .B(n16), .CI(n3), .CO(n2), .S(product[13]) );
  FA1D0 U4 ( .A(n18), .B(n19), .CI(n4), .CO(n3), .S(product[12]) );
  FA1D0 U5 ( .A(n20), .B(n23), .CI(n5), .CO(n4), .S(product[11]) );
  FA1D0 U6 ( .A(n24), .B(n26), .CI(n6), .CO(n5), .S(product[10]) );
  FA1D0 U7 ( .A(n27), .B(n28), .CI(n7), .CO(n6), .S(product[9]) );
  FA1D0 U8 ( .A(n29), .B(n30), .CI(n8), .CO(n7), .S(product[8]) );
  FA1D0 U9 ( .A(n31), .B(n32), .CI(n9), .CO(n8), .S(product[7]) );
  FA1D0 U10 ( .A(n33), .B(n34), .CI(n10), .CO(n9), .S(product[6]) );
  FA1D0 U11 ( .A(n35), .B(n36), .CI(n11), .CO(n10), .S(product[5]) );
  FA1D0 U12 ( .A(n37), .B(n38), .CI(n12), .CO(n11), .S(product[4]) );
  FA1D0 U13 ( .A(n39), .B(n40), .CI(n13), .CO(n12), .S(product[3]) );
  FA1D0 U14 ( .A(n62), .B(n70), .CI(n14), .CO(n13), .S(product[2]) );
  HA1D0 U15 ( .A(n71), .B(n41), .CO(n14), .S(product[1]) );
  FA1D0 U17 ( .A(n43), .B(n21), .CI(n52), .CO(n17), .S(n18) );
  FA1D0 U18 ( .A(n154), .B(n44), .CI(n53), .CO(n19), .S(n20) );
  FA1D0 U20 ( .A(n154), .B(n45), .CI(n54), .CO(n23), .S(n24) );
  FA1D0 U22 ( .A(n46), .B(n154), .CI(n55), .CO(n26), .S(n27) );
  FA1D0 U23 ( .A(n47), .B(n64), .CI(n56), .CO(n28), .S(n29) );
  FA1D0 U24 ( .A(n48), .B(n65), .CI(n57), .CO(n30), .S(n31) );
  FA1D0 U25 ( .A(n49), .B(n66), .CI(n58), .CO(n32), .S(n33) );
  FA1D0 U26 ( .A(n50), .B(n67), .CI(n59), .CO(n34), .S(n35) );
  FA1D0 U27 ( .A(n68), .B(n51), .CI(n60), .CO(n36), .S(n37) );
  HA1D0 U28 ( .A(n61), .B(n69), .CO(n38), .S(n39) );
  INVD1 U110 ( .I(n151), .ZN(n152) );
  INVD1 U111 ( .I(n21), .ZN(n154) );
  CKBD1 U112 ( .I(b[3]), .Z(n151) );
  INVD1 U113 ( .I(n16), .ZN(n153) );
  INVD1 U114 ( .I(a[9]), .ZN(n155) );
  INVD1 U115 ( .I(a[1]), .ZN(n163) );
  INVD1 U116 ( .I(a[0]), .ZN(n164) );
  INVD1 U117 ( .I(a[2]), .ZN(n162) );
  INVD1 U118 ( .I(a[3]), .ZN(n161) );
  INVD1 U119 ( .I(a[4]), .ZN(n160) );
  INVD1 U120 ( .I(a[5]), .ZN(n159) );
  INVD1 U121 ( .I(a[6]), .ZN(n158) );
  INVD1 U122 ( .I(a[7]), .ZN(n157) );
  INVD1 U123 ( .I(a[8]), .ZN(n156) );
  CKBD1 U124 ( .I(a[0]), .Z(product[0]) );
  CKND0 U125 ( .I(n1), .ZN(product[15]) );
  CKXOR2D0 U126 ( .A1(b[1]), .A2(a[1]), .Z(n71) );
  CKXOR2D0 U127 ( .A1(b[1]), .A2(a[2]), .Z(n70) );
  CKXOR2D0 U128 ( .A1(b[1]), .A2(a[3]), .Z(n69) );
  CKXOR2D0 U129 ( .A1(b[1]), .A2(a[4]), .Z(n68) );
  CKXOR2D0 U130 ( .A1(b[1]), .A2(a[5]), .Z(n67) );
  CKXOR2D0 U131 ( .A1(b[1]), .A2(a[6]), .Z(n66) );
  CKXOR2D0 U132 ( .A1(b[1]), .A2(a[7]), .Z(n65) );
  CKXOR2D0 U133 ( .A1(b[1]), .A2(a[8]), .Z(n64) );
  NR2D0 U134 ( .A1(n165), .A2(n164), .ZN(n62) );
  OAI22D0 U135 ( .A1(n166), .A2(n167), .B1(n165), .B2(n168), .ZN(n61) );
  CKXOR2D0 U136 ( .A1(n151), .A2(n164), .Z(n166) );
  OAI22D0 U137 ( .A1(n168), .A2(n167), .B1(n165), .B2(n169), .ZN(n60) );
  CKXOR2D0 U138 ( .A1(n151), .A2(n163), .Z(n168) );
  OAI22D0 U139 ( .A1(n169), .A2(n167), .B1(n165), .B2(n170), .ZN(n59) );
  CKXOR2D0 U140 ( .A1(n151), .A2(n162), .Z(n169) );
  OAI22D0 U141 ( .A1(n170), .A2(n167), .B1(n165), .B2(n171), .ZN(n58) );
  CKXOR2D0 U142 ( .A1(n151), .A2(n161), .Z(n170) );
  OAI22D0 U143 ( .A1(n171), .A2(n167), .B1(n165), .B2(n172), .ZN(n57) );
  CKXOR2D0 U144 ( .A1(n151), .A2(n160), .Z(n171) );
  OAI22D0 U145 ( .A1(n172), .A2(n167), .B1(n165), .B2(n173), .ZN(n56) );
  CKXOR2D0 U146 ( .A1(n151), .A2(n159), .Z(n172) );
  OAI22D0 U147 ( .A1(n173), .A2(n167), .B1(n165), .B2(n174), .ZN(n55) );
  CKXOR2D0 U148 ( .A1(n151), .A2(n158), .Z(n173) );
  OAI22D0 U149 ( .A1(n174), .A2(n167), .B1(n165), .B2(n175), .ZN(n54) );
  CKXOR2D0 U150 ( .A1(n151), .A2(n157), .Z(n174) );
  OAI22D0 U151 ( .A1(n175), .A2(n167), .B1(n165), .B2(n176), .ZN(n53) );
  CKXOR2D0 U152 ( .A1(n151), .A2(n156), .Z(n175) );
  AO21D0 U153 ( .A1(n167), .A2(n165), .B(n176), .Z(n52) );
  CKXOR2D0 U154 ( .A1(n152), .A2(a[9]), .Z(n176) );
  NR2D0 U155 ( .A1(n151), .A2(n164), .ZN(n51) );
  MUX2ND0 U156 ( .I0(n163), .I1(n164), .S(n151), .ZN(n50) );
  MUX2ND0 U157 ( .I0(n162), .I1(n163), .S(n151), .ZN(n49) );
  MUX2ND0 U158 ( .I0(n161), .I1(n162), .S(n151), .ZN(n48) );
  MUX2ND0 U159 ( .I0(n160), .I1(n161), .S(n151), .ZN(n47) );
  MUX2ND0 U160 ( .I0(n159), .I1(n160), .S(n151), .ZN(n46) );
  MUX2ND0 U161 ( .I0(n158), .I1(n159), .S(n151), .ZN(n45) );
  MUX2ND0 U162 ( .I0(n157), .I1(n158), .S(n151), .ZN(n44) );
  MUX2ND0 U163 ( .I0(n156), .I1(n157), .S(n151), .ZN(n43) );
  AN2D0 U164 ( .A1(b[1]), .A2(n164), .Z(n41) );
  OAI32D0 U165 ( .A1(n152), .A2(a[0]), .A3(n165), .B1(n152), .B2(n167), .ZN(
        n40) );
  CKXOR2D0 U167 ( .A1(b[1]), .A2(n155), .Z(n21) );
  MUX2ND0 U168 ( .I0(a[9]), .I1(a[8]), .S(n151), .ZN(n16) );
  OAI211D0 U108 ( .A1(b[2]), .A2(n151), .B(n178), .C(n165), .ZN(n167) );
  XNR2D0 U109 ( .A1(b[2]), .A2(b[1]), .ZN(n165) );
  CKND2D0 U166 ( .A1(b[2]), .A2(n151), .ZN(n178) );
endmodule


module unified_mul_drop_l3_separate_mul_DW_mult_tc_0 ( a, b, product );
  input [9:0] a;
  input [5:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n16, n17,
         n18, n19, n20, n21, n23, n24, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n64, n65, n66, n67, n68, n69, n70, n71, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n178;

  FA1D0 U2 ( .A(n154), .B(n155), .CI(n2), .CO(n1), .S(product[14]) );
  FA1D0 U3 ( .A(n17), .B(n16), .CI(n3), .CO(n2), .S(product[13]) );
  FA1D0 U4 ( .A(n18), .B(n19), .CI(n4), .CO(n3), .S(product[12]) );
  FA1D0 U5 ( .A(n20), .B(n23), .CI(n5), .CO(n4), .S(product[11]) );
  FA1D0 U6 ( .A(n24), .B(n26), .CI(n6), .CO(n5), .S(product[10]) );
  FA1D0 U7 ( .A(n27), .B(n28), .CI(n7), .CO(n6), .S(product[9]) );
  FA1D0 U8 ( .A(n29), .B(n30), .CI(n8), .CO(n7), .S(product[8]) );
  FA1D0 U9 ( .A(n31), .B(n32), .CI(n9), .CO(n8), .S(product[7]) );
  FA1D0 U10 ( .A(n33), .B(n34), .CI(n10), .CO(n9), .S(product[6]) );
  FA1D0 U11 ( .A(n35), .B(n36), .CI(n11), .CO(n10), .S(product[5]) );
  FA1D0 U12 ( .A(n37), .B(n38), .CI(n12), .CO(n11), .S(product[4]) );
  FA1D0 U13 ( .A(n39), .B(n40), .CI(n13), .CO(n12), .S(product[3]) );
  FA1D0 U14 ( .A(n62), .B(n70), .CI(n14), .CO(n13), .S(product[2]) );
  HA1D0 U15 ( .A(n71), .B(n41), .CO(n14), .S(product[1]) );
  FA1D0 U17 ( .A(n43), .B(n21), .CI(n52), .CO(n17), .S(n18) );
  FA1D0 U18 ( .A(n152), .B(n44), .CI(n53), .CO(n19), .S(n20) );
  FA1D0 U20 ( .A(n152), .B(n45), .CI(n54), .CO(n23), .S(n24) );
  FA1D0 U22 ( .A(n46), .B(n152), .CI(n55), .CO(n26), .S(n27) );
  FA1D0 U23 ( .A(n47), .B(n64), .CI(n56), .CO(n28), .S(n29) );
  FA1D0 U24 ( .A(n48), .B(n65), .CI(n57), .CO(n30), .S(n31) );
  FA1D0 U25 ( .A(n49), .B(n66), .CI(n58), .CO(n32), .S(n33) );
  FA1D0 U26 ( .A(n50), .B(n67), .CI(n59), .CO(n34), .S(n35) );
  FA1D0 U27 ( .A(n68), .B(n51), .CI(n60), .CO(n36), .S(n37) );
  HA1D0 U28 ( .A(n61), .B(n69), .CO(n38), .S(n39) );
  INVD1 U108 ( .I(n151), .ZN(n153) );
  CKBD1 U111 ( .I(b[3]), .Z(n151) );
  INVD1 U112 ( .I(n21), .ZN(n152) );
  INVD1 U113 ( .I(n16), .ZN(n154) );
  INVD1 U114 ( .I(a[9]), .ZN(n155) );
  INVD1 U115 ( .I(a[0]), .ZN(n164) );
  INVD1 U116 ( .I(a[1]), .ZN(n163) );
  INVD1 U117 ( .I(a[2]), .ZN(n162) );
  INVD1 U118 ( .I(a[3]), .ZN(n161) );
  INVD1 U119 ( .I(a[4]), .ZN(n160) );
  INVD1 U120 ( .I(a[5]), .ZN(n159) );
  INVD1 U121 ( .I(a[6]), .ZN(n158) );
  INVD1 U122 ( .I(a[7]), .ZN(n157) );
  CKBD1 U123 ( .I(a[0]), .Z(product[0]) );
  INVD1 U124 ( .I(a[8]), .ZN(n156) );
  CKND0 U125 ( .I(n1), .ZN(product[15]) );
  CKXOR2D0 U126 ( .A1(b[1]), .A2(a[1]), .Z(n71) );
  CKXOR2D0 U127 ( .A1(b[1]), .A2(a[2]), .Z(n70) );
  CKXOR2D0 U128 ( .A1(b[1]), .A2(a[3]), .Z(n69) );
  CKXOR2D0 U129 ( .A1(b[1]), .A2(a[4]), .Z(n68) );
  CKXOR2D0 U130 ( .A1(b[1]), .A2(a[5]), .Z(n67) );
  CKXOR2D0 U131 ( .A1(b[1]), .A2(a[6]), .Z(n66) );
  CKXOR2D0 U132 ( .A1(b[1]), .A2(a[7]), .Z(n65) );
  CKXOR2D0 U133 ( .A1(b[1]), .A2(a[8]), .Z(n64) );
  NR2D0 U134 ( .A1(n165), .A2(n164), .ZN(n62) );
  OAI22D0 U135 ( .A1(n166), .A2(n167), .B1(n165), .B2(n168), .ZN(n61) );
  CKXOR2D0 U136 ( .A1(n151), .A2(n164), .Z(n166) );
  OAI22D0 U137 ( .A1(n168), .A2(n167), .B1(n165), .B2(n169), .ZN(n60) );
  CKXOR2D0 U138 ( .A1(n151), .A2(n163), .Z(n168) );
  OAI22D0 U139 ( .A1(n169), .A2(n167), .B1(n165), .B2(n170), .ZN(n59) );
  CKXOR2D0 U140 ( .A1(n151), .A2(n162), .Z(n169) );
  OAI22D0 U141 ( .A1(n170), .A2(n167), .B1(n165), .B2(n171), .ZN(n58) );
  CKXOR2D0 U142 ( .A1(n151), .A2(n161), .Z(n170) );
  OAI22D0 U143 ( .A1(n171), .A2(n167), .B1(n165), .B2(n172), .ZN(n57) );
  CKXOR2D0 U144 ( .A1(n151), .A2(n160), .Z(n171) );
  OAI22D0 U145 ( .A1(n172), .A2(n167), .B1(n165), .B2(n173), .ZN(n56) );
  CKXOR2D0 U146 ( .A1(n151), .A2(n159), .Z(n172) );
  OAI22D0 U147 ( .A1(n173), .A2(n167), .B1(n165), .B2(n174), .ZN(n55) );
  CKXOR2D0 U148 ( .A1(n151), .A2(n158), .Z(n173) );
  OAI22D0 U149 ( .A1(n174), .A2(n167), .B1(n165), .B2(n175), .ZN(n54) );
  CKXOR2D0 U150 ( .A1(n151), .A2(n157), .Z(n174) );
  OAI22D0 U151 ( .A1(n175), .A2(n167), .B1(n165), .B2(n176), .ZN(n53) );
  CKXOR2D0 U152 ( .A1(n151), .A2(n156), .Z(n175) );
  AO21D0 U153 ( .A1(n167), .A2(n165), .B(n176), .Z(n52) );
  CKXOR2D0 U154 ( .A1(n153), .A2(a[9]), .Z(n176) );
  NR2D0 U155 ( .A1(n151), .A2(n164), .ZN(n51) );
  MUX2ND0 U156 ( .I0(n163), .I1(n164), .S(n151), .ZN(n50) );
  MUX2ND0 U157 ( .I0(n162), .I1(n163), .S(n151), .ZN(n49) );
  MUX2ND0 U158 ( .I0(n161), .I1(n162), .S(n151), .ZN(n48) );
  MUX2ND0 U159 ( .I0(n160), .I1(n161), .S(n151), .ZN(n47) );
  MUX2ND0 U160 ( .I0(n159), .I1(n160), .S(n151), .ZN(n46) );
  MUX2ND0 U161 ( .I0(n158), .I1(n159), .S(n151), .ZN(n45) );
  MUX2ND0 U162 ( .I0(n157), .I1(n158), .S(n151), .ZN(n44) );
  MUX2ND0 U163 ( .I0(n156), .I1(n157), .S(n151), .ZN(n43) );
  AN2D0 U164 ( .A1(b[1]), .A2(n164), .Z(n41) );
  OAI32D0 U165 ( .A1(n153), .A2(a[0]), .A3(n165), .B1(n153), .B2(n167), .ZN(
        n40) );
  CKXOR2D0 U167 ( .A1(b[1]), .A2(n155), .Z(n21) );
  MUX2ND0 U168 ( .I0(a[9]), .I1(a[8]), .S(n151), .ZN(n16) );
  OAI211D0 U109 ( .A1(b[2]), .A2(n151), .B(n178), .C(n165), .ZN(n167) );
  XNR2D0 U110 ( .A1(b[2]), .A2(b[1]), .ZN(n165) );
  CKND2D0 U166 ( .A1(b[2]), .A2(n151), .ZN(n178) );
endmodule


module unified_mul_drop_l3_separate_mul_DW01_add_1 ( A, B, CI, SUM, CO );
  input [20:0] A;
  input [20:0] B;
  output [20:0] SUM;
  input CI;
  output CO;
  wire   n1, n3, n4, n5, n6;
  wire   [18:2] carry;

  FA1D0 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  FA1D0 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  FA1D0 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA1D0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1D0 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FA1D0 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  XOR3D1 U1_18 ( .A1(A[18]), .A2(B[18]), .A3(carry[18]), .Z(SUM[18]) );
  FA1D0 U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  FA1D0 U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  FA1D0 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FA1D0 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  FA1D0 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  AN2XD1 U2 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
  AN2XD1 U4 ( .A1(n4), .A2(B[7]), .Z(n3) );
  AN2XD1 U5 ( .A1(n5), .A2(B[6]), .Z(n4) );
  AN2XD1 U6 ( .A1(carry[5]), .A2(B[5]), .Z(n5) );
  XNR2D1 U12 ( .A1(carry[4]), .A2(B[4]), .ZN(SUM[4]) );
  CKXOR2D1 U13 ( .A1(n3), .A2(B[8]), .Z(SUM[8]) );
  CKXOR2D1 U14 ( .A1(n4), .A2(B[7]), .Z(SUM[7]) );
  CKXOR2D1 U15 ( .A1(n5), .A2(B[6]), .Z(SUM[6]) );
  CKXOR2D1 U16 ( .A1(carry[5]), .A2(B[5]), .Z(SUM[5]) );
  CKXOR2D1 U17 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
  IND2D0 U1 ( .A1(B[9]), .B1(n6), .ZN(carry[10]) );
  CKND2D0 U3 ( .A1(B[8]), .A2(n3), .ZN(n6) );
  CKXOR2D0 U7 ( .A1(B[9]), .A2(n6), .Z(SUM[9]) );
  OR2D0 U8 ( .A1(B[4]), .A2(carry[4]), .Z(carry[5]) );
endmodule


module unified_mul_drop_l3_separate_mul_DW01_add_0 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [18:2] carry;

  FA1D0 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  FA1D0 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA1D0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1D0 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  XOR3D1 U1_18 ( .A1(A[18]), .A2(B[18]), .A3(carry[18]), .Z(SUM[18]) );
  FA1D0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1D0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1D0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA1D0 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA1D0 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FA1D0 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  FA1D0 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FA1D0 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  FA1D0 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  FA1D0 U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  FA1D0 U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  FA1D0 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FA1D0 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  AN2XD1 U1 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
  CKXOR2D1 U2 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
endmodule


module unified_mul_drop_l3_separate_mul ( fx, fy, value );
  input [22:0] fx;
  input [22:0] fy;
  output [28:0] value;
  wire   rx_9_, ry_9_, t_3, t_2, t_1, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75,
         n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, py_9_, py_8_,
         py_7_, py_6_, py_5_, py_4_, py_3_, py_2_, py_1_, py_15_, py_14_,
         py_13_, py_12_, py_11_, py_10_, py_0_, px_9_, px_8_, px_7_, px_6_,
         px_5_, px_4_, px_3_, px_2_, px_1_, px_15_, px_14_, px_13_, px_12_,
         px_11_, px_10_, px_0_, N250, N249, N248, N247, N246, N245, N244, N243,
         N242, N241, N240, N239, N238, N237, N236, N235, N234, N233, N232, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n179, n180;
  wire   [3:1] a;
  wire   [3:1] b;
  wire   [18:10] t;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4;

  AN2XD1 U9 ( .A1(n52), .A2(n53), .Z(n51) );
  MAOI22D1 U20 ( .A1(n33), .A2(n47), .B1(n45), .B2(n36), .ZN(n61) );
  XNR2D1 U22 ( .A1(n57), .A2(n18), .ZN(n69) );
  MOAI22D1 U45 ( .A1(n83), .A2(n32), .B1(n84), .B2(n12), .ZN(n81) );
  AN3XD1 U67 ( .A1(n127), .A2(n128), .A3(n129), .Z(n126) );
  AN4XD1 U69 ( .A1(n116), .A2(n77), .A3(n131), .A4(n132), .Z(n123) );
  AN4XD1 U75 ( .A1(n137), .A2(n138), .A3(n139), .A4(n140), .Z(n77) );
  AN3XD1 U90 ( .A1(n107), .A2(n136), .A3(n149), .Z(n128) );
  AN4XD1 U99 ( .A1(n145), .A2(n147), .A3(n154), .A4(n155), .Z(n125) );
  OA211D1 U100 ( .A1(n32), .A2(n113), .B(n78), .C(n156), .Z(n155) );
  AN4XD1 U109 ( .A1(n161), .A2(n107), .A3(n162), .A4(n163), .Z(n130) );
  AN2XD1 U122 ( .A1(n159), .A2(n133), .Z(n100) );
  AN2XD1 U124 ( .A1(n169), .A2(n48), .Z(n158) );
  AN2XD1 U128 ( .A1(n172), .A2(n40), .Z(n159) );
  AN4XD1 U132 ( .A1(n127), .A2(n156), .A3(n175), .A4(n176), .Z(n143) );
  AN2XD1 U134 ( .A1(n177), .A2(n80), .Z(n110) );
  AN2XD1 U136 ( .A1(n177), .A2(n99), .Z(n109) );
  AN2XD1 U138 ( .A1(n165), .A2(n154), .Z(n175) );
  AN2XD1 U142 ( .A1(n44), .A2(n172), .Z(n177) );
  AN2XD1 U146 ( .A1(n178), .A2(n135), .Z(n164) );
  AN2XD1 U148 ( .A1(n172), .A2(n48), .Z(n178) );
  AN3XD1 U153 ( .A1(n120), .A2(n142), .A3(n166), .Z(n129) );
  AN2XD1 U160 ( .A1(n172), .A2(n43), .Z(n174) );
  unified_mul_drop_l3_separate_mul_DW_mult_tc_1 mult_157_S2 ( .a({ry_9_, 
        fy[18:10]}), .b({n179, n7, b, n7}), .product({py_15_, py_14_, py_13_, 
        py_12_, py_11_, py_10_, py_9_, py_8_, py_7_, py_6_, py_5_, py_4_, 
        py_3_, py_2_, py_1_, py_0_}) );
  unified_mul_drop_l3_separate_mul_DW_mult_tc_0 mult_157 ( .a({rx_9_, 
        fx[18:10]}), .b({n179, n7, a, n7}), .product({px_15_, px_14_, px_13_, 
        px_12_, px_11_, px_10_, px_9_, px_8_, px_7_, px_6_, px_5_, px_4_, 
        px_3_, px_2_, px_1_, px_0_}) );
  unified_mul_drop_l3_separate_mul_DW01_add_1 add_1_root_add_159_2 ( .A({n179, 
        n179, t, n7, n179, n179, n179, n179, n7, t_3, t_2, t_1, n36}), .B({
        px_15_, px_15_, px_15_, px_15_, px_15_, px_15_, px_14_, px_13_, px_12_, 
        px_11_, px_10_, px_9_, px_8_, px_7_, px_6_, px_5_, px_4_, px_3_, px_2_, 
        px_1_, px_0_}), .CI(n179), .SUM({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, N250, N249, N248, N247, N246, N245, N244, 
        N243, N242, N241, N240, N239, N238, N237, N236, N235, N234, N233, N232}) );
  unified_mul_drop_l3_separate_mul_DW01_add_0 add_0_root_add_159_2 ( .A({
        py_15_, py_15_, py_15_, py_15_, py_15_, py_15_, py_15_, py_14_, py_13_, 
        py_12_, py_11_, py_10_, py_9_, py_8_, py_7_, py_6_, py_5_, py_4_, 
        py_3_, py_2_, py_1_, py_0_}), .B({1'b0, 1'b0, 1'b0, N250, N249, N248, 
        N247, N246, N245, N244, N243, N242, N241, N240, N239, N238, N237, N236, 
        N235, N234, N233, N232}), .CI(n179), .SUM({SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, value[24:6]}) );
  TIEH U3 ( .Z(n7) );
  NR2D1 U11 ( .A1(n30), .A2(fx[20]), .ZN(n135) );
  NR3D0 U12 ( .A1(n14), .A2(n93), .A3(n13), .ZN(n78) );
  INVD1 U13 ( .I(n157), .ZN(n13) );
  INR2D1 U14 ( .A1(n178), .B1(n29), .ZN(n170) );
  IND4D1 U15 ( .A1(n118), .B1(n128), .B2(n143), .B3(n144), .ZN(a[3]) );
  NR3D0 U16 ( .A1(n89), .A2(n20), .A3(n11), .ZN(n144) );
  INVD1 U17 ( .I(n106), .ZN(n9) );
  INVD1 U18 ( .I(n145), .ZN(n11) );
  ND2D1 U19 ( .A1(n29), .A2(n31), .ZN(b[1]) );
  INVD1 U21 ( .I(n68), .ZN(n28) );
  NR2D1 U23 ( .A1(n47), .A2(n34), .ZN(n46) );
  INVD1 U24 ( .I(n49), .ZN(n27) );
  NR4D0 U25 ( .A1(n17), .A2(n105), .A3(n13), .A4(n96), .ZN(n104) );
  NR2D1 U26 ( .A1(n106), .A2(n31), .ZN(n96) );
  INVD1 U27 ( .I(n80), .ZN(n31) );
  NR2D1 U28 ( .A1(n31), .A2(n113), .ZN(n93) );
  ND2D1 U29 ( .A1(n130), .A2(n10), .ZN(a[2]) );
  ND2D1 U30 ( .A1(n174), .A2(n80), .ZN(n157) );
  IND4D1 U31 ( .A1(n76), .B1(n77), .B2(n78), .B3(n79), .ZN(t[14]) );
  AOI211XD0 U32 ( .A1(n80), .A2(n23), .B(n81), .C(n82), .ZN(n79) );
  INVD1 U33 ( .I(n121), .ZN(n14) );
  ND4D1 U34 ( .A1(n101), .A2(n102), .A3(n103), .A4(n104), .ZN(t[12]) );
  IINR4D0 U35 ( .A1(n107), .A2(n108), .B1(n109), .B2(n19), .ZN(n103) );
  NR4D0 U36 ( .A1(n11), .A2(n110), .A3(n111), .A4(n112), .ZN(n102) );
  ND2D1 U37 ( .A1(n123), .A2(n10), .ZN(t[11]) );
  ND4D1 U38 ( .A1(n129), .A2(n157), .A3(n143), .A4(n171), .ZN(a[1]) );
  NR3D0 U39 ( .A1(n14), .A2(n23), .A3(n159), .ZN(n171) );
  INR4D0 U40 ( .A1(n114), .B1(n109), .B2(n19), .B3(n110), .ZN(n176) );
  INVD1 U41 ( .I(n133), .ZN(n29) );
  NR3D0 U42 ( .A1(n9), .A2(n170), .A3(n164), .ZN(n127) );
  ND2D1 U43 ( .A1(n178), .A2(n80), .ZN(n156) );
  INR3D0 U44 ( .A1(n120), .B1(n170), .B2(n100), .ZN(n162) );
  INR4D0 U46 ( .A1(n149), .B1(n164), .B2(n76), .B3(n117), .ZN(n163) );
  INVD1 U47 ( .I(n113), .ZN(n16) );
  ND4D1 U48 ( .A1(n124), .A2(n113), .A3(n125), .A4(n126), .ZN(b[3]) );
  INVD1 U49 ( .I(n160), .ZN(n20) );
  INVD1 U50 ( .I(n161), .ZN(n19) );
  ND4D1 U51 ( .A1(n165), .A2(n166), .A3(n167), .A4(n146), .ZN(n117) );
  ND2D1 U52 ( .A1(n16), .A2(n133), .ZN(n167) );
  ND2D1 U53 ( .A1(n20), .A2(n133), .ZN(n146) );
  ND2D1 U54 ( .A1(n177), .A2(n133), .ZN(n165) );
  ND2D1 U55 ( .A1(n174), .A2(n133), .ZN(n166) );
  INVD1 U56 ( .I(n87), .ZN(n24) );
  NR2D1 U57 ( .A1(n114), .A2(n29), .ZN(n105) );
  ND2D1 U58 ( .A1(n130), .A2(n123), .ZN(b[2]) );
  ND2D1 U59 ( .A1(n173), .A2(n48), .ZN(n106) );
  ND2D1 U60 ( .A1(n158), .A2(n133), .ZN(n149) );
  ND2D1 U61 ( .A1(n158), .A2(n80), .ZN(n145) );
  NR2D1 U62 ( .A1(n115), .A2(n29), .ZN(n94) );
  ND2D1 U63 ( .A1(n32), .A2(n31), .ZN(n84) );
  ND3D1 U64 ( .A1(n146), .A2(n137), .A3(n147), .ZN(n89) );
  OAI211D1 U65 ( .A1(n31), .A2(n160), .B(n150), .C(n98), .ZN(n82) );
  ND2D1 U66 ( .A1(n21), .A2(n133), .ZN(n137) );
  INVD1 U68 ( .I(n148), .ZN(n21) );
  INVD1 U70 ( .I(n136), .ZN(n12) );
  ND2D1 U71 ( .A1(n159), .A2(n80), .ZN(n98) );
  ND2D1 U72 ( .A1(n15), .A2(n133), .ZN(n108) );
  INVD1 U73 ( .I(n142), .ZN(n15) );
  ND2D1 U74 ( .A1(n150), .A2(n148), .ZN(n118) );
  INVD1 U76 ( .I(n115), .ZN(n23) );
  INVD1 U77 ( .I(n124), .ZN(n17) );
  INVD1 U78 ( .I(n86), .ZN(n25) );
  NR2D1 U79 ( .A1(n38), .A2(n30), .ZN(n47) );
  INVD1 U80 ( .I(n57), .ZN(n33) );
  NR2D1 U81 ( .A1(n30), .A2(n33), .ZN(n68) );
  OAI211D1 U82 ( .A1(n33), .A2(n38), .B(n28), .C(n61), .ZN(n49) );
  INVD1 U83 ( .I(n71), .ZN(n34) );
  INVD1 U84 ( .I(n48), .ZN(n8) );
  INR4D0 U85 ( .A1(n116), .B1(n88), .B2(n117), .B3(n118), .ZN(n101) );
  IND3D1 U86 ( .A1(n96), .B1(n97), .B2(n98), .ZN(n92) );
  AOI21D1 U87 ( .A1(n115), .A2(n87), .B(n31), .ZN(n111) );
  AOI21D1 U88 ( .A1(n113), .A2(n114), .B(n32), .ZN(n112) );
  NR4D0 U89 ( .A1(n17), .A2(n85), .A3(n21), .A4(n9), .ZN(n83) );
  ND2D1 U91 ( .A1(n86), .A2(n87), .ZN(n85) );
  NR2D1 U92 ( .A1(n35), .A2(fx[21]), .ZN(n80) );
  OAI221D0 U93 ( .A1(n63), .A2(n18), .B1(n64), .B2(n38), .C(n65), .ZN(t[16])
         );
  AOI222D0 U94 ( .A1(fx[21]), .A2(t[10]), .B1(n70), .B2(n40), .C1(n68), .C2(
        n22), .ZN(n64) );
  INR2D1 U95 ( .A1(n53), .B1(n60), .ZN(n63) );
  OAI221D0 U96 ( .A1(n57), .A2(n58), .B1(n27), .B2(n8), .C(n59), .ZN(t[17]) );
  AOI21D1 U97 ( .A1(n62), .A2(n30), .B(n40), .ZN(n58) );
  IAO21D1 U98 ( .A1(n22), .A2(n47), .B(n60), .ZN(n59) );
  ND2D1 U103 ( .A1(n159), .A2(n99), .ZN(n152) );
  AOI211XD0 U104 ( .A1(n24), .A2(n84), .B(n109), .C(n110), .ZN(n153) );
  OAI211D1 U105 ( .A1(n40), .A2(n33), .B(n54), .C(n55), .ZN(t[18]) );
  OA221D0 U106 ( .A1(n36), .A2(n56), .B1(n28), .B2(n38), .C(n8), .Z(n55) );
  ND2D1 U107 ( .A1(n99), .A2(n174), .ZN(n121) );
  NR2D1 U108 ( .A1(n38), .A2(n39), .ZN(n172) );
  INVD1 U110 ( .I(fy[21]), .ZN(n38) );
  IIND4D1 U111 ( .A1(n88), .A2(n89), .B1(n90), .B2(n91), .ZN(t[13]) );
  AOI221D0 U112 ( .A1(n80), .A2(n21), .B1(n12), .B2(n99), .C(n100), .ZN(n90)
         );
  NR4D0 U113 ( .A1(n92), .A2(n93), .A3(n94), .A4(n95), .ZN(n91) );
  ND2D1 U114 ( .A1(n43), .A2(n169), .ZN(n113) );
  INVD1 U115 ( .I(fx[21]), .ZN(n30) );
  NR2D1 U116 ( .A1(n30), .A2(n35), .ZN(n133) );
  NR2D1 U117 ( .A1(n37), .A2(n18), .ZN(n48) );
  OAI211D1 U118 ( .A1(n87), .A2(n29), .B(n168), .C(n122), .ZN(n76) );
  OAI31D1 U119 ( .A1(n20), .A2(n16), .A3(n159), .B(n135), .ZN(n168) );
  ND2D1 U120 ( .A1(n44), .A2(n169), .ZN(n160) );
  ND2D1 U121 ( .A1(n177), .A2(n135), .ZN(n161) );
  ND2D1 U123 ( .A1(n178), .A2(n99), .ZN(n154) );
  ND2D1 U125 ( .A1(n135), .A2(n24), .ZN(n122) );
  ND2D1 U126 ( .A1(n169), .A2(n40), .ZN(n87) );
  NR2D1 U127 ( .A1(n39), .A2(fy[21]), .ZN(n173) );
  ND2D1 U129 ( .A1(n173), .A2(n44), .ZN(n114) );
  AOI22D1 U130 ( .A1(n25), .A2(n133), .B1(n21), .B2(n135), .ZN(n131) );
  AOI221D0 U131 ( .A1(n12), .A2(n133), .B1(n9), .B2(n133), .C(n134), .ZN(n132)
         );
  OAI211D1 U133 ( .A1(n29), .A2(n124), .B(n97), .C(n108), .ZN(n134) );
  ND2D1 U135 ( .A1(n15), .A2(n135), .ZN(n138) );
  AOI21D1 U137 ( .A1(n17), .A2(n135), .B(n94), .ZN(n139) );
  AOI211XD0 U139 ( .A1(n25), .A2(n135), .B(n95), .C(n105), .ZN(n140) );
  ND2D1 U140 ( .A1(n158), .A2(n99), .ZN(n147) );
  INVD1 U141 ( .I(n99), .ZN(n32) );
  ND2D1 U143 ( .A1(n174), .A2(n135), .ZN(n120) );
  INR2D1 U144 ( .A1(n135), .B1(n114), .ZN(n95) );
  OAI21D1 U145 ( .A1(n27), .A2(n40), .B(n8), .ZN(t_3) );
  ND2D1 U147 ( .A1(n141), .A2(n44), .ZN(n148) );
  ND2D1 U149 ( .A1(n158), .A2(n135), .ZN(n107) );
  ND2D1 U150 ( .A1(n20), .A2(n99), .ZN(n150) );
  ND2D1 U151 ( .A1(n12), .A2(n135), .ZN(n97) );
  ND2D1 U152 ( .A1(n141), .A2(n48), .ZN(n136) );
  ND2D1 U154 ( .A1(n173), .A2(n43), .ZN(n142) );
  ND2D1 U155 ( .A1(n173), .A2(n40), .ZN(n115) );
  ND2D1 U156 ( .A1(n141), .A2(n43), .ZN(n124) );
  ND2D1 U157 ( .A1(n141), .A2(n40), .ZN(n86) );
  ND2D1 U158 ( .A1(n41), .A2(n42), .ZN(t_2) );
  OAI22D1 U159 ( .A1(n43), .A2(n44), .B1(n45), .B2(n46), .ZN(n42) );
  OAI21D1 U161 ( .A1(n48), .A2(n40), .B(n49), .ZN(n41) );
  AOI22D1 U162 ( .A1(n135), .A2(n9), .B1(n135), .B2(n23), .ZN(n116) );
  OAI221D0 U163 ( .A1(n38), .A2(n28), .B1(fx[21]), .B2(n50), .C(n51), .ZN(t_1)
         );
  NR2D1 U164 ( .A1(n39), .A2(n35), .ZN(n57) );
  AOI32D1 U165 ( .A1(n71), .A2(n38), .A3(fx[21]), .B1(t[10]), .B2(n45), .ZN(
        n53) );
  NR2D1 U166 ( .A1(t[10]), .A2(n57), .ZN(n71) );
  AOI22D1 U167 ( .A1(t[10]), .A2(n47), .B1(n57), .B2(n45), .ZN(n52) );
  INVD1 U168 ( .I(t[10]), .ZN(n36) );
  ND2D1 U169 ( .A1(n71), .A2(fy[21]), .ZN(n50) );
  NR2D1 U170 ( .A1(fx[21]), .A2(fy[21]), .ZN(n45) );
  ND4D1 U171 ( .A1(n119), .A2(n120), .A3(n121), .A4(n122), .ZN(n88) );
  ND2D1 U172 ( .A1(n99), .A2(n15), .ZN(n119) );
  ND2D1 U173 ( .A1(n56), .A2(n8), .ZN(n73) );
  NR2D1 U174 ( .A1(fx[21]), .A2(n33), .ZN(n70) );
  INVD1 U175 ( .I(n40), .ZN(n22) );
  OAI221D0 U176 ( .A1(n52), .A2(n22), .B1(fy[22]), .B2(n53), .C(n72), .ZN(
        t[15]) );
  AOI221D0 U177 ( .A1(n57), .A2(n26), .B1(n73), .B2(n36), .C(n74), .ZN(n72) );
  INVD1 U178 ( .I(n54), .ZN(n26) );
  INVD1 U179 ( .I(fx[20]), .ZN(n35) );
  NR2D1 U180 ( .A1(n18), .A2(fy[22]), .ZN(n43) );
  INVD1 U181 ( .I(fx[22]), .ZN(n18) );
  NR2D1 U182 ( .A1(n38), .A2(fy[20]), .ZN(n169) );
  INVD1 U183 ( .I(fy[20]), .ZN(n39) );
  NR2D1 U184 ( .A1(fx[21]), .A2(fx[20]), .ZN(n99) );
  INVD1 U185 ( .I(fy[22]), .ZN(n37) );
  NR2D1 U186 ( .A1(n37), .A2(fx[22]), .ZN(n44) );
  NR2D1 U187 ( .A1(fy[22]), .A2(fx[22]), .ZN(n40) );
  NR2D1 U188 ( .A1(fy[21]), .A2(fy[20]), .ZN(n141) );
  XNR2D1 U189 ( .A1(n39), .A2(fx[20]), .ZN(t[10]) );
  INVD1 U190 ( .I(fx[19]), .ZN(rx_9_) );
  INVD1 U191 ( .I(fy[19]), .ZN(ry_9_) );
  AOI211XD0 U192 ( .A1(n50), .A2(n75), .B(fx[22]), .C(fx[21]), .ZN(n74) );
  ND2D1 U193 ( .A1(t[10]), .A2(n38), .ZN(n75) );
  AOI32D1 U194 ( .A1(n66), .A2(n30), .A3(fy[22]), .B1(n40), .B2(n67), .ZN(n65)
         );
  OAI21D1 U195 ( .A1(fy[21]), .A2(n69), .B(n50), .ZN(n66) );
  OAI21D1 U196 ( .A1(fy[21]), .A2(n28), .B(n61), .ZN(n67) );
  NR3D0 U197 ( .A1(fy[21]), .A2(fy[22]), .A3(n34), .ZN(n60) );
  AOI22D1 U198 ( .A1(fy[22]), .A2(fy[21]), .B1(fx[22]), .B2(fx[21]), .ZN(n56)
         );
  AOI22D1 U199 ( .A1(fx[22]), .A2(fy[21]), .B1(fy[22]), .B2(fx[21]), .ZN(n54)
         );
  OAI22D1 U200 ( .A1(fx[22]), .A2(t[10]), .B1(fy[21]), .B2(n48), .ZN(n62) );
  TIEL U201 ( .ZN(n179) );
  NR2D0 U4 ( .A1(n180), .A2(n82), .ZN(n10) );
  ND3D0 U5 ( .A1(n153), .A2(n152), .A3(n125), .ZN(n180) );
endmodule


module fp32_normal_finite_wrapper_DW01_add_3_DW01_add_6 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [7:2] carry;

  FA1D0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1D0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1D0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1D0 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA1D0 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  FA1D0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  XOR3D1 U1_7 ( .A1(A[7]), .A2(B[7]), .A3(carry[7]), .Z(SUM[7]) );
  AN2XD1 U1 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
  CKXOR2D1 U2 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
endmodule


module fp32_normal_finite_wrapper_DW01_add_1_DW01_add_4 ( A, B, CI, SUM, CO );
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
  CKAN2D1 U1 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
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
  wire   N19, N20, N21, N22, N23, N24, N25, N26, N43, N44, N45, N46, N47, N48,
         N49, N50, N42, N41, N40, N39, N38, N37, N36, N34, N33, N32, N31, N30,
         N29, N28, N27, N9, N8, N7, N6, N5, N4, N3, N17, N16, N15, N14, N13,
         N12, N11, N10, n1, n2, n35, n410, n51, n60, n70, n77, n78, n79;
  wire   [7:2] add_0_root_add_0_root_add_22_2_carry;
  wire   [7:2] add_0_root_add_0_root_add_25_2_carry;

  CKXOR2D1 U2 ( .A1(y[31]), .A2(x[31]), .Z(result[31]) );
  fp32_normal_finite_wrapper_DW01_add_3_DW01_add_6 add_1_root_add_0_root_add_25_2 ( 
        .A(x[30:23]), .B({N42, N41, N40, N39, N38, N37, N36, N11}), .CI(n79), 
        .SUM({N34, N33, N32, N31, N30, N29, N28, N27}) );
  fp32_normal_finite_wrapper_DW01_add_1_DW01_add_4 add_1_root_add_0_root_add_22_2 ( 
        .A(x[30:23]), .B({y[30], N17, N16, N15, N14, N13, N12, N11}), .CI(n79), 
        .SUM({N10, N9, N8, N7, N6, N5, N4, N3}) );
  AN2XD1 U3 ( .A1(exponent_adjust[0]), .A2(N3), .Z(n1) );
  AN2XD1 U4 ( .A1(exponent_adjust[0]), .A2(N27), .Z(n2) );
  INVD1 U25 ( .I(divide_mode), .ZN(n78) );
  CKBD1 U26 ( .I(result_fraction[21]), .Z(result[21]) );
  CKBD1 U27 ( .I(result_fraction[20]), .Z(result[20]) );
  CKBD1 U28 ( .I(result_fraction[8]), .Z(result[8]) );
  CKBD1 U29 ( .I(result_fraction[9]), .Z(result[9]) );
  CKBD1 U30 ( .I(result_fraction[10]), .Z(result[10]) );
  CKBD1 U31 ( .I(result_fraction[11]), .Z(result[11]) );
  CKBD1 U32 ( .I(result_fraction[12]), .Z(result[12]) );
  CKBD1 U33 ( .I(result_fraction[13]), .Z(result[13]) );
  CKBD1 U34 ( .I(result_fraction[14]), .Z(result[14]) );
  CKBD1 U35 ( .I(result_fraction[15]), .Z(result[15]) );
  CKBD1 U36 ( .I(result_fraction[16]), .Z(result[16]) );
  CKBD1 U37 ( .I(result_fraction[17]), .Z(result[17]) );
  CKBD1 U38 ( .I(result_fraction[18]), .Z(result[18]) );
  CKBD1 U39 ( .I(result_fraction[19]), .Z(result[19]) );
  CKBD1 U40 ( .I(result_fraction[7]), .Z(result[7]) );
  CKBD1 U41 ( .I(result_fraction[6]), .Z(result[6]) );
  CKBD1 U42 ( .I(result_fraction[5]), .Z(result[5]) );
  AO22D0 U43 ( .A1(N49), .A2(n78), .B1(N25), .B2(divide_mode), .Z(result[29])
         );
  AO22D0 U44 ( .A1(N48), .A2(n78), .B1(N24), .B2(divide_mode), .Z(result[28])
         );
  AO22D0 U45 ( .A1(N47), .A2(n78), .B1(N23), .B2(divide_mode), .Z(result[27])
         );
  AO22D0 U46 ( .A1(N46), .A2(n78), .B1(N22), .B2(divide_mode), .Z(result[26])
         );
  AO22D0 U47 ( .A1(N45), .A2(n78), .B1(N21), .B2(divide_mode), .Z(result[25])
         );
  AO22D0 U48 ( .A1(N44), .A2(n78), .B1(N20), .B2(divide_mode), .Z(result[24])
         );
  FA1D0 U49 ( .A(N4), .B(exponent_adjust[1]), .CI(n1), .CO(
        add_0_root_add_0_root_add_22_2_carry[2]), .S(N20) );
  FA1D0 U50 ( .A(N5), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[2]), .CO(
        add_0_root_add_0_root_add_22_2_carry[3]), .S(N21) );
  FA1D0 U51 ( .A(N6), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[3]), .CO(
        add_0_root_add_0_root_add_22_2_carry[4]), .S(N22) );
  FA1D0 U52 ( .A(N7), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[4]), .CO(
        add_0_root_add_0_root_add_22_2_carry[5]), .S(N23) );
  FA1D0 U53 ( .A(N8), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[5]), .CO(
        add_0_root_add_0_root_add_22_2_carry[6]), .S(N24) );
  FA1D0 U54 ( .A(N9), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[6]), .CO(
        add_0_root_add_0_root_add_22_2_carry[7]), .S(N25) );
  FA1D0 U55 ( .A(N28), .B(exponent_adjust[1]), .CI(n2), .CO(
        add_0_root_add_0_root_add_25_2_carry[2]), .S(N44) );
  FA1D0 U56 ( .A(N29), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[2]), .CO(
        add_0_root_add_0_root_add_25_2_carry[3]), .S(N45) );
  FA1D0 U57 ( .A(N30), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[3]), .CO(
        add_0_root_add_0_root_add_25_2_carry[4]), .S(N46) );
  FA1D0 U58 ( .A(N31), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[4]), .CO(
        add_0_root_add_0_root_add_25_2_carry[5]), .S(N47) );
  FA1D0 U59 ( .A(N32), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[5]), .CO(
        add_0_root_add_0_root_add_25_2_carry[6]), .S(N48) );
  FA1D0 U60 ( .A(N33), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[6]), .CO(
        add_0_root_add_0_root_add_25_2_carry[7]), .S(N49) );
  AO22D0 U61 ( .A1(N43), .A2(n78), .B1(N19), .B2(divide_mode), .Z(result[23])
         );
  CKBD1 U62 ( .I(x[22]), .Z(fraction_x[22]) );
  AO22D0 U63 ( .A1(N50), .A2(n78), .B1(divide_mode), .B2(N26), .Z(result[30])
         );
  XOR3D1 U64 ( .A1(N34), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_25_2_carry[7]), .Z(N50) );
  XOR3D1 U65 ( .A1(N10), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_22_2_carry[7]), .Z(N26) );
  CKBD1 U66 ( .I(y[22]), .Z(fraction_y[22]) );
  CKBD1 U67 ( .I(x[21]), .Z(fraction_x[21]) );
  CKBD1 U68 ( .I(x[20]), .Z(fraction_x[20]) );
  CKBD1 U69 ( .I(x[10]), .Z(fraction_x[10]) );
  AN2XD1 U70 ( .A1(y[23]), .A2(y[24]), .Z(n35) );
  INVD1 U71 ( .I(y[29]), .ZN(N17) );
  INVD0 U72 ( .I(y[24]), .ZN(N12) );
  INVD1 U73 ( .I(y[25]), .ZN(N13) );
  INVD1 U74 ( .I(y[26]), .ZN(N14) );
  INVD1 U75 ( .I(y[27]), .ZN(N15) );
  INVD1 U76 ( .I(y[28]), .ZN(N16) );
  AN2XD1 U77 ( .A1(n35), .A2(y[25]), .Z(n410) );
  AN2XD1 U78 ( .A1(n410), .A2(y[26]), .Z(n51) );
  AN2XD1 U79 ( .A1(n51), .A2(y[27]), .Z(n60) );
  AN2XD1 U80 ( .A1(n60), .A2(y[28]), .Z(n70) );
  CKXOR2D1 U81 ( .A1(y[30]), .A2(n77), .Z(N42) );
  ND2D1 U82 ( .A1(n70), .A2(y[29]), .ZN(n77) );
  CKBD1 U88 ( .I(x[19]), .Z(fraction_x[19]) );
  CKBD1 U89 ( .I(x[18]), .Z(fraction_x[18]) );
  CKBD1 U90 ( .I(x[17]), .Z(fraction_x[17]) );
  CKBD1 U91 ( .I(x[16]), .Z(fraction_x[16]) );
  CKBD1 U92 ( .I(x[15]), .Z(fraction_x[15]) );
  CKBD1 U93 ( .I(x[14]), .Z(fraction_x[14]) );
  CKBD1 U94 ( .I(x[13]), .Z(fraction_x[13]) );
  CKBD1 U95 ( .I(x[12]), .Z(fraction_x[12]) );
  CKBD1 U96 ( .I(x[11]), .Z(fraction_x[11]) );
  CKBD1 U97 ( .I(y[21]), .Z(fraction_y[21]) );
  CKBD1 U98 ( .I(y[20]), .Z(fraction_y[20]) );
  CKBD1 U99 ( .I(y[19]), .Z(fraction_y[19]) );
  CKBD1 U100 ( .I(y[18]), .Z(fraction_y[18]) );
  CKBD1 U101 ( .I(y[17]), .Z(fraction_y[17]) );
  CKBD1 U102 ( .I(y[16]), .Z(fraction_y[16]) );
  CKBD1 U103 ( .I(y[15]), .Z(fraction_y[15]) );
  CKBD1 U104 ( .I(y[14]), .Z(fraction_y[14]) );
  CKBD1 U105 ( .I(y[13]), .Z(fraction_y[13]) );
  CKBD1 U106 ( .I(y[12]), .Z(fraction_y[12]) );
  CKBD1 U107 ( .I(y[11]), .Z(fraction_y[11]) );
  CKBD1 U108 ( .I(y[10]), .Z(fraction_y[10]) );
  CKBD1 U109 ( .I(result_fraction[22]), .Z(result[22]) );
  TIEL U110 ( .ZN(n79) );
  CKXOR2D1 U111 ( .A1(exponent_adjust[0]), .A2(N3), .Z(N19) );
  CKXOR2D1 U112 ( .A1(exponent_adjust[0]), .A2(N27), .Z(N43) );
  CKXOR2D1 U113 ( .A1(y[23]), .A2(y[24]), .Z(N36) );
  CKXOR2D1 U114 ( .A1(n35), .A2(y[25]), .Z(N37) );
  CKXOR2D1 U115 ( .A1(n410), .A2(y[26]), .Z(N38) );
  CKXOR2D1 U116 ( .A1(n51), .A2(y[27]), .Z(N39) );
  CKXOR2D1 U117 ( .A1(n60), .A2(y[28]), .Z(N40) );
  CKXOR2D1 U118 ( .A1(n70), .A2(y[29]), .Z(N41) );
  CKND0 U119 ( .I(y[23]), .ZN(N11) );
endmodule


module unified_mul_drop_l3_separate ( x, y, divide_mode, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  input divide_mode;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n56, n57;
  wire   [22:10] fx;
  wire   [22:10] fy;
  wire   [24:6] div_value;
  wire   [24:6] mul_value;
  wire   [22:5] normalized_fraction;
  wire   [2:0] exponent_adjust;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31, 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, 
        SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39, 
        SYNOPSYS_UNCONNECTED__40, SYNOPSYS_UNCONNECTED__41, 
        SYNOPSYS_UNCONNECTED__42, SYNOPSYS_UNCONNECTED__43, 
        SYNOPSYS_UNCONNECTED__44;
  assign result[1] = 1'b0;
  assign result[2] = 1'b0;
  assign result[3] = 1'b0;
  assign result[4] = 1'b0;
  assign result[0] = 1'b0;

  unified_mul_drop_l3_separate_div div_core ( .fx({fx, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .fy({fy, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .value({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, div_value, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9}) );
  unified_mul_drop_l3_separate_mul mul_core ( .fx({fx, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .fy({fy, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .value({SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, mul_value, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15, SYNOPSYS_UNCONNECTED__16, 
        SYNOPSYS_UNCONNECTED__17, SYNOPSYS_UNCONNECTED__18, 
        SYNOPSYS_UNCONNECTED__19}) );
  fp32_normal_finite_wrapper wrapper ( .x({x[31:10], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y({y[31:10], 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .divide_mode(n56), 
        .fraction_x({fx, SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29}), .fraction_y({fy, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31, 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, 
        SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39}), 
        .result_fraction({normalized_fraction, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .exponent_adjust({exponent_adjust[2], exponent_adjust[2], 
        exponent_adjust[0]}), .result({result[31:5], SYNOPSYS_UNCONNECTED__40, 
        SYNOPSYS_UNCONNECTED__41, SYNOPSYS_UNCONNECTED__42, 
        SYNOPSYS_UNCONNECTED__43, SYNOPSYS_UNCONNECTED__44}) );
  ND2D1 U78 ( .A1(n9), .A2(n7), .ZN(exponent_adjust[2]) );
  IND3D1 U80 ( .A1(n25), .B1(n26), .B2(n4), .ZN(n9) );
  ND3D1 U81 ( .A1(n26), .A2(n25), .A3(n4), .ZN(n7) );
  ND2D1 U82 ( .A1(n4), .A2(n9), .ZN(exponent_adjust[0]) );
  OAI221D0 U83 ( .A1(n29), .A2(n3), .B1(n4), .B2(n25), .C(n30), .ZN(
        normalized_fraction[21]) );
  OA22D0 U84 ( .A1(n7), .A2(n31), .B1(n9), .B2(n28), .Z(n30) );
  OAI221D0 U85 ( .A1(n28), .A2(n3), .B1(n4), .B2(n29), .C(n32), .ZN(
        normalized_fraction[20]) );
  OA22D0 U86 ( .A1(n7), .A2(n33), .B1(n9), .B2(n31), .Z(n32) );
  OAI221D0 U87 ( .A1(n10), .A2(n3), .B1(n4), .B2(n2), .C(n11), .ZN(
        normalized_fraction[8]) );
  OA22D0 U88 ( .A1(n7), .A2(n12), .B1(n9), .B2(n8), .Z(n11) );
  OAI221D0 U89 ( .A1(n2), .A2(n3), .B1(n4), .B2(n5), .C(n6), .ZN(
        normalized_fraction[9]) );
  OA22D0 U90 ( .A1(n7), .A2(n8), .B1(n9), .B2(n10), .Z(n6) );
  OAI221D0 U91 ( .A1(n5), .A2(n3), .B1(n4), .B2(n47), .C(n50), .ZN(
        normalized_fraction[10]) );
  OA22D0 U92 ( .A1(n7), .A2(n10), .B1(n9), .B2(n2), .Z(n50) );
  OAI221D0 U93 ( .A1(n47), .A2(n3), .B1(n4), .B2(n45), .C(n49), .ZN(
        normalized_fraction[11]) );
  OA22D0 U94 ( .A1(n7), .A2(n2), .B1(n9), .B2(n5), .Z(n49) );
  OAI221D0 U95 ( .A1(n45), .A2(n3), .B1(n4), .B2(n43), .C(n48), .ZN(
        normalized_fraction[12]) );
  OA22D0 U96 ( .A1(n7), .A2(n5), .B1(n9), .B2(n47), .Z(n48) );
  OAI221D0 U97 ( .A1(n43), .A2(n3), .B1(n4), .B2(n41), .C(n46), .ZN(
        normalized_fraction[13]) );
  OA22D0 U98 ( .A1(n7), .A2(n47), .B1(n9), .B2(n45), .Z(n46) );
  OAI221D0 U99 ( .A1(n41), .A2(n3), .B1(n4), .B2(n39), .C(n44), .ZN(
        normalized_fraction[14]) );
  OA22D0 U100 ( .A1(n7), .A2(n45), .B1(n9), .B2(n43), .Z(n44) );
  OAI221D0 U101 ( .A1(n39), .A2(n3), .B1(n4), .B2(n37), .C(n42), .ZN(
        normalized_fraction[15]) );
  OA22D0 U102 ( .A1(n7), .A2(n43), .B1(n9), .B2(n41), .Z(n42) );
  OAI221D0 U103 ( .A1(n37), .A2(n3), .B1(n4), .B2(n35), .C(n40), .ZN(
        normalized_fraction[16]) );
  OA22D0 U104 ( .A1(n7), .A2(n41), .B1(n9), .B2(n39), .Z(n40) );
  OAI221D0 U105 ( .A1(n35), .A2(n3), .B1(n4), .B2(n33), .C(n38), .ZN(
        normalized_fraction[17]) );
  OA22D0 U106 ( .A1(n7), .A2(n39), .B1(n9), .B2(n37), .Z(n38) );
  OAI221D0 U107 ( .A1(n33), .A2(n3), .B1(n4), .B2(n31), .C(n36), .ZN(
        normalized_fraction[18]) );
  OA22D0 U108 ( .A1(n7), .A2(n37), .B1(n9), .B2(n35), .Z(n36) );
  OAI221D0 U109 ( .A1(n31), .A2(n3), .B1(n4), .B2(n28), .C(n34), .ZN(
        normalized_fraction[19]) );
  OA22D0 U110 ( .A1(n7), .A2(n35), .B1(n9), .B2(n33), .Z(n34) );
  OAI221D0 U111 ( .A1(n25), .A2(n3), .B1(n4), .B2(n26), .C(n27), .ZN(
        normalized_fraction[22]) );
  OA22D0 U112 ( .A1(n7), .A2(n28), .B1(n9), .B2(n29), .Z(n27) );
  OAI221D0 U113 ( .A1(n8), .A2(n3), .B1(n4), .B2(n10), .C(n13), .ZN(
        normalized_fraction[7]) );
  IND2D1 U116 ( .A1(n26), .B1(n4), .ZN(n3) );
  OAI22D1 U117 ( .A1(n12), .A2(n3), .B1(n4), .B2(n8), .ZN(
        normalized_fraction[6]) );
  NR2D1 U118 ( .A1(n4), .A2(n12), .ZN(normalized_fraction[5]) );
  AOI22D1 U119 ( .A1(mul_value[24]), .A2(n57), .B1(n56), .B2(div_value[24]), 
        .ZN(n4) );
  AOI22D1 U120 ( .A1(mul_value[23]), .A2(n57), .B1(div_value[23]), .B2(n56), 
        .ZN(n26) );
  AOI22D1 U121 ( .A1(mul_value[22]), .A2(n57), .B1(div_value[22]), .B2(n56), 
        .ZN(n25) );
  AOI22D1 U122 ( .A1(mul_value[21]), .A2(n57), .B1(div_value[21]), .B2(n56), 
        .ZN(n29) );
  AOI22D1 U123 ( .A1(mul_value[20]), .A2(n57), .B1(div_value[20]), .B2(n56), 
        .ZN(n28) );
  AOI22D1 U124 ( .A1(mul_value[19]), .A2(n57), .B1(div_value[19]), .B2(n56), 
        .ZN(n31) );
  AOI22D1 U125 ( .A1(mul_value[18]), .A2(n57), .B1(div_value[18]), .B2(n56), 
        .ZN(n33) );
  AOI22D1 U126 ( .A1(mul_value[17]), .A2(n57), .B1(div_value[17]), .B2(n56), 
        .ZN(n35) );
  AOI22D1 U127 ( .A1(mul_value[16]), .A2(n57), .B1(div_value[16]), .B2(n56), 
        .ZN(n37) );
  AOI22D1 U128 ( .A1(mul_value[15]), .A2(n57), .B1(div_value[15]), .B2(n56), 
        .ZN(n39) );
  AOI22D1 U129 ( .A1(mul_value[14]), .A2(n57), .B1(div_value[14]), .B2(n56), 
        .ZN(n41) );
  AOI22D1 U130 ( .A1(mul_value[13]), .A2(n57), .B1(div_value[13]), .B2(n56), 
        .ZN(n43) );
  AOI22D1 U131 ( .A1(mul_value[12]), .A2(n57), .B1(div_value[12]), .B2(n56), 
        .ZN(n45) );
  AOI22D1 U132 ( .A1(mul_value[11]), .A2(n57), .B1(div_value[11]), .B2(n56), 
        .ZN(n47) );
  AOI22D1 U133 ( .A1(mul_value[10]), .A2(n57), .B1(div_value[10]), .B2(n56), 
        .ZN(n5) );
  AOI22D1 U134 ( .A1(mul_value[9]), .A2(n57), .B1(div_value[9]), .B2(n56), 
        .ZN(n2) );
  AOI22D1 U135 ( .A1(mul_value[8]), .A2(n57), .B1(div_value[8]), .B2(n56), 
        .ZN(n10) );
  AOI22D1 U136 ( .A1(mul_value[7]), .A2(n57), .B1(div_value[7]), .B2(n56), 
        .ZN(n8) );
  INVD1 U137 ( .I(n57), .ZN(n56) );
  AOI22D1 U138 ( .A1(mul_value[6]), .A2(n57), .B1(div_value[6]), .B2(n56), 
        .ZN(n12) );
  INVD1 U144 ( .I(divide_mode), .ZN(n57) );
  OR2D1 U79 ( .A1(n9), .A2(n12), .Z(n13) );
endmodule

