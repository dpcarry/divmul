/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Tue Sep 15 21:49:48 2026
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
  CKBD1 U41 ( .I(result_fraction[20]), .Z(result[20]) );
  CKBD1 U42 ( .I(result_fraction[16]), .Z(result[16]) );
  CKBD1 U43 ( .I(result_fraction[17]), .Z(result[17]) );
  CKBD1 U44 ( .I(result_fraction[18]), .Z(result[18]) );
  CKBD1 U45 ( .I(result_fraction[19]), .Z(result[19]) );
  CKBD1 U46 ( .I(result_fraction[14]), .Z(result[14]) );
  CKBD1 U47 ( .I(result_fraction[15]), .Z(result[15]) );
  CKBD1 U48 ( .I(result_fraction[13]), .Z(result[13]) );
  CKBD1 U49 ( .I(result_fraction[12]), .Z(result[12]) );
  CKBD1 U50 ( .I(result_fraction[11]), .Z(result[11]) );
  FA1D0 U51 ( .A(N4), .B(exponent_adjust[1]), .CI(n1), .CO(
        add_0_root_add_0_root_add_22_2_carry[2]), .S(result[24]) );
  FA1D0 U52 ( .A(N5), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[2]), .CO(
        add_0_root_add_0_root_add_22_2_carry[3]), .S(result[25]) );
  FA1D0 U53 ( .A(N6), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[3]), .CO(
        add_0_root_add_0_root_add_22_2_carry[4]), .S(result[26]) );
  FA1D0 U54 ( .A(N7), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[4]), .CO(
        add_0_root_add_0_root_add_22_2_carry[5]), .S(result[27]) );
  FA1D0 U55 ( .A(N8), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[5]), .CO(
        add_0_root_add_0_root_add_22_2_carry[6]), .S(result[28]) );
  FA1D0 U56 ( .A(N9), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[6]), .CO(
        add_0_root_add_0_root_add_22_2_carry[7]), .S(result[29]) );
  XOR3D1 U65 ( .A1(N10), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_22_2_carry[7]), .Z(result[30]) );
  INVD1 U73 ( .I(y[29]), .ZN(N17) );
  INVD1 U74 ( .I(y[24]), .ZN(N12) );
  INVD1 U75 ( .I(y[25]), .ZN(N13) );
  INVD1 U76 ( .I(y[26]), .ZN(N14) );
  INVD1 U77 ( .I(y[27]), .ZN(N15) );
  INVD1 U78 ( .I(y[28]), .ZN(N16) );
  CKBD1 U98 ( .I(x[22]), .Z(fraction_x[22]) );
  CKBD1 U99 ( .I(x[21]), .Z(fraction_x[21]) );
  CKBD1 U100 ( .I(x[20]), .Z(fraction_x[20]) );
  CKBD1 U101 ( .I(x[19]), .Z(fraction_x[19]) );
  CKBD1 U102 ( .I(x[18]), .Z(fraction_x[18]) );
  CKBD1 U103 ( .I(y[22]), .Z(fraction_y[22]) );
  CKBD1 U104 ( .I(y[21]), .Z(fraction_y[21]) );
  CKBD1 U105 ( .I(y[20]), .Z(fraction_y[20]) );
  CKBD1 U106 ( .I(y[19]), .Z(fraction_y[19]) );
  CKBD1 U107 ( .I(y[18]), .Z(fraction_y[18]) );
  CKBD1 U108 ( .I(result_fraction[22]), .Z(result[22]) );
  CKBD1 U109 ( .I(result_fraction[21]), .Z(result[21]) );
  TIEL U110 ( .ZN(n79) );
  CKXOR2D1 U111 ( .A1(exponent_adjust[0]), .A2(N3), .Z(result[23]) );
  CKND0 U119 ( .I(y[23]), .ZN(N11) );
endmodule


