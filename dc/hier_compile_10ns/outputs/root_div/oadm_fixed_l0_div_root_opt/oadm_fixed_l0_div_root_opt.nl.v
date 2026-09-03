/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Thu Sep  3 12:12:09 2026
/////////////////////////////////////////////////////////////


module oadm_runtime_plane_pruned_RESIDUAL_DROP18_DW_mult_tc_1 ( a, b, product
 );
  input [4:0] a;
  input [5:0] b;
  output [10:0] product;
  wire   n2, n3, n4, n5, n10, n11, n13, n14, n16, n17, n21, n22, n24, n28, n39,
         n40, n106, n107, n120, n123, n128, n132, n133, n134, n136, n137, n138,
         n139, n142, n143, n144, n145, n146, n150, n151, n152, n153, n154;

  FA1D0 U3 ( .A(n13), .B(n11), .CI(n3), .CO(n2), .S(product[8]) );
  FA1D0 U4 ( .A(n16), .B(n14), .CI(n4), .CO(n3), .S(product[7]) );
  FA1D0 U5 ( .A(n17), .B(n21), .CI(n5), .CO(n4), .S(product[6]) );
  ND2D1 U67 ( .A1(n10), .A2(n2), .ZN(product[10]) );
  INVD1 U69 ( .I(n134), .ZN(n107) );
  CKXOR2D1 U71 ( .A1(n142), .A2(n39), .Z(n11) );
  ND2D1 U72 ( .A1(n132), .A2(n133), .ZN(n16) );
  XNR3D1 U73 ( .A1(a[3]), .A2(n40), .A3(n143), .ZN(n14) );
  XNR3D1 U75 ( .A1(a[3]), .A2(n106), .A3(a[2]), .ZN(n17) );
  NR2D1 U78 ( .A1(n106), .A2(a[3]), .ZN(n134) );
  ND2D1 U81 ( .A1(n106), .A2(n120), .ZN(n138) );
  ND2D1 U94 ( .A1(n40), .A2(a[2]), .ZN(n146) );
  NR2D1 U96 ( .A1(n40), .A2(a[3]), .ZN(n142) );
  ND2D1 U97 ( .A1(n142), .A2(a[4]), .ZN(n10) );
  INVD1 U111 ( .I(a[0]), .ZN(n123) );
  MUX2ND0 U115 ( .I0(n137), .I1(n138), .S(a[3]), .ZN(n136) );
  MUX2ND0 U117 ( .I0(n139), .I1(n106), .S(a[3]), .ZN(n133) );
  MUX2ND0 U118 ( .I0(n145), .I1(n146), .S(a[3]), .ZN(n144) );
  CKXOR2D1 U119 ( .A1(a[2]), .A2(n107), .Z(n143) );
  CKXOR2D1 U120 ( .A1(n2), .A2(n10), .Z(product[9]) );
  AO211D0 U68 ( .A1(n151), .A2(a[2]), .B(n150), .C(n144), .Z(n13) );
  OA21D0 U70 ( .A1(a[3]), .A2(n153), .B(n152), .Z(n150) );
  CKND0 U74 ( .I(a[4]), .ZN(n39) );
  CKND0 U76 ( .I(n134), .ZN(n151) );
  IOA21D0 U77 ( .A1(n40), .A2(n107), .B(a[3]), .ZN(n152) );
  NR2D0 U79 ( .A1(n40), .A2(n134), .ZN(n153) );
  IOA21D0 U80 ( .A1(a[0]), .A2(n24), .B(n154), .ZN(n21) );
  AOI21D0 U82 ( .A1(n24), .A2(a[1]), .B(n128), .ZN(n154) );
  CKND0 U83 ( .I(a[4]), .ZN(n40) );
  CKND2D0 U84 ( .A1(a[2]), .A2(a[4]), .ZN(n145) );
  XOR3D0 U85 ( .A1(n24), .A2(a[0]), .A3(a[1]), .Z(n22) );
  CKXOR2D0 U86 ( .A1(a[1]), .A2(a[0]), .Z(product[4]) );
  CKND2D0 U87 ( .A1(n139), .A2(n120), .ZN(n137) );
  CKND0 U88 ( .I(a[2]), .ZN(n120) );
  AN2D0 U89 ( .A1(n22), .A2(n28), .Z(n5) );
  NR2D0 U90 ( .A1(n136), .A2(n120), .ZN(n132) );
  CKND0 U91 ( .I(n139), .ZN(n106) );
  NR2D0 U92 ( .A1(a[2]), .A2(a[1]), .ZN(n139) );
  AN2D0 U93 ( .A1(a[1]), .A2(a[0]), .Z(n128) );
  NR2D0 U95 ( .A1(a[1]), .A2(a[0]), .ZN(n28) );
  INVD1 U98 ( .I(n123), .ZN(product[3]) );
  XNR2D1 U99 ( .A1(a[2]), .A2(a[1]), .ZN(n24) );
  CKXOR2D1 U100 ( .A1(n28), .A2(n22), .Z(product[5]) );
