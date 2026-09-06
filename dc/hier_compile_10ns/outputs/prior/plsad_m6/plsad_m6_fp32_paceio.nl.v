/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Fri Sep  4 01:18:18 2026
/////////////////////////////////////////////////////////////


module fp32_normal_finite_wrapper_DW01_add_1_DW01_add_7 ( A, B, CI, SUM, CO );
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
  fp32_normal_finite_wrapper_DW01_add_1_DW01_add_7 add_1_root_add_0_root_add_22_2 ( 
        .A(x[30:23]), .B({y[30], N17, N16, N15, N14, N13, N12, N11}), .CI(n79), 
        .SUM({N10, N9, N8, N7, N6, N5, N4, N3}) );
  AN2XD1 U3 ( .A1(exponent_adjust[0]), .A2(N3), .Z(n1) );
  FA1D0 U31 ( .A(N4), .B(exponent_adjust[1]), .CI(n1), .CO(
        add_0_root_add_0_root_add_22_2_carry[2]), .S(result[24]) );
  FA1D0 U32 ( .A(N5), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[2]), .CO(
        add_0_root_add_0_root_add_22_2_carry[3]), .S(result[25]) );
  FA1D0 U33 ( .A(N6), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[3]), .CO(
        add_0_root_add_0_root_add_22_2_carry[4]), .S(result[26]) );
  FA1D0 U34 ( .A(N7), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[4]), .CO(
        add_0_root_add_0_root_add_22_2_carry[5]), .S(result[27]) );
  FA1D0 U35 ( .A(N8), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[5]), .CO(
        add_0_root_add_0_root_add_22_2_carry[6]), .S(result[28]) );
  FA1D0 U36 ( .A(N9), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[6]), .CO(
        add_0_root_add_0_root_add_22_2_carry[7]), .S(result[29]) );
  CKBD1 U37 ( .I(result_fraction[14]), .Z(result[14]) );
  CKBD1 U38 ( .I(result_fraction[15]), .Z(result[15]) );
  CKBD1 U39 ( .I(result_fraction[16]), .Z(result[16]) );
  XOR3D1 U48 ( .A1(N10), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_22_2_carry[7]), .Z(result[30]) );
  CKBD1 U49 ( .I(y[20]), .Z(fraction_y[20]) );
  CKBD1 U57 ( .I(result_fraction[13]), .Z(result[13]) );
  INVD1 U58 ( .I(y[29]), .ZN(N17) );
  INVD1 U59 ( .I(y[24]), .ZN(N12) );
  INVD1 U60 ( .I(y[25]), .ZN(N13) );
  INVD1 U61 ( .I(y[26]), .ZN(N14) );
  INVD1 U62 ( .I(y[27]), .ZN(N15) );
  INVD1 U63 ( .I(y[28]), .ZN(N16) );
  CKBD1 U64 ( .I(y[15]), .Z(fraction_y[15]) );
  CKBD1 U65 ( .I(y[14]), .Z(fraction_y[14]) );
  CKBD1 U87 ( .I(x[22]), .Z(fraction_x[22]) );
  CKBD1 U88 ( .I(x[21]), .Z(fraction_x[21]) );
  CKBD1 U89 ( .I(x[20]), .Z(fraction_x[20]) );
  CKBD1 U90 ( .I(x[19]), .Z(fraction_x[19]) );
  CKBD1 U91 ( .I(x[18]), .Z(fraction_x[18]) );
  CKBD1 U92 ( .I(x[17]), .Z(fraction_x[17]) );
  CKBD1 U93 ( .I(x[16]), .Z(fraction_x[16]) );
  CKBD1 U94 ( .I(x[15]), .Z(fraction_x[15]) );
  CKBD1 U95 ( .I(x[14]), .Z(fraction_x[14]) );
  CKBD1 U96 ( .I(x[13]), .Z(fraction_x[13]) );
  CKBD1 U97 ( .I(y[22]), .Z(fraction_y[22]) );
  CKBD1 U98 ( .I(y[21]), .Z(fraction_y[21]) );
  CKBD1 U99 ( .I(y[19]), .Z(fraction_y[19]) );
  CKBD1 U100 ( .I(y[18]), .Z(fraction_y[18]) );
  CKBD1 U101 ( .I(y[17]), .Z(fraction_y[17]) );
  CKBD1 U102 ( .I(y[16]), .Z(fraction_y[16]) );
  CKBD1 U103 ( .I(y[13]), .Z(fraction_y[13]) );
  CKBD1 U104 ( .I(result_fraction[22]), .Z(result[22]) );
  CKBD1 U105 ( .I(result_fraction[21]), .Z(result[21]) );
  CKBD1 U106 ( .I(result_fraction[20]), .Z(result[20]) );
  CKBD1 U107 ( .I(result_fraction[19]), .Z(result[19]) );
  CKBD1 U108 ( .I(result_fraction[18]), .Z(result[18]) );
  CKBD1 U109 ( .I(result_fraction[17]), .Z(result[17]) );
  TIEL U110 ( .ZN(n79) );
  CKXOR2D1 U111 ( .A1(exponent_adjust[0]), .A2(N3), .Z(result[23]) );
  CKND0 U119 ( .I(y[23]), .ZN(N11) );
