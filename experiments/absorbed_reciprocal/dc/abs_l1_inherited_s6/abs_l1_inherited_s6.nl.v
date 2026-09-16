/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Tue Sep 15 21:54:19 2026
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
  CKBD1 U37 ( .I(result_fraction[21]), .Z(result[21]) );
  CKBD1 U38 ( .I(result_fraction[20]), .Z(result[20]) );
  CKBD1 U39 ( .I(result_fraction[22]), .Z(result[22]) );
  CKBD1 U40 ( .I(result_fraction[12]), .Z(result[12]) );
  CKBD1 U41 ( .I(result_fraction[13]), .Z(result[13]) );
  CKBD1 U42 ( .I(result_fraction[14]), .Z(result[14]) );
  CKBD1 U43 ( .I(result_fraction[15]), .Z(result[15]) );
  CKBD1 U44 ( .I(result_fraction[16]), .Z(result[16]) );
  CKBD1 U45 ( .I(result_fraction[17]), .Z(result[17]) );
  CKBD1 U46 ( .I(result_fraction[18]), .Z(result[18]) );
  CKBD1 U47 ( .I(result_fraction[19]), .Z(result[19]) );
  CKBD1 U48 ( .I(result_fraction[11]), .Z(result[11]) );
  CKBD1 U49 ( .I(result_fraction[10]), .Z(result[10]) );
  FA1D0 U50 ( .A(N4), .B(exponent_adjust[1]), .CI(n1), .CO(
        add_0_root_add_0_root_add_22_2_carry[2]), .S(result[24]) );
  FA1D0 U51 ( .A(N5), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[2]), .CO(
        add_0_root_add_0_root_add_22_2_carry[3]), .S(result[25]) );
  FA1D0 U52 ( .A(N6), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[3]), .CO(
        add_0_root_add_0_root_add_22_2_carry[4]), .S(result[26]) );
  FA1D0 U53 ( .A(N7), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[4]), .CO(
        add_0_root_add_0_root_add_22_2_carry[5]), .S(result[27]) );
  FA1D0 U54 ( .A(N8), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[5]), .CO(
        add_0_root_add_0_root_add_22_2_carry[6]), .S(result[28]) );
  FA1D0 U55 ( .A(N9), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[6]), .CO(
        add_0_root_add_0_root_add_22_2_carry[7]), .S(result[29]) );
  XOR3D1 U64 ( .A1(N10), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_22_2_carry[7]), .Z(result[30]) );
  CKBD1 U66 ( .I(y[16]), .Z(fraction_y[16]) );
  INVD1 U73 ( .I(y[29]), .ZN(N17) );
  INVD1 U74 ( .I(y[24]), .ZN(N12) );
  INVD1 U75 ( .I(y[25]), .ZN(N13) );
  INVD1 U76 ( .I(y[26]), .ZN(N14) );
  INVD1 U77 ( .I(y[27]), .ZN(N15) );
  INVD1 U78 ( .I(y[28]), .ZN(N16) );
  CKBD1 U97 ( .I(x[22]), .Z(fraction_x[22]) );
  CKBD1 U98 ( .I(x[21]), .Z(fraction_x[21]) );
  CKBD1 U99 ( .I(x[20]), .Z(fraction_x[20]) );
  CKBD1 U100 ( .I(x[19]), .Z(fraction_x[19]) );
  CKBD1 U101 ( .I(x[18]), .Z(fraction_x[18]) );
  CKBD1 U102 ( .I(x[17]), .Z(fraction_x[17]) );
  CKBD1 U103 ( .I(x[16]), .Z(fraction_x[16]) );
  CKBD1 U104 ( .I(y[22]), .Z(fraction_y[22]) );
  CKBD1 U105 ( .I(y[21]), .Z(fraction_y[21]) );
  CKBD1 U106 ( .I(y[20]), .Z(fraction_y[20]) );
  CKBD1 U107 ( .I(y[19]), .Z(fraction_y[19]) );
  CKBD1 U108 ( .I(y[18]), .Z(fraction_y[18]) );
  CKBD1 U109 ( .I(y[17]), .Z(fraction_y[17]) );
  TIEL U110 ( .ZN(n79) );
  CKXOR2D1 U111 ( .A1(exponent_adjust[0]), .A2(N3), .Z(result[23]) );
  CKND0 U119 ( .I(y[23]), .ZN(N11) );
