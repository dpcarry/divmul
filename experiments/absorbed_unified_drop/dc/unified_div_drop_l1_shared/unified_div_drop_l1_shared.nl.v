/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Wed Sep 16 00:44:55 2026
/////////////////////////////////////////////////////////////


module unified_div_drop_l1_shared_core_DW_mult_tc_1 ( a, b, product );
  input [5:0] a;
  input [7:0] b;
  output [13:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n22, n23, n24, n25, n26, n27, n28, n29, n30, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n59, n60, n62,
         n63, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121;

  FA1D0 U3 ( .A(n12), .B(n38), .CI(n3), .CO(n2), .S(product[11]) );
  FA1D0 U4 ( .A(n15), .B(n13), .CI(n4), .CO(n3), .S(product[10]) );
  FA1D0 U5 ( .A(n18), .B(n16), .CI(n5), .CO(n4), .S(product[9]) );
  FA1D0 U6 ( .A(n23), .B(n19), .CI(n6), .CO(n5), .S(product[8]) );
  FA1D0 U7 ( .A(n24), .B(n28), .CI(n7), .CO(n6), .S(product[7]) );
  FA1D0 U8 ( .A(n29), .B(n32), .CI(n8), .CO(n7), .S(product[6]) );
  FA1D0 U9 ( .A(n33), .B(n35), .CI(n9), .CO(n8), .S(product[5]) );
  FA1D0 U10 ( .A(n37), .B(n47), .CI(n10), .CO(n9), .S(product[4]) );
  FA1D0 U11 ( .A(n59), .B(n52), .CI(n11), .CO(n10), .S(product[3]) );
  HA1D0 U12 ( .A(n63), .B(n55), .CO(n11), .S(product[2]) );
  FA1D0 U13 ( .A(n39), .B(n43), .CI(n14), .CO(n12), .S(n13) );
  CMPE42D1 U14 ( .A(n20), .B(n48), .C(n44), .CIX(n17), .D(n40), .CO(n15), 
        .COX(n14), .S(n16) );
  CMPE42D1 U15 ( .A(n45), .B(n49), .C(n111), .CIX(n22), .D(n25), .CO(n18), 
        .COX(n17), .S(n19) );
  CMPE42D1 U17 ( .A(n53), .B(n56), .C(n41), .CIX(n27), .D(n26), .CO(n23), 
        .COX(n22), .S(n24) );
  HA1D0 U18 ( .A(n50), .B(n30), .CO(n25), .S(n26) );
  CMPE42D1 U19 ( .A(n46), .B(n60), .C(n57), .CIX(n34), .D(n113), .CO(n28), 
        .COX(n27), .S(n29) );
  FA1D0 U21 ( .A(n42), .B(n51), .CI(n36), .CO(n32), .S(n33) );
  HA1D0 U24 ( .A(n54), .B(n62), .CO(n36), .S(n37) );
  INVD1 U69 ( .I(b[2]), .ZN(n109) );
  INVD1 U70 ( .I(b[4]), .ZN(n114) );
  INVD1 U71 ( .I(b[6]), .ZN(n112) );
  INVD1 U72 ( .I(b[5]), .ZN(n108) );
  CKBD1 U73 ( .I(product[12]), .Z(product[13]) );
  INVD1 U74 ( .I(b[0]), .ZN(n110) );
  INVD1 U75 ( .I(n30), .ZN(n113) );
  INVD1 U76 ( .I(n20), .ZN(n111) );
  INVD1 U77 ( .I(a[0]), .ZN(n119) );
  INVD1 U78 ( .I(a[1]), .ZN(n118) );
  INVD1 U79 ( .I(a[2]), .ZN(n117) );
  INVD1 U80 ( .I(a[4]), .ZN(n115) );
  INVD1 U81 ( .I(a[3]), .ZN(n116) );
  NR2D0 U82 ( .A1(n118), .A2(n110), .ZN(product[1]) );
  CKND0 U83 ( .I(n2), .ZN(product[12]) );
  NR2D0 U84 ( .A1(n110), .A2(n119), .ZN(product[0]) );
  NR2D0 U85 ( .A1(n119), .A2(n109), .ZN(n63) );
  NR2D0 U86 ( .A1(n119), .A2(n114), .ZN(n62) );
  NR2D0 U87 ( .A1(n119), .A2(n112), .ZN(n60) );
  NR2D0 U88 ( .A1(n118), .A2(n109), .ZN(n59) );
  NR2D0 U89 ( .A1(n118), .A2(n108), .ZN(n57) );
  NR2D0 U90 ( .A1(n118), .A2(n112), .ZN(n56) );
  NR2D0 U91 ( .A1(n110), .A2(n117), .ZN(n55) );
  NR2D0 U92 ( .A1(n109), .A2(n117), .ZN(n54) );
  NR2D0 U93 ( .A1(n108), .A2(n117), .ZN(n53) );
  NR2D0 U94 ( .A1(n110), .A2(n116), .ZN(n52) );
  NR2D0 U95 ( .A1(n109), .A2(n116), .ZN(n51) );
  NR2D0 U96 ( .A1(n114), .A2(n116), .ZN(n50) );
  NR2D0 U97 ( .A1(n108), .A2(n116), .ZN(n49) );
  NR2D0 U98 ( .A1(n112), .A2(n116), .ZN(n48) );
  NR2D0 U99 ( .A1(n110), .A2(n115), .ZN(n47) );
  NR2D0 U100 ( .A1(n109), .A2(n115), .ZN(n46) );
  NR2D0 U101 ( .A1(n114), .A2(n115), .ZN(n45) );
  NR2D0 U102 ( .A1(n108), .A2(n115), .ZN(n44) );
  NR2D0 U103 ( .A1(n112), .A2(n115), .ZN(n43) );
  CKND2D0 U104 ( .A1(a[5]), .A2(b[0]), .ZN(n42) );
  CKND2D0 U105 ( .A1(a[5]), .A2(b[2]), .ZN(n41) );
  CKND2D0 U106 ( .A1(a[5]), .A2(b[4]), .ZN(n40) );
  CKND2D0 U107 ( .A1(a[5]), .A2(b[5]), .ZN(n39) );
  CKND2D0 U108 ( .A1(a[5]), .A2(b[6]), .ZN(n38) );
  XNR2D0 U109 ( .A1(n120), .A2(n121), .ZN(n35) );
  CKND2D0 U110 ( .A1(n120), .A2(n121), .ZN(n34) );
  CKND2D0 U111 ( .A1(b[5]), .A2(a[0]), .ZN(n121) );
  CKND2D0 U112 ( .A1(b[4]), .A2(a[1]), .ZN(n120) );
  NR2D0 U113 ( .A1(n117), .A2(n114), .ZN(n30) );
  NR2D0 U114 ( .A1(n117), .A2(n112), .ZN(n20) );
endmodule


module unified_div_drop_l1_shared_core_DW01_add_1 ( A, B, CI, SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [14:4] carry;

  FA1D0 U1_3 ( .A(A[3]), .B(B[3]), .CI(n1), .CO(carry[4]), .S(SUM[3]) );
  FA1D0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1D0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1D0 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FA1D0 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FA1D0 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  XOR3D1 U1_14 ( .A1(A[14]), .A2(B[14]), .A3(carry[14]), .Z(SUM[14]) );
  FA1D0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA1D0 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA1D0 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FA1D0 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  FA1D0 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  AN2XD1 U1 ( .A1(B[2]), .A2(A[2]), .Z(n1) );
  CKBD1 U2 ( .I(B[1]), .Z(SUM[1]) );
  CKBD1 U3 ( .I(B[0]), .Z(SUM[0]) );
  CKXOR2D1 U4 ( .A1(B[2]), .A2(A[2]), .Z(SUM[2]) );
endmodule


module unified_div_drop_l1_shared_core_DW01_add_0 ( A, B, CI, SUM, CO );
  input [17:0] A;
  input [17:0] B;
  output [17:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [14:2] carry;

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
  FA1D0 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FA1D0 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FA1D0 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  FA1D0 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  XOR3D1 U1_14 ( .A1(A[14]), .A2(B[14]), .A3(carry[14]), .Z(SUM[14]) );
  AN2XD1 U1 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
  CKXOR2D1 U2 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
endmodule


module unified_div_drop_l1_shared_core_DW_mult_tc_0 ( a, b, product );
  input [5:0] a;
  input [7:0] b;
  output [13:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n16, n17,
         n18, n19, n20, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n72, n73, n76, n77, n78,
         n79, n80, n81, n82, n84, n85, n86, n87, n88, n89, n90, n92, n93, n94,
         n95, n96, n97, n98, n99, n113, n114, n115, n158, n159, n160, n161,
         n162, n163, n164, n165, n166;

  FA1D0 U2 ( .A(n14), .B(n160), .CI(n2), .CO(n1), .S(product[12]) );
  FA1D0 U3 ( .A(n16), .B(n159), .CI(n3), .CO(n2), .S(product[11]) );
  FA1D0 U4 ( .A(n18), .B(n17), .CI(n4), .CO(n3), .S(product[10]) );
  FA1D0 U5 ( .A(n22), .B(n19), .CI(n5), .CO(n4), .S(product[9]) );
  FA1D0 U6 ( .A(n26), .B(n23), .CI(n6), .CO(n5), .S(product[8]) );
  FA1D0 U7 ( .A(n30), .B(n27), .CI(n7), .CO(n6), .S(product[7]) );
  FA1D0 U8 ( .A(n31), .B(n34), .CI(n8), .CO(n7), .S(product[6]) );
  FA1D0 U9 ( .A(n35), .B(n38), .CI(n9), .CO(n8), .S(product[5]) );
  FA1D0 U10 ( .A(n39), .B(n42), .CI(n10), .CO(n9), .S(product[4]) );
  FA1D0 U11 ( .A(n43), .B(n44), .CI(n11), .CO(n10), .S(product[3]) );
  FA1D0 U12 ( .A(n45), .B(n90), .CI(n12), .CO(n11), .S(product[2]) );
  HA1D0 U13 ( .A(n13), .B(n98), .CO(n12), .S(product[1]) );
  HA1D0 U14 ( .A(n99), .B(a[1]), .CO(n13), .S(product[0]) );
  FA1D0 U16 ( .A(n20), .B(n162), .CI(n76), .CO(n16), .S(n17) );
  FA1D0 U17 ( .A(n77), .B(n158), .CI(n24), .CO(n18), .S(n19) );
  FA1D0 U19 ( .A(n28), .B(n78), .CI(n25), .CO(n22), .S(n23) );
  FA1D0 U22 ( .A(n32), .B(n79), .CI(n29), .CO(n26), .S(n27) );
  HA1D0 U23 ( .A(n85), .B(n92), .CO(n28), .S(n29) );
  FA1D0 U24 ( .A(n36), .B(n80), .CI(n33), .CO(n30), .S(n31) );
  HA1D0 U25 ( .A(n86), .B(n93), .CO(n32), .S(n33) );
  FA1D0 U26 ( .A(n40), .B(n81), .CI(n37), .CO(n34), .S(n35) );
  HA1D0 U27 ( .A(n87), .B(n94), .CO(n36), .S(n37) );
  FA1D0 U28 ( .A(n88), .B(n82), .CI(n41), .CO(n38), .S(n39) );
  HA1D0 U29 ( .A(n95), .B(n72), .CO(n40), .S(n41) );
  HA1D0 U30 ( .A(n89), .B(n96), .CO(n42), .S(n43) );
  HA1D0 U31 ( .A(n97), .B(n73), .CO(n44), .S(n45) );
  MUX2ND0 U34 ( .I0(n113), .I1(n160), .S(n46), .ZN(n14) );
  MUX2ND0 U36 ( .I0(n113), .I1(n160), .S(n47), .ZN(n76) );
  MUX2ND0 U38 ( .I0(n113), .I1(n160), .S(n48), .ZN(n77) );
  MUX2ND0 U40 ( .I0(n113), .I1(n160), .S(n49), .ZN(n78) );
  MUX2ND0 U42 ( .I0(n113), .I1(n160), .S(n50), .ZN(n79) );
  MUX2ND0 U44 ( .I0(n113), .I1(n160), .S(n51), .ZN(n80) );
  MUX2ND0 U46 ( .I0(n113), .I1(n160), .S(n52), .ZN(n81) );
  MUX2ND0 U48 ( .I0(n113), .I1(n160), .S(n53), .ZN(n82) );
  MUX2ND0 U52 ( .I0(n114), .I1(n162), .S(n54), .ZN(n20) );
  MUX2ND0 U54 ( .I0(n114), .I1(n162), .S(n55), .ZN(n84) );
  MUX2ND0 U56 ( .I0(n114), .I1(n162), .S(n56), .ZN(n85) );
  MUX2ND0 U58 ( .I0(n114), .I1(n162), .S(n57), .ZN(n86) );
  MUX2ND0 U60 ( .I0(n114), .I1(n162), .S(n58), .ZN(n87) );
  MUX2ND0 U62 ( .I0(n114), .I1(n162), .S(n59), .ZN(n88) );
  MUX2ND0 U64 ( .I0(n114), .I1(n162), .S(n60), .ZN(n89) );
  MUX2ND0 U66 ( .I0(n114), .I1(n162), .S(n61), .ZN(n90) );
  MUX2ND0 U70 ( .I0(n115), .I1(n164), .S(n62), .ZN(n92) );
  MUX2ND0 U72 ( .I0(n115), .I1(n164), .S(n63), .ZN(n93) );
  MUX2ND0 U74 ( .I0(n115), .I1(n164), .S(n64), .ZN(n94) );
  MUX2ND0 U76 ( .I0(n115), .I1(n164), .S(n65), .ZN(n95) );
  MUX2ND0 U78 ( .I0(n115), .I1(n164), .S(n66), .ZN(n96) );
  MUX2ND0 U80 ( .I0(n115), .I1(n164), .S(n67), .ZN(n97) );
  MUX2ND0 U82 ( .I0(n115), .I1(n164), .S(n68), .ZN(n98) );
  MUX2ND0 U84 ( .I0(n115), .I1(n164), .S(n69), .ZN(n99) );
  INVD1 U116 ( .I(n14), .ZN(n159) );
  INVD1 U117 ( .I(n73), .ZN(n162) );
  INVD1 U118 ( .I(n72), .ZN(n160) );
  INVD1 U119 ( .I(a[1]), .ZN(n164) );
  INVD1 U120 ( .I(a[3]), .ZN(n163) );
  INVD1 U121 ( .I(n20), .ZN(n158) );
  INVD1 U122 ( .I(a[5]), .ZN(n161) );
  CKND0 U123 ( .I(n1), .ZN(product[13]) );
  CKND2D0 U124 ( .A1(b[0]), .A2(a[0]), .ZN(n69) );
  MUX2ND0 U125 ( .I0(b[0]), .I1(b[1]), .S(a[0]), .ZN(n68) );
  MUX2ND0 U126 ( .I0(b[1]), .I1(b[2]), .S(a[0]), .ZN(n67) );
  MUX2ND0 U127 ( .I0(b[2]), .I1(b[3]), .S(a[0]), .ZN(n66) );
  MUX2ND0 U128 ( .I0(b[3]), .I1(b[4]), .S(a[0]), .ZN(n65) );
  MUX2ND0 U129 ( .I0(b[4]), .I1(b[5]), .S(a[0]), .ZN(n64) );
  MUX2ND0 U130 ( .I0(b[5]), .I1(b[6]), .S(a[0]), .ZN(n63) );
  IND2D0 U131 ( .A1(a[0]), .B1(b[6]), .ZN(n62) );
  CKND2D0 U132 ( .A1(b[0]), .A2(n165), .ZN(n61) );
  MUX2ND0 U133 ( .I0(b[0]), .I1(b[1]), .S(n165), .ZN(n60) );
  MUX2ND0 U134 ( .I0(b[1]), .I1(b[2]), .S(n165), .ZN(n59) );
  MUX2ND0 U135 ( .I0(b[2]), .I1(b[3]), .S(n165), .ZN(n58) );
  MUX2ND0 U136 ( .I0(b[3]), .I1(b[4]), .S(n165), .ZN(n57) );
  MUX2ND0 U137 ( .I0(b[4]), .I1(b[5]), .S(n165), .ZN(n56) );
  MUX2ND0 U138 ( .I0(b[5]), .I1(b[6]), .S(n165), .ZN(n55) );
  IND2D0 U139 ( .A1(n165), .B1(b[6]), .ZN(n54) );
  CKXOR2D0 U140 ( .A1(a[1]), .A2(a[2]), .Z(n165) );
  CKND2D0 U141 ( .A1(b[0]), .A2(n166), .ZN(n53) );
  MUX2ND0 U142 ( .I0(b[0]), .I1(b[1]), .S(n166), .ZN(n52) );
  MUX2ND0 U143 ( .I0(b[1]), .I1(b[2]), .S(n166), .ZN(n51) );
  MUX2ND0 U144 ( .I0(b[2]), .I1(b[3]), .S(n166), .ZN(n50) );
  MUX2ND0 U145 ( .I0(b[3]), .I1(b[4]), .S(n166), .ZN(n49) );
  MUX2ND0 U146 ( .I0(b[4]), .I1(b[5]), .S(n166), .ZN(n48) );
  MUX2ND0 U147 ( .I0(b[5]), .I1(b[6]), .S(n166), .ZN(n47) );
  IND2D0 U148 ( .A1(n166), .B1(b[6]), .ZN(n46) );
  CKXOR2D0 U149 ( .A1(a[3]), .A2(a[4]), .Z(n166) );
  CKXOR2D0 U150 ( .A1(n84), .A2(a[1]), .Z(n25) );
  IND2D0 U151 ( .A1(n84), .B1(a[1]), .ZN(n24) );
  CKND2D0 U152 ( .A1(a[0]), .A2(n164), .ZN(n115) );
  OAI21D0 U153 ( .A1(a[2]), .A2(a[1]), .B(n163), .ZN(n114) );
  OAI21D0 U154 ( .A1(a[4]), .A2(a[3]), .B(n161), .ZN(n113) );
  AOI21D0 U155 ( .A1(a[1]), .A2(a[2]), .B(n163), .ZN(n73) );
  AOI21D0 U156 ( .A1(a[3]), .A2(a[4]), .B(n161), .ZN(n72) );
endmodule


module unified_div_drop_l1_shared_core ( fx, fy, divide_mode, value );
  input [22:0] fx;
  input [22:0] fy;
  output [28:0] value;
  input divide_mode;
  wire   rx_5_, ry_5_, a_2, a_0, N33, N34, N35, N36, N37, N38, N39, N40, N41,
         N42, N43, N44, N45, N46, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, px_9_, px_8_, px_7_, px_6_, px_5_, px_4_, px_3_, px_2_,
         px_1_, px_13_, px_12_, px_11_, px_10_, px_0_, N62, N61, N60, N59, N58,
         N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n330, n340, n350, n360, n370, n380, n390,
         n400, n410, n420, n430, n440, n450, n460, n47, n480, n490, n500, n510,
         n520, n530, n540, n550;
  wire   [6:4] a;
  wire   [6:0] b;
  wire   [14:2] t;
  wire   [13:1] py;
  wire   [17:1] signed_y;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4;

  OR2D1 U7 ( .A1(b[4]), .A2(n520), .Z(t[6]) );
  unified_div_drop_l1_shared_core_DW_mult_tc_1 mult_20 ( .a({rx_5_, fx[20:16]}), .b({n540, a, n540, a_2, n540, a_0}), .product({px_13_, px_12_, px_11_, 
        px_10_, px_9_, px_8_, px_7_, px_6_, px_5_, px_4_, px_3_, px_2_, px_1_, 
        px_0_}) );
  unified_div_drop_l1_shared_core_DW01_add_1 add_1_root_add_23_2 ( .A({n540, 
        n540, t[14:12], n520, t[10:9], n520, t[7:2], n540, n540}), .B({px_13_, 
        px_13_, px_13_, px_13_, px_12_, px_11_, px_10_, px_9_, px_8_, px_7_, 
        px_6_, px_5_, px_4_, px_3_, px_2_, px_1_, px_0_}), .CI(n540), .SUM({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, N62, N61, N60, N59, 
        N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48}) );
  unified_div_drop_l1_shared_core_DW01_add_0 add_0_root_add_23_2 ( .A({
        signed_y[17], signed_y[17], signed_y[17], signed_y[17], signed_y[13:1], 
        N33}), .B({1'b0, 1'b0, 1'b0, N62, N61, N60, N59, N58, N57, N56, N55, 
        N54, N53, N52, N51, N50, N49, N48}), .CI(n540), .SUM({
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, value[24:10]}) );
  unified_div_drop_l1_shared_core_DW_mult_tc_0 mult_20_S2 ( .a({ry_5_, 
        fy[20:16]}), .b({n540, b[6:2], t[7], b[0]}), .product({py, N33}) );
  AN2XD1 U16 ( .A1(n14), .A2(n490), .Z(n13) );
  AN2XD1 U18 ( .A1(n18), .A2(n480), .Z(n14) );
  AN2XD1 U19 ( .A1(n16), .A2(n440), .Z(n15) );
  AN2XD1 U20 ( .A1(n17), .A2(n430), .Z(n16) );
  AN2XD1 U21 ( .A1(n21), .A2(n420), .Z(n17) );
  INVD1 U22 ( .I(py[12]), .ZN(n490) );
  INVD1 U23 ( .I(py[11]), .ZN(n480) );
  AN2XD1 U24 ( .A1(n19), .A2(n47), .Z(n18) );
  INVD1 U25 ( .I(py[7]), .ZN(n440) );
  AN2XD1 U26 ( .A1(n20), .A2(n460), .Z(n19) );
  INVD1 U27 ( .I(py[6]), .ZN(n430) );
  AN2XD1 U28 ( .A1(n15), .A2(n450), .Z(n20) );
  INVD1 U29 ( .I(py[5]), .ZN(n420) );
  INVD1 U30 ( .I(n31), .ZN(b[6]) );
  AN2XD1 U31 ( .A1(n330), .A2(n410), .Z(n21) );
  INVD1 U32 ( .I(n32), .ZN(a_2) );
  AN2XD1 U33 ( .A1(n340), .A2(n400), .Z(n330) );
  AN2XD1 U34 ( .A1(n350), .A2(n390), .Z(n340) );
  IND2D1 U35 ( .A1(t[14]), .B1(n26), .ZN(a[6]) );
  ND2D1 U36 ( .A1(n27), .A2(n22), .ZN(b[4]) );
  INVD1 U37 ( .I(py[10]), .ZN(n47) );
  INVD1 U38 ( .I(py[9]), .ZN(n460) );
  INVD1 U39 ( .I(py[8]), .ZN(n450) );
  INVD1 U40 ( .I(py[4]), .ZN(n410) );
  NR2D1 U41 ( .A1(n520), .A2(a[6]), .ZN(n31) );
  NR2D1 U42 ( .A1(n520), .A2(t[3]), .ZN(n32) );
  INVD1 U43 ( .I(py[3]), .ZN(n400) );
  ND2D1 U44 ( .A1(n27), .A2(n31), .ZN(a[4]) );
  INVD1 U45 ( .I(py[2]), .ZN(n390) );
  INVD1 U46 ( .I(n22), .ZN(t[9]) );
  ND3D1 U49 ( .A1(n30), .A2(n23), .A3(n24), .ZN(t[14]) );
  INR2D1 U50 ( .A1(n29), .B1(a[6]), .ZN(n22) );
  AO22D0 U51 ( .A1(py[12]), .A2(n360), .B1(N45), .B2(divide_mode), .Z(
        signed_y[12]) );
  AO22D0 U52 ( .A1(n360), .A2(py[13]), .B1(N46), .B2(divide_mode), .Z(
        signed_y[13]) );
  AO22D0 U53 ( .A1(py[11]), .A2(n360), .B1(N44), .B2(divide_mode), .Z(
        signed_y[11]) );
  AO22D0 U54 ( .A1(py[10]), .A2(n360), .B1(N43), .B2(divide_mode), .Z(
        signed_y[10]) );
  AO22D0 U55 ( .A1(py[9]), .A2(n360), .B1(N42), .B2(divide_mode), .Z(
        signed_y[9]) );
  INVD1 U56 ( .I(n29), .ZN(t[7]) );
  AO22D0 U57 ( .A1(py[8]), .A2(n360), .B1(N41), .B2(divide_mode), .Z(
        signed_y[8]) );
  ND3D1 U58 ( .A1(n510), .A2(n530), .A3(n360), .ZN(n26) );
  ND2D1 U59 ( .A1(n27), .A2(n25), .ZN(b[2]) );
  AO22D0 U60 ( .A1(py[7]), .A2(n360), .B1(N40), .B2(divide_mode), .Z(
        signed_y[7]) );
  ND3D1 U61 ( .A1(n510), .A2(n530), .A3(divide_mode), .ZN(n27) );
  AO22D0 U62 ( .A1(py[6]), .A2(n360), .B1(N39), .B2(divide_mode), .Z(
        signed_y[6]) );
  AO22D0 U63 ( .A1(py[5]), .A2(n360), .B1(N38), .B2(divide_mode), .Z(
        signed_y[5]) );
  ND2D1 U64 ( .A1(n28), .A2(n29), .ZN(b[3]) );
  AO22D0 U65 ( .A1(py[4]), .A2(n360), .B1(N37), .B2(divide_mode), .Z(
        signed_y[4]) );
  ND2D1 U66 ( .A1(n28), .A2(n25), .ZN(b[0]) );
  IND3D1 U67 ( .A1(b[2]), .B1(n23), .B2(n24), .ZN(b[5]) );
  IND2D1 U68 ( .A1(b[2]), .B1(n29), .ZN(t[3]) );
  IND4D1 U69 ( .A1(t[2]), .B1(n24), .B2(n25), .B3(n26), .ZN(t[13]) );
  AO22D0 U70 ( .A1(py[3]), .A2(n360), .B1(N36), .B2(divide_mode), .Z(
        signed_y[3]) );
  AO22D0 U71 ( .A1(py[2]), .A2(n360), .B1(N35), .B2(divide_mode), .Z(
        signed_y[2]) );
  IND3D1 U72 ( .A1(b[3]), .B1(n23), .B2(n30), .ZN(t[10]) );
  ND3D1 U73 ( .A1(n30), .A2(n32), .A3(n24), .ZN(a[5]) );
  INVD1 U74 ( .I(n28), .ZN(n520) );
  AO22D0 U75 ( .A1(py[1]), .A2(n360), .B1(N34), .B2(divide_mode), .Z(
        signed_y[1]) );
  IND2D1 U77 ( .A1(a[5]), .B1(n23), .ZN(t[5]) );
  IND2D1 U79 ( .A1(t[12]), .B1(n24), .ZN(t[4]) );
  ND2D1 U80 ( .A1(n29), .A2(n25), .ZN(a_0) );
  ND2D1 U82 ( .A1(n27), .A2(n28), .ZN(t[2]) );
  ND2D1 U83 ( .A1(n26), .A2(n29), .ZN(t[12]) );
  ND3D1 U84 ( .A1(n360), .A2(n530), .A3(fx[22]), .ZN(n23) );
  INVD1 U85 ( .I(fy[22]), .ZN(n530) );
  ND3D1 U86 ( .A1(fx[22]), .A2(n360), .A3(fy[22]), .ZN(n24) );
  ND3D1 U88 ( .A1(n360), .A2(n510), .A3(fy[22]), .ZN(n30) );
  INVD1 U89 ( .I(fx[22]), .ZN(n510) );
  ND3D1 U90 ( .A1(fy[22]), .A2(n510), .A3(divide_mode), .ZN(n29) );
  ND3D1 U91 ( .A1(fy[22]), .A2(fx[22]), .A3(divide_mode), .ZN(n25) );
  ND3D1 U92 ( .A1(fx[22]), .A2(n530), .A3(divide_mode), .ZN(n28) );
  INVD1 U93 ( .I(fy[21]), .ZN(ry_5_) );
  INVD1 U94 ( .I(fx[21]), .ZN(rx_5_) );
  TIEL U95 ( .ZN(n540) );
  CKXOR2D1 U96 ( .A1(n370), .A2(n380), .Z(N34) );
  CKXOR2D1 U97 ( .A1(n350), .A2(n390), .Z(N35) );
  CKXOR2D1 U98 ( .A1(n340), .A2(n400), .Z(N36) );
  CKXOR2D1 U99 ( .A1(n330), .A2(n410), .Z(N37) );
  CKXOR2D1 U100 ( .A1(n21), .A2(n420), .Z(N38) );
  CKXOR2D1 U101 ( .A1(n17), .A2(n430), .Z(N39) );
  CKXOR2D1 U102 ( .A1(n16), .A2(n440), .Z(N40) );
  CKXOR2D1 U103 ( .A1(n15), .A2(n450), .Z(N41) );
  CKXOR2D1 U104 ( .A1(n20), .A2(n460), .Z(N42) );
  CKXOR2D1 U105 ( .A1(n19), .A2(n47), .Z(N43) );
  CKXOR2D1 U106 ( .A1(n18), .A2(n480), .Z(N44) );
  CKXOR2D1 U107 ( .A1(n14), .A2(n490), .Z(N45) );
  CKXOR2D1 U108 ( .A1(n13), .A2(n500), .Z(N46) );
  OAI31D0 U3 ( .A1(py[13]), .A2(n13), .A3(n360), .B(n550), .ZN(signed_y[17])
         );
  CKND2D0 U4 ( .A1(py[13]), .A2(n360), .ZN(n550) );
  CKND0 U5 ( .I(divide_mode), .ZN(n360) );
  CKND0 U6 ( .I(py[13]), .ZN(n500) );
  CKND0 U8 ( .I(N33), .ZN(n370) );
  CKND0 U9 ( .I(py[1]), .ZN(n380) );
  NR2D0 U10 ( .A1(N33), .A2(py[1]), .ZN(n350) );
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
  CKBD1 U37 ( .I(result_fraction[11]), .Z(result[11]) );
  CKBD1 U38 ( .I(result_fraction[10]), .Z(result[10]) );
  CKBD1 U39 ( .I(result_fraction[9]), .Z(result[9]) );
  CKBD1 U40 ( .I(result_fraction[12]), .Z(result[12]) );
  CKBD1 U41 ( .I(result_fraction[13]), .Z(result[13]) );
  AO22D0 U42 ( .A1(N49), .A2(n78), .B1(N25), .B2(divide_mode), .Z(result[29])
         );
  AO22D0 U43 ( .A1(N48), .A2(n78), .B1(N24), .B2(divide_mode), .Z(result[28])
         );
  AO22D0 U44 ( .A1(N47), .A2(n78), .B1(N23), .B2(divide_mode), .Z(result[27])
         );
  AO22D0 U45 ( .A1(N46), .A2(n78), .B1(N22), .B2(divide_mode), .Z(result[26])
         );
  AO22D0 U46 ( .A1(N45), .A2(n78), .B1(N21), .B2(divide_mode), .Z(result[25])
         );
  AO22D0 U47 ( .A1(N44), .A2(n78), .B1(N20), .B2(divide_mode), .Z(result[24])
         );
  INVD1 U48 ( .I(divide_mode), .ZN(n78) );
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
  AN2XD1 U65 ( .A1(y[23]), .A2(y[24]), .Z(n35) );
  INVD1 U66 ( .I(y[29]), .ZN(N17) );
  INVD0 U67 ( .I(y[24]), .ZN(N12) );
  INVD1 U68 ( .I(y[25]), .ZN(N13) );
  INVD1 U69 ( .I(y[26]), .ZN(N14) );
  INVD1 U70 ( .I(y[27]), .ZN(N15) );
  INVD1 U71 ( .I(y[28]), .ZN(N16) );
  AN2XD1 U72 ( .A1(n35), .A2(y[25]), .Z(n410) );
  AN2XD1 U73 ( .A1(n410), .A2(y[26]), .Z(n51) );
  AN2XD1 U74 ( .A1(n51), .A2(y[27]), .Z(n60) );
  AN2XD1 U75 ( .A1(n60), .A2(y[28]), .Z(n70) );
  CKXOR2D1 U76 ( .A1(y[30]), .A2(n77), .Z(N42) );
  ND2D1 U77 ( .A1(n70), .A2(y[29]), .ZN(n77) );
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


module unified_div_drop_l1_shared ( x, y, divide_mode, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  input divide_mode;
  wire   n27, n29, n30, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n51, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68;
  wire   [22:16] fx;
  wire   [22:16] fy;
  wire   [24:10] core_value;
  wire   [22:9] normalized_fraction;
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
        SYNOPSYS_UNCONNECTED__54;
  assign result[0] = 1'b0;
  assign result[1] = 1'b0;
  assign result[2] = 1'b0;
  assign result[3] = 1'b0;
  assign result[4] = 1'b0;
  assign result[5] = 1'b0;
  assign result[6] = 1'b0;
  assign result[7] = 1'b0;
  assign result[8] = 1'b0;

  unified_div_drop_l1_shared_core shared_core ( .fx({fx, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .fy({fy, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .divide_mode(n51), .value(
        {SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, core_value, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13}) );
  fp32_normal_finite_wrapper wrapper ( .x({x[31:16], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y({y[31:16], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .divide_mode(n51), .fraction_x({
        fx, SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29}), .fraction_y({fy, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31, 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, 
        SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39, 
        SYNOPSYS_UNCONNECTED__40, SYNOPSYS_UNCONNECTED__41, 
        SYNOPSYS_UNCONNECTED__42, SYNOPSYS_UNCONNECTED__43, 
        SYNOPSYS_UNCONNECTED__44, SYNOPSYS_UNCONNECTED__45}), 
        .result_fraction({normalized_fraction, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .exponent_adjust({exponent_adjust[2], 
        exponent_adjust[2], exponent_adjust[0]}), .result({result[31:9], 
        SYNOPSYS_UNCONNECTED__46, SYNOPSYS_UNCONNECTED__47, 
        SYNOPSYS_UNCONNECTED__48, SYNOPSYS_UNCONNECTED__49, 
        SYNOPSYS_UNCONNECTED__50, SYNOPSYS_UNCONNECTED__51, 
        SYNOPSYS_UNCONNECTED__52, SYNOPSYS_UNCONNECTED__53, 
        SYNOPSYS_UNCONNECTED__54}) );
  IND2D1 U78 ( .A1(n29), .B1(n54), .ZN(exponent_adjust[2]) );
  INVD1 U79 ( .I(n30), .ZN(n54) );
  ND2D1 U80 ( .A1(n53), .A2(n54), .ZN(exponent_adjust[0]) );
  OAI221D0 U81 ( .A1(n27), .A2(n67), .B1(n53), .B2(n66), .C(n49), .ZN(
        normalized_fraction[11]) );
  ND2D1 U82 ( .A1(core_value[10]), .A2(n30), .ZN(n49) );
  OAI22D1 U83 ( .A1(n27), .A2(n68), .B1(n53), .B2(n67), .ZN(
        normalized_fraction[10]) );
  NR2D1 U84 ( .A1(n68), .A2(n53), .ZN(normalized_fraction[9]) );
  INVD1 U85 ( .I(core_value[10]), .ZN(n68) );
  NR3D0 U86 ( .A1(core_value[23]), .A2(core_value[24]), .A3(n56), .ZN(n30) );
  NR3D0 U87 ( .A1(core_value[23]), .A2(core_value[24]), .A3(core_value[22]), 
        .ZN(n29) );
  INVD1 U88 ( .I(core_value[22]), .ZN(n56) );
  INVD1 U89 ( .I(core_value[24]), .ZN(n53) );
  OAI221D0 U90 ( .A1(n27), .A2(n66), .B1(n53), .B2(n65), .C(n48), .ZN(
        normalized_fraction[12]) );
  AOI22D1 U91 ( .A1(core_value[10]), .A2(n29), .B1(core_value[11]), .B2(n30), 
        .ZN(n48) );
  OAI221D0 U92 ( .A1(n27), .A2(n65), .B1(n53), .B2(n64), .C(n47), .ZN(
        normalized_fraction[13]) );
  AOI22D1 U93 ( .A1(core_value[11]), .A2(n29), .B1(core_value[12]), .B2(n30), 
        .ZN(n47) );
  ND2D1 U94 ( .A1(core_value[23]), .A2(n53), .ZN(n27) );
  OAI221D0 U95 ( .A1(n56), .A2(n27), .B1(n55), .B2(n53), .C(n38), .ZN(
        normalized_fraction[22]) );
  INVD1 U96 ( .I(core_value[23]), .ZN(n55) );
  AOI22D1 U97 ( .A1(core_value[20]), .A2(n29), .B1(core_value[21]), .B2(n30), 
        .ZN(n38) );
  OAI221D0 U98 ( .A1(n27), .A2(n57), .B1(n56), .B2(n53), .C(n39), .ZN(
        normalized_fraction[21]) );
  AOI22D1 U99 ( .A1(core_value[19]), .A2(n29), .B1(core_value[20]), .B2(n30), 
        .ZN(n39) );
  OAI221D0 U100 ( .A1(n27), .A2(n64), .B1(n53), .B2(n63), .C(n46), .ZN(
        normalized_fraction[14]) );
  AOI22D1 U101 ( .A1(core_value[12]), .A2(n29), .B1(core_value[13]), .B2(n30), 
        .ZN(n46) );
  OAI221D0 U102 ( .A1(n27), .A2(n63), .B1(n53), .B2(n62), .C(n45), .ZN(
        normalized_fraction[15]) );
  AOI22D1 U103 ( .A1(core_value[13]), .A2(n29), .B1(core_value[14]), .B2(n30), 
        .ZN(n45) );
  OAI221D0 U104 ( .A1(n27), .A2(n62), .B1(n53), .B2(n61), .C(n44), .ZN(
        normalized_fraction[16]) );
  AOI22D1 U105 ( .A1(core_value[14]), .A2(n29), .B1(core_value[15]), .B2(n30), 
        .ZN(n44) );
  OAI221D0 U106 ( .A1(n27), .A2(n61), .B1(n53), .B2(n60), .C(n43), .ZN(
        normalized_fraction[17]) );
  AOI22D1 U107 ( .A1(core_value[15]), .A2(n29), .B1(core_value[16]), .B2(n30), 
        .ZN(n43) );
  OAI221D0 U108 ( .A1(n27), .A2(n60), .B1(n53), .B2(n59), .C(n42), .ZN(
        normalized_fraction[18]) );
  AOI22D1 U109 ( .A1(core_value[16]), .A2(n29), .B1(core_value[17]), .B2(n30), 
        .ZN(n42) );
  OAI221D0 U110 ( .A1(n27), .A2(n59), .B1(n53), .B2(n58), .C(n41), .ZN(
        normalized_fraction[19]) );
  AOI22D1 U111 ( .A1(core_value[17]), .A2(n29), .B1(core_value[18]), .B2(n30), 
        .ZN(n41) );
  OAI221D0 U112 ( .A1(n27), .A2(n58), .B1(n53), .B2(n57), .C(n40), .ZN(
        normalized_fraction[20]) );
  AOI22D1 U113 ( .A1(core_value[18]), .A2(n29), .B1(core_value[19]), .B2(n30), 
        .ZN(n40) );
  INVD1 U114 ( .I(core_value[21]), .ZN(n57) );
  INVD1 U115 ( .I(core_value[20]), .ZN(n58) );
  INVD1 U116 ( .I(core_value[19]), .ZN(n59) );
  INVD1 U117 ( .I(core_value[18]), .ZN(n60) );
  INVD1 U118 ( .I(core_value[17]), .ZN(n61) );
  INVD1 U119 ( .I(core_value[16]), .ZN(n62) );
  INVD1 U120 ( .I(core_value[15]), .ZN(n63) );
  INVD1 U121 ( .I(core_value[14]), .ZN(n64) );
  INVD1 U122 ( .I(core_value[13]), .ZN(n65) );
  INVD1 U123 ( .I(core_value[12]), .ZN(n66) );
  INVD1 U124 ( .I(core_value[11]), .ZN(n67) );
  CKBD1 U125 ( .I(divide_mode), .Z(n51) );
endmodule

