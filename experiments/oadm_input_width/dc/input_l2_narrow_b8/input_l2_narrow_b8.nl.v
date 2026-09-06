/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Sat Sep  5 15:11:09 2026
/////////////////////////////////////////////////////////////


module oadm_input_narrow_plane_B8_LEVEL2_R16_DW_mult_tc_1 ( a, b, product );
  input [4:0] a;
  input [5:0] b;
  output [10:0] product;
  wire   n2, n3, n4, n5, n6, n7, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n29, n32, n33, n37, n38, n42,
         n47, n48, n52, n53, n93, n94, n95, n96, n98, n99, n100, n101, n102;

  FA1D0 U4 ( .A(n10), .B(n95), .CI(n3), .CO(n2), .S(product[8]) );
  FA1D0 U5 ( .A(n13), .B(n11), .CI(n4), .CO(n3), .S(product[7]) );
  FA1D0 U6 ( .A(n16), .B(n14), .CI(n5), .CO(n4), .S(product[6]) );
  FA1D0 U7 ( .A(n17), .B(n21), .CI(n6), .CO(n5), .S(product[5]) );
  FA1D0 U8 ( .A(n22), .B(n25), .CI(n7), .CO(n6), .S(product[4]) );
  FA1D0 U12 ( .A(n32), .B(a[3]), .CI(n12), .CO(n10), .S(n11) );
  CMPE42D1 U13 ( .A(n37), .B(a[2]), .C(n33), .CIX(n15), .D(n18), .CO(n13), 
        .COX(n12), .S(n14) );
  CMPE42D1 U14 ( .A(n95), .B(n42), .C(n23), .CIX(n20), .D(n19), .CO(n16), 
        .COX(n15), .S(n17) );
  HA1D0 U15 ( .A(n38), .B(a[1]), .CO(n18), .S(n19) );
  FA1D0 U19 ( .A(n48), .B(n52), .CI(n29), .CO(n25), .S(n26) );
  HA1D0 U21 ( .A(a[1]), .B(n53), .CO(n29), .S(product[2]) );
  CKBD1 U60 ( .I(product[9]), .Z(product[10]) );
  INVD1 U62 ( .I(b[2]), .ZN(n94) );
  INVD1 U63 ( .I(a[1]), .ZN(n98) );
  INVD1 U64 ( .I(a[3]), .ZN(n96) );
  INVD1 U66 ( .I(a[4]), .ZN(n95) );
  INVD1 U67 ( .I(a[0]), .ZN(n99) );
  AN2D0 U68 ( .A1(a[2]), .A2(n26), .Z(n7) );
  CKXOR2D0 U69 ( .A1(a[2]), .A2(n26), .Z(product[3]) );
  CKND0 U70 ( .I(n99), .ZN(product[1]) );
  OR2D0 U71 ( .A1(n47), .A2(a[3]), .Z(n20) );
  XNR3D0 U72 ( .A1(n24), .A2(n47), .A3(a[3]), .ZN(n22) );
  MUX2ND0 U73 ( .I0(n100), .I1(n101), .S(n47), .ZN(n21) );
  CKND2D0 U74 ( .A1(a[3]), .A2(n24), .ZN(n101) );
  CKND2D0 U75 ( .A1(n24), .A2(n96), .ZN(n100) );
  CKND0 U76 ( .I(n2), .ZN(product[9]) );
  NR2D0 U77 ( .A1(n99), .A2(n94), .ZN(n53) );
  NR2D0 U78 ( .A1(n99), .A2(n93), .ZN(n52) );
  NR2D0 U79 ( .A1(n94), .A2(n98), .ZN(n48) );
  NR2D0 U80 ( .A1(n93), .A2(n98), .ZN(n47) );
  NR2D0 U82 ( .A1(n94), .A2(n96), .ZN(n38) );
  NR2D0 U83 ( .A1(n93), .A2(n96), .ZN(n37) );
  CKND2D0 U84 ( .A1(a[4]), .A2(b[2]), .ZN(n33) );
  CKND2D0 U85 ( .A1(a[4]), .A2(b[3]), .ZN(n32) );
  XNR2D0 U86 ( .A1(n99), .A2(n102), .ZN(n24) );
  CKND2D0 U87 ( .A1(n99), .A2(n102), .ZN(n23) );
  CKND2D0 U88 ( .A1(a[2]), .A2(b[2]), .ZN(n102) );
  CKND0 U61 ( .I(b[3]), .ZN(n93) );
  AN2D0 U65 ( .A1(a[2]), .A2(b[3]), .Z(n42) );
endmodule