endmodule


module oadm_runtime_plane_pruned_RESIDUAL_DROP18_DW_mult_tc_0 ( a, b, product
 );
  input [4:0] a;
  input [5:0] b;
  output [10:0] product;
  wire   n2, n3, n4, n5, n10, n11, n13, n14, n16, n17, n21, n22, n24, n28, n39,
         n40, n106, n107, n120, n123, n128, n132, n133, n134, n136, n139, n142,
         n143, n144, n145, n146, n150, n151, n152, n153, n154, n155, n156;

  FA1D0 U3 ( .A(n13), .B(n11), .CI(n3), .CO(n2), .S(product[8]) );
  FA1D0 U4 ( .A(n16), .B(n14), .CI(n4), .CO(n3), .S(product[7]) );
  FA1D0 U5 ( .A(n17), .B(n21), .CI(n5), .CO(n4), .S(product[6]) );
  ND2D1 U67 ( .A1(n10), .A2(n2), .ZN(product[10]) );
  INVD1 U69 ( .I(n134), .ZN(n107) );
  CKXOR2D1 U71 ( .A1(n142), .A2(n39), .Z(n11) );
  ND2D1 U72 ( .A1(n132), .A2(n133), .ZN(n16) );
  XNR3D1 U73 ( .A1(a[3]), .A2(n40), .A3(n143), .ZN(n14) );
  XNR3D1 U75 ( .A1(a[3]), .A2(n106), .A3(a[2]), .ZN(n17) );
  NR2D1 U78 ( .A1(n106), .A2(a[3]), .ZN(n134) );
  ND2D1 U94 ( .A1(n40), .A2(a[2]), .ZN(n146) );
  NR2D1 U96 ( .A1(n40), .A2(a[3]), .ZN(n142) );
  ND2D1 U97 ( .A1(n142), .A2(a[4]), .ZN(n10) );
  INVD1 U111 ( .I(a[0]), .ZN(n123) );
  MUX2ND0 U117 ( .I0(n139), .I1(n106), .S(a[3]), .ZN(n133) );
  MUX2ND0 U118 ( .I0(n145), .I1(n146), .S(a[3]), .ZN(n144) );
  CKXOR2D1 U119 ( .A1(a[2]), .A2(n107), .Z(n143) );
  CKXOR2D1 U120 ( .A1(n2), .A2(n10), .Z(product[9]) );
  AO211D0 U68 ( .A1(n151), .A2(a[2]), .B(n150), .C(n144), .Z(n13) );
  OA21D0 U70 ( .A1(a[3]), .A2(n153), .B(n152), .Z(n150) );
  CKND0 U74 ( .I(a[4]), .ZN(n39) );
  CKND0 U76 ( .I(n134), .ZN(n151) );
  IOA21D0 U77 ( .A1(n40), .A2(n107), .B(a[3]), .ZN(n152) );
  NR2D0 U79 ( .A1(n40), .A2(n134), .ZN(n153) );
  IOA21D0 U80 ( .A1(a[0]), .A2(n24), .B(n154), .ZN(n21) );
  AOI21D0 U81 ( .A1(n24), .A2(a[1]), .B(n128), .ZN(n154) );
  CKND0 U82 ( .I(n139), .ZN(n106) );
  NR2D0 U83 ( .A1(a[1]), .A2(a[2]), .ZN(n139) );
  CKND0 U84 ( .I(a[4]), .ZN(n40) );
  CKND2D0 U85 ( .A1(a[2]), .A2(a[4]), .ZN(n145) );
  XOR3D0 U86 ( .A1(n24), .A2(a[0]), .A3(a[1]), .Z(n22) );
  CKXOR2D0 U87 ( .A1(a[1]), .A2(a[0]), .Z(product[4]) );
  AOI21D0 U88 ( .A1(a[3]), .A2(n156), .B(n155), .ZN(n136) );
  OAI21D0 U89 ( .A1(a[3]), .A2(n156), .B(n120), .ZN(n155) );
  CKND0 U90 ( .I(n106), .ZN(n156) );
  CKND0 U91 ( .I(a[2]), .ZN(n120) );
  AN2D0 U92 ( .A1(n22), .A2(n28), .Z(n5) );
  NR2D0 U93 ( .A1(n136), .A2(n120), .ZN(n132) );
  CKND0 U95 ( .I(n123), .ZN(product[3]) );
  AN2D0 U98 ( .A1(a[1]), .A2(a[0]), .Z(n128) );
  NR2D0 U99 ( .A1(a[1]), .A2(a[0]), .ZN(n28) );
  XNR2D1 U100 ( .A1(a[2]), .A2(a[1]), .ZN(n24) );
  CKXOR2D1 U101 ( .A1(n28), .A2(n22), .Z(product[5]) );
