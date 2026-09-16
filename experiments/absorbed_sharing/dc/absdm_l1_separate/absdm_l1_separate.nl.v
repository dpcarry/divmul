/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Tue Sep 15 23:01:21 2026
/////////////////////////////////////////////////////////////


module absdm_l1_separate_div_DW_mult_tc_1_DW_mult_tc_3 ( a, b, product );
  input [5:0] a;
  input [7:0] b;
  output [13:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n16, n17,
         n18, n19, n20, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n72, n73, n76, n77, n78,
         n79, n80, n81, n82, n84, n85, n86, n87, n88, n89, n90, n92, n93, n94,
         n95, n96, n97, n98, n99, n113, n114, n115, n158, n159, n160, n161,
         n162, n163, n164, n165, n166;

  FA1D0 U2 ( .A(n14), .B(n160), .CI(n2), .CO(n1), .S(product[12]) );
  FA1D0 U3 ( .A(n16), .B(n159), .CI(n3), .CO(n2), .S(product[11]) );
  FA1D0 U4 ( .A(n18), .B(n17), .CI(n4), .CO(n3), .S(product[10]) );
  FA1D0 U5 ( .A(n22), .B(n19), .CI(n5), .CO(n4), .S(product[9]) );
  FA1D0 U6 ( .A(n26), .B(n23), .CI(n6), .CO(n5), .S(product[8]) );
  FA1D0 U7 ( .A(n30), .B(n27), .CI(n7), .CO(n6), .S(product[7]) );
  FA1D0 U8 ( .A(n31), .B(n34), .CI(n8), .CO(n7), .S(product[6]) );
  FA1D0 U9 ( .A(n35), .B(n38), .CI(n9), .CO(n8), .S(product[5]) );
  FA1D0 U10 ( .A(n39), .B(n42), .CI(n10), .CO(n9), .S(product[4]) );
  FA1D0 U11 ( .A(n43), .B(n44), .CI(n11), .CO(n10), .S(product[3]) );
  FA1D0 U12 ( .A(n45), .B(n90), .CI(n12), .CO(n11), .S(product[2]) );
  HA1D0 U13 ( .A(n13), .B(n98), .CO(n12), .S(product[1]) );
  HA1D0 U14 ( .A(n99), .B(a[1]), .CO(n13), .S(product[0]) );
  FA1D0 U16 ( .A(n20), .B(n162), .CI(n76), .CO(n16), .S(n17) );
  FA1D0 U17 ( .A(n77), .B(n158), .CI(n24), .CO(n18), .S(n19) );
  FA1D0 U19 ( .A(n28), .B(n78), .CI(n25), .CO(n22), .S(n23) );
  FA1D0 U22 ( .A(n32), .B(n79), .CI(n29), .CO(n26), .S(n27) );
  HA1D0 U23 ( .A(n85), .B(n92), .CO(n28), .S(n29) );
  FA1D0 U24 ( .A(n36), .B(n80), .CI(n33), .CO(n30), .S(n31) );
  HA1D0 U25 ( .A(n86), .B(n93), .CO(n32), .S(n33) );
  FA1D0 U26 ( .A(n40), .B(n81), .CI(n37), .CO(n34), .S(n35) );
  HA1D0 U27 ( .A(n87), .B(n94), .CO(n36), .S(n37) );
  FA1D0 U28 ( .A(n88), .B(n82), .CI(n41), .CO(n38), .S(n39) );
  HA1D0 U29 ( .A(n95), .B(n72), .CO(n40), .S(n41) );
  HA1D0 U30 ( .A(n89), .B(n96), .CO(n42), .S(n43) );
  HA1D0 U31 ( .A(n97), .B(n73), .CO(n44), .S(n45) );
  MUX2ND0 U34 ( .I0(n113), .I1(n160), .S(n46), .ZN(n14) );
  MUX2ND0 U36 ( .I0(n113), .I1(n160), .S(n47), .ZN(n76) );
  MUX2ND0 U38 ( .I0(n113), .I1(n160), .S(n48), .ZN(n77) );
  MUX2ND0 U40 ( .I0(n113), .I1(n160), .S(n49), .ZN(n78) );
  MUX2ND0 U42 ( .I0(n113), .I1(n160), .S(n50), .ZN(n79) );
  MUX2ND0 U44 ( .I0(n113), .I1(n160), .S(n51), .ZN(n80) );
  MUX2ND0 U46 ( .I0(n113), .I1(n160), .S(n52), .ZN(n81) );
  MUX2ND0 U48 ( .I0(n113), .I1(n160), .S(n53), .ZN(n82) );
  MUX2ND0 U52 ( .I0(n114), .I1(n162), .S(n54), .ZN(n20) );
  MUX2ND0 U54 ( .I0(n114), .I1(n162), .S(n55), .ZN(n84) );
  MUX2ND0 U56 ( .I0(n114), .I1(n162), .S(n56), .ZN(n85) );
  MUX2ND0 U58 ( .I0(n114), .I1(n162), .S(n57), .ZN(n86) );
  MUX2ND0 U60 ( .I0(n114), .I1(n162), .S(n58), .ZN(n87) );
  MUX2ND0 U62 ( .I0(n114), .I1(n162), .S(n59), .ZN(n88) );
  MUX2ND0 U64 ( .I0(n114), .I1(n162), .S(n60), .ZN(n89) );
  MUX2ND0 U66 ( .I0(n114), .I1(n162), .S(n61), .ZN(n90) );
  MUX2ND0 U70 ( .I0(n115), .I1(n164), .S(n62), .ZN(n92) );
  MUX2ND0 U72 ( .I0(n115), .I1(n164), .S(n63), .ZN(n93) );
  MUX2ND0 U74 ( .I0(n115), .I1(n164), .S(n64), .ZN(n94) );
  MUX2ND0 U76 ( .I0(n115), .I1(n164), .S(n65), .ZN(n95) );
  MUX2ND0 U78 ( .I0(n115), .I1(n164), .S(n66), .ZN(n96) );
  MUX2ND0 U80 ( .I0(n115), .I1(n164), .S(n67), .ZN(n97) );
  MUX2ND0 U82 ( .I0(n115), .I1(n164), .S(n68), .ZN(n98) );
  MUX2ND0 U84 ( .I0(n115), .I1(n164), .S(n69), .ZN(n99) );
  INVD1 U116 ( .I(n14), .ZN(n159) );
  INVD1 U117 ( .I(n73), .ZN(n162) );
  INVD1 U118 ( .I(n72), .ZN(n160) );
  INVD1 U119 ( .I(a[1]), .ZN(n164) );
  INVD1 U120 ( .I(a[3]), .ZN(n163) );
  INVD1 U121 ( .I(a[5]), .ZN(n161) );
  INVD1 U122 ( .I(n20), .ZN(n158) );
  CKND0 U123 ( .I(n1), .ZN(product[13]) );
  CKND2D0 U124 ( .A1(b[0]), .A2(a[0]), .ZN(n69) );
  MUX2ND0 U125 ( .I0(b[0]), .I1(b[1]), .S(a[0]), .ZN(n68) );
  MUX2ND0 U126 ( .I0(b[1]), .I1(b[2]), .S(a[0]), .ZN(n67) );
  MUX2ND0 U127 ( .I0(b[2]), .I1(b[3]), .S(a[0]), .ZN(n66) );
  MUX2ND0 U128 ( .I0(b[3]), .I1(b[4]), .S(a[0]), .ZN(n65) );
  MUX2ND0 U129 ( .I0(b[4]), .I1(b[5]), .S(a[0]), .ZN(n64) );
  MUX2ND0 U130 ( .I0(b[5]), .I1(b[6]), .S(a[0]), .ZN(n63) );
  IND2D0 U131 ( .A1(a[0]), .B1(b[6]), .ZN(n62) );
  CKND2D0 U132 ( .A1(b[0]), .A2(n165), .ZN(n61) );
  MUX2ND0 U133 ( .I0(b[0]), .I1(b[1]), .S(n165), .ZN(n60) );
  MUX2ND0 U134 ( .I0(b[1]), .I1(b[2]), .S(n165), .ZN(n59) );
  MUX2ND0 U135 ( .I0(b[2]), .I1(b[3]), .S(n165), .ZN(n58) );
  MUX2ND0 U136 ( .I0(b[3]), .I1(b[4]), .S(n165), .ZN(n57) );
  MUX2ND0 U137 ( .I0(b[4]), .I1(b[5]), .S(n165), .ZN(n56) );
  MUX2ND0 U138 ( .I0(b[5]), .I1(b[6]), .S(n165), .ZN(n55) );
  IND2D0 U139 ( .A1(n165), .B1(b[6]), .ZN(n54) );
  CKXOR2D0 U140 ( .A1(a[1]), .A2(a[2]), .Z(n165) );
  CKND2D0 U141 ( .A1(b[0]), .A2(n166), .ZN(n53) );
  MUX2ND0 U142 ( .I0(b[0]), .I1(b[1]), .S(n166), .ZN(n52) );
  MUX2ND0 U143 ( .I0(b[1]), .I1(b[2]), .S(n166), .ZN(n51) );
  MUX2ND0 U144 ( .I0(b[2]), .I1(b[3]), .S(n166), .ZN(n50) );
  MUX2ND0 U145 ( .I0(b[3]), .I1(b[4]), .S(n166), .ZN(n49) );
  MUX2ND0 U146 ( .I0(b[4]), .I1(b[5]), .S(n166), .ZN(n48) );
  MUX2ND0 U147 ( .I0(b[5]), .I1(b[6]), .S(n166), .ZN(n47) );
  IND2D0 U148 ( .A1(n166), .B1(b[6]), .ZN(n46) );
  CKXOR2D0 U149 ( .A1(a[3]), .A2(a[4]), .Z(n166) );
  CKXOR2D0 U150 ( .A1(n84), .A2(a[1]), .Z(n25) );
  IND2D0 U151 ( .A1(n84), .B1(a[1]), .ZN(n24) );
  CKND2D0 U152 ( .A1(a[0]), .A2(n164), .ZN(n115) );
  OAI21D0 U153 ( .A1(a[2]), .A2(a[1]), .B(n163), .ZN(n114) );
  OAI21D0 U154 ( .A1(a[4]), .A2(a[3]), .B(n161), .ZN(n113) );
  AOI21D0 U155 ( .A1(a[1]), .A2(a[2]), .B(n163), .ZN(n73) );
  AOI21D0 U156 ( .A1(a[3]), .A2(a[4]), .B(n161), .ZN(n72) );
endmodule


module absdm_l1_separate_div_DW_mult_tc_0_DW_mult_tc_2 ( a, b, product );
  input [5:0] a;
  input [6:0] b;
  output [12:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n32, n33,
         n35, n37, n38, n40, n42, n44, n46, n49, n90, n91, n92, n93, n94, n95,
         n96, n97;

  FA1D0 U3 ( .A(n11), .B(n92), .CI(n3), .CO(n2), .S(product[10]) );
  FA1D0 U4 ( .A(n13), .B(n12), .CI(n4), .CO(n3), .S(product[9]) );
  FA1D0 U5 ( .A(n17), .B(n14), .CI(n5), .CO(n4), .S(product[8]) );
  FA1D0 U6 ( .A(n21), .B(n18), .CI(n6), .CO(n5), .S(product[7]) );
  FA1D0 U7 ( .A(n22), .B(n25), .CI(n7), .CO(n6), .S(product[6]) );
  FA1D0 U8 ( .A(n26), .B(n28), .CI(n8), .CO(n7), .S(product[5]) );
  FA1D0 U9 ( .A(n30), .B(n37), .CI(n9), .CO(n8), .S(product[4]) );
  FA1D0 U10 ( .A(n40), .B(a[1]), .CI(n10), .CO(n9), .S(product[3]) );
  HA1D0 U11 ( .A(n44), .B(a[0]), .CO(n10), .S(product[2]) );
  FA1D0 U12 ( .A(a[3]), .B(a[4]), .CI(n32), .CO(n11), .S(n12) );
  FA1D0 U13 ( .A(n94), .B(n35), .CI(n19), .CO(n13), .S(n14) );
  FA1D0 U15 ( .A(n23), .B(n38), .CI(n20), .CO(n17), .S(n18) );
  HA1D0 U16 ( .A(a[2]), .B(n92), .CO(n19), .S(n20) );
  FA1D0 U17 ( .A(n27), .B(n42), .CI(n24), .CO(n21), .S(n22) );
  FA1D0 U20 ( .A(n33), .B(n46), .CI(n29), .CO(n25), .S(n26) );
  HA1D0 U23 ( .A(n49), .B(a[2]), .CO(n29), .S(n30) );
  CKBD1 U58 ( .I(product[11]), .Z(product[12]) );
  INVD1 U59 ( .I(b[0]), .ZN(n91) );
  INVD1 U60 ( .I(b[4]), .ZN(n90) );
  INVD1 U61 ( .I(a[5]), .ZN(n92) );
  INVD1 U62 ( .I(a[0]), .ZN(n97) );
  INVD1 U63 ( .I(a[1]), .ZN(n96) );
  INVD1 U64 ( .I(a[2]), .ZN(n95) );
  INVD1 U65 ( .I(a[3]), .ZN(n94) );
  INVD1 U66 ( .I(a[4]), .ZN(n93) );
  NR2D0 U67 ( .A1(n96), .A2(n91), .ZN(product[1]) );
  CKND0 U68 ( .I(n2), .ZN(product[11]) );
  NR2D0 U69 ( .A1(n91), .A2(n97), .ZN(product[0]) );
  NR2D0 U70 ( .A1(n97), .A2(n90), .ZN(n49) );
  NR2D0 U71 ( .A1(n96), .A2(n90), .ZN(n46) );
  NR2D0 U72 ( .A1(n91), .A2(n95), .ZN(n44) );
  NR2D0 U73 ( .A1(n90), .A2(n95), .ZN(n42) );
  NR2D0 U74 ( .A1(n94), .A2(n91), .ZN(n40) );
  NR2D0 U75 ( .A1(n94), .A2(n90), .ZN(n38) );
  NR2D0 U76 ( .A1(n91), .A2(n93), .ZN(n37) );
  NR2D0 U77 ( .A1(n90), .A2(n93), .ZN(n35) );
  CKND2D0 U78 ( .A1(b[0]), .A2(a[5]), .ZN(n33) );
  CKND2D0 U79 ( .A1(b[4]), .A2(a[5]), .ZN(n32) );
  CKXOR2D0 U80 ( .A1(a[3]), .A2(n97), .Z(n28) );
  CKND2D0 U81 ( .A1(n94), .A2(n97), .ZN(n27) );
  CKXOR2D0 U82 ( .A1(a[4]), .A2(n96), .Z(n24) );
  CKND2D0 U83 ( .A1(n93), .A2(n96), .ZN(n23) );
endmodule


module absdm_l1_separate_div_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] DIFF;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14;
  wire   [14:1] carry;

  XOR3D1 U2_14 ( .A1(A[14]), .A2(n2), .A3(carry[14]), .Z(DIFF[14]) );
  FA1D0 U2_1 ( .A(A[1]), .B(n14), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  FA1D0 U2_2 ( .A(A[2]), .B(n13), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  FA1D0 U2_5 ( .A(A[5]), .B(n10), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  FA1D0 U2_3 ( .A(A[3]), .B(n12), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  FA1D0 U2_4 ( .A(A[4]), .B(n11), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FA1D0 U2_6 ( .A(A[6]), .B(n9), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  FA1D0 U2_7 ( .A(A[7]), .B(n8), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  FA1D0 U2_8 ( .A(A[8]), .B(n7), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  FA1D0 U2_9 ( .A(A[9]), .B(n6), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9]) );
  FA1D0 U2_10 ( .A(A[10]), .B(n5), .CI(carry[10]), .CO(carry[11]), .S(DIFF[10]) );
  FA1D0 U2_13 ( .A(A[13]), .B(n2), .CI(carry[13]), .CO(carry[14]), .S(DIFF[13]) );
  FA1D0 U2_12 ( .A(A[12]), .B(n3), .CI(carry[12]), .CO(carry[13]), .S(DIFF[12]) );
  FA1D0 U2_11 ( .A(A[11]), .B(n4), .CI(carry[11]), .CO(carry[12]), .S(DIFF[11]) );
  INVD1 U1 ( .I(B[11]), .ZN(n4) );
  INVD1 U2 ( .I(B[16]), .ZN(n2) );
  INVD1 U3 ( .I(B[12]), .ZN(n3) );
  INVD1 U4 ( .I(B[10]), .ZN(n5) );
  INVD1 U5 ( .I(B[9]), .ZN(n6) );
  INVD1 U6 ( .I(B[8]), .ZN(n7) );
  INVD1 U7 ( .I(B[7]), .ZN(n8) );
  INVD1 U8 ( .I(B[6]), .ZN(n9) );
  INVD1 U9 ( .I(B[4]), .ZN(n11) );
  INVD1 U10 ( .I(B[3]), .ZN(n12) );
  INVD1 U12 ( .I(B[5]), .ZN(n10) );
  INVD1 U13 ( .I(B[2]), .ZN(n13) );
  INVD1 U15 ( .I(B[1]), .ZN(n14) );
  CKXOR2D0 U11 ( .A1(A[0]), .A2(B[0]), .Z(DIFF[0]) );
  IND2D0 U14 ( .A1(A[0]), .B1(B[0]), .ZN(carry[1]) );
endmodule


module absdm_l1_separate_div ( fx, fy, value );
  input [22:0] fx;
  input [22:0] fy;
  output [28:0] value;
  wire   rx_5_, ry_5_, a_0, c_4, c_3, c_2, n12, n13, py_9_, py_8_, py_7_,
         py_6_, py_5_, py_4_, py_3_, py_2_, py_1_, py_13_, py_12_, py_11_,
         py_10_, py_0_, px_13, px_9_, px_8_, px_7_, px_6_, px_5_, px_4_, px_3_,
         px_2_, px_11_, px_10_, N26, N25, N24, N23, N22, N21, N20, N19, N18,
         N17, N16, N15, N14, N130, N120, n11, n140, n170, n180, n190, n200;
  wire   [5:0] b;
  wire   [13:6] c;
  wire   [14:4] add_1_root_sub_17_carry;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1;

  absdm_l1_separate_div_DW_mult_tc_1_DW_mult_tc_3 mult_15_S2 ( .a({ry_5_, 
        fy[20:16]}), .b({n200, n170, b[5:4], c[10], b[5], c_4, b[0]}), 
        .product({py_13_, py_12_, py_11_, py_10_, py_9_, py_8_, py_7_, py_6_, 
        py_5_, py_4_, py_3_, py_2_, py_1_, py_0_}) );
  absdm_l1_separate_div_DW_mult_tc_0_DW_mult_tc_2 mult_15 ( .a({rx_5_, 
        fx[20:16]}), .b({n200, n11, c_2, n200, n11, n200, a_0}), .product({
        px_13, px_11_, px_10_, px_9_, px_8_, px_7_, px_6_, px_5_, px_4_, px_3_, 
        px_2_, N130, N120}) );
  absdm_l1_separate_div_DW01_sub_0 sub_0_root_sub_17 ( .A({n200, n200, N26, 
        N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N130, N120}), .B({py_13_, py_13_, py_13_, py_13_, py_12_, py_11_, py_10_, py_9_, py_8_, 
        py_7_, py_6_, py_5_, py_4_, py_3_, py_2_, py_1_, py_0_}), .CI(n200), 
        .DIFF({SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, value[24:10]}) );
  TIEH U3 ( .Z(n11) );
  AN2XD1 U14 ( .A1(px_2_), .A2(c_2), .Z(n140) );
  INVD1 U15 ( .I(b[5]), .ZN(c[10]) );
  FA1D0 U16 ( .A(n170), .B(px_11_), .CI(add_1_root_sub_17_carry[11]), .CO(
        add_1_root_sub_17_carry[12]), .S(N23) );
  FA1D0 U17 ( .A(c[10]), .B(px_10_), .CI(add_1_root_sub_17_carry[10]), .CO(
        add_1_root_sub_17_carry[11]), .S(N22) );
  FA1D0 U18 ( .A(n170), .B(px_8_), .CI(add_1_root_sub_17_carry[8]), .CO(
        add_1_root_sub_17_carry[9]), .S(N20) );
  NR2D1 U19 ( .A1(c_4), .A2(n170), .ZN(b[5]) );
  INVD1 U20 ( .I(n13), .ZN(n170) );
  INVD1 U21 ( .I(c_4), .ZN(n180) );
  ND2D1 U22 ( .A1(n180), .A2(n12), .ZN(b[4]) );
  FA1D0 U23 ( .A(c_4), .B(px_13), .CI(add_1_root_sub_17_carry[12]), .CO(
        add_1_root_sub_17_carry[13]), .S(N24) );
  FA1D0 U24 ( .A(c[13]), .B(px_13), .CI(add_1_root_sub_17_carry[13]), .CO(
        add_1_root_sub_17_carry[14]), .S(N25) );
  IND2D1 U25 ( .A1(b[0]), .B1(n12), .ZN(c[13]) );
  ND2D1 U26 ( .A1(n180), .A2(c[6]), .ZN(a_0) );
  ND2D1 U27 ( .A1(n13), .A2(c[6]), .ZN(b[0]) );
  FA1D0 U28 ( .A(c_4), .B(px_9_), .CI(add_1_root_sub_17_carry[9]), .CO(
        add_1_root_sub_17_carry[10]), .S(N21) );
  ND2D1 U29 ( .A1(n12), .A2(n13), .ZN(c_2) );
  FA1D0 U30 ( .A(c_4), .B(px_7_), .CI(add_1_root_sub_17_carry[7]), .CO(
        add_1_root_sub_17_carry[8]), .S(N19) );
  FA1D0 U31 ( .A(c[6]), .B(px_6_), .CI(add_1_root_sub_17_carry[6]), .CO(
        add_1_root_sub_17_carry[7]), .S(N18) );
  FA1D0 U35 ( .A(c_4), .B(px_4_), .CI(add_1_root_sub_17_carry[4]), .CO(
        add_1_root_sub_17_carry[5]), .S(N16) );
  FA1D0 U36 ( .A(c_3), .B(px_3_), .CI(n140), .CO(add_1_root_sub_17_carry[4]), 
        .S(N15) );
  IND2D1 U37 ( .A1(a_0), .B1(n12), .ZN(c_3) );
  NR2D1 U38 ( .A1(n190), .A2(fx[22]), .ZN(c_4) );
  INVD1 U39 ( .I(fy[22]), .ZN(n190) );
  ND2D1 U40 ( .A1(fx[22]), .A2(n190), .ZN(n13) );
  IND2D1 U41 ( .A1(fx[22]), .B1(n190), .ZN(n12) );
  ND2D1 U42 ( .A1(fx[22]), .A2(fy[22]), .ZN(c[6]) );
  INVD1 U43 ( .I(fy[21]), .ZN(ry_5_) );
  INVD1 U44 ( .I(fx[21]), .ZN(rx_5_) );
  TIEL U45 ( .ZN(n200) );
  XNR2D1 U46 ( .A1(add_1_root_sub_17_carry[5]), .A2(px_5_), .ZN(N17) );
  CKXOR2D1 U47 ( .A1(px_2_), .A2(c_2), .Z(N14) );
  CKXOR2D1 U48 ( .A1(px_13), .A2(add_1_root_sub_17_carry[14]), .Z(N26) );
  OR2D0 U4 ( .A1(px_5_), .A2(add_1_root_sub_17_carry[5]), .Z(
        add_1_root_sub_17_carry[6]) );
endmodule


module absdm_l1_separate_mul_DW_mult_tc_1 ( a, b, product );
  input [7:0] a;
  input [5:0] b;
  output [13:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n14, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n81, n82, n83, n84,
         n85, n86, n87, n88, n89;

  FA1D0 U2 ( .A(n81), .B(n82), .CI(n2), .CO(n1), .S(product[12]) );
  FA1D0 U3 ( .A(n24), .B(n16), .CI(n3), .CO(n2), .S(product[11]) );
  FA1D0 U4 ( .A(n24), .B(n17), .CI(n4), .CO(n3), .S(product[10]) );
  FA1D0 U5 ( .A(n24), .B(n18), .CI(n5), .CO(n4), .S(product[9]) );
  FA1D0 U6 ( .A(n25), .B(n19), .CI(n6), .CO(n5), .S(product[8]) );
  FA1D0 U7 ( .A(n26), .B(n20), .CI(n7), .CO(n6), .S(product[7]) );
  FA1D0 U8 ( .A(n27), .B(n21), .CI(n8), .CO(n7), .S(product[6]) );
  FA1D0 U9 ( .A(n28), .B(n22), .CI(n9), .CO(n8), .S(product[5]) );
  FA1D0 U10 ( .A(n29), .B(n23), .CI(n10), .CO(n9), .S(product[4]) );
  HA1D0 U11 ( .A(n30), .B(n14), .CO(n10), .S(product[3]) );
  INVD1 U54 ( .I(n24), .ZN(n81) );
  INVD1 U55 ( .I(a[7]), .ZN(n82) );
  INVD1 U56 ( .I(a[2]), .ZN(n87) );
  INVD1 U57 ( .I(a[3]), .ZN(n86) );
  INVD1 U58 ( .I(a[0]), .ZN(n89) );
  INVD1 U59 ( .I(a[4]), .ZN(n85) );
  INVD1 U60 ( .I(a[5]), .ZN(n84) );
  INVD1 U61 ( .I(a[6]), .ZN(n83) );
  INVD1 U62 ( .I(a[1]), .ZN(n88) );
  CKBD1 U63 ( .I(a[0]), .Z(product[2]) );
  CKND0 U64 ( .I(n1), .ZN(product[13]) );
  XNR2D0 U65 ( .A1(b[3]), .A2(n88), .ZN(n30) );
  XNR2D0 U66 ( .A1(b[3]), .A2(n87), .ZN(n29) );
  XNR2D0 U67 ( .A1(b[3]), .A2(n86), .ZN(n28) );
  XNR2D0 U68 ( .A1(b[3]), .A2(n85), .ZN(n27) );
  XNR2D0 U69 ( .A1(b[3]), .A2(n84), .ZN(n26) );
  XNR2D0 U70 ( .A1(b[3]), .A2(n83), .ZN(n25) );
  NR2D0 U71 ( .A1(b[3]), .A2(n89), .ZN(n23) );
  MUX2ND0 U72 ( .I0(n88), .I1(n89), .S(b[3]), .ZN(n22) );
  MUX2ND0 U73 ( .I0(n87), .I1(n88), .S(b[3]), .ZN(n21) );
  MUX2ND0 U74 ( .I0(n86), .I1(n87), .S(b[3]), .ZN(n20) );
  MUX2ND0 U75 ( .I0(n85), .I1(n86), .S(b[3]), .ZN(n19) );
  MUX2ND0 U76 ( .I0(n84), .I1(n85), .S(b[3]), .ZN(n18) );
  MUX2ND0 U77 ( .I0(n83), .I1(n84), .S(b[3]), .ZN(n17) );
  MUX2ND0 U78 ( .I0(n82), .I1(n83), .S(b[3]), .ZN(n16) );
  INR2D0 U79 ( .A1(b[3]), .B1(a[0]), .ZN(n14) );
  CKXOR2D0 U80 ( .A1(b[3]), .A2(a[7]), .Z(n24) );
endmodule


module absdm_l1_separate_mul_DW_mult_tc_0 ( a, b, product );
  input [7:0] a;
  input [5:0] b;
  output [13:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n14, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n81, n82, n83, n84,
         n85, n86, n87, n88, n89;

  FA1D0 U2 ( .A(n82), .B(n81), .CI(n2), .CO(n1), .S(product[12]) );
  FA1D0 U3 ( .A(n24), .B(n16), .CI(n3), .CO(n2), .S(product[11]) );
  FA1D0 U4 ( .A(n24), .B(n17), .CI(n4), .CO(n3), .S(product[10]) );
  FA1D0 U5 ( .A(n24), .B(n18), .CI(n5), .CO(n4), .S(product[9]) );
  FA1D0 U6 ( .A(n25), .B(n19), .CI(n6), .CO(n5), .S(product[8]) );
  FA1D0 U7 ( .A(n26), .B(n20), .CI(n7), .CO(n6), .S(product[7]) );
  FA1D0 U8 ( .A(n27), .B(n21), .CI(n8), .CO(n7), .S(product[6]) );
  FA1D0 U9 ( .A(n28), .B(n22), .CI(n9), .CO(n8), .S(product[5]) );
  FA1D0 U10 ( .A(n29), .B(n23), .CI(n10), .CO(n9), .S(product[4]) );
  HA1D0 U11 ( .A(n30), .B(n14), .CO(n10), .S(product[3]) );
  INVD1 U54 ( .I(n24), .ZN(n82) );
  INVD1 U55 ( .I(a[7]), .ZN(n81) );
  INVD1 U56 ( .I(a[2]), .ZN(n87) );
  INVD1 U57 ( .I(a[3]), .ZN(n86) );
  INVD1 U58 ( .I(a[0]), .ZN(n89) );
  INVD1 U59 ( .I(a[4]), .ZN(n85) );
  INVD1 U60 ( .I(a[5]), .ZN(n84) );
  INVD1 U61 ( .I(a[6]), .ZN(n83) );
  INVD1 U62 ( .I(a[1]), .ZN(n88) );
  CKBD1 U63 ( .I(a[0]), .Z(product[2]) );
  CKND0 U64 ( .I(n1), .ZN(product[13]) );
  XNR2D0 U65 ( .A1(b[3]), .A2(n88), .ZN(n30) );
  XNR2D0 U66 ( .A1(b[3]), .A2(n87), .ZN(n29) );
  XNR2D0 U67 ( .A1(b[3]), .A2(n86), .ZN(n28) );
  XNR2D0 U68 ( .A1(b[3]), .A2(n85), .ZN(n27) );
  XNR2D0 U69 ( .A1(b[3]), .A2(n84), .ZN(n26) );
  XNR2D0 U70 ( .A1(b[3]), .A2(n83), .ZN(n25) );
  NR2D0 U71 ( .A1(b[3]), .A2(n89), .ZN(n23) );
  MUX2ND0 U72 ( .I0(n88), .I1(n89), .S(b[3]), .ZN(n22) );
  MUX2ND0 U73 ( .I0(n87), .I1(n88), .S(b[3]), .ZN(n21) );
  MUX2ND0 U74 ( .I0(n86), .I1(n87), .S(b[3]), .ZN(n20) );
  MUX2ND0 U75 ( .I0(n85), .I1(n86), .S(b[3]), .ZN(n19) );
  MUX2ND0 U76 ( .I0(n84), .I1(n85), .S(b[3]), .ZN(n18) );
  MUX2ND0 U77 ( .I0(n83), .I1(n84), .S(b[3]), .ZN(n17) );
  MUX2ND0 U78 ( .I0(n81), .I1(n83), .S(b[3]), .ZN(n16) );
  INR2D0 U79 ( .A1(b[3]), .B1(a[0]), .ZN(n14) );
  CKXOR2D0 U80 ( .A1(b[3]), .A2(a[7]), .Z(n24) );
endmodule


module absdm_l1_separate_mul_DW01_add_0 ( A, B, CI, SUM, CO );
  input [17:0] A;
  input [17:0] B;
  output [17:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [14:4] carry;

  XOR3D1 U1_14 ( .A1(A[14]), .A2(B[14]), .A3(carry[14]), .Z(SUM[14]) );
  FA1D0 U1_3 ( .A(A[3]), .B(B[3]), .CI(n1), .CO(carry[4]), .S(SUM[3]) );
  FA1D0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1D0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA1D0 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  FA1D0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1D0 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA1D0 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  FA1D0 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FA1D0 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FA1D0 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FA1D0 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  AN2XD1 U1 ( .A1(B[2]), .A2(A[2]), .Z(n1) );
  CKXOR2D1 U2 ( .A1(B[2]), .A2(A[2]), .Z(SUM[2]) );
endmodule


module absdm_l1_separate_mul ( fx, fy, value );
  input [22:0] fx;
  input [22:0] fy;
  output [28:0] value;
  wire   rx_7_, ry_7_, t_12_, t_10, t_3, t_2, py_9_, py_8_, py_7_, py_6_,
         py_5_, py_4_, py_3_, py_2_, net1768, py_13_, py_12_, py_11_, py_10_,
         px_9_, px_8_, px_7_, px_6_, px_5_, px_4_, px_3_, px_2_, px_13_,
         px_12_, px_11_, px_10_, N26, N25, N24, N23, N22, N21, N20, N19, N18,
         N17, N16, N15, N14, n13, n140, n150, n170, n180, n190, n210;
  wire   [14:4] add_1_root_add_38_2_carry;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8;

  CKXOR2D1 U6 ( .A1(fx[22]), .A2(fy[22]), .Z(t_10) );
  absdm_l1_separate_mul_DW_mult_tc_1 mult_36_S2 ( .a({ry_7_, fy[20:14]}), .b({
        net1768, n13, fx[22], n13, net1768, net1768}), .product({py_13_, 
        py_12_, py_11_, py_10_, py_9_, py_8_, py_7_, py_6_, py_5_, py_4_, 
        py_3_, py_2_, SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1}) );
  absdm_l1_separate_mul_DW_mult_tc_0 mult_36 ( .a({rx_7_, fx[20:14]}), .b({
        net1768, n13, fy[22], n13, net1768, net1768}), .product({px_13_, 
        px_12_, px_11_, px_10_, px_9_, px_8_, px_7_, px_6_, px_5_, px_4_, 
        px_3_, px_2_, SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3}) );
  absdm_l1_separate_mul_DW01_add_0 add_0_root_add_38_2 ( .A({py_13_, py_13_, 
        py_13_, py_13_, py_13_, py_12_, py_11_, py_10_, py_9_, py_8_, py_7_, 
        py_6_, py_5_, py_4_, py_3_, py_2_, net1768, net1768}), .B({net1768, 
        net1768, net1768, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, 
        N16, N15, N14, net1768, net1768}), .CI(net1768), .SUM({
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, value[24:12], SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8}) );
  TIEH U3 ( .Z(n13) );
  AN2XD1 U18 ( .A1(add_1_root_add_38_2_carry[11]), .A2(px_11_), .Z(n140) );
  AN2XD1 U19 ( .A1(px_2_), .A2(t_2), .Z(n150) );
  AN2XD1 U21 ( .A1(n180), .A2(px_7_), .Z(n170) );
  FA1D0 U23 ( .A(t_2), .B(px_13_), .CI(add_1_root_add_38_2_carry[13]), .CO(
        add_1_root_add_38_2_carry[14]), .S(N25) );
  XOR3D1 U24 ( .A1(t_3), .A2(px_13_), .A3(add_1_root_add_38_2_carry[14]), .Z(
        N26) );
  FA1D0 U25 ( .A(t_10), .B(px_10_), .CI(add_1_root_add_38_2_carry[10]), .CO(
        add_1_root_add_38_2_carry[11]), .S(N22) );
  FA1D0 U29 ( .A(t_3), .B(px_3_), .CI(n150), .CO(add_1_root_add_38_2_carry[4]), 
        .S(N15) );
  AN2XD1 U30 ( .A1(n190), .A2(px_6_), .Z(n180) );
  AN2XD1 U31 ( .A1(add_1_root_add_38_2_carry[5]), .A2(px_5_), .Z(n190) );
  INVD1 U32 ( .I(t_10), .ZN(t_2) );
  FA1D0 U33 ( .A(t_12_), .B(px_12_), .CI(n140), .CO(
        add_1_root_add_38_2_carry[13]), .S(N24) );
  NR2D1 U34 ( .A1(fx[22]), .A2(t_10), .ZN(t_12_) );
  OR2D1 U35 ( .A1(fx[22]), .A2(t_10), .Z(t_3) );
  INVD1 U36 ( .I(fx[21]), .ZN(rx_7_) );
  INVD1 U37 ( .I(fy[21]), .ZN(ry_7_) );
  TIEL U38 ( .ZN(net1768) );
  XNR2D1 U39 ( .A1(add_1_root_add_38_2_carry[4]), .A2(px_4_), .ZN(N16) );
  CKXOR2D1 U41 ( .A1(px_2_), .A2(t_2), .Z(N14) );
  CKXOR2D1 U42 ( .A1(add_1_root_add_38_2_carry[5]), .A2(px_5_), .Z(N17) );
  CKXOR2D1 U43 ( .A1(n190), .A2(px_6_), .Z(N18) );
  CKXOR2D1 U44 ( .A1(n180), .A2(px_7_), .Z(N19) );
  CKXOR2D1 U45 ( .A1(n170), .A2(px_8_), .Z(N20) );
  CKXOR2D1 U46 ( .A1(add_1_root_add_38_2_carry[11]), .A2(px_11_), .Z(N23) );
  IND2D0 U4 ( .A1(px_9_), .B1(n210), .ZN(add_1_root_add_38_2_carry[10]) );
  CKND2D0 U5 ( .A1(px_8_), .A2(n170), .ZN(n210) );
  CKXOR2D0 U7 ( .A1(px_9_), .A2(n210), .Z(N21) );
  OR2D0 U8 ( .A1(px_4_), .A2(add_1_root_add_38_2_carry[4]), .Z(
        add_1_root_add_38_2_carry[5]) );
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
  INVD1 U33 ( .I(divide_mode), .ZN(n78) );
  AO22D0 U34 ( .A1(N49), .A2(n78), .B1(N25), .B2(divide_mode), .Z(result[29])
         );
  AO22D0 U35 ( .A1(N48), .A2(n78), .B1(N24), .B2(divide_mode), .Z(result[28])
         );
  AO22D0 U36 ( .A1(N47), .A2(n78), .B1(N23), .B2(divide_mode), .Z(result[27])
         );
  AO22D0 U37 ( .A1(N46), .A2(n78), .B1(N22), .B2(divide_mode), .Z(result[26])
         );
  AO22D0 U38 ( .A1(N45), .A2(n78), .B1(N21), .B2(divide_mode), .Z(result[25])
         );
  AO22D0 U39 ( .A1(N44), .A2(n78), .B1(N20), .B2(divide_mode), .Z(result[24])
         );
  CKBD1 U40 ( .I(result_fraction[12]), .Z(result[12]) );
  CKBD1 U41 ( .I(result_fraction[13]), .Z(result[13]) );
  CKBD1 U42 ( .I(result_fraction[14]), .Z(result[14]) );
  CKBD1 U43 ( .I(result_fraction[15]), .Z(result[15]) );
  CKBD1 U44 ( .I(result_fraction[16]), .Z(result[16]) );
  CKBD1 U45 ( .I(result_fraction[17]), .Z(result[17]) );
  CKBD1 U46 ( .I(result_fraction[11]), .Z(result[11]) );
  CKBD1 U47 ( .I(result_fraction[10]), .Z(result[10]) );
  CKBD1 U48 ( .I(result_fraction[9]), .Z(result[9]) );
  FA1D0 U49 ( .A(N4), .B(exponent_adjust[1]), .CI(n1), .CO(
        add_0_root_add_0_root_add_22_2_carry[2]), .S(N20) );
  FA1D0 U50 ( .A(N5), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[2]), .CO(
        add_0_root_add_0_root_add_22_2_carry[3]), .S(N21) );
  FA1D0 U51 ( .A(N6), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[3]), .CO(
        add_0_root_add_0_root_add_22_2_carry[4]), .S(N22) );
  FA1D0 U52 ( .A(N7), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[4]), .CO(
        add_0_root_add_0_root_add_22_2_carry[5]), .S(N23) );
  FA1D0 U53 ( .A(N8), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[5]), .CO(
        add_0_root_add_0_root_add_22_2_carry[6]), .S(N24) );
  FA1D0 U54 ( .A(N9), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[6]), .CO(
        add_0_root_add_0_root_add_22_2_carry[7]), .S(N25) );
  FA1D0 U55 ( .A(N28), .B(exponent_adjust[1]), .CI(n2), .CO(
        add_0_root_add_0_root_add_25_2_carry[2]), .S(N44) );
  FA1D0 U56 ( .A(N29), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[2]), .CO(
        add_0_root_add_0_root_add_25_2_carry[3]), .S(N45) );
  FA1D0 U57 ( .A(N30), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[3]), .CO(
        add_0_root_add_0_root_add_25_2_carry[4]), .S(N46) );
  FA1D0 U58 ( .A(N31), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[4]), .CO(
        add_0_root_add_0_root_add_25_2_carry[5]), .S(N47) );
  FA1D0 U59 ( .A(N32), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[5]), .CO(
        add_0_root_add_0_root_add_25_2_carry[6]), .S(N48) );
  FA1D0 U60 ( .A(N33), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[6]), .CO(
        add_0_root_add_0_root_add_25_2_carry[7]), .S(N49) );
  AO22D0 U61 ( .A1(N43), .A2(n78), .B1(N19), .B2(divide_mode), .Z(result[23])
         );
  AO22D0 U62 ( .A1(N50), .A2(n78), .B1(divide_mode), .B2(N26), .Z(result[30])
         );
  XOR3D1 U63 ( .A1(N34), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_25_2_carry[7]), .Z(N50) );
  XOR3D1 U64 ( .A1(N10), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_22_2_carry[7]), .Z(N26) );
  CKBD1 U65 ( .I(x[22]), .Z(fraction_x[22]) );
  CKBD1 U66 ( .I(y[17]), .Z(fraction_y[17]) );
  AN2XD1 U67 ( .A1(y[23]), .A2(y[24]), .Z(n35) );
  INVD1 U68 ( .I(y[29]), .ZN(N17) );
  INVD0 U69 ( .I(y[24]), .ZN(N12) );
  INVD1 U70 ( .I(y[25]), .ZN(N13) );
  INVD1 U71 ( .I(y[26]), .ZN(N14) );
  INVD1 U72 ( .I(y[27]), .ZN(N15) );
  INVD1 U73 ( .I(y[28]), .ZN(N16) );
  AN2XD1 U74 ( .A1(n35), .A2(y[25]), .Z(n410) );
  AN2XD1 U75 ( .A1(n410), .A2(y[26]), .Z(n51) );
  AN2XD1 U76 ( .A1(n51), .A2(y[27]), .Z(n60) );
  AN2XD1 U77 ( .A1(n60), .A2(y[28]), .Z(n70) );
  CKXOR2D1 U78 ( .A1(y[30]), .A2(n77), .Z(N42) );
  ND2D1 U79 ( .A1(n70), .A2(y[29]), .ZN(n77) );
  CKBD1 U89 ( .I(x[21]), .Z(fraction_x[21]) );
  CKBD1 U90 ( .I(x[20]), .Z(fraction_x[20]) );
  CKBD1 U91 ( .I(x[19]), .Z(fraction_x[19]) );
  CKBD1 U92 ( .I(x[18]), .Z(fraction_x[18]) );
  CKBD1 U93 ( .I(x[17]), .Z(fraction_x[17]) );
  CKBD1 U94 ( .I(x[16]), .Z(fraction_x[16]) );
  CKBD1 U95 ( .I(x[15]), .Z(fraction_x[15]) );
  CKBD1 U96 ( .I(x[14]), .Z(fraction_x[14]) );
  CKBD1 U97 ( .I(y[22]), .Z(fraction_y[22]) );
  CKBD1 U98 ( .I(y[21]), .Z(fraction_y[21]) );
  CKBD1 U99 ( .I(y[20]), .Z(fraction_y[20]) );
  CKBD1 U100 ( .I(y[19]), .Z(fraction_y[19]) );
  CKBD1 U101 ( .I(y[18]), .Z(fraction_y[18]) );
  CKBD1 U102 ( .I(y[16]), .Z(fraction_y[16]) );
  CKBD1 U103 ( .I(y[15]), .Z(fraction_y[15]) );
  CKBD1 U104 ( .I(y[14]), .Z(fraction_y[14]) );
  CKBD1 U105 ( .I(result_fraction[22]), .Z(result[22]) );
  CKBD1 U106 ( .I(result_fraction[21]), .Z(result[21]) );
  CKBD1 U107 ( .I(result_fraction[20]), .Z(result[20]) );
  CKBD1 U108 ( .I(result_fraction[19]), .Z(result[19]) );
  CKBD1 U109 ( .I(result_fraction[18]), .Z(result[18]) );
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


