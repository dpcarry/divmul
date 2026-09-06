/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Thu Sep  3 21:16:28 2026
/////////////////////////////////////////////////////////////


module fp32_normal_finite_wrapper_DW01_add_3_DW01_add_13 ( A, B, CI, SUM, CO
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


module fp32_normal_finite_wrapper_DW01_add_1_DW01_add_11 ( A, B, CI, SUM, CO
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
         N12, N11, N10, n1, n2, n35, n410, n51, n60, n70, n77, n78, n79;
  wire   [7:2] add_0_root_add_0_root_add_22_2_carry;
  wire   [7:2] add_0_root_add_0_root_add_25_2_carry;

  CKXOR2D1 U2 ( .A1(y[31]), .A2(x[31]), .Z(result[31]) );
  fp32_normal_finite_wrapper_DW01_add_3_DW01_add_13 add_1_root_add_0_root_add_25_2 ( 
        .A(x[30:23]), .B({N42, N41, N40, N39, N38, N37, N36, N11}), .CI(n79), 
        .SUM({N34, N33, N32, N31, N30, N29, N28, N27}) );
  fp32_normal_finite_wrapper_DW01_add_1_DW01_add_11 add_1_root_add_0_root_add_22_2 ( 
        .A(x[30:23]), .B({y[30], N17, N16, N15, N14, N13, N12, N11}), .CI(n79), 
        .SUM({N10, N9, N8, N7, N6, N5, N4, N3}) );
  AN2XD1 U3 ( .A1(exponent_adjust[0]), .A2(N3), .Z(n1) );
  AN2XD1 U4 ( .A1(exponent_adjust[0]), .A2(N27), .Z(n2) );
  INVD1 U5 ( .I(divide_mode), .ZN(n78) );
  CKBD1 U6 ( .I(result_fraction[2]), .Z(result[2]) );
  CKBD1 U7 ( .I(result_fraction[1]), .Z(result[1]) );
  CKBD1 U8 ( .I(result_fraction[0]), .Z(result[0]) );
  AO22D0 U9 ( .A1(N49), .A2(n78), .B1(N25), .B2(divide_mode), .Z(result[29])
         );
  AO22D0 U10 ( .A1(N48), .A2(n78), .B1(N24), .B2(divide_mode), .Z(result[28])
         );
  AO22D0 U11 ( .A1(N47), .A2(n78), .B1(N23), .B2(divide_mode), .Z(result[27])
         );
  AO22D0 U12 ( .A1(N46), .A2(n78), .B1(N22), .B2(divide_mode), .Z(result[26])
         );
  AO22D0 U13 ( .A1(N45), .A2(n78), .B1(N21), .B2(divide_mode), .Z(result[25])
         );
  AO22D0 U14 ( .A1(N44), .A2(n78), .B1(N20), .B2(divide_mode), .Z(result[24])
         );
  FA1D0 U15 ( .A(N4), .B(exponent_adjust[1]), .CI(n1), .CO(
        add_0_root_add_0_root_add_22_2_carry[2]), .S(N20) );
  FA1D0 U16 ( .A(N5), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[2]), .CO(
        add_0_root_add_0_root_add_22_2_carry[3]), .S(N21) );
  FA1D0 U17 ( .A(N6), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[3]), .CO(
        add_0_root_add_0_root_add_22_2_carry[4]), .S(N22) );
  FA1D0 U18 ( .A(N7), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[4]), .CO(
        add_0_root_add_0_root_add_22_2_carry[5]), .S(N23) );
  FA1D0 U19 ( .A(N8), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[5]), .CO(
        add_0_root_add_0_root_add_22_2_carry[6]), .S(N24) );
  FA1D0 U20 ( .A(N9), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[6]), .CO(
        add_0_root_add_0_root_add_22_2_carry[7]), .S(N25) );
  FA1D0 U21 ( .A(N28), .B(exponent_adjust[1]), .CI(n2), .CO(
        add_0_root_add_0_root_add_25_2_carry[2]), .S(N44) );
  FA1D0 U22 ( .A(N29), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[2]), .CO(
        add_0_root_add_0_root_add_25_2_carry[3]), .S(N45) );
  FA1D0 U23 ( .A(N30), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[3]), .CO(
        add_0_root_add_0_root_add_25_2_carry[4]), .S(N46) );
  FA1D0 U24 ( .A(N31), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[4]), .CO(
        add_0_root_add_0_root_add_25_2_carry[5]), .S(N47) );
  FA1D0 U25 ( .A(N32), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[5]), .CO(
        add_0_root_add_0_root_add_25_2_carry[6]), .S(N48) );
  FA1D0 U26 ( .A(N33), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[6]), .CO(
        add_0_root_add_0_root_add_25_2_carry[7]), .S(N49) );
  AO22D0 U27 ( .A1(N43), .A2(n78), .B1(N19), .B2(divide_mode), .Z(result[23])
         );
  AO22D0 U28 ( .A1(N50), .A2(n78), .B1(divide_mode), .B2(N26), .Z(result[30])
         );
  XOR3D1 U29 ( .A1(N34), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_25_2_carry[7]), .Z(N50) );
  XOR3D1 U30 ( .A1(N10), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_22_2_carry[7]), .Z(N26) );
  CKBD1 U31 ( .I(y[2]), .Z(fraction_y[2]) );
  CKBD1 U32 ( .I(x[2]), .Z(fraction_x[2]) );
  CKBD1 U33 ( .I(y[1]), .Z(fraction_y[1]) );
  CKBD1 U34 ( .I(x[1]), .Z(fraction_x[1]) );
  CKBD1 U35 ( .I(y[3]), .Z(fraction_y[3]) );
  CKBD1 U36 ( .I(x[3]), .Z(fraction_x[3]) );
  CKBD1 U37 ( .I(y[4]), .Z(fraction_y[4]) );
  CKBD1 U38 ( .I(x[4]), .Z(fraction_x[4]) );
  CKBD1 U39 ( .I(y[22]), .Z(fraction_y[22]) );
  CKBD1 U40 ( .I(x[5]), .Z(fraction_x[5]) );
  CKBD1 U41 ( .I(y[5]), .Z(fraction_y[5]) );
  CKBD1 U42 ( .I(x[6]), .Z(fraction_x[6]) );
  CKBD1 U43 ( .I(x[22]), .Z(fraction_x[22]) );
  CKBD1 U44 ( .I(y[6]), .Z(fraction_y[6]) );
  CKBD1 U45 ( .I(y[7]), .Z(fraction_y[7]) );
  CKBD1 U46 ( .I(x[7]), .Z(fraction_x[7]) );
  CKBD1 U47 ( .I(y[8]), .Z(fraction_y[8]) );
  CKBD1 U48 ( .I(x[8]), .Z(fraction_x[8]) );
  CKBD1 U49 ( .I(y[9]), .Z(fraction_y[9]) );
  CKBD1 U50 ( .I(x[9]), .Z(fraction_x[9]) );
  CKBD1 U51 ( .I(y[10]), .Z(fraction_y[10]) );
  CKBD1 U52 ( .I(x[10]), .Z(fraction_x[10]) );
  CKBD1 U53 ( .I(y[11]), .Z(fraction_y[11]) );
  CKBD1 U54 ( .I(x[11]), .Z(fraction_x[11]) );
  CKBD1 U55 ( .I(y[12]), .Z(fraction_y[12]) );
  CKBD1 U56 ( .I(x[12]), .Z(fraction_x[12]) );
  CKBD1 U57 ( .I(y[13]), .Z(fraction_y[13]) );
  CKBD1 U58 ( .I(x[13]), .Z(fraction_x[13]) );
  CKBD1 U59 ( .I(y[14]), .Z(fraction_y[14]) );
  CKBD1 U60 ( .I(x[14]), .Z(fraction_x[14]) );
  CKBD1 U61 ( .I(y[15]), .Z(fraction_y[15]) );
  CKBD1 U62 ( .I(x[15]), .Z(fraction_x[15]) );
  CKBD1 U63 ( .I(y[16]), .Z(fraction_y[16]) );
  CKBD1 U64 ( .I(x[16]), .Z(fraction_x[16]) );
  CKBD1 U65 ( .I(y[17]), .Z(fraction_y[17]) );
  CKBD1 U66 ( .I(x[17]), .Z(fraction_x[17]) );
  CKBD1 U67 ( .I(y[18]), .Z(fraction_y[18]) );
  CKBD1 U68 ( .I(x[18]), .Z(fraction_x[18]) );
  CKBD1 U69 ( .I(x[19]), .Z(fraction_x[19]) );
  CKBD1 U70 ( .I(y[19]), .Z(fraction_y[19]) );
  CKBD1 U71 ( .I(y[20]), .Z(fraction_y[20]) );
  CKBD1 U72 ( .I(x[20]), .Z(fraction_x[20]) );
  CKBD1 U73 ( .I(y[21]), .Z(fraction_y[21]) );
  CKBD1 U74 ( .I(x[21]), .Z(fraction_x[21]) );
  AN2XD1 U75 ( .A1(y[23]), .A2(y[24]), .Z(n35) );
  INVD1 U76 ( .I(y[29]), .ZN(N17) );
  INVD0 U77 ( .I(y[24]), .ZN(N12) );
  INVD1 U78 ( .I(y[25]), .ZN(N13) );
  INVD1 U79 ( .I(y[26]), .ZN(N14) );
  INVD1 U80 ( .I(y[27]), .ZN(N15) );
  INVD1 U81 ( .I(y[28]), .ZN(N16) );
  AN2XD1 U82 ( .A1(n35), .A2(y[25]), .Z(n410) );
  AN2XD1 U83 ( .A1(n410), .A2(y[26]), .Z(n51) );
  AN2XD1 U84 ( .A1(n51), .A2(y[27]), .Z(n60) );
  AN2XD1 U85 ( .A1(n60), .A2(y[28]), .Z(n70) );
  CKXOR2D1 U86 ( .A1(y[30]), .A2(n77), .Z(N42) );
  ND2D1 U87 ( .A1(n70), .A2(y[29]), .ZN(n77) );
  CKBD1 U88 ( .I(x[0]), .Z(fraction_x[0]) );
  CKBD1 U89 ( .I(y[0]), .Z(fraction_y[0]) );
  CKBD1 U90 ( .I(result_fraction[22]), .Z(result[22]) );
  CKBD1 U91 ( .I(result_fraction[21]), .Z(result[21]) );
  CKBD1 U92 ( .I(result_fraction[20]), .Z(result[20]) );
  CKBD1 U93 ( .I(result_fraction[19]), .Z(result[19]) );
  CKBD1 U94 ( .I(result_fraction[18]), .Z(result[18]) );
  CKBD1 U95 ( .I(result_fraction[17]), .Z(result[17]) );
  CKBD1 U96 ( .I(result_fraction[16]), .Z(result[16]) );
  CKBD1 U97 ( .I(result_fraction[15]), .Z(result[15]) );
  CKBD1 U98 ( .I(result_fraction[14]), .Z(result[14]) );
  CKBD1 U99 ( .I(result_fraction[13]), .Z(result[13]) );
  CKBD1 U100 ( .I(result_fraction[12]), .Z(result[12]) );
  CKBD1 U101 ( .I(result_fraction[11]), .Z(result[11]) );
  CKBD1 U102 ( .I(result_fraction[10]), .Z(result[10]) );
  CKBD1 U103 ( .I(result_fraction[9]), .Z(result[9]) );
  CKBD1 U104 ( .I(result_fraction[8]), .Z(result[8]) );
  CKBD1 U105 ( .I(result_fraction[7]), .Z(result[7]) );
  CKBD1 U106 ( .I(result_fraction[6]), .Z(result[6]) );
  CKBD1 U107 ( .I(result_fraction[5]), .Z(result[5]) );
  CKBD1 U108 ( .I(result_fraction[4]), .Z(result[4]) );
  CKBD1 U109 ( .I(result_fraction[3]), .Z(result[3]) );
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


