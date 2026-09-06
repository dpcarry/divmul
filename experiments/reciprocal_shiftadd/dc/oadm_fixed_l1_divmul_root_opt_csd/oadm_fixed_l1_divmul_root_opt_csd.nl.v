/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Sun Sep  6 00:16:26 2026
/////////////////////////////////////////////////////////////


module fp32_normal_finite_wrapper_DW01_add_3_DW01_add_23 ( A, B, CI, SUM, CO
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


module fp32_normal_finite_wrapper_DW01_add_1_DW01_add_21 ( A, B, CI, SUM, CO
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
  fp32_normal_finite_wrapper_DW01_add_3_DW01_add_23 add_1_root_add_0_root_add_25_2 ( 
        .A(x[30:23]), .B({N42, N41, N40, N39, N38, N37, N36, N11}), .CI(n79), 
        .SUM({N34, N33, N32, N31, N30, N29, N28, N27}) );
  fp32_normal_finite_wrapper_DW01_add_1_DW01_add_21 add_1_root_add_0_root_add_22_2 ( 
        .A(x[30:23]), .B({y[30], N17, N16, N15, N14, N13, N12, N11}), .CI(n79), 
        .SUM({N10, N9, N8, N7, N6, N5, N4, N3}) );
  AN2XD1 U3 ( .A1(exponent_adjust[0]), .A2(N3), .Z(n1) );
  AN2XD1 U4 ( .A1(exponent_adjust[0]), .A2(N27), .Z(n2) );
  INVD1 U33 ( .I(divide_mode), .ZN(n77) );
  CKBD1 U34 ( .I(result_fraction[11]), .Z(result[11]) );
  CKBD1 U35 ( .I(result_fraction[12]), .Z(result[12]) );
  CKBD1 U36 ( .I(result_fraction[14]), .Z(result[14]) );
  CKBD1 U37 ( .I(result_fraction[15]), .Z(result[15]) );
  CKBD1 U38 ( .I(result_fraction[13]), .Z(result[13]) );
  CKBD1 U39 ( .I(result_fraction[10]), .Z(result[10]) );
  CKBD1 U40 ( .I(result_fraction[9]), .Z(result[9]) );
  CKBD1 U41 ( .I(result_fraction[8]), .Z(result[8]) );
  AO22D0 U42 ( .A1(N49), .A2(n77), .B1(N25), .B2(divide_mode), .Z(result[29])
         );
  AO22D0 U43 ( .A1(N48), .A2(n77), .B1(N24), .B2(divide_mode), .Z(result[28])
         );
  AO22D0 U44 ( .A1(N47), .A2(n77), .B1(N23), .B2(divide_mode), .Z(result[27])
         );
  AO22D0 U45 ( .A1(N46), .A2(n77), .B1(N22), .B2(divide_mode), .Z(result[26])
         );
  AO22D0 U46 ( .A1(N45), .A2(n77), .B1(N21), .B2(divide_mode), .Z(result[25])
         );
  AO22D0 U47 ( .A1(N44), .A2(n77), .B1(N20), .B2(divide_mode), .Z(result[24])
         );
  FA1D0 U48 ( .A(N4), .B(exponent_adjust[1]), .CI(n1), .CO(
        add_0_root_add_0_root_add_22_2_carry[2]), .S(N20) );
  FA1D0 U49 ( .A(N5), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[2]), .CO(
        add_0_root_add_0_root_add_22_2_carry[3]), .S(N21) );
  FA1D0 U50 ( .A(N6), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[3]), .CO(
        add_0_root_add_0_root_add_22_2_carry[4]), .S(N22) );
  FA1D0 U51 ( .A(N7), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[4]), .CO(
        add_0_root_add_0_root_add_22_2_carry[5]), .S(N23) );
  FA1D0 U52 ( .A(N8), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[5]), .CO(
        add_0_root_add_0_root_add_22_2_carry[6]), .S(N24) );
  FA1D0 U53 ( .A(N9), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[6]), .CO(
        add_0_root_add_0_root_add_22_2_carry[7]), .S(N25) );
  FA1D0 U54 ( .A(N28), .B(exponent_adjust[1]), .CI(n2), .CO(
        add_0_root_add_0_root_add_25_2_carry[2]), .S(N44) );
  FA1D0 U55 ( .A(N29), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[2]), .CO(
        add_0_root_add_0_root_add_25_2_carry[3]), .S(N45) );
  FA1D0 U56 ( .A(N30), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[3]), .CO(
        add_0_root_add_0_root_add_25_2_carry[4]), .S(N46) );
  FA1D0 U57 ( .A(N31), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[4]), .CO(
        add_0_root_add_0_root_add_25_2_carry[5]), .S(N47) );
  FA1D0 U58 ( .A(N32), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[5]), .CO(
        add_0_root_add_0_root_add_25_2_carry[6]), .S(N48) );
  FA1D0 U59 ( .A(N33), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[6]), .CO(
        add_0_root_add_0_root_add_25_2_carry[7]), .S(N49) );
  AO22D0 U60 ( .A1(N43), .A2(n77), .B1(N19), .B2(divide_mode), .Z(result[23])
         );
  AO22D0 U61 ( .A1(N50), .A2(n77), .B1(divide_mode), .B2(N26), .Z(result[30])
         );
  XOR3D1 U62 ( .A1(N34), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_25_2_carry[7]), .Z(N50) );
  XOR3D1 U63 ( .A1(N10), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_22_2_carry[7]), .Z(N26) );
  CKBD1 U64 ( .I(x[22]), .Z(fraction_x[22]) );
  CKBD1 U65 ( .I(y[22]), .Z(fraction_y[22]) );
  AN2XD1 U66 ( .A1(y[23]), .A2(y[24]), .Z(n35) );
  INVD1 U67 ( .I(y[29]), .ZN(N17) );
  INVD0 U68 ( .I(y[24]), .ZN(N12) );
  INVD1 U69 ( .I(y[25]), .ZN(N13) );
  INVD1 U70 ( .I(y[26]), .ZN(N14) );
  INVD1 U71 ( .I(y[27]), .ZN(N15) );
  INVD1 U72 ( .I(y[28]), .ZN(N16) );
  AN2XD1 U73 ( .A1(n35), .A2(y[25]), .Z(n410) );
  AN2XD1 U74 ( .A1(n410), .A2(y[26]), .Z(n51) );
  AN2XD1 U75 ( .A1(n51), .A2(y[27]), .Z(n60) );
  AN2XD1 U76 ( .A1(n60), .A2(y[28]), .Z(n70) );
  CKXOR2D1 U77 ( .A1(y[30]), .A2(n76), .Z(N42) );
  ND2D1 U78 ( .A1(n70), .A2(y[29]), .ZN(n76) );
  CKBD1 U87 ( .I(x[21]), .Z(fraction_x[21]) );
  CKBD1 U88 ( .I(x[20]), .Z(fraction_x[20]) );
  CKBD1 U89 ( .I(x[19]), .Z(fraction_x[19]) );
  CKBD1 U90 ( .I(x[18]), .Z(fraction_x[18]) );
  CKBD1 U91 ( .I(x[17]), .Z(fraction_x[17]) );
  CKBD1 U92 ( .I(x[16]), .Z(fraction_x[16]) );
  CKBD1 U93 ( .I(x[15]), .Z(fraction_x[15]) );
  CKBD1 U94 ( .I(x[14]), .Z(fraction_x[14]) );
  CKBD1 U95 ( .I(y[21]), .Z(fraction_y[21]) );
  CKBD1 U96 ( .I(y[20]), .Z(fraction_y[20]) );
  CKBD1 U97 ( .I(y[19]), .Z(fraction_y[19]) );
  CKBD1 U98 ( .I(y[18]), .Z(fraction_y[18]) );
  CKBD1 U99 ( .I(y[17]), .Z(fraction_y[17]) );
  CKBD1 U100 ( .I(y[16]), .Z(fraction_y[16]) );
  CKBD1 U101 ( .I(y[15]), .Z(fraction_y[15]) );
  CKBD1 U102 ( .I(y[14]), .Z(fraction_y[14]) );
  CKBD1 U103 ( .I(result_fraction[22]), .Z(result[22]) );
  CKBD1 U104 ( .I(result_fraction[21]), .Z(result[21]) );
  CKBD1 U105 ( .I(result_fraction[20]), .Z(result[20]) );
  CKBD1 U106 ( .I(result_fraction[19]), .Z(result[19]) );
  CKBD1 U107 ( .I(result_fraction[18]), .Z(result[18]) );
  CKBD1 U108 ( .I(result_fraction[17]), .Z(result[17]) );
  CKBD1 U109 ( .I(result_fraction[16]), .Z(result[16]) );
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


