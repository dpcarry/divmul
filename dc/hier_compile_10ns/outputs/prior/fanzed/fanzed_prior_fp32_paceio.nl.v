/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Thu Sep  3 12:45:48 2026
/////////////////////////////////////////////////////////////


module SHIFTER_width23_0 ( x, shift, left, out0 );
  input [22:0] x;
  input [4:0] shift;
  output [22:0] out0;
  input left;
  wire   n29, n30, n33, n34, n35, n38, n39, n116, n124, n131, n138, n146, n154,
         n162, n170, n176, n181, n185, n191, n192, n201, n210;

  INVD1 U15 ( .I(x[3]), .ZN(n33) );
  INVD1 U16 ( .I(x[2]), .ZN(n38) );
  INVD1 U17 ( .I(x[1]), .ZN(n34) );
  INVD1 U31 ( .I(x[0]), .ZN(n29) );
  INVD1 U39 ( .I(x[5]), .ZN(n35) );
  INVD1 U41 ( .I(x[4]), .ZN(n30) );
  INVD1 U42 ( .I(x[6]), .ZN(n39) );
  CKND1 U1 ( .I(n191), .ZN(out0[18]) );
  INVD1 U2 ( .I(n210), .ZN(out0[21]) );
  CKND1 U3 ( .I(n192), .ZN(out0[19]) );
  CKND1 U4 ( .I(n124), .ZN(out0[8]) );
  INVD0 U5 ( .I(x[18]), .ZN(n191) );
  INVD1 U6 ( .I(n181), .ZN(out0[16]) );
  INVD1 U7 ( .I(n201), .ZN(out0[20]) );
  INVD1 U8 ( .I(n116), .ZN(out0[7]) );
  CKND1 U9 ( .I(n131), .ZN(out0[9]) );
  INVD1 U10 ( .I(n146), .ZN(out0[11]) );
  CKND1 U11 ( .I(n162), .ZN(out0[13]) );
  INVD1 U12 ( .I(n170), .ZN(out0[14]) );
  INVD0 U13 ( .I(x[8]), .ZN(n124) );
  INVD1 U14 ( .I(x[16]), .ZN(n181) );
  INVD1 U18 ( .I(n138), .ZN(out0[10]) );
  INVD1 U19 ( .I(n154), .ZN(out0[12]) );
  INVD1 U20 ( .I(n185), .ZN(out0[17]) );
  CKND1 U21 ( .I(n39), .ZN(out0[6]) );
  CKND1 U22 ( .I(n176), .ZN(out0[15]) );
  INVD0 U23 ( .I(x[11]), .ZN(n146) );
  INVD0 U24 ( .I(x[13]), .ZN(n162) );
  INVD0 U25 ( .I(x[7]), .ZN(n116) );
  INVD0 U26 ( .I(x[9]), .ZN(n131) );
  INVD0 U27 ( .I(x[14]), .ZN(n170) );
  INVD1 U28 ( .I(x[17]), .ZN(n185) );
  INVD1 U29 ( .I(x[10]), .ZN(n138) );
  INVD1 U30 ( .I(x[12]), .ZN(n154) );
  INVD0 U32 ( .I(x[21]), .ZN(n210) );
  CKND1 U33 ( .I(n35), .ZN(out0[5]) );
  INVD0 U34 ( .I(x[15]), .ZN(n176) );
  INVD0 U35 ( .I(x[19]), .ZN(n192) );
  INVD0 U36 ( .I(x[20]), .ZN(n201) );
  CKND1 U37 ( .I(n30), .ZN(out0[4]) );
  CKND1 U38 ( .I(n33), .ZN(out0[3]) );
  CKND1 U40 ( .I(n38), .ZN(out0[2]) );
  CKND1 U43 ( .I(n34), .ZN(out0[1]) );
  INVD1 U44 ( .I(n29), .ZN(out0[0]) );
endmodule


