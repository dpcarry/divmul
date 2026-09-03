/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Thu Sep  3 12:52:38 2026
/////////////////////////////////////////////////////////////


module oadm_fixed_mul_plane_root_opt_LEVEL0_RESIDUAL_DROP12 ( x_mantissa, 
        y_mantissa, plane_value );
  input [23:0] x_mantissa;
  input [23:0] y_mantissa;
  output [28:0] plane_value;
  wire   y_product_16_, y_product_14_, y_product_13_, y_product_12_,
         y_product_11_, y_product_10_, y_product_9_, y_product_8_,
         y_product_7_, y_product_6_, y_product_5_, y_product_4_, N51, N50, N49,
         N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N24, N23, N22,
         N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, mult_35_n11,
         mult_35_n10, mult_35_n9, mult_35_n8, mult_35_n7, mult_35_n6,
         mult_35_n5, mult_35_n4, mult_35_n3, mult_33_n11, mult_33_n10,
         mult_33_n9, mult_33_n8, mult_33_n7, mult_33_n6, mult_33_n5,
         mult_33_n4, mult_33_n3, add_1_root_add_56_3_carry_13_, n140, n150,
         n160, n170, n180, n190, n200, n210, n220, n230, n240, n25;
  wire   [16:13] x_product;
  wire   [24:13] add_0_root_add_56_3_carry;

  HA1D0 mult_35_U13 ( .A(y_mantissa[13]), .B(y_mantissa[12]), .CO(mult_35_n11), 
        .S(y_product_4_) );
  FA1D0 mult_35_U12 ( .A(y_mantissa[14]), .B(y_mantissa[13]), .CI(mult_35_n11), 
        .CO(mult_35_n10), .S(y_product_5_) );
  FA1D0 mult_35_U11 ( .A(y_mantissa[15]), .B(y_mantissa[14]), .CI(mult_35_n10), 
        .CO(mult_35_n9), .S(y_product_6_) );
  FA1D0 mult_35_U10 ( .A(y_mantissa[16]), .B(y_mantissa[15]), .CI(mult_35_n9), 
        .CO(mult_35_n8), .S(y_product_7_) );
  FA1D0 mult_35_U9 ( .A(y_mantissa[17]), .B(y_mantissa[16]), .CI(mult_35_n8), 
        .CO(mult_35_n7), .S(y_product_8_) );
  FA1D0 mult_35_U8 ( .A(y_mantissa[18]), .B(y_mantissa[17]), .CI(mult_35_n7), 
        .CO(mult_35_n6), .S(y_product_9_) );
  FA1D0 mult_35_U7 ( .A(y_mantissa[19]), .B(y_mantissa[18]), .CI(mult_35_n6), 
        .CO(mult_35_n5), .S(y_product_10_) );
  FA1D0 mult_35_U6 ( .A(y_mantissa[20]), .B(y_mantissa[19]), .CI(mult_35_n5), 
        .CO(mult_35_n4), .S(y_product_11_) );
  FA1D0 mult_35_U5 ( .A(y_mantissa[21]), .B(y_mantissa[20]), .CI(mult_35_n4), 
        .CO(mult_35_n3), .S(y_product_12_) );
  FA1D0 mult_35_U4 ( .A(y_mantissa[21]), .B(y_product_16_), .CI(mult_35_n3), 
        .CO(y_product_14_), .S(y_product_13_) );
  HA1D0 mult_33_U13 ( .A(x_mantissa[13]), .B(x_mantissa[12]), .CO(mult_33_n11), 
        .S(N12) );
  FA1D0 mult_33_U12 ( .A(x_mantissa[14]), .B(x_mantissa[13]), .CI(mult_33_n11), 
        .CO(mult_33_n10), .S(N13) );
  FA1D0 mult_33_U11 ( .A(x_mantissa[15]), .B(x_mantissa[14]), .CI(mult_33_n10), 
        .CO(mult_33_n9), .S(N14) );
  FA1D0 mult_33_U10 ( .A(x_mantissa[16]), .B(x_mantissa[15]), .CI(mult_33_n9), 
        .CO(mult_33_n8), .S(N15) );
  FA1D0 mult_33_U9 ( .A(x_mantissa[17]), .B(x_mantissa[16]), .CI(mult_33_n8), 
        .CO(mult_33_n7), .S(N16) );
  FA1D0 mult_33_U8 ( .A(x_mantissa[18]), .B(x_mantissa[17]), .CI(mult_33_n7), 
        .CO(mult_33_n6), .S(N17) );
  FA1D0 mult_33_U7 ( .A(x_mantissa[19]), .B(x_mantissa[18]), .CI(mult_33_n6), 
        .CO(mult_33_n5), .S(N18) );
  FA1D0 mult_33_U6 ( .A(x_mantissa[20]), .B(x_mantissa[19]), .CI(mult_33_n5), 
        .CO(mult_33_n4), .S(N19) );
  FA1D0 mult_33_U5 ( .A(x_mantissa[21]), .B(x_mantissa[20]), .CI(mult_33_n4), 
        .CO(mult_33_n3), .S(N20) );
  FA1D0 mult_33_U4 ( .A(x_mantissa[21]), .B(x_product[16]), .CI(mult_33_n3), 
        .CO(x_product[14]), .S(x_product[13]) );
  AN2XD1 U17 ( .A1(x_mantissa[12]), .A2(N38), .Z(n140) );
  FA1D0 U18 ( .A(N22), .B(N49), .CI(add_0_root_add_56_3_carry[22]), .CO(
        add_0_root_add_56_3_carry[23]), .S(plane_value[22]) );
  FA1D0 U19 ( .A(N21), .B(N48), .CI(add_0_root_add_56_3_carry[21]), .CO(
        add_0_root_add_56_3_carry[22]), .S(plane_value[21]) );
  INVD1 U20 ( .I(x_product[13]), .ZN(N21) );
  FA1D0 U21 ( .A(N20), .B(N47), .CI(add_0_root_add_56_3_carry[20]), .CO(
        add_0_root_add_56_3_carry[21]), .S(plane_value[20]) );
  FA1D0 U22 ( .A(N19), .B(N46), .CI(add_0_root_add_56_3_carry[19]), .CO(
        add_0_root_add_56_3_carry[20]), .S(plane_value[19]) );
  AN2XD1 U23 ( .A1(n160), .A2(y_product_13_), .Z(n150) );
  FA1D0 U24 ( .A(N18), .B(N45), .CI(add_0_root_add_56_3_carry[18]), .CO(
        add_0_root_add_56_3_carry[19]), .S(plane_value[18]) );
  AN2XD1 U25 ( .A1(n180), .A2(y_product_12_), .Z(n160) );
  AN2XD1 U26 ( .A1(n150), .A2(y_product_14_), .Z(n170) );
  FA1D0 U27 ( .A(N17), .B(N44), .CI(add_0_root_add_56_3_carry[17]), .CO(
        add_0_root_add_56_3_carry[18]), .S(plane_value[17]) );
  AN2XD1 U28 ( .A1(n200), .A2(y_product_11_), .Z(n180) );
  FA1D0 U29 ( .A(N16), .B(N43), .CI(add_0_root_add_56_3_carry[16]), .CO(
        add_0_root_add_56_3_carry[17]), .S(plane_value[16]) );
  FA1D0 U30 ( .A(N15), .B(N42), .CI(add_0_root_add_56_3_carry[15]), .CO(
        add_0_root_add_56_3_carry[16]), .S(plane_value[15]) );
  AN2XD1 U31 ( .A1(x_product[13]), .A2(x_product[14]), .Z(n190) );
  AN2XD1 U32 ( .A1(n210), .A2(y_product_10_), .Z(n200) );
  FA1D0 U33 ( .A(N14), .B(N41), .CI(add_0_root_add_56_3_carry[14]), .CO(
        add_0_root_add_56_3_carry[15]), .S(plane_value[14]) );
  FA1D0 U34 ( .A(N13), .B(N40), .CI(add_0_root_add_56_3_carry[13]), .CO(
        add_0_root_add_56_3_carry[14]), .S(plane_value[13]) );
  AN2XD1 U35 ( .A1(n220), .A2(y_product_9_), .Z(n210) );
  AN2XD1 U36 ( .A1(n230), .A2(y_product_8_), .Z(n220) );
  AN2XD1 U37 ( .A1(n240), .A2(y_product_7_), .Z(n230) );
  AN2XD1 U38 ( .A1(n25), .A2(y_product_6_), .Z(n240) );
  AN2XD1 U39 ( .A1(add_1_root_add_56_3_carry_13_), .A2(y_product_5_), .Z(n25)
         );
  XOR3D1 U40 ( .A1(N24), .A2(N51), .A3(add_0_root_add_56_3_carry[24]), .Z(
        plane_value[24]) );
  FA1D0 U41 ( .A(N23), .B(N50), .CI(add_0_root_add_56_3_carry[23]), .CO(
        add_0_root_add_56_3_carry[24]), .S(plane_value[23]) );
  FA1D0 U43 ( .A(N12), .B(N39), .CI(n140), .CO(add_0_root_add_56_3_carry[13]), 
        .S(plane_value[12]) );
  INVD1 U45 ( .I(y_mantissa[12]), .ZN(N38) );
  XNR2D1 U48 ( .A1(y_mantissa[12]), .A2(y_product_4_), .ZN(N39) );
  CKXOR2D1 U50 ( .A1(N38), .A2(x_mantissa[12]), .Z(plane_value[11]) );
  CKXOR2D1 U51 ( .A1(add_1_root_add_56_3_carry_13_), .A2(y_product_5_), .Z(N40) );
  CKXOR2D1 U52 ( .A1(n25), .A2(y_product_6_), .Z(N41) );
  CKXOR2D1 U53 ( .A1(n240), .A2(y_product_7_), .Z(N42) );
  CKXOR2D1 U54 ( .A1(n230), .A2(y_product_8_), .Z(N43) );
  CKXOR2D1 U55 ( .A1(n220), .A2(y_product_9_), .Z(N44) );
  CKXOR2D1 U56 ( .A1(n210), .A2(y_product_10_), .Z(N45) );
  CKXOR2D1 U57 ( .A1(n200), .A2(y_product_11_), .Z(N46) );
  CKXOR2D1 U58 ( .A1(n180), .A2(y_product_12_), .Z(N47) );
  CKXOR2D1 U59 ( .A1(n160), .A2(y_product_13_), .Z(N48) );
  CKXOR2D1 U60 ( .A1(n150), .A2(y_product_14_), .Z(N49) );
  CKXOR2D1 U61 ( .A1(n170), .A2(y_product_16_), .Z(N50) );
  CKXOR2D1 U63 ( .A1(x_product[13]), .A2(x_product[14]), .Z(N22) );
  CKXOR2D1 U64 ( .A1(n190), .A2(x_product[16]), .Z(N23) );
  IND2D0 U3 ( .A1(n190), .B1(x_product[16]), .ZN(N24) );
  CKND0 U4 ( .I(x_mantissa[22]), .ZN(x_product[16]) );
  CKND0 U5 ( .I(y_mantissa[22]), .ZN(y_product_16_) );
  NR2D0 U6 ( .A1(y_mantissa[22]), .A2(n170), .ZN(N51) );
  OR2D0 U7 ( .A1(y_product_4_), .A2(y_mantissa[12]), .Z(
        add_1_root_add_56_3_carry_13_) );
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
  CKBD1 U30 ( .I(result_fraction[21]), .Z(result[21]) );
  CKBD1 U31 ( .I(result_fraction[15]), .Z(result[15]) );
  CKBD1 U32 ( .I(result_fraction[16]), .Z(result[16]) );
  CKBD1 U33 ( .I(result_fraction[17]), .Z(result[17]) );
  CKBD1 U34 ( .I(result_fraction[18]), .Z(result[18]) );
  CKBD1 U35 ( .I(result_fraction[19]), .Z(result[19]) );
  CKBD1 U36 ( .I(result_fraction[20]), .Z(result[20]) );
  CKBD1 U37 ( .I(result_fraction[11]), .Z(result[11]) );
  CKBD1 U38 ( .I(result_fraction[10]), .Z(result[10]) );
  CKBD1 U39 ( .I(result_fraction[13]), .Z(result[13]) );
  CKBD1 U40 ( .I(result_fraction[14]), .Z(result[14]) );
  CKBD1 U41 ( .I(result_fraction[12]), .Z(result[12]) );
  FA1D0 U42 ( .A(N28), .B(exponent_adjust[1]), .CI(n1), .CO(
        add_0_root_add_0_root_add_25_2_carry[2]), .S(result[24]) );
  FA1D0 U43 ( .A(N29), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[2]), .CO(
        add_0_root_add_0_root_add_25_2_carry[3]), .S(result[25]) );
  FA1D0 U44 ( .A(N30), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[3]), .CO(
        add_0_root_add_0_root_add_25_2_carry[4]), .S(result[26]) );
  FA1D0 U45 ( .A(N31), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[4]), .CO(
        add_0_root_add_0_root_add_25_2_carry[5]), .S(result[27]) );
  FA1D0 U46 ( .A(N32), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[5]), .CO(
        add_0_root_add_0_root_add_25_2_carry[6]), .S(result[28]) );
  FA1D0 U47 ( .A(N33), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[6]), .CO(
        add_0_root_add_0_root_add_25_2_carry[7]), .S(result[29]) );
  XOR3D1 U56 ( .A1(N34), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_25_2_carry[7]), .Z(result[30]) );
  AN2XD1 U64 ( .A1(y[23]), .A2(y[24]), .Z(n4) );
  AN2XD1 U65 ( .A1(n4), .A2(y[25]), .Z(n5) );
  AN2XD1 U66 ( .A1(n5), .A2(y[26]), .Z(n6) );
  AN2XD1 U67 ( .A1(n6), .A2(y[27]), .Z(n7) );
  AN2XD1 U68 ( .A1(n7), .A2(y[28]), .Z(n8) );
  CKBD1 U86 ( .I(x[22]), .Z(fraction_x[22]) );
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
  CKBD1 U97 ( .I(y[22]), .Z(fraction_y[22]) );
  CKBD1 U98 ( .I(y[21]), .Z(fraction_y[21]) );
  CKBD1 U99 ( .I(y[20]), .Z(fraction_y[20]) );
  CKBD1 U100 ( .I(y[19]), .Z(fraction_y[19]) );
  CKBD1 U101 ( .I(y[18]), .Z(fraction_y[18]) );
  CKBD1 U102 ( .I(y[17]), .Z(fraction_y[17]) );
  CKBD1 U103 ( .I(y[16]), .Z(fraction_y[16]) );
  CKBD1 U104 ( .I(y[15]), .Z(fraction_y[15]) );
  CKBD1 U105 ( .I(y[14]), .Z(fraction_y[14]) );
  CKBD1 U106 ( .I(y[13]), .Z(fraction_y[13]) );
  CKBD1 U107 ( .I(y[12]), .Z(fraction_y[12]) );
  CKBD1 U108 ( .I(result_fraction[22]), .Z(result[22]) );
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


