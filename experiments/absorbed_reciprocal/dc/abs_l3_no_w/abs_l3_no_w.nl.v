/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Tue Sep 15 22:01:29 2026
/////////////////////////////////////////////////////////////



    module oadm_fixed_div_specialized_plane_LEVEL3_RESIDUAL_DROP16_DW_mult_uns_0 ( 
        a, b, product );
  input [5:0] a;
  input [5:0] b;
  output [11:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n15, n16, n20, n21, n23, n26, n27,
         n28, n30, n34, n35, n36, n38, n39, n40, n41, n42, n43, n57, n58, n63,
         n64, n65, n69, n70, n71, n118, n119, n120, n121, n122, n123, n124,
         n127, n128, n129, n130, n131, n132, n133, n134, n137, n138, n139,
         n140, n141, n146, n147, n148, n149, n150, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164;

  FA1D0 U3 ( .A(n15), .B(n159), .CI(n3), .CO(n2), .S(product[8]) );
  FA1D0 U4 ( .A(n20), .B(n16), .CI(n4), .CO(n3), .S(product[7]) );
  FA1D0 U5 ( .A(n21), .B(n27), .CI(n5), .CO(n4), .S(product[6]) );
  FA1D0 U6 ( .A(n28), .B(n34), .CI(n6), .CO(n5), .S(product[5]) );
  FA1D0 U7 ( .A(n35), .B(n38), .CI(n7), .CO(n6), .S(product[4]) );
  FA1D0 U8 ( .A(n39), .B(n41), .CI(n8), .CO(n7), .S(product[3]) );
  FA1D0 U9 ( .A(n9), .B(a[2]), .CI(n43), .CO(n8), .S(product[2]) );
  HA1D0 U10 ( .A(b[1]), .B(a[1]), .CO(n9), .S(product[1]) );
  CMPE42D1 U18 ( .A(n36), .B(a[1]), .C(b[1]), .CIX(n30), .D(n118), .CO(n27), 
        .COX(n26), .S(n28) );
  FA1D0 U23 ( .A(n70), .B(b[3]), .CI(n42), .CO(n38), .S(n39) );
  HA1D0 U24 ( .A(a[3]), .B(n65), .CO(n40), .S(n41) );
  HA1D0 U25 ( .A(n71), .B(b[2]), .CO(n42), .S(n43) );
  OR2XD1 U75 ( .A1(n69), .A2(n64), .Z(n118) );
  INVD1 U76 ( .I(b[3]), .ZN(n124) );
  INVD1 U77 ( .I(n36), .ZN(n129) );
  NR2D1 U78 ( .A1(n69), .A2(n36), .ZN(n141) );
  AN2XD1 U79 ( .A1(n69), .A2(n129), .Z(n119) );
  AN2XD1 U80 ( .A1(n58), .A2(n63), .Z(n120) );
  XNR2D1 U81 ( .A1(n159), .A2(n2), .ZN(product[9]) );
  XNR3D1 U84 ( .A1(n64), .A2(n69), .A3(n137), .ZN(n35) );
  ND2D1 U89 ( .A1(n69), .A2(n40), .ZN(n140) );
  IND2D1 U90 ( .A1(n69), .B1(n40), .ZN(n139) );
  INVD1 U92 ( .I(n149), .ZN(n128) );
  INVD1 U93 ( .I(n26), .ZN(n127) );
  INVD1 U95 ( .I(b[1]), .ZN(n134) );
  INVD1 U96 ( .I(a[1]), .ZN(n132) );
  INVD1 U97 ( .I(a[2]), .ZN(n131) );
  INVD1 U98 ( .I(a[3]), .ZN(n130) );
  INVD1 U99 ( .I(b[2]), .ZN(n133) );
  ND2D1 U100 ( .A1(n120), .A2(b[2]), .ZN(n149) );
  OR2XD1 U102 ( .A1(b[2]), .A2(n127), .Z(n121) );
  ND2D1 U103 ( .A1(b[2]), .A2(n26), .ZN(n150) );
  IND2D1 U104 ( .A1(b[2]), .B1(n23), .ZN(n148) );
  ND2D1 U105 ( .A1(b[2]), .A2(n23), .ZN(n147) );
  AN2XD1 U106 ( .A1(a[2]), .A2(n57), .Z(n122) );
  AN2XD1 U107 ( .A1(a[3]), .A2(n128), .Z(n123) );
  IND2D1 U108 ( .A1(a[3]), .B1(b[3]), .ZN(n157) );
  ND2D1 U109 ( .A1(a[3]), .A2(b[3]), .ZN(n156) );
  NR2D1 U110 ( .A1(a[3]), .A2(n149), .ZN(n158) );
  ND2D1 U111 ( .A1(n122), .A2(a[3]), .ZN(n159) );
  MUX2ND0 U112 ( .I0(n139), .I1(n140), .S(n64), .ZN(n138) );
  CKXOR2D1 U113 ( .A1(n40), .A2(n129), .Z(n137) );
  MUX2ND0 U116 ( .I0(n147), .I1(n148), .S(n120), .ZN(n146) );
  MUX2ND0 U120 ( .I0(n156), .I1(n157), .S(n122), .ZN(n155) );
  CKXOR2D1 U124 ( .A1(n57), .A2(a[2]), .Z(n23) );
  CKXOR2D1 U125 ( .A1(n63), .A2(n58), .Z(n30) );
  NR2D0 U126 ( .A1(n134), .A2(n132), .ZN(n71) );
  NR2D0 U127 ( .A1(n133), .A2(n132), .ZN(n70) );
  NR2D0 U128 ( .A1(n124), .A2(n132), .ZN(n69) );
  NR2D0 U129 ( .A1(n134), .A2(n131), .ZN(n65) );
  NR2D0 U130 ( .A1(n133), .A2(n131), .ZN(n64) );
  NR2D0 U131 ( .A1(n124), .A2(n131), .ZN(n63) );
  NR2D0 U132 ( .A1(n134), .A2(n130), .ZN(n36) );
  NR2D0 U133 ( .A1(n133), .A2(n130), .ZN(n58) );
  NR2D0 U134 ( .A1(n124), .A2(n130), .ZN(n57) );
  OAI211D0 U82 ( .A1(n149), .A2(n124), .B(n161), .C(n160), .ZN(n15) );
  CKND0 U83 ( .I(n155), .ZN(n160) );
  MUX2ND0 U85 ( .I0(n123), .I1(n158), .S(n122), .ZN(n161) );
  AO211D0 U86 ( .A1(n26), .A2(n23), .B(n146), .C(n162), .Z(n20) );
  MUX2ND0 U87 ( .I0(n150), .I1(n121), .S(n120), .ZN(n162) );
  XOR4D0 U88 ( .A1(n122), .A2(a[3]), .A3(b[3]), .A4(n128), .Z(n16) );
  XOR4D0 U91 ( .A1(n23), .A2(b[2]), .A3(n120), .A4(n26), .Z(n21) );
  AO211D0 U94 ( .A1(n164), .A2(n40), .B(n138), .C(n163), .Z(n34) );
  MUX2D0 U101 ( .I0(n141), .I1(n119), .S(n64), .Z(n163) );
  CKND0 U114 ( .I(n36), .ZN(n164) );
endmodule


module oadm_fixed_div_specialized_plane_LEVEL3_RESIDUAL_DROP16_DW_mult_tc_1 ( 
        a, b, product );
  input [6:0] a;
  input [5:0] b;
  output [12:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n14, n15, n16, n17, n18,
         n20, n21, n22, n23, n25, n26, n27, n28, n29, n31, n32, n33, n34, n35,
         n37, n38, n43, n45, n46, n48, n49, n50, n51, n52, n54, n136, n137,
         n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, n148,
         n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n160;

  FA1D0 U2 ( .A(n144), .B(a[3]), .CI(n2), .CO(n1), .S(product[11]) );
  FA1D0 U3 ( .A(n14), .B(n140), .CI(n3), .CO(n2), .S(product[10]) );
  FA1D0 U4 ( .A(n16), .B(n15), .CI(n4), .CO(n3), .S(product[9]) );
  FA1D0 U5 ( .A(n20), .B(n17), .CI(n5), .CO(n4), .S(product[8]) );
  FA1D0 U6 ( .A(n136), .B(n21), .CI(n6), .CO(n5), .S(product[7]) );
  FA1D0 U7 ( .A(n25), .B(n28), .CI(n7), .CO(n6), .S(product[6]) );
  FA1D0 U8 ( .A(n29), .B(n32), .CI(n8), .CO(n7), .S(product[5]) );
  FA1D0 U9 ( .A(n33), .B(n34), .CI(n9), .CO(n8), .S(product[4]) );
  FA1D0 U10 ( .A(n35), .B(n37), .CI(n10), .CO(n9), .S(product[3]) );
  FA1D0 U11 ( .A(n138), .B(n52), .CI(n11), .CO(n10), .S(product[2]) );
  HA1D0 U12 ( .A(n139), .B(n38), .CO(n11), .S(product[1]) );
  FA1D0 U14 ( .A(a[3]), .B(n18), .CI(n46), .CO(n14), .S(n15) );
  FA1D0 U15 ( .A(n141), .B(a[3]), .CI(n22), .CO(n16), .S(n17) );
  FA1D0 U17 ( .A(n26), .B(n143), .CI(n23), .CO(n20), .S(n21) );
  HA1D0 U21 ( .A(n43), .B(n54), .CO(n26), .S(n27) );
  FA1D0 U22 ( .A(n49), .B(n137), .CI(n31), .CO(n28), .S(n29) );
  FA1D0 U24 ( .A(n137), .B(n45), .CI(n50), .CO(n32), .S(n33) );
  HA1D0 U25 ( .A(n51), .B(n137), .CO(n34), .S(n35) );
  INVD1 U101 ( .I(a[3]), .ZN(n140) );
  AN2XD1 U102 ( .A1(n48), .A2(n27), .Z(n136) );
  INVD1 U103 ( .I(n54), .ZN(n143) );
  INVD1 U105 ( .I(n18), .ZN(n141) );
  XNR2D1 U106 ( .A1(b[1]), .A2(n144), .ZN(n137) );
  INVD1 U108 ( .I(a[0]), .ZN(n147) );
  XNR2D1 U109 ( .A1(b[1]), .A2(n145), .ZN(n138) );
  XNR2D1 U111 ( .A1(b[1]), .A2(n146), .ZN(n139) );
  INVD1 U112 ( .I(a[1]), .ZN(n146) );
  INVD1 U113 ( .I(a[2]), .ZN(n145) );
  CKXOR2D1 U114 ( .A1(n27), .A2(n48), .Z(n25) );
  CKND0 U115 ( .I(n147), .ZN(product[0]) );
  AN2D0 U116 ( .A1(n147), .A2(b[1]), .Z(n38) );
  CKND0 U117 ( .I(n1), .ZN(product[12]) );
  CKXOR2D0 U118 ( .A1(b[1]), .A2(a[6]), .Z(n54) );
  NR2D0 U119 ( .A1(n148), .A2(n147), .ZN(n52) );
  OAI22D0 U120 ( .A1(n149), .A2(n150), .B1(n148), .B2(n151), .ZN(n51) );
  CKXOR2D0 U121 ( .A1(b[3]), .A2(n147), .Z(n149) );
  OAI22D0 U122 ( .A1(n151), .A2(n150), .B1(n148), .B2(n152), .ZN(n50) );
  CKXOR2D0 U123 ( .A1(b[3]), .A2(n146), .Z(n151) );
  OAI22D0 U124 ( .A1(n152), .A2(n150), .B1(n148), .B2(n153), .ZN(n49) );
  CKXOR2D0 U125 ( .A1(b[3]), .A2(n145), .Z(n152) );
  OAI22D0 U126 ( .A1(n153), .A2(n150), .B1(n148), .B2(n154), .ZN(n48) );
  CKXOR2D0 U127 ( .A1(b[3]), .A2(n144), .Z(n153) );
  AO21D0 U128 ( .A1(n150), .A2(n148), .B(n155), .Z(n46) );
  NR2D0 U129 ( .A1(b[3]), .A2(n147), .ZN(n45) );
  OAI22D0 U130 ( .A1(n147), .A2(n142), .B1(b[3]), .B2(n146), .ZN(n31) );
  OAI22D0 U131 ( .A1(n146), .A2(n142), .B1(b[3]), .B2(n145), .ZN(n43) );
  OAI32D0 U134 ( .A1(n142), .A2(a[0]), .A3(n148), .B1(n142), .B2(n150), .ZN(
        n37) );
  XNR2D0 U135 ( .A1(n156), .A2(n157), .ZN(n23) );
  CKND2D0 U136 ( .A1(n157), .A2(n156), .ZN(n22) );
  OA22D0 U137 ( .A1(n145), .A2(n142), .B1(b[3]), .B2(n144), .Z(n156) );
  OA22D0 U138 ( .A1(n154), .A2(n150), .B1(n148), .B2(n158), .Z(n157) );
  CKXOR2D0 U139 ( .A1(b[3]), .A2(n144), .Z(n154) );
  OAI22D0 U140 ( .A1(n148), .A2(n155), .B1(n158), .B2(n150), .ZN(n18) );
  CKXOR2D0 U143 ( .A1(b[3]), .A2(n144), .Z(n158) );
  CKXOR2D0 U144 ( .A1(n142), .A2(a[6]), .Z(n155) );
  CKND0 U104 ( .I(b[3]), .ZN(n142) );
  CKND0 U107 ( .I(a[3]), .ZN(n144) );
  OAI211D0 U110 ( .A1(b[2]), .A2(b[3]), .B(n160), .C(n148), .ZN(n150) );
  XNR2D0 U132 ( .A1(b[2]), .A2(b[1]), .ZN(n148) );
  CKND2D0 U133 ( .A1(b[2]), .A2(b[3]), .ZN(n160) );
endmodule


module oadm_fixed_div_specialized_plane_LEVEL3_RESIDUAL_DROP16_DW_mult_tc_0 ( 
        a, b, product );
  input [6:0] a;
  input [5:0] b;
  output [12:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n14, n15, n16, n17, n18,
         n20, n21, n22, n23, n25, n26, n27, n28, n29, n31, n32, n33, n34, n35,
         n37, n38, n43, n45, n46, n48, n49, n50, n51, n52, n54, n136, n137,
         n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, n148,
         n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159,
         n161;

  FA1D0 U2 ( .A(n145), .B(a[3]), .CI(n2), .CO(n1), .S(product[11]) );
  FA1D0 U3 ( .A(n14), .B(n142), .CI(n3), .CO(n2), .S(product[10]) );
  FA1D0 U4 ( .A(n16), .B(n15), .CI(n4), .CO(n3), .S(product[9]) );
  FA1D0 U5 ( .A(n20), .B(n17), .CI(n5), .CO(n4), .S(product[8]) );
  FA1D0 U6 ( .A(n137), .B(n21), .CI(n6), .CO(n5), .S(product[7]) );
  FA1D0 U7 ( .A(n25), .B(n28), .CI(n7), .CO(n6), .S(product[6]) );
  FA1D0 U8 ( .A(n29), .B(n32), .CI(n8), .CO(n7), .S(product[5]) );
  FA1D0 U9 ( .A(n33), .B(n34), .CI(n9), .CO(n8), .S(product[4]) );
  FA1D0 U10 ( .A(n35), .B(n37), .CI(n10), .CO(n9), .S(product[3]) );
  FA1D0 U11 ( .A(n139), .B(n52), .CI(n11), .CO(n10), .S(product[2]) );
  HA1D0 U12 ( .A(n140), .B(n38), .CO(n11), .S(product[1]) );
  FA1D0 U14 ( .A(a[3]), .B(n18), .CI(n46), .CO(n14), .S(n15) );
  FA1D0 U15 ( .A(n143), .B(a[3]), .CI(n22), .CO(n16), .S(n17) );
  FA1D0 U17 ( .A(n26), .B(n144), .CI(n23), .CO(n20), .S(n21) );
  HA1D0 U21 ( .A(n43), .B(n54), .CO(n26), .S(n27) );
  FA1D0 U22 ( .A(n49), .B(n138), .CI(n31), .CO(n28), .S(n29) );
  FA1D0 U24 ( .A(n136), .B(n45), .CI(n50), .CO(n32), .S(n33) );
  HA1D0 U25 ( .A(n51), .B(n138), .CO(n34), .S(n35) );
  XNR2D1 U101 ( .A1(b[1]), .A2(n145), .ZN(n136) );
  INVD1 U102 ( .I(a[3]), .ZN(n142) );
  AN2XD1 U104 ( .A1(n48), .A2(n27), .Z(n137) );
  INVD1 U105 ( .I(n54), .ZN(n144) );
  INVD1 U106 ( .I(n18), .ZN(n143) );
  XNR2D1 U107 ( .A1(b[1]), .A2(n145), .ZN(n138) );
  XNR2D1 U108 ( .A1(b[1]), .A2(n146), .ZN(n139) );
  INVD1 U109 ( .I(a[0]), .ZN(n148) );
  XNR2D1 U111 ( .A1(b[1]), .A2(n147), .ZN(n140) );
  INVD1 U112 ( .I(a[1]), .ZN(n147) );
  INVD1 U113 ( .I(a[2]), .ZN(n146) );
  CKXOR2D1 U115 ( .A1(n27), .A2(n48), .Z(n25) );
  CKND0 U116 ( .I(n148), .ZN(product[0]) );
  AN2D0 U117 ( .A1(n148), .A2(b[1]), .Z(n38) );
  CKND0 U118 ( .I(n1), .ZN(product[12]) );
  CKXOR2D0 U119 ( .A1(b[1]), .A2(a[6]), .Z(n54) );
  NR2D0 U120 ( .A1(n149), .A2(n148), .ZN(n52) );
  OAI22D0 U121 ( .A1(n150), .A2(n151), .B1(n149), .B2(n152), .ZN(n51) );
  CKXOR2D0 U122 ( .A1(b[3]), .A2(n148), .Z(n150) );
  OAI22D0 U123 ( .A1(n152), .A2(n151), .B1(n149), .B2(n153), .ZN(n50) );
  CKXOR2D0 U124 ( .A1(b[3]), .A2(n147), .Z(n152) );
  OAI22D0 U125 ( .A1(n153), .A2(n151), .B1(n149), .B2(n154), .ZN(n49) );
  CKXOR2D0 U126 ( .A1(b[3]), .A2(n146), .Z(n153) );
  OAI22D0 U127 ( .A1(n154), .A2(n151), .B1(n149), .B2(n155), .ZN(n48) );
  CKXOR2D0 U128 ( .A1(b[3]), .A2(n145), .Z(n154) );
  AO21D0 U129 ( .A1(n151), .A2(n149), .B(n156), .Z(n46) );
  NR2D0 U130 ( .A1(b[3]), .A2(n148), .ZN(n45) );
  OAI22D0 U131 ( .A1(n148), .A2(n141), .B1(b[3]), .B2(n147), .ZN(n31) );
  OAI22D0 U132 ( .A1(n147), .A2(n141), .B1(b[3]), .B2(n146), .ZN(n43) );
  OAI32D0 U135 ( .A1(n141), .A2(a[0]), .A3(n149), .B1(n141), .B2(n151), .ZN(
        n37) );
  XNR2D0 U136 ( .A1(n157), .A2(n158), .ZN(n23) );
  CKND2D0 U137 ( .A1(n158), .A2(n157), .ZN(n22) );
  OA22D0 U138 ( .A1(n146), .A2(n141), .B1(b[3]), .B2(n145), .Z(n157) );
  OA22D0 U139 ( .A1(n155), .A2(n151), .B1(n149), .B2(n159), .Z(n158) );
  CKXOR2D0 U140 ( .A1(b[3]), .A2(n145), .Z(n155) );
  OAI22D0 U141 ( .A1(n149), .A2(n156), .B1(n159), .B2(n151), .ZN(n18) );
  CKXOR2D0 U144 ( .A1(b[3]), .A2(n145), .Z(n159) );
  CKXOR2D0 U145 ( .A1(n141), .A2(a[6]), .Z(n156) );
  CKND0 U103 ( .I(b[3]), .ZN(n141) );
  CKND0 U110 ( .I(a[3]), .ZN(n145) );
  OAI211D0 U114 ( .A1(b[2]), .A2(b[3]), .B(n161), .C(n149), .ZN(n151) );
  XNR2D0 U133 ( .A1(b[2]), .A2(b[1]), .ZN(n149) );
  CKND2D0 U134 ( .A1(b[2]), .A2(b[3]), .ZN(n161) );
endmodule


module oadm_fixed_div_specialized_plane_LEVEL3_RESIDUAL_DROP16 ( x_mantissa, 
        y_mantissa, plane_exact );
  input [23:0] x_mantissa;
  input [23:0] y_mantissa;
  output [28:0] plane_exact;
  wire   x_residual_22_, y_residual_22_, N26, N25, N24, N23, N22, N21, N20,
         N19, N18, N17, N16, N15, N14, N13, N12, n130, n190, n200, n210, n220,
         n230, n240, n250, n260, n27, n28, n29, n30, n31;
  wire   [12:3] x_product;
  wire   [12:0] y_product;
  wire   [9:1] midpoint_product;
  wire   [27:13] sub_0_root_sub_58_carry;
  wire   [25:17] add_1_root_sub_58_carry;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2;

  oadm_fixed_div_specialized_plane_LEVEL3_RESIDUAL_DROP16_DW_mult_uns_0 mult_54 ( 
        .a({n31, n130, x_mantissa[22:20], n130}), .b({n31, n130, 
        y_mantissa[22:20], n130}), .product({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, midpoint_product, SYNOPSYS_UNCONNECTED__2})
         );
  oadm_fixed_div_specialized_plane_LEVEL3_RESIDUAL_DROP16_DW_mult_tc_1 mult_44 ( 
        .a({y_residual_22_, y_residual_22_, y_residual_22_, y_residual_22_, 
        y_mantissa[18:16]}), .b({n31, n130, x_mantissa[22:20], n130}), 
        .product(y_product) );
  oadm_fixed_div_specialized_plane_LEVEL3_RESIDUAL_DROP16_DW_mult_tc_0 mult_42 ( 
        .a({x_residual_22_, x_residual_22_, x_residual_22_, x_residual_22_, 
        x_mantissa[18:16]}), .b({n31, n130, y_mantissa[22:20], n130}), 
        .product({x_product, N14, N13, N12}) );
  TIEH U3 ( .Z(n130) );
  FA1D0 U16 ( .A(midpoint_product[9]), .B(x_product[12]), .CI(
        add_1_root_sub_58_carry[24]), .CO(add_1_root_sub_58_carry[25]), .S(N24) );
  CKBD1 U17 ( .I(plane_exact[27]), .Z(plane_exact[28]) );
  FA1D0 U18 ( .A(N22), .B(n28), .CI(sub_0_root_sub_58_carry[22]), .CO(
        sub_0_root_sub_58_carry[23]), .S(plane_exact[22]) );
  INVD1 U19 ( .I(y_product[10]), .ZN(n28) );
  XOR3D1 U20 ( .A1(N26), .A2(n30), .A3(sub_0_root_sub_58_carry[27]), .Z(
        plane_exact[27]) );
  FA1D0 U21 ( .A(N26), .B(n30), .CI(sub_0_root_sub_58_carry[26]), .CO(
        sub_0_root_sub_58_carry[27]), .S(plane_exact[26]) );
  FA1D0 U22 ( .A(N20), .B(n260), .CI(sub_0_root_sub_58_carry[20]), .CO(
        sub_0_root_sub_58_carry[21]), .S(plane_exact[20]) );
  INVD1 U23 ( .I(y_product[8]), .ZN(n260) );
  FA1D0 U24 ( .A(N23), .B(n29), .CI(sub_0_root_sub_58_carry[23]), .CO(
        sub_0_root_sub_58_carry[24]), .S(plane_exact[23]) );
  INVD1 U25 ( .I(y_product[11]), .ZN(n29) );
  FA1D0 U26 ( .A(midpoint_product[7]), .B(x_product[10]), .CI(
        add_1_root_sub_58_carry[22]), .CO(add_1_root_sub_58_carry[23]), .S(N22) );
  FA1D0 U27 ( .A(N24), .B(n30), .CI(sub_0_root_sub_58_carry[24]), .CO(
        sub_0_root_sub_58_carry[25]), .S(plane_exact[24]) );
  FA1D0 U28 ( .A(midpoint_product[8]), .B(x_product[11]), .CI(
        add_1_root_sub_58_carry[23]), .CO(add_1_root_sub_58_carry[24]), .S(N23) );
  FA1D0 U29 ( .A(N25), .B(n30), .CI(sub_0_root_sub_58_carry[25]), .CO(
        sub_0_root_sub_58_carry[26]), .S(plane_exact[25]) );
  FA1D0 U32 ( .A(N21), .B(n27), .CI(sub_0_root_sub_58_carry[21]), .CO(
        sub_0_root_sub_58_carry[22]), .S(plane_exact[21]) );
  INVD1 U33 ( .I(y_product[9]), .ZN(n27) );
  FA1D0 U34 ( .A(midpoint_product[5]), .B(x_product[8]), .CI(
        add_1_root_sub_58_carry[20]), .CO(add_1_root_sub_58_carry[21]), .S(N20) );
  FA1D0 U35 ( .A(midpoint_product[4]), .B(x_product[7]), .CI(
        add_1_root_sub_58_carry[19]), .CO(add_1_root_sub_58_carry[20]), .S(N19) );
  FA1D0 U36 ( .A(N19), .B(n250), .CI(sub_0_root_sub_58_carry[19]), .CO(
        sub_0_root_sub_58_carry[20]), .S(plane_exact[19]) );
  INVD1 U37 ( .I(y_product[7]), .ZN(n250) );
  FA1D0 U38 ( .A(midpoint_product[3]), .B(x_product[6]), .CI(
        add_1_root_sub_58_carry[18]), .CO(add_1_root_sub_58_carry[19]), .S(N18) );
  FA1D0 U39 ( .A(N18), .B(n240), .CI(sub_0_root_sub_58_carry[18]), .CO(
        sub_0_root_sub_58_carry[19]), .S(plane_exact[18]) );
  INVD1 U40 ( .I(y_product[6]), .ZN(n240) );
  FA1D0 U41 ( .A(N16), .B(n220), .CI(sub_0_root_sub_58_carry[16]), .CO(
        sub_0_root_sub_58_carry[17]), .S(plane_exact[16]) );
  INVD1 U42 ( .I(y_product[4]), .ZN(n220) );
  FA1D0 U43 ( .A(N17), .B(n230), .CI(sub_0_root_sub_58_carry[17]), .CO(
        sub_0_root_sub_58_carry[18]), .S(plane_exact[17]) );
  INVD1 U44 ( .I(y_product[5]), .ZN(n230) );
  INVD1 U45 ( .I(y_product[12]), .ZN(n30) );
  FA1D0 U48 ( .A(midpoint_product[6]), .B(x_product[9]), .CI(
        add_1_root_sub_58_carry[21]), .CO(add_1_root_sub_58_carry[22]), .S(N21) );
  FA1D0 U49 ( .A(midpoint_product[1]), .B(x_product[4]), .CI(x_product[3]), 
        .CO(add_1_root_sub_58_carry[17]), .S(N16) );
  FA1D0 U50 ( .A(midpoint_product[2]), .B(x_product[5]), .CI(
        add_1_root_sub_58_carry[17]), .CO(add_1_root_sub_58_carry[18]), .S(N17) );
  FA1D0 U51 ( .A(N15), .B(n210), .CI(sub_0_root_sub_58_carry[15]), .CO(
        sub_0_root_sub_58_carry[16]), .S(plane_exact[15]) );
  INVD1 U52 ( .I(y_product[3]), .ZN(n210) );
  INVD1 U53 ( .I(x_product[3]), .ZN(N15) );
  FA1D0 U54 ( .A(N14), .B(n200), .CI(sub_0_root_sub_58_carry[14]), .CO(
        sub_0_root_sub_58_carry[15]), .S(plane_exact[14]) );
  INVD1 U55 ( .I(y_product[2]), .ZN(n200) );
  FA1D0 U56 ( .A(N13), .B(n190), .CI(sub_0_root_sub_58_carry[13]), .CO(
        sub_0_root_sub_58_carry[14]), .S(plane_exact[13]) );
  INVD1 U58 ( .I(y_product[1]), .ZN(n190) );
  INVD1 U60 ( .I(x_mantissa[19]), .ZN(x_residual_22_) );
  INVD1 U61 ( .I(y_mantissa[19]), .ZN(y_residual_22_) );
  TIEL U62 ( .ZN(n31) );
  CKXOR2D1 U64 ( .A1(add_1_root_sub_58_carry[25]), .A2(x_product[12]), .Z(N25)
         );
  INR2D0 U4 ( .A1(x_product[12]), .B1(add_1_root_sub_58_carry[25]), .ZN(N26)
         );
  CKXOR2D0 U5 ( .A1(N12), .A2(y_product[0]), .Z(plane_exact[12]) );
  IND2D0 U6 ( .A1(N12), .B1(y_product[0]), .ZN(sub_0_root_sub_58_carry[13]) );
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
  fp32_normal_finite_wrapper_DW01_add_1_DW01_add_4 add_1_root_add_0_root_add_22_2 ( 
        .A(x[30:23]), .B({y[30], N17, N16, N15, N14, N13, N12, N11}), .CI(n79), 
        .SUM({N10, N9, N8, N7, N6, N5, N4, N3}) );
  AN2XD1 U3 ( .A1(exponent_adjust[0]), .A2(N3), .Z(n1) );
  CKBD1 U37 ( .I(result_fraction[6]), .Z(result[6]) );
  CKBD1 U38 ( .I(result_fraction[7]), .Z(result[7]) );
  CKBD1 U39 ( .I(result_fraction[5]), .Z(result[5]) );
  CKBD1 U40 ( .I(result_fraction[4]), .Z(result[4]) );
  FA1D0 U41 ( .A(N4), .B(exponent_adjust[1]), .CI(n1), .CO(
        add_0_root_add_0_root_add_22_2_carry[2]), .S(result[24]) );
  FA1D0 U42 ( .A(N5), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[2]), .CO(
        add_0_root_add_0_root_add_22_2_carry[3]), .S(result[25]) );
  FA1D0 U43 ( .A(N6), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[3]), .CO(
        add_0_root_add_0_root_add_22_2_carry[4]), .S(result[26]) );
  FA1D0 U44 ( .A(N7), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[4]), .CO(
        add_0_root_add_0_root_add_22_2_carry[5]), .S(result[27]) );
  FA1D0 U45 ( .A(N8), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[5]), .CO(
        add_0_root_add_0_root_add_22_2_carry[6]), .S(result[28]) );
  FA1D0 U46 ( .A(N9), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[6]), .CO(
        add_0_root_add_0_root_add_22_2_carry[7]), .S(result[29]) );
  XOR3D1 U55 ( .A1(N10), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_22_2_carry[7]), .Z(result[30]) );
  CKBD1 U56 ( .I(y[22]), .Z(fraction_y[22]) );
  CKBD1 U57 ( .I(y[21]), .Z(fraction_y[21]) );
  CKBD1 U58 ( .I(y[20]), .Z(fraction_y[20]) );
  CKBD1 U62 ( .I(x[22]), .Z(fraction_x[22]) );
  CKBD1 U63 ( .I(x[21]), .Z(fraction_x[21]) );
  CKBD1 U64 ( .I(x[20]), .Z(fraction_x[20]) );
  INVD1 U69 ( .I(y[29]), .ZN(N17) );
  INVD1 U70 ( .I(y[24]), .ZN(N12) );
  INVD1 U71 ( .I(y[25]), .ZN(N13) );
  INVD1 U72 ( .I(y[26]), .ZN(N14) );
  INVD1 U73 ( .I(y[27]), .ZN(N15) );
  INVD1 U74 ( .I(y[28]), .ZN(N16) );
  CKBD1 U87 ( .I(x[19]), .Z(fraction_x[19]) );
  CKBD1 U88 ( .I(x[18]), .Z(fraction_x[18]) );
  CKBD1 U89 ( .I(x[17]), .Z(fraction_x[17]) );
  CKBD1 U90 ( .I(x[16]), .Z(fraction_x[16]) );
  CKBD1 U91 ( .I(y[19]), .Z(fraction_y[19]) );
  CKBD1 U92 ( .I(y[18]), .Z(fraction_y[18]) );
  CKBD1 U93 ( .I(y[17]), .Z(fraction_y[17]) );
  CKBD1 U94 ( .I(y[16]), .Z(fraction_y[16]) );
  CKBD1 U95 ( .I(result_fraction[22]), .Z(result[22]) );
  CKBD1 U96 ( .I(result_fraction[21]), .Z(result[21]) );
  CKBD1 U97 ( .I(result_fraction[20]), .Z(result[20]) );
  CKBD1 U98 ( .I(result_fraction[19]), .Z(result[19]) );
  CKBD1 U99 ( .I(result_fraction[18]), .Z(result[18]) );
  CKBD1 U100 ( .I(result_fraction[17]), .Z(result[17]) );
  CKBD1 U101 ( .I(result_fraction[16]), .Z(result[16]) );
  CKBD1 U102 ( .I(result_fraction[15]), .Z(result[15]) );
  CKBD1 U103 ( .I(result_fraction[14]), .Z(result[14]) );
  CKBD1 U104 ( .I(result_fraction[13]), .Z(result[13]) );
  CKBD1 U105 ( .I(result_fraction[12]), .Z(result[12]) );
  CKBD1 U106 ( .I(result_fraction[11]), .Z(result[11]) );
  CKBD1 U107 ( .I(result_fraction[10]), .Z(result[10]) );
  CKBD1 U108 ( .I(result_fraction[9]), .Z(result[9]) );
  CKBD1 U109 ( .I(result_fraction[8]), .Z(result[8]) );
  TIEL U110 ( .ZN(n79) );
  CKXOR2D1 U111 ( .A1(exponent_adjust[0]), .A2(N3), .Z(result[23]) );
  CKND0 U119 ( .I(y[23]), .ZN(N11) );
