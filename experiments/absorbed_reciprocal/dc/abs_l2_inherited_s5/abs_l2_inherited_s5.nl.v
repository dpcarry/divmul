/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Tue Sep 15 21:59:06 2026
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
  CKBD1 U37 ( .I(result_fraction[22]), .Z(result[22]) );
  CKBD1 U38 ( .I(result_fraction[14]), .Z(result[14]) );
  CKBD1 U39 ( .I(result_fraction[15]), .Z(result[15]) );
  CKBD1 U40 ( .I(result_fraction[16]), .Z(result[16]) );
  CKBD1 U41 ( .I(result_fraction[17]), .Z(result[17]) );
  CKBD1 U42 ( .I(result_fraction[18]), .Z(result[18]) );
  CKBD1 U43 ( .I(result_fraction[21]), .Z(result[21]) );
  CKBD1 U44 ( .I(result_fraction[20]), .Z(result[20]) );
  CKBD1 U45 ( .I(result_fraction[13]), .Z(result[13]) );
  CKBD1 U46 ( .I(result_fraction[19]), .Z(result[19]) );
  CKBD1 U47 ( .I(result_fraction[12]), .Z(result[12]) );
  CKBD1 U48 ( .I(result_fraction[11]), .Z(result[11]) );
  FA1D0 U49 ( .A(N4), .B(exponent_adjust[1]), .CI(n1), .CO(
        add_0_root_add_0_root_add_22_2_carry[2]), .S(result[24]) );
  FA1D0 U50 ( .A(N5), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[2]), .CO(
        add_0_root_add_0_root_add_22_2_carry[3]), .S(result[25]) );
  FA1D0 U51 ( .A(N6), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[3]), .CO(
        add_0_root_add_0_root_add_22_2_carry[4]), .S(result[26]) );
  FA1D0 U52 ( .A(N7), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[4]), .CO(
        add_0_root_add_0_root_add_22_2_carry[5]), .S(result[27]) );
  FA1D0 U53 ( .A(N8), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[5]), .CO(
        add_0_root_add_0_root_add_22_2_carry[6]), .S(result[28]) );
  FA1D0 U54 ( .A(N9), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[6]), .CO(
        add_0_root_add_0_root_add_22_2_carry[7]), .S(result[29]) );
  XOR3D1 U63 ( .A1(N10), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_22_2_carry[7]), .Z(result[30]) );
  CKBD1 U68 ( .I(y[16]), .Z(fraction_y[16]) );
  CKBD1 U69 ( .I(y[17]), .Z(fraction_y[17]) );
  INVD1 U73 ( .I(y[29]), .ZN(N17) );
  INVD1 U74 ( .I(y[24]), .ZN(N12) );
  INVD1 U75 ( .I(y[25]), .ZN(N13) );
  INVD1 U76 ( .I(y[26]), .ZN(N14) );
  INVD1 U77 ( .I(y[27]), .ZN(N15) );
  INVD1 U78 ( .I(y[28]), .ZN(N16) );
  CKBD1 U98 ( .I(x[22]), .Z(fraction_x[22]) );
  CKBD1 U99 ( .I(x[21]), .Z(fraction_x[21]) );
  CKBD1 U100 ( .I(x[20]), .Z(fraction_x[20]) );
  CKBD1 U101 ( .I(x[19]), .Z(fraction_x[19]) );
  CKBD1 U102 ( .I(x[18]), .Z(fraction_x[18]) );
  CKBD1 U103 ( .I(x[17]), .Z(fraction_x[17]) );
  CKBD1 U104 ( .I(x[16]), .Z(fraction_x[16]) );
  CKBD1 U105 ( .I(y[22]), .Z(fraction_y[22]) );
  CKBD1 U106 ( .I(y[21]), .Z(fraction_y[21]) );
  CKBD1 U107 ( .I(y[20]), .Z(fraction_y[20]) );
  CKBD1 U108 ( .I(y[19]), .Z(fraction_y[19]) );
  CKBD1 U109 ( .I(y[18]), .Z(fraction_y[18]) );
  TIEL U110 ( .ZN(n79) );
  CKXOR2D1 U111 ( .A1(exponent_adjust[0]), .A2(N3), .Z(result[23]) );
  CKND0 U119 ( .I(y[23]), .ZN(N11) );