module oadm_fixed_mul_root_opt_LEVEL0_RESIDUAL_DROP12 ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   n27, n29, n30, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15;
  wire   [22:12] x_mantissa;
  wire   [22:12] y_mantissa;
  wire   [24:11] core_value;
  wire   [22:10] normalized_fraction;
  wire   [2:0] exponent_adjust;
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
        SYNOPSYS_UNCONNECTED__48;

  oadm_fixed_mul_plane_root_opt_LEVEL0_RESIDUAL_DROP12 plane ( .x_mantissa({
        1'b0, x_mantissa, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0}), .y_mantissa({1'b0, y_mantissa, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .plane_value({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, core_value, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14}) );
  fp32_normal_finite_wrapper fp_wrapper ( .x({x[31:12], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y({y[31:12], 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .divide_mode(1'b0), .fraction_x({x_mantissa, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26}), .fraction_y({y_mantissa, 
        SYNOPSYS_UNCONNECTED__27, SYNOPSYS_UNCONNECTED__28, 
        SYNOPSYS_UNCONNECTED__29, SYNOPSYS_UNCONNECTED__30, 
        SYNOPSYS_UNCONNECTED__31, SYNOPSYS_UNCONNECTED__32, 
        SYNOPSYS_UNCONNECTED__33, SYNOPSYS_UNCONNECTED__34, 
        SYNOPSYS_UNCONNECTED__35, SYNOPSYS_UNCONNECTED__36, 
        SYNOPSYS_UNCONNECTED__37, SYNOPSYS_UNCONNECTED__38}), 
        .result_fraction({normalized_fraction, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .exponent_adjust({exponent_adjust[2], 
        exponent_adjust[2], exponent_adjust[0]}), .result({result[31:10], 
        SYNOPSYS_UNCONNECTED__39, SYNOPSYS_UNCONNECTED__40, 
        SYNOPSYS_UNCONNECTED__41, SYNOPSYS_UNCONNECTED__42, 
        SYNOPSYS_UNCONNECTED__43, SYNOPSYS_UNCONNECTED__44, 
        SYNOPSYS_UNCONNECTED__45, SYNOPSYS_UNCONNECTED__46, 
        SYNOPSYS_UNCONNECTED__47, SYNOPSYS_UNCONNECTED__48}) );
  NR3D0 U3 ( .A1(core_value[23]), .A2(core_value[24]), .A3(n4), .ZN(n30) );
  NR3D0 U4 ( .A1(core_value[23]), .A2(core_value[24]), .A3(core_value[22]), 
        .ZN(n29) );
  IND2D1 U5 ( .A1(n29), .B1(n2), .ZN(exponent_adjust[2]) );
  INVD1 U6 ( .I(n30), .ZN(n2) );
  ND2D1 U7 ( .A1(n1), .A2(n2), .ZN(exponent_adjust[0]) );
  INVD1 U8 ( .I(core_value[22]), .ZN(n4) );
  OAI221D0 U9 ( .A1(n27), .A2(n5), .B1(n4), .B2(n1), .C(n39), .ZN(
        normalized_fraction[21]) );
  AOI22D1 U10 ( .A1(core_value[19]), .A2(n29), .B1(core_value[20]), .B2(n30), 
        .ZN(n39) );
  OAI221D0 U11 ( .A1(n27), .A2(n11), .B1(n1), .B2(n10), .C(n45), .ZN(
        normalized_fraction[15]) );
  AOI22D1 U12 ( .A1(core_value[13]), .A2(n29), .B1(core_value[14]), .B2(n30), 
        .ZN(n45) );
  OAI221D0 U13 ( .A1(n27), .A2(n10), .B1(n1), .B2(n9), .C(n44), .ZN(
        normalized_fraction[16]) );
  AOI22D1 U14 ( .A1(core_value[14]), .A2(n29), .B1(core_value[15]), .B2(n30), 
        .ZN(n44) );
  OAI221D0 U15 ( .A1(n27), .A2(n9), .B1(n1), .B2(n8), .C(n43), .ZN(
        normalized_fraction[17]) );
  AOI22D1 U16 ( .A1(core_value[15]), .A2(n29), .B1(core_value[16]), .B2(n30), 
        .ZN(n43) );
  OAI221D0 U17 ( .A1(n27), .A2(n8), .B1(n1), .B2(n7), .C(n42), .ZN(
        normalized_fraction[18]) );
  AOI22D1 U18 ( .A1(core_value[16]), .A2(n29), .B1(core_value[17]), .B2(n30), 
        .ZN(n42) );
  OAI221D0 U19 ( .A1(n27), .A2(n7), .B1(n1), .B2(n6), .C(n41), .ZN(
        normalized_fraction[19]) );
  AOI22D1 U20 ( .A1(core_value[17]), .A2(n29), .B1(core_value[18]), .B2(n30), 
        .ZN(n41) );
  OAI221D0 U21 ( .A1(n27), .A2(n6), .B1(n1), .B2(n5), .C(n40), .ZN(
        normalized_fraction[20]) );
  AOI22D1 U22 ( .A1(core_value[18]), .A2(n29), .B1(core_value[19]), .B2(n30), 
        .ZN(n40) );
  OAI22D1 U23 ( .A1(n27), .A2(n15), .B1(n1), .B2(n14), .ZN(
        normalized_fraction[11]) );
  NR2D1 U24 ( .A1(n1), .A2(n15), .ZN(normalized_fraction[10]) );
  INVD1 U25 ( .I(core_value[21]), .ZN(n5) );
  INVD1 U26 ( .I(core_value[20]), .ZN(n6) );
  INVD1 U27 ( .I(core_value[19]), .ZN(n7) );
  INVD1 U28 ( .I(core_value[18]), .ZN(n8) );
  INVD1 U29 ( .I(core_value[17]), .ZN(n9) );
  INVD1 U30 ( .I(core_value[16]), .ZN(n10) );
  INVD1 U31 ( .I(core_value[15]), .ZN(n11) );
  INVD1 U32 ( .I(core_value[14]), .ZN(n12) );
  INVD1 U33 ( .I(core_value[13]), .ZN(n13) );
  INVD1 U34 ( .I(core_value[24]), .ZN(n1) );
  OAI221D0 U35 ( .A1(n27), .A2(n13), .B1(n1), .B2(n12), .C(n47), .ZN(
        normalized_fraction[13]) );
  AOI22D1 U36 ( .A1(core_value[11]), .A2(n29), .B1(core_value[12]), .B2(n30), 
        .ZN(n47) );
  OAI221D0 U37 ( .A1(n27), .A2(n12), .B1(n1), .B2(n11), .C(n46), .ZN(
        normalized_fraction[14]) );
  AOI22D1 U38 ( .A1(core_value[12]), .A2(n29), .B1(core_value[13]), .B2(n30), 
        .ZN(n46) );
  OAI221D0 U39 ( .A1(n4), .A2(n27), .B1(n3), .B2(n1), .C(n38), .ZN(
        normalized_fraction[22]) );
  INVD1 U40 ( .I(core_value[23]), .ZN(n3) );
  AOI22D1 U41 ( .A1(core_value[20]), .A2(n29), .B1(core_value[21]), .B2(n30), 
        .ZN(n38) );
  ND2D1 U42 ( .A1(core_value[23]), .A2(n1), .ZN(n27) );
  OAI221D0 U43 ( .A1(n27), .A2(n14), .B1(n1), .B2(n13), .C(n48), .ZN(
        normalized_fraction[12]) );
  ND2D1 U44 ( .A1(core_value[11]), .A2(n30), .ZN(n48) );
  INVD1 U45 ( .I(core_value[12]), .ZN(n14) );
  INVD1 U46 ( .I(core_value[11]), .ZN(n15) );
endmodule


module oadm_fixed_l0_mul_root_opt_accuracy ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;

  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9;
  assign result[9] = 1'b0;
  assign result[8] = 1'b0;
  assign result[7] = 1'b0;
  assign result[6] = 1'b0;
  assign result[5] = 1'b0;
  assign result[4] = 1'b0;
  assign result[3] = 1'b0;
  assign result[2] = 1'b0;
  assign result[1] = 1'b0;
  assign result[0] = 1'b0;

  oadm_fixed_mul_root_opt_LEVEL0_RESIDUAL_DROP12 impl ( .x({x[31:12], 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .y({y[31:12], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0}), .result({result[31:10], SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9}) );
endmodule

