/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Tue Sep 15 21:51:59 2026
/////////////////////////////////////////////////////////////


module oadm_fixed_div_specialized_plane_LEVEL1_RESIDUAL_DROP16_DW_mult_tc_1 ( 
        a, b, product );
  input [6:0] a;
  input [5:0] b;
  output [12:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n16, n17, n20, n22, n25, n27, n28,
         n29, n31, n32, n33, n37, n40, n41, n45, n46, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152;

  FA1D0 U2 ( .A(n145), .B(a[5]), .CI(n2), .CO(n1), .S(product[11]) );
  FA1D0 U3 ( .A(n40), .B(n141), .CI(n3), .CO(n2), .S(product[10]) );
  FA1D0 U4 ( .A(n16), .B(n143), .CI(n4), .CO(n3), .S(product[9]) );
  FA1D0 U5 ( .A(n20), .B(n17), .CI(n5), .CO(n4), .S(product[8]) );
  FA1D0 U6 ( .A(n136), .B(n142), .CI(n6), .CO(n5), .S(product[7]) );
  FA1D0 U7 ( .A(n25), .B(n28), .CI(n7), .CO(n6), .S(product[6]) );
  FA1D0 U8 ( .A(n29), .B(n32), .CI(n8), .CO(n7), .S(product[5]) );
  FA1D0 U15 ( .A(n46), .B(n41), .CI(n22), .CO(n16), .S(n17) );
  INVD1 U101 ( .I(n20), .ZN(n142) );
  AN2XD1 U103 ( .A1(n140), .A2(n27), .Z(n136) );
  INVD1 U104 ( .I(n40), .ZN(n143) );
  INVD1 U105 ( .I(a[5]), .ZN(n141) );
  XNR2D1 U106 ( .A1(b[3]), .A2(n147), .ZN(n137) );
  XNR2D1 U107 ( .A1(b[3]), .A2(n148), .ZN(n138) );
  XNR2D1 U108 ( .A1(b[3]), .A2(n149), .ZN(n139) );
  XNR2D1 U109 ( .A1(b[3]), .A2(n146), .ZN(n140) );
  INVD1 U110 ( .I(a[0]), .ZN(n150) );
  INVD1 U112 ( .I(a[3]), .ZN(n147) );
  INVD1 U113 ( .I(a[2]), .ZN(n148) );
  INVD1 U114 ( .I(a[1]), .ZN(n149) );
  INVD1 U115 ( .I(a[4]), .ZN(n146) );
  CKXOR2D1 U116 ( .A1(n27), .A2(n140), .Z(n25) );
  AN2D0 U117 ( .A1(n9), .A2(n33), .Z(n8) );
  CKXOR2D0 U118 ( .A1(n9), .A2(n33), .Z(product[4]) );
  AN2D0 U119 ( .A1(n37), .A2(n139), .Z(n9) );
  CKXOR2D0 U120 ( .A1(n37), .A2(n139), .Z(product[3]) );
  CKND0 U121 ( .I(n150), .ZN(product[2]) );
  NR2D0 U122 ( .A1(n144), .A2(a[0]), .ZN(n37) );
  AN2D0 U123 ( .A1(n138), .A2(n45), .Z(n32) );
  CKXOR2D0 U124 ( .A1(n138), .A2(n45), .Z(n33) );
  AN2D0 U125 ( .A1(n31), .A2(n137), .Z(n28) );
  CKXOR2D0 U126 ( .A1(n31), .A2(n137), .Z(n29) );
  CKND0 U127 ( .I(n1), .ZN(product[12]) );
  NR2D0 U128 ( .A1(b[3]), .A2(n150), .ZN(n45) );
  OAI22D0 U129 ( .A1(n150), .A2(n144), .B1(b[3]), .B2(n149), .ZN(n31) );
  OAI22D0 U130 ( .A1(n149), .A2(n144), .B1(b[3]), .B2(n148), .ZN(n27) );
  OAI22D0 U131 ( .A1(n147), .A2(n144), .B1(b[3]), .B2(n146), .ZN(n41) );
  OAI22D0 U132 ( .A1(n146), .A2(n144), .B1(b[3]), .B2(n145), .ZN(n40) );
  XNR2D0 U133 ( .A1(n151), .A2(n152), .ZN(n20) );
  CKND2D0 U134 ( .A1(n152), .A2(n151), .ZN(n22) );
  OA22D0 U135 ( .A1(n148), .A2(n144), .B1(b[3]), .B2(n147), .Z(n151) );
  CKXOR2D0 U136 ( .A1(b[3]), .A2(n145), .Z(n152) );
  CKXOR2D0 U137 ( .A1(n144), .A2(a[6]), .Z(n46) );
  CKND0 U102 ( .I(b[3]), .ZN(n144) );
  CKND0 U111 ( .I(a[5]), .ZN(n145) );
endmodule


module oadm_fixed_div_specialized_plane_LEVEL1_RESIDUAL_DROP16_DW_mult_tc_0 ( 
        a, b, product );
  input [6:0] a;
  input [5:0] b;
  output [12:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n16, n17, n20, n22, n25, n27, n28,
         n29, n31, n32, n33, n37, n40, n41, n45, n46, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152;

  FA1D0 U2 ( .A(n145), .B(a[5]), .CI(n2), .CO(n1), .S(product[11]) );
  FA1D0 U3 ( .A(n40), .B(n142), .CI(n3), .CO(n2), .S(product[10]) );
  FA1D0 U4 ( .A(n16), .B(n144), .CI(n4), .CO(n3), .S(product[9]) );
  FA1D0 U5 ( .A(n20), .B(n17), .CI(n5), .CO(n4), .S(product[8]) );
  FA1D0 U6 ( .A(n136), .B(n143), .CI(n6), .CO(n5), .S(product[7]) );
  FA1D0 U7 ( .A(n25), .B(n28), .CI(n7), .CO(n6), .S(product[6]) );
  FA1D0 U8 ( .A(n29), .B(n32), .CI(n8), .CO(n7), .S(product[5]) );
  FA1D0 U15 ( .A(n46), .B(n41), .CI(n22), .CO(n16), .S(n17) );
  INVD1 U101 ( .I(n20), .ZN(n143) );
  AN2XD1 U103 ( .A1(n140), .A2(n27), .Z(n136) );
  INVD1 U104 ( .I(a[5]), .ZN(n142) );
  INVD1 U105 ( .I(n40), .ZN(n144) );
  XNR2D1 U106 ( .A1(b[3]), .A2(n147), .ZN(n137) );
  XNR2D1 U107 ( .A1(b[3]), .A2(n148), .ZN(n138) );
  XNR2D1 U108 ( .A1(b[3]), .A2(n149), .ZN(n139) );
  XNR2D1 U109 ( .A1(b[3]), .A2(n146), .ZN(n140) );
  INVD1 U110 ( .I(a[0]), .ZN(n150) );
  INVD1 U112 ( .I(a[3]), .ZN(n147) );
  INVD1 U113 ( .I(a[1]), .ZN(n149) );
  INVD1 U114 ( .I(a[2]), .ZN(n148) );
  INVD1 U115 ( .I(a[4]), .ZN(n146) );
  CKXOR2D1 U116 ( .A1(n27), .A2(n140), .Z(n25) );
  AN2D0 U117 ( .A1(n9), .A2(n33), .Z(n8) );
  CKXOR2D0 U118 ( .A1(n9), .A2(n33), .Z(product[4]) );
  AN2D0 U119 ( .A1(n37), .A2(n139), .Z(n9) );
  CKXOR2D0 U120 ( .A1(n37), .A2(n139), .Z(product[3]) );
  CKND0 U121 ( .I(n150), .ZN(product[2]) );
  NR2D0 U122 ( .A1(n141), .A2(a[0]), .ZN(n37) );
  AN2D0 U123 ( .A1(n138), .A2(n45), .Z(n32) );
  CKXOR2D0 U124 ( .A1(n138), .A2(n45), .Z(n33) );
  AN2D0 U125 ( .A1(n31), .A2(n137), .Z(n28) );
  CKXOR2D0 U126 ( .A1(n31), .A2(n137), .Z(n29) );
  CKND0 U127 ( .I(n1), .ZN(product[12]) );
  NR2D0 U128 ( .A1(b[3]), .A2(n150), .ZN(n45) );
  OAI22D0 U129 ( .A1(n150), .A2(n141), .B1(b[3]), .B2(n149), .ZN(n31) );
  OAI22D0 U130 ( .A1(n149), .A2(n141), .B1(b[3]), .B2(n148), .ZN(n27) );
  OAI22D0 U131 ( .A1(n147), .A2(n141), .B1(b[3]), .B2(n146), .ZN(n41) );
  OAI22D0 U132 ( .A1(n146), .A2(n141), .B1(b[3]), .B2(n145), .ZN(n40) );
  XNR2D0 U133 ( .A1(n151), .A2(n152), .ZN(n20) );
  CKND2D0 U134 ( .A1(n152), .A2(n151), .ZN(n22) );
  OA22D0 U135 ( .A1(n148), .A2(n141), .B1(b[3]), .B2(n147), .Z(n151) );
  CKXOR2D0 U136 ( .A1(b[3]), .A2(n145), .Z(n152) );
  CKXOR2D0 U137 ( .A1(n141), .A2(a[6]), .Z(n46) );
  CKND0 U102 ( .I(a[5]), .ZN(n145) );
  CKND0 U111 ( .I(b[3]), .ZN(n141) );
endmodule


module oadm_fixed_div_specialized_plane_LEVEL1_RESIDUAL_DROP16 ( x_mantissa, 
        y_mantissa, plane_exact );
  input [23:0] x_mantissa;
  input [23:0] y_mantissa;
  output [28:0] plane_exact;
  wire   x_residual_22_, y_residual_22_, N26, N25, N24, N23, N22, N21, N20,
         N19, N18, N17, N16, N15, N14, mult_54_n22, mult_54_n20, mult_54_n19,
         mult_54_n16, mult_54_n15, mult_54_n12, mult_54_n3, mult_54_n2, n1,
         n160, n200, n210, n230, n240, n250, n260, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;
  wire   [12:7] x_product;
  wire   [12:2] y_product;
  wire   [9:5] midpoint_product;
  wire   [27:15] sub_0_root_sub_58_carry;
  wire   [25:21] add_1_root_sub_58_carry;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3;

  oadm_fixed_div_specialized_plane_LEVEL1_RESIDUAL_DROP16_DW_mult_tc_1 mult_44 ( 
        .a({y_residual_22_, y_residual_22_, y_mantissa[20:16]}), .b({n1, n160, 
        x_mantissa[22], n160, n1, n1}), .product({y_product, 
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1}) );
  oadm_fixed_div_specialized_plane_LEVEL1_RESIDUAL_DROP16_DW_mult_tc_0 mult_42 ( 
        .a({x_residual_22_, x_residual_22_, x_mantissa[20:16]}), .b({n1, n160, 
        n200, n160, n1, n1}), .product({x_product, N18, N17, N16, N15, N14, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3}) );
  FA1D0 mult_54_U3 ( .A(mult_54_n15), .B(n41), .CI(mult_54_n3), .CO(mult_54_n2), .S(midpoint_product[8]) );
  TIEL U3 ( .ZN(n1) );
  TIEH U4 ( .Z(n160) );
  FA1D0 U19 ( .A(midpoint_product[6]), .B(x_product[9]), .CI(
        add_1_root_sub_58_carry[21]), .CO(add_1_root_sub_58_carry[22]), .S(N21) );
  CKBD1 U20 ( .I(plane_exact[27]), .Z(plane_exact[28]) );
  FA1D0 U21 ( .A(N24), .B(n32), .CI(sub_0_root_sub_58_carry[24]), .CO(
        sub_0_root_sub_58_carry[25]), .S(plane_exact[24]) );
  XOR3D1 U22 ( .A1(N26), .A2(n32), .A3(sub_0_root_sub_58_carry[27]), .Z(
        plane_exact[27]) );
  FA1D0 U23 ( .A(N26), .B(n32), .CI(sub_0_root_sub_58_carry[26]), .CO(
        sub_0_root_sub_58_carry[27]), .S(plane_exact[26]) );
  FA1D0 U24 ( .A(N25), .B(n32), .CI(sub_0_root_sub_58_carry[25]), .CO(
        sub_0_root_sub_58_carry[26]), .S(plane_exact[25]) );
  INVD1 U27 ( .I(n210), .ZN(n200) );
  FA1D0 U28 ( .A(N23), .B(n31), .CI(sub_0_root_sub_58_carry[23]), .CO(
        sub_0_root_sub_58_carry[24]), .S(plane_exact[23]) );
  INVD1 U29 ( .I(y_product[11]), .ZN(n31) );
  FA1D0 U30 ( .A(midpoint_product[7]), .B(x_product[10]), .CI(
        add_1_root_sub_58_carry[22]), .CO(add_1_root_sub_58_carry[23]), .S(N22) );
  FA1D0 U31 ( .A(midpoint_product[8]), .B(x_product[11]), .CI(
        add_1_root_sub_58_carry[23]), .CO(add_1_root_sub_58_carry[24]), .S(N23) );
  FA1D0 U32 ( .A(N21), .B(n29), .CI(sub_0_root_sub_58_carry[21]), .CO(
        sub_0_root_sub_58_carry[22]), .S(plane_exact[21]) );
  INVD1 U33 ( .I(y_product[9]), .ZN(n29) );
  FA1D0 U34 ( .A(N22), .B(n30), .CI(sub_0_root_sub_58_carry[22]), .CO(
        sub_0_root_sub_58_carry[23]), .S(plane_exact[22]) );
  INVD1 U35 ( .I(y_product[10]), .ZN(n30) );
  FA1D0 U36 ( .A(midpoint_product[9]), .B(x_product[12]), .CI(
        add_1_root_sub_58_carry[24]), .CO(add_1_root_sub_58_carry[25]), .S(N24) );
  FA1D0 U37 ( .A(N19), .B(n27), .CI(sub_0_root_sub_58_carry[19]), .CO(
        sub_0_root_sub_58_carry[20]), .S(plane_exact[19]) );
  INVD1 U38 ( .I(y_product[7]), .ZN(n27) );
  INVD1 U39 ( .I(x_product[7]), .ZN(N19) );
  FA1D0 U40 ( .A(N16), .B(n240), .CI(sub_0_root_sub_58_carry[16]), .CO(
        sub_0_root_sub_58_carry[17]), .S(plane_exact[16]) );
  INVD1 U41 ( .I(y_product[4]), .ZN(n240) );
  FA1D0 U42 ( .A(N18), .B(n260), .CI(sub_0_root_sub_58_carry[18]), .CO(
        sub_0_root_sub_58_carry[19]), .S(plane_exact[18]) );
  INVD1 U43 ( .I(y_product[6]), .ZN(n260) );
  FA1D0 U44 ( .A(N17), .B(n250), .CI(sub_0_root_sub_58_carry[17]), .CO(
        sub_0_root_sub_58_carry[18]), .S(plane_exact[17]) );
  INVD1 U45 ( .I(y_product[5]), .ZN(n250) );
  INVD1 U46 ( .I(y_product[12]), .ZN(n32) );
  FA1D0 U48 ( .A(N20), .B(n28), .CI(sub_0_root_sub_58_carry[20]), .CO(
        sub_0_root_sub_58_carry[21]), .S(plane_exact[20]) );
  INVD1 U49 ( .I(y_product[8]), .ZN(n28) );
  CKXOR2D1 U50 ( .A1(mult_54_n22), .A2(mult_54_n19), .Z(midpoint_product[6])
         );
  INVD1 U51 ( .I(y_mantissa[22]), .ZN(n210) );
  FA1D0 U52 ( .A(N15), .B(n230), .CI(sub_0_root_sub_58_carry[15]), .CO(
        sub_0_root_sub_58_carry[16]), .S(plane_exact[15]) );
  INVD1 U54 ( .I(y_product[3]), .ZN(n230) );
  INVD1 U55 ( .I(mult_54_n12), .ZN(n41) );
  NR2D1 U57 ( .A1(mult_54_n19), .A2(mult_54_n22), .ZN(mult_54_n20) );
  FA1D0 U59 ( .A(midpoint_product[5]), .B(x_product[8]), .CI(x_product[7]), 
        .CO(add_1_root_sub_58_carry[21]), .S(N20) );
  INVD1 U60 ( .I(x_mantissa[22]), .ZN(n39) );
  INVD1 U61 ( .I(x_mantissa[21]), .ZN(x_residual_22_) );
  INVD1 U62 ( .I(y_mantissa[21]), .ZN(y_residual_22_) );
  CKXOR2D1 U64 ( .A1(add_1_root_sub_58_carry[25]), .A2(x_product[12]), .Z(N25)
         );
  NR2D0 U65 ( .A1(n210), .A2(n39), .ZN(mult_54_n22) );
  CKXOR2D0 U66 ( .A1(n200), .A2(x_mantissa[22]), .Z(midpoint_product[5]) );
  MUX2ND0 U68 ( .I0(n33), .I1(n34), .S(mult_54_n22), .ZN(n37) );
  MUX2ND0 U69 ( .I0(n35), .I1(n36), .S(mult_54_n22), .ZN(n38) );
  NR2D0 U70 ( .A1(n40), .A2(n39), .ZN(n33) );
  NR2D0 U71 ( .A1(x_mantissa[22]), .A2(n40), .ZN(n34) );
  NR2D0 U72 ( .A1(n210), .A2(n39), .ZN(n35) );
  NR2D0 U73 ( .A1(x_mantissa[22]), .A2(n210), .ZN(n36) );
  XOR4D0 U74 ( .A1(n39), .A2(mult_54_n22), .A3(n210), .A4(mult_54_n19), .Z(
        mult_54_n16) );
  INR2D0 U75 ( .A1(mult_54_n22), .B1(n39), .ZN(mult_54_n12) );
  OAI211D0 U76 ( .A1(n210), .A2(n40), .B(n38), .C(n37), .ZN(mult_54_n15) );
  CKXOR2D0 U77 ( .A1(mult_54_n16), .A2(mult_54_n20), .Z(midpoint_product[7])
         );
  AN2D0 U78 ( .A1(mult_54_n16), .A2(mult_54_n20), .Z(mult_54_n3) );
  CKXOR2D1 U79 ( .A1(mult_54_n12), .A2(mult_54_n2), .Z(midpoint_product[9]) );
  INR2D0 U5 ( .A1(x_product[12]), .B1(add_1_root_sub_58_carry[25]), .ZN(N26)
         );
  CKND0 U6 ( .I(n40), .ZN(mult_54_n19) );
  CKND2D0 U7 ( .A1(x_mantissa[22]), .A2(n200), .ZN(n40) );
  IND2D0 U8 ( .A1(N14), .B1(y_product[2]), .ZN(sub_0_root_sub_58_carry[15]) );
  CKXOR2D0 U9 ( .A1(N14), .A2(y_product[2]), .Z(plane_exact[14]) );
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
  CKBD1 U37 ( .I(result_fraction[10]), .Z(result[10]) );
  CKBD1 U38 ( .I(result_fraction[11]), .Z(result[11]) );
  CKBD1 U39 ( .I(result_fraction[12]), .Z(result[12]) );
  CKBD1 U40 ( .I(result_fraction[9]), .Z(result[9]) );
  CKBD1 U41 ( .I(result_fraction[8]), .Z(result[8]) );
  CKBD1 U42 ( .I(result_fraction[7]), .Z(result[7]) );
  FA1D0 U43 ( .A(N4), .B(exponent_adjust[1]), .CI(n1), .CO(
        add_0_root_add_0_root_add_22_2_carry[2]), .S(result[24]) );
  FA1D0 U44 ( .A(N8), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[5]), .CO(
        add_0_root_add_0_root_add_22_2_carry[6]), .S(result[28]) );
  FA1D0 U45 ( .A(N5), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[2]), .CO(
        add_0_root_add_0_root_add_22_2_carry[3]), .S(result[25]) );
  FA1D0 U46 ( .A(N6), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[3]), .CO(
        add_0_root_add_0_root_add_22_2_carry[4]), .S(result[26]) );
  FA1D0 U47 ( .A(N7), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[4]), .CO(
        add_0_root_add_0_root_add_22_2_carry[5]), .S(result[27]) );
  FA1D0 U48 ( .A(N9), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[6]), .CO(
        add_0_root_add_0_root_add_22_2_carry[7]), .S(result[29]) );
  CKBD1 U55 ( .I(y[22]), .Z(fraction_y[22]) );
  XOR3D1 U58 ( .A1(N10), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_22_2_carry[7]), .Z(result[30]) );
  INVD1 U66 ( .I(y[29]), .ZN(N17) );
  INVD1 U67 ( .I(y[24]), .ZN(N12) );
  INVD1 U68 ( .I(y[25]), .ZN(N13) );
  INVD1 U69 ( .I(y[26]), .ZN(N14) );
  INVD1 U70 ( .I(y[27]), .ZN(N15) );
  INVD1 U71 ( .I(y[28]), .ZN(N16) );
  CKBD1 U87 ( .I(x[22]), .Z(fraction_x[22]) );
  CKBD1 U88 ( .I(x[21]), .Z(fraction_x[21]) );
  CKBD1 U89 ( .I(x[20]), .Z(fraction_x[20]) );
  CKBD1 U90 ( .I(x[19]), .Z(fraction_x[19]) );
  CKBD1 U91 ( .I(x[18]), .Z(fraction_x[18]) );
  CKBD1 U92 ( .I(x[17]), .Z(fraction_x[17]) );
  CKBD1 U93 ( .I(x[16]), .Z(fraction_x[16]) );
  CKBD1 U94 ( .I(y[21]), .Z(fraction_y[21]) );
  CKBD1 U95 ( .I(y[20]), .Z(fraction_y[20]) );
  CKBD1 U96 ( .I(y[19]), .Z(fraction_y[19]) );
  CKBD1 U97 ( .I(y[18]), .Z(fraction_y[18]) );
  CKBD1 U98 ( .I(y[17]), .Z(fraction_y[17]) );
  CKBD1 U99 ( .I(y[16]), .Z(fraction_y[16]) );
  CKBD1 U100 ( .I(result_fraction[22]), .Z(result[22]) );
  CKBD1 U101 ( .I(result_fraction[21]), .Z(result[21]) );
  CKBD1 U102 ( .I(result_fraction[20]), .Z(result[20]) );
  CKBD1 U103 ( .I(result_fraction[19]), .Z(result[19]) );
  CKBD1 U104 ( .I(result_fraction[18]), .Z(result[18]) );
  CKBD1 U105 ( .I(result_fraction[17]), .Z(result[17]) );
  CKBD1 U106 ( .I(result_fraction[16]), .Z(result[16]) );
  CKBD1 U107 ( .I(result_fraction[15]), .Z(result[15]) );
  CKBD1 U108 ( .I(result_fraction[14]), .Z(result[14]) );
  CKBD1 U109 ( .I(result_fraction[13]), .Z(result[13]) );
  TIEL U110 ( .ZN(n79) );
  CKXOR2D1 U111 ( .A1(exponent_adjust[0]), .A2(N3), .Z(result[23]) );
  CKND0 U119 ( .I(y[23]), .ZN(N11) );
