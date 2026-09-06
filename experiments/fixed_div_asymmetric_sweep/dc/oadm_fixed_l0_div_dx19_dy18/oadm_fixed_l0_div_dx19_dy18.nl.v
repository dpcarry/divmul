/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Fri Sep  4 12:05:01 2026
/////////////////////////////////////////////////////////////



    module oadm_fixed_div_asymmetric_plane_LEVEL0_X_RESIDUAL_DROP19_Y_RESIDUAL_DROP18 ( 
        x_mantissa, y_mantissa, plane_exact );
  input [23:0] x_mantissa;
  input [23:0] y_mantissa;
  output [28:0] plane_exact;
  wire   y_product_10_, y_product_8_, y_product_7_, y_product_6_, y_product_5_,
         y_product_4_, N24, N23, N22, N21, N20, N19, mult_45_n5, mult_45_n4,
         mult_45_n3, mult_43_n4, mult_43_n3, n4, n5, n6, n7, n8, n9, n10;
  wire   [9:6] x_product;
  wire   [24:19] sub_0_root_sub_59_carry;

  HA1D0 mult_45_U7 ( .A(y_mantissa[19]), .B(y_mantissa[18]), .CO(mult_45_n5), 
        .S(y_product_4_) );
  FA1D0 mult_45_U6 ( .A(y_mantissa[20]), .B(y_mantissa[19]), .CI(mult_45_n5), 
        .CO(mult_45_n4), .S(y_product_5_) );
  FA1D0 mult_45_U5 ( .A(y_mantissa[21]), .B(y_mantissa[20]), .CI(mult_45_n4), 
        .CO(mult_45_n3), .S(y_product_6_) );
  FA1D0 mult_45_U4 ( .A(y_mantissa[21]), .B(y_product_10_), .CI(mult_45_n3), 
        .CO(y_product_8_), .S(y_product_7_) );
  HA1D0 mult_43_U5 ( .A(x_mantissa[20]), .B(x_mantissa[19]), .CO(mult_43_n4), 
        .S(N19) );
  FA1D0 mult_43_U4 ( .A(x_mantissa[21]), .B(x_mantissa[20]), .CI(mult_43_n4), 
        .CO(mult_43_n3), .S(N20) );
  FA1D0 mult_43_U3 ( .A(x_mantissa[21]), .B(x_product[9]), .CI(mult_43_n3), 
        .CO(x_product[7]), .S(x_product[6]) );
  FA1D0 U6 ( .A(N22), .B(n10), .CI(sub_0_root_sub_59_carry[22]), .CO(
        sub_0_root_sub_59_carry[23]), .S(plane_exact[22]) );
  INVD1 U7 ( .I(y_product_8_), .ZN(n10) );
  FA1D0 U8 ( .A(N21), .B(n9), .CI(sub_0_root_sub_59_carry[21]), .CO(
        sub_0_root_sub_59_carry[22]), .S(plane_exact[21]) );
  INVD1 U9 ( .I(x_product[6]), .ZN(N21) );
  INVD1 U10 ( .I(y_product_7_), .ZN(n9) );
  FA1D0 U11 ( .A(N20), .B(n8), .CI(sub_0_root_sub_59_carry[20]), .CO(
        sub_0_root_sub_59_carry[21]), .S(plane_exact[20]) );
  INVD1 U12 ( .I(y_product_6_), .ZN(n8) );
  FA1D0 U13 ( .A(N19), .B(n7), .CI(sub_0_root_sub_59_carry[19]), .CO(
        sub_0_root_sub_59_carry[20]), .S(plane_exact[19]) );
  INVD1 U14 ( .I(y_product_5_), .ZN(n7) );
  AN2XD1 U15 ( .A1(x_product[6]), .A2(x_product[7]), .Z(n4) );
  FA1D0 U16 ( .A(N23), .B(y_mantissa[22]), .CI(sub_0_root_sub_59_carry[23]), 
        .CO(sub_0_root_sub_59_carry[24]), .S(plane_exact[23]) );
  XOR3D1 U17 ( .A1(N24), .A2(y_mantissa[22]), .A3(sub_0_root_sub_59_carry[24]), 
        .Z(plane_exact[24]) );
  FA1D0 U18 ( .A(x_mantissa[19]), .B(n6), .CI(n5), .CO(
        sub_0_root_sub_59_carry[19]), .S(plane_exact[18]) );
  INVD1 U19 ( .I(y_mantissa[18]), .ZN(n5) );
  INVD1 U20 ( .I(y_product_4_), .ZN(n6) );
  INVD1 U22 ( .I(y_mantissa[22]), .ZN(y_product_10_) );
  CKXOR2D1 U24 ( .A1(x_product[6]), .A2(x_product[7]), .Z(N22) );
  CKXOR2D1 U25 ( .A1(n4), .A2(x_product[9]), .Z(N23) );
  IND2D0 U3 ( .A1(n4), .B1(x_product[9]), .ZN(N24) );
  CKND0 U4 ( .I(x_mantissa[22]), .ZN(x_product[9]) );
