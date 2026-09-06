/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Fri Sep  4 18:51:54 2026
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
         N28, N27, n1, n4, n5, n6, n7, n8, n79, n80;
  wire   [7:2] add_0_root_add_0_root_add_25_2_carry;

  CKXOR2D1 U2 ( .A1(y[31]), .A2(x[31]), .Z(result[31]) );
  fp32_normal_finite_wrapper_DW01_add_3 add_1_root_add_0_root_add_25_2 ( .A(
        x[30:23]), .B({N42, N41, N40, N39, N38, N37, N36, N35}), .CI(n79), 
        .SUM({N34, N33, N32, N31, N30, N29, N28, N27}) );
  AN2XD1 U3 ( .A1(exponent_adjust[0]), .A2(N27), .Z(n1) );
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
  CKBD1 U91 ( .I(y[22]), .Z(fraction_y[22]) );
  CKBD1 U92 ( .I(y[21]), .Z(fraction_y[21]) );
  CKBD1 U93 ( .I(y[20]), .Z(fraction_y[20]) );
  CKBD1 U94 ( .I(y[19]), .Z(fraction_y[19]) );
  CKBD1 U95 ( .I(y[18]), .Z(fraction_y[18]) );
  CKBD1 U96 ( .I(result_fraction[22]), .Z(result[22]) );
  CKBD1 U97 ( .I(result_fraction[21]), .Z(result[21]) );
  CKBD1 U98 ( .I(result_fraction[20]), .Z(result[20]) );
  CKBD1 U99 ( .I(result_fraction[19]), .Z(result[19]) );
  CKBD1 U100 ( .I(result_fraction[18]), .Z(result[18]) );
  CKBD1 U101 ( .I(result_fraction[17]), .Z(result[17]) );
  CKBD1 U102 ( .I(result_fraction[16]), .Z(result[16]) );
  CKBD1 U103 ( .I(result_fraction[15]), .Z(result[15]) );
  CKBD1 U104 ( .I(result_fraction[14]), .Z(result[14]) );
  CKBD1 U105 ( .I(result_fraction[13]), .Z(result[13]) );
  CKBD1 U106 ( .I(result_fraction[12]), .Z(result[12]) );
  CKBD1 U107 ( .I(result_fraction[11]), .Z(result[11]) );
  CKBD1 U108 ( .I(result_fraction[10]), .Z(result[10]) );
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


