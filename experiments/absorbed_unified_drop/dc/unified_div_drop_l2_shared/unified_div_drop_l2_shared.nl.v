/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Wed Sep 16 00:51:12 2026
/////////////////////////////////////////////////////////////


module unified_div_drop_l2_shared_core_DW_mult_tc_1 ( a, b, product );
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
  INVD1 U68 ( .I(b[2]), .ZN(n107) );
  INVD1 U69 ( .I(b[3]), .ZN(n106) );
  INVD1 U70 ( .I(b[0]), .ZN(n108) );
  INVD1 U71 ( .I(b[4]), .ZN(n109) );
  INVD1 U72 ( .I(b[1]), .ZN(n111) );
  INVD1 U73 ( .I(b[5]), .ZN(n110) );
  CKBD1 U74 ( .I(product[10]), .Z(product[11]) );
  INVD1 U75 ( .I(a[2]), .ZN(n113) );
  INVD1 U76 ( .I(a[0]), .ZN(n115) );
  INVD1 U77 ( .I(a[1]), .ZN(n114) );
  INVD1 U78 ( .I(a[3]), .ZN(n112) );
  CKND0 U79 ( .I(n2), .ZN(product[10]) );
  NR2D0 U80 ( .A1(n115), .A2(n108), .ZN(product[0]) );
  NR2D0 U81 ( .A1(n115), .A2(n111), .ZN(n65) );
  NR2D0 U82 ( .A1(n115), .A2(n107), .ZN(n64) );
  NR2D0 U83 ( .A1(n115), .A2(n106), .ZN(n63) );
  NR2D0 U84 ( .A1(n115), .A2(n110), .ZN(n61) );
  NR2D0 U85 ( .A1(n108), .A2(n114), .ZN(n60) );
  NR2D0 U86 ( .A1(n111), .A2(n114), .ZN(n59) );
  NR2D0 U87 ( .A1(n107), .A2(n114), .ZN(n58) );
  NR2D0 U88 ( .A1(n106), .A2(n114), .ZN(n57) );
  NR2D0 U89 ( .A1(n114), .A2(n109), .ZN(n56) );
  NR2D0 U90 ( .A1(n110), .A2(n114), .ZN(n55) );
  NR2D0 U91 ( .A1(n108), .A2(n113), .ZN(n54) );
  NR2D0 U92 ( .A1(n111), .A2(n113), .ZN(n53) );
  NR2D0 U93 ( .A1(n106), .A2(n113), .ZN(n51) );
  NR2D0 U94 ( .A1(n109), .A2(n113), .ZN(n50) );
  NR2D0 U95 ( .A1(n110), .A2(n113), .ZN(n49) );
  NR2D0 U96 ( .A1(n108), .A2(n112), .ZN(n48) );
  NR2D0 U97 ( .A1(n111), .A2(n112), .ZN(n47) );
  NR2D0 U98 ( .A1(n107), .A2(n112), .ZN(n46) );
  NR2D0 U99 ( .A1(n106), .A2(n112), .ZN(n45) );
  NR2D0 U100 ( .A1(n109), .A2(n112), .ZN(n44) );
  NR2D0 U101 ( .A1(n110), .A2(n112), .ZN(n43) );
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


module unified_div_drop_l2_shared_core_DW01_add_1 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [13:2] carry;

  FA1D0 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  FA1D0 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  FA1D0 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA1D0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1D0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1D0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1D0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA1D0 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA1D0 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FA1D0 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FA1D0 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  XOR3D1 U1_13 ( .A1(A[13]), .A2(B[13]), .A3(carry[13]), .Z(SUM[13]) );
  FA1D0 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  AN2XD1 U1 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
  CKXOR2D1 U2 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
endmodule


