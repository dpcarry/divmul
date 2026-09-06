/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Sun Sep  6 00:11:59 2026
/////////////////////////////////////////////////////////////


module fp32_normal_finite_wrapper_DW01_add_3_DW01_add_13 ( A, B, CI, SUM, CO
 );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [7:2] carry;

  FA1D0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1D0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1D0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1D0 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA1D0 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  FA1D0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  XOR3D1 U1_7 ( .A1(A[7]), .A2(B[7]), .A3(carry[7]), .Z(SUM[7]) );
  AN2XD1 U1 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
  CKXOR2D1 U2 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
endmodule


module fp32_normal_finite_wrapper_DW01_add_1_DW01_add_11 ( A, B, CI, SUM, CO
 );
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
  CKAN2D1 U1 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
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
  wire   N19, N20, N21, N22, N23, N24, N25, N26, N43, N44, N45, N46, N47, N48,
         N49, N50, N42, N41, N40, N39, N38, N37, N36, N34, N33, N32, N31, N30,
         N29, N28, N27, N9, N8, N7, N6, N5, N4, N3, N17, N16, N15, N14, N13,
         N12, N11, N10, n1, n2, n35, n410, n51, n60, n70, n77, n78, n79;
  wire   [7:2] add_0_root_add_0_root_add_22_2_carry;
  wire   [7:2] add_0_root_add_0_root_add_25_2_carry;

  CKXOR2D1 U2 ( .A1(y[31]), .A2(x[31]), .Z(result[31]) );
  fp32_normal_finite_wrapper_DW01_add_3_DW01_add_13 add_1_root_add_0_root_add_25_2 ( 
        .A(x[30:23]), .B({N42, N41, N40, N39, N38, N37, N36, N11}), .CI(n79), 
        .SUM({N34, N33, N32, N31, N30, N29, N28, N27}) );
  fp32_normal_finite_wrapper_DW01_add_1_DW01_add_11 add_1_root_add_0_root_add_22_2 ( 
        .A(x[30:23]), .B({y[30], N17, N16, N15, N14, N13, N12, N11}), .CI(n79), 
        .SUM({N10, N9, N8, N7, N6, N5, N4, N3}) );
  AN2XD1 U3 ( .A1(exponent_adjust[0]), .A2(N3), .Z(n1) );
  AN2XD1 U4 ( .A1(exponent_adjust[0]), .A2(N27), .Z(n2) );
  INVD1 U37 ( .I(divide_mode), .ZN(n78) );
  CKBD1 U38 ( .I(result_fraction[13]), .Z(result[13]) );
  CKBD1 U39 ( .I(result_fraction[12]), .Z(result[12]) );
  CKBD1 U40 ( .I(result_fraction[11]), .Z(result[11]) );
  CKBD1 U41 ( .I(result_fraction[10]), .Z(result[10]) );
  AO22D0 U42 ( .A1(N49), .A2(n78), .B1(N25), .B2(divide_mode), .Z(result[29])
         );
  AO22D0 U43 ( .A1(N48), .A2(n78), .B1(N24), .B2(divide_mode), .Z(result[28])
         );
  AO22D0 U44 ( .A1(N47), .A2(n78), .B1(N23), .B2(divide_mode), .Z(result[27])
         );
  AO22D0 U45 ( .A1(N46), .A2(n78), .B1(N22), .B2(divide_mode), .Z(result[26])
         );
  AO22D0 U46 ( .A1(N45), .A2(n78), .B1(N21), .B2(divide_mode), .Z(result[25])
         );
  AO22D0 U47 ( .A1(N44), .A2(n78), .B1(N20), .B2(divide_mode), .Z(result[24])
         );
  FA1D0 U48 ( .A(N4), .B(exponent_adjust[1]), .CI(n1), .CO(
        add_0_root_add_0_root_add_22_2_carry[2]), .S(N20) );
  FA1D0 U49 ( .A(N5), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[2]), .CO(
        add_0_root_add_0_root_add_22_2_carry[3]), .S(N21) );
  FA1D0 U50 ( .A(N6), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[3]), .CO(
        add_0_root_add_0_root_add_22_2_carry[4]), .S(N22) );
  FA1D0 U51 ( .A(N7), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[4]), .CO(
        add_0_root_add_0_root_add_22_2_carry[5]), .S(N23) );
  FA1D0 U52 ( .A(N8), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[5]), .CO(
        add_0_root_add_0_root_add_22_2_carry[6]), .S(N24) );
  FA1D0 U53 ( .A(N9), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[6]), .CO(
        add_0_root_add_0_root_add_22_2_carry[7]), .S(N25) );
  FA1D0 U54 ( .A(N28), .B(exponent_adjust[1]), .CI(n2), .CO(
        add_0_root_add_0_root_add_25_2_carry[2]), .S(N44) );
  FA1D0 U55 ( .A(N29), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[2]), .CO(
        add_0_root_add_0_root_add_25_2_carry[3]), .S(N45) );
  FA1D0 U56 ( .A(N30), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[3]), .CO(
        add_0_root_add_0_root_add_25_2_carry[4]), .S(N46) );
  FA1D0 U57 ( .A(N31), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[4]), .CO(
        add_0_root_add_0_root_add_25_2_carry[5]), .S(N47) );
  FA1D0 U58 ( .A(N32), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[5]), .CO(
        add_0_root_add_0_root_add_25_2_carry[6]), .S(N48) );
  FA1D0 U59 ( .A(N33), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[6]), .CO(
        add_0_root_add_0_root_add_25_2_carry[7]), .S(N49) );
  AO22D0 U60 ( .A1(N43), .A2(n78), .B1(N19), .B2(divide_mode), .Z(result[23])
         );
  AO22D0 U61 ( .A1(N50), .A2(n78), .B1(divide_mode), .B2(N26), .Z(result[30])
         );
  XOR3D1 U62 ( .A1(N34), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_25_2_carry[7]), .Z(N50) );
  XOR3D1 U63 ( .A1(N10), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_22_2_carry[7]), .Z(N26) );
  AN2XD1 U64 ( .A1(y[23]), .A2(y[24]), .Z(n35) );
  INVD1 U65 ( .I(y[29]), .ZN(N17) );
  INVD0 U66 ( .I(y[24]), .ZN(N12) );
  INVD1 U67 ( .I(y[25]), .ZN(N13) );
  INVD1 U68 ( .I(y[26]), .ZN(N14) );
  INVD1 U69 ( .I(y[27]), .ZN(N15) );
  INVD1 U70 ( .I(y[28]), .ZN(N16) );
  AN2XD1 U71 ( .A1(n35), .A2(y[25]), .Z(n410) );
  AN2XD1 U72 ( .A1(n410), .A2(y[26]), .Z(n51) );
  AN2XD1 U73 ( .A1(n51), .A2(y[27]), .Z(n60) );
  AN2XD1 U74 ( .A1(n60), .A2(y[28]), .Z(n70) );
  CKXOR2D1 U75 ( .A1(y[30]), .A2(n77), .Z(N42) );
  ND2D1 U76 ( .A1(n70), .A2(y[29]), .ZN(n77) );
  CKBD1 U87 ( .I(x[22]), .Z(fraction_x[22]) );
  CKBD1 U88 ( .I(x[21]), .Z(fraction_x[21]) );
  CKBD1 U89 ( .I(x[20]), .Z(fraction_x[20]) );
  CKBD1 U90 ( .I(x[19]), .Z(fraction_x[19]) );
  CKBD1 U91 ( .I(x[18]), .Z(fraction_x[18]) );
  CKBD1 U92 ( .I(x[17]), .Z(fraction_x[17]) );
  CKBD1 U93 ( .I(x[16]), .Z(fraction_x[16]) );
  CKBD1 U94 ( .I(y[22]), .Z(fraction_y[22]) );
  CKBD1 U95 ( .I(y[21]), .Z(fraction_y[21]) );
  CKBD1 U96 ( .I(y[20]), .Z(fraction_y[20]) );
  CKBD1 U97 ( .I(y[19]), .Z(fraction_y[19]) );
  CKBD1 U98 ( .I(y[18]), .Z(fraction_y[18]) );
  CKBD1 U99 ( .I(y[17]), .Z(fraction_y[17]) );
  CKBD1 U100 ( .I(y[16]), .Z(fraction_y[16]) );
  CKBD1 U101 ( .I(result_fraction[22]), .Z(result[22]) );
  CKBD1 U102 ( .I(result_fraction[21]), .Z(result[21]) );
  CKBD1 U103 ( .I(result_fraction[20]), .Z(result[20]) );
  CKBD1 U104 ( .I(result_fraction[19]), .Z(result[19]) );
  CKBD1 U105 ( .I(result_fraction[18]), .Z(result[18]) );
  CKBD1 U106 ( .I(result_fraction[17]), .Z(result[17]) );
  CKBD1 U107 ( .I(result_fraction[16]), .Z(result[16]) );
  CKBD1 U108 ( .I(result_fraction[15]), .Z(result[15]) );
  CKBD1 U109 ( .I(result_fraction[14]), .Z(result[14]) );
  TIEL U110 ( .ZN(n79) );
  CKXOR2D1 U111 ( .A1(exponent_adjust[0]), .A2(N3), .Z(N19) );
  CKXOR2D1 U112 ( .A1(exponent_adjust[0]), .A2(N27), .Z(N43) );
  CKXOR2D1 U113 ( .A1(y[23]), .A2(y[24]), .Z(N36) );
  CKXOR2D1 U114 ( .A1(n35), .A2(y[25]), .Z(N37) );
  CKXOR2D1 U115 ( .A1(n410), .A2(y[26]), .Z(N38) );
  CKXOR2D1 U116 ( .A1(n51), .A2(y[27]), .Z(N39) );
  CKXOR2D1 U117 ( .A1(n60), .A2(y[28]), .Z(N40) );
  CKXOR2D1 U118 ( .A1(n70), .A2(y[29]), .Z(N41) );
  CKND0 U119 ( .I(y[23]), .ZN(N11) );
