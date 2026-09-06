/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Sat Sep  5 14:42:04 2026
/////////////////////////////////////////////////////////////


module oadm_input_narrow_plane_B3_LEVEL0_R18 ( x, y, plane_bits );
  input [2:0] x;
  input [2:0] y;
  output [24:0] plane_bits;
  wire   px_8_, px_6_, px_5_, px_4_, N9, N8, N7, N6, N5, mult_18_n3,
         mult_17_n3, sub_1_root_sub_0_root_sub_25_carry_7_, n20, n21, n22, n23,
         n24, n26;
  wire   [8:4] py;
  wire   [9:6] add_0_root_sub_0_root_sub_25_carry;

  HA1D0 mult_18_U5 ( .A(y[1]), .B(y[0]), .CO(mult_18_n3), .S(py[4]) );
  FA1D0 mult_18_U4 ( .A(y[1]), .B(py[8]), .CI(mult_18_n3), .CO(py[6]), .S(
        py[5]) );
  HA1D0 mult_17_U5 ( .A(x[1]), .B(x[0]), .CO(mult_17_n3), .S(px_4_) );
  FA1D0 mult_17_U4 ( .A(x[1]), .B(px_8_), .CI(mult_17_n3), .CO(px_6_), .S(
        px_5_) );
  AN2XD1 U22 ( .A1(x[0]), .A2(y[0]), .Z(n20) );
  IND2D1 U23 ( .A1(n22), .B1(py[5]), .ZN(sub_1_root_sub_0_root_sub_25_carry_7_) );
  AN2XD1 U24 ( .A1(sub_1_root_sub_0_root_sub_25_carry_7_), .A2(n26), .Z(n21)
         );
  FA1D0 U25 ( .A(px_5_), .B(N6), .CI(add_0_root_sub_0_root_sub_25_carry[6]), 
        .CO(add_0_root_sub_0_root_sub_25_carry[7]), .S(plane_bits[21]) );
  FA1D0 U28 ( .A(px_6_), .B(N7), .CI(add_0_root_sub_0_root_sub_25_carry[7]), 
        .CO(add_0_root_sub_0_root_sub_25_carry[8]), .S(plane_bits[22]) );
  INVD1 U30 ( .I(py[6]), .ZN(n26) );
  FA1D0 U31 ( .A(px_4_), .B(N5), .CI(n20), .CO(
        add_0_root_sub_0_root_sub_25_carry[6]), .S(plane_bits[20]) );
  FA1D0 U32 ( .A(px_8_), .B(N8), .CI(add_0_root_sub_0_root_sub_25_carry[8]), 
        .CO(add_0_root_sub_0_root_sub_25_carry[9]), .S(plane_bits[23]) );
  XOR3D1 U33 ( .A1(px_8_), .A2(N9), .A3(add_0_root_sub_0_root_sub_25_carry[9]), 
        .Z(plane_bits[24]) );
  INVD1 U35 ( .I(y[2]), .ZN(py[8]) );
  INVD1 U36 ( .I(x[2]), .ZN(px_8_) );
  CKXOR2D1 U39 ( .A1(y[0]), .A2(x[0]), .Z(plane_bits[19]) );
  CKXOR2D1 U40 ( .A1(n23), .A2(n24), .Z(N5) );
  CKXOR2D1 U41 ( .A1(sub_1_root_sub_0_root_sub_25_carry_7_), .A2(n26), .Z(N7)
         );
  CKXOR2D1 U42 ( .A1(n21), .A2(y[2]), .Z(N8) );
  IND2D0 U3 ( .A1(n21), .B1(y[2]), .ZN(N9) );
  CKXOR2D0 U4 ( .A1(n22), .A2(py[5]), .Z(N6) );
  NR2D0 U5 ( .A1(y[0]), .A2(py[4]), .ZN(n22) );
  CKND0 U6 ( .I(y[0]), .ZN(n23) );
  CKND0 U7 ( .I(py[4]), .ZN(n24) );
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
  FA1D0 U45 ( .A(N4), .B(exponent_adjust[1]), .CI(n1), .CO(
        add_0_root_add_0_root_add_22_2_carry[2]), .S(result[24]) );
  FA1D0 U46 ( .A(N5), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[2]), .CO(
        add_0_root_add_0_root_add_22_2_carry[3]), .S(result[25]) );
  FA1D0 U47 ( .A(N6), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[3]), .CO(
        add_0_root_add_0_root_add_22_2_carry[4]), .S(result[26]) );
  FA1D0 U48 ( .A(N7), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[4]), .CO(
        add_0_root_add_0_root_add_22_2_carry[5]), .S(result[27]) );
  FA1D0 U49 ( .A(N8), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[5]), .CO(
        add_0_root_add_0_root_add_22_2_carry[6]), .S(result[28]) );
  FA1D0 U50 ( .A(N9), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[6]), .CO(
        add_0_root_add_0_root_add_22_2_carry[7]), .S(result[29]) );
  XOR3D1 U59 ( .A1(N10), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_22_2_carry[7]), .Z(result[30]) );
  INVD1 U67 ( .I(y[29]), .ZN(N17) );
  INVD1 U68 ( .I(y[24]), .ZN(N12) );
  INVD1 U69 ( .I(y[25]), .ZN(N13) );
  INVD1 U70 ( .I(y[26]), .ZN(N14) );
  INVD1 U71 ( .I(y[27]), .ZN(N15) );
  INVD1 U72 ( .I(y[28]), .ZN(N16) );
  CKBD1 U87 ( .I(x[22]), .Z(fraction_x[22]) );
  CKBD1 U88 ( .I(x[21]), .Z(fraction_x[21]) );
  CKBD1 U89 ( .I(x[20]), .Z(fraction_x[20]) );
  CKBD1 U90 ( .I(y[22]), .Z(fraction_y[22]) );
  CKBD1 U91 ( .I(y[21]), .Z(fraction_y[21]) );
  CKBD1 U92 ( .I(y[20]), .Z(fraction_y[20]) );
  CKBD1 U93 ( .I(result_fraction[22]), .Z(result[22]) );
  CKBD1 U94 ( .I(result_fraction[21]), .Z(result[21]) );
  CKBD1 U95 ( .I(result_fraction[20]), .Z(result[20]) );
  CKBD1 U96 ( .I(result_fraction[19]), .Z(result[19]) );
  CKBD1 U97 ( .I(result_fraction[18]), .Z(result[18]) );
  CKBD1 U98 ( .I(result_fraction[17]), .Z(result[17]) );
  CKBD1 U99 ( .I(result_fraction[16]), .Z(result[16]) );
  CKBD1 U100 ( .I(result_fraction[15]), .Z(result[15]) );
  CKBD1 U101 ( .I(result_fraction[14]), .Z(result[14]) );
  CKBD1 U102 ( .I(result_fraction[13]), .Z(result[13]) );
  CKBD1 U103 ( .I(result_fraction[12]), .Z(result[12]) );
  TIEL U110 ( .ZN(n79) );
  CKXOR2D1 U111 ( .A1(exponent_adjust[0]), .A2(N3), .Z(result[23]) );
  CKND0 U119 ( .I(y[23]), .ZN(N11) );