module unified_div_drop_l2_shared_core_DW01_add_0 ( A, B, CI, SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
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
  FA1D0 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FA1D0 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FA1D0 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  XOR3D1 U1_13 ( .A1(A[13]), .A2(B[13]), .A3(carry[13]), .Z(SUM[13]) );
  AN2XD1 U1 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
  CKXOR2D1 U2 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
endmodule


module unified_div_drop_l2_shared_core_DW_mult_tc_0 ( a, b, product );
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
  INVD1 U69 ( .I(b[4]), .ZN(n109) );
  INVD1 U70 ( .I(b[0]), .ZN(n107) );
  INVD1 U71 ( .I(b[5]), .ZN(n106) );
  INVD1 U72 ( .I(b[3]), .ZN(n108) );
  INVD1 U73 ( .I(b[1]), .ZN(n111) );
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


module unified_div_drop_l2_shared_core ( fx, fy, divide_mode, value );
  input [22:0] fx;
  input [22:0] fy;
  output [28:0] value;
  input divide_mode;
  wire   rx_4_, ry_4_, N131, N132, N133, N134, N135, N136, N137, N138, N139,
         N140, N141, N142, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104,
         n105, n106, n107, n108, n109, n110, n111, n112, px_9_, px_8_, px_7_,
         px_6_, px_5_, px_4_, px_3_, px_2_, px_1_, px_11_, px_10_, px_0_, N157,
         N156, N155, N154, N153, N152, N151, N150, N149, N148, N147, N146,
         N145, N144, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n24,
         n25, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n1310, n1320, n1330, n1340,
         n1350, n1360;
  wire   [5:0] a;
  wire   [5:0] b;
  wire   [13:0] t;
  wire   [11:1] py;
  wire   [16:1] signed_y;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4;

  AN4XD1 U10 ( .A1(n35), .A2(n36), .A3(n37), .A4(n38), .Z(n34) );
  AN4XD1 U11 ( .A1(n39), .A2(n40), .A3(n28), .A4(n41), .Z(n29) );
  AN3XD1 U12 ( .A1(n42), .A2(n43), .A3(n44), .Z(n41) );
  AN4XD1 U16 ( .A1(n40), .A2(n37), .A3(n51), .A4(n125), .Z(n47) );
  AN3XD1 U24 ( .A1(n40), .A2(n64), .A3(n65), .Z(n55) );
  AN3XD1 U27 ( .A1(n67), .A2(n68), .A3(n31), .Z(n56) );
  AN4XD1 U28 ( .A1(n69), .A2(n70), .A3(n71), .A4(n72), .Z(n31) );
  AN4XD1 U31 ( .A1(n37), .A2(n36), .A3(n75), .A4(n76), .Z(n69) );
  AN2XD1 U32 ( .A1(n77), .A2(n64), .Z(n75) );
  AN4XD1 U51 ( .A1(n57), .A2(n77), .A3(n82), .A4(n83), .Z(n65) );
  AN3XD1 U52 ( .A1(n49), .A2(n84), .A3(n51), .Z(n83) );
  AN2XD1 U59 ( .A1(n72), .A2(n37), .Z(n90) );
  AN3XD1 U61 ( .A1(n49), .A2(n43), .A3(n76), .Z(n50) );
  AN3XD1 U62 ( .A1(n84), .A2(n30), .A3(n129), .Z(n59) );
  AN4XD1 U66 ( .A1(n45), .A2(n42), .A3(n38), .A4(n33), .Z(n94) );
  AN4XD1 U67 ( .A1(n67), .A2(n70), .A3(n71), .A4(n73), .Z(n86) );
  AN3XD1 U73 ( .A1(n36), .A2(n76), .A3(n61), .Z(n79) );
  AN2XD1 U74 ( .A1(n52), .A2(n60), .Z(n61) );
  AN2XD1 U79 ( .A1(n64), .A2(n54), .Z(n99) );
  AN3XD1 U80 ( .A1(n38), .A2(n73), .A3(n88), .Z(n54) );
  AN2XD1 U90 ( .A1(n105), .A2(n98), .Z(n46) );
  AN3XD1 U93 ( .A1(n89), .A2(n33), .A3(n67), .Z(n82) );
  AN2XD1 U96 ( .A1(n107), .A2(n1330), .Z(n103) );
  AN2XD1 U98 ( .A1(n107), .A2(fx[21]), .Z(n105) );
  AN3XD1 U100 ( .A1(n71), .A2(n45), .A3(n44), .Z(n81) );
  AN2XD1 U104 ( .A1(n108), .A2(n24), .Z(n100) );
  AN2XD1 U120 ( .A1(n112), .A2(fy[22]), .Z(n97) );
  AN2XD1 U124 ( .A1(n112), .A2(n1340), .Z(n110) );
  AN2XD1 U128 ( .A1(fy[21]), .A2(n1310), .Z(n101) );
  AN2XD1 U129 ( .A1(n108), .A2(divide_mode), .Z(n111) );
  AN2XD1 U132 ( .A1(fy[21]), .A2(fx[22]), .Z(n106) );
  unified_div_drop_l2_shared_core_DW_mult_tc_1 mult_44 ( .a({rx_4_, fx[19:16]}), .b({n1350, a}), .product({px_11_, px_10_, px_9_, px_8_, px_7_, px_6_, px_5_, 
        px_4_, px_3_, px_2_, px_1_, px_0_}) );
  unified_div_drop_l2_shared_core_DW01_add_1 add_1_root_add_47_2 ( .A({n1350, 
        n1350, t}), .B({px_11_, px_11_, px_11_, px_11_, px_11_, px_10_, px_9_, 
        px_8_, px_7_, px_6_, px_5_, px_4_, px_3_, px_2_, px_1_, px_0_}), .CI(
        n1350), .SUM({SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, N157, 
        N156, N155, N154, N153, N152, N151, N150, N149, N148, N147, N146, N145, 
        N144}) );
  unified_div_drop_l2_shared_core_DW01_add_0 add_0_root_add_47_2 ( .A({
        signed_y[16], signed_y[16], signed_y[16], signed_y[16], signed_y[16], 
        signed_y[11:1], N131}), .B({1'b0, 1'b0, 1'b0, N157, N156, N155, N154, 
        N153, N152, N151, N150, N149, N148, N147, N146, N145, N144}), .CI(
        n1350), .SUM({SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, value[24:11]}) );
  unified_div_drop_l2_shared_core_DW_mult_tc_0 mult_44_S2 ( .a({ry_4_, 
        fy[19:16]}), .b({n1350, b}), .product({py, N131}) );
  INR2D1 U20 ( .A1(n81), .B1(n93), .ZN(n53) );
  ND4D1 U21 ( .A1(n61), .A2(n129), .A3(n26), .A4(n125), .ZN(b[2]) );
  INVD1 U22 ( .I(a[5]), .ZN(n125) );
  ND4D1 U23 ( .A1(n61), .A2(n55), .A3(n62), .A4(n54), .ZN(t[12]) );
  NR2D1 U25 ( .A1(n1320), .A2(n63), .ZN(n62) );
  AN2XD1 U26 ( .A1(n21), .A2(n122), .Z(n13) );
  INVD1 U29 ( .I(n91), .ZN(n129) );
  AN2XD1 U30 ( .A1(n15), .A2(n120), .Z(n14) );
  AN2XD1 U33 ( .A1(n16), .A2(n119), .Z(n15) );
  AN2XD1 U34 ( .A1(n17), .A2(n118), .Z(n16) );
  AN2XD1 U35 ( .A1(n18), .A2(n117), .Z(n17) );
  INVD1 U36 ( .I(n63), .ZN(n123) );
  AN2XD1 U37 ( .A1(n19), .A2(n116), .Z(n18) );
  AN2XD1 U38 ( .A1(n20), .A2(n115), .Z(n19) );
  ND4D1 U39 ( .A1(n79), .A2(n65), .A3(n80), .A4(n81), .ZN(b[4]) );
  NR2D1 U40 ( .A1(n126), .A2(n124), .ZN(n80) );
  INVD1 U41 ( .I(a[1]), .ZN(n127) );
  AN2XD1 U42 ( .A1(n22), .A2(n114), .Z(n20) );
  NR2D1 U43 ( .A1(n1320), .A2(n130), .ZN(n58) );
  INVD1 U44 ( .I(n53), .ZN(t[13]) );
  ND4D1 U45 ( .A1(n74), .A2(n53), .A3(n77), .A4(n99), .ZN(a[5]) );
  ND4D1 U47 ( .A1(n82), .A2(n42), .A3(n104), .A4(n70), .ZN(n93) );
  NR2D1 U48 ( .A1(n126), .A2(n46), .ZN(n104) );
  INVD1 U49 ( .I(n68), .ZN(n126) );
  ND3D1 U50 ( .A1(n40), .A2(n125), .A3(n123), .ZN(b[5]) );
  IND4D1 U53 ( .A1(b[5]), .B1(n79), .B2(n26), .B3(n57), .ZN(a[2]) );
  ND4D1 U54 ( .A1(n69), .A2(n40), .A3(n58), .A4(n30), .ZN(t[10]) );
  ND4D1 U55 ( .A1(n56), .A2(n54), .A3(n66), .A4(n39), .ZN(t[11]) );
  NR2D1 U56 ( .A1(n124), .A2(n128), .ZN(n66) );
  INVD1 U57 ( .I(py[8]), .ZN(n120) );
  ND3D1 U58 ( .A1(n29), .A2(n30), .A3(n31), .ZN(t[8]) );
  INVD1 U60 ( .I(py[7]), .ZN(n119) );
  AN2XD1 U63 ( .A1(n14), .A2(n121), .Z(n21) );
  IND4D1 U64 ( .A1(n32), .B1(n29), .B2(n33), .B3(n34), .ZN(t[7]) );
  ND4D1 U65 ( .A1(n59), .A2(n50), .A3(n52), .A4(n36), .ZN(b[0]) );
  ND3D1 U68 ( .A1(n37), .A2(n48), .A3(n57), .ZN(n91) );
  INVD1 U69 ( .I(py[6]), .ZN(n118) );
  ND4D1 U70 ( .A1(n47), .A2(n48), .A3(n49), .A4(n35), .ZN(t[6]) );
  INVD1 U71 ( .I(py[5]), .ZN(n117) );
  INR2D1 U72 ( .A1(n51), .B1(n78), .ZN(n26) );
  INVD1 U75 ( .I(py[4]), .ZN(n116) );
  ND4D1 U76 ( .A1(n50), .A2(n47), .A3(n39), .A4(n30), .ZN(t[5]) );
  ND2D1 U77 ( .A1(n72), .A2(n49), .ZN(n78) );
  ND4D1 U78 ( .A1(n26), .A2(n52), .A3(n30), .A4(n53), .ZN(t[4]) );
  IND4D1 U81 ( .A1(n85), .B1(n86), .B2(n129), .B3(n87), .ZN(b[3]) );
  IND4D1 U82 ( .A1(n46), .B1(n44), .B2(n72), .B3(n30), .ZN(n85) );
  INR2D1 U83 ( .A1(n39), .B1(n32), .ZN(n87) );
  INVD1 U84 ( .I(py[3]), .ZN(n115) );
  ND3D1 U85 ( .A1(n88), .A2(n51), .A3(n89), .ZN(n32) );
  ND4D1 U86 ( .A1(n50), .A2(n52), .A3(n90), .A4(n39), .ZN(b[1]) );
  ND3D1 U87 ( .A1(n30), .A2(n43), .A3(n35), .ZN(n63) );
  ND3D1 U88 ( .A1(n54), .A2(n36), .A3(n55), .ZN(t[3]) );
  INVD1 U89 ( .I(py[2]), .ZN(n114) );
  ND4D1 U91 ( .A1(n123), .A2(n57), .A3(n86), .A4(n94), .ZN(a[3]) );
  ND4D1 U92 ( .A1(n56), .A2(n57), .A3(n58), .A4(n51), .ZN(t[2]) );
  ND4D1 U94 ( .A1(n84), .A2(n127), .A3(n39), .A4(n109), .ZN(a[0]) );
  NR2D1 U95 ( .A1(n63), .A2(n91), .ZN(n109) );
  ND4D1 U97 ( .A1(n52), .A2(n40), .A3(n76), .A4(n51), .ZN(a[1]) );
  IND4D1 U99 ( .A1(a[0]), .B1(n64), .B2(n36), .B3(n92), .ZN(a[4]) );
  INR3D0 U101 ( .A1(n60), .B1(n93), .B2(n78), .ZN(n92) );
  INVD1 U102 ( .I(n35), .ZN(n124) );
  IND3D1 U106 ( .A1(n78), .B1(n35), .B2(n129), .ZN(t[0]) );
  INVD1 U107 ( .I(n73), .ZN(n130) );
  INVD1 U108 ( .I(n74), .ZN(n1320) );
  INR3D0 U109 ( .A1(n45), .B1(n46), .B2(n128), .ZN(n28) );
  INVD1 U110 ( .I(n48), .ZN(n128) );
  ND2D1 U111 ( .A1(n106), .A2(n103), .ZN(n33) );
  AO22D0 U112 ( .A1(py[10]), .A2(n24), .B1(N141), .B2(divide_mode), .Z(
        signed_y[10]) );
  AO22D0 U113 ( .A1(n24), .A2(py[11]), .B1(N142), .B2(divide_mode), .Z(
        signed_y[11]) );
  NR2D1 U114 ( .A1(n1340), .A2(divide_mode), .ZN(n107) );
  ND2D1 U115 ( .A1(n105), .A2(n106), .ZN(n67) );
  ND2D1 U116 ( .A1(n96), .A2(n103), .ZN(n68) );
  ND2D1 U117 ( .A1(n105), .A2(n96), .ZN(n89) );
  AO22D0 U118 ( .A1(py[9]), .A2(n24), .B1(N140), .B2(divide_mode), .Z(
        signed_y[9]) );
  INVD1 U119 ( .I(py[9]), .ZN(n121) );
  ND2D1 U121 ( .A1(n96), .A2(n100), .ZN(n44) );
  ND4D1 U126 ( .A1(n123), .A2(n26), .A3(n27), .A4(n28), .ZN(t[9]) );
  NR2D1 U127 ( .A1(n130), .A2(n126), .ZN(n27) );
  ND2D1 U130 ( .A1(n101), .A2(n100), .ZN(n73) );
  ND2D1 U131 ( .A1(n98), .A2(n100), .ZN(n88) );
  ND2D1 U133 ( .A1(n106), .A2(n100), .ZN(n71) );
  AO22D0 U134 ( .A1(py[8]), .A2(n24), .B1(N139), .B2(divide_mode), .Z(
        signed_y[8]) );
  ND2D1 U135 ( .A1(n102), .A2(n106), .ZN(n45) );
  AO22D0 U136 ( .A1(py[7]), .A2(n24), .B1(N138), .B2(divide_mode), .Z(
        signed_y[7]) );
  ND2D1 U137 ( .A1(n103), .A2(n101), .ZN(n42) );
  ND2D1 U138 ( .A1(n105), .A2(n101), .ZN(n70) );
  ND2D1 U139 ( .A1(n102), .A2(n101), .ZN(n38) );
  ND2D1 U140 ( .A1(n110), .A2(n98), .ZN(n57) );
  AO22D0 U141 ( .A1(py[6]), .A2(n24), .B1(N137), .B2(divide_mode), .Z(
        signed_y[6]) );
  AO22D0 U142 ( .A1(py[5]), .A2(n24), .B1(N136), .B2(divide_mode), .Z(
        signed_y[5]) );
  ND2D1 U143 ( .A1(n106), .A2(n110), .ZN(n51) );
  AO22D0 U144 ( .A1(py[4]), .A2(n24), .B1(N135), .B2(divide_mode), .Z(
        signed_y[4]) );
  ND2D1 U145 ( .A1(n97), .A2(n98), .ZN(n72) );
  ND2D1 U146 ( .A1(n98), .A2(n103), .ZN(n64) );
  ND2D1 U147 ( .A1(n97), .A2(n106), .ZN(n37) );
  NR3D0 U148 ( .A1(n1340), .A2(n1330), .A3(n24), .ZN(n95) );
  ND2D1 U149 ( .A1(n95), .A2(n101), .ZN(n48) );
  ND2D1 U150 ( .A1(n95), .A2(n96), .ZN(n49) );
  AO22D0 U151 ( .A1(py[3]), .A2(n24), .B1(N134), .B2(divide_mode), .Z(
        signed_y[3]) );
  ND2D1 U152 ( .A1(n110), .A2(n96), .ZN(n30) );
  ND2D1 U153 ( .A1(n110), .A2(n101), .ZN(n76) );
  ND2D1 U154 ( .A1(n97), .A2(n101), .ZN(n39) );
  ND2D1 U155 ( .A1(n97), .A2(n96), .ZN(n60) );
  ND2D1 U156 ( .A1(n98), .A2(n111), .ZN(n43) );
  ND2D1 U157 ( .A1(n102), .A2(n96), .ZN(n77) );
  ND2D1 U158 ( .A1(n111), .A2(n101), .ZN(n52) );
  ND2D1 U159 ( .A1(n111), .A2(n96), .ZN(n35) );
  AO22D0 U160 ( .A1(py[2]), .A2(n24), .B1(N133), .B2(divide_mode), .Z(
        signed_y[2]) );
  ND2D1 U161 ( .A1(n102), .A2(n98), .ZN(n74) );
  ND2D1 U162 ( .A1(n95), .A2(n106), .ZN(n84) );
  ND2D1 U163 ( .A1(n95), .A2(n98), .ZN(n36) );
  ND2D1 U164 ( .A1(n106), .A2(n111), .ZN(n40) );
  AO22D0 U165 ( .A1(py[1]), .A2(n24), .B1(N132), .B2(divide_mode), .Z(
        signed_y[1]) );
  ND4D1 U167 ( .A1(n59), .A2(n60), .A3(n35), .A4(n127), .ZN(t[1]) );
  INVD1 U169 ( .I(fy[22]), .ZN(n1340) );
  NR2D1 U170 ( .A1(n1330), .A2(fy[22]), .ZN(n108) );
  INVD1 U171 ( .I(fx[21]), .ZN(n1330) );
  NR3D0 U172 ( .A1(fx[21]), .A2(fy[22]), .A3(divide_mode), .ZN(n102) );
  NR2D1 U173 ( .A1(n1310), .A2(fy[21]), .ZN(n96) );
  INVD1 U174 ( .I(fx[22]), .ZN(n1310) );
  NR2D1 U175 ( .A1(n24), .A2(fx[21]), .ZN(n112) );
  NR2D1 U176 ( .A1(fy[21]), .A2(fx[22]), .ZN(n98) );
  INVD1 U177 ( .I(fy[20]), .ZN(ry_4_) );
  INVD1 U178 ( .I(fx[20]), .ZN(rx_4_) );
  TIEL U179 ( .ZN(n1350) );
  CKXOR2D1 U180 ( .A1(n25), .A2(n113), .Z(N132) );
  CKXOR2D1 U181 ( .A1(n22), .A2(n114), .Z(N133) );
  CKXOR2D1 U182 ( .A1(n20), .A2(n115), .Z(N134) );
  CKXOR2D1 U183 ( .A1(n19), .A2(n116), .Z(N135) );
  CKXOR2D1 U184 ( .A1(n18), .A2(n117), .Z(N136) );
  CKXOR2D1 U185 ( .A1(n17), .A2(n118), .Z(N137) );
  CKXOR2D1 U186 ( .A1(n16), .A2(n119), .Z(N138) );
  CKXOR2D1 U187 ( .A1(n15), .A2(n120), .Z(N139) );
  CKXOR2D1 U188 ( .A1(n14), .A2(n121), .Z(N140) );
  CKXOR2D1 U189 ( .A1(n21), .A2(n122), .Z(N141) );
  CKXOR2D1 U190 ( .A1(n13), .A2(n122), .Z(N142) );
  OAI31D0 U3 ( .A1(py[11]), .A2(n13), .A3(n24), .B(n1360), .ZN(signed_y[16])
         );
  CKND2D0 U4 ( .A1(py[11]), .A2(n24), .ZN(n1360) );
  CKND0 U5 ( .I(divide_mode), .ZN(n24) );
  CKND0 U6 ( .I(py[11]), .ZN(n122) );
  CKND0 U7 ( .I(N131), .ZN(n25) );
  CKND0 U8 ( .I(py[1]), .ZN(n113) );
  NR2D0 U9 ( .A1(N131), .A2(py[1]), .ZN(n22) );
endmodule


module fp32_normal_finite_wrapper_DW01_add_3_DW01_add_5 ( A, B, CI, SUM, CO );
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


module fp32_normal_finite_wrapper_DW01_add_1_DW01_add_3 ( A, B, CI, SUM, CO );
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
  fp32_normal_finite_wrapper_DW01_add_3_DW01_add_5 add_1_root_add_0_root_add_25_2 ( 
        .A(x[30:23]), .B({N42, N41, N40, N39, N38, N37, N36, N11}), .CI(n79), 
        .SUM({N34, N33, N32, N31, N30, N29, N28, N27}) );
  fp32_normal_finite_wrapper_DW01_add_1_DW01_add_3 add_1_root_add_0_root_add_22_2 ( 
        .A(x[30:23]), .B({y[30], N17, N16, N15, N14, N13, N12, N11}), .CI(n79), 
        .SUM({N10, N9, N8, N7, N6, N5, N4, N3}) );
  AN2XD1 U3 ( .A1(exponent_adjust[0]), .A2(N3), .Z(n1) );
  AN2XD1 U4 ( .A1(exponent_adjust[0]), .A2(N27), .Z(n2) );
  CKBD1 U37 ( .I(result_fraction[10]), .Z(result[10]) );
  CKBD1 U38 ( .I(result_fraction[12]), .Z(result[12]) );
  CKBD1 U39 ( .I(result_fraction[11]), .Z(result[11]) );
  CKBD1 U40 ( .I(result_fraction[13]), .Z(result[13]) );
  AO22D0 U41 ( .A1(N49), .A2(n78), .B1(N25), .B2(divide_mode), .Z(result[29])
         );
  AO22D0 U42 ( .A1(N48), .A2(n78), .B1(N24), .B2(divide_mode), .Z(result[28])
         );
  AO22D0 U43 ( .A1(N47), .A2(n78), .B1(N23), .B2(divide_mode), .Z(result[27])
         );
  AO22D0 U44 ( .A1(N46), .A2(n78), .B1(N22), .B2(divide_mode), .Z(result[26])
         );
  AO22D0 U45 ( .A1(N45), .A2(n78), .B1(N21), .B2(divide_mode), .Z(result[25])
         );
  AO22D0 U46 ( .A1(N44), .A2(n78), .B1(N20), .B2(divide_mode), .Z(result[24])
         );
  INVD1 U47 ( .I(divide_mode), .ZN(n78) );
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
  AO22D0 U60 ( .A1(N43), .A2(n78), .B1(N19), .B2(divide_mode), .Z(result[23])
         );
  AO22D0 U61 ( .A1(N50), .A2(n78), .B1(divide_mode), .B2(N26), .Z(result[30])
         );
  XOR3D1 U62 ( .A1(N34), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_25_2_carry[7]), .Z(N50) );
  XOR3D1 U63 ( .A1(N10), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_22_2_carry[7]), .Z(N26) );
  AN2XD1 U64 ( .A1(y[23]), .A2(y[24]), .Z(n35) );
  INVD1 U65 ( .I(y[29]), .ZN(N17) );
  INVD0 U66 ( .I(y[24]), .ZN(N12) );
  INVD1 U67 ( .I(y[25]), .ZN(N13) );
  INVD1 U68 ( .I(y[26]), .ZN(N14) );
  INVD1 U69 ( .I(y[27]), .ZN(N15) );
  INVD1 U70 ( .I(y[28]), .ZN(N16) );
  AN2XD1 U71 ( .A1(n35), .A2(y[25]), .Z(n410) );
  AN2XD1 U72 ( .A1(n410), .A2(y[26]), .Z(n51) );
  AN2XD1 U73 ( .A1(n51), .A2(y[27]), .Z(n60) );
  AN2XD1 U74 ( .A1(n60), .A2(y[28]), .Z(n70) );
  CKXOR2D1 U75 ( .A1(y[30]), .A2(n77), .Z(N42) );
  ND2D1 U76 ( .A1(n70), .A2(y[29]), .ZN(n77) );
  CKBD1 U87 ( .I(x[22]), .Z(fraction_x[22]) );
  CKBD1 U88 ( .I(x[21]), .Z(fraction_x[21]) );
  CKBD1 U89 ( .I(x[20]), .Z(fraction_x[20]) );
  CKBD1 U90 ( .I(x[19]), .Z(fraction_x[19]) );
  CKBD1 U91 ( .I(x[18]), .Z(fraction_x[18]) );
  CKBD1 U92 ( .I(x[17]), .Z(fraction_x[17]) );
  CKBD1 U93 ( .I(x[16]), .Z(fraction_x[16]) );
  CKBD1 U94 ( .I(y[22]), .Z(fraction_y[22]) );
  CKBD1 U95 ( .I(y[21]), .Z(fraction_y[21]) );
  CKBD1 U96 ( .I(y[20]), .Z(fraction_y[20]) );
  CKBD1 U97 ( .I(y[19]), .Z(fraction_y[19]) );
  CKBD1 U98 ( .I(y[18]), .Z(fraction_y[18]) );
  CKBD1 U99 ( .I(y[17]), .Z(fraction_y[17]) );
  CKBD1 U100 ( .I(y[16]), .Z(fraction_y[16]) );
  CKBD1 U101 ( .I(result_fraction[22]), .Z(result[22]) );
  CKBD1 U102 ( .I(result_fraction[21]), .Z(result[21]) );
  CKBD1 U103 ( .I(result_fraction[20]), .Z(result[20]) );
  CKBD1 U104 ( .I(result_fraction[19]), .Z(result[19]) );
  CKBD1 U105 ( .I(result_fraction[18]), .Z(result[18]) );
  CKBD1 U106 ( .I(result_fraction[17]), .Z(result[17]) );
  CKBD1 U107 ( .I(result_fraction[16]), .Z(result[16]) );
  CKBD1 U108 ( .I(result_fraction[15]), .Z(result[15]) );
  CKBD1 U109 ( .I(result_fraction[14]), .Z(result[14]) );
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