module oadm_input_narrow_plane_B8_LEVEL2_R16_DW_mult_tc_0 ( a, b, product );
  input [4:0] a;
  input [5:0] b;
  output [10:0] product;
  wire   n2, n3, n4, n5, n6, n7, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n29, n32, n33, n37, n38, n42,
         n47, n48, n52, n53, n92, n93, n94, n95, n97, n98, n99, n100, n101;

  FA1D0 U4 ( .A(n10), .B(n94), .CI(n3), .CO(n2), .S(product[8]) );
  FA1D0 U5 ( .A(n13), .B(n11), .CI(n4), .CO(n3), .S(product[7]) );
  FA1D0 U6 ( .A(n16), .B(n14), .CI(n5), .CO(n4), .S(product[6]) );
  FA1D0 U7 ( .A(n17), .B(n21), .CI(n6), .CO(n5), .S(product[5]) );
  FA1D0 U8 ( .A(n22), .B(n25), .CI(n7), .CO(n6), .S(product[4]) );
  FA1D0 U12 ( .A(n32), .B(a[3]), .CI(n12), .CO(n10), .S(n11) );
  CMPE42D1 U13 ( .A(n37), .B(a[2]), .C(n33), .CIX(n15), .D(n18), .CO(n13), 
        .COX(n12), .S(n14) );
  CMPE42D1 U14 ( .A(n94), .B(n42), .C(n23), .CIX(n20), .D(n19), .CO(n16), 
        .COX(n15), .S(n17) );
  HA1D0 U15 ( .A(n38), .B(a[1]), .CO(n18), .S(n19) );
  FA1D0 U19 ( .A(n48), .B(n52), .CI(n29), .CO(n25), .S(n26) );
  HA1D0 U21 ( .A(a[1]), .B(n53), .CO(n29), .S(product[2]) );
  INVD1 U61 ( .I(b[2]), .ZN(n93) );
  INVD1 U62 ( .I(a[1]), .ZN(n97) );
  INVD1 U63 ( .I(a[3]), .ZN(n95) );
  INVD1 U65 ( .I(a[4]), .ZN(n94) );
  INVD1 U66 ( .I(a[0]), .ZN(n98) );
  AN2D0 U67 ( .A1(a[2]), .A2(n26), .Z(n7) );
  CKXOR2D0 U68 ( .A1(a[2]), .A2(n26), .Z(product[3]) );
  CKND0 U69 ( .I(n98), .ZN(product[1]) );
  OR2D0 U70 ( .A1(n47), .A2(a[3]), .Z(n20) );
  XNR3D0 U71 ( .A1(n24), .A2(n47), .A3(a[3]), .ZN(n22) );
  MUX2ND0 U72 ( .I0(n99), .I1(n100), .S(n47), .ZN(n21) );
  CKND2D0 U73 ( .A1(a[3]), .A2(n24), .ZN(n100) );
  CKND2D0 U74 ( .A1(n24), .A2(n95), .ZN(n99) );
  CKND0 U75 ( .I(n2), .ZN(product[9]) );
  NR2D0 U76 ( .A1(n98), .A2(n93), .ZN(n53) );
  NR2D0 U77 ( .A1(n98), .A2(n92), .ZN(n52) );
  NR2D0 U78 ( .A1(n93), .A2(n97), .ZN(n48) );
  NR2D0 U79 ( .A1(n92), .A2(n97), .ZN(n47) );
  NR2D0 U81 ( .A1(n93), .A2(n95), .ZN(n38) );
  NR2D0 U82 ( .A1(n92), .A2(n95), .ZN(n37) );
  CKND2D0 U83 ( .A1(a[4]), .A2(b[2]), .ZN(n33) );
  CKND2D0 U84 ( .A1(a[4]), .A2(b[3]), .ZN(n32) );
  XNR2D0 U85 ( .A1(n98), .A2(n101), .ZN(n24) );
  CKND2D0 U86 ( .A1(n98), .A2(n101), .ZN(n23) );
  CKND2D0 U87 ( .A1(a[2]), .A2(b[2]), .ZN(n101) );
  CKND0 U60 ( .I(b[3]), .ZN(n92) );
  AN2D0 U64 ( .A1(a[2]), .A2(b[3]), .Z(n42) );
endmodule


module oadm_input_narrow_plane_B8_LEVEL2_R16_DW_mult_uns_0 ( a, b, product );
  input [4:0] a;
  input [4:0] b;
  output [9:0] product;
  wire   n2, n3, n4, n5, n6, n9, n10, n11, n12, n13, n14, n15, n16, n17, n19,
         n20, n21, n36, n42, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101;

  FA1D0 U3 ( .A(n12), .B(n10), .CI(n3), .CO(n2), .S(product[7]) );
  FA1D0 U4 ( .A(n15), .B(n13), .CI(n4), .CO(n3), .S(product[6]) );
  FA1D0 U5 ( .A(n16), .B(n20), .CI(n5), .CO(n4), .S(product[5]) );
  FA1D0 U10 ( .A(b[3]), .B(a[3]), .CI(n11), .CO(n9), .S(n10) );
  CMPE42D1 U11 ( .A(b[2]), .B(a[2]), .C(n36), .CIX(n14), .D(n17), .CO(n12), 
        .COX(n11), .S(n13) );
  INVD1 U57 ( .I(n42), .ZN(n94) );
  INVD1 U58 ( .I(n14), .ZN(n92) );
  ND2D1 U62 ( .A1(n19), .A2(n92), .ZN(n99) );
  INVD1 U63 ( .I(n19), .ZN(n93) );
  XNR3D1 U65 ( .A1(n14), .A2(n17), .A3(n93), .ZN(n16) );
  INVD1 U66 ( .I(b[2]), .ZN(n97) );
  INVD1 U67 ( .I(b[3]), .ZN(n96) );
  INVD1 U68 ( .I(a[3]), .ZN(n91) );
  INVD1 U69 ( .I(a[2]), .ZN(n95) );
  XNR2D1 U70 ( .A1(n2), .A2(n9), .ZN(product[8]) );
  AN2D0 U71 ( .A1(n6), .A2(n21), .Z(n5) );
  CKXOR2D0 U72 ( .A1(n6), .A2(n21), .Z(product[4]) );
  AN2D0 U73 ( .A1(a[2]), .A2(b[2]), .Z(n6) );
  CKXOR2D0 U74 ( .A1(a[2]), .A2(b[2]), .Z(product[3]) );
  OAI211D0 U75 ( .A1(n17), .A2(n93), .B(n98), .C(n99), .ZN(n15) );
  INR2D0 U76 ( .A1(b[3]), .B1(n94), .ZN(n19) );
  XNR3D0 U77 ( .A1(a[3]), .A2(n94), .A3(b[3]), .ZN(n21) );
  MUX2ND0 U78 ( .I0(n100), .I1(n101), .S(b[3]), .ZN(n20) );
  CKND2D0 U79 ( .A1(a[3]), .A2(n94), .ZN(n101) );
  CKND2D0 U80 ( .A1(n42), .A2(a[3]), .ZN(n100) );
  NR2D0 U81 ( .A1(n97), .A2(n95), .ZN(n42) );
  NR2D0 U82 ( .A1(n96), .A2(n95), .ZN(n14) );
  NR2D0 U83 ( .A1(n97), .A2(n91), .ZN(n17) );
  NR2D0 U84 ( .A1(n96), .A2(n91), .ZN(n36) );
  OR2D0 U56 ( .A1(n9), .A2(n2), .Z(product[9]) );
  IND2D0 U59 ( .A1(n17), .B1(n92), .ZN(n98) );
