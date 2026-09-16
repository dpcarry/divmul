/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Wed Sep 16 00:50:03 2026
/////////////////////////////////////////////////////////////


module unified_div_drop_l2_separate_div_DW_mult_tc_1_DW_mult_tc_3 ( a, b, 
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
  INVD1 U68 ( .I(b[2]), .ZN(n110) );
  INVD1 U69 ( .I(b[0]), .ZN(n107) );
  INVD1 U70 ( .I(b[1]), .ZN(n111) );
  INVD1 U71 ( .I(b[3]), .ZN(n108) );
  INVD1 U72 ( .I(b[5]), .ZN(n106) );
  INVD1 U73 ( .I(b[4]), .ZN(n109) );
  CKBD1 U74 ( .I(product[11]), .Z(product[10]) );
  INVD1 U75 ( .I(a[2]), .ZN(n113) );
  INVD1 U76 ( .I(a[3]), .ZN(n112) );
  INVD1 U77 ( .I(a[1]), .ZN(n114) );
  INVD1 U78 ( .I(a[0]), .ZN(n115) );
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


module unified_div_drop_l2_separate_div_DW_mult_tc_0_DW_mult_tc_2 ( a, b, 
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
  INVD1 U60 ( .I(b[2]), .ZN(n95) );
  CKBD1 U61 ( .I(product[9]), .Z(product[10]) );
  INVD1 U62 ( .I(b[0]), .ZN(n93) );
  INVD1 U63 ( .I(b[3]), .ZN(n94) );
  INVD1 U64 ( .I(b[1]), .ZN(n96) );
  INVD1 U65 ( .I(a[4]), .ZN(n97) );
  INVD1 U66 ( .I(a[2]), .ZN(n99) );
  INVD1 U67 ( .I(a[3]), .ZN(n98) );
  INVD1 U68 ( .I(a[1]), .ZN(n100) );
  INVD1 U69 ( .I(a[0]), .ZN(n101) );
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


module unified_div_drop_l2_separate_div_DW01_add_0_DW01_add_2 ( A, B, CI, SUM, 
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


module unified_div_drop_l2_separate_div_DW01_sub_0 ( A, B, CI, DIFF, CO );
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


module unified_div_drop_l2_separate_div ( fx, fy, value );
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
  wire   [12:0] t;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2;

  AN3XD1 U6 ( .A1(n22), .A2(n17), .A3(n23), .Z(n21) );
  AN2XD1 U9 ( .A1(n27), .A2(n28), .Z(n26) );
  AN2XD1 U11 ( .A1(n31), .A2(n22), .Z(n24) );
  AN2XD1 U13 ( .A1(n30), .A2(n34), .Z(n33) );
  AN3XD1 U18 ( .A1(n40), .A2(n14), .A3(n27), .Z(n20) );
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
  unified_div_drop_l2_separate_div_DW_mult_tc_1_DW_mult_tc_3 mult_28_S2 ( .a({
        ry_4_, fy[19:16]}), .b({n620, b}), .product({py_11_, py_10_, py_9_, 
        py_8_, py_7_, py_6_, py_5_, py_4_, py_3_, py_2_, py_1_, py_0_}) );
  unified_div_drop_l2_separate_div_DW_mult_tc_0_DW_mult_tc_2 mult_28 ( .a({
        rx_4_, fx[19:16]}), .b({n620, n12, a}), .product({px_11, px_9_, px_8_, 
        px_7_, px_6_, px_5_, px_4_, px_3_, px_2_, px_1_, px_0_}) );
  unified_div_drop_l2_separate_div_DW01_add_0_DW01_add_2 add_1_root_sub_30 ( 
        .A({n620, n620, t}), .B({px_11, px_11, px_11, px_11, px_11, px_9_, 
        px_8_, px_7_, px_6_, px_5_, px_4_, px_3_, px_2_, px_1_, px_0_}), .CI(
        n620), .SUM({SYNOPSYS_UNCONNECTED__0, N75, N74, N73, N72, N71, N70, 
        N69, N68, N67, N66, N65, N64, N63, N62}) );
  unified_div_drop_l2_separate_div_DW01_sub_0 sub_0_root_sub_30 ( .A({1'b0, 
        1'b0, N75, N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, 
        N62}), .B({py_11_, py_11_, py_11_, py_11_, py_11_, py_10_, py_9_, 
        py_8_, py_7_, py_6_, py_5_, py_4_, py_3_, py_2_, py_1_, py_0_}), .CI(
        n620), .DIFF({SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        value[24:11]}) );
  TIEH U3 ( .Z(n12) );
  ND3D1 U20 ( .A1(n16), .A2(n32), .A3(n20), .ZN(t[11]) );
  ND3D1 U21 ( .A1(n31), .A2(n56), .A3(n39), .ZN(t[12]) );
  INR2D1 U22 ( .A1(n25), .B1(n57), .ZN(n15) );
  INVD1 U23 ( .I(b[5]), .ZN(n56) );
  ND4D1 U25 ( .A1(n36), .A2(n22), .A3(n32), .A4(n46), .ZN(a[2]) );
  IINR4D0 U26 ( .A1(n17), .A2(n30), .B1(t[4]), .B2(n57), .ZN(n46) );
  ND3D1 U27 ( .A1(n43), .A2(n38), .A3(n13), .ZN(t[4]) );
  ND3D1 U30 ( .A1(n13), .A2(n14), .A3(n15), .ZN(t[9]) );
  IND4D1 U32 ( .A1(t[10]), .B1(n16), .B2(n17), .B3(n14), .ZN(t[8]) );
  ND4D1 U33 ( .A1(n18), .A2(n19), .A3(n20), .A4(n21), .ZN(t[7]) );
  ND2D1 U34 ( .A1(n24), .A2(n20), .ZN(t[6]) );
  ND4D1 U35 ( .A1(n35), .A2(n51), .A3(n18), .A4(n56), .ZN(a[0]) );
  ND2D1 U37 ( .A1(n15), .A2(n22), .ZN(b[5]) );
  ND4D1 U39 ( .A1(n24), .A2(n25), .A3(n26), .A4(n18), .ZN(t[5]) );
  ND4D1 U41 ( .A1(n24), .A2(n19), .A3(n29), .A4(n30), .ZN(t[3]) );
  INVD1 U42 ( .I(n40), .ZN(n57) );
  ND2D1 U43 ( .A1(n15), .A2(n30), .ZN(a[3]) );
  ND2D1 U44 ( .A1(n51), .A2(n22), .ZN(a[1]) );
  ND4D1 U45 ( .A1(n32), .A2(n27), .A3(n33), .A4(n23), .ZN(t[2]) );
  ND2D1 U46 ( .A1(n52), .A2(n50), .ZN(n29) );
  ND4D1 U47 ( .A1(n41), .A2(n13), .A3(n36), .A4(n43), .ZN(b[2]) );
  ND4D1 U48 ( .A1(n35), .A2(n32), .A3(n45), .A4(n25), .ZN(b[0]) );
  ND4D1 U50 ( .A1(n43), .A2(n28), .A3(n16), .A4(n44), .ZN(b[1]) );
  ND4D1 U51 ( .A1(n35), .A2(n36), .A3(n37), .A4(n38), .ZN(t[1]) );
  NR2D1 U52 ( .A1(a[1]), .A2(n57), .ZN(n37) );
  ND4D1 U53 ( .A1(n41), .A2(n16), .A3(n23), .A4(n38), .ZN(b[3]) );
  ND4D1 U55 ( .A1(n39), .A2(n32), .A3(n31), .A4(n40), .ZN(b[4]) );
  ND4D1 U56 ( .A1(n41), .A2(n42), .A3(n34), .A4(n40), .ZN(t[0]) );
  ND4D1 U57 ( .A1(n32), .A2(n27), .A3(n22), .A4(n38), .ZN(t[10]) );
  NR2D1 U58 ( .A1(n60), .A2(n59), .ZN(n50) );
  ND2D1 U60 ( .A1(n49), .A2(n50), .ZN(n42) );
  NR2D1 U62 ( .A1(n58), .A2(n61), .ZN(n52) );
  ND2D1 U63 ( .A1(n52), .A2(n54), .ZN(n23) );
  ND2D1 U64 ( .A1(n54), .A2(n49), .ZN(n38) );
  ND2D1 U65 ( .A1(n48), .A2(n53), .ZN(n17) );
  ND2D1 U66 ( .A1(n47), .A2(n48), .ZN(n34) );
  ND2D1 U67 ( .A1(n55), .A2(n50), .ZN(n14) );
  ND2D1 U68 ( .A1(n53), .A2(n55), .ZN(n43) );
  ND2D1 U69 ( .A1(n52), .A2(n47), .ZN(n27) );
  ND2D1 U70 ( .A1(n53), .A2(n49), .ZN(n40) );
  ND2D1 U71 ( .A1(n48), .A2(n50), .ZN(n19) );
  ND2D1 U72 ( .A1(n54), .A2(n55), .ZN(n28) );
  ND2D1 U73 ( .A1(n48), .A2(n54), .ZN(n30) );
  ND2D1 U74 ( .A1(n52), .A2(n53), .ZN(n22) );
  ND2D1 U75 ( .A1(n47), .A2(n49), .ZN(n36) );
  ND2D1 U76 ( .A1(n47), .A2(n55), .ZN(n18) );
  INVD1 U77 ( .I(fx[21]), .ZN(n59) );
  INVD1 U78 ( .I(fy[21]), .ZN(n61) );
  NR2D1 U79 ( .A1(fy[22]), .A2(fx[21]), .ZN(n54) );
  INVD1 U80 ( .I(fy[22]), .ZN(n60) );
  INVD1 U81 ( .I(fx[22]), .ZN(n58) );
  NR2D1 U82 ( .A1(n58), .A2(fy[21]), .ZN(n49) );
  NR2D1 U83 ( .A1(n59), .A2(fy[22]), .ZN(n53) );
  NR2D1 U84 ( .A1(n60), .A2(fx[21]), .ZN(n47) );
  NR2D1 U85 ( .A1(fy[21]), .A2(fx[22]), .ZN(n48) );
  NR2D1 U86 ( .A1(n61), .A2(fx[22]), .ZN(n55) );
  INVD1 U87 ( .I(fx[20]), .ZN(rx_4_) );
  INVD1 U88 ( .I(fy[20]), .ZN(ry_4_) );
  TIEL U89 ( .ZN(n620) );
endmodule


module unified_div_drop_l2_separate_mul_DW_mult_tc_1 ( a, b, product );
  input [4:0] a;
  input [6:0] b;
  output [11:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n19, n20, n21, n22, n23, n24, n26, n27, n29, n30, n33, n34, n37, n38,
         n41, n42, n78, n79, n80, n81, n82, n83, n84;

  FA1D0 U3 ( .A(n9), .B(n80), .CI(n3), .CO(n2), .S(product[9]) );
  FA1D0 U4 ( .A(n12), .B(n10), .CI(n4), .CO(n3), .S(product[8]) );
  FA1D0 U5 ( .A(n15), .B(n13), .CI(n5), .CO(n4), .S(product[7]) );
  FA1D0 U6 ( .A(n16), .B(n19), .CI(n6), .CO(n5), .S(product[6]) );
  FA1D0 U7 ( .A(n20), .B(n22), .CI(n7), .CO(n6), .S(product[5]) );
  FA1D0 U8 ( .A(n8), .B(n38), .CI(n24), .CO(n7), .S(product[4]) );
  HA1D0 U9 ( .A(n42), .B(a[1]), .CO(n8), .S(product[3]) );
  FA1D0 U10 ( .A(n26), .B(a[3]), .CI(n11), .CO(n9), .S(n10) );
  CMPE42D1 U11 ( .A(a[2]), .B(n80), .C(n29), .CIX(n14), .D(n27), .CO(n12), 
        .COX(n11), .S(n13) );
  CMPE42D1 U12 ( .A(a[4]), .B(a[1]), .C(n30), .CIX(n21), .D(n33), .CO(n15), 
        .COX(n14), .S(n16) );
  FA1D0 U14 ( .A(n34), .B(n37), .CI(n23), .CO(n19), .S(n20) );
  HA1D0 U15 ( .A(a[0]), .B(a[3]), .CO(n21), .S(n22) );
  HA1D0 U16 ( .A(n41), .B(a[2]), .CO(n23), .S(n24) );
  CKBD1 U47 ( .I(product[10]), .Z(product[11]) );
  INVD1 U48 ( .I(a[4]), .ZN(n80) );
  INVD1 U49 ( .I(b[4]), .ZN(n78) );
  INVD1 U50 ( .I(b[3]), .ZN(n79) );
  INVD1 U51 ( .I(a[1]), .ZN(n83) );
  INVD1 U52 ( .I(a[0]), .ZN(n84) );
  INVD1 U53 ( .I(a[2]), .ZN(n82) );
  INVD1 U54 ( .I(a[3]), .ZN(n81) );
  CKBD1 U55 ( .I(a[0]), .Z(product[2]) );
  CKND0 U56 ( .I(n2), .ZN(product[10]) );
  NR2D0 U57 ( .A1(n84), .A2(n79), .ZN(n42) );
  NR2D0 U58 ( .A1(n84), .A2(n78), .ZN(n41) );
  NR2D0 U59 ( .A1(n79), .A2(n83), .ZN(n38) );
  NR2D0 U60 ( .A1(n78), .A2(n83), .ZN(n37) );
  NR2D0 U61 ( .A1(n79), .A2(n82), .ZN(n34) );
  NR2D0 U62 ( .A1(n78), .A2(n82), .ZN(n33) );
  NR2D0 U63 ( .A1(n79), .A2(n81), .ZN(n30) );
  NR2D0 U64 ( .A1(n78), .A2(n81), .ZN(n29) );
  CKND2D0 U65 ( .A1(b[3]), .A2(a[4]), .ZN(n27) );
  CKND2D0 U66 ( .A1(b[4]), .A2(a[4]), .ZN(n26) );
endmodule


module unified_div_drop_l2_separate_mul_DW_mult_tc_0 ( a, b, product );
  input [4:0] a;
  input [6:0] b;
  output [11:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n19, n20, n21, n22, n23, n24, n26, n27, n29, n30, n33, n34, n37, n38,
         n41, n42, n78, n79, n80, n81, n82, n83, n84;

  FA1D0 U3 ( .A(n9), .B(n78), .CI(n3), .CO(n2), .S(product[9]) );
  FA1D0 U4 ( .A(n12), .B(n10), .CI(n4), .CO(n3), .S(product[8]) );
  FA1D0 U5 ( .A(n15), .B(n13), .CI(n5), .CO(n4), .S(product[7]) );
  FA1D0 U6 ( .A(n16), .B(n19), .CI(n6), .CO(n5), .S(product[6]) );
  FA1D0 U7 ( .A(n20), .B(n22), .CI(n7), .CO(n6), .S(product[5]) );
  FA1D0 U8 ( .A(n8), .B(n38), .CI(n24), .CO(n7), .S(product[4]) );
  HA1D0 U9 ( .A(n42), .B(a[1]), .CO(n8), .S(product[3]) );
  FA1D0 U10 ( .A(n26), .B(a[3]), .CI(n11), .CO(n9), .S(n10) );
  CMPE42D1 U11 ( .A(a[2]), .B(n78), .C(n29), .CIX(n14), .D(n27), .CO(n12), 
        .COX(n11), .S(n13) );
  CMPE42D1 U12 ( .A(a[4]), .B(a[1]), .C(n30), .CIX(n21), .D(n33), .CO(n15), 
        .COX(n14), .S(n16) );
  FA1D0 U14 ( .A(n34), .B(n37), .CI(n23), .CO(n19), .S(n20) );
  HA1D0 U15 ( .A(a[0]), .B(a[3]), .CO(n21), .S(n22) );
  HA1D0 U16 ( .A(n41), .B(a[2]), .CO(n23), .S(n24) );
  CKBD1 U47 ( .I(product[10]), .Z(product[11]) );
  INVD1 U48 ( .I(a[4]), .ZN(n78) );
  INVD1 U49 ( .I(b[4]), .ZN(n83) );
  INVD1 U50 ( .I(a[1]), .ZN(n81) );
  INVD1 U51 ( .I(b[3]), .ZN(n84) );
  INVD1 U52 ( .I(a[2]), .ZN(n80) );
  INVD1 U53 ( .I(a[3]), .ZN(n79) );
  INVD1 U54 ( .I(a[0]), .ZN(n82) );
  CKBD1 U55 ( .I(a[0]), .Z(product[2]) );
  CKND0 U56 ( .I(n2), .ZN(product[10]) );
  NR2D0 U57 ( .A1(n82), .A2(n84), .ZN(n42) );
  NR2D0 U58 ( .A1(n82), .A2(n83), .ZN(n41) );
  NR2D0 U59 ( .A1(n84), .A2(n81), .ZN(n38) );
  NR2D0 U60 ( .A1(n83), .A2(n81), .ZN(n37) );
  NR2D0 U61 ( .A1(n84), .A2(n80), .ZN(n34) );
  NR2D0 U62 ( .A1(n83), .A2(n80), .ZN(n33) );
  NR2D0 U63 ( .A1(n84), .A2(n79), .ZN(n30) );
  NR2D0 U64 ( .A1(n83), .A2(n79), .ZN(n29) );
  CKND2D0 U65 ( .A1(b[3]), .A2(a[4]), .ZN(n27) );
  CKND2D0 U66 ( .A1(b[4]), .A2(a[4]), .ZN(n26) );
endmodule


module unified_div_drop_l2_separate_mul ( fx, fy, value );
  input [22:0] fx;
  input [22:0] fy;
  output [28:0] value;
  wire   rx_4_, ry_4_, t_4, t_3, t_2, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, py_9_, py_8_, py_7_, py_6_, py_5_, py_4_, py_3_, py_2_, py_11_,
         py_10_, px_9_, px_8_, px_7_, px_6_, px_5_, px_4_, px_3_, px_2_,
         px_11_, px_10_, N75, N74, N73, N72, N71, N70, N69, N68, N67, N66, N65,
         N64, n23, n24, n25, n27, n29, n30, n31, n32, n33, n34;
  wire   [12:7] t;
  wire   [13:4] add_0_root_add_63_2_carry;
  wire   [13:4] add_1_root_add_63_2_carry;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3;

  OA33D1 U7 ( .A1(n31), .A2(n33), .A3(n18), .B1(fx[21]), .B2(fy[21]), .B3(n19), 
        .Z(n15) );
  CKXOR2D1 U18 ( .A1(fy[21]), .A2(fx[21]), .Z(t[7]) );
  XNR2D1 U19 ( .A1(n33), .A2(fx[22]), .ZN(t[8]) );
  unified_div_drop_l2_separate_mul_DW_mult_tc_1 mult_61_S2 ( .a({ry_4_, 
        fy[19:16]}), .b({n34, n23, fx[22:21], n23, n34, n34}), .product({
        py_11_, py_10_, py_9_, py_8_, py_7_, py_6_, py_5_, py_4_, py_3_, py_2_, 
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1}) );
  unified_div_drop_l2_separate_mul_DW_mult_tc_0 mult_61 ( .a({rx_4_, fx[19:16]}), .b({n34, n23, fy[22:21], n23, n34, n34}), .product({px_11_, px_10_, px_9_, 
        px_8_, px_7_, px_6_, px_5_, px_4_, px_3_, px_2_, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3}) );
  TIEH U3 ( .Z(n23) );
  AN2XD1 U21 ( .A1(px_2_), .A2(t_2), .Z(n24) );
  AN2XD1 U22 ( .A1(py_2_), .A2(N64), .Z(n25) );
  FA1D0 U23 ( .A(py_11_), .B(N73), .CI(add_0_root_add_63_2_carry[11]), .CO(
        add_0_root_add_63_2_carry[12]), .S(value[22]) );
  FA1D0 U24 ( .A(py_11_), .B(N74), .CI(add_0_root_add_63_2_carry[12]), .CO(
        add_0_root_add_63_2_carry[13]), .S(value[23]) );
  XOR3D1 U25 ( .A1(t_4), .A2(px_11_), .A3(add_1_root_add_63_2_carry[13]), .Z(
        N75) );
  FA1D0 U26 ( .A(py_10_), .B(N72), .CI(add_0_root_add_63_2_carry[10]), .CO(
        add_0_root_add_63_2_carry[11]), .S(value[21]) );
  FA1D0 U27 ( .A(py_8_), .B(N70), .CI(add_0_root_add_63_2_carry[8]), .CO(
        add_0_root_add_63_2_carry[9]), .S(value[19]) );
  FA1D0 U28 ( .A(py_7_), .B(N69), .CI(add_0_root_add_63_2_carry[7]), .CO(
        add_0_root_add_63_2_carry[8]), .S(value[18]) );
  FA1D0 U29 ( .A(py_4_), .B(N66), .CI(add_0_root_add_63_2_carry[4]), .CO(
        add_0_root_add_63_2_carry[5]), .S(value[15]) );
  FA1D0 U30 ( .A(py_5_), .B(N67), .CI(add_0_root_add_63_2_carry[5]), .CO(
        add_0_root_add_63_2_carry[6]), .S(value[16]) );
  FA1D0 U31 ( .A(py_6_), .B(N68), .CI(add_0_root_add_63_2_carry[6]), .CO(
        add_0_root_add_63_2_carry[7]), .S(value[17]) );
  FA1D0 U32 ( .A(t_4), .B(px_4_), .CI(add_1_root_add_63_2_carry[4]), .CO(
        add_1_root_add_63_2_carry[5]), .S(N66) );
  FA1D0 U34 ( .A(t[10]), .B(px_10_), .CI(add_1_root_add_63_2_carry[10]), .CO(
        add_1_root_add_63_2_carry[11]), .S(N72) );
  AOI21D1 U35 ( .A1(n32), .A2(t[8]), .B(n20), .ZN(t[10]) );
  FA1D0 U36 ( .A(t[11]), .B(px_11_), .CI(add_1_root_add_63_2_carry[11]), .CO(
        add_1_root_add_63_2_carry[12]), .S(N73) );
  OAI211D1 U37 ( .A1(t[7]), .A2(n19), .B(n21), .C(n22), .ZN(t[11]) );
  AOI32D1 U38 ( .A1(n30), .A2(n19), .A3(t[7]), .B1(t[8]), .B2(t_2), .ZN(n22)
         );
  FA1D0 U39 ( .A(t[12]), .B(px_11_), .CI(add_1_root_add_63_2_carry[12]), .CO(
        add_1_root_add_63_2_carry[13]), .S(N74) );
  OAI22D1 U40 ( .A1(t[8]), .A2(n14), .B1(n32), .B2(n20), .ZN(t[12]) );
  FA1D0 U41 ( .A(py_9_), .B(N71), .CI(add_0_root_add_63_2_carry[9]), .CO(
        add_0_root_add_63_2_carry[10]), .S(value[20]) );
  FA1D0 U42 ( .A(t[8]), .B(px_8_), .CI(add_1_root_add_63_2_carry[8]), .CO(
        add_1_root_add_63_2_carry[9]), .S(N70) );
  FA1D0 U43 ( .A(t[7]), .B(px_7_), .CI(add_1_root_add_63_2_carry[7]), .CO(
        add_1_root_add_63_2_carry[8]), .S(N69) );
  NR2D1 U47 ( .A1(t[7]), .A2(n32), .ZN(n14) );
  FA1D0 U48 ( .A(t_3), .B(px_3_), .CI(n24), .CO(add_1_root_add_63_2_carry[4]), 
        .S(N65) );
  OAI32D1 U49 ( .A1(n30), .A2(n32), .A3(t[7]), .B1(t[8]), .B2(n14), .ZN(t_3)
         );
  FA1D0 U50 ( .A(py_3_), .B(N65), .CI(n25), .CO(add_0_root_add_63_2_carry[4]), 
        .S(value[14]) );
  INVD1 U51 ( .I(t[8]), .ZN(n30) );
  OAI21D1 U52 ( .A1(n14), .A2(n30), .B(n19), .ZN(t_4) );
  INVD1 U53 ( .I(n21), .ZN(n32) );
  INVD1 U54 ( .I(t[7]), .ZN(t_2) );
  ND2D1 U55 ( .A1(t_2), .A2(n19), .ZN(n20) );
  XOR3D1 U56 ( .A1(py_11_), .A2(N75), .A3(add_0_root_add_63_2_carry[13]), .Z(
        value[24]) );
  FA1D0 U57 ( .A(t[9]), .B(px_9_), .CI(add_1_root_add_63_2_carry[9]), .CO(
        add_1_root_add_63_2_carry[10]), .S(N71) );
  ND2D1 U58 ( .A1(n15), .A2(n16), .ZN(t[9]) );
  AOI33D1 U59 ( .A1(n29), .A2(n33), .A3(n32), .B1(fy[21]), .B2(fx[22]), .B3(
        n17), .ZN(n16) );
  INVD1 U60 ( .I(fy[22]), .ZN(n33) );
  INVD1 U61 ( .I(fx[20]), .ZN(rx_4_) );
  ND2D1 U62 ( .A1(fy[21]), .A2(fx[21]), .ZN(n21) );
  INVD1 U63 ( .I(fy[20]), .ZN(ry_4_) );
  ND2D1 U64 ( .A1(fy[22]), .A2(fx[22]), .ZN(n19) );
  NR2D1 U65 ( .A1(fy[22]), .A2(fx[21]), .ZN(n17) );
  INVD1 U66 ( .I(fx[22]), .ZN(n29) );
  IND2D1 U67 ( .A1(fy[21]), .B1(n29), .ZN(n18) );
  INVD1 U68 ( .I(fx[21]), .ZN(n31) );
  TIEL U69 ( .ZN(n34) );
  XNR2D1 U70 ( .A1(add_1_root_add_63_2_carry[5]), .A2(px_5_), .ZN(N67) );
  CKXOR2D1 U72 ( .A1(N64), .A2(py_2_), .Z(value[13]) );
  CKXOR2D1 U73 ( .A1(px_2_), .A2(t_2), .Z(N64) );
  IND2D0 U4 ( .A1(px_6_), .B1(n27), .ZN(add_1_root_add_63_2_carry[7]) );
  NR2D0 U5 ( .A1(add_1_root_add_63_2_carry[5]), .A2(px_5_), .ZN(n27) );
  CKXOR2D0 U6 ( .A1(px_6_), .A2(n27), .Z(N68) );
endmodule


module fp32_normal_finite_wrapper_DW01_add_3_DW01_add_6 ( A, B, CI, SUM, CO );
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


module fp32_normal_finite_wrapper_DW01_add_1_DW01_add_4 ( A, B, CI, SUM, CO );
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
  fp32_normal_finite_wrapper_DW01_add_3_DW01_add_6 add_1_root_add_0_root_add_25_2 ( 
        .A(x[30:23]), .B({N42, N41, N40, N39, N38, N37, N36, N11}), .CI(n79), 
        .SUM({N34, N33, N32, N31, N30, N29, N28, N27}) );
  fp32_normal_finite_wrapper_DW01_add_1_DW01_add_4 add_1_root_add_0_root_add_22_2 ( 
        .A(x[30:23]), .B({y[30], N17, N16, N15, N14, N13, N12, N11}), .CI(n79), 
        .SUM({N10, N9, N8, N7, N6, N5, N4, N3}) );
  AN2XD1 U3 ( .A1(exponent_adjust[0]), .A2(N3), .Z(n1) );
  AN2XD1 U4 ( .A1(exponent_adjust[0]), .A2(N27), .Z(n2) );
  INVD1 U37 ( .I(divide_mode), .ZN(n78) );
  AO22D0 U38 ( .A1(N49), .A2(n78), .B1(N25), .B2(divide_mode), .Z(result[29])
         );
  AO22D0 U39 ( .A1(N48), .A2(n78), .B1(N24), .B2(divide_mode), .Z(result[28])
         );
  AO22D0 U40 ( .A1(N47), .A2(n78), .B1(N23), .B2(divide_mode), .Z(result[27])
         );
  AO22D0 U41 ( .A1(N46), .A2(n78), .B1(N22), .B2(divide_mode), .Z(result[26])
         );
  AO22D0 U42 ( .A1(N45), .A2(n78), .B1(N21), .B2(divide_mode), .Z(result[25])
         );
  AO22D0 U43 ( .A1(N44), .A2(n78), .B1(N20), .B2(divide_mode), .Z(result[24])
         );
  FA1D0 U44 ( .A(N4), .B(exponent_adjust[1]), .CI(n1), .CO(
        add_0_root_add_0_root_add_22_2_carry[2]), .S(N20) );
  FA1D0 U45 ( .A(N5), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[2]), .CO(
        add_0_root_add_0_root_add_22_2_carry[3]), .S(N21) );
  FA1D0 U46 ( .A(N6), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[3]), .CO(
        add_0_root_add_0_root_add_22_2_carry[4]), .S(N22) );
  FA1D0 U47 ( .A(N7), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[4]), .CO(
        add_0_root_add_0_root_add_22_2_carry[5]), .S(N23) );
  FA1D0 U48 ( .A(N8), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[5]), .CO(
        add_0_root_add_0_root_add_22_2_carry[6]), .S(N24) );
  FA1D0 U49 ( .A(N9), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[6]), .CO(
        add_0_root_add_0_root_add_22_2_carry[7]), .S(N25) );
  FA1D0 U50 ( .A(N28), .B(exponent_adjust[1]), .CI(n2), .CO(
        add_0_root_add_0_root_add_25_2_carry[2]), .S(N44) );
  FA1D0 U51 ( .A(N29), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[2]), .CO(
        add_0_root_add_0_root_add_25_2_carry[3]), .S(N45) );
  FA1D0 U52 ( .A(N30), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[3]), .CO(
        add_0_root_add_0_root_add_25_2_carry[4]), .S(N46) );
  FA1D0 U53 ( .A(N31), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[4]), .CO(
        add_0_root_add_0_root_add_25_2_carry[5]), .S(N47) );
  FA1D0 U54 ( .A(N32), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[5]), .CO(
        add_0_root_add_0_root_add_25_2_carry[6]), .S(N48) );
  FA1D0 U55 ( .A(N33), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[6]), .CO(
        add_0_root_add_0_root_add_25_2_carry[7]), .S(N49) );
  AO22D0 U56 ( .A1(N43), .A2(n78), .B1(N19), .B2(divide_mode), .Z(result[23])
         );
  CKBD1 U57 ( .I(x[21]), .Z(fraction_x[21]) );
  AO22D0 U58 ( .A1(N50), .A2(n78), .B1(divide_mode), .B2(N26), .Z(result[30])
         );
  XOR3D1 U59 ( .A1(N34), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_25_2_carry[7]), .Z(N50) );
  XOR3D1 U60 ( .A1(N10), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_22_2_carry[7]), .Z(N26) );
  CKBD1 U61 ( .I(y[21]), .Z(fraction_y[21]) );
  CKBD1 U62 ( .I(y[22]), .Z(fraction_y[22]) );
  CKBD1 U63 ( .I(x[22]), .Z(fraction_x[22]) );
  CKBD1 U64 ( .I(x[18]), .Z(fraction_x[18]) );
  CKBD1 U65 ( .I(x[19]), .Z(fraction_x[19]) );
  CKBD1 U66 ( .I(x[17]), .Z(fraction_x[17]) );
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
  CKXOR2D1 U78 ( .A1(y[30]), .A2(n77), .Z(N42) );
  ND2D1 U79 ( .A1(n70), .A2(y[29]), .ZN(n77) );
  CKBD1 U89 ( .I(x[20]), .Z(fraction_x[20]) );
  CKBD1 U90 ( .I(x[16]), .Z(fraction_x[16]) );
  CKBD1 U91 ( .I(y[20]), .Z(fraction_y[20]) );
  CKBD1 U92 ( .I(y[19]), .Z(fraction_y[19]) );
  CKBD1 U93 ( .I(y[18]), .Z(fraction_y[18]) );
  CKBD1 U94 ( .I(y[17]), .Z(fraction_y[17]) );
  CKBD1 U95 ( .I(y[16]), .Z(fraction_y[16]) );
  CKBD1 U96 ( .I(result_fraction[22]), .Z(result[22]) );
  CKBD1 U97 ( .I(result_fraction[21]), .Z(result[21]) );
  CKBD1 U98 ( .I(result_fraction[20]), .Z(result[20]) );
  CKBD1 U99 ( .I(result_fraction[19]), .Z(result[19]) );
  CKBD1 U100 ( .I(result_fraction[18]), .Z(result[18]) );
  CKBD1 U101 ( .I(result_fraction[17]), .Z(result[17]) );
  CKBD1 U102 ( .I(result_fraction[16]), .Z(result[16]) );
  CKBD1 U103 ( .I(result_fraction[15]), .Z(result[15]) );
  CKBD1 U104 ( .I(result_fraction[14]), .Z(result[14]) );
  CKBD1 U105 ( .I(result_fraction[13]), .Z(result[13]) );
  CKBD1 U106 ( .I(result_fraction[12]), .Z(result[12]) );
  CKBD1 U107 ( .I(result_fraction[11]), .Z(result[11]) );
  CKBD1 U108 ( .I(result_fraction[10]), .Z(result[10]) );
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


