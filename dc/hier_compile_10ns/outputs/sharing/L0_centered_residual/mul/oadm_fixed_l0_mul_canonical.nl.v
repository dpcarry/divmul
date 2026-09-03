/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Thu Sep  3 12:26:01 2026
/////////////////////////////////////////////////////////////


module oadm_fixed_plane_centered_LEVEL0_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [28:0] A;
  input [28:0] B;
  output [28:0] DIFF;
  input CI;
  output CO;
  wire   A_24_, A_23_, A_22_, A_21_, A_20_, A_19_, A_18_, A_17_, A_16_, A_15_,
         A_14_, A_13_, A_12_, A_11_, A_10_, A_9_, A_8_, A_7_, A_6_, A_5_, A_4_,
         A_3_, A_0_;
  assign DIFF[24] = A_24_;
  assign A_24_ = A[24];
  assign DIFF[23] = A_23_;
  assign A_23_ = A[23];
  assign DIFF[22] = A_22_;
  assign A_22_ = A[22];
  assign DIFF[21] = A_21_;
  assign A_21_ = A[21];
  assign DIFF[20] = A_20_;
  assign A_20_ = A[20];
  assign DIFF[19] = A_19_;
  assign A_19_ = A[19];
  assign DIFF[18] = A_18_;
  assign A_18_ = A[18];
  assign DIFF[17] = A_17_;
  assign A_17_ = A[17];
  assign DIFF[16] = A_16_;
  assign A_16_ = A[16];
  assign DIFF[15] = A_15_;
  assign A_15_ = A[15];
  assign DIFF[14] = A_14_;
  assign A_14_ = A[14];
  assign DIFF[13] = A_13_;
  assign A_13_ = A[13];
  assign DIFF[12] = A_12_;
  assign A_12_ = A[12];
  assign DIFF[11] = A_11_;
  assign A_11_ = A[11];
  assign DIFF[10] = A_10_;
  assign A_10_ = A[10];
  assign DIFF[9] = A_9_;
  assign A_9_ = A[9];
  assign DIFF[8] = A_8_;
  assign A_8_ = A[8];
  assign DIFF[7] = A_7_;
  assign A_7_ = A[7];
  assign DIFF[6] = A_6_;
  assign A_6_ = A[6];
  assign DIFF[5] = A_5_;
  assign A_5_ = A[5];
  assign DIFF[4] = A_4_;
  assign A_4_ = A[4];
  assign DIFF[3] = A_3_;
  assign A_3_ = A[3];
  assign DIFF[0] = A_0_;
  assign A_0_ = A[0];

  FA1D0 U2_1 ( .A(A[1]), .B(1'b1), .CI(1'b1), .S(DIFF[1]) );
  FA1D0 U2_2 ( .A(A[2]), .B(1'b1), .CI(1'b1), .S(DIFF[2]) );
endmodule


module oadm_fixed_plane_centered_LEVEL0_DW_mult_tc_1 ( a, b, product );
  input [22:0] a;
  input [5:0] b;
  output [28:0] product;
  wire   n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23;

  FA1D0 U4 ( .A(a[21]), .B(a[22]), .CI(n3), .CO(product[26]), .S(product[25])
         );
  FA1D0 U5 ( .A(a[21]), .B(a[20]), .CI(n4), .CO(n3), .S(product[24]) );
  FA1D0 U6 ( .A(a[20]), .B(a[19]), .CI(n5), .CO(n4), .S(product[23]) );
  FA1D0 U7 ( .A(a[19]), .B(a[18]), .CI(n6), .CO(n5), .S(product[22]) );
  FA1D0 U8 ( .A(a[18]), .B(a[17]), .CI(n7), .CO(n6), .S(product[21]) );
  FA1D0 U9 ( .A(a[17]), .B(a[16]), .CI(n8), .CO(n7), .S(product[20]) );
  FA1D0 U10 ( .A(a[16]), .B(a[15]), .CI(n9), .CO(n8), .S(product[19]) );
  FA1D0 U11 ( .A(a[15]), .B(a[14]), .CI(n10), .CO(n9), .S(product[18]) );
  FA1D0 U12 ( .A(a[14]), .B(a[13]), .CI(n11), .CO(n10), .S(product[17]) );
  FA1D0 U13 ( .A(a[13]), .B(a[12]), .CI(n12), .CO(n11), .S(product[16]) );
  FA1D0 U14 ( .A(a[12]), .B(a[11]), .CI(n13), .CO(n12), .S(product[15]) );
  FA1D0 U15 ( .A(a[11]), .B(a[10]), .CI(n14), .CO(n13), .S(product[14]) );
  FA1D0 U16 ( .A(a[10]), .B(a[9]), .CI(n15), .CO(n14), .S(product[13]) );
  FA1D0 U17 ( .A(a[9]), .B(a[8]), .CI(n16), .CO(n15), .S(product[12]) );
  FA1D0 U18 ( .A(a[8]), .B(a[7]), .CI(n17), .CO(n16), .S(product[11]) );
  FA1D0 U19 ( .A(a[7]), .B(a[6]), .CI(n18), .CO(n17), .S(product[10]) );
  FA1D0 U20 ( .A(a[6]), .B(a[5]), .CI(n19), .CO(n18), .S(product[9]) );
  FA1D0 U21 ( .A(a[5]), .B(a[4]), .CI(n20), .CO(n19), .S(product[8]) );
  FA1D0 U22 ( .A(a[4]), .B(a[3]), .CI(n21), .CO(n20), .S(product[7]) );
  FA1D0 U23 ( .A(a[3]), .B(a[2]), .CI(n22), .CO(n21), .S(product[6]) );
  FA1D0 U24 ( .A(a[2]), .B(a[1]), .CI(n23), .CO(n22), .S(product[5]) );
  HA1D0 U25 ( .A(a[1]), .B(a[0]), .CO(n23), .S(product[4]) );
  CKBD1 U31 ( .I(a[22]), .Z(product[27]) );
  CKBD1 U32 ( .I(a[22]), .Z(product[28]) );
