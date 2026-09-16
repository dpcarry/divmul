/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Tue Sep 15 21:56:37 2026
/////////////////////////////////////////////////////////////



    module oadm_fixed_div_specialized_plane_LEVEL2_RESIDUAL_DROP16_DW_mult_uns_0 ( 
        a, b, product );
  input [5:0] a;
  input [5:0] b;
  output [11:0] product;
  wire   n2, n3, n4, n5, n6, n7, n15, n16, n19, n20, n21, n27, n28, n29, n30,
         n34, n35, n57, n58, n63, n64, n118, n119, n120, n121, n122, n123,
         n125, n126, n127, n128, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144;

  FA1D0 U3 ( .A(n15), .B(n137), .CI(n3), .CO(n2), .S(product[8]) );
  FA1D0 U4 ( .A(n20), .B(n16), .CI(n4), .CO(n3), .S(product[7]) );
  FA1D0 U5 ( .A(n21), .B(n27), .CI(n5), .CO(n4), .S(product[6]) );
  FA1D0 U6 ( .A(n28), .B(n34), .CI(n6), .CO(n5), .S(product[5]) );
  XNR2D1 U76 ( .A1(n137), .A2(n2), .ZN(product[9]) );
  INVD1 U77 ( .I(b[3]), .ZN(n121) );
  INVD1 U78 ( .I(n19), .ZN(n123) );
  NR2D1 U79 ( .A1(a[3]), .A2(n123), .ZN(n136) );
  AN2XD1 U80 ( .A1(a[3]), .A2(n19), .Z(n118) );
  INVD1 U81 ( .I(n64), .ZN(n126) );
  XNR3D1 U85 ( .A1(n29), .A2(n128), .A3(n119), .ZN(n21) );
  IND2D1 U87 ( .A1(a[3]), .B1(b[3]), .ZN(n135) );
  ND2D1 U88 ( .A1(a[3]), .A2(b[3]), .ZN(n134) );
  ND2D1 U89 ( .A1(n120), .A2(a[3]), .ZN(n137) );
  ND3D1 U90 ( .A1(n138), .A2(n139), .A3(n119), .ZN(n20) );
  INVD1 U91 ( .I(a[3]), .ZN(n122) );
  INVD1 U92 ( .I(a[2]), .ZN(n127) );
  INVD1 U93 ( .I(b[2]), .ZN(n128) );
  XNR2D1 U94 ( .A1(n57), .A2(a[2]), .ZN(n119) );
  AN2XD1 U95 ( .A1(a[2]), .A2(n57), .Z(n120) );
  MUX2ND0 U97 ( .I0(n134), .I1(n135), .S(n120), .ZN(n133) );
  XNR2D1 U101 ( .A1(n125), .A2(n30), .ZN(n28) );
  AN2D0 U102 ( .A1(n7), .A2(n35), .Z(n6) );
  CKXOR2D0 U103 ( .A1(n7), .A2(n35), .Z(product[4]) );
  AN2D0 U104 ( .A1(a[2]), .A2(b[2]), .Z(n7) );
  CKXOR2D0 U105 ( .A1(a[2]), .A2(b[2]), .Z(product[3]) );
  INR2D0 U106 ( .A1(n29), .B1(n128), .ZN(n19) );
  NR2D0 U107 ( .A1(b[2]), .A2(n119), .ZN(n140) );
  NR2D0 U108 ( .A1(n119), .A2(n128), .ZN(n141) );
  MUX2ND0 U109 ( .I0(n141), .I1(n140), .S(n29), .ZN(n138) );
  MUX2ND0 U110 ( .I0(b[2]), .I1(n128), .S(n29), .ZN(n139) );
  XNR3D0 U112 ( .A1(a[3]), .A2(n126), .A3(b[3]), .ZN(n35) );
  MUX2ND0 U113 ( .I0(n142), .I1(n143), .S(b[3]), .ZN(n34) );
  CKND2D0 U114 ( .A1(a[3]), .A2(n126), .ZN(n143) );
  CKND2D0 U115 ( .A1(n64), .A2(a[3]), .ZN(n142) );
  AN2D0 U116 ( .A1(n63), .A2(n58), .Z(n29) );
  CKXOR2D0 U117 ( .A1(n63), .A2(n58), .Z(n30) );
  NR2D0 U118 ( .A1(n128), .A2(n127), .ZN(n64) );
  NR2D0 U119 ( .A1(n121), .A2(n127), .ZN(n63) );
  NR2D0 U120 ( .A1(n128), .A2(n122), .ZN(n58) );
  NR2D0 U121 ( .A1(n121), .A2(n122), .ZN(n57) );
  AO211D0 U75 ( .A1(n19), .A2(b[3]), .B(n133), .C(n144), .Z(n15) );
  MUX2D0 U82 ( .I0(n118), .I1(n136), .S(n120), .Z(n144) );
  XOR4D0 U83 ( .A1(n120), .A2(a[3]), .A3(b[3]), .A4(n19), .Z(n16) );
  INR2D0 U84 ( .A1(n30), .B1(n125), .ZN(n27) );
  CKND2D0 U86 ( .A1(n64), .A2(b[3]), .ZN(n125) );
endmodule