module absdm_l1_separate ( x, y, divide_mode, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  input divide_mode;
  wire   n3, n5, n7, n9, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n53, n54, n55;
  wire   [22:14] fx;
  wire   [22:14] fy;
  wire   [24:10] div_value;
  wire   [24:12] mul_value;
  wire   [22:9] normalized_fraction;
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
        SYNOPSYS_UNCONNECTED__66;
  assign result[1] = 1'b0;
  assign result[2] = 1'b0;
  assign result[3] = 1'b0;
  assign result[4] = 1'b0;
  assign result[5] = 1'b0;
  assign result[6] = 1'b0;
  assign result[7] = 1'b0;
  assign result[8] = 1'b0;
  assign result[0] = 1'b0;

  absdm_l1_separate_div div_core ( .fx({fx[22:16], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .fy({fy[22:16], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .value({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, div_value, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13}) );
  absdm_l1_separate_mul mul_core ( .fx({fx, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .fy({fy, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .value({SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, mul_value, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29}) );
  fp32_normal_finite_wrapper wrapper ( .x({x[31:14], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y({
        y[31:14], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .divide_mode(n54), .fraction_x({fx, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31, 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, 
        SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39, 
        SYNOPSYS_UNCONNECTED__40, SYNOPSYS_UNCONNECTED__41, 
        SYNOPSYS_UNCONNECTED__42, SYNOPSYS_UNCONNECTED__43}), .fraction_y({fy, 
        SYNOPSYS_UNCONNECTED__44, SYNOPSYS_UNCONNECTED__45, 
        SYNOPSYS_UNCONNECTED__46, SYNOPSYS_UNCONNECTED__47, 
        SYNOPSYS_UNCONNECTED__48, SYNOPSYS_UNCONNECTED__49, 
        SYNOPSYS_UNCONNECTED__50, SYNOPSYS_UNCONNECTED__51, 
        SYNOPSYS_UNCONNECTED__52, SYNOPSYS_UNCONNECTED__53, 
        SYNOPSYS_UNCONNECTED__54, SYNOPSYS_UNCONNECTED__55, 
        SYNOPSYS_UNCONNECTED__56, SYNOPSYS_UNCONNECTED__57}), 
        .result_fraction({normalized_fraction, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .exponent_adjust({exponent_adjust[2], 
        exponent_adjust[2], exponent_adjust[0]}), .result({result[31:9], 
        SYNOPSYS_UNCONNECTED__58, SYNOPSYS_UNCONNECTED__59, 
        SYNOPSYS_UNCONNECTED__60, SYNOPSYS_UNCONNECTED__61, 
        SYNOPSYS_UNCONNECTED__62, SYNOPSYS_UNCONNECTED__63, 
        SYNOPSYS_UNCONNECTED__64, SYNOPSYS_UNCONNECTED__65, 
        SYNOPSYS_UNCONNECTED__66}) );
  ND2D1 U78 ( .A1(n9), .A2(n7), .ZN(exponent_adjust[2]) );
  IND3D1 U80 ( .A1(n25), .B1(n26), .B2(n53), .ZN(n9) );
  ND3D1 U81 ( .A1(n26), .A2(n25), .A3(n53), .ZN(n7) );
  ND2D1 U82 ( .A1(n53), .A2(n9), .ZN(exponent_adjust[0]) );
  OAI221D0 U83 ( .A1(n45), .A2(n3), .B1(n53), .B2(n43), .C(n48), .ZN(
        normalized_fraction[12]) );
  OA22D0 U84 ( .A1(n7), .A2(n5), .B1(n9), .B2(n47), .Z(n48) );
  OAI221D0 U85 ( .A1(n43), .A2(n3), .B1(n53), .B2(n41), .C(n46), .ZN(
        normalized_fraction[13]) );
  OA22D0 U86 ( .A1(n7), .A2(n47), .B1(n9), .B2(n45), .Z(n46) );
  OAI221D0 U87 ( .A1(n41), .A2(n3), .B1(n53), .B2(n39), .C(n44), .ZN(
        normalized_fraction[14]) );
  OA22D0 U88 ( .A1(n7), .A2(n45), .B1(n9), .B2(n43), .Z(n44) );
  OAI221D0 U89 ( .A1(n39), .A2(n3), .B1(n53), .B2(n37), .C(n42), .ZN(
        normalized_fraction[15]) );
  OA22D0 U90 ( .A1(n7), .A2(n43), .B1(n9), .B2(n41), .Z(n42) );
  OAI221D0 U91 ( .A1(n37), .A2(n3), .B1(n53), .B2(n35), .C(n40), .ZN(
        normalized_fraction[16]) );
  OA22D0 U92 ( .A1(n7), .A2(n41), .B1(n9), .B2(n39), .Z(n40) );
  OAI221D0 U93 ( .A1(n35), .A2(n3), .B1(n53), .B2(n33), .C(n38), .ZN(
        normalized_fraction[17]) );
  OA22D0 U94 ( .A1(n7), .A2(n39), .B1(n9), .B2(n37), .Z(n38) );
  OAI221D0 U95 ( .A1(n25), .A2(n3), .B1(n53), .B2(n26), .C(n27), .ZN(
        normalized_fraction[22]) );
  OA22D0 U96 ( .A1(n7), .A2(n28), .B1(n9), .B2(n29), .Z(n27) );
  OAI221D0 U97 ( .A1(n29), .A2(n3), .B1(n53), .B2(n25), .C(n30), .ZN(
        normalized_fraction[21]) );
  OA22D0 U98 ( .A1(n7), .A2(n31), .B1(n9), .B2(n28), .Z(n30) );
  OAI221D0 U99 ( .A1(n28), .A2(n3), .B1(n53), .B2(n29), .C(n32), .ZN(
        normalized_fraction[20]) );
  OA22D0 U100 ( .A1(n7), .A2(n33), .B1(n9), .B2(n31), .Z(n32) );
  OAI221D0 U101 ( .A1(n33), .A2(n3), .B1(n53), .B2(n31), .C(n36), .ZN(
        normalized_fraction[18]) );
  OA22D0 U102 ( .A1(n7), .A2(n37), .B1(n9), .B2(n35), .Z(n36) );
  OAI221D0 U103 ( .A1(n31), .A2(n3), .B1(n53), .B2(n28), .C(n34), .ZN(
        normalized_fraction[19]) );
  OA22D0 U104 ( .A1(n7), .A2(n35), .B1(n9), .B2(n33), .Z(n34) );
  OAI221D0 U105 ( .A1(n47), .A2(n3), .B1(n53), .B2(n45), .C(n49), .ZN(
        normalized_fraction[11]) );
  IND2D1 U108 ( .A1(n26), .B1(n53), .ZN(n3) );
  OAI22D1 U109 ( .A1(n5), .A2(n3), .B1(n53), .B2(n47), .ZN(
        normalized_fraction[10]) );
  NR2D1 U110 ( .A1(n53), .A2(n5), .ZN(normalized_fraction[9]) );
  ND2D1 U111 ( .A1(div_value[11]), .A2(n54), .ZN(n47) );
  ND2D1 U112 ( .A1(div_value[10]), .A2(n54), .ZN(n5) );
  AOI22D1 U115 ( .A1(mul_value[23]), .A2(n55), .B1(div_value[23]), .B2(n54), 
        .ZN(n26) );
  AOI22D1 U116 ( .A1(mul_value[22]), .A2(n55), .B1(div_value[22]), .B2(n54), 
        .ZN(n25) );
  AOI22D1 U117 ( .A1(mul_value[21]), .A2(n55), .B1(div_value[21]), .B2(n54), 
        .ZN(n29) );
  AOI22D1 U118 ( .A1(mul_value[20]), .A2(n55), .B1(div_value[20]), .B2(n54), 
        .ZN(n28) );
  AOI22D1 U119 ( .A1(mul_value[19]), .A2(n55), .B1(div_value[19]), .B2(n54), 
        .ZN(n31) );
  AOI22D1 U120 ( .A1(mul_value[18]), .A2(n55), .B1(div_value[18]), .B2(n54), 
        .ZN(n33) );
  AOI22D1 U121 ( .A1(mul_value[17]), .A2(n55), .B1(div_value[17]), .B2(n54), 
        .ZN(n35) );
  AOI22D1 U122 ( .A1(mul_value[16]), .A2(n55), .B1(div_value[16]), .B2(n54), 
        .ZN(n37) );
  AOI22D1 U123 ( .A1(mul_value[15]), .A2(n55), .B1(div_value[15]), .B2(n54), 
        .ZN(n39) );
  AOI22D1 U124 ( .A1(mul_value[14]), .A2(n55), .B1(div_value[14]), .B2(n54), 
        .ZN(n41) );
  AOI22D1 U125 ( .A1(mul_value[13]), .A2(n55), .B1(div_value[13]), .B2(n54), 
        .ZN(n43) );
  AOI22D1 U126 ( .A1(mul_value[12]), .A2(n55), .B1(div_value[12]), .B2(n54), 
        .ZN(n45) );
  INVD1 U127 ( .I(n55), .ZN(n54) );
  INVD1 U130 ( .I(divide_mode), .ZN(n55) );
  OR2D1 U79 ( .A1(n9), .A2(n5), .Z(n49) );
  AOI22D1 U106 ( .A1(n55), .A2(mul_value[24]), .B1(div_value[24]), .B2(n54), 
        .ZN(n53) );
endmodule