module oadm_fixed_divmul_correction_chain_LEVEL1_DW01_sub_0 ( A, B, CI, DIFF, 
        CO );
  input [28:0] A;
  input [28:0] B;
  output [28:0] DIFF;
  input CI;
  output CO;
  wire   carry_2_, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50;

  AN2XD1 U1 ( .A1(n5), .A2(n28), .Z(n1) );
  AN2XD1 U2 ( .A1(n1), .A2(n27), .Z(n2) );
  AN2XD1 U3 ( .A1(n2), .A2(n29), .Z(n3) );
  AN2XD1 U4 ( .A1(n3), .A2(n29), .Z(n4) );
  AN2XD1 U5 ( .A1(n24), .A2(n30), .Z(n5) );
  INVD1 U6 ( .I(B[23]), .ZN(n28) );
  INVD1 U7 ( .I(B[22]), .ZN(n30) );
  INVD1 U8 ( .I(B[24]), .ZN(n27) );
  AN2XD1 U10 ( .A1(n25), .A2(n49), .Z(n6) );
  AN2XD1 U11 ( .A1(n6), .A2(n48), .Z(n7) );
  AN2XD1 U12 ( .A1(n7), .A2(n47), .Z(n8) );
  AN2XD1 U13 ( .A1(n8), .A2(n46), .Z(n9) );
  AN2XD1 U14 ( .A1(n9), .A2(n45), .Z(n10) );
  AN2XD1 U15 ( .A1(n10), .A2(n44), .Z(n11) );
  AN2XD1 U16 ( .A1(n11), .A2(n43), .Z(n12) );
  AN2XD1 U17 ( .A1(n12), .A2(n42), .Z(n13) );
  AN2XD1 U18 ( .A1(n13), .A2(n41), .Z(n14) );
  AN2XD1 U19 ( .A1(n14), .A2(n40), .Z(n15) );
  AN2XD1 U20 ( .A1(n15), .A2(n39), .Z(n16) );
  AN2XD1 U21 ( .A1(n16), .A2(n38), .Z(n17) );
  AN2XD1 U22 ( .A1(n17), .A2(n37), .Z(n18) );
  AN2XD1 U23 ( .A1(n18), .A2(n36), .Z(n19) );
  AN2XD1 U24 ( .A1(n19), .A2(n35), .Z(n20) );
  AN2XD1 U25 ( .A1(n20), .A2(n34), .Z(n21) );
  AN2XD1 U26 ( .A1(n21), .A2(n33), .Z(n22) );
  AN2XD1 U27 ( .A1(n22), .A2(n32), .Z(n23) );
  AN2XD1 U28 ( .A1(n23), .A2(n31), .Z(n24) );
  AN2XD1 U31 ( .A1(carry_2_), .A2(n50), .Z(n25) );
  INVD1 U32 ( .I(B[2]), .ZN(n50) );
  INVD1 U33 ( .I(B[3]), .ZN(n49) );
  INVD1 U34 ( .I(B[4]), .ZN(n48) );
  INVD1 U35 ( .I(B[5]), .ZN(n47) );
  INVD1 U36 ( .I(B[6]), .ZN(n46) );
  INVD1 U37 ( .I(B[7]), .ZN(n45) );
  INVD1 U38 ( .I(B[8]), .ZN(n44) );
  INVD1 U39 ( .I(B[9]), .ZN(n43) );
  INVD1 U40 ( .I(B[10]), .ZN(n42) );
  INVD1 U41 ( .I(B[11]), .ZN(n41) );
  INVD1 U42 ( .I(B[12]), .ZN(n40) );
  INVD1 U43 ( .I(B[13]), .ZN(n39) );
  INVD1 U44 ( .I(B[14]), .ZN(n38) );
  INVD1 U45 ( .I(B[15]), .ZN(n37) );
  INVD1 U46 ( .I(B[16]), .ZN(n36) );
  INVD1 U47 ( .I(B[17]), .ZN(n35) );
  INVD1 U48 ( .I(B[18]), .ZN(n34) );
  INVD1 U49 ( .I(B[19]), .ZN(n33) );
  INVD1 U50 ( .I(B[20]), .ZN(n32) );
  INVD1 U51 ( .I(B[21]), .ZN(n31) );
  CKXOR2D1 U52 ( .A1(n4), .A2(n29), .Z(DIFF[27]) );
  CKXOR2D1 U53 ( .A1(n3), .A2(n29), .Z(DIFF[26]) );
  CKXOR2D1 U54 ( .A1(n2), .A2(n29), .Z(DIFF[25]) );
  CKXOR2D1 U55 ( .A1(n1), .A2(n27), .Z(DIFF[24]) );
  CKXOR2D1 U56 ( .A1(n5), .A2(n28), .Z(DIFF[23]) );
  CKXOR2D1 U57 ( .A1(n24), .A2(n30), .Z(DIFF[22]) );
  CKXOR2D1 U58 ( .A1(n23), .A2(n31), .Z(DIFF[21]) );
  CKXOR2D1 U59 ( .A1(n22), .A2(n32), .Z(DIFF[20]) );
  CKXOR2D1 U60 ( .A1(n21), .A2(n33), .Z(DIFF[19]) );
  CKXOR2D1 U61 ( .A1(n20), .A2(n34), .Z(DIFF[18]) );
  CKXOR2D1 U62 ( .A1(n19), .A2(n35), .Z(DIFF[17]) );
  CKXOR2D1 U63 ( .A1(n18), .A2(n36), .Z(DIFF[16]) );
  CKXOR2D1 U64 ( .A1(n17), .A2(n37), .Z(DIFF[15]) );
  CKXOR2D1 U65 ( .A1(n16), .A2(n38), .Z(DIFF[14]) );
  CKXOR2D1 U66 ( .A1(n15), .A2(n39), .Z(DIFF[13]) );
  CKXOR2D1 U67 ( .A1(n14), .A2(n40), .Z(DIFF[12]) );
  CKXOR2D1 U68 ( .A1(n13), .A2(n41), .Z(DIFF[11]) );
  CKXOR2D1 U69 ( .A1(n12), .A2(n42), .Z(DIFF[10]) );
  CKXOR2D1 U70 ( .A1(n11), .A2(n43), .Z(DIFF[9]) );
  CKXOR2D1 U71 ( .A1(n10), .A2(n44), .Z(DIFF[8]) );
  CKXOR2D1 U72 ( .A1(n9), .A2(n45), .Z(DIFF[7]) );
  CKXOR2D1 U73 ( .A1(n8), .A2(n46), .Z(DIFF[6]) );
  CKXOR2D1 U74 ( .A1(n7), .A2(n47), .Z(DIFF[5]) );
  CKXOR2D1 U75 ( .A1(n6), .A2(n48), .Z(DIFF[4]) );
  CKXOR2D1 U76 ( .A1(n25), .A2(n49), .Z(DIFF[3]) );
  CKXOR2D1 U77 ( .A1(carry_2_), .A2(n50), .Z(DIFF[2]) );
  NR2D0 U78 ( .A1(B[1]), .A2(B[0]), .ZN(carry_2_) );
  CKND0 U9 ( .I(B[28]), .ZN(n29) );
  NR2D0 U29 ( .A1(B[28]), .A2(n4), .ZN(DIFF[28]) );
endmodule


module oadm_fixed_divmul_correction_chain_LEVEL1_DW01_sub_1 ( A, B, CI, DIFF, 
        CO );
  input [28:0] A;
  input [28:0] B;
  output [28:0] DIFF;
  input CI;
  output CO;
  wire   carry_2_, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50;

  AN2XD1 U1 ( .A1(n5), .A2(n49), .Z(n1) );
  AN2XD1 U2 ( .A1(n1), .A2(n50), .Z(n2) );
  AN2XD1 U3 ( .A1(n2), .A2(n50), .Z(n3) );
  AN2XD1 U4 ( .A1(n24), .A2(n28), .Z(n4) );
  AN2XD1 U5 ( .A1(n4), .A2(n27), .Z(n5) );
  INVD1 U6 ( .I(B[22]), .ZN(n28) );
  INVD1 U7 ( .I(B[24]), .ZN(n49) );
  AN2XD1 U9 ( .A1(n25), .A2(n47), .Z(n6) );
  AN2XD1 U10 ( .A1(n6), .A2(n46), .Z(n7) );
  AN2XD1 U11 ( .A1(n7), .A2(n45), .Z(n8) );
  AN2XD1 U12 ( .A1(n8), .A2(n44), .Z(n9) );
  AN2XD1 U13 ( .A1(n9), .A2(n43), .Z(n10) );
  AN2XD1 U14 ( .A1(n10), .A2(n42), .Z(n11) );
  AN2XD1 U15 ( .A1(n11), .A2(n41), .Z(n12) );
  AN2XD1 U16 ( .A1(n12), .A2(n40), .Z(n13) );
  AN2XD1 U17 ( .A1(n13), .A2(n39), .Z(n14) );
  AN2XD1 U18 ( .A1(n14), .A2(n38), .Z(n15) );
  AN2XD1 U19 ( .A1(n15), .A2(n37), .Z(n16) );
  AN2XD1 U20 ( .A1(n16), .A2(n36), .Z(n17) );
  AN2XD1 U21 ( .A1(n17), .A2(n35), .Z(n18) );
  AN2XD1 U22 ( .A1(n18), .A2(n34), .Z(n19) );
  AN2XD1 U23 ( .A1(n19), .A2(n33), .Z(n20) );
  AN2XD1 U24 ( .A1(n20), .A2(n32), .Z(n21) );
  AN2XD1 U25 ( .A1(n21), .A2(n31), .Z(n22) );
  AN2XD1 U26 ( .A1(n22), .A2(n30), .Z(n23) );
  AN2XD1 U27 ( .A1(n23), .A2(n29), .Z(n24) );
  INVD1 U30 ( .I(B[23]), .ZN(n27) );
  AN2XD1 U31 ( .A1(carry_2_), .A2(n48), .Z(n25) );
  INVD1 U32 ( .I(B[2]), .ZN(n48) );
  INVD1 U33 ( .I(B[3]), .ZN(n47) );
  INVD1 U34 ( .I(B[4]), .ZN(n46) );
  INVD1 U35 ( .I(B[5]), .ZN(n45) );
  INVD1 U36 ( .I(B[6]), .ZN(n44) );
  INVD1 U37 ( .I(B[7]), .ZN(n43) );
  INVD1 U38 ( .I(B[8]), .ZN(n42) );
  INVD1 U39 ( .I(B[9]), .ZN(n41) );
  INVD1 U40 ( .I(B[10]), .ZN(n40) );
  INVD1 U41 ( .I(B[11]), .ZN(n39) );
  INVD1 U42 ( .I(B[12]), .ZN(n38) );
  INVD1 U43 ( .I(B[13]), .ZN(n37) );
  INVD1 U44 ( .I(B[14]), .ZN(n36) );
  INVD1 U45 ( .I(B[15]), .ZN(n35) );
  INVD1 U46 ( .I(B[16]), .ZN(n34) );
  INVD1 U47 ( .I(B[17]), .ZN(n33) );
  INVD1 U48 ( .I(B[18]), .ZN(n32) );
  INVD1 U49 ( .I(B[19]), .ZN(n31) );
  INVD1 U50 ( .I(B[20]), .ZN(n30) );
  INVD1 U51 ( .I(B[21]), .ZN(n29) );
  CKXOR2D1 U52 ( .A1(n3), .A2(n50), .Z(DIFF[27]) );
  CKXOR2D1 U53 ( .A1(n2), .A2(n50), .Z(DIFF[26]) );
  CKXOR2D1 U54 ( .A1(n1), .A2(n50), .Z(DIFF[25]) );
  CKXOR2D1 U55 ( .A1(n5), .A2(n49), .Z(DIFF[24]) );
  CKXOR2D1 U56 ( .A1(n4), .A2(n27), .Z(DIFF[23]) );
  CKXOR2D1 U57 ( .A1(n24), .A2(n28), .Z(DIFF[22]) );
  CKXOR2D1 U58 ( .A1(n23), .A2(n29), .Z(DIFF[21]) );
  CKXOR2D1 U59 ( .A1(n22), .A2(n30), .Z(DIFF[20]) );
  CKXOR2D1 U60 ( .A1(n21), .A2(n31), .Z(DIFF[19]) );
  CKXOR2D1 U61 ( .A1(n20), .A2(n32), .Z(DIFF[18]) );
  CKXOR2D1 U62 ( .A1(n19), .A2(n33), .Z(DIFF[17]) );
  CKXOR2D1 U63 ( .A1(n18), .A2(n34), .Z(DIFF[16]) );
  CKXOR2D1 U64 ( .A1(n17), .A2(n35), .Z(DIFF[15]) );
  CKXOR2D1 U65 ( .A1(n16), .A2(n36), .Z(DIFF[14]) );
  CKXOR2D1 U66 ( .A1(n15), .A2(n37), .Z(DIFF[13]) );
  CKXOR2D1 U67 ( .A1(n14), .A2(n38), .Z(DIFF[12]) );
  CKXOR2D1 U68 ( .A1(n13), .A2(n39), .Z(DIFF[11]) );
  CKXOR2D1 U69 ( .A1(n12), .A2(n40), .Z(DIFF[10]) );
  CKXOR2D1 U70 ( .A1(n11), .A2(n41), .Z(DIFF[9]) );
  CKXOR2D1 U71 ( .A1(n10), .A2(n42), .Z(DIFF[8]) );
  CKXOR2D1 U72 ( .A1(n9), .A2(n43), .Z(DIFF[7]) );
  CKXOR2D1 U73 ( .A1(n8), .A2(n44), .Z(DIFF[6]) );
  CKXOR2D1 U74 ( .A1(n7), .A2(n45), .Z(DIFF[5]) );
  CKXOR2D1 U75 ( .A1(n6), .A2(n46), .Z(DIFF[4]) );
  CKXOR2D1 U76 ( .A1(n25), .A2(n47), .Z(DIFF[3]) );
  CKXOR2D1 U77 ( .A1(carry_2_), .A2(n48), .Z(DIFF[2]) );
  NR2D0 U78 ( .A1(B[1]), .A2(B[0]), .ZN(carry_2_) );
  CKND0 U8 ( .I(B[28]), .ZN(n50) );
  NR2D0 U28 ( .A1(B[28]), .A2(n3), .ZN(DIFF[28]) );
endmodule


module oadm_fixed_divmul_correction_chain_LEVEL1_DW01_sub_4 ( A, B, CI, DIFF, 
        CO );
  input [25:0] A;
  input [25:0] B;
  output [25:0] DIFF;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46;

  NR2D1 U1 ( .A1(n22), .A2(n26), .ZN(DIFF[23]) );
  CKBD1 U2 ( .I(DIFF[23]), .Z(DIFF[24]) );
  CKBD1 U3 ( .I(DIFF[23]), .Z(DIFF[25]) );
  AN2XD1 U5 ( .A1(n2), .A2(n46), .Z(n3) );
  AN2XD1 U6 ( .A1(n3), .A2(n45), .Z(n4) );
  AN2XD1 U7 ( .A1(n4), .A2(n44), .Z(n5) );
  AN2XD1 U8 ( .A1(n5), .A2(n43), .Z(n6) );
  AN2XD1 U9 ( .A1(n6), .A2(n42), .Z(n7) );
  AN2XD1 U10 ( .A1(n7), .A2(n41), .Z(n8) );
  AN2XD1 U11 ( .A1(n8), .A2(n40), .Z(n9) );
  AN2XD1 U12 ( .A1(n9), .A2(n39), .Z(n10) );
  AN2XD1 U13 ( .A1(n10), .A2(n38), .Z(n11) );
  AN2XD1 U14 ( .A1(n11), .A2(n37), .Z(n12) );
  AN2XD1 U15 ( .A1(n12), .A2(n36), .Z(n13) );
  AN2XD1 U16 ( .A1(n13), .A2(n35), .Z(n14) );
  AN2XD1 U17 ( .A1(n14), .A2(n34), .Z(n15) );
  AN2XD1 U18 ( .A1(n15), .A2(n33), .Z(n16) );
  AN2XD1 U19 ( .A1(n16), .A2(n32), .Z(n17) );
  AN2XD1 U20 ( .A1(n17), .A2(n31), .Z(n18) );
  AN2XD1 U21 ( .A1(n18), .A2(n30), .Z(n19) );
  AN2XD1 U22 ( .A1(n19), .A2(n29), .Z(n20) );
  AN2XD1 U23 ( .A1(n20), .A2(n28), .Z(n21) );
  AN2XD1 U24 ( .A1(n21), .A2(n27), .Z(n22) );
  INVD1 U25 ( .I(B[22]), .ZN(n26) );
  INVD1 U28 ( .I(B[2]), .ZN(n46) );
  INVD1 U29 ( .I(B[3]), .ZN(n45) );
  INVD1 U30 ( .I(B[4]), .ZN(n44) );
  INVD1 U31 ( .I(B[5]), .ZN(n43) );
  INVD1 U32 ( .I(B[6]), .ZN(n42) );
  INVD1 U33 ( .I(B[7]), .ZN(n41) );
  INVD1 U34 ( .I(B[8]), .ZN(n40) );
  INVD1 U35 ( .I(B[9]), .ZN(n39) );
  INVD1 U36 ( .I(B[10]), .ZN(n38) );
  INVD1 U37 ( .I(B[11]), .ZN(n37) );
  INVD1 U38 ( .I(B[12]), .ZN(n36) );
  INVD1 U39 ( .I(B[13]), .ZN(n35) );
  INVD1 U40 ( .I(B[14]), .ZN(n34) );
  INVD1 U41 ( .I(B[15]), .ZN(n33) );
  INVD1 U42 ( .I(B[16]), .ZN(n32) );
  INVD1 U43 ( .I(B[17]), .ZN(n31) );
  INVD1 U44 ( .I(B[18]), .ZN(n30) );
  INVD1 U45 ( .I(B[19]), .ZN(n29) );
  INVD1 U46 ( .I(B[20]), .ZN(n28) );
  INVD1 U47 ( .I(B[21]), .ZN(n27) );
  CKBD1 U48 ( .I(B[0]), .Z(DIFF[0]) );
  XNR2D1 U49 ( .A1(n22), .A2(n26), .ZN(DIFF[22]) );
  CKXOR2D1 U50 ( .A1(n21), .A2(n27), .Z(DIFF[21]) );
  CKXOR2D1 U51 ( .A1(n20), .A2(n28), .Z(DIFF[20]) );
  CKXOR2D1 U52 ( .A1(n19), .A2(n29), .Z(DIFF[19]) );
  CKXOR2D1 U53 ( .A1(n18), .A2(n30), .Z(DIFF[18]) );
  CKXOR2D1 U54 ( .A1(n17), .A2(n31), .Z(DIFF[17]) );
  CKXOR2D1 U55 ( .A1(n16), .A2(n32), .Z(DIFF[16]) );
  CKXOR2D1 U56 ( .A1(n15), .A2(n33), .Z(DIFF[15]) );
  CKXOR2D1 U57 ( .A1(n14), .A2(n34), .Z(DIFF[14]) );
  CKXOR2D1 U58 ( .A1(n13), .A2(n35), .Z(DIFF[13]) );
  CKXOR2D1 U59 ( .A1(n12), .A2(n36), .Z(DIFF[12]) );
  CKXOR2D1 U60 ( .A1(n11), .A2(n37), .Z(DIFF[11]) );
  CKXOR2D1 U61 ( .A1(n10), .A2(n38), .Z(DIFF[10]) );
  CKXOR2D1 U62 ( .A1(n9), .A2(n39), .Z(DIFF[9]) );
  CKXOR2D1 U63 ( .A1(n8), .A2(n40), .Z(DIFF[8]) );
  CKXOR2D1 U64 ( .A1(n7), .A2(n41), .Z(DIFF[7]) );
  CKXOR2D1 U65 ( .A1(n6), .A2(n42), .Z(DIFF[6]) );
  CKXOR2D1 U66 ( .A1(n5), .A2(n43), .Z(DIFF[5]) );
  CKXOR2D1 U67 ( .A1(n4), .A2(n44), .Z(DIFF[4]) );
  CKXOR2D1 U68 ( .A1(n3), .A2(n45), .Z(DIFF[3]) );
  CKXOR2D1 U69 ( .A1(n2), .A2(n46), .Z(DIFF[2]) );
  CKXOR2D0 U4 ( .A1(B[0]), .A2(B[1]), .Z(DIFF[1]) );
  NR2D0 U26 ( .A1(B[0]), .A2(B[1]), .ZN(n2) );