endmodule


module oadm_input_narrow_plane_B8_LEVEL2_R16_DW01_add_2 ( A, B, CI, SUM, CO );
  input [12:0] A;
  input [12:0] B;
  output [12:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n5, n6;
  wire   [12:4] carry;

  FA1D0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1D0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1D0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  XOR3D1 U1_12 ( .A1(A[12]), .A2(B[12]), .A3(carry[12]), .Z(SUM[12]) );
  FA1D0 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FA1D0 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA1D0 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FA1D0 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FA1D0 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  IOA21D0 U2 ( .A1(n1), .A2(A[3]), .B(n2), .ZN(carry[4]) );
  OAI21D0 U3 ( .A1(A[3]), .A2(n1), .B(B[3]), .ZN(n2) );
  CKND0 U1 ( .I(n5), .ZN(n1) );
  MAOI222D0 U4 ( .A(A[2]), .B(n6), .C(B[2]), .ZN(n5) );
  AN2D0 U5 ( .A1(B[1]), .A2(A[1]), .Z(n6) );
endmodule


module oadm_input_narrow_plane_B8_LEVEL2_R16 ( x, y, plane_bits );
  input [7:0] x;
  input [7:0] y;
  output [24:0] plane_bits;
  wire   rx_4_, ry_4_, kk_9_, kk_8_, kk_7_, kk_6_, kk_5_, kk_4_, kk_3_, N9, N8,
         N7, N6, N5, N4, N3, N2, N12, N11, N10, N1, N0, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26;
  wire   [10:1] px;
  wire   [9:2] py;
  wire   [12:6] sub_1_root_sub_0_root_sub_25_carry;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9;

  oadm_input_narrow_plane_B8_LEVEL2_R16_DW_mult_tc_1 mult_17 ( .a({rx_4_, 
        x[4:1]}), .b({N0, n13, y[7:6], n13, N0}), .product({px, 
        SYNOPSYS_UNCONNECTED__0}) );
  oadm_input_narrow_plane_B8_LEVEL2_R16_DW_mult_tc_0 mult_18 ( .a({ry_4_, 
        y[4:1]}), .b({N0, n13, x[7:6], n13, N0}), .product({
        SYNOPSYS_UNCONNECTED__1, py, N1, SYNOPSYS_UNCONNECTED__2}) );
  oadm_input_narrow_plane_B8_LEVEL2_R16_DW_mult_uns_0 mult_19 ( .a({n13, 
        x[7:6], n13, N0}), .b({n13, y[7:6], n13, N0}), .product({kk_9_, kk_8_, 
        kk_7_, kk_6_, kk_5_, kk_4_, kk_3_, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5}) );
  oadm_input_narrow_plane_B8_LEVEL2_R16_DW01_add_2 add_0_root_sub_0_root_sub_25 ( 
        .A({px[10], px[10], px, N0}), .B({N12, N11, N10, N9, N8, N7, N6, N5, 
        N4, N3, N2, N1, N0}), .CI(N0), .SUM({plane_bits[24:16], 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9}) );
  TIEL U3 ( .ZN(N0) );
  TIEH U4 ( .Z(n13) );
  FA1D0 U18 ( .A(kk_6_), .B(n26), .CI(sub_1_root_sub_0_root_sub_25_carry[9]), 
        .CO(sub_1_root_sub_0_root_sub_25_carry[10]), .S(N9) );
  FA1D0 U19 ( .A(kk_7_), .B(n26), .CI(sub_1_root_sub_0_root_sub_25_carry[10]), 
        .CO(sub_1_root_sub_0_root_sub_25_carry[11]), .S(N10) );
  XOR3D1 U20 ( .A1(kk_9_), .A2(n26), .A3(
        sub_1_root_sub_0_root_sub_25_carry[12]), .Z(N12) );
  INVD1 U21 ( .I(py[9]), .ZN(n26) );
  FA1D0 U24 ( .A(kk_5_), .B(n25), .CI(sub_1_root_sub_0_root_sub_25_carry[8]), 
        .CO(sub_1_root_sub_0_root_sub_25_carry[9]), .S(N8) );
  INVD1 U25 ( .I(py[8]), .ZN(n25) );
  FA1D0 U26 ( .A(kk_4_), .B(n24), .CI(sub_1_root_sub_0_root_sub_25_carry[7]), 
        .CO(sub_1_root_sub_0_root_sub_25_carry[8]), .S(N7) );
  INVD1 U27 ( .I(py[7]), .ZN(n24) );
  FA1D0 U28 ( .A(kk_8_), .B(n26), .CI(sub_1_root_sub_0_root_sub_25_carry[11]), 
        .CO(sub_1_root_sub_0_root_sub_25_carry[12]), .S(N11) );
  INVD1 U29 ( .I(py[5]), .ZN(n22) );
  INVD1 U30 ( .I(py[4]), .ZN(n21) );
  AN2XD1 U31 ( .A1(n15), .A2(n20), .Z(n16) );
  FA1D0 U34 ( .A(kk_3_), .B(n23), .CI(sub_1_root_sub_0_root_sub_25_carry[6]), 
        .CO(sub_1_root_sub_0_root_sub_25_carry[7]), .S(N6) );
  ND2D1 U35 ( .A1(n17), .A2(py[5]), .ZN(sub_1_root_sub_0_root_sub_25_carry[6])
         );
  INVD1 U36 ( .I(py[6]), .ZN(n23) );
  INVD1 U37 ( .I(py[3]), .ZN(n20) );
  INVD1 U38 ( .I(y[5]), .ZN(ry_4_) );
  INVD1 U39 ( .I(x[5]), .ZN(rx_4_) );
  XNR2D1 U40 ( .A1(n14), .A2(n22), .ZN(N5) );
  CKXOR2D1 U41 ( .A1(n15), .A2(n20), .Z(N3) );
  CKXOR2D1 U42 ( .A1(n16), .A2(n21), .Z(N4) );
  CKXOR2D1 U43 ( .A1(n18), .A2(n19), .Z(N2) );
  CKND0 U5 ( .I(n17), .ZN(n14) );
  CKND2D0 U6 ( .A1(n21), .A2(n16), .ZN(n17) );
  CKND0 U7 ( .I(N1), .ZN(n18) );
  CKND0 U8 ( .I(py[2]), .ZN(n19) );
  NR2D0 U9 ( .A1(N1), .A2(py[2]), .ZN(n15) );
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
  CKBD1 U37 ( .I(result_fraction[10]), .Z(result[10]) );
  CKBD1 U38 ( .I(result_fraction[11]), .Z(result[11]) );
  CKBD1 U39 ( .I(result_fraction[9]), .Z(result[9]) );
  CKBD1 U40 ( .I(result_fraction[8]), .Z(result[8]) );
  FA1D0 U41 ( .A(N4), .B(exponent_adjust[1]), .CI(n1), .CO(
        add_0_root_add_0_root_add_22_2_carry[2]), .S(result[24]) );
  FA1D0 U42 ( .A(N5), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[2]), .CO(
        add_0_root_add_0_root_add_22_2_carry[3]), .S(result[25]) );
  FA1D0 U43 ( .A(N6), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[3]), .CO(
        add_0_root_add_0_root_add_22_2_carry[4]), .S(result[26]) );
  FA1D0 U44 ( .A(N7), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[4]), .CO(
        add_0_root_add_0_root_add_22_2_carry[5]), .S(result[27]) );
  FA1D0 U45 ( .A(N8), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[5]), .CO(
        add_0_root_add_0_root_add_22_2_carry[6]), .S(result[28]) );
  FA1D0 U46 ( .A(N9), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[6]), .CO(
        add_0_root_add_0_root_add_22_2_carry[7]), .S(result[29]) );
  XOR3D1 U55 ( .A1(N10), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_22_2_carry[7]), .Z(result[30]) );
  CKBD1 U57 ( .I(y[21]), .Z(fraction_y[21]) );
  CKBD1 U58 ( .I(y[22]), .Z(fraction_y[22]) );
  INVD1 U65 ( .I(y[29]), .ZN(N17) );
  INVD1 U66 ( .I(y[24]), .ZN(N12) );
  INVD1 U67 ( .I(y[25]), .ZN(N13) );
  INVD1 U68 ( .I(y[26]), .ZN(N14) );
  INVD1 U69 ( .I(y[27]), .ZN(N15) );
  INVD1 U70 ( .I(y[28]), .ZN(N16) );
  CKBD1 U87 ( .I(x[22]), .Z(fraction_x[22]) );
  CKBD1 U88 ( .I(x[21]), .Z(fraction_x[21]) );
  CKBD1 U89 ( .I(x[20]), .Z(fraction_x[20]) );
  CKBD1 U90 ( .I(x[19]), .Z(fraction_x[19]) );
  CKBD1 U91 ( .I(x[18]), .Z(fraction_x[18]) );
  CKBD1 U92 ( .I(x[17]), .Z(fraction_x[17]) );
  CKBD1 U93 ( .I(x[16]), .Z(fraction_x[16]) );
  CKBD1 U94 ( .I(y[20]), .Z(fraction_y[20]) );
  CKBD1 U95 ( .I(y[19]), .Z(fraction_y[19]) );
  CKBD1 U96 ( .I(y[18]), .Z(fraction_y[18]) );
  CKBD1 U97 ( .I(y[17]), .Z(fraction_y[17]) );
  CKBD1 U98 ( .I(y[16]), .Z(fraction_y[16]) );
  CKBD1 U99 ( .I(result_fraction[22]), .Z(result[22]) );
  CKBD1 U100 ( .I(result_fraction[21]), .Z(result[21]) );
  CKBD1 U101 ( .I(result_fraction[20]), .Z(result[20]) );
  CKBD1 U102 ( .I(result_fraction[19]), .Z(result[19]) );
  CKBD1 U103 ( .I(result_fraction[18]), .Z(result[18]) );
  CKBD1 U104 ( .I(result_fraction[17]), .Z(result[17]) );
  CKBD1 U105 ( .I(result_fraction[16]), .Z(result[16]) );
  CKBD1 U106 ( .I(result_fraction[15]), .Z(result[15]) );
  CKBD1 U107 ( .I(result_fraction[14]), .Z(result[14]) );
  CKBD1 U108 ( .I(result_fraction[13]), .Z(result[13]) );
  CKBD1 U109 ( .I(result_fraction[12]), .Z(result[12]) );
  TIEL U110 ( .ZN(n79) );
  CKXOR2D1 U111 ( .A1(exponent_adjust[0]), .A2(N3), .Z(result[23]) );
  CKND0 U119 ( .I(y[23]), .ZN(N11) );
