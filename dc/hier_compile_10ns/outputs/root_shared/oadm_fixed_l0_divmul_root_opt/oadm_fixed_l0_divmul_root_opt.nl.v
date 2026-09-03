/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Thu Sep  3 13:57:04 2026
/////////////////////////////////////////////////////////////


module fp32_normal_finite_wrapper_DW01_add_3_DW01_add_6 ( A, B, CI, SUM, CO );
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
  fp32_normal_finite_wrapper_DW01_add_3_DW01_add_6 add_1_root_add_0_root_add_25_2 ( 
        .A(x[30:23]), .B({N42, N41, N40, N39, N38, N37, N36, N11}), .CI(n79), 
        .SUM({N34, N33, N32, N31, N30, N29, N28, N27}) );
  fp32_normal_finite_wrapper_DW01_add_1_DW01_add_4 add_1_root_add_0_root_add_22_2 ( 
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


module oadm_fixed_divmul_root_opt_0_18_16_18_7_3b_DW_mult_uns_0 ( a, b, 
        product );
  input [6:0] a;
  input [5:0] b;
  output [12:0] product;
  wire   n3, n4, n5, n6, n7, n8, n9, n10, n11, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n64, n65, n66, n67, n68, n69, n70, n71,
         n72;

  FA1D0 U6 ( .A(n13), .B(a[3]), .CI(n4), .CO(n3), .S(product[9]) );
  FA1D0 U7 ( .A(n14), .B(n15), .CI(n5), .CO(n4), .S(product[8]) );
  FA1D0 U8 ( .A(n17), .B(n16), .CI(n6), .CO(n5), .S(product[7]) );
  FA1D0 U9 ( .A(n18), .B(n19), .CI(n7), .CO(n6), .S(product[6]) );
  FA1D0 U10 ( .A(n20), .B(n21), .CI(n8), .CO(n7), .S(product[5]) );
  FA1D0 U11 ( .A(n22), .B(n23), .CI(n9), .CO(n8), .S(product[4]) );
  FA1D0 U12 ( .A(n24), .B(n68), .CI(n10), .CO(n9), .S(product[3]) );
  FA1D0 U13 ( .A(n70), .B(a[2]), .CI(n11), .CO(n10), .S(product[2]) );
  HA1D0 U14 ( .A(n70), .B(n69), .CO(n11), .S(product[1]) );
  FA1D0 U20 ( .A(n66), .B(n64), .CI(a[0]), .CO(n17), .S(n18) );
  HA1D0 U21 ( .A(n67), .B(n65), .CO(n19), .S(n20) );
  HA1D0 U22 ( .A(n68), .B(n66), .CO(n21), .S(n22) );
  HA1D0 U23 ( .A(n69), .B(n67), .CO(n23), .S(n24) );
  INVD1 U35 ( .I(a[3]), .ZN(n67) );
  INVD1 U36 ( .I(a[4]), .ZN(n66) );
  INVD1 U37 ( .I(a[2]), .ZN(n68) );
  INVD1 U38 ( .I(a[1]), .ZN(n69) );
  INVD1 U39 ( .I(a[0]), .ZN(n70) );
  CKBD1 U40 ( .I(a[0]), .Z(product[0]) );
  INVD1 U41 ( .I(a[6]), .ZN(n64) );
  INVD1 U42 ( .I(a[5]), .ZN(n65) );
  XNR2D0 U43 ( .A1(n71), .A2(a[6]), .ZN(product[12]) );
  CKND2D0 U44 ( .A1(n72), .A2(n65), .ZN(n71) );
  XNR2D0 U45 ( .A1(n72), .A2(n65), .ZN(product[11]) );
  NR2D0 U46 ( .A1(n3), .A2(a[4]), .ZN(n72) );
  XNR2D0 U47 ( .A1(n3), .A2(a[4]), .ZN(product[10]) );
  XNR2D0 U48 ( .A1(n65), .A2(a[1]), .ZN(n16) );
  CKND2D0 U49 ( .A1(a[5]), .A2(n69), .ZN(n15) );
  XNR2D0 U50 ( .A1(n64), .A2(a[2]), .ZN(n14) );
  CKND2D0 U51 ( .A1(a[6]), .A2(n68), .ZN(n13) );
endmodule


module oadm_fixed_divmul_root_opt_0_18_16_18_7_3b ( x, y, divide_mode, result
 );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  input divide_mode;
  wire   x_shared_residual_1_, y_shared_residual_1_, N30, N31, N32, N33, N34,
         N35, N36, N37, N38, N39, N55, N56, N57, N58, N59, N60, N61, N62, N63,
         n350, n360, n370, n380, n390, n40, n41, n42, n43, n44, n45, n46, n48,
         n49, n50, n51, n52, n53, n54, n550, n560, n570, n580, n590, n600,
         n610, n620, x_product_9_, x_product_8_, x_product_7_, x_product_6_,
         x_product_5_, x_product_4_, x_product_3_, x_product_12_,
         x_product_10_, N89, N88, N87, N86, N85, N84, N83, N82, N81,
         mult_63_n7, mult_63_n6, mult_63_n5, mult_63_n4, mult_63_n3,
         mult_61_n7, mult_61_n6, mult_61_n5, mult_61_n4, mult_61_n3, n1, n3,
         n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n320, n330, n340, n47;
  wire   [22:16] x_mantissa;
  wire   [22:16] y_mantissa;
  wire   [12:4] y_product;
  wire   [24:15] plane_value;
  wire   [12:0] reduced_scale_product;
  wire   [22:10] normalized_fraction;
  wire   [2:0] exponent_adjust;
  wire   [24:17] add_0_root_add_0_root_add_80_3_carry;
  wire   [22:17] add_1_root_add_0_root_add_80_3_carry;
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
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .divide_mode(n19), .fraction_x({
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
  oadm_fixed_divmul_root_opt_0_18_16_18_7_3b_DW_mult_uns_0 mult_113 ( .a(
        plane_value[24:18]), .b({n330, n330, n330, n320, n330, n330}), 
        .product(reduced_scale_product) );
  HA1D0 mult_63_U9 ( .A(y_shared_residual_1_), .B(N30), .CO(mult_63_n7), .S(
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
  AN2XD1 U4 ( .A1(x_product_3_), .A2(n20), .Z(n1) );
  INVD1 U7 ( .I(divide_mode), .ZN(n20) );
  ND2D1 U8 ( .A1(n41), .A2(n390), .ZN(exponent_adjust[2]) );
  IND3D1 U10 ( .A1(n350), .B1(n360), .B2(n370), .ZN(n41) );
  AN2XD1 U11 ( .A1(n5), .A2(n27), .Z(n4) );
  ND3D1 U12 ( .A1(n350), .A2(n370), .A3(n360), .ZN(n390) );
  AN2XD1 U13 ( .A1(n6), .A2(n26), .Z(n5) );
  AN2XD1 U14 ( .A1(n8), .A2(n25), .Z(n6) );
  AN2XD1 U15 ( .A1(n4), .A2(n28), .Z(n7) );
  AN2XD1 U16 ( .A1(n9), .A2(n24), .Z(n8) );
  AN2XD1 U17 ( .A1(n11), .A2(n23), .Z(n9) );
  ND2D1 U18 ( .A1(n370), .A2(n41), .ZN(exponent_adjust[0]) );
  OAI221D0 U19 ( .A1(n550), .A2(n10), .B1(n53), .B2(n370), .C(n580), .ZN(
        normalized_fraction[14]) );
  OA22D0 U20 ( .A1(n390), .A2(n590), .B1(n41), .B2(n570), .Z(n580) );
  OAI221D0 U21 ( .A1(n53), .A2(n10), .B1(n51), .B2(n370), .C(n560), .ZN(
        normalized_fraction[15]) );
  OA22D0 U22 ( .A1(n390), .A2(n570), .B1(n41), .B2(n550), .Z(n560) );
  OAI221D0 U23 ( .A1(n51), .A2(n10), .B1(n49), .B2(n370), .C(n54), .ZN(
        normalized_fraction[16]) );
  OA22D0 U24 ( .A1(n390), .A2(n550), .B1(n41), .B2(n53), .Z(n54) );
  OAI221D0 U25 ( .A1(n49), .A2(n10), .B1(n46), .B2(n370), .C(n52), .ZN(
        normalized_fraction[17]) );
  OA22D0 U26 ( .A1(n390), .A2(n53), .B1(n41), .B2(n51), .Z(n52) );
  OAI221D0 U27 ( .A1(n46), .A2(n10), .B1(n44), .B2(n370), .C(n50), .ZN(
        normalized_fraction[18]) );
  OA22D0 U28 ( .A1(n390), .A2(n51), .B1(n41), .B2(n49), .Z(n50) );
  OAI221D0 U29 ( .A1(n44), .A2(n10), .B1(n40), .B2(n370), .C(n48), .ZN(
        normalized_fraction[19]) );
  OA22D0 U30 ( .A1(n390), .A2(n49), .B1(n41), .B2(n46), .Z(n48) );
  OAI221D0 U31 ( .A1(n40), .A2(n10), .B1(n42), .B2(n370), .C(n45), .ZN(
        normalized_fraction[20]) );
  OA22D0 U32 ( .A1(n390), .A2(n46), .B1(n41), .B2(n44), .Z(n45) );
  OAI221D0 U33 ( .A1(n42), .A2(n10), .B1(n350), .B2(n370), .C(n43), .ZN(
        normalized_fraction[21]) );
  OA22D0 U34 ( .A1(n390), .A2(n44), .B1(n41), .B2(n40), .Z(n43) );
  OAI221D0 U35 ( .A1(n350), .A2(n10), .B1(n360), .B2(n370), .C(n380), .ZN(
        normalized_fraction[22]) );
  OA22D0 U36 ( .A1(n390), .A2(n40), .B1(n41), .B2(n42), .Z(n380) );
  OAI221D0 U37 ( .A1(n570), .A2(n10), .B1(n550), .B2(n370), .C(n600), .ZN(
        normalized_fraction[13]) );
  OAI221D0 U39 ( .A1(n590), .A2(n10), .B1(n570), .B2(n370), .C(n610), .ZN(
        normalized_fraction[12]) );
  IND2D1 U42 ( .A1(n360), .B1(n370), .ZN(n10) );
  OAI22D1 U43 ( .A1(n620), .A2(n10), .B1(n590), .B2(n370), .ZN(
        normalized_fraction[11]) );
  ND2D1 U44 ( .A1(reduced_scale_product[3]), .A2(n19), .ZN(n550) );
  NR2D1 U45 ( .A1(n620), .A2(n370), .ZN(normalized_fraction[10]) );
  ND2D1 U46 ( .A1(reduced_scale_product[2]), .A2(n19), .ZN(n570) );
  ND2D1 U47 ( .A1(reduced_scale_product[1]), .A2(n19), .ZN(n590) );
  ND2D1 U48 ( .A1(reduced_scale_product[0]), .A2(n19), .ZN(n620) );
  AOI22D1 U49 ( .A1(reduced_scale_product[12]), .A2(n19), .B1(plane_value[23]), 
        .B2(n20), .ZN(n360) );
  INVD1 U50 ( .I(n20), .ZN(n19) );
  FA1D0 U51 ( .A(N87), .B(N61), .CI(add_0_root_add_0_root_add_80_3_carry[21]), 
        .CO(add_0_root_add_0_root_add_80_3_carry[22]), .S(plane_value[21]) );
  AO22D0 U52 ( .A1(y_product[9]), .A2(n20), .B1(N36), .B2(n19), .Z(N61) );
  FA1D0 U53 ( .A(N88), .B(N62), .CI(add_0_root_add_0_root_add_80_3_carry[22]), 
        .CO(add_0_root_add_0_root_add_80_3_carry[23]), .S(plane_value[22]) );
  AO22D0 U54 ( .A1(y_product[10]), .A2(n20), .B1(N37), .B2(n19), .Z(N62) );
  INVD1 U55 ( .I(y_product[9]), .ZN(n27) );
  FA1D0 U56 ( .A(N86), .B(N60), .CI(add_0_root_add_0_root_add_80_3_carry[20]), 
        .CO(add_0_root_add_0_root_add_80_3_carry[21]), .S(plane_value[20]) );
  AO22D0 U57 ( .A1(y_product[8]), .A2(n20), .B1(N35), .B2(n19), .Z(N60) );
  INVD1 U58 ( .I(y_product[8]), .ZN(n26) );
  FA1D0 U59 ( .A(N85), .B(N59), .CI(add_0_root_add_0_root_add_80_3_carry[19]), 
        .CO(add_0_root_add_0_root_add_80_3_carry[20]), .S(plane_value[19]) );
  AO22D0 U60 ( .A1(y_product[7]), .A2(n20), .B1(N34), .B2(n19), .Z(N59) );
  INVD1 U62 ( .I(y_product[7]), .ZN(n25) );
  FA1D0 U63 ( .A(N84), .B(N58), .CI(add_0_root_add_0_root_add_80_3_carry[18]), 
        .CO(add_0_root_add_0_root_add_80_3_carry[19]), .S(plane_value[18]) );
  AO22D0 U64 ( .A1(y_product[6]), .A2(n20), .B1(N33), .B2(n19), .Z(N58) );
  INVD1 U65 ( .I(y_product[6]), .ZN(n24) );
  FA1D0 U66 ( .A(N83), .B(N57), .CI(add_0_root_add_0_root_add_80_3_carry[17]), 
        .CO(add_0_root_add_0_root_add_80_3_carry[18]), .S(plane_value[17]) );
  AO22D0 U67 ( .A1(y_product[5]), .A2(n20), .B1(N32), .B2(n19), .Z(N57) );
  INVD1 U68 ( .I(y_product[5]), .ZN(n23) );
  AOI22D1 U69 ( .A1(reduced_scale_product[11]), .A2(n19), .B1(plane_value[22]), 
        .B2(n20), .ZN(n350) );
  FA1D0 U70 ( .A(N82), .B(N56), .CI(n3), .CO(
        add_0_root_add_0_root_add_80_3_carry[17]), .S(plane_value[16]) );
  AO22D0 U71 ( .A1(y_product[4]), .A2(n20), .B1(N31), .B2(n19), .Z(N56) );
  INVD1 U72 ( .I(y_product[10]), .ZN(n28) );
  INVD1 U73 ( .I(y_product[4]), .ZN(n22) );
  AN2XD1 U77 ( .A1(n21), .A2(n22), .Z(n11) );
  AN2XD1 U79 ( .A1(add_1_root_add_0_root_add_80_3_carry[17]), .A2(x_product_5_), .Z(n13) );
  AN2XD1 U80 ( .A1(add_1_root_add_0_root_add_80_3_carry[22]), .A2(
        x_product_10_), .Z(n14) );
  AN2XD1 U81 ( .A1(n16), .A2(x_product_7_), .Z(n15) );
  AN2XD1 U82 ( .A1(n13), .A2(x_product_6_), .Z(n16) );
  AOI22D1 U83 ( .A1(reduced_scale_product[10]), .A2(n19), .B1(plane_value[21]), 
        .B2(n20), .ZN(n42) );
  ND2D1 U84 ( .A1(plane_value[24]), .A2(n20), .ZN(n370) );
  AOI22D1 U85 ( .A1(reduced_scale_product[9]), .A2(n19), .B1(plane_value[20]), 
        .B2(n20), .ZN(n40) );
  AOI22D1 U86 ( .A1(reduced_scale_product[8]), .A2(n19), .B1(plane_value[19]), 
        .B2(n20), .ZN(n44) );
  AOI22D1 U87 ( .A1(reduced_scale_product[7]), .A2(n19), .B1(plane_value[18]), 
        .B2(n20), .ZN(n46) );
  AOI22D1 U88 ( .A1(reduced_scale_product[6]), .A2(n19), .B1(plane_value[17]), 
        .B2(n20), .ZN(n49) );
  AOI22D1 U89 ( .A1(reduced_scale_product[5]), .A2(n19), .B1(plane_value[16]), 
        .B2(n20), .ZN(n51) );
  AOI22D1 U90 ( .A1(reduced_scale_product[4]), .A2(n19), .B1(plane_value[15]), 
        .B2(n20), .ZN(n53) );
  FA1D0 U93 ( .A(N89), .B(N63), .CI(add_0_root_add_0_root_add_80_3_carry[23]), 
        .CO(add_0_root_add_0_root_add_80_3_carry[24]), .S(plane_value[23]) );
  AO22D0 U94 ( .A1(y_product[12]), .A2(n20), .B1(N38), .B2(n19), .Z(N63) );
  FA1D0 U95 ( .A(n20), .B(x_product_4_), .CI(n1), .CO(
        add_1_root_add_0_root_add_80_3_carry[17]), .S(N82) );
  INVD1 U96 ( .I(N30), .ZN(n21) );
  INR2D1 U98 ( .A1(y_mantissa[16]), .B1(n19), .ZN(N30) );
  INR2D1 U99 ( .A1(y_mantissa[17]), .B1(n19), .ZN(y_shared_residual_1_) );
  INR2D1 U100 ( .A1(x_mantissa[16]), .B1(n19), .ZN(x_product_3_) );
  INR2D1 U101 ( .A1(x_mantissa[17]), .B1(n19), .ZN(x_shared_residual_1_) );
  INVD1 U102 ( .I(y_mantissa[22]), .ZN(y_product[12]) );
  TIEL U104 ( .ZN(n320) );
  TIEH U105 ( .Z(n330) );
  XNR2D1 U106 ( .A1(n12), .A2(x_product_9_), .ZN(N87) );
  CKXOR2D1 U108 ( .A1(n21), .A2(n22), .Z(N31) );
  CKXOR2D1 U109 ( .A1(n11), .A2(n23), .Z(N32) );
  CKXOR2D1 U110 ( .A1(n9), .A2(n24), .Z(N33) );
  CKXOR2D1 U111 ( .A1(n8), .A2(n25), .Z(N34) );
  CKXOR2D1 U112 ( .A1(n6), .A2(n26), .Z(N35) );
  CKXOR2D1 U113 ( .A1(n5), .A2(n27), .Z(N36) );
  CKXOR2D1 U114 ( .A1(n4), .A2(n28), .Z(N37) );
  CKXOR2D1 U115 ( .A1(n7), .A2(y_mantissa[22]), .Z(N38) );
  CKXOR2D1 U116 ( .A1(N55), .A2(N81), .Z(plane_value[15]) );
  CKXOR2D1 U118 ( .A1(add_1_root_add_0_root_add_80_3_carry[17]), .A2(
        x_product_5_), .Z(N83) );
  CKXOR2D1 U119 ( .A1(n13), .A2(x_product_6_), .Z(N84) );
  CKXOR2D1 U120 ( .A1(n16), .A2(x_product_7_), .Z(N85) );
  CKXOR2D1 U121 ( .A1(n15), .A2(x_product_8_), .Z(N86) );
  CKXOR2D1 U122 ( .A1(add_1_root_add_0_root_add_80_3_carry[22]), .A2(
        x_product_10_), .Z(N88) );
  CKXOR2D1 U123 ( .A1(n14), .A2(x_product_12_), .Z(N89) );
  OR2D1 U3 ( .A1(n41), .A2(n620), .Z(n610) );
  OA22D1 U5 ( .A1(n390), .A2(n620), .B1(n41), .B2(n590), .Z(n600) );
  XNR3D0 U6 ( .A1(add_0_root_add_0_root_add_80_3_carry[24]), .A2(n47), .A3(
        n340), .ZN(plane_value[24]) );
  IND2D0 U9 ( .A1(n14), .B1(x_product_12_), .ZN(n340) );
  AOI22D0 U38 ( .A1(n19), .A2(N39), .B1(n20), .B2(y_product[12]), .ZN(n47) );
  CKND0 U40 ( .I(x_mantissa[22]), .ZN(x_product_12_) );
  INR2D0 U41 ( .A1(y_mantissa[22]), .B1(n7), .ZN(N39) );
  OR2D0 U61 ( .A1(x_product_9_), .A2(n12), .Z(
        add_1_root_add_0_root_add_80_3_carry[22]) );
  AN2D0 U74 ( .A1(x_product_8_), .A2(n15), .Z(n12) );
  AN2D0 U75 ( .A1(N81), .A2(N55), .Z(n3) );
  OA21D0 U76 ( .A1(n20), .A2(n19), .B(N30), .Z(N55) );
  CKXOR2D0 U78 ( .A1(x_product_3_), .A2(n20), .Z(N81) );
endmodule


module oadm_fixed_l0_divmul_root_opt ( x, y, divide_mode, result );
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

  oadm_fixed_divmul_root_opt_0_18_16_18_7_3b implementation ( .x({x[31:16], 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .y({y[31:16], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .divide_mode(divide_mode), .result({result[31:10], 
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9}) );
endmodule

