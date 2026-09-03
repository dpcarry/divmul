/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Wed Sep  2 22:01:20 2026
/////////////////////////////////////////////////////////////


module oadm_fixed_l1_div_root_opt ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   implementation_plane_N105, implementation_plane_N104,
         implementation_plane_N103, implementation_plane_N102, C10_DATA2_1,
         mult_x_1_n83, mult_x_1_n82, mult_x_1_n81, mult_x_1_n80, mult_x_1_n77,
         mult_x_1_n76, mult_x_1_n75, mult_x_1_n74, mult_x_1_n73, mult_x_1_n72,
         mult_x_1_n46, mult_x_1_n43, mult_x_1_n42, mult_x_1_n41, mult_x_1_n40,
         mult_x_1_n39, mult_x_1_n38, mult_x_1_n37, mult_x_1_n36, mult_x_1_n35,
         mult_x_1_n34, mult_x_1_n33, mult_x_1_n32, DP_OP_63J1_123_2151_n23,
         DP_OP_63J1_123_2151_n22, DP_OP_63J1_123_2151_n21,
         DP_OP_63J1_123_2151_n20, DP_OP_63J1_123_2151_n19,
         DP_OP_63J1_123_2151_n18, DP_OP_63J1_123_2151_n17,
         DP_OP_63J1_123_2151_n16, DP_OP_63J1_123_2151_n15,
         DP_OP_63J1_123_2151_n14, DP_OP_63J1_123_2151_n13,
         DP_OP_63J1_123_2151_n12, DP_OP_63J1_123_2151_n11,
         DP_OP_63J1_123_2151_n7, DP_OP_63J1_123_2151_n6, intadd_0_A_10_,
         intadd_0_A_9_, intadd_0_A_8_, intadd_0_A_2_, intadd_0_A_1_,
         intadd_0_A_0_, intadd_0_B_10_, intadd_0_B_9_, intadd_0_B_8_,
         intadd_0_B_7_, intadd_0_B_3_, intadd_0_B_2_, intadd_0_B_0_,
         intadd_0_CI, intadd_0_SUM_10_, intadd_0_SUM_9_, intadd_0_SUM_8_,
         intadd_0_SUM_7_, intadd_0_SUM_6_, intadd_0_SUM_5_, intadd_0_SUM_4_,
         intadd_0_SUM_3_, intadd_0_SUM_2_, intadd_0_SUM_1_, intadd_0_SUM_0_,
         intadd_0_n11, intadd_0_n10, intadd_0_n9, intadd_0_n8, intadd_0_n7,
         intadd_0_n6, intadd_0_n5, intadd_0_n4, intadd_0_n3, intadd_0_n2,
         intadd_0_n1, intadd_1_A_2_, intadd_1_A_1_, intadd_1_A_0_,
         intadd_1_B_3_, intadd_1_B_2_, intadd_1_B_1_, intadd_1_B_0_,
         intadd_1_CI, intadd_1_SUM_3_, intadd_1_SUM_2_, intadd_1_SUM_1_,
         intadd_1_SUM_0_, intadd_1_n4, intadd_1_n3, intadd_1_n2, intadd_1_n1,
         intadd_2_A_2_, intadd_2_A_1_, intadd_2_A_0_, intadd_2_B_3_,
         intadd_2_B_2_, intadd_2_B_1_, intadd_2_B_0_, intadd_2_CI,
         intadd_2_SUM_3_, intadd_2_SUM_2_, intadd_2_SUM_1_, intadd_2_SUM_0_,
         intadd_2_n4, intadd_2_n3, intadd_2_n2, intadd_2_n1, intadd_3_A_2_,
         intadd_3_A_1_, intadd_3_A_0_, intadd_3_B_2_, intadd_3_B_1_,
         intadd_3_B_0_, intadd_3_CI, intadd_3_SUM_2_, intadd_3_SUM_1_,
         intadd_3_SUM_0_, intadd_3_n3, intadd_3_n2, intadd_3_n1, intadd_4_A_0_,
         intadd_4_B_2_, intadd_4_B_1_, intadd_4_B_0_, intadd_4_CI,
         intadd_4_SUM_2_, intadd_4_SUM_1_, intadd_4_SUM_0_, intadd_4_n3,
         intadd_4_n2, intadd_4_n1, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n70, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157;
  wire   [6:0] implementation_exponent_input;

  CMPE42D1 mult_x_1_U30 ( .A(mult_x_1_n77), .B(implementation_plane_N102), .C(
        mult_x_1_n75), .CIX(mult_x_1_n46), .D(mult_x_1_n83), .CO(mult_x_1_n42), 
        .COX(mult_x_1_n41), .S(mult_x_1_n43) );
  CMPE42D1 mult_x_1_U29 ( .A(mult_x_1_n76), .B(implementation_plane_N103), .C(
        mult_x_1_n74), .CIX(mult_x_1_n41), .D(mult_x_1_n82), .CO(mult_x_1_n39), 
        .COX(mult_x_1_n38), .S(mult_x_1_n40) );
  CMPE42D1 mult_x_1_U28 ( .A(mult_x_1_n75), .B(implementation_plane_N104), .C(
        mult_x_1_n73), .CIX(mult_x_1_n38), .D(mult_x_1_n81), .CO(mult_x_1_n36), 
        .COX(mult_x_1_n35), .S(mult_x_1_n37) );
  CMPE42D1 mult_x_1_U27 ( .A(mult_x_1_n80), .B(implementation_plane_N105), .C(
        mult_x_1_n72), .CIX(mult_x_1_n35), .D(mult_x_1_n74), .CO(mult_x_1_n33), 
        .COX(mult_x_1_n32), .S(mult_x_1_n34) );
  FA1D0 intadd_0_U12 ( .A(intadd_0_A_0_), .B(intadd_0_B_0_), .CI(intadd_0_CI), 
        .CO(intadd_0_n11), .S(intadd_0_SUM_0_) );
  FA1D0 DP_OP_63J1_123_2151_U23 ( .A(DP_OP_63J1_123_2151_n22), .B(x[25]), .CI(
        DP_OP_63J1_123_2151_n16), .CO(DP_OP_63J1_123_2151_n15), .S(
        implementation_exponent_input[2]) );
  FA1D0 intadd_0_U2 ( .A(intadd_0_A_10_), .B(intadd_0_B_10_), .CI(intadd_0_n2), 
        .CO(intadd_0_n1), .S(intadd_0_SUM_10_) );
  FA1D0 intadd_0_U8 ( .A(mult_x_1_n40), .B(mult_x_1_n42), .CI(intadd_0_n8), 
        .CO(intadd_0_n7), .S(intadd_0_SUM_4_) );
  FA1D0 intadd_4_U3 ( .A(intadd_2_SUM_0_), .B(intadd_4_B_1_), .CI(intadd_4_n3), 
        .CO(intadd_4_n2), .S(intadd_4_SUM_1_) );
  FA1D0 intadd_3_U2 ( .A(intadd_3_A_2_), .B(intadd_3_B_2_), .CI(intadd_3_n2), 
        .CO(intadd_3_n1), .S(intadd_3_SUM_2_) );
  FA1D0 intadd_2_U5 ( .A(intadd_2_A_0_), .B(intadd_2_B_0_), .CI(intadd_2_CI), 
        .CO(intadd_2_n4), .S(intadd_2_SUM_0_) );
  FA1D0 intadd_2_U4 ( .A(intadd_2_A_1_), .B(intadd_2_B_1_), .CI(intadd_2_n4), 
        .CO(intadd_2_n3), .S(intadd_2_SUM_1_) );
  FA1D0 intadd_1_U5 ( .A(intadd_1_A_0_), .B(intadd_1_B_0_), .CI(intadd_1_CI), 
        .CO(intadd_1_n4), .S(intadd_1_SUM_0_) );
  FA1D0 intadd_3_U4 ( .A(intadd_3_A_0_), .B(intadd_3_B_0_), .CI(intadd_3_CI), 
        .CO(intadd_3_n3), .S(intadd_3_SUM_0_) );
  FA1D0 intadd_1_U4 ( .A(intadd_1_A_1_), .B(intadd_1_B_1_), .CI(intadd_1_n4), 
        .CO(intadd_1_n3), .S(intadd_1_SUM_1_) );
  FA1D0 intadd_2_U2 ( .A(intadd_2_A_2_), .B(intadd_2_B_3_), .CI(intadd_2_n2), 
        .CO(intadd_2_n1), .S(intadd_2_SUM_3_) );
  FA1D0 intadd_2_U3 ( .A(intadd_2_A_2_), .B(intadd_2_B_2_), .CI(intadd_2_n3), 
        .CO(intadd_2_n2), .S(intadd_2_SUM_2_) );
  FA1D0 intadd_4_U4 ( .A(intadd_4_A_0_), .B(intadd_4_B_0_), .CI(intadd_4_CI), 
        .CO(intadd_4_n3), .S(intadd_4_SUM_0_) );
  FA1D0 intadd_1_U3 ( .A(intadd_1_A_2_), .B(intadd_1_B_2_), .CI(intadd_1_n3), 
        .CO(intadd_1_n2), .S(intadd_1_SUM_2_) );
  FA1D0 intadd_1_U2 ( .A(intadd_1_A_2_), .B(intadd_1_B_3_), .CI(intadd_1_n2), 
        .CO(intadd_1_n1), .S(intadd_1_SUM_3_) );
  FA1D0 intadd_4_U2 ( .A(intadd_2_SUM_1_), .B(intadd_4_B_2_), .CI(intadd_4_n2), 
        .CO(intadd_4_n1), .S(intadd_4_SUM_2_) );
  FA1D0 intadd_3_U3 ( .A(intadd_3_A_1_), .B(intadd_3_B_1_), .CI(intadd_3_n3), 
        .CO(intadd_3_n2), .S(intadd_3_SUM_1_) );
  FA1D0 intadd_0_U11 ( .A(intadd_0_A_1_), .B(mult_x_1_n46), .CI(intadd_0_n11), 
        .CO(intadd_0_n10), .S(intadd_0_SUM_1_) );
  FA1D0 intadd_0_U10 ( .A(intadd_0_A_2_), .B(intadd_0_B_2_), .CI(intadd_0_n10), 
        .CO(intadd_0_n9), .S(intadd_0_SUM_2_) );
  FA1D0 intadd_0_U9 ( .A(mult_x_1_n43), .B(intadd_0_B_3_), .CI(intadd_0_n9), 
        .CO(intadd_0_n8), .S(intadd_0_SUM_3_) );
  FA1D0 intadd_0_U7 ( .A(mult_x_1_n37), .B(mult_x_1_n39), .CI(intadd_0_n7), 
        .CO(intadd_0_n6), .S(intadd_0_SUM_5_) );
  FA1D0 intadd_0_U6 ( .A(mult_x_1_n34), .B(mult_x_1_n36), .CI(intadd_0_n6), 
        .CO(intadd_0_n5), .S(intadd_0_SUM_6_) );
  FA1D0 intadd_0_U5 ( .A(mult_x_1_n33), .B(intadd_0_B_7_), .CI(intadd_0_n5), 
        .CO(intadd_0_n4), .S(intadd_0_SUM_7_) );
  FA1D0 intadd_0_U4 ( .A(intadd_0_A_8_), .B(intadd_0_B_8_), .CI(intadd_0_n4), 
        .CO(intadd_0_n3), .S(intadd_0_SUM_8_) );
  FA1D0 intadd_0_U3 ( .A(intadd_0_A_9_), .B(intadd_0_B_9_), .CI(intadd_0_n3), 
        .CO(intadd_0_n2), .S(intadd_0_SUM_9_) );
  FA1D0 DP_OP_63J1_123_2151_U24 ( .A(DP_OP_63J1_123_2151_n23), .B(x[24]), .CI(
        DP_OP_63J1_123_2151_n17), .CO(DP_OP_63J1_123_2151_n16), .S(
        implementation_exponent_input[1]) );
  FA1D0 DP_OP_63J1_123_2151_U12 ( .A(DP_OP_63J1_123_2151_n7), .B(n156), .CI(
        implementation_exponent_input[1]), .CO(DP_OP_63J1_123_2151_n6), .S(
        C10_DATA2_1) );
  FA1D0 DP_OP_63J1_123_2151_U22 ( .A(DP_OP_63J1_123_2151_n21), .B(x[26]), .CI(
        DP_OP_63J1_123_2151_n15), .CO(DP_OP_63J1_123_2151_n14), .S(
        implementation_exponent_input[3]) );
  FA1D0 DP_OP_63J1_123_2151_U21 ( .A(DP_OP_63J1_123_2151_n20), .B(x[27]), .CI(
        DP_OP_63J1_123_2151_n14), .CO(DP_OP_63J1_123_2151_n13), .S(
        implementation_exponent_input[4]) );
  FA1D0 DP_OP_63J1_123_2151_U20 ( .A(DP_OP_63J1_123_2151_n19), .B(x[28]), .CI(
        DP_OP_63J1_123_2151_n13), .CO(DP_OP_63J1_123_2151_n12), .S(
        implementation_exponent_input[5]) );
  FA1D0 DP_OP_63J1_123_2151_U19 ( .A(DP_OP_63J1_123_2151_n18), .B(x[29]), .CI(
        DP_OP_63J1_123_2151_n12), .CO(DP_OP_63J1_123_2151_n11), .S(
        implementation_exponent_input[6]) );
  FA1D0 U33 ( .A(n101), .B(mult_x_1_n73), .CI(n100), .CO(n102), .S(n97) );
  FA1D0 U34 ( .A(n61), .B(n60), .CI(n59), .CO(n63), .S(n91) );
  FA1D0 U35 ( .A(n55), .B(n113), .CI(n130), .CO(n62), .S(n58) );
  FA1D0 U36 ( .A(intadd_2_SUM_3_), .B(n132), .CI(n131), .CO(intadd_3_B_1_), 
        .S(intadd_3_A_0_) );
  FA1D0 U37 ( .A(n94), .B(mult_x_1_n74), .CI(n134), .CO(n95), .S(n93) );
  FA1D0 U38 ( .A(mult_x_1_n32), .B(mult_x_1_n73), .CI(n137), .CO(intadd_0_B_8_), .S(intadd_0_B_7_) );
  MUX2D0 U39 ( .I0(n73), .I1(n72), .S(n152), .Z(result[30]) );
  MUX2D0 U40 ( .I0(implementation_exponent_input[6]), .I1(n68), .S(n152), .Z(
        result[29]) );
  MUX2D0 U42 ( .I0(implementation_exponent_input[5]), .I1(n66), .S(n152), .Z(
        result[28]) );
  MUX2D0 U43 ( .I0(implementation_exponent_input[4]), .I1(n78), .S(n152), .Z(
        result[27]) );
  OR2D0 U44 ( .A1(implementation_exponent_input[5]), .A2(n67), .Z(n70) );
  MUX2D0 U45 ( .I0(implementation_exponent_input[3]), .I1(n76), .S(n152), .Z(
        result[26]) );
  OR2D0 U46 ( .A1(implementation_exponent_input[4]), .A2(n77), .Z(n67) );
  OR2D0 U47 ( .A1(n75), .A2(implementation_exponent_input[3]), .Z(n77) );
  MUX2D0 U48 ( .I0(implementation_exponent_input[2]), .I1(n74), .S(n152), .Z(
        result[25]) );
  OR2D0 U49 ( .A1(DP_OP_63J1_123_2151_n6), .A2(
        implementation_exponent_input[2]), .Z(n75) );
  MUX2D0 U50 ( .I0(implementation_exponent_input[1]), .I1(C10_DATA2_1), .S(
        n152), .Z(result[24]) );
  AOI32D0 U51 ( .A1(n152), .A2(n156), .A3(n153), .B1(n80), .B2(n156), .ZN(
        result[22]) );
  OR2D0 U52 ( .A1(implementation_exponent_input[0]), .A2(n154), .Z(
        DP_OP_63J1_123_2151_n7) );
  XNR2D0 U53 ( .A1(n154), .A2(implementation_exponent_input[0]), .ZN(
        result[23]) );
  CKND2D0 U54 ( .A1(n152), .A2(intadd_0_SUM_10_), .ZN(n154) );
  CKND2D0 U55 ( .A1(n152), .A2(n80), .ZN(n156) );
  XNR3D0 U56 ( .A1(n65), .A2(n64), .A3(intadd_0_n1), .ZN(n152) );
  INVD0 U57 ( .I(intadd_0_SUM_10_), .ZN(n80) );
  INVD0 U58 ( .I(intadd_0_SUM_9_), .ZN(n153) );
  INVD0 U59 ( .I(intadd_0_SUM_8_), .ZN(n155) );
  INVD0 U60 ( .I(intadd_0_SUM_7_), .ZN(n151) );
  INVD0 U61 ( .I(intadd_0_SUM_6_), .ZN(n150) );
  INVD0 U62 ( .I(n95), .ZN(intadd_0_B_9_) );
  INVD0 U63 ( .I(n93), .ZN(intadd_0_A_8_) );
  INVD0 U64 ( .I(intadd_0_SUM_5_), .ZN(n149) );
  INVD0 U65 ( .I(intadd_0_SUM_4_), .ZN(n148) );
  INVD0 U66 ( .I(n97), .ZN(intadd_0_A_9_) );
  NR2D0 U67 ( .A1(n135), .A2(n136), .ZN(n134) );
  INVD0 U68 ( .I(n102), .ZN(intadd_0_A_10_) );
  INVD0 U69 ( .I(intadd_0_SUM_3_), .ZN(n147) );
  INVD0 U70 ( .I(n100), .ZN(n136) );
  INVD0 U71 ( .I(intadd_0_SUM_2_), .ZN(n146) );
  OAI22D0 U72 ( .A1(n117), .A2(mult_x_1_n72), .B1(n99), .B2(n98), .ZN(
        intadd_0_B_10_) );
  OAI21D0 U73 ( .A1(n109), .A2(n92), .B(mult_x_1_n80), .ZN(n100) );
  INVD0 U74 ( .I(mult_x_1_n72), .ZN(n94) );
  INVD0 U75 ( .I(n90), .ZN(intadd_0_B_3_) );
  CKND2D0 U76 ( .A1(n109), .A2(n92), .ZN(mult_x_1_n80) );
  INVD0 U77 ( .I(n92), .ZN(n64) );
  AOI21D0 U78 ( .A1(intadd_3_SUM_2_), .A2(n98), .B(n109), .ZN(n65) );
  INVD0 U79 ( .I(n86), .ZN(intadd_0_A_2_) );
  OAI22D0 U80 ( .A1(n98), .A2(n109), .B1(n138), .B2(n91), .ZN(mult_x_1_n72) );
  INVD0 U81 ( .I(intadd_0_SUM_1_), .ZN(n145) );
  XNR3D0 U82 ( .A1(n107), .A2(n63), .A3(n62), .ZN(n92) );
  INVD0 U83 ( .I(n91), .ZN(n98) );
  OAI21D0 U84 ( .A1(n96), .A2(n138), .B(n99), .ZN(mult_x_1_n73) );
  INVD0 U85 ( .I(intadd_0_SUM_0_), .ZN(n144) );
  AOI21D0 U86 ( .A1(n109), .A2(n118), .B(n101), .ZN(mult_x_1_n74) );
  INVD0 U87 ( .I(n117), .ZN(n99) );
  NR2D0 U88 ( .A1(n118), .A2(n109), .ZN(n101) );
  INVD0 U89 ( .I(intadd_3_n1), .ZN(n59) );
  INVD0 U90 ( .I(n89), .ZN(mult_x_1_n76) );
  NR2D0 U91 ( .A1(n109), .A2(intadd_3_SUM_2_), .ZN(n117) );
  INVD0 U92 ( .I(intadd_3_SUM_1_), .ZN(n118) );
  INVD0 U93 ( .I(intadd_3_SUM_0_), .ZN(n135) );
  INVD0 U94 ( .I(n84), .ZN(implementation_plane_N105) );
  CKND2D0 U95 ( .A1(n140), .A2(n139), .ZN(n143) );
  INVD0 U96 ( .I(n139), .ZN(intadd_0_B_0_) );
  INVD0 U97 ( .I(n87), .ZN(intadd_0_A_0_) );
  CKND2D0 U98 ( .A1(n106), .A2(n105), .ZN(intadd_3_A_2_) );
  CKND2D0 U99 ( .A1(n82), .A2(n83), .ZN(intadd_3_CI) );
  INVD0 U100 ( .I(intadd_4_n1), .ZN(n83) );
  AO21D0 U101 ( .A1(intadd_1_SUM_2_), .A2(n81), .B(intadd_3_B_0_), .Z(n82) );
  INVD0 U102 ( .I(intadd_1_SUM_3_), .ZN(n132) );
  INVD0 U103 ( .I(intadd_4_SUM_2_), .ZN(implementation_plane_N104) );
  XOR2D0 U104 ( .A1(intadd_1_n1), .A2(n103), .Z(n106) );
  INVD0 U105 ( .I(intadd_4_SUM_1_), .ZN(implementation_plane_N103) );
  XOR2D0 U106 ( .A1(intadd_2_n1), .A2(n104), .Z(n105) );
  NR2D0 U108 ( .A1(n81), .A2(intadd_1_SUM_2_), .ZN(intadd_3_B_0_) );
  INVD0 U109 ( .I(intadd_2_SUM_2_), .ZN(n81) );
  INVD0 U110 ( .I(intadd_1_SUM_1_), .ZN(intadd_4_B_2_) );
  INVD0 U111 ( .I(intadd_4_SUM_0_), .ZN(implementation_plane_N102) );
  INVD0 U112 ( .I(intadd_1_SUM_0_), .ZN(intadd_4_B_1_) );
  INVD0 U113 ( .I(n58), .ZN(n61) );
  INVD0 U114 ( .I(n130), .ZN(n131) );
  OAI222D0 U115 ( .A1(n128), .A2(n127), .B1(n128), .B2(n126), .C1(n126), .C2(
        n52), .ZN(intadd_4_A_0_) );
  INVD0 U116 ( .I(n108), .ZN(intadd_3_B_2_) );
  AOI221D0 U117 ( .A1(n55), .A2(y[20]), .B1(n116), .B2(n115), .C(n129), .ZN(
        n103) );
  AOI21D0 U118 ( .A1(n57), .A2(n109), .B(n107), .ZN(n130) );
  AOI22D0 U119 ( .A1(n57), .A2(y[19]), .B1(y[20]), .B2(n129), .ZN(
        intadd_1_B_3_) );
  AOI22D0 U120 ( .A1(n57), .A2(n51), .B1(y[19]), .B2(n129), .ZN(intadd_1_B_2_)
         );
  AOI22D0 U121 ( .A1(n57), .A2(n55), .B1(n116), .B2(n129), .ZN(intadd_1_A_2_)
         );
  AOI22D0 U122 ( .A1(n109), .A2(x[21]), .B1(n113), .B2(n138), .ZN(
        intadd_2_A_2_) );
  CKND2D0 U123 ( .A1(n54), .A2(n125), .ZN(n126) );
  INVD0 U124 ( .I(n52), .ZN(n124) );
  NR2D0 U125 ( .A1(n109), .A2(n57), .ZN(n107) );
  INVD0 U126 ( .I(n53), .ZN(n122) );
  INVD0 U127 ( .I(n57), .ZN(n129) );
  INVD0 U128 ( .I(n138), .ZN(n109) );
  BUFFD0 U129 ( .I(x[22]), .Z(n57) );
  BUFFD0 U130 ( .I(y[17]), .Z(n53) );
  INVD0 U132 ( .I(y[29]), .ZN(DP_OP_63J1_123_2151_n18) );
  INVD0 U134 ( .I(y[20]), .ZN(n115) );
  INVD0 U135 ( .I(y[26]), .ZN(DP_OP_63J1_123_2151_n21) );
  XOR2D0 U136 ( .A1(y[31]), .A2(x[31]), .Z(result[31]) );
  INVD0 U137 ( .I(y[25]), .ZN(DP_OP_63J1_123_2151_n22) );
  BUFFD0 U138 ( .I(y[18]), .Z(n51) );
  BUFFD0 U139 ( .I(y[16]), .Z(n54) );
  BUFFD0 U140 ( .I(x[17]), .Z(n52) );
  BUFFD0 U141 ( .I(y[21]), .Z(n55) );
  INVD0 U142 ( .I(y[24]), .ZN(DP_OP_63J1_123_2151_n23) );
  INVD0 U143 ( .I(y[22]), .ZN(n138) );
  INVD0 U144 ( .I(x[21]), .ZN(n113) );
  INVD0 U145 ( .I(x[20]), .ZN(n112) );
  INVD0 U146 ( .I(y[28]), .ZN(DP_OP_63J1_123_2151_n19) );
  INVD0 U147 ( .I(y[27]), .ZN(DP_OP_63J1_123_2151_n20) );
  INVD0 U148 ( .I(n50), .ZN(result[7]) );
  INVD0 U149 ( .I(n50), .ZN(result[5]) );
  INVD0 U150 ( .I(n50), .ZN(result[4]) );
  INVD0 U151 ( .I(n50), .ZN(result[3]) );
  INVD0 U152 ( .I(n50), .ZN(result[6]) );
  INVD0 U153 ( .I(n50), .ZN(result[2]) );
  INVD0 U154 ( .I(n50), .ZN(result[8]) );
  INVD0 U155 ( .I(n50), .ZN(result[0]) );
  INVD0 U156 ( .I(n50), .ZN(result[1]) );
  TIEH U157 ( .Z(n50) );
  AOI22D0 U158 ( .A1(n57), .A2(n53), .B1(n51), .B2(n129), .ZN(intadd_1_A_1_)
         );
  AOI31D0 U159 ( .A1(n129), .A2(n51), .A3(n54), .B(n114), .ZN(intadd_1_A_0_)
         );
  INVD0 U160 ( .I(n110), .ZN(n56) );
  AOI22D0 U161 ( .A1(n109), .A2(n52), .B1(x[18]), .B2(n138), .ZN(intadd_2_A_1_) );
  AOI33D0 U162 ( .A1(n56), .A2(x[16]), .A3(n138), .B1(n109), .B2(n111), .B3(
        n110), .ZN(intadd_2_A_0_) );
  INVD0 U163 ( .I(x[18]), .ZN(n110) );
  XNR2D0 U164 ( .A1(n67), .A2(implementation_exponent_input[5]), .ZN(n66) );
  XNR2D0 U165 ( .A1(n70), .A2(implementation_exponent_input[6]), .ZN(n68) );
  XNR2D0 U167 ( .A1(implementation_exponent_input[2]), .A2(
        DP_OP_63J1_123_2151_n6), .ZN(n74) );
  XNR2D0 U168 ( .A1(implementation_exponent_input[3]), .A2(n75), .ZN(n76) );
  XNR2D0 U169 ( .A1(n77), .A2(implementation_exponent_input[4]), .ZN(n78) );
  CKND2D0 U170 ( .A1(n138), .A2(implementation_plane_N102), .ZN(n141) );
  NR2D0 U171 ( .A1(n141), .A2(n152), .ZN(result[9]) );
  OAI21D0 U172 ( .A1(n109), .A2(intadd_4_SUM_1_), .B(intadd_4_SUM_0_), .ZN(n79) );
  OAI31D0 U173 ( .A1(n109), .A2(intadd_4_SUM_0_), .A3(intadd_4_SUM_1_), .B(n79), .ZN(n142) );
  OAI22D0 U174 ( .A1(n152), .A2(n142), .B1(n141), .B2(n154), .ZN(result[10])
         );
  OAI21D0 U175 ( .A1(n83), .A2(n82), .B(intadd_3_CI), .ZN(n84) );
  OAI22D0 U176 ( .A1(n138), .A2(n84), .B1(implementation_plane_N105), .B2(n109), .ZN(n89) );
  AOI22D0 U177 ( .A1(n109), .A2(n135), .B1(intadd_3_SUM_0_), .B2(n138), .ZN(
        mult_x_1_n75) );
  INVD0 U178 ( .I(intadd_3_SUM_2_), .ZN(n96) );
  AOI22D0 U179 ( .A1(n109), .A2(n96), .B1(n91), .B2(n138), .ZN(mult_x_1_n82)
         );
  AOI22D0 U180 ( .A1(n109), .A2(n91), .B1(n92), .B2(n138), .ZN(mult_x_1_n81)
         );
  AOI22D0 U181 ( .A1(n109), .A2(implementation_plane_N104), .B1(
        implementation_plane_N105), .B2(n138), .ZN(intadd_0_CI) );
  OAI222D0 U182 ( .A1(intadd_4_SUM_1_), .A2(n138), .B1(intadd_4_SUM_1_), .B2(
        implementation_plane_N102), .C1(n109), .C2(intadd_4_SUM_2_), .ZN(n139)
         );
  OAI21D0 U183 ( .A1(intadd_4_SUM_0_), .A2(n138), .B(intadd_4_SUM_1_), .ZN(n85) );
  OAI31D0 U184 ( .A1(intadd_4_SUM_0_), .A2(intadd_4_SUM_1_), .A3(n138), .B(n85), .ZN(n87) );
  AOI22D0 U185 ( .A1(y[22]), .A2(implementation_plane_N104), .B1(
        intadd_4_SUM_2_), .B2(n138), .ZN(mult_x_1_n77) );
  AOI21D0 U186 ( .A1(intadd_3_SUM_0_), .A2(n109), .B(n101), .ZN(n88) );
  FA1D0 U187 ( .A(n89), .B(n88), .CI(n87), .CO(n90), .S(n86) );
  INVD0 U188 ( .I(n55), .ZN(n116) );
  OAI221D0 U189 ( .A1(x[21]), .A2(x[20]), .B1(n113), .B2(n112), .C(n109), .ZN(
        n104) );
  OAI21D0 U190 ( .A1(n106), .A2(n105), .B(intadd_3_A_2_), .ZN(intadd_3_A_1_)
         );
  FA1D0 U191 ( .A(n107), .B(n113), .CI(n55), .CO(n60), .S(n108) );
  CKND2D0 U192 ( .A1(n109), .A2(x[16]), .ZN(n123) );
  OA21D0 U193 ( .A1(n109), .A2(n124), .B(n123), .Z(intadd_2_B_0_) );
  NR2D0 U194 ( .A1(n52), .A2(x[16]), .ZN(n111) );
  AOI22D0 U195 ( .A1(n109), .A2(n112), .B1(x[20]), .B2(n138), .ZN(
        intadd_2_B_1_) );
  AOI22D0 U196 ( .A1(y[22]), .A2(x[18]), .B1(x[19]), .B2(n138), .ZN(
        intadd_2_B_2_) );
  AOI22D0 U197 ( .A1(y[22]), .A2(x[19]), .B1(x[20]), .B2(n138), .ZN(
        intadd_2_B_3_) );
  CKND2D0 U198 ( .A1(n57), .A2(n54), .ZN(n121) );
  OA21D0 U199 ( .A1(n57), .A2(n122), .B(n121), .Z(intadd_1_B_0_) );
  NR4D0 U200 ( .A1(n51), .A2(n129), .A3(n54), .A4(n53), .ZN(n114) );
  AOI22D0 U201 ( .A1(n57), .A2(n115), .B1(y[20]), .B2(n129), .ZN(intadd_1_B_1_) );
  AOI21D0 U202 ( .A1(n109), .A2(n118), .B(n117), .ZN(mult_x_1_n83) );
  AOI21D0 U203 ( .A1(n57), .A2(n53), .B(n54), .ZN(n119) );
  XNR2D0 U204 ( .A1(n119), .A2(n51), .ZN(intadd_4_CI) );
  INVD0 U205 ( .I(x[16]), .ZN(n125) );
  OAI21D0 U206 ( .A1(n138), .A2(n124), .B(n125), .ZN(n120) );
  XNR2D0 U207 ( .A1(n120), .A2(x[18]), .ZN(intadd_4_B_0_) );
  MUX2ND0 U208 ( .I0(n122), .I1(n53), .S(n121), .ZN(n128) );
  MUX2ND0 U209 ( .I0(n52), .I1(n124), .S(n123), .ZN(n127) );
  MUX2ND0 U210 ( .I0(n57), .I1(n129), .S(y[19]), .ZN(intadd_1_CI) );
  MUX2ND0 U211 ( .I0(n109), .I1(n138), .S(x[19]), .ZN(intadd_2_CI) );
  NR3D0 U212 ( .A1(n138), .A2(implementation_plane_N102), .A3(
        implementation_plane_N103), .ZN(mult_x_1_n46) );
  AOI22D0 U213 ( .A1(n109), .A2(implementation_plane_N105), .B1(n135), .B2(
        n138), .ZN(n133) );
  FA1D0 U214 ( .A(implementation_plane_N102), .B(mult_x_1_n77), .CI(n133), 
        .CO(intadd_0_B_2_), .S(intadd_0_A_1_) );
  AO21D0 U215 ( .A1(n136), .A2(n135), .B(n134), .Z(n137) );
  ND4D0 U216 ( .A1(intadd_4_SUM_0_), .A2(n138), .A3(implementation_plane_N104), 
        .A4(implementation_plane_N103), .ZN(n140) );
  OAI222D0 U217 ( .A1(n156), .A2(n141), .B1(n143), .B2(n152), .C1(n154), .C2(
        n142), .ZN(result[11]) );
  OAI222D0 U218 ( .A1(n154), .A2(n143), .B1(n144), .B2(n152), .C1(n142), .C2(
        n156), .ZN(result[12]) );
  OAI222D0 U219 ( .A1(n156), .A2(n143), .B1(n145), .B2(n152), .C1(n144), .C2(
        n154), .ZN(result[13]) );
  OAI222D0 U220 ( .A1(n145), .A2(n154), .B1(n146), .B2(n152), .C1(n144), .C2(
        n156), .ZN(result[14]) );
  OAI222D0 U221 ( .A1(n146), .A2(n154), .B1(n147), .B2(n152), .C1(n145), .C2(
        n156), .ZN(result[15]) );
  OAI222D0 U222 ( .A1(n147), .A2(n154), .B1(n148), .B2(n152), .C1(n146), .C2(
        n156), .ZN(result[16]) );
  OAI222D0 U223 ( .A1(n148), .A2(n154), .B1(n149), .B2(n152), .C1(n147), .C2(
        n156), .ZN(result[17]) );
  OAI222D0 U224 ( .A1(n149), .A2(n154), .B1(n150), .B2(n152), .C1(n148), .C2(
        n156), .ZN(result[18]) );
  OAI222D0 U225 ( .A1(n150), .A2(n154), .B1(n151), .B2(n152), .C1(n149), .C2(
        n156), .ZN(result[19]) );
  OAI222D0 U226 ( .A1(n151), .A2(n154), .B1(n155), .B2(n152), .C1(n150), .C2(
        n156), .ZN(result[20]) );
  OAI222D0 U227 ( .A1(n155), .A2(n154), .B1(n153), .B2(n152), .C1(n151), .C2(
        n156), .ZN(result[21]) );
  CKXOR2D0 U41 ( .A1(n157), .A2(n73), .Z(n72) );
  XOR3D0 U107 ( .A1(DP_OP_63J1_123_2151_n11), .A2(y[30]), .A3(x[30]), .Z(n73)
         );
  NR2D0 U131 ( .A1(n70), .A2(implementation_exponent_input[6]), .ZN(n157) );
  INR2D0 U133 ( .A1(x[23]), .B1(y[23]), .ZN(DP_OP_63J1_123_2151_n17) );
  XNR2D0 U166 ( .A1(y[23]), .A2(x[23]), .ZN(implementation_exponent_input[0])
         );
endmodule

