/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Fri Sep  4 11:39:42 2026
/////////////////////////////////////////////////////////////


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
  CKBD1 U37 ( .I(result_fraction[13]), .Z(result[13]) );
  CKBD1 U38 ( .I(result_fraction[14]), .Z(result[14]) );
  CKBD1 U39 ( .I(result_fraction[15]), .Z(result[15]) );
  CKBD1 U40 ( .I(result_fraction[16]), .Z(result[16]) );
  XOR3D1 U49 ( .A1(N10), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_22_2_carry[7]), .Z(result[30]) );
  CKBD1 U50 ( .I(y[20]), .Z(fraction_y[20]) );
  CKBD1 U57 ( .I(y[14]), .Z(fraction_y[14]) );
  CKBD1 U59 ( .I(y[15]), .Z(fraction_y[15]) );
  INVD1 U60 ( .I(y[29]), .ZN(N17) );
  INVD1 U61 ( .I(y[24]), .ZN(N12) );
  INVD1 U62 ( .I(y[25]), .ZN(N13) );
  INVD1 U63 ( .I(y[26]), .ZN(N14) );
  INVD1 U64 ( .I(y[27]), .ZN(N15) );
  INVD1 U65 ( .I(y[28]), .ZN(N16) );
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


module plsad_loa4_EXACT_MSB_BITS15_DW01_add_2 ( A, B, CI, SUM, CO );
  input [14:0] A;
  input [14:0] B;
  output [14:0] SUM;
  input CI;
  output CO;

  wire   [14:2] carry;

  FA1D0 U1_1 ( .A(A[1]), .B(1'b1), .CI(A[0]), .CO(carry[2]), .S(SUM[1]) );
  FA1D0 U1_13 ( .A(A[13]), .B(1'b1), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  XOR3D1 U1_14 ( .A1(A[14]), .A2(1'b1), .A3(carry[14]), .Z(SUM[14]) );
  FA1D0 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA1D0 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  FA1D0 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FA1D0 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FA1D0 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  FA1D0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1D0 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FA1D0 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA1D0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA1D0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1D0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  CKND0 U1 ( .I(A[0]), .ZN(SUM[0]) );
endmodule


module plsad_loa4_EXACT_MSB_BITS15_DW01_add_1 ( A, B, CI, SUM, CO );
  input [14:0] A;
  input [14:0] B;
  output [14:0] SUM;
  input CI;
  output CO;

  wire   [14:8] carry;

  FA1D0 U1_6 ( .A(1'b0), .B(B[6]), .CI(1'b0), .S(SUM[6]) );
  FA1D0 U1_3 ( .A(1'b0), .B(B[3]), .CI(1'b0), .S(SUM[3]) );
  FA1D0 U1_5 ( .A(1'b0), .B(B[5]), .CI(1'b0), .S(SUM[5]) );
  FA1D0 U1_4 ( .A(1'b0), .B(B[4]), .CI(1'b0), .S(SUM[4]) );
  XOR3D1 U1_14 ( .A1(A[14]), .A2(1'b0), .A3(carry[14]), .Z(SUM[14]) );
  FA1D0 U1_7 ( .A(A[7]), .B(B[7]), .CI(1'b0), .CO(carry[8]), .S(SUM[7]) );
  FA1D0 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  FA1D0 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FA1D0 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FA1D0 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  FA1D0 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  FA1D0 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
endmodule


module plsad_loa4_EXACT_MSB_BITS15_DW01_add_0 ( A, B, CI, SUM, CO );
  input [14:0] A;
  input [14:0] B;
  output [14:0] SUM;
  input CI;
  output CO;

  wire   [14:4] carry;

  XOR3D1 U1_14 ( .A1(A[14]), .A2(B[14]), .A3(carry[14]), .Z(SUM[14]) );
  FA1D0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA1D0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1D0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1D0 U1_3 ( .A(A[3]), .B(B[3]), .CI(1'b0), .CO(carry[4]), .S(SUM[3]) );
  FA1D0 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  FA1D0 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  FA1D0 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FA1D0 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FA1D0 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  FA1D0 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FA1D0 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
endmodule


module plsad_loa4_EXACT_MSB_BITS15 ( x0, x1, x2, x3, sum );
  input [14:0] x0;
  input [14:0] x1;
  input [14:0] x2;
  input [14:0] x3;
  output [14:0] sum;
  wire   N9, N8, N7, N6, N5, N4, N3, N29, N28, N27, N26, N25, N24, N23, N22,
         N21, N20, N2, N19, N18, N14, N13, N12, N11, N10, N1, N0, n15;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5;

  plsad_loa4_EXACT_MSB_BITS15_DW01_add_2 add_1_root_add_0_root_add_16_3 ( .A(
        x1), .B({1'b1, 1'b1, x2[12:2], 1'b1, 1'b1}), .CI(n15), .SUM({N14, N13, 
        N12, N11, N10, N9, N8, N7, N6, N5, N4, N3, N2, N1, N0}) );
  plsad_loa4_EXACT_MSB_BITS15_DW01_add_1 add_2_root_add_0_root_add_16_3 ( .A({
        x3[14:7], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .B({1'b0, 
        x0[13:3], 1'b0, 1'b0, 1'b0}), .CI(n15), .SUM({N29, N28, N27, N26, N25, 
        N24, N23, N22, N21, N20, N19, N18, SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2}) );
  plsad_loa4_EXACT_MSB_BITS15_DW01_add_0 add_0_root_add_0_root_add_16_3 ( .A({
        N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, 1'b0, 1'b0, 
        1'b0}), .B({N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3, N2, 
        N1, N0}), .CI(n15), .SUM({sum[14:3], SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5}) );
  TIEL U1 ( .ZN(n15) );
endmodule


module plsad_mantissa_div_EXACT_MSB_BITS15 ( fraction_x, fraction_y, 
        fraction_out, shift );
  input [9:0] fraction_x;
  input [9:0] fraction_y;
  output [9:0] fraction_out;
  output shift;
  wire   n14, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n13, n15, n16,
         n17, n18, n19, n20, n21, n22;
  wire   [13:3] x0;
  wire   [13:0] x1;
  wire   [12:2] x2;
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
  plsad_loa4_EXACT_MSB_BITS15 approximate_sum ( .x0({1'b0, x0, 1'b0, 1'b0, 
        1'b0}), .x1({n14, x1[13], x1[13], x1[11:0]}), .x2({1'b0, 1'b0, x2, 
        1'b0, 1'b0}), .x3({x3[14:13], x3[13], x3[13], x3[10:7], 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .sum({quotient, 
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2}) );
  NR3D0 U3 ( .A1(n17), .A2(fraction_y[7]), .A3(n20), .ZN(n32) );
  ND2D1 U4 ( .A1(n25), .A2(n19), .ZN(x3[14]) );
  INVD1 U6 ( .I(x3[13]), .ZN(n15) );
  INVD1 U7 ( .I(n52), .ZN(n14) );
  INR2D1 U8 ( .A1(n27), .B1(x3[14]), .ZN(n52) );
  INVD1 U9 ( .I(n47), .ZN(n18) );
  OAI21D1 U10 ( .A1(n13), .A2(n11), .B(n52), .ZN(x1[0]) );
  AN2XD1 U11 ( .A1(n28), .A2(n18), .Z(n25) );
  INVD1 U12 ( .I(n32), .ZN(n13) );
  IND4D1 U13 ( .A1(x3[10]), .B1(n27), .B2(n18), .B3(n16), .ZN(x3[8]) );
  ND2D1 U14 ( .A1(n28), .A2(n13), .ZN(x3[10]) );
  NR3D0 U15 ( .A1(x3[9]), .A2(n26), .A3(n32), .ZN(n29) );
  ND2D1 U16 ( .A1(n29), .A2(n27), .ZN(x3[13]) );
  INVD1 U17 ( .I(n46), .ZN(n19) );
  ND2D1 U18 ( .A1(n28), .A2(n27), .ZN(n33) );
  INVD1 U19 ( .I(x3[9]), .ZN(n16) );
  OAI22D1 U21 ( .A1(n52), .A2(n7), .B1(n29), .B2(n6), .ZN(x0[8]) );
  OAI22D1 U22 ( .A1(n52), .A2(n6), .B1(n29), .B2(n5), .ZN(x0[9]) );
  NR2D1 U23 ( .A1(n52), .A2(n2), .ZN(x0[13]) );
  OAI22D1 U24 ( .A1(n52), .A2(n5), .B1(n29), .B2(n4), .ZN(x0[10]) );
  OAI22D1 U26 ( .A1(n52), .A2(n4), .B1(n29), .B2(n3), .ZN(x0[11]) );
  OAI22D1 U27 ( .A1(n52), .A2(n3), .B1(n29), .B2(n2), .ZN(x0[12]) );
  ND3D1 U29 ( .A1(n27), .A2(n19), .A3(n25), .ZN(x1[13]) );
  NR3D0 U30 ( .A1(fraction_y[8]), .A2(fraction_y[9]), .A3(n21), .ZN(n47) );
  INVD1 U32 ( .I(quotient[14]), .ZN(shift) );
  INVD1 U33 ( .I(fraction_y[7]), .ZN(n21) );
  OAI211D1 U35 ( .A1(n13), .A2(n7), .B(n42), .C(n43), .ZN(x1[4]) );
  OAI222D0 U36 ( .A1(fraction_y[2]), .A2(n19), .B1(fraction_y[0]), .B2(n25), 
        .C1(fraction_y[1]), .C2(n15), .ZN(x2[4]) );
  AOI22D1 U37 ( .A1(n33), .A2(n9), .B1(fraction_y[3]), .B2(n26), .ZN(n42) );
  OAI211D1 U38 ( .A1(n13), .A2(n6), .B(n40), .C(n41), .ZN(x1[5]) );
  OAI222D0 U39 ( .A1(fraction_y[3]), .A2(n19), .B1(fraction_y[1]), .B2(n25), 
        .C1(fraction_y[2]), .C2(n15), .ZN(x2[5]) );
  AOI22D1 U40 ( .A1(n33), .A2(n8), .B1(fraction_y[4]), .B2(n26), .ZN(n40) );
  OAI211D1 U41 ( .A1(n13), .A2(n5), .B(n38), .C(n39), .ZN(x1[6]) );
  OAI222D0 U42 ( .A1(fraction_y[4]), .A2(n19), .B1(fraction_y[2]), .B2(n25), 
        .C1(fraction_y[3]), .C2(n15), .ZN(x2[6]) );
  AOI22D1 U43 ( .A1(n33), .A2(n7), .B1(fraction_y[5]), .B2(n26), .ZN(n38) );
  OAI211D1 U44 ( .A1(n13), .A2(n4), .B(n36), .C(n37), .ZN(x1[7]) );
  OAI222D0 U45 ( .A1(fraction_y[5]), .A2(n19), .B1(fraction_y[3]), .B2(n25), 
        .C1(fraction_y[4]), .C2(n15), .ZN(x2[7]) );
  AOI22D1 U47 ( .A1(n33), .A2(n6), .B1(fraction_y[6]), .B2(n26), .ZN(n36) );
  IND2D1 U48 ( .A1(n34), .B1(n35), .ZN(x1[8]) );
  OAI222D0 U49 ( .A1(fraction_y[6]), .A2(n19), .B1(fraction_y[4]), .B2(n25), 
        .C1(fraction_y[5]), .C2(n15), .ZN(x2[8]) );
  AOI221D0 U50 ( .A1(fraction_x[8]), .A2(n32), .B1(n33), .B2(n5), .C(n26), 
        .ZN(n35) );
  ND2D1 U51 ( .A1(n44), .A2(n45), .ZN(x1[3]) );
  OAI221D0 U52 ( .A1(fraction_y[1]), .A2(n19), .B1(fraction_y[0]), .B2(n15), 
        .C(n25), .ZN(x2[3]) );
  AOI221D0 U53 ( .A1(fraction_y[2]), .A2(n26), .B1(n33), .B2(n10), .C(n46), 
        .ZN(n45) );
  IND2D1 U54 ( .A1(n30), .B1(n31), .ZN(x1[9]) );
  OAI221D0 U55 ( .A1(fraction_y[5]), .A2(n25), .B1(fraction_y[6]), .B2(n15), 
        .C(n19), .ZN(x2[9]) );
  AOI221D0 U56 ( .A1(fraction_x[9]), .A2(n32), .B1(n33), .B2(n4), .C(n26), 
        .ZN(n31) );
  OAI221D0 U57 ( .A1(fraction_y[6]), .A2(n19), .B1(n2), .B2(n16), .C(n53), 
        .ZN(x1[10]) );
  OAI221D0 U58 ( .A1(fraction_y[6]), .A2(n25), .B1(fraction_y[7]), .B2(n15), 
        .C(n19), .ZN(x2[10]) );
  AOI221D0 U59 ( .A1(n47), .A2(n2), .B1(n33), .B2(n3), .C(n26), .ZN(n53) );
  OAI221D0 U60 ( .A1(fraction_y[7]), .A2(n25), .B1(fraction_y[8]), .B2(n15), 
        .C(n19), .ZN(x2[11]) );
  OAI221D0 U61 ( .A1(fraction_y[8]), .A2(n25), .B1(fraction_y[9]), .B2(n15), 
        .C(n19), .ZN(x2[12]) );
  ND2D1 U62 ( .A1(n48), .A2(n49), .ZN(x1[2]) );
  AOI221D0 U64 ( .A1(fraction_y[1]), .A2(n26), .B1(n33), .B2(n11), .C(n46), 
        .ZN(n49) );
  INVD1 U65 ( .I(fraction_y[8]), .ZN(n20) );
  INVD1 U66 ( .I(fraction_y[9]), .ZN(n17) );
  ND3D1 U67 ( .A1(n21), .A2(n17), .A3(fraction_y[8]), .ZN(n28) );
  NR3D0 U68 ( .A1(fraction_y[8]), .A2(fraction_y[9]), .A3(fraction_y[7]), .ZN(
        n46) );
  AOI221D0 U69 ( .A1(fraction_x[1]), .A2(n32), .B1(n26), .B2(fraction_y[0]), 
        .C(n46), .ZN(n51) );
  ND3D1 U70 ( .A1(fraction_y[8]), .A2(n17), .A3(fraction_y[7]), .ZN(n27) );
  AOI222D0 U71 ( .A1(fraction_x[1]), .A2(x3[9]), .B1(fraction_x[2]), .B2(n32), 
        .C1(n47), .C2(n10), .ZN(n48) );
  NR2D1 U72 ( .A1(n17), .A2(fraction_y[8]), .ZN(x3[9]) );
  AOI222D0 U73 ( .A1(fraction_x[2]), .A2(x3[9]), .B1(fraction_x[3]), .B2(n32), 
        .C1(n47), .C2(n9), .ZN(n44) );
  NR3D0 U74 ( .A1(n17), .A2(fraction_y[8]), .A3(fraction_y[7]), .ZN(x3[7]) );
  OAI22D1 U75 ( .A1(n52), .A2(n8), .B1(n29), .B2(n7), .ZN(x0[7]) );
  INVD1 U76 ( .I(fraction_x[0]), .ZN(n11) );
  INVD1 U77 ( .I(fraction_x[1]), .ZN(n10) );
  INVD1 U78 ( .I(fraction_x[2]), .ZN(n9) );
  OAI222D0 U79 ( .A1(n4), .A2(n16), .B1(n18), .B2(fraction_x[7]), .C1(n19), 
        .C2(fraction_y[4]), .ZN(n34) );
  INVD1 U80 ( .I(fraction_x[3]), .ZN(n8) );
  AO22D0 U81 ( .A1(quotient[14]), .A2(quotient[4]), .B1(quotient[3]), .B2(
        shift), .Z(fraction_out[0]) );
  AO22D0 U82 ( .A1(quotient[14]), .A2(quotient[5]), .B1(shift), .B2(
        quotient[4]), .Z(fraction_out[1]) );
  AO22D0 U83 ( .A1(quotient[14]), .A2(quotient[6]), .B1(shift), .B2(
        quotient[5]), .Z(fraction_out[2]) );
  AO22D0 U84 ( .A1(quotient[14]), .A2(quotient[7]), .B1(shift), .B2(
        quotient[6]), .Z(fraction_out[3]) );
  OAI222D0 U85 ( .A1(n3), .A2(n16), .B1(n18), .B2(fraction_x[8]), .C1(n19), 
        .C2(fraction_y[5]), .ZN(n30) );
  AO22D0 U86 ( .A1(shift), .A2(quotient[7]), .B1(quotient[14]), .B2(
        quotient[8]), .Z(fraction_out[4]) );
  AO22D0 U87 ( .A1(shift), .A2(quotient[8]), .B1(quotient[14]), .B2(
        quotient[9]), .Z(fraction_out[5]) );
  AO22D0 U88 ( .A1(shift), .A2(quotient[9]), .B1(quotient[14]), .B2(
        quotient[10]), .Z(fraction_out[6]) );
  AO22D0 U89 ( .A1(shift), .A2(quotient[10]), .B1(quotient[14]), .B2(
        quotient[11]), .Z(fraction_out[7]) );
  AO22D0 U90 ( .A1(shift), .A2(quotient[11]), .B1(quotient[14]), .B2(
        quotient[12]), .Z(fraction_out[8]) );
  AO22D0 U91 ( .A1(shift), .A2(quotient[12]), .B1(quotient[13]), .B2(
        quotient[14]), .Z(fraction_out[9]) );
  INVD1 U92 ( .I(fraction_x[4]), .ZN(n7) );
  INVD1 U93 ( .I(fraction_x[5]), .ZN(n6) );
  INVD1 U94 ( .I(fraction_x[6]), .ZN(n5) );
  INVD1 U95 ( .I(fraction_x[7]), .ZN(n4) );
  INVD1 U96 ( .I(fraction_x[8]), .ZN(n3) );
  INVD1 U97 ( .I(fraction_x[9]), .ZN(n2) );
  ND2D1 U99 ( .A1(n50), .A2(n51), .ZN(x1[1]) );
  AOI221D0 U100 ( .A1(n47), .A2(n11), .B1(fraction_x[0]), .B2(x3[9]), .C(n33), 
        .ZN(n50) );
  OAI22D1 U101 ( .A1(n52), .A2(n11), .B1(n29), .B2(n10), .ZN(x0[4]) );
  OAI22D1 U102 ( .A1(n52), .A2(n10), .B1(n29), .B2(n9), .ZN(x0[5]) );
  NR2D1 U103 ( .A1(n29), .A2(n11), .ZN(x0[3]) );
  OAI22D1 U104 ( .A1(n52), .A2(n9), .B1(n29), .B2(n8), .ZN(x0[6]) );
  CKND2D0 U5 ( .A1(fraction_y[0]), .A2(n22), .ZN(x2[2]) );
  NR2D0 U20 ( .A1(x3[8]), .A2(n26), .ZN(n22) );
  NR3D0 U63 ( .A1(n20), .A2(n21), .A3(n17), .ZN(n26) );
endmodule


module plsad_fp32_paceio_EXACT_MSB_BITS15 ( x, y, out0 );
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
  plsad_mantissa_div_EXACT_MSB_BITS15 core ( .fraction_x(fraction_x), 
        .fraction_y(fraction_y), .fraction_out(fraction_out), .shift(shift) );
endmodule


module plsad_m15_fp32_paceio ( x, y, out0 );
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

  plsad_fp32_paceio_EXACT_MSB_BITS15 impl ( .x({x[31:13], 1'b0, 1'b0, 1'b0, 
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