endmodule



    module oadm_fixed_div_specialized_1_16_16_7_53_2a_DW_mult_uns_0_DW_mult_uns_1 ( 
        a, b, product );
  input [28:0] a;
  input [6:0] b;
  output [35:0] product;
  wire   n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n78, n79, n81, n82, n84, n85, n87, n88, n90, n91,
         n93, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n211, n212, n213, n214, n215, n216, n217, n218,
         n219, n220, n221, n222, n223, n224, n225, n226, n436, n437, n438,
         n440, n441, n444, n445, n446, n447, n448, n449, n450, n451, n452,
         n453, n454, n455, n456, n457, n459, n463, n464, n465, n467, n468,
         n473, n474, n475, n477, n478, n483, n484, n485, n486, n487, n492,
         n493, n494, n495, n496, n501, n502, n503, n504, n507, n514, n515,
         n516, n517, n523, n524, n525, n526, n527, n528, n529, n530, n531,
         n532, n533, n534, n535, n536;

  FA1D0 U17 ( .A(n51), .B(n49), .CI(n17), .CO(n16), .S(product[29]) );
  FA1D0 U18 ( .A(n54), .B(n52), .CI(n18), .CO(n17), .S(product[28]) );
  FA1D0 U19 ( .A(n57), .B(n55), .CI(n19), .CO(n18), .S(product[27]) );
  FA1D0 U20 ( .A(n60), .B(n58), .CI(n20), .CO(n19), .S(product[26]) );
  FA1D0 U21 ( .A(n63), .B(n61), .CI(n21), .CO(n20), .S(product[25]) );
  FA1D0 U22 ( .A(n66), .B(n64), .CI(n22), .CO(n21), .S(product[24]) );
  FA1D0 U23 ( .A(n69), .B(n67), .CI(n23), .CO(n22), .S(product[23]) );
  FA1D0 U24 ( .A(n72), .B(n70), .CI(n24), .CO(n23), .S(product[22]) );
  FA1D0 U25 ( .A(n75), .B(n73), .CI(n25), .CO(n24), .S(product[21]) );
  FA1D0 U26 ( .A(n78), .B(n76), .CI(n26), .CO(n25), .S(product[20]) );
  FA1D0 U27 ( .A(n81), .B(n79), .CI(n27), .CO(n26), .S(product[19]) );
  FA1D0 U28 ( .A(n84), .B(n82), .CI(n28), .CO(n27), .S(product[18]) );
  FA1D0 U29 ( .A(n87), .B(n85), .CI(n29), .CO(n28), .S(product[17]) );
  FA1D0 U30 ( .A(n90), .B(n88), .CI(n30), .CO(n29), .S(product[16]) );
  FA1D0 U31 ( .A(n93), .B(n91), .CI(n31), .CO(n30), .S(product[15]) );
  CMPE42D1 U48 ( .A(n183), .B(n211), .C(a[23]), .CIX(n50), .D(n441), .CO(n48), 
        .COX(n47), .S(n49) );
  CMPE42D1 U49 ( .A(n212), .B(n184), .C(a[22]), .CIX(n53), .D(n457), .CO(n51), 
        .COX(n50), .S(n52) );
  CMPE42D1 U50 ( .A(n213), .B(n185), .C(a[21]), .CIX(n56), .D(n514), .CO(n54), 
        .COX(n53), .S(n55) );
  CMPE42D1 U51 ( .A(n214), .B(n186), .C(a[20]), .CIX(n59), .D(n515), .CO(n57), 
        .COX(n56), .S(n58) );
  CMPE42D1 U52 ( .A(n215), .B(n187), .C(a[19]), .CIX(n62), .D(n516), .CO(n60), 
        .COX(n59), .S(n61) );
  CMPE42D1 U53 ( .A(n216), .B(n188), .C(a[18]), .CIX(n65), .D(n190), .CO(n63), 
        .COX(n62), .S(n64) );
  CMPE42D1 U54 ( .A(n217), .B(n189), .C(a[17]), .CIX(n68), .D(n438), .CO(n66), 
        .COX(n65), .S(n67) );
  CMPE42D1 U55 ( .A(n218), .B(n190), .C(a[16]), .CIX(n71), .D(n436), .CO(n69), 
        .COX(n68), .S(n70) );
  CMPE42D1 U56 ( .A(n219), .B(n191), .C(a[15]), .CIX(n74), .D(n437), .CO(n72), 
        .COX(n71), .S(n73) );
  CMPE42D1 U57 ( .A(n220), .B(n192), .C(a[14]), .CIX(n440), .D(n517), .CO(n75), 
        .COX(n74), .S(n76) );
  CKXOR2D1 U312 ( .A1(b[3]), .A2(a[18]), .Z(n436) );
  CKXOR2D1 U313 ( .A1(b[3]), .A2(a[17]), .Z(n437) );
  CKXOR2D1 U314 ( .A1(b[3]), .A2(a[19]), .Z(n438) );
  AN2XD1 U316 ( .A1(n221), .A2(n193), .Z(n440) );
  XNR2D1 U317 ( .A1(b[4]), .A2(a[25]), .ZN(n441) );
  NR2D1 U318 ( .A1(n194), .A2(n475), .ZN(n478) );
  IND2D1 U320 ( .A1(n194), .B1(n448), .ZN(n474) );
  NR2D1 U321 ( .A1(n193), .A2(n465), .ZN(n468) );
  NR2D1 U322 ( .A1(n196), .A2(n494), .ZN(n496) );
  AN2XD1 U328 ( .A1(n194), .A2(n451), .Z(n444) );
  NR2D1 U329 ( .A1(n195), .A2(n485), .ZN(n487) );
  AN2XD1 U331 ( .A1(n195), .A2(n449), .Z(n445) );
  AN2XD1 U334 ( .A1(n193), .A2(n450), .Z(n446) );
  AN2XD1 U337 ( .A1(n196), .A2(n452), .Z(n447) );
  CKXOR2D1 U344 ( .A1(b[3]), .A2(a[14]), .Z(n448) );
  ND2D1 U353 ( .A1(n193), .A2(n454), .ZN(n463) );
  IND2D1 U354 ( .A1(n193), .B1(n454), .ZN(n464) );
  ND2D1 U360 ( .A1(n196), .A2(b[3]), .ZN(n492) );
  IND2D1 U361 ( .A1(n196), .B1(n459), .ZN(n493) );
  ND2D1 U364 ( .A1(n194), .A2(n448), .ZN(n473) );
  ND2D1 U366 ( .A1(n195), .A2(b[3]), .ZN(n483) );
  IND2D1 U367 ( .A1(n195), .B1(b[3]), .ZN(n484) );
  OR2XD1 U369 ( .A1(b[3]), .A2(n503), .Z(n453) );
  ND2D1 U370 ( .A1(n459), .A2(n455), .ZN(n502) );
  NR2D1 U371 ( .A1(n225), .A2(n501), .ZN(n504) );
  ND2D1 U372 ( .A1(n459), .A2(b[3]), .ZN(n501) );
  CKXOR2D1 U373 ( .A1(b[3]), .A2(a[15]), .Z(n454) );
  ND2D1 U382 ( .A1(b[4]), .A2(a[14]), .ZN(n226) );
  ND2D1 U385 ( .A1(n459), .A2(b[3]), .ZN(n507) );
  MUX2ND0 U390 ( .I0(n463), .I1(n464), .S(n221), .ZN(n467) );
  MUX2ND0 U395 ( .I0(n473), .I1(n474), .S(n222), .ZN(n477) );
  MUX2ND0 U400 ( .I0(n483), .I1(n484), .S(n223), .ZN(n486) );
  MUX2ND0 U405 ( .I0(n492), .I1(n493), .S(n224), .ZN(n495) );
  MUX2ND0 U412 ( .I0(a[14]), .I1(a[15]), .S(b[6]), .ZN(n225) );
  MUX2ND0 U413 ( .I0(a[15]), .I1(a[16]), .S(b[0]), .ZN(n224) );
  MUX2ND0 U414 ( .I0(a[16]), .I1(a[17]), .S(b[0]), .ZN(n223) );
  MUX2ND0 U415 ( .I0(a[17]), .I1(a[18]), .S(b[0]), .ZN(n222) );
  MUX2ND0 U416 ( .I0(a[18]), .I1(a[19]), .S(b[0]), .ZN(n221) );
  MUX2ND0 U417 ( .I0(a[19]), .I1(a[20]), .S(b[0]), .ZN(n220) );
  MUX2ND0 U418 ( .I0(a[20]), .I1(a[21]), .S(b[0]), .ZN(n219) );
  MUX2ND0 U419 ( .I0(a[21]), .I1(a[22]), .S(b[0]), .ZN(n218) );
  MUX2ND0 U420 ( .I0(a[22]), .I1(a[23]), .S(b[0]), .ZN(n217) );
  MUX2ND0 U421 ( .I0(a[23]), .I1(a[24]), .S(b[0]), .ZN(n216) );
  MUX2ND0 U422 ( .I0(a[24]), .I1(a[25]), .S(b[0]), .ZN(n215) );
  MUX2ND0 U423 ( .I0(a[25]), .I1(a[26]), .S(b[0]), .ZN(n214) );
  MUX2ND0 U424 ( .I0(a[26]), .I1(a[27]), .S(b[0]), .ZN(n213) );
  MUX2ND0 U425 ( .I0(a[27]), .I1(a[28]), .S(b[0]), .ZN(n212) );
  IND2D0 U426 ( .A1(b[0]), .B1(a[28]), .ZN(n211) );
  CKXOR2D0 U427 ( .A1(b[3]), .A2(a[14]), .Z(n196) );
  CKXOR2D0 U428 ( .A1(b[3]), .A2(a[15]), .Z(n195) );
  CKXOR2D0 U429 ( .A1(b[3]), .A2(a[16]), .Z(n194) );
  CKXOR2D0 U430 ( .A1(b[3]), .A2(a[17]), .Z(n193) );
  CKXOR2D0 U431 ( .A1(b[3]), .A2(a[18]), .Z(n192) );
  CKXOR2D0 U432 ( .A1(b[3]), .A2(a[19]), .Z(n191) );
  CKXOR2D0 U433 ( .A1(b[3]), .A2(a[20]), .Z(n190) );
  CKXOR2D0 U434 ( .A1(b[3]), .A2(a[21]), .Z(n189) );
  CKXOR2D0 U435 ( .A1(b[3]), .A2(a[22]), .Z(n188) );
  CKXOR2D0 U436 ( .A1(b[3]), .A2(a[23]), .Z(n187) );
  CKXOR2D0 U437 ( .A1(b[3]), .A2(a[24]), .Z(n186) );
  CKXOR2D0 U438 ( .A1(b[3]), .A2(a[25]), .Z(n185) );
  CKXOR2D0 U439 ( .A1(b[3]), .A2(a[26]), .Z(n184) );
  CKXOR2D0 U440 ( .A1(b[3]), .A2(a[27]), .Z(n183) );
  CKXOR2D0 U315 ( .A1(n456), .A2(n523), .Z(product[14]) );
  CKND2D0 U319 ( .A1(n459), .A2(b[3]), .ZN(n523) );
  CKXOR2D0 U323 ( .A1(n459), .A2(n226), .Z(n456) );
  XNR4D0 U324 ( .A1(n47), .A2(n48), .A3(n16), .A4(n524), .ZN(product[30]) );
  XOR4D0 U325 ( .A1(b[3]), .A2(a[24]), .A3(a[28]), .A4(n184), .Z(n524) );
  CKND0 U326 ( .I(b[6]), .ZN(n459) );
  XNR2D0 U327 ( .A1(b[6]), .A2(a[24]), .ZN(n457) );
  CKXOR2D1 U330 ( .A1(n459), .A2(a[23]), .Z(n514) );
  CKXOR2D1 U332 ( .A1(n459), .A2(a[22]), .Z(n515) );
  CKXOR2D1 U333 ( .A1(n459), .A2(a[21]), .Z(n516) );
  AO211D0 U335 ( .A1(n527), .A2(n454), .B(n467), .C(n525), .Z(n78) );
  MUX2D0 U336 ( .I0(n446), .I1(n468), .S(n221), .Z(n525) );
  AO211D0 U338 ( .A1(n530), .A2(n448), .B(n477), .C(n526), .Z(n81) );
  MUX2D0 U339 ( .I0(n444), .I1(n478), .S(n222), .Z(n526) );
  CKND0 U340 ( .I(n465), .ZN(n527) );
  XOR4D0 U341 ( .A1(n221), .A2(n193), .A3(n454), .A4(n450), .Z(n79) );
  OAI211D0 U342 ( .A1(n485), .A2(b[0]), .B(n529), .C(n528), .ZN(n84) );
  CKND0 U343 ( .I(n486), .ZN(n528) );
  MUX2ND0 U345 ( .I0(n445), .I1(n487), .S(n223), .ZN(n529) );
  CKND0 U346 ( .I(n475), .ZN(n530) );
  CKXOR2D1 U347 ( .A1(b[3]), .A2(a[16]), .Z(n517) );
  XOR4D0 U348 ( .A1(n222), .A2(n194), .A3(n448), .A4(n451), .Z(n82) );
  OAI211D0 U349 ( .A1(n494), .A2(b[0]), .B(n532), .C(n531), .ZN(n87) );
  CKND0 U350 ( .I(n495), .ZN(n531) );
  MUX2ND0 U351 ( .I0(n447), .I1(n496), .S(n224), .ZN(n532) );
  CKND0 U352 ( .I(n465), .ZN(n450) );
  CKND2D0 U355 ( .A1(n194), .A2(n222), .ZN(n465) );
  XOR4D0 U356 ( .A1(n223), .A2(n195), .A3(n459), .A4(n449), .Z(n85) );
  OAI211D0 U357 ( .A1(n503), .A2(b[0]), .B(n534), .C(n533), .ZN(n90) );
  CKND0 U358 ( .I(n504), .ZN(n533) );
  MUX2D0 U359 ( .I0(n502), .I1(n453), .S(n225), .Z(n534) );
  CKND0 U362 ( .I(n475), .ZN(n451) );
  CKND2D0 U363 ( .A1(n195), .A2(n223), .ZN(n475) );
  XOR4D0 U365 ( .A1(n224), .A2(n196), .A3(n459), .A4(n452), .Z(n88) );
  OAI211D0 U368 ( .A1(n226), .A2(n507), .B(n536), .C(n535), .ZN(n93) );
  IND3D0 U374 ( .A1(n226), .B1(b[3]), .B2(n459), .ZN(n535) );
  CKND0 U375 ( .I(b[5]), .ZN(n536) );
  IND2D0 U376 ( .A1(n456), .B1(n501), .ZN(n31) );
  CKND0 U377 ( .I(n485), .ZN(n449) );
  CKND2D0 U378 ( .A1(n196), .A2(n224), .ZN(n485) );
  CKXOR2D0 U379 ( .A1(n455), .A2(n225), .Z(n91) );
  CKND0 U380 ( .I(n494), .ZN(n452) );
  CKND2D0 U381 ( .A1(b[3]), .A2(n225), .ZN(n494) );
  CKND0 U383 ( .I(n503), .ZN(n455) );
  CKND2D0 U384 ( .A1(b[3]), .A2(n226), .ZN(n503) );