module oadm_fixed_div_specialized_plane_LEVEL2_RESIDUAL_DROP16_DW_mult_tc_1 ( 
        a, b, product );
  input [6:0] a;
  input [5:0] b;
  output [12:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n14, n15, n16, n17, n18, n20,
         n21, n22, n23, n25, n26, n27, n28, n29, n31, n32, n33, n34, n35, n37,
         n41, n43, n45, n46, n48, n49, n50, n51, n52, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154;

  FA1D0 U2 ( .A(n140), .B(a[4]), .CI(n2), .CO(n1), .S(product[11]) );
  FA1D0 U3 ( .A(n14), .B(n138), .CI(n3), .CO(n2), .S(product[10]) );
  FA1D0 U4 ( .A(n16), .B(n15), .CI(n4), .CO(n3), .S(product[9]) );
  FA1D0 U5 ( .A(n20), .B(n17), .CI(n5), .CO(n4), .S(product[8]) );
  FA1D0 U6 ( .A(n136), .B(n21), .CI(n6), .CO(n5), .S(product[7]) );
  FA1D0 U7 ( .A(n25), .B(n28), .CI(n7), .CO(n6), .S(product[6]) );
  FA1D0 U8 ( .A(n29), .B(n32), .CI(n8), .CO(n7), .S(product[5]) );
  FA1D0 U9 ( .A(n33), .B(n34), .CI(n9), .CO(n8), .S(product[4]) );
  FA1D0 U10 ( .A(n35), .B(n37), .CI(n10), .CO(n9), .S(product[3]) );
  FA1D0 U11 ( .A(n143), .B(n52), .CI(n144), .CO(n10), .S(product[2]) );
  FA1D0 U14 ( .A(a[4]), .B(n18), .CI(n46), .CO(n14), .S(n15) );
  FA1D0 U15 ( .A(n139), .B(n41), .CI(n22), .CO(n16), .S(n17) );
  FA1D0 U17 ( .A(n26), .B(a[4]), .CI(n23), .CO(n20), .S(n21) );
  HA1D0 U21 ( .A(n43), .B(n140), .CO(n26), .S(n27) );
  FA1D0 U22 ( .A(n49), .B(n140), .CI(n31), .CO(n28), .S(n29) );
  FA1D0 U24 ( .A(n141), .B(n45), .CI(n50), .CO(n32), .S(n33) );
  HA1D0 U25 ( .A(n51), .B(n142), .CO(n34), .S(n35) );
  AN2XD1 U101 ( .A1(n48), .A2(n27), .Z(n136) );
  INVD1 U102 ( .I(a[4]), .ZN(n138) );
  INVD1 U104 ( .I(a[0]), .ZN(n144) );
  INVD1 U105 ( .I(n18), .ZN(n139) );
  INVD1 U107 ( .I(a[1]), .ZN(n143) );
  INVD1 U108 ( .I(a[2]), .ZN(n142) );
  INVD1 U109 ( .I(a[3]), .ZN(n141) );
  CKXOR2D1 U110 ( .A1(n27), .A2(n48), .Z(n25) );
  CKND0 U111 ( .I(n144), .ZN(product[1]) );
  CKND0 U112 ( .I(n1), .ZN(product[12]) );
  NR2D0 U113 ( .A1(b[2]), .A2(n144), .ZN(n52) );
  OAI22D0 U114 ( .A1(n145), .A2(n146), .B1(b[2]), .B2(n147), .ZN(n51) );
  CKXOR2D0 U115 ( .A1(b[3]), .A2(n144), .Z(n145) );
  OAI22D0 U116 ( .A1(n147), .A2(n146), .B1(b[2]), .B2(n148), .ZN(n50) );
  CKXOR2D0 U117 ( .A1(b[3]), .A2(n143), .Z(n147) );
  OAI22D0 U118 ( .A1(n148), .A2(n146), .B1(b[2]), .B2(n149), .ZN(n49) );
  CKXOR2D0 U119 ( .A1(b[3]), .A2(n142), .Z(n148) );
  OAI22D0 U120 ( .A1(n149), .A2(n146), .B1(b[2]), .B2(n150), .ZN(n48) );
  CKXOR2D0 U121 ( .A1(b[3]), .A2(n141), .Z(n149) );
  AO21D0 U122 ( .A1(n146), .A2(b[2]), .B(n151), .Z(n46) );
  NR2D0 U123 ( .A1(b[3]), .A2(n144), .ZN(n45) );
  OAI22D0 U124 ( .A1(n144), .A2(n137), .B1(b[3]), .B2(n143), .ZN(n31) );
  OAI22D0 U125 ( .A1(n143), .A2(n137), .B1(b[3]), .B2(n142), .ZN(n43) );
  OAI22D0 U126 ( .A1(n141), .A2(n137), .B1(b[3]), .B2(n140), .ZN(n41) );
  OAI32D0 U128 ( .A1(n137), .A2(a[0]), .A3(b[2]), .B1(n137), .B2(n146), .ZN(
        n37) );
  XNR2D0 U129 ( .A1(n152), .A2(n153), .ZN(n23) );
  CKND2D0 U130 ( .A1(n153), .A2(n152), .ZN(n22) );
  OA22D0 U131 ( .A1(n142), .A2(n137), .B1(b[3]), .B2(n141), .Z(n152) );
  OA22D0 U132 ( .A1(n150), .A2(n146), .B1(b[2]), .B2(n154), .Z(n153) );
  CKXOR2D0 U133 ( .A1(b[3]), .A2(n140), .Z(n150) );
  OAI22D0 U134 ( .A1(b[2]), .A2(n151), .B1(n154), .B2(n146), .ZN(n18) );
  CKXOR2D0 U137 ( .A1(b[3]), .A2(n140), .Z(n154) );
  CKXOR2D0 U138 ( .A1(n137), .A2(a[6]), .Z(n151) );
  CKND0 U103 ( .I(b[3]), .ZN(n137) );
  CKND0 U106 ( .I(a[4]), .ZN(n140) );
  IND2D0 U127 ( .A1(b[3]), .B1(b[2]), .ZN(n146) );
endmodule


module oadm_fixed_div_specialized_plane_LEVEL2_RESIDUAL_DROP16_DW_mult_tc_0 ( 
        a, b, product );
  input [6:0] a;
  input [5:0] b;
  output [12:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n14, n15, n16, n17, n18, n20,
         n21, n22, n23, n25, n26, n27, n28, n29, n31, n32, n33, n34, n35, n37,
         n41, n43, n45, n46, n48, n49, n50, n51, n52, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154;

  FA1D0 U2 ( .A(n140), .B(a[4]), .CI(n2), .CO(n1), .S(product[11]) );
  FA1D0 U3 ( .A(n14), .B(n138), .CI(n3), .CO(n2), .S(product[10]) );
  FA1D0 U4 ( .A(n16), .B(n15), .CI(n4), .CO(n3), .S(product[9]) );
  FA1D0 U5 ( .A(n20), .B(n17), .CI(n5), .CO(n4), .S(product[8]) );
  FA1D0 U6 ( .A(n136), .B(n21), .CI(n6), .CO(n5), .S(product[7]) );
  FA1D0 U7 ( .A(n25), .B(n28), .CI(n7), .CO(n6), .S(product[6]) );
  FA1D0 U8 ( .A(n29), .B(n32), .CI(n8), .CO(n7), .S(product[5]) );
  FA1D0 U9 ( .A(n33), .B(n34), .CI(n9), .CO(n8), .S(product[4]) );
  FA1D0 U10 ( .A(n35), .B(n37), .CI(n10), .CO(n9), .S(product[3]) );
  FA1D0 U11 ( .A(n143), .B(n52), .CI(n144), .CO(n10), .S(product[2]) );
  FA1D0 U14 ( .A(a[4]), .B(n18), .CI(n46), .CO(n14), .S(n15) );
  FA1D0 U15 ( .A(n139), .B(n41), .CI(n22), .CO(n16), .S(n17) );
  FA1D0 U17 ( .A(n26), .B(a[4]), .CI(n23), .CO(n20), .S(n21) );
  HA1D0 U21 ( .A(n43), .B(n140), .CO(n26), .S(n27) );
  FA1D0 U22 ( .A(n49), .B(n140), .CI(n31), .CO(n28), .S(n29) );
  FA1D0 U24 ( .A(n141), .B(n45), .CI(n50), .CO(n32), .S(n33) );
  HA1D0 U25 ( .A(n51), .B(n142), .CO(n34), .S(n35) );
  INVD1 U102 ( .I(a[4]), .ZN(n138) );
  AN2XD1 U103 ( .A1(n48), .A2(n27), .Z(n136) );
  INVD1 U104 ( .I(a[0]), .ZN(n144) );
  INVD1 U105 ( .I(n18), .ZN(n139) );
  INVD1 U107 ( .I(a[1]), .ZN(n143) );
  INVD1 U108 ( .I(a[2]), .ZN(n142) );
  INVD1 U109 ( .I(a[3]), .ZN(n141) );
  CKXOR2D1 U110 ( .A1(n27), .A2(n48), .Z(n25) );
  CKND0 U111 ( .I(n144), .ZN(product[1]) );
  CKND0 U112 ( .I(n1), .ZN(product[12]) );
  NR2D0 U113 ( .A1(b[2]), .A2(n144), .ZN(n52) );
  OAI22D0 U114 ( .A1(n145), .A2(n146), .B1(b[2]), .B2(n147), .ZN(n51) );
  CKXOR2D0 U115 ( .A1(b[3]), .A2(n144), .Z(n145) );
  OAI22D0 U116 ( .A1(n147), .A2(n146), .B1(b[2]), .B2(n148), .ZN(n50) );
  CKXOR2D0 U117 ( .A1(b[3]), .A2(n143), .Z(n147) );
  OAI22D0 U118 ( .A1(n148), .A2(n146), .B1(b[2]), .B2(n149), .ZN(n49) );
  CKXOR2D0 U119 ( .A1(b[3]), .A2(n142), .Z(n148) );
  OAI22D0 U120 ( .A1(n149), .A2(n146), .B1(b[2]), .B2(n150), .ZN(n48) );
  CKXOR2D0 U121 ( .A1(b[3]), .A2(n141), .Z(n149) );
  AO21D0 U122 ( .A1(n146), .A2(b[2]), .B(n151), .Z(n46) );
  NR2D0 U123 ( .A1(b[3]), .A2(n144), .ZN(n45) );
  OAI22D0 U124 ( .A1(n144), .A2(n137), .B1(b[3]), .B2(n143), .ZN(n31) );
  OAI22D0 U125 ( .A1(n143), .A2(n137), .B1(b[3]), .B2(n142), .ZN(n43) );
  OAI22D0 U126 ( .A1(n141), .A2(n137), .B1(b[3]), .B2(n140), .ZN(n41) );
  OAI32D0 U128 ( .A1(n137), .A2(a[0]), .A3(b[2]), .B1(n137), .B2(n146), .ZN(
        n37) );
  XNR2D0 U129 ( .A1(n152), .A2(n153), .ZN(n23) );
  CKND2D0 U130 ( .A1(n153), .A2(n152), .ZN(n22) );
  OA22D0 U131 ( .A1(n142), .A2(n137), .B1(b[3]), .B2(n141), .Z(n152) );
  OA22D0 U132 ( .A1(n150), .A2(n146), .B1(b[2]), .B2(n154), .Z(n153) );
  CKXOR2D0 U133 ( .A1(b[3]), .A2(n140), .Z(n150) );
  OAI22D0 U134 ( .A1(b[2]), .A2(n151), .B1(n154), .B2(n146), .ZN(n18) );
  CKXOR2D0 U137 ( .A1(b[3]), .A2(n140), .Z(n154) );
  CKXOR2D0 U138 ( .A1(n137), .A2(a[6]), .Z(n151) );
  CKND0 U101 ( .I(b[3]), .ZN(n137) );
  CKND0 U106 ( .I(a[4]), .ZN(n140) );
  IND2D0 U127 ( .A1(b[3]), .B1(b[2]), .ZN(n146) );
endmodule


module oadm_fixed_div_specialized_plane_LEVEL2_RESIDUAL_DROP16 ( x_mantissa, 
        y_mantissa, plane_exact );
  input [23:0] x_mantissa;
  input [23:0] y_mantissa;
  output [28:0] plane_exact;
  wire   x_residual_22_, y_residual_22_, N26, N25, N24, N23, N22, N21, N20,
         N19, N18, N17, N16, N15, N14, N13, n1, n150, n220, n230, n240, n250,
         n260, n27, n28, n29, n30, n31, n32;
  wire   [12:5] x_product;
  wire   [12:1] y_product;
  wire   [9:3] midpoint_product;
  wire   [27:14] sub_0_root_sub_58_carry;
  wire   [25:19] add_1_root_sub_58_carry;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6;

  oadm_fixed_div_specialized_plane_LEVEL2_RESIDUAL_DROP16_DW_mult_uns_0 mult_54 ( 
        .a({n1, n150, x_mantissa[22:21], n150, n1}), .b({n1, n150, 
        y_mantissa[22:21], n150, n1}), .product({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, midpoint_product, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4}) );
  oadm_fixed_div_specialized_plane_LEVEL2_RESIDUAL_DROP16_DW_mult_tc_1 mult_44 ( 
        .a({y_residual_22_, y_residual_22_, y_residual_22_, y_mantissa[19:16]}), .b({n1, n150, x_mantissa[22:21], n150, n1}), .product({y_product, 
        SYNOPSYS_UNCONNECTED__5}) );
  oadm_fixed_div_specialized_plane_LEVEL2_RESIDUAL_DROP16_DW_mult_tc_0 mult_42 ( 
        .a({x_residual_22_, x_residual_22_, x_residual_22_, x_mantissa[19:16]}), .b({n1, n150, y_mantissa[22:21], n150, n1}), .product({x_product, N16, N15, 
        N14, N13, SYNOPSYS_UNCONNECTED__6}) );
  TIEL U3 ( .ZN(n1) );
  TIEH U4 ( .Z(n150) );
  FA1D0 U18 ( .A(midpoint_product[9]), .B(x_product[12]), .CI(
        add_1_root_sub_58_carry[24]), .CO(add_1_root_sub_58_carry[25]), .S(N24) );
  CKBD1 U19 ( .I(plane_exact[27]), .Z(plane_exact[28]) );
  XOR3D1 U20 ( .A1(N26), .A2(n32), .A3(sub_0_root_sub_58_carry[27]), .Z(
        plane_exact[27]) );
  FA1D0 U21 ( .A(N26), .B(n32), .CI(sub_0_root_sub_58_carry[26]), .CO(
        sub_0_root_sub_58_carry[27]), .S(plane_exact[26]) );
  FA1D0 U22 ( .A(N25), .B(n32), .CI(sub_0_root_sub_58_carry[25]), .CO(
        sub_0_root_sub_58_carry[26]), .S(plane_exact[25]) );
  FA1D0 U25 ( .A(N24), .B(n32), .CI(sub_0_root_sub_58_carry[24]), .CO(
        sub_0_root_sub_58_carry[25]), .S(plane_exact[24]) );
  FA1D0 U26 ( .A(N23), .B(n31), .CI(sub_0_root_sub_58_carry[23]), .CO(
        sub_0_root_sub_58_carry[24]), .S(plane_exact[23]) );
  INVD1 U27 ( .I(y_product[11]), .ZN(n31) );
  FA1D0 U28 ( .A(N22), .B(n30), .CI(sub_0_root_sub_58_carry[22]), .CO(
        sub_0_root_sub_58_carry[23]), .S(plane_exact[22]) );
  INVD1 U29 ( .I(y_product[10]), .ZN(n30) );
  FA1D0 U30 ( .A(N19), .B(n27), .CI(sub_0_root_sub_58_carry[19]), .CO(
        sub_0_root_sub_58_carry[20]), .S(plane_exact[19]) );
  INVD1 U31 ( .I(y_product[7]), .ZN(n27) );
  FA1D0 U32 ( .A(N20), .B(n28), .CI(sub_0_root_sub_58_carry[20]), .CO(
        sub_0_root_sub_58_carry[21]), .S(plane_exact[20]) );
  INVD1 U33 ( .I(y_product[8]), .ZN(n28) );
  FA1D0 U34 ( .A(midpoint_product[5]), .B(x_product[8]), .CI(
        add_1_root_sub_58_carry[20]), .CO(add_1_root_sub_58_carry[21]), .S(N20) );
  FA1D0 U35 ( .A(midpoint_product[6]), .B(x_product[9]), .CI(
        add_1_root_sub_58_carry[21]), .CO(add_1_root_sub_58_carry[22]), .S(N21) );
  FA1D0 U36 ( .A(N21), .B(n29), .CI(sub_0_root_sub_58_carry[21]), .CO(
        sub_0_root_sub_58_carry[22]), .S(plane_exact[21]) );
  INVD1 U37 ( .I(y_product[9]), .ZN(n29) );
  FA1D0 U38 ( .A(midpoint_product[8]), .B(x_product[11]), .CI(
        add_1_root_sub_58_carry[23]), .CO(add_1_root_sub_58_carry[24]), .S(N23) );
  FA1D0 U39 ( .A(N17), .B(n250), .CI(sub_0_root_sub_58_carry[17]), .CO(
        sub_0_root_sub_58_carry[18]), .S(plane_exact[17]) );
  INVD1 U40 ( .I(y_product[5]), .ZN(n250) );
  INVD1 U41 ( .I(x_product[5]), .ZN(N17) );
  FA1D0 U42 ( .A(N16), .B(n240), .CI(sub_0_root_sub_58_carry[16]), .CO(
        sub_0_root_sub_58_carry[17]), .S(plane_exact[16]) );
  INVD1 U43 ( .I(y_product[4]), .ZN(n240) );
  INVD1 U44 ( .I(y_product[12]), .ZN(n32) );
  FA1D0 U45 ( .A(midpoint_product[7]), .B(x_product[10]), .CI(
        add_1_root_sub_58_carry[22]), .CO(add_1_root_sub_58_carry[23]), .S(N22) );
  FA1D0 U47 ( .A(N18), .B(n260), .CI(sub_0_root_sub_58_carry[18]), .CO(
        sub_0_root_sub_58_carry[19]), .S(plane_exact[18]) );
  INVD1 U48 ( .I(y_product[6]), .ZN(n260) );
  FA1D0 U49 ( .A(midpoint_product[4]), .B(x_product[7]), .CI(
        add_1_root_sub_58_carry[19]), .CO(add_1_root_sub_58_carry[20]), .S(N19) );
  FA1D0 U50 ( .A(N15), .B(n230), .CI(sub_0_root_sub_58_carry[15]), .CO(
        sub_0_root_sub_58_carry[16]), .S(plane_exact[15]) );
  INVD1 U51 ( .I(y_product[3]), .ZN(n230) );
  FA1D0 U52 ( .A(N14), .B(n220), .CI(sub_0_root_sub_58_carry[14]), .CO(
        sub_0_root_sub_58_carry[15]), .S(plane_exact[14]) );
  INVD1 U54 ( .I(y_product[2]), .ZN(n220) );
  FA1D0 U57 ( .A(midpoint_product[3]), .B(x_product[6]), .CI(x_product[5]), 
        .CO(add_1_root_sub_58_carry[19]), .S(N18) );
  INVD1 U59 ( .I(x_mantissa[20]), .ZN(x_residual_22_) );
  INVD1 U60 ( .I(y_mantissa[20]), .ZN(y_residual_22_) );
  CKXOR2D1 U62 ( .A1(add_1_root_sub_58_carry[25]), .A2(x_product[12]), .Z(N25)
         );
  INR2D0 U5 ( .A1(x_product[12]), .B1(add_1_root_sub_58_carry[25]), .ZN(N26)
         );
  CKXOR2D0 U6 ( .A1(N13), .A2(y_product[1]), .Z(plane_exact[13]) );
  IND2D0 U7 ( .A1(N13), .B1(y_product[1]), .ZN(sub_0_root_sub_58_carry[14]) );
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
  CKBD1 U37 ( .I(result_fraction[8]), .Z(result[8]) );
  CKBD1 U38 ( .I(result_fraction[7]), .Z(result[7]) );
  CKBD1 U39 ( .I(result_fraction[9]), .Z(result[9]) );
  CKBD1 U40 ( .I(result_fraction[6]), .Z(result[6]) );
  CKBD1 U41 ( .I(result_fraction[5]), .Z(result[5]) );
  FA1D0 U42 ( .A(N4), .B(exponent_adjust[1]), .CI(n1), .CO(
        add_0_root_add_0_root_add_22_2_carry[2]), .S(result[24]) );
  FA1D0 U43 ( .A(N5), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[2]), .CO(
        add_0_root_add_0_root_add_22_2_carry[3]), .S(result[25]) );
  FA1D0 U44 ( .A(N6), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[3]), .CO(
        add_0_root_add_0_root_add_22_2_carry[4]), .S(result[26]) );
  FA1D0 U45 ( .A(N7), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[4]), .CO(
        add_0_root_add_0_root_add_22_2_carry[5]), .S(result[27]) );
  FA1D0 U46 ( .A(N8), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[5]), .CO(
        add_0_root_add_0_root_add_22_2_carry[6]), .S(result[28]) );
  FA1D0 U47 ( .A(N9), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[6]), .CO(
        add_0_root_add_0_root_add_22_2_carry[7]), .S(result[29]) );
  CKBD1 U54 ( .I(y[22]), .Z(fraction_y[22]) );
  XOR3D1 U57 ( .A1(N10), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_22_2_carry[7]), .Z(result[30]) );
  CKBD1 U59 ( .I(y[21]), .Z(fraction_y[21]) );
  CKBD1 U61 ( .I(x[22]), .Z(fraction_x[22]) );
  CKBD1 U63 ( .I(x[21]), .Z(fraction_x[21]) );
  INVD1 U68 ( .I(y[29]), .ZN(N17) );
  INVD1 U69 ( .I(y[24]), .ZN(N12) );
  INVD1 U70 ( .I(y[25]), .ZN(N13) );
  INVD1 U71 ( .I(y[26]), .ZN(N14) );
  INVD1 U72 ( .I(y[27]), .ZN(N15) );
  INVD1 U73 ( .I(y[28]), .ZN(N16) );
  CKBD1 U87 ( .I(x[20]), .Z(fraction_x[20]) );
  CKBD1 U88 ( .I(x[19]), .Z(fraction_x[19]) );
  CKBD1 U89 ( .I(x[18]), .Z(fraction_x[18]) );
  CKBD1 U90 ( .I(x[17]), .Z(fraction_x[17]) );
  CKBD1 U91 ( .I(x[16]), .Z(fraction_x[16]) );
  CKBD1 U92 ( .I(y[20]), .Z(fraction_y[20]) );
  CKBD1 U93 ( .I(y[19]), .Z(fraction_y[19]) );
  CKBD1 U94 ( .I(y[18]), .Z(fraction_y[18]) );
  CKBD1 U95 ( .I(y[17]), .Z(fraction_y[17]) );
  CKBD1 U96 ( .I(y[16]), .Z(fraction_y[16]) );
  CKBD1 U97 ( .I(result_fraction[22]), .Z(result[22]) );
  CKBD1 U98 ( .I(result_fraction[21]), .Z(result[21]) );
  CKBD1 U99 ( .I(result_fraction[20]), .Z(result[20]) );
  CKBD1 U100 ( .I(result_fraction[19]), .Z(result[19]) );
  CKBD1 U101 ( .I(result_fraction[18]), .Z(result[18]) );
  CKBD1 U102 ( .I(result_fraction[17]), .Z(result[17]) );
  CKBD1 U103 ( .I(result_fraction[16]), .Z(result[16]) );
  CKBD1 U104 ( .I(result_fraction[15]), .Z(result[15]) );
  CKBD1 U105 ( .I(result_fraction[14]), .Z(result[14]) );
  CKBD1 U106 ( .I(result_fraction[13]), .Z(result[13]) );
  CKBD1 U107 ( .I(result_fraction[12]), .Z(result[12]) );
  CKBD1 U108 ( .I(result_fraction[11]), .Z(result[11]) );
  CKBD1 U109 ( .I(result_fraction[10]), .Z(result[10]) );
  TIEL U110 ( .ZN(n79) );
  CKXOR2D1 U111 ( .A1(exponent_adjust[0]), .A2(N3), .Z(result[23]) );
  CKND0 U119 ( .I(y[23]), .ZN(N11) );