module NORMALIZE_width23_0 ( x, out0, num0 );
  input [22:0] x;
  output [22:0] out0;
  output [4:0] num0;

  wire   SYNOPSYS_UNCONNECTED__0;

  SHIFTER_width23_0 shifter ( .x({1'b1, x[21:0]}), .shift({1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .left(1'b0), .out0({SYNOPSYS_UNCONNECTED__0, out0[21:0]}) );
endmodule


module LOD_width23_1_DW01_inc_0_DW01_inc_1 ( A, SUM );
  input [22:0] A;
  output [22:0] SUM;

  wire   [22:2] carry;

  HA1D0 U1_1_21 ( .A(A[21]), .B(carry[21]), .CO(carry[22]), .S(SUM[21]) );
  HA1D0 U1_1_20 ( .A(A[20]), .B(carry[20]), .CO(carry[21]), .S(SUM[20]) );
  HA1D0 U1_1_19 ( .A(A[19]), .B(carry[19]), .CO(carry[20]), .S(SUM[19]) );
  HA1D0 U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  HA1D0 U1_1_18 ( .A(A[18]), .B(carry[18]), .CO(carry[19]), .S(SUM[18]) );
  HA1D0 U1_1_17 ( .A(A[17]), .B(carry[17]), .CO(carry[18]), .S(SUM[17]) );
  HA1D0 U1_1_16 ( .A(A[16]), .B(carry[16]), .CO(carry[17]), .S(SUM[16]) );
  HA1D0 U1_1_15 ( .A(A[15]), .B(carry[15]), .CO(carry[16]), .S(SUM[15]) );
  HA1D0 U1_1_14 ( .A(A[14]), .B(carry[14]), .CO(carry[15]), .S(SUM[14]) );
  HA1D0 U1_1_13 ( .A(A[13]), .B(carry[13]), .CO(carry[14]), .S(SUM[13]) );
  HA1D0 U1_1_12 ( .A(A[12]), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  HA1D0 U1_1_11 ( .A(A[11]), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  HA1D0 U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  HA1D0 U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  HA1D0 U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  HA1D0 U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  HA1D0 U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  HA1D0 U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  HA1D0 U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  HA1D0 U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  HA1D0 U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  CKXOR2D0 U1 ( .A1(carry[22]), .A2(A[22]), .Z(SUM[22]) );
endmodule


module LOD_width23_1 ( in0, out0 );
  input [22:0] in0;
  output [22:0] out0;
  wire   N9, N8, N7, N6, N5, N4, N3, N21, N20, N2, N19, N18, N17, N16, N15,
         N14, N13, N12, N11, N10, N1, N0, n22;
  wire   [22:1] in_r_change;
  wire   SYNOPSYS_UNCONNECTED__0;

  AN2XD1 U2 ( .A1(in_r_change[13]), .A2(in0[9]), .Z(out0[9]) );
  AN2XD1 U3 ( .A1(in_r_change[14]), .A2(in0[8]), .Z(out0[8]) );
  AN2XD1 U4 ( .A1(in_r_change[15]), .A2(in0[7]), .Z(out0[7]) );
  AN2XD1 U5 ( .A1(in_r_change[16]), .A2(in0[6]), .Z(out0[6]) );
  AN2XD1 U6 ( .A1(in_r_change[17]), .A2(in0[5]), .Z(out0[5]) );
  AN2XD1 U7 ( .A1(in_r_change[18]), .A2(in0[4]), .Z(out0[4]) );
  AN2XD1 U8 ( .A1(in_r_change[19]), .A2(in0[3]), .Z(out0[3]) );
  AN2XD1 U9 ( .A1(in_r_change[20]), .A2(in0[2]), .Z(out0[2]) );
  AN2XD1 U11 ( .A1(in_r_change[1]), .A2(in0[21]), .Z(out0[21]) );
  AN2XD1 U12 ( .A1(in_r_change[2]), .A2(in0[20]), .Z(out0[20]) );
  AN2XD1 U13 ( .A1(in_r_change[21]), .A2(in0[1]), .Z(out0[1]) );
  AN2XD1 U14 ( .A1(in_r_change[3]), .A2(in0[19]), .Z(out0[19]) );
  AN2XD1 U15 ( .A1(in_r_change[4]), .A2(in0[18]), .Z(out0[18]) );
  AN2XD1 U16 ( .A1(in_r_change[5]), .A2(in0[17]), .Z(out0[17]) );
  AN2XD1 U17 ( .A1(in_r_change[6]), .A2(in0[16]), .Z(out0[16]) );
  AN2XD1 U18 ( .A1(in_r_change[7]), .A2(in0[15]), .Z(out0[15]) );
  AN2XD1 U19 ( .A1(in_r_change[8]), .A2(in0[14]), .Z(out0[14]) );
  AN2XD1 U20 ( .A1(in_r_change[9]), .A2(in0[13]), .Z(out0[13]) );
  AN2XD1 U21 ( .A1(in_r_change[10]), .A2(in0[12]), .Z(out0[12]) );
  AN2XD1 U22 ( .A1(in_r_change[11]), .A2(in0[11]), .Z(out0[11]) );
  AN2XD1 U23 ( .A1(in_r_change[12]), .A2(in0[10]), .Z(out0[10]) );
  AN2XD1 U24 ( .A1(in_r_change[22]), .A2(in0[0]), .Z(out0[0]) );
  LOD_width23_1_DW01_inc_0_DW01_inc_1 add_0_root_add_23_ni ( .A({N0, N1, N2, 
        N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, 
        N18, N19, N20, N21, n22}), .SUM({in_r_change, SYNOPSYS_UNCONNECTED__0}) );
  INVD1 U10 ( .I(n22), .ZN(out0[22]) );
  INVD1 U25 ( .I(in0[22]), .ZN(n22) );
  INVD1 U26 ( .I(in0[20]), .ZN(N20) );
  INVD1 U27 ( .I(in0[19]), .ZN(N19) );
  INVD1 U28 ( .I(in0[18]), .ZN(N18) );
  INVD1 U29 ( .I(in0[17]), .ZN(N17) );
  INVD1 U30 ( .I(in0[16]), .ZN(N16) );
  INVD1 U31 ( .I(in0[15]), .ZN(N15) );
  INVD1 U32 ( .I(in0[14]), .ZN(N14) );
  INVD1 U33 ( .I(in0[13]), .ZN(N13) );
  INVD1 U34 ( .I(in0[12]), .ZN(N12) );
  INVD1 U35 ( .I(in0[11]), .ZN(N11) );
  INVD1 U36 ( .I(in0[10]), .ZN(N10) );
  INVD1 U37 ( .I(in0[9]), .ZN(N9) );
  INVD1 U38 ( .I(in0[8]), .ZN(N8) );
  INVD1 U39 ( .I(in0[7]), .ZN(N7) );
  INVD1 U40 ( .I(in0[6]), .ZN(N6) );
  INVD1 U41 ( .I(in0[5]), .ZN(N5) );
  INVD1 U42 ( .I(in0[4]), .ZN(N4) );
  INVD1 U43 ( .I(in0[21]), .ZN(N21) );
  INVD1 U44 ( .I(in0[0]), .ZN(N0) );
  INVD1 U45 ( .I(in0[3]), .ZN(N3) );
  INVD1 U46 ( .I(in0[2]), .ZN(N2) );
  INVD1 U47 ( .I(in0[1]), .ZN(N1) );
endmodule


module LOD_ENC_width23_1 ( l_one, num0 );
  input [22:0] l_one;
  output [4:0] num0;
  wire   n81, n1, n3, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n82;

  OR2D1 U20 ( .A1(l_one[3]), .A2(l_one[4]), .Z(n66) );
  INVD1 U3 ( .I(l_one[22]), .ZN(n1) );
  INR3D0 U4 ( .A1(n80), .B1(n6), .B2(n77), .ZN(num0[3]) );
  OAI21D1 U5 ( .A1(n72), .A2(n6), .B(n80), .ZN(num0[2]) );
  AOI31D1 U6 ( .A1(n71), .A2(n13), .A3(n70), .B(n73), .ZN(n72) );
  IND4D1 U7 ( .A1(l_one[16]), .B1(n16), .B2(n17), .B3(n69), .ZN(n71) );
  ND3D1 U8 ( .A1(n80), .A2(n79), .A3(n78), .ZN(num0[4]) );
  IND4D1 U9 ( .A1(l_one[15]), .B1(n77), .B2(n76), .B3(n75), .ZN(n79) );
  NR3D0 U10 ( .A1(l_one[16]), .A2(l_one[18]), .A3(l_one[17]), .ZN(n75) );
  AOI21D1 U11 ( .A1(n7), .A2(n57), .B(l_one[4]), .ZN(n58) );
  OAI21D1 U12 ( .A1(n56), .A2(l_one[7]), .B(n8), .ZN(n57) );
  AOI21D1 U13 ( .A1(n11), .A2(n55), .B(l_one[8]), .ZN(n56) );
  OAI21D1 U14 ( .A1(n54), .A2(l_one[11]), .B(n12), .ZN(n55) );
  INVD1 U15 ( .I(l_one[5]), .ZN(n7) );
  INVD1 U16 ( .I(n78), .ZN(n6) );
  INVD1 U17 ( .I(l_one[6]), .ZN(n8) );
  OAI211D1 U18 ( .A1(n65), .A2(n64), .B(n9), .C(n10), .ZN(n67) );
  AOI31D1 U19 ( .A1(n14), .A2(n15), .A3(n63), .B(n62), .ZN(n65) );
  ND2D1 U21 ( .A1(n12), .A2(n11), .ZN(n64) );
  OAI31D1 U22 ( .A1(n61), .A2(l_one[18]), .A3(l_one[17]), .B(n60), .ZN(n63) );
  INVD1 U23 ( .I(l_one[7]), .ZN(n9) );
  INVD1 U24 ( .I(l_one[8]), .ZN(n10) );
  INR4D0 U25 ( .A1(n74), .B1(n73), .B2(l_one[11]), .B3(l_one[12]), .ZN(n77) );
  NR2D1 U26 ( .A1(l_one[14]), .A2(l_one[13]), .ZN(n74) );
  ND4D1 U27 ( .A1(n12), .A2(n9), .A3(n10), .A4(n11), .ZN(n73) );
  INVD1 U28 ( .I(l_one[11]), .ZN(n13) );
  IND2D1 U29 ( .A1(l_one[12]), .B1(n13), .ZN(n62) );
  AOI21D1 U30 ( .A1(n14), .A2(n53), .B(l_one[12]), .ZN(n54) );
  OAI21D1 U31 ( .A1(n52), .A2(l_one[15]), .B(n15), .ZN(n53) );
  AOI21D1 U32 ( .A1(n16), .A2(n51), .B(l_one[16]), .ZN(n52) );
  OAI21D1 U33 ( .A1(n50), .A2(l_one[19]), .B(n17), .ZN(n51) );
  INVD1 U34 ( .I(l_one[13]), .ZN(n14) );
  INVD1 U35 ( .I(l_one[14]), .ZN(n15) );
  NR2D1 U36 ( .A1(l_one[16]), .A2(l_one[15]), .ZN(n60) );
  INVD1 U37 ( .I(l_one[17]), .ZN(n16) );
  INVD1 U38 ( .I(l_one[18]), .ZN(n17) );
  NR3D0 U39 ( .A1(l_one[12]), .A2(l_one[14]), .A3(l_one[13]), .ZN(n70) );
  AOI211XD0 U40 ( .A1(n49), .A2(n1), .B(l_one[20]), .C(l_one[19]), .ZN(n61) );
  AOI21D1 U41 ( .A1(l_one[22]), .A2(n49), .B(l_one[20]), .ZN(n50) );
  INVD1 U42 ( .I(l_one[21]), .ZN(n49) );
  NR2D1 U43 ( .A1(l_one[15]), .A2(n76), .ZN(n69) );
  NR4D0 U44 ( .A1(l_one[19]), .A2(l_one[20]), .A3(l_one[21]), .A4(l_one[22]), 
        .ZN(n76) );
  CKBD1 U45 ( .I(n81), .Z(num0[1]) );
  OAI31D1 U46 ( .A1(n68), .A2(l_one[2]), .A3(l_one[1]), .B(n3), .ZN(n81) );
  AOI31D1 U47 ( .A1(n7), .A2(n8), .A3(n67), .B(n66), .ZN(n68) );
  INVD1 U48 ( .I(l_one[0]), .ZN(n3) );
  NR3D0 U52 ( .A1(l_one[1]), .A2(l_one[2]), .A3(l_one[0]), .ZN(n80) );
  INVD1 U53 ( .I(l_one[2]), .ZN(n5) );
  NR4D0 U54 ( .A1(l_one[3]), .A2(l_one[4]), .A3(l_one[5]), .A4(l_one[6]), .ZN(
        n78) );
  INVD1 U55 ( .I(l_one[9]), .ZN(n11) );
  INVD1 U56 ( .I(l_one[10]), .ZN(n12) );
  IAO21D0 U49 ( .A1(n82), .A2(l_one[1]), .B(l_one[0]), .ZN(num0[0]) );
  OA21D0 U50 ( .A1(n58), .A2(l_one[3]), .B(n5), .Z(n82) );
endmodule


module ZERO_CNT_width23_1 ( x, num0 );
  input [22:0] x;
  output [4:0] num0;

  wire   [22:0] l_one;

  LOD_width23_1 u_lod ( .in0(x), .out0(l_one) );
  LOD_ENC_width23_1 u_enc ( .l_one(l_one), .num0(num0) );
endmodule


module SHIFTER_width23_1 ( x, shift, left, out0 );
  input [22:0] x;
  input [4:0] shift;
  output [22:0] out0;
  input left;
  wire   n7, n8, n9, n10, n17, n18, n22, n25, n26, n29, n30, n32, n33, n34,
         n35, n37, n38, n41, n42, n55, n56, n58, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187,
         n188, n189, n190, n191, n192, n193, n194, n196, n197, n198, n199,
         n200, n201, n202, n203, n205, n206, n207, n208, n209, n210, n211,
         n213, n214, n215, n216, n217, n218, n219, n222, n382, n383, n384,
         n385, n386;

  INVD1 U4 ( .I(n95), .ZN(n37) );
  INVD1 U5 ( .I(n102), .ZN(n41) );
  INVD1 U8 ( .I(n188), .ZN(n38) );
  NR2D1 U9 ( .A1(shift[3]), .A2(n173), .ZN(n174) );
  NR2D1 U10 ( .A1(shift[3]), .A2(n118), .ZN(n175) );
  INVD1 U11 ( .I(n182), .ZN(n34) );
  NR2D1 U12 ( .A1(n171), .A2(n22), .ZN(n222) );
  INVD1 U13 ( .I(n197), .ZN(n33) );
  INVD1 U14 ( .I(n178), .ZN(n29) );
  NR2D1 U15 ( .A1(shift[3]), .A2(n163), .ZN(n164) );
  NR2D1 U16 ( .A1(shift[3]), .A2(n171), .ZN(n165) );
  NR2D1 U17 ( .A1(n167), .A2(n22), .ZN(n215) );
  NR2D1 U19 ( .A1(n159), .A2(n22), .ZN(n207) );
  NR2D1 U20 ( .A1(shift[3]), .A2(n155), .ZN(n156) );
  NR2D1 U21 ( .A1(shift[3]), .A2(n167), .ZN(n157) );
  INVD1 U22 ( .I(n214), .ZN(n35) );
  NR2D1 U23 ( .A1(shift[3]), .A2(n139), .ZN(n140) );
  NR2D1 U24 ( .A1(shift[3]), .A2(n151), .ZN(n141) );
  INVD1 U25 ( .I(n206), .ZN(n30) );
  NR2D1 U26 ( .A1(n151), .A2(n22), .ZN(n198) );
  NR2D1 U27 ( .A1(shift[3]), .A2(n147), .ZN(n148) );
  NR2D1 U28 ( .A1(shift[3]), .A2(n159), .ZN(n149) );
  NR2D1 U54 ( .A1(n121), .A2(n22), .ZN(n172) );
  NR2D1 U55 ( .A1(n166), .A2(n22), .ZN(n168) );
  NR2D1 U57 ( .A1(n158), .A2(n22), .ZN(n160) );
  NR2D1 U58 ( .A1(n142), .A2(n22), .ZN(n144) );
  NR2D1 U59 ( .A1(shift[3]), .A2(n135), .ZN(n126) );
  NR2D1 U60 ( .A1(shift[3]), .A2(n181), .ZN(n125) );
  NR2D1 U61 ( .A1(n143), .A2(n22), .ZN(n189) );
  IND2D1 U62 ( .A1(n121), .B1(n22), .ZN(n64) );
  NR2D1 U63 ( .A1(n127), .A2(n22), .ZN(n129) );
  NR2D1 U64 ( .A1(n128), .A2(n22), .ZN(n179) );
  NR2D1 U65 ( .A1(shift[3]), .A2(n128), .ZN(n119) );
  NR2D1 U66 ( .A1(n120), .A2(n22), .ZN(n122) );
  NR2D1 U67 ( .A1(shift[3]), .A2(n143), .ZN(n133) );
  NR2D1 U68 ( .A1(shift[3]), .A2(n185), .ZN(n132) );
  NR2D1 U69 ( .A1(n150), .A2(n22), .ZN(n152) );
  NR2D1 U70 ( .A1(n134), .A2(n22), .ZN(n136) );
  NR2D1 U71 ( .A1(n135), .A2(n22), .ZN(n183) );
  CKBD1 U72 ( .I(shift[4]), .Z(n25) );
  NR2D1 U74 ( .A1(shift[3]), .A2(n121), .ZN(n115) );
  CKBD1 U77 ( .I(shift[4]), .Z(n26) );
  CKBD1 U78 ( .I(shift[2]), .Z(n18) );
  MUX2D0 U109 ( .I0(n7), .I1(n135), .S(n22), .Z(n75) );
  OR2XD1 U110 ( .A1(shift[2]), .A2(n103), .Z(n7) );
  INVD1 U112 ( .I(n143), .ZN(n42) );
  MUX2D0 U113 ( .I0(n8), .I1(n128), .S(n22), .Z(n65) );
  OR2XD1 U114 ( .A1(shift[2]), .A2(n96), .Z(n8) );
  MUX2D0 U115 ( .I0(n9), .I1(n159), .S(n22), .Z(n99) );
  MUX2D0 U116 ( .I0(n37), .I1(n96), .S(n18), .Z(n9) );
  INR2D1 U117 ( .A1(n88), .B1(shift[2]), .ZN(n91) );
  INVD1 U118 ( .I(n151), .ZN(n32) );
  NR2D1 U119 ( .A1(n111), .A2(n22), .ZN(n112) );
  NR2D1 U120 ( .A1(n173), .A2(n22), .ZN(n113) );
  OAI31D1 U121 ( .A1(n56), .A2(n18), .A3(shift[1]), .B(n196), .ZN(n200) );
  MUX2D0 U125 ( .I0(n41), .I1(n103), .S(shift[2]), .Z(n10) );
  OAI31D1 U126 ( .A1(n58), .A2(n18), .A3(shift[1]), .B(n205), .ZN(n209) );
  OAI31D1 U129 ( .A1(n55), .A2(n18), .A3(shift[1]), .B(n213), .ZN(n217) );
  INVD1 U130 ( .I(n210), .ZN(n55) );
  INVD1 U132 ( .I(n192), .ZN(n56) );
  INVD1 U133 ( .I(n201), .ZN(n58) );
  IND2D1 U147 ( .A1(n70), .B1(n17), .ZN(n103) );
  IND2D1 U148 ( .A1(n79), .B1(n17), .ZN(n96) );
  IND2D1 U153 ( .A1(shift[0]), .B1(x[0]), .ZN(n79) );
  ND2D1 U160 ( .A1(n177), .A2(n176), .ZN(out0[15]) );
  ND2D1 U172 ( .A1(n170), .A2(n169), .ZN(out0[14]) );
  ND2D1 U175 ( .A1(n162), .A2(n161), .ZN(out0[13]) );
  ND2D1 U180 ( .A1(n131), .A2(n130), .ZN(out0[9]) );
  ND2D1 U183 ( .A1(n146), .A2(n145), .ZN(out0[11]) );
  ND2D1 U186 ( .A1(n124), .A2(n123), .ZN(out0[8]) );
  ND2D1 U189 ( .A1(n138), .A2(n137), .ZN(out0[10]) );
  ND2D1 U194 ( .A1(n154), .A2(n153), .ZN(out0[12]) );
  OAI31D1 U196 ( .A1(n191), .A2(shift[4]), .A3(shift[3]), .B(n190), .ZN(
        out0[18]) );
  ND2D1 U200 ( .A1(n117), .A2(n116), .ZN(out0[7]) );
  OAI31D1 U202 ( .A1(n185), .A2(shift[4]), .A3(shift[3]), .B(n184), .ZN(
        out0[17]) );
  OAI31D1 U205 ( .A1(n200), .A2(shift[4]), .A3(shift[3]), .B(n199), .ZN(
        out0[19]) );
  OAI31D1 U210 ( .A1(n181), .A2(shift[4]), .A3(shift[3]), .B(n180), .ZN(
        out0[16]) );
  OAI31D1 U213 ( .A1(n209), .A2(shift[4]), .A3(shift[3]), .B(n208), .ZN(
        out0[20]) );
  OAI31D1 U216 ( .A1(n217), .A2(shift[4]), .A3(shift[3]), .B(n216), .ZN(
        out0[21]) );
  MUX2ND0 U221 ( .I0(x[13]), .I1(x[12]), .S(shift[0]), .ZN(n67) );
  MUX2ND0 U222 ( .I0(x[15]), .I1(x[14]), .S(shift[0]), .ZN(n66) );
  MUX2ND0 U223 ( .I0(n67), .I1(n66), .S(n17), .ZN(n194) );
  MUX2ND0 U224 ( .I0(x[9]), .I1(x[8]), .S(shift[0]), .ZN(n71) );
  MUX2ND0 U225 ( .I0(x[11]), .I1(x[10]), .S(shift[0]), .ZN(n68) );
  MUX2ND0 U226 ( .I0(n71), .I1(n68), .S(n17), .ZN(n90) );
  MUX2ND0 U227 ( .I0(n194), .I1(n90), .S(shift[2]), .ZN(n118) );
  MUX2ND0 U228 ( .I0(x[21]), .I1(x[20]), .S(shift[0]), .ZN(n210) );
  MUX2ND0 U229 ( .I0(x[0]), .I1(x[22]), .S(shift[0]), .ZN(n69) );
  MUX2ND0 U230 ( .I0(n210), .I1(n69), .S(n17), .ZN(n87) );
  MUX2ND0 U232 ( .I0(x[19]), .I1(x[18]), .S(shift[0]), .ZN(n192) );
  MUX2ND0 U233 ( .I0(n193), .I1(n192), .S(n17), .ZN(n86) );
  MUX2ND0 U234 ( .I0(n87), .I1(n86), .S(shift[2]), .ZN(n120) );
  MUX2ND0 U235 ( .I0(n118), .I1(n120), .S(n22), .ZN(n178) );
  MUX2ND0 U236 ( .I0(x[5]), .I1(x[4]), .S(shift[0]), .ZN(n73) );
  MUX2ND0 U237 ( .I0(x[7]), .I1(x[6]), .S(shift[0]), .ZN(n72) );
  MUX2ND0 U238 ( .I0(n73), .I1(n72), .S(n17), .ZN(n89) );
  MUX2ND0 U239 ( .I0(x[1]), .I1(x[0]), .S(shift[0]), .ZN(n70) );
  MUX2ND0 U240 ( .I0(x[3]), .I1(x[2]), .S(shift[0]), .ZN(n74) );
  MUX2ND0 U241 ( .I0(n70), .I1(n74), .S(n17), .ZN(n88) );
  MUX2ND0 U242 ( .I0(n89), .I1(n88), .S(shift[2]), .ZN(n121) );
  MUX2ND0 U243 ( .I0(n29), .I1(n64), .S(shift[4]), .ZN(out0[0]) );
  MUX2ND0 U244 ( .I0(x[14]), .I1(x[13]), .S(shift[0]), .ZN(n76) );
  MUX2ND0 U245 ( .I0(x[16]), .I1(x[15]), .S(shift[0]), .ZN(n186) );
  MUX2ND0 U246 ( .I0(n76), .I1(n186), .S(n17), .ZN(n203) );
  MUX2ND0 U247 ( .I0(x[10]), .I1(x[9]), .S(shift[0]), .ZN(n80) );
  MUX2ND0 U248 ( .I0(x[12]), .I1(x[11]), .S(shift[0]), .ZN(n77) );
  MUX2ND0 U249 ( .I0(n80), .I1(n77), .S(n17), .ZN(n98) );
  MUX2ND0 U250 ( .I0(n203), .I1(n98), .S(shift[2]), .ZN(n181) );
  MUX2ND0 U251 ( .I0(x[22]), .I1(x[21]), .S(shift[0]), .ZN(n218) );
  MUX2ND0 U252 ( .I0(n218), .I1(n70), .S(n17), .ZN(n94) );
  MUX2ND0 U253 ( .I0(x[18]), .I1(x[17]), .S(shift[0]), .ZN(n202) );
  MUX2ND0 U254 ( .I0(x[20]), .I1(x[19]), .S(shift[0]), .ZN(n201) );
  MUX2ND0 U255 ( .I0(n202), .I1(n201), .S(n17), .ZN(n93) );
  MUX2ND0 U256 ( .I0(n94), .I1(n93), .S(shift[2]), .ZN(n127) );
  MUX2ND0 U257 ( .I0(n181), .I1(n127), .S(n22), .ZN(n182) );
  MUX2ND0 U258 ( .I0(x[6]), .I1(x[5]), .S(shift[0]), .ZN(n82) );
  MUX2ND0 U259 ( .I0(x[8]), .I1(x[7]), .S(shift[0]), .ZN(n81) );
  MUX2ND0 U260 ( .I0(n82), .I1(n81), .S(n17), .ZN(n97) );
  MUX2ND0 U261 ( .I0(x[2]), .I1(x[1]), .S(shift[0]), .ZN(n78) );
  MUX2ND0 U262 ( .I0(x[4]), .I1(x[3]), .S(shift[0]), .ZN(n83) );
  MUX2ND0 U263 ( .I0(n78), .I1(n83), .S(n17), .ZN(n95) );
  MUX2ND0 U264 ( .I0(n97), .I1(n95), .S(shift[2]), .ZN(n128) );
  MUX2ND0 U265 ( .I0(n34), .I1(n65), .S(shift[4]), .ZN(out0[1]) );
  MUX2ND0 U266 ( .I0(n66), .I1(n193), .S(n17), .ZN(n211) );
  MUX2ND0 U267 ( .I0(n68), .I1(n67), .S(n17), .ZN(n105) );
  MUX2ND0 U268 ( .I0(n211), .I1(n105), .S(shift[2]), .ZN(n185) );
  MUX2ND0 U269 ( .I0(n69), .I1(n78), .S(n17), .ZN(n101) );
  MUX2ND0 U270 ( .I0(n192), .I1(n210), .S(n17), .ZN(n100) );
  MUX2ND0 U271 ( .I0(n101), .I1(n100), .S(shift[2]), .ZN(n134) );
  MUX2ND0 U272 ( .I0(n185), .I1(n134), .S(n22), .ZN(n188) );
  MUX2ND0 U273 ( .I0(n72), .I1(n71), .S(n17), .ZN(n104) );
  MUX2ND0 U274 ( .I0(n74), .I1(n73), .S(n17), .ZN(n102) );
  MUX2ND0 U275 ( .I0(n104), .I1(n102), .S(shift[2]), .ZN(n135) );
  MUX2ND0 U276 ( .I0(n38), .I1(n75), .S(shift[4]), .ZN(out0[2]) );
  MUX2ND0 U277 ( .I0(n186), .I1(n202), .S(n17), .ZN(n107) );
  MUX2ND0 U278 ( .I0(n77), .I1(n76), .S(n17), .ZN(n187) );
  MUX2ND0 U279 ( .I0(n107), .I1(n187), .S(shift[2]), .ZN(n139) );
  MUX2ND0 U280 ( .I0(n201), .I1(n218), .S(n17), .ZN(n108) );
  MUX2ND0 U281 ( .I0(n88), .I1(n108), .S(shift[2]), .ZN(n142) );
  MUX2ND0 U282 ( .I0(n139), .I1(n142), .S(n22), .ZN(n197) );
  MUX2ND0 U284 ( .I0(n81), .I1(n80), .S(n17), .ZN(n114) );
  MUX2ND0 U285 ( .I0(n83), .I1(n82), .S(n17), .ZN(n110) );
  MUX2ND0 U286 ( .I0(n114), .I1(n110), .S(shift[2]), .ZN(n143) );
  MUX2ND0 U287 ( .I0(n84), .I1(n42), .S(n22), .ZN(n85) );
  MUX2ND0 U288 ( .I0(n33), .I1(n85), .S(shift[4]), .ZN(out0[3]) );
  MUX2ND0 U289 ( .I0(n86), .I1(n194), .S(n18), .ZN(n147) );
  MUX2ND0 U290 ( .I0(n95), .I1(n87), .S(n18), .ZN(n150) );
  MUX2ND0 U291 ( .I0(n147), .I1(n150), .S(n22), .ZN(n206) );
  MUX2ND0 U292 ( .I0(n90), .I1(n89), .S(n18), .ZN(n151) );
  MUX2ND0 U293 ( .I0(n91), .I1(n32), .S(n22), .ZN(n92) );
  MUX2ND0 U294 ( .I0(n30), .I1(n92), .S(shift[4]), .ZN(out0[4]) );
  MUX2ND0 U295 ( .I0(n93), .I1(n203), .S(shift[2]), .ZN(n155) );
  MUX2ND0 U296 ( .I0(n102), .I1(n94), .S(shift[2]), .ZN(n158) );
  MUX2ND0 U297 ( .I0(n155), .I1(n158), .S(n22), .ZN(n214) );
  MUX2ND0 U298 ( .I0(n98), .I1(n97), .S(shift[2]), .ZN(n159) );
  MUX2ND0 U299 ( .I0(n35), .I1(n99), .S(shift[4]), .ZN(out0[5]) );
  MUX2ND0 U300 ( .I0(n100), .I1(n211), .S(shift[2]), .ZN(n163) );
  MUX2ND0 U301 ( .I0(n110), .I1(n101), .S(shift[2]), .ZN(n166) );
  MUX2ND0 U303 ( .I0(n105), .I1(n104), .S(shift[2]), .ZN(n167) );
  MUX2ND0 U305 ( .I0(n108), .I1(n107), .S(shift[2]), .ZN(n173) );
  MUX2ND0 U306 ( .I0(n110), .I1(n109), .S(shift[2]), .ZN(n111) );
  MUX2ND0 U307 ( .I0(n113), .I1(n112), .S(shift[4]), .ZN(n117) );
  MUX2ND0 U308 ( .I0(n187), .I1(n114), .S(shift[2]), .ZN(n171) );
  MUX2ND0 U309 ( .I0(n115), .I1(n165), .S(shift[4]), .ZN(n116) );
  MUX2ND0 U310 ( .I0(n119), .I1(n175), .S(shift[4]), .ZN(n124) );
  MUX2ND0 U311 ( .I0(n122), .I1(n172), .S(shift[4]), .ZN(n123) );
  MUX2ND0 U312 ( .I0(n126), .I1(n125), .S(shift[4]), .ZN(n131) );
  MUX2ND0 U313 ( .I0(n129), .I1(n179), .S(n25), .ZN(n130) );
  MUX2ND0 U314 ( .I0(n133), .I1(n132), .S(n25), .ZN(n138) );
  MUX2ND0 U315 ( .I0(n136), .I1(n183), .S(n25), .ZN(n137) );
  MUX2ND0 U316 ( .I0(n141), .I1(n140), .S(n25), .ZN(n146) );
  MUX2ND0 U317 ( .I0(n144), .I1(n189), .S(n25), .ZN(n145) );
  MUX2ND0 U318 ( .I0(n149), .I1(n148), .S(n25), .ZN(n154) );
  MUX2ND0 U319 ( .I0(n152), .I1(n198), .S(n25), .ZN(n153) );
  MUX2ND0 U320 ( .I0(n157), .I1(n156), .S(n25), .ZN(n162) );
  MUX2ND0 U321 ( .I0(n160), .I1(n207), .S(n25), .ZN(n161) );
  MUX2ND0 U322 ( .I0(n165), .I1(n164), .S(n25), .ZN(n170) );
  MUX2ND0 U323 ( .I0(n168), .I1(n215), .S(n25), .ZN(n169) );
  MUX2ND0 U324 ( .I0(n172), .I1(n222), .S(n25), .ZN(n177) );
  MUX2ND0 U325 ( .I0(n175), .I1(n174), .S(n25), .ZN(n176) );
  MUX2ND0 U326 ( .I0(n179), .I1(n178), .S(n25), .ZN(n180) );
  MUX2ND0 U327 ( .I0(n183), .I1(n182), .S(n25), .ZN(n184) );
  MUX2ND0 U328 ( .I0(n202), .I1(n186), .S(shift[1]), .ZN(n219) );
  MUX2ND0 U329 ( .I0(n219), .I1(n187), .S(shift[2]), .ZN(n191) );
  MUX2ND0 U330 ( .I0(n189), .I1(n188), .S(n26), .ZN(n190) );
  MUX2ND0 U332 ( .I0(n198), .I1(n197), .S(n26), .ZN(n199) );
  MUX2ND0 U334 ( .I0(n207), .I1(n206), .S(n26), .ZN(n208) );
  MUX2ND0 U336 ( .I0(n215), .I1(n214), .S(n26), .ZN(n216) );
  AO21D0 U1 ( .A1(shift[2]), .A2(n211), .B(n382), .Z(n213) );
  IAO21D0 U2 ( .A1(n56), .A2(n17), .B(shift[2]), .ZN(n382) );
  MUX2D0 U3 ( .I0(n383), .I1(n203), .S(shift[2]), .Z(n205) );
  IND2D0 U6 ( .A1(n17), .B1(n202), .ZN(n383) );
  MUX2D0 U7 ( .I0(n384), .I1(n194), .S(shift[2]), .Z(n196) );
  IND2D0 U18 ( .A1(n17), .B1(n193), .ZN(n384) );
  MUX2D0 U29 ( .I0(n386), .I1(n385), .S(shift[4]), .Z(out0[6]) );
  MUX2ND0 U30 ( .I0(n10), .I1(n167), .S(n22), .ZN(n385) );
  MUX2ND0 U31 ( .I0(n163), .I1(n166), .S(n22), .ZN(n386) );
  INR2D0 U32 ( .A1(n109), .B1(shift[2]), .ZN(n84) );
  MUX2ND0 U33 ( .I0(n79), .I1(n78), .S(n17), .ZN(n109) );
  INVD1 U34 ( .I(shift[3]), .ZN(n22) );
  INVD1 U35 ( .I(shift[1]), .ZN(n17) );
  MUX2ND0 U36 ( .I0(x[17]), .I1(x[16]), .S(shift[0]), .ZN(n193) );
endmodule


module NORMALIZE_width23_1 ( x, out0, num0 );
  input [22:0] x;
  output [22:0] out0;
  output [4:0] num0;
  wire   n6, n7, n8, n9, n10;
  wire   SYNOPSYS_UNCONNECTED__0;

  ZERO_CNT_width23_1 lod ( .x(x), .num0({n6, n7, n8, n9, n10}) );
  SHIFTER_width23_1 shifter ( .x(x), .shift(num0), .left(1'b0), .out0({
        SYNOPSYS_UNCONNECTED__0, out0[21:0]}) );
  CKBD1 U2 ( .I(n7), .Z(num0[3]) );
  CKBD1 U3 ( .I(n8), .Z(num0[2]) );
  CKBD1 U4 ( .I(n6), .Z(num0[4]) );
  CKBD1 U5 ( .I(n9), .Z(num0[1]) );
  CKBD1 U6 ( .I(n10), .Z(num0[0]) );
endmodule


module SHIFTER_width46 ( x, shift, left, out0 );
  input [45:0] x;
  input [5:0] shift;
  output [45:0] out0;
  input left;
  wire   N62, N63, N64, N65, N66, N67, N68, N69, N70, N71, N94, N95, N96, N97,
         N98, N99, N100, N101, N102, N103, N104, N105, N106, N107, N108, N109,
         N110, N111, N112, N113, N114, N115, N116, N117, n11, n13, n15, n17,
         n19, n20, n21, n22, n23, n24, n25, n29, n30, n32, n33, n34, n57, n58,
         n620, n640, n6500, n75, n76, n77, n78, n79, n83, n84, n85, n86, n92,
         n990, n1010, n1020, n1030, n1040, n1050, n1060, n1070, n1080, n1090,
         n1100, n120, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n135, n138, n140, n141, n142, n146, n149, n151, n152,
         n153, n154, n155, n158, n159, n163, n165, n166, n167, n168, n170,
         n176, n178, n179, n180, n181, n183, n186, n188, n192, n194, n195,
         n196, n199, n201, n204, n207, n209, n212, n215, n217, n220, n223,
         n225, n228, n233, n237, n238, n239, n246, n251, n256, n265, n273,
         n280, n287, n294, n301, n308, n315, n323, n331, n339, n347, n354,
         n361, n372, n377, n380, n381, n384, n385, n389, n393, n396, n397,
         n406, n415, n425, n435, n444, n453, n464, n476, n480, n481, n482,
         n483, n484, n485, n486, n487, n488, n490, n491, n492, n494, n495,
         n496, n497, n498, n500, n501, n503, n513, n514, n515, n516, n518,
         n520, n523, n524, n525, n527, n533, n534, n537, n538, n547, n548,
         n554, n558, n559, n564, n566, n567, n568, n574, n575, n578, n583,
         n586, n589, n594, n603, n611, n612, n613, n614, n615, n616, n617,
         n618, n622, n624, n643, n644, n6501, n651, n653, n654, n678, n686,
         n709, n710, n711, n712, n713, n714, n715, n718, n719, n738, n762,
         n767, n773, n779, n784, n786, n787, n788, n789, n790, n791, n795,
         n800, n806, n822, n823, n824, n825, n826, n829, n830, n831, n832,
         n833, n834, n835, n839, n840, n841, n842, n843, n844, n847, n848,
         n849, n850, n851, n852, n853, n857, n861, n865, n866, n867, n868,
         n869, n870, n871, n872, n873, n874, n875, n876, n886, n887, n890,
         n906, n909, n911, n916, n919, n920, n921, n924;

  INVD1 U5 ( .I(n33), .ZN(n30) );
  INVD1 U14 ( .I(n15), .ZN(n13) );
  INVD1 U17 ( .I(shift[2]), .ZN(n21) );
  INVD1 U19 ( .I(n34), .ZN(n32) );
  INVD1 U21 ( .I(n34), .ZN(n33) );
  CKBD1 U38 ( .I(shift[2]), .Z(n23) );
  CKBD1 U39 ( .I(shift[2]), .Z(n24) );
  CKBD1 U41 ( .I(shift[4]), .Z(n34) );
  INVD1 U42 ( .I(left), .ZN(n11) );
  OAI31D1 U109 ( .A1(n791), .A2(n25), .A3(n23), .B(n790), .ZN(n795) );
  NR2D1 U110 ( .A1(n853), .A2(n20), .ZN(n789) );
  OAI31D1 U111 ( .A1(n714), .A2(n25), .A3(n23), .B(n713), .ZN(n719) );
  NR2D1 U112 ( .A1(n844), .A2(n20), .ZN(n712) );
  OAI31D1 U114 ( .A1(n853), .A2(n25), .A3(n24), .B(n852), .ZN(n857) );
  NR2D1 U115 ( .A1(n849), .A2(n22), .ZN(n851) );
  OAI31D1 U118 ( .A1(n844), .A2(n25), .A3(n23), .B(n843), .ZN(n848) );
  NR2D1 U119 ( .A1(n840), .A2(n20), .ZN(n842) );
  NR2D1 U121 ( .A1(n835), .A2(n22), .ZN(n615) );
  OAI31D1 U122 ( .A1(n826), .A2(n25), .A3(n23), .B(n825), .ZN(n830) );
  NR2D1 U123 ( .A1(n822), .A2(n22), .ZN(n824) );
  OAI31D1 U124 ( .A1(n835), .A2(n25), .A3(n23), .B(n834), .ZN(n839) );
  NR2D1 U125 ( .A1(n831), .A2(n21), .ZN(n833) );
  NR2D1 U126 ( .A1(n826), .A2(n20), .ZN(n482) );
  MUX2D0 U167 ( .I0(n651), .I1(n6501), .S(shift[3]), .Z(n784) );
  MUX2D0 U170 ( .I0(n228), .I1(n207), .S(n25), .Z(n339) );
  MUX2D0 U175 ( .I0(n212), .I1(n192), .S(n25), .Z(n323) );
  MUX2D0 U176 ( .I0(n233), .I1(n215), .S(n25), .Z(n347) );
  MUX2D0 U177 ( .I0(n246), .I1(n223), .S(n25), .Z(n354) );
  MUX2D0 U178 ( .I0(n204), .I1(n186), .S(n25), .Z(n315) );
  MUX2D0 U179 ( .I0(n220), .I1(n199), .S(n25), .Z(n331) );
  MUX2D0 U191 ( .I0(n238), .I1(n237), .S(n25), .Z(n361) );
  OAI31D1 U196 ( .A1(n617), .A2(n25), .A3(n23), .B(n616), .ZN(n622) );
  OAI31D1 U197 ( .A1(n85), .A2(shift[1]), .A3(n13), .B(n613), .ZN(n617) );
  MUX2D0 U198 ( .I0(n654), .I1(n653), .S(n25), .Z(n865) );
  MUX2D0 U201 ( .I0(n644), .I1(n643), .S(shift[3]), .Z(n861) );
  MUX2D0 U202 ( .I0(n711), .I1(n574), .S(n25), .Z(n800) );
  MUX2D0 U203 ( .I0(n788), .I1(n583), .S(n25), .Z(n806) );
  MUX2D0 U205 ( .I0(n823), .I1(n594), .S(n25), .Z(n678) );
  MUX2D0 U206 ( .I0(n832), .I1(n603), .S(n25), .Z(n686) );
  INVD1 U209 ( .I(n611), .ZN(n84) );
  NR2D1 U210 ( .A1(n15), .A2(n85), .ZN(n480) );
  INVD1 U211 ( .I(n501), .ZN(n83) );
  OAI31D1 U248 ( .A1(n484), .A2(n25), .A3(n23), .B(n483), .ZN(n491) );
  OAI31D1 U249 ( .A1(n86), .A2(shift[1]), .A3(n13), .B(n481), .ZN(n484) );
  INVD1 U250 ( .I(x[0]), .ZN(n86) );
  INVD1 U256 ( .I(x[1]), .ZN(n85) );
  AO22D0 U319 ( .A1(N71), .A2(left), .B1(N117), .B2(n11), .Z(out0[23]) );
  AO22D0 U322 ( .A1(N70), .A2(left), .B1(N116), .B2(n11), .Z(out0[22]) );
  AO22D0 U325 ( .A1(N63), .A2(left), .B1(N109), .B2(n11), .Z(out0[15]) );
  AO22D0 U328 ( .A1(N62), .A2(left), .B1(N108), .B2(n11), .Z(out0[14]) );
  AO22D0 U331 ( .A1(N67), .A2(left), .B1(N113), .B2(n11), .Z(out0[19]) );
  AO22D0 U334 ( .A1(N68), .A2(left), .B1(N114), .B2(n11), .Z(out0[20]) );
  AO22D0 U337 ( .A1(N65), .A2(left), .B1(N111), .B2(n11), .Z(out0[17]) );
  AO22D0 U340 ( .A1(N64), .A2(left), .B1(N110), .B2(n11), .Z(out0[16]) );
  AO22D0 U343 ( .A1(N66), .A2(left), .B1(N112), .B2(n11), .Z(out0[18]) );
  AO22D0 U346 ( .A1(N69), .A2(left), .B1(N115), .B2(n11), .Z(out0[21]) );
  AO22D0 U384 ( .A1(n415), .A2(left), .B1(N101), .B2(n11), .Z(out0[7]) );
  AO22D0 U386 ( .A1(N97), .A2(n11), .B1(n389), .B2(left), .Z(out0[3]) );
  AO22D0 U389 ( .A1(n453), .A2(left), .B1(N105), .B2(n11), .Z(out0[11]) );
  AO22D0 U391 ( .A1(N95), .A2(n11), .B1(n381), .B2(left), .Z(out0[1]) );
  AO22D0 U393 ( .A1(N98), .A2(n11), .B1(n393), .B2(left), .Z(out0[4]) );
  AO22D0 U395 ( .A1(N99), .A2(n11), .B1(n397), .B2(left), .Z(out0[5]) );
  AO22D0 U397 ( .A1(N96), .A2(n11), .B1(n385), .B2(left), .Z(out0[2]) );
  AO22D0 U399 ( .A1(left), .A2(n435), .B1(N103), .B2(n11), .Z(out0[9]) );
  AO22D0 U401 ( .A1(n406), .A2(left), .B1(N100), .B2(n11), .Z(out0[6]) );
  AO22D0 U403 ( .A1(n464), .A2(left), .B1(N106), .B2(n11), .Z(out0[12]) );
  AO22D0 U405 ( .A1(n476), .A2(left), .B1(N107), .B2(n11), .Z(out0[13]) );
  AO22D0 U407 ( .A1(n425), .A2(left), .B1(N102), .B2(n11), .Z(out0[8]) );
  AO22D0 U409 ( .A1(n444), .A2(left), .B1(N104), .B2(n11), .Z(out0[10]) );
  AO22D0 U411 ( .A1(N94), .A2(n11), .B1(n377), .B2(left), .Z(out0[0]) );
  AN2XD1 U486 ( .A1(x[2]), .A2(shift[0]), .Z(n612) );
  MUX2ND0 U509 ( .I0(x[22]), .I1(x[21]), .S(shift[0]), .ZN(n990) );
  MUX2ND0 U510 ( .I0(x[20]), .I1(x[19]), .S(shift[0]), .ZN(n1020) );
  MUX2ND0 U511 ( .I0(n990), .I1(n1020), .S(n17), .ZN(n138) );
  MUX2ND0 U512 ( .I0(x[18]), .I1(x[17]), .S(shift[0]), .ZN(n1010) );
  MUX2ND0 U513 ( .I0(x[16]), .I1(x[15]), .S(shift[0]), .ZN(n1040) );
  MUX2ND0 U514 ( .I0(n1010), .I1(n1040), .S(n17), .ZN(n141) );
  MUX2ND0 U517 ( .I0(x[14]), .I1(x[13]), .S(shift[0]), .ZN(n1030) );
  MUX2ND0 U518 ( .I0(x[12]), .I1(x[11]), .S(shift[0]), .ZN(n1060) );
  MUX2ND0 U519 ( .I0(n1030), .I1(n1060), .S(n17), .ZN(n140) );
  MUX2ND0 U520 ( .I0(x[10]), .I1(x[9]), .S(shift[0]), .ZN(n1050) );
  MUX2ND0 U521 ( .I0(x[8]), .I1(x[7]), .S(n13), .ZN(n1080) );
  MUX2ND0 U522 ( .I0(n1050), .I1(n1080), .S(n17), .ZN(n142) );
  MUX2ND0 U523 ( .I0(n140), .I1(n142), .S(n24), .ZN(n238) );
  MUX2ND0 U524 ( .I0(x[6]), .I1(x[5]), .S(shift[0]), .ZN(n1070) );
  MUX2ND0 U525 ( .I0(x[4]), .I1(x[3]), .S(shift[0]), .ZN(n1100) );
  MUX2ND0 U526 ( .I0(n1070), .I1(n1100), .S(n17), .ZN(n159) );
  MUX2ND0 U527 ( .I0(x[2]), .I1(x[1]), .S(shift[0]), .ZN(n1090) );
  MUX2ND0 U532 ( .I0(x[1]), .I1(x[0]), .S(shift[0]), .ZN(n132) );
  MUX2ND0 U554 ( .I0(x[21]), .I1(x[20]), .S(n13), .ZN(n123) );
  MUX2ND0 U555 ( .I0(n120), .I1(n123), .S(shift[1]), .ZN(n149) );
  MUX2ND0 U556 ( .I0(x[19]), .I1(x[18]), .S(n13), .ZN(n122) );
  MUX2ND0 U557 ( .I0(x[17]), .I1(x[16]), .S(n13), .ZN(n125) );
  MUX2ND0 U558 ( .I0(n122), .I1(n125), .S(shift[1]), .ZN(n152) );
  MUX2ND0 U560 ( .I0(n265), .I1(n372), .S(n34), .ZN(n381) );
  MUX2ND0 U561 ( .I0(x[15]), .I1(x[14]), .S(n13), .ZN(n124) );
  MUX2ND0 U562 ( .I0(x[13]), .I1(x[12]), .S(n13), .ZN(n127) );
  MUX2ND0 U563 ( .I0(n124), .I1(n127), .S(shift[1]), .ZN(n151) );
  MUX2ND0 U564 ( .I0(x[11]), .I1(x[10]), .S(n13), .ZN(n126) );
  MUX2ND0 U565 ( .I0(x[9]), .I1(x[8]), .S(n13), .ZN(n129) );
  MUX2ND0 U566 ( .I0(n126), .I1(n129), .S(shift[1]), .ZN(n154) );
  MUX2ND0 U567 ( .I0(n151), .I1(n154), .S(shift[2]), .ZN(n194) );
  MUX2ND0 U568 ( .I0(x[7]), .I1(x[6]), .S(n13), .ZN(n128) );
  MUX2ND0 U569 ( .I0(x[5]), .I1(x[4]), .S(n13), .ZN(n131) );
  MUX2ND0 U570 ( .I0(n128), .I1(n131), .S(shift[1]), .ZN(n153) );
  MUX2ND0 U571 ( .I0(x[3]), .I1(x[2]), .S(shift[0]), .ZN(n130) );
  MUX2ND0 U572 ( .I0(n130), .I1(n132), .S(shift[1]), .ZN(n155) );
  MUX2ND0 U576 ( .I0(n1090), .I1(n92), .S(shift[1]), .ZN(n158) );
  MUX2ND0 U586 ( .I0(n1020), .I1(n1010), .S(n17), .ZN(n166) );
  MUX2ND0 U588 ( .I0(n273), .I1(n380), .S(shift[4]), .ZN(n385) );
  MUX2ND0 U589 ( .I0(n1040), .I1(n1030), .S(n17), .ZN(n165) );
  MUX2ND0 U590 ( .I0(n1060), .I1(n1050), .S(shift[1]), .ZN(n168) );
  MUX2ND0 U591 ( .I0(n165), .I1(n168), .S(shift[2]), .ZN(n201) );
  MUX2ND0 U592 ( .I0(n1080), .I1(n1070), .S(shift[1]), .ZN(n167) );
  MUX2ND0 U593 ( .I0(n1100), .I1(n1090), .S(n17), .ZN(n170) );
  MUX2ND0 U594 ( .I0(n167), .I1(n170), .S(shift[2]), .ZN(n204) );
  MUX2ND0 U607 ( .I0(n123), .I1(n122), .S(shift[1]), .ZN(n179) );
  MUX2ND0 U609 ( .I0(n280), .I1(n384), .S(shift[4]), .ZN(n389) );
  MUX2ND0 U610 ( .I0(n125), .I1(n124), .S(shift[1]), .ZN(n178) );
  MUX2ND0 U611 ( .I0(n127), .I1(n126), .S(n17), .ZN(n181) );
  MUX2ND0 U612 ( .I0(n178), .I1(n181), .S(shift[2]), .ZN(n209) );
  MUX2ND0 U613 ( .I0(n129), .I1(n128), .S(n17), .ZN(n180) );
  MUX2ND0 U614 ( .I0(n131), .I1(n130), .S(n17), .ZN(n183) );
  MUX2ND0 U615 ( .I0(n180), .I1(n183), .S(n24), .ZN(n212) );
  MUX2ND0 U624 ( .I0(n141), .I1(n140), .S(n24), .ZN(n217) );
  MUX2ND0 U625 ( .I0(n142), .I1(n159), .S(n24), .ZN(n220) );
  MUX2ND0 U634 ( .I0(n152), .I1(n151), .S(n24), .ZN(n225) );
  MUX2ND0 U635 ( .I0(n154), .I1(n153), .S(n24), .ZN(n228) );
  MUX2ND0 U643 ( .I0(n301), .I1(n396), .S(n34), .ZN(n406) );
  MUX2ND0 U644 ( .I0(n166), .I1(n165), .S(n24), .ZN(n239) );
  MUX2ND0 U645 ( .I0(n168), .I1(n167), .S(n24), .ZN(n233) );
  MUX2ND0 U654 ( .I0(n179), .I1(n178), .S(n24), .ZN(n251) );
  MUX2ND0 U655 ( .I0(n181), .I1(n180), .S(n24), .ZN(n246) );
  MUX2ND0 U750 ( .I0(x[3]), .I1(x[2]), .S(n15), .ZN(n501) );
  MUX2ND0 U751 ( .I0(n83), .I1(n480), .S(n19), .ZN(n481) );
  MUX2ND0 U752 ( .I0(x[5]), .I1(x[4]), .S(n15), .ZN(n503) );
  MUX2ND0 U753 ( .I0(x[7]), .I1(x[6]), .S(n15), .ZN(n710) );
  MUX2ND0 U754 ( .I0(n503), .I1(n710), .S(n17), .ZN(n826) );
  MUX2ND0 U755 ( .I0(x[15]), .I1(x[14]), .S(n15), .ZN(n485) );
  MUX2ND0 U756 ( .I0(x[13]), .I1(x[12]), .S(n15), .ZN(n487) );
  MUX2ND0 U757 ( .I0(n485), .I1(n487), .S(n19), .ZN(n496) );
  MUX2ND0 U758 ( .I0(x[11]), .I1(x[10]), .S(n15), .ZN(n486) );
  MUX2ND0 U759 ( .I0(x[9]), .I1(x[8]), .S(n15), .ZN(n709) );
  MUX2ND0 U760 ( .I0(n486), .I1(n709), .S(n19), .ZN(n822) );
  MUX2ND0 U761 ( .I0(n496), .I1(n822), .S(n21), .ZN(n644) );
  MUX2ND0 U762 ( .I0(n482), .I1(n644), .S(n25), .ZN(n483) );
  MUX2ND0 U764 ( .I0(n503), .I1(n501), .S(n19), .ZN(n714) );
  MUX2ND0 U766 ( .I0(x[17]), .I1(x[16]), .S(n15), .ZN(n488) );
  MUX2ND0 U767 ( .I0(n488), .I1(n485), .S(n19), .ZN(n523) );
  MUX2ND0 U768 ( .I0(n487), .I1(n486), .S(n19), .ZN(n840) );
  MUX2ND0 U769 ( .I0(n523), .I1(n840), .S(n22), .ZN(n711) );
  MUX2ND0 U777 ( .I0(x[1]), .I1(x[0]), .S(n15), .ZN(n500) );
  MUX2ND0 U786 ( .I0(x[21]), .I1(x[20]), .S(n15), .ZN(n495) );
  MUX2ND0 U787 ( .I0(n492), .I1(n495), .S(n19), .ZN(n498) );
  MUX2ND0 U788 ( .I0(x[19]), .I1(x[18]), .S(n15), .ZN(n494) );
  MUX2ND0 U789 ( .I0(n494), .I1(n488), .S(n19), .ZN(n497) );
  MUX2ND0 U800 ( .I0(n495), .I1(n494), .S(n19), .ZN(n524) );
  MUX2ND0 U801 ( .I0(n525), .I1(n524), .S(n22), .ZN(n574) );
  MUX2ND0 U802 ( .I0(n497), .I1(n496), .S(n20), .ZN(n823) );
  MUX2ND0 U804 ( .I0(n501), .I1(n500), .S(n19), .ZN(n547) );
  MUX2ND0 U807 ( .I0(n710), .I1(n503), .S(n19), .ZN(n548) );
  MUX2ND0 U818 ( .I0(x[18]), .I1(x[17]), .S(n15), .ZN(n513) );
  MUX2ND0 U819 ( .I0(x[16]), .I1(x[15]), .S(n15), .ZN(n516) );
  MUX2ND0 U820 ( .I0(n513), .I1(n516), .S(n19), .ZN(n533) );
  MUX2ND0 U821 ( .I0(x[14]), .I1(x[13]), .S(n15), .ZN(n515) );
  MUX2ND0 U822 ( .I0(x[12]), .I1(x[11]), .S(n15), .ZN(n520) );
  MUX2ND0 U823 ( .I0(n515), .I1(n520), .S(n19), .ZN(n849) );
  MUX2ND0 U824 ( .I0(n533), .I1(n849), .S(n20), .ZN(n788) );
  MUX2ND0 U828 ( .I0(x[22]), .I1(x[21]), .S(n15), .ZN(n518) );
  MUX2ND0 U829 ( .I0(x[20]), .I1(x[19]), .S(n15), .ZN(n514) );
  MUX2ND0 U830 ( .I0(n518), .I1(n514), .S(n19), .ZN(n534) );
  MUX2ND0 U832 ( .I0(n514), .I1(n513), .S(n19), .ZN(n558) );
  MUX2ND0 U833 ( .I0(n516), .I1(n515), .S(n19), .ZN(n568) );
  MUX2ND0 U834 ( .I0(n558), .I1(n568), .S(n20), .ZN(n832) );
  MUX2ND0 U839 ( .I0(x[4]), .I1(x[3]), .S(n15), .ZN(n611) );
  MUX2ND0 U840 ( .I0(x[2]), .I1(x[1]), .S(n15), .ZN(n538) );
  MUX2ND0 U841 ( .I0(n611), .I1(n538), .S(n19), .ZN(n566) );
  MUX2ND0 U846 ( .I0(x[10]), .I1(x[9]), .S(n15), .ZN(n786) );
  MUX2ND0 U847 ( .I0(n520), .I1(n786), .S(n19), .ZN(n831) );
  MUX2ND0 U848 ( .I0(x[8]), .I1(x[7]), .S(n15), .ZN(n787) );
  MUX2ND0 U849 ( .I0(x[6]), .I1(x[5]), .S(n15), .ZN(n614) );
  MUX2ND0 U850 ( .I0(n787), .I1(n614), .S(n19), .ZN(n567) );
  MUX2ND0 U868 ( .I0(n524), .I1(n523), .S(n20), .ZN(n841) );
  MUX2ND0 U879 ( .I0(n614), .I1(n611), .S(n19), .ZN(n791) );
  MUX2ND0 U880 ( .I0(n538), .I1(n537), .S(n19), .ZN(n586) );
  MUX2ND0 U904 ( .I0(n567), .I1(n566), .S(n22), .ZN(n6501) );
  MUX2ND0 U905 ( .I0(n568), .I1(n831), .S(n22), .ZN(n654) );
  MUX2ND0 U922 ( .I0(n84), .I1(n612), .S(n19), .ZN(n613) );
  MUX2ND0 U923 ( .I0(n614), .I1(n787), .S(shift[1]), .ZN(n835) );
  MUX2ND0 U924 ( .I0(n615), .I1(n654), .S(n25), .ZN(n616) );
  MUX2ND0 U954 ( .I0(n710), .I1(n709), .S(n17), .ZN(n844) );
  MUX2ND0 U955 ( .I0(n712), .I1(n711), .S(n25), .ZN(n713) );
  MUX2ND0 U981 ( .I0(n787), .I1(n786), .S(shift[1]), .ZN(n853) );
  MUX2ND0 U982 ( .I0(n789), .I1(n788), .S(n25), .ZN(n790) );
  MUX2ND0 U994 ( .I0(n824), .I1(n823), .S(n25), .ZN(n825) );
  MUX2ND0 U996 ( .I0(n833), .I1(n832), .S(n25), .ZN(n834) );
  MUX2ND0 U998 ( .I0(n842), .I1(n841), .S(n25), .ZN(n843) );
  MUX2ND0 U1000 ( .I0(n851), .I1(n850), .S(n25), .ZN(n852) );
  BUFFD2 U40 ( .I(shift[3]), .Z(n25) );
  OAI21D0 U1 ( .A1(shift[4]), .A2(n287), .B(n866), .ZN(n393) );
  ND4D0 U2 ( .A1(n138), .A2(n25), .A3(n24), .A4(shift[4]), .ZN(n866) );
  OR2D0 U3 ( .A1(n25), .A2(n215), .Z(n287) );
  OAI21D0 U4 ( .A1(shift[4]), .A2(n294), .B(n867), .ZN(n397) );
  ND4D0 U6 ( .A1(n149), .A2(n25), .A3(n24), .A4(shift[4]), .ZN(n867) );
  OR2D0 U7 ( .A1(n25), .A2(n223), .Z(n294) );
  OAI22D0 U8 ( .A1(shift[4]), .A2(n256), .B1(n188), .B2(n868), .ZN(n377) );
  CKND2D0 U9 ( .A1(n25), .A2(shift[4]), .ZN(n868) );
  OR2D0 U10 ( .A1(n25), .A2(n186), .Z(n256) );
  OAI21D0 U11 ( .A1(shift[4]), .A2(n308), .B(n869), .ZN(n415) );
  ND4D0 U12 ( .A1(n176), .A2(n25), .A3(n24), .A4(shift[4]), .ZN(n869) );
  OR2D0 U13 ( .A1(n25), .A2(n196), .Z(n308) );
  OAI21D0 U15 ( .A1(n738), .A2(n33), .B(n870), .ZN(N109) );
  OR3D0 U16 ( .A1(n850), .A2(n25), .A3(n29), .Z(n870) );
  OAI21D0 U18 ( .A1(n265), .A2(n33), .B(n871), .ZN(N65) );
  CKND2D0 U20 ( .A1(n33), .A2(n874), .ZN(n871) );
  OAI22D0 U22 ( .A1(shift[4]), .A2(n872), .B1(n294), .B2(n32), .ZN(N69) );
  CKND0 U23 ( .I(n876), .ZN(n872) );
  MOAI22D0 U24 ( .A1(n273), .A2(n32), .B1(n873), .B2(n33), .ZN(N66) );
  MOAI22D0 U25 ( .A1(n280), .A2(n32), .B1(n875), .B2(n33), .ZN(N67) );
  OAI22D0 U26 ( .A1(n29), .A2(n58), .B1(n256), .B2(n33), .ZN(N64) );
  OAI22D0 U27 ( .A1(n29), .A2(n620), .B1(n287), .B2(n33), .ZN(N68) );
  OAI22D0 U28 ( .A1(n30), .A2(n589), .B1(n618), .B2(n33), .ZN(N111) );
  OAI22D0 U29 ( .A1(n30), .A2(n75), .B1(n715), .B2(n32), .ZN(N112) );
  OAI22D0 U30 ( .A1(n29), .A2(n578), .B1(n575), .B2(n32), .ZN(N110) );
  OAI22D0 U31 ( .A1(n30), .A2(n78), .B1(n773), .B2(n33), .ZN(N115) );
  OAI22D0 U32 ( .A1(n30), .A2(n76), .B1(n762), .B2(n33), .ZN(N113) );
  OAI22D0 U33 ( .A1(n30), .A2(n77), .B1(n767), .B2(n32), .ZN(N114) );
  CKND0 U34 ( .I(n33), .ZN(n29) );
  MUX2ND0 U35 ( .I0(n217), .I1(n220), .S(shift[3]), .ZN(n873) );
  MUX2ND0 U36 ( .I0(n209), .I1(n212), .S(shift[3]), .ZN(n874) );
  MUX2ND0 U37 ( .I0(n225), .I1(n228), .S(n25), .ZN(n875) );
  MUX2ND0 U43 ( .I0(n251), .I1(n246), .S(n25), .ZN(n876) );
  OR2D0 U44 ( .A1(n25), .A2(n643), .Z(n578) );
  MUX2ND0 U45 ( .I0(n498), .I1(n497), .S(n22), .ZN(n643) );
  MUX2ND0 U46 ( .I0(n170), .I1(n135), .S(n24), .ZN(n215) );
  MUX2ND0 U47 ( .I0(n183), .I1(n146), .S(n24), .ZN(n223) );
  OR2D0 U48 ( .A1(n25), .A2(n653), .Z(n589) );
  MUX2ND0 U49 ( .I0(n559), .I1(n558), .S(n21), .ZN(n653) );
  MUX2D0 U50 ( .I0(n194), .I1(n196), .S(shift[3]), .Z(n57) );
  MUX2ND0 U51 ( .I0(n534), .I1(n533), .S(n21), .ZN(n850) );
  OR2D0 U52 ( .A1(n25), .A2(n207), .Z(n280) );
  CKND2D0 U53 ( .A1(n919), .A2(n155), .ZN(n207) );
  OR2D0 U54 ( .A1(n25), .A2(n199), .Z(n273) );
  CKND2D0 U55 ( .A1(n921), .A2(n158), .ZN(n199) );
  CKND2D0 U56 ( .A1(n924), .A2(n135), .ZN(n186) );
  OR2D0 U57 ( .A1(n25), .A2(n192), .Z(n265) );
  CKND2D0 U58 ( .A1(n920), .A2(n146), .ZN(n192) );
  OR2D0 U59 ( .A1(n25), .A2(n574), .Z(n75) );
  OR2D0 U60 ( .A1(n25), .A2(n603), .Z(n78) );
  OR2D0 U61 ( .A1(n25), .A2(n583), .Z(n76) );
  OR2D0 U62 ( .A1(n25), .A2(n594), .Z(n77) );
  MUX2D0 U63 ( .I0(n239), .I1(n233), .S(shift[3]), .Z(n620) );
  MUX2D0 U64 ( .I0(n201), .I1(n204), .S(shift[3]), .Z(n58) );
  OAI22D0 U65 ( .A1(n34), .A2(n640), .B1(n301), .B2(n33), .ZN(N70) );
  OAI22D0 U66 ( .A1(n34), .A2(n6500), .B1(n308), .B2(n33), .ZN(N71) );
  OAI22D0 U67 ( .A1(n30), .A2(n79), .B1(n779), .B2(n32), .ZN(N116) );
  OR2D0 U68 ( .A1(n25), .A2(n237), .Z(n301) );
  MUX2ND0 U69 ( .I0(n159), .I1(n158), .S(n24), .ZN(n237) );
  MUX2ND0 U70 ( .I0(n153), .I1(n155), .S(n24), .ZN(n196) );
  OR2D0 U71 ( .A1(n25), .A2(n624), .Z(n79) );
  MUX2D0 U72 ( .I0(n195), .I1(n194), .S(shift[3]), .Z(n6500) );
  MUX2D0 U73 ( .I0(n188), .I1(n238), .S(n25), .Z(n640) );
  CKND2D1 U74 ( .A1(shift[0]), .A2(x[0]), .ZN(n537) );
  INVD1 U75 ( .I(shift[1]), .ZN(n19) );
  INVD1 U76 ( .I(shift[0]), .ZN(n15) );
  OAI21D0 U77 ( .A1(n491), .A2(n29), .B(n490), .ZN(N94) );
  OAI21D0 U78 ( .A1(n719), .A2(n29), .B(n718), .ZN(N96) );
  OAI21D0 U79 ( .A1(n830), .A2(n29), .B(n829), .ZN(N98) );
  OAI21D0 U80 ( .A1(n848), .A2(n29), .B(n847), .ZN(N100) );
  NR2D0 U81 ( .A1(n865), .A2(n29), .ZN(N103) );
  NR2D0 U82 ( .A1(n800), .A2(n29), .ZN(N104) );
  NR2D0 U83 ( .A1(n861), .A2(n29), .ZN(N102) );
  NR2D0 U84 ( .A1(n686), .A2(n29), .ZN(N107) );
  NR2D0 U85 ( .A1(n678), .A2(n29), .ZN(N106) );
  NR2D0 U86 ( .A1(n806), .A2(n29), .ZN(N105) );
  NR2D0 U87 ( .A1(n857), .A2(n29), .ZN(N101) );
  OAI22D0 U88 ( .A1(n622), .A2(n29), .B1(n33), .B2(n589), .ZN(N95) );
  OAI22D0 U89 ( .A1(n839), .A2(n29), .B1(n33), .B2(n78), .ZN(N99) );
  OAI22D0 U90 ( .A1(n795), .A2(n29), .B1(n33), .B2(n76), .ZN(N97) );
  AN2D0 U91 ( .A1(n32), .A2(n554), .Z(N108) );
  NR2D0 U92 ( .A1(n361), .A2(n29), .ZN(N62) );
  NR2D0 U93 ( .A1(n57), .A2(n29), .ZN(N63) );
  OR2D0 U94 ( .A1(n33), .A2(n578), .Z(n490) );
  OR2D0 U95 ( .A1(n33), .A2(n79), .Z(n847) );
  OR2D0 U96 ( .A1(n33), .A2(n75), .Z(n718) );
  OR2D0 U97 ( .A1(n32), .A2(n77), .Z(n829) );
  NR2D0 U98 ( .A1(shift[4]), .A2(n347), .ZN(n464) );
  NR2D0 U99 ( .A1(n34), .A2(n315), .ZN(n425) );
  NR2D0 U100 ( .A1(n34), .A2(n354), .ZN(n476) );
  NR2D0 U101 ( .A1(n34), .A2(n331), .ZN(n444) );
  NR2D0 U102 ( .A1(n29), .A2(n323), .ZN(n435) );
  NR2D0 U103 ( .A1(n29), .A2(n339), .ZN(n453) );
  MUX2ND0 U104 ( .I0(n841), .I1(n624), .S(n25), .ZN(n554) );
  CKND2D0 U105 ( .A1(n909), .A2(n25), .ZN(n384) );
  CKND2D0 U106 ( .A1(n906), .A2(n25), .ZN(n380) );
  CKND2D0 U107 ( .A1(n911), .A2(n25), .ZN(n762) );
  CKND2D0 U108 ( .A1(n886), .A2(n25), .ZN(n773) );
  CKND2D0 U113 ( .A1(n890), .A2(n25), .ZN(n767) );
  IND2D0 U116 ( .A1(n195), .B1(n25), .ZN(n372) );
  IND2D0 U117 ( .A1(n651), .B1(n25), .ZN(n738) );
  ND3D0 U120 ( .A1(n586), .A2(n23), .A3(n25), .ZN(n618) );
  ND3D0 U127 ( .A1(n547), .A2(n23), .A3(n25), .ZN(n715) );
  ND3D0 U128 ( .A1(n163), .A2(n24), .A3(n25), .ZN(n396) );
  ND3D0 U129 ( .A1(n527), .A2(n23), .A3(n25), .ZN(n575) );
  MUX2ND0 U130 ( .I0(n138), .I1(n141), .S(n23), .ZN(n188) );
  MUX2ND0 U131 ( .I0(n149), .I1(n152), .S(n24), .ZN(n195) );
  CKND2D0 U132 ( .A1(n564), .A2(n23), .ZN(n651) );
  MUX2D0 U133 ( .I0(n176), .I1(n179), .S(shift[2]), .Z(n909) );
  MUX2D0 U134 ( .I0(n163), .I1(n166), .S(shift[2]), .Z(n906) );
  MUX2D0 U135 ( .I0(n791), .I1(n586), .S(n21), .Z(n886) );
  MUX2D0 U136 ( .I0(n566), .I1(n564), .S(n20), .Z(n911) );
  MUX2D0 U137 ( .I0(n714), .I1(n527), .S(n21), .Z(n890) );
  CKND2D0 U138 ( .A1(n498), .A2(n20), .ZN(n594) );
  CKND2D0 U139 ( .A1(n534), .A2(n20), .ZN(n583) );
  CKND2D0 U140 ( .A1(n559), .A2(n20), .ZN(n603) );
  CKND0 U141 ( .I(n23), .ZN(n20) );
  INVD0 U142 ( .I(shift[2]), .ZN(n919) );
  INVD0 U143 ( .I(shift[2]), .ZN(n920) );
  INVD0 U144 ( .I(shift[2]), .ZN(n924) );
  CKND0 U145 ( .I(shift[2]), .ZN(n921) );
  CKND0 U146 ( .I(n23), .ZN(n22) );
  NR2D0 U147 ( .A1(n518), .A2(shift[1]), .ZN(n559) );
  NR2D0 U148 ( .A1(n17), .A2(n132), .ZN(n146) );
  NR2D0 U149 ( .A1(n19), .A2(n500), .ZN(n527) );
  NR2D0 U150 ( .A1(n990), .A2(n19), .ZN(n163) );
  NR2D0 U151 ( .A1(n17), .A2(n92), .ZN(n135) );
  NR2D0 U152 ( .A1(n120), .A2(n916), .ZN(n176) );
  NR2D0 U153 ( .A1(n32), .A2(n784), .ZN(N117) );
  CKND0 U154 ( .I(n19), .ZN(n17) );
  CKND0 U155 ( .I(shift[1]), .ZN(n916) );
  CKND2D0 U156 ( .A1(n887), .A2(shift[3]), .ZN(n779) );
  MUX2D0 U157 ( .I0(n548), .I1(n547), .S(n21), .Z(n887) );
  NR2D0 U158 ( .A1(n19), .A2(n537), .ZN(n564) );
  CKND2D0 U159 ( .A1(n525), .A2(n20), .ZN(n624) );
  NR2D0 U160 ( .A1(n492), .A2(shift[1]), .ZN(n525) );
  CKND2D0 U161 ( .A1(x[22]), .A2(shift[0]), .ZN(n120) );
  CKND2D0 U162 ( .A1(x[22]), .A2(n15), .ZN(n492) );
  IND2D0 U163 ( .A1(shift[0]), .B1(x[0]), .ZN(n92) );
endmodule


module top_width23_DW_cmp_2 ( A, B, TC, GE_LT, GE_GT_EQ, GE_LT_GT_LE, EQ_NE );
  input [21:0] A;
  input [21:0] B;
  input TC, GE_LT, GE_GT_EQ;
  output GE_LT_GT_LE, EQ_NE;
  wire   n866, n867, n868, n869, n870, n871, n872, n873, n874, n875, n876,
         n877, n878, n879, n880, n881, n882, n883, n884, n885, n886, n887,
         n888, n889, n890, n891, n892, n893, n894, n895, n896, n897, n898,
         n899, n900, n901, n902, n903, n904, n905, n906, n907, n908, n909,
         n910, n911, n912, n913, n914, n915, n916, n917, n918, n919, n920,
         n921, n922, n923, n924, n925, n926, n927, n928, n929;

  OAI32D1 U434 ( .A1(n889), .A2(n890), .A3(n891), .B1(n892), .B2(n893), .ZN(
        GE_LT_GT_LE) );
  INVD1 U435 ( .I(n909), .ZN(n871) );
  INVD1 U436 ( .I(B[3]), .ZN(n872) );
  INVD1 U437 ( .I(n914), .ZN(n870) );
  INVD1 U438 ( .I(B[2]), .ZN(n875) );
  INVD1 U439 ( .I(B[15]), .ZN(n867) );
  INVD1 U440 ( .I(A[1]), .ZN(n883) );
  INVD1 U441 ( .I(B[14]), .ZN(n877) );
  INVD1 U442 ( .I(B[5]), .ZN(n874) );
  INVD1 U443 ( .I(A[11]), .ZN(n881) );
  INVD1 U444 ( .I(B[9]), .ZN(n873) );
  INVD1 U445 ( .I(B[8]), .ZN(n866) );
  INVD1 U446 ( .I(A[7]), .ZN(n882) );
  INVD1 U447 ( .I(B[4]), .ZN(n868) );
  INVD1 U448 ( .I(B[19]), .ZN(n869) );
  INVD1 U449 ( .I(B[18]), .ZN(n876) );
  INVD1 U450 ( .I(A[10]), .ZN(n887) );
  INVD1 U451 ( .I(A[12]), .ZN(n880) );
  INVD1 U452 ( .I(A[13]), .ZN(n886) );
  INVD1 U453 ( .I(A[17]), .ZN(n884) );
  INVD1 U454 ( .I(A[6]), .ZN(n888) );
  INVD1 U455 ( .I(A[20]), .ZN(n879) );
  INVD1 U456 ( .I(A[16]), .ZN(n878) );
  INVD1 U457 ( .I(A[21]), .ZN(n885) );
  AOI221D0 U458 ( .A1(B[21]), .A2(n885), .B1(B[20]), .B2(n879), .C(n894), .ZN(
        n893) );
  AOI221D0 U459 ( .A1(n895), .A2(n890), .B1(n896), .B2(n895), .C(n897), .ZN(
        n894) );
  AOI32D0 U460 ( .A1(n898), .A2(n878), .A3(B[16]), .B1(B[17]), .B2(n884), .ZN(
        n896) );
  OA32D0 U461 ( .A1(n876), .A2(A[18]), .A3(n899), .B1(A[19]), .B2(n869), .Z(
        n895) );
  OAI32D0 U462 ( .A1(n900), .A2(n901), .A3(n902), .B1(n903), .B2(n900), .ZN(
        n891) );
  NR4D0 U463 ( .A1(n904), .A2(n905), .A3(n906), .A4(n907), .ZN(n903) );
  INR2D0 U464 ( .A1(A[8]), .B1(B[8]), .ZN(n904) );
  OA211D0 U465 ( .A1(n908), .A2(n909), .B(n870), .C(n910), .Z(n902) );
  AOI221D0 U466 ( .A1(n911), .A2(n871), .B1(A[4]), .B2(n868), .C(n912), .ZN(
        n910) );
  AOI22D0 U467 ( .A1(B[1]), .A2(n883), .B1(n913), .B2(B[0]), .ZN(n911) );
  IAO21D0 U468 ( .A1(n883), .A2(B[1]), .B(A[0]), .ZN(n913) );
  OAI32D0 U469 ( .A1(n875), .A2(A[2]), .A3(n915), .B1(A[3]), .B2(n872), .ZN(
        n909) );
  AOI21D0 U470 ( .A1(A[2]), .A2(n875), .B(n915), .ZN(n908) );
  INR2D0 U471 ( .A1(A[3]), .B1(B[3]), .ZN(n915) );
  AOI32D0 U474 ( .A1(B[6]), .A2(n888), .A3(n918), .B1(n882), .B2(B[7]), .ZN(
        n917) );
  IND2D0 U475 ( .A1(B[7]), .B1(A[7]), .ZN(n918) );
  OA32D0 U476 ( .A1(n912), .A2(A[4]), .A3(n868), .B1(n874), .B2(A[5]), .Z(n916) );
  AN2D0 U477 ( .A1(A[5]), .A2(n874), .Z(n912) );
  CKND2D0 U478 ( .A1(n919), .A2(n920), .ZN(n900) );
  AO221D0 U479 ( .A1(n921), .A2(n922), .B1(n907), .B2(n921), .C(n906), .Z(n920) );
  OAI211D0 U480 ( .A1(B[12]), .A2(n880), .B(n923), .C(n924), .ZN(n906) );
  OAI21D0 U481 ( .A1(B[10]), .A2(n887), .B(n925), .ZN(n907) );
  OA32D0 U482 ( .A1(n866), .A2(A[8]), .A3(n905), .B1(A[9]), .B2(n873), .Z(n922) );
  INR2D0 U483 ( .A1(A[9]), .B1(B[9]), .ZN(n905) );
  AOI32D0 U484 ( .A1(B[10]), .A2(n887), .A3(n925), .B1(n881), .B2(B[11]), .ZN(
        n921) );
  IND2D0 U485 ( .A1(B[11]), .B1(A[11]), .ZN(n925) );
  AO32D0 U487 ( .A1(B[12]), .A2(n880), .A3(n923), .B1(n886), .B2(B[13]), .Z(
        n927) );
  IND2D0 U488 ( .A1(B[13]), .B1(A[13]), .ZN(n923) );
  OAI32D0 U489 ( .A1(n877), .A2(A[14]), .A3(n928), .B1(A[15]), .B2(n867), .ZN(
        n926) );
  AN2D0 U491 ( .A1(A[15]), .A2(n867), .Z(n928) );
  AO21D0 U492 ( .A1(n876), .A2(A[18]), .B(n899), .Z(n890) );
  INR2D0 U493 ( .A1(A[19]), .B1(B[19]), .ZN(n899) );
  IIND4D0 U494 ( .A1(n892), .A2(n897), .B1(n898), .B2(n929), .ZN(n889) );
  OR2D0 U495 ( .A1(B[16]), .A2(n878), .Z(n929) );
  OR2D0 U496 ( .A1(B[17]), .A2(n884), .Z(n898) );
  NR2D0 U497 ( .A1(n879), .A2(B[20]), .ZN(n897) );
  NR2D0 U498 ( .A1(n885), .A2(B[21]), .ZN(n892) );
  OAI21D0 U472 ( .A1(n916), .A2(n914), .B(n917), .ZN(n901) );
  OAI21D0 U473 ( .A1(B[6]), .A2(n888), .B(n918), .ZN(n914) );
  AOI21D0 U486 ( .A1(n927), .A2(n924), .B(n926), .ZN(n919) );
  AOI21D0 U490 ( .A1(A[14]), .A2(n877), .B(n928), .ZN(n924) );
endmodule


module top_width23_DW01_sub_2_DW01_sub_3 ( A, B, CI, DIFF, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] DIFF;
  input CI;
  output CO;
  wire   n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n18,
         n19, n20, n21, n22, n23;
  wire   [21:1] carry;

  FA1D0 U2_20 ( .A(A[20]), .B(n7), .CI(carry[20]), .CO(carry[21]), .S(DIFF[20]) );
  FA1D0 U2_19 ( .A(A[19]), .B(n9), .CI(carry[19]), .CO(carry[20]), .S(DIFF[19]) );
  FA1D0 U2_18 ( .A(A[18]), .B(n20), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  FA1D0 U2_17 ( .A(A[17]), .B(n14), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  FA1D0 U2_16 ( .A(A[16]), .B(n3), .CI(carry[16]), .CO(carry[17]), .S(DIFF[16]) );
  FA1D0 U2_15 ( .A(A[15]), .B(n5), .CI(carry[15]), .CO(carry[16]), .S(DIFF[15]) );
  FA1D0 U2_14 ( .A(A[14]), .B(n23), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  FA1D0 U2_12 ( .A(A[12]), .B(n8), .CI(carry[12]), .CO(carry[13]), .S(DIFF[12]) );
  FA1D0 U2_10 ( .A(A[10]), .B(n21), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  FA1D0 U2_9 ( .A(A[9]), .B(n15), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  FA1D0 U2_8 ( .A(A[8]), .B(n4), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  FA1D0 U2_6 ( .A(A[6]), .B(n22), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  FA1D0 U2_5 ( .A(A[5]), .B(n16), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  FA1D0 U2_4 ( .A(A[4]), .B(n6), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FA1D0 U2_3 ( .A(A[3]), .B(n12), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  FA1D0 U2_2 ( .A(A[2]), .B(n19), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  FA1D0 U2_1 ( .A(A[1]), .B(n13), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  FA1D0 U2_13 ( .A(A[13]), .B(n18), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  FA1D0 U2_11 ( .A(A[11]), .B(n10), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  FA1D0 U2_7 ( .A(A[7]), .B(n11), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  INVD1 U2 ( .I(B[7]), .ZN(n11) );
  INVD1 U3 ( .I(B[11]), .ZN(n10) );
  INVD1 U4 ( .I(B[13]), .ZN(n18) );
  INVD1 U6 ( .I(B[1]), .ZN(n13) );
  INVD1 U8 ( .I(B[2]), .ZN(n19) );
  INVD1 U9 ( .I(B[3]), .ZN(n12) );
  INVD1 U10 ( .I(B[4]), .ZN(n6) );
  INVD1 U11 ( .I(B[5]), .ZN(n16) );
  INVD1 U12 ( .I(B[6]), .ZN(n22) );
  INVD1 U13 ( .I(B[8]), .ZN(n4) );
  INVD1 U14 ( .I(B[9]), .ZN(n15) );
  INVD1 U15 ( .I(B[10]), .ZN(n21) );
  INVD1 U16 ( .I(B[12]), .ZN(n8) );
  INVD1 U17 ( .I(B[14]), .ZN(n23) );
  INVD1 U18 ( .I(B[15]), .ZN(n5) );
  INVD1 U19 ( .I(B[16]), .ZN(n3) );
  INVD1 U20 ( .I(B[17]), .ZN(n14) );
  INVD1 U21 ( .I(B[18]), .ZN(n20) );
  INVD1 U22 ( .I(B[19]), .ZN(n9) );
  INVD1 U23 ( .I(B[20]), .ZN(n7) );
  CKXOR2D0 U1 ( .A1(A[0]), .A2(B[0]), .Z(DIFF[0]) );
  XNR3D0 U5 ( .A1(carry[21]), .A2(A[21]), .A3(B[21]), .ZN(DIFF[21]) );
  IND2D0 U7 ( .A1(A[0]), .B1(B[0]), .ZN(carry[1]) );
endmodule


module top_width23 ( x, y, out0 );
  input [22:0] x;
  input [22:0] y;
  output [45:0] out0;
  wire   n46, N7, N14, N15, N16, N17, N18, N24, N25, N26, N27, N28,
         frac_sub_res_21_, frac_sub_res_20_, frac_sub_res_19_,
         frac_sub_res_18_, frac_sub_res_17_, frac_sub_res_16_,
         frac_sub_res_15_, N4, n45, N9, lt_35_B_15_, n2, n40, n6, n8, n10, n11,
         n150, n180, n20, n21, n22, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n41, n47, n48, n49, n50;
  wire   [21:0] x_frac;
  wire   [4:0] num0y;
  wire   [21:0] y_frac;
  wire   [21:0] eps_sub_res;
  wire   [4:0] shift;
  wire   [4:1] sub_1_root_sub_53_2_carry;
  wire   [21:16] sub_33_carry;
  wire   [4:1] sub_0_root_add_0_root_add_49_carry;
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
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23;

  NORMALIZE_width23_0 u_norm_x ( .x({1'b1, x[21:0]}), .out0({
        SYNOPSYS_UNCONNECTED__0, x_frac}) );
  NORMALIZE_width23_1 u_norm_y ( .x(y), .out0({SYNOPSYS_UNCONNECTED__1, y_frac}), .num0(num0y) );
  SHIFTER_width46 u_shift ( .x({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, n11, eps_sub_res}), .shift({1'b0, shift[4], n40, n2, 
        shift[1:0]}), .left(n47), .out0({SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15, SYNOPSYS_UNCONNECTED__16, 
        SYNOPSYS_UNCONNECTED__17, SYNOPSYS_UNCONNECTED__18, 
        SYNOPSYS_UNCONNECTED__19, SYNOPSYS_UNCONNECTED__20, 
        SYNOPSYS_UNCONNECTED__21, SYNOPSYS_UNCONNECTED__22, 
        SYNOPSYS_UNCONNECTED__23, out0[23:0]}) );
  top_width23_DW_cmp_2 lt_29 ( .A(x_frac), .B(y_frac), .TC(n46), .GE_LT(n45), 
        .GE_GT_EQ(n46), .GE_LT_GT_LE(N9) );
  top_width23_DW01_sub_2_DW01_sub_3 sub_27 ( .A(x_frac), .B(y_frac), .CI(n46), 
        .DIFF({frac_sub_res_21_, frac_sub_res_20_, frac_sub_res_19_, 
        frac_sub_res_18_, frac_sub_res_17_, frac_sub_res_16_, frac_sub_res_15_, 
        eps_sub_res[14:0]}) );
  AO22D0 U4 ( .A1(N26), .A2(n47), .B1(N16), .B2(N7), .Z(n2) );
  AO22D0 U6 ( .A1(N27), .A2(n47), .B1(N17), .B2(N7), .Z(n40) );
  ND2D1 U7 ( .A1(n6), .A2(num0y[3]), .ZN(n180) );
  FA1D0 U8 ( .A(1'b0), .B(n22), .CI(sub_0_root_add_0_root_add_49_carry[3]), 
        .CO(sub_0_root_add_0_root_add_49_carry[4]), .S(N17) );
  FA1D0 U10 ( .A(num0y[3]), .B(1'b1), .CI(sub_1_root_sub_53_2_carry[3]), .CO(
        sub_1_root_sub_53_2_carry[4]), .S(N27) );
  INVD1 U11 ( .I(num0y[3]), .ZN(n22) );
  INVD1 U12 ( .I(num0y[2]), .ZN(n21) );
  INVD1 U15 ( .I(N7), .ZN(n47) );
  AN2XD1 U16 ( .A1(n8), .A2(num0y[2]), .Z(n6) );
  AO22D0 U17 ( .A1(N25), .A2(n47), .B1(N15), .B2(N7), .Z(shift[1]) );
  AO22D0 U18 ( .A1(N28), .A2(n47), .B1(N18), .B2(N7), .Z(shift[4]) );
  XOR3D1 U19 ( .A1(num0y[4]), .A2(1'b1), .A3(sub_1_root_sub_53_2_carry[4]), 
        .Z(N28) );
  FA1D0 U21 ( .A(1'b0), .B(n21), .CI(sub_0_root_add_0_root_add_49_carry[2]), 
        .CO(sub_0_root_add_0_root_add_49_carry[3]), .S(N16) );
  FA1D0 U23 ( .A(num0y[2]), .B(1'b1), .CI(sub_1_root_sub_53_2_carry[2]), .CO(
        sub_1_root_sub_53_2_carry[3]), .S(N26) );
  INVD1 U25 ( .I(num0y[1]), .ZN(n20) );
  AO22D0 U28 ( .A1(N24), .A2(n47), .B1(N14), .B2(N7), .Z(shift[0]) );
  AN2XD1 U29 ( .A1(n10), .A2(num0y[1]), .Z(n8) );
  FA1D0 U31 ( .A(1'b0), .B(n20), .CI(sub_0_root_add_0_root_add_49_carry[1]), 
        .CO(sub_0_root_add_0_root_add_49_carry[2]), .S(N15) );
  FA1D0 U34 ( .A(num0y[1]), .B(1'b1), .CI(sub_1_root_sub_53_2_carry[1]), .CO(
        sub_1_root_sub_53_2_carry[2]), .S(N25) );
  AN2XD1 U38 ( .A1(N9), .A2(num0y[0]), .Z(n10) );
  AO221D0 U39 ( .A1(n35), .A2(n34), .B1(n34), .B2(n33), .C(n32), .Z(n11) );
  INVD1 U40 ( .I(frac_sub_res_18_), .ZN(n38) );
  FA1D0 U44 ( .A(frac_sub_res_18_), .B(lt_35_B_15_), .CI(sub_33_carry[18]), 
        .CO(sub_33_carry[19]), .S(eps_sub_res[18]) );
  FA1D0 U46 ( .A(frac_sub_res_17_), .B(N9), .CI(sub_33_carry[17]), .CO(
        sub_33_carry[18]), .S(eps_sub_res[17]) );
  FA1D0 U47 ( .A(frac_sub_res_16_), .B(lt_35_B_15_), .CI(sub_33_carry[16]), 
        .CO(sub_33_carry[17]), .S(eps_sub_res[16]) );
  INVD1 U50 ( .I(frac_sub_res_17_), .ZN(n37) );
  INVD1 U51 ( .I(frac_sub_res_16_), .ZN(n36) );
  FA1D0 U54 ( .A(num0y[0]), .B(1'b1), .CI(lt_35_B_15_), .CO(
        sub_1_root_sub_53_2_carry[1]), .S(N24) );
  TIEL U55 ( .ZN(n46) );
  TIEH U56 ( .Z(n45) );
  XNR2D1 U57 ( .A1(N9), .A2(frac_sub_res_15_), .ZN(eps_sub_res[15]) );
  XNR2D1 U58 ( .A1(sub_33_carry[19]), .A2(frac_sub_res_19_), .ZN(
        eps_sub_res[19]) );
  XNR2D1 U60 ( .A1(frac_sub_res_21_), .A2(sub_33_carry[21]), .ZN(
        eps_sub_res[21]) );
  CKXOR2D1 U63 ( .A1(n8), .A2(num0y[2]), .Z(N4) );
  CKXOR2D1 U64 ( .A1(n6), .A2(num0y[3]), .Z(n39) );
  IAO21D0 U70 ( .A1(n36), .A2(N9), .B(frac_sub_res_15_), .ZN(n30) );
  AOI22D0 U71 ( .A1(N9), .A2(n36), .B1(n30), .B2(lt_35_B_15_), .ZN(n35) );
  IND2D0 U72 ( .A1(N9), .B1(frac_sub_res_18_), .ZN(n31) );
  AOI32D0 U73 ( .A1(lt_35_B_15_), .A2(n37), .A3(n31), .B1(n38), .B2(N9), .ZN(
        n34) );
  OAI21D0 U74 ( .A1(lt_35_B_15_), .A2(n37), .B(n31), .ZN(n33) );
  OR3D0 U75 ( .A1(frac_sub_res_21_), .A2(frac_sub_res_20_), .A3(
        frac_sub_res_19_), .Z(n32) );
  CKXOR2D0 U2 ( .A1(frac_sub_res_20_), .A2(n150), .Z(eps_sub_res[20]) );
  NR2D0 U3 ( .A1(sub_33_carry[19]), .A2(frac_sub_res_19_), .ZN(n150) );
  XNR3D0 U5 ( .A1(sub_0_root_add_0_root_add_49_carry[4]), .A2(1'b0), .A3(
        num0y[4]), .ZN(N18) );
  IND2D0 U9 ( .A1(frac_sub_res_20_), .B1(n150), .ZN(sub_33_carry[21]) );
  IND2D0 U13 ( .A1(N9), .B1(num0y[0]), .ZN(
        sub_0_root_add_0_root_add_49_carry[1]) );
  CKXOR2D0 U14 ( .A1(N9), .A2(num0y[0]), .Z(N14) );
  NR2D0 U20 ( .A1(n49), .A2(n48), .ZN(n41) );
  CKXOR2D0 U22 ( .A1(n10), .A2(num0y[1]), .Z(n48) );
  CKXOR2D0 U24 ( .A1(N9), .A2(num0y[0]), .Z(n49) );
  IND2D0 U26 ( .A1(frac_sub_res_15_), .B1(lt_35_B_15_), .ZN(sub_33_carry[16])
         );
  CKND0 U27 ( .I(N9), .ZN(lt_35_B_15_) );
  IINR4D0 U30 ( .A1(n50), .A2(n41), .B1(N4), .B2(n39), .ZN(N7) );
  CKXOR2D0 U32 ( .A1(num0y[4]), .A2(n180), .Z(n50) );
endmodule


module fp32_normal_finite_wrapper_DW01_add_1_DW01_add_3 ( A, B, CI, SUM, CO );
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
         n1, n80;
  wire   [7:2] add_0_root_add_0_root_add_22_2_carry;

  CKXOR2D1 U2 ( .A1(y[31]), .A2(x[31]), .Z(result[31]) );
  fp32_normal_finite_wrapper_DW01_add_1_DW01_add_3 add_1_root_add_0_root_add_22_2 ( 
        .A(x[30:23]), .B({y[30], N17, N16, N15, N14, N13, N12, N11}), .CI(n80), 
        .SUM({N10, N9, N8, N7, N6, N5, N4, N3}) );
  AN2XD1 U3 ( .A1(exponent_adjust[0]), .A2(N3), .Z(n1) );
  CKBD1 U8 ( .I(result_fraction[17]), .Z(result[17]) );
  CKBD1 U9 ( .I(result_fraction[20]), .Z(result[20]) );
  CKBD1 U10 ( .I(result_fraction[22]), .Z(result[22]) );
  CKBD1 U11 ( .I(result_fraction[16]), .Z(result[16]) );
  CKBD1 U12 ( .I(result_fraction[19]), .Z(result[19]) );
  CKBD1 U13 ( .I(result_fraction[18]), .Z(result[18]) );
  CKBD1 U14 ( .I(result_fraction[21]), .Z(result[21]) );
  FA1D0 U15 ( .A(N4), .B(exponent_adjust[1]), .CI(n1), .CO(
        add_0_root_add_0_root_add_22_2_carry[2]), .S(result[24]) );
  FA1D0 U16 ( .A(N5), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[2]), .CO(
        add_0_root_add_0_root_add_22_2_carry[3]), .S(result[25]) );
  FA1D0 U17 ( .A(N6), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[3]), .CO(
        add_0_root_add_0_root_add_22_2_carry[4]), .S(result[26]) );
  FA1D0 U18 ( .A(N7), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[4]), .CO(
        add_0_root_add_0_root_add_22_2_carry[5]), .S(result[27]) );
  FA1D0 U19 ( .A(N8), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[5]), .CO(
        add_0_root_add_0_root_add_22_2_carry[6]), .S(result[28]) );
  FA1D0 U20 ( .A(N9), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[6]), .CO(
        add_0_root_add_0_root_add_22_2_carry[7]), .S(result[29]) );
  CKBD1 U21 ( .I(result_fraction[2]), .Z(result[2]) );
  CKBD1 U22 ( .I(result_fraction[5]), .Z(result[5]) );
  CKBD1 U23 ( .I(result_fraction[9]), .Z(result[9]) );
  CKBD1 U24 ( .I(result_fraction[11]), .Z(result[11]) );
  CKBD1 U25 ( .I(result_fraction[14]), .Z(result[14]) );
  CKBD1 U26 ( .I(result_fraction[7]), .Z(result[7]) );
  CKBD1 U27 ( .I(result_fraction[4]), .Z(result[4]) );
  CKBD1 U28 ( .I(result_fraction[13]), .Z(result[13]) );
  CKBD1 U29 ( .I(result_fraction[3]), .Z(result[3]) );
  CKBD1 U30 ( .I(result_fraction[6]), .Z(result[6]) );
  CKBD1 U31 ( .I(result_fraction[12]), .Z(result[12]) );
  CKBD1 U32 ( .I(result_fraction[15]), .Z(result[15]) );
  CKBD1 U33 ( .I(result_fraction[8]), .Z(result[8]) );
  CKBD1 U34 ( .I(result_fraction[10]), .Z(result[10]) );
  CKBD1 U35 ( .I(result_fraction[1]), .Z(result[1]) );
  CKBD1 U36 ( .I(result_fraction[0]), .Z(result[0]) );
  XOR3D1 U45 ( .A1(N10), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_22_2_carry[7]), .Z(result[30]) );
  CKBD1 U46 ( .I(y[16]), .Z(fraction_y[16]) );
  CKBD1 U48 ( .I(y[15]), .Z(fraction_y[15]) );
  CKBD1 U49 ( .I(y[4]), .Z(fraction_y[4]) );
  CKBD1 U50 ( .I(y[3]), .Z(fraction_y[3]) );
  CKBD1 U51 ( .I(y[14]), .Z(fraction_y[14]) );
  CKBD1 U52 ( .I(y[12]), .Z(fraction_y[12]) );
  CKBD1 U54 ( .I(y[2]), .Z(fraction_y[2]) );
  CKBD1 U55 ( .I(y[10]), .Z(fraction_y[10]) );
  CKBD1 U56 ( .I(y[9]), .Z(fraction_y[9]) );
  CKBD1 U57 ( .I(y[6]), .Z(fraction_y[6]) );
  CKBD1 U58 ( .I(y[13]), .Z(fraction_y[13]) );
  CKBD1 U59 ( .I(y[11]), .Z(fraction_y[11]) );
  CKBD1 U61 ( .I(y[1]), .Z(fraction_y[1]) );
  CKBD1 U62 ( .I(y[5]), .Z(fraction_y[5]) );
  CKBD1 U63 ( .I(y[20]), .Z(fraction_y[20]) );
  CKBD1 U64 ( .I(y[19]), .Z(fraction_y[19]) );
  CKBD1 U65 ( .I(y[8]), .Z(fraction_y[8]) );
  CKBD1 U67 ( .I(y[18]), .Z(fraction_y[18]) );
  CKBD1 U68 ( .I(y[7]), .Z(fraction_y[7]) );
  CKBD1 U69 ( .I(y[17]), .Z(fraction_y[17]) );
  CKBD1 U71 ( .I(y[21]), .Z(fraction_y[21]) );
  CKBD1 U72 ( .I(y[22]), .Z(fraction_y[22]) );
  INVD1 U75 ( .I(y[29]), .ZN(N17) );
  INVD1 U76 ( .I(y[24]), .ZN(N12) );
  INVD1 U77 ( .I(y[25]), .ZN(N13) );
  INVD1 U78 ( .I(y[26]), .ZN(N14) );
  INVD1 U79 ( .I(y[27]), .ZN(N15) );
  INVD1 U80 ( .I(y[28]), .ZN(N16) );
  CKBD1 U89 ( .I(x[22]), .Z(fraction_x[22]) );
  CKBD1 U90 ( .I(x[21]), .Z(fraction_x[21]) );
  CKBD1 U91 ( .I(x[20]), .Z(fraction_x[20]) );
  CKBD1 U92 ( .I(x[19]), .Z(fraction_x[19]) );
  CKBD1 U93 ( .I(x[18]), .Z(fraction_x[18]) );
  CKBD1 U94 ( .I(x[17]), .Z(fraction_x[17]) );
  CKBD1 U95 ( .I(x[16]), .Z(fraction_x[16]) );
  CKBD1 U96 ( .I(x[15]), .Z(fraction_x[15]) );
  CKBD1 U97 ( .I(x[14]), .Z(fraction_x[14]) );
  CKBD1 U98 ( .I(x[13]), .Z(fraction_x[13]) );
  CKBD1 U99 ( .I(x[12]), .Z(fraction_x[12]) );
  CKBD1 U100 ( .I(x[11]), .Z(fraction_x[11]) );
  CKBD1 U101 ( .I(x[10]), .Z(fraction_x[10]) );
  CKBD1 U102 ( .I(x[9]), .Z(fraction_x[9]) );
  CKBD1 U103 ( .I(x[8]), .Z(fraction_x[8]) );
  CKBD1 U104 ( .I(x[7]), .Z(fraction_x[7]) );
  CKBD1 U105 ( .I(x[6]), .Z(fraction_x[6]) );
  CKBD1 U106 ( .I(x[5]), .Z(fraction_x[5]) );
  CKBD1 U107 ( .I(x[4]), .Z(fraction_x[4]) );
  CKBD1 U108 ( .I(x[3]), .Z(fraction_x[3]) );
  CKBD1 U109 ( .I(x[2]), .Z(fraction_x[2]) );
  CKBD1 U110 ( .I(x[1]), .Z(fraction_x[1]) );
  TIEL U111 ( .ZN(n80) );
  CKXOR2D1 U112 ( .A1(exponent_adjust[0]), .A2(N3), .Z(result[23]) );
  CKND0 U120 ( .I(y[23]), .ZN(N11) );
endmodule


module FP_DIV_WRAPPER_32 ( x, y, out0, mantissa_x, mantissa_y, mantissa_out, 
        shift );
  input [31:0] x;
  input [31:0] y;
  output [31:0] out0;
  output [22:0] mantissa_x;
  output [22:0] mantissa_y;
  input [22:0] mantissa_out;
  input [0:0] shift;

  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1;

  fp32_normal_finite_wrapper shared_wrapper ( .x({x[31:1], 1'b0}), .y({y[31:1], 
        1'b0}), .divide_mode(1'b0), .fraction_x({mantissa_x[22:1], 
        SYNOPSYS_UNCONNECTED__0}), .fraction_y({mantissa_y[22:1], 
        SYNOPSYS_UNCONNECTED__1}), .result_fraction(mantissa_out), 
        .exponent_adjust({shift[0], shift[0], shift[0]}), .result(out0) );
endmodule


module fanzed_prior_fp32_paceio_DW_cmp_0 ( A, B, TC, GE_LT, GE_GT_EQ, 
        GE_LT_GT_LE, EQ_NE );
  input [22:0] A;
  input [22:0] B;
  input TC, GE_LT, GE_GT_EQ;
  output GE_LT_GT_LE, EQ_NE;
  wire   n893, n894, n895, n896, n897, n898, n899, n900, n901, n902, n903,
         n904, n905, n906, n907, n908, n909, n910, n911, n912, n913, n914,
         n915, n916, n917, n918, n919, n920, n921, n922, n923, n924, n925,
         n926, n927, n928, n929, n930, n931, n932, n933, n934, n935, n936,
         n937, n938, n939, n940, n941, n942, n943, n944, n945, n946, n947,
         n948, n949, n950, n951, n952, n953, n954, n955, n956;

  INVD1 U438 ( .I(n941), .ZN(n902) );
  INVD1 U439 ( .I(B[15]), .ZN(n908) );
  INVD1 U440 ( .I(B[3]), .ZN(n914) );
  INVD1 U441 ( .I(n936), .ZN(n904) );
  INVD1 U442 ( .I(B[14]), .ZN(n909) );
  INVD1 U443 ( .I(B[2]), .ZN(n915) );
  INVD1 U444 ( .I(A[11]), .ZN(n899) );
  INVD1 U445 ( .I(B[9]), .ZN(n910) );
  INVD1 U446 ( .I(B[8]), .ZN(n911) );
  INVD1 U447 ( .I(A[1]), .ZN(n905) );
  INVD1 U448 ( .I(B[5]), .ZN(n912) );
  INVD1 U449 ( .I(A[12]), .ZN(n898) );
  INVD1 U450 ( .I(A[10]), .ZN(n900) );
  INVD1 U451 ( .I(B[19]), .ZN(n906) );
  INVD1 U452 ( .I(B[4]), .ZN(n913) );
  INVD1 U453 ( .I(B[18]), .ZN(n907) );
  INVD1 U454 ( .I(A[7]), .ZN(n901) );
  INVD1 U455 ( .I(A[17]), .ZN(n895) );
  INVD1 U456 ( .I(A[13]), .ZN(n897) );
  INVD1 U457 ( .I(A[6]), .ZN(n903) );
  INVD1 U458 ( .I(A[16]), .ZN(n896) );
  INVD1 U459 ( .I(A[20]), .ZN(n894) );
  INVD1 U460 ( .I(A[21]), .ZN(n893) );
  OAI32D0 U461 ( .A1(n916), .A2(n917), .A3(n918), .B1(n919), .B2(n920), .ZN(
        GE_LT_GT_LE) );
  AOI221D0 U462 ( .A1(B[21]), .A2(n893), .B1(B[20]), .B2(n894), .C(n921), .ZN(
        n920) );
  AOI221D0 U463 ( .A1(n922), .A2(n917), .B1(n923), .B2(n922), .C(n924), .ZN(
        n921) );
  AOI32D0 U464 ( .A1(n925), .A2(n896), .A3(B[16]), .B1(B[17]), .B2(n895), .ZN(
        n923) );
  OA32D0 U465 ( .A1(n907), .A2(A[18]), .A3(n926), .B1(A[19]), .B2(n906), .Z(
        n922) );
  OAI32D0 U466 ( .A1(n927), .A2(n928), .A3(n929), .B1(n930), .B2(n927), .ZN(
        n918) );
  NR4D0 U467 ( .A1(n931), .A2(n932), .A3(n933), .A4(n934), .ZN(n930) );
  INR2D0 U468 ( .A1(A[8]), .B1(B[8]), .ZN(n931) );
  OA211D0 U469 ( .A1(n935), .A2(n936), .B(n902), .C(n937), .Z(n929) );
  AOI221D0 U470 ( .A1(n938), .A2(n904), .B1(A[4]), .B2(n913), .C(n939), .ZN(
        n937) );
  AOI22D0 U471 ( .A1(B[1]), .A2(n905), .B1(n940), .B2(B[0]), .ZN(n938) );
  IAO21D0 U472 ( .A1(n905), .A2(B[1]), .B(A[0]), .ZN(n940) );
  OAI32D0 U473 ( .A1(n915), .A2(A[2]), .A3(n942), .B1(A[3]), .B2(n914), .ZN(
        n936) );
  AOI21D0 U474 ( .A1(A[2]), .A2(n915), .B(n942), .ZN(n935) );
  INR2D0 U475 ( .A1(A[3]), .B1(B[3]), .ZN(n942) );
  AOI32D0 U478 ( .A1(B[6]), .A2(n903), .A3(n945), .B1(n901), .B2(B[7]), .ZN(
        n944) );
  IND2D0 U479 ( .A1(B[7]), .B1(A[7]), .ZN(n945) );
  OA32D0 U480 ( .A1(n939), .A2(A[4]), .A3(n913), .B1(n912), .B2(A[5]), .Z(n943) );
  AN2D0 U481 ( .A1(A[5]), .A2(n912), .Z(n939) );
  CKND2D0 U482 ( .A1(n946), .A2(n947), .ZN(n927) );
  AO221D0 U483 ( .A1(n948), .A2(n949), .B1(n934), .B2(n948), .C(n933), .Z(n947) );
  OAI211D0 U484 ( .A1(B[12]), .A2(n898), .B(n950), .C(n951), .ZN(n933) );
  OAI21D0 U485 ( .A1(B[10]), .A2(n900), .B(n952), .ZN(n934) );
  OA32D0 U486 ( .A1(n911), .A2(A[8]), .A3(n932), .B1(A[9]), .B2(n910), .Z(n949) );
  INR2D0 U487 ( .A1(A[9]), .B1(B[9]), .ZN(n932) );
  AOI32D0 U488 ( .A1(B[10]), .A2(n900), .A3(n952), .B1(n899), .B2(B[11]), .ZN(
        n948) );
  IND2D0 U489 ( .A1(B[11]), .B1(A[11]), .ZN(n952) );
  AO32D0 U491 ( .A1(B[12]), .A2(n898), .A3(n950), .B1(n897), .B2(B[13]), .Z(
        n954) );
  IND2D0 U492 ( .A1(B[13]), .B1(A[13]), .ZN(n950) );
  OAI32D0 U493 ( .A1(n909), .A2(A[14]), .A3(n955), .B1(A[15]), .B2(n908), .ZN(
        n953) );
  AN2D0 U495 ( .A1(A[15]), .A2(n908), .Z(n955) );
  AO21D0 U496 ( .A1(n907), .A2(A[18]), .B(n926), .Z(n917) );
  INR2D0 U497 ( .A1(A[19]), .B1(B[19]), .ZN(n926) );
  IIND4D0 U498 ( .A1(n919), .A2(n924), .B1(n925), .B2(n956), .ZN(n916) );
  OR2D0 U499 ( .A1(B[16]), .A2(n896), .Z(n956) );
  OR2D0 U500 ( .A1(B[17]), .A2(n895), .Z(n925) );
  NR2D0 U501 ( .A1(n894), .A2(B[20]), .ZN(n924) );
  NR2D0 U502 ( .A1(n893), .A2(B[21]), .ZN(n919) );
  OAI21D0 U476 ( .A1(n943), .A2(n941), .B(n944), .ZN(n928) );
  OAI21D0 U477 ( .A1(B[6]), .A2(n903), .B(n945), .ZN(n941) );
  AOI21D0 U490 ( .A1(n954), .A2(n951), .B(n953), .ZN(n946) );
  AOI21D0 U494 ( .A1(A[14]), .A2(n909), .B(n955), .ZN(n951) );
endmodule


module fanzed_prior_fp32_paceio ( x, y, out0 );
  input [31:0] x;
  input [31:0] y;
  output [31:0] out0;
  wire   n7, below_one, shift_reg, n6, n52, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103;
  wire   [21:0] core_x;
  wire   [21:0] core_y_normal;
  wire   [21:0] core_y;
  wire   [23:0] core_out;
  wire   [22:0] normalized_q23;
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
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23;

  top_width23 fanzed_core ( .x({1'b0, core_x}), .y({n59, core_y}), .out0({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, core_out}) );
  FP_DIV_WRAPPER_32 fp_wrapper ( .x({x[31:1], 1'b0}), .y({y[31:1], 1'b0}), 
        .out0(out0), .mantissa_x({core_x, SYNOPSYS_UNCONNECTED__22}), 
        .mantissa_y({core_y_normal, SYNOPSYS_UNCONNECTED__23}), .mantissa_out(
        normalized_q23), .shift(shift_reg) );
  fanzed_prior_fp32_paceio_DW_cmp_0 lt_14 ( .A({n7, core_x}), .B({n7, 
        core_y_normal}), .TC(n6), .GE_LT(n7), .GE_GT_EQ(n6), .GE_LT_GT_LE(
        below_one) );
  INVD1 U101 ( .I(below_one), .ZN(n59) );
  XNR2D1 U102 ( .A1(n60), .A2(n72), .ZN(n57) );
  XNR2D1 U103 ( .A1(n60), .A2(n72), .ZN(n54) );
  XNR2D1 U104 ( .A1(n60), .A2(n72), .ZN(n58) );
  ND2D1 U105 ( .A1(n72), .A2(n60), .ZN(n52) );
  ND2D1 U106 ( .A1(n72), .A2(n60), .ZN(n55) );
  OAI22D1 U107 ( .A1(n59), .A2(n85), .B1(n60), .B2(n86), .ZN(core_y[20]) );
  OAI22D1 U108 ( .A1(n59), .A2(n86), .B1(n60), .B2(n87), .ZN(core_y[19]) );
  OAI22D1 U109 ( .A1(n59), .A2(n87), .B1(n60), .B2(n88), .ZN(core_y[18]) );
  ND2D1 U110 ( .A1(n85), .A2(n59), .ZN(core_y[21]) );
  OAI222D0 U111 ( .A1(n52), .A2(n66), .B1(n56), .B2(n64), .C1(n57), .C2(n65), 
        .ZN(normalized_q23[17]) );
  OAI222D0 U112 ( .A1(n55), .A2(n69), .B1(n56), .B2(n67), .C1(n57), .C2(n68), 
        .ZN(normalized_q23[20]) );
  INVD1 U113 ( .I(shift_reg), .ZN(n72) );
  OAI222D0 U114 ( .A1(n71), .A2(n55), .B1(n56), .B2(n69), .C1(n54), .C2(n70), 
        .ZN(normalized_q23[22]) );
  INVD1 U115 ( .I(core_out[22]), .ZN(n71) );
  OAI222D0 U116 ( .A1(n55), .A2(n65), .B1(n56), .B2(n63), .C1(n54), .C2(n64), 
        .ZN(normalized_q23[16]) );
  OAI222D0 U117 ( .A1(n52), .A2(n68), .B1(n56), .B2(n66), .C1(n54), .C2(n67), 
        .ZN(normalized_q23[19]) );
  OAI22D1 U118 ( .A1(n59), .A2(n88), .B1(n60), .B2(n89), .ZN(core_y[17]) );
  OAI222D0 U119 ( .A1(n55), .A2(n67), .B1(n56), .B2(n65), .C1(n58), .C2(n66), 
        .ZN(normalized_q23[18]) );
  OAI222D0 U120 ( .A1(n52), .A2(n70), .B1(n56), .B2(n68), .C1(n58), .C2(n69), 
        .ZN(normalized_q23[21]) );
  OAI22D1 U121 ( .A1(n59), .A2(n89), .B1(n60), .B2(n90), .ZN(core_y[16]) );
  ND2D1 U122 ( .A1(shift_reg), .A2(n59), .ZN(n56) );
  OAI22D1 U123 ( .A1(n59), .A2(n90), .B1(n60), .B2(n91), .ZN(core_y[15]) );
  OAI22D1 U124 ( .A1(n59), .A2(n91), .B1(n60), .B2(n92), .ZN(core_y[14]) );
  OAI22D1 U125 ( .A1(n59), .A2(n92), .B1(n60), .B2(n93), .ZN(core_y[13]) );
  OAI22D1 U126 ( .A1(n59), .A2(n93), .B1(n60), .B2(n94), .ZN(core_y[12]) );
  CKBD1 U127 ( .I(below_one), .Z(n60) );
  OAI22D1 U128 ( .A1(n59), .A2(n94), .B1(n60), .B2(n95), .ZN(core_y[11]) );
  OAI22D1 U129 ( .A1(n59), .A2(n95), .B1(n60), .B2(n96), .ZN(core_y[10]) );
  OAI22D1 U130 ( .A1(n59), .A2(n96), .B1(n60), .B2(n97), .ZN(core_y[9]) );
  OAI22D1 U131 ( .A1(n59), .A2(n97), .B1(n60), .B2(n98), .ZN(core_y[8]) );
  OAI22D1 U132 ( .A1(n59), .A2(n98), .B1(n60), .B2(n99), .ZN(core_y[7]) );
  OAI22D1 U133 ( .A1(n59), .A2(n99), .B1(n60), .B2(n100), .ZN(core_y[6]) );
  OAI22D1 U134 ( .A1(n59), .A2(n100), .B1(n60), .B2(n101), .ZN(core_y[5]) );
  OAI22D1 U135 ( .A1(n59), .A2(n101), .B1(n60), .B2(n102), .ZN(core_y[4]) );
  AOI22D1 U136 ( .A1(n59), .A2(core_out[22]), .B1(core_out[23]), .B2(n60), 
        .ZN(shift_reg) );
  OAI222D0 U137 ( .A1(n55), .A2(n73), .B1(n56), .B2(n61), .C1(n57), .C2(n62), 
        .ZN(normalized_q23[2]) );
  OAI222D0 U138 ( .A1(n52), .A2(n76), .B1(n56), .B2(n74), .C1(n57), .C2(n75), 
        .ZN(normalized_q23[5]) );
  OAI222D0 U139 ( .A1(n55), .A2(n80), .B1(n56), .B2(n78), .C1(n57), .C2(n79), 
        .ZN(normalized_q23[9]) );
  OAI222D0 U140 ( .A1(n52), .A2(n82), .B1(n56), .B2(n80), .C1(n57), .C2(n81), 
        .ZN(normalized_q23[11]) );
  OAI222D0 U141 ( .A1(n55), .A2(n63), .B1(n56), .B2(n83), .C1(n57), .C2(n84), 
        .ZN(normalized_q23[14]) );
  OAI222D0 U142 ( .A1(n78), .A2(n52), .B1(n56), .B2(n76), .C1(n54), .C2(n77), 
        .ZN(normalized_q23[7]) );
  OAI222D0 U143 ( .A1(n55), .A2(n75), .B1(n56), .B2(n73), .C1(n54), .C2(n74), 
        .ZN(normalized_q23[4]) );
  OAI222D0 U144 ( .A1(n52), .A2(n84), .B1(n56), .B2(n82), .C1(n54), .C2(n83), 
        .ZN(normalized_q23[13]) );
  OAI222D0 U145 ( .A1(n52), .A2(n74), .B1(n56), .B2(n62), .C1(n58), .C2(n73), 
        .ZN(normalized_q23[3]) );
  OAI222D0 U146 ( .A1(n55), .A2(n77), .B1(n56), .B2(n75), .C1(n58), .C2(n76), 
        .ZN(normalized_q23[6]) );
  OAI222D0 U147 ( .A1(n55), .A2(n83), .B1(n56), .B2(n81), .C1(n58), .C2(n82), 
        .ZN(normalized_q23[12]) );
  OAI222D0 U148 ( .A1(n52), .A2(n64), .B1(n56), .B2(n84), .C1(n58), .C2(n63), 
        .ZN(normalized_q23[15]) );
  OAI222D0 U149 ( .A1(n52), .A2(n79), .B1(n56), .B2(n77), .C1(n78), .C2(n58), 
        .ZN(normalized_q23[8]) );
  OAI222D0 U150 ( .A1(n55), .A2(n81), .B1(n56), .B2(n79), .C1(n80), .C2(n58), 
        .ZN(normalized_q23[10]) );
  OAI22D1 U151 ( .A1(n54), .A2(n61), .B1(n52), .B2(n62), .ZN(normalized_q23[1]) );
  NR2D1 U152 ( .A1(n52), .A2(n61), .ZN(normalized_q23[0]) );
  INVD1 U153 ( .I(core_out[15]), .ZN(n64) );
  INVD1 U154 ( .I(core_out[14]), .ZN(n63) );
  INVD1 U155 ( .I(core_out[19]), .ZN(n68) );
  INVD1 U156 ( .I(core_out[20]), .ZN(n69) );
  INVD1 U157 ( .I(core_out[17]), .ZN(n66) );
  INVD1 U158 ( .I(core_out[16]), .ZN(n65) );
  INVD1 U159 ( .I(core_out[18]), .ZN(n67) );
  INVD1 U160 ( .I(core_out[21]), .ZN(n70) );
  INVD1 U161 ( .I(core_y_normal[21]), .ZN(n85) );
  INVD1 U162 ( .I(core_y_normal[20]), .ZN(n86) );
  INVD1 U163 ( .I(core_y_normal[19]), .ZN(n87) );
  INVD1 U164 ( .I(core_y_normal[18]), .ZN(n88) );
  INVD1 U165 ( .I(core_y_normal[17]), .ZN(n89) );
  AO22D0 U166 ( .A1(n60), .A2(core_y_normal[3]), .B1(n59), .B2(
        core_y_normal[2]), .Z(core_y[2]) );
  INVD1 U167 ( .I(core_y_normal[16]), .ZN(n90) );
  OAI22D1 U168 ( .A1(n59), .A2(n102), .B1(n60), .B2(n103), .ZN(core_y[3]) );
  INVD1 U169 ( .I(core_y_normal[3]), .ZN(n103) );
  AO22D0 U170 ( .A1(n60), .A2(core_y_normal[2]), .B1(n59), .B2(
        core_y_normal[1]), .Z(core_y[1]) );
  INVD1 U171 ( .I(core_y_normal[15]), .ZN(n91) );
  AO22D0 U172 ( .A1(n60), .A2(core_y_normal[1]), .B1(core_y_normal[0]), .B2(
        n59), .Z(core_y[0]) );
  INVD1 U173 ( .I(core_y_normal[14]), .ZN(n92) );
  INVD1 U174 ( .I(core_y_normal[13]), .ZN(n93) );
  INVD1 U175 ( .I(core_y_normal[12]), .ZN(n94) );
  INVD1 U176 ( .I(core_y_normal[11]), .ZN(n95) );
  INVD1 U177 ( .I(core_y_normal[10]), .ZN(n96) );
  INVD1 U178 ( .I(core_y_normal[9]), .ZN(n97) );
  INVD1 U179 ( .I(core_y_normal[8]), .ZN(n98) );
  INVD1 U180 ( .I(core_y_normal[7]), .ZN(n99) );
  INVD1 U181 ( .I(core_y_normal[6]), .ZN(n100) );
  INVD1 U182 ( .I(core_y_normal[5]), .ZN(n101) );
  INVD1 U183 ( .I(core_y_normal[4]), .ZN(n102) );
  INVD1 U184 ( .I(core_out[7]), .ZN(n78) );
  INVD1 U185 ( .I(core_out[3]), .ZN(n74) );
  INVD1 U186 ( .I(core_out[11]), .ZN(n82) );
  INVD1 U187 ( .I(core_out[1]), .ZN(n62) );
  INVD1 U188 ( .I(core_out[4]), .ZN(n75) );
  INVD1 U189 ( .I(core_out[5]), .ZN(n76) );
  INVD1 U190 ( .I(core_out[2]), .ZN(n73) );
  INVD1 U191 ( .I(core_out[9]), .ZN(n80) );
  INVD1 U192 ( .I(core_out[6]), .ZN(n77) );
  INVD1 U193 ( .I(core_out[12]), .ZN(n83) );
  INVD1 U194 ( .I(core_out[13]), .ZN(n84) );
  INVD1 U195 ( .I(core_out[8]), .ZN(n79) );
  INVD1 U196 ( .I(core_out[10]), .ZN(n81) );
  INVD1 U197 ( .I(core_out[0]), .ZN(n61) );
  TIEH U198 ( .Z(n7) );
  TIEL U199 ( .ZN(n6) );
endmodule

