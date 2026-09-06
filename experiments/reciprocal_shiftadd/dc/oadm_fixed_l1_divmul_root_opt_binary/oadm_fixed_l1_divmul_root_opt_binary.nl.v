/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Sun Sep  6 00:14:38 2026
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
  INVD1 U33 ( .I(divide_mode), .ZN(n77) );
  CKBD1 U34 ( .I(result_fraction[11]), .Z(result[11]) );
  CKBD1 U35 ( .I(result_fraction[13]), .Z(result[13]) );
  CKBD1 U36 ( .I(result_fraction[14]), .Z(result[14]) );
  CKBD1 U37 ( .I(result_fraction[15]), .Z(result[15]) );
  CKBD1 U38 ( .I(result_fraction[12]), .Z(result[12]) );
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


module oadm_fixed_divmul_root_opt_binary_1_16_14_16_7_53_2a_DW01_add_6 ( A, B, 
        CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [15:3] carry;

  XOR3D1 U1_15 ( .A1(A[15]), .A2(B[15]), .A3(carry[15]), .Z(SUM[15]) );
  FA1D0 U1_2 ( .A(A[2]), .B(B[2]), .CI(n1), .CO(carry[3]), .S(SUM[2]) );
  FA1D0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
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
  FA1D0 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FA1D0 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  FA1D0 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA1D0 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  AN2XD1 U1 ( .A1(B[1]), .A2(A[1]), .Z(n1) );
  CKBD1 U2 ( .I(B[0]), .Z(SUM[0]) );
  CKXOR2D1 U3 ( .A1(B[1]), .A2(A[1]), .Z(SUM[1]) );
endmodule


module oadm_fixed_divmul_root_opt_binary_1_16_14_16_7_53_2a_DW_mult_tc_1 ( a, 
        b, product );
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


module oadm_fixed_divmul_root_opt_binary_1_16_14_16_7_53_2a_DW_mult_tc_0 ( a, 
        b, product );
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


module oadm_fixed_divmul_root_opt_binary_1_16_14_16_7_53_2a ( x, y, 
        divide_mode, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  input divide_mode;
  wire   x_midpoint_3_, y_midpoint_3_, x_residual_21_, y_residual_21_, N35,
         N36, N37, N38, N39, N40, N41, N42, N43, N44, N45, N46, N47, N60, N61,
         N62, N63, N64, N65, N66, N67, N68, N69, N70, N71, N72, n48, n50, n51,
         n52, n670, n680, n690, n700, n710, n720, n73, n74, n75, n76, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, sa_sum_1_1_8_, sa_sum_1_1_7_, sa_sum_1_1_6_, sa_sum_0_3_9_,
         sa_sum_0_3_8_, sa_sum_0_3_7_, sa_sum_0_3_6_, sa_sum_0_3_5_,
         sa_sum_0_3_4_, sa_sum_0_3_3_, sa_sum_0_3_2_, sa_sum_0_3_1_,
         sa_sum_0_3_14_, sa_sum_0_3_13_, sa_sum_0_3_12_, sa_sum_0_3_11_,
         sa_sum_0_3_10_, sa_sum_0_3_0_, N99, N98, N97, N96, N95, N940, N930,
         N129, N128, N127, N126, N119, N118, N105, N104, N103, N102, N101,
         N100, mult_74_n15, mult_74_n13, mult_74_n10, mult_74_n9, mult_74_n3,
         mult_74_n2, add_1_root_add_0_root_add_130_carry_6_,
         add_1_root_add_0_root_add_130_carry_7_,
         add_1_root_add_0_root_add_130_carry_8_,
         add_1_root_add_0_root_add_130_carry_9_,
         add_1_root_add_0_root_add_130_carry_10_,
         add_1_root_add_0_root_add_130_carry_11_,
         add_1_root_add_0_root_add_130_carry_12_,
         add_1_root_add_0_root_add_130_carry_13_,
         add_1_root_add_0_root_add_130_SUM_4_,
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
         add_1_root_add_0_root_add_130_B_5_,
         add_1_root_add_0_root_add_130_B_6_,
         add_1_root_add_0_root_add_130_B_7_,
         add_1_root_add_0_root_add_130_B_8_,
         add_1_root_add_0_root_add_130_B_9_,
         add_1_root_add_0_root_add_130_B_10_,
         add_1_root_add_0_root_add_130_B_11_,
         add_1_root_add_0_root_add_130_B_12_,
         add_1_root_add_0_root_add_130_B_13_,
         add_1_root_add_0_root_add_130_A_1_,
         add_1_root_add_0_root_add_130_A_2_,
         add_1_root_add_0_root_add_130_A_3_,
         add_1_root_add_0_root_add_130_A_4_,
         add_1_root_add_0_root_add_130_A_5_,
         add_1_root_add_0_root_add_130_A_6_,
         add_1_root_add_0_root_add_130_A_7_,
         add_1_root_add_0_root_add_130_A_8_,
         add_1_root_add_0_root_add_130_A_9_,
         add_1_root_add_0_root_add_130_A_10_,
         add_1_root_add_0_root_add_130_A_11_,
         add_2_root_add_0_root_add_130_carry_8_,
         add_2_root_add_0_root_add_130_carry_9_, n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n31, n32, n33, n34, n350, n360,
         n380, n390, n400, n420, n430, n440, n450, n460, n470, n49, n53, n54,
         n55, n56, n57, n59, n600, n610, n620;
  wire   [21:14] x_mantissa;
  wire   [21:14] y_mantissa;
  wire   [1:0] x_shared_residual;
  wire   [1:0] y_shared_residual;
  wire   [13:2] x_product;
  wire   [13:3] y_product;
  wire   [4:3] midpoint_sum;
  wire   [15:12] plane_value;
  wire   [9:3] sa_t1;
  wire   [13:5] sa_t5;
  wire   [15:0] sa_sum_2_0;
  wire   [22:8] normalized_fraction;
  wire   [2:0] exponent_adjust;
  wire   [24:14] add_0_root_add_0_root_add_80_3_carry;
  wire   [24:14] add_1_root_add_0_root_add_80_3_carry;
  wire   [10:5] add_4_root_add_0_root_add_130_carry;
  wire   [13:7] add_3_root_add_0_root_add_130_carry;
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

  AN2XD1 U9 ( .A1(y_mantissa[15]), .A2(n390), .Z(y_shared_residual[1]) );
  AN2XD1 U10 ( .A1(y_mantissa[14]), .A2(n390), .Z(y_shared_residual[0]) );
  AN2XD1 U12 ( .A1(x_mantissa[15]), .A2(n390), .Z(x_shared_residual[1]) );
  AN2XD1 U13 ( .A1(x_mantissa[14]), .A2(n390), .Z(x_shared_residual[0]) );
  AN2XD1 U19 ( .A1(y_midpoint_3_), .A2(sa_t1[7]), .Z(sa_t5[11]) );
  AN2XD1 U20 ( .A1(y_midpoint_3_), .A2(sa_t1[6]), .Z(sa_t5[10]) );
  AN2XD1 U21 ( .A1(y_midpoint_3_), .A2(sa_t1[5]), .Z(sa_t5[9]) );
  AN2XD1 U22 ( .A1(y_midpoint_3_), .A2(sa_t1[4]), .Z(sa_t5[8]) );
  AN2XD1 U23 ( .A1(y_midpoint_3_), .A2(sa_t1[3]), .Z(sa_t5[7]) );
  AN2XD1 U24 ( .A1(y_midpoint_3_), .A2(add_1_root_add_0_root_add_130_A_2_), 
        .Z(sa_t5[6]) );
  AN2XD1 U25 ( .A1(y_midpoint_3_), .A2(add_1_root_add_0_root_add_130_A_1_), 
        .Z(sa_t5[5]) );
  AN2XD1 U26 ( .A1(y_midpoint_3_), .A2(sa_t1[9]), .Z(sa_t5[13]) );
  AN2XD1 U27 ( .A1(y_midpoint_3_), .A2(sa_t1[8]), .Z(sa_t5[12]) );
  AN2XD1 U111 ( .A1(midpoint_sum[4]), .A2(n390), .Z(N119) );
  AN2XD1 U112 ( .A1(midpoint_sum[3]), .A2(n390), .Z(N118) );
  fp32_normal_finite_wrapper fp_wrapper ( .x({x[31:14], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y({
        y[31:14], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .divide_mode(n380), .fraction_x({
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
  oadm_fixed_divmul_root_opt_binary_1_16_14_16_7_53_2a_DW01_add_6 add_0_root_add_0_root_add_130 ( 
        .A({n22, add_1_root_add_0_root_add_130_SUM_14_, 
        add_1_root_add_0_root_add_130_SUM_13_, 
        add_1_root_add_0_root_add_130_SUM_12_, 
        add_1_root_add_0_root_add_130_SUM_11_, 
        add_1_root_add_0_root_add_130_SUM_10_, 
        add_1_root_add_0_root_add_130_SUM_9_, 
        add_1_root_add_0_root_add_130_SUM_8_, 
        add_1_root_add_0_root_add_130_SUM_7_, 
        add_1_root_add_0_root_add_130_SUM_6_, 
        add_1_root_add_0_root_add_130_SUM_5_, 
        add_1_root_add_0_root_add_130_SUM_4_, 
        add_1_root_add_0_root_add_130_A_3_, add_1_root_add_0_root_add_130_A_2_, 
        add_1_root_add_0_root_add_130_A_1_, n610}), .B({n7, sa_sum_0_3_14_, 
        sa_sum_0_3_13_, sa_sum_0_3_12_, sa_sum_0_3_11_, sa_sum_0_3_10_, 
        sa_sum_0_3_9_, sa_sum_0_3_8_, sa_sum_0_3_7_, sa_sum_0_3_6_, 
        sa_sum_0_3_5_, sa_sum_0_3_4_, sa_sum_0_3_3_, sa_sum_0_3_2_, 
        sa_sum_0_3_1_, sa_sum_0_3_0_}), .CI(n610), .SUM(sa_sum_2_0) );
  oadm_fixed_divmul_root_opt_binary_1_16_14_16_7_53_2a_DW_mult_tc_1 mult_61 ( 
        .a({x_residual_21_, x_mantissa[20:16], x_shared_residual}), .b({n610, 
        n1, y_midpoint_3_, n1, n610, n610}), .product({x_product, 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37}) );
  oadm_fixed_divmul_root_opt_binary_1_16_14_16_7_53_2a_DW_mult_tc_0 mult_63 ( 
        .a({y_residual_21_, y_mantissa[20:16], y_shared_residual}), .b({n610, 
        n1, x_midpoint_3_, n1, n610, n610}), .product({y_product, N35, 
        SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39}) );
  TIEH U3 ( .Z(n1) );
  TIEL U4 ( .ZN(n610) );
  AN2XD1 U6 ( .A1(sa_sum_0_3_0_), .A2(sa_sum_1_1_6_), .Z(n2) );
  AN2XD1 U7 ( .A1(sa_t5[5]), .A2(sa_t1[3]), .Z(n3) );
  AN2XD1 U8 ( .A1(sa_sum_0_3_0_), .A2(add_1_root_add_0_root_add_130_A_4_), .Z(
        n4) );
  AN2XD1 U11 ( .A1(n24), .A2(sa_t5[13]), .Z(n5) );
  AN2XD1 U14 ( .A1(sa_t5[5]), .A2(sa_sum_0_3_1_), .Z(n6) );
  AN2XD1 U15 ( .A1(n28), .A2(sa_sum_1_1_8_), .Z(n7) );
  AN2XD1 U16 ( .A1(x_product[2]), .A2(N118), .Z(n8) );
  INVD1 U18 ( .I(x_midpoint_3_), .ZN(n350) );
  AN2XD1 U29 ( .A1(n19), .A2(n440), .Z(n11) );
  ND2D1 U30 ( .A1(n59), .A2(n700), .ZN(exponent_adjust[2]) );
  INVD1 U31 ( .I(n52), .ZN(n59) );
  FA1D0 U32 ( .A(add_1_root_add_0_root_add_130_A_9_), .B(
        add_1_root_add_0_root_add_130_B_9_), .CI(
        add_1_root_add_0_root_add_130_carry_9_), .CO(
        add_1_root_add_0_root_add_130_carry_10_), .S(
        add_1_root_add_0_root_add_130_SUM_9_) );
  FA1D0 U33 ( .A(add_1_root_add_0_root_add_130_A_8_), .B(
        add_1_root_add_0_root_add_130_B_8_), .CI(
        add_1_root_add_0_root_add_130_carry_8_), .CO(
        add_1_root_add_0_root_add_130_carry_9_), .S(
        add_1_root_add_0_root_add_130_SUM_8_) );
  AN2XD1 U34 ( .A1(add_1_root_add_0_root_add_130_carry_13_), .A2(
        add_1_root_add_0_root_add_130_B_13_), .Z(n12) );
  AN2XD1 U35 ( .A1(n14), .A2(n56), .Z(n13) );
  FA1D0 U37 ( .A(add_1_root_add_0_root_add_130_A_7_), .B(
        add_1_root_add_0_root_add_130_B_7_), .CI(
        add_1_root_add_0_root_add_130_carry_7_), .CO(
        add_1_root_add_0_root_add_130_carry_8_), .S(
        add_1_root_add_0_root_add_130_SUM_7_) );
  AN2XD1 U38 ( .A1(n15), .A2(n55), .Z(n14) );
  FA1D0 U39 ( .A(add_1_root_add_0_root_add_130_A_6_), .B(
        add_1_root_add_0_root_add_130_B_6_), .CI(
        add_1_root_add_0_root_add_130_carry_6_), .CO(
        add_1_root_add_0_root_add_130_carry_7_), .S(
        add_1_root_add_0_root_add_130_SUM_6_) );
  AN2XD1 U40 ( .A1(n16), .A2(n54), .Z(n15) );
  INVD1 U41 ( .I(y_product[4]), .ZN(n440) );
  AN2XD1 U42 ( .A1(n17), .A2(n53), .Z(n16) );
  AN2XD1 U43 ( .A1(n18), .A2(n49), .Z(n17) );
  AN2XD1 U44 ( .A1(n20), .A2(n470), .Z(n18) );
  AN2XD1 U46 ( .A1(n21), .A2(n460), .Z(n20) );
  AN2XD1 U47 ( .A1(n11), .A2(n450), .Z(n21) );
  AN2XD1 U48 ( .A1(n12), .A2(n33), .Z(n22) );
  FA1D0 U50 ( .A(sa_sum_0_3_2_), .B(sa_sum_1_1_8_), .CI(
        add_2_root_add_0_root_add_130_carry_8_), .CO(
        add_2_root_add_0_root_add_130_carry_9_), .S(sa_sum_0_3_8_) );
  INVD1 U51 ( .I(y_product[12]), .ZN(n56) );
  INVD1 U52 ( .I(n50), .ZN(n600) );
  FA1D0 U53 ( .A(sa_t1[9]), .B(sa_t5[11]), .CI(
        add_4_root_add_0_root_add_130_carry[9]), .CO(
        add_4_root_add_0_root_add_130_carry[10]), .S(
        add_1_root_add_0_root_add_130_A_9_) );
  FA1D0 U54 ( .A(n5), .B(add_1_root_add_0_root_add_130_B_12_), .CI(
        add_1_root_add_0_root_add_130_carry_12_), .CO(
        add_1_root_add_0_root_add_130_carry_13_), .S(
        add_1_root_add_0_root_add_130_SUM_12_) );
  FA1D0 U55 ( .A(add_1_root_add_0_root_add_130_A_10_), .B(
        add_1_root_add_0_root_add_130_B_10_), .CI(
        add_1_root_add_0_root_add_130_carry_10_), .CO(
        add_1_root_add_0_root_add_130_carry_11_), .S(
        add_1_root_add_0_root_add_130_SUM_10_) );
  FA1D0 U56 ( .A(add_1_root_add_0_root_add_130_A_11_), .B(
        add_1_root_add_0_root_add_130_B_11_), .CI(
        add_1_root_add_0_root_add_130_carry_11_), .CO(
        add_1_root_add_0_root_add_130_carry_12_), .S(
        add_1_root_add_0_root_add_130_SUM_11_) );
  FA1D0 U57 ( .A(sa_t1[8]), .B(sa_t5[10]), .CI(
        add_4_root_add_0_root_add_130_carry[8]), .CO(
        add_4_root_add_0_root_add_130_carry[9]), .S(
        add_1_root_add_0_root_add_130_A_8_) );
  INVD1 U58 ( .I(y_product[11]), .ZN(n55) );
  AN2XD1 U59 ( .A1(sa_sum_0_3_3_), .A2(add_2_root_add_0_root_add_130_carry_9_), 
        .Z(n23) );
  FA1D0 U60 ( .A(sa_sum_0_3_1_), .B(sa_sum_1_1_7_), .CI(n2), .CO(
        add_2_root_add_0_root_add_130_carry_8_), .S(sa_sum_0_3_7_) );
  AN2XD1 U61 ( .A1(add_4_root_add_0_root_add_130_carry[10]), .A2(sa_t5[12]), 
        .Z(n24) );
  FA1D0 U62 ( .A(sa_t1[7]), .B(sa_t5[9]), .CI(
        add_4_root_add_0_root_add_130_carry[7]), .CO(
        add_4_root_add_0_root_add_130_carry[8]), .S(
        add_1_root_add_0_root_add_130_A_7_) );
  INVD1 U63 ( .I(y_product[10]), .ZN(n54) );
  AN2XD1 U64 ( .A1(sa_sum_0_3_4_), .A2(n23), .Z(n25) );
  FA1D0 U65 ( .A(sa_t1[6]), .B(sa_t5[8]), .CI(
        add_4_root_add_0_root_add_130_carry[6]), .CO(
        add_4_root_add_0_root_add_130_carry[7]), .S(
        add_1_root_add_0_root_add_130_A_6_) );
  INVD1 U66 ( .I(y_product[9]), .ZN(n53) );
  AN2XD1 U67 ( .A1(sa_sum_0_3_5_), .A2(n25), .Z(n26) );
  INVD1 U68 ( .I(y_product[8]), .ZN(n49) );
  FA1D0 U69 ( .A(sa_t1[5]), .B(sa_t5[7]), .CI(
        add_4_root_add_0_root_add_130_carry[5]), .CO(
        add_4_root_add_0_root_add_130_carry[6]), .S(
        add_1_root_add_0_root_add_130_A_5_) );
  AN2XD1 U70 ( .A1(sa_sum_1_1_6_), .A2(n26), .Z(n27) );
  INVD1 U71 ( .I(y_product[7]), .ZN(n470) );
  FA1D0 U73 ( .A(sa_t1[4]), .B(sa_t5[6]), .CI(n3), .CO(
        add_4_root_add_0_root_add_130_carry[5]), .S(
        add_1_root_add_0_root_add_130_A_4_) );
  FA1D0 U74 ( .A(add_1_root_add_0_root_add_130_A_5_), .B(
        add_1_root_add_0_root_add_130_B_5_), .CI(n4), .CO(
        add_1_root_add_0_root_add_130_carry_6_), .S(
        add_1_root_add_0_root_add_130_SUM_5_) );
  INVD1 U75 ( .I(y_product[6]), .ZN(n460) );
  ND3D1 U76 ( .A1(n680), .A2(n670), .A3(n50), .ZN(n700) );
  AN2XD1 U77 ( .A1(sa_sum_1_1_7_), .A2(n27), .Z(n28) );
  INVD1 U78 ( .I(y_product[5]), .ZN(n450) );
  ND2D1 U79 ( .A1(n50), .A2(n59), .ZN(exponent_adjust[0]) );
  FA1D0 U80 ( .A(sa_sum_1_1_7_), .B(sa_t5[11]), .CI(
        add_3_root_add_0_root_add_130_carry[11]), .CO(
        add_3_root_add_0_root_add_130_carry[12]), .S(
        add_1_root_add_0_root_add_130_B_11_) );
  FA1D0 U81 ( .A(sa_sum_1_1_8_), .B(sa_t5[12]), .CI(
        add_3_root_add_0_root_add_130_carry[12]), .CO(
        add_3_root_add_0_root_add_130_carry[13]), .S(
        add_1_root_add_0_root_add_130_B_12_) );
  FA1D0 U82 ( .A(sa_sum_1_1_6_), .B(sa_t5[10]), .CI(
        add_3_root_add_0_root_add_130_carry[10]), .CO(
        add_3_root_add_0_root_add_130_carry[11]), .S(
        add_1_root_add_0_root_add_130_B_10_) );
  AN2XD1 U84 ( .A1(add_1_root_add_0_root_add_80_3_carry[15]), .A2(x_product[5]), .Z(n29) );
  AN2XD1 U86 ( .A1(n32), .A2(x_product[7]), .Z(n31) );
  FA1D0 U87 ( .A(sa_sum_0_3_5_), .B(sa_t5[9]), .CI(
        add_3_root_add_0_root_add_130_carry[9]), .CO(
        add_3_root_add_0_root_add_130_carry[10]), .S(
        add_1_root_add_0_root_add_130_B_9_) );
  AN2XD1 U88 ( .A1(n29), .A2(x_product[6]), .Z(n32) );
  FA1D0 U89 ( .A(sa_sum_0_3_4_), .B(sa_t5[8]), .CI(
        add_3_root_add_0_root_add_130_carry[8]), .CO(
        add_3_root_add_0_root_add_130_carry[9]), .S(
        add_1_root_add_0_root_add_130_B_8_) );
  FA1D0 U90 ( .A(sa_sum_0_3_3_), .B(sa_t5[7]), .CI(
        add_3_root_add_0_root_add_130_carry[7]), .CO(
        add_3_root_add_0_root_add_130_carry[8]), .S(
        add_1_root_add_0_root_add_130_B_7_) );
  FA1D0 U91 ( .A(sa_sum_0_3_2_), .B(sa_t5[6]), .CI(n6), .CO(
        add_3_root_add_0_root_add_130_carry[7]), .S(
        add_1_root_add_0_root_add_130_B_6_) );
  AN2XD1 U92 ( .A1(add_3_root_add_0_root_add_130_carry[13]), .A2(sa_t5[13]), 
        .Z(n33) );
  OAI221D0 U94 ( .A1(n91), .A2(n34), .B1(n50), .B2(n89), .C(n93), .ZN(
        normalized_fraction[11]) );
  OA22D0 U95 ( .A1(n700), .A2(n48), .B1(n59), .B2(n51), .Z(n93) );
  OAI221D0 U96 ( .A1(n87), .A2(n34), .B1(n50), .B2(n85), .C(n90), .ZN(
        normalized_fraction[13]) );
  OA22D0 U97 ( .A1(n700), .A2(n91), .B1(n59), .B2(n89), .Z(n90) );
  OAI221D0 U98 ( .A1(n85), .A2(n34), .B1(n50), .B2(n83), .C(n88), .ZN(
        normalized_fraction[14]) );
  OA22D0 U99 ( .A1(n700), .A2(n89), .B1(n59), .B2(n87), .Z(n88) );
  OAI221D0 U100 ( .A1(n83), .A2(n34), .B1(n50), .B2(n81), .C(n86), .ZN(
        normalized_fraction[15]) );
  OA22D0 U101 ( .A1(n700), .A2(n87), .B1(n59), .B2(n85), .Z(n86) );
  OAI221D0 U102 ( .A1(n89), .A2(n34), .B1(n50), .B2(n87), .C(n92), .ZN(
        normalized_fraction[12]) );
  OA22D0 U103 ( .A1(n700), .A2(n51), .B1(n59), .B2(n91), .Z(n92) );
  OAI221D0 U104 ( .A1(n720), .A2(n34), .B1(n50), .B2(n670), .C(n73), .ZN(
        normalized_fraction[21]) );
  OA22D0 U105 ( .A1(n700), .A2(n74), .B1(n59), .B2(n710), .Z(n73) );
  OAI221D0 U106 ( .A1(n670), .A2(n34), .B1(n50), .B2(n680), .C(n690), .ZN(
        normalized_fraction[22]) );
  OA22D0 U107 ( .A1(n700), .A2(n710), .B1(n59), .B2(n720), .Z(n690) );
  OAI221D0 U108 ( .A1(n81), .A2(n34), .B1(n50), .B2(n79), .C(n84), .ZN(
        normalized_fraction[16]) );
  OA22D0 U109 ( .A1(n700), .A2(n85), .B1(n59), .B2(n83), .Z(n84) );
  OAI221D0 U110 ( .A1(n79), .A2(n34), .B1(n50), .B2(n76), .C(n82), .ZN(
        normalized_fraction[17]) );
  OA22D0 U113 ( .A1(n700), .A2(n83), .B1(n59), .B2(n81), .Z(n82) );
  OAI221D0 U114 ( .A1(n76), .A2(n34), .B1(n50), .B2(n74), .C(n80), .ZN(
        normalized_fraction[18]) );
  OA22D0 U115 ( .A1(n700), .A2(n81), .B1(n59), .B2(n79), .Z(n80) );
  OAI221D0 U116 ( .A1(n74), .A2(n34), .B1(n50), .B2(n710), .C(n78), .ZN(
        normalized_fraction[19]) );
  OA22D0 U117 ( .A1(n700), .A2(n79), .B1(n59), .B2(n76), .Z(n78) );
  OAI221D0 U118 ( .A1(n710), .A2(n34), .B1(n50), .B2(n720), .C(n75), .ZN(
        normalized_fraction[20]) );
  OA22D0 U119 ( .A1(n700), .A2(n76), .B1(n59), .B2(n74), .Z(n75) );
  OR2D1 U120 ( .A1(n600), .A2(n680), .Z(n34) );
  OAI221D0 U121 ( .A1(n51), .A2(n34), .B1(n50), .B2(n91), .C(n94), .ZN(
        normalized_fraction[10]) );
  OAI22D1 U124 ( .A1(n48), .A2(n34), .B1(n50), .B2(n51), .ZN(
        normalized_fraction[9]) );
  NR2D1 U125 ( .A1(n50), .A2(n48), .ZN(normalized_fraction[8]) );
  ND2D1 U126 ( .A1(sa_sum_2_0[2]), .A2(n380), .ZN(n91) );
  ND2D1 U127 ( .A1(sa_sum_2_0[1]), .A2(n380), .ZN(n51) );
  ND2D1 U128 ( .A1(sa_sum_2_0[0]), .A2(n380), .ZN(n48) );
  XOR3D1 U129 ( .A1(N105), .A2(N72), .A3(
        add_0_root_add_0_root_add_80_3_carry[24]), .Z(sa_t1[9]) );
  AO22D0 U130 ( .A1(n390), .A2(y_product[13]), .B1(N47), .B2(n380), .Z(N72) );
  INR2D1 U132 ( .A1(sa_t1[9]), .B1(y_midpoint_3_), .ZN(sa_sum_1_1_8_) );
  AOI22D1 U133 ( .A1(n390), .A2(sa_t1[9]), .B1(sa_sum_2_0[15]), .B2(n380), 
        .ZN(n50) );
  FA1D0 U134 ( .A(N103), .B(N70), .CI(add_0_root_add_0_root_add_80_3_carry[22]), .CO(add_0_root_add_0_root_add_80_3_carry[23]), .S(sa_t1[7]) );
  AO22D0 U135 ( .A1(y_product[12]), .A2(n390), .B1(N45), .B2(n380), .Z(N70) );
  FA1D0 U136 ( .A(N104), .B(N71), .CI(add_0_root_add_0_root_add_80_3_carry[23]), .CO(add_0_root_add_0_root_add_80_3_carry[24]), .S(sa_t1[8]) );
  AO22D0 U137 ( .A1(n390), .A2(y_product[13]), .B1(N46), .B2(n380), .Z(N71) );
  FA1D0 U138 ( .A(N129), .B(x_product[13]), .CI(
        add_1_root_add_0_root_add_80_3_carry[23]), .CO(
        add_1_root_add_0_root_add_80_3_carry[24]), .S(N104) );
  FA1D0 U139 ( .A(N128), .B(x_product[12]), .CI(
        add_1_root_add_0_root_add_80_3_carry[22]), .CO(
        add_1_root_add_0_root_add_80_3_carry[23]), .S(N103) );
  FA1D0 U140 ( .A(N102), .B(N69), .CI(add_0_root_add_0_root_add_80_3_carry[21]), .CO(add_0_root_add_0_root_add_80_3_carry[22]), .S(sa_t1[6]) );
  AO22D0 U141 ( .A1(y_product[11]), .A2(n390), .B1(N44), .B2(n380), .Z(N69) );
  INR2D1 U142 ( .A1(sa_t1[8]), .B1(y_midpoint_3_), .ZN(sa_sum_1_1_7_) );
  FA1D0 U143 ( .A(N101), .B(N68), .CI(add_0_root_add_0_root_add_80_3_carry[20]), .CO(add_0_root_add_0_root_add_80_3_carry[21]), .S(sa_t1[5]) );
  AO22D0 U144 ( .A1(y_product[10]), .A2(n390), .B1(N43), .B2(n380), .Z(N68) );
  FA1D0 U145 ( .A(N127), .B(x_product[11]), .CI(
        add_1_root_add_0_root_add_80_3_carry[21]), .CO(
        add_1_root_add_0_root_add_80_3_carry[22]), .S(N102) );
  FA1D0 U146 ( .A(N100), .B(N67), .CI(add_0_root_add_0_root_add_80_3_carry[19]), .CO(add_0_root_add_0_root_add_80_3_carry[20]), .S(sa_t1[4]) );
  AO22D0 U147 ( .A1(y_product[9]), .A2(n390), .B1(N42), .B2(n380), .Z(N67) );
  FA1D0 U148 ( .A(N99), .B(N66), .CI(add_0_root_add_0_root_add_80_3_carry[18]), 
        .CO(add_0_root_add_0_root_add_80_3_carry[19]), .S(sa_t1[3]) );
  AO22D0 U149 ( .A1(y_product[8]), .A2(n390), .B1(N41), .B2(n380), .Z(N66) );
  AOI22D1 U150 ( .A1(n390), .A2(sa_t1[8]), .B1(sa_sum_2_0[14]), .B2(n380), 
        .ZN(n680) );
  FA1D0 U151 ( .A(N98), .B(N65), .CI(add_0_root_add_0_root_add_80_3_carry[17]), 
        .CO(add_0_root_add_0_root_add_80_3_carry[18]), .S(
        add_1_root_add_0_root_add_130_A_2_) );
  AO22D0 U152 ( .A1(y_product[7]), .A2(n390), .B1(N40), .B2(n380), .Z(N65) );
  FA1D0 U153 ( .A(N95), .B(N62), .CI(add_0_root_add_0_root_add_80_3_carry[14]), 
        .CO(add_0_root_add_0_root_add_80_3_carry[15]), .S(plane_value[14]) );
  AO22D0 U154 ( .A1(y_product[4]), .A2(n390), .B1(N37), .B2(n380), .Z(N62) );
  FA1D0 U155 ( .A(N96), .B(N63), .CI(add_0_root_add_0_root_add_80_3_carry[15]), 
        .CO(add_0_root_add_0_root_add_80_3_carry[16]), .S(plane_value[15]) );
  AO22D0 U156 ( .A1(y_product[5]), .A2(n390), .B1(N38), .B2(n380), .Z(N63) );
  FA1D0 U157 ( .A(N97), .B(N64), .CI(add_0_root_add_0_root_add_80_3_carry[16]), 
        .CO(add_0_root_add_0_root_add_80_3_carry[17]), .S(
        add_1_root_add_0_root_add_130_A_1_) );
  AO22D0 U158 ( .A1(y_product[6]), .A2(n390), .B1(N39), .B2(n380), .Z(N64) );
  FA1D0 U159 ( .A(N940), .B(N61), .CI(n9), .CO(
        add_0_root_add_0_root_add_80_3_carry[14]), .S(plane_value[13]) );
  AO22D0 U160 ( .A1(y_product[3]), .A2(n390), .B1(N36), .B2(n380), .Z(N61) );
  INR2D1 U161 ( .A1(sa_t1[7]), .B1(y_midpoint_3_), .ZN(sa_sum_1_1_6_) );
  FA1D0 U162 ( .A(n390), .B(x_product[4]), .CI(
        add_1_root_add_0_root_add_80_3_carry[14]), .CO(
        add_1_root_add_0_root_add_80_3_carry[15]), .S(N95) );
  FA1D0 U163 ( .A(N119), .B(x_product[3]), .CI(n8), .CO(
        add_1_root_add_0_root_add_80_3_carry[14]), .S(N940) );
  AOI22D1 U164 ( .A1(n390), .A2(sa_t1[7]), .B1(sa_sum_2_0[13]), .B2(n380), 
        .ZN(n670) );
  INR2D1 U165 ( .A1(sa_t1[6]), .B1(y_midpoint_3_), .ZN(sa_sum_0_3_5_) );
  INR2D1 U166 ( .A1(sa_t1[5]), .B1(y_midpoint_3_), .ZN(sa_sum_0_3_4_) );
  INR2D1 U167 ( .A1(sa_t1[4]), .B1(y_midpoint_3_), .ZN(sa_sum_0_3_3_) );
  INR2D1 U168 ( .A1(sa_t1[3]), .B1(y_midpoint_3_), .ZN(sa_sum_0_3_2_) );
  INR2D1 U169 ( .A1(add_1_root_add_0_root_add_130_A_2_), .B1(y_midpoint_3_), 
        .ZN(sa_sum_0_3_1_) );
  INR2D1 U170 ( .A1(add_1_root_add_0_root_add_130_A_1_), .B1(y_midpoint_3_), 
        .ZN(sa_sum_0_3_0_) );
  INVD1 U172 ( .I(n390), .ZN(n380) );
  AOI22D1 U174 ( .A1(n390), .A2(sa_t1[6]), .B1(sa_sum_2_0[12]), .B2(n380), 
        .ZN(n720) );
  AOI22D1 U175 ( .A1(n390), .A2(sa_t1[5]), .B1(sa_sum_2_0[11]), .B2(n380), 
        .ZN(n710) );
  AOI22D1 U176 ( .A1(n390), .A2(sa_t1[4]), .B1(sa_sum_2_0[10]), .B2(n380), 
        .ZN(n74) );
  AOI22D1 U177 ( .A1(n390), .A2(sa_t1[3]), .B1(sa_sum_2_0[9]), .B2(n380), .ZN(
        n76) );
  AOI22D1 U178 ( .A1(n390), .A2(add_1_root_add_0_root_add_130_A_2_), .B1(
        sa_sum_2_0[8]), .B2(n380), .ZN(n79) );
  AOI22D1 U179 ( .A1(n390), .A2(add_1_root_add_0_root_add_130_A_1_), .B1(
        sa_sum_2_0[7]), .B2(n380), .ZN(n81) );
  AOI22D1 U180 ( .A1(sa_sum_2_0[6]), .A2(n380), .B1(plane_value[15]), .B2(n390), .ZN(n83) );
  AOI22D1 U181 ( .A1(sa_sum_2_0[5]), .A2(n380), .B1(plane_value[14]), .B2(n390), .ZN(n85) );
  AOI22D1 U182 ( .A1(sa_sum_2_0[4]), .A2(n380), .B1(plane_value[13]), .B2(n390), .ZN(n87) );
  AOI22D1 U183 ( .A1(sa_sum_2_0[3]), .A2(n380), .B1(plane_value[12]), .B2(n390), .ZN(n89) );
  FA1D0 U184 ( .A(N126), .B(x_product[10]), .CI(
        add_1_root_add_0_root_add_80_3_carry[20]), .CO(
        add_1_root_add_0_root_add_80_3_carry[21]), .S(N101) );
  IND2D1 U187 ( .A1(y_midpoint_3_), .B1(n350), .ZN(midpoint_sum[4]) );
  ND2D1 U188 ( .A1(n350), .A2(n400), .ZN(mult_74_n9) );
  INVD1 U189 ( .I(divide_mode), .ZN(n390) );
  INVD1 U190 ( .I(y_midpoint_3_), .ZN(n400) );
  INVD1 U191 ( .I(y_mantissa[21]), .ZN(y_residual_21_) );
  INVD1 U192 ( .I(x_mantissa[21]), .ZN(x_residual_21_) );
  XNR2D1 U193 ( .A1(y_midpoint_3_), .A2(x_midpoint_3_), .ZN(midpoint_sum[3])
         );
  CKXOR2D1 U195 ( .A1(n420), .A2(n430), .Z(N36) );
  CKXOR2D1 U196 ( .A1(n19), .A2(n440), .Z(N37) );
  CKXOR2D1 U197 ( .A1(n11), .A2(n450), .Z(N38) );
  CKXOR2D1 U198 ( .A1(n21), .A2(n460), .Z(N39) );
  CKXOR2D1 U199 ( .A1(n20), .A2(n470), .Z(N40) );
  CKXOR2D1 U200 ( .A1(n18), .A2(n49), .Z(N41) );
  CKXOR2D1 U201 ( .A1(n17), .A2(n53), .Z(N42) );
  CKXOR2D1 U202 ( .A1(n16), .A2(n54), .Z(N43) );
  CKXOR2D1 U203 ( .A1(n15), .A2(n55), .Z(N44) );
  CKXOR2D1 U204 ( .A1(n14), .A2(n56), .Z(N45) );
  CKXOR2D1 U205 ( .A1(n13), .A2(n57), .Z(N46) );
  CKXOR2D1 U207 ( .A1(N60), .A2(N930), .Z(plane_value[12]) );
  CKXOR2D1 U209 ( .A1(add_1_root_add_0_root_add_80_3_carry[15]), .A2(
        x_product[5]), .Z(N96) );
  CKXOR2D1 U210 ( .A1(n29), .A2(x_product[6]), .Z(N97) );
  CKXOR2D1 U211 ( .A1(n32), .A2(x_product[7]), .Z(N98) );
  CKXOR2D1 U212 ( .A1(n31), .A2(x_product[8]), .Z(N99) );
  CKXOR2D1 U213 ( .A1(sa_sum_0_3_0_), .A2(add_1_root_add_0_root_add_130_A_4_), 
        .Z(add_1_root_add_0_root_add_130_SUM_4_) );
  CKXOR2D1 U214 ( .A1(add_1_root_add_0_root_add_130_carry_13_), .A2(
        add_1_root_add_0_root_add_130_B_13_), .Z(
        add_1_root_add_0_root_add_130_SUM_13_) );
  CKXOR2D1 U215 ( .A1(n12), .A2(n33), .Z(add_1_root_add_0_root_add_130_SUM_14_) );
  CKXOR2D1 U216 ( .A1(sa_t5[5]), .A2(sa_t1[3]), .Z(
        add_1_root_add_0_root_add_130_A_3_) );
  CKXOR2D1 U217 ( .A1(add_4_root_add_0_root_add_130_carry[10]), .A2(sa_t5[12]), 
        .Z(add_1_root_add_0_root_add_130_A_10_) );
  CKXOR2D1 U218 ( .A1(n24), .A2(sa_t5[13]), .Z(
        add_1_root_add_0_root_add_130_A_11_) );
  CKXOR2D1 U219 ( .A1(sa_sum_1_1_6_), .A2(sa_sum_0_3_0_), .Z(sa_sum_0_3_6_) );
  CKXOR2D1 U220 ( .A1(add_2_root_add_0_root_add_130_carry_9_), .A2(
        sa_sum_0_3_3_), .Z(sa_sum_0_3_9_) );
  CKXOR2D1 U221 ( .A1(n23), .A2(sa_sum_0_3_4_), .Z(sa_sum_0_3_10_) );
  CKXOR2D1 U222 ( .A1(n25), .A2(sa_sum_0_3_5_), .Z(sa_sum_0_3_11_) );
  CKXOR2D1 U223 ( .A1(n26), .A2(sa_sum_1_1_6_), .Z(sa_sum_0_3_12_) );
  CKXOR2D1 U224 ( .A1(n27), .A2(sa_sum_1_1_7_), .Z(sa_sum_0_3_13_) );
  CKXOR2D1 U225 ( .A1(n28), .A2(sa_sum_1_1_8_), .Z(sa_sum_0_3_14_) );
  CKXOR2D1 U226 ( .A1(sa_t5[5]), .A2(sa_sum_0_3_1_), .Z(
        add_1_root_add_0_root_add_130_B_5_) );
  CKXOR2D1 U227 ( .A1(add_3_root_add_0_root_add_130_carry[13]), .A2(sa_t5[13]), 
        .Z(add_1_root_add_0_root_add_130_B_13_) );
  NR2D0 U228 ( .A1(n400), .A2(n350), .ZN(mult_74_n13) );
  CKXOR2D0 U229 ( .A1(x_midpoint_3_), .A2(y_midpoint_3_), .Z(N126) );
  AN2D0 U230 ( .A1(x_midpoint_3_), .A2(y_midpoint_3_), .Z(mult_74_n15) );
  CKXOR2D0 U231 ( .A1(mult_74_n13), .A2(mult_74_n15), .Z(N127) );
  AN2D0 U232 ( .A1(mult_74_n13), .A2(mult_74_n15), .Z(mult_74_n3) );
  CKXOR2D0 U233 ( .A1(mult_74_n3), .A2(mult_74_n10), .Z(N128) );
  XNR2D1 U235 ( .A1(mult_74_n2), .A2(mult_74_n9), .ZN(N129) );
  XNR2D1 U236 ( .A1(x_midpoint_3_), .A2(y_midpoint_3_), .ZN(mult_74_n10) );
  IND2D0 U5 ( .A1(n48), .B1(n52), .ZN(n94) );
  INR3D0 U17 ( .A1(n680), .B1(n600), .B2(n670), .ZN(n52) );
  XNR3D0 U28 ( .A1(add_1_root_add_0_root_add_80_3_carry[24]), .A2(
        x_product[13]), .A3(n620), .ZN(N105) );
  NR2D0 U36 ( .A1(mult_74_n2), .A2(mult_74_n9), .ZN(n620) );
  AN2D0 U45 ( .A1(mult_74_n10), .A2(mult_74_n3), .Z(mult_74_n2) );
  CKND0 U49 ( .I(y_product[13]), .ZN(n57) );
  NR2D0 U72 ( .A1(y_product[13]), .A2(n13), .ZN(N47) );
  IND2D0 U83 ( .A1(x_product[9]), .B1(n360), .ZN(
        add_1_root_add_0_root_add_80_3_carry[20]) );
  CKND2D0 U85 ( .A1(x_product[8]), .A2(n31), .ZN(n360) );
  CKXOR2D0 U93 ( .A1(x_product[9]), .A2(n360), .Z(N100) );
  AN2D0 U122 ( .A1(N930), .A2(N60), .Z(n9) );
  OA21D0 U123 ( .A1(n380), .A2(n390), .B(N35), .Z(N60) );
  CKXOR2D0 U131 ( .A1(x_product[2]), .A2(N118), .Z(N930) );
  CKND0 U171 ( .I(N35), .ZN(n420) );
  CKND0 U173 ( .I(y_product[3]), .ZN(n430) );
  NR2D0 U185 ( .A1(N35), .A2(y_product[3]), .ZN(n19) );
endmodule


module oadm_fixed_l1_divmul_root_opt_binary ( x, y, divide_mode, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  input divide_mode;

  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7;
  assign result[7] = 1'b0;
  assign result[6] = 1'b0;
  assign result[5] = 1'b0;
  assign result[4] = 1'b0;
  assign result[3] = 1'b0;
  assign result[2] = 1'b0;
  assign result[1] = 1'b0;
  assign result[0] = 1'b0;

  oadm_fixed_divmul_root_opt_binary_1_16_14_16_7_53_2a implementation ( .x({
        x[31:14], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .y({y[31:14], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .divide_mode(
        divide_mode), .result({result[31:8], SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7}) );
endmodule

