/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Thu Sep  3 12:34:50 2026
/////////////////////////////////////////////////////////////


module oadm_multilevel_rounding_lut_0 ( level, index, value_low, x_error, 
        y_error );
  input [1:0] level;
  input [2:0] index;
  input [3:0] value_low;
  output [1:0] x_error;
  output [1:0] y_error;
  wire   n31, n38, n40, n41, n42, n43, n46, n49, n63, n65, n70, n71, n78, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n102, n103, n104, n105, n107, n108, n109, n110, n111,
         n112, n113, n114, n116, n117, n118, n119, n121, n122, n124, n125, n5,
         n6, n12, n13, n15, n16, n17, n18, n20, n22, n23, n24, n25, n26, n27,
         n28, n29;

  INVD1 U3 ( .I(n113), .ZN(n15) );
  INVD1 U4 ( .I(n91), .ZN(n18) );
  INVD1 U6 ( .I(index[2]), .ZN(n5) );
  INVD1 U9 ( .I(index[1]), .ZN(n6) );
  INVD1 U10 ( .I(n31), .ZN(n20) );
  INVD1 U11 ( .I(n63), .ZN(n24) );
  ND2D1 U12 ( .A1(n20), .A2(n28), .ZN(n102) );
  INVD1 U13 ( .I(n49), .ZN(n23) );
  ND2D1 U14 ( .A1(n29), .A2(n16), .ZN(n113) );
  OAI31D1 U15 ( .A1(n42), .A2(n22), .A3(n38), .B(n70), .ZN(n87) );
  ND2D1 U17 ( .A1(n43), .A2(index[1]), .ZN(n70) );
  ND2D1 U18 ( .A1(n25), .A2(n22), .ZN(n91) );
  INVD1 U19 ( .I(n46), .ZN(n26) );
  INVD1 U20 ( .I(n95), .ZN(n17) );
  ND2D1 U29 ( .A1(n13), .A2(index[1]), .ZN(n65) );
  INVD1 U30 ( .I(value_low[2]), .ZN(n22) );
  ND2D1 U31 ( .A1(value_low[1]), .A2(n22), .ZN(n31) );
  ND2D1 U32 ( .A1(value_low[2]), .A2(n25), .ZN(n63) );
  INVD1 U33 ( .I(value_low[1]), .ZN(n25) );
  OAI22D1 U34 ( .A1(n89), .A2(n40), .B1(n90), .B2(n91), .ZN(n88) );
  AOI22D1 U35 ( .A1(n6), .A2(n29), .B1(n13), .B2(n28), .ZN(n90) );
  ND2D1 U37 ( .A1(value_low[2]), .A2(value_low[1]), .ZN(n49) );
  INVD1 U39 ( .I(index[0]), .ZN(n29) );
  ND2D1 U40 ( .A1(value_low[1]), .A2(n29), .ZN(n46) );
  INVD1 U41 ( .I(n78), .ZN(n12) );
  INVD1 U42 ( .I(value_low[3]), .ZN(n16) );
  OAI21D1 U43 ( .A1(index[0]), .A2(n16), .B(n83), .ZN(n42) );
  ND2D1 U44 ( .A1(index[0]), .A2(n16), .ZN(n83) );
  NR2D1 U46 ( .A1(n49), .A2(value_low[3]), .ZN(n43) );
  NR2D1 U47 ( .A1(n83), .A2(value_low[1]), .ZN(n41) );
  ND2D1 U48 ( .A1(value_low[3]), .A2(index[0]), .ZN(n95) );
  OAI21D1 U49 ( .A1(index[2]), .A2(n29), .B(value_low[3]), .ZN(n99) );
  OAI222D0 U59 ( .A1(n71), .A2(n92), .B1(n93), .B2(index[2]), .C1(n94), .C2(
        n95), .ZN(n86) );
  AOI22D1 U60 ( .A1(n15), .A2(n25), .B1(n24), .B2(index[1]), .ZN(n93) );
  AOI222D0 U61 ( .A1(n6), .A2(n22), .B1(n24), .B2(n5), .C1(index[2]), .C2(
        value_low[1]), .ZN(n94) );
  ND2D1 U62 ( .A1(n84), .A2(n85), .ZN(x_error[1]) );
  AOI33D1 U63 ( .A1(index[1]), .A2(n23), .A3(n17), .B1(n6), .B2(n20), .B3(n15), 
        .ZN(n84) );
  OAI31D1 U64 ( .A1(n86), .A2(n87), .A3(n88), .B(value_low[0]), .ZN(n85) );
  OAI221D0 U65 ( .A1(value_low[0]), .A2(n96), .B1(n97), .B2(n27), .C(n98), 
        .ZN(x_error[0]) );
  AOI31D1 U66 ( .A1(n23), .A2(n99), .A3(n6), .B(n100), .ZN(n98) );
  AOI221D0 U67 ( .A1(n26), .A2(index[1]), .B1(n43), .B2(index[1]), .C(n121), 
        .ZN(n96) );
  NR2D1 U69 ( .A1(n103), .A2(n104), .ZN(n97) );
  AOI22D1 U73 ( .A1(n18), .A2(n108), .B1(value_low[3]), .B2(n109), .ZN(n107)
         );
  INVD1 U75 ( .I(index[2]), .ZN(n13) );
  ND2D1 U77 ( .A1(index[0]), .A2(value_low[1]), .ZN(n124) );
  AOI22D1 U78 ( .A1(n15), .A2(value_low[2]), .B1(value_low[3]), .B2(n125), 
        .ZN(n122) );
  OAI21D1 U79 ( .A1(n29), .A2(n63), .B(n31), .ZN(n125) );
  OAI221D0 U80 ( .A1(n117), .A2(n12), .B1(n118), .B2(n65), .C(n119), .ZN(n103)
         );
  AOI21D1 U81 ( .A1(value_low[2]), .A2(n29), .B(n41), .ZN(n117) );
  AOI21D1 U82 ( .A1(index[0]), .A2(n22), .B(n20), .ZN(n118) );
  AOI21D1 U86 ( .A1(index[2]), .A2(n29), .B(value_low[3]), .ZN(n114) );
  NR2D1 U87 ( .A1(n71), .A2(index[1]), .ZN(n78) );
  INVD1 U91 ( .I(value_low[0]), .ZN(n27) );
  OAI221D0 U111 ( .A1(index[2]), .A2(n110), .B1(n46), .B2(n65), .C(n111), .ZN(
        n109) );
  ND2D1 U113 ( .A1(n20), .A2(n29), .ZN(n110) );
  OA21D0 U1 ( .A1(n113), .A2(n31), .B(n102), .Z(n89) );
  IND2D0 U2 ( .A1(index[2]), .B1(n28), .ZN(n112) );
  CKND0 U5 ( .I(index[1]), .ZN(n28) );
  CKND0 U7 ( .I(index[1]), .ZN(n38) );
  CKND0 U8 ( .I(index[2]), .ZN(n40) );
  OAI21D0 U16 ( .A1(index[1]), .A2(n124), .B(n122), .ZN(n121) );
  OAI21D0 U21 ( .A1(n105), .A2(n63), .B(n107), .ZN(n104) );
  NR3D0 U22 ( .A1(n102), .A2(n83), .A3(index[2]), .ZN(n100) );
  ND3D0 U23 ( .A1(n42), .A2(index[1]), .A3(n20), .ZN(n119) );
  AOI21D0 U24 ( .A1(n42), .A2(n116), .B(n78), .ZN(n105) );
  CKND2D0 U25 ( .A1(n71), .A2(index[1]), .ZN(n116) );
  OAI22D0 U26 ( .A1(n114), .A2(n38), .B1(n112), .B2(n113), .ZN(n108) );
  INVD1 U27 ( .I(index[2]), .ZN(n71) );
  IND3D0 U28 ( .A1(n92), .B1(index[2]), .B2(index[0]), .ZN(n111) );
  CKND2D0 U36 ( .A1(n23), .A2(index[1]), .ZN(n92) );
endmodule


