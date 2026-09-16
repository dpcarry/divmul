/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Tue Sep 15 23:04:26 2026
/////////////////////////////////////////////////////////////


module absdm_l2_separate_native_mul_div_DW_mult_tc_1_DW_mult_tc_3 ( a, b, 
        product );
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
  INVD1 U68 ( .I(b[5]), .ZN(n106) );
  INVD1 U69 ( .I(b[2]), .ZN(n110) );
  INVD1 U70 ( .I(b[0]), .ZN(n107) );
  INVD1 U71 ( .I(b[1]), .ZN(n111) );
  INVD1 U72 ( .I(b[3]), .ZN(n108) );
  INVD1 U73 ( .I(b[4]), .ZN(n109) );
  CKBD1 U74 ( .I(product[11]), .Z(product[10]) );
  INVD1 U75 ( .I(a[2]), .ZN(n113) );
  INVD1 U76 ( .I(a[0]), .ZN(n115) );
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


module absdm_l2_separate_native_mul_div_DW_mult_tc_0_DW_mult_tc_2 ( a, b, 
        product );
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
  INVD1 U60 ( .I(b[1]), .ZN(n96) );
  INVD1 U61 ( .I(b[2]), .ZN(n95) );
  CKBD1 U62 ( .I(product[9]), .Z(product[10]) );
  INVD1 U63 ( .I(b[0]), .ZN(n93) );
  INVD1 U64 ( .I(b[3]), .ZN(n94) );
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