endmodule


module oadm_fixed_divmul_correction_chain_LEVEL1_DW_mult_uns_0 ( a, b, product
 );
  input [28:0] a;
  input [6:0] b;
  output [35:0] product;
  wire   n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n380, n381,
         n382, n383, n384, n385, n386, n387, n388, n389, n390, n391, n392,
         n393, n394, n395, n396, n397, n398, n399, n400, n401, n402, n403,
         n404, n405, n406, n407, n408, n409, n410, n411, n412, n413, n414,
         n415, n416, n417, n418, n419, n420, n421, n422, n423, n424, n425,
         n426, n427, n428, n429, n430, n431, n432, n433, n434, n435, n436,
         n437, n438, n439, n440, n441, n442, n443, n444, n445, n446, n447,
         n448, n449, n450, n451, n452, n453, n454, n455, n456, n457, n458,
         n459, n460, n461, n462, n463, n464, n465, n466, n467, n468, n469;

  FA1D0 U17 ( .A(n47), .B(n51), .CI(n17), .CO(n16), .S(product[30]) );
  FA1D0 U18 ( .A(n54), .B(n52), .CI(n18), .CO(n17), .S(product[29]) );
  FA1D0 U19 ( .A(n57), .B(n55), .CI(n19), .CO(n18), .S(product[28]) );
  FA1D0 U20 ( .A(n60), .B(n58), .CI(n20), .CO(n19), .S(product[27]) );
  FA1D0 U21 ( .A(n63), .B(n61), .CI(n21), .CO(n20), .S(product[26]) );
  FA1D0 U22 ( .A(n66), .B(n64), .CI(n22), .CO(n21), .S(product[25]) );
  FA1D0 U23 ( .A(n69), .B(n67), .CI(n23), .CO(n22), .S(product[24]) );
  FA1D0 U24 ( .A(n72), .B(n70), .CI(n24), .CO(n23), .S(product[23]) );
  FA1D0 U25 ( .A(n75), .B(n73), .CI(n25), .CO(n24), .S(product[22]) );
  FA1D0 U26 ( .A(n78), .B(n76), .CI(n26), .CO(n25), .S(product[21]) );
  FA1D0 U27 ( .A(n81), .B(n79), .CI(n27), .CO(n26), .S(product[20]) );
  FA1D0 U28 ( .A(n84), .B(n82), .CI(n28), .CO(n27), .S(product[19]) );
  FA1D0 U29 ( .A(n87), .B(n85), .CI(n29), .CO(n28), .S(product[18]) );
  FA1D0 U30 ( .A(n90), .B(n88), .CI(n30), .CO(n29), .S(product[17]) );
  FA1D0 U31 ( .A(n93), .B(n91), .CI(n31), .CO(n30), .S(product[16]) );
  FA1D0 U32 ( .A(n96), .B(n94), .CI(n32), .CO(n31), .S(product[15]) );
  FA1D0 U33 ( .A(n99), .B(n97), .CI(n33), .CO(n32), .S(product[14]) );
  FA1D0 U34 ( .A(n102), .B(n100), .CI(n34), .CO(n33), .S(product[13]) );
  FA1D0 U35 ( .A(n105), .B(n103), .CI(n35), .CO(n34), .S(product[12]) );
  FA1D0 U36 ( .A(n108), .B(n106), .CI(n36), .CO(n35), .S(product[11]) );
  FA1D0 U37 ( .A(n111), .B(n109), .CI(n37), .CO(n36), .S(product[10]) );
  FA1D0 U38 ( .A(n114), .B(n112), .CI(n38), .CO(n37), .S(product[9]) );
  FA1D0 U39 ( .A(n117), .B(n115), .CI(n39), .CO(n38), .S(product[8]) );
  FA1D0 U40 ( .A(n118), .B(n119), .CI(n40), .CO(n39), .S(product[7]) );
  FA1D0 U47 ( .A(n50), .B(n405), .CI(n49), .CO(n46), .S(n47) );
  HA1D0 U48 ( .A(n182), .B(n130), .CO(n48), .S(n49) );
  CMPE42D1 U49 ( .A(n131), .B(a[28]), .C(n183), .CIX(n53), .D(n384), .CO(n51), 
        .COX(n50), .S(n52) );
  CMPE42D1 U50 ( .A(n132), .B(a[27]), .C(n184), .CIX(n56), .D(n402), .CO(n54), 
        .COX(n53), .S(n55) );
  CMPE42D1 U51 ( .A(n133), .B(a[26]), .C(n185), .CIX(n59), .D(n401), .CO(n57), 
        .COX(n56), .S(n58) );
  CMPE42D1 U52 ( .A(n134), .B(a[25]), .C(n186), .CIX(n62), .D(n400), .CO(n60), 
        .COX(n59), .S(n61) );
  CMPE42D1 U53 ( .A(n135), .B(a[24]), .C(n187), .CIX(n65), .D(n399), .CO(n63), 
        .COX(n62), .S(n64) );
  CMPE42D1 U54 ( .A(n136), .B(a[23]), .C(n188), .CIX(n68), .D(n398), .CO(n66), 
        .COX(n65), .S(n67) );
  CMPE42D1 U55 ( .A(n137), .B(a[22]), .C(n189), .CIX(n71), .D(n397), .CO(n69), 
        .COX(n68), .S(n70) );
  CMPE42D1 U56 ( .A(n138), .B(a[21]), .C(n190), .CIX(n74), .D(n396), .CO(n72), 
        .COX(n71), .S(n73) );
  CMPE42D1 U57 ( .A(n139), .B(a[20]), .C(n191), .CIX(n77), .D(n395), .CO(n75), 
        .COX(n74), .S(n76) );
  CMPE42D1 U58 ( .A(n140), .B(a[19]), .C(n192), .CIX(n80), .D(n394), .CO(n78), 
        .COX(n77), .S(n79) );
  CMPE42D1 U59 ( .A(n141), .B(a[18]), .C(n193), .CIX(n83), .D(n393), .CO(n81), 
        .COX(n80), .S(n82) );
  CMPE42D1 U60 ( .A(n142), .B(a[17]), .C(n194), .CIX(n86), .D(n392), .CO(n84), 
        .COX(n83), .S(n85) );
  CMPE42D1 U61 ( .A(n143), .B(a[16]), .C(n195), .CIX(n89), .D(n391), .CO(n87), 
        .COX(n86), .S(n88) );
  CMPE42D1 U62 ( .A(n144), .B(a[15]), .C(n196), .CIX(n92), .D(n390), .CO(n90), 
        .COX(n89), .S(n91) );
  CMPE42D1 U63 ( .A(n145), .B(a[14]), .C(n197), .CIX(n95), .D(n389), .CO(n93), 
        .COX(n92), .S(n94) );
  CMPE42D1 U64 ( .A(n146), .B(a[13]), .C(n198), .CIX(n98), .D(n388), .CO(n96), 
        .COX(n95), .S(n97) );
  CMPE42D1 U65 ( .A(n147), .B(a[12]), .C(n199), .CIX(n101), .D(n387), .CO(n99), 
        .COX(n98), .S(n100) );
  CMPE42D1 U66 ( .A(n148), .B(a[11]), .C(n200), .CIX(n104), .D(n386), .CO(n102), .COX(n101), .S(n103) );
  CMPE42D1 U67 ( .A(n149), .B(a[10]), .C(n201), .CIX(n107), .D(n385), .CO(n105), .COX(n104), .S(n106) );
  CMPE42D1 U68 ( .A(n150), .B(a[9]), .C(n202), .CIX(n110), .D(n382), .CO(n108), 
        .COX(n107), .S(n109) );
  CMPE42D1 U69 ( .A(n151), .B(a[8]), .C(n203), .CIX(n113), .D(n383), .CO(n111), 
        .COX(n110), .S(n112) );
  CMPE42D1 U70 ( .A(n152), .B(a[7]), .C(n204), .CIX(n116), .D(n381), .CO(n114), 
        .COX(n113), .S(n115) );
  CMPE42D1 U71 ( .A(n153), .B(a[6]), .C(n205), .CIX(n121), .D(n380), .CO(n117), 
        .COX(n116), .S(n118) );
  FA1D0 U72 ( .A(n127), .B(n404), .CI(n122), .CO(n119), .S(n120) );
  HA1D0 U73 ( .A(n206), .B(a[5]), .CO(n121), .S(n122) );
  FA1D0 U74 ( .A(a[0]), .B(a[4]), .CI(n207), .CO(n123), .S(n124) );
  HA1D0 U75 ( .A(n208), .B(a[3]), .CO(n125), .S(n126) );
  XNR2D1 U256 ( .A1(n406), .A2(n432), .ZN(n380) );
  XNR2D1 U257 ( .A1(n406), .A2(n430), .ZN(n381) );
  XNR2D1 U258 ( .A1(n406), .A2(n428), .ZN(n382) );
  XNR2D1 U259 ( .A1(n406), .A2(n429), .ZN(n383) );
  XNR2D1 U260 ( .A1(n407), .A2(n409), .ZN(n384) );
  XNR2D1 U261 ( .A1(n406), .A2(n427), .ZN(n385) );
  XNR2D1 U262 ( .A1(n406), .A2(n426), .ZN(n386) );
  XNR2D1 U263 ( .A1(n406), .A2(n425), .ZN(n387) );
  XNR2D1 U264 ( .A1(n406), .A2(n424), .ZN(n388) );
  XNR2D1 U265 ( .A1(n406), .A2(n423), .ZN(n389) );
  XNR2D1 U266 ( .A1(n406), .A2(n422), .ZN(n390) );
  XNR2D1 U267 ( .A1(n406), .A2(n421), .ZN(n391) );
  XNR2D1 U268 ( .A1(n406), .A2(n420), .ZN(n392) );
  XNR2D1 U269 ( .A1(n406), .A2(n419), .ZN(n393) );
  XNR2D1 U270 ( .A1(n406), .A2(n418), .ZN(n394) );
  XNR2D1 U271 ( .A1(n406), .A2(n417), .ZN(n395) );
  XNR2D1 U272 ( .A1(n406), .A2(n416), .ZN(n396) );
  XNR2D1 U273 ( .A1(n406), .A2(n415), .ZN(n397) );
  XNR2D1 U274 ( .A1(n406), .A2(n414), .ZN(n398) );
  XNR2D1 U275 ( .A1(n406), .A2(n413), .ZN(n399) );
  XNR2D1 U276 ( .A1(n406), .A2(n412), .ZN(n400) );
  XNR2D1 U277 ( .A1(n406), .A2(n411), .ZN(n401) );
  XNR2D1 U278 ( .A1(n406), .A2(n410), .ZN(n402) );
  XNR2D1 U279 ( .A1(b[4]), .A2(a[26]), .ZN(n403) );
  INVD1 U280 ( .I(n408), .ZN(n407) );
  CKBD1 U281 ( .I(b[5]), .Z(n408) );
  XNR2D1 U282 ( .A1(n406), .A2(n433), .ZN(n404) );
  INVD1 U283 ( .I(a[23]), .ZN(n410) );
  INVD1 U284 ( .I(a[24]), .ZN(n409) );
  INVD1 U285 ( .I(a[0]), .ZN(n434) );
  XNR2D1 U286 ( .A1(n408), .A2(a[25]), .ZN(n405) );
  NR2D1 U287 ( .A1(n408), .A2(a[0]), .ZN(n127) );
  INVD1 U288 ( .I(a[3]), .ZN(n430) );
  INVD1 U289 ( .I(a[2]), .ZN(n432) );
  INVD1 U290 ( .I(a[4]), .ZN(n429) );
  INVD1 U291 ( .I(a[1]), .ZN(n433) );
  INVD1 U292 ( .I(a[5]), .ZN(n428) );
  INVD1 U293 ( .I(a[6]), .ZN(n427) );
  INVD1 U294 ( .I(a[7]), .ZN(n426) );
  INVD1 U295 ( .I(a[8]), .ZN(n425) );
  INVD1 U296 ( .I(a[9]), .ZN(n424) );
  INVD1 U297 ( .I(a[10]), .ZN(n423) );
  INVD1 U298 ( .I(a[11]), .ZN(n422) );
  INVD1 U299 ( .I(a[12]), .ZN(n421) );
  INVD1 U300 ( .I(a[13]), .ZN(n420) );
  INVD1 U301 ( .I(a[14]), .ZN(n419) );
  INVD1 U302 ( .I(a[15]), .ZN(n418) );
  INVD1 U303 ( .I(a[16]), .ZN(n417) );
  INVD1 U304 ( .I(a[17]), .ZN(n416) );
  INVD1 U305 ( .I(a[18]), .ZN(n415) );
  INVD1 U306 ( .I(a[19]), .ZN(n414) );
  INVD1 U307 ( .I(a[20]), .ZN(n413) );
  INVD1 U308 ( .I(a[21]), .ZN(n412) );
  INVD1 U309 ( .I(a[22]), .ZN(n411) );
  CKBD1 U310 ( .I(b[6]), .Z(n406) );
  INVD1 U311 ( .I(n126), .ZN(n431) );
  XOR4D0 U312 ( .A1(n403), .A2(n435), .A3(n436), .A4(n437), .Z(product[31]) );
  OAI22D0 U313 ( .A1(n438), .A2(n408), .B1(n439), .B2(b[6]), .ZN(n437) );
  CKXOR2D0 U314 ( .A1(a[28]), .A2(n408), .Z(n439) );
  CKND2D0 U315 ( .A1(a[24]), .A2(b[4]), .ZN(n436) );
  XOR3D0 U316 ( .A1(n48), .A2(n46), .A3(n16), .Z(n435) );
  AO222D0 U317 ( .A1(n440), .A2(n120), .B1(n440), .B2(n123), .C1(n123), .C2(
        n120), .Z(n40) );
  AO222D0 U318 ( .A1(n441), .A2(n124), .B1(n441), .B2(n125), .C1(n125), .C2(
        n124), .Z(n440) );
  OAI32D0 U319 ( .A1(n442), .A2(n432), .A3(n431), .B1(n443), .B2(n431), .ZN(
        n441) );
  OA21D0 U320 ( .A1(n408), .A2(a[0]), .B(n408), .Z(n443) );
  CKND2D0 U321 ( .A1(a[0]), .A2(b[5]), .ZN(n442) );
  OAI22D0 U322 ( .A1(a[0]), .A2(n408), .B1(n444), .B2(b[6]), .ZN(n208) );
  OAI22D0 U323 ( .A1(n444), .A2(n408), .B1(n445), .B2(b[4]), .ZN(n207) );
  CKXOR2D0 U324 ( .A1(n407), .A2(n433), .Z(n444) );
  OAI22D0 U325 ( .A1(n445), .A2(n408), .B1(n446), .B2(b[4]), .ZN(n206) );
  CKXOR2D0 U326 ( .A1(b[6]), .A2(n432), .Z(n445) );
  OAI22D0 U327 ( .A1(n446), .A2(n408), .B1(n447), .B2(b[4]), .ZN(n205) );
  CKXOR2D0 U328 ( .A1(b[6]), .A2(n430), .Z(n446) );
  OAI22D0 U329 ( .A1(n447), .A2(n408), .B1(n448), .B2(b[4]), .ZN(n204) );
  CKXOR2D0 U330 ( .A1(b[4]), .A2(n429), .Z(n447) );
  OAI22D0 U331 ( .A1(n448), .A2(n408), .B1(n449), .B2(b[4]), .ZN(n203) );
  CKXOR2D0 U332 ( .A1(b[4]), .A2(n428), .Z(n448) );
  OAI22D0 U333 ( .A1(n449), .A2(n408), .B1(n450), .B2(b[4]), .ZN(n202) );
  CKXOR2D0 U334 ( .A1(b[4]), .A2(n427), .Z(n449) );
  OAI22D0 U335 ( .A1(n450), .A2(n408), .B1(n451), .B2(b[4]), .ZN(n201) );
  CKXOR2D0 U336 ( .A1(n406), .A2(n426), .Z(n450) );
  OAI22D0 U337 ( .A1(n451), .A2(n408), .B1(n452), .B2(n406), .ZN(n200) );
  CKXOR2D0 U338 ( .A1(b[4]), .A2(n425), .Z(n451) );
  OAI22D0 U339 ( .A1(n452), .A2(n408), .B1(n453), .B2(n406), .ZN(n199) );
  CKXOR2D0 U340 ( .A1(n406), .A2(n424), .Z(n452) );
  OAI22D0 U341 ( .A1(n453), .A2(n408), .B1(n454), .B2(n406), .ZN(n198) );
  CKXOR2D0 U342 ( .A1(n406), .A2(n423), .Z(n453) );
  OAI22D0 U343 ( .A1(n454), .A2(n408), .B1(n455), .B2(n406), .ZN(n197) );
  CKXOR2D0 U344 ( .A1(b[4]), .A2(n422), .Z(n454) );
  OAI22D0 U345 ( .A1(n455), .A2(n408), .B1(n456), .B2(n406), .ZN(n196) );
  CKXOR2D0 U346 ( .A1(n406), .A2(n421), .Z(n455) );
  OAI22D0 U347 ( .A1(n456), .A2(n408), .B1(n457), .B2(n406), .ZN(n195) );
  CKXOR2D0 U348 ( .A1(n407), .A2(n420), .Z(n456) );
  OAI22D0 U349 ( .A1(n457), .A2(n408), .B1(n458), .B2(n406), .ZN(n194) );
  CKXOR2D0 U350 ( .A1(n407), .A2(n419), .Z(n457) );
  OAI22D0 U351 ( .A1(n458), .A2(n408), .B1(n459), .B2(n406), .ZN(n193) );
  CKXOR2D0 U352 ( .A1(n407), .A2(n418), .Z(n458) );
  OAI22D0 U353 ( .A1(n459), .A2(n408), .B1(n460), .B2(n406), .ZN(n192) );
  CKXOR2D0 U354 ( .A1(n407), .A2(n417), .Z(n459) );
  OAI22D0 U355 ( .A1(n460), .A2(n408), .B1(n461), .B2(n406), .ZN(n191) );
  CKXOR2D0 U356 ( .A1(n407), .A2(n416), .Z(n460) );
  OAI22D0 U357 ( .A1(n461), .A2(n408), .B1(n462), .B2(n406), .ZN(n190) );
  CKXOR2D0 U358 ( .A1(n406), .A2(n415), .Z(n461) );
  OAI22D0 U359 ( .A1(n462), .A2(n408), .B1(n463), .B2(b[4]), .ZN(n189) );
  CKXOR2D0 U360 ( .A1(n407), .A2(n414), .Z(n462) );
  OAI22D0 U361 ( .A1(n463), .A2(n408), .B1(n464), .B2(n406), .ZN(n188) );
  CKXOR2D0 U362 ( .A1(n407), .A2(n413), .Z(n463) );
  OAI22D0 U363 ( .A1(n464), .A2(n408), .B1(n465), .B2(b[4]), .ZN(n187) );
  CKXOR2D0 U364 ( .A1(n407), .A2(n412), .Z(n464) );
  OAI22D0 U365 ( .A1(n465), .A2(n408), .B1(n466), .B2(n406), .ZN(n186) );
  CKXOR2D0 U366 ( .A1(n407), .A2(n411), .Z(n465) );
  OAI22D0 U367 ( .A1(n466), .A2(n408), .B1(n467), .B2(b[4]), .ZN(n185) );
  CKXOR2D0 U368 ( .A1(n407), .A2(n410), .Z(n466) );
  OAI22D0 U369 ( .A1(n467), .A2(n408), .B1(n468), .B2(b[6]), .ZN(n184) );
  CKXOR2D0 U370 ( .A1(n407), .A2(n409), .Z(n467) );
  OAI22D0 U371 ( .A1(n468), .A2(n408), .B1(n469), .B2(b[6]), .ZN(n183) );
  CKXOR2D0 U372 ( .A1(b[3]), .A2(a[25]), .Z(n468) );
  OAI22D0 U373 ( .A1(n469), .A2(n408), .B1(n438), .B2(b[6]), .ZN(n182) );
  CKXOR2D0 U374 ( .A1(a[27]), .A2(n408), .Z(n438) );
  CKXOR2D0 U375 ( .A1(n408), .A2(a[26]), .Z(n469) );
  NR2D0 U376 ( .A1(n408), .A2(n434), .ZN(n153) );
  NR2D0 U377 ( .A1(n408), .A2(n433), .ZN(n152) );
  NR2D0 U378 ( .A1(b[3]), .A2(n432), .ZN(n151) );
  NR2D0 U379 ( .A1(n408), .A2(n430), .ZN(n150) );
  NR2D0 U380 ( .A1(n408), .A2(n429), .ZN(n149) );
  NR2D0 U381 ( .A1(b[3]), .A2(n428), .ZN(n148) );
  NR2D0 U382 ( .A1(n408), .A2(n427), .ZN(n147) );
  NR2D0 U383 ( .A1(n408), .A2(n426), .ZN(n146) );
  NR2D0 U384 ( .A1(b[3]), .A2(n425), .ZN(n145) );
  NR2D0 U385 ( .A1(n408), .A2(n424), .ZN(n144) );
  NR2D0 U386 ( .A1(b[3]), .A2(n423), .ZN(n143) );
  NR2D0 U387 ( .A1(b[3]), .A2(n422), .ZN(n142) );
  NR2D0 U388 ( .A1(b[3]), .A2(n421), .ZN(n141) );
  NR2D0 U389 ( .A1(b[3]), .A2(n420), .ZN(n140) );
  NR2D0 U390 ( .A1(b[3]), .A2(n419), .ZN(n139) );
  NR2D0 U391 ( .A1(b[3]), .A2(n418), .ZN(n138) );
  NR2D0 U392 ( .A1(b[3]), .A2(n417), .ZN(n137) );
  NR2D0 U393 ( .A1(b[3]), .A2(n416), .ZN(n136) );
  NR2D0 U394 ( .A1(b[3]), .A2(n415), .ZN(n135) );
  NR2D0 U395 ( .A1(b[3]), .A2(n414), .ZN(n134) );
  NR2D0 U396 ( .A1(b[3]), .A2(n413), .ZN(n133) );
  NR2D0 U397 ( .A1(b[3]), .A2(n412), .ZN(n132) );
  NR2D0 U398 ( .A1(b[3]), .A2(n411), .ZN(n131) );
  NR2D0 U399 ( .A1(b[3]), .A2(n410), .ZN(n130) );
