/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Thu Sep  3 12:51:46 2026
/////////////////////////////////////////////////////////////


module oadm_runtime_plane_pruned_RESIDUAL_DROP16_DW_mult_uns_0 ( a, b, product
 );
  input [5:0] a;
  input [5:0] b;
  output [11:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n13, n15, n16, n20, n21, n23, n26,
         n27, n28, n30, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n57, n58, n63, n64, n65, n69, n70, n71, n118, n119, n120, n121, n125,
         n126, n127, n128, n129, n131, n132, n133, n141, n142, n143, n144,
         n149, n150, n151, n152, n153, n155, n156, n157, n158, n159, n160,
         n165, n166, n167, n168, n170;

  FA1D0 U3 ( .A(n15), .B(n13), .CI(n3), .CO(n2), .S(product[8]) );
  FA1D0 U4 ( .A(n20), .B(n16), .CI(n4), .CO(n3), .S(product[7]) );
  FA1D0 U5 ( .A(n21), .B(n27), .CI(n5), .CO(n4), .S(product[6]) );
  FA1D0 U6 ( .A(n28), .B(n34), .CI(n6), .CO(n5), .S(product[5]) );
  FA1D0 U7 ( .A(n35), .B(n38), .CI(n7), .CO(n6), .S(product[4]) );
  FA1D0 U8 ( .A(n39), .B(n41), .CI(n8), .CO(n7), .S(product[3]) );
  FA1D0 U9 ( .A(n9), .B(a[2]), .CI(n43), .CO(n8), .S(product[2]) );
  HA1D0 U10 ( .A(b[1]), .B(a[1]), .CO(n9), .S(product[1]) );
  CMPE42D1 U18 ( .A(n36), .B(a[1]), .C(b[1]), .CIX(n30), .D(n33), .CO(n27), 
        .COX(n26), .S(n28) );
  FA1D0 U23 ( .A(n70), .B(b[3]), .CI(n42), .CO(n38), .S(n39) );
  HA1D0 U24 ( .A(a[3]), .B(n65), .CO(n40), .S(n41) );
  HA1D0 U25 ( .A(n71), .B(b[2]), .CO(n42), .S(n43) );
  XNR2D1 U75 ( .A1(n13), .A2(n2), .ZN(product[9]) );
  INVD1 U79 ( .I(n152), .ZN(n126) );
  AN2XD1 U81 ( .A1(n58), .A2(n63), .Z(n118) );
  OR2XD1 U83 ( .A1(b[2]), .A2(n125), .Z(n119) );
  ND2D1 U84 ( .A1(b[2]), .A2(n26), .ZN(n153) );
  INVD1 U85 ( .I(n26), .ZN(n125) );
  IND2D1 U88 ( .A1(b[2]), .B1(n23), .ZN(n151) );
  ND2D1 U89 ( .A1(n118), .A2(b[2]), .ZN(n152) );
  ND2D1 U90 ( .A1(b[2]), .A2(n23), .ZN(n150) );
  AN2XD1 U91 ( .A1(a[2]), .A2(n57), .Z(n120) );
  OR2XD1 U93 ( .A1(a[3]), .A2(n152), .Z(n121) );
  ND2D1 U94 ( .A1(a[3]), .A2(n126), .ZN(n144) );
  ND2D1 U95 ( .A1(a[3]), .A2(b[3]), .ZN(n142) );
  IND2D1 U96 ( .A1(a[3]), .B1(b[3]), .ZN(n143) );
  MUX2ND0 U110 ( .I0(n142), .I1(n143), .S(n120), .ZN(n141) );
  MUX2ND0 U114 ( .I0(n150), .I1(n151), .S(n118), .ZN(n149) );
  CKXOR2D1 U118 ( .A1(n57), .A2(a[2]), .Z(n23) );
  CKXOR2D1 U119 ( .A1(n63), .A2(n58), .Z(n30) );
  NR2D0 U125 ( .A1(n133), .A2(n129), .ZN(n71) );
  NR2D0 U126 ( .A1(n132), .A2(n129), .ZN(n70) );
  NR2D0 U130 ( .A1(n133), .A2(n128), .ZN(n65) );
  NR2D0 U131 ( .A1(n132), .A2(n128), .ZN(n64) );
  NR2D0 U132 ( .A1(n131), .A2(n128), .ZN(n63) );
  NR2D0 U136 ( .A1(n132), .A2(n127), .ZN(n58) );
  NR2D0 U137 ( .A1(n131), .A2(n127), .ZN(n57) );
  AO211D0 U76 ( .A1(n157), .A2(b[3]), .B(n141), .C(n155), .Z(n15) );
  MUX2ND0 U77 ( .I0(n144), .I1(n121), .S(n120), .ZN(n155) );
  AO211D0 U78 ( .A1(n26), .A2(n23), .B(n149), .C(n156), .Z(n20) );
  MUX2ND0 U80 ( .I0(n153), .I1(n119), .S(n118), .ZN(n156) );
  CKND0 U82 ( .I(n152), .ZN(n157) );
  XOR4D0 U86 ( .A1(n120), .A2(a[3]), .A3(b[3]), .A4(n126), .Z(n16) );
  XOR4D0 U87 ( .A1(n23), .A2(b[2]), .A3(n118), .A4(n26), .Z(n21) );
  CKND0 U92 ( .I(n36), .ZN(n158) );
  AOI21D0 U97 ( .A1(n158), .A2(n40), .B(n165), .ZN(n159) );
  CKND2D0 U98 ( .A1(a[3]), .A2(n120), .ZN(n13) );
  CKND2D0 U99 ( .A1(n160), .A2(n159), .ZN(n34) );
  OR2D0 U100 ( .A1(n64), .A2(n69), .Z(n33) );
  CKND0 U101 ( .I(b[3]), .ZN(n131) );
  CKND0 U102 ( .I(a[3]), .ZN(n127) );
  XNR4D0 U103 ( .A1(n64), .A2(n40), .A3(n37), .A4(n69), .ZN(n35) );
  NR2D0 U104 ( .A1(n131), .A2(n129), .ZN(n69) );
  CKND0 U105 ( .I(b[2]), .ZN(n132) );
  AN2D0 U106 ( .A1(n69), .A2(n37), .Z(n170) );
  NR2D0 U107 ( .A1(n69), .A2(n36), .ZN(n168) );
  CKND0 U108 ( .I(a[1]), .ZN(n129) );
  CKND0 U109 ( .I(a[2]), .ZN(n128) );
  CKND0 U111 ( .I(n36), .ZN(n37) );
  IND2D0 U112 ( .A1(n69), .B1(n40), .ZN(n166) );
  CKND0 U113 ( .I(b[1]), .ZN(n133) );
  CKND2D0 U115 ( .A1(n40), .A2(n69), .ZN(n167) );
  NR2D0 U116 ( .A1(n133), .A2(n127), .ZN(n36) );
  MUX2ND0 U117 ( .I0(n166), .I1(n167), .S(n64), .ZN(n165) );
  MUX2ND0 U120 ( .I0(n168), .I1(n170), .S(n64), .ZN(n160) );
endmodule


module oadm_runtime_plane_pruned_RESIDUAL_DROP16_DW_mult_tc_1 ( a, b, product
 );
  input [6:0] a;
  input [5:0] b;
  output [12:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n14, n15, n16, n17,
         n18, n20, n21, n22, n23, n25, n26, n27, n28, n29, n31, n32, n33, n34,
         n35, n37, n38, n40, n41, n43, n45, n46, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n136, n137, n138, n139, n140, n141,
         n142, n144, n145, n146, n147, n155, n156, n157, n158, n159, n160,
         n161, n162, n164, n165, n166, n167, n169;

  FA1D0 U2 ( .A(n141), .B(n12), .CI(n2), .CO(n1), .S(product[11]) );
  FA1D0 U3 ( .A(n14), .B(n139), .CI(n3), .CO(n2), .S(product[10]) );
  FA1D0 U4 ( .A(n16), .B(n15), .CI(n4), .CO(n3), .S(product[9]) );
  FA1D0 U5 ( .A(n20), .B(n17), .CI(n5), .CO(n4), .S(product[8]) );
  FA1D0 U6 ( .A(n136), .B(n21), .CI(n6), .CO(n5), .S(product[7]) );
  FA1D0 U7 ( .A(n25), .B(n28), .CI(n7), .CO(n6), .S(product[6]) );
  FA1D0 U8 ( .A(n29), .B(n32), .CI(n8), .CO(n7), .S(product[5]) );
  FA1D0 U9 ( .A(n33), .B(n34), .CI(n9), .CO(n8), .S(product[4]) );
  FA1D0 U10 ( .A(n35), .B(n37), .CI(n10), .CO(n9), .S(product[3]) );
  FA1D0 U11 ( .A(n58), .B(n52), .CI(n11), .CO(n10), .S(product[2]) );
  HA1D0 U12 ( .A(n59), .B(n38), .CO(n11), .S(product[1]) );
  FA1D0 U14 ( .A(n40), .B(n18), .CI(n46), .CO(n14), .S(n15) );
  FA1D0 U15 ( .A(n137), .B(n41), .CI(n22), .CO(n16), .S(n17) );
  FA1D0 U17 ( .A(n26), .B(n53), .CI(n23), .CO(n20), .S(n21) );
  HA1D0 U21 ( .A(n43), .B(n54), .CO(n26), .S(n27) );
  FA1D0 U22 ( .A(n49), .B(n55), .CI(n31), .CO(n28), .S(n29) );
  FA1D0 U24 ( .A(n56), .B(n45), .CI(n50), .CO(n32), .S(n33) );
  HA1D0 U25 ( .A(n51), .B(n57), .CO(n34), .S(n35) );
  INVD1 U101 ( .I(n12), .ZN(n139) );
  AN2XD1 U102 ( .A1(n48), .A2(n27), .Z(n136) );
  INVD1 U104 ( .I(a[4]), .ZN(n142) );
  INVD1 U106 ( .I(b[3]), .ZN(n138) );
  INVD1 U107 ( .I(n18), .ZN(n137) );
  INVD1 U109 ( .I(a[3]), .ZN(n144) );
  INVD1 U110 ( .I(a[5]), .ZN(n140) );
  INVD1 U111 ( .I(a[0]), .ZN(n147) );
  INVD1 U113 ( .I(a[1]), .ZN(n146) );
  INVD1 U114 ( .I(a[2]), .ZN(n145) );
  CKXOR2D1 U115 ( .A1(n27), .A2(n48), .Z(n25) );
  CKND0 U116 ( .I(n1), .ZN(product[12]) );
  NR2D0 U131 ( .A1(n155), .A2(n147), .ZN(n52) );
  OAI22D0 U132 ( .A1(n156), .A2(n157), .B1(n155), .B2(n158), .ZN(n51) );
  CKXOR2D0 U133 ( .A1(b[3]), .A2(n147), .Z(n156) );
  OAI22D0 U134 ( .A1(n158), .A2(n157), .B1(n155), .B2(n159), .ZN(n50) );
  CKXOR2D0 U135 ( .A1(b[3]), .A2(n146), .Z(n158) );
  OAI22D0 U136 ( .A1(n159), .A2(n157), .B1(n155), .B2(n160), .ZN(n49) );
  CKXOR2D0 U137 ( .A1(b[3]), .A2(n145), .Z(n159) );
  OAI22D0 U138 ( .A1(n160), .A2(n157), .B1(n155), .B2(n161), .ZN(n48) );
  CKXOR2D0 U139 ( .A1(b[3]), .A2(n144), .Z(n160) );
  AO21D0 U140 ( .A1(n157), .A2(n155), .B(n162), .Z(n46) );
  NR2D0 U141 ( .A1(b[3]), .A2(n147), .ZN(n45) );
  OAI22D0 U142 ( .A1(n147), .A2(n164), .B1(b[3]), .B2(n146), .ZN(n31) );
  OAI22D0 U143 ( .A1(n146), .A2(n164), .B1(b[3]), .B2(n145), .ZN(n43) );
  OAI22D0 U144 ( .A1(n144), .A2(n164), .B1(b[3]), .B2(n142), .ZN(n41) );
  OAI22D0 U145 ( .A1(n142), .A2(n164), .B1(b[3]), .B2(n140), .ZN(n40) );
  OAI32D0 U149 ( .A1(n138), .A2(a[0]), .A3(n155), .B1(n138), .B2(n157), .ZN(
        n37) );
  XNR2D0 U150 ( .A1(n165), .A2(n166), .ZN(n23) );
  CKND2D0 U151 ( .A1(n166), .A2(n165), .ZN(n22) );
  OA22D0 U152 ( .A1(n145), .A2(n164), .B1(b[3]), .B2(n144), .Z(n165) );
  OA22D0 U153 ( .A1(n161), .A2(n157), .B1(n155), .B2(n167), .Z(n166) );
  CKXOR2D0 U154 ( .A1(b[3]), .A2(n142), .Z(n161) );
  OAI22D0 U155 ( .A1(n155), .A2(n162), .B1(n167), .B2(n157), .ZN(n18) );
  CKXOR2D0 U158 ( .A1(b[3]), .A2(n140), .Z(n167) );
  CKXOR2D0 U159 ( .A1(n138), .A2(a[6]), .Z(n162) );
  OAI22D0 U160 ( .A1(b[3]), .A2(n141), .B1(n140), .B2(n164), .ZN(n12) );
  CKND0 U103 ( .I(b[3]), .ZN(n164) );
  CKND0 U105 ( .I(a[6]), .ZN(n141) );
  OAI211D0 U108 ( .A1(b[2]), .A2(b[3]), .B(n169), .C(n155), .ZN(n157) );
  XNR2D0 U112 ( .A1(b[2]), .A2(b[1]), .ZN(n155) );
  CKND2D0 U117 ( .A1(b[2]), .A2(b[3]), .ZN(n169) );
  CKND0 U118 ( .I(n53), .ZN(n54) );
  XNR2D0 U119 ( .A1(b[1]), .A2(a[6]), .ZN(n53) );
  XNR2D0 U120 ( .A1(b[1]), .A2(n140), .ZN(n55) );
  XNR2D0 U121 ( .A1(b[1]), .A2(n142), .ZN(n56) );
  XNR2D0 U122 ( .A1(b[1]), .A2(n145), .ZN(n58) );
  CKND0 U123 ( .I(n147), .ZN(product[0]) );
  XNR2D0 U124 ( .A1(b[1]), .A2(n144), .ZN(n57) );
  AN2D0 U125 ( .A1(n147), .A2(b[1]), .Z(n38) );
  XNR2D0 U126 ( .A1(b[1]), .A2(n146), .ZN(n59) );
endmodule


module oadm_runtime_plane_pruned_RESIDUAL_DROP16_DW_mult_tc_0 ( a, b, product
 );
  input [6:0] a;
  input [5:0] b;
  output [12:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n14, n15, n16, n17,
         n18, n20, n21, n22, n23, n25, n26, n27, n28, n29, n31, n32, n33, n34,
         n35, n37, n38, n40, n41, n43, n45, n46, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n136, n137, n138, n139, n140, n141,
         n142, n144, n145, n146, n147, n155, n156, n157, n158, n159, n160,
         n161, n162, n164, n165, n166, n167, n169;

  FA1D0 U2 ( .A(n141), .B(n12), .CI(n2), .CO(n1), .S(product[11]) );
  FA1D0 U3 ( .A(n14), .B(n139), .CI(n3), .CO(n2), .S(product[10]) );
  FA1D0 U4 ( .A(n16), .B(n15), .CI(n4), .CO(n3), .S(product[9]) );
  FA1D0 U5 ( .A(n20), .B(n17), .CI(n5), .CO(n4), .S(product[8]) );
  FA1D0 U6 ( .A(n136), .B(n21), .CI(n6), .CO(n5), .S(product[7]) );
  FA1D0 U7 ( .A(n25), .B(n28), .CI(n7), .CO(n6), .S(product[6]) );
  FA1D0 U8 ( .A(n29), .B(n32), .CI(n8), .CO(n7), .S(product[5]) );
  FA1D0 U9 ( .A(n33), .B(n34), .CI(n9), .CO(n8), .S(product[4]) );
  FA1D0 U10 ( .A(n35), .B(n37), .CI(n10), .CO(n9), .S(product[3]) );
  FA1D0 U11 ( .A(n58), .B(n52), .CI(n11), .CO(n10), .S(product[2]) );
  HA1D0 U12 ( .A(n59), .B(n38), .CO(n11), .S(product[1]) );
  FA1D0 U14 ( .A(n40), .B(n18), .CI(n46), .CO(n14), .S(n15) );
  FA1D0 U15 ( .A(n137), .B(n41), .CI(n22), .CO(n16), .S(n17) );
  FA1D0 U17 ( .A(n26), .B(n53), .CI(n23), .CO(n20), .S(n21) );
  HA1D0 U21 ( .A(n43), .B(n54), .CO(n26), .S(n27) );
  FA1D0 U22 ( .A(n49), .B(n55), .CI(n31), .CO(n28), .S(n29) );
  FA1D0 U24 ( .A(n56), .B(n45), .CI(n50), .CO(n32), .S(n33) );
  HA1D0 U25 ( .A(n51), .B(n57), .CO(n34), .S(n35) );
  INVD1 U101 ( .I(n12), .ZN(n139) );
  AN2XD1 U103 ( .A1(n48), .A2(n27), .Z(n136) );
  INVD1 U105 ( .I(a[4]), .ZN(n142) );
  INVD1 U106 ( .I(b[3]), .ZN(n138) );
  INVD1 U107 ( .I(n18), .ZN(n137) );
  INVD1 U109 ( .I(a[3]), .ZN(n144) );
  INVD1 U110 ( .I(a[5]), .ZN(n140) );
  INVD1 U111 ( .I(a[0]), .ZN(n147) );
  INVD1 U113 ( .I(a[1]), .ZN(n146) );
  INVD1 U114 ( .I(a[2]), .ZN(n145) );
  CKXOR2D1 U115 ( .A1(n27), .A2(n48), .Z(n25) );
  CKND0 U116 ( .I(n1), .ZN(product[12]) );
  NR2D0 U131 ( .A1(n155), .A2(n147), .ZN(n52) );
  OAI22D0 U132 ( .A1(n156), .A2(n157), .B1(n155), .B2(n158), .ZN(n51) );
  CKXOR2D0 U133 ( .A1(b[3]), .A2(n147), .Z(n156) );
  OAI22D0 U134 ( .A1(n158), .A2(n157), .B1(n155), .B2(n159), .ZN(n50) );
  CKXOR2D0 U135 ( .A1(b[3]), .A2(n146), .Z(n158) );
  OAI22D0 U136 ( .A1(n159), .A2(n157), .B1(n155), .B2(n160), .ZN(n49) );
  CKXOR2D0 U137 ( .A1(b[3]), .A2(n145), .Z(n159) );
  OAI22D0 U138 ( .A1(n160), .A2(n157), .B1(n155), .B2(n161), .ZN(n48) );
  CKXOR2D0 U139 ( .A1(b[3]), .A2(n144), .Z(n160) );
  AO21D0 U140 ( .A1(n157), .A2(n155), .B(n162), .Z(n46) );
  NR2D0 U141 ( .A1(b[3]), .A2(n147), .ZN(n45) );
  OAI22D0 U142 ( .A1(n147), .A2(n164), .B1(b[3]), .B2(n146), .ZN(n31) );
  OAI22D0 U143 ( .A1(n146), .A2(n164), .B1(b[3]), .B2(n145), .ZN(n43) );
  OAI22D0 U144 ( .A1(n144), .A2(n164), .B1(b[3]), .B2(n142), .ZN(n41) );
  OAI22D0 U145 ( .A1(n142), .A2(n164), .B1(b[3]), .B2(n140), .ZN(n40) );
  OAI32D0 U149 ( .A1(n138), .A2(a[0]), .A3(n155), .B1(n138), .B2(n157), .ZN(
        n37) );
  XNR2D0 U150 ( .A1(n165), .A2(n166), .ZN(n23) );
  CKND2D0 U151 ( .A1(n166), .A2(n165), .ZN(n22) );
  OA22D0 U152 ( .A1(n145), .A2(n164), .B1(b[3]), .B2(n144), .Z(n165) );
  OA22D0 U153 ( .A1(n161), .A2(n157), .B1(n155), .B2(n167), .Z(n166) );
  CKXOR2D0 U154 ( .A1(b[3]), .A2(n142), .Z(n161) );
  OAI22D0 U155 ( .A1(n155), .A2(n162), .B1(n167), .B2(n157), .ZN(n18) );
  CKXOR2D0 U158 ( .A1(b[3]), .A2(n140), .Z(n167) );
  CKXOR2D0 U159 ( .A1(n138), .A2(a[6]), .Z(n162) );
  OAI22D0 U160 ( .A1(b[3]), .A2(n141), .B1(n140), .B2(n164), .ZN(n12) );
  CKND0 U102 ( .I(b[3]), .ZN(n164) );
  CKND0 U104 ( .I(a[6]), .ZN(n141) );
  OAI211D0 U108 ( .A1(b[2]), .A2(b[3]), .B(n169), .C(n155), .ZN(n157) );
  XNR2D0 U112 ( .A1(b[2]), .A2(b[1]), .ZN(n155) );
  CKND2D0 U117 ( .A1(b[2]), .A2(b[3]), .ZN(n169) );
  CKND0 U118 ( .I(n53), .ZN(n54) );
  XNR2D0 U119 ( .A1(b[1]), .A2(a[6]), .ZN(n53) );
  XNR2D0 U120 ( .A1(b[1]), .A2(n140), .ZN(n55) );
  XNR2D0 U121 ( .A1(b[1]), .A2(n142), .ZN(n56) );
  XNR2D0 U122 ( .A1(b[1]), .A2(n145), .ZN(n58) );
  XNR2D0 U123 ( .A1(b[1]), .A2(n144), .ZN(n57) );
  AN2D0 U124 ( .A1(n147), .A2(b[1]), .Z(n38) );
  INVD0 U125 ( .I(n147), .ZN(product[0]) );
  XNR2D0 U126 ( .A1(b[1]), .A2(n146), .ZN(n59) );
endmodule


module oadm_runtime_plane_pruned_RESIDUAL_DROP16 ( x_mantissa, y_mantissa, 
        level, divide_mode, plane_exact );
  input [23:0] x_mantissa;
  input [23:0] y_mantissa;
  input [1:0] level;
  output [28:0] plane_exact;
  input divide_mode;
  wire   x_residual_19_, y_residual_19_, N83, N82, N81, N80, N79, N78, N77,
         N76, N75, N74, N73, N72, N71, n15, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n40, n42, n43;
  wire   [12:4] x_product;
  wire   [12:0] y_product;
  wire   [9:1] midpoint_product;
  wire   [24:13] sub_0_root_sub_73_carry;
  wire   [24:17] r418_carry;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2;

  oadm_runtime_plane_pruned_RESIDUAL_DROP16_DW_mult_uns_0 mult_69 ( .a({n43, 
        1'b1, x_mantissa[22:20], 1'b1}), .b({n43, 1'b1, y_mantissa[22:20], 
        1'b1}), .product({SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        midpoint_product, SYNOPSYS_UNCONNECTED__2}) );
  oadm_runtime_plane_pruned_RESIDUAL_DROP16_DW_mult_tc_1 mult_60 ( .a({n42, 
        n42, n42, y_residual_19_, y_mantissa[18:16]}), .b({n43, 1'b1, 
        x_mantissa[22:20], 1'b1}), .product(y_product) );
  oadm_runtime_plane_pruned_RESIDUAL_DROP16_DW_mult_tc_0 mult_58 ( .a({n40, 
        n40, n40, x_residual_19_, x_mantissa[18:16]}), .b({n43, 1'b1, 
        y_mantissa[22:20], 1'b1}), .product({x_product, n15, N73, N72, N71})
         );
  FA1D0 U17 ( .A(midpoint_product[9]), .B(x_product[12]), .CI(r418_carry[24]), 
        .S(N83) );
  FA1D0 U22 ( .A(N83), .B(n32), .CI(sub_0_root_sub_73_carry[24]), .S(
        plane_exact[24]) );
  INVD1 U23 ( .I(y_product[12]), .ZN(n32) );
  FA1D0 U31 ( .A(midpoint_product[8]), .B(x_product[11]), .CI(r418_carry[23]), 
        .CO(r418_carry[24]), .S(N82) );
  FA1D0 U33 ( .A(N82), .B(n31), .CI(sub_0_root_sub_73_carry[23]), .CO(
        sub_0_root_sub_73_carry[24]), .S(plane_exact[23]) );
  INVD1 U34 ( .I(y_product[11]), .ZN(n31) );
  FA1D0 U35 ( .A(midpoint_product[7]), .B(x_product[10]), .CI(r418_carry[22]), 
        .CO(r418_carry[23]), .S(N81) );
  FA1D0 U36 ( .A(N81), .B(n30), .CI(sub_0_root_sub_73_carry[22]), .CO(
        sub_0_root_sub_73_carry[23]), .S(plane_exact[22]) );
  INVD1 U37 ( .I(y_product[10]), .ZN(n30) );
  FA1D0 U38 ( .A(midpoint_product[6]), .B(x_product[9]), .CI(r418_carry[21]), 
        .CO(r418_carry[22]), .S(N80) );
  FA1D0 U40 ( .A(N80), .B(n29), .CI(sub_0_root_sub_73_carry[21]), .CO(
        sub_0_root_sub_73_carry[22]), .S(plane_exact[21]) );
  INVD1 U41 ( .I(y_product[9]), .ZN(n29) );
  FA1D0 U42 ( .A(midpoint_product[5]), .B(x_product[8]), .CI(r418_carry[20]), 
        .CO(r418_carry[21]), .S(N79) );
  FA1D0 U44 ( .A(N79), .B(n28), .CI(sub_0_root_sub_73_carry[20]), .CO(
        sub_0_root_sub_73_carry[21]), .S(plane_exact[20]) );
  INVD1 U45 ( .I(y_product[8]), .ZN(n28) );
  FA1D0 U51 ( .A(midpoint_product[4]), .B(x_product[7]), .CI(r418_carry[19]), 
        .CO(r418_carry[20]), .S(N78) );
  FA1D0 U52 ( .A(N78), .B(n27), .CI(sub_0_root_sub_73_carry[19]), .CO(
        sub_0_root_sub_73_carry[20]), .S(plane_exact[19]) );
  INVD1 U53 ( .I(y_product[7]), .ZN(n27) );
  FA1D0 U56 ( .A(midpoint_product[3]), .B(x_product[6]), .CI(r418_carry[18]), 
        .CO(r418_carry[19]), .S(N77) );
  FA1D0 U57 ( .A(N77), .B(n26), .CI(sub_0_root_sub_73_carry[18]), .CO(
        sub_0_root_sub_73_carry[19]), .S(plane_exact[18]) );
  INVD1 U58 ( .I(y_product[6]), .ZN(n26) );
  FA1D0 U59 ( .A(midpoint_product[2]), .B(x_product[5]), .CI(r418_carry[17]), 
        .CO(r418_carry[18]), .S(N76) );
  FA1D0 U60 ( .A(N76), .B(n25), .CI(sub_0_root_sub_73_carry[17]), .CO(
        sub_0_root_sub_73_carry[18]), .S(plane_exact[17]) );
  INVD1 U61 ( .I(y_product[5]), .ZN(n25) );
  FA1D0 U62 ( .A(N75), .B(n24), .CI(sub_0_root_sub_73_carry[16]), .CO(
        sub_0_root_sub_73_carry[17]), .S(plane_exact[16]) );
  INVD1 U63 ( .I(y_product[4]), .ZN(n24) );
  FA1D0 U64 ( .A(N73), .B(n22), .CI(sub_0_root_sub_73_carry[14]), .CO(
        sub_0_root_sub_73_carry[15]) );
  INVD1 U65 ( .I(y_product[2]), .ZN(n22) );
  FA1D0 U72 ( .A(midpoint_product[1]), .B(x_product[4]), .CI(n15), .CO(
        r418_carry[17]), .S(N75) );
  FA1D0 U73 ( .A(N74), .B(n23), .CI(sub_0_root_sub_73_carry[15]), .CO(
        sub_0_root_sub_73_carry[16]) );
  INVD1 U74 ( .I(y_product[3]), .ZN(n23) );
  FA1D0 U77 ( .A(N72), .B(n21), .CI(sub_0_root_sub_73_carry[13]), .CO(
        sub_0_root_sub_73_carry[14]) );
  INVD1 U79 ( .I(y_product[1]), .ZN(n21) );
  INVD1 U90 ( .I(x_mantissa[19]), .ZN(n40) );
  INVD1 U94 ( .I(y_mantissa[19]), .ZN(n42) );
  TIEL U127 ( .ZN(n43) );
  IND2D0 U3 ( .A1(N71), .B1(y_product[0]), .ZN(sub_0_root_sub_73_carry[13]) );
  CKND0 U4 ( .I(n15), .ZN(N74) );
  INVD0 U5 ( .I(y_mantissa[19]), .ZN(y_residual_19_) );
  INVD0 U6 ( .I(x_mantissa[19]), .ZN(x_residual_19_) );
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
  fp32_normal_finite_wrapper_DW01_add_1_DW01_add_9 add_1_root_add_0_root_add_22_2 ( 
        .A(x[30:23]), .B({y[30], N17, N16, N15, N14, N13, N12, N11}), .CI(n79), 
        .SUM({N10, N9, N8, N7, N6, N5, N4, N3}) );
  AN2XD1 U3 ( .A1(exponent_adjust[0]), .A2(N3), .Z(n1) );
  CKBD1 U37 ( .I(result_fraction[10]), .Z(result[10]) );
  CKBD1 U38 ( .I(result_fraction[9]), .Z(result[9]) );
  CKBD1 U39 ( .I(result_fraction[8]), .Z(result[8]) );
  FA1D0 U40 ( .A(N4), .B(exponent_adjust[1]), .CI(n1), .CO(
        add_0_root_add_0_root_add_22_2_carry[2]), .S(result[24]) );
  FA1D0 U41 ( .A(N5), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[2]), .CO(
        add_0_root_add_0_root_add_22_2_carry[3]), .S(result[25]) );
  FA1D0 U42 ( .A(N6), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[3]), .CO(
        add_0_root_add_0_root_add_22_2_carry[4]), .S(result[26]) );
  FA1D0 U43 ( .A(N7), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[4]), .CO(
        add_0_root_add_0_root_add_22_2_carry[5]), .S(result[27]) );
  FA1D0 U44 ( .A(N8), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[5]), .CO(
        add_0_root_add_0_root_add_22_2_carry[6]), .S(result[28]) );
  FA1D0 U45 ( .A(N9), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[6]), .CO(
        add_0_root_add_0_root_add_22_2_carry[7]), .S(result[29]) );
  XOR3D1 U54 ( .A1(N10), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_22_2_carry[7]), .Z(result[30]) );
  CKBD1 U55 ( .I(y[20]), .Z(fraction_y[20]) );
  CKBD1 U56 ( .I(y[22]), .Z(fraction_y[22]) );
  CKBD1 U57 ( .I(y[21]), .Z(fraction_y[21]) );
  INVD1 U65 ( .I(y[29]), .ZN(N17) );
  INVD1 U66 ( .I(y[24]), .ZN(N12) );
  INVD1 U67 ( .I(y[25]), .ZN(N13) );
  INVD1 U68 ( .I(y[26]), .ZN(N14) );
  INVD1 U69 ( .I(y[27]), .ZN(N15) );
  INVD1 U70 ( .I(y[28]), .ZN(N16) );
  CKBD1 U87 ( .I(x[22]), .Z(fraction_x[22]) );
  CKBD1 U88 ( .I(x[21]), .Z(fraction_x[21]) );
  CKBD1 U89 ( .I(x[20]), .Z(fraction_x[20]) );
  CKBD1 U90 ( .I(x[19]), .Z(fraction_x[19]) );
  CKBD1 U91 ( .I(x[18]), .Z(fraction_x[18]) );
  CKBD1 U92 ( .I(x[17]), .Z(fraction_x[17]) );
  CKBD1 U93 ( .I(x[16]), .Z(fraction_x[16]) );
  CKBD1 U94 ( .I(y[19]), .Z(fraction_y[19]) );
  CKBD1 U95 ( .I(y[18]), .Z(fraction_y[18]) );
  CKBD1 U96 ( .I(y[17]), .Z(fraction_y[17]) );
  CKBD1 U97 ( .I(y[16]), .Z(fraction_y[16]) );
  CKBD1 U98 ( .I(result_fraction[22]), .Z(result[22]) );
  CKBD1 U99 ( .I(result_fraction[21]), .Z(result[21]) );
  CKBD1 U100 ( .I(result_fraction[20]), .Z(result[20]) );
  CKBD1 U101 ( .I(result_fraction[19]), .Z(result[19]) );
  CKBD1 U102 ( .I(result_fraction[18]), .Z(result[18]) );
  CKBD1 U103 ( .I(result_fraction[17]), .Z(result[17]) );
  CKBD1 U104 ( .I(result_fraction[16]), .Z(result[16]) );
  CKBD1 U105 ( .I(result_fraction[15]), .Z(result[15]) );
  CKBD1 U106 ( .I(result_fraction[14]), .Z(result[14]) );
  CKBD1 U107 ( .I(result_fraction[13]), .Z(result[13]) );
  CKBD1 U108 ( .I(result_fraction[12]), .Z(result[12]) );
  CKBD1 U109 ( .I(result_fraction[11]), .Z(result[11]) );
  TIEL U110 ( .ZN(n79) );
  CKXOR2D1 U111 ( .A1(exponent_adjust[0]), .A2(N3), .Z(result[23]) );
  CKND0 U119 ( .I(y[23]), .ZN(N11) );
endmodule



    module oadm_fixed_div_root_opt_3_16_16_8_e3_b6_95_7c_69_5a_4e_44_DW_mult_uns_0_DW_mult_uns_1 ( 
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
  INVD1 U139 ( .I(b[3]), .ZN(n232) );
  INVD1 U140 ( .I(b[2]), .ZN(n230) );
  INVD1 U141 ( .I(b[4]), .ZN(n231) );
  INVD1 U142 ( .I(b[1]), .ZN(n235) );
  INVD1 U143 ( .I(b[5]), .ZN(n234) );
  INVD1 U144 ( .I(b[0]), .ZN(n237) );
  INVD1 U145 ( .I(b[6]), .ZN(n233) );
  INVD1 U146 ( .I(b[7]), .ZN(n236) );
  INVD1 U147 ( .I(a[8]), .ZN(n221) );
  INVD1 U148 ( .I(a[7]), .ZN(n222) );
  INVD1 U149 ( .I(a[6]), .ZN(n223) );
  INVD1 U150 ( .I(a[5]), .ZN(n224) );
  INVD1 U151 ( .I(a[4]), .ZN(n225) );
  INVD1 U152 ( .I(a[3]), .ZN(n226) );
  INVD1 U153 ( .I(a[2]), .ZN(n227) );
  INVD1 U154 ( .I(a[1]), .ZN(n228) );
  INVD1 U155 ( .I(a[0]), .ZN(n229) );
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


module oadm_fixed_div_root_opt_3_16_16_8_e3_b6_95_7c_69_5a_4e_44 ( x, y, 
        result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n1, n2, n3, n4,
         n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20;
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
  oadm_runtime_plane_pruned_RESIDUAL_DROP16 plane ( .x_mantissa({1'b0, 
        x_mantissa, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y_mantissa({1'b0, y_mantissa, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .level({1'b0, 1'b0}), .divide_mode(1'b0), 
        .plane_exact({SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
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
  oadm_fixed_div_root_opt_3_16_16_8_e3_b6_95_7c_69_5a_4e_44_DW_mult_uns_0_DW_mult_uns_1 mult_219 ( 
        .a(plane_full), .b(coefficient), .product({SYNOPSYS_UNCONNECTED__60, 
        reduced_scale_product}) );
  ND2D1 U3 ( .A1(n2), .A2(n21), .ZN(exponent_adjust[2]) );
  INVD1 U4 ( .I(reduced_scale_product[10]), .ZN(n7) );
  INVD1 U5 ( .I(reduced_scale_product[9]), .ZN(n8) );
  INVD1 U6 ( .I(reduced_scale_product[8]), .ZN(n9) );
  INVD1 U7 ( .I(exponent_adjust[0]), .ZN(n2) );
  ND2D1 U8 ( .A1(n3), .A2(n1), .ZN(n21) );
  INVD1 U9 ( .I(reduced_scale_product[14]), .ZN(n3) );
  OAI222D0 U10 ( .A1(n2), .A2(n4), .B1(n21), .B2(n5), .C1(n3), .C2(n1), .ZN(
        normalized_fraction[22]) );
  OAI222D0 U11 ( .A1(n2), .A2(n15), .B1(n16), .B2(n21), .C1(n1), .C2(n14), 
        .ZN(normalized_fraction[11]) );
  OAI222D0 U12 ( .A1(n2), .A2(n14), .B1(n21), .B2(n15), .C1(n1), .C2(n13), 
        .ZN(normalized_fraction[12]) );
  OAI222D0 U13 ( .A1(n2), .A2(n13), .B1(n21), .B2(n14), .C1(n1), .C2(n12), 
        .ZN(normalized_fraction[13]) );
  OAI222D0 U14 ( .A1(n2), .A2(n12), .B1(n21), .B2(n13), .C1(n1), .C2(n11), 
        .ZN(normalized_fraction[14]) );
  OAI222D0 U15 ( .A1(n2), .A2(n11), .B1(n21), .B2(n12), .C1(n1), .C2(n10), 
        .ZN(normalized_fraction[15]) );
  OAI222D0 U16 ( .A1(n2), .A2(n10), .B1(n21), .B2(n11), .C1(n1), .C2(n9), .ZN(
        normalized_fraction[16]) );
  OAI222D0 U17 ( .A1(n2), .A2(n9), .B1(n21), .B2(n10), .C1(n1), .C2(n8), .ZN(
        normalized_fraction[17]) );
  OAI222D0 U18 ( .A1(n2), .A2(n8), .B1(n21), .B2(n9), .C1(n1), .C2(n7), .ZN(
        normalized_fraction[18]) );
  OAI222D0 U19 ( .A1(n2), .A2(n7), .B1(n21), .B2(n8), .C1(n1), .C2(n6), .ZN(
        normalized_fraction[19]) );
  OAI222D0 U20 ( .A1(n2), .A2(n6), .B1(n21), .B2(n7), .C1(n1), .C2(n5), .ZN(
        normalized_fraction[20]) );
  OAI222D0 U21 ( .A1(n2), .A2(n5), .B1(n21), .B2(n6), .C1(n1), .C2(n4), .ZN(
        normalized_fraction[21]) );
  INVD1 U22 ( .I(reduced_scale_product[13]), .ZN(n4) );
  INVD1 U23 ( .I(reduced_scale_product[12]), .ZN(n5) );
  INVD1 U24 ( .I(reduced_scale_product[11]), .ZN(n6) );
  INVD1 U25 ( .I(reduced_scale_product[7]), .ZN(n10) );
  INVD1 U26 ( .I(reduced_scale_product[6]), .ZN(n11) );
  INVD1 U28 ( .I(reduced_scale_product[5]), .ZN(n12) );
  INVD1 U29 ( .I(reduced_scale_product[4]), .ZN(n13) );
  INVD1 U30 ( .I(reduced_scale_product[3]), .ZN(n14) );
  NR2D1 U32 ( .A1(n3), .A2(reduced_scale_product[15]), .ZN(exponent_adjust[0])
         );
  INVD1 U33 ( .I(reduced_scale_product[15]), .ZN(n1) );
  OAI222D0 U34 ( .A1(n2), .A2(n16), .B1(n17), .B2(n21), .C1(n1), .C2(n15), 
        .ZN(normalized_fraction[10]) );
  OAI22D1 U35 ( .A1(n1), .A2(n16), .B1(n2), .B2(n17), .ZN(
        normalized_fraction[9]) );
  NR2D1 U36 ( .A1(n17), .A2(n1), .ZN(normalized_fraction[8]) );
  ND3D1 U37 ( .A1(n30), .A2(n25), .A3(n28), .ZN(coefficient[2]) );
  ND2D1 U38 ( .A1(n28), .A2(n29), .ZN(coefficient[4]) );
  ND3D1 U39 ( .A1(n19), .A2(n18), .A3(n20), .ZN(n24) );
  ND3D1 U40 ( .A1(n30), .A2(n29), .A3(n22), .ZN(coefficient[1]) );
  ND4D1 U41 ( .A1(n30), .A2(n29), .A3(n26), .A4(n27), .ZN(coefficient[3]) );
  ND3D1 U42 ( .A1(n26), .A2(n27), .A3(n22), .ZN(coefficient[5]) );
  ND3D1 U43 ( .A1(n23), .A2(n24), .A3(n26), .ZN(coefficient[0]) );
  IND3D1 U44 ( .A1(coefficient[3]), .B1(n24), .B2(n25), .ZN(coefficient[6]) );
  ND2D1 U45 ( .A1(n22), .A2(n23), .ZN(coefficient[7]) );
  INVD1 U46 ( .I(reduced_scale_product[2]), .ZN(n15) );
  INVD1 U47 ( .I(reduced_scale_product[1]), .ZN(n16) );
  ND3D1 U48 ( .A1(y_mantissa[21]), .A2(n18), .A3(y_mantissa[20]), .ZN(n27) );
  INVD1 U49 ( .I(y_mantissa[22]), .ZN(n18) );
  ND3D1 U50 ( .A1(n20), .A2(n18), .A3(y_mantissa[21]), .ZN(n23) );
  INVD1 U51 ( .I(y_mantissa[20]), .ZN(n20) );
  ND3D1 U52 ( .A1(n19), .A2(n18), .A3(y_mantissa[20]), .ZN(n31) );
  INVD1 U53 ( .I(y_mantissa[21]), .ZN(n19) );
  ND3D1 U54 ( .A1(n20), .A2(n19), .A3(y_mantissa[22]), .ZN(n26) );
  ND3D1 U55 ( .A1(y_mantissa[20]), .A2(n19), .A3(y_mantissa[22]), .ZN(n29) );
  ND3D1 U56 ( .A1(y_mantissa[21]), .A2(n20), .A3(y_mantissa[22]), .ZN(n30) );
  ND2D1 U57 ( .A1(y_mantissa[20]), .A2(y_mantissa[21]), .ZN(n25) );
  INVD1 U58 ( .I(reduced_scale_product[0]), .ZN(n17) );
endmodule


module oadm_fixed_l3_div_root_opt ( x, y, result );
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

  oadm_fixed_div_root_opt_3_16_16_8_e3_b6_95_7c_69_5a_4e_44 implementation ( 
        .x({x[31:16], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y({y[31:16], 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .result({result[31:8], SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7}) );
endmodule

