/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Fri Sep  4 18:51:02 2026
/////////////////////////////////////////////////////////////


module fp32_normal_finite_wrapper_DW01_add_3 ( A, B, CI, SUM, CO );
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
         N28, N27, n1, n4, n5, n6, n7, n8, n80, n81;
  wire   [7:2] add_0_root_add_0_root_add_25_2_carry;

  CKXOR2D1 U2 ( .A1(y[31]), .A2(x[31]), .Z(result[31]) );
  fp32_normal_finite_wrapper_DW01_add_3 add_1_root_add_0_root_add_25_2 ( .A(
        x[30:23]), .B({N42, N41, N40, N39, N38, N37, N36, N35}), .CI(n80), 
        .SUM({N34, N33, N32, N31, N30, N29, N28, N27}) );
  AN2XD1 U3 ( .A1(exponent_adjust[0]), .A2(N27), .Z(n1) );
  FA1D0 U47 ( .A(N28), .B(exponent_adjust[1]), .CI(n1), .CO(
        add_0_root_add_0_root_add_25_2_carry[2]), .S(result[24]) );
  FA1D0 U48 ( .A(N29), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[2]), .CO(
        add_0_root_add_0_root_add_25_2_carry[3]), .S(result[25]) );
  FA1D0 U49 ( .A(N30), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[3]), .CO(
        add_0_root_add_0_root_add_25_2_carry[4]), .S(result[26]) );
  FA1D0 U50 ( .A(N31), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[4]), .CO(
        add_0_root_add_0_root_add_25_2_carry[5]), .S(result[27]) );
  FA1D0 U51 ( .A(N32), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[5]), .CO(
        add_0_root_add_0_root_add_25_2_carry[6]), .S(result[28]) );
  FA1D0 U52 ( .A(N33), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[6]), .CO(
        add_0_root_add_0_root_add_25_2_carry[7]), .S(result[29]) );
  XOR3D1 U61 ( .A1(N34), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_25_2_carry[7]), .Z(result[30]) );
  AN2XD1 U69 ( .A1(y[23]), .A2(y[24]), .Z(n4) );
  AN2XD1 U70 ( .A1(n4), .A2(y[25]), .Z(n5) );
  AN2XD1 U71 ( .A1(n5), .A2(y[26]), .Z(n6) );
  AN2XD1 U72 ( .A1(n6), .A2(y[27]), .Z(n7) );
  AN2XD1 U73 ( .A1(n7), .A2(y[28]), .Z(n8) );
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
  TIEL U110 ( .ZN(n80) );
  CKXOR2D1 U113 ( .A1(exponent_adjust[0]), .A2(N27), .Z(result[23]) );
  CKXOR2D1 U114 ( .A1(y[23]), .A2(y[24]), .Z(N36) );
  CKXOR2D1 U115 ( .A1(n4), .A2(y[25]), .Z(N37) );
  CKXOR2D1 U116 ( .A1(n5), .A2(y[26]), .Z(N38) );
  CKXOR2D1 U117 ( .A1(n6), .A2(y[27]), .Z(N39) );
  CKXOR2D1 U118 ( .A1(n7), .A2(y[28]), .Z(N40) );
  CKXOR2D1 U119 ( .A1(n8), .A2(y[29]), .Z(N41) );
  CKND0 U120 ( .I(y[23]), .ZN(N35) );
  CKXOR2D0 U4 ( .A1(y[30]), .A2(n81), .Z(N42) );
  CKND2D0 U5 ( .A1(y[29]), .A2(n8), .ZN(n81) );
endmodule