endmodule


module oadm_fixed_divmul_correction_chain_LEVEL1_DW01_add_8 ( A, B, CI, SUM, 
        CO );
  input [28:0] A;
  input [28:0] B;
  output [28:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [28:2] carry;

  FA1D0 U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  FA1D0 U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  FA1D0 U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  FA1D0 U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  FA1D0 U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  FA1D0 U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  FA1D0 U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  FA1D0 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
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
  FA1D0 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FA1D0 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA1D0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA1D0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1D0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1D0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1D0 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA1D0 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3D1 U1_28 ( .A1(A[28]), .A2(B[28]), .A3(carry[28]), .Z(SUM[28]) );
  FA1D0 U1_25 ( .A(A[25]), .B(B[25]), .CI(carry[25]), .CO(carry[26]), .S(
        SUM[25]) );
  FA1D0 U1_24 ( .A(A[24]), .B(B[24]), .CI(carry[24]), .CO(carry[25]), .S(
        SUM[24]) );
  FA1D0 U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  FA1D0 U1_27 ( .A(A[27]), .B(B[27]), .CI(carry[27]), .CO(carry[28]), .S(
        SUM[27]) );
  FA1D0 U1_26 ( .A(A[26]), .B(B[26]), .CI(carry[26]), .CO(carry[27]), .S(
        SUM[26]) );
  AN2XD1 U1 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
  CKXOR2D1 U2 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
endmodule


module oadm_fixed_divmul_correction_chain_LEVEL1_DW01_add_7 ( A, B, CI, SUM, 
        CO );
  input [28:0] A;
  input [28:0] B;
  output [28:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [28:2] carry;

  FA1D0 U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  FA1D0 U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  FA1D0 U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  FA1D0 U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  FA1D0 U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  FA1D0 U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  FA1D0 U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  FA1D0 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
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
  FA1D0 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FA1D0 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA1D0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1D0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA1D0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1D0 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  FA1D0 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA1D0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  XOR3D1 U1_28 ( .A1(A[28]), .A2(B[28]), .A3(carry[28]), .Z(SUM[28]) );
  FA1D0 U1_25 ( .A(A[25]), .B(B[25]), .CI(carry[25]), .CO(carry[26]), .S(
        SUM[25]) );
  FA1D0 U1_24 ( .A(A[24]), .B(B[24]), .CI(carry[24]), .CO(carry[25]), .S(
        SUM[24]) );
  FA1D0 U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  FA1D0 U1_27 ( .A(A[27]), .B(B[27]), .CI(carry[27]), .CO(carry[28]), .S(
        SUM[27]) );
  FA1D0 U1_26 ( .A(A[26]), .B(B[26]), .CI(carry[26]), .CO(carry[27]), .S(
        SUM[26]) );
  AN2XD1 U1 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
  CKXOR2D1 U2 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
endmodule


module oadm_fixed_divmul_correction_chain_LEVEL1_DW01_add_5 ( A, B, CI, SUM, 
        CO );
  input [27:0] A;
  input [27:0] B;
  output [27:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [22:2] carry;

  FA1D0 U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  FA1D0 U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  FA1D0 U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  FA1D0 U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  FA1D0 U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  FA1D0 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  FA1D0 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  FA1D0 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  FA1D0 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  FA1D0 U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  FA1D0 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FA1D0 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FA1D0 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  FA1D0 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FA1D0 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA1D0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA1D0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1D0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1D0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1D0 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  FA1D0 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  AN2XD1 U2 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
  XNR2D1 U4 ( .A1(carry[22]), .A2(B[22]), .ZN(SUM[22]) );
  CKXOR2D1 U5 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
  CKND0 U6 ( .I(SUM[24]), .ZN(SUM[23]) );
  OR2D0 U1 ( .A1(B[22]), .A2(carry[22]), .Z(SUM[24]) );
endmodule


module oadm_fixed_divmul_correction_chain_LEVEL1_DW01_add_4 ( A, B, CI, SUM, 
        CO );
  input [28:0] A;
  input [28:0] B;
  output [28:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [23:2] carry;

  FA1D0 U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  FA1D0 U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  FA1D0 U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  FA1D0 U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  FA1D0 U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  FA1D0 U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  FA1D0 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
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
  FA1D0 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FA1D0 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA1D0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA1D0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1D0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1D0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1D0 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA1D0 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  AN2XD1 U2 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
  INVD1 U3 ( .I(n2), .ZN(SUM[24]) );
  INVD1 U4 ( .I(n2), .ZN(SUM[28]) );
  INVD1 U5 ( .I(n2), .ZN(SUM[25]) );
  INVD1 U6 ( .I(n2), .ZN(SUM[26]) );
  INVD1 U7 ( .I(n2), .ZN(SUM[27]) );
  AN2XD1 U9 ( .A1(carry[23]), .A2(B[23]), .Z(n2) );
  XNR2D1 U10 ( .A1(carry[22]), .A2(B[22]), .ZN(SUM[22]) );
  CKXOR2D1 U11 ( .A1(carry[23]), .A2(B[23]), .Z(SUM[23]) );
  CKXOR2D1 U12 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
  OR2D0 U1 ( .A1(B[22]), .A2(carry[22]), .Z(carry[23]) );
endmodule


module oadm_fixed_divmul_correction_chain_LEVEL1_DW01_add_3 ( A, B, CI, SUM, 
        CO );
  input [28:0] A;
  input [28:0] B;
  output [28:0] SUM;
  input CI;
  output CO;
  wire   n1, n3, n4, n5;
  wire   [25:2] carry;

  FA1D0 U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  FA1D0 U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  FA1D0 U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  FA1D0 U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  FA1D0 U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  FA1D0 U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  FA1D0 U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  FA1D0 U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  FA1D0 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
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
  FA1D0 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FA1D0 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA1D0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA1D0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1D0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1D0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1D0 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  FA1D0 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA1D0 U1_24 ( .A(A[24]), .B(B[24]), .CI(carry[24]), .CO(carry[25]), .S(
        SUM[24]) );
  AN2XD1 U1 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
  AN2XD1 U3 ( .A1(n4), .A2(B[26]), .Z(n3) );
  AN2XD1 U4 ( .A1(carry[25]), .A2(B[25]), .Z(n4) );
  CKXOR2D1 U5 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
  CKXOR2D1 U6 ( .A1(n3), .A2(B[27]), .Z(SUM[27]) );
  CKXOR2D1 U7 ( .A1(n4), .A2(B[26]), .Z(SUM[26]) );
  CKXOR2D1 U8 ( .A1(carry[25]), .A2(B[25]), .Z(SUM[25]) );
  XNR2D0 U2 ( .A1(B[28]), .A2(n5), .ZN(SUM[28]) );
  CKND2D0 U9 ( .A1(B[27]), .A2(n3), .ZN(n5) );
endmodule


module oadm_fixed_divmul_correction_chain_LEVEL1_DW01_sub_6 ( A, B, CI, DIFF, 
        CO );
  input [27:0] A;
  input [27:0] B;
  output [27:0] DIFF;
  input CI;
  output CO;
  wire   n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n24;
  wire   [22:1] carry;

  FA1D0 U2_21 ( .A(A[21]), .B(n4), .CI(carry[21]), .CO(carry[22]), .S(DIFF[21]) );
  FA1D0 U2_20 ( .A(A[20]), .B(n5), .CI(carry[20]), .CO(carry[21]), .S(DIFF[20]) );
  FA1D0 U2_18 ( .A(A[18]), .B(n7), .CI(carry[18]), .CO(carry[19]), .S(DIFF[18]) );
  FA1D0 U2_17 ( .A(A[17]), .B(n8), .CI(carry[17]), .CO(carry[18]), .S(DIFF[17]) );
  FA1D0 U2_16 ( .A(A[16]), .B(n9), .CI(carry[16]), .CO(carry[17]), .S(DIFF[16]) );
  FA1D0 U2_15 ( .A(A[15]), .B(n10), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  FA1D0 U2_14 ( .A(A[14]), .B(n11), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  FA1D0 U2_13 ( .A(A[13]), .B(n12), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  FA1D0 U2_12 ( .A(A[12]), .B(n13), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  FA1D0 U2_19 ( .A(A[19]), .B(n6), .CI(carry[19]), .CO(carry[20]), .S(DIFF[19]) );
  FA1D0 U2_11 ( .A(A[11]), .B(n14), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  FA1D0 U2_10 ( .A(A[10]), .B(n15), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  FA1D0 U2_9 ( .A(A[9]), .B(n16), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  FA1D0 U2_8 ( .A(A[8]), .B(n17), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  FA1D0 U2_7 ( .A(A[7]), .B(n18), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  FA1D0 U2_6 ( .A(A[6]), .B(n19), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  FA1D0 U2_5 ( .A(A[5]), .B(n20), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  FA1D0 U2_4 ( .A(A[4]), .B(n21), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FA1D0 U2_3 ( .A(A[3]), .B(n22), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  FA1D0 U2_1 ( .A(A[1]), .B(n24), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  FA1D0 U2_2 ( .A(A[2]), .B(n23), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  INVD1 U4 ( .I(B[2]), .ZN(n23) );
  INVD1 U6 ( .I(B[1]), .ZN(n24) );
  INVD1 U8 ( .I(B[3]), .ZN(n22) );
  INVD1 U10 ( .I(B[4]), .ZN(n21) );
  INVD1 U11 ( .I(B[5]), .ZN(n20) );
  INVD1 U12 ( .I(B[6]), .ZN(n19) );
  INVD1 U13 ( .I(B[7]), .ZN(n18) );
  INVD1 U14 ( .I(B[8]), .ZN(n17) );
  INVD1 U15 ( .I(B[9]), .ZN(n16) );
  INVD1 U16 ( .I(B[10]), .ZN(n15) );
  INVD1 U17 ( .I(B[11]), .ZN(n14) );
  INVD1 U18 ( .I(B[19]), .ZN(n6) );
  INVD1 U19 ( .I(B[12]), .ZN(n13) );
  INVD1 U20 ( .I(B[13]), .ZN(n12) );
  INVD1 U21 ( .I(B[14]), .ZN(n11) );
  INVD1 U22 ( .I(B[15]), .ZN(n10) );
  INVD1 U23 ( .I(B[16]), .ZN(n9) );
  INVD1 U24 ( .I(B[17]), .ZN(n8) );
  INVD1 U25 ( .I(B[18]), .ZN(n7) );
  INVD1 U26 ( .I(B[20]), .ZN(n5) );
  INVD1 U27 ( .I(B[21]), .ZN(n4) );
  IND2D0 U1 ( .A1(carry[22]), .B1(B[22]), .ZN(DIFF[23]) );
  CKXOR2D0 U2 ( .A1(carry[22]), .A2(B[22]), .Z(DIFF[22]) );
  IND2D0 U3 ( .A1(A[0]), .B1(B[0]), .ZN(carry[1]) );
  CKXOR2D0 U5 ( .A1(A[0]), .A2(B[0]), .Z(DIFF[0]) );
endmodule


module oadm_fixed_divmul_correction_chain_LEVEL1_DW01_sub_5 ( A, B, CI, DIFF, 
        CO );
  input [28:0] A;
  input [28:0] B;
  output [28:0] DIFF;
  input CI;
  output CO;
  wire   n1, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26;
  wire   [25:1] carry;

  FA1D0 U2_21 ( .A(A[21]), .B(n6), .CI(carry[21]), .CO(carry[22]), .S(DIFF[21]) );
  FA1D0 U2_20 ( .A(A[20]), .B(n7), .CI(carry[20]), .CO(carry[21]), .S(DIFF[20]) );
  FA1D0 U2_19 ( .A(A[19]), .B(n8), .CI(carry[19]), .CO(carry[20]), .S(DIFF[19]) );
  FA1D0 U2_18 ( .A(A[18]), .B(n9), .CI(carry[18]), .CO(carry[19]), .S(DIFF[18]) );
  FA1D0 U2_17 ( .A(A[17]), .B(n10), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  FA1D0 U2_16 ( .A(A[16]), .B(n11), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  FA1D0 U2_15 ( .A(A[15]), .B(n12), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  FA1D0 U2_14 ( .A(A[14]), .B(n13), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  FA1D0 U2_13 ( .A(A[13]), .B(n14), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  FA1D0 U2_12 ( .A(A[12]), .B(n15), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  FA1D0 U2_11 ( .A(A[11]), .B(n16), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  FA1D0 U2_10 ( .A(A[10]), .B(n17), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  FA1D0 U2_9 ( .A(A[9]), .B(n18), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  FA1D0 U2_8 ( .A(A[8]), .B(n19), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  FA1D0 U2_7 ( .A(A[7]), .B(n20), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  FA1D0 U2_6 ( .A(A[6]), .B(n21), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  FA1D0 U2_5 ( .A(A[5]), .B(n22), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  FA1D0 U2_4 ( .A(A[4]), .B(n23), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FA1D0 U2_3 ( .A(A[3]), .B(n24), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  FA1D0 U2_2 ( .A(A[2]), .B(n25), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  FA1D0 U2_1 ( .A(A[1]), .B(n26), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  IND2D1 U1 ( .A1(n1), .B1(A[25]), .ZN(carry[24]) );
  IND2D1 U2 ( .A1(carry[24]), .B1(A[25]), .ZN(carry[25]) );
  CKBD1 U3 ( .I(DIFF[26]), .Z(DIFF[28]) );
  CKBD1 U4 ( .I(DIFF[26]), .Z(DIFF[27]) );
  AN2XD1 U5 ( .A1(carry[22]), .A2(A[22]), .Z(n1) );
  NR2D1 U6 ( .A1(carry[25]), .A2(A[25]), .ZN(DIFF[26]) );
  INVD1 U8 ( .I(B[1]), .ZN(n26) );
  INVD1 U10 ( .I(B[2]), .ZN(n25) );
  INVD1 U12 ( .I(B[3]), .ZN(n24) );
  INVD1 U13 ( .I(B[4]), .ZN(n23) );
  INVD1 U14 ( .I(B[5]), .ZN(n22) );
  INVD1 U15 ( .I(B[6]), .ZN(n21) );
  INVD1 U16 ( .I(B[7]), .ZN(n20) );
  INVD1 U17 ( .I(B[8]), .ZN(n19) );
  INVD1 U18 ( .I(B[9]), .ZN(n18) );
  INVD1 U19 ( .I(B[10]), .ZN(n17) );
  INVD1 U20 ( .I(B[11]), .ZN(n16) );
  INVD1 U21 ( .I(B[12]), .ZN(n15) );
  INVD1 U22 ( .I(B[13]), .ZN(n14) );
  INVD1 U23 ( .I(B[14]), .ZN(n13) );
  INVD1 U24 ( .I(B[15]), .ZN(n12) );
  INVD1 U25 ( .I(B[16]), .ZN(n11) );
  INVD1 U26 ( .I(B[17]), .ZN(n10) );
  INVD1 U27 ( .I(B[18]), .ZN(n9) );
  INVD1 U28 ( .I(B[19]), .ZN(n8) );
  INVD1 U29 ( .I(B[20]), .ZN(n7) );
  INVD1 U30 ( .I(B[21]), .ZN(n6) );
  XNR2D1 U31 ( .A1(n1), .A2(A[23]), .ZN(DIFF[23]) );
  XNR2D1 U32 ( .A1(carry[24]), .A2(A[24]), .ZN(DIFF[24]) );
  XNR2D1 U33 ( .A1(carry[25]), .A2(A[25]), .ZN(DIFF[25]) );
  CKXOR2D1 U35 ( .A1(carry[22]), .A2(A[22]), .Z(DIFF[22]) );
  CKXOR2D0 U7 ( .A1(A[0]), .A2(B[0]), .Z(DIFF[0]) );
  IND2D0 U9 ( .A1(A[0]), .B1(B[0]), .ZN(carry[1]) );
endmodule


module oadm_fixed_divmul_correction_chain_LEVEL1_DW01_add_1 ( A, B, CI, SUM, 
        CO );
  input [28:0] A;
  input [28:0] B;
  output [28:0] SUM;
  input CI;
  output CO;
  wire   n1, n3;
  wire   [28:2] carry;

  FA1D0 U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  FA1D0 U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  FA1D0 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  FA1D0 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  FA1D0 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  FA1D0 U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  FA1D0 U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  FA1D0 U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  FA1D0 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  FA1D0 U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  FA1D0 U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  FA1D0 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FA1D0 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FA1D0 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  FA1D0 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FA1D0 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA1D0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA1D0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1D0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1D0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1D0 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  FA1D0 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA1D0 U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  AN2XD1 U3 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
  INVD1 U4 ( .I(B[26]), .ZN(n3) );
  IND2D1 U8 ( .A1(carry[26]), .B1(n3), .ZN(carry[27]) );
  XNR2D1 U10 ( .A1(carry[27]), .A2(B[27]), .ZN(SUM[27]) );
  XNR2D1 U11 ( .A1(carry[26]), .A2(B[26]), .ZN(SUM[26]) );
  XNR2D1 U12 ( .A1(carry[25]), .A2(B[25]), .ZN(SUM[25]) );
  XNR2D1 U13 ( .A1(carry[24]), .A2(B[24]), .ZN(SUM[24]) );
  XNR2D1 U14 ( .A1(B[28]), .A2(carry[28]), .ZN(SUM[28]) );
  CKXOR2D1 U15 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
  IND2D0 U1 ( .A1(carry[27]), .B1(n3), .ZN(carry[28]) );
  OR2D0 U2 ( .A1(B[25]), .A2(carry[25]), .Z(carry[26]) );
  OR2D0 U5 ( .A1(carry[24]), .A2(B[24]), .Z(carry[25]) );
endmodule


module oadm_fixed_divmul_correction_chain_LEVEL1 ( x, y, divide_mode, result
 );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  input divide_mode;
  wire   N94, N95, N96, N97, N98, N99, N100, N101, N102, N103, N104, N105,
         N106, N107, N108, N109, N110, N111, N112, N113, N114, N115, N116,
         N117, N118, N119, N120, N121, N122, N144, N146, N149, N150, N151,
         N152, N153, N154, N155, N156, N157, N158, N159, N160, N161, N162,
         N163, N164, N165, N166, N167, N168, N169, N170, N171, N172, N173,
         N174, N261, N262, N263, N264, N265, N266, N267, N268, N269, N270,
         N271, N272, N273, N274, N275, N276, N277, N278, N279, N280, N281,
         N282, N283, N284, N285, N286, N287, N288, N289, N316, N317, N318,
         N319, N320, N321, N322, N323, N324, N325, N326, N327, N328, N329,
         N330, N331, N332, N333, N334, N335, N336, N337, N344, N345, N346,
         N347, N348, N349, N350, N351, N352, N353, N354, N355, N356, N357,
         N358, N359, N360, N361, N362, N363, N364, N365, N366, N367, N368,
         N372, N373, N374, N375, N376, N377, N378, N379, N380, N381, N382,
         N383, N384, N385, N386, N387, N388, N389, N390, N391, N392, N393,
         N394, N395, N396, N397, N401, N410, N412, N413, N414, N415, N416,
         N417, N418, N419, N420, N421, N422, N423, N424, N425, N426, N427,
         N428, N429, N430, N431, N432, N433, N434, N435, N436, N437, N438,
         N439, N440, N441, N442, N443, N444, N445, N446, N447, N448, N449,
         N450, N451, N452, N453, N454, N455, N456, N457, N458, N459, N460,
         N461, N462, N463, N464, N465, N467, N468, N469, N470, N471, N472,
         N473, N474, N475, N476, N477, N478, N479, N480, N481, N482, N483,
         N484, N485, N486, N487, N488, N489, N490, N491, N492, N493, N494,
         N495, N496, N497, N498, N499, N500, N501, N502, N503, N504, N505,
         N506, N507, N508, N509, N510, N511, N512, N513, N514, N515, N516,
         N517, N518, N519, N520, coefficient_5_, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n940, n950, n960, n970, n980, n990, n1000, n1010,
         n1020, n1030, n1040, n1050, n1060, n1070, delta_1_9_, delta_1_8_,
         delta_1_7_, delta_1_6_, delta_1_5_, delta_1_4_, delta_1_3_,
         delta_1_2_, delta_1_28_, delta_1_27_, delta_1_26_, delta_1_25_,
         delta_1_24_, delta_1_23_, delta_1_22_, delta_1_21_, delta_1_20_,
         delta_1_1_, delta_1_19_, delta_1_18_, delta_1_17_, delta_1_16_,
         delta_1_15_, delta_1_14_, delta_1_13_, delta_1_12_, delta_1_11_,
         delta_1_10_, delta_1_0_, N260, N259, N258, N257, N256, N255, N254,
         N253, N252, N251, N250, N249, N248, N247, N246, N245, N244, N243,
         N242, N241, N240, N239, N238, N237, N236, N235, N234, N233, N232, N36,
         N228, N227, N226, N225, N224, N223, N222, N221, N220, N219, N218,
         N217, N216, N215, N214, N213, N212, N211, N210, N209, N208, N207,
         N206, N205, N204, N610, N200, N199, N197, N196, N195, N194, N193,
         N192, N191, N190, N189, N188, N187, N186, N185, N184, N183, N182,
         N181, N180, N179, N178, N177, N930, N920, N910, N900, N890, N880,
         N870, N860, N850, N840, N830, N820, N810, N800, N790, N780, N770,
         N760, N750, N740, N730, N720, N710, N700, N690, N680, N670, N660,
         N650, N600, N590, N580, N570, N56, N55, N54, N53, N52, N51, N50, N49,
         N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N34, N32,
         N31, n1, n2, n3, n4, n5, n6, n7, n9, n10, n13, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n310, n3210,
         n33, n340, n35, n369, n370, n3810, n398, n400, n411, n4210, n4310,
         n4410, n4510;
  wire   [27:19] base_plane;
  wire   [28:0] selected_plane;
  wire   [31:7] scaled_product;
  wire   [22:0] normalized_fraction;
  wire   [2:0] exponent_adjust;
  wire   [28:21] add_2_root_add_0_root_add_105_carry;
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
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21;

  fp32_normal_finite_wrapper fp_wrapper ( .x(x), .y(y), .divide_mode(n7), 
        .fraction_x({N146, N144, N197, N196, N195, N194, N193, N192, N191, 
        N190, N189, N188, N187, N186, N185, N184, N183, N182, N181, N180, N179, 
        N178, N177}), .fraction_y({coefficient_5_, N337, N336, N335, N334, 
        N333, N332, N331, N330, N329, N328, N327, N326, N325, N324, N323, N322, 
        N321, N320, N319, N318, N317, N316}), .result_fraction(
        normalized_fraction), .exponent_adjust({exponent_adjust[2], 
        exponent_adjust[2], exponent_adjust[0]}), .result(result) );
  oadm_fixed_divmul_correction_chain_LEVEL1_DW01_sub_0 sub_54 ( .A({N36, N36, 
        N36, N36, N36, N36, N36, N36, N36, N36, N36, N36, N36, N36, N36, N36, 
        N36, N36, N36, N36, N36, N36, N36, N36, N36, N36, N36, N36, N36}), .B(
        {N401, N401, N401, N401, N397, N396, N395, N394, N393, N392, N391, 
        N390, N389, N388, N387, N386, N385, N384, N383, N382, N381, N380, N379, 
        N378, N377, N376, N375, N374, N373}), .CI(N36), .DIFF({N493, N492, 
        N491, N490, N489, N488, N487, N486, N485, N484, N483, N482, N481, N480, 
        N479, N478, N477, N476, N475, N474, N473, N472, N471, N470, N469, N468, 
        N467, SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1}) );
  oadm_fixed_divmul_correction_chain_LEVEL1_DW01_sub_1 sub_53 ( .A({N36, N36, 
        N36, N36, N36, N36, N36, N36, N36, N36, N36, N36, N36, N36, N36, N36, 
        N36, N36, N36, N36, N36, N36, N36, N36, N36, N36, N36, N36, N36}), .B(
        {N372, N372, N372, N372, N368, N367, N366, N365, N364, N363, N362, 
        N361, N360, N359, N358, N357, N356, N355, N354, N353, N352, N351, N350, 
        N349, N348, N347, N346, N345, N344}), .CI(N36), .DIFF({N438, N437, 
        N436, N435, N434, N433, N432, N431, N430, N429, N428, N427, N426, N425, 
        N424, N423, N422, N421, N420, N419, N418, N417, N416, N415, N414, N413, 
        N412, SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3}) );
  oadm_fixed_divmul_correction_chain_LEVEL1_DW01_sub_4 sub_42 ( .A({N36, N36, 
        N610, N610, N36, N36, N36, N36, N36, N36, N36, N36, N36, N36, N36, N36, 
        N36, N36, N36, N36, N36, N36, N36, N36, N36, N36}), .B({N36, N36, N610, 
        coefficient_5_, N337, N336, N335, N334, N333, N332, N331, N330, N329, 
        N328, N327, N326, N325, N324, N323, N322, N321, N320, N319, N318, N317, 
        N316}), .CI(N36), .DIFF({N174, N173, N172, N171, N170, N169, N168, 
        N167, N166, N165, N164, N163, N162, N161, N160, N159, N158, N157, N156, 
        N155, N154, N153, N152, N151, N150, N149}) );
  oadm_fixed_divmul_correction_chain_LEVEL1_DW_mult_uns_0 mult_158 ( .a(
        selected_plane), .b({n10, coefficient_5_, n10, coefficient_5_, N36, 
        N610, N36}), .product({SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, scaled_product, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14}) );
  oadm_fixed_divmul_correction_chain_LEVEL1_DW01_add_8 add_1_root_add_0_root_add_105 ( 
        .A({delta_1_28_, delta_1_27_, delta_1_26_, delta_1_25_, delta_1_24_, 
        delta_1_23_, delta_1_22_, delta_1_21_, delta_1_20_, delta_1_19_, 
        delta_1_18_, delta_1_17_, delta_1_16_, delta_1_15_, delta_1_14_, 
        delta_1_13_, delta_1_12_, delta_1_11_, delta_1_10_, delta_1_9_, 
        delta_1_8_, delta_1_7_, delta_1_6_, delta_1_5_, delta_1_4_, delta_1_3_, 
        delta_1_2_, delta_1_1_, delta_1_0_}), .B({N465, N465, N465, N464, N463, 
        N462, N461, N460, N459, N458, N457, N456, N455, N454, N453, N452, N451, 
        N450, N449, N448, N447, N446, N445, N444, N443, N442, N441, N440, N439}), .CI(N36), .SUM({n16, n27, n3810, n398, n400, n411, n4210, n4310, n4410, n17, 
        n18, n19, n20, n21, n22, n23, n24, n25, n26, n28, n29, n30, n310, 
        n3210, n33, n340, n35, n369, n370}) );
  oadm_fixed_divmul_correction_chain_LEVEL1_DW01_add_7 add_0_root_add_0_root_add_105 ( 
        .A({N520, N520, N520, N519, N518, N517, N516, N515, N514, N513, N512, 
        N511, N510, N509, N508, N507, N506, N505, N504, N503, N502, N501, N500, 
        N499, N498, N497, N496, N495, N494}), .B({n16, n27, n3810, n398, n400, 
        n411, n4210, n4310, n4410, n17, n18, n19, n20, n21, n22, n23, n24, n25, 
        n26, n28, n29, n30, n310, n3210, n33, n340, n35, n369, n370}), .CI(N36), .SUM(selected_plane) );
  oadm_fixed_divmul_correction_chain_LEVEL1_DW01_add_5 add_2_root_add_46_4 ( 
        .A({N36, N36, N36, N36, N36, N610, N146, N144, N197, N196, N195, N194, 
        N193, N192, N191, N190, N189, N188, N187, N186, N185, N184, N183, N182, 
        N181, N180, N179, N178}), .B({N36, N36, N36, N36, N610, coefficient_5_, 
        N337, N336, N335, N334, N333, N332, N331, N330, N329, N328, N327, N326, 
        N325, N324, N323, N322, N321, N320, N319, N318, N317, N316}), .CI(N36), 
        .SUM({SYNOPSYS_UNCONNECTED__15, SYNOPSYS_UNCONNECTED__16, 
        SYNOPSYS_UNCONNECTED__17, N228, N227, N226, N225, N224, N223, N222, 
        N221, N220, N219, N218, N217, N216, N215, N214, N213, N212, N211, N210, 
        N209, N208, N207, N206, N205, N204}) );
  oadm_fixed_divmul_correction_chain_LEVEL1_DW01_add_4 add_1_root_add_0_root_add_46_4 ( 
        .A({N36, N36, N36, N36, N36, N36, N610, coefficient_5_, N337, N336, 
        N335, N334, N333, N332, N331, N330, N329, N328, N327, N326, N325, N324, 
        N323, N322, N321, N320, N319, N318, N317}), .B({N610, N610, N610, N610, 
        N610, N200, N199, N31, N197, N196, N195, N194, N193, N192, N191, N190, 
        N189, N188, N187, N186, N185, N184, N183, N182, N181, N180, N179, N178, 
        N177}), .CI(N36), .SUM({N260, N259, N258, N257, N256, N255, N254, N253, 
        N252, N251, N250, N249, N248, N247, N246, N245, N244, N243, N242, N241, 
        N240, N239, N238, N237, N236, N235, N234, N233, N232}) );
  oadm_fixed_divmul_correction_chain_LEVEL1_DW01_add_3 add_0_root_add_0_root_add_46_4 ( 
        .A({N36, N36, N36, N36, N228, N227, N226, N225, N224, N223, N222, N221, 
        N220, N219, N218, N217, N216, N215, N214, N213, N212, N211, N210, N209, 
        N208, N207, N206, N205, N204}), .B({N260, N259, N258, N257, N256, N255, 
        N254, N253, N252, N251, N250, N249, N248, N247, N246, N245, N244, N243, 
        N242, N241, N240, N239, N238, N237, N236, N235, N234, N233, N232}), 
        .CI(N36), .SUM({N289, N288, N287, N286, N285, N284, N283, N282, N281, 
        N280, N279, N278, N277, N276, N275, N274, N273, N272, N271, N270, N269, 
        N268, N267, N266, N265, N264, N263, N262, N261}) );
  oadm_fixed_divmul_correction_chain_LEVEL1_DW01_sub_6 sub_2_root_sub_39_2 ( 
        .A({N36, N36, N36, N36, N36, N610, N146, N144, N197, N196, N195, N194, 
        N193, N192, N191, N190, N189, N188, N187, N186, N185, N184, N183, N182, 
        N181, N180, N179, N178}), .B({N36, N36, N36, N36, N610, coefficient_5_, 
        N337, N336, N335, N334, N333, N332, N331, N330, N329, N328, N327, N326, 
        N325, N324, N323, N322, N321, N320, N319, N318, N317, N316}), .CI(N36), 
        .DIFF({SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, N600, N590, N580, 
        N570, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, 
        N43, N42, N41, N40, N39, N38, N37}) );
  oadm_fixed_divmul_correction_chain_LEVEL1_DW01_sub_5 sub_1_root_sub_0_root_sub_39_2 ( 
        .A({N36, N36, N36, n1, N34, N34, N32, N31, N197, N196, N195, N194, 
        N193, N192, N191, N190, N189, N188, N187, N186, N185, N184, N183, N182, 
        N181, N180, N179, N178, N177}), .B({N36, N36, N36, N36, N36, N36, N610, 
        coefficient_5_, N337, N336, N335, N334, N333, N332, N331, N330, N329, 
        N328, N327, N326, N325, N324, N323, N322, N321, N320, N319, N318, N317}), .CI(N36), .DIFF({N930, N920, N910, N900, N890, N880, N870, N860, N850, N840, 
        N830, N820, N810, N800, N790, N780, N770, N760, N750, N740, N730, N720, 
        N710, N700, N690, N680, N670, N660, N650}) );
  oadm_fixed_divmul_correction_chain_LEVEL1_DW01_add_1 add_0_root_sub_0_root_sub_39_2 ( 
        .A({N610, N610, N610, N610, N610, N600, N590, N580, N570, N56, N55, 
        N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, 
        N40, N39, N38, N37}), .B({N930, N920, N910, N900, N890, N880, N870, 
        N860, N850, N840, N830, N820, N810, N800, N790, N780, N770, N760, N750, 
        N740, N730, N720, N710, N700, N690, N680, N670, N660, N650}), .CI(N36), 
        .SUM({N122, N121, N120, N119, N118, N117, N116, N115, N114, N113, N112, 
        N111, N110, N109, N108, N107, N106, N105, N104, N103, N102, N101, N100, 
        N99, N98, N97, N96, N95, N94}) );
  IOA21D1 U3 ( .A1(N438), .A2(n10), .B(n1070), .ZN(N465) );
  IOA21D1 U4 ( .A1(N493), .A2(n13), .B(n1060), .ZN(N520) );
  INVD1 U5 ( .I(coefficient_5_), .ZN(n10) );
  ND2D1 U6 ( .A1(n64), .A2(n2), .ZN(exponent_adjust[2]) );
  ND2D1 U7 ( .A1(n6), .A2(n64), .ZN(exponent_adjust[0]) );
  CKBD1 U8 ( .I(n59), .Z(n6) );
  IND3D1 U9 ( .A1(n80), .B1(n81), .B2(n6), .ZN(n64) );
  ND3D1 U10 ( .A1(n81), .A2(n80), .A3(n6), .ZN(n2) );
  OAI221D0 U11 ( .A1(n80), .A2(n4), .B1(n6), .B2(n81), .C(n82), .ZN(
        normalized_fraction[22]) );
  OA22D0 U12 ( .A1(n3), .A2(n83), .B1(n64), .B2(n84), .Z(n82) );
  OAI221D0 U13 ( .A1(n84), .A2(n58), .B1(n6), .B2(n80), .C(n85), .ZN(
        normalized_fraction[21]) );
  OA22D0 U14 ( .A1(n2), .A2(n86), .B1(n64), .B2(n83), .Z(n85) );
  OAI221D0 U15 ( .A1(n73), .A2(n58), .B1(n6), .B2(n71), .C(n76), .ZN(
        normalized_fraction[3]) );
  OA22D0 U16 ( .A1(n62), .A2(n77), .B1(n64), .B2(n75), .Z(n76) );
  OAI221D0 U17 ( .A1(n71), .A2(n4), .B1(n6), .B2(n69), .C(n74), .ZN(
        normalized_fraction[4]) );
  OA22D0 U18 ( .A1(n2), .A2(n75), .B1(n64), .B2(n73), .Z(n74) );
  OAI221D0 U19 ( .A1(n69), .A2(n5), .B1(n6), .B2(n67), .C(n72), .ZN(
        normalized_fraction[5]) );
  OA22D0 U20 ( .A1(n3), .A2(n73), .B1(n64), .B2(n71), .Z(n72) );
  OAI221D0 U21 ( .A1(n67), .A2(n58), .B1(n6), .B2(n63), .C(n70), .ZN(
        normalized_fraction[6]) );
  OA22D0 U22 ( .A1(n62), .A2(n71), .B1(n64), .B2(n69), .Z(n70) );
  OAI221D0 U23 ( .A1(n63), .A2(n4), .B1(n6), .B2(n65), .C(n68), .ZN(
        normalized_fraction[7]) );
  OA22D0 U24 ( .A1(n2), .A2(n69), .B1(n64), .B2(n67), .Z(n68) );
  OAI221D0 U25 ( .A1(n65), .A2(n5), .B1(n6), .B2(n57), .C(n66), .ZN(
        normalized_fraction[8]) );
  OA22D0 U26 ( .A1(n3), .A2(n67), .B1(n64), .B2(n63), .Z(n66) );
  OAI221D0 U27 ( .A1(n57), .A2(n58), .B1(n6), .B2(n60), .C(n61), .ZN(
        normalized_fraction[9]) );
  OA22D0 U28 ( .A1(n62), .A2(n63), .B1(n64), .B2(n65), .Z(n61) );
  OAI221D0 U29 ( .A1(n60), .A2(n4), .B1(n6), .B2(n1020), .C(n1050), .ZN(
        normalized_fraction[10]) );
  OA22D0 U30 ( .A1(n3), .A2(n65), .B1(n64), .B2(n57), .Z(n1050) );
  OAI221D0 U31 ( .A1(n1020), .A2(n58), .B1(n59), .B2(n1000), .C(n1040), .ZN(
        normalized_fraction[11]) );
  OA22D0 U32 ( .A1(n62), .A2(n57), .B1(n64), .B2(n60), .Z(n1040) );
  OAI221D0 U33 ( .A1(n1000), .A2(n58), .B1(n59), .B2(n980), .C(n1030), .ZN(
        normalized_fraction[12]) );
  OA22D0 U34 ( .A1(n62), .A2(n60), .B1(n64), .B2(n1020), .Z(n1030) );
  OAI221D0 U35 ( .A1(n980), .A2(n4), .B1(n59), .B2(n960), .C(n1010), .ZN(
        normalized_fraction[13]) );
  OA22D0 U36 ( .A1(n3), .A2(n1020), .B1(n64), .B2(n1000), .Z(n1010) );
  OAI221D0 U37 ( .A1(n960), .A2(n5), .B1(n59), .B2(n940), .C(n990), .ZN(
        normalized_fraction[14]) );
  OA22D0 U38 ( .A1(n62), .A2(n1000), .B1(n64), .B2(n980), .Z(n990) );
  OAI221D0 U39 ( .A1(n940), .A2(n58), .B1(n59), .B2(n92), .C(n970), .ZN(
        normalized_fraction[15]) );
  OA22D0 U40 ( .A1(n2), .A2(n980), .B1(n64), .B2(n960), .Z(n970) );
  OAI221D0 U41 ( .A1(n92), .A2(n4), .B1(n59), .B2(n90), .C(n950), .ZN(
        normalized_fraction[16]) );
  OA22D0 U42 ( .A1(n3), .A2(n960), .B1(n64), .B2(n940), .Z(n950) );
  OAI221D0 U43 ( .A1(n90), .A2(n5), .B1(n59), .B2(n88), .C(n93), .ZN(
        normalized_fraction[17]) );
  OA22D0 U44 ( .A1(n62), .A2(n940), .B1(n64), .B2(n92), .Z(n93) );
  OAI221D0 U45 ( .A1(n88), .A2(n58), .B1(n59), .B2(n86), .C(n91), .ZN(
        normalized_fraction[18]) );
  OA22D0 U46 ( .A1(n2), .A2(n92), .B1(n64), .B2(n90), .Z(n91) );
  OAI221D0 U47 ( .A1(n86), .A2(n4), .B1(n59), .B2(n83), .C(n89), .ZN(
        normalized_fraction[19]) );
  OA22D0 U48 ( .A1(n3), .A2(n90), .B1(n64), .B2(n88), .Z(n89) );
  OAI221D0 U49 ( .A1(n83), .A2(n5), .B1(n59), .B2(n84), .C(n87), .ZN(
        normalized_fraction[20]) );
  OA22D0 U50 ( .A1(n62), .A2(n88), .B1(n64), .B2(n86), .Z(n87) );
  OAI221D0 U51 ( .A1(n75), .A2(n5), .B1(n6), .B2(n73), .C(n78), .ZN(
        normalized_fraction[2]) );
  OA22D0 U52 ( .A1(n64), .A2(n77), .B1(n3), .B2(n79), .Z(n78) );
  ND3D1 U53 ( .A1(n81), .A2(n80), .A3(n6), .ZN(n3) );
  ND3D1 U54 ( .A1(n81), .A2(n80), .A3(n6), .ZN(n62) );
  OAI222D0 U55 ( .A1(n77), .A2(n4), .B1(n79), .B2(n64), .C1(n6), .C2(n75), 
        .ZN(normalized_fraction[1]) );
  IND2D1 U56 ( .A1(n81), .B1(n6), .ZN(n4) );
  IND2D1 U57 ( .A1(n81), .B1(n6), .ZN(n5) );
  OAI22D1 U58 ( .A1(n6), .A2(n77), .B1(n79), .B2(n5), .ZN(
        normalized_fraction[0]) );
  IND2D1 U59 ( .A1(n81), .B1(n6), .ZN(n58) );
  AOI22D1 U60 ( .A1(scaled_product[31]), .A2(n7), .B1(selected_plane[24]), 
        .B2(n9), .ZN(n59) );
  INVD2 U61 ( .I(n9), .ZN(n7) );
  AOI22D1 U62 ( .A1(scaled_product[30]), .A2(n7), .B1(selected_plane[23]), 
        .B2(n9), .ZN(n81) );
  FA1D0 U63 ( .A(N410), .B(base_plane[20]), .CI(base_plane[19]), .CO(
        add_2_root_add_0_root_add_105_carry[21]), .S(delta_1_20_) );
  AO22D0 U64 ( .A1(N281), .A2(n9), .B1(N114), .B2(n7), .Z(base_plane[20]) );
  FA1D0 U65 ( .A(N410), .B(base_plane[21]), .CI(
        add_2_root_add_0_root_add_105_carry[21]), .CO(
        add_2_root_add_0_root_add_105_carry[22]), .S(delta_1_21_) );
  AO22D0 U66 ( .A1(N282), .A2(n9), .B1(N115), .B2(n7), .Z(base_plane[21]) );
  IOA21D1 U67 ( .A1(N490), .A2(n13), .B(n1060), .ZN(N517) );
  FA1D0 U68 ( .A(N410), .B(base_plane[22]), .CI(
        add_2_root_add_0_root_add_105_carry[22]), .CO(
        add_2_root_add_0_root_add_105_carry[23]), .S(delta_1_22_) );
  AO22D0 U69 ( .A1(N283), .A2(n9), .B1(N116), .B2(n7), .Z(base_plane[22]) );
  IOA21D1 U70 ( .A1(N435), .A2(n10), .B(n1070), .ZN(N462) );
  IOA21D1 U71 ( .A1(N491), .A2(n13), .B(n1060), .ZN(N518) );
  FA1D0 U72 ( .A(N410), .B(base_plane[23]), .CI(
        add_2_root_add_0_root_add_105_carry[23]), .CO(
        add_2_root_add_0_root_add_105_carry[24]), .S(delta_1_23_) );
  AO22D0 U73 ( .A1(N284), .A2(n9), .B1(N117), .B2(n7), .Z(base_plane[23]) );
  IOA21D1 U74 ( .A1(N436), .A2(n10), .B(n1070), .ZN(N463) );
  AOI22D1 U75 ( .A1(scaled_product[29]), .A2(n7), .B1(selected_plane[22]), 
        .B2(n9), .ZN(n80) );
  FA1D0 U76 ( .A(N410), .B(base_plane[24]), .CI(
        add_2_root_add_0_root_add_105_carry[24]), .CO(
        add_2_root_add_0_root_add_105_carry[25]), .S(delta_1_24_) );
  AO22D0 U77 ( .A1(N285), .A2(n9), .B1(N118), .B2(n7), .Z(base_plane[24]) );
  IOA21D1 U78 ( .A1(N492), .A2(n13), .B(n1060), .ZN(N519) );
  IOA21D1 U79 ( .A1(N437), .A2(n10), .B(n1070), .ZN(N464) );
  FA1D0 U81 ( .A(N410), .B(base_plane[25]), .CI(
        add_2_root_add_0_root_add_105_carry[25]), .CO(
        add_2_root_add_0_root_add_105_carry[26]), .S(delta_1_25_) );
  AO22D0 U82 ( .A1(N286), .A2(n9), .B1(N119), .B2(n7), .Z(base_plane[25]) );
  FA1D0 U83 ( .A(N410), .B(base_plane[26]), .CI(
        add_2_root_add_0_root_add_105_carry[26]), .CO(
        add_2_root_add_0_root_add_105_carry[27]), .S(delta_1_26_) );
  AO22D0 U84 ( .A1(N287), .A2(n9), .B1(N120), .B2(n7), .Z(base_plane[26]) );
  FA1D0 U87 ( .A(N410), .B(base_plane[27]), .CI(
        add_2_root_add_0_root_add_105_carry[27]), .CO(
        add_2_root_add_0_root_add_105_carry[28]), .S(delta_1_27_) );
  AO22D0 U88 ( .A1(N288), .A2(n9), .B1(N121), .B2(n7), .Z(base_plane[27]) );
  AO22D0 U89 ( .A1(n10), .A2(n9), .B1(N172), .B2(n7), .Z(N396) );
  AO22D0 U90 ( .A1(n10), .A2(n9), .B1(N171), .B2(n7), .Z(N395) );
  AO22D0 U91 ( .A1(n10), .A2(n9), .B1(N173), .B2(n7), .Z(N397) );
  AO22D0 U92 ( .A1(n10), .A2(n9), .B1(N174), .B2(n7), .Z(N401) );
  AOI22D1 U93 ( .A1(scaled_product[28]), .A2(n7), .B1(selected_plane[21]), 
        .B2(n9), .ZN(n84) );
  AOI22D1 U94 ( .A1(scaled_product[27]), .A2(n7), .B1(selected_plane[20]), 
        .B2(n9), .ZN(n83) );
  AOI22D1 U95 ( .A1(scaled_product[26]), .A2(n7), .B1(selected_plane[19]), 
        .B2(n9), .ZN(n86) );
  AOI22D1 U96 ( .A1(scaled_product[25]), .A2(n7), .B1(selected_plane[18]), 
        .B2(n9), .ZN(n88) );
  AOI22D1 U97 ( .A1(scaled_product[24]), .A2(n7), .B1(selected_plane[17]), 
        .B2(n9), .ZN(n90) );
  AOI22D1 U98 ( .A1(scaled_product[23]), .A2(n7), .B1(selected_plane[16]), 
        .B2(n9), .ZN(n92) );
  AOI22D1 U99 ( .A1(scaled_product[22]), .A2(n7), .B1(selected_plane[15]), 
        .B2(n9), .ZN(n940) );
  AO22D0 U100 ( .A1(n13), .A2(n9), .B1(n13), .B2(n7), .Z(N366) );
  AOI22D1 U101 ( .A1(scaled_product[21]), .A2(n7), .B1(selected_plane[14]), 
        .B2(n9), .ZN(n960) );
  AOI22D1 U102 ( .A1(scaled_product[20]), .A2(n7), .B1(selected_plane[13]), 
        .B2(n9), .ZN(n980) );
  AOI22D1 U103 ( .A1(scaled_product[19]), .A2(n7), .B1(selected_plane[12]), 
        .B2(n9), .ZN(n1000) );
  AOI22D1 U105 ( .A1(scaled_product[18]), .A2(n7), .B1(selected_plane[11]), 
        .B2(n9), .ZN(n1020) );
  AOI22D1 U106 ( .A1(scaled_product[17]), .A2(n7), .B1(selected_plane[10]), 
        .B2(n9), .ZN(n60) );
  AOI22D1 U107 ( .A1(scaled_product[16]), .A2(n7), .B1(selected_plane[9]), 
        .B2(n9), .ZN(n57) );
  AOI22D1 U108 ( .A1(scaled_product[15]), .A2(n7), .B1(selected_plane[8]), 
        .B2(n9), .ZN(n65) );
  AOI22D1 U109 ( .A1(scaled_product[14]), .A2(n7), .B1(selected_plane[7]), 
        .B2(n9), .ZN(n63) );
  AOI22D1 U110 ( .A1(scaled_product[13]), .A2(n7), .B1(selected_plane[6]), 
        .B2(n9), .ZN(n67) );
  AOI22D1 U111 ( .A1(scaled_product[12]), .A2(n7), .B1(selected_plane[5]), 
        .B2(n9), .ZN(n69) );
  AOI22D1 U112 ( .A1(scaled_product[11]), .A2(n7), .B1(selected_plane[4]), 
        .B2(n9), .ZN(n71) );
  AOI22D1 U113 ( .A1(scaled_product[10]), .A2(n7), .B1(selected_plane[3]), 
        .B2(n9), .ZN(n73) );
  AOI22D1 U114 ( .A1(scaled_product[9]), .A2(n7), .B1(selected_plane[2]), .B2(
        n9), .ZN(n75) );
  AOI22D1 U115 ( .A1(scaled_product[8]), .A2(n7), .B1(selected_plane[1]), .B2(
        n9), .ZN(n77) );
  AOI22D1 U116 ( .A1(scaled_product[7]), .A2(n7), .B1(selected_plane[0]), .B2(
        n9), .ZN(n79) );
  AO22D0 U117 ( .A1(N470), .A2(n13), .B1(N146), .B2(N378), .Z(N497) );
  AO22D0 U118 ( .A1(N95), .A2(n7), .B1(N262), .B2(n9), .Z(delta_1_1_) );
  AO22D0 U119 ( .A1(N413), .A2(n10), .B1(N347), .B2(coefficient_5_), .Z(N440)
         );
  AO22D0 U120 ( .A1(N469), .A2(n13), .B1(N146), .B2(N377), .Z(N496) );
  AO22D0 U121 ( .A1(N96), .A2(n7), .B1(N263), .B2(n9), .Z(delta_1_2_) );
  AO22D0 U122 ( .A1(N414), .A2(n10), .B1(N348), .B2(coefficient_5_), .Z(N441)
         );
  AO22D0 U124 ( .A1(N97), .A2(n7), .B1(N264), .B2(n9), .Z(delta_1_3_) );
  AO22D0 U125 ( .A1(N415), .A2(n10), .B1(N349), .B2(coefficient_5_), .Z(N442)
         );
  AO22D0 U126 ( .A1(N468), .A2(n13), .B1(N146), .B2(N376), .Z(N495) );
  AO22D0 U127 ( .A1(N471), .A2(n13), .B1(N146), .B2(N379), .Z(N498) );
  AO22D0 U128 ( .A1(N98), .A2(n7), .B1(N265), .B2(n9), .Z(delta_1_4_) );
  AO22D0 U129 ( .A1(N416), .A2(n10), .B1(N350), .B2(coefficient_5_), .Z(N443)
         );
  AO22D0 U130 ( .A1(N412), .A2(n10), .B1(N346), .B2(coefficient_5_), .Z(N439)
         );
  AO22D0 U131 ( .A1(N473), .A2(n13), .B1(N146), .B2(N381), .Z(N500) );
  AO22D0 U132 ( .A1(N472), .A2(n13), .B1(N146), .B2(N380), .Z(N499) );
  AO22D0 U133 ( .A1(N99), .A2(n7), .B1(N266), .B2(n9), .Z(delta_1_5_) );
  AO22D0 U134 ( .A1(N417), .A2(n10), .B1(N351), .B2(coefficient_5_), .Z(N444)
         );
  AO22D0 U135 ( .A1(N267), .A2(n9), .B1(N100), .B2(n7), .Z(delta_1_6_) );
  AO22D0 U136 ( .A1(N418), .A2(n10), .B1(N352), .B2(coefficient_5_), .Z(N445)
         );
  AO22D0 U137 ( .A1(N474), .A2(n13), .B1(N146), .B2(N382), .Z(N501) );
  AO22D0 U138 ( .A1(N419), .A2(n10), .B1(N353), .B2(coefficient_5_), .Z(N446)
         );
  AO22D0 U139 ( .A1(N268), .A2(n9), .B1(N101), .B2(n7), .Z(delta_1_7_) );
  AO22D0 U140 ( .A1(N475), .A2(n13), .B1(N146), .B2(N383), .Z(N502) );
  AO22D0 U141 ( .A1(N420), .A2(n10), .B1(N354), .B2(coefficient_5_), .Z(N447)
         );
  AO22D0 U142 ( .A1(N269), .A2(n9), .B1(N102), .B2(n7), .Z(delta_1_8_) );
  AO22D0 U143 ( .A1(N476), .A2(n13), .B1(N146), .B2(N384), .Z(N503) );
  AO22D0 U144 ( .A1(N421), .A2(n10), .B1(N355), .B2(coefficient_5_), .Z(N448)
         );
  AO22D0 U145 ( .A1(N270), .A2(n9), .B1(N103), .B2(n7), .Z(delta_1_9_) );
  AO22D0 U146 ( .A1(N477), .A2(n13), .B1(N146), .B2(N385), .Z(N504) );
  AO22D0 U147 ( .A1(N422), .A2(n10), .B1(N356), .B2(coefficient_5_), .Z(N449)
         );
  AO22D0 U148 ( .A1(N271), .A2(n9), .B1(N104), .B2(n7), .Z(delta_1_10_) );
  AO22D0 U149 ( .A1(N478), .A2(n13), .B1(N146), .B2(N386), .Z(N505) );
  AO22D0 U150 ( .A1(N423), .A2(n10), .B1(N357), .B2(coefficient_5_), .Z(N450)
         );
  AO22D0 U151 ( .A1(N272), .A2(n9), .B1(N105), .B2(n7), .Z(delta_1_11_) );
  AO22D0 U152 ( .A1(N479), .A2(n13), .B1(N146), .B2(N387), .Z(N506) );
  AO22D0 U153 ( .A1(N424), .A2(n10), .B1(N358), .B2(coefficient_5_), .Z(N451)
         );
  AO22D0 U154 ( .A1(N273), .A2(n9), .B1(N106), .B2(n7), .Z(delta_1_12_) );
  AO22D0 U155 ( .A1(N467), .A2(n13), .B1(N146), .B2(N375), .Z(N494) );
  AO22D0 U156 ( .A1(N480), .A2(n13), .B1(N146), .B2(N388), .Z(N507) );
  AO22D0 U157 ( .A1(N425), .A2(n10), .B1(N359), .B2(coefficient_5_), .Z(N452)
         );
  AO22D0 U158 ( .A1(N274), .A2(n9), .B1(N107), .B2(n7), .Z(delta_1_13_) );
  AO22D0 U159 ( .A1(N481), .A2(n13), .B1(N146), .B2(N389), .Z(N508) );
  AO22D0 U160 ( .A1(N426), .A2(n10), .B1(N360), .B2(coefficient_5_), .Z(N453)
         );
  AO22D0 U161 ( .A1(N275), .A2(n9), .B1(N108), .B2(n7), .Z(delta_1_14_) );
  AO22D0 U162 ( .A1(N482), .A2(n13), .B1(N146), .B2(N390), .Z(N509) );
  AO22D0 U163 ( .A1(N427), .A2(n10), .B1(N361), .B2(coefficient_5_), .Z(N454)
         );
  AO22D0 U164 ( .A1(N276), .A2(n9), .B1(N109), .B2(n7), .Z(delta_1_15_) );
  AO22D0 U165 ( .A1(N94), .A2(n7), .B1(N261), .B2(n9), .Z(delta_1_0_) );
  AO22D0 U166 ( .A1(N483), .A2(n13), .B1(N146), .B2(N391), .Z(N510) );
  AO22D0 U167 ( .A1(N428), .A2(n10), .B1(N362), .B2(coefficient_5_), .Z(N455)
         );
  AO22D0 U168 ( .A1(N277), .A2(n9), .B1(N110), .B2(n7), .Z(delta_1_16_) );
  AO22D0 U169 ( .A1(N484), .A2(n13), .B1(N146), .B2(N392), .Z(N511) );
  AO22D0 U170 ( .A1(N429), .A2(n10), .B1(N363), .B2(coefficient_5_), .Z(N456)
         );
  AO22D0 U171 ( .A1(N278), .A2(n9), .B1(N111), .B2(n7), .Z(delta_1_17_) );
  AO22D0 U172 ( .A1(N485), .A2(n13), .B1(N146), .B2(N393), .Z(N512) );
  AO22D0 U173 ( .A1(N430), .A2(n10), .B1(N364), .B2(coefficient_5_), .Z(N457)
         );
  AO22D0 U174 ( .A1(N279), .A2(n9), .B1(N112), .B2(n7), .Z(delta_1_18_) );
  AO22D0 U175 ( .A1(N486), .A2(n13), .B1(N146), .B2(N394), .Z(N513) );
  AO22D0 U176 ( .A1(N431), .A2(n10), .B1(N365), .B2(coefficient_5_), .Z(N458)
         );
  AO22D0 U178 ( .A1(N487), .A2(n13), .B1(N146), .B2(N395), .Z(N514) );
  AO22D0 U179 ( .A1(N432), .A2(n10), .B1(N366), .B2(coefficient_5_), .Z(N459)
         );
  AO22D0 U180 ( .A1(N488), .A2(n13), .B1(N146), .B2(N396), .Z(N515) );
  AO22D0 U181 ( .A1(N433), .A2(n10), .B1(N367), .B2(coefficient_5_), .Z(N460)
         );
  AO22D0 U182 ( .A1(N489), .A2(n13), .B1(N146), .B2(N397), .Z(N516) );
  AO22D0 U183 ( .A1(N434), .A2(n10), .B1(N368), .B2(coefficient_5_), .Z(N461)
         );
  INVD1 U184 ( .I(N146), .ZN(n13) );
  ND2D1 U185 ( .A1(N146), .A2(N401), .ZN(n1060) );
  AO22D0 U187 ( .A1(n13), .A2(n9), .B1(N146), .B2(n7), .Z(N367) );
  ND2D1 U188 ( .A1(N372), .A2(coefficient_5_), .ZN(n1070) );
  AO22D0 U189 ( .A1(N178), .A2(n9), .B1(N178), .B2(n7), .Z(N345) );
  AO22D0 U190 ( .A1(N177), .A2(n9), .B1(N177), .B2(n7), .Z(N344) );
  AO22D0 U192 ( .A1(N179), .A2(n9), .B1(N179), .B2(n7), .Z(N346) );
  AO22D0 U193 ( .A1(N180), .A2(n9), .B1(N180), .B2(n7), .Z(N347) );
  AO22D0 U194 ( .A1(N317), .A2(n9), .B1(N150), .B2(n7), .Z(N374) );
  AO22D0 U195 ( .A1(N316), .A2(n9), .B1(N149), .B2(n7), .Z(N373) );
  AO22D0 U196 ( .A1(N181), .A2(n9), .B1(N181), .B2(n7), .Z(N348) );
  AO22D0 U197 ( .A1(N318), .A2(n9), .B1(N151), .B2(n7), .Z(N375) );
  AO22D0 U198 ( .A1(N319), .A2(n9), .B1(N152), .B2(n7), .Z(N376) );
  AO22D0 U199 ( .A1(N320), .A2(n9), .B1(N153), .B2(n7), .Z(N377) );
  AO22D0 U200 ( .A1(N182), .A2(n9), .B1(N182), .B2(n7), .Z(N349) );
  AO22D0 U201 ( .A1(N321), .A2(n9), .B1(N154), .B2(n7), .Z(N378) );
  AO22D0 U202 ( .A1(N322), .A2(n9), .B1(N155), .B2(n7), .Z(N379) );
  AO22D0 U203 ( .A1(N183), .A2(n9), .B1(N183), .B2(n7), .Z(N350) );
  INVD1 U205 ( .I(N144), .ZN(N31) );
  AO22D0 U206 ( .A1(N323), .A2(n9), .B1(N156), .B2(n7), .Z(N380) );
  AO22D0 U208 ( .A1(N324), .A2(n9), .B1(N157), .B2(n7), .Z(N381) );
  AO22D0 U209 ( .A1(N184), .A2(n9), .B1(N184), .B2(n7), .Z(N351) );
  AO22D0 U210 ( .A1(N325), .A2(n9), .B1(N158), .B2(n7), .Z(N382) );
  AO22D0 U212 ( .A1(N326), .A2(n9), .B1(N159), .B2(n7), .Z(N383) );
  AO22D0 U214 ( .A1(N185), .A2(n9), .B1(N185), .B2(n7), .Z(N352) );
  AO22D0 U215 ( .A1(N327), .A2(n9), .B1(N160), .B2(n7), .Z(N384) );
  AO22D0 U216 ( .A1(N328), .A2(n9), .B1(N161), .B2(n7), .Z(N385) );
  AO22D0 U217 ( .A1(N186), .A2(n9), .B1(N186), .B2(n7), .Z(N353) );
  AO22D0 U218 ( .A1(N329), .A2(n9), .B1(N162), .B2(n7), .Z(N386) );
  AO22D0 U219 ( .A1(N330), .A2(n9), .B1(N163), .B2(n7), .Z(N387) );
  AO22D0 U220 ( .A1(N187), .A2(n9), .B1(N187), .B2(n7), .Z(N354) );
  AO22D0 U221 ( .A1(N331), .A2(n9), .B1(N164), .B2(n7), .Z(N388) );
  AO22D0 U222 ( .A1(N332), .A2(n9), .B1(N165), .B2(n7), .Z(N389) );
  AO22D0 U223 ( .A1(N188), .A2(n9), .B1(N188), .B2(n7), .Z(N355) );
  AO22D0 U224 ( .A1(N333), .A2(n9), .B1(N166), .B2(n7), .Z(N390) );
  AO22D0 U225 ( .A1(N334), .A2(n9), .B1(N167), .B2(n7), .Z(N391) );
  AO22D0 U226 ( .A1(N189), .A2(n9), .B1(N189), .B2(n7), .Z(N356) );
  AO22D0 U227 ( .A1(N335), .A2(n9), .B1(N168), .B2(n7), .Z(N392) );
  AO22D0 U228 ( .A1(N336), .A2(n9), .B1(N169), .B2(n7), .Z(N393) );
  AO22D0 U229 ( .A1(N190), .A2(n9), .B1(N190), .B2(n7), .Z(N357) );
  AO22D0 U230 ( .A1(N337), .A2(n9), .B1(N170), .B2(n7), .Z(N394) );
  AO22D0 U231 ( .A1(N191), .A2(n9), .B1(N191), .B2(n7), .Z(N358) );
  AO22D0 U232 ( .A1(N192), .A2(n9), .B1(N192), .B2(n7), .Z(N359) );
  AO22D0 U233 ( .A1(N193), .A2(n9), .B1(N193), .B2(n7), .Z(N360) );
  AO22D0 U234 ( .A1(N194), .A2(n9), .B1(N194), .B2(n7), .Z(N361) );
  AO22D0 U235 ( .A1(N195), .A2(n9), .B1(N195), .B2(n7), .Z(N362) );
  AO22D0 U236 ( .A1(N196), .A2(n9), .B1(N196), .B2(n7), .Z(N363) );
  AO22D0 U237 ( .A1(N197), .A2(n9), .B1(N197), .B2(n7), .Z(N364) );
  AO22D0 U238 ( .A1(N144), .A2(n9), .B1(N144), .B2(n7), .Z(N365) );
  IND2D1 U240 ( .A1(N144), .B1(n13), .ZN(N200) );
  TIEL U241 ( .ZN(N36) );
  TIEH U242 ( .Z(N610) );
  XNR2D1 U243 ( .A1(N144), .A2(N146), .ZN(N199) );
  CKXOR2D1 U244 ( .A1(N144), .A2(N146), .Z(N32) );
  AN2XD1 U246 ( .A1(n13), .A2(n9), .Z(N372) );
  XNR3D0 U80 ( .A1(add_2_root_add_0_root_add_105_carry[28]), .A2(N410), .A3(
        n4510), .ZN(delta_1_28_) );
  AOI22D0 U85 ( .A1(n7), .A2(N122), .B1(n9), .B2(N289), .ZN(n4510) );
  XOR3D0 U86 ( .A1(n7), .A2(coefficient_5_), .A3(n13), .Z(N410) );
  CKND0 U104 ( .I(delta_1_19_), .ZN(base_plane[19]) );
  AOI22D0 U123 ( .A1(n7), .A2(N113), .B1(n9), .B2(N280), .ZN(delta_1_19_) );
  CKND0 U177 ( .I(N34), .ZN(n1) );
  CKND2D0 U186 ( .A1(N146), .A2(N144), .ZN(N34) );
  CKND2D1 U191 ( .A1(N146), .A2(n9), .ZN(N368) );
  INVD2 U204 ( .I(divide_mode), .ZN(n9) );
endmodule


module oadm_fixed_l1_divmul_correction_chain ( x, y, divide_mode, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  input divide_mode;


  oadm_fixed_divmul_correction_chain_LEVEL1 impl ( .x(x), .y(y), .divide_mode(
        divide_mode), .result(result) );
endmodule