module unified_div_drop_l2_shared ( x, y, divide_mode, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  input divide_mode;
  wire   n27, n29, n30, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n51, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67;
  wire   [22:16] fx;
  wire   [22:16] fy;
  wire   [24:11] core_value;
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
        SYNOPSYS_UNCONNECTED__56;
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

  unified_div_drop_l2_shared_core shared_core ( .fx({fx, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .fy({fy, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .divide_mode(n51), .value(
        {SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, core_value, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14}) );
  fp32_normal_finite_wrapper wrapper ( .x({x[31:16], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y({y[31:16], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .divide_mode(n51), .fraction_x({
        fx, SYNOPSYS_UNCONNECTED__15, SYNOPSYS_UNCONNECTED__16, 
        SYNOPSYS_UNCONNECTED__17, SYNOPSYS_UNCONNECTED__18, 
        SYNOPSYS_UNCONNECTED__19, SYNOPSYS_UNCONNECTED__20, 
        SYNOPSYS_UNCONNECTED__21, SYNOPSYS_UNCONNECTED__22, 
        SYNOPSYS_UNCONNECTED__23, SYNOPSYS_UNCONNECTED__24, 
        SYNOPSYS_UNCONNECTED__25, SYNOPSYS_UNCONNECTED__26, 
        SYNOPSYS_UNCONNECTED__27, SYNOPSYS_UNCONNECTED__28, 
        SYNOPSYS_UNCONNECTED__29, SYNOPSYS_UNCONNECTED__30}), .fraction_y({fy, 
        SYNOPSYS_UNCONNECTED__31, SYNOPSYS_UNCONNECTED__32, 
        SYNOPSYS_UNCONNECTED__33, SYNOPSYS_UNCONNECTED__34, 
        SYNOPSYS_UNCONNECTED__35, SYNOPSYS_UNCONNECTED__36, 
        SYNOPSYS_UNCONNECTED__37, SYNOPSYS_UNCONNECTED__38, 
        SYNOPSYS_UNCONNECTED__39, SYNOPSYS_UNCONNECTED__40, 
        SYNOPSYS_UNCONNECTED__41, SYNOPSYS_UNCONNECTED__42, 
        SYNOPSYS_UNCONNECTED__43, SYNOPSYS_UNCONNECTED__44, 
        SYNOPSYS_UNCONNECTED__45, SYNOPSYS_UNCONNECTED__46}), 
        .result_fraction({normalized_fraction, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .exponent_adjust({exponent_adjust[2], 
        exponent_adjust[2], exponent_adjust[0]}), .result({result[31:10], 
        SYNOPSYS_UNCONNECTED__47, SYNOPSYS_UNCONNECTED__48, 
        SYNOPSYS_UNCONNECTED__49, SYNOPSYS_UNCONNECTED__50, 
        SYNOPSYS_UNCONNECTED__51, SYNOPSYS_UNCONNECTED__52, 
        SYNOPSYS_UNCONNECTED__53, SYNOPSYS_UNCONNECTED__54, 
        SYNOPSYS_UNCONNECTED__55, SYNOPSYS_UNCONNECTED__56}) );
  INVD1 U78 ( .I(n30), .ZN(n54) );
  ND2D1 U79 ( .A1(n53), .A2(n54), .ZN(exponent_adjust[0]) );
  NR2D1 U80 ( .A1(n53), .A2(n67), .ZN(normalized_fraction[10]) );
  IND2D1 U81 ( .A1(n29), .B1(n54), .ZN(exponent_adjust[2]) );
  NR3D0 U82 ( .A1(core_value[23]), .A2(core_value[24]), .A3(n56), .ZN(n30) );
  INVD1 U83 ( .I(core_value[24]), .ZN(n53) );
  ND2D1 U84 ( .A1(core_value[23]), .A2(n53), .ZN(n27) );
  OAI221D0 U85 ( .A1(n27), .A2(n66), .B1(n53), .B2(n65), .C(n48), .ZN(
        normalized_fraction[12]) );
  ND2D1 U86 ( .A1(core_value[11]), .A2(n30), .ZN(n48) );
  OAI22D1 U87 ( .A1(n27), .A2(n67), .B1(n53), .B2(n66), .ZN(
        normalized_fraction[11]) );
  INVD1 U88 ( .I(core_value[11]), .ZN(n67) );
  NR3D0 U89 ( .A1(core_value[23]), .A2(core_value[24]), .A3(core_value[22]), 
        .ZN(n29) );
  INVD1 U90 ( .I(core_value[22]), .ZN(n56) );
  OAI221D0 U91 ( .A1(n27), .A2(n65), .B1(n53), .B2(n64), .C(n47), .ZN(
        normalized_fraction[13]) );
  AOI22D1 U92 ( .A1(core_value[11]), .A2(n29), .B1(core_value[12]), .B2(n30), 
        .ZN(n47) );
  OAI221D0 U93 ( .A1(n56), .A2(n27), .B1(n55), .B2(n53), .C(n38), .ZN(
        normalized_fraction[22]) );
  INVD1 U94 ( .I(core_value[23]), .ZN(n55) );
  AOI22D1 U95 ( .A1(core_value[20]), .A2(n29), .B1(core_value[21]), .B2(n30), 
        .ZN(n38) );
  OAI221D0 U96 ( .A1(n27), .A2(n57), .B1(n56), .B2(n53), .C(n39), .ZN(
        normalized_fraction[21]) );
  AOI22D1 U97 ( .A1(core_value[19]), .A2(n29), .B1(core_value[20]), .B2(n30), 
        .ZN(n39) );
  OAI221D0 U98 ( .A1(n27), .A2(n64), .B1(n53), .B2(n63), .C(n46), .ZN(
        normalized_fraction[14]) );
  AOI22D1 U99 ( .A1(core_value[12]), .A2(n29), .B1(core_value[13]), .B2(n30), 
        .ZN(n46) );
  OAI221D0 U100 ( .A1(n27), .A2(n63), .B1(n53), .B2(n62), .C(n45), .ZN(
        normalized_fraction[15]) );
  AOI22D1 U101 ( .A1(core_value[13]), .A2(n29), .B1(core_value[14]), .B2(n30), 
        .ZN(n45) );
  OAI221D0 U102 ( .A1(n27), .A2(n62), .B1(n53), .B2(n61), .C(n44), .ZN(
        normalized_fraction[16]) );
  AOI22D1 U103 ( .A1(core_value[14]), .A2(n29), .B1(core_value[15]), .B2(n30), 
        .ZN(n44) );
  OAI221D0 U104 ( .A1(n27), .A2(n61), .B1(n53), .B2(n60), .C(n43), .ZN(
        normalized_fraction[17]) );
  AOI22D1 U105 ( .A1(core_value[15]), .A2(n29), .B1(core_value[16]), .B2(n30), 
        .ZN(n43) );
  OAI221D0 U106 ( .A1(n27), .A2(n60), .B1(n53), .B2(n59), .C(n42), .ZN(
        normalized_fraction[18]) );
  AOI22D1 U107 ( .A1(core_value[16]), .A2(n29), .B1(core_value[17]), .B2(n30), 
        .ZN(n42) );
  OAI221D0 U108 ( .A1(n27), .A2(n59), .B1(n53), .B2(n58), .C(n41), .ZN(
        normalized_fraction[19]) );
  AOI22D1 U109 ( .A1(core_value[17]), .A2(n29), .B1(core_value[18]), .B2(n30), 
        .ZN(n41) );
  OAI221D0 U110 ( .A1(n27), .A2(n58), .B1(n53), .B2(n57), .C(n40), .ZN(
        normalized_fraction[20]) );
  AOI22D1 U111 ( .A1(core_value[18]), .A2(n29), .B1(core_value[19]), .B2(n30), 
        .ZN(n40) );
  INVD1 U112 ( .I(core_value[21]), .ZN(n57) );
  INVD1 U113 ( .I(core_value[20]), .ZN(n58) );
  INVD1 U114 ( .I(core_value[19]), .ZN(n59) );
  INVD1 U115 ( .I(core_value[18]), .ZN(n60) );
  INVD1 U116 ( .I(core_value[17]), .ZN(n61) );
  INVD1 U117 ( .I(core_value[16]), .ZN(n62) );
  INVD1 U118 ( .I(core_value[15]), .ZN(n63) );
  INVD1 U119 ( .I(core_value[14]), .ZN(n64) );
  INVD1 U120 ( .I(core_value[13]), .ZN(n65) );
  INVD1 U121 ( .I(core_value[12]), .ZN(n66) );
  CKBD1 U122 ( .I(divide_mode), .Z(n51) );
endmodule