module unified_div_drop_l2_separate ( x, y, divide_mode, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  input divide_mode;
  wire   n3, n7, n9, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n58,
         n59, n60;
  wire   [22:16] fx;
  wire   [22:16] fy;
  wire   [24:11] div_value;
  wire   [24:13] mul_value;
  wire   [22:10] normalized_fraction;
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
        SYNOPSYS_UNCONNECTED__58, SYNOPSYS_UNCONNECTED__59, 
        SYNOPSYS_UNCONNECTED__60, SYNOPSYS_UNCONNECTED__61, 
        SYNOPSYS_UNCONNECTED__62, SYNOPSYS_UNCONNECTED__63, 
        SYNOPSYS_UNCONNECTED__64, SYNOPSYS_UNCONNECTED__65, 
        SYNOPSYS_UNCONNECTED__66, SYNOPSYS_UNCONNECTED__67, 
        SYNOPSYS_UNCONNECTED__68, SYNOPSYS_UNCONNECTED__69, 
        SYNOPSYS_UNCONNECTED__70, SYNOPSYS_UNCONNECTED__71, 
        SYNOPSYS_UNCONNECTED__72, SYNOPSYS_UNCONNECTED__73;
  assign result[1] = 1'b0;
  assign result[2] = 1'b0;
  assign result[3] = 1'b0;
  assign result[4] = 1'b0;
  assign result[5] = 1'b0;
  assign result[6] = 1'b0;
  assign result[7] = 1'b0;
  assign result[8] = 1'b0;
  assign result[9] = 1'b0;
  assign result[0] = 1'b0;

  unified_div_drop_l2_separate_div div_core ( .fx({fx, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .fy({fy, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .value({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, div_value, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14}) );
  unified_div_drop_l2_separate_mul mul_core ( .fx({fx, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .fy({fy, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .value({SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, mul_value, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31}) );
  fp32_normal_finite_wrapper wrapper ( .x({x[31:16], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y({y[31:16], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .divide_mode(n59), .fraction_x({
        fx, SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, 
        SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39, 
        SYNOPSYS_UNCONNECTED__40, SYNOPSYS_UNCONNECTED__41, 
        SYNOPSYS_UNCONNECTED__42, SYNOPSYS_UNCONNECTED__43, 
        SYNOPSYS_UNCONNECTED__44, SYNOPSYS_UNCONNECTED__45, 
        SYNOPSYS_UNCONNECTED__46, SYNOPSYS_UNCONNECTED__47}), .fraction_y({fy, 
        SYNOPSYS_UNCONNECTED__48, SYNOPSYS_UNCONNECTED__49, 
        SYNOPSYS_UNCONNECTED__50, SYNOPSYS_UNCONNECTED__51, 
        SYNOPSYS_UNCONNECTED__52, SYNOPSYS_UNCONNECTED__53, 
        SYNOPSYS_UNCONNECTED__54, SYNOPSYS_UNCONNECTED__55, 
        SYNOPSYS_UNCONNECTED__56, SYNOPSYS_UNCONNECTED__57, 
        SYNOPSYS_UNCONNECTED__58, SYNOPSYS_UNCONNECTED__59, 
        SYNOPSYS_UNCONNECTED__60, SYNOPSYS_UNCONNECTED__61, 
        SYNOPSYS_UNCONNECTED__62, SYNOPSYS_UNCONNECTED__63}), 
        .result_fraction({normalized_fraction, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .exponent_adjust({exponent_adjust[2], 
        exponent_adjust[2], exponent_adjust[0]}), .result({result[31:10], 
        SYNOPSYS_UNCONNECTED__64, SYNOPSYS_UNCONNECTED__65, 
        SYNOPSYS_UNCONNECTED__66, SYNOPSYS_UNCONNECTED__67, 
        SYNOPSYS_UNCONNECTED__68, SYNOPSYS_UNCONNECTED__69, 
        SYNOPSYS_UNCONNECTED__70, SYNOPSYS_UNCONNECTED__71, 
        SYNOPSYS_UNCONNECTED__72, SYNOPSYS_UNCONNECTED__73}) );
  ND2D1 U78 ( .A1(n9), .A2(n7), .ZN(exponent_adjust[2]) );
  IND3D1 U80 ( .A1(n25), .B1(n26), .B2(n58), .ZN(n9) );
  ND3D1 U81 ( .A1(n26), .A2(n25), .A3(n58), .ZN(n7) );
  ND2D1 U82 ( .A1(n58), .A2(n9), .ZN(exponent_adjust[0]) );
  OAI221D0 U83 ( .A1(n25), .A2(n3), .B1(n58), .B2(n26), .C(n27), .ZN(
        normalized_fraction[22]) );
  OA22D0 U84 ( .A1(n7), .A2(n28), .B1(n9), .B2(n29), .Z(n27) );
  OAI221D0 U85 ( .A1(n29), .A2(n3), .B1(n58), .B2(n25), .C(n30), .ZN(
        normalized_fraction[21]) );
  OA22D0 U86 ( .A1(n7), .A2(n31), .B1(n9), .B2(n28), .Z(n30) );
  OAI221D0 U87 ( .A1(n43), .A2(n3), .B1(n58), .B2(n41), .C(n46), .ZN(
        normalized_fraction[13]) );
  OA22D0 U88 ( .A1(n7), .A2(n47), .B1(n9), .B2(n45), .Z(n46) );
  OAI221D0 U89 ( .A1(n41), .A2(n3), .B1(n58), .B2(n39), .C(n44), .ZN(
        normalized_fraction[14]) );
  OA22D0 U90 ( .A1(n7), .A2(n45), .B1(n9), .B2(n43), .Z(n44) );
  OAI221D0 U91 ( .A1(n39), .A2(n3), .B1(n58), .B2(n37), .C(n42), .ZN(
        normalized_fraction[15]) );
  OA22D0 U92 ( .A1(n7), .A2(n43), .B1(n9), .B2(n41), .Z(n42) );
  OAI221D0 U93 ( .A1(n37), .A2(n3), .B1(n58), .B2(n35), .C(n40), .ZN(
        normalized_fraction[16]) );
  OA22D0 U94 ( .A1(n7), .A2(n41), .B1(n9), .B2(n39), .Z(n40) );
  OAI221D0 U95 ( .A1(n35), .A2(n3), .B1(n58), .B2(n33), .C(n38), .ZN(
        normalized_fraction[17]) );
  OA22D0 U96 ( .A1(n7), .A2(n39), .B1(n9), .B2(n37), .Z(n38) );
  OAI221D0 U97 ( .A1(n33), .A2(n3), .B1(n58), .B2(n31), .C(n36), .ZN(
        normalized_fraction[18]) );
  OA22D0 U98 ( .A1(n7), .A2(n37), .B1(n9), .B2(n35), .Z(n36) );
  OAI221D0 U99 ( .A1(n31), .A2(n3), .B1(n58), .B2(n28), .C(n34), .ZN(
        normalized_fraction[19]) );
  OA22D0 U100 ( .A1(n7), .A2(n35), .B1(n9), .B2(n33), .Z(n34) );
  OAI221D0 U101 ( .A1(n28), .A2(n3), .B1(n58), .B2(n29), .C(n32), .ZN(
        normalized_fraction[20]) );
  OA22D0 U102 ( .A1(n7), .A2(n33), .B1(n9), .B2(n31), .Z(n32) );
  OAI221D0 U103 ( .A1(n45), .A2(n3), .B1(n58), .B2(n43), .C(n48), .ZN(
        normalized_fraction[12]) );
  IND2D1 U106 ( .A1(n26), .B1(n58), .ZN(n3) );
  OAI22D1 U107 ( .A1(n47), .A2(n3), .B1(n58), .B2(n45), .ZN(
        normalized_fraction[11]) );
  NR2D1 U108 ( .A1(n58), .A2(n47), .ZN(normalized_fraction[10]) );
  ND2D1 U109 ( .A1(div_value[12]), .A2(n59), .ZN(n45) );
  ND2D1 U110 ( .A1(div_value[11]), .A2(n59), .ZN(n47) );
  AOI22D1 U113 ( .A1(mul_value[23]), .A2(n60), .B1(div_value[23]), .B2(n59), 
        .ZN(n26) );
  AOI22D1 U114 ( .A1(mul_value[22]), .A2(n60), .B1(div_value[22]), .B2(n59), 
        .ZN(n25) );
  AOI22D1 U115 ( .A1(mul_value[21]), .A2(n60), .B1(div_value[21]), .B2(n59), 
        .ZN(n29) );
  AOI22D1 U116 ( .A1(mul_value[20]), .A2(n60), .B1(div_value[20]), .B2(n59), 
        .ZN(n28) );
  AOI22D1 U117 ( .A1(mul_value[19]), .A2(n60), .B1(div_value[19]), .B2(n59), 
        .ZN(n31) );
  AOI22D1 U118 ( .A1(mul_value[18]), .A2(n60), .B1(div_value[18]), .B2(n59), 
        .ZN(n33) );
  AOI22D1 U119 ( .A1(mul_value[17]), .A2(n60), .B1(div_value[17]), .B2(n59), 
        .ZN(n35) );
  AOI22D1 U120 ( .A1(mul_value[16]), .A2(n60), .B1(div_value[16]), .B2(n59), 
        .ZN(n37) );
  AOI22D1 U121 ( .A1(mul_value[15]), .A2(n60), .B1(div_value[15]), .B2(n59), 
        .ZN(n39) );
  AOI22D1 U122 ( .A1(mul_value[14]), .A2(n60), .B1(div_value[14]), .B2(n59), 
        .ZN(n41) );
  AOI22D1 U123 ( .A1(mul_value[13]), .A2(n60), .B1(div_value[13]), .B2(n59), 
        .ZN(n43) );
  INVD1 U124 ( .I(n60), .ZN(n59) );
  INVD1 U132 ( .I(divide_mode), .ZN(n60) );
  OR2D1 U79 ( .A1(n9), .A2(n47), .Z(n48) );
  AOI22D1 U104 ( .A1(n60), .A2(mul_value[24]), .B1(div_value[24]), .B2(n59), 
        .ZN(n58) );
endmodule