endmodule



    module oadm_fixed_div_specialized_3_16_16_8_e3_b6_95_7c_69_5a_4e_44_DW_mult_uns_0_DW_mult_uns_1 ( 
        a, b, product );
  input [28:0] a;
  input [7:0] b;
  output [36:0] product;
  wire   n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75,
         n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n91, n93, n95, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n155, n156, n157, n158, n159,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n171, n172, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n213, n214, n215, n216, n217, n218, n219,
         n220, n221, n222, n223, n224, n225, n226, n227, n228, n241, n242,
         n243, n244, n245, n246, n247, n248, n249, n250, n251, n252, n253,
         n254, n255, n256, n257, n258, n259, n577, n578, n579, n580, n581,
         n582, n585, n586, n587, n600, n601, n602, n603, n604, n605, n606,
         n607, n608, n609, n610, n611, n612, n613, n614, n615, n616, n617,
         n618, n619, n620, n621, n622, n623, n624, n625, n626, n627, n628,
         n629, n630, n631, n632, n633, n634, n635, n636, n637, n638, n639,
         n640, n641, n642, n643, n644, n645, n646, n647, n648, n649, n650,
         n651, n652, n654, n655, n656, n659, n660, n661, n662, n663, n664,
         n665, n666, n667, n668, n669, n670, n671, n672, n673, n674, n675,
         n676, n677, n678, n679, n680, n681, n682, n683, n684, n685, n686,
         n687, n688, n689, n690, n691, n692, n693, n694, n695, n697, n698,
         n699, n700, n701, n702, n703, n704, n705, n706, n707, n708, n709,
         n710, n711, n712, n713, n714, n715, n716, n717, n718, n719, n720,
         n721, n722, n723, n724, n725, n726, n727, n728, n729, n730, n731,
         n732, n733, n734, n735, n736, n737, n738, n739, n740, n741, n742,
         n743, n744, n745, n746, n747, n748, n749;

  FA1D0 U33 ( .A(n65), .B(n66), .CI(n33), .CO(n32), .S(product[30]) );
  FA1D0 U34 ( .A(n242), .B(n67), .CI(n34), .CO(n33), .S(product[29]) );
  FA1D0 U35 ( .A(n243), .B(n69), .CI(n35), .CO(n34), .S(product[28]) );
  FA1D0 U36 ( .A(n244), .B(n71), .CI(n36), .CO(n35), .S(product[27]) );
  FA1D0 U37 ( .A(n245), .B(n73), .CI(n37), .CO(n36), .S(product[26]) );
  FA1D0 U38 ( .A(n246), .B(n75), .CI(n38), .CO(n37), .S(product[25]) );
  FA1D0 U39 ( .A(n247), .B(n77), .CI(n39), .CO(n38), .S(product[24]) );
  FA1D0 U40 ( .A(n248), .B(n79), .CI(n40), .CO(n39), .S(product[23]) );
  FA1D0 U41 ( .A(n249), .B(n81), .CI(n41), .CO(n40), .S(product[22]) );
  FA1D0 U42 ( .A(n250), .B(n83), .CI(n42), .CO(n41), .S(product[21]) );
  FA1D0 U43 ( .A(n251), .B(n85), .CI(n43), .CO(n42), .S(product[20]) );
  FA1D0 U44 ( .A(n252), .B(n87), .CI(n44), .CO(n43), .S(product[19]) );
  FA1D0 U45 ( .A(n253), .B(n89), .CI(n45), .CO(n44), .S(product[18]) );
  FA1D0 U46 ( .A(n254), .B(n91), .CI(n46), .CO(n45), .S(product[17]) );
  FA1D0 U47 ( .A(n255), .B(n93), .CI(n47), .CO(n46), .S(product[16]) );
  FA1D0 U48 ( .A(n256), .B(n95), .CI(n577), .CO(n47), .S(product[15]) );
  FA1D0 U65 ( .A(n213), .B(n187), .CI(n241), .CO(n64), .S(n65) );
  FA1D0 U66 ( .A(n214), .B(n188), .CI(n68), .CO(n66), .S(n67) );
  FA1D0 U67 ( .A(n215), .B(n189), .CI(n70), .CO(n68), .S(n69) );
  FA1D0 U68 ( .A(n216), .B(n190), .CI(n72), .CO(n70), .S(n71) );
  FA1D0 U69 ( .A(n217), .B(n191), .CI(n74), .CO(n72), .S(n73) );
  FA1D0 U70 ( .A(n218), .B(n192), .CI(n76), .CO(n74), .S(n75) );
  FA1D0 U71 ( .A(n219), .B(n193), .CI(n78), .CO(n76), .S(n77) );
  FA1D0 U72 ( .A(n220), .B(n194), .CI(n80), .CO(n78), .S(n79) );
  FA1D0 U73 ( .A(n221), .B(n195), .CI(n82), .CO(n80), .S(n81) );
  FA1D0 U74 ( .A(n222), .B(n196), .CI(n84), .CO(n82), .S(n83) );
  FA1D0 U75 ( .A(n223), .B(n197), .CI(n86), .CO(n84), .S(n85) );
  FA1D0 U76 ( .A(n224), .B(n198), .CI(n88), .CO(n86), .S(n87) );
  FA1D0 U77 ( .A(n225), .B(n199), .CI(n578), .CO(n88), .S(n89) );
  HA1D0 U414 ( .A(n127), .B(a[28]), .CO(n155), .S(n156) );
  FA1D0 U415 ( .A(a[27]), .B(a[28]), .CI(n128), .CO(n127), .S(n157) );
  FA1D0 U416 ( .A(a[26]), .B(a[27]), .CI(n129), .CO(n128), .S(n158) );
  FA1D0 U417 ( .A(a[25]), .B(a[26]), .CI(n130), .CO(n129), .S(n159) );
  FA1D0 U418 ( .A(a[24]), .B(a[25]), .CI(n131), .CO(n130), .S(n160) );
  FA1D0 U419 ( .A(a[23]), .B(a[24]), .CI(n132), .CO(n131), .S(n161) );
  FA1D0 U420 ( .A(a[22]), .B(a[23]), .CI(n133), .CO(n132), .S(n162) );
  FA1D0 U421 ( .A(a[21]), .B(a[22]), .CI(n134), .CO(n133), .S(n163) );
  FA1D0 U422 ( .A(a[20]), .B(a[21]), .CI(n135), .CO(n134), .S(n164) );
  FA1D0 U423 ( .A(a[19]), .B(a[20]), .CI(n136), .CO(n135), .S(n165) );
  FA1D0 U424 ( .A(a[18]), .B(a[19]), .CI(n137), .CO(n136), .S(n166) );
  FA1D0 U425 ( .A(a[17]), .B(a[18]), .CI(n138), .CO(n137), .S(n167) );
  FA1D0 U426 ( .A(a[16]), .B(a[17]), .CI(n139), .CO(n138), .S(n168) );
  FA1D0 U427 ( .A(a[15]), .B(a[16]), .CI(n140), .CO(n139), .S(n169) );
  FA1D0 U428 ( .A(a[14]), .B(a[15]), .CI(n141), .CO(n140), .S(n170) );
  FA1D0 U429 ( .A(a[13]), .B(a[14]), .CI(n585), .CO(n141), .S(n171) );
  AN2XD1 U451 ( .A1(n257), .A2(n580), .Z(n577) );
  AN2XD1 U452 ( .A1(n226), .A2(n581), .Z(n578) );
  INVD1 U453 ( .I(n162), .ZN(n607) );
  INVD1 U454 ( .I(n161), .ZN(n605) );
  INVD1 U455 ( .I(n159), .ZN(n602) );
  INVD1 U456 ( .I(a[22]), .ZN(n608) );
  INVD1 U457 ( .I(a[20]), .ZN(n612) );
  INVD1 U458 ( .I(a[27]), .ZN(n600) );
  INVD1 U459 ( .I(a[26]), .ZN(n601) );
  INVD1 U460 ( .I(n167), .ZN(n617) );
  INVD1 U461 ( .I(n166), .ZN(n615) );
  INVD1 U462 ( .I(n165), .ZN(n613) );
  INVD1 U463 ( .I(n164), .ZN(n611) );
  INVD1 U464 ( .I(n163), .ZN(n609) );
  INVD1 U465 ( .I(n168), .ZN(n619) );
  AN2XD1 U466 ( .A1(n228), .A2(b[5]), .Z(n579) );
  AN2XD1 U467 ( .A1(n258), .A2(n582), .Z(n580) );
  AN2XD1 U468 ( .A1(n227), .A2(n579), .Z(n581) );
  AN2XD1 U469 ( .A1(n259), .A2(b[2]), .Z(n582) );
  INVD1 U472 ( .I(n646), .ZN(n638) );
  INVD1 U473 ( .I(n648), .ZN(n637) );
  INVD1 U474 ( .I(n645), .ZN(n636) );
  INVD1 U475 ( .I(n698), .ZN(n629) );
  INVD1 U476 ( .I(n652), .ZN(n632) );
  INVD1 U477 ( .I(n650), .ZN(n631) );
  INVD1 U478 ( .I(a[16]), .ZN(n620) );
  INVD1 U479 ( .I(a[21]), .ZN(n610) );
  INVD1 U480 ( .I(a[17]), .ZN(n618) );
  INVD1 U481 ( .I(a[18]), .ZN(n616) );
  INVD1 U482 ( .I(a[19]), .ZN(n614) );
  INVD1 U483 ( .I(a[24]), .ZN(n604) );
  INVD1 U484 ( .I(a[23]), .ZN(n606) );
  INVD1 U485 ( .I(a[25]), .ZN(n603) );
  OAI22D1 U486 ( .A1(n639), .A2(n628), .B1(n638), .B2(n628), .ZN(n199) );
  INVD1 U487 ( .I(n169), .ZN(n621) );
  ND2D1 U488 ( .A1(n731), .A2(n630), .ZN(n698) );
  INVD1 U489 ( .I(n732), .ZN(n630) );
  AOI21D1 U490 ( .A1(a[12]), .A2(n650), .B(n700), .ZN(n699) );
  NR2D1 U491 ( .A1(n698), .A2(n628), .ZN(n700) );
  INVD1 U492 ( .I(n170), .ZN(n623) );
  AOI21D1 U493 ( .A1(n172), .A2(n650), .B(n702), .ZN(n701) );
  NR2D1 U494 ( .A1(n732), .A2(n731), .ZN(n650) );
  ND2D1 U495 ( .A1(n732), .A2(n733), .ZN(n652) );
  AOI21D1 U498 ( .A1(a[12]), .A2(n655), .B(n661), .ZN(n660) );
  NR2D1 U499 ( .A1(n656), .A2(n628), .ZN(n661) );
  NR3D0 U500 ( .A1(n630), .A2(n731), .A3(n733), .ZN(n649) );
  INVD1 U510 ( .I(n659), .ZN(n640) );
  INVD1 U513 ( .I(n171), .ZN(n625) );
  INVD1 U514 ( .I(n734), .ZN(n639) );
  INVD1 U515 ( .I(n172), .ZN(n627) );
  INVD1 U516 ( .I(a[12]), .ZN(n628) );
  INR3D0 U517 ( .A1(n747), .B1(n641), .B2(n748), .ZN(n645) );
  INVD1 U518 ( .I(n654), .ZN(n634) );
  INVD1 U519 ( .I(n655), .ZN(n633) );
  INVD1 U520 ( .I(n656), .ZN(n635) );
  ND2D1 U521 ( .A1(a[13]), .A2(n734), .ZN(n735) );
  INVD1 U522 ( .I(a[15]), .ZN(n622) );
  AN2XD1 U523 ( .A1(a[12]), .A2(a[13]), .Z(n585) );
  INVD1 U524 ( .I(a[14]), .ZN(n624) );
  ND2D1 U526 ( .A1(b[0]), .A2(n693), .ZN(n656) );
  INR2D1 U527 ( .A1(b[0]), .B1(n693), .ZN(n655) );
  INVD1 U528 ( .I(a[13]), .ZN(n626) );
  NR2D1 U533 ( .A1(n747), .A2(b[7]), .ZN(n734) );
  INVD1 U534 ( .I(b[7]), .ZN(n641) );
  INVD1 U535 ( .I(b[5]), .ZN(n587) );
  CKXOR2D1 U536 ( .A1(n580), .A2(n257), .Z(product[14]) );
  CKXOR2D1 U537 ( .A1(n581), .A2(n226), .Z(n91) );
  CKXOR2D1 U538 ( .A1(a[13]), .A2(a[12]), .Z(n172) );
  CKXOR2D1 U539 ( .A1(n582), .A2(n258), .Z(product[13]) );
  CKXOR2D1 U540 ( .A1(n579), .A2(n227), .Z(n93) );
  CKXOR2D1 U541 ( .A1(b[2]), .A2(n259), .Z(product[12]) );
  CKXOR2D1 U542 ( .A1(b[5]), .A2(n228), .Z(n95) );
  XOR4D0 U543 ( .A1(n642), .A2(n643), .A3(n644), .A4(n586), .Z(product[31]) );
  XNR3D0 U544 ( .A1(n64), .A2(n32), .A3(b[5]), .ZN(n644) );
  AOI221D0 U545 ( .A1(a[23]), .A2(n645), .B1(n160), .B2(n646), .C(n647), .ZN(
        n643) );
  OAI22D0 U546 ( .A1(n648), .A2(n604), .B1(n639), .B2(n603), .ZN(n647) );
  AOI221D0 U547 ( .A1(a[26]), .A2(n649), .B1(n157), .B2(n650), .C(n651), .ZN(
        n642) );
  MOAI22D0 U548 ( .A1(n652), .A2(n600), .B1(n629), .B2(a[28]), .ZN(n651) );
  XNR2D0 U549 ( .A1(n660), .A2(b[2]), .ZN(n259) );
  OAI22D0 U550 ( .A1(n640), .A2(n628), .B1(n656), .B2(n626), .ZN(n662) );
  XNR2D0 U551 ( .A1(n663), .A2(b[2]), .ZN(n257) );
  AOI221D0 U552 ( .A1(a[12]), .A2(n654), .B1(n171), .B2(n655), .C(n664), .ZN(
        n663) );
  OAI22D0 U553 ( .A1(n640), .A2(n626), .B1(n656), .B2(n624), .ZN(n664) );
  XNR2D0 U554 ( .A1(n665), .A2(b[2]), .ZN(n256) );
  AOI221D0 U555 ( .A1(a[13]), .A2(n654), .B1(n170), .B2(n655), .C(n666), .ZN(
        n665) );
  OAI22D0 U556 ( .A1(n640), .A2(n624), .B1(n656), .B2(n622), .ZN(n666) );
  XNR2D0 U557 ( .A1(n667), .A2(b[2]), .ZN(n255) );
  AOI221D0 U558 ( .A1(a[14]), .A2(n654), .B1(n169), .B2(n655), .C(n668), .ZN(
        n667) );
  OAI22D0 U559 ( .A1(n640), .A2(n622), .B1(n656), .B2(n620), .ZN(n668) );
  XNR2D0 U560 ( .A1(n669), .A2(b[2]), .ZN(n254) );
  AOI221D0 U561 ( .A1(a[15]), .A2(n654), .B1(n168), .B2(n655), .C(n670), .ZN(
        n669) );
  OAI22D0 U562 ( .A1(n640), .A2(n620), .B1(n656), .B2(n618), .ZN(n670) );
  XNR2D0 U563 ( .A1(n671), .A2(b[2]), .ZN(n253) );
  AOI221D0 U564 ( .A1(a[16]), .A2(n654), .B1(n167), .B2(n655), .C(n672), .ZN(
        n671) );
  OAI22D0 U565 ( .A1(n640), .A2(n618), .B1(n656), .B2(n616), .ZN(n672) );
  XNR2D0 U566 ( .A1(n673), .A2(b[2]), .ZN(n252) );
  AOI221D0 U567 ( .A1(a[17]), .A2(n654), .B1(n166), .B2(n655), .C(n674), .ZN(
        n673) );
  OAI22D0 U568 ( .A1(n640), .A2(n616), .B1(n656), .B2(n614), .ZN(n674) );
  XNR2D0 U569 ( .A1(n675), .A2(b[2]), .ZN(n251) );
  AOI221D0 U570 ( .A1(a[18]), .A2(n654), .B1(n165), .B2(n655), .C(n676), .ZN(
        n675) );
  OAI22D0 U571 ( .A1(n640), .A2(n614), .B1(n656), .B2(n612), .ZN(n676) );
  XNR2D0 U572 ( .A1(n677), .A2(b[2]), .ZN(n250) );
  AOI221D0 U573 ( .A1(a[19]), .A2(n654), .B1(n164), .B2(n655), .C(n678), .ZN(
        n677) );
  OAI22D0 U574 ( .A1(n640), .A2(n612), .B1(n656), .B2(n610), .ZN(n678) );
  XNR2D0 U575 ( .A1(n679), .A2(b[2]), .ZN(n249) );
  AOI221D0 U576 ( .A1(a[20]), .A2(n654), .B1(n163), .B2(n655), .C(n680), .ZN(
        n679) );
  OAI22D0 U577 ( .A1(n640), .A2(n610), .B1(n656), .B2(n608), .ZN(n680) );
  XNR2D0 U578 ( .A1(n681), .A2(b[2]), .ZN(n248) );
  AOI221D0 U579 ( .A1(n635), .A2(a[23]), .B1(a[22]), .B2(n659), .C(n682), .ZN(
        n681) );
  OAI22D0 U580 ( .A1(n633), .A2(n607), .B1(n634), .B2(n610), .ZN(n682) );
  XNR2D0 U581 ( .A1(n683), .A2(b[2]), .ZN(n247) );
  AOI221D0 U582 ( .A1(n635), .A2(a[24]), .B1(n659), .B2(a[23]), .C(n684), .ZN(
        n683) );
  OAI22D0 U583 ( .A1(n633), .A2(n605), .B1(n634), .B2(n608), .ZN(n684) );
  XNR2D0 U584 ( .A1(n685), .A2(b[2]), .ZN(n246) );
  AOI221D0 U585 ( .A1(n635), .A2(a[25]), .B1(n655), .B2(n160), .C(n686), .ZN(
        n685) );
  OAI22D0 U586 ( .A1(n606), .A2(n634), .B1(n604), .B2(n640), .ZN(n686) );
  XNR2D0 U587 ( .A1(n687), .A2(b[2]), .ZN(n245) );
  AOI221D0 U588 ( .A1(n654), .A2(a[24]), .B1(n635), .B2(a[26]), .C(n688), .ZN(
        n687) );
  OAI22D0 U589 ( .A1(n633), .A2(n602), .B1(n603), .B2(n640), .ZN(n688) );
  XNR2D0 U590 ( .A1(n689), .A2(b[2]), .ZN(n244) );
  AOI221D0 U591 ( .A1(n635), .A2(a[27]), .B1(n659), .B2(a[26]), .C(n690), .ZN(
        n689) );
  MOAI22D0 U592 ( .A1(n603), .A2(n634), .B1(n655), .B2(n158), .ZN(n690) );
  XNR2D0 U593 ( .A1(n691), .A2(b[2]), .ZN(n243) );
  AOI221D0 U594 ( .A1(n635), .A2(a[28]), .B1(n655), .B2(n157), .C(n692), .ZN(
        n691) );
  OAI22D0 U595 ( .A1(n601), .A2(n634), .B1(n600), .B2(n640), .ZN(n692) );
  XNR2D0 U596 ( .A1(n694), .A2(b[2]), .ZN(n242) );
  AOI21D0 U597 ( .A1(n156), .A2(n655), .B(n695), .ZN(n694) );
  INR2D0 U600 ( .A1(b[1]), .B1(b[0]), .ZN(n659) );
  XNR2D0 U601 ( .A1(n697), .A2(b[2]), .ZN(n241) );
  AOI22D0 U602 ( .A1(n155), .A2(n655), .B1(n654), .B2(a[28]), .ZN(n697) );
  CKXOR2D0 U604 ( .A1(n586), .A2(b[1]), .Z(n693) );
  XNR2D0 U605 ( .A1(n699), .A2(b[5]), .ZN(n228) );
  XNR2D0 U606 ( .A1(n701), .A2(b[5]), .ZN(n227) );
  OAI22D0 U607 ( .A1(n652), .A2(n628), .B1(n698), .B2(n626), .ZN(n702) );
  XNR2D0 U608 ( .A1(n703), .A2(b[5]), .ZN(n226) );
  AOI221D0 U609 ( .A1(a[12]), .A2(n649), .B1(n171), .B2(n650), .C(n704), .ZN(
        n703) );
  OAI22D0 U610 ( .A1(n652), .A2(n626), .B1(n698), .B2(n624), .ZN(n704) );
  XNR2D0 U611 ( .A1(n705), .A2(b[5]), .ZN(n225) );
  AOI221D0 U612 ( .A1(a[13]), .A2(n649), .B1(n170), .B2(n650), .C(n706), .ZN(
        n705) );
  OAI22D0 U613 ( .A1(n652), .A2(n624), .B1(n698), .B2(n622), .ZN(n706) );
  XNR2D0 U614 ( .A1(n707), .A2(b[5]), .ZN(n224) );
  AOI221D0 U615 ( .A1(a[14]), .A2(n649), .B1(n169), .B2(n650), .C(n708), .ZN(
        n707) );
  OAI22D0 U616 ( .A1(n652), .A2(n622), .B1(n698), .B2(n620), .ZN(n708) );
  XNR2D0 U617 ( .A1(n709), .A2(b[5]), .ZN(n223) );
  AOI221D0 U618 ( .A1(a[15]), .A2(n649), .B1(n168), .B2(n650), .C(n710), .ZN(
        n709) );
  OAI22D0 U619 ( .A1(n652), .A2(n620), .B1(n698), .B2(n618), .ZN(n710) );
  XNR2D0 U620 ( .A1(n711), .A2(b[5]), .ZN(n222) );
  AOI221D0 U621 ( .A1(a[16]), .A2(n649), .B1(n167), .B2(n650), .C(n712), .ZN(
        n711) );
  OAI22D0 U622 ( .A1(n652), .A2(n618), .B1(n698), .B2(n616), .ZN(n712) );
  XNR2D0 U623 ( .A1(n713), .A2(b[5]), .ZN(n221) );
  AOI221D0 U624 ( .A1(a[17]), .A2(n649), .B1(n166), .B2(n650), .C(n714), .ZN(
        n713) );
  OAI22D0 U625 ( .A1(n652), .A2(n616), .B1(n698), .B2(n614), .ZN(n714) );
  XNR2D0 U626 ( .A1(n715), .A2(b[5]), .ZN(n220) );
  AOI221D0 U627 ( .A1(a[18]), .A2(n649), .B1(n165), .B2(n650), .C(n716), .ZN(
        n715) );
  OAI22D0 U628 ( .A1(n652), .A2(n614), .B1(n698), .B2(n612), .ZN(n716) );
  XNR2D0 U629 ( .A1(n717), .A2(b[5]), .ZN(n219) );
  AOI221D0 U630 ( .A1(a[19]), .A2(n649), .B1(n164), .B2(n650), .C(n718), .ZN(
        n717) );
  OAI22D0 U631 ( .A1(n652), .A2(n612), .B1(n698), .B2(n610), .ZN(n718) );
  XNR2D0 U632 ( .A1(n719), .A2(b[5]), .ZN(n218) );
  AOI221D0 U633 ( .A1(a[20]), .A2(n649), .B1(n163), .B2(n650), .C(n720), .ZN(
        n719) );
  OAI22D0 U634 ( .A1(n652), .A2(n610), .B1(n698), .B2(n608), .ZN(n720) );
  XNR2D0 U635 ( .A1(n721), .A2(b[5]), .ZN(n217) );
  AOI221D0 U636 ( .A1(a[21]), .A2(n649), .B1(n162), .B2(n650), .C(n722), .ZN(
        n721) );
  OAI22D0 U637 ( .A1(n652), .A2(n608), .B1(n606), .B2(n698), .ZN(n722) );
  XNR2D0 U638 ( .A1(n723), .A2(b[5]), .ZN(n216) );
  AOI221D0 U639 ( .A1(a[22]), .A2(n649), .B1(n161), .B2(n650), .C(n724), .ZN(
        n723) );
  OAI22D0 U640 ( .A1(n606), .A2(n652), .B1(n604), .B2(n698), .ZN(n724) );
  XNR2D0 U641 ( .A1(n725), .A2(b[5]), .ZN(n215) );
  AOI221D0 U642 ( .A1(n632), .A2(a[24]), .B1(n649), .B2(a[23]), .C(n726), .ZN(
        n725) );
  MOAI22D0 U643 ( .A1(n603), .A2(n698), .B1(n160), .B2(n650), .ZN(n726) );
  XNR2D0 U644 ( .A1(n727), .A2(b[5]), .ZN(n214) );
  AOI221D0 U645 ( .A1(n649), .A2(a[24]), .B1(a[26]), .B2(n629), .C(n728), .ZN(
        n727) );
  OAI22D0 U646 ( .A1(n631), .A2(n602), .B1(n603), .B2(n652), .ZN(n728) );
  XNR2D0 U647 ( .A1(n729), .A2(b[5]), .ZN(n213) );
  AOI221D0 U648 ( .A1(n649), .A2(a[25]), .B1(n158), .B2(n650), .C(n730), .ZN(
        n729) );
  OAI22D0 U649 ( .A1(n652), .A2(n601), .B1(n698), .B2(n600), .ZN(n730) );
  CKXOR2D0 U650 ( .A1(b[4]), .A2(b[3]), .Z(n733) );
  CKXOR2D0 U651 ( .A1(n587), .A2(b[4]), .Z(n731) );
  CKXOR2D0 U652 ( .A1(n586), .A2(b[3]), .Z(n732) );
  OAI221D0 U653 ( .A1(n648), .A2(n628), .B1(n638), .B2(n627), .C(n735), .ZN(
        n198) );
  OAI221D0 U654 ( .A1(n648), .A2(n626), .B1(n638), .B2(n625), .C(n736), .ZN(
        n197) );
  AOI22D0 U655 ( .A1(a[14]), .A2(n734), .B1(a[12]), .B2(n645), .ZN(n736) );
  OAI221D0 U656 ( .A1(n636), .A2(n626), .B1(n638), .B2(n623), .C(n737), .ZN(
        n196) );
  AOI22D0 U657 ( .A1(a[15]), .A2(n734), .B1(a[14]), .B2(n637), .ZN(n737) );
  OAI221D0 U658 ( .A1(n636), .A2(n624), .B1(n638), .B2(n621), .C(n738), .ZN(
        n195) );
  AOI22D0 U659 ( .A1(a[16]), .A2(n734), .B1(a[15]), .B2(n637), .ZN(n738) );
  OAI221D0 U660 ( .A1(n636), .A2(n622), .B1(n638), .B2(n619), .C(n739), .ZN(
        n194) );
  AOI22D0 U661 ( .A1(a[17]), .A2(n734), .B1(a[16]), .B2(n637), .ZN(n739) );
  OAI221D0 U662 ( .A1(n636), .A2(n620), .B1(n638), .B2(n617), .C(n740), .ZN(
        n193) );
  AOI22D0 U663 ( .A1(a[18]), .A2(n734), .B1(a[17]), .B2(n637), .ZN(n740) );
  OAI221D0 U664 ( .A1(n636), .A2(n618), .B1(n638), .B2(n615), .C(n741), .ZN(
        n192) );
  AOI22D0 U665 ( .A1(a[19]), .A2(n734), .B1(a[18]), .B2(n637), .ZN(n741) );
  OAI221D0 U666 ( .A1(n636), .A2(n616), .B1(n638), .B2(n613), .C(n742), .ZN(
        n191) );
  AOI22D0 U667 ( .A1(a[20]), .A2(n734), .B1(a[19]), .B2(n637), .ZN(n742) );
  OAI221D0 U668 ( .A1(n636), .A2(n614), .B1(n638), .B2(n611), .C(n743), .ZN(
        n190) );
  AOI22D0 U669 ( .A1(a[21]), .A2(n734), .B1(a[20]), .B2(n637), .ZN(n743) );
  OAI221D0 U670 ( .A1(n636), .A2(n612), .B1(n638), .B2(n609), .C(n744), .ZN(
        n189) );
  AOI22D0 U671 ( .A1(a[22]), .A2(n734), .B1(a[21]), .B2(n637), .ZN(n744) );
  OAI221D0 U672 ( .A1(n636), .A2(n610), .B1(n638), .B2(n607), .C(n745), .ZN(
        n188) );
  AOI22D0 U673 ( .A1(a[23]), .A2(n734), .B1(a[22]), .B2(n637), .ZN(n745) );
  OAI221D0 U674 ( .A1(n636), .A2(n608), .B1(n638), .B2(n605), .C(n746), .ZN(
        n187) );
  AOI22D0 U675 ( .A1(a[24]), .A2(n734), .B1(a[23]), .B2(n637), .ZN(n746) );
  CKND2D0 U676 ( .A1(n747), .A2(n748), .ZN(n648) );
  NR2D0 U677 ( .A1(n641), .A2(n747), .ZN(n646) );
  XNR2D0 U678 ( .A1(n641), .A2(b[6]), .ZN(n748) );
  CKXOR2D0 U679 ( .A1(n587), .A2(b[6]), .Z(n747) );
  AO22D0 U445 ( .A1(n654), .A2(a[27]), .B1(n659), .B2(a[28]), .Z(n695) );
  NR3D0 U446 ( .A1(n693), .A2(b[0]), .A3(b[1]), .ZN(n654) );
  CKND0 U447 ( .I(b[2]), .ZN(n586) );
  XNR2D0 U448 ( .A1(b[2]), .A2(n749), .ZN(n258) );
  AOI21D0 U449 ( .A1(n172), .A2(n655), .B(n662), .ZN(n749) );
