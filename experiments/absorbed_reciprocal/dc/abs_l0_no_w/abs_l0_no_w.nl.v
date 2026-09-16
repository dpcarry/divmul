/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Tue Sep 15 21:47:46 2026
/////////////////////////////////////////////////////////////


module oadm_fixed_div_specialized_plane_LEVEL0_RESIDUAL_DROP18 ( x_mantissa, 
        y_mantissa, plane_exact );
  input [23:0] x_mantissa;
  input [23:0] y_mantissa;
  output [28:0] plane_exact;
  wire   y_product_10_, y_product_8_, y_product_7_, y_product_6_, y_product_5_,
         y_product_4_, N26, N25, N24, N23, N22, N21, N20, N19, N18, mult_44_n5,
         mult_44_n4, mult_44_n3, mult_42_n5, mult_42_n4, mult_42_n3,
         add_1_root_sub_58_carry_25_, n190, n200, n250, n260, n27, n28, n29;
  wire   [10:7] x_product;
  wire   [27:18] sub_0_root_sub_58_carry;

  HA1D0 mult_44_U7 ( .A(y_mantissa[19]), .B(y_mantissa[18]), .CO(mult_44_n5), 
        .S(y_product_4_) );
  FA1D0 mult_44_U6 ( .A(y_mantissa[20]), .B(y_mantissa[19]), .CI(mult_44_n5), 
        .CO(mult_44_n4), .S(y_product_5_) );
  FA1D0 mult_44_U5 ( .A(y_mantissa[21]), .B(y_mantissa[20]), .CI(mult_44_n4), 
        .CO(mult_44_n3), .S(y_product_6_) );
  FA1D0 mult_44_U4 ( .A(y_mantissa[21]), .B(y_product_10_), .CI(mult_44_n3), 
        .CO(y_product_8_), .S(y_product_7_) );
  HA1D0 mult_42_U7 ( .A(x_mantissa[19]), .B(x_mantissa[18]), .CO(mult_42_n5), 
        .S(N18) );
  FA1D0 mult_42_U6 ( .A(x_mantissa[20]), .B(x_mantissa[19]), .CI(mult_42_n5), 
        .CO(mult_42_n4), .S(N19) );
  FA1D0 mult_42_U5 ( .A(x_mantissa[21]), .B(x_mantissa[20]), .CI(mult_42_n4), 
        .CO(mult_42_n3), .S(N20) );
  FA1D0 mult_42_U4 ( .A(x_mantissa[21]), .B(x_product[10]), .CI(mult_42_n3), 
        .CO(x_product[8]), .S(x_product[7]) );
  CKBD1 U21 ( .I(plane_exact[27]), .Z(plane_exact[28]) );
  FA1D0 U22 ( .A(N22), .B(n29), .CI(sub_0_root_sub_58_carry[22]), .CO(
        sub_0_root_sub_58_carry[23]), .S(plane_exact[22]) );
  INVD1 U23 ( .I(y_product_8_), .ZN(n29) );
  FA1D0 U24 ( .A(N21), .B(n28), .CI(sub_0_root_sub_58_carry[21]), .CO(
        sub_0_root_sub_58_carry[22]), .S(plane_exact[21]) );
  INVD1 U25 ( .I(y_product_7_), .ZN(n28) );
  INVD1 U26 ( .I(x_product[7]), .ZN(N21) );
  XOR3D1 U27 ( .A1(N26), .A2(y_mantissa[22]), .A3(sub_0_root_sub_58_carry[27]), 
        .Z(plane_exact[27]) );
  FA1D0 U28 ( .A(N26), .B(y_mantissa[22]), .CI(sub_0_root_sub_58_carry[26]), 
        .CO(sub_0_root_sub_58_carry[27]), .S(plane_exact[26]) );
  AN2XD1 U29 ( .A1(x_product[7]), .A2(x_product[8]), .Z(n190) );
  FA1D0 U30 ( .A(N20), .B(n27), .CI(sub_0_root_sub_58_carry[20]), .CO(
        sub_0_root_sub_58_carry[21]), .S(plane_exact[20]) );
  INVD1 U31 ( .I(y_product_6_), .ZN(n27) );
  FA1D0 U32 ( .A(N19), .B(n260), .CI(sub_0_root_sub_58_carry[19]), .CO(
        sub_0_root_sub_58_carry[20]), .S(plane_exact[19]) );
  INVD1 U33 ( .I(y_product_5_), .ZN(n260) );
  FA1D0 U34 ( .A(N23), .B(y_mantissa[22]), .CI(sub_0_root_sub_58_carry[23]), 
        .CO(sub_0_root_sub_58_carry[24]), .S(plane_exact[23]) );
  FA1D0 U35 ( .A(N24), .B(y_mantissa[22]), .CI(sub_0_root_sub_58_carry[24]), 
        .CO(sub_0_root_sub_58_carry[25]), .S(plane_exact[24]) );
  FA1D0 U36 ( .A(N25), .B(y_mantissa[22]), .CI(sub_0_root_sub_58_carry[25]), 
        .CO(sub_0_root_sub_58_carry[26]), .S(plane_exact[25]) );
  AN2XD1 U37 ( .A1(n190), .A2(x_product[10]), .Z(n200) );
  FA1D0 U38 ( .A(N18), .B(n250), .CI(sub_0_root_sub_58_carry[18]), .CO(
        sub_0_root_sub_58_carry[19]), .S(plane_exact[18]) );
  INVD1 U40 ( .I(y_product_4_), .ZN(n250) );
  IND2D1 U42 ( .A1(n200), .B1(x_mantissa[22]), .ZN(add_1_root_sub_58_carry_25_) );
  INVD1 U47 ( .I(y_mantissa[22]), .ZN(y_product_10_) );
  XNR2D1 U49 ( .A1(n200), .A2(x_product[10]), .ZN(N24) );
  CKXOR2D1 U50 ( .A1(x_product[7]), .A2(x_product[8]), .Z(N22) );
  CKXOR2D1 U51 ( .A1(n190), .A2(x_product[10]), .Z(N23) );
  CKXOR2D1 U52 ( .A1(add_1_root_sub_58_carry_25_), .A2(x_product[10]), .Z(N25)
         );
  CKND0 U3 ( .I(x_mantissa[22]), .ZN(x_product[10]) );
  NR2D0 U4 ( .A1(x_mantissa[22]), .A2(add_1_root_sub_58_carry_25_), .ZN(N26)
         );
  CKXOR2D0 U5 ( .A1(x_mantissa[18]), .A2(y_mantissa[18]), .Z(plane_exact[17])
         );
  IND2D0 U6 ( .A1(x_mantissa[18]), .B1(y_mantissa[18]), .ZN(
        sub_0_root_sub_58_carry[18]) );
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
  INVD1 U63 ( .I(y[29]), .ZN(N17) );
  INVD1 U64 ( .I(y[24]), .ZN(N12) );
  INVD1 U65 ( .I(y[25]), .ZN(N13) );
  INVD1 U66 ( .I(y[26]), .ZN(N14) );
  INVD1 U67 ( .I(y[27]), .ZN(N15) );
  INVD1 U68 ( .I(y[28]), .ZN(N16) );
  CKBD1 U87 ( .I(x[22]), .Z(fraction_x[22]) );
  CKBD1 U88 ( .I(x[21]), .Z(fraction_x[21]) );
  CKBD1 U89 ( .I(x[20]), .Z(fraction_x[20]) );
  CKBD1 U90 ( .I(x[19]), .Z(fraction_x[19]) );
  CKBD1 U91 ( .I(x[18]), .Z(fraction_x[18]) );
  CKBD1 U92 ( .I(y[22]), .Z(fraction_y[22]) );
  CKBD1 U93 ( .I(y[21]), .Z(fraction_y[21]) );
  CKBD1 U94 ( .I(y[20]), .Z(fraction_y[20]) );
  CKBD1 U95 ( .I(y[19]), .Z(fraction_y[19]) );
  CKBD1 U96 ( .I(y[18]), .Z(fraction_y[18]) );
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