module absdm_l2_separate_native_mul_div_DW01_add_0_DW01_add_6 ( A, B, CI, SUM, 
        CO );
  input [14:0] A;
  input [14:0] B;
  output [14:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [13:2] carry;

  FA1D0 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  FA1D0 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA1D0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1D0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1D0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1D0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
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
  AN2XD1 U1 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
  CKXOR2D1 U2 ( .A1(B[13]), .A2(carry[13]), .Z(SUM[13]) );
  CKXOR2D1 U3 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
endmodule


module absdm_l2_separate_native_mul_div_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] DIFF;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  wire   [13:1] carry;

  XOR3D1 U2_13 ( .A1(A[13]), .A2(n2), .A3(carry[13]), .Z(DIFF[13]) );
  FA1D0 U2_1 ( .A(A[1]), .B(n11), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  FA1D0 U2_2 ( .A(A[2]), .B(n10), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  FA1D0 U2_9 ( .A(A[9]), .B(n3), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9]) );
  FA1D0 U2_3 ( .A(A[3]), .B(n9), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  FA1D0 U2_4 ( .A(A[4]), .B(n8), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FA1D0 U2_5 ( .A(A[5]), .B(n7), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  FA1D0 U2_6 ( .A(A[6]), .B(n6), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  FA1D0 U2_7 ( .A(A[7]), .B(n5), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  FA1D0 U2_8 ( .A(A[8]), .B(n4), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  FA1D0 U2_10 ( .A(A[10]), .B(n2), .CI(carry[10]), .CO(carry[11]), .S(DIFF[10]) );
  FA1D0 U2_12 ( .A(A[12]), .B(n2), .CI(carry[12]), .CO(carry[13]), .S(DIFF[12]) );
  FA1D0 U2_11 ( .A(A[11]), .B(n2), .CI(carry[11]), .CO(carry[12]), .S(DIFF[11]) );
  INVD1 U1 ( .I(B[8]), .ZN(n4) );
  INVD1 U2 ( .I(B[7]), .ZN(n5) );
  INVD1 U3 ( .I(B[6]), .ZN(n6) );
  INVD1 U4 ( .I(B[5]), .ZN(n7) );
  INVD1 U5 ( .I(B[4]), .ZN(n8) );
  INVD1 U6 ( .I(B[3]), .ZN(n9) );
  INVD1 U7 ( .I(B[15]), .ZN(n2) );
  INVD1 U9 ( .I(B[9]), .ZN(n3) );
  INVD1 U10 ( .I(B[2]), .ZN(n10) );
  INVD1 U11 ( .I(B[1]), .ZN(n11) );
  CKXOR2D0 U8 ( .A1(A[0]), .A2(B[0]), .Z(DIFF[0]) );
  IND2D0 U12 ( .A1(A[0]), .B1(B[0]), .ZN(carry[1]) );
endmodule


module absdm_l2_separate_native_mul_div ( fx, fy, value );
  input [22:0] fx;
  input [22:0] fy;
  output [28:0] value;
  wire   rx_4_, ry_4_, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, py_9_, py_8_, py_7_, py_6_, py_5_, py_4_, py_3_,
         py_2_, py_1_, py_11_, py_10_, py_0_, px_11, px_9_, px_8_, px_7_,
         px_6_, px_5_, px_4_, px_3_, px_2_, px_1_, px_0_, N75, N74, N73, N72,
         N71, N70, N69, N68, N67, N66, N65, N64, N63, N62, n12, n56, n57, n58,
         n59, n60, n61, n620;
  wire   [3:0] a;
  wire   [5:0] b;
  wire   [12:0] c;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2;

  AN3XD1 U8 ( .A1(n22), .A2(n17), .A3(n23), .Z(n21) );
  AN2XD1 U11 ( .A1(n27), .A2(n28), .Z(n26) );
  AN2XD1 U13 ( .A1(n31), .A2(n22), .Z(n24) );
  AN2XD1 U15 ( .A1(n30), .A2(n34), .Z(n33) );
  AN3XD1 U20 ( .A1(n40), .A2(n14), .A3(n27), .Z(n20) );
  AN4XD1 U24 ( .A1(n36), .A2(n43), .A3(n29), .A4(n30), .Z(n39) );
  AN3XD1 U28 ( .A1(n27), .A2(n17), .A3(n42), .Z(n44) );
  AN2XD1 U29 ( .A1(n34), .A2(n18), .Z(n16) );
  AN2XD1 U31 ( .A1(n42), .A2(n43), .Z(n45) );
  AN2XD1 U36 ( .A1(n31), .A2(n34), .Z(n13) );
  AN2XD1 U38 ( .A1(n23), .A2(n42), .Z(n31) );
  AN2XD1 U40 ( .A1(n28), .A2(n19), .Z(n32) );
  AN2XD1 U49 ( .A1(n17), .A2(n38), .Z(n25) );
  AN3XD1 U54 ( .A1(n28), .A2(n23), .A3(n43), .Z(n51) );
  AN2XD1 U59 ( .A1(n41), .A2(n29), .Z(n35) );
  AN3XD1 U61 ( .A1(n14), .A2(n30), .A3(n27), .Z(n41) );
  absdm_l2_separate_native_mul_div_DW_mult_tc_1_DW_mult_tc_3 mult_27_S2 ( .a({
        ry_4_, fy[19:16]}), .b({n620, b}), .product({py_11_, py_10_, py_9_, 
        py_8_, py_7_, py_6_, py_5_, py_4_, py_3_, py_2_, py_1_, py_0_}) );
  absdm_l2_separate_native_mul_div_DW_mult_tc_0_DW_mult_tc_2 mult_27 ( .a({
        rx_4_, fx[19:16]}), .b({n620, n12, a}), .product({px_11, px_9_, px_8_, 
        px_7_, px_6_, px_5_, px_4_, px_3_, px_2_, px_1_, px_0_}) );
  absdm_l2_separate_native_mul_div_DW01_add_0_DW01_add_6 add_1_root_sub_29 ( 
        .A({n620, n620, c}), .B({px_11, px_11, px_11, px_11, px_11, px_9_, 
        px_8_, px_7_, px_6_, px_5_, px_4_, px_3_, px_2_, px_1_, px_0_}), .CI(
        n620), .SUM({SYNOPSYS_UNCONNECTED__0, N75, N74, N73, N72, N71, N70, 
        N69, N68, N67, N66, N65, N64, N63, N62}) );
  absdm_l2_separate_native_mul_div_DW01_sub_0 sub_0_root_sub_29 ( .A({1'b0, 
        1'b0, N75, N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, 
        N62}), .B({py_11_, py_11_, py_11_, py_11_, py_11_, py_10_, py_9_, 
        py_8_, py_7_, py_6_, py_5_, py_4_, py_3_, py_2_, py_1_, py_0_}), .CI(
        n620), .DIFF({SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        value[24:11]}) );
  TIEH U3 ( .Z(n12) );
  INVD1 U19 ( .I(b[5]), .ZN(n58) );
  ND3D1 U21 ( .A1(n16), .A2(n32), .A3(n20), .ZN(c[11]) );
  ND3D1 U22 ( .A1(n31), .A2(n58), .A3(n39), .ZN(c[12]) );
  ND3D1 U23 ( .A1(n13), .A2(n14), .A3(n15), .ZN(c[9]) );
  INR2D1 U25 ( .A1(n25), .B1(n59), .ZN(n15) );
  ND2D1 U26 ( .A1(n15), .A2(n22), .ZN(b[5]) );
  ND2D1 U27 ( .A1(n51), .A2(n22), .ZN(a[1]) );
  ND4D1 U30 ( .A1(n36), .A2(n22), .A3(n32), .A4(n46), .ZN(a[2]) );
  IINR4D0 U32 ( .A1(n17), .A2(n30), .B1(c[4]), .B2(n59), .ZN(n46) );
  ND3D1 U33 ( .A1(n43), .A2(n38), .A3(n13), .ZN(c[4]) );
  IND4D1 U34 ( .A1(c[10]), .B1(n16), .B2(n17), .B3(n14), .ZN(c[8]) );
  ND4D1 U35 ( .A1(n18), .A2(n19), .A3(n20), .A4(n21), .ZN(c[7]) );
  ND2D1 U37 ( .A1(n24), .A2(n20), .ZN(c[6]) );
  ND4D1 U39 ( .A1(n24), .A2(n25), .A3(n26), .A4(n18), .ZN(c[5]) );
  ND4D1 U41 ( .A1(n35), .A2(n51), .A3(n18), .A4(n58), .ZN(a[0]) );
  ND4D1 U42 ( .A1(n24), .A2(n19), .A3(n29), .A4(n30), .ZN(c[3]) );
  ND2D1 U43 ( .A1(n53), .A2(n55), .ZN(n43) );
  ND2D1 U44 ( .A1(n55), .A2(n50), .ZN(n14) );
  INVD1 U45 ( .I(n40), .ZN(n59) );
  ND2D1 U46 ( .A1(n15), .A2(n30), .ZN(a[3]) );
  ND4D1 U47 ( .A1(n32), .A2(n27), .A3(n33), .A4(n23), .ZN(c[2]) );
  ND2D1 U48 ( .A1(n52), .A2(n53), .ZN(n22) );
  ND2D1 U50 ( .A1(n52), .A2(n50), .ZN(n29) );
  ND4D1 U51 ( .A1(n41), .A2(n13), .A3(n36), .A4(n43), .ZN(b[2]) );
  ND4D1 U52 ( .A1(n35), .A2(n32), .A3(n45), .A4(n25), .ZN(b[0]) );
  ND4D1 U53 ( .A1(n43), .A2(n28), .A3(n16), .A4(n44), .ZN(b[1]) );
  ND4D1 U55 ( .A1(n35), .A2(n36), .A3(n37), .A4(n38), .ZN(c[1]) );
  NR2D1 U56 ( .A1(a[1]), .A2(n59), .ZN(n37) );
  ND4D1 U57 ( .A1(n41), .A2(n16), .A3(n23), .A4(n38), .ZN(b[3]) );
  ND4D1 U58 ( .A1(n39), .A2(n32), .A3(n31), .A4(n40), .ZN(b[4]) );
  ND4D1 U60 ( .A1(n41), .A2(n42), .A3(n34), .A4(n40), .ZN(c[0]) );
  ND4D1 U62 ( .A1(n32), .A2(n27), .A3(n22), .A4(n38), .ZN(c[10]) );
  ND2D1 U63 ( .A1(n52), .A2(n54), .ZN(n23) );
  NR2D1 U64 ( .A1(n56), .A2(n60), .ZN(n50) );
  ND2D1 U65 ( .A1(n49), .A2(n50), .ZN(n42) );
  NR2D1 U66 ( .A1(n57), .A2(n61), .ZN(n52) );
  ND2D1 U67 ( .A1(n47), .A2(n48), .ZN(n34) );
  ND2D1 U68 ( .A1(n54), .A2(n49), .ZN(n38) );
  NR2D1 U69 ( .A1(n60), .A2(fy[22]), .ZN(n53) );
  ND2D1 U70 ( .A1(n48), .A2(n53), .ZN(n17) );
  NR2D1 U71 ( .A1(n61), .A2(fx[22]), .ZN(n55) );
  ND2D1 U72 ( .A1(n48), .A2(n54), .ZN(n30) );
  ND2D1 U73 ( .A1(n53), .A2(n49), .ZN(n40) );
  ND2D1 U74 ( .A1(n52), .A2(n47), .ZN(n27) );
  ND2D1 U75 ( .A1(n54), .A2(n55), .ZN(n28) );
  ND2D1 U76 ( .A1(n48), .A2(n50), .ZN(n19) );
  ND2D1 U77 ( .A1(n47), .A2(n49), .ZN(n36) );
  ND2D1 U78 ( .A1(n47), .A2(n55), .ZN(n18) );
  NR2D1 U79 ( .A1(fy[22]), .A2(fx[21]), .ZN(n54) );
  INVD1 U80 ( .I(fy[22]), .ZN(n56) );
  INVD1 U81 ( .I(fx[22]), .ZN(n57) );
  NR2D1 U82 ( .A1(n57), .A2(fy[21]), .ZN(n49) );
  INVD1 U83 ( .I(fx[21]), .ZN(n60) );
  INVD1 U84 ( .I(fy[21]), .ZN(n61) );
  NR2D1 U85 ( .A1(fy[21]), .A2(fx[22]), .ZN(n48) );
  NR2D1 U86 ( .A1(n56), .A2(fx[21]), .ZN(n47) );
  INVD1 U87 ( .I(fx[20]), .ZN(rx_4_) );
  INVD1 U88 ( .I(fy[20]), .ZN(ry_4_) );
  TIEL U89 ( .ZN(n620) );
endmodule


module oadm_fixed_mul_plane_root_opt_LEVEL2_RESIDUAL_DROP12_DW_mult_tc_1 ( a, 
        b, product );
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
  INVD1 U110 ( .I(n20), .ZN(n150) );
  INVD1 U111 ( .I(n14), .ZN(n151) );
  INVD1 U112 ( .I(b[3]), .ZN(n149) );
  INVD1 U113 ( .I(a[8]), .ZN(n152) );
  INVD1 U114 ( .I(a[0]), .ZN(n160) );
  INVD1 U115 ( .I(a[4]), .ZN(n156) );
  INVD1 U116 ( .I(a[5]), .ZN(n155) );
  INVD1 U117 ( .I(a[7]), .ZN(n153) );
  INVD1 U118 ( .I(a[6]), .ZN(n154) );
  INVD1 U119 ( .I(a[1]), .ZN(n159) );
  INVD1 U120 ( .I(a[2]), .ZN(n158) );
  INVD1 U121 ( .I(a[3]), .ZN(n157) );
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


module oadm_fixed_mul_plane_root_opt_LEVEL2_RESIDUAL_DROP12_DW_mult_tc_0 ( a, 
        b, product );
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
  INVD1 U110 ( .I(n20), .ZN(n150) );
  INVD1 U111 ( .I(n14), .ZN(n151) );
  INVD1 U112 ( .I(b[3]), .ZN(n149) );
  INVD1 U113 ( .I(a[8]), .ZN(n152) );
  INVD1 U114 ( .I(a[0]), .ZN(n160) );
  INVD1 U115 ( .I(a[4]), .ZN(n156) );
  INVD1 U116 ( .I(a[5]), .ZN(n155) );
  INVD1 U117 ( .I(a[7]), .ZN(n153) );
  INVD1 U118 ( .I(a[6]), .ZN(n154) );
  INVD1 U119 ( .I(a[1]), .ZN(n159) );
  INVD1 U120 ( .I(a[2]), .ZN(n158) );
  INVD1 U121 ( .I(a[3]), .ZN(n157) );
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


module oadm_fixed_mul_plane_root_opt_LEVEL2_RESIDUAL_DROP12_DW_mult_uns_0 ( a, 
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
  INVD1 U60 ( .I(n42), .ZN(n95) );
  INVD1 U61 ( .I(n14), .ZN(n93) );
  ND2D1 U64 ( .A1(n19), .A2(n93), .ZN(n99) );
  XNR3D1 U65 ( .A1(n14), .A2(n17), .A3(n94), .ZN(n16) );
  INVD1 U66 ( .I(a[3]), .ZN(n89) );
  INVD1 U67 ( .I(b[3]), .ZN(n88) );
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


module oadm_fixed_mul_plane_root_opt_LEVEL2_RESIDUAL_DROP12 ( x_mantissa, 
        y_mantissa, plane_value );
  input [23:0] x_mantissa;
  input [23:0] y_mantissa;
  output [28:0] plane_value;
  wire   x_residual_20_, y_residual_20_, N9, N51, N50, N49, N48, N47, N46, N45,
         N44, N43, N42, N41, N40, N39, N38, N37, N36, N24, N23, N22, N21, N20,
         N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, add_52_carry_3_, n1,
         n110, n120, n130, n140, n150, n160, n170, n180, n190, n200, n210,
         n220, n230;
  wire   [14:9] x_product;
  wire   [14:1] y_product;
  wire   [9:3] midpoint_product;
  wire   [4:2] midpoint_sum;
  wire   [24:11] add_0_root_add_56_3_carry;
  wire   [24:19] add_2_root_add_56_3_carry;
  wire   [13:11] add_1_root_add_56_3_carry;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4;

  oadm_fixed_mul_plane_root_opt_LEVEL2_RESIDUAL_DROP12_DW_mult_tc_1 mult_33 ( 
        .a({x_residual_20_, x_mantissa[19:12]}), .b({n1, n110, 
        y_mantissa[22:21], n110, n1}), .product({x_product, N16, N15, N14, N13, 
        N12, N11, N10, N9, SYNOPSYS_UNCONNECTED__0}) );
  oadm_fixed_mul_plane_root_opt_LEVEL2_RESIDUAL_DROP12_DW_mult_tc_0 mult_35 ( 
        .a({y_residual_20_, y_mantissa[19:12]}), .b({n1, n110, 
        x_mantissa[22:21], n110, n1}), .product({y_product, 
        SYNOPSYS_UNCONNECTED__1}) );
  oadm_fixed_mul_plane_root_opt_LEVEL2_RESIDUAL_DROP12_DW_mult_uns_0 mult_46 ( 
        .a({n110, x_mantissa[22:21], n110, n1}), .b({n110, y_mantissa[22:21], 
        n110, n1}), .product({midpoint_product, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4}) );
  TIEL U3 ( .ZN(n1) );
  TIEH U4 ( .Z(n110) );
  AN2XD1 U15 ( .A1(midpoint_sum[2]), .A2(y_product[1]), .Z(n120) );
  AN2XD1 U16 ( .A1(N9), .A2(N36), .Z(n130) );
  AN2XD1 U17 ( .A1(n150), .A2(y_product[14]), .Z(n140) );
  FA1D0 U20 ( .A(N23), .B(N50), .CI(add_0_root_add_56_3_carry[23]), .CO(
        add_0_root_add_56_3_carry[24]), .S(plane_value[23]) );
  FA1D0 U21 ( .A(N22), .B(N49), .CI(add_0_root_add_56_3_carry[22]), .CO(
        add_0_root_add_56_3_carry[23]), .S(plane_value[22]) );
  FA1D0 U22 ( .A(N21), .B(N48), .CI(add_0_root_add_56_3_carry[21]), .CO(
        add_0_root_add_56_3_carry[22]), .S(plane_value[21]) );
  AN2XD1 U23 ( .A1(n160), .A2(y_product[13]), .Z(n150) );
  FA1D0 U24 ( .A(midpoint_product[8]), .B(x_product[14]), .CI(
        add_2_root_add_56_3_carry[23]), .CO(add_2_root_add_56_3_carry[24]), 
        .S(N23) );
  FA1D0 U25 ( .A(midpoint_product[7]), .B(x_product[14]), .CI(
        add_2_root_add_56_3_carry[22]), .CO(add_2_root_add_56_3_carry[23]), 
        .S(N22) );
  FA1D0 U26 ( .A(midpoint_product[6]), .B(x_product[13]), .CI(
        add_2_root_add_56_3_carry[21]), .CO(add_2_root_add_56_3_carry[22]), 
        .S(N21) );
  XOR3D1 U27 ( .A1(midpoint_product[9]), .A2(x_product[14]), .A3(
        add_2_root_add_56_3_carry[24]), .Z(N24) );
  FA1D0 U28 ( .A(midpoint_product[5]), .B(x_product[12]), .CI(
        add_2_root_add_56_3_carry[20]), .CO(add_2_root_add_56_3_carry[21]), 
        .S(N20) );
  FA1D0 U29 ( .A(N20), .B(N47), .CI(add_0_root_add_56_3_carry[20]), .CO(
        add_0_root_add_56_3_carry[21]), .S(plane_value[20]) );
  FA1D0 U30 ( .A(N19), .B(N46), .CI(add_0_root_add_56_3_carry[19]), .CO(
        add_0_root_add_56_3_carry[20]), .S(plane_value[19]) );
  AN2XD1 U31 ( .A1(n170), .A2(y_product[12]), .Z(n160) );
  FA1D0 U32 ( .A(N17), .B(N44), .CI(add_0_root_add_56_3_carry[17]), .CO(
        add_0_root_add_56_3_carry[18]), .S(plane_value[17]) );
  INVD1 U33 ( .I(x_product[9]), .ZN(N17) );
  AN2XD1 U34 ( .A1(n180), .A2(y_product[11]), .Z(n170) );
  FA1D0 U35 ( .A(N16), .B(N43), .CI(add_0_root_add_56_3_carry[16]), .CO(
        add_0_root_add_56_3_carry[17]), .S(plane_value[16]) );
  AN2XD1 U36 ( .A1(n190), .A2(y_product[10]), .Z(n180) );
  FA1D0 U37 ( .A(N15), .B(N42), .CI(add_0_root_add_56_3_carry[15]), .CO(
        add_0_root_add_56_3_carry[16]), .S(plane_value[15]) );
  AN2XD1 U38 ( .A1(n200), .A2(y_product[9]), .Z(n190) );
  FA1D0 U39 ( .A(N14), .B(N41), .CI(add_0_root_add_56_3_carry[14]), .CO(
        add_0_root_add_56_3_carry[15]), .S(plane_value[14]) );
  AN2XD1 U40 ( .A1(n210), .A2(y_product[8]), .Z(n200) );
  FA1D0 U41 ( .A(N13), .B(N40), .CI(add_0_root_add_56_3_carry[13]), .CO(
        add_0_root_add_56_3_carry[14]), .S(plane_value[13]) );
  AN2XD1 U42 ( .A1(n220), .A2(y_product[7]), .Z(n210) );
  FA1D0 U43 ( .A(N12), .B(N39), .CI(add_0_root_add_56_3_carry[12]), .CO(
        add_0_root_add_56_3_carry[13]), .S(plane_value[12]) );
  AN2XD1 U44 ( .A1(n230), .A2(y_product[6]), .Z(n220) );
  AN2XD1 U45 ( .A1(add_1_root_add_56_3_carry[13]), .A2(y_product[5]), .Z(n230)
         );
  XOR3D1 U47 ( .A1(N24), .A2(N51), .A3(add_0_root_add_56_3_carry[24]), .Z(
        plane_value[24]) );
  FA1D0 U48 ( .A(midpoint_product[4]), .B(x_product[11]), .CI(
        add_2_root_add_56_3_carry[19]), .CO(add_2_root_add_56_3_carry[20]), 
        .S(N19) );
  FA1D0 U49 ( .A(N18), .B(N45), .CI(add_0_root_add_56_3_carry[18]), .CO(
        add_0_root_add_56_3_carry[19]), .S(plane_value[18]) );
  FA1D0 U50 ( .A(y_product[3]), .B(midpoint_sum[4]), .CI(
        add_1_root_add_56_3_carry[11]), .CO(add_1_root_add_56_3_carry[12]), 
        .S(N38) );
  FA1D0 U51 ( .A(N11), .B(N38), .CI(add_0_root_add_56_3_carry[11]), .CO(
        add_0_root_add_56_3_carry[12]), .S(plane_value[11]) );
  FA1D0 U52 ( .A(y_product[2]), .B(midpoint_sum[3]), .CI(n120), .CO(
        add_1_root_add_56_3_carry[11]), .S(N37) );
  FA1D0 U53 ( .A(N10), .B(N37), .CI(n130), .CO(add_0_root_add_56_3_carry[11]), 
        .S(plane_value[10]) );
  FA1D0 U56 ( .A(midpoint_product[3]), .B(x_product[10]), .CI(x_product[9]), 
        .CO(add_2_root_add_56_3_carry[19]), .S(N18) );
  FA1D0 U57 ( .A(x_mantissa[22]), .B(y_mantissa[22]), .CI(add_52_carry_3_), 
        .CO(midpoint_sum[4]), .S(midpoint_sum[3]) );
  INVD1 U61 ( .I(x_mantissa[20]), .ZN(x_residual_20_) );
  INVD1 U62 ( .I(y_mantissa[20]), .ZN(y_residual_20_) );
  XNR2D1 U63 ( .A1(y_mantissa[21]), .A2(x_mantissa[21]), .ZN(midpoint_sum[2])
         );
  XNR2D1 U64 ( .A1(add_1_root_add_56_3_carry[12]), .A2(y_product[4]), .ZN(N39)
         );
  CKXOR2D1 U65 ( .A1(N36), .A2(N9), .Z(plane_value[9]) );
  CKXOR2D1 U66 ( .A1(midpoint_sum[2]), .A2(y_product[1]), .Z(N36) );
  CKXOR2D1 U67 ( .A1(add_1_root_add_56_3_carry[13]), .A2(y_product[5]), .Z(N40) );
  CKXOR2D1 U68 ( .A1(n230), .A2(y_product[6]), .Z(N41) );
  CKXOR2D1 U69 ( .A1(n220), .A2(y_product[7]), .Z(N42) );
  CKXOR2D1 U70 ( .A1(n210), .A2(y_product[8]), .Z(N43) );
  CKXOR2D1 U71 ( .A1(n200), .A2(y_product[9]), .Z(N44) );
  CKXOR2D1 U72 ( .A1(n190), .A2(y_product[10]), .Z(N45) );
  CKXOR2D1 U73 ( .A1(n180), .A2(y_product[11]), .Z(N46) );
  CKXOR2D1 U74 ( .A1(n170), .A2(y_product[12]), .Z(N47) );
  CKXOR2D1 U75 ( .A1(n160), .A2(y_product[13]), .Z(N48) );
  CKXOR2D1 U76 ( .A1(n150), .A2(y_product[14]), .Z(N49) );
  CKXOR2D1 U77 ( .A1(n140), .A2(y_product[14]), .Z(N50) );
  INR2D0 U5 ( .A1(y_product[14]), .B1(n140), .ZN(N51) );
  OR2D0 U6 ( .A1(y_product[4]), .A2(add_1_root_add_56_3_carry[12]), .Z(
        add_1_root_add_56_3_carry[13]) );
  OR2D0 U7 ( .A1(x_mantissa[21]), .A2(y_mantissa[21]), .Z(add_52_carry_3_) );
endmodule


module fp32_normal_finite_wrapper_DW01_add_3_DW01_add_10 ( A, B, CI, SUM, CO
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


module fp32_normal_finite_wrapper_DW01_add_1_DW01_add_8 ( A, B, CI, SUM, CO );
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
  fp32_normal_finite_wrapper_DW01_add_3_DW01_add_10 add_1_root_add_0_root_add_25_2 ( 
        .A(x[30:23]), .B({N42, N41, N40, N39, N38, N37, N36, N11}), .CI(n79), 
        .SUM({N34, N33, N32, N31, N30, N29, N28, N27}) );
  fp32_normal_finite_wrapper_DW01_add_1_DW01_add_8 add_1_root_add_0_root_add_22_2 ( 
        .A(x[30:23]), .B({y[30], N17, N16, N15, N14, N13, N12, N11}), .CI(n79), 
        .SUM({N10, N9, N8, N7, N6, N5, N4, N3}) );
  AN2XD1 U3 ( .A1(exponent_adjust[0]), .A2(N3), .Z(n1) );
  AN2XD1 U4 ( .A1(exponent_adjust[0]), .A2(N27), .Z(n2) );
  INVD1 U29 ( .I(divide_mode), .ZN(n78) );
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
  AO22D0 U40 ( .A1(N49), .A2(n78), .B1(N25), .B2(divide_mode), .Z(result[29])
         );
  AO22D0 U41 ( .A1(N48), .A2(n78), .B1(N24), .B2(divide_mode), .Z(result[28])
         );
  AO22D0 U42 ( .A1(N47), .A2(n78), .B1(N23), .B2(divide_mode), .Z(result[27])
         );
  AO22D0 U43 ( .A1(N46), .A2(n78), .B1(N22), .B2(divide_mode), .Z(result[26])
         );
  AO22D0 U44 ( .A1(N45), .A2(n78), .B1(N21), .B2(divide_mode), .Z(result[25])
         );
  AO22D0 U45 ( .A1(N44), .A2(n78), .B1(N20), .B2(divide_mode), .Z(result[24])
         );
  FA1D0 U46 ( .A(N4), .B(exponent_adjust[1]), .CI(n1), .CO(
        add_0_root_add_0_root_add_22_2_carry[2]), .S(N20) );
  FA1D0 U47 ( .A(N5), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[2]), .CO(
        add_0_root_add_0_root_add_22_2_carry[3]), .S(N21) );
  FA1D0 U48 ( .A(N6), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[3]), .CO(
        add_0_root_add_0_root_add_22_2_carry[4]), .S(N22) );
  FA1D0 U49 ( .A(N7), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[4]), .CO(
        add_0_root_add_0_root_add_22_2_carry[5]), .S(N23) );
  FA1D0 U50 ( .A(N8), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[5]), .CO(
        add_0_root_add_0_root_add_22_2_carry[6]), .S(N24) );
  FA1D0 U51 ( .A(N9), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[6]), .CO(
        add_0_root_add_0_root_add_22_2_carry[7]), .S(N25) );
  FA1D0 U52 ( .A(N28), .B(exponent_adjust[1]), .CI(n2), .CO(
        add_0_root_add_0_root_add_25_2_carry[2]), .S(N44) );
  FA1D0 U53 ( .A(N29), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[2]), .CO(
        add_0_root_add_0_root_add_25_2_carry[3]), .S(N45) );
  FA1D0 U54 ( .A(N30), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[3]), .CO(
        add_0_root_add_0_root_add_25_2_carry[4]), .S(N46) );
  FA1D0 U55 ( .A(N31), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[4]), .CO(
        add_0_root_add_0_root_add_25_2_carry[5]), .S(N47) );
  FA1D0 U56 ( .A(N32), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[5]), .CO(
        add_0_root_add_0_root_add_25_2_carry[6]), .S(N48) );
  FA1D0 U57 ( .A(N33), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[6]), .CO(
        add_0_root_add_0_root_add_25_2_carry[7]), .S(N49) );
  AO22D0 U58 ( .A1(N43), .A2(n78), .B1(N19), .B2(divide_mode), .Z(result[23])
         );
  CKBD1 U59 ( .I(y[22]), .Z(fraction_y[22]) );
  AO22D0 U60 ( .A1(N50), .A2(n78), .B1(divide_mode), .B2(N26), .Z(result[30])
         );
  XOR3D1 U61 ( .A1(N34), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_25_2_carry[7]), .Z(N50) );
  XOR3D1 U62 ( .A1(N10), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_22_2_carry[7]), .Z(N26) );
  CKBD1 U63 ( .I(x[22]), .Z(fraction_x[22]) );
  CKBD1 U64 ( .I(x[21]), .Z(fraction_x[21]) );
  CKBD1 U65 ( .I(y[21]), .Z(fraction_y[21]) );
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