endmodule


module oadm_fixed_div_specialized_3_16_16_8_e3_b6_95_7c_69_5a_4e_44 ( x, y, 
        result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n1, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26;
  wire   [22:16] x_mantissa;
  wire   [22:16] y_mantissa;
  wire   [28:12] plane_full;
  wire   [7:0] coefficient;
  wire   [31:12] full_scale_product;
  wire   [22:4] normalized_fraction;
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
        SYNOPSYS_UNCONNECTED__64;

  AN3XD1 U35 ( .A1(n39), .A2(n31), .A3(n35), .Z(n36) );
  AN2XD1 U39 ( .A1(n32), .A2(n39), .Z(n30) );
  oadm_fixed_div_specialized_plane_LEVEL3_RESIDUAL_DROP16 plane ( .x_mantissa(
        {1'b0, x_mantissa, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y_mantissa({1'b0, 
        y_mantissa, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .plane_exact({plane_full, 
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11}) );
  fp32_normal_finite_wrapper fp_wrapper ( .x({x[31:16], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y({y[31:16], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .divide_mode(1'b0), .fraction_x(
        {x_mantissa, SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27}), .fraction_y({
        y_mantissa, SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31, 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, 
        SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39, 
        SYNOPSYS_UNCONNECTED__40, SYNOPSYS_UNCONNECTED__41, 
        SYNOPSYS_UNCONNECTED__42, SYNOPSYS_UNCONNECTED__43}), 
        .result_fraction({normalized_fraction, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .exponent_adjust({exponent_adjust[2], exponent_adjust[2], 
        exponent_adjust[0]}), .result({result[31:4], SYNOPSYS_UNCONNECTED__44, 
        SYNOPSYS_UNCONNECTED__45, SYNOPSYS_UNCONNECTED__46, 
        SYNOPSYS_UNCONNECTED__47}) );
  oadm_fixed_div_specialized_3_16_16_8_e3_b6_95_7c_69_5a_4e_44_DW_mult_uns_0_DW_mult_uns_1 mult_121 ( 
        .a({plane_full, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1}), .b(
        coefficient), .product({SYNOPSYS_UNCONNECTED__48, 
        SYNOPSYS_UNCONNECTED__49, SYNOPSYS_UNCONNECTED__50, 
        SYNOPSYS_UNCONNECTED__51, SYNOPSYS_UNCONNECTED__52, full_scale_product, 
        SYNOPSYS_UNCONNECTED__53, SYNOPSYS_UNCONNECTED__54, 
        SYNOPSYS_UNCONNECTED__55, SYNOPSYS_UNCONNECTED__56, 
        SYNOPSYS_UNCONNECTED__57, SYNOPSYS_UNCONNECTED__58, 
        SYNOPSYS_UNCONNECTED__59, SYNOPSYS_UNCONNECTED__60, 
        SYNOPSYS_UNCONNECTED__61, SYNOPSYS_UNCONNECTED__62, 
        SYNOPSYS_UNCONNECTED__63, SYNOPSYS_UNCONNECTED__64}) );
  TIEL U3 ( .ZN(n1) );
  ND2D1 U4 ( .A1(n5), .A2(n29), .ZN(exponent_adjust[2]) );
  INVD1 U5 ( .I(exponent_adjust[0]), .ZN(n5) );
  ND2D1 U6 ( .A1(n6), .A2(n4), .ZN(n29) );
  INVD1 U7 ( .I(full_scale_product[30]), .ZN(n6) );
  OAI222D0 U8 ( .A1(n5), .A2(n23), .B1(n29), .B2(n24), .C1(n4), .C2(n22), .ZN(
        normalized_fraction[6]) );
  OAI222D0 U9 ( .A1(n5), .A2(n22), .B1(n29), .B2(n23), .C1(n21), .C2(n4), .ZN(
        normalized_fraction[7]) );
  OAI22D1 U10 ( .A1(n5), .A2(n24), .B1(n4), .B2(n23), .ZN(
        normalized_fraction[5]) );
  OAI222D0 U11 ( .A1(n5), .A2(n7), .B1(n29), .B2(n8), .C1(n6), .C2(n4), .ZN(
        normalized_fraction[22]) );
  OAI222D0 U12 ( .A1(n5), .A2(n17), .B1(n29), .B2(n18), .C1(n4), .C2(n16), 
        .ZN(normalized_fraction[12]) );
  OAI222D0 U13 ( .A1(n5), .A2(n16), .B1(n29), .B2(n17), .C1(n4), .C2(n15), 
        .ZN(normalized_fraction[13]) );
  OAI222D0 U14 ( .A1(n5), .A2(n15), .B1(n29), .B2(n16), .C1(n4), .C2(n14), 
        .ZN(normalized_fraction[14]) );
  OAI222D0 U15 ( .A1(n5), .A2(n14), .B1(n29), .B2(n15), .C1(n4), .C2(n13), 
        .ZN(normalized_fraction[15]) );
  OAI222D0 U16 ( .A1(n5), .A2(n13), .B1(n29), .B2(n14), .C1(n4), .C2(n12), 
        .ZN(normalized_fraction[16]) );
  OAI222D0 U17 ( .A1(n5), .A2(n12), .B1(n29), .B2(n13), .C1(n4), .C2(n11), 
        .ZN(normalized_fraction[17]) );
  OAI222D0 U18 ( .A1(n5), .A2(n11), .B1(n29), .B2(n12), .C1(n4), .C2(n10), 
        .ZN(normalized_fraction[18]) );
  OAI222D0 U19 ( .A1(n5), .A2(n10), .B1(n29), .B2(n11), .C1(n4), .C2(n9), .ZN(
        normalized_fraction[19]) );
  OAI222D0 U20 ( .A1(n5), .A2(n9), .B1(n29), .B2(n10), .C1(n4), .C2(n8), .ZN(
        normalized_fraction[20]) );
  OAI222D0 U21 ( .A1(n5), .A2(n8), .B1(n29), .B2(n9), .C1(n4), .C2(n7), .ZN(
        normalized_fraction[21]) );
  NR2D1 U22 ( .A1(n4), .A2(n24), .ZN(normalized_fraction[4]) );
  NR2D1 U23 ( .A1(n6), .A2(full_scale_product[31]), .ZN(exponent_adjust[0]) );
  INVD1 U24 ( .I(full_scale_product[31]), .ZN(n4) );
  OAI222D0 U25 ( .A1(n21), .A2(n5), .B1(n29), .B2(n22), .C1(n20), .C2(n4), 
        .ZN(normalized_fraction[8]) );
  OAI222D0 U26 ( .A1(n5), .A2(n20), .B1(n29), .B2(n21), .C1(n19), .C2(n4), 
        .ZN(normalized_fraction[9]) );
  OAI222D0 U27 ( .A1(n5), .A2(n19), .B1(n29), .B2(n20), .C1(n4), .C2(n18), 
        .ZN(normalized_fraction[10]) );
  OAI222D0 U28 ( .A1(n5), .A2(n18), .B1(n29), .B2(n19), .C1(n4), .C2(n17), 
        .ZN(normalized_fraction[11]) );
  INVD1 U29 ( .I(full_scale_product[29]), .ZN(n7) );
  INVD1 U30 ( .I(full_scale_product[28]), .ZN(n8) );
  INVD1 U31 ( .I(full_scale_product[27]), .ZN(n9) );
  INVD1 U32 ( .I(full_scale_product[26]), .ZN(n10) );
  INVD1 U33 ( .I(full_scale_product[25]), .ZN(n11) );
  INVD1 U34 ( .I(full_scale_product[24]), .ZN(n12) );
  INVD1 U36 ( .I(full_scale_product[23]), .ZN(n13) );
  INVD1 U37 ( .I(full_scale_product[22]), .ZN(n14) );
  INVD1 U38 ( .I(full_scale_product[21]), .ZN(n15) );
  INVD1 U40 ( .I(full_scale_product[20]), .ZN(n16) );
  INVD1 U41 ( .I(full_scale_product[19]), .ZN(n17) );
  INVD1 U42 ( .I(full_scale_product[18]), .ZN(n18) );
  INVD1 U43 ( .I(full_scale_product[15]), .ZN(n21) );
  INVD1 U44 ( .I(full_scale_product[14]), .ZN(n22) );
  INVD1 U45 ( .I(full_scale_product[13]), .ZN(n23) );
  INVD1 U46 ( .I(full_scale_product[12]), .ZN(n24) );
  INVD1 U47 ( .I(full_scale_product[17]), .ZN(n19) );
  INVD1 U48 ( .I(full_scale_product[16]), .ZN(n20) );
  ND3D1 U49 ( .A1(n38), .A2(n33), .A3(n36), .ZN(coefficient[2]) );
  ND3D1 U50 ( .A1(n34), .A2(n35), .A3(n30), .ZN(coefficient[5]) );
  ND3D1 U51 ( .A1(n38), .A2(n37), .A3(n30), .ZN(coefficient[1]) );
  ND3D1 U52 ( .A1(n26), .A2(n25), .A3(y_mantissa[22]), .ZN(n34) );
  ND4D1 U53 ( .A1(n38), .A2(n37), .A3(n34), .A4(n35), .ZN(coefficient[3]) );
  ND2D1 U54 ( .A1(n36), .A2(n37), .ZN(coefficient[4]) );
  ND3D1 U55 ( .A1(n31), .A2(n32), .A3(n34), .ZN(coefficient[0]) );
  IND3D1 U56 ( .A1(coefficient[3]), .B1(n32), .B2(n33), .ZN(coefficient[6]) );
  ND2D1 U57 ( .A1(n30), .A2(n31), .ZN(coefficient[7]) );
  ND3D1 U59 ( .A1(n26), .A2(n3), .A3(y_mantissa[21]), .ZN(n31) );
  INVD1 U60 ( .I(y_mantissa[20]), .ZN(n26) );
  INVD1 U61 ( .I(y_mantissa[21]), .ZN(n25) );
  ND3D1 U62 ( .A1(n25), .A2(n3), .A3(y_mantissa[20]), .ZN(n39) );
  ND3D1 U63 ( .A1(y_mantissa[21]), .A2(n3), .A3(y_mantissa[20]), .ZN(n35) );
  ND3D1 U64 ( .A1(n25), .A2(n3), .A3(n26), .ZN(n32) );
  ND3D1 U65 ( .A1(y_mantissa[21]), .A2(n26), .A3(y_mantissa[22]), .ZN(n38) );
  ND3D1 U66 ( .A1(y_mantissa[20]), .A2(n25), .A3(y_mantissa[22]), .ZN(n37) );
  ND2D1 U67 ( .A1(y_mantissa[20]), .A2(y_mantissa[21]), .ZN(n33) );
  CKND0 U58 ( .I(y_mantissa[22]), .ZN(n3) );
endmodule


module oadm_fixed_l3_div_specialized ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;

  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3;

  oadm_fixed_div_specialized_3_16_16_8_e3_b6_95_7c_69_5a_4e_44 implementation ( 
        .x({x[31:16], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y({y[31:16], 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .result({result[31:4], SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3}) );
endmodule


module abs_l3_no_w ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;

  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3;
  assign result[1] = 1'b0;
  assign result[0] = 1'b0;
  assign result[3] = 1'b0;
  assign result[2] = 1'b0;

  oadm_fixed_l3_div_specialized dut ( .x({x[31:16], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y({y[31:16], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .result({result[31:4], 
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3}) );
endmodule

