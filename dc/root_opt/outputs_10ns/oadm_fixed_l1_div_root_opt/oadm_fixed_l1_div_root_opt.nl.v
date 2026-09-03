/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Thu Sep  3 02:39:42 2026
/////////////////////////////////////////////////////////////


module oadm_fixed_l1_div_root_opt ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   implementation_plane_N105, implementation_plane_N104,
         implementation_plane_N103, implementation_plane_N102, mult_x_1_n83,
         mult_x_1_n82, mult_x_1_n81, mult_x_1_n80, mult_x_1_n77, mult_x_1_n76,
         mult_x_1_n75, mult_x_1_n74, mult_x_1_n73, mult_x_1_n72, mult_x_1_n46,
         mult_x_1_n43, mult_x_1_n42, mult_x_1_n41, mult_x_1_n40, mult_x_1_n39,
         mult_x_1_n38, mult_x_1_n37, mult_x_1_n36, mult_x_1_n35, mult_x_1_n34,
         mult_x_1_n33, mult_x_1_n32, intadd_0_A_10_, intadd_0_A_9_,
         intadd_0_A_8_, intadd_0_A_2_, intadd_0_A_1_, intadd_0_A_0_,
         intadd_0_B_10_, intadd_0_B_9_, intadd_0_B_8_, intadd_0_B_7_,
         intadd_0_B_3_, intadd_0_B_2_, intadd_0_B_0_, intadd_0_CI,
         intadd_0_SUM_10_, intadd_0_SUM_9_, intadd_0_SUM_8_, intadd_0_SUM_7_,
         intadd_0_SUM_6_, intadd_0_SUM_5_, intadd_0_SUM_4_, intadd_0_SUM_3_,
         intadd_0_SUM_2_, intadd_0_SUM_1_, intadd_0_SUM_0_, intadd_0_n11,
         intadd_0_n10, intadd_0_n9, intadd_0_n8, intadd_0_n7, intadd_0_n6,
         intadd_0_n5, intadd_0_n4, intadd_0_n3, intadd_0_n2, intadd_0_n1,
         intadd_1_A_6_, intadd_1_A_5_, intadd_1_A_4_, intadd_1_A_3_,
         intadd_1_A_2_, intadd_1_A_1_, intadd_1_B_6_, intadd_1_B_5_,
         intadd_1_B_4_, intadd_1_B_3_, intadd_1_B_2_, intadd_1_B_1_,
         intadd_1_B_0_, intadd_1_CI, intadd_1_SUM_6_, intadd_1_SUM_5_,
         intadd_1_SUM_4_, intadd_1_SUM_3_, intadd_1_SUM_2_, intadd_1_SUM_1_,
         intadd_1_SUM_0_, intadd_1_n7, intadd_1_n6, intadd_1_n5, intadd_1_n4,
         intadd_1_n3, intadd_1_n2, intadd_1_n1, intadd_2_A_2_, intadd_2_A_1_,
         intadd_2_A_0_, intadd_2_B_3_, intadd_2_B_2_, intadd_2_B_1_,
         intadd_2_B_0_, intadd_2_CI, intadd_2_SUM_3_, intadd_2_SUM_2_,
         intadd_2_SUM_1_, intadd_2_SUM_0_, intadd_2_n4, intadd_2_n3,
         intadd_2_n2, intadd_2_n1, intadd_3_A_2_, intadd_3_A_1_, intadd_3_A_0_,
         intadd_3_B_3_, intadd_3_B_2_, intadd_3_B_1_, intadd_3_B_0_,
         intadd_3_CI, intadd_3_SUM_3_, intadd_3_SUM_2_, intadd_3_SUM_1_,
         intadd_3_SUM_0_, intadd_3_n4, intadd_3_n3, intadd_3_n2, intadd_3_n1,
         intadd_4_A_2_, intadd_4_A_1_, intadd_4_A_0_, intadd_4_B_2_,
         intadd_4_B_1_, intadd_4_B_0_, intadd_4_CI, intadd_4_SUM_2_,
         intadd_4_SUM_1_, intadd_4_SUM_0_, intadd_4_n3, intadd_4_n2,
         intadd_4_n1, intadd_5_A_2_, intadd_5_A_0_, intadd_5_B_1_,
         intadd_5_B_0_, intadd_5_CI, intadd_5_SUM_2_, intadd_5_SUM_1_,
         intadd_5_SUM_0_, intadd_5_n3, intadd_5_n2, intadd_5_n1, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152;

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
  FA1D0 intadd_1_U8 ( .A(y[23]), .B(intadd_1_B_0_), .CI(intadd_1_CI), .CO(
        intadd_1_n7), .S(intadd_1_SUM_0_) );
  FA1D0 intadd_0_U11 ( .A(intadd_0_A_1_), .B(mult_x_1_n46), .CI(intadd_0_n11), 
        .CO(intadd_0_n10), .S(intadd_0_SUM_1_) );
  FA1D0 intadd_5_U3 ( .A(intadd_3_SUM_0_), .B(intadd_5_B_1_), .CI(intadd_5_n3), 
        .CO(intadd_5_n2), .S(intadd_5_SUM_1_) );
  FA1D0 intadd_4_U2 ( .A(intadd_4_A_2_), .B(intadd_4_B_2_), .CI(intadd_4_n2), 
        .CO(intadd_4_n1), .S(intadd_4_SUM_2_) );
  FA1D0 intadd_3_U5 ( .A(intadd_3_A_0_), .B(intadd_3_B_0_), .CI(intadd_3_CI), 
        .CO(intadd_3_n4), .S(intadd_3_SUM_0_) );
  FA1D0 intadd_3_U4 ( .A(intadd_3_A_1_), .B(intadd_3_B_1_), .CI(intadd_3_n4), 
        .CO(intadd_3_n3), .S(intadd_3_SUM_1_) );
  FA1D0 intadd_2_U5 ( .A(intadd_2_A_0_), .B(intadd_2_B_0_), .CI(intadd_2_CI), 
        .CO(intadd_2_n4), .S(intadd_2_SUM_0_) );
  FA1D0 intadd_4_U4 ( .A(intadd_4_A_0_), .B(intadd_4_B_0_), .CI(intadd_4_CI), 
        .CO(intadd_4_n3), .S(intadd_4_SUM_0_) );
  FA1D0 intadd_2_U4 ( .A(intadd_2_A_1_), .B(intadd_2_B_1_), .CI(intadd_2_n4), 
        .CO(intadd_2_n3), .S(intadd_2_SUM_1_) );
  FA1D0 intadd_3_U2 ( .A(intadd_3_A_2_), .B(intadd_3_B_3_), .CI(intadd_3_n2), 
        .CO(intadd_3_n1), .S(intadd_3_SUM_3_) );
  FA1D0 intadd_3_U3 ( .A(intadd_3_A_2_), .B(intadd_3_B_2_), .CI(intadd_3_n3), 
        .CO(intadd_3_n2), .S(intadd_3_SUM_2_) );
  FA1D0 intadd_5_U4 ( .A(intadd_5_A_0_), .B(intadd_5_B_0_), .CI(intadd_5_CI), 
        .CO(intadd_5_n3), .S(intadd_5_SUM_0_) );
  FA1D0 intadd_2_U3 ( .A(intadd_2_A_2_), .B(intadd_2_B_2_), .CI(intadd_2_n3), 
        .CO(intadd_2_n2), .S(intadd_2_SUM_2_) );
  FA1D0 intadd_2_U2 ( .A(intadd_2_A_2_), .B(intadd_2_B_3_), .CI(intadd_2_n2), 
        .CO(intadd_2_n1), .S(intadd_2_SUM_3_) );
  FA1D0 intadd_5_U2 ( .A(intadd_5_A_2_), .B(intadd_3_SUM_1_), .CI(intadd_5_n2), 
        .CO(intadd_5_n1), .S(intadd_5_SUM_2_) );
  FA1D0 intadd_4_U3 ( .A(intadd_4_A_1_), .B(intadd_4_B_1_), .CI(intadd_4_n3), 
        .CO(intadd_4_n2), .S(intadd_4_SUM_1_) );
  FA1D0 intadd_0_U10 ( .A(intadd_0_A_2_), .B(intadd_0_B_2_), .CI(intadd_0_n10), 
        .CO(intadd_0_n9), .S(intadd_0_SUM_2_) );
  FA1D0 intadd_0_U9 ( .A(mult_x_1_n43), .B(intadd_0_B_3_), .CI(intadd_0_n9), 
        .CO(intadd_0_n8), .S(intadd_0_SUM_3_) );
  FA1D0 intadd_0_U8 ( .A(mult_x_1_n40), .B(mult_x_1_n42), .CI(intadd_0_n8), 
        .CO(intadd_0_n7), .S(intadd_0_SUM_4_) );
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
  FA1D0 intadd_0_U2 ( .A(intadd_0_A_10_), .B(intadd_0_B_10_), .CI(intadd_0_n2), 
        .CO(intadd_0_n1), .S(intadd_0_SUM_10_) );
  FA1D0 intadd_1_U7 ( .A(intadd_1_A_1_), .B(intadd_1_B_1_), .CI(intadd_1_n7), 
        .CO(intadd_1_n6), .S(intadd_1_SUM_1_) );
  FA1D0 intadd_1_U6 ( .A(intadd_1_A_2_), .B(intadd_1_B_2_), .CI(intadd_1_n6), 
        .CO(intadd_1_n5), .S(intadd_1_SUM_2_) );
  FA1D0 intadd_1_U5 ( .A(intadd_1_A_3_), .B(intadd_1_B_3_), .CI(intadd_1_n5), 
        .CO(intadd_1_n4), .S(intadd_1_SUM_3_) );
  FA1D0 intadd_1_U4 ( .A(intadd_1_A_4_), .B(intadd_1_B_4_), .CI(intadd_1_n4), 
        .CO(intadd_1_n3), .S(intadd_1_SUM_4_) );
  FA1D0 intadd_1_U3 ( .A(intadd_1_A_5_), .B(intadd_1_B_5_), .CI(intadd_1_n3), 
        .CO(intadd_1_n2), .S(intadd_1_SUM_5_) );
  FA1D0 intadd_1_U2 ( .A(intadd_1_A_6_), .B(intadd_1_B_6_), .CI(intadd_1_n2), 
        .CO(intadd_1_n1), .S(intadd_1_SUM_6_) );
  FA1D0 U26 ( .A(n88), .B(mult_x_1_n74), .CI(n87), .CO(n89), .S(n86) );
  FA1D0 U27 ( .A(n64), .B(n63), .CI(n62), .CO(n61), .S(n85) );
  FA1D0 U28 ( .A(n56), .B(n107), .CI(n131), .CO(n60), .S(n59) );
  FA1D0 U29 ( .A(n133), .B(intadd_3_SUM_3_), .CI(n132), .CO(intadd_4_B_1_), 
        .S(intadd_4_A_0_) );
  FA1D0 U30 ( .A(n83), .B(n90), .CI(n82), .CO(n84), .S(n81) );
  FA1D0 U31 ( .A(mult_x_1_n73), .B(n93), .CI(n92), .CO(n94), .S(n91) );
  XNR4D0 U32 ( .A1(n119), .A2(x[30]), .A3(y[30]), .A4(intadd_1_n1), .ZN(
        result[30]) );
  INVD0 U33 ( .I(intadd_1_SUM_6_), .ZN(result[29]) );
  INVD0 U34 ( .I(intadd_1_SUM_5_), .ZN(result[28]) );
  INVD0 U35 ( .I(intadd_1_SUM_4_), .ZN(result[27]) );
  INVD0 U36 ( .I(intadd_1_SUM_3_), .ZN(result[26]) );
  INVD0 U37 ( .I(intadd_1_SUM_2_), .ZN(result[25]) );
  INVD0 U38 ( .I(intadd_1_SUM_1_), .ZN(result[24]) );
  INVD0 U39 ( .I(intadd_1_SUM_0_), .ZN(result[23]) );
  AOI32D0 U40 ( .A1(intadd_1_A_1_), .A2(n149), .A3(n151), .B1(n66), .B2(n149), 
        .ZN(result[22]) );
  CKND2D0 U41 ( .A1(intadd_0_SUM_10_), .A2(intadd_1_A_1_), .ZN(intadd_1_CI) );
  CKND2D0 U42 ( .A1(intadd_1_A_1_), .A2(n66), .ZN(n149) );
  XOR3D0 U43 ( .A1(intadd_0_n1), .A2(n79), .A3(n65), .Z(intadd_1_A_1_) );
  INVD0 U44 ( .I(intadd_0_SUM_9_), .ZN(n151) );
  INVD0 U45 ( .I(intadd_0_SUM_8_), .ZN(n152) );
  INVD0 U46 ( .I(intadd_0_SUM_7_), .ZN(n150) );
  INVD0 U47 ( .I(n81), .ZN(intadd_0_B_7_) );
  INVD0 U48 ( .I(intadd_0_SUM_6_), .ZN(n148) );
  INVD0 U49 ( .I(n84), .ZN(intadd_0_B_8_) );
  INVD0 U50 ( .I(intadd_0_SUM_5_), .ZN(n147) );
  INVD0 U51 ( .I(n89), .ZN(intadd_0_B_9_) );
  INVD0 U52 ( .I(n86), .ZN(intadd_0_A_8_) );
  INVD0 U53 ( .I(intadd_0_SUM_4_), .ZN(n146) );
  INVD0 U54 ( .I(n94), .ZN(intadd_0_B_10_) );
  INVD0 U55 ( .I(intadd_0_SUM_3_), .ZN(n145) );
  INVD0 U56 ( .I(n91), .ZN(intadd_0_A_9_) );
  NR2D0 U57 ( .A1(n134), .A2(n80), .ZN(n87) );
  INVD0 U58 ( .I(intadd_0_SUM_2_), .ZN(n144) );
  INVD0 U59 ( .I(mult_x_1_n32), .ZN(n83) );
  INVD0 U60 ( .I(n92), .ZN(n80) );
  OAI21D0 U61 ( .A1(n130), .A2(n79), .B(mult_x_1_n80), .ZN(n92) );
  INVD0 U62 ( .I(mult_x_1_n72), .ZN(n88) );
  CKND2D0 U64 ( .A1(n130), .A2(n79), .ZN(mult_x_1_n80) );
  AOI21D0 U65 ( .A1(intadd_4_SUM_2_), .A2(n95), .B(n130), .ZN(n65) );
  INVD0 U66 ( .I(n78), .ZN(intadd_0_B_3_) );
  INVD0 U67 ( .I(n74), .ZN(intadd_0_A_2_) );
  OAI22D0 U68 ( .A1(n95), .A2(n130), .B1(n136), .B2(n85), .ZN(mult_x_1_n72) );
  INVD0 U69 ( .I(intadd_0_SUM_1_), .ZN(n143) );
  XNR3D0 U70 ( .A1(n108), .A2(n61), .A3(n60), .ZN(n79) );
  INVD0 U71 ( .I(n90), .ZN(mult_x_1_n73) );
  INVD0 U72 ( .I(n85), .ZN(n95) );
  INVD0 U73 ( .I(intadd_0_SUM_0_), .ZN(n142) );
  AOI21D0 U74 ( .A1(n130), .A2(n111), .B(n93), .ZN(mult_x_1_n74) );
  AOI21D0 U75 ( .A1(intadd_4_SUM_2_), .A2(n130), .B(n110), .ZN(n90) );
  NR2D0 U76 ( .A1(n130), .A2(intadd_4_SUM_2_), .ZN(n110) );
  NR2D0 U77 ( .A1(n111), .A2(n130), .ZN(n93) );
  INVD0 U78 ( .I(n77), .ZN(mult_x_1_n76) );
  INVD0 U79 ( .I(intadd_4_n1), .ZN(n62) );
  INVD0 U80 ( .I(intadd_4_SUM_1_), .ZN(n111) );
  INVD0 U81 ( .I(intadd_4_SUM_0_), .ZN(n134) );
  INVD0 U82 ( .I(n71), .ZN(implementation_plane_N105) );
  CKND2D0 U83 ( .A1(n138), .A2(n137), .ZN(n141) );
  CKND2D0 U84 ( .A1(n69), .A2(n70), .ZN(intadd_4_CI) );
  CKND2D0 U85 ( .A1(n100), .A2(n99), .ZN(intadd_4_B_2_) );
  INVD0 U86 ( .I(n75), .ZN(intadd_0_A_0_) );
  INVD0 U87 ( .I(n137), .ZN(intadd_0_B_0_) );
  AO21D0 U88 ( .A1(intadd_2_SUM_2_), .A2(n68), .B(intadd_4_B_0_), .Z(n69) );
  INVD0 U89 ( .I(intadd_2_SUM_3_), .ZN(n132) );
  INVD0 U90 ( .I(intadd_5_n1), .ZN(n70) );
  XOR2D0 U91 ( .A1(intadd_2_n1), .A2(n97), .Z(n100) );
  INVD0 U92 ( .I(intadd_5_SUM_2_), .ZN(implementation_plane_N104) );
  XOR2D0 U93 ( .A1(intadd_3_n1), .A2(n98), .Z(n99) );
  INVD0 U94 ( .I(intadd_5_SUM_1_), .ZN(implementation_plane_N103) );
  NR2D0 U95 ( .A1(n68), .A2(intadd_2_SUM_2_), .ZN(intadd_4_B_0_) );
  INVD0 U96 ( .I(intadd_3_SUM_2_), .ZN(n68) );
  INVD0 U97 ( .I(intadd_2_SUM_1_), .ZN(intadd_5_A_2_) );
  INVD0 U98 ( .I(intadd_5_SUM_0_), .ZN(implementation_plane_N102) );
  INVD0 U99 ( .I(intadd_2_SUM_0_), .ZN(intadd_5_B_1_) );
  INVD0 U100 ( .I(n59), .ZN(n64) );
  INVD0 U101 ( .I(n109), .ZN(intadd_4_A_2_) );
  OAI222D0 U102 ( .A1(n128), .A2(n127), .B1(n128), .B2(n126), .C1(n126), .C2(
        n53), .ZN(intadd_5_A_0_) );
  INVD0 U103 ( .I(n131), .ZN(n133) );
  AOI22D0 U104 ( .A1(n58), .A2(n56), .B1(n106), .B2(n129), .ZN(intadd_2_A_2_)
         );
  AOI221D0 U105 ( .A1(n56), .A2(y[20]), .B1(n106), .B2(n105), .C(n129), .ZN(
        n97) );
  AOI22D0 U106 ( .A1(n58), .A2(y[19]), .B1(y[20]), .B2(n129), .ZN(
        intadd_2_B_3_) );
  AOI22D0 U107 ( .A1(n58), .A2(n52), .B1(y[19]), .B2(n129), .ZN(intadd_2_B_2_)
         );
  AOI21D0 U108 ( .A1(n58), .A2(n130), .B(n108), .ZN(n131) );
  NR2D0 U109 ( .A1(n130), .A2(n58), .ZN(n108) );
  INVD0 U110 ( .I(n53), .ZN(n124) );
  INVD0 U111 ( .I(n54), .ZN(n122) );
  CKND2D0 U112 ( .A1(n55), .A2(n125), .ZN(n126) );
  AOI21D0 U113 ( .A1(x[26]), .A2(n116), .B(intadd_1_B_4_), .ZN(intadd_1_A_3_)
         );
  AOI21D0 U114 ( .A1(x[29]), .A2(n120), .B(n119), .ZN(intadd_1_A_6_) );
  INVD0 U115 ( .I(n58), .ZN(n129) );
  AOI21D0 U116 ( .A1(x[28]), .A2(n118), .B(intadd_1_B_6_), .ZN(intadd_1_A_5_)
         );
  AOI21D0 U117 ( .A1(x[25]), .A2(n115), .B(intadd_1_B_3_), .ZN(intadd_1_A_2_)
         );
  AOI21D0 U118 ( .A1(x[24]), .A2(n112), .B(intadd_1_B_2_), .ZN(intadd_1_B_1_)
         );
  AOI21D0 U119 ( .A1(x[27]), .A2(n117), .B(intadd_1_B_5_), .ZN(intadd_1_A_4_)
         );
  NR2D0 U120 ( .A1(n116), .A2(x[26]), .ZN(intadd_1_B_4_) );
  NR2D0 U121 ( .A1(n115), .A2(x[25]), .ZN(intadd_1_B_3_) );
  NR2D0 U122 ( .A1(n112), .A2(x[24]), .ZN(intadd_1_B_2_) );
  NR2D0 U123 ( .A1(n117), .A2(x[27]), .ZN(intadd_1_B_5_) );
  NR2D0 U124 ( .A1(n118), .A2(x[28]), .ZN(intadd_1_B_6_) );
  NR2D0 U125 ( .A1(n120), .A2(x[29]), .ZN(n119) );
  INVD0 U126 ( .I(n136), .ZN(n130) );
  INVD0 U127 ( .I(y[25]), .ZN(n115) );
  BUFFD0 U128 ( .I(y[18]), .Z(n52) );
  INVD0 U129 ( .I(x[20]), .ZN(n103) );
  XOR2D0 U130 ( .A1(y[31]), .A2(x[31]), .Z(result[31]) );
  INVD0 U131 ( .I(y[29]), .ZN(n120) );
  BUFFD0 U132 ( .I(y[21]), .Z(n56) );
  INVD0 U133 ( .I(x[21]), .ZN(n107) );
  BUFFD0 U134 ( .I(y[17]), .Z(n54) );
  INVD0 U135 ( .I(y[27]), .ZN(n117) );
  INVD0 U136 ( .I(y[28]), .ZN(n118) );
  INVD0 U137 ( .I(y[26]), .ZN(n116) );
  BUFFD0 U138 ( .I(y[16]), .Z(n55) );
  INVD0 U139 ( .I(y[24]), .ZN(n112) );
  INVD0 U140 ( .I(x[23]), .ZN(intadd_1_B_0_) );
  BUFFD0 U141 ( .I(x[22]), .Z(n58) );
  INVD0 U142 ( .I(y[20]), .ZN(n105) );
  INVD0 U143 ( .I(y[22]), .ZN(n136) );
  BUFFD0 U144 ( .I(x[17]), .Z(n53) );
  INVD0 U145 ( .I(n51), .ZN(result[1]) );
  INVD0 U146 ( .I(n51), .ZN(result[0]) );
  INVD0 U147 ( .I(n51), .ZN(result[2]) );
  INVD0 U148 ( .I(n51), .ZN(result[3]) );
  INVD0 U149 ( .I(n51), .ZN(result[4]) );
  INVD0 U150 ( .I(n51), .ZN(result[5]) );
  INVD0 U151 ( .I(n51), .ZN(result[6]) );
  INVD0 U152 ( .I(n51), .ZN(result[7]) );
  INVD0 U153 ( .I(n51), .ZN(result[8]) );
  TIEH U154 ( .Z(n51) );
  AOI22D0 U155 ( .A1(n58), .A2(n54), .B1(n52), .B2(n129), .ZN(intadd_2_A_1_)
         );
  AOI31D0 U156 ( .A1(n129), .A2(n52), .A3(n55), .B(n104), .ZN(intadd_2_A_0_)
         );
  INVD0 U157 ( .I(n101), .ZN(n57) );
  AOI22D0 U158 ( .A1(n130), .A2(n53), .B1(x[18]), .B2(n136), .ZN(intadd_3_A_1_) );
  AOI33D0 U159 ( .A1(n57), .A2(x[16]), .A3(n136), .B1(n130), .B2(n102), .B3(
        n101), .ZN(intadd_3_A_0_) );
  INVD0 U160 ( .I(x[18]), .ZN(n101) );
  CKND2D0 U161 ( .A1(n136), .A2(implementation_plane_N102), .ZN(n139) );
  NR2D0 U162 ( .A1(n139), .A2(intadd_1_A_1_), .ZN(result[9]) );
  INVD0 U163 ( .I(intadd_0_SUM_10_), .ZN(n66) );
  OAI21D0 U164 ( .A1(n130), .A2(intadd_5_SUM_1_), .B(intadd_5_SUM_0_), .ZN(n67) );
  OAI31D0 U165 ( .A1(n130), .A2(intadd_5_SUM_0_), .A3(intadd_5_SUM_1_), .B(n67), .ZN(n140) );
  OAI22D0 U166 ( .A1(intadd_1_A_1_), .A2(n140), .B1(n139), .B2(intadd_1_CI), 
        .ZN(result[10]) );
  OAI21D0 U167 ( .A1(n70), .A2(n69), .B(intadd_4_CI), .ZN(n71) );
  OAI22D0 U168 ( .A1(n136), .A2(n71), .B1(implementation_plane_N105), .B2(n130), .ZN(n77) );
  AOI22D0 U169 ( .A1(n130), .A2(n134), .B1(intadd_4_SUM_0_), .B2(n136), .ZN(
        mult_x_1_n75) );
  INVD0 U170 ( .I(intadd_4_SUM_2_), .ZN(n72) );
  AOI22D0 U171 ( .A1(n130), .A2(n72), .B1(n85), .B2(n136), .ZN(mult_x_1_n82)
         );
  AOI22D0 U172 ( .A1(n130), .A2(n85), .B1(n79), .B2(n136), .ZN(mult_x_1_n81)
         );
  AOI22D0 U173 ( .A1(n130), .A2(implementation_plane_N104), .B1(
        implementation_plane_N105), .B2(n136), .ZN(intadd_0_CI) );
  OAI222D0 U174 ( .A1(intadd_5_SUM_1_), .A2(n136), .B1(intadd_5_SUM_1_), .B2(
        implementation_plane_N102), .C1(n130), .C2(intadd_5_SUM_2_), .ZN(n137)
         );
  OAI21D0 U175 ( .A1(intadd_5_SUM_0_), .A2(n136), .B(intadd_5_SUM_1_), .ZN(n73) );
  OAI31D0 U176 ( .A1(intadd_5_SUM_0_), .A2(intadd_5_SUM_1_), .A3(n136), .B(n73), .ZN(n75) );
  AOI22D0 U177 ( .A1(n130), .A2(implementation_plane_N104), .B1(
        intadd_5_SUM_2_), .B2(n136), .ZN(mult_x_1_n77) );
  AOI21D0 U178 ( .A1(intadd_4_SUM_0_), .A2(n130), .B(n93), .ZN(n76) );
  FA1D0 U179 ( .A(n77), .B(n76), .CI(n75), .CO(n78), .S(n74) );
  AOI21D0 U180 ( .A1(n80), .A2(n134), .B(n87), .ZN(n82) );
  INVD0 U182 ( .I(n56), .ZN(n106) );
  OAI221D0 U183 ( .A1(x[21]), .A2(x[20]), .B1(n107), .B2(n103), .C(n130), .ZN(
        n98) );
  OAI21D0 U184 ( .A1(n100), .A2(n99), .B(intadd_4_B_2_), .ZN(intadd_4_A_1_) );
  CKND2D0 U185 ( .A1(n130), .A2(x[16]), .ZN(n123) );
  OA21D0 U186 ( .A1(n130), .A2(n124), .B(n123), .Z(intadd_3_B_0_) );
  NR2D0 U187 ( .A1(n53), .A2(x[16]), .ZN(n102) );
  AOI22D0 U188 ( .A1(n130), .A2(n103), .B1(x[20]), .B2(n136), .ZN(
        intadd_3_B_1_) );
  AOI22D0 U189 ( .A1(y[22]), .A2(x[18]), .B1(x[19]), .B2(n136), .ZN(
        intadd_3_B_2_) );
  AOI22D0 U190 ( .A1(y[22]), .A2(x[19]), .B1(x[20]), .B2(n136), .ZN(
        intadd_3_B_3_) );
  AOI22D0 U191 ( .A1(y[22]), .A2(x[21]), .B1(n107), .B2(n136), .ZN(
        intadd_3_A_2_) );
  CKND2D0 U192 ( .A1(n58), .A2(n55), .ZN(n121) );
  OA21D0 U193 ( .A1(n58), .A2(n122), .B(n121), .Z(intadd_2_B_0_) );
  NR4D0 U194 ( .A1(n52), .A2(n129), .A3(n55), .A4(n54), .ZN(n104) );
  AOI22D0 U195 ( .A1(n58), .A2(n105), .B1(y[20]), .B2(n129), .ZN(intadd_2_B_1_) );
  FA1D0 U196 ( .A(n108), .B(n107), .CI(n56), .CO(n63), .S(n109) );
  AOI21D0 U197 ( .A1(n130), .A2(n111), .B(n110), .ZN(mult_x_1_n83) );
  AOI21D0 U198 ( .A1(n58), .A2(n54), .B(n55), .ZN(n113) );
  XNR2D0 U199 ( .A1(n113), .A2(n52), .ZN(intadd_5_CI) );
  INVD0 U200 ( .I(x[16]), .ZN(n125) );
  OAI21D0 U201 ( .A1(n136), .A2(n124), .B(n125), .ZN(n114) );
  XNR2D0 U202 ( .A1(n114), .A2(x[18]), .ZN(intadd_5_B_0_) );
  MUX2ND0 U203 ( .I0(n122), .I1(n54), .S(n121), .ZN(n128) );
  MUX2ND0 U204 ( .I0(n53), .I1(n124), .S(n123), .ZN(n127) );
  MUX2ND0 U205 ( .I0(n58), .I1(n129), .S(y[19]), .ZN(intadd_2_CI) );
  MUX2ND0 U206 ( .I0(n130), .I1(n136), .S(x[19]), .ZN(intadd_3_CI) );
  NR3D0 U207 ( .A1(n136), .A2(implementation_plane_N103), .A3(
        implementation_plane_N102), .ZN(mult_x_1_n46) );
  AOI22D0 U208 ( .A1(n130), .A2(implementation_plane_N105), .B1(n134), .B2(
        n136), .ZN(n135) );
  FA1D0 U209 ( .A(implementation_plane_N102), .B(mult_x_1_n77), .CI(n135), 
        .CO(intadd_0_B_2_), .S(intadd_0_A_1_) );
  ND4D0 U210 ( .A1(intadd_5_SUM_0_), .A2(n136), .A3(implementation_plane_N104), 
        .A4(implementation_plane_N103), .ZN(n138) );
  OAI222D0 U211 ( .A1(n139), .A2(n149), .B1(n141), .B2(intadd_1_A_1_), .C1(
        intadd_1_CI), .C2(n140), .ZN(result[11]) );
  OAI222D0 U212 ( .A1(n140), .A2(n149), .B1(n142), .B2(intadd_1_A_1_), .C1(
        intadd_1_CI), .C2(n141), .ZN(result[12]) );
  OAI222D0 U213 ( .A1(n141), .A2(n149), .B1(n143), .B2(intadd_1_A_1_), .C1(
        n142), .C2(intadd_1_CI), .ZN(result[13]) );
  OAI222D0 U214 ( .A1(n143), .A2(intadd_1_CI), .B1(n144), .B2(intadd_1_A_1_), 
        .C1(n142), .C2(n149), .ZN(result[14]) );
  OAI222D0 U215 ( .A1(n144), .A2(intadd_1_CI), .B1(n145), .B2(intadd_1_A_1_), 
        .C1(n143), .C2(n149), .ZN(result[15]) );
  OAI222D0 U216 ( .A1(n145), .A2(intadd_1_CI), .B1(n146), .B2(intadd_1_A_1_), 
        .C1(n144), .C2(n149), .ZN(result[16]) );
  OAI222D0 U217 ( .A1(n146), .A2(intadd_1_CI), .B1(n147), .B2(intadd_1_A_1_), 
        .C1(n145), .C2(n149), .ZN(result[17]) );
  OAI222D0 U218 ( .A1(n147), .A2(intadd_1_CI), .B1(n148), .B2(intadd_1_A_1_), 
        .C1(n146), .C2(n149), .ZN(result[18]) );
  OAI222D0 U219 ( .A1(n148), .A2(intadd_1_CI), .B1(n150), .B2(intadd_1_A_1_), 
        .C1(n147), .C2(n149), .ZN(result[19]) );
  OAI222D0 U220 ( .A1(n150), .A2(intadd_1_CI), .B1(n152), .B2(intadd_1_A_1_), 
        .C1(n148), .C2(n149), .ZN(result[20]) );
  OAI222D0 U221 ( .A1(n152), .A2(intadd_1_CI), .B1(n151), .B2(intadd_1_A_1_), 
        .C1(n150), .C2(n149), .ZN(result[21]) );
  MOAI22D0 U63 ( .A1(n110), .A2(mult_x_1_n72), .B1(n110), .B2(n85), .ZN(
        intadd_0_A_10_) );
endmodule

