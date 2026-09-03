/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Thu Sep  3 12:25:04 2026
/////////////////////////////////////////////////////////////


module oadm_fixed_plane_centered_LEVEL0_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [28:0] A;
  input [28:0] B;
  output [28:0] DIFF;
  input CI;
  output CO;
  wire   A_26_, A_25_, A_24_, A_23_, A_22_, A_21_, A_20_, A_19_, A_18_, A_17_,
         A_16_, A_15_, A_14_, A_13_, A_12_, A_11_, A_10_, A_9_, A_8_, A_7_,
         A_6_, A_5_, A_4_, A_3_, A_0_;
  assign DIFF[26] = A_26_;
  assign A_26_ = A[26];
  assign DIFF[25] = A_25_;
  assign A_25_ = A[25];
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

  FA1D0 U2_2 ( .A(A[2]), .B(1'b1), .CI(1'b1), .S(DIFF[2]) );
  FA1D0 U2_1 ( .A(A[1]), .B(1'b1), .CI(1'b1), .S(DIFF[1]) );
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
  CKBD1 U31 ( .I(a[22]), .Z(product[28]) );
  CKBD1 U32 ( .I(a[22]), .Z(product[27]) );
endmodule


module oadm_fixed_plane_centered_LEVEL0_DW01_sub_3 ( A, B, CI, DIFF, CO );
  input [27:0] A;
  input [27:0] B;
  output [27:0] DIFF;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n25;
  wire   [27:1] carry;

  FA1D0 U2_5 ( .A(A[5]), .B(n19), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  FA1D0 U2_18 ( .A(A[18]), .B(n6), .CI(carry[18]), .CO(carry[19]), .S(DIFF[18]) );
  FA1D0 U2_15 ( .A(A[15]), .B(n9), .CI(carry[15]), .CO(carry[16]), .S(DIFF[15]) );
  FA1D0 U2_14 ( .A(A[14]), .B(n10), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  FA1D0 U2_19 ( .A(A[19]), .B(n5), .CI(carry[19]), .CO(carry[20]), .S(DIFF[19]) );
  FA1D0 U2_13 ( .A(A[13]), .B(n11), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  FA1D0 U2_16 ( .A(A[16]), .B(n8), .CI(carry[16]), .CO(carry[17]), .S(DIFF[16]) );
  FA1D0 U2_17 ( .A(A[17]), .B(n7), .CI(carry[17]), .CO(carry[18]), .S(DIFF[17]) );
  FA1D0 U2_20 ( .A(A[20]), .B(n4), .CI(carry[20]), .CO(carry[21]), .S(DIFF[20]) );
  FA1D0 U2_12 ( .A(A[12]), .B(n12), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  FA1D0 U2_7 ( .A(A[7]), .B(n17), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  FA1D0 U2_9 ( .A(A[9]), .B(n15), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  FA1D0 U2_8 ( .A(A[8]), .B(n16), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  FA1D0 U2_6 ( .A(A[6]), .B(n18), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  FA1D0 U2_11 ( .A(A[11]), .B(n13), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  FA1D0 U2_10 ( .A(A[10]), .B(n14), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  FA1D0 U2_22 ( .A(A[22]), .B(n2), .CI(carry[22]), .CO(carry[23]), .S(DIFF[22]) );
  FA1D0 U2_21 ( .A(A[21]), .B(n3), .CI(carry[21]), .CO(carry[22]), .S(DIFF[21]) );
  FA1D0 U2_1 ( .A(A[1]), .B(n23), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  FA1D0 U2_2 ( .A(A[2]), .B(n22), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  FA1D0 U2_4 ( .A(A[4]), .B(n20), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FA1D0 U2_3 ( .A(A[3]), .B(n21), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  FA1D0 U2_23 ( .A(A[23]), .B(n25), .CI(carry[23]), .CO(carry[24]), .S(
        DIFF[23]) );
  XOR3D1 U2_27 ( .A1(A[27]), .A2(n25), .A3(carry[27]), .Z(DIFF[27]) );
  FA1D0 U2_26 ( .A(A[26]), .B(n25), .CI(carry[26]), .CO(carry[27]), .S(
        DIFF[26]) );
  FA1D0 U2_25 ( .A(A[25]), .B(n25), .CI(carry[25]), .CO(carry[26]), .S(
        DIFF[25]) );
  FA1D0 U2_24 ( .A(A[24]), .B(n25), .CI(carry[24]), .CO(carry[25]), .S(
        DIFF[24]) );
  INVD1 U1 ( .I(B[27]), .ZN(n25) );
  INVD1 U2 ( .I(B[3]), .ZN(n21) );
  INVD1 U3 ( .I(B[4]), .ZN(n20) );
  INVD1 U4 ( .I(B[2]), .ZN(n22) );
  INVD1 U6 ( .I(B[1]), .ZN(n23) );
  INVD1 U8 ( .I(B[21]), .ZN(n3) );
  INVD1 U9 ( .I(B[22]), .ZN(n2) );
  INVD1 U10 ( .I(B[10]), .ZN(n14) );
  INVD1 U11 ( .I(B[11]), .ZN(n13) );
  INVD1 U12 ( .I(B[6]), .ZN(n18) );
  INVD1 U13 ( .I(B[8]), .ZN(n16) );
  INVD1 U14 ( .I(B[9]), .ZN(n15) );
  INVD1 U15 ( .I(B[7]), .ZN(n17) );
  INVD1 U16 ( .I(B[12]), .ZN(n12) );
  INVD1 U17 ( .I(B[20]), .ZN(n4) );
  INVD1 U18 ( .I(B[17]), .ZN(n7) );
  INVD1 U19 ( .I(B[16]), .ZN(n8) );
  INVD1 U20 ( .I(B[13]), .ZN(n11) );
  INVD1 U21 ( .I(B[19]), .ZN(n5) );
  INVD1 U22 ( .I(B[14]), .ZN(n10) );
  INVD1 U23 ( .I(B[15]), .ZN(n9) );
  INVD1 U24 ( .I(B[18]), .ZN(n6) );
  INVD1 U25 ( .I(B[5]), .ZN(n19) );
  CKXOR2D0 U5 ( .A1(A[0]), .A2(B[0]), .Z(DIFF[0]) );
  IND2D0 U7 ( .A1(A[0]), .B1(B[0]), .ZN(carry[1]) );
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
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9;

  oadm_fixed_plane_centered_LEVEL0_DW01_sub_0 sub_70 ( .A({centered_plane[28], 
        centered_plane[28], centered_plane[26:0]}), .B({n90, n90, n90, n90, 
        n90, n90, n90, n90, n90, n90, n90, n90, n90, n90, n90, n90, n90, n90, 
        n90, n90, n90, n90, n90, n90, n90, n90, 1'b0, 1'b0, 1'b0}), .CI(n90), 
        .DIFF({SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        plane_exact[26:0]}) );
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
        y_residual_product_5_, y_residual_product_4_, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5}) );
  oadm_fixed_plane_centered_LEVEL0_DW01_sub_3 sub_0_root_sub_67 ( .A({N31, N31, 
        N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, 
        N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5}), .B({
        y_residual_product_28_, y_residual_product_28_, y_residual_product_28_, 
        y_residual_product_28_, y_residual_product_27_, y_residual_product_26_, 
        y_residual_product_25_, y_residual_product_24_, y_residual_product_23_, 
        y_residual_product_22_, y_residual_product_21_, y_residual_product_20_, 
        y_residual_product_19_, y_residual_product_18_, y_residual_product_17_, 
        y_residual_product_16_, y_residual_product_15_, y_residual_product_14_, 
        y_residual_product_13_, y_residual_product_12_, y_residual_product_11_, 
        y_residual_product_10_, y_residual_product_9_, y_residual_product_8_, 
        y_residual_product_7_, y_residual_product_6_, y_residual_product_5_, 
        y_residual_product_4_}), .CI(n90), .DIFF({centered_plane[28], 
        centered_plane[26:0]}) );
  oadm_fixed_plane_centered_LEVEL0_DW_mult_tc_0 mult_31 ( .a({
        x_residual_wide_22_, x_mantissa[21:0]}), .b({n90, n80, n80, n90, n90, 
        n90}), .product({x_residual_product_28_, x_residual_product_27_, 
        x_residual_product_26_, x_residual_product_25_, N25, N24, N23, N22, 
        N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, 
        N6, N5, SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9}) );
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
  FA1D0 U5 ( .A(N4), .B(exponent_adjust[1]), .CI(n1), .CO(
        add_0_root_add_0_root_add_22_2_carry[2]), .S(result[24]) );
  FA1D0 U6 ( .A(N5), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[2]), .CO(
        add_0_root_add_0_root_add_22_2_carry[3]), .S(result[25]) );
  FA1D0 U7 ( .A(N6), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[3]), .CO(
        add_0_root_add_0_root_add_22_2_carry[4]), .S(result[26]) );
  FA1D0 U8 ( .A(N7), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[4]), .CO(
        add_0_root_add_0_root_add_22_2_carry[5]), .S(result[27]) );
  FA1D0 U9 ( .A(N8), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[5]), .CO(
        add_0_root_add_0_root_add_22_2_carry[6]), .S(result[28]) );
  FA1D0 U10 ( .A(N9), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[6]), .CO(
        add_0_root_add_0_root_add_22_2_carry[7]), .S(result[29]) );
  CKBD1 U11 ( .I(result_fraction[22]), .Z(result[22]) );
  CKBD1 U12 ( .I(result_fraction[21]), .Z(result[21]) );
  CKBD1 U13 ( .I(result_fraction[3]), .Z(result[3]) );
  CKBD1 U14 ( .I(result_fraction[4]), .Z(result[4]) );
  CKBD1 U15 ( .I(result_fraction[5]), .Z(result[5]) );
  CKBD1 U16 ( .I(result_fraction[6]), .Z(result[6]) );
  CKBD1 U17 ( .I(result_fraction[7]), .Z(result[7]) );
  CKBD1 U18 ( .I(result_fraction[8]), .Z(result[8]) );
  CKBD1 U19 ( .I(result_fraction[9]), .Z(result[9]) );
  CKBD1 U20 ( .I(result_fraction[10]), .Z(result[10]) );
  CKBD1 U21 ( .I(result_fraction[11]), .Z(result[11]) );
  CKBD1 U22 ( .I(result_fraction[12]), .Z(result[12]) );
  CKBD1 U23 ( .I(result_fraction[13]), .Z(result[13]) );
  CKBD1 U24 ( .I(result_fraction[14]), .Z(result[14]) );
  CKBD1 U25 ( .I(result_fraction[15]), .Z(result[15]) );
  CKBD1 U26 ( .I(result_fraction[16]), .Z(result[16]) );
  CKBD1 U27 ( .I(result_fraction[17]), .Z(result[17]) );
  CKBD1 U28 ( .I(result_fraction[18]), .Z(result[18]) );
  CKBD1 U29 ( .I(result_fraction[19]), .Z(result[19]) );
  CKBD1 U30 ( .I(result_fraction[20]), .Z(result[20]) );
  CKBD1 U31 ( .I(result_fraction[2]), .Z(result[2]) );
  CKBD1 U32 ( .I(result_fraction[1]), .Z(result[1]) );
  CKBD1 U33 ( .I(result_fraction[0]), .Z(result[0]) );
  XOR3D1 U42 ( .A1(N10), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_22_2_carry[7]), .Z(result[30]) );
  CKBD1 U43 ( .I(y[0]), .Z(fraction_y[0]) );
  CKBD1 U44 ( .I(x[0]), .Z(fraction_x[0]) );
  CKBD1 U45 ( .I(y[1]), .Z(fraction_y[1]) );
  CKBD1 U46 ( .I(y[2]), .Z(fraction_y[2]) );
  CKBD1 U48 ( .I(y[3]), .Z(fraction_y[3]) );
  CKBD1 U51 ( .I(y[4]), .Z(fraction_y[4]) );
  CKBD1 U53 ( .I(y[5]), .Z(fraction_y[5]) );
  CKBD1 U56 ( .I(y[6]), .Z(fraction_y[6]) );
  CKBD1 U58 ( .I(y[7]), .Z(fraction_y[7]) );
  CKBD1 U59 ( .I(y[8]), .Z(fraction_y[8]) );
  CKBD1 U60 ( .I(y[9]), .Z(fraction_y[9]) );
  CKBD1 U61 ( .I(y[10]), .Z(fraction_y[10]) );
  CKBD1 U62 ( .I(y[11]), .Z(fraction_y[11]) );
  CKBD1 U63 ( .I(y[12]), .Z(fraction_y[12]) );
  CKBD1 U64 ( .I(y[13]), .Z(fraction_y[13]) );
  CKBD1 U65 ( .I(y[14]), .Z(fraction_y[14]) );
  CKBD1 U66 ( .I(y[15]), .Z(fraction_y[15]) );
  CKBD1 U67 ( .I(y[16]), .Z(fraction_y[16]) );
  CKBD1 U68 ( .I(y[17]), .Z(fraction_y[17]) );
  CKBD1 U69 ( .I(y[18]), .Z(fraction_y[18]) );
  CKBD1 U70 ( .I(y[19]), .Z(fraction_y[19]) );
  CKBD1 U71 ( .I(x[22]), .Z(fraction_x[22]) );
  CKBD1 U72 ( .I(y[22]), .Z(fraction_y[22]) );
  INVD1 U73 ( .I(y[29]), .ZN(N17) );
  INVD1 U74 ( .I(y[24]), .ZN(N12) );
  INVD1 U75 ( .I(y[25]), .ZN(N13) );
  INVD1 U76 ( .I(y[26]), .ZN(N14) );
  INVD1 U77 ( .I(y[27]), .ZN(N15) );
  INVD1 U78 ( .I(y[28]), .ZN(N16) );
  CKBD1 U87 ( .I(x[21]), .Z(fraction_x[21]) );
  CKBD1 U88 ( .I(x[20]), .Z(fraction_x[20]) );
  CKBD1 U89 ( .I(x[19]), .Z(fraction_x[19]) );
  CKBD1 U90 ( .I(x[18]), .Z(fraction_x[18]) );
  CKBD1 U91 ( .I(x[17]), .Z(fraction_x[17]) );
  CKBD1 U92 ( .I(x[16]), .Z(fraction_x[16]) );
  CKBD1 U93 ( .I(x[15]), .Z(fraction_x[15]) );
  CKBD1 U94 ( .I(x[14]), .Z(fraction_x[14]) );
  CKBD1 U95 ( .I(x[13]), .Z(fraction_x[13]) );
  CKBD1 U96 ( .I(x[12]), .Z(fraction_x[12]) );
  CKBD1 U97 ( .I(x[11]), .Z(fraction_x[11]) );
  CKBD1 U98 ( .I(x[10]), .Z(fraction_x[10]) );
  CKBD1 U99 ( .I(x[9]), .Z(fraction_x[9]) );
  CKBD1 U100 ( .I(x[8]), .Z(fraction_x[8]) );
  CKBD1 U101 ( .I(x[7]), .Z(fraction_x[7]) );
  CKBD1 U102 ( .I(x[6]), .Z(fraction_x[6]) );
  CKBD1 U103 ( .I(x[5]), .Z(fraction_x[5]) );
  CKBD1 U104 ( .I(x[4]), .Z(fraction_x[4]) );
  CKBD1 U105 ( .I(x[3]), .Z(fraction_x[3]) );
  CKBD1 U106 ( .I(x[2]), .Z(fraction_x[2]) );
  CKBD1 U107 ( .I(x[1]), .Z(fraction_x[1]) );
  CKBD1 U108 ( .I(y[21]), .Z(fraction_y[21]) );
  CKBD1 U109 ( .I(y[20]), .Z(fraction_y[20]) );
  TIEL U110 ( .ZN(n79) );
  CKXOR2D1 U111 ( .A1(exponent_adjust[0]), .A2(N3), .Z(result[23]) );
  CKND0 U119 ( .I(y[23]), .ZN(N11) );
endmodule


module oadm_multilevel_opt_FIXED_LEVEL0_DW_mult_uns_0 ( a, b, product );
  input [31:0] a;
  input [6:0] b;
  output [38:0] product;
  wire   n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n56, n59, n60,
         n61, n62, n63, n64, n67, n68, n69, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104,
         n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115,
         n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, n126,
         n127, n128, n129, n130, n131, n132, n133, n134, n135, n138, n139,
         n140, n141, n454, n455, n456, n457, n458, n459, n460, n461, n462,
         n463, n464, n465, n466, n467, n468, n469, n470, n471, n472, n473,
         n474, n475, n476, n477, n478, n479, n480, n481, n482, n483, n484,
         n485, n486, n487, n488, n489, n490, n491, n492, n493, n494, n495,
         n496, n497, n498, n499, n500, n501, n502, n503, n504, n505, n506,
         n507, n508, n509, n510, n511, n512, n513, n514, n515, n516, n517,
         n518, n519, n520, n521, n522, n523, n524, n525, n526, n527, n528,
         n529, n530, n531, n532, n533, n534, n535, n536, n537, n538, n539,
         n540, n541, n542, n543, n544, n545, n546, n547, n548, n549, n550,
         n551, n552, n553, n554, n555, n556, n557, n558, n559, n560, n561,
         n562, n563, n564, n565, n566, n567, n568, n569, n570, n571, n572,
         n573, n574, n575, n576, n577, n578, n579, n580, n581, n582, n583,
         n584, n585, n586, n587, n588, n589, n590, n591, n592, n593, n594,
         n595, n596, n597, n598, n599, n600, n601, n602, n603, n604, n605,
         n606, n607, n608, n609, n610, n611, n612, n613, n614, n615, n616,
         n617, n618, n619, n620, n621, n622, n623, n624, n625, n626, n627,
         n628, n629, n630, n631, n632, n633, n634, n635, n636, n637, n638,
         n639, n640, n641, n642, n643, n644, n645, n650;

  FA1D0 U25 ( .A(n60), .B(n56), .CI(n25), .CO(n24), .S(product[30]) );
  FA1D0 U26 ( .A(n63), .B(n61), .CI(n26), .CO(n25), .S(product[29]) );
  FA1D0 U27 ( .A(n68), .B(n64), .CI(n27), .CO(n26), .S(product[28]) );
  FA1D0 U28 ( .A(n72), .B(n69), .CI(n28), .CO(n27), .S(product[27]) );
  FA1D0 U29 ( .A(n75), .B(n73), .CI(n29), .CO(n28), .S(product[26]) );
  FA1D0 U30 ( .A(n78), .B(n76), .CI(n30), .CO(n29), .S(product[25]) );
  FA1D0 U31 ( .A(n81), .B(n79), .CI(n31), .CO(n30), .S(product[24]) );
  FA1D0 U32 ( .A(n84), .B(n82), .CI(n32), .CO(n31), .S(product[23]) );
  FA1D0 U33 ( .A(n87), .B(n85), .CI(n33), .CO(n32), .S(product[22]) );
  FA1D0 U34 ( .A(n90), .B(n88), .CI(n34), .CO(n33), .S(product[21]) );
  FA1D0 U35 ( .A(n93), .B(n91), .CI(n35), .CO(n34), .S(product[20]) );
  FA1D0 U36 ( .A(n96), .B(n94), .CI(n36), .CO(n35), .S(product[19]) );
  FA1D0 U37 ( .A(n99), .B(n97), .CI(n37), .CO(n36), .S(product[18]) );
  FA1D0 U38 ( .A(n102), .B(n100), .CI(n38), .CO(n37), .S(product[17]) );
  FA1D0 U39 ( .A(n105), .B(n103), .CI(n39), .CO(n38), .S(product[16]) );
  FA1D0 U40 ( .A(n108), .B(n106), .CI(n40), .CO(n39), .S(product[15]) );
  FA1D0 U41 ( .A(n111), .B(n109), .CI(n41), .CO(n40), .S(product[14]) );
  FA1D0 U42 ( .A(n114), .B(n112), .CI(n42), .CO(n41), .S(product[13]) );
  FA1D0 U43 ( .A(n117), .B(n115), .CI(n43), .CO(n42), .S(product[12]) );
  FA1D0 U44 ( .A(n120), .B(n118), .CI(n44), .CO(n43), .S(product[11]) );
  FA1D0 U45 ( .A(n123), .B(n121), .CI(n45), .CO(n44), .S(product[10]) );
  FA1D0 U46 ( .A(n126), .B(n124), .CI(n46), .CO(n45), .S(product[9]) );
  FA1D0 U47 ( .A(n129), .B(n127), .CI(n47), .CO(n46), .S(product[8]) );
  FA1D0 U48 ( .A(n132), .B(n130), .CI(n48), .CO(n47), .S(product[7]) );
  HA1D0 U87 ( .A(n502), .B(a[3]), .CO(n140), .S(n141) );
  INVD1 U328 ( .I(n86), .ZN(n465) );
  INVD1 U329 ( .I(n98), .ZN(n473) );
  INVD1 U330 ( .I(n62), .ZN(n457) );
  INVD1 U331 ( .I(n80), .ZN(n462) );
  INVD1 U332 ( .I(n83), .ZN(n463) );
  INVD1 U333 ( .I(n116), .ZN(n485) );
  INVD1 U334 ( .I(n113), .ZN(n483) );
  INVD1 U335 ( .I(n119), .ZN(n487) );
  INVD1 U336 ( .I(n122), .ZN(n489) );
  INVD1 U337 ( .I(n125), .ZN(n491) );
  INVD1 U338 ( .I(n128), .ZN(n493) );
  INVD1 U339 ( .I(n77), .ZN(n460) );
  INVD1 U340 ( .I(n110), .ZN(n481) );
  INVD1 U341 ( .I(n131), .ZN(n495) );
  INVD1 U342 ( .I(n104), .ZN(n477) );
  INVD1 U343 ( .I(n95), .ZN(n471) );
  INVD1 U344 ( .I(n101), .ZN(n475) );
  INVD1 U345 ( .I(n92), .ZN(n469) );
  INVD1 U346 ( .I(n89), .ZN(n467) );
  INVD1 U347 ( .I(n107), .ZN(n479) );
  INVD1 U348 ( .I(n74), .ZN(n458) );
  INVD1 U349 ( .I(n67), .ZN(n455) );
  INVD1 U350 ( .I(a[21]), .ZN(n466) );
  INVD1 U351 ( .I(a[17]), .ZN(n474) );
  INVD1 U352 ( .I(n71), .ZN(n454) );
  INVD1 U353 ( .I(a[3]), .ZN(n499) );
  INVD1 U354 ( .I(a[14]), .ZN(n480) );
  INVD1 U356 ( .I(a[0]), .ZN(n502) );
  INVD1 U357 ( .I(a[24]), .ZN(n461) );
  INVD1 U359 ( .I(a[7]), .ZN(n494) );
  INVD1 U360 ( .I(a[8]), .ZN(n492) );
  INVD1 U361 ( .I(a[9]), .ZN(n490) );
  INVD1 U362 ( .I(a[10]), .ZN(n488) );
  INVD1 U363 ( .I(a[12]), .ZN(n484) );
  INVD1 U364 ( .I(a[11]), .ZN(n486) );
  INVD1 U365 ( .I(a[13]), .ZN(n482) );
  INVD1 U366 ( .I(a[15]), .ZN(n478) );
  INVD1 U367 ( .I(a[16]), .ZN(n476) );
  INVD1 U368 ( .I(a[18]), .ZN(n472) );
  INVD1 U369 ( .I(a[19]), .ZN(n470) );
  INVD1 U370 ( .I(a[20]), .ZN(n468) );
  INVD1 U371 ( .I(a[4]), .ZN(n498) );
  INVD1 U372 ( .I(a[6]), .ZN(n496) );
  INVD1 U373 ( .I(a[5]), .ZN(n497) );
  INVD1 U374 ( .I(a[1]), .ZN(n501) );
  INVD1 U376 ( .I(a[2]), .ZN(n500) );
  CKXOR2D0 U379 ( .A1(n59), .A2(n461), .Z(n56) );
  AN2D0 U380 ( .A1(a[5]), .A2(n500), .Z(n134) );
  CKXOR2D0 U381 ( .A1(a[5]), .A2(n500), .Z(n135) );
  AN2D0 U382 ( .A1(n501), .A2(a[4]), .Z(n138) );
  CKXOR2D0 U383 ( .A1(n501), .A2(a[4]), .Z(n139) );
  OAI211D0 U384 ( .A1(n456), .A2(n457), .B(n503), .C(n504), .ZN(n60) );
  INR2D0 U385 ( .A1(a[23]), .B1(n466), .ZN(n59) );
  XOR4D0 U386 ( .A1(n466), .A2(a[23]), .A3(n456), .A4(n62), .Z(n61) );
  NR2D0 U387 ( .A1(a[21]), .A2(n456), .ZN(n505) );
  NR2D0 U388 ( .A1(n456), .A2(n466), .ZN(n506) );
  NR2D0 U389 ( .A1(a[21]), .A2(n457), .ZN(n507) );
  NR2D0 U390 ( .A1(n457), .A2(n466), .ZN(n508) );
  MUX2ND0 U391 ( .I0(n506), .I1(n505), .S(a[23]), .ZN(n503) );
  MUX2ND0 U392 ( .I0(n508), .I1(n507), .S(a[23]), .ZN(n504) );
  OAI211D0 U393 ( .A1(a[21]), .A2(n455), .B(n509), .C(n510), .ZN(n63) );
  XOR4D0 U395 ( .A1(n464), .A2(n459), .A3(a[21]), .A4(n67), .Z(n64) );
  NR2D0 U396 ( .A1(a[22]), .A2(a[21]), .ZN(n511) );
  NR2D0 U397 ( .A1(a[21]), .A2(n464), .ZN(n512) );
  NR2D0 U398 ( .A1(a[22]), .A2(n455), .ZN(n513) );
  NR2D0 U399 ( .A1(n455), .A2(n464), .ZN(n514) );
  MUX2ND0 U400 ( .I0(n512), .I1(n511), .S(n459), .ZN(n509) );
  MUX2ND0 U401 ( .I0(n514), .I1(n513), .S(n459), .ZN(n510) );
  OAI211D0 U402 ( .A1(a[21]), .A2(n454), .B(n515), .C(n516), .ZN(n68) );
  XOR4D0 U404 ( .A1(a[24]), .A2(n456), .A3(a[21]), .A4(n71), .Z(n69) );
  NR2D0 U405 ( .A1(n461), .A2(a[21]), .ZN(n517) );
  NR2D0 U406 ( .A1(a[21]), .A2(a[24]), .ZN(n518) );
  NR2D0 U407 ( .A1(n461), .A2(n454), .ZN(n519) );
  NR2D0 U408 ( .A1(n454), .A2(a[24]), .ZN(n520) );
  MUX2ND0 U409 ( .I0(n518), .I1(n517), .S(n456), .ZN(n515) );
  MUX2ND0 U410 ( .I0(n520), .I1(n519), .S(n456), .ZN(n516) );
  OAI211D0 U411 ( .A1(a[23]), .A2(n458), .B(n521), .C(n522), .ZN(n72) );
  INR2D0 U412 ( .A1(a[27]), .B1(n468), .ZN(n71) );
  XOR4D0 U413 ( .A1(n468), .A2(a[27]), .A3(a[23]), .A4(n74), .Z(n73) );
  NR2D0 U414 ( .A1(a[20]), .A2(a[23]), .ZN(n523) );
  NR2D0 U415 ( .A1(a[23]), .A2(n468), .ZN(n524) );
  NR2D0 U416 ( .A1(a[20]), .A2(n458), .ZN(n525) );
  NR2D0 U417 ( .A1(n458), .A2(n468), .ZN(n526) );
  MUX2ND0 U418 ( .I0(n524), .I1(n523), .S(a[27]), .ZN(n521) );
  MUX2ND0 U419 ( .I0(n526), .I1(n525), .S(a[27]), .ZN(n522) );
  OAI211D0 U420 ( .A1(a[22]), .A2(n460), .B(n527), .C(n528), .ZN(n75) );
  INR2D0 U421 ( .A1(a[25]), .B1(n470), .ZN(n74) );
  XOR4D0 U422 ( .A1(n470), .A2(a[25]), .A3(a[22]), .A4(n77), .Z(n76) );
  NR2D0 U423 ( .A1(a[19]), .A2(a[22]), .ZN(n529) );
  NR2D0 U424 ( .A1(a[22]), .A2(n470), .ZN(n530) );
  NR2D0 U425 ( .A1(a[19]), .A2(n460), .ZN(n531) );
  NR2D0 U426 ( .A1(n460), .A2(n470), .ZN(n532) );
  MUX2ND0 U427 ( .I0(n530), .I1(n529), .S(a[25]), .ZN(n527) );
  MUX2ND0 U428 ( .I0(n532), .I1(n531), .S(a[25]), .ZN(n528) );
  OAI211D0 U429 ( .A1(a[21]), .A2(n462), .B(n533), .C(n534), .ZN(n78) );
  INR2D0 U430 ( .A1(a[24]), .B1(n472), .ZN(n77) );
  XOR4D0 U431 ( .A1(n472), .A2(a[24]), .A3(a[21]), .A4(n80), .Z(n79) );
  NR2D0 U432 ( .A1(a[18]), .A2(a[21]), .ZN(n535) );
  NR2D0 U433 ( .A1(a[21]), .A2(n472), .ZN(n536) );
  NR2D0 U434 ( .A1(a[18]), .A2(n462), .ZN(n537) );
  NR2D0 U435 ( .A1(n462), .A2(n472), .ZN(n538) );
  MUX2ND0 U436 ( .I0(n536), .I1(n535), .S(a[24]), .ZN(n533) );
  MUX2ND0 U437 ( .I0(n538), .I1(n537), .S(a[24]), .ZN(n534) );
  OAI211D0 U438 ( .A1(a[20]), .A2(n463), .B(n539), .C(n540), .ZN(n81) );
  INR2D0 U439 ( .A1(a[23]), .B1(n474), .ZN(n80) );
  XOR4D0 U440 ( .A1(n474), .A2(a[23]), .A3(a[20]), .A4(n83), .Z(n82) );
  NR2D0 U441 ( .A1(a[17]), .A2(a[20]), .ZN(n541) );
  NR2D0 U442 ( .A1(a[20]), .A2(n474), .ZN(n542) );
  NR2D0 U443 ( .A1(a[17]), .A2(n463), .ZN(n543) );
  NR2D0 U444 ( .A1(n463), .A2(n474), .ZN(n544) );
  MUX2ND0 U445 ( .I0(n542), .I1(n541), .S(a[23]), .ZN(n539) );
  MUX2ND0 U446 ( .I0(n544), .I1(n543), .S(a[23]), .ZN(n540) );
  OAI211D0 U447 ( .A1(a[19]), .A2(n465), .B(n545), .C(n546), .ZN(n84) );
  INR2D0 U448 ( .A1(a[22]), .B1(n476), .ZN(n83) );
  XOR4D0 U449 ( .A1(n476), .A2(a[22]), .A3(a[19]), .A4(n86), .Z(n85) );
  NR2D0 U450 ( .A1(a[16]), .A2(a[19]), .ZN(n547) );
  NR2D0 U451 ( .A1(a[19]), .A2(n476), .ZN(n548) );
  NR2D0 U452 ( .A1(a[16]), .A2(n465), .ZN(n549) );
  NR2D0 U453 ( .A1(n465), .A2(n476), .ZN(n550) );
  MUX2ND0 U454 ( .I0(n548), .I1(n547), .S(a[22]), .ZN(n545) );
  MUX2ND0 U455 ( .I0(n550), .I1(n549), .S(a[22]), .ZN(n546) );
  OAI211D0 U456 ( .A1(a[18]), .A2(n467), .B(n551), .C(n552), .ZN(n87) );
  INR2D0 U457 ( .A1(a[21]), .B1(n478), .ZN(n86) );
  XOR4D0 U458 ( .A1(n478), .A2(a[21]), .A3(a[18]), .A4(n89), .Z(n88) );
  NR2D0 U459 ( .A1(a[15]), .A2(a[18]), .ZN(n553) );
  NR2D0 U460 ( .A1(a[18]), .A2(n478), .ZN(n554) );
  NR2D0 U461 ( .A1(a[15]), .A2(n467), .ZN(n555) );
  NR2D0 U462 ( .A1(n467), .A2(n478), .ZN(n556) );
  MUX2ND0 U463 ( .I0(n554), .I1(n553), .S(a[21]), .ZN(n551) );
  MUX2ND0 U464 ( .I0(n556), .I1(n555), .S(a[21]), .ZN(n552) );
  OAI211D0 U465 ( .A1(a[17]), .A2(n469), .B(n557), .C(n558), .ZN(n90) );
  INR2D0 U466 ( .A1(a[20]), .B1(n480), .ZN(n89) );
  XOR4D0 U467 ( .A1(n480), .A2(a[20]), .A3(a[17]), .A4(n92), .Z(n91) );
  NR2D0 U468 ( .A1(a[14]), .A2(a[17]), .ZN(n559) );
  NR2D0 U469 ( .A1(a[17]), .A2(n480), .ZN(n560) );
  NR2D0 U470 ( .A1(a[14]), .A2(n469), .ZN(n561) );
  NR2D0 U471 ( .A1(n469), .A2(n480), .ZN(n562) );
  MUX2ND0 U472 ( .I0(n560), .I1(n559), .S(a[20]), .ZN(n557) );
  MUX2ND0 U473 ( .I0(n562), .I1(n561), .S(a[20]), .ZN(n558) );
  OAI211D0 U474 ( .A1(a[16]), .A2(n471), .B(n563), .C(n564), .ZN(n93) );
  INR2D0 U475 ( .A1(a[19]), .B1(n482), .ZN(n92) );
  XOR4D0 U476 ( .A1(n482), .A2(a[19]), .A3(a[16]), .A4(n95), .Z(n94) );
  NR2D0 U477 ( .A1(a[13]), .A2(a[16]), .ZN(n565) );
  NR2D0 U478 ( .A1(a[16]), .A2(n482), .ZN(n566) );
  NR2D0 U479 ( .A1(a[13]), .A2(n471), .ZN(n567) );
  NR2D0 U480 ( .A1(n471), .A2(n482), .ZN(n568) );
  MUX2ND0 U481 ( .I0(n566), .I1(n565), .S(a[19]), .ZN(n563) );
  MUX2ND0 U482 ( .I0(n568), .I1(n567), .S(a[19]), .ZN(n564) );
  OAI211D0 U483 ( .A1(a[15]), .A2(n473), .B(n569), .C(n570), .ZN(n96) );
  INR2D0 U484 ( .A1(a[18]), .B1(n484), .ZN(n95) );
  XOR4D0 U485 ( .A1(n484), .A2(a[18]), .A3(a[15]), .A4(n98), .Z(n97) );
  NR2D0 U486 ( .A1(a[12]), .A2(a[15]), .ZN(n571) );
  NR2D0 U487 ( .A1(a[15]), .A2(n484), .ZN(n572) );
  NR2D0 U488 ( .A1(a[12]), .A2(n473), .ZN(n573) );
  NR2D0 U489 ( .A1(n473), .A2(n484), .ZN(n574) );
  MUX2ND0 U490 ( .I0(n572), .I1(n571), .S(a[18]), .ZN(n569) );
  MUX2ND0 U491 ( .I0(n574), .I1(n573), .S(a[18]), .ZN(n570) );
  OAI211D0 U492 ( .A1(n475), .A2(a[14]), .B(n575), .C(n576), .ZN(n99) );
  NR2D0 U493 ( .A1(n474), .A2(n486), .ZN(n98) );
  XOR4D0 U494 ( .A1(a[11]), .A2(a[17]), .A3(n480), .A4(n101), .Z(n100) );
  NR2D0 U495 ( .A1(a[11]), .A2(a[14]), .ZN(n577) );
  NR2D0 U496 ( .A1(a[14]), .A2(n486), .ZN(n578) );
  NR2D0 U497 ( .A1(a[11]), .A2(n475), .ZN(n579) );
  NR2D0 U498 ( .A1(n475), .A2(n486), .ZN(n580) );
  MUX2ND0 U499 ( .I0(n578), .I1(n577), .S(a[17]), .ZN(n575) );
  MUX2ND0 U500 ( .I0(n580), .I1(n579), .S(a[17]), .ZN(n576) );
  OAI211D0 U501 ( .A1(a[13]), .A2(n477), .B(n581), .C(n582), .ZN(n102) );
  INR2D0 U502 ( .A1(a[16]), .B1(n488), .ZN(n101) );
  XOR4D0 U503 ( .A1(n488), .A2(a[16]), .A3(a[13]), .A4(n104), .Z(n103) );
  NR2D0 U504 ( .A1(a[10]), .A2(a[13]), .ZN(n583) );
  NR2D0 U505 ( .A1(a[13]), .A2(n488), .ZN(n584) );
  NR2D0 U506 ( .A1(a[10]), .A2(n477), .ZN(n585) );
  NR2D0 U507 ( .A1(n477), .A2(n488), .ZN(n586) );
  MUX2ND0 U508 ( .I0(n584), .I1(n583), .S(a[16]), .ZN(n581) );
  MUX2ND0 U509 ( .I0(n586), .I1(n585), .S(a[16]), .ZN(n582) );
  OAI211D0 U510 ( .A1(a[12]), .A2(n479), .B(n587), .C(n588), .ZN(n105) );
  INR2D0 U511 ( .A1(a[15]), .B1(n490), .ZN(n104) );
  XOR4D0 U512 ( .A1(n490), .A2(a[15]), .A3(a[12]), .A4(n107), .Z(n106) );
  NR2D0 U513 ( .A1(a[9]), .A2(a[12]), .ZN(n589) );
  NR2D0 U514 ( .A1(a[12]), .A2(n490), .ZN(n590) );
  NR2D0 U515 ( .A1(a[9]), .A2(n479), .ZN(n591) );
  NR2D0 U516 ( .A1(n479), .A2(n490), .ZN(n592) );
  MUX2ND0 U517 ( .I0(n590), .I1(n589), .S(a[15]), .ZN(n587) );
  MUX2ND0 U518 ( .I0(n592), .I1(n591), .S(a[15]), .ZN(n588) );
  OAI211D0 U519 ( .A1(a[11]), .A2(n481), .B(n593), .C(n594), .ZN(n108) );
  INR2D0 U520 ( .A1(a[14]), .B1(n492), .ZN(n107) );
  XOR4D0 U521 ( .A1(n492), .A2(a[14]), .A3(a[11]), .A4(n110), .Z(n109) );
  NR2D0 U522 ( .A1(a[8]), .A2(a[11]), .ZN(n595) );
  NR2D0 U523 ( .A1(a[11]), .A2(n492), .ZN(n596) );
  NR2D0 U524 ( .A1(a[8]), .A2(n481), .ZN(n597) );
  NR2D0 U525 ( .A1(n481), .A2(n492), .ZN(n598) );
  MUX2ND0 U526 ( .I0(n596), .I1(n595), .S(a[14]), .ZN(n593) );
  MUX2ND0 U527 ( .I0(n598), .I1(n597), .S(a[14]), .ZN(n594) );
  OAI211D0 U528 ( .A1(a[10]), .A2(n483), .B(n599), .C(n600), .ZN(n111) );
  INR2D0 U529 ( .A1(a[13]), .B1(n494), .ZN(n110) );
  XOR4D0 U530 ( .A1(n494), .A2(a[13]), .A3(a[10]), .A4(n113), .Z(n112) );
  NR2D0 U531 ( .A1(a[7]), .A2(a[10]), .ZN(n601) );
  NR2D0 U532 ( .A1(a[10]), .A2(n494), .ZN(n602) );
  NR2D0 U533 ( .A1(a[7]), .A2(n483), .ZN(n603) );
  NR2D0 U534 ( .A1(n483), .A2(n494), .ZN(n604) );
  MUX2ND0 U535 ( .I0(n602), .I1(n601), .S(a[13]), .ZN(n599) );
  MUX2ND0 U536 ( .I0(n604), .I1(n603), .S(a[13]), .ZN(n600) );
  OAI211D0 U537 ( .A1(a[9]), .A2(n485), .B(n605), .C(n606), .ZN(n114) );
  INR2D0 U538 ( .A1(a[12]), .B1(n496), .ZN(n113) );
  XOR4D0 U539 ( .A1(n496), .A2(a[12]), .A3(a[9]), .A4(n116), .Z(n115) );
  NR2D0 U540 ( .A1(a[6]), .A2(a[9]), .ZN(n607) );
  NR2D0 U541 ( .A1(a[9]), .A2(n496), .ZN(n608) );
  NR2D0 U542 ( .A1(a[6]), .A2(n485), .ZN(n609) );
  NR2D0 U543 ( .A1(n485), .A2(n496), .ZN(n610) );
  MUX2ND0 U544 ( .I0(n608), .I1(n607), .S(a[12]), .ZN(n605) );
  MUX2ND0 U545 ( .I0(n610), .I1(n609), .S(a[12]), .ZN(n606) );
  OAI211D0 U546 ( .A1(a[8]), .A2(n487), .B(n611), .C(n612), .ZN(n117) );
  INR2D0 U547 ( .A1(a[11]), .B1(n497), .ZN(n116) );
  XOR4D0 U548 ( .A1(n497), .A2(a[11]), .A3(a[8]), .A4(n119), .Z(n118) );
  NR2D0 U549 ( .A1(a[5]), .A2(a[8]), .ZN(n613) );
  NR2D0 U550 ( .A1(a[8]), .A2(n497), .ZN(n614) );
  NR2D0 U551 ( .A1(a[5]), .A2(n487), .ZN(n615) );
  NR2D0 U552 ( .A1(n487), .A2(n497), .ZN(n616) );
  MUX2ND0 U553 ( .I0(n614), .I1(n613), .S(a[11]), .ZN(n611) );
  MUX2ND0 U554 ( .I0(n616), .I1(n615), .S(a[11]), .ZN(n612) );
  OAI211D0 U555 ( .A1(a[7]), .A2(n489), .B(n617), .C(n618), .ZN(n120) );
  INR2D0 U556 ( .A1(a[10]), .B1(n498), .ZN(n119) );
  XOR4D0 U557 ( .A1(n498), .A2(a[10]), .A3(a[7]), .A4(n122), .Z(n121) );
  NR2D0 U558 ( .A1(a[4]), .A2(a[7]), .ZN(n619) );
  NR2D0 U559 ( .A1(a[7]), .A2(n498), .ZN(n620) );
  NR2D0 U560 ( .A1(a[4]), .A2(n489), .ZN(n621) );
  NR2D0 U561 ( .A1(n489), .A2(n498), .ZN(n622) );
  MUX2ND0 U562 ( .I0(n620), .I1(n619), .S(a[10]), .ZN(n617) );
  MUX2ND0 U563 ( .I0(n622), .I1(n621), .S(a[10]), .ZN(n618) );
  OAI211D0 U564 ( .A1(a[6]), .A2(n491), .B(n623), .C(n624), .ZN(n123) );
  INR2D0 U565 ( .A1(a[9]), .B1(n499), .ZN(n122) );
  XOR4D0 U566 ( .A1(n499), .A2(a[9]), .A3(a[6]), .A4(n125), .Z(n124) );
  NR2D0 U567 ( .A1(a[3]), .A2(a[6]), .ZN(n625) );
  NR2D0 U568 ( .A1(a[6]), .A2(n499), .ZN(n626) );
  NR2D0 U569 ( .A1(a[3]), .A2(n491), .ZN(n627) );
  NR2D0 U570 ( .A1(n491), .A2(n499), .ZN(n628) );
  MUX2ND0 U571 ( .I0(n626), .I1(n625), .S(a[9]), .ZN(n623) );
  MUX2ND0 U572 ( .I0(n628), .I1(n627), .S(a[9]), .ZN(n624) );
  OAI211D0 U573 ( .A1(a[5]), .A2(n493), .B(n629), .C(n630), .ZN(n126) );
  INR2D0 U574 ( .A1(a[8]), .B1(n500), .ZN(n125) );
  XOR4D0 U575 ( .A1(n500), .A2(a[8]), .A3(a[5]), .A4(n128), .Z(n127) );
  NR2D0 U576 ( .A1(a[2]), .A2(a[5]), .ZN(n631) );
  NR2D0 U577 ( .A1(a[5]), .A2(n500), .ZN(n632) );
  NR2D0 U578 ( .A1(a[2]), .A2(n493), .ZN(n633) );
  NR2D0 U579 ( .A1(n493), .A2(n500), .ZN(n634) );
  MUX2ND0 U580 ( .I0(n632), .I1(n631), .S(a[8]), .ZN(n629) );
  MUX2ND0 U581 ( .I0(n634), .I1(n633), .S(a[8]), .ZN(n630) );
  OAI211D0 U582 ( .A1(a[4]), .A2(n495), .B(n635), .C(n636), .ZN(n129) );
  INR2D0 U583 ( .A1(a[7]), .B1(n501), .ZN(n128) );
  XOR4D0 U584 ( .A1(n501), .A2(a[7]), .A3(a[4]), .A4(n131), .Z(n130) );
  NR2D0 U585 ( .A1(a[1]), .A2(a[4]), .ZN(n637) );
  NR2D0 U586 ( .A1(a[4]), .A2(n501), .ZN(n638) );
  NR2D0 U587 ( .A1(a[1]), .A2(n495), .ZN(n639) );
  NR2D0 U588 ( .A1(n495), .A2(n501), .ZN(n640) );
  MUX2ND0 U589 ( .I0(n638), .I1(n637), .S(a[7]), .ZN(n635) );
  MUX2ND0 U590 ( .I0(n640), .I1(n639), .S(a[7]), .ZN(n636) );
  INR2D0 U591 ( .A1(a[6]), .B1(n502), .ZN(n131) );
  XNR3D0 U592 ( .A1(n499), .A2(n502), .A3(a[6]), .ZN(n133) );
  MUX2ND0 U593 ( .I0(n641), .I1(n642), .S(a[6]), .ZN(n132) );
  CKND2D0 U594 ( .A1(n499), .A2(n502), .ZN(n642) );
  CKND2D0 U595 ( .A1(a[0]), .A2(n499), .ZN(n641) );
  XOR3D0 U596 ( .A1(n461), .A2(n459), .A3(n643), .Z(product[31]) );
  AO222D0 U597 ( .A1(n644), .A2(n133), .B1(n644), .B2(n134), .C1(n134), .C2(
        n133), .Z(n48) );
  AO222D0 U598 ( .A1(n645), .A2(n135), .B1(n645), .B2(n138), .C1(n138), .C2(
        n135), .Z(n644) );
  AO222D0 U599 ( .A1(n141), .A2(n139), .B1(n141), .B2(n140), .C1(n140), .C2(
        n139), .Z(n645) );
  CKXOR2D0 U355 ( .A1(n24), .A2(n650), .Z(n643) );
  CKND2D0 U358 ( .A1(n461), .A2(n59), .ZN(n650) );
  CKND0 U375 ( .I(a[25]), .ZN(n459) );
  NR2D0 U377 ( .A1(n464), .A2(a[25]), .ZN(n62) );
  CKND0 U378 ( .I(a[22]), .ZN(n464) );
  CKND0 U394 ( .I(a[26]), .ZN(n456) );
  NR2D0 U403 ( .A1(a[24]), .A2(a[26]), .ZN(n67) );
endmodule


module oadm_multilevel_opt_FIXED_LEVEL0 ( x, y, level, divide_mode, result );
  input [31:0] x;
  input [31:0] y;
  input [1:0] level;
  output [31:0] result;
  input divide_mode;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n1, n53, n54, n55;
  wire   [22:0] x_mantissa;
  wire   [22:0] y_mantissa;
  wire   [26:0] plane_full;
  wire   [31:7] scaled_product;
  wire   [22:0] normalized_fraction;
  wire   [2:0] exponent_adjust;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15;

  oadm_fixed_plane_centered_LEVEL0 fixed_centered_plane_plane ( .x_mantissa({
        1'b0, x_mantissa}), .y_mantissa({1'b0, y_mantissa}), .divide_mode(1'b1), .plane_exact({SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, plane_full})
         );
  fp32_normal_finite_wrapper fp_wrapper ( .x(x), .y(y), .divide_mode(1'b1), 
        .fraction_x(x_mantissa), .fraction_y(y_mantissa), .result_fraction(
        normalized_fraction), .exponent_adjust({exponent_adjust[2], 
        exponent_adjust[2], exponent_adjust[0]}), .result(result) );
  oadm_multilevel_opt_FIXED_LEVEL0_DW_mult_uns_0 mult_67 ( .a({plane_full[26], 
        plane_full[26], plane_full[26], plane_full[26], plane_full[26], 
        plane_full}), .b({n3, n2, n2, n2, n3, n3, n2}), .product({
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, scaled_product, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15}) );
  ND2D1 U3 ( .A1(n11), .A2(n1), .ZN(exponent_adjust[2]) );
  ND2D1 U4 ( .A1(n6), .A2(n11), .ZN(exponent_adjust[0]) );
  ND3D1 U6 ( .A1(n28), .A2(n27), .A3(n6), .ZN(n1) );
  OAI221D0 U7 ( .A1(n27), .A2(n54), .B1(n6), .B2(n28), .C(n29), .ZN(
        normalized_fraction[22]) );
  OA22D0 U8 ( .A1(n53), .A2(n30), .B1(n11), .B2(n31), .Z(n29) );
  OAI221D0 U9 ( .A1(n31), .A2(n5), .B1(n6), .B2(n27), .C(n32), .ZN(
        normalized_fraction[21]) );
  OA22D0 U10 ( .A1(n1), .A2(n33), .B1(n11), .B2(n30), .Z(n32) );
  OAI221D0 U11 ( .A1(n20), .A2(n5), .B1(n6), .B2(n18), .C(n23), .ZN(
        normalized_fraction[3]) );
  OA22D0 U12 ( .A1(n9), .A2(n24), .B1(n11), .B2(n22), .Z(n23) );
  OAI221D0 U13 ( .A1(n18), .A2(n54), .B1(n6), .B2(n16), .C(n21), .ZN(
        normalized_fraction[4]) );
  OA22D0 U14 ( .A1(n1), .A2(n22), .B1(n11), .B2(n20), .Z(n21) );
  OAI221D0 U15 ( .A1(n16), .A2(n55), .B1(n6), .B2(n14), .C(n19), .ZN(
        normalized_fraction[5]) );
  OA22D0 U16 ( .A1(n53), .A2(n20), .B1(n11), .B2(n18), .Z(n19) );
  OAI221D0 U17 ( .A1(n14), .A2(n5), .B1(n6), .B2(n10), .C(n17), .ZN(
        normalized_fraction[6]) );
  OA22D0 U18 ( .A1(n9), .A2(n18), .B1(n11), .B2(n16), .Z(n17) );
  OAI221D0 U19 ( .A1(n10), .A2(n54), .B1(n6), .B2(n12), .C(n15), .ZN(
        normalized_fraction[7]) );
  OA22D0 U20 ( .A1(n1), .A2(n16), .B1(n11), .B2(n14), .Z(n15) );
  OAI221D0 U21 ( .A1(n12), .A2(n55), .B1(n6), .B2(n4), .C(n13), .ZN(
        normalized_fraction[8]) );
  OA22D0 U22 ( .A1(n53), .A2(n14), .B1(n11), .B2(n10), .Z(n13) );
  OAI221D0 U23 ( .A1(n4), .A2(n5), .B1(n6), .B2(n7), .C(n8), .ZN(
        normalized_fraction[9]) );
  OA22D0 U24 ( .A1(n9), .A2(n10), .B1(n11), .B2(n12), .Z(n8) );
  OAI221D0 U25 ( .A1(n7), .A2(n54), .B1(n6), .B2(n49), .C(n52), .ZN(
        normalized_fraction[10]) );
  OA22D0 U26 ( .A1(n53), .A2(n12), .B1(n11), .B2(n4), .Z(n52) );
  OAI221D0 U27 ( .A1(n49), .A2(n5), .B1(n6), .B2(n47), .C(n51), .ZN(
        normalized_fraction[11]) );
  OA22D0 U28 ( .A1(n9), .A2(n4), .B1(n11), .B2(n7), .Z(n51) );
  OAI221D0 U29 ( .A1(n47), .A2(n5), .B1(n6), .B2(n45), .C(n50), .ZN(
        normalized_fraction[12]) );
  OA22D0 U30 ( .A1(n9), .A2(n7), .B1(n11), .B2(n49), .Z(n50) );
  OAI221D0 U31 ( .A1(n45), .A2(n54), .B1(n6), .B2(n43), .C(n48), .ZN(
        normalized_fraction[13]) );
  OA22D0 U32 ( .A1(n53), .A2(n49), .B1(n11), .B2(n47), .Z(n48) );
  OAI221D0 U33 ( .A1(n43), .A2(n55), .B1(n6), .B2(n41), .C(n46), .ZN(
        normalized_fraction[14]) );
  OA22D0 U34 ( .A1(n9), .A2(n47), .B1(n11), .B2(n45), .Z(n46) );
  OAI221D0 U35 ( .A1(n41), .A2(n5), .B1(n6), .B2(n39), .C(n44), .ZN(
        normalized_fraction[15]) );
  OA22D0 U36 ( .A1(n1), .A2(n45), .B1(n11), .B2(n43), .Z(n44) );
  OAI221D0 U37 ( .A1(n39), .A2(n54), .B1(n6), .B2(n37), .C(n42), .ZN(
        normalized_fraction[16]) );
  OA22D0 U38 ( .A1(n53), .A2(n43), .B1(n11), .B2(n41), .Z(n42) );
  OAI221D0 U39 ( .A1(n37), .A2(n55), .B1(n6), .B2(n35), .C(n40), .ZN(
        normalized_fraction[17]) );
  OA22D0 U40 ( .A1(n9), .A2(n41), .B1(n11), .B2(n39), .Z(n40) );
  OAI221D0 U41 ( .A1(n35), .A2(n5), .B1(n6), .B2(n33), .C(n38), .ZN(
        normalized_fraction[18]) );
  OA22D0 U42 ( .A1(n1), .A2(n39), .B1(n11), .B2(n37), .Z(n38) );
  OAI221D0 U43 ( .A1(n33), .A2(n54), .B1(n6), .B2(n30), .C(n36), .ZN(
        normalized_fraction[19]) );
  OA22D0 U44 ( .A1(n53), .A2(n37), .B1(n11), .B2(n35), .Z(n36) );
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
  TIEH U83 ( .Z(n2) );
  TIEL U84 ( .ZN(n3) );
  CKND2D0 U5 ( .A1(scaled_product[30]), .A2(n6), .ZN(n54) );
  CKND2D0 U52 ( .A1(scaled_product[30]), .A2(n6), .ZN(n5) );
  CKND2D0 U53 ( .A1(scaled_product[30]), .A2(n6), .ZN(n55) );
  ND3D1 U54 ( .A1(scaled_product[29]), .A2(n28), .A3(n6), .ZN(n11) );
  INVD1 U56 ( .I(scaled_product[31]), .ZN(n6) );
  CKND1 U57 ( .I(scaled_product[9]), .ZN(n22) );
  CKND1 U58 ( .I(scaled_product[7]), .ZN(n26) );
  CKND1 U59 ( .I(scaled_product[8]), .ZN(n24) );
  CKND1 U60 ( .I(scaled_product[10]), .ZN(n20) );
  CKND1 U61 ( .I(scaled_product[11]), .ZN(n18) );
  CKND1 U62 ( .I(scaled_product[12]), .ZN(n16) );
  CKND1 U63 ( .I(scaled_product[13]), .ZN(n14) );
  CKND1 U64 ( .I(scaled_product[14]), .ZN(n10) );
  CKND1 U65 ( .I(scaled_product[23]), .ZN(n39) );
  CKND1 U66 ( .I(scaled_product[24]), .ZN(n37) );
  CKND1 U67 ( .I(scaled_product[25]), .ZN(n35) );
  CKND1 U68 ( .I(scaled_product[26]), .ZN(n33) );
  CKND1 U69 ( .I(scaled_product[27]), .ZN(n30) );
  CKND1 U70 ( .I(scaled_product[22]), .ZN(n41) );
  CKND1 U71 ( .I(scaled_product[21]), .ZN(n43) );
  CKND1 U72 ( .I(scaled_product[20]), .ZN(n45) );
  CKND1 U73 ( .I(scaled_product[19]), .ZN(n47) );
  CKND1 U74 ( .I(scaled_product[18]), .ZN(n49) );
  CKND1 U75 ( .I(scaled_product[17]), .ZN(n7) );
  CKND1 U76 ( .I(scaled_product[16]), .ZN(n4) );
  CKND1 U77 ( .I(scaled_product[15]), .ZN(n12) );
  CKND1 U78 ( .I(scaled_product[28]), .ZN(n31) );
  INVD1 U79 ( .I(scaled_product[30]), .ZN(n28) );
  INVD1 U80 ( .I(scaled_product[29]), .ZN(n27) );
endmodule


module oadm_fixed_l0_div_opt ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;


  oadm_multilevel_opt_FIXED_LEVEL0 impl ( .x(x), .y(y), .level({1'b0, 1'b0}), 
        .divide_mode(1'b0), .result(result) );
endmodule