module oadm_multilevel_rounding_lut_1 ( level, index, value_low, x_error, 
        y_error );
  input [1:0] level;
  input [2:0] index;
  input [3:0] value_low;
  output [1:0] x_error;
  output [1:0] y_error;
  wire   n1, n5, n6, n12, n16, n17, n18, n19, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n126, n127, n129, n130, n132, n133, n134, n135, n137,
         n138, n139, n140, n141, n142, n143, n144, n146, n147, n148, n149,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n173, n180, n181, n186,
         n188, n202, n205, n208, n209, n210, n211, n213, n220, n222;

  INVD1 U3 ( .I(n138), .ZN(n17) );
  INVD1 U4 ( .I(n160), .ZN(n23) );
  AOI33D1 U6 ( .A1(index[1]), .A2(n26), .A3(n21), .B1(n6), .B2(n24), .B3(n17), 
        .ZN(n167) );
  INVD1 U7 ( .I(n220), .ZN(n24) );
  ND2D1 U9 ( .A1(n24), .A2(n19), .ZN(n141) );
  INVD1 U11 ( .I(index[2]), .ZN(n5) );
  INVD1 U12 ( .I(index[1]), .ZN(n6) );
  ND2D1 U13 ( .A1(n24), .A2(n16), .ZN(n149) );
  INVD1 U14 ( .I(n188), .ZN(n27) );
  INVD1 U15 ( .I(n202), .ZN(n26) );
  ND2D1 U16 ( .A1(n19), .A2(n22), .ZN(n138) );
  ND2D1 U17 ( .A1(n28), .A2(n25), .ZN(n160) );
  ND2D1 U19 ( .A1(n208), .A2(index[1]), .ZN(n181) );
  INVD1 U20 ( .I(n156), .ZN(n21) );
  ND2D1 U26 ( .A1(n1), .A2(index[1]), .ZN(n186) );
  INVD1 U28 ( .I(value_low[2]), .ZN(n25) );
  ND2D1 U29 ( .A1(value_low[1]), .A2(n25), .ZN(n220) );
  AOI222D0 U30 ( .A1(n6), .A2(n25), .B1(n27), .B2(n5), .C1(index[2]), .C2(
        value_low[1]), .ZN(n157) );
  AOI22D1 U35 ( .A1(n17), .A2(value_low[2]), .B1(value_low[3]), .B2(n126), 
        .ZN(n129) );
  OAI21D1 U36 ( .A1(n19), .A2(n188), .B(n220), .ZN(n126) );
  ND2D1 U37 ( .A1(value_low[2]), .A2(n28), .ZN(n188) );
  INVD1 U38 ( .I(value_low[1]), .ZN(n28) );
  ND2D1 U39 ( .A1(value_low[2]), .A2(value_low[1]), .ZN(n202) );
  AOI21D1 U41 ( .A1(index[2]), .A2(n19), .B(value_low[3]), .ZN(n137) );
  AOI21D1 U42 ( .A1(index[0]), .A2(n25), .B(n24), .ZN(n133) );
  INVD1 U43 ( .I(index[0]), .ZN(n19) );
  ND2D1 U44 ( .A1(value_low[1]), .A2(n19), .ZN(n205) );
  AOI22D1 U45 ( .A1(n17), .A2(n28), .B1(n27), .B2(index[1]), .ZN(n158) );
  INVD1 U46 ( .I(value_low[3]), .ZN(n22) );
  AOI22D1 U47 ( .A1(n6), .A2(n19), .B1(n1), .B2(n16), .ZN(n161) );
  OAI21D1 U48 ( .A1(index[0]), .A2(n22), .B(n168), .ZN(n209) );
  ND2D1 U49 ( .A1(index[0]), .A2(n22), .ZN(n168) );
  INVD1 U50 ( .I(n173), .ZN(n12) );
  NR2D1 U52 ( .A1(n168), .A2(value_low[1]), .ZN(n210) );
  NR2D1 U53 ( .A1(n202), .A2(value_low[3]), .ZN(n208) );
  ND2D1 U54 ( .A1(value_low[3]), .A2(index[0]), .ZN(n156) );
  NR2D1 U63 ( .A1(n148), .A2(n147), .ZN(n154) );
  OAI221D0 U64 ( .A1(n134), .A2(n12), .B1(n133), .B2(n186), .C(n132), .ZN(n148) );
  AOI21D1 U66 ( .A1(value_low[2]), .A2(n19), .B(n210), .ZN(n134) );
  AOI22D1 U67 ( .A1(n23), .A2(n143), .B1(value_low[3]), .B2(n142), .ZN(n144)
         );
  OAI221D0 U70 ( .A1(index[2]), .A2(n141), .B1(n205), .B2(n186), .C(n140), 
        .ZN(n142) );
  ND2D1 U71 ( .A1(n16), .A2(n1), .ZN(n139) );
  OAI31D1 U73 ( .A1(n165), .A2(n164), .A3(n163), .B(value_low[0]), .ZN(n166)
         );
  OAI31D1 U75 ( .A1(n209), .A2(n25), .A3(n213), .B(n181), .ZN(n164) );
  OAI22D1 U76 ( .A1(n162), .A2(n211), .B1(n161), .B2(n160), .ZN(n163) );
  OAI222D0 U77 ( .A1(n180), .A2(n159), .B1(n158), .B2(index[2]), .C1(n157), 
        .C2(n156), .ZN(n165) );
  AOI221D0 U78 ( .A1(n18), .A2(index[1]), .B1(n208), .B2(index[1]), .C(n130), 
        .ZN(n155) );
  INVD1 U79 ( .I(n205), .ZN(n18) );
  ND2D1 U81 ( .A1(index[0]), .A2(value_low[1]), .ZN(n127) );
  NR2D1 U85 ( .A1(n180), .A2(index[1]), .ZN(n173) );
  AOI31D1 U86 ( .A1(n26), .A2(n152), .A3(n6), .B(n151), .ZN(n153) );
  OAI21D1 U87 ( .A1(index[2]), .A2(n19), .B(value_low[3]), .ZN(n152) );
  INVD1 U90 ( .I(value_low[0]), .ZN(n29) );
  OAI221D0 U109 ( .A1(value_low[0]), .A2(n155), .B1(n154), .B2(n29), .C(n153), 
        .ZN(x_error[0]) );
  ND2D1 U113 ( .A1(n167), .A2(n166), .ZN(x_error[1]) );
  OA21D0 U1 ( .A1(n138), .A2(n220), .B(n149), .Z(n162) );
  CKND0 U2 ( .I(index[1]), .ZN(n213) );
  CKND0 U5 ( .I(index[2]), .ZN(n211) );
  CKND0 U8 ( .I(index[2]), .ZN(n1) );
  OAI21D0 U10 ( .A1(index[1]), .A2(n127), .B(n129), .ZN(n130) );
  OAI21D0 U18 ( .A1(n146), .A2(n188), .B(n144), .ZN(n147) );
  NR3D0 U21 ( .A1(index[2]), .A2(n149), .A3(n168), .ZN(n151) );
  ND3D0 U22 ( .A1(n209), .A2(index[1]), .A3(n24), .ZN(n132) );
  AOI21D0 U23 ( .A1(n209), .A2(n135), .B(n173), .ZN(n146) );
  CKND2D0 U24 ( .A1(n180), .A2(index[1]), .ZN(n135) );
  OAI22D0 U25 ( .A1(n137), .A2(n213), .B1(n139), .B2(n138), .ZN(n143) );
  INVD1 U27 ( .I(index[2]), .ZN(n180) );
  CKND0 U31 ( .I(index[1]), .ZN(n16) );
  ND3D0 U32 ( .A1(n222), .A2(index[0]), .A3(index[2]), .ZN(n140) );
  CKND0 U33 ( .I(n159), .ZN(n222) );
  CKND2D0 U34 ( .A1(n26), .A2(index[1]), .ZN(n159) );
endmodule


