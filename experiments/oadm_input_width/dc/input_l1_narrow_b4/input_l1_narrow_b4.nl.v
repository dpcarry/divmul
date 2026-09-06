/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Sat Sep  5 14:53:45 2026
/////////////////////////////////////////////////////////////


module oadm_input_narrow_plane_B4_LEVEL1_R16 ( x, y, plane_bits );
  input [3:0] x;
  input [3:0] y;
  output [24:0] plane_bits;
  wire   kk_9_, kk_8_, kk_7_, kk_6_, kk_5_, N9, N8, N7, N6, N5, N4,
         mult_18_n27, mult_18_n22, mult_18_n17, mult_18_n13, mult_18_n12,
         mult_18_n11, mult_18_n10, mult_18_n9, mult_18_n8, mult_18_n4,
         mult_18_n3, mult_18_n2, mult_17_n27, mult_17_n22, mult_17_n17,
         mult_17_n13, mult_17_n12, mult_17_n11, mult_17_n10, mult_17_n9,
         mult_17_n8, mult_17_n4, mult_17_n3, mult_17_n2, mult_19_n15,
         mult_19_n13, mult_19_n10, mult_19_n9, mult_19_n3, mult_19_n2, n19,
         n20, n21, n22, n23, n25, n26, n28;
  wire   [8:3] px;
  wire   [6:4] py;
  wire   [9:6] add_0_root_sub_0_root_sub_25_carry;
  wire   [9:3] sub_1_root_sub_0_root_sub_25_carry;

  FA1D0 mult_18_U11 ( .A(mult_18_n22), .B(y[0]), .CI(y[2]), .CO(mult_18_n10), 
        .S(mult_18_n11) );
  HA1D0 mult_18_U10 ( .A(mult_18_n17), .B(y[1]), .CO(mult_18_n8), .S(
        mult_18_n9) );
  FA1D0 mult_18_U6 ( .A(mult_18_n11), .B(mult_18_n12), .CI(mult_18_n13), .CO(
        mult_18_n4), .S(py[4]) );
  FA1D0 mult_18_U5 ( .A(mult_18_n10), .B(mult_18_n9), .CI(mult_18_n4), .CO(
        mult_18_n3), .S(py[5]) );
  FA1D0 mult_18_U4 ( .A(mult_18_n8), .B(y[2]), .CI(mult_18_n3), .CO(mult_18_n2), .S(py[6]) );
  FA1D0 mult_17_U11 ( .A(mult_17_n22), .B(x[0]), .CI(x[2]), .CO(mult_17_n10), 
        .S(mult_17_n11) );
  HA1D0 mult_17_U10 ( .A(mult_17_n17), .B(x[1]), .CO(mult_17_n8), .S(
        mult_17_n9) );
  FA1D0 mult_17_U6 ( .A(mult_17_n11), .B(mult_17_n12), .CI(mult_17_n13), .CO(
        mult_17_n4), .S(px[4]) );
  FA1D0 mult_17_U5 ( .A(mult_17_n10), .B(mult_17_n9), .CI(mult_17_n4), .CO(
        mult_17_n3), .S(px[5]) );
  FA1D0 mult_17_U4 ( .A(mult_17_n8), .B(x[2]), .CI(mult_17_n3), .CO(mult_17_n2), .S(px[6]) );
  FA1D0 U20 ( .A(px[8]), .B(mult_18_n2), .CI(
        sub_1_root_sub_0_root_sub_25_carry[7]), .CO(
        sub_1_root_sub_0_root_sub_25_carry[8]), .S(N7) );
  FA1D0 U21 ( .A(px[8]), .B(mult_18_n2), .CI(
        sub_1_root_sub_0_root_sub_25_carry[8]), .CO(
        sub_1_root_sub_0_root_sub_25_carry[9]), .S(N8) );
  FA1D0 U22 ( .A(px[6]), .B(n22), .CI(sub_1_root_sub_0_root_sub_25_carry[6]), 
        .CO(sub_1_root_sub_0_root_sub_25_carry[7]), .S(N6) );
  INVD1 U23 ( .I(py[6]), .ZN(n22) );
  FA1D0 U24 ( .A(px[5]), .B(n21), .CI(sub_1_root_sub_0_root_sub_25_carry[5]), 
        .CO(sub_1_root_sub_0_root_sub_25_carry[6]), .S(N5) );
  INVD1 U25 ( .I(py[5]), .ZN(n21) );
  FA1D0 U26 ( .A(kk_8_), .B(N8), .CI(add_0_root_sub_0_root_sub_25_carry[8]), 
        .CO(add_0_root_sub_0_root_sub_25_carry[9]), .S(plane_bits[23]) );
  XOR3D1 U27 ( .A1(kk_9_), .A2(N9), .A3(add_0_root_sub_0_root_sub_25_carry[9]), 
        .Z(plane_bits[24]) );
  XOR3D1 U29 ( .A1(px[8]), .A2(mult_18_n2), .A3(
        sub_1_root_sub_0_root_sub_25_carry[9]), .Z(N9) );
  INVD1 U31 ( .I(N4), .ZN(plane_bits[19]) );
  FA1D0 U33 ( .A(kk_7_), .B(N7), .CI(add_0_root_sub_0_root_sub_25_carry[7]), 
        .CO(add_0_root_sub_0_root_sub_25_carry[8]), .S(plane_bits[22]) );
  FA1D0 U34 ( .A(kk_6_), .B(N6), .CI(add_0_root_sub_0_root_sub_25_carry[6]), 
        .CO(add_0_root_sub_0_root_sub_25_carry[7]), .S(plane_bits[21]) );
  FA1D0 U35 ( .A(px[4]), .B(n20), .CI(sub_1_root_sub_0_root_sub_25_carry[4]), 
        .CO(sub_1_root_sub_0_root_sub_25_carry[5]), .S(N4) );
  INVD1 U36 ( .I(py[4]), .ZN(n20) );
  FA1D0 U37 ( .A(px[3]), .B(mult_18_n13), .CI(
        sub_1_root_sub_0_root_sub_25_carry[3]), .CO(
        sub_1_root_sub_0_root_sub_25_carry[4]), .S(plane_bits[18]) );
  ND2D1 U38 ( .A1(y[0]), .A2(n23), .ZN(sub_1_root_sub_0_root_sub_25_carry[3])
         );
  INVD1 U39 ( .I(mult_17_n13), .ZN(px[3]) );
  ND2D1 U40 ( .A1(n28), .A2(n25), .ZN(mult_19_n9) );
  FA1D0 U45 ( .A(kk_5_), .B(N5), .CI(N4), .CO(
        add_0_root_sub_0_root_sub_25_carry[6]), .S(plane_bits[20]) );
  INVD1 U46 ( .I(x[0]), .ZN(n23) );
  INVD1 U47 ( .I(y[0]), .ZN(n26) );
  XNR2D1 U50 ( .A1(n26), .A2(x[0]), .ZN(plane_bits[17]) );
  NR2D0 U51 ( .A1(n25), .A2(n28), .ZN(mult_19_n13) );
  CKXOR2D0 U52 ( .A1(x[3]), .A2(y[3]), .Z(kk_5_) );
  AN2D0 U53 ( .A1(x[3]), .A2(y[3]), .Z(mult_19_n15) );
  CKXOR2D0 U54 ( .A1(mult_19_n13), .A2(mult_19_n15), .Z(kk_6_) );
  AN2D0 U55 ( .A1(mult_19_n13), .A2(mult_19_n15), .Z(mult_19_n3) );
  CKXOR2D0 U56 ( .A1(mult_19_n3), .A2(mult_19_n10), .Z(kk_7_) );
  XNR2D1 U58 ( .A1(mult_19_n2), .A2(mult_19_n9), .ZN(kk_8_) );
  XNR2D1 U59 ( .A1(x[3]), .A2(y[3]), .ZN(mult_19_n10) );
  NR2D0 U62 ( .A1(n23), .A2(n25), .ZN(mult_17_n27) );
  CKND0 U63 ( .I(mult_17_n2), .ZN(px[8]) );
  XNR2D0 U64 ( .A1(mult_17_n27), .A2(x[1]), .ZN(mult_17_n13) );
  OR2D0 U65 ( .A1(mult_17_n27), .A2(x[1]), .Z(mult_17_n12) );
  NR2D0 U68 ( .A1(n26), .A2(n28), .ZN(mult_18_n27) );
  XNR2D0 U69 ( .A1(mult_18_n27), .A2(y[1]), .ZN(mult_18_n13) );
  OR2D0 U70 ( .A1(mult_18_n27), .A2(y[1]), .Z(mult_18_n12) );
  IND2D0 U3 ( .A1(mult_19_n9), .B1(n19), .ZN(kk_9_) );
  CKND2D0 U4 ( .A1(mult_19_n3), .A2(mult_19_n10), .ZN(n19) );
  CKND0 U5 ( .I(n19), .ZN(mult_19_n2) );
  IND2D0 U6 ( .A1(x[2]), .B1(y[3]), .ZN(mult_17_n17) );
  CKND0 U7 ( .I(y[3]), .ZN(n25) );
  AN2D0 U8 ( .A1(x[1]), .A2(y[3]), .Z(mult_17_n22) );
  IND2D0 U9 ( .A1(y[2]), .B1(x[3]), .ZN(mult_18_n17) );
  CKND0 U10 ( .I(x[3]), .ZN(n28) );
  AN2D0 U11 ( .A1(y[1]), .A2(x[3]), .Z(mult_18_n22) );
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
  fp32_normal_finite_wrapper_DW01_add_1_DW01_add_4 add_1_root_add_0_root_add_22_2 ( 
        .A(x[30:23]), .B({y[30], N17, N16, N15, N14, N13, N12, N11}), .CI(n79), 
        .SUM({N10, N9, N8, N7, N6, N5, N4, N3}) );
  AN2XD1 U3 ( .A1(exponent_adjust[0]), .A2(N3), .Z(n1) );
  FA1D0 U43 ( .A(N4), .B(exponent_adjust[1]), .CI(n1), .CO(
        add_0_root_add_0_root_add_22_2_carry[2]), .S(result[24]) );
  FA1D0 U44 ( .A(N5), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[2]), .CO(
        add_0_root_add_0_root_add_22_2_carry[3]), .S(result[25]) );
  FA1D0 U45 ( .A(N6), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[3]), .CO(
        add_0_root_add_0_root_add_22_2_carry[4]), .S(result[26]) );
  FA1D0 U46 ( .A(N7), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[4]), .CO(
        add_0_root_add_0_root_add_22_2_carry[5]), .S(result[27]) );
  FA1D0 U47 ( .A(N8), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[5]), .CO(
        add_0_root_add_0_root_add_22_2_carry[6]), .S(result[28]) );
  FA1D0 U48 ( .A(N9), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[6]), .CO(
        add_0_root_add_0_root_add_22_2_carry[7]), .S(result[29]) );
  XOR3D1 U57 ( .A1(N10), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_22_2_carry[7]), .Z(result[30]) );
  CKBD1 U58 ( .I(y[22]), .Z(fraction_y[22]) );
  INVD1 U66 ( .I(y[29]), .ZN(N17) );
  INVD1 U67 ( .I(y[24]), .ZN(N12) );
  INVD1 U68 ( .I(y[25]), .ZN(N13) );
  INVD1 U69 ( .I(y[26]), .ZN(N14) );
  INVD1 U70 ( .I(y[27]), .ZN(N15) );
  INVD1 U71 ( .I(y[28]), .ZN(N16) );
  CKBD1 U87 ( .I(x[22]), .Z(fraction_x[22]) );
  CKBD1 U88 ( .I(x[21]), .Z(fraction_x[21]) );
  CKBD1 U89 ( .I(x[20]), .Z(fraction_x[20]) );
  CKBD1 U90 ( .I(x[19]), .Z(fraction_x[19]) );
  CKBD1 U91 ( .I(y[21]), .Z(fraction_y[21]) );
  CKBD1 U92 ( .I(y[20]), .Z(fraction_y[20]) );
  CKBD1 U93 ( .I(y[19]), .Z(fraction_y[19]) );
  CKBD1 U94 ( .I(result_fraction[22]), .Z(result[22]) );
  CKBD1 U95 ( .I(result_fraction[21]), .Z(result[21]) );
  CKBD1 U96 ( .I(result_fraction[20]), .Z(result[20]) );
  CKBD1 U97 ( .I(result_fraction[19]), .Z(result[19]) );
  CKBD1 U98 ( .I(result_fraction[18]), .Z(result[18]) );
  CKBD1 U99 ( .I(result_fraction[17]), .Z(result[17]) );
  CKBD1 U100 ( .I(result_fraction[16]), .Z(result[16]) );
  CKBD1 U101 ( .I(result_fraction[15]), .Z(result[15]) );
  CKBD1 U102 ( .I(result_fraction[14]), .Z(result[14]) );
  CKBD1 U103 ( .I(result_fraction[13]), .Z(result[13]) );
  CKBD1 U104 ( .I(result_fraction[12]), .Z(result[12]) );
  CKBD1 U105 ( .I(result_fraction[11]), .Z(result[11]) );
  CKBD1 U106 ( .I(result_fraction[10]), .Z(result[10]) );
  TIEL U110 ( .ZN(n79) );
  CKXOR2D1 U111 ( .A1(exponent_adjust[0]), .A2(N3), .Z(result[23]) );
  CKND0 U119 ( .I(y[23]), .ZN(N11) );