endmodule


module abs_l2_inherited_s5_DW_mult_tc_1 ( a, b, product );
  input [4:0] a;
  input [6:0] b;
  output [11:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n63, n64, n65, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117;

  FA1D0 U3 ( .A(n11), .B(n37), .CI(n3), .CO(n2), .S(product[9]) );
  FA1D0 U4 ( .A(n14), .B(n12), .CI(n4), .CO(n3), .S(product[8]) );
  FA1D0 U5 ( .A(n17), .B(n15), .CI(n5), .CO(n4), .S(product[7]) );
  FA1D0 U6 ( .A(n18), .B(n22), .CI(n6), .CO(n5), .S(product[6]) );
  FA1D0 U7 ( .A(n23), .B(n27), .CI(n7), .CO(n6), .S(product[5]) );
  FA1D0 U8 ( .A(n28), .B(n31), .CI(n8), .CO(n7), .S(product[4]) );
  FA1D0 U9 ( .A(n32), .B(n34), .CI(n9), .CO(n8), .S(product[3]) );
  FA1D0 U10 ( .A(n10), .B(n54), .CI(n36), .CO(n9), .S(product[2]) );
  HA1D0 U11 ( .A(n65), .B(n60), .CO(n10), .S(product[1]) );
  FA1D0 U12 ( .A(n38), .B(n43), .CI(n13), .CO(n11), .S(n12) );
  CMPE42D1 U13 ( .A(n44), .B(n49), .C(n39), .CIX(n16), .D(n19), .CO(n14), 
        .COX(n13), .S(n15) );
  CMPE42D1 U14 ( .A(n40), .B(n50), .C(n20), .CIX(n24), .D(n21), .CO(n17), 
        .COX(n16), .S(n18) );
  HA1D0 U15 ( .A(n45), .B(n55), .CO(n19), .S(n20) );
  CMPE42D1 U16 ( .A(n51), .B(n56), .C(n29), .CIX(n25), .D(n26), .CO(n22), 
        .COX(n21), .S(n23) );
  FA1D0 U17 ( .A(n46), .B(n61), .CI(n41), .CO(n24), .S(n25) );
  CMPE42D1 U18 ( .A(n47), .B(n57), .C(n42), .CIX(n30), .D(n33), .CO(n27), 
        .COX(n26), .S(n28) );
  FA1D0 U21 ( .A(n58), .B(n63), .CI(n35), .CO(n31), .S(n32) );
  HA1D0 U22 ( .A(n48), .B(n53), .CO(n33), .S(n34) );
  HA1D0 U23 ( .A(n59), .B(n64), .CO(n35), .S(n36) );
  INVD1 U68 ( .I(b[2]), .ZN(n110) );
  INVD1 U69 ( .I(b[0]), .ZN(n107) );
  INVD1 U70 ( .I(b[1]), .ZN(n111) );
  INVD1 U71 ( .I(b[3]), .ZN(n108) );
  INVD1 U72 ( .I(b[5]), .ZN(n106) );
  INVD1 U73 ( .I(b[4]), .ZN(n109) );
  CKBD1 U74 ( .I(product[11]), .Z(product[10]) );
  INVD1 U75 ( .I(a[0]), .ZN(n115) );
  INVD1 U76 ( .I(a[2]), .ZN(n113) );
  INVD1 U77 ( .I(a[1]), .ZN(n114) );
  INVD1 U78 ( .I(a[3]), .ZN(n112) );
  CKND0 U79 ( .I(n2), .ZN(product[11]) );
  NR2D0 U80 ( .A1(n115), .A2(n107), .ZN(product[0]) );
  NR2D0 U81 ( .A1(n115), .A2(n111), .ZN(n65) );
  NR2D0 U82 ( .A1(n115), .A2(n110), .ZN(n64) );
  NR2D0 U83 ( .A1(n115), .A2(n108), .ZN(n63) );
  NR2D0 U84 ( .A1(n115), .A2(n106), .ZN(n61) );
  NR2D0 U85 ( .A1(n107), .A2(n114), .ZN(n60) );
  NR2D0 U86 ( .A1(n111), .A2(n114), .ZN(n59) );
  NR2D0 U87 ( .A1(n110), .A2(n114), .ZN(n58) );
  NR2D0 U88 ( .A1(n108), .A2(n114), .ZN(n57) );
  NR2D0 U89 ( .A1(n114), .A2(n109), .ZN(n56) );
  NR2D0 U90 ( .A1(n106), .A2(n114), .ZN(n55) );
  NR2D0 U91 ( .A1(n107), .A2(n113), .ZN(n54) );
  NR2D0 U92 ( .A1(n111), .A2(n113), .ZN(n53) );
  NR2D0 U93 ( .A1(n108), .A2(n113), .ZN(n51) );
  NR2D0 U94 ( .A1(n109), .A2(n113), .ZN(n50) );
  NR2D0 U95 ( .A1(n106), .A2(n113), .ZN(n49) );
  NR2D0 U96 ( .A1(n107), .A2(n112), .ZN(n48) );
  NR2D0 U97 ( .A1(n111), .A2(n112), .ZN(n47) );
  NR2D0 U98 ( .A1(n110), .A2(n112), .ZN(n46) );
  NR2D0 U99 ( .A1(n108), .A2(n112), .ZN(n45) );
  NR2D0 U100 ( .A1(n109), .A2(n112), .ZN(n44) );
  NR2D0 U101 ( .A1(n106), .A2(n112), .ZN(n43) );
  CKND2D0 U102 ( .A1(a[4]), .A2(b[0]), .ZN(n42) );
  CKND2D0 U103 ( .A1(a[4]), .A2(b[1]), .ZN(n41) );
  CKND2D0 U104 ( .A1(a[4]), .A2(b[2]), .ZN(n40) );
  CKND2D0 U105 ( .A1(a[4]), .A2(b[3]), .ZN(n39) );
  CKND2D0 U106 ( .A1(a[4]), .A2(b[4]), .ZN(n38) );
  CKND2D0 U107 ( .A1(a[4]), .A2(b[5]), .ZN(n37) );
  XNR2D0 U108 ( .A1(n116), .A2(n117), .ZN(n30) );
  CKND2D0 U109 ( .A1(n116), .A2(n117), .ZN(n29) );
  CKND2D0 U110 ( .A1(a[2]), .A2(b[2]), .ZN(n117) );
  CKND2D0 U111 ( .A1(b[4]), .A2(a[0]), .ZN(n116) );
endmodule


module abs_l2_inherited_s5_DW_mult_tc_0 ( a, b, product );
  input [4:0] a;
  input [5:0] b;
  output [10:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n32, n33, n34, n35, n37, n38, n39, n40, n42, n43, n44, n45, n48, n49,
         n50, n52, n53, n54, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102;

  FA1D0 U4 ( .A(n10), .B(n97), .CI(n3), .CO(n2), .S(product[8]) );
  FA1D0 U5 ( .A(n13), .B(n11), .CI(n4), .CO(n3), .S(product[7]) );
  FA1D0 U6 ( .A(n16), .B(n14), .CI(n5), .CO(n4), .S(product[6]) );
  FA1D0 U7 ( .A(n17), .B(n21), .CI(n6), .CO(n5), .S(product[5]) );
  FA1D0 U8 ( .A(n22), .B(n25), .CI(n7), .CO(n6), .S(product[4]) );
  FA1D0 U9 ( .A(n26), .B(n28), .CI(n8), .CO(n7), .S(product[3]) );
  FA1D0 U10 ( .A(n9), .B(n45), .CI(n30), .CO(n8), .S(product[2]) );
  HA1D0 U11 ( .A(n54), .B(n50), .CO(n9), .S(product[1]) );
  FA1D0 U12 ( .A(n32), .B(a[3]), .CI(n12), .CO(n10), .S(n11) );
  CMPE42D1 U13 ( .A(n37), .B(a[2]), .C(n33), .CIX(n15), .D(n18), .CO(n13), 
        .COX(n12), .S(n14) );
  CMPE42D1 U14 ( .A(n34), .B(n38), .C(n23), .CIX(n20), .D(n19), .CO(n16), 
        .COX(n15), .S(n17) );
  HA1D0 U15 ( .A(n42), .B(a[1]), .CO(n18), .S(n19) );
  CMPE42D1 U16 ( .A(n39), .B(n43), .C(n35), .CIX(n24), .D(n27), .CO(n21), 
        .COX(n20), .S(n22) );
  FA1D0 U19 ( .A(n48), .B(n52), .CI(n29), .CO(n25), .S(n26) );
  HA1D0 U20 ( .A(n40), .B(n44), .CO(n27), .S(n28) );
  HA1D0 U21 ( .A(n49), .B(n53), .CO(n29), .S(n30) );
  INVD1 U60 ( .I(b[2]), .ZN(n95) );
  INVD1 U61 ( .I(b[0]), .ZN(n93) );
  INVD1 U62 ( .I(b[3]), .ZN(n94) );
  INVD1 U63 ( .I(b[1]), .ZN(n96) );
  CKBD1 U64 ( .I(product[9]), .Z(product[10]) );
  INVD1 U65 ( .I(a[4]), .ZN(n97) );
  INVD1 U66 ( .I(a[2]), .ZN(n99) );
  INVD1 U67 ( .I(a[0]), .ZN(n101) );
  INVD1 U68 ( .I(a[3]), .ZN(n98) );
  INVD1 U69 ( .I(a[1]), .ZN(n100) );
  CKND0 U70 ( .I(n2), .ZN(product[9]) );
  NR2D0 U71 ( .A1(n101), .A2(n93), .ZN(product[0]) );
  NR2D0 U72 ( .A1(n101), .A2(n96), .ZN(n54) );
  NR2D0 U73 ( .A1(n101), .A2(n95), .ZN(n53) );
  NR2D0 U74 ( .A1(n101), .A2(n94), .ZN(n52) );
  NR2D0 U75 ( .A1(n93), .A2(n100), .ZN(n50) );
  NR2D0 U76 ( .A1(n96), .A2(n100), .ZN(n49) );
  NR2D0 U77 ( .A1(n95), .A2(n100), .ZN(n48) );
  NR2D0 U78 ( .A1(n93), .A2(n99), .ZN(n45) );
  NR2D0 U79 ( .A1(n96), .A2(n99), .ZN(n44) );
  NR2D0 U80 ( .A1(n95), .A2(n99), .ZN(n43) );
  NR2D0 U81 ( .A1(n94), .A2(n99), .ZN(n42) );
  NR2D0 U82 ( .A1(n93), .A2(n98), .ZN(n40) );
  NR2D0 U83 ( .A1(n96), .A2(n98), .ZN(n39) );
  NR2D0 U84 ( .A1(n95), .A2(n98), .ZN(n38) );
  NR2D0 U85 ( .A1(n94), .A2(n98), .ZN(n37) );
  CKND2D0 U86 ( .A1(b[0]), .A2(a[4]), .ZN(n35) );
  CKND2D0 U87 ( .A1(b[1]), .A2(a[4]), .ZN(n34) );
  CKND2D0 U88 ( .A1(b[2]), .A2(a[4]), .ZN(n33) );
  CKND2D0 U89 ( .A1(b[3]), .A2(a[4]), .ZN(n32) );
  CKXOR2D0 U90 ( .A1(a[0]), .A2(n102), .Z(n24) );
  CKND2D0 U91 ( .A1(n102), .A2(n101), .ZN(n23) );
  CKND2D0 U92 ( .A1(a[1]), .A2(b[3]), .ZN(n102) );
endmodule


module abs_l2_inherited_s5_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [12:0] A;
  input [12:0] B;
  output [12:0] DIFF;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  wire   [12:1] carry;

  FA1D0 U2_1 ( .A(A[1]), .B(n11), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  FA1D0 U2_9 ( .A(A[9]), .B(n3), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9]) );
  FA1D0 U2_2 ( .A(A[2]), .B(n10), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  FA1D0 U2_3 ( .A(A[3]), .B(n9), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  FA1D0 U2_4 ( .A(A[4]), .B(n8), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FA1D0 U2_5 ( .A(A[5]), .B(n7), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  FA1D0 U2_6 ( .A(A[6]), .B(n6), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  FA1D0 U2_7 ( .A(A[7]), .B(n5), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  FA1D0 U2_8 ( .A(A[8]), .B(n4), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  FA1D0 U2_10 ( .A(A[10]), .B(n2), .CI(carry[10]), .CO(carry[11]), .S(DIFF[10]) );
  FA1D0 U2_11 ( .A(A[11]), .B(n2), .CI(carry[11]), .CO(carry[12]), .S(DIFF[11]) );
  XOR3D1 U2_12 ( .A1(A[12]), .A2(n2), .A3(carry[12]), .Z(DIFF[12]) );
  INVD1 U2 ( .I(B[12]), .ZN(n2) );
  INVD1 U3 ( .I(B[8]), .ZN(n4) );
  INVD1 U4 ( .I(B[7]), .ZN(n5) );
  INVD1 U5 ( .I(B[6]), .ZN(n6) );
  INVD1 U6 ( .I(B[5]), .ZN(n7) );
  INVD1 U7 ( .I(B[4]), .ZN(n8) );
  INVD1 U8 ( .I(B[3]), .ZN(n9) );
  INVD1 U9 ( .I(B[2]), .ZN(n10) );
  INVD1 U10 ( .I(B[9]), .ZN(n3) );
  INVD1 U12 ( .I(B[1]), .ZN(n11) );
  IND2D0 U1 ( .A1(A[0]), .B1(B[0]), .ZN(carry[1]) );
  CKXOR2D0 U11 ( .A1(A[0]), .A2(B[0]), .Z(DIFF[0]) );
endmodule


module abs_l2_inherited_s5_DW01_add_0 ( A, B, CI, SUM, CO );
  input [12:0] A;
  input [12:0] B;
  output [12:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [12:2] carry;

  FA1D0 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FA1D0 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  FA1D0 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA1D0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1D0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1D0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA1D0 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA1D0 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  FA1D0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1D0 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FA1D0 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  XOR3D1 U1_12 ( .A1(A[12]), .A2(B[12]), .A3(carry[12]), .Z(SUM[12]) );
  AN2XD1 U1 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
  CKXOR2D1 U2 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
endmodule


module abs_l2_inherited_s5 ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   fx_22, fx_21, fx_20, fy_22, fy_21, fy_20, adjust_2_, n7, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, py_9_, py_8_, py_7_, py_6_, py_5_, py_4_, py_3_, py_2_, py_1_,
         py_11_, py_10_, py_0_, px_11, px_9_, px_8_, px_7_, px_6_, px_5_,
         px_4_, px_3_, px_2_, px_1_, px_0_, N95, N94, N93, N92, N91, N90, N89,
         N88, N87, N86, N85, N84, N83, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n830, n840, n850, n860, n870, n880, n890, n900, n910,
         n920;
  wire   [4:0] rx;
  wire   [4:0] ry;
  wire   [3:0] a;
  wire   [5:0] b;
  wire   [12:0] c;
  wire   [12:0] p;
  wire   [22:11] frac;
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
        SYNOPSYS_UNCONNECTED__42;
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
  assign result[10] = 1'b0;

  AN3XD1 U20 ( .A1(n38), .A2(n33), .A3(n39), .Z(n37) );
  AN2XD1 U23 ( .A1(n43), .A2(n44), .Z(n42) );
  AN2XD1 U25 ( .A1(n47), .A2(n38), .Z(n40) );
  AN2XD1 U27 ( .A1(n46), .A2(n50), .Z(n49) );
  AN3XD1 U32 ( .A1(n56), .A2(n30), .A3(n43), .Z(n36) );
  AN4XD1 U36 ( .A1(n52), .A2(n59), .A3(n45), .A4(n46), .Z(n55) );
  AN3XD1 U40 ( .A1(n43), .A2(n33), .A3(n58), .Z(n60) );
  AN2XD1 U41 ( .A1(n50), .A2(n34), .Z(n32) );
  AN2XD1 U43 ( .A1(n58), .A2(n59), .Z(n61) );
  AN2XD1 U51 ( .A1(n47), .A2(n50), .Z(n29) );
  AN2XD1 U53 ( .A1(n39), .A2(n58), .Z(n47) );
  AN2XD1 U55 ( .A1(n44), .A2(n35), .Z(n48) );
  AN2XD1 U64 ( .A1(n33), .A2(n54), .Z(n41) );
  AN3XD1 U69 ( .A1(n44), .A2(n39), .A3(n59), .Z(n67) );
  AN2XD1 U74 ( .A1(n57), .A2(n45), .Z(n51) );
  AN3XD1 U76 ( .A1(n30), .A2(n46), .A3(n43), .Z(n57) );
  fp32_normal_finite_wrapper wrapper ( .x({x[31:16], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y({y[31:16], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .divide_mode(1'b0), .fraction_x(
        {fx_22, fx_21, fx_20, rx[3:0], SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15}), .fraction_y({fy_22, fy_21, fy_20, ry[3:0], 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31}), 
        .result_fraction({frac, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0}), .exponent_adjust({adjust_2_, adjust_2_, n7}), 
        .result({result[31:11], SYNOPSYS_UNCONNECTED__32, 
        SYNOPSYS_UNCONNECTED__33, SYNOPSYS_UNCONNECTED__34, 
        SYNOPSYS_UNCONNECTED__35, SYNOPSYS_UNCONNECTED__36, 
        SYNOPSYS_UNCONNECTED__37, SYNOPSYS_UNCONNECTED__38, 
        SYNOPSYS_UNCONNECTED__39, SYNOPSYS_UNCONNECTED__40, 
        SYNOPSYS_UNCONNECTED__41, SYNOPSYS_UNCONNECTED__42}) );
  abs_l2_inherited_s5_DW_mult_tc_1 mult_28_S2 ( .a(ry), .b({n910, b}), 
        .product({py_11_, py_10_, py_9_, py_8_, py_7_, py_6_, py_5_, py_4_, 
        py_3_, py_2_, py_1_, py_0_}) );
  abs_l2_inherited_s5_DW_mult_tc_0 mult_28 ( .a(rx), .b({n910, n920, a}), 
        .product({px_11, px_9_, px_8_, px_7_, px_6_, px_5_, px_4_, px_3_, 
        px_2_, px_1_, px_0_}) );
  abs_l2_inherited_s5_DW01_sub_0 sub_1_root_sub_0_root_sub_30 ( .A(c), .B({
        py_11_, py_11_, py_10_, py_9_, py_8_, py_7_, py_6_, py_5_, py_4_, 
        py_3_, py_2_, py_1_, py_0_}), .CI(n910), .DIFF({N95, N94, N93, N92, 
        N91, N90, N89, N88, N87, N86, N85, N84, N83}) );
  abs_l2_inherited_s5_DW01_add_0 add_0_root_sub_0_root_sub_30 ( .A({px_11, 
        px_11, px_11, px_9_, px_8_, px_7_, px_6_, px_5_, px_4_, px_3_, px_2_, 
        px_1_, px_0_}), .B({N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, 
        N85, N84, N83}), .CI(n910), .SUM(p) );
  ND2D1 U106 ( .A1(n27), .A2(n28), .ZN(adjust_2_) );
  INVD1 U107 ( .I(n27), .ZN(n7) );
  ND2D1 U108 ( .A1(p[11]), .A2(n72), .ZN(n27) );
  ND2D1 U109 ( .A1(n73), .A2(n72), .ZN(n28) );
  INVD1 U110 ( .I(p[11]), .ZN(n73) );
  OAI222D0 U111 ( .A1(n27), .A2(n74), .B1(n28), .B2(n75), .C1(n73), .C2(n72), 
        .ZN(frac[22]) );
  OAI222D0 U112 ( .A1(n27), .A2(n82), .B1(n28), .B2(n830), .C1(n72), .C2(n81), 
        .ZN(frac[14]) );
  OAI222D0 U113 ( .A1(n27), .A2(n81), .B1(n28), .B2(n82), .C1(n72), .C2(n80), 
        .ZN(frac[15]) );
  OAI222D0 U114 ( .A1(n27), .A2(n80), .B1(n28), .B2(n81), .C1(n72), .C2(n79), 
        .ZN(frac[16]) );
  OAI222D0 U115 ( .A1(n27), .A2(n79), .B1(n28), .B2(n80), .C1(n72), .C2(n78), 
        .ZN(frac[17]) );
  OAI222D0 U116 ( .A1(n27), .A2(n78), .B1(n28), .B2(n79), .C1(n72), .C2(n77), 
        .ZN(frac[18]) );
  INVD1 U117 ( .I(p[10]), .ZN(n74) );
  INVD1 U118 ( .I(p[3]), .ZN(n81) );
  INVD1 U119 ( .I(p[12]), .ZN(n72) );
  ND3D1 U120 ( .A1(n47), .A2(n850), .A3(n55), .ZN(c[12]) );
  ND3D1 U121 ( .A1(n32), .A2(n48), .A3(n36), .ZN(c[11]) );
  INR2D1 U122 ( .A1(n41), .B1(n860), .ZN(n31) );
  INVD1 U123 ( .I(b[5]), .ZN(n850) );
  NR2D1 U124 ( .A1(a[1]), .A2(n860), .ZN(n53) );
  OAI222D0 U125 ( .A1(n75), .A2(n27), .B1(n28), .B2(n76), .C1(n74), .C2(n72), 
        .ZN(frac[21]) );
  OAI222D0 U126 ( .A1(n27), .A2(n76), .B1(n28), .B2(n77), .C1(n75), .C2(n72), 
        .ZN(frac[20]) );
  OAI222D0 U127 ( .A1(n27), .A2(n830), .B1(n28), .B2(n840), .C1(n72), .C2(n82), 
        .ZN(frac[13]) );
  OAI222D0 U128 ( .A1(n27), .A2(n77), .B1(n28), .B2(n78), .C1(n72), .C2(n76), 
        .ZN(frac[19]) );
  OAI22D1 U129 ( .A1(n72), .A2(n830), .B1(n27), .B2(n840), .ZN(frac[12]) );
  NR2D1 U130 ( .A1(n72), .A2(n840), .ZN(frac[11]) );
  INVD1 U131 ( .I(p[9]), .ZN(n75) );
  INVD1 U132 ( .I(p[7]), .ZN(n77) );
  INVD1 U133 ( .I(p[6]), .ZN(n78) );
  INVD1 U134 ( .I(p[5]), .ZN(n79) );
  INVD1 U135 ( .I(p[4]), .ZN(n80) );
  INVD1 U136 ( .I(p[2]), .ZN(n82) );
  INVD1 U137 ( .I(p[1]), .ZN(n830) );
  ND4D1 U138 ( .A1(n57), .A2(n29), .A3(n52), .A4(n59), .ZN(b[2]) );
  ND4D1 U139 ( .A1(n51), .A2(n48), .A3(n61), .A4(n41), .ZN(b[0]) );
  ND4D1 U140 ( .A1(n59), .A2(n44), .A3(n32), .A4(n60), .ZN(b[1]) );
  IND4D1 U141 ( .A1(c[10]), .B1(n32), .B2(n33), .B3(n30), .ZN(c[8]) );
  ND4D1 U142 ( .A1(n57), .A2(n32), .A3(n39), .A4(n54), .ZN(b[3]) );
  ND4D1 U143 ( .A1(n34), .A2(n35), .A3(n36), .A4(n37), .ZN(c[7]) );
  ND4D1 U144 ( .A1(n52), .A2(n38), .A3(n48), .A4(n62), .ZN(a[2]) );
  IINR4D0 U145 ( .A1(n33), .A2(n46), .B1(c[4]), .B2(n860), .ZN(n62) );
  ND3D1 U146 ( .A1(n59), .A2(n54), .A3(n29), .ZN(c[4]) );
  ND2D1 U147 ( .A1(n40), .A2(n36), .ZN(c[6]) );
  ND2D1 U148 ( .A1(n31), .A2(n38), .ZN(b[5]) );
  ND4D1 U149 ( .A1(n40), .A2(n41), .A3(n42), .A4(n34), .ZN(c[5]) );
  ND2D1 U150 ( .A1(n68), .A2(n66), .ZN(n45) );
  ND4D1 U151 ( .A1(n55), .A2(n48), .A3(n47), .A4(n56), .ZN(b[4]) );
  ND4D1 U152 ( .A1(n40), .A2(n35), .A3(n45), .A4(n46), .ZN(c[3]) );
  ND4D1 U153 ( .A1(n51), .A2(n67), .A3(n34), .A4(n850), .ZN(a[0]) );
  INVD1 U154 ( .I(n56), .ZN(n860) );
  ND4D1 U155 ( .A1(n48), .A2(n43), .A3(n49), .A4(n39), .ZN(c[2]) );
  ND2D1 U156 ( .A1(n31), .A2(n46), .ZN(a[3]) );
  ND2D1 U157 ( .A1(n67), .A2(n38), .ZN(a[1]) );
  ND4D1 U158 ( .A1(n57), .A2(n58), .A3(n50), .A4(n56), .ZN(c[0]) );
  ND4D1 U159 ( .A1(n48), .A2(n43), .A3(n38), .A4(n54), .ZN(c[10]) );
  INVD1 U160 ( .I(p[8]), .ZN(n76) );
  INVD1 U161 ( .I(p[0]), .ZN(n840) );
  NR2D1 U162 ( .A1(n890), .A2(n880), .ZN(n66) );
  ND2D1 U163 ( .A1(n65), .A2(n66), .ZN(n58) );
  NR2D1 U164 ( .A1(n870), .A2(n900), .ZN(n68) );
  ND2D1 U165 ( .A1(n68), .A2(n70), .ZN(n39) );
  ND2D1 U166 ( .A1(n71), .A2(n66), .ZN(n30) );
  ND2D1 U167 ( .A1(n68), .A2(n63), .ZN(n43) );
  ND3D1 U168 ( .A1(n29), .A2(n30), .A3(n31), .ZN(c[9]) );
  ND2D1 U169 ( .A1(n63), .A2(n71), .ZN(n34) );
  ND2D1 U170 ( .A1(n64), .A2(n70), .ZN(n46) );
  ND2D1 U171 ( .A1(n63), .A2(n64), .ZN(n50) );
  ND2D1 U172 ( .A1(n64), .A2(n66), .ZN(n35) );
  ND2D1 U173 ( .A1(n64), .A2(n69), .ZN(n33) );
  ND2D1 U174 ( .A1(n70), .A2(n71), .ZN(n44) );
  ND2D1 U175 ( .A1(n70), .A2(n65), .ZN(n54) );
  ND2D1 U176 ( .A1(n69), .A2(n71), .ZN(n59) );
  ND2D1 U177 ( .A1(n63), .A2(n65), .ZN(n52) );
  ND2D1 U178 ( .A1(n69), .A2(n65), .ZN(n56) );
  ND2D1 U179 ( .A1(n68), .A2(n69), .ZN(n38) );
  ND4D1 U180 ( .A1(n51), .A2(n52), .A3(n53), .A4(n54), .ZN(c[1]) );
  INVD1 U181 ( .I(fx_21), .ZN(n880) );
  INVD1 U182 ( .I(fy_22), .ZN(n890) );
  INVD1 U183 ( .I(fy_21), .ZN(n900) );
  NR2D1 U184 ( .A1(n870), .A2(fy_21), .ZN(n65) );
  INVD1 U185 ( .I(fx_22), .ZN(n870) );
  NR2D1 U186 ( .A1(n890), .A2(fx_21), .ZN(n63) );
  NR2D1 U187 ( .A1(n900), .A2(fx_22), .ZN(n71) );
  NR2D1 U188 ( .A1(fy_22), .A2(fx_21), .ZN(n70) );
  NR2D1 U189 ( .A1(fy_21), .A2(fx_22), .ZN(n64) );
  NR2D1 U190 ( .A1(n880), .A2(fy_22), .ZN(n69) );
  INVD1 U191 ( .I(fy_20), .ZN(ry[4]) );
  INVD1 U192 ( .I(fx_20), .ZN(rx[4]) );
  TIEH U193 ( .Z(n920) );
  TIEL U194 ( .ZN(n910) );
endmodule

