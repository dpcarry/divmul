/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Sat Sep  5 15:12:04 2026
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
  XNR3D1 U83 ( .A1(n64), .A2(n69), .A3(n137), .ZN(n35) );
  XNR2D1 U88 ( .A1(n159), .A2(n2), .ZN(product[9]) );
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
  OAI211D0 U81 ( .A1(n149), .A2(n124), .B(n161), .C(n160), .ZN(n15) );
  CKND0 U82 ( .I(n155), .ZN(n160) );
  MUX2ND0 U84 ( .I0(n123), .I1(n158), .S(n122), .ZN(n161) );
  AO211D0 U85 ( .A1(n26), .A2(n23), .B(n146), .C(n162), .Z(n20) );
  MUX2ND0 U86 ( .I0(n150), .I1(n121), .S(n120), .ZN(n162) );
  XOR4D0 U87 ( .A1(n122), .A2(a[3]), .A3(b[3]), .A4(n128), .Z(n16) );
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
         n149, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n164;

  FA1D0 U2 ( .A(n146), .B(a[3]), .CI(n2), .CO(n1), .S(product[11]) );
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
  FA1D0 U17 ( .A(n26), .B(n145), .CI(n23), .CO(n20), .S(n21) );
  HA1D0 U21 ( .A(n43), .B(n54), .CO(n26), .S(n27) );
  FA1D0 U22 ( .A(n49), .B(n144), .CI(n31), .CO(n28), .S(n29) );
  FA1D0 U24 ( .A(n143), .B(n45), .CI(n50), .CO(n32), .S(n33) );
  HA1D0 U25 ( .A(n51), .B(n137), .CO(n34), .S(n35) );
  INVD1 U101 ( .I(a[3]), .ZN(n140) );
  AN2XD1 U102 ( .A1(n48), .A2(n27), .Z(n136) );
  INVD1 U104 ( .I(n54), .ZN(n145) );
  INVD1 U106 ( .I(n18), .ZN(n141) );
  XNR2D1 U107 ( .A1(b[1]), .A2(n146), .ZN(n137) );
  INVD1 U110 ( .I(a[0]), .ZN(n149) );
  XNR2D1 U111 ( .A1(b[1]), .A2(n147), .ZN(n138) );
  XNR2D1 U113 ( .A1(b[1]), .A2(n148), .ZN(n139) );
  INVD1 U114 ( .I(a[1]), .ZN(n148) );
  INVD1 U115 ( .I(a[2]), .ZN(n147) );
  CKXOR2D1 U116 ( .A1(n27), .A2(n48), .Z(n25) );
  CKND0 U117 ( .I(n149), .ZN(product[0]) );
  AN2D0 U118 ( .A1(n149), .A2(b[1]), .Z(n38) );
  CKND0 U119 ( .I(n1), .ZN(product[12]) );
  CKXOR2D0 U122 ( .A1(b[1]), .A2(a[6]), .Z(n54) );
  NR2D0 U123 ( .A1(n152), .A2(n149), .ZN(n52) );
  OAI22D0 U124 ( .A1(n153), .A2(n154), .B1(n152), .B2(n155), .ZN(n51) );
  CKXOR2D0 U125 ( .A1(b[3]), .A2(n149), .Z(n153) );
  OAI22D0 U126 ( .A1(n155), .A2(n154), .B1(n152), .B2(n156), .ZN(n50) );
  CKXOR2D0 U127 ( .A1(b[3]), .A2(n148), .Z(n155) );
  OAI22D0 U128 ( .A1(n156), .A2(n154), .B1(n152), .B2(n157), .ZN(n49) );
  CKXOR2D0 U129 ( .A1(b[3]), .A2(n147), .Z(n156) );
  OAI22D0 U130 ( .A1(n157), .A2(n154), .B1(n152), .B2(n158), .ZN(n48) );
  CKXOR2D0 U131 ( .A1(b[3]), .A2(n146), .Z(n157) );
  AO21D0 U132 ( .A1(n154), .A2(n152), .B(n159), .Z(n46) );
  NR2D0 U133 ( .A1(b[3]), .A2(n149), .ZN(n45) );
  OAI22D0 U134 ( .A1(n149), .A2(n142), .B1(b[3]), .B2(n148), .ZN(n31) );
  OAI22D0 U135 ( .A1(n148), .A2(n142), .B1(b[3]), .B2(n147), .ZN(n43) );
  OAI32D0 U138 ( .A1(n142), .A2(a[0]), .A3(n152), .B1(n142), .B2(n154), .ZN(
        n37) );
  XNR2D0 U139 ( .A1(n160), .A2(n161), .ZN(n23) );
  CKND2D0 U140 ( .A1(n161), .A2(n160), .ZN(n22) );
  OA22D0 U141 ( .A1(n147), .A2(n142), .B1(b[3]), .B2(n146), .Z(n160) );
  OA22D0 U142 ( .A1(n158), .A2(n154), .B1(n152), .B2(n162), .Z(n161) );
  CKXOR2D0 U143 ( .A1(b[3]), .A2(n146), .Z(n158) );
  OAI22D0 U144 ( .A1(n152), .A2(n159), .B1(n162), .B2(n154), .ZN(n18) );
  CKXOR2D0 U147 ( .A1(b[3]), .A2(n146), .Z(n162) );
  CKXOR2D0 U148 ( .A1(n142), .A2(a[6]), .Z(n159) );
  CKND0 U103 ( .I(b[3]), .ZN(n142) );
  CKND0 U105 ( .I(a[3]), .ZN(n146) );
  XNR2D0 U108 ( .A1(b[1]), .A2(n146), .ZN(n144) );
  XNR2D0 U109 ( .A1(b[1]), .A2(n146), .ZN(n143) );
  OAI211D0 U112 ( .A1(b[2]), .A2(b[3]), .B(n164), .C(n152), .ZN(n154) );
  XNR2D0 U120 ( .A1(b[2]), .A2(b[1]), .ZN(n152) );
  CKND2D0 U121 ( .A1(b[2]), .A2(b[3]), .ZN(n164) );
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
         n149, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n164;

  FA1D0 U2 ( .A(n146), .B(a[3]), .CI(n2), .CO(n1), .S(product[11]) );
  FA1D0 U3 ( .A(n14), .B(n141), .CI(n3), .CO(n2), .S(product[10]) );
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
  FA1D0 U15 ( .A(n142), .B(a[3]), .CI(n22), .CO(n16), .S(n17) );
  FA1D0 U17 ( .A(n26), .B(n145), .CI(n23), .CO(n20), .S(n21) );
  HA1D0 U21 ( .A(n43), .B(n54), .CO(n26), .S(n27) );
  FA1D0 U22 ( .A(n49), .B(n144), .CI(n31), .CO(n28), .S(n29) );
  FA1D0 U24 ( .A(n143), .B(n45), .CI(n50), .CO(n32), .S(n33) );
  HA1D0 U25 ( .A(n51), .B(n137), .CO(n34), .S(n35) );
  INVD1 U101 ( .I(a[3]), .ZN(n141) );
  AN2XD1 U103 ( .A1(n48), .A2(n27), .Z(n136) );
  INVD1 U105 ( .I(n54), .ZN(n145) );
  INVD1 U106 ( .I(n18), .ZN(n142) );
  XNR2D1 U107 ( .A1(b[1]), .A2(n146), .ZN(n137) );
  XNR2D1 U109 ( .A1(b[1]), .A2(n147), .ZN(n138) );
  INVD1 U110 ( .I(a[0]), .ZN(n149) );
  XNR2D1 U112 ( .A1(b[1]), .A2(n148), .ZN(n139) );
  INVD1 U113 ( .I(a[1]), .ZN(n148) );
  INVD1 U114 ( .I(a[2]), .ZN(n147) );
  CKXOR2D1 U116 ( .A1(n27), .A2(n48), .Z(n25) );
  CKND0 U117 ( .I(n149), .ZN(product[0]) );
  AN2D0 U118 ( .A1(n149), .A2(b[1]), .Z(n38) );
  CKND0 U119 ( .I(n1), .ZN(product[12]) );
  CKXOR2D0 U122 ( .A1(b[1]), .A2(a[6]), .Z(n54) );
  NR2D0 U123 ( .A1(n152), .A2(n149), .ZN(n52) );
  OAI22D0 U124 ( .A1(n153), .A2(n154), .B1(n152), .B2(n155), .ZN(n51) );
  CKXOR2D0 U125 ( .A1(b[3]), .A2(n149), .Z(n153) );
  OAI22D0 U126 ( .A1(n155), .A2(n154), .B1(n152), .B2(n156), .ZN(n50) );
  CKXOR2D0 U127 ( .A1(b[3]), .A2(n148), .Z(n155) );
  OAI22D0 U128 ( .A1(n156), .A2(n154), .B1(n152), .B2(n157), .ZN(n49) );
  CKXOR2D0 U129 ( .A1(b[3]), .A2(n147), .Z(n156) );
  OAI22D0 U130 ( .A1(n157), .A2(n154), .B1(n152), .B2(n158), .ZN(n48) );
  CKXOR2D0 U131 ( .A1(b[3]), .A2(n146), .Z(n157) );
  AO21D0 U132 ( .A1(n154), .A2(n152), .B(n159), .Z(n46) );
  NR2D0 U133 ( .A1(b[3]), .A2(n149), .ZN(n45) );
  OAI22D0 U134 ( .A1(n149), .A2(n140), .B1(b[3]), .B2(n148), .ZN(n31) );
  OAI22D0 U135 ( .A1(n148), .A2(n140), .B1(b[3]), .B2(n147), .ZN(n43) );
  OAI32D0 U138 ( .A1(n140), .A2(a[0]), .A3(n152), .B1(n140), .B2(n154), .ZN(
        n37) );
  XNR2D0 U139 ( .A1(n160), .A2(n161), .ZN(n23) );
  CKND2D0 U140 ( .A1(n161), .A2(n160), .ZN(n22) );
  OA22D0 U141 ( .A1(n147), .A2(n140), .B1(b[3]), .B2(n146), .Z(n160) );
  OA22D0 U142 ( .A1(n158), .A2(n154), .B1(n152), .B2(n162), .Z(n161) );
  CKXOR2D0 U143 ( .A1(b[3]), .A2(n146), .Z(n158) );
  OAI22D0 U144 ( .A1(n152), .A2(n159), .B1(n162), .B2(n154), .ZN(n18) );
  CKXOR2D0 U147 ( .A1(b[3]), .A2(n146), .Z(n162) );
  CKXOR2D0 U148 ( .A1(n140), .A2(a[6]), .Z(n159) );
  CKND0 U102 ( .I(b[3]), .ZN(n140) );
  CKND0 U104 ( .I(a[3]), .ZN(n146) );
  XNR2D0 U108 ( .A1(b[1]), .A2(n146), .ZN(n144) );
  XNR2D0 U111 ( .A1(b[1]), .A2(n146), .ZN(n143) );
  OAI211D0 U115 ( .A1(b[2]), .A2(b[3]), .B(n164), .C(n152), .ZN(n154) );
  XNR2D0 U120 ( .A1(b[2]), .A2(b[1]), .ZN(n152) );
  CKND2D0 U121 ( .A1(b[2]), .A2(b[3]), .ZN(n164) );
