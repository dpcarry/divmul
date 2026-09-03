/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Thu Sep  3 13:01:39 2026
/////////////////////////////////////////////////////////////


module oadm_fixed_mul_plane_root_opt_LEVEL3_RESIDUAL_DROP10_DW01_add_3 ( A, B, 
        CI, SUM, CO );
  input [28:0] A;
  input [28:0] B;
  output [28:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [24:8] carry;

  FA1D0 U1_7 ( .A(A[7]), .B(B[7]), .CI(n1), .CO(carry[8]), .S(SUM[7]) );
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
  FA1D0 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  FA1D0 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  FA1D0 U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  FA1D0 U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  FA1D0 U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  FA1D0 U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  FA1D0 U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  FA1D0 U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  FA1D0 U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  FA1D0 U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  XOR3D1 U1_24 ( .A1(A[24]), .A2(B[24]), .A3(carry[24]), .Z(SUM[24]) );
  AN2XD1 U1 ( .A1(B[6]), .A2(A[6]), .Z(n1) );
  CKXOR2D1 U2 ( .A1(B[6]), .A2(A[6]), .Z(SUM[6]) );
endmodule


module oadm_fixed_mul_plane_root_opt_LEVEL3_RESIDUAL_DROP10_DW_mult_tc_1 ( a, 
        b, product );
  input [9:0] a;
  input [5:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n17,
         n18, n19, n20, n21, n23, n24, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n63,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n195;

  FA1D0 U2 ( .A(n172), .B(n15), .CI(n2), .CO(n1), .S(product[14]) );
  FA1D0 U3 ( .A(n17), .B(n170), .CI(n3), .CO(n2), .S(product[13]) );
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
  FA1D0 U14 ( .A(n166), .B(n61), .CI(n14), .CO(n13), .S(product[2]) );
  HA1D0 U15 ( .A(n167), .B(n41), .CO(n14), .S(product[1]) );
  FA1D0 U17 ( .A(n43), .B(n21), .CI(n51), .CO(n17), .S(n18) );
  FA1D0 U18 ( .A(n52), .B(n44), .CI(n169), .CO(n19), .S(n20) );
  FA1D0 U20 ( .A(n171), .B(n53), .CI(n169), .CO(n23), .S(n24) );
  FA1D0 U22 ( .A(n63), .B(n45), .CI(n54), .CO(n26), .S(n27) );
  FA1D0 U23 ( .A(n164), .B(n46), .CI(n55), .CO(n28), .S(n29) );
  FA1D0 U24 ( .A(n163), .B(n47), .CI(n56), .CO(n30), .S(n31) );
  FA1D0 U25 ( .A(n162), .B(n48), .CI(n57), .CO(n32), .S(n33) );
  FA1D0 U26 ( .A(n161), .B(n49), .CI(n58), .CO(n34), .S(n35) );
  FA1D0 U27 ( .A(n160), .B(n50), .CI(n59), .CO(n36), .S(n37) );
  HA1D0 U28 ( .A(n60), .B(n165), .CO(n38), .S(n39) );
  XNR2D1 U118 ( .A1(b[1]), .A2(n177), .ZN(n160) );
  XNR2D1 U119 ( .A1(b[1]), .A2(n176), .ZN(n161) );
  XNR2D1 U120 ( .A1(b[1]), .A2(n175), .ZN(n162) );
  XNR2D1 U121 ( .A1(b[1]), .A2(n174), .ZN(n163) );
  XNR2D1 U122 ( .A1(b[1]), .A2(n173), .ZN(n164) );
  INVD1 U123 ( .I(n15), .ZN(n170) );
  INVD1 U124 ( .I(n63), .ZN(n171) );
  INVD1 U125 ( .I(n21), .ZN(n169) );
  XNR2D1 U127 ( .A1(b[1]), .A2(n178), .ZN(n165) );
  INVD1 U128 ( .I(b[3]), .ZN(n168) );
  XNR2D1 U130 ( .A1(b[1]), .A2(n179), .ZN(n166) );
  INVD1 U131 ( .I(a[0]), .ZN(n181) );
  XNR2D1 U132 ( .A1(b[1]), .A2(n180), .ZN(n167) );
  INVD1 U133 ( .I(a[9]), .ZN(n172) );
  INVD1 U134 ( .I(a[1]), .ZN(n180) );
  INVD1 U135 ( .I(a[2]), .ZN(n179) );
  INVD1 U136 ( .I(a[3]), .ZN(n178) );
  INVD1 U137 ( .I(a[4]), .ZN(n177) );
  INVD1 U138 ( .I(a[5]), .ZN(n176) );
  INVD1 U139 ( .I(a[6]), .ZN(n175) );
  INVD1 U140 ( .I(a[7]), .ZN(n174) );
  INVD1 U141 ( .I(a[8]), .ZN(n173) );
  CKND0 U142 ( .I(n181), .ZN(product[0]) );
  AN2D0 U143 ( .A1(n181), .A2(b[1]), .Z(n41) );
  CKND0 U144 ( .I(n1), .ZN(product[15]) );
  XNR2D0 U145 ( .A1(b[1]), .A2(n172), .ZN(n63) );
  NR2D0 U146 ( .A1(n182), .A2(n181), .ZN(n61) );
  OAI22D0 U147 ( .A1(n183), .A2(n184), .B1(n182), .B2(n185), .ZN(n60) );
  CKXOR2D0 U148 ( .A1(b[3]), .A2(n181), .Z(n183) );
  OAI22D0 U149 ( .A1(n185), .A2(n184), .B1(n182), .B2(n186), .ZN(n59) );
  CKXOR2D0 U150 ( .A1(b[3]), .A2(n180), .Z(n185) );
  OAI22D0 U151 ( .A1(n186), .A2(n184), .B1(n182), .B2(n187), .ZN(n58) );
  CKXOR2D0 U152 ( .A1(b[3]), .A2(n179), .Z(n186) );
  OAI22D0 U153 ( .A1(n187), .A2(n184), .B1(n182), .B2(n188), .ZN(n57) );
  CKXOR2D0 U154 ( .A1(b[3]), .A2(n178), .Z(n187) );
  OAI22D0 U155 ( .A1(n188), .A2(n184), .B1(n182), .B2(n189), .ZN(n56) );
  CKXOR2D0 U156 ( .A1(b[3]), .A2(n177), .Z(n188) );
  OAI22D0 U157 ( .A1(n189), .A2(n184), .B1(n182), .B2(n190), .ZN(n55) );
  CKXOR2D0 U158 ( .A1(b[3]), .A2(n176), .Z(n189) );
  OAI22D0 U159 ( .A1(n190), .A2(n184), .B1(n182), .B2(n191), .ZN(n54) );
  CKXOR2D0 U160 ( .A1(b[3]), .A2(n175), .Z(n190) );
  OAI22D0 U161 ( .A1(n191), .A2(n184), .B1(n182), .B2(n192), .ZN(n53) );
  CKXOR2D0 U162 ( .A1(b[3]), .A2(n174), .Z(n191) );
  OAI22D0 U163 ( .A1(n192), .A2(n184), .B1(n182), .B2(n193), .ZN(n52) );
  CKXOR2D0 U164 ( .A1(b[3]), .A2(n173), .Z(n192) );
  AO21D0 U165 ( .A1(n184), .A2(n182), .B(n193), .Z(n51) );
  CKXOR2D0 U166 ( .A1(n168), .A2(a[9]), .Z(n193) );
  NR2D0 U167 ( .A1(b[3]), .A2(n181), .ZN(n50) );
  OAI22D0 U168 ( .A1(n181), .A2(n168), .B1(b[3]), .B2(n180), .ZN(n49) );
  OAI22D0 U169 ( .A1(n180), .A2(n168), .B1(b[3]), .B2(n179), .ZN(n48) );
  OAI22D0 U170 ( .A1(n179), .A2(n168), .B1(b[3]), .B2(n178), .ZN(n47) );
  OAI22D0 U171 ( .A1(n178), .A2(n168), .B1(b[3]), .B2(n177), .ZN(n46) );
  OAI22D0 U172 ( .A1(n177), .A2(n168), .B1(b[3]), .B2(n176), .ZN(n45) );
  OAI22D0 U173 ( .A1(n175), .A2(n168), .B1(b[3]), .B2(n174), .ZN(n44) );
  OAI22D0 U174 ( .A1(n174), .A2(n168), .B1(b[3]), .B2(n173), .ZN(n43) );
  OAI32D0 U175 ( .A1(n168), .A2(a[0]), .A3(n182), .B1(n168), .B2(n184), .ZN(
        n40) );
  OAI22D0 U177 ( .A1(n176), .A2(n168), .B1(b[3]), .B2(n175), .ZN(n21) );
  OAI22D0 U178 ( .A1(b[3]), .A2(n172), .B1(n173), .B2(n168), .ZN(n15) );
  OAI211D0 U126 ( .A1(b[2]), .A2(b[3]), .B(n195), .C(n182), .ZN(n184) );
  XNR2D0 U129 ( .A1(b[2]), .A2(b[1]), .ZN(n182) );
  CKND2D0 U176 ( .A1(b[2]), .A2(b[3]), .ZN(n195) );
endmodule


module oadm_fixed_mul_plane_root_opt_LEVEL3_RESIDUAL_DROP10_DW_mult_tc_0 ( a, 
        b, product );
  input [9:0] a;
  input [5:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n17,
         n18, n19, n20, n21, n23, n24, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n63,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n195;

  FA1D0 U2 ( .A(n172), .B(n15), .CI(n2), .CO(n1), .S(product[14]) );
  FA1D0 U3 ( .A(n17), .B(n170), .CI(n3), .CO(n2), .S(product[13]) );
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
  FA1D0 U14 ( .A(n166), .B(n61), .CI(n14), .CO(n13), .S(product[2]) );
  HA1D0 U15 ( .A(n167), .B(n41), .CO(n14), .S(product[1]) );
  FA1D0 U17 ( .A(n43), .B(n21), .CI(n51), .CO(n17), .S(n18) );
  FA1D0 U18 ( .A(n52), .B(n44), .CI(n169), .CO(n19), .S(n20) );
  FA1D0 U20 ( .A(n171), .B(n53), .CI(n169), .CO(n23), .S(n24) );
  FA1D0 U22 ( .A(n63), .B(n45), .CI(n54), .CO(n26), .S(n27) );
  FA1D0 U23 ( .A(n164), .B(n46), .CI(n55), .CO(n28), .S(n29) );
  FA1D0 U24 ( .A(n163), .B(n47), .CI(n56), .CO(n30), .S(n31) );
  FA1D0 U25 ( .A(n162), .B(n48), .CI(n57), .CO(n32), .S(n33) );
  FA1D0 U26 ( .A(n161), .B(n49), .CI(n58), .CO(n34), .S(n35) );
  FA1D0 U27 ( .A(n160), .B(n50), .CI(n59), .CO(n36), .S(n37) );
  HA1D0 U28 ( .A(n60), .B(n165), .CO(n38), .S(n39) );
  XNR2D1 U118 ( .A1(b[1]), .A2(n177), .ZN(n160) );
  XNR2D1 U119 ( .A1(b[1]), .A2(n176), .ZN(n161) );
  XNR2D1 U120 ( .A1(b[1]), .A2(n175), .ZN(n162) );
  XNR2D1 U121 ( .A1(b[1]), .A2(n174), .ZN(n163) );
  XNR2D1 U122 ( .A1(b[1]), .A2(n173), .ZN(n164) );
  INVD1 U123 ( .I(n15), .ZN(n170) );
  INVD1 U124 ( .I(n63), .ZN(n171) );
  INVD1 U125 ( .I(n21), .ZN(n169) );
  XNR2D1 U127 ( .A1(b[1]), .A2(n178), .ZN(n165) );
  INVD1 U128 ( .I(b[3]), .ZN(n168) );
  XNR2D1 U130 ( .A1(b[1]), .A2(n179), .ZN(n166) );
  INVD1 U131 ( .I(a[0]), .ZN(n181) );
  XNR2D1 U132 ( .A1(b[1]), .A2(n180), .ZN(n167) );
  INVD1 U133 ( .I(a[9]), .ZN(n172) );
  INVD1 U134 ( .I(a[1]), .ZN(n180) );
  INVD1 U135 ( .I(a[2]), .ZN(n179) );
  INVD1 U136 ( .I(a[3]), .ZN(n178) );
  INVD1 U137 ( .I(a[4]), .ZN(n177) );
  INVD1 U138 ( .I(a[5]), .ZN(n176) );
  INVD1 U139 ( .I(a[6]), .ZN(n175) );
  INVD1 U140 ( .I(a[7]), .ZN(n174) );
  INVD1 U141 ( .I(a[8]), .ZN(n173) );
  CKND0 U142 ( .I(n181), .ZN(product[0]) );
  AN2D0 U143 ( .A1(n181), .A2(b[1]), .Z(n41) );
  CKND0 U144 ( .I(n1), .ZN(product[15]) );
  XNR2D0 U145 ( .A1(b[1]), .A2(n172), .ZN(n63) );
  NR2D0 U146 ( .A1(n182), .A2(n181), .ZN(n61) );
  OAI22D0 U147 ( .A1(n183), .A2(n184), .B1(n182), .B2(n185), .ZN(n60) );
  CKXOR2D0 U148 ( .A1(b[3]), .A2(n181), .Z(n183) );
  OAI22D0 U149 ( .A1(n185), .A2(n184), .B1(n182), .B2(n186), .ZN(n59) );
  CKXOR2D0 U150 ( .A1(b[3]), .A2(n180), .Z(n185) );
  OAI22D0 U151 ( .A1(n186), .A2(n184), .B1(n182), .B2(n187), .ZN(n58) );
  CKXOR2D0 U152 ( .A1(b[3]), .A2(n179), .Z(n186) );
  OAI22D0 U153 ( .A1(n187), .A2(n184), .B1(n182), .B2(n188), .ZN(n57) );
  CKXOR2D0 U154 ( .A1(b[3]), .A2(n178), .Z(n187) );
  OAI22D0 U155 ( .A1(n188), .A2(n184), .B1(n182), .B2(n189), .ZN(n56) );
  CKXOR2D0 U156 ( .A1(b[3]), .A2(n177), .Z(n188) );
  OAI22D0 U157 ( .A1(n189), .A2(n184), .B1(n182), .B2(n190), .ZN(n55) );
  CKXOR2D0 U158 ( .A1(b[3]), .A2(n176), .Z(n189) );
  OAI22D0 U159 ( .A1(n190), .A2(n184), .B1(n182), .B2(n191), .ZN(n54) );
  CKXOR2D0 U160 ( .A1(b[3]), .A2(n175), .Z(n190) );
  OAI22D0 U161 ( .A1(n191), .A2(n184), .B1(n182), .B2(n192), .ZN(n53) );
  CKXOR2D0 U162 ( .A1(b[3]), .A2(n174), .Z(n191) );
  OAI22D0 U163 ( .A1(n192), .A2(n184), .B1(n182), .B2(n193), .ZN(n52) );
  CKXOR2D0 U164 ( .A1(b[3]), .A2(n173), .Z(n192) );
  AO21D0 U165 ( .A1(n184), .A2(n182), .B(n193), .Z(n51) );
  CKXOR2D0 U166 ( .A1(n168), .A2(a[9]), .Z(n193) );
  NR2D0 U167 ( .A1(b[3]), .A2(n181), .ZN(n50) );
  OAI22D0 U168 ( .A1(n181), .A2(n168), .B1(b[3]), .B2(n180), .ZN(n49) );
  OAI22D0 U169 ( .A1(n180), .A2(n168), .B1(b[3]), .B2(n179), .ZN(n48) );
  OAI22D0 U170 ( .A1(n179), .A2(n168), .B1(b[3]), .B2(n178), .ZN(n47) );
  OAI22D0 U171 ( .A1(n178), .A2(n168), .B1(b[3]), .B2(n177), .ZN(n46) );
  OAI22D0 U172 ( .A1(n177), .A2(n168), .B1(b[3]), .B2(n176), .ZN(n45) );
  OAI22D0 U173 ( .A1(n175), .A2(n168), .B1(b[3]), .B2(n174), .ZN(n44) );
  OAI22D0 U174 ( .A1(n174), .A2(n168), .B1(b[3]), .B2(n173), .ZN(n43) );
  OAI32D0 U175 ( .A1(n168), .A2(a[0]), .A3(n182), .B1(n168), .B2(n184), .ZN(
        n40) );
  OAI22D0 U177 ( .A1(n176), .A2(n168), .B1(b[3]), .B2(n175), .ZN(n21) );
  OAI22D0 U178 ( .A1(b[3]), .A2(n172), .B1(n173), .B2(n168), .ZN(n15) );
  OAI211D0 U126 ( .A1(b[2]), .A2(b[3]), .B(n195), .C(n182), .ZN(n184) );
  XNR2D0 U129 ( .A1(b[2]), .A2(b[1]), .ZN(n182) );
  CKND2D0 U176 ( .A1(b[2]), .A2(b[3]), .ZN(n195) );
endmodule


module oadm_fixed_mul_plane_root_opt_LEVEL3_RESIDUAL_DROP10_DW_mult_uns_0 ( a, 
        b, product );
  input [4:0] a;
  input [4:0] b;
  output [9:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n20, n21, n22, n24, n25, n26, n27, n28, n29, n36, n37, n41,
         n42, n43, n46, n47, n48, n88, n89, n90, n91, n94, n95, n96, n97, n98,
         n101, n102, n103, n104, n105, n106, n107;

  FA1D0 U3 ( .A(n12), .B(n10), .CI(n3), .CO(n2), .S(product[7]) );
  FA1D0 U4 ( .A(n15), .B(n13), .CI(n4), .CO(n3), .S(product[6]) );
  FA1D0 U5 ( .A(n16), .B(n20), .CI(n5), .CO(n4), .S(product[5]) );
  FA1D0 U6 ( .A(n21), .B(n24), .CI(n6), .CO(n5), .S(product[4]) );
  FA1D0 U7 ( .A(n25), .B(n27), .CI(n7), .CO(n6), .S(product[3]) );
  FA1D0 U8 ( .A(n8), .B(a[2]), .CI(n29), .CO(n7), .S(product[2]) );
  HA1D0 U9 ( .A(b[1]), .B(a[1]), .CO(n8), .S(product[1]) );
  FA1D0 U10 ( .A(b[3]), .B(a[3]), .CI(n11), .CO(n9), .S(n10) );
  CMPE42D1 U11 ( .A(b[2]), .B(a[2]), .C(n36), .CIX(n14), .D(n17), .CO(n12), 
        .COX(n11), .S(n13) );
  CMPE42D1 U12 ( .A(n41), .B(a[1]), .C(n22), .CIX(n89), .D(n18), .CO(n15), 
        .COX(n14), .S(n16) );
  HA1D0 U13 ( .A(b[1]), .B(n37), .CO(n17), .S(n18) );
  FA1D0 U16 ( .A(n47), .B(b[3]), .CI(n28), .CO(n24), .S(n25) );
  HA1D0 U17 ( .A(a[3]), .B(n43), .CO(n26), .S(n27) );
  HA1D0 U18 ( .A(n48), .B(b[2]), .CO(n28), .S(n29) );
  XNR3D1 U57 ( .A1(n42), .A2(n46), .A3(n101), .ZN(n21) );
  INVD1 U58 ( .I(n22), .ZN(n94) );
  ND2D1 U59 ( .A1(n46), .A2(n26), .ZN(n104) );
  IND2D1 U60 ( .A1(n46), .B1(n26), .ZN(n103) );
  NR2D1 U62 ( .A1(n46), .A2(n22), .ZN(n105) );
  AN2XD1 U63 ( .A1(n46), .A2(n94), .Z(n88) );
  INVD1 U67 ( .I(b[3]), .ZN(n90) );
  INVD1 U68 ( .I(a[1]), .ZN(n96) );
  INVD1 U69 ( .I(b[1]), .ZN(n98) );
  INVD1 U70 ( .I(a[3]), .ZN(n91) );
  INVD1 U71 ( .I(a[2]), .ZN(n95) );
  OR2D1 U72 ( .A1(n46), .A2(n42), .Z(n89) );
  INVD1 U73 ( .I(b[2]), .ZN(n97) );
  XNR2D1 U74 ( .A1(n2), .A2(n9), .ZN(product[8]) );
  MUX2ND0 U75 ( .I0(n103), .I1(n104), .S(n42), .ZN(n102) );
  CKXOR2D1 U76 ( .A1(n26), .A2(n94), .Z(n101) );
  NR2D0 U78 ( .A1(n98), .A2(n96), .ZN(n48) );
  NR2D0 U79 ( .A1(n97), .A2(n96), .ZN(n47) );
  NR2D0 U80 ( .A1(n90), .A2(n96), .ZN(n46) );
  NR2D0 U81 ( .A1(n98), .A2(n95), .ZN(n43) );
  NR2D0 U82 ( .A1(n97), .A2(n95), .ZN(n42) );
  NR2D0 U83 ( .A1(n90), .A2(n95), .ZN(n41) );
  NR2D0 U84 ( .A1(n98), .A2(n91), .ZN(n22) );
  NR2D0 U85 ( .A1(n97), .A2(n91), .ZN(n37) );
  NR2D0 U86 ( .A1(n90), .A2(n91), .ZN(n36) );
  OR2D0 U56 ( .A1(n9), .A2(n2), .Z(product[9]) );
  AO211D0 U61 ( .A1(n107), .A2(n26), .B(n102), .C(n106), .Z(n20) );
  MUX2D0 U64 ( .I0(n105), .I1(n88), .S(n42), .Z(n106) );
  CKND0 U65 ( .I(n22), .ZN(n107) );
endmodule


module oadm_fixed_mul_plane_root_opt_LEVEL3_RESIDUAL_DROP10 ( x_mantissa, 
        y_mantissa, plane_value );
  input [23:0] x_mantissa;
  input [23:0] y_mantissa;
  output [28:0] plane_value;
  wire   x_residual_19_, y_residual_19_, N9, N8, N7, N6, N51, N50, net2165,
         N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36,
         N35, N34, N33, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14,
         N13, N12, N11, N10, add_52_carry_2_, add_52_carry_3_, n70, n90, n100,
         n110, n120, n130, n140, n150, n160, n170, n180, n190, n200, n210;
  wire   [15:9] x_product;
  wire   [15:0] y_product;
  wire   [9:1] midpoint_product;
  wire   [4:1] midpoint_sum;
  wire   [24:17] add_2_root_add_56_3_carry;
  wire   [11:8] add_1_root_add_56_3_carry;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10;

  oadm_fixed_mul_plane_root_opt_LEVEL3_RESIDUAL_DROP10_DW01_add_3 add_0_root_add_56_3 ( 
        .A({net2165, net2165, net2165, net2165, N24, N23, N22, N21, N20, N19, 
        N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, net2165, 
        net2165, net2165, net2165, net2165, net2165}), .B({net2165, net2165, 
        net2165, net2165, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, 
        N41, N40, N39, N38, N37, N36, N35, N34, N33, net2165, net2165, net2165, 
        net2165, net2165, net2165}), .CI(net2165), .SUM({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, plane_value[24:6], 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9}) );
  oadm_fixed_mul_plane_root_opt_LEVEL3_RESIDUAL_DROP10_DW_mult_tc_1 mult_33 ( 
        .a({x_residual_19_, x_mantissa[18:10]}), .b({net2165, n70, 
        y_mantissa[22:20], n70}), .product({x_product, N14, N13, N12, N11, N10, 
        N9, N8, N7, N6}) );
  oadm_fixed_mul_plane_root_opt_LEVEL3_RESIDUAL_DROP10_DW_mult_tc_0 mult_35 ( 
        .a({y_residual_19_, y_mantissa[18:10]}), .b({net2165, n70, 
        x_mantissa[22:20], n70}), .product(y_product) );
  oadm_fixed_mul_plane_root_opt_LEVEL3_RESIDUAL_DROP10_DW_mult_uns_0 mult_46 ( 
        .a({n70, x_mantissa[22:20], n70}), .b({n70, y_mantissa[22:20], n70}), 
        .product({midpoint_product, SYNOPSYS_UNCONNECTED__10}) );
  TIEH U3 ( .Z(n70) );
  AN2XD1 U12 ( .A1(midpoint_sum[1]), .A2(y_product[0]), .Z(n90) );
  XOR3D1 U13 ( .A1(midpoint_product[9]), .A2(x_product[15]), .A3(
        add_2_root_add_56_3_carry[24]), .Z(N24) );
  AN2XD1 U14 ( .A1(n120), .A2(y_product[15]), .Z(n100) );
  AN2XD1 U15 ( .A1(n100), .A2(y_product[15]), .Z(n110) );
  FA1D0 U16 ( .A(midpoint_product[6]), .B(x_product[15]), .CI(
        add_2_root_add_56_3_carry[21]), .CO(add_2_root_add_56_3_carry[22]), 
        .S(N21) );
  FA1D0 U17 ( .A(midpoint_product[8]), .B(x_product[15]), .CI(
        add_2_root_add_56_3_carry[23]), .CO(add_2_root_add_56_3_carry[24]), 
        .S(N23) );
  FA1D0 U18 ( .A(midpoint_product[7]), .B(x_product[15]), .CI(
        add_2_root_add_56_3_carry[22]), .CO(add_2_root_add_56_3_carry[23]), 
        .S(N22) );
  FA1D0 U19 ( .A(midpoint_product[5]), .B(x_product[14]), .CI(
        add_2_root_add_56_3_carry[20]), .CO(add_2_root_add_56_3_carry[21]), 
        .S(N20) );
  FA1D0 U20 ( .A(midpoint_product[4]), .B(x_product[13]), .CI(
        add_2_root_add_56_3_carry[19]), .CO(add_2_root_add_56_3_carry[20]), 
        .S(N19) );
  FA1D0 U21 ( .A(midpoint_product[3]), .B(x_product[12]), .CI(
        add_2_root_add_56_3_carry[18]), .CO(add_2_root_add_56_3_carry[19]), 
        .S(N18) );
  AN2XD1 U22 ( .A1(n130), .A2(y_product[14]), .Z(n120) );
  AN2XD1 U23 ( .A1(n140), .A2(y_product[13]), .Z(n130) );
  AN2XD1 U24 ( .A1(n150), .A2(y_product[12]), .Z(n140) );
  INVD1 U25 ( .I(x_product[9]), .ZN(N15) );
  AN2XD1 U26 ( .A1(n160), .A2(y_product[11]), .Z(n150) );
  AN2XD1 U27 ( .A1(n170), .A2(y_product[10]), .Z(n160) );
  AN2XD1 U28 ( .A1(n180), .A2(y_product[9]), .Z(n170) );
  AN2XD1 U29 ( .A1(n190), .A2(y_product[8]), .Z(n180) );
  AN2XD1 U30 ( .A1(n200), .A2(y_product[7]), .Z(n190) );
  AN2XD1 U31 ( .A1(n210), .A2(y_product[6]), .Z(n200) );
  AN2XD1 U32 ( .A1(add_1_root_add_56_3_carry[11]), .A2(y_product[5]), .Z(n210)
         );
  FA1D0 U34 ( .A(midpoint_product[2]), .B(x_product[11]), .CI(
        add_2_root_add_56_3_carry[17]), .CO(add_2_root_add_56_3_carry[18]), 
        .S(N17) );
  FA1D0 U35 ( .A(midpoint_product[1]), .B(x_product[10]), .CI(x_product[9]), 
        .CO(add_2_root_add_56_3_carry[17]), .S(N16) );
  FA1D0 U36 ( .A(y_product[3]), .B(midpoint_sum[4]), .CI(
        add_1_root_add_56_3_carry[9]), .CO(add_1_root_add_56_3_carry[10]), .S(
        N36) );
  FA1D0 U37 ( .A(y_product[2]), .B(midpoint_sum[3]), .CI(
        add_1_root_add_56_3_carry[8]), .CO(add_1_root_add_56_3_carry[9]), .S(
        N35) );
  FA1D0 U38 ( .A(y_product[1]), .B(midpoint_sum[2]), .CI(n90), .CO(
        add_1_root_add_56_3_carry[8]), .S(N34) );
  FA1D0 U39 ( .A(x_mantissa[21]), .B(y_mantissa[21]), .CI(add_52_carry_2_), 
        .CO(add_52_carry_3_), .S(midpoint_sum[2]) );
  FA1D0 U43 ( .A(x_mantissa[22]), .B(y_mantissa[22]), .CI(add_52_carry_3_), 
        .CO(midpoint_sum[4]), .S(midpoint_sum[3]) );
  INVD1 U46 ( .I(x_mantissa[19]), .ZN(x_residual_19_) );
  INVD1 U47 ( .I(y_mantissa[19]), .ZN(y_residual_19_) );
  TIEL U48 ( .ZN(net2165) );
  XNR2D1 U49 ( .A1(y_mantissa[20]), .A2(x_mantissa[20]), .ZN(midpoint_sum[1])
         );
  XNR2D1 U50 ( .A1(add_1_root_add_56_3_carry[10]), .A2(y_product[4]), .ZN(N37)
         );
  CKXOR2D1 U51 ( .A1(midpoint_sum[1]), .A2(y_product[0]), .Z(N33) );
  CKXOR2D1 U52 ( .A1(add_1_root_add_56_3_carry[11]), .A2(y_product[5]), .Z(N38) );
  CKXOR2D1 U53 ( .A1(n210), .A2(y_product[6]), .Z(N39) );
  CKXOR2D1 U54 ( .A1(n200), .A2(y_product[7]), .Z(N40) );
  CKXOR2D1 U55 ( .A1(n190), .A2(y_product[8]), .Z(N41) );
  CKXOR2D1 U56 ( .A1(n180), .A2(y_product[9]), .Z(N42) );
  CKXOR2D1 U57 ( .A1(n170), .A2(y_product[10]), .Z(N43) );
  CKXOR2D1 U58 ( .A1(n160), .A2(y_product[11]), .Z(N44) );
  CKXOR2D1 U59 ( .A1(n150), .A2(y_product[12]), .Z(N45) );
  CKXOR2D1 U60 ( .A1(n140), .A2(y_product[13]), .Z(N46) );
  CKXOR2D1 U61 ( .A1(n130), .A2(y_product[14]), .Z(N47) );
  CKXOR2D1 U62 ( .A1(n120), .A2(y_product[15]), .Z(N48) );
  CKXOR2D1 U63 ( .A1(n100), .A2(y_product[15]), .Z(N49) );
  CKXOR2D1 U64 ( .A1(n110), .A2(y_product[15]), .Z(N50) );
  INR2D0 U4 ( .A1(y_product[15]), .B1(n110), .ZN(N51) );
  OR2D0 U5 ( .A1(y_product[4]), .A2(add_1_root_add_56_3_carry[10]), .Z(
        add_1_root_add_56_3_carry[11]) );
  OR2D0 U6 ( .A1(x_mantissa[20]), .A2(y_mantissa[20]), .Z(add_52_carry_2_) );
endmodule


module fp32_normal_finite_wrapper_DW01_add_3_DW01_add_9 ( A, B, CI, SUM, CO );
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
  wire   N42, N41, N40, N39, N38, N37, N36, N35, N34, N33, N32, N31, N30, N29,
         N28, N27, n1, n4, n5, n6, n7, n8, n79, n80;
  wire   [7:2] add_0_root_add_0_root_add_25_2_carry;

  CKXOR2D1 U2 ( .A1(y[31]), .A2(x[31]), .Z(result[31]) );
  fp32_normal_finite_wrapper_DW01_add_3_DW01_add_9 add_1_root_add_0_root_add_25_2 ( 
        .A(x[30:23]), .B({N42, N41, N40, N39, N38, N37, N36, N35}), .CI(n79), 
        .SUM({N34, N33, N32, N31, N30, N29, N28, N27}) );
  AN2XD1 U3 ( .A1(exponent_adjust[0]), .A2(N27), .Z(n1) );
  CKBD1 U26 ( .I(result_fraction[5]), .Z(result[5]) );
  CKBD1 U27 ( .I(result_fraction[12]), .Z(result[12]) );
  CKBD1 U28 ( .I(result_fraction[13]), .Z(result[13]) );
  CKBD1 U29 ( .I(result_fraction[14]), .Z(result[14]) );
  CKBD1 U30 ( .I(result_fraction[15]), .Z(result[15]) );
  CKBD1 U31 ( .I(result_fraction[16]), .Z(result[16]) );
  CKBD1 U32 ( .I(result_fraction[17]), .Z(result[17]) );
  CKBD1 U33 ( .I(result_fraction[18]), .Z(result[18]) );
  CKBD1 U34 ( .I(result_fraction[19]), .Z(result[19]) );
  CKBD1 U35 ( .I(result_fraction[20]), .Z(result[20]) );
  CKBD1 U36 ( .I(result_fraction[7]), .Z(result[7]) );
  CKBD1 U37 ( .I(result_fraction[6]), .Z(result[6]) );
  CKBD1 U38 ( .I(result_fraction[10]), .Z(result[10]) );
  CKBD1 U39 ( .I(result_fraction[11]), .Z(result[11]) );
  CKBD1 U40 ( .I(result_fraction[9]), .Z(result[9]) );
  CKBD1 U41 ( .I(result_fraction[8]), .Z(result[8]) );
  FA1D0 U42 ( .A(N28), .B(exponent_adjust[1]), .CI(n1), .CO(
        add_0_root_add_0_root_add_25_2_carry[2]), .S(result[24]) );
  FA1D0 U43 ( .A(N29), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[2]), .CO(
        add_0_root_add_0_root_add_25_2_carry[3]), .S(result[25]) );
  FA1D0 U44 ( .A(N30), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[3]), .CO(
        add_0_root_add_0_root_add_25_2_carry[4]), .S(result[26]) );
  FA1D0 U45 ( .A(N31), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[4]), .CO(
        add_0_root_add_0_root_add_25_2_carry[5]), .S(result[27]) );
  FA1D0 U46 ( .A(N32), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[5]), .CO(
        add_0_root_add_0_root_add_25_2_carry[6]), .S(result[28]) );
  FA1D0 U47 ( .A(N33), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[6]), .CO(
        add_0_root_add_0_root_add_25_2_carry[7]), .S(result[29]) );
  XOR3D1 U56 ( .A1(N34), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_25_2_carry[7]), .Z(result[30]) );
  CKBD1 U57 ( .I(y[22]), .Z(fraction_y[22]) );
  CKBD1 U58 ( .I(x[22]), .Z(fraction_x[22]) );
  CKBD1 U59 ( .I(y[20]), .Z(fraction_y[20]) );
  CKBD1 U60 ( .I(x[20]), .Z(fraction_x[20]) );
  CKBD1 U61 ( .I(y[21]), .Z(fraction_y[21]) );
  AN2XD1 U69 ( .A1(y[23]), .A2(y[24]), .Z(n4) );
  AN2XD1 U70 ( .A1(n4), .A2(y[25]), .Z(n5) );
  AN2XD1 U71 ( .A1(n5), .A2(y[26]), .Z(n6) );
  AN2XD1 U72 ( .A1(n6), .A2(y[27]), .Z(n7) );
  AN2XD1 U73 ( .A1(n7), .A2(y[28]), .Z(n8) );
  CKBD1 U86 ( .I(x[21]), .Z(fraction_x[21]) );
  CKBD1 U87 ( .I(x[19]), .Z(fraction_x[19]) );
  CKBD1 U88 ( .I(x[18]), .Z(fraction_x[18]) );
  CKBD1 U89 ( .I(x[17]), .Z(fraction_x[17]) );
  CKBD1 U90 ( .I(x[16]), .Z(fraction_x[16]) );
  CKBD1 U91 ( .I(x[15]), .Z(fraction_x[15]) );
  CKBD1 U92 ( .I(x[14]), .Z(fraction_x[14]) );
  CKBD1 U93 ( .I(x[13]), .Z(fraction_x[13]) );
  CKBD1 U94 ( .I(x[12]), .Z(fraction_x[12]) );
  CKBD1 U95 ( .I(x[11]), .Z(fraction_x[11]) );
  CKBD1 U96 ( .I(x[10]), .Z(fraction_x[10]) );
  CKBD1 U97 ( .I(y[19]), .Z(fraction_y[19]) );
  CKBD1 U98 ( .I(y[18]), .Z(fraction_y[18]) );
  CKBD1 U99 ( .I(y[17]), .Z(fraction_y[17]) );
  CKBD1 U100 ( .I(y[16]), .Z(fraction_y[16]) );
  CKBD1 U101 ( .I(y[15]), .Z(fraction_y[15]) );
  CKBD1 U102 ( .I(y[14]), .Z(fraction_y[14]) );
  CKBD1 U103 ( .I(y[13]), .Z(fraction_y[13]) );
  CKBD1 U104 ( .I(y[12]), .Z(fraction_y[12]) );
  CKBD1 U105 ( .I(y[11]), .Z(fraction_y[11]) );
  CKBD1 U106 ( .I(y[10]), .Z(fraction_y[10]) );
  CKBD1 U107 ( .I(result_fraction[22]), .Z(result[22]) );
  CKBD1 U108 ( .I(result_fraction[21]), .Z(result[21]) );
  TIEL U109 ( .ZN(n79) );
  CKXOR2D1 U112 ( .A1(exponent_adjust[0]), .A2(N27), .Z(result[23]) );
  CKXOR2D1 U113 ( .A1(y[23]), .A2(y[24]), .Z(N36) );
  CKXOR2D1 U114 ( .A1(n4), .A2(y[25]), .Z(N37) );
  CKXOR2D1 U115 ( .A1(n5), .A2(y[26]), .Z(N38) );
  CKXOR2D1 U116 ( .A1(n6), .A2(y[27]), .Z(N39) );
  CKXOR2D1 U117 ( .A1(n7), .A2(y[28]), .Z(N40) );
  CKXOR2D1 U118 ( .A1(n8), .A2(y[29]), .Z(N41) );
  CKND0 U119 ( .I(y[23]), .ZN(N35) );
  CKXOR2D0 U4 ( .A1(y[30]), .A2(n80), .Z(N42) );
  CKND2D0 U5 ( .A1(y[29]), .A2(n8), .ZN(n80) );