endmodule



    module oadm_fixed_div_specialized_2_16_16_8_cb_88_61_49_DW_mult_uns_0_DW_mult_uns_1 ( 
        a, b, product );
  input [28:0] a;
  input [7:0] b;
  output [36:0] product;
  wire   n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n79, n81,
         n83, n85, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n182, n183, n200, n201,
         n202, n203, n204, n205, n206, n207, n208, n209, n210, n211, n226,
         n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237,
         n254, n255, n256, n257, n258, n259, n260, n261, n262, n263, n264,
         n265, n266, n267, n268, n269, n270, n271, n557, n558, n560, n561,
         n562, n563, n564, n569, n570, n571, n572, n573, n574, n575, n576,
         n577, n578, n579, n580, n581, n582, n583, n584, n585, n586, n587,
         n588, n589, n590, n591, n592, n593, n594, n595, n596, n597, n598,
         n599, n600, n601, n603, n604, n605, n606, n607, n608, n609, n611,
         n612, n613, n614, n615, n617, n618, n619, n620, n621, n622, n623,
         n625, n626, n628, n629, n631, n632, n634, n635, n637, n638, n640,
         n641, n643, n644, n646, n647, n649, n650, n652, n653, n655, n656,
         n658, n659, n661, n662, n663, n664, n665, n666, n667, n668, n669,
         n670, n671, n672, n673, n674, n675, n676, n677, n678, n679, n680,
         n681, n682, n683, n684, n685, n686, n687, n688, n689;

  FA1D0 U28 ( .A(n57), .B(n58), .CI(n28), .CO(n27), .S(product[30]) );
  FA1D0 U29 ( .A(n59), .B(n255), .CI(n29), .CO(n28), .S(product[29]) );
  FA1D0 U30 ( .A(n61), .B(n256), .CI(n30), .CO(n29), .S(product[28]) );
  FA1D0 U31 ( .A(n63), .B(n257), .CI(n31), .CO(n30), .S(product[27]) );
  FA1D0 U32 ( .A(n65), .B(n258), .CI(n32), .CO(n31), .S(product[26]) );
  FA1D0 U33 ( .A(n67), .B(n259), .CI(n33), .CO(n32), .S(product[25]) );
  FA1D0 U34 ( .A(n69), .B(n260), .CI(n34), .CO(n33), .S(product[24]) );
  FA1D0 U35 ( .A(n71), .B(n261), .CI(n35), .CO(n34), .S(product[23]) );
  FA1D0 U36 ( .A(n73), .B(n262), .CI(n36), .CO(n35), .S(product[22]) );
  FA1D0 U37 ( .A(n75), .B(n263), .CI(n37), .CO(n36), .S(product[21]) );
  FA1D0 U38 ( .A(n77), .B(n264), .CI(n38), .CO(n37), .S(product[20]) );
  FA1D0 U39 ( .A(n79), .B(n265), .CI(n39), .CO(n38), .S(product[19]) );
  FA1D0 U40 ( .A(n81), .B(n266), .CI(n40), .CO(n39), .S(product[18]) );
  FA1D0 U41 ( .A(n83), .B(n267), .CI(n41), .CO(n40), .S(product[17]) );
  FA1D0 U42 ( .A(n85), .B(n268), .CI(n42), .CO(n41), .S(product[16]) );
  FA1D0 U43 ( .A(b[5]), .B(n269), .CI(n43), .CO(n42), .S(product[15]) );
  FA1D0 U44 ( .A(b[5]), .B(n270), .CI(n44), .CO(n43), .S(product[14]) );
  FA1D0 U45 ( .A(b[5]), .B(n271), .CI(n558), .CO(n44), .S(product[13]) );
  FA1D0 U57 ( .A(n226), .B(n200), .CI(n254), .CO(n56), .S(n57) );
  FA1D0 U58 ( .A(n227), .B(n201), .CI(n60), .CO(n58), .S(n59) );
  FA1D0 U59 ( .A(n228), .B(n202), .CI(n62), .CO(n60), .S(n61) );
  FA1D0 U60 ( .A(n229), .B(n203), .CI(n64), .CO(n62), .S(n63) );
  FA1D0 U61 ( .A(n230), .B(n204), .CI(n66), .CO(n64), .S(n65) );
  FA1D0 U62 ( .A(n231), .B(n205), .CI(n68), .CO(n66), .S(n67) );
  FA1D0 U63 ( .A(n232), .B(n206), .CI(n70), .CO(n68), .S(n69) );
  FA1D0 U64 ( .A(n233), .B(n207), .CI(n72), .CO(n70), .S(n71) );
  FA1D0 U65 ( .A(n234), .B(n208), .CI(n74), .CO(n72), .S(n73) );
  FA1D0 U66 ( .A(n235), .B(n209), .CI(n76), .CO(n74), .S(n75) );
  FA1D0 U67 ( .A(n236), .B(n210), .CI(n557), .CO(n76), .S(n77) );
  HA1D0 U399 ( .A(n140), .B(a[28]), .CO(n168), .S(n169) );
  FA1D0 U400 ( .A(a[27]), .B(a[28]), .CI(n141), .CO(n140), .S(n170) );
  FA1D0 U401 ( .A(a[26]), .B(a[27]), .CI(n142), .CO(n141), .S(n171) );
  FA1D0 U402 ( .A(a[25]), .B(a[26]), .CI(n143), .CO(n142), .S(n172) );
  FA1D0 U403 ( .A(a[24]), .B(a[25]), .CI(n144), .CO(n143), .S(n173) );
  FA1D0 U404 ( .A(a[23]), .B(a[24]), .CI(n145), .CO(n144), .S(n174) );
  FA1D0 U405 ( .A(a[22]), .B(a[23]), .CI(n146), .CO(n145), .S(n175) );
  FA1D0 U406 ( .A(a[21]), .B(a[22]), .CI(n147), .CO(n146), .S(n176) );
  FA1D0 U407 ( .A(a[20]), .B(a[21]), .CI(n148), .CO(n147), .S(n177) );
  FA1D0 U408 ( .A(a[19]), .B(a[20]), .CI(n149), .CO(n148), .S(n178) );
  FA1D0 U409 ( .A(a[18]), .B(a[19]), .CI(n150), .CO(n149), .S(n179) );
  FA1D0 U410 ( .A(a[17]), .B(a[18]), .CI(n151), .CO(n150), .S(n180) );
  FA1D0 U411 ( .A(a[16]), .B(a[17]), .CI(n152), .CO(n151), .S(n181) );
  FA1D0 U412 ( .A(a[15]), .B(a[16]), .CI(n153), .CO(n152), .S(n182) );
  FA1D0 U413 ( .A(a[14]), .B(a[15]), .CI(n560), .CO(n153), .S(n183) );
  AN2XD1 U433 ( .A1(n237), .A2(n211), .Z(n557) );
  AN2XD1 U434 ( .A1(b[5]), .A2(b[5]), .Z(n558) );
  INVD1 U436 ( .I(n173), .ZN(n576) );
  INVD1 U437 ( .I(n170), .ZN(n571) );
  INVD1 U438 ( .I(n172), .ZN(n574) );
  INVD1 U439 ( .I(n171), .ZN(n572) );
  INVD1 U440 ( .I(n175), .ZN(n580) );
  INVD1 U441 ( .I(n178), .ZN(n586) );
  INVD1 U442 ( .I(n177), .ZN(n584) );
  INVD1 U443 ( .I(n176), .ZN(n582) );
  INVD1 U444 ( .I(n174), .ZN(n578) );
  INVD1 U445 ( .I(a[24]), .ZN(n577) );
  INVD1 U446 ( .I(a[25]), .ZN(n575) );
  INVD1 U447 ( .I(a[27]), .ZN(n569) );
  INVD1 U448 ( .I(n181), .ZN(n592) );
  INVD1 U449 ( .I(a[26]), .ZN(n573) );
  INVD1 U450 ( .I(n179), .ZN(n588) );
  INVD1 U451 ( .I(n180), .ZN(n590) );
  INVD1 U452 ( .I(a[19]), .ZN(n587) );
  INVD1 U453 ( .I(a[20]), .ZN(n585) );
  INVD1 U454 ( .I(a[21]), .ZN(n583) );
  INVD1 U455 ( .I(a[22]), .ZN(n581) );
  INVD1 U456 ( .I(a[23]), .ZN(n579) );
  INVD1 U457 ( .I(n182), .ZN(n594) );
  INVD1 U458 ( .I(n183), .ZN(n596) );
  INVD1 U459 ( .I(a[17]), .ZN(n591) );
  INVD1 U460 ( .I(a[16]), .ZN(n593) );
  INVD1 U465 ( .I(n613), .ZN(n601) );
  INVD1 U466 ( .I(a[13]), .ZN(n598) );
  INVD1 U467 ( .I(n615), .ZN(n600) );
  INVD1 U468 ( .I(n612), .ZN(n599) );
  INVD1 U469 ( .I(n169), .ZN(n570) );
  INVD1 U470 ( .I(a[18]), .ZN(n589) );
  AN2XD1 U471 ( .A1(a[13]), .A2(a[14]), .Z(n560) );
  INVD1 U472 ( .I(a[15]), .ZN(n595) );
  XNR2D1 U473 ( .A1(a[14]), .A2(a[13]), .ZN(n561) );
  INVD1 U474 ( .I(a[14]), .ZN(n597) );
  OR2D1 U476 ( .A1(n597), .A2(n611), .Z(n562) );
  OAI22D1 U477 ( .A1(n618), .A2(n598), .B1(n619), .B2(n598), .ZN(n271) );
  OR2D1 U480 ( .A1(n598), .A2(n611), .Z(n563) );
  OAI21D1 U481 ( .A1(n601), .A2(n598), .B(n662), .ZN(n211) );
  ND2D1 U482 ( .A1(a[13]), .A2(n661), .ZN(n662) );
  ND2D1 U483 ( .A1(a[14]), .A2(n661), .ZN(n663) );
  INR3D0 U484 ( .A1(n674), .B1(n564), .B2(n675), .ZN(n612) );
  ND2D1 U486 ( .A1(b[3]), .A2(n603), .ZN(n611) );
  ND2D1 U487 ( .A1(b[3]), .A2(b[5]), .ZN(n607) );
  NR2D1 U488 ( .A1(n674), .A2(b[7]), .ZN(n661) );
  INVD1 U490 ( .I(b[7]), .ZN(n564) );
  CKXOR2D1 U491 ( .A1(n211), .A2(n237), .Z(n79) );
  XOR3D0 U492 ( .A1(n604), .A2(n605), .A3(n606), .Z(product[31]) );
  XNR3D0 U493 ( .A1(n56), .A2(n27), .A3(b[5]), .ZN(n606) );
  OAI21D0 U494 ( .A1(n607), .A2(n571), .B(n608), .ZN(n605) );
  AOI221D0 U497 ( .A1(a[23]), .A2(n612), .B1(n173), .B2(n613), .C(n614), .ZN(
        n604) );
  OAI222D0 U499 ( .A1(n617), .A2(n598), .B1(n618), .B2(n597), .C1(n619), .C2(
        n561), .ZN(n270) );
  OAI222D0 U500 ( .A1(n617), .A2(n597), .B1(n618), .B2(n595), .C1(n619), .C2(
        n596), .ZN(n269) );
  OAI222D0 U501 ( .A1(n617), .A2(n595), .B1(n618), .B2(n593), .C1(n619), .C2(
        n594), .ZN(n268) );
  OAI222D0 U502 ( .A1(n617), .A2(n593), .B1(n618), .B2(n591), .C1(n619), .C2(
        n592), .ZN(n267) );
  OAI222D0 U503 ( .A1(n617), .A2(n591), .B1(n618), .B2(n589), .C1(n619), .C2(
        n590), .ZN(n266) );
  OAI222D0 U504 ( .A1(n617), .A2(n589), .B1(n618), .B2(n587), .C1(n619), .C2(
        n588), .ZN(n265) );
  OAI222D0 U505 ( .A1(n617), .A2(n587), .B1(n618), .B2(n585), .C1(n619), .C2(
        n586), .ZN(n264) );
  OAI222D0 U506 ( .A1(n617), .A2(n585), .B1(n618), .B2(n583), .C1(n619), .C2(
        n584), .ZN(n263) );
  OAI222D0 U507 ( .A1(n617), .A2(n583), .B1(n618), .B2(n581), .C1(n619), .C2(
        n582), .ZN(n262) );
  OAI222D0 U508 ( .A1(n617), .A2(n581), .B1(n579), .B2(n618), .C1(n619), .C2(
        n580), .ZN(n261) );
  OAI222D0 U509 ( .A1(n579), .A2(n617), .B1(n577), .B2(n618), .C1(n619), .C2(
        n578), .ZN(n260) );
  OAI222D0 U510 ( .A1(n575), .A2(n618), .B1(n577), .B2(n617), .C1(n576), .C2(
        n619), .ZN(n259) );
  OAI222D0 U511 ( .A1(n618), .A2(n573), .B1(n575), .B2(n617), .C1(n619), .C2(
        n574), .ZN(n258) );
  OAI222D0 U512 ( .A1(n617), .A2(n573), .B1(n618), .B2(n569), .C1(n619), .C2(
        n572), .ZN(n257) );
  OAI222D0 U513 ( .A1(n569), .A2(n618), .B1(n617), .B2(n569), .C1(n571), .C2(
        n619), .ZN(n256) );
  IND2D0 U514 ( .A1(b[1]), .B1(b[0]), .ZN(n618) );
  OAI22D0 U515 ( .A1(n569), .A2(n617), .B1(n570), .B2(n619), .ZN(n255) );
  IND2D0 U516 ( .A1(b[0]), .B1(b[1]), .ZN(n617) );
  INR2D0 U517 ( .A1(n168), .B1(n619), .ZN(n254) );
  CKND2D0 U518 ( .A1(b[1]), .A2(b[0]), .ZN(n619) );
  XNR2D0 U519 ( .A1(n603), .A2(n620), .ZN(n85) );
  OAI21D0 U520 ( .A1(n607), .A2(n598), .B(n563), .ZN(n620) );
  XNR2D0 U521 ( .A1(n603), .A2(n621), .ZN(n83) );
  OAI21D0 U522 ( .A1(n607), .A2(n561), .B(n562), .ZN(n621) );
  XNR2D0 U523 ( .A1(n603), .A2(n622), .ZN(n81) );
  OAI21D0 U524 ( .A1(n607), .A2(n596), .B(n623), .ZN(n622) );
  XNR2D0 U527 ( .A1(n603), .A2(n625), .ZN(n237) );
  OAI21D0 U528 ( .A1(n607), .A2(n594), .B(n626), .ZN(n625) );
  XNR2D0 U531 ( .A1(n603), .A2(n628), .ZN(n236) );
  OAI21D0 U532 ( .A1(n607), .A2(n592), .B(n629), .ZN(n628) );
  XNR2D0 U535 ( .A1(n603), .A2(n631), .ZN(n235) );
  OAI21D0 U536 ( .A1(n607), .A2(n590), .B(n632), .ZN(n631) );
  XNR2D0 U539 ( .A1(n603), .A2(n634), .ZN(n234) );
  OAI21D0 U540 ( .A1(n607), .A2(n588), .B(n635), .ZN(n634) );
  XNR2D0 U543 ( .A1(n603), .A2(n637), .ZN(n233) );
  OAI21D0 U544 ( .A1(n607), .A2(n586), .B(n638), .ZN(n637) );
  XNR2D0 U547 ( .A1(n603), .A2(n640), .ZN(n232) );
  OAI21D0 U548 ( .A1(n607), .A2(n584), .B(n641), .ZN(n640) );
  XNR2D0 U551 ( .A1(n603), .A2(n643), .ZN(n231) );
  OAI21D0 U552 ( .A1(n607), .A2(n582), .B(n644), .ZN(n643) );
  XNR2D0 U555 ( .A1(n603), .A2(n646), .ZN(n230) );
  OAI21D0 U556 ( .A1(n607), .A2(n580), .B(n647), .ZN(n646) );
  XNR2D0 U559 ( .A1(n603), .A2(n649), .ZN(n229) );
  OAI21D0 U560 ( .A1(n607), .A2(n578), .B(n650), .ZN(n649) );
  XNR2D0 U563 ( .A1(n603), .A2(n652), .ZN(n228) );
  OAI21D0 U564 ( .A1(n607), .A2(n576), .B(n653), .ZN(n652) );
  XNR2D0 U567 ( .A1(n603), .A2(n655), .ZN(n227) );
  OAI21D0 U568 ( .A1(n607), .A2(n574), .B(n656), .ZN(n655) );
  XNR2D0 U571 ( .A1(n603), .A2(n658), .ZN(n226) );
  OAI21D0 U572 ( .A1(n607), .A2(n572), .B(n659), .ZN(n658) );
  OAI221D0 U575 ( .A1(n615), .A2(n598), .B1(n601), .B2(n561), .C(n663), .ZN(
        n210) );
  OAI221D0 U576 ( .A1(n599), .A2(n598), .B1(n601), .B2(n596), .C(n664), .ZN(
        n209) );
  AOI22D0 U577 ( .A1(a[15]), .A2(n661), .B1(a[14]), .B2(n600), .ZN(n664) );
  OAI221D0 U578 ( .A1(n599), .A2(n597), .B1(n601), .B2(n594), .C(n665), .ZN(
        n208) );
  AOI22D0 U579 ( .A1(a[16]), .A2(n661), .B1(a[15]), .B2(n600), .ZN(n665) );
  OAI221D0 U580 ( .A1(n599), .A2(n595), .B1(n601), .B2(n592), .C(n666), .ZN(
        n207) );
  AOI22D0 U581 ( .A1(a[17]), .A2(n661), .B1(a[16]), .B2(n600), .ZN(n666) );
  OAI221D0 U582 ( .A1(n599), .A2(n593), .B1(n601), .B2(n590), .C(n667), .ZN(
        n206) );
  AOI22D0 U583 ( .A1(a[18]), .A2(n661), .B1(a[17]), .B2(n600), .ZN(n667) );
  OAI221D0 U584 ( .A1(n599), .A2(n591), .B1(n601), .B2(n588), .C(n668), .ZN(
        n205) );
  AOI22D0 U585 ( .A1(a[19]), .A2(n661), .B1(a[18]), .B2(n600), .ZN(n668) );
  OAI221D0 U586 ( .A1(n599), .A2(n589), .B1(n601), .B2(n586), .C(n669), .ZN(
        n204) );
  AOI22D0 U587 ( .A1(a[20]), .A2(n661), .B1(a[19]), .B2(n600), .ZN(n669) );
  OAI221D0 U588 ( .A1(n599), .A2(n587), .B1(n601), .B2(n584), .C(n670), .ZN(
        n203) );
  AOI22D0 U589 ( .A1(a[21]), .A2(n661), .B1(a[20]), .B2(n600), .ZN(n670) );
  OAI221D0 U590 ( .A1(n599), .A2(n585), .B1(n601), .B2(n582), .C(n671), .ZN(
        n202) );
  AOI22D0 U591 ( .A1(a[22]), .A2(n661), .B1(a[21]), .B2(n600), .ZN(n671) );
  OAI221D0 U592 ( .A1(n599), .A2(n583), .B1(n601), .B2(n580), .C(n672), .ZN(
        n201) );
  AOI22D0 U593 ( .A1(a[23]), .A2(n661), .B1(a[22]), .B2(n600), .ZN(n672) );
  OAI221D0 U594 ( .A1(n599), .A2(n581), .B1(n601), .B2(n578), .C(n673), .ZN(
        n200) );
  AOI22D0 U595 ( .A1(a[24]), .A2(n661), .B1(a[23]), .B2(n600), .ZN(n673) );
  CKND2D0 U596 ( .A1(n674), .A2(n675), .ZN(n615) );
  NR2D0 U597 ( .A1(n564), .A2(n674), .ZN(n613) );
  XNR2D0 U598 ( .A1(n564), .A2(b[6]), .ZN(n675) );
  CKXOR2D0 U599 ( .A1(n603), .A2(b[6]), .Z(n674) );
  AOI21D0 U431 ( .A1(a[26]), .A2(n609), .B(n676), .ZN(n608) );
  NR2D0 U432 ( .A1(n569), .A2(n611), .ZN(n676) );
  NR2D0 U435 ( .A1(n603), .A2(b[3]), .ZN(n609) );
  MOAI22D0 U461 ( .A1(n615), .A2(n577), .B1(n661), .B2(a[25]), .ZN(n614) );
  AOI21D0 U462 ( .A1(a[25]), .A2(n609), .B(n677), .ZN(n659) );
  NR2D0 U463 ( .A1(n569), .A2(n611), .ZN(n677) );
  AOI21D0 U464 ( .A1(a[24]), .A2(n609), .B(n678), .ZN(n656) );
  NR2D0 U475 ( .A1(n573), .A2(n611), .ZN(n678) );
  AOI21D0 U478 ( .A1(a[23]), .A2(n609), .B(n679), .ZN(n653) );
  NR2D0 U479 ( .A1(n575), .A2(n611), .ZN(n679) );
  AOI21D0 U485 ( .A1(a[22]), .A2(n609), .B(n680), .ZN(n650) );
  NR2D0 U489 ( .A1(n577), .A2(n611), .ZN(n680) );
  AOI21D0 U495 ( .A1(a[21]), .A2(n609), .B(n681), .ZN(n647) );
  NR2D0 U496 ( .A1(n579), .A2(n611), .ZN(n681) );
  AOI21D0 U498 ( .A1(a[20]), .A2(n609), .B(n682), .ZN(n644) );
  NR2D0 U525 ( .A1(n581), .A2(n611), .ZN(n682) );
  AOI21D0 U526 ( .A1(a[19]), .A2(n609), .B(n683), .ZN(n641) );
  NR2D0 U529 ( .A1(n583), .A2(n611), .ZN(n683) );
  AOI21D0 U530 ( .A1(a[18]), .A2(n609), .B(n684), .ZN(n638) );
  NR2D0 U533 ( .A1(n585), .A2(n611), .ZN(n684) );
  AOI21D0 U534 ( .A1(a[17]), .A2(n609), .B(n685), .ZN(n635) );
  NR2D0 U537 ( .A1(n587), .A2(n611), .ZN(n685) );
  AOI21D0 U538 ( .A1(a[16]), .A2(n609), .B(n686), .ZN(n632) );
  NR2D0 U541 ( .A1(n589), .A2(n611), .ZN(n686) );
  AOI21D0 U542 ( .A1(a[15]), .A2(n609), .B(n687), .ZN(n629) );
  NR2D0 U545 ( .A1(n591), .A2(n611), .ZN(n687) );
  AOI21D0 U546 ( .A1(a[14]), .A2(n609), .B(n688), .ZN(n626) );
  NR2D0 U549 ( .A1(n593), .A2(n611), .ZN(n688) );
  AOI21D0 U550 ( .A1(a[13]), .A2(n609), .B(n689), .ZN(n623) );
  NR2D0 U553 ( .A1(n595), .A2(n611), .ZN(n689) );
  INVD1 U554 ( .I(b[5]), .ZN(n603) );
