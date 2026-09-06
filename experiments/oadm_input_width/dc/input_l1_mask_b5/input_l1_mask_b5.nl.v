/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Sat Sep  5 14:54:40 2026
/////////////////////////////////////////////////////////////


module oadm_fixed_div_specialized_plane_LEVEL1_RESIDUAL_DROP16_DW_mult_tc_1 ( 
        a, b, product );
  input [6:0] a;
  input [5:0] b;
  output [12:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n16, n17, n20, n22, n25, n27, n29,
         n33, n40, n41, n46, n136, n140, n141, n142, n143, n144, n147, n148,
         n149, n150, n151, n152;

  FA1D0 U2 ( .A(n147), .B(a[5]), .CI(n2), .CO(n1), .S(product[11]) );
  FA1D0 U3 ( .A(n40), .B(n141), .CI(n3), .CO(n2), .S(product[10]) );
  FA1D0 U4 ( .A(n16), .B(n143), .CI(n4), .CO(n3), .S(product[9]) );
  FA1D0 U5 ( .A(n20), .B(n17), .CI(n5), .CO(n4), .S(product[8]) );
  FA1D0 U6 ( .A(n136), .B(n142), .CI(n6), .CO(n5), .S(product[7]) );
  FA1D0 U15 ( .A(n46), .B(n41), .CI(n22), .CO(n16), .S(n17) );
  INVD1 U101 ( .I(n20), .ZN(n142) );
  AN2XD1 U102 ( .A1(n140), .A2(n27), .Z(n136) );
  INVD1 U103 ( .I(n40), .ZN(n143) );
  INVD1 U104 ( .I(a[5]), .ZN(n141) );
  XNR2D1 U106 ( .A1(b[3]), .A2(n149), .ZN(n29) );
  XNR2D1 U109 ( .A1(b[3]), .A2(n148), .ZN(n140) );
  INVD1 U111 ( .I(a[3]), .ZN(n149) );
  INVD1 U112 ( .I(a[2]), .ZN(n150) );
  INVD1 U113 ( .I(a[4]), .ZN(n148) );
  CKXOR2D1 U116 ( .A1(n27), .A2(n140), .Z(n25) );
  AN2D0 U117 ( .A1(b[3]), .A2(n33), .Z(n8) );
  CKND0 U127 ( .I(n1), .ZN(product[12]) );
  OAI22D0 U131 ( .A1(n149), .A2(n144), .B1(b[3]), .B2(n148), .ZN(n41) );
  OAI22D0 U132 ( .A1(n148), .A2(n144), .B1(b[3]), .B2(n147), .ZN(n40) );
  XNR2D0 U133 ( .A1(n151), .A2(n152), .ZN(n20) );
  CKND2D0 U134 ( .A1(n152), .A2(n151), .ZN(n22) );
  OA22D0 U135 ( .A1(n150), .A2(n144), .B1(b[3]), .B2(n149), .Z(n151) );
  CKXOR2D0 U136 ( .A1(b[3]), .A2(n147), .Z(n152) );
  CKXOR2D0 U137 ( .A1(n144), .A2(a[6]), .Z(n46) );
  CKND0 U105 ( .I(b[3]), .ZN(n144) );
  CKND0 U107 ( .I(a[5]), .ZN(n147) );
  CKXOR2D0 U108 ( .A1(b[3]), .A2(n33), .Z(product[4]) );
  XNR2D0 U110 ( .A1(b[3]), .A2(n150), .ZN(n33) );
  AN2D0 U114 ( .A1(n25), .A2(n7), .Z(n6) );
  AN2D0 U115 ( .A1(n29), .A2(n8), .Z(n7) );
  NR2D0 U118 ( .A1(b[3]), .A2(n150), .ZN(n27) );
  CKXOR2D1 U119 ( .A1(n7), .A2(n25), .Z(product[6]) );
  CKXOR2D1 U120 ( .A1(n8), .A2(n29), .Z(product[5]) );
endmodule


module oadm_fixed_div_specialized_plane_LEVEL1_RESIDUAL_DROP16_DW_mult_tc_0 ( 
        a, b, product );
  input [6:0] a;
  input [5:0] b;
  output [12:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n16, n17, n20, n22, n25, n27, n29,
         n33, n40, n41, n46, n136, n140, n141, n142, n143, n144, n147, n148,
         n149, n150, n151, n152;

  FA1D0 U2 ( .A(n147), .B(a[5]), .CI(n2), .CO(n1), .S(product[11]) );
  FA1D0 U3 ( .A(n40), .B(n142), .CI(n3), .CO(n2), .S(product[10]) );
  FA1D0 U4 ( .A(n16), .B(n144), .CI(n4), .CO(n3), .S(product[9]) );
  FA1D0 U5 ( .A(n20), .B(n17), .CI(n5), .CO(n4), .S(product[8]) );
  FA1D0 U6 ( .A(n136), .B(n143), .CI(n6), .CO(n5), .S(product[7]) );
  FA1D0 U15 ( .A(n46), .B(n41), .CI(n22), .CO(n16), .S(n17) );
  INVD1 U101 ( .I(n20), .ZN(n143) );
  AN2XD1 U103 ( .A1(n140), .A2(n27), .Z(n136) );
  INVD1 U104 ( .I(n40), .ZN(n144) );
  INVD1 U105 ( .I(a[5]), .ZN(n142) );
  XNR2D1 U106 ( .A1(b[3]), .A2(n149), .ZN(n29) );
  XNR2D1 U109 ( .A1(b[3]), .A2(n148), .ZN(n140) );
  INVD1 U111 ( .I(a[3]), .ZN(n149) );
  INVD1 U112 ( .I(a[2]), .ZN(n150) );
  INVD1 U113 ( .I(a[4]), .ZN(n148) );
  CKXOR2D1 U116 ( .A1(n27), .A2(n140), .Z(n25) );
  CKXOR2D0 U118 ( .A1(b[3]), .A2(n33), .Z(product[4]) );
  CKND0 U127 ( .I(n1), .ZN(product[12]) );
  OAI22D0 U131 ( .A1(n149), .A2(n141), .B1(b[3]), .B2(n148), .ZN(n41) );
  OAI22D0 U132 ( .A1(n148), .A2(n141), .B1(b[3]), .B2(n147), .ZN(n40) );
  XNR2D0 U133 ( .A1(n151), .A2(n152), .ZN(n20) );
  CKND2D0 U134 ( .A1(n152), .A2(n151), .ZN(n22) );
  OA22D0 U135 ( .A1(n150), .A2(n141), .B1(b[3]), .B2(n149), .Z(n151) );
  CKXOR2D0 U136 ( .A1(b[3]), .A2(n147), .Z(n152) );
  CKXOR2D0 U137 ( .A1(n141), .A2(a[6]), .Z(n46) );
  CKND0 U102 ( .I(b[3]), .ZN(n141) );
  CKND0 U107 ( .I(a[5]), .ZN(n147) );
  AN2D0 U108 ( .A1(b[3]), .A2(n33), .Z(n8) );
  XNR2D0 U110 ( .A1(b[3]), .A2(n150), .ZN(n33) );
  AN2D0 U114 ( .A1(n25), .A2(n7), .Z(n6) );
  AN2D0 U115 ( .A1(n29), .A2(n8), .Z(n7) );
  NR2D0 U117 ( .A1(b[3]), .A2(n150), .ZN(n27) );
  CKXOR2D1 U119 ( .A1(n7), .A2(n25), .Z(product[6]) );
  CKXOR2D1 U120 ( .A1(n8), .A2(n29), .Z(product[5]) );
endmodule


module oadm_fixed_div_specialized_plane_LEVEL1_RESIDUAL_DROP16 ( x_mantissa, 
        y_mantissa, plane_exact );
  input [23:0] x_mantissa;
  input [23:0] y_mantissa;
  output [28:0] plane_exact;
  wire   x_residual_22_, y_residual_22_, N23, N22, N21, N20, N19, N18, N17,
         N16, mult_54_n22, mult_54_n20, mult_54_n19, mult_54_n16, mult_54_n15,
         mult_54_n12, mult_54_n3, mult_54_n2, n1, n3, n5, n8, n9, n10, n11,
         n12, n13, n14, n15, n180, n190, n200, n210, n220, n230, n24, n25, n26,
         n27;
  wire   [12:7] x_product;
  wire   [12:4] y_product;
  wire   [8:5] midpoint_product;
  wire   [24:17] sub_0_root_sub_58_carry;
  wire   [24:21] add_1_root_sub_58_carry;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7;

  oadm_fixed_div_specialized_plane_LEVEL1_RESIDUAL_DROP16_DW_mult_tc_1 mult_44 ( 
        .a({y_residual_22_, y_residual_22_, y_mantissa[20:18], 1'b0, 1'b0}), 
        .b({n1, n3, x_mantissa[22], n3, n1, n1}), .product({y_product, 
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3}) );
  oadm_fixed_div_specialized_plane_LEVEL1_RESIDUAL_DROP16_DW_mult_tc_0 mult_42 ( 
        .a({x_residual_22_, x_residual_22_, x_mantissa[20:18], 1'b0, 1'b0}), 
        .b({n1, n3, y_mantissa[22], n3, n1, n1}), .product({x_product, N18, 
        N17, N16, SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7}) );
  FA1D0 mult_54_U3 ( .A(mult_54_n15), .B(n26), .CI(mult_54_n3), .CO(mult_54_n2), .S(midpoint_product[8]) );
  TIEL U3 ( .ZN(n1) );
  TIEH U4 ( .Z(n3) );
  FA1D0 U6 ( .A(midpoint_product[6]), .B(x_product[9]), .CI(
        add_1_root_sub_58_carry[21]), .CO(add_1_root_sub_58_carry[22]), .S(N21) );
  FA1D0 U7 ( .A(N23), .B(n15), .CI(sub_0_root_sub_58_carry[23]), .CO(
        sub_0_root_sub_58_carry[24]), .S(plane_exact[23]) );
  INVD1 U8 ( .I(y_product[11]), .ZN(n15) );
  FA1D0 U9 ( .A(midpoint_product[8]), .B(x_product[11]), .CI(
        add_1_root_sub_58_carry[23]), .CO(add_1_root_sub_58_carry[24]), .S(N23) );
  FA1D0 U11 ( .A(midpoint_product[7]), .B(x_product[10]), .CI(
        add_1_root_sub_58_carry[22]), .CO(add_1_root_sub_58_carry[23]), .S(N22) );
  FA1D0 U12 ( .A(N22), .B(n14), .CI(sub_0_root_sub_58_carry[22]), .CO(
        sub_0_root_sub_58_carry[23]), .S(plane_exact[22]) );
  INVD1 U13 ( .I(y_product[10]), .ZN(n14) );
  FA1D0 U17 ( .A(N21), .B(n13), .CI(sub_0_root_sub_58_carry[21]), .CO(
        sub_0_root_sub_58_carry[22]), .S(plane_exact[21]) );
  INVD1 U18 ( .I(y_product[9]), .ZN(n13) );
  FA1D0 U19 ( .A(N19), .B(n11), .CI(sub_0_root_sub_58_carry[19]), .CO(
        sub_0_root_sub_58_carry[20]), .S(plane_exact[19]) );
  INVD1 U20 ( .I(y_product[7]), .ZN(n11) );
  INVD1 U21 ( .I(x_product[7]), .ZN(N19) );
  FA1D0 U22 ( .A(N18), .B(n10), .CI(sub_0_root_sub_58_carry[18]), .CO(
        sub_0_root_sub_58_carry[19]), .S(plane_exact[18]) );
  INVD1 U23 ( .I(y_product[6]), .ZN(n10) );
  FA1D0 U24 ( .A(N17), .B(n9), .CI(sub_0_root_sub_58_carry[17]), .CO(
        sub_0_root_sub_58_carry[18]), .S(plane_exact[17]) );
  INVD1 U25 ( .I(y_product[5]), .ZN(n9) );
  CKXOR2D1 U27 ( .A1(mult_54_n22), .A2(mult_54_n19), .Z(midpoint_product[6])
         );
  FA1D0 U28 ( .A(N20), .B(n12), .CI(sub_0_root_sub_58_carry[20]), .CO(
        sub_0_root_sub_58_carry[21]), .S(plane_exact[20]) );
  INVD1 U29 ( .I(y_product[8]), .ZN(n12) );
  FA1D0 U30 ( .A(N16), .B(n8), .CI(1'b1), .CO(sub_0_root_sub_58_carry[17]), 
        .S(plane_exact[16]) );
  INVD1 U31 ( .I(y_product[4]), .ZN(n8) );
  INVD1 U32 ( .I(mult_54_n12), .ZN(n26) );
  NR2D1 U34 ( .A1(mult_54_n19), .A2(mult_54_n22), .ZN(mult_54_n20) );
  FA1D0 U35 ( .A(midpoint_product[5]), .B(x_product[8]), .CI(x_product[7]), 
        .CO(add_1_root_sub_58_carry[21]), .S(N20) );
  INVD1 U37 ( .I(x_mantissa[22]), .ZN(n24) );
  INVD1 U38 ( .I(x_mantissa[21]), .ZN(x_residual_22_) );
  INVD1 U39 ( .I(y_mantissa[21]), .ZN(y_residual_22_) );
  NR2D0 U43 ( .A1(n5), .A2(n24), .ZN(mult_54_n22) );
  CKXOR2D0 U44 ( .A1(y_mantissa[22]), .A2(x_mantissa[22]), .Z(
        midpoint_product[5]) );
  MUX2ND0 U46 ( .I0(n180), .I1(n190), .S(mult_54_n22), .ZN(n220) );
  MUX2ND0 U47 ( .I0(n200), .I1(n210), .S(mult_54_n22), .ZN(n230) );
  NR2D0 U48 ( .A1(n25), .A2(n24), .ZN(n180) );
  NR2D0 U49 ( .A1(x_mantissa[22]), .A2(n25), .ZN(n190) );
  NR2D0 U50 ( .A1(n5), .A2(n24), .ZN(n200) );
  NR2D0 U51 ( .A1(x_mantissa[22]), .A2(n5), .ZN(n210) );
  XOR4D0 U52 ( .A1(n24), .A2(mult_54_n22), .A3(n5), .A4(mult_54_n19), .Z(
        mult_54_n16) );
  INR2D0 U53 ( .A1(mult_54_n22), .B1(n24), .ZN(mult_54_n12) );
  OAI211D0 U54 ( .A1(n5), .A2(n25), .B(n230), .C(n220), .ZN(mult_54_n15) );
  CKXOR2D0 U55 ( .A1(mult_54_n16), .A2(mult_54_n20), .Z(midpoint_product[7])
         );
  AN2D0 U56 ( .A1(mult_54_n16), .A2(mult_54_n20), .Z(mult_54_n3) );
  XNR3D0 U5 ( .A1(x_product[12]), .A2(add_1_root_sub_58_carry[24]), .A3(n27), 
        .ZN(plane_exact[24]) );
  XOR4D0 U10 ( .A1(sub_0_root_sub_58_carry[24]), .A2(mult_54_n12), .A3(
        mult_54_n2), .A4(y_product[12]), .Z(n27) );
  CKND0 U14 ( .I(n25), .ZN(mult_54_n19) );
  CKND2D0 U15 ( .A1(x_mantissa[22]), .A2(y_mantissa[22]), .ZN(n25) );
  CKND0 U16 ( .I(y_mantissa[22]), .ZN(n5) );
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
  INVD1 U64 ( .I(y[29]), .ZN(N17) );
  INVD1 U65 ( .I(y[24]), .ZN(N12) );
  INVD1 U66 ( .I(y[25]), .ZN(N13) );
  INVD1 U67 ( .I(y[26]), .ZN(N14) );
  INVD1 U68 ( .I(y[27]), .ZN(N15) );
  INVD1 U69 ( .I(y[28]), .ZN(N16) );
  CKBD1 U87 ( .I(x[22]), .Z(fraction_x[22]) );
  CKBD1 U88 ( .I(x[21]), .Z(fraction_x[21]) );
  CKBD1 U89 ( .I(x[20]), .Z(fraction_x[20]) );
  CKBD1 U90 ( .I(x[19]), .Z(fraction_x[19]) );
  CKBD1 U91 ( .I(x[18]), .Z(fraction_x[18]) );
  CKBD1 U92 ( .I(y[21]), .Z(fraction_y[21]) );
  CKBD1 U93 ( .I(y[20]), .Z(fraction_y[20]) );
  CKBD1 U94 ( .I(y[19]), .Z(fraction_y[19]) );
  CKBD1 U95 ( .I(y[18]), .Z(fraction_y[18]) );
  CKBD1 U96 ( .I(result_fraction[22]), .Z(result[22]) );
  CKBD1 U97 ( .I(result_fraction[21]), .Z(result[21]) );
  CKBD1 U98 ( .I(result_fraction[20]), .Z(result[20]) );
  CKBD1 U99 ( .I(result_fraction[19]), .Z(result[19]) );
  CKBD1 U100 ( .I(result_fraction[18]), .Z(result[18]) );
  CKBD1 U101 ( .I(result_fraction[17]), .Z(result[17]) );
  CKBD1 U102 ( .I(result_fraction[16]), .Z(result[16]) );
  CKBD1 U103 ( .I(result_fraction[15]), .Z(result[15]) );
  CKBD1 U104 ( .I(result_fraction[14]), .Z(result[14]) );
  CKBD1 U105 ( .I(result_fraction[13]), .Z(result[13]) );
  CKBD1 U106 ( .I(result_fraction[12]), .Z(result[12]) );
  CKBD1 U107 ( .I(result_fraction[11]), .Z(result[11]) );
  CKBD1 U108 ( .I(result_fraction[10]), .Z(result[10]) );
  CKBD1 U109 ( .I(result_fraction[9]), .Z(result[9]) );
  TIEL U110 ( .ZN(n79) );
  CKXOR2D1 U111 ( .A1(exponent_adjust[0]), .A2(N3), .Z(result[23]) );
  CKND0 U119 ( .I(y[23]), .ZN(N11) );
endmodule


module oadm_input_trial_5_0_1_16_16_7_53_2a_DW_mult_uns_0_DW_mult_uns_1 ( a, b, 
        product );
  input [8:0] a;
  input [6:0] b;
  output [15:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n16, n17,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n77, n78, n79, n80, n81, n82, n83,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n187, n188, n189, n191,
         n192, n193, n194, n195, n197, n198, n199, n200, n202, n205;

  FA1D0 U3 ( .A(n20), .B(n17), .CI(n3), .CO(n2), .S(product[13]) );
  FA1D0 U4 ( .A(n24), .B(n21), .CI(n4), .CO(n3), .S(product[12]) );
  FA1D0 U5 ( .A(n28), .B(n25), .CI(n5), .CO(n4), .S(product[11]) );
  FA1D0 U6 ( .A(n29), .B(n33), .CI(n6), .CO(n5), .S(product[10]) );
  FA1D0 U7 ( .A(n36), .B(n34), .CI(n7), .CO(n6), .S(product[9]) );
  FA1D0 U8 ( .A(n39), .B(n37), .CI(n8), .CO(n7), .S(product[8]) );
  FA1D0 U9 ( .A(n42), .B(n40), .CI(n9), .CO(n8), .S(product[7]) );
  FA1D0 U10 ( .A(n43), .B(n44), .CI(n10), .CO(n9), .S(product[6]) );
  FA1D0 U11 ( .A(n45), .B(n48), .CI(n11), .CO(n10), .S(product[5]) );
  FA1D0 U12 ( .A(n49), .B(n50), .CI(n12), .CO(n11), .S(product[4]) );
  FA1D0 U13 ( .A(n51), .B(n91), .CI(n13), .CO(n12), .S(product[3]) );
  FA1D0 U14 ( .A(n92), .B(a[0]), .CI(n14), .CO(n13), .S(product[2]) );
  HA1D0 U15 ( .A(n93), .B(n54), .CO(n14), .S(product[1]) );
  FA1D0 U17 ( .A(n195), .B(b[3]), .CI(n22), .CO(n16), .S(n17) );
  FA1D0 U19 ( .A(n26), .B(n194), .CI(n23), .CO(n20), .S(n21) );
  HA1D0 U20 ( .A(a[6]), .B(b[4]), .CO(n22), .S(n23) );
  FA1D0 U21 ( .A(n30), .B(n188), .CI(n27), .CO(n24), .S(n25) );
  FA1D0 U24 ( .A(n32), .B(n192), .CI(n31), .CO(n28), .S(n29) );
  CMPE42D1 U27 ( .A(n77), .B(n85), .C(a[3]), .CIX(n35), .D(n187), .CO(n33), 
        .COX(n32), .S(n34) );
  CMPE42D1 U28 ( .A(n86), .B(n78), .C(a[2]), .CIX(n38), .D(n189), .CO(n36), 
        .COX(n35), .S(n37) );
  CMPE42D1 U29 ( .A(n87), .B(n79), .C(a[1]), .CIX(n41), .D(n199), .CO(n39), 
        .COX(n38), .S(n40) );
  CMPE42D1 U30 ( .A(a[0]), .B(n80), .C(n88), .CIX(n46), .D(n200), .CO(n42), 
        .COX(n41), .S(n43) );
  FA1D0 U31 ( .A(n52), .B(n191), .CI(n47), .CO(n44), .S(n45) );
  HA1D0 U32 ( .A(n89), .B(n81), .CO(n46), .S(n47) );
  FA1D0 U33 ( .A(a[0]), .B(n82), .CI(n90), .CO(n48), .S(n49) );
  HA1D0 U34 ( .A(n83), .B(n53), .CO(n50), .S(n51) );
  XNR2D1 U136 ( .A1(b[3]), .A2(n197), .ZN(n187) );
  XNR2D1 U137 ( .A1(b[6]), .A2(a[7]), .ZN(n188) );
  XNR2D1 U138 ( .A1(b[6]), .A2(a[4]), .ZN(n189) );
  NR2D1 U139 ( .A1(a[0]), .A2(b[4]), .ZN(n52) );
  INVD1 U140 ( .I(a[8]), .ZN(n193) );
  INVD1 U142 ( .I(a[5]), .ZN(n197) );
  INVD1 U144 ( .I(a[7]), .ZN(n195) );
  INVD1 U147 ( .I(n205), .ZN(n194) );
  INVD1 U150 ( .I(a[4]), .ZN(n198) );
  INR2D1 U153 ( .A1(a[0]), .B1(b[3]), .ZN(product[0]) );
  XOR3D0 U154 ( .A1(n195), .A2(n193), .A3(n202), .Z(product[14]) );
  XOR3D0 U155 ( .A1(n2), .A2(n16), .A3(b[6]), .Z(n202) );
  MUX2ND0 U156 ( .I0(a[0]), .I1(a[1]), .S(b[4]), .ZN(n93) );
  MUX2ND0 U157 ( .I0(a[1]), .I1(a[2]), .S(b[0]), .ZN(n92) );
  MUX2ND0 U158 ( .I0(a[2]), .I1(a[3]), .S(b[6]), .ZN(n91) );
  MUX2ND0 U159 ( .I0(a[3]), .I1(a[4]), .S(b[4]), .ZN(n90) );
  MUX2ND0 U160 ( .I0(a[4]), .I1(a[5]), .S(b[6]), .ZN(n89) );
  MUX2ND0 U161 ( .I0(a[5]), .I1(a[6]), .S(b[4]), .ZN(n88) );
  MUX2ND0 U162 ( .I0(a[6]), .I1(a[7]), .S(b[6]), .ZN(n87) );
  MUX2ND0 U163 ( .I0(a[7]), .I1(a[8]), .S(b[0]), .ZN(n86) );
  CKND2D0 U164 ( .A1(a[8]), .A2(b[3]), .ZN(n85) );
  CKXOR2D0 U165 ( .A1(b[5]), .A2(a[1]), .Z(n83) );
  CKXOR2D0 U166 ( .A1(b[3]), .A2(a[2]), .Z(n82) );
  CKXOR2D0 U167 ( .A1(b[3]), .A2(a[3]), .Z(n81) );
  CKXOR2D0 U168 ( .A1(b[3]), .A2(a[4]), .Z(n80) );
  CKXOR2D0 U169 ( .A1(b[3]), .A2(a[5]), .Z(n79) );
  CKXOR2D0 U170 ( .A1(b[3]), .A2(a[6]), .Z(n78) );
  CKXOR2D0 U171 ( .A1(b[3]), .A2(a[7]), .Z(n77) );
  CKND2D0 U172 ( .A1(b[6]), .A2(a[0]), .ZN(n54) );
  NR2D0 U173 ( .A1(a[0]), .A2(b[0]), .ZN(n53) );
  XNR2D0 U174 ( .A1(n198), .A2(n205), .ZN(n31) );
  CKND2D0 U175 ( .A1(n198), .A2(n205), .ZN(n30) );
  CKXOR2D0 U176 ( .A1(b[4]), .A2(a[8]), .Z(n205) );
  CKXOR2D0 U177 ( .A1(n197), .A2(b[3]), .Z(n27) );
  CKND2D0 U178 ( .A1(n197), .A2(b[4]), .ZN(n26) );
  CKXOR2D0 U141 ( .A1(b[3]), .A2(a[6]), .Z(n192) );
  CKXOR2D1 U143 ( .A1(b[3]), .A2(a[3]), .Z(n199) );
  CKXOR2D1 U145 ( .A1(b[3]), .A2(a[2]), .Z(n200) );
  CKXOR2D0 U146 ( .A1(b[3]), .A2(a[1]), .Z(n191) );
endmodule


module oadm_input_trial_5_0_1_16_16_7_53_2a ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   coefficient_5_, exponent_adjust_2_, n2, n18, n19, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n20, n21, n22, n23,
         n24;
  wire   [22:18] x_mantissa;
  wire   [21:18] y_mantissa;
  wire   [24:16] plane_full;
  wire   [14:0] reduced_scale_product;
  wire   [22:9] normalized_fraction;
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
        SYNOPSYS_UNCONNECTED__64, SYNOPSYS_UNCONNECTED__65;

  oadm_fixed_div_specialized_plane_LEVEL1_RESIDUAL_DROP16 mask_only_plane ( 
        .x_mantissa({1'b0, x_mantissa, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y_mantissa({1'b0, coefficient_5_, y_mantissa, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .plane_exact({SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, plane_full, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19}) );
  fp32_normal_finite_wrapper fp_wrapper ( .x({x[31:18], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .y({y[31:18], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .divide_mode(1'b0), .fraction_x({x_mantissa, SYNOPSYS_UNCONNECTED__20, 
        SYNOPSYS_UNCONNECTED__21, SYNOPSYS_UNCONNECTED__22, 
        SYNOPSYS_UNCONNECTED__23, SYNOPSYS_UNCONNECTED__24, 
        SYNOPSYS_UNCONNECTED__25, SYNOPSYS_UNCONNECTED__26, 
        SYNOPSYS_UNCONNECTED__27, SYNOPSYS_UNCONNECTED__28, 
        SYNOPSYS_UNCONNECTED__29, SYNOPSYS_UNCONNECTED__30, 
        SYNOPSYS_UNCONNECTED__31, SYNOPSYS_UNCONNECTED__32, 
        SYNOPSYS_UNCONNECTED__33, SYNOPSYS_UNCONNECTED__34, 
        SYNOPSYS_UNCONNECTED__35, SYNOPSYS_UNCONNECTED__36, 
        SYNOPSYS_UNCONNECTED__37}), .fraction_y({coefficient_5_, y_mantissa, 
        SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39, 
        SYNOPSYS_UNCONNECTED__40, SYNOPSYS_UNCONNECTED__41, 
        SYNOPSYS_UNCONNECTED__42, SYNOPSYS_UNCONNECTED__43, 
        SYNOPSYS_UNCONNECTED__44, SYNOPSYS_UNCONNECTED__45, 
        SYNOPSYS_UNCONNECTED__46, SYNOPSYS_UNCONNECTED__47, 
        SYNOPSYS_UNCONNECTED__48, SYNOPSYS_UNCONNECTED__49, 
        SYNOPSYS_UNCONNECTED__50, SYNOPSYS_UNCONNECTED__51, 
        SYNOPSYS_UNCONNECTED__52, SYNOPSYS_UNCONNECTED__53, 
        SYNOPSYS_UNCONNECTED__54, SYNOPSYS_UNCONNECTED__55}), 
        .result_fraction({normalized_fraction, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .exponent_adjust({exponent_adjust_2_, 
        exponent_adjust_2_, n2}), .result({result[31:9], 
        SYNOPSYS_UNCONNECTED__56, SYNOPSYS_UNCONNECTED__57, 
        SYNOPSYS_UNCONNECTED__58, SYNOPSYS_UNCONNECTED__59, 
        SYNOPSYS_UNCONNECTED__60, SYNOPSYS_UNCONNECTED__61, 
        SYNOPSYS_UNCONNECTED__62, SYNOPSYS_UNCONNECTED__63, 
        SYNOPSYS_UNCONNECTED__64}) );
  oadm_input_trial_5_0_1_16_16_7_53_2a_DW_mult_uns_0_DW_mult_uns_1 mult_69 ( 
        .a(plane_full), .b({n3, coefficient_5_, n4, coefficient_5_, n23, n24, 
        n5}), .product({SYNOPSYS_UNCONNECTED__65, reduced_scale_product}) );
  INVD1 U3 ( .I(reduced_scale_product[0]), .ZN(n22) );
  ND2D1 U4 ( .A1(n18), .A2(n19), .ZN(exponent_adjust_2_) );
  ND2D1 U5 ( .A1(n7), .A2(n6), .ZN(n19) );
  INVD1 U6 ( .I(n18), .ZN(n2) );
  OAI222D0 U7 ( .A1(n9), .A2(n18), .B1(n19), .B2(n10), .C1(n6), .C2(n8), .ZN(
        normalized_fraction[21]) );
  OAI222D0 U8 ( .A1(n18), .A2(n8), .B1(n19), .B2(n9), .C1(n6), .C2(n7), .ZN(
        normalized_fraction[22]) );
  OAI222D0 U9 ( .A1(n18), .A2(n15), .B1(n19), .B2(n16), .C1(n6), .C2(n14), 
        .ZN(normalized_fraction[15]) );
  OAI222D0 U10 ( .A1(n18), .A2(n14), .B1(n19), .B2(n15), .C1(n6), .C2(n13), 
        .ZN(normalized_fraction[16]) );
  OAI222D0 U11 ( .A1(n18), .A2(n13), .B1(n19), .B2(n14), .C1(n6), .C2(n12), 
        .ZN(normalized_fraction[17]) );
  OAI222D0 U12 ( .A1(n18), .A2(n12), .B1(n19), .B2(n13), .C1(n6), .C2(n11), 
        .ZN(normalized_fraction[18]) );
  OAI222D0 U13 ( .A1(n18), .A2(n11), .B1(n19), .B2(n12), .C1(n6), .C2(n10), 
        .ZN(normalized_fraction[19]) );
  OAI222D0 U14 ( .A1(n18), .A2(n10), .B1(n19), .B2(n11), .C1(n6), .C2(n9), 
        .ZN(normalized_fraction[20]) );
  INVD1 U15 ( .I(reduced_scale_product[12]), .ZN(n8) );
  INVD1 U16 ( .I(reduced_scale_product[11]), .ZN(n9) );
  ND2D1 U17 ( .A1(reduced_scale_product[13]), .A2(n6), .ZN(n18) );
  INVD1 U18 ( .I(reduced_scale_product[14]), .ZN(n6) );
  INVD1 U19 ( .I(reduced_scale_product[13]), .ZN(n7) );
  OAI222D0 U20 ( .A1(n18), .A2(n20), .B1(n19), .B2(n21), .C1(n6), .C2(n17), 
        .ZN(normalized_fraction[12]) );
  OAI222D0 U21 ( .A1(n18), .A2(n17), .B1(n19), .B2(n20), .C1(n6), .C2(n16), 
        .ZN(normalized_fraction[13]) );
  OAI222D0 U22 ( .A1(n18), .A2(n16), .B1(n19), .B2(n17), .C1(n6), .C2(n15), 
        .ZN(normalized_fraction[14]) );
  INVD1 U23 ( .I(reduced_scale_product[10]), .ZN(n10) );
  INVD1 U24 ( .I(reduced_scale_product[9]), .ZN(n11) );
  INVD1 U25 ( .I(reduced_scale_product[8]), .ZN(n12) );
  INVD1 U26 ( .I(reduced_scale_product[7]), .ZN(n13) );
  INVD1 U27 ( .I(reduced_scale_product[6]), .ZN(n14) );
  INVD1 U28 ( .I(reduced_scale_product[5]), .ZN(n15) );
  INVD1 U29 ( .I(reduced_scale_product[4]), .ZN(n16) );
  OAI222D0 U30 ( .A1(n18), .A2(n21), .B1(n22), .B2(n19), .C1(n6), .C2(n20), 
        .ZN(normalized_fraction[11]) );
  OAI22D1 U31 ( .A1(n6), .A2(n21), .B1(n22), .B2(n18), .ZN(
        normalized_fraction[10]) );
  NR2D1 U32 ( .A1(n22), .A2(n6), .ZN(normalized_fraction[9]) );
  INVD1 U33 ( .I(reduced_scale_product[3]), .ZN(n17) );
  INVD1 U34 ( .I(reduced_scale_product[2]), .ZN(n20) );
  INVD1 U35 ( .I(reduced_scale_product[1]), .ZN(n21) );
  INVD1 U38 ( .I(coefficient_5_), .ZN(n4) );
  INVD1 U39 ( .I(coefficient_5_), .ZN(n5) );
  TIEH U40 ( .Z(n24) );
  TIEL U41 ( .ZN(n23) );
  CKND0 U36 ( .I(coefficient_5_), .ZN(n3) );
endmodule


module input_l1_mask_b5 ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;

  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8;
  assign result[0] = 1'b0;
  assign result[1] = 1'b0;
  assign result[2] = 1'b0;
  assign result[3] = 1'b0;
  assign result[4] = 1'b0;
  assign result[5] = 1'b0;
  assign result[6] = 1'b0;
  assign result[7] = 1'b0;
  assign result[8] = 1'b0;

  oadm_input_trial_5_0_1_16_16_7_53_2a dut ( .x({x[31:18], 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0}), .y({y[31:18], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .result({result[31:9], SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8}) );
endmodule