endmodule


module fp32_normal_finite_wrapper_DW01_add_1_DW01_add_2 ( A, B, CI, SUM, CO );
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
  fp32_normal_finite_wrapper_DW01_add_1_DW01_add_2 add_1_root_add_0_root_add_22_2 ( 
        .A(x[30:23]), .B({y[30], N17, N16, N15, N14, N13, N12, N11}), .CI(n79), 
        .SUM({N10, N9, N8, N7, N6, N5, N4, N3}) );
  AN2XD1 U3 ( .A1(exponent_adjust[0]), .A2(N3), .Z(n1) );
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
  XOR3D1 U56 ( .A1(N10), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_22_2_carry[7]), .Z(result[30]) );
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
  CKBD1 U91 ( .I(y[22]), .Z(fraction_y[22]) );
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
  TIEL U110 ( .ZN(n79) );
  CKXOR2D1 U111 ( .A1(exponent_adjust[0]), .A2(N3), .Z(result[23]) );
  CKND0 U119 ( .I(y[23]), .ZN(N11) );
endmodule


module oadm_fixed_div_asymmetric_0_19_18_18_7_3c ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   exponent_adjust_2_, n1, n15, n16, mult_166_n9, mult_166_n8,
         mult_166_n7, mult_166_n6, mult_166_n5, mult_166_n4, n2, n3, n4, n5,
         n6, n7, n8, n11, n12, n13, n14, n17, n18, n19, n20, n21, n22, n23;
  wire   [22:19] x_mantissa;
  wire   [22:18] y_mantissa;
  wire   [24:18] plane_full;
  wire   [11:5] reduced_scale_product;
  wire   [22:13] normalized_fraction;
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

  oadm_fixed_div_asymmetric_plane_LEVEL0_X_RESIDUAL_DROP19_Y_RESIDUAL_DROP18 plane ( 
        .x_mantissa({1'b0, x_mantissa, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .y_mantissa({1'b0, y_mantissa, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
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
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21}) );
  fp32_normal_finite_wrapper fp_wrapper ( .x({x[31:19], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0}), .y({y[31:18], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .divide_mode(1'b0), .fraction_x({x_mantissa, SYNOPSYS_UNCONNECTED__22, 
        SYNOPSYS_UNCONNECTED__23, SYNOPSYS_UNCONNECTED__24, 
        SYNOPSYS_UNCONNECTED__25, SYNOPSYS_UNCONNECTED__26, 
        SYNOPSYS_UNCONNECTED__27, SYNOPSYS_UNCONNECTED__28, 
        SYNOPSYS_UNCONNECTED__29, SYNOPSYS_UNCONNECTED__30, 
        SYNOPSYS_UNCONNECTED__31, SYNOPSYS_UNCONNECTED__32, 
        SYNOPSYS_UNCONNECTED__33, SYNOPSYS_UNCONNECTED__34, 
        SYNOPSYS_UNCONNECTED__35, SYNOPSYS_UNCONNECTED__36, 
        SYNOPSYS_UNCONNECTED__37, SYNOPSYS_UNCONNECTED__38, 
        SYNOPSYS_UNCONNECTED__39, SYNOPSYS_UNCONNECTED__40}), .fraction_y({
        y_mantissa, SYNOPSYS_UNCONNECTED__41, SYNOPSYS_UNCONNECTED__42, 
        SYNOPSYS_UNCONNECTED__43, SYNOPSYS_UNCONNECTED__44, 
        SYNOPSYS_UNCONNECTED__45, SYNOPSYS_UNCONNECTED__46, 
        SYNOPSYS_UNCONNECTED__47, SYNOPSYS_UNCONNECTED__48, 
        SYNOPSYS_UNCONNECTED__49, SYNOPSYS_UNCONNECTED__50, 
        SYNOPSYS_UNCONNECTED__51, SYNOPSYS_UNCONNECTED__52, 
        SYNOPSYS_UNCONNECTED__53, SYNOPSYS_UNCONNECTED__54, 
        SYNOPSYS_UNCONNECTED__55, SYNOPSYS_UNCONNECTED__56, 
        SYNOPSYS_UNCONNECTED__57, SYNOPSYS_UNCONNECTED__58}), 
        .result_fraction({normalized_fraction, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .exponent_adjust({
        exponent_adjust_2_, exponent_adjust_2_, n1}), .result({result[31:13], 
        SYNOPSYS_UNCONNECTED__59, SYNOPSYS_UNCONNECTED__60, 
        SYNOPSYS_UNCONNECTED__61, SYNOPSYS_UNCONNECTED__62, 
        SYNOPSYS_UNCONNECTED__63, SYNOPSYS_UNCONNECTED__64, 
        SYNOPSYS_UNCONNECTED__65, SYNOPSYS_UNCONNECTED__66, 
        SYNOPSYS_UNCONNECTED__67, SYNOPSYS_UNCONNECTED__68, 
        SYNOPSYS_UNCONNECTED__69, SYNOPSYS_UNCONNECTED__70, 
        SYNOPSYS_UNCONNECTED__71}) );
  HA1D0 mult_166_U11 ( .A(mult_166_n8), .B(n11), .CO(mult_166_n7), .S(
        reduced_scale_product[5]) );
  FA1D0 mult_166_U10 ( .A(plane_full[18]), .B(n12), .CI(mult_166_n7), .CO(
        mult_166_n6), .S(reduced_scale_product[6]) );
  FA1D0 mult_166_U9 ( .A(plane_full[19]), .B(n13), .CI(mult_166_n6), .CO(
        mult_166_n5), .S(reduced_scale_product[7]) );
  FA1D0 mult_166_U8 ( .A(plane_full[20]), .B(n14), .CI(mult_166_n5), .CO(
        mult_166_n4), .S(reduced_scale_product[8]) );
  XNR2D1 U3 ( .A1(n7), .A2(n14), .ZN(n2) );
  INVD1 U4 ( .I(reduced_scale_product[5]), .ZN(n21) );
  ND2D1 U5 ( .A1(n15), .A2(n16), .ZN(exponent_adjust_2_) );
  INVD1 U6 ( .I(n15), .ZN(n1) );
  INVD1 U7 ( .I(reduced_scale_product[7]), .ZN(n19) );
  ND2D1 U9 ( .A1(reduced_scale_product[11]), .A2(n2), .ZN(n15) );
  INVD1 U10 ( .I(plane_full[22]), .ZN(n12) );
  ND2D1 U11 ( .A1(n17), .A2(n2), .ZN(n16) );
  INVD1 U12 ( .I(plane_full[21]), .ZN(n11) );
  INVD1 U13 ( .I(reduced_scale_product[11]), .ZN(n17) );
  OAI222D0 U15 ( .A1(n4), .A2(n15), .B1(n16), .B2(n18), .C1(n3), .C2(n2), .ZN(
        normalized_fraction[21]) );
  OAI222D0 U16 ( .A1(n15), .A2(n3), .B1(n16), .B2(n4), .C1(n17), .C2(n2), .ZN(
        normalized_fraction[22]) );
  OAI222D0 U17 ( .A1(n15), .A2(n18), .B1(n16), .B2(n19), .C1(n4), .C2(n2), 
        .ZN(normalized_fraction[20]) );
  OAI222D0 U18 ( .A1(n15), .A2(n21), .B1(n16), .B2(n22), .C1(n2), .C2(n20), 
        .ZN(normalized_fraction[17]) );
  OAI222D0 U19 ( .A1(n15), .A2(n20), .B1(n16), .B2(n21), .C1(n2), .C2(n19), 
        .ZN(normalized_fraction[18]) );
  OAI222D0 U20 ( .A1(n15), .A2(n19), .B1(n16), .B2(n20), .C1(n2), .C2(n18), 
        .ZN(normalized_fraction[19]) );
  OAI222D0 U21 ( .A1(n15), .A2(n23), .B1(n16), .B2(n8), .C1(n2), .C2(n22), 
        .ZN(normalized_fraction[15]) );
  OAI222D0 U22 ( .A1(n15), .A2(n22), .B1(n16), .B2(n23), .C1(n2), .C2(n21), 
        .ZN(normalized_fraction[16]) );
  OAI22D1 U23 ( .A1(n15), .A2(n8), .B1(n2), .B2(n23), .ZN(
        normalized_fraction[14]) );
  NR2D1 U24 ( .A1(n2), .A2(n8), .ZN(normalized_fraction[13]) );
  XNR2D1 U25 ( .A1(n5), .A2(plane_full[22]), .ZN(n3) );
  XNR2D1 U26 ( .A1(mult_166_n4), .A2(n11), .ZN(n4) );
  INVD1 U27 ( .I(reduced_scale_product[8]), .ZN(n18) );
  INVD1 U28 ( .I(reduced_scale_product[6]), .ZN(n20) );
  INVD1 U30 ( .I(plane_full[23]), .ZN(n13) );
  INVD1 U31 ( .I(plane_full[18]), .ZN(n8) );
  INVD1 U33 ( .I(plane_full[24]), .ZN(n14) );
  NR2D0 U36 ( .A1(mult_166_n4), .A2(plane_full[21]), .ZN(n5) );
  AN2D0 U37 ( .A1(n5), .A2(n12), .Z(n6) );
  CKXOR2D0 U38 ( .A1(n6), .A2(plane_full[23]), .Z(reduced_scale_product[11])
         );
  CKND2D0 U39 ( .A1(n6), .A2(n13), .ZN(n7) );
  CKXOR2D0 U8 ( .A1(plane_full[20]), .A2(mult_166_n9), .Z(n22) );
  CKXOR2D0 U14 ( .A1(plane_full[19]), .A2(n8), .Z(n23) );
  INR2D0 U29 ( .A1(mult_166_n9), .B1(plane_full[20]), .ZN(mult_166_n8) );
  INR2D0 U32 ( .A1(n8), .B1(plane_full[19]), .ZN(mult_166_n9) );
endmodule


module oadm_fixed_l0_div_dx19_dy18 ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;

  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12;
  assign result[11] = 1'b0;
  assign result[12] = 1'b0;
  assign result[0] = 1'b0;
  assign result[1] = 1'b0;
  assign result[2] = 1'b0;
  assign result[3] = 1'b0;
  assign result[4] = 1'b0;
  assign result[5] = 1'b0;
  assign result[6] = 1'b0;
  assign result[7] = 1'b0;
  assign result[8] = 1'b0;
  assign result[9] = 1'b0;
  assign result[10] = 1'b0;

  oadm_fixed_div_asymmetric_0_19_18_18_7_3c implementation ( .x({x[31:19], 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y({y[31:18], 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .result({result[31:13], 
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12}) );
endmodule

