/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Thu Sep  3 12:29:56 2026
/////////////////////////////////////////////////////////////


module oadm_multilevel_rounding_lut_0 ( level, index, value_low, x_error, 
        y_error );
  input [1:0] level;
  input [2:0] index;
  input [3:0] value_low;
  output [1:0] x_error;
  output [1:0] y_error;
  wire   n31, n41, n42, n43, n46, n49, n51, n63, n65, n71, n83, n85, n92, n96,
         n97, n102, n103, n104, n107, n109, n110, n117, n118, n119, n121, n1,
         n2, n10, n12, n17, n21, n22, n23, n26, n28, n29, n30, n32, n33;

  INVD1 U7 ( .I(n31), .ZN(n21) );
  ND2D1 U9 ( .A1(n21), .A2(n1), .ZN(n102) );
  ND2D1 U27 ( .A1(n2), .A2(index[1]), .ZN(n65) );
  INVD1 U28 ( .I(value_low[2]), .ZN(n23) );
  INVD1 U31 ( .I(index[1]), .ZN(n1) );
  OAI21D1 U36 ( .A1(index[0]), .A2(n17), .B(n83), .ZN(n42) );
  ND2D1 U37 ( .A1(index[0]), .A2(n17), .ZN(n83) );
  INVD1 U38 ( .I(value_low[3]), .ZN(n17) );
  ND2D1 U39 ( .A1(value_low[1]), .A2(n29), .ZN(n46) );
  INVD1 U40 ( .I(index[0]), .ZN(n29) );
  NR2D1 U42 ( .A1(n83), .A2(value_low[1]), .ZN(n41) );
  INVD1 U43 ( .I(value_low[1]), .ZN(n26) );
  ND2D1 U44 ( .A1(value_low[2]), .A2(n26), .ZN(n63) );
  NR2D1 U45 ( .A1(n49), .A2(value_low[3]), .ZN(n43) );
  OAI221D0 U59 ( .A1(value_low[0]), .A2(n96), .B1(n97), .B2(n28), .C(n102), 
        .ZN(x_error[0]) );
  NR2D1 U62 ( .A1(n103), .A2(n104), .ZN(n97) );
  OAI221D0 U70 ( .A1(n117), .A2(n12), .B1(n118), .B2(n65), .C(n119), .ZN(n103)
         );
  AOI21D1 U71 ( .A1(value_low[2]), .A2(n29), .B(n41), .ZN(n117) );
  AOI21D1 U72 ( .A1(index[0]), .A2(n23), .B(n21), .ZN(n118) );
  INVD1 U82 ( .I(n51), .ZN(n10) );
  INVD1 U87 ( .I(value_low[0]), .ZN(n28) );
  ND2D1 U113 ( .A1(n21), .A2(n29), .ZN(n110) );
  CKND2D0 U1 ( .A1(value_low[0]), .A2(n30), .ZN(n85) );
  OAI21D0 U2 ( .A1(n71), .A2(n92), .B(n32), .ZN(n30) );
  ND4D0 U3 ( .A1(n26), .A2(n23), .A3(n1), .A4(n2), .ZN(n32) );
  OA211D0 U4 ( .A1(index[1]), .A2(n2), .B(n33), .C(n31), .Z(n22) );
  IND2D0 U5 ( .A1(n49), .B1(index[1]), .ZN(n92) );
  CKND2D0 U6 ( .A1(value_low[1]), .A2(value_low[2]), .ZN(n49) );
  OR2D1 U8 ( .A1(n71), .A2(index[1]), .Z(n12) );
  CKND2D0 U10 ( .A1(index[1]), .A2(n2), .ZN(n33) );
  CKND2D0 U11 ( .A1(n23), .A2(value_low[1]), .ZN(n31) );
  CKND0 U12 ( .I(index[2]), .ZN(n2) );
  AOI21D0 U13 ( .A1(n10), .A2(n43), .B(n121), .ZN(n96) );
  INVD1 U14 ( .I(n85), .ZN(x_error[1]) );
  CKND0 U15 ( .I(n92), .ZN(n121) );
  ND3D0 U16 ( .A1(n107), .A2(n63), .A3(n22), .ZN(n104) );
  ND3D0 U17 ( .A1(n10), .A2(n42), .A3(n21), .ZN(n119) );
  CKND2D0 U18 ( .A1(n109), .A2(value_low[3]), .ZN(n107) );
  OAI22D0 U19 ( .A1(n46), .A2(n65), .B1(index[2]), .B2(n110), .ZN(n109) );
  INVD1 U20 ( .I(index[2]), .ZN(n71) );
  INVD0 U21 ( .I(index[1]), .ZN(n51) );
endmodule


module oadm_multilevel_rounding_lut_1 ( level, index, value_low, x_error, 
        y_error );
  input [1:0] level;
  input [2:0] index;
  input [3:0] value_low;
  output [1:0] x_error;
  output [1:0] y_error;
  wire   n1, n2, n12, n13, n15, n16, n19, n22, n24, n25, n28, n29, n132, n133,
         n134, n141, n142, n144, n147, n148, n149, n154, n155, n159, n166,
         n168, n170, n172, n173, n176, n177, n178, n179, n180, n182, n183,
         n184, n185, n186, n188, n190, n191, n192, n195, n196, n200, n201,
         n202, n203, n205, n209, n210, n219, n220, n222, n223, n224, n225;

  OA33D1 U8 ( .A1(n203), .A2(index[1]), .A3(n202), .B1(n201), .B2(value_low[2]), .B3(n200), .Z(n219) );
  INVD1 U4 ( .I(n220), .ZN(n24) );
  ND2D1 U7 ( .A1(n24), .A2(n19), .ZN(n141) );
  INVD1 U9 ( .I(n177), .ZN(n15) );
  INVD1 U26 ( .I(value_low[2]), .ZN(n25) );
  ND2D1 U28 ( .A1(n24), .A2(n1), .ZN(n149) );
  INVD1 U30 ( .I(n173), .ZN(n12) );
  OAI21D1 U31 ( .A1(index[0]), .A2(n22), .B(n168), .ZN(n209) );
  ND2D1 U32 ( .A1(index[0]), .A2(n22), .ZN(n168) );
  INVD1 U33 ( .I(value_low[3]), .ZN(n22) );
  AOI21D1 U36 ( .A1(index[0]), .A2(n25), .B(n24), .ZN(n133) );
  ND2D1 U38 ( .A1(value_low[1]), .A2(n19), .ZN(n205) );
  INVD1 U39 ( .I(index[0]), .ZN(n19) );
  AOI22D1 U40 ( .A1(n29), .A2(value_low[1]), .B1(n28), .B2(n170), .ZN(n201) );
  NR2D1 U44 ( .A1(n29), .A2(n2), .ZN(n170) );
  NR2D1 U47 ( .A1(n168), .A2(value_low[1]), .ZN(n210) );
  ND2D1 U48 ( .A1(value_low[2]), .A2(n28), .ZN(n188) );
  INVD1 U49 ( .I(value_low[1]), .ZN(n28) );
  OAI211D1 U65 ( .A1(n188), .A2(n186), .B(n185), .C(n184), .ZN(n192) );
  OAI221D0 U66 ( .A1(value_low[0]), .A2(n155), .B1(n154), .B2(n29), .C(n149), 
        .ZN(x_error[0]) );
  OAI21D1 U72 ( .A1(n209), .A2(n180), .B(n12), .ZN(n182) );
  OAI21D1 U73 ( .A1(value_low[2]), .A2(n12), .B(n179), .ZN(n183) );
  INVD1 U75 ( .I(index[2]), .ZN(n13) );
  NR2D1 U77 ( .A1(n180), .A2(index[1]), .ZN(n173) );
  INVD1 U78 ( .I(index[1]), .ZN(n1) );
  NR2D1 U83 ( .A1(n148), .A2(n147), .ZN(n154) );
  OAI221D0 U84 ( .A1(n134), .A2(n12), .B1(n133), .B2(n186), .C(n132), .ZN(n148) );
  AOI21D1 U86 ( .A1(value_low[2]), .A2(n19), .B(n210), .ZN(n134) );
  INVD1 U100 ( .I(value_low[0]), .ZN(n29) );
  CKND2D0 U1 ( .A1(value_low[0]), .A2(n222), .ZN(n166) );
  OAI21D0 U2 ( .A1(n180), .A2(n159), .B(n223), .ZN(n222) );
  ND4D0 U3 ( .A1(n28), .A2(n25), .A3(n1), .A4(n13), .ZN(n223) );
  OA31D0 U5 ( .A1(n202), .A2(value_low[3]), .A3(n224), .B(n159), .Z(n155) );
  CKND0 U6 ( .I(index[1]), .ZN(n224) );
  IND2D0 U10 ( .A1(n202), .B1(index[1]), .ZN(n159) );
  CKND2D0 U11 ( .A1(value_low[1]), .A2(value_low[2]), .ZN(n202) );
  OAI211D0 U12 ( .A1(index[1]), .A2(n2), .B(n220), .C(n225), .ZN(n177) );
  CKND2D0 U13 ( .A1(index[1]), .A2(n2), .ZN(n225) );
  CKND2D0 U14 ( .A1(n25), .A2(value_low[1]), .ZN(n220) );
  CKND0 U15 ( .I(index[1]), .ZN(n200) );
  OR3D1 U16 ( .A1(n186), .A2(value_low[3]), .A3(value_low[1]), .Z(n179) );
  CKND0 U17 ( .I(n219), .ZN(y_error[1]) );
  CKND0 U18 ( .I(n166), .ZN(x_error[1]) );
  ND3D0 U19 ( .A1(n195), .A2(n149), .A3(n196), .ZN(y_error[0]) );
  AOI21D0 U20 ( .A1(n192), .A2(value_low[0]), .B(n191), .ZN(n195) );
  ND3D0 U21 ( .A1(n1), .A2(n19), .A3(n172), .ZN(n196) );
  NR2D0 U22 ( .A1(n29), .A2(n13), .ZN(n203) );
  NR2D0 U23 ( .A1(n220), .A2(value_low[3]), .ZN(n172) );
  ND3D0 U24 ( .A1(n144), .A2(n188), .A3(n15), .ZN(n147) );
  OAI31D0 U25 ( .A1(n190), .A2(value_low[0]), .A3(n25), .B(n188), .ZN(n191) );
  CKND0 U27 ( .I(index[1]), .ZN(n190) );
  AOI21D0 U29 ( .A1(n178), .A2(index[0]), .B(n177), .ZN(n185) );
  ND3D0 U34 ( .A1(index[1]), .A2(n209), .A3(n24), .ZN(n132) );
  CKND2D0 U35 ( .A1(n142), .A2(value_low[3]), .ZN(n144) );
  CKND0 U37 ( .I(n149), .ZN(n16) );
  AOI22D0 U41 ( .A1(n19), .A2(n183), .B1(n182), .B2(n24), .ZN(n184) );
  OAI22D0 U42 ( .A1(n25), .A2(n186), .B1(n176), .B2(n22), .ZN(n178) );
  OAI22D0 U43 ( .A1(n205), .A2(n186), .B1(index[2]), .B2(n141), .ZN(n142) );
  AOI21D0 U45 ( .A1(value_low[1]), .A2(n173), .B(n16), .ZN(n176) );
  CKND2D0 U46 ( .A1(index[1]), .A2(n13), .ZN(n186) );
  INVD1 U50 ( .I(index[2]), .ZN(n180) );
  CKND0 U51 ( .I(index[2]), .ZN(n2) );
endmodule


