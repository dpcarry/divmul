/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Thu Sep  3 21:15:30 2026
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
         N12, N11, N10, n1, n2, n35, n410, n51, n60, n70, n77, n79, n80;
  wire   [7:2] add_0_root_add_0_root_add_22_2_carry;
  wire   [7:2] add_0_root_add_0_root_add_25_2_carry;

  CKXOR2D1 U2 ( .A1(y[31]), .A2(x[31]), .Z(result[31]) );
  fp32_normal_finite_wrapper_DW01_add_3_DW01_add_9 add_1_root_add_0_root_add_25_2 ( 
        .A(x[30:23]), .B({N42, N41, N40, N39, N38, N37, N36, N11}), .CI(n80), 
        .SUM({N34, N33, N32, N31, N30, N29, N28, N27}) );
  fp32_normal_finite_wrapper_DW01_add_1_DW01_add_7 add_1_root_add_0_root_add_22_2 ( 
        .A(x[30:23]), .B({y[30], N17, N16, N15, N14, N13, N12, N11}), .CI(n80), 
        .SUM({N10, N9, N8, N7, N6, N5, N4, N3}) );
  AN2XD1 U3 ( .A1(exponent_adjust[0]), .A2(N3), .Z(n1) );
  AN2XD1 U4 ( .A1(exponent_adjust[0]), .A2(N27), .Z(n2) );
  INVD1 U5 ( .I(divide_mode), .ZN(n79) );
  CKBD1 U6 ( .I(result_fraction[22]), .Z(result[22]) );
  CKBD1 U7 ( .I(result_fraction[21]), .Z(result[21]) );
  CKBD1 U8 ( .I(result_fraction[3]), .Z(result[3]) );
  CKBD1 U9 ( .I(result_fraction[6]), .Z(result[6]) );
  CKBD1 U10 ( .I(result_fraction[9]), .Z(result[9]) );
  CKBD1 U11 ( .I(result_fraction[11]), .Z(result[11]) );
  CKBD1 U12 ( .I(result_fraction[12]), .Z(result[12]) );
  CKBD1 U13 ( .I(result_fraction[14]), .Z(result[14]) );
  CKBD1 U14 ( .I(result_fraction[17]), .Z(result[17]) );
  CKBD1 U15 ( .I(result_fraction[20]), .Z(result[20]) );
  CKBD1 U16 ( .I(result_fraction[4]), .Z(result[4]) );
  CKBD1 U17 ( .I(result_fraction[5]), .Z(result[5]) );
  CKBD1 U18 ( .I(result_fraction[7]), .Z(result[7]) );
  CKBD1 U19 ( .I(result_fraction[8]), .Z(result[8]) );
  CKBD1 U20 ( .I(result_fraction[10]), .Z(result[10]) );
  CKBD1 U21 ( .I(result_fraction[13]), .Z(result[13]) );
  CKBD1 U22 ( .I(result_fraction[15]), .Z(result[15]) );
  CKBD1 U23 ( .I(result_fraction[16]), .Z(result[16]) );
  CKBD1 U24 ( .I(result_fraction[18]), .Z(result[18]) );
  CKBD1 U25 ( .I(result_fraction[19]), .Z(result[19]) );
  CKBD1 U26 ( .I(result_fraction[2]), .Z(result[2]) );
  CKBD1 U27 ( .I(result_fraction[1]), .Z(result[1]) );
  CKBD1 U28 ( .I(result_fraction[0]), .Z(result[0]) );
  AO22D0 U30 ( .A1(N49), .A2(n79), .B1(N25), .B2(divide_mode), .Z(result[29])
         );
  AO22D0 U31 ( .A1(N48), .A2(n79), .B1(N24), .B2(divide_mode), .Z(result[28])
         );
  AO22D0 U32 ( .A1(N47), .A2(n79), .B1(N23), .B2(divide_mode), .Z(result[27])
         );
  AO22D0 U33 ( .A1(N46), .A2(n79), .B1(N22), .B2(divide_mode), .Z(result[26])
         );
  AO22D0 U34 ( .A1(N45), .A2(n79), .B1(N21), .B2(divide_mode), .Z(result[25])
         );
  AO22D0 U35 ( .A1(N44), .A2(n79), .B1(N20), .B2(divide_mode), .Z(result[24])
         );
  FA1D0 U36 ( .A(N4), .B(exponent_adjust[1]), .CI(n1), .CO(
        add_0_root_add_0_root_add_22_2_carry[2]), .S(N20) );
  FA1D0 U37 ( .A(N5), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[2]), .CO(
        add_0_root_add_0_root_add_22_2_carry[3]), .S(N21) );
  FA1D0 U38 ( .A(N6), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[3]), .CO(
        add_0_root_add_0_root_add_22_2_carry[4]), .S(N22) );
  FA1D0 U39 ( .A(N7), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[4]), .CO(
        add_0_root_add_0_root_add_22_2_carry[5]), .S(N23) );
  FA1D0 U40 ( .A(N8), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[5]), .CO(
        add_0_root_add_0_root_add_22_2_carry[6]), .S(N24) );
  FA1D0 U41 ( .A(N9), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[6]), .CO(
        add_0_root_add_0_root_add_22_2_carry[7]), .S(N25) );
  FA1D0 U42 ( .A(N28), .B(exponent_adjust[1]), .CI(n2), .CO(
        add_0_root_add_0_root_add_25_2_carry[2]), .S(N44) );
  FA1D0 U43 ( .A(N29), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[2]), .CO(
        add_0_root_add_0_root_add_25_2_carry[3]), .S(N45) );
  FA1D0 U44 ( .A(N30), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[3]), .CO(
        add_0_root_add_0_root_add_25_2_carry[4]), .S(N46) );
  FA1D0 U45 ( .A(N31), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[4]), .CO(
        add_0_root_add_0_root_add_25_2_carry[5]), .S(N47) );
  FA1D0 U46 ( .A(N32), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[5]), .CO(
        add_0_root_add_0_root_add_25_2_carry[6]), .S(N48) );
  FA1D0 U47 ( .A(N33), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[6]), .CO(
        add_0_root_add_0_root_add_25_2_carry[7]), .S(N49) );
  AO22D0 U48 ( .A1(N43), .A2(n79), .B1(N19), .B2(divide_mode), .Z(result[23])
         );
  AO22D0 U49 ( .A1(N50), .A2(n79), .B1(divide_mode), .B2(N26), .Z(result[30])
         );
  XOR3D1 U50 ( .A1(N34), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_25_2_carry[7]), .Z(N50) );
  XOR3D1 U51 ( .A1(N10), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_22_2_carry[7]), .Z(N26) );
  CKBD1 U52 ( .I(y[1]), .Z(fraction_y[1]) );
  CKBD1 U53 ( .I(y[2]), .Z(fraction_y[2]) );
  CKBD1 U54 ( .I(y[0]), .Z(fraction_y[0]) );
  CKBD1 U55 ( .I(y[3]), .Z(fraction_y[3]) );
  CKBD1 U56 ( .I(y[4]), .Z(fraction_y[4]) );
  CKBD1 U57 ( .I(y[5]), .Z(fraction_y[5]) );
  CKBD1 U58 ( .I(y[6]), .Z(fraction_y[6]) );
  CKBD1 U59 ( .I(y[7]), .Z(fraction_y[7]) );
  CKBD1 U60 ( .I(y[8]), .Z(fraction_y[8]) );
  CKBD1 U61 ( .I(y[9]), .Z(fraction_y[9]) );
  CKBD1 U62 ( .I(y[10]), .Z(fraction_y[10]) );
  CKBD1 U63 ( .I(y[11]), .Z(fraction_y[11]) );
  CKBD1 U64 ( .I(y[12]), .Z(fraction_y[12]) );
  CKBD1 U65 ( .I(y[13]), .Z(fraction_y[13]) );
  CKBD1 U66 ( .I(y[14]), .Z(fraction_y[14]) );
  CKBD1 U67 ( .I(y[15]), .Z(fraction_y[15]) );
  CKBD1 U68 ( .I(y[16]), .Z(fraction_y[16]) );
  CKBD1 U69 ( .I(y[17]), .Z(fraction_y[17]) );
  CKBD1 U70 ( .I(y[18]), .Z(fraction_y[18]) );
  CKBD1 U71 ( .I(y[19]), .Z(fraction_y[19]) );
  CKBD1 U72 ( .I(y[20]), .Z(fraction_y[20]) );
  CKBD1 U73 ( .I(x[21]), .Z(fraction_x[21]) );
  CKBD1 U74 ( .I(y[21]), .Z(fraction_y[21]) );
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
  CKBD1 U88 ( .I(x[22]), .Z(fraction_x[22]) );
  CKBD1 U89 ( .I(x[20]), .Z(fraction_x[20]) );
  CKBD1 U90 ( .I(x[19]), .Z(fraction_x[19]) );
  CKBD1 U91 ( .I(x[18]), .Z(fraction_x[18]) );
  CKBD1 U92 ( .I(x[17]), .Z(fraction_x[17]) );
  CKBD1 U93 ( .I(x[16]), .Z(fraction_x[16]) );
  CKBD1 U94 ( .I(x[15]), .Z(fraction_x[15]) );
  CKBD1 U95 ( .I(x[14]), .Z(fraction_x[14]) );
  CKBD1 U96 ( .I(x[13]), .Z(fraction_x[13]) );
  CKBD1 U97 ( .I(x[12]), .Z(fraction_x[12]) );
  CKBD1 U98 ( .I(x[11]), .Z(fraction_x[11]) );
  CKBD1 U99 ( .I(x[10]), .Z(fraction_x[10]) );
  CKBD1 U100 ( .I(x[9]), .Z(fraction_x[9]) );
  CKBD1 U101 ( .I(x[8]), .Z(fraction_x[8]) );
  CKBD1 U102 ( .I(x[7]), .Z(fraction_x[7]) );
  CKBD1 U103 ( .I(x[6]), .Z(fraction_x[6]) );
  CKBD1 U104 ( .I(x[5]), .Z(fraction_x[5]) );
  CKBD1 U105 ( .I(x[4]), .Z(fraction_x[4]) );
  CKBD1 U106 ( .I(x[3]), .Z(fraction_x[3]) );
  CKBD1 U107 ( .I(x[2]), .Z(fraction_x[2]) );
  CKBD1 U108 ( .I(x[1]), .Z(fraction_x[1]) );
  CKBD1 U109 ( .I(x[0]), .Z(fraction_x[0]) );
  CKBD1 U110 ( .I(y[22]), .Z(fraction_y[22]) );
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


