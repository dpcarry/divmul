/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Sun Sep  6 00:20:05 2026
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
         N12, N11, N10, n1, n2, n35, n410, n51, n60, n70, n76, n77, n78, n80;
  wire   [7:2] add_0_root_add_0_root_add_22_2_carry;
  wire   [7:2] add_0_root_add_0_root_add_25_2_carry;

  CKXOR2D1 U2 ( .A1(y[31]), .A2(x[31]), .Z(result[31]) );
  fp32_normal_finite_wrapper_DW01_add_3_DW01_add_16 add_1_root_add_0_root_add_25_2 ( 
        .A(x[30:23]), .B({N42, N41, N40, N39, N38, N37, N36, N11}), .CI(n80), 
        .SUM({N34, N33, N32, N31, N30, N29, N28, N27}) );
  fp32_normal_finite_wrapper_DW01_add_1_DW01_add_14 add_1_root_add_0_root_add_22_2 ( 
        .A(x[30:23]), .B({y[30], N17, N16, N15, N14, N13, N12, N11}), .CI(n80), 
        .SUM({N10, N9, N8, N7, N6, N5, N4, N3}) );
  AN2XD1 U3 ( .A1(exponent_adjust[0]), .A2(N3), .Z(n1) );
  AN2XD1 U4 ( .A1(exponent_adjust[0]), .A2(N27), .Z(n2) );
  INVD1 U25 ( .I(n77), .ZN(n78) );
  CKBD1 U26 ( .I(result_fraction[8]), .Z(result[8]) );
  CKBD1 U27 ( .I(result_fraction[7]), .Z(result[7]) );
  CKBD1 U28 ( .I(result_fraction[15]), .Z(result[15]) );
  CKBD1 U29 ( .I(result_fraction[16]), .Z(result[16]) );
  CKBD1 U30 ( .I(result_fraction[17]), .Z(result[17]) );
  CKBD1 U31 ( .I(result_fraction[18]), .Z(result[18]) );
  CKBD1 U32 ( .I(result_fraction[19]), .Z(result[19]) );
  CKBD1 U33 ( .I(result_fraction[11]), .Z(result[11]) );
  CKBD1 U34 ( .I(result_fraction[12]), .Z(result[12]) );
  CKBD1 U35 ( .I(result_fraction[13]), .Z(result[13]) );
  CKBD1 U36 ( .I(result_fraction[14]), .Z(result[14]) );
  CKBD1 U37 ( .I(result_fraction[20]), .Z(result[20]) );
  CKBD1 U38 ( .I(result_fraction[10]), .Z(result[10]) );
  CKBD1 U39 ( .I(result_fraction[6]), .Z(result[6]) );
  CKBD1 U40 ( .I(result_fraction[5]), .Z(result[5]) );
  CKBD1 U41 ( .I(divide_mode), .Z(n77) );
  AO22D0 U42 ( .A1(N49), .A2(n78), .B1(N25), .B2(n77), .Z(result[29]) );
  AO22D0 U43 ( .A1(N48), .A2(n78), .B1(N24), .B2(n77), .Z(result[28]) );
  AO22D0 U44 ( .A1(N47), .A2(n78), .B1(N23), .B2(n77), .Z(result[27]) );
  AO22D0 U45 ( .A1(N46), .A2(n78), .B1(N22), .B2(n77), .Z(result[26]) );
  AO22D0 U46 ( .A1(N45), .A2(n78), .B1(N21), .B2(n77), .Z(result[25]) );
  AO22D0 U47 ( .A1(N44), .A2(n78), .B1(N20), .B2(n77), .Z(result[24]) );
  CKBD1 U48 ( .I(result_fraction[9]), .Z(result[9]) );
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
  AO22D0 U61 ( .A1(N43), .A2(n78), .B1(N19), .B2(n77), .Z(result[23]) );
  AO22D0 U62 ( .A1(N50), .A2(n78), .B1(n77), .B2(N26), .Z(result[30]) );
  XOR3D1 U63 ( .A1(N34), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_25_2_carry[7]), .Z(N50) );
  XOR3D1 U64 ( .A1(N10), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_22_2_carry[7]), .Z(N26) );
  CKBD1 U65 ( .I(x[22]), .Z(fraction_x[22]) );
  CKBD1 U66 ( .I(y[22]), .Z(fraction_y[22]) );
  CKBD1 U67 ( .I(x[20]), .Z(fraction_x[20]) );
  CKBD1 U68 ( .I(y[20]), .Z(fraction_y[20]) );
  CKBD1 U69 ( .I(y[21]), .Z(fraction_y[21]) );
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
  CKXOR2D1 U81 ( .A1(y[30]), .A2(n76), .Z(N42) );
  ND2D1 U82 ( .A1(n70), .A2(y[29]), .ZN(n76) );
  CKBD1 U88 ( .I(x[21]), .Z(fraction_x[21]) );
  CKBD1 U89 ( .I(x[19]), .Z(fraction_x[19]) );
  CKBD1 U90 ( .I(x[18]), .Z(fraction_x[18]) );
  CKBD1 U91 ( .I(x[17]), .Z(fraction_x[17]) );
  CKBD1 U92 ( .I(x[16]), .Z(fraction_x[16]) );
  CKBD1 U93 ( .I(x[15]), .Z(fraction_x[15]) );
  CKBD1 U94 ( .I(x[14]), .Z(fraction_x[14]) );
  CKBD1 U95 ( .I(x[13]), .Z(fraction_x[13]) );
  CKBD1 U96 ( .I(x[12]), .Z(fraction_x[12]) );
  CKBD1 U97 ( .I(x[11]), .Z(fraction_x[11]) );
  CKBD1 U98 ( .I(x[10]), .Z(fraction_x[10]) );
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
  CKBD1 U110 ( .I(result_fraction[21]), .Z(result[21]) );
  TIEL U111 ( .ZN(n80) );
  CKXOR2D1 U112 ( .A1(exponent_adjust[0]), .A2(N3), .Z(N19) );
  CKXOR2D1 U113 ( .A1(exponent_adjust[0]), .A2(N27), .Z(N43) );
  CKXOR2D1 U114 ( .A1(y[23]), .A2(y[24]), .Z(N36) );
  CKXOR2D1 U115 ( .A1(n35), .A2(y[25]), .Z(N37) );
  CKXOR2D1 U116 ( .A1(n410), .A2(y[26]), .Z(N38) );
  CKXOR2D1 U117 ( .A1(n51), .A2(y[27]), .Z(N39) );
  CKXOR2D1 U118 ( .A1(n60), .A2(y[28]), .Z(N40) );
  CKXOR2D1 U119 ( .A1(n70), .A2(y[29]), .Z(N41) );
  CKND0 U120 ( .I(y[23]), .ZN(N11) );