endmodule


module FP_DIV_WRAPPER_32_width_trunc13_width_mantissa10_width_shift1 ( x, y, 
        out0, mantissa_x, mantissa_y, mantissa_out, shift );
  input [31:0] x;
  input [31:0] y;
  output [31:0] out0;
  output [9:0] mantissa_x;
  output [9:0] mantissa_y;
  input [9:0] mantissa_out;
  input [0:0] shift;

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
        SYNOPSYS_UNCONNECTED__38;

  fp32_normal_finite_wrapper shared_wrapper ( .x({x[31:13], 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y({
        y[31:13], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0}), .divide_mode(1'b0), .fraction_x({mantissa_x, 
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12}), .fraction_y({mantissa_y, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15, SYNOPSYS_UNCONNECTED__16, 
        SYNOPSYS_UNCONNECTED__17, SYNOPSYS_UNCONNECTED__18, 
        SYNOPSYS_UNCONNECTED__19, SYNOPSYS_UNCONNECTED__20, 
        SYNOPSYS_UNCONNECTED__21, SYNOPSYS_UNCONNECTED__22, 
        SYNOPSYS_UNCONNECTED__23, SYNOPSYS_UNCONNECTED__24, 
        SYNOPSYS_UNCONNECTED__25}), .result_fraction({mantissa_out, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .exponent_adjust({shift[0], shift[0], shift[0]}), .result({out0[31:13], 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31, 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, 
        SYNOPSYS_UNCONNECTED__38}) );
endmodule


module plsad_loa4_EXACT_MSB_BITS6_DW01_add_2 ( A, B, CI, SUM, CO );
  input [5:0] A;
  input [5:0] B;
  output [5:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [5:2] carry;

  XOR3D1 U1_5 ( .A1(A[5]), .A2(1'b0), .A3(carry[5]), .Z(SUM[5]) );
  FA1D0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1D0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1D0 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA1D0 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  AN2XD1 U1 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
  CKXOR2D1 U2 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
endmodule


module plsad_loa4_EXACT_MSB_BITS6_DW01_add_1 ( A, B, CI, SUM, CO );
  input [5:0] A;
  input [5:0] B;
  output [5:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [5:2] carry;

  FA1D0 U1_4 ( .A(1'b1), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  XOR3D1 U1_5 ( .A1(1'b1), .A2(B[5]), .A3(carry[5]), .Z(SUM[5]) );
  FA1D0 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  FA1D0 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA1D0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  AN2XD1 U1 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
  CKXOR2D1 U2 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
endmodule


module plsad_loa4_EXACT_MSB_BITS6_DW01_add_0 ( A, B, CI, SUM, CO );
  input [5:0] A;
  input [5:0] B;
  output [5:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [5:2] carry;

  XOR3D1 U1_5 ( .A1(A[5]), .A2(B[5]), .A3(carry[5]), .Z(SUM[5]) );
  FA1D0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1D0 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  FA1D0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1D0 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  AN2XD1 U1 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
  CKXOR2D1 U2 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
endmodule


module plsad_loa4_EXACT_MSB_BITS6 ( x0, x1, x2, x3, sum );
  input [14:0] x0;
  input [14:0] x1;
  input [14:0] x2;
  input [14:0] x3;
  output [14:0] sum;
  wire   boundary_ones_2_, boundary_ones_1_, N9, N8, N7, N6, N5, N22, N21, N20,
         N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N1, N0,
         add_3_root_add_0_root_add_23_4_carry_2_, n110, n2, n4, n50, n60, n70,
         n80;

  OR4D1 U1 ( .A1(x1[8]), .A2(x0[8]), .A3(x3[8]), .A4(x2[8]), .Z(sum[8]) );
  OR4D1 U2 ( .A1(x1[7]), .A2(x0[7]), .A3(x3[7]), .A4(x2[7]), .Z(sum[7]) );
  plsad_loa4_EXACT_MSB_BITS6_DW01_add_2 add_2_root_add_0_root_add_23_4 ( .A(
        x3[14:9]), .B({1'b0, x0[13:9]}), .CI(n50), .SUM({N22, N21, N20, N19, 
        N18, N17}) );
  plsad_loa4_EXACT_MSB_BITS6_DW01_add_1 add_1_root_add_0_root_add_23_4 ( .A({
        1'b1, 1'b1, x2[12:9]}), .B({N22, N21, N20, N19, N18, N17}), .CI(n50), 
        .SUM({N16, N15, N14, N13, N12, N11}) );
  plsad_loa4_EXACT_MSB_BITS6_DW01_add_0 add_0_root_add_0_root_add_23_4 ( .A({
        N16, N15, N14, N13, N12, N11}), .B({N10, N9, N8, N7, N6, N5}), .CI(n50), .SUM(sum[14:9]) );
  AN2XD1 U10 ( .A1(x1[9]), .A2(boundary_ones_1_), .Z(n110) );
  ND2D1 U11 ( .A1(N0), .A2(x3[8]), .ZN(n60) );
  AN2XD1 U12 ( .A1(n4), .A2(x1[12]), .Z(n2) );
  AN2XD1 U14 ( .A1(add_3_root_add_0_root_add_23_4_carry_2_), .A2(x1[11]), .Z(
        n4) );
  AO22D0 U15 ( .A1(x2[8]), .A2(x1[8]), .B1(n70), .B2(x0[8]), .Z(N1) );
  FA1D0 U16 ( .A(boundary_ones_2_), .B(x1[10]), .CI(n110), .CO(
        add_3_root_add_0_root_add_23_4_carry_2_), .S(N6) );
  TIEL U17 ( .ZN(n50) );
  CKXOR2D1 U18 ( .A1(x1[9]), .A2(boundary_ones_1_), .Z(N5) );
  CKXOR2D1 U19 ( .A1(add_3_root_add_0_root_add_23_4_carry_2_), .A2(x1[11]), 
        .Z(N7) );
  CKXOR2D1 U20 ( .A1(n4), .A2(x1[12]), .Z(N8) );
  CKXOR2D1 U21 ( .A1(n2), .A2(x1[13]), .Z(N9) );
  AN3XD1 U23 ( .A1(N0), .A2(x3[8]), .A3(N1), .Z(boundary_ones_2_) );
  XNR2D1 U24 ( .A1(n60), .A2(N1), .ZN(boundary_ones_1_) );
  CKXOR2D1 U25 ( .A1(x0[8]), .A2(n70), .Z(N0) );
  CKXOR2D1 U26 ( .A1(x2[8]), .A2(x1[8]), .Z(n70) );
  OR3D0 U3 ( .A1(x2[4]), .A2(x0[4]), .A3(x1[4]), .Z(sum[4]) );
  OR3D0 U4 ( .A1(x2[5]), .A2(x0[5]), .A3(x1[5]), .Z(sum[5]) );
  OR3D0 U5 ( .A1(x2[6]), .A2(x0[6]), .A3(x1[6]), .Z(sum[6]) );
  OR3D0 U6 ( .A1(x2[3]), .A2(x0[3]), .A3(x1[3]), .Z(sum[3]) );
  XNR2D0 U7 ( .A1(x1[14]), .A2(n80), .ZN(N10) );
  CKND2D0 U8 ( .A1(x1[13]), .A2(n2), .ZN(n80) );
endmodule


module plsad_mantissa_div_EXACT_MSB_BITS6 ( fraction_x, fraction_y, 
        fraction_out, shift );
  input [9:0] fraction_x;
  input [9:0] fraction_y;
  output [9:0] fraction_out;
  output shift;
  wire   n14, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n52, n53, n2, n3,
         n4, n5, n6, n7, n8, n9, n10, n11, n13, n15, n16, n17, n18, n19, n20,
         n21;
  wire   [13:3] x0;
  wire   [13:3] x1;
  wire   [12:3] x2;
  wire   [14:7] x3;
  wire   [14:3] quotient;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2;

  OA222D1 U25 ( .A1(n5), .A2(n16), .B1(n18), .B2(fraction_x[6]), .C1(n19), 
        .C2(fraction_y[3]), .Z(n37) );
  OA222D1 U28 ( .A1(n6), .A2(n16), .B1(n18), .B2(fraction_x[5]), .C1(n19), 
        .C2(fraction_y[2]), .Z(n39) );
  OA222D1 U31 ( .A1(n7), .A2(n16), .B1(n18), .B2(fraction_x[4]), .C1(n19), 
        .C2(fraction_y[1]), .Z(n41) );
  OA222D1 U34 ( .A1(n8), .A2(n16), .B1(n18), .B2(fraction_x[3]), .C1(n19), 
        .C2(fraction_y[0]), .Z(n43) );
  AO211D1 U46 ( .A1(n2), .A2(n33), .B(n47), .C(n46), .Z(x1[11]) );
  plsad_loa4_EXACT_MSB_BITS6 approximate_sum ( .x0({1'b0, x0, 1'b0, 1'b0, 1'b0}), .x1({n14, x1[13], x1[13], x1[11:3], 1'b0, 1'b0, 1'b0}), .x2({1'b0, 1'b0, x2, 
        1'b0, 1'b0, 1'b0}), .x3({x3[14:13], x3[13], x3[13], x3[10:7], 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .sum({quotient, 
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2}) );
  INVD1 U3 ( .I(x3[13]), .ZN(n15) );
  ND2D1 U4 ( .A1(n25), .A2(n19), .ZN(x3[14]) );
  INVD1 U5 ( .I(n52), .ZN(n14) );
  NR3D0 U6 ( .A1(x3[9]), .A2(n26), .A3(n32), .ZN(n29) );
  ND2D1 U7 ( .A1(n29), .A2(n27), .ZN(x3[13]) );
  INVD1 U8 ( .I(n47), .ZN(n18) );
  AN2XD1 U9 ( .A1(n28), .A2(n18), .Z(n25) );
  INR2D1 U10 ( .A1(n27), .B1(x3[14]), .ZN(n52) );
  OAI22D1 U11 ( .A1(n52), .A2(n7), .B1(n29), .B2(n6), .ZN(x0[8]) );
  NR3D0 U12 ( .A1(n20), .A2(n17), .A3(n21), .ZN(n26) );
  INVD1 U13 ( .I(n46), .ZN(n19) );
  OAI22D1 U14 ( .A1(n52), .A2(n5), .B1(n29), .B2(n4), .ZN(x0[10]) );
  OAI22D1 U15 ( .A1(n52), .A2(n4), .B1(n29), .B2(n3), .ZN(x0[11]) );
  OAI22D1 U16 ( .A1(n52), .A2(n3), .B1(n29), .B2(n2), .ZN(x0[12]) );
  OAI22D1 U17 ( .A1(n52), .A2(n6), .B1(n29), .B2(n5), .ZN(x0[9]) );
  NR2D1 U18 ( .A1(n52), .A2(n2), .ZN(x0[13]) );
  INVD1 U19 ( .I(x3[9]), .ZN(n16) );
  ND2D1 U20 ( .A1(n28), .A2(n27), .ZN(n33) );
  INVD1 U21 ( .I(n32), .ZN(n13) );
  ND2D1 U22 ( .A1(n28), .A2(n13), .ZN(x3[10]) );
  IND4D1 U23 ( .A1(x3[10]), .B1(n27), .B2(n18), .B3(n16), .ZN(x3[8]) );
  AOI221D0 U24 ( .A1(n47), .A2(n2), .B1(n33), .B2(n3), .C(n26), .ZN(n53) );
  ND3D1 U26 ( .A1(n27), .A2(n19), .A3(n25), .ZN(x1[13]) );
  OAI22D1 U27 ( .A1(n52), .A2(n8), .B1(n29), .B2(n7), .ZN(x0[7]) );
  NR2D1 U29 ( .A1(n29), .A2(n11), .ZN(x0[3]) );
  NR3D0 U32 ( .A1(n17), .A2(fraction_y[7]), .A3(n20), .ZN(n32) );
  INVD1 U33 ( .I(quotient[14]), .ZN(shift) );
  OAI222D0 U35 ( .A1(fraction_y[6]), .A2(n19), .B1(fraction_y[4]), .B2(n25), 
        .C1(fraction_y[5]), .C2(n15), .ZN(x2[8]) );
  INVD1 U36 ( .I(fraction_y[8]), .ZN(n20) );
  OAI221D0 U37 ( .A1(fraction_y[6]), .A2(n19), .B1(n2), .B2(n16), .C(n53), 
        .ZN(x1[10]) );
  INVD1 U38 ( .I(fraction_y[9]), .ZN(n17) );
  NR3D0 U39 ( .A1(fraction_y[8]), .A2(fraction_y[9]), .A3(n21), .ZN(n47) );
  INVD1 U40 ( .I(fraction_y[7]), .ZN(n21) );
  IND2D1 U41 ( .A1(n34), .B1(n35), .ZN(x1[8]) );
  AOI221D0 U42 ( .A1(fraction_x[8]), .A2(n32), .B1(n33), .B2(n5), .C(n26), 
        .ZN(n35) );
  OAI222D0 U43 ( .A1(n4), .A2(n16), .B1(n18), .B2(fraction_x[7]), .C1(n19), 
        .C2(fraction_y[4]), .ZN(n34) );
  NR2D1 U44 ( .A1(n17), .A2(fraction_y[8]), .ZN(x3[9]) );
  NR3D0 U45 ( .A1(fraction_y[8]), .A2(fraction_y[9]), .A3(fraction_y[7]), .ZN(
        n46) );
  OAI221D0 U47 ( .A1(fraction_y[8]), .A2(n25), .B1(fraction_y[9]), .B2(n15), 
        .C(n19), .ZN(x2[12]) );
  OAI221D0 U48 ( .A1(fraction_y[7]), .A2(n25), .B1(fraction_y[8]), .B2(n15), 
        .C(n19), .ZN(x2[11]) );
  OAI221D0 U49 ( .A1(fraction_y[6]), .A2(n25), .B1(fraction_y[7]), .B2(n15), 
        .C(n19), .ZN(x2[10]) );
  ND3D1 U50 ( .A1(fraction_y[8]), .A2(n17), .A3(fraction_y[7]), .ZN(n27) );
  ND3D1 U51 ( .A1(n21), .A2(n17), .A3(fraction_y[8]), .ZN(n28) );
  OAI221D0 U52 ( .A1(fraction_y[5]), .A2(n25), .B1(fraction_y[6]), .B2(n15), 
        .C(n19), .ZN(x2[9]) );
  IND2D1 U53 ( .A1(n30), .B1(n31), .ZN(x1[9]) );
  AOI221D0 U54 ( .A1(fraction_x[9]), .A2(n32), .B1(n33), .B2(n4), .C(n26), 
        .ZN(n31) );
  OAI222D0 U55 ( .A1(n3), .A2(n16), .B1(n18), .B2(fraction_x[8]), .C1(n19), 
        .C2(fraction_y[5]), .ZN(n30) );
  INVD1 U56 ( .I(fraction_x[6]), .ZN(n5) );
  INVD1 U57 ( .I(fraction_x[7]), .ZN(n4) );
  AO22D0 U58 ( .A1(quotient[14]), .A2(quotient[5]), .B1(shift), .B2(
        quotient[4]), .Z(fraction_out[1]) );
  AO22D0 U59 ( .A1(quotient[14]), .A2(quotient[6]), .B1(shift), .B2(
        quotient[5]), .Z(fraction_out[2]) );
  AO22D0 U60 ( .A1(quotient[14]), .A2(quotient[7]), .B1(shift), .B2(
        quotient[6]), .Z(fraction_out[3]) );
  AO22D0 U61 ( .A1(shift), .A2(quotient[7]), .B1(quotient[14]), .B2(
        quotient[8]), .Z(fraction_out[4]) );
  AO22D0 U62 ( .A1(shift), .A2(quotient[8]), .B1(quotient[14]), .B2(
        quotient[9]), .Z(fraction_out[5]) );
  AO22D0 U63 ( .A1(shift), .A2(quotient[10]), .B1(quotient[14]), .B2(
        quotient[11]), .Z(fraction_out[7]) );
  AO22D0 U64 ( .A1(shift), .A2(quotient[11]), .B1(quotient[14]), .B2(
        quotient[12]), .Z(fraction_out[8]) );
  AO22D0 U65 ( .A1(shift), .A2(quotient[12]), .B1(quotient[13]), .B2(
        quotient[14]), .Z(fraction_out[9]) );
  AO22D0 U66 ( .A1(shift), .A2(quotient[9]), .B1(quotient[14]), .B2(
        quotient[10]), .Z(fraction_out[6]) );
  INVD1 U67 ( .I(fraction_x[5]), .ZN(n6) );
  INVD1 U68 ( .I(fraction_x[4]), .ZN(n7) );
  INVD1 U69 ( .I(fraction_x[8]), .ZN(n3) );
  INVD1 U70 ( .I(fraction_x[9]), .ZN(n2) );
  NR3D0 U71 ( .A1(n17), .A2(fraction_y[8]), .A3(fraction_y[7]), .ZN(x3[7]) );
  OAI211D1 U72 ( .A1(n13), .A2(n4), .B(n36), .C(n37), .ZN(x1[7]) );
  OAI222D0 U73 ( .A1(fraction_y[5]), .A2(n19), .B1(fraction_y[3]), .B2(n25), 
        .C1(fraction_y[4]), .C2(n15), .ZN(x2[7]) );
  OAI221D0 U74 ( .A1(fraction_y[1]), .A2(n19), .B1(fraction_y[0]), .B2(n15), 
        .C(n25), .ZN(x2[3]) );
  AOI222D0 U75 ( .A1(fraction_x[2]), .A2(x3[9]), .B1(fraction_x[3]), .B2(n32), 
        .C1(n47), .C2(n9), .ZN(n44) );
  AOI22D1 U76 ( .A1(n33), .A2(n9), .B1(fraction_y[3]), .B2(n26), .ZN(n42) );
  AOI22D1 U77 ( .A1(n33), .A2(n7), .B1(fraction_y[5]), .B2(n26), .ZN(n38) );
  AOI22D1 U78 ( .A1(n33), .A2(n8), .B1(fraction_y[4]), .B2(n26), .ZN(n40) );
  AOI221D0 U79 ( .A1(fraction_y[2]), .A2(n26), .B1(n33), .B2(n10), .C(n46), 
        .ZN(n45) );
  AOI22D1 U80 ( .A1(n33), .A2(n6), .B1(fraction_y[6]), .B2(n26), .ZN(n36) );
  INVD1 U81 ( .I(fraction_x[2]), .ZN(n9) );
  INVD1 U82 ( .I(fraction_x[1]), .ZN(n10) );
  INVD1 U83 ( .I(fraction_x[3]), .ZN(n8) );
  INVD1 U84 ( .I(fraction_x[0]), .ZN(n11) );
  AO22D0 U94 ( .A1(quotient[14]), .A2(quotient[4]), .B1(quotient[3]), .B2(
        shift), .Z(fraction_out[0]) );
  ND2D1 U95 ( .A1(n44), .A2(n45), .ZN(x1[3]) );
  OAI211D1 U96 ( .A1(n13), .A2(n7), .B(n42), .C(n43), .ZN(x1[4]) );
  OAI222D0 U97 ( .A1(fraction_y[2]), .A2(n19), .B1(fraction_y[0]), .B2(n25), 
        .C1(fraction_y[1]), .C2(n15), .ZN(x2[4]) );
  OAI22D1 U98 ( .A1(n52), .A2(n11), .B1(n29), .B2(n10), .ZN(x0[4]) );
  OAI211D1 U99 ( .A1(n13), .A2(n6), .B(n40), .C(n41), .ZN(x1[5]) );
  OAI222D0 U100 ( .A1(fraction_y[3]), .A2(n19), .B1(fraction_y[1]), .B2(n25), 
        .C1(fraction_y[2]), .C2(n15), .ZN(x2[5]) );
  OAI22D1 U101 ( .A1(n52), .A2(n10), .B1(n29), .B2(n9), .ZN(x0[5]) );
  OAI211D1 U102 ( .A1(n13), .A2(n5), .B(n38), .C(n39), .ZN(x1[6]) );
  OAI222D0 U103 ( .A1(fraction_y[4]), .A2(n19), .B1(fraction_y[2]), .B2(n25), 
        .C1(fraction_y[3]), .C2(n15), .ZN(x2[6]) );
  OAI22D1 U104 ( .A1(n52), .A2(n9), .B1(n29), .B2(n8), .ZN(x0[6]) );
endmodule


module plsad_fp32_paceio_EXACT_MSB_BITS6 ( x, y, out0 );
  input [31:0] x;
  input [31:0] y;
  output [31:0] out0;
  wire   shift;
  wire   [9:0] fraction_x;
  wire   [9:0] fraction_y;
  wire   [9:0] fraction_out;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12;

  FP_DIV_WRAPPER_32_width_trunc13_width_mantissa10_width_shift1 wrapper ( .x({
        x[31:13], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0}), .y({y[31:13], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .out0({out0[31:13], 
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12}), .mantissa_x(fraction_x), .mantissa_y(
        fraction_y), .mantissa_out(fraction_out), .shift(shift) );
  plsad_mantissa_div_EXACT_MSB_BITS6 core ( .fraction_x(fraction_x), 
        .fraction_y(fraction_y), .fraction_out(fraction_out), .shift(shift) );
endmodule


module plsad_m6_fp32_paceio ( x, y, out0 );
  input [31:0] x;
  input [31:0] y;
  output [31:0] out0;

  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12;
  assign out0[0] = 1'b0;
  assign out0[1] = 1'b0;
  assign out0[2] = 1'b0;
  assign out0[3] = 1'b0;
  assign out0[4] = 1'b0;
  assign out0[5] = 1'b0;
  assign out0[6] = 1'b0;
  assign out0[7] = 1'b0;
  assign out0[8] = 1'b0;
  assign out0[9] = 1'b0;
  assign out0[10] = 1'b0;
  assign out0[11] = 1'b0;
  assign out0[12] = 1'b0;

  plsad_fp32_paceio_EXACT_MSB_BITS6 impl ( .x({x[31:13], 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y({
        y[31:13], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0}), .out0({out0[31:13], SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12}) );
endmodule