module oadm_fixed_divmul_correction_chain_LEVEL0_DW_mult_uns_0 ( a, b, product
 );
  input [28:0] a;
  input [5:0] b;
  output [34:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n210, n211, n214, n215, n216;

  FA1D0 U3 ( .A(n32), .B(n33), .CI(n3), .CO(n2), .S(product[30]) );
  FA1D0 U4 ( .A(n35), .B(n34), .CI(n4), .CO(n3), .S(product[29]) );
  FA1D0 U5 ( .A(n37), .B(n36), .CI(n5), .CO(n4), .S(product[28]) );
  FA1D0 U6 ( .A(n39), .B(n38), .CI(n6), .CO(n5), .S(product[27]) );
  FA1D0 U7 ( .A(n41), .B(n40), .CI(n7), .CO(n6), .S(product[26]) );
  FA1D0 U8 ( .A(n43), .B(n42), .CI(n8), .CO(n7), .S(product[25]) );
  FA1D0 U9 ( .A(n45), .B(n44), .CI(n9), .CO(n8), .S(product[24]) );
  FA1D0 U10 ( .A(n47), .B(n46), .CI(n10), .CO(n9), .S(product[23]) );
  FA1D0 U11 ( .A(n49), .B(n48), .CI(n11), .CO(n10), .S(product[22]) );
  FA1D0 U12 ( .A(n51), .B(n50), .CI(n12), .CO(n11), .S(product[21]) );
  FA1D0 U13 ( .A(n53), .B(n52), .CI(n13), .CO(n12), .S(product[20]) );
  FA1D0 U14 ( .A(n55), .B(n54), .CI(n14), .CO(n13), .S(product[19]) );
  FA1D0 U15 ( .A(n57), .B(n56), .CI(n15), .CO(n14), .S(product[18]) );
  FA1D0 U16 ( .A(n59), .B(n58), .CI(n16), .CO(n15), .S(product[17]) );
  FA1D0 U17 ( .A(n61), .B(n60), .CI(n17), .CO(n16), .S(product[16]) );
  FA1D0 U18 ( .A(n63), .B(n62), .CI(n18), .CO(n17), .S(product[15]) );
  FA1D0 U19 ( .A(n65), .B(n64), .CI(n19), .CO(n18), .S(product[14]) );
  FA1D0 U20 ( .A(n67), .B(n66), .CI(n20), .CO(n19), .S(product[13]) );
  FA1D0 U21 ( .A(n69), .B(n68), .CI(n21), .CO(n20), .S(product[12]) );
  FA1D0 U22 ( .A(n71), .B(n70), .CI(n22), .CO(n21), .S(product[11]) );
  FA1D0 U23 ( .A(n73), .B(n72), .CI(n23), .CO(n22), .S(product[10]) );
  FA1D0 U24 ( .A(n75), .B(n74), .CI(n24), .CO(n23), .S(product[9]) );
  FA1D0 U25 ( .A(n77), .B(n76), .CI(n25), .CO(n24), .S(product[8]) );
  FA1D0 U26 ( .A(n78), .B(n79), .CI(n26), .CO(n25), .S(product[7]) );
  FA1D0 U35 ( .A(a[28]), .B(n185), .CI(a[22]), .CO(n35), .S(n36) );
  FA1D0 U36 ( .A(a[27]), .B(n186), .CI(a[21]), .CO(n37), .S(n38) );
  FA1D0 U37 ( .A(a[26]), .B(n187), .CI(a[20]), .CO(n39), .S(n40) );
  FA1D0 U38 ( .A(a[25]), .B(n188), .CI(a[19]), .CO(n41), .S(n42) );
  FA1D0 U39 ( .A(a[24]), .B(n189), .CI(a[18]), .CO(n43), .S(n44) );
  FA1D0 U40 ( .A(a[23]), .B(n190), .CI(a[17]), .CO(n45), .S(n46) );
  FA1D0 U41 ( .A(a[22]), .B(n191), .CI(a[16]), .CO(n47), .S(n48) );
  FA1D0 U42 ( .A(a[21]), .B(n192), .CI(a[15]), .CO(n49), .S(n50) );
  FA1D0 U43 ( .A(a[20]), .B(n193), .CI(a[14]), .CO(n51), .S(n52) );
  FA1D0 U44 ( .A(a[19]), .B(n194), .CI(a[13]), .CO(n53), .S(n54) );
  FA1D0 U45 ( .A(a[18]), .B(n195), .CI(a[12]), .CO(n55), .S(n56) );
  FA1D0 U46 ( .A(a[17]), .B(n196), .CI(a[11]), .CO(n57), .S(n58) );
  FA1D0 U47 ( .A(a[16]), .B(n197), .CI(a[10]), .CO(n59), .S(n60) );
  FA1D0 U48 ( .A(a[15]), .B(n198), .CI(a[9]), .CO(n61), .S(n62) );
  FA1D0 U49 ( .A(a[14]), .B(n199), .CI(a[8]), .CO(n63), .S(n64) );
  FA1D0 U50 ( .A(a[13]), .B(n200), .CI(a[7]), .CO(n65), .S(n66) );
  FA1D0 U51 ( .A(a[12]), .B(n201), .CI(a[6]), .CO(n67), .S(n68) );
  FA1D0 U52 ( .A(a[11]), .B(n202), .CI(a[5]), .CO(n69), .S(n70) );
  FA1D0 U53 ( .A(a[10]), .B(n203), .CI(a[4]), .CO(n71), .S(n72) );
  FA1D0 U54 ( .A(a[9]), .B(n204), .CI(a[3]), .CO(n73), .S(n74) );
  FA1D0 U55 ( .A(a[8]), .B(n206), .CI(a[2]), .CO(n75), .S(n76) );
  FA1D0 U56 ( .A(a[7]), .B(n207), .CI(a[1]), .CO(n77), .S(n78) );
  HA1D0 U57 ( .A(a[6]), .B(n208), .CO(n79), .S(n80) );
  INVD1 U91 ( .I(n80), .ZN(n205) );
  INVD1 U93 ( .I(a[5]), .ZN(n206) );
  INVD1 U94 ( .I(a[6]), .ZN(n204) );
  INVD1 U95 ( .I(a[3]), .ZN(n208) );
  INVD1 U96 ( .I(a[7]), .ZN(n203) );
  INVD1 U97 ( .I(a[8]), .ZN(n202) );
  INVD1 U98 ( .I(a[9]), .ZN(n201) );
  INVD1 U99 ( .I(a[10]), .ZN(n200) );
  INVD1 U100 ( .I(a[11]), .ZN(n199) );
  INVD1 U101 ( .I(a[12]), .ZN(n198) );
  INVD1 U102 ( .I(a[13]), .ZN(n197) );
  INVD1 U103 ( .I(a[14]), .ZN(n196) );
  INVD1 U104 ( .I(a[15]), .ZN(n195) );
  INVD1 U105 ( .I(a[16]), .ZN(n194) );
  INVD1 U106 ( .I(a[17]), .ZN(n193) );
  INVD1 U107 ( .I(a[18]), .ZN(n192) );
  INVD1 U109 ( .I(a[19]), .ZN(n191) );
  INVD1 U110 ( .I(a[20]), .ZN(n190) );
  INVD1 U111 ( .I(a[21]), .ZN(n189) );
  INVD1 U112 ( .I(a[22]), .ZN(n188) );
  INVD1 U113 ( .I(a[23]), .ZN(n187) );
  INVD1 U114 ( .I(a[24]), .ZN(n186) );
  INVD1 U115 ( .I(a[25]), .ZN(n185) );
  INVD1 U118 ( .I(a[0]), .ZN(n210) );
  XOR4D0 U119 ( .A1(n31), .A2(n2), .A3(n185), .A4(a[28]), .Z(product[31]) );
  OAI222D0 U120 ( .A1(n211), .A2(n205), .B1(n211), .B2(n210), .C1(n210), .C2(
        n205), .ZN(n26) );
  INR2D0 U92 ( .A1(a[24]), .B1(a[27]), .ZN(n31) );
  XNR2D0 U108 ( .A1(a[27]), .A2(a[24]), .ZN(n32) );
  INR2D0 U116 ( .A1(a[23]), .B1(a[26]), .ZN(n33) );
  XNR2D0 U117 ( .A1(a[26]), .A2(a[23]), .ZN(n34) );
  MAOI222D0 U121 ( .A(a[5]), .B(n215), .C(n214), .ZN(n211) );
  CKND0 U122 ( .I(a[2]), .ZN(n214) );
  MAOI222D0 U123 ( .A(n216), .B(a[1]), .C(n207), .ZN(n215) );
  CKND0 U124 ( .I(a[4]), .ZN(n207) );
  NR2D0 U125 ( .A1(n210), .A2(a[3]), .ZN(n216) );
endmodule


module oadm_fixed_divmul_correction_chain_LEVEL0_DW01_add_4 ( A, B, CI, SUM, 
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
  FA1D0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1D0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA1D0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1D0 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  FA1D0 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  AN2XD1 U2 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
  XNR2D1 U4 ( .A1(carry[22]), .A2(B[22]), .ZN(SUM[22]) );
  CKXOR2D1 U5 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
  CKND0 U6 ( .I(SUM[24]), .ZN(SUM[23]) );
  OR2D0 U1 ( .A1(B[22]), .A2(carry[22]), .Z(SUM[24]) );
endmodule


module oadm_fixed_divmul_correction_chain_LEVEL0_DW01_add_3 ( A, B, CI, SUM, 
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
  INVD1 U4 ( .I(n2), .ZN(SUM[25]) );
  INVD1 U5 ( .I(n2), .ZN(SUM[26]) );
  INVD1 U6 ( .I(n2), .ZN(SUM[27]) );
  INVD1 U7 ( .I(n2), .ZN(SUM[28]) );
  AN2XD1 U9 ( .A1(carry[23]), .A2(B[23]), .Z(n2) );
  XNR2D1 U10 ( .A1(carry[22]), .A2(B[22]), .ZN(SUM[22]) );
  CKXOR2D1 U11 ( .A1(carry[23]), .A2(B[23]), .Z(SUM[23]) );
  CKXOR2D1 U12 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
  OR2D0 U1 ( .A1(B[22]), .A2(carry[22]), .Z(carry[23]) );
endmodule


module oadm_fixed_divmul_correction_chain_LEVEL0_DW01_add_2 ( A, B, CI, SUM, 
        CO );
  input [28:0] A;
  input [28:0] B;
  output [28:0] SUM;
  input CI;
  output CO;
  wire   n1, n3, n4, n5;
  wire   [25:2] carry;

  FA1D0 U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  FA1D0 U1_24 ( .A(A[24]), .B(B[24]), .CI(carry[24]), .CO(carry[25]), .S(
        SUM[24]) );
  FA1D0 U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
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
  FA1D0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA1D0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1D0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1D0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1D0 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA1D0 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  FA1D0 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  AN2XD1 U1 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
  AN2XD1 U3 ( .A1(n4), .A2(B[26]), .Z(n3) );
  AN2XD1 U4 ( .A1(carry[25]), .A2(B[25]), .Z(n4) );
  CKXOR2D1 U5 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
  CKXOR2D1 U7 ( .A1(n3), .A2(B[27]), .Z(SUM[27]) );
  CKXOR2D1 U8 ( .A1(n4), .A2(B[26]), .Z(SUM[26]) );
  CKXOR2D1 U9 ( .A1(carry[25]), .A2(B[25]), .Z(SUM[25]) );
  XNR2D0 U2 ( .A1(B[28]), .A2(n5), .ZN(SUM[28]) );
  CKND2D0 U6 ( .A1(B[27]), .A2(n3), .ZN(n5) );
endmodule


module oadm_fixed_divmul_correction_chain_LEVEL0_DW01_sub_1 ( A, B, CI, DIFF, 
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
  FA1D0 U2_19 ( .A(A[19]), .B(n6), .CI(carry[19]), .CO(carry[20]), .S(DIFF[19]) );
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
  FA1D0 U2_11 ( .A(A[11]), .B(n14), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  FA1D0 U2_10 ( .A(A[10]), .B(n15), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  FA1D0 U2_9 ( .A(A[9]), .B(n16), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  FA1D0 U2_8 ( .A(A[8]), .B(n17), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  FA1D0 U2_7 ( .A(A[7]), .B(n18), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  FA1D0 U2_5 ( .A(A[5]), .B(n20), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  FA1D0 U2_4 ( .A(A[4]), .B(n21), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FA1D0 U2_3 ( .A(A[3]), .B(n22), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  FA1D0 U2_2 ( .A(A[2]), .B(n23), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  FA1D0 U2_1 ( .A(A[1]), .B(n24), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  FA1D0 U2_6 ( .A(A[6]), .B(n19), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  INVD1 U3 ( .I(B[6]), .ZN(n19) );
  INVD1 U5 ( .I(B[1]), .ZN(n24) );
  INVD1 U7 ( .I(B[2]), .ZN(n23) );
  INVD1 U8 ( .I(B[3]), .ZN(n22) );
  INVD1 U9 ( .I(B[4]), .ZN(n21) );
  INVD1 U10 ( .I(B[5]), .ZN(n20) );
  INVD1 U11 ( .I(B[7]), .ZN(n18) );
  INVD1 U13 ( .I(B[8]), .ZN(n17) );
  INVD1 U14 ( .I(B[9]), .ZN(n16) );
  INVD1 U15 ( .I(B[10]), .ZN(n15) );
  INVD1 U16 ( .I(B[11]), .ZN(n14) );
  INVD1 U17 ( .I(B[12]), .ZN(n13) );
  INVD1 U18 ( .I(B[13]), .ZN(n12) );
  INVD1 U19 ( .I(B[14]), .ZN(n11) );
  INVD1 U20 ( .I(B[15]), .ZN(n10) );
  INVD1 U21 ( .I(B[16]), .ZN(n9) );
  INVD1 U22 ( .I(B[17]), .ZN(n8) );
  INVD1 U23 ( .I(B[18]), .ZN(n7) );
  INVD1 U24 ( .I(B[19]), .ZN(n6) );
  INVD1 U25 ( .I(B[20]), .ZN(n5) );
  INVD1 U26 ( .I(B[21]), .ZN(n4) );
  IND2D0 U1 ( .A1(carry[22]), .B1(B[22]), .ZN(DIFF[23]) );
  CKXOR2D0 U2 ( .A1(carry[22]), .A2(B[22]), .Z(DIFF[22]) );
  IND2D0 U4 ( .A1(A[0]), .B1(B[0]), .ZN(carry[1]) );
  CKXOR2D0 U6 ( .A1(A[0]), .A2(B[0]), .Z(DIFF[0]) );
endmodule


module oadm_fixed_divmul_correction_chain_LEVEL0_DW01_sub_0 ( A, B, CI, DIFF, 
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
  CKBD1 U3 ( .I(DIFF[26]), .Z(DIFF[27]) );
  AN2XD1 U4 ( .A1(carry[22]), .A2(A[22]), .Z(n1) );
  CKBD1 U5 ( .I(DIFF[26]), .Z(DIFF[28]) );
  NR2D1 U6 ( .A1(carry[25]), .A2(A[25]), .ZN(DIFF[26]) );
  INVD1 U8 ( .I(B[1]), .ZN(n26) );
  INVD1 U10 ( .I(B[2]), .ZN(n25) );
  INVD1 U11 ( .I(B[3]), .ZN(n24) );
  INVD1 U12 ( .I(B[4]), .ZN(n23) );
  INVD1 U13 ( .I(B[5]), .ZN(n22) );
  INVD1 U14 ( .I(B[6]), .ZN(n21) );
  INVD1 U15 ( .I(B[7]), .ZN(n20) );
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
  IND2D0 U7 ( .A1(A[0]), .B1(B[0]), .ZN(carry[1]) );
  CKXOR2D0 U9 ( .A1(A[0]), .A2(B[0]), .Z(DIFF[0]) );
endmodule


module oadm_fixed_divmul_correction_chain_LEVEL0_DW01_add_0 ( A, B, CI, SUM, 
        CO );
  input [28:0] A;
  input [28:0] B;
  output [28:0] SUM;
  input CI;
  output CO;
  wire   n1, n5;
  wire   [27:2] carry;

  FA1D0 U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
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
  FA1D0 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  FA1D0 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA1D0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1D0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1D0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1D0 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA1D0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  AN2XD1 U3 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
  XNR2D1 U10 ( .A1(carry[27]), .A2(B[27]), .ZN(SUM[27]) );
  XNR2D1 U11 ( .A1(carry[26]), .A2(B[26]), .ZN(SUM[26]) );
  XNR2D1 U12 ( .A1(carry[25]), .A2(B[25]), .ZN(SUM[25]) );
  XNR2D1 U13 ( .A1(carry[24]), .A2(B[24]), .ZN(SUM[24]) );
  CKXOR2D1 U14 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
  CKXOR2D0 U1 ( .A1(B[28]), .A2(n5), .Z(SUM[28]) );
  NR2D0 U2 ( .A1(carry[27]), .A2(B[26]), .ZN(n5) );
  OR2D0 U4 ( .A1(B[26]), .A2(carry[26]), .Z(carry[27]) );
  OR2D0 U5 ( .A1(B[25]), .A2(carry[25]), .Z(carry[26]) );
  OR2D0 U6 ( .A1(carry[24]), .A2(B[24]), .Z(carry[25]) );
endmodule


module oadm_fixed_divmul_correction_chain_LEVEL0 ( x, y, divide_mode, result
 );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  input divide_mode;
  wire   N91, N92, N93, N94, N95, N96, N97, N98, N99, N100, N101, N102, N103,
         N104, N105, N106, N107, N108, N109, N110, N111, N112, N113, N114,
         N115, N116, N117, N118, N119, N204, N205, N206, N207, N208, N209,
         N210, N211, N212, N213, N214, N215, N216, N217, N218, N219, N220,
         N221, N222, N223, N224, N225, N226, N227, N228, N229, N230, N231,
         N232, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, N203, N202, N201, N200, N199,
         N198, N197, N196, N195, N194, N193, N192, N191, N190, N189, N188,
         N187, N186, N185, N184, N183, N182, N181, N180, N179, N178, N177,
         N176, N175, N330, N171, N170, N169, N168, N167, N166, N165, N164,
         N163, N162, N161, N160, N159, N158, N157, N156, N155, N154, N153,
         N152, N151, N150, N149, N148, N147, N580, N143, N142, N140, N139,
         N138, N137, N136, N135, N134, N133, N132, N131, N130, N129, N128,
         N127, N126, N125, N124, N123, N122, N121, N120, N90, N89, N88, N87,
         N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74, N73,
         N72, N71, N70, N69, N68, N67, N660, N650, N640, N630, N620, N570,
         N560, N550, N540, N530, N520, N510, N500, N490, N480, N470, N460,
         N450, N440, N430, N420, N410, N400, N390, N380, N370, N360, N350,
         N340, N310, N290, N280, n1, n3, n4, n5, n6, n7, n10;
  wire   [22:21] x_mantissa;
  wire   [22:0] y_mantissa;
  wire   [28:0] base_plane;
  wire   [31:7] scaled_product;
  wire   [22:0] normalized_fraction;
  wire   [2:0] exponent_adjust;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16;

  fp32_normal_finite_wrapper fp_wrapper ( .x(x), .y(y), .divide_mode(
        divide_mode), .fraction_x({x_mantissa, N140, N139, N138, N137, N136, 
        N135, N134, N133, N132, N131, N130, N129, N128, N127, N126, N125, N124, 
        N123, N122, N121, N120}), .fraction_y(y_mantissa), .result_fraction(
        normalized_fraction), .exponent_adjust({exponent_adjust[2], 
        exponent_adjust[2], exponent_adjust[0]}), .result(result) );
  oadm_fixed_divmul_correction_chain_LEVEL0_DW_mult_uns_0 mult_158 ( .a(
        base_plane), .b({N580, N580, N580, N330, N330, N580}), .product({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, scaled_product, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9}) );
  oadm_fixed_divmul_correction_chain_LEVEL0_DW01_add_4 add_2_root_add_46_4 ( 
        .A({N330, N330, N330, N330, N330, N580, x_mantissa, N140, N139, N138, 
        N137, N136, N135, N134, N133, N132, N131, N130, N129, N128, N127, N126, 
        N125, N124, N123, N122, N121}), .B({N330, N330, N330, N330, N580, 
        y_mantissa}), .CI(N330), .SUM({SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, N171, N170, N169, 
        N168, N167, N166, N165, N164, N163, N162, N161, N160, N159, N158, N157, 
        N156, N155, N154, N153, N152, N151, N150, N149, N148, N147}) );
  oadm_fixed_divmul_correction_chain_LEVEL0_DW01_add_3 add_1_root_add_0_root_add_46_4 ( 
        .A({N330, N330, N330, N330, N330, N330, N580, y_mantissa[22:1]}), .B({
        N580, N580, N580, N580, N580, N143, N142, N280, N140, N139, N138, N137, 
        N136, N135, N134, N133, N132, N131, N130, N129, N128, N127, N126, N125, 
        N124, N123, N122, N121, N120}), .CI(N330), .SUM({N203, N202, N201, 
        N200, N199, N198, N197, N196, N195, N194, N193, N192, N191, N190, N189, 
        N188, N187, N186, N185, N184, N183, N182, N181, N180, N179, N178, N177, 
        N176, N175}) );
  oadm_fixed_divmul_correction_chain_LEVEL0_DW01_add_2 add_0_root_add_0_root_add_46_4 ( 
        .A({N330, N330, N330, N330, N171, N170, N169, N168, N167, N166, N165, 
        N164, N163, N162, N161, N160, N159, N158, N157, N156, N155, N154, N153, 
        N152, N151, N150, N149, N148, N147}), .B({N203, N202, N201, N200, N199, 
        N198, N197, N196, N195, N194, N193, N192, N191, N190, N189, N188, N187, 
        N186, N185, N184, N183, N182, N181, N180, N179, N178, N177, N176, N175}), .CI(N330), .SUM({N232, N231, N230, N229, N228, N227, N226, N225, N224, N223, 
        N222, N221, N220, N219, N218, N217, N216, N215, N214, N213, N212, N211, 
        N210, N209, N208, N207, N206, N205, N204}) );
  oadm_fixed_divmul_correction_chain_LEVEL0_DW01_sub_1 sub_2_root_sub_39_2 ( 
        .A({N330, N330, N330, N330, N330, N580, x_mantissa, N140, N139, N138, 
        N137, N136, N135, N134, N133, N132, N131, N130, N129, N128, N127, N126, 
        N125, N124, N123, N122, N121}), .B({N330, N330, N330, N330, N580, 
        y_mantissa}), .CI(N330), .DIFF({SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, N570, N560, N550, N540, N530, N520, N510, 
        N500, N490, N480, N470, N460, N450, N440, N430, N420, N410, N400, N390, 
        N380, N370, N360, N350, N340}) );
  oadm_fixed_divmul_correction_chain_LEVEL0_DW01_sub_0 sub_1_root_sub_0_root_sub_39_2 ( 
        .A({N330, N330, N330, n1, N310, N310, N290, N280, N140, N139, N138, 
        N137, N136, N135, N134, N133, N132, N131, N130, N129, N128, N127, N126, 
        N125, N124, N123, N122, N121, N120}), .B({N330, N330, N330, N330, N330, 
        N330, N580, y_mantissa[22:1]}), .CI(N330), .DIFF({N90, N89, N88, N87, 
        N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, 
        N72, N71, N70, N69, N68, N67, N660, N650, N640, N630, N620}) );
  oadm_fixed_divmul_correction_chain_LEVEL0_DW01_add_0 add_0_root_sub_0_root_sub_39_2 ( 
        .A({N580, N580, N580, N580, N580, N570, N560, N550, N540, N530, N520, 
        N510, N500, N490, N480, N470, N460, N450, N440, N430, N420, N410, N400, 
        N390, N380, N370, N360, N350, N340}), .B({N90, N89, N88, N87, N86, N85, 
        N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, N72, N71, 
        N70, N69, N68, N67, N660, N650, N640, N630, N620}), .CI(N330), .SUM({
        N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, N109, N108, 
        N107, N106, N105, N104, N103, N102, N101, N100, N99, N98, N97, N96, 
        N95, N94, N93, N92, N91}) );
  ND2D1 U4 ( .A1(n25), .A2(n3), .ZN(exponent_adjust[2]) );
  ND2D1 U5 ( .A1(n7), .A2(n25), .ZN(exponent_adjust[0]) );
  IND3D1 U6 ( .A1(n41), .B1(n42), .B2(n7), .ZN(n25) );
  CKBD1 U7 ( .I(n20), .Z(n7) );
  ND3D1 U8 ( .A1(n42), .A2(n41), .A3(n7), .ZN(n3) );
  OAI221D0 U9 ( .A1(n41), .A2(n5), .B1(n7), .B2(n42), .C(n43), .ZN(
        normalized_fraction[22]) );
  OA22D0 U10 ( .A1(n4), .A2(n44), .B1(n25), .B2(n45), .Z(n43) );
  OAI221D0 U11 ( .A1(n45), .A2(n19), .B1(n7), .B2(n41), .C(n46), .ZN(
        normalized_fraction[21]) );
  OA22D0 U12 ( .A1(n3), .A2(n47), .B1(n25), .B2(n44), .Z(n46) );
  OAI221D0 U13 ( .A1(n34), .A2(n19), .B1(n7), .B2(n32), .C(n37), .ZN(
        normalized_fraction[3]) );
  OA22D0 U14 ( .A1(n23), .A2(n38), .B1(n25), .B2(n36), .Z(n37) );
  OAI221D0 U15 ( .A1(n28), .A2(n19), .B1(n7), .B2(n24), .C(n31), .ZN(
        normalized_fraction[6]) );
  OA22D0 U16 ( .A1(n23), .A2(n32), .B1(n25), .B2(n30), .Z(n31) );
  OAI221D0 U17 ( .A1(n18), .A2(n19), .B1(n7), .B2(n21), .C(n22), .ZN(
        normalized_fraction[9]) );
  OA22D0 U18 ( .A1(n23), .A2(n24), .B1(n25), .B2(n26), .Z(n22) );
  OAI221D0 U19 ( .A1(n63), .A2(n19), .B1(n7), .B2(n61), .C(n65), .ZN(
        normalized_fraction[11]) );
  OA22D0 U20 ( .A1(n23), .A2(n18), .B1(n25), .B2(n21), .Z(n65) );
  OAI221D0 U21 ( .A1(n61), .A2(n19), .B1(n20), .B2(n59), .C(n64), .ZN(
        normalized_fraction[12]) );
  OA22D0 U22 ( .A1(n23), .A2(n21), .B1(n25), .B2(n63), .Z(n64) );
  OAI221D0 U23 ( .A1(n57), .A2(n6), .B1(n20), .B2(n55), .C(n60), .ZN(
        normalized_fraction[14]) );
  OA22D0 U24 ( .A1(n23), .A2(n61), .B1(n25), .B2(n59), .Z(n60) );
  OAI221D0 U25 ( .A1(n51), .A2(n6), .B1(n20), .B2(n49), .C(n54), .ZN(
        normalized_fraction[17]) );
  OA22D0 U26 ( .A1(n23), .A2(n55), .B1(n25), .B2(n53), .Z(n54) );
  OAI221D0 U27 ( .A1(n44), .A2(n6), .B1(n20), .B2(n45), .C(n48), .ZN(
        normalized_fraction[20]) );
  OA22D0 U28 ( .A1(n23), .A2(n49), .B1(n25), .B2(n47), .Z(n48) );
  OAI221D0 U29 ( .A1(n32), .A2(n5), .B1(n7), .B2(n30), .C(n35), .ZN(
        normalized_fraction[4]) );
  OA22D0 U30 ( .A1(n3), .A2(n36), .B1(n25), .B2(n34), .Z(n35) );
  OAI221D0 U31 ( .A1(n30), .A2(n6), .B1(n20), .B2(n28), .C(n33), .ZN(
        normalized_fraction[5]) );
  OA22D0 U32 ( .A1(n4), .A2(n34), .B1(n25), .B2(n32), .Z(n33) );
  OAI221D0 U33 ( .A1(n24), .A2(n5), .B1(n7), .B2(n26), .C(n29), .ZN(
        normalized_fraction[7]) );
  OA22D0 U34 ( .A1(n3), .A2(n30), .B1(n25), .B2(n28), .Z(n29) );
  OAI221D0 U35 ( .A1(n26), .A2(n6), .B1(n7), .B2(n18), .C(n27), .ZN(
        normalized_fraction[8]) );
  OA22D0 U36 ( .A1(n4), .A2(n28), .B1(n25), .B2(n24), .Z(n27) );
  OAI221D0 U37 ( .A1(n21), .A2(n5), .B1(n7), .B2(n63), .C(n66), .ZN(
        normalized_fraction[10]) );
  OA22D0 U38 ( .A1(n4), .A2(n26), .B1(n25), .B2(n18), .Z(n66) );
  OAI221D0 U39 ( .A1(n59), .A2(n5), .B1(n20), .B2(n57), .C(n62), .ZN(
        normalized_fraction[13]) );
  OA22D0 U40 ( .A1(n4), .A2(n63), .B1(n25), .B2(n61), .Z(n62) );
  OAI221D0 U41 ( .A1(n55), .A2(n19), .B1(n20), .B2(n53), .C(n58), .ZN(
        normalized_fraction[15]) );
  OA22D0 U42 ( .A1(n3), .A2(n59), .B1(n25), .B2(n57), .Z(n58) );
  OAI221D0 U43 ( .A1(n53), .A2(n5), .B1(n20), .B2(n51), .C(n56), .ZN(
        normalized_fraction[16]) );
  OA22D0 U44 ( .A1(n4), .A2(n57), .B1(n25), .B2(n55), .Z(n56) );
  OAI221D0 U45 ( .A1(n49), .A2(n19), .B1(n20), .B2(n47), .C(n52), .ZN(
        normalized_fraction[18]) );
  OA22D0 U46 ( .A1(n3), .A2(n53), .B1(n25), .B2(n51), .Z(n52) );
  OAI221D0 U47 ( .A1(n47), .A2(n5), .B1(n20), .B2(n44), .C(n50), .ZN(
        normalized_fraction[19]) );
  OA22D0 U48 ( .A1(n4), .A2(n51), .B1(n25), .B2(n49), .Z(n50) );
  OAI221D0 U49 ( .A1(n36), .A2(n6), .B1(n7), .B2(n34), .C(n39), .ZN(
        normalized_fraction[2]) );
  OA22D0 U50 ( .A1(n25), .A2(n38), .B1(n4), .B2(n40), .Z(n39) );
  ND3D1 U51 ( .A1(n42), .A2(n41), .A3(n7), .ZN(n4) );
  ND3D1 U52 ( .A1(n42), .A2(n41), .A3(n7), .ZN(n23) );
  OAI222D0 U53 ( .A1(n38), .A2(n5), .B1(n40), .B2(n25), .C1(n7), .C2(n36), 
        .ZN(normalized_fraction[1]) );
  IND2D1 U54 ( .A1(n42), .B1(n7), .ZN(n5) );
  IND2D1 U55 ( .A1(n42), .B1(n7), .ZN(n19) );
  IND2D1 U56 ( .A1(n42), .B1(n7), .ZN(n6) );
  OAI22D1 U57 ( .A1(n7), .A2(n38), .B1(n40), .B2(n6), .ZN(
        normalized_fraction[0]) );
  AOI22D1 U58 ( .A1(n10), .A2(N228), .B1(scaled_product[31]), .B2(divide_mode), 
        .ZN(n20) );
  AO22D0 U59 ( .A1(n10), .A2(N211), .B1(N98), .B2(divide_mode), .Z(
        base_plane[7]) );
  AO22D0 U60 ( .A1(n10), .A2(N208), .B1(N95), .B2(divide_mode), .Z(
        base_plane[4]) );
  AO22D0 U61 ( .A1(n10), .A2(N207), .B1(N94), .B2(divide_mode), .Z(
        base_plane[3]) );
  AO22D0 U62 ( .A1(n10), .A2(N212), .B1(N99), .B2(divide_mode), .Z(
        base_plane[8]) );
  AO22D0 U63 ( .A1(n10), .A2(N209), .B1(N96), .B2(divide_mode), .Z(
        base_plane[5]) );
  AO22D0 U64 ( .A1(n10), .A2(N213), .B1(N100), .B2(divide_mode), .Z(
        base_plane[9]) );
  AO22D0 U65 ( .A1(n10), .A2(N210), .B1(N97), .B2(divide_mode), .Z(
        base_plane[6]) );
  AO22D0 U66 ( .A1(n10), .A2(N214), .B1(N101), .B2(divide_mode), .Z(
        base_plane[10]) );
  AO22D0 U67 ( .A1(n10), .A2(N215), .B1(N102), .B2(divide_mode), .Z(
        base_plane[11]) );
  AO22D0 U68 ( .A1(n10), .A2(N216), .B1(N103), .B2(divide_mode), .Z(
        base_plane[12]) );
  AO22D0 U69 ( .A1(n10), .A2(N217), .B1(N104), .B2(divide_mode), .Z(
        base_plane[13]) );
  AO22D0 U70 ( .A1(n10), .A2(N218), .B1(N105), .B2(divide_mode), .Z(
        base_plane[14]) );
  AO22D0 U71 ( .A1(n10), .A2(N219), .B1(N106), .B2(divide_mode), .Z(
        base_plane[15]) );
  AO22D0 U72 ( .A1(n10), .A2(N220), .B1(N107), .B2(divide_mode), .Z(
        base_plane[16]) );
  AOI22D1 U73 ( .A1(n10), .A2(N227), .B1(scaled_product[30]), .B2(divide_mode), 
        .ZN(n42) );
  AO22D0 U74 ( .A1(n10), .A2(N221), .B1(N108), .B2(divide_mode), .Z(
        base_plane[17]) );
  AO22D0 U75 ( .A1(n10), .A2(N222), .B1(N109), .B2(divide_mode), .Z(
        base_plane[18]) );
  AO22D0 U76 ( .A1(n10), .A2(N223), .B1(N110), .B2(divide_mode), .Z(
        base_plane[19]) );
  AO22D0 U77 ( .A1(n10), .A2(N224), .B1(N111), .B2(divide_mode), .Z(
        base_plane[20]) );
  AO22D0 U78 ( .A1(n10), .A2(N205), .B1(N92), .B2(divide_mode), .Z(
        base_plane[1]) );
  AO22D0 U79 ( .A1(n10), .A2(N204), .B1(N91), .B2(divide_mode), .Z(
        base_plane[0]) );
  AO22D0 U80 ( .A1(n10), .A2(N225), .B1(N112), .B2(divide_mode), .Z(
        base_plane[21]) );
  AO22D0 U81 ( .A1(n10), .A2(N206), .B1(N93), .B2(divide_mode), .Z(
        base_plane[2]) );
  AOI22D1 U82 ( .A1(n10), .A2(N226), .B1(scaled_product[29]), .B2(divide_mode), 
        .ZN(n41) );
  AO22D0 U83 ( .A1(n10), .A2(N226), .B1(N113), .B2(divide_mode), .Z(
        base_plane[22]) );
  AO22D0 U84 ( .A1(n10), .A2(N227), .B1(N114), .B2(divide_mode), .Z(
        base_plane[23]) );
  AO22D0 U85 ( .A1(n10), .A2(N228), .B1(N115), .B2(divide_mode), .Z(
        base_plane[24]) );
  AO22D0 U86 ( .A1(N229), .A2(n10), .B1(N116), .B2(divide_mode), .Z(
        base_plane[25]) );
  AO22D0 U87 ( .A1(N230), .A2(n10), .B1(N117), .B2(divide_mode), .Z(
        base_plane[26]) );
  AO22D0 U88 ( .A1(N231), .A2(n10), .B1(N118), .B2(divide_mode), .Z(
        base_plane[27]) );
  AO22D0 U89 ( .A1(N232), .A2(n10), .B1(N119), .B2(divide_mode), .Z(
        base_plane[28]) );
  AOI22D1 U90 ( .A1(n10), .A2(N225), .B1(scaled_product[28]), .B2(divide_mode), 
        .ZN(n45) );
  AOI22D1 U91 ( .A1(n10), .A2(N224), .B1(scaled_product[27]), .B2(divide_mode), 
        .ZN(n44) );
  AOI22D1 U92 ( .A1(n10), .A2(N223), .B1(scaled_product[26]), .B2(divide_mode), 
        .ZN(n47) );
  AOI22D1 U93 ( .A1(n10), .A2(N222), .B1(scaled_product[25]), .B2(divide_mode), 
        .ZN(n49) );
  AOI22D1 U94 ( .A1(n10), .A2(N221), .B1(scaled_product[24]), .B2(divide_mode), 
        .ZN(n51) );
  AOI22D1 U95 ( .A1(n10), .A2(N220), .B1(scaled_product[23]), .B2(divide_mode), 
        .ZN(n53) );
  AOI22D1 U96 ( .A1(n10), .A2(N219), .B1(scaled_product[22]), .B2(divide_mode), 
        .ZN(n55) );
  AOI22D1 U97 ( .A1(n10), .A2(N218), .B1(scaled_product[21]), .B2(divide_mode), 
        .ZN(n57) );
  AOI22D1 U98 ( .A1(n10), .A2(N217), .B1(scaled_product[20]), .B2(divide_mode), 
        .ZN(n59) );
  AOI22D1 U99 ( .A1(n10), .A2(N216), .B1(scaled_product[19]), .B2(divide_mode), 
        .ZN(n61) );
  AOI22D1 U100 ( .A1(n10), .A2(N215), .B1(scaled_product[18]), .B2(divide_mode), .ZN(n63) );
  AOI22D1 U101 ( .A1(n10), .A2(N214), .B1(scaled_product[17]), .B2(divide_mode), .ZN(n21) );
  AOI22D1 U102 ( .A1(n10), .A2(N213), .B1(scaled_product[16]), .B2(divide_mode), .ZN(n18) );
  AOI22D1 U103 ( .A1(n10), .A2(N212), .B1(scaled_product[15]), .B2(divide_mode), .ZN(n26) );
  AOI22D1 U104 ( .A1(n10), .A2(N211), .B1(scaled_product[14]), .B2(divide_mode), .ZN(n24) );
  AOI22D1 U105 ( .A1(n10), .A2(N210), .B1(scaled_product[13]), .B2(divide_mode), .ZN(n28) );
  AOI22D1 U106 ( .A1(n10), .A2(N209), .B1(scaled_product[12]), .B2(divide_mode), .ZN(n30) );
  AOI22D1 U107 ( .A1(n10), .A2(N208), .B1(scaled_product[11]), .B2(divide_mode), .ZN(n32) );
  AOI22D1 U108 ( .A1(n10), .A2(N207), .B1(scaled_product[10]), .B2(divide_mode), .ZN(n34) );
  AOI22D1 U109 ( .A1(n10), .A2(N206), .B1(scaled_product[9]), .B2(divide_mode), 
        .ZN(n36) );
  AOI22D1 U110 ( .A1(n10), .A2(N205), .B1(scaled_product[8]), .B2(divide_mode), 
        .ZN(n38) );
  AOI22D1 U111 ( .A1(n10), .A2(N204), .B1(scaled_product[7]), .B2(divide_mode), 
        .ZN(n40) );
  INVD1 U112 ( .I(x_mantissa[21]), .ZN(N280) );
  TIEL U118 ( .ZN(N330) );
  TIEH U119 ( .Z(N580) );
  XNR2D1 U120 ( .A1(x_mantissa[21]), .A2(x_mantissa[22]), .ZN(N142) );
  CKXOR2D1 U121 ( .A1(x_mantissa[21]), .A2(x_mantissa[22]), .Z(N290) );
  INVD1 U3 ( .I(divide_mode), .ZN(n10) );
  CKND0 U113 ( .I(N310), .ZN(n1) );
  CKND2D0 U114 ( .A1(x_mantissa[22]), .A2(x_mantissa[21]), .ZN(N310) );
  OR2D0 U115 ( .A1(x_mantissa[22]), .A2(x_mantissa[21]), .Z(N143) );
endmodule


module oadm_fixed_l0_divmul_correction_chain ( x, y, divide_mode, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  input divide_mode;
  wire   n2;

  oadm_fixed_divmul_correction_chain_LEVEL0 impl ( .x(x), .y(y), .divide_mode(
        n2), .result(result) );
  CKBD1 U1 ( .I(divide_mode), .Z(n2) );
endmodule