endmodule



    module oadm_fixed_divmul_root_opt_binary_3_16_10_16_8_e3_b6_95_7c_69_5a_4e_44_DW01_add_6 ( 
        A, B, CI, SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [16:4] carry;

  FA1D0 U1_3 ( .A(A[3]), .B(B[3]), .CI(n1), .CO(carry[4]), .S(SUM[3]) );
  FA1D0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1D0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1D0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA1D0 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  FA1D0 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  FA1D0 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  FA1D0 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FA1D0 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA1D0 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FA1D0 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  FA1D0 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  FA1D0 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  AN2XD1 U1 ( .A1(B[2]), .A2(A[2]), .Z(n1) );
  CKBD1 U2 ( .I(B[1]), .Z(SUM[1]) );
  CKBD1 U3 ( .I(B[0]), .Z(SUM[0]) );
  CKXOR2D1 U4 ( .A1(B[16]), .A2(carry[16]), .Z(SUM[16]) );
  CKXOR2D1 U5 ( .A1(B[2]), .A2(A[2]), .Z(SUM[2]) );
endmodule



    module oadm_fixed_divmul_root_opt_binary_3_16_10_16_8_e3_b6_95_7c_69_5a_4e_44_DW_mult_tc_1 ( 
        a, b, product );
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
  INVD1 U124 ( .I(b[3]), .ZN(n168) );
  INVD1 U125 ( .I(n63), .ZN(n171) );
  INVD1 U126 ( .I(n21), .ZN(n169) );
  XNR2D1 U127 ( .A1(b[1]), .A2(n178), .ZN(n165) );
  INVD1 U128 ( .I(a[0]), .ZN(n181) );
  XNR2D1 U131 ( .A1(b[1]), .A2(n179), .ZN(n166) );
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
  OAI211D0 U129 ( .A1(b[2]), .A2(b[3]), .B(n195), .C(n182), .ZN(n184) );
  XNR2D0 U130 ( .A1(b[2]), .A2(b[1]), .ZN(n182) );
  CKND2D0 U176 ( .A1(b[2]), .A2(b[3]), .ZN(n195) );
endmodule



    module oadm_fixed_divmul_root_opt_binary_3_16_10_16_8_e3_b6_95_7c_69_5a_4e_44_DW_mult_tc_0 ( 
        a, b, product );
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
  XNR2D1 U126 ( .A1(b[1]), .A2(n178), .ZN(n165) );
  INVD1 U127 ( .I(a[0]), .ZN(n181) );
  INVD1 U129 ( .I(b[3]), .ZN(n168) );
  XNR2D1 U131 ( .A1(b[1]), .A2(n179), .ZN(n166) );
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
  OAI211D0 U128 ( .A1(b[2]), .A2(b[3]), .B(n195), .C(n182), .ZN(n184) );
  XNR2D0 U130 ( .A1(b[2]), .A2(b[1]), .ZN(n182) );
  CKND2D0 U176 ( .A1(b[2]), .A2(b[3]), .ZN(n195) );
endmodule



    module oadm_fixed_divmul_root_opt_binary_3_16_10_16_8_e3_b6_95_7c_69_5a_4e_44_DW_mult_uns_0 ( 
        a, b, product );
  input [4:0] a;
  input [4:0] b;
  output [9:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n20, n21, n22, n24, n25, n26, n27, n28, n29, n36, n37, n41,
         n42, n43, n46, n47, n48, n88, n89, n90, n91, n95, n96, n97, n98, n99,
         n102, n103, n104, n105, n106, n107, n108;

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
  XNR3D1 U58 ( .A1(n42), .A2(n46), .A3(n102), .ZN(n21) );
  INVD1 U59 ( .I(n22), .ZN(n95) );
  ND2D1 U60 ( .A1(n46), .A2(n26), .ZN(n105) );
  IND2D1 U61 ( .A1(n46), .B1(n26), .ZN(n104) );
  NR2D1 U63 ( .A1(n46), .A2(n22), .ZN(n106) );
  AN2XD1 U64 ( .A1(n46), .A2(n95), .Z(n88) );
  INVD1 U68 ( .I(b[3]), .ZN(n90) );
  INVD1 U69 ( .I(b[1]), .ZN(n99) );
  INVD1 U70 ( .I(a[1]), .ZN(n97) );
  INVD1 U71 ( .I(a[3]), .ZN(n91) );
  INVD1 U72 ( .I(a[2]), .ZN(n96) );
  OR2D1 U73 ( .A1(n46), .A2(n42), .Z(n89) );
  INVD1 U74 ( .I(b[2]), .ZN(n98) );
  XNR2D1 U75 ( .A1(n2), .A2(n9), .ZN(product[8]) );
  MUX2ND0 U76 ( .I0(n104), .I1(n105), .S(n42), .ZN(n103) );
  CKXOR2D1 U77 ( .A1(n26), .A2(n95), .Z(n102) );
  NR2D0 U79 ( .A1(n99), .A2(n97), .ZN(n48) );
  NR2D0 U80 ( .A1(n98), .A2(n97), .ZN(n47) );
  NR2D0 U81 ( .A1(n90), .A2(n97), .ZN(n46) );
  NR2D0 U82 ( .A1(n99), .A2(n96), .ZN(n43) );
  NR2D0 U83 ( .A1(n98), .A2(n96), .ZN(n42) );
  NR2D0 U84 ( .A1(n90), .A2(n96), .ZN(n41) );
  NR2D0 U85 ( .A1(n99), .A2(n91), .ZN(n22) );
  NR2D0 U86 ( .A1(n98), .A2(n91), .ZN(n37) );
  NR2D0 U87 ( .A1(n90), .A2(n91), .ZN(n36) );
  OR2D0 U56 ( .A1(n9), .A2(n2), .Z(product[9]) );
  AO211D0 U57 ( .A1(n108), .A2(n26), .B(n103), .C(n107), .Z(n20) );
  MUX2D0 U62 ( .I0(n106), .I1(n88), .S(n42), .Z(n107) );
  CKND0 U65 ( .I(n22), .ZN(n108) );
endmodule



    module oadm_fixed_divmul_root_opt_binary_3_16_10_16_8_e3_b6_95_7c_69_5a_4e_44 ( 
        x, y, divide_mode, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  input divide_mode;
  wire   x_residual_19_, y_residual_19_, N39, N40, N41, N42, N43, N44, N45,
         N46, N47, N48, N49, N50, N51, N52, N53, N54, N55, N63, N64, N65, N66,
         N67, N68, N69, N70, N71, N72, N73, N74, N75, N76, N77, N80, n59, n60,
         n61, n62, n630, n640, n650, n660, n670, n680, n690, n700, n710, n720,
         n730, n740, n750, n760, n770, n78, n79, n800, n81, n82, n83, n84, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, sa_sum_1_1_9_, sa_sum_1_1_8_, sa_sum_1_1_7_,
         sa_sum_1_1_6_, sa_sum_1_1_5_, sa_sum_1_1_4_, sa_sum_1_1_11_,
         sa_sum_1_1_10_, sa_sum_0_3_9_, sa_sum_0_3_8_, sa_sum_0_3_7_,
         sa_sum_0_3_6_, sa_sum_0_3_5_, sa_sum_0_3_4_, sa_sum_0_3_3_,
         sa_sum_0_3_2_, sa_sum_0_3_14_, sa_sum_0_3_13_, sa_sum_0_3_12_,
         sa_sum_0_3_11_, sa_sum_0_3_10_, N990, N980, N970, N960, N950, N138,
         N137, N136, N135, N134, N133, N132, N131, N130, N1230, N1220, N1210,
         N1200, N1130, N1120, N1110, N1100, N1090, N1080, N1070, N106, N1050,
         N1040, N1030, N1020, N1010, N1000, add_77_carry_2_, add_77_carry_3_,
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
         add_1_root_add_0_root_add_130_SUM_16_,
         add_1_root_add_0_root_add_130_B_6_,
         add_1_root_add_0_root_add_130_B_7_,
         add_1_root_add_0_root_add_130_B_8_,
         add_1_root_add_0_root_add_130_B_9_,
         add_1_root_add_0_root_add_130_B_10_,
         add_1_root_add_0_root_add_130_B_11_,
         add_1_root_add_0_root_add_130_B_12_,
         add_1_root_add_0_root_add_130_B_13_,
         add_1_root_add_0_root_add_130_B_14_,
         add_1_root_add_0_root_add_130_B_15_,
         add_1_root_add_0_root_add_130_A_0_,
         add_1_root_add_0_root_add_130_A_1_,
         add_1_root_add_0_root_add_130_A_2_,
         add_1_root_add_0_root_add_130_A_3_,
         add_1_root_add_0_root_add_130_A_4_,
         add_1_root_add_0_root_add_130_A_5_,
         add_1_root_add_0_root_add_130_A_6_,
         add_1_root_add_0_root_add_130_A_7_,
         add_1_root_add_0_root_add_130_A_8_,
         add_1_root_add_0_root_add_130_A_9_,
         add_2_root_add_0_root_add_130_carry_6_,
         add_2_root_add_0_root_add_130_carry_7_,
         add_2_root_add_0_root_add_130_carry_8_,
         add_2_root_add_0_root_add_130_carry_9_,
         add_2_root_add_0_root_add_130_carry_10_,
         add_2_root_add_0_root_add_130_carry_11_,
         add_2_root_add_0_root_add_130_carry_12_,
         add_2_root_add_0_root_add_130_carry_13_,
         add_2_root_add_0_root_add_130_A_4_,
         add_2_root_add_0_root_add_130_A_5_,
         add_2_root_add_0_root_add_130_A_6_,
         add_2_root_add_0_root_add_130_A_7_,
         add_2_root_add_0_root_add_130_A_8_,
         add_2_root_add_0_root_add_130_A_9_,
         add_2_root_add_0_root_add_130_A_10_,
         add_2_root_add_0_root_add_130_A_11_,
         add_2_root_add_0_root_add_130_A_12_,
         add_2_root_add_0_root_add_130_A_13_, n1, n2, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n12, n13, n14, n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31, n34, n35, n36, n37, n38, n390,
         n400, n410, n430, n460, n480, n500, n510, n520, n530, n540, n550, n56,
         n57, n58, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n1060,
         n124, n125, n126, n127, n128, n129, n1300, n1310, n1320, n1330, n1340,
         n1350, n1360, n1370, n1380;
  wire   [19:10] x_mantissa;
  wire   [19:10] y_mantissa;
  wire   [3:1] x_midpoint;
  wire   [3:1] y_midpoint;
  wire   [5:0] x_shared_residual;
  wire   [5:0] y_shared_residual;
  wire   [15:0] x_product;
  wire   [15:1] y_product;
  wire   [4:2] midpoint_sum;
  wire   [24:6] plane_value;
  wire   [8:1] sa_t0;
  wire   [9:1] sa_t1;
  wire   [10:3] sa_t2;
  wire   [11:3] sa_t3;
  wire   [12:5] sa_t4;
  wire   [13:5] sa_t5;
  wire   [14:7] sa_t6;
  wire   [15:7] sa_t7;
  wire   [16:0] sa_sum_2_0;
  wire   [22:5] normalized_fraction;
  wire   [2:0] exponent_adjust;
  wire   [24:8] add_0_root_add_0_root_add_80_3_carry;
  wire   [24:8] add_1_root_add_0_root_add_80_3_carry;
  wire   [11:8] add_1_root_add_0_root_add_130_carry;
  wire   [13:7] add_4_root_add_0_root_add_130_carry;
  wire   [15:9] add_3_root_add_0_root_add_130_carry;
  wire   [11:5] add_5_root_add_0_root_add_130_carry;
  wire   [9:3] add_6_root_add_0_root_add_130_carry;
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
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25;

  AN3XD1 U87 ( .A1(n740), .A2(n61), .A3(n680), .Z(n700) );
  AN2XD1 U100 ( .A1(n640), .A2(n740), .Z(n60) );
  MAOI22D1 U175 ( .A1(n1060), .A2(n124), .B1(n100), .B2(n770), .ZN(n123) );
  fp32_normal_finite_wrapper fp_wrapper ( .x({x[31:10], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y({y[31:10], 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .divide_mode(divide_mode), 
        .fraction_x({x_midpoint, x_mantissa, SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9}), .fraction_y({y_midpoint, y_mantissa, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19}), 
        .result_fraction({normalized_fraction, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .exponent_adjust({exponent_adjust[2], exponent_adjust[2], 
        exponent_adjust[0]}), .result({result[31:5], SYNOPSYS_UNCONNECTED__20, 
        SYNOPSYS_UNCONNECTED__21, SYNOPSYS_UNCONNECTED__22, 
        SYNOPSYS_UNCONNECTED__23, SYNOPSYS_UNCONNECTED__24}) );
  oadm_fixed_divmul_root_opt_binary_3_16_10_16_8_e3_b6_95_7c_69_5a_4e_44_DW01_add_6 add_0_root_add_0_root_add_130 ( 
        .A({n1360, n8, sa_sum_0_3_14_, sa_sum_0_3_13_, sa_sum_0_3_12_, 
        sa_sum_0_3_11_, sa_sum_0_3_10_, sa_sum_0_3_9_, sa_sum_0_3_8_, 
        sa_sum_0_3_7_, sa_sum_0_3_6_, sa_sum_0_3_5_, sa_sum_0_3_4_, 
        sa_sum_0_3_3_, sa_sum_0_3_2_, n1360, n1360}), .B({
        add_1_root_add_0_root_add_130_SUM_16_, 
        add_1_root_add_0_root_add_130_SUM_15_, 
        add_1_root_add_0_root_add_130_SUM_14_, 
        add_1_root_add_0_root_add_130_SUM_13_, 
        add_1_root_add_0_root_add_130_SUM_12_, 
        add_1_root_add_0_root_add_130_SUM_11_, 
        add_1_root_add_0_root_add_130_SUM_10_, 
        add_1_root_add_0_root_add_130_SUM_9_, 
        add_1_root_add_0_root_add_130_SUM_8_, 
        add_1_root_add_0_root_add_130_SUM_7_, 
        add_1_root_add_0_root_add_130_SUM_6_, 
        add_1_root_add_0_root_add_130_A_5_, add_1_root_add_0_root_add_130_A_4_, 
        add_1_root_add_0_root_add_130_A_3_, add_1_root_add_0_root_add_130_A_2_, 
        add_1_root_add_0_root_add_130_A_1_, add_1_root_add_0_root_add_130_A_0_}), .CI(n1360), .SUM(sa_sum_2_0) );
  oadm_fixed_divmul_root_opt_binary_3_16_10_16_8_e3_b6_95_7c_69_5a_4e_44_DW_mult_tc_1 mult_61 ( 
        .a({x_residual_19_, x_mantissa[18:16], x_shared_residual}), .b({n1360, 
        n1, y_midpoint, n1}), .product(x_product) );
  oadm_fixed_divmul_root_opt_binary_3_16_10_16_8_e3_b6_95_7c_69_5a_4e_44_DW_mult_tc_0 mult_63 ( 
        .a({y_residual_19_, y_mantissa[18:16], y_shared_residual}), .b({n1360, 
        n1, x_midpoint, n1}), .product({y_product, N39}) );
  oadm_fixed_divmul_root_opt_binary_3_16_10_16_8_e3_b6_95_7c_69_5a_4e_44_DW_mult_uns_0 mult_74 ( 
        .a({n1, x_midpoint, n1}), .b({n1, y_midpoint, n1}), .product({N138, 
        N137, N136, N135, N134, N133, N132, N131, N130, 
        SYNOPSYS_UNCONNECTED__25}) );
  TIEH U3 ( .Z(n1) );
  AO22D0 U4 ( .A1(n460), .A2(y_product[15]), .B1(N55), .B2(divide_mode), .Z(
        N80) );
  AN2XD1 U5 ( .A1(add_1_root_add_0_root_add_130_B_6_), .A2(
        add_1_root_add_0_root_add_130_A_6_), .Z(n2) );
  AN2XD1 U6 ( .A1(sa_t1[1]), .A2(sa_t0[1]), .Z(n3) );
  AN2XD1 U7 ( .A1(sa_t1[9]), .A2(add_6_root_add_0_root_add_130_carry[9]), .Z(
        n4) );
  AN2XD1 U8 ( .A1(sa_t2[3]), .A2(sa_t3[3]), .Z(n5) );
  AN2XD1 U9 ( .A1(add_2_root_add_0_root_add_130_A_4_), .A2(sa_sum_1_1_4_), .Z(
        n6) );
  AN2XD1 U10 ( .A1(add_5_root_add_0_root_add_130_carry[11]), .A2(sa_t3[11]), 
        .Z(n7) );
  AN2XD1 U11 ( .A1(n14), .A2(n31), .Z(n8) );
  AN2XD1 U12 ( .A1(x_product[0]), .A2(N1200), .Z(n9) );
  AN2XD1 U13 ( .A1(N950), .A2(N39), .Z(n10) );
  AN2XD1 U14 ( .A1(sa_t5[5]), .A2(sa_t4[5]), .Z(n11) );
  AN2XD1 U15 ( .A1(sa_t7[7]), .A2(sa_t6[7]), .Z(n12) );
  AOI22D1 U16 ( .A1(n84), .A2(plane_value[6]), .B1(n93), .B2(plane_value[7]), 
        .ZN(n13) );
  AN2XD1 U17 ( .A1(add_2_root_add_0_root_add_130_A_13_), .A2(
        add_2_root_add_0_root_add_130_carry_13_), .Z(n14) );
  ND2D1 U19 ( .A1(n100), .A2(n98), .ZN(exponent_adjust[2]) );
  INVD1 U20 ( .I(plane_value[24]), .ZN(n125) );
  FA1D0 U21 ( .A(add_1_root_add_0_root_add_130_A_9_), .B(
        add_1_root_add_0_root_add_130_B_9_), .CI(
        add_1_root_add_0_root_add_130_carry[9]), .CO(
        add_1_root_add_0_root_add_130_carry[10]), .S(
        add_1_root_add_0_root_add_130_SUM_9_) );
  FA1D0 U22 ( .A(n4), .B(add_1_root_add_0_root_add_130_B_10_), .CI(
        add_1_root_add_0_root_add_130_carry[10]), .CO(
        add_1_root_add_0_root_add_130_carry[11]), .S(
        add_1_root_add_0_root_add_130_SUM_10_) );
  INVD1 U23 ( .I(plane_value[23]), .ZN(n126) );
  FA1D0 U24 ( .A(add_1_root_add_0_root_add_130_A_8_), .B(
        add_1_root_add_0_root_add_130_B_8_), .CI(
        add_1_root_add_0_root_add_130_carry[8]), .CO(
        add_1_root_add_0_root_add_130_carry[9]), .S(
        add_1_root_add_0_root_add_130_SUM_8_) );
  INVD1 U25 ( .I(plane_value[22]), .ZN(n127) );
  FA1D0 U26 ( .A(add_1_root_add_0_root_add_130_A_7_), .B(
        add_1_root_add_0_root_add_130_B_7_), .CI(n2), .CO(
        add_1_root_add_0_root_add_130_carry[8]), .S(
        add_1_root_add_0_root_add_130_SUM_7_) );
  AN2XD1 U27 ( .A1(add_1_root_add_0_root_add_130_carry[11]), .A2(
        add_1_root_add_0_root_add_130_B_11_), .Z(n16) );
  AN2XD1 U28 ( .A1(n19), .A2(n90), .Z(n17) );
  AN2XD1 U30 ( .A1(n16), .A2(add_1_root_add_0_root_add_130_B_12_), .Z(n18) );
  AN2XD1 U31 ( .A1(n20), .A2(n89), .Z(n19) );
  AN2XD1 U32 ( .A1(n22), .A2(n88), .Z(n20) );
  AN2XD1 U33 ( .A1(n18), .A2(add_1_root_add_0_root_add_130_B_13_), .Z(n21) );
  AN2XD1 U34 ( .A1(n24), .A2(n87), .Z(n22) );
  AN2XD1 U35 ( .A1(n21), .A2(add_1_root_add_0_root_add_130_B_14_), .Z(n23) );
  AN2XD1 U36 ( .A1(n25), .A2(n86), .Z(n24) );
  AN2XD1 U37 ( .A1(n26), .A2(n85), .Z(n25) );
  FA1D0 U38 ( .A(add_2_root_add_0_root_add_130_A_12_), .B(n7), .CI(
        add_2_root_add_0_root_add_130_carry_12_), .CO(
        add_2_root_add_0_root_add_130_carry_13_), .S(sa_sum_0_3_12_) );
  FA1D0 U39 ( .A(add_2_root_add_0_root_add_130_A_11_), .B(sa_sum_1_1_11_), 
        .CI(add_2_root_add_0_root_add_130_carry_11_), .CO(
        add_2_root_add_0_root_add_130_carry_12_), .S(sa_sum_0_3_11_) );
  AN2XD1 U40 ( .A1(n27), .A2(n58), .Z(n26) );
  FA1D0 U41 ( .A(add_2_root_add_0_root_add_130_A_10_), .B(sa_sum_1_1_10_), 
        .CI(add_2_root_add_0_root_add_130_carry_10_), .CO(
        add_2_root_add_0_root_add_130_carry_11_), .S(sa_sum_0_3_10_) );
  FA1D0 U42 ( .A(add_2_root_add_0_root_add_130_A_9_), .B(sa_sum_1_1_9_), .CI(
        add_2_root_add_0_root_add_130_carry_9_), .CO(
        add_2_root_add_0_root_add_130_carry_10_), .S(sa_sum_0_3_9_) );
  FA1D0 U43 ( .A(add_2_root_add_0_root_add_130_A_8_), .B(sa_sum_1_1_8_), .CI(
        add_2_root_add_0_root_add_130_carry_8_), .CO(
        add_2_root_add_0_root_add_130_carry_9_), .S(sa_sum_0_3_8_) );
  AN2XD1 U44 ( .A1(n28), .A2(n57), .Z(n27) );
  FA1D0 U45 ( .A(add_2_root_add_0_root_add_130_A_7_), .B(sa_sum_1_1_7_), .CI(
        add_2_root_add_0_root_add_130_carry_7_), .CO(
        add_2_root_add_0_root_add_130_carry_8_), .S(sa_sum_0_3_7_) );
  AN2XD1 U46 ( .A1(n29), .A2(n56), .Z(n28) );
  FA1D0 U47 ( .A(add_2_root_add_0_root_add_130_A_6_), .B(sa_sum_1_1_6_), .CI(
        add_2_root_add_0_root_add_130_carry_6_), .CO(
        add_2_root_add_0_root_add_130_carry_7_), .S(sa_sum_0_3_6_) );
  AN2XD1 U48 ( .A1(n30), .A2(n550), .Z(n29) );
  FA1D0 U49 ( .A(add_2_root_add_0_root_add_130_A_5_), .B(sa_sum_1_1_5_), .CI(
        n6), .CO(add_2_root_add_0_root_add_130_carry_6_), .S(sa_sum_0_3_5_) );
  AN2XD1 U50 ( .A1(n36), .A2(n540), .Z(n30) );
  AN2XD1 U51 ( .A1(add_4_root_add_0_root_add_130_carry[13]), .A2(sa_t5[13]), 
        .Z(n31) );
  INVD1 U52 ( .I(n100), .ZN(n94) );
  INVD1 U53 ( .I(n84), .ZN(n92) );
  INVD1 U54 ( .I(n98), .ZN(n1060) );
  IND3D1 U56 ( .A1(n95), .B1(n96), .B2(n78), .ZN(n100) );
  XOR3D1 U57 ( .A1(N1130), .A2(N80), .A3(
        add_0_root_add_0_root_add_80_3_carry[24]), .Z(plane_value[24]) );
  XOR3D1 U58 ( .A1(N138), .A2(x_product[15]), .A3(
        add_1_root_add_0_root_add_80_3_carry[24]), .Z(N1130) );
  FA1D0 U59 ( .A(sa_t0[8]), .B(sa_t1[8]), .CI(
        add_6_root_add_0_root_add_130_carry[8]), .CO(
        add_6_root_add_0_root_add_130_carry[9]), .S(
        add_1_root_add_0_root_add_130_A_8_) );
  NR2D1 U60 ( .A1(n750), .A2(n126), .ZN(sa_t1[8]) );
  NR2D1 U61 ( .A1(n760), .A2(n125), .ZN(sa_t0[8]) );
  FA1D0 U62 ( .A(N1110), .B(N80), .CI(add_0_root_add_0_root_add_80_3_carry[22]), .CO(add_0_root_add_0_root_add_80_3_carry[23]), .S(plane_value[22]) );
  FA1D0 U63 ( .A(N1120), .B(N80), .CI(add_0_root_add_0_root_add_80_3_carry[23]), .CO(add_0_root_add_0_root_add_80_3_carry[24]), .S(plane_value[23]) );
  INVD1 U64 ( .I(y_product[14]), .ZN(n90) );
  FA1D0 U65 ( .A(N135), .B(x_product[15]), .CI(
        add_1_root_add_0_root_add_80_3_carry[21]), .CO(
        add_1_root_add_0_root_add_80_3_carry[22]), .S(N1100) );
  FA1D0 U66 ( .A(N137), .B(x_product[15]), .CI(
        add_1_root_add_0_root_add_80_3_carry[23]), .CO(
        add_1_root_add_0_root_add_80_3_carry[24]), .S(N1120) );
  FA1D0 U67 ( .A(N136), .B(x_product[15]), .CI(
        add_1_root_add_0_root_add_80_3_carry[22]), .CO(
        add_1_root_add_0_root_add_80_3_carry[23]), .S(N1110) );
  INVD1 U68 ( .I(y_product[13]), .ZN(n89) );
  FA1D0 U69 ( .A(sa_t0[7]), .B(sa_t1[7]), .CI(
        add_6_root_add_0_root_add_130_carry[7]), .CO(
        add_6_root_add_0_root_add_130_carry[8]), .S(
        add_1_root_add_0_root_add_130_A_7_) );
  NR2D1 U70 ( .A1(n750), .A2(n127), .ZN(sa_t1[7]) );
  NR2D1 U71 ( .A1(n760), .A2(n126), .ZN(sa_t0[7]) );
  FA1D0 U72 ( .A(sa_t0[6]), .B(sa_t1[6]), .CI(
        add_6_root_add_0_root_add_130_carry[6]), .CO(
        add_6_root_add_0_root_add_130_carry[7]), .S(
        add_1_root_add_0_root_add_130_A_6_) );
  NR2D1 U73 ( .A1(n750), .A2(n128), .ZN(sa_t1[6]) );
  NR2D1 U74 ( .A1(n760), .A2(n127), .ZN(sa_t0[6]) );
  ND3D1 U75 ( .A1(n96), .A2(n95), .A3(n78), .ZN(n98) );
  INVD1 U76 ( .I(plane_value[21]), .ZN(n128) );
  FA1D0 U77 ( .A(sa_t0[5]), .B(sa_t1[5]), .CI(
        add_6_root_add_0_root_add_130_carry[5]), .CO(
        add_6_root_add_0_root_add_130_carry[6]), .S(
        add_1_root_add_0_root_add_130_A_5_) );
  NR2D1 U78 ( .A1(n750), .A2(n129), .ZN(sa_t1[5]) );
  NR2D1 U79 ( .A1(n760), .A2(n128), .ZN(sa_t0[5]) );
  INVD1 U80 ( .I(plane_value[20]), .ZN(n129) );
  FA1D0 U81 ( .A(sa_t0[4]), .B(sa_t1[4]), .CI(
        add_6_root_add_0_root_add_130_carry[4]), .CO(
        add_6_root_add_0_root_add_130_carry[5]), .S(
        add_1_root_add_0_root_add_130_A_4_) );
  NR2D1 U82 ( .A1(n750), .A2(n1300), .ZN(sa_t1[4]) );
  NR2D1 U83 ( .A1(n760), .A2(n129), .ZN(sa_t0[4]) );
  INVD1 U84 ( .I(y_product[12]), .ZN(n88) );
  FA1D0 U85 ( .A(N134), .B(x_product[14]), .CI(
        add_1_root_add_0_root_add_80_3_carry[20]), .CO(
        add_1_root_add_0_root_add_80_3_carry[21]), .S(N1090) );
  INVD1 U86 ( .I(plane_value[19]), .ZN(n1300) );
  FA1D0 U88 ( .A(sa_t0[3]), .B(sa_t1[3]), .CI(
        add_6_root_add_0_root_add_130_carry[3]), .CO(
        add_6_root_add_0_root_add_130_carry[4]), .S(
        add_1_root_add_0_root_add_130_A_3_) );
  NR2D1 U89 ( .A1(n750), .A2(n1310), .ZN(sa_t1[3]) );
  NR2D1 U90 ( .A1(n760), .A2(n1300), .ZN(sa_t0[3]) );
  INVD1 U91 ( .I(y_product[11]), .ZN(n87) );
  FA1D0 U92 ( .A(N133), .B(x_product[13]), .CI(
        add_1_root_add_0_root_add_80_3_carry[19]), .CO(
        add_1_root_add_0_root_add_80_3_carry[20]), .S(N1080) );
  INVD1 U93 ( .I(plane_value[18]), .ZN(n1310) );
  FA1D0 U94 ( .A(sa_t0[2]), .B(sa_t1[2]), .CI(n3), .CO(
        add_6_root_add_0_root_add_130_carry[3]), .S(
        add_1_root_add_0_root_add_130_A_2_) );
  NR2D1 U95 ( .A1(n750), .A2(n1320), .ZN(sa_t1[2]) );
  NR2D1 U96 ( .A1(n760), .A2(n1310), .ZN(sa_t0[2]) );
  INVD1 U97 ( .I(y_product[10]), .ZN(n86) );
  FA1D0 U98 ( .A(N132), .B(x_product[12]), .CI(
        add_1_root_add_0_root_add_80_3_carry[18]), .CO(
        add_1_root_add_0_root_add_80_3_carry[19]), .S(N1070) );
  INVD1 U99 ( .I(y_product[9]), .ZN(n85) );
  INVD1 U101 ( .I(y_product[8]), .ZN(n58) );
  ND2D1 U102 ( .A1(n78), .A2(n100), .ZN(exponent_adjust[0]) );
  INVD1 U103 ( .I(y_product[7]), .ZN(n57) );
  NR2D1 U104 ( .A1(n750), .A2(n125), .ZN(sa_t1[9]) );
  FA1D0 U105 ( .A(sa_t2[10]), .B(sa_t3[10]), .CI(
        add_5_root_add_0_root_add_130_carry[10]), .CO(
        add_5_root_add_0_root_add_130_carry[11]), .S(sa_sum_1_1_10_) );
  NR2D1 U106 ( .A1(n650), .A2(n126), .ZN(sa_t3[10]) );
  NR2D1 U107 ( .A1(n730), .A2(n125), .ZN(sa_t2[10]) );
  INVD1 U108 ( .I(y_product[6]), .ZN(n56) );
  INVD1 U109 ( .I(y_product[5]), .ZN(n550) );
  FA1D0 U110 ( .A(sa_t2[9]), .B(sa_t3[9]), .CI(
        add_5_root_add_0_root_add_130_carry[9]), .CO(
        add_5_root_add_0_root_add_130_carry[10]), .S(sa_sum_1_1_9_) );
  NR2D1 U111 ( .A1(n650), .A2(n127), .ZN(sa_t3[9]) );
  NR2D1 U112 ( .A1(n730), .A2(n126), .ZN(sa_t2[9]) );
  FA1D0 U113 ( .A(sa_t2[8]), .B(sa_t3[8]), .CI(
        add_5_root_add_0_root_add_130_carry[8]), .CO(
        add_5_root_add_0_root_add_130_carry[9]), .S(sa_sum_1_1_8_) );
  NR2D1 U114 ( .A1(n650), .A2(n128), .ZN(sa_t3[8]) );
  NR2D1 U115 ( .A1(n730), .A2(n127), .ZN(sa_t2[8]) );
  FA1D0 U116 ( .A(sa_t2[7]), .B(sa_t3[7]), .CI(
        add_5_root_add_0_root_add_130_carry[7]), .CO(
        add_5_root_add_0_root_add_130_carry[8]), .S(sa_sum_1_1_7_) );
  NR2D1 U117 ( .A1(n650), .A2(n129), .ZN(sa_t3[7]) );
  NR2D1 U118 ( .A1(n730), .A2(n128), .ZN(sa_t2[7]) );
  FA1D0 U119 ( .A(sa_t2[6]), .B(sa_t3[6]), .CI(
        add_5_root_add_0_root_add_130_carry[6]), .CO(
        add_5_root_add_0_root_add_130_carry[7]), .S(sa_sum_1_1_6_) );
  NR2D1 U120 ( .A1(n650), .A2(n1300), .ZN(sa_t3[6]) );
  NR2D1 U121 ( .A1(n730), .A2(n129), .ZN(sa_t2[6]) );
  INVD1 U122 ( .I(plane_value[17]), .ZN(n1320) );
  INVD1 U123 ( .I(y_product[4]), .ZN(n540) );
  NR2D1 U124 ( .A1(n760), .A2(n1320), .ZN(sa_t0[1]) );
  FA1D0 U125 ( .A(sa_t2[5]), .B(sa_t3[5]), .CI(
        add_5_root_add_0_root_add_130_carry[5]), .CO(
        add_5_root_add_0_root_add_130_carry[6]), .S(sa_sum_1_1_5_) );
  NR2D1 U126 ( .A1(n650), .A2(n1310), .ZN(sa_t3[5]) );
  NR2D1 U127 ( .A1(n730), .A2(n1300), .ZN(sa_t2[5]) );
  FA1D0 U128 ( .A(sa_t2[4]), .B(sa_t3[4]), .CI(n5), .CO(
        add_5_root_add_0_root_add_130_carry[5]), .S(sa_sum_1_1_4_) );
  NR2D1 U129 ( .A1(n650), .A2(n1320), .ZN(sa_t3[4]) );
  NR2D1 U130 ( .A1(n730), .A2(n1310), .ZN(sa_t2[4]) );
  AN2XD1 U132 ( .A1(n37), .A2(x_product[7]), .Z(n34) );
  AN2XD1 U133 ( .A1(add_1_root_add_0_root_add_80_3_carry[11]), .A2(
        x_product[5]), .Z(n35) );
  AN2XD1 U134 ( .A1(n38), .A2(n530), .Z(n36) );
  AN2XD1 U135 ( .A1(n35), .A2(x_product[6]), .Z(n37) );
  NR2D1 U136 ( .A1(n650), .A2(n125), .ZN(sa_t3[11]) );
  INVD1 U137 ( .I(plane_value[16]), .ZN(n1330) );
  NR2D1 U138 ( .A1(n750), .A2(n1330), .ZN(sa_t1[1]) );
  FA1D0 U139 ( .A(sa_t4[12]), .B(sa_t5[12]), .CI(
        add_4_root_add_0_root_add_130_carry[12]), .CO(
        add_4_root_add_0_root_add_130_carry[13]), .S(
        add_2_root_add_0_root_add_130_A_12_) );
  NR2D1 U140 ( .A1(n660), .A2(n126), .ZN(sa_t5[12]) );
  NR2D1 U141 ( .A1(n690), .A2(n125), .ZN(sa_t4[12]) );
  FA1D0 U142 ( .A(sa_t4[11]), .B(sa_t5[11]), .CI(
        add_4_root_add_0_root_add_130_carry[11]), .CO(
        add_4_root_add_0_root_add_130_carry[12]), .S(
        add_2_root_add_0_root_add_130_A_11_) );
  NR2D1 U143 ( .A1(n660), .A2(n127), .ZN(sa_t5[11]) );
  NR2D1 U144 ( .A1(n690), .A2(n126), .ZN(sa_t4[11]) );
  FA1D0 U145 ( .A(sa_t4[10]), .B(sa_t5[10]), .CI(
        add_4_root_add_0_root_add_130_carry[10]), .CO(
        add_4_root_add_0_root_add_130_carry[11]), .S(
        add_2_root_add_0_root_add_130_A_10_) );
  NR2D1 U146 ( .A1(n660), .A2(n128), .ZN(sa_t5[10]) );
  NR2D1 U147 ( .A1(n690), .A2(n127), .ZN(sa_t4[10]) );
  FA1D0 U148 ( .A(sa_t4[9]), .B(sa_t5[9]), .CI(
        add_4_root_add_0_root_add_130_carry[9]), .CO(
        add_4_root_add_0_root_add_130_carry[10]), .S(
        add_2_root_add_0_root_add_130_A_9_) );
  NR2D1 U149 ( .A1(n660), .A2(n129), .ZN(sa_t5[9]) );
  NR2D1 U150 ( .A1(n690), .A2(n128), .ZN(sa_t4[9]) );
  FA1D0 U151 ( .A(sa_t4[8]), .B(sa_t5[8]), .CI(
        add_4_root_add_0_root_add_130_carry[8]), .CO(
        add_4_root_add_0_root_add_130_carry[9]), .S(
        add_2_root_add_0_root_add_130_A_8_) );
  NR2D1 U152 ( .A1(n660), .A2(n1300), .ZN(sa_t5[8]) );
  NR2D1 U153 ( .A1(n690), .A2(n129), .ZN(sa_t4[8]) );
  FA1D0 U154 ( .A(sa_t4[7]), .B(sa_t5[7]), .CI(
        add_4_root_add_0_root_add_130_carry[7]), .CO(
        add_4_root_add_0_root_add_130_carry[8]), .S(
        add_2_root_add_0_root_add_130_A_7_) );
  NR2D1 U155 ( .A1(n660), .A2(n1310), .ZN(sa_t5[7]) );
  NR2D1 U156 ( .A1(n690), .A2(n1300), .ZN(sa_t4[7]) );
  NR2D1 U157 ( .A1(n730), .A2(n1320), .ZN(sa_t2[3]) );
  FA1D0 U158 ( .A(sa_t4[6]), .B(sa_t5[6]), .CI(n11), .CO(
        add_4_root_add_0_root_add_130_carry[7]), .S(
        add_2_root_add_0_root_add_130_A_6_) );
  NR2D1 U159 ( .A1(n660), .A2(n1320), .ZN(sa_t5[6]) );
  NR2D1 U160 ( .A1(n690), .A2(n1310), .ZN(sa_t4[6]) );
  AN2XD1 U161 ( .A1(n390), .A2(n520), .Z(n38) );
  NR2D1 U163 ( .A1(n650), .A2(n1330), .ZN(sa_t3[3]) );
  NR2D1 U164 ( .A1(n690), .A2(n1320), .ZN(sa_t4[5]) );
  NR2D1 U165 ( .A1(n660), .A2(n125), .ZN(sa_t5[13]) );
  FA1D0 U166 ( .A(sa_t6[14]), .B(sa_t7[14]), .CI(
        add_3_root_add_0_root_add_130_carry[14]), .CO(
        add_3_root_add_0_root_add_130_carry[15]), .S(
        add_1_root_add_0_root_add_130_B_14_) );
  NR2D1 U167 ( .A1(n59), .A2(n126), .ZN(sa_t7[14]) );
  NR2D1 U168 ( .A1(n62), .A2(n125), .ZN(sa_t6[14]) );
  FA1D0 U169 ( .A(sa_t6[13]), .B(sa_t7[13]), .CI(
        add_3_root_add_0_root_add_130_carry[13]), .CO(
        add_3_root_add_0_root_add_130_carry[14]), .S(
        add_1_root_add_0_root_add_130_B_13_) );
  NR2D1 U170 ( .A1(n59), .A2(n127), .ZN(sa_t7[13]) );
  NR2D1 U171 ( .A1(n62), .A2(n126), .ZN(sa_t6[13]) );
  FA1D0 U172 ( .A(sa_t6[9]), .B(sa_t7[9]), .CI(
        add_3_root_add_0_root_add_130_carry[9]), .CO(
        add_3_root_add_0_root_add_130_carry[10]), .S(
        add_1_root_add_0_root_add_130_B_9_) );
  NR2D1 U173 ( .A1(n59), .A2(n1310), .ZN(sa_t7[9]) );
  NR2D1 U174 ( .A1(n62), .A2(n1300), .ZN(sa_t6[9]) );
  FA1D0 U176 ( .A(sa_t6[10]), .B(sa_t7[10]), .CI(
        add_3_root_add_0_root_add_130_carry[10]), .CO(
        add_3_root_add_0_root_add_130_carry[11]), .S(
        add_1_root_add_0_root_add_130_B_10_) );
  NR2D1 U177 ( .A1(n59), .A2(n1300), .ZN(sa_t7[10]) );
  NR2D1 U178 ( .A1(n62), .A2(n129), .ZN(sa_t6[10]) );
  FA1D0 U179 ( .A(sa_t6[12]), .B(sa_t7[12]), .CI(
        add_3_root_add_0_root_add_130_carry[12]), .CO(
        add_3_root_add_0_root_add_130_carry[13]), .S(
        add_1_root_add_0_root_add_130_B_12_) );
  NR2D1 U180 ( .A1(n59), .A2(n128), .ZN(sa_t7[12]) );
  NR2D1 U181 ( .A1(n62), .A2(n127), .ZN(sa_t6[12]) );
  FA1D0 U182 ( .A(sa_t6[11]), .B(sa_t7[11]), .CI(
        add_3_root_add_0_root_add_130_carry[11]), .CO(
        add_3_root_add_0_root_add_130_carry[12]), .S(
        add_1_root_add_0_root_add_130_B_11_) );
  NR2D1 U183 ( .A1(n59), .A2(n129), .ZN(sa_t7[11]) );
  NR2D1 U184 ( .A1(n62), .A2(n128), .ZN(sa_t6[11]) );
  FA1D0 U185 ( .A(sa_t6[8]), .B(sa_t7[8]), .CI(n12), .CO(
        add_3_root_add_0_root_add_130_carry[9]), .S(
        add_1_root_add_0_root_add_130_B_8_) );
  NR2D1 U186 ( .A1(n59), .A2(n1320), .ZN(sa_t7[8]) );
  NR2D1 U187 ( .A1(n62), .A2(n1310), .ZN(sa_t6[8]) );
  NR2D1 U188 ( .A1(n660), .A2(n1330), .ZN(sa_t5[5]) );
  OAI222D0 U190 ( .A1(n81), .A2(n92), .B1(divide_mode), .B2(n82), .C1(n78), 
        .C2(n770), .ZN(normalized_fraction[8]) );
  AOI22D1 U191 ( .A1(plane_value[6]), .A2(n1060), .B1(n94), .B2(plane_value[7]), .ZN(n82) );
  OAI22D1 U192 ( .A1(n78), .A2(n81), .B1(divide_mode), .B2(n83), .ZN(
        normalized_fraction[7]) );
  AOI22D1 U193 ( .A1(n84), .A2(plane_value[7]), .B1(plane_value[6]), .B2(n94), 
        .ZN(n83) );
  NR2D1 U194 ( .A1(n62), .A2(n1320), .ZN(sa_t6[7]) );
  NR2D1 U195 ( .A1(n59), .A2(n125), .ZN(sa_t7[15]) );
  OAI221D0 U196 ( .A1(n112), .A2(n92), .B1(n78), .B2(n110), .C(n115), .ZN(
        normalized_fraction[15]) );
  OA22D0 U197 ( .A1(n98), .A2(n116), .B1(n100), .B2(n114), .Z(n115) );
  OAI221D0 U198 ( .A1(n110), .A2(n92), .B1(n78), .B2(n108), .C(n113), .ZN(
        normalized_fraction[16]) );
  OA22D0 U199 ( .A1(n98), .A2(n114), .B1(n100), .B2(n112), .Z(n113) );
  OAI221D0 U200 ( .A1(n108), .A2(n92), .B1(n78), .B2(n105), .C(n111), .ZN(
        normalized_fraction[17]) );
  OA22D0 U201 ( .A1(n98), .A2(n112), .B1(n100), .B2(n110), .Z(n111) );
  OAI221D0 U202 ( .A1(n105), .A2(n92), .B1(n78), .B2(n103), .C(n109), .ZN(
        normalized_fraction[18]) );
  OA22D0 U203 ( .A1(n98), .A2(n110), .B1(n100), .B2(n108), .Z(n109) );
  OAI221D0 U204 ( .A1(n103), .A2(n92), .B1(n78), .B2(n99), .C(n107), .ZN(
        normalized_fraction[19]) );
  OA22D0 U205 ( .A1(n98), .A2(n108), .B1(n100), .B2(n105), .Z(n107) );
  OAI221D0 U206 ( .A1(n120), .A2(n92), .B1(n78), .B2(n118), .C(n122), .ZN(
        normalized_fraction[11]) );
  OA22D0 U207 ( .A1(n98), .A2(n770), .B1(n100), .B2(n79), .Z(n122) );
  OAI221D0 U208 ( .A1(n118), .A2(n92), .B1(n78), .B2(n116), .C(n121), .ZN(
        normalized_fraction[12]) );
  OA22D0 U209 ( .A1(n98), .A2(n79), .B1(n100), .B2(n120), .Z(n121) );
  OAI221D0 U210 ( .A1(n116), .A2(n92), .B1(n78), .B2(n114), .C(n119), .ZN(
        normalized_fraction[13]) );
  OA22D0 U211 ( .A1(n98), .A2(n120), .B1(n100), .B2(n118), .Z(n119) );
  OAI221D0 U212 ( .A1(n114), .A2(n92), .B1(n78), .B2(n112), .C(n117), .ZN(
        normalized_fraction[14]) );
  OA22D0 U213 ( .A1(n98), .A2(n118), .B1(n100), .B2(n116), .Z(n117) );
  OAI221D0 U214 ( .A1(n99), .A2(n92), .B1(n78), .B2(n101), .C(n104), .ZN(
        normalized_fraction[20]) );
  OA22D0 U215 ( .A1(n98), .A2(n105), .B1(n100), .B2(n103), .Z(n104) );
  OAI221D0 U216 ( .A1(n95), .A2(n92), .B1(n78), .B2(n96), .C(n97), .ZN(
        normalized_fraction[22]) );
  OA22D0 U217 ( .A1(n98), .A2(n99), .B1(n100), .B2(n101), .Z(n97) );
  OAI221D0 U218 ( .A1(n101), .A2(n92), .B1(n78), .B2(n95), .C(n102), .ZN(
        normalized_fraction[21]) );
  OA22D0 U219 ( .A1(n98), .A2(n103), .B1(n100), .B2(n99), .Z(n102) );
  NR2D1 U220 ( .A1(n690), .A2(n1330), .ZN(add_2_root_add_0_root_add_130_A_4_)
         );
  NR2D1 U221 ( .A1(n93), .A2(n96), .ZN(n84) );
  INVD1 U222 ( .I(n78), .ZN(n93) );
  OAI221D0 U223 ( .A1(n79), .A2(n92), .B1(n78), .B2(n120), .C(n123), .ZN(
        normalized_fraction[10]) );
  NR2D1 U224 ( .A1(divide_mode), .A2(n13), .ZN(normalized_fraction[6]) );
  NR2D1 U225 ( .A1(n730), .A2(n1330), .ZN(sa_sum_0_3_2_) );
  NR2D1 U226 ( .A1(n59), .A2(n1330), .ZN(sa_t7[7]) );
  NR2D1 U227 ( .A1(divide_mode), .A2(n1350), .ZN(normalized_fraction[5]) );
  ND2D1 U228 ( .A1(n93), .A2(plane_value[6]), .ZN(n1350) );
  NR2D1 U229 ( .A1(n62), .A2(n1330), .ZN(add_1_root_add_0_root_add_130_B_6_)
         );
  INVD1 U230 ( .I(n81), .ZN(n124) );
  FA1D0 U231 ( .A(N1090), .B(N76), .CI(
        add_0_root_add_0_root_add_80_3_carry[20]), .CO(
        add_0_root_add_0_root_add_80_3_carry[21]), .S(plane_value[20]) );
  AO22D0 U232 ( .A1(y_product[14]), .A2(n460), .B1(N53), .B2(divide_mode), .Z(
        N76) );
  FA1D0 U233 ( .A(N1100), .B(N77), .CI(
        add_0_root_add_0_root_add_80_3_carry[21]), .CO(
        add_0_root_add_0_root_add_80_3_carry[22]), .S(plane_value[21]) );
  AO22D0 U234 ( .A1(n460), .A2(y_product[15]), .B1(N54), .B2(divide_mode), .Z(
        N77) );
  AOI22D1 U235 ( .A1(n460), .A2(plane_value[24]), .B1(sa_sum_2_0[16]), .B2(
        divide_mode), .ZN(n78) );
  FA1D0 U236 ( .A(N1080), .B(N75), .CI(
        add_0_root_add_0_root_add_80_3_carry[19]), .CO(
        add_0_root_add_0_root_add_80_3_carry[20]), .S(plane_value[19]) );
  AO22D0 U237 ( .A1(y_product[13]), .A2(n460), .B1(N52), .B2(divide_mode), .Z(
        N75) );
  FA1D0 U240 ( .A(N1070), .B(N74), .CI(
        add_0_root_add_0_root_add_80_3_carry[18]), .CO(
        add_0_root_add_0_root_add_80_3_carry[19]), .S(plane_value[18]) );
  AO22D0 U241 ( .A1(y_product[12]), .A2(n460), .B1(N51), .B2(divide_mode), .Z(
        N74) );
  AOI22D1 U242 ( .A1(n460), .A2(plane_value[23]), .B1(sa_sum_2_0[15]), .B2(
        divide_mode), .ZN(n96) );
  FA1D0 U243 ( .A(N106), .B(N73), .CI(add_0_root_add_0_root_add_80_3_carry[17]), .CO(add_0_root_add_0_root_add_80_3_carry[18]), .S(plane_value[17]) );
  AO22D0 U244 ( .A1(y_product[11]), .A2(n460), .B1(N50), .B2(divide_mode), .Z(
        N73) );
  FA1D0 U245 ( .A(N1050), .B(N72), .CI(
        add_0_root_add_0_root_add_80_3_carry[16]), .CO(
        add_0_root_add_0_root_add_80_3_carry[17]), .S(plane_value[16]) );
  AO22D0 U246 ( .A1(y_product[10]), .A2(n460), .B1(N49), .B2(divide_mode), .Z(
        N72) );
  FA1D0 U247 ( .A(N1040), .B(N71), .CI(
        add_0_root_add_0_root_add_80_3_carry[15]), .CO(
        add_0_root_add_0_root_add_80_3_carry[16]), .S(plane_value[15]) );
  AO22D0 U248 ( .A1(y_product[9]), .A2(n460), .B1(N48), .B2(divide_mode), .Z(
        N71) );
  FA1D0 U249 ( .A(N131), .B(x_product[11]), .CI(
        add_1_root_add_0_root_add_80_3_carry[17]), .CO(
        add_1_root_add_0_root_add_80_3_carry[18]), .S(N106) );
  FA1D0 U250 ( .A(N1030), .B(N70), .CI(
        add_0_root_add_0_root_add_80_3_carry[14]), .CO(
        add_0_root_add_0_root_add_80_3_carry[15]), .S(plane_value[14]) );
  AO22D0 U251 ( .A1(y_product[8]), .A2(n460), .B1(N47), .B2(divide_mode), .Z(
        N70) );
  FA1D0 U252 ( .A(N130), .B(x_product[10]), .CI(
        add_1_root_add_0_root_add_80_3_carry[16]), .CO(
        add_1_root_add_0_root_add_80_3_carry[17]), .S(N1050) );
  FA1D0 U256 ( .A(N1020), .B(N69), .CI(
        add_0_root_add_0_root_add_80_3_carry[13]), .CO(
        add_0_root_add_0_root_add_80_3_carry[14]), .S(plane_value[13]) );
  AO22D0 U257 ( .A1(y_product[7]), .A2(n460), .B1(N46), .B2(divide_mode), .Z(
        N69) );
  AOI22D1 U258 ( .A1(n460), .A2(plane_value[22]), .B1(sa_sum_2_0[14]), .B2(
        divide_mode), .ZN(n95) );
  FA1D0 U259 ( .A(N1010), .B(N68), .CI(
        add_0_root_add_0_root_add_80_3_carry[12]), .CO(
        add_0_root_add_0_root_add_80_3_carry[13]), .S(plane_value[12]) );
  AO22D0 U260 ( .A1(y_product[6]), .A2(n460), .B1(N45), .B2(divide_mode), .Z(
        N68) );
  FA1D0 U261 ( .A(N1000), .B(N67), .CI(
        add_0_root_add_0_root_add_80_3_carry[11]), .CO(
        add_0_root_add_0_root_add_80_3_carry[12]), .S(plane_value[11]) );
  AO22D0 U262 ( .A1(y_product[5]), .A2(n460), .B1(N44), .B2(divide_mode), .Z(
        N67) );
  FA1D0 U263 ( .A(N990), .B(N66), .CI(add_0_root_add_0_root_add_80_3_carry[10]), .CO(add_0_root_add_0_root_add_80_3_carry[11]), .S(plane_value[10]) );
  AO22D0 U264 ( .A1(y_product[4]), .A2(n460), .B1(N43), .B2(divide_mode), .Z(
        N66) );
  FA1D0 U265 ( .A(N980), .B(N65), .CI(add_0_root_add_0_root_add_80_3_carry[9]), 
        .CO(add_0_root_add_0_root_add_80_3_carry[10]), .S(plane_value[9]) );
  AO22D0 U266 ( .A1(y_product[3]), .A2(n460), .B1(N42), .B2(divide_mode), .Z(
        N65) );
  INVD1 U267 ( .I(y_product[3]), .ZN(n530) );
  FA1D0 U268 ( .A(n460), .B(x_product[4]), .CI(
        add_1_root_add_0_root_add_80_3_carry[10]), .CO(
        add_1_root_add_0_root_add_80_3_carry[11]), .S(N990) );
  FA1D0 U269 ( .A(N1230), .B(x_product[3]), .CI(
        add_1_root_add_0_root_add_80_3_carry[9]), .CO(
        add_1_root_add_0_root_add_80_3_carry[10]), .S(N980) );
  INR2D1 U270 ( .A1(midpoint_sum[4]), .B1(divide_mode), .ZN(N1230) );
  FA1D0 U271 ( .A(N970), .B(N64), .CI(add_0_root_add_0_root_add_80_3_carry[8]), 
        .CO(add_0_root_add_0_root_add_80_3_carry[9]), .S(plane_value[8]) );
  AO22D0 U272 ( .A1(y_product[2]), .A2(n460), .B1(N41), .B2(divide_mode), .Z(
        N64) );
  INVD1 U273 ( .I(y_product[2]), .ZN(n520) );
  FA1D0 U274 ( .A(N960), .B(N63), .CI(n10), .CO(
        add_0_root_add_0_root_add_80_3_carry[8]), .S(plane_value[7]) );
  AO22D0 U275 ( .A1(y_product[1]), .A2(n460), .B1(N40), .B2(divide_mode), .Z(
        N63) );
  FA1D0 U277 ( .A(N1220), .B(x_product[2]), .CI(
        add_1_root_add_0_root_add_80_3_carry[8]), .CO(
        add_1_root_add_0_root_add_80_3_carry[9]), .S(N970) );
  INR2D1 U278 ( .A1(midpoint_sum[3]), .B1(divide_mode), .ZN(N1220) );
  FA1D0 U279 ( .A(N1210), .B(x_product[1]), .CI(n9), .CO(
        add_1_root_add_0_root_add_80_3_carry[8]), .S(N960) );
  INR2D1 U280 ( .A1(midpoint_sum[2]), .B1(divide_mode), .ZN(N1210) );
  OAI221D0 U281 ( .A1(n770), .A2(n92), .B1(n78), .B2(n79), .C(n800), .ZN(
        normalized_fraction[9]) );
  AOI32D1 U282 ( .A1(n1060), .A2(n460), .A3(plane_value[7]), .B1(n94), .B2(
        n124), .ZN(n800) );
  AOI22D1 U284 ( .A1(n460), .A2(plane_value[21]), .B1(sa_sum_2_0[13]), .B2(
        divide_mode), .ZN(n101) );
  AOI22D1 U285 ( .A1(n460), .A2(plane_value[20]), .B1(sa_sum_2_0[12]), .B2(
        divide_mode), .ZN(n99) );
  AOI22D1 U286 ( .A1(n460), .A2(plane_value[19]), .B1(sa_sum_2_0[11]), .B2(
        divide_mode), .ZN(n103) );
  AOI22D1 U287 ( .A1(n460), .A2(plane_value[18]), .B1(sa_sum_2_0[10]), .B2(
        divide_mode), .ZN(n105) );
  AOI22D1 U288 ( .A1(n460), .A2(plane_value[17]), .B1(sa_sum_2_0[9]), .B2(
        divide_mode), .ZN(n108) );
  AOI22D1 U289 ( .A1(n460), .A2(plane_value[16]), .B1(sa_sum_2_0[8]), .B2(
        divide_mode), .ZN(n110) );
  AOI22D1 U290 ( .A1(sa_sum_2_0[7]), .A2(divide_mode), .B1(plane_value[15]), 
        .B2(n460), .ZN(n112) );
  AOI22D1 U291 ( .A1(sa_sum_2_0[6]), .A2(divide_mode), .B1(plane_value[14]), 
        .B2(n460), .ZN(n114) );
  AOI22D1 U292 ( .A1(sa_sum_2_0[5]), .A2(divide_mode), .B1(plane_value[13]), 
        .B2(n460), .ZN(n116) );
  AN3XD1 U293 ( .A1(n720), .A2(n710), .A3(n60), .Z(n750) );
  AOI22D1 U294 ( .A1(sa_sum_2_0[4]), .A2(divide_mode), .B1(plane_value[12]), 
        .B2(n460), .ZN(n118) );
  ND3D1 U295 ( .A1(n410), .A2(n1340), .A3(y_midpoint[3]), .ZN(n670) );
  AN3XD1 U296 ( .A1(n61), .A2(n640), .A3(n670), .Z(n760) );
  AN3XD1 U297 ( .A1(n720), .A2(n630), .A3(n700), .Z(n730) );
  AOI22D1 U298 ( .A1(sa_sum_2_0[3]), .A2(divide_mode), .B1(plane_value[11]), 
        .B2(n460), .ZN(n120) );
  AN4XD1 U299 ( .A1(n720), .A2(n710), .A3(n670), .A4(n680), .Z(n650) );
  AN3XD1 U300 ( .A1(n670), .A2(n680), .A3(n60), .Z(n660) );
  AN2XD1 U301 ( .A1(n700), .A2(n710), .Z(n690) );
  AOI22D1 U302 ( .A1(sa_sum_2_0[2]), .A2(divide_mode), .B1(plane_value[10]), 
        .B2(n460), .ZN(n79) );
  AN3XD1 U303 ( .A1(n630), .A2(n640), .A3(n650), .Z(n62) );
  AOI22D1 U304 ( .A1(sa_sum_2_0[1]), .A2(divide_mode), .B1(plane_value[9]), 
        .B2(n460), .ZN(n770) );
  AN2XD1 U305 ( .A1(n60), .A2(n61), .Z(n59) );
  AOI22D1 U306 ( .A1(sa_sum_2_0[0]), .A2(divide_mode), .B1(plane_value[8]), 
        .B2(n460), .ZN(n81) );
  NR2D1 U307 ( .A1(n760), .A2(n1330), .ZN(add_1_root_add_0_root_add_130_A_0_)
         );
  FA1D0 U309 ( .A(x_midpoint[2]), .B(y_midpoint[2]), .CI(add_77_carry_2_), 
        .CO(add_77_carry_3_), .S(midpoint_sum[2]) );
  FA1D0 U313 ( .A(x_midpoint[3]), .B(y_midpoint[3]), .CI(add_77_carry_3_), 
        .CO(midpoint_sum[4]), .S(midpoint_sum[3]) );
  NR2D1 U314 ( .A1(n400), .A2(divide_mode), .ZN(N1200) );
  CKXOR2D1 U315 ( .A1(y_midpoint[1]), .A2(x_midpoint[1]), .Z(n400) );
  ND3D1 U316 ( .A1(n1340), .A2(n480), .A3(n410), .ZN(n640) );
  INVD1 U317 ( .I(y_midpoint[2]), .ZN(n1340) );
  ND3D1 U318 ( .A1(n1340), .A2(n480), .A3(y_midpoint[1]), .ZN(n740) );
  ND3D1 U319 ( .A1(y_midpoint[1]), .A2(n1340), .A3(y_midpoint[3]), .ZN(n710)
         );
  ND3D1 U320 ( .A1(n410), .A2(n480), .A3(y_midpoint[2]), .ZN(n61) );
  ND3D1 U321 ( .A1(y_midpoint[2]), .A2(n410), .A3(y_midpoint[3]), .ZN(n720) );
  ND3D1 U322 ( .A1(y_midpoint[2]), .A2(n480), .A3(y_midpoint[1]), .ZN(n680) );
  ND2D1 U323 ( .A1(y_midpoint[1]), .A2(y_midpoint[2]), .ZN(n630) );
  INR2D1 U324 ( .A1(y_mantissa[11]), .B1(divide_mode), .ZN(
        y_shared_residual[1]) );
  INR2D1 U326 ( .A1(x_mantissa[11]), .B1(divide_mode), .ZN(
        x_shared_residual[1]) );
  INR2D1 U327 ( .A1(y_mantissa[10]), .B1(divide_mode), .ZN(
        y_shared_residual[0]) );
  INR2D1 U328 ( .A1(x_mantissa[10]), .B1(divide_mode), .ZN(
        x_shared_residual[0]) );
  INR2D1 U331 ( .A1(y_mantissa[12]), .B1(divide_mode), .ZN(
        y_shared_residual[2]) );
  INR2D1 U332 ( .A1(x_mantissa[12]), .B1(divide_mode), .ZN(
        x_shared_residual[2]) );
  INR2D1 U333 ( .A1(y_mantissa[13]), .B1(divide_mode), .ZN(
        y_shared_residual[3]) );
  INR2D1 U334 ( .A1(y_mantissa[14]), .B1(divide_mode), .ZN(
        y_shared_residual[4]) );
  INR2D1 U335 ( .A1(x_mantissa[13]), .B1(divide_mode), .ZN(
        x_shared_residual[3]) );
  INR2D1 U336 ( .A1(x_mantissa[14]), .B1(divide_mode), .ZN(
        x_shared_residual[4]) );
  INR2D1 U337 ( .A1(y_mantissa[15]), .B1(divide_mode), .ZN(
        y_shared_residual[5]) );
  INR2D1 U338 ( .A1(x_mantissa[15]), .B1(divide_mode), .ZN(
        x_shared_residual[5]) );
  INVD1 U339 ( .I(y_mantissa[19]), .ZN(y_residual_19_) );
  INVD1 U340 ( .I(x_mantissa[19]), .ZN(x_residual_19_) );
  TIEL U341 ( .ZN(n1360) );
  CKXOR2D1 U343 ( .A1(n500), .A2(n510), .Z(N40) );
  CKXOR2D1 U344 ( .A1(n390), .A2(n520), .Z(N41) );
  CKXOR2D1 U345 ( .A1(n38), .A2(n530), .Z(N42) );
  CKXOR2D1 U346 ( .A1(n36), .A2(n540), .Z(N43) );
  CKXOR2D1 U347 ( .A1(n30), .A2(n550), .Z(N44) );
  CKXOR2D1 U348 ( .A1(n29), .A2(n56), .Z(N45) );
  CKXOR2D1 U349 ( .A1(n28), .A2(n57), .Z(N46) );
  CKXOR2D1 U350 ( .A1(n27), .A2(n58), .Z(N47) );
  CKXOR2D1 U351 ( .A1(n26), .A2(n85), .Z(N48) );
  CKXOR2D1 U352 ( .A1(n25), .A2(n86), .Z(N49) );
  CKXOR2D1 U353 ( .A1(n24), .A2(n87), .Z(N50) );
  CKXOR2D1 U354 ( .A1(n22), .A2(n88), .Z(N51) );
  CKXOR2D1 U355 ( .A1(n20), .A2(n89), .Z(N52) );
  CKXOR2D1 U356 ( .A1(n19), .A2(n90), .Z(N53) );
  CKXOR2D1 U357 ( .A1(n17), .A2(n91), .Z(N54) );
  CKXOR2D1 U358 ( .A1(N39), .A2(N950), .Z(plane_value[6]) );
  CKXOR2D1 U359 ( .A1(x_product[0]), .A2(N1200), .Z(N950) );
  CKXOR2D1 U360 ( .A1(add_1_root_add_0_root_add_80_3_carry[11]), .A2(
        x_product[5]), .Z(N1000) );
  CKXOR2D1 U361 ( .A1(n35), .A2(x_product[6]), .Z(N1010) );
  CKXOR2D1 U362 ( .A1(n37), .A2(x_product[7]), .Z(N1020) );
  CKXOR2D1 U363 ( .A1(n34), .A2(x_product[8]), .Z(N1030) );
  CKXOR2D1 U364 ( .A1(add_1_root_add_0_root_add_130_B_6_), .A2(
        add_1_root_add_0_root_add_130_A_6_), .Z(
        add_1_root_add_0_root_add_130_SUM_6_) );
  CKXOR2D1 U366 ( .A1(n23), .A2(add_1_root_add_0_root_add_130_B_15_), .Z(
        add_1_root_add_0_root_add_130_SUM_15_) );
  CKXOR2D1 U367 ( .A1(add_1_root_add_0_root_add_130_carry[11]), .A2(
        add_1_root_add_0_root_add_130_B_11_), .Z(
        add_1_root_add_0_root_add_130_SUM_11_) );
  CKXOR2D1 U368 ( .A1(n16), .A2(add_1_root_add_0_root_add_130_B_12_), .Z(
        add_1_root_add_0_root_add_130_SUM_12_) );
  CKXOR2D1 U369 ( .A1(n18), .A2(add_1_root_add_0_root_add_130_B_13_), .Z(
        add_1_root_add_0_root_add_130_SUM_13_) );
  CKXOR2D1 U370 ( .A1(n21), .A2(add_1_root_add_0_root_add_130_B_14_), .Z(
        add_1_root_add_0_root_add_130_SUM_14_) );
  CKXOR2D1 U371 ( .A1(sa_sum_1_1_4_), .A2(add_2_root_add_0_root_add_130_A_4_), 
        .Z(sa_sum_0_3_4_) );
  CKXOR2D1 U372 ( .A1(add_2_root_add_0_root_add_130_carry_13_), .A2(
        add_2_root_add_0_root_add_130_A_13_), .Z(sa_sum_0_3_13_) );
  CKXOR2D1 U373 ( .A1(n14), .A2(n31), .Z(sa_sum_0_3_14_) );
  CKXOR2D1 U374 ( .A1(sa_t5[5]), .A2(sa_t4[5]), .Z(
        add_2_root_add_0_root_add_130_A_5_) );
  CKXOR2D1 U375 ( .A1(add_4_root_add_0_root_add_130_carry[13]), .A2(sa_t5[13]), 
        .Z(add_2_root_add_0_root_add_130_A_13_) );
  CKXOR2D1 U376 ( .A1(sa_t7[7]), .A2(sa_t6[7]), .Z(
        add_1_root_add_0_root_add_130_B_7_) );
  CKXOR2D1 U377 ( .A1(add_3_root_add_0_root_add_130_carry[15]), .A2(sa_t7[15]), 
        .Z(add_1_root_add_0_root_add_130_B_15_) );
  CKXOR2D1 U378 ( .A1(sa_t3[3]), .A2(sa_t2[3]), .Z(sa_sum_0_3_3_) );
  CKXOR2D1 U379 ( .A1(add_5_root_add_0_root_add_130_carry[11]), .A2(sa_t3[11]), 
        .Z(sa_sum_1_1_11_) );
  CKXOR2D1 U380 ( .A1(sa_t1[1]), .A2(sa_t0[1]), .Z(
        add_1_root_add_0_root_add_130_A_1_) );
  CKXOR2D1 U381 ( .A1(add_6_root_add_0_root_add_130_carry[9]), .A2(sa_t1[9]), 
        .Z(add_1_root_add_0_root_add_130_A_9_) );
  CKXOR2D0 U18 ( .A1(n1380), .A2(n1370), .Z(
        add_1_root_add_0_root_add_130_SUM_16_) );
  CKND2D0 U29 ( .A1(add_1_root_add_0_root_add_130_B_15_), .A2(n23), .ZN(n1370)
         );
  CKND2D0 U55 ( .A1(sa_t7[15]), .A2(add_3_root_add_0_root_add_130_carry[15]), 
        .ZN(n1380) );
  CKND0 U131 ( .I(y_product[15]), .ZN(n91) );
  NR2D0 U162 ( .A1(y_product[15]), .A2(n17), .ZN(N55) );
  IND2D0 U189 ( .A1(x_product[9]), .B1(n430), .ZN(
        add_1_root_add_0_root_add_80_3_carry[16]) );
  CKND2D0 U238 ( .A1(x_product[8]), .A2(n34), .ZN(n430) );
  CKXOR2D0 U239 ( .A1(x_product[9]), .A2(n430), .Z(N1040) );
  INVD1 U253 ( .I(divide_mode), .ZN(n460) );
  CKND0 U254 ( .I(N39), .ZN(n500) );
  CKND0 U255 ( .I(y_product[1]), .ZN(n510) );
  NR2D0 U276 ( .A1(N39), .A2(y_product[1]), .ZN(n390) );
  IND2D0 U283 ( .A1(x_midpoint[1]), .B1(n410), .ZN(add_77_carry_2_) );
  CKND0 U308 ( .I(y_midpoint[1]), .ZN(n410) );
  CKND0 U310 ( .I(y_midpoint[3]), .ZN(n480) );
endmodule


module oadm_fixed_l3_divmul_root_opt_binary ( x, y, divide_mode, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  input divide_mode;
  wire   n4;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4;
  assign result[4] = 1'b0;
  assign result[3] = 1'b0;
  assign result[2] = 1'b0;
  assign result[1] = 1'b0;
  assign result[0] = 1'b0;

  oadm_fixed_divmul_root_opt_binary_3_16_10_16_8_e3_b6_95_7c_69_5a_4e_44 implementation ( 
        .x({x[31:10], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .y({y[31:10], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .divide_mode(n4), .result({result[31:5], 
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4}) );
  CKBD1 U1 ( .I(divide_mode), .Z(n4) );
endmodule

