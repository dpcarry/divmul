/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Tue Sep 15 21:48:47 2026
/////////////////////////////////////////////////////////////


module fp32_normal_finite_wrapper_DW01_add_1_DW01_add_2 ( A, B, CI, SUM, CO );
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
  fp32_normal_finite_wrapper_DW01_add_1_DW01_add_2 add_1_root_add_0_root_add_22_2 ( 
        .A(x[30:23]), .B({y[30], N17, N16, N15, N14, N13, N12, N11}), .CI(n79), 
        .SUM({N10, N9, N8, N7, N6, N5, N4, N3}) );
  AN2XD1 U3 ( .A1(exponent_adjust[0]), .A2(N3), .Z(n1) );
  CKBD1 U41 ( .I(result_fraction[13]), .Z(result[13]) );
  CKBD1 U42 ( .I(result_fraction[14]), .Z(result[14]) );
  CKBD1 U43 ( .I(result_fraction[15]), .Z(result[15]) );
  CKBD1 U44 ( .I(result_fraction[16]), .Z(result[16]) );
  CKBD1 U45 ( .I(result_fraction[12]), .Z(result[12]) );
  CKBD1 U46 ( .I(result_fraction[11]), .Z(result[11]) );
  CKBD1 U47 ( .I(result_fraction[10]), .Z(result[10]) );
  FA1D0 U48 ( .A(N4), .B(exponent_adjust[1]), .CI(n1), .CO(
        add_0_root_add_0_root_add_22_2_carry[2]), .S(result[24]) );
  FA1D0 U49 ( .A(N5), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[2]), .CO(
        add_0_root_add_0_root_add_22_2_carry[3]), .S(result[25]) );
  FA1D0 U50 ( .A(N6), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[3]), .CO(
        add_0_root_add_0_root_add_22_2_carry[4]), .S(result[26]) );
  FA1D0 U51 ( .A(N7), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[4]), .CO(
        add_0_root_add_0_root_add_22_2_carry[5]), .S(result[27]) );
  FA1D0 U52 ( .A(N8), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[5]), .CO(
        add_0_root_add_0_root_add_22_2_carry[6]), .S(result[28]) );
  FA1D0 U53 ( .A(N9), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[6]), .CO(
        add_0_root_add_0_root_add_22_2_carry[7]), .S(result[29]) );
  XOR3D1 U62 ( .A1(N10), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_22_2_carry[7]), .Z(result[30]) );
  INVD1 U70 ( .I(y[29]), .ZN(N17) );
  INVD1 U71 ( .I(y[24]), .ZN(N12) );
  INVD1 U72 ( .I(y[25]), .ZN(N13) );
  INVD1 U73 ( .I(y[26]), .ZN(N14) );
  INVD1 U74 ( .I(y[27]), .ZN(N15) );
  INVD1 U75 ( .I(y[28]), .ZN(N16) );
  CKBD1 U94 ( .I(x[22]), .Z(fraction_x[22]) );
  CKBD1 U95 ( .I(x[21]), .Z(fraction_x[21]) );
  CKBD1 U96 ( .I(x[20]), .Z(fraction_x[20]) );
  CKBD1 U97 ( .I(x[19]), .Z(fraction_x[19]) );
  CKBD1 U98 ( .I(x[18]), .Z(fraction_x[18]) );
  CKBD1 U99 ( .I(y[22]), .Z(fraction_y[22]) );
  CKBD1 U100 ( .I(y[21]), .Z(fraction_y[21]) );
  CKBD1 U101 ( .I(y[20]), .Z(fraction_y[20]) );
  CKBD1 U102 ( .I(y[19]), .Z(fraction_y[19]) );
  CKBD1 U103 ( .I(y[18]), .Z(fraction_y[18]) );
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