endmodule


module abs_l1_inherited_s6_DW_mult_tc_1 ( a, b, product );
  input [5:0] a;
  input [7:0] b;
  output [13:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n16, n17,
         n18, n19, n20, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n72, n73, n76, n77, n78,
         n79, n80, n81, n82, n84, n85, n86, n87, n88, n89, n90, n92, n93, n94,
         n95, n96, n97, n98, n99, n113, n114, n115, n158, n159, n160, n161,
         n162, n163, n164, n165, n166;

  FA1D0 U2 ( .A(n14), .B(n160), .CI(n2), .CO(n1), .S(product[12]) );
  FA1D0 U3 ( .A(n16), .B(n159), .CI(n3), .CO(n2), .S(product[11]) );
  FA1D0 U4 ( .A(n18), .B(n17), .CI(n4), .CO(n3), .S(product[10]) );
  FA1D0 U5 ( .A(n22), .B(n19), .CI(n5), .CO(n4), .S(product[9]) );
  FA1D0 U6 ( .A(n26), .B(n23), .CI(n6), .CO(n5), .S(product[8]) );
  FA1D0 U7 ( .A(n30), .B(n27), .CI(n7), .CO(n6), .S(product[7]) );
  FA1D0 U8 ( .A(n31), .B(n34), .CI(n8), .CO(n7), .S(product[6]) );
  FA1D0 U9 ( .A(n35), .B(n38), .CI(n9), .CO(n8), .S(product[5]) );
  FA1D0 U10 ( .A(n39), .B(n42), .CI(n10), .CO(n9), .S(product[4]) );
  FA1D0 U11 ( .A(n43), .B(n44), .CI(n11), .CO(n10), .S(product[3]) );
  FA1D0 U12 ( .A(n45), .B(n90), .CI(n12), .CO(n11), .S(product[2]) );
  HA1D0 U13 ( .A(n13), .B(n98), .CO(n12), .S(product[1]) );
  HA1D0 U14 ( .A(n99), .B(a[1]), .CO(n13), .S(product[0]) );
  FA1D0 U16 ( .A(n20), .B(n162), .CI(n76), .CO(n16), .S(n17) );
  FA1D0 U17 ( .A(n77), .B(n158), .CI(n24), .CO(n18), .S(n19) );
  FA1D0 U19 ( .A(n28), .B(n78), .CI(n25), .CO(n22), .S(n23) );
  FA1D0 U22 ( .A(n32), .B(n79), .CI(n29), .CO(n26), .S(n27) );
  HA1D0 U23 ( .A(n85), .B(n92), .CO(n28), .S(n29) );
  FA1D0 U24 ( .A(n36), .B(n80), .CI(n33), .CO(n30), .S(n31) );
  HA1D0 U25 ( .A(n86), .B(n93), .CO(n32), .S(n33) );
  FA1D0 U26 ( .A(n40), .B(n81), .CI(n37), .CO(n34), .S(n35) );
  HA1D0 U27 ( .A(n87), .B(n94), .CO(n36), .S(n37) );
  FA1D0 U28 ( .A(n88), .B(n82), .CI(n41), .CO(n38), .S(n39) );
  HA1D0 U29 ( .A(n95), .B(n72), .CO(n40), .S(n41) );
  HA1D0 U30 ( .A(n89), .B(n96), .CO(n42), .S(n43) );
  HA1D0 U31 ( .A(n97), .B(n73), .CO(n44), .S(n45) );
  MUX2ND0 U34 ( .I0(n113), .I1(n160), .S(n46), .ZN(n14) );
  MUX2ND0 U36 ( .I0(n113), .I1(n160), .S(n47), .ZN(n76) );
  MUX2ND0 U38 ( .I0(n113), .I1(n160), .S(n48), .ZN(n77) );
  MUX2ND0 U40 ( .I0(n113), .I1(n160), .S(n49), .ZN(n78) );
  MUX2ND0 U42 ( .I0(n113), .I1(n160), .S(n50), .ZN(n79) );
  MUX2ND0 U44 ( .I0(n113), .I1(n160), .S(n51), .ZN(n80) );
  MUX2ND0 U46 ( .I0(n113), .I1(n160), .S(n52), .ZN(n81) );
  MUX2ND0 U48 ( .I0(n113), .I1(n160), .S(n53), .ZN(n82) );
  MUX2ND0 U52 ( .I0(n114), .I1(n162), .S(n54), .ZN(n20) );
  MUX2ND0 U54 ( .I0(n114), .I1(n162), .S(n55), .ZN(n84) );
  MUX2ND0 U56 ( .I0(n114), .I1(n162), .S(n56), .ZN(n85) );
  MUX2ND0 U58 ( .I0(n114), .I1(n162), .S(n57), .ZN(n86) );
  MUX2ND0 U60 ( .I0(n114), .I1(n162), .S(n58), .ZN(n87) );
  MUX2ND0 U62 ( .I0(n114), .I1(n162), .S(n59), .ZN(n88) );
  MUX2ND0 U64 ( .I0(n114), .I1(n162), .S(n60), .ZN(n89) );
  MUX2ND0 U66 ( .I0(n114), .I1(n162), .S(n61), .ZN(n90) );
  MUX2ND0 U70 ( .I0(n115), .I1(n164), .S(n62), .ZN(n92) );
  MUX2ND0 U72 ( .I0(n115), .I1(n164), .S(n63), .ZN(n93) );
  MUX2ND0 U74 ( .I0(n115), .I1(n164), .S(n64), .ZN(n94) );
  MUX2ND0 U76 ( .I0(n115), .I1(n164), .S(n65), .ZN(n95) );
  MUX2ND0 U78 ( .I0(n115), .I1(n164), .S(n66), .ZN(n96) );
  MUX2ND0 U80 ( .I0(n115), .I1(n164), .S(n67), .ZN(n97) );
  MUX2ND0 U82 ( .I0(n115), .I1(n164), .S(n68), .ZN(n98) );
  MUX2ND0 U84 ( .I0(n115), .I1(n164), .S(n69), .ZN(n99) );
  INVD1 U116 ( .I(n14), .ZN(n159) );
  INVD1 U117 ( .I(n73), .ZN(n162) );
  INVD1 U118 ( .I(n72), .ZN(n160) );
  INVD1 U119 ( .I(a[1]), .ZN(n164) );
  INVD1 U120 ( .I(a[3]), .ZN(n163) );
  INVD1 U121 ( .I(n20), .ZN(n158) );
  INVD1 U122 ( .I(a[5]), .ZN(n161) );
  CKND0 U123 ( .I(n1), .ZN(product[13]) );
  CKND2D0 U124 ( .A1(b[0]), .A2(a[0]), .ZN(n69) );
  MUX2ND0 U125 ( .I0(b[0]), .I1(b[1]), .S(a[0]), .ZN(n68) );
  MUX2ND0 U126 ( .I0(b[1]), .I1(b[2]), .S(a[0]), .ZN(n67) );
  MUX2ND0 U127 ( .I0(b[2]), .I1(b[3]), .S(a[0]), .ZN(n66) );
  MUX2ND0 U128 ( .I0(b[3]), .I1(b[4]), .S(a[0]), .ZN(n65) );
  MUX2ND0 U129 ( .I0(b[4]), .I1(b[5]), .S(a[0]), .ZN(n64) );
  MUX2ND0 U130 ( .I0(b[5]), .I1(b[6]), .S(a[0]), .ZN(n63) );
  IND2D0 U131 ( .A1(a[0]), .B1(b[6]), .ZN(n62) );
  CKND2D0 U132 ( .A1(b[0]), .A2(n165), .ZN(n61) );
  MUX2ND0 U133 ( .I0(b[0]), .I1(b[1]), .S(n165), .ZN(n60) );
  MUX2ND0 U134 ( .I0(b[1]), .I1(b[2]), .S(n165), .ZN(n59) );
  MUX2ND0 U135 ( .I0(b[2]), .I1(b[3]), .S(n165), .ZN(n58) );
  MUX2ND0 U136 ( .I0(b[3]), .I1(b[4]), .S(n165), .ZN(n57) );
  MUX2ND0 U137 ( .I0(b[4]), .I1(b[5]), .S(n165), .ZN(n56) );
  MUX2ND0 U138 ( .I0(b[5]), .I1(b[6]), .S(n165), .ZN(n55) );
  IND2D0 U139 ( .A1(n165), .B1(b[6]), .ZN(n54) );
  CKXOR2D0 U140 ( .A1(a[1]), .A2(a[2]), .Z(n165) );
  CKND2D0 U141 ( .A1(b[0]), .A2(n166), .ZN(n53) );
  MUX2ND0 U142 ( .I0(b[0]), .I1(b[1]), .S(n166), .ZN(n52) );
  MUX2ND0 U143 ( .I0(b[1]), .I1(b[2]), .S(n166), .ZN(n51) );
  MUX2ND0 U144 ( .I0(b[2]), .I1(b[3]), .S(n166), .ZN(n50) );
  MUX2ND0 U145 ( .I0(b[3]), .I1(b[4]), .S(n166), .ZN(n49) );
  MUX2ND0 U146 ( .I0(b[4]), .I1(b[5]), .S(n166), .ZN(n48) );
  MUX2ND0 U147 ( .I0(b[5]), .I1(b[6]), .S(n166), .ZN(n47) );
  IND2D0 U148 ( .A1(n166), .B1(b[6]), .ZN(n46) );
  CKXOR2D0 U149 ( .A1(a[3]), .A2(a[4]), .Z(n166) );
  CKXOR2D0 U150 ( .A1(n84), .A2(a[1]), .Z(n25) );
  IND2D0 U151 ( .A1(n84), .B1(a[1]), .ZN(n24) );
  CKND2D0 U152 ( .A1(a[0]), .A2(n164), .ZN(n115) );
  OAI21D0 U153 ( .A1(a[2]), .A2(a[1]), .B(n163), .ZN(n114) );
  OAI21D0 U154 ( .A1(a[4]), .A2(a[3]), .B(n161), .ZN(n113) );
  AOI21D0 U155 ( .A1(a[1]), .A2(a[2]), .B(n163), .ZN(n73) );
  AOI21D0 U156 ( .A1(a[3]), .A2(a[4]), .B(n161), .ZN(n72) );
endmodule


module abs_l1_inherited_s6_DW_mult_tc_0 ( a, b, product );
  input [5:0] a;
  input [6:0] b;
  output [12:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n32, n33,
         n35, n37, n38, n40, n42, n44, n46, n49, n90, n91, n92, n93, n94, n95,
         n96, n97;

  FA1D0 U3 ( .A(n11), .B(n92), .CI(n3), .CO(n2), .S(product[10]) );
  FA1D0 U4 ( .A(n13), .B(n12), .CI(n4), .CO(n3), .S(product[9]) );
  FA1D0 U5 ( .A(n17), .B(n14), .CI(n5), .CO(n4), .S(product[8]) );
  FA1D0 U6 ( .A(n21), .B(n18), .CI(n6), .CO(n5), .S(product[7]) );
  FA1D0 U7 ( .A(n22), .B(n25), .CI(n7), .CO(n6), .S(product[6]) );
  FA1D0 U8 ( .A(n26), .B(n28), .CI(n8), .CO(n7), .S(product[5]) );
  FA1D0 U9 ( .A(n30), .B(n37), .CI(n9), .CO(n8), .S(product[4]) );
  FA1D0 U10 ( .A(n40), .B(a[1]), .CI(n10), .CO(n9), .S(product[3]) );
  HA1D0 U11 ( .A(n44), .B(a[0]), .CO(n10), .S(product[2]) );
  FA1D0 U12 ( .A(a[3]), .B(a[4]), .CI(n32), .CO(n11), .S(n12) );
  FA1D0 U13 ( .A(n94), .B(n35), .CI(n19), .CO(n13), .S(n14) );
  FA1D0 U15 ( .A(n23), .B(n38), .CI(n20), .CO(n17), .S(n18) );
  HA1D0 U16 ( .A(a[2]), .B(n92), .CO(n19), .S(n20) );
  FA1D0 U17 ( .A(n27), .B(n42), .CI(n24), .CO(n21), .S(n22) );
  FA1D0 U20 ( .A(n33), .B(n46), .CI(n29), .CO(n25), .S(n26) );
  HA1D0 U23 ( .A(n49), .B(a[2]), .CO(n29), .S(n30) );
  CKBD1 U58 ( .I(product[11]), .Z(product[12]) );
  INVD1 U59 ( .I(b[0]), .ZN(n91) );
  INVD1 U60 ( .I(b[4]), .ZN(n90) );
  INVD1 U61 ( .I(a[0]), .ZN(n97) );
  INVD1 U62 ( .I(a[1]), .ZN(n96) );
  INVD1 U63 ( .I(a[2]), .ZN(n95) );
  INVD1 U64 ( .I(a[3]), .ZN(n94) );
  INVD1 U65 ( .I(a[4]), .ZN(n93) );
  INVD1 U66 ( .I(a[5]), .ZN(n92) );
  NR2D0 U67 ( .A1(n96), .A2(n91), .ZN(product[1]) );
  CKND0 U68 ( .I(n2), .ZN(product[11]) );
  NR2D0 U69 ( .A1(n91), .A2(n97), .ZN(product[0]) );
  NR2D0 U70 ( .A1(n97), .A2(n90), .ZN(n49) );
  NR2D0 U71 ( .A1(n96), .A2(n90), .ZN(n46) );
  NR2D0 U72 ( .A1(n91), .A2(n95), .ZN(n44) );
  NR2D0 U73 ( .A1(n90), .A2(n95), .ZN(n42) );
  NR2D0 U74 ( .A1(n94), .A2(n91), .ZN(n40) );
  NR2D0 U75 ( .A1(n94), .A2(n90), .ZN(n38) );
  NR2D0 U76 ( .A1(n91), .A2(n93), .ZN(n37) );
  NR2D0 U77 ( .A1(n90), .A2(n93), .ZN(n35) );
  CKND2D0 U78 ( .A1(b[0]), .A2(a[5]), .ZN(n33) );
  CKND2D0 U79 ( .A1(b[4]), .A2(a[5]), .ZN(n32) );
  CKXOR2D0 U80 ( .A1(a[3]), .A2(n97), .Z(n28) );
  CKND2D0 U81 ( .A1(n94), .A2(n97), .ZN(n27) );
  CKXOR2D0 U82 ( .A1(a[4]), .A2(n96), .Z(n24) );
  CKND2D0 U83 ( .A1(n93), .A2(n96), .ZN(n23) );
endmodule


module abs_l1_inherited_s6_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] DIFF;
  input CI;
  output CO;
  wire   n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14;
  wire   [13:1] carry;

  FA1D0 U2_1 ( .A(A[1]), .B(n14), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  FA1D0 U2_2 ( .A(A[2]), .B(n13), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  FA1D0 U2_5 ( .A(A[5]), .B(n10), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  FA1D0 U2_3 ( .A(A[3]), .B(n12), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  FA1D0 U2_4 ( .A(A[4]), .B(n11), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FA1D0 U2_6 ( .A(A[6]), .B(n9), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  FA1D0 U2_7 ( .A(A[7]), .B(n8), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  FA1D0 U2_8 ( .A(A[8]), .B(n7), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  FA1D0 U2_9 ( .A(A[9]), .B(n6), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9]) );
  FA1D0 U2_10 ( .A(A[10]), .B(n5), .CI(carry[10]), .CO(carry[11]), .S(DIFF[10]) );
  FA1D0 U2_12 ( .A(A[12]), .B(n3), .CI(carry[12]), .CO(carry[13]), .S(DIFF[12]) );
  FA1D0 U2_11 ( .A(A[11]), .B(n4), .CI(carry[11]), .CO(carry[12]), .S(DIFF[11]) );
  INVD1 U1 ( .I(B[11]), .ZN(n4) );
  INVD1 U2 ( .I(B[12]), .ZN(n3) );
  INVD1 U3 ( .I(B[10]), .ZN(n5) );
  INVD1 U4 ( .I(B[9]), .ZN(n6) );
  INVD1 U5 ( .I(B[8]), .ZN(n7) );
  INVD1 U6 ( .I(B[7]), .ZN(n8) );
  INVD1 U7 ( .I(B[6]), .ZN(n9) );
  INVD1 U8 ( .I(B[4]), .ZN(n11) );
  INVD1 U9 ( .I(B[3]), .ZN(n12) );
  INVD1 U12 ( .I(B[5]), .ZN(n10) );
  INVD1 U13 ( .I(B[2]), .ZN(n13) );
  INVD1 U15 ( .I(B[1]), .ZN(n14) );
  CKXOR2D0 U10 ( .A1(A[0]), .A2(B[0]), .Z(DIFF[0]) );
  XNR3D0 U11 ( .A1(carry[13]), .A2(A[13]), .A3(B[13]), .ZN(DIFF[13]) );
  IND2D0 U14 ( .A1(A[0]), .B1(B[0]), .ZN(carry[1]) );
endmodule


module abs_l1_inherited_s6 ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   fx_22, fx_21, fy_22, fy_21, a_0, c_4, c_3, c_2, n26, n27, n28, n29,
         py_9_, py_8_, py_7_, py_6_, py_5_, py_4_, py_3_, py_2_, py_1_, py_13_,
         py_12_, py_11_, py_10_, py_0_, px_13, px_9_, px_8_, px_7_, px_6_,
         px_5_, px_4_, px_3_, px_2_, px_11_, px_10_, N260, N25, N24, N23, N22,
         N21, N20, N19, N18, N17, N16, N15, N14, N13, n30, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52;
  wire   [5:0] rx;
  wire   [5:0] ry;
  wire   [5:0] b;
  wire   [13:6] c;
  wire   [13:0] p;
  wire   [22:10] frac;
  wire   [2:0] adjust;
  wire   [13:4] add_1_root_sub_0_root_sub_18_carry;
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
        SYNOPSYS_UNCONNECTED__40, SYNOPSYS_UNCONNECTED__41;
  assign result[0] = 1'b0;
  assign result[1] = 1'b0;
  assign result[2] = 1'b0;
  assign result[3] = 1'b0;
  assign result[4] = 1'b0;
  assign result[5] = 1'b0;
  assign result[6] = 1'b0;
  assign result[7] = 1'b0;
  assign result[8] = 1'b0;
  assign result[9] = 1'b0;

  fp32_normal_finite_wrapper wrapper ( .x({x[31:16], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y({y[31:16], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .divide_mode(1'b0), .fraction_x(
        {fx_22, fx_21, rx[4:0], SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15}), .fraction_y({fy_22, fy_21, ry[4:0], 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31}), 
        .result_fraction({frac, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .exponent_adjust({adjust[2], adjust[2], adjust[0]}), 
        .result({result[31:10], SYNOPSYS_UNCONNECTED__32, 
        SYNOPSYS_UNCONNECTED__33, SYNOPSYS_UNCONNECTED__34, 
        SYNOPSYS_UNCONNECTED__35, SYNOPSYS_UNCONNECTED__36, 
        SYNOPSYS_UNCONNECTED__37, SYNOPSYS_UNCONNECTED__38, 
        SYNOPSYS_UNCONNECTED__39, SYNOPSYS_UNCONNECTED__40, 
        SYNOPSYS_UNCONNECTED__41}) );
  abs_l1_inherited_s6_DW_mult_tc_1 mult_16_S2 ( .a(ry), .b({n51, c[8], b[5:4], 
        c[10], b[5], c_4, b[0]}), .product({py_13_, py_12_, py_11_, py_10_, 
        py_9_, py_8_, py_7_, py_6_, py_5_, py_4_, py_3_, py_2_, py_1_, py_0_})
         );
  abs_l1_inherited_s6_DW_mult_tc_0 mult_16 ( .a(rx), .b({n51, n52, c_2, n51, 
        n52, n51, a_0}), .product({px_13, px_11_, px_10_, px_9_, px_8_, px_7_, 
        px_6_, px_5_, px_4_, px_3_, px_2_, N14, N13}) );
  abs_l1_inherited_s6_DW01_sub_0 sub_0_root_sub_0_root_sub_18 ( .A({N260, N25, 
        N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13}), .B({
        py_13_, py_12_, py_11_, py_10_, py_9_, py_8_, py_7_, py_6_, py_5_, 
        py_4_, py_3_, py_2_, py_1_, py_0_}), .CI(n51), .DIFF(p) );
  AN2XD1 U53 ( .A1(px_2_), .A2(c_2), .Z(n30) );
  ND2D1 U54 ( .A1(n34), .A2(n26), .ZN(adjust[2]) );
  INVD1 U55 ( .I(p[11]), .ZN(n36) );
  INVD1 U56 ( .I(adjust[0]), .ZN(n34) );
  ND2D1 U57 ( .A1(n35), .A2(n33), .ZN(n26) );
  INVD1 U58 ( .I(p[12]), .ZN(n35) );
  OAI222D0 U59 ( .A1(n37), .A2(n34), .B1(n26), .B2(n38), .C1(n36), .C2(n33), 
        .ZN(frac[21]) );
  OAI222D0 U60 ( .A1(n34), .A2(n38), .B1(n26), .B2(n39), .C1(n37), .C2(n33), 
        .ZN(frac[20]) );
  OAI222D0 U61 ( .A1(n34), .A2(n36), .B1(n26), .B2(n37), .C1(n35), .C2(n33), 
        .ZN(frac[22]) );
  OAI222D0 U62 ( .A1(n34), .A2(n46), .B1(n26), .B2(n47), .C1(n33), .C2(n45), 
        .ZN(frac[12]) );
  OAI222D0 U63 ( .A1(n34), .A2(n45), .B1(n26), .B2(n46), .C1(n33), .C2(n44), 
        .ZN(frac[13]) );
  OAI222D0 U64 ( .A1(n34), .A2(n44), .B1(n26), .B2(n45), .C1(n33), .C2(n43), 
        .ZN(frac[14]) );
  OAI222D0 U65 ( .A1(n34), .A2(n43), .B1(n26), .B2(n44), .C1(n33), .C2(n42), 
        .ZN(frac[15]) );
  OAI222D0 U66 ( .A1(n34), .A2(n42), .B1(n26), .B2(n43), .C1(n33), .C2(n41), 
        .ZN(frac[16]) );
  OAI222D0 U67 ( .A1(n34), .A2(n41), .B1(n26), .B2(n42), .C1(n33), .C2(n40), 
        .ZN(frac[17]) );
  OAI222D0 U68 ( .A1(n34), .A2(n40), .B1(n26), .B2(n41), .C1(n33), .C2(n39), 
        .ZN(frac[18]) );
  OAI222D0 U69 ( .A1(n34), .A2(n39), .B1(n26), .B2(n40), .C1(n33), .C2(n38), 
        .ZN(frac[19]) );
  OAI22D1 U70 ( .A1(n33), .A2(n46), .B1(n34), .B2(n47), .ZN(frac[11]) );
  NR2D1 U71 ( .A1(n33), .A2(n47), .ZN(frac[10]) );
  INVD1 U72 ( .I(p[10]), .ZN(n37) );
  INVD1 U73 ( .I(p[9]), .ZN(n38) );
  INVD1 U74 ( .I(p[8]), .ZN(n39) );
  INVD1 U75 ( .I(p[7]), .ZN(n40) );
  INVD1 U76 ( .I(p[6]), .ZN(n41) );
  INVD1 U77 ( .I(p[4]), .ZN(n43) );
  INVD1 U78 ( .I(p[3]), .ZN(n44) );
  NR2D1 U79 ( .A1(n35), .A2(p[13]), .ZN(adjust[0]) );
  INVD1 U80 ( .I(p[13]), .ZN(n33) );
  FA1D0 U81 ( .A(c[8]), .B(px_11_), .CI(add_1_root_sub_0_root_sub_18_carry[11]), .CO(add_1_root_sub_0_root_sub_18_carry[12]), .S(N24) );
  FA1D0 U82 ( .A(c[10]), .B(px_10_), .CI(
        add_1_root_sub_0_root_sub_18_carry[10]), .CO(
        add_1_root_sub_0_root_sub_18_carry[11]), .S(N23) );
  FA1D0 U83 ( .A(c[8]), .B(px_8_), .CI(add_1_root_sub_0_root_sub_18_carry[8]), 
        .CO(add_1_root_sub_0_root_sub_18_carry[9]), .S(N21) );
  INVD1 U85 ( .I(c_2), .ZN(n48) );
  INVD1 U86 ( .I(p[5]), .ZN(n42) );
  INVD1 U87 ( .I(p[2]), .ZN(n45) );
  INVD1 U88 ( .I(p[1]), .ZN(n46) );
  INVD1 U89 ( .I(p[0]), .ZN(n47) );
  XOR3D1 U90 ( .A1(c[13]), .A2(px_13), .A3(
        add_1_root_sub_0_root_sub_18_carry[13]), .Z(N260) );
  ND2D1 U91 ( .A1(n27), .A2(n48), .ZN(c[13]) );
  INVD1 U92 ( .I(c_4), .ZN(n49) );
  ND2D1 U93 ( .A1(n28), .A2(n49), .ZN(c[10]) );
  ND2D1 U94 ( .A1(n29), .A2(n49), .ZN(b[4]) );
  ND2D1 U95 ( .A1(n29), .A2(n27), .ZN(b[5]) );
  FA1D0 U96 ( .A(c_4), .B(px_13), .CI(add_1_root_sub_0_root_sub_18_carry[12]), 
        .CO(add_1_root_sub_0_root_sub_18_carry[13]), .S(N25) );
  ND2D1 U97 ( .A1(n49), .A2(n27), .ZN(a_0) );
  FA1D0 U98 ( .A(c_4), .B(px_9_), .CI(add_1_root_sub_0_root_sub_18_carry[9]), 
        .CO(add_1_root_sub_0_root_sub_18_carry[10]), .S(N22) );
  ND2D1 U99 ( .A1(n28), .A2(n27), .ZN(b[0]) );
  FA1D0 U100 ( .A(c_4), .B(px_7_), .CI(add_1_root_sub_0_root_sub_18_carry[7]), 
        .CO(add_1_root_sub_0_root_sub_18_carry[8]), .S(N20) );
  FA1D0 U101 ( .A(c[6]), .B(px_6_), .CI(add_1_root_sub_0_root_sub_18_carry[6]), 
        .CO(add_1_root_sub_0_root_sub_18_carry[7]), .S(N19) );
  ND2D1 U102 ( .A1(n49), .A2(n48), .ZN(c[6]) );
  ND2D1 U105 ( .A1(n29), .A2(n28), .ZN(c_2) );
  FA1D0 U106 ( .A(c_4), .B(px_4_), .CI(add_1_root_sub_0_root_sub_18_carry[4]), 
        .CO(add_1_root_sub_0_root_sub_18_carry[5]), .S(N17) );
  FA1D0 U107 ( .A(c_3), .B(px_3_), .CI(n30), .CO(
        add_1_root_sub_0_root_sub_18_carry[4]), .S(N16) );
  IND2D1 U108 ( .A1(b[5]), .B1(n49), .ZN(c_3) );
  INVD1 U109 ( .I(n28), .ZN(c[8]) );
  NR2D1 U110 ( .A1(n50), .A2(fx_22), .ZN(c_4) );
  INVD1 U111 ( .I(fy_22), .ZN(n50) );
  IND2D1 U112 ( .A1(fx_22), .B1(n50), .ZN(n29) );
  ND2D1 U113 ( .A1(fx_22), .A2(fy_22), .ZN(n27) );
  ND2D1 U114 ( .A1(fx_22), .A2(n50), .ZN(n28) );
  INVD1 U115 ( .I(fy_21), .ZN(ry[5]) );
  INVD1 U116 ( .I(fx_21), .ZN(rx[5]) );
  TIEH U117 ( .Z(n52) );
  TIEL U118 ( .ZN(n51) );
  XNR2D1 U119 ( .A1(add_1_root_sub_0_root_sub_18_carry[5]), .A2(px_5_), .ZN(
        N18) );
  CKXOR2D1 U120 ( .A1(px_2_), .A2(c_2), .Z(N15) );
  OR2D0 U84 ( .A1(px_5_), .A2(add_1_root_sub_0_root_sub_18_carry[5]), .Z(
        add_1_root_sub_0_root_sub_18_carry[6]) );
endmodule