endmodule



    module oadm_input_trial_8_1_2_16_16_8_cb_88_61_49_DW_mult_uns_0_DW_mult_uns_1 ( 
        a, b, product );
  input [8:0] a;
  input [7:0] b;
  output [16:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n175, n176,
         n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187,
         n188, n189;

  FA1D0 U3 ( .A(n18), .B(n17), .CI(n3), .CO(n2), .S(product[14]) );
  FA1D0 U4 ( .A(n23), .B(n19), .CI(n4), .CO(n3), .S(product[13]) );
  FA1D0 U5 ( .A(n26), .B(n24), .CI(n5), .CO(n4), .S(product[12]) );
  FA1D0 U6 ( .A(n31), .B(n27), .CI(n6), .CO(n5), .S(product[11]) );
  FA1D0 U7 ( .A(n36), .B(n32), .CI(n7), .CO(n6), .S(product[10]) );
  FA1D0 U8 ( .A(n37), .B(n43), .CI(n8), .CO(n7), .S(product[9]) );
  FA1D0 U9 ( .A(n44), .B(n49), .CI(n9), .CO(n8), .S(product[8]) );
  FA1D0 U10 ( .A(n50), .B(n56), .CI(n10), .CO(n9), .S(product[7]) );
  FA1D0 U11 ( .A(n57), .B(n60), .CI(n11), .CO(n10), .S(product[6]) );
  FA1D0 U12 ( .A(n61), .B(n64), .CI(n12), .CO(n11), .S(product[5]) );
  FA1D0 U13 ( .A(n65), .B(n66), .CI(n13), .CO(n12), .S(product[4]) );
  FA1D0 U14 ( .A(n67), .B(n103), .CI(n14), .CO(n13), .S(product[3]) );
  FA1D0 U15 ( .A(n119), .B(n111), .CI(n15), .CO(n14), .S(product[2]) );
  HA1D0 U16 ( .A(n120), .B(n112), .CO(n15), .S(product[1]) );
  FA1D0 U17 ( .A(n69), .B(n77), .CI(n20), .CO(n16), .S(n17) );
  FA1D0 U18 ( .A(n21), .B(n78), .CI(n22), .CO(n18), .S(n19) );
  HA1D0 U19 ( .A(n70), .B(n86), .CO(n20), .S(n21) );
  CMPE42D1 U20 ( .A(n71), .B(n87), .C(n79), .CIX(n25), .D(n28), .CO(n23), 
        .COX(n22), .S(n24) );
  CMPE42D1 U21 ( .A(n88), .B(n95), .C(n29), .CIX(n30), .D(n33), .CO(n26), 
        .COX(n25), .S(n27) );
  HA1D0 U22 ( .A(n72), .B(n80), .CO(n28), .S(n29) );
  CMPE42D1 U23 ( .A(n40), .B(n89), .C(n38), .CIX(n35), .D(n34), .CO(n31), 
        .COX(n30), .S(n32) );
  FA1D0 U24 ( .A(n73), .B(n96), .CI(n81), .CO(n33), .S(n34) );
  CMPE42D1 U25 ( .A(n45), .B(n41), .C(n39), .CIX(n46), .D(n42), .CO(n36), 
        .COX(n35), .S(n37) );
  FA1D0 U26 ( .A(n97), .B(n90), .CI(n104), .CO(n38), .S(n39) );
  HA1D0 U27 ( .A(n74), .B(n82), .CO(n40), .S(n41) );
  CMPE42D1 U28 ( .A(n105), .B(n113), .C(n53), .CIX(n47), .D(n48), .CO(n43), 
        .COX(n42), .S(n44) );
  CMPE42D1 U29 ( .A(n75), .B(n83), .C(n91), .CIX(n51), .D(n98), .CO(n46), 
        .COX(n45), .S(n47) );
  CMPE42D1 U30 ( .A(n58), .B(n106), .C(n54), .CIX(n52), .D(n55), .CO(n49), 
        .COX(n48), .S(n50) );
  FA1D0 U31 ( .A(n92), .B(n114), .CI(n99), .CO(n51), .S(n52) );
  HA1D0 U32 ( .A(n76), .B(n84), .CO(n53), .S(n54) );
  CMPE42D1 U33 ( .A(n100), .B(n115), .C(n107), .CIX(n59), .D(n62), .CO(n56), 
        .COX(n55), .S(n57) );
  HA1D0 U34 ( .A(n85), .B(n93), .CO(n58), .S(n59) );
  FA1D0 U35 ( .A(n108), .B(n116), .CI(n63), .CO(n60), .S(n61) );
  HA1D0 U36 ( .A(n94), .B(n101), .CO(n62), .S(n63) );
  FA1D0 U37 ( .A(n102), .B(n117), .CI(n109), .CO(n64), .S(n65) );
  HA1D0 U38 ( .A(n110), .B(n118), .CO(n66), .S(n67) );
  INVD1 U111 ( .I(a[6]), .ZN(n177) );
  INVD1 U112 ( .I(a[5]), .ZN(n178) );
  INVD1 U113 ( .I(a[7]), .ZN(n176) );
  INVD1 U114 ( .I(a[4]), .ZN(n179) );
  INVD1 U115 ( .I(a[3]), .ZN(n180) );
  INVD1 U116 ( .I(a[8]), .ZN(n175) );
  INVD1 U117 ( .I(a[2]), .ZN(n181) );
  INVD1 U118 ( .I(a[1]), .ZN(n182) );
  INVD1 U119 ( .I(a[0]), .ZN(n183) );
  INVD1 U120 ( .I(b[6]), .ZN(n184) );
  INVD1 U121 ( .I(b[1]), .ZN(n187) );
  INVD1 U122 ( .I(b[3]), .ZN(n188) );
  INVD1 U123 ( .I(b[5]), .ZN(n185) );
  INVD1 U124 ( .I(b[7]), .ZN(n186) );
  XOR3D0 U125 ( .A1(n2), .A2(n16), .A3(n189), .Z(product[15]) );
  NR2D0 U126 ( .A1(n175), .A2(n186), .ZN(n189) );
  NR2D0 U127 ( .A1(n183), .A2(n184), .ZN(product[0]) );
  NR2D0 U128 ( .A1(n179), .A2(n188), .ZN(n99) );
  NR2D0 U129 ( .A1(n188), .A2(n178), .ZN(n98) );
  NR2D0 U130 ( .A1(n188), .A2(n177), .ZN(n97) );
  NR2D0 U131 ( .A1(n188), .A2(n176), .ZN(n96) );
  NR2D0 U132 ( .A1(n175), .A2(n188), .ZN(n95) );
  NR2D0 U133 ( .A1(n183), .A2(n185), .ZN(n94) );
  NR2D0 U134 ( .A1(n185), .A2(n182), .ZN(n93) );
  NR2D0 U135 ( .A1(n185), .A2(n181), .ZN(n92) );
  NR2D0 U136 ( .A1(n185), .A2(n180), .ZN(n91) );
  NR2D0 U137 ( .A1(n179), .A2(n185), .ZN(n90) );
  NR2D0 U138 ( .A1(n178), .A2(n185), .ZN(n89) );
  NR2D0 U139 ( .A1(n177), .A2(n185), .ZN(n88) );
  NR2D0 U140 ( .A1(n176), .A2(n185), .ZN(n87) );
  NR2D0 U141 ( .A1(n175), .A2(n185), .ZN(n86) );
  NR2D0 U142 ( .A1(n183), .A2(n184), .ZN(n85) );
  NR2D0 U143 ( .A1(n182), .A2(n184), .ZN(n84) );
  NR2D0 U144 ( .A1(n181), .A2(n184), .ZN(n83) );
  NR2D0 U145 ( .A1(n180), .A2(n184), .ZN(n82) );
  NR2D0 U146 ( .A1(n179), .A2(n184), .ZN(n81) );
  NR2D0 U147 ( .A1(n178), .A2(n184), .ZN(n80) );
  NR2D0 U148 ( .A1(n177), .A2(n184), .ZN(n79) );
  NR2D0 U149 ( .A1(n176), .A2(n184), .ZN(n78) );
  NR2D0 U150 ( .A1(n175), .A2(n184), .ZN(n77) );
  NR2D0 U151 ( .A1(n186), .A2(n183), .ZN(n76) );
  NR2D0 U152 ( .A1(n186), .A2(n182), .ZN(n75) );
  NR2D0 U153 ( .A1(n186), .A2(n181), .ZN(n74) );
  NR2D0 U154 ( .A1(n186), .A2(n180), .ZN(n73) );
  NR2D0 U155 ( .A1(n186), .A2(n179), .ZN(n72) );
  NR2D0 U156 ( .A1(n186), .A2(n178), .ZN(n71) );
  NR2D0 U157 ( .A1(n186), .A2(n177), .ZN(n70) );
  NR2D0 U158 ( .A1(n186), .A2(n176), .ZN(n69) );
  NR2D0 U159 ( .A1(n184), .A2(n182), .ZN(n120) );
  NR2D0 U160 ( .A1(n184), .A2(n181), .ZN(n119) );
  NR2D0 U161 ( .A1(n184), .A2(n180), .ZN(n118) );
  NR2D0 U162 ( .A1(n184), .A2(n179), .ZN(n117) );
  NR2D0 U163 ( .A1(n184), .A2(n178), .ZN(n116) );
  NR2D0 U164 ( .A1(n184), .A2(n177), .ZN(n115) );
  NR2D0 U165 ( .A1(n184), .A2(n176), .ZN(n114) );
  NR2D0 U166 ( .A1(n175), .A2(n184), .ZN(n113) );
  NR2D0 U167 ( .A1(n183), .A2(n187), .ZN(n112) );
  NR2D0 U168 ( .A1(n182), .A2(n187), .ZN(n111) );
  NR2D0 U169 ( .A1(n181), .A2(n187), .ZN(n110) );
  NR2D0 U170 ( .A1(n180), .A2(n187), .ZN(n109) );
  NR2D0 U171 ( .A1(n179), .A2(n187), .ZN(n108) );
  NR2D0 U172 ( .A1(n178), .A2(n187), .ZN(n107) );
  NR2D0 U173 ( .A1(n177), .A2(n187), .ZN(n106) );
  NR2D0 U174 ( .A1(n176), .A2(n187), .ZN(n105) );
  NR2D0 U175 ( .A1(n175), .A2(n187), .ZN(n104) );
  NR2D0 U176 ( .A1(n183), .A2(n188), .ZN(n103) );
  NR2D0 U177 ( .A1(n188), .A2(n182), .ZN(n102) );
  NR2D0 U178 ( .A1(n188), .A2(n181), .ZN(n101) );
  NR2D0 U179 ( .A1(n188), .A2(n180), .ZN(n100) );
endmodule


module oadm_input_trial_8_1_2_16_16_8_cb_88_61_49 ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   coefficient_5_, coefficient_3, coefficient_1, coefficient_0,
         exponent_adjust_2_, n2, n20, n21, n1, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19;
  wire   [22:16] x_mantissa;
  wire   [22:16] y_mantissa;
  wire   [24:16] narrow_compact_plane;
  wire   [15:0] reduced_scale_product;
  wire   [22:8] normalized_fraction;
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
        SYNOPSYS_UNCONNECTED__56;

  OR2D1 U21 ( .A1(y_mantissa[21]), .A2(coefficient_1), .Z(coefficient_3) );
  oadm_input_narrow_plane_B8_LEVEL2_R16 narrow_plane ( .x({x_mantissa, 1'b0}), 
        .y({y_mantissa, 1'b0}), .plane_bits({narrow_compact_plane, 
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15}) );
  fp32_normal_finite_wrapper fp_wrapper ( .x({x[31:16], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y({y[31:16], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .divide_mode(1'b0), .fraction_x(
        {x_mantissa, SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31}), .fraction_y({
        y_mantissa, SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, 
        SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39, 
        SYNOPSYS_UNCONNECTED__40, SYNOPSYS_UNCONNECTED__41, 
        SYNOPSYS_UNCONNECTED__42, SYNOPSYS_UNCONNECTED__43, 
        SYNOPSYS_UNCONNECTED__44, SYNOPSYS_UNCONNECTED__45, 
        SYNOPSYS_UNCONNECTED__46, SYNOPSYS_UNCONNECTED__47}), 
        .result_fraction({normalized_fraction, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0}), .exponent_adjust({exponent_adjust_2_, 
        exponent_adjust_2_, n2}), .result({result[31:8], 
        SYNOPSYS_UNCONNECTED__48, SYNOPSYS_UNCONNECTED__49, 
        SYNOPSYS_UNCONNECTED__50, SYNOPSYS_UNCONNECTED__51, 
        SYNOPSYS_UNCONNECTED__52, SYNOPSYS_UNCONNECTED__53, 
        SYNOPSYS_UNCONNECTED__54, SYNOPSYS_UNCONNECTED__55}) );
  oadm_input_trial_8_1_2_16_16_8_cb_88_61_49_DW_mult_uns_0_DW_mult_uns_1 mult_69 ( 
        .a(narrow_compact_plane), .b({n18, coefficient_0, coefficient_5_, n19, 
        coefficient_3, n19, coefficient_1, coefficient_0}), .product({
        SYNOPSYS_UNCONNECTED__56, reduced_scale_product}) );
  INVD1 U3 ( .I(reduced_scale_product[9]), .ZN(n8) );
  INVD1 U4 ( .I(reduced_scale_product[8]), .ZN(n9) );
  ND2D1 U5 ( .A1(n20), .A2(n21), .ZN(exponent_adjust_2_) );
  INVD1 U6 ( .I(n20), .ZN(n2) );
  INVD1 U7 ( .I(reduced_scale_product[14]), .ZN(n3) );
  INVD1 U8 ( .I(reduced_scale_product[13]), .ZN(n4) );
  INVD1 U9 ( .I(reduced_scale_product[12]), .ZN(n5) );
  INVD1 U10 ( .I(reduced_scale_product[11]), .ZN(n6) );
  INVD1 U11 ( .I(reduced_scale_product[10]), .ZN(n7) );
  INVD1 U12 ( .I(reduced_scale_product[7]), .ZN(n10) );
  INVD1 U13 ( .I(reduced_scale_product[6]), .ZN(n11) );
  INVD1 U14 ( .I(reduced_scale_product[5]), .ZN(n12) );
  INVD1 U15 ( .I(reduced_scale_product[4]), .ZN(n13) );
  INVD1 U16 ( .I(reduced_scale_product[2]), .ZN(n15) );
  INVD1 U17 ( .I(reduced_scale_product[1]), .ZN(n16) );
  ND2D1 U18 ( .A1(reduced_scale_product[14]), .A2(n1), .ZN(n20) );
  ND2D1 U19 ( .A1(n3), .A2(n1), .ZN(n21) );
  OAI222D0 U20 ( .A1(n20), .A2(n16), .B1(n17), .B2(n21), .C1(n1), .C2(n15), 
        .ZN(normalized_fraction[10]) );
  OAI222D0 U22 ( .A1(n20), .A2(n15), .B1(n16), .B2(n21), .C1(n1), .C2(n14), 
        .ZN(normalized_fraction[11]) );
  OAI222D0 U23 ( .A1(n20), .A2(n4), .B1(n21), .B2(n5), .C1(n3), .C2(n1), .ZN(
        normalized_fraction[22]) );
  OAI222D0 U24 ( .A1(n20), .A2(n14), .B1(n21), .B2(n15), .C1(n1), .C2(n13), 
        .ZN(normalized_fraction[12]) );
  OAI222D0 U25 ( .A1(n20), .A2(n13), .B1(n21), .B2(n14), .C1(n1), .C2(n12), 
        .ZN(normalized_fraction[13]) );
  OAI222D0 U26 ( .A1(n20), .A2(n12), .B1(n21), .B2(n13), .C1(n1), .C2(n11), 
        .ZN(normalized_fraction[14]) );
  OAI222D0 U27 ( .A1(n20), .A2(n11), .B1(n21), .B2(n12), .C1(n1), .C2(n10), 
        .ZN(normalized_fraction[15]) );
  OAI222D0 U28 ( .A1(n20), .A2(n10), .B1(n21), .B2(n11), .C1(n1), .C2(n9), 
        .ZN(normalized_fraction[16]) );
  OAI222D0 U29 ( .A1(n20), .A2(n9), .B1(n21), .B2(n10), .C1(n1), .C2(n8), .ZN(
        normalized_fraction[17]) );
  OAI222D0 U30 ( .A1(n20), .A2(n8), .B1(n21), .B2(n9), .C1(n1), .C2(n7), .ZN(
        normalized_fraction[18]) );
  OAI222D0 U31 ( .A1(n20), .A2(n7), .B1(n21), .B2(n8), .C1(n1), .C2(n6), .ZN(
        normalized_fraction[19]) );
  OAI222D0 U32 ( .A1(n20), .A2(n6), .B1(n21), .B2(n7), .C1(n1), .C2(n5), .ZN(
        normalized_fraction[20]) );
  OAI222D0 U33 ( .A1(n20), .A2(n5), .B1(n21), .B2(n6), .C1(n1), .C2(n4), .ZN(
        normalized_fraction[21]) );
  OAI22D1 U34 ( .A1(n1), .A2(n16), .B1(n20), .B2(n17), .ZN(
        normalized_fraction[9]) );
  NR2D1 U35 ( .A1(n17), .A2(n1), .ZN(normalized_fraction[8]) );
  INVD1 U36 ( .I(reduced_scale_product[3]), .ZN(n14) );
  INVD1 U37 ( .I(reduced_scale_product[0]), .ZN(n17) );
  INVD1 U38 ( .I(reduced_scale_product[15]), .ZN(n1) );
  IND2D1 U39 ( .A1(coefficient_1), .B1(n18), .ZN(coefficient_0) );
  NR2D1 U40 ( .A1(y_mantissa[21]), .A2(y_mantissa[22]), .ZN(coefficient_1) );
  INVD1 U41 ( .I(y_mantissa[22]), .ZN(n18) );
  NR2D1 U42 ( .A1(y_mantissa[21]), .A2(n18), .ZN(coefficient_5_) );
  TIEL U44 ( .ZN(n19) );
endmodule


module input_l2_narrow_b8 ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;

  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7;
  assign result[0] = 1'b0;
  assign result[1] = 1'b0;
  assign result[2] = 1'b0;
  assign result[3] = 1'b0;
  assign result[4] = 1'b0;
  assign result[5] = 1'b0;
  assign result[6] = 1'b0;
  assign result[7] = 1'b0;

  oadm_input_trial_8_1_2_16_16_8_cb_88_61_49 dut ( .x({x[31:16], 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .y({y[31:16], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .result({
        result[31:8], SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7}) );
endmodule