endmodule


module oadm_fixed_plane_centered_LEVEL0_DW01_add_1_DW01_add_2 ( A, B, CI, SUM, 
        CO );
  input [27:0] A;
  input [27:0] B;
  output [27:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [27:2] carry;

  FA1D0 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  FA1D0 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA1D0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1D0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1D0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1D0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA1D0 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA1D0 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FA1D0 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  FA1D0 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FA1D0 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FA1D0 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  FA1D0 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  FA1D0 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  FA1D0 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  FA1D0 U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  FA1D0 U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  FA1D0 U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  FA1D0 U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  FA1D0 U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  FA1D0 U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  FA1D0 U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  FA1D0 U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  XOR3D1 U1_27 ( .A1(A[27]), .A2(B[27]), .A3(carry[27]), .Z(SUM[27]) );
  FA1D0 U1_25 ( .A(A[25]), .B(B[25]), .CI(carry[25]), .CO(carry[26]), .S(
        SUM[25]) );
  FA1D0 U1_26 ( .A(A[26]), .B(B[26]), .CI(carry[26]), .CO(carry[27]), .S(
        SUM[26]) );
  FA1D0 U1_24 ( .A(A[24]), .B(B[24]), .CI(carry[24]), .CO(carry[25]), .S(
        SUM[24]) );
  AN2XD1 U1 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
  CKXOR2D1 U2 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
endmodule


module oadm_fixed_plane_centered_LEVEL0_DW_mult_tc_0 ( a, b, product );
  input [22:0] a;
  input [5:0] b;
  output [28:0] product;
  wire   n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23;

  FA1D0 U4 ( .A(a[21]), .B(a[22]), .CI(n3), .CO(product[26]), .S(product[25])
         );
  FA1D0 U5 ( .A(a[21]), .B(a[20]), .CI(n4), .CO(n3), .S(product[24]) );
  FA1D0 U6 ( .A(a[20]), .B(a[19]), .CI(n5), .CO(n4), .S(product[23]) );
  FA1D0 U7 ( .A(a[19]), .B(a[18]), .CI(n6), .CO(n5), .S(product[22]) );
  FA1D0 U8 ( .A(a[18]), .B(a[17]), .CI(n7), .CO(n6), .S(product[21]) );
  FA1D0 U9 ( .A(a[17]), .B(a[16]), .CI(n8), .CO(n7), .S(product[20]) );
  FA1D0 U10 ( .A(a[16]), .B(a[15]), .CI(n9), .CO(n8), .S(product[19]) );
  FA1D0 U11 ( .A(a[15]), .B(a[14]), .CI(n10), .CO(n9), .S(product[18]) );
  FA1D0 U12 ( .A(a[14]), .B(a[13]), .CI(n11), .CO(n10), .S(product[17]) );
  FA1D0 U13 ( .A(a[13]), .B(a[12]), .CI(n12), .CO(n11), .S(product[16]) );
  FA1D0 U14 ( .A(a[12]), .B(a[11]), .CI(n13), .CO(n12), .S(product[15]) );
  FA1D0 U15 ( .A(a[11]), .B(a[10]), .CI(n14), .CO(n13), .S(product[14]) );
  FA1D0 U16 ( .A(a[10]), .B(a[9]), .CI(n15), .CO(n14), .S(product[13]) );
  FA1D0 U17 ( .A(a[9]), .B(a[8]), .CI(n16), .CO(n15), .S(product[12]) );
  FA1D0 U18 ( .A(a[8]), .B(a[7]), .CI(n17), .CO(n16), .S(product[11]) );
  FA1D0 U19 ( .A(a[7]), .B(a[6]), .CI(n18), .CO(n17), .S(product[10]) );
  FA1D0 U20 ( .A(a[6]), .B(a[5]), .CI(n19), .CO(n18), .S(product[9]) );
  FA1D0 U21 ( .A(a[5]), .B(a[4]), .CI(n20), .CO(n19), .S(product[8]) );
  FA1D0 U22 ( .A(a[4]), .B(a[3]), .CI(n21), .CO(n20), .S(product[7]) );
  FA1D0 U23 ( .A(a[3]), .B(a[2]), .CI(n22), .CO(n21), .S(product[6]) );
  FA1D0 U24 ( .A(a[2]), .B(a[1]), .CI(n23), .CO(n22), .S(product[5]) );
  HA1D0 U25 ( .A(a[1]), .B(a[0]), .CO(n23), .S(product[4]) );
  CKBD1 U31 ( .I(a[22]), .Z(product[27]) );
  CKBD1 U32 ( .I(a[22]), .Z(product[28]) );
endmodule


module oadm_fixed_plane_centered_LEVEL0 ( x_mantissa, y_mantissa, divide_mode, 
        plane_exact );
  input [23:0] x_mantissa;
  input [23:0] y_mantissa;
  output [28:0] plane_exact;
  input divide_mode;
  wire   x_residual_wide_22_, y_residual_wide_22_, N5, N6, N7, N8, N9, N10,
         N11, N12, N13, N14, N15, N16, N17, N18, N19, N20, N21, N22, N23, N24,
         N25, N26, N27, N28, N29, N30, N31, y_residual_product_9_,
         y_residual_product_8_, y_residual_product_7_, y_residual_product_6_,
         y_residual_product_5_, y_residual_product_4_, y_residual_product_28_,
         y_residual_product_27_, y_residual_product_26_,
         y_residual_product_25_, y_residual_product_24_,
         y_residual_product_23_, y_residual_product_22_,
         y_residual_product_21_, y_residual_product_20_,
         y_residual_product_19_, y_residual_product_18_,
         y_residual_product_17_, y_residual_product_16_,
         y_residual_product_15_, y_residual_product_14_,
         y_residual_product_13_, y_residual_product_12_,
         y_residual_product_11_, y_residual_product_10_,
         x_residual_product_28_, x_residual_product_27_,
         x_residual_product_26_, x_residual_product_25_, r399_carry_25_, n1,
         n2, n80, n90;
  wire   [28:0] centered_plane;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11;

  oadm_fixed_plane_centered_LEVEL0_DW01_sub_0 sub_70 ( .A({centered_plane[28], 
        centered_plane[28], centered_plane[26:0]}), .B({n90, n90, n90, n90, 
        n90, n90, n90, n90, n90, n90, n90, n90, n90, n90, n90, n90, n90, n90, 
        n90, n90, n90, n90, n90, n90, n90, n90, 1'b0, 1'b0, 1'b0}), .CI(n90), 
        .DIFF({SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, plane_exact[24:0]})
         );
  oadm_fixed_plane_centered_LEVEL0_DW_mult_tc_1 mult_33 ( .a({
        y_residual_wide_22_, y_mantissa[21:0]}), .b({n90, n80, n80, n90, n90, 
        n90}), .product({y_residual_product_28_, y_residual_product_27_, 
        y_residual_product_26_, y_residual_product_25_, y_residual_product_24_, 
        y_residual_product_23_, y_residual_product_22_, y_residual_product_21_, 
        y_residual_product_20_, y_residual_product_19_, y_residual_product_18_, 
        y_residual_product_17_, y_residual_product_16_, y_residual_product_15_, 
        y_residual_product_14_, y_residual_product_13_, y_residual_product_12_, 
        y_residual_product_11_, y_residual_product_10_, y_residual_product_9_, 
        y_residual_product_8_, y_residual_product_7_, y_residual_product_6_, 
        y_residual_product_5_, y_residual_product_4_, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7}) );
  oadm_fixed_plane_centered_LEVEL0_DW01_add_1_DW01_add_2 add_0_root_add_67_3 ( 
        .A({y_residual_product_28_, y_residual_product_28_, 
        y_residual_product_28_, y_residual_product_28_, y_residual_product_27_, 
        y_residual_product_26_, y_residual_product_25_, y_residual_product_24_, 
        y_residual_product_23_, y_residual_product_22_, y_residual_product_21_, 
        y_residual_product_20_, y_residual_product_19_, y_residual_product_18_, 
        y_residual_product_17_, y_residual_product_16_, y_residual_product_15_, 
        y_residual_product_14_, y_residual_product_13_, y_residual_product_12_, 
        y_residual_product_11_, y_residual_product_10_, y_residual_product_9_, 
        y_residual_product_8_, y_residual_product_7_, y_residual_product_6_, 
        y_residual_product_5_, y_residual_product_4_}), .B({N31, N31, N30, N29, 
        N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, 
        N14, N13, N12, N11, N10, N9, N8, N7, N6, N5}), .CI(n90), .SUM({
        centered_plane[28], centered_plane[26:0]}) );
  oadm_fixed_plane_centered_LEVEL0_DW_mult_tc_0 mult_31 ( .a({
        x_residual_wide_22_, x_mantissa[21:0]}), .b({n90, n80, n80, n90, n90, 
        n90}), .product({x_residual_product_28_, x_residual_product_27_, 
        x_residual_product_26_, x_residual_product_25_, N25, N24, N23, N22, 
        N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, 
        N6, N5, SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11}) );
  INVD1 U8 ( .I(x_residual_product_25_), .ZN(N26) );
  AN2XD1 U9 ( .A1(x_residual_product_25_), .A2(x_residual_product_26_), .Z(n2)
         );
  INVD1 U13 ( .I(x_mantissa[22]), .ZN(x_residual_wide_22_) );
  INVD1 U15 ( .I(y_mantissa[22]), .ZN(y_residual_wide_22_) );
  TIEL U50 ( .ZN(n90) );
  TIEH U51 ( .Z(n80) );
  XNR2D1 U52 ( .A1(n1), .A2(x_residual_product_28_), .ZN(N29) );
  CKXOR2D1 U53 ( .A1(x_residual_product_25_), .A2(x_residual_product_26_), .Z(
        N27) );
  CKXOR2D1 U54 ( .A1(n2), .A2(x_residual_product_27_), .Z(N28) );
  CKXOR2D1 U55 ( .A1(r399_carry_25_), .A2(x_residual_product_28_), .Z(N30) );
  INR2D0 U3 ( .A1(x_residual_product_28_), .B1(r399_carry_25_), .ZN(N31) );
  OR2D0 U4 ( .A1(x_residual_product_28_), .A2(n1), .Z(r399_carry_25_) );
  AN2D0 U5 ( .A1(x_residual_product_27_), .A2(n2), .Z(n1) );
endmodule


module fp32_normal_finite_wrapper_DW01_add_3_DW01_add_6 ( A, B, CI, SUM, CO );
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
  fp32_normal_finite_wrapper_DW01_add_3_DW01_add_6 add_1_root_add_0_root_add_25_2 ( 
        .A(x[30:23]), .B({N42, N41, N40, N39, N38, N37, N36, N35}), .CI(n79), 
        .SUM({N34, N33, N32, N31, N30, N29, N28, N27}) );
  AN2XD1 U3 ( .A1(exponent_adjust[0]), .A2(N27), .Z(n1) );
  FA1D0 U6 ( .A(N28), .B(exponent_adjust[1]), .CI(n1), .CO(
        add_0_root_add_0_root_add_25_2_carry[2]), .S(result[24]) );
  FA1D0 U7 ( .A(N29), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[2]), .CO(
        add_0_root_add_0_root_add_25_2_carry[3]), .S(result[25]) );
  FA1D0 U8 ( .A(N30), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[3]), .CO(
        add_0_root_add_0_root_add_25_2_carry[4]), .S(result[26]) );
  FA1D0 U9 ( .A(N31), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[4]), .CO(
        add_0_root_add_0_root_add_25_2_carry[5]), .S(result[27]) );
  FA1D0 U10 ( .A(N32), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[5]), .CO(
        add_0_root_add_0_root_add_25_2_carry[6]), .S(result[28]) );
  FA1D0 U11 ( .A(N33), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[6]), .CO(
        add_0_root_add_0_root_add_25_2_carry[7]), .S(result[29]) );
  CKBD1 U12 ( .I(result_fraction[22]), .Z(result[22]) );
  CKBD1 U13 ( .I(result_fraction[21]), .Z(result[21]) );
  CKBD1 U14 ( .I(result_fraction[12]), .Z(result[12]) );
  CKBD1 U15 ( .I(result_fraction[10]), .Z(result[10]) );
  CKBD1 U16 ( .I(result_fraction[3]), .Z(result[3]) );
  CKBD1 U17 ( .I(result_fraction[4]), .Z(result[4]) );
  CKBD1 U18 ( .I(result_fraction[6]), .Z(result[6]) );
  CKBD1 U19 ( .I(result_fraction[7]), .Z(result[7]) );
  CKBD1 U20 ( .I(result_fraction[8]), .Z(result[8]) );
  CKBD1 U21 ( .I(result_fraction[9]), .Z(result[9]) );
  CKBD1 U22 ( .I(result_fraction[11]), .Z(result[11]) );
  CKBD1 U23 ( .I(result_fraction[14]), .Z(result[14]) );
  CKBD1 U24 ( .I(result_fraction[15]), .Z(result[15]) );
  CKBD1 U25 ( .I(result_fraction[17]), .Z(result[17]) );
  CKBD1 U26 ( .I(result_fraction[18]), .Z(result[18]) );
  CKBD1 U27 ( .I(result_fraction[19]), .Z(result[19]) );
  CKBD1 U28 ( .I(result_fraction[13]), .Z(result[13]) );
  CKBD1 U29 ( .I(result_fraction[16]), .Z(result[16]) );
  CKBD1 U30 ( .I(result_fraction[5]), .Z(result[5]) );
  CKBD1 U31 ( .I(result_fraction[20]), .Z(result[20]) );
  CKBD1 U32 ( .I(result_fraction[2]), .Z(result[2]) );
  CKBD1 U33 ( .I(result_fraction[1]), .Z(result[1]) );
  CKBD1 U34 ( .I(result_fraction[0]), .Z(result[0]) );
  XOR3D1 U43 ( .A1(N34), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_25_2_carry[7]), .Z(result[30]) );
  CKBD1 U44 ( .I(x[0]), .Z(fraction_x[0]) );
  CKBD1 U45 ( .I(y[0]), .Z(fraction_y[0]) );
  CKBD1 U47 ( .I(y[2]), .Z(fraction_y[2]) );
  CKBD1 U48 ( .I(y[1]), .Z(fraction_y[1]) );
  CKBD1 U50 ( .I(y[3]), .Z(fraction_y[3]) );
  CKBD1 U52 ( .I(y[4]), .Z(fraction_y[4]) );
  CKBD1 U55 ( .I(y[5]), .Z(fraction_y[5]) );
  CKBD1 U57 ( .I(y[6]), .Z(fraction_y[6]) );
  CKBD1 U58 ( .I(y[7]), .Z(fraction_y[7]) );
  CKBD1 U60 ( .I(y[8]), .Z(fraction_y[8]) );
  CKBD1 U61 ( .I(y[9]), .Z(fraction_y[9]) );
  CKBD1 U62 ( .I(y[10]), .Z(fraction_y[10]) );
  CKBD1 U63 ( .I(y[11]), .Z(fraction_y[11]) );
  CKBD1 U64 ( .I(y[12]), .Z(fraction_y[12]) );
  CKBD1 U65 ( .I(y[13]), .Z(fraction_y[13]) );
  CKBD1 U66 ( .I(y[14]), .Z(fraction_y[14]) );
  CKBD1 U67 ( .I(y[15]), .Z(fraction_y[15]) );
  CKBD1 U68 ( .I(y[16]), .Z(fraction_y[16]) );
  CKBD1 U69 ( .I(y[17]), .Z(fraction_y[17]) );
  CKBD1 U70 ( .I(y[18]), .Z(fraction_y[18]) );
  CKBD1 U71 ( .I(y[19]), .Z(fraction_y[19]) );
  CKBD1 U72 ( .I(x[22]), .Z(fraction_x[22]) );
  CKBD1 U73 ( .I(y[22]), .Z(fraction_y[22]) );
  AN2XD1 U74 ( .A1(y[23]), .A2(y[24]), .Z(n4) );
  AN2XD1 U75 ( .A1(n4), .A2(y[25]), .Z(n5) );
  AN2XD1 U76 ( .A1(n5), .A2(y[26]), .Z(n6) );
  AN2XD1 U77 ( .A1(n6), .A2(y[27]), .Z(n7) );
  AN2XD1 U78 ( .A1(n7), .A2(y[28]), .Z(n8) );
  CKBD1 U86 ( .I(x[21]), .Z(fraction_x[21]) );
  CKBD1 U87 ( .I(x[20]), .Z(fraction_x[20]) );
  CKBD1 U88 ( .I(x[19]), .Z(fraction_x[19]) );
  CKBD1 U89 ( .I(x[18]), .Z(fraction_x[18]) );
  CKBD1 U90 ( .I(x[17]), .Z(fraction_x[17]) );
  CKBD1 U91 ( .I(x[16]), .Z(fraction_x[16]) );
  CKBD1 U92 ( .I(x[15]), .Z(fraction_x[15]) );
  CKBD1 U93 ( .I(x[14]), .Z(fraction_x[14]) );
  CKBD1 U94 ( .I(x[13]), .Z(fraction_x[13]) );
  CKBD1 U95 ( .I(x[12]), .Z(fraction_x[12]) );
  CKBD1 U96 ( .I(x[11]), .Z(fraction_x[11]) );
  CKBD1 U97 ( .I(x[10]), .Z(fraction_x[10]) );
  CKBD1 U98 ( .I(x[9]), .Z(fraction_x[9]) );
  CKBD1 U99 ( .I(x[8]), .Z(fraction_x[8]) );
  CKBD1 U100 ( .I(x[7]), .Z(fraction_x[7]) );
  CKBD1 U101 ( .I(x[6]), .Z(fraction_x[6]) );
  CKBD1 U102 ( .I(x[5]), .Z(fraction_x[5]) );
  CKBD1 U103 ( .I(x[4]), .Z(fraction_x[4]) );
  CKBD1 U104 ( .I(x[3]), .Z(fraction_x[3]) );
  CKBD1 U105 ( .I(x[2]), .Z(fraction_x[2]) );
  CKBD1 U106 ( .I(x[1]), .Z(fraction_x[1]) );
  CKBD1 U107 ( .I(y[21]), .Z(fraction_y[21]) );
  CKBD1 U108 ( .I(y[20]), .Z(fraction_y[20]) );
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