endmodule


module oadm_input_trial_3_1_0_18_18_7_3b_DW_mult_uns_0 ( a, b, product );
  input [6:0] a;
  input [5:0] b;
  output [12:0] product;
  wire   n3, n4, n5, n6, n7, n8, n9, n10, n11, n13, n14, n15, n16, n18, n19,
         n20, n21, n22, n23, n24, n63, n64, n65, n66, n67, n68, n69, n70;

  FA1D0 U6 ( .A(n13), .B(a[3]), .CI(n4), .CO(n3), .S(product[9]) );
  FA1D0 U7 ( .A(n14), .B(n15), .CI(n5), .CO(n4), .S(product[8]) );
  FA1D0 U8 ( .A(n63), .B(n16), .CI(n6), .CO(n5), .S(product[7]) );
  FA1D0 U9 ( .A(n18), .B(n19), .CI(n7), .CO(n6), .S(product[6]) );
  FA1D0 U10 ( .A(n20), .B(n21), .CI(n8), .CO(n7), .S(product[5]) );
  FA1D0 U11 ( .A(n22), .B(n23), .CI(n9), .CO(n8), .S(product[4]) );
  FA1D0 U12 ( .A(n24), .B(n68), .CI(n10), .CO(n9), .S(product[3]) );
  HA1D0 U21 ( .A(n67), .B(n65), .CO(n19), .S(n20) );
  HA1D0 U22 ( .A(n68), .B(n66), .CO(n21), .S(n22) );
  HA1D0 U23 ( .A(n11), .B(n67), .CO(n23), .S(n24) );
  OR2D1 U36 ( .A1(n11), .A2(a[2]), .Z(n10) );
  INVD1 U37 ( .I(a[3]), .ZN(n67) );
  INVD1 U39 ( .I(n11), .ZN(product[1]) );
  INVD1 U40 ( .I(a[5]), .ZN(n65) );
  INVD1 U42 ( .I(a[2]), .ZN(n68) );
  INVD1 U43 ( .I(a[1]), .ZN(n11) );
  XNR2D1 U44 ( .A1(n11), .A2(a[2]), .ZN(product[2]) );
  CKXOR2D1 U45 ( .A1(n64), .A2(n66), .Z(n18) );
  XNR2D0 U46 ( .A1(n69), .A2(a[6]), .ZN(product[12]) );
  CKND2D0 U47 ( .A1(n70), .A2(n65), .ZN(n69) );
  XNR2D0 U48 ( .A1(n70), .A2(n65), .ZN(product[11]) );
  NR2D0 U49 ( .A1(n3), .A2(a[4]), .ZN(n70) );
  XNR2D0 U50 ( .A1(n3), .A2(a[4]), .ZN(product[10]) );
  XNR2D0 U51 ( .A1(n65), .A2(a[1]), .ZN(n16) );
  CKND2D0 U52 ( .A1(a[5]), .A2(n11), .ZN(n15) );
  XNR2D0 U53 ( .A1(n64), .A2(a[2]), .ZN(n14) );
  CKND2D0 U54 ( .A1(a[6]), .A2(n68), .ZN(n13) );
  CKND0 U35 ( .I(a[4]), .ZN(n66) );
  CKND0 U38 ( .I(a[6]), .ZN(n64) );
  NR2D0 U41 ( .A1(a[4]), .A2(a[6]), .ZN(n63) );