module abs_l0_exact_DW01_add_0 ( A, B, CI, SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [16:5] carry;

  FA1D0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA1D0 U1_4 ( .A(A[4]), .B(B[4]), .CI(n1), .CO(carry[5]), .S(SUM[4]) );
  FA1D0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1D0 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  FA1D0 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA1D0 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  FA1D0 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FA1D0 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FA1D0 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  FA1D0 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  FA1D0 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FA1D0 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  XOR3D1 U1_16 ( .A1(A[16]), .A2(B[16]), .A3(carry[16]), .Z(SUM[16]) );
  AN2XD1 U1 ( .A1(B[3]), .A2(A[3]), .Z(n1) );
  CKXOR2D1 U2 ( .A1(B[3]), .A2(A[3]), .Z(SUM[3]) );
endmodule


module abs_l0_exact ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   fx_22, rx_4_, fy_22, ry_4_, adjust_2_, n7, n25, n26, py_8_, py_6_,
         py_5_, py_4_, py_14_, py_13_, py_12_, py_11_, py_10_, px_9_, px_8_,
         px_7_, px_6_, px_5_, px_4_, px_3_, px_16_, px_14_, px_13_, px_12_,
         px_11_, px_10_, N9, N8, N70, N6, N5, N4, N17, N16, N15, N14, N13, N12,
         N11, N10, mult_7_S2_n19, mult_7_S2_n18, mult_7_S2_n17, mult_7_S2_n16,
         mult_7_S2_n15, mult_7_S2_n14, mult_7_S2_n13, mult_7_S2_n12,
         mult_7_S2_n9, mult_7_S2_n8, mult_7_S2_n7, mult_7_S2_n6, mult_7_S2_n5,
         mult_7_S2_n4, mult_7_S2_n3, mult_7_S2_n2, mult_7_n19, mult_7_n18,
         mult_7_n17, mult_7_n16, mult_7_n15, mult_7_n14, mult_7_n13,
         mult_7_n12, mult_7_n9, mult_7_n8, mult_7_n7, mult_7_n6, mult_7_n5,
         mult_7_n4, mult_7_n3, mult_7_n2, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n39, n40, n41, n42, n43, n44, n45, n47, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66;
  wire   [16:3] p;
  wire   [22:10] frac;
  wire   [12:8] sub_1_root_sub_0_root_sub_9_carry;
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
  assign result[7] = 1'b0;
  assign result[8] = 1'b0;
  assign result[9] = 1'b0;
  assign result[0] = 1'b0;
  assign result[1] = 1'b0;
  assign result[2] = 1'b0;
  assign result[3] = 1'b0;
  assign result[4] = 1'b0;
  assign result[5] = 1'b0;
  assign result[6] = 1'b0;

  fp32_normal_finite_wrapper wrapper ( .x({x[31:18], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .y({y[31:18], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .divide_mode(1'b0), .fraction_x({fx_22, px_6_, px_5_, px_4_, px_3_, 
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17}), .fraction_y({
        fy_22, py_6_, py_5_, py_4_, N4, SYNOPSYS_UNCONNECTED__18, 
        SYNOPSYS_UNCONNECTED__19, SYNOPSYS_UNCONNECTED__20, 
        SYNOPSYS_UNCONNECTED__21, SYNOPSYS_UNCONNECTED__22, 
        SYNOPSYS_UNCONNECTED__23, SYNOPSYS_UNCONNECTED__24, 
        SYNOPSYS_UNCONNECTED__25, SYNOPSYS_UNCONNECTED__26, 
        SYNOPSYS_UNCONNECTED__27, SYNOPSYS_UNCONNECTED__28, 
        SYNOPSYS_UNCONNECTED__29, SYNOPSYS_UNCONNECTED__30, 
        SYNOPSYS_UNCONNECTED__31, SYNOPSYS_UNCONNECTED__32, 
        SYNOPSYS_UNCONNECTED__33, SYNOPSYS_UNCONNECTED__34, 
        SYNOPSYS_UNCONNECTED__35}), .result_fraction({frac, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .exponent_adjust({
        adjust_2_, adjust_2_, n7}), .result({result[31:10], 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, 
        SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39, 
        SYNOPSYS_UNCONNECTED__40, SYNOPSYS_UNCONNECTED__41, 
        SYNOPSYS_UNCONNECTED__42, SYNOPSYS_UNCONNECTED__43, 
        SYNOPSYS_UNCONNECTED__44, SYNOPSYS_UNCONNECTED__45}) );
  abs_l0_exact_DW01_add_0 add_0_root_sub_0_root_sub_9 ( .A({px_16_, px_16_, 
        px_14_, px_13_, px_12_, px_11_, px_10_, px_9_, px_8_, px_7_, px_6_, 
        px_5_, px_4_, px_3_, n66, n66, n66}), .B({N17, N16, N15, N14, N13, N12, 
        N11, N10, N9, N8, N70, N6, N5, N4, n66, n66, n66}), .CI(n66), .SUM({p, 
        SYNOPSYS_UNCONNECTED__46, SYNOPSYS_UNCONNECTED__47, 
        SYNOPSYS_UNCONNECTED__48}) );
  FA1D0 mult_7_S2_U19 ( .A(py_4_), .B(py_6_), .CI(py_5_), .CO(mult_7_S2_n18), 
        .S(mult_7_S2_n19) );
  HA1D0 mult_7_S2_U18 ( .A(py_6_), .B(fy_22), .CO(mult_7_S2_n16), .S(
        mult_7_S2_n17) );
  FA1D0 mult_7_S2_U17 ( .A(N4), .B(py_4_), .CI(mult_7_S2_n17), .CO(
        mult_7_S2_n14), .S(mult_7_S2_n15) );
  FA1D0 mult_7_S2_U16 ( .A(py_5_), .B(fy_22), .CI(mult_7_S2_n16), .CO(
        mult_7_S2_n12), .S(mult_7_S2_n13) );
  FA1D0 mult_7_S2_U11 ( .A(n42), .B(N4), .CI(mult_7_S2_n9), .CO(mult_7_S2_n8), 
        .S(py_8_) );
  FA1D0 mult_7_S2_U8 ( .A(mult_7_S2_n19), .B(n43), .CI(mult_7_S2_n7), .CO(
        mult_7_S2_n6), .S(py_10_) );
  FA1D0 mult_7_S2_U7 ( .A(mult_7_S2_n15), .B(mult_7_S2_n18), .CI(mult_7_S2_n6), 
        .CO(mult_7_S2_n5), .S(py_11_) );
  FA1D0 mult_7_S2_U6 ( .A(mult_7_S2_n14), .B(mult_7_S2_n13), .CI(mult_7_S2_n5), 
        .CO(mult_7_S2_n4), .S(py_12_) );
  FA1D0 mult_7_S2_U5 ( .A(mult_7_S2_n12), .B(n45), .CI(mult_7_S2_n4), .CO(
        mult_7_S2_n3), .S(py_13_) );
  FA1D0 mult_7_S2_U4 ( .A(py_6_), .B(fy_22), .CI(mult_7_S2_n3), .CO(
        mult_7_S2_n2), .S(py_14_) );
  FA1D0 mult_7_U19 ( .A(px_4_), .B(px_6_), .CI(px_5_), .CO(mult_7_n18), .S(
        mult_7_n19) );
  HA1D0 mult_7_U18 ( .A(px_6_), .B(fx_22), .CO(mult_7_n16), .S(mult_7_n17) );
  FA1D0 mult_7_U17 ( .A(px_3_), .B(px_4_), .CI(mult_7_n17), .CO(mult_7_n14), 
        .S(mult_7_n15) );
  FA1D0 mult_7_U16 ( .A(px_5_), .B(fx_22), .CI(mult_7_n16), .CO(mult_7_n12), 
        .S(mult_7_n13) );
  FA1D0 mult_7_U11 ( .A(n40), .B(px_3_), .CI(mult_7_n9), .CO(mult_7_n8), .S(
        px_8_) );
  FA1D0 mult_7_U8 ( .A(mult_7_n19), .B(n39), .CI(mult_7_n7), .CO(mult_7_n6), 
        .S(px_10_) );
  FA1D0 mult_7_U7 ( .A(mult_7_n15), .B(mult_7_n18), .CI(mult_7_n6), .CO(
        mult_7_n5), .S(px_11_) );
  FA1D0 mult_7_U6 ( .A(mult_7_n14), .B(mult_7_n13), .CI(mult_7_n5), .CO(
        mult_7_n4), .S(px_12_) );
  FA1D0 mult_7_U5 ( .A(mult_7_n12), .B(n41), .CI(mult_7_n4), .CO(mult_7_n3), 
        .S(px_13_) );
  FA1D0 mult_7_U4 ( .A(px_6_), .B(fx_22), .CI(mult_7_n3), .CO(mult_7_n2), .S(
        px_14_) );
  ND2D1 U44 ( .A1(n25), .A2(n26), .ZN(adjust_2_) );
  INVD1 U45 ( .I(n25), .ZN(n7) );
  ND2D1 U46 ( .A1(p[15]), .A2(n52), .ZN(n25) );
  ND2D1 U47 ( .A1(n53), .A2(n52), .ZN(n26) );
  AN2XD1 U48 ( .A1(sub_1_root_sub_0_root_sub_9_carry[12]), .A2(n49), .Z(n28)
         );
  IND2D1 U49 ( .A1(n31), .B1(py_11_), .ZN(
        sub_1_root_sub_0_root_sub_9_carry[12]) );
  INVD1 U50 ( .I(p[15]), .ZN(n53) );
  OAI222D0 U51 ( .A1(n25), .A2(n54), .B1(n26), .B2(n55), .C1(n53), .C2(n52), 
        .ZN(frac[22]) );
  OAI222D0 U52 ( .A1(n25), .A2(n57), .B1(n26), .B2(n58), .C1(n52), .C2(n56), 
        .ZN(frac[19]) );
  OAI222D0 U53 ( .A1(n25), .A2(n56), .B1(n26), .B2(n57), .C1(n52), .C2(n55), 
        .ZN(frac[20]) );
  OAI222D0 U54 ( .A1(n25), .A2(n55), .B1(n26), .B2(n56), .C1(n52), .C2(n54), 
        .ZN(frac[21]) );
  INVD1 U55 ( .I(p[12]), .ZN(n56) );
  INVD1 U56 ( .I(p[11]), .ZN(n57) );
  INVD1 U57 ( .I(p[16]), .ZN(n52) );
  INVD1 U58 ( .I(py_12_), .ZN(n49) );
  AN2XD1 U59 ( .A1(n30), .A2(n51), .Z(n29) );
  AN2XD1 U60 ( .A1(n28), .A2(n50), .Z(n30) );
  IND2D1 U63 ( .A1(sub_1_root_sub_0_root_sub_9_carry[8]), .B1(py_8_), .ZN(
        sub_1_root_sub_0_root_sub_9_carry[9]) );
  OAI222D0 U64 ( .A1(n25), .A2(n63), .B1(n26), .B2(n64), .C1(n52), .C2(n62), 
        .ZN(frac[13]) );
  OAI222D0 U65 ( .A1(n25), .A2(n62), .B1(n26), .B2(n63), .C1(n52), .C2(n61), 
        .ZN(frac[14]) );
  OAI222D0 U66 ( .A1(n25), .A2(n61), .B1(n26), .B2(n62), .C1(n52), .C2(n60), 
        .ZN(frac[15]) );
  OAI222D0 U67 ( .A1(n25), .A2(n60), .B1(n26), .B2(n61), .C1(n52), .C2(n59), 
        .ZN(frac[16]) );
  OAI222D0 U68 ( .A1(n25), .A2(n59), .B1(n26), .B2(n60), .C1(n52), .C2(n58), 
        .ZN(frac[17]) );
  OAI222D0 U69 ( .A1(n25), .A2(n58), .B1(n26), .B2(n59), .C1(n52), .C2(n57), 
        .ZN(frac[18]) );
  INVD1 U70 ( .I(p[14]), .ZN(n54) );
  INVD1 U71 ( .I(p[13]), .ZN(n55) );
  INVD1 U72 ( .I(p[10]), .ZN(n58) );
  INVD1 U73 ( .I(p[8]), .ZN(n60) );
  INVD1 U74 ( .I(py_14_), .ZN(n51) );
  INVD1 U75 ( .I(py_13_), .ZN(n50) );
  AN2XD1 U77 ( .A1(n32), .A2(n44), .Z(n33) );
  INVD1 U78 ( .I(py_10_), .ZN(n47) );
  AN2XD1 U82 ( .A1(sub_1_root_sub_0_root_sub_9_carry[9]), .A2(n37), .Z(n35) );
  OAI222D0 U83 ( .A1(n25), .A2(n64), .B1(n26), .B2(n65), .C1(n52), .C2(n63), 
        .ZN(frac[12]) );
  OAI22D1 U84 ( .A1(n25), .A2(n65), .B1(n52), .B2(n64), .ZN(frac[11]) );
  NR2D1 U85 ( .A1(n52), .A2(n65), .ZN(frac[10]) );
  INVD1 U86 ( .I(p[9]), .ZN(n59) );
  INVD1 U87 ( .I(p[7]), .ZN(n61) );
  INVD1 U88 ( .I(p[6]), .ZN(n62) );
  INVD1 U89 ( .I(p[5]), .ZN(n63) );
  INVD1 U90 ( .I(p[4]), .ZN(n64) );
  XNR2D1 U93 ( .A1(ry_4_), .A2(N4), .ZN(n36) );
  CKXOR2D1 U94 ( .A1(mult_7_S2_n8), .A2(py_5_), .Z(n37) );
  INVD1 U95 ( .I(px_4_), .ZN(n40) );
  INVD1 U96 ( .I(px_6_), .ZN(n41) );
  INVD1 U97 ( .I(py_5_), .ZN(n44) );
  INVD1 U98 ( .I(px_3_), .ZN(n39) );
  INVD1 U99 ( .I(py_6_), .ZN(n45) );
  INVD1 U100 ( .I(p[3]), .ZN(n65) );
  INVD1 U101 ( .I(fy_22), .ZN(ry_4_) );
  INVD1 U102 ( .I(fx_22), .ZN(rx_4_) );
  TIEL U104 ( .ZN(n66) );
  XNR2D1 U105 ( .A1(n34), .A2(n36), .ZN(N8) );
  CKXOR2D1 U109 ( .A1(n43), .A2(n42), .Z(N5) );
  CKXOR2D1 U110 ( .A1(n32), .A2(n44), .Z(N6) );
  CKXOR2D1 U111 ( .A1(n33), .A2(n45), .Z(N70) );
  CKXOR2D1 U112 ( .A1(sub_1_root_sub_0_root_sub_9_carry[9]), .A2(n37), .Z(N10)
         );
  CKXOR2D1 U113 ( .A1(n35), .A2(n47), .Z(N11) );
  CKXOR2D1 U114 ( .A1(sub_1_root_sub_0_root_sub_9_carry[12]), .A2(n49), .Z(N13) );
  CKXOR2D1 U115 ( .A1(n28), .A2(n50), .Z(N14) );
  CKXOR2D1 U116 ( .A1(n30), .A2(n51), .Z(N15) );
  CKXOR2D1 U117 ( .A1(n29), .A2(mult_7_S2_n2), .Z(N16) );
  OR2D0 U118 ( .A1(mult_7_n8), .A2(px_5_), .Z(mult_7_n7) );
  CKND2D0 U119 ( .A1(rx_4_), .A2(n39), .ZN(mult_7_n9) );
  CKND0 U120 ( .I(mult_7_n2), .ZN(px_16_) );
  CKXOR2D0 U121 ( .A1(rx_4_), .A2(px_3_), .Z(px_7_) );
  XNR2D0 U122 ( .A1(mult_7_n8), .A2(px_5_), .ZN(px_9_) );
  OR2D0 U123 ( .A1(mult_7_S2_n8), .A2(py_5_), .Z(mult_7_S2_n7) );
  CKND2D0 U124 ( .A1(ry_4_), .A2(n43), .ZN(mult_7_S2_n9) );
  IND2D0 U42 ( .A1(n29), .B1(mult_7_S2_n2), .ZN(N17) );
  CKXOR2D0 U43 ( .A1(n31), .A2(py_11_), .Z(N12) );
  AN2D0 U61 ( .A1(n47), .A2(n35), .Z(n31) );
  CKXOR2D0 U62 ( .A1(py_8_), .A2(sub_1_root_sub_0_root_sub_9_carry[8]), .Z(N9)
         );
  OR2D0 U76 ( .A1(n34), .A2(n36), .Z(sub_1_root_sub_0_root_sub_9_carry[8]) );
  AN2D0 U79 ( .A1(n45), .A2(n33), .Z(n34) );
  CKND0 U80 ( .I(N4), .ZN(n43) );
  CKND0 U81 ( .I(py_4_), .ZN(n42) );
  NR2D0 U91 ( .A1(N4), .A2(py_4_), .ZN(n32) );
endmodule