module oadm_multilevel_opt_FIXED_LEVEL0 ( x, y, level, divide_mode, result );
  input [31:0] x;
  input [31:0] y;
  input [1:0] level;
  output [31:0] result;
  input divide_mode;
  wire   n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n1, n53, n54, n55;
  wire   [22:0] x_mantissa;
  wire   [22:0] y_mantissa;
  wire   [24:0] plane_full;
  wire   [22:0] normalized_fraction;
  wire   [2:0] exponent_adjust;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3;

  oadm_fixed_plane_centered_LEVEL0 fixed_centered_plane_plane ( .x_mantissa({
        1'b0, x_mantissa}), .y_mantissa({1'b0, y_mantissa}), .divide_mode(1'b0), .plane_exact({SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, plane_full}) );
  fp32_normal_finite_wrapper fp_wrapper ( .x(x), .y(y), .divide_mode(1'b0), 
        .fraction_x(x_mantissa), .fraction_y(y_mantissa), .result_fraction(
        normalized_fraction), .exponent_adjust({exponent_adjust[2], 
        exponent_adjust[2], exponent_adjust[0]}), .result(result) );
  ND2D1 U3 ( .A1(n11), .A2(n1), .ZN(exponent_adjust[2]) );
  ND2D1 U4 ( .A1(n6), .A2(n11), .ZN(exponent_adjust[0]) );
  ND3D1 U6 ( .A1(n28), .A2(n27), .A3(n6), .ZN(n1) );
  OAI221D0 U7 ( .A1(n27), .A2(n54), .B1(n6), .B2(n28), .C(n29), .ZN(
        normalized_fraction[22]) );
  OA22D0 U8 ( .A1(n53), .A2(n30), .B1(n11), .B2(n31), .Z(n29) );
  OAI221D0 U9 ( .A1(n31), .A2(n5), .B1(n6), .B2(n27), .C(n32), .ZN(
        normalized_fraction[21]) );
  OA22D0 U10 ( .A1(n1), .A2(n33), .B1(n11), .B2(n30), .Z(n32) );
  OAI221D0 U11 ( .A1(n47), .A2(n5), .B1(n6), .B2(n45), .C(n50), .ZN(
        normalized_fraction[12]) );
  OA22D0 U12 ( .A1(n9), .A2(n7), .B1(n11), .B2(n49), .Z(n50) );
  OAI221D0 U13 ( .A1(n7), .A2(n54), .B1(n6), .B2(n49), .C(n52), .ZN(
        normalized_fraction[10]) );
  OA22D0 U14 ( .A1(n53), .A2(n12), .B1(n11), .B2(n4), .Z(n52) );
  OAI221D0 U15 ( .A1(n20), .A2(n5), .B1(n6), .B2(n18), .C(n23), .ZN(
        normalized_fraction[3]) );
  OA22D0 U16 ( .A1(n9), .A2(n24), .B1(n11), .B2(n22), .Z(n23) );
  OAI221D0 U17 ( .A1(n18), .A2(n54), .B1(n6), .B2(n16), .C(n21), .ZN(
        normalized_fraction[4]) );
  OA22D0 U18 ( .A1(n1), .A2(n22), .B1(n11), .B2(n20), .Z(n21) );
  OAI221D0 U19 ( .A1(n14), .A2(n5), .B1(n6), .B2(n10), .C(n17), .ZN(
        normalized_fraction[6]) );
  OA22D0 U20 ( .A1(n9), .A2(n18), .B1(n11), .B2(n16), .Z(n17) );
  OAI221D0 U21 ( .A1(n10), .A2(n54), .B1(n6), .B2(n12), .C(n15), .ZN(
        normalized_fraction[7]) );
  OA22D0 U22 ( .A1(n1), .A2(n16), .B1(n11), .B2(n14), .Z(n15) );
  OAI221D0 U23 ( .A1(n12), .A2(n55), .B1(n6), .B2(n4), .C(n13), .ZN(
        normalized_fraction[8]) );
  OA22D0 U24 ( .A1(n53), .A2(n14), .B1(n11), .B2(n10), .Z(n13) );
  OAI221D0 U25 ( .A1(n4), .A2(n5), .B1(n6), .B2(n7), .C(n8), .ZN(
        normalized_fraction[9]) );
  OA22D0 U26 ( .A1(n9), .A2(n10), .B1(n11), .B2(n12), .Z(n8) );
  OAI221D0 U27 ( .A1(n49), .A2(n5), .B1(n6), .B2(n47), .C(n51), .ZN(
        normalized_fraction[11]) );
  OA22D0 U28 ( .A1(n9), .A2(n4), .B1(n11), .B2(n7), .Z(n51) );
  OAI221D0 U29 ( .A1(n43), .A2(n55), .B1(n6), .B2(n41), .C(n46), .ZN(
        normalized_fraction[14]) );
  OA22D0 U30 ( .A1(n9), .A2(n47), .B1(n11), .B2(n45), .Z(n46) );
  OAI221D0 U31 ( .A1(n41), .A2(n5), .B1(n6), .B2(n39), .C(n44), .ZN(
        normalized_fraction[15]) );
  OA22D0 U32 ( .A1(n1), .A2(n45), .B1(n11), .B2(n43), .Z(n44) );
  OAI221D0 U33 ( .A1(n37), .A2(n55), .B1(n6), .B2(n35), .C(n40), .ZN(
        normalized_fraction[17]) );
  OA22D0 U34 ( .A1(n9), .A2(n41), .B1(n11), .B2(n39), .Z(n40) );
  OAI221D0 U35 ( .A1(n35), .A2(n5), .B1(n6), .B2(n33), .C(n38), .ZN(
        normalized_fraction[18]) );
  OA22D0 U36 ( .A1(n1), .A2(n39), .B1(n11), .B2(n37), .Z(n38) );
  OAI221D0 U37 ( .A1(n33), .A2(n54), .B1(n6), .B2(n30), .C(n36), .ZN(
        normalized_fraction[19]) );
  OA22D0 U38 ( .A1(n53), .A2(n37), .B1(n11), .B2(n35), .Z(n36) );
  OAI221D0 U39 ( .A1(n45), .A2(n54), .B1(n6), .B2(n43), .C(n48), .ZN(
        normalized_fraction[13]) );
  OA22D0 U40 ( .A1(n53), .A2(n49), .B1(n11), .B2(n47), .Z(n48) );
  OAI221D0 U41 ( .A1(n39), .A2(n54), .B1(n6), .B2(n37), .C(n42), .ZN(
        normalized_fraction[16]) );
  OA22D0 U42 ( .A1(n53), .A2(n43), .B1(n11), .B2(n41), .Z(n42) );
  OAI221D0 U43 ( .A1(n16), .A2(n55), .B1(n6), .B2(n14), .C(n19), .ZN(
        normalized_fraction[5]) );
  OA22D0 U44 ( .A1(n53), .A2(n20), .B1(n11), .B2(n18), .Z(n19) );
  OAI221D0 U45 ( .A1(n30), .A2(n55), .B1(n6), .B2(n31), .C(n34), .ZN(
        normalized_fraction[20]) );
  OA22D0 U46 ( .A1(n9), .A2(n35), .B1(n11), .B2(n33), .Z(n34) );
  OAI221D0 U47 ( .A1(n22), .A2(n55), .B1(n6), .B2(n20), .C(n25), .ZN(
        normalized_fraction[2]) );
  OA22D0 U48 ( .A1(n11), .A2(n24), .B1(n53), .B2(n26), .Z(n25) );
  ND3D1 U49 ( .A1(n28), .A2(n27), .A3(n6), .ZN(n53) );
  ND3D1 U50 ( .A1(n28), .A2(n27), .A3(n6), .ZN(n9) );
  OAI222D0 U51 ( .A1(n24), .A2(n54), .B1(n26), .B2(n11), .C1(n6), .C2(n22), 
        .ZN(normalized_fraction[1]) );
  OAI22D1 U55 ( .A1(n6), .A2(n24), .B1(n26), .B2(n55), .ZN(
        normalized_fraction[0]) );
  CKND2D0 U5 ( .A1(plane_full[23]), .A2(n6), .ZN(n54) );
  CKND2D0 U52 ( .A1(plane_full[23]), .A2(n6), .ZN(n5) );
  CKND2D0 U53 ( .A1(plane_full[23]), .A2(n6), .ZN(n55) );
  ND3D1 U54 ( .A1(plane_full[22]), .A2(n28), .A3(n6), .ZN(n11) );
  INVD1 U56 ( .I(plane_full[24]), .ZN(n6) );
  CKND1 U57 ( .I(plane_full[2]), .ZN(n22) );
  CKND1 U58 ( .I(plane_full[1]), .ZN(n24) );
  CKND1 U59 ( .I(plane_full[3]), .ZN(n20) );
  CKND1 U60 ( .I(plane_full[4]), .ZN(n18) );
  CKND1 U61 ( .I(plane_full[5]), .ZN(n16) );
  CKND1 U62 ( .I(plane_full[6]), .ZN(n14) );
  CKND1 U63 ( .I(plane_full[7]), .ZN(n10) );
  CKND1 U64 ( .I(plane_full[8]), .ZN(n12) );
  CKND1 U65 ( .I(plane_full[9]), .ZN(n4) );
  CKND1 U66 ( .I(plane_full[10]), .ZN(n7) );
  CKND1 U67 ( .I(plane_full[11]), .ZN(n49) );
  CKND1 U68 ( .I(plane_full[12]), .ZN(n47) );
  CKND1 U69 ( .I(plane_full[13]), .ZN(n45) );
  CKND1 U70 ( .I(plane_full[14]), .ZN(n43) );
  CKND1 U71 ( .I(plane_full[15]), .ZN(n41) );
  CKND1 U72 ( .I(plane_full[16]), .ZN(n39) );
  CKND1 U73 ( .I(plane_full[17]), .ZN(n37) );
  CKND1 U74 ( .I(plane_full[18]), .ZN(n35) );
  CKND1 U75 ( .I(plane_full[19]), .ZN(n33) );
  CKND1 U76 ( .I(plane_full[20]), .ZN(n30) );
  CKND1 U77 ( .I(plane_full[21]), .ZN(n31) );
  INVD1 U78 ( .I(plane_full[0]), .ZN(n26) );
  INVD1 U79 ( .I(plane_full[23]), .ZN(n28) );
  INVD1 U80 ( .I(plane_full[22]), .ZN(n27) );
endmodule


module oadm_fixed_l0_opt ( x, y, divide_mode, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  input divide_mode;


  oadm_multilevel_opt_FIXED_LEVEL0 impl ( .x(x), .y(y), .level({1'b0, 1'b0}), 
        .divide_mode(1'b0), .result(result) );
endmodule


module oadm_fixed_l0_mul_canonical ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;


  oadm_fixed_l0_opt impl ( .x(x), .y(y), .divide_mode(1'b0), .result(result)
         );
endmodule