endmodule


module oadm_fixed_div_specialized_1_16_16_7_53_2a ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   coefficient_5_, exponent_adjust_2_, n2, n27, n28, n1, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22;
  wire   [22:16] x_mantissa;
  wire   [21:16] y_mantissa;
  wire   [28:14] plane_full;
  wire   [30:14] full_scale_product;
  wire   [22:7] normalized_fraction;
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
        SYNOPSYS_UNCONNECTED__70, SYNOPSYS_UNCONNECTED__71;

  oadm_fixed_div_specialized_plane_LEVEL1_RESIDUAL_DROP16 plane ( .x_mantissa(
        {1'b0, x_mantissa, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y_mantissa({1'b0, 
        coefficient_5_, y_mantissa, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .plane_exact({
        plane_full, SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13}) );
  fp32_normal_finite_wrapper fp_wrapper ( .x({x[31:16], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y({y[31:16], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .divide_mode(1'b0), .fraction_x(
        {x_mantissa, SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29}), .fraction_y({
        coefficient_5_, y_mantissa, SYNOPSYS_UNCONNECTED__30, 
        SYNOPSYS_UNCONNECTED__31, SYNOPSYS_UNCONNECTED__32, 
        SYNOPSYS_UNCONNECTED__33, SYNOPSYS_UNCONNECTED__34, 
        SYNOPSYS_UNCONNECTED__35, SYNOPSYS_UNCONNECTED__36, 
        SYNOPSYS_UNCONNECTED__37, SYNOPSYS_UNCONNECTED__38, 
        SYNOPSYS_UNCONNECTED__39, SYNOPSYS_UNCONNECTED__40, 
        SYNOPSYS_UNCONNECTED__41, SYNOPSYS_UNCONNECTED__42, 
        SYNOPSYS_UNCONNECTED__43, SYNOPSYS_UNCONNECTED__44, 
        SYNOPSYS_UNCONNECTED__45}), .result_fraction({normalized_fraction, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .exponent_adjust({
        exponent_adjust_2_, exponent_adjust_2_, n2}), .result({result[31:7], 
        SYNOPSYS_UNCONNECTED__46, SYNOPSYS_UNCONNECTED__47, 
        SYNOPSYS_UNCONNECTED__48, SYNOPSYS_UNCONNECTED__49, 
        SYNOPSYS_UNCONNECTED__50, SYNOPSYS_UNCONNECTED__51, 
        SYNOPSYS_UNCONNECTED__52}) );
  oadm_fixed_div_specialized_1_16_16_7_53_2a_DW_mult_uns_0_DW_mult_uns_1 mult_121 ( 
        .a({plane_full, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1}), .b({n4, coefficient_5_, n4, coefficient_5_, n1, n22, n4}), .product({
        SYNOPSYS_UNCONNECTED__53, SYNOPSYS_UNCONNECTED__54, 
        SYNOPSYS_UNCONNECTED__55, SYNOPSYS_UNCONNECTED__56, 
        SYNOPSYS_UNCONNECTED__57, full_scale_product, SYNOPSYS_UNCONNECTED__58, 
        SYNOPSYS_UNCONNECTED__59, SYNOPSYS_UNCONNECTED__60, 
        SYNOPSYS_UNCONNECTED__61, SYNOPSYS_UNCONNECTED__62, 
        SYNOPSYS_UNCONNECTED__63, SYNOPSYS_UNCONNECTED__64, 
        SYNOPSYS_UNCONNECTED__65, SYNOPSYS_UNCONNECTED__66, 
        SYNOPSYS_UNCONNECTED__67, SYNOPSYS_UNCONNECTED__68, 
        SYNOPSYS_UNCONNECTED__69, SYNOPSYS_UNCONNECTED__70, 
        SYNOPSYS_UNCONNECTED__71}) );
  TIEL U3 ( .ZN(n1) );
  ND2D1 U4 ( .A1(n27), .A2(n28), .ZN(exponent_adjust_2_) );
  ND2D1 U5 ( .A1(n6), .A2(n5), .ZN(n28) );
  INVD1 U6 ( .I(n27), .ZN(n2) );
  OAI222D0 U7 ( .A1(n27), .A2(n19), .B1(n28), .B2(n20), .C1(n5), .C2(n18), 
        .ZN(normalized_fraction[10]) );
  OAI222D0 U8 ( .A1(n27), .A2(n18), .B1(n28), .B2(n19), .C1(n5), .C2(n17), 
        .ZN(normalized_fraction[11]) );
  OAI222D0 U9 ( .A1(n27), .A2(n17), .B1(n28), .B2(n18), .C1(n5), .C2(n16), 
        .ZN(normalized_fraction[12]) );
  OAI222D0 U10 ( .A1(n27), .A2(n20), .B1(n28), .B2(n21), .C1(n19), .C2(n5), 
        .ZN(normalized_fraction[9]) );
  OAI22D1 U11 ( .A1(n21), .A2(n27), .B1(n20), .B2(n5), .ZN(
        normalized_fraction[8]) );
  OAI222D0 U12 ( .A1(n27), .A2(n7), .B1(n28), .B2(n8), .C1(n6), .C2(n5), .ZN(
        normalized_fraction[22]) );
  OAI222D0 U13 ( .A1(n27), .A2(n16), .B1(n28), .B2(n17), .C1(n5), .C2(n15), 
        .ZN(normalized_fraction[13]) );
  OAI222D0 U14 ( .A1(n27), .A2(n15), .B1(n28), .B2(n16), .C1(n5), .C2(n14), 
        .ZN(normalized_fraction[14]) );
  OAI222D0 U15 ( .A1(n27), .A2(n14), .B1(n28), .B2(n15), .C1(n5), .C2(n13), 
        .ZN(normalized_fraction[15]) );
  OAI222D0 U16 ( .A1(n27), .A2(n13), .B1(n28), .B2(n14), .C1(n5), .C2(n12), 
        .ZN(normalized_fraction[16]) );
  OAI222D0 U17 ( .A1(n27), .A2(n12), .B1(n28), .B2(n13), .C1(n5), .C2(n11), 
        .ZN(normalized_fraction[17]) );
  OAI222D0 U18 ( .A1(n27), .A2(n11), .B1(n28), .B2(n12), .C1(n5), .C2(n10), 
        .ZN(normalized_fraction[18]) );
  OAI222D0 U19 ( .A1(n27), .A2(n10), .B1(n28), .B2(n11), .C1(n5), .C2(n9), 
        .ZN(normalized_fraction[19]) );
  OAI222D0 U20 ( .A1(n27), .A2(n9), .B1(n28), .B2(n10), .C1(n5), .C2(n8), .ZN(
        normalized_fraction[20]) );
  OAI222D0 U21 ( .A1(n27), .A2(n8), .B1(n28), .B2(n9), .C1(n5), .C2(n7), .ZN(
        normalized_fraction[21]) );
  NR2D1 U22 ( .A1(n21), .A2(n5), .ZN(normalized_fraction[7]) );
  INVD1 U23 ( .I(full_scale_product[16]), .ZN(n19) );
  ND2D1 U24 ( .A1(full_scale_product[29]), .A2(n5), .ZN(n27) );
  INVD1 U25 ( .I(full_scale_product[30]), .ZN(n5) );
  INVD1 U26 ( .I(full_scale_product[29]), .ZN(n6) );
  INVD1 U27 ( .I(full_scale_product[28]), .ZN(n7) );
  INVD1 U28 ( .I(full_scale_product[27]), .ZN(n8) );
  INVD1 U29 ( .I(full_scale_product[26]), .ZN(n9) );
  INVD1 U30 ( .I(full_scale_product[25]), .ZN(n10) );
  INVD1 U31 ( .I(full_scale_product[24]), .ZN(n11) );
  INVD1 U32 ( .I(full_scale_product[23]), .ZN(n12) );
  INVD1 U33 ( .I(full_scale_product[22]), .ZN(n13) );
  INVD1 U34 ( .I(full_scale_product[21]), .ZN(n14) );
  INVD1 U35 ( .I(full_scale_product[20]), .ZN(n15) );
  INVD1 U36 ( .I(full_scale_product[19]), .ZN(n16) );
  INVD1 U37 ( .I(full_scale_product[18]), .ZN(n17) );
  INVD1 U38 ( .I(full_scale_product[17]), .ZN(n18) );
  INVD1 U39 ( .I(full_scale_product[15]), .ZN(n20) );
  INVD1 U40 ( .I(full_scale_product[14]), .ZN(n21) );
  TIEH U43 ( .Z(n22) );
  INVD1 U41 ( .I(coefficient_5_), .ZN(n4) );
endmodule


module oadm_fixed_l1_div_specialized ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;

  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6;

  oadm_fixed_div_specialized_1_16_16_7_53_2a implementation ( .x({x[31:16], 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .y({y[31:16], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .result({result[31:7], SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6}) );
endmodule


module abs_l1_no_w ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;

  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6;
  assign result[0] = 1'b0;
  assign result[6] = 1'b0;
  assign result[5] = 1'b0;
  assign result[4] = 1'b0;
  assign result[3] = 1'b0;
  assign result[2] = 1'b0;
  assign result[1] = 1'b0;

  oadm_fixed_l1_div_specialized dut ( .x({x[31:16], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y({y[31:16], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .result({result[31:7], 
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6}) );
endmodule