module input_trunc_core_BITS3_BIAS1_DIVIDE0_DW_mult_uns_0 ( a, b, product );
  input [4:0] a;
  input [4:0] b;
  output [9:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n33, n34, n35, n38,
         n39, n40, n42, n43, n44, n79, n80, n81, n82, n83, n84;

  FA1D0 U4 ( .A(n12), .B(n10), .CI(n3), .CO(n2), .S(product[7]) );
  FA1D0 U5 ( .A(n15), .B(n13), .CI(n4), .CO(n3), .S(product[6]) );
  FA1D0 U6 ( .A(n16), .B(n19), .CI(n5), .CO(n4), .S(product[5]) );
  FA1D0 U7 ( .A(n20), .B(n23), .CI(n6), .CO(n5), .S(product[4]) );
  FA1D0 U8 ( .A(n24), .B(n26), .CI(n7), .CO(n6), .S(product[3]) );
  FA1D0 U9 ( .A(n8), .B(n44), .CI(n28), .CO(n7), .S(product[2]) );
  HA1D0 U10 ( .A(b[1]), .B(a[1]), .CO(n8), .S(product[1]) );
  FA1D0 U11 ( .A(b[3]), .B(a[3]), .CI(n11), .CO(n9), .S(n10) );
  CMPE42D1 U12 ( .A(a[1]), .B(b[2]), .C(a[2]), .CIX(n14), .D(n33), .CO(n12), 
        .COX(n11), .S(n13) );
  CMPE42D1 U13 ( .A(n38), .B(b[1]), .C(n34), .CIX(n21), .D(n81), .CO(n15), 
        .COX(n14), .S(n16) );
  FA1D0 U15 ( .A(n25), .B(n39), .CI(n22), .CO(n19), .S(n20) );
  HA1D0 U16 ( .A(n35), .B(n42), .CO(n21), .S(n22) );
  FA1D0 U17 ( .A(n40), .B(n43), .CI(n27), .CO(n23), .S(n24) );
  HA1D0 U18 ( .A(b[3]), .B(a[3]), .CO(n25), .S(n26) );
  HA1D0 U19 ( .A(a[2]), .B(b[2]), .CO(n27), .S(n28) );
  INVD1 U50 ( .I(a[1]), .ZN(n81) );
  INVD1 U51 ( .I(b[2]), .ZN(n83) );
  INVD1 U52 ( .I(b[1]), .ZN(n84) );
  INVD1 U53 ( .I(a[2]), .ZN(n80) );
  INVD1 U54 ( .I(b[3]), .ZN(n82) );
  INVD1 U55 ( .I(a[3]), .ZN(n79) );
  OR2D0 U56 ( .A1(n9), .A2(n2), .Z(product[9]) );
  XNR2D0 U57 ( .A1(n9), .A2(n2), .ZN(product[8]) );
  NR2D0 U58 ( .A1(n81), .A2(n84), .ZN(n44) );
  NR2D0 U59 ( .A1(n81), .A2(n83), .ZN(n43) );
  NR2D0 U60 ( .A1(n81), .A2(n82), .ZN(n42) );
  NR2D0 U61 ( .A1(n84), .A2(n80), .ZN(n40) );
  NR2D0 U62 ( .A1(n83), .A2(n80), .ZN(n39) );
  NR2D0 U63 ( .A1(n82), .A2(n80), .ZN(n38) );
  NR2D0 U64 ( .A1(n84), .A2(n79), .ZN(n35) );
  NR2D0 U65 ( .A1(n83), .A2(n79), .ZN(n34) );
  NR2D0 U66 ( .A1(n82), .A2(n79), .ZN(n33) );
endmodule


module input_trunc_core_BITS3_BIAS1_DIVIDE0 ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   adjustment_0_, n1, n12, n13, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11
;
  wire   [3:1] a;
  wire   [3:1] b;
  wire   [9:1] multiplication_product;
  wire   [22:15] fraction;
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
        SYNOPSYS_UNCONNECTED__54;

  fp32_normal_finite_wrapper wrapper ( .x({x[31:20], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .y({y[31:20], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0}), .divide_mode(1'b0), .fraction_x({a, 
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19}), .fraction_y({b, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31, 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, 
        SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39}), 
        .result_fraction({fraction, multiplication_product[9], 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .exponent_adjust({n1, n1, adjustment_0_}), .result({result[31:14], 
        SYNOPSYS_UNCONNECTED__40, SYNOPSYS_UNCONNECTED__41, 
        SYNOPSYS_UNCONNECTED__42, SYNOPSYS_UNCONNECTED__43, 
        SYNOPSYS_UNCONNECTED__44, SYNOPSYS_UNCONNECTED__45, 
        SYNOPSYS_UNCONNECTED__46, SYNOPSYS_UNCONNECTED__47, 
        SYNOPSYS_UNCONNECTED__48, SYNOPSYS_UNCONNECTED__49, 
        SYNOPSYS_UNCONNECTED__50, SYNOPSYS_UNCONNECTED__51, 
        SYNOPSYS_UNCONNECTED__52, SYNOPSYS_UNCONNECTED__53}) );
  input_trunc_core_BITS3_BIAS1_DIVIDE0_DW_mult_uns_0 mult_22 ( .a({n11, a, n11}), .b({n11, b, n11}), .product({multiplication_product, 
        SYNOPSYS_UNCONNECTED__54}) );
  INVD1 U3 ( .I(n13), .ZN(n1) );
  INVD1 U4 ( .I(multiplication_product[4]), .ZN(n7) );
  INVD1 U5 ( .I(multiplication_product[8]), .ZN(n3) );
  ND2D1 U6 ( .A1(n3), .A2(n2), .ZN(n13) );
  ND2D1 U7 ( .A1(n2), .A2(n13), .ZN(adjustment_0_) );
  ND2D1 U8 ( .A1(multiplication_product[8]), .A2(n2), .ZN(n12) );
  OAI221D0 U9 ( .A1(n2), .A2(n9), .B1(n12), .B2(n10), .C(n13), .ZN(
        fraction[16]) );
  OAI222D0 U10 ( .A1(n5), .A2(n12), .B1(n13), .B2(n6), .C1(n4), .C2(n2), .ZN(
        fraction[21]) );
  OAI222D0 U11 ( .A1(n12), .A2(n6), .B1(n13), .B2(n7), .C1(n5), .C2(n2), .ZN(
        fraction[20]) );
  OAI222D0 U12 ( .A1(n12), .A2(n4), .B1(n13), .B2(n5), .C1(n3), .C2(n2), .ZN(
        fraction[22]) );
  OAI222D0 U13 ( .A1(n12), .A2(n9), .B1(n13), .B2(n10), .C1(n2), .C2(n8), .ZN(
        fraction[17]) );
  OAI222D0 U14 ( .A1(n12), .A2(n8), .B1(n13), .B2(n9), .C1(n2), .C2(n7), .ZN(
        fraction[18]) );
  OAI222D0 U15 ( .A1(n12), .A2(n7), .B1(n13), .B2(n8), .C1(n2), .C2(n6), .ZN(
        fraction[19]) );
  OAI21D1 U16 ( .A1(n2), .A2(n10), .B(n12), .ZN(fraction[15]) );
  INVD1 U18 ( .I(multiplication_product[7]), .ZN(n4) );
  INVD1 U19 ( .I(multiplication_product[6]), .ZN(n5) );
  INVD1 U20 ( .I(multiplication_product[5]), .ZN(n6) );
  INVD1 U21 ( .I(multiplication_product[3]), .ZN(n8) );
  INVD1 U22 ( .I(multiplication_product[2]), .ZN(n9) );
  INVD1 U24 ( .I(multiplication_product[1]), .ZN(n10) );
  TIEH U26 ( .Z(n11) );
  CKND0 U17 ( .I(multiplication_product[9]), .ZN(n2) );
endmodule


module input_mul_b3_bias1 ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;

  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13;
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
  assign result[11] = 1'b0;
  assign result[12] = 1'b0;
  assign result[13] = 1'b0;

  input_trunc_core_BITS3_BIAS1_DIVIDE0 dut ( .x({x[31:20], 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y({y[31:20], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .result({result[31:14], 
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13}) );
endmodule