module oadm_fixed_plane_centered_LEVEL2_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [28:0] A;
  input [28:0] B;
  output [28:0] DIFF;
  input CI;
  output CO;
  wire   n16, n27, n28;
  wire   [26:1] carry;

  FA1D0 U2_2 ( .A(A[2]), .B(n28), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  FA1D0 U2_1 ( .A(A[1]), .B(n27), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  INVD1 U49 ( .I(B[1]), .ZN(n27) );
  INVD1 U51 ( .I(B[2]), .ZN(n28) );
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
  XNR2D1 U68 ( .A1(carry[25]), .A2(A[25]), .ZN(DIFF[25]) );
  XNR2D1 U69 ( .A1(A[26]), .A2(carry[26]), .ZN(DIFF[26]) );
  XNR2D1 U70 ( .A1(carry[3]), .A2(A[3]), .ZN(DIFF[3]) );
  XNR2D1 U71 ( .A1(carry[4]), .A2(A[4]), .ZN(DIFF[4]) );
  XNR2D1 U72 ( .A1(carry[5]), .A2(A[5]), .ZN(DIFF[5]) );
  XNR2D1 U73 ( .A1(carry[6]), .A2(A[6]), .ZN(DIFF[6]) );
  XNR2D1 U74 ( .A1(carry[7]), .A2(A[7]), .ZN(DIFF[7]) );
  XNR2D1 U75 ( .A1(carry[8]), .A2(A[8]), .ZN(DIFF[8]) );
  XNR2D1 U76 ( .A1(carry[9]), .A2(A[9]), .ZN(DIFF[9]) );
  IND2D0 U1 ( .A1(A[25]), .B1(n16), .ZN(carry[26]) );
  NR2D0 U2 ( .A1(carry[24]), .A2(A[24]), .ZN(n16) );
  CKND0 U3 ( .I(n16), .ZN(carry[25]) );
  OR2D0 U4 ( .A1(carry[23]), .A2(A[23]), .Z(carry[24]) );
  OR2D0 U5 ( .A1(carry[22]), .A2(A[22]), .Z(carry[23]) );
  OR2D0 U6 ( .A1(carry[21]), .A2(A[21]), .Z(carry[22]) );
  OR2D0 U7 ( .A1(carry[20]), .A2(A[20]), .Z(carry[21]) );
  OR2D0 U8 ( .A1(carry[19]), .A2(A[19]), .Z(carry[20]) );
  OR2D0 U9 ( .A1(carry[18]), .A2(A[18]), .Z(carry[19]) );
  OR2D0 U10 ( .A1(carry[17]), .A2(A[17]), .Z(carry[18]) );
  OR2D0 U11 ( .A1(carry[16]), .A2(A[16]), .Z(carry[17]) );
  OR2D0 U12 ( .A1(carry[15]), .A2(A[15]), .Z(carry[16]) );
  OR2D0 U13 ( .A1(carry[14]), .A2(A[14]), .Z(carry[15]) );
  OR2D0 U14 ( .A1(carry[13]), .A2(A[13]), .Z(carry[14]) );
  OR2D0 U15 ( .A1(carry[12]), .A2(A[12]), .Z(carry[13]) );
  OR2D0 U16 ( .A1(carry[11]), .A2(A[11]), .Z(carry[12]) );
  OR2D0 U17 ( .A1(carry[10]), .A2(A[10]), .Z(carry[11]) );
  OR2D0 U18 ( .A1(carry[9]), .A2(A[9]), .Z(carry[10]) );
  OR2D0 U19 ( .A1(carry[8]), .A2(A[8]), .Z(carry[9]) );
  OR2D0 U20 ( .A1(carry[7]), .A2(A[7]), .Z(carry[8]) );
  OR2D0 U21 ( .A1(carry[6]), .A2(A[6]), .Z(carry[7]) );
  OR2D0 U22 ( .A1(carry[5]), .A2(A[5]), .Z(carry[6]) );
  OR2D0 U23 ( .A1(carry[4]), .A2(A[4]), .Z(carry[5]) );
  OR2D0 U24 ( .A1(carry[3]), .A2(A[3]), .Z(carry[4]) );
  CKXOR2D0 U25 ( .A1(A[0]), .A2(B[0]), .Z(DIFF[0]) );
  IND2D0 U26 ( .A1(A[0]), .B1(B[0]), .ZN(carry[1]) );
endmodule


module oadm_fixed_plane_centered_LEVEL2_DW_mult_tc_1 ( a, b, product );
  input [20:0] a;
  input [5:0] b;
  output [26:0] product;
  wire   n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n42, n44, n45, n46, n47,
         n48, n50, n51, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n289, n290, n291, n292, n293, n295, n296, n297,
         n298, n299, n300, n301, n302, n303, n304, n305, n306, n307, n308,
         n309, n310, n311, n312, n313, n314, n315, n316, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n343,
         n344;

  FA1D0 U18 ( .A(n314), .B(n42), .CI(n18), .CO(n17), .S(product[25]) );
  FA1D0 U19 ( .A(n44), .B(n293), .CI(n19), .CO(n18), .S(product[24]) );
  FA1D0 U20 ( .A(n46), .B(n45), .CI(n20), .CO(n19), .S(product[23]) );
  FA1D0 U21 ( .A(n50), .B(n47), .CI(n21), .CO(n20), .S(product[22]) );
  FA1D0 U22 ( .A(n51), .B(n53), .CI(n22), .CO(n21), .S(product[21]) );
  FA1D0 U23 ( .A(n55), .B(n54), .CI(n23), .CO(n22), .S(product[20]) );
  FA1D0 U24 ( .A(n57), .B(n56), .CI(n24), .CO(n23), .S(product[19]) );
  FA1D0 U25 ( .A(n59), .B(n58), .CI(n25), .CO(n24), .S(product[18]) );
  FA1D0 U26 ( .A(n61), .B(n60), .CI(n26), .CO(n25), .S(product[17]) );
  FA1D0 U27 ( .A(n63), .B(n62), .CI(n27), .CO(n26), .S(product[16]) );
  FA1D0 U28 ( .A(n65), .B(n64), .CI(n28), .CO(n27), .S(product[15]) );
  FA1D0 U29 ( .A(n67), .B(n66), .CI(n29), .CO(n28), .S(product[14]) );
  FA1D0 U30 ( .A(n69), .B(n68), .CI(n30), .CO(n29), .S(product[13]) );
  FA1D0 U31 ( .A(n71), .B(n70), .CI(n31), .CO(n30), .S(product[12]) );
  FA1D0 U32 ( .A(n73), .B(n72), .CI(n32), .CO(n31), .S(product[11]) );
  FA1D0 U33 ( .A(n75), .B(n74), .CI(n33), .CO(n32), .S(product[10]) );
  FA1D0 U34 ( .A(n77), .B(n76), .CI(n34), .CO(n33), .S(product[9]) );
  FA1D0 U35 ( .A(n79), .B(n78), .CI(n35), .CO(n34), .S(product[8]) );
  FA1D0 U36 ( .A(n81), .B(n80), .CI(n36), .CO(n35), .S(product[7]) );
  FA1D0 U37 ( .A(n83), .B(n82), .CI(n37), .CO(n36), .S(product[6]) );
  FA1D0 U38 ( .A(n85), .B(n84), .CI(n38), .CO(n37), .S(product[5]) );
  FA1D0 U39 ( .A(n86), .B(n87), .CI(n39), .CO(n38), .S(product[4]) );
  FA1D0 U44 ( .A(n92), .B(n48), .CI(n111), .CO(n44), .S(n45) );
  FA1D0 U45 ( .A(n112), .B(n93), .CI(n292), .CO(n46), .S(n47) );
  FA1D0 U47 ( .A(a[20]), .B(n113), .CI(n292), .CO(n50), .S(n51) );
  FA1D0 U49 ( .A(n315), .B(n94), .CI(n114), .CO(n53), .S(n54) );
  FA1D0 U50 ( .A(n305), .B(n95), .CI(n115), .CO(n55), .S(n56) );
  FA1D0 U51 ( .A(n306), .B(n96), .CI(n116), .CO(n57), .S(n58) );
  FA1D0 U52 ( .A(n307), .B(n97), .CI(n117), .CO(n59), .S(n60) );
  FA1D0 U53 ( .A(n308), .B(n98), .CI(n118), .CO(n61), .S(n62) );
  FA1D0 U54 ( .A(n309), .B(n99), .CI(n119), .CO(n63), .S(n64) );
  FA1D0 U55 ( .A(n310), .B(n100), .CI(n120), .CO(n65), .S(n66) );
  FA1D0 U56 ( .A(n311), .B(n101), .CI(n121), .CO(n67), .S(n68) );
  FA1D0 U57 ( .A(n312), .B(n102), .CI(n122), .CO(n69), .S(n70) );
  FA1D0 U58 ( .A(n313), .B(n103), .CI(n123), .CO(n71), .S(n72) );
  FA1D0 U59 ( .A(n297), .B(n104), .CI(n124), .CO(n73), .S(n74) );
  FA1D0 U60 ( .A(n298), .B(n105), .CI(n125), .CO(n75), .S(n76) );
  FA1D0 U61 ( .A(n299), .B(n106), .CI(n126), .CO(n77), .S(n78) );
  FA1D0 U62 ( .A(n300), .B(n107), .CI(n127), .CO(n79), .S(n80) );
  FA1D0 U63 ( .A(n301), .B(n108), .CI(n128), .CO(n81), .S(n82) );
  FA1D0 U64 ( .A(n302), .B(n109), .CI(n129), .CO(n83), .S(n84) );
  FA1D0 U65 ( .A(n303), .B(n110), .CI(n130), .CO(n85), .S(n86) );
  HA1D0 U66 ( .A(n131), .B(n304), .CO(n87), .S(n88) );
  INVD1 U214 ( .I(n321), .ZN(n295) );
  INVD1 U216 ( .I(n291), .ZN(n290) );
  INVD1 U217 ( .I(n42), .ZN(n293) );
  INVD1 U218 ( .I(n48), .ZN(n292) );
  INVD1 U220 ( .I(a[20]), .ZN(n314) );
  INVD1 U221 ( .I(b[3]), .ZN(n291) );
  INVD1 U222 ( .I(b[2]), .ZN(n289) );
  INVD1 U223 ( .I(a[0]), .ZN(n316) );
  INVD1 U224 ( .I(a[1]), .ZN(n296) );
  INVD1 U225 ( .I(a[3]), .ZN(n303) );
  INVD1 U226 ( .I(a[2]), .ZN(n304) );
  INVD1 U227 ( .I(a[4]), .ZN(n302) );
  INVD1 U228 ( .I(a[5]), .ZN(n301) );
  INVD1 U229 ( .I(a[6]), .ZN(n300) );
  INVD1 U230 ( .I(a[7]), .ZN(n299) );
  INVD1 U231 ( .I(a[8]), .ZN(n298) );
  INVD1 U232 ( .I(a[9]), .ZN(n297) );
  INVD1 U233 ( .I(a[10]), .ZN(n313) );
  INVD1 U234 ( .I(a[11]), .ZN(n312) );
  INVD1 U235 ( .I(a[12]), .ZN(n311) );
  INVD1 U236 ( .I(a[13]), .ZN(n310) );
  INVD1 U237 ( .I(a[14]), .ZN(n309) );
  INVD1 U238 ( .I(a[15]), .ZN(n308) );
  INVD1 U239 ( .I(a[16]), .ZN(n307) );
  INVD1 U240 ( .I(a[17]), .ZN(n306) );
  INVD1 U241 ( .I(a[18]), .ZN(n305) );
  INVD1 U242 ( .I(a[19]), .ZN(n315) );
  CKND0 U243 ( .I(n17), .ZN(product[26]) );
  OAI22D0 U244 ( .A1(n291), .A2(n313), .B1(b[3]), .B2(n312), .ZN(n99) );
  OAI22D0 U245 ( .A1(n312), .A2(n291), .B1(b[3]), .B2(n311), .ZN(n98) );
  OAI22D0 U246 ( .A1(n291), .A2(n311), .B1(b[3]), .B2(n310), .ZN(n97) );
  OAI22D0 U247 ( .A1(n291), .A2(n310), .B1(b[3]), .B2(n309), .ZN(n96) );
  OAI22D0 U248 ( .A1(n291), .A2(n309), .B1(b[3]), .B2(n308), .ZN(n95) );
  OAI22D0 U249 ( .A1(n291), .A2(n308), .B1(b[3]), .B2(n307), .ZN(n94) );
  OAI22D0 U250 ( .A1(n291), .A2(n306), .B1(b[3]), .B2(n305), .ZN(n93) );
  OAI22D0 U251 ( .A1(n291), .A2(n305), .B1(b[3]), .B2(n315), .ZN(n92) );
  OAI22D0 U252 ( .A1(n291), .A2(n307), .B1(b[3]), .B2(n306), .ZN(n48) );
  OAI22D0 U253 ( .A1(n291), .A2(n315), .B1(b[3]), .B2(n314), .ZN(n42) );
  AOI32D0 U255 ( .A1(n290), .A2(n316), .A3(n289), .B1(n290), .B2(n295), .ZN(
        n318) );
  NR2D0 U257 ( .A1(a[1]), .A2(b[2]), .ZN(n319) );
  OAI22D0 U258 ( .A1(n320), .A2(n321), .B1(b[2]), .B2(n322), .ZN(n131) );
  XNR2D0 U259 ( .A1(n290), .A2(a[0]), .ZN(n320) );
  OAI22D0 U260 ( .A1(n322), .A2(n321), .B1(b[2]), .B2(n323), .ZN(n130) );
  XNR2D0 U261 ( .A1(n290), .A2(a[1]), .ZN(n322) );
  OAI22D0 U262 ( .A1(n323), .A2(n321), .B1(b[2]), .B2(n324), .ZN(n129) );
  XNR2D0 U263 ( .A1(n290), .A2(a[2]), .ZN(n323) );
  OAI22D0 U264 ( .A1(n324), .A2(n321), .B1(b[2]), .B2(n325), .ZN(n128) );
  XNR2D0 U265 ( .A1(n290), .A2(a[3]), .ZN(n324) );
  OAI22D0 U266 ( .A1(n325), .A2(n321), .B1(b[2]), .B2(n326), .ZN(n127) );
  XNR2D0 U267 ( .A1(n290), .A2(a[4]), .ZN(n325) );
  OAI22D0 U268 ( .A1(n326), .A2(n321), .B1(b[2]), .B2(n327), .ZN(n126) );
  XNR2D0 U269 ( .A1(n290), .A2(a[5]), .ZN(n326) );
  OAI22D0 U270 ( .A1(n327), .A2(n321), .B1(b[2]), .B2(n328), .ZN(n125) );
  XNR2D0 U271 ( .A1(n290), .A2(a[6]), .ZN(n327) );
  OAI22D0 U272 ( .A1(n328), .A2(n321), .B1(b[2]), .B2(n329), .ZN(n124) );
  XNR2D0 U273 ( .A1(n290), .A2(a[7]), .ZN(n328) );
  OAI22D0 U274 ( .A1(n329), .A2(n321), .B1(b[2]), .B2(n330), .ZN(n123) );
  XNR2D0 U275 ( .A1(b[3]), .A2(a[8]), .ZN(n329) );
  OAI22D0 U276 ( .A1(n330), .A2(n321), .B1(b[2]), .B2(n331), .ZN(n122) );
  XNR2D0 U277 ( .A1(b[3]), .A2(a[9]), .ZN(n330) );
  OAI22D0 U278 ( .A1(n331), .A2(n321), .B1(b[2]), .B2(n332), .ZN(n121) );
  XNR2D0 U279 ( .A1(b[3]), .A2(a[10]), .ZN(n331) );
  OAI22D0 U280 ( .A1(n332), .A2(n321), .B1(b[2]), .B2(n333), .ZN(n120) );
  XNR2D0 U281 ( .A1(b[3]), .A2(a[11]), .ZN(n332) );
  OAI22D0 U282 ( .A1(n333), .A2(n321), .B1(b[2]), .B2(n334), .ZN(n119) );
  XNR2D0 U283 ( .A1(b[3]), .A2(a[12]), .ZN(n333) );
  OAI22D0 U284 ( .A1(n334), .A2(n321), .B1(b[2]), .B2(n335), .ZN(n118) );
  XNR2D0 U285 ( .A1(b[3]), .A2(a[13]), .ZN(n334) );
  OAI22D0 U286 ( .A1(n335), .A2(n321), .B1(b[2]), .B2(n336), .ZN(n117) );
  XNR2D0 U287 ( .A1(b[3]), .A2(a[14]), .ZN(n335) );
  OAI22D0 U288 ( .A1(n336), .A2(n321), .B1(b[2]), .B2(n337), .ZN(n116) );
  XNR2D0 U289 ( .A1(b[3]), .A2(a[15]), .ZN(n336) );
  OAI22D0 U290 ( .A1(n337), .A2(n321), .B1(b[2]), .B2(n338), .ZN(n115) );
  XNR2D0 U291 ( .A1(b[3]), .A2(a[16]), .ZN(n337) );
  OAI22D0 U292 ( .A1(n338), .A2(n321), .B1(b[2]), .B2(n339), .ZN(n114) );
  XNR2D0 U293 ( .A1(b[3]), .A2(a[17]), .ZN(n338) );
  OAI22D0 U294 ( .A1(n339), .A2(n321), .B1(b[2]), .B2(n340), .ZN(n113) );
  XNR2D0 U295 ( .A1(b[3]), .A2(a[18]), .ZN(n339) );
  MOAI22D0 U296 ( .A1(n340), .A2(n321), .B1(n289), .B2(n341), .ZN(n112) );
  XNR2D0 U297 ( .A1(b[3]), .A2(a[19]), .ZN(n340) );
  OAI21D0 U298 ( .A1(n295), .A2(n289), .B(n341), .ZN(n111) );
  XNR2D0 U299 ( .A1(b[3]), .A2(n314), .ZN(n341) );
  NR2D0 U301 ( .A1(n290), .A2(n316), .ZN(n110) );
  OAI22D0 U302 ( .A1(n291), .A2(n316), .B1(n290), .B2(n296), .ZN(n109) );
  OAI22D0 U303 ( .A1(n291), .A2(n296), .B1(n290), .B2(n304), .ZN(n108) );
  OAI22D0 U304 ( .A1(n291), .A2(n304), .B1(n290), .B2(n303), .ZN(n107) );
  OAI22D0 U305 ( .A1(n291), .A2(n303), .B1(b[3]), .B2(n302), .ZN(n106) );
  OAI22D0 U306 ( .A1(n291), .A2(n302), .B1(b[3]), .B2(n301), .ZN(n105) );
  OAI22D0 U307 ( .A1(n291), .A2(n301), .B1(n290), .B2(n300), .ZN(n104) );
  OAI22D0 U308 ( .A1(n291), .A2(n300), .B1(n290), .B2(n299), .ZN(n103) );
  OAI22D0 U309 ( .A1(n291), .A2(n299), .B1(n290), .B2(n298), .ZN(n102) );
  OAI22D0 U310 ( .A1(n291), .A2(n298), .B1(n290), .B2(n297), .ZN(n101) );
  OAI22D0 U311 ( .A1(n291), .A2(n297), .B1(n290), .B2(n313), .ZN(n100) );
  MAOI222D0 U215 ( .A(n318), .B(n344), .C(n343), .ZN(n39) );
  CKND0 U219 ( .I(n88), .ZN(n343) );
  MUX2ND0 U254 ( .I0(n319), .I1(n296), .S(n316), .ZN(n344) );
  IND2D0 U256 ( .A1(n290), .B1(b[2]), .ZN(n321) );
endmodule


module oadm_fixed_plane_centered_LEVEL2_DW01_sub_3 ( A, B, CI, DIFF, CO );
  input [27:0] A;
  input [27:0] B;
  output [27:0] DIFF;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23;
  wire   [27:1] carry;

  FA1D0 U2_18 ( .A(A[18]), .B(n6), .CI(carry[18]), .CO(carry[19]), .S(DIFF[18]) );
  FA1D0 U2_19 ( .A(A[19]), .B(n5), .CI(carry[19]), .CO(carry[20]), .S(DIFF[19]) );
  FA1D0 U2_16 ( .A(A[16]), .B(n8), .CI(carry[16]), .CO(carry[17]), .S(DIFF[16]) );
  FA1D0 U2_15 ( .A(A[15]), .B(n9), .CI(carry[15]), .CO(carry[16]), .S(DIFF[15]) );
  FA1D0 U2_14 ( .A(A[14]), .B(n10), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  FA1D0 U2_13 ( .A(A[13]), .B(n11), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  FA1D0 U2_12 ( .A(A[12]), .B(n12), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  FA1D0 U2_11 ( .A(A[11]), .B(n13), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  FA1D0 U2_10 ( .A(A[10]), .B(n14), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  FA1D0 U2_9 ( .A(A[9]), .B(n15), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  FA1D0 U2_8 ( .A(A[8]), .B(n16), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  FA1D0 U2_7 ( .A(A[7]), .B(n17), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  FA1D0 U2_17 ( .A(A[17]), .B(n7), .CI(carry[17]), .CO(carry[18]), .S(DIFF[17]) );
  FA1D0 U2_5 ( .A(A[5]), .B(n19), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  FA1D0 U2_6 ( .A(A[6]), .B(n18), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  FA1D0 U2_3 ( .A(A[3]), .B(n21), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  FA1D0 U2_4 ( .A(A[4]), .B(n20), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FA1D0 U2_1 ( .A(A[1]), .B(n23), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  FA1D0 U2_2 ( .A(A[2]), .B(n22), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  FA1D0 U2_21 ( .A(A[21]), .B(n3), .CI(carry[21]), .CO(carry[22]), .S(DIFF[21]) );
  FA1D0 U2_20 ( .A(A[20]), .B(n4), .CI(carry[20]), .CO(carry[21]), .S(DIFF[20]) );
  FA1D0 U2_24 ( .A(A[24]), .B(n2), .CI(carry[24]), .CO(carry[25]), .S(DIFF[24]) );
  FA1D0 U2_23 ( .A(A[23]), .B(n2), .CI(carry[23]), .CO(carry[24]), .S(DIFF[23]) );
  FA1D0 U2_22 ( .A(A[22]), .B(n2), .CI(carry[22]), .CO(carry[23]), .S(DIFF[22]) );
  XOR3D1 U2_27 ( .A1(A[27]), .A2(n2), .A3(carry[27]), .Z(DIFF[27]) );
  FA1D0 U2_26 ( .A(A[26]), .B(n2), .CI(carry[26]), .CO(carry[27]), .S(DIFF[26]) );
  FA1D0 U2_25 ( .A(A[25]), .B(n2), .CI(carry[25]), .CO(carry[26]), .S(DIFF[25]) );
  INVD1 U1 ( .I(B[27]), .ZN(n2) );
  INVD1 U2 ( .I(B[20]), .ZN(n4) );
  INVD1 U3 ( .I(B[21]), .ZN(n3) );
  INVD1 U4 ( .I(B[2]), .ZN(n22) );
  INVD1 U6 ( .I(B[1]), .ZN(n23) );
  INVD1 U7 ( .I(B[4]), .ZN(n20) );
  INVD1 U8 ( .I(B[3]), .ZN(n21) );
  INVD1 U9 ( .I(B[6]), .ZN(n18) );
  INVD1 U10 ( .I(B[5]), .ZN(n19) );
  INVD1 U11 ( .I(B[17]), .ZN(n7) );
  INVD1 U12 ( .I(B[7]), .ZN(n17) );
  INVD1 U13 ( .I(B[8]), .ZN(n16) );
  INVD1 U14 ( .I(B[9]), .ZN(n15) );
  INVD1 U15 ( .I(B[10]), .ZN(n14) );
  INVD1 U16 ( .I(B[11]), .ZN(n13) );
  INVD1 U17 ( .I(B[12]), .ZN(n12) );
  INVD1 U18 ( .I(B[13]), .ZN(n11) );
  INVD1 U19 ( .I(B[14]), .ZN(n10) );
  INVD1 U20 ( .I(B[15]), .ZN(n9) );
  INVD1 U21 ( .I(B[16]), .ZN(n8) );
  INVD1 U22 ( .I(B[19]), .ZN(n5) );
  INVD1 U23 ( .I(B[18]), .ZN(n6) );
  IND2D0 U5 ( .A1(A[0]), .B1(B[0]), .ZN(carry[1]) );
  CKXOR2D0 U24 ( .A1(A[0]), .A2(B[0]), .Z(DIFF[0]) );
endmodule


module oadm_fixed_plane_centered_LEVEL2_DW01_add_5_DW01_add_7 ( A, B, CI, SUM, 
        CO );
  input [27:0] A;
  input [27:0] B;
  output [27:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [27:2] carry;

  FA1D0 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  FA1D0 U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  FA1D0 U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  FA1D0 U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  FA1D0 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  FA1D0 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  FA1D0 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  FA1D0 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  FA1D0 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FA1D0 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FA1D0 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  FA1D0 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FA1D0 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA1D0 U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  FA1D0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1D0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1D0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA1D0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1D0 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA1D0 U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  FA1D0 U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  FA1D0 U1_24 ( .A(A[24]), .B(B[24]), .CI(carry[24]), .CO(carry[25]), .S(
        SUM[24]) );
  FA1D0 U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  FA1D0 U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  XOR3D1 U1_27 ( .A1(A[27]), .A2(B[27]), .A3(carry[27]), .Z(SUM[27]) );
  FA1D0 U1_26 ( .A(A[26]), .B(B[26]), .CI(carry[26]), .CO(carry[27]), .S(
        SUM[26]) );
  FA1D0 U1_25 ( .A(A[25]), .B(B[25]), .CI(carry[25]), .CO(carry[26]), .S(
        SUM[25]) );
  AN2XD1 U1 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
  CKXOR2D1 U2 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
endmodule


module oadm_fixed_plane_centered_LEVEL2_DW_mult_tc_0 ( a, b, product );
  input [20:0] a;
  input [5:0] b;
  output [26:0] product;
  wire   n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n42, n44, n45, n46, n47,
         n48, n50, n51, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n289, n290, n291, n293, n294, n295, n296, n297,
         n298, n299, n300, n301, n302, n303, n304, n305, n306, n307, n308,
         n309, n310, n311, n312, n313, n314, n315, n316, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n343,
         n344;

  FA1D0 U18 ( .A(n313), .B(n42), .CI(n18), .CO(n17), .S(product[25]) );
  FA1D0 U19 ( .A(n44), .B(n312), .CI(n19), .CO(n18), .S(product[24]) );
  FA1D0 U20 ( .A(n46), .B(n45), .CI(n20), .CO(n19), .S(product[23]) );
  FA1D0 U21 ( .A(n50), .B(n47), .CI(n21), .CO(n20), .S(product[22]) );
  FA1D0 U22 ( .A(n51), .B(n53), .CI(n22), .CO(n21), .S(product[21]) );
  FA1D0 U23 ( .A(n55), .B(n54), .CI(n23), .CO(n22), .S(product[20]) );
  FA1D0 U24 ( .A(n57), .B(n56), .CI(n24), .CO(n23), .S(product[19]) );
  FA1D0 U25 ( .A(n59), .B(n58), .CI(n25), .CO(n24), .S(product[18]) );
  FA1D0 U26 ( .A(n61), .B(n60), .CI(n26), .CO(n25), .S(product[17]) );
  FA1D0 U27 ( .A(n63), .B(n62), .CI(n27), .CO(n26), .S(product[16]) );
  FA1D0 U28 ( .A(n65), .B(n64), .CI(n28), .CO(n27), .S(product[15]) );
  FA1D0 U29 ( .A(n67), .B(n66), .CI(n29), .CO(n28), .S(product[14]) );
  FA1D0 U30 ( .A(n69), .B(n68), .CI(n30), .CO(n29), .S(product[13]) );
  FA1D0 U31 ( .A(n71), .B(n70), .CI(n31), .CO(n30), .S(product[12]) );
  FA1D0 U32 ( .A(n73), .B(n72), .CI(n32), .CO(n31), .S(product[11]) );
  FA1D0 U33 ( .A(n75), .B(n74), .CI(n33), .CO(n32), .S(product[10]) );
  FA1D0 U34 ( .A(n77), .B(n76), .CI(n34), .CO(n33), .S(product[9]) );
  FA1D0 U35 ( .A(n79), .B(n78), .CI(n35), .CO(n34), .S(product[8]) );
  FA1D0 U36 ( .A(n81), .B(n80), .CI(n36), .CO(n35), .S(product[7]) );
  FA1D0 U37 ( .A(n83), .B(n82), .CI(n37), .CO(n36), .S(product[6]) );
  FA1D0 U38 ( .A(n85), .B(n84), .CI(n38), .CO(n37), .S(product[5]) );
  FA1D0 U39 ( .A(n86), .B(n87), .CI(n39), .CO(n38), .S(product[4]) );
  FA1D0 U44 ( .A(n92), .B(n48), .CI(n111), .CO(n44), .S(n45) );
  FA1D0 U45 ( .A(n112), .B(n93), .CI(n303), .CO(n46), .S(n47) );
  FA1D0 U47 ( .A(a[20]), .B(n113), .CI(n303), .CO(n50), .S(n51) );
  FA1D0 U49 ( .A(n314), .B(n94), .CI(n114), .CO(n53), .S(n54) );
  FA1D0 U50 ( .A(n302), .B(n95), .CI(n115), .CO(n55), .S(n56) );
  FA1D0 U51 ( .A(n304), .B(n96), .CI(n116), .CO(n57), .S(n58) );
  FA1D0 U52 ( .A(n305), .B(n97), .CI(n117), .CO(n59), .S(n60) );
  FA1D0 U53 ( .A(n306), .B(n98), .CI(n118), .CO(n61), .S(n62) );
  FA1D0 U54 ( .A(n307), .B(n99), .CI(n119), .CO(n63), .S(n64) );
  FA1D0 U55 ( .A(n308), .B(n100), .CI(n120), .CO(n65), .S(n66) );
  FA1D0 U56 ( .A(n309), .B(n101), .CI(n121), .CO(n67), .S(n68) );
  FA1D0 U57 ( .A(n310), .B(n102), .CI(n122), .CO(n69), .S(n70) );
  FA1D0 U58 ( .A(n311), .B(n103), .CI(n123), .CO(n71), .S(n72) );
  FA1D0 U59 ( .A(n294), .B(n104), .CI(n124), .CO(n73), .S(n74) );
  FA1D0 U60 ( .A(n295), .B(n105), .CI(n125), .CO(n75), .S(n76) );
  FA1D0 U61 ( .A(n296), .B(n106), .CI(n126), .CO(n77), .S(n78) );
  FA1D0 U62 ( .A(n297), .B(n107), .CI(n127), .CO(n79), .S(n80) );
  FA1D0 U63 ( .A(n298), .B(n108), .CI(n128), .CO(n81), .S(n82) );
  FA1D0 U64 ( .A(n299), .B(n109), .CI(n129), .CO(n83), .S(n84) );
  FA1D0 U65 ( .A(n300), .B(n110), .CI(n130), .CO(n85), .S(n86) );
  HA1D0 U66 ( .A(n131), .B(n301), .CO(n87), .S(n88) );
  INVD1 U214 ( .I(n291), .ZN(n290) );
  INVD1 U215 ( .I(n321), .ZN(n315) );
  INVD1 U217 ( .I(n42), .ZN(n312) );
  INVD1 U218 ( .I(b[3]), .ZN(n291) );
  INVD1 U219 ( .I(n48), .ZN(n303) );
  INVD1 U221 ( .I(b[2]), .ZN(n289) );
  INVD1 U222 ( .I(a[20]), .ZN(n313) );
  INVD1 U223 ( .I(a[0]), .ZN(n316) );
  INVD1 U224 ( .I(a[1]), .ZN(n293) );
  INVD1 U225 ( .I(a[3]), .ZN(n300) );
  INVD1 U226 ( .I(a[2]), .ZN(n301) );
  INVD1 U227 ( .I(a[4]), .ZN(n299) );
  INVD1 U228 ( .I(a[5]), .ZN(n298) );
  INVD1 U229 ( .I(a[6]), .ZN(n297) );
  INVD1 U230 ( .I(a[7]), .ZN(n296) );
  INVD1 U231 ( .I(a[8]), .ZN(n295) );
  INVD1 U232 ( .I(a[9]), .ZN(n294) );
  INVD1 U233 ( .I(a[10]), .ZN(n311) );
  INVD1 U234 ( .I(a[11]), .ZN(n310) );
  INVD1 U235 ( .I(a[12]), .ZN(n309) );
  INVD1 U236 ( .I(a[13]), .ZN(n308) );
  INVD1 U237 ( .I(a[14]), .ZN(n307) );
  INVD1 U238 ( .I(a[15]), .ZN(n306) );
  INVD1 U239 ( .I(a[16]), .ZN(n305) );
  INVD1 U240 ( .I(a[17]), .ZN(n304) );
  INVD1 U241 ( .I(a[18]), .ZN(n302) );
  INVD1 U242 ( .I(a[19]), .ZN(n314) );
  CKND0 U243 ( .I(n17), .ZN(product[26]) );
  OAI22D0 U244 ( .A1(n291), .A2(n311), .B1(b[3]), .B2(n310), .ZN(n99) );
  OAI22D0 U245 ( .A1(n310), .A2(n291), .B1(b[3]), .B2(n309), .ZN(n98) );
  OAI22D0 U246 ( .A1(n291), .A2(n309), .B1(b[3]), .B2(n308), .ZN(n97) );
  OAI22D0 U247 ( .A1(n291), .A2(n308), .B1(b[3]), .B2(n307), .ZN(n96) );
  OAI22D0 U248 ( .A1(n291), .A2(n307), .B1(b[3]), .B2(n306), .ZN(n95) );
  OAI22D0 U249 ( .A1(n291), .A2(n306), .B1(b[3]), .B2(n305), .ZN(n94) );
  OAI22D0 U250 ( .A1(n291), .A2(n304), .B1(b[3]), .B2(n302), .ZN(n93) );
  OAI22D0 U251 ( .A1(n291), .A2(n302), .B1(b[3]), .B2(n314), .ZN(n92) );
  OAI22D0 U252 ( .A1(n291), .A2(n305), .B1(b[3]), .B2(n304), .ZN(n48) );
  OAI22D0 U253 ( .A1(n291), .A2(n314), .B1(b[3]), .B2(n313), .ZN(n42) );
  AOI32D0 U255 ( .A1(n290), .A2(n316), .A3(n289), .B1(n290), .B2(n315), .ZN(
        n318) );
  NR2D0 U257 ( .A1(a[1]), .A2(b[2]), .ZN(n319) );
  OAI22D0 U258 ( .A1(n320), .A2(n321), .B1(b[2]), .B2(n322), .ZN(n131) );
  XNR2D0 U259 ( .A1(n290), .A2(a[0]), .ZN(n320) );
  OAI22D0 U260 ( .A1(n322), .A2(n321), .B1(b[2]), .B2(n323), .ZN(n130) );
  XNR2D0 U261 ( .A1(n290), .A2(a[1]), .ZN(n322) );
  OAI22D0 U262 ( .A1(n323), .A2(n321), .B1(b[2]), .B2(n324), .ZN(n129) );
  XNR2D0 U263 ( .A1(n290), .A2(a[2]), .ZN(n323) );
  OAI22D0 U264 ( .A1(n324), .A2(n321), .B1(b[2]), .B2(n325), .ZN(n128) );
  XNR2D0 U265 ( .A1(n290), .A2(a[3]), .ZN(n324) );
  OAI22D0 U266 ( .A1(n325), .A2(n321), .B1(b[2]), .B2(n326), .ZN(n127) );
  XNR2D0 U267 ( .A1(n290), .A2(a[4]), .ZN(n325) );
  OAI22D0 U268 ( .A1(n326), .A2(n321), .B1(b[2]), .B2(n327), .ZN(n126) );
  XNR2D0 U269 ( .A1(n290), .A2(a[5]), .ZN(n326) );
  OAI22D0 U270 ( .A1(n327), .A2(n321), .B1(b[2]), .B2(n328), .ZN(n125) );
  XNR2D0 U271 ( .A1(n290), .A2(a[6]), .ZN(n327) );
  OAI22D0 U272 ( .A1(n328), .A2(n321), .B1(b[2]), .B2(n329), .ZN(n124) );
  XNR2D0 U273 ( .A1(n290), .A2(a[7]), .ZN(n328) );
  OAI22D0 U274 ( .A1(n329), .A2(n321), .B1(b[2]), .B2(n330), .ZN(n123) );
  XNR2D0 U275 ( .A1(b[3]), .A2(a[8]), .ZN(n329) );
  OAI22D0 U276 ( .A1(n330), .A2(n321), .B1(b[2]), .B2(n331), .ZN(n122) );
  XNR2D0 U277 ( .A1(b[3]), .A2(a[9]), .ZN(n330) );
  OAI22D0 U278 ( .A1(n331), .A2(n321), .B1(b[2]), .B2(n332), .ZN(n121) );
  XNR2D0 U279 ( .A1(b[3]), .A2(a[10]), .ZN(n331) );
  OAI22D0 U280 ( .A1(n332), .A2(n321), .B1(b[2]), .B2(n333), .ZN(n120) );
  XNR2D0 U281 ( .A1(b[3]), .A2(a[11]), .ZN(n332) );
  OAI22D0 U282 ( .A1(n333), .A2(n321), .B1(b[2]), .B2(n334), .ZN(n119) );
  XNR2D0 U283 ( .A1(b[3]), .A2(a[12]), .ZN(n333) );
  OAI22D0 U284 ( .A1(n334), .A2(n321), .B1(b[2]), .B2(n335), .ZN(n118) );
  XNR2D0 U285 ( .A1(b[3]), .A2(a[13]), .ZN(n334) );
  OAI22D0 U286 ( .A1(n335), .A2(n321), .B1(b[2]), .B2(n336), .ZN(n117) );
  XNR2D0 U287 ( .A1(b[3]), .A2(a[14]), .ZN(n335) );
  OAI22D0 U288 ( .A1(n336), .A2(n321), .B1(b[2]), .B2(n337), .ZN(n116) );
  XNR2D0 U289 ( .A1(b[3]), .A2(a[15]), .ZN(n336) );
  OAI22D0 U290 ( .A1(n337), .A2(n321), .B1(b[2]), .B2(n338), .ZN(n115) );
  XNR2D0 U291 ( .A1(b[3]), .A2(a[16]), .ZN(n337) );
  OAI22D0 U292 ( .A1(n338), .A2(n321), .B1(b[2]), .B2(n339), .ZN(n114) );
  XNR2D0 U293 ( .A1(b[3]), .A2(a[17]), .ZN(n338) );
  OAI22D0 U294 ( .A1(n339), .A2(n321), .B1(b[2]), .B2(n340), .ZN(n113) );
  XNR2D0 U295 ( .A1(b[3]), .A2(a[18]), .ZN(n339) );
  MOAI22D0 U296 ( .A1(n340), .A2(n321), .B1(n289), .B2(n341), .ZN(n112) );
  XNR2D0 U297 ( .A1(b[3]), .A2(a[19]), .ZN(n340) );
  OAI21D0 U298 ( .A1(n315), .A2(n289), .B(n341), .ZN(n111) );
  XNR2D0 U299 ( .A1(b[3]), .A2(n313), .ZN(n341) );
  NR2D0 U301 ( .A1(n290), .A2(n316), .ZN(n110) );
  OAI22D0 U302 ( .A1(n291), .A2(n316), .B1(n290), .B2(n293), .ZN(n109) );
  OAI22D0 U303 ( .A1(n291), .A2(n293), .B1(n290), .B2(n301), .ZN(n108) );
  OAI22D0 U304 ( .A1(n291), .A2(n301), .B1(n290), .B2(n300), .ZN(n107) );
  OAI22D0 U305 ( .A1(n291), .A2(n300), .B1(b[3]), .B2(n299), .ZN(n106) );
  OAI22D0 U306 ( .A1(n291), .A2(n299), .B1(b[3]), .B2(n298), .ZN(n105) );
  OAI22D0 U307 ( .A1(n291), .A2(n298), .B1(n290), .B2(n297), .ZN(n104) );
  OAI22D0 U308 ( .A1(n291), .A2(n297), .B1(n290), .B2(n296), .ZN(n103) );
  OAI22D0 U309 ( .A1(n291), .A2(n296), .B1(n290), .B2(n295), .ZN(n102) );
  OAI22D0 U310 ( .A1(n291), .A2(n295), .B1(n290), .B2(n294), .ZN(n101) );
  OAI22D0 U311 ( .A1(n291), .A2(n294), .B1(n290), .B2(n311), .ZN(n100) );
  MAOI222D0 U216 ( .A(n318), .B(n344), .C(n343), .ZN(n39) );
  CKND0 U220 ( .I(n88), .ZN(n343) );
  MUX2ND0 U254 ( .I0(n319), .I1(n293), .S(n316), .ZN(n344) );
  IND2D0 U256 ( .A1(n290), .B1(b[2]), .ZN(n321) );
endmodule


module oadm_fixed_plane_centered_LEVEL2 ( x_mantissa, y_mantissa, divide_mode, 
        plane_exact );
  input [23:0] x_mantissa;
  input [23:0] y_mantissa;
  output [28:0] plane_exact;
  input divide_mode;
  wire   x_residual_wide_20_, y_residual_wide_20_, N23, N24, N25, N26, N27,
         N28, N29, N30, N31, N32, N33, N34, N35, N36, N37, N38, N39, N40, N41,
         N42, N43, N44, N45, N46, N47, N48, N49, N50, N51, N52, N53, N54, N55,
         N56, N57, N58, N59, N60, N61, N62, N63, N64, N65, N66, N67, N68, N69,
         N70, N71, N72, N73, N74, N75, N76, N77, N105, N106, N107, N108, N109,
         N110, N111, N112, N113, N114, N115, N116, N117, N118, N119, N120,
         N121, N122, N123, N124, N125, N126, N127, N128, N129, N130, N131,
         N132, n430, n440, n450, n460, y_residual_product_9_,
         y_residual_product_8_, y_residual_product_7_, y_residual_product_6_,
         y_residual_product_5_, y_residual_product_4_, y_residual_product_26_,
         y_residual_product_25_, y_residual_product_24_,
         y_residual_product_23_, y_residual_product_22_,
         y_residual_product_21_, y_residual_product_20_,
         y_residual_product_19_, y_residual_product_18_,
         y_residual_product_17_, y_residual_product_16_,
         y_residual_product_15_, y_residual_product_14_,
         y_residual_product_13_, y_residual_product_12_,
         y_residual_product_11_, y_residual_product_10_,
         x_residual_product_26_, x_residual_product_25_,
         x_residual_product_24_, x_residual_product_23_,
         x_residual_product_22_, x_residual_product_21_,
         midpoint_index_product_3_, midpoint_index_product_2_, N8, N7, N18,
         N17, N15, N14, n1, n4, n5, n10, n11, n12, n13, n140, n150, n16, n170,
         n180;
  wire   [9:3] midpoint_product;
  wire   [1:0] x_rounding_error;
  wire   [1:0] y_side_x_error;
  wire   [1:0] y_rounding_error;
  wire   [2:0] correction;
  wire   [28:0] centered_plane;
  wire   [9:6] add_0_root_add_0_root_add_44_2_carry;
  wire   [25:19] r432_carry;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9;

  CKXOR2D1 U16 ( .A1(n440), .A2(n460), .Z(correction[1]) );
  XNR2D1 U18 ( .A1(n450), .A2(n11), .ZN(n440) );
  XNR2D1 U20 ( .A1(n430), .A2(x_rounding_error[0]), .ZN(correction[0]) );
  oadm_multilevel_rounding_lut_0 x_rounding_lut ( .level({1'b0, 1'b0}), 
        .index(y_mantissa[22:20]), .value_low(x_mantissa[3:0]), .x_error(
        x_rounding_error) );
  oadm_multilevel_rounding_lut_1 y_rounding_lut ( .level({1'b0, 1'b0}), 
        .index(x_mantissa[22:20]), .value_low(y_mantissa[3:0]), .x_error(
        y_side_x_error), .y_error(y_rounding_error) );
  oadm_fixed_plane_centered_LEVEL2_DW01_sub_0 sub_70 ( .A({centered_plane[28], 
        centered_plane[28], centered_plane[26:0]}), .B({n170, n170, n170, n170, 
        n170, n170, n170, n170, n170, n170, n170, n170, n170, n170, n170, n170, 
        n170, n170, n170, n170, n170, n170, n170, n170, n170, n170, correction}), .CI(n170), .DIFF({SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        plane_exact[26:0]}) );
  oadm_fixed_plane_centered_LEVEL2_DW_mult_tc_1 mult_33 ( .a({
        y_residual_wide_20_, y_mantissa[19:0]}), .b({n170, n180, 
        x_mantissa[22:21], n180, n170}), .product({y_residual_product_26_, 
        y_residual_product_25_, y_residual_product_24_, y_residual_product_23_, 
        y_residual_product_22_, y_residual_product_21_, y_residual_product_20_, 
        y_residual_product_19_, y_residual_product_18_, y_residual_product_17_, 
        y_residual_product_16_, y_residual_product_15_, y_residual_product_14_, 
        y_residual_product_13_, y_residual_product_12_, y_residual_product_11_, 
        y_residual_product_10_, y_residual_product_9_, y_residual_product_8_, 
        y_residual_product_7_, y_residual_product_6_, y_residual_product_5_, 
        y_residual_product_4_, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5}) );
  oadm_fixed_plane_centered_LEVEL2_DW01_sub_3 sub_0_root_sub_67 ( .A({N49, N49, 
        N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35, 
        N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23}), .B({
        y_residual_product_26_, y_residual_product_26_, y_residual_product_26_, 
        y_residual_product_26_, y_residual_product_26_, y_residual_product_26_, 
        y_residual_product_25_, y_residual_product_24_, y_residual_product_23_, 
        y_residual_product_22_, y_residual_product_21_, y_residual_product_20_, 
        y_residual_product_19_, y_residual_product_18_, y_residual_product_17_, 
        y_residual_product_16_, y_residual_product_15_, y_residual_product_14_, 
        y_residual_product_13_, y_residual_product_12_, y_residual_product_11_, 
        y_residual_product_10_, y_residual_product_9_, y_residual_product_8_, 
        y_residual_product_7_, y_residual_product_6_, y_residual_product_5_, 
        y_residual_product_4_}), .CI(n170), .DIFF({N77, N76, N75, N74, N73, 
        N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, 
        N58, N57, N56, N55, N54, N53, N52, N51, N50}) );
  oadm_fixed_plane_centered_LEVEL2_DW01_add_5_DW01_add_7 add_0_root_add_67_3 ( 
        .A({y_residual_product_26_, y_residual_product_26_, 
        y_residual_product_26_, y_residual_product_26_, y_residual_product_26_, 
        y_residual_product_26_, y_residual_product_25_, y_residual_product_24_, 
        y_residual_product_23_, y_residual_product_22_, y_residual_product_21_, 
        y_residual_product_20_, y_residual_product_19_, y_residual_product_18_, 
        y_residual_product_17_, y_residual_product_16_, y_residual_product_15_, 
        y_residual_product_14_, y_residual_product_13_, y_residual_product_12_, 
        y_residual_product_11_, y_residual_product_10_, y_residual_product_9_, 
        y_residual_product_8_, y_residual_product_7_, y_residual_product_6_, 
        y_residual_product_5_, y_residual_product_4_}), .B({N49, N49, N48, N47, 
        N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35, N34, N33, 
        N32, N31, N30, N29, N28, N27, N26, N25, N24, N23}), .CI(n170), .SUM({
        N132, N131, N130, N129, N128, N127, N126, N125, N124, N123, N122, N121, 
        N120, N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, N109, 
        N108, N107, N106, N105}) );
  oadm_fixed_plane_centered_LEVEL2_DW_mult_tc_0 mult_31 ( .a({
        x_residual_wide_20_, x_mantissa[19:0]}), .b({n170, n180, 
        y_mantissa[22:21], n180, n170}), .product({x_residual_product_26_, 
        x_residual_product_25_, x_residual_product_24_, x_residual_product_23_, 
        x_residual_product_22_, x_residual_product_21_, N39, N38, N37, N36, 
        N35, N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9}) );
  AN2XD1 U3 ( .A1(N14), .A2(N7), .Z(n1) );
  AO22D0 U4 ( .A1(N73), .A2(divide_mode), .B1(N128), .B2(n5), .Z(
        centered_plane[23]) );
  AO22D0 U5 ( .A1(N72), .A2(divide_mode), .B1(N127), .B2(n5), .Z(
        centered_plane[22]) );
  AO22D0 U6 ( .A1(N74), .A2(divide_mode), .B1(N129), .B2(n5), .Z(
        centered_plane[24]) );
  AO22D0 U7 ( .A1(N70), .A2(divide_mode), .B1(N125), .B2(n5), .Z(
        centered_plane[20]) );
  AO22D0 U8 ( .A1(N71), .A2(divide_mode), .B1(N126), .B2(n5), .Z(
        centered_plane[21]) );
  AO22D0 U9 ( .A1(N75), .A2(n4), .B1(N130), .B2(n5), .Z(centered_plane[25]) );
  AO22D0 U10 ( .A1(N76), .A2(n4), .B1(N131), .B2(n5), .Z(centered_plane[26])
         );
  AO22D0 U11 ( .A1(N54), .A2(n4), .B1(N109), .B2(n5), .Z(centered_plane[4]) );
  AO22D0 U12 ( .A1(N56), .A2(n4), .B1(N111), .B2(n5), .Z(centered_plane[6]) );
  AO22D0 U13 ( .A1(N53), .A2(n4), .B1(N108), .B2(n5), .Z(centered_plane[3]) );
  AO22D0 U14 ( .A1(N55), .A2(n4), .B1(N110), .B2(n5), .Z(centered_plane[5]) );
  AO22D0 U15 ( .A1(N67), .A2(n4), .B1(N122), .B2(n5), .Z(centered_plane[17])
         );
  AO22D0 U17 ( .A1(N66), .A2(n4), .B1(N121), .B2(n5), .Z(centered_plane[16])
         );
  AO22D0 U19 ( .A1(N57), .A2(n4), .B1(N112), .B2(n5), .Z(centered_plane[7]) );
  AO22D0 U21 ( .A1(N58), .A2(n4), .B1(N113), .B2(n5), .Z(centered_plane[8]) );
  AO22D0 U22 ( .A1(N59), .A2(n4), .B1(N114), .B2(n5), .Z(centered_plane[9]) );
  AO22D0 U23 ( .A1(N60), .A2(n4), .B1(N115), .B2(n5), .Z(centered_plane[10])
         );
  AO22D0 U24 ( .A1(N61), .A2(n4), .B1(N116), .B2(n5), .Z(centered_plane[11])
         );
  AO22D0 U25 ( .A1(N62), .A2(n4), .B1(N117), .B2(n5), .Z(centered_plane[12])
         );
  AO22D0 U26 ( .A1(N63), .A2(n4), .B1(N118), .B2(n5), .Z(centered_plane[13])
         );
  AO22D0 U27 ( .A1(N64), .A2(n4), .B1(N119), .B2(n5), .Z(centered_plane[14])
         );
  AO22D0 U28 ( .A1(N65), .A2(n4), .B1(N120), .B2(n5), .Z(centered_plane[15])
         );
  INVD1 U29 ( .I(n5), .ZN(n4) );
  AO22D0 U30 ( .A1(N77), .A2(n4), .B1(N132), .B2(n5), .Z(centered_plane[28])
         );
  AO22D0 U31 ( .A1(N68), .A2(n4), .B1(N123), .B2(n5), .Z(centered_plane[18])
         );
  AO22D0 U32 ( .A1(N69), .A2(divide_mode), .B1(N124), .B2(n5), .Z(
        centered_plane[19]) );
  INVD1 U35 ( .I(x_residual_product_21_), .ZN(N40) );
  FA1D0 U37 ( .A(midpoint_product[8]), .B(x_residual_product_26_), .CI(
        r432_carry[23]), .CO(r432_carry[24]), .S(N46) );
  FA1D0 U38 ( .A(midpoint_product[7]), .B(x_residual_product_26_), .CI(
        r432_carry[22]), .CO(r432_carry[23]), .S(N45) );
  FA1D0 U39 ( .A(midpoint_product[9]), .B(x_residual_product_26_), .CI(
        r432_carry[24]), .CO(r432_carry[25]), .S(N47) );
  FA1D0 U40 ( .A(midpoint_product[5]), .B(x_residual_product_24_), .CI(
        r432_carry[20]), .CO(r432_carry[21]), .S(N43) );
  FA1D0 U41 ( .A(midpoint_product[6]), .B(x_residual_product_25_), .CI(
        r432_carry[21]), .CO(r432_carry[22]), .S(N44) );
  AO22D0 U42 ( .A1(N51), .A2(n4), .B1(N106), .B2(n5), .Z(centered_plane[1]) );
  AO22D0 U43 ( .A1(N50), .A2(n4), .B1(N105), .B2(n5), .Z(centered_plane[0]) );
  INVD1 U44 ( .I(divide_mode), .ZN(n5) );
  FA1D0 U46 ( .A(midpoint_product[4]), .B(x_residual_product_23_), .CI(
        r432_carry[19]), .CO(r432_carry[20]), .S(N42) );
  FA1D0 U47 ( .A(midpoint_product[3]), .B(x_residual_product_22_), .CI(
        x_residual_product_21_), .CO(r432_carry[19]), .S(N41) );
  AO22D0 U48 ( .A1(N52), .A2(n4), .B1(N107), .B2(n5), .Z(centered_plane[2]) );
  OAI32D1 U49 ( .A1(n10), .A2(n430), .A3(n440), .B1(n450), .B2(n11), .ZN(
        correction[2]) );
  IND2D1 U50 ( .A1(n430), .B1(x_rounding_error[0]), .ZN(n460) );
  AOI22D1 U51 ( .A1(y_rounding_error[1]), .A2(n4), .B1(y_side_x_error[1]), 
        .B2(n5), .ZN(n450) );
  INVD1 U52 ( .I(x_rounding_error[0]), .ZN(n10) );
  FA1D0 U53 ( .A(N15), .B(N8), .CI(n1), .CO(
        add_0_root_add_0_root_add_44_2_carry[6]), .S(midpoint_product[5]) );
  FA1D0 U54 ( .A(n140), .B(midpoint_product[3]), .CI(
        add_0_root_add_0_root_add_44_2_carry[6]), .CO(
        add_0_root_add_0_root_add_44_2_carry[7]), .S(midpoint_product[6]) );
  FA1D0 U55 ( .A(N17), .B(N7), .CI(add_0_root_add_0_root_add_44_2_carry[7]), 
        .CO(add_0_root_add_0_root_add_44_2_carry[8]), .S(midpoint_product[7])
         );
  FA1D0 U56 ( .A(N18), .B(N8), .CI(add_0_root_add_0_root_add_44_2_carry[8]), 
        .CO(add_0_root_add_0_root_add_44_2_carry[9]), .S(midpoint_product[8])
         );
  NR2D1 U57 ( .A1(n150), .A2(n16), .ZN(midpoint_index_product_3_) );
  AOI22D1 U60 ( .A1(y_rounding_error[0]), .A2(n4), .B1(y_side_x_error[0]), 
        .B2(n5), .ZN(n430) );
  INVD1 U61 ( .I(x_rounding_error[1]), .ZN(n11) );
  INVD1 U62 ( .I(x_mantissa[20]), .ZN(x_residual_wide_20_) );
  INVD1 U63 ( .I(y_mantissa[20]), .ZN(y_residual_wide_20_) );
  ND2D1 U64 ( .A1(y_mantissa[21]), .A2(x_mantissa[21]), .ZN(n13) );
  ND2D1 U65 ( .A1(y_mantissa[22]), .A2(x_mantissa[21]), .ZN(n150) );
  INVD1 U66 ( .I(n140), .ZN(midpoint_index_product_2_) );
  IND3D1 U67 ( .A1(midpoint_index_product_3_), .B1(x_mantissa[22]), .B2(
        y_mantissa[22]), .ZN(n140) );
  ND2D1 U68 ( .A1(y_mantissa[21]), .A2(x_mantissa[22]), .ZN(n16) );
  TIEH U70 ( .Z(n180) );
  TIEL U71 ( .ZN(n170) );
  CKXOR2D1 U72 ( .A1(N7), .A2(N14), .Z(midpoint_product[4]) );
  CKXOR2D1 U74 ( .A1(midpoint_index_product_2_), .A2(midpoint_index_product_3_), .Z(N17) );
  CKXOR2D1 U75 ( .A1(r432_carry[25]), .A2(x_residual_product_26_), .Z(N48) );
  MOAI22D1 U77 ( .A1(n12), .A2(n13), .B1(x_mantissa[22]), .B2(y_mantissa[22]), 
        .ZN(N8) );
  CKXOR2D1 U78 ( .A1(n13), .A2(n12), .Z(N7) );
  XNR2D1 U79 ( .A1(y_mantissa[22]), .A2(x_mantissa[22]), .ZN(n12) );
  CKXOR2D1 U80 ( .A1(y_mantissa[21]), .A2(x_mantissa[21]), .Z(
        midpoint_product[3]) );
  CKXOR2D1 U81 ( .A1(n16), .A2(n150), .Z(N15) );
  AN2XD1 U82 ( .A1(x_mantissa[21]), .A2(y_mantissa[21]), .Z(N14) );
  INR2D0 U33 ( .A1(x_residual_product_26_), .B1(r432_carry[25]), .ZN(N49) );
  XNR2D0 U34 ( .A1(add_0_root_add_0_root_add_44_2_carry[9]), .A2(N18), .ZN(
        midpoint_product[9]) );
  CKND2D0 U36 ( .A1(midpoint_index_product_2_), .A2(midpoint_index_product_3_), 
        .ZN(N18) );
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


module fp32_normal_finite_wrapper_DW01_add_1_DW01_add_9 ( A, B, CI, SUM, CO );
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
         N12, N11, N10, n1, n2, n35, n410, n51, n60, n70, n76, n77, n79;
  wire   [7:2] add_0_root_add_0_root_add_22_2_carry;
  wire   [7:2] add_0_root_add_0_root_add_25_2_carry;

  CKXOR2D1 U2 ( .A1(y[31]), .A2(x[31]), .Z(result[31]) );
  fp32_normal_finite_wrapper_DW01_add_3_DW01_add_11 add_1_root_add_0_root_add_25_2 ( 
        .A(x[30:23]), .B({N42, N41, N40, N39, N38, N37, N36, N11}), .CI(n79), 
        .SUM({N34, N33, N32, N31, N30, N29, N28, N27}) );
  fp32_normal_finite_wrapper_DW01_add_1_DW01_add_9 add_1_root_add_0_root_add_22_2 ( 
        .A(x[30:23]), .B({y[30], N17, N16, N15, N14, N13, N12, N11}), .CI(n79), 
        .SUM({N10, N9, N8, N7, N6, N5, N4, N3}) );
  AN2XD1 U3 ( .A1(exponent_adjust[0]), .A2(N3), .Z(n1) );
  AN2XD1 U4 ( .A1(exponent_adjust[0]), .A2(N27), .Z(n2) );
  INVD1 U5 ( .I(divide_mode), .ZN(n77) );
  CKBD1 U6 ( .I(result_fraction[22]), .Z(result[22]) );
  CKBD1 U7 ( .I(result_fraction[21]), .Z(result[21]) );
  CKBD1 U8 ( .I(result_fraction[3]), .Z(result[3]) );
  CKBD1 U9 ( .I(result_fraction[4]), .Z(result[4]) );
  CKBD1 U10 ( .I(result_fraction[6]), .Z(result[6]) );
  CKBD1 U11 ( .I(result_fraction[7]), .Z(result[7]) );
  CKBD1 U12 ( .I(result_fraction[9]), .Z(result[9]) );
  CKBD1 U13 ( .I(result_fraction[11]), .Z(result[11]) );
  CKBD1 U14 ( .I(result_fraction[12]), .Z(result[12]) );
  CKBD1 U15 ( .I(result_fraction[14]), .Z(result[14]) );
  CKBD1 U16 ( .I(result_fraction[15]), .Z(result[15]) );
  CKBD1 U17 ( .I(result_fraction[17]), .Z(result[17]) );
  CKBD1 U18 ( .I(result_fraction[18]), .Z(result[18]) );
  CKBD1 U19 ( .I(result_fraction[20]), .Z(result[20]) );
  CKBD1 U20 ( .I(result_fraction[19]), .Z(result[19]) );
  CKBD1 U21 ( .I(result_fraction[5]), .Z(result[5]) );
  CKBD1 U22 ( .I(result_fraction[8]), .Z(result[8]) );
  CKBD1 U23 ( .I(result_fraction[10]), .Z(result[10]) );
  CKBD1 U24 ( .I(result_fraction[13]), .Z(result[13]) );
  CKBD1 U25 ( .I(result_fraction[16]), .Z(result[16]) );
  CKBD1 U26 ( .I(result_fraction[2]), .Z(result[2]) );
  CKBD1 U27 ( .I(result_fraction[1]), .Z(result[1]) );
  CKBD1 U28 ( .I(result_fraction[0]), .Z(result[0]) );
  AO22D0 U29 ( .A1(N49), .A2(n77), .B1(N25), .B2(divide_mode), .Z(result[29])
         );
  AO22D0 U30 ( .A1(N48), .A2(n77), .B1(N24), .B2(divide_mode), .Z(result[28])
         );
  AO22D0 U31 ( .A1(N47), .A2(n77), .B1(N23), .B2(divide_mode), .Z(result[27])
         );
  AO22D0 U32 ( .A1(N46), .A2(n77), .B1(N22), .B2(divide_mode), .Z(result[26])
         );
  AO22D0 U33 ( .A1(N45), .A2(n77), .B1(N21), .B2(divide_mode), .Z(result[25])
         );
  AO22D0 U34 ( .A1(N44), .A2(n77), .B1(N20), .B2(divide_mode), .Z(result[24])
         );
  FA1D0 U35 ( .A(N4), .B(exponent_adjust[1]), .CI(n1), .CO(
        add_0_root_add_0_root_add_22_2_carry[2]), .S(N20) );
  FA1D0 U36 ( .A(N5), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[2]), .CO(
        add_0_root_add_0_root_add_22_2_carry[3]), .S(N21) );
  FA1D0 U37 ( .A(N6), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[3]), .CO(
        add_0_root_add_0_root_add_22_2_carry[4]), .S(N22) );
  FA1D0 U38 ( .A(N7), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[4]), .CO(
        add_0_root_add_0_root_add_22_2_carry[5]), .S(N23) );
  FA1D0 U39 ( .A(N8), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[5]), .CO(
        add_0_root_add_0_root_add_22_2_carry[6]), .S(N24) );
  FA1D0 U40 ( .A(N9), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[6]), .CO(
        add_0_root_add_0_root_add_22_2_carry[7]), .S(N25) );
  FA1D0 U41 ( .A(N28), .B(exponent_adjust[1]), .CI(n2), .CO(
        add_0_root_add_0_root_add_25_2_carry[2]), .S(N44) );
  FA1D0 U42 ( .A(N29), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[2]), .CO(
        add_0_root_add_0_root_add_25_2_carry[3]), .S(N45) );
  FA1D0 U43 ( .A(N30), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[3]), .CO(
        add_0_root_add_0_root_add_25_2_carry[4]), .S(N46) );
  FA1D0 U44 ( .A(N31), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[4]), .CO(
        add_0_root_add_0_root_add_25_2_carry[5]), .S(N47) );
  FA1D0 U45 ( .A(N32), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[5]), .CO(
        add_0_root_add_0_root_add_25_2_carry[6]), .S(N48) );
  FA1D0 U46 ( .A(N33), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[6]), .CO(
        add_0_root_add_0_root_add_25_2_carry[7]), .S(N49) );
  AO22D0 U47 ( .A1(N43), .A2(n77), .B1(N19), .B2(divide_mode), .Z(result[23])
         );
  CKBD1 U48 ( .I(y[22]), .Z(fraction_y[22]) );
  AO22D0 U49 ( .A1(N50), .A2(n77), .B1(divide_mode), .B2(N26), .Z(result[30])
         );
  XOR3D1 U50 ( .A1(N34), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_25_2_carry[7]), .Z(N50) );
  XOR3D1 U51 ( .A1(N10), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_22_2_carry[7]), .Z(N26) );
  CKBD1 U52 ( .I(y[21]), .Z(fraction_y[21]) );
  CKBD1 U53 ( .I(x[22]), .Z(fraction_x[22]) );
  CKBD1 U54 ( .I(x[21]), .Z(fraction_x[21]) );
  CKBD1 U55 ( .I(x[0]), .Z(fraction_x[0]) );
  CKBD1 U56 ( .I(y[0]), .Z(fraction_y[0]) );
  CKBD1 U57 ( .I(y[1]), .Z(fraction_y[1]) );
  CKBD1 U58 ( .I(y[2]), .Z(fraction_y[2]) );
  CKBD1 U59 ( .I(y[3]), .Z(fraction_y[3]) );
  CKBD1 U60 ( .I(y[4]), .Z(fraction_y[4]) );
  CKBD1 U61 ( .I(y[5]), .Z(fraction_y[5]) );
  CKBD1 U62 ( .I(y[6]), .Z(fraction_y[6]) );
  CKBD1 U63 ( .I(y[7]), .Z(fraction_y[7]) );
  CKBD1 U64 ( .I(y[8]), .Z(fraction_y[8]) );
  CKBD1 U65 ( .I(y[9]), .Z(fraction_y[9]) );
  CKBD1 U66 ( .I(y[10]), .Z(fraction_y[10]) );
  CKBD1 U67 ( .I(y[11]), .Z(fraction_y[11]) );
  CKBD1 U68 ( .I(y[12]), .Z(fraction_y[12]) );
  CKBD1 U69 ( .I(y[13]), .Z(fraction_y[13]) );
  CKBD1 U70 ( .I(y[14]), .Z(fraction_y[14]) );
  CKBD1 U71 ( .I(y[15]), .Z(fraction_y[15]) );
  CKBD1 U72 ( .I(y[16]), .Z(fraction_y[16]) );
  CKBD1 U73 ( .I(y[17]), .Z(fraction_y[17]) );
  AN2XD1 U74 ( .A1(y[23]), .A2(y[24]), .Z(n35) );
  INVD1 U75 ( .I(y[29]), .ZN(N17) );
  INVD0 U76 ( .I(y[24]), .ZN(N12) );
  INVD1 U77 ( .I(y[25]), .ZN(N13) );
  INVD1 U78 ( .I(y[26]), .ZN(N14) );
  INVD1 U79 ( .I(y[27]), .ZN(N15) );
  INVD1 U80 ( .I(y[28]), .ZN(N16) );
  AN2XD1 U81 ( .A1(n35), .A2(y[25]), .Z(n410) );
  AN2XD1 U82 ( .A1(n410), .A2(y[26]), .Z(n51) );
  AN2XD1 U83 ( .A1(n51), .A2(y[27]), .Z(n60) );
  AN2XD1 U84 ( .A1(n60), .A2(y[28]), .Z(n70) );
  CKXOR2D1 U85 ( .A1(y[30]), .A2(n76), .Z(N42) );
  ND2D1 U86 ( .A1(n70), .A2(y[29]), .ZN(n76) );
  CKBD1 U87 ( .I(x[20]), .Z(fraction_x[20]) );
  CKBD1 U88 ( .I(x[19]), .Z(fraction_x[19]) );
  CKBD1 U89 ( .I(x[18]), .Z(fraction_x[18]) );
  CKBD1 U90 ( .I(x[17]), .Z(fraction_x[17]) );
  CKBD1 U91 ( .I(x[16]), .Z(fraction_x[16]) );
  CKBD1 U92 ( .I(x[15]), .Z(fraction_x[15]) );
  CKBD1 U93 ( .I(x[14]), .Z(fraction_x[14]) );
  CKBD1 U94 ( .I(x[13]), .Z(fraction_x[13]) );
  CKBD1 U95 ( .I(x[12]), .Z(fraction_x[12]) );
  CKBD1 U96 ( .I(x[11]), .Z(fraction_x[11]) );
  CKBD1 U97 ( .I(x[10]), .Z(fraction_x[10]) );
  CKBD1 U98 ( .I(x[9]), .Z(fraction_x[9]) );
  CKBD1 U99 ( .I(x[8]), .Z(fraction_x[8]) );
  CKBD1 U100 ( .I(x[7]), .Z(fraction_x[7]) );
  CKBD1 U101 ( .I(x[6]), .Z(fraction_x[6]) );
  CKBD1 U102 ( .I(x[5]), .Z(fraction_x[5]) );
  CKBD1 U103 ( .I(x[4]), .Z(fraction_x[4]) );
  CKBD1 U104 ( .I(x[3]), .Z(fraction_x[3]) );
  CKBD1 U105 ( .I(x[2]), .Z(fraction_x[2]) );
  CKBD1 U106 ( .I(x[1]), .Z(fraction_x[1]) );
  CKBD1 U107 ( .I(y[20]), .Z(fraction_y[20]) );
  CKBD1 U108 ( .I(y[19]), .Z(fraction_y[19]) );
  CKBD1 U109 ( .I(y[18]), .Z(fraction_y[18]) );
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


module oadm_multilevel_opt_FIXED_LEVEL2_DW_mult_uns_0_DW_mult_uns_2 ( a, b, 
        product );
  input [31:0] a;
  input [6:0] b;
  output [38:0] product;
  wire   n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n55, n56, n58,
         n59, n60, n61, n62, n63, n64, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n146, n147, n148,
         n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n199, n200, n201, n202, n203, n204, n205,
         n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216,
         n217, n218, n219, n220, n221, n222, n223, n225, n226, n227, n228,
         n229, n230, n231, n232, n233, n234, n235, n236, n237, n238, n239,
         n240, n241, n242, n243, n244, n245, n246, n247, n248, n249, n454,
         n455, n456, n457, n458, n459, n460, n461, n462, n463, n464, n465,
         n466, n467, n468, n469, n470, n471, n472, n473, n474, n475, n476,
         n477, n478, n479, n481, n482, n483, n484, n485, n486, n487, n488,
         n489, n491, n492, n493, n494, n495, n496, n497, n500, n502, n503,
         n504, n505, n506, n507, n508, n509, n510, n511, n512, n513, n514,
         n515, n516, n517, n518, n519, n520, n521, n522, n523, n524, n525,
         n526, n527, n528, n533;

  FA1D0 U25 ( .A(n60), .B(n56), .CI(n25), .CO(n24), .S(product[30]) );
  FA1D0 U26 ( .A(n63), .B(n61), .CI(n26), .CO(n25), .S(product[29]) );
  FA1D0 U27 ( .A(n68), .B(n64), .CI(n27), .CO(n26), .S(product[28]) );
  FA1D0 U28 ( .A(n72), .B(n69), .CI(n28), .CO(n27), .S(product[27]) );
  FA1D0 U29 ( .A(n75), .B(n73), .CI(n29), .CO(n28), .S(product[26]) );
  FA1D0 U30 ( .A(n78), .B(n76), .CI(n30), .CO(n29), .S(product[25]) );
  FA1D0 U31 ( .A(n81), .B(n79), .CI(n31), .CO(n30), .S(product[24]) );
  FA1D0 U32 ( .A(n84), .B(n82), .CI(n32), .CO(n31), .S(product[23]) );
  FA1D0 U33 ( .A(n87), .B(n85), .CI(n33), .CO(n32), .S(product[22]) );
  FA1D0 U34 ( .A(n90), .B(n88), .CI(n34), .CO(n33), .S(product[21]) );
  FA1D0 U35 ( .A(n93), .B(n91), .CI(n35), .CO(n34), .S(product[20]) );
  FA1D0 U36 ( .A(n96), .B(n94), .CI(n36), .CO(n35), .S(product[19]) );
  FA1D0 U37 ( .A(n99), .B(n97), .CI(n37), .CO(n36), .S(product[18]) );
  FA1D0 U38 ( .A(n102), .B(n100), .CI(n38), .CO(n37), .S(product[17]) );
  FA1D0 U39 ( .A(n105), .B(n103), .CI(n39), .CO(n38), .S(product[16]) );
  FA1D0 U40 ( .A(n108), .B(n106), .CI(n40), .CO(n39), .S(product[15]) );
  FA1D0 U41 ( .A(n111), .B(n109), .CI(n41), .CO(n40), .S(product[14]) );
  FA1D0 U42 ( .A(n114), .B(n112), .CI(n42), .CO(n41), .S(product[13]) );
  FA1D0 U43 ( .A(n117), .B(n115), .CI(n43), .CO(n42), .S(product[12]) );
  FA1D0 U44 ( .A(n120), .B(n118), .CI(n44), .CO(n43), .S(product[11]) );
  FA1D0 U45 ( .A(n123), .B(n121), .CI(n45), .CO(n44), .S(product[10]) );
  FA1D0 U46 ( .A(n126), .B(n124), .CI(n46), .CO(n45), .S(product[9]) );
  FA1D0 U47 ( .A(n129), .B(n127), .CI(n47), .CO(n46), .S(product[8]) );
  FA1D0 U48 ( .A(n132), .B(n130), .CI(n48), .CO(n47), .S(product[7]) );
  FA1D0 U56 ( .A(n58), .B(n170), .CI(n59), .CO(n55), .S(n56) );
  CMPE42D1 U58 ( .A(n146), .B(n461), .C(n171), .CIX(n62), .D(n197), .CO(n60), 
        .COX(n59), .S(n61) );
  CMPE42D1 U59 ( .A(n454), .B(n147), .C(n172), .CIX(n67), .D(n70), .CO(n63), 
        .COX(n62), .S(n64) );
  CMPE42D1 U61 ( .A(n173), .B(n199), .C(n225), .CIX(n71), .D(n70), .CO(n68), 
        .COX(n67), .S(n69) );
  CMPE42D1 U63 ( .A(n226), .B(n148), .C(n174), .CIX(n74), .D(n200), .CO(n72), 
        .COX(n71), .S(n73) );
  CMPE42D1 U64 ( .A(n227), .B(n149), .C(n175), .CIX(n77), .D(n201), .CO(n75), 
        .COX(n74), .S(n76) );
  CMPE42D1 U65 ( .A(n228), .B(n150), .C(n176), .CIX(n80), .D(n202), .CO(n78), 
        .COX(n77), .S(n79) );
  CMPE42D1 U66 ( .A(n229), .B(n151), .C(n177), .CIX(n83), .D(n203), .CO(n81), 
        .COX(n80), .S(n82) );
  CMPE42D1 U67 ( .A(n230), .B(n152), .C(n178), .CIX(n86), .D(n204), .CO(n84), 
        .COX(n83), .S(n85) );
  CMPE42D1 U68 ( .A(n231), .B(n153), .C(n179), .CIX(n89), .D(n205), .CO(n87), 
        .COX(n86), .S(n88) );
  CMPE42D1 U69 ( .A(n232), .B(n154), .C(n180), .CIX(n92), .D(n206), .CO(n90), 
        .COX(n89), .S(n91) );
  CMPE42D1 U70 ( .A(n233), .B(n155), .C(n181), .CIX(n95), .D(n207), .CO(n93), 
        .COX(n92), .S(n94) );
  CMPE42D1 U71 ( .A(n234), .B(n156), .C(n182), .CIX(n98), .D(n208), .CO(n96), 
        .COX(n95), .S(n97) );
  CMPE42D1 U72 ( .A(n235), .B(n157), .C(n183), .CIX(n101), .D(n209), .CO(n99), 
        .COX(n98), .S(n100) );
  CMPE42D1 U73 ( .A(n236), .B(n158), .C(n184), .CIX(n104), .D(n210), .CO(n102), 
        .COX(n101), .S(n103) );
  CMPE42D1 U74 ( .A(n237), .B(n159), .C(n185), .CIX(n107), .D(n211), .CO(n105), 
        .COX(n104), .S(n106) );
  CMPE42D1 U75 ( .A(n238), .B(n160), .C(n186), .CIX(n110), .D(n212), .CO(n108), 
        .COX(n107), .S(n109) );
  CMPE42D1 U76 ( .A(n239), .B(n161), .C(n187), .CIX(n113), .D(n213), .CO(n111), 
        .COX(n110), .S(n112) );
  CMPE42D1 U77 ( .A(n240), .B(n162), .C(n188), .CIX(n116), .D(n214), .CO(n114), 
        .COX(n113), .S(n115) );
  CMPE42D1 U78 ( .A(n241), .B(n163), .C(n189), .CIX(n119), .D(n215), .CO(n117), 
        .COX(n116), .S(n118) );
  CMPE42D1 U79 ( .A(n242), .B(n164), .C(n190), .CIX(n122), .D(n216), .CO(n120), 
        .COX(n119), .S(n121) );
  CMPE42D1 U80 ( .A(n243), .B(n165), .C(n191), .CIX(n125), .D(n217), .CO(n123), 
        .COX(n122), .S(n124) );
  CMPE42D1 U81 ( .A(n244), .B(n166), .C(n192), .CIX(n128), .D(n218), .CO(n126), 
        .COX(n125), .S(n127) );
  CMPE42D1 U82 ( .A(n245), .B(n167), .C(n193), .CIX(n131), .D(n219), .CO(n129), 
        .COX(n128), .S(n130) );
  CMPE42D1 U83 ( .A(n246), .B(n168), .C(n194), .CIX(n136), .D(n220), .CO(n132), 
        .COX(n131), .S(n133) );
  FA1D0 U84 ( .A(n221), .B(n247), .CI(n137), .CO(n134), .S(n135) );
  HA1D0 U85 ( .A(n142), .B(n195), .CO(n136), .S(n137) );
  FA1D0 U86 ( .A(n248), .B(n196), .CI(n222), .CO(n138), .S(n139) );
  HA1D0 U87 ( .A(n223), .B(n249), .CO(n140), .S(n141) );
  AN2XD1 U328 ( .A1(b[2]), .A2(a[27]), .Z(n454) );
  INVD1 U329 ( .I(a[23]), .ZN(n459) );
  INVD1 U330 ( .I(a[22]), .ZN(n460) );
  INVD1 U331 ( .I(a[24]), .ZN(n458) );
  INVD1 U332 ( .I(a[20]), .ZN(n463) );
  INVD1 U333 ( .I(a[21]), .ZN(n462) );
  INVD1 U334 ( .I(a[25]), .ZN(n457) );
  INVD1 U335 ( .I(a[6]), .ZN(n477) );
  INVD1 U336 ( .I(a[17]), .ZN(n466) );
  INVD1 U337 ( .I(a[7]), .ZN(n476) );
  INVD1 U338 ( .I(a[8]), .ZN(n475) );
  INVD1 U339 ( .I(a[9]), .ZN(n474) );
  INVD1 U340 ( .I(a[10]), .ZN(n473) );
  INVD1 U341 ( .I(a[11]), .ZN(n472) );
  INVD1 U342 ( .I(a[12]), .ZN(n471) );
  INVD1 U343 ( .I(a[13]), .ZN(n470) );
  INVD1 U344 ( .I(a[14]), .ZN(n469) );
  INVD1 U345 ( .I(a[15]), .ZN(n468) );
  INVD1 U346 ( .I(a[16]), .ZN(n467) );
  INVD1 U347 ( .I(a[18]), .ZN(n465) );
  INVD1 U348 ( .I(a[19]), .ZN(n464) );
  INVD1 U349 ( .I(a[5]), .ZN(n478) );
  INVD1 U350 ( .I(a[4]), .ZN(n479) );
  NR2D1 U351 ( .A1(n456), .A2(n481), .ZN(n221) );
  INVD1 U353 ( .I(a[3]), .ZN(n481) );
  INVD1 U354 ( .I(a[1]), .ZN(n483) );
  INVD1 U356 ( .I(b[2]), .ZN(n456) );
  NR2D1 U357 ( .A1(n456), .A2(n482), .ZN(n222) );
  NR2D1 U358 ( .A1(n456), .A2(n479), .ZN(n220) );
  NR2D1 U359 ( .A1(n456), .A2(n483), .ZN(n223) );
  NR2D1 U361 ( .A1(n456), .A2(n462), .ZN(n203) );
  NR2D1 U362 ( .A1(n456), .A2(n463), .ZN(n204) );
  NR2D1 U363 ( .A1(n456), .A2(n460), .ZN(n202) );
  NR2D1 U364 ( .A1(n456), .A2(n465), .ZN(n206) );
  NR2D1 U365 ( .A1(n456), .A2(n464), .ZN(n205) );
  NR2D1 U366 ( .A1(n456), .A2(n467), .ZN(n208) );
  NR2D1 U367 ( .A1(n456), .A2(n466), .ZN(n207) );
  NR2D1 U368 ( .A1(n456), .A2(n459), .ZN(n201) );
  NR2D1 U369 ( .A1(n456), .A2(n458), .ZN(n200) );
  NR2D1 U370 ( .A1(n456), .A2(n468), .ZN(n209) );
  NR2D1 U371 ( .A1(n456), .A2(n478), .ZN(n219) );
  NR2D1 U372 ( .A1(n456), .A2(n477), .ZN(n218) );
  NR2D1 U373 ( .A1(n456), .A2(n476), .ZN(n217) );
  NR2D1 U374 ( .A1(n456), .A2(n475), .ZN(n216) );
  NR2D1 U375 ( .A1(n456), .A2(n474), .ZN(n215) );
  NR2D1 U376 ( .A1(n456), .A2(n473), .ZN(n214) );
  NR2D1 U377 ( .A1(n456), .A2(n472), .ZN(n213) );
  NR2D1 U378 ( .A1(n456), .A2(n471), .ZN(n212) );
  NR2D1 U379 ( .A1(n456), .A2(n470), .ZN(n211) );
  NR2D1 U380 ( .A1(n456), .A2(n469), .ZN(n210) );
  NR2D1 U381 ( .A1(n456), .A2(n457), .ZN(n199) );
  INVD1 U382 ( .I(n70), .ZN(n461) );
  ND2D1 U383 ( .A1(b[2]), .A2(a[27]), .ZN(n197) );
  INVD1 U384 ( .I(b[5]), .ZN(n486) );
  INVD1 U386 ( .I(n494), .ZN(n485) );
  INVD1 U387 ( .I(n493), .ZN(n455) );
  ND2D1 U388 ( .A1(n493), .A2(b[6]), .ZN(n494) );
  NR2D0 U389 ( .A1(n478), .A2(n487), .ZN(n247) );
  NR2D0 U390 ( .A1(n479), .A2(n487), .ZN(n248) );
  NR2D0 U392 ( .A1(n481), .A2(n487), .ZN(n249) );
  NR2D0 U395 ( .A1(n477), .A2(n487), .ZN(n246) );
  NR2D0 U396 ( .A1(n476), .A2(n487), .ZN(n245) );
  NR2D0 U397 ( .A1(n475), .A2(n487), .ZN(n244) );
  NR2D0 U398 ( .A1(n474), .A2(n487), .ZN(n243) );
  NR2D0 U399 ( .A1(n473), .A2(n487), .ZN(n242) );
  NR2D0 U400 ( .A1(n472), .A2(n487), .ZN(n241) );
  NR2D0 U401 ( .A1(n471), .A2(n487), .ZN(n240) );
  NR2D0 U402 ( .A1(n470), .A2(n487), .ZN(n239) );
  NR2D0 U403 ( .A1(n469), .A2(n487), .ZN(n238) );
  NR2D0 U404 ( .A1(n468), .A2(n487), .ZN(n237) );
  NR2D0 U405 ( .A1(n467), .A2(n487), .ZN(n236) );
  NR2D0 U406 ( .A1(n466), .A2(n487), .ZN(n235) );
  NR2D0 U407 ( .A1(n465), .A2(n487), .ZN(n234) );
  NR2D0 U408 ( .A1(n464), .A2(n487), .ZN(n233) );
  NR2D0 U409 ( .A1(n463), .A2(n487), .ZN(n232) );
  NR2D0 U410 ( .A1(n462), .A2(n487), .ZN(n231) );
  NR2D0 U411 ( .A1(n460), .A2(n487), .ZN(n230) );
  NR2D0 U412 ( .A1(n459), .A2(n487), .ZN(n229) );
  NR2D0 U413 ( .A1(n458), .A2(n487), .ZN(n228) );
  NR2D0 U414 ( .A1(n457), .A2(n487), .ZN(n227) );
  AN2D0 U415 ( .A1(a[27]), .A2(b[0]), .Z(n226) );
  CKND2D0 U416 ( .A1(b[0]), .A2(a[27]), .ZN(n225) );
  XOR3D0 U417 ( .A1(n58), .A2(n488), .A3(n489), .Z(product[31]) );
  AOI22D0 U420 ( .A1(a[25]), .A2(n455), .B1(n485), .B2(a[24]), .ZN(n488) );
  AOI22D0 U421 ( .A1(n485), .A2(a[20]), .B1(n455), .B2(a[21]), .ZN(n70) );
  AOI22D0 U422 ( .A1(n485), .A2(a[23]), .B1(n455), .B2(a[24]), .ZN(n58) );
  AO222D0 U423 ( .A1(n495), .A2(n133), .B1(n495), .B2(n134), .C1(n134), .C2(
        n133), .Z(n48) );
  AO222D0 U424 ( .A1(n496), .A2(n135), .B1(n496), .B2(n138), .C1(n138), .C2(
        n135), .Z(n495) );
  AO222D0 U425 ( .A1(n497), .A2(n139), .B1(n497), .B2(n140), .C1(n140), .C2(
        n139), .Z(n496) );
  NR2D0 U427 ( .A1(b[2]), .A2(n484), .ZN(n196) );
  OAI22D0 U428 ( .A1(n502), .A2(n491), .B1(b[2]), .B2(n503), .ZN(n195) );
  XNR2D0 U429 ( .A1(n486), .A2(n484), .ZN(n502) );
  OAI22D0 U430 ( .A1(n503), .A2(n491), .B1(b[2]), .B2(n504), .ZN(n194) );
  XNR2D0 U431 ( .A1(n486), .A2(n483), .ZN(n503) );
  OAI22D0 U432 ( .A1(n504), .A2(n491), .B1(b[2]), .B2(n505), .ZN(n193) );
  XNR2D0 U433 ( .A1(n486), .A2(n482), .ZN(n504) );
  OAI22D0 U434 ( .A1(n505), .A2(n491), .B1(b[2]), .B2(n506), .ZN(n192) );
  XNR2D0 U435 ( .A1(n486), .A2(n481), .ZN(n505) );
  OAI22D0 U436 ( .A1(n506), .A2(n491), .B1(b[2]), .B2(n507), .ZN(n191) );
  XNR2D0 U437 ( .A1(n486), .A2(n479), .ZN(n506) );
  OAI22D0 U438 ( .A1(n507), .A2(n491), .B1(b[2]), .B2(n508), .ZN(n190) );
  XNR2D0 U439 ( .A1(n486), .A2(n478), .ZN(n507) );
  OAI22D0 U440 ( .A1(n508), .A2(n491), .B1(b[2]), .B2(n509), .ZN(n189) );
  XNR2D0 U441 ( .A1(n486), .A2(n477), .ZN(n508) );
  OAI22D0 U442 ( .A1(n509), .A2(n491), .B1(b[2]), .B2(n510), .ZN(n188) );
  XNR2D0 U443 ( .A1(n486), .A2(n476), .ZN(n509) );
  OAI22D0 U444 ( .A1(n510), .A2(n491), .B1(b[2]), .B2(n511), .ZN(n187) );
  XNR2D0 U445 ( .A1(n486), .A2(n475), .ZN(n510) );
  OAI22D0 U446 ( .A1(n511), .A2(n491), .B1(b[2]), .B2(n512), .ZN(n186) );
  XNR2D0 U447 ( .A1(n486), .A2(n474), .ZN(n511) );
  OAI22D0 U448 ( .A1(n512), .A2(n491), .B1(b[2]), .B2(n513), .ZN(n185) );
  XNR2D0 U449 ( .A1(n486), .A2(n473), .ZN(n512) );
  OAI22D0 U450 ( .A1(n513), .A2(n491), .B1(b[2]), .B2(n514), .ZN(n184) );
  XNR2D0 U451 ( .A1(n486), .A2(n472), .ZN(n513) );
  OAI22D0 U452 ( .A1(n514), .A2(n491), .B1(b[2]), .B2(n515), .ZN(n183) );
  XNR2D0 U453 ( .A1(n486), .A2(n471), .ZN(n514) );
  OAI22D0 U454 ( .A1(n515), .A2(n491), .B1(b[2]), .B2(n516), .ZN(n182) );
  XNR2D0 U455 ( .A1(n486), .A2(n470), .ZN(n515) );
  OAI22D0 U456 ( .A1(n516), .A2(n491), .B1(b[2]), .B2(n517), .ZN(n181) );
  XNR2D0 U457 ( .A1(n486), .A2(n469), .ZN(n516) );
  OAI22D0 U458 ( .A1(n517), .A2(n491), .B1(b[2]), .B2(n518), .ZN(n180) );
  XNR2D0 U459 ( .A1(n486), .A2(n468), .ZN(n517) );
  OAI22D0 U460 ( .A1(n518), .A2(n491), .B1(b[2]), .B2(n519), .ZN(n179) );
  XNR2D0 U461 ( .A1(n486), .A2(n467), .ZN(n518) );
  OAI22D0 U462 ( .A1(n519), .A2(n491), .B1(b[2]), .B2(n520), .ZN(n178) );
  XNR2D0 U463 ( .A1(n486), .A2(n466), .ZN(n519) );
  OAI22D0 U464 ( .A1(n520), .A2(n491), .B1(b[2]), .B2(n521), .ZN(n177) );
  XNR2D0 U465 ( .A1(n486), .A2(n465), .ZN(n520) );
  OAI22D0 U466 ( .A1(n521), .A2(n491), .B1(b[2]), .B2(n522), .ZN(n176) );
  XNR2D0 U467 ( .A1(n486), .A2(n464), .ZN(n521) );
  OAI22D0 U468 ( .A1(n522), .A2(n491), .B1(b[2]), .B2(n523), .ZN(n175) );
  XNR2D0 U469 ( .A1(n486), .A2(n463), .ZN(n522) );
  OAI22D0 U470 ( .A1(n523), .A2(n491), .B1(b[2]), .B2(n524), .ZN(n174) );
  XNR2D0 U471 ( .A1(n486), .A2(n462), .ZN(n523) );
  OAI22D0 U472 ( .A1(n524), .A2(n491), .B1(b[2]), .B2(n525), .ZN(n173) );
  XNR2D0 U473 ( .A1(n486), .A2(n460), .ZN(n524) );
  OAI22D0 U474 ( .A1(n525), .A2(n491), .B1(b[2]), .B2(n526), .ZN(n172) );
  XNR2D0 U475 ( .A1(n486), .A2(n459), .ZN(n525) );
  OAI22D0 U476 ( .A1(n526), .A2(n491), .B1(b[2]), .B2(n527), .ZN(n171) );
  XNR2D0 U477 ( .A1(n486), .A2(n458), .ZN(n526) );
  OAI22D0 U478 ( .A1(n527), .A2(n491), .B1(b[2]), .B2(n492), .ZN(n170) );
  XNR2D0 U479 ( .A1(b[5]), .A2(a[27]), .ZN(n492) );
  XNR2D0 U480 ( .A1(n486), .A2(n457), .ZN(n527) );
  NR2D0 U481 ( .A1(n493), .A2(n484), .ZN(n168) );
  OAI22D0 U482 ( .A1(n494), .A2(n484), .B1(n493), .B2(n483), .ZN(n167) );
  OAI22D0 U483 ( .A1(n494), .A2(n483), .B1(n493), .B2(n482), .ZN(n166) );
  OAI22D0 U484 ( .A1(n494), .A2(n482), .B1(n493), .B2(n481), .ZN(n165) );
  OAI22D0 U485 ( .A1(n494), .A2(n481), .B1(n493), .B2(n479), .ZN(n164) );
  OAI22D0 U486 ( .A1(n494), .A2(n479), .B1(n493), .B2(n478), .ZN(n163) );
  OAI22D0 U487 ( .A1(n494), .A2(n478), .B1(n493), .B2(n477), .ZN(n162) );
  OAI22D0 U488 ( .A1(n494), .A2(n477), .B1(n493), .B2(n476), .ZN(n161) );
  OAI22D0 U489 ( .A1(n494), .A2(n476), .B1(n493), .B2(n475), .ZN(n160) );
  OAI22D0 U490 ( .A1(n494), .A2(n475), .B1(n493), .B2(n474), .ZN(n159) );
  OAI22D0 U491 ( .A1(n494), .A2(n474), .B1(n493), .B2(n473), .ZN(n158) );
  OAI22D0 U492 ( .A1(n494), .A2(n473), .B1(n493), .B2(n472), .ZN(n157) );
  OAI22D0 U493 ( .A1(n494), .A2(n472), .B1(n493), .B2(n471), .ZN(n156) );
  OAI22D0 U494 ( .A1(n494), .A2(n471), .B1(n493), .B2(n470), .ZN(n155) );
  OAI22D0 U495 ( .A1(n494), .A2(n470), .B1(n493), .B2(n469), .ZN(n154) );
  OAI22D0 U496 ( .A1(n494), .A2(n469), .B1(n493), .B2(n468), .ZN(n153) );
  OAI22D0 U497 ( .A1(n494), .A2(n468), .B1(n493), .B2(n467), .ZN(n152) );
  OAI22D0 U498 ( .A1(n494), .A2(n467), .B1(n493), .B2(n466), .ZN(n151) );
  OAI22D0 U499 ( .A1(n494), .A2(n466), .B1(n493), .B2(n465), .ZN(n150) );
  OAI22D0 U500 ( .A1(n494), .A2(n465), .B1(n493), .B2(n464), .ZN(n149) );
  OAI22D0 U501 ( .A1(n494), .A2(n464), .B1(n493), .B2(n463), .ZN(n148) );
  OAI22D0 U502 ( .A1(n494), .A2(n462), .B1(n493), .B2(n460), .ZN(n147) );
  OAI22D0 U503 ( .A1(n494), .A2(n460), .B1(n493), .B2(n459), .ZN(n146) );
  CKXOR2D0 U504 ( .A1(n486), .A2(b[6]), .Z(n493) );
  OAI32D0 U505 ( .A1(n486), .A2(a[0]), .A3(b[2]), .B1(n486), .B2(n491), .ZN(
        n142) );
  CKND2D0 U506 ( .A1(b[2]), .A2(n528), .ZN(n491) );
  XNR2D0 U507 ( .A1(n486), .A2(b[4]), .ZN(n528) );
  XNR3D0 U352 ( .A1(n24), .A2(n55), .A3(n533), .ZN(n489) );
  AOI21D0 U355 ( .A1(n491), .A2(b[2]), .B(n492), .ZN(n533) );
  INR4D0 U360 ( .A1(n141), .B1(n456), .B2(n484), .B3(n500), .ZN(n497) );
  CKND0 U385 ( .I(a[0]), .ZN(n484) );
  CKND0 U391 ( .I(b[0]), .ZN(n487) );
  CKND0 U393 ( .I(a[2]), .ZN(n482) );
  CKND2D0 U394 ( .A1(a[2]), .A2(b[0]), .ZN(n500) );
endmodule


module oadm_multilevel_opt_FIXED_LEVEL2 ( x, y, level, divide_mode, result );
  input [31:0] x;
  input [31:0] y;
  input [1:0] level;
  output [31:0] result;
  input divide_mode;
  wire   n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n1, n2, n3, n4, n55, n56, n58;
  wire   [22:0] x_mantissa;
  wire   [22:0] y_mantissa;
  wire   [26:0] plane_full;
  wire   [5:0] coefficient;
  wire   [31:7] scaled_product;
  wire   [22:0] normalized_fraction;
  wire   [2:0] exponent_adjust;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15;

  oadm_fixed_plane_centered_LEVEL2 fixed_centered_plane_plane ( .x_mantissa({
        1'b0, x_mantissa}), .y_mantissa({1'b0, y_mantissa}), .divide_mode(
        divide_mode), .plane_exact({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, plane_full}) );
  fp32_normal_finite_wrapper fp_wrapper ( .x(x), .y(y), .divide_mode(
        divide_mode), .fraction_x(x_mantissa), .fraction_y(y_mantissa), 
        .result_fraction(normalized_fraction), .exponent_adjust({
        exponent_adjust[2], exponent_adjust[2], exponent_adjust[0]}), .result(
        result) );
  oadm_multilevel_opt_FIXED_LEVEL2_DW_mult_uns_0_DW_mult_uns_2 mult_67 ( .a({
        plane_full[26], plane_full[26], plane_full[26], plane_full[26], 
        plane_full[26], plane_full}), .b({n58, coefficient[5:4], n5, 
        coefficient[2], n5, coefficient[0]}), .product({
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, scaled_product, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15}) );
  ND2D1 U3 ( .A1(n13), .A2(n1), .ZN(exponent_adjust[2]) );
  ND2D1 U4 ( .A1(n55), .A2(n13), .ZN(exponent_adjust[0]) );
  CKBD1 U5 ( .I(n8), .Z(n55) );
  IND3D1 U6 ( .A1(n29), .B1(n30), .B2(n55), .ZN(n13) );
  ND3D1 U7 ( .A1(n30), .A2(n29), .A3(n55), .ZN(n1) );
  OAI221D0 U8 ( .A1(n29), .A2(n3), .B1(n55), .B2(n30), .C(n31), .ZN(
        normalized_fraction[22]) );
  OA22D0 U9 ( .A1(n2), .A2(n32), .B1(n13), .B2(n33), .Z(n31) );
  OAI221D0 U10 ( .A1(n33), .A2(n7), .B1(n55), .B2(n29), .C(n34), .ZN(
        normalized_fraction[21]) );
  OA22D0 U11 ( .A1(n1), .A2(n35), .B1(n13), .B2(n32), .Z(n34) );
  OAI221D0 U12 ( .A1(n22), .A2(n7), .B1(n55), .B2(n20), .C(n25), .ZN(
        normalized_fraction[3]) );
  OA22D0 U13 ( .A1(n11), .A2(n26), .B1(n13), .B2(n24), .Z(n25) );
  OAI221D0 U14 ( .A1(n20), .A2(n3), .B1(n55), .B2(n18), .C(n23), .ZN(
        normalized_fraction[4]) );
  OA22D0 U15 ( .A1(n1), .A2(n24), .B1(n13), .B2(n22), .Z(n23) );
  OAI221D0 U16 ( .A1(n16), .A2(n7), .B1(n55), .B2(n12), .C(n19), .ZN(
        normalized_fraction[6]) );
  OA22D0 U17 ( .A1(n11), .A2(n20), .B1(n13), .B2(n18), .Z(n19) );
  OAI221D0 U18 ( .A1(n12), .A2(n3), .B1(n55), .B2(n14), .C(n17), .ZN(
        normalized_fraction[7]) );
  OA22D0 U19 ( .A1(n1), .A2(n18), .B1(n13), .B2(n16), .Z(n17) );
  OAI221D0 U20 ( .A1(n6), .A2(n7), .B1(n8), .B2(n9), .C(n10), .ZN(
        normalized_fraction[9]) );
  OA22D0 U21 ( .A1(n11), .A2(n12), .B1(n13), .B2(n14), .Z(n10) );
  OAI221D0 U22 ( .A1(n51), .A2(n7), .B1(n8), .B2(n49), .C(n53), .ZN(
        normalized_fraction[11]) );
  OA22D0 U23 ( .A1(n11), .A2(n6), .B1(n13), .B2(n9), .Z(n53) );
  OAI221D0 U24 ( .A1(n49), .A2(n7), .B1(n8), .B2(n47), .C(n52), .ZN(
        normalized_fraction[12]) );
  OA22D0 U25 ( .A1(n11), .A2(n9), .B1(n13), .B2(n51), .Z(n52) );
  OAI221D0 U26 ( .A1(n45), .A2(n4), .B1(n8), .B2(n43), .C(n48), .ZN(
        normalized_fraction[14]) );
  OA22D0 U27 ( .A1(n11), .A2(n49), .B1(n13), .B2(n47), .Z(n48) );
  OAI221D0 U28 ( .A1(n43), .A2(n7), .B1(n8), .B2(n41), .C(n46), .ZN(
        normalized_fraction[15]) );
  OA22D0 U29 ( .A1(n1), .A2(n47), .B1(n13), .B2(n45), .Z(n46) );
  OAI221D0 U30 ( .A1(n39), .A2(n4), .B1(n8), .B2(n37), .C(n42), .ZN(
        normalized_fraction[17]) );
  OA22D0 U31 ( .A1(n11), .A2(n43), .B1(n13), .B2(n41), .Z(n42) );
  OAI221D0 U32 ( .A1(n37), .A2(n7), .B1(n8), .B2(n35), .C(n40), .ZN(
        normalized_fraction[18]) );
  OA22D0 U33 ( .A1(n1), .A2(n41), .B1(n13), .B2(n39), .Z(n40) );
  OAI221D0 U34 ( .A1(n32), .A2(n4), .B1(n8), .B2(n33), .C(n36), .ZN(
        normalized_fraction[20]) );
  OA22D0 U35 ( .A1(n11), .A2(n37), .B1(n13), .B2(n35), .Z(n36) );
  OAI221D0 U36 ( .A1(n35), .A2(n3), .B1(n55), .B2(n32), .C(n38), .ZN(
        normalized_fraction[19]) );
  OA22D0 U37 ( .A1(n2), .A2(n39), .B1(n13), .B2(n37), .Z(n38) );
  OAI221D0 U38 ( .A1(n18), .A2(n4), .B1(n8), .B2(n16), .C(n21), .ZN(
        normalized_fraction[5]) );
  OA22D0 U39 ( .A1(n2), .A2(n22), .B1(n13), .B2(n20), .Z(n21) );
  OAI221D0 U40 ( .A1(n14), .A2(n4), .B1(n55), .B2(n6), .C(n15), .ZN(
        normalized_fraction[8]) );
  OA22D0 U41 ( .A1(n2), .A2(n16), .B1(n13), .B2(n12), .Z(n15) );
  OAI221D0 U42 ( .A1(n9), .A2(n3), .B1(n55), .B2(n51), .C(n54), .ZN(
        normalized_fraction[10]) );
  OA22D0 U43 ( .A1(n2), .A2(n14), .B1(n13), .B2(n6), .Z(n54) );
  OAI221D0 U44 ( .A1(n47), .A2(n3), .B1(n55), .B2(n45), .C(n50), .ZN(
        normalized_fraction[13]) );
  OA22D0 U45 ( .A1(n2), .A2(n51), .B1(n13), .B2(n49), .Z(n50) );
  OAI221D0 U46 ( .A1(n41), .A2(n3), .B1(n8), .B2(n39), .C(n44), .ZN(
        normalized_fraction[16]) );
  OA22D0 U47 ( .A1(n2), .A2(n45), .B1(n13), .B2(n43), .Z(n44) );
  OAI221D0 U48 ( .A1(n24), .A2(n4), .B1(n55), .B2(n22), .C(n27), .ZN(
        normalized_fraction[2]) );
  OA22D0 U49 ( .A1(n13), .A2(n26), .B1(n2), .B2(n28), .Z(n27) );
  ND3D1 U50 ( .A1(n30), .A2(n29), .A3(n55), .ZN(n2) );
  ND3D1 U51 ( .A1(n30), .A2(n29), .A3(n55), .ZN(n11) );
  OAI222D0 U52 ( .A1(n26), .A2(n3), .B1(n28), .B2(n13), .C1(n55), .C2(n24), 
        .ZN(normalized_fraction[1]) );
  IND2D1 U53 ( .A1(n30), .B1(n55), .ZN(n3) );
  IND2D1 U54 ( .A1(n30), .B1(n55), .ZN(n7) );
  IND2D1 U55 ( .A1(n30), .B1(n55), .ZN(n4) );
  OAI22D1 U56 ( .A1(n55), .A2(n26), .B1(n28), .B2(n4), .ZN(
        normalized_fraction[0]) );
  AOI22D1 U57 ( .A1(scaled_product[31]), .A2(divide_mode), .B1(plane_full[24]), 
        .B2(n56), .ZN(n8) );
  AOI22D1 U58 ( .A1(scaled_product[30]), .A2(divide_mode), .B1(plane_full[23]), 
        .B2(n56), .ZN(n30) );
  AOI22D1 U59 ( .A1(scaled_product[29]), .A2(divide_mode), .B1(plane_full[22]), 
        .B2(n56), .ZN(n29) );
  AOI22D1 U60 ( .A1(scaled_product[28]), .A2(divide_mode), .B1(plane_full[21]), 
        .B2(n56), .ZN(n33) );
  AOI22D1 U61 ( .A1(scaled_product[27]), .A2(divide_mode), .B1(plane_full[20]), 
        .B2(n56), .ZN(n32) );
  INVD1 U62 ( .I(coefficient[4]), .ZN(coefficient[2]) );
  AOI22D1 U63 ( .A1(scaled_product[26]), .A2(divide_mode), .B1(plane_full[19]), 
        .B2(n56), .ZN(n35) );
  AOI22D1 U64 ( .A1(scaled_product[25]), .A2(divide_mode), .B1(plane_full[18]), 
        .B2(n56), .ZN(n37) );
  AOI22D1 U65 ( .A1(scaled_product[24]), .A2(divide_mode), .B1(plane_full[17]), 
        .B2(n56), .ZN(n39) );
  AOI22D1 U66 ( .A1(scaled_product[23]), .A2(divide_mode), .B1(plane_full[16]), 
        .B2(n56), .ZN(n41) );
  AOI22D1 U67 ( .A1(scaled_product[22]), .A2(divide_mode), .B1(plane_full[15]), 
        .B2(n56), .ZN(n43) );
  AOI22D1 U68 ( .A1(scaled_product[21]), .A2(divide_mode), .B1(plane_full[14]), 
        .B2(n56), .ZN(n45) );
  AOI22D1 U69 ( .A1(scaled_product[20]), .A2(divide_mode), .B1(plane_full[13]), 
        .B2(n56), .ZN(n47) );
  AOI22D1 U70 ( .A1(scaled_product[19]), .A2(divide_mode), .B1(plane_full[12]), 
        .B2(n56), .ZN(n49) );
  AOI22D1 U71 ( .A1(scaled_product[18]), .A2(divide_mode), .B1(plane_full[11]), 
        .B2(n56), .ZN(n51) );
  AOI22D1 U72 ( .A1(scaled_product[17]), .A2(divide_mode), .B1(plane_full[10]), 
        .B2(n56), .ZN(n9) );
  AOI22D1 U73 ( .A1(scaled_product[16]), .A2(divide_mode), .B1(plane_full[9]), 
        .B2(n56), .ZN(n6) );
  AOI22D1 U74 ( .A1(scaled_product[15]), .A2(divide_mode), .B1(plane_full[8]), 
        .B2(n56), .ZN(n14) );
  AOI22D1 U75 ( .A1(scaled_product[14]), .A2(divide_mode), .B1(plane_full[7]), 
        .B2(n56), .ZN(n12) );
  AOI22D1 U76 ( .A1(scaled_product[13]), .A2(divide_mode), .B1(plane_full[6]), 
        .B2(n56), .ZN(n16) );
  AOI22D1 U77 ( .A1(scaled_product[12]), .A2(divide_mode), .B1(plane_full[5]), 
        .B2(n56), .ZN(n18) );
  AOI22D1 U78 ( .A1(scaled_product[11]), .A2(divide_mode), .B1(plane_full[4]), 
        .B2(n56), .ZN(n20) );
  AOI22D1 U79 ( .A1(scaled_product[10]), .A2(divide_mode), .B1(plane_full[3]), 
        .B2(n56), .ZN(n22) );
  AOI22D1 U80 ( .A1(scaled_product[9]), .A2(divide_mode), .B1(plane_full[2]), 
        .B2(n56), .ZN(n24) );
  AOI22D1 U81 ( .A1(scaled_product[8]), .A2(divide_mode), .B1(plane_full[1]), 
        .B2(n56), .ZN(n26) );
  AOI22D1 U82 ( .A1(scaled_product[7]), .A2(divide_mode), .B1(plane_full[0]), 
        .B2(n56), .ZN(n28) );
  ND2D1 U84 ( .A1(y_mantissa[21]), .A2(n58), .ZN(coefficient[5]) );
  NR2D1 U85 ( .A1(n58), .A2(y_mantissa[21]), .ZN(coefficient[4]) );
  NR2D1 U86 ( .A1(y_mantissa[22]), .A2(y_mantissa[21]), .ZN(coefficient[0]) );
  INVD1 U88 ( .I(divide_mode), .ZN(n56) );
  TIEL U90 ( .ZN(n5) );
  CKND0 U83 ( .I(y_mantissa[22]), .ZN(n58) );
endmodule


module oadm_fixed_l2_opt ( x, y, divide_mode, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  input divide_mode;
  wire   n3;

  oadm_multilevel_opt_FIXED_LEVEL2 impl ( .x(x), .y(y), .level({1'b0, 1'b0}), 
        .divide_mode(n3), .result(result) );
  CKBD1 U9 ( .I(divide_mode), .Z(n3) );
endmodule