module oadm_fixed_div_specialized_0_18_18_7_3b_DW_mult_uns_0 ( a, b, product
 );
  input [28:0] a;
  input [5:0] b;
  output [34:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n48, n50, n52, n54,
         n55, n57, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204;

  FA1D0 U3 ( .A(n35), .B(n34), .CI(n3), .CO(n2), .S(product[29]) );
  FA1D0 U4 ( .A(n36), .B(n37), .CI(n4), .CO(n3), .S(product[28]) );
  FA1D0 U5 ( .A(n38), .B(n39), .CI(n5), .CO(n4), .S(product[27]) );
  FA1D0 U6 ( .A(n40), .B(n41), .CI(n6), .CO(n5), .S(product[26]) );
  FA1D0 U7 ( .A(n42), .B(n43), .CI(n7), .CO(n6), .S(product[25]) );
  FA1D0 U8 ( .A(n44), .B(n45), .CI(n8), .CO(n7), .S(product[24]) );
  FA1D0 U9 ( .A(n46), .B(n194), .CI(n9), .CO(n8), .S(product[23]) );
  FA1D0 U10 ( .A(n48), .B(n191), .CI(n10), .CO(n9), .S(product[22]) );
  FA1D0 U11 ( .A(n50), .B(n192), .CI(n11), .CO(n10), .S(product[21]) );
  FA1D0 U12 ( .A(n52), .B(n193), .CI(n12), .CO(n11), .S(product[20]) );
  FA1D0 U13 ( .A(n54), .B(n55), .CI(n13), .CO(n12), .S(product[19]) );
  FA1D0 U36 ( .A(n196), .B(n195), .CI(a[22]), .CO(n35), .S(n36) );
  FA1D0 U37 ( .A(n197), .B(n195), .CI(a[21]), .CO(n37), .S(n38) );
  FA1D0 U38 ( .A(n198), .B(n196), .CI(a[20]), .CO(n39), .S(n40) );
  FA1D0 U39 ( .A(n199), .B(n197), .CI(a[19]), .CO(n41), .S(n42) );
  FA1D0 U40 ( .A(n200), .B(n198), .CI(a[18]), .CO(n43), .S(n44) );
  FA1D0 U41 ( .A(n201), .B(n199), .CI(a[17]), .CO(n45), .S(n46) );
  INVD1 U99 ( .I(a[27]), .ZN(n195) );
  INVD1 U101 ( .I(a[26]), .ZN(n196) );
  INVD1 U106 ( .I(n57), .ZN(product[17]) );
  INVD1 U107 ( .I(a[23]), .ZN(n199) );
  INVD1 U108 ( .I(a[24]), .ZN(n198) );
  INVD1 U109 ( .I(a[25]), .ZN(n197) );
  XNR2D1 U112 ( .A1(n57), .A2(a[18]), .ZN(product[18]) );
  CKXOR2D1 U113 ( .A1(n200), .A2(n202), .Z(n48) );
  CKXOR2D1 U114 ( .A1(n201), .A2(n203), .Z(n50) );
  CKXOR2D1 U115 ( .A1(n202), .A2(n55), .Z(n52) );
  CKXOR2D1 U116 ( .A1(n203), .A2(n57), .Z(n54) );
  XOR4D0 U117 ( .A1(n2), .A2(n195), .A3(n198), .A4(n204), .Z(product[30]) );
  CKND2D0 U118 ( .A1(a[27]), .A2(n199), .ZN(n204) );
  CKXOR2D0 U119 ( .A1(a[27]), .A2(a[23]), .Z(n34) );
  CKND0 U95 ( .I(a[20]), .ZN(n202) );
  CKND0 U96 ( .I(a[22]), .ZN(n200) );
  NR2D0 U97 ( .A1(a[20]), .A2(a[22]), .ZN(n194) );
  CKND0 U98 ( .I(a[19]), .ZN(n203) );
  CKND0 U100 ( .I(a[21]), .ZN(n201) );
  NR2D0 U102 ( .A1(a[19]), .A2(a[21]), .ZN(n191) );
  CKND0 U103 ( .I(a[18]), .ZN(n55) );
  NR2D0 U104 ( .A1(a[18]), .A2(a[20]), .ZN(n192) );
  CKND0 U105 ( .I(a[17]), .ZN(n57) );
  NR2D0 U110 ( .A1(a[17]), .A2(a[19]), .ZN(n193) );
  CKND2D0 U111 ( .A1(a[17]), .A2(n55), .ZN(n13) );
endmodule


module oadm_fixed_div_specialized_0_18_18_7_3b ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   exponent_adjust_2_, n1, n26, n27, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17;
  wire   [22:18] x_mantissa;
  wire   [22:18] y_mantissa;
  wire   [28:17] plane_full;
  wire   [30:17] full_scale_product;
  wire   [22:10] normalized_fraction;
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
        SYNOPSYS_UNCONNECTED__70, SYNOPSYS_UNCONNECTED__71, 
        SYNOPSYS_UNCONNECTED__72, SYNOPSYS_UNCONNECTED__73, 
        SYNOPSYS_UNCONNECTED__74, SYNOPSYS_UNCONNECTED__75, 
        SYNOPSYS_UNCONNECTED__76, SYNOPSYS_UNCONNECTED__77, 
        SYNOPSYS_UNCONNECTED__78, SYNOPSYS_UNCONNECTED__79, 
        SYNOPSYS_UNCONNECTED__80, SYNOPSYS_UNCONNECTED__81, 
        SYNOPSYS_UNCONNECTED__82, SYNOPSYS_UNCONNECTED__83;

  oadm_fixed_div_specialized_plane_LEVEL0_RESIDUAL_DROP18 plane ( .x_mantissa(
        {1'b0, x_mantissa, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .y_mantissa({1'b0, y_mantissa, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .plane_exact({plane_full, SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16}) );
  fp32_normal_finite_wrapper fp_wrapper ( .x({x[31:18], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .y({y[31:18], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .divide_mode(1'b0), .fraction_x({x_mantissa, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31, 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34}), .fraction_y({y_mantissa, 
        SYNOPSYS_UNCONNECTED__35, SYNOPSYS_UNCONNECTED__36, 
        SYNOPSYS_UNCONNECTED__37, SYNOPSYS_UNCONNECTED__38, 
        SYNOPSYS_UNCONNECTED__39, SYNOPSYS_UNCONNECTED__40, 
        SYNOPSYS_UNCONNECTED__41, SYNOPSYS_UNCONNECTED__42, 
        SYNOPSYS_UNCONNECTED__43, SYNOPSYS_UNCONNECTED__44, 
        SYNOPSYS_UNCONNECTED__45, SYNOPSYS_UNCONNECTED__46, 
        SYNOPSYS_UNCONNECTED__47, SYNOPSYS_UNCONNECTED__48, 
        SYNOPSYS_UNCONNECTED__49, SYNOPSYS_UNCONNECTED__50, 
        SYNOPSYS_UNCONNECTED__51, SYNOPSYS_UNCONNECTED__52}), 
        .result_fraction({normalized_fraction, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .exponent_adjust({exponent_adjust_2_, 
        exponent_adjust_2_, n1}), .result({result[31:10], 
        SYNOPSYS_UNCONNECTED__53, SYNOPSYS_UNCONNECTED__54, 
        SYNOPSYS_UNCONNECTED__55, SYNOPSYS_UNCONNECTED__56, 
        SYNOPSYS_UNCONNECTED__57, SYNOPSYS_UNCONNECTED__58, 
        SYNOPSYS_UNCONNECTED__59, SYNOPSYS_UNCONNECTED__60, 
        SYNOPSYS_UNCONNECTED__61, SYNOPSYS_UNCONNECTED__62}) );
  oadm_fixed_div_specialized_0_18_18_7_3b_DW_mult_uns_0 mult_121 ( .a({
        plane_full, n2, n2, n2, n2, n2, n2, n2, n2, n2, n2, n2, n2, n2, n2, n2, 
        n2, n2}), .b({n17, n17, n17, n2, n17, n17}), .product({
        SYNOPSYS_UNCONNECTED__63, SYNOPSYS_UNCONNECTED__64, 
        SYNOPSYS_UNCONNECTED__65, SYNOPSYS_UNCONNECTED__66, full_scale_product, 
        SYNOPSYS_UNCONNECTED__67, SYNOPSYS_UNCONNECTED__68, 
        SYNOPSYS_UNCONNECTED__69, SYNOPSYS_UNCONNECTED__70, 
        SYNOPSYS_UNCONNECTED__71, SYNOPSYS_UNCONNECTED__72, 
        SYNOPSYS_UNCONNECTED__73, SYNOPSYS_UNCONNECTED__74, 
        SYNOPSYS_UNCONNECTED__75, SYNOPSYS_UNCONNECTED__76, 
        SYNOPSYS_UNCONNECTED__77, SYNOPSYS_UNCONNECTED__78, 
        SYNOPSYS_UNCONNECTED__79, SYNOPSYS_UNCONNECTED__80, 
        SYNOPSYS_UNCONNECTED__81, SYNOPSYS_UNCONNECTED__82, 
        SYNOPSYS_UNCONNECTED__83}) );
  TIEL U3 ( .ZN(n2) );
  INVD1 U4 ( .I(full_scale_product[28]), .ZN(n5) );
  INVD1 U5 ( .I(full_scale_product[27]), .ZN(n6) );
  INVD1 U6 ( .I(full_scale_product[26]), .ZN(n7) );
  INVD1 U7 ( .I(full_scale_product[22]), .ZN(n11) );
  ND2D1 U8 ( .A1(n26), .A2(n27), .ZN(exponent_adjust_2_) );
  ND2D1 U9 ( .A1(n4), .A2(n3), .ZN(n27) );
  INVD1 U10 ( .I(n26), .ZN(n1) );
  OAI222D0 U11 ( .A1(n26), .A2(n5), .B1(n27), .B2(n6), .C1(n4), .C2(n3), .ZN(
        normalized_fraction[22]) );
  OAI222D0 U12 ( .A1(n26), .A2(n15), .B1(n27), .B2(n16), .C1(n3), .C2(n14), 
        .ZN(normalized_fraction[12]) );
  OAI222D0 U13 ( .A1(n26), .A2(n14), .B1(n27), .B2(n15), .C1(n3), .C2(n13), 
        .ZN(normalized_fraction[13]) );
  OAI222D0 U14 ( .A1(n26), .A2(n13), .B1(n27), .B2(n14), .C1(n3), .C2(n12), 
        .ZN(normalized_fraction[14]) );
  OAI222D0 U15 ( .A1(n26), .A2(n12), .B1(n27), .B2(n13), .C1(n3), .C2(n11), 
        .ZN(normalized_fraction[15]) );
  OAI222D0 U16 ( .A1(n26), .A2(n11), .B1(n27), .B2(n12), .C1(n3), .C2(n10), 
        .ZN(normalized_fraction[16]) );
  OAI222D0 U17 ( .A1(n26), .A2(n10), .B1(n27), .B2(n11), .C1(n3), .C2(n9), 
        .ZN(normalized_fraction[17]) );
  OAI222D0 U18 ( .A1(n26), .A2(n9), .B1(n27), .B2(n10), .C1(n3), .C2(n8), .ZN(
        normalized_fraction[18]) );
  OAI222D0 U19 ( .A1(n26), .A2(n8), .B1(n27), .B2(n9), .C1(n3), .C2(n7), .ZN(
        normalized_fraction[19]) );
  OAI222D0 U20 ( .A1(n26), .A2(n7), .B1(n27), .B2(n8), .C1(n3), .C2(n6), .ZN(
        normalized_fraction[20]) );
  OAI222D0 U21 ( .A1(n26), .A2(n6), .B1(n27), .B2(n7), .C1(n3), .C2(n5), .ZN(
        normalized_fraction[21]) );
  OAI22D1 U22 ( .A1(n26), .A2(n16), .B1(n3), .B2(n15), .ZN(
        normalized_fraction[11]) );
  NR2D1 U23 ( .A1(n3), .A2(n16), .ZN(normalized_fraction[10]) );
  INVD1 U24 ( .I(full_scale_product[25]), .ZN(n8) );
  INVD1 U25 ( .I(full_scale_product[24]), .ZN(n9) );
  INVD1 U26 ( .I(full_scale_product[23]), .ZN(n10) );
  INVD1 U27 ( .I(full_scale_product[21]), .ZN(n12) );
  INVD1 U28 ( .I(full_scale_product[20]), .ZN(n13) );
  INVD1 U29 ( .I(full_scale_product[19]), .ZN(n14) );
  ND2D1 U30 ( .A1(full_scale_product[29]), .A2(n3), .ZN(n26) );
  INVD1 U31 ( .I(full_scale_product[30]), .ZN(n3) );
  INVD1 U32 ( .I(full_scale_product[29]), .ZN(n4) );
  INVD1 U33 ( .I(full_scale_product[18]), .ZN(n15) );
  INVD1 U34 ( .I(full_scale_product[17]), .ZN(n16) );
  TIEH U35 ( .Z(n17) );
endmodule


module oadm_fixed_l0_div_specialized ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;

  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9;

  oadm_fixed_div_specialized_0_18_18_7_3b implementation ( .x({x[31:18], 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y({y[31:18], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .result({result[31:10], SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9}) );
endmodule


module abs_l0_no_w ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;

  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9;
  assign result[0] = 1'b0;
  assign result[9] = 1'b0;
  assign result[8] = 1'b0;
  assign result[7] = 1'b0;
  assign result[6] = 1'b0;
  assign result[5] = 1'b0;
  assign result[4] = 1'b0;
  assign result[3] = 1'b0;
  assign result[2] = 1'b0;
  assign result[1] = 1'b0;

  oadm_fixed_l0_div_specialized dut ( .x({x[31:18], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .y({y[31:18], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .result({result[31:10], SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9}) );
endmodule

