/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Thu Sep  3 13:57:57 2026
/////////////////////////////////////////////////////////////


module fp32_normal_finite_wrapper_DW01_add_3_DW01_add_9 ( A, B, CI, SUM, CO );
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


module fp32_normal_finite_wrapper_DW01_add_1_DW01_add_7 ( A, B, CI, SUM, CO );
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
  fp32_normal_finite_wrapper_DW01_add_3_DW01_add_9 add_1_root_add_0_root_add_25_2 ( 
        .A(x[30:23]), .B({N42, N41, N40, N39, N38, N37, N36, N11}), .CI(n79), 
        .SUM({N34, N33, N32, N31, N30, N29, N28, N27}) );
  fp32_normal_finite_wrapper_DW01_add_1_DW01_add_7 add_1_root_add_0_root_add_22_2 ( 
        .A(x[30:23]), .B({y[30], N17, N16, N15, N14, N13, N12, N11}), .CI(n79), 
        .SUM({N10, N9, N8, N7, N6, N5, N4, N3}) );
  AN2XD1 U3 ( .A1(exponent_adjust[0]), .A2(N3), .Z(n1) );
  AN2XD1 U4 ( .A1(exponent_adjust[0]), .A2(N27), .Z(n2) );
  INVD1 U33 ( .I(divide_mode), .ZN(n78) );
  CKBD1 U34 ( .I(result_fraction[16]), .Z(result[16]) );
  CKBD1 U35 ( .I(result_fraction[11]), .Z(result[11]) );
  CKBD1 U36 ( .I(result_fraction[15]), .Z(result[15]) );
  CKBD1 U37 ( .I(result_fraction[12]), .Z(result[12]) );
  CKBD1 U38 ( .I(result_fraction[13]), .Z(result[13]) );
  CKBD1 U39 ( .I(result_fraction[14]), .Z(result[14]) );
  CKBD1 U40 ( .I(result_fraction[10]), .Z(result[10]) );
  CKBD1 U41 ( .I(result_fraction[9]), .Z(result[9]) );
  CKBD1 U42 ( .I(result_fraction[8]), .Z(result[8]) );
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
  AO22D0 U62 ( .A1(N50), .A2(n78), .B1(divide_mode), .B2(N26), .Z(result[30])
         );
  XOR3D1 U63 ( .A1(N34), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_25_2_carry[7]), .Z(N50) );
  XOR3D1 U64 ( .A1(N10), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_22_2_carry[7]), .Z(N26) );
  CKBD1 U65 ( .I(x[22]), .Z(fraction_x[22]) );
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
  CKXOR2D1 U77 ( .A1(y[30]), .A2(n77), .Z(N42) );
  ND2D1 U78 ( .A1(n70), .A2(y[29]), .ZN(n77) );
  CKBD1 U87 ( .I(x[21]), .Z(fraction_x[21]) );
  CKBD1 U88 ( .I(x[20]), .Z(fraction_x[20]) );
  CKBD1 U89 ( .I(x[19]), .Z(fraction_x[19]) );
  CKBD1 U90 ( .I(x[18]), .Z(fraction_x[18]) );
  CKBD1 U91 ( .I(x[17]), .Z(fraction_x[17]) );
  CKBD1 U92 ( .I(x[16]), .Z(fraction_x[16]) );
  CKBD1 U93 ( .I(x[15]), .Z(fraction_x[15]) );
  CKBD1 U94 ( .I(x[14]), .Z(fraction_x[14]) );
  CKBD1 U95 ( .I(y[22]), .Z(fraction_y[22]) );
  CKBD1 U96 ( .I(y[21]), .Z(fraction_y[21]) );
  CKBD1 U97 ( .I(y[20]), .Z(fraction_y[20]) );
  CKBD1 U98 ( .I(y[19]), .Z(fraction_y[19]) );
  CKBD1 U99 ( .I(y[18]), .Z(fraction_y[18]) );
  CKBD1 U100 ( .I(y[17]), .Z(fraction_y[17]) );
  CKBD1 U101 ( .I(y[16]), .Z(fraction_y[16]) );
  CKBD1 U102 ( .I(y[15]), .Z(fraction_y[15]) );
  CKBD1 U103 ( .I(y[14]), .Z(fraction_y[14]) );
  CKBD1 U104 ( .I(result_fraction[22]), .Z(result[22]) );
  CKBD1 U105 ( .I(result_fraction[21]), .Z(result[21]) );
  CKBD1 U106 ( .I(result_fraction[20]), .Z(result[20]) );
  CKBD1 U107 ( .I(result_fraction[19]), .Z(result[19]) );
  CKBD1 U108 ( .I(result_fraction[18]), .Z(result[18]) );
  CKBD1 U109 ( .I(result_fraction[17]), .Z(result[17]) );
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


