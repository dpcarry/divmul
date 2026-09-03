/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Thu Sep  3 13:58:50 2026
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
         N12, N11, N10, n1, n2, n35, n410, n51, n60, n70, n76, n77, n79;
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
  INVD1 U29 ( .I(divide_mode), .ZN(n77) );
  CKBD1 U30 ( .I(result_fraction[15]), .Z(result[15]) );
  CKBD1 U31 ( .I(result_fraction[16]), .Z(result[16]) );
  CKBD1 U32 ( .I(result_fraction[17]), .Z(result[17]) );
  CKBD1 U33 ( .I(result_fraction[11]), .Z(result[11]) );
  CKBD1 U34 ( .I(result_fraction[12]), .Z(result[12]) );
  CKBD1 U35 ( .I(result_fraction[13]), .Z(result[13]) );
  CKBD1 U36 ( .I(result_fraction[14]), .Z(result[14]) );
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


module oadm_fixed_divmul_root_opt_2_16_12_16_8_cb_88_61_49_DW_mult_uns_1 ( a, 
        b, product );
  input [8:0] a;
  input [7:0] b;
  output [16:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n175, n176,
         n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187,
         n188;

  FA1D0 U2 ( .A(n16), .B(n68), .CI(n2), .CO(product[16]), .S(product[15]) );
  FA1D0 U3 ( .A(n18), .B(n17), .CI(n3), .CO(n2), .S(product[14]) );
  FA1D0 U4 ( .A(n23), .B(n19), .CI(n4), .CO(n3), .S(product[13]) );
  FA1D0 U5 ( .A(n26), .B(n24), .CI(n5), .CO(n4), .S(product[12]) );
  FA1D0 U6 ( .A(n31), .B(n27), .CI(n6), .CO(n5), .S(product[11]) );
  FA1D0 U7 ( .A(n36), .B(n32), .CI(n7), .CO(n6), .S(product[10]) );
  FA1D0 U8 ( .A(n37), .B(n43), .CI(n8), .CO(n7), .S(product[9]) );
  FA1D0 U9 ( .A(n44), .B(n49), .CI(n9), .CO(n8), .S(product[8]) );
  FA1D0 U10 ( .A(n50), .B(n56), .CI(n10), .CO(n9), .S(product[7]) );
  FA1D0 U11 ( .A(n57), .B(n60), .CI(n11), .CO(n10), .S(product[6]) );
  FA1D0 U12 ( .A(n61), .B(n64), .CI(n12), .CO(n11), .S(product[5]) );
  FA1D0 U13 ( .A(n65), .B(n66), .CI(n13), .CO(n12), .S(product[4]) );
  FA1D0 U14 ( .A(n67), .B(n103), .CI(n14), .CO(n13), .S(product[3]) );
  FA1D0 U15 ( .A(n119), .B(n111), .CI(n15), .CO(n14), .S(product[2]) );
  HA1D0 U16 ( .A(n120), .B(n112), .CO(n15), .S(product[1]) );
  FA1D0 U17 ( .A(n69), .B(n77), .CI(n20), .CO(n16), .S(n17) );
  FA1D0 U18 ( .A(n21), .B(n78), .CI(n22), .CO(n18), .S(n19) );
  HA1D0 U19 ( .A(n70), .B(n86), .CO(n20), .S(n21) );
  CMPE42D1 U20 ( .A(n71), .B(n87), .C(n79), .CIX(n25), .D(n28), .CO(n23), 
        .COX(n22), .S(n24) );
  CMPE42D1 U21 ( .A(n88), .B(n95), .C(n29), .CIX(n30), .D(n33), .CO(n26), 
        .COX(n25), .S(n27) );
  HA1D0 U22 ( .A(n72), .B(n80), .CO(n28), .S(n29) );
  CMPE42D1 U23 ( .A(n40), .B(n89), .C(n38), .CIX(n35), .D(n34), .CO(n31), 
        .COX(n30), .S(n32) );
  FA1D0 U24 ( .A(n73), .B(n96), .CI(n81), .CO(n33), .S(n34) );
  CMPE42D1 U25 ( .A(n45), .B(n41), .C(n39), .CIX(n46), .D(n42), .CO(n36), 
        .COX(n35), .S(n37) );
  FA1D0 U26 ( .A(n97), .B(n90), .CI(n104), .CO(n38), .S(n39) );
  HA1D0 U27 ( .A(n74), .B(n82), .CO(n40), .S(n41) );
  CMPE42D1 U28 ( .A(n105), .B(n113), .C(n53), .CIX(n47), .D(n48), .CO(n43), 
        .COX(n42), .S(n44) );
  CMPE42D1 U29 ( .A(n75), .B(n83), .C(n91), .CIX(n51), .D(n98), .CO(n46), 
        .COX(n45), .S(n47) );
  CMPE42D1 U30 ( .A(n58), .B(n106), .C(n54), .CIX(n52), .D(n55), .CO(n49), 
        .COX(n48), .S(n50) );
  FA1D0 U31 ( .A(n92), .B(n114), .CI(n99), .CO(n51), .S(n52) );
  HA1D0 U32 ( .A(n76), .B(n84), .CO(n53), .S(n54) );
  CMPE42D1 U33 ( .A(n100), .B(n115), .C(n107), .CIX(n59), .D(n62), .CO(n56), 
        .COX(n55), .S(n57) );
  HA1D0 U34 ( .A(n85), .B(n93), .CO(n58), .S(n59) );
  FA1D0 U35 ( .A(n108), .B(n116), .CI(n63), .CO(n60), .S(n61) );
  HA1D0 U36 ( .A(n94), .B(n101), .CO(n62), .S(n63) );
  FA1D0 U37 ( .A(n102), .B(n117), .CI(n109), .CO(n64), .S(n65) );
  HA1D0 U38 ( .A(n110), .B(n118), .CO(n66), .S(n67) );
  INVD1 U111 ( .I(a[8]), .ZN(n176) );
  INVD1 U112 ( .I(a[7]), .ZN(n177) );
  INVD1 U113 ( .I(a[6]), .ZN(n178) );
  INVD1 U114 ( .I(a[4]), .ZN(n180) );
  INVD1 U115 ( .I(a[5]), .ZN(n179) );
  INVD1 U116 ( .I(a[3]), .ZN(n181) );
  INVD1 U117 ( .I(a[2]), .ZN(n182) );
  INVD1 U118 ( .I(a[1]), .ZN(n183) );
  INVD1 U119 ( .I(a[0]), .ZN(n184) );
  INVD1 U120 ( .I(b[1]), .ZN(n187) );
  INVD1 U121 ( .I(b[6]), .ZN(n185) );
  INVD1 U122 ( .I(b[3]), .ZN(n188) );
  INVD1 U123 ( .I(b[5]), .ZN(n186) );
  INVD1 U124 ( .I(b[7]), .ZN(n175) );
  NR2D0 U125 ( .A1(n184), .A2(n185), .ZN(product[0]) );
  NR2D0 U126 ( .A1(n180), .A2(n188), .ZN(n99) );
  NR2D0 U127 ( .A1(n188), .A2(n179), .ZN(n98) );
  NR2D0 U128 ( .A1(n188), .A2(n178), .ZN(n97) );
  NR2D0 U129 ( .A1(n188), .A2(n177), .ZN(n96) );
  NR2D0 U130 ( .A1(n188), .A2(n176), .ZN(n95) );
  NR2D0 U131 ( .A1(n184), .A2(n186), .ZN(n94) );
  NR2D0 U132 ( .A1(n186), .A2(n183), .ZN(n93) );
  NR2D0 U133 ( .A1(n186), .A2(n182), .ZN(n92) );
  NR2D0 U134 ( .A1(n186), .A2(n181), .ZN(n91) );
  NR2D0 U135 ( .A1(n180), .A2(n186), .ZN(n90) );
  NR2D0 U136 ( .A1(n179), .A2(n186), .ZN(n89) );
  NR2D0 U137 ( .A1(n178), .A2(n186), .ZN(n88) );
  NR2D0 U138 ( .A1(n177), .A2(n186), .ZN(n87) );
  NR2D0 U139 ( .A1(n176), .A2(n186), .ZN(n86) );
  NR2D0 U140 ( .A1(n184), .A2(n185), .ZN(n85) );
  NR2D0 U141 ( .A1(n183), .A2(n185), .ZN(n84) );
  NR2D0 U142 ( .A1(n182), .A2(n185), .ZN(n83) );
  NR2D0 U143 ( .A1(n181), .A2(n185), .ZN(n82) );
  NR2D0 U144 ( .A1(n180), .A2(n185), .ZN(n81) );
  NR2D0 U145 ( .A1(n179), .A2(n185), .ZN(n80) );
  NR2D0 U146 ( .A1(n178), .A2(n185), .ZN(n79) );
  NR2D0 U147 ( .A1(n177), .A2(n185), .ZN(n78) );
  NR2D0 U148 ( .A1(n176), .A2(n185), .ZN(n77) );
  NR2D0 U149 ( .A1(n184), .A2(n175), .ZN(n76) );
  NR2D0 U150 ( .A1(n183), .A2(n175), .ZN(n75) );
  NR2D0 U151 ( .A1(n182), .A2(n175), .ZN(n74) );
  NR2D0 U152 ( .A1(n181), .A2(n175), .ZN(n73) );
  NR2D0 U153 ( .A1(n180), .A2(n175), .ZN(n72) );
  NR2D0 U154 ( .A1(n179), .A2(n175), .ZN(n71) );
  NR2D0 U155 ( .A1(n178), .A2(n175), .ZN(n70) );
  NR2D0 U156 ( .A1(n177), .A2(n175), .ZN(n69) );
  NR2D0 U157 ( .A1(n176), .A2(n175), .ZN(n68) );
  NR2D0 U158 ( .A1(n185), .A2(n183), .ZN(n120) );
  NR2D0 U159 ( .A1(n185), .A2(n182), .ZN(n119) );
  NR2D0 U160 ( .A1(n185), .A2(n181), .ZN(n118) );
  NR2D0 U161 ( .A1(n185), .A2(n180), .ZN(n117) );
  NR2D0 U162 ( .A1(n185), .A2(n179), .ZN(n116) );
  NR2D0 U163 ( .A1(n185), .A2(n178), .ZN(n115) );
  NR2D0 U164 ( .A1(n185), .A2(n177), .ZN(n114) );
  NR2D0 U165 ( .A1(n185), .A2(n176), .ZN(n113) );
  NR2D0 U166 ( .A1(n184), .A2(n187), .ZN(n112) );
  NR2D0 U167 ( .A1(n183), .A2(n187), .ZN(n111) );
  NR2D0 U168 ( .A1(n182), .A2(n187), .ZN(n110) );
  NR2D0 U169 ( .A1(n181), .A2(n187), .ZN(n109) );
  NR2D0 U170 ( .A1(n180), .A2(n187), .ZN(n108) );
  NR2D0 U171 ( .A1(n179), .A2(n187), .ZN(n107) );
  NR2D0 U172 ( .A1(n178), .A2(n187), .ZN(n106) );
  NR2D0 U173 ( .A1(n177), .A2(n187), .ZN(n105) );
  NR2D0 U174 ( .A1(n176), .A2(n187), .ZN(n104) );
  NR2D0 U175 ( .A1(n184), .A2(n188), .ZN(n103) );
  NR2D0 U176 ( .A1(n188), .A2(n183), .ZN(n102) );
  NR2D0 U177 ( .A1(n188), .A2(n182), .ZN(n101) );
  NR2D0 U178 ( .A1(n188), .A2(n181), .ZN(n100) );
endmodule


module oadm_fixed_divmul_root_opt_2_16_12_16_8_cb_88_61_49_DW_mult_tc_1 ( a, b, 
        product );
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


module oadm_fixed_divmul_root_opt_2_16_12_16_8_cb_88_61_49_DW_mult_tc_0 ( a, b, 
        product );
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


module oadm_fixed_divmul_root_opt_2_16_12_16_8_cb_88_61_49_DW_mult_uns_0 ( a, 
        b, product );
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


module oadm_fixed_divmul_root_opt_2_16_12_16_8_cb_88_61_49 ( x, y, divide_mode, 
        result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  input divide_mode;
  wire   x_residual_20_, y_residual_20_, N30, N31, N32, N33, N34, N35, N36,
         N37, N38, N39, N40, N41, N42, N43, N44, N55, N56, N57, N58, N59, N60,
         N61, N62, N63, N64, N65, N66, N67, N69, coefficient_5_, coefficient_3,
         coefficient_1, coefficient_0, n350, n370, n380, n390, n53, n54, n550,
         n560, n570, n580, n590, n600, n610, n620, n630, n650, n660, n670, n68,
         n690, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, N99,
         N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N127,
         N126, N125, N124, N123, N122, N121, N114, N113, N112, N102, N101,
         N100, add_77_carry_3_, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n17, n18, n19, n20, n21, n22, n25, n28, n29, n310,
         n330, n340, n400, n410, n420, n430, n440, n45, n46, n47, n48, n49,
         n50, n51, n84;
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
  wire   [16:0] reduced_scale_product;
  wire   [22:7] normalized_fraction;
  wire   [2:0] exponent_adjust;
  wire   [24:11] add_0_root_add_0_root_add_80_3_carry;
  wire   [24:11] add_1_root_add_0_root_add_80_3_carry;
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

  OR2D1 U96 ( .A1(y_midpoint[2]), .A2(coefficient_1), .Z(coefficient_3) );
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
  oadm_fixed_divmul_root_opt_2_16_12_16_8_cb_88_61_49_DW_mult_uns_1 mult_113 ( 
        .a(plane_value[24:16]), .b({n310, coefficient_0, coefficient_5_, n2, 
        coefficient_3, n2, coefficient_1, coefficient_0}), .product(
        reduced_scale_product) );
  oadm_fixed_divmul_root_opt_2_16_12_16_8_cb_88_61_49_DW_mult_tc_1 mult_61 ( 
        .a({x_residual_20_, x_mantissa[19:16], x_shared_residual}), .b({n2, n1, 
        y_midpoint, n1, n2}), .product({x_product, SYNOPSYS_UNCONNECTED__31})
         );
  oadm_fixed_divmul_root_opt_2_16_12_16_8_cb_88_61_49_DW_mult_tc_0 mult_63 ( 
        .a({y_residual_20_, y_mantissa[19:16], y_shared_residual}), .b({n2, n1, 
        x_midpoint, n1, n2}), .product({y_product, N30, 
        SYNOPSYS_UNCONNECTED__32}) );
  oadm_fixed_divmul_root_opt_2_16_12_16_8_cb_88_61_49_DW_mult_uns_0 mult_74 ( 
        .a({n1, x_midpoint, n1, n2}), .b({n1, y_midpoint, n1, n2}), .product({
        N127, N126, N125, N124, N123, N122, N121, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35}) );
  TIEH U3 ( .Z(n1) );
  TIEL U4 ( .ZN(n2) );
  AO22D0 U5 ( .A1(n29), .A2(y_product[14]), .B1(N44), .B2(divide_mode), .Z(N69) );
  AN2XD1 U6 ( .A1(x_product[1]), .A2(N112), .Z(n3) );
  AN2XD1 U7 ( .A1(N87), .A2(N30), .Z(n4) );
  ND2D1 U9 ( .A1(n580), .A2(n560), .ZN(exponent_adjust[2]) );
  AN2XD1 U10 ( .A1(n8), .A2(n49), .Z(n6) );
  AN2XD1 U12 ( .A1(n6), .A2(n50), .Z(n7) );
  AN2XD1 U13 ( .A1(n9), .A2(n48), .Z(n8) );
  AN2XD1 U14 ( .A1(n10), .A2(n47), .Z(n9) );
  AN2XD1 U15 ( .A1(n11), .A2(n46), .Z(n10) );
  AN2XD1 U16 ( .A1(n12), .A2(n45), .Z(n11) );
  AN2XD1 U17 ( .A1(n13), .A2(n440), .Z(n12) );
  AN2XD1 U18 ( .A1(n14), .A2(n430), .Z(n13) );
  AN2XD1 U19 ( .A1(n15), .A2(n420), .Z(n14) );
  AN2XD1 U20 ( .A1(n20), .A2(n410), .Z(n15) );
  IND3D1 U21 ( .A1(n53), .B1(n54), .B2(n28), .ZN(n580) );
  INVD1 U22 ( .I(y_product[13]), .ZN(n50) );
  INVD1 U23 ( .I(y_product[12]), .ZN(n49) );
  FA1D0 U24 ( .A(N124), .B(x_product[13]), .CI(
        add_1_root_add_0_root_add_80_3_carry[21]), .CO(
        add_1_root_add_0_root_add_80_3_carry[22]), .S(N99) );
  XOR3D1 U25 ( .A1(N102), .A2(N69), .A3(
        add_0_root_add_0_root_add_80_3_carry[24]), .Z(plane_value[24]) );
  XOR3D1 U26 ( .A1(N127), .A2(x_product[14]), .A3(
        add_1_root_add_0_root_add_80_3_carry[24]), .Z(N102) );
  FA1D0 U27 ( .A(N101), .B(N69), .CI(add_0_root_add_0_root_add_80_3_carry[23]), 
        .CO(add_0_root_add_0_root_add_80_3_carry[24]), .S(plane_value[23]) );
  INVD1 U28 ( .I(y_product[11]), .ZN(n48) );
  FA1D0 U29 ( .A(N123), .B(x_product[12]), .CI(
        add_1_root_add_0_root_add_80_3_carry[20]), .CO(
        add_1_root_add_0_root_add_80_3_carry[21]), .S(N98) );
  ND3D1 U30 ( .A1(n54), .A2(n53), .A3(n28), .ZN(n560) );
  INVD1 U31 ( .I(y_product[10]), .ZN(n47) );
  FA1D0 U32 ( .A(N125), .B(x_product[14]), .CI(
        add_1_root_add_0_root_add_80_3_carry[22]), .CO(
        add_1_root_add_0_root_add_80_3_carry[23]), .S(N100) );
  FA1D0 U33 ( .A(N126), .B(x_product[14]), .CI(
        add_1_root_add_0_root_add_80_3_carry[23]), .CO(
        add_1_root_add_0_root_add_80_3_carry[24]), .S(N101) );
  INVD1 U34 ( .I(y_product[9]), .ZN(n46) );
  INVD1 U35 ( .I(y_product[8]), .ZN(n45) );
  INVD1 U36 ( .I(y_product[7]), .ZN(n440) );
  ND2D1 U37 ( .A1(n28), .A2(n580), .ZN(exponent_adjust[0]) );
  INVD1 U38 ( .I(y_product[6]), .ZN(n430) );
  INVD1 U39 ( .I(y_product[5]), .ZN(n420) );
  INVD1 U40 ( .I(y_product[4]), .ZN(n410) );
  AN2XD1 U43 ( .A1(n19), .A2(x_product[7]), .Z(n17) );
  AN2XD1 U44 ( .A1(add_1_root_add_0_root_add_80_3_carry[13]), .A2(x_product[5]), .Z(n18) );
  AN2XD1 U45 ( .A1(n18), .A2(x_product[6]), .Z(n19) );
  AN2XD1 U46 ( .A1(n21), .A2(n400), .Z(n20) );
  OAI221D0 U48 ( .A1(n70), .A2(n5), .B1(n28), .B2(n68), .C(n73), .ZN(
        normalized_fraction[15]) );
  OA22D0 U49 ( .A1(n560), .A2(n74), .B1(n580), .B2(n72), .Z(n73) );
  OAI221D0 U50 ( .A1(n68), .A2(n5), .B1(n28), .B2(n660), .C(n71), .ZN(
        normalized_fraction[16]) );
  OA22D0 U51 ( .A1(n560), .A2(n72), .B1(n580), .B2(n70), .Z(n71) );
  OAI221D0 U52 ( .A1(n660), .A2(n5), .B1(n28), .B2(n630), .C(n690), .ZN(
        normalized_fraction[17]) );
  OA22D0 U53 ( .A1(n560), .A2(n70), .B1(n580), .B2(n68), .Z(n690) );
  OAI221D0 U54 ( .A1(n78), .A2(n5), .B1(n28), .B2(n76), .C(n80), .ZN(
        normalized_fraction[11]) );
  OA22D0 U55 ( .A1(n560), .A2(n350), .B1(n580), .B2(n370), .Z(n80) );
  OAI221D0 U56 ( .A1(n76), .A2(n5), .B1(n28), .B2(n74), .C(n79), .ZN(
        normalized_fraction[12]) );
  OA22D0 U57 ( .A1(n560), .A2(n370), .B1(n580), .B2(n78), .Z(n79) );
  OAI221D0 U58 ( .A1(n74), .A2(n5), .B1(n28), .B2(n72), .C(n77), .ZN(
        normalized_fraction[13]) );
  OA22D0 U59 ( .A1(n560), .A2(n78), .B1(n580), .B2(n76), .Z(n77) );
  OAI221D0 U60 ( .A1(n72), .A2(n5), .B1(n28), .B2(n70), .C(n75), .ZN(
        normalized_fraction[14]) );
  OA22D0 U61 ( .A1(n560), .A2(n76), .B1(n580), .B2(n74), .Z(n75) );
  OAI221D0 U62 ( .A1(n53), .A2(n5), .B1(n28), .B2(n54), .C(n550), .ZN(
        normalized_fraction[22]) );
  OA22D0 U63 ( .A1(n560), .A2(n570), .B1(n580), .B2(n590), .Z(n550) );
  OAI221D0 U64 ( .A1(n590), .A2(n5), .B1(n28), .B2(n53), .C(n600), .ZN(
        normalized_fraction[21]) );
  OA22D0 U65 ( .A1(n560), .A2(n610), .B1(n580), .B2(n570), .Z(n600) );
  OAI221D0 U66 ( .A1(n630), .A2(n5), .B1(n28), .B2(n610), .C(n670), .ZN(
        normalized_fraction[18]) );
  OA22D0 U67 ( .A1(n560), .A2(n68), .B1(n580), .B2(n660), .Z(n670) );
  OAI221D0 U68 ( .A1(n610), .A2(n5), .B1(n28), .B2(n570), .C(n650), .ZN(
        normalized_fraction[19]) );
  OA22D0 U69 ( .A1(n560), .A2(n660), .B1(n580), .B2(n630), .Z(n650) );
  OAI221D0 U70 ( .A1(n570), .A2(n5), .B1(n28), .B2(n590), .C(n620), .ZN(
        normalized_fraction[20]) );
  OA22D0 U71 ( .A1(n560), .A2(n630), .B1(n580), .B2(n610), .Z(n620) );
  OAI221D0 U73 ( .A1(n370), .A2(n5), .B1(n28), .B2(n78), .C(n81), .ZN(
        normalized_fraction[10]) );
  OAI221D0 U76 ( .A1(n350), .A2(n5), .B1(n28), .B2(n370), .C(n380), .ZN(
        normalized_fraction[9]) );
  OAI22D1 U79 ( .A1(n390), .A2(n5), .B1(n28), .B2(n350), .ZN(
        normalized_fraction[8]) );
  NR2D1 U80 ( .A1(n28), .A2(n390), .ZN(normalized_fraction[7]) );
  AOI22D1 U83 ( .A1(reduced_scale_product[15]), .A2(divide_mode), .B1(
        plane_value[23]), .B2(n29), .ZN(n54) );
  FA1D0 U84 ( .A(N100), .B(N67), .CI(add_0_root_add_0_root_add_80_3_carry[22]), 
        .CO(add_0_root_add_0_root_add_80_3_carry[23]), .S(plane_value[22]) );
  AO22D0 U85 ( .A1(n29), .A2(y_product[14]), .B1(N43), .B2(divide_mode), .Z(
        N67) );
  FA1D0 U86 ( .A(N99), .B(N66), .CI(add_0_root_add_0_root_add_80_3_carry[21]), 
        .CO(add_0_root_add_0_root_add_80_3_carry[22]), .S(plane_value[21]) );
  AO22D0 U87 ( .A1(y_product[13]), .A2(n29), .B1(N42), .B2(divide_mode), .Z(
        N66) );
  FA1D0 U88 ( .A(N98), .B(N65), .CI(add_0_root_add_0_root_add_80_3_carry[20]), 
        .CO(add_0_root_add_0_root_add_80_3_carry[21]), .S(plane_value[20]) );
  AO22D0 U89 ( .A1(y_product[12]), .A2(n29), .B1(N41), .B2(divide_mode), .Z(
        N65) );
  FA1D0 U92 ( .A(N97), .B(N64), .CI(add_0_root_add_0_root_add_80_3_carry[19]), 
        .CO(add_0_root_add_0_root_add_80_3_carry[20]), .S(plane_value[19]) );
  AO22D0 U93 ( .A1(y_product[11]), .A2(n29), .B1(N40), .B2(divide_mode), .Z(
        N64) );
  FA1D0 U94 ( .A(N96), .B(N63), .CI(add_0_root_add_0_root_add_80_3_carry[18]), 
        .CO(add_0_root_add_0_root_add_80_3_carry[19]), .S(plane_value[18]) );
  AO22D0 U95 ( .A1(y_product[10]), .A2(n29), .B1(N39), .B2(divide_mode), .Z(
        N63) );
  FA1D0 U97 ( .A(N122), .B(x_product[11]), .CI(
        add_1_root_add_0_root_add_80_3_carry[19]), .CO(
        add_1_root_add_0_root_add_80_3_carry[20]), .S(N97) );
  FA1D0 U98 ( .A(N95), .B(N62), .CI(add_0_root_add_0_root_add_80_3_carry[17]), 
        .CO(add_0_root_add_0_root_add_80_3_carry[18]), .S(plane_value[17]) );
  AO22D0 U99 ( .A1(y_product[9]), .A2(n29), .B1(N38), .B2(divide_mode), .Z(N62) );
  FA1D0 U102 ( .A(N94), .B(N61), .CI(add_0_root_add_0_root_add_80_3_carry[16]), 
        .CO(add_0_root_add_0_root_add_80_3_carry[17]), .S(plane_value[16]) );
  AO22D0 U103 ( .A1(y_product[8]), .A2(n29), .B1(N37), .B2(divide_mode), .Z(
        N61) );
  AOI22D1 U104 ( .A1(reduced_scale_product[14]), .A2(divide_mode), .B1(
        plane_value[22]), .B2(n29), .ZN(n53) );
  FA1D0 U105 ( .A(N93), .B(N60), .CI(add_0_root_add_0_root_add_80_3_carry[15]), 
        .CO(add_0_root_add_0_root_add_80_3_carry[16]), .S(plane_value[15]) );
  AO22D0 U106 ( .A1(y_product[7]), .A2(n29), .B1(N36), .B2(divide_mode), .Z(
        N60) );
  FA1D0 U107 ( .A(N92), .B(N59), .CI(add_0_root_add_0_root_add_80_3_carry[14]), 
        .CO(add_0_root_add_0_root_add_80_3_carry[15]), .S(plane_value[14]) );
  AO22D0 U108 ( .A1(y_product[6]), .A2(n29), .B1(N35), .B2(divide_mode), .Z(
        N59) );
  FA1D0 U109 ( .A(N91), .B(N58), .CI(add_0_root_add_0_root_add_80_3_carry[13]), 
        .CO(add_0_root_add_0_root_add_80_3_carry[14]), .S(plane_value[13]) );
  AO22D0 U110 ( .A1(y_product[5]), .A2(n29), .B1(N34), .B2(divide_mode), .Z(
        N58) );
  FA1D0 U111 ( .A(N90), .B(N57), .CI(add_0_root_add_0_root_add_80_3_carry[12]), 
        .CO(add_0_root_add_0_root_add_80_3_carry[13]), .S(plane_value[12]) );
  AO22D0 U112 ( .A1(y_product[4]), .A2(n29), .B1(N33), .B2(divide_mode), .Z(
        N57) );
  FA1D0 U113 ( .A(n29), .B(x_product[4]), .CI(
        add_1_root_add_0_root_add_80_3_carry[12]), .CO(
        add_1_root_add_0_root_add_80_3_carry[13]), .S(N90) );
  FA1D0 U114 ( .A(N89), .B(N56), .CI(add_0_root_add_0_root_add_80_3_carry[11]), 
        .CO(add_0_root_add_0_root_add_80_3_carry[12]), .S(plane_value[11]) );
  AO22D0 U115 ( .A1(y_product[3]), .A2(n29), .B1(N32), .B2(divide_mode), .Z(
        N56) );
  INVD1 U116 ( .I(y_product[3]), .ZN(n400) );
  FA1D0 U117 ( .A(N114), .B(x_product[3]), .CI(
        add_1_root_add_0_root_add_80_3_carry[11]), .CO(
        add_1_root_add_0_root_add_80_3_carry[12]), .S(N89) );
  INR2D1 U118 ( .A1(midpoint_sum[4]), .B1(divide_mode), .ZN(N114) );
  FA1D0 U119 ( .A(N88), .B(N55), .CI(n4), .CO(
        add_0_root_add_0_root_add_80_3_carry[11]), .S(plane_value[10]) );
  AO22D0 U120 ( .A1(y_product[2]), .A2(n29), .B1(N31), .B2(divide_mode), .Z(
        N55) );
  FA1D0 U122 ( .A(N113), .B(x_product[2]), .CI(n3), .CO(
        add_1_root_add_0_root_add_80_3_carry[11]), .S(N88) );
  INR2D1 U123 ( .A1(midpoint_sum[3]), .B1(divide_mode), .ZN(N113) );
  AOI22D1 U125 ( .A1(reduced_scale_product[13]), .A2(divide_mode), .B1(
        plane_value[21]), .B2(n29), .ZN(n590) );
  AOI22D1 U126 ( .A1(reduced_scale_product[12]), .A2(divide_mode), .B1(
        plane_value[20]), .B2(n29), .ZN(n570) );
  AOI22D1 U127 ( .A1(reduced_scale_product[11]), .A2(divide_mode), .B1(
        plane_value[19]), .B2(n29), .ZN(n610) );
  AOI22D1 U128 ( .A1(reduced_scale_product[10]), .A2(divide_mode), .B1(
        plane_value[18]), .B2(n29), .ZN(n630) );
  AOI22D1 U129 ( .A1(reduced_scale_product[9]), .A2(divide_mode), .B1(
        plane_value[17]), .B2(n29), .ZN(n660) );
  AOI22D1 U130 ( .A1(reduced_scale_product[8]), .A2(divide_mode), .B1(
        plane_value[16]), .B2(n29), .ZN(n68) );
  AOI22D1 U131 ( .A1(reduced_scale_product[7]), .A2(divide_mode), .B1(
        plane_value[15]), .B2(n29), .ZN(n70) );
  AOI22D1 U132 ( .A1(reduced_scale_product[6]), .A2(divide_mode), .B1(
        plane_value[14]), .B2(n29), .ZN(n72) );
  AOI22D1 U133 ( .A1(reduced_scale_product[5]), .A2(divide_mode), .B1(
        plane_value[13]), .B2(n29), .ZN(n74) );
  AOI22D1 U134 ( .A1(reduced_scale_product[4]), .A2(divide_mode), .B1(
        plane_value[12]), .B2(n29), .ZN(n76) );
  AOI22D1 U135 ( .A1(reduced_scale_product[3]), .A2(divide_mode), .B1(
        plane_value[11]), .B2(n29), .ZN(n78) );
  AOI22D1 U136 ( .A1(reduced_scale_product[2]), .A2(divide_mode), .B1(
        plane_value[10]), .B2(n29), .ZN(n370) );
  AOI22D1 U137 ( .A1(reduced_scale_product[1]), .A2(divide_mode), .B1(
        plane_value[9]), .B2(n29), .ZN(n350) );
  ND2D1 U138 ( .A1(reduced_scale_product[0]), .A2(divide_mode), .ZN(n390) );
  FA1D0 U140 ( .A(N121), .B(x_product[10]), .CI(
        add_1_root_add_0_root_add_80_3_carry[18]), .CO(
        add_1_root_add_0_root_add_80_3_carry[19]), .S(N96) );
  FA1D0 U143 ( .A(x_midpoint[3]), .B(y_midpoint[3]), .CI(add_77_carry_3_), 
        .CO(midpoint_sum[4]), .S(midpoint_sum[3]) );
  NR2D1 U147 ( .A1(n22), .A2(divide_mode), .ZN(N112) );
  CKXOR2D1 U148 ( .A1(y_midpoint[2]), .A2(x_midpoint[2]), .Z(n22) );
  NR2D1 U149 ( .A1(y_midpoint[2]), .A2(y_midpoint[3]), .ZN(coefficient_1) );
  IND2D1 U150 ( .A1(coefficient_1), .B1(n310), .ZN(coefficient_0) );
  NR2D1 U151 ( .A1(y_midpoint[2]), .A2(n310), .ZN(coefficient_5_) );
  INR2D1 U153 ( .A1(y_mantissa[13]), .B1(divide_mode), .ZN(
        y_shared_residual[1]) );
  INR2D1 U156 ( .A1(y_mantissa[12]), .B1(divide_mode), .ZN(
        y_shared_residual[0]) );
  INR2D1 U157 ( .A1(x_mantissa[13]), .B1(divide_mode), .ZN(
        x_shared_residual[1]) );
  INR2D1 U158 ( .A1(x_mantissa[12]), .B1(divide_mode), .ZN(
        x_shared_residual[0]) );
  INR2D1 U159 ( .A1(y_mantissa[14]), .B1(divide_mode), .ZN(
        y_shared_residual[2]) );
  INR2D1 U160 ( .A1(x_mantissa[14]), .B1(divide_mode), .ZN(
        x_shared_residual[2]) );
  INR2D1 U161 ( .A1(y_mantissa[15]), .B1(divide_mode), .ZN(
        y_shared_residual[3]) );
  INR2D1 U162 ( .A1(x_mantissa[15]), .B1(divide_mode), .ZN(
        x_shared_residual[3]) );
  INVD1 U163 ( .I(y_mantissa[20]), .ZN(y_residual_20_) );
  INVD1 U164 ( .I(x_mantissa[20]), .ZN(x_residual_20_) );
  CKXOR2D1 U166 ( .A1(n330), .A2(n340), .Z(N31) );
  CKXOR2D1 U167 ( .A1(n21), .A2(n400), .Z(N32) );
  CKXOR2D1 U168 ( .A1(n20), .A2(n410), .Z(N33) );
  CKXOR2D1 U169 ( .A1(n15), .A2(n420), .Z(N34) );
  CKXOR2D1 U170 ( .A1(n14), .A2(n430), .Z(N35) );
  CKXOR2D1 U171 ( .A1(n13), .A2(n440), .Z(N36) );
  CKXOR2D1 U172 ( .A1(n12), .A2(n45), .Z(N37) );
  CKXOR2D1 U173 ( .A1(n11), .A2(n46), .Z(N38) );
  CKXOR2D1 U174 ( .A1(n10), .A2(n47), .Z(N39) );
  CKXOR2D1 U175 ( .A1(n9), .A2(n48), .Z(N40) );
  CKXOR2D1 U176 ( .A1(n8), .A2(n49), .Z(N41) );
  CKXOR2D1 U177 ( .A1(n6), .A2(n50), .Z(N42) );
  CKXOR2D1 U178 ( .A1(n7), .A2(n51), .Z(N43) );
  CKXOR2D1 U179 ( .A1(N30), .A2(N87), .Z(plane_value[9]) );
  CKXOR2D1 U180 ( .A1(x_product[1]), .A2(N112), .Z(N87) );
  CKXOR2D1 U181 ( .A1(add_1_root_add_0_root_add_80_3_carry[13]), .A2(
        x_product[5]), .Z(N91) );
  CKXOR2D1 U182 ( .A1(n19), .A2(x_product[7]), .Z(N93) );
  CKXOR2D1 U183 ( .A1(n17), .A2(x_product[8]), .Z(N94) );
  CKXOR2D1 U184 ( .A1(n18), .A2(x_product[6]), .Z(N92) );
  OR2D1 U8 ( .A1(n580), .A2(n390), .Z(n380) );
  CKND0 U11 ( .I(n54), .ZN(n84) );
  CKND2D0 U41 ( .A1(n28), .A2(n84), .ZN(n5) );
  OA22D1 U42 ( .A1(n560), .A2(n390), .B1(n580), .B2(n350), .Z(n81) );
  AOI22D1 U47 ( .A1(divide_mode), .A2(reduced_scale_product[16]), .B1(n29), 
        .B2(plane_value[24]), .ZN(n28) );
  CKND0 U72 ( .I(y_product[14]), .ZN(n51) );
  NR2D0 U74 ( .A1(y_product[14]), .A2(n7), .ZN(N44) );
  IND2D0 U75 ( .A1(x_product[9]), .B1(n25), .ZN(
        add_1_root_add_0_root_add_80_3_carry[18]) );
  CKND2D0 U77 ( .A1(x_product[8]), .A2(n17), .ZN(n25) );
  CKXOR2D0 U78 ( .A1(x_product[9]), .A2(n25), .Z(N95) );
  CKND1 U81 ( .I(divide_mode), .ZN(n29) );
  CKND0 U82 ( .I(N30), .ZN(n330) );
  CKND0 U90 ( .I(y_product[2]), .ZN(n340) );
  NR2D0 U91 ( .A1(N30), .A2(y_product[2]), .ZN(n21) );
  OR2D0 U100 ( .A1(x_midpoint[2]), .A2(y_midpoint[2]), .Z(add_77_carry_3_) );
  CKND0 U101 ( .I(y_midpoint[3]), .ZN(n310) );
endmodule


module oadm_fixed_l2_divmul_root_opt ( x, y, divide_mode, result );
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

  oadm_fixed_divmul_root_opt_2_16_12_16_8_cb_88_61_49 implementation ( .x({
        x[31:12], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .y({y[31:12], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .divide_mode(n3), .result({
        result[31:7], SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6}) );
  CKBD1 U2 ( .I(divide_mode), .Z(n3) );
endmodule