module oadm_fixed_plane_centered_LEVEL3_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [28:0] A;
  input [28:0] B;
  output [28:0] DIFF;
  input CI;
  output CO;
  wire   DIFF_26_, DIFF_25_, n16, n27, n28;
  wire   [26:1] carry;

  FA1D0 U2_1 ( .A(A[1]), .B(n27), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  FA1D0 U2_2 ( .A(A[2]), .B(n28), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  INVD1 U48 ( .I(B[2]), .ZN(n28) );
  INVD1 U49 ( .I(B[1]), .ZN(n27) );
  XNR2D1 U53 ( .A1(carry[10]), .A2(A[10]), .ZN(DIFF[10]) );
  XNR2D1 U54 ( .A1(carry[11]), .A2(A[11]), .ZN(DIFF[11]) );
  XNR2D1 U55 ( .A1(carry[12]), .A2(A[12]), .ZN(DIFF[12]) );
  XNR2D1 U56 ( .A1(carry[13]), .A2(A[13]), .ZN(DIFF[13]) );
  XNR2D1 U57 ( .A1(carry[14]), .A2(A[14]), .ZN(DIFF[14]) );
  XNR2D1 U58 ( .A1(carry[15]), .A2(A[15]), .ZN(DIFF[15]) );
  XNR2D1 U59 ( .A1(carry[16]), .A2(A[16]), .ZN(DIFF[16]) );
  XNR2D1 U60 ( .A1(carry[17]), .A2(A[17]), .ZN(DIFF[17]) );
  XNR2D1 U61 ( .A1(carry[18]), .A2(A[18]), .ZN(DIFF[18]) );
  XNR2D1 U62 ( .A1(carry[19]), .A2(A[19]), .ZN(DIFF[19]) );
  XNR2D1 U63 ( .A1(carry[20]), .A2(A[20]), .ZN(DIFF[20]) );
  XNR2D1 U64 ( .A1(carry[21]), .A2(A[21]), .ZN(DIFF[21]) );
  XNR2D1 U65 ( .A1(carry[22]), .A2(A[22]), .ZN(DIFF[22]) );
  XNR2D1 U66 ( .A1(carry[23]), .A2(A[23]), .ZN(DIFF[23]) );
  XNR2D1 U67 ( .A1(carry[24]), .A2(A[24]), .ZN(DIFF[24]) );
  XNR2D1 U70 ( .A1(carry[3]), .A2(A[3]), .ZN(DIFF[3]) );
  XNR2D1 U71 ( .A1(carry[4]), .A2(A[4]), .ZN(DIFF[4]) );
  XNR2D1 U72 ( .A1(carry[5]), .A2(A[5]), .ZN(DIFF[5]) );
  XNR2D1 U73 ( .A1(carry[6]), .A2(A[6]), .ZN(DIFF[6]) );
  XNR2D1 U74 ( .A1(carry[7]), .A2(A[7]), .ZN(DIFF[7]) );
  XNR2D1 U75 ( .A1(carry[8]), .A2(A[8]), .ZN(DIFF[8]) );
  XNR2D1 U76 ( .A1(carry[9]), .A2(A[9]), .ZN(DIFF[9]) );
  OR2D0 U4 ( .A1(carry[23]), .A2(A[23]), .Z(carry[24]) );
  CKXOR2D0 U5 ( .A1(A[0]), .A2(B[0]), .Z(DIFF[0]) );
  OR2D0 U6 ( .A1(carry[22]), .A2(A[22]), .Z(carry[23]) );
  OR2D0 U7 ( .A1(carry[21]), .A2(A[21]), .Z(carry[22]) );
  OR2D0 U8 ( .A1(carry[20]), .A2(A[20]), .Z(carry[21]) );
  OR2D0 U9 ( .A1(carry[19]), .A2(A[19]), .Z(carry[20]) );
  OR2D0 U10 ( .A1(carry[18]), .A2(A[18]), .Z(carry[19]) );
  OR2D0 U11 ( .A1(carry[17]), .A2(A[17]), .Z(carry[18]) );
  OR2D0 U12 ( .A1(carry[16]), .A2(A[16]), .Z(carry[17]) );
  OR2D0 U13 ( .A1(carry[15]), .A2(A[15]), .Z(carry[16]) );
  OR2D0 U14 ( .A1(carry[14]), .A2(A[14]), .Z(carry[15]) );
  OR2D0 U15 ( .A1(carry[13]), .A2(A[13]), .Z(carry[14]) );
  OR2D0 U16 ( .A1(carry[12]), .A2(A[12]), .Z(carry[13]) );
  OR2D0 U17 ( .A1(carry[11]), .A2(A[11]), .Z(carry[12]) );
  OR2D0 U18 ( .A1(carry[10]), .A2(A[10]), .Z(carry[11]) );
  OR2D0 U19 ( .A1(carry[9]), .A2(A[9]), .Z(carry[10]) );
  OR2D0 U20 ( .A1(carry[8]), .A2(A[8]), .Z(carry[9]) );
  OR2D0 U21 ( .A1(carry[7]), .A2(A[7]), .Z(carry[8]) );
  OR2D0 U22 ( .A1(carry[6]), .A2(A[6]), .Z(carry[7]) );
  OR2D0 U23 ( .A1(carry[5]), .A2(A[5]), .Z(carry[6]) );
  OR2D0 U24 ( .A1(carry[4]), .A2(A[4]), .Z(carry[5]) );
  OR2D0 U25 ( .A1(carry[3]), .A2(A[3]), .Z(carry[4]) );
  IND2D0 U26 ( .A1(A[0]), .B1(B[0]), .ZN(carry[1]) );
endmodule


module oadm_fixed_plane_centered_LEVEL3_DW_mult_tc_1 ( a, b, product );
  input [19:0] a;
  input [5:0] b;
  output [25:0] product;
  wire   n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n41, n43, n44, n45, n46, n47,
         n49, n50, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n129, n278,
         n279, n280, n281, n282, n283, n284, n285, n286, n287, n288, n289,
         n290, n291, n292, n293, n294, n295, n296, n297, n299, n300, n301,
         n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, n312,
         n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n324,
         n325, n326, n327, n328, n329, n330, n331, n332, n333, n334, n335,
         n336, n337, n338, n339, n340, n341, n342, n343, n344, n345, n346,
         n347, n348, n349, n351, n352, n353;

  FA1D0 U18 ( .A(n321), .B(n41), .CI(n18), .CO(n17), .S(product[24]) );
  FA1D0 U19 ( .A(n43), .B(n297), .CI(n19), .CO(n18), .S(product[23]) );
  FA1D0 U20 ( .A(n45), .B(n44), .CI(n20), .CO(n19), .S(product[22]) );
  FA1D0 U21 ( .A(n49), .B(n46), .CI(n21), .CO(n20), .S(product[21]) );
  FA1D0 U22 ( .A(n50), .B(n52), .CI(n22), .CO(n21), .S(product[20]) );
  FA1D0 U23 ( .A(n54), .B(n53), .CI(n23), .CO(n22), .S(product[19]) );
  FA1D0 U24 ( .A(n56), .B(n55), .CI(n24), .CO(n23), .S(product[18]) );
  FA1D0 U25 ( .A(n58), .B(n57), .CI(n25), .CO(n24), .S(product[17]) );
  FA1D0 U26 ( .A(n60), .B(n59), .CI(n26), .CO(n25), .S(product[16]) );
  FA1D0 U27 ( .A(n62), .B(n61), .CI(n27), .CO(n26), .S(product[15]) );
  FA1D0 U28 ( .A(n64), .B(n63), .CI(n28), .CO(n27), .S(product[14]) );
  FA1D0 U29 ( .A(n66), .B(n65), .CI(n29), .CO(n28), .S(product[13]) );
  FA1D0 U30 ( .A(n68), .B(n67), .CI(n30), .CO(n29), .S(product[12]) );
  FA1D0 U31 ( .A(n70), .B(n69), .CI(n31), .CO(n30), .S(product[11]) );
  FA1D0 U32 ( .A(n72), .B(n71), .CI(n32), .CO(n31), .S(product[10]) );
  FA1D0 U33 ( .A(n74), .B(n73), .CI(n33), .CO(n32), .S(product[9]) );
  FA1D0 U34 ( .A(n76), .B(n75), .CI(n34), .CO(n33), .S(product[8]) );
  FA1D0 U35 ( .A(n78), .B(n77), .CI(n35), .CO(n34), .S(product[7]) );
  FA1D0 U36 ( .A(n80), .B(n79), .CI(n36), .CO(n35), .S(product[6]) );
  FA1D0 U37 ( .A(n82), .B(n81), .CI(n37), .CO(n36), .S(product[5]) );
  FA1D0 U38 ( .A(n83), .B(n84), .CI(n38), .CO(n37), .S(product[4]) );
  FA1D0 U43 ( .A(n89), .B(n47), .CI(n107), .CO(n43), .S(n44) );
  FA1D0 U44 ( .A(n108), .B(n90), .CI(n296), .CO(n45), .S(n46) );
  FA1D0 U46 ( .A(n301), .B(n109), .CI(n296), .CO(n49), .S(n50) );
  FA1D0 U48 ( .A(n129), .B(n91), .CI(n110), .CO(n52), .S(n53) );
  FA1D0 U49 ( .A(n292), .B(n92), .CI(n111), .CO(n54), .S(n55) );
  FA1D0 U50 ( .A(n291), .B(n93), .CI(n112), .CO(n56), .S(n57) );
  FA1D0 U51 ( .A(n290), .B(n94), .CI(n113), .CO(n58), .S(n59) );
  FA1D0 U52 ( .A(n289), .B(n95), .CI(n114), .CO(n60), .S(n61) );
  FA1D0 U53 ( .A(n288), .B(n96), .CI(n115), .CO(n62), .S(n63) );
  FA1D0 U54 ( .A(n287), .B(n97), .CI(n116), .CO(n64), .S(n65) );
  FA1D0 U55 ( .A(n286), .B(n98), .CI(n117), .CO(n66), .S(n67) );
  FA1D0 U56 ( .A(n285), .B(n99), .CI(n118), .CO(n68), .S(n69) );
  FA1D0 U57 ( .A(n284), .B(n100), .CI(n119), .CO(n70), .S(n71) );
  FA1D0 U58 ( .A(n283), .B(n101), .CI(n120), .CO(n72), .S(n73) );
  FA1D0 U59 ( .A(n282), .B(n102), .CI(n121), .CO(n74), .S(n75) );
  FA1D0 U60 ( .A(n281), .B(n103), .CI(n122), .CO(n76), .S(n77) );
  FA1D0 U61 ( .A(n280), .B(n104), .CI(n123), .CO(n78), .S(n79) );
  FA1D0 U62 ( .A(n279), .B(n105), .CI(n124), .CO(n80), .S(n81) );
  FA1D0 U63 ( .A(n278), .B(n106), .CI(n125), .CO(n82), .S(n83) );
  HA1D0 U64 ( .A(n126), .B(n293), .CO(n84), .S(n85) );
  CKXOR2D1 U206 ( .A1(n302), .A2(n309), .Z(n278) );
  CKXOR2D1 U207 ( .A1(n302), .A2(n308), .Z(n279) );
  CKXOR2D1 U208 ( .A1(n302), .A2(n307), .Z(n280) );
  CKXOR2D1 U209 ( .A1(n302), .A2(n306), .Z(n281) );
  CKXOR2D1 U210 ( .A1(n302), .A2(n305), .Z(n282) );
  CKXOR2D1 U211 ( .A1(n302), .A2(n304), .Z(n283) );
  CKXOR2D1 U212 ( .A1(n302), .A2(n320), .Z(n284) );
  CKXOR2D1 U213 ( .A1(n302), .A2(n319), .Z(n285) );
  CKXOR2D1 U214 ( .A1(n302), .A2(n318), .Z(n286) );
  CKXOR2D1 U215 ( .A1(n302), .A2(n317), .Z(n287) );
  CKXOR2D1 U216 ( .A1(n302), .A2(n316), .Z(n288) );
  CKXOR2D1 U217 ( .A1(n302), .A2(n315), .Z(n289) );
  CKXOR2D1 U218 ( .A1(n302), .A2(n314), .Z(n290) );
  CKXOR2D1 U219 ( .A1(n302), .A2(n313), .Z(n291) );
  CKXOR2D1 U220 ( .A1(n302), .A2(n312), .Z(n292) );
  INVD1 U221 ( .I(n295), .ZN(n294) );
  INVD1 U222 ( .I(n41), .ZN(n297) );
  INVD1 U224 ( .I(n47), .ZN(n296) );
  CKXOR2D1 U225 ( .A1(n302), .A2(n310), .Z(n293) );
  INVD1 U226 ( .I(b[3]), .ZN(n295) );
  INVD1 U227 ( .I(n330), .ZN(n299) );
  INVD1 U228 ( .I(n328), .ZN(n300) );
  INVD1 U229 ( .I(n129), .ZN(n301) );
  INVD1 U232 ( .I(b[1]), .ZN(n302) );
  INVD1 U233 ( .I(a[0]), .ZN(n322) );
  INVD1 U234 ( .I(a[4]), .ZN(n309) );
  INVD1 U235 ( .I(a[3]), .ZN(n310) );
  INVD1 U236 ( .I(a[2]), .ZN(n311) );
  INVD1 U237 ( .I(a[1]), .ZN(n303) );
  INVD1 U238 ( .I(a[5]), .ZN(n308) );
  INVD1 U239 ( .I(a[6]), .ZN(n307) );
  INVD1 U240 ( .I(a[7]), .ZN(n306) );
  INVD1 U241 ( .I(a[8]), .ZN(n305) );
  INVD1 U242 ( .I(a[9]), .ZN(n304) );
  INVD1 U243 ( .I(a[10]), .ZN(n320) );
  INVD1 U244 ( .I(a[11]), .ZN(n319) );
  INVD1 U245 ( .I(a[12]), .ZN(n318) );
  INVD1 U246 ( .I(a[13]), .ZN(n317) );
  INVD1 U247 ( .I(a[14]), .ZN(n316) );
  INVD1 U248 ( .I(a[15]), .ZN(n315) );
  INVD1 U249 ( .I(a[16]), .ZN(n314) );
  INVD1 U250 ( .I(a[17]), .ZN(n313) );
  INVD1 U251 ( .I(a[18]), .ZN(n312) );
  INVD1 U252 ( .I(a[19]), .ZN(n321) );
  CKND0 U253 ( .I(n17), .ZN(product[25]) );
  OAI22D0 U254 ( .A1(n295), .A2(n307), .B1(b[3]), .B2(n306), .ZN(n99) );
  OAI22D0 U255 ( .A1(n306), .A2(n295), .B1(b[3]), .B2(n305), .ZN(n98) );
  OAI22D0 U256 ( .A1(n295), .A2(n305), .B1(b[3]), .B2(n304), .ZN(n97) );
  OAI22D0 U257 ( .A1(n295), .A2(n304), .B1(b[3]), .B2(n320), .ZN(n96) );
  OAI22D0 U258 ( .A1(n295), .A2(n320), .B1(b[3]), .B2(n319), .ZN(n95) );
  OAI22D0 U259 ( .A1(n295), .A2(n319), .B1(b[3]), .B2(n318), .ZN(n94) );
  OAI22D0 U260 ( .A1(n295), .A2(n318), .B1(b[3]), .B2(n317), .ZN(n93) );
  OAI22D0 U261 ( .A1(n295), .A2(n317), .B1(b[3]), .B2(n316), .ZN(n92) );
  OAI22D0 U262 ( .A1(n295), .A2(n316), .B1(b[3]), .B2(n315), .ZN(n91) );
  OAI22D0 U263 ( .A1(n295), .A2(n314), .B1(b[3]), .B2(n313), .ZN(n90) );
  OAI22D0 U264 ( .A1(n295), .A2(n313), .B1(b[3]), .B2(n312), .ZN(n89) );
  OAI22D0 U265 ( .A1(n295), .A2(n315), .B1(b[3]), .B2(n314), .ZN(n47) );
  OAI22D0 U266 ( .A1(n295), .A2(n312), .B1(n294), .B2(n321), .ZN(n41) );
  AOI32D0 U268 ( .A1(n294), .A2(n322), .A3(n300), .B1(n294), .B2(n299), .ZN(
        n324) );
  NR3D0 U270 ( .A1(n302), .A2(a[1]), .A3(n327), .ZN(n326) );
  NR2D0 U271 ( .A1(n327), .A2(n328), .ZN(n325) );
  XNR2D0 U272 ( .A1(n302), .A2(n311), .ZN(n327) );
  XNR2D0 U273 ( .A1(n302), .A2(a[19]), .ZN(n129) );
  OAI22D0 U274 ( .A1(n329), .A2(n330), .B1(n328), .B2(n331), .ZN(n126) );
  XNR2D0 U275 ( .A1(n294), .A2(a[0]), .ZN(n329) );
  OAI22D0 U276 ( .A1(n331), .A2(n330), .B1(n328), .B2(n332), .ZN(n125) );
  XNR2D0 U277 ( .A1(n294), .A2(a[1]), .ZN(n331) );
  OAI22D0 U278 ( .A1(n332), .A2(n330), .B1(n328), .B2(n333), .ZN(n124) );
  XNR2D0 U279 ( .A1(n294), .A2(a[2]), .ZN(n332) );
  OAI22D0 U280 ( .A1(n333), .A2(n330), .B1(n328), .B2(n334), .ZN(n123) );
  XNR2D0 U281 ( .A1(n294), .A2(a[3]), .ZN(n333) );
  OAI22D0 U282 ( .A1(n334), .A2(n330), .B1(n328), .B2(n335), .ZN(n122) );
  XNR2D0 U283 ( .A1(n294), .A2(a[4]), .ZN(n334) );
  OAI22D0 U284 ( .A1(n335), .A2(n330), .B1(n328), .B2(n336), .ZN(n121) );
  XNR2D0 U285 ( .A1(n294), .A2(a[5]), .ZN(n335) );
  OAI22D0 U286 ( .A1(n336), .A2(n330), .B1(n328), .B2(n337), .ZN(n120) );
  XNR2D0 U287 ( .A1(n294), .A2(a[6]), .ZN(n336) );
  OAI22D0 U288 ( .A1(n337), .A2(n330), .B1(n328), .B2(n338), .ZN(n119) );
  XNR2D0 U289 ( .A1(n294), .A2(a[7]), .ZN(n337) );
  OAI22D0 U290 ( .A1(n338), .A2(n330), .B1(n328), .B2(n339), .ZN(n118) );
  XNR2D0 U291 ( .A1(b[3]), .A2(a[8]), .ZN(n338) );
  OAI22D0 U292 ( .A1(n339), .A2(n330), .B1(n328), .B2(n340), .ZN(n117) );
  XNR2D0 U293 ( .A1(b[3]), .A2(a[9]), .ZN(n339) );
  OAI22D0 U294 ( .A1(n340), .A2(n330), .B1(n328), .B2(n341), .ZN(n116) );
  XNR2D0 U295 ( .A1(b[3]), .A2(a[10]), .ZN(n340) );
  OAI22D0 U296 ( .A1(n341), .A2(n330), .B1(n328), .B2(n342), .ZN(n115) );
  XNR2D0 U297 ( .A1(b[3]), .A2(a[11]), .ZN(n341) );
  OAI22D0 U298 ( .A1(n342), .A2(n330), .B1(n328), .B2(n343), .ZN(n114) );
  XNR2D0 U299 ( .A1(b[3]), .A2(a[12]), .ZN(n342) );
  OAI22D0 U300 ( .A1(n343), .A2(n330), .B1(n328), .B2(n344), .ZN(n113) );
  XNR2D0 U301 ( .A1(b[3]), .A2(a[13]), .ZN(n343) );
  OAI22D0 U302 ( .A1(n344), .A2(n330), .B1(n328), .B2(n345), .ZN(n112) );
  XNR2D0 U303 ( .A1(b[3]), .A2(a[14]), .ZN(n344) );
  OAI22D0 U304 ( .A1(n345), .A2(n330), .B1(n328), .B2(n346), .ZN(n111) );
  XNR2D0 U305 ( .A1(b[3]), .A2(a[15]), .ZN(n345) );
  OAI22D0 U306 ( .A1(n346), .A2(n330), .B1(n328), .B2(n347), .ZN(n110) );
  XNR2D0 U307 ( .A1(b[3]), .A2(a[16]), .ZN(n346) );
  OAI22D0 U308 ( .A1(n347), .A2(n330), .B1(n328), .B2(n348), .ZN(n109) );
  XNR2D0 U309 ( .A1(b[3]), .A2(a[17]), .ZN(n347) );
  MOAI22D0 U310 ( .A1(n348), .A2(n330), .B1(n300), .B2(n349), .ZN(n108) );
  XNR2D0 U311 ( .A1(b[3]), .A2(a[18]), .ZN(n348) );
  OAI21D0 U312 ( .A1(n299), .A2(n300), .B(n349), .ZN(n107) );
  XNR2D0 U313 ( .A1(b[3]), .A2(n321), .ZN(n349) );
  NR2D0 U315 ( .A1(n294), .A2(n322), .ZN(n106) );
  OAI22D0 U316 ( .A1(n295), .A2(n322), .B1(n294), .B2(n303), .ZN(n105) );
  OAI22D0 U317 ( .A1(n295), .A2(n303), .B1(n294), .B2(n311), .ZN(n104) );
  OAI22D0 U318 ( .A1(n295), .A2(n311), .B1(n294), .B2(n310), .ZN(n103) );
  OAI22D0 U319 ( .A1(n295), .A2(n310), .B1(n294), .B2(n309), .ZN(n102) );
  OAI22D0 U320 ( .A1(n295), .A2(n309), .B1(n294), .B2(n308), .ZN(n101) );
  OAI22D0 U321 ( .A1(n295), .A2(n308), .B1(n294), .B2(n307), .ZN(n100) );
  MAOI222D0 U223 ( .A(n324), .B(n352), .C(n351), .ZN(n38) );
  CKND0 U230 ( .I(n85), .ZN(n351) );
  MUX2ND0 U231 ( .I0(n325), .I1(n326), .S(n322), .ZN(n352) );
  OAI211D1 U267 ( .A1(b[2]), .A2(n294), .B(n328), .C(n353), .ZN(n330) );
  CKND2D0 U269 ( .A1(b[2]), .A2(n294), .ZN(n353) );
  CKXOR2D0 U314 ( .A1(b[2]), .A2(n302), .Z(n328) );
endmodule


module oadm_fixed_plane_centered_LEVEL3_DW01_add_5_DW01_add_7 ( A, B, CI, SUM, 
        CO );
  input [27:0] A;
  input [27:0] B;
  output [27:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [27:2] carry;

  FA1D0 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  FA1D0 U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  FA1D0 U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  FA1D0 U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  XOR3D1 U1_27 ( .A1(A[27]), .A2(B[27]), .A3(carry[27]), .Z(SUM[27]) );
  FA1D0 U1_25 ( .A(A[25]), .B(B[25]), .CI(carry[25]), .CO(carry[26]), .S(
        SUM[25]) );
  FA1D0 U1_26 ( .A(A[26]), .B(B[26]), .CI(carry[26]), .CO(carry[27]), .S(
        SUM[26]) );
  FA1D0 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
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
  FA1D0 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  FA1D0 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  FA1D0 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  FA1D0 U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  FA1D0 U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  FA1D0 U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  FA1D0 U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  FA1D0 U1_24 ( .A(A[24]), .B(B[24]), .CI(carry[24]), .CO(carry[25]), .S(
        SUM[24]) );
  FA1D0 U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  AN2XD1 U1 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
  CKXOR2D1 U2 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
endmodule


module oadm_fixed_plane_centered_LEVEL3_DW_mult_tc_0 ( a, b, product );
  input [19:0] a;
  input [5:0] b;
  output [25:0] product;
  wire   n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n41, n43, n44, n45, n46, n47,
         n49, n50, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n129, n278,
         n279, n280, n281, n282, n283, n284, n285, n286, n287, n288, n289,
         n290, n291, n292, n293, n294, n295, n297, n298, n299, n300, n301,
         n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, n312,
         n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n324,
         n325, n326, n327, n328, n329, n330, n331, n332, n333, n334, n335,
         n336, n337, n338, n339, n340, n341, n342, n343, n344, n345, n346,
         n347, n348, n349, n351, n352, n353;

  FA1D0 U18 ( .A(n318), .B(n41), .CI(n18), .CO(n17), .S(product[24]) );
  FA1D0 U19 ( .A(n43), .B(n306), .CI(n19), .CO(n18), .S(product[23]) );
  FA1D0 U20 ( .A(n45), .B(n44), .CI(n20), .CO(n19), .S(product[22]) );
  FA1D0 U21 ( .A(n49), .B(n46), .CI(n21), .CO(n20), .S(product[21]) );
  FA1D0 U22 ( .A(n50), .B(n52), .CI(n22), .CO(n21), .S(product[20]) );
  FA1D0 U23 ( .A(n54), .B(n53), .CI(n23), .CO(n22), .S(product[19]) );
  FA1D0 U24 ( .A(n56), .B(n55), .CI(n24), .CO(n23), .S(product[18]) );
  FA1D0 U25 ( .A(n58), .B(n57), .CI(n25), .CO(n24), .S(product[17]) );
  FA1D0 U26 ( .A(n60), .B(n59), .CI(n26), .CO(n25), .S(product[16]) );
  FA1D0 U27 ( .A(n62), .B(n61), .CI(n27), .CO(n26), .S(product[15]) );
  FA1D0 U28 ( .A(n64), .B(n63), .CI(n28), .CO(n27), .S(product[14]) );
  FA1D0 U29 ( .A(n66), .B(n65), .CI(n29), .CO(n28), .S(product[13]) );
  FA1D0 U30 ( .A(n68), .B(n67), .CI(n30), .CO(n29), .S(product[12]) );
  FA1D0 U31 ( .A(n70), .B(n69), .CI(n31), .CO(n30), .S(product[11]) );
  FA1D0 U32 ( .A(n72), .B(n71), .CI(n32), .CO(n31), .S(product[10]) );
  FA1D0 U33 ( .A(n74), .B(n73), .CI(n33), .CO(n32), .S(product[9]) );
  FA1D0 U34 ( .A(n76), .B(n75), .CI(n34), .CO(n33), .S(product[8]) );
  FA1D0 U35 ( .A(n78), .B(n77), .CI(n35), .CO(n34), .S(product[7]) );
  FA1D0 U36 ( .A(n80), .B(n79), .CI(n36), .CO(n35), .S(product[6]) );
  FA1D0 U37 ( .A(n82), .B(n81), .CI(n37), .CO(n36), .S(product[5]) );
  FA1D0 U38 ( .A(n83), .B(n84), .CI(n38), .CO(n37), .S(product[4]) );
  FA1D0 U43 ( .A(n89), .B(n47), .CI(n107), .CO(n43), .S(n44) );
  FA1D0 U44 ( .A(n108), .B(n90), .CI(n309), .CO(n45), .S(n46) );
  FA1D0 U46 ( .A(n317), .B(n109), .CI(n309), .CO(n49), .S(n50) );
  FA1D0 U48 ( .A(n129), .B(n91), .CI(n110), .CO(n52), .S(n53) );
  FA1D0 U49 ( .A(n292), .B(n92), .CI(n111), .CO(n54), .S(n55) );
  FA1D0 U50 ( .A(n291), .B(n93), .CI(n112), .CO(n56), .S(n57) );
  FA1D0 U51 ( .A(n290), .B(n94), .CI(n113), .CO(n58), .S(n59) );
  FA1D0 U52 ( .A(n289), .B(n95), .CI(n114), .CO(n60), .S(n61) );
  FA1D0 U53 ( .A(n288), .B(n96), .CI(n115), .CO(n62), .S(n63) );
  FA1D0 U54 ( .A(n287), .B(n97), .CI(n116), .CO(n64), .S(n65) );
  FA1D0 U55 ( .A(n286), .B(n98), .CI(n117), .CO(n66), .S(n67) );
  FA1D0 U56 ( .A(n285), .B(n99), .CI(n118), .CO(n68), .S(n69) );
  FA1D0 U57 ( .A(n284), .B(n100), .CI(n119), .CO(n70), .S(n71) );
  FA1D0 U58 ( .A(n283), .B(n101), .CI(n120), .CO(n72), .S(n73) );
  FA1D0 U59 ( .A(n282), .B(n102), .CI(n121), .CO(n74), .S(n75) );
  FA1D0 U60 ( .A(n281), .B(n103), .CI(n122), .CO(n76), .S(n77) );
  FA1D0 U61 ( .A(n280), .B(n104), .CI(n123), .CO(n78), .S(n79) );
  FA1D0 U62 ( .A(n279), .B(n105), .CI(n124), .CO(n80), .S(n81) );
  FA1D0 U63 ( .A(n278), .B(n106), .CI(n125), .CO(n82), .S(n83) );
  HA1D0 U64 ( .A(n126), .B(n293), .CO(n84), .S(n85) );
  CKXOR2D1 U206 ( .A1(n321), .A2(n303), .Z(n278) );
  CKXOR2D1 U207 ( .A1(n321), .A2(n302), .Z(n279) );
  CKXOR2D1 U208 ( .A1(n321), .A2(n301), .Z(n280) );
  CKXOR2D1 U209 ( .A1(n321), .A2(n300), .Z(n281) );
  CKXOR2D1 U210 ( .A1(n321), .A2(n299), .Z(n282) );
  CKXOR2D1 U211 ( .A1(n321), .A2(n298), .Z(n283) );
  CKXOR2D1 U212 ( .A1(n321), .A2(n316), .Z(n284) );
  CKXOR2D1 U213 ( .A1(n321), .A2(n315), .Z(n285) );
  CKXOR2D1 U214 ( .A1(n321), .A2(n314), .Z(n286) );
  CKXOR2D1 U215 ( .A1(n321), .A2(n313), .Z(n287) );
  CKXOR2D1 U216 ( .A1(n321), .A2(n312), .Z(n288) );
  CKXOR2D1 U217 ( .A1(n321), .A2(n311), .Z(n289) );
  CKXOR2D1 U218 ( .A1(n321), .A2(n310), .Z(n290) );
  CKXOR2D1 U219 ( .A1(n321), .A2(n308), .Z(n291) );
  CKXOR2D1 U220 ( .A1(n321), .A2(n307), .Z(n292) );
  INVD1 U221 ( .I(n295), .ZN(n294) );
  INVD1 U222 ( .I(b[3]), .ZN(n295) );
  INVD1 U223 ( .I(n41), .ZN(n306) );
  INVD1 U225 ( .I(n47), .ZN(n309) );
  CKXOR2D1 U226 ( .A1(n321), .A2(n304), .Z(n293) );
  INVD1 U227 ( .I(n330), .ZN(n319) );
  INVD1 U228 ( .I(n328), .ZN(n320) );
  INVD1 U229 ( .I(n129), .ZN(n317) );
  INVD1 U232 ( .I(b[1]), .ZN(n321) );
  INVD1 U233 ( .I(a[0]), .ZN(n322) );
  INVD1 U234 ( .I(a[3]), .ZN(n304) );
  INVD1 U235 ( .I(a[4]), .ZN(n303) );
  INVD1 U236 ( .I(a[2]), .ZN(n305) );
  INVD1 U237 ( .I(a[1]), .ZN(n297) );
  INVD1 U238 ( .I(a[5]), .ZN(n302) );
  INVD1 U239 ( .I(a[6]), .ZN(n301) );
  INVD1 U240 ( .I(a[7]), .ZN(n300) );
  INVD1 U241 ( .I(a[8]), .ZN(n299) );
  INVD1 U242 ( .I(a[9]), .ZN(n298) );
  INVD1 U243 ( .I(a[10]), .ZN(n316) );
  INVD1 U244 ( .I(a[11]), .ZN(n315) );
  INVD1 U245 ( .I(a[12]), .ZN(n314) );
  INVD1 U246 ( .I(a[13]), .ZN(n313) );
  INVD1 U247 ( .I(a[14]), .ZN(n312) );
  INVD1 U248 ( .I(a[15]), .ZN(n311) );
  INVD1 U249 ( .I(a[16]), .ZN(n310) );
  INVD1 U250 ( .I(a[17]), .ZN(n308) );
  INVD1 U251 ( .I(a[18]), .ZN(n307) );
  INVD1 U252 ( .I(a[19]), .ZN(n318) );
  CKND0 U253 ( .I(n17), .ZN(product[25]) );
  OAI22D0 U254 ( .A1(n295), .A2(n301), .B1(b[3]), .B2(n300), .ZN(n99) );
  OAI22D0 U255 ( .A1(n300), .A2(n295), .B1(b[3]), .B2(n299), .ZN(n98) );
  OAI22D0 U256 ( .A1(n295), .A2(n299), .B1(b[3]), .B2(n298), .ZN(n97) );
  OAI22D0 U257 ( .A1(n295), .A2(n298), .B1(b[3]), .B2(n316), .ZN(n96) );
  OAI22D0 U258 ( .A1(n295), .A2(n316), .B1(b[3]), .B2(n315), .ZN(n95) );
  OAI22D0 U259 ( .A1(n295), .A2(n315), .B1(b[3]), .B2(n314), .ZN(n94) );
  OAI22D0 U260 ( .A1(n295), .A2(n314), .B1(b[3]), .B2(n313), .ZN(n93) );
  OAI22D0 U261 ( .A1(n295), .A2(n313), .B1(b[3]), .B2(n312), .ZN(n92) );
  OAI22D0 U262 ( .A1(n295), .A2(n312), .B1(b[3]), .B2(n311), .ZN(n91) );
  OAI22D0 U263 ( .A1(n295), .A2(n310), .B1(b[3]), .B2(n308), .ZN(n90) );
  OAI22D0 U264 ( .A1(n295), .A2(n308), .B1(b[3]), .B2(n307), .ZN(n89) );
  OAI22D0 U265 ( .A1(n295), .A2(n311), .B1(b[3]), .B2(n310), .ZN(n47) );
  OAI22D0 U266 ( .A1(n295), .A2(n307), .B1(n294), .B2(n318), .ZN(n41) );
  AOI32D0 U268 ( .A1(n294), .A2(n322), .A3(n320), .B1(n294), .B2(n319), .ZN(
        n324) );
  NR3D0 U270 ( .A1(n321), .A2(a[1]), .A3(n327), .ZN(n326) );
  NR2D0 U271 ( .A1(n327), .A2(n328), .ZN(n325) );
  XNR2D0 U272 ( .A1(n321), .A2(n305), .ZN(n327) );
  XNR2D0 U273 ( .A1(n321), .A2(a[19]), .ZN(n129) );
  OAI22D0 U274 ( .A1(n329), .A2(n330), .B1(n328), .B2(n331), .ZN(n126) );
  XNR2D0 U275 ( .A1(n294), .A2(a[0]), .ZN(n329) );
  OAI22D0 U276 ( .A1(n331), .A2(n330), .B1(n328), .B2(n332), .ZN(n125) );
  XNR2D0 U277 ( .A1(n294), .A2(a[1]), .ZN(n331) );
  OAI22D0 U278 ( .A1(n332), .A2(n330), .B1(n328), .B2(n333), .ZN(n124) );
  XNR2D0 U279 ( .A1(n294), .A2(a[2]), .ZN(n332) );
  OAI22D0 U280 ( .A1(n333), .A2(n330), .B1(n328), .B2(n334), .ZN(n123) );
  XNR2D0 U281 ( .A1(n294), .A2(a[3]), .ZN(n333) );
  OAI22D0 U282 ( .A1(n334), .A2(n330), .B1(n328), .B2(n335), .ZN(n122) );
  XNR2D0 U283 ( .A1(n294), .A2(a[4]), .ZN(n334) );
  OAI22D0 U284 ( .A1(n335), .A2(n330), .B1(n328), .B2(n336), .ZN(n121) );
  XNR2D0 U285 ( .A1(n294), .A2(a[5]), .ZN(n335) );
  OAI22D0 U286 ( .A1(n336), .A2(n330), .B1(n328), .B2(n337), .ZN(n120) );
  XNR2D0 U287 ( .A1(n294), .A2(a[6]), .ZN(n336) );
  OAI22D0 U288 ( .A1(n337), .A2(n330), .B1(n328), .B2(n338), .ZN(n119) );
  XNR2D0 U289 ( .A1(n294), .A2(a[7]), .ZN(n337) );
  OAI22D0 U290 ( .A1(n338), .A2(n330), .B1(n328), .B2(n339), .ZN(n118) );
  XNR2D0 U291 ( .A1(b[3]), .A2(a[8]), .ZN(n338) );
  OAI22D0 U292 ( .A1(n339), .A2(n330), .B1(n328), .B2(n340), .ZN(n117) );
  XNR2D0 U293 ( .A1(b[3]), .A2(a[9]), .ZN(n339) );
  OAI22D0 U294 ( .A1(n340), .A2(n330), .B1(n328), .B2(n341), .ZN(n116) );
  XNR2D0 U295 ( .A1(b[3]), .A2(a[10]), .ZN(n340) );
  OAI22D0 U296 ( .A1(n341), .A2(n330), .B1(n328), .B2(n342), .ZN(n115) );
  XNR2D0 U297 ( .A1(b[3]), .A2(a[11]), .ZN(n341) );
  OAI22D0 U298 ( .A1(n342), .A2(n330), .B1(n328), .B2(n343), .ZN(n114) );
  XNR2D0 U299 ( .A1(b[3]), .A2(a[12]), .ZN(n342) );
  OAI22D0 U300 ( .A1(n343), .A2(n330), .B1(n328), .B2(n344), .ZN(n113) );
  XNR2D0 U301 ( .A1(b[3]), .A2(a[13]), .ZN(n343) );
  OAI22D0 U302 ( .A1(n344), .A2(n330), .B1(n328), .B2(n345), .ZN(n112) );
  XNR2D0 U303 ( .A1(b[3]), .A2(a[14]), .ZN(n344) );
  OAI22D0 U304 ( .A1(n345), .A2(n330), .B1(n328), .B2(n346), .ZN(n111) );
  XNR2D0 U305 ( .A1(b[3]), .A2(a[15]), .ZN(n345) );
  OAI22D0 U306 ( .A1(n346), .A2(n330), .B1(n328), .B2(n347), .ZN(n110) );
  XNR2D0 U307 ( .A1(b[3]), .A2(a[16]), .ZN(n346) );
  OAI22D0 U308 ( .A1(n347), .A2(n330), .B1(n328), .B2(n348), .ZN(n109) );
  XNR2D0 U309 ( .A1(b[3]), .A2(a[17]), .ZN(n347) );
  MOAI22D0 U310 ( .A1(n348), .A2(n330), .B1(n320), .B2(n349), .ZN(n108) );
  XNR2D0 U311 ( .A1(b[3]), .A2(a[18]), .ZN(n348) );
  OAI21D0 U312 ( .A1(n319), .A2(n320), .B(n349), .ZN(n107) );
  XNR2D0 U313 ( .A1(b[3]), .A2(n318), .ZN(n349) );
  NR2D0 U315 ( .A1(n294), .A2(n322), .ZN(n106) );
  OAI22D0 U316 ( .A1(n295), .A2(n322), .B1(n294), .B2(n297), .ZN(n105) );
  OAI22D0 U317 ( .A1(n295), .A2(n297), .B1(n294), .B2(n305), .ZN(n104) );
  OAI22D0 U318 ( .A1(n295), .A2(n305), .B1(n294), .B2(n304), .ZN(n103) );
  OAI22D0 U319 ( .A1(n295), .A2(n304), .B1(n294), .B2(n303), .ZN(n102) );
  OAI22D0 U320 ( .A1(n295), .A2(n303), .B1(n294), .B2(n302), .ZN(n101) );
  OAI22D0 U321 ( .A1(n295), .A2(n302), .B1(n294), .B2(n301), .ZN(n100) );
  MAOI222D0 U224 ( .A(n324), .B(n352), .C(n351), .ZN(n38) );
  CKND0 U230 ( .I(n85), .ZN(n351) );
  MUX2ND0 U231 ( .I0(n325), .I1(n326), .S(n322), .ZN(n352) );
  OAI211D1 U267 ( .A1(b[2]), .A2(n294), .B(n328), .C(n353), .ZN(n330) );
  CKND2D0 U269 ( .A1(b[2]), .A2(n294), .ZN(n353) );
  CKXOR2D0 U314 ( .A1(b[2]), .A2(n321), .Z(n328) );
endmodule


module oadm_fixed_plane_centered_LEVEL3 ( x_mantissa, y_mantissa, divide_mode, 
        plane_exact );
  input [23:0] x_mantissa;
  input [23:0] y_mantissa;
  output [28:0] plane_exact;
  input divide_mode;
  wire   x_residual_wide_19_, y_residual_wide_19_, N24, N25, N26, N27, N28,
         N29, N30, N31, N32, N33, N34, N35, N36, N37, N38, N39, N40, N41, N42,
         N43, N44, N45, N46, N47, N48, N49, N50, net2704, n430, n440, n450,
         n460, y_residual_product_9_, y_residual_product_8_,
         y_residual_product_7_, y_residual_product_6_, y_residual_product_5_,
         y_residual_product_4_, y_residual_product_25_, y_residual_product_24_,
         y_residual_product_23_, y_residual_product_22_,
         y_residual_product_21_, y_residual_product_20_,
         y_residual_product_19_, y_residual_product_18_,
         y_residual_product_17_, y_residual_product_16_,
         y_residual_product_15_, y_residual_product_14_,
         y_residual_product_13_, y_residual_product_12_,
         y_residual_product_11_, y_residual_product_10_,
         x_residual_product_25_, x_residual_product_24_,
         x_residual_product_23_, x_residual_product_22_,
         x_residual_product_21_, x_residual_product_20_,
         x_residual_product_19_, midpoint_index_product_5_,
         midpoint_index_product_4_, midpoint_index_product_3_, N9, N8, N7, N19,
         N18, N17, N16, N15, N14, N13, mult_43_n16, mult_43_n15, mult_43_n14,
         mult_43_n13, mult_43_n12, mult_43_n11, mult_43_n10, mult_43_n9,
         mult_43_n8, mult_43_n7, mult_43_n6, mult_43_n5, mult_43_n4,
         mult_43_n3, mult_43_n2, n1, n2, n6, n70, n80, n90, n10, n11, n12,
         n130, n150, n160, n170, n180, n190;
  wire   [9:1] midpoint_product;
  wire   [1:0] x_rounding_error;
  wire   [1:0] y_side_x_error;
  wire   [2:0] correction;
  wire   [28:0] centered_plane;
  wire   [9:4] add_0_root_add_0_root_add_44_2_carry;
  wire   [25:17] r432_carry;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11;

  CKXOR2D1 U16 ( .A1(n440), .A2(n460), .Z(correction[1]) );
  XNR2D1 U18 ( .A1(n450), .A2(n130), .ZN(n440) );
  XNR2D1 U20 ( .A1(n430), .A2(x_rounding_error[0]), .ZN(correction[0]) );
  oadm_multilevel_rounding_lut_0 x_rounding_lut ( .level({1'b0, 1'b0}), 
        .index(y_mantissa[22:20]), .value_low(x_mantissa[3:0]), .x_error(
        x_rounding_error) );
  oadm_multilevel_rounding_lut_1 y_rounding_lut ( .level({1'b0, 1'b0}), 
        .index(x_mantissa[22:20]), .value_low(y_mantissa[3:0]), .x_error(
        y_side_x_error) );
  oadm_fixed_plane_centered_LEVEL3_DW01_sub_0 sub_70 ( .A({centered_plane[28], 
        centered_plane[28], centered_plane[26:0]}), .B({net2704, net2704, 
        net2704, net2704, net2704, net2704, net2704, net2704, net2704, net2704, 
        net2704, net2704, net2704, net2704, net2704, net2704, net2704, net2704, 
        net2704, net2704, net2704, net2704, net2704, net2704, net2704, net2704, 
        correction}), .CI(net2704), .DIFF({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, plane_exact[24:0]}) );
  oadm_fixed_plane_centered_LEVEL3_DW_mult_tc_1 mult_33 ( .a({
        y_residual_wide_19_, y_mantissa[18:0]}), .b({net2704, n190, 
        x_mantissa[22:20], n190}), .product({y_residual_product_25_, 
        y_residual_product_24_, y_residual_product_23_, y_residual_product_22_, 
        y_residual_product_21_, y_residual_product_20_, y_residual_product_19_, 
        y_residual_product_18_, y_residual_product_17_, y_residual_product_16_, 
        y_residual_product_15_, y_residual_product_14_, y_residual_product_13_, 
        y_residual_product_12_, y_residual_product_11_, y_residual_product_10_, 
        y_residual_product_9_, y_residual_product_8_, y_residual_product_7_, 
        y_residual_product_6_, y_residual_product_5_, y_residual_product_4_, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7}) );
  oadm_fixed_plane_centered_LEVEL3_DW01_add_5_DW01_add_7 add_0_root_add_67_3 ( 
        .A({y_residual_product_25_, y_residual_product_25_, 
        y_residual_product_25_, y_residual_product_25_, y_residual_product_25_, 
        y_residual_product_25_, y_residual_product_25_, y_residual_product_24_, 
        y_residual_product_23_, y_residual_product_22_, y_residual_product_21_, 
        y_residual_product_20_, y_residual_product_19_, y_residual_product_18_, 
        y_residual_product_17_, y_residual_product_16_, y_residual_product_15_, 
        y_residual_product_14_, y_residual_product_13_, y_residual_product_12_, 
        y_residual_product_11_, y_residual_product_10_, y_residual_product_9_, 
        y_residual_product_8_, y_residual_product_7_, y_residual_product_6_, 
        y_residual_product_5_, y_residual_product_4_}), .B({N50, N50, N49, N48, 
        N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35, N34, 
        N33, N32, N31, N30, N29, N28, N27, N26, N25, N24}), .CI(net2704), 
        .SUM({centered_plane[28], centered_plane[26:0]}) );
  oadm_fixed_plane_centered_LEVEL3_DW_mult_tc_0 mult_31 ( .a({
        x_residual_wide_19_, x_mantissa[18:0]}), .b({net2704, n190, 
        y_mantissa[22:20], n190}), .product({x_residual_product_25_, 
        x_residual_product_24_, x_residual_product_23_, x_residual_product_22_, 
        x_residual_product_21_, x_residual_product_20_, x_residual_product_19_, 
        N38, N37, N36, N35, N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, 
        N24, SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11}) );
  HA1D0 mult_43_U7 ( .A(mult_43_n13), .B(mult_43_n15), .CO(mult_43_n7), .S(
        mult_43_n8) );
  HA1D0 mult_43_U6 ( .A(mult_43_n10), .B(mult_43_n12), .CO(mult_43_n5), .S(
        mult_43_n6) );
  HA1D0 mult_43_U5 ( .A(mult_43_n16), .B(mult_43_n14), .CO(mult_43_n4), .S(N14) );
  FA1D0 mult_43_U4 ( .A(mult_43_n4), .B(mult_43_n11), .CI(mult_43_n8), .CO(
        mult_43_n3), .S(N15) );
  FA1D0 mult_43_U3 ( .A(mult_43_n6), .B(mult_43_n7), .CI(mult_43_n3), .CO(
        mult_43_n2), .S(midpoint_index_product_3_) );
  FA1D0 mult_43_U2 ( .A(mult_43_n5), .B(mult_43_n9), .CI(mult_43_n2), .CO(
        midpoint_index_product_5_), .S(midpoint_index_product_4_) );
  AN2XD1 U3 ( .A1(N13), .A2(N7), .Z(n1) );
  INVD1 U4 ( .I(x_residual_product_19_), .ZN(N39) );
  FA1D0 U7 ( .A(midpoint_product[8]), .B(x_residual_product_25_), .CI(
        r432_carry[23]), .CO(r432_carry[24]), .S(N47) );
  FA1D0 U8 ( .A(midpoint_product[6]), .B(x_residual_product_25_), .CI(
        r432_carry[21]), .CO(r432_carry[22]), .S(N45) );
  FA1D0 U9 ( .A(midpoint_product[7]), .B(x_residual_product_25_), .CI(
        r432_carry[22]), .CO(r432_carry[23]), .S(N46) );
  FA1D0 U10 ( .A(midpoint_product[9]), .B(x_residual_product_25_), .CI(
        r432_carry[24]), .CO(r432_carry[25]), .S(N48) );
  FA1D0 U11 ( .A(midpoint_product[5]), .B(x_residual_product_24_), .CI(
        r432_carry[20]), .CO(r432_carry[21]), .S(N44) );
  FA1D0 U12 ( .A(midpoint_product[4]), .B(x_residual_product_23_), .CI(
        r432_carry[19]), .CO(r432_carry[20]), .S(N43) );
  FA1D0 U13 ( .A(midpoint_product[3]), .B(x_residual_product_22_), .CI(
        r432_carry[18]), .CO(r432_carry[19]), .S(N42) );
  INVD1 U15 ( .I(y_mantissa[22]), .ZN(n6) );
  FA1D0 U17 ( .A(midpoint_product[2]), .B(x_residual_product_21_), .CI(
        r432_carry[17]), .CO(r432_carry[18]), .S(N41) );
  FA1D0 U19 ( .A(midpoint_product[1]), .B(x_residual_product_20_), .CI(
        x_residual_product_19_), .CO(r432_carry[17]), .S(N40) );
  INVD1 U21 ( .I(x_rounding_error[0]), .ZN(n12) );
  FA1D0 U22 ( .A(N18), .B(N8), .CI(add_0_root_add_0_root_add_44_2_carry[7]), 
        .CO(add_0_root_add_0_root_add_44_2_carry[8]), .S(midpoint_product[7])
         );
  FA1D0 U23 ( .A(N17), .B(N7), .CI(add_0_root_add_0_root_add_44_2_carry[6]), 
        .CO(add_0_root_add_0_root_add_44_2_carry[7]), .S(midpoint_product[6])
         );
  FA1D0 U24 ( .A(N19), .B(N9), .CI(add_0_root_add_0_root_add_44_2_carry[8]), 
        .CO(add_0_root_add_0_root_add_44_2_carry[9]), .S(midpoint_product[8])
         );
  AN2XD1 U25 ( .A1(midpoint_index_product_3_), .A2(midpoint_index_product_4_), 
        .Z(n2) );
  FA1D0 U26 ( .A(N16), .B(midpoint_product[1]), .CI(
        add_0_root_add_0_root_add_44_2_carry[5]), .CO(
        add_0_root_add_0_root_add_44_2_carry[6]), .S(midpoint_product[5]) );
  INVD1 U27 ( .I(midpoint_index_product_3_), .ZN(N16) );
  FA1D0 U28 ( .A(N15), .B(N9), .CI(add_0_root_add_0_root_add_44_2_carry[4]), 
        .CO(add_0_root_add_0_root_add_44_2_carry[5]), .S(midpoint_product[4])
         );
  FA1D0 U29 ( .A(N14), .B(N8), .CI(n1), .CO(
        add_0_root_add_0_root_add_44_2_carry[4]), .S(midpoint_product[3]) );
  INVD1 U33 ( .I(x_rounding_error[1]), .ZN(n130) );
  INVD1 U34 ( .I(y_mantissa[20]), .ZN(n80) );
  INVD1 U35 ( .I(x_mantissa[21]), .ZN(n11) );
  INVD1 U36 ( .I(y_mantissa[21]), .ZN(n90) );
  INVD1 U37 ( .I(x_mantissa[20]), .ZN(n10) );
  MAOI222D1 U38 ( .A(y_mantissa[21]), .B(n170), .C(x_mantissa[21]), .ZN(n150)
         );
  XNR3D1 U39 ( .A1(n6), .A2(n150), .A3(n70), .ZN(N8) );
  OAI22D1 U40 ( .A1(n150), .A2(n70), .B1(n160), .B2(n6), .ZN(N9) );
  XNR3D1 U41 ( .A1(y_mantissa[21]), .A2(x_mantissa[21]), .A3(n180), .ZN(N7) );
  ND2D1 U42 ( .A1(y_mantissa[20]), .A2(x_mantissa[20]), .ZN(n180) );
  INVD1 U48 ( .I(x_mantissa[22]), .ZN(n70) );
  OAI32D1 U65 ( .A1(n12), .A2(n430), .A3(n440), .B1(n450), .B2(n130), .ZN(
        correction[2]) );
  INVD1 U72 ( .I(x_mantissa[19]), .ZN(x_residual_wide_19_) );
  INVD1 U73 ( .I(y_mantissa[19]), .ZN(y_residual_wide_19_) );
  TIEH U77 ( .Z(n190) );
  TIEL U78 ( .ZN(net2704) );
  CKXOR2D1 U79 ( .A1(N7), .A2(N13), .Z(midpoint_product[2]) );
  CKXOR2D1 U81 ( .A1(midpoint_index_product_3_), .A2(midpoint_index_product_4_), .Z(N17) );
  CKXOR2D1 U82 ( .A1(n2), .A2(midpoint_index_product_5_), .Z(N18) );
  CKXOR2D1 U83 ( .A1(r432_carry[25]), .A2(x_residual_product_25_), .Z(N49) );
  NR2D0 U84 ( .A1(n70), .A2(n90), .ZN(mult_43_n10) );
  NR2D0 U85 ( .A1(n80), .A2(n70), .ZN(mult_43_n11) );
  NR2D0 U86 ( .A1(n6), .A2(n11), .ZN(mult_43_n12) );
  NR2D0 U87 ( .A1(n90), .A2(n11), .ZN(mult_43_n13) );
  NR2D0 U88 ( .A1(n80), .A2(n11), .ZN(mult_43_n14) );
  NR2D0 U89 ( .A1(n10), .A2(n6), .ZN(mult_43_n15) );
  NR2D0 U90 ( .A1(n10), .A2(n90), .ZN(mult_43_n16) );
  NR2D0 U91 ( .A1(n70), .A2(n6), .ZN(mult_43_n9) );
  NR2D0 U92 ( .A1(n10), .A2(n80), .ZN(N13) );
  AN2XD1 U94 ( .A1(n150), .A2(n70), .Z(n160) );
  AN2XD1 U95 ( .A1(x_mantissa[20]), .A2(y_mantissa[20]), .Z(n170) );
  CKXOR2D1 U96 ( .A1(y_mantissa[20]), .A2(x_mantissa[20]), .Z(
        midpoint_product[1]) );
  INR2D0 U5 ( .A1(x_residual_product_25_), .B1(r432_carry[25]), .ZN(N50) );
  XNR2D0 U6 ( .A1(add_0_root_add_0_root_add_44_2_carry[9]), .A2(N19), .ZN(
        midpoint_product[9]) );
  CKND2D0 U14 ( .A1(n2), .A2(midpoint_index_product_5_), .ZN(N19) );
  CKND0 U30 ( .I(y_side_x_error[0]), .ZN(n430) );
  CKND2D0 U31 ( .A1(x_rounding_error[0]), .A2(y_side_x_error[0]), .ZN(n460) );
  CKND1 U32 ( .I(y_side_x_error[1]), .ZN(n450) );
endmodule


module fp32_normal_finite_wrapper_DW01_add_3_DW01_add_11 ( A, B, CI, SUM, CO
 );
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
  fp32_normal_finite_wrapper_DW01_add_3_DW01_add_11 add_1_root_add_0_root_add_25_2 ( 
        .A(x[30:23]), .B({N42, N41, N40, N39, N38, N37, N36, N35}), .CI(n79), 
        .SUM({N34, N33, N32, N31, N30, N29, N28, N27}) );
  AN2XD1 U3 ( .A1(exponent_adjust[0]), .A2(N27), .Z(n1) );
  FA1D0 U6 ( .A(N28), .B(exponent_adjust[1]), .CI(n1), .CO(
        add_0_root_add_0_root_add_25_2_carry[2]), .S(result[24]) );
  FA1D0 U7 ( .A(N29), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[2]), .CO(
        add_0_root_add_0_root_add_25_2_carry[3]), .S(result[25]) );
  FA1D0 U8 ( .A(N30), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[3]), .CO(
        add_0_root_add_0_root_add_25_2_carry[4]), .S(result[26]) );
  FA1D0 U9 ( .A(N31), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[4]), .CO(
        add_0_root_add_0_root_add_25_2_carry[5]), .S(result[27]) );
  FA1D0 U10 ( .A(N32), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[5]), .CO(
        add_0_root_add_0_root_add_25_2_carry[6]), .S(result[28]) );
  FA1D0 U11 ( .A(N33), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[6]), .CO(
        add_0_root_add_0_root_add_25_2_carry[7]), .S(result[29]) );
  CKBD1 U12 ( .I(result_fraction[22]), .Z(result[22]) );
  CKBD1 U13 ( .I(result_fraction[21]), .Z(result[21]) );
  CKBD1 U14 ( .I(result_fraction[20]), .Z(result[20]) );
  CKBD1 U15 ( .I(result_fraction[5]), .Z(result[5]) );
  CKBD1 U16 ( .I(result_fraction[8]), .Z(result[8]) );
  CKBD1 U17 ( .I(result_fraction[10]), .Z(result[10]) );
  CKBD1 U18 ( .I(result_fraction[16]), .Z(result[16]) );
  CKBD1 U19 ( .I(result_fraction[19]), .Z(result[19]) );
  CKBD1 U20 ( .I(result_fraction[4]), .Z(result[4]) );
  CKBD1 U21 ( .I(result_fraction[7]), .Z(result[7]) );
  CKBD1 U22 ( .I(result_fraction[15]), .Z(result[15]) );
  CKBD1 U23 ( .I(result_fraction[18]), .Z(result[18]) );
  CKBD1 U24 ( .I(result_fraction[3]), .Z(result[3]) );
  CKBD1 U25 ( .I(result_fraction[6]), .Z(result[6]) );
  CKBD1 U26 ( .I(result_fraction[9]), .Z(result[9]) );
  CKBD1 U27 ( .I(result_fraction[11]), .Z(result[11]) );
  CKBD1 U28 ( .I(result_fraction[12]), .Z(result[12]) );
  CKBD1 U29 ( .I(result_fraction[14]), .Z(result[14]) );
  CKBD1 U30 ( .I(result_fraction[17]), .Z(result[17]) );
  CKBD1 U31 ( .I(result_fraction[13]), .Z(result[13]) );
  CKBD1 U32 ( .I(result_fraction[2]), .Z(result[2]) );
  CKBD1 U33 ( .I(result_fraction[1]), .Z(result[1]) );
  CKBD1 U34 ( .I(result_fraction[0]), .Z(result[0]) );
  XOR3D1 U43 ( .A1(N34), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_25_2_carry[7]), .Z(result[30]) );
  CKBD1 U44 ( .I(y[22]), .Z(fraction_y[22]) );
  CKBD1 U46 ( .I(y[20]), .Z(fraction_y[20]) );
  CKBD1 U48 ( .I(y[21]), .Z(fraction_y[21]) );
  CKBD1 U50 ( .I(x[22]), .Z(fraction_x[22]) );
  CKBD1 U51 ( .I(x[0]), .Z(fraction_x[0]) );
  CKBD1 U54 ( .I(x[20]), .Z(fraction_x[20]) );
  CKBD1 U55 ( .I(x[21]), .Z(fraction_x[21]) );
  CKBD1 U57 ( .I(y[0]), .Z(fraction_y[0]) );
  CKBD1 U58 ( .I(y[1]), .Z(fraction_y[1]) );
  CKBD1 U60 ( .I(y[2]), .Z(fraction_y[2]) );
  CKBD1 U61 ( .I(y[4]), .Z(fraction_y[4]) );
  CKBD1 U62 ( .I(y[3]), .Z(fraction_y[3]) );
  CKBD1 U63 ( .I(y[5]), .Z(fraction_y[5]) );
  CKBD1 U64 ( .I(y[6]), .Z(fraction_y[6]) );
  CKBD1 U65 ( .I(y[7]), .Z(fraction_y[7]) );
  CKBD1 U66 ( .I(y[8]), .Z(fraction_y[8]) );
  CKBD1 U67 ( .I(y[9]), .Z(fraction_y[9]) );
  CKBD1 U68 ( .I(y[10]), .Z(fraction_y[10]) );
  CKBD1 U69 ( .I(y[11]), .Z(fraction_y[11]) );
  CKBD1 U70 ( .I(y[12]), .Z(fraction_y[12]) );
  CKBD1 U71 ( .I(y[13]), .Z(fraction_y[13]) );
  CKBD1 U72 ( .I(y[14]), .Z(fraction_y[14]) );
  CKBD1 U73 ( .I(y[15]), .Z(fraction_y[15]) );
  AN2XD1 U74 ( .A1(y[23]), .A2(y[24]), .Z(n4) );
  AN2XD1 U75 ( .A1(n4), .A2(y[25]), .Z(n5) );
  AN2XD1 U76 ( .A1(n5), .A2(y[26]), .Z(n6) );
  AN2XD1 U77 ( .A1(n6), .A2(y[27]), .Z(n7) );
  AN2XD1 U78 ( .A1(n7), .A2(y[28]), .Z(n8) );
  CKBD1 U86 ( .I(x[19]), .Z(fraction_x[19]) );
  CKBD1 U87 ( .I(x[18]), .Z(fraction_x[18]) );
  CKBD1 U88 ( .I(x[17]), .Z(fraction_x[17]) );
  CKBD1 U89 ( .I(x[16]), .Z(fraction_x[16]) );
  CKBD1 U90 ( .I(x[15]), .Z(fraction_x[15]) );
  CKBD1 U91 ( .I(x[14]), .Z(fraction_x[14]) );
  CKBD1 U92 ( .I(x[13]), .Z(fraction_x[13]) );
  CKBD1 U93 ( .I(x[12]), .Z(fraction_x[12]) );
  CKBD1 U94 ( .I(x[11]), .Z(fraction_x[11]) );
  CKBD1 U95 ( .I(x[10]), .Z(fraction_x[10]) );
  CKBD1 U96 ( .I(x[9]), .Z(fraction_x[9]) );
  CKBD1 U97 ( .I(x[8]), .Z(fraction_x[8]) );
  CKBD1 U98 ( .I(x[7]), .Z(fraction_x[7]) );
  CKBD1 U99 ( .I(x[6]), .Z(fraction_x[6]) );
  CKBD1 U100 ( .I(x[5]), .Z(fraction_x[5]) );
  CKBD1 U101 ( .I(x[4]), .Z(fraction_x[4]) );
  CKBD1 U102 ( .I(x[3]), .Z(fraction_x[3]) );
  CKBD1 U103 ( .I(x[2]), .Z(fraction_x[2]) );
  CKBD1 U104 ( .I(x[1]), .Z(fraction_x[1]) );
  CKBD1 U105 ( .I(y[19]), .Z(fraction_y[19]) );
  CKBD1 U106 ( .I(y[18]), .Z(fraction_y[18]) );
  CKBD1 U107 ( .I(y[17]), .Z(fraction_y[17]) );
  CKBD1 U108 ( .I(y[16]), .Z(fraction_y[16]) );
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