endmodule


module oadm_input_trial_4_1_1_16_16_7_53_2a_DW_mult_uns_0_DW_mult_uns_1 ( a, b, 
        product );
  input [8:0] a;
  input [6:0] b;
  output [15:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n14, n16, n17, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n42, n43, n44, n45, n46, n47, n49, n50,
         n51, n77, n78, n79, n80, n81, n82, n83, n85, n86, n87, n88, n89, n90,
         n91, n92, n185, n186, n187, n188, n189, n191, n192, n193, n194, n195,
         n198, n199, n200, n202, n203, n206, n207, n208, n210, n211, n212,
         n214, n216, n217;

  FA1D0 U3 ( .A(n20), .B(n17), .CI(n3), .CO(n2), .S(product[13]) );
  FA1D0 U4 ( .A(n24), .B(n21), .CI(n4), .CO(n3), .S(product[12]) );
  FA1D0 U5 ( .A(n28), .B(n25), .CI(n5), .CO(n4), .S(product[11]) );
  FA1D0 U6 ( .A(n29), .B(n33), .CI(n6), .CO(n5), .S(product[10]) );
  FA1D0 U7 ( .A(n36), .B(n34), .CI(n7), .CO(n6), .S(product[9]) );
  FA1D0 U8 ( .A(n39), .B(n37), .CI(n8), .CO(n7), .S(product[8]) );
  FA1D0 U9 ( .A(n42), .B(n40), .CI(n9), .CO(n8), .S(product[7]) );
  FA1D0 U10 ( .A(n43), .B(n44), .CI(n10), .CO(n9), .S(product[6]) );
  FA1D0 U11 ( .A(n45), .B(n191), .CI(n11), .CO(n10), .S(product[5]) );
  FA1D0 U12 ( .A(n49), .B(n50), .CI(n12), .CO(n11), .S(product[4]) );
  FA1D0 U13 ( .A(n51), .B(n91), .CI(n189), .CO(n12), .S(product[3]) );
  FA1D0 U17 ( .A(n208), .B(b[3]), .CI(n22), .CO(n16), .S(n17) );
  FA1D0 U19 ( .A(n26), .B(n207), .CI(n23), .CO(n20), .S(n21) );
  HA1D0 U20 ( .A(a[6]), .B(b[4]), .CO(n22), .S(n23) );
  FA1D0 U21 ( .A(n30), .B(n187), .CI(n27), .CO(n24), .S(n25) );
  FA1D0 U24 ( .A(n32), .B(n194), .CI(n31), .CO(n28), .S(n29) );
  CMPE42D1 U27 ( .A(n77), .B(n85), .C(a[3]), .CIX(n35), .D(n186), .CO(n33), 
        .COX(n32), .S(n34) );
  CMPE42D1 U28 ( .A(n86), .B(n78), .C(a[2]), .CIX(n38), .D(n188), .CO(n36), 
        .COX(n35), .S(n37) );
  CMPE42D1 U29 ( .A(n87), .B(n79), .C(a[1]), .CIX(n185), .D(n212), .CO(n39), 
        .COX(n38), .S(n40) );
  FA1D0 U31 ( .A(b[3]), .B(n193), .CI(n47), .CO(n44), .S(n45) );
  HA1D0 U32 ( .A(n89), .B(n81), .CO(n46), .S(n47) );
  HA1D0 U34 ( .A(n83), .B(b[3]), .CO(n50), .S(n51) );
  AN2XD1 U136 ( .A1(n88), .A2(n80), .Z(n185) );
  XNR2D1 U137 ( .A1(b[3]), .A2(n210), .ZN(n186) );
  XNR2D1 U138 ( .A1(b[4]), .A2(a[7]), .ZN(n187) );
  XNR2D1 U139 ( .A1(b[4]), .A2(a[4]), .ZN(n188) );
  AN2XD1 U140 ( .A1(n92), .A2(n14), .Z(n189) );
  INVD1 U141 ( .I(a[7]), .ZN(n208) );
  INVD1 U145 ( .I(a[8]), .ZN(n206) );
  AN2XD1 U146 ( .A1(n82), .A2(n90), .Z(n191) );
  ND2D1 U147 ( .A1(n80), .A2(n195), .ZN(n198) );
  IND2D1 U148 ( .A1(n80), .B1(n195), .ZN(n199) );
  NR2D1 U149 ( .A1(n80), .A2(n200), .ZN(n203) );
  INVD1 U150 ( .I(n46), .ZN(n200) );
  AN2XD1 U151 ( .A1(n80), .A2(n46), .Z(n192) );
  INVD1 U152 ( .I(a[5]), .ZN(n210) );
  INVD1 U155 ( .I(n14), .ZN(product[1]) );
  INVD1 U159 ( .I(n216), .ZN(n207) );
  CKXOR2D1 U161 ( .A1(b[3]), .A2(a[2]), .Z(n195) );
  INVD1 U162 ( .I(a[4]), .ZN(n211) );
  ND2D1 U163 ( .A1(b[0]), .A2(a[1]), .ZN(n14) );
  CKXOR2D1 U164 ( .A1(n14), .A2(n92), .Z(product[2]) );
  MUX2ND0 U168 ( .I0(n198), .I1(n199), .S(n88), .ZN(n202) );
  CKXOR2D1 U170 ( .A1(n90), .A2(n82), .Z(n49) );
  XOR3D0 U171 ( .A1(n208), .A2(n206), .A3(n214), .Z(product[14]) );
  XOR3D0 U172 ( .A1(n2), .A2(n16), .A3(b[4]), .Z(n214) );
  MUX2ND0 U173 ( .I0(a[1]), .I1(a[2]), .S(b[0]), .ZN(n92) );
  MUX2ND0 U174 ( .I0(a[2]), .I1(a[3]), .S(b[0]), .ZN(n91) );
  MUX2ND0 U175 ( .I0(a[3]), .I1(a[4]), .S(b[0]), .ZN(n90) );
  MUX2ND0 U176 ( .I0(a[4]), .I1(a[5]), .S(b[0]), .ZN(n89) );
  MUX2ND0 U177 ( .I0(a[5]), .I1(a[6]), .S(b[0]), .ZN(n88) );
  MUX2ND0 U178 ( .I0(a[6]), .I1(a[7]), .S(b[0]), .ZN(n87) );
  MUX2ND0 U179 ( .I0(a[7]), .I1(a[8]), .S(b[0]), .ZN(n86) );
  CKND2D0 U180 ( .A1(a[8]), .A2(b[3]), .ZN(n85) );
  CKXOR2D0 U181 ( .A1(b[5]), .A2(a[1]), .Z(n83) );
  CKXOR2D0 U182 ( .A1(b[3]), .A2(a[2]), .Z(n82) );
  CKXOR2D0 U183 ( .A1(b[3]), .A2(a[3]), .Z(n81) );
  CKXOR2D0 U184 ( .A1(b[3]), .A2(a[4]), .Z(n80) );
  CKXOR2D0 U185 ( .A1(b[3]), .A2(a[5]), .Z(n79) );
  CKXOR2D0 U186 ( .A1(b[3]), .A2(a[6]), .Z(n78) );
  CKXOR2D0 U187 ( .A1(b[3]), .A2(a[7]), .Z(n77) );
  XNR2D0 U188 ( .A1(n211), .A2(n216), .ZN(n31) );
  CKND2D0 U189 ( .A1(n211), .A2(n216), .ZN(n30) );
  CKXOR2D0 U190 ( .A1(b[4]), .A2(a[8]), .Z(n216) );
  CKXOR2D0 U191 ( .A1(n210), .A2(b[3]), .Z(n27) );
  CKND2D0 U192 ( .A1(n210), .A2(b[4]), .ZN(n26) );
  CKXOR2D0 U142 ( .A1(b[3]), .A2(a[6]), .Z(n194) );
  AO211D0 U143 ( .A1(n46), .A2(n195), .B(n202), .C(n217), .Z(n42) );
  MUX2D0 U144 ( .I0(n192), .I1(n203), .S(n88), .Z(n217) );
  XOR4D0 U153 ( .A1(n195), .A2(n46), .A3(n80), .A4(n88), .Z(n43) );
  CKXOR2D1 U154 ( .A1(b[3]), .A2(a[3]), .Z(n212) );
  CKXOR2D0 U156 ( .A1(b[3]), .A2(a[1]), .Z(n193) );
endmodule


module oadm_input_trial_4_1_1_16_16_7_53_2a ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   coefficient_5_, coefficient_0, exponent_adjust_2_, n2, n18, n19, n1,
         n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17;
  wire   [22:19] x_mantissa;
  wire   [21:19] y_mantissa;
  wire   [24:17] narrow_compact_plane;
  wire   [14:1] reduced_scale_product;
  wire   [22:10] normalized_fraction;
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
        SYNOPSYS_UNCONNECTED__44, SYNOPSYS_UNCONNECTED__45, 
        SYNOPSYS_UNCONNECTED__46, SYNOPSYS_UNCONNECTED__47, 
        SYNOPSYS_UNCONNECTED__48, SYNOPSYS_UNCONNECTED__49, 
        SYNOPSYS_UNCONNECTED__50, SYNOPSYS_UNCONNECTED__51, 
        SYNOPSYS_UNCONNECTED__52, SYNOPSYS_UNCONNECTED__53, 
        SYNOPSYS_UNCONNECTED__54, SYNOPSYS_UNCONNECTED__55, 
        SYNOPSYS_UNCONNECTED__56, SYNOPSYS_UNCONNECTED__57, 
        SYNOPSYS_UNCONNECTED__58, SYNOPSYS_UNCONNECTED__59, 
        SYNOPSYS_UNCONNECTED__60, SYNOPSYS_UNCONNECTED__61, 
        SYNOPSYS_UNCONNECTED__62, SYNOPSYS_UNCONNECTED__63, 
        SYNOPSYS_UNCONNECTED__64, SYNOPSYS_UNCONNECTED__65, 
        SYNOPSYS_UNCONNECTED__66;

  oadm_input_narrow_plane_B4_LEVEL1_R16 narrow_plane ( .x(x_mantissa), .y({
        coefficient_5_, y_mantissa}), .plane_bits({narrow_compact_plane, 
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16}) );
  fp32_normal_finite_wrapper fp_wrapper ( .x({x[31:19], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0}), .y({y[31:19], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .divide_mode(1'b0), .fraction_x({x_mantissa, 
        SYNOPSYS_UNCONNECTED__17, SYNOPSYS_UNCONNECTED__18, 
        SYNOPSYS_UNCONNECTED__19, SYNOPSYS_UNCONNECTED__20, 
        SYNOPSYS_UNCONNECTED__21, SYNOPSYS_UNCONNECTED__22, 
        SYNOPSYS_UNCONNECTED__23, SYNOPSYS_UNCONNECTED__24, 
        SYNOPSYS_UNCONNECTED__25, SYNOPSYS_UNCONNECTED__26, 
        SYNOPSYS_UNCONNECTED__27, SYNOPSYS_UNCONNECTED__28, 
        SYNOPSYS_UNCONNECTED__29, SYNOPSYS_UNCONNECTED__30, 
        SYNOPSYS_UNCONNECTED__31, SYNOPSYS_UNCONNECTED__32, 
        SYNOPSYS_UNCONNECTED__33, SYNOPSYS_UNCONNECTED__34, 
        SYNOPSYS_UNCONNECTED__35}), .fraction_y({coefficient_5_, y_mantissa, 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, 
        SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39, 
        SYNOPSYS_UNCONNECTED__40, SYNOPSYS_UNCONNECTED__41, 
        SYNOPSYS_UNCONNECTED__42, SYNOPSYS_UNCONNECTED__43, 
        SYNOPSYS_UNCONNECTED__44, SYNOPSYS_UNCONNECTED__45, 
        SYNOPSYS_UNCONNECTED__46, SYNOPSYS_UNCONNECTED__47, 
        SYNOPSYS_UNCONNECTED__48, SYNOPSYS_UNCONNECTED__49, 
        SYNOPSYS_UNCONNECTED__50, SYNOPSYS_UNCONNECTED__51, 
        SYNOPSYS_UNCONNECTED__52, SYNOPSYS_UNCONNECTED__53, 
        SYNOPSYS_UNCONNECTED__54}), .result_fraction({normalized_fraction, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .exponent_adjust({exponent_adjust_2_, exponent_adjust_2_, n2}), 
        .result({result[31:10], SYNOPSYS_UNCONNECTED__55, 
        SYNOPSYS_UNCONNECTED__56, SYNOPSYS_UNCONNECTED__57, 
        SYNOPSYS_UNCONNECTED__58, SYNOPSYS_UNCONNECTED__59, 
        SYNOPSYS_UNCONNECTED__60, SYNOPSYS_UNCONNECTED__61, 
        SYNOPSYS_UNCONNECTED__62, SYNOPSYS_UNCONNECTED__63, 
        SYNOPSYS_UNCONNECTED__64}) );
  oadm_input_trial_4_1_1_16_16_7_53_2a_DW_mult_uns_0_DW_mult_uns_1 mult_69 ( 
        .a({narrow_compact_plane, n16}), .b({coefficient_0, coefficient_5_, 
        coefficient_0, coefficient_5_, n16, n17, coefficient_0}), .product({
        SYNOPSYS_UNCONNECTED__65, reduced_scale_product, 
        SYNOPSYS_UNCONNECTED__66}) );
  ND2D1 U3 ( .A1(n18), .A2(n19), .ZN(exponent_adjust_2_) );
  INVD1 U4 ( .I(n18), .ZN(n2) );
  ND2D1 U5 ( .A1(reduced_scale_product[13]), .A2(n1), .ZN(n18) );
  ND2D1 U6 ( .A1(n3), .A2(n1), .ZN(n19) );
  INVD1 U7 ( .I(reduced_scale_product[13]), .ZN(n3) );
  OAI222D0 U8 ( .A1(n5), .A2(n18), .B1(n19), .B2(n6), .C1(n1), .C2(n4), .ZN(
        normalized_fraction[21]) );
  OAI222D0 U9 ( .A1(n18), .A2(n4), .B1(n19), .B2(n5), .C1(n1), .C2(n3), .ZN(
        normalized_fraction[22]) );
  OAI222D0 U10 ( .A1(n18), .A2(n14), .B1(n19), .B2(n15), .C1(n1), .C2(n13), 
        .ZN(normalized_fraction[12]) );
  OAI222D0 U11 ( .A1(n18), .A2(n13), .B1(n19), .B2(n14), .C1(n1), .C2(n12), 
        .ZN(normalized_fraction[13]) );
  OAI222D0 U12 ( .A1(n18), .A2(n12), .B1(n19), .B2(n13), .C1(n1), .C2(n11), 
        .ZN(normalized_fraction[14]) );
  OAI222D0 U13 ( .A1(n18), .A2(n11), .B1(n19), .B2(n12), .C1(n1), .C2(n10), 
        .ZN(normalized_fraction[15]) );
  OAI222D0 U14 ( .A1(n18), .A2(n10), .B1(n19), .B2(n11), .C1(n1), .C2(n9), 
        .ZN(normalized_fraction[16]) );
  OAI222D0 U15 ( .A1(n18), .A2(n9), .B1(n19), .B2(n10), .C1(n1), .C2(n8), .ZN(
        normalized_fraction[17]) );
  OAI222D0 U16 ( .A1(n18), .A2(n8), .B1(n19), .B2(n9), .C1(n1), .C2(n7), .ZN(
        normalized_fraction[18]) );
  OAI222D0 U17 ( .A1(n18), .A2(n7), .B1(n19), .B2(n8), .C1(n1), .C2(n6), .ZN(
        normalized_fraction[19]) );
  OAI222D0 U18 ( .A1(n18), .A2(n6), .B1(n19), .B2(n7), .C1(n1), .C2(n5), .ZN(
        normalized_fraction[20]) );
  OAI22D1 U19 ( .A1(n18), .A2(n15), .B1(n1), .B2(n14), .ZN(
        normalized_fraction[11]) );
  NR2D1 U20 ( .A1(n1), .A2(n15), .ZN(normalized_fraction[10]) );
  INVD1 U21 ( .I(reduced_scale_product[12]), .ZN(n4) );
  INVD1 U22 ( .I(reduced_scale_product[11]), .ZN(n5) );
  INVD1 U23 ( .I(reduced_scale_product[10]), .ZN(n6) );
  INVD1 U24 ( .I(reduced_scale_product[9]), .ZN(n7) );
  INVD1 U25 ( .I(reduced_scale_product[8]), .ZN(n8) );
  INVD1 U26 ( .I(reduced_scale_product[7]), .ZN(n9) );
  INVD1 U27 ( .I(reduced_scale_product[6]), .ZN(n10) );
  INVD1 U28 ( .I(reduced_scale_product[5]), .ZN(n11) );
  INVD1 U29 ( .I(reduced_scale_product[4]), .ZN(n12) );
  INVD1 U30 ( .I(reduced_scale_product[14]), .ZN(n1) );
  INVD1 U31 ( .I(reduced_scale_product[3]), .ZN(n13) );
  INVD1 U32 ( .I(reduced_scale_product[2]), .ZN(n14) );
  INVD1 U33 ( .I(reduced_scale_product[1]), .ZN(n15) );
  INVD1 U34 ( .I(coefficient_5_), .ZN(coefficient_0) );
  TIEH U35 ( .Z(n17) );
  TIEL U36 ( .ZN(n16) );
endmodule


module input_l1_narrow_b4 ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;

  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9;
  assign result[9] = 1'b0;
  assign result[0] = 1'b0;
  assign result[1] = 1'b0;
  assign result[2] = 1'b0;
  assign result[3] = 1'b0;
  assign result[4] = 1'b0;
  assign result[5] = 1'b0;
  assign result[6] = 1'b0;
  assign result[7] = 1'b0;
  assign result[8] = 1'b0;

  oadm_input_trial_4_1_1_16_16_7_53_2a dut ( .x({x[31:19], 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .y({y[31:19], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .result({result[31:10], SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9}) );
endmodule

