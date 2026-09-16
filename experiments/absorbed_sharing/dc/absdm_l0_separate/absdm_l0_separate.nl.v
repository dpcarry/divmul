/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Tue Sep 15 22:57:32 2026
/////////////////////////////////////////////////////////////


module absdm_l0_separate_div_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] DIFF;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;
  wire   [13:1] carry;

  FA1D0 U2_1 ( .A(A[1]), .B(n12), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  FA1D0 U2_2 ( .A(A[2]), .B(n11), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  XOR3D1 U2_13 ( .A1(A[13]), .A2(n2), .A3(carry[13]), .Z(DIFF[13]) );
  FA1D0 U2_3 ( .A(A[3]), .B(n10), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  FA1D0 U2_4 ( .A(A[4]), .B(n9), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FA1D0 U2_5 ( .A(A[5]), .B(n8), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  FA1D0 U2_10 ( .A(A[10]), .B(n3), .CI(carry[10]), .CO(carry[11]), .S(DIFF[10]) );
  FA1D0 U2_7 ( .A(A[7]), .B(n6), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  FA1D0 U2_6 ( .A(A[6]), .B(n7), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  FA1D0 U2_8 ( .A(A[8]), .B(n5), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  FA1D0 U2_9 ( .A(A[9]), .B(n4), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9]) );
  FA1D0 U2_12 ( .A(A[12]), .B(n2), .CI(carry[12]), .CO(carry[13]), .S(DIFF[12]) );
  FA1D0 U2_11 ( .A(A[11]), .B(n2), .CI(carry[11]), .CO(carry[12]), .S(DIFF[11]) );
  INVD1 U1 ( .I(B[9]), .ZN(n4) );
  INVD1 U2 ( .I(B[8]), .ZN(n5) );
  INVD1 U3 ( .I(B[6]), .ZN(n7) );
  INVD1 U4 ( .I(B[7]), .ZN(n6) );
  INVD1 U5 ( .I(B[10]), .ZN(n3) );
  INVD1 U6 ( .I(B[5]), .ZN(n8) );
  INVD1 U7 ( .I(B[4]), .ZN(n9) );
  INVD1 U8 ( .I(B[15]), .ZN(n2) );
  INVD1 U9 ( .I(B[3]), .ZN(n10) );
  INVD1 U10 ( .I(B[2]), .ZN(n11) );
  INVD1 U12 ( .I(B[1]), .ZN(n12) );
  CKXOR2D0 U11 ( .A1(A[0]), .A2(B[0]), .Z(DIFF[0]) );
  IND2D0 U13 ( .A1(A[0]), .B1(B[0]), .ZN(carry[1]) );
endmodule


module absdm_l0_separate_div ( fx, fy, value );
  input [22:0] fx;
  input [22:0] fy;
  output [28:0] value;
  wire   rx_4_, ry_4_, py_9_, py_8_, py_7_, py_6_, py_5_, py_4_, py_3_, py_12_,
         py_10_, px_9_, px_8_, px_7_, px_6_, px_5_, px_4_, px_3_, px_12_,
         px_10_, N9, N8, N7, N6, N5, N4, N3, N13, N12, N11, N10, mult_6_S2_n22,
         mult_6_S2_n21, mult_6_S2_n20, mult_6_S2_n19, mult_6_S2_n17,
         mult_6_S2_n16, mult_6_S2_n15, mult_6_S2_n14, mult_6_S2_n13,
         mult_6_S2_n12, mult_6_S2_n9, mult_6_S2_n8, mult_6_S2_n7, mult_6_S2_n6,
         mult_6_S2_n5, mult_6_S2_n4, mult_6_S2_n3, mult_6_S2_n2, mult_6_n22,
         mult_6_n21, mult_6_n20, mult_6_n19, mult_6_n17, mult_6_n16,
         mult_6_n15, mult_6_n14, mult_6_n13, mult_6_n12, mult_6_n9, mult_6_n8,
         mult_6_n7, mult_6_n6, mult_6_n5, mult_6_n4, mult_6_n3, mult_6_n2,
         n130, n14, n15, n16, n17, n18, n21, n22, n23, n24, n25, n26, n27, n28
;
  wire   [8:5] add_1_root_sub_8_carry;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1;

  absdm_l0_separate_div_DW01_sub_0 sub_0_root_sub_8 ( .A({n28, n28, N13, N12, 
        N11, N10, N9, N8, N7, N6, N5, N4, N3, fx[20:18]}), .B({py_12_, py_12_, 
        py_12_, py_12_, py_12_, py_10_, py_9_, py_8_, py_7_, py_6_, py_5_, 
        py_4_, py_3_, fy[20:18]}), .CI(n28), .DIFF({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, value[24:11]}) );
  FA1D0 mult_6_S2_U16 ( .A(fy[18]), .B(fy[20]), .CI(n27), .CO(mult_6_S2_n16), 
        .S(mult_6_S2_n17) );
  HA1D0 mult_6_S2_U15 ( .A(fy[19]), .B(fy[22]), .CO(mult_6_S2_n14), .S(
        mult_6_S2_n15) );
  FA1D0 mult_6_S2_U14 ( .A(fy[20]), .B(fy[22]), .CI(fy[21]), .CO(mult_6_S2_n12), .S(mult_6_S2_n13) );
  HA1D0 mult_6_S2_U11 ( .A(fy[21]), .B(fy[18]), .CO(mult_6_S2_n9), .S(py_3_)
         );
  FA1D0 mult_6_S2_U10 ( .A(mult_6_S2_n9), .B(fy[18]), .CI(mult_6_S2_n22), .CO(
        mult_6_S2_n8), .S(py_4_) );
  FA1D0 mult_6_S2_U9 ( .A(mult_6_S2_n20), .B(mult_6_S2_n21), .CI(mult_6_S2_n8), 
        .CO(mult_6_S2_n7), .S(py_5_) );
  FA1D0 mult_6_S2_U8 ( .A(mult_6_S2_n17), .B(mult_6_S2_n19), .CI(mult_6_S2_n7), 
        .CO(mult_6_S2_n6), .S(py_6_) );
  FA1D0 mult_6_S2_U7 ( .A(mult_6_S2_n16), .B(mult_6_S2_n15), .CI(mult_6_S2_n6), 
        .CO(mult_6_S2_n5), .S(py_7_) );
  FA1D0 mult_6_S2_U6 ( .A(mult_6_S2_n13), .B(mult_6_S2_n14), .CI(mult_6_S2_n5), 
        .CO(mult_6_S2_n4), .S(py_8_) );
  FA1D0 mult_6_S2_U5 ( .A(mult_6_S2_n12), .B(n27), .CI(mult_6_S2_n4), .CO(
        mult_6_S2_n3), .S(py_9_) );
  FA1D0 mult_6_S2_U4 ( .A(fy[21]), .B(fy[22]), .CI(mult_6_S2_n3), .CO(
        mult_6_S2_n2), .S(py_10_) );
  FA1D0 mult_6_U16 ( .A(fx[18]), .B(fx[20]), .CI(n24), .CO(mult_6_n16), .S(
        mult_6_n17) );
  HA1D0 mult_6_U15 ( .A(fx[19]), .B(fx[22]), .CO(mult_6_n14), .S(mult_6_n15)
         );
  FA1D0 mult_6_U14 ( .A(fx[20]), .B(fx[22]), .CI(fx[21]), .CO(mult_6_n12), .S(
        mult_6_n13) );
  HA1D0 mult_6_U11 ( .A(fx[21]), .B(fx[18]), .CO(mult_6_n9), .S(px_3_) );
  FA1D0 mult_6_U10 ( .A(mult_6_n9), .B(fx[18]), .CI(mult_6_n22), .CO(mult_6_n8), .S(px_4_) );
  FA1D0 mult_6_U9 ( .A(mult_6_n20), .B(mult_6_n21), .CI(mult_6_n8), .CO(
        mult_6_n7), .S(px_5_) );
  FA1D0 mult_6_U8 ( .A(mult_6_n17), .B(mult_6_n19), .CI(mult_6_n7), .CO(
        mult_6_n6), .S(px_6_) );
  FA1D0 mult_6_U7 ( .A(mult_6_n16), .B(mult_6_n15), .CI(mult_6_n6), .CO(
        mult_6_n5), .S(px_7_) );
  FA1D0 mult_6_U6 ( .A(mult_6_n13), .B(mult_6_n14), .CI(mult_6_n5), .CO(
        mult_6_n4), .S(px_8_) );
  FA1D0 mult_6_U5 ( .A(mult_6_n12), .B(n24), .CI(mult_6_n4), .CO(mult_6_n3), 
        .S(px_9_) );
  FA1D0 mult_6_U4 ( .A(fx[21]), .B(fx[22]), .CI(mult_6_n3), .CO(mult_6_n2), 
        .S(px_10_) );
  AN2XD1 U18 ( .A1(n15), .A2(px_9_), .Z(n14) );
  AN2XD1 U21 ( .A1(add_1_root_sub_8_carry[8]), .A2(px_8_), .Z(n15) );
  AN2XD1 U24 ( .A1(n14), .A2(px_10_), .Z(n17) );
  AN2XD1 U25 ( .A1(add_1_root_sub_8_carry[5]), .A2(px_5_), .Z(n18) );
  INVD1 U27 ( .I(px_3_), .ZN(N3) );
  INVD1 U28 ( .I(fx[20]), .ZN(n23) );
  INVD1 U29 ( .I(fx[22]), .ZN(rx_4_) );
  INVD1 U30 ( .I(fx[19]), .ZN(n22) );
  INVD1 U31 ( .I(fx[21]), .ZN(n24) );
  INVD1 U32 ( .I(fy[20]), .ZN(n26) );
  INVD1 U33 ( .I(fy[22]), .ZN(ry_4_) );
  INVD1 U34 ( .I(fy[19]), .ZN(n25) );
  INVD1 U35 ( .I(fy[21]), .ZN(n27) );
  TIEL U36 ( .ZN(n28) );
  XNR2D1 U37 ( .A1(px_3_), .A2(px_4_), .ZN(N4) );
  XNR2D1 U38 ( .A1(n16), .A2(px_7_), .ZN(N7) );
  XNR2D1 U39 ( .A1(n130), .A2(px_12_), .ZN(N12) );
  CKXOR2D1 U40 ( .A1(add_1_root_sub_8_carry[5]), .A2(px_5_), .Z(N5) );
  CKXOR2D1 U41 ( .A1(n18), .A2(px_6_), .Z(N6) );
  CKXOR2D1 U42 ( .A1(add_1_root_sub_8_carry[8]), .A2(px_8_), .Z(N8) );
  CKXOR2D1 U43 ( .A1(n15), .A2(px_9_), .Z(N9) );
  CKXOR2D1 U44 ( .A1(n14), .A2(px_10_), .Z(N10) );
  CKXOR2D1 U45 ( .A1(n17), .A2(px_12_), .Z(N11) );
  CKND2D0 U47 ( .A1(n22), .A2(n23), .ZN(mult_6_n19) );
  CKXOR2D0 U48 ( .A1(fx[19]), .A2(n23), .Z(mult_6_n20) );
  CKND2D0 U49 ( .A1(rx_4_), .A2(n22), .ZN(mult_6_n21) );
  CKXOR2D0 U50 ( .A1(rx_4_), .A2(fx[19]), .Z(mult_6_n22) );
  CKND2D0 U52 ( .A1(n25), .A2(n26), .ZN(mult_6_S2_n19) );
  CKXOR2D0 U53 ( .A1(fy[19]), .A2(n26), .Z(mult_6_S2_n20) );
  CKND2D0 U54 ( .A1(ry_4_), .A2(n25), .ZN(mult_6_S2_n21) );
  CKXOR2D0 U55 ( .A1(ry_4_), .A2(fy[19]), .Z(mult_6_S2_n22) );
  CKND0 U56 ( .I(mult_6_S2_n2), .ZN(py_12_) );
  NR2D0 U3 ( .A1(px_12_), .A2(n21), .ZN(N13) );
  CKND0 U4 ( .I(mult_6_n2), .ZN(px_12_) );
  CKND0 U5 ( .I(n21), .ZN(n130) );
  CKND2D0 U6 ( .A1(px_12_), .A2(n17), .ZN(n21) );
  OR2D0 U7 ( .A1(px_7_), .A2(n16), .Z(add_1_root_sub_8_carry[8]) );
  AN2D0 U8 ( .A1(px_6_), .A2(n18), .Z(n16) );
  OR2D0 U9 ( .A1(px_4_), .A2(px_3_), .Z(add_1_root_sub_8_carry[5]) );
endmodule


module absdm_l0_separate_mul_DW01_add_0 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [12:5] carry;

  FA1D0 U1_4 ( .A(A[4]), .B(B[4]), .CI(n1), .CO(carry[5]), .S(SUM[4]) );
  XOR3D1 U1_12 ( .A1(A[12]), .A2(B[12]), .A3(carry[12]), .Z(SUM[12]) );
  FA1D0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1D0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA1D0 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA1D0 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FA1D0 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FA1D0 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FA1D0 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  AN2XD1 U1 ( .A1(B[3]), .A2(A[3]), .Z(n1) );
  CKXOR2D1 U2 ( .A1(B[3]), .A2(A[3]), .Z(SUM[3]) );
endmodule


module absdm_l0_separate_mul ( fx, fy, value );
  input [22:0] fx;
  input [22:0] fy;
  output [28:0] value;
  wire   py_9_, py_8_, py_7_, py_6_, py_5_, py_4_, net1372, py_12_, py_10_,
         px_9_, px_8_, px_7_, px_6_, px_5_, px_4_, px_12_, px_10_, N9, N8, N7,
         N6, N5, N4, N3, N12, N11, N10, mult_18_S2_n7, mult_18_S2_n6,
         mult_18_S2_n5, mult_18_S2_n4, mult_18_S2_n3, mult_18_n7, mult_18_n6,
         mult_18_n5, mult_18_n4, mult_18_n3, n17, n18, n19, n20, n21;
  wire   [10:5] add_1_root_add_20_2_carry;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5;

  absdm_l0_separate_mul_DW01_add_0 add_0_root_add_20_2 ( .A({py_12_, py_12_, 
        py_12_, py_12_, py_12_, py_10_, py_9_, py_8_, py_7_, py_6_, py_5_, 
        py_4_, fy[16], net1372, net1372, net1372}), .B({net1372, net1372, 
        net1372, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3, net1372, net1372, 
        net1372}), .CI(net1372), .SUM({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, value[24:15], 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5}) );
  HA1D0 mult_18_S2_U9 ( .A(fy[17]), .B(fy[16]), .CO(mult_18_S2_n7), .S(py_4_)
         );
  FA1D0 mult_18_S2_U8 ( .A(fy[18]), .B(fy[17]), .CI(mult_18_S2_n7), .CO(
        mult_18_S2_n6), .S(py_5_) );
  FA1D0 mult_18_S2_U7 ( .A(fy[19]), .B(fy[18]), .CI(mult_18_S2_n6), .CO(
        mult_18_S2_n5), .S(py_6_) );
  FA1D0 mult_18_S2_U6 ( .A(fy[20]), .B(fy[19]), .CI(mult_18_S2_n5), .CO(
        mult_18_S2_n4), .S(py_7_) );
  FA1D0 mult_18_S2_U5 ( .A(fy[21]), .B(fy[20]), .CI(mult_18_S2_n4), .CO(
        mult_18_S2_n3), .S(py_8_) );
  FA1D0 mult_18_S2_U4 ( .A(fy[21]), .B(py_12_), .CI(mult_18_S2_n3), .CO(py_10_), .S(py_9_) );
  HA1D0 mult_18_U9 ( .A(fx[17]), .B(fx[16]), .CO(mult_18_n7), .S(px_4_) );
  FA1D0 mult_18_U8 ( .A(fx[18]), .B(fx[17]), .CI(mult_18_n7), .CO(mult_18_n6), 
        .S(px_5_) );
  FA1D0 mult_18_U7 ( .A(fx[19]), .B(fx[18]), .CI(mult_18_n6), .CO(mult_18_n5), 
        .S(px_6_) );
  FA1D0 mult_18_U6 ( .A(fx[20]), .B(fx[19]), .CI(mult_18_n5), .CO(mult_18_n4), 
        .S(px_7_) );
  FA1D0 mult_18_U5 ( .A(fx[21]), .B(fx[20]), .CI(mult_18_n4), .CO(mult_18_n3), 
        .S(px_8_) );
  FA1D0 mult_18_U4 ( .A(fx[21]), .B(px_12_), .CI(mult_18_n3), .CO(px_10_), .S(
        px_9_) );
  AN2XD1 U23 ( .A1(add_1_root_add_20_2_carry[10]), .A2(px_10_), .Z(n18) );
  AN2XD1 U24 ( .A1(n20), .A2(px_7_), .Z(n19) );
  AN2XD1 U27 ( .A1(n21), .A2(px_6_), .Z(n20) );
  AN2XD1 U28 ( .A1(add_1_root_add_20_2_carry[5]), .A2(px_5_), .Z(n21) );
  INVD1 U30 ( .I(fx[16]), .ZN(N3) );
  INVD1 U32 ( .I(fy[22]), .ZN(py_12_) );
  TIEL U33 ( .ZN(net1372) );
  XNR2D1 U34 ( .A1(fx[16]), .A2(px_4_), .ZN(N4) );
  XNR2D1 U35 ( .A1(n17), .A2(px_9_), .ZN(N9) );
  CKXOR2D1 U36 ( .A1(add_1_root_add_20_2_carry[5]), .A2(px_5_), .Z(N5) );
  CKXOR2D1 U37 ( .A1(n21), .A2(px_6_), .Z(N6) );
  CKXOR2D1 U38 ( .A1(n20), .A2(px_7_), .Z(N7) );
  CKXOR2D1 U39 ( .A1(n19), .A2(px_8_), .Z(N8) );
  CKXOR2D1 U40 ( .A1(add_1_root_add_20_2_carry[10]), .A2(px_10_), .Z(N10) );
  CKXOR2D1 U41 ( .A1(n18), .A2(px_12_), .Z(N11) );
  IND2D0 U3 ( .A1(n18), .B1(px_12_), .ZN(N12) );
  CKND0 U4 ( .I(fx[22]), .ZN(px_12_) );
  OR2D0 U5 ( .A1(px_9_), .A2(n17), .Z(add_1_root_add_20_2_carry[10]) );
  AN2D0 U6 ( .A1(px_8_), .A2(n19), .Z(n17) );
  OR2D0 U7 ( .A1(px_4_), .A2(fx[16]), .Z(add_1_root_add_20_2_carry[5]) );
endmodule


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
  AO22D0 U38 ( .A1(N49), .A2(n78), .B1(N25), .B2(divide_mode), .Z(result[29])
         );
  AO22D0 U39 ( .A1(N48), .A2(n78), .B1(N24), .B2(divide_mode), .Z(result[28])
         );
  AO22D0 U40 ( .A1(N47), .A2(n78), .B1(N23), .B2(divide_mode), .Z(result[27])
         );
  AO22D0 U41 ( .A1(N46), .A2(n78), .B1(N22), .B2(divide_mode), .Z(result[26])
         );
  AO22D0 U42 ( .A1(N45), .A2(n78), .B1(N21), .B2(divide_mode), .Z(result[25])
         );
  AO22D0 U43 ( .A1(N44), .A2(n78), .B1(N20), .B2(divide_mode), .Z(result[24])
         );
  FA1D0 U44 ( .A(N4), .B(exponent_adjust[1]), .CI(n1), .CO(
        add_0_root_add_0_root_add_22_2_carry[2]), .S(N20) );
  FA1D0 U45 ( .A(N5), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[2]), .CO(
        add_0_root_add_0_root_add_22_2_carry[3]), .S(N21) );
  FA1D0 U46 ( .A(N6), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[3]), .CO(
        add_0_root_add_0_root_add_22_2_carry[4]), .S(N22) );
  FA1D0 U47 ( .A(N7), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[4]), .CO(
        add_0_root_add_0_root_add_22_2_carry[5]), .S(N23) );
  FA1D0 U48 ( .A(N8), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[5]), .CO(
        add_0_root_add_0_root_add_22_2_carry[6]), .S(N24) );
  FA1D0 U49 ( .A(N9), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[6]), .CO(
        add_0_root_add_0_root_add_22_2_carry[7]), .S(N25) );
  FA1D0 U50 ( .A(N28), .B(exponent_adjust[1]), .CI(n2), .CO(
        add_0_root_add_0_root_add_25_2_carry[2]), .S(N44) );
  FA1D0 U51 ( .A(N29), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[2]), .CO(
        add_0_root_add_0_root_add_25_2_carry[3]), .S(N45) );
  FA1D0 U52 ( .A(N30), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[3]), .CO(
        add_0_root_add_0_root_add_25_2_carry[4]), .S(N46) );
  FA1D0 U53 ( .A(N31), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[4]), .CO(
        add_0_root_add_0_root_add_25_2_carry[5]), .S(N47) );
  FA1D0 U54 ( .A(N32), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[5]), .CO(
        add_0_root_add_0_root_add_25_2_carry[6]), .S(N48) );
  FA1D0 U55 ( .A(N33), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[6]), .CO(
        add_0_root_add_0_root_add_25_2_carry[7]), .S(N49) );
  AO22D0 U56 ( .A1(N43), .A2(n78), .B1(N19), .B2(divide_mode), .Z(result[23])
         );
  CKBD1 U57 ( .I(x[19]), .Z(fraction_x[19]) );
  AO22D0 U58 ( .A1(N50), .A2(n78), .B1(divide_mode), .B2(N26), .Z(result[30])
         );
  XOR3D1 U59 ( .A1(N34), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_25_2_carry[7]), .Z(N50) );
  XOR3D1 U60 ( .A1(N10), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_22_2_carry[7]), .Z(N26) );
  CKBD1 U61 ( .I(x[18]), .Z(fraction_x[18]) );
  CKBD1 U62 ( .I(x[20]), .Z(fraction_x[20]) );
  CKBD1 U63 ( .I(y[19]), .Z(fraction_y[19]) );
  CKBD1 U64 ( .I(y[18]), .Z(fraction_y[18]) );
  AN2XD1 U65 ( .A1(y[23]), .A2(y[24]), .Z(n35) );
  INVD1 U66 ( .I(y[29]), .ZN(N17) );
  INVD0 U67 ( .I(y[24]), .ZN(N12) );
  INVD1 U68 ( .I(y[25]), .ZN(N13) );
  INVD1 U69 ( .I(y[26]), .ZN(N14) );
  INVD1 U70 ( .I(y[27]), .ZN(N15) );
  INVD1 U71 ( .I(y[28]), .ZN(N16) );
  AN2XD1 U72 ( .A1(n35), .A2(y[25]), .Z(n410) );
  AN2XD1 U73 ( .A1(n410), .A2(y[26]), .Z(n51) );
  AN2XD1 U74 ( .A1(n51), .A2(y[27]), .Z(n60) );
  AN2XD1 U75 ( .A1(n60), .A2(y[28]), .Z(n70) );
  CKXOR2D1 U76 ( .A1(y[30]), .A2(n77), .Z(N42) );
  ND2D1 U77 ( .A1(n70), .A2(y[29]), .ZN(n77) );
  CKBD1 U87 ( .I(x[22]), .Z(fraction_x[22]) );
  CKBD1 U88 ( .I(x[21]), .Z(fraction_x[21]) );
  CKBD1 U89 ( .I(x[17]), .Z(fraction_x[17]) );
  CKBD1 U90 ( .I(x[16]), .Z(fraction_x[16]) );
  CKBD1 U91 ( .I(y[22]), .Z(fraction_y[22]) );
  CKBD1 U92 ( .I(y[21]), .Z(fraction_y[21]) );
  CKBD1 U93 ( .I(y[20]), .Z(fraction_y[20]) );
  CKBD1 U94 ( .I(y[17]), .Z(fraction_y[17]) );
  CKBD1 U95 ( .I(y[16]), .Z(fraction_y[16]) );
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