module oadm_multilevel_opt_FIXED_LEVEL3 ( x, y, level, divide_mode, result );
  input [31:0] x;
  input [31:0] y;
  input [1:0] level;
  output [31:0] result;
  input divide_mode;
  wire   n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n1, n2, n3, n4;
  wire   [22:0] x_mantissa;
  wire   [22:0] y_mantissa;
  wire   [24:0] plane_full;
  wire   [22:0] normalized_fraction;
  wire   [2:0] exponent_adjust;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3;

  oadm_fixed_plane_centered_LEVEL3 fixed_centered_plane_plane ( .x_mantissa({
        1'b0, x_mantissa}), .y_mantissa({1'b0, y_mantissa}), .divide_mode(1'b0), .plane_exact({SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, plane_full}) );
  fp32_normal_finite_wrapper fp_wrapper ( .x(x), .y(y), .divide_mode(1'b0), 
        .fraction_x(x_mantissa), .fraction_y(y_mantissa), .result_fraction(
        normalized_fraction), .exponent_adjust({exponent_adjust[2], 
        exponent_adjust[2], exponent_adjust[0]}), .result(result) );
  ND2D1 U3 ( .A1(n12), .A2(n1), .ZN(exponent_adjust[2]) );
  ND2D1 U4 ( .A1(n7), .A2(n12), .ZN(exponent_adjust[0]) );
  ND3D1 U15 ( .A1(n29), .A2(n28), .A3(n7), .ZN(n1) );
  OAI221D0 U16 ( .A1(n28), .A2(n3), .B1(n7), .B2(n29), .C(n30), .ZN(
        normalized_fraction[22]) );
  OA22D0 U17 ( .A1(n2), .A2(n31), .B1(n12), .B2(n32), .Z(n30) );
  OAI221D0 U18 ( .A1(n32), .A2(n6), .B1(n7), .B2(n28), .C(n33), .ZN(
        normalized_fraction[21]) );
  OA22D0 U19 ( .A1(n1), .A2(n34), .B1(n12), .B2(n31), .Z(n33) );
  OAI221D0 U20 ( .A1(n31), .A2(n4), .B1(n7), .B2(n32), .C(n35), .ZN(
        normalized_fraction[20]) );
  OA22D0 U21 ( .A1(n10), .A2(n36), .B1(n12), .B2(n34), .Z(n35) );
  OAI221D0 U22 ( .A1(n17), .A2(n4), .B1(n7), .B2(n15), .C(n20), .ZN(
        normalized_fraction[5]) );
  OA22D0 U23 ( .A1(n2), .A2(n21), .B1(n12), .B2(n19), .Z(n20) );
  OAI221D0 U24 ( .A1(n13), .A2(n4), .B1(n7), .B2(n5), .C(n14), .ZN(
        normalized_fraction[8]) );
  OA22D0 U25 ( .A1(n2), .A2(n15), .B1(n12), .B2(n11), .Z(n14) );
  OAI221D0 U26 ( .A1(n8), .A2(n3), .B1(n7), .B2(n50), .C(n53), .ZN(
        normalized_fraction[10]) );
  OA22D0 U27 ( .A1(n2), .A2(n13), .B1(n12), .B2(n5), .Z(n53) );
  OAI221D0 U28 ( .A1(n40), .A2(n3), .B1(n7), .B2(n38), .C(n43), .ZN(
        normalized_fraction[16]) );
  OA22D0 U29 ( .A1(n2), .A2(n44), .B1(n12), .B2(n42), .Z(n43) );
  OAI221D0 U30 ( .A1(n34), .A2(n3), .B1(n7), .B2(n31), .C(n37), .ZN(
        normalized_fraction[19]) );
  OA22D0 U31 ( .A1(n2), .A2(n38), .B1(n12), .B2(n36), .Z(n37) );
  OAI221D0 U32 ( .A1(n19), .A2(n3), .B1(n7), .B2(n17), .C(n22), .ZN(
        normalized_fraction[4]) );
  OA22D0 U33 ( .A1(n1), .A2(n23), .B1(n12), .B2(n21), .Z(n22) );
  OAI221D0 U34 ( .A1(n11), .A2(n3), .B1(n7), .B2(n13), .C(n16), .ZN(
        normalized_fraction[7]) );
  OA22D0 U35 ( .A1(n1), .A2(n17), .B1(n12), .B2(n15), .Z(n16) );
  OAI221D0 U36 ( .A1(n42), .A2(n6), .B1(n7), .B2(n40), .C(n45), .ZN(
        normalized_fraction[15]) );
  OA22D0 U37 ( .A1(n1), .A2(n46), .B1(n12), .B2(n44), .Z(n45) );
  OAI221D0 U38 ( .A1(n36), .A2(n6), .B1(n7), .B2(n34), .C(n39), .ZN(
        normalized_fraction[18]) );
  OA22D0 U39 ( .A1(n1), .A2(n40), .B1(n12), .B2(n38), .Z(n39) );
  OAI221D0 U40 ( .A1(n21), .A2(n6), .B1(n7), .B2(n19), .C(n24), .ZN(
        normalized_fraction[3]) );
  OA22D0 U41 ( .A1(n10), .A2(n25), .B1(n12), .B2(n23), .Z(n24) );
  OAI221D0 U42 ( .A1(n15), .A2(n6), .B1(n7), .B2(n11), .C(n18), .ZN(
        normalized_fraction[6]) );
  OA22D0 U43 ( .A1(n10), .A2(n19), .B1(n12), .B2(n17), .Z(n18) );
  OAI221D0 U44 ( .A1(n5), .A2(n6), .B1(n7), .B2(n8), .C(n9), .ZN(
        normalized_fraction[9]) );
  OA22D0 U45 ( .A1(n10), .A2(n11), .B1(n12), .B2(n13), .Z(n9) );
  OAI221D0 U46 ( .A1(n50), .A2(n6), .B1(n7), .B2(n48), .C(n52), .ZN(
        normalized_fraction[11]) );
  OA22D0 U47 ( .A1(n10), .A2(n5), .B1(n12), .B2(n8), .Z(n52) );
  OAI221D0 U48 ( .A1(n48), .A2(n6), .B1(n7), .B2(n46), .C(n51), .ZN(
        normalized_fraction[12]) );
  OA22D0 U49 ( .A1(n10), .A2(n8), .B1(n12), .B2(n50), .Z(n51) );
  OAI221D0 U50 ( .A1(n44), .A2(n4), .B1(n7), .B2(n42), .C(n47), .ZN(
        normalized_fraction[14]) );
  OA22D0 U51 ( .A1(n10), .A2(n48), .B1(n12), .B2(n46), .Z(n47) );
  OAI221D0 U52 ( .A1(n38), .A2(n4), .B1(n7), .B2(n36), .C(n41), .ZN(
        normalized_fraction[17]) );
  OA22D0 U53 ( .A1(n10), .A2(n42), .B1(n12), .B2(n40), .Z(n41) );
  OAI221D0 U54 ( .A1(n46), .A2(n3), .B1(n7), .B2(n44), .C(n49), .ZN(
        normalized_fraction[13]) );
  OA22D0 U55 ( .A1(n2), .A2(n50), .B1(n12), .B2(n48), .Z(n49) );
  OAI221D0 U56 ( .A1(n23), .A2(n4), .B1(n7), .B2(n21), .C(n26), .ZN(
        normalized_fraction[2]) );
  OA22D0 U57 ( .A1(n12), .A2(n25), .B1(n2), .B2(n27), .Z(n26) );
  ND3D1 U58 ( .A1(n29), .A2(n28), .A3(n7), .ZN(n2) );
  ND3D1 U59 ( .A1(n29), .A2(n28), .A3(n7), .ZN(n10) );
  OAI222D0 U60 ( .A1(n25), .A2(n3), .B1(n27), .B2(n12), .C1(n7), .C2(n23), 
        .ZN(normalized_fraction[1]) );
  OAI22D1 U64 ( .A1(n7), .A2(n25), .B1(n27), .B2(n4), .ZN(
        normalized_fraction[0]) );
  CKND2D0 U5 ( .A1(plane_full[23]), .A2(n7), .ZN(n3) );
  CKND2D0 U6 ( .A1(plane_full[23]), .A2(n7), .ZN(n6) );
  CKND2D0 U7 ( .A1(plane_full[23]), .A2(n7), .ZN(n4) );
  ND3D1 U8 ( .A1(plane_full[22]), .A2(n29), .A3(n7), .ZN(n12) );
  INVD1 U9 ( .I(plane_full[24]), .ZN(n7) );
  CKND1 U10 ( .I(plane_full[2]), .ZN(n23) );
  CKND1 U11 ( .I(plane_full[1]), .ZN(n25) );
  CKND1 U12 ( .I(plane_full[3]), .ZN(n21) );
  CKND1 U13 ( .I(plane_full[4]), .ZN(n19) );
  CKND1 U14 ( .I(plane_full[5]), .ZN(n17) );
  CKND1 U61 ( .I(plane_full[6]), .ZN(n15) );
  CKND1 U62 ( .I(plane_full[7]), .ZN(n11) );
  CKND1 U63 ( .I(plane_full[8]), .ZN(n13) );
  CKND1 U65 ( .I(plane_full[9]), .ZN(n5) );
  CKND1 U66 ( .I(plane_full[10]), .ZN(n8) );
  CKND1 U67 ( .I(plane_full[11]), .ZN(n50) );
  CKND1 U68 ( .I(plane_full[12]), .ZN(n48) );
  CKND1 U69 ( .I(plane_full[13]), .ZN(n46) );
  CKND1 U70 ( .I(plane_full[14]), .ZN(n44) );
  CKND1 U71 ( .I(plane_full[15]), .ZN(n42) );
  CKND1 U72 ( .I(plane_full[16]), .ZN(n40) );
  CKND1 U73 ( .I(plane_full[17]), .ZN(n38) );
  CKND1 U74 ( .I(plane_full[18]), .ZN(n36) );
  CKND1 U75 ( .I(plane_full[19]), .ZN(n34) );
  CKND1 U76 ( .I(plane_full[20]), .ZN(n31) );
  INVD1 U77 ( .I(plane_full[0]), .ZN(n27) );
  INVD1 U78 ( .I(plane_full[21]), .ZN(n32) );
  INVD1 U79 ( .I(plane_full[23]), .ZN(n29) );
  CKND1 U80 ( .I(plane_full[22]), .ZN(n28) );
endmodule


module oadm_fixed_l3_opt ( x, y, divide_mode, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  input divide_mode;


  oadm_multilevel_opt_FIXED_LEVEL3 impl ( .x(x), .y(y), .level({1'b0, 1'b0}), 
        .divide_mode(1'b0), .result(result) );
endmodule


module oadm_fixed_l3_mul_canonical ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;


  oadm_fixed_l3_opt impl ( .x(x), .y(y), .divide_mode(1'b0), .result(result)
         );
endmodule

