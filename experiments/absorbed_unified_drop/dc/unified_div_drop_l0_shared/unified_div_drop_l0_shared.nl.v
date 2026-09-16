/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Wed Sep 16 00:39:22 2026
/////////////////////////////////////////////////////////////


module unified_div_drop_l0_shared_core_DW_mult_tc_1 ( a, b, product );
  input [4:0] a;
  input [8:0] b;
  output [13:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n28, n29, n30, n31, n32, n36, n37,
         n40, n41, n45, n49, n97, n98, n99, n100, n101, n102, n103, n104;

  FA1D0 U3 ( .A(n11), .B(n32), .CI(n3), .CO(n2), .S(product[11]) );
  FA1D0 U4 ( .A(n13), .B(n12), .CI(n4), .CO(n3), .S(product[10]) );
  FA1D0 U5 ( .A(n17), .B(n14), .CI(n5), .CO(n4), .S(product[9]) );
  FA1D0 U6 ( .A(n22), .B(n18), .CI(n6), .CO(n5), .S(product[8]) );
  FA1D0 U7 ( .A(n23), .B(n24), .CI(n7), .CO(n6), .S(product[7]) );
  FA1D0 U8 ( .A(n25), .B(n28), .CI(n8), .CO(n7), .S(product[6]) );
  FA1D0 U9 ( .A(n29), .B(n30), .CI(n9), .CO(n8), .S(product[5]) );
  FA1D0 U10 ( .A(n10), .B(n36), .CI(n31), .CO(n9), .S(product[4]) );
  HA1D0 U11 ( .A(product[0]), .B(n40), .CO(n10), .S(product[3]) );
  FA1D0 U12 ( .A(a[3]), .B(n97), .CI(n37), .CO(n11), .S(n12) );
  FA1D0 U13 ( .A(n98), .B(n41), .CI(n19), .CO(n13), .S(n14) );
  FA1D0 U15 ( .A(n20), .B(n36), .CI(n21), .CO(n17), .S(n18) );
  HA1D0 U16 ( .A(n45), .B(a[2]), .CO(n19), .S(n20) );
  CMPE42D1 U17 ( .A(a[1]), .B(a[0]), .C(n40), .CIX(n36), .D(n49), .CO(n22), 
        .COX(n21), .S(n23) );
  FA1D0 U18 ( .A(n40), .B(product[2]), .CI(n101), .CO(n24), .S(n25) );
  CKBD1 U62 ( .I(product[13]), .Z(product[12]) );
  INVD1 U63 ( .I(a[0]), .ZN(n101) );
  INVD1 U64 ( .I(a[3]), .ZN(n98) );
  INVD1 U65 ( .I(a[2]), .ZN(n99) );
  INVD1 U66 ( .I(a[1]), .ZN(n100) );
  INVD1 U67 ( .I(a[4]), .ZN(n97) );
  NR2D0 U68 ( .A1(b[7]), .A2(n100), .ZN(product[1]) );
  CKND0 U69 ( .I(n2), .ZN(product[13]) );
  NR2D0 U70 ( .A1(n101), .A2(b[7]), .ZN(product[0]) );
  NR2D0 U71 ( .A1(n101), .A2(b[3]), .ZN(n49) );
  NR2D0 U72 ( .A1(n100), .A2(b[0]), .ZN(n45) );
  NR2D0 U73 ( .A1(n99), .A2(b[7]), .ZN(product[2]) );
  NR2D0 U74 ( .A1(n99), .A2(b[0]), .ZN(n41) );
  NR2D0 U75 ( .A1(n98), .A2(b[7]), .ZN(n40) );
  NR2D0 U76 ( .A1(n98), .A2(b[0]), .ZN(n37) );
  CKND2D0 U77 ( .A1(b[4]), .A2(a[4]), .ZN(n36) );
  CKND2D0 U78 ( .A1(b[7]), .A2(a[4]), .ZN(n32) );
  XNR2D0 U79 ( .A1(n102), .A2(n103), .ZN(n31) );
  CKND2D0 U80 ( .A1(n103), .A2(n102), .ZN(n30) );
  CKND2D0 U81 ( .A1(b[4]), .A2(a[0]), .ZN(n102) );
  XNR2D0 U82 ( .A1(n104), .A2(n103), .ZN(n29) );
  CKND2D0 U83 ( .A1(n104), .A2(n103), .ZN(n28) );
  CKND2D0 U84 ( .A1(a[1]), .A2(b[4]), .ZN(n103) );
  CKND2D0 U85 ( .A1(b[4]), .A2(a[2]), .ZN(n104) );
endmodule


module unified_div_drop_l0_shared_core_DW_mult_tc_0 ( a, b, product );
  input [4:0] a;
  input [8:0] b;
  output [13:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n28, n29, n30, n31, n32, n34, n35,
         n36, n37, n38, n39, n40, n41, n43, n45, n49, n51, n96, n97, n98, n99,
         n100, n101, n102, n103, n104;

  FA1D0 U3 ( .A(n11), .B(n32), .CI(n3), .CO(n2), .S(product[11]) );
  FA1D0 U4 ( .A(n13), .B(n12), .CI(n4), .CO(n3), .S(product[10]) );
  FA1D0 U5 ( .A(n17), .B(n14), .CI(n5), .CO(n4), .S(product[9]) );
  FA1D0 U6 ( .A(n22), .B(n18), .CI(n6), .CO(n5), .S(product[8]) );
  FA1D0 U7 ( .A(n23), .B(n24), .CI(n7), .CO(n6), .S(product[7]) );
  FA1D0 U8 ( .A(n25), .B(n28), .CI(n8), .CO(n7), .S(product[6]) );
  FA1D0 U9 ( .A(n29), .B(n30), .CI(n9), .CO(n8), .S(product[5]) );
  FA1D0 U10 ( .A(n10), .B(n36), .CI(n31), .CO(n9), .S(product[4]) );
  HA1D0 U11 ( .A(n51), .B(n40), .CO(n10), .S(product[3]) );
  FA1D0 U12 ( .A(a[3]), .B(n96), .CI(n37), .CO(n11), .S(n12) );
  FA1D0 U13 ( .A(n97), .B(n41), .CI(n19), .CO(n13), .S(n14) );
  FA1D0 U15 ( .A(n20), .B(n34), .CI(n21), .CO(n17), .S(n18) );
  HA1D0 U16 ( .A(n45), .B(a[2]), .CO(n19), .S(n20) );
  CMPE42D1 U17 ( .A(a[1]), .B(a[0]), .C(n38), .CIX(n35), .D(n49), .CO(n22), 
        .COX(n21), .S(n23) );
  FA1D0 U18 ( .A(n39), .B(n43), .CI(n100), .CO(n24), .S(n25) );
  CKBD1 U62 ( .I(product[12]), .Z(product[13]) );
  INVD1 U63 ( .I(a[3]), .ZN(n97) );
  INVD1 U64 ( .I(a[2]), .ZN(n98) );
  INVD1 U65 ( .I(a[0]), .ZN(n100) );
  INVD1 U66 ( .I(a[1]), .ZN(n99) );
  INVD1 U67 ( .I(a[4]), .ZN(n96) );
  NR2D0 U68 ( .A1(n98), .A2(b[7]), .ZN(product[2]) );
  NR2D0 U69 ( .A1(b[7]), .A2(n99), .ZN(product[1]) );
  CKND0 U70 ( .I(n2), .ZN(product[12]) );
  NR2D0 U71 ( .A1(n100), .A2(b[7]), .ZN(product[0]) );
  NR2D0 U72 ( .A1(n100), .A2(b[7]), .ZN(n51) );
  NR2D0 U73 ( .A1(n100), .A2(b[0]), .ZN(n49) );
  NR2D0 U74 ( .A1(n99), .A2(b[0]), .ZN(n45) );
  NR2D0 U75 ( .A1(n98), .A2(b[7]), .ZN(n43) );
  NR2D0 U76 ( .A1(n98), .A2(b[0]), .ZN(n41) );
  NR2D0 U77 ( .A1(n97), .A2(b[7]), .ZN(n40) );
  NR2D0 U78 ( .A1(n97), .A2(b[7]), .ZN(n39) );
  NR2D0 U79 ( .A1(n97), .A2(b[7]), .ZN(n38) );
  NR2D0 U80 ( .A1(n97), .A2(b[0]), .ZN(n37) );
  CKND2D0 U81 ( .A1(b[0]), .A2(a[4]), .ZN(n36) );
  CKND2D0 U82 ( .A1(b[3]), .A2(a[4]), .ZN(n35) );
  CKND2D0 U83 ( .A1(b[4]), .A2(a[4]), .ZN(n34) );
  CKND2D0 U84 ( .A1(b[7]), .A2(a[4]), .ZN(n32) );
  XNR2D0 U85 ( .A1(n101), .A2(n102), .ZN(n31) );
  CKND2D0 U86 ( .A1(n101), .A2(n102), .ZN(n30) );
  CKND2D0 U87 ( .A1(b[4]), .A2(a[0]), .ZN(n102) );
  CKND2D0 U88 ( .A1(b[3]), .A2(a[1]), .ZN(n101) );
  XNR2D0 U89 ( .A1(n103), .A2(n104), .ZN(n29) );
  CKND2D0 U90 ( .A1(n103), .A2(n104), .ZN(n28) );
  CKND2D0 U91 ( .A1(b[4]), .A2(a[1]), .ZN(n104) );
  CKND2D0 U92 ( .A1(b[3]), .A2(a[2]), .ZN(n103) );
endmodule


module unified_div_drop_l0_shared_core_DW01_add_0 ( A, B, CI, SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [13:2] carry;

  FA1D0 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA1D0 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  FA1D0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1D0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1D0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1D0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA1D0 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA1D0 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FA1D0 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  FA1D0 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FA1D0 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FA1D0 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  XOR3D1 U1_13 ( .A1(A[13]), .A2(B[13]), .A3(carry[13]), .Z(SUM[13]) );
  AN2XD1 U1 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
  CKXOR2D1 U2 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
endmodule


module unified_div_drop_l0_shared_core ( fx, fy, divide_mode, value );
  input [22:0] fx;
  input [22:0] fy;
  output [28:0] value;
  input divide_mode;
  wire   rx_4_, ry_4_, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14,
         N15, N16, N17, px_9_, px_8_, px_7_, px_6_, px_5_, px_4_, px_3_,
         px_13_, px_12_, px_11_, px_10_, N31, N30, N29, N28, N27, N26, N25,
         N24, N23, N22, N21, N20, N19, N18, n120, n130, n140, n150, n160, n170,
         n180, n190, n200, n210, n220, n230, n240, n250, n260, n270, n280,
         n290, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46;
  wire   [13:1] py;
  wire   [16:1] signed_y;
  wire   [13:5] add_1_root_add_17_2_carry;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2;

  unified_div_drop_l0_shared_core_DW_mult_tc_1 mult_14_S2 ( .a({ry_4_, 
        fy[21:18]}), .b({n46, n32, n120, n46, divide_mode, divide_mode, n46, 
        n46, divide_mode}), .product({py, N3}) );
  unified_div_drop_l0_shared_core_DW_mult_tc_0 mult_14 ( .a({rx_4_, fx[21:18]}), .b({n46, n32, n120, n46, divide_mode, divide_mode, n46, n46, divide_mode}), 
        .product({px_13_, px_12_, px_11_, px_10_, px_9_, px_8_, px_7_, px_6_, 
        px_5_, px_4_, px_3_, N20, N19, N18}) );
  unified_div_drop_l0_shared_core_DW01_add_0 add_0_root_add_17_2 ( .A({
        signed_y[16], signed_y[16], signed_y[16], signed_y[13:1], N3}), .B({
        n46, n46, n46, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, 
        N20, N19, N18}), .CI(n46), .SUM({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, value[24:11]}) );
  TIEH U3 ( .Z(n120) );
  AN2XD1 U16 ( .A1(add_1_root_add_17_2_carry[11]), .A2(px_11_), .Z(n130) );
  AN2XD1 U17 ( .A1(add_1_root_add_17_2_carry[5]), .A2(px_5_), .Z(n140) );
  AN2XD1 U18 ( .A1(n290), .A2(px_9_), .Z(n150) );
  AN2XD1 U19 ( .A1(px_3_), .A2(divide_mode), .Z(n160) );
  AN2XD1 U21 ( .A1(n210), .A2(n42), .Z(n170) );
  AN2XD1 U22 ( .A1(n270), .A2(n36), .Z(n180) );
  INVD1 U23 ( .I(py[9]), .ZN(n42) );
  AN2XD1 U24 ( .A1(n280), .A2(n45), .Z(n190) );
  AN2XD1 U25 ( .A1(n170), .A2(n43), .Z(n200) );
  AN2XD1 U26 ( .A1(n220), .A2(n41), .Z(n210) );
  AN2XD1 U27 ( .A1(n230), .A2(n40), .Z(n220) );
  AN2XD1 U28 ( .A1(n240), .A2(n39), .Z(n230) );
  AN2XD1 U29 ( .A1(n250), .A2(n38), .Z(n240) );
  AN2XD1 U30 ( .A1(n180), .A2(n37), .Z(n250) );
  INVD1 U31 ( .I(py[3]), .ZN(n36) );
  AN2XD1 U33 ( .A1(n260), .A2(n35), .Z(n270) );
  INVD1 U37 ( .I(py[10]), .ZN(n43) );
  INVD1 U38 ( .I(py[8]), .ZN(n41) );
  INVD1 U39 ( .I(py[7]), .ZN(n40) );
  AN2XD1 U40 ( .A1(n200), .A2(n44), .Z(n280) );
  INVD1 U41 ( .I(py[6]), .ZN(n39) );
  INVD1 U42 ( .I(py[5]), .ZN(n38) );
  INVD1 U43 ( .I(py[4]), .ZN(n37) );
  FA1D0 U44 ( .A(n32), .B(px_10_), .CI(n150), .CO(
        add_1_root_add_17_2_carry[11]), .S(N28) );
  FA1D0 U46 ( .A(n32), .B(px_6_), .CI(n140), .CO(add_1_root_add_17_2_carry[7]), 
        .S(N24) );
  INVD1 U49 ( .I(py[2]), .ZN(n35) );
  AN2XD1 U50 ( .A1(add_1_root_add_17_2_carry[8]), .A2(px_8_), .Z(n290) );
  XOR3D1 U51 ( .A1(n32), .A2(px_13_), .A3(add_1_root_add_17_2_carry[13]), .Z(
        N31) );
  AO22D0 U52 ( .A1(n32), .A2(py[13]), .B1(N16), .B2(divide_mode), .Z(
        signed_y[13]) );
  AO22D0 U53 ( .A1(py[12]), .A2(n32), .B1(N15), .B2(divide_mode), .Z(
        signed_y[12]) );
  AO22D0 U54 ( .A1(py[11]), .A2(n32), .B1(N14), .B2(divide_mode), .Z(
        signed_y[11]) );
  INVD1 U55 ( .I(py[11]), .ZN(n44) );
  AO22D0 U56 ( .A1(py[10]), .A2(n32), .B1(N13), .B2(divide_mode), .Z(
        signed_y[10]) );
  AO22D0 U57 ( .A1(py[9]), .A2(n32), .B1(N12), .B2(divide_mode), .Z(
        signed_y[9]) );
  AO22D0 U58 ( .A1(py[8]), .A2(n32), .B1(N11), .B2(divide_mode), .Z(
        signed_y[8]) );
  AO22D0 U59 ( .A1(py[7]), .A2(n32), .B1(N10), .B2(divide_mode), .Z(
        signed_y[7]) );
  AO22D0 U60 ( .A1(py[6]), .A2(n32), .B1(N9), .B2(divide_mode), .Z(signed_y[6]) );
  AO22D0 U61 ( .A1(py[5]), .A2(n32), .B1(N8), .B2(divide_mode), .Z(signed_y[5]) );
  AO22D0 U62 ( .A1(py[4]), .A2(n32), .B1(N7), .B2(divide_mode), .Z(signed_y[4]) );
  AO22D0 U63 ( .A1(py[3]), .A2(n32), .B1(N6), .B2(divide_mode), .Z(signed_y[3]) );
  AO22D0 U64 ( .A1(py[1]), .A2(n32), .B1(N4), .B2(divide_mode), .Z(signed_y[1]) );
  AO22D0 U65 ( .A1(py[2]), .A2(n32), .B1(N5), .B2(divide_mode), .Z(signed_y[2]) );
  FA1D0 U66 ( .A(divide_mode), .B(px_12_), .CI(n130), .CO(
        add_1_root_add_17_2_carry[13]), .S(N30) );
  FA1D0 U67 ( .A(divide_mode), .B(px_4_), .CI(n160), .CO(
        add_1_root_add_17_2_carry[5]), .S(N22) );
  AO22D0 U69 ( .A1(n32), .A2(py[13]), .B1(N17), .B2(divide_mode), .Z(
        signed_y[16]) );
  INVD1 U70 ( .I(fy[22]), .ZN(ry_4_) );
  INVD1 U71 ( .I(fx[22]), .ZN(rx_4_) );
  TIEL U72 ( .ZN(n46) );
  XNR2D1 U73 ( .A1(add_1_root_add_17_2_carry[7]), .A2(px_7_), .ZN(N25) );
  CKXOR2D1 U74 ( .A1(n33), .A2(n34), .Z(N4) );
  CKXOR2D1 U75 ( .A1(n260), .A2(n35), .Z(N5) );
  CKXOR2D1 U76 ( .A1(n270), .A2(n36), .Z(N6) );
  CKXOR2D1 U77 ( .A1(n180), .A2(n37), .Z(N7) );
  CKXOR2D1 U78 ( .A1(n250), .A2(n38), .Z(N8) );
  CKXOR2D1 U79 ( .A1(n240), .A2(n39), .Z(N9) );
  CKXOR2D1 U80 ( .A1(n230), .A2(n40), .Z(N10) );
  CKXOR2D1 U81 ( .A1(n220), .A2(n41), .Z(N11) );
  CKXOR2D1 U82 ( .A1(n210), .A2(n42), .Z(N12) );
  CKXOR2D1 U83 ( .A1(n170), .A2(n43), .Z(N13) );
  CKXOR2D1 U84 ( .A1(n200), .A2(n44), .Z(N14) );
  CKXOR2D1 U85 ( .A1(n280), .A2(n45), .Z(N15) );
  CKXOR2D1 U86 ( .A1(n190), .A2(n45), .Z(N16) );
  CKXOR2D1 U87 ( .A1(px_3_), .A2(divide_mode), .Z(N21) );
  CKXOR2D1 U88 ( .A1(add_1_root_add_17_2_carry[5]), .A2(px_5_), .Z(N23) );
  CKXOR2D1 U89 ( .A1(add_1_root_add_17_2_carry[8]), .A2(px_8_), .Z(N26) );
  CKXOR2D1 U90 ( .A1(n290), .A2(px_9_), .Z(N27) );
  CKXOR2D1 U91 ( .A1(add_1_root_add_17_2_carry[11]), .A2(px_11_), .Z(N29) );
  CKND0 U4 ( .I(py[13]), .ZN(n45) );
  NR2D0 U5 ( .A1(py[13]), .A2(n190), .ZN(N17) );
  OR2D0 U6 ( .A1(px_7_), .A2(add_1_root_add_17_2_carry[7]), .Z(
        add_1_root_add_17_2_carry[8]) );
  CKND0 U7 ( .I(divide_mode), .ZN(n32) );
  CKND0 U8 ( .I(N3), .ZN(n33) );
  CKND0 U9 ( .I(py[1]), .ZN(n34) );
  NR2D0 U10 ( .A1(N3), .A2(py[1]), .ZN(n260) );
endmodule


module fp32_normal_finite_wrapper_DW01_add_1_DW01_add_3 ( A, B, CI, SUM, CO );
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


module fp32_normal_finite_wrapper_DW01_add_3_DW01_add_5 ( A, B, CI, SUM, CO );
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
  wire   [7:2] add_0_root_add_0_root_add_25_2_carry;
  wire   [7:2] add_0_root_add_0_root_add_22_2_carry;

  CKXOR2D1 U2 ( .A1(y[31]), .A2(x[31]), .Z(result[31]) );
  fp32_normal_finite_wrapper_DW01_add_1_DW01_add_3 add_1_root_add_0_root_add_25_2 ( 
        .A(x[30:23]), .B({N42, N41, N40, N39, N38, N37, N36, N11}), .CI(n79), 
        .SUM({N34, N33, N32, N31, N30, N29, N28, N27}) );
  fp32_normal_finite_wrapper_DW01_add_3_DW01_add_5 add_1_root_add_0_root_add_22_2 ( 
        .A(x[30:23]), .B({y[30], N17, N16, N15, N14, N13, N12, N11}), .CI(n79), 
        .SUM({N10, N9, N8, N7, N6, N5, N4, N3}) );
  AN2XD1 U3 ( .A1(exponent_adjust[0]), .A2(N3), .Z(n1) );
  AN2XD1 U4 ( .A1(exponent_adjust[0]), .A2(N27), .Z(n2) );
  AO22D0 U41 ( .A1(N49), .A2(n78), .B1(N25), .B2(divide_mode), .Z(result[29])
         );
  AO22D0 U42 ( .A1(N48), .A2(n78), .B1(N24), .B2(divide_mode), .Z(result[28])
         );
  AO22D0 U43 ( .A1(N47), .A2(n78), .B1(N23), .B2(divide_mode), .Z(result[27])
         );
  AO22D0 U44 ( .A1(N46), .A2(n78), .B1(N22), .B2(divide_mode), .Z(result[26])
         );
  AO22D0 U45 ( .A1(N45), .A2(n78), .B1(N21), .B2(divide_mode), .Z(result[25])
         );
  AO22D0 U46 ( .A1(N44), .A2(n78), .B1(N20), .B2(divide_mode), .Z(result[24])
         );
  INVD1 U47 ( .I(divide_mode), .ZN(n78) );
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
  CKBD1 U92 ( .I(y[22]), .Z(fraction_y[22]) );
  CKBD1 U93 ( .I(y[21]), .Z(fraction_y[21]) );
  CKBD1 U94 ( .I(y[20]), .Z(fraction_y[20]) );
  CKBD1 U95 ( .I(y[19]), .Z(fraction_y[19]) );
  CKBD1 U96 ( .I(y[18]), .Z(fraction_y[18]) );
  CKBD1 U97 ( .I(result_fraction[22]), .Z(result[22]) );
  CKBD1 U98 ( .I(result_fraction[21]), .Z(result[21]) );
  CKBD1 U99 ( .I(result_fraction[20]), .Z(result[20]) );
  CKBD1 U100 ( .I(result_fraction[19]), .Z(result[19]) );
  CKBD1 U101 ( .I(result_fraction[18]), .Z(result[18]) );
  CKBD1 U102 ( .I(result_fraction[17]), .Z(result[17]) );
  CKBD1 U103 ( .I(result_fraction[16]), .Z(result[16]) );
  CKBD1 U104 ( .I(result_fraction[15]), .Z(result[15]) );
  CKBD1 U105 ( .I(result_fraction[14]), .Z(result[14]) );
  CKBD1 U106 ( .I(result_fraction[13]), .Z(result[13]) );
  CKBD1 U107 ( .I(result_fraction[12]), .Z(result[12]) );
  CKBD1 U108 ( .I(result_fraction[11]), .Z(result[11]) );
  CKBD1 U109 ( .I(result_fraction[10]), .Z(result[10]) );
  TIEL U110 ( .ZN(n79) );
  CKXOR2D1 U111 ( .A1(exponent_adjust[0]), .A2(N27), .Z(N43) );
  CKXOR2D1 U112 ( .A1(y[23]), .A2(y[24]), .Z(N36) );
  CKXOR2D1 U113 ( .A1(n35), .A2(y[25]), .Z(N37) );
  CKXOR2D1 U114 ( .A1(n410), .A2(y[26]), .Z(N38) );
  CKXOR2D1 U115 ( .A1(n51), .A2(y[27]), .Z(N39) );
  CKXOR2D1 U116 ( .A1(n60), .A2(y[28]), .Z(N40) );
  CKXOR2D1 U117 ( .A1(n70), .A2(y[29]), .Z(N41) );
  CKXOR2D1 U118 ( .A1(exponent_adjust[0]), .A2(N3), .Z(N19) );
  CKND0 U119 ( .I(y[23]), .ZN(N11) );
endmodule


module unified_div_drop_l0_shared ( x, y, divide_mode, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  input divide_mode;
  wire   n27, n29, n30, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n51, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67;
  wire   [22:18] fx;
  wire   [22:18] fy;
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
        SYNOPSYS_UNCONNECTED__48, SYNOPSYS_UNCONNECTED__49, 
        SYNOPSYS_UNCONNECTED__50, SYNOPSYS_UNCONNECTED__51, 
        SYNOPSYS_UNCONNECTED__52, SYNOPSYS_UNCONNECTED__53, 
        SYNOPSYS_UNCONNECTED__54, SYNOPSYS_UNCONNECTED__55, 
        SYNOPSYS_UNCONNECTED__56, SYNOPSYS_UNCONNECTED__57, 
        SYNOPSYS_UNCONNECTED__58, SYNOPSYS_UNCONNECTED__59, 
        SYNOPSYS_UNCONNECTED__60;
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

  unified_div_drop_l0_shared_core shared_core ( .fx({fx, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0}), .fy({fy, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .divide_mode(n51), .value({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, core_value, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14}) );
  fp32_normal_finite_wrapper wrapper ( .x({x[31:18], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .y({y[31:18], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .divide_mode(n51), .fraction_x({fx, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31, 
        SYNOPSYS_UNCONNECTED__32}), .fraction_y({fy, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, 
        SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39, 
        SYNOPSYS_UNCONNECTED__40, SYNOPSYS_UNCONNECTED__41, 
        SYNOPSYS_UNCONNECTED__42, SYNOPSYS_UNCONNECTED__43, 
        SYNOPSYS_UNCONNECTED__44, SYNOPSYS_UNCONNECTED__45, 
        SYNOPSYS_UNCONNECTED__46, SYNOPSYS_UNCONNECTED__47, 
        SYNOPSYS_UNCONNECTED__48, SYNOPSYS_UNCONNECTED__49, 
        SYNOPSYS_UNCONNECTED__50}), .result_fraction({normalized_fraction, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .exponent_adjust({exponent_adjust[2], exponent_adjust[2], 
        exponent_adjust[0]}), .result({result[31:10], SYNOPSYS_UNCONNECTED__51, 
        SYNOPSYS_UNCONNECTED__52, SYNOPSYS_UNCONNECTED__53, 
        SYNOPSYS_UNCONNECTED__54, SYNOPSYS_UNCONNECTED__55, 
        SYNOPSYS_UNCONNECTED__56, SYNOPSYS_UNCONNECTED__57, 
        SYNOPSYS_UNCONNECTED__58, SYNOPSYS_UNCONNECTED__59, 
        SYNOPSYS_UNCONNECTED__60}) );
  IND2D1 U78 ( .A1(n29), .B1(n54), .ZN(exponent_adjust[2]) );
  INVD1 U79 ( .I(n30), .ZN(n54) );
  ND2D1 U80 ( .A1(n53), .A2(n54), .ZN(exponent_adjust[0]) );
  OAI221D0 U81 ( .A1(n27), .A2(n66), .B1(n53), .B2(n65), .C(n48), .ZN(
        normalized_fraction[12]) );
  ND2D1 U82 ( .A1(core_value[11]), .A2(n30), .ZN(n48) );
  OAI22D1 U83 ( .A1(n27), .A2(n67), .B1(n53), .B2(n66), .ZN(
        normalized_fraction[11]) );
  NR2D1 U84 ( .A1(n53), .A2(n67), .ZN(normalized_fraction[10]) );
  INVD1 U85 ( .I(core_value[11]), .ZN(n67) );
  NR3D0 U86 ( .A1(core_value[23]), .A2(core_value[24]), .A3(n56), .ZN(n30) );
  NR3D0 U87 ( .A1(core_value[23]), .A2(core_value[24]), .A3(core_value[22]), 
        .ZN(n29) );
  INVD1 U88 ( .I(core_value[22]), .ZN(n56) );
  INVD1 U89 ( .I(core_value[24]), .ZN(n53) );
  OAI221D0 U90 ( .A1(n56), .A2(n27), .B1(n55), .B2(n53), .C(n38), .ZN(
        normalized_fraction[22]) );
  INVD1 U91 ( .I(core_value[23]), .ZN(n55) );
  AOI22D1 U92 ( .A1(core_value[20]), .A2(n29), .B1(core_value[21]), .B2(n30), 
        .ZN(n38) );
  OAI221D0 U93 ( .A1(n27), .A2(n57), .B1(n56), .B2(n53), .C(n39), .ZN(
        normalized_fraction[21]) );
  AOI22D1 U94 ( .A1(core_value[19]), .A2(n29), .B1(core_value[20]), .B2(n30), 
        .ZN(n39) );
  OAI221D0 U95 ( .A1(n27), .A2(n65), .B1(n53), .B2(n64), .C(n47), .ZN(
        normalized_fraction[13]) );
  AOI22D1 U96 ( .A1(core_value[11]), .A2(n29), .B1(core_value[12]), .B2(n30), 
        .ZN(n47) );
  OAI221D0 U97 ( .A1(n27), .A2(n64), .B1(n53), .B2(n63), .C(n46), .ZN(
        normalized_fraction[14]) );
  AOI22D1 U98 ( .A1(core_value[12]), .A2(n29), .B1(core_value[13]), .B2(n30), 
        .ZN(n46) );
  OAI221D0 U99 ( .A1(n27), .A2(n63), .B1(n53), .B2(n62), .C(n45), .ZN(
        normalized_fraction[15]) );
  AOI22D1 U100 ( .A1(core_value[13]), .A2(n29), .B1(core_value[14]), .B2(n30), 
        .ZN(n45) );
  OAI221D0 U101 ( .A1(n27), .A2(n62), .B1(n53), .B2(n61), .C(n44), .ZN(
        normalized_fraction[16]) );
  AOI22D1 U102 ( .A1(core_value[14]), .A2(n29), .B1(core_value[15]), .B2(n30), 
        .ZN(n44) );
  OAI221D0 U103 ( .A1(n27), .A2(n61), .B1(n53), .B2(n60), .C(n43), .ZN(
        normalized_fraction[17]) );
  AOI22D1 U104 ( .A1(core_value[15]), .A2(n29), .B1(core_value[16]), .B2(n30), 
        .ZN(n43) );
  OAI221D0 U105 ( .A1(n27), .A2(n60), .B1(n53), .B2(n59), .C(n42), .ZN(
        normalized_fraction[18]) );
  AOI22D1 U106 ( .A1(core_value[16]), .A2(n29), .B1(core_value[17]), .B2(n30), 
        .ZN(n42) );
  OAI221D0 U107 ( .A1(n27), .A2(n59), .B1(n53), .B2(n58), .C(n41), .ZN(
        normalized_fraction[19]) );
  AOI22D1 U108 ( .A1(core_value[17]), .A2(n29), .B1(core_value[18]), .B2(n30), 
        .ZN(n41) );
  OAI221D0 U109 ( .A1(n27), .A2(n58), .B1(n53), .B2(n57), .C(n40), .ZN(
        normalized_fraction[20]) );
  AOI22D1 U110 ( .A1(core_value[18]), .A2(n29), .B1(core_value[19]), .B2(n30), 
        .ZN(n40) );
  ND2D1 U111 ( .A1(core_value[23]), .A2(n53), .ZN(n27) );
  INVD1 U112 ( .I(core_value[21]), .ZN(n57) );
  INVD1 U113 ( .I(core_value[20]), .ZN(n58) );
  INVD1 U114 ( .I(core_value[19]), .ZN(n59) );
  INVD1 U115 ( .I(core_value[18]), .ZN(n60) );
  INVD1 U116 ( .I(core_value[17]), .ZN(n61) );
  INVD1 U117 ( .I(core_value[16]), .ZN(n62) );
  INVD1 U118 ( .I(core_value[15]), .ZN(n63) );
  INVD1 U119 ( .I(core_value[14]), .ZN(n64) );
  INVD1 U120 ( .I(core_value[13]), .ZN(n65) );
  INVD1 U121 ( .I(core_value[12]), .ZN(n66) );
  CKBD1 U122 ( .I(divide_mode), .Z(n51) );
endmodule