module absdm_l0_separate ( x, y, divide_mode, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  input divide_mode;
  wire   n3, n7, n9, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n56,
         n57, n58;
  wire   [22:16] fx;
  wire   [22:16] fy;
  wire   [24:11] div_value;
  wire   [24:15] mul_value;
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
        SYNOPSYS_UNCONNECTED__48, SYNOPSYS_UNCONNECTED__49, 
        SYNOPSYS_UNCONNECTED__50, SYNOPSYS_UNCONNECTED__51, 
        SYNOPSYS_UNCONNECTED__52, SYNOPSYS_UNCONNECTED__53, 
        SYNOPSYS_UNCONNECTED__54, SYNOPSYS_UNCONNECTED__55, 
        SYNOPSYS_UNCONNECTED__56, SYNOPSYS_UNCONNECTED__57, 
        SYNOPSYS_UNCONNECTED__58, SYNOPSYS_UNCONNECTED__59, 
        SYNOPSYS_UNCONNECTED__60, SYNOPSYS_UNCONNECTED__61, 
        SYNOPSYS_UNCONNECTED__62, SYNOPSYS_UNCONNECTED__63, 
        SYNOPSYS_UNCONNECTED__64, SYNOPSYS_UNCONNECTED__65, 
        SYNOPSYS_UNCONNECTED__66, SYNOPSYS_UNCONNECTED__67, 
        SYNOPSYS_UNCONNECTED__68, SYNOPSYS_UNCONNECTED__69, 
        SYNOPSYS_UNCONNECTED__70, SYNOPSYS_UNCONNECTED__71, 
        SYNOPSYS_UNCONNECTED__72, SYNOPSYS_UNCONNECTED__73, 
        SYNOPSYS_UNCONNECTED__74, SYNOPSYS_UNCONNECTED__75;
  assign result[1] = 1'b0;
  assign result[2] = 1'b0;
  assign result[3] = 1'b0;
  assign result[4] = 1'b0;
  assign result[5] = 1'b0;
  assign result[6] = 1'b0;
  assign result[7] = 1'b0;
  assign result[8] = 1'b0;
  assign result[9] = 1'b0;
  assign result[0] = 1'b0;

  absdm_l0_separate_div div_core ( .fx({fx[22:18], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .fy({fy[22:18], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .value({SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, div_value, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14}) );
  absdm_l0_separate_mul mul_core ( .fx({fx, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .fy({fy, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .value({SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, mul_value, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31, 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33}) );
  fp32_normal_finite_wrapper wrapper ( .x({x[31:16], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y({y[31:16], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .divide_mode(n57), .fraction_x({
        fx, SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, 
        SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39, 
        SYNOPSYS_UNCONNECTED__40, SYNOPSYS_UNCONNECTED__41, 
        SYNOPSYS_UNCONNECTED__42, SYNOPSYS_UNCONNECTED__43, 
        SYNOPSYS_UNCONNECTED__44, SYNOPSYS_UNCONNECTED__45, 
        SYNOPSYS_UNCONNECTED__46, SYNOPSYS_UNCONNECTED__47, 
        SYNOPSYS_UNCONNECTED__48, SYNOPSYS_UNCONNECTED__49}), .fraction_y({fy, 
        SYNOPSYS_UNCONNECTED__50, SYNOPSYS_UNCONNECTED__51, 
        SYNOPSYS_UNCONNECTED__52, SYNOPSYS_UNCONNECTED__53, 
        SYNOPSYS_UNCONNECTED__54, SYNOPSYS_UNCONNECTED__55, 
        SYNOPSYS_UNCONNECTED__56, SYNOPSYS_UNCONNECTED__57, 
        SYNOPSYS_UNCONNECTED__58, SYNOPSYS_UNCONNECTED__59, 
        SYNOPSYS_UNCONNECTED__60, SYNOPSYS_UNCONNECTED__61, 
        SYNOPSYS_UNCONNECTED__62, SYNOPSYS_UNCONNECTED__63, 
        SYNOPSYS_UNCONNECTED__64, SYNOPSYS_UNCONNECTED__65}), 
        .result_fraction({normalized_fraction, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .exponent_adjust({exponent_adjust[2], 
        exponent_adjust[2], exponent_adjust[0]}), .result({result[31:10], 
        SYNOPSYS_UNCONNECTED__66, SYNOPSYS_UNCONNECTED__67, 
        SYNOPSYS_UNCONNECTED__68, SYNOPSYS_UNCONNECTED__69, 
        SYNOPSYS_UNCONNECTED__70, SYNOPSYS_UNCONNECTED__71, 
        SYNOPSYS_UNCONNECTED__72, SYNOPSYS_UNCONNECTED__73, 
        SYNOPSYS_UNCONNECTED__74, SYNOPSYS_UNCONNECTED__75}) );
  ND2D1 U78 ( .A1(n9), .A2(n7), .ZN(exponent_adjust[2]) );
  IND3D1 U80 ( .A1(n25), .B1(n26), .B2(n56), .ZN(n9) );
  ND3D1 U81 ( .A1(n26), .A2(n25), .A3(n56), .ZN(n7) );
  ND2D1 U82 ( .A1(n56), .A2(n9), .ZN(exponent_adjust[0]) );
  OAI221D0 U83 ( .A1(n25), .A2(n3), .B1(n56), .B2(n26), .C(n27), .ZN(
        normalized_fraction[22]) );
  OA22D0 U84 ( .A1(n7), .A2(n28), .B1(n9), .B2(n29), .Z(n27) );
  OAI221D0 U85 ( .A1(n29), .A2(n3), .B1(n56), .B2(n25), .C(n30), .ZN(
        normalized_fraction[21]) );
  OA22D0 U86 ( .A1(n7), .A2(n31), .B1(n9), .B2(n28), .Z(n30) );
  OAI221D0 U87 ( .A1(n41), .A2(n3), .B1(n56), .B2(n39), .C(n44), .ZN(
        normalized_fraction[14]) );
  OA22D0 U88 ( .A1(n7), .A2(n45), .B1(n9), .B2(n43), .Z(n44) );
  OAI221D0 U89 ( .A1(n39), .A2(n3), .B1(n56), .B2(n37), .C(n42), .ZN(
        normalized_fraction[15]) );
  OA22D0 U90 ( .A1(n7), .A2(n43), .B1(n9), .B2(n41), .Z(n42) );
  OAI221D0 U91 ( .A1(n37), .A2(n3), .B1(n56), .B2(n35), .C(n40), .ZN(
        normalized_fraction[16]) );
  OA22D0 U92 ( .A1(n7), .A2(n41), .B1(n9), .B2(n39), .Z(n40) );
  OAI221D0 U93 ( .A1(n35), .A2(n3), .B1(n56), .B2(n33), .C(n38), .ZN(
        normalized_fraction[17]) );
  OA22D0 U94 ( .A1(n7), .A2(n39), .B1(n9), .B2(n37), .Z(n38) );
  OAI221D0 U95 ( .A1(n33), .A2(n3), .B1(n56), .B2(n31), .C(n36), .ZN(
        normalized_fraction[18]) );
  OA22D0 U96 ( .A1(n7), .A2(n37), .B1(n9), .B2(n35), .Z(n36) );
  OAI221D0 U97 ( .A1(n31), .A2(n3), .B1(n56), .B2(n28), .C(n34), .ZN(
        normalized_fraction[19]) );
  OA22D0 U98 ( .A1(n7), .A2(n35), .B1(n9), .B2(n33), .Z(n34) );
  OAI221D0 U99 ( .A1(n28), .A2(n3), .B1(n56), .B2(n29), .C(n32), .ZN(
        normalized_fraction[20]) );
  OA22D0 U100 ( .A1(n7), .A2(n33), .B1(n9), .B2(n31), .Z(n32) );
  OAI221D0 U101 ( .A1(n43), .A2(n3), .B1(n56), .B2(n41), .C(n46), .ZN(
        normalized_fraction[13]) );
  OA22D0 U102 ( .A1(n7), .A2(n47), .B1(n9), .B2(n45), .Z(n46) );
  OAI221D0 U103 ( .A1(n45), .A2(n3), .B1(n56), .B2(n43), .C(n48), .ZN(
        normalized_fraction[12]) );
  IND2D1 U106 ( .A1(n26), .B1(n56), .ZN(n3) );
  OAI22D1 U107 ( .A1(n47), .A2(n3), .B1(n56), .B2(n45), .ZN(
        normalized_fraction[11]) );
  NR2D1 U108 ( .A1(n56), .A2(n47), .ZN(normalized_fraction[10]) );
  ND2D1 U109 ( .A1(div_value[14]), .A2(n57), .ZN(n41) );
  ND2D1 U110 ( .A1(div_value[13]), .A2(n57), .ZN(n43) );
  ND2D1 U111 ( .A1(div_value[12]), .A2(n57), .ZN(n45) );
  AOI22D1 U114 ( .A1(mul_value[23]), .A2(n58), .B1(div_value[23]), .B2(n57), 
        .ZN(n26) );
  AOI22D1 U115 ( .A1(mul_value[22]), .A2(n58), .B1(div_value[22]), .B2(n57), 
        .ZN(n25) );
  AOI22D1 U116 ( .A1(mul_value[21]), .A2(n58), .B1(div_value[21]), .B2(n57), 
        .ZN(n29) );
  AOI22D1 U117 ( .A1(mul_value[20]), .A2(n58), .B1(div_value[20]), .B2(n57), 
        .ZN(n28) );
  AOI22D1 U118 ( .A1(mul_value[19]), .A2(n58), .B1(div_value[19]), .B2(n57), 
        .ZN(n31) );
  INVD1 U119 ( .I(n58), .ZN(n57) );
  AOI22D1 U120 ( .A1(mul_value[18]), .A2(n58), .B1(div_value[18]), .B2(n57), 
        .ZN(n33) );
  AOI22D1 U121 ( .A1(mul_value[17]), .A2(n58), .B1(div_value[17]), .B2(n57), 
        .ZN(n35) );
  AOI22D1 U122 ( .A1(mul_value[16]), .A2(n58), .B1(div_value[16]), .B2(n57), 
        .ZN(n37) );
  AOI22D1 U123 ( .A1(mul_value[15]), .A2(n58), .B1(div_value[15]), .B2(n57), 
        .ZN(n39) );
  ND2D1 U124 ( .A1(div_value[11]), .A2(n57), .ZN(n47) );
  INVD1 U130 ( .I(divide_mode), .ZN(n58) );
  OR2D1 U79 ( .A1(n9), .A2(n47), .Z(n48) );
  AOI22D1 U104 ( .A1(n58), .A2(mul_value[24]), .B1(div_value[24]), .B2(n57), 
        .ZN(n56) );
endmodule

