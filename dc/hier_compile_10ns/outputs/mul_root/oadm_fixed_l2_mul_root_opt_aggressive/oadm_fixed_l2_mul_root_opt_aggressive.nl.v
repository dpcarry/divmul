/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Thu Sep  3 12:59:50 2026
/////////////////////////////////////////////////////////////


module oadm_fixed_mul_plane_root_opt_LEVEL2_RESIDUAL_DROP14_DW_mult_tc_1 ( a, 
        b, product );
  input [6:0] a;
  input [5:0] b;
  output [12:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n12, n14, n15, n16, n17, n18,
         n20, n21, n23, n24, n25, n26, n27, n28, n29, n30, n31, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144;

  FA1D0 U2 ( .A(n130), .B(n12), .CI(n2), .CO(n1), .S(product[11]) );
  FA1D0 U3 ( .A(n14), .B(n128), .CI(n3), .CO(n2), .S(product[10]) );
  FA1D0 U4 ( .A(n16), .B(n15), .CI(n4), .CO(n3), .S(product[9]) );
  FA1D0 U5 ( .A(n20), .B(n17), .CI(n5), .CO(n4), .S(product[8]) );
  FA1D0 U6 ( .A(n21), .B(n23), .CI(n6), .CO(n5), .S(product[7]) );
  FA1D0 U7 ( .A(n25), .B(n24), .CI(n7), .CO(n6), .S(product[6]) );
  FA1D0 U8 ( .A(n27), .B(n26), .CI(n8), .CO(n7), .S(product[5]) );
  FA1D0 U9 ( .A(n28), .B(n29), .CI(n9), .CO(n8), .S(product[4]) );
  FA1D0 U10 ( .A(n30), .B(n31), .CI(n10), .CO(n9), .S(product[3]) );
  FA1D0 U11 ( .A(n135), .B(n46), .CI(n136), .CO(n10), .S(product[2]) );
  FA1D0 U14 ( .A(n34), .B(n18), .CI(n39), .CO(n14), .S(n15) );
  FA1D0 U15 ( .A(n40), .B(n35), .CI(n127), .CO(n16), .S(n17) );
  FA1D0 U17 ( .A(a[6]), .B(n41), .CI(n127), .CO(n20), .S(n21) );
  FA1D0 U19 ( .A(n131), .B(n36), .CI(n42), .CO(n23), .S(n24) );
  FA1D0 U20 ( .A(n132), .B(n37), .CI(n43), .CO(n25), .S(n26) );
  FA1D0 U21 ( .A(n133), .B(n38), .CI(n44), .CO(n27), .S(n28) );
  HA1D0 U22 ( .A(n45), .B(n134), .CO(n29), .S(n30) );
  INVD1 U94 ( .I(n12), .ZN(n128) );
  INVD1 U95 ( .I(b[3]), .ZN(n129) );
  INVD1 U96 ( .I(n18), .ZN(n127) );
  INVD1 U97 ( .I(a[0]), .ZN(n136) );
  INVD1 U98 ( .I(a[6]), .ZN(n130) );
  INVD1 U99 ( .I(a[1]), .ZN(n135) );
  INVD1 U100 ( .I(a[2]), .ZN(n134) );
  INVD1 U101 ( .I(a[3]), .ZN(n133) );
  INVD1 U102 ( .I(a[5]), .ZN(n131) );
  INVD1 U103 ( .I(a[4]), .ZN(n132) );
  CKND0 U104 ( .I(n136), .ZN(product[1]) );
  CKND0 U105 ( .I(n1), .ZN(product[12]) );
  NR2D0 U106 ( .A1(b[2]), .A2(n136), .ZN(n46) );
  OAI22D0 U107 ( .A1(n137), .A2(n138), .B1(b[2]), .B2(n139), .ZN(n45) );
  CKXOR2D0 U108 ( .A1(b[3]), .A2(n136), .Z(n137) );
  OAI22D0 U109 ( .A1(n139), .A2(n138), .B1(b[2]), .B2(n140), .ZN(n44) );
  CKXOR2D0 U110 ( .A1(b[3]), .A2(n135), .Z(n139) );
  OAI22D0 U111 ( .A1(n140), .A2(n138), .B1(b[2]), .B2(n141), .ZN(n43) );
  CKXOR2D0 U112 ( .A1(b[3]), .A2(n134), .Z(n140) );
  OAI22D0 U113 ( .A1(n141), .A2(n138), .B1(b[2]), .B2(n142), .ZN(n42) );
  CKXOR2D0 U114 ( .A1(b[3]), .A2(n133), .Z(n141) );
  OAI22D0 U115 ( .A1(n142), .A2(n138), .B1(b[2]), .B2(n143), .ZN(n41) );
  CKXOR2D0 U116 ( .A1(b[3]), .A2(n132), .Z(n142) );
  OAI22D0 U117 ( .A1(n143), .A2(n138), .B1(b[2]), .B2(n144), .ZN(n40) );
  CKXOR2D0 U118 ( .A1(b[3]), .A2(n131), .Z(n143) );
  AO21D0 U119 ( .A1(n138), .A2(b[2]), .B(n144), .Z(n39) );
  CKXOR2D0 U120 ( .A1(n129), .A2(a[6]), .Z(n144) );
  NR2D0 U121 ( .A1(b[3]), .A2(n136), .ZN(n38) );
  OAI22D0 U122 ( .A1(n136), .A2(n129), .B1(b[3]), .B2(n135), .ZN(n37) );
  OAI22D0 U123 ( .A1(n135), .A2(n129), .B1(b[3]), .B2(n134), .ZN(n36) );
  OAI22D0 U124 ( .A1(n133), .A2(n129), .B1(b[3]), .B2(n132), .ZN(n35) );
  OAI22D0 U125 ( .A1(n132), .A2(n129), .B1(b[3]), .B2(n131), .ZN(n34) );
  OAI32D0 U126 ( .A1(n129), .A2(a[0]), .A3(b[2]), .B1(n129), .B2(n138), .ZN(
        n31) );
  OAI22D0 U129 ( .A1(n134), .A2(n129), .B1(b[3]), .B2(n133), .ZN(n18) );
  OAI22D0 U130 ( .A1(b[3]), .A2(n130), .B1(n131), .B2(n129), .ZN(n12) );
  IND2D0 U127 ( .A1(b[3]), .B1(b[2]), .ZN(n138) );
endmodule


module oadm_fixed_mul_plane_root_opt_LEVEL2_RESIDUAL_DROP14_DW_mult_tc_0 ( a, 
        b, product );
  input [6:0] a;
  input [5:0] b;
  output [12:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n12, n14, n15, n16, n17, n18,
         n20, n21, n23, n24, n25, n26, n27, n28, n29, n30, n31, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144;

  FA1D0 U2 ( .A(n130), .B(n12), .CI(n2), .CO(n1), .S(product[11]) );
  FA1D0 U3 ( .A(n14), .B(n128), .CI(n3), .CO(n2), .S(product[10]) );
  FA1D0 U4 ( .A(n16), .B(n15), .CI(n4), .CO(n3), .S(product[9]) );
  FA1D0 U5 ( .A(n20), .B(n17), .CI(n5), .CO(n4), .S(product[8]) );
  FA1D0 U6 ( .A(n21), .B(n23), .CI(n6), .CO(n5), .S(product[7]) );
  FA1D0 U7 ( .A(n25), .B(n24), .CI(n7), .CO(n6), .S(product[6]) );
  FA1D0 U8 ( .A(n27), .B(n26), .CI(n8), .CO(n7), .S(product[5]) );
  FA1D0 U9 ( .A(n28), .B(n29), .CI(n9), .CO(n8), .S(product[4]) );
  FA1D0 U10 ( .A(n30), .B(n31), .CI(n10), .CO(n9), .S(product[3]) );
  FA1D0 U11 ( .A(n135), .B(n46), .CI(n136), .CO(n10), .S(product[2]) );
  FA1D0 U14 ( .A(n34), .B(n18), .CI(n39), .CO(n14), .S(n15) );
  FA1D0 U15 ( .A(n40), .B(n35), .CI(n127), .CO(n16), .S(n17) );
  FA1D0 U17 ( .A(a[6]), .B(n41), .CI(n127), .CO(n20), .S(n21) );
  FA1D0 U19 ( .A(n131), .B(n36), .CI(n42), .CO(n23), .S(n24) );
  FA1D0 U20 ( .A(n132), .B(n37), .CI(n43), .CO(n25), .S(n26) );
  FA1D0 U21 ( .A(n133), .B(n38), .CI(n44), .CO(n27), .S(n28) );
  HA1D0 U22 ( .A(n45), .B(n134), .CO(n29), .S(n30) );
  INVD1 U94 ( .I(n12), .ZN(n128) );
  INVD1 U95 ( .I(b[3]), .ZN(n129) );
  INVD1 U96 ( .I(n18), .ZN(n127) );
  INVD1 U97 ( .I(a[0]), .ZN(n136) );
  INVD1 U98 ( .I(a[6]), .ZN(n130) );
  INVD1 U99 ( .I(a[1]), .ZN(n135) );
  INVD1 U100 ( .I(a[2]), .ZN(n134) );
  INVD1 U101 ( .I(a[3]), .ZN(n133) );
  INVD1 U102 ( .I(a[5]), .ZN(n131) );
  INVD1 U103 ( .I(a[4]), .ZN(n132) );
  CKND0 U104 ( .I(n136), .ZN(product[1]) );
  CKND0 U105 ( .I(n1), .ZN(product[12]) );
  NR2D0 U106 ( .A1(b[2]), .A2(n136), .ZN(n46) );
  OAI22D0 U107 ( .A1(n137), .A2(n138), .B1(b[2]), .B2(n139), .ZN(n45) );
  CKXOR2D0 U108 ( .A1(b[3]), .A2(n136), .Z(n137) );
  OAI22D0 U109 ( .A1(n139), .A2(n138), .B1(b[2]), .B2(n140), .ZN(n44) );
  CKXOR2D0 U110 ( .A1(b[3]), .A2(n135), .Z(n139) );
  OAI22D0 U111 ( .A1(n140), .A2(n138), .B1(b[2]), .B2(n141), .ZN(n43) );
  CKXOR2D0 U112 ( .A1(b[3]), .A2(n134), .Z(n140) );
  OAI22D0 U113 ( .A1(n141), .A2(n138), .B1(b[2]), .B2(n142), .ZN(n42) );
  CKXOR2D0 U114 ( .A1(b[3]), .A2(n133), .Z(n141) );
  OAI22D0 U115 ( .A1(n142), .A2(n138), .B1(b[2]), .B2(n143), .ZN(n41) );
  CKXOR2D0 U116 ( .A1(b[3]), .A2(n132), .Z(n142) );
  OAI22D0 U117 ( .A1(n143), .A2(n138), .B1(b[2]), .B2(n144), .ZN(n40) );
  CKXOR2D0 U118 ( .A1(b[3]), .A2(n131), .Z(n143) );
  AO21D0 U119 ( .A1(n138), .A2(b[2]), .B(n144), .Z(n39) );
  CKXOR2D0 U120 ( .A1(n129), .A2(a[6]), .Z(n144) );
  NR2D0 U121 ( .A1(b[3]), .A2(n136), .ZN(n38) );
  OAI22D0 U122 ( .A1(n136), .A2(n129), .B1(b[3]), .B2(n135), .ZN(n37) );
  OAI22D0 U123 ( .A1(n135), .A2(n129), .B1(b[3]), .B2(n134), .ZN(n36) );
  OAI22D0 U124 ( .A1(n133), .A2(n129), .B1(b[3]), .B2(n132), .ZN(n35) );
  OAI22D0 U125 ( .A1(n132), .A2(n129), .B1(b[3]), .B2(n131), .ZN(n34) );
  OAI32D0 U126 ( .A1(n129), .A2(a[0]), .A3(b[2]), .B1(n129), .B2(n138), .ZN(
        n31) );
  OAI22D0 U129 ( .A1(n134), .A2(n129), .B1(b[3]), .B2(n133), .ZN(n18) );
  OAI22D0 U130 ( .A1(b[3]), .A2(n130), .B1(n131), .B2(n129), .ZN(n12) );
  IND2D0 U127 ( .A1(b[3]), .B1(b[2]), .ZN(n138) );
endmodule


module oadm_fixed_mul_plane_root_opt_LEVEL2_RESIDUAL_DROP14_DW_mult_uns_0 ( a, 
        b, product );
  input [4:0] a;
  input [4:0] b;
  output [9:0] product;
  wire   n2, n3, n4, n5, n6, n9, n10, n11, n12, n13, n14, n15, n16, n17, n19,
         n20, n21, n36, n42, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100;

  FA1D0 U3 ( .A(n12), .B(n10), .CI(n3), .CO(n2), .S(product[7]) );
  FA1D0 U4 ( .A(n15), .B(n13), .CI(n4), .CO(n3), .S(product[6]) );
  FA1D0 U5 ( .A(n16), .B(n20), .CI(n5), .CO(n4), .S(product[5]) );
  FA1D0 U10 ( .A(b[3]), .B(a[3]), .CI(n11), .CO(n9), .S(n10) );
  CMPE42D1 U11 ( .A(b[2]), .B(a[2]), .C(n36), .CIX(n14), .D(n17), .CO(n12), 
        .COX(n11), .S(n13) );
  INVD1 U57 ( .I(n42), .ZN(n93) );
  INVD1 U58 ( .I(n14), .ZN(n91) );
  ND2D1 U61 ( .A1(n19), .A2(n91), .ZN(n98) );
  INVD1 U62 ( .I(n19), .ZN(n92) );
  XNR3D1 U64 ( .A1(n14), .A2(n17), .A3(n92), .ZN(n16) );
  INVD1 U65 ( .I(b[2]), .ZN(n96) );
  INVD1 U66 ( .I(a[3]), .ZN(n90) );
  INVD1 U67 ( .I(a[2]), .ZN(n94) );
  INVD1 U68 ( .I(b[3]), .ZN(n95) );
  XNR2D1 U69 ( .A1(n2), .A2(n9), .ZN(product[8]) );
  AN2D0 U70 ( .A1(n6), .A2(n21), .Z(n5) );
  CKXOR2D0 U71 ( .A1(n6), .A2(n21), .Z(product[4]) );
  AN2D0 U72 ( .A1(a[2]), .A2(b[2]), .Z(n6) );
  CKXOR2D0 U73 ( .A1(a[2]), .A2(b[2]), .Z(product[3]) );
  OAI211D0 U74 ( .A1(n17), .A2(n92), .B(n97), .C(n98), .ZN(n15) );
  INR2D0 U75 ( .A1(b[3]), .B1(n93), .ZN(n19) );
  XNR3D0 U76 ( .A1(a[3]), .A2(n93), .A3(b[3]), .ZN(n21) );
  MUX2ND0 U77 ( .I0(n99), .I1(n100), .S(b[3]), .ZN(n20) );
  CKND2D0 U78 ( .A1(a[3]), .A2(n93), .ZN(n100) );
  CKND2D0 U79 ( .A1(n42), .A2(a[3]), .ZN(n99) );
  NR2D0 U80 ( .A1(n96), .A2(n94), .ZN(n42) );
  NR2D0 U81 ( .A1(n95), .A2(n94), .ZN(n14) );
  NR2D0 U82 ( .A1(n96), .A2(n90), .ZN(n17) );
  NR2D0 U83 ( .A1(n95), .A2(n90), .ZN(n36) );
  OR2D0 U56 ( .A1(n9), .A2(n2), .Z(product[9]) );
  IND2D0 U59 ( .A1(n17), .B1(n91), .ZN(n97) );
endmodule


module oadm_fixed_mul_plane_root_opt_LEVEL2_RESIDUAL_DROP14 ( x_mantissa, 
        y_mantissa, plane_value );
  input [23:0] x_mantissa;
  input [23:0] y_mantissa;
  output [28:0] plane_value;
  wire   x_residual_20_, y_residual_20_, N51, N50, N49, N48, N47, N46, N45,
         N44, N43, N42, N41, N40, N39, N38, N24, N23, N22, N21, N20, N19, N18,
         N17, N16, N15, N14, N13, N12, N11, add_52_carry_3_, n1, n130, n150,
         n160, n170, n180, n190, n200, n210, n220, n230, n240;
  wire   [12:7] x_product;
  wire   [12:1] y_product;
  wire   [9:3] midpoint_product;
  wire   [4:2] midpoint_sum;
  wire   [24:13] add_0_root_add_56_3_carry;
  wire   [24:19] add_2_root_add_56_3_carry;
  wire   [15:13] add_1_root_add_56_3_carry;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4;

  oadm_fixed_mul_plane_root_opt_LEVEL2_RESIDUAL_DROP14_DW_mult_tc_1 mult_33 ( 
        .a({x_residual_20_, x_mantissa[19:14]}), .b({n1, n130, 
        y_mantissa[22:21], n130, n1}), .product({x_product, N16, N15, N14, N13, 
        N12, N11, SYNOPSYS_UNCONNECTED__0}) );
  oadm_fixed_mul_plane_root_opt_LEVEL2_RESIDUAL_DROP14_DW_mult_tc_0 mult_35 ( 
        .a({y_residual_20_, y_mantissa[19:14]}), .b({n1, n130, 
        x_mantissa[22:21], n130, n1}), .product({y_product, 
        SYNOPSYS_UNCONNECTED__1}) );
  oadm_fixed_mul_plane_root_opt_LEVEL2_RESIDUAL_DROP14_DW_mult_uns_0 mult_46 ( 
        .a({n130, x_mantissa[22:21], n130, n1}), .b({n130, y_mantissa[22:21], 
        n130, n1}), .product({midpoint_product, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4}) );
  TIEL U3 ( .ZN(n1) );
  TIEH U4 ( .Z(n130) );
  AN2XD1 U18 ( .A1(midpoint_sum[2]), .A2(y_product[1]), .Z(n150) );
  AN2XD1 U19 ( .A1(N11), .A2(N38), .Z(n160) );
  FA1D0 U20 ( .A(N22), .B(N49), .CI(add_0_root_add_56_3_carry[22]), .CO(
        add_0_root_add_56_3_carry[23]), .S(plane_value[22]) );
  AN2XD1 U21 ( .A1(n180), .A2(y_product[12]), .Z(n170) );
  XOR3D1 U22 ( .A1(N24), .A2(N51), .A3(add_0_root_add_56_3_carry[24]), .Z(
        plane_value[24]) );
  XOR3D1 U23 ( .A1(midpoint_product[9]), .A2(x_product[12]), .A3(
        add_2_root_add_56_3_carry[24]), .Z(N24) );
  FA1D0 U24 ( .A(midpoint_product[7]), .B(x_product[12]), .CI(
        add_2_root_add_56_3_carry[22]), .CO(add_2_root_add_56_3_carry[23]), 
        .S(N22) );
  FA1D0 U25 ( .A(N23), .B(N50), .CI(add_0_root_add_56_3_carry[23]), .CO(
        add_0_root_add_56_3_carry[24]), .S(plane_value[23]) );
  FA1D0 U26 ( .A(midpoint_product[6]), .B(x_product[11]), .CI(
        add_2_root_add_56_3_carry[21]), .CO(add_2_root_add_56_3_carry[22]), 
        .S(N21) );
  FA1D0 U27 ( .A(N21), .B(N48), .CI(add_0_root_add_56_3_carry[21]), .CO(
        add_0_root_add_56_3_carry[22]), .S(plane_value[21]) );
  FA1D0 U28 ( .A(N20), .B(N47), .CI(add_0_root_add_56_3_carry[20]), .CO(
        add_0_root_add_56_3_carry[21]), .S(plane_value[20]) );
  FA1D0 U29 ( .A(N19), .B(N46), .CI(add_0_root_add_56_3_carry[19]), .CO(
        add_0_root_add_56_3_carry[20]), .S(plane_value[19]) );
  AN2XD1 U30 ( .A1(n190), .A2(y_product[11]), .Z(n180) );
  AN2XD1 U31 ( .A1(n200), .A2(y_product[10]), .Z(n190) );
  FA1D0 U32 ( .A(N17), .B(N44), .CI(add_0_root_add_56_3_carry[17]), .CO(
        add_0_root_add_56_3_carry[18]), .S(plane_value[17]) );
  INVD1 U33 ( .I(x_product[7]), .ZN(N17) );
  AN2XD1 U34 ( .A1(n210), .A2(y_product[9]), .Z(n200) );
  FA1D0 U35 ( .A(N16), .B(N43), .CI(add_0_root_add_56_3_carry[16]), .CO(
        add_0_root_add_56_3_carry[17]), .S(plane_value[16]) );
  AN2XD1 U36 ( .A1(n220), .A2(y_product[8]), .Z(n210) );
  FA1D0 U37 ( .A(N15), .B(N42), .CI(add_0_root_add_56_3_carry[15]), .CO(
        add_0_root_add_56_3_carry[16]), .S(plane_value[15]) );
  AN2XD1 U38 ( .A1(n230), .A2(y_product[7]), .Z(n220) );
  FA1D0 U39 ( .A(N14), .B(N41), .CI(add_0_root_add_56_3_carry[14]), .CO(
        add_0_root_add_56_3_carry[15]), .S(plane_value[14]) );
  AN2XD1 U40 ( .A1(n240), .A2(y_product[6]), .Z(n230) );
  AN2XD1 U41 ( .A1(add_1_root_add_56_3_carry[15]), .A2(y_product[5]), .Z(n240)
         );
  FA1D0 U43 ( .A(midpoint_product[8]), .B(x_product[12]), .CI(
        add_2_root_add_56_3_carry[23]), .CO(add_2_root_add_56_3_carry[24]), 
        .S(N23) );
  FA1D0 U44 ( .A(midpoint_product[5]), .B(x_product[10]), .CI(
        add_2_root_add_56_3_carry[20]), .CO(add_2_root_add_56_3_carry[21]), 
        .S(N20) );
  FA1D0 U45 ( .A(midpoint_product[4]), .B(x_product[9]), .CI(
        add_2_root_add_56_3_carry[19]), .CO(add_2_root_add_56_3_carry[20]), 
        .S(N19) );
  FA1D0 U46 ( .A(N18), .B(N45), .CI(add_0_root_add_56_3_carry[18]), .CO(
        add_0_root_add_56_3_carry[19]), .S(plane_value[18]) );
  FA1D0 U47 ( .A(y_product[3]), .B(midpoint_sum[4]), .CI(
        add_1_root_add_56_3_carry[13]), .CO(add_1_root_add_56_3_carry[14]), 
        .S(N40) );
  FA1D0 U48 ( .A(N13), .B(N40), .CI(add_0_root_add_56_3_carry[13]), .CO(
        add_0_root_add_56_3_carry[14]), .S(plane_value[13]) );
  FA1D0 U49 ( .A(y_product[2]), .B(midpoint_sum[3]), .CI(n150), .CO(
        add_1_root_add_56_3_carry[13]), .S(N39) );
  FA1D0 U50 ( .A(N12), .B(N39), .CI(n160), .CO(add_0_root_add_56_3_carry[13]), 
        .S(plane_value[12]) );
  FA1D0 U51 ( .A(midpoint_product[3]), .B(x_product[8]), .CI(x_product[7]), 
        .CO(add_2_root_add_56_3_carry[19]), .S(N18) );
  FA1D0 U52 ( .A(x_mantissa[22]), .B(y_mantissa[22]), .CI(add_52_carry_3_), 
        .CO(midpoint_sum[4]), .S(midpoint_sum[3]) );
  INVD1 U56 ( .I(x_mantissa[20]), .ZN(x_residual_20_) );
  INVD1 U57 ( .I(y_mantissa[20]), .ZN(y_residual_20_) );
  XNR2D1 U58 ( .A1(y_mantissa[21]), .A2(x_mantissa[21]), .ZN(midpoint_sum[2])
         );
  XNR2D1 U59 ( .A1(add_1_root_add_56_3_carry[14]), .A2(y_product[4]), .ZN(N41)
         );
  CKXOR2D1 U60 ( .A1(N38), .A2(N11), .Z(plane_value[11]) );
  CKXOR2D1 U61 ( .A1(midpoint_sum[2]), .A2(y_product[1]), .Z(N38) );
  CKXOR2D1 U62 ( .A1(add_1_root_add_56_3_carry[15]), .A2(y_product[5]), .Z(N42) );
  CKXOR2D1 U63 ( .A1(n240), .A2(y_product[6]), .Z(N43) );
  CKXOR2D1 U64 ( .A1(n230), .A2(y_product[7]), .Z(N44) );
  CKXOR2D1 U65 ( .A1(n220), .A2(y_product[8]), .Z(N45) );
  CKXOR2D1 U66 ( .A1(n210), .A2(y_product[9]), .Z(N46) );
  CKXOR2D1 U67 ( .A1(n200), .A2(y_product[10]), .Z(N47) );
  CKXOR2D1 U68 ( .A1(n190), .A2(y_product[11]), .Z(N48) );
  CKXOR2D1 U69 ( .A1(n180), .A2(y_product[12]), .Z(N49) );
  CKXOR2D1 U70 ( .A1(n170), .A2(y_product[12]), .Z(N50) );
  INR2D0 U5 ( .A1(y_product[12]), .B1(n170), .ZN(N51) );
  OR2D0 U6 ( .A1(y_product[4]), .A2(add_1_root_add_56_3_carry[14]), .Z(
        add_1_root_add_56_3_carry[15]) );
  OR2D0 U7 ( .A1(x_mantissa[21]), .A2(y_mantissa[21]), .Z(add_52_carry_3_) );
endmodule


module fp32_normal_finite_wrapper_DW01_add_3_DW01_add_9 ( A, B, CI, SUM, CO );
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
  wire   N42, N41, N40, N39, N38, N37, N36, N35, N34, N33, N32, N31, N30, N29,
         N28, N27, n1, n4, n5, n6, n7, n8, n79, n80;
  wire   [7:2] add_0_root_add_0_root_add_25_2_carry;

  CKXOR2D1 U2 ( .A1(y[31]), .A2(x[31]), .Z(result[31]) );
  fp32_normal_finite_wrapper_DW01_add_3_DW01_add_9 add_1_root_add_0_root_add_25_2 ( 
        .A(x[30:23]), .B({N42, N41, N40, N39, N38, N37, N36, N35}), .CI(n79), 
        .SUM({N34, N33, N32, N31, N30, N29, N28, N27}) );
  AN2XD1 U3 ( .A1(exponent_adjust[0]), .A2(N27), .Z(n1) );
  CKBD1 U34 ( .I(result_fraction[10]), .Z(result[10]) );
  CKBD1 U35 ( .I(result_fraction[12]), .Z(result[12]) );
  CKBD1 U36 ( .I(result_fraction[11]), .Z(result[11]) );
  CKBD1 U37 ( .I(result_fraction[13]), .Z(result[13]) );
  FA1D0 U38 ( .A(N28), .B(exponent_adjust[1]), .CI(n1), .CO(
        add_0_root_add_0_root_add_25_2_carry[2]), .S(result[24]) );
  FA1D0 U39 ( .A(N29), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[2]), .CO(
        add_0_root_add_0_root_add_25_2_carry[3]), .S(result[25]) );
  FA1D0 U40 ( .A(N30), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[3]), .CO(
        add_0_root_add_0_root_add_25_2_carry[4]), .S(result[26]) );
  FA1D0 U41 ( .A(N31), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[4]), .CO(
        add_0_root_add_0_root_add_25_2_carry[5]), .S(result[27]) );
  FA1D0 U42 ( .A(N32), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[5]), .CO(
        add_0_root_add_0_root_add_25_2_carry[6]), .S(result[28]) );
  FA1D0 U43 ( .A(N33), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[6]), .CO(
        add_0_root_add_0_root_add_25_2_carry[7]), .S(result[29]) );
  XOR3D1 U52 ( .A1(N34), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_25_2_carry[7]), .Z(result[30]) );
  CKBD1 U53 ( .I(y[22]), .Z(fraction_y[22]) );
  CKBD1 U54 ( .I(y[21]), .Z(fraction_y[21]) );
  CKBD1 U55 ( .I(x[22]), .Z(fraction_x[22]) );
  CKBD1 U56 ( .I(x[21]), .Z(fraction_x[21]) );
  AN2XD1 U64 ( .A1(y[23]), .A2(y[24]), .Z(n4) );
  AN2XD1 U65 ( .A1(n4), .A2(y[25]), .Z(n5) );
  AN2XD1 U66 ( .A1(n5), .A2(y[26]), .Z(n6) );
  AN2XD1 U67 ( .A1(n6), .A2(y[27]), .Z(n7) );
  AN2XD1 U68 ( .A1(n7), .A2(y[28]), .Z(n8) );
  CKBD1 U86 ( .I(x[20]), .Z(fraction_x[20]) );
  CKBD1 U87 ( .I(x[19]), .Z(fraction_x[19]) );
  CKBD1 U88 ( .I(x[18]), .Z(fraction_x[18]) );
  CKBD1 U89 ( .I(x[17]), .Z(fraction_x[17]) );
  CKBD1 U90 ( .I(x[16]), .Z(fraction_x[16]) );
  CKBD1 U91 ( .I(x[15]), .Z(fraction_x[15]) );
  CKBD1 U92 ( .I(x[14]), .Z(fraction_x[14]) );
  CKBD1 U93 ( .I(y[20]), .Z(fraction_y[20]) );
  CKBD1 U94 ( .I(y[19]), .Z(fraction_y[19]) );
  CKBD1 U95 ( .I(y[18]), .Z(fraction_y[18]) );
  CKBD1 U96 ( .I(y[17]), .Z(fraction_y[17]) );
  CKBD1 U97 ( .I(y[16]), .Z(fraction_y[16]) );
  CKBD1 U98 ( .I(y[15]), .Z(fraction_y[15]) );
  CKBD1 U99 ( .I(y[14]), .Z(fraction_y[14]) );
  CKBD1 U100 ( .I(result_fraction[22]), .Z(result[22]) );
  CKBD1 U101 ( .I(result_fraction[21]), .Z(result[21]) );
  CKBD1 U102 ( .I(result_fraction[20]), .Z(result[20]) );
  CKBD1 U103 ( .I(result_fraction[19]), .Z(result[19]) );
  CKBD1 U104 ( .I(result_fraction[18]), .Z(result[18]) );
  CKBD1 U105 ( .I(result_fraction[17]), .Z(result[17]) );
  CKBD1 U106 ( .I(result_fraction[16]), .Z(result[16]) );
  CKBD1 U107 ( .I(result_fraction[15]), .Z(result[15]) );
  CKBD1 U108 ( .I(result_fraction[14]), .Z(result[14]) );
  TIEL U109 ( .ZN(n79) );
  CKXOR2D1 U112 ( .A1(exponent_adjust[0]), .A2(N27), .Z(result[23]) );
  CKXOR2D1 U113 ( .A1(y[23]), .A2(y[24]), .Z(N36) );
  CKXOR2D1 U114 ( .A1(n4), .A2(y[25]), .Z(N37) );
  CKXOR2D1 U115 ( .A1(n5), .A2(y[26]), .Z(N38) );
  CKXOR2D1 U116 ( .A1(n6), .A2(y[27]), .Z(N39) );
  CKXOR2D1 U117 ( .A1(n7), .A2(y[28]), .Z(N40) );
  CKXOR2D1 U118 ( .A1(n8), .A2(y[29]), .Z(N41) );
  CKND0 U119 ( .I(y[23]), .ZN(N35) );
  CKXOR2D0 U4 ( .A1(y[30]), .A2(n80), .Z(N42) );
  CKND2D0 U5 ( .A1(y[29]), .A2(n8), .ZN(n80) );