endmodule


module oadm_input_trial_3_1_0_18_18_7_3b ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   exponent_adjust_2_, n1, n15, n16, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n17;
  wire   [22:20] x_mantissa;
  wire   [22:20] y_mantissa;
  wire   [24:19] narrow_compact_plane;
  wire   [12:1] reduced_scale_product;
  wire   [22:12] normalized_fraction;
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

  oadm_input_narrow_plane_B3_LEVEL0_R18 narrow_plane ( .x(x_mantissa), .y(
        y_mantissa), .plane_bits({narrow_compact_plane, 
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18}) );
  fp32_normal_finite_wrapper fp_wrapper ( .x({x[31:20], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .y({y[31:20], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0}), .divide_mode(1'b0), .fraction_x({x_mantissa, 
        SYNOPSYS_UNCONNECTED__19, SYNOPSYS_UNCONNECTED__20, 
        SYNOPSYS_UNCONNECTED__21, SYNOPSYS_UNCONNECTED__22, 
        SYNOPSYS_UNCONNECTED__23, SYNOPSYS_UNCONNECTED__24, 
        SYNOPSYS_UNCONNECTED__25, SYNOPSYS_UNCONNECTED__26, 
        SYNOPSYS_UNCONNECTED__27, SYNOPSYS_UNCONNECTED__28, 
        SYNOPSYS_UNCONNECTED__29, SYNOPSYS_UNCONNECTED__30, 
        SYNOPSYS_UNCONNECTED__31, SYNOPSYS_UNCONNECTED__32, 
        SYNOPSYS_UNCONNECTED__33, SYNOPSYS_UNCONNECTED__34, 
        SYNOPSYS_UNCONNECTED__35, SYNOPSYS_UNCONNECTED__36, 
        SYNOPSYS_UNCONNECTED__37, SYNOPSYS_UNCONNECTED__38}), .fraction_y({
        y_mantissa, SYNOPSYS_UNCONNECTED__39, SYNOPSYS_UNCONNECTED__40, 
        SYNOPSYS_UNCONNECTED__41, SYNOPSYS_UNCONNECTED__42, 
        SYNOPSYS_UNCONNECTED__43, SYNOPSYS_UNCONNECTED__44, 
        SYNOPSYS_UNCONNECTED__45, SYNOPSYS_UNCONNECTED__46, 
        SYNOPSYS_UNCONNECTED__47, SYNOPSYS_UNCONNECTED__48, 
        SYNOPSYS_UNCONNECTED__49, SYNOPSYS_UNCONNECTED__50, 
        SYNOPSYS_UNCONNECTED__51, SYNOPSYS_UNCONNECTED__52, 
        SYNOPSYS_UNCONNECTED__53, SYNOPSYS_UNCONNECTED__54, 
        SYNOPSYS_UNCONNECTED__55, SYNOPSYS_UNCONNECTED__56, 
        SYNOPSYS_UNCONNECTED__57, SYNOPSYS_UNCONNECTED__58}), 
        .result_fraction({normalized_fraction, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .exponent_adjust({
        exponent_adjust_2_, exponent_adjust_2_, n1}), .result({result[31:12], 
        SYNOPSYS_UNCONNECTED__59, SYNOPSYS_UNCONNECTED__60, 
        SYNOPSYS_UNCONNECTED__61, SYNOPSYS_UNCONNECTED__62, 
        SYNOPSYS_UNCONNECTED__63, SYNOPSYS_UNCONNECTED__64, 
        SYNOPSYS_UNCONNECTED__65, SYNOPSYS_UNCONNECTED__66, 
        SYNOPSYS_UNCONNECTED__67, SYNOPSYS_UNCONNECTED__68, 
        SYNOPSYS_UNCONNECTED__69, SYNOPSYS_UNCONNECTED__70}) );
  oadm_input_trial_3_1_0_18_18_7_3b_DW_mult_uns_0 mult_69 ( .a({
        narrow_compact_plane, n14}), .b({n17, n17, n17, n14, n17, n17}), 
        .product({reduced_scale_product, SYNOPSYS_UNCONNECTED__71}) );
  INVD1 U3 ( .I(reduced_scale_product[5]), .ZN(n9) );
  ND2D1 U4 ( .A1(n15), .A2(n16), .ZN(exponent_adjust_2_) );
  INVD1 U5 ( .I(reduced_scale_product[11]), .ZN(n3) );
  INVD1 U6 ( .I(n15), .ZN(n1) );
  INVD1 U7 ( .I(reduced_scale_product[6]), .ZN(n8) );
  INVD1 U8 ( .I(reduced_scale_product[4]), .ZN(n10) );
  ND2D1 U9 ( .A1(reduced_scale_product[11]), .A2(n2), .ZN(n15) );
  ND2D1 U10 ( .A1(n3), .A2(n2), .ZN(n16) );
  OAI222D0 U11 ( .A1(n5), .A2(n15), .B1(n16), .B2(n6), .C1(n4), .C2(n2), .ZN(
        normalized_fraction[21]) );
  OAI222D0 U12 ( .A1(n15), .A2(n4), .B1(n16), .B2(n5), .C1(n3), .C2(n2), .ZN(
        normalized_fraction[22]) );
  OAI222D0 U13 ( .A1(n15), .A2(n12), .B1(n16), .B2(n13), .C1(n2), .C2(n11), 
        .ZN(normalized_fraction[14]) );
  OAI222D0 U14 ( .A1(n15), .A2(n11), .B1(n16), .B2(n12), .C1(n2), .C2(n10), 
        .ZN(normalized_fraction[15]) );
  OAI222D0 U15 ( .A1(n15), .A2(n10), .B1(n16), .B2(n11), .C1(n2), .C2(n9), 
        .ZN(normalized_fraction[16]) );
  OAI222D0 U16 ( .A1(n15), .A2(n9), .B1(n16), .B2(n10), .C1(n2), .C2(n8), .ZN(
        normalized_fraction[17]) );
  OAI222D0 U17 ( .A1(n15), .A2(n8), .B1(n16), .B2(n9), .C1(n2), .C2(n7), .ZN(
        normalized_fraction[18]) );
  OAI222D0 U18 ( .A1(n15), .A2(n7), .B1(n16), .B2(n8), .C1(n2), .C2(n6), .ZN(
        normalized_fraction[19]) );
  OAI222D0 U19 ( .A1(n15), .A2(n6), .B1(n16), .B2(n7), .C1(n5), .C2(n2), .ZN(
        normalized_fraction[20]) );
  OAI22D1 U20 ( .A1(n15), .A2(n13), .B1(n2), .B2(n12), .ZN(
        normalized_fraction[13]) );
  NR2D1 U21 ( .A1(n2), .A2(n13), .ZN(normalized_fraction[12]) );
  INVD1 U22 ( .I(reduced_scale_product[10]), .ZN(n4) );
  INVD1 U23 ( .I(reduced_scale_product[9]), .ZN(n5) );
  INVD1 U24 ( .I(reduced_scale_product[8]), .ZN(n6) );
  INVD1 U25 ( .I(reduced_scale_product[7]), .ZN(n7) );
  INVD1 U26 ( .I(reduced_scale_product[3]), .ZN(n11) );
  INVD1 U27 ( .I(reduced_scale_product[1]), .ZN(n13) );
  INVD1 U28 ( .I(reduced_scale_product[12]), .ZN(n2) );
  INVD1 U29 ( .I(reduced_scale_product[2]), .ZN(n12) );
  TIEH U30 ( .Z(n17) );
  TIEL U31 ( .ZN(n14) );
endmodule


module input_l0_narrow_b3 ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;

  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11;
  assign result[11] = 1'b0;
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

  oadm_input_trial_3_1_0_18_18_7_3b dut ( .x({x[31:20], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .y({y[31:20], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0}), .result({result[31:12], SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11}) );
endmodule

