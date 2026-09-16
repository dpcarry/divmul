/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Tue Sep 15 22:02:55 2026
/////////////////////////////////////////////////////////////


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
  CKBD1 U37 ( .I(result_fraction[8]), .Z(result[8]) );
  CKBD1 U38 ( .I(result_fraction[7]), .Z(result[7]) );
  CKBD1 U39 ( .I(result_fraction[9]), .Z(result[9]) );
  CKBD1 U40 ( .I(result_fraction[10]), .Z(result[10]) );
  CKBD1 U41 ( .I(result_fraction[11]), .Z(result[11]) );
  CKBD1 U42 ( .I(result_fraction[12]), .Z(result[12]) );
  CKBD1 U43 ( .I(result_fraction[13]), .Z(result[13]) );
  CKBD1 U44 ( .I(result_fraction[14]), .Z(result[14]) );
  CKBD1 U45 ( .I(result_fraction[15]), .Z(result[15]) );
  CKBD1 U46 ( .I(result_fraction[16]), .Z(result[16]) );
  CKBD1 U47 ( .I(result_fraction[17]), .Z(result[17]) );
  CKBD1 U48 ( .I(result_fraction[6]), .Z(result[6]) );
  CKBD1 U49 ( .I(result_fraction[5]), .Z(result[5]) );
  CKBD1 U50 ( .I(result_fraction[4]), .Z(result[4]) );
  FA1D0 U51 ( .A(N4), .B(exponent_adjust[1]), .CI(n1), .CO(
        add_0_root_add_0_root_add_22_2_carry[2]), .S(result[24]) );
  FA1D0 U52 ( .A(N5), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[2]), .CO(
        add_0_root_add_0_root_add_22_2_carry[3]), .S(result[25]) );
  FA1D0 U53 ( .A(N6), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[3]), .CO(
        add_0_root_add_0_root_add_22_2_carry[4]), .S(result[26]) );
  FA1D0 U54 ( .A(N7), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[4]), .CO(
        add_0_root_add_0_root_add_22_2_carry[5]), .S(result[27]) );
  FA1D0 U55 ( .A(N8), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[5]), .CO(
        add_0_root_add_0_root_add_22_2_carry[6]), .S(result[28]) );
  FA1D0 U56 ( .A(N9), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[6]), .CO(
        add_0_root_add_0_root_add_22_2_carry[7]), .S(result[29]) );
  XOR3D1 U65 ( .A1(N10), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_22_2_carry[7]), .Z(result[30]) );
  INVD1 U73 ( .I(y[29]), .ZN(N17) );
  INVD1 U74 ( .I(y[24]), .ZN(N12) );
  INVD1 U75 ( .I(y[25]), .ZN(N13) );
  INVD1 U76 ( .I(y[26]), .ZN(N14) );
  INVD1 U77 ( .I(y[27]), .ZN(N15) );
  INVD1 U78 ( .I(y[28]), .ZN(N16) );
  CKBD1 U91 ( .I(x[22]), .Z(fraction_x[22]) );
  CKBD1 U92 ( .I(x[21]), .Z(fraction_x[21]) );
  CKBD1 U93 ( .I(x[20]), .Z(fraction_x[20]) );
  CKBD1 U94 ( .I(x[19]), .Z(fraction_x[19]) );
  CKBD1 U95 ( .I(x[18]), .Z(fraction_x[18]) );
  CKBD1 U96 ( .I(x[17]), .Z(fraction_x[17]) );
  CKBD1 U97 ( .I(x[16]), .Z(fraction_x[16]) );
  CKBD1 U98 ( .I(y[22]), .Z(fraction_y[22]) );
  CKBD1 U99 ( .I(y[21]), .Z(fraction_y[21]) );
  CKBD1 U100 ( .I(y[20]), .Z(fraction_y[20]) );
  CKBD1 U101 ( .I(y[19]), .Z(fraction_y[19]) );
  CKBD1 U102 ( .I(y[18]), .Z(fraction_y[18]) );
  CKBD1 U103 ( .I(y[17]), .Z(fraction_y[17]) );
  CKBD1 U104 ( .I(y[16]), .Z(fraction_y[16]) );
  CKBD1 U105 ( .I(result_fraction[22]), .Z(result[22]) );
  CKBD1 U106 ( .I(result_fraction[21]), .Z(result[21]) );
  CKBD1 U107 ( .I(result_fraction[20]), .Z(result[20]) );
  CKBD1 U108 ( .I(result_fraction[19]), .Z(result[19]) );
  CKBD1 U109 ( .I(result_fraction[18]), .Z(result[18]) );
  TIEL U110 ( .ZN(n79) );
  CKXOR2D1 U111 ( .A1(exponent_adjust[0]), .A2(N3), .Z(result[23]) );
  CKND0 U119 ( .I(y[23]), .ZN(N11) );
endmodule