endmodule


module oadm_fixed_mul_root_opt_LEVEL2_RESIDUAL_DROP14 ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   n27, n29, n30, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15;
  wire   [22:14] x_mantissa;
  wire   [22:14] y_mantissa;
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
        SYNOPSYS_UNCONNECTED__52;

  oadm_fixed_mul_plane_root_opt_LEVEL2_RESIDUAL_DROP14 plane ( .x_mantissa({
        1'b0, x_mantissa, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y_mantissa({1'b0, y_mantissa, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .plane_value({SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, core_value, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14}) );
  fp32_normal_finite_wrapper fp_wrapper ( .x({x[31:14], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y({
        y[31:14], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .divide_mode(1'b0), .fraction_x({x_mantissa, 
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
        SYNOPSYS_UNCONNECTED__41, SYNOPSYS_UNCONNECTED__42}), 
        .result_fraction({normalized_fraction, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .exponent_adjust({exponent_adjust[2], 
        exponent_adjust[2], exponent_adjust[0]}), .result({result[31:10], 
        SYNOPSYS_UNCONNECTED__43, SYNOPSYS_UNCONNECTED__44, 
        SYNOPSYS_UNCONNECTED__45, SYNOPSYS_UNCONNECTED__46, 
        SYNOPSYS_UNCONNECTED__47, SYNOPSYS_UNCONNECTED__48, 
        SYNOPSYS_UNCONNECTED__49, SYNOPSYS_UNCONNECTED__50, 
        SYNOPSYS_UNCONNECTED__51, SYNOPSYS_UNCONNECTED__52}) );
  IND2D1 U3 ( .A1(n29), .B1(n2), .ZN(exponent_adjust[2]) );
  INVD1 U4 ( .I(n30), .ZN(n2) );
  ND2D1 U5 ( .A1(n1), .A2(n2), .ZN(exponent_adjust[0]) );
  INVD1 U6 ( .I(core_value[22]), .ZN(n4) );
  NR2D1 U7 ( .A1(n1), .A2(n15), .ZN(normalized_fraction[10]) );
  NR3D0 U8 ( .A1(core_value[23]), .A2(core_value[24]), .A3(n4), .ZN(n30) );
  NR3D0 U9 ( .A1(core_value[23]), .A2(core_value[24]), .A3(core_value[22]), 
        .ZN(n29) );
  INVD1 U10 ( .I(core_value[24]), .ZN(n1) );
  OAI221D0 U11 ( .A1(n4), .A2(n27), .B1(n3), .B2(n1), .C(n38), .ZN(
        normalized_fraction[22]) );
  INVD1 U12 ( .I(core_value[23]), .ZN(n3) );
  AOI22D1 U13 ( .A1(core_value[20]), .A2(n29), .B1(core_value[21]), .B2(n30), 
        .ZN(n38) );
  OAI221D0 U14 ( .A1(n27), .A2(n5), .B1(n4), .B2(n1), .C(n39), .ZN(
        normalized_fraction[21]) );
  AOI22D1 U15 ( .A1(core_value[19]), .A2(n29), .B1(core_value[20]), .B2(n30), 
        .ZN(n39) );
  OAI221D0 U16 ( .A1(n27), .A2(n10), .B1(n1), .B2(n9), .C(n44), .ZN(
        normalized_fraction[16]) );
  AOI22D1 U17 ( .A1(core_value[14]), .A2(n29), .B1(core_value[15]), .B2(n30), 
        .ZN(n44) );
  OAI221D0 U18 ( .A1(n27), .A2(n9), .B1(n1), .B2(n8), .C(n43), .ZN(
        normalized_fraction[17]) );
  AOI22D1 U19 ( .A1(core_value[15]), .A2(n29), .B1(core_value[16]), .B2(n30), 
        .ZN(n43) );
  OAI221D0 U20 ( .A1(n27), .A2(n8), .B1(n1), .B2(n7), .C(n42), .ZN(
        normalized_fraction[18]) );
  AOI22D1 U21 ( .A1(core_value[16]), .A2(n29), .B1(core_value[17]), .B2(n30), 
        .ZN(n42) );
  ND2D1 U22 ( .A1(core_value[23]), .A2(n1), .ZN(n27) );
  OAI221D0 U23 ( .A1(n27), .A2(n14), .B1(n1), .B2(n13), .C(n48), .ZN(
        normalized_fraction[12]) );
  ND2D1 U24 ( .A1(core_value[11]), .A2(n30), .ZN(n48) );
  OAI22D1 U25 ( .A1(n27), .A2(n15), .B1(n1), .B2(n14), .ZN(
        normalized_fraction[11]) );
  INVD1 U26 ( .I(core_value[21]), .ZN(n5) );
  INVD1 U27 ( .I(core_value[20]), .ZN(n6) );
  INVD1 U28 ( .I(core_value[19]), .ZN(n7) );
  INVD1 U29 ( .I(core_value[17]), .ZN(n9) );
  INVD1 U30 ( .I(core_value[16]), .ZN(n10) );
  INVD1 U31 ( .I(core_value[15]), .ZN(n11) );
  INVD1 U32 ( .I(core_value[14]), .ZN(n12) );
  INVD1 U33 ( .I(core_value[11]), .ZN(n15) );
  OAI221D0 U34 ( .A1(n27), .A2(n13), .B1(n1), .B2(n12), .C(n47), .ZN(
        normalized_fraction[13]) );
  AOI22D1 U35 ( .A1(core_value[11]), .A2(n29), .B1(core_value[12]), .B2(n30), 
        .ZN(n47) );
  OAI221D0 U36 ( .A1(n27), .A2(n12), .B1(n1), .B2(n11), .C(n46), .ZN(
        normalized_fraction[14]) );
  AOI22D1 U37 ( .A1(core_value[12]), .A2(n29), .B1(core_value[13]), .B2(n30), 
        .ZN(n46) );
  OAI221D0 U38 ( .A1(n27), .A2(n11), .B1(n1), .B2(n10), .C(n45), .ZN(
        normalized_fraction[15]) );
  AOI22D1 U39 ( .A1(core_value[13]), .A2(n29), .B1(core_value[14]), .B2(n30), 
        .ZN(n45) );
  OAI221D0 U40 ( .A1(n27), .A2(n7), .B1(n1), .B2(n6), .C(n41), .ZN(
        normalized_fraction[19]) );
  AOI22D1 U41 ( .A1(core_value[17]), .A2(n29), .B1(core_value[18]), .B2(n30), 
        .ZN(n41) );
  OAI221D0 U42 ( .A1(n27), .A2(n6), .B1(n1), .B2(n5), .C(n40), .ZN(
        normalized_fraction[20]) );
  AOI22D1 U43 ( .A1(core_value[18]), .A2(n29), .B1(core_value[19]), .B2(n30), 
        .ZN(n40) );
  INVD1 U44 ( .I(core_value[18]), .ZN(n8) );
  INVD1 U45 ( .I(core_value[13]), .ZN(n13) );
  INVD1 U46 ( .I(core_value[12]), .ZN(n14) );
endmodule


module oadm_fixed_l2_mul_root_opt_aggressive ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;

  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9;
  assign result[9] = 1'b0;
  assign result[8] = 1'b0;
  assign result[7] = 1'b0;
  assign result[6] = 1'b0;
  assign result[5] = 1'b0;
  assign result[4] = 1'b0;
  assign result[3] = 1'b0;
  assign result[2] = 1'b0;
  assign result[1] = 1'b0;
  assign result[0] = 1'b0;

  oadm_fixed_mul_root_opt_LEVEL2_RESIDUAL_DROP14 impl ( .x({x[31:14], 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .y({y[31:14], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .result({result[31:10], 
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9}) );
endmodule