endmodule


module oadm_fixed_div_specialized_2_16_16_8_cb_88_61_49 ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   coefficient_5_, coefficient_3, coefficient_1, coefficient_0,
         exponent_adjust_2_, n2, n28, n29, n1, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23;
  wire   [22:16] x_mantissa;
  wire   [22:16] y_mantissa;
  wire   [28:13] plane_full;
  wire   [31:13] full_scale_product;
  wire   [22:5] normalized_fraction;
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
        SYNOPSYS_UNCONNECTED__66, SYNOPSYS_UNCONNECTED__67;

  OR2D1 U29 ( .A1(y_mantissa[21]), .A2(coefficient_1), .Z(coefficient_3) );
  oadm_fixed_div_specialized_plane_LEVEL2_RESIDUAL_DROP16 plane ( .x_mantissa(
        {1'b0, x_mantissa, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y_mantissa({1'b0, 
        y_mantissa, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .plane_exact({plane_full, 
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12}) );
  fp32_normal_finite_wrapper fp_wrapper ( .x({x[31:16], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y({y[31:16], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .divide_mode(1'b0), .fraction_x(
        {x_mantissa, SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15, SYNOPSYS_UNCONNECTED__16, 
        SYNOPSYS_UNCONNECTED__17, SYNOPSYS_UNCONNECTED__18, 
        SYNOPSYS_UNCONNECTED__19, SYNOPSYS_UNCONNECTED__20, 
        SYNOPSYS_UNCONNECTED__21, SYNOPSYS_UNCONNECTED__22, 
        SYNOPSYS_UNCONNECTED__23, SYNOPSYS_UNCONNECTED__24, 
        SYNOPSYS_UNCONNECTED__25, SYNOPSYS_UNCONNECTED__26, 
        SYNOPSYS_UNCONNECTED__27, SYNOPSYS_UNCONNECTED__28}), .fraction_y({
        y_mantissa, SYNOPSYS_UNCONNECTED__29, SYNOPSYS_UNCONNECTED__30, 
        SYNOPSYS_UNCONNECTED__31, SYNOPSYS_UNCONNECTED__32, 
        SYNOPSYS_UNCONNECTED__33, SYNOPSYS_UNCONNECTED__34, 
        SYNOPSYS_UNCONNECTED__35, SYNOPSYS_UNCONNECTED__36, 
        SYNOPSYS_UNCONNECTED__37, SYNOPSYS_UNCONNECTED__38, 
        SYNOPSYS_UNCONNECTED__39, SYNOPSYS_UNCONNECTED__40, 
        SYNOPSYS_UNCONNECTED__41, SYNOPSYS_UNCONNECTED__42, 
        SYNOPSYS_UNCONNECTED__43, SYNOPSYS_UNCONNECTED__44}), 
        .result_fraction({normalized_fraction, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .exponent_adjust({exponent_adjust_2_, exponent_adjust_2_, n2}), 
        .result({result[31:5], SYNOPSYS_UNCONNECTED__45, 
        SYNOPSYS_UNCONNECTED__46, SYNOPSYS_UNCONNECTED__47, 
        SYNOPSYS_UNCONNECTED__48, SYNOPSYS_UNCONNECTED__49}) );
  oadm_fixed_div_specialized_2_16_16_8_cb_88_61_49_DW_mult_uns_0_DW_mult_uns_1 mult_121 ( 
        .a({plane_full, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1}), 
        .b({n4, coefficient_0, coefficient_5_, n1, coefficient_3, n1, 
        coefficient_1, coefficient_0}), .product({SYNOPSYS_UNCONNECTED__50, 
        SYNOPSYS_UNCONNECTED__51, SYNOPSYS_UNCONNECTED__52, 
        SYNOPSYS_UNCONNECTED__53, SYNOPSYS_UNCONNECTED__54, full_scale_product, 
        SYNOPSYS_UNCONNECTED__55, SYNOPSYS_UNCONNECTED__56, 
        SYNOPSYS_UNCONNECTED__57, SYNOPSYS_UNCONNECTED__58, 
        SYNOPSYS_UNCONNECTED__59, SYNOPSYS_UNCONNECTED__60, 
        SYNOPSYS_UNCONNECTED__61, SYNOPSYS_UNCONNECTED__62, 
        SYNOPSYS_UNCONNECTED__63, SYNOPSYS_UNCONNECTED__64, 
        SYNOPSYS_UNCONNECTED__65, SYNOPSYS_UNCONNECTED__66, 
        SYNOPSYS_UNCONNECTED__67}) );
  TIEL U3 ( .ZN(n1) );
  ND2D1 U4 ( .A1(n28), .A2(n29), .ZN(exponent_adjust_2_) );
  INVD1 U5 ( .I(n28), .ZN(n2) );
  INVD1 U6 ( .I(full_scale_product[30]), .ZN(n6) );
  ND2D1 U7 ( .A1(full_scale_product[30]), .A2(n5), .ZN(n28) );
  ND2D1 U8 ( .A1(n6), .A2(n5), .ZN(n29) );
  OAI222D0 U9 ( .A1(n21), .A2(n28), .B1(n29), .B2(n22), .C1(n20), .C2(n5), 
        .ZN(normalized_fraction[8]) );
  OAI222D0 U10 ( .A1(n28), .A2(n22), .B1(n29), .B2(n23), .C1(n21), .C2(n5), 
        .ZN(normalized_fraction[7]) );
  OAI222D0 U11 ( .A1(n28), .A2(n20), .B1(n29), .B2(n21), .C1(n19), .C2(n5), 
        .ZN(normalized_fraction[9]) );
  OAI22D1 U12 ( .A1(n28), .A2(n23), .B1(n5), .B2(n22), .ZN(
        normalized_fraction[6]) );
  OAI222D0 U13 ( .A1(n28), .A2(n7), .B1(n29), .B2(n8), .C1(n6), .C2(n5), .ZN(
        normalized_fraction[22]) );
  OAI222D0 U14 ( .A1(n28), .A2(n19), .B1(n29), .B2(n20), .C1(n5), .C2(n18), 
        .ZN(normalized_fraction[10]) );
  OAI222D0 U15 ( .A1(n28), .A2(n18), .B1(n29), .B2(n19), .C1(n5), .C2(n17), 
        .ZN(normalized_fraction[11]) );
  OAI222D0 U16 ( .A1(n28), .A2(n17), .B1(n29), .B2(n18), .C1(n5), .C2(n16), 
        .ZN(normalized_fraction[12]) );
  OAI222D0 U17 ( .A1(n28), .A2(n16), .B1(n29), .B2(n17), .C1(n5), .C2(n15), 
        .ZN(normalized_fraction[13]) );
  OAI222D0 U18 ( .A1(n28), .A2(n15), .B1(n29), .B2(n16), .C1(n5), .C2(n14), 
        .ZN(normalized_fraction[14]) );
  OAI222D0 U19 ( .A1(n28), .A2(n14), .B1(n29), .B2(n15), .C1(n5), .C2(n13), 
        .ZN(normalized_fraction[15]) );
  OAI222D0 U20 ( .A1(n28), .A2(n13), .B1(n29), .B2(n14), .C1(n5), .C2(n12), 
        .ZN(normalized_fraction[16]) );
  OAI222D0 U21 ( .A1(n28), .A2(n12), .B1(n29), .B2(n13), .C1(n5), .C2(n11), 
        .ZN(normalized_fraction[17]) );
  OAI222D0 U22 ( .A1(n28), .A2(n11), .B1(n29), .B2(n12), .C1(n5), .C2(n10), 
        .ZN(normalized_fraction[18]) );
  OAI222D0 U23 ( .A1(n28), .A2(n10), .B1(n29), .B2(n11), .C1(n5), .C2(n9), 
        .ZN(normalized_fraction[19]) );
  OAI222D0 U24 ( .A1(n28), .A2(n9), .B1(n29), .B2(n10), .C1(n5), .C2(n8), .ZN(
        normalized_fraction[20]) );
  OAI222D0 U25 ( .A1(n28), .A2(n8), .B1(n29), .B2(n9), .C1(n5), .C2(n7), .ZN(
        normalized_fraction[21]) );
  NR2D1 U26 ( .A1(n5), .A2(n23), .ZN(normalized_fraction[5]) );
  INVD1 U27 ( .I(full_scale_product[29]), .ZN(n7) );
  INVD1 U28 ( .I(full_scale_product[28]), .ZN(n8) );
  INVD1 U30 ( .I(full_scale_product[27]), .ZN(n9) );
  INVD1 U31 ( .I(full_scale_product[26]), .ZN(n10) );
  INVD1 U32 ( .I(full_scale_product[25]), .ZN(n11) );
  INVD1 U33 ( .I(full_scale_product[24]), .ZN(n12) );
  INVD1 U34 ( .I(full_scale_product[23]), .ZN(n13) );
  INVD1 U35 ( .I(full_scale_product[22]), .ZN(n14) );
  INVD1 U36 ( .I(full_scale_product[21]), .ZN(n15) );
  INVD1 U37 ( .I(full_scale_product[20]), .ZN(n16) );
  INVD1 U38 ( .I(full_scale_product[19]), .ZN(n17) );
  INVD1 U39 ( .I(full_scale_product[18]), .ZN(n18) );
  INVD1 U40 ( .I(full_scale_product[17]), .ZN(n19) );
  INVD1 U41 ( .I(full_scale_product[16]), .ZN(n20) );
  INVD1 U42 ( .I(full_scale_product[15]), .ZN(n21) );
  INVD1 U43 ( .I(full_scale_product[14]), .ZN(n22) );
  INVD1 U44 ( .I(full_scale_product[13]), .ZN(n23) );
  INVD1 U45 ( .I(full_scale_product[31]), .ZN(n5) );
  NR2D1 U47 ( .A1(y_mantissa[21]), .A2(n4), .ZN(coefficient_5_) );
  NR2D1 U48 ( .A1(y_mantissa[21]), .A2(y_mantissa[22]), .ZN(coefficient_1) );
  IND2D1 U49 ( .A1(coefficient_1), .B1(n4), .ZN(coefficient_0) );
  CKND0 U46 ( .I(y_mantissa[22]), .ZN(n4) );
endmodule


module oadm_fixed_l2_div_specialized ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;

  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4;

  oadm_fixed_div_specialized_2_16_16_8_cb_88_61_49 implementation ( .x({
        x[31:16], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y({y[31:16], 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .result({result[31:5], SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4}) );
endmodule


module abs_l2_no_w ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;

  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4;
  assign result[0] = 1'b0;
  assign result[4] = 1'b0;
  assign result[3] = 1'b0;
  assign result[2] = 1'b0;
  assign result[1] = 1'b0;

  oadm_fixed_l2_div_specialized dut ( .x({x[31:16], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y({y[31:16], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .result({result[31:5], 
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4}) );
endmodule