module abs_l3_exact_DW_mult_tc_1 ( a, b, product );
  input [3:0] a;
  input [13:0] b;
  output [17:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n206;

  FA1D0 U2 ( .A(n45), .B(n17), .CI(n2), .CO(n1), .S(product[16]) );
  FA1D0 U3 ( .A(n19), .B(n160), .CI(n3), .CO(n2), .S(product[15]) );
  FA1D0 U4 ( .A(n20), .B(n21), .CI(n4), .CO(n3), .S(product[14]) );
  FA1D0 U5 ( .A(n22), .B(n23), .CI(n5), .CO(n4), .S(product[13]) );
  FA1D0 U6 ( .A(n24), .B(n25), .CI(n6), .CO(n5), .S(product[12]) );
  FA1D0 U7 ( .A(n26), .B(n27), .CI(n7), .CO(n6), .S(product[11]) );
  FA1D0 U8 ( .A(n28), .B(n29), .CI(n8), .CO(n7), .S(product[10]) );
  FA1D0 U9 ( .A(n30), .B(n31), .CI(n9), .CO(n8), .S(product[9]) );
  FA1D0 U10 ( .A(n32), .B(n33), .CI(n10), .CO(n9), .S(product[8]) );
  FA1D0 U11 ( .A(n34), .B(n35), .CI(n11), .CO(n10), .S(product[7]) );
  FA1D0 U12 ( .A(n36), .B(n37), .CI(n12), .CO(n11), .S(product[6]) );
  FA1D0 U13 ( .A(n38), .B(n39), .CI(n13), .CO(n12), .S(product[5]) );
  FA1D0 U14 ( .A(n40), .B(n41), .CI(n14), .CO(n13), .S(product[4]) );
  FA1D0 U15 ( .A(n42), .B(n43), .CI(n15), .CO(n14), .S(product[3]) );
  FA1D0 U16 ( .A(n71), .B(n58), .CI(n16), .CO(n15), .S(product[2]) );
  HA1D0 U17 ( .A(n72), .B(n44), .CO(n16), .S(product[1]) );
  HA1D0 U21 ( .A(n47), .B(n60), .CO(n21), .S(n22) );
  HA1D0 U22 ( .A(n48), .B(n61), .CO(n23), .S(n24) );
  HA1D0 U23 ( .A(n49), .B(n62), .CO(n25), .S(n26) );
  HA1D0 U24 ( .A(n50), .B(n63), .CO(n27), .S(n28) );
  HA1D0 U25 ( .A(n51), .B(n64), .CO(n29), .S(n30) );
  HA1D0 U26 ( .A(n52), .B(n65), .CO(n31), .S(n32) );
  HA1D0 U27 ( .A(n53), .B(n66), .CO(n33), .S(n34) );
  HA1D0 U28 ( .A(n54), .B(n67), .CO(n35), .S(n36) );
  HA1D0 U29 ( .A(n55), .B(n68), .CO(n37), .S(n38) );
  HA1D0 U30 ( .A(n56), .B(n69), .CO(n39), .S(n40) );
  HA1D0 U31 ( .A(n57), .B(n70), .CO(n41), .S(n42) );
  INVD1 U112 ( .I(b[0]), .ZN(n172) );
  INVD1 U113 ( .I(b[12]), .ZN(n161) );
  INVD1 U114 ( .I(b[2]), .ZN(n163) );
  INVD1 U115 ( .I(b[1]), .ZN(n162) );
  INVD1 U116 ( .I(b[5]), .ZN(n169) );
  INVD1 U117 ( .I(b[6]), .ZN(n164) );
  INVD1 U118 ( .I(b[8]), .ZN(n159) );
  INVD1 U119 ( .I(b[9]), .ZN(n170) );
  INVD1 U120 ( .I(b[3]), .ZN(n166) );
  INVD1 U121 ( .I(b[4]), .ZN(n168) );
  INVD1 U122 ( .I(b[7]), .ZN(n165) );
  INVD1 U123 ( .I(b[10]), .ZN(n167) );
  INVD1 U124 ( .I(b[11]), .ZN(n171) );
  INVD1 U125 ( .I(n17), .ZN(n160) );
  INVD1 U128 ( .I(a[1]), .ZN(n174) );
  ND2D1 U129 ( .A1(a[1]), .A2(n175), .ZN(n176) );
  INVD1 U130 ( .I(a[3]), .ZN(n173) );
  INVD1 U131 ( .I(a[0]), .ZN(n175) );
  CKND0 U132 ( .I(n1), .ZN(product[17]) );
  NR2D0 U133 ( .A1(n175), .A2(n172), .ZN(product[0]) );
  OAI22D0 U134 ( .A1(b[0]), .A2(n176), .B1(n177), .B2(n175), .ZN(n72) );
  OAI22D0 U135 ( .A1(n177), .A2(n176), .B1(n178), .B2(n175), .ZN(n71) );
  CKXOR2D0 U136 ( .A1(a[1]), .A2(n162), .Z(n177) );
  OAI22D0 U137 ( .A1(n178), .A2(n176), .B1(n179), .B2(n175), .ZN(n70) );
  CKXOR2D0 U138 ( .A1(a[1]), .A2(n163), .Z(n178) );
  OAI22D0 U139 ( .A1(n179), .A2(n176), .B1(n180), .B2(n175), .ZN(n69) );
  CKXOR2D0 U140 ( .A1(a[1]), .A2(n166), .Z(n179) );
  OAI22D0 U141 ( .A1(n180), .A2(n176), .B1(n181), .B2(n175), .ZN(n68) );
  CKXOR2D0 U142 ( .A1(a[1]), .A2(n168), .Z(n180) );
  OAI22D0 U143 ( .A1(n181), .A2(n176), .B1(n182), .B2(n175), .ZN(n67) );
  CKXOR2D0 U144 ( .A1(a[1]), .A2(n169), .Z(n181) );
  OAI22D0 U145 ( .A1(n182), .A2(n176), .B1(n183), .B2(n175), .ZN(n66) );
  CKXOR2D0 U146 ( .A1(a[1]), .A2(n164), .Z(n182) );
  OAI22D0 U147 ( .A1(n183), .A2(n176), .B1(n184), .B2(n175), .ZN(n65) );
  CKXOR2D0 U148 ( .A1(a[1]), .A2(n165), .Z(n183) );
  OAI22D0 U149 ( .A1(n184), .A2(n176), .B1(n185), .B2(n175), .ZN(n64) );
  CKXOR2D0 U150 ( .A1(a[1]), .A2(n159), .Z(n184) );
  OAI22D0 U151 ( .A1(n185), .A2(n176), .B1(n186), .B2(n175), .ZN(n63) );
  CKXOR2D0 U152 ( .A1(a[1]), .A2(n170), .Z(n185) );
  OAI22D0 U153 ( .A1(n186), .A2(n176), .B1(n187), .B2(n175), .ZN(n62) );
  CKXOR2D0 U154 ( .A1(a[1]), .A2(n167), .Z(n186) );
  OAI22D0 U155 ( .A1(n187), .A2(n176), .B1(n188), .B2(n175), .ZN(n61) );
  CKXOR2D0 U156 ( .A1(a[1]), .A2(n171), .Z(n187) );
  OAI22D0 U157 ( .A1(n188), .A2(n176), .B1(n175), .B2(n174), .ZN(n60) );
  CKXOR2D0 U158 ( .A1(a[1]), .A2(n161), .Z(n188) );
  NR2D0 U159 ( .A1(n189), .A2(n172), .ZN(n58) );
  OAI22D0 U160 ( .A1(n190), .A2(n191), .B1(n189), .B2(n192), .ZN(n57) );
  CKXOR2D0 U161 ( .A1(a[3]), .A2(n172), .Z(n190) );
  OAI22D0 U162 ( .A1(n192), .A2(n191), .B1(n189), .B2(n193), .ZN(n56) );
  CKXOR2D0 U163 ( .A1(a[3]), .A2(n162), .Z(n192) );
  OAI22D0 U164 ( .A1(n193), .A2(n191), .B1(n189), .B2(n194), .ZN(n55) );
  CKXOR2D0 U165 ( .A1(a[3]), .A2(n163), .Z(n193) );
  OAI22D0 U166 ( .A1(n194), .A2(n191), .B1(n189), .B2(n195), .ZN(n54) );
  CKXOR2D0 U167 ( .A1(a[3]), .A2(n166), .Z(n194) );
  OAI22D0 U168 ( .A1(n195), .A2(n191), .B1(n189), .B2(n196), .ZN(n53) );
  CKXOR2D0 U169 ( .A1(a[3]), .A2(n168), .Z(n195) );
  OAI22D0 U170 ( .A1(n196), .A2(n191), .B1(n189), .B2(n197), .ZN(n52) );
  CKXOR2D0 U171 ( .A1(a[3]), .A2(n169), .Z(n196) );
  OAI22D0 U172 ( .A1(n197), .A2(n191), .B1(n189), .B2(n198), .ZN(n51) );
  CKXOR2D0 U173 ( .A1(a[3]), .A2(n164), .Z(n197) );
  OAI22D0 U174 ( .A1(n198), .A2(n191), .B1(n189), .B2(n199), .ZN(n50) );
  CKXOR2D0 U175 ( .A1(a[3]), .A2(n165), .Z(n198) );
  OAI22D0 U176 ( .A1(n199), .A2(n191), .B1(n189), .B2(n200), .ZN(n49) );
  CKXOR2D0 U177 ( .A1(a[3]), .A2(n159), .Z(n199) );
  OAI22D0 U178 ( .A1(n200), .A2(n191), .B1(n189), .B2(n201), .ZN(n48) );
  CKXOR2D0 U179 ( .A1(a[3]), .A2(n170), .Z(n200) );
  OAI22D0 U180 ( .A1(n201), .A2(n191), .B1(n189), .B2(n202), .ZN(n47) );
  CKXOR2D0 U181 ( .A1(a[3]), .A2(n167), .Z(n201) );
  AO21D0 U182 ( .A1(n191), .A2(n189), .B(n173), .Z(n45) );
  OAI21D0 U183 ( .A1(b[0]), .A2(n174), .B(n176), .ZN(n44) );
  OAI32D0 U184 ( .A1(n173), .A2(b[0]), .A3(n189), .B1(n173), .B2(n191), .ZN(
        n43) );
  CKXOR2D0 U185 ( .A1(n203), .A2(n174), .Z(n20) );
  CKND2D0 U186 ( .A1(n203), .A2(a[1]), .ZN(n19) );
  OA22D0 U187 ( .A1(n202), .A2(n191), .B1(n189), .B2(n204), .Z(n203) );
  CKXOR2D0 U188 ( .A1(a[3]), .A2(n171), .Z(n202) );
  OAI22D0 U189 ( .A1(n204), .A2(n191), .B1(n189), .B2(n173), .ZN(n17) );
  CKXOR2D0 U191 ( .A1(a[3]), .A2(n161), .Z(n204) );
  OAI211D0 U126 ( .A1(a[2]), .A2(a[3]), .B(n189), .C(n206), .ZN(n191) );
  CKND2D0 U127 ( .A1(a[2]), .A2(a[3]), .ZN(n206) );
  CKXOR2D0 U190 ( .A1(a[2]), .A2(n174), .Z(n189) );
endmodule


module abs_l3_exact_DW_mult_tc_0 ( a, b, product );
  input [3:0] a;
  input [12:0] b;
  output [16:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193;

  FA1D0 U2 ( .A(n42), .B(n162), .CI(n2), .CO(n1), .S(product[15]) );
  FA1D0 U3 ( .A(n18), .B(n17), .CI(n3), .CO(n2), .S(product[14]) );
  FA1D0 U4 ( .A(n19), .B(n20), .CI(n4), .CO(n3), .S(product[13]) );
  FA1D0 U5 ( .A(n21), .B(n22), .CI(n5), .CO(n4), .S(product[12]) );
  FA1D0 U6 ( .A(n23), .B(n24), .CI(n6), .CO(n5), .S(product[11]) );
  FA1D0 U7 ( .A(n25), .B(n26), .CI(n7), .CO(n6), .S(product[10]) );
  FA1D0 U8 ( .A(n27), .B(n28), .CI(n8), .CO(n7), .S(product[9]) );
  FA1D0 U9 ( .A(n29), .B(n30), .CI(n9), .CO(n8), .S(product[8]) );
  FA1D0 U10 ( .A(n31), .B(n32), .CI(n10), .CO(n9), .S(product[7]) );
  FA1D0 U11 ( .A(n33), .B(n34), .CI(n11), .CO(n10), .S(product[6]) );
  FA1D0 U12 ( .A(n35), .B(n36), .CI(n12), .CO(n11), .S(product[5]) );
  FA1D0 U13 ( .A(n37), .B(n38), .CI(n13), .CO(n12), .S(product[4]) );
  FA1D0 U14 ( .A(n39), .B(n40), .CI(n14), .CO(n13), .S(product[3]) );
  FA1D0 U15 ( .A(n66), .B(n54), .CI(n15), .CO(n14), .S(product[2]) );
  HA1D0 U16 ( .A(n67), .B(n41), .CO(n15), .S(product[1]) );
  HA1D0 U20 ( .A(n56), .B(n44), .CO(n20), .S(n21) );
  HA1D0 U21 ( .A(n45), .B(n57), .CO(n22), .S(n23) );
  HA1D0 U22 ( .A(n46), .B(n58), .CO(n24), .S(n25) );
  HA1D0 U23 ( .A(n47), .B(n59), .CO(n26), .S(n27) );
  HA1D0 U24 ( .A(n48), .B(n60), .CO(n28), .S(n29) );
  HA1D0 U25 ( .A(n49), .B(n61), .CO(n30), .S(n31) );
  HA1D0 U26 ( .A(n50), .B(n62), .CO(n32), .S(n33) );
  HA1D0 U27 ( .A(n51), .B(n63), .CO(n34), .S(n35) );
  HA1D0 U28 ( .A(n52), .B(n64), .CO(n36), .S(n37) );
  HA1D0 U29 ( .A(n53), .B(n65), .CO(n38), .S(n39) );
  INVD1 U107 ( .I(b[0]), .ZN(n161) );
  INVD1 U108 ( .I(b[3]), .ZN(n156) );
  INVD1 U109 ( .I(b[1]), .ZN(n153) );
  INVD1 U110 ( .I(b[5]), .ZN(n157) );
  INVD1 U111 ( .I(b[7]), .ZN(n152) );
  INVD1 U112 ( .I(b[4]), .ZN(n158) );
  INVD1 U113 ( .I(b[2]), .ZN(n155) );
  INVD1 U114 ( .I(b[6]), .ZN(n159) );
  INVD1 U115 ( .I(b[8]), .ZN(n154) );
  INVD1 U116 ( .I(b[9]), .ZN(n160) );
  INVD1 U117 ( .I(b[10]), .ZN(n151) );
  INVD1 U118 ( .I(n179), .ZN(n165) );
  INVD1 U119 ( .I(n181), .ZN(n163) );
  INVD1 U120 ( .I(n17), .ZN(n162) );
  INVD1 U121 ( .I(a[1]), .ZN(n166) );
  CKXOR2D1 U122 ( .A1(n166), .A2(a[2]), .Z(n179) );
  ND2D1 U123 ( .A1(n179), .A2(n193), .ZN(n181) );
  INVD1 U124 ( .I(a[3]), .ZN(n164) );
  ND2D1 U125 ( .A1(a[1]), .A2(n167), .ZN(n168) );
  INVD1 U126 ( .I(a[0]), .ZN(n167) );
  CKND0 U127 ( .I(n1), .ZN(product[16]) );
  NR2D0 U128 ( .A1(n167), .A2(n161), .ZN(product[0]) );
  OAI22D0 U129 ( .A1(b[0]), .A2(n168), .B1(n169), .B2(n167), .ZN(n67) );
  OAI22D0 U130 ( .A1(n169), .A2(n168), .B1(n170), .B2(n167), .ZN(n66) );
  XNR2D0 U131 ( .A1(n166), .A2(n153), .ZN(n169) );
  OAI22D0 U132 ( .A1(n170), .A2(n168), .B1(n171), .B2(n167), .ZN(n65) );
  XNR2D0 U133 ( .A1(n166), .A2(n155), .ZN(n170) );
  OAI22D0 U134 ( .A1(n171), .A2(n168), .B1(n172), .B2(n167), .ZN(n64) );
  XNR2D0 U135 ( .A1(n166), .A2(n156), .ZN(n171) );
  OAI22D0 U136 ( .A1(n172), .A2(n168), .B1(n173), .B2(n167), .ZN(n63) );
  XNR2D0 U137 ( .A1(n166), .A2(n158), .ZN(n172) );
  OAI22D0 U138 ( .A1(n173), .A2(n168), .B1(n174), .B2(n167), .ZN(n62) );
  XNR2D0 U139 ( .A1(n166), .A2(n157), .ZN(n173) );
  OAI22D0 U140 ( .A1(n174), .A2(n168), .B1(n175), .B2(n167), .ZN(n61) );
  XNR2D0 U141 ( .A1(n166), .A2(n159), .ZN(n174) );
  OAI22D0 U142 ( .A1(n175), .A2(n168), .B1(n176), .B2(n167), .ZN(n60) );
  XNR2D0 U143 ( .A1(n166), .A2(n152), .ZN(n175) );
  OAI22D0 U144 ( .A1(n176), .A2(n168), .B1(n177), .B2(n167), .ZN(n59) );
  XNR2D0 U145 ( .A1(n166), .A2(n154), .ZN(n176) );
  OAI22D0 U146 ( .A1(n177), .A2(n168), .B1(n178), .B2(n167), .ZN(n58) );
  XNR2D0 U147 ( .A1(n166), .A2(n160), .ZN(n177) );
  OAI22D0 U148 ( .A1(n178), .A2(n168), .B1(a[1]), .B2(n167), .ZN(n57) );
  XNR2D0 U149 ( .A1(n166), .A2(n151), .ZN(n178) );
  NR2D0 U150 ( .A1(n167), .A2(n166), .ZN(n56) );
  NR2D0 U151 ( .A1(n179), .A2(n161), .ZN(n54) );
  OAI22D0 U152 ( .A1(n180), .A2(n181), .B1(n179), .B2(n182), .ZN(n53) );
  XNR2D0 U153 ( .A1(n164), .A2(n161), .ZN(n180) );
  OAI22D0 U154 ( .A1(n182), .A2(n181), .B1(n179), .B2(n183), .ZN(n52) );
  XNR2D0 U155 ( .A1(n164), .A2(n153), .ZN(n182) );
  OAI22D0 U156 ( .A1(n183), .A2(n181), .B1(n179), .B2(n184), .ZN(n51) );
  XNR2D0 U157 ( .A1(n164), .A2(n155), .ZN(n183) );
  OAI22D0 U158 ( .A1(n184), .A2(n181), .B1(n179), .B2(n185), .ZN(n50) );
  XNR2D0 U159 ( .A1(n164), .A2(n156), .ZN(n184) );
  OAI22D0 U160 ( .A1(n185), .A2(n181), .B1(n179), .B2(n186), .ZN(n49) );
  XNR2D0 U161 ( .A1(n164), .A2(n158), .ZN(n185) );
  OAI22D0 U162 ( .A1(n186), .A2(n181), .B1(n179), .B2(n187), .ZN(n48) );
  XNR2D0 U163 ( .A1(n164), .A2(n157), .ZN(n186) );
  OAI22D0 U164 ( .A1(n187), .A2(n181), .B1(n179), .B2(n188), .ZN(n47) );
  XNR2D0 U165 ( .A1(n164), .A2(n159), .ZN(n187) );
  OAI22D0 U166 ( .A1(n188), .A2(n181), .B1(n179), .B2(n189), .ZN(n46) );
  XNR2D0 U167 ( .A1(n164), .A2(n152), .ZN(n188) );
  OAI22D0 U168 ( .A1(n189), .A2(n181), .B1(n179), .B2(n190), .ZN(n45) );
  XNR2D0 U169 ( .A1(n164), .A2(n154), .ZN(n189) );
  OAI22D0 U170 ( .A1(n190), .A2(n181), .B1(n179), .B2(n191), .ZN(n44) );
  XNR2D0 U171 ( .A1(n164), .A2(n160), .ZN(n190) );
  OAI21D0 U172 ( .A1(n163), .A2(n165), .B(a[3]), .ZN(n42) );
  OAI21D0 U173 ( .A1(b[0]), .A2(n166), .B(n168), .ZN(n41) );
  OAI32D0 U174 ( .A1(n164), .A2(b[0]), .A3(n179), .B1(n164), .B2(n181), .ZN(
        n40) );
  XNR2D0 U175 ( .A1(n192), .A2(a[1]), .ZN(n19) );
  CKND2D0 U176 ( .A1(n192), .A2(a[1]), .ZN(n18) );
  MAOI22D0 U177 ( .A1(n164), .A2(n165), .B1(n191), .B2(n181), .ZN(n192) );
  XNR2D0 U178 ( .A1(n164), .A2(n151), .ZN(n191) );
  MUX2ND0 U179 ( .I0(n165), .I1(n163), .S(n164), .ZN(n17) );
  XNR2D0 U180 ( .A1(n164), .A2(a[2]), .ZN(n193) );
endmodule


module abs_l3_exact_DW01_add_0 ( A, B, CI, SUM, CO );
  input [19:0] A;
  input [19:0] B;
  output [19:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [19:5] carry;

  FA1D0 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  FA1D0 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  FA1D0 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  FA1D0 U1_4 ( .A(A[4]), .B(B[4]), .CI(n1), .CO(carry[5]), .S(SUM[4]) );
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
  FA1D0 U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  FA1D0 U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  FA1D0 U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  XOR3D1 U1_19 ( .A1(A[19]), .A2(B[19]), .A3(carry[19]), .Z(SUM[19]) );
  AN2XD1 U1 ( .A1(B[3]), .A2(A[3]), .Z(n1) );
  CKBD1 U2 ( .I(B[2]), .Z(SUM[2]) );
  CKBD1 U3 ( .I(B[1]), .Z(SUM[1]) );
  CKBD1 U4 ( .I(B[0]), .Z(SUM[0]) );
  CKXOR2D1 U5 ( .A1(B[3]), .A2(A[3]), .Z(SUM[3]) );
endmodule


module abs_l3_exact_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [19:0] A;
  input [19:0] B;
  output [19:0] DIFF;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18;
  wire   [19:1] carry;

  FA1D0 U2_1 ( .A(A[1]), .B(n18), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  FA1D0 U2_2 ( .A(A[2]), .B(n17), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  FA1D0 U2_15 ( .A(A[15]), .B(n4), .CI(carry[15]), .CO(carry[16]), .S(DIFF[15]) );
  FA1D0 U2_3 ( .A(A[3]), .B(n16), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  FA1D0 U2_4 ( .A(A[4]), .B(n15), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FA1D0 U2_5 ( .A(A[5]), .B(n14), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  FA1D0 U2_6 ( .A(A[6]), .B(n13), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  FA1D0 U2_7 ( .A(A[7]), .B(n12), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  FA1D0 U2_8 ( .A(A[8]), .B(n11), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  FA1D0 U2_9 ( .A(A[9]), .B(n10), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  FA1D0 U2_10 ( .A(A[10]), .B(n9), .CI(carry[10]), .CO(carry[11]), .S(DIFF[10]) );
  FA1D0 U2_11 ( .A(A[11]), .B(n8), .CI(carry[11]), .CO(carry[12]), .S(DIFF[11]) );
  FA1D0 U2_12 ( .A(A[12]), .B(n7), .CI(carry[12]), .CO(carry[13]), .S(DIFF[12]) );
  FA1D0 U2_13 ( .A(A[13]), .B(n6), .CI(carry[13]), .CO(carry[14]), .S(DIFF[13]) );
  FA1D0 U2_14 ( .A(A[14]), .B(n5), .CI(carry[14]), .CO(carry[15]), .S(DIFF[14]) );
  FA1D0 U2_16 ( .A(A[16]), .B(n3), .CI(carry[16]), .CO(carry[17]), .S(DIFF[16]) );
  XOR3D1 U2_19 ( .A1(A[19]), .A2(n2), .A3(carry[19]), .Z(DIFF[19]) );
  FA1D0 U2_18 ( .A(A[18]), .B(n2), .CI(carry[18]), .CO(carry[19]), .S(DIFF[18]) );
  FA1D0 U2_17 ( .A(A[17]), .B(n2), .CI(carry[17]), .CO(carry[18]), .S(DIFF[17]) );
  INVD1 U1 ( .I(B[16]), .ZN(n3) );
  INVD1 U2 ( .I(B[14]), .ZN(n5) );
  INVD1 U3 ( .I(B[19]), .ZN(n2) );
  INVD1 U4 ( .I(B[13]), .ZN(n6) );
  INVD1 U5 ( .I(B[12]), .ZN(n7) );
  INVD1 U6 ( .I(B[11]), .ZN(n8) );
  INVD1 U7 ( .I(B[10]), .ZN(n9) );
  INVD1 U8 ( .I(B[9]), .ZN(n10) );
  INVD1 U9 ( .I(B[8]), .ZN(n11) );
  INVD1 U10 ( .I(B[7]), .ZN(n12) );
  INVD1 U11 ( .I(B[6]), .ZN(n13) );
  INVD1 U12 ( .I(B[5]), .ZN(n14) );
  INVD1 U13 ( .I(B[4]), .ZN(n15) );
  INVD1 U14 ( .I(B[3]), .ZN(n16) );
  INVD1 U15 ( .I(B[15]), .ZN(n4) );
  INVD1 U16 ( .I(B[2]), .ZN(n17) );
  INVD1 U18 ( .I(B[1]), .ZN(n18) );
  CKXOR2D0 U17 ( .A1(A[0]), .A2(B[0]), .Z(DIFF[0]) );
  IND2D0 U19 ( .A1(A[0]), .B1(B[0]), .ZN(carry[1]) );
endmodule


module abs_l3_exact ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   fx_22, fx_21, fx_20, fx_19, fy_22, fy_21, fy_20, fy_19, adjust_2_, n7,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n267, n268, n269, n270, n271, n272, n275, n276, n277, n278, n279,
         n280, n281, n282, n283, n284, n285, n286, n287, n288, n289, n290,
         n291, n292, n293, n294, n295, n296, n297, n298, n299, n300, n301,
         n303, n304, n305, n306, n307, n308, n309, n311, n313, n314, n315,
         n316, n317, n318, n319, n320, n321, n322, n323, n324, n325, n326,
         n327, n328, n329, py_9_, py_8_, py_7_, py_6_, py_5_, py_4_, py_3_,
         py_2_, py_1_, py_17_, py_16_, py_15_, py_14_, py_13_, py_12_, py_11_,
         py_10_, py_0_, px_17, px_9_, px_8_, px_7_, px_6_, px_5_, px_4_, px_3_,
         px_2_, px_1_, px_15_, px_14_, px_13_, px_12_, px_11_, px_10_, px_0_,
         N472, N471, N470, N469, N468, N467, N466, N465, N464, N463, N462,
         N461, N460, N459, N458, N457, N456, N455, N454, N453, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n343, n344, n345, n346, n347, n348, n349, n350, n351, n352, n353,
         n354, n355, n356, n357, n358, n359, n360, n361, n362, n363, n364,
         n365, n366, n367, n368, n369, n370, n371, n372, n373, n374, n375,
         n376, n377, n378, n379, n380, n381, n382, n383, n384, n385, n386,
         n387, n388, n389, n390, n391, n392, n393, n394, n395, n396, n397,
         n398, n399, n400, n401, n402, n403, n404, n405, n406, n407, n408,
         n409, n410, n411, n412, n413, n414, n415, n416;
  wire   [3:0] rx;
  wire   [3:0] ry;
  wire   [10:1] a;
  wire   [12:2] b;
  wire   [19:3] c;
  wire   [19:0] p;
  wire   [22:4] frac;
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
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35;
  assign result[0] = 1'b0;
  assign result[1] = 1'b0;
  assign result[2] = 1'b0;
  assign result[3] = 1'b0;

  AN4XD1 U63 ( .A1(n169), .A2(n170), .A3(n171), .A4(n172), .Z(n153) );
  AN2XD1 U85 ( .A1(n210), .A2(n189), .Z(n208) );
  AN4XD1 U90 ( .A1(n182), .A2(n171), .A3(n219), .A4(n220), .Z(n101) );
  AN4XD1 U107 ( .A1(n181), .A2(n189), .A3(n185), .A4(n237), .Z(n217) );
  AN4XD1 U113 ( .A1(n242), .A2(n243), .A3(n244), .A4(n245), .Z(n152) );
  AN4XD1 U120 ( .A1(n160), .A2(n242), .A3(n253), .A4(n254), .Z(n145) );
  AN4XD1 U124 ( .A1(n196), .A2(n189), .A3(n257), .A4(n96), .Z(n160) );
  AN4XD1 U143 ( .A1(n181), .A2(n207), .A3(n134), .A4(n215), .Z(n272) );
  AN3XD1 U171 ( .A1(n226), .A2(n291), .A3(n292), .Z(n267) );
  OR4D1 U181 ( .A1(n173), .A2(n407), .A3(n118), .A4(n256), .Z(n297) );
  AN2XD1 U182 ( .A1(n299), .A2(n300), .Z(n256) );
  AN2XD1 U183 ( .A1(n301), .A2(n332), .Z(n118) );
  AN2XD1 U185 ( .A1(n301), .A2(n300), .Z(n173) );
  AN2XD1 U191 ( .A1(n306), .A2(n332), .Z(n221) );
  AN2XD1 U192 ( .A1(n305), .A2(n300), .Z(n168) );
  AN3XD1 U205 ( .A1(n126), .A2(n275), .A3(n188), .Z(n100) );
  AN2XD1 U207 ( .A1(n305), .A2(n331), .Z(n199) );
  AN4XD1 U208 ( .A1(n243), .A2(n196), .A3(n95), .A4(n311), .Z(n298) );
  AN2XD1 U211 ( .A1(n313), .A2(n314), .Z(n305) );
  AN2XD1 U212 ( .A1(n306), .A2(n331), .Z(n109) );
  AN2XD1 U213 ( .A1(n299), .A2(n330), .Z(n165) );
  AN2XD1 U216 ( .A1(n315), .A2(n316), .Z(n299) );
  AN2XD1 U219 ( .A1(n315), .A2(n314), .Z(n301) );
  AN2XD1 U221 ( .A1(n316), .A2(n313), .Z(n306) );
  OR4D1 U223 ( .A1(n174), .A2(n360), .A3(n361), .A4(n119), .Z(n265) );
  AN2XD1 U224 ( .A1(n317), .A2(n332), .Z(n119) );
  AN2XD1 U227 ( .A1(n318), .A2(n332), .Z(n174) );
  AN3XD1 U239 ( .A1(n189), .A2(n159), .A3(n111), .Z(n126) );
  AN2XD1 U258 ( .A1(n318), .A2(n330), .Z(n198) );
  AN2XD1 U259 ( .A1(n315), .A2(n326), .Z(n318) );
  AN2XD1 U261 ( .A1(n313), .A2(n326), .Z(n319) );
  AN2XD1 U264 ( .A1(n315), .A2(n327), .Z(n317) );
  AN2XD1 U268 ( .A1(n313), .A2(n327), .Z(n320) );
  AN2XD1 U273 ( .A1(n331), .A2(n322), .Z(n94) );
  AN2XD1 U274 ( .A1(n328), .A2(n326), .Z(n322) );
  AN2XD1 U279 ( .A1(n327), .A2(n328), .Z(n321) );
  AN2XD1 U283 ( .A1(n329), .A2(n327), .Z(n324) );
  AN2XD1 U286 ( .A1(n329), .A2(n326), .Z(n323) );
  AN4XD1 U289 ( .A1(n181), .A2(n151), .A3(n207), .A4(n164), .Z(n263) );
  AN2XD1 U293 ( .A1(n314), .A2(n328), .Z(n304) );
  AN2XD1 U296 ( .A1(n314), .A2(n329), .Z(n307) );
  AN2XD1 U299 ( .A1(n316), .A2(n328), .Z(n303) );
  AN2XD1 U303 ( .A1(n316), .A2(n329), .Z(n309) );
  fp32_normal_finite_wrapper wrapper ( .x({x[31:16], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y({y[31:16], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .divide_mode(1'b0), .fraction_x(
        {fx_22, fx_21, fx_20, fx_19, rx[2:0], SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15}), .fraction_y({fy_22, fy_21, fy_20, fy_19, 
        ry[2:0], SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31}), 
        .result_fraction({frac, 1'b0, 1'b0, 1'b0, 1'b0}), .exponent_adjust({
        adjust_2_, adjust_2_, n7}), .result({result[31:4], 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35}) );
  abs_l3_exact_DW_mult_tc_1 mult_76_S2 ( .a(ry), .b({n412, b, c[4:3]}), 
        .product({py_17_, py_16_, py_15_, py_14_, py_13_, py_12_, py_11_, 
        py_10_, py_9_, py_8_, py_7_, py_6_, py_5_, py_4_, py_3_, py_2_, py_1_, 
        py_0_}) );
  abs_l3_exact_DW_mult_tc_0 mult_76 ( .a(rx), .b({n412, n413, a, c[3]}), 
        .product({px_17, px_15_, px_14_, px_13_, px_12_, px_11_, px_10_, px_9_, 
        px_8_, px_7_, px_6_, px_5_, px_4_, px_3_, px_2_, px_1_, px_0_}) );
  abs_l3_exact_DW01_add_0 add_1_root_sub_0_root_sub_78 ( .A({c, n412, n412, 
        n412}), .B({px_17, px_17, px_17, px_17, px_15_, px_14_, px_13_, px_12_, 
        px_11_, px_10_, px_9_, px_8_, px_7_, px_6_, px_5_, px_4_, px_3_, px_2_, 
        px_1_, px_0_}), .CI(n412), .SUM({N472, N471, N470, N469, N468, N467, 
        N466, N465, N464, N463, N462, N461, N460, N459, N458, N457, N456, N455, 
        N454, N453}) );
  abs_l3_exact_DW01_sub_0 sub_0_root_sub_0_root_sub_78 ( .A({N472, N471, N470, 
        N469, N468, N467, N466, N465, N464, N463, N462, N461, N460, N459, N458, 
        N457, N456, N455, N454, N453}), .B({py_17_, py_17_, py_17_, py_16_, 
        py_15_, py_14_, py_13_, py_12_, py_11_, py_10_, py_9_, py_8_, py_7_, 
        py_6_, py_5_, py_4_, py_3_, py_2_, py_1_, py_0_}), .CI(n412), .DIFF(p)
         );
  NR2D1 U386 ( .A1(n411), .A2(n384), .ZN(n300) );
  ND2D1 U387 ( .A1(n87), .A2(n88), .ZN(adjust_2_) );
  ND4D1 U388 ( .A1(n369), .A2(n293), .A3(n375), .A4(n381), .ZN(c[3]) );
  INVD1 U389 ( .I(a[3]), .ZN(n358) );
  INVD1 U390 ( .I(a[7]), .ZN(n353) );
  ND3D1 U391 ( .A1(n90), .A2(n353), .A3(n293), .ZN(a[1]) );
  INVD1 U392 ( .I(p[18]), .ZN(n334) );
  NR2D1 U393 ( .A1(n354), .A2(n355), .ZN(n188) );
  ND3D1 U394 ( .A1(n405), .A2(n358), .A3(n292), .ZN(a[5]) );
  INVD1 U395 ( .I(n87), .ZN(n7) );
  INVD1 U396 ( .I(p[17]), .ZN(n335) );
  NR3D0 U397 ( .A1(n128), .A2(n401), .A3(n265), .ZN(n90) );
  ND4D1 U398 ( .A1(n369), .A2(n90), .A3(n296), .A4(n381), .ZN(a[3]) );
  NR2D1 U399 ( .A1(n297), .A2(n367), .ZN(n296) );
  ND2D1 U400 ( .A1(p[18]), .A2(n333), .ZN(n87) );
  INVD1 U401 ( .I(n150), .ZN(n360) );
  ND2D1 U402 ( .A1(n334), .A2(n333), .ZN(n88) );
  ND4D1 U403 ( .A1(n363), .A2(n188), .A3(n263), .A4(n264), .ZN(b[2]) );
  NR3D0 U404 ( .A1(n265), .A2(n399), .A3(n400), .ZN(n264) );
  NR2D1 U405 ( .A1(n372), .A2(n389), .ZN(n293) );
  INVD1 U406 ( .I(n290), .ZN(n372) );
  ND3D1 U407 ( .A1(n295), .A2(n358), .A3(n293), .ZN(a[4]) );
  ND2D1 U408 ( .A1(n295), .A2(n100), .ZN(a[7]) );
  INVD1 U409 ( .I(n278), .ZN(n361) );
  ND4D1 U410 ( .A1(n298), .A2(n292), .A3(n89), .A4(n90), .ZN(a[2]) );
  NR2D1 U411 ( .A1(n394), .A2(n383), .ZN(n95) );
  INVD1 U412 ( .I(n223), .ZN(n367) );
  NR3D0 U413 ( .A1(n398), .A2(n399), .A3(n400), .ZN(n275) );
  INVD1 U414 ( .I(n180), .ZN(n368) );
  INR3D0 U415 ( .A1(n111), .B1(n394), .B2(n392), .ZN(n146) );
  INVD1 U416 ( .I(n249), .ZN(n355) );
  INVD1 U417 ( .I(n276), .ZN(n369) );
  NR3D0 U418 ( .A1(n376), .A2(n390), .A3(n377), .ZN(n226) );
  INVD1 U419 ( .I(n97), .ZN(n375) );
  INVD1 U420 ( .I(n157), .ZN(n354) );
  NR2D1 U421 ( .A1(n135), .A2(n403), .ZN(n292) );
  INVD1 U422 ( .I(n158), .ZN(n366) );
  INVD1 U423 ( .I(n96), .ZN(n365) );
  INVD1 U424 ( .I(n99), .ZN(n381) );
  INVD1 U425 ( .I(n169), .ZN(n362) );
  INVD1 U426 ( .I(n121), .ZN(n356) );
  INVD1 U427 ( .I(n280), .ZN(n357) );
  INVD1 U428 ( .I(n288), .ZN(n364) );
  ND3D1 U429 ( .A1(n90), .A2(n375), .A3(n295), .ZN(a[6]) );
  INR4D0 U430 ( .A1(n238), .B1(n115), .B2(n383), .B3(n138), .ZN(n185) );
  NR3D0 U431 ( .A1(n376), .A2(n371), .A3(n392), .ZN(n238) );
  ND4D1 U432 ( .A1(n184), .A2(n233), .A3(n217), .A4(n234), .ZN(b[5]) );
  NR3D0 U433 ( .A1(n116), .A2(n360), .A3(n391), .ZN(n234) );
  INVD1 U434 ( .I(n233), .ZN(n374) );
  NR2D1 U435 ( .A1(n388), .A2(n396), .ZN(n235) );
  INR4D0 U436 ( .A1(n152), .B1(n373), .B2(n406), .B3(n168), .ZN(n184) );
  ND4D1 U437 ( .A1(n293), .A2(n292), .A3(n294), .A4(n100), .ZN(a[8]) );
  INR2D1 U438 ( .A1(n90), .B1(n110), .ZN(n294) );
  INVD1 U439 ( .I(n175), .ZN(n359) );
  INVD1 U440 ( .I(n110), .ZN(n405) );
  IND4D1 U441 ( .A1(n228), .B1(n185), .B2(n229), .B3(n230), .ZN(b[6]) );
  NR4D0 U442 ( .A1(n361), .A2(n378), .A3(n388), .A4(n397), .ZN(n230) );
  INR2D1 U443 ( .A1(n231), .B1(n393), .ZN(n229) );
  ND4D1 U444 ( .A1(n216), .A2(n101), .A3(n217), .A4(n218), .ZN(b[8]) );
  NR4D0 U445 ( .A1(n365), .A2(n366), .A3(n354), .A4(n398), .ZN(n218) );
  OAI222D0 U446 ( .A1(n349), .A2(n87), .B1(n88), .B2(n350), .C1(n348), .C2(
        n333), .ZN(frac[8]) );
  OAI222D0 U447 ( .A1(n87), .A2(n350), .B1(n88), .B2(n351), .C1(n349), .C2(
        n333), .ZN(frac[7]) );
  OAI222D0 U448 ( .A1(n87), .A2(n348), .B1(n88), .B2(n349), .C1(n333), .C2(
        n347), .ZN(frac[9]) );
  OAI222D0 U449 ( .A1(n87), .A2(n347), .B1(n88), .B2(n348), .C1(n333), .C2(
        n346), .ZN(frac[10]) );
  OAI222D0 U450 ( .A1(n87), .A2(n346), .B1(n88), .B2(n347), .C1(n333), .C2(
        n345), .ZN(frac[11]) );
  OAI222D0 U451 ( .A1(n87), .A2(n345), .B1(n88), .B2(n346), .C1(n333), .C2(
        n344), .ZN(frac[12]) );
  OAI222D0 U452 ( .A1(n87), .A2(n344), .B1(n88), .B2(n345), .C1(n333), .C2(
        n343), .ZN(frac[13]) );
  OAI222D0 U453 ( .A1(n87), .A2(n343), .B1(n88), .B2(n344), .C1(n333), .C2(
        n342), .ZN(frac[14]) );
  OAI222D0 U454 ( .A1(n87), .A2(n342), .B1(n88), .B2(n343), .C1(n333), .C2(
        n341), .ZN(frac[15]) );
  OAI222D0 U455 ( .A1(n87), .A2(n341), .B1(n88), .B2(n342), .C1(n333), .C2(
        n340), .ZN(frac[16]) );
  OAI222D0 U456 ( .A1(n87), .A2(n340), .B1(n88), .B2(n341), .C1(n333), .C2(
        n339), .ZN(frac[17]) );
  ND4D1 U457 ( .A1(n290), .A2(n188), .A3(n126), .A4(n381), .ZN(b[12]) );
  OAI222D0 U458 ( .A1(n87), .A2(n335), .B1(n88), .B2(n336), .C1(n334), .C2(
        n333), .ZN(frac[22]) );
  OAI222D0 U459 ( .A1(n87), .A2(n339), .B1(n88), .B2(n340), .C1(n333), .C2(
        n338), .ZN(frac[18]) );
  OAI222D0 U460 ( .A1(n87), .A2(n338), .B1(n88), .B2(n339), .C1(n333), .C2(
        n337), .ZN(frac[19]) );
  OAI222D0 U461 ( .A1(n87), .A2(n337), .B1(n88), .B2(n338), .C1(n333), .C2(
        n336), .ZN(frac[20]) );
  OAI222D0 U462 ( .A1(n87), .A2(n336), .B1(n88), .B2(n337), .C1(n333), .C2(
        n335), .ZN(frac[21]) );
  INR4D0 U463 ( .A1(n284), .B1(n205), .B2(n367), .B3(n374), .ZN(n120) );
  NR3D0 U464 ( .A1(n355), .A2(n365), .A3(n377), .ZN(n284) );
  IIND4D1 U465 ( .A1(n200), .A2(n125), .B1(n201), .B2(n202), .ZN(b[9]) );
  NR4D0 U466 ( .A1(n407), .A2(n203), .A3(n360), .A4(n359), .ZN(n202) );
  NR3D0 U467 ( .A1(n205), .A2(n382), .A3(n117), .ZN(n201) );
  INVD1 U468 ( .I(p[16]), .ZN(n336) );
  INVD1 U469 ( .I(n182), .ZN(n395) );
  INVD1 U470 ( .I(p[14]), .ZN(n338) );
  INVD1 U471 ( .I(p[13]), .ZN(n339) );
  ND2D1 U472 ( .A1(n95), .A2(n96), .ZN(n93) );
  INVD1 U473 ( .I(p[12]), .ZN(n340) );
  INVD1 U474 ( .I(p[11]), .ZN(n341) );
  INVD1 U475 ( .I(p[10]), .ZN(n342) );
  INVD1 U476 ( .I(p[9]), .ZN(n343) );
  INVD1 U477 ( .I(p[8]), .ZN(n344) );
  INVD1 U478 ( .I(p[7]), .ZN(n345) );
  ND2D1 U479 ( .A1(n157), .A2(n158), .ZN(n156) );
  INVD1 U480 ( .I(p[6]), .ZN(n346) );
  INVD1 U481 ( .I(p[5]), .ZN(n347) );
  INVD1 U482 ( .I(p[4]), .ZN(n348) );
  INVD1 U483 ( .I(p[3]), .ZN(n349) );
  ND2D1 U484 ( .A1(n317), .A2(n300), .ZN(n150) );
  INVD1 U485 ( .I(p[19]), .ZN(n333) );
  ND4D1 U486 ( .A1(n145), .A2(n146), .A3(n147), .A4(n148), .ZN(c[16]) );
  NR4D0 U487 ( .A1(n94), .A2(n406), .A3(n393), .A4(n99), .ZN(n148) );
  NR2D1 U488 ( .A1(n356), .A2(n136), .ZN(n147) );
  IIND4D1 U489 ( .A1(n137), .A2(n138), .B1(n139), .B2(n140), .ZN(c[18]) );
  NR4D0 U490 ( .A1(n399), .A2(n373), .A3(n403), .A4(n356), .ZN(n140) );
  IIND4D1 U491 ( .A1(n141), .A2(n142), .B1(n143), .B2(n144), .ZN(c[17]) );
  NR2D1 U492 ( .A1(n390), .A2(n117), .ZN(n144) );
  NR4D0 U493 ( .A1(n367), .A2(n110), .A3(n297), .A4(n199), .ZN(n89) );
  INR4D0 U496 ( .A1(n89), .B1(n371), .B2(n109), .B3(n393), .ZN(n268) );
  NR4D0 U497 ( .A1(n251), .A2(n227), .A3(n388), .A4(n94), .ZN(n290) );
  INVD1 U498 ( .I(n106), .ZN(n388) );
  ND2D1 U499 ( .A1(n215), .A2(n241), .ZN(n227) );
  INVD1 U500 ( .I(n287), .ZN(n407) );
  INR2D1 U501 ( .A1(n298), .B1(n199), .ZN(n295) );
  NR3D0 U502 ( .A1(n165), .A2(n109), .A3(n396), .ZN(n311) );
  ND2D1 U503 ( .A1(n318), .A2(n300), .ZN(n278) );
  ND3D1 U504 ( .A1(n104), .A2(n212), .A3(n239), .ZN(n251) );
  INVD1 U505 ( .I(n107), .ZN(n383) );
  NR4D0 U506 ( .A1(n368), .A2(n168), .A3(n221), .A4(n404), .ZN(n223) );
  INVD1 U507 ( .I(n187), .ZN(n404) );
  INVD1 U508 ( .I(n286), .ZN(n394) );
  INVD1 U509 ( .I(n129), .ZN(n400) );
  INVD1 U510 ( .I(n170), .ZN(n396) );
  ND2D1 U511 ( .A1(n306), .A2(n300), .ZN(n180) );
  INVD1 U512 ( .I(n285), .ZN(n399) );
  INVD1 U513 ( .I(n130), .ZN(n398) );
  ND4D1 U514 ( .A1(n106), .A2(n175), .A3(n176), .A4(n177), .ZN(c[12]) );
  NR3D0 U515 ( .A1(n360), .A2(n404), .A3(n119), .ZN(n176) );
  NR4D0 U516 ( .A1(n395), .A2(n138), .A3(n142), .A4(n178), .ZN(n177) );
  ND2D1 U517 ( .A1(n300), .A2(n324), .ZN(n111) );
  ND4D1 U518 ( .A1(n159), .A2(n104), .A3(n260), .A4(n261), .ZN(n178) );
  NR3D0 U519 ( .A1(n382), .A2(n256), .A3(n173), .ZN(n260) );
  NR4D0 U520 ( .A1(n400), .A2(n364), .A3(n362), .A4(n137), .ZN(n261) );
  ND4D1 U521 ( .A1(n231), .A2(n196), .A3(n146), .A4(n262), .ZN(n137) );
  NR4D0 U522 ( .A1(n371), .A2(n390), .A3(n355), .A4(n396), .ZN(n262) );
  ND4D1 U523 ( .A1(n405), .A2(n215), .A3(n258), .A4(n259), .ZN(b[3]) );
  NR3D0 U524 ( .A1(n370), .A2(n407), .A3(n361), .ZN(n258) );
  INR4D0 U525 ( .A1(n171), .B1(n374), .B2(n356), .B3(n178), .ZN(n259) );
  ND2D1 U526 ( .A1(n321), .A2(n300), .ZN(n249) );
  ND3D1 U527 ( .A1(n134), .A2(n108), .A3(n263), .ZN(n276) );
  ND2D1 U528 ( .A1(n323), .A2(n300), .ZN(n189) );
  INVD1 U529 ( .I(n212), .ZN(n371) );
  ND4D1 U530 ( .A1(n226), .A2(n231), .A3(n325), .A4(n213), .ZN(n97) );
  NR2D1 U531 ( .A1(n392), .A2(n378), .ZN(n325) );
  INVD1 U532 ( .I(n270), .ZN(n377) );
  INVD1 U533 ( .I(n250), .ZN(n390) );
  IND4D1 U534 ( .A1(n183), .B1(n184), .B2(n185), .B3(n186), .ZN(c[11]) );
  NR3D0 U535 ( .A1(n114), .A2(n357), .A3(n390), .ZN(n186) );
  NR2D1 U536 ( .A1(n391), .A2(n198), .ZN(n231) );
  INVD1 U537 ( .I(n291), .ZN(n392) );
  INVD1 U538 ( .I(n257), .ZN(n391) );
  ND2D1 U539 ( .A1(n300), .A2(n322), .ZN(n157) );
  INVD1 U540 ( .I(n149), .ZN(n376) );
  ND4D1 U541 ( .A1(n151), .A2(n189), .A3(n190), .A4(n191), .ZN(c[10]) );
  NR3D0 U542 ( .A1(n397), .A2(n406), .A3(n379), .ZN(n190) );
  INR4D0 U543 ( .A1(n95), .B1(n387), .B2(n141), .B3(n192), .ZN(n191) );
  ND4D1 U544 ( .A1(n169), .A2(n288), .A3(n308), .A4(n222), .ZN(n135) );
  NR2D1 U545 ( .A1(n365), .A2(n366), .ZN(n308) );
  ND2D1 U546 ( .A1(n309), .A2(n300), .ZN(n158) );
  ND2D1 U547 ( .A1(n300), .A2(n307), .ZN(n96) );
  ND2D1 U548 ( .A1(n320), .A2(n300), .ZN(n175) );
  ND3D1 U549 ( .A1(n280), .A2(n210), .A3(n175), .ZN(n128) );
  INVD1 U550 ( .I(n211), .ZN(n378) );
  ND4D1 U551 ( .A1(n241), .A2(n353), .A3(n90), .A4(n269), .ZN(c[4]) );
  INR2D1 U552 ( .A1(n216), .B1(n163), .ZN(n269) );
  ND4D1 U553 ( .A1(n89), .A2(n90), .A3(n91), .A4(n92), .ZN(c[9]) );
  NR4D0 U554 ( .A1(n93), .A2(n371), .A3(n389), .A4(n94), .ZN(n92) );
  NR3D0 U555 ( .A1(n97), .A2(n98), .A3(n99), .ZN(n91) );
  ND2D1 U556 ( .A1(n255), .A2(n240), .ZN(n110) );
  ND4D1 U557 ( .A1(n100), .A2(n101), .A3(n102), .A4(n103), .ZN(c[8]) );
  NR3D0 U558 ( .A1(n99), .A2(n109), .A3(n110), .ZN(n102) );
  INR4D0 U559 ( .A1(n104), .B1(n105), .B2(n404), .B3(n407), .ZN(n103) );
  INVD1 U560 ( .I(n289), .ZN(n401) );
  ND2D1 U561 ( .A1(n319), .A2(n300), .ZN(n280) );
  ND4D1 U562 ( .A1(n375), .A2(n111), .A3(n112), .A4(n113), .ZN(c[7]) );
  NR3D0 U563 ( .A1(n109), .A2(n118), .A3(n119), .ZN(n112) );
  NR4D0 U564 ( .A1(n114), .A2(n115), .A3(n116), .A4(n117), .ZN(n113) );
  INVD1 U565 ( .I(n204), .ZN(n389) );
  ND4D1 U566 ( .A1(n120), .A2(n121), .A3(n122), .A4(n123), .ZN(c[6]) );
  NR4D0 U567 ( .A1(n361), .A2(n109), .A3(n98), .A4(n395), .ZN(n123) );
  NR2D1 U568 ( .A1(n124), .A2(n125), .ZN(n122) );
  IND4D1 U569 ( .A1(n115), .B1(n126), .B2(n363), .B3(n127), .ZN(c[5]) );
  NR4D0 U570 ( .A1(n385), .A2(n398), .A3(n128), .A4(n99), .ZN(n127) );
  ND2D1 U571 ( .A1(n179), .A2(n193), .ZN(n99) );
  ND2D1 U572 ( .A1(n304), .A2(n300), .ZN(n169) );
  ND2D1 U573 ( .A1(n303), .A2(n300), .ZN(n288) );
  INVD1 U574 ( .I(n245), .ZN(n403) );
  ND4D1 U575 ( .A1(n193), .A2(n270), .A3(n271), .A4(n272), .ZN(n163) );
  NR2D1 U576 ( .A1(n94), .A2(n392), .ZN(n271) );
  NR3D0 U577 ( .A1(n379), .A2(n389), .A3(n198), .ZN(n216) );
  NR4D0 U578 ( .A1(n386), .A2(n357), .A3(n174), .A4(n401), .ZN(n121) );
  INVD1 U579 ( .I(n193), .ZN(n382) );
  INVD1 U580 ( .I(n213), .ZN(n379) );
  INVD1 U581 ( .I(n207), .ZN(n386) );
  NR2D1 U582 ( .A1(n199), .A2(n118), .ZN(n171) );
  NR3D0 U583 ( .A1(n361), .A2(n368), .A3(n173), .ZN(n237) );
  NR2D1 U584 ( .A1(n94), .A2(n385), .ZN(n233) );
  INVD1 U585 ( .I(n108), .ZN(n385) );
  INVD1 U586 ( .I(n243), .ZN(n393) );
  ND4D1 U587 ( .A1(n278), .A2(n204), .A3(n175), .A4(n279), .ZN(n252) );
  NR3D0 U588 ( .A1(n109), .A2(n379), .A3(n383), .ZN(n279) );
  INR3D0 U589 ( .A1(n181), .B1(n385), .B2(n252), .ZN(n133) );
  ND4D1 U590 ( .A1(n145), .A2(n133), .A3(n246), .A4(n247), .ZN(b[4]) );
  NR3D0 U591 ( .A1(n251), .A2(n403), .A3(n362), .ZN(n246) );
  NR4D0 U592 ( .A1(n248), .A2(n119), .A3(n199), .A4(n401), .ZN(n247) );
  NR2D1 U593 ( .A1(n399), .A2(n227), .ZN(n253) );
  NR4D0 U594 ( .A1(n221), .A2(n368), .A3(n407), .A4(n397), .ZN(n254) );
  INVD1 U595 ( .I(n159), .ZN(n397) );
  ND2D1 U596 ( .A1(n134), .A2(n289), .ZN(n115) );
  NR2D1 U597 ( .A1(n359), .A2(n400), .ZN(n244) );
  ND3D1 U598 ( .A1(n164), .A2(n210), .A3(n239), .ZN(n138) );
  INR3D0 U599 ( .A1(n255), .B1(n256), .B2(n377), .ZN(n242) );
  INVD1 U600 ( .I(n151), .ZN(n370) );
  ND4D1 U601 ( .A1(n235), .A2(n196), .A3(n236), .A4(n222), .ZN(n116) );
  NR2D1 U602 ( .A1(n174), .A2(n380), .ZN(n236) );
  ND3D1 U603 ( .A1(n405), .A2(n211), .A3(n267), .ZN(n277) );
  IND4D1 U604 ( .A1(n277), .B1(n290), .B2(n216), .B3(n257), .ZN(a[9]) );
  INVD1 U605 ( .I(n179), .ZN(n380) );
  ND2D1 U606 ( .A1(n249), .A2(n250), .ZN(n248) );
  ND4D1 U607 ( .A1(n166), .A2(n129), .A3(n232), .A4(n157), .ZN(n228) );
  NR2D1 U608 ( .A1(n380), .A2(n109), .ZN(n232) );
  INR4D0 U609 ( .A1(n104), .B1(n394), .B2(n357), .B3(n360), .ZN(n166) );
  INVD1 U610 ( .I(n241), .ZN(n373) );
  INVD1 U611 ( .I(n240), .ZN(n406) );
  ND4D1 U612 ( .A1(n239), .A2(n181), .A3(n231), .A4(n283), .ZN(n200) );
  NR3D0 U613 ( .A1(n370), .A2(n199), .A3(n174), .ZN(n283) );
  ND4D1 U614 ( .A1(n223), .A2(n130), .A3(n224), .A4(n225), .ZN(b[7]) );
  INR3D0 U615 ( .A1(n164), .B1(n355), .B2(n401), .ZN(n224) );
  INR4D0 U616 ( .A1(n226), .B1(n227), .B2(n200), .B3(n228), .ZN(n225) );
  OAI222D0 U617 ( .A1(n87), .A2(n351), .B1(n88), .B2(n352), .C1(n333), .C2(
        n350), .ZN(frac[6]) );
  IND4D1 U618 ( .A1(b[12]), .B1(n369), .B2(n275), .B3(n204), .ZN(a[10]) );
  OAI22D1 U619 ( .A1(n333), .A2(n351), .B1(n87), .B2(n352), .ZN(frac[5]) );
  NR2D1 U620 ( .A1(n402), .A2(n396), .ZN(n219) );
  NR4D0 U621 ( .A1(n221), .A2(n394), .A3(n373), .A4(n386), .ZN(n220) );
  ND3D1 U622 ( .A1(n169), .A2(n130), .A3(n120), .ZN(n192) );
  ND4D1 U623 ( .A1(n235), .A2(n210), .A3(n281), .A4(n282), .ZN(b[10]) );
  NR3D0 U624 ( .A1(n173), .A2(n389), .A3(n118), .ZN(n281) );
  NR4D0 U625 ( .A1(n115), .A2(n183), .A3(n192), .A4(n200), .ZN(n282) );
  ND4D1 U626 ( .A1(n206), .A2(n207), .A3(n208), .A4(n209), .ZN(n117) );
  NR4D0 U627 ( .A1(n94), .A2(n168), .A3(n406), .A4(n173), .ZN(n209) );
  NR2D1 U628 ( .A1(n403), .A2(n165), .ZN(n182) );
  NR2D1 U629 ( .A1(n333), .A2(n352), .ZN(frac[4]) );
  NR3D0 U630 ( .A1(n165), .A2(n366), .A3(n364), .ZN(n206) );
  INVD1 U631 ( .I(n222), .ZN(n402) );
  ND3D1 U634 ( .A1(n129), .A2(n111), .A3(n243), .ZN(n205) );
  ND4D1 U635 ( .A1(n211), .A2(n212), .A3(n213), .A4(n214), .ZN(n125) );
  NR3D0 U636 ( .A1(n387), .A2(n376), .A3(n402), .ZN(n214) );
  INVD1 U637 ( .I(n215), .ZN(n387) );
  ND4D1 U638 ( .A1(n206), .A2(n285), .A3(n286), .A4(n287), .ZN(n183) );
  ND2D1 U639 ( .A1(n180), .A2(n204), .ZN(n203) );
  NR4D0 U640 ( .A1(n357), .A2(n119), .A3(n371), .A4(n256), .ZN(n143) );
  INVD1 U641 ( .I(p[15]), .ZN(n337) );
  ND3D1 U642 ( .A1(n164), .A2(n104), .A3(n158), .ZN(n98) );
  ND3D1 U643 ( .A1(n151), .A2(n187), .A3(n188), .ZN(n114) );
  ND3D1 U644 ( .A1(n159), .A2(n107), .A3(n134), .ZN(n124) );
  ND4D1 U645 ( .A1(n164), .A2(n193), .A3(n194), .A4(n195), .ZN(n141) );
  NR3D0 U646 ( .A1(n198), .A2(n199), .A3(n392), .ZN(n194) );
  INR4D0 U647 ( .A1(n196), .B1(n399), .B2(n197), .B3(n403), .ZN(n195) );
  ND2D1 U648 ( .A1(n157), .A2(n106), .ZN(n197) );
  ND3D1 U649 ( .A1(n106), .A2(n107), .A3(n108), .ZN(n105) );
  INR4D0 U650 ( .A1(n89), .B1(n393), .B2(n165), .B3(n119), .ZN(n139) );
  ND3D1 U651 ( .A1(n179), .A2(n180), .A3(n181), .ZN(n142) );
  NR4D0 U652 ( .A1(n173), .A2(n174), .A3(n379), .A4(n390), .ZN(n172) );
  ND3D1 U653 ( .A1(n149), .A2(n150), .A3(n151), .ZN(n136) );
  ND4D1 U654 ( .A1(n129), .A2(n130), .A3(n131), .A4(n132), .ZN(c[19]) );
  IINR4D0 U655 ( .A1(n133), .A2(n134), .B1(n135), .B2(n136), .ZN(n132) );
  NR3D0 U656 ( .A1(n377), .A2(b[12]), .A3(n378), .ZN(n131) );
  INVD1 U657 ( .I(p[2]), .ZN(n350) );
  INVD1 U658 ( .I(p[1]), .ZN(n351) );
  ND2D1 U659 ( .A1(n324), .A2(n330), .ZN(n106) );
  ND2D1 U660 ( .A1(n321), .A2(n331), .ZN(n241) );
  ND2D1 U661 ( .A1(n321), .A2(n330), .ZN(n215) );
  ND2D1 U662 ( .A1(n299), .A2(n332), .ZN(n287) );
  NR2D1 U663 ( .A1(n410), .A2(n408), .ZN(n316) );
  ND4D1 U664 ( .A1(n152), .A2(n153), .A3(n154), .A4(n155), .ZN(c[15]) );
  NR4D0 U665 ( .A1(n156), .A2(n382), .A3(n407), .A4(n119), .ZN(n155) );
  NR3D0 U666 ( .A1(n372), .A2(n370), .A3(n124), .ZN(n154) );
  ND2D1 U667 ( .A1(n323), .A2(n330), .ZN(n104) );
  ND2D1 U668 ( .A1(n323), .A2(n331), .ZN(n239) );
  ND2D1 U669 ( .A1(n324), .A2(n331), .ZN(n212) );
  ND2D1 U670 ( .A1(n299), .A2(n331), .ZN(n107) );
  ND2D1 U671 ( .A1(n332), .A2(n305), .ZN(n187) );
  ND4D1 U672 ( .A1(n160), .A2(n139), .A3(n161), .A4(n162), .ZN(c[14]) );
  NR4D0 U673 ( .A1(n357), .A2(n376), .A3(n388), .A4(n400), .ZN(n162) );
  NR2D1 U674 ( .A1(n98), .A2(n163), .ZN(n161) );
  ND2D1 U675 ( .A1(n301), .A2(n330), .ZN(n286) );
  ND2D1 U676 ( .A1(n321), .A2(n332), .ZN(n129) );
  ND2D1 U677 ( .A1(n305), .A2(n330), .ZN(n170) );
  ND4D1 U678 ( .A1(n153), .A2(n145), .A3(n166), .A4(n167), .ZN(c[13]) );
  NR3D0 U679 ( .A1(n138), .A2(n168), .A3(n355), .ZN(n167) );
  ND2D1 U680 ( .A1(n332), .A2(n322), .ZN(n285) );
  ND2D1 U681 ( .A1(n323), .A2(n332), .ZN(n130) );
  ND2D1 U682 ( .A1(n332), .A2(n324), .ZN(n159) );
  ND2D1 U683 ( .A1(n307), .A2(n331), .ZN(n181) );
  ND2D1 U684 ( .A1(n307), .A2(n330), .ZN(n207) );
  ND2D1 U685 ( .A1(n304), .A2(n330), .ZN(n164) );
  ND2D1 U686 ( .A1(n317), .A2(n331), .ZN(n270) );
  ND2D1 U687 ( .A1(n320), .A2(n330), .ZN(n250) );
  ND2D1 U688 ( .A1(n304), .A2(n331), .ZN(n151) );
  ND2D1 U689 ( .A1(n317), .A2(n330), .ZN(n291) );
  ND2D1 U690 ( .A1(n319), .A2(n330), .ZN(n257) );
  ND2D1 U691 ( .A1(n320), .A2(n331), .ZN(n149) );
  ND2D1 U692 ( .A1(n301), .A2(n331), .ZN(n196) );
  ND2D1 U693 ( .A1(n319), .A2(n331), .ZN(n211) );
  ND2D1 U694 ( .A1(n320), .A2(n332), .ZN(n210) );
  ND2D1 U695 ( .A1(n306), .A2(n330), .ZN(n243) );
  ND2D1 U696 ( .A1(n303), .A2(n332), .ZN(n240) );
  ND2D1 U697 ( .A1(n319), .A2(n332), .ZN(n289) );
  ND2D1 U698 ( .A1(n304), .A2(n332), .ZN(n255) );
  ND2D1 U699 ( .A1(n330), .A2(n322), .ZN(n204) );
  ND2D1 U700 ( .A1(n309), .A2(n332), .ZN(n222) );
  ND2D1 U701 ( .A1(n318), .A2(n331), .ZN(n213) );
  ND2D1 U702 ( .A1(n309), .A2(n331), .ZN(n193) );
  ND2D1 U703 ( .A1(n309), .A2(n330), .ZN(n134) );
  ND2D1 U704 ( .A1(n303), .A2(n331), .ZN(n179) );
  ND2D1 U705 ( .A1(n303), .A2(n330), .ZN(n108) );
  ND2D1 U706 ( .A1(n332), .A2(n307), .ZN(n245) );
  INVD1 U707 ( .I(p[0]), .ZN(n352) );
  INR2D1 U708 ( .A1(fx_20), .B1(n409), .ZN(n315) );
  INVD1 U709 ( .I(fy_20), .ZN(n411) );
  NR2D1 U712 ( .A1(n408), .A2(fy_21), .ZN(n327) );
  INVD1 U713 ( .I(fx_21), .ZN(n408) );
  INR2D1 U714 ( .A1(fx_20), .B1(fy_22), .ZN(n329) );
  INVD1 U715 ( .I(fy_22), .ZN(n409) );
  NR2D1 U716 ( .A1(fy_22), .A2(fx_20), .ZN(n328) );
  NR2D1 U717 ( .A1(n410), .A2(fx_21), .ZN(n314) );
  INVD1 U718 ( .I(fy_21), .ZN(n410) );
  NR2D1 U719 ( .A1(fy_21), .A2(fx_21), .ZN(n326) );
  INVD1 U720 ( .I(fx_22), .ZN(n384) );
  NR2D1 U723 ( .A1(n409), .A2(fx_20), .ZN(n313) );
  INVD1 U726 ( .I(fx_19), .ZN(rx[3]) );
  INVD1 U727 ( .I(fy_19), .ZN(ry[3]) );
  TIEH U728 ( .Z(n413) );
  TIEL U729 ( .ZN(n412) );
  CKND2D0 U494 ( .A1(n143), .A2(n414), .ZN(b[11]) );
  NR4D0 U495 ( .A1(n277), .A2(n252), .A3(n276), .A4(n415), .ZN(n414) );
  ND4D0 U632 ( .A1(n241), .A2(n150), .A3(n196), .A4(n275), .ZN(n415) );
  NR2D0 U633 ( .A1(n416), .A2(n227), .ZN(n363) );
  ND3D0 U710 ( .A1(n235), .A2(n267), .A3(n268), .ZN(n416) );
  NR2XD0 U711 ( .A1(n411), .A2(fx_22), .ZN(n332) );
  NR2XD0 U721 ( .A1(n384), .A2(fy_20), .ZN(n331) );
  NR2XD0 U722 ( .A1(fy_20), .A2(fx_22), .ZN(n330) );
endmodule