endmodule


module oadm_fixed_div_specialized_plane_LEVEL3_RESIDUAL_DROP16 ( x_mantissa, 
        y_mantissa, plane_exact );
  input [23:0] x_mantissa;
  input [23:0] y_mantissa;
  output [28:0] plane_exact;
  wire   x_residual_22_, y_residual_22_, N23, N22, N21, N20, N19, N18, N17,
         N16, N14, N13, N12, n2, n4, n5, n10, n11, n120, n130, n140, n15, n160,
         n170, n190, n200, n210, n220, n230, n24;
  wire   [12:3] x_product;
  wire   [12:0] y_product;
  wire   [9:1] midpoint_product;
  wire   [24:16] sub_0_root_sub_58_carry;
  wire   [24:17] add_1_root_sub_58_carry;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2;

  oadm_fixed_div_specialized_plane_LEVEL3_RESIDUAL_DROP16_DW_mult_uns_0 mult_54 ( 
        .a({n200, n2, x_mantissa[22:20], n2}), .b({n200, n2, y_mantissa[22:20], 
        n2}), .product({SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        midpoint_product, SYNOPSYS_UNCONNECTED__2}) );
  oadm_fixed_div_specialized_plane_LEVEL3_RESIDUAL_DROP16_DW_mult_tc_1 mult_44 ( 
        .a({y_residual_22_, y_residual_22_, y_residual_22_, y_residual_22_, 
        y_mantissa[18:16]}), .b({n200, n2, x_mantissa[22:20], n2}), .product(
        y_product) );
  oadm_fixed_div_specialized_plane_LEVEL3_RESIDUAL_DROP16_DW_mult_tc_0 mult_42 ( 
        .a({x_residual_22_, x_residual_22_, x_residual_22_, x_residual_22_, 
        x_mantissa[18:16]}), .b({n200, n2, y_mantissa[22:20], n2}), .product({
        x_product, N14, N13, N12}) );
  TIEH U3 ( .Z(n2) );
  FA1D0 U5 ( .A(N22), .B(n160), .CI(sub_0_root_sub_58_carry[22]), .CO(
        sub_0_root_sub_58_carry[23]), .S(plane_exact[22]) );
  INVD1 U6 ( .I(y_product[10]), .ZN(n160) );
  FA1D0 U7 ( .A(N20), .B(n140), .CI(sub_0_root_sub_58_carry[20]), .CO(
        sub_0_root_sub_58_carry[21]), .S(plane_exact[20]) );
  INVD1 U8 ( .I(y_product[8]), .ZN(n140) );
  FA1D0 U9 ( .A(midpoint_product[8]), .B(x_product[11]), .CI(
        add_1_root_sub_58_carry[23]), .CO(add_1_root_sub_58_carry[24]), .S(N23) );
  FA1D0 U10 ( .A(N23), .B(n170), .CI(sub_0_root_sub_58_carry[23]), .CO(
        sub_0_root_sub_58_carry[24]), .S(plane_exact[23]) );
  INVD1 U11 ( .I(y_product[11]), .ZN(n170) );
  FA1D0 U15 ( .A(midpoint_product[7]), .B(x_product[10]), .CI(
        add_1_root_sub_58_carry[22]), .CO(add_1_root_sub_58_carry[23]), .S(N22) );
  FA1D0 U16 ( .A(N21), .B(n15), .CI(sub_0_root_sub_58_carry[21]), .CO(
        sub_0_root_sub_58_carry[22]), .S(plane_exact[21]) );
  INVD1 U17 ( .I(y_product[9]), .ZN(n15) );
  FA1D0 U18 ( .A(midpoint_product[5]), .B(x_product[8]), .CI(
        add_1_root_sub_58_carry[20]), .CO(add_1_root_sub_58_carry[21]), .S(N20) );
  FA1D0 U19 ( .A(midpoint_product[4]), .B(x_product[7]), .CI(
        add_1_root_sub_58_carry[19]), .CO(add_1_root_sub_58_carry[20]), .S(N19) );
  FA1D0 U20 ( .A(N19), .B(n130), .CI(sub_0_root_sub_58_carry[19]), .CO(
        sub_0_root_sub_58_carry[20]), .S(plane_exact[19]) );
  INVD1 U21 ( .I(y_product[7]), .ZN(n130) );
  FA1D0 U22 ( .A(midpoint_product[3]), .B(x_product[6]), .CI(
        add_1_root_sub_58_carry[18]), .CO(add_1_root_sub_58_carry[19]), .S(N18) );
  FA1D0 U23 ( .A(N18), .B(n120), .CI(sub_0_root_sub_58_carry[18]), .CO(
        sub_0_root_sub_58_carry[19]), .S(plane_exact[18]) );
  INVD1 U24 ( .I(y_product[6]), .ZN(n120) );
  FA1D0 U25 ( .A(N17), .B(n11), .CI(sub_0_root_sub_58_carry[17]), .CO(
        sub_0_root_sub_58_carry[18]), .S(plane_exact[17]) );
  INVD1 U26 ( .I(y_product[5]), .ZN(n11) );
  FA1D0 U28 ( .A(midpoint_product[6]), .B(x_product[9]), .CI(
        add_1_root_sub_58_carry[21]), .CO(add_1_root_sub_58_carry[22]), .S(N21) );
  FA1D0 U29 ( .A(midpoint_product[2]), .B(x_product[5]), .CI(
        add_1_root_sub_58_carry[17]), .CO(add_1_root_sub_58_carry[18]), .S(N17) );
  FA1D0 U30 ( .A(midpoint_product[1]), .B(x_product[4]), .CI(x_product[3]), 
        .CO(add_1_root_sub_58_carry[17]), .S(N16) );
  FA1D0 U31 ( .A(N16), .B(n10), .CI(sub_0_root_sub_58_carry[16]), .CO(
        sub_0_root_sub_58_carry[17]), .S(plane_exact[16]) );
  INVD1 U32 ( .I(y_product[4]), .ZN(n10) );
  INVD1 U33 ( .I(N13), .ZN(n190) );
  INVD1 U34 ( .I(x_mantissa[19]), .ZN(x_residual_22_) );
  INVD1 U35 ( .I(y_mantissa[19]), .ZN(y_residual_22_) );
  TIEL U36 ( .ZN(n200) );
  INR2D0 U37 ( .A1(y_product[0]), .B1(N12), .ZN(n5) );
  AN2D0 U38 ( .A1(n5), .A2(n190), .Z(n4) );
  XNR3D0 U4 ( .A1(x_product[12]), .A2(add_1_root_sub_58_carry[24]), .A3(n210), 
        .ZN(plane_exact[24]) );
  XOR3D0 U12 ( .A1(sub_0_root_sub_58_carry[24]), .A2(midpoint_product[9]), 
        .A3(y_product[12]), .Z(n210) );
  MAOI222D0 U13 ( .A(y_product[3]), .B(x_product[3]), .C(n220), .ZN(
        sub_0_root_sub_58_carry[16]) );
  MAOI222D0 U14 ( .A(N14), .B(n24), .C(n230), .ZN(n220) );
  CKND0 U27 ( .I(y_product[2]), .ZN(n230) );
  OAI22D0 U39 ( .A1(y_product[1]), .A2(n4), .B1(n5), .B2(n190), .ZN(n24) );
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
  FA1D0 U37 ( .A(N4), .B(exponent_adjust[1]), .CI(n1), .CO(
        add_0_root_add_0_root_add_22_2_carry[2]), .S(result[24]) );
  FA1D0 U38 ( .A(N5), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[2]), .CO(
        add_0_root_add_0_root_add_22_2_carry[3]), .S(result[25]) );
  FA1D0 U39 ( .A(N6), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[3]), .CO(
        add_0_root_add_0_root_add_22_2_carry[4]), .S(result[26]) );
  FA1D0 U40 ( .A(N7), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[4]), .CO(
        add_0_root_add_0_root_add_22_2_carry[5]), .S(result[27]) );
  FA1D0 U41 ( .A(N8), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[5]), .CO(
        add_0_root_add_0_root_add_22_2_carry[6]), .S(result[28]) );
  FA1D0 U42 ( .A(N9), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[6]), .CO(
        add_0_root_add_0_root_add_22_2_carry[7]), .S(result[29]) );
  XOR3D1 U51 ( .A1(N10), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_22_2_carry[7]), .Z(result[30]) );
  CKBD1 U52 ( .I(y[22]), .Z(fraction_y[22]) );
  CKBD1 U53 ( .I(y[21]), .Z(fraction_y[21]) );
  CKBD1 U54 ( .I(y[20]), .Z(fraction_y[20]) );
  CKBD1 U58 ( .I(x[22]), .Z(fraction_x[22]) );
  CKBD1 U59 ( .I(x[21]), .Z(fraction_x[21]) );
  CKBD1 U60 ( .I(x[20]), .Z(fraction_x[20]) );
  INVD1 U65 ( .I(y[29]), .ZN(N17) );
  INVD1 U66 ( .I(y[24]), .ZN(N12) );
  INVD1 U67 ( .I(y[25]), .ZN(N13) );
  INVD1 U68 ( .I(y[26]), .ZN(N14) );
  INVD1 U69 ( .I(y[27]), .ZN(N15) );
  INVD1 U70 ( .I(y[28]), .ZN(N16) );
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
  input [8:0] a;
  input [7:0] b;
  output [16:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238;

  FA1D0 U3 ( .A(n19), .B(n17), .CI(n3), .CO(n2), .S(product[14]) );
  FA1D0 U4 ( .A(n22), .B(n20), .CI(n4), .CO(n3), .S(product[13]) );
  FA1D0 U5 ( .A(n27), .B(n23), .CI(n5), .CO(n4), .S(product[12]) );
  FA1D0 U6 ( .A(n33), .B(n28), .CI(n6), .CO(n5), .S(product[11]) );
  FA1D0 U7 ( .A(n41), .B(n34), .CI(n7), .CO(n6), .S(product[10]) );
  FA1D0 U8 ( .A(n51), .B(n42), .CI(n8), .CO(n7), .S(product[9]) );
  FA1D0 U9 ( .A(n52), .B(n60), .CI(n9), .CO(n8), .S(product[8]) );
  FA1D0 U10 ( .A(n61), .B(n70), .CI(n10), .CO(n9), .S(product[7]) );
  FA1D0 U11 ( .A(n71), .B(n78), .CI(n11), .CO(n10), .S(product[6]) );
  FA1D0 U12 ( .A(n79), .B(n85), .CI(n12), .CO(n11), .S(product[5]) );
  FA1D0 U13 ( .A(n86), .B(n89), .CI(n13), .CO(n12), .S(product[4]) );
  FA1D0 U14 ( .A(n90), .B(n92), .CI(n14), .CO(n13), .S(product[3]) );
  FA1D0 U15 ( .A(n15), .B(n148), .CI(n94), .CO(n14), .S(product[2]) );
  HA1D0 U16 ( .A(n165), .B(n157), .CO(n15), .S(product[1]) );
  FA1D0 U17 ( .A(n96), .B(n104), .CI(n18), .CO(n16), .S(n17) );
  CMPE42D1 U18 ( .A(n97), .B(n113), .C(n105), .CIX(n21), .D(n24), .CO(n19), 
        .COX(n18), .S(n20) );
  CMPE42D1 U19 ( .A(n29), .B(n106), .C(n25), .CIX(n26), .D(n30), .CO(n22), 
        .COX(n21), .S(n23) );
  FA1D0 U20 ( .A(n114), .B(n122), .CI(n98), .CO(n24), .S(n25) );
  CMPE42D1 U21 ( .A(n35), .B(n107), .C(n31), .CIX(n32), .D(n36), .CO(n27), 
        .COX(n26), .S(n28) );
  CMPE42D1 U22 ( .A(n99), .B(n115), .C(n131), .CIX(n38), .D(n123), .CO(n30), 
        .COX(n29), .S(n31) );
  CMPE42D1 U23 ( .A(n43), .B(n46), .C(n37), .CIX(n40), .D(n44), .CO(n33), 
        .COX(n32), .S(n34) );
  CMPE42D1 U24 ( .A(n132), .B(n116), .C(n124), .CIX(n39), .D(n48), .CO(n36), 
        .COX(n35), .S(n37) );
  FA1D0 U25 ( .A(n100), .B(n140), .CI(n108), .CO(n38), .S(n39) );
  CMPE42D1 U26 ( .A(n57), .B(n56), .C(n54), .CIX(n50), .D(n45), .CO(n41), 
        .COX(n40), .S(n42) );
  CMPE42D1 U27 ( .A(n117), .B(n133), .C(n49), .CIX(n47), .D(n53), .CO(n44), 
        .COX(n43), .S(n45) );
  FA1D0 U28 ( .A(n149), .B(n125), .CI(n141), .CO(n46), .S(n47) );
  HA1D0 U29 ( .A(n101), .B(n109), .CO(n48), .S(n49) );
  CMPE42D1 U30 ( .A(n55), .B(n67), .C(n58), .CIX(n59), .D(n63), .CO(n51), 
        .COX(n50), .S(n52) );
  CMPE42D1 U31 ( .A(n134), .B(n158), .C(n150), .CIX(n62), .D(n142), .CO(n54), 
        .COX(n53), .S(n55) );
  CMPE42D1 U32 ( .A(n102), .B(n110), .C(n118), .CIX(n65), .D(n126), .CO(n57), 
        .COX(n56), .S(n58) );
  CMPE42D1 U33 ( .A(n72), .B(n68), .C(n69), .CIX(n73), .D(n64), .CO(n60), 
        .COX(n59), .S(n61) );
  CMPE42D1 U34 ( .A(n135), .B(n151), .C(n143), .CIX(n66), .D(n75), .CO(n63), 
        .COX(n62), .S(n64) );
  FA1D0 U35 ( .A(n119), .B(n159), .CI(n127), .CO(n65), .S(n66) );
  HA1D0 U36 ( .A(n103), .B(n111), .CO(n67), .S(n68) );
  CMPE42D1 U37 ( .A(n82), .B(n144), .C(n76), .CIX(n74), .D(n77), .CO(n70), 
        .COX(n69), .S(n71) );
  CMPE42D1 U38 ( .A(n128), .B(n160), .C(n152), .CIX(n80), .D(n136), .CO(n73), 
        .COX(n72), .S(n74) );
  HA1D0 U39 ( .A(n112), .B(n120), .CO(n75), .S(n76) );
  CMPE42D1 U40 ( .A(n87), .B(n153), .C(n83), .CIX(n81), .D(n84), .CO(n78), 
        .COX(n77), .S(n79) );
  FA1D0 U41 ( .A(n137), .B(n161), .CI(n145), .CO(n80), .S(n81) );
  HA1D0 U42 ( .A(n121), .B(n129), .CO(n82), .S(n83) );
  CMPE42D1 U43 ( .A(n146), .B(n162), .C(n154), .CIX(n88), .D(n91), .CO(n85), 
        .COX(n84), .S(n86) );
  HA1D0 U44 ( .A(n130), .B(n138), .CO(n87), .S(n88) );
  FA1D0 U45 ( .A(n155), .B(n163), .CI(n93), .CO(n89), .S(n90) );
  HA1D0 U46 ( .A(n139), .B(n147), .CO(n91), .S(n92) );
  HA1D0 U47 ( .A(n156), .B(n164), .CO(n93), .S(n94) );
  INVD1 U139 ( .I(a[6]), .ZN(n223) );
  INVD1 U140 ( .I(a[4]), .ZN(n225) );
  INVD1 U141 ( .I(a[7]), .ZN(n222) );
  INVD1 U142 ( .I(a[5]), .ZN(n224) );
  INVD1 U143 ( .I(a[3]), .ZN(n226) );
  INVD1 U144 ( .I(a[2]), .ZN(n227) );
  INVD1 U145 ( .I(a[1]), .ZN(n228) );
  INVD1 U146 ( .I(a[8]), .ZN(n221) );
  INVD1 U147 ( .I(a[0]), .ZN(n229) );
  INVD1 U148 ( .I(b[3]), .ZN(n232) );
  INVD1 U149 ( .I(b[2]), .ZN(n230) );
  INVD1 U150 ( .I(b[1]), .ZN(n235) );
  INVD1 U151 ( .I(b[4]), .ZN(n231) );
  INVD1 U152 ( .I(b[5]), .ZN(n234) );
  INVD1 U153 ( .I(b[0]), .ZN(n237) );
  INVD1 U154 ( .I(b[6]), .ZN(n233) );
  INVD1 U155 ( .I(b[7]), .ZN(n236) );
  XOR3D0 U156 ( .A1(n2), .A2(n16), .A3(n238), .Z(product[15]) );
  NR2D0 U157 ( .A1(n221), .A2(n236), .ZN(n238) );
  NR2D0 U158 ( .A1(n229), .A2(n237), .ZN(product[0]) );
  NR2D0 U159 ( .A1(n236), .A2(n225), .ZN(n99) );
  NR2D0 U160 ( .A1(n236), .A2(n224), .ZN(n98) );
  NR2D0 U161 ( .A1(n236), .A2(n223), .ZN(n97) );
  NR2D0 U162 ( .A1(n236), .A2(n222), .ZN(n96) );
  NR2D0 U163 ( .A1(n237), .A2(n228), .ZN(n165) );
  NR2D0 U164 ( .A1(n237), .A2(n227), .ZN(n164) );
  NR2D0 U165 ( .A1(n237), .A2(n226), .ZN(n163) );
  NR2D0 U166 ( .A1(n237), .A2(n225), .ZN(n162) );
  NR2D0 U167 ( .A1(n237), .A2(n224), .ZN(n161) );
  NR2D0 U168 ( .A1(n237), .A2(n223), .ZN(n160) );
  NR2D0 U169 ( .A1(n237), .A2(n222), .ZN(n159) );
  NR2D0 U170 ( .A1(n221), .A2(n237), .ZN(n158) );
  NR2D0 U171 ( .A1(n229), .A2(n235), .ZN(n157) );
  NR2D0 U172 ( .A1(n228), .A2(n235), .ZN(n156) );
  NR2D0 U173 ( .A1(n227), .A2(n235), .ZN(n155) );
  NR2D0 U174 ( .A1(n226), .A2(n235), .ZN(n154) );
  NR2D0 U175 ( .A1(n225), .A2(n235), .ZN(n153) );
  NR2D0 U176 ( .A1(n224), .A2(n235), .ZN(n152) );
  NR2D0 U177 ( .A1(n223), .A2(n235), .ZN(n151) );
  NR2D0 U178 ( .A1(n222), .A2(n235), .ZN(n150) );
  NR2D0 U179 ( .A1(n221), .A2(n235), .ZN(n149) );
  NR2D0 U180 ( .A1(n229), .A2(n230), .ZN(n148) );
  NR2D0 U181 ( .A1(n228), .A2(n230), .ZN(n147) );
  NR2D0 U182 ( .A1(n227), .A2(n230), .ZN(n146) );
  NR2D0 U183 ( .A1(n226), .A2(n230), .ZN(n145) );
  NR2D0 U184 ( .A1(n225), .A2(n230), .ZN(n144) );
  NR2D0 U185 ( .A1(n224), .A2(n230), .ZN(n143) );
  NR2D0 U186 ( .A1(n223), .A2(n230), .ZN(n142) );
  NR2D0 U187 ( .A1(n222), .A2(n230), .ZN(n141) );
  NR2D0 U188 ( .A1(n221), .A2(n230), .ZN(n140) );
  NR2D0 U189 ( .A1(n229), .A2(n232), .ZN(n139) );
  NR2D0 U190 ( .A1(n228), .A2(n232), .ZN(n138) );
  NR2D0 U191 ( .A1(n227), .A2(n232), .ZN(n137) );
  NR2D0 U192 ( .A1(n226), .A2(n232), .ZN(n136) );
  NR2D0 U193 ( .A1(n225), .A2(n232), .ZN(n135) );
  NR2D0 U194 ( .A1(n224), .A2(n232), .ZN(n134) );
  NR2D0 U195 ( .A1(n223), .A2(n232), .ZN(n133) );
  NR2D0 U196 ( .A1(n222), .A2(n232), .ZN(n132) );
  NR2D0 U197 ( .A1(n221), .A2(n232), .ZN(n131) );
  NR2D0 U198 ( .A1(n229), .A2(n231), .ZN(n130) );
  NR2D0 U199 ( .A1(n228), .A2(n231), .ZN(n129) );
  NR2D0 U200 ( .A1(n227), .A2(n231), .ZN(n128) );
  NR2D0 U201 ( .A1(n226), .A2(n231), .ZN(n127) );
  NR2D0 U202 ( .A1(n225), .A2(n231), .ZN(n126) );
  NR2D0 U203 ( .A1(n224), .A2(n231), .ZN(n125) );
  NR2D0 U204 ( .A1(n223), .A2(n231), .ZN(n124) );
  NR2D0 U205 ( .A1(n222), .A2(n231), .ZN(n123) );
  NR2D0 U206 ( .A1(n221), .A2(n231), .ZN(n122) );
  NR2D0 U207 ( .A1(n229), .A2(n234), .ZN(n121) );
  NR2D0 U208 ( .A1(n228), .A2(n234), .ZN(n120) );
  NR2D0 U209 ( .A1(n227), .A2(n234), .ZN(n119) );
  NR2D0 U210 ( .A1(n226), .A2(n234), .ZN(n118) );
  NR2D0 U211 ( .A1(n225), .A2(n234), .ZN(n117) );
  NR2D0 U212 ( .A1(n224), .A2(n234), .ZN(n116) );
  NR2D0 U213 ( .A1(n223), .A2(n234), .ZN(n115) );
  NR2D0 U214 ( .A1(n222), .A2(n234), .ZN(n114) );
  NR2D0 U215 ( .A1(n221), .A2(n234), .ZN(n113) );
  NR2D0 U216 ( .A1(n229), .A2(n233), .ZN(n112) );
  NR2D0 U217 ( .A1(n228), .A2(n233), .ZN(n111) );
  NR2D0 U218 ( .A1(n227), .A2(n233), .ZN(n110) );
  NR2D0 U219 ( .A1(n226), .A2(n233), .ZN(n109) );
  NR2D0 U220 ( .A1(n225), .A2(n233), .ZN(n108) );
  NR2D0 U221 ( .A1(n224), .A2(n233), .ZN(n107) );
  NR2D0 U222 ( .A1(n223), .A2(n233), .ZN(n106) );
  NR2D0 U223 ( .A1(n222), .A2(n233), .ZN(n105) );
  NR2D0 U224 ( .A1(n221), .A2(n233), .ZN(n104) );
  NR2D0 U225 ( .A1(n236), .A2(n229), .ZN(n103) );
  NR2D0 U226 ( .A1(n236), .A2(n228), .ZN(n102) );
  NR2D0 U227 ( .A1(n236), .A2(n227), .ZN(n101) );
  NR2D0 U228 ( .A1(n236), .A2(n226), .ZN(n100) );
endmodule


module oadm_fixed_div_specialized_3_16_16_8_e3_b6_95_7c_69_5a_4e_44 ( x, y, 
        result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n32;
  wire   [22:16] x_mantissa;
  wire   [22:16] y_mantissa;
  wire   [24:16] plane_full;
  wire   [7:0] coefficient;
  wire   [15:0] reduced_scale_product;
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
        SYNOPSYS_UNCONNECTED__58, SYNOPSYS_UNCONNECTED__59, 
        SYNOPSYS_UNCONNECTED__60;

  AN3XD1 U27 ( .A1(n31), .A2(n23), .A3(n27), .Z(n28) );
  AN2XD1 U31 ( .A1(n24), .A2(n31), .Z(n22) );
  oadm_fixed_div_specialized_plane_LEVEL3_RESIDUAL_DROP16 plane ( .x_mantissa(
        {1'b0, x_mantissa, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y_mantissa({1'b0, 
        y_mantissa, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .plane_exact({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, plane_full, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19}) );
  fp32_normal_finite_wrapper fp_wrapper ( .x({x[31:16], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y({y[31:16], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .divide_mode(1'b0), .fraction_x(
        {x_mantissa, SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31, 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35}), .fraction_y({
        y_mantissa, SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, 
        SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39, 
        SYNOPSYS_UNCONNECTED__40, SYNOPSYS_UNCONNECTED__41, 
        SYNOPSYS_UNCONNECTED__42, SYNOPSYS_UNCONNECTED__43, 
        SYNOPSYS_UNCONNECTED__44, SYNOPSYS_UNCONNECTED__45, 
        SYNOPSYS_UNCONNECTED__46, SYNOPSYS_UNCONNECTED__47, 
        SYNOPSYS_UNCONNECTED__48, SYNOPSYS_UNCONNECTED__49, 
        SYNOPSYS_UNCONNECTED__50, SYNOPSYS_UNCONNECTED__51}), 
        .result_fraction({normalized_fraction, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0}), .exponent_adjust({exponent_adjust[2], 
        exponent_adjust[2], exponent_adjust[0]}), .result({result[31:8], 
        SYNOPSYS_UNCONNECTED__52, SYNOPSYS_UNCONNECTED__53, 
        SYNOPSYS_UNCONNECTED__54, SYNOPSYS_UNCONNECTED__55, 
        SYNOPSYS_UNCONNECTED__56, SYNOPSYS_UNCONNECTED__57, 
        SYNOPSYS_UNCONNECTED__58, SYNOPSYS_UNCONNECTED__59}) );
  oadm_fixed_div_specialized_3_16_16_8_e3_b6_95_7c_69_5a_4e_44_DW_mult_uns_0_DW_mult_uns_1 mult_121 ( 
        .a(plane_full), .b(coefficient), .product({SYNOPSYS_UNCONNECTED__60, 
        reduced_scale_product}) );
  ND2D1 U3 ( .A1(n4), .A2(n21), .ZN(exponent_adjust[2]) );
  INVD1 U4 ( .I(reduced_scale_product[10]), .ZN(n9) );
  INVD1 U5 ( .I(reduced_scale_product[9]), .ZN(n10) );
  INVD1 U6 ( .I(reduced_scale_product[8]), .ZN(n11) );
  INVD1 U7 ( .I(exponent_adjust[0]), .ZN(n4) );
  ND2D1 U8 ( .A1(n5), .A2(n3), .ZN(n21) );
  INVD1 U9 ( .I(reduced_scale_product[14]), .ZN(n5) );
  OAI222D0 U10 ( .A1(n4), .A2(n6), .B1(n21), .B2(n7), .C1(n5), .C2(n3), .ZN(
        normalized_fraction[22]) );
  OAI222D0 U11 ( .A1(n4), .A2(n17), .B1(n18), .B2(n21), .C1(n3), .C2(n16), 
        .ZN(normalized_fraction[11]) );
  OAI222D0 U12 ( .A1(n4), .A2(n16), .B1(n21), .B2(n17), .C1(n3), .C2(n15), 
        .ZN(normalized_fraction[12]) );
  OAI222D0 U13 ( .A1(n4), .A2(n15), .B1(n21), .B2(n16), .C1(n3), .C2(n14), 
        .ZN(normalized_fraction[13]) );
  OAI222D0 U14 ( .A1(n4), .A2(n14), .B1(n21), .B2(n15), .C1(n3), .C2(n13), 
        .ZN(normalized_fraction[14]) );
  OAI222D0 U15 ( .A1(n4), .A2(n13), .B1(n21), .B2(n14), .C1(n3), .C2(n12), 
        .ZN(normalized_fraction[15]) );
  OAI222D0 U16 ( .A1(n4), .A2(n12), .B1(n21), .B2(n13), .C1(n3), .C2(n11), 
        .ZN(normalized_fraction[16]) );
  OAI222D0 U17 ( .A1(n4), .A2(n11), .B1(n21), .B2(n12), .C1(n3), .C2(n10), 
        .ZN(normalized_fraction[17]) );
  OAI222D0 U18 ( .A1(n4), .A2(n10), .B1(n21), .B2(n11), .C1(n3), .C2(n9), .ZN(
        normalized_fraction[18]) );
  OAI222D0 U19 ( .A1(n4), .A2(n9), .B1(n21), .B2(n10), .C1(n3), .C2(n8), .ZN(
        normalized_fraction[19]) );
  OAI222D0 U20 ( .A1(n4), .A2(n8), .B1(n21), .B2(n9), .C1(n3), .C2(n7), .ZN(
        normalized_fraction[20]) );
  OAI222D0 U21 ( .A1(n4), .A2(n7), .B1(n21), .B2(n8), .C1(n3), .C2(n6), .ZN(
        normalized_fraction[21]) );
  INVD1 U22 ( .I(reduced_scale_product[13]), .ZN(n6) );
  INVD1 U23 ( .I(reduced_scale_product[12]), .ZN(n7) );
  INVD1 U24 ( .I(reduced_scale_product[11]), .ZN(n8) );
  INVD1 U25 ( .I(reduced_scale_product[7]), .ZN(n12) );
  INVD1 U26 ( .I(reduced_scale_product[6]), .ZN(n13) );
  INVD1 U28 ( .I(reduced_scale_product[5]), .ZN(n14) );
  INVD1 U29 ( .I(reduced_scale_product[4]), .ZN(n15) );
  INVD1 U30 ( .I(reduced_scale_product[3]), .ZN(n16) );
  NR2D1 U32 ( .A1(n5), .A2(reduced_scale_product[15]), .ZN(exponent_adjust[0])
         );
  INVD1 U33 ( .I(reduced_scale_product[15]), .ZN(n3) );
  OAI222D0 U34 ( .A1(n4), .A2(n18), .B1(n19), .B2(n21), .C1(n3), .C2(n17), 
        .ZN(normalized_fraction[10]) );
  OAI22D1 U35 ( .A1(n3), .A2(n18), .B1(n4), .B2(n19), .ZN(
        normalized_fraction[9]) );
  NR2D1 U36 ( .A1(n19), .A2(n3), .ZN(normalized_fraction[8]) );
  INVD1 U37 ( .I(reduced_scale_product[2]), .ZN(n17) );
  INVD1 U38 ( .I(reduced_scale_product[1]), .ZN(n18) );
  INVD1 U39 ( .I(reduced_scale_product[0]), .ZN(n19) );
  ND3D1 U40 ( .A1(n30), .A2(n25), .A3(n28), .ZN(coefficient[2]) );
  ND3D1 U41 ( .A1(n30), .A2(n29), .A3(n22), .ZN(coefficient[1]) );
  ND4D1 U42 ( .A1(n30), .A2(n29), .A3(n26), .A4(n27), .ZN(coefficient[3]) );
  ND3D1 U43 ( .A1(n32), .A2(n20), .A3(y_mantissa[22]), .ZN(n26) );
  ND2D1 U44 ( .A1(n28), .A2(n29), .ZN(coefficient[4]) );
  ND3D1 U45 ( .A1(n26), .A2(n27), .A3(n22), .ZN(coefficient[5]) );
  ND3D1 U46 ( .A1(n23), .A2(n24), .A3(n26), .ZN(coefficient[0]) );
  IND3D1 U47 ( .A1(coefficient[3]), .B1(n24), .B2(n25), .ZN(coefficient[6]) );
  ND2D1 U48 ( .A1(n22), .A2(n23), .ZN(coefficient[7]) );
  ND3D1 U50 ( .A1(n32), .A2(n2), .A3(y_mantissa[21]), .ZN(n23) );
  INVD1 U51 ( .I(y_mantissa[20]), .ZN(n32) );
  ND3D1 U52 ( .A1(y_mantissa[21]), .A2(n2), .A3(y_mantissa[20]), .ZN(n27) );
  INVD1 U53 ( .I(y_mantissa[21]), .ZN(n20) );
  ND3D1 U54 ( .A1(n20), .A2(n2), .A3(y_mantissa[20]), .ZN(n31) );
  ND3D1 U55 ( .A1(n20), .A2(n2), .A3(n32), .ZN(n24) );
  ND3D1 U56 ( .A1(y_mantissa[20]), .A2(n20), .A3(y_mantissa[22]), .ZN(n29) );
  ND3D1 U57 ( .A1(y_mantissa[21]), .A2(n32), .A3(y_mantissa[22]), .ZN(n30) );
  ND2D1 U58 ( .A1(y_mantissa[20]), .A2(y_mantissa[21]), .ZN(n25) );
  CKND0 U49 ( .I(y_mantissa[22]), .ZN(n2) );
endmodule


module oadm_fixed_l3_div_specialized ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;

  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7;

  oadm_fixed_div_specialized_3_16_16_8_e3_b6_95_7c_69_5a_4e_44 implementation ( 
        .x({x[31:16], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y({y[31:16], 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .result({result[31:8], SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7}) );
endmodule


module input_l3_control_b23 ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;

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

  oadm_fixed_l3_div_specialized dut ( .x({x[31:16], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y({y[31:16], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .result({result[31:8], 
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7}) );
endmodule