module input_trunc_core_BITS5_BIAS1_DIVIDE0_DW_mult_uns_0 ( a, b, product );
  input [6:0] a;
  input [6:0] b;
  output [13:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n18, n19, n20, n21, n22, n23, n24, n27, n28, n29, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n53, n54, n55, n56, n57, n58, n59, n60, n62, n63, n64,
         n65, n66, n67, n68, n69, n73, n74, n75, n76, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178;

  FA1D0 U3 ( .A(n15), .B(n14), .CI(n3), .CO(n2), .S(product[12]) );
  FA1D0 U4 ( .A(n20), .B(n16), .CI(n4), .CO(n3), .S(product[11]) );
  FA1D0 U5 ( .A(n23), .B(n21), .CI(n5), .CO(n4), .S(product[10]) );
  FA1D0 U6 ( .A(n28), .B(n24), .CI(n6), .CO(n5), .S(product[9]) );
  FA1D0 U7 ( .A(n32), .B(n29), .CI(n7), .CO(n6), .S(product[8]) );
  FA1D0 U8 ( .A(n35), .B(n33), .CI(n8), .CO(n7), .S(product[7]) );
  FA1D0 U9 ( .A(n36), .B(n37), .CI(n9), .CO(n8), .S(product[6]) );
  FA1D0 U10 ( .A(n38), .B(n41), .CI(n10), .CO(n9), .S(product[5]) );
  FA1D0 U11 ( .A(n42), .B(n43), .CI(n11), .CO(n10), .S(product[4]) );
  FA1D0 U12 ( .A(n12), .B(n69), .CI(n44), .CO(n11), .S(product[3]) );
  HA1D0 U13 ( .A(n156), .B(n76), .CO(n12), .S(product[2]) );
  FA1D0 U14 ( .A(n152), .B(n47), .CI(n53), .CO(n13), .S(n14) );
  FA1D0 U15 ( .A(n54), .B(n18), .CI(n19), .CO(n15), .S(n16) );
  CMPE42D1 U17 ( .A(n48), .B(n157), .C(n55), .CIX(n22), .D(n62), .CO(n20), 
        .COX(n19), .S(n21) );
  CMPE42D1 U18 ( .A(n49), .B(a[1]), .C(n56), .CIX(n27), .D(n63), .CO(n23), 
        .COX(n22), .S(n24) );
  CMPE42D1 U20 ( .A(n50), .B(a[1]), .C(n64), .CIX(n31), .D(n57), .CO(n28), 
        .COX(n27), .S(n29) );
  CMPE42D1 U22 ( .A(n51), .B(a[1]), .C(n65), .CIX(n34), .D(n58), .CO(n32), 
        .COX(n31), .S(n33) );
  CMPE42D1 U23 ( .A(n153), .B(n157), .C(n66), .CIX(n39), .D(n59), .CO(n35), 
        .COX(n34), .S(n36) );
  FA1D0 U24 ( .A(n60), .B(n67), .CI(n40), .CO(n37), .S(n38) );
  HA1D0 U25 ( .A(n45), .B(n73), .CO(n39), .S(n40) );
  FA1D0 U26 ( .A(n154), .B(n74), .CI(n68), .CO(n41), .S(n42) );
  HA1D0 U27 ( .A(n46), .B(n75), .CO(n43), .S(n44) );
  INVD1 U109 ( .I(a[5]), .ZN(n153) );
  ND2D1 U110 ( .A1(n178), .A2(n170), .ZN(n171) );
  CKXOR2D1 U111 ( .A1(n157), .A2(a[2]), .Z(n163) );
  ND2D1 U112 ( .A1(n177), .A2(n163), .ZN(n164) );
  INVD1 U113 ( .I(n170), .ZN(n154) );
  INVD1 U114 ( .I(a[1]), .ZN(n157) );
  INVD1 U115 ( .I(a[3]), .ZN(n155) );
  CKXOR2D1 U116 ( .A1(n155), .A2(a[4]), .Z(n170) );
  INVD1 U117 ( .I(n163), .ZN(n156) );
  INVD1 U118 ( .I(b[4]), .ZN(n159) );
  INVD1 U119 ( .I(b[5]), .ZN(n158) );
  INVD1 U120 ( .I(n18), .ZN(n152) );
  INVD1 U121 ( .I(b[2]), .ZN(n161) );
  INVD1 U122 ( .I(b[3]), .ZN(n160) );
  INVD1 U123 ( .I(b[1]), .ZN(n162) );
  XNR2D0 U124 ( .A1(n162), .A2(a[1]), .ZN(product[1]) );
  XNR3D0 U125 ( .A1(n2), .A2(n13), .A3(a[5]), .ZN(product[13]) );
  XNR2D0 U126 ( .A1(n161), .A2(a[1]), .ZN(n76) );
  XNR2D0 U127 ( .A1(n160), .A2(a[1]), .ZN(n75) );
  XNR2D0 U128 ( .A1(n159), .A2(a[1]), .ZN(n74) );
  XNR2D0 U129 ( .A1(n158), .A2(a[1]), .ZN(n73) );
  OAI22D0 U130 ( .A1(a[3]), .A2(n164), .B1(n163), .B2(n165), .ZN(n69) );
  OAI22D0 U131 ( .A1(n165), .A2(n164), .B1(n163), .B2(n166), .ZN(n68) );
  XNR2D0 U132 ( .A1(n155), .A2(n162), .ZN(n165) );
  OAI22D0 U133 ( .A1(n166), .A2(n164), .B1(n163), .B2(n167), .ZN(n67) );
  XNR2D0 U134 ( .A1(n155), .A2(n161), .ZN(n166) );
  OAI22D0 U135 ( .A1(n167), .A2(n164), .B1(n163), .B2(n168), .ZN(n66) );
  XNR2D0 U136 ( .A1(n155), .A2(n160), .ZN(n167) );
  OAI22D0 U137 ( .A1(n168), .A2(n164), .B1(n163), .B2(n169), .ZN(n65) );
  XNR2D0 U138 ( .A1(n155), .A2(n159), .ZN(n168) );
  OAI22D0 U139 ( .A1(n169), .A2(n164), .B1(a[3]), .B2(n163), .ZN(n64) );
  XNR2D0 U140 ( .A1(n155), .A2(n158), .ZN(n169) );
  MUX2ND0 U141 ( .I0(n163), .I1(n164), .S(n155), .ZN(n63) );
  IOA21D0 U142 ( .A1(n164), .A2(n163), .B(a[3]), .ZN(n62) );
  OAI22D0 U143 ( .A1(a[5]), .A2(n171), .B1(n170), .B2(n172), .ZN(n60) );
  OAI22D0 U144 ( .A1(n172), .A2(n171), .B1(n170), .B2(n173), .ZN(n59) );
  XNR2D0 U145 ( .A1(n153), .A2(n162), .ZN(n172) );
  OAI22D0 U146 ( .A1(n173), .A2(n171), .B1(n170), .B2(n174), .ZN(n58) );
  XNR2D0 U147 ( .A1(n153), .A2(n161), .ZN(n173) );
  OAI22D0 U148 ( .A1(n174), .A2(n171), .B1(n170), .B2(n175), .ZN(n57) );
  XNR2D0 U149 ( .A1(n153), .A2(n160), .ZN(n174) );
  OAI22D0 U150 ( .A1(n175), .A2(n171), .B1(n170), .B2(n176), .ZN(n56) );
  XNR2D0 U151 ( .A1(n153), .A2(n159), .ZN(n175) );
  OAI22D0 U152 ( .A1(n176), .A2(n171), .B1(a[5]), .B2(n170), .ZN(n55) );
  XNR2D0 U153 ( .A1(n153), .A2(n158), .ZN(n176) );
  MUX2ND0 U154 ( .I0(n170), .I1(n171), .S(n153), .ZN(n54) );
  IOA21D0 U155 ( .A1(n171), .A2(n170), .B(a[5]), .ZN(n53) );
  CKND2D0 U156 ( .A1(n153), .A2(n162), .ZN(n51) );
  MUX2ND0 U157 ( .I0(n162), .I1(n161), .S(n153), .ZN(n50) );
  MUX2ND0 U158 ( .I0(n161), .I1(n160), .S(n153), .ZN(n49) );
  MUX2ND0 U159 ( .I0(n160), .I1(n159), .S(n153), .ZN(n48) );
  CKND2D0 U160 ( .A1(a[5]), .A2(n158), .ZN(n47) );
  NR2D0 U161 ( .A1(n155), .A2(n164), .ZN(n46) );
  XNR2D0 U162 ( .A1(n155), .A2(a[2]), .ZN(n177) );
  NR2D0 U163 ( .A1(n153), .A2(n171), .ZN(n45) );
  XNR2D0 U164 ( .A1(n153), .A2(a[4]), .ZN(n178) );
  MUX2ND0 U165 ( .I0(b[4]), .I1(b[5]), .S(n153), .ZN(n18) );
endmodule


module input_trunc_core_BITS5_BIAS1_DIVIDE0 ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   adjustment_0_, n1, n16, n17, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15;
  wire   [5:1] a;
  wire   [5:1] b;
  wire   [13:1] multiplication_product;
  wire   [22:11] fraction;
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
        SYNOPSYS_UNCONNECTED__46;

  fp32_normal_finite_wrapper wrapper ( .x({x[31:18], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .y({y[31:18], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .divide_mode(1'b0), .fraction_x({a, SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15, SYNOPSYS_UNCONNECTED__16, 
        SYNOPSYS_UNCONNECTED__17}), .fraction_y({b, SYNOPSYS_UNCONNECTED__18, 
        SYNOPSYS_UNCONNECTED__19, SYNOPSYS_UNCONNECTED__20, 
        SYNOPSYS_UNCONNECTED__21, SYNOPSYS_UNCONNECTED__22, 
        SYNOPSYS_UNCONNECTED__23, SYNOPSYS_UNCONNECTED__24, 
        SYNOPSYS_UNCONNECTED__25, SYNOPSYS_UNCONNECTED__26, 
        SYNOPSYS_UNCONNECTED__27, SYNOPSYS_UNCONNECTED__28, 
        SYNOPSYS_UNCONNECTED__29, SYNOPSYS_UNCONNECTED__30, 
        SYNOPSYS_UNCONNECTED__31, SYNOPSYS_UNCONNECTED__32, 
        SYNOPSYS_UNCONNECTED__33, SYNOPSYS_UNCONNECTED__34, 
        SYNOPSYS_UNCONNECTED__35}), .result_fraction({fraction, 
        multiplication_product[13], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0}), .exponent_adjust({n1, n1, adjustment_0_}), 
        .result({result[31:10], SYNOPSYS_UNCONNECTED__36, 
        SYNOPSYS_UNCONNECTED__37, SYNOPSYS_UNCONNECTED__38, 
        SYNOPSYS_UNCONNECTED__39, SYNOPSYS_UNCONNECTED__40, 
        SYNOPSYS_UNCONNECTED__41, SYNOPSYS_UNCONNECTED__42, 
        SYNOPSYS_UNCONNECTED__43, SYNOPSYS_UNCONNECTED__44, 
        SYNOPSYS_UNCONNECTED__45}) );
  input_trunc_core_BITS5_BIAS1_DIVIDE0_DW_mult_uns_0 mult_22 ( .a({n15, a, n15}), .b({n15, b, n15}), .product({multiplication_product, 
        SYNOPSYS_UNCONNECTED__46}) );
  INVD1 U3 ( .I(n17), .ZN(n1) );
  INVD1 U4 ( .I(multiplication_product[12]), .ZN(n3) );
  INVD1 U5 ( .I(multiplication_product[11]), .ZN(n4) );
  INVD1 U6 ( .I(multiplication_product[10]), .ZN(n5) );
  INVD1 U7 ( .I(multiplication_product[9]), .ZN(n6) );
  INVD1 U8 ( .I(multiplication_product[8]), .ZN(n7) );
  INVD1 U9 ( .I(multiplication_product[7]), .ZN(n8) );
  INVD1 U10 ( .I(multiplication_product[6]), .ZN(n9) );
  INVD1 U11 ( .I(multiplication_product[5]), .ZN(n10) );
  INVD1 U12 ( .I(multiplication_product[4]), .ZN(n11) );
  ND2D1 U13 ( .A1(n3), .A2(n2), .ZN(n17) );
  ND2D1 U14 ( .A1(n2), .A2(n17), .ZN(adjustment_0_) );
  ND2D1 U15 ( .A1(multiplication_product[12]), .A2(n2), .ZN(n16) );
  OAI221D0 U16 ( .A1(n2), .A2(n13), .B1(n16), .B2(n14), .C(n17), .ZN(
        fraction[12]) );
  OAI222D0 U17 ( .A1(n5), .A2(n16), .B1(n17), .B2(n6), .C1(n4), .C2(n2), .ZN(
        fraction[21]) );
  OAI222D0 U18 ( .A1(n16), .A2(n4), .B1(n17), .B2(n5), .C1(n3), .C2(n2), .ZN(
        fraction[22]) );
  OAI222D0 U19 ( .A1(n16), .A2(n13), .B1(n17), .B2(n14), .C1(n2), .C2(n12), 
        .ZN(fraction[13]) );
  OAI222D0 U20 ( .A1(n16), .A2(n12), .B1(n17), .B2(n13), .C1(n2), .C2(n11), 
        .ZN(fraction[14]) );
  OAI222D0 U21 ( .A1(n16), .A2(n11), .B1(n17), .B2(n12), .C1(n2), .C2(n10), 
        .ZN(fraction[15]) );
  OAI222D0 U22 ( .A1(n16), .A2(n10), .B1(n17), .B2(n11), .C1(n2), .C2(n9), 
        .ZN(fraction[16]) );
  OAI222D0 U23 ( .A1(n16), .A2(n9), .B1(n17), .B2(n10), .C1(n2), .C2(n8), .ZN(
        fraction[17]) );
  OAI222D0 U24 ( .A1(n16), .A2(n8), .B1(n17), .B2(n9), .C1(n2), .C2(n7), .ZN(
        fraction[18]) );
  OAI222D0 U25 ( .A1(n16), .A2(n7), .B1(n17), .B2(n8), .C1(n2), .C2(n6), .ZN(
        fraction[19]) );
  OAI222D0 U26 ( .A1(n16), .A2(n6), .B1(n17), .B2(n7), .C1(n5), .C2(n2), .ZN(
        fraction[20]) );
  OAI21D1 U27 ( .A1(n2), .A2(n14), .B(n16), .ZN(fraction[11]) );
  INVD1 U29 ( .I(multiplication_product[3]), .ZN(n12) );
  INVD1 U30 ( .I(multiplication_product[2]), .ZN(n13) );
  INVD1 U32 ( .I(multiplication_product[1]), .ZN(n14) );
  TIEH U34 ( .Z(n15) );
  CKND0 U28 ( .I(multiplication_product[13]), .ZN(n2) );
endmodule


module input_mul_b5_bias1 ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;

  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9;
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

  input_trunc_core_BITS5_BIAS1_DIVIDE0 dut ( .x({x[31:18], 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0}), .y({y[31:18], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .result({result[31:10], SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9}) );
endmodule