module abs_l0_inherited_s7_DW01_add_0 ( A, B, CI, SUM, CO );
  input [12:0] A;
  input [12:0] B;
  output [12:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [12:2] carry;

  FA1D0 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  FA1D0 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA1D0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1D0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1D0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1D0 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FA1D0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA1D0 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA1D0 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FA1D0 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  FA1D0 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  XOR3D1 U1_12 ( .A1(A[12]), .A2(B[12]), .A3(carry[12]), .Z(SUM[12]) );
  AN2XD1 U1 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
  CKXOR2D1 U2 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
endmodule


module abs_l0_inherited_s7 ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   fx_22, fy_22, adjust_2_, n7, n21, n22, py_9_, py_8_, py_7_, py_6_,
         py_5_, py_4_, py_3_, py_2_, py_1_, py_10_, px_9_, px_8_, px_7_, px_6_,
         px_5_, px_4_, px_3_, px_2_, px_1_, px_12_, px_10_, px_0_, N9, N8, N70,
         N6, N5, N4, N3, N2, N13, N12, N11, N10, N1, mult_7_S2_n22,
         mult_7_S2_n21, mult_7_S2_n20, mult_7_S2_n19, mult_7_S2_n17,
         mult_7_S2_n16, mult_7_S2_n15, mult_7_S2_n14, mult_7_S2_n13,
         mult_7_S2_n12, mult_7_S2_n9, mult_7_S2_n8, mult_7_S2_n7, mult_7_S2_n6,
         mult_7_S2_n5, mult_7_S2_n4, mult_7_S2_n3, mult_7_S2_n2, mult_7_n22,
         mult_7_n21, mult_7_n20, mult_7_n19, mult_7_n17, mult_7_n16,
         mult_7_n15, mult_7_n14, mult_7_n13, mult_7_n12, mult_7_n9, mult_7_n8,
         mult_7_n7, mult_7_n6, mult_7_n5, mult_7_n4, mult_7_n3, mult_7_n2, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n40,
         n41, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59;
  wire   [4:3] rx;
  wire   [4:3] ry;
  wire   [12:0] p;
  wire   [22:11] frac;
  wire   [8:4] sub_1_root_sub_0_root_sub_9_carry;
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

  fp32_normal_finite_wrapper wrapper ( .x({x[31:18], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .y({y[31:18], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .divide_mode(1'b0), .fraction_x({fx_22, rx[3], px_2_, px_1_, px_0_, 
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17}), .fraction_y({
        fy_22, ry[3], py_2_, py_1_, N1, SYNOPSYS_UNCONNECTED__18, 
        SYNOPSYS_UNCONNECTED__19, SYNOPSYS_UNCONNECTED__20, 
        SYNOPSYS_UNCONNECTED__21, SYNOPSYS_UNCONNECTED__22, 
        SYNOPSYS_UNCONNECTED__23, SYNOPSYS_UNCONNECTED__24, 
        SYNOPSYS_UNCONNECTED__25, SYNOPSYS_UNCONNECTED__26, 
        SYNOPSYS_UNCONNECTED__27, SYNOPSYS_UNCONNECTED__28, 
        SYNOPSYS_UNCONNECTED__29, SYNOPSYS_UNCONNECTED__30, 
        SYNOPSYS_UNCONNECTED__31, SYNOPSYS_UNCONNECTED__32, 
        SYNOPSYS_UNCONNECTED__33, SYNOPSYS_UNCONNECTED__34, 
        SYNOPSYS_UNCONNECTED__35}), .result_fraction({frac, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .exponent_adjust({
        adjust_2_, adjust_2_, n7}), .result({result[31:11], 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, 
        SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39, 
        SYNOPSYS_UNCONNECTED__40, SYNOPSYS_UNCONNECTED__41, 
        SYNOPSYS_UNCONNECTED__42, SYNOPSYS_UNCONNECTED__43, 
        SYNOPSYS_UNCONNECTED__44, SYNOPSYS_UNCONNECTED__45, 
        SYNOPSYS_UNCONNECTED__46}) );
  abs_l0_inherited_s7_DW01_add_0 add_0_root_sub_0_root_sub_9 ( .A({px_12_, 
        px_12_, px_10_, px_9_, px_8_, px_7_, px_6_, px_5_, px_4_, px_3_, px_2_, 
        px_1_, px_0_}), .B({N13, N12, N11, N10, N9, N8, N70, N6, N5, N4, N3, 
        N2, N1}), .CI(n59), .SUM(p) );
  FA1D0 mult_7_S2_U16 ( .A(N1), .B(py_2_), .CI(n35), .CO(mult_7_S2_n16), .S(
        mult_7_S2_n17) );
  HA1D0 mult_7_S2_U15 ( .A(py_1_), .B(fy_22), .CO(mult_7_S2_n14), .S(
        mult_7_S2_n15) );
  FA1D0 mult_7_S2_U14 ( .A(py_2_), .B(fy_22), .CI(ry[3]), .CO(mult_7_S2_n12), 
        .S(mult_7_S2_n13) );
  HA1D0 mult_7_S2_U11 ( .A(ry[3]), .B(N1), .CO(mult_7_S2_n9), .S(py_3_) );
  FA1D0 mult_7_S2_U10 ( .A(mult_7_S2_n9), .B(N1), .CI(mult_7_S2_n22), .CO(
        mult_7_S2_n8), .S(py_4_) );
  FA1D0 mult_7_S2_U9 ( .A(mult_7_S2_n20), .B(mult_7_S2_n21), .CI(mult_7_S2_n8), 
        .CO(mult_7_S2_n7), .S(py_5_) );
  FA1D0 mult_7_S2_U8 ( .A(mult_7_S2_n17), .B(mult_7_S2_n19), .CI(mult_7_S2_n7), 
        .CO(mult_7_S2_n6), .S(py_6_) );
  FA1D0 mult_7_S2_U7 ( .A(mult_7_S2_n16), .B(mult_7_S2_n15), .CI(mult_7_S2_n6), 
        .CO(mult_7_S2_n5), .S(py_7_) );
  FA1D0 mult_7_S2_U6 ( .A(mult_7_S2_n13), .B(mult_7_S2_n14), .CI(mult_7_S2_n5), 
        .CO(mult_7_S2_n4), .S(py_8_) );
  FA1D0 mult_7_S2_U5 ( .A(mult_7_S2_n12), .B(n35), .CI(mult_7_S2_n4), .CO(
        mult_7_S2_n3), .S(py_9_) );
  FA1D0 mult_7_S2_U4 ( .A(ry[3]), .B(fy_22), .CI(mult_7_S2_n3), .CO(
        mult_7_S2_n2), .S(py_10_) );
  FA1D0 mult_7_U16 ( .A(px_0_), .B(px_2_), .CI(n33), .CO(mult_7_n16), .S(
        mult_7_n17) );
  HA1D0 mult_7_U15 ( .A(px_1_), .B(fx_22), .CO(mult_7_n14), .S(mult_7_n15) );
  FA1D0 mult_7_U14 ( .A(px_2_), .B(fx_22), .CI(rx[3]), .CO(mult_7_n12), .S(
        mult_7_n13) );
  HA1D0 mult_7_U11 ( .A(rx[3]), .B(px_0_), .CO(mult_7_n9), .S(px_3_) );
  FA1D0 mult_7_U10 ( .A(mult_7_n9), .B(px_0_), .CI(mult_7_n22), .CO(mult_7_n8), 
        .S(px_4_) );
  FA1D0 mult_7_U9 ( .A(mult_7_n20), .B(mult_7_n21), .CI(mult_7_n8), .CO(
        mult_7_n7), .S(px_5_) );
  FA1D0 mult_7_U8 ( .A(mult_7_n17), .B(mult_7_n19), .CI(mult_7_n7), .CO(
        mult_7_n6), .S(px_6_) );
  FA1D0 mult_7_U7 ( .A(mult_7_n16), .B(mult_7_n15), .CI(mult_7_n6), .CO(
        mult_7_n5), .S(px_7_) );
  FA1D0 mult_7_U6 ( .A(mult_7_n13), .B(mult_7_n14), .CI(mult_7_n5), .CO(
        mult_7_n4), .S(px_8_) );
  FA1D0 mult_7_U5 ( .A(mult_7_n12), .B(n33), .CI(mult_7_n4), .CO(mult_7_n3), 
        .S(px_9_) );
  FA1D0 mult_7_U4 ( .A(rx[3]), .B(fx_22), .CI(mult_7_n3), .CO(mult_7_n2), .S(
        px_10_) );
  ND2D1 U35 ( .A1(n21), .A2(n22), .ZN(adjust_2_) );
  INVD1 U36 ( .I(n21), .ZN(n7) );
  ND2D1 U37 ( .A1(p[11]), .A2(n46), .ZN(n21) );
  ND2D1 U38 ( .A1(n47), .A2(n46), .ZN(n22) );
  AN2XD1 U39 ( .A1(n25), .A2(n44), .Z(n24) );
  AN2XD1 U40 ( .A1(sub_1_root_sub_0_root_sub_9_carry[8]), .A2(n43), .Z(n25) );
  IND2D1 U41 ( .A1(n26), .B1(py_7_), .ZN(sub_1_root_sub_0_root_sub_9_carry[8])
         );
  INVD1 U43 ( .I(p[11]), .ZN(n47) );
  OAI222D0 U44 ( .A1(n21), .A2(n50), .B1(n22), .B2(n51), .C1(n49), .C2(n46), 
        .ZN(frac[20]) );
  OAI222D0 U45 ( .A1(n21), .A2(n54), .B1(n22), .B2(n55), .C1(n46), .C2(n53), 
        .ZN(frac[16]) );
  OAI222D0 U46 ( .A1(n21), .A2(n53), .B1(n22), .B2(n54), .C1(n46), .C2(n52), 
        .ZN(frac[17]) );
  OAI222D0 U47 ( .A1(n21), .A2(n52), .B1(n22), .B2(n53), .C1(n46), .C2(n51), 
        .ZN(frac[18]) );
  OAI222D0 U48 ( .A1(n21), .A2(n51), .B1(n22), .B2(n52), .C1(n46), .C2(n50), 
        .ZN(frac[19]) );
  OAI222D0 U49 ( .A1(n49), .A2(n21), .B1(n22), .B2(n50), .C1(n48), .C2(n46), 
        .ZN(frac[21]) );
  OAI222D0 U50 ( .A1(n21), .A2(n48), .B1(n22), .B2(n49), .C1(n47), .C2(n46), 
        .ZN(frac[22]) );
  INVD1 U51 ( .I(p[9]), .ZN(n49) );
  INVD1 U52 ( .I(p[8]), .ZN(n50) );
  INVD1 U53 ( .I(p[7]), .ZN(n51) );
  INVD1 U54 ( .I(p[6]), .ZN(n52) );
  INVD1 U55 ( .I(p[12]), .ZN(n46) );
  INVD1 U56 ( .I(py_9_), .ZN(n44) );
  INVD1 U57 ( .I(py_8_), .ZN(n43) );
  AN2XD1 U58 ( .A1(n24), .A2(n45), .Z(n27) );
  INVD1 U60 ( .I(py_6_), .ZN(n41) );
  AN2XD1 U61 ( .A1(sub_1_root_sub_0_root_sub_9_carry[5]), .A2(n40), .Z(n28) );
  IND2D1 U62 ( .A1(sub_1_root_sub_0_root_sub_9_carry[4]), .B1(py_4_), .ZN(
        sub_1_root_sub_0_root_sub_9_carry[5]) );
  OAI222D0 U64 ( .A1(n21), .A2(n56), .B1(n22), .B2(n57), .C1(n46), .C2(n55), 
        .ZN(frac[14]) );
  OAI222D0 U65 ( .A1(n21), .A2(n55), .B1(n22), .B2(n56), .C1(n46), .C2(n54), 
        .ZN(frac[15]) );
  INVD1 U66 ( .I(p[10]), .ZN(n48) );
  INVD1 U67 ( .I(p[5]), .ZN(n53) );
  INVD1 U68 ( .I(p[4]), .ZN(n54) );
  INVD1 U69 ( .I(p[3]), .ZN(n55) );
  INVD1 U70 ( .I(py_10_), .ZN(n45) );
  INVD1 U71 ( .I(py_5_), .ZN(n40) );
  OAI222D0 U76 ( .A1(n21), .A2(n57), .B1(n22), .B2(n58), .C1(n46), .C2(n56), 
        .ZN(frac[13]) );
  OAI22D1 U77 ( .A1(n46), .A2(n57), .B1(n21), .B2(n58), .ZN(frac[12]) );
  NR2D1 U78 ( .A1(n46), .A2(n58), .ZN(frac[11]) );
  INVD1 U79 ( .I(p[2]), .ZN(n56) );
  INVD1 U80 ( .I(p[1]), .ZN(n57) );
  INVD1 U81 ( .I(py_2_), .ZN(n34) );
  INVD1 U82 ( .I(ry[3]), .ZN(n35) );
  INVD1 U83 ( .I(px_2_), .ZN(n32) );
  INVD1 U86 ( .I(px_1_), .ZN(n31) );
  INVD1 U87 ( .I(rx[3]), .ZN(n33) );
  INVD1 U88 ( .I(p[0]), .ZN(n58) );
  INVD1 U89 ( .I(fy_22), .ZN(ry[4]) );
  INVD1 U90 ( .I(fx_22), .ZN(rx[4]) );
  TIEL U92 ( .ZN(n59) );
  CKXOR2D1 U97 ( .A1(n36), .A2(n37), .Z(N2) );
  CKXOR2D1 U98 ( .A1(n29), .A2(n34), .Z(N3) );
  CKXOR2D1 U99 ( .A1(sub_1_root_sub_0_root_sub_9_carry[5]), .A2(n40), .Z(N6)
         );
  CKXOR2D1 U100 ( .A1(n28), .A2(n41), .Z(N70) );
  CKXOR2D1 U101 ( .A1(sub_1_root_sub_0_root_sub_9_carry[8]), .A2(n43), .Z(N9)
         );
  CKXOR2D1 U102 ( .A1(n25), .A2(n44), .Z(N10) );
  CKXOR2D1 U103 ( .A1(n24), .A2(n45), .Z(N11) );
  CKXOR2D1 U104 ( .A1(n27), .A2(mult_7_S2_n2), .Z(N12) );
  CKND2D0 U105 ( .A1(n31), .A2(n32), .ZN(mult_7_n19) );
  CKXOR2D0 U106 ( .A1(px_1_), .A2(n32), .Z(mult_7_n20) );
  CKND2D0 U107 ( .A1(rx[4]), .A2(n31), .ZN(mult_7_n21) );
  CKXOR2D0 U108 ( .A1(rx[4]), .A2(px_1_), .Z(mult_7_n22) );
  CKND0 U109 ( .I(mult_7_n2), .ZN(px_12_) );
  CKND2D0 U110 ( .A1(n37), .A2(n34), .ZN(mult_7_S2_n19) );
  CKXOR2D0 U111 ( .A1(py_1_), .A2(n34), .Z(mult_7_S2_n20) );
  CKND2D0 U112 ( .A1(ry[4]), .A2(n37), .ZN(mult_7_S2_n21) );
  CKXOR2D0 U113 ( .A1(ry[4]), .A2(py_1_), .Z(mult_7_S2_n22) );
  IND2D0 U34 ( .A1(n27), .B1(mult_7_S2_n2), .ZN(N13) );
  CKXOR2D0 U42 ( .A1(n26), .A2(py_7_), .Z(N8) );
  AN2D0 U59 ( .A1(n41), .A2(n28), .Z(n26) );
  CKXOR2D0 U63 ( .A1(py_4_), .A2(sub_1_root_sub_0_root_sub_9_carry[4]), .Z(N5)
         );
  IND2D0 U72 ( .A1(n30), .B1(py_3_), .ZN(sub_1_root_sub_0_root_sub_9_carry[4])
         );
  CKXOR2D0 U73 ( .A1(n30), .A2(py_3_), .Z(N4) );
  AN2D0 U74 ( .A1(n34), .A2(n29), .Z(n30) );
  CKND0 U75 ( .I(N1), .ZN(n36) );
  CKND0 U84 ( .I(py_1_), .ZN(n37) );
  NR2D0 U85 ( .A1(N1), .A2(py_1_), .ZN(n29) );
endmodule

