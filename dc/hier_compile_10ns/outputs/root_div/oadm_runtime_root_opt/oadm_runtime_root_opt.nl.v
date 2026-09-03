/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Thu Sep  3 12:49:06 2026
/////////////////////////////////////////////////////////////


module oadm_runtime_plane_pruned_DW01_add_0 ( A, B, CI, SUM, CO );
  input [27:0] A;
  input [27:0] B;
  output [27:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [25:8] carry;

  FA1D0 U1_7 ( .A(A[7]), .B(B[7]), .CI(n1), .CO(carry[8]), .S(SUM[7]) );
  FA1D0 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  FA1D0 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FA1D0 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FA1D0 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FA1D0 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  FA1D0 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  FA1D0 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  FA1D0 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  FA1D0 U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  FA1D0 U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  FA1D0 U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  FA1D0 U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  FA1D0 U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  FA1D0 U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  FA1D0 U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  FA1D0 U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  FA1D0 U1_24 ( .A(A[24]), .B(B[24]), .CI(carry[24]), .CO(carry[25]), .S(
        SUM[24]) );
  AN2XD1 U1 ( .A1(B[6]), .A2(A[6]), .Z(n1) );
  CKXOR2D1 U2 ( .A1(B[6]), .A2(A[6]), .Z(SUM[6]) );
endmodule


module oadm_runtime_plane_pruned_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [27:0] A;
  input [27:0] B;
  output [27:0] DIFF;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19;
  wire   [25:7] carry;

  FA1D0 U2_7 ( .A(A[7]), .B(n19), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  FA1D0 U2_9 ( .A(A[9]), .B(n17), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  FA1D0 U2_8 ( .A(A[8]), .B(n18), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  FA1D0 U2_10 ( .A(A[10]), .B(n16), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  FA1D0 U2_11 ( .A(A[11]), .B(n15), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  FA1D0 U2_12 ( .A(A[12]), .B(n14), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  FA1D0 U2_13 ( .A(A[13]), .B(n13), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  FA1D0 U2_14 ( .A(A[14]), .B(n12), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  FA1D0 U2_15 ( .A(A[15]), .B(n11), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  FA1D0 U2_16 ( .A(A[16]), .B(n10), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  FA1D0 U2_17 ( .A(A[17]), .B(n9), .CI(carry[17]), .CO(carry[18]), .S(DIFF[17]) );
  FA1D0 U2_18 ( .A(A[18]), .B(n8), .CI(carry[18]), .CO(carry[19]), .S(DIFF[18]) );
  FA1D0 U2_23 ( .A(A[23]), .B(n3), .CI(carry[23]), .CO(carry[24]), .S(DIFF[23]) );
  FA1D0 U2_22 ( .A(A[22]), .B(n4), .CI(carry[22]), .CO(carry[23]), .S(DIFF[22]) );
  FA1D0 U2_21 ( .A(A[21]), .B(n5), .CI(carry[21]), .CO(carry[22]), .S(DIFF[21]) );
  FA1D0 U2_19 ( .A(A[19]), .B(n7), .CI(carry[19]), .CO(carry[20]), .S(DIFF[19]) );
  FA1D0 U2_20 ( .A(A[20]), .B(n6), .CI(carry[20]), .CO(carry[21]), .S(DIFF[20]) );
  FA1D0 U2_24 ( .A(A[24]), .B(n2), .CI(carry[24]), .CO(carry[25]), .S(DIFF[24]) );
  INVD1 U1 ( .I(B[27]), .ZN(n2) );
  INVD1 U2 ( .I(B[20]), .ZN(n6) );
  INVD1 U3 ( .I(B[19]), .ZN(n7) );
  INVD1 U4 ( .I(B[21]), .ZN(n5) );
  INVD1 U5 ( .I(B[22]), .ZN(n4) );
  INVD1 U6 ( .I(B[23]), .ZN(n3) );
  INVD1 U7 ( .I(B[18]), .ZN(n8) );
  INVD1 U8 ( .I(B[17]), .ZN(n9) );
  INVD1 U9 ( .I(B[16]), .ZN(n10) );
  INVD1 U10 ( .I(B[15]), .ZN(n11) );
  INVD1 U11 ( .I(B[14]), .ZN(n12) );
  INVD1 U12 ( .I(B[13]), .ZN(n13) );
  INVD1 U13 ( .I(B[12]), .ZN(n14) );
  INVD1 U14 ( .I(B[11]), .ZN(n15) );
  INVD1 U15 ( .I(B[10]), .ZN(n16) );
  INVD1 U16 ( .I(B[8]), .ZN(n18) );
  INVD1 U18 ( .I(B[9]), .ZN(n17) );
  INVD1 U20 ( .I(B[7]), .ZN(n19) );
  CKXOR2D0 U17 ( .A1(A[6]), .A2(B[6]), .Z(DIFF[6]) );
  IND2D0 U19 ( .A1(A[6]), .B1(B[6]), .ZN(carry[7]) );
endmodule


module oadm_runtime_plane_pruned_DW_mult_uns_0 ( a, b, product );
  input [5:0] a;
  input [5:0] b;
  output [11:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n13, n15, n16, n18, n20, n21, n23,
         n25, n26, n27, n28, n30, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n50, n54, n56, n57, n58, n59, n60, n62, n63, n64, n65,
         n66, n68, n69, n70, n71, n72, n74, n75, n76, n77, n118, n119, n120,
         n121, n122, n125, n126, n127, n128, n129, n131, n132, n133, n134,
         n135, n136, n141, n142, n143, n144, n149, n150, n151, n152, n153,
         n154, n155, n156, n157;

  FA1D0 U3 ( .A(n15), .B(n13), .CI(n3), .CO(n2), .S(product[8]) );
  FA1D0 U4 ( .A(n20), .B(n16), .CI(n4), .CO(n3), .S(product[7]) );
  FA1D0 U5 ( .A(n21), .B(n27), .CI(n5), .CO(n4), .S(product[6]) );
  FA1D0 U6 ( .A(n28), .B(n34), .CI(n6), .CO(n5), .S(product[5]) );
  FA1D0 U7 ( .A(n35), .B(n38), .CI(n7), .CO(n6), .S(product[4]) );
  FA1D0 U8 ( .A(n39), .B(n41), .CI(n8), .CO(n7), .S(product[3]) );
  FA1D0 U9 ( .A(n9), .B(n66), .CI(n43), .CO(n8), .S(product[2]) );
  HA1D0 U10 ( .A(n77), .B(n72), .CO(n9), .S(product[1]) );
  CMPE42D1 U18 ( .A(n36), .B(n68), .C(n32), .CIX(n30), .D(n33), .CO(n27), 
        .COX(n26), .S(n28) );
  CMPE42D1 U21 ( .A(n64), .B(n74), .C(n69), .CIX(n37), .D(n40), .CO(n34), 
        .COX(n33), .S(n35) );
  HA1D0 U22 ( .A(n54), .B(n59), .CO(n36), .S(n37) );
  FA1D0 U23 ( .A(n70), .B(n75), .CI(n42), .CO(n38), .S(n39) );
  HA1D0 U24 ( .A(n60), .B(n65), .CO(n40), .S(n41) );
  HA1D0 U25 ( .A(n71), .B(n76), .CO(n42), .S(n43) );
  XNR2D1 U75 ( .A1(n154), .A2(n2), .ZN(product[9]) );
  ND2D1 U76 ( .A1(n50), .A2(n122), .ZN(n154) );
  INVD1 U79 ( .I(n152), .ZN(n126) );
  INVD1 U81 ( .I(b[4]), .ZN(n135) );
  INVD1 U82 ( .I(a[4]), .ZN(n134) );
  OR2XD1 U84 ( .A1(n25), .A2(n125), .Z(n118) );
  ND2D1 U85 ( .A1(n25), .A2(n26), .ZN(n153) );
  INVD1 U86 ( .I(n26), .ZN(n125) );
  ND2D1 U87 ( .A1(n119), .A2(n25), .ZN(n152) );
  AN2XD1 U88 ( .A1(n58), .A2(n63), .Z(n119) );
  IND2D1 U91 ( .A1(n25), .B1(n23), .ZN(n151) );
  ND2D1 U92 ( .A1(n25), .A2(n23), .ZN(n150) );
  AN2XD1 U93 ( .A1(n62), .A2(n57), .Z(n120) );
  OR2XD1 U95 ( .A1(n56), .A2(n152), .Z(n121) );
  ND2D1 U96 ( .A1(n56), .A2(n126), .ZN(n144) );
  ND2D1 U97 ( .A1(n56), .A2(n18), .ZN(n142) );
  IND2D1 U98 ( .A1(n56), .B1(n18), .ZN(n143) );
  AN2XD1 U99 ( .A1(n120), .A2(n56), .Z(n122) );
  INVD1 U101 ( .I(b[2]), .ZN(n132) );
  INVD1 U102 ( .I(a[3]), .ZN(n127) );
  INVD1 U103 ( .I(b[3]), .ZN(n131) );
  INVD1 U104 ( .I(a[2]), .ZN(n128) );
  INVD1 U105 ( .I(b[1]), .ZN(n133) );
  INVD1 U106 ( .I(a[1]), .ZN(n129) );
  INVD1 U107 ( .I(b[0]), .ZN(n136) );
  CKBD1 U108 ( .I(b[0]), .Z(product[0]) );
  MUX2ND0 U110 ( .I0(n142), .I1(n143), .S(n120), .ZN(n141) );
  MUX2ND0 U114 ( .I0(n150), .I1(n151), .S(n119), .ZN(n149) );
  CKXOR2D1 U117 ( .A1(n122), .A2(n50), .Z(n13) );
  CKXOR2D1 U118 ( .A1(n57), .A2(n62), .Z(n23) );
  CKXOR2D1 U119 ( .A1(n63), .A2(n58), .Z(n30) );
  NR2D0 U120 ( .A1(n136), .A2(n133), .ZN(n77) );
  NR2D0 U121 ( .A1(n136), .A2(n132), .ZN(n76) );
  NR2D0 U122 ( .A1(n136), .A2(n131), .ZN(n75) );
  NR2D0 U123 ( .A1(n135), .A2(n136), .ZN(n74) );
  NR2D0 U124 ( .A1(n136), .A2(n129), .ZN(n72) );
  NR2D0 U125 ( .A1(n133), .A2(n129), .ZN(n71) );
  NR2D0 U126 ( .A1(n132), .A2(n129), .ZN(n70) );
  NR2D0 U127 ( .A1(n131), .A2(n129), .ZN(n69) );
  NR2D0 U128 ( .A1(n135), .A2(n129), .ZN(n68) );
  NR2D0 U129 ( .A1(n136), .A2(n128), .ZN(n66) );
  NR2D0 U130 ( .A1(n133), .A2(n128), .ZN(n65) );
  NR2D0 U131 ( .A1(n132), .A2(n128), .ZN(n64) );
  NR2D0 U132 ( .A1(n131), .A2(n128), .ZN(n63) );
  NR2D0 U133 ( .A1(n135), .A2(n128), .ZN(n62) );
  NR2D0 U134 ( .A1(n136), .A2(n127), .ZN(n60) );
  NR2D0 U135 ( .A1(n133), .A2(n127), .ZN(n59) );
  NR2D0 U136 ( .A1(n132), .A2(n127), .ZN(n58) );
  NR2D0 U137 ( .A1(n131), .A2(n127), .ZN(n57) );
  NR2D0 U138 ( .A1(n135), .A2(n127), .ZN(n56) );
  NR2D0 U139 ( .A1(n134), .A2(n136), .ZN(n54) );
  NR2D0 U140 ( .A1(n134), .A2(n133), .ZN(n32) );
  NR2D0 U141 ( .A1(n134), .A2(n132), .ZN(n25) );
  NR2D0 U142 ( .A1(n134), .A2(n131), .ZN(n18) );
  NR2D0 U143 ( .A1(n134), .A2(n135), .ZN(n50) );
  AO211D0 U77 ( .A1(n157), .A2(n18), .B(n141), .C(n155), .Z(n15) );
  MUX2ND0 U78 ( .I0(n144), .I1(n121), .S(n120), .ZN(n155) );
  AO211D0 U80 ( .A1(n26), .A2(n23), .B(n149), .C(n156), .Z(n20) );
  MUX2ND0 U83 ( .I0(n153), .I1(n118), .S(n119), .ZN(n156) );
  CKND0 U89 ( .I(n152), .ZN(n157) );
  XOR4D0 U90 ( .A1(n120), .A2(n56), .A3(n18), .A4(n126), .Z(n16) );
  XOR4D0 U94 ( .A1(n23), .A2(n25), .A3(n119), .A4(n26), .Z(n21) );
endmodule


module oadm_runtime_plane_pruned_DW_mult_tc_1 ( a, b, product );
  input [12:0] a;
  input [5:0] b;
  output [18:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n20, n21, n22, n23, n24, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n55, n56, n57, n58, n59, n61, n62,
         n63, n64, n65, n67, n68, n69, n70, n71, n73, n74, n75, n76, n77, n78,
         n79, n81, n82, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n214, n215, n216, n217, n218, n219, n220, n221, n222, n223,
         n224, n225, n226, n227, n228, n229, n230, n231, n232, n233, n234,
         n235, n236, n237, n238, n239, n240, n241, n242, n243, n244, n245,
         n246, n247, n248, n249, n250, n251, n252, n253, n254, n255, n256,
         n257, n259, n260, n261, n262, n263, n264, n265, n266;

  FA1D0 U2 ( .A(n69), .B(n18), .CI(n2), .CO(n1), .S(product[17]) );
  FA1D0 U3 ( .A(n20), .B(n217), .CI(n3), .CO(n2), .S(product[16]) );
  FA1D0 U4 ( .A(n22), .B(n21), .CI(n4), .CO(n3), .S(product[15]) );
  FA1D0 U5 ( .A(n26), .B(n23), .CI(n5), .CO(n4), .S(product[14]) );
  FA1D0 U6 ( .A(n30), .B(n27), .CI(n6), .CO(n5), .S(product[13]) );
  FA1D0 U7 ( .A(n34), .B(n31), .CI(n7), .CO(n6), .S(product[12]) );
  FA1D0 U8 ( .A(n38), .B(n35), .CI(n8), .CO(n7), .S(product[11]) );
  FA1D0 U9 ( .A(n42), .B(n39), .CI(n9), .CO(n8), .S(product[10]) );
  FA1D0 U10 ( .A(n46), .B(n43), .CI(n10), .CO(n9), .S(product[9]) );
  FA1D0 U11 ( .A(n50), .B(n47), .CI(n11), .CO(n10), .S(product[8]) );
  FA1D0 U12 ( .A(n214), .B(n51), .CI(n12), .CO(n11), .S(product[7]) );
  FA1D0 U13 ( .A(n55), .B(n58), .CI(n13), .CO(n12), .S(product[6]) );
  FA1D0 U14 ( .A(n59), .B(n62), .CI(n14), .CO(n13), .S(product[5]) );
  FA1D0 U15 ( .A(n63), .B(n64), .CI(n15), .CO(n14), .S(product[4]) );
  FA1D0 U16 ( .A(n65), .B(n67), .CI(n16), .CO(n15), .S(product[3]) );
  FA1D0 U17 ( .A(n106), .B(n94), .CI(n17), .CO(n16), .S(product[2]) );
  HA1D0 U18 ( .A(n107), .B(n68), .CO(n17), .S(product[1]) );
  FA1D0 U20 ( .A(n70), .B(n24), .CI(n82), .CO(n20), .S(n21) );
  FA1D0 U21 ( .A(n215), .B(n71), .CI(n28), .CO(n22), .S(n23) );
  FA1D0 U23 ( .A(n32), .B(n95), .CI(n29), .CO(n26), .S(n27) );
  FA1D0 U26 ( .A(n36), .B(n84), .CI(n33), .CO(n30), .S(n31) );
  HA1D0 U27 ( .A(n73), .B(n96), .CO(n32), .S(n33) );
  FA1D0 U28 ( .A(n40), .B(n85), .CI(n37), .CO(n34), .S(n35) );
  HA1D0 U29 ( .A(n74), .B(n97), .CO(n36), .S(n37) );
  FA1D0 U30 ( .A(n44), .B(n86), .CI(n41), .CO(n38), .S(n39) );
  HA1D0 U31 ( .A(n75), .B(n98), .CO(n40), .S(n41) );
  FA1D0 U32 ( .A(n48), .B(n87), .CI(n45), .CO(n42), .S(n43) );
  HA1D0 U33 ( .A(n76), .B(n99), .CO(n44), .S(n45) );
  FA1D0 U34 ( .A(n52), .B(n88), .CI(n49), .CO(n46), .S(n47) );
  HA1D0 U35 ( .A(n77), .B(n100), .CO(n48), .S(n49) );
  FA1D0 U36 ( .A(n56), .B(n89), .CI(n53), .CO(n50), .S(n51) );
  HA1D0 U37 ( .A(n78), .B(n101), .CO(n52), .S(n53) );
  HA1D0 U39 ( .A(n79), .B(n102), .CO(n56), .S(n57) );
  FA1D0 U40 ( .A(n91), .B(n103), .CI(n61), .CO(n58), .S(n59) );
  FA1D0 U42 ( .A(n104), .B(n81), .CI(n92), .CO(n62), .S(n63) );
  HA1D0 U43 ( .A(n93), .B(n105), .CO(n64), .S(n65) );
  INVD1 U155 ( .I(n18), .ZN(n217) );
  XNR2D1 U156 ( .A1(b[3]), .A2(b[4]), .ZN(n253) );
  ND2D1 U157 ( .A1(b[1]), .A2(n232), .ZN(n234) );
  INVD1 U158 ( .I(b[3]), .ZN(n216) );
  AN2XD1 U160 ( .A1(n90), .A2(n57), .Z(n214) );
  INVD1 U162 ( .I(b[0]), .ZN(n232) );
  INVD1 U163 ( .I(a[10]), .ZN(n221) );
  INVD1 U164 ( .I(n24), .ZN(n215) );
  INVD1 U165 ( .I(a[12]), .ZN(n219) );
  INVD1 U166 ( .I(b[1]), .ZN(n218) );
  INVD1 U167 ( .I(a[0]), .ZN(n231) );
  INVD1 U168 ( .I(a[9]), .ZN(n222) );
  INVD1 U169 ( .I(a[11]), .ZN(n220) );
  INVD1 U170 ( .I(a[1]), .ZN(n230) );
  INVD1 U171 ( .I(a[3]), .ZN(n228) );
  INVD1 U172 ( .I(a[2]), .ZN(n229) );
  INVD1 U173 ( .I(a[4]), .ZN(n227) );
  INVD1 U174 ( .I(a[5]), .ZN(n226) );
  INVD1 U175 ( .I(a[6]), .ZN(n225) );
  INVD1 U176 ( .I(a[7]), .ZN(n224) );
  INVD1 U177 ( .I(a[8]), .ZN(n223) );
  CKXOR2D1 U178 ( .A1(n57), .A2(n90), .Z(n55) );
  CKND0 U179 ( .I(n1), .ZN(product[18]) );
  NR2D0 U180 ( .A1(n231), .A2(n232), .ZN(product[0]) );
  OAI22D0 U181 ( .A1(n233), .A2(n234), .B1(n235), .B2(n232), .ZN(n99) );
  OAI22D0 U182 ( .A1(n235), .A2(n234), .B1(n236), .B2(n232), .ZN(n98) );
  CKXOR2D0 U183 ( .A1(b[1]), .A2(n222), .Z(n235) );
  OAI22D0 U184 ( .A1(n236), .A2(n234), .B1(n237), .B2(n232), .ZN(n97) );
  CKXOR2D0 U185 ( .A1(b[1]), .A2(n221), .Z(n236) );
  MOAI22D0 U186 ( .A1(n237), .A2(n234), .B1(n238), .B2(b[0]), .ZN(n96) );
  CKXOR2D0 U187 ( .A1(b[1]), .A2(n220), .Z(n237) );
  IOA21D0 U188 ( .A1(n232), .A2(n234), .B(n238), .ZN(n95) );
  CKXOR2D0 U189 ( .A1(b[1]), .A2(a[12]), .Z(n238) );
  NR2D0 U190 ( .A1(n239), .A2(n231), .ZN(n94) );
  OAI22D0 U191 ( .A1(n240), .A2(n241), .B1(n239), .B2(n242), .ZN(n93) );
  CKXOR2D0 U192 ( .A1(b[3]), .A2(n231), .Z(n240) );
  OAI22D0 U193 ( .A1(n242), .A2(n241), .B1(n239), .B2(n243), .ZN(n92) );
  CKXOR2D0 U194 ( .A1(b[3]), .A2(n230), .Z(n242) );
  OAI22D0 U195 ( .A1(n243), .A2(n241), .B1(n239), .B2(n244), .ZN(n91) );
  CKXOR2D0 U196 ( .A1(b[3]), .A2(n229), .Z(n243) );
  OAI22D0 U197 ( .A1(n244), .A2(n241), .B1(n239), .B2(n245), .ZN(n90) );
  CKXOR2D0 U198 ( .A1(b[3]), .A2(n228), .Z(n244) );
  OAI22D0 U199 ( .A1(n245), .A2(n241), .B1(n239), .B2(n246), .ZN(n89) );
  CKXOR2D0 U200 ( .A1(b[3]), .A2(n227), .Z(n245) );
  OAI22D0 U201 ( .A1(n246), .A2(n241), .B1(n239), .B2(n247), .ZN(n88) );
  CKXOR2D0 U202 ( .A1(b[3]), .A2(n226), .Z(n246) );
  OAI22D0 U203 ( .A1(n247), .A2(n241), .B1(n239), .B2(n248), .ZN(n87) );
  CKXOR2D0 U204 ( .A1(b[3]), .A2(n225), .Z(n247) );
  OAI22D0 U205 ( .A1(n248), .A2(n241), .B1(n239), .B2(n249), .ZN(n86) );
  CKXOR2D0 U206 ( .A1(b[3]), .A2(n224), .Z(n248) );
  OAI22D0 U207 ( .A1(n249), .A2(n241), .B1(n239), .B2(n250), .ZN(n85) );
  CKXOR2D0 U208 ( .A1(b[3]), .A2(n223), .Z(n249) );
  OAI22D0 U209 ( .A1(n250), .A2(n241), .B1(n239), .B2(n251), .ZN(n84) );
  CKXOR2D0 U210 ( .A1(b[3]), .A2(n222), .Z(n250) );
  AO21D0 U211 ( .A1(n241), .A2(n239), .B(n252), .Z(n82) );
  NR2D0 U212 ( .A1(n253), .A2(n231), .ZN(n81) );
  OAI22D0 U213 ( .A1(n231), .A2(n254), .B1(n253), .B2(n230), .ZN(n61) );
  OAI22D0 U214 ( .A1(n230), .A2(n254), .B1(n253), .B2(n229), .ZN(n79) );
  OAI22D0 U215 ( .A1(n229), .A2(n254), .B1(n253), .B2(n228), .ZN(n78) );
  OAI22D0 U216 ( .A1(n228), .A2(n254), .B1(n253), .B2(n227), .ZN(n77) );
  OAI22D0 U217 ( .A1(n227), .A2(n254), .B1(n253), .B2(n226), .ZN(n76) );
  OAI22D0 U218 ( .A1(n226), .A2(n254), .B1(n253), .B2(n225), .ZN(n75) );
  OAI22D0 U219 ( .A1(n225), .A2(n254), .B1(n253), .B2(n224), .ZN(n74) );
  OAI22D0 U220 ( .A1(n224), .A2(n254), .B1(n253), .B2(n223), .ZN(n73) );
  OAI22D0 U221 ( .A1(n222), .A2(n254), .B1(n253), .B2(n221), .ZN(n71) );
  OAI22D0 U222 ( .A1(n221), .A2(n254), .B1(n253), .B2(n220), .ZN(n70) );
  AO21D0 U223 ( .A1(n254), .A2(n253), .B(n219), .Z(n69) );
  OAI21D0 U224 ( .A1(a[0]), .A2(n218), .B(n234), .ZN(n68) );
  OAI32D0 U225 ( .A1(n216), .A2(a[0]), .A3(n239), .B1(n216), .B2(n241), .ZN(
        n67) );
  XNR2D0 U226 ( .A1(n255), .A2(n256), .ZN(n29) );
  CKND2D0 U227 ( .A1(n256), .A2(n255), .ZN(n28) );
  OA22D0 U228 ( .A1(n223), .A2(n254), .B1(n253), .B2(n222), .Z(n255) );
  OA22D0 U229 ( .A1(n251), .A2(n241), .B1(n239), .B2(n257), .Z(n256) );
  CKXOR2D0 U230 ( .A1(b[3]), .A2(n221), .Z(n251) );
  OAI22D0 U231 ( .A1(n239), .A2(n252), .B1(n257), .B2(n241), .ZN(n24) );
  CKXOR2D0 U233 ( .A1(b[3]), .A2(n220), .Z(n257) );
  CKXOR2D0 U234 ( .A1(n216), .A2(a[12]), .Z(n252) );
  OAI22D0 U235 ( .A1(n253), .A2(n219), .B1(n220), .B2(n254), .ZN(n18) );
  CKND2D0 U236 ( .A1(n253), .A2(b[4]), .ZN(n254) );
  OAI22D0 U237 ( .A1(a[0]), .A2(n234), .B1(n259), .B2(n232), .ZN(n107) );
  OAI22D0 U238 ( .A1(n259), .A2(n234), .B1(n260), .B2(n232), .ZN(n106) );
  CKXOR2D0 U239 ( .A1(b[1]), .A2(n230), .Z(n259) );
  OAI22D0 U240 ( .A1(n260), .A2(n234), .B1(n261), .B2(n232), .ZN(n105) );
  CKXOR2D0 U241 ( .A1(b[1]), .A2(n229), .Z(n260) );
  OAI22D0 U242 ( .A1(n261), .A2(n234), .B1(n262), .B2(n232), .ZN(n104) );
  CKXOR2D0 U243 ( .A1(b[1]), .A2(n228), .Z(n261) );
  OAI22D0 U244 ( .A1(n262), .A2(n234), .B1(n263), .B2(n232), .ZN(n103) );
  CKXOR2D0 U245 ( .A1(b[1]), .A2(n227), .Z(n262) );
  OAI22D0 U246 ( .A1(n263), .A2(n234), .B1(n264), .B2(n232), .ZN(n102) );
  CKXOR2D0 U247 ( .A1(b[1]), .A2(n226), .Z(n263) );
  OAI22D0 U248 ( .A1(n264), .A2(n234), .B1(n265), .B2(n232), .ZN(n101) );
  CKXOR2D0 U249 ( .A1(b[1]), .A2(n225), .Z(n264) );
  OAI22D0 U250 ( .A1(n265), .A2(n234), .B1(n233), .B2(n232), .ZN(n100) );
  CKXOR2D0 U251 ( .A1(b[1]), .A2(n223), .Z(n233) );
  CKXOR2D0 U252 ( .A1(b[1]), .A2(n224), .Z(n265) );
  OAI211D0 U159 ( .A1(b[2]), .A2(b[3]), .B(n266), .C(n239), .ZN(n241) );
  XNR2D0 U161 ( .A1(b[2]), .A2(b[1]), .ZN(n239) );
  CKND2D0 U232 ( .A1(b[2]), .A2(b[3]), .ZN(n266) );
endmodule


module oadm_runtime_plane_pruned_DW_mult_tc_0 ( a, b, product );
  input [12:0] a;
  input [5:0] b;
  output [18:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n20, n21, n22, n23, n24, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n55, n56, n57, n58, n59, n61, n62,
         n63, n64, n65, n67, n68, n69, n70, n71, n73, n74, n75, n76, n77, n78,
         n79, n81, n82, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n214, n215, n216, n217, n218, n219, n220, n221, n222, n223,
         n224, n225, n226, n227, n228, n229, n230, n231, n232, n233, n234,
         n235, n236, n237, n238, n239, n240, n241, n242, n243, n244, n245,
         n246, n247, n248, n249, n250, n251, n252, n253, n254, n255, n256,
         n257, n259, n260, n261, n262, n263, n264, n265, n266;

  FA1D0 U2 ( .A(n69), .B(n18), .CI(n2), .CO(n1), .S(product[17]) );
  FA1D0 U3 ( .A(n20), .B(n217), .CI(n3), .CO(n2), .S(product[16]) );
  FA1D0 U4 ( .A(n22), .B(n21), .CI(n4), .CO(n3), .S(product[15]) );
  FA1D0 U5 ( .A(n26), .B(n23), .CI(n5), .CO(n4), .S(product[14]) );
  FA1D0 U6 ( .A(n30), .B(n27), .CI(n6), .CO(n5), .S(product[13]) );
  FA1D0 U7 ( .A(n34), .B(n31), .CI(n7), .CO(n6), .S(product[12]) );
  FA1D0 U8 ( .A(n38), .B(n35), .CI(n8), .CO(n7), .S(product[11]) );
  FA1D0 U9 ( .A(n42), .B(n39), .CI(n9), .CO(n8), .S(product[10]) );
  FA1D0 U10 ( .A(n46), .B(n43), .CI(n10), .CO(n9), .S(product[9]) );
  FA1D0 U11 ( .A(n50), .B(n47), .CI(n11), .CO(n10), .S(product[8]) );
  FA1D0 U12 ( .A(n214), .B(n51), .CI(n12), .CO(n11), .S(product[7]) );
  FA1D0 U13 ( .A(n55), .B(n58), .CI(n13), .CO(n12), .S(product[6]) );
  FA1D0 U14 ( .A(n59), .B(n62), .CI(n14), .CO(n13), .S(product[5]) );
  FA1D0 U15 ( .A(n63), .B(n64), .CI(n15), .CO(n14), .S(product[4]) );
  FA1D0 U16 ( .A(n65), .B(n67), .CI(n16), .CO(n15), .S(product[3]) );
  FA1D0 U17 ( .A(n106), .B(n94), .CI(n17), .CO(n16), .S(product[2]) );
  HA1D0 U18 ( .A(n107), .B(n68), .CO(n17), .S(product[1]) );
  FA1D0 U20 ( .A(n70), .B(n24), .CI(n82), .CO(n20), .S(n21) );
  FA1D0 U21 ( .A(n215), .B(n71), .CI(n28), .CO(n22), .S(n23) );
  FA1D0 U23 ( .A(n32), .B(n95), .CI(n29), .CO(n26), .S(n27) );
  FA1D0 U26 ( .A(n36), .B(n84), .CI(n33), .CO(n30), .S(n31) );
  HA1D0 U27 ( .A(n73), .B(n96), .CO(n32), .S(n33) );
  FA1D0 U28 ( .A(n40), .B(n85), .CI(n37), .CO(n34), .S(n35) );
  HA1D0 U29 ( .A(n74), .B(n97), .CO(n36), .S(n37) );
  FA1D0 U30 ( .A(n44), .B(n86), .CI(n41), .CO(n38), .S(n39) );
  HA1D0 U31 ( .A(n75), .B(n98), .CO(n40), .S(n41) );
  FA1D0 U32 ( .A(n48), .B(n87), .CI(n45), .CO(n42), .S(n43) );
  HA1D0 U33 ( .A(n76), .B(n99), .CO(n44), .S(n45) );
  FA1D0 U34 ( .A(n52), .B(n88), .CI(n49), .CO(n46), .S(n47) );
  HA1D0 U35 ( .A(n77), .B(n100), .CO(n48), .S(n49) );
  FA1D0 U36 ( .A(n56), .B(n89), .CI(n53), .CO(n50), .S(n51) );
  HA1D0 U37 ( .A(n78), .B(n101), .CO(n52), .S(n53) );
  HA1D0 U39 ( .A(n79), .B(n102), .CO(n56), .S(n57) );
  FA1D0 U40 ( .A(n91), .B(n103), .CI(n61), .CO(n58), .S(n59) );
  FA1D0 U42 ( .A(n104), .B(n81), .CI(n92), .CO(n62), .S(n63) );
  HA1D0 U43 ( .A(n93), .B(n105), .CO(n64), .S(n65) );
  INVD1 U155 ( .I(n18), .ZN(n217) );
  XNR2D1 U156 ( .A1(b[3]), .A2(b[4]), .ZN(n253) );
  ND2D1 U157 ( .A1(b[1]), .A2(n232), .ZN(n234) );
  INVD1 U158 ( .I(b[3]), .ZN(n216) );
  AN2XD1 U160 ( .A1(n90), .A2(n57), .Z(n214) );
  INVD1 U162 ( .I(b[0]), .ZN(n232) );
  INVD1 U163 ( .I(a[10]), .ZN(n221) );
  INVD1 U164 ( .I(n24), .ZN(n215) );
  INVD1 U165 ( .I(a[12]), .ZN(n219) );
  INVD1 U166 ( .I(b[1]), .ZN(n218) );
  INVD1 U167 ( .I(a[0]), .ZN(n231) );
  INVD1 U168 ( .I(a[9]), .ZN(n222) );
  INVD1 U169 ( .I(a[11]), .ZN(n220) );
  INVD1 U170 ( .I(a[1]), .ZN(n230) );
  INVD1 U171 ( .I(a[3]), .ZN(n228) );
  INVD1 U172 ( .I(a[2]), .ZN(n229) );
  INVD1 U173 ( .I(a[4]), .ZN(n227) );
  INVD1 U174 ( .I(a[5]), .ZN(n226) );
  INVD1 U175 ( .I(a[6]), .ZN(n225) );
  INVD1 U176 ( .I(a[7]), .ZN(n224) );
  INVD1 U177 ( .I(a[8]), .ZN(n223) );
  CKXOR2D1 U178 ( .A1(n57), .A2(n90), .Z(n55) );
  CKND0 U179 ( .I(n1), .ZN(product[18]) );
  NR2D0 U180 ( .A1(n231), .A2(n232), .ZN(product[0]) );
  OAI22D0 U181 ( .A1(n233), .A2(n234), .B1(n235), .B2(n232), .ZN(n99) );
  OAI22D0 U182 ( .A1(n235), .A2(n234), .B1(n236), .B2(n232), .ZN(n98) );
  CKXOR2D0 U183 ( .A1(b[1]), .A2(n222), .Z(n235) );
  OAI22D0 U184 ( .A1(n236), .A2(n234), .B1(n237), .B2(n232), .ZN(n97) );
  CKXOR2D0 U185 ( .A1(b[1]), .A2(n221), .Z(n236) );
  MOAI22D0 U186 ( .A1(n237), .A2(n234), .B1(n238), .B2(b[0]), .ZN(n96) );
  CKXOR2D0 U187 ( .A1(b[1]), .A2(n220), .Z(n237) );
  IOA21D0 U188 ( .A1(n232), .A2(n234), .B(n238), .ZN(n95) );
  CKXOR2D0 U189 ( .A1(b[1]), .A2(a[12]), .Z(n238) );
  NR2D0 U190 ( .A1(n239), .A2(n231), .ZN(n94) );
  OAI22D0 U191 ( .A1(n240), .A2(n241), .B1(n239), .B2(n242), .ZN(n93) );
  CKXOR2D0 U192 ( .A1(b[3]), .A2(n231), .Z(n240) );
  OAI22D0 U193 ( .A1(n242), .A2(n241), .B1(n239), .B2(n243), .ZN(n92) );
  CKXOR2D0 U194 ( .A1(b[3]), .A2(n230), .Z(n242) );
  OAI22D0 U195 ( .A1(n243), .A2(n241), .B1(n239), .B2(n244), .ZN(n91) );
  CKXOR2D0 U196 ( .A1(b[3]), .A2(n229), .Z(n243) );
  OAI22D0 U197 ( .A1(n244), .A2(n241), .B1(n239), .B2(n245), .ZN(n90) );
  CKXOR2D0 U198 ( .A1(b[3]), .A2(n228), .Z(n244) );
  OAI22D0 U199 ( .A1(n245), .A2(n241), .B1(n239), .B2(n246), .ZN(n89) );
  CKXOR2D0 U200 ( .A1(b[3]), .A2(n227), .Z(n245) );
  OAI22D0 U201 ( .A1(n246), .A2(n241), .B1(n239), .B2(n247), .ZN(n88) );
  CKXOR2D0 U202 ( .A1(b[3]), .A2(n226), .Z(n246) );
  OAI22D0 U203 ( .A1(n247), .A2(n241), .B1(n239), .B2(n248), .ZN(n87) );
  CKXOR2D0 U204 ( .A1(b[3]), .A2(n225), .Z(n247) );
  OAI22D0 U205 ( .A1(n248), .A2(n241), .B1(n239), .B2(n249), .ZN(n86) );
  CKXOR2D0 U206 ( .A1(b[3]), .A2(n224), .Z(n248) );
  OAI22D0 U207 ( .A1(n249), .A2(n241), .B1(n239), .B2(n250), .ZN(n85) );
  CKXOR2D0 U208 ( .A1(b[3]), .A2(n223), .Z(n249) );
  OAI22D0 U209 ( .A1(n250), .A2(n241), .B1(n239), .B2(n251), .ZN(n84) );
  CKXOR2D0 U210 ( .A1(b[3]), .A2(n222), .Z(n250) );
  AO21D0 U211 ( .A1(n241), .A2(n239), .B(n252), .Z(n82) );
  NR2D0 U212 ( .A1(n253), .A2(n231), .ZN(n81) );
  OAI22D0 U213 ( .A1(n231), .A2(n254), .B1(n253), .B2(n230), .ZN(n61) );
  OAI22D0 U214 ( .A1(n230), .A2(n254), .B1(n253), .B2(n229), .ZN(n79) );
  OAI22D0 U215 ( .A1(n229), .A2(n254), .B1(n253), .B2(n228), .ZN(n78) );
  OAI22D0 U216 ( .A1(n228), .A2(n254), .B1(n253), .B2(n227), .ZN(n77) );
  OAI22D0 U217 ( .A1(n227), .A2(n254), .B1(n253), .B2(n226), .ZN(n76) );
  OAI22D0 U218 ( .A1(n226), .A2(n254), .B1(n253), .B2(n225), .ZN(n75) );
  OAI22D0 U219 ( .A1(n225), .A2(n254), .B1(n253), .B2(n224), .ZN(n74) );
  OAI22D0 U220 ( .A1(n224), .A2(n254), .B1(n253), .B2(n223), .ZN(n73) );
  OAI22D0 U221 ( .A1(n222), .A2(n254), .B1(n253), .B2(n221), .ZN(n71) );
  OAI22D0 U222 ( .A1(n221), .A2(n254), .B1(n253), .B2(n220), .ZN(n70) );
  AO21D0 U223 ( .A1(n254), .A2(n253), .B(n219), .Z(n69) );
  OAI21D0 U224 ( .A1(a[0]), .A2(n218), .B(n234), .ZN(n68) );
  OAI32D0 U225 ( .A1(n216), .A2(a[0]), .A3(n239), .B1(n216), .B2(n241), .ZN(
        n67) );
  XNR2D0 U226 ( .A1(n255), .A2(n256), .ZN(n29) );
  CKND2D0 U227 ( .A1(n256), .A2(n255), .ZN(n28) );
  OA22D0 U228 ( .A1(n223), .A2(n254), .B1(n253), .B2(n222), .Z(n255) );
  OA22D0 U229 ( .A1(n251), .A2(n241), .B1(n239), .B2(n257), .Z(n256) );
  CKXOR2D0 U230 ( .A1(b[3]), .A2(n221), .Z(n251) );
  OAI22D0 U231 ( .A1(n239), .A2(n252), .B1(n257), .B2(n241), .ZN(n24) );
  CKXOR2D0 U233 ( .A1(b[3]), .A2(n220), .Z(n257) );
  CKXOR2D0 U234 ( .A1(n216), .A2(a[12]), .Z(n252) );
  OAI22D0 U235 ( .A1(n253), .A2(n219), .B1(n220), .B2(n254), .ZN(n18) );
  CKND2D0 U236 ( .A1(n253), .A2(b[4]), .ZN(n254) );
  OAI22D0 U237 ( .A1(a[0]), .A2(n234), .B1(n259), .B2(n232), .ZN(n107) );
  OAI22D0 U238 ( .A1(n259), .A2(n234), .B1(n260), .B2(n232), .ZN(n106) );
  CKXOR2D0 U239 ( .A1(b[1]), .A2(n230), .Z(n259) );
  OAI22D0 U240 ( .A1(n260), .A2(n234), .B1(n261), .B2(n232), .ZN(n105) );
  CKXOR2D0 U241 ( .A1(b[1]), .A2(n229), .Z(n260) );
  OAI22D0 U242 ( .A1(n261), .A2(n234), .B1(n262), .B2(n232), .ZN(n104) );
  CKXOR2D0 U243 ( .A1(b[1]), .A2(n228), .Z(n261) );
  OAI22D0 U244 ( .A1(n262), .A2(n234), .B1(n263), .B2(n232), .ZN(n103) );
  CKXOR2D0 U245 ( .A1(b[1]), .A2(n227), .Z(n262) );
  OAI22D0 U246 ( .A1(n263), .A2(n234), .B1(n264), .B2(n232), .ZN(n102) );
  CKXOR2D0 U247 ( .A1(b[1]), .A2(n226), .Z(n263) );
  OAI22D0 U248 ( .A1(n264), .A2(n234), .B1(n265), .B2(n232), .ZN(n101) );
  CKXOR2D0 U249 ( .A1(b[1]), .A2(n225), .Z(n264) );
  OAI22D0 U250 ( .A1(n265), .A2(n234), .B1(n233), .B2(n232), .ZN(n100) );
  CKXOR2D0 U251 ( .A1(b[1]), .A2(n223), .Z(n233) );
  CKXOR2D0 U252 ( .A1(b[1]), .A2(n224), .Z(n265) );
  OAI211D0 U159 ( .A1(b[2]), .A2(b[3]), .B(n266), .C(n239), .ZN(n241) );
  XNR2D0 U161 ( .A1(b[2]), .A2(b[1]), .ZN(n239) );
  CKND2D0 U232 ( .A1(b[2]), .A2(b[3]), .ZN(n266) );
endmodule


module oadm_runtime_plane_pruned ( x_mantissa, y_mantissa, level, divide_mode, 
        plane_exact );
  input [23:0] x_mantissa;
  input [23:0] y_mantissa;
  input [1:0] level;
  output [28:0] plane_exact;
  input divide_mode;
  wire   N92, N93, N94, N95, N96, N97, N98, N99, N100, N101, N102, N103, N104,
         N105, N106, N107, N108, N109, N110, N147, N148, N149, N150, N151,
         N152, N153, N154, N155, N156, N157, N158, N159, N160, N161, N162,
         N163, N164, N165, N85, N84, N83, N82, N81, N80, N79, N78, N77, N76,
         N75, N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, net2652, n49,
         n50, n51, n52, n53, n55, n57, n58, n59, n61, n8, n10, n11, n12, n14,
         n16, n17, n18, n19, n20, n21;
  wire   [4:1] x_midpoint;
  wire   [4:0] y_midpoint;
  wire   [22:19] x_residual;
  wire   [22:19] y_residual;
  wire   [18:9] x_product;
  wire   [18:0] y_product;
  wire   [9:0] midpoint_product;
  wire   [25:17] r418_carry;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19;

  OA21D1 U25 ( .A1(y_mantissa[21]), .A2(n19), .B(n51), .Z(n49) );
  CKXOR2D1 U28 ( .A1(y_midpoint[0]), .A2(y_mantissa[19]), .Z(y_residual[19])
         );
  AO211D1 U32 ( .A1(y_mantissa[22]), .A2(y_midpoint[0]), .B(n50), .C(n57), .Z(
        y_midpoint[3]) );
  OA21D1 U39 ( .A1(x_mantissa[21]), .A2(n19), .B(n59), .Z(n58) );
  CKXOR2D1 U43 ( .A1(y_midpoint[0]), .A2(x_mantissa[19]), .Z(x_residual[19])
         );
  AO211D1 U47 ( .A1(x_mantissa[22]), .A2(y_midpoint[0]), .B(n50), .C(n61), .Z(
        x_midpoint[3]) );
  oadm_runtime_plane_pruned_DW01_add_0 add_0_root_add_73_3 ( .A({y_product[18], 
        y_product[18], y_product[18], y_product, net2652, net2652, net2652, 
        net2652, net2652, net2652}), .B({N85, N85, N84, N83, N82, N81, N80, 
        N79, N78, N77, N76, N75, N74, N73, N72, N71, N70, N69, N68, N67, N66, 
        N65, net2652, net2652, net2652, net2652, net2652, net2652}), .CI(
        net2652), .SUM({SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, N165, N164, N163, N162, N161, N160, N159, 
        N158, N157, N156, N155, N154, N153, N152, N151, N150, N149, N148, N147, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8}) );
  oadm_runtime_plane_pruned_DW01_sub_0 sub_0_root_sub_73 ( .A({N85, N85, N84, 
        N83, N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, N72, N71, N70, 
        N69, N68, N67, N66, N65, net2652, net2652, net2652, net2652, net2652, 
        net2652}), .B({y_product[18], y_product[18], y_product[18], y_product, 
        net2652, net2652, net2652, net2652, net2652, net2652}), .CI(net2652), 
        .DIFF({SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, N110, N109, N108, N107, N106, N105, N104, 
        N103, N102, N101, N100, N99, N98, N97, N96, N95, N94, N93, N92, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17}) );
  oadm_runtime_plane_pruned_DW_mult_uns_0 mult_69 ( .a({net2652, x_midpoint, 
        y_midpoint[0]}), .b({net2652, y_midpoint}), .product({
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, midpoint_product})
         );
  oadm_runtime_plane_pruned_DW_mult_tc_1 mult_60 ( .a({y_residual, 
        y_mantissa[18:10]}), .b({net2652, x_midpoint, y_midpoint[0]}), 
        .product(y_product) );
  oadm_runtime_plane_pruned_DW_mult_tc_0 mult_58 ( .a({x_residual, 
        x_mantissa[18:10]}), .b({net2652, y_midpoint}), .product({x_product, 
        N73, N72, N71, N70, N69, N68, N67, N66, N65}) );
  FA1D0 U10 ( .A(midpoint_product[9]), .B(x_product[18]), .CI(r418_carry[24]), 
        .CO(r418_carry[25]), .S(N83) );
  AN2XD1 U11 ( .A1(x_product[9]), .A2(midpoint_product[0]), .Z(n8) );
  XNR2D1 U12 ( .A1(x_product[18]), .A2(n10), .ZN(N85) );
  ND2D1 U13 ( .A1(r418_carry[25]), .A2(x_product[18]), .ZN(n10) );
  FA1D0 U15 ( .A(midpoint_product[5]), .B(x_product[14]), .CI(r418_carry[20]), 
        .CO(r418_carry[21]), .S(N79) );
  AO22D0 U16 ( .A1(N161), .A2(n11), .B1(N106), .B2(divide_mode), .Z(
        plane_exact[20]) );
  FA1D0 U17 ( .A(midpoint_product[4]), .B(x_product[13]), .CI(r418_carry[19]), 
        .CO(r418_carry[20]), .S(N78) );
  FA1D0 U18 ( .A(midpoint_product[3]), .B(x_product[12]), .CI(r418_carry[18]), 
        .CO(r418_carry[19]), .S(N77) );
  FA1D0 U19 ( .A(midpoint_product[6]), .B(x_product[15]), .CI(r418_carry[21]), 
        .CO(r418_carry[22]), .S(N80) );
  FA1D0 U20 ( .A(midpoint_product[7]), .B(x_product[16]), .CI(r418_carry[22]), 
        .CO(r418_carry[23]), .S(N81) );
  AO22D0 U21 ( .A1(N164), .A2(n11), .B1(N109), .B2(divide_mode), .Z(
        plane_exact[23]) );
  AO22D0 U22 ( .A1(N165), .A2(n11), .B1(N110), .B2(divide_mode), .Z(
        plane_exact[24]) );
  AO22D0 U23 ( .A1(N163), .A2(n11), .B1(N108), .B2(divide_mode), .Z(
        plane_exact[22]) );
  AO22D0 U24 ( .A1(N162), .A2(n11), .B1(N107), .B2(divide_mode), .Z(
        plane_exact[21]) );
  FA1D0 U26 ( .A(midpoint_product[8]), .B(x_product[17]), .CI(r418_carry[23]), 
        .CO(r418_carry[24]), .S(N82) );
  FA1D0 U27 ( .A(midpoint_product[2]), .B(x_product[11]), .CI(r418_carry[17]), 
        .CO(r418_carry[18]), .S(N76) );
  AO22D0 U29 ( .A1(N160), .A2(n11), .B1(N105), .B2(divide_mode), .Z(
        plane_exact[19]) );
  AO22D0 U30 ( .A1(N159), .A2(n11), .B1(N104), .B2(divide_mode), .Z(
        plane_exact[18]) );
  AO22D0 U31 ( .A1(N158), .A2(n11), .B1(N103), .B2(divide_mode), .Z(
        plane_exact[17]) );
  AO22D0 U33 ( .A1(N157), .A2(n11), .B1(N102), .B2(divide_mode), .Z(
        plane_exact[16]) );
  AO22D0 U34 ( .A1(N156), .A2(n11), .B1(N101), .B2(divide_mode), .Z(
        plane_exact[15]) );
  AO22D0 U35 ( .A1(N155), .A2(n11), .B1(N100), .B2(divide_mode), .Z(
        plane_exact[14]) );
  INVD1 U36 ( .I(divide_mode), .ZN(n11) );
  FA1D0 U41 ( .A(midpoint_product[1]), .B(x_product[10]), .CI(n8), .CO(
        r418_carry[17]), .S(N75) );
  ND3D1 U42 ( .A1(n20), .A2(n18), .A3(n16), .ZN(y_midpoint[4]) );
  ND3D1 U44 ( .A1(n20), .A2(n18), .A3(n16), .ZN(x_midpoint[4]) );
  AO22D0 U48 ( .A1(N92), .A2(divide_mode), .B1(N147), .B2(n11), .Z(
        plane_exact[6]) );
  INVD1 U50 ( .I(n55), .ZN(n19) );
  INVD1 U52 ( .I(n50), .ZN(n20) );
  OAI21D1 U53 ( .A1(n52), .A2(n12), .B(n59), .ZN(x_residual[20]) );
  NR2D1 U54 ( .A1(n50), .A2(n55), .ZN(n52) );
  OAI21D1 U55 ( .A1(n52), .A2(n14), .B(n51), .ZN(y_residual[20]) );
  AO22D0 U56 ( .A1(N99), .A2(divide_mode), .B1(N154), .B2(n11), .Z(
        plane_exact[13]) );
  AO22D0 U57 ( .A1(N98), .A2(divide_mode), .B1(N153), .B2(n11), .Z(
        plane_exact[12]) );
  AO22D0 U58 ( .A1(N97), .A2(divide_mode), .B1(N152), .B2(n11), .Z(
        plane_exact[11]) );
  AO22D0 U59 ( .A1(N96), .A2(divide_mode), .B1(N151), .B2(n11), .Z(
        plane_exact[10]) );
  AO22D0 U60 ( .A1(divide_mode), .A2(N95), .B1(N150), .B2(n11), .Z(
        plane_exact[9]) );
  AO22D0 U61 ( .A1(N94), .A2(divide_mode), .B1(N149), .B2(n11), .Z(
        plane_exact[8]) );
  AO22D0 U62 ( .A1(N93), .A2(divide_mode), .B1(N148), .B2(n11), .Z(
        plane_exact[7]) );
  INVD1 U65 ( .I(level[0]), .ZN(n21) );
  AO221D0 U68 ( .A1(y_mantissa[21]), .A2(y_midpoint[0]), .B1(y_mantissa[21]), 
        .B2(n53), .C(n55), .Z(y_midpoint[2]) );
  NR2D1 U70 ( .A1(level[0]), .A2(level[1]), .ZN(n50) );
  AO221D0 U71 ( .A1(x_mantissa[21]), .A2(y_midpoint[0]), .B1(x_mantissa[21]), 
        .B2(n53), .C(n55), .Z(x_midpoint[2]) );
  IOA21D1 U74 ( .A1(n50), .A2(x_mantissa[21]), .B(n58), .ZN(x_residual[21]) );
  INVD1 U77 ( .I(x_mantissa[20]), .ZN(n12) );
  OAI21D1 U78 ( .A1(x_mantissa[22]), .A2(n20), .B(n58), .ZN(x_residual[22]) );
  IOA21D1 U79 ( .A1(n50), .A2(y_mantissa[21]), .B(n49), .ZN(y_residual[21]) );
  INVD1 U80 ( .I(y_mantissa[20]), .ZN(n14) );
  OAI21D1 U81 ( .A1(y_mantissa[22]), .A2(n20), .B(n49), .ZN(y_residual[22]) );
  TIEL U82 ( .ZN(net2652) );
  CKXOR2D1 U83 ( .A1(x_product[9]), .A2(midpoint_product[0]), .Z(N74) );
  CKXOR2D1 U84 ( .A1(r418_carry[25]), .A2(x_product[18]), .Z(N84) );
  AO21D1 U85 ( .A1(y_mantissa[20]), .A2(y_midpoint[0]), .B(n53), .Z(
        y_midpoint[1]) );
  AO21D1 U86 ( .A1(x_mantissa[20]), .A2(y_midpoint[0]), .B(n53), .Z(
        x_midpoint[1]) );
  MAOI22D0 U3 ( .A1(n14), .A2(n53), .B1(y_mantissa[19]), .B2(n18), .ZN(n51) );
  MAOI22D0 U4 ( .A1(n12), .A2(n53), .B1(x_mantissa[19]), .B2(n18), .ZN(n59) );
  CKND0 U5 ( .I(n18), .ZN(y_midpoint[0]) );
  CKND2D0 U6 ( .A1(level[0]), .A2(level[1]), .ZN(n18) );
  CKAN2D1 U7 ( .A1(n19), .A2(n17), .Z(n16) );
  OA21D0 U8 ( .A1(n55), .A2(n53), .B(x_mantissa[22]), .Z(n61) );
  CKND0 U9 ( .I(n17), .ZN(n53) );
  NR2D0 U14 ( .A1(n21), .A2(level[1]), .ZN(n55) );
  OA21D0 U37 ( .A1(n55), .A2(n53), .B(y_mantissa[22]), .Z(n57) );
  CKND2D0 U38 ( .A1(n21), .A2(level[1]), .ZN(n17) );
endmodule


module fp32_normal_finite_wrapper_DW01_add_3_DW01_add_11 ( A, B, CI, SUM, CO
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


module fp32_normal_finite_wrapper_DW01_add_1_DW01_add_9 ( A, B, CI, SUM, CO );
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
  fp32_normal_finite_wrapper_DW01_add_3_DW01_add_11 add_1_root_add_0_root_add_25_2 ( 
        .A(x[30:23]), .B({N42, N41, N40, N39, N38, N37, N36, N11}), .CI(n79), 
        .SUM({N34, N33, N32, N31, N30, N29, N28, N27}) );
  fp32_normal_finite_wrapper_DW01_add_1_DW01_add_9 add_1_root_add_0_root_add_22_2 ( 
        .A(x[30:23]), .B({y[30], N17, N16, N15, N14, N13, N12, N11}), .CI(n79), 
        .SUM({N10, N9, N8, N7, N6, N5, N4, N3}) );
  AN2XD1 U3 ( .A1(exponent_adjust[0]), .A2(N3), .Z(n1) );
  AN2XD1 U4 ( .A1(exponent_adjust[0]), .A2(N27), .Z(n2) );
  INVD1 U25 ( .I(divide_mode), .ZN(n78) );
  CKBD1 U26 ( .I(result_fraction[21]), .Z(result[21]) );
  CKBD1 U27 ( .I(result_fraction[22]), .Z(result[22]) );
  CKBD1 U28 ( .I(result_fraction[13]), .Z(result[13]) );
  CKBD1 U29 ( .I(result_fraction[14]), .Z(result[14]) );
  CKBD1 U30 ( .I(result_fraction[15]), .Z(result[15]) );
  CKBD1 U31 ( .I(result_fraction[16]), .Z(result[16]) );
  CKBD1 U32 ( .I(result_fraction[17]), .Z(result[17]) );
  CKBD1 U33 ( .I(result_fraction[18]), .Z(result[18]) );
  CKBD1 U34 ( .I(result_fraction[19]), .Z(result[19]) );
  CKBD1 U35 ( .I(result_fraction[10]), .Z(result[10]) );
  CKBD1 U36 ( .I(result_fraction[11]), .Z(result[11]) );
  CKBD1 U37 ( .I(result_fraction[12]), .Z(result[12]) );
  CKBD1 U38 ( .I(result_fraction[20]), .Z(result[20]) );
  CKBD1 U39 ( .I(result_fraction[9]), .Z(result[9]) );
  CKBD1 U40 ( .I(result_fraction[7]), .Z(result[7]) );
  CKBD1 U41 ( .I(result_fraction[6]), .Z(result[6]) );
  CKBD1 U42 ( .I(result_fraction[5]), .Z(result[5]) );
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
  CKBD1 U49 ( .I(result_fraction[8]), .Z(result[8]) );
  FA1D0 U50 ( .A(N4), .B(exponent_adjust[1]), .CI(n1), .CO(
        add_0_root_add_0_root_add_22_2_carry[2]), .S(N20) );
  FA1D0 U51 ( .A(N5), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[2]), .CO(
        add_0_root_add_0_root_add_22_2_carry[3]), .S(N21) );
  FA1D0 U52 ( .A(N6), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[3]), .CO(
        add_0_root_add_0_root_add_22_2_carry[4]), .S(N22) );
  FA1D0 U53 ( .A(N7), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[4]), .CO(
        add_0_root_add_0_root_add_22_2_carry[5]), .S(N23) );
  FA1D0 U54 ( .A(N8), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[5]), .CO(
        add_0_root_add_0_root_add_22_2_carry[6]), .S(N24) );
  FA1D0 U55 ( .A(N9), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[6]), .CO(
        add_0_root_add_0_root_add_22_2_carry[7]), .S(N25) );
  FA1D0 U56 ( .A(N28), .B(exponent_adjust[1]), .CI(n2), .CO(
        add_0_root_add_0_root_add_25_2_carry[2]), .S(N44) );
  FA1D0 U57 ( .A(N29), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[2]), .CO(
        add_0_root_add_0_root_add_25_2_carry[3]), .S(N45) );
  FA1D0 U58 ( .A(N30), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[3]), .CO(
        add_0_root_add_0_root_add_25_2_carry[4]), .S(N46) );
  FA1D0 U59 ( .A(N31), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[4]), .CO(
        add_0_root_add_0_root_add_25_2_carry[5]), .S(N47) );
  FA1D0 U60 ( .A(N32), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[5]), .CO(
        add_0_root_add_0_root_add_25_2_carry[6]), .S(N48) );
  FA1D0 U61 ( .A(N33), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[6]), .CO(
        add_0_root_add_0_root_add_25_2_carry[7]), .S(N49) );
  AO22D0 U62 ( .A1(N43), .A2(n78), .B1(N19), .B2(divide_mode), .Z(result[23])
         );
  AO22D0 U63 ( .A1(N50), .A2(n78), .B1(divide_mode), .B2(N26), .Z(result[30])
         );
  XOR3D1 U64 ( .A1(N34), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_25_2_carry[7]), .Z(N50) );
  XOR3D1 U65 ( .A1(N10), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_22_2_carry[7]), .Z(N26) );
  CKBD1 U66 ( .I(y[22]), .Z(fraction_y[22]) );
  CKBD1 U67 ( .I(y[21]), .Z(fraction_y[21]) );
  CKBD1 U68 ( .I(y[10]), .Z(fraction_y[10]) );
  AN2XD1 U69 ( .A1(y[23]), .A2(y[24]), .Z(n35) );
  INVD1 U70 ( .I(y[29]), .ZN(N17) );
  INVD0 U71 ( .I(y[24]), .ZN(N12) );
  INVD1 U72 ( .I(y[25]), .ZN(N13) );
  INVD1 U73 ( .I(y[26]), .ZN(N14) );
  INVD1 U74 ( .I(y[27]), .ZN(N15) );
  INVD1 U75 ( .I(y[28]), .ZN(N16) );
  AN2XD1 U76 ( .A1(n35), .A2(y[25]), .Z(n410) );
  AN2XD1 U77 ( .A1(n410), .A2(y[26]), .Z(n51) );
  AN2XD1 U78 ( .A1(n51), .A2(y[27]), .Z(n60) );
  AN2XD1 U79 ( .A1(n60), .A2(y[28]), .Z(n70) );
  CKXOR2D1 U80 ( .A1(y[30]), .A2(n77), .Z(N42) );
  ND2D1 U81 ( .A1(n70), .A2(y[29]), .ZN(n77) );
  CKBD1 U87 ( .I(x[22]), .Z(fraction_x[22]) );
  CKBD1 U88 ( .I(x[21]), .Z(fraction_x[21]) );
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
  CKBD1 U100 ( .I(y[20]), .Z(fraction_y[20]) );
  CKBD1 U101 ( .I(y[19]), .Z(fraction_y[19]) );
  CKBD1 U102 ( .I(y[18]), .Z(fraction_y[18]) );
  CKBD1 U103 ( .I(y[17]), .Z(fraction_y[17]) );
  CKBD1 U104 ( .I(y[16]), .Z(fraction_y[16]) );
  CKBD1 U105 ( .I(y[15]), .Z(fraction_y[15]) );
  CKBD1 U106 ( .I(y[14]), .Z(fraction_y[14]) );
  CKBD1 U107 ( .I(y[13]), .Z(fraction_y[13]) );
  CKBD1 U108 ( .I(y[12]), .Z(fraction_y[12]) );
  CKBD1 U109 ( .I(y[11]), .Z(fraction_y[11]) );
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


module oadm_runtime_root_opt_DW_mult_uns_0_DW_mult_uns_1 ( a, b, product );
  input [10:0] a;
  input [6:0] b;
  output [17:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n19, n20, n21, n22, n23, n25, n26, n27, n28, n29, n30, n31, n33,
         n34, n35, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n227, n228, n229,
         n230, n231, n232, n233, n234, n235, n236, n237, n238, n239, n240,
         n241, n242, n243, n244, n246, n247, n248, n249, n250, n251, n252,
         n253, n254, n255, n256, n257, n258, n259, n260, n261, n262, n263,
         n264, n265, n266, n267, n268, n269, n270, n271, n272, n273, n275,
         n276, n277, n278, n279, n280, n281, n282, n283, n284, n285, n287,
         n288, n289;

  FA1D0 U3 ( .A(n21), .B(n20), .CI(n3), .CO(n2), .S(product[16]) );
  FA1D0 U4 ( .A(n26), .B(n22), .CI(n4), .CO(n3), .S(product[15]) );
  FA1D0 U5 ( .A(n29), .B(n27), .CI(n5), .CO(n4), .S(product[14]) );
  FA1D0 U6 ( .A(n34), .B(n30), .CI(n6), .CO(n5), .S(product[13]) );
  FA1D0 U7 ( .A(n38), .B(n35), .CI(n7), .CO(n6), .S(product[12]) );
  FA1D0 U8 ( .A(n41), .B(n39), .CI(n8), .CO(n7), .S(product[11]) );
  FA1D0 U9 ( .A(n44), .B(n42), .CI(n9), .CO(n8), .S(product[10]) );
  FA1D0 U10 ( .A(n47), .B(n45), .CI(n10), .CO(n9), .S(product[9]) );
  FA1D0 U11 ( .A(n50), .B(n48), .CI(n11), .CO(n10), .S(product[8]) );
  FA1D0 U12 ( .A(n53), .B(n51), .CI(n12), .CO(n11), .S(product[7]) );
  FA1D0 U13 ( .A(n54), .B(n55), .CI(n13), .CO(n12), .S(product[6]) );
  FA1D0 U14 ( .A(n56), .B(n59), .CI(n14), .CO(n13), .S(product[5]) );
  FA1D0 U15 ( .A(n60), .B(n61), .CI(n15), .CO(n14), .S(product[4]) );
  FA1D0 U16 ( .A(n62), .B(n64), .CI(n16), .CO(n15), .S(product[3]) );
  FA1D0 U17 ( .A(n112), .B(n101), .CI(n17), .CO(n16), .S(product[2]) );
  HA1D0 U18 ( .A(n113), .B(n65), .CO(n17), .S(product[1]) );
  FA1D0 U20 ( .A(n67), .B(n23), .CI(n76), .CO(n19), .S(n20) );
  FA1D0 U21 ( .A(n229), .B(n77), .CI(n25), .CO(n21), .S(n22) );
  CMPE42D1 U23 ( .A(n68), .B(n31), .C(n78), .CIX(n28), .D(n89), .CO(n26), 
        .COX(n25), .S(n27) );
  CMPE42D1 U24 ( .A(n90), .B(n69), .C(n79), .CIX(n33), .D(n233), .CO(n29), 
        .COX(n28), .S(n30) );
  CMPE42D1 U26 ( .A(n80), .B(n91), .C(n243), .CIX(n37), .D(n233), .CO(n34), 
        .COX(n33), .S(n35) );
  CMPE42D1 U28 ( .A(n103), .B(n70), .C(n81), .CIX(n40), .D(n92), .CO(n38), 
        .COX(n37), .S(n39) );
  CMPE42D1 U29 ( .A(n104), .B(n71), .C(n82), .CIX(n43), .D(n93), .CO(n41), 
        .COX(n40), .S(n42) );
  CMPE42D1 U30 ( .A(n105), .B(n72), .C(n83), .CIX(n46), .D(n94), .CO(n44), 
        .COX(n43), .S(n45) );
  CMPE42D1 U31 ( .A(n106), .B(n73), .C(n84), .CIX(n49), .D(n95), .CO(n47), 
        .COX(n46), .S(n48) );
  CMPE42D1 U32 ( .A(n107), .B(n74), .C(n85), .CIX(n52), .D(n96), .CO(n50), 
        .COX(n49), .S(n51) );
  CMPE42D1 U33 ( .A(n108), .B(n75), .C(n86), .CIX(n57), .D(n97), .CO(n53), 
        .COX(n52), .S(n54) );
  FA1D0 U34 ( .A(n98), .B(n109), .CI(n58), .CO(n55), .S(n56) );
  HA1D0 U35 ( .A(n63), .B(n87), .CO(n57), .S(n58) );
  FA1D0 U36 ( .A(n110), .B(n88), .CI(n99), .CO(n59), .S(n60) );
  HA1D0 U37 ( .A(n100), .B(n111), .CO(n61), .S(n62) );
  INVD1 U167 ( .I(a[6]), .ZN(n234) );
  INVD1 U168 ( .I(a[10]), .ZN(n228) );
  INVD1 U169 ( .I(a[9]), .ZN(n230) );
  INVD1 U170 ( .I(a[8]), .ZN(n231) );
  INVD1 U171 ( .I(a[7]), .ZN(n232) );
  INVD1 U172 ( .I(a[5]), .ZN(n235) );
  INVD1 U173 ( .I(a[4]), .ZN(n236) );
  INVD1 U174 ( .I(a[3]), .ZN(n237) );
  INVD1 U175 ( .I(a[2]), .ZN(n238) );
  INVD1 U176 ( .I(a[1]), .ZN(n239) );
  INVD1 U177 ( .I(a[0]), .ZN(n240) );
  INVD1 U178 ( .I(n31), .ZN(n233) );
  INVD1 U179 ( .I(n23), .ZN(n229) );
  INVD1 U181 ( .I(b[1]), .ZN(n243) );
  ND2D1 U182 ( .A1(b[1]), .A2(n244), .ZN(n273) );
  INVD1 U186 ( .I(n227), .ZN(n242) );
  CKXOR2D1 U187 ( .A1(n241), .A2(b[6]), .Z(n272) );
  INVD1 U188 ( .I(b[5]), .ZN(n241) );
  INVD1 U189 ( .I(b[0]), .ZN(n244) );
  CKBD1 U190 ( .I(b[3]), .Z(n227) );
  NR2D0 U193 ( .A1(n240), .A2(n244), .ZN(product[0]) );
  OAI22D0 U194 ( .A1(n247), .A2(n248), .B1(n249), .B2(n250), .ZN(n99) );
  OAI22D0 U195 ( .A1(n250), .A2(n248), .B1(n249), .B2(n251), .ZN(n98) );
  CKXOR2D0 U196 ( .A1(n227), .A2(n238), .Z(n250) );
  OAI22D0 U197 ( .A1(n251), .A2(n248), .B1(n249), .B2(n252), .ZN(n97) );
  CKXOR2D0 U198 ( .A1(n227), .A2(n237), .Z(n251) );
  OAI22D0 U199 ( .A1(n252), .A2(n248), .B1(n249), .B2(n253), .ZN(n96) );
  CKXOR2D0 U200 ( .A1(n227), .A2(n236), .Z(n252) );
  OAI22D0 U201 ( .A1(n253), .A2(n248), .B1(n249), .B2(n254), .ZN(n95) );
  CKXOR2D0 U202 ( .A1(n227), .A2(n235), .Z(n253) );
  OAI22D0 U203 ( .A1(n254), .A2(n248), .B1(n249), .B2(n255), .ZN(n94) );
  CKXOR2D0 U204 ( .A1(n227), .A2(n234), .Z(n254) );
  OAI22D0 U205 ( .A1(n255), .A2(n248), .B1(n249), .B2(n256), .ZN(n93) );
  CKXOR2D0 U206 ( .A1(n227), .A2(n232), .Z(n255) );
  OAI22D0 U207 ( .A1(n256), .A2(n248), .B1(n249), .B2(n257), .ZN(n92) );
  CKXOR2D0 U208 ( .A1(n227), .A2(n231), .Z(n256) );
  OAI22D0 U209 ( .A1(n257), .A2(n248), .B1(n249), .B2(n258), .ZN(n91) );
  CKXOR2D0 U210 ( .A1(n227), .A2(n230), .Z(n257) );
  OAI22D0 U211 ( .A1(n258), .A2(n248), .B1(n249), .B2(n242), .ZN(n90) );
  CKXOR2D0 U212 ( .A1(n227), .A2(n228), .Z(n258) );
  AO21D0 U213 ( .A1(n248), .A2(n249), .B(n242), .Z(n89) );
  NR2D0 U214 ( .A1(n259), .A2(n240), .ZN(n88) );
  OAI22D0 U215 ( .A1(n260), .A2(n261), .B1(n259), .B2(n262), .ZN(n87) );
  CKXOR2D0 U216 ( .A1(b[5]), .A2(n240), .Z(n260) );
  OAI22D0 U217 ( .A1(n262), .A2(n261), .B1(n259), .B2(n263), .ZN(n86) );
  CKXOR2D0 U218 ( .A1(b[5]), .A2(n239), .Z(n262) );
  OAI22D0 U219 ( .A1(n263), .A2(n261), .B1(n259), .B2(n264), .ZN(n85) );
  CKXOR2D0 U220 ( .A1(b[5]), .A2(n238), .Z(n263) );
  OAI22D0 U221 ( .A1(n264), .A2(n261), .B1(n259), .B2(n265), .ZN(n84) );
  CKXOR2D0 U222 ( .A1(b[5]), .A2(n237), .Z(n264) );
  OAI22D0 U223 ( .A1(n265), .A2(n261), .B1(n259), .B2(n266), .ZN(n83) );
  CKXOR2D0 U224 ( .A1(b[5]), .A2(n236), .Z(n265) );
  OAI22D0 U225 ( .A1(n266), .A2(n261), .B1(n259), .B2(n267), .ZN(n82) );
  CKXOR2D0 U226 ( .A1(b[5]), .A2(n235), .Z(n266) );
  OAI22D0 U227 ( .A1(n267), .A2(n261), .B1(n259), .B2(n268), .ZN(n81) );
  CKXOR2D0 U228 ( .A1(b[5]), .A2(n234), .Z(n267) );
  OAI22D0 U229 ( .A1(n268), .A2(n261), .B1(n259), .B2(n269), .ZN(n80) );
  CKXOR2D0 U230 ( .A1(b[5]), .A2(n232), .Z(n268) );
  OAI22D0 U231 ( .A1(n269), .A2(n261), .B1(n259), .B2(n270), .ZN(n79) );
  CKXOR2D0 U232 ( .A1(b[5]), .A2(n231), .Z(n269) );
  OAI22D0 U233 ( .A1(n270), .A2(n261), .B1(n259), .B2(n271), .ZN(n78) );
  CKXOR2D0 U234 ( .A1(b[5]), .A2(n230), .Z(n270) );
  OAI22D0 U235 ( .A1(n271), .A2(n261), .B1(n259), .B2(n241), .ZN(n77) );
  CKXOR2D0 U236 ( .A1(b[5]), .A2(n228), .Z(n271) );
  AO21D0 U237 ( .A1(n261), .A2(n259), .B(n241), .Z(n76) );
  NR2D0 U238 ( .A1(n272), .A2(n240), .ZN(n75) );
  OAI22D0 U239 ( .A1(n246), .A2(n240), .B1(n272), .B2(n239), .ZN(n74) );
  OAI22D0 U240 ( .A1(n246), .A2(n239), .B1(n272), .B2(n238), .ZN(n73) );
  OAI22D0 U241 ( .A1(n246), .A2(n238), .B1(n272), .B2(n237), .ZN(n72) );
  OAI22D0 U242 ( .A1(n246), .A2(n237), .B1(n272), .B2(n236), .ZN(n71) );
  OAI22D0 U243 ( .A1(n246), .A2(n236), .B1(n272), .B2(n235), .ZN(n70) );
  OAI22D0 U244 ( .A1(n246), .A2(n234), .B1(n272), .B2(n232), .ZN(n69) );
  OAI22D0 U245 ( .A1(n246), .A2(n232), .B1(n272), .B2(n231), .ZN(n68) );
  OAI22D0 U246 ( .A1(n246), .A2(n230), .B1(n272), .B2(n228), .ZN(n67) );
  OAI21D0 U247 ( .A1(a[0]), .A2(n243), .B(n273), .ZN(n65) );
  OAI32D0 U248 ( .A1(n242), .A2(a[0]), .A3(n249), .B1(n242), .B2(n248), .ZN(
        n64) );
  OAI32D0 U249 ( .A1(n241), .A2(a[0]), .A3(n259), .B1(n241), .B2(n261), .ZN(
        n63) );
  OAI22D0 U251 ( .A1(n246), .A2(n235), .B1(n272), .B2(n234), .ZN(n31) );
  OAI22D0 U252 ( .A1(n246), .A2(n231), .B1(n272), .B2(n230), .ZN(n23) );
  CKND2D0 U253 ( .A1(n272), .A2(b[6]), .ZN(n246) );
  OAI22D0 U254 ( .A1(a[0]), .A2(n273), .B1(n275), .B2(n244), .ZN(n113) );
  OAI22D0 U255 ( .A1(n275), .A2(n273), .B1(n276), .B2(n244), .ZN(n112) );
  CKXOR2D0 U256 ( .A1(b[1]), .A2(n239), .Z(n275) );
  OAI22D0 U257 ( .A1(n276), .A2(n273), .B1(n277), .B2(n244), .ZN(n111) );
  CKXOR2D0 U258 ( .A1(b[1]), .A2(n238), .Z(n276) );
  OAI22D0 U259 ( .A1(n277), .A2(n273), .B1(n278), .B2(n244), .ZN(n110) );
  CKXOR2D0 U260 ( .A1(b[1]), .A2(n237), .Z(n277) );
  OAI22D0 U261 ( .A1(n278), .A2(n273), .B1(n279), .B2(n244), .ZN(n109) );
  CKXOR2D0 U262 ( .A1(b[1]), .A2(n236), .Z(n278) );
  OAI22D0 U263 ( .A1(n279), .A2(n273), .B1(n280), .B2(n244), .ZN(n108) );
  CKXOR2D0 U264 ( .A1(b[1]), .A2(n235), .Z(n279) );
  OAI22D0 U265 ( .A1(n280), .A2(n273), .B1(n281), .B2(n244), .ZN(n107) );
  CKXOR2D0 U266 ( .A1(b[1]), .A2(n234), .Z(n280) );
  OAI22D0 U267 ( .A1(n281), .A2(n273), .B1(n282), .B2(n244), .ZN(n106) );
  CKXOR2D0 U268 ( .A1(b[1]), .A2(n232), .Z(n281) );
  OAI22D0 U269 ( .A1(n282), .A2(n273), .B1(n283), .B2(n244), .ZN(n105) );
  CKXOR2D0 U270 ( .A1(b[1]), .A2(n231), .Z(n282) );
  OAI22D0 U271 ( .A1(n283), .A2(n273), .B1(n284), .B2(n244), .ZN(n104) );
  CKXOR2D0 U272 ( .A1(b[1]), .A2(n230), .Z(n283) );
  OAI22D0 U273 ( .A1(n284), .A2(n273), .B1(n243), .B2(n244), .ZN(n103) );
  CKXOR2D0 U274 ( .A1(b[1]), .A2(n228), .Z(n284) );
  NR2D0 U275 ( .A1(n249), .A2(n240), .ZN(n101) );
  OAI22D0 U276 ( .A1(n285), .A2(n248), .B1(n249), .B2(n247), .ZN(n100) );
  CKXOR2D0 U277 ( .A1(n227), .A2(n239), .Z(n247) );
  CKXOR2D0 U279 ( .A1(n227), .A2(n240), .Z(n285) );
  XNR3D0 U180 ( .A1(n2), .A2(n287), .A3(n19), .ZN(product[17]) );
  NR2D0 U183 ( .A1(n228), .A2(n246), .ZN(n287) );
  OAI211D0 U184 ( .A1(b[4]), .A2(b[5]), .B(n259), .C(n288), .ZN(n261) );
  CKND2D0 U185 ( .A1(b[4]), .A2(b[5]), .ZN(n288) );
  CKXOR2D0 U191 ( .A1(b[4]), .A2(n242), .Z(n259) );
  OAI211D0 U192 ( .A1(b[2]), .A2(n227), .B(n249), .C(n289), .ZN(n248) );
  CKND2D0 U250 ( .A1(b[2]), .A2(n227), .ZN(n289) );
  CKXOR2D0 U278 ( .A1(b[2]), .A2(n243), .Z(n249) );
endmodule


module oadm_runtime_root_opt ( x, y, level, divide_mode, result );
  input [31:0] x;
  input [31:0] y;
  input [1:0] level;
  output [31:0] result;
  input divide_mode;
  wire   n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n87, n88, n89, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102;
  wire   [22:10] x_mantissa;
  wire   [22:10] y_mantissa;
  wire   [24:6] plane_full;
  wire   [6:0] coefficient;
  wire   [17:0] reduced_scale_product;
  wire   [22:5] normalized_fraction;
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
        SYNOPSYS_UNCONNECTED__34;
  assign result[1] = 1'b0;
  assign result[2] = 1'b0;
  assign result[3] = 1'b0;
  assign result[4] = 1'b0;
  assign result[0] = 1'b0;

  MAOI22D1 U4 ( .A1(n94), .A2(n95), .B1(n92), .B2(n18), .ZN(n17) );
  AN2XD1 U77 ( .A1(n66), .A2(n100), .Z(n62) );
  OA21D1 U79 ( .A1(n63), .A2(n69), .B(n97), .Z(n68) );
  AO21D1 U82 ( .A1(n99), .A2(n71), .B(n75), .Z(n73) );
  AN2XD1 U85 ( .A1(n78), .A2(n102), .Z(n74) );
  AO31D1 U92 ( .A1(y_mantissa[21]), .A2(n97), .A3(n99), .B(n75), .Z(n80) );
  AN2XD1 U98 ( .A1(n71), .A2(y_mantissa[20]), .Z(n77) );
  oadm_runtime_plane_pruned plane ( .x_mantissa({1'b0, x_mantissa, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y_mantissa({1'b0, 
        y_mantissa, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .level({n84, n83}), .divide_mode(n87), .plane_exact({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, plane_full, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9}) );
  fp32_normal_finite_wrapper fp_wrapper ( .x({x[31:10], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y({y[31:10], 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .divide_mode(n87), 
        .fraction_x({x_mantissa, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15, SYNOPSYS_UNCONNECTED__16, 
        SYNOPSYS_UNCONNECTED__17, SYNOPSYS_UNCONNECTED__18, 
        SYNOPSYS_UNCONNECTED__19}), .fraction_y({y_mantissa, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29}), 
        .result_fraction({normalized_fraction, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .exponent_adjust({exponent_adjust[2], exponent_adjust[2], 
        exponent_adjust[0]}), .result({result[31:5], SYNOPSYS_UNCONNECTED__30, 
        SYNOPSYS_UNCONNECTED__31, SYNOPSYS_UNCONNECTED__32, 
        SYNOPSYS_UNCONNECTED__33, SYNOPSYS_UNCONNECTED__34}) );
  oadm_runtime_root_opt_DW_mult_uns_0_DW_mult_uns_1 mult_128 ( .a(
        plane_full[24:14]), .b(coefficient), .product(reduced_scale_product)
         );
  INVD1 U117 ( .I(n88), .ZN(n87) );
  ND2D1 U118 ( .A1(n92), .A2(n33), .ZN(exponent_adjust[2]) );
  INVD1 U119 ( .I(n20), .ZN(n92) );
  INVD1 U120 ( .I(n24), .ZN(n91) );
  INVD1 U121 ( .I(n33), .ZN(n94) );
  ND2D1 U122 ( .A1(n93), .A2(plane_full[6]), .ZN(n89) );
  INR3D0 U123 ( .A1(n35), .B1(n34), .B2(n93), .ZN(n20) );
  INVD1 U124 ( .I(n15), .ZN(n93) );
  ND2D1 U125 ( .A1(n15), .A2(n92), .ZN(exponent_adjust[0]) );
  ND3D1 U126 ( .A1(n35), .A2(n34), .A3(n15), .ZN(n33) );
  OAI221D0 U127 ( .A1(n38), .A2(n91), .B1(n15), .B2(n34), .C(n39), .ZN(
        normalized_fraction[21]) );
  OA22D0 U128 ( .A1(n33), .A2(n40), .B1(n92), .B2(n37), .Z(n39) );
  OAI221D0 U129 ( .A1(n34), .A2(n91), .B1(n15), .B2(n35), .C(n36), .ZN(
        normalized_fraction[22]) );
  OA22D0 U130 ( .A1(n33), .A2(n37), .B1(n92), .B2(n38), .Z(n36) );
  OAI221D0 U131 ( .A1(n53), .A2(n91), .B1(n15), .B2(n51), .C(n56), .ZN(
        normalized_fraction[13]) );
  OA22D0 U132 ( .A1(n33), .A2(n57), .B1(n92), .B2(n55), .Z(n56) );
  OAI221D0 U133 ( .A1(n51), .A2(n91), .B1(n15), .B2(n49), .C(n54), .ZN(
        normalized_fraction[14]) );
  OA22D0 U134 ( .A1(n33), .A2(n55), .B1(n92), .B2(n53), .Z(n54) );
  OAI221D0 U135 ( .A1(n49), .A2(n91), .B1(n15), .B2(n47), .C(n52), .ZN(
        normalized_fraction[15]) );
  OA22D0 U136 ( .A1(n33), .A2(n53), .B1(n92), .B2(n51), .Z(n52) );
  OAI221D0 U137 ( .A1(n47), .A2(n91), .B1(n15), .B2(n45), .C(n50), .ZN(
        normalized_fraction[16]) );
  OA22D0 U138 ( .A1(n33), .A2(n51), .B1(n92), .B2(n49), .Z(n50) );
  OAI221D0 U139 ( .A1(n45), .A2(n91), .B1(n15), .B2(n42), .C(n48), .ZN(
        normalized_fraction[17]) );
  OA22D0 U140 ( .A1(n33), .A2(n49), .B1(n92), .B2(n47), .Z(n48) );
  OAI221D0 U141 ( .A1(n42), .A2(n91), .B1(n15), .B2(n40), .C(n46), .ZN(
        normalized_fraction[18]) );
  OA22D0 U142 ( .A1(n33), .A2(n47), .B1(n92), .B2(n45), .Z(n46) );
  OAI221D0 U143 ( .A1(n40), .A2(n91), .B1(n15), .B2(n37), .C(n44), .ZN(
        normalized_fraction[19]) );
  OA22D0 U144 ( .A1(n33), .A2(n45), .B1(n92), .B2(n42), .Z(n44) );
  OAI221D0 U145 ( .A1(n16), .A2(n91), .B1(n15), .B2(n57), .C(n60), .ZN(
        normalized_fraction[10]) );
  OA22D0 U146 ( .A1(n33), .A2(n18), .B1(n92), .B2(n14), .Z(n60) );
  OAI221D0 U147 ( .A1(n57), .A2(n91), .B1(n15), .B2(n55), .C(n59), .ZN(
        normalized_fraction[11]) );
  OA22D0 U148 ( .A1(n33), .A2(n14), .B1(n92), .B2(n16), .Z(n59) );
  OAI221D0 U149 ( .A1(n55), .A2(n91), .B1(n15), .B2(n53), .C(n58), .ZN(
        normalized_fraction[12]) );
  OA22D0 U150 ( .A1(n33), .A2(n16), .B1(n92), .B2(n57), .Z(n58) );
  OAI221D0 U151 ( .A1(n37), .A2(n91), .B1(n15), .B2(n38), .C(n41), .ZN(
        normalized_fraction[20]) );
  OA22D0 U152 ( .A1(n33), .A2(n42), .B1(n92), .B2(n40), .Z(n41) );
  OAI221D0 U153 ( .A1(n14), .A2(n91), .B1(n15), .B2(n16), .C(n17), .ZN(
        normalized_fraction[9]) );
  OAI222D0 U154 ( .A1(n21), .A2(n91), .B1(n87), .B2(n22), .C1(n15), .C2(n18), 
        .ZN(normalized_fraction[7]) );
  ND2D1 U155 ( .A1(plane_full[6]), .A2(n20), .ZN(n22) );
  NR2D1 U156 ( .A1(n93), .A2(n35), .ZN(n24) );
  OAI22D1 U157 ( .A1(n15), .A2(n21), .B1(n87), .B2(n23), .ZN(
        normalized_fraction[6]) );
  ND2D1 U158 ( .A1(plane_full[6]), .A2(n24), .ZN(n23) );
  NR2D1 U159 ( .A1(n87), .A2(n89), .ZN(normalized_fraction[5]) );
  INVD1 U160 ( .I(n21), .ZN(n95) );
  AOI22D1 U161 ( .A1(reduced_scale_product[17]), .A2(n87), .B1(plane_full[24]), 
        .B2(n88), .ZN(n15) );
  AOI22D1 U162 ( .A1(reduced_scale_product[16]), .A2(n87), .B1(plane_full[23]), 
        .B2(n88), .ZN(n35) );
  AOI22D1 U163 ( .A1(reduced_scale_product[15]), .A2(n87), .B1(plane_full[22]), 
        .B2(n88), .ZN(n34) );
  OAI221D0 U164 ( .A1(n18), .A2(n91), .B1(n15), .B2(n14), .C(n19), .ZN(
        normalized_fraction[8]) );
  AOI32D1 U165 ( .A1(n94), .A2(n88), .A3(plane_full[6]), .B1(n20), .B2(n95), 
        .ZN(n19) );
  AOI22D1 U166 ( .A1(reduced_scale_product[14]), .A2(n87), .B1(plane_full[21]), 
        .B2(n88), .ZN(n38) );
  AOI22D1 U167 ( .A1(reduced_scale_product[13]), .A2(n87), .B1(plane_full[20]), 
        .B2(n88), .ZN(n37) );
  AOI22D1 U168 ( .A1(reduced_scale_product[12]), .A2(n87), .B1(plane_full[19]), 
        .B2(n88), .ZN(n40) );
  AOI22D1 U169 ( .A1(reduced_scale_product[11]), .A2(n87), .B1(plane_full[18]), 
        .B2(n88), .ZN(n42) );
  AOI22D1 U170 ( .A1(reduced_scale_product[10]), .A2(n87), .B1(plane_full[17]), 
        .B2(n88), .ZN(n45) );
  AOI22D1 U171 ( .A1(reduced_scale_product[9]), .A2(n87), .B1(plane_full[16]), 
        .B2(n88), .ZN(n47) );
  AOI22D1 U172 ( .A1(reduced_scale_product[8]), .A2(n87), .B1(plane_full[15]), 
        .B2(n88), .ZN(n49) );
  AOI22D1 U173 ( .A1(reduced_scale_product[7]), .A2(n87), .B1(plane_full[14]), 
        .B2(n88), .ZN(n51) );
  AOI22D1 U174 ( .A1(reduced_scale_product[6]), .A2(n87), .B1(plane_full[13]), 
        .B2(n88), .ZN(n53) );
  OAI211D1 U175 ( .A1(n98), .A2(n63), .B(n65), .C(n66), .ZN(coefficient[1]) );
  INVD1 U176 ( .I(n63), .ZN(n102) );
  NR3D0 U177 ( .A1(n71), .A2(n78), .A3(n79), .ZN(n69) );
  ND3D1 U178 ( .A1(n98), .A2(n97), .A3(n99), .ZN(n64) );
  OAI22D1 U179 ( .A1(n69), .A2(n63), .B1(n71), .B2(n100), .ZN(coefficient[2])
         );
  OAI211D1 U180 ( .A1(n100), .A2(n81), .B(n82), .C(n67), .ZN(coefficient[0])
         );
  ND2D1 U181 ( .A1(n98), .A2(n97), .ZN(n81) );
  OAI31D1 U182 ( .A1(n79), .A2(n75), .A3(n77), .B(n102), .ZN(n82) );
  INVD1 U183 ( .I(n72), .ZN(n100) );
  AOI22D1 U184 ( .A1(reduced_scale_product[5]), .A2(n87), .B1(plane_full[12]), 
        .B2(n88), .ZN(n55) );
  AOI22D1 U185 ( .A1(reduced_scale_product[4]), .A2(n87), .B1(plane_full[11]), 
        .B2(n88), .ZN(n57) );
  AOI22D1 U186 ( .A1(reduced_scale_product[3]), .A2(n87), .B1(plane_full[10]), 
        .B2(n88), .ZN(n16) );
  AOI22D1 U187 ( .A1(reduced_scale_product[2]), .A2(n87), .B1(plane_full[9]), 
        .B2(n88), .ZN(n14) );
  AOI22D1 U188 ( .A1(reduced_scale_product[1]), .A2(n87), .B1(plane_full[8]), 
        .B2(n88), .ZN(n18) );
  AOI22D1 U189 ( .A1(reduced_scale_product[0]), .A2(n87), .B1(plane_full[7]), 
        .B2(n88), .ZN(n21) );
  NR3D0 U190 ( .A1(y_mantissa[21]), .A2(y_mantissa[22]), .A3(n99), .ZN(n75) );
  ND2D1 U191 ( .A1(n102), .A2(n80), .ZN(n65) );
  OAI221D0 U192 ( .A1(n97), .A2(n66), .B1(n84), .B2(n83), .C(n76), .ZN(
        coefficient[3]) );
  AOI211XD0 U193 ( .A1(n77), .A2(n102), .B(n96), .C(n74), .ZN(n76) );
  INVD1 U194 ( .I(n65), .ZN(n96) );
  INVD1 U195 ( .I(y_mantissa[20]), .ZN(n99) );
  INVD1 U196 ( .I(y_mantissa[22]), .ZN(n97) );
  NR2D1 U197 ( .A1(n97), .A2(y_mantissa[21]), .ZN(n71) );
  NR3D0 U198 ( .A1(n98), .A2(y_mantissa[22]), .A3(n99), .ZN(n78) );
  INVD1 U199 ( .I(y_mantissa[21]), .ZN(n98) );
  ND2D1 U200 ( .A1(n84), .A2(n83), .ZN(n63) );
  OAI211D1 U201 ( .A1(y_mantissa[22]), .A2(n66), .B(n67), .C(n70), .ZN(
        coefficient[4]) );
  AOI221D0 U202 ( .A1(n71), .A2(n72), .B1(n102), .B2(n73), .C(n74), .ZN(n70)
         );
  NR3D0 U203 ( .A1(n98), .A2(y_mantissa[20]), .A3(n97), .ZN(n79) );
  OAI211D1 U204 ( .A1(y_mantissa[21]), .A2(n100), .B(n67), .C(n68), .ZN(
        coefficient[5]) );
  OA22D0 U205 ( .A1(n84), .A2(n83), .B1(n63), .B2(n64), .Z(n67) );
  NR2D1 U206 ( .A1(n101), .A2(n83), .ZN(n72) );
  ND2D1 U207 ( .A1(n83), .A2(n101), .ZN(n66) );
  INVD1 U208 ( .I(n84), .ZN(n101) );
  OAI221D0 U209 ( .A1(y_mantissa[22]), .A2(n62), .B1(n63), .B2(n64), .C(n65), 
        .ZN(coefficient[6]) );
  CKBD1 U210 ( .I(level[0]), .Z(n83) );
  CKBD1 U211 ( .I(level[1]), .Z(n84) );
  INVD1 U214 ( .I(divide_mode), .ZN(n88) );
endmodule