module oadm_fixed_divmul_root_opt_1_16_14_16_7_53_2a_DW_mult_uns_1 ( a, b, 
        product );
  input [8:0] a;
  input [6:0] b;
  output [15:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n112, n113, n114, n115, n116, n117,
         n118, n119, n174, n175, n176, n177, n178, n179, n180, n181, n182;

  FA1D0 U2 ( .A(n15), .B(n67), .CI(n2), .CO(product[15]), .S(product[14]) );
  FA1D0 U3 ( .A(n18), .B(n16), .CI(n3), .CO(n2), .S(product[13]) );
  FA1D0 U4 ( .A(n21), .B(n19), .CI(n4), .CO(n3), .S(product[12]) );
  FA1D0 U5 ( .A(n26), .B(n22), .CI(n5), .CO(n4), .S(product[11]) );
  FA1D0 U6 ( .A(n31), .B(n27), .CI(n6), .CO(n5), .S(product[10]) );
  FA1D0 U7 ( .A(n32), .B(n38), .CI(n7), .CO(n6), .S(product[9]) );
  FA1D0 U8 ( .A(n39), .B(n44), .CI(n8), .CO(n7), .S(product[8]) );
  FA1D0 U9 ( .A(n45), .B(n50), .CI(n9), .CO(n8), .S(product[7]) );
  FA1D0 U10 ( .A(n51), .B(n57), .CI(n10), .CO(n9), .S(product[6]) );
  FA1D0 U11 ( .A(n58), .B(n61), .CI(n11), .CO(n10), .S(product[5]) );
  FA1D0 U12 ( .A(n62), .B(n64), .CI(n12), .CO(n11), .S(product[4]) );
  FA1D0 U13 ( .A(n66), .B(n84), .CI(n13), .CO(n12), .S(product[3]) );
  FA1D0 U14 ( .A(n118), .B(a[1]), .CI(n14), .CO(n13), .S(product[2]) );
  HA1D0 U15 ( .A(n119), .B(a[0]), .CO(n14), .S(product[1]) );
  FA1D0 U16 ( .A(n68), .B(n94), .CI(n17), .CO(n15), .S(n16) );
  CMPE42D1 U17 ( .A(n69), .B(n85), .C(n95), .CIX(n20), .D(n23), .CO(n18), 
        .COX(n17), .S(n19) );
  CMPE42D1 U18 ( .A(n86), .B(n94), .C(n24), .CIX(n25), .D(n28), .CO(n21), 
        .COX(n20), .S(n22) );
  HA1D0 U19 ( .A(n70), .B(n96), .CO(n23), .S(n24) );
  CMPE42D1 U20 ( .A(n35), .B(n87), .C(n33), .CIX(n30), .D(n29), .CO(n26), 
        .COX(n25), .S(n27) );
  FA1D0 U21 ( .A(n71), .B(n95), .CI(n97), .CO(n28), .S(n29) );
  CMPE42D1 U22 ( .A(n40), .B(n36), .C(n34), .CIX(n37), .D(n41), .CO(n31), 
        .COX(n30), .S(n32) );
  FA1D0 U23 ( .A(n98), .B(n72), .CI(n88), .CO(n33), .S(n34) );
  HA1D0 U24 ( .A(n96), .B(a[8]), .CO(n35), .S(n36) );
  CMPE42D1 U25 ( .A(n97), .B(n112), .C(n43), .CIX(n47), .D(n42), .CO(n38), 
        .COX(n37), .S(n39) );
  CMPE42D1 U26 ( .A(n99), .B(a[7]), .C(n73), .CIX(n46), .D(n89), .CO(n41), 
        .COX(n40), .S(n42) );
  CMPE42D1 U27 ( .A(n98), .B(n113), .C(n52), .CIX(n48), .D(n49), .CO(n44), 
        .COX(n43), .S(n45) );
  CMPE42D1 U28 ( .A(n82), .B(a[6]), .C(n74), .CIX(n54), .D(n90), .CO(n47), 
        .COX(n46), .S(n48) );
  CMPE42D1 U29 ( .A(n59), .B(n99), .C(n55), .CIX(n53), .D(n56), .CO(n50), 
        .COX(n49), .S(n51) );
  FA1D0 U30 ( .A(n75), .B(n114), .CI(n91), .CO(n52), .S(n53) );
  HA1D0 U31 ( .A(n83), .B(a[5]), .CO(n54), .S(n55) );
  CMPE42D1 U32 ( .A(n84), .B(n115), .C(n82), .CIX(n60), .D(n63), .CO(n57), 
        .COX(n56), .S(n58) );
  HA1D0 U33 ( .A(n92), .B(a[4]), .CO(n59), .S(n60) );
  FA1D0 U34 ( .A(n93), .B(n83), .CI(n65), .CO(n61), .S(n62) );
  HA1D0 U35 ( .A(n116), .B(a[3]), .CO(n63), .S(n64) );
  HA1D0 U36 ( .A(n117), .B(a[2]), .CO(n65), .S(n66) );
  INVD1 U109 ( .I(a[5]), .ZN(n177) );
  INVD1 U110 ( .I(a[8]), .ZN(n174) );
  INVD1 U111 ( .I(a[7]), .ZN(n175) );
  INVD1 U112 ( .I(a[6]), .ZN(n176) );
  INVD1 U113 ( .I(a[4]), .ZN(n178) );
  INVD1 U114 ( .I(a[3]), .ZN(n179) );
  INVD1 U115 ( .I(a[2]), .ZN(n180) );
  INVD1 U116 ( .I(a[1]), .ZN(n181) );
  INVD1 U117 ( .I(a[0]), .ZN(n182) );
  NR2D0 U118 ( .A1(n182), .A2(b[3]), .ZN(product[0]) );
  NR2D0 U119 ( .A1(n182), .A2(b[3]), .ZN(n93) );
  NR2D0 U120 ( .A1(b[3]), .A2(n181), .ZN(n92) );
  NR2D0 U121 ( .A1(b[3]), .A2(n180), .ZN(n91) );
  NR2D0 U122 ( .A1(n179), .A2(b[3]), .ZN(n90) );
  NR2D0 U123 ( .A1(n178), .A2(b[3]), .ZN(n89) );
  NR2D0 U124 ( .A1(n177), .A2(b[3]), .ZN(n88) );
  NR2D0 U125 ( .A1(n176), .A2(b[3]), .ZN(n87) );
  NR2D0 U126 ( .A1(n175), .A2(b[3]), .ZN(n86) );
  NR2D0 U127 ( .A1(n174), .A2(b[3]), .ZN(n85) );
  NR2D0 U128 ( .A1(n179), .A2(b[4]), .ZN(n99) );
  NR2D0 U129 ( .A1(b[4]), .A2(n178), .ZN(n98) );
  NR2D0 U130 ( .A1(b[4]), .A2(n177), .ZN(n97) );
  NR2D0 U131 ( .A1(b[4]), .A2(n176), .ZN(n96) );
  NR2D0 U132 ( .A1(b[4]), .A2(n175), .ZN(n95) );
  NR2D0 U133 ( .A1(b[4]), .A2(n174), .ZN(n94) );
  NR2D0 U134 ( .A1(n182), .A2(b[3]), .ZN(n75) );
  NR2D0 U135 ( .A1(n181), .A2(b[3]), .ZN(n74) );
  NR2D0 U136 ( .A1(n180), .A2(b[3]), .ZN(n73) );
  NR2D0 U137 ( .A1(n179), .A2(b[3]), .ZN(n72) );
  NR2D0 U138 ( .A1(n178), .A2(b[3]), .ZN(n71) );
  NR2D0 U139 ( .A1(n177), .A2(b[3]), .ZN(n70) );
  NR2D0 U140 ( .A1(n176), .A2(b[3]), .ZN(n69) );
  NR2D0 U141 ( .A1(n175), .A2(b[3]), .ZN(n68) );
  NR2D0 U142 ( .A1(n174), .A2(b[3]), .ZN(n67) );
  NR2D0 U143 ( .A1(b[3]), .A2(n181), .ZN(n119) );
  NR2D0 U144 ( .A1(b[3]), .A2(n180), .ZN(n118) );
  NR2D0 U145 ( .A1(b[3]), .A2(n179), .ZN(n117) );
  NR2D0 U146 ( .A1(b[3]), .A2(n178), .ZN(n116) );
  NR2D0 U147 ( .A1(b[5]), .A2(n177), .ZN(n115) );
  NR2D0 U148 ( .A1(b[3]), .A2(n176), .ZN(n114) );
  NR2D0 U149 ( .A1(b[3]), .A2(n175), .ZN(n113) );
  NR2D0 U150 ( .A1(b[3]), .A2(n174), .ZN(n112) );
  NR2D0 U151 ( .A1(n182), .A2(b[4]), .ZN(n84) );
  NR2D0 U152 ( .A1(b[4]), .A2(n181), .ZN(n83) );
  NR2D0 U153 ( .A1(b[4]), .A2(n180), .ZN(n82) );
endmodule


module oadm_fixed_divmul_root_opt_1_16_14_16_7_53_2a_DW_mult_tc_1 ( a, b, 
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
  INVD1 U103 ( .I(n19), .ZN(n144) );
  INVD1 U104 ( .I(a[0]), .ZN(n155) );
  XNR2D1 U105 ( .A1(b[3]), .A2(n154), .ZN(n138) );
  INVD1 U106 ( .I(b[3]), .ZN(n147) );
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


module oadm_fixed_divmul_root_opt_1_16_14_16_7_53_2a_DW_mult_tc_0 ( a, b, 
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
  XNR2D1 U105 ( .A1(b[3]), .A2(n154), .ZN(n138) );
  INVD1 U106 ( .I(a[0]), .ZN(n155) );
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


module oadm_fixed_divmul_root_opt_1_16_14_16_7_53_2a ( x, y, divide_mode, 
        result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  input divide_mode;
  wire   x_midpoint_3_, y_midpoint_3_, x_residual_21_, y_residual_21_, N29,
         N30, N31, N32, N33, N34, N35, N36, N37, N38, N39, N40, N41, N54, N55,
         N56, N57, N58, N59, N60, N61, N62, N63, N64, N65, N66, n340, n360,
         n370, n380, n53, n540, n550, n560, n570, n580, n590, n600, n610, n620,
         n640, n650, n660, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, N99, N98, N97, N96, N95, N94, N93, N92, N91, N90,
         N89, N88, N87, N123, N122, N121, N120, N113, N112, mult_74_n15,
         mult_74_n13, mult_74_n10, mult_74_n9, mult_74_n3, mult_74_n2, n1, n2,
         n3, n4, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n18, n19,
         n20, n21, n22, n24, n25, n26, n28, n290, n300, n310, n320, n330, n350,
         n390, n400, n410, n42, n43, n44, n45, n47;
  wire   [21:14] x_mantissa;
  wire   [21:14] y_mantissa;
  wire   [1:0] x_shared_residual;
  wire   [1:0] y_shared_residual;
  wire   [13:2] x_product;
  wire   [13:3] y_product;
  wire   [4:3] midpoint_sum;
  wire   [24:12] plane_value;
  wire   [15:0] reduced_scale_product;
  wire   [22:8] normalized_fraction;
  wire   [2:0] exponent_adjust;
  wire   [24:14] add_0_root_add_0_root_add_80_3_carry;
  wire   [24:14] add_1_root_add_0_root_add_80_3_carry;
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

  AN2XD1 U13 ( .A1(y_mantissa[15]), .A2(n25), .Z(y_shared_residual[1]) );
  AN2XD1 U14 ( .A1(y_mantissa[14]), .A2(n25), .Z(y_shared_residual[0]) );
  AN2XD1 U16 ( .A1(x_mantissa[15]), .A2(n25), .Z(x_shared_residual[1]) );
  AN2XD1 U17 ( .A1(x_mantissa[14]), .A2(n25), .Z(x_shared_residual[0]) );
  AN2XD1 U94 ( .A1(midpoint_sum[4]), .A2(n25), .Z(N113) );
  AN2XD1 U95 ( .A1(midpoint_sum[3]), .A2(n25), .Z(N112) );
  fp32_normal_finite_wrapper fp_wrapper ( .x({x[31:14], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y({
        y[31:14], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .divide_mode(n24), .fraction_x({
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
  oadm_fixed_divmul_root_opt_1_16_14_16_7_53_2a_DW_mult_uns_1 mult_113 ( .a(
        plane_value[24:16]), .b({n26, y_midpoint_3_, n26, y_midpoint_3_, n2, 
        n1, n26}), .product(reduced_scale_product) );
  oadm_fixed_divmul_root_opt_1_16_14_16_7_53_2a_DW_mult_tc_1 mult_61 ( .a({
        x_residual_21_, x_mantissa[20:16], x_shared_residual}), .b({n2, n1, 
        y_midpoint_3_, n1, n2, n2}), .product({x_product, 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37}) );
  oadm_fixed_divmul_root_opt_1_16_14_16_7_53_2a_DW_mult_tc_0 mult_63 ( .a({
        y_residual_21_, y_mantissa[20:16], y_shared_residual}), .b({n2, n1, 
        x_midpoint_3_, n1, n2, n2}), .product({y_product, N29, 
        SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39}) );
  TIEH U3 ( .Z(n1) );
  TIEL U4 ( .ZN(n2) );
  AN2XD1 U6 ( .A1(x_product[2]), .A2(N112), .Z(n3) );
  INVD1 U8 ( .I(x_midpoint_3_), .ZN(n21) );
  AN2XD1 U10 ( .A1(n13), .A2(n300), .Z(n6) );
  ND2D1 U11 ( .A1(n44), .A2(n560), .ZN(exponent_adjust[2]) );
  INVD1 U12 ( .I(n380), .ZN(n44) );
  AN2XD1 U15 ( .A1(n10), .A2(n42), .Z(n7) );
  AN2XD1 U19 ( .A1(n11), .A2(n390), .Z(n8) );
  INVD1 U20 ( .I(y_product[4]), .ZN(n300) );
  AN2XD1 U21 ( .A1(n8), .A2(n400), .Z(n9) );
  AN2XD1 U22 ( .A1(n9), .A2(n410), .Z(n10) );
  AN2XD1 U23 ( .A1(n12), .A2(n350), .Z(n11) );
  AN2XD1 U24 ( .A1(n14), .A2(n330), .Z(n12) );
  AN2XD1 U26 ( .A1(n15), .A2(n320), .Z(n14) );
  AN2XD1 U27 ( .A1(n6), .A2(n310), .Z(n15) );
  INVD1 U29 ( .I(y_product[10]), .ZN(n400) );
  INVD1 U30 ( .I(y_product[11]), .ZN(n410) );
  INVD1 U31 ( .I(n360), .ZN(n45) );
  INVD1 U32 ( .I(y_product[12]), .ZN(n42) );
  INVD1 U33 ( .I(y_product[9]), .ZN(n390) );
  FA1D0 U34 ( .A(N123), .B(x_product[13]), .CI(
        add_1_root_add_0_root_add_80_3_carry[23]), .CO(
        add_1_root_add_0_root_add_80_3_carry[24]), .S(N98) );
  INVD1 U35 ( .I(y_product[8]), .ZN(n350) );
  INVD1 U36 ( .I(y_product[7]), .ZN(n330) );
  INVD1 U38 ( .I(y_product[6]), .ZN(n320) );
  INVD1 U39 ( .I(y_product[5]), .ZN(n310) );
  ND3D1 U40 ( .A1(n540), .A2(n53), .A3(n360), .ZN(n560) );
  ND2D1 U42 ( .A1(n360), .A2(n44), .ZN(exponent_adjust[0]) );
  AN2XD1 U43 ( .A1(add_1_root_add_0_root_add_80_3_carry[15]), .A2(x_product[5]), .Z(n16) );
  AN2XD1 U45 ( .A1(n19), .A2(x_product[7]), .Z(n18) );
  AN2XD1 U46 ( .A1(n16), .A2(x_product[6]), .Z(n19) );
  OAI221D0 U48 ( .A1(n67), .A2(n20), .B1(n360), .B2(n650), .C(n70), .ZN(
        normalized_fraction[16]) );
  OA22D0 U49 ( .A1(n560), .A2(n71), .B1(n44), .B2(n69), .Z(n70) );
  OAI221D0 U50 ( .A1(n77), .A2(n20), .B1(n360), .B2(n75), .C(n79), .ZN(
        normalized_fraction[11]) );
  OA22D0 U51 ( .A1(n560), .A2(n340), .B1(n44), .B2(n370), .Z(n79) );
  OAI221D0 U52 ( .A1(n69), .A2(n20), .B1(n360), .B2(n67), .C(n72), .ZN(
        normalized_fraction[15]) );
  OA22D0 U53 ( .A1(n560), .A2(n73), .B1(n44), .B2(n71), .Z(n72) );
  OAI221D0 U54 ( .A1(n75), .A2(n20), .B1(n360), .B2(n73), .C(n78), .ZN(
        normalized_fraction[12]) );
  OA22D0 U55 ( .A1(n560), .A2(n370), .B1(n44), .B2(n77), .Z(n78) );
  OAI221D0 U56 ( .A1(n73), .A2(n20), .B1(n360), .B2(n71), .C(n76), .ZN(
        normalized_fraction[13]) );
  OA22D0 U57 ( .A1(n560), .A2(n77), .B1(n44), .B2(n75), .Z(n76) );
  OAI221D0 U58 ( .A1(n71), .A2(n20), .B1(n360), .B2(n69), .C(n74), .ZN(
        normalized_fraction[14]) );
  OA22D0 U59 ( .A1(n560), .A2(n75), .B1(n44), .B2(n73), .Z(n74) );
  OAI221D0 U60 ( .A1(n53), .A2(n20), .B1(n360), .B2(n540), .C(n550), .ZN(
        normalized_fraction[22]) );
  OA22D0 U61 ( .A1(n560), .A2(n570), .B1(n44), .B2(n580), .Z(n550) );
  OAI221D0 U62 ( .A1(n580), .A2(n20), .B1(n360), .B2(n53), .C(n590), .ZN(
        normalized_fraction[21]) );
  OA22D0 U63 ( .A1(n560), .A2(n600), .B1(n44), .B2(n570), .Z(n590) );
  OAI221D0 U64 ( .A1(n650), .A2(n20), .B1(n360), .B2(n620), .C(n68), .ZN(
        normalized_fraction[17]) );
  OA22D0 U65 ( .A1(n560), .A2(n69), .B1(n44), .B2(n67), .Z(n68) );
  OAI221D0 U66 ( .A1(n620), .A2(n20), .B1(n360), .B2(n600), .C(n660), .ZN(
        normalized_fraction[18]) );
  OA22D0 U67 ( .A1(n560), .A2(n67), .B1(n44), .B2(n650), .Z(n660) );
  OAI221D0 U68 ( .A1(n600), .A2(n20), .B1(n360), .B2(n570), .C(n640), .ZN(
        normalized_fraction[19]) );
  OA22D0 U69 ( .A1(n560), .A2(n650), .B1(n44), .B2(n620), .Z(n640) );
  OAI221D0 U70 ( .A1(n570), .A2(n20), .B1(n360), .B2(n580), .C(n610), .ZN(
        normalized_fraction[20]) );
  OA22D0 U71 ( .A1(n560), .A2(n620), .B1(n44), .B2(n600), .Z(n610) );
  OR2D1 U72 ( .A1(n45), .A2(n540), .Z(n20) );
  OAI221D0 U73 ( .A1(n370), .A2(n20), .B1(n360), .B2(n77), .C(n80), .ZN(
        normalized_fraction[10]) );
  OAI22D1 U76 ( .A1(n340), .A2(n20), .B1(n360), .B2(n370), .ZN(
        normalized_fraction[9]) );
  NR2D1 U77 ( .A1(n360), .A2(n340), .ZN(normalized_fraction[8]) );
  ND2D1 U79 ( .A1(reduced_scale_product[2]), .A2(n24), .ZN(n77) );
  ND2D1 U80 ( .A1(reduced_scale_product[1]), .A2(n24), .ZN(n370) );
  ND2D1 U81 ( .A1(reduced_scale_product[0]), .A2(n24), .ZN(n340) );
  AOI22D1 U82 ( .A1(reduced_scale_product[14]), .A2(n24), .B1(plane_value[23]), 
        .B2(n25), .ZN(n540) );
  FA1D0 U83 ( .A(N96), .B(N63), .CI(add_0_root_add_0_root_add_80_3_carry[21]), 
        .CO(add_0_root_add_0_root_add_80_3_carry[22]), .S(plane_value[21]) );
  AO22D0 U84 ( .A1(y_product[11]), .A2(n25), .B1(N38), .B2(n24), .Z(N63) );
  FA1D0 U85 ( .A(N95), .B(N62), .CI(add_0_root_add_0_root_add_80_3_carry[20]), 
        .CO(add_0_root_add_0_root_add_80_3_carry[21]), .S(plane_value[20]) );
  AO22D0 U86 ( .A1(y_product[10]), .A2(n25), .B1(N37), .B2(n24), .Z(N62) );
  AOI22D1 U87 ( .A1(reduced_scale_product[15]), .A2(n24), .B1(plane_value[24]), 
        .B2(n25), .ZN(n360) );
  XOR3D1 U88 ( .A1(N99), .A2(N66), .A3(
        add_0_root_add_0_root_add_80_3_carry[24]), .Z(plane_value[24]) );
  AO22D0 U89 ( .A1(n25), .A2(y_product[13]), .B1(N41), .B2(n24), .Z(N66) );
  FA1D0 U91 ( .A(N97), .B(N64), .CI(add_0_root_add_0_root_add_80_3_carry[22]), 
        .CO(add_0_root_add_0_root_add_80_3_carry[23]), .S(plane_value[22]) );
  AO22D0 U92 ( .A1(y_product[12]), .A2(n25), .B1(N39), .B2(n24), .Z(N64) );
  FA1D0 U93 ( .A(N98), .B(N65), .CI(add_0_root_add_0_root_add_80_3_carry[23]), 
        .CO(add_0_root_add_0_root_add_80_3_carry[24]), .S(plane_value[23]) );
  AO22D0 U96 ( .A1(n25), .A2(y_product[13]), .B1(N40), .B2(n24), .Z(N65) );
  FA1D0 U97 ( .A(N94), .B(N61), .CI(add_0_root_add_0_root_add_80_3_carry[19]), 
        .CO(add_0_root_add_0_root_add_80_3_carry[20]), .S(plane_value[19]) );
  AO22D0 U98 ( .A1(y_product[9]), .A2(n25), .B1(N36), .B2(n24), .Z(N61) );
  FA1D0 U99 ( .A(N122), .B(x_product[12]), .CI(
        add_1_root_add_0_root_add_80_3_carry[22]), .CO(
        add_1_root_add_0_root_add_80_3_carry[23]), .S(N97) );
  FA1D0 U100 ( .A(N93), .B(N60), .CI(add_0_root_add_0_root_add_80_3_carry[18]), 
        .CO(add_0_root_add_0_root_add_80_3_carry[19]), .S(plane_value[18]) );
  AO22D0 U101 ( .A1(y_product[8]), .A2(n25), .B1(N35), .B2(n24), .Z(N60) );
  FA1D0 U102 ( .A(N121), .B(x_product[11]), .CI(
        add_1_root_add_0_root_add_80_3_carry[21]), .CO(
        add_1_root_add_0_root_add_80_3_carry[22]), .S(N96) );
  FA1D0 U103 ( .A(N92), .B(N59), .CI(add_0_root_add_0_root_add_80_3_carry[17]), 
        .CO(add_0_root_add_0_root_add_80_3_carry[18]), .S(plane_value[17]) );
  AO22D0 U104 ( .A1(y_product[7]), .A2(n25), .B1(N34), .B2(n24), .Z(N59) );
  FA1D0 U105 ( .A(N88), .B(N55), .CI(n4), .CO(
        add_0_root_add_0_root_add_80_3_carry[14]), .S(plane_value[13]) );
  AO22D0 U106 ( .A1(y_product[3]), .A2(n25), .B1(N30), .B2(n24), .Z(N55) );
  FA1D0 U107 ( .A(N89), .B(N56), .CI(add_0_root_add_0_root_add_80_3_carry[14]), 
        .CO(add_0_root_add_0_root_add_80_3_carry[15]), .S(plane_value[14]) );
  AO22D0 U108 ( .A1(y_product[4]), .A2(n25), .B1(N31), .B2(n24), .Z(N56) );
  FA1D0 U109 ( .A(N90), .B(N57), .CI(add_0_root_add_0_root_add_80_3_carry[15]), 
        .CO(add_0_root_add_0_root_add_80_3_carry[16]), .S(plane_value[15]) );
  AO22D0 U110 ( .A1(y_product[5]), .A2(n25), .B1(N32), .B2(n24), .Z(N57) );
  FA1D0 U111 ( .A(N91), .B(N58), .CI(add_0_root_add_0_root_add_80_3_carry[16]), 
        .CO(add_0_root_add_0_root_add_80_3_carry[17]), .S(plane_value[16]) );
  AO22D0 U112 ( .A1(y_product[6]), .A2(n25), .B1(N33), .B2(n24), .Z(N58) );
  FA1D0 U113 ( .A(n25), .B(x_product[4]), .CI(
        add_1_root_add_0_root_add_80_3_carry[14]), .CO(
        add_1_root_add_0_root_add_80_3_carry[15]), .S(N89) );
  FA1D0 U114 ( .A(N113), .B(x_product[3]), .CI(n3), .CO(
        add_1_root_add_0_root_add_80_3_carry[14]), .S(N88) );
  AOI22D1 U115 ( .A1(reduced_scale_product[13]), .A2(n24), .B1(plane_value[22]), .B2(n25), .ZN(n53) );
  INVD1 U117 ( .I(n25), .ZN(n24) );
  AOI22D1 U118 ( .A1(reduced_scale_product[12]), .A2(n24), .B1(plane_value[21]), .B2(n25), .ZN(n580) );
  AOI22D1 U119 ( .A1(reduced_scale_product[11]), .A2(n24), .B1(plane_value[20]), .B2(n25), .ZN(n570) );
  ND2D1 U120 ( .A1(n21), .A2(n26), .ZN(mult_74_n9) );
  AOI22D1 U121 ( .A1(reduced_scale_product[10]), .A2(n24), .B1(plane_value[19]), .B2(n25), .ZN(n600) );
  AOI22D1 U122 ( .A1(reduced_scale_product[9]), .A2(n24), .B1(plane_value[18]), 
        .B2(n25), .ZN(n620) );
  AOI22D1 U123 ( .A1(reduced_scale_product[8]), .A2(n24), .B1(plane_value[17]), 
        .B2(n25), .ZN(n650) );
  AOI22D1 U124 ( .A1(reduced_scale_product[7]), .A2(n24), .B1(plane_value[16]), 
        .B2(n25), .ZN(n67) );
  AOI22D1 U125 ( .A1(reduced_scale_product[6]), .A2(n24), .B1(plane_value[15]), 
        .B2(n25), .ZN(n69) );
  AOI22D1 U126 ( .A1(reduced_scale_product[5]), .A2(n24), .B1(plane_value[14]), 
        .B2(n25), .ZN(n71) );
  AOI22D1 U127 ( .A1(reduced_scale_product[4]), .A2(n24), .B1(plane_value[13]), 
        .B2(n25), .ZN(n73) );
  AOI22D1 U128 ( .A1(reduced_scale_product[3]), .A2(n24), .B1(plane_value[12]), 
        .B2(n25), .ZN(n75) );
  FA1D0 U129 ( .A(N120), .B(x_product[10]), .CI(
        add_1_root_add_0_root_add_80_3_carry[20]), .CO(
        add_1_root_add_0_root_add_80_3_carry[21]), .S(N95) );
  IND2D1 U132 ( .A1(y_midpoint_3_), .B1(n21), .ZN(midpoint_sum[4]) );
  INVD1 U133 ( .I(y_midpoint_3_), .ZN(n26) );
  INVD1 U134 ( .I(divide_mode), .ZN(n25) );
  INVD1 U135 ( .I(y_mantissa[21]), .ZN(y_residual_21_) );
  INVD1 U136 ( .I(x_mantissa[21]), .ZN(x_residual_21_) );
  XNR2D1 U137 ( .A1(y_midpoint_3_), .A2(x_midpoint_3_), .ZN(midpoint_sum[3])
         );
  CKXOR2D1 U139 ( .A1(n28), .A2(n290), .Z(N30) );
  CKXOR2D1 U140 ( .A1(n13), .A2(n300), .Z(N31) );
  CKXOR2D1 U141 ( .A1(n6), .A2(n310), .Z(N32) );
  CKXOR2D1 U142 ( .A1(n15), .A2(n320), .Z(N33) );
  CKXOR2D1 U143 ( .A1(n14), .A2(n330), .Z(N34) );
  CKXOR2D1 U144 ( .A1(n12), .A2(n350), .Z(N35) );
  CKXOR2D1 U145 ( .A1(n11), .A2(n390), .Z(N36) );
  CKXOR2D1 U146 ( .A1(n8), .A2(n400), .Z(N37) );
  CKXOR2D1 U147 ( .A1(n9), .A2(n410), .Z(N38) );
  CKXOR2D1 U148 ( .A1(n10), .A2(n42), .Z(N39) );
  CKXOR2D1 U149 ( .A1(n7), .A2(n43), .Z(N40) );
  CKXOR2D1 U151 ( .A1(N54), .A2(N87), .Z(plane_value[12]) );
  CKXOR2D1 U153 ( .A1(add_1_root_add_0_root_add_80_3_carry[15]), .A2(
        x_product[5]), .Z(N90) );
  CKXOR2D1 U154 ( .A1(n16), .A2(x_product[6]), .Z(N91) );
  CKXOR2D1 U155 ( .A1(n19), .A2(x_product[7]), .Z(N92) );
  CKXOR2D1 U156 ( .A1(n18), .A2(x_product[8]), .Z(N93) );
  NR2D0 U157 ( .A1(n26), .A2(n21), .ZN(mult_74_n13) );
  CKXOR2D0 U158 ( .A1(x_midpoint_3_), .A2(y_midpoint_3_), .Z(N120) );
  AN2D0 U159 ( .A1(x_midpoint_3_), .A2(y_midpoint_3_), .Z(mult_74_n15) );
  CKXOR2D0 U160 ( .A1(mult_74_n13), .A2(mult_74_n15), .Z(N121) );
  AN2D0 U161 ( .A1(mult_74_n13), .A2(mult_74_n15), .Z(mult_74_n3) );
  CKXOR2D0 U162 ( .A1(mult_74_n3), .A2(mult_74_n10), .Z(N122) );
  XNR2D1 U164 ( .A1(mult_74_n2), .A2(mult_74_n9), .ZN(N123) );
  XNR2D1 U165 ( .A1(x_midpoint_3_), .A2(y_midpoint_3_), .ZN(mult_74_n10) );
  IND2D0 U5 ( .A1(n340), .B1(n380), .ZN(n80) );
  INR3D0 U7 ( .A1(n540), .B1(n45), .B2(n53), .ZN(n380) );
  XNR3D0 U9 ( .A1(add_1_root_add_0_root_add_80_3_carry[24]), .A2(x_product[13]), .A3(n47), .ZN(N99) );
  NR2D0 U18 ( .A1(mult_74_n2), .A2(mult_74_n9), .ZN(n47) );
  AN2D0 U25 ( .A1(mult_74_n10), .A2(mult_74_n3), .Z(mult_74_n2) );
  CKND0 U28 ( .I(y_product[13]), .ZN(n43) );
  NR2D0 U37 ( .A1(y_product[13]), .A2(n7), .ZN(N41) );
  IND2D0 U41 ( .A1(x_product[9]), .B1(n22), .ZN(
        add_1_root_add_0_root_add_80_3_carry[20]) );
  CKND2D0 U44 ( .A1(x_product[8]), .A2(n18), .ZN(n22) );
  CKXOR2D0 U47 ( .A1(x_product[9]), .A2(n22), .Z(N94) );
  AN2D0 U74 ( .A1(N87), .A2(N54), .Z(n4) );
  OA21D0 U75 ( .A1(n24), .A2(n25), .B(N29), .Z(N54) );
  CKXOR2D0 U78 ( .A1(x_product[2]), .A2(N112), .Z(N87) );
  CKND0 U90 ( .I(N29), .ZN(n28) );
  CKND0 U116 ( .I(y_product[3]), .ZN(n290) );
  NR2D0 U130 ( .A1(N29), .A2(y_product[3]), .ZN(n13) );
endmodule


module oadm_fixed_l1_divmul_root_opt ( x, y, divide_mode, result );
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

  oadm_fixed_divmul_root_opt_1_16_14_16_7_53_2a implementation ( .x({x[31:14], 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .y({y[31:14], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .divide_mode(divide_mode), 
        .result({result[31:8], SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7}) );
endmodule