endmodule


module oadm_fixed_divmul_root_opt_binary_0_18_16_18_7_3b ( x, y, divide_mode, 
        result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  input divide_mode;
  wire   x_shared_residual_1_, y_shared_residual_1_, N32, N33, N34, N35, N36,
         N37, N38, N39, N40, N41, N57, N58, N59, N60, N61, N62, N63, N64, N65,
         n340, n51, n52, n53, n54, n55, n56, n570, n580, n590, n600, n610,
         n630, n640, n650, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75,
         n76, n77, sa_sum_0_3_9_, sa_sum_0_3_8_, sa_sum_0_3_7_, sa_sum_0_3_6_,
         sa_sum_0_3_5_, sa_sum_0_3_11_, sa_sum_0_3_10_, sa_sum_0_2_9_,
         sa_sum_0_2_8_, sa_sum_0_2_7_, sa_sum_0_2_6_, sa_sum_0_2_5_,
         sa_sum_0_2_4_, sa_sum_0_2_3_, sa_sum_0_2_2_, sa_sum_0_2_1_,
         x_product_9_, x_product_8_, x_product_7_, x_product_6_, x_product_5_,
         x_product_4_, x_product_3_, x_product_12_, x_product_10_, N91, N90,
         N89, N88, N87, N86, N85, N84, N83, mult_63_n7, mult_63_n6, mult_63_n5,
         mult_63_n4, mult_63_n3, mult_61_n7, mult_61_n6, mult_61_n5,
         mult_61_n4, mult_61_n3, add_0_root_add_0_root_add_130_carry_6_,
         add_0_root_add_0_root_add_130_carry_7_,
         add_0_root_add_0_root_add_130_carry_8_,
         add_0_root_add_0_root_add_130_carry_9_,
         add_0_root_add_0_root_add_130_carry_10_,
         add_0_root_add_0_root_add_130_carry_11_,
         add_0_root_add_0_root_add_130_carry_12_,
         add_0_root_add_0_root_add_130_B_4_,
         add_0_root_add_0_root_add_130_B_5_,
         add_0_root_add_0_root_add_130_B_6_,
         add_0_root_add_0_root_add_130_B_7_,
         add_0_root_add_0_root_add_130_B_8_,
         add_0_root_add_0_root_add_130_B_9_,
         add_0_root_add_0_root_add_130_B_10_,
         add_1_root_add_0_root_add_130_carry_3_,
         add_1_root_add_0_root_add_130_carry_4_,
         add_1_root_add_0_root_add_130_carry_5_,
         add_1_root_add_0_root_add_130_carry_6_,
         add_1_root_add_0_root_add_130_carry_7_,
         add_1_root_add_0_root_add_130_B_2_,
         add_1_root_add_0_root_add_130_B_3_,
         add_1_root_add_0_root_add_130_B_4_,
         add_1_root_add_0_root_add_130_B_5_,
         add_1_root_add_0_root_add_130_B_6_, n1, n2, n3, n4, n5, n6, n7, n9,
         n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n31, n320, n330, n350, n360, n370, n380,
         n390, n400, n410, n42, n43, n45, n47, n48;
  wire   [22:16] x_mantissa;
  wire   [22:16] y_mantissa;
  wire   [12:4] y_product;
  wire   [17:15] plane_value;
  wire   [12:1] sa_sum_2_0;
  wire   [22:10] normalized_fraction;
  wire   [2:0] exponent_adjust;
  wire   [24:17] add_0_root_add_0_root_add_80_3_carry;
  wire   [22:17] add_1_root_add_0_root_add_80_3_carry;
  wire   [11:7] add_2_root_add_0_root_add_130_carry;
  wire   [8:5] add_3_root_add_0_root_add_130_carry;
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
        SYNOPSYS_UNCONNECTED__40, SYNOPSYS_UNCONNECTED__41;

  fp32_normal_finite_wrapper fp_wrapper ( .x({x[31:16], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y({y[31:16], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .divide_mode(n31), .fraction_x({
        x_mantissa, SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15}), .fraction_y({
        y_mantissa, SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31}), 
        .result_fraction({normalized_fraction, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .exponent_adjust({exponent_adjust[2], 
        exponent_adjust[2], exponent_adjust[0]}), .result({result[31:10], 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, 
        SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39, 
        SYNOPSYS_UNCONNECTED__40, SYNOPSYS_UNCONNECTED__41}) );
  HA1D0 mult_63_U9 ( .A(y_shared_residual_1_), .B(N32), .CO(mult_63_n7), .S(
        y_product[4]) );
  FA1D0 mult_63_U8 ( .A(y_mantissa[18]), .B(y_shared_residual_1_), .CI(
        mult_63_n7), .CO(mult_63_n6), .S(y_product[5]) );
  FA1D0 mult_63_U7 ( .A(y_mantissa[19]), .B(y_mantissa[18]), .CI(mult_63_n6), 
        .CO(mult_63_n5), .S(y_product[6]) );
  FA1D0 mult_63_U6 ( .A(y_mantissa[20]), .B(y_mantissa[19]), .CI(mult_63_n5), 
        .CO(mult_63_n4), .S(y_product[7]) );
  FA1D0 mult_63_U5 ( .A(y_mantissa[21]), .B(y_mantissa[20]), .CI(mult_63_n4), 
        .CO(mult_63_n3), .S(y_product[8]) );
  FA1D0 mult_63_U4 ( .A(y_mantissa[21]), .B(y_product[12]), .CI(mult_63_n3), 
        .CO(y_product[10]), .S(y_product[9]) );
  HA1D0 mult_61_U9 ( .A(x_shared_residual_1_), .B(x_product_3_), .CO(
        mult_61_n7), .S(x_product_4_) );
  FA1D0 mult_61_U8 ( .A(x_mantissa[18]), .B(x_shared_residual_1_), .CI(
        mult_61_n7), .CO(mult_61_n6), .S(x_product_5_) );
  FA1D0 mult_61_U7 ( .A(x_mantissa[19]), .B(x_mantissa[18]), .CI(mult_61_n6), 
        .CO(mult_61_n5), .S(x_product_6_) );
  FA1D0 mult_61_U6 ( .A(x_mantissa[20]), .B(x_mantissa[19]), .CI(mult_61_n5), 
        .CO(mult_61_n4), .S(x_product_7_) );
  FA1D0 mult_61_U5 ( .A(x_mantissa[21]), .B(x_mantissa[20]), .CI(mult_61_n4), 
        .CO(mult_61_n3), .S(x_product_8_) );
  FA1D0 mult_61_U4 ( .A(x_mantissa[21]), .B(x_product_12_), .CI(mult_61_n3), 
        .CO(x_product_10_), .S(x_product_9_) );
  AN2XD1 U4 ( .A1(add_0_root_add_0_root_add_130_carry_12_), .A2(n28), .Z(n1)
         );
  AN2XD1 U5 ( .A1(sa_sum_0_2_1_), .A2(add_0_root_add_0_root_add_130_B_4_), .Z(
        n2) );
  AN2XD1 U6 ( .A1(add_1_root_add_0_root_add_130_B_2_), .A2(sa_sum_0_2_1_), .Z(
        n3) );
  AN2XD1 U7 ( .A1(x_product_3_), .A2(n320), .Z(n4) );
  AN2XD1 U8 ( .A1(sa_sum_0_2_1_), .A2(sa_sum_0_2_2_), .Z(n5) );
  AN2XD1 U9 ( .A1(n15), .A2(n24), .Z(n6) );
  AN2XD1 U12 ( .A1(sa_sum_0_2_2_), .A2(sa_sum_0_2_1_), .Z(n9) );
  ND2D1 U13 ( .A1(n42), .A2(n55), .ZN(exponent_adjust[2]) );
  INVD1 U14 ( .I(n340), .ZN(n42) );
  INVD1 U15 ( .I(n77), .ZN(n45) );
  INR3D0 U16 ( .A1(n53), .B1(n51), .B2(n43), .ZN(n340) );
  FA1D0 U17 ( .A(add_1_root_add_0_root_add_130_B_4_), .B(
        add_1_root_add_0_root_add_130_B_2_), .CI(
        add_3_root_add_0_root_add_130_carry[5]), .CO(
        add_3_root_add_0_root_add_130_carry[6]), .S(sa_sum_0_2_5_) );
  FA1D0 U18 ( .A(sa_sum_0_3_7_), .B(add_0_root_add_0_root_add_130_B_7_), .CI(
        add_0_root_add_0_root_add_130_carry_7_), .CO(
        add_0_root_add_0_root_add_130_carry_8_), .S(sa_sum_2_0[7]) );
  FA1D0 U19 ( .A(sa_sum_0_3_8_), .B(add_0_root_add_0_root_add_130_B_8_), .CI(
        add_0_root_add_0_root_add_130_carry_8_), .CO(
        add_0_root_add_0_root_add_130_carry_9_), .S(sa_sum_2_0[8]) );
  FA1D0 U20 ( .A(sa_sum_0_3_9_), .B(add_0_root_add_0_root_add_130_B_9_), .CI(
        add_0_root_add_0_root_add_130_carry_9_), .CO(
        add_0_root_add_0_root_add_130_carry_10_), .S(sa_sum_2_0[9]) );
  FA1D0 U21 ( .A(sa_sum_0_3_10_), .B(add_0_root_add_0_root_add_130_B_10_), 
        .CI(add_0_root_add_0_root_add_130_carry_10_), .CO(
        add_0_root_add_0_root_add_130_carry_11_), .S(sa_sum_2_0[10]) );
  FA1D0 U22 ( .A(sa_sum_0_3_6_), .B(add_0_root_add_0_root_add_130_B_6_), .CI(
        add_0_root_add_0_root_add_130_carry_6_), .CO(
        add_0_root_add_0_root_add_130_carry_7_), .S(sa_sum_2_0[6]) );
  FA1D0 U23 ( .A(add_1_root_add_0_root_add_130_B_3_), .B(sa_sum_0_2_2_), .CI(
        n3), .CO(add_3_root_add_0_root_add_130_carry[5]), .S(sa_sum_0_2_4_) );
  AN2XD1 U24 ( .A1(add_1_root_add_0_root_add_130_carry_7_), .A2(sa_sum_0_2_7_), 
        .Z(n10) );
  FA1D0 U25 ( .A(sa_sum_0_2_4_), .B(add_1_root_add_0_root_add_130_B_4_), .CI(
        add_1_root_add_0_root_add_130_carry_4_), .CO(
        add_1_root_add_0_root_add_130_carry_5_), .S(
        add_0_root_add_0_root_add_130_B_4_) );
  FA1D0 U26 ( .A(sa_sum_0_3_5_), .B(add_0_root_add_0_root_add_130_B_5_), .CI(
        n2), .CO(add_0_root_add_0_root_add_130_carry_6_), .S(sa_sum_2_0[5]) );
  INVD1 U27 ( .I(n52), .ZN(n43) );
  AN2XD1 U28 ( .A1(n10), .A2(sa_sum_0_2_8_), .Z(n11) );
  AN2XD1 U29 ( .A1(n13), .A2(n400), .Z(n12) );
  AN2XD1 U30 ( .A1(n14), .A2(n390), .Z(n13) );
  AN2XD1 U31 ( .A1(n16), .A2(n380), .Z(n14) );
  AN2XD1 U32 ( .A1(n11), .A2(sa_sum_0_2_9_), .Z(n15) );
  AN2XD1 U33 ( .A1(n17), .A2(n370), .Z(n16) );
  AN2XD1 U34 ( .A1(n21), .A2(n360), .Z(n17) );
  FA1D0 U35 ( .A(sa_sum_0_2_3_), .B(add_1_root_add_0_root_add_130_B_3_), .CI(
        add_1_root_add_0_root_add_130_carry_3_), .CO(
        add_1_root_add_0_root_add_130_carry_4_), .S(sa_sum_2_0[3]) );
  AN2XD1 U36 ( .A1(n12), .A2(n410), .Z(n18) );
  ND3D1 U37 ( .A1(n53), .A2(n51), .A3(n52), .ZN(n55) );
  ND2D1 U38 ( .A1(n52), .A2(n42), .ZN(exponent_adjust[0]) );
  FA1D0 U39 ( .A(sa_sum_0_2_2_), .B(add_1_root_add_0_root_add_130_B_2_), .CI(
        n5), .CO(add_1_root_add_0_root_add_130_carry_3_), .S(sa_sum_2_0[2]) );
  FA1D0 U40 ( .A(add_1_root_add_0_root_add_130_B_4_), .B(
        add_1_root_add_0_root_add_130_B_3_), .CI(
        add_2_root_add_0_root_add_130_carry[8]), .CO(
        add_2_root_add_0_root_add_130_carry[9]), .S(sa_sum_0_3_8_) );
  FA1D0 U41 ( .A(add_1_root_add_0_root_add_130_B_3_), .B(
        add_1_root_add_0_root_add_130_B_2_), .CI(
        add_2_root_add_0_root_add_130_carry[7]), .CO(
        add_2_root_add_0_root_add_130_carry[8]), .S(sa_sum_0_3_7_) );
  FA1D0 U42 ( .A(add_1_root_add_0_root_add_130_B_2_), .B(sa_sum_0_2_2_), .CI(
        n9), .CO(add_2_root_add_0_root_add_130_carry[7]), .S(sa_sum_0_3_6_) );
  OAI221D0 U43 ( .A1(n570), .A2(n19), .B1(n52), .B2(n51), .C(n580), .ZN(
        normalized_fraction[21]) );
  OA22D0 U44 ( .A1(n55), .A2(n590), .B1(n42), .B2(n56), .Z(n580) );
  OAI221D0 U45 ( .A1(n51), .A2(n19), .B1(n52), .B2(n53), .C(n54), .ZN(
        normalized_fraction[22]) );
  OA22D0 U46 ( .A1(n55), .A2(n56), .B1(n42), .B2(n570), .Z(n54) );
  OAI221D0 U47 ( .A1(n640), .A2(n19), .B1(n52), .B2(n610), .C(n67), .ZN(
        normalized_fraction[17]) );
  OA22D0 U48 ( .A1(n55), .A2(n68), .B1(n42), .B2(n66), .Z(n67) );
  OAI221D0 U49 ( .A1(n70), .A2(n19), .B1(n52), .B2(n68), .C(n73), .ZN(
        normalized_fraction[14]) );
  OA22D0 U50 ( .A1(n55), .A2(n74), .B1(n42), .B2(n72), .Z(n73) );
  OAI221D0 U51 ( .A1(n610), .A2(n19), .B1(n52), .B2(n590), .C(n650), .ZN(
        normalized_fraction[18]) );
  OA22D0 U52 ( .A1(n55), .A2(n66), .B1(n42), .B2(n640), .Z(n650) );
  OAI221D0 U53 ( .A1(n590), .A2(n19), .B1(n52), .B2(n56), .C(n630), .ZN(
        normalized_fraction[19]) );
  OA22D0 U54 ( .A1(n55), .A2(n640), .B1(n42), .B2(n610), .Z(n630) );
  OAI221D0 U55 ( .A1(n68), .A2(n19), .B1(n52), .B2(n66), .C(n71), .ZN(
        normalized_fraction[15]) );
  OA22D0 U56 ( .A1(n55), .A2(n72), .B1(n42), .B2(n70), .Z(n71) );
  OAI221D0 U57 ( .A1(n66), .A2(n19), .B1(n52), .B2(n640), .C(n69), .ZN(
        normalized_fraction[16]) );
  OA22D0 U58 ( .A1(n55), .A2(n70), .B1(n42), .B2(n68), .Z(n69) );
  OAI221D0 U59 ( .A1(n56), .A2(n19), .B1(n52), .B2(n570), .C(n600), .ZN(
        normalized_fraction[20]) );
  OA22D0 U60 ( .A1(n55), .A2(n610), .B1(n42), .B2(n590), .Z(n600) );
  OAI221D0 U62 ( .A1(n72), .A2(n19), .B1(n52), .B2(n70), .C(n75), .ZN(
        normalized_fraction[13]) );
  OR2D1 U64 ( .A1(n43), .A2(n53), .Z(n19) );
  OAI221D0 U65 ( .A1(n74), .A2(n19), .B1(n52), .B2(n72), .C(n76), .ZN(
        normalized_fraction[12]) );
  ND2D1 U66 ( .A1(n340), .A2(n45), .ZN(n76) );
  OAI22D1 U67 ( .A1(n77), .A2(n19), .B1(n52), .B2(n74), .ZN(
        normalized_fraction[11]) );
  NR2D1 U68 ( .A1(n52), .A2(n77), .ZN(normalized_fraction[10]) );
  ND2D1 U69 ( .A1(sa_sum_2_0[3]), .A2(n31), .ZN(n70) );
  ND2D1 U70 ( .A1(sa_sum_2_0[2]), .A2(n31), .ZN(n72) );
  ND2D1 U71 ( .A1(sa_sum_2_0[1]), .A2(n31), .ZN(n74) );
  ND2D1 U72 ( .A1(sa_sum_0_2_1_), .A2(n31), .ZN(n77) );
  AOI22D1 U73 ( .A1(n320), .A2(add_1_root_add_0_root_add_130_B_5_), .B1(
        sa_sum_2_0[12]), .B2(n31), .ZN(n53) );
  FA1D0 U74 ( .A(N90), .B(N64), .CI(add_0_root_add_0_root_add_80_3_carry[22]), 
        .CO(add_0_root_add_0_root_add_80_3_carry[23]), .S(
        add_1_root_add_0_root_add_130_B_4_) );
  AO22D0 U75 ( .A1(y_product[10]), .A2(n320), .B1(N39), .B2(n31), .Z(N64) );
  FA1D0 U76 ( .A(sa_sum_0_2_6_), .B(add_1_root_add_0_root_add_130_B_6_), .CI(
        add_1_root_add_0_root_add_130_carry_6_), .CO(
        add_1_root_add_0_root_add_130_carry_7_), .S(
        add_0_root_add_0_root_add_130_B_6_) );
  FA1D0 U77 ( .A(sa_sum_0_3_11_), .B(n6), .CI(
        add_0_root_add_0_root_add_130_carry_11_), .CO(
        add_0_root_add_0_root_add_130_carry_12_), .S(sa_sum_2_0[11]) );
  INVD1 U78 ( .I(n320), .ZN(n31) );
  FA1D0 U79 ( .A(add_1_root_add_0_root_add_130_B_5_), .B(
        add_1_root_add_0_root_add_130_B_3_), .CI(
        add_3_root_add_0_root_add_130_carry[6]), .CO(
        add_3_root_add_0_root_add_130_carry[7]), .S(sa_sum_0_2_6_) );
  INVD1 U80 ( .I(y_product[9]), .ZN(n400) );
  FA1D0 U81 ( .A(N89), .B(N63), .CI(add_0_root_add_0_root_add_80_3_carry[21]), 
        .CO(add_0_root_add_0_root_add_80_3_carry[22]), .S(
        add_1_root_add_0_root_add_130_B_3_) );
  AO22D0 U82 ( .A1(y_product[9]), .A2(n320), .B1(N38), .B2(n31), .Z(N63) );
  INVD1 U83 ( .I(y_product[8]), .ZN(n390) );
  FA1D0 U84 ( .A(N88), .B(N62), .CI(add_0_root_add_0_root_add_80_3_carry[20]), 
        .CO(add_0_root_add_0_root_add_80_3_carry[21]), .S(
        add_1_root_add_0_root_add_130_B_2_) );
  AO22D0 U85 ( .A1(y_product[8]), .A2(n320), .B1(N37), .B2(n31), .Z(N62) );
  FA1D0 U86 ( .A(sa_sum_0_2_5_), .B(add_1_root_add_0_root_add_130_B_5_), .CI(
        add_1_root_add_0_root_add_130_carry_5_), .CO(
        add_1_root_add_0_root_add_130_carry_6_), .S(
        add_0_root_add_0_root_add_130_B_5_) );
  FA1D0 U87 ( .A(add_1_root_add_0_root_add_130_B_6_), .B(
        add_1_root_add_0_root_add_130_B_4_), .CI(
        add_3_root_add_0_root_add_130_carry[7]), .CO(
        add_3_root_add_0_root_add_130_carry[8]), .S(sa_sum_0_2_7_) );
  INVD1 U88 ( .I(y_product[7]), .ZN(n380) );
  FA1D0 U89 ( .A(N87), .B(N61), .CI(add_0_root_add_0_root_add_80_3_carry[19]), 
        .CO(add_0_root_add_0_root_add_80_3_carry[20]), .S(sa_sum_0_2_2_) );
  AO22D0 U90 ( .A1(y_product[7]), .A2(n320), .B1(N36), .B2(n31), .Z(N61) );
  AN2XD1 U91 ( .A1(add_1_root_add_0_root_add_130_B_5_), .A2(
        add_3_root_add_0_root_add_130_carry[8]), .Z(n20) );
  INVD1 U92 ( .I(y_product[6]), .ZN(n370) );
  FA1D0 U93 ( .A(N86), .B(N60), .CI(add_0_root_add_0_root_add_80_3_carry[18]), 
        .CO(add_0_root_add_0_root_add_80_3_carry[19]), .S(sa_sum_0_2_1_) );
  AO22D0 U94 ( .A1(y_product[6]), .A2(n320), .B1(N35), .B2(n31), .Z(N60) );
  INVD1 U95 ( .I(y_product[5]), .ZN(n360) );
  FA1D0 U96 ( .A(N85), .B(N59), .CI(add_0_root_add_0_root_add_80_3_carry[17]), 
        .CO(add_0_root_add_0_root_add_80_3_carry[18]), .S(plane_value[17]) );
  AO22D0 U97 ( .A1(y_product[5]), .A2(n320), .B1(N34), .B2(n31), .Z(N59) );
  AOI22D1 U98 ( .A1(n320), .A2(add_1_root_add_0_root_add_130_B_6_), .B1(n1), 
        .B2(n31), .ZN(n52) );
  FA1D0 U99 ( .A(N84), .B(N58), .CI(n7), .CO(
        add_0_root_add_0_root_add_80_3_carry[17]), .S(plane_value[16]) );
  AO22D0 U100 ( .A1(y_product[4]), .A2(n320), .B1(N33), .B2(n31), .Z(N58) );
  INVD1 U101 ( .I(y_product[4]), .ZN(n350) );
  AOI22D1 U102 ( .A1(n320), .A2(add_1_root_add_0_root_add_130_B_4_), .B1(
        sa_sum_2_0[11]), .B2(n31), .ZN(n51) );
  INVD1 U103 ( .I(y_product[10]), .ZN(n410) );
  AN2XD1 U104 ( .A1(n330), .A2(n350), .Z(n21) );
  AN2XD1 U109 ( .A1(add_1_root_add_0_root_add_80_3_carry[17]), .A2(
        x_product_5_), .Z(n23) );
  AN2XD1 U110 ( .A1(add_1_root_add_0_root_add_130_B_6_), .A2(n20), .Z(n24) );
  AN2XD1 U111 ( .A1(n26), .A2(x_product_7_), .Z(n25) );
  AN2XD1 U112 ( .A1(n23), .A2(x_product_6_), .Z(n26) );
  AN2XD1 U113 ( .A1(add_1_root_add_0_root_add_80_3_carry[22]), .A2(
        x_product_10_), .Z(n27) );
  FA1D0 U114 ( .A(add_1_root_add_0_root_add_130_B_6_), .B(
        add_1_root_add_0_root_add_130_B_5_), .CI(
        add_2_root_add_0_root_add_130_carry[10]), .CO(
        add_2_root_add_0_root_add_130_carry[11]), .S(sa_sum_0_3_10_) );
  FA1D0 U115 ( .A(add_1_root_add_0_root_add_130_B_5_), .B(
        add_1_root_add_0_root_add_130_B_4_), .CI(
        add_2_root_add_0_root_add_130_carry[9]), .CO(
        add_2_root_add_0_root_add_130_carry[10]), .S(sa_sum_0_3_9_) );
  AN2XD1 U116 ( .A1(add_2_root_add_0_root_add_130_carry[11]), .A2(
        add_1_root_add_0_root_add_130_B_6_), .Z(n28) );
  AOI22D1 U117 ( .A1(n320), .A2(add_1_root_add_0_root_add_130_B_3_), .B1(
        sa_sum_2_0[10]), .B2(n31), .ZN(n570) );
  AOI22D1 U118 ( .A1(n320), .A2(add_1_root_add_0_root_add_130_B_2_), .B1(
        sa_sum_2_0[9]), .B2(n31), .ZN(n56) );
  AOI22D1 U119 ( .A1(n320), .A2(sa_sum_0_2_2_), .B1(sa_sum_2_0[8]), .B2(n31), 
        .ZN(n590) );
  AOI22D1 U120 ( .A1(n320), .A2(sa_sum_0_2_1_), .B1(sa_sum_2_0[7]), .B2(n31), 
        .ZN(n610) );
  AOI22D1 U121 ( .A1(sa_sum_2_0[6]), .A2(n31), .B1(plane_value[17]), .B2(n320), 
        .ZN(n640) );
  AOI22D1 U122 ( .A1(sa_sum_2_0[5]), .A2(n31), .B1(plane_value[16]), .B2(n320), 
        .ZN(n66) );
  AOI22D1 U123 ( .A1(sa_sum_2_0[4]), .A2(n31), .B1(plane_value[15]), .B2(n320), 
        .ZN(n68) );
  INVD1 U124 ( .I(divide_mode), .ZN(n320) );
  FA1D0 U125 ( .A(N91), .B(N65), .CI(add_0_root_add_0_root_add_80_3_carry[23]), 
        .CO(add_0_root_add_0_root_add_80_3_carry[24]), .S(
        add_1_root_add_0_root_add_130_B_5_) );
  AO22D0 U126 ( .A1(y_product[12]), .A2(n320), .B1(N40), .B2(n31), .Z(N65) );
  FA1D0 U129 ( .A(n320), .B(x_product_4_), .CI(n4), .CO(
        add_1_root_add_0_root_add_80_3_carry[17]), .S(N84) );
  INVD1 U130 ( .I(N32), .ZN(n330) );
  INR2D1 U132 ( .A1(y_mantissa[16]), .B1(n31), .ZN(N32) );
  INR2D1 U133 ( .A1(y_mantissa[17]), .B1(n31), .ZN(y_shared_residual_1_) );
  INR2D1 U134 ( .A1(x_mantissa[16]), .B1(n31), .ZN(x_product_3_) );
  INR2D1 U135 ( .A1(x_mantissa[17]), .B1(n31), .ZN(x_shared_residual_1_) );
  INVD1 U136 ( .I(y_mantissa[22]), .ZN(y_product[12]) );
  XNR2D1 U140 ( .A1(n22), .A2(x_product_9_), .ZN(N89) );
  CKXOR2D1 U141 ( .A1(n330), .A2(n350), .Z(N33) );
  CKXOR2D1 U142 ( .A1(n21), .A2(n360), .Z(N34) );
  CKXOR2D1 U143 ( .A1(n17), .A2(n370), .Z(N35) );
  CKXOR2D1 U144 ( .A1(n16), .A2(n380), .Z(N36) );
  CKXOR2D1 U145 ( .A1(n14), .A2(n390), .Z(N37) );
  CKXOR2D1 U146 ( .A1(n13), .A2(n400), .Z(N38) );
  CKXOR2D1 U147 ( .A1(n12), .A2(n410), .Z(N39) );
  CKXOR2D1 U148 ( .A1(n18), .A2(y_mantissa[22]), .Z(N40) );
  CKXOR2D1 U149 ( .A1(N57), .A2(N83), .Z(plane_value[15]) );
  CKXOR2D1 U151 ( .A1(add_1_root_add_0_root_add_80_3_carry[17]), .A2(
        x_product_5_), .Z(N85) );
  CKXOR2D1 U152 ( .A1(n23), .A2(x_product_6_), .Z(N86) );
  CKXOR2D1 U153 ( .A1(n26), .A2(x_product_7_), .Z(N87) );
  CKXOR2D1 U154 ( .A1(n25), .A2(x_product_8_), .Z(N88) );
  CKXOR2D1 U155 ( .A1(add_1_root_add_0_root_add_80_3_carry[22]), .A2(
        x_product_10_), .Z(N90) );
  CKXOR2D1 U156 ( .A1(n27), .A2(x_product_12_), .Z(N91) );
  CKXOR2D1 U157 ( .A1(add_0_root_add_0_root_add_130_B_4_), .A2(sa_sum_0_2_1_), 
        .Z(sa_sum_2_0[4]) );
  CKXOR2D1 U158 ( .A1(add_0_root_add_0_root_add_130_carry_12_), .A2(n28), .Z(
        sa_sum_2_0[12]) );
  CKXOR2D1 U159 ( .A1(sa_sum_0_2_2_), .A2(sa_sum_0_2_1_), .Z(sa_sum_2_0[1]) );
  CKXOR2D1 U160 ( .A1(add_1_root_add_0_root_add_130_carry_7_), .A2(
        sa_sum_0_2_7_), .Z(add_0_root_add_0_root_add_130_B_7_) );
  CKXOR2D1 U161 ( .A1(n10), .A2(sa_sum_0_2_8_), .Z(
        add_0_root_add_0_root_add_130_B_8_) );
  CKXOR2D1 U162 ( .A1(n11), .A2(sa_sum_0_2_9_), .Z(
        add_0_root_add_0_root_add_130_B_9_) );
  CKXOR2D1 U163 ( .A1(n15), .A2(n24), .Z(add_0_root_add_0_root_add_130_B_10_)
         );
  CKXOR2D1 U164 ( .A1(sa_sum_0_2_1_), .A2(sa_sum_0_2_2_), .Z(sa_sum_0_3_5_) );
  CKXOR2D1 U165 ( .A1(add_2_root_add_0_root_add_130_carry[11]), .A2(
        add_1_root_add_0_root_add_130_B_6_), .Z(sa_sum_0_3_11_) );
  CKXOR2D1 U166 ( .A1(sa_sum_0_2_1_), .A2(add_1_root_add_0_root_add_130_B_2_), 
        .Z(sa_sum_0_2_3_) );
  CKXOR2D1 U167 ( .A1(add_3_root_add_0_root_add_130_carry[8]), .A2(
        add_1_root_add_0_root_add_130_B_5_), .Z(sa_sum_0_2_8_) );
  CKXOR2D1 U168 ( .A1(n20), .A2(add_1_root_add_0_root_add_130_B_6_), .Z(
        sa_sum_0_2_9_) );
  OA22D1 U3 ( .A1(n55), .A2(n77), .B1(n42), .B2(n74), .Z(n75) );
  XNR3D0 U10 ( .A1(add_0_root_add_0_root_add_80_3_carry[24]), .A2(n48), .A3(
        n47), .ZN(add_1_root_add_0_root_add_130_B_6_) );
  IND2D0 U11 ( .A1(n27), .B1(x_product_12_), .ZN(n47) );
  AOI22D0 U61 ( .A1(n31), .A2(N41), .B1(n320), .B2(y_product[12]), .ZN(n48) );
  CKND0 U63 ( .I(x_mantissa[22]), .ZN(x_product_12_) );
  INR2D0 U105 ( .A1(y_mantissa[22]), .B1(n18), .ZN(N41) );
  OR2D0 U106 ( .A1(x_product_9_), .A2(n22), .Z(
        add_1_root_add_0_root_add_80_3_carry[22]) );
  AN2D0 U107 ( .A1(x_product_8_), .A2(n25), .Z(n22) );
  AN2D0 U108 ( .A1(N83), .A2(N57), .Z(n7) );
  OA21D0 U127 ( .A1(n320), .A2(n31), .B(N32), .Z(N57) );
  CKXOR2D0 U128 ( .A1(x_product_3_), .A2(n320), .Z(N83) );
endmodule


module oadm_fixed_l0_divmul_root_opt_binary ( x, y, divide_mode, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  input divide_mode;

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

  oadm_fixed_divmul_root_opt_binary_0_18_16_18_7_3b implementation ( .x({
        x[31:16], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y({y[31:16], 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .divide_mode(divide_mode), .result({result[31:10], 
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9}) );
endmodule

