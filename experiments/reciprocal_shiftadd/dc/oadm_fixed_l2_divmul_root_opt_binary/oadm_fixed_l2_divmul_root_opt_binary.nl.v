/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Sun Sep  6 00:17:21 2026
/////////////////////////////////////////////////////////////


module fp32_normal_finite_wrapper_DW01_add_3_DW01_add_16 ( A, B, CI, SUM, CO
 );
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


module fp32_normal_finite_wrapper_DW01_add_1_DW01_add_14 ( A, B, CI, SUM, CO
 );
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
         N12, N11, N10, n1, n2, n35, n410, n51, n60, n70, n76, n77, n79;
  wire   [7:2] add_0_root_add_0_root_add_22_2_carry;
  wire   [7:2] add_0_root_add_0_root_add_25_2_carry;

  CKXOR2D1 U2 ( .A1(y[31]), .A2(x[31]), .Z(result[31]) );
  fp32_normal_finite_wrapper_DW01_add_3_DW01_add_16 add_1_root_add_0_root_add_25_2 ( 
        .A(x[30:23]), .B({N42, N41, N40, N39, N38, N37, N36, N11}), .CI(n79), 
        .SUM({N34, N33, N32, N31, N30, N29, N28, N27}) );
  fp32_normal_finite_wrapper_DW01_add_1_DW01_add_14 add_1_root_add_0_root_add_22_2 ( 
        .A(x[30:23]), .B({y[30], N17, N16, N15, N14, N13, N12, N11}), .CI(n79), 
        .SUM({N10, N9, N8, N7, N6, N5, N4, N3}) );
  AN2XD1 U3 ( .A1(exponent_adjust[0]), .A2(N3), .Z(n1) );
  AN2XD1 U4 ( .A1(exponent_adjust[0]), .A2(N27), .Z(n2) );
  INVD1 U29 ( .I(divide_mode), .ZN(n77) );
  CKBD1 U30 ( .I(result_fraction[11]), .Z(result[11]) );
  CKBD1 U31 ( .I(result_fraction[12]), .Z(result[12]) );
  CKBD1 U32 ( .I(result_fraction[13]), .Z(result[13]) );
  CKBD1 U33 ( .I(result_fraction[14]), .Z(result[14]) );
  CKBD1 U34 ( .I(result_fraction[15]), .Z(result[15]) );
  CKBD1 U35 ( .I(result_fraction[16]), .Z(result[16]) );
  CKBD1 U36 ( .I(result_fraction[17]), .Z(result[17]) );
  CKBD1 U37 ( .I(result_fraction[10]), .Z(result[10]) );
  CKBD1 U38 ( .I(result_fraction[9]), .Z(result[9]) );
  CKBD1 U39 ( .I(result_fraction[8]), .Z(result[8]) );
  CKBD1 U40 ( .I(result_fraction[7]), .Z(result[7]) );
  AO22D0 U41 ( .A1(N49), .A2(n77), .B1(N25), .B2(divide_mode), .Z(result[29])
         );
  AO22D0 U42 ( .A1(N48), .A2(n77), .B1(N24), .B2(divide_mode), .Z(result[28])
         );
  AO22D0 U43 ( .A1(N47), .A2(n77), .B1(N23), .B2(divide_mode), .Z(result[27])
         );
  AO22D0 U44 ( .A1(N46), .A2(n77), .B1(N22), .B2(divide_mode), .Z(result[26])
         );
  AO22D0 U45 ( .A1(N45), .A2(n77), .B1(N21), .B2(divide_mode), .Z(result[25])
         );
  AO22D0 U46 ( .A1(N44), .A2(n77), .B1(N20), .B2(divide_mode), .Z(result[24])
         );
  FA1D0 U47 ( .A(N4), .B(exponent_adjust[1]), .CI(n1), .CO(
        add_0_root_add_0_root_add_22_2_carry[2]), .S(N20) );
  FA1D0 U48 ( .A(N5), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[2]), .CO(
        add_0_root_add_0_root_add_22_2_carry[3]), .S(N21) );
  FA1D0 U49 ( .A(N6), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[3]), .CO(
        add_0_root_add_0_root_add_22_2_carry[4]), .S(N22) );
  FA1D0 U50 ( .A(N7), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[4]), .CO(
        add_0_root_add_0_root_add_22_2_carry[5]), .S(N23) );
  FA1D0 U51 ( .A(N8), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[5]), .CO(
        add_0_root_add_0_root_add_22_2_carry[6]), .S(N24) );
  FA1D0 U52 ( .A(N9), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[6]), .CO(
        add_0_root_add_0_root_add_22_2_carry[7]), .S(N25) );
  FA1D0 U53 ( .A(N28), .B(exponent_adjust[1]), .CI(n2), .CO(
        add_0_root_add_0_root_add_25_2_carry[2]), .S(N44) );
  FA1D0 U54 ( .A(N29), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[2]), .CO(
        add_0_root_add_0_root_add_25_2_carry[3]), .S(N45) );
  FA1D0 U55 ( .A(N30), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[3]), .CO(
        add_0_root_add_0_root_add_25_2_carry[4]), .S(N46) );
  FA1D0 U56 ( .A(N31), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[4]), .CO(
        add_0_root_add_0_root_add_25_2_carry[5]), .S(N47) );
  FA1D0 U57 ( .A(N32), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[5]), .CO(
        add_0_root_add_0_root_add_25_2_carry[6]), .S(N48) );
  FA1D0 U58 ( .A(N33), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[6]), .CO(
        add_0_root_add_0_root_add_25_2_carry[7]), .S(N49) );
  AO22D0 U59 ( .A1(N43), .A2(n77), .B1(N19), .B2(divide_mode), .Z(result[23])
         );
  CKBD1 U60 ( .I(x[22]), .Z(fraction_x[22]) );
  AO22D0 U61 ( .A1(N50), .A2(n77), .B1(divide_mode), .B2(N26), .Z(result[30])
         );
  XOR3D1 U62 ( .A1(N34), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_25_2_carry[7]), .Z(N50) );
  XOR3D1 U63 ( .A1(N10), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_22_2_carry[7]), .Z(N26) );
  CKBD1 U64 ( .I(y[22]), .Z(fraction_y[22]) );
  CKBD1 U65 ( .I(x[21]), .Z(fraction_x[21]) );
  CKBD1 U66 ( .I(y[21]), .Z(fraction_y[21]) );
  AN2XD1 U67 ( .A1(y[23]), .A2(y[24]), .Z(n35) );
  INVD1 U68 ( .I(y[29]), .ZN(N17) );
  INVD0 U69 ( .I(y[24]), .ZN(N12) );
  INVD1 U70 ( .I(y[25]), .ZN(N13) );
  INVD1 U71 ( .I(y[26]), .ZN(N14) );
  INVD1 U72 ( .I(y[27]), .ZN(N15) );
  INVD1 U73 ( .I(y[28]), .ZN(N16) );
  AN2XD1 U74 ( .A1(n35), .A2(y[25]), .Z(n410) );
  AN2XD1 U75 ( .A1(n410), .A2(y[26]), .Z(n51) );
  AN2XD1 U76 ( .A1(n51), .A2(y[27]), .Z(n60) );
  AN2XD1 U77 ( .A1(n60), .A2(y[28]), .Z(n70) );
  CKXOR2D1 U78 ( .A1(y[30]), .A2(n76), .Z(N42) );
  ND2D1 U79 ( .A1(n70), .A2(y[29]), .ZN(n76) );
  CKBD1 U87 ( .I(x[20]), .Z(fraction_x[20]) );
  CKBD1 U88 ( .I(x[19]), .Z(fraction_x[19]) );
  CKBD1 U89 ( .I(x[18]), .Z(fraction_x[18]) );
  CKBD1 U90 ( .I(x[17]), .Z(fraction_x[17]) );
  CKBD1 U91 ( .I(x[16]), .Z(fraction_x[16]) );
  CKBD1 U92 ( .I(x[15]), .Z(fraction_x[15]) );
  CKBD1 U93 ( .I(x[14]), .Z(fraction_x[14]) );
  CKBD1 U94 ( .I(x[13]), .Z(fraction_x[13]) );
  CKBD1 U95 ( .I(x[12]), .Z(fraction_x[12]) );
  CKBD1 U96 ( .I(y[20]), .Z(fraction_y[20]) );
  CKBD1 U97 ( .I(y[19]), .Z(fraction_y[19]) );
  CKBD1 U98 ( .I(y[18]), .Z(fraction_y[18]) );
  CKBD1 U99 ( .I(y[17]), .Z(fraction_y[17]) );
  CKBD1 U100 ( .I(y[16]), .Z(fraction_y[16]) );
  CKBD1 U101 ( .I(y[15]), .Z(fraction_y[15]) );
  CKBD1 U102 ( .I(y[14]), .Z(fraction_y[14]) );
  CKBD1 U103 ( .I(y[13]), .Z(fraction_y[13]) );
  CKBD1 U104 ( .I(y[12]), .Z(fraction_y[12]) );
  CKBD1 U105 ( .I(result_fraction[22]), .Z(result[22]) );
  CKBD1 U106 ( .I(result_fraction[21]), .Z(result[21]) );
  CKBD1 U107 ( .I(result_fraction[20]), .Z(result[20]) );
  CKBD1 U108 ( .I(result_fraction[19]), .Z(result[19]) );
  CKBD1 U109 ( .I(result_fraction[18]), .Z(result[18]) );
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



    module oadm_fixed_divmul_root_opt_binary_2_16_12_16_8_cb_88_61_49_DW01_add_6 ( 
        A, B, CI, SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [16:3] carry;

  FA1D0 U1_2 ( .A(A[2]), .B(B[2]), .CI(n1), .CO(carry[3]), .S(SUM[2]) );
  XOR3D1 U1_16 ( .A1(A[16]), .A2(B[16]), .A3(carry[16]), .Z(SUM[16]) );
  FA1D0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1D0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1D0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1D0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA1D0 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA1D0 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  FA1D0 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FA1D0 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FA1D0 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FA1D0 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  FA1D0 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  FA1D0 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  FA1D0 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  AN2XD1 U1 ( .A1(B[1]), .A2(A[1]), .Z(n1) );
  CKBD1 U2 ( .I(B[0]), .Z(SUM[0]) );
  CKXOR2D1 U3 ( .A1(B[1]), .A2(A[1]), .Z(SUM[1]) );
endmodule



    module oadm_fixed_divmul_root_opt_binary_2_16_12_16_8_cb_88_61_49_DW_mult_tc_1 ( 
        a, b, product );
  input [8:0] a;
  input [5:0] b;
  output [14:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n14, n16, n17, n18,
         n19, n20, n22, n23, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170;

  FA1D0 U2 ( .A(n152), .B(n14), .CI(n2), .CO(n1), .S(product[13]) );
  FA1D0 U3 ( .A(n16), .B(n151), .CI(n3), .CO(n2), .S(product[12]) );
  FA1D0 U4 ( .A(n18), .B(n17), .CI(n4), .CO(n3), .S(product[11]) );
  FA1D0 U5 ( .A(n22), .B(n19), .CI(n5), .CO(n4), .S(product[10]) );
  FA1D0 U6 ( .A(n23), .B(n25), .CI(n6), .CO(n5), .S(product[9]) );
  FA1D0 U7 ( .A(n27), .B(n26), .CI(n7), .CO(n6), .S(product[8]) );
  FA1D0 U8 ( .A(n29), .B(n28), .CI(n8), .CO(n7), .S(product[7]) );
  FA1D0 U9 ( .A(n31), .B(n30), .CI(n9), .CO(n8), .S(product[6]) );
  FA1D0 U10 ( .A(n33), .B(n32), .CI(n10), .CO(n9), .S(product[5]) );
  FA1D0 U11 ( .A(n34), .B(n35), .CI(n11), .CO(n10), .S(product[4]) );
  FA1D0 U12 ( .A(n36), .B(n37), .CI(n12), .CO(n11), .S(product[3]) );
  FA1D0 U13 ( .A(n159), .B(n56), .CI(n160), .CO(n12), .S(product[2]) );
  FA1D0 U16 ( .A(n40), .B(n20), .CI(n47), .CO(n16), .S(n17) );
  FA1D0 U17 ( .A(n48), .B(n41), .CI(n150), .CO(n18), .S(n19) );
  FA1D0 U19 ( .A(a[8]), .B(n49), .CI(n150), .CO(n22), .S(n23) );
  FA1D0 U21 ( .A(n153), .B(n42), .CI(n50), .CO(n25), .S(n26) );
  FA1D0 U22 ( .A(n154), .B(n43), .CI(n51), .CO(n27), .S(n28) );
  FA1D0 U23 ( .A(n155), .B(n44), .CI(n52), .CO(n29), .S(n30) );
  FA1D0 U24 ( .A(n156), .B(n45), .CI(n53), .CO(n31), .S(n32) );
  FA1D0 U25 ( .A(n157), .B(n46), .CI(n54), .CO(n33), .S(n34) );
  HA1D0 U26 ( .A(n55), .B(n158), .CO(n35), .S(n36) );
  INVD1 U110 ( .I(n14), .ZN(n151) );
  INVD1 U111 ( .I(b[3]), .ZN(n149) );
  INVD1 U112 ( .I(n20), .ZN(n150) );
  INVD1 U113 ( .I(a[0]), .ZN(n160) );
  INVD1 U114 ( .I(a[8]), .ZN(n152) );
  INVD1 U115 ( .I(a[1]), .ZN(n159) );
  INVD1 U116 ( .I(a[2]), .ZN(n158) );
  INVD1 U117 ( .I(a[3]), .ZN(n157) );
  INVD1 U118 ( .I(a[4]), .ZN(n156) );
  INVD1 U119 ( .I(a[5]), .ZN(n155) );
  INVD1 U120 ( .I(a[7]), .ZN(n153) );
  INVD1 U121 ( .I(a[6]), .ZN(n154) );
  CKND0 U122 ( .I(n160), .ZN(product[1]) );
  CKND0 U123 ( .I(n1), .ZN(product[14]) );
  NR2D0 U124 ( .A1(b[2]), .A2(n160), .ZN(n56) );
  OAI22D0 U125 ( .A1(n161), .A2(n162), .B1(b[2]), .B2(n163), .ZN(n55) );
  CKXOR2D0 U126 ( .A1(b[3]), .A2(n160), .Z(n161) );
  OAI22D0 U127 ( .A1(n163), .A2(n162), .B1(b[2]), .B2(n164), .ZN(n54) );
  CKXOR2D0 U128 ( .A1(b[3]), .A2(n159), .Z(n163) );
  OAI22D0 U129 ( .A1(n164), .A2(n162), .B1(b[2]), .B2(n165), .ZN(n53) );
  CKXOR2D0 U130 ( .A1(b[3]), .A2(n158), .Z(n164) );
  OAI22D0 U131 ( .A1(n165), .A2(n162), .B1(b[2]), .B2(n166), .ZN(n52) );
  CKXOR2D0 U132 ( .A1(b[3]), .A2(n157), .Z(n165) );
  OAI22D0 U133 ( .A1(n166), .A2(n162), .B1(b[2]), .B2(n167), .ZN(n51) );
  CKXOR2D0 U134 ( .A1(b[3]), .A2(n156), .Z(n166) );
  OAI22D0 U135 ( .A1(n167), .A2(n162), .B1(b[2]), .B2(n168), .ZN(n50) );
  CKXOR2D0 U136 ( .A1(b[3]), .A2(n155), .Z(n167) );
  OAI22D0 U137 ( .A1(n168), .A2(n162), .B1(b[2]), .B2(n169), .ZN(n49) );
  CKXOR2D0 U138 ( .A1(b[3]), .A2(n154), .Z(n168) );
  OAI22D0 U139 ( .A1(n169), .A2(n162), .B1(b[2]), .B2(n170), .ZN(n48) );
  CKXOR2D0 U140 ( .A1(b[3]), .A2(n153), .Z(n169) );
  AO21D0 U141 ( .A1(n162), .A2(b[2]), .B(n170), .Z(n47) );
  CKXOR2D0 U142 ( .A1(n149), .A2(a[8]), .Z(n170) );
  NR2D0 U143 ( .A1(b[3]), .A2(n160), .ZN(n46) );
  OAI22D0 U144 ( .A1(n160), .A2(n149), .B1(b[3]), .B2(n159), .ZN(n45) );
  OAI22D0 U145 ( .A1(n159), .A2(n149), .B1(b[3]), .B2(n158), .ZN(n44) );
  OAI22D0 U146 ( .A1(n158), .A2(n149), .B1(b[3]), .B2(n157), .ZN(n43) );
  OAI22D0 U147 ( .A1(n157), .A2(n149), .B1(b[3]), .B2(n156), .ZN(n42) );
  OAI22D0 U148 ( .A1(n155), .A2(n149), .B1(b[3]), .B2(n154), .ZN(n41) );
  OAI22D0 U149 ( .A1(n154), .A2(n149), .B1(b[3]), .B2(n153), .ZN(n40) );
  OAI32D0 U150 ( .A1(n149), .A2(a[0]), .A3(b[2]), .B1(n149), .B2(n162), .ZN(
        n37) );
  OAI22D0 U153 ( .A1(n156), .A2(n149), .B1(b[3]), .B2(n155), .ZN(n20) );
  OAI22D0 U154 ( .A1(b[3]), .A2(n152), .B1(n153), .B2(n149), .ZN(n14) );
  IND2D0 U151 ( .A1(b[3]), .B1(b[2]), .ZN(n162) );
endmodule



    module oadm_fixed_divmul_root_opt_binary_2_16_12_16_8_cb_88_61_49_DW_mult_tc_0 ( 
        a, b, product );
  input [8:0] a;
  input [5:0] b;
  output [14:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n14, n16, n17, n18,
         n19, n20, n22, n23, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170;

  FA1D0 U2 ( .A(n152), .B(n14), .CI(n2), .CO(n1), .S(product[13]) );
  FA1D0 U3 ( .A(n16), .B(n151), .CI(n3), .CO(n2), .S(product[12]) );
  FA1D0 U4 ( .A(n18), .B(n17), .CI(n4), .CO(n3), .S(product[11]) );
  FA1D0 U5 ( .A(n22), .B(n19), .CI(n5), .CO(n4), .S(product[10]) );
  FA1D0 U6 ( .A(n23), .B(n25), .CI(n6), .CO(n5), .S(product[9]) );
  FA1D0 U7 ( .A(n27), .B(n26), .CI(n7), .CO(n6), .S(product[8]) );
  FA1D0 U8 ( .A(n29), .B(n28), .CI(n8), .CO(n7), .S(product[7]) );
  FA1D0 U9 ( .A(n31), .B(n30), .CI(n9), .CO(n8), .S(product[6]) );
  FA1D0 U10 ( .A(n33), .B(n32), .CI(n10), .CO(n9), .S(product[5]) );
  FA1D0 U11 ( .A(n34), .B(n35), .CI(n11), .CO(n10), .S(product[4]) );
  FA1D0 U12 ( .A(n36), .B(n37), .CI(n12), .CO(n11), .S(product[3]) );
  FA1D0 U13 ( .A(n159), .B(n56), .CI(n160), .CO(n12), .S(product[2]) );
  FA1D0 U16 ( .A(n40), .B(n20), .CI(n47), .CO(n16), .S(n17) );
  FA1D0 U17 ( .A(n48), .B(n41), .CI(n150), .CO(n18), .S(n19) );
  FA1D0 U19 ( .A(a[8]), .B(n49), .CI(n150), .CO(n22), .S(n23) );
  FA1D0 U21 ( .A(n153), .B(n42), .CI(n50), .CO(n25), .S(n26) );
  FA1D0 U22 ( .A(n154), .B(n43), .CI(n51), .CO(n27), .S(n28) );
  FA1D0 U23 ( .A(n155), .B(n44), .CI(n52), .CO(n29), .S(n30) );
  FA1D0 U24 ( .A(n156), .B(n45), .CI(n53), .CO(n31), .S(n32) );
  FA1D0 U25 ( .A(n157), .B(n46), .CI(n54), .CO(n33), .S(n34) );
  HA1D0 U26 ( .A(n55), .B(n158), .CO(n35), .S(n36) );
  INVD1 U110 ( .I(n14), .ZN(n151) );
  INVD1 U111 ( .I(n20), .ZN(n150) );
  INVD1 U112 ( .I(b[3]), .ZN(n149) );
  INVD1 U113 ( .I(a[0]), .ZN(n160) );
  INVD1 U114 ( .I(a[8]), .ZN(n152) );
  INVD1 U115 ( .I(a[1]), .ZN(n159) );
  INVD1 U116 ( .I(a[2]), .ZN(n158) );
  INVD1 U117 ( .I(a[3]), .ZN(n157) );
  INVD1 U118 ( .I(a[4]), .ZN(n156) );
  INVD1 U119 ( .I(a[5]), .ZN(n155) );
  INVD1 U120 ( .I(a[7]), .ZN(n153) );
  INVD1 U121 ( .I(a[6]), .ZN(n154) );
  CKND0 U122 ( .I(n160), .ZN(product[1]) );
  CKND0 U123 ( .I(n1), .ZN(product[14]) );
  NR2D0 U124 ( .A1(b[2]), .A2(n160), .ZN(n56) );
  OAI22D0 U125 ( .A1(n161), .A2(n162), .B1(b[2]), .B2(n163), .ZN(n55) );
  CKXOR2D0 U126 ( .A1(b[3]), .A2(n160), .Z(n161) );
  OAI22D0 U127 ( .A1(n163), .A2(n162), .B1(b[2]), .B2(n164), .ZN(n54) );
  CKXOR2D0 U128 ( .A1(b[3]), .A2(n159), .Z(n163) );
  OAI22D0 U129 ( .A1(n164), .A2(n162), .B1(b[2]), .B2(n165), .ZN(n53) );
  CKXOR2D0 U130 ( .A1(b[3]), .A2(n158), .Z(n164) );
  OAI22D0 U131 ( .A1(n165), .A2(n162), .B1(b[2]), .B2(n166), .ZN(n52) );
  CKXOR2D0 U132 ( .A1(b[3]), .A2(n157), .Z(n165) );
  OAI22D0 U133 ( .A1(n166), .A2(n162), .B1(b[2]), .B2(n167), .ZN(n51) );
  CKXOR2D0 U134 ( .A1(b[3]), .A2(n156), .Z(n166) );
  OAI22D0 U135 ( .A1(n167), .A2(n162), .B1(b[2]), .B2(n168), .ZN(n50) );
  CKXOR2D0 U136 ( .A1(b[3]), .A2(n155), .Z(n167) );
  OAI22D0 U137 ( .A1(n168), .A2(n162), .B1(b[2]), .B2(n169), .ZN(n49) );
  CKXOR2D0 U138 ( .A1(b[3]), .A2(n154), .Z(n168) );
  OAI22D0 U139 ( .A1(n169), .A2(n162), .B1(b[2]), .B2(n170), .ZN(n48) );
  CKXOR2D0 U140 ( .A1(b[3]), .A2(n153), .Z(n169) );
  AO21D0 U141 ( .A1(n162), .A2(b[2]), .B(n170), .Z(n47) );
  CKXOR2D0 U142 ( .A1(n149), .A2(a[8]), .Z(n170) );
  NR2D0 U143 ( .A1(b[3]), .A2(n160), .ZN(n46) );
  OAI22D0 U144 ( .A1(n160), .A2(n149), .B1(b[3]), .B2(n159), .ZN(n45) );
  OAI22D0 U145 ( .A1(n159), .A2(n149), .B1(b[3]), .B2(n158), .ZN(n44) );
  OAI22D0 U146 ( .A1(n158), .A2(n149), .B1(b[3]), .B2(n157), .ZN(n43) );
  OAI22D0 U147 ( .A1(n157), .A2(n149), .B1(b[3]), .B2(n156), .ZN(n42) );
  OAI22D0 U148 ( .A1(n155), .A2(n149), .B1(b[3]), .B2(n154), .ZN(n41) );
  OAI22D0 U149 ( .A1(n154), .A2(n149), .B1(b[3]), .B2(n153), .ZN(n40) );
  OAI32D0 U150 ( .A1(n149), .A2(a[0]), .A3(b[2]), .B1(n149), .B2(n162), .ZN(
        n37) );
  OAI22D0 U153 ( .A1(n156), .A2(n149), .B1(b[3]), .B2(n155), .ZN(n20) );
  OAI22D0 U154 ( .A1(b[3]), .A2(n152), .B1(n153), .B2(n149), .ZN(n14) );
  IND2D0 U151 ( .A1(b[3]), .B1(b[2]), .ZN(n162) );
endmodule



    module oadm_fixed_divmul_root_opt_binary_2_16_12_16_8_cb_88_61_49_DW_mult_uns_0 ( 
        a, b, product );
  input [4:0] a;
  input [4:0] b;
  output [9:0] product;
  wire   n2, n3, n4, n5, n6, n9, n10, n11, n12, n13, n14, n15, n16, n17, n19,
         n20, n21, n36, n42, n88, n89, n93, n94, n95, n96, n97, n98, n99, n100,
         n101;

  FA1D0 U3 ( .A(n12), .B(n10), .CI(n3), .CO(n2), .S(product[7]) );
  FA1D0 U4 ( .A(n15), .B(n13), .CI(n4), .CO(n3), .S(product[6]) );
  FA1D0 U5 ( .A(n16), .B(n20), .CI(n5), .CO(n4), .S(product[5]) );
  FA1D0 U10 ( .A(b[3]), .B(a[3]), .CI(n11), .CO(n9), .S(n10) );
  CMPE42D1 U11 ( .A(b[2]), .B(a[2]), .C(n36), .CIX(n14), .D(n17), .CO(n12), 
        .COX(n11), .S(n13) );
  INVD1 U56 ( .I(n19), .ZN(n94) );
  INVD1 U59 ( .I(n42), .ZN(n95) );
  INVD1 U60 ( .I(n14), .ZN(n93) );
  ND2D1 U64 ( .A1(n19), .A2(n93), .ZN(n99) );
  XNR3D1 U65 ( .A1(n14), .A2(n17), .A3(n94), .ZN(n16) );
  INVD1 U66 ( .I(b[3]), .ZN(n88) );
  INVD1 U67 ( .I(a[3]), .ZN(n89) );
  INVD1 U68 ( .I(b[2]), .ZN(n97) );
  INVD1 U69 ( .I(a[2]), .ZN(n96) );
  XNR2D1 U70 ( .A1(n2), .A2(n9), .ZN(product[8]) );
  AN2D0 U71 ( .A1(n6), .A2(n21), .Z(n5) );
  CKXOR2D0 U72 ( .A1(n6), .A2(n21), .Z(product[4]) );
  AN2D0 U73 ( .A1(a[2]), .A2(b[2]), .Z(n6) );
  CKXOR2D0 U74 ( .A1(a[2]), .A2(b[2]), .Z(product[3]) );
  OAI211D0 U75 ( .A1(n17), .A2(n94), .B(n98), .C(n99), .ZN(n15) );
  INR2D0 U76 ( .A1(b[3]), .B1(n95), .ZN(n19) );
  XNR3D0 U77 ( .A1(a[3]), .A2(n95), .A3(b[3]), .ZN(n21) );
  MUX2ND0 U78 ( .I0(n100), .I1(n101), .S(b[3]), .ZN(n20) );
  CKND2D0 U79 ( .A1(a[3]), .A2(n95), .ZN(n101) );
  CKND2D0 U80 ( .A1(n42), .A2(a[3]), .ZN(n100) );
  NR2D0 U81 ( .A1(n97), .A2(n96), .ZN(n42) );
  NR2D0 U82 ( .A1(n88), .A2(n96), .ZN(n14) );
  NR2D0 U83 ( .A1(n97), .A2(n89), .ZN(n17) );
  NR2D0 U84 ( .A1(n88), .A2(n89), .ZN(n36) );
  OR2D0 U57 ( .A1(n9), .A2(n2), .Z(product[9]) );
  IND2D0 U58 ( .A1(n17), .B1(n93), .ZN(n98) );
endmodule


module oadm_fixed_divmul_root_opt_binary_2_16_12_16_8_cb_88_61_49 ( x, y, 
        divide_mode, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  input divide_mode;
  wire   x_residual_20_, y_residual_20_, N37, N38, N39, N40, N41, N42, N43,
         N44, N45, N46, N47, N48, N49, N50, N51, N62, N63, N64, N65, N66, N67,
         N68, N69, N70, N71, N72, N73, N74, N76, n59, n60, n61, n620, n630,
         n650, n660, n670, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104,
         n105, n106, n107, n108, n109, sa_sum_1_1_8_, sa_sum_1_1_7_,
         sa_sum_0_3_9_, sa_sum_0_3_8_, sa_sum_0_3_7_, sa_sum_0_3_6_,
         sa_sum_0_3_5_, sa_sum_0_3_4_, sa_sum_0_3_3_, sa_sum_0_3_2_,
         sa_sum_0_3_1_, sa_sum_0_3_15_, sa_sum_0_3_14_, sa_sum_0_3_13_,
         sa_sum_0_3_12_, sa_sum_0_3_11_, sa_sum_0_3_10_, sa_sum_0_3_0_, N990,
         N980, N970, N960, N950, N940, N134, N133, N132, N131, N130, N129,
         N128, N121, N120, N119, N1090, N1080, N1070, N1060, N1050, N1040,
         N1030, N1020, N1010, N1000, add_77_carry_3_,
         add_1_root_add_0_root_add_130_carry_7_,
         add_1_root_add_0_root_add_130_carry_8_,
         add_1_root_add_0_root_add_130_carry_9_,
         add_1_root_add_0_root_add_130_carry_10_,
         add_1_root_add_0_root_add_130_carry_11_,
         add_1_root_add_0_root_add_130_carry_12_,
         add_1_root_add_0_root_add_130_carry_13_,
         add_1_root_add_0_root_add_130_SUM_5_,
         add_1_root_add_0_root_add_130_SUM_6_,
         add_1_root_add_0_root_add_130_SUM_7_,
         add_1_root_add_0_root_add_130_SUM_8_,
         add_1_root_add_0_root_add_130_SUM_9_,
         add_1_root_add_0_root_add_130_SUM_10_,
         add_1_root_add_0_root_add_130_SUM_11_,
         add_1_root_add_0_root_add_130_SUM_12_,
         add_1_root_add_0_root_add_130_SUM_13_,
         add_1_root_add_0_root_add_130_SUM_14_,
         add_1_root_add_0_root_add_130_SUM_15_,
         add_1_root_add_0_root_add_130_B_1_,
         add_1_root_add_0_root_add_130_B_2_,
         add_1_root_add_0_root_add_130_B_3_,
         add_1_root_add_0_root_add_130_B_4_,
         add_1_root_add_0_root_add_130_B_5_,
         add_1_root_add_0_root_add_130_B_6_,
         add_1_root_add_0_root_add_130_B_7_,
         add_1_root_add_0_root_add_130_B_8_,
         add_1_root_add_0_root_add_130_B_9_,
         add_1_root_add_0_root_add_130_B_10_,
         add_1_root_add_0_root_add_130_B_11_,
         add_1_root_add_0_root_add_130_A_5_,
         add_1_root_add_0_root_add_130_A_6_,
         add_1_root_add_0_root_add_130_A_7_,
         add_1_root_add_0_root_add_130_A_8_,
         add_1_root_add_0_root_add_130_A_9_,
         add_1_root_add_0_root_add_130_A_10_,
         add_1_root_add_0_root_add_130_A_11_,
         add_1_root_add_0_root_add_130_A_12_,
         add_1_root_add_0_root_add_130_A_13_,
         add_1_root_add_0_root_add_130_A_14_,
         add_2_root_add_0_root_add_130_carry_9_, n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n32, n33, n34, n35, n36,
         n370, n380, n390, n400, n420, n450, n460, n470, n490, n500, n510, n52,
         n53, n54, n55, n56, n57, n58, n680, n690, n700, n710, n760, n77, n78,
         n79, n80, n92, n110, n111, n112, n113;
  wire   [20:12] x_mantissa;
  wire   [20:12] y_mantissa;
  wire   [3:2] x_midpoint;
  wire   [3:2] y_midpoint;
  wire   [3:0] x_shared_residual;
  wire   [3:0] y_shared_residual;
  wire   [14:1] x_product;
  wire   [14:2] y_product;
  wire   [4:3] midpoint_sum;
  wire   [24:9] plane_value;
  wire   [9:3] sa_t1;
  wire   [11:3] sa_t3;
  wire   [13:6] sa_t5;
  wire   [15:7] sa_t7;
  wire   [16:0] sa_sum_2_0;
  wire   [22:7] normalized_fraction;
  wire   [2:0] exponent_adjust;
  wire   [24:11] add_0_root_add_0_root_add_80_3_carry;
  wire   [24:11] add_1_root_add_0_root_add_80_3_carry;
  wire   [10:5] add_4_root_add_0_root_add_130_carry;
  wire   [14:8] add_3_root_add_0_root_add_130_carry;
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

  fp32_normal_finite_wrapper fp_wrapper ( .x({x[31:12], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y({y[31:12], 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .divide_mode(divide_mode), .fraction_x({x_midpoint, x_mantissa, 
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11}), .fraction_y({
        y_midpoint, y_mantissa, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15, SYNOPSYS_UNCONNECTED__16, 
        SYNOPSYS_UNCONNECTED__17, SYNOPSYS_UNCONNECTED__18, 
        SYNOPSYS_UNCONNECTED__19, SYNOPSYS_UNCONNECTED__20, 
        SYNOPSYS_UNCONNECTED__21, SYNOPSYS_UNCONNECTED__22, 
        SYNOPSYS_UNCONNECTED__23}), .result_fraction({normalized_fraction, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .exponent_adjust({
        exponent_adjust[2], exponent_adjust[2], exponent_adjust[0]}), .result(
        {result[31:7], SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30}) );
  oadm_fixed_divmul_root_opt_binary_2_16_12_16_8_cb_88_61_49_DW01_add_6 add_0_root_add_0_root_add_130 ( 
        .A({n23, add_1_root_add_0_root_add_130_SUM_15_, 
        add_1_root_add_0_root_add_130_SUM_14_, 
        add_1_root_add_0_root_add_130_SUM_13_, 
        add_1_root_add_0_root_add_130_SUM_12_, 
        add_1_root_add_0_root_add_130_SUM_11_, 
        add_1_root_add_0_root_add_130_SUM_10_, 
        add_1_root_add_0_root_add_130_SUM_9_, 
        add_1_root_add_0_root_add_130_SUM_8_, 
        add_1_root_add_0_root_add_130_SUM_7_, 
        add_1_root_add_0_root_add_130_SUM_6_, 
        add_1_root_add_0_root_add_130_SUM_5_, 
        add_1_root_add_0_root_add_130_B_4_, add_1_root_add_0_root_add_130_B_3_, 
        add_1_root_add_0_root_add_130_B_2_, add_1_root_add_0_root_add_130_B_1_, 
        n2}), .B({n7, sa_sum_0_3_15_, sa_sum_0_3_14_, sa_sum_0_3_13_, 
        sa_sum_0_3_12_, sa_sum_0_3_11_, sa_sum_0_3_10_, sa_sum_0_3_9_, 
        sa_sum_0_3_8_, sa_sum_0_3_7_, sa_sum_0_3_6_, sa_sum_0_3_5_, 
        sa_sum_0_3_4_, sa_sum_0_3_3_, sa_sum_0_3_2_, sa_sum_0_3_1_, 
        sa_sum_0_3_0_}), .CI(n2), .SUM(sa_sum_2_0) );
  oadm_fixed_divmul_root_opt_binary_2_16_12_16_8_cb_88_61_49_DW_mult_tc_1 mult_61 ( 
        .a({x_residual_20_, x_mantissa[19:16], x_shared_residual}), .b({n2, n1, 
        y_midpoint, n1, n2}), .product({x_product, SYNOPSYS_UNCONNECTED__31})
         );
  oadm_fixed_divmul_root_opt_binary_2_16_12_16_8_cb_88_61_49_DW_mult_tc_0 mult_63 ( 
        .a({y_residual_20_, y_mantissa[19:16], y_shared_residual}), .b({n2, n1, 
        x_midpoint, n1, n2}), .product({y_product, N37, 
        SYNOPSYS_UNCONNECTED__32}) );
  oadm_fixed_divmul_root_opt_binary_2_16_12_16_8_cb_88_61_49_DW_mult_uns_0 mult_74 ( 
        .a({n1, x_midpoint, n1, n2}), .b({n1, y_midpoint, n1, n2}), .product({
        N134, N133, N132, N131, N130, N129, N128, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35}) );
  TIEH U3 ( .Z(n1) );
  TIEL U4 ( .ZN(n2) );
  AO22D0 U5 ( .A1(n460), .A2(y_product[14]), .B1(N51), .B2(divide_mode), .Z(
        N76) );
  AN2XD1 U6 ( .A1(add_1_root_add_0_root_add_130_B_5_), .A2(
        add_1_root_add_0_root_add_130_A_5_), .Z(n3) );
  AN2XD1 U7 ( .A1(sa_t3[3]), .A2(sa_t1[3]), .Z(n4) );
  AN2XD1 U8 ( .A1(sa_t7[7]), .A2(sa_sum_1_1_7_), .Z(n5) );
  AN2XD1 U9 ( .A1(n25), .A2(sa_t3[11]), .Z(n6) );
  AN2XD1 U10 ( .A1(n32), .A2(sa_t7[15]), .Z(n7) );
  AN2XD1 U11 ( .A1(sa_sum_0_3_0_), .A2(sa_t5[6]), .Z(n8) );
  AN2XD1 U12 ( .A1(x_product[1]), .A2(N119), .Z(n9) );
  AN2XD1 U13 ( .A1(N940), .A2(N37), .Z(n10) );
  ND2D1 U15 ( .A1(n86), .A2(n84), .ZN(exponent_adjust[2]) );
  INVD1 U16 ( .I(plane_value[24]), .ZN(n760) );
  INVD1 U17 ( .I(plane_value[23]), .ZN(n77) );
  AN2XD1 U18 ( .A1(add_1_root_add_0_root_add_130_carry_13_), .A2(
        add_1_root_add_0_root_add_130_A_13_), .Z(n12) );
  AN2XD1 U19 ( .A1(n15), .A2(n700), .Z(n13) );
  AN2XD1 U21 ( .A1(n12), .A2(add_1_root_add_0_root_add_130_A_14_), .Z(n14) );
  AN2XD1 U22 ( .A1(n16), .A2(n690), .Z(n15) );
  AN2XD1 U23 ( .A1(n17), .A2(n680), .Z(n16) );
  AN2XD1 U24 ( .A1(n18), .A2(n58), .Z(n17) );
  AN2XD1 U25 ( .A1(n19), .A2(n57), .Z(n18) );
  AN2XD1 U26 ( .A1(n20), .A2(n56), .Z(n19) );
  AN2XD1 U27 ( .A1(n21), .A2(n55), .Z(n20) );
  AN2XD1 U28 ( .A1(n22), .A2(n54), .Z(n21) );
  AN2XD1 U29 ( .A1(n24), .A2(n53), .Z(n22) );
  AN2XD1 U30 ( .A1(n14), .A2(n370), .Z(n23) );
  AN2XD1 U31 ( .A1(n36), .A2(n52), .Z(n24) );
  IND3D1 U33 ( .A1(n81), .B1(n82), .B2(n450), .ZN(n86) );
  XOR3D1 U34 ( .A1(N1090), .A2(N76), .A3(
        add_0_root_add_0_root_add_80_3_carry[24]), .Z(plane_value[24]) );
  XOR3D1 U35 ( .A1(N134), .A2(x_product[14]), .A3(
        add_1_root_add_0_root_add_80_3_carry[24]), .Z(N1090) );
  FA1D0 U36 ( .A(add_1_root_add_0_root_add_130_A_12_), .B(n6), .CI(
        add_1_root_add_0_root_add_130_carry_12_), .CO(
        add_1_root_add_0_root_add_130_carry_13_), .S(
        add_1_root_add_0_root_add_130_SUM_12_) );
  FA1D0 U37 ( .A(N1080), .B(N76), .CI(add_0_root_add_0_root_add_80_3_carry[23]), .CO(add_0_root_add_0_root_add_80_3_carry[24]), .S(plane_value[23]) );
  FA1D0 U38 ( .A(add_1_root_add_0_root_add_130_A_10_), .B(
        add_1_root_add_0_root_add_130_B_10_), .CI(
        add_1_root_add_0_root_add_130_carry_10_), .CO(
        add_1_root_add_0_root_add_130_carry_11_), .S(
        add_1_root_add_0_root_add_130_SUM_10_) );
  FA1D0 U39 ( .A(add_1_root_add_0_root_add_130_A_11_), .B(
        add_1_root_add_0_root_add_130_B_11_), .CI(
        add_1_root_add_0_root_add_130_carry_11_), .CO(
        add_1_root_add_0_root_add_130_carry_12_), .S(
        add_1_root_add_0_root_add_130_SUM_11_) );
  INVD1 U40 ( .I(y_product[13]), .ZN(n700) );
  INVD1 U41 ( .I(y_product[12]), .ZN(n690) );
  INVD1 U42 ( .I(plane_value[22]), .ZN(n78) );
  FA1D0 U43 ( .A(add_1_root_add_0_root_add_130_A_8_), .B(
        add_1_root_add_0_root_add_130_B_8_), .CI(
        add_1_root_add_0_root_add_130_carry_8_), .CO(
        add_1_root_add_0_root_add_130_carry_9_), .S(
        add_1_root_add_0_root_add_130_SUM_8_) );
  FA1D0 U44 ( .A(add_1_root_add_0_root_add_130_A_9_), .B(
        add_1_root_add_0_root_add_130_B_9_), .CI(
        add_1_root_add_0_root_add_130_carry_9_), .CO(
        add_1_root_add_0_root_add_130_carry_10_), .S(
        add_1_root_add_0_root_add_130_SUM_9_) );
  FA1D0 U45 ( .A(N133), .B(x_product[14]), .CI(
        add_1_root_add_0_root_add_80_3_carry[23]), .CO(
        add_1_root_add_0_root_add_80_3_carry[24]), .S(N1080) );
  FA1D0 U46 ( .A(N132), .B(x_product[14]), .CI(
        add_1_root_add_0_root_add_80_3_carry[22]), .CO(
        add_1_root_add_0_root_add_80_3_carry[23]), .S(N1070) );
  FA1D0 U47 ( .A(N131), .B(x_product[13]), .CI(
        add_1_root_add_0_root_add_80_3_carry[21]), .CO(
        add_1_root_add_0_root_add_80_3_carry[22]), .S(N1060) );
  AN2XD1 U48 ( .A1(add_4_root_add_0_root_add_130_carry[10]), .A2(sa_t3[10]), 
        .Z(n25) );
  ND3D1 U49 ( .A1(n82), .A2(n81), .A3(n450), .ZN(n84) );
  INVD1 U50 ( .I(plane_value[21]), .ZN(n79) );
  FA1D0 U51 ( .A(add_1_root_add_0_root_add_130_A_7_), .B(
        add_1_root_add_0_root_add_130_B_7_), .CI(
        add_1_root_add_0_root_add_130_carry_7_), .CO(
        add_1_root_add_0_root_add_130_carry_8_), .S(
        add_1_root_add_0_root_add_130_SUM_7_) );
  INVD1 U52 ( .I(y_product[11]), .ZN(n680) );
  FA1D0 U53 ( .A(N130), .B(x_product[12]), .CI(
        add_1_root_add_0_root_add_80_3_carry[20]), .CO(
        add_1_root_add_0_root_add_80_3_carry[21]), .S(N1050) );
  INVD1 U54 ( .I(plane_value[20]), .ZN(n80) );
  FA1D0 U55 ( .A(add_1_root_add_0_root_add_130_A_6_), .B(
        add_1_root_add_0_root_add_130_B_6_), .CI(n3), .CO(
        add_1_root_add_0_root_add_130_carry_7_), .S(
        add_1_root_add_0_root_add_130_SUM_6_) );
  INVD1 U56 ( .I(y_product[10]), .ZN(n58) );
  INVD1 U57 ( .I(plane_value[19]), .ZN(n92) );
  INVD1 U58 ( .I(y_product[9]), .ZN(n57) );
  INVD1 U59 ( .I(y_product[8]), .ZN(n56) );
  AN2XD1 U60 ( .A1(sa_t7[9]), .A2(add_2_root_add_0_root_add_130_carry_9_), .Z(
        n26) );
  INVD1 U61 ( .I(y_product[7]), .ZN(n55) );
  AN2XD1 U62 ( .A1(sa_t7[10]), .A2(n26), .Z(n27) );
  ND2D1 U63 ( .A1(n450), .A2(n86), .ZN(exponent_adjust[0]) );
  INVD1 U64 ( .I(y_product[6]), .ZN(n54) );
  AN2XD1 U65 ( .A1(sa_t7[11]), .A2(n27), .Z(n28) );
  INVD1 U66 ( .I(y_product[5]), .ZN(n53) );
  AN2XD1 U67 ( .A1(sa_t7[12]), .A2(n28), .Z(n29) );
  INVD1 U68 ( .I(y_product[4]), .ZN(n52) );
  AN2XD1 U69 ( .A1(sa_t7[13]), .A2(n29), .Z(n30) );
  INVD1 U71 ( .I(plane_value[18]), .ZN(n110) );
  AN2XD1 U73 ( .A1(sa_t7[14]), .A2(n30), .Z(n32) );
  AN2XD1 U74 ( .A1(n35), .A2(x_product[7]), .Z(n33) );
  AN2XD1 U75 ( .A1(add_1_root_add_0_root_add_80_3_carry[13]), .A2(x_product[5]), .Z(n34) );
  AN2XD1 U76 ( .A1(n34), .A2(x_product[6]), .Z(n35) );
  AN2XD1 U77 ( .A1(n380), .A2(n510), .Z(n36) );
  INVD1 U78 ( .I(plane_value[17]), .ZN(n111) );
  FA1D0 U79 ( .A(sa_t5[12]), .B(sa_sum_0_3_6_), .CI(
        add_3_root_add_0_root_add_130_carry[12]), .CO(
        add_3_root_add_0_root_add_130_carry[13]), .S(
        add_1_root_add_0_root_add_130_A_12_) );
  NR2D1 U80 ( .A1(n77), .A2(n59), .ZN(sa_t5[12]) );
  FA1D0 U81 ( .A(sa_t5[11]), .B(sa_sum_0_3_5_), .CI(
        add_3_root_add_0_root_add_130_carry[11]), .CO(
        add_3_root_add_0_root_add_130_carry[12]), .S(
        add_1_root_add_0_root_add_130_A_11_) );
  NR2D1 U82 ( .A1(n78), .A2(n59), .ZN(sa_t5[11]) );
  FA1D0 U83 ( .A(sa_t5[10]), .B(sa_sum_0_3_4_), .CI(
        add_3_root_add_0_root_add_130_carry[10]), .CO(
        add_3_root_add_0_root_add_130_carry[11]), .S(
        add_1_root_add_0_root_add_130_A_10_) );
  NR2D1 U84 ( .A1(n79), .A2(n59), .ZN(sa_t5[10]) );
  FA1D0 U85 ( .A(sa_t5[9]), .B(sa_sum_0_3_3_), .CI(
        add_3_root_add_0_root_add_130_carry[9]), .CO(
        add_3_root_add_0_root_add_130_carry[10]), .S(
        add_1_root_add_0_root_add_130_A_9_) );
  NR2D1 U86 ( .A1(n80), .A2(n59), .ZN(sa_t5[9]) );
  FA1D0 U87 ( .A(sa_t5[13]), .B(sa_sum_1_1_7_), .CI(
        add_3_root_add_0_root_add_130_carry[13]), .CO(
        add_3_root_add_0_root_add_130_carry[14]), .S(
        add_1_root_add_0_root_add_130_A_13_) );
  NR2D1 U88 ( .A1(n760), .A2(n59), .ZN(sa_t5[13]) );
  FA1D0 U89 ( .A(sa_t5[8]), .B(sa_sum_0_3_2_), .CI(
        add_3_root_add_0_root_add_130_carry[8]), .CO(
        add_3_root_add_0_root_add_130_carry[9]), .S(
        add_1_root_add_0_root_add_130_A_8_) );
  NR2D1 U90 ( .A1(n92), .A2(n59), .ZN(sa_t5[8]) );
  FA1D0 U91 ( .A(sa_t5[7]), .B(sa_sum_0_3_1_), .CI(n8), .CO(
        add_3_root_add_0_root_add_130_carry[8]), .S(
        add_1_root_add_0_root_add_130_A_7_) );
  NR2D1 U92 ( .A1(n110), .A2(n59), .ZN(sa_t5[7]) );
  INVD1 U93 ( .I(plane_value[16]), .ZN(n112) );
  NR2D1 U94 ( .A1(n111), .A2(n59), .ZN(sa_t5[6]) );
  AN2XD1 U95 ( .A1(add_3_root_add_0_root_add_130_carry[14]), .A2(sa_sum_1_1_8_), .Z(n370) );
  OAI221D0 U97 ( .A1(n106), .A2(n11), .B1(n450), .B2(n104), .C(n108), .ZN(
        normalized_fraction[11]) );
  OA22D0 U98 ( .A1(n84), .A2(n630), .B1(n86), .B2(n650), .Z(n108) );
  OAI221D0 U99 ( .A1(n104), .A2(n11), .B1(n450), .B2(n102), .C(n107), .ZN(
        normalized_fraction[12]) );
  OA22D0 U100 ( .A1(n84), .A2(n650), .B1(n86), .B2(n106), .Z(n107) );
  OAI221D0 U101 ( .A1(n102), .A2(n11), .B1(n450), .B2(n100), .C(n105), .ZN(
        normalized_fraction[13]) );
  OA22D0 U102 ( .A1(n84), .A2(n106), .B1(n86), .B2(n104), .Z(n105) );
  OAI221D0 U103 ( .A1(n100), .A2(n11), .B1(n450), .B2(n98), .C(n103), .ZN(
        normalized_fraction[14]) );
  OA22D0 U104 ( .A1(n84), .A2(n104), .B1(n86), .B2(n102), .Z(n103) );
  OAI221D0 U105 ( .A1(n98), .A2(n11), .B1(n450), .B2(n96), .C(n101), .ZN(
        normalized_fraction[15]) );
  OA22D0 U106 ( .A1(n84), .A2(n102), .B1(n86), .B2(n100), .Z(n101) );
  OAI221D0 U107 ( .A1(n96), .A2(n11), .B1(n450), .B2(n94), .C(n99), .ZN(
        normalized_fraction[16]) );
  OA22D0 U108 ( .A1(n84), .A2(n100), .B1(n86), .B2(n98), .Z(n99) );
  OAI221D0 U109 ( .A1(n94), .A2(n11), .B1(n450), .B2(n91), .C(n97), .ZN(
        normalized_fraction[17]) );
  OA22D0 U110 ( .A1(n84), .A2(n98), .B1(n86), .B2(n96), .Z(n97) );
  OAI221D0 U111 ( .A1(n81), .A2(n11), .B1(n450), .B2(n82), .C(n83), .ZN(
        normalized_fraction[22]) );
  OA22D0 U112 ( .A1(n84), .A2(n85), .B1(n86), .B2(n87), .Z(n83) );
  OAI221D0 U113 ( .A1(n87), .A2(n11), .B1(n450), .B2(n81), .C(n88), .ZN(
        normalized_fraction[21]) );
  OA22D0 U114 ( .A1(n84), .A2(n89), .B1(n86), .B2(n85), .Z(n88) );
  OAI221D0 U115 ( .A1(n91), .A2(n11), .B1(n450), .B2(n89), .C(n95), .ZN(
        normalized_fraction[18]) );
  OA22D0 U116 ( .A1(n84), .A2(n96), .B1(n86), .B2(n94), .Z(n95) );
  OAI221D0 U117 ( .A1(n89), .A2(n11), .B1(n450), .B2(n85), .C(n93), .ZN(
        normalized_fraction[19]) );
  OA22D0 U118 ( .A1(n84), .A2(n94), .B1(n86), .B2(n91), .Z(n93) );
  OAI221D0 U119 ( .A1(n85), .A2(n11), .B1(n450), .B2(n87), .C(n90), .ZN(
        normalized_fraction[20]) );
  OA22D0 U120 ( .A1(n84), .A2(n91), .B1(n86), .B2(n89), .Z(n90) );
  OAI221D0 U121 ( .A1(n650), .A2(n11), .B1(n450), .B2(n106), .C(n109), .ZN(
        normalized_fraction[10]) );
  NR2D1 U123 ( .A1(n112), .A2(n59), .ZN(add_1_root_add_0_root_add_130_A_5_) );
  OAI221D0 U125 ( .A1(n630), .A2(n11), .B1(n450), .B2(n650), .C(n660), .ZN(
        normalized_fraction[9]) );
  OAI22D1 U129 ( .A1(n670), .A2(n11), .B1(n450), .B2(n630), .ZN(
        normalized_fraction[8]) );
  NR2D1 U131 ( .A1(n450), .A2(n670), .ZN(normalized_fraction[7]) );
  ND2D1 U132 ( .A1(sa_sum_2_0[0]), .A2(divide_mode), .ZN(n670) );
  FA1D0 U133 ( .A(sa_t1[9]), .B(sa_t3[9]), .CI(
        add_4_root_add_0_root_add_130_carry[9]), .CO(
        add_4_root_add_0_root_add_130_carry[10]), .S(
        add_1_root_add_0_root_add_130_B_9_) );
  NR2D1 U134 ( .A1(n60), .A2(n78), .ZN(sa_t3[9]) );
  NR2D1 U135 ( .A1(n760), .A2(n61), .ZN(sa_t1[9]) );
  FA1D0 U136 ( .A(N1060), .B(N73), .CI(
        add_0_root_add_0_root_add_80_3_carry[21]), .CO(
        add_0_root_add_0_root_add_80_3_carry[22]), .S(plane_value[21]) );
  AO22D0 U137 ( .A1(y_product[13]), .A2(n460), .B1(N49), .B2(divide_mode), .Z(
        N73) );
  FA1D0 U138 ( .A(N1070), .B(N74), .CI(
        add_0_root_add_0_root_add_80_3_carry[22]), .CO(
        add_0_root_add_0_root_add_80_3_carry[23]), .S(plane_value[22]) );
  AO22D0 U139 ( .A1(n460), .A2(y_product[14]), .B1(N50), .B2(divide_mode), .Z(
        N74) );
  FA1D0 U142 ( .A(N1050), .B(N72), .CI(
        add_0_root_add_0_root_add_80_3_carry[20]), .CO(
        add_0_root_add_0_root_add_80_3_carry[21]), .S(plane_value[20]) );
  AO22D0 U143 ( .A1(y_product[12]), .A2(n460), .B1(N48), .B2(divide_mode), .Z(
        N72) );
  FA1D0 U144 ( .A(sa_t1[8]), .B(sa_t3[8]), .CI(
        add_4_root_add_0_root_add_130_carry[8]), .CO(
        add_4_root_add_0_root_add_130_carry[9]), .S(
        add_1_root_add_0_root_add_130_B_8_) );
  NR2D1 U145 ( .A1(n60), .A2(n79), .ZN(sa_t3[8]) );
  NR2D1 U146 ( .A1(n77), .A2(n61), .ZN(sa_t1[8]) );
  FA1D0 U147 ( .A(sa_t1[7]), .B(sa_t3[7]), .CI(
        add_4_root_add_0_root_add_130_carry[7]), .CO(
        add_4_root_add_0_root_add_130_carry[8]), .S(
        add_1_root_add_0_root_add_130_B_7_) );
  NR2D1 U148 ( .A1(n60), .A2(n80), .ZN(sa_t3[7]) );
  NR2D1 U149 ( .A1(n78), .A2(n61), .ZN(sa_t1[7]) );
  FA1D0 U150 ( .A(sa_t1[6]), .B(sa_t3[6]), .CI(
        add_4_root_add_0_root_add_130_carry[6]), .CO(
        add_4_root_add_0_root_add_130_carry[7]), .S(
        add_1_root_add_0_root_add_130_B_6_) );
  NR2D1 U151 ( .A1(n60), .A2(n92), .ZN(sa_t3[6]) );
  NR2D1 U152 ( .A1(n79), .A2(n61), .ZN(sa_t1[6]) );
  FA1D0 U153 ( .A(N1040), .B(N71), .CI(
        add_0_root_add_0_root_add_80_3_carry[19]), .CO(
        add_0_root_add_0_root_add_80_3_carry[20]), .S(plane_value[19]) );
  AO22D0 U154 ( .A1(y_product[11]), .A2(n460), .B1(N47), .B2(divide_mode), .Z(
        N71) );
  AOI22D1 U155 ( .A1(n460), .A2(plane_value[23]), .B1(sa_sum_2_0[15]), .B2(
        divide_mode), .ZN(n82) );
  FA1D0 U158 ( .A(sa_t1[5]), .B(sa_t3[5]), .CI(
        add_4_root_add_0_root_add_130_carry[5]), .CO(
        add_4_root_add_0_root_add_130_carry[6]), .S(
        add_1_root_add_0_root_add_130_B_5_) );
  NR2D1 U159 ( .A1(n60), .A2(n110), .ZN(sa_t3[5]) );
  NR2D1 U160 ( .A1(n80), .A2(n61), .ZN(sa_t1[5]) );
  FA1D0 U161 ( .A(N1030), .B(N70), .CI(
        add_0_root_add_0_root_add_80_3_carry[18]), .CO(
        add_0_root_add_0_root_add_80_3_carry[19]), .S(plane_value[18]) );
  AO22D0 U162 ( .A1(y_product[10]), .A2(n460), .B1(N46), .B2(divide_mode), .Z(
        N70) );
  FA1D0 U163 ( .A(N129), .B(x_product[11]), .CI(
        add_1_root_add_0_root_add_80_3_carry[19]), .CO(
        add_1_root_add_0_root_add_80_3_carry[20]), .S(N1040) );
  FA1D0 U164 ( .A(sa_t1[4]), .B(sa_t3[4]), .CI(n4), .CO(
        add_4_root_add_0_root_add_130_carry[5]), .S(
        add_1_root_add_0_root_add_130_B_4_) );
  NR2D1 U165 ( .A1(n60), .A2(n111), .ZN(sa_t3[4]) );
  NR2D1 U166 ( .A1(n92), .A2(n61), .ZN(sa_t1[4]) );
  INR2D1 U167 ( .A1(n620), .B1(n760), .ZN(sa_sum_1_1_8_) );
  FA1D0 U168 ( .A(sa_t7[8]), .B(sa_sum_1_1_8_), .CI(n5), .CO(
        add_2_root_add_0_root_add_130_carry_9_), .S(sa_sum_0_3_8_) );
  NR2D1 U169 ( .A1(y_midpoint[3]), .A2(n111), .ZN(sa_t7[8]) );
  FA1D0 U170 ( .A(N1020), .B(N69), .CI(
        add_0_root_add_0_root_add_80_3_carry[17]), .CO(
        add_0_root_add_0_root_add_80_3_carry[18]), .S(plane_value[17]) );
  AO22D0 U171 ( .A1(y_product[9]), .A2(n460), .B1(N45), .B2(divide_mode), .Z(
        N69) );
  FA1D0 U172 ( .A(N1010), .B(N68), .CI(
        add_0_root_add_0_root_add_80_3_carry[16]), .CO(
        add_0_root_add_0_root_add_80_3_carry[17]), .S(plane_value[16]) );
  AO22D0 U173 ( .A1(y_product[8]), .A2(n460), .B1(N44), .B2(divide_mode), .Z(
        N68) );
  FA1D0 U174 ( .A(N1000), .B(N67), .CI(
        add_0_root_add_0_root_add_80_3_carry[15]), .CO(
        add_0_root_add_0_root_add_80_3_carry[16]), .S(plane_value[15]) );
  AO22D0 U175 ( .A1(y_product[7]), .A2(n460), .B1(N43), .B2(divide_mode), .Z(
        N67) );
  AOI22D1 U176 ( .A1(n460), .A2(plane_value[22]), .B1(sa_sum_2_0[14]), .B2(
        divide_mode), .ZN(n81) );
  FA1D0 U177 ( .A(N990), .B(N66), .CI(add_0_root_add_0_root_add_80_3_carry[14]), .CO(add_0_root_add_0_root_add_80_3_carry[15]), .S(plane_value[14]) );
  AO22D0 U178 ( .A1(y_product[6]), .A2(n460), .B1(N42), .B2(divide_mode), .Z(
        N66) );
  FA1D0 U179 ( .A(N980), .B(N65), .CI(add_0_root_add_0_root_add_80_3_carry[13]), .CO(add_0_root_add_0_root_add_80_3_carry[14]), .S(plane_value[13]) );
  AO22D0 U180 ( .A1(y_product[5]), .A2(n460), .B1(N41), .B2(divide_mode), .Z(
        N65) );
  INR2D1 U181 ( .A1(n620), .B1(n77), .ZN(sa_sum_1_1_7_) );
  FA1D0 U182 ( .A(N970), .B(N64), .CI(add_0_root_add_0_root_add_80_3_carry[12]), .CO(add_0_root_add_0_root_add_80_3_carry[13]), .S(plane_value[12]) );
  AO22D0 U183 ( .A1(y_product[4]), .A2(n460), .B1(N40), .B2(divide_mode), .Z(
        N64) );
  NR2D1 U184 ( .A1(n110), .A2(n61), .ZN(sa_t1[3]) );
  FA1D0 U185 ( .A(n460), .B(x_product[4]), .CI(
        add_1_root_add_0_root_add_80_3_carry[12]), .CO(
        add_1_root_add_0_root_add_80_3_carry[13]), .S(N970) );
  NR2D1 U186 ( .A1(n60), .A2(n760), .ZN(sa_t3[11]) );
  FA1D0 U187 ( .A(N960), .B(N63), .CI(add_0_root_add_0_root_add_80_3_carry[11]), .CO(add_0_root_add_0_root_add_80_3_carry[12]), .S(plane_value[11]) );
  AO22D0 U188 ( .A1(y_product[3]), .A2(n460), .B1(N39), .B2(divide_mode), .Z(
        N63) );
  INVD1 U189 ( .I(y_product[3]), .ZN(n510) );
  NR2D1 U190 ( .A1(n60), .A2(n77), .ZN(sa_t3[10]) );
  FA1D0 U191 ( .A(N121), .B(x_product[3]), .CI(
        add_1_root_add_0_root_add_80_3_carry[11]), .CO(
        add_1_root_add_0_root_add_80_3_carry[12]), .S(N960) );
  INR2D1 U192 ( .A1(midpoint_sum[4]), .B1(divide_mode), .ZN(N121) );
  INR2D1 U193 ( .A1(n620), .B1(n79), .ZN(sa_sum_0_3_5_) );
  INR2D1 U194 ( .A1(n620), .B1(n78), .ZN(sa_sum_0_3_6_) );
  INR2D1 U195 ( .A1(n620), .B1(n80), .ZN(sa_sum_0_3_4_) );
  INR2D1 U196 ( .A1(n620), .B1(n92), .ZN(sa_sum_0_3_3_) );
  INR2D1 U197 ( .A1(n620), .B1(n110), .ZN(sa_sum_0_3_2_) );
  NR2D1 U198 ( .A1(n111), .A2(n61), .ZN(add_1_root_add_0_root_add_130_B_2_) );
  NR2D1 U199 ( .A1(n60), .A2(n112), .ZN(sa_t3[3]) );
  FA1D0 U200 ( .A(N950), .B(N62), .CI(n10), .CO(
        add_0_root_add_0_root_add_80_3_carry[11]), .S(plane_value[10]) );
  AO22D0 U201 ( .A1(y_product[2]), .A2(n460), .B1(N38), .B2(divide_mode), .Z(
        N62) );
  INR2D1 U203 ( .A1(n620), .B1(n111), .ZN(sa_sum_0_3_1_) );
  FA1D0 U204 ( .A(N120), .B(x_product[2]), .CI(n9), .CO(
        add_1_root_add_0_root_add_80_3_carry[11]), .S(N950) );
  INR2D1 U205 ( .A1(midpoint_sum[3]), .B1(divide_mode), .ZN(N120) );
  INR2D1 U206 ( .A1(n620), .B1(n112), .ZN(sa_sum_0_3_0_) );
  NR2D1 U207 ( .A1(n112), .A2(n61), .ZN(add_1_root_add_0_root_add_130_B_1_) );
  NR2D1 U208 ( .A1(y_midpoint[3]), .A2(n760), .ZN(sa_t7[15]) );
  NR2D1 U209 ( .A1(y_midpoint[3]), .A2(n77), .ZN(sa_t7[14]) );
  NR2D1 U210 ( .A1(y_midpoint[3]), .A2(n78), .ZN(sa_t7[13]) );
  NR2D1 U211 ( .A1(y_midpoint[3]), .A2(n79), .ZN(sa_t7[12]) );
  NR2D1 U212 ( .A1(y_midpoint[3]), .A2(n80), .ZN(sa_t7[11]) );
  NR2D1 U213 ( .A1(y_midpoint[3]), .A2(n92), .ZN(sa_t7[10]) );
  NR2D1 U215 ( .A1(y_midpoint[3]), .A2(n110), .ZN(sa_t7[9]) );
  NR2D1 U216 ( .A1(y_midpoint[3]), .A2(n112), .ZN(sa_t7[7]) );
  AOI22D1 U217 ( .A1(n460), .A2(plane_value[21]), .B1(sa_sum_2_0[13]), .B2(
        divide_mode), .ZN(n87) );
  AOI22D1 U218 ( .A1(n460), .A2(plane_value[20]), .B1(sa_sum_2_0[12]), .B2(
        divide_mode), .ZN(n85) );
  AOI22D1 U219 ( .A1(n460), .A2(plane_value[19]), .B1(sa_sum_2_0[11]), .B2(
        divide_mode), .ZN(n89) );
  AOI22D1 U220 ( .A1(n460), .A2(plane_value[18]), .B1(sa_sum_2_0[10]), .B2(
        divide_mode), .ZN(n91) );
  AOI22D1 U221 ( .A1(n460), .A2(plane_value[17]), .B1(sa_sum_2_0[9]), .B2(
        divide_mode), .ZN(n94) );
  AOI22D1 U222 ( .A1(n460), .A2(plane_value[16]), .B1(sa_sum_2_0[8]), .B2(
        divide_mode), .ZN(n96) );
  AOI22D1 U223 ( .A1(sa_sum_2_0[7]), .A2(divide_mode), .B1(plane_value[15]), 
        .B2(n460), .ZN(n98) );
  AOI22D1 U224 ( .A1(sa_sum_2_0[6]), .A2(divide_mode), .B1(plane_value[14]), 
        .B2(n460), .ZN(n100) );
  AOI22D1 U225 ( .A1(sa_sum_2_0[5]), .A2(divide_mode), .B1(plane_value[13]), 
        .B2(n460), .ZN(n102) );
  AOI22D1 U226 ( .A1(sa_sum_2_0[4]), .A2(divide_mode), .B1(plane_value[12]), 
        .B2(n460), .ZN(n104) );
  AOI22D1 U227 ( .A1(sa_sum_2_0[3]), .A2(divide_mode), .B1(plane_value[11]), 
        .B2(n460), .ZN(n106) );
  ND2D1 U228 ( .A1(y_midpoint[3]), .A2(n400), .ZN(n59) );
  AOI22D1 U229 ( .A1(sa_sum_2_0[2]), .A2(divide_mode), .B1(plane_value[10]), 
        .B2(n460), .ZN(n650) );
  AOI22D1 U230 ( .A1(sa_sum_2_0[1]), .A2(divide_mode), .B1(plane_value[9]), 
        .B2(n460), .ZN(n630) );
  FA1D0 U231 ( .A(N128), .B(x_product[10]), .CI(
        add_1_root_add_0_root_add_80_3_carry[18]), .CO(
        add_1_root_add_0_root_add_80_3_carry[19]), .S(N1030) );
  FA1D0 U234 ( .A(x_midpoint[3]), .B(y_midpoint[3]), .CI(add_77_carry_3_), 
        .CO(midpoint_sum[4]), .S(midpoint_sum[3]) );
  NR2D1 U238 ( .A1(n390), .A2(divide_mode), .ZN(N119) );
  CKXOR2D1 U239 ( .A1(y_midpoint[2]), .A2(x_midpoint[2]), .Z(n390) );
  INR2D1 U240 ( .A1(n61), .B1(y_midpoint[2]), .ZN(n60) );
  ND2D1 U241 ( .A1(n400), .A2(n470), .ZN(n61) );
  ND2D1 U242 ( .A1(n61), .A2(n470), .ZN(n620) );
  INVD1 U244 ( .I(y_midpoint[3]), .ZN(n470) );
  INR2D1 U245 ( .A1(y_mantissa[13]), .B1(divide_mode), .ZN(
        y_shared_residual[1]) );
  INR2D1 U247 ( .A1(y_mantissa[12]), .B1(divide_mode), .ZN(
        y_shared_residual[0]) );
  INR2D1 U248 ( .A1(x_mantissa[13]), .B1(divide_mode), .ZN(
        x_shared_residual[1]) );
  INR2D1 U249 ( .A1(x_mantissa[12]), .B1(divide_mode), .ZN(
        x_shared_residual[0]) );
  INR2D1 U250 ( .A1(y_mantissa[14]), .B1(divide_mode), .ZN(
        y_shared_residual[2]) );
  INR2D1 U251 ( .A1(x_mantissa[14]), .B1(divide_mode), .ZN(
        x_shared_residual[2]) );
  INR2D1 U252 ( .A1(y_mantissa[15]), .B1(divide_mode), .ZN(
        y_shared_residual[3]) );
  INR2D1 U253 ( .A1(x_mantissa[15]), .B1(divide_mode), .ZN(
        x_shared_residual[3]) );
  INVD1 U254 ( .I(y_mantissa[20]), .ZN(y_residual_20_) );
  INVD1 U255 ( .I(x_mantissa[20]), .ZN(x_residual_20_) );
  CKXOR2D1 U257 ( .A1(n490), .A2(n500), .Z(N38) );
  CKXOR2D1 U258 ( .A1(n380), .A2(n510), .Z(N39) );
  CKXOR2D1 U259 ( .A1(n36), .A2(n52), .Z(N40) );
  CKXOR2D1 U260 ( .A1(n24), .A2(n53), .Z(N41) );
  CKXOR2D1 U261 ( .A1(n22), .A2(n54), .Z(N42) );
  CKXOR2D1 U262 ( .A1(n21), .A2(n55), .Z(N43) );
  CKXOR2D1 U263 ( .A1(n20), .A2(n56), .Z(N44) );
  CKXOR2D1 U264 ( .A1(n19), .A2(n57), .Z(N45) );
  CKXOR2D1 U265 ( .A1(n18), .A2(n58), .Z(N46) );
  CKXOR2D1 U266 ( .A1(n17), .A2(n680), .Z(N47) );
  CKXOR2D1 U267 ( .A1(n16), .A2(n690), .Z(N48) );
  CKXOR2D1 U268 ( .A1(n15), .A2(n700), .Z(N49) );
  CKXOR2D1 U269 ( .A1(n13), .A2(n710), .Z(N50) );
  CKXOR2D1 U270 ( .A1(N37), .A2(N940), .Z(plane_value[9]) );
  CKXOR2D1 U271 ( .A1(x_product[1]), .A2(N119), .Z(N940) );
  CKXOR2D1 U272 ( .A1(add_1_root_add_0_root_add_80_3_carry[13]), .A2(
        x_product[5]), .Z(N980) );
  CKXOR2D1 U273 ( .A1(n35), .A2(x_product[7]), .Z(N1000) );
  CKXOR2D1 U274 ( .A1(n33), .A2(x_product[8]), .Z(N1010) );
  CKXOR2D1 U275 ( .A1(n34), .A2(x_product[6]), .Z(N990) );
  CKXOR2D1 U276 ( .A1(add_1_root_add_0_root_add_130_B_5_), .A2(
        add_1_root_add_0_root_add_130_A_5_), .Z(
        add_1_root_add_0_root_add_130_SUM_5_) );
  CKXOR2D1 U277 ( .A1(n14), .A2(n370), .Z(
        add_1_root_add_0_root_add_130_SUM_15_) );
  CKXOR2D1 U278 ( .A1(add_1_root_add_0_root_add_130_carry_13_), .A2(
        add_1_root_add_0_root_add_130_A_13_), .Z(
        add_1_root_add_0_root_add_130_SUM_13_) );
  CKXOR2D1 U279 ( .A1(n12), .A2(add_1_root_add_0_root_add_130_A_14_), .Z(
        add_1_root_add_0_root_add_130_SUM_14_) );
  CKXOR2D1 U280 ( .A1(sa_t3[3]), .A2(sa_t1[3]), .Z(
        add_1_root_add_0_root_add_130_B_3_) );
  CKXOR2D1 U281 ( .A1(add_4_root_add_0_root_add_130_carry[10]), .A2(sa_t3[10]), 
        .Z(add_1_root_add_0_root_add_130_B_10_) );
  CKXOR2D1 U282 ( .A1(n25), .A2(sa_t3[11]), .Z(
        add_1_root_add_0_root_add_130_B_11_) );
  CKXOR2D1 U283 ( .A1(sa_sum_1_1_7_), .A2(sa_t7[7]), .Z(sa_sum_0_3_7_) );
  CKXOR2D1 U284 ( .A1(add_2_root_add_0_root_add_130_carry_9_), .A2(sa_t7[9]), 
        .Z(sa_sum_0_3_9_) );
  CKXOR2D1 U285 ( .A1(n26), .A2(sa_t7[10]), .Z(sa_sum_0_3_10_) );
  CKXOR2D1 U286 ( .A1(n27), .A2(sa_t7[11]), .Z(sa_sum_0_3_11_) );
  CKXOR2D1 U287 ( .A1(n28), .A2(sa_t7[12]), .Z(sa_sum_0_3_12_) );
  CKXOR2D1 U288 ( .A1(n29), .A2(sa_t7[13]), .Z(sa_sum_0_3_13_) );
  CKXOR2D1 U289 ( .A1(n30), .A2(sa_t7[14]), .Z(sa_sum_0_3_14_) );
  CKXOR2D1 U290 ( .A1(n32), .A2(sa_t7[15]), .Z(sa_sum_0_3_15_) );
  CKXOR2D1 U291 ( .A1(sa_sum_0_3_0_), .A2(sa_t5[6]), .Z(
        add_1_root_add_0_root_add_130_A_6_) );
  CKXOR2D1 U292 ( .A1(add_3_root_add_0_root_add_130_carry[14]), .A2(
        sa_sum_1_1_8_), .Z(add_1_root_add_0_root_add_130_A_14_) );
  OR2D1 U14 ( .A1(n86), .A2(n670), .Z(n660) );
  CKND0 U20 ( .I(n82), .ZN(n113) );
  CKND2D0 U32 ( .A1(n450), .A2(n113), .ZN(n11) );
  OA22D1 U70 ( .A1(n84), .A2(n670), .B1(n86), .B2(n630), .Z(n109) );
  AOI22D1 U72 ( .A1(plane_value[24]), .A2(n460), .B1(divide_mode), .B2(
        sa_sum_2_0[16]), .ZN(n450) );
  CKND0 U96 ( .I(y_product[14]), .ZN(n710) );
  NR2D0 U122 ( .A1(y_product[14]), .A2(n13), .ZN(N51) );
  IND2D0 U124 ( .A1(x_product[9]), .B1(n420), .ZN(
        add_1_root_add_0_root_add_80_3_carry[18]) );
  CKND2D0 U126 ( .A1(x_product[8]), .A2(n33), .ZN(n420) );
  CKXOR2D0 U127 ( .A1(x_product[9]), .A2(n420), .Z(N1020) );
  INVD1 U128 ( .I(divide_mode), .ZN(n460) );
  CKND0 U130 ( .I(N37), .ZN(n490) );
  CKND0 U140 ( .I(y_product[2]), .ZN(n500) );
  NR2D0 U141 ( .A1(N37), .A2(y_product[2]), .ZN(n380) );
  IND2D0 U156 ( .A1(x_midpoint[2]), .B1(n400), .ZN(add_77_carry_3_) );
  CKND0 U157 ( .I(y_midpoint[2]), .ZN(n400) );
endmodule


module oadm_fixed_l2_divmul_root_opt_binary ( x, y, divide_mode, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  input divide_mode;
  wire   n3;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6;
  assign result[0] = 1'b0;
  assign result[1] = 1'b0;
  assign result[2] = 1'b0;
  assign result[3] = 1'b0;
  assign result[4] = 1'b0;
  assign result[5] = 1'b0;
  assign result[6] = 1'b0;

  oadm_fixed_divmul_root_opt_binary_2_16_12_16_8_cb_88_61_49 implementation ( 
        .x({x[31:12], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0}), .y({y[31:12], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .divide_mode(n3), .result({
        result[31:7], SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6}) );
  CKBD1 U3 ( .I(divide_mode), .Z(n3) );
endmodule

