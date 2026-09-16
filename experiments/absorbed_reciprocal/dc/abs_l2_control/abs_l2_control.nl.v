/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Tue Sep 15 21:55:23 2026
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
  INVD1 U76 ( .I(b[3]), .ZN(n121) );
  XNR2D1 U77 ( .A1(n137), .A2(n2), .ZN(product[9]) );
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
  AN2XD1 U102 ( .A1(n48), .A2(n27), .Z(n136) );
  INVD1 U103 ( .I(a[4]), .ZN(n138) );
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
  wire   x_residual_22_, y_residual_22_, N23, N22, N21, N20, N19, N18, N17,
         N16, N15, N14, N13, n1, n3, n8, n9, n10, n11, n12, n130, n140, n150,
         n160, n170, n190, n210, n220, n230;
  wire   [12:5] x_product;
  wire   [12:1] y_product;
  wire   [9:3] midpoint_product;
  wire   [24:16] sub_0_root_sub_58_carry;
  wire   [24:19] add_1_root_sub_58_carry;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6;

  oadm_fixed_div_specialized_plane_LEVEL2_RESIDUAL_DROP16_DW_mult_uns_0 mult_54 ( 
        .a({n1, n3, x_mantissa[22:21], n3, n1}), .b({n1, n3, y_mantissa[22:21], 
        n3, n1}), .product({SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        midpoint_product, SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4}) );
  oadm_fixed_div_specialized_plane_LEVEL2_RESIDUAL_DROP16_DW_mult_tc_1 mult_44 ( 
        .a({y_residual_22_, y_residual_22_, y_residual_22_, y_mantissa[19:16]}), .b({n1, n3, x_mantissa[22:21], n3, n1}), .product({y_product, 
        SYNOPSYS_UNCONNECTED__5}) );
  oadm_fixed_div_specialized_plane_LEVEL2_RESIDUAL_DROP16_DW_mult_tc_0 mult_42 ( 
        .a({x_residual_22_, x_residual_22_, x_residual_22_, x_mantissa[19:16]}), .b({n1, n3, y_mantissa[22:21], n3, n1}), .product({x_product, N16, N15, N14, 
        N13, SYNOPSYS_UNCONNECTED__6}) );
  TIEL U3 ( .ZN(n1) );
  TIEH U4 ( .Z(n3) );
  FA1D0 U9 ( .A(midpoint_product[6]), .B(x_product[9]), .CI(
        add_1_root_sub_58_carry[21]), .CO(add_1_root_sub_58_carry[22]), .S(N21) );
  FA1D0 U10 ( .A(N21), .B(n150), .CI(sub_0_root_sub_58_carry[21]), .CO(
        sub_0_root_sub_58_carry[22]), .S(plane_exact[21]) );
  INVD1 U11 ( .I(y_product[9]), .ZN(n150) );
  FA1D0 U12 ( .A(N22), .B(n160), .CI(sub_0_root_sub_58_carry[22]), .CO(
        sub_0_root_sub_58_carry[23]), .S(plane_exact[22]) );
  INVD1 U13 ( .I(y_product[10]), .ZN(n160) );
  FA1D0 U14 ( .A(midpoint_product[8]), .B(x_product[11]), .CI(
        add_1_root_sub_58_carry[23]), .CO(add_1_root_sub_58_carry[24]), .S(N23) );
  FA1D0 U15 ( .A(N23), .B(n170), .CI(sub_0_root_sub_58_carry[23]), .CO(
        sub_0_root_sub_58_carry[24]), .S(plane_exact[23]) );
  INVD1 U16 ( .I(y_product[11]), .ZN(n170) );
  FA1D0 U17 ( .A(midpoint_product[5]), .B(x_product[8]), .CI(
        add_1_root_sub_58_carry[20]), .CO(add_1_root_sub_58_carry[21]), .S(N20) );
  FA1D0 U18 ( .A(N20), .B(n140), .CI(sub_0_root_sub_58_carry[20]), .CO(
        sub_0_root_sub_58_carry[21]), .S(plane_exact[20]) );
  INVD1 U19 ( .I(y_product[8]), .ZN(n140) );
  FA1D0 U20 ( .A(N19), .B(n130), .CI(sub_0_root_sub_58_carry[19]), .CO(
        sub_0_root_sub_58_carry[20]), .S(plane_exact[19]) );
  INVD1 U21 ( .I(y_product[7]), .ZN(n130) );
  FA1D0 U22 ( .A(N17), .B(n11), .CI(sub_0_root_sub_58_carry[17]), .CO(
        sub_0_root_sub_58_carry[18]), .S(plane_exact[17]) );
  INVD1 U23 ( .I(y_product[5]), .ZN(n11) );
  INVD1 U24 ( .I(x_product[5]), .ZN(N17) );
  FA1D0 U26 ( .A(midpoint_product[7]), .B(x_product[10]), .CI(
        add_1_root_sub_58_carry[22]), .CO(add_1_root_sub_58_carry[23]), .S(N22) );
  FA1D0 U27 ( .A(midpoint_product[4]), .B(x_product[7]), .CI(
        add_1_root_sub_58_carry[19]), .CO(add_1_root_sub_58_carry[20]), .S(N19) );
  FA1D0 U28 ( .A(N18), .B(n12), .CI(sub_0_root_sub_58_carry[18]), .CO(
        sub_0_root_sub_58_carry[19]), .S(plane_exact[18]) );
  INVD1 U29 ( .I(y_product[6]), .ZN(n12) );
  FA1D0 U30 ( .A(N16), .B(n10), .CI(sub_0_root_sub_58_carry[16]), .CO(
        sub_0_root_sub_58_carry[17]), .S(plane_exact[16]) );
  INVD1 U31 ( .I(y_product[4]), .ZN(n10) );
  INVD1 U32 ( .I(N15), .ZN(n190) );
  FA1D0 U34 ( .A(midpoint_product[3]), .B(x_product[6]), .CI(x_product[5]), 
        .CO(add_1_root_sub_58_carry[19]), .S(N18) );
  INVD1 U36 ( .I(x_mantissa[20]), .ZN(x_residual_22_) );
  INVD1 U37 ( .I(y_mantissa[20]), .ZN(y_residual_22_) );
  AN2D0 U40 ( .A1(n9), .A2(n190), .Z(n8) );
  OAI22D0 U41 ( .A1(n9), .A2(n190), .B1(y_product[3]), .B2(n8), .ZN(
        sub_0_root_sub_58_carry[16]) );
  XNR3D0 U5 ( .A1(x_product[12]), .A2(add_1_root_sub_58_carry[24]), .A3(n210), 
        .ZN(plane_exact[24]) );
  XOR3D0 U6 ( .A1(sub_0_root_sub_58_carry[24]), .A2(midpoint_product[9]), .A3(
        y_product[12]), .Z(n210) );
  MAOI222D0 U7 ( .A(N14), .B(n230), .C(n220), .ZN(n9) );
  CKND0 U8 ( .I(y_product[2]), .ZN(n220) );
  IND2D0 U25 ( .A1(N13), .B1(y_product[1]), .ZN(n230) );
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
  CKBD1 U37 ( .I(result_fraction[9]), .Z(result[9]) );
  CKBD1 U38 ( .I(result_fraction[8]), .Z(result[8]) );
  FA1D0 U39 ( .A(N4), .B(exponent_adjust[1]), .CI(n1), .CO(
        add_0_root_add_0_root_add_22_2_carry[2]), .S(result[24]) );
  FA1D0 U40 ( .A(N5), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[2]), .CO(
        add_0_root_add_0_root_add_22_2_carry[3]), .S(result[25]) );
  FA1D0 U41 ( .A(N6), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[3]), .CO(
        add_0_root_add_0_root_add_22_2_carry[4]), .S(result[26]) );
  FA1D0 U42 ( .A(N7), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[4]), .CO(
        add_0_root_add_0_root_add_22_2_carry[5]), .S(result[27]) );
  FA1D0 U43 ( .A(N8), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[5]), .CO(
        add_0_root_add_0_root_add_22_2_carry[6]), .S(result[28]) );
  FA1D0 U44 ( .A(N9), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[6]), .CO(
        add_0_root_add_0_root_add_22_2_carry[7]), .S(result[29]) );
  CKBD1 U51 ( .I(y[22]), .Z(fraction_y[22]) );
  XOR3D1 U54 ( .A1(N10), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_22_2_carry[7]), .Z(result[30]) );
  CKBD1 U56 ( .I(y[21]), .Z(fraction_y[21]) );
  CKBD1 U58 ( .I(x[22]), .Z(fraction_x[22]) );
  CKBD1 U60 ( .I(x[21]), .Z(fraction_x[21]) );
  INVD1 U65 ( .I(y[29]), .ZN(N17) );
  INVD1 U66 ( .I(y[24]), .ZN(N12) );
  INVD1 U67 ( .I(y[25]), .ZN(N13) );
  INVD1 U68 ( .I(y[26]), .ZN(N14) );
  INVD1 U69 ( .I(y[27]), .ZN(N15) );
  INVD1 U70 ( .I(y[28]), .ZN(N16) );
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
  input [8:0] a;
  input [7:0] b;
  output [16:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n175, n176,
         n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187,
         n188, n189;

  FA1D0 U3 ( .A(n18), .B(n17), .CI(n3), .CO(n2), .S(product[14]) );
  FA1D0 U4 ( .A(n23), .B(n19), .CI(n4), .CO(n3), .S(product[13]) );
  FA1D0 U5 ( .A(n26), .B(n24), .CI(n5), .CO(n4), .S(product[12]) );
  FA1D0 U6 ( .A(n31), .B(n27), .CI(n6), .CO(n5), .S(product[11]) );
  FA1D0 U7 ( .A(n36), .B(n32), .CI(n7), .CO(n6), .S(product[10]) );
  FA1D0 U8 ( .A(n37), .B(n43), .CI(n8), .CO(n7), .S(product[9]) );
  FA1D0 U9 ( .A(n44), .B(n49), .CI(n9), .CO(n8), .S(product[8]) );
  FA1D0 U10 ( .A(n50), .B(n56), .CI(n10), .CO(n9), .S(product[7]) );
  FA1D0 U11 ( .A(n57), .B(n60), .CI(n11), .CO(n10), .S(product[6]) );
  FA1D0 U12 ( .A(n61), .B(n64), .CI(n12), .CO(n11), .S(product[5]) );
  FA1D0 U13 ( .A(n65), .B(n66), .CI(n13), .CO(n12), .S(product[4]) );
  FA1D0 U14 ( .A(n67), .B(n103), .CI(n14), .CO(n13), .S(product[3]) );
  FA1D0 U15 ( .A(n119), .B(n111), .CI(n15), .CO(n14), .S(product[2]) );
  HA1D0 U16 ( .A(n120), .B(n112), .CO(n15), .S(product[1]) );
  FA1D0 U17 ( .A(n69), .B(n77), .CI(n20), .CO(n16), .S(n17) );
  FA1D0 U18 ( .A(n21), .B(n78), .CI(n22), .CO(n18), .S(n19) );
  HA1D0 U19 ( .A(n70), .B(n86), .CO(n20), .S(n21) );
  CMPE42D1 U20 ( .A(n71), .B(n87), .C(n79), .CIX(n25), .D(n28), .CO(n23), 
        .COX(n22), .S(n24) );
  CMPE42D1 U21 ( .A(n88), .B(n95), .C(n29), .CIX(n30), .D(n33), .CO(n26), 
        .COX(n25), .S(n27) );
  HA1D0 U22 ( .A(n72), .B(n80), .CO(n28), .S(n29) );
  CMPE42D1 U23 ( .A(n40), .B(n89), .C(n38), .CIX(n35), .D(n34), .CO(n31), 
        .COX(n30), .S(n32) );
  FA1D0 U24 ( .A(n73), .B(n96), .CI(n81), .CO(n33), .S(n34) );
  CMPE42D1 U25 ( .A(n45), .B(n41), .C(n39), .CIX(n46), .D(n42), .CO(n36), 
        .COX(n35), .S(n37) );
  FA1D0 U26 ( .A(n97), .B(n90), .CI(n104), .CO(n38), .S(n39) );
  HA1D0 U27 ( .A(n74), .B(n82), .CO(n40), .S(n41) );
  CMPE42D1 U28 ( .A(n105), .B(n113), .C(n53), .CIX(n47), .D(n48), .CO(n43), 
        .COX(n42), .S(n44) );
  CMPE42D1 U29 ( .A(n75), .B(n83), .C(n91), .CIX(n51), .D(n98), .CO(n46), 
        .COX(n45), .S(n47) );
  CMPE42D1 U30 ( .A(n58), .B(n106), .C(n54), .CIX(n52), .D(n55), .CO(n49), 
        .COX(n48), .S(n50) );
  FA1D0 U31 ( .A(n92), .B(n114), .CI(n99), .CO(n51), .S(n52) );
  HA1D0 U32 ( .A(n76), .B(n84), .CO(n53), .S(n54) );
  CMPE42D1 U33 ( .A(n100), .B(n115), .C(n107), .CIX(n59), .D(n62), .CO(n56), 
        .COX(n55), .S(n57) );
  HA1D0 U34 ( .A(n85), .B(n93), .CO(n58), .S(n59) );
  FA1D0 U35 ( .A(n108), .B(n116), .CI(n63), .CO(n60), .S(n61) );
  HA1D0 U36 ( .A(n94), .B(n101), .CO(n62), .S(n63) );
  FA1D0 U37 ( .A(n102), .B(n117), .CI(n109), .CO(n64), .S(n65) );
  HA1D0 U38 ( .A(n110), .B(n118), .CO(n66), .S(n67) );
  INVD1 U111 ( .I(a[6]), .ZN(n178) );
  INVD1 U112 ( .I(a[8]), .ZN(n176) );
  INVD1 U113 ( .I(a[7]), .ZN(n177) );
  INVD1 U114 ( .I(a[4]), .ZN(n180) );
  INVD1 U115 ( .I(a[5]), .ZN(n179) );
  INVD1 U116 ( .I(a[3]), .ZN(n181) );
  INVD1 U117 ( .I(a[1]), .ZN(n183) );
  INVD1 U118 ( .I(a[2]), .ZN(n182) );
  INVD1 U119 ( .I(a[0]), .ZN(n184) );
  INVD1 U120 ( .I(b[1]), .ZN(n187) );
  INVD1 U121 ( .I(b[6]), .ZN(n185) );
  INVD1 U122 ( .I(b[3]), .ZN(n188) );
  INVD1 U123 ( .I(b[5]), .ZN(n186) );
  INVD1 U124 ( .I(b[7]), .ZN(n175) );
  XOR3D0 U125 ( .A1(n2), .A2(n16), .A3(n189), .Z(product[15]) );
  NR2D0 U126 ( .A1(n176), .A2(n175), .ZN(n189) );
  NR2D0 U127 ( .A1(n184), .A2(n185), .ZN(product[0]) );
  NR2D0 U128 ( .A1(n180), .A2(n188), .ZN(n99) );
  NR2D0 U129 ( .A1(n188), .A2(n179), .ZN(n98) );
  NR2D0 U130 ( .A1(n188), .A2(n178), .ZN(n97) );
  NR2D0 U131 ( .A1(n188), .A2(n177), .ZN(n96) );
  NR2D0 U132 ( .A1(n176), .A2(n188), .ZN(n95) );
  NR2D0 U133 ( .A1(n184), .A2(n186), .ZN(n94) );
  NR2D0 U134 ( .A1(n186), .A2(n183), .ZN(n93) );
  NR2D0 U135 ( .A1(n186), .A2(n182), .ZN(n92) );
  NR2D0 U136 ( .A1(n186), .A2(n181), .ZN(n91) );
  NR2D0 U137 ( .A1(n180), .A2(n186), .ZN(n90) );
  NR2D0 U138 ( .A1(n179), .A2(n186), .ZN(n89) );
  NR2D0 U139 ( .A1(n178), .A2(n186), .ZN(n88) );
  NR2D0 U140 ( .A1(n177), .A2(n186), .ZN(n87) );
  NR2D0 U141 ( .A1(n176), .A2(n186), .ZN(n86) );
  NR2D0 U142 ( .A1(n184), .A2(n185), .ZN(n85) );
  NR2D0 U143 ( .A1(n183), .A2(n185), .ZN(n84) );
  NR2D0 U144 ( .A1(n182), .A2(n185), .ZN(n83) );
  NR2D0 U145 ( .A1(n181), .A2(n185), .ZN(n82) );
  NR2D0 U146 ( .A1(n180), .A2(n185), .ZN(n81) );
  NR2D0 U147 ( .A1(n179), .A2(n185), .ZN(n80) );
  NR2D0 U148 ( .A1(n178), .A2(n185), .ZN(n79) );
  NR2D0 U149 ( .A1(n177), .A2(n185), .ZN(n78) );
  NR2D0 U150 ( .A1(n176), .A2(n185), .ZN(n77) );
  NR2D0 U151 ( .A1(n175), .A2(n184), .ZN(n76) );
  NR2D0 U152 ( .A1(n175), .A2(n183), .ZN(n75) );
  NR2D0 U153 ( .A1(n175), .A2(n182), .ZN(n74) );
  NR2D0 U154 ( .A1(n175), .A2(n181), .ZN(n73) );
  NR2D0 U155 ( .A1(n175), .A2(n180), .ZN(n72) );
  NR2D0 U156 ( .A1(n175), .A2(n179), .ZN(n71) );
  NR2D0 U157 ( .A1(n175), .A2(n178), .ZN(n70) );
  NR2D0 U158 ( .A1(n175), .A2(n177), .ZN(n69) );
  NR2D0 U159 ( .A1(n185), .A2(n183), .ZN(n120) );
  NR2D0 U160 ( .A1(n185), .A2(n182), .ZN(n119) );
  NR2D0 U161 ( .A1(n185), .A2(n181), .ZN(n118) );
  NR2D0 U162 ( .A1(n185), .A2(n180), .ZN(n117) );
  NR2D0 U163 ( .A1(n185), .A2(n179), .ZN(n116) );
  NR2D0 U164 ( .A1(n185), .A2(n178), .ZN(n115) );
  NR2D0 U165 ( .A1(n185), .A2(n177), .ZN(n114) );
  NR2D0 U166 ( .A1(n176), .A2(n185), .ZN(n113) );
  NR2D0 U167 ( .A1(n184), .A2(n187), .ZN(n112) );
  NR2D0 U168 ( .A1(n183), .A2(n187), .ZN(n111) );
  NR2D0 U169 ( .A1(n182), .A2(n187), .ZN(n110) );
  NR2D0 U170 ( .A1(n181), .A2(n187), .ZN(n109) );
  NR2D0 U171 ( .A1(n180), .A2(n187), .ZN(n108) );
  NR2D0 U172 ( .A1(n179), .A2(n187), .ZN(n107) );
  NR2D0 U173 ( .A1(n178), .A2(n187), .ZN(n106) );
  NR2D0 U174 ( .A1(n177), .A2(n187), .ZN(n105) );
  NR2D0 U175 ( .A1(n176), .A2(n187), .ZN(n104) );
  NR2D0 U176 ( .A1(n184), .A2(n188), .ZN(n103) );
  NR2D0 U177 ( .A1(n188), .A2(n183), .ZN(n102) );
  NR2D0 U178 ( .A1(n188), .A2(n182), .ZN(n101) );
  NR2D0 U179 ( .A1(n188), .A2(n181), .ZN(n100) );
endmodule


module oadm_fixed_div_specialized_2_16_16_8_cb_88_61_49 ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   coefficient_5_, coefficient_3, coefficient_1, coefficient_0,
         exponent_adjust_2_, n2, n20, n21, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n22;
  wire   [22:16] x_mantissa;
  wire   [22:16] y_mantissa;
  wire   [24:16] plane_full;
  wire   [15:0] reduced_scale_product;
  wire   [22:8] normalized_fraction;
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

  OR2D1 U21 ( .A1(y_mantissa[21]), .A2(coefficient_1), .Z(coefficient_3) );
  oadm_fixed_div_specialized_plane_LEVEL2_RESIDUAL_DROP16 plane ( .x_mantissa(
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
        1'b0, 1'b0, 1'b0}), .exponent_adjust({exponent_adjust_2_, 
        exponent_adjust_2_, n2}), .result({result[31:8], 
        SYNOPSYS_UNCONNECTED__52, SYNOPSYS_UNCONNECTED__53, 
        SYNOPSYS_UNCONNECTED__54, SYNOPSYS_UNCONNECTED__55, 
        SYNOPSYS_UNCONNECTED__56, SYNOPSYS_UNCONNECTED__57, 
        SYNOPSYS_UNCONNECTED__58, SYNOPSYS_UNCONNECTED__59}) );
  oadm_fixed_div_specialized_2_16_16_8_cb_88_61_49_DW_mult_uns_0_DW_mult_uns_1 mult_121 ( 
        .a(plane_full), .b({n3, coefficient_0, coefficient_5_, n22, 
        coefficient_3, n22, coefficient_1, coefficient_0}), .product({
        SYNOPSYS_UNCONNECTED__60, reduced_scale_product}) );
  ND2D1 U3 ( .A1(n20), .A2(n21), .ZN(exponent_adjust_2_) );
  INVD1 U4 ( .I(n20), .ZN(n2) );
  INVD1 U5 ( .I(reduced_scale_product[14]), .ZN(n5) );
  INVD1 U6 ( .I(reduced_scale_product[13]), .ZN(n6) );
  INVD1 U7 ( .I(reduced_scale_product[12]), .ZN(n7) );
  INVD1 U8 ( .I(reduced_scale_product[11]), .ZN(n8) );
  INVD1 U9 ( .I(reduced_scale_product[10]), .ZN(n9) );
  INVD1 U10 ( .I(reduced_scale_product[9]), .ZN(n10) );
  INVD1 U11 ( .I(reduced_scale_product[8]), .ZN(n11) );
  INVD1 U12 ( .I(reduced_scale_product[7]), .ZN(n12) );
  INVD1 U13 ( .I(reduced_scale_product[6]), .ZN(n13) );
  INVD1 U14 ( .I(reduced_scale_product[5]), .ZN(n14) );
  INVD1 U15 ( .I(reduced_scale_product[4]), .ZN(n15) );
  ND2D1 U16 ( .A1(reduced_scale_product[14]), .A2(n4), .ZN(n20) );
  ND2D1 U17 ( .A1(n5), .A2(n4), .ZN(n21) );
  OAI222D0 U18 ( .A1(n20), .A2(n6), .B1(n21), .B2(n7), .C1(n5), .C2(n4), .ZN(
        normalized_fraction[22]) );
  OAI222D0 U19 ( .A1(n20), .A2(n18), .B1(n19), .B2(n21), .C1(n4), .C2(n17), 
        .ZN(normalized_fraction[10]) );
  OAI222D0 U20 ( .A1(n20), .A2(n17), .B1(n18), .B2(n21), .C1(n4), .C2(n16), 
        .ZN(normalized_fraction[11]) );
  OAI222D0 U22 ( .A1(n20), .A2(n16), .B1(n21), .B2(n17), .C1(n4), .C2(n15), 
        .ZN(normalized_fraction[12]) );
  OAI222D0 U23 ( .A1(n20), .A2(n15), .B1(n21), .B2(n16), .C1(n4), .C2(n14), 
        .ZN(normalized_fraction[13]) );
  OAI222D0 U24 ( .A1(n20), .A2(n14), .B1(n21), .B2(n15), .C1(n4), .C2(n13), 
        .ZN(normalized_fraction[14]) );
  OAI222D0 U25 ( .A1(n20), .A2(n13), .B1(n21), .B2(n14), .C1(n4), .C2(n12), 
        .ZN(normalized_fraction[15]) );
  OAI222D0 U26 ( .A1(n20), .A2(n12), .B1(n21), .B2(n13), .C1(n4), .C2(n11), 
        .ZN(normalized_fraction[16]) );
  OAI222D0 U27 ( .A1(n20), .A2(n11), .B1(n21), .B2(n12), .C1(n4), .C2(n10), 
        .ZN(normalized_fraction[17]) );
  OAI222D0 U28 ( .A1(n20), .A2(n10), .B1(n21), .B2(n11), .C1(n4), .C2(n9), 
        .ZN(normalized_fraction[18]) );
  OAI222D0 U29 ( .A1(n20), .A2(n9), .B1(n21), .B2(n10), .C1(n4), .C2(n8), .ZN(
        normalized_fraction[19]) );
  OAI222D0 U30 ( .A1(n20), .A2(n8), .B1(n21), .B2(n9), .C1(n4), .C2(n7), .ZN(
        normalized_fraction[20]) );
  OAI222D0 U31 ( .A1(n20), .A2(n7), .B1(n21), .B2(n8), .C1(n4), .C2(n6), .ZN(
        normalized_fraction[21]) );
  OAI22D1 U32 ( .A1(n4), .A2(n18), .B1(n20), .B2(n19), .ZN(
        normalized_fraction[9]) );
  NR2D1 U33 ( .A1(n19), .A2(n4), .ZN(normalized_fraction[8]) );
  INVD1 U34 ( .I(reduced_scale_product[3]), .ZN(n16) );
  INVD1 U35 ( .I(reduced_scale_product[2]), .ZN(n17) );
  INVD1 U36 ( .I(reduced_scale_product[1]), .ZN(n18) );
  INVD1 U37 ( .I(reduced_scale_product[15]), .ZN(n4) );
  INVD1 U38 ( .I(reduced_scale_product[0]), .ZN(n19) );
  NR2D1 U40 ( .A1(y_mantissa[21]), .A2(y_mantissa[22]), .ZN(coefficient_1) );
  IND2D1 U41 ( .A1(coefficient_1), .B1(n3), .ZN(coefficient_0) );
  NR2D1 U42 ( .A1(y_mantissa[21]), .A2(n3), .ZN(coefficient_5_) );
  TIEL U45 ( .ZN(n22) );
  CKND0 U39 ( .I(y_mantissa[22]), .ZN(n3) );
endmodule


module oadm_fixed_l2_div_specialized ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;

  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7;

  oadm_fixed_div_specialized_2_16_16_8_cb_88_61_49 implementation ( .x({
        x[31:16], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y({y[31:16], 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .result({result[31:8], SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7}) );
endmodule


module abs_l2_control ( x, y, result );
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

  oadm_fixed_l2_div_specialized dut ( .x({x[31:16], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y({y[31:16], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .result({result[31:8], 
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7}) );
endmodule