endmodule


module oadm_runtime_plane_pruned_RESIDUAL_DROP18 ( x_mantissa, y_mantissa, 
        level, divide_mode, plane_exact );
  input [23:0] x_mantissa;
  input [23:0] y_mantissa;
  input [1:0] level;
  output [28:0] plane_exact;
  input divide_mode;
  wire   x_residual_22_, y_residual_22_, N83, N82, N81, N80, N79, N78, N77,
         N76, n25, n26, n27, n28, n29, n30, n31, n32, n43;
  wire   [10:3] x_product;
  wire   [10:3] y_product;
  wire   [24:18] sub_0_root_sub_73_carry;
  wire   [24:22] r418_carry;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5;

  oadm_runtime_plane_pruned_RESIDUAL_DROP18_DW_mult_tc_1 mult_60 ( .a({
        y_residual_22_, y_mantissa[21:18]}), .b({n43, 1'b1, 1'b1, 1'b0, 1'b0, 
        1'b0}), .product({y_product, SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2}) );
  oadm_runtime_plane_pruned_RESIDUAL_DROP18_DW_mult_tc_0 mult_58 ( .a({
        x_residual_22_, x_mantissa[21:18]}), .b({n43, 1'b1, 1'b1, 1'b0, 1'b0, 
        1'b0}), .product({x_product, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5}) );
  FA1D0 U19 ( .A(1'b1), .B(x_product[10]), .CI(r418_carry[24]), .S(N83) );
  FA1D0 U22 ( .A(N83), .B(n31), .CI(sub_0_root_sub_73_carry[24]), .S(
        plane_exact[24]) );
  FA1D0 U26 ( .A(N82), .B(n32), .CI(sub_0_root_sub_73_carry[23]), .CO(
        sub_0_root_sub_73_carry[24]), .S(plane_exact[23]) );
  INVD1 U27 ( .I(y_product[9]), .ZN(n32) );
  INVD1 U29 ( .I(y_product[10]), .ZN(n31) );
  FA1D0 U37 ( .A(1'b0), .B(x_product[9]), .CI(r418_carry[23]), .CO(
        r418_carry[24]), .S(N82) );
  FA1D0 U38 ( .A(1'b0), .B(x_product[8]), .CI(r418_carry[22]), .CO(
        r418_carry[23]), .S(N81) );
  FA1D0 U40 ( .A(N81), .B(n30), .CI(sub_0_root_sub_73_carry[22]), .CO(
        sub_0_root_sub_73_carry[23]), .S(plane_exact[22]) );
  INVD1 U41 ( .I(y_product[8]), .ZN(n30) );
  FA1D0 U42 ( .A(1'b1), .B(x_product[7]), .CI(1'b0), .CO(r418_carry[22]), .S(
        N80) );
  FA1D0 U44 ( .A(1'b0), .B(x_product[6]), .CI(1'b0), .S(N79) );
  FA1D0 U45 ( .A(N79), .B(n28), .CI(sub_0_root_sub_73_carry[20]), .CO(
        sub_0_root_sub_73_carry[21]), .S(plane_exact[20]) );
  INVD1 U46 ( .I(y_product[6]), .ZN(n28) );
  FA1D0 U48 ( .A(N80), .B(n29), .CI(sub_0_root_sub_73_carry[21]), .CO(
        sub_0_root_sub_73_carry[22]), .S(plane_exact[21]) );
  INVD1 U49 ( .I(y_product[7]), .ZN(n29) );
  FA1D0 U50 ( .A(N76), .B(n25), .CI(1'b1), .CO(sub_0_root_sub_73_carry[18]) );
  INVD1 U51 ( .I(y_product[3]), .ZN(n25) );
  FA1D0 U58 ( .A(1'b0), .B(x_product[5]), .CI(1'b0), .S(N78) );
  FA1D0 U59 ( .A(N78), .B(n27), .CI(sub_0_root_sub_73_carry[19]), .CO(
        sub_0_root_sub_73_carry[20]), .S(plane_exact[19]) );
  INVD1 U60 ( .I(y_product[5]), .ZN(n27) );
  FA1D0 U61 ( .A(1'b0), .B(x_product[4]), .CI(1'b0), .S(N77) );
  FA1D0 U62 ( .A(N77), .B(n26), .CI(sub_0_root_sub_73_carry[18]), .CO(
        sub_0_root_sub_73_carry[19]), .S(plane_exact[18]) );
  INVD1 U63 ( .I(y_product[4]), .ZN(n26) );
  FA1D0 U64 ( .A(1'b0), .B(x_product[3]), .CI(1'b0), .S(N76) );
  TIEL U121 ( .ZN(n43) );
  INVD1 U3 ( .I(y_mantissa[22]), .ZN(y_residual_22_) );
  INVD1 U4 ( .I(x_mantissa[22]), .ZN(x_residual_22_) );
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
  TIEL U110 ( .ZN(n79) );
  CKXOR2D1 U111 ( .A1(exponent_adjust[0]), .A2(N3), .Z(result[23]) );
  CKND0 U119 ( .I(y[23]), .ZN(N11) );
endmodule


module oadm_fixed_div_root_opt_0_18_18_7_3b_DW_mult_uns_0_DW_mult_uns_1 ( a, b, 
        product );
  input [6:0] a;
  input [5:0] b;
  output [12:0] product;
  wire   n3, n4, n5, n6, n7, n8, n9, n10, n11, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n63, n64, n65, n66, n67, n68, n69, n70,
         n71;

  FA1D0 U6 ( .A(n13), .B(a[3]), .CI(n4), .CO(n3), .S(product[9]) );
  FA1D0 U7 ( .A(n14), .B(n15), .CI(n5), .CO(n4), .S(product[8]) );
  FA1D0 U8 ( .A(n17), .B(n16), .CI(n6), .CO(n5), .S(product[7]) );
  FA1D0 U9 ( .A(n18), .B(n19), .CI(n7), .CO(n6), .S(product[6]) );
  FA1D0 U10 ( .A(n20), .B(n21), .CI(n8), .CO(n7), .S(product[5]) );
  FA1D0 U11 ( .A(n22), .B(n23), .CI(n9), .CO(n8), .S(product[4]) );
  FA1D0 U12 ( .A(n24), .B(n67), .CI(n10), .CO(n9), .S(product[3]) );
  FA1D0 U13 ( .A(n69), .B(a[2]), .CI(n11), .CO(n10), .S(product[2]) );
  HA1D0 U14 ( .A(n69), .B(n68), .CO(n11), .S(product[1]) );
  FA1D0 U20 ( .A(n65), .B(n63), .CI(a[0]), .CO(n17), .S(n18) );
  HA1D0 U21 ( .A(n66), .B(n64), .CO(n19), .S(n20) );
  HA1D0 U22 ( .A(n67), .B(n65), .CO(n21), .S(n22) );
  HA1D0 U23 ( .A(n68), .B(n66), .CO(n23), .S(n24) );
  INVD1 U35 ( .I(a[6]), .ZN(n63) );
  INVD1 U36 ( .I(a[5]), .ZN(n64) );
  INVD1 U37 ( .I(a[4]), .ZN(n65) );
  INVD1 U38 ( .I(a[3]), .ZN(n66) );
  INVD1 U39 ( .I(a[2]), .ZN(n67) );
  INVD1 U40 ( .I(a[1]), .ZN(n68) );
  INVD1 U41 ( .I(a[0]), .ZN(n69) );
  XNR2D0 U42 ( .A1(n70), .A2(a[6]), .ZN(product[12]) );
  CKND2D0 U43 ( .A1(n71), .A2(n64), .ZN(n70) );
  XNR2D0 U44 ( .A1(n71), .A2(n64), .ZN(product[11]) );
  NR2D0 U45 ( .A1(n3), .A2(a[4]), .ZN(n71) );
  XNR2D0 U46 ( .A1(n3), .A2(a[4]), .ZN(product[10]) );
  XNR2D0 U47 ( .A1(n64), .A2(a[1]), .ZN(n16) );
  CKND2D0 U48 ( .A1(a[5]), .A2(n68), .ZN(n15) );
  XNR2D0 U49 ( .A1(n63), .A2(a[2]), .ZN(n14) );
  CKND2D0 U50 ( .A1(a[6]), .A2(n67), .ZN(n13) );
endmodule


module oadm_fixed_div_root_opt_0_18_18_7_3b ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   exponent_adjust_2_, n1, n15, n16, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n17, n18;
  wire   [22:18] x_mantissa;
  wire   [22:18] y_mantissa;
  wire   [24:18] plane_full;
  wire   [12:1] reduced_scale_product;
  wire   [22:11] normalized_fraction;
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
        SYNOPSYS_UNCONNECTED__68, SYNOPSYS_UNCONNECTED__69;

  oadm_runtime_plane_pruned_RESIDUAL_DROP18 plane ( .x_mantissa({1'b0, 
        x_mantissa, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y_mantissa({1'b0, 
        y_mantissa, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .level({1'b0, 1'b0}), 
        .divide_mode(1'b0), .plane_exact({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, plane_full, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15, SYNOPSYS_UNCONNECTED__16, 
        SYNOPSYS_UNCONNECTED__17, SYNOPSYS_UNCONNECTED__18, 
        SYNOPSYS_UNCONNECTED__19, SYNOPSYS_UNCONNECTED__20, 
        SYNOPSYS_UNCONNECTED__21}) );
  fp32_normal_finite_wrapper fp_wrapper ( .x({x[31:18], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .y({y[31:18], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .divide_mode(1'b0), .fraction_x({x_mantissa, SYNOPSYS_UNCONNECTED__22, 
        SYNOPSYS_UNCONNECTED__23, SYNOPSYS_UNCONNECTED__24, 
        SYNOPSYS_UNCONNECTED__25, SYNOPSYS_UNCONNECTED__26, 
        SYNOPSYS_UNCONNECTED__27, SYNOPSYS_UNCONNECTED__28, 
        SYNOPSYS_UNCONNECTED__29, SYNOPSYS_UNCONNECTED__30, 
        SYNOPSYS_UNCONNECTED__31, SYNOPSYS_UNCONNECTED__32, 
        SYNOPSYS_UNCONNECTED__33, SYNOPSYS_UNCONNECTED__34, 
        SYNOPSYS_UNCONNECTED__35, SYNOPSYS_UNCONNECTED__36, 
        SYNOPSYS_UNCONNECTED__37, SYNOPSYS_UNCONNECTED__38, 
        SYNOPSYS_UNCONNECTED__39}), .fraction_y({y_mantissa, 
        SYNOPSYS_UNCONNECTED__40, SYNOPSYS_UNCONNECTED__41, 
        SYNOPSYS_UNCONNECTED__42, SYNOPSYS_UNCONNECTED__43, 
        SYNOPSYS_UNCONNECTED__44, SYNOPSYS_UNCONNECTED__45, 
        SYNOPSYS_UNCONNECTED__46, SYNOPSYS_UNCONNECTED__47, 
        SYNOPSYS_UNCONNECTED__48, SYNOPSYS_UNCONNECTED__49, 
        SYNOPSYS_UNCONNECTED__50, SYNOPSYS_UNCONNECTED__51, 
        SYNOPSYS_UNCONNECTED__52, SYNOPSYS_UNCONNECTED__53, 
        SYNOPSYS_UNCONNECTED__54, SYNOPSYS_UNCONNECTED__55, 
        SYNOPSYS_UNCONNECTED__56, SYNOPSYS_UNCONNECTED__57}), 
        .result_fraction({normalized_fraction, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .exponent_adjust({
        exponent_adjust_2_, exponent_adjust_2_, n1}), .result({result[31:11], 
        SYNOPSYS_UNCONNECTED__58, SYNOPSYS_UNCONNECTED__59, 
        SYNOPSYS_UNCONNECTED__60, SYNOPSYS_UNCONNECTED__61, 
        SYNOPSYS_UNCONNECTED__62, SYNOPSYS_UNCONNECTED__63, 
        SYNOPSYS_UNCONNECTED__64, SYNOPSYS_UNCONNECTED__65, 
        SYNOPSYS_UNCONNECTED__66, SYNOPSYS_UNCONNECTED__67, 
        SYNOPSYS_UNCONNECTED__68}) );
  oadm_fixed_div_root_opt_0_18_18_7_3b_DW_mult_uns_0_DW_mult_uns_1 mult_219 ( 
        .a(plane_full), .b({n18, n18, n18, n17, n18, n18}), .product({
        reduced_scale_product, SYNOPSYS_UNCONNECTED__69}) );
  INVD1 U3 ( .I(reduced_scale_product[5]), .ZN(n9) );
  INVD1 U4 ( .I(reduced_scale_product[4]), .ZN(n10) );
  ND2D1 U5 ( .A1(n15), .A2(n16), .ZN(exponent_adjust_2_) );
  INVD1 U6 ( .I(reduced_scale_product[11]), .ZN(n3) );
  INVD1 U7 ( .I(n15), .ZN(n1) );
  INVD1 U8 ( .I(reduced_scale_product[6]), .ZN(n8) );
  INVD1 U9 ( .I(reduced_scale_product[3]), .ZN(n11) );
  INVD1 U10 ( .I(reduced_scale_product[1]), .ZN(n13) );
  ND2D1 U11 ( .A1(reduced_scale_product[11]), .A2(n2), .ZN(n15) );
  ND2D1 U12 ( .A1(n3), .A2(n2), .ZN(n16) );
  OAI222D0 U13 ( .A1(n5), .A2(n15), .B1(n16), .B2(n6), .C1(n4), .C2(n2), .ZN(
        normalized_fraction[21]) );
  OAI222D0 U14 ( .A1(n15), .A2(n4), .B1(n16), .B2(n5), .C1(n3), .C2(n2), .ZN(
        normalized_fraction[22]) );
  OAI222D0 U15 ( .A1(n15), .A2(n13), .B1(n16), .B2(n14), .C1(n2), .C2(n12), 
        .ZN(normalized_fraction[13]) );
  OAI222D0 U16 ( .A1(n15), .A2(n12), .B1(n16), .B2(n13), .C1(n2), .C2(n11), 
        .ZN(normalized_fraction[14]) );
  OAI222D0 U17 ( .A1(n15), .A2(n11), .B1(n16), .B2(n12), .C1(n2), .C2(n10), 
        .ZN(normalized_fraction[15]) );
  OAI222D0 U18 ( .A1(n15), .A2(n10), .B1(n16), .B2(n11), .C1(n2), .C2(n9), 
        .ZN(normalized_fraction[16]) );
  OAI222D0 U19 ( .A1(n15), .A2(n9), .B1(n16), .B2(n10), .C1(n2), .C2(n8), .ZN(
        normalized_fraction[17]) );
  OAI222D0 U20 ( .A1(n15), .A2(n8), .B1(n16), .B2(n9), .C1(n2), .C2(n7), .ZN(
        normalized_fraction[18]) );
  OAI222D0 U21 ( .A1(n15), .A2(n7), .B1(n16), .B2(n8), .C1(n2), .C2(n6), .ZN(
        normalized_fraction[19]) );
  OAI222D0 U22 ( .A1(n15), .A2(n6), .B1(n16), .B2(n7), .C1(n5), .C2(n2), .ZN(
        normalized_fraction[20]) );
  OAI22D1 U23 ( .A1(n2), .A2(n13), .B1(n15), .B2(n14), .ZN(
        normalized_fraction[12]) );
  NR2D1 U24 ( .A1(n2), .A2(n14), .ZN(normalized_fraction[11]) );
  INVD1 U25 ( .I(reduced_scale_product[9]), .ZN(n5) );
  INVD1 U26 ( .I(reduced_scale_product[8]), .ZN(n6) );
  INVD1 U27 ( .I(reduced_scale_product[7]), .ZN(n7) );
  INVD1 U28 ( .I(reduced_scale_product[2]), .ZN(n12) );
  INVD1 U29 ( .I(reduced_scale_product[12]), .ZN(n2) );
  INVD1 U30 ( .I(reduced_scale_product[10]), .ZN(n4) );
  INVD1 U31 ( .I(plane_full[18]), .ZN(n14) );
  TIEH U32 ( .Z(n18) );
  TIEL U33 ( .ZN(n17) );
endmodule


module oadm_fixed_l0_div_root_opt ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;

  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10;
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

  oadm_fixed_div_root_opt_0_18_18_7_3b implementation ( .x({x[31:18], 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y({y[31:18], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .result({result[31:11], SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10}) );
endmodule