module oadm_fixed_divmul_root_opt_csd_1_16_14_16_7_53_2a_DW01_add_7 ( A, B, CI, 
        SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [15:6] carry;

  FA1D0 U1_5 ( .A(A[5]), .B(B[5]), .CI(n1), .CO(carry[6]), .S(SUM[5]) );
  FA1D0 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  FA1D0 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  FA1D0 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  FA1D0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA1D0 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA1D0 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FA1D0 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  FA1D0 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FA1D0 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  AN2XD1 U1 ( .A1(B[4]), .A2(A[4]), .Z(n1) );
  CKBD1 U2 ( .I(B[2]), .Z(SUM[2]) );
  CKBD1 U3 ( .I(B[3]), .Z(SUM[3]) );
  CKBD1 U4 ( .I(B[1]), .Z(SUM[1]) );
  CKBD1 U5 ( .I(B[0]), .Z(SUM[0]) );
  CKXOR2D1 U6 ( .A1(B[15]), .A2(carry[15]), .Z(SUM[15]) );
  CKXOR2D1 U7 ( .A1(B[4]), .A2(A[4]), .Z(SUM[4]) );
endmodule


module oadm_fixed_divmul_root_opt_csd_1_16_14_16_7_53_2a_DW01_add_6 ( A, B, CI, 
        SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [15:4] carry;

  XOR3D1 U1_15 ( .A1(A[15]), .A2(B[15]), .A3(carry[15]), .Z(SUM[15]) );
  FA1D0 U1_3 ( .A(A[3]), .B(B[3]), .CI(n1), .CO(carry[4]), .S(SUM[3]) );
  FA1D0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1D0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA1D0 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  FA1D0 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  FA1D0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1D0 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA1D0 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FA1D0 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  FA1D0 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  FA1D0 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FA1D0 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  AN2XD1 U1 ( .A1(B[2]), .A2(A[2]), .Z(n1) );
  CKBD1 U2 ( .I(B[1]), .Z(SUM[1]) );
  CKBD1 U3 ( .I(B[0]), .Z(SUM[0]) );
  CKXOR2D1 U4 ( .A1(B[2]), .A2(A[2]), .Z(SUM[2]) );
endmodule


module oadm_fixed_divmul_root_opt_csd_1_16_14_16_7_53_2a_DW_mult_tc_1 ( a, b, 
        product );
  input [7:0] a;
  input [5:0] b;
  output [13:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n13, n15, n16, n17, n18, n19,
         n21, n22, n24, n25, n26, n27, n28, n29, n30, n31, n34, n37, n38, n39,
         n40, n41, n42, n43, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155;

  FA1D0 U2 ( .A(n148), .B(n13), .CI(n2), .CO(n1), .S(product[12]) );
  FA1D0 U3 ( .A(n15), .B(n146), .CI(n3), .CO(n2), .S(product[11]) );
  FA1D0 U4 ( .A(n17), .B(n16), .CI(n4), .CO(n3), .S(product[10]) );
  FA1D0 U5 ( .A(n21), .B(n18), .CI(n5), .CO(n4), .S(product[9]) );
  FA1D0 U6 ( .A(n22), .B(n24), .CI(n6), .CO(n5), .S(product[8]) );
  FA1D0 U7 ( .A(n26), .B(n25), .CI(n7), .CO(n6), .S(product[7]) );
  FA1D0 U8 ( .A(n28), .B(n27), .CI(n8), .CO(n7), .S(product[6]) );
  FA1D0 U9 ( .A(n30), .B(n29), .CI(n9), .CO(n8), .S(product[5]) );
  FA1D0 U15 ( .A(n37), .B(n19), .CI(n43), .CO(n15), .S(n16) );
  FA1D0 U16 ( .A(n147), .B(n38), .CI(n145), .CO(n17), .S(n18) );
  INVD1 U102 ( .I(n13), .ZN(n146) );
  INVD1 U103 ( .I(b[3]), .ZN(n144) );
  INVD1 U104 ( .I(n19), .ZN(n145) );
  INVD1 U105 ( .I(a[0]), .ZN(n155) );
  XNR2D1 U106 ( .A1(b[3]), .A2(n153), .ZN(n138) );
  XNR2D1 U107 ( .A1(b[3]), .A2(n154), .ZN(n139) );
  XNR2D1 U108 ( .A1(b[3]), .A2(n152), .ZN(n140) );
  XNR2D1 U109 ( .A1(b[3]), .A2(n151), .ZN(n141) );
  XNR2D1 U110 ( .A1(b[3]), .A2(n150), .ZN(n142) );
  XNR2D1 U111 ( .A1(b[3]), .A2(n149), .ZN(n143) );
  INVD1 U112 ( .I(n43), .ZN(n147) );
  INVD1 U113 ( .I(a[7]), .ZN(n148) );
  INVD1 U114 ( .I(a[1]), .ZN(n154) );
  INVD1 U115 ( .I(a[2]), .ZN(n153) );
  INVD1 U116 ( .I(a[3]), .ZN(n152) );
  INVD1 U117 ( .I(a[4]), .ZN(n151) );
  INVD1 U118 ( .I(a[5]), .ZN(n150) );
  INVD1 U119 ( .I(a[6]), .ZN(n149) );
  AN2D0 U120 ( .A1(n10), .A2(n31), .Z(n9) );
  CKXOR2D0 U121 ( .A1(n10), .A2(n31), .Z(product[4]) );
  AN2D0 U122 ( .A1(n34), .A2(n139), .Z(n10) );
  CKXOR2D0 U123 ( .A1(n34), .A2(n139), .Z(product[3]) );
  CKND0 U124 ( .I(n155), .ZN(product[2]) );
  NR2D0 U125 ( .A1(n144), .A2(a[0]), .ZN(n34) );
  AN2D0 U126 ( .A1(n138), .A2(n42), .Z(n30) );
  CKXOR2D0 U127 ( .A1(n138), .A2(n42), .Z(n31) );
  AN2D0 U128 ( .A1(n140), .A2(n41), .Z(n28) );
  CKXOR2D0 U129 ( .A1(n140), .A2(n41), .Z(n29) );
  AN2D0 U130 ( .A1(n141), .A2(n40), .Z(n26) );
  CKXOR2D0 U131 ( .A1(n141), .A2(n40), .Z(n27) );
  AN2D0 U132 ( .A1(n142), .A2(n39), .Z(n24) );
  CKXOR2D0 U133 ( .A1(n142), .A2(n39), .Z(n25) );
  OR2D0 U134 ( .A1(n145), .A2(n143), .Z(n21) );
  XNR2D0 U135 ( .A1(n145), .A2(n143), .ZN(n22) );
  CKND0 U136 ( .I(n1), .ZN(product[13]) );
  CKXOR2D0 U137 ( .A1(n144), .A2(a[7]), .Z(n43) );
  NR2D0 U138 ( .A1(b[3]), .A2(n155), .ZN(n42) );
  OAI22D0 U139 ( .A1(n155), .A2(n144), .B1(b[3]), .B2(n154), .ZN(n41) );
  OAI22D0 U140 ( .A1(n154), .A2(n144), .B1(b[3]), .B2(n153), .ZN(n40) );
  OAI22D0 U141 ( .A1(n153), .A2(n144), .B1(b[3]), .B2(n152), .ZN(n39) );
  OAI22D0 U142 ( .A1(n151), .A2(n144), .B1(b[3]), .B2(n150), .ZN(n38) );
  OAI22D0 U143 ( .A1(n150), .A2(n144), .B1(b[3]), .B2(n149), .ZN(n37) );
  OAI22D0 U144 ( .A1(n152), .A2(n144), .B1(b[3]), .B2(n151), .ZN(n19) );
  OAI22D0 U145 ( .A1(b[3]), .A2(n148), .B1(n149), .B2(n144), .ZN(n13) );
endmodule


module oadm_fixed_divmul_root_opt_csd_1_16_14_16_7_53_2a_DW_mult_tc_0 ( a, b, 
        product );
  input [7:0] a;
  input [5:0] b;
  output [13:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n13, n15, n16, n17, n18, n19,
         n21, n22, n24, n25, n26, n27, n28, n29, n30, n31, n34, n37, n38, n39,
         n40, n41, n42, n43, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155;

  FA1D0 U2 ( .A(n148), .B(n13), .CI(n2), .CO(n1), .S(product[12]) );
  FA1D0 U3 ( .A(n15), .B(n145), .CI(n3), .CO(n2), .S(product[11]) );
  FA1D0 U4 ( .A(n17), .B(n16), .CI(n4), .CO(n3), .S(product[10]) );
  FA1D0 U5 ( .A(n21), .B(n18), .CI(n5), .CO(n4), .S(product[9]) );
  FA1D0 U6 ( .A(n22), .B(n24), .CI(n6), .CO(n5), .S(product[8]) );
  FA1D0 U7 ( .A(n26), .B(n25), .CI(n7), .CO(n6), .S(product[7]) );
  FA1D0 U8 ( .A(n28), .B(n27), .CI(n8), .CO(n7), .S(product[6]) );
  FA1D0 U9 ( .A(n30), .B(n29), .CI(n9), .CO(n8), .S(product[5]) );
  FA1D0 U15 ( .A(n37), .B(n19), .CI(n43), .CO(n15), .S(n16) );
  FA1D0 U16 ( .A(n146), .B(n38), .CI(n144), .CO(n17), .S(n18) );
  INVD1 U102 ( .I(n13), .ZN(n145) );
  INVD1 U103 ( .I(b[3]), .ZN(n147) );
  INVD1 U104 ( .I(n19), .ZN(n144) );
  INVD1 U105 ( .I(a[0]), .ZN(n155) );
  XNR2D1 U106 ( .A1(b[3]), .A2(n154), .ZN(n138) );
  XNR2D1 U107 ( .A1(b[3]), .A2(n153), .ZN(n139) );
  XNR2D1 U108 ( .A1(b[3]), .A2(n152), .ZN(n140) );
  XNR2D1 U109 ( .A1(b[3]), .A2(n151), .ZN(n141) );
  XNR2D1 U110 ( .A1(b[3]), .A2(n150), .ZN(n142) );
  XNR2D1 U111 ( .A1(b[3]), .A2(n149), .ZN(n143) );
  INVD1 U112 ( .I(n43), .ZN(n146) );
  INVD1 U113 ( .I(a[7]), .ZN(n148) );
  INVD1 U114 ( .I(a[1]), .ZN(n154) );
  INVD1 U115 ( .I(a[2]), .ZN(n153) );
  INVD1 U116 ( .I(a[3]), .ZN(n152) );
  INVD1 U117 ( .I(a[4]), .ZN(n151) );
  INVD1 U118 ( .I(a[5]), .ZN(n150) );
  INVD1 U119 ( .I(a[6]), .ZN(n149) );
  AN2D0 U120 ( .A1(n10), .A2(n31), .Z(n9) );
  CKXOR2D0 U121 ( .A1(n10), .A2(n31), .Z(product[4]) );
  AN2D0 U122 ( .A1(n34), .A2(n138), .Z(n10) );
  CKXOR2D0 U123 ( .A1(n34), .A2(n138), .Z(product[3]) );
  CKND0 U124 ( .I(n155), .ZN(product[2]) );
  NR2D0 U125 ( .A1(n147), .A2(a[0]), .ZN(n34) );
  AN2D0 U126 ( .A1(n139), .A2(n42), .Z(n30) );
  CKXOR2D0 U127 ( .A1(n139), .A2(n42), .Z(n31) );
  AN2D0 U128 ( .A1(n140), .A2(n41), .Z(n28) );
  CKXOR2D0 U129 ( .A1(n140), .A2(n41), .Z(n29) );
  AN2D0 U130 ( .A1(n141), .A2(n40), .Z(n26) );
  CKXOR2D0 U131 ( .A1(n141), .A2(n40), .Z(n27) );
  AN2D0 U132 ( .A1(n142), .A2(n39), .Z(n24) );
  CKXOR2D0 U133 ( .A1(n142), .A2(n39), .Z(n25) );
  OR2D0 U134 ( .A1(n144), .A2(n143), .Z(n21) );
  XNR2D0 U135 ( .A1(n144), .A2(n143), .ZN(n22) );
  CKND0 U136 ( .I(n1), .ZN(product[13]) );
  CKXOR2D0 U137 ( .A1(n147), .A2(a[7]), .Z(n43) );
  NR2D0 U138 ( .A1(b[3]), .A2(n155), .ZN(n42) );
  OAI22D0 U139 ( .A1(n155), .A2(n147), .B1(b[3]), .B2(n154), .ZN(n41) );
  OAI22D0 U140 ( .A1(n154), .A2(n147), .B1(b[3]), .B2(n153), .ZN(n40) );
  OAI22D0 U141 ( .A1(n153), .A2(n147), .B1(b[3]), .B2(n152), .ZN(n39) );
  OAI22D0 U142 ( .A1(n151), .A2(n147), .B1(b[3]), .B2(n150), .ZN(n38) );
  OAI22D0 U143 ( .A1(n150), .A2(n147), .B1(b[3]), .B2(n149), .ZN(n37) );
  OAI22D0 U144 ( .A1(n152), .A2(n147), .B1(b[3]), .B2(n151), .ZN(n19) );
  OAI22D0 U145 ( .A1(b[3]), .A2(n148), .B1(n149), .B2(n147), .ZN(n13) );
endmodule


module oadm_fixed_divmul_root_opt_csd_1_16_14_16_7_53_2a ( x, y, divide_mode, 
        result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  input divide_mode;
  wire   x_midpoint_3_, y_midpoint_3_, x_residual_21_, y_residual_21_, N32,
         N33, N34, N35, N36, N37, N38, N39, N40, N41, N42, N43, N44, N57, N58,
         N59, N60, N61, N62, N63, N64, N65, N66, N67, N68, N69, n680, n70, n71,
         n72, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, sa_pos_sum_3_0_9_, sa_pos_sum_3_0_8_,
         sa_pos_sum_3_0_7_, sa_pos_sum_3_0_6_, sa_pos_sum_3_0_5_,
         sa_pos_sum_3_0_4_, sa_pos_sum_3_0_3_, sa_pos_sum_3_0_2_,
         sa_pos_sum_3_0_1_, sa_pos_sum_3_0_15_, sa_pos_sum_3_0_14_,
         sa_pos_sum_3_0_13_, sa_pos_sum_3_0_12_, sa_pos_sum_3_0_11_,
         sa_pos_sum_3_0_10_, sa_pos_sum_3_0_0_, sa_pos_sum_1_1_9_,
         sa_pos_sum_1_1_8_, sa_pos_sum_1_1_7_, sa_pos_sum_1_1_6_,
         sa_pos_sum_1_1_5_, sa_pos_sum_1_1_4_, sa_pos_sum_1_1_3_,
         sa_pos_sum_1_1_11_, sa_pos_sum_1_1_10_, sa_neg_sum_1_1_9_,
         sa_neg_sum_1_1_8_, sa_neg_sum_1_1_7_, sa_neg_sum_1_1_6_,
         sa_neg_sum_1_1_5_, sa_neg_sum_1_1_4_, sa_neg_sum_1_1_3_,
         sa_neg_sum_1_1_2_, sa_neg_sum_1_1_1_, sa_neg_sum_1_1_0_, N990, N980,
         N97, N960, N950, N940, N930, N920, N910, N900, N126, N125, N124, N123,
         N116, N115, N1020, N1010, N1000, mult_74_n15, mult_74_n13,
         mult_74_n10, mult_74_n9, mult_74_n3, mult_74_n2,
         add_2_root_sub_0_root_sub_187_carry_8_,
         add_2_root_sub_0_root_sub_187_carry_9_,
         add_2_root_sub_0_root_sub_187_carry_10_,
         add_2_root_sub_0_root_sub_187_carry_11_,
         add_2_root_sub_0_root_sub_187_carry_12_,
         add_2_root_sub_0_root_sub_187_carry_13_,
         add_2_root_sub_0_root_sub_187_SUM_6_,
         add_2_root_sub_0_root_sub_187_SUM_7_,
         add_2_root_sub_0_root_sub_187_SUM_8_,
         add_2_root_sub_0_root_sub_187_SUM_9_,
         add_2_root_sub_0_root_sub_187_SUM_10_,
         add_2_root_sub_0_root_sub_187_SUM_11_,
         add_2_root_sub_0_root_sub_187_SUM_12_,
         add_2_root_sub_0_root_sub_187_SUM_13_,
         add_2_root_sub_0_root_sub_187_SUM_14_,
         add_2_root_sub_0_root_sub_187_A_7_,
         add_2_root_sub_0_root_sub_187_A_8_,
         add_2_root_sub_0_root_sub_187_A_9_,
         add_2_root_sub_0_root_sub_187_A_10_,
         add_2_root_sub_0_root_sub_187_A_11_,
         add_2_root_sub_0_root_sub_187_A_12_,
         add_2_root_sub_0_root_sub_187_A_13_,
         add_2_root_sub_0_root_sub_187_A_14_,
         add_5_root_sub_0_root_sub_187_SUM_5_,
         add_5_root_sub_0_root_sub_187_SUM_6_,
         add_5_root_sub_0_root_sub_187_SUM_7_,
         add_5_root_sub_0_root_sub_187_SUM_8_,
         add_5_root_sub_0_root_sub_187_SUM_9_,
         add_5_root_sub_0_root_sub_187_SUM_10_,
         add_5_root_sub_0_root_sub_187_SUM_11_,
         add_5_root_sub_0_root_sub_187_SUM_12_,
         add_5_root_sub_0_root_sub_187_SUM_13_, n1, n2, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n25, n26, n27, n28, n29, n30, n320, n330, n340, n350, n360, n370,
         n380, n390, n400, n410, n420, n430, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n570, n580, n600;
  wire   [21:14] x_mantissa;
  wire   [21:14] y_mantissa;
  wire   [1:0] x_shared_residual;
  wire   [1:0] y_shared_residual;
  wire   [13:2] x_product;
  wire   [13:3] y_product;
  wire   [4:3] midpoint_sum;
  wire   [24:12] plane_value;
  wire   [13:5] sa_pos_t5;
  wire   [15:0] sa_difference;
  wire   [22:8] normalized_fraction;
  wire   [2:0] exponent_adjust;
  wire   [24:14] add_0_root_add_0_root_add_80_3_carry;
  wire   [24:14] add_1_root_add_0_root_add_80_3_carry;
  wire   [11:5] add_6_root_sub_0_root_sub_187_carry;
  wire   [13:7] add_5_root_sub_0_root_sub_187_carry;
  wire   [9:2] sub_7_root_sub_0_root_sub_187_carry;
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
        SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39;

  AN2XD1 U9 ( .A1(y_mantissa[15]), .A2(n330), .Z(y_shared_residual[1]) );
  AN2XD1 U10 ( .A1(y_mantissa[14]), .A2(n330), .Z(y_shared_residual[0]) );
  AN2XD1 U12 ( .A1(x_mantissa[15]), .A2(n330), .Z(x_shared_residual[1]) );
  AN2XD1 U13 ( .A1(x_mantissa[14]), .A2(n330), .Z(x_shared_residual[0]) );
  AN2XD1 U15 ( .A1(y_midpoint_3_), .A2(plane_value[24]), .Z(sa_pos_t5[13]) );
  AN2XD1 U16 ( .A1(y_midpoint_3_), .A2(plane_value[23]), .Z(sa_pos_t5[12]) );
  AN2XD1 U17 ( .A1(y_midpoint_3_), .A2(plane_value[22]), .Z(sa_pos_t5[11]) );
  AN2XD1 U18 ( .A1(y_midpoint_3_), .A2(plane_value[21]), .Z(sa_pos_t5[10]) );
  AN2XD1 U19 ( .A1(y_midpoint_3_), .A2(plane_value[20]), .Z(sa_pos_t5[9]) );
  AN2XD1 U20 ( .A1(y_midpoint_3_), .A2(plane_value[19]), .Z(sa_pos_t5[8]) );
  AN2XD1 U21 ( .A1(y_midpoint_3_), .A2(plane_value[18]), .Z(sa_pos_t5[7]) );
  AN2XD1 U22 ( .A1(y_midpoint_3_), .A2(plane_value[17]), .Z(sa_pos_t5[6]) );
  AN2XD1 U23 ( .A1(y_midpoint_3_), .A2(plane_value[16]), .Z(sa_pos_t5[5]) );
  AN2XD1 U111 ( .A1(midpoint_sum[4]), .A2(n330), .Z(N116) );
  AN2XD1 U112 ( .A1(midpoint_sum[3]), .A2(n330), .Z(N115) );
  fp32_normal_finite_wrapper fp_wrapper ( .x({x[31:14], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y({
        y[31:14], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .divide_mode(n320), .fraction_x({
        x_midpoint_3_, x_mantissa, SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13}), .fraction_y({y_midpoint_3_, y_mantissa, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27}), 
        .result_fraction({normalized_fraction, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0}), .exponent_adjust({exponent_adjust[2], 
        exponent_adjust[2], exponent_adjust[0]}), .result({result[31:8], 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31, 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35}) );
  oadm_fixed_divmul_root_opt_csd_1_16_14_16_7_53_2a_DW01_add_7 add_1_root_sub_0_root_sub_187 ( 
        .A({n2, n11, add_5_root_sub_0_root_sub_187_SUM_13_, 
        add_5_root_sub_0_root_sub_187_SUM_12_, 
        add_5_root_sub_0_root_sub_187_SUM_11_, 
        add_5_root_sub_0_root_sub_187_SUM_10_, 
        add_5_root_sub_0_root_sub_187_SUM_9_, 
        add_5_root_sub_0_root_sub_187_SUM_8_, 
        add_5_root_sub_0_root_sub_187_SUM_7_, 
        add_5_root_sub_0_root_sub_187_SUM_6_, 
        add_5_root_sub_0_root_sub_187_SUM_5_, sa_neg_sum_1_1_0_, n2, n2, n2, 
        n2}), .B({n3, n3, n3, n3, n3, n3, sa_neg_sum_1_1_9_, sa_neg_sum_1_1_8_, 
        sa_neg_sum_1_1_7_, sa_neg_sum_1_1_6_, sa_neg_sum_1_1_5_, 
        sa_neg_sum_1_1_4_, sa_neg_sum_1_1_3_, sa_neg_sum_1_1_2_, 
        sa_neg_sum_1_1_1_, sa_neg_sum_1_1_0_}), .CI(n2), .SUM({
        sa_pos_sum_3_0_15_, sa_pos_sum_3_0_14_, sa_pos_sum_3_0_13_, 
        sa_pos_sum_3_0_12_, sa_pos_sum_3_0_11_, sa_pos_sum_3_0_10_, 
        sa_pos_sum_3_0_9_, sa_pos_sum_3_0_8_, sa_pos_sum_3_0_7_, 
        sa_pos_sum_3_0_6_, sa_pos_sum_3_0_5_, sa_pos_sum_3_0_4_, 
        sa_pos_sum_3_0_3_, sa_pos_sum_3_0_2_, sa_pos_sum_3_0_1_, 
        sa_pos_sum_3_0_0_}) );
  oadm_fixed_divmul_root_opt_csd_1_16_14_16_7_53_2a_DW01_add_6 add_0_root_sub_0_root_sub_187 ( 
        .A({n8, add_2_root_sub_0_root_sub_187_SUM_14_, 
        add_2_root_sub_0_root_sub_187_SUM_13_, 
        add_2_root_sub_0_root_sub_187_SUM_12_, 
        add_2_root_sub_0_root_sub_187_SUM_11_, 
        add_2_root_sub_0_root_sub_187_SUM_10_, 
        add_2_root_sub_0_root_sub_187_SUM_9_, 
        add_2_root_sub_0_root_sub_187_SUM_8_, 
        add_2_root_sub_0_root_sub_187_SUM_7_, 
        add_2_root_sub_0_root_sub_187_SUM_6_, sa_pos_sum_1_1_5_, 
        sa_pos_sum_1_1_4_, sa_pos_sum_1_1_3_, sa_neg_sum_1_1_0_, n2, n2}), .B(
        {sa_pos_sum_3_0_15_, sa_pos_sum_3_0_14_, sa_pos_sum_3_0_13_, 
        sa_pos_sum_3_0_12_, sa_pos_sum_3_0_11_, sa_pos_sum_3_0_10_, 
        sa_pos_sum_3_0_9_, sa_pos_sum_3_0_8_, sa_pos_sum_3_0_7_, 
        sa_pos_sum_3_0_6_, sa_pos_sum_3_0_5_, sa_pos_sum_3_0_4_, 
        sa_pos_sum_3_0_3_, sa_pos_sum_3_0_2_, sa_pos_sum_3_0_1_, 
        sa_pos_sum_3_0_0_}), .CI(n2), .SUM(sa_difference) );
  oadm_fixed_divmul_root_opt_csd_1_16_14_16_7_53_2a_DW_mult_tc_1 mult_61 ( .a(
        {x_residual_21_, x_mantissa[20:16], x_shared_residual}), .b({n2, n1, 
        y_midpoint_3_, n1, n2, n2}), .product({x_product, 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37}) );
  oadm_fixed_divmul_root_opt_csd_1_16_14_16_7_53_2a_DW_mult_tc_0 mult_63 ( .a(
        {y_residual_21_, y_mantissa[20:16], y_shared_residual}), .b({n2, n1, 
        x_midpoint_3_, n1, n2, n2}), .product({y_product, N32, 
        SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39}) );
  TIEH U3 ( .Z(n1) );
  TIEL U4 ( .ZN(n2) );
  NR2D1 U6 ( .A1(sub_7_root_sub_0_root_sub_187_carry[9]), .A2(sa_pos_t5[13]), 
        .ZN(n3) );
  AN2XD1 U7 ( .A1(sa_pos_sum_1_1_6_), .A2(sa_neg_sum_1_1_0_), .Z(n4) );
  AN2XD1 U8 ( .A1(x_product[2]), .A2(N115), .Z(n5) );
  AN2XD1 U11 ( .A1(add_2_root_sub_0_root_sub_187_A_7_), .A2(sa_pos_t5[5]), .Z(
        n6) );
  AN2XD1 U14 ( .A1(add_6_root_sub_0_root_sub_187_carry[11]), .A2(sa_pos_t5[13]), .Z(n7) );
  AN2XD1 U24 ( .A1(n27), .A2(add_2_root_sub_0_root_sub_187_A_14_), .Z(n8) );
  AN2XD1 U26 ( .A1(sa_pos_t5[5]), .A2(add_2_root_sub_0_root_sub_187_A_7_), .Z(
        n10) );
  AN2XD1 U27 ( .A1(add_5_root_sub_0_root_sub_187_carry[13]), .A2(sa_pos_t5[13]), .Z(n11) );
  INVD1 U28 ( .I(x_midpoint_3_), .ZN(n29) );
  AN2XD1 U30 ( .A1(n20), .A2(n47), .Z(n13) );
  ND2D1 U31 ( .A1(n570), .A2(n90), .ZN(exponent_adjust[2]) );
  INVD1 U32 ( .I(n72), .ZN(n570) );
  AN2XD1 U33 ( .A1(n15), .A2(n55), .Z(n14) );
  AN2XD1 U35 ( .A1(n16), .A2(n54), .Z(n15) );
  AN2XD1 U36 ( .A1(n17), .A2(n53), .Z(n16) );
  INVD1 U37 ( .I(y_product[4]), .ZN(n47) );
  AN2XD1 U38 ( .A1(n18), .A2(n52), .Z(n17) );
  AN2XD1 U39 ( .A1(n19), .A2(n51), .Z(n18) );
  AN2XD1 U40 ( .A1(n21), .A2(n50), .Z(n19) );
  AN2XD1 U42 ( .A1(n22), .A2(n49), .Z(n21) );
  AN2XD1 U43 ( .A1(n13), .A2(n48), .Z(n22) );
  INVD1 U45 ( .I(y_product[12]), .ZN(n55) );
  FA1D0 U46 ( .A(sa_pos_t5[12]), .B(n430), .CI(
        sub_7_root_sub_0_root_sub_187_carry[8]), .CO(
        sub_7_root_sub_0_root_sub_187_carry[9]), .S(sa_neg_sum_1_1_8_) );
  INVD1 U47 ( .I(add_2_root_sub_0_root_sub_187_A_14_), .ZN(n430) );
  INVD1 U48 ( .I(n70), .ZN(n580) );
  FA1D0 U49 ( .A(sa_pos_t5[11]), .B(n420), .CI(
        sub_7_root_sub_0_root_sub_187_carry[7]), .CO(
        sub_7_root_sub_0_root_sub_187_carry[8]), .S(sa_neg_sum_1_1_7_) );
  INVD1 U50 ( .I(add_2_root_sub_0_root_sub_187_A_13_), .ZN(n420) );
  INVD1 U51 ( .I(y_product[11]), .ZN(n54) );
  INVD1 U52 ( .I(y_product[10]), .ZN(n53) );
  FA1D0 U53 ( .A(sa_pos_t5[10]), .B(n410), .CI(
        sub_7_root_sub_0_root_sub_187_carry[6]), .CO(
        sub_7_root_sub_0_root_sub_187_carry[7]), .S(sa_neg_sum_1_1_6_) );
  INVD1 U54 ( .I(add_2_root_sub_0_root_sub_187_A_12_), .ZN(n410) );
  INVD1 U55 ( .I(y_product[9]), .ZN(n52) );
  FA1D0 U56 ( .A(sa_pos_t5[9]), .B(n400), .CI(
        sub_7_root_sub_0_root_sub_187_carry[5]), .CO(
        sub_7_root_sub_0_root_sub_187_carry[6]), .S(sa_neg_sum_1_1_5_) );
  INVD1 U57 ( .I(add_2_root_sub_0_root_sub_187_A_11_), .ZN(n400) );
  INVD1 U58 ( .I(y_product[8]), .ZN(n51) );
  FA1D0 U59 ( .A(sa_pos_t5[8]), .B(n390), .CI(
        sub_7_root_sub_0_root_sub_187_carry[4]), .CO(
        sub_7_root_sub_0_root_sub_187_carry[5]), .S(sa_neg_sum_1_1_4_) );
  INVD1 U60 ( .I(add_2_root_sub_0_root_sub_187_A_10_), .ZN(n390) );
  INVD1 U61 ( .I(y_product[7]), .ZN(n50) );
  INVD1 U63 ( .I(y_product[6]), .ZN(n49) );
  FA1D0 U64 ( .A(sa_pos_t5[7]), .B(n380), .CI(
        sub_7_root_sub_0_root_sub_187_carry[3]), .CO(
        sub_7_root_sub_0_root_sub_187_carry[4]), .S(sa_neg_sum_1_1_3_) );
  INVD1 U65 ( .I(add_2_root_sub_0_root_sub_187_A_9_), .ZN(n380) );
  FA1D0 U66 ( .A(sa_pos_t5[6]), .B(n370), .CI(
        sub_7_root_sub_0_root_sub_187_carry[2]), .CO(
        sub_7_root_sub_0_root_sub_187_carry[3]), .S(sa_neg_sum_1_1_2_) );
  INVD1 U67 ( .I(add_2_root_sub_0_root_sub_187_A_8_), .ZN(n370) );
  FA1D0 U68 ( .A(sa_pos_t5[5]), .B(n360), .CI(n350), .CO(
        sub_7_root_sub_0_root_sub_187_carry[2]), .S(sa_neg_sum_1_1_1_) );
  INVD1 U69 ( .I(sa_neg_sum_1_1_0_), .ZN(n350) );
  INVD1 U70 ( .I(add_2_root_sub_0_root_sub_187_A_7_), .ZN(n360) );
  ND3D1 U71 ( .A1(n88), .A2(n87), .A3(n70), .ZN(n90) );
  INVD1 U72 ( .I(y_product[5]), .ZN(n48) );
  ND2D1 U73 ( .A1(n70), .A2(n570), .ZN(exponent_adjust[0]) );
  AN2XD1 U75 ( .A1(add_1_root_add_0_root_add_80_3_carry[15]), .A2(x_product[5]), .Z(n23) );
  AN2XD1 U77 ( .A1(n26), .A2(x_product[7]), .Z(n25) );
  AN2XD1 U78 ( .A1(n23), .A2(x_product[6]), .Z(n26) );
  FA1D0 U79 ( .A(add_2_root_sub_0_root_sub_187_A_14_), .B(sa_pos_t5[12]), .CI(
        add_6_root_sub_0_root_sub_187_carry[10]), .CO(
        add_6_root_sub_0_root_sub_187_carry[11]), .S(sa_pos_sum_1_1_10_) );
  FA1D0 U80 ( .A(add_2_root_sub_0_root_sub_187_A_12_), .B(n7), .CI(
        add_2_root_sub_0_root_sub_187_carry_12_), .CO(
        add_2_root_sub_0_root_sub_187_carry_13_), .S(
        add_2_root_sub_0_root_sub_187_SUM_12_) );
  FA1D0 U81 ( .A(add_2_root_sub_0_root_sub_187_A_11_), .B(sa_pos_sum_1_1_11_), 
        .CI(add_2_root_sub_0_root_sub_187_carry_11_), .CO(
        add_2_root_sub_0_root_sub_187_carry_12_), .S(
        add_2_root_sub_0_root_sub_187_SUM_11_) );
  FA1D0 U82 ( .A(add_2_root_sub_0_root_sub_187_A_10_), .B(sa_pos_sum_1_1_10_), 
        .CI(add_2_root_sub_0_root_sub_187_carry_10_), .CO(
        add_2_root_sub_0_root_sub_187_carry_11_), .S(
        add_2_root_sub_0_root_sub_187_SUM_10_) );
  FA1D0 U83 ( .A(add_2_root_sub_0_root_sub_187_A_13_), .B(sa_pos_t5[11]), .CI(
        add_6_root_sub_0_root_sub_187_carry[9]), .CO(
        add_6_root_sub_0_root_sub_187_carry[10]), .S(sa_pos_sum_1_1_9_) );
  AN2XD1 U84 ( .A1(add_2_root_sub_0_root_sub_187_carry_13_), .A2(
        add_2_root_sub_0_root_sub_187_A_13_), .Z(n27) );
  FA1D0 U85 ( .A(add_2_root_sub_0_root_sub_187_A_9_), .B(sa_pos_sum_1_1_9_), 
        .CI(add_2_root_sub_0_root_sub_187_carry_9_), .CO(
        add_2_root_sub_0_root_sub_187_carry_10_), .S(
        add_2_root_sub_0_root_sub_187_SUM_9_) );
  FA1D0 U86 ( .A(add_2_root_sub_0_root_sub_187_A_12_), .B(sa_pos_t5[10]), .CI(
        add_6_root_sub_0_root_sub_187_carry[8]), .CO(
        add_6_root_sub_0_root_sub_187_carry[9]), .S(sa_pos_sum_1_1_8_) );
  FA1D0 U87 ( .A(add_2_root_sub_0_root_sub_187_A_8_), .B(sa_pos_sum_1_1_8_), 
        .CI(add_2_root_sub_0_root_sub_187_carry_8_), .CO(
        add_2_root_sub_0_root_sub_187_carry_9_), .S(
        add_2_root_sub_0_root_sub_187_SUM_8_) );
  FA1D0 U88 ( .A(add_2_root_sub_0_root_sub_187_A_11_), .B(sa_pos_t5[9]), .CI(
        add_6_root_sub_0_root_sub_187_carry[7]), .CO(
        add_6_root_sub_0_root_sub_187_carry[8]), .S(sa_pos_sum_1_1_7_) );
  FA1D0 U89 ( .A(add_2_root_sub_0_root_sub_187_A_7_), .B(sa_pos_sum_1_1_7_), 
        .CI(n4), .CO(add_2_root_sub_0_root_sub_187_carry_8_), .S(
        add_2_root_sub_0_root_sub_187_SUM_7_) );
  FA1D0 U90 ( .A(add_2_root_sub_0_root_sub_187_A_10_), .B(sa_pos_t5[8]), .CI(
        add_6_root_sub_0_root_sub_187_carry[6]), .CO(
        add_6_root_sub_0_root_sub_187_carry[7]), .S(sa_pos_sum_1_1_6_) );
  FA1D0 U91 ( .A(add_2_root_sub_0_root_sub_187_A_9_), .B(sa_pos_t5[7]), .CI(
        add_6_root_sub_0_root_sub_187_carry[5]), .CO(
        add_6_root_sub_0_root_sub_187_carry[6]), .S(sa_pos_sum_1_1_5_) );
  FA1D0 U93 ( .A(add_2_root_sub_0_root_sub_187_A_8_), .B(sa_pos_t5[6]), .CI(n6), .CO(add_6_root_sub_0_root_sub_187_carry[5]), .S(sa_pos_sum_1_1_4_) );
  FA1D0 U94 ( .A(add_2_root_sub_0_root_sub_187_A_14_), .B(sa_pos_t5[12]), .CI(
        add_5_root_sub_0_root_sub_187_carry[12]), .CO(
        add_5_root_sub_0_root_sub_187_carry[13]), .S(
        add_5_root_sub_0_root_sub_187_SUM_12_) );
  FA1D0 U95 ( .A(add_2_root_sub_0_root_sub_187_A_13_), .B(sa_pos_t5[11]), .CI(
        add_5_root_sub_0_root_sub_187_carry[11]), .CO(
        add_5_root_sub_0_root_sub_187_carry[12]), .S(
        add_5_root_sub_0_root_sub_187_SUM_11_) );
  FA1D0 U96 ( .A(add_2_root_sub_0_root_sub_187_A_12_), .B(sa_pos_t5[10]), .CI(
        add_5_root_sub_0_root_sub_187_carry[10]), .CO(
        add_5_root_sub_0_root_sub_187_carry[11]), .S(
        add_5_root_sub_0_root_sub_187_SUM_10_) );
  FA1D0 U97 ( .A(add_2_root_sub_0_root_sub_187_A_11_), .B(sa_pos_t5[9]), .CI(
        add_5_root_sub_0_root_sub_187_carry[9]), .CO(
        add_5_root_sub_0_root_sub_187_carry[10]), .S(
        add_5_root_sub_0_root_sub_187_SUM_9_) );
  FA1D0 U98 ( .A(add_2_root_sub_0_root_sub_187_A_10_), .B(sa_pos_t5[8]), .CI(
        add_5_root_sub_0_root_sub_187_carry[8]), .CO(
        add_5_root_sub_0_root_sub_187_carry[9]), .S(
        add_5_root_sub_0_root_sub_187_SUM_8_) );
  FA1D0 U99 ( .A(add_2_root_sub_0_root_sub_187_A_9_), .B(sa_pos_t5[7]), .CI(
        add_5_root_sub_0_root_sub_187_carry[7]), .CO(
        add_5_root_sub_0_root_sub_187_carry[8]), .S(
        add_5_root_sub_0_root_sub_187_SUM_7_) );
  FA1D0 U100 ( .A(add_2_root_sub_0_root_sub_187_A_8_), .B(sa_pos_t5[6]), .CI(
        n10), .CO(add_5_root_sub_0_root_sub_187_carry[7]), .S(
        add_5_root_sub_0_root_sub_187_SUM_6_) );
  OAI221D0 U101 ( .A1(n111), .A2(n28), .B1(n70), .B2(n109), .C(n113), .ZN(
        normalized_fraction[11]) );
  OA22D0 U102 ( .A1(n90), .A2(n680), .B1(n570), .B2(n71), .Z(n113) );
  OAI221D0 U103 ( .A1(n109), .A2(n28), .B1(n70), .B2(n107), .C(n112), .ZN(
        normalized_fraction[12]) );
  OA22D0 U104 ( .A1(n90), .A2(n71), .B1(n570), .B2(n111), .Z(n112) );
  OAI221D0 U105 ( .A1(n105), .A2(n28), .B1(n70), .B2(n103), .C(n108), .ZN(
        normalized_fraction[14]) );
  OA22D0 U106 ( .A1(n90), .A2(n109), .B1(n570), .B2(n107), .Z(n108) );
  OAI221D0 U107 ( .A1(n103), .A2(n28), .B1(n70), .B2(n101), .C(n106), .ZN(
        normalized_fraction[15]) );
  OA22D0 U108 ( .A1(n90), .A2(n107), .B1(n570), .B2(n105), .Z(n106) );
  OAI221D0 U109 ( .A1(n107), .A2(n28), .B1(n70), .B2(n105), .C(n110), .ZN(
        normalized_fraction[13]) );
  OA22D0 U110 ( .A1(n90), .A2(n111), .B1(n570), .B2(n109), .Z(n110) );
  OAI221D0 U113 ( .A1(n92), .A2(n28), .B1(n70), .B2(n87), .C(n93), .ZN(
        normalized_fraction[21]) );
  OA22D0 U114 ( .A1(n90), .A2(n94), .B1(n570), .B2(n91), .Z(n93) );
  OAI221D0 U115 ( .A1(n87), .A2(n28), .B1(n70), .B2(n88), .C(n89), .ZN(
        normalized_fraction[22]) );
  OA22D0 U116 ( .A1(n90), .A2(n91), .B1(n570), .B2(n92), .Z(n89) );
  OAI221D0 U117 ( .A1(n101), .A2(n28), .B1(n70), .B2(n99), .C(n104), .ZN(
        normalized_fraction[16]) );
  OA22D0 U118 ( .A1(n90), .A2(n105), .B1(n570), .B2(n103), .Z(n104) );
  OAI221D0 U119 ( .A1(n99), .A2(n28), .B1(n70), .B2(n96), .C(n102), .ZN(
        normalized_fraction[17]) );
  OA22D0 U120 ( .A1(n90), .A2(n103), .B1(n570), .B2(n101), .Z(n102) );
  OAI221D0 U121 ( .A1(n96), .A2(n28), .B1(n70), .B2(n94), .C(n100), .ZN(
        normalized_fraction[18]) );
  OA22D0 U122 ( .A1(n90), .A2(n101), .B1(n570), .B2(n99), .Z(n100) );
  OAI221D0 U123 ( .A1(n94), .A2(n28), .B1(n70), .B2(n91), .C(n98), .ZN(
        normalized_fraction[19]) );
  OA22D0 U124 ( .A1(n90), .A2(n99), .B1(n570), .B2(n96), .Z(n98) );
  OAI221D0 U125 ( .A1(n91), .A2(n28), .B1(n70), .B2(n92), .C(n95), .ZN(
        normalized_fraction[20]) );
  OA22D0 U126 ( .A1(n90), .A2(n96), .B1(n570), .B2(n94), .Z(n95) );
  OAI221D0 U127 ( .A1(n71), .A2(n28), .B1(n70), .B2(n111), .C(n114), .ZN(
        normalized_fraction[10]) );
  OR2D1 U130 ( .A1(n580), .A2(n88), .Z(n28) );
  OAI22D1 U131 ( .A1(n680), .A2(n28), .B1(n70), .B2(n71), .ZN(
        normalized_fraction[9]) );
  NR2D1 U132 ( .A1(n70), .A2(n680), .ZN(normalized_fraction[8]) );
  ND2D1 U133 ( .A1(sa_difference[2]), .A2(n320), .ZN(n111) );
  ND2D1 U134 ( .A1(sa_difference[1]), .A2(n320), .ZN(n71) );
  ND2D1 U135 ( .A1(sa_difference[0]), .A2(n320), .ZN(n680) );
  INR2D1 U136 ( .A1(plane_value[24]), .B1(y_midpoint_3_), .ZN(
        add_2_root_sub_0_root_sub_187_A_14_) );
  XOR3D1 U137 ( .A1(N1020), .A2(N69), .A3(
        add_0_root_add_0_root_add_80_3_carry[24]), .Z(plane_value[24]) );
  AO22D0 U138 ( .A1(n330), .A2(y_product[13]), .B1(N44), .B2(n320), .Z(N69) );
  AOI22D1 U140 ( .A1(n330), .A2(plane_value[24]), .B1(sa_difference[15]), .B2(
        n320), .ZN(n70) );
  FA1D0 U141 ( .A(N1000), .B(N67), .CI(
        add_0_root_add_0_root_add_80_3_carry[22]), .CO(
        add_0_root_add_0_root_add_80_3_carry[23]), .S(plane_value[22]) );
  AO22D0 U142 ( .A1(y_product[12]), .A2(n330), .B1(N42), .B2(n320), .Z(N67) );
  FA1D0 U143 ( .A(N1010), .B(N68), .CI(
        add_0_root_add_0_root_add_80_3_carry[23]), .CO(
        add_0_root_add_0_root_add_80_3_carry[24]), .S(plane_value[23]) );
  AO22D0 U144 ( .A1(n330), .A2(y_product[13]), .B1(N43), .B2(n320), .Z(N68) );
  INR2D1 U145 ( .A1(plane_value[23]), .B1(y_midpoint_3_), .ZN(
        add_2_root_sub_0_root_sub_187_A_13_) );
  FA1D0 U146 ( .A(N126), .B(x_product[13]), .CI(
        add_1_root_add_0_root_add_80_3_carry[23]), .CO(
        add_1_root_add_0_root_add_80_3_carry[24]), .S(N1010) );
  FA1D0 U147 ( .A(N125), .B(x_product[12]), .CI(
        add_1_root_add_0_root_add_80_3_carry[22]), .CO(
        add_1_root_add_0_root_add_80_3_carry[23]), .S(N1000) );
  FA1D0 U148 ( .A(N990), .B(N66), .CI(add_0_root_add_0_root_add_80_3_carry[21]), .CO(add_0_root_add_0_root_add_80_3_carry[22]), .S(plane_value[21]) );
  AO22D0 U149 ( .A1(y_product[11]), .A2(n330), .B1(N41), .B2(n320), .Z(N66) );
  FA1D0 U150 ( .A(N980), .B(N65), .CI(add_0_root_add_0_root_add_80_3_carry[20]), .CO(add_0_root_add_0_root_add_80_3_carry[21]), .S(plane_value[20]) );
  AO22D0 U151 ( .A1(y_product[10]), .A2(n330), .B1(N40), .B2(n320), .Z(N65) );
  FA1D0 U152 ( .A(N124), .B(x_product[11]), .CI(
        add_1_root_add_0_root_add_80_3_carry[21]), .CO(
        add_1_root_add_0_root_add_80_3_carry[22]), .S(N990) );
  INR2D1 U153 ( .A1(plane_value[22]), .B1(y_midpoint_3_), .ZN(
        add_2_root_sub_0_root_sub_187_A_12_) );
  FA1D0 U154 ( .A(N97), .B(N64), .CI(add_0_root_add_0_root_add_80_3_carry[19]), 
        .CO(add_0_root_add_0_root_add_80_3_carry[20]), .S(plane_value[19]) );
  AO22D0 U155 ( .A1(y_product[9]), .A2(n330), .B1(N39), .B2(n320), .Z(N64) );
  INR2D1 U156 ( .A1(plane_value[21]), .B1(y_midpoint_3_), .ZN(
        add_2_root_sub_0_root_sub_187_A_11_) );
  FA1D0 U157 ( .A(N960), .B(N63), .CI(add_0_root_add_0_root_add_80_3_carry[18]), .CO(add_0_root_add_0_root_add_80_3_carry[19]), .S(plane_value[18]) );
  AO22D0 U158 ( .A1(y_product[8]), .A2(n330), .B1(N38), .B2(n320), .Z(N63) );
  AOI22D1 U159 ( .A1(n330), .A2(plane_value[23]), .B1(sa_difference[14]), .B2(
        n320), .ZN(n88) );
  INR2D1 U160 ( .A1(plane_value[20]), .B1(y_midpoint_3_), .ZN(
        add_2_root_sub_0_root_sub_187_A_10_) );
  FA1D0 U161 ( .A(N950), .B(N62), .CI(add_0_root_add_0_root_add_80_3_carry[17]), .CO(add_0_root_add_0_root_add_80_3_carry[18]), .S(plane_value[17]) );
  AO22D0 U162 ( .A1(y_product[7]), .A2(n330), .B1(N37), .B2(n320), .Z(N62) );
  FA1D0 U163 ( .A(N910), .B(N58), .CI(n9), .CO(
        add_0_root_add_0_root_add_80_3_carry[14]), .S(plane_value[13]) );
  AO22D0 U164 ( .A1(y_product[3]), .A2(n330), .B1(N33), .B2(n320), .Z(N58) );
  FA1D0 U165 ( .A(N920), .B(N59), .CI(add_0_root_add_0_root_add_80_3_carry[14]), .CO(add_0_root_add_0_root_add_80_3_carry[15]), .S(plane_value[14]) );
  AO22D0 U166 ( .A1(y_product[4]), .A2(n330), .B1(N34), .B2(n320), .Z(N59) );
  FA1D0 U167 ( .A(N930), .B(N60), .CI(add_0_root_add_0_root_add_80_3_carry[15]), .CO(add_0_root_add_0_root_add_80_3_carry[16]), .S(plane_value[15]) );
  AO22D0 U168 ( .A1(y_product[5]), .A2(n330), .B1(N35), .B2(n320), .Z(N60) );
  FA1D0 U169 ( .A(N940), .B(N61), .CI(add_0_root_add_0_root_add_80_3_carry[16]), .CO(add_0_root_add_0_root_add_80_3_carry[17]), .S(plane_value[16]) );
  AO22D0 U170 ( .A1(y_product[6]), .A2(n330), .B1(N36), .B2(n320), .Z(N61) );
  INR2D1 U171 ( .A1(plane_value[19]), .B1(y_midpoint_3_), .ZN(
        add_2_root_sub_0_root_sub_187_A_9_) );
  INR2D1 U172 ( .A1(plane_value[17]), .B1(y_midpoint_3_), .ZN(
        add_2_root_sub_0_root_sub_187_A_7_) );
  INR2D1 U173 ( .A1(plane_value[18]), .B1(y_midpoint_3_), .ZN(
        add_2_root_sub_0_root_sub_187_A_8_) );
  FA1D0 U174 ( .A(N116), .B(x_product[3]), .CI(n5), .CO(
        add_1_root_add_0_root_add_80_3_carry[14]), .S(N910) );
  FA1D0 U175 ( .A(n330), .B(x_product[4]), .CI(
        add_1_root_add_0_root_add_80_3_carry[14]), .CO(
        add_1_root_add_0_root_add_80_3_carry[15]), .S(N920) );
  AOI22D1 U176 ( .A1(n330), .A2(plane_value[22]), .B1(sa_difference[13]), .B2(
        n320), .ZN(n87) );
  INR2D1 U177 ( .A1(plane_value[16]), .B1(y_midpoint_3_), .ZN(
        sa_neg_sum_1_1_0_) );
  INVD1 U179 ( .I(n330), .ZN(n320) );
  AOI22D1 U181 ( .A1(n330), .A2(plane_value[21]), .B1(sa_difference[12]), .B2(
        n320), .ZN(n92) );
  AOI22D1 U182 ( .A1(n330), .A2(plane_value[20]), .B1(sa_difference[11]), .B2(
        n320), .ZN(n91) );
  AOI22D1 U183 ( .A1(n330), .A2(plane_value[19]), .B1(sa_difference[10]), .B2(
        n320), .ZN(n94) );
  AOI22D1 U184 ( .A1(n330), .A2(plane_value[18]), .B1(sa_difference[9]), .B2(
        n320), .ZN(n96) );
  AOI22D1 U185 ( .A1(n330), .A2(plane_value[17]), .B1(sa_difference[8]), .B2(
        n320), .ZN(n99) );
  AOI22D1 U186 ( .A1(n330), .A2(plane_value[16]), .B1(sa_difference[7]), .B2(
        n320), .ZN(n101) );
  AOI22D1 U187 ( .A1(sa_difference[6]), .A2(n320), .B1(plane_value[15]), .B2(
        n330), .ZN(n103) );
  AOI22D1 U188 ( .A1(sa_difference[5]), .A2(n320), .B1(plane_value[14]), .B2(
        n330), .ZN(n105) );
  AOI22D1 U189 ( .A1(sa_difference[4]), .A2(n320), .B1(plane_value[13]), .B2(
        n330), .ZN(n107) );
  AOI22D1 U190 ( .A1(sa_difference[3]), .A2(n320), .B1(plane_value[12]), .B2(
        n330), .ZN(n109) );
  FA1D0 U191 ( .A(N123), .B(x_product[10]), .CI(
        add_1_root_add_0_root_add_80_3_carry[20]), .CO(
        add_1_root_add_0_root_add_80_3_carry[21]), .S(N980) );
  IND2D1 U194 ( .A1(y_midpoint_3_), .B1(n29), .ZN(midpoint_sum[4]) );
  ND2D1 U195 ( .A1(n29), .A2(n340), .ZN(mult_74_n9) );
  INVD1 U196 ( .I(divide_mode), .ZN(n330) );
  INVD1 U197 ( .I(y_midpoint_3_), .ZN(n340) );
  INVD1 U198 ( .I(y_mantissa[21]), .ZN(y_residual_21_) );
  INVD1 U199 ( .I(x_mantissa[21]), .ZN(x_residual_21_) );
  XNR2D1 U200 ( .A1(y_midpoint_3_), .A2(x_midpoint_3_), .ZN(midpoint_sum[3])
         );
  XNR2D1 U202 ( .A1(sub_7_root_sub_0_root_sub_187_carry[9]), .A2(sa_pos_t5[13]), .ZN(sa_neg_sum_1_1_9_) );
  CKXOR2D1 U203 ( .A1(n45), .A2(n46), .Z(N33) );
  CKXOR2D1 U204 ( .A1(n20), .A2(n47), .Z(N34) );
  CKXOR2D1 U205 ( .A1(n13), .A2(n48), .Z(N35) );
  CKXOR2D1 U206 ( .A1(n22), .A2(n49), .Z(N36) );
  CKXOR2D1 U207 ( .A1(n21), .A2(n50), .Z(N37) );
  CKXOR2D1 U208 ( .A1(n19), .A2(n51), .Z(N38) );
  CKXOR2D1 U209 ( .A1(n18), .A2(n52), .Z(N39) );
  CKXOR2D1 U210 ( .A1(n17), .A2(n53), .Z(N40) );
  CKXOR2D1 U211 ( .A1(n16), .A2(n54), .Z(N41) );
  CKXOR2D1 U212 ( .A1(n15), .A2(n55), .Z(N42) );
  CKXOR2D1 U213 ( .A1(n14), .A2(n56), .Z(N43) );
  CKXOR2D1 U215 ( .A1(N57), .A2(N900), .Z(plane_value[12]) );
  CKXOR2D1 U217 ( .A1(add_1_root_add_0_root_add_80_3_carry[15]), .A2(
        x_product[5]), .Z(N930) );
  CKXOR2D1 U218 ( .A1(n23), .A2(x_product[6]), .Z(N940) );
  CKXOR2D1 U219 ( .A1(n26), .A2(x_product[7]), .Z(N950) );
  CKXOR2D1 U220 ( .A1(n25), .A2(x_product[8]), .Z(N960) );
  CKXOR2D1 U221 ( .A1(sa_pos_sum_1_1_6_), .A2(sa_neg_sum_1_1_0_), .Z(
        add_2_root_sub_0_root_sub_187_SUM_6_) );
  CKXOR2D1 U222 ( .A1(add_2_root_sub_0_root_sub_187_carry_13_), .A2(
        add_2_root_sub_0_root_sub_187_A_13_), .Z(
        add_2_root_sub_0_root_sub_187_SUM_13_) );
  CKXOR2D1 U223 ( .A1(n27), .A2(add_2_root_sub_0_root_sub_187_A_14_), .Z(
        add_2_root_sub_0_root_sub_187_SUM_14_) );
  CKXOR2D1 U224 ( .A1(sa_pos_t5[5]), .A2(add_2_root_sub_0_root_sub_187_A_7_), 
        .Z(sa_pos_sum_1_1_3_) );
  CKXOR2D1 U225 ( .A1(add_6_root_sub_0_root_sub_187_carry[11]), .A2(
        sa_pos_t5[13]), .Z(sa_pos_sum_1_1_11_) );
  CKXOR2D1 U226 ( .A1(sa_pos_t5[5]), .A2(add_2_root_sub_0_root_sub_187_A_7_), 
        .Z(add_5_root_sub_0_root_sub_187_SUM_5_) );
  CKXOR2D1 U227 ( .A1(add_5_root_sub_0_root_sub_187_carry[13]), .A2(
        sa_pos_t5[13]), .Z(add_5_root_sub_0_root_sub_187_SUM_13_) );
  NR2D0 U228 ( .A1(n340), .A2(n29), .ZN(mult_74_n13) );
  CKXOR2D0 U229 ( .A1(x_midpoint_3_), .A2(y_midpoint_3_), .Z(N123) );
  AN2D0 U230 ( .A1(x_midpoint_3_), .A2(y_midpoint_3_), .Z(mult_74_n15) );
  CKXOR2D0 U231 ( .A1(mult_74_n13), .A2(mult_74_n15), .Z(N124) );
  AN2D0 U232 ( .A1(mult_74_n13), .A2(mult_74_n15), .Z(mult_74_n3) );
  CKXOR2D0 U233 ( .A1(mult_74_n3), .A2(mult_74_n10), .Z(N125) );
  XNR2D1 U235 ( .A1(mult_74_n2), .A2(mult_74_n9), .ZN(N126) );
  XNR2D1 U236 ( .A1(x_midpoint_3_), .A2(y_midpoint_3_), .ZN(mult_74_n10) );
  IND2D0 U5 ( .A1(n680), .B1(n72), .ZN(n114) );
  INR3D0 U25 ( .A1(n88), .B1(n580), .B2(n87), .ZN(n72) );
  XNR3D0 U29 ( .A1(add_1_root_add_0_root_add_80_3_carry[24]), .A2(
        x_product[13]), .A3(n600), .ZN(N1020) );
  NR2D0 U34 ( .A1(mult_74_n2), .A2(mult_74_n9), .ZN(n600) );
  AN2D0 U41 ( .A1(mult_74_n10), .A2(mult_74_n3), .Z(mult_74_n2) );
  CKND0 U44 ( .I(y_product[13]), .ZN(n56) );
  NR2D0 U62 ( .A1(y_product[13]), .A2(n14), .ZN(N44) );
  IND2D0 U74 ( .A1(x_product[9]), .B1(n30), .ZN(
        add_1_root_add_0_root_add_80_3_carry[20]) );
  CKND2D0 U76 ( .A1(x_product[8]), .A2(n25), .ZN(n30) );
  CKXOR2D0 U92 ( .A1(x_product[9]), .A2(n30), .Z(N97) );
  AN2D0 U128 ( .A1(N900), .A2(N57), .Z(n9) );
  OA21D0 U129 ( .A1(n320), .A2(n330), .B(N32), .Z(N57) );
  CKXOR2D0 U139 ( .A1(x_product[2]), .A2(N115), .Z(N900) );
  CKND0 U178 ( .I(N32), .ZN(n45) );
  CKND0 U180 ( .I(y_product[3]), .ZN(n46) );
  NR2D0 U192 ( .A1(N32), .A2(y_product[3]), .ZN(n20) );
endmodule


module oadm_fixed_l1_divmul_root_opt_csd ( x, y, divide_mode, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  input divide_mode;

  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7;
  assign result[0] = 1'b0;
  assign result[1] = 1'b0;
  assign result[2] = 1'b0;
  assign result[3] = 1'b0;
  assign result[4] = 1'b0;
  assign result[5] = 1'b0;
  assign result[6] = 1'b0;
  assign result[7] = 1'b0;

  oadm_fixed_divmul_root_opt_csd_1_16_14_16_7_53_2a implementation ( .x({
        x[31:14], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .y({y[31:14], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .divide_mode(
        divide_mode), .result({result[31:8], SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7}) );
endmodule