endmodule


module oadm_fixed_mul_root_opt_LEVEL3_RESIDUAL_DROP10 ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   n27, n28, n29, n31, n32, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21;
  wire   [22:10] x_mantissa;
  wire   [22:10] y_mantissa;
  wire   [24:6] core_value;
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
        SYNOPSYS_UNCONNECTED__34;

  oadm_fixed_mul_plane_root_opt_LEVEL3_RESIDUAL_DROP10 plane ( .x_mantissa({
        1'b0, x_mantissa, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .y_mantissa({1'b0, y_mantissa, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .plane_value({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, core_value, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9}) );
  fp32_normal_finite_wrapper fp_wrapper ( .x({x[31:10], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y({y[31:10], 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .divide_mode(1'b0), 
        .fraction_x({x_mantissa, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15, SYNOPSYS_UNCONNECTED__16, 
        SYNOPSYS_UNCONNECTED__17, SYNOPSYS_UNCONNECTED__18, 
        SYNOPSYS_UNCONNECTED__19}), .fraction_y({y_mantissa, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29}), 
        .result_fraction({normalized_fraction, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .exponent_adjust({exponent_adjust[2], exponent_adjust[2], 
        exponent_adjust[0]}), .result({result[31:5], SYNOPSYS_UNCONNECTED__30, 
        SYNOPSYS_UNCONNECTED__31, SYNOPSYS_UNCONNECTED__32, 
        SYNOPSYS_UNCONNECTED__33, SYNOPSYS_UNCONNECTED__34}) );
  IND2D1 U3 ( .A1(n29), .B1(n3), .ZN(exponent_adjust[2]) );
  INVD1 U4 ( .I(n1), .ZN(n3) );
  ND2D1 U5 ( .A1(n2), .A2(n3), .ZN(exponent_adjust[0]) );
  NR3D0 U8 ( .A1(core_value[23]), .A2(core_value[24]), .A3(core_value[22]), 
        .ZN(n29) );
  INVD1 U9 ( .I(core_value[22]), .ZN(n5) );
  INVD1 U10 ( .I(core_value[24]), .ZN(n2) );
  ND2D1 U11 ( .A1(core_value[23]), .A2(n2), .ZN(n27) );
  NR2D1 U12 ( .A1(n2), .A2(n21), .ZN(normalized_fraction[5]) );
  INVD1 U13 ( .I(core_value[21]), .ZN(n6) );
  OAI221D0 U14 ( .A1(n27), .A2(n15), .B1(n2), .B2(n14), .C(n48), .ZN(
        normalized_fraction[12]) );
  AOI22D1 U15 ( .A1(core_value[10]), .A2(n29), .B1(core_value[11]), .B2(n1), 
        .ZN(n48) );
  OAI221D0 U16 ( .A1(n27), .A2(n14), .B1(n2), .B2(n13), .C(n47), .ZN(
        normalized_fraction[13]) );
  AOI22D1 U17 ( .A1(core_value[11]), .A2(n29), .B1(core_value[12]), .B2(n1), 
        .ZN(n47) );
  OAI221D0 U18 ( .A1(n27), .A2(n13), .B1(n2), .B2(n12), .C(n46), .ZN(
        normalized_fraction[14]) );
  AOI22D1 U19 ( .A1(core_value[12]), .A2(n29), .B1(core_value[13]), .B2(n1), 
        .ZN(n46) );
  OAI221D0 U20 ( .A1(n27), .A2(n12), .B1(n2), .B2(n11), .C(n45), .ZN(
        normalized_fraction[15]) );
  AOI22D1 U21 ( .A1(core_value[13]), .A2(n29), .B1(core_value[14]), .B2(n1), 
        .ZN(n45) );
  OAI221D0 U22 ( .A1(n27), .A2(n11), .B1(n2), .B2(n10), .C(n44), .ZN(
        normalized_fraction[16]) );
  AOI22D1 U23 ( .A1(core_value[14]), .A2(n29), .B1(core_value[15]), .B2(n1), 
        .ZN(n44) );
  OAI221D0 U24 ( .A1(n27), .A2(n10), .B1(n2), .B2(n9), .C(n43), .ZN(
        normalized_fraction[17]) );
  AOI22D1 U25 ( .A1(core_value[15]), .A2(n29), .B1(core_value[16]), .B2(n1), 
        .ZN(n43) );
  OAI221D0 U26 ( .A1(n27), .A2(n9), .B1(n2), .B2(n8), .C(n42), .ZN(
        normalized_fraction[18]) );
  AOI22D1 U27 ( .A1(core_value[16]), .A2(n29), .B1(core_value[17]), .B2(n1), 
        .ZN(n42) );
  OAI221D0 U28 ( .A1(n27), .A2(n8), .B1(n2), .B2(n7), .C(n41), .ZN(
        normalized_fraction[19]) );
  AOI22D1 U29 ( .A1(core_value[17]), .A2(n29), .B1(core_value[18]), .B2(n1), 
        .ZN(n41) );
  OAI221D0 U30 ( .A1(n27), .A2(n7), .B1(n2), .B2(n6), .C(n40), .ZN(
        normalized_fraction[20]) );
  AOI22D1 U31 ( .A1(core_value[18]), .A2(n29), .B1(core_value[19]), .B2(n1), 
        .ZN(n40) );
  OAI221D0 U32 ( .A1(n5), .A2(n27), .B1(n4), .B2(n2), .C(n38), .ZN(
        normalized_fraction[22]) );
  INVD1 U33 ( .I(core_value[23]), .ZN(n4) );
  AOI22D1 U34 ( .A1(core_value[20]), .A2(n29), .B1(core_value[21]), .B2(n1), 
        .ZN(n38) );
  OAI221D0 U35 ( .A1(n27), .A2(n6), .B1(n5), .B2(n2), .C(n39), .ZN(
        normalized_fraction[21]) );
  AOI22D1 U36 ( .A1(core_value[19]), .A2(n29), .B1(core_value[20]), .B2(n1), 
        .ZN(n39) );
  OAI221D0 U37 ( .A1(n20), .A2(n27), .B1(n19), .B2(n2), .C(n32), .ZN(
        normalized_fraction[7]) );
  ND2D1 U38 ( .A1(core_value[6]), .A2(n1), .ZN(n32) );
  OAI22D1 U39 ( .A1(n27), .A2(n21), .B1(n20), .B2(n2), .ZN(
        normalized_fraction[6]) );
  INVD1 U40 ( .I(core_value[20]), .ZN(n7) );
  INVD1 U41 ( .I(core_value[19]), .ZN(n8) );
  INVD1 U42 ( .I(core_value[18]), .ZN(n9) );
  INVD1 U43 ( .I(core_value[17]), .ZN(n10) );
  INVD1 U44 ( .I(core_value[16]), .ZN(n11) );
  INVD1 U45 ( .I(core_value[15]), .ZN(n12) );
  INVD1 U46 ( .I(core_value[14]), .ZN(n13) );
  INVD1 U47 ( .I(core_value[13]), .ZN(n14) );
  INVD1 U48 ( .I(core_value[12]), .ZN(n15) );
  INVD1 U49 ( .I(core_value[11]), .ZN(n16) );
  INVD1 U50 ( .I(core_value[10]), .ZN(n17) );
  INVD1 U51 ( .I(core_value[6]), .ZN(n21) );
  OAI221D0 U52 ( .A1(n27), .A2(n17), .B1(n2), .B2(n16), .C(n50), .ZN(
        normalized_fraction[10]) );
  AOI22D1 U53 ( .A1(core_value[8]), .A2(n29), .B1(core_value[9]), .B2(n1), 
        .ZN(n50) );
  OAI221D0 U54 ( .A1(n27), .A2(n16), .B1(n2), .B2(n15), .C(n49), .ZN(
        normalized_fraction[11]) );
  AOI22D1 U55 ( .A1(core_value[9]), .A2(n29), .B1(core_value[10]), .B2(n1), 
        .ZN(n49) );
  OAI221D0 U56 ( .A1(n27), .A2(n18), .B1(n17), .B2(n2), .C(n28), .ZN(
        normalized_fraction[9]) );
  AOI22D1 U57 ( .A1(core_value[7]), .A2(n29), .B1(core_value[8]), .B2(n1), 
        .ZN(n28) );
  OAI221D0 U58 ( .A1(n19), .A2(n27), .B1(n18), .B2(n2), .C(n31), .ZN(
        normalized_fraction[8]) );
  AOI22D1 U59 ( .A1(core_value[6]), .A2(n29), .B1(n1), .B2(core_value[7]), 
        .ZN(n31) );
  INVD1 U60 ( .I(core_value[9]), .ZN(n18) );
  INVD1 U61 ( .I(core_value[8]), .ZN(n19) );
  INVD1 U62 ( .I(core_value[7]), .ZN(n20) );
  NR3D1 U6 ( .A1(core_value[24]), .A2(core_value[23]), .A3(n5), .ZN(n1) );
endmodule


module oadm_fixed_l3_mul_root_opt ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;

  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4;
  assign result[4] = 1'b0;
  assign result[3] = 1'b0;
  assign result[2] = 1'b0;
  assign result[1] = 1'b0;
  assign result[0] = 1'b0;

  oadm_fixed_mul_root_opt_LEVEL3_RESIDUAL_DROP10 impl ( .x({x[31:10], 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y({y[31:10], 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .result(
        {result[31:5], SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4}) );
endmodule