module absdm_l2_separate_native_mul ( x, y, divide_mode, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  input divide_mode;
  wire   n2, n5, n7, n9, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n53, n54, n55, n56;
  wire   [22:12] fx;
  wire   [22:12] fy;
  wire   [24:11] div_value;
  wire   [24:9] mul_value;
  wire   [22:8] normalized_fraction;
  wire   [2:0] exponent_adjust;
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
        SYNOPSYS_UNCONNECTED__58, SYNOPSYS_UNCONNECTED__59;
  assign result[1] = 1'b0;
  assign result[2] = 1'b0;
  assign result[3] = 1'b0;
  assign result[4] = 1'b0;
  assign result[5] = 1'b0;
  assign result[6] = 1'b0;
  assign result[7] = 1'b0;
  assign result[0] = 1'b0;

  absdm_l2_separate_native_mul_div div_core ( .fx({fx[22:16], 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .fy({fy[22:16], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .value({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, div_value, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14}) );
  oadm_fixed_mul_plane_root_opt_LEVEL2_RESIDUAL_DROP12 mul_core ( .x_mantissa(
        {1'b0, fx, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .y_mantissa({1'b0, fy, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .plane_value({
        SYNOPSYS_UNCONNECTED__15, SYNOPSYS_UNCONNECTED__16, 
        SYNOPSYS_UNCONNECTED__17, SYNOPSYS_UNCONNECTED__18, mul_value, 
        SYNOPSYS_UNCONNECTED__19, SYNOPSYS_UNCONNECTED__20, 
        SYNOPSYS_UNCONNECTED__21, SYNOPSYS_UNCONNECTED__22, 
        SYNOPSYS_UNCONNECTED__23, SYNOPSYS_UNCONNECTED__24, 
        SYNOPSYS_UNCONNECTED__25, SYNOPSYS_UNCONNECTED__26, 
        SYNOPSYS_UNCONNECTED__27}) );
  fp32_normal_finite_wrapper wrapper ( .x({x[31:12], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y({y[31:12], 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .divide_mode(n55), .fraction_x({fx, SYNOPSYS_UNCONNECTED__28, 
        SYNOPSYS_UNCONNECTED__29, SYNOPSYS_UNCONNECTED__30, 
        SYNOPSYS_UNCONNECTED__31, SYNOPSYS_UNCONNECTED__32, 
        SYNOPSYS_UNCONNECTED__33, SYNOPSYS_UNCONNECTED__34, 
        SYNOPSYS_UNCONNECTED__35, SYNOPSYS_UNCONNECTED__36, 
        SYNOPSYS_UNCONNECTED__37, SYNOPSYS_UNCONNECTED__38, 
        SYNOPSYS_UNCONNECTED__39}), .fraction_y({fy, SYNOPSYS_UNCONNECTED__40, 
        SYNOPSYS_UNCONNECTED__41, SYNOPSYS_UNCONNECTED__42, 
        SYNOPSYS_UNCONNECTED__43, SYNOPSYS_UNCONNECTED__44, 
        SYNOPSYS_UNCONNECTED__45, SYNOPSYS_UNCONNECTED__46, 
        SYNOPSYS_UNCONNECTED__47, SYNOPSYS_UNCONNECTED__48, 
        SYNOPSYS_UNCONNECTED__49, SYNOPSYS_UNCONNECTED__50, 
        SYNOPSYS_UNCONNECTED__51}), .result_fraction({normalized_fraction, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .exponent_adjust({
        exponent_adjust[2], exponent_adjust[2], exponent_adjust[0]}), .result(
        {result[31:8], SYNOPSYS_UNCONNECTED__52, SYNOPSYS_UNCONNECTED__53, 
        SYNOPSYS_UNCONNECTED__54, SYNOPSYS_UNCONNECTED__55, 
        SYNOPSYS_UNCONNECTED__56, SYNOPSYS_UNCONNECTED__57, 
        SYNOPSYS_UNCONNECTED__58, SYNOPSYS_UNCONNECTED__59}) );
  ND2D1 U78 ( .A1(n9), .A2(n7), .ZN(exponent_adjust[2]) );
  IND3D1 U80 ( .A1(n25), .B1(n26), .B2(n53), .ZN(n9) );
  ND3D1 U81 ( .A1(n26), .A2(n25), .A3(n53), .ZN(n7) );
  ND2D1 U82 ( .A1(n53), .A2(n9), .ZN(exponent_adjust[0]) );
  OAI221D0 U83 ( .A1(n47), .A2(n54), .B1(n53), .B2(n45), .C(n49), .ZN(
        normalized_fraction[11]) );
  OA22D0 U84 ( .A1(n7), .A2(n2), .B1(n9), .B2(n5), .Z(n49) );
  OAI221D0 U85 ( .A1(n45), .A2(n54), .B1(n53), .B2(n43), .C(n48), .ZN(
        normalized_fraction[12]) );
  OA22D0 U86 ( .A1(n7), .A2(n5), .B1(n9), .B2(n47), .Z(n48) );
  OAI221D0 U87 ( .A1(n43), .A2(n54), .B1(n53), .B2(n41), .C(n46), .ZN(
        normalized_fraction[13]) );
  OA22D0 U88 ( .A1(n7), .A2(n47), .B1(n9), .B2(n45), .Z(n46) );
  OAI221D0 U89 ( .A1(n41), .A2(n54), .B1(n53), .B2(n39), .C(n44), .ZN(
        normalized_fraction[14]) );
  OA22D0 U90 ( .A1(n7), .A2(n45), .B1(n9), .B2(n43), .Z(n44) );
  OAI221D0 U91 ( .A1(n39), .A2(n54), .B1(n53), .B2(n37), .C(n42), .ZN(
        normalized_fraction[15]) );
  OA22D0 U92 ( .A1(n7), .A2(n43), .B1(n9), .B2(n41), .Z(n42) );
  OAI221D0 U93 ( .A1(n37), .A2(n54), .B1(n53), .B2(n35), .C(n40), .ZN(
        normalized_fraction[16]) );
  OA22D0 U94 ( .A1(n7), .A2(n41), .B1(n9), .B2(n39), .Z(n40) );
  OAI221D0 U95 ( .A1(n35), .A2(n54), .B1(n53), .B2(n33), .C(n38), .ZN(
        normalized_fraction[17]) );
  OA22D0 U96 ( .A1(n7), .A2(n39), .B1(n9), .B2(n37), .Z(n38) );
  OAI221D0 U97 ( .A1(n33), .A2(n54), .B1(n53), .B2(n31), .C(n36), .ZN(
        normalized_fraction[18]) );
  OA22D0 U98 ( .A1(n7), .A2(n37), .B1(n9), .B2(n35), .Z(n36) );
  OAI221D0 U99 ( .A1(n31), .A2(n54), .B1(n53), .B2(n28), .C(n34), .ZN(
        normalized_fraction[19]) );
  OA22D0 U100 ( .A1(n7), .A2(n35), .B1(n9), .B2(n33), .Z(n34) );
  OAI221D0 U101 ( .A1(n5), .A2(n54), .B1(n53), .B2(n47), .C(n50), .ZN(
        normalized_fraction[10]) );
  OAI22D1 U106 ( .A1(n2), .A2(n54), .B1(n53), .B2(n5), .ZN(
        normalized_fraction[9]) );
  NR2D1 U107 ( .A1(n53), .A2(n2), .ZN(normalized_fraction[8]) );
  AOI22D1 U110 ( .A1(mul_value[23]), .A2(n56), .B1(div_value[23]), .B2(n55), 
        .ZN(n26) );
  AOI22D1 U111 ( .A1(mul_value[22]), .A2(n56), .B1(div_value[22]), .B2(n55), 
        .ZN(n25) );
  OAI221D0 U112 ( .A1(n25), .A2(n54), .B1(n53), .B2(n26), .C(n27), .ZN(
        normalized_fraction[22]) );
  OA22D0 U113 ( .A1(n7), .A2(n28), .B1(n9), .B2(n29), .Z(n27) );
  OAI221D0 U114 ( .A1(n29), .A2(n54), .B1(n53), .B2(n25), .C(n30), .ZN(
        normalized_fraction[21]) );
  OA22D0 U115 ( .A1(n7), .A2(n31), .B1(n9), .B2(n28), .Z(n30) );
  OAI221D0 U116 ( .A1(n28), .A2(n54), .B1(n53), .B2(n29), .C(n32), .ZN(
        normalized_fraction[20]) );
  OA22D0 U117 ( .A1(n7), .A2(n33), .B1(n9), .B2(n31), .Z(n32) );
  AOI22D1 U118 ( .A1(mul_value[20]), .A2(n56), .B1(div_value[20]), .B2(n55), 
        .ZN(n28) );
  AOI22D1 U119 ( .A1(mul_value[19]), .A2(n56), .B1(div_value[19]), .B2(n55), 
        .ZN(n31) );
  AOI22D1 U120 ( .A1(mul_value[18]), .A2(n56), .B1(div_value[18]), .B2(n55), 
        .ZN(n33) );
  AOI22D1 U121 ( .A1(mul_value[17]), .A2(n56), .B1(div_value[17]), .B2(n55), 
        .ZN(n35) );
  AOI22D1 U122 ( .A1(mul_value[16]), .A2(n56), .B1(div_value[16]), .B2(n55), 
        .ZN(n37) );
  AOI22D1 U123 ( .A1(mul_value[15]), .A2(n56), .B1(div_value[15]), .B2(n55), 
        .ZN(n39) );
  AOI22D1 U124 ( .A1(mul_value[14]), .A2(n56), .B1(div_value[14]), .B2(n55), 
        .ZN(n41) );
  AOI22D1 U125 ( .A1(mul_value[13]), .A2(n56), .B1(div_value[13]), .B2(n55), 
        .ZN(n43) );
  AOI22D1 U126 ( .A1(mul_value[12]), .A2(n56), .B1(div_value[12]), .B2(n55), 
        .ZN(n45) );
  AOI22D1 U127 ( .A1(mul_value[11]), .A2(n56), .B1(div_value[11]), .B2(n55), 
        .ZN(n47) );
  INVD1 U128 ( .I(n56), .ZN(n55) );
  ND2D1 U129 ( .A1(mul_value[10]), .A2(n56), .ZN(n5) );
  ND2D1 U130 ( .A1(mul_value[9]), .A2(n56), .ZN(n2) );
  AOI22D1 U131 ( .A1(mul_value[21]), .A2(n56), .B1(div_value[21]), .B2(n55), 
        .ZN(n29) );
  INVD1 U138 ( .I(divide_mode), .ZN(n56) );
  IND2D0 U79 ( .A1(n26), .B1(n53), .ZN(n54) );
  OR2D1 U102 ( .A1(n9), .A2(n2), .Z(n50) );
  AOI22D1 U103 ( .A1(n56), .A2(mul_value[24]), .B1(div_value[24]), .B2(n55), 
        .ZN(n53) );
endmodule

