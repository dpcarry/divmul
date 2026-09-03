/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Wed Aug 26 04:34:43 2026
/////////////////////////////////////////////////////////////


module lod_N32_lgN5_1 ( mode, a, pos_3, pos_2, pos_1, pos_0 );
  input [1:0] mode;
  input [31:0] a;
  output [4:0] pos_3;
  output [2:0] pos_2;
  output [3:0] pos_1;
  output [2:0] pos_0;
  wire   n13, n14, n15, n16, n17, n18, n19, n20, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61;

  CKAN2D0 U3 ( .A1(n52), .A2(n32), .Z(n13) );
  BUFFD0 U4 ( .I(a[30]), .Z(n14) );
  BUFFD0 U5 ( .I(n61), .Z(n15) );
  BUFFD0 U6 ( .I(n59), .Z(n16) );
  BUFFD0 U7 ( .I(a[6]), .Z(n17) );
  INVD0 U8 ( .I(n57), .ZN(n18) );
  INVD0 U9 ( .I(n18), .ZN(n19) );
  INVD0 U10 ( .I(n13), .ZN(n20) );
  INVD0 U11 ( .I(n13), .ZN(pos_3[4]) );
  AOI221D0 U12 ( .A1(n44), .A2(n56), .B1(n37), .B2(n56), .C(n36), .ZN(n38) );
  NR4D0 U13 ( .A1(a[15]), .A2(a[12]), .A3(a[13]), .A4(a[14]), .ZN(n46) );
  INVD0 U14 ( .I(n46), .ZN(n54) );
  OR3D0 U15 ( .A1(a[11]), .A2(a[8]), .A3(n54), .Z(n22) );
  NR3D0 U16 ( .A1(a[10]), .A2(a[9]), .A3(n22), .ZN(n57) );
  INVD0 U17 ( .I(a[21]), .ZN(n24) );
  NR4D0 U18 ( .A1(a[23]), .A2(a[20]), .A3(a[21]), .A4(a[22]), .ZN(n61) );
  IND3D0 U19 ( .A1(a[18]), .B1(a[17]), .B2(n61), .ZN(n23) );
  AOI21D0 U20 ( .A1(n61), .A2(a[19]), .B(a[23]), .ZN(n25) );
  OAI211D0 U21 ( .A1(n24), .A2(a[22]), .B(n23), .C(n25), .ZN(n51) );
  INVD0 U22 ( .I(n25), .ZN(n26) );
  AOI211D0 U23 ( .A1(n61), .A2(a[18]), .B(a[22]), .C(n26), .ZN(n39) );
  IND3D0 U24 ( .A1(n51), .B1(n15), .B2(n39), .ZN(n31) );
  NR4D0 U25 ( .A1(a[31]), .A2(a[28]), .A3(a[29]), .A4(n14), .ZN(n59) );
  INVD0 U26 ( .I(a[29]), .ZN(n28) );
  AOI21D0 U27 ( .A1(n59), .A2(a[27]), .B(a[31]), .ZN(n29) );
  IND3D0 U28 ( .A1(a[26]), .B1(n59), .B2(a[25]), .ZN(n27) );
  OAI211D0 U29 ( .A1(n14), .A2(n28), .B(n29), .C(n27), .ZN(n49) );
  INVD0 U30 ( .I(n29), .ZN(n30) );
  AO211D0 U31 ( .A1(n59), .A2(a[26]), .B(n14), .C(n30), .Z(n36) );
  INR4D0 U32 ( .A1(n16), .B1(a[24]), .B2(n49), .B3(n36), .ZN(n52) );
  OAI31D0 U33 ( .A1(a[16]), .A2(n19), .A3(n31), .B(n52), .ZN(pos_3[3]) );
  NR2D0 U34 ( .A1(n31), .A2(a[16]), .ZN(n32) );
  INVD0 U35 ( .I(n52), .ZN(n60) );
  AOI21D0 U36 ( .A1(n46), .A2(a[11]), .B(a[15]), .ZN(n34) );
  NR4D0 U37 ( .A1(a[7]), .A2(a[4]), .A3(n17), .A4(a[5]), .ZN(n53) );
  AOI32D0 U38 ( .A1(n53), .A2(n57), .A3(a[3]), .B1(a[7]), .B2(n57), .ZN(n33)
         );
  CKND2D0 U39 ( .A1(n34), .A2(n33), .ZN(n44) );
  INVD0 U40 ( .I(n20), .ZN(n56) );
  INVD0 U41 ( .I(a[10]), .ZN(n45) );
  INVD0 U42 ( .I(a[14]), .ZN(n43) );
  AOI32D0 U43 ( .A1(n53), .A2(n19), .A3(a[2]), .B1(n17), .B2(n19), .ZN(n35) );
  OAI211D0 U44 ( .A1(n54), .A2(n45), .B(n43), .C(n35), .ZN(n37) );
  OAI21D0 U45 ( .A1(n39), .A2(n60), .B(n38), .ZN(pos_3[1]) );
  CKND2D0 U46 ( .A1(n53), .A2(a[1]), .ZN(n41) );
  INVD0 U47 ( .I(a[5]), .ZN(n40) );
  OAI22D0 U48 ( .A1(a[2]), .A2(n41), .B1(n17), .B2(n40), .ZN(n42) );
  AOI22D0 U49 ( .A1(a[13]), .A2(n43), .B1(n57), .B2(n42), .ZN(n48) );
  AOI31D0 U50 ( .A1(n46), .A2(a[9]), .A3(n45), .B(n44), .ZN(n47) );
  AOI21D0 U51 ( .A1(n48), .A2(n47), .B(n20), .ZN(n50) );
  AO211D0 U52 ( .A1(n52), .A2(n51), .B(n50), .C(n49), .Z(pos_3[0]) );
  INVD0 U53 ( .I(n53), .ZN(n55) );
  AOI32D0 U54 ( .A1(n19), .A2(n56), .A3(n55), .B1(n54), .B2(n56), .ZN(n58) );
  OAI211D0 U55 ( .A1(n15), .A2(n60), .B(n16), .C(n58), .ZN(pos_3[2]) );
endmodule


module set_frac_16_8_N32_lgN5_1 ( mode, a, lod_pos_upper_half, 
        lod_pos_lower_half, pos_2, pos_0, out );
  input [1:0] mode;
  input [31:0] a;
  input [4:0] lod_pos_upper_half;
  input [3:0] lod_pos_lower_half;
  input [2:0] pos_2;
  input [2:0] pos_0;
  output [31:0] out;
  wire   N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17,
         N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29, N30, N31,
         N32, N33, N34, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187,
         n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198,
         n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209,
         n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, n220,
         n221, n222, n223, n224, n225, n226, n227, n228, n229, n230, n231,
         n232, n233, n234, n235, n236, n237, n238, n239, n240, n241, n242,
         n243, n244, n245, n246, n247, n248, n249, n250, n251, n252, n253,
         n254, n255, n256, n257, n258, n259, n260, n261;
  assign out[0] = N3;
  assign out[1] = N4;
  assign out[2] = N5;
  assign out[3] = N6;
  assign out[4] = N7;
  assign out[5] = N8;
  assign out[6] = N9;
  assign out[7] = N10;
  assign out[8] = N11;
  assign out[9] = N12;
  assign out[10] = N13;
  assign out[11] = N14;
  assign out[12] = N15;
  assign out[13] = N16;
  assign out[14] = N17;
  assign out[15] = N18;
  assign out[16] = N19;
  assign out[17] = N20;
  assign out[18] = N21;
  assign out[19] = N22;
  assign out[20] = N23;
  assign out[21] = N24;
  assign out[22] = N25;
  assign out[23] = N26;
  assign out[24] = N27;
  assign out[25] = N28;
  assign out[26] = N29;
  assign out[27] = N30;
  assign out[28] = N31;
  assign out[29] = N32;
  assign out[30] = N33;
  assign out[31] = N34;

  CKAN2D0 U2 ( .A1(n38), .A2(n70), .Z(n3) );
  INVD0 U3 ( .I(n154), .ZN(n4) );
  INVD0 U4 ( .I(n126), .ZN(n5) );
  BUFFD0 U5 ( .I(a[29]), .Z(n6) );
  BUFFD0 U6 ( .I(a[1]), .Z(n7) );
  BUFFD0 U7 ( .I(a[3]), .Z(n8) );
  BUFFD0 U8 ( .I(a[4]), .Z(n9) );
  BUFFD0 U9 ( .I(a[17]), .Z(n10) );
  BUFFD0 U10 ( .I(a[19]), .Z(n11) );
  BUFFD0 U11 ( .I(a[20]), .Z(n12) );
  BUFFD0 U12 ( .I(a[24]), .Z(n13) );
  BUFFD0 U13 ( .I(a[25]), .Z(n14) );
  BUFFD0 U14 ( .I(a[27]), .Z(n15) );
  BUFFD0 U15 ( .I(a[28]), .Z(n16) );
  INVD0 U16 ( .I(n72), .ZN(n17) );
  INVD0 U17 ( .I(n76), .ZN(n18) );
  INVD0 U18 ( .I(n193), .ZN(n19) );
  INVD0 U19 ( .I(n214), .ZN(n20) );
  BUFFD0 U20 ( .I(a[2]), .Z(n21) );
  INVD0 U21 ( .I(n132), .ZN(n22) );
  INVD0 U22 ( .I(n155), .ZN(n23) );
  BUFFD0 U23 ( .I(a[14]), .Z(n24) );
  BUFFD0 U24 ( .I(a[15]), .Z(n25) );
  BUFFD0 U25 ( .I(a[16]), .Z(n26) );
  BUFFD0 U26 ( .I(a[18]), .Z(n27) );
  BUFFD0 U27 ( .I(a[21]), .Z(n28) );
  BUFFD0 U28 ( .I(a[23]), .Z(n29) );
  BUFFD0 U29 ( .I(a[26]), .Z(n30) );
  BUFFD0 U30 ( .I(a[22]), .Z(n31) );
  BUFFD0 U31 ( .I(lod_pos_upper_half[4]), .Z(n32) );
  BUFFD0 U32 ( .I(lod_pos_upper_half[1]), .Z(n33) );
  BUFFD0 U33 ( .I(lod_pos_upper_half[1]), .Z(n34) );
  BUFFD0 U34 ( .I(lod_pos_upper_half[0]), .Z(n35) );
  BUFFD0 U35 ( .I(lod_pos_upper_half[0]), .Z(n36) );
  BUFFD0 U36 ( .I(lod_pos_upper_half[0]), .Z(n37) );
  BUFFD0 U37 ( .I(lod_pos_upper_half[3]), .Z(n38) );
  BUFFD0 U38 ( .I(lod_pos_upper_half[3]), .Z(n39) );
  BUFFD0 U39 ( .I(lod_pos_upper_half[3]), .Z(n40) );
  INVD0 U40 ( .I(n220), .ZN(n41) );
  INVD0 U41 ( .I(n41), .ZN(n42) );
  INVD0 U42 ( .I(n41), .ZN(n43) );
  INVD0 U43 ( .I(n199), .ZN(n44) );
  INVD0 U44 ( .I(n44), .ZN(n45) );
  INVD0 U45 ( .I(n3), .ZN(n46) );
  INVD0 U46 ( .I(n3), .ZN(n47) );
  INVD0 U47 ( .I(n88), .ZN(n48) );
  INVD0 U48 ( .I(n48), .ZN(n49) );
  INVD0 U49 ( .I(n48), .ZN(n50) );
  INVD0 U50 ( .I(n215), .ZN(n51) );
  INVD0 U51 ( .I(n51), .ZN(n52) );
  INVD0 U52 ( .I(lod_pos_upper_half[1]), .ZN(n53) );
  INVD0 U53 ( .I(n216), .ZN(n54) );
  INVD0 U54 ( .I(n54), .ZN(n55) );
  INVD0 U55 ( .I(n214), .ZN(n56) );
  INVD0 U56 ( .I(n56), .ZN(n57) );
  INVD0 U57 ( .I(n56), .ZN(n58) );
  INVD0 U58 ( .I(n35), .ZN(n59) );
  INVD0 U59 ( .I(n35), .ZN(n60) );
  INVD0 U60 ( .I(n40), .ZN(n61) );
  INVD0 U61 ( .I(n38), .ZN(n62) );
  INVD0 U62 ( .I(n39), .ZN(n63) );
  INVD0 U63 ( .I(n42), .ZN(n64) );
  INVD0 U64 ( .I(n43), .ZN(n65) );
  INVD0 U65 ( .I(n220), .ZN(n66) );
  INVD0 U66 ( .I(n232), .ZN(n67) );
  INVD0 U67 ( .I(n67), .ZN(n68) );
  INVD0 U68 ( .I(n67), .ZN(n69) );
  INVD0 U69 ( .I(n67), .ZN(n70) );
  INVD0 U70 ( .I(n67), .ZN(n71) );
  INVD0 U71 ( .I(n170), .ZN(n72) );
  INVD0 U72 ( .I(n72), .ZN(n73) );
  INVD0 U73 ( .I(n72), .ZN(n74) );
  INVD0 U74 ( .I(n72), .ZN(n75) );
  INVD0 U75 ( .I(n171), .ZN(n76) );
  INVD0 U76 ( .I(n76), .ZN(n77) );
  INVD0 U77 ( .I(n76), .ZN(n78) );
  INVD0 U78 ( .I(n76), .ZN(n79) );
  CKAN2D0 U79 ( .A1(lod_pos_upper_half[4]), .A2(n62), .Z(n260) );
  INVD0 U80 ( .I(n260), .ZN(n80) );
  INVD0 U81 ( .I(n260), .ZN(n81) );
  INVD0 U82 ( .I(n260), .ZN(n82) );
  INVD0 U83 ( .I(n260), .ZN(n83) );
  OR2D0 U84 ( .A1(n34), .A2(n36), .Z(n172) );
  INVD0 U85 ( .I(n172), .ZN(n84) );
  INVD0 U86 ( .I(n172), .ZN(n85) );
  INVD0 U87 ( .I(n172), .ZN(n86) );
  INVD0 U88 ( .I(n172), .ZN(n87) );
  OR2D0 U89 ( .A1(n59), .A2(n53), .Z(n169) );
  INVD0 U90 ( .I(n169), .ZN(n88) );
  INVD0 U91 ( .I(n169), .ZN(n89) );
  INVD0 U92 ( .I(n169), .ZN(n90) );
  INVD0 U93 ( .I(n169), .ZN(n91) );
  INVD0 U94 ( .I(lod_pos_upper_half[2]), .ZN(n184) );
  BUFFD0 U95 ( .I(n184), .Z(n129) );
  BUFFD0 U96 ( .I(n129), .Z(n210) );
  INVD0 U97 ( .I(n210), .ZN(n116) );
  NR2D0 U98 ( .A1(n60), .A2(n33), .ZN(n170) );
  INVD0 U99 ( .I(n33), .ZN(n153) );
  AOI22D0 U100 ( .A1(n75), .A2(n12), .B1(n89), .B2(n31), .ZN(n93) );
  NR2D0 U101 ( .A1(n153), .A2(n37), .ZN(n171) );
  AOI22D0 U102 ( .A1(n87), .A2(n11), .B1(n79), .B2(n28), .ZN(n92) );
  CKND2D0 U103 ( .A1(n93), .A2(n92), .ZN(n183) );
  AOI22D0 U104 ( .A1(n74), .A2(n26), .B1(n91), .B2(n27), .ZN(n95) );
  AOI22D0 U105 ( .A1(n84), .A2(n25), .B1(n78), .B2(n10), .ZN(n94) );
  CKND2D0 U106 ( .A1(n95), .A2(n94), .ZN(n248) );
  BUFFD0 U107 ( .I(n129), .Z(n165) );
  AOI22D0 U108 ( .A1(n116), .A2(n183), .B1(n248), .B2(n165), .ZN(n239) );
  BUFFD0 U109 ( .I(n184), .Z(n135) );
  BUFFD0 U110 ( .I(n135), .Z(n189) );
  INVD0 U111 ( .I(n73), .ZN(n216) );
  INVD0 U112 ( .I(n49), .ZN(n217) );
  OAI22D0 U113 ( .A1(n16), .A2(n55), .B1(a[30]), .B2(n217), .ZN(n99) );
  INVD0 U114 ( .I(n77), .ZN(n215) );
  INVD0 U115 ( .I(n84), .ZN(n214) );
  OAI22D0 U116 ( .A1(n6), .A2(n215), .B1(n15), .B2(n58), .ZN(n98) );
  AOI22D0 U117 ( .A1(n75), .A2(n13), .B1(n89), .B2(n30), .ZN(n96) );
  IOA21D0 U118 ( .A1(n79), .A2(n14), .B(n96), .ZN(n97) );
  AOI21D0 U119 ( .A1(n85), .A2(n29), .B(n97), .ZN(n187) );
  BUFFD0 U120 ( .I(n135), .Z(n142) );
  INVD0 U121 ( .I(n142), .ZN(n177) );
  OAI32D0 U122 ( .A1(n189), .A2(n99), .A3(n98), .B1(n187), .B2(n177), .ZN(n104) );
  INVD0 U123 ( .I(lod_pos_upper_half[4]), .ZN(n232) );
  NR2D0 U124 ( .A1(n61), .A2(n68), .ZN(n220) );
  INVD0 U125 ( .I(n165), .ZN(n213) );
  AOI22D0 U126 ( .A1(a[12]), .A2(n73), .B1(n24), .B2(n90), .ZN(n101) );
  AOI22D0 U127 ( .A1(n20), .A2(a[11]), .B1(n77), .B2(a[13]), .ZN(n100) );
  CKND2D0 U128 ( .A1(n101), .A2(n100), .ZN(n247) );
  AOI22D0 U129 ( .A1(n36), .A2(a[10]), .B1(a[9]), .B2(n60), .ZN(n125) );
  AOI22D0 U130 ( .A1(n35), .A2(a[8]), .B1(n4), .B2(n59), .ZN(n133) );
  AOI22D0 U131 ( .A1(n33), .A2(n125), .B1(n133), .B2(n153), .ZN(n181) );
  AOI22D0 U132 ( .A1(n213), .A2(n247), .B1(n181), .B2(n165), .ZN(n237) );
  AOI22D0 U133 ( .A1(n75), .A2(n9), .B1(n88), .B2(a[6]), .ZN(n103) );
  AOI22D0 U134 ( .A1(n87), .A2(n8), .B1(n79), .B2(n22), .ZN(n102) );
  CKND2D0 U135 ( .A1(n103), .A2(n102), .ZN(n180) );
  AOI222D0 U136 ( .A1(n21), .A2(n90), .B1(n7), .B2(n171), .C1(a[0]), .C2(n54), 
        .ZN(n143) );
  INVD0 U137 ( .I(n143), .ZN(n182) );
  BUFFD0 U138 ( .I(n135), .Z(n162) );
  AOI22D0 U139 ( .A1(n116), .A2(n180), .B1(n182), .B2(n162), .ZN(n138) );
  AOI22D0 U140 ( .A1(n38), .A2(n237), .B1(n138), .B2(n62), .ZN(n231) );
  AOI22D0 U141 ( .A1(n104), .A2(n42), .B1(n231), .B2(n69), .ZN(n105) );
  OAI21D0 U142 ( .A1(n82), .A2(n239), .B(n105), .ZN(N33) );
  AOI22D0 U143 ( .A1(n75), .A2(n28), .B1(n89), .B2(n29), .ZN(n107) );
  AOI22D0 U144 ( .A1(n87), .A2(n12), .B1(n79), .B2(n31), .ZN(n106) );
  CKND2D0 U145 ( .A1(n107), .A2(n106), .ZN(n191) );
  AOI22D0 U146 ( .A1(n74), .A2(n10), .B1(n91), .B2(n11), .ZN(n109) );
  AOI22D0 U147 ( .A1(n85), .A2(n26), .B1(n78), .B2(n27), .ZN(n108) );
  CKND2D0 U148 ( .A1(n109), .A2(n108), .ZN(n194) );
  AOI22D0 U149 ( .A1(n116), .A2(n191), .B1(n194), .B2(n162), .ZN(n236) );
  OAI22D0 U150 ( .A1(n6), .A2(n216), .B1(a[31]), .B2(n48), .ZN(n113) );
  OAI22D0 U151 ( .A1(n16), .A2(n57), .B1(a[30]), .B2(n52), .ZN(n112) );
  AOI22D0 U152 ( .A1(n18), .A2(n30), .B1(n17), .B2(n14), .ZN(n110) );
  IOA21D0 U153 ( .A1(n50), .A2(n15), .B(n110), .ZN(n111) );
  AOI21D0 U154 ( .A1(n86), .A2(n13), .B(n111), .ZN(n198) );
  OAI32D0 U155 ( .A1(n189), .A2(n113), .A3(n112), .B1(n198), .B2(n177), .ZN(
        n121) );
  AOI22D0 U156 ( .A1(n170), .A2(n23), .B1(n90), .B2(n25), .ZN(n115) );
  AOI22D0 U157 ( .A1(n84), .A2(a[12]), .B1(n51), .B2(n24), .ZN(n114) );
  CKND2D0 U158 ( .A1(n115), .A2(n114), .ZN(n195) );
  AOI22D0 U159 ( .A1(n36), .A2(n5), .B1(a[10]), .B2(n59), .ZN(n156) );
  AOI22D0 U160 ( .A1(n37), .A2(a[9]), .B1(a[8]), .B2(n60), .ZN(n152) );
  AOI22D0 U161 ( .A1(n34), .A2(n156), .B1(n152), .B2(n53), .ZN(n159) );
  AOI22D0 U162 ( .A1(n116), .A2(n195), .B1(n159), .B2(n162), .ZN(n235) );
  BUFFD0 U163 ( .I(n129), .Z(n246) );
  INVD0 U164 ( .I(n246), .ZN(n139) );
  AOI22D0 U165 ( .A1(n73), .A2(n22), .B1(n49), .B2(a[7]), .ZN(n118) );
  AOI22D0 U166 ( .A1(n20), .A2(n9), .B1(n77), .B2(a[6]), .ZN(n117) );
  CKND2D0 U167 ( .A1(n118), .A2(n117), .ZN(n158) );
  AOI22D0 U168 ( .A1(n17), .A2(n7), .B1(n88), .B2(n8), .ZN(n120) );
  AOI22D0 U169 ( .A1(n86), .A2(a[0]), .B1(n18), .B2(n21), .ZN(n119) );
  CKND2D0 U170 ( .A1(n120), .A2(n119), .ZN(n144) );
  AOI22D0 U171 ( .A1(n139), .A2(n158), .B1(n144), .B2(n142), .ZN(n148) );
  AOI22D0 U172 ( .A1(n40), .A2(n235), .B1(n148), .B2(n63), .ZN(n233) );
  AOI22D0 U173 ( .A1(n121), .A2(n43), .B1(n233), .B2(n71), .ZN(n122) );
  OAI21D0 U174 ( .A1(n80), .A2(n236), .B(n122), .ZN(N34) );
  AOI22D0 U175 ( .A1(n24), .A2(n54), .B1(n91), .B2(n26), .ZN(n124) );
  AOI22D0 U176 ( .A1(n84), .A2(n23), .B1(n171), .B2(n25), .ZN(n123) );
  CKND2D0 U177 ( .A1(n124), .A2(n123), .ZN(n200) );
  INVD0 U178 ( .I(a[11]), .ZN(n126) );
  INVD0 U179 ( .I(a[12]), .ZN(n157) );
  OAI222D0 U180 ( .A1(n126), .A2(n52), .B1(n34), .B2(n125), .C1(n48), .C2(n157), .ZN(n149) );
  AOI22D0 U181 ( .A1(n213), .A2(n200), .B1(n149), .B2(n246), .ZN(n258) );
  NR2D0 U182 ( .A1(n64), .A2(n139), .ZN(n192) );
  AOI22D0 U183 ( .A1(n74), .A2(n27), .B1(n49), .B2(n12), .ZN(n128) );
  AOI22D0 U184 ( .A1(n85), .A2(n10), .B1(n78), .B2(n11), .ZN(n127) );
  CKND2D0 U185 ( .A1(n128), .A2(n127), .ZN(n201) );
  BUFFD0 U186 ( .I(n129), .Z(n222) );
  INVD0 U187 ( .I(n222), .ZN(n207) );
  CKND2D0 U188 ( .A1(n207), .A2(n43), .ZN(n199) );
  AOI22D0 U189 ( .A1(n17), .A2(n31), .B1(n50), .B2(n13), .ZN(n131) );
  AOI22D0 U190 ( .A1(n86), .A2(n28), .B1(n18), .B2(n29), .ZN(n130) );
  CKND2D0 U191 ( .A1(n131), .A2(n130), .ZN(n206) );
  AOI22D0 U192 ( .A1(n192), .A2(n201), .B1(n44), .B2(n206), .ZN(n137) );
  CKND2D0 U193 ( .A1(n91), .A2(a[0]), .ZN(n257) );
  INVD0 U194 ( .I(a[6]), .ZN(n151) );
  INVD0 U195 ( .I(a[5]), .ZN(n132) );
  OAI222D0 U196 ( .A1(n151), .A2(n55), .B1(n153), .B2(n133), .C1(n57), .C2(
        n132), .ZN(n150) );
  OAI22D0 U197 ( .A1(n21), .A2(n216), .B1(n7), .B2(n57), .ZN(n140) );
  AOI221D0 U198 ( .A1(n9), .A2(n35), .B1(n8), .B2(n59), .C(n53), .ZN(n141) );
  NR2D0 U199 ( .A1(n140), .A2(n141), .ZN(n134) );
  AOI22D0 U200 ( .A1(n139), .A2(n150), .B1(n134), .B2(n142), .ZN(n259) );
  OAI32D0 U201 ( .A1(n39), .A2(n135), .A3(n257), .B1(n259), .B2(n62), .ZN(n227) );
  CKND2D0 U202 ( .A1(n71), .A2(n227), .ZN(n136) );
  OAI211D0 U203 ( .A1(n81), .A2(n258), .B(n137), .C(n136), .ZN(N27) );
  OR2D0 U204 ( .A1(n138), .A2(n63), .Z(n238) );
  NR2D0 U205 ( .A1(n238), .A2(n70), .ZN(N9) );
  OA32D0 U206 ( .A1(n142), .A2(n141), .A3(n140), .B1(n139), .B2(n257), .Z(n244) );
  NR2D0 U207 ( .A1(n64), .A2(n244), .ZN(N7) );
  NR2D0 U208 ( .A1(n45), .A2(n143), .ZN(N5) );
  OA221D0 U209 ( .A1(n60), .A2(n7), .B1(n37), .B2(a[0]), .C(n34), .Z(n147) );
  CKND2D0 U210 ( .A1(n207), .A2(n147), .ZN(n253) );
  NR2D0 U211 ( .A1(n253), .A2(n66), .ZN(N4) );
  INVD0 U212 ( .I(n144), .ZN(n190) );
  NR2D0 U213 ( .A1(n45), .A2(n190), .ZN(N6) );
  AOI22D0 U214 ( .A1(n74), .A2(n8), .B1(n89), .B2(a[5]), .ZN(n146) );
  AOI22D0 U215 ( .A1(n85), .A2(n21), .B1(n78), .B2(n9), .ZN(n145) );
  CKND2D0 U216 ( .A1(n146), .A2(n145), .ZN(n175) );
  INVD0 U217 ( .I(n189), .ZN(n256) );
  MUX2ND0 U218 ( .I0(n147), .I1(n175), .S(n256), .ZN(n241) );
  NR2D0 U219 ( .A1(n65), .A2(n241), .ZN(N8) );
  OR2D0 U220 ( .A1(n148), .A2(n61), .Z(n234) );
  NR2D0 U221 ( .A1(n234), .A2(n71), .ZN(N10) );
  MUX2ND0 U222 ( .I0(n150), .I1(n149), .S(n256), .ZN(n245) );
  OAI22D0 U223 ( .A1(n244), .A2(n83), .B1(n66), .B2(n245), .ZN(N15) );
  INVD0 U224 ( .I(a[7]), .ZN(n154) );
  OAI222D0 U225 ( .A1(n154), .A2(n55), .B1(n53), .B2(n152), .C1(n58), .C2(n151), .ZN(n176) );
  INVD0 U226 ( .I(a[13]), .ZN(n155) );
  OAI222D0 U227 ( .A1(n52), .A2(n157), .B1(n33), .B2(n156), .C1(n155), .C2(
        n217), .ZN(n166) );
  MUX2ND0 U228 ( .I0(n176), .I1(n166), .S(n256), .ZN(n242) );
  OAI22D0 U229 ( .A1(n241), .A2(n80), .B1(n65), .B2(n242), .ZN(N16) );
  AOI22D0 U230 ( .A1(n177), .A2(n194), .B1(n195), .B2(n222), .ZN(n160) );
  AOI22D0 U231 ( .A1(n213), .A2(n159), .B1(n158), .B2(n246), .ZN(n188) );
  OA22D0 U232 ( .A1(n41), .A2(n160), .B1(n80), .B2(n188), .Z(n161) );
  OAI31D0 U233 ( .A1(n190), .A2(n184), .A3(n47), .B(n161), .ZN(N22) );
  INVD0 U234 ( .I(n162), .ZN(n249) );
  AOI22D0 U235 ( .A1(n73), .A2(n25), .B1(n88), .B2(n10), .ZN(n164) );
  AOI22D0 U236 ( .A1(n86), .A2(n24), .B1(n77), .B2(n26), .ZN(n163) );
  CKND2D0 U237 ( .A1(n164), .A2(n163), .ZN(n211) );
  AOI22D0 U238 ( .A1(n249), .A2(n211), .B1(n166), .B2(n165), .ZN(n254) );
  AOI22D0 U239 ( .A1(n170), .A2(n11), .B1(n90), .B2(n28), .ZN(n168) );
  AOI22D0 U240 ( .A1(n20), .A2(n27), .B1(n171), .B2(n12), .ZN(n167) );
  CKND2D0 U241 ( .A1(n168), .A2(n167), .ZN(n212) );
  AOI22D0 U242 ( .A1(n17), .A2(n29), .B1(n50), .B2(n14), .ZN(n174) );
  AOI22D0 U243 ( .A1(n87), .A2(n31), .B1(n18), .B2(n13), .ZN(n173) );
  CKND2D0 U244 ( .A1(n174), .A2(n173), .ZN(n223) );
  AOI22D0 U245 ( .A1(n192), .A2(n212), .B1(n44), .B2(n223), .ZN(n179) );
  AOI22D0 U246 ( .A1(n177), .A2(n176), .B1(n175), .B2(n222), .ZN(n255) );
  AOI22D0 U247 ( .A1(n40), .A2(n255), .B1(n253), .B2(n63), .ZN(n228) );
  CKND2D0 U248 ( .A1(n68), .A2(n228), .ZN(n178) );
  OAI211D0 U249 ( .A1(n83), .A2(n254), .B(n179), .C(n178), .ZN(N28) );
  AOI22D0 U250 ( .A1(n249), .A2(n181), .B1(n180), .B2(n210), .ZN(n252) );
  CKND2D0 U251 ( .A1(n207), .A2(n182), .ZN(n250) );
  AOI22D0 U252 ( .A1(n38), .A2(n252), .B1(n250), .B2(n61), .ZN(n229) );
  AOI22D0 U253 ( .A1(n192), .A2(n183), .B1(n69), .B2(n229), .ZN(n186) );
  BUFFD0 U254 ( .I(n184), .Z(n205) );
  INVD0 U255 ( .I(n205), .ZN(n224) );
  INVD0 U256 ( .I(n82), .ZN(n193) );
  OAI221D0 U257 ( .A1(n224), .A2(n247), .B1(n205), .B2(n248), .C(n193), .ZN(
        n185) );
  OAI211D0 U258 ( .A1(n187), .A2(n45), .B(n186), .C(n185), .ZN(N29) );
  OAI32D0 U259 ( .A1(n39), .A2(n190), .A3(n189), .B1(n188), .B2(n62), .ZN(n230) );
  AOI22D0 U260 ( .A1(n192), .A2(n191), .B1(n70), .B2(n230), .ZN(n197) );
  OAI221D0 U261 ( .A1(n224), .A2(n195), .B1(n205), .B2(n194), .C(n193), .ZN(
        n196) );
  OAI211D0 U262 ( .A1(n198), .A2(n45), .B(n197), .C(n196), .ZN(N30) );
  NR2D0 U263 ( .A1(n257), .A2(n199), .ZN(N3) );
  AOI22D0 U264 ( .A1(n249), .A2(n201), .B1(n200), .B2(n210), .ZN(n243) );
  AO221D0 U265 ( .A1(n63), .A2(n244), .B1(n39), .B2(n245), .C(n32), .Z(n209)
         );
  OAI22D0 U266 ( .A1(n14), .A2(n58), .B1(n15), .B2(n215), .ZN(n203) );
  OAI22D0 U267 ( .A1(n16), .A2(n217), .B1(n30), .B2(n55), .ZN(n202) );
  NR2D0 U268 ( .A1(n203), .A2(n202), .ZN(n204) );
  OAI221D0 U269 ( .A1(n207), .A2(n206), .B1(n205), .B2(n204), .C(n42), .ZN(
        n208) );
  OAI211D0 U270 ( .A1(n19), .A2(n243), .B(n209), .C(n208), .ZN(N31) );
  AOI22D0 U271 ( .A1(n213), .A2(n212), .B1(n211), .B2(n210), .ZN(n240) );
  AO221D0 U272 ( .A1(n61), .A2(n241), .B1(n40), .B2(n242), .C(n32), .Z(n226)
         );
  OAI22D0 U273 ( .A1(n16), .A2(n52), .B1(n30), .B2(n57), .ZN(n219) );
  OAI22D0 U274 ( .A1(n6), .A2(n217), .B1(n15), .B2(n216), .ZN(n218) );
  NR2D0 U275 ( .A1(n219), .A2(n218), .ZN(n221) );
  OAI221D0 U276 ( .A1(n224), .A2(n223), .B1(n222), .B2(n221), .C(n43), .ZN(
        n225) );
  OAI211D0 U277 ( .A1(n81), .A2(n240), .B(n226), .C(n225), .ZN(N32) );
  INR2D0 U278 ( .A1(n227), .B1(n68), .ZN(N11) );
  INR2D0 U279 ( .A1(n228), .B1(n69), .ZN(N12) );
  INR2D0 U280 ( .A1(n229), .B1(n70), .ZN(N13) );
  INR2D0 U281 ( .A1(n230), .B1(n71), .ZN(N14) );
  INR2D0 U282 ( .A1(n231), .B1(n68), .ZN(N17) );
  INR2D0 U283 ( .A1(n233), .B1(n69), .ZN(N18) );
  OAI222D0 U284 ( .A1(n41), .A2(n236), .B1(n80), .B2(n235), .C1(n234), .C2(n32), .ZN(N26) );
  OAI222D0 U285 ( .A1(n239), .A2(n66), .B1(n238), .B2(n32), .C1(n83), .C2(n237), .ZN(N25) );
  OAI222D0 U286 ( .A1(n242), .A2(n82), .B1(n47), .B2(n241), .C1(n65), .C2(n240), .ZN(N24) );
  OAI222D0 U287 ( .A1(n245), .A2(n81), .B1(n46), .B2(n244), .C1(n64), .C2(n243), .ZN(N23) );
  AOI22D0 U288 ( .A1(n249), .A2(n248), .B1(n247), .B2(n246), .ZN(n251) );
  OAI222D0 U289 ( .A1(n83), .A2(n252), .B1(n251), .B2(n66), .C1(n250), .C2(n46), .ZN(N21) );
  OAI222D0 U290 ( .A1(n82), .A2(n255), .B1(n254), .B2(n65), .C1(n253), .C2(n47), .ZN(N20) );
  IND2D0 U291 ( .A1(n257), .B1(n256), .ZN(n261) );
  OAI222D0 U292 ( .A1(n46), .A2(n261), .B1(n81), .B2(n259), .C1(n64), .C2(n258), .ZN(N19) );
endmodule


module set_frac_16_8_N32_lgN5_0 ( mode, a, lod_pos_upper_half, 
        lod_pos_lower_half, pos_2, pos_0, out );
  input [1:0] mode;
  input [31:0] a;
  input [4:0] lod_pos_upper_half;
  input [3:0] lod_pos_lower_half;
  input [2:0] pos_2;
  input [2:0] pos_0;
  output [31:0] out;


  BUFFD0 U2 ( .I(a[5]), .Z(out[13]) );
  BUFFD0 U3 ( .I(a[20]), .Z(out[28]) );
  BUFFD0 U4 ( .I(a[21]), .Z(out[29]) );
  BUFFD0 U5 ( .I(a[0]), .Z(out[8]) );
  BUFFD0 U6 ( .I(a[1]), .Z(out[9]) );
  BUFFD0 U7 ( .I(a[22]), .Z(out[30]) );
  BUFFD0 U8 ( .I(a[19]), .Z(out[27]) );
  BUFFD0 U9 ( .I(a[18]), .Z(out[26]) );
  BUFFD0 U10 ( .I(a[17]), .Z(out[25]) );
  BUFFD0 U11 ( .I(a[16]), .Z(out[24]) );
  BUFFD0 U12 ( .I(a[15]), .Z(out[23]) );
  BUFFD0 U13 ( .I(a[14]), .Z(out[22]) );
  BUFFD0 U14 ( .I(a[13]), .Z(out[21]) );
  BUFFD0 U15 ( .I(a[12]), .Z(out[20]) );
  BUFFD0 U16 ( .I(a[11]), .Z(out[19]) );
  BUFFD0 U17 ( .I(a[10]), .Z(out[18]) );
  BUFFD0 U18 ( .I(a[9]), .Z(out[17]) );
  BUFFD0 U19 ( .I(a[8]), .Z(out[16]) );
  BUFFD0 U20 ( .I(a[7]), .Z(out[15]) );
  BUFFD0 U21 ( .I(a[6]), .Z(out[14]) );
  BUFFD0 U22 ( .I(a[4]), .Z(out[12]) );
  BUFFD0 U23 ( .I(a[2]), .Z(out[10]) );
  BUFFD0 U24 ( .I(a[3]), .Z(out[11]) );
endmodule


module select_ec_16_8_mul_div_alternate_N32 ( func, frac_a, frac_a_pos_2, 
        frac_a_lsb, frac_a_pos_0, frac_b, frac_b_pos_2, frac_b_lsb, 
        frac_b_pos_0, error_coeff );
  input [3:0] func;
  input [2:0] frac_a;
  input [2:0] frac_a_pos_2;
  input [2:0] frac_a_lsb;
  input [2:0] frac_a_pos_0;
  input [2:0] frac_b;
  input [2:0] frac_b_pos_2;
  input [2:0] frac_b_lsb;
  input [2:0] frac_b_pos_0;
  output [31:0] error_coeff;
  wire   n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248,
         n249, n250, n251, n252, n253, n254, n255, n256, n257, n258, n259,
         n260, n261, n262, n263, n264, n265, n266, n267, n268, n269, n270,
         n271, n272, n273, n274, n275, n276, n277, n278, n279, n280, n281,
         n282, n283, n284, n285, n286, n287, n288, n289, n290, n291, n292,
         n293, n294, n295, n296, n297, n298, n299, n300, n301, n302, n303,
         n304, n305, n306, n307, n308, n309, n310, n311, n312, n313, n314,
         n315, n316, n317, n318, n319, n320, n321, n322, n323, n324, n325,
         n326, n327, n328, n329, n330, n331, n332, n333, n334, n335, n336,
         n337, n338, n339, n340, n341, n342, n343, n344, n345, n346, n347,
         n348, n349, n350, n351, n352, n353, n354, n355, n356, n357, n358,
         n359, n360, n361, n362, n363, n364, n365, n366, n367, n368, n369,
         n370, n371, n372, n373, n374, n375, n376, n377, n378, n379, n380,
         n381, n382, n383, n384, n385, n386, n387, n388, n389, n390, n391,
         n392, n393, n394, n395, n396, n397, n398, n399, n400, n401, n402,
         n403, n404, n405, n406, n407, n408, n409, n410, n411, n412, n413,
         n414, n415, n416, n417, n418, n419, n420, n421, n422, n423, n424,
         n425, n426, n427, n428, n429, n430, n431, n432, n433, n434, n435,
         n436, n437, n438, n439, n440, n441, n442, n443, n444, n445, n446,
         n447, n448, n449, n450, n451, n452, n453, n454, n455, n456, n457,
         n458, n459, n460, n461, n462, n463, n464, n465, n466, n467, n468,
         n469, n470, n471, n472, n473, n474, n475, n476, n477, n478, n479,
         n480, n481, n482, n483, n484, n485, n486, n487, n488, n489, n490,
         n491, n492, n493, n494, n495, n496, n497, n498, n499, n500, n501,
         n502, n503, n504, n505, n506, n507, n508, n509, n510, n511, n512,
         n513, n514, n515, n516, n517, n518, n519, n520, n521, n522, n523,
         n524, n525, n526, n527, n528, n529, n530, n531, n532, n533, n534,
         n535, n536, n537, n538, n539, n540, n541, n542, n543, n544, n545,
         n546;

  CKAN2D0 U3 ( .A1(n312), .A2(n428), .Z(n238) );
  INVD0 U4 ( .I(n322), .ZN(n239) );
  INVD0 U5 ( .I(frac_b[1]), .ZN(n240) );
  BUFFD0 U6 ( .I(n315), .Z(n241) );
  BUFFD0 U7 ( .I(frac_b[1]), .Z(n242) );
  INVD0 U8 ( .I(n307), .ZN(n243) );
  BUFFD0 U9 ( .I(frac_b[0]), .Z(n244) );
  BUFFD0 U10 ( .I(frac_a[1]), .Z(n245) );
  INVD0 U11 ( .I(n309), .ZN(n246) );
  BUFFD0 U12 ( .I(frac_a[2]), .Z(n247) );
  BUFFD0 U13 ( .I(frac_a[2]), .Z(n248) );
  INVD0 U14 ( .I(n258), .ZN(n249) );
  INVD0 U15 ( .I(n438), .ZN(n250) );
  INVD0 U16 ( .I(n250), .ZN(n251) );
  INVD0 U17 ( .I(n523), .ZN(n252) );
  INVD0 U18 ( .I(n252), .ZN(n253) );
  INVD0 U19 ( .I(n355), .ZN(n254) );
  INVD0 U20 ( .I(n254), .ZN(n255) );
  INVD0 U21 ( .I(n481), .ZN(n256) );
  INVD0 U22 ( .I(n256), .ZN(n257) );
  INVD0 U23 ( .I(n453), .ZN(n258) );
  INVD0 U24 ( .I(n453), .ZN(n259) );
  INVD0 U25 ( .I(n502), .ZN(n260) );
  INVD0 U26 ( .I(n376), .ZN(n261) );
  INVD0 U27 ( .I(n261), .ZN(n262) );
  INVD0 U28 ( .I(n541), .ZN(n263) );
  INVD0 U29 ( .I(n263), .ZN(n264) );
  INVD0 U30 ( .I(n275), .ZN(n265) );
  INVD0 U31 ( .I(n238), .ZN(n266) );
  INVD0 U32 ( .I(n238), .ZN(n267) );
  INVD0 U33 ( .I(n378), .ZN(n268) );
  INVD0 U34 ( .I(n268), .ZN(n269) );
  INVD0 U35 ( .I(n283), .ZN(n270) );
  INVD0 U36 ( .I(n390), .ZN(n271) );
  INVD0 U37 ( .I(n377), .ZN(n272) );
  INVD0 U38 ( .I(n272), .ZN(n273) );
  INVD0 U39 ( .I(n458), .ZN(n274) );
  INVD0 U40 ( .I(n458), .ZN(n275) );
  INVD0 U41 ( .I(n255), .ZN(n276) );
  INVD0 U42 ( .I(n255), .ZN(n277) );
  INVD0 U43 ( .I(n502), .ZN(n278) );
  INVD0 U44 ( .I(n278), .ZN(n279) );
  INVD0 U45 ( .I(n278), .ZN(n280) );
  INVD0 U46 ( .I(n390), .ZN(n281) );
  INVD0 U47 ( .I(n281), .ZN(n282) );
  INVD0 U48 ( .I(n281), .ZN(n283) );
  INVD0 U49 ( .I(n267), .ZN(n284) );
  INVD0 U50 ( .I(n429), .ZN(n285) );
  INVD0 U51 ( .I(n285), .ZN(n286) );
  INVD0 U52 ( .I(n285), .ZN(n287) );
  INVD0 U53 ( .I(n398), .ZN(n288) );
  INVD0 U54 ( .I(n288), .ZN(n289) );
  INVD0 U55 ( .I(n288), .ZN(n290) );
  INVD0 U56 ( .I(n487), .ZN(n291) );
  INVD0 U57 ( .I(n291), .ZN(n292) );
  INVD0 U58 ( .I(n291), .ZN(n293) );
  INVD0 U59 ( .I(n536), .ZN(n294) );
  INVD0 U60 ( .I(n294), .ZN(n295) );
  INVD0 U61 ( .I(n294), .ZN(n296) );
  INVD0 U62 ( .I(n423), .ZN(n297) );
  INVD0 U63 ( .I(n297), .ZN(n298) );
  INVD0 U64 ( .I(n297), .ZN(n299) );
  INVD0 U65 ( .I(n463), .ZN(n300) );
  INVD0 U66 ( .I(n300), .ZN(n301) );
  INVD0 U67 ( .I(n300), .ZN(n302) );
  INVD0 U68 ( .I(n525), .ZN(n303) );
  INVD0 U69 ( .I(n303), .ZN(n304) );
  INVD0 U70 ( .I(n303), .ZN(n305) );
  INVD0 U71 ( .I(n303), .ZN(n306) );
  BUFFD0 U72 ( .I(func[0]), .Z(n334) );
  INVD0 U73 ( .I(frac_b[2]), .ZN(n309) );
  NR2D0 U74 ( .A1(n309), .A2(n247), .ZN(n312) );
  INVD0 U75 ( .I(frac_a[0]), .ZN(n307) );
  CKND2D0 U76 ( .A1(n245), .A2(n307), .ZN(n375) );
  INVD0 U77 ( .I(n375), .ZN(n524) );
  CKND2D0 U78 ( .A1(n244), .A2(n524), .ZN(n453) );
  CKND2D0 U79 ( .A1(n242), .A2(n312), .ZN(n328) );
  INVD0 U80 ( .I(n328), .ZN(n378) );
  CKND2D0 U81 ( .A1(frac_a[1]), .A2(frac_a[0]), .ZN(n347) );
  NR2D0 U82 ( .A1(n347), .A2(n244), .ZN(n376) );
  CKND2D0 U83 ( .A1(n269), .A2(n262), .ZN(n408) );
  INVD0 U84 ( .I(n242), .ZN(n428) );
  NR2D0 U85 ( .A1(n428), .A2(n246), .ZN(n488) );
  CKND2D0 U86 ( .A1(n248), .A2(n488), .ZN(n502) );
  CKND2D0 U87 ( .A1(n278), .A2(n258), .ZN(n349) );
  CKND2D0 U88 ( .A1(n408), .A2(n349), .ZN(n435) );
  INVD0 U89 ( .I(frac_b[0]), .ZN(n315) );
  NR2D0 U90 ( .A1(n315), .A2(n347), .ZN(n390) );
  AOI21D0 U91 ( .A1(n279), .A2(n328), .B(n271), .ZN(n364) );
  INR2D0 U92 ( .A1(n488), .B1(n248), .ZN(n463) );
  NR2D0 U93 ( .A1(frac_a[0]), .A2(n245), .ZN(n541) );
  CKND2D0 U94 ( .A1(frac_b[0]), .A2(n541), .ZN(n452) );
  INVD0 U95 ( .I(n452), .ZN(n377) );
  NR3D0 U96 ( .A1(n247), .A2(n246), .A3(n242), .ZN(n423) );
  AOI22D0 U97 ( .A1(n302), .A2(n273), .B1(n299), .B2(n262), .ZN(n476) );
  NR2D0 U98 ( .A1(n307), .A2(frac_a[1]), .ZN(n401) );
  INVD0 U99 ( .I(n401), .ZN(n322) );
  NR2D0 U100 ( .A1(n322), .A2(n241), .ZN(n429) );
  CKND2D0 U101 ( .A1(n286), .A2(n298), .ZN(n501) );
  CKND2D0 U102 ( .A1(n239), .A2(n315), .ZN(n356) );
  INVD0 U103 ( .I(n356), .ZN(n487) );
  CKND2D0 U104 ( .A1(n278), .A2(n292), .ZN(n313) );
  CKND2D0 U105 ( .A1(n524), .A2(n241), .ZN(n409) );
  INVD0 U106 ( .I(n409), .ZN(n536) );
  CKND2D0 U107 ( .A1(n301), .A2(n296), .ZN(n438) );
  ND4D0 U108 ( .A1(n476), .A2(n501), .A3(n313), .A4(n251), .ZN(n308) );
  CKND2D0 U109 ( .A1(n247), .A2(n240), .ZN(n367) );
  INVD0 U110 ( .I(n367), .ZN(n417) );
  CKND2D0 U111 ( .A1(n246), .A2(n417), .ZN(n398) );
  INVD0 U112 ( .I(n398), .ZN(n335) );
  CKND2D0 U113 ( .A1(n335), .A2(n287), .ZN(n514) );
  INVD0 U114 ( .I(n514), .ZN(n492) );
  NR2D0 U115 ( .A1(n308), .A2(n492), .ZN(n348) );
  CKND2D0 U116 ( .A1(n377), .A2(n269), .ZN(n366) );
  CKND2D0 U117 ( .A1(n417), .A2(n309), .ZN(n395) );
  INVD0 U118 ( .I(n395), .ZN(n525) );
  CKND2D0 U119 ( .A1(n305), .A2(n259), .ZN(n326) );
  CKND2D0 U120 ( .A1(n292), .A2(n378), .ZN(n397) );
  CKND2D0 U121 ( .A1(n376), .A2(n305), .ZN(n439) );
  AN4D0 U122 ( .A1(n366), .A2(n326), .A3(n397), .A4(n439), .Z(n403) );
  INVD0 U123 ( .I(n262), .ZN(n368) );
  NR2D0 U124 ( .A1(n279), .A2(n368), .ZN(n523) );
  INVD0 U125 ( .I(n298), .ZN(n402) );
  NR2D0 U126 ( .A1(n249), .A2(n297), .ZN(n457) );
  INVD0 U127 ( .I(n302), .ZN(n412) );
  CKND2D0 U128 ( .A1(n248), .A2(frac_b[2]), .ZN(n427) );
  NR2D0 U129 ( .A1(n427), .A2(n428), .ZN(n458) );
  OAI22D0 U130 ( .A1(n412), .A2(n356), .B1(n409), .B2(n274), .ZN(n310) );
  NR3D0 U131 ( .A1(n253), .A2(n457), .A3(n310), .ZN(n373) );
  IND4D0 U132 ( .A1(n364), .B1(n348), .B2(n403), .B3(n373), .ZN(n311) );
  AOI211D0 U133 ( .A1(n312), .A2(n258), .B(n435), .C(n311), .ZN(n321) );
  INVD0 U134 ( .I(n334), .ZN(n496) );
  NR2D0 U135 ( .A1(n328), .A2(n249), .ZN(n480) );
  NR2D0 U136 ( .A1(n289), .A2(n270), .ZN(n499) );
  NR2D0 U137 ( .A1(n409), .A2(n289), .ZN(n462) );
  AOI211D0 U138 ( .A1(n524), .A2(n260), .B(n499), .C(n462), .ZN(n314) );
  INVD0 U139 ( .I(n267), .ZN(n540) );
  CKND2D0 U140 ( .A1(n540), .A2(n429), .ZN(n394) );
  ND4D0 U141 ( .A1(n314), .A2(n394), .A3(n313), .A4(n326), .ZN(n329) );
  CKND2D0 U142 ( .A1(n335), .A2(n258), .ZN(n530) );
  NR2D0 U143 ( .A1(n275), .A2(n368), .ZN(n498) );
  INVD0 U144 ( .I(n498), .ZN(n388) );
  OAI211D0 U145 ( .A1(n270), .A2(n268), .B(n530), .C(n388), .ZN(n319) );
  CKND2D0 U146 ( .A1(n264), .A2(n315), .ZN(n355) );
  NR2D0 U147 ( .A1(n355), .A2(n280), .ZN(n535) );
  NR2D0 U148 ( .A1(n535), .A2(n457), .ZN(n411) );
  NR2D0 U149 ( .A1(n356), .A2(n290), .ZN(n341) );
  AOI21D0 U150 ( .A1(n273), .A2(n417), .B(n341), .ZN(n426) );
  NR2D0 U151 ( .A1(n274), .A2(n355), .ZN(n338) );
  INVD0 U152 ( .I(n439), .ZN(n479) );
  NR2D0 U153 ( .A1(n338), .A2(n479), .ZN(n317) );
  CKND2D0 U154 ( .A1(n423), .A2(n262), .ZN(n316) );
  ND4D0 U155 ( .A1(n411), .A2(n426), .A3(n317), .A4(n316), .ZN(n318) );
  NR4D0 U156 ( .A1(n480), .A2(n329), .A3(n319), .A4(n318), .ZN(n320) );
  CKND2D0 U157 ( .A1(n283), .A2(n304), .ZN(n361) );
  CKND2D0 U158 ( .A1(n269), .A2(n286), .ZN(n441) );
  CKND2D0 U159 ( .A1(n361), .A2(n441), .ZN(n400) );
  NR2D0 U160 ( .A1(n453), .A2(n412), .ZN(n521) );
  INVD0 U161 ( .I(n521), .ZN(n389) );
  OAI21D0 U162 ( .A1(n284), .A2(n304), .B(n277), .ZN(n374) );
  CKND2D0 U163 ( .A1(n376), .A2(n302), .ZN(n481) );
  ND3D0 U164 ( .A1(n389), .A2(n374), .A3(n481), .ZN(n436) );
  NR2D0 U165 ( .A1(n400), .A2(n436), .ZN(n473) );
  OAI221D0 U166 ( .A1(n334), .A2(n321), .B1(n496), .B2(n320), .C(n473), .ZN(
        error_coeff[25]) );
  CKND2D0 U167 ( .A1(n296), .A2(n378), .ZN(n416) );
  INVD0 U168 ( .I(n416), .ZN(n350) );
  NR2D0 U169 ( .A1(n272), .A2(n367), .ZN(n324) );
  OAI21D0 U170 ( .A1(n279), .A2(n322), .B(n257), .ZN(n512) );
  CKND2D0 U171 ( .A1(n286), .A2(n305), .ZN(n418) );
  CKND2D0 U172 ( .A1(n335), .A2(n277), .ZN(n323) );
  CKND2D0 U173 ( .A1(n283), .A2(n298), .ZN(n387) );
  ND4D0 U174 ( .A1(n394), .A2(n418), .A3(n323), .A4(n387), .ZN(n404) );
  NR4D0 U175 ( .A1(n350), .A2(n324), .A3(n512), .A4(n404), .ZN(n510) );
  NR2D0 U176 ( .A1(n341), .A2(n521), .ZN(n360) );
  NR2D0 U177 ( .A1(n282), .A2(n487), .ZN(n413) );
  NR2D0 U178 ( .A1(n266), .A2(n413), .ZN(n344) );
  NR2D0 U179 ( .A1(n249), .A2(n266), .ZN(n325) );
  CKND2D0 U180 ( .A1(n301), .A2(n287), .ZN(n405) );
  OAI21D0 U181 ( .A1(n409), .A2(n280), .B(n405), .ZN(n359) );
  INR4D0 U182 ( .A1(n360), .B1(n344), .B2(n325), .B3(n359), .ZN(n327) );
  AN4D0 U183 ( .A1(n510), .A2(n327), .A3(n251), .A4(n326), .Z(n333) );
  AOI22D0 U184 ( .A1(n429), .A2(n260), .B1(n423), .B2(n377), .ZN(n382) );
  NR2D0 U185 ( .A1(n375), .A2(n266), .ZN(n393) );
  AOI31D0 U186 ( .A1(n243), .A2(n244), .A3(n306), .B(n393), .ZN(n331) );
  NR2D0 U187 ( .A1(n328), .A2(n355), .ZN(n500) );
  AOI211D0 U188 ( .A1(n401), .A2(n463), .B(n500), .C(n329), .ZN(n330) );
  CKND2D0 U189 ( .A1(n284), .A2(n293), .ZN(n425) );
  AN4D0 U190 ( .A1(n382), .A2(n331), .A3(n330), .A4(n425), .Z(n332) );
  OAI221D0 U191 ( .A1(n334), .A2(n333), .B1(n496), .B2(n332), .C(n397), .ZN(
        error_coeff[27]) );
  AOI221D0 U192 ( .A1(n282), .A2(n335), .B1(n541), .B2(n288), .C(n253), .ZN(
        n336) );
  OAI21D0 U193 ( .A1(n413), .A2(n402), .B(n336), .ZN(n337) );
  AOI211D0 U194 ( .A1(n276), .A2(n463), .B(n521), .C(n337), .ZN(n444) );
  NR2D0 U195 ( .A1(n274), .A2(n452), .ZN(n421) );
  NR2D0 U196 ( .A1(n368), .A2(n290), .ZN(n539) );
  NR2D0 U197 ( .A1(n462), .A2(n338), .ZN(n391) );
  CKND2D0 U198 ( .A1(n391), .A2(n501), .ZN(n339) );
  NR4D0 U199 ( .A1(n421), .A2(n480), .A3(n539), .A4(n339), .ZN(n454) );
  NR2D0 U200 ( .A1(n273), .A2(n296), .ZN(n396) );
  NR2D0 U201 ( .A1(n402), .A2(n396), .ZN(n497) );
  BUFFD0 U202 ( .I(func[0]), .Z(n513) );
  INVD0 U203 ( .I(n513), .ZN(n340) );
  CKND2D0 U204 ( .A1(n287), .A2(n265), .ZN(n357) );
  CKND2D0 U205 ( .A1(n340), .A2(n357), .ZN(n503) );
  NR4D0 U206 ( .A1(n350), .A2(n341), .A3(n359), .A4(n435), .ZN(n342) );
  CKND2D0 U207 ( .A1(n342), .A2(n361), .ZN(n528) );
  CKND2D0 U208 ( .A1(n481), .A2(n441), .ZN(n343) );
  NR4D0 U209 ( .A1(n497), .A2(n503), .A3(n528), .A4(n343), .ZN(n354) );
  NR2D0 U210 ( .A1(n275), .A2(n270), .ZN(n455) );
  NR2D0 U211 ( .A1(n455), .A2(n421), .ZN(n365) );
  AOI211D0 U212 ( .A1(n273), .A2(n304), .B(n344), .C(n535), .ZN(n440) );
  ND4D0 U213 ( .A1(n365), .A2(n440), .A3(n382), .A4(n418), .ZN(n345) );
  AOI221D0 U214 ( .A1(n299), .A2(n295), .B1(n265), .B2(n295), .C(n345), .ZN(
        n484) );
  CKAN2D0 U215 ( .A1(n484), .A2(n257), .Z(n353) );
  AOI22D0 U216 ( .A1(n264), .A2(n269), .B1(n296), .B2(n306), .ZN(n475) );
  AOI21D0 U217 ( .A1(n401), .A2(n458), .B(n400), .ZN(n346) );
  OA211D0 U218 ( .A1(n347), .A2(n290), .B(n475), .C(n346), .Z(n352) );
  CKND2D0 U219 ( .A1(n302), .A2(n282), .ZN(n544) );
  ND3D0 U220 ( .A1(n348), .A2(n544), .A3(n394), .ZN(n362) );
  OAI211D0 U221 ( .A1(n255), .A2(n289), .B(n391), .C(n349), .ZN(n519) );
  NR4D0 U222 ( .A1(n350), .A2(n362), .A3(n496), .A4(n519), .ZN(n351) );
  AOI33D0 U223 ( .A1(n444), .A2(n454), .A3(n354), .B1(n353), .B2(n352), .B3(
        n351), .ZN(error_coeff[24]) );
  NR2D0 U224 ( .A1(n255), .A2(n402), .ZN(n437) );
  AOI21D0 U225 ( .A1(n247), .A2(n395), .B(n356), .ZN(n442) );
  OAI211D0 U226 ( .A1(n452), .A2(n289), .B(n484), .C(n357), .ZN(n358) );
  NR4D0 U227 ( .A1(n437), .A2(n359), .A3(n442), .A4(n358), .ZN(n467) );
  BUFFD0 U228 ( .I(func[0]), .Z(n460) );
  CKND2D0 U229 ( .A1(n276), .A2(n306), .ZN(n422) );
  CKND2D0 U230 ( .A1(n360), .A2(n422), .ZN(n363) );
  CKND2D0 U231 ( .A1(n361), .A2(n530), .ZN(n419) );
  NR4D0 U232 ( .A1(n364), .A2(n363), .A3(n362), .A4(n419), .ZN(n372) );
  INVD0 U233 ( .I(n365), .ZN(n370) );
  AOI211D0 U234 ( .A1(n293), .A2(n299), .B(n253), .C(n480), .ZN(n494) );
  OAI211D0 U235 ( .A1(n368), .A2(n367), .B(n494), .C(n366), .ZN(n369) );
  AOI211D0 U236 ( .A1(n298), .A2(n264), .B(n370), .C(n369), .ZN(n371) );
  BUFFD0 U237 ( .I(func[0]), .Z(n543) );
  INVD0 U238 ( .I(n543), .ZN(n432) );
  AOI32D0 U239 ( .A1(n467), .A2(n460), .A3(n372), .B1(n371), .B2(n432), .ZN(
        error_coeff[16]) );
  AN4D0 U240 ( .A1(n475), .A2(n373), .A3(n374), .A4(n439), .Z(n386) );
  INVD0 U241 ( .I(n441), .ZN(n456) );
  CKND2D0 U242 ( .A1(n408), .A2(n374), .ZN(n431) );
  NR2D0 U243 ( .A1(n275), .A2(n375), .ZN(n448) );
  CKND2D0 U244 ( .A1(n540), .A2(n376), .ZN(n415) );
  CKND2D0 U245 ( .A1(n377), .A2(n260), .ZN(n459) );
  CKND2D0 U246 ( .A1(n415), .A2(n459), .ZN(n534) );
  CKND2D0 U247 ( .A1(n295), .A2(n306), .ZN(n380) );
  CKND2D0 U248 ( .A1(n283), .A2(n378), .ZN(n379) );
  ND4D0 U249 ( .A1(n514), .A2(n438), .A3(n380), .A4(n379), .ZN(n381) );
  NR4D0 U250 ( .A1(n421), .A2(n448), .A3(n534), .A4(n381), .ZN(n508) );
  INVD0 U251 ( .I(n462), .ZN(n493) );
  AN4D0 U252 ( .A1(n382), .A2(n411), .A3(n405), .A4(n493), .Z(n383) );
  ND4D0 U253 ( .A1(n476), .A2(n444), .A3(n508), .A4(n383), .ZN(n384) );
  NR4D0 U254 ( .A1(n455), .A2(n456), .A3(n431), .A4(n384), .ZN(n385) );
  AOI32D0 U255 ( .A1(n454), .A2(n432), .A3(n386), .B1(n543), .B2(n385), .ZN(
        error_coeff[17]) );
  ND4D0 U256 ( .A1(n389), .A2(n415), .A3(n388), .A4(n387), .ZN(n529) );
  AOI22D0 U257 ( .A1(n301), .A2(n541), .B1(n282), .B2(n260), .ZN(n537) );
  ND4D0 U258 ( .A1(n391), .A2(n537), .A3(n405), .A4(n422), .ZN(n392) );
  INR4D0 U259 ( .A1(n394), .B1(n393), .B2(n529), .B3(n392), .ZN(n483) );
  OA21D0 U260 ( .A1(n396), .A2(n395), .B(n425), .Z(n516) );
  OAI211D0 U261 ( .A1(n245), .A2(n290), .B(n516), .C(n397), .ZN(n399) );
  AOI211D0 U262 ( .A1(n401), .A2(n265), .B(n400), .C(n399), .ZN(n407) );
  AO211D0 U263 ( .A1(n243), .A2(n244), .B(n402), .C(n245), .Z(n424) );
  CKND2D0 U264 ( .A1(n403), .A2(n438), .ZN(n471) );
  IINR4D0 U265 ( .A1(n424), .A2(n405), .B1(n471), .B2(n404), .ZN(n406) );
  AOI32D0 U266 ( .A1(n483), .A2(n460), .A3(n407), .B1(n406), .B2(n432), .ZN(
        error_coeff[18]) );
  OA221D0 U267 ( .A1(n270), .A2(n267), .B1(n294), .B2(n266), .C(n408), .Z(n410) );
  OAI211D0 U268 ( .A1(n413), .A2(n412), .B(n411), .C(n410), .ZN(n414) );
  AOI211D0 U269 ( .A1(n458), .A2(n292), .B(n500), .C(n414), .ZN(n517) );
  CKND2D0 U270 ( .A1(n246), .A2(n259), .ZN(n445) );
  OAI211D0 U271 ( .A1(n417), .A2(n445), .B(n416), .C(n415), .ZN(n461) );
  IND4D0 U272 ( .A1(n419), .B1(n444), .B2(n438), .B3(n418), .ZN(n420) );
  INR4D0 U273 ( .A1(n422), .B1(n421), .B2(n461), .B3(n420), .ZN(n434) );
  AOI22D0 U274 ( .A1(n463), .A2(n276), .B1(n299), .B2(n295), .ZN(n474) );
  ND4D0 U275 ( .A1(n426), .A2(n474), .A3(n425), .A4(n424), .ZN(n470) );
  AO31D0 U276 ( .A1(n287), .A2(n428), .A3(n427), .B(n534), .Z(n430) );
  NR4D0 U277 ( .A1(n519), .A2(n470), .A3(n431), .A4(n430), .ZN(n433) );
  AOI32D0 U278 ( .A1(n517), .A2(n543), .A3(n434), .B1(n433), .B2(n432), .ZN(
        error_coeff[19]) );
  INR4D0 U279 ( .A1(n516), .B1(n437), .B2(n436), .B3(n435), .ZN(n451) );
  INVD0 U280 ( .I(n460), .ZN(n545) );
  IND2D0 U281 ( .A1(n500), .B1(n251), .ZN(n486) );
  INR4D0 U282 ( .A1(n454), .B1(n455), .B2(n523), .B3(n486), .ZN(n450) );
  OAI211D0 U283 ( .A1(n280), .A2(n271), .B(n440), .C(n439), .ZN(n527) );
  ND3D0 U284 ( .A1(n544), .A2(n459), .A3(n441), .ZN(n447) );
  AOI211D0 U285 ( .A1(n540), .A2(n277), .B(n442), .C(n486), .ZN(n443) );
  OAI211D0 U286 ( .A1(n242), .A2(n445), .B(n444), .C(n443), .ZN(n446) );
  NR4D0 U287 ( .A1(n448), .A2(n527), .A3(n447), .A4(n446), .ZN(n449) );
  AOI32D0 U288 ( .A1(n451), .A2(n545), .A3(n450), .B1(n513), .B2(n449), .ZN(
        error_coeff[20]) );
  CKND2D0 U289 ( .A1(n304), .A2(n293), .ZN(n531) );
  NR2D0 U290 ( .A1(n452), .A2(n267), .ZN(n520) );
  NR2D0 U291 ( .A1(n249), .A2(n274), .ZN(n478) );
  INR4D0 U292 ( .A1(n531), .B1(n520), .B2(n498), .B3(n478), .ZN(n491) );
  IND4D0 U293 ( .A1(n455), .B1(n454), .B2(n491), .B3(n545), .ZN(n469) );
  AOI211D0 U294 ( .A1(n265), .A2(n292), .B(n457), .C(n456), .ZN(n466) );
  CKND2D0 U295 ( .A1(n460), .A2(n459), .ZN(n522) );
  INR4D0 U296 ( .A1(n257), .B1(n462), .B2(n461), .B3(n522), .ZN(n465) );
  CKND2D0 U297 ( .A1(n301), .A2(n276), .ZN(n464) );
  ND4D0 U298 ( .A1(n467), .A2(n466), .A3(n465), .A4(n464), .ZN(n468) );
  OAI31D0 U299 ( .A1(n471), .A2(n470), .A3(n469), .B(n468), .ZN(n472) );
  CKND2D0 U300 ( .A1(n252), .A2(n472), .ZN(error_coeff[21]) );
  CKND2D0 U301 ( .A1(n474), .A2(n473), .ZN(n504) );
  CKND2D0 U302 ( .A1(n476), .A2(n475), .ZN(n477) );
  NR4D0 U303 ( .A1(n492), .A2(n479), .A3(n504), .A4(n477), .ZN(n490) );
  NR4D0 U304 ( .A1(n480), .A2(n499), .A3(n479), .A4(n478), .ZN(n482) );
  ND4D0 U305 ( .A1(n484), .A2(n483), .A3(n482), .A4(n257), .ZN(n485) );
  AOI211D0 U306 ( .A1(n488), .A2(n293), .B(n486), .C(n485), .ZN(n489) );
  AOI32D0 U307 ( .A1(n491), .A2(n545), .A3(n490), .B1(n513), .B2(n489), .ZN(
        error_coeff[22]) );
  INR2D0 U308 ( .A1(n517), .B1(n492), .ZN(n511) );
  CKND2D0 U309 ( .A1(n494), .A2(n493), .ZN(n495) );
  NR4D0 U310 ( .A1(n497), .A2(n498), .A3(n496), .A4(n495), .ZN(n509) );
  INR4D0 U311 ( .A1(n501), .B1(n500), .B2(n499), .B3(n498), .ZN(n507) );
  NR2D0 U312 ( .A1(n280), .A2(n271), .ZN(n505) );
  NR4D0 U313 ( .A1(n539), .A2(n505), .A3(n504), .A4(n503), .ZN(n506) );
  AOI33D0 U314 ( .A1(n511), .A2(n510), .A3(n509), .B1(n508), .B2(n507), .B3(
        n506), .ZN(error_coeff[23]) );
  AOI211D0 U315 ( .A1(n284), .A2(n259), .B(n513), .C(n512), .ZN(n515) );
  ND4D0 U316 ( .A1(n517), .A2(n516), .A3(n515), .A4(n514), .ZN(n518) );
  NR4D0 U317 ( .A1(n521), .A2(n520), .A3(n519), .A4(n518), .ZN(n533) );
  AO211D0 U318 ( .A1(n305), .A2(n524), .B(n523), .C(n522), .Z(n526) );
  NR4D0 U319 ( .A1(n529), .A2(n528), .A3(n527), .A4(n526), .ZN(n532) );
  OAI211D0 U320 ( .A1(n533), .A2(n532), .B(n531), .C(n530), .ZN(
        error_coeff[26]) );
  AOI211D0 U321 ( .A1(n536), .A2(n284), .B(n535), .C(n534), .ZN(n546) );
  CKND2D0 U322 ( .A1(n537), .A2(n252), .ZN(n538) );
  AOI211D0 U323 ( .A1(n264), .A2(n238), .B(n539), .C(n538), .ZN(n542) );
  AOI32D0 U324 ( .A1(n546), .A2(n545), .A3(n544), .B1(n543), .B2(n542), .ZN(
        error_coeff[28]) );
endmodule


module adder_2_4_6_8_select_bit_1 ( mode, cin_i1, cin_i2, cin_o );
  input [1:0] mode;
  input cin_i1, cin_i2;
  output cin_o;


  BUFFD0 U1 ( .I(cin_i1), .Z(cin_o) );
endmodule


module adder_5_7select_bit_1 ( mode, cin_i1, cin_i2, cin_i3, cin_o );
  input [1:0] mode;
  input cin_i1, cin_i2, cin_i3;
  output cin_o;


  BUFFD0 U1 ( .I(cin_i1), .Z(cin_o) );
endmodule


module add_8_bit_6 ( a, b, cin, result );
  input [7:0] a;
  input [7:0] b;
  output [8:0] result;
  input cin;


  BUFFD0 U1 ( .I(a[3]), .Z(result[3]) );
  BUFFD0 U2 ( .I(a[0]), .Z(result[0]) );
  BUFFD0 U3 ( .I(a[1]), .Z(result[1]) );
  BUFFD0 U4 ( .I(a[7]), .Z(result[7]) );
  BUFFD0 U5 ( .I(a[6]), .Z(result[6]) );
  BUFFD0 U6 ( .I(a[5]), .Z(result[5]) );
  BUFFD0 U7 ( .I(a[4]), .Z(result[4]) );
  BUFFD0 U8 ( .I(a[2]), .Z(result[2]) );
endmodule


module add_8_bit_5 ( a, b, cin, result );
  input [7:0] a;
  input [7:0] b;
  output [8:0] result;
  input cin;
  wire   \intadd_0/CI , \intadd_0/n7 , \intadd_0/n6 , \intadd_0/n5 ,
         \intadd_0/n4 , \intadd_0/n3 , \intadd_0/n2 , \intadd_0/n1 ;
  assign result[8] = \intadd_0/n1 ;

  FA1D0 \intadd_0/U8  ( .A(a[1]), .B(b[1]), .CI(\intadd_0/CI ), .CO(
        \intadd_0/n7 ), .S(result[1]) );
  FA1D0 \intadd_0/U7  ( .A(a[2]), .B(b[2]), .CI(\intadd_0/n7 ), .CO(
        \intadd_0/n6 ), .S(result[2]) );
  FA1D0 \intadd_0/U6  ( .A(a[3]), .B(b[3]), .CI(\intadd_0/n6 ), .CO(
        \intadd_0/n5 ), .S(result[3]) );
  FA1D0 \intadd_0/U5  ( .A(a[4]), .B(b[4]), .CI(\intadd_0/n5 ), .CO(
        \intadd_0/n4 ), .S(result[4]) );
  FA1D0 \intadd_0/U4  ( .A(a[5]), .B(b[5]), .CI(\intadd_0/n4 ), .CO(
        \intadd_0/n3 ), .S(result[5]) );
  FA1D0 \intadd_0/U3  ( .A(a[6]), .B(b[6]), .CI(\intadd_0/n3 ), .CO(
        \intadd_0/n2 ), .S(result[6]) );
  FA1D0 \intadd_0/U2  ( .A(a[7]), .B(b[7]), .CI(\intadd_0/n2 ), .CO(
        \intadd_0/n1 ), .S(result[7]) );
  CKAN2D0 U1 ( .A1(a[0]), .A2(b[0]), .Z(\intadd_0/CI ) );
  IAO21D0 U2 ( .A1(a[0]), .A2(b[0]), .B(\intadd_0/CI ), .ZN(result[0]) );
endmodule


module twos_complement_16_N32 ( mode, func_4_bit_add, func, in, out );
  input [1:0] mode;
  output [3:0] func_4_bit_add;
  input [3:0] func;
  input [31:0] in;
  output [31:0] out;
  wire   n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77;

  INVD0 U3 ( .I(n14), .ZN(n6) );
  BUFFD0 U4 ( .I(in[8]), .Z(out[8]) );
  BUFFD0 U5 ( .I(func[0]), .Z(n28) );
  INVD0 U6 ( .I(n28), .ZN(func_4_bit_add[3]) );
  NR2D0 U7 ( .A1(in[9]), .A2(in[8]), .ZN(n8) );
  BUFFD0 U8 ( .I(func[0]), .Z(n67) );
  INVD0 U9 ( .I(n67), .ZN(n71) );
  BUFFD0 U10 ( .I(func[0]), .Z(n75) );
  INVD0 U11 ( .I(n75), .ZN(n9) );
  OAI21D0 U12 ( .A1(n8), .A2(n9), .B(in[10]), .ZN(n7) );
  OAI31D0 U13 ( .A1(n8), .A2(in[10]), .A3(n71), .B(n7), .ZN(out[10]) );
  NR3D0 U14 ( .A1(in[10]), .A2(in[9]), .A3(in[8]), .ZN(n11) );
  OAI21D0 U15 ( .A1(n11), .A2(n9), .B(in[11]), .ZN(n10) );
  OAI31D0 U16 ( .A1(n11), .A2(in[11]), .A3(n71), .B(n10), .ZN(out[11]) );
  OR4D0 U17 ( .A1(in[11]), .A2(in[10]), .A3(in[9]), .A4(in[8]), .Z(n15) );
  NR2D0 U18 ( .A1(n15), .A2(in[12]), .ZN(n18) );
  INVD0 U19 ( .I(in[13]), .ZN(n20) );
  CKND2D0 U20 ( .A1(n18), .A2(n20), .ZN(n21) );
  NR2D0 U21 ( .A1(n21), .A2(in[14]), .ZN(n24) );
  INVD0 U22 ( .I(in[15]), .ZN(n26) );
  CKND2D0 U23 ( .A1(n24), .A2(n26), .ZN(n27) );
  NR2D0 U24 ( .A1(n27), .A2(in[16]), .ZN(n31) );
  INVD0 U25 ( .I(in[17]), .ZN(n33) );
  CKND2D0 U26 ( .A1(n31), .A2(n33), .ZN(n34) );
  NR2D0 U27 ( .A1(n34), .A2(in[18]), .ZN(n37) );
  INVD0 U28 ( .I(in[19]), .ZN(n39) );
  CKND2D0 U29 ( .A1(n37), .A2(n39), .ZN(n40) );
  NR2D0 U30 ( .A1(n40), .A2(in[20]), .ZN(n43) );
  INVD0 U31 ( .I(in[21]), .ZN(n46) );
  CKND2D0 U32 ( .A1(n43), .A2(n46), .ZN(n47) );
  NR2D0 U33 ( .A1(n47), .A2(in[22]), .ZN(n50) );
  INVD0 U34 ( .I(in[23]), .ZN(n52) );
  CKND2D0 U35 ( .A1(n50), .A2(n52), .ZN(n53) );
  NR2D0 U36 ( .A1(n53), .A2(in[24]), .ZN(n57) );
  INVD0 U37 ( .I(in[25]), .ZN(n59) );
  CKND2D0 U38 ( .A1(n57), .A2(n59), .ZN(n60) );
  NR2D0 U39 ( .A1(n60), .A2(in[26]), .ZN(n63) );
  INVD0 U40 ( .I(in[27]), .ZN(n65) );
  CKND2D0 U41 ( .A1(n63), .A2(n65), .ZN(n66) );
  NR2D0 U42 ( .A1(n66), .A2(in[28]), .ZN(n70) );
  INVD0 U43 ( .I(in[29]), .ZN(n73) );
  CKND2D0 U44 ( .A1(n70), .A2(n73), .ZN(n74) );
  OAI21D0 U45 ( .A1(in[30]), .A2(n74), .B(n75), .ZN(n12) );
  XNR2D0 U46 ( .A1(in[31]), .A2(n12), .ZN(out[31]) );
  INVD0 U47 ( .I(in[9]), .ZN(n14) );
  CKND2D0 U48 ( .A1(n75), .A2(out[8]), .ZN(n13) );
  MUX2ND0 U49 ( .I0(n6), .I1(n14), .S(n13), .ZN(out[9]) );
  INVD0 U50 ( .I(in[12]), .ZN(n17) );
  CKND2D0 U51 ( .A1(n28), .A2(n15), .ZN(n16) );
  MUX2ND0 U52 ( .I0(in[12]), .I1(n17), .S(n16), .ZN(out[12]) );
  NR2D0 U53 ( .A1(n71), .A2(n18), .ZN(n19) );
  MUX2ND0 U54 ( .I0(n20), .I1(in[13]), .S(n19), .ZN(out[13]) );
  INVD0 U55 ( .I(in[14]), .ZN(n23) );
  CKND2D0 U56 ( .A1(n28), .A2(n21), .ZN(n22) );
  MUX2ND0 U57 ( .I0(in[14]), .I1(n23), .S(n22), .ZN(out[14]) );
  BUFFD0 U58 ( .I(func[0]), .Z(n54) );
  INVD0 U59 ( .I(n54), .ZN(n44) );
  NR2D0 U60 ( .A1(n44), .A2(n24), .ZN(n25) );
  MUX2ND0 U61 ( .I0(n26), .I1(in[15]), .S(n25), .ZN(out[15]) );
  INVD0 U62 ( .I(in[16]), .ZN(n30) );
  CKND2D0 U63 ( .A1(n28), .A2(n27), .ZN(n29) );
  MUX2ND0 U64 ( .I0(in[16]), .I1(n30), .S(n29), .ZN(out[16]) );
  NR2D0 U65 ( .A1(n44), .A2(n31), .ZN(n32) );
  MUX2ND0 U66 ( .I0(n33), .I1(in[17]), .S(n32), .ZN(out[17]) );
  INVD0 U67 ( .I(in[18]), .ZN(n36) );
  CKND2D0 U68 ( .A1(n54), .A2(n34), .ZN(n35) );
  MUX2ND0 U69 ( .I0(in[18]), .I1(n36), .S(n35), .ZN(out[18]) );
  NR2D0 U70 ( .A1(n44), .A2(n37), .ZN(n38) );
  MUX2ND0 U71 ( .I0(n39), .I1(in[19]), .S(n38), .ZN(out[19]) );
  INVD0 U72 ( .I(in[20]), .ZN(n42) );
  CKND2D0 U73 ( .A1(n54), .A2(n40), .ZN(n41) );
  MUX2ND0 U74 ( .I0(in[20]), .I1(n42), .S(n41), .ZN(out[20]) );
  NR2D0 U75 ( .A1(n44), .A2(n43), .ZN(n45) );
  MUX2ND0 U76 ( .I0(n46), .I1(in[21]), .S(n45), .ZN(out[21]) );
  INVD0 U77 ( .I(in[22]), .ZN(n49) );
  CKND2D0 U78 ( .A1(n67), .A2(n47), .ZN(n48) );
  MUX2ND0 U79 ( .I0(in[22]), .I1(n49), .S(n48), .ZN(out[22]) );
  NR2D0 U80 ( .A1(func_4_bit_add[3]), .A2(n50), .ZN(n51) );
  MUX2ND0 U81 ( .I0(n52), .I1(in[23]), .S(n51), .ZN(out[23]) );
  INVD0 U82 ( .I(in[24]), .ZN(n56) );
  CKND2D0 U83 ( .A1(n54), .A2(n53), .ZN(n55) );
  MUX2ND0 U84 ( .I0(in[24]), .I1(n56), .S(n55), .ZN(out[24]) );
  NR2D0 U85 ( .A1(func_4_bit_add[3]), .A2(n57), .ZN(n58) );
  MUX2ND0 U86 ( .I0(n59), .I1(in[25]), .S(n58), .ZN(out[25]) );
  INVD0 U87 ( .I(in[26]), .ZN(n62) );
  CKND2D0 U88 ( .A1(n67), .A2(n60), .ZN(n61) );
  MUX2ND0 U89 ( .I0(in[26]), .I1(n62), .S(n61), .ZN(out[26]) );
  NR2D0 U90 ( .A1(func_4_bit_add[3]), .A2(n63), .ZN(n64) );
  MUX2ND0 U91 ( .I0(n65), .I1(in[27]), .S(n64), .ZN(out[27]) );
  INVD0 U92 ( .I(in[28]), .ZN(n69) );
  CKND2D0 U93 ( .A1(n67), .A2(n66), .ZN(n68) );
  MUX2ND0 U94 ( .I0(in[28]), .I1(n69), .S(n68), .ZN(out[28]) );
  NR2D0 U95 ( .A1(n71), .A2(n70), .ZN(n72) );
  MUX2ND0 U96 ( .I0(n73), .I1(in[29]), .S(n72), .ZN(out[29]) );
  INVD0 U97 ( .I(in[30]), .ZN(n77) );
  CKND2D0 U98 ( .A1(n75), .A2(n74), .ZN(n76) );
  MUX2ND0 U99 ( .I0(in[30]), .I1(n77), .S(n76), .ZN(out[30]) );
endmodule


module add_8_bit_0 ( a, b, cin, result );
  input [7:0] a;
  input [7:0] b;
  output [8:0] result;
  input cin;
  wire   \intadd_1/n7 , \intadd_1/n6 , \intadd_1/n5 , \intadd_1/n4 ,
         \intadd_1/n3 , \intadd_1/n2 , \intadd_1/n1 ;

  FA1D0 \intadd_1/U8  ( .A(cin), .B(a[0]), .CI(b[0]), .CO(\intadd_1/n7 ), .S(
        result[0]) );
  FA1D0 \intadd_1/U7  ( .A(a[1]), .B(b[1]), .CI(\intadd_1/n7 ), .CO(
        \intadd_1/n6 ), .S(result[1]) );
  FA1D0 \intadd_1/U6  ( .A(a[2]), .B(b[2]), .CI(\intadd_1/n6 ), .CO(
        \intadd_1/n5 ), .S(result[2]) );
  FA1D0 \intadd_1/U5  ( .A(a[3]), .B(b[3]), .CI(\intadd_1/n5 ), .CO(
        \intadd_1/n4 ), .S(result[3]) );
  FA1D0 \intadd_1/U4  ( .A(a[4]), .B(b[4]), .CI(\intadd_1/n4 ), .CO(
        \intadd_1/n3 ), .S(result[4]) );
  FA1D0 \intadd_1/U3  ( .A(a[5]), .B(b[5]), .CI(\intadd_1/n3 ), .CO(
        \intadd_1/n2 ), .S(result[5]) );
  FA1D0 \intadd_1/U2  ( .A(a[6]), .B(b[6]), .CI(\intadd_1/n2 ), .CO(
        \intadd_1/n1 ), .S(result[6]) );
  XOR3D0 U1 ( .A1(\intadd_1/n1 ), .A2(a[7]), .A3(b[7]), .Z(result[7]) );
endmodule


module add_4_bit_N5 ( func_bit, a, b, c, result );
  input [4:0] a;
  input [4:0] b;
  output [6:0] result;
  input func_bit, c;
  wire   \DP_OP_23J2_125_6679/n12 , \DP_OP_23J2_125_6679/n11 ,
         \DP_OP_23J2_125_6679/n6 , \DP_OP_23J2_125_6679/n5 ,
         \DP_OP_23J2_125_6679/n4 , \DP_OP_23J2_125_6679/n3 ,
         \DP_OP_23J2_125_6679/n2 , \DP_OP_23J2_125_6679/n1 , n1, n2, n3, n4;

  FA1D0 \DP_OP_23J2_125_6679/U7  ( .A(a[0]), .B(n4), .CI(
        \DP_OP_23J2_125_6679/n12 ), .CO(\DP_OP_23J2_125_6679/n6 ), .S(
        result[0]) );
  FA1D0 \DP_OP_23J2_125_6679/U6  ( .A(\DP_OP_23J2_125_6679/n12 ), .B(a[1]), 
        .CI(\DP_OP_23J2_125_6679/n6 ), .CO(\DP_OP_23J2_125_6679/n5 ), .S(
        result[1]) );
  FA1D0 \DP_OP_23J2_125_6679/U5  ( .A(\DP_OP_23J2_125_6679/n12 ), .B(a[2]), 
        .CI(\DP_OP_23J2_125_6679/n5 ), .CO(\DP_OP_23J2_125_6679/n4 ), .S(
        result[2]) );
  FA1D0 \DP_OP_23J2_125_6679/U4  ( .A(\DP_OP_23J2_125_6679/n11 ), .B(a[3]), 
        .CI(\DP_OP_23J2_125_6679/n4 ), .CO(\DP_OP_23J2_125_6679/n3 ), .S(
        result[3]) );
  FA1D0 \DP_OP_23J2_125_6679/U3  ( .A(n3), .B(a[4]), .CI(
        \DP_OP_23J2_125_6679/n3 ), .CO(\DP_OP_23J2_125_6679/n2 ), .S(result[4]) );
  HA1D0 \DP_OP_23J2_125_6679/U2  ( .A(\DP_OP_23J2_125_6679/n2 ), .B(n4), .CO(
        \DP_OP_23J2_125_6679/n1 ), .S(result[5]) );
  INVD0 U1 ( .I(func_bit), .ZN(n2) );
  INVD0 U2 ( .I(n2), .ZN(n3) );
  INVD0 U3 ( .I(n3), .ZN(n4) );
  INVD0 U4 ( .I(c), .ZN(n1) );
  XOR2D0 U5 ( .A1(n1), .A2(n4), .Z(\DP_OP_23J2_125_6679/n12 ) );
  XOR2D0 U6 ( .A1(\DP_OP_23J2_125_6679/n1 ), .A2(n2), .Z(result[6]) );
  XOR2D0 U7 ( .A1(c), .A2(n4), .Z(\DP_OP_23J2_125_6679/n11 ) );
endmodule


module shifter_out_16_mul_div_N32_lgN5 ( mode, a, shifter_2, shifter_0, 
        shifter_upper_half, shifter_lower_half, out );
  input [1:0] mode;
  input [31:0] a;
  input [4:0] shifter_2;
  input [4:0] shifter_0;
  input [6:0] shifter_upper_half;
  input [5:0] shifter_lower_half;
  output [63:0] out;
  wire   N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17,
         N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29, N30, N31,
         N32, N33, N34, N35, N36, N37, N38, N39, N40, N41, N42, N43, N44, N45,
         N46, N47, N48, N49, N50, N51, N52, N53, N54, N55, N56, N57, N58, N59,
         N60, N61, N62, N63, N64, N65, N66, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194,
         n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205,
         n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216,
         n217, n218, n219, n220, n221, n222, n223, n224, n225, n226, n227,
         n228, n229, n230, n231, n232, n233, n234, n235, n236, n237, n238,
         n239, n240, n241, n242, n243, n244, n245, n246, n247, n248, n249,
         n250, n251, n252, n253, n254, n255, n256, n257, n258, n259, n260,
         n261, n262, n263, n264, n265, n266, n267, n268, n269, n270, n271,
         n272, n273, n274, n275, n276, n277, n278, n279, n280, n281, n282,
         n283, n284, n285, n286, n287, n288, n289, n290, n291, n292, n293,
         n294, n295, n296, n297, n298, n299, n300, n301, n302, n303, n304,
         n305, n306, n307, n308, n309, n310, n311, n312, n313, n314, n315,
         n316, n317, n318, n319, n320, n321, n322, n323, n324, n325, n326,
         n327, n328, n329, n330, n331, n332, n333, n334, n335, n336, n337,
         n338, n339, n340, n341, n342, n343, n344, n345, n346, n347, n348,
         n349, n350, n351, n352, n353, n354, n355, n356, n357, n358, n359,
         n360, n361, n362, n363, n364, n365, n366, n367, n368, n369, n370,
         n371, n372, n373, n374, n375, n376, n377, n378, n379, n380, n381,
         n382, n383, n384, n385, n386, n387, n388, n389, n390, n391, n392,
         n393, n394, n395, n396, n397, n398, n399, n400, n401, n402, n403,
         n404, n405, n406, n407;
  assign out[0] = N3;
  assign out[1] = N4;
  assign out[2] = N5;
  assign out[3] = N6;
  assign out[4] = N7;
  assign out[5] = N8;
  assign out[6] = N9;
  assign out[7] = N10;
  assign out[8] = N11;
  assign out[9] = N12;
  assign out[10] = N13;
  assign out[11] = N14;
  assign out[12] = N15;
  assign out[13] = N16;
  assign out[14] = N17;
  assign out[15] = N18;
  assign out[16] = N19;
  assign out[17] = N20;
  assign out[18] = N21;
  assign out[19] = N22;
  assign out[20] = N23;
  assign out[21] = N24;
  assign out[22] = N25;
  assign out[23] = N26;
  assign out[24] = N27;
  assign out[25] = N28;
  assign out[26] = N29;
  assign out[27] = N30;
  assign out[28] = N31;
  assign out[29] = N32;
  assign out[30] = N33;
  assign out[31] = N34;
  assign out[32] = N35;
  assign out[33] = N36;
  assign out[34] = N37;
  assign out[35] = N38;
  assign out[36] = N39;
  assign out[37] = N40;
  assign out[38] = N41;
  assign out[39] = N42;
  assign out[40] = N43;
  assign out[41] = N44;
  assign out[42] = N45;
  assign out[43] = N46;
  assign out[44] = N47;
  assign out[45] = N48;
  assign out[46] = N49;
  assign out[47] = N50;
  assign out[48] = N51;
  assign out[49] = N52;
  assign out[50] = N53;
  assign out[51] = N54;
  assign out[52] = N55;
  assign out[53] = N56;
  assign out[54] = N57;
  assign out[55] = N58;
  assign out[56] = N59;
  assign out[57] = N60;
  assign out[58] = N61;
  assign out[59] = N62;
  assign out[60] = N63;
  assign out[61] = N64;
  assign out[62] = N65;
  assign out[63] = N66;

  BUFFD0 U3 ( .I(n326), .Z(n3) );
  BUFFD0 U4 ( .I(n310), .Z(n4) );
  BUFFD0 U5 ( .I(n257), .Z(n5) );
  INVD0 U6 ( .I(n9), .ZN(n6) );
  BUFFD0 U7 ( .I(n151), .Z(n7) );
  BUFFD0 U8 ( .I(n242), .Z(n8) );
  INVD0 U9 ( .I(n358), .ZN(n9) );
  INVD0 U10 ( .I(n11), .ZN(n10) );
  BUFFD0 U11 ( .I(shifter_upper_half[0]), .Z(n11) );
  BUFFD0 U12 ( .I(shifter_upper_half[1]), .Z(n12) );
  BUFFD0 U13 ( .I(shifter_upper_half[2]), .Z(n13) );
  BUFFD0 U14 ( .I(shifter_upper_half[2]), .Z(n14) );
  BUFFD0 U15 ( .I(shifter_upper_half[3]), .Z(n15) );
  BUFFD0 U16 ( .I(shifter_upper_half[3]), .Z(n16) );
  INVD0 U17 ( .I(n15), .ZN(n17) );
  INVD0 U18 ( .I(n280), .ZN(n18) );
  INVD0 U19 ( .I(n18), .ZN(n19) );
  INVD0 U20 ( .I(n405), .ZN(n20) );
  INVD0 U21 ( .I(n405), .ZN(n21) );
  INVD0 U22 ( .I(n405), .ZN(n22) );
  INVD0 U23 ( .I(n356), .ZN(n23) );
  INVD0 U24 ( .I(n23), .ZN(n24) );
  INVD0 U25 ( .I(n23), .ZN(n25) );
  INVD0 U26 ( .I(n23), .ZN(n26) );
  INVD0 U27 ( .I(n394), .ZN(n27) );
  INVD0 U28 ( .I(n27), .ZN(n28) );
  INVD0 U29 ( .I(n27), .ZN(n29) );
  INVD0 U30 ( .I(n27), .ZN(n30) );
  INVD0 U31 ( .I(n27), .ZN(n31) );
  BUFFD0 U32 ( .I(n13), .Z(n236) );
  INVD0 U33 ( .I(n236), .ZN(n32) );
  INVD0 U34 ( .I(n236), .ZN(n33) );
  INVD0 U35 ( .I(n236), .ZN(n34) );
  INVD0 U36 ( .I(n402), .ZN(n35) );
  INVD0 U37 ( .I(n402), .ZN(n36) );
  BUFFD0 U38 ( .I(n403), .Z(n400) );
  INVD0 U39 ( .I(n400), .ZN(n37) );
  INVD0 U40 ( .I(n400), .ZN(n38) );
  INVD0 U41 ( .I(n400), .ZN(n39) );
  INVD0 U42 ( .I(n400), .ZN(n40) );
  CKAN2D0 U43 ( .A1(n288), .A2(n162), .Z(n358) );
  INVD0 U44 ( .I(n6), .ZN(n41) );
  INVD0 U45 ( .I(n358), .ZN(n42) );
  INVD0 U46 ( .I(n358), .ZN(n43) );
  INVD0 U47 ( .I(n358), .ZN(n44) );
  NR2D0 U48 ( .A1(shifter_upper_half[0]), .A2(shifter_upper_half[1]), .ZN(n47)
         );
  CKND2D0 U49 ( .A1(shifter_upper_half[1]), .A2(shifter_upper_half[0]), .ZN(
        n151) );
  INVD0 U50 ( .I(n151), .ZN(n52) );
  BUFFD0 U51 ( .I(n52), .Z(n99) );
  AOI22D0 U52 ( .A1(n47), .A2(a[5]), .B1(a[2]), .B2(n99), .ZN(n46) );
  INVD0 U53 ( .I(shifter_upper_half[0]), .ZN(n112) );
  OR2D0 U54 ( .A1(n10), .A2(n12), .Z(n83) );
  INVD0 U55 ( .I(n83), .ZN(n146) );
  INVD0 U56 ( .I(shifter_upper_half[1]), .ZN(n113) );
  OR2D0 U57 ( .A1(n113), .A2(n11), .Z(n154) );
  BUFFD0 U58 ( .I(n154), .Z(n125) );
  INVD0 U59 ( .I(n125), .ZN(n73) );
  AOI22D0 U60 ( .A1(n146), .A2(a[4]), .B1(n73), .B2(a[3]), .ZN(n45) );
  CKND2D0 U61 ( .A1(n46), .A2(n45), .ZN(n213) );
  INVD0 U62 ( .I(shifter_upper_half[3]), .ZN(n220) );
  CKND2D0 U63 ( .A1(n32), .A2(n220), .ZN(n240) );
  INVD0 U64 ( .I(n240), .ZN(n323) );
  BUFFD0 U65 ( .I(n323), .Z(n328) );
  CKND2D0 U66 ( .A1(n14), .A2(n17), .ZN(n242) );
  INVD0 U67 ( .I(n242), .ZN(n84) );
  BUFFD0 U68 ( .I(n84), .Z(n267) );
  AO22D0 U69 ( .A1(n11), .A2(a[0]), .B1(a[1]), .B2(n112), .Z(n90) );
  CKAN2D0 U70 ( .A1(n90), .A2(n113), .Z(n214) );
  AOI22D0 U71 ( .A1(n213), .A2(n328), .B1(n267), .B2(n214), .ZN(n315) );
  INVD0 U72 ( .I(shifter_upper_half[6]), .ZN(n162) );
  CKND2D0 U73 ( .A1(shifter_upper_half[5]), .A2(n162), .ZN(n318) );
  BUFFD0 U74 ( .I(n318), .Z(n303) );
  BUFFD0 U75 ( .I(n303), .Z(n203) );
  BUFFD0 U76 ( .I(n203), .Z(n398) );
  BUFFD0 U77 ( .I(shifter_upper_half[4]), .Z(n195) );
  BUFFD0 U78 ( .I(n195), .Z(n238) );
  NR2D0 U79 ( .A1(n398), .A2(n238), .ZN(n407) );
  INVD0 U80 ( .I(n407), .ZN(n356) );
  INVD0 U81 ( .I(shifter_upper_half[5]), .ZN(n288) );
  BUFFD0 U82 ( .I(shifter_upper_half[4]), .Z(n185) );
  BUFFD0 U83 ( .I(n185), .Z(n194) );
  BUFFD0 U84 ( .I(n83), .Z(n67) );
  INVD0 U85 ( .I(n67), .ZN(n120) );
  INVD0 U86 ( .I(a[19]), .ZN(n142) );
  INVD0 U87 ( .I(n47), .ZN(n66) );
  BUFFD0 U88 ( .I(n66), .Z(n114) );
  INVD0 U89 ( .I(n114), .ZN(n89) );
  BUFFD0 U90 ( .I(n52), .Z(n92) );
  BUFFD0 U91 ( .I(n92), .Z(n61) );
  AOI22D0 U92 ( .A1(n89), .A2(a[21]), .B1(n61), .B2(a[18]), .ZN(n48) );
  OAI21D0 U93 ( .A1(n154), .A2(n142), .B(n48), .ZN(n49) );
  AOI21D0 U94 ( .A1(n120), .A2(a[20]), .B(n49), .ZN(n211) );
  BUFFD0 U95 ( .I(n84), .Z(n180) );
  BUFFD0 U96 ( .I(n180), .Z(n233) );
  BUFFD0 U97 ( .I(n233), .Z(n174) );
  BUFFD0 U98 ( .I(n66), .Z(n70) );
  INVD0 U99 ( .I(n70), .ZN(n108) );
  AOI22D0 U100 ( .A1(n108), .A2(a[17]), .B1(n61), .B2(a[14]), .ZN(n51) );
  BUFFD0 U101 ( .I(n83), .Z(n121) );
  INVD0 U102 ( .I(n121), .ZN(n74) );
  AOI22D0 U103 ( .A1(n74), .A2(a[16]), .B1(n73), .B2(a[15]), .ZN(n50) );
  CKND2D0 U104 ( .A1(n51), .A2(n50), .ZN(n207) );
  CKND2D0 U105 ( .A1(n16), .A2(n14), .ZN(n193) );
  INVD0 U106 ( .I(n193), .ZN(n168) );
  BUFFD0 U107 ( .I(n168), .Z(n273) );
  BUFFD0 U108 ( .I(n273), .Z(n263) );
  BUFFD0 U109 ( .I(n52), .Z(n284) );
  BUFFD0 U110 ( .I(n284), .Z(n124) );
  AOI22D0 U111 ( .A1(n89), .A2(a[9]), .B1(n124), .B2(a[6]), .ZN(n54) );
  INVD0 U112 ( .I(n125), .ZN(n130) );
  AOI22D0 U113 ( .A1(n146), .A2(a[8]), .B1(n130), .B2(a[7]), .ZN(n53) );
  CKND2D0 U114 ( .A1(n54), .A2(n53), .ZN(n212) );
  AOI22D0 U115 ( .A1(n174), .A2(n207), .B1(n263), .B2(n212), .ZN(n58) );
  CKND2D0 U116 ( .A1(n15), .A2(n33), .ZN(n280) );
  INVD0 U117 ( .I(n280), .ZN(n88) );
  BUFFD0 U118 ( .I(n88), .Z(n181) );
  BUFFD0 U119 ( .I(n181), .Z(n208) );
  INVD0 U120 ( .I(n114), .ZN(n129) );
  AOI22D0 U121 ( .A1(n129), .A2(a[13]), .B1(n124), .B2(a[10]), .ZN(n56) );
  AOI22D0 U122 ( .A1(n146), .A2(a[12]), .B1(n130), .B2(a[11]), .ZN(n55) );
  CKND2D0 U123 ( .A1(n56), .A2(n55), .ZN(n204) );
  CKND2D0 U124 ( .A1(n208), .A2(n204), .ZN(n57) );
  OAI211D0 U125 ( .A1(n211), .A2(n240), .B(n58), .C(n57), .ZN(n316) );
  AOI22D0 U126 ( .A1(n89), .A2(a[29]), .B1(n61), .B2(a[26]), .ZN(n60) );
  AOI22D0 U127 ( .A1(n74), .A2(a[28]), .B1(n73), .B2(a[27]), .ZN(n59) );
  CKND2D0 U128 ( .A1(n60), .A2(n59), .ZN(n187) );
  BUFFD0 U129 ( .I(n180), .Z(n277) );
  OA21D0 U130 ( .A1(a[30]), .A2(n112), .B(n12), .Z(n262) );
  INVD0 U131 ( .I(n67), .ZN(n135) );
  INVD0 U132 ( .I(a[23]), .ZN(n148) );
  AOI22D0 U133 ( .A1(n108), .A2(a[25]), .B1(n61), .B2(a[22]), .ZN(n62) );
  OAI21D0 U134 ( .A1(n125), .A2(n148), .B(n62), .ZN(n63) );
  AOI21D0 U135 ( .A1(n135), .A2(a[24]), .B(n63), .ZN(n167) );
  INVD0 U136 ( .I(n167), .ZN(n206) );
  BUFFD0 U137 ( .I(n168), .Z(n184) );
  BUFFD0 U138 ( .I(n184), .Z(n178) );
  AOI222D0 U139 ( .A1(n187), .A2(n88), .B1(n277), .B2(n262), .C1(n206), .C2(
        n178), .ZN(n384) );
  BUFFD0 U140 ( .I(shifter_upper_half[4]), .Z(n91) );
  BUFFD0 U141 ( .I(n91), .Z(n339) );
  MAOI22D0 U142 ( .A1(n194), .A2(n316), .B1(n384), .B2(n339), .ZN(n300) );
  OAI22D0 U143 ( .A1(n315), .A2(n25), .B1(n41), .B2(n300), .ZN(N9) );
  BUFFD0 U144 ( .I(n323), .Z(n190) );
  BUFFD0 U145 ( .I(n190), .Z(n164) );
  INVD0 U146 ( .I(n114), .ZN(n145) );
  AOI22D0 U147 ( .A1(a[1]), .A2(n92), .B1(n145), .B2(a[4]), .ZN(n65) );
  INVD0 U148 ( .I(n67), .ZN(n117) );
  BUFFD0 U149 ( .I(n154), .Z(n96) );
  INVD0 U150 ( .I(n96), .ZN(n116) );
  AOI22D0 U151 ( .A1(n117), .A2(a[3]), .B1(n116), .B2(a[2]), .ZN(n64) );
  CKND2D0 U152 ( .A1(n65), .A2(n64), .ZN(n232) );
  INVD0 U153 ( .I(n66), .ZN(n134) );
  CKAN2D0 U154 ( .A1(a[0]), .A2(n134), .Z(n198) );
  AOI22D0 U155 ( .A1(n164), .A2(n232), .B1(n267), .B2(n198), .ZN(n319) );
  BUFFD0 U156 ( .I(n190), .Z(n265) );
  INVD0 U157 ( .I(n70), .ZN(n102) );
  BUFFD0 U158 ( .I(n99), .Z(n156) );
  AOI22D0 U159 ( .A1(n102), .A2(a[20]), .B1(n156), .B2(a[17]), .ZN(n69) );
  INVD0 U160 ( .I(n67), .ZN(n109) );
  INVD0 U161 ( .I(n96), .ZN(n103) );
  AOI22D0 U162 ( .A1(n109), .A2(a[19]), .B1(n103), .B2(a[18]), .ZN(n68) );
  CKND2D0 U163 ( .A1(n69), .A2(n68), .ZN(n224) );
  INVD0 U164 ( .I(n70), .ZN(n85) );
  BUFFD0 U165 ( .I(n92), .Z(n95) );
  AOI22D0 U166 ( .A1(n85), .A2(a[8]), .B1(n95), .B2(a[5]), .ZN(n72) );
  AOI22D0 U167 ( .A1(n74), .A2(a[7]), .B1(n116), .B2(a[6]), .ZN(n71) );
  CKND2D0 U168 ( .A1(n72), .A2(n71), .ZN(n230) );
  AOI22D0 U169 ( .A1(n265), .A2(n224), .B1(n263), .B2(n230), .ZN(n80) );
  BUFFD0 U170 ( .I(n181), .Z(n227) );
  AOI22D0 U171 ( .A1(n108), .A2(a[12]), .B1(a[9]), .B2(n99), .ZN(n76) );
  AOI22D0 U172 ( .A1(n74), .A2(a[11]), .B1(n73), .B2(a[10]), .ZN(n75) );
  CKND2D0 U173 ( .A1(n76), .A2(n75), .ZN(n221) );
  BUFFD0 U174 ( .I(n180), .Z(n249) );
  AOI22D0 U175 ( .A1(n85), .A2(a[16]), .B1(n156), .B2(a[13]), .ZN(n78) );
  AOI22D0 U176 ( .A1(n117), .A2(a[15]), .B1(n103), .B2(a[14]), .ZN(n77) );
  CKND2D0 U177 ( .A1(n78), .A2(n77), .ZN(n226) );
  AOI22D0 U178 ( .A1(n227), .A2(n221), .B1(n249), .B2(n226), .ZN(n79) );
  CKND2D0 U179 ( .A1(n80), .A2(n79), .ZN(n320) );
  AOI22D0 U180 ( .A1(n85), .A2(a[28]), .B1(n95), .B2(a[25]), .ZN(n82) );
  AOI22D0 U181 ( .A1(n117), .A2(a[27]), .B1(n116), .B2(a[26]), .ZN(n81) );
  CKND2D0 U182 ( .A1(n82), .A2(n81), .ZN(n237) );
  AOI22D0 U183 ( .A1(n11), .A2(a[29]), .B1(a[30]), .B2(n112), .ZN(n153) );
  OAI21D0 U184 ( .A1(n153), .A2(n113), .B(n83), .ZN(n257) );
  BUFFD0 U185 ( .I(n84), .Z(n179) );
  AOI22D0 U186 ( .A1(n85), .A2(a[24]), .B1(n95), .B2(a[21]), .ZN(n87) );
  AOI22D0 U187 ( .A1(n109), .A2(a[23]), .B1(n103), .B2(a[22]), .ZN(n86) );
  CKND2D0 U188 ( .A1(n87), .A2(n86), .ZN(n222) );
  AOI222D0 U189 ( .A1(n237), .A2(n88), .B1(n5), .B2(n179), .C1(n222), .C2(n178), .ZN(n382) );
  BUFFD0 U190 ( .I(n91), .Z(n173) );
  MAOI22D0 U191 ( .A1(n194), .A2(n320), .B1(n382), .B2(n173), .ZN(n292) );
  OAI22D0 U192 ( .A1(n319), .A2(n26), .B1(n44), .B2(n292), .ZN(N8) );
  BUFFD0 U193 ( .I(n323), .Z(n186) );
  BUFFD0 U194 ( .I(n186), .Z(n275) );
  AOI222D0 U195 ( .A1(n90), .A2(n12), .B1(n89), .B2(a[3]), .C1(n135), .C2(a[2]), .ZN(n243) );
  INVD0 U196 ( .I(n243), .ZN(n322) );
  CKND2D0 U197 ( .A1(n275), .A2(n322), .ZN(n291) );
  BUFFD0 U198 ( .I(n91), .Z(n314) );
  INVD0 U199 ( .I(n96), .ZN(n144) );
  AOI22D0 U200 ( .A1(n102), .A2(a[11]), .B1(a[8]), .B2(n92), .ZN(n93) );
  IOA21D0 U201 ( .A1(n120), .A2(a[10]), .B(n93), .ZN(n94) );
  AOI21D0 U202 ( .A1(n144), .A2(a[9]), .B(n94), .ZN(n239) );
  AOI22D0 U203 ( .A1(n134), .A2(a[19]), .B1(n95), .B2(a[16]), .ZN(n98) );
  INVD0 U204 ( .I(n96), .ZN(n150) );
  AOI22D0 U205 ( .A1(n109), .A2(a[18]), .B1(n150), .B2(a[17]), .ZN(n97) );
  CKND2D0 U206 ( .A1(n98), .A2(n97), .ZN(n250) );
  BUFFD0 U207 ( .I(n273), .Z(n163) );
  BUFFD0 U208 ( .I(n99), .Z(n133) );
  AOI22D0 U209 ( .A1(n102), .A2(a[7]), .B1(n133), .B2(a[4]), .ZN(n100) );
  IOA21D0 U210 ( .A1(n120), .A2(a[6]), .B(n100), .ZN(n101) );
  AOI21D0 U211 ( .A1(n144), .A2(a[5]), .B(n101), .ZN(n241) );
  INVD0 U212 ( .I(n241), .ZN(n159) );
  AOI22D0 U213 ( .A1(n164), .A2(n250), .B1(n163), .B2(n159), .ZN(n107) );
  AOI22D0 U214 ( .A1(n102), .A2(a[15]), .B1(n156), .B2(a[12]), .ZN(n105) );
  AOI22D0 U215 ( .A1(n135), .A2(a[14]), .B1(n103), .B2(a[13]), .ZN(n104) );
  CKND2D0 U216 ( .A1(n105), .A2(n104), .ZN(n244) );
  CKND2D0 U217 ( .A1(n277), .A2(n244), .ZN(n106) );
  OAI211D0 U218 ( .A1(n239), .A2(n280), .B(n107), .C(n106), .ZN(n321) );
  AOI22D0 U219 ( .A1(n108), .A2(a[27]), .B1(n133), .B2(a[24]), .ZN(n111) );
  AOI22D0 U220 ( .A1(n109), .A2(a[26]), .B1(n150), .B2(a[25]), .ZN(n110) );
  CKND2D0 U221 ( .A1(n111), .A2(n110), .ZN(n246) );
  INVD0 U222 ( .I(a[28]), .ZN(n155) );
  AOI22D0 U223 ( .A1(a[30]), .A2(n113), .B1(a[29]), .B2(n112), .ZN(n115) );
  OAI211D0 U224 ( .A1(n7), .A2(n155), .B(n115), .C(n114), .ZN(n310) );
  AOI22D0 U225 ( .A1(n134), .A2(a[23]), .B1(n133), .B2(a[20]), .ZN(n119) );
  AOI22D0 U226 ( .A1(n117), .A2(a[22]), .B1(n116), .B2(a[21]), .ZN(n118) );
  CKND2D0 U227 ( .A1(n119), .A2(n118), .ZN(n248) );
  AOI222D0 U228 ( .A1(n246), .A2(n18), .B1(n310), .B2(n179), .C1(n248), .C2(
        n178), .ZN(n371) );
  MAOI22D0 U229 ( .A1(n314), .A2(n321), .B1(n371), .B2(n173), .ZN(n290) );
  OAI22D0 U230 ( .A1(n26), .A2(n291), .B1(n43), .B2(n290), .ZN(N7) );
  AO222D0 U231 ( .A1(a[0]), .A2(n144), .B1(a[1]), .B2(n120), .C1(n145), .C2(
        a[2]), .Z(n326) );
  CKND2D0 U232 ( .A1(n186), .A2(n3), .ZN(n294) );
  BUFFD0 U233 ( .I(n185), .Z(n355) );
  AOI22D0 U234 ( .A1(n129), .A2(a[18]), .B1(n124), .B2(a[15]), .ZN(n123) );
  INVD0 U235 ( .I(n121), .ZN(n140) );
  AOI22D0 U236 ( .A1(n140), .A2(a[17]), .B1(n130), .B2(a[16]), .ZN(n122) );
  CKND2D0 U237 ( .A1(n123), .A2(n122), .ZN(n272) );
  AOI22D0 U238 ( .A1(n129), .A2(a[6]), .B1(n124), .B2(a[3]), .ZN(n128) );
  INVD0 U239 ( .I(n125), .ZN(n126) );
  AOI22D0 U240 ( .A1(n140), .A2(a[5]), .B1(n126), .B2(a[4]), .ZN(n127) );
  CKND2D0 U241 ( .A1(n128), .A2(n127), .ZN(n268) );
  AOI22D0 U242 ( .A1(n265), .A2(n272), .B1(n163), .B2(n268), .ZN(n139) );
  BUFFD0 U243 ( .I(n88), .Z(n269) );
  AOI22D0 U244 ( .A1(n129), .A2(a[10]), .B1(n284), .B2(a[7]), .ZN(n132) );
  AOI22D0 U245 ( .A1(n140), .A2(a[9]), .B1(n130), .B2(a[8]), .ZN(n131) );
  CKND2D0 U246 ( .A1(n132), .A2(n131), .ZN(n266) );
  AOI22D0 U247 ( .A1(n134), .A2(a[14]), .B1(n133), .B2(a[11]), .ZN(n137) );
  AOI22D0 U248 ( .A1(n135), .A2(a[13]), .B1(n150), .B2(a[12]), .ZN(n136) );
  CKND2D0 U249 ( .A1(n137), .A2(n136), .ZN(n264) );
  AOI22D0 U250 ( .A1(n269), .A2(n266), .B1(n267), .B2(n264), .ZN(n138) );
  CKND2D0 U251 ( .A1(n139), .A2(n138), .ZN(n325) );
  AOI22D0 U252 ( .A1(n140), .A2(a[21]), .B1(n145), .B2(a[22]), .ZN(n141) );
  OAI21D0 U253 ( .A1(n7), .A2(n142), .B(n141), .ZN(n143) );
  AOI21D0 U254 ( .A1(n144), .A2(a[20]), .B(n143), .ZN(n281) );
  AOI22D0 U255 ( .A1(n146), .A2(a[25]), .B1(n145), .B2(a[26]), .ZN(n147) );
  OAI21D0 U256 ( .A1(n151), .A2(n148), .B(n147), .ZN(n149) );
  AOI21D0 U257 ( .A1(n150), .A2(a[24]), .B(n149), .ZN(n177) );
  INVD0 U258 ( .I(a[27]), .ZN(n152) );
  OAI222D0 U259 ( .A1(n155), .A2(n154), .B1(n12), .B2(n153), .C1(n152), .C2(
        n151), .ZN(n274) );
  AOI22D0 U260 ( .A1(n14), .A2(n274), .B1(n156), .B2(n34), .ZN(n219) );
  OAI222D0 U261 ( .A1(n193), .A2(n281), .B1(n19), .B2(n177), .C1(n219), .C2(
        shifter_upper_half[3]), .ZN(n324) );
  INVD0 U262 ( .I(n355), .ZN(n352) );
  AOI22D0 U263 ( .A1(n355), .A2(n325), .B1(n324), .B2(n352), .ZN(n293) );
  OAI22D0 U264 ( .A1(n294), .A2(n25), .B1(n293), .B2(n44), .ZN(N6) );
  AOI22D0 U265 ( .A1(n164), .A2(n310), .B1(n168), .B2(n250), .ZN(n158) );
  AOI22D0 U266 ( .A1(n227), .A2(n248), .B1(n249), .B2(n246), .ZN(n157) );
  CKND2D0 U267 ( .A1(n158), .A2(n157), .ZN(n404) );
  BUFFD0 U268 ( .I(n195), .Z(n261) );
  INVD0 U269 ( .I(n261), .ZN(n331) );
  BUFFD0 U270 ( .I(n328), .Z(n231) );
  AOI22D0 U271 ( .A1(n231), .A2(n244), .B1(n163), .B2(n322), .ZN(n161) );
  BUFFD0 U272 ( .I(n181), .Z(n218) );
  CKND2D0 U273 ( .A1(n218), .A2(n159), .ZN(n160) );
  OAI211D0 U274 ( .A1(n239), .A2(n8), .B(n161), .C(n160), .ZN(n406) );
  OAI221D0 U275 ( .A1(n238), .A2(n404), .B1(n331), .B2(n406), .C(n162), .ZN(
        n289) );
  NR2D0 U276 ( .A1(n289), .A2(shifter_upper_half[5]), .ZN(N3) );
  CKND2D0 U277 ( .A1(n275), .A2(n214), .ZN(n330) );
  BUFFD0 U278 ( .I(n185), .Z(n282) );
  AOI22D0 U279 ( .A1(n164), .A2(n207), .B1(n163), .B2(n213), .ZN(n166) );
  AOI22D0 U280 ( .A1(n269), .A2(n212), .B1(n174), .B2(n204), .ZN(n165) );
  CKND2D0 U281 ( .A1(n166), .A2(n165), .ZN(n332) );
  AOI22D0 U282 ( .A1(n236), .A2(n187), .B1(n262), .B2(n33), .ZN(n215) );
  OAI222D0 U283 ( .A1(n193), .A2(n211), .B1(n280), .B2(n167), .C1(n215), .C2(
        n16), .ZN(n329) );
  INVD0 U284 ( .I(n282), .ZN(n304) );
  AOI22D0 U285 ( .A1(n282), .A2(n332), .B1(n329), .B2(n304), .ZN(n287) );
  OAI22D0 U286 ( .A1(n330), .A2(n24), .B1(n287), .B2(n9), .ZN(N5) );
  CKAN2D0 U287 ( .A1(n198), .A2(n34), .Z(n234) );
  CKND2D0 U288 ( .A1(n234), .A2(n220), .ZN(n333) );
  AOI22D0 U289 ( .A1(n265), .A2(n226), .B1(n168), .B2(n232), .ZN(n170) );
  AOI22D0 U290 ( .A1(n227), .A2(n230), .B1(n174), .B2(n221), .ZN(n169) );
  CKND2D0 U291 ( .A1(n170), .A2(n169), .ZN(n336) );
  CKAN2D0 U292 ( .A1(n237), .A2(n179), .Z(n172) );
  AO22D0 U293 ( .A1(n257), .A2(n328), .B1(n224), .B2(n184), .Z(n171) );
  AOI211D0 U294 ( .A1(n218), .A2(n222), .B(n172), .C(n171), .ZN(n393) );
  MAOI22D0 U295 ( .A1(n314), .A2(n336), .B1(n393), .B2(n173), .ZN(n286) );
  OAI22D0 U296 ( .A1(n356), .A2(n333), .B1(n42), .B2(n286), .ZN(N4) );
  BUFFD0 U297 ( .I(n203), .Z(n285) );
  OA221D0 U298 ( .A1(n326), .A2(n32), .B1(n268), .B2(n13), .C(n17), .Z(n197)
         );
  INVD0 U299 ( .I(n173), .ZN(n311) );
  CKND2D0 U300 ( .A1(n197), .A2(n311), .ZN(n296) );
  AOI22D0 U301 ( .A1(n174), .A2(n272), .B1(n263), .B2(n266), .ZN(n176) );
  CKND2D0 U302 ( .A1(n208), .A2(n264), .ZN(n175) );
  OAI211D0 U303 ( .A1(n281), .A2(n240), .B(n176), .C(n175), .ZN(n196) );
  INVD0 U304 ( .I(n177), .ZN(n276) );
  AOI222D0 U305 ( .A1(n274), .A2(n18), .B1(n284), .B2(n179), .C1(n276), .C2(
        n178), .ZN(n365) );
  MAOI22D0 U306 ( .A1(n194), .A2(n196), .B1(n365), .B2(n339), .ZN(n295) );
  OAI22D0 U307 ( .A1(n285), .A2(n296), .B1(n43), .B2(n295), .ZN(N10) );
  BUFFD0 U308 ( .I(n180), .Z(n225) );
  AOI22D0 U309 ( .A1(n275), .A2(n204), .B1(n225), .B2(n212), .ZN(n183) );
  BUFFD0 U310 ( .I(n181), .Z(n251) );
  BUFFD0 U311 ( .I(n184), .Z(n205) );
  AOI22D0 U312 ( .A1(n251), .A2(n213), .B1(n205), .B2(n214), .ZN(n182) );
  CKND2D0 U313 ( .A1(n183), .A2(n182), .ZN(n260) );
  INVD0 U314 ( .I(n260), .ZN(n343) );
  CKND2D0 U315 ( .A1(shifter_upper_half[6]), .A2(n288), .ZN(n394) );
  BUFFD0 U316 ( .I(n195), .Z(n327) );
  NR2D0 U317 ( .A1(n394), .A2(n327), .ZN(n403) );
  BUFFD0 U318 ( .I(n203), .Z(n317) );
  BUFFD0 U319 ( .I(n184), .Z(n283) );
  BUFFD0 U320 ( .I(n283), .Z(n312) );
  BUFFD0 U321 ( .I(n185), .Z(n341) );
  BUFFD0 U322 ( .I(n186), .Z(n247) );
  AOI22D0 U323 ( .A1(n247), .A2(n187), .B1(n205), .B2(n207), .ZN(n189) );
  CKND2D0 U324 ( .A1(n277), .A2(n206), .ZN(n188) );
  OAI211D0 U325 ( .A1(n211), .A2(n19), .B(n189), .C(n188), .ZN(n259) );
  AOI32D0 U326 ( .A1(n312), .A2(n311), .A3(n262), .B1(n341), .B2(n259), .ZN(
        n342) );
  OAI22D0 U327 ( .A1(n343), .A2(n38), .B1(n317), .B2(n342), .ZN(N49) );
  AOI221D0 U328 ( .A1(n243), .A2(n14), .B1(n241), .B2(n33), .C(n15), .ZN(n299)
         );
  BUFFD0 U329 ( .I(n190), .Z(n223) );
  AOI22D0 U330 ( .A1(n223), .A2(n248), .B1(n249), .B2(n250), .ZN(n192) );
  CKND2D0 U331 ( .A1(n208), .A2(n244), .ZN(n191) );
  OAI211D0 U332 ( .A1(n239), .A2(n193), .B(n192), .C(n191), .ZN(n298) );
  INVD0 U333 ( .I(n341), .ZN(n258) );
  AOI22D0 U334 ( .A1(n261), .A2(n299), .B1(n298), .B2(n258), .ZN(n391) );
  OA221D0 U335 ( .A1(n246), .A2(n34), .B1(n4), .B2(n13), .C(n16), .Z(n297) );
  CKND2D0 U336 ( .A1(n238), .A2(n297), .ZN(n389) );
  OAI22D0 U337 ( .A1(n391), .A2(n398), .B1(n9), .B2(n389), .ZN(N27) );
  INVD0 U338 ( .I(n194), .ZN(n363) );
  NR2D0 U339 ( .A1(n363), .A2(n42), .ZN(n405) );
  BUFFD0 U340 ( .I(n195), .Z(n307) );
  AOI22D0 U341 ( .A1(n307), .A2(n197), .B1(n196), .B2(n258), .ZN(n364) );
  BUFFD0 U342 ( .I(n303), .Z(n337) );
  OAI22D0 U343 ( .A1(n365), .A2(n21), .B1(n364), .B2(n337), .ZN(N26) );
  AOI22D0 U344 ( .A1(n247), .A2(n221), .B1(n225), .B2(n230), .ZN(n200) );
  AOI22D0 U345 ( .A1(n251), .A2(n232), .B1(n205), .B2(n198), .ZN(n199) );
  CKND2D0 U346 ( .A1(n200), .A2(n199), .ZN(n256) );
  INVD0 U347 ( .I(n256), .ZN(n345) );
  INVD0 U348 ( .I(n339), .ZN(n235) );
  BUFFD0 U349 ( .I(n273), .Z(n245) );
  AOI22D0 U350 ( .A1(n247), .A2(n237), .B1(n245), .B2(n226), .ZN(n202) );
  AOI22D0 U351 ( .A1(n251), .A2(n224), .B1(n225), .B2(n222), .ZN(n201) );
  CKND2D0 U352 ( .A1(n202), .A2(n201), .ZN(n255) );
  AOI32D0 U353 ( .A1(n312), .A2(n235), .A3(n257), .B1(n282), .B2(n255), .ZN(
        n344) );
  OAI22D0 U354 ( .A1(n345), .A2(n37), .B1(n317), .B2(n344), .ZN(N48) );
  BUFFD0 U355 ( .I(n203), .Z(n254) );
  AOI22D0 U356 ( .A1(n223), .A2(n206), .B1(n205), .B2(n204), .ZN(n210) );
  CKND2D0 U357 ( .A1(n208), .A2(n207), .ZN(n209) );
  OAI211D0 U358 ( .A1(n211), .A2(n242), .B(n210), .C(n209), .ZN(n302) );
  INVD0 U359 ( .I(n307), .ZN(n334) );
  AOI222D0 U360 ( .A1(n214), .A2(n269), .B1(n233), .B2(n213), .C1(n231), .C2(
        n212), .ZN(n351) );
  MAOI22D0 U361 ( .A1(n302), .A2(n235), .B1(n334), .B2(n351), .ZN(n367) );
  NR2D0 U362 ( .A1(n220), .A2(n215), .ZN(n301) );
  INVD0 U363 ( .I(n301), .ZN(n366) );
  OAI22D0 U364 ( .A1(n254), .A2(n367), .B1(n366), .B2(n20), .ZN(N29) );
  AOI22D0 U365 ( .A1(n223), .A2(n276), .B1(n245), .B2(n264), .ZN(n217) );
  CKND2D0 U366 ( .A1(n218), .A2(n272), .ZN(n216) );
  OAI211D0 U367 ( .A1(n281), .A2(n242), .B(n217), .C(n216), .ZN(n306) );
  AOI222D0 U368 ( .A1(n233), .A2(n268), .B1(n218), .B2(n326), .C1(n231), .C2(
        n266), .ZN(n349) );
  MAOI22D0 U369 ( .A1(n306), .A2(n235), .B1(n331), .B2(n349), .ZN(n373) );
  NR2D0 U370 ( .A1(n17), .A2(n219), .ZN(n305) );
  INVD0 U371 ( .I(n305), .ZN(n372) );
  OAI22D0 U372 ( .A1(n254), .A2(n373), .B1(n372), .B2(n22), .ZN(N30) );
  AOI22D0 U373 ( .A1(n223), .A2(n222), .B1(n245), .B2(n221), .ZN(n229) );
  AOI22D0 U374 ( .A1(n227), .A2(n226), .B1(n225), .B2(n224), .ZN(n228) );
  CKND2D0 U375 ( .A1(n229), .A2(n228), .ZN(n354) );
  AOI222D0 U376 ( .A1(n234), .A2(n16), .B1(n233), .B2(n232), .C1(n231), .C2(
        n230), .ZN(n401) );
  MAOI22D0 U377 ( .A1(n354), .A2(n235), .B1(n334), .B2(n401), .ZN(n380) );
  OA221D0 U378 ( .A1(n237), .A2(n32), .B1(n257), .B2(n13), .C(n15), .Z(n353)
         );
  CKND2D0 U379 ( .A1(n238), .A2(n353), .ZN(n378) );
  OAI22D0 U380 ( .A1(n254), .A2(n380), .B1(n41), .B2(n378), .ZN(N28) );
  OAI222D0 U381 ( .A1(n19), .A2(n243), .B1(n8), .B2(n241), .C1(n240), .C2(n239), .ZN(n308) );
  AOI22D0 U382 ( .A1(n247), .A2(n246), .B1(n245), .B2(n244), .ZN(n253) );
  AOI22D0 U383 ( .A1(n251), .A2(n250), .B1(n249), .B2(n248), .ZN(n252) );
  CKND2D0 U384 ( .A1(n253), .A2(n252), .ZN(n309) );
  AOI22D0 U385 ( .A1(n327), .A2(n308), .B1(n309), .B2(n304), .ZN(n375) );
  CKND2D0 U386 ( .A1(n283), .A2(n4), .ZN(n374) );
  OAI22D0 U387 ( .A1(n254), .A2(n375), .B1(n374), .B2(n20), .ZN(N31) );
  AOI22D0 U388 ( .A1(n261), .A2(n256), .B1(n255), .B2(n258), .ZN(n377) );
  CKND2D0 U389 ( .A1(n283), .A2(n5), .ZN(n376) );
  OAI22D0 U390 ( .A1(n285), .A2(n377), .B1(n376), .B2(n20), .ZN(N32) );
  AOI22D0 U391 ( .A1(n261), .A2(n260), .B1(n259), .B2(n258), .ZN(n388) );
  ND3D0 U392 ( .A1(n314), .A2(n312), .A3(n262), .ZN(n387) );
  OAI22D0 U393 ( .A1(n285), .A2(n388), .B1(n44), .B2(n387), .ZN(N33) );
  AOI22D0 U394 ( .A1(n265), .A2(n264), .B1(n263), .B2(n326), .ZN(n271) );
  AOI22D0 U395 ( .A1(n269), .A2(n268), .B1(n267), .B2(n266), .ZN(n270) );
  CKND2D0 U396 ( .A1(n271), .A2(n270), .ZN(n338) );
  AOI22D0 U397 ( .A1(n275), .A2(n274), .B1(n273), .B2(n272), .ZN(n279) );
  CKND2D0 U398 ( .A1(n277), .A2(n276), .ZN(n278) );
  OAI211D0 U399 ( .A1(n281), .A2(n19), .B(n279), .C(n278), .ZN(n340) );
  AOI22D0 U400 ( .A1(n282), .A2(n338), .B1(n340), .B2(n352), .ZN(n386) );
  CKND2D0 U401 ( .A1(n284), .A2(n283), .ZN(n385) );
  OAI22D0 U402 ( .A1(n285), .A2(n386), .B1(n385), .B2(n21), .ZN(N34) );
  BUFFD0 U403 ( .I(n303), .Z(n362) );
  OAI22D0 U404 ( .A1(n39), .A2(n333), .B1(n362), .B2(n286), .ZN(N36) );
  OAI22D0 U405 ( .A1(n38), .A2(n330), .B1(n362), .B2(n287), .ZN(N37) );
  NR2D0 U406 ( .A1(n289), .A2(n288), .ZN(N35) );
  OAI22D0 U407 ( .A1(n39), .A2(n291), .B1(n362), .B2(n290), .ZN(N39) );
  BUFFD0 U408 ( .I(n318), .Z(n313) );
  OAI22D0 U409 ( .A1(n319), .A2(n37), .B1(n313), .B2(n292), .ZN(N40) );
  OAI22D0 U410 ( .A1(n294), .A2(n37), .B1(n317), .B2(n293), .ZN(N38) );
  OAI22D0 U411 ( .A1(n31), .A2(n296), .B1(n313), .B2(n295), .ZN(N42) );
  AOI22D0 U412 ( .A1(n355), .A2(n298), .B1(n297), .B2(n352), .ZN(n359) );
  CKND2D0 U413 ( .A1(n299), .A2(n311), .ZN(n357) );
  OAI22D0 U414 ( .A1(n359), .A2(n398), .B1(n28), .B2(n357), .ZN(N43) );
  OAI22D0 U415 ( .A1(n315), .A2(n40), .B1(n313), .B2(n300), .ZN(N41) );
  AOI22D0 U416 ( .A1(n307), .A2(n302), .B1(n301), .B2(n304), .ZN(n350) );
  OAI22D0 U417 ( .A1(n351), .A2(n39), .B1(n350), .B2(n303), .ZN(N45) );
  AOI22D0 U418 ( .A1(n307), .A2(n306), .B1(n305), .B2(n304), .ZN(n348) );
  OAI22D0 U419 ( .A1(n349), .A2(n40), .B1(n348), .B2(n318), .ZN(N46) );
  INVD0 U420 ( .I(n308), .ZN(n347) );
  AOI32D0 U421 ( .A1(n312), .A2(n311), .A3(n310), .B1(n341), .B2(n309), .ZN(
        n346) );
  OAI22D0 U422 ( .A1(n347), .A2(n40), .B1(n313), .B2(n346), .ZN(N47) );
  INVD0 U423 ( .I(n314), .ZN(n335) );
  MAOI22D0 U424 ( .A1(n316), .A2(n335), .B1(n334), .B2(n315), .ZN(n383) );
  OAI22D0 U425 ( .A1(n384), .A2(n22), .B1(n317), .B2(n383), .ZN(N25) );
  BUFFD0 U426 ( .I(n318), .Z(n390) );
  BUFFD0 U427 ( .I(n390), .Z(n379) );
  MAOI22D0 U428 ( .A1(n320), .A2(n335), .B1(n331), .B2(n319), .ZN(n381) );
  OAI22D0 U429 ( .A1(n382), .A2(n21), .B1(n379), .B2(n381), .ZN(N24) );
  AOI32D0 U430 ( .A1(n323), .A2(n327), .A3(n322), .B1(n363), .B2(n321), .ZN(
        n370) );
  OAI22D0 U431 ( .A1(n371), .A2(n22), .B1(n370), .B2(n390), .ZN(N23) );
  INVD0 U432 ( .I(n324), .ZN(n369) );
  AOI32D0 U433 ( .A1(n328), .A2(n327), .A3(n3), .B1(n363), .B2(n325), .ZN(n368) );
  OAI22D0 U434 ( .A1(n369), .A2(n22), .B1(n368), .B2(n337), .ZN(N22) );
  INVD0 U435 ( .I(n329), .ZN(n397) );
  MAOI22D0 U436 ( .A1(n332), .A2(n335), .B1(n331), .B2(n330), .ZN(n395) );
  OAI22D0 U437 ( .A1(n397), .A2(n21), .B1(n395), .B2(n337), .ZN(N21) );
  MAOI22D0 U438 ( .A1(n336), .A2(n335), .B1(n334), .B2(n333), .ZN(n392) );
  OAI22D0 U439 ( .A1(n393), .A2(n20), .B1(n392), .B2(n337), .ZN(N20) );
  INVD0 U440 ( .I(n338), .ZN(n361) );
  MAOI22D0 U441 ( .A1(n341), .A2(n340), .B1(n385), .B2(n339), .ZN(n360) );
  OAI22D0 U442 ( .A1(n361), .A2(n25), .B1(n360), .B2(n43), .ZN(N18) );
  OAI22D0 U443 ( .A1(n343), .A2(n24), .B1(n41), .B2(n342), .ZN(N17) );
  OAI22D0 U444 ( .A1(n345), .A2(n26), .B1(n9), .B2(n344), .ZN(N16) );
  OAI22D0 U445 ( .A1(n347), .A2(n26), .B1(n44), .B2(n346), .ZN(N15) );
  OAI22D0 U446 ( .A1(n349), .A2(n25), .B1(n348), .B2(n43), .ZN(N14) );
  OAI22D0 U447 ( .A1(n351), .A2(n24), .B1(n350), .B2(n42), .ZN(N13) );
  AOI22D0 U448 ( .A1(n355), .A2(n354), .B1(n353), .B2(n352), .ZN(n399) );
  OAI22D0 U449 ( .A1(n401), .A2(n356), .B1(n399), .B2(n41), .ZN(N12) );
  OAI22D0 U450 ( .A1(n359), .A2(n42), .B1(n379), .B2(n357), .ZN(N11) );
  OAI22D0 U451 ( .A1(n361), .A2(n37), .B1(n360), .B2(n379), .ZN(N50) );
  NR2D0 U452 ( .A1(n363), .A2(n362), .ZN(n402) );
  INVD0 U453 ( .I(n402), .ZN(n396) );
  OAI22D0 U454 ( .A1(n365), .A2(n35), .B1(n364), .B2(n29), .ZN(N58) );
  OAI22D0 U455 ( .A1(n29), .A2(n367), .B1(n396), .B2(n366), .ZN(N61) );
  OAI22D0 U456 ( .A1(n369), .A2(n36), .B1(n368), .B2(n28), .ZN(N54) );
  OAI22D0 U457 ( .A1(n371), .A2(n396), .B1(n370), .B2(n31), .ZN(N55) );
  OAI22D0 U458 ( .A1(n31), .A2(n373), .B1(n36), .B2(n372), .ZN(N62) );
  OAI22D0 U459 ( .A1(n30), .A2(n375), .B1(n35), .B2(n374), .ZN(N63) );
  OAI22D0 U460 ( .A1(n29), .A2(n377), .B1(n36), .B2(n376), .ZN(N64) );
  OAI22D0 U461 ( .A1(n31), .A2(n380), .B1(n379), .B2(n378), .ZN(N60) );
  OAI22D0 U462 ( .A1(n382), .A2(n396), .B1(n30), .B2(n381), .ZN(N56) );
  OAI22D0 U463 ( .A1(n384), .A2(n35), .B1(n28), .B2(n383), .ZN(N57) );
  OAI22D0 U464 ( .A1(n29), .A2(n386), .B1(n385), .B2(n36), .ZN(N66) );
  OAI22D0 U465 ( .A1(n28), .A2(n388), .B1(n390), .B2(n387), .ZN(N65) );
  OAI22D0 U466 ( .A1(n391), .A2(n30), .B1(n390), .B2(n389), .ZN(N59) );
  OAI22D0 U467 ( .A1(n393), .A2(n35), .B1(n392), .B2(n30), .ZN(N52) );
  OAI22D0 U468 ( .A1(n397), .A2(n396), .B1(n395), .B2(n394), .ZN(N53) );
  OAI22D0 U469 ( .A1(n401), .A2(n38), .B1(n399), .B2(n398), .ZN(N44) );
  AO22D0 U470 ( .A1(n403), .A2(n406), .B1(n402), .B2(n404), .Z(N51) );
  AO22D0 U471 ( .A1(n407), .A2(n406), .B1(n405), .B2(n404), .Z(N19) );
endmodule


module adder_5_7select_bit_0 ( mode, cin_i1, cin_i2, cin_i3, cin_o );
  input [1:0] mode;
  input cin_i1, cin_i2, cin_i3;
  output cin_o;


  BUFFD0 U1 ( .I(cin_i1), .Z(cin_o) );
endmodule


module adder_2_4_6_8_select_bit_0 ( mode, cin_i1, cin_i2, cin_o );
  input [1:0] mode;
  input cin_i1, cin_i2;
  output cin_o;


  BUFFD0 U1 ( .I(cin_i1), .Z(cin_o) );
endmodule


module adder_2_4_6_8_select_bit_2 ( mode, cin_i1, cin_i2, cin_o );
  input [1:0] mode;
  input cin_i1, cin_i2;
  output cin_o;


  BUFFD0 U1 ( .I(cin_i1), .Z(cin_o) );
endmodule


module add_8_bit_1 ( a, b, cin, result );
  input [7:0] a;
  input [7:0] b;
  output [8:0] result;
  input cin;
  wire   \intadd_2/n8 , \intadd_2/n7 , \intadd_2/n6 , \intadd_2/n5 ,
         \intadd_2/n4 , \intadd_2/n3 , \intadd_2/n2 , \intadd_2/n1 ;
  assign result[8] = \intadd_2/n1 ;

  FA1D0 \intadd_2/U9  ( .A(cin), .B(a[0]), .CI(b[0]), .CO(\intadd_2/n8 ), .S(
        result[0]) );
  FA1D0 \intadd_2/U8  ( .A(a[1]), .B(b[1]), .CI(\intadd_2/n8 ), .CO(
        \intadd_2/n7 ), .S(result[1]) );
  FA1D0 \intadd_2/U7  ( .A(a[2]), .B(b[2]), .CI(\intadd_2/n7 ), .CO(
        \intadd_2/n6 ), .S(result[2]) );
  FA1D0 \intadd_2/U6  ( .A(a[3]), .B(b[3]), .CI(\intadd_2/n6 ), .CO(
        \intadd_2/n5 ), .S(result[3]) );
  FA1D0 \intadd_2/U5  ( .A(a[4]), .B(b[4]), .CI(\intadd_2/n5 ), .CO(
        \intadd_2/n4 ), .S(result[4]) );
  FA1D0 \intadd_2/U4  ( .A(a[5]), .B(b[5]), .CI(\intadd_2/n4 ), .CO(
        \intadd_2/n3 ), .S(result[5]) );
  FA1D0 \intadd_2/U3  ( .A(a[6]), .B(b[6]), .CI(\intadd_2/n3 ), .CO(
        \intadd_2/n2 ), .S(result[6]) );
  FA1D0 \intadd_2/U2  ( .A(a[7]), .B(b[7]), .CI(\intadd_2/n2 ), .CO(
        \intadd_2/n1 ), .S(result[7]) );
endmodule


module add_8_bit_2 ( a, b, cin, result );
  input [7:0] a;
  input [7:0] b;
  output [8:0] result;
  input cin;
  wire   \intadd_3/n8 , \intadd_3/n7 , \intadd_3/n6 , \intadd_3/n5 ,
         \intadd_3/n4 , \intadd_3/n3 , \intadd_3/n2 , \intadd_3/n1 ;
  assign result[8] = \intadd_3/n1 ;

  FA1D0 \intadd_3/U9  ( .A(cin), .B(a[0]), .CI(b[0]), .CO(\intadd_3/n8 ), .S(
        result[0]) );
  FA1D0 \intadd_3/U8  ( .A(a[1]), .B(b[1]), .CI(\intadd_3/n8 ), .CO(
        \intadd_3/n7 ), .S(result[1]) );
  FA1D0 \intadd_3/U7  ( .A(a[2]), .B(b[2]), .CI(\intadd_3/n7 ), .CO(
        \intadd_3/n6 ), .S(result[2]) );
  FA1D0 \intadd_3/U6  ( .A(a[3]), .B(b[3]), .CI(\intadd_3/n6 ), .CO(
        \intadd_3/n5 ), .S(result[3]) );
  FA1D0 \intadd_3/U5  ( .A(a[4]), .B(b[4]), .CI(\intadd_3/n5 ), .CO(
        \intadd_3/n4 ), .S(result[4]) );
  FA1D0 \intadd_3/U4  ( .A(a[5]), .B(b[5]), .CI(\intadd_3/n4 ), .CO(
        \intadd_3/n3 ), .S(result[5]) );
  FA1D0 \intadd_3/U3  ( .A(a[6]), .B(b[6]), .CI(\intadd_3/n3 ), .CO(
        \intadd_3/n2 ), .S(result[6]) );
  FA1D0 \intadd_3/U2  ( .A(a[7]), .B(b[7]), .CI(\intadd_3/n2 ), .CO(
        \intadd_3/n1 ), .S(result[7]) );
endmodule


module add_8_bit_3 ( a, b, cin, result );
  input [7:0] a;
  input [7:0] b;
  output [8:0] result;
  input cin;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;

  INVD0 U1 ( .I(a[5]), .ZN(n4) );
  INVD0 U2 ( .I(a[3]), .ZN(n7) );
  INVD0 U3 ( .I(a[1]), .ZN(n10) );
  CKND2D0 U4 ( .A1(cin), .A2(a[0]), .ZN(n11) );
  NR2D0 U5 ( .A1(n10), .A2(n11), .ZN(n9) );
  CKND2D0 U6 ( .A1(n9), .A2(a[2]), .ZN(n8) );
  NR2D0 U7 ( .A1(n7), .A2(n8), .ZN(n6) );
  CKND2D0 U8 ( .A1(n6), .A2(a[4]), .ZN(n5) );
  NR2D0 U9 ( .A1(n4), .A2(n5), .ZN(n3) );
  CKND2D0 U10 ( .A1(n3), .A2(a[6]), .ZN(n2) );
  OA21D0 U11 ( .A1(n3), .A2(a[6]), .B(n2), .Z(result[6]) );
  OA21D0 U12 ( .A1(n9), .A2(a[2]), .B(n8), .Z(result[2]) );
  OA21D0 U13 ( .A1(n6), .A2(a[4]), .B(n5), .Z(result[4]) );
  INVD0 U14 ( .I(a[7]), .ZN(n1) );
  NR2D0 U15 ( .A1(n1), .A2(n2), .ZN(result[8]) );
  OA21D0 U16 ( .A1(cin), .A2(a[0]), .B(n11), .Z(result[0]) );
  AOI21D0 U17 ( .A1(n2), .A2(n1), .B(result[8]), .ZN(result[7]) );
  AOI21D0 U18 ( .A1(n5), .A2(n4), .B(n3), .ZN(result[5]) );
  AOI21D0 U19 ( .A1(n8), .A2(n7), .B(n6), .ZN(result[3]) );
  AOI21D0 U20 ( .A1(n11), .A2(n10), .B(n9), .ZN(result[1]) );
endmodule


module add_8_bit_4 ( a, b, cin, result );
  input [7:0] a;
  input [7:0] b;
  output [8:0] result;
  input cin;
  wire   \intadd_4/n5 , \intadd_4/n4 , \intadd_4/n3 , \intadd_4/n2 ,
         \intadd_4/n1 , n4;

  FA1D0 \intadd_4/U6  ( .A(cin), .B(a[0]), .CI(b[0]), .CO(\intadd_4/n5 ), .S(
        result[0]) );
  FA1D0 \intadd_4/U5  ( .A(a[1]), .B(b[1]), .CI(\intadd_4/n5 ), .CO(
        \intadd_4/n4 ), .S(result[1]) );
  FA1D0 \intadd_4/U4  ( .A(a[2]), .B(b[2]), .CI(\intadd_4/n4 ), .CO(
        \intadd_4/n3 ), .S(result[2]) );
  FA1D0 \intadd_4/U3  ( .A(a[3]), .B(b[3]), .CI(\intadd_4/n3 ), .CO(
        \intadd_4/n2 ), .S(result[3]) );
  FA1D0 \intadd_4/U2  ( .A(a[4]), .B(b[4]), .CI(\intadd_4/n2 ), .CO(
        \intadd_4/n1 ), .S(result[4]) );
  CKAN2D0 U1 ( .A1(\intadd_4/n1 ), .A2(a[5]), .Z(n4) );
  CKND2D0 U2 ( .A1(n4), .A2(a[6]), .ZN(result[7]) );
  INVD0 U3 ( .I(result[7]), .ZN(result[8]) );
  IAO21D0 U4 ( .A1(\intadd_4/n1 ), .A2(a[5]), .B(n4), .ZN(result[5]) );
  IAO21D0 U5 ( .A1(n4), .A2(a[6]), .B(result[8]), .ZN(result[6]) );
endmodule


module top_module_N32_lgN5 ( input1_i, input2_i, mode, func, result_o_hybrid
 );
  input [31:0] input1_i;
  input [31:0] input2_i;
  input [1:0] mode;
  input [3:0] func;
  output [63:0] result_o_hybrid;
  wire   adder3_cout, adder5_cout, adder7_cout, adder4_cout, adder6_cout,
         \func_4_bit_add[3] , n17, n18, n19;
  wire   [4:0] ka;
  wire   [31:0] fraction_a;
  wire   [31:0] fraction_b;
  wire   [31:0] correction_mul_div;
  wire   [8:0] adder_result3;
  wire   [8:0] adder_result5;
  wire   [8:0] adder_result2;
  wire   [8:0] adder_result7;
  wire   [8:0] adder_result4;
  wire   [8:0] adder_result6;
  wire   [31:0] temp_result;
  wire   [8:0] adder_result8;
  wire   [6:0] log_int_8_bit_msb;
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
        SYNOPSYS_UNCONNECTED__40;

  lod_N32_lgN5_1 inst_loda_upper_half ( .mode({1'b0, 1'b0}), .a({
        input1_i[31:1], 1'b0}), .pos_3(ka) );
  set_frac_16_8_N32_lgN5_1 inst_shift_frac_a ( .mode({1'b0, 1'b0}), .a(
        input1_i), .lod_pos_upper_half(ka), .lod_pos_lower_half({1'b0, 1'b0, 
        1'b0, 1'b0}), .pos_2({1'b0, 1'b0, 1'b0}), .pos_0({1'b0, 1'b0, 1'b0}), 
        .out(fraction_a) );
  set_frac_16_8_N32_lgN5_0 inst_shift_frac_b ( .mode({1'b0, 1'b0}), .a({1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, input2_i[22:0]}), 
        .lod_pos_upper_half({1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .lod_pos_lower_half({1'b0, 1'b0, 1'b0, 1'b0}), .pos_2({1'b0, 1'b0, 
        1'b0}), .pos_0({1'b0, 1'b0, 1'b0}), .out({SYNOPSYS_UNCONNECTED__0, 
        fraction_b[30:8], SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8}) );
  select_ec_16_8_mul_div_alternate_N32 inst_cofficient ( .func({1'b0, 1'b0, 
        1'b0, n18}), .frac_a(fraction_a[30:28]), .frac_a_pos_2({1'b0, 1'b0, 
        1'b0}), .frac_a_lsb({1'b0, 1'b0, 1'b0}), .frac_a_pos_0({1'b0, 1'b0, 
        1'b0}), .frac_b(fraction_b[30:28]), .frac_b_pos_2({1'b0, 1'b0, 1'b0}), 
        .frac_b_lsb({1'b0, 1'b0, 1'b0}), .frac_b_pos_0({1'b0, 1'b0, 1'b0}), 
        .error_coeff({SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, correction_mul_div[28:16], 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27}) );
  adder_2_4_6_8_select_bit_2 inst_cin_bit_adder4 ( .mode({1'b0, 1'b0}), 
        .cin_i1(adder_result3[8]), .cin_i2(1'b0), .cin_o(adder3_cout) );
  adder_2_4_6_8_select_bit_1 inst_cin_bit_adder6 ( .mode({1'b0, 1'b0}), 
        .cin_i1(adder_result5[8]), .cin_i2(1'b0), .cin_o(adder5_cout) );
  adder_2_4_6_8_select_bit_0 inst_cin_bit_adder8 ( .mode({1'b0, 1'b0}), 
        .cin_i1(adder_result7[8]), .cin_i2(1'b0), .cin_o(adder7_cout) );
  adder_5_7select_bit_1 inst_cin_bit_adder5 ( .mode({1'b0, 1'b0}), .cin_i1(
        adder_result4[8]), .cin_i2(1'b0), .cin_i3(1'b0), .cin_o(adder4_cout)
         );
  adder_5_7select_bit_0 inst_cin_bit_adder7 ( .mode({1'b0, 1'b0}), .cin_i1(
        adder_result6[8]), .cin_i2(1'b0), .cin_i3(1'b0), .cin_o(adder6_cout)
         );
  add_8_bit_6 add_8_inst_2 ( .a(fraction_b[15:8]), .b({1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .cin(1'b0), .result({
        SYNOPSYS_UNCONNECTED__28, adder_result2[7:0]}) );
  add_8_bit_5 add_8_inst_3 ( .a(fraction_b[23:16]), .b(
        correction_mul_div[23:16]), .cin(1'b0), .result(adder_result3) );
  add_8_bit_4 add_8_inst_4 ( .a({1'b0, fraction_b[30:24]}), .b({1'b0, 1'b0, 
        1'b0, correction_mul_div[28:24]}), .cin(adder3_cout), .result(
        adder_result4) );
  twos_complement_16_N32 twos_complement_inst ( .mode({1'b0, 1'b0}), 
        .func_4_bit_add({\func_4_bit_add[3] , SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31}), .func({1'b0, 
        1'b0, 1'b0, n19}), .in({adder_result4[7:0], adder_result3[7:0], 
        adder_result2[7:1], n17, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .out({temp_result[31:8], SYNOPSYS_UNCONNECTED__32, 
        SYNOPSYS_UNCONNECTED__33, SYNOPSYS_UNCONNECTED__34, 
        SYNOPSYS_UNCONNECTED__35, SYNOPSYS_UNCONNECTED__36, 
        SYNOPSYS_UNCONNECTED__37, SYNOPSYS_UNCONNECTED__38, 
        SYNOPSYS_UNCONNECTED__39}) );
  add_8_bit_3 add_8_inst_5 ( .a(fraction_a[7:0]), .b({1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .cin(adder4_cout), .result(adder_result5) );
  add_8_bit_2 add_8_inst_6 ( .a(fraction_a[15:8]), .b(temp_result[15:8]), 
        .cin(adder5_cout), .result(adder_result6) );
  add_8_bit_1 add_8_inst_7 ( .a(fraction_a[23:16]), .b(temp_result[23:16]), 
        .cin(adder6_cout), .result(adder_result7) );
  add_8_bit_0 add_8_inst_8 ( .a(fraction_a[31:24]), .b(temp_result[31:24]), 
        .cin(adder7_cout), .result({SYNOPSYS_UNCONNECTED__40, 
        adder_result8[7:0]}) );
  add_4_bit_N5 add_4_inst_0 ( .func_bit(\func_4_bit_add[3] ), .a(ka), .b({1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .c(adder_result8[7]), .result(
        log_int_8_bit_msb) );
  shifter_out_16_mul_div_N32_lgN5 div_mul ( .mode({1'b0, 1'b0}), .a({1'b0, 
        adder_result8[6:0], adder_result7[7:0], adder_result6[7:0], 
        adder_result5[7:0]}), .shifter_2({1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .shifter_0({1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .shifter_upper_half(
        log_int_8_bit_msb), .shifter_lower_half({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .out(result_o_hybrid) );
  BUFFD0 U3 ( .I(adder_result2[0]), .Z(n17) );
  BUFFD0 U4 ( .I(func[0]), .Z(n18) );
  BUFFD0 U5 ( .I(func[0]), .Z(n19) );
endmodule


module simdive_original_fp32_wrapper ( x, y, divide_mode, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  input divide_mode;
  wire   \C14/DATA2_0 , \C14/DATA2_1 , \C14/DATA2_2 , \C14/DATA2_3 ,
         \C14/DATA2_4 , \C14/DATA2_5 , \C14/DATA2_6 , \C14/DATA2_7 ,
         \U3/RSOP_73/C2/Z_0 , \U3/RSOP_73/C1/Z_7 , \U3/RSOP_73/C1/Z_6 ,
         \U3/RSOP_73/C1/Z_5 , \U3/RSOP_73/C1/Z_4 , \U3/RSOP_73/C1/Z_3 ,
         \U3/RSOP_73/C1/Z_2 , \U3/RSOP_73/C1/Z_1 , \U3/RSOP_73/C1/Z_0 ,
         \DP_OP_101J2_122_6116/n31 , \DP_OP_101J2_122_6116/n23 ,
         \DP_OP_101J2_122_6116/n22 , \DP_OP_101J2_122_6116/n21 ,
         \DP_OP_101J2_122_6116/n20 , \DP_OP_101J2_122_6116/n19 ,
         \DP_OP_101J2_122_6116/n18 , \DP_OP_101J2_122_6116/n17 ,
         \DP_OP_101J2_122_6116/n16 , \DP_OP_101J2_122_6116/n15 ,
         \DP_OP_101J2_122_6116/n14 , \DP_OP_101J2_122_6116/n13 ,
         \DP_OP_101J2_122_6116/n12 , \DP_OP_101J2_122_6116/n11 ,
         \DP_OP_101J2_122_6116/n10 , \DP_OP_101J2_122_6116/n9 ,
         \DP_OP_101J2_122_6116/n8 , \DP_OP_101J2_122_6116/n7 ,
         \DP_OP_101J2_122_6116/n6 , \DP_OP_101J2_122_6116/n5 ,
         \DP_OP_101J2_122_6116/n4 , \DP_OP_101J2_122_6116/n3 ,
         \DP_OP_101J2_122_6116/n2 , n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206,
         n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217,
         n218, n219, n220, n221, n222, n223, n224, n225, n226, n227, n228,
         n229, n230, n231, n232, n233, n234, n235, n236, n237, n238, n239,
         n240, n241, n242, n243, n244, n245, n246, n247, n248, n249, n250,
         n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, n261,
         n262, n263, n264, n265, n266, n267, n268, n269, n270, n271, n272,
         n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283,
         n284, n285, n286, n287, n288, n289, n290, n291, n292, n293, n294,
         n295, n296, n297, n298, n299, n300, n301, n302, n303, n304, n305,
         n306, n307, n308, n309, n310, n311, n312, n313, n314, n315, n316,
         n317, n318, n319, n320, n321, n322, n323, n324, n325, n326, n327,
         n328, n329, n330, n331, n332, n333, n334, n335, n336, n337, n338,
         n339, n340, n341, n342, n343, n344, n345, n346, n347, n348, n349,
         n350, n351, n352;
  wire   [31:0] core_x;
  wire   [63:0] core_result;

  top_module_N32_lgN5 simdive_original_core ( .input1_i({n352, core_x[30:0]}), 
        .input2_i({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        y[22:0]}), .mode({1'b0, 1'b0}), .func({1'b0, 1'b0, 1'b0, n351}), 
        .result_o_hybrid(core_result) );
  FA1D0 \DP_OP_101J2_122_6116/U18  ( .A(x[24]), .B(\U3/RSOP_73/C1/Z_1 ), .CI(
        n344), .CO(\DP_OP_101J2_122_6116/n22 ), .S(\DP_OP_101J2_122_6116/n23 )
         );
  FA1D0 \DP_OP_101J2_122_6116/U17  ( .A(x[25]), .B(\U3/RSOP_73/C1/Z_2 ), .CI(
        n345), .CO(\DP_OP_101J2_122_6116/n20 ), .S(\DP_OP_101J2_122_6116/n21 )
         );
  FA1D0 \DP_OP_101J2_122_6116/U16  ( .A(x[26]), .B(\U3/RSOP_73/C1/Z_3 ), .CI(
        n346), .CO(\DP_OP_101J2_122_6116/n18 ), .S(\DP_OP_101J2_122_6116/n19 )
         );
  FA1D0 \DP_OP_101J2_122_6116/U15  ( .A(x[27]), .B(\U3/RSOP_73/C1/Z_4 ), .CI(
        n347), .CO(\DP_OP_101J2_122_6116/n16 ), .S(\DP_OP_101J2_122_6116/n17 )
         );
  FA1D0 \DP_OP_101J2_122_6116/U14  ( .A(x[28]), .B(\U3/RSOP_73/C1/Z_5 ), .CI(
        n348), .CO(\DP_OP_101J2_122_6116/n14 ), .S(\DP_OP_101J2_122_6116/n15 )
         );
  FA1D0 \DP_OP_101J2_122_6116/U13  ( .A(x[29]), .B(\U3/RSOP_73/C1/Z_6 ), .CI(
        n349), .CO(\DP_OP_101J2_122_6116/n12 ), .S(\DP_OP_101J2_122_6116/n13 )
         );
  FA1D0 \DP_OP_101J2_122_6116/U12  ( .A(x[30]), .B(\U3/RSOP_73/C1/Z_7 ), .CI(
        n350), .CO(\DP_OP_101J2_122_6116/n10 ), .S(\DP_OP_101J2_122_6116/n11 )
         );
  FA1D0 \DP_OP_101J2_122_6116/U11  ( .A(x[23]), .B(\U3/RSOP_73/C1/Z_0 ), .CI(
        \U3/RSOP_73/C2/Z_0 ), .CO(\DP_OP_101J2_122_6116/n9 ), .S(\C14/DATA2_0 ) );
  FA1D0 \DP_OP_101J2_122_6116/U10  ( .A(\DP_OP_101J2_122_6116/n9 ), .B(
        \DP_OP_101J2_122_6116/n31 ), .CI(\DP_OP_101J2_122_6116/n23 ), .CO(
        \DP_OP_101J2_122_6116/n8 ), .S(\C14/DATA2_1 ) );
  FA1D0 \DP_OP_101J2_122_6116/U9  ( .A(\DP_OP_101J2_122_6116/n21 ), .B(
        \DP_OP_101J2_122_6116/n22 ), .CI(\DP_OP_101J2_122_6116/n8 ), .CO(
        \DP_OP_101J2_122_6116/n7 ), .S(\C14/DATA2_2 ) );
  FA1D0 \DP_OP_101J2_122_6116/U8  ( .A(\DP_OP_101J2_122_6116/n19 ), .B(
        \DP_OP_101J2_122_6116/n20 ), .CI(\DP_OP_101J2_122_6116/n7 ), .CO(
        \DP_OP_101J2_122_6116/n6 ), .S(\C14/DATA2_3 ) );
  FA1D0 \DP_OP_101J2_122_6116/U7  ( .A(\DP_OP_101J2_122_6116/n17 ), .B(
        \DP_OP_101J2_122_6116/n18 ), .CI(\DP_OP_101J2_122_6116/n6 ), .CO(
        \DP_OP_101J2_122_6116/n5 ), .S(\C14/DATA2_4 ) );
  FA1D0 \DP_OP_101J2_122_6116/U6  ( .A(\DP_OP_101J2_122_6116/n15 ), .B(
        \DP_OP_101J2_122_6116/n16 ), .CI(\DP_OP_101J2_122_6116/n5 ), .CO(
        \DP_OP_101J2_122_6116/n4 ), .S(\C14/DATA2_5 ) );
  FA1D0 \DP_OP_101J2_122_6116/U5  ( .A(\DP_OP_101J2_122_6116/n13 ), .B(
        \DP_OP_101J2_122_6116/n14 ), .CI(\DP_OP_101J2_122_6116/n4 ), .CO(
        \DP_OP_101J2_122_6116/n3 ), .S(\C14/DATA2_6 ) );
  FA1D0 \DP_OP_101J2_122_6116/U4  ( .A(\DP_OP_101J2_122_6116/n11 ), .B(
        \DP_OP_101J2_122_6116/n12 ), .CI(\DP_OP_101J2_122_6116/n3 ), .CO(
        \DP_OP_101J2_122_6116/n2 ), .S(\C14/DATA2_7 ) );
  BUFFD0 U184 ( .I(n277), .Z(n145) );
  INVD0 U185 ( .I(n323), .ZN(n146) );
  INVD0 U186 ( .I(n146), .ZN(n147) );
  INVD0 U187 ( .I(n341), .ZN(n148) );
  INVD0 U188 ( .I(n148), .ZN(n149) );
  INVD0 U189 ( .I(n245), .ZN(n150) );
  INVD0 U190 ( .I(n150), .ZN(n151) );
  INVD0 U191 ( .I(n322), .ZN(n152) );
  INVD0 U192 ( .I(n152), .ZN(n153) );
  INVD0 U193 ( .I(n152), .ZN(n154) );
  INVD0 U194 ( .I(n340), .ZN(n155) );
  INVD0 U195 ( .I(n155), .ZN(n156) );
  INVD0 U196 ( .I(n294), .ZN(n157) );
  INVD0 U197 ( .I(n157), .ZN(n158) );
  INVD0 U198 ( .I(n157), .ZN(n159) );
  INVD0 U199 ( .I(n157), .ZN(n160) );
  INVD0 U200 ( .I(n273), .ZN(n161) );
  INVD0 U201 ( .I(n161), .ZN(n162) );
  INVD0 U202 ( .I(n161), .ZN(n163) );
  INVD0 U203 ( .I(n289), .ZN(n164) );
  INVD0 U204 ( .I(n164), .ZN(n165) );
  INVD0 U205 ( .I(n164), .ZN(n166) );
  INVD0 U206 ( .I(n158), .ZN(n167) );
  INVD0 U207 ( .I(n160), .ZN(n168) );
  INVD0 U208 ( .I(n159), .ZN(n169) );
  INVD0 U209 ( .I(n158), .ZN(n170) );
  OAI21D0 U210 ( .A1(n271), .A2(n270), .B(n281), .ZN(n171) );
  BUFFD0 U211 ( .I(n165), .Z(n326) );
  INVD0 U212 ( .I(n326), .ZN(n172) );
  INVD0 U213 ( .I(n326), .ZN(n173) );
  INVD0 U214 ( .I(n326), .ZN(n174) );
  INVD0 U215 ( .I(n343), .ZN(n175) );
  INVD0 U216 ( .I(n175), .ZN(n176) );
  INVD0 U217 ( .I(n175), .ZN(n177) );
  INVD0 U218 ( .I(n175), .ZN(n178) );
  OR2D0 U219 ( .A1(n331), .A2(n277), .Z(n321) );
  INVD0 U220 ( .I(n321), .ZN(n179) );
  INVD0 U221 ( .I(n321), .ZN(n180) );
  INVD0 U222 ( .I(n321), .ZN(n181) );
  INVD0 U223 ( .I(n321), .ZN(n182) );
  MUX2D0 U224 ( .I0(x[22]), .I1(x[14]), .S(n335), .Z(core_x[22]) );
  INVD0 U225 ( .I(divide_mode), .ZN(n193) );
  BUFFD0 U226 ( .I(n193), .Z(n186) );
  INVD0 U227 ( .I(n186), .ZN(n185) );
  MUX2D0 U228 ( .I0(x[15]), .I1(x[7]), .S(n185), .Z(core_x[15]) );
  MUX2D0 U229 ( .I0(x[14]), .I1(x[6]), .S(n185), .Z(core_x[14]) );
  INVD0 U230 ( .I(n186), .ZN(n184) );
  MUX2D0 U231 ( .I0(x[13]), .I1(x[5]), .S(n184), .Z(core_x[13]) );
  INVD0 U232 ( .I(n186), .ZN(n183) );
  MUX2D0 U233 ( .I0(x[21]), .I1(x[13]), .S(n183), .Z(core_x[21]) );
  MUX2D0 U234 ( .I0(x[20]), .I1(x[12]), .S(n183), .Z(core_x[20]) );
  MUX2D0 U235 ( .I0(x[12]), .I1(x[4]), .S(n184), .Z(core_x[12]) );
  BUFFD0 U236 ( .I(n193), .Z(n338) );
  BUFFD0 U237 ( .I(n338), .Z(n336) );
  INVD0 U238 ( .I(n336), .ZN(n335) );
  MUX2D0 U239 ( .I0(x[8]), .I1(x[0]), .S(n335), .Z(core_x[8]) );
  MUX2D0 U240 ( .I0(x[9]), .I1(x[1]), .S(n335), .Z(core_x[9]) );
  MUX2D0 U241 ( .I0(x[10]), .I1(x[2]), .S(n184), .Z(core_x[10]) );
  MUX2D0 U242 ( .I0(x[16]), .I1(x[8]), .S(n185), .Z(core_x[16]) );
  MUX2D0 U243 ( .I0(x[19]), .I1(x[11]), .S(n183), .Z(core_x[19]) );
  MUX2D0 U244 ( .I0(x[18]), .I1(x[10]), .S(n183), .Z(core_x[18]) );
  MUX2D0 U245 ( .I0(x[11]), .I1(x[3]), .S(n184), .Z(core_x[11]) );
  MUX2D0 U246 ( .I0(x[17]), .I1(x[9]), .S(n185), .Z(core_x[17]) );
  BUFFD0 U247 ( .I(n193), .Z(n339) );
  INR2D0 U248 ( .A1(x[22]), .B1(n339), .ZN(core_x[30]) );
  INVD0 U249 ( .I(n186), .ZN(n352) );
  OR4D0 U250 ( .A1(core_result[50]), .A2(core_result[49]), .A3(core_result[56]), .A4(core_result[62]), .Z(n187) );
  NR2D0 U251 ( .A1(n187), .A2(core_result[63]), .ZN(n192) );
  NR4D0 U252 ( .A1(core_result[54]), .A2(core_result[53]), .A3(core_result[57]), .A4(core_result[61]), .ZN(n191) );
  NR4D0 U253 ( .A1(core_result[60]), .A2(core_result[59]), .A3(core_result[52]), .A4(core_result[51]), .ZN(n189) );
  NR4D0 U254 ( .A1(core_result[58]), .A2(core_result[55]), .A3(core_result[48]), .A4(core_result[47]), .ZN(n188) );
  CKAN2D0 U255 ( .A1(n189), .A2(n188), .Z(n190) );
  ND3D0 U256 ( .A1(n192), .A2(n191), .A3(n190), .ZN(n224) );
  BUFFD0 U257 ( .I(n193), .Z(n334) );
  CKND2D0 U258 ( .A1(n224), .A2(n334), .ZN(n330) );
  NR4D0 U259 ( .A1(\C14/DATA2_3 ), .A2(\C14/DATA2_2 ), .A3(\C14/DATA2_1 ), 
        .A4(\C14/DATA2_0 ), .ZN(n194) );
  INR3D0 U260 ( .A1(n194), .B1(\C14/DATA2_4 ), .B2(\C14/DATA2_5 ), .ZN(n196)
         );
  INVD0 U261 ( .I(\C14/DATA2_7 ), .ZN(n195) );
  IND3D0 U262 ( .A1(\C14/DATA2_6 ), .B1(n196), .B2(n195), .ZN(n220) );
  XNR2D0 U263 ( .A1(\DP_OP_101J2_122_6116/n10 ), .A2(\DP_OP_101J2_122_6116/n2 ), .ZN(n222) );
  NR2D0 U264 ( .A1(n334), .A2(core_result[8]), .ZN(n206) );
  NR2D0 U265 ( .A1(core_result[9]), .A2(core_result[10]), .ZN(n235) );
  INVD0 U266 ( .I(core_result[11]), .ZN(n234) );
  CKND2D0 U267 ( .A1(n235), .A2(n234), .ZN(n233) );
  NR2D0 U268 ( .A1(n233), .A2(core_result[12]), .ZN(n230) );
  INVD0 U269 ( .I(core_result[13]), .ZN(n226) );
  CKND2D0 U270 ( .A1(n230), .A2(n226), .ZN(n242) );
  NR2D0 U271 ( .A1(n242), .A2(core_result[14]), .ZN(n241) );
  INVD0 U272 ( .I(core_result[15]), .ZN(n239) );
  CKND2D0 U273 ( .A1(n241), .A2(n239), .ZN(n290) );
  NR2D0 U274 ( .A1(n290), .A2(core_result[16]), .ZN(n313) );
  INVD0 U275 ( .I(core_result[17]), .ZN(n312) );
  CKND2D0 U276 ( .A1(n313), .A2(n312), .ZN(n319) );
  NR2D0 U277 ( .A1(n319), .A2(core_result[18]), .ZN(n318) );
  INVD0 U278 ( .I(core_result[19]), .ZN(n301) );
  CKND2D0 U279 ( .A1(n318), .A2(n301), .ZN(n307) );
  NR2D0 U280 ( .A1(n307), .A2(core_result[20]), .ZN(n306) );
  INVD0 U281 ( .I(core_result[21]), .ZN(n296) );
  CKND2D0 U282 ( .A1(n306), .A2(n296), .ZN(n295) );
  NR2D0 U283 ( .A1(n295), .A2(core_result[22]), .ZN(n284) );
  NR4D0 U284 ( .A1(core_result[44]), .A2(core_result[43]), .A3(core_result[42]), .A4(core_result[41]), .ZN(n200) );
  NR4D0 U285 ( .A1(core_result[38]), .A2(core_result[40]), .A3(core_result[39]), .A4(core_result[35]), .ZN(n199) );
  NR4D0 U286 ( .A1(core_result[37]), .A2(core_result[36]), .A3(core_result[32]), .A4(core_result[34]), .ZN(n198) );
  NR4D0 U287 ( .A1(core_result[33]), .A2(core_result[31]), .A3(core_result[30]), .A4(core_result[29]), .ZN(n197) );
  ND4D0 U288 ( .A1(n200), .A2(n199), .A3(n198), .A4(n197), .ZN(n204) );
  NR4D0 U289 ( .A1(core_result[28]), .A2(core_result[25]), .A3(core_result[27]), .A4(core_result[26]), .ZN(n202) );
  NR4D0 U290 ( .A1(core_result[45]), .A2(core_result[23]), .A3(core_result[24]), .A4(core_result[46]), .ZN(n201) );
  CKND2D0 U291 ( .A1(n202), .A2(n201), .ZN(n203) );
  NR3D0 U292 ( .A1(n224), .A2(n204), .A3(n203), .ZN(n205) );
  CKND2D0 U293 ( .A1(n284), .A2(n205), .ZN(n274) );
  INR2D0 U294 ( .A1(n206), .B1(n274), .ZN(n276) );
  INVD0 U295 ( .I(core_result[7]), .ZN(n217) );
  ND4D0 U296 ( .A1(y[27]), .A2(y[28]), .A3(y[29]), .A4(y[30]), .ZN(n215) );
  ND4D0 U297 ( .A1(y[23]), .A2(y[24]), .A3(y[25]), .A4(y[26]), .ZN(n214) );
  ND4D0 U298 ( .A1(x[27]), .A2(x[28]), .A3(x[29]), .A4(x[30]), .ZN(n212) );
  ND4D0 U299 ( .A1(x[23]), .A2(x[24]), .A3(x[25]), .A4(x[26]), .ZN(n211) );
  NR4D0 U300 ( .A1(x[27]), .A2(x[28]), .A3(x[29]), .A4(x[30]), .ZN(n208) );
  NR4D0 U301 ( .A1(x[23]), .A2(x[24]), .A3(x[25]), .A4(x[26]), .ZN(n207) );
  CKND2D0 U302 ( .A1(n208), .A2(n207), .ZN(n269) );
  NR4D0 U303 ( .A1(y[27]), .A2(y[28]), .A3(y[29]), .A4(y[30]), .ZN(n210) );
  NR4D0 U304 ( .A1(y[23]), .A2(y[24]), .A3(y[25]), .A4(y[26]), .ZN(n209) );
  CKND2D0 U305 ( .A1(n210), .A2(n209), .ZN(n260) );
  OAI211D0 U306 ( .A1(n212), .A2(n211), .B(n269), .C(n260), .ZN(n213) );
  IAO21D0 U307 ( .A1(n215), .A2(n214), .B(n213), .ZN(n262) );
  INVD0 U308 ( .I(n262), .ZN(n216) );
  AOI21D0 U309 ( .A1(n276), .A2(n217), .B(n216), .ZN(n219) );
  OR2D0 U310 ( .A1(\DP_OP_101J2_122_6116/n2 ), .A2(\DP_OP_101J2_122_6116/n10 ), 
        .Z(n218) );
  OAI211D0 U311 ( .A1(n220), .A2(n222), .B(n219), .C(n218), .ZN(n270) );
  INVD0 U312 ( .I(n270), .ZN(n273) );
  AN4D0 U313 ( .A1(\C14/DATA2_3 ), .A2(\C14/DATA2_2 ), .A3(\C14/DATA2_1 ), 
        .A4(\C14/DATA2_0 ), .Z(n221) );
  AN4D0 U314 ( .A1(\C14/DATA2_6 ), .A2(\C14/DATA2_5 ), .A3(\C14/DATA2_4 ), 
        .A4(n221), .Z(n223) );
  AOI21D0 U315 ( .A1(\C14/DATA2_7 ), .A2(n223), .B(n222), .ZN(n271) );
  CKND2D0 U316 ( .A1(n273), .A2(n271), .ZN(n277) );
  NR2D0 U317 ( .A1(n330), .A2(n277), .ZN(n289) );
  INVD0 U318 ( .I(core_result[32]), .ZN(n228) );
  CKND2D0 U319 ( .A1(n274), .A2(n352), .ZN(n331) );
  INVD0 U320 ( .I(n179), .ZN(n245) );
  NR2D0 U321 ( .A1(n224), .A2(n335), .ZN(n333) );
  IND2D0 U322 ( .A1(n277), .B1(n333), .ZN(n294) );
  INVD0 U323 ( .I(core_result[31]), .ZN(n225) );
  OAI222D0 U324 ( .A1(n173), .A2(n228), .B1(n245), .B2(core_result[9]), .C1(
        n159), .C2(n225), .ZN(result[8]) );
  INVD0 U325 ( .I(core_result[36]), .ZN(n246) );
  OA21D0 U326 ( .A1(n230), .A2(n226), .B(n242), .Z(n227) );
  INVD0 U327 ( .I(core_result[35]), .ZN(n231) );
  OAI222D0 U328 ( .A1(n172), .A2(n246), .B1(n151), .B2(n227), .C1(n231), .C2(
        n160), .ZN(result[12]) );
  INVD0 U329 ( .I(core_result[33]), .ZN(n238) );
  AOI21D0 U330 ( .A1(core_result[10]), .A2(core_result[9]), .B(n235), .ZN(n229) );
  OAI222D0 U331 ( .A1(n173), .A2(n238), .B1(n245), .B2(n229), .C1(n228), .C2(
        n158), .ZN(result[9]) );
  INVD0 U332 ( .I(core_result[34]), .ZN(n236) );
  AOI21D0 U333 ( .A1(core_result[12]), .A2(n233), .B(n230), .ZN(n232) );
  OAI222D0 U334 ( .A1(n159), .A2(n236), .B1(n151), .B2(n232), .C1(n231), .C2(
        n174), .ZN(result[11]) );
  OA21D0 U335 ( .A1(n235), .A2(n234), .B(n233), .Z(n237) );
  OAI222D0 U336 ( .A1(n160), .A2(n238), .B1(n151), .B2(n237), .C1(n236), .C2(
        n172), .ZN(result[10]) );
  INVD0 U337 ( .I(core_result[37]), .ZN(n243) );
  OA21D0 U338 ( .A1(n241), .A2(n239), .B(n290), .Z(n240) );
  INVD0 U339 ( .I(core_result[38]), .ZN(n293) );
  OAI222D0 U340 ( .A1(n158), .A2(n243), .B1(n151), .B2(n240), .C1(n293), .C2(
        n173), .ZN(result[14]) );
  AOI21D0 U341 ( .A1(core_result[14]), .A2(n242), .B(n241), .ZN(n244) );
  OAI222D0 U342 ( .A1(n159), .A2(n246), .B1(n245), .B2(n244), .C1(n243), .C2(
        n174), .ZN(result[13]) );
  INVD0 U343 ( .I(n334), .ZN(n351) );
  INVD0 U344 ( .I(y[31]), .ZN(n248) );
  INVD0 U345 ( .I(x[31]), .ZN(n247) );
  AO22D0 U346 ( .A1(x[31]), .A2(y[31]), .B1(n248), .B2(n247), .Z(n249) );
  NR2D0 U347 ( .A1(n249), .A2(n270), .ZN(result[31]) );
  NR4D0 U348 ( .A1(x[18]), .A2(x[17]), .A3(x[16]), .A4(x[15]), .ZN(n251) );
  NR4D0 U349 ( .A1(x[22]), .A2(x[21]), .A3(x[20]), .A4(x[19]), .ZN(n250) );
  CKND2D0 U350 ( .A1(n251), .A2(n250), .ZN(n268) );
  NR4D0 U351 ( .A1(x[10]), .A2(x[9]), .A3(x[8]), .A4(x[7]), .ZN(n255) );
  NR4D0 U352 ( .A1(x[14]), .A2(x[13]), .A3(x[12]), .A4(x[11]), .ZN(n254) );
  NR4D0 U353 ( .A1(x[2]), .A2(x[1]), .A3(x[0]), .A4(x[31]), .ZN(n253) );
  NR4D0 U354 ( .A1(x[6]), .A2(x[5]), .A3(x[4]), .A4(x[3]), .ZN(n252) );
  ND4D0 U355 ( .A1(n255), .A2(n254), .A3(n253), .A4(n252), .ZN(n267) );
  NR4D0 U356 ( .A1(y[16]), .A2(y[19]), .A3(y[20]), .A4(y[21]), .ZN(n265) );
  NR4D0 U357 ( .A1(y[31]), .A2(y[5]), .A3(y[17]), .A4(y[18]), .ZN(n264) );
  NR4D0 U358 ( .A1(y[3]), .A2(y[4]), .A3(y[2]), .A4(y[6]), .ZN(n259) );
  NR4D0 U359 ( .A1(y[22]), .A2(y[0]), .A3(y[1]), .A4(y[14]), .ZN(n258) );
  NR4D0 U360 ( .A1(y[8]), .A2(y[12]), .A3(y[13]), .A4(y[11]), .ZN(n257) );
  NR4D0 U361 ( .A1(y[15]), .A2(y[7]), .A3(y[9]), .A4(y[10]), .ZN(n256) );
  ND4D0 U362 ( .A1(n259), .A2(n258), .A3(n257), .A4(n256), .ZN(n261) );
  NR2D0 U363 ( .A1(n261), .A2(n260), .ZN(n263) );
  AOI31D0 U364 ( .A1(n265), .A2(n264), .A3(n263), .B(n262), .ZN(n266) );
  OAI31D0 U365 ( .A1(n269), .A2(n268), .A3(n267), .B(n266), .ZN(n281) );
  OAI21D0 U366 ( .A1(n271), .A2(n270), .B(n281), .ZN(n272) );
  AO21D0 U367 ( .A1(\C14/DATA2_2 ), .A2(n162), .B(n272), .Z(result[25]) );
  AO21D0 U368 ( .A1(\C14/DATA2_6 ), .A2(n163), .B(n171), .Z(result[29]) );
  AO21D0 U369 ( .A1(\C14/DATA2_5 ), .A2(n162), .B(n272), .Z(result[28]) );
  AO21D0 U370 ( .A1(\C14/DATA2_4 ), .A2(n162), .B(n171), .Z(result[27]) );
  AO21D0 U371 ( .A1(\C14/DATA2_7 ), .A2(n163), .B(n272), .Z(result[30]) );
  AO21D0 U372 ( .A1(\C14/DATA2_0 ), .A2(n163), .B(n171), .Z(result[23]) );
  AO21D0 U373 ( .A1(\C14/DATA2_1 ), .A2(n162), .B(n272), .Z(result[24]) );
  AO21D0 U374 ( .A1(\C14/DATA2_3 ), .A2(n163), .B(n171), .Z(result[26]) );
  AO222D0 U375 ( .A1(n169), .A2(core_result[29]), .B1(n182), .B2(
        core_result[7]), .C1(core_result[30]), .C2(n166), .Z(result[6]) );
  AO222D0 U376 ( .A1(core_result[27]), .A2(n170), .B1(n165), .B2(
        core_result[28]), .C1(n182), .C2(core_result[5]), .Z(result[4]) );
  AO222D0 U377 ( .A1(core_result[24]), .A2(n167), .B1(n166), .B2(
        core_result[25]), .C1(n179), .C2(core_result[2]), .Z(result[1]) );
  AO222D0 U378 ( .A1(core_result[26]), .A2(n168), .B1(n289), .B2(
        core_result[27]), .C1(n180), .C2(core_result[4]), .Z(result[3]) );
  AO222D0 U379 ( .A1(n289), .A2(core_result[26]), .B1(n168), .B2(
        core_result[25]), .C1(n181), .C2(core_result[3]), .Z(result[2]) );
  AO222D0 U380 ( .A1(n165), .A2(core_result[24]), .B1(n169), .B2(
        core_result[23]), .C1(n182), .C2(core_result[1]), .Z(result[0]) );
  AO222D0 U381 ( .A1(n166), .A2(core_result[29]), .B1(n170), .B2(
        core_result[28]), .C1(n179), .C2(core_result[6]), .Z(result[5]) );
  AO222D0 U382 ( .A1(n180), .A2(core_result[8]), .B1(n165), .B2(
        core_result[31]), .C1(n167), .C2(core_result[30]), .Z(result[7]) );
  CKAN2D0 U383 ( .A1(core_result[8]), .A2(divide_mode), .Z(n275) );
  INR2D0 U384 ( .A1(n275), .B1(n274), .ZN(n328) );
  INR2D0 U385 ( .A1(n328), .B1(n145), .ZN(n322) );
  AOI22D0 U386 ( .A1(core_result[7]), .A2(n153), .B1(core_result[46]), .B2(
        n289), .ZN(n283) );
  CKND2D0 U387 ( .A1(n276), .A2(core_result[7]), .ZN(n329) );
  NR2D0 U388 ( .A1(n329), .A2(n145), .ZN(n323) );
  AOI22D0 U389 ( .A1(core_result[45]), .A2(n167), .B1(core_result[6]), .B2(
        n323), .ZN(n282) );
  INVD0 U390 ( .I(n284), .ZN(n279) );
  INVD0 U391 ( .I(core_result[23]), .ZN(n278) );
  OAI221D0 U392 ( .A1(n284), .A2(core_result[23]), .B1(n279), .B2(n278), .C(
        n150), .ZN(n280) );
  ND4D0 U393 ( .A1(n283), .A2(n282), .A3(n281), .A4(n280), .ZN(result[22]) );
  INVD0 U394 ( .I(core_result[45]), .ZN(n288) );
  AO21D0 U395 ( .A1(core_result[22]), .A2(n295), .B(n284), .Z(n285) );
  AOI22D0 U396 ( .A1(core_result[44]), .A2(n168), .B1(n180), .B2(n285), .ZN(
        n287) );
  AOI22D0 U397 ( .A1(core_result[6]), .A2(n154), .B1(n147), .B2(core_result[5]), .ZN(n286) );
  OAI211D0 U398 ( .A1(n288), .A2(n174), .B(n287), .C(n286), .ZN(result[21]) );
  AOI22D0 U399 ( .A1(core_result[39]), .A2(n166), .B1(n154), .B2(
        core_result[0]), .ZN(n292) );
  AOI32D0 U400 ( .A1(core_result[16]), .A2(n150), .A3(n290), .B1(n313), .B2(
        n181), .ZN(n291) );
  OAI211D0 U401 ( .A1(n160), .A2(n293), .B(n292), .C(n291), .ZN(result[15]) );
  INVD0 U402 ( .I(core_result[44]), .ZN(n300) );
  OAI21D0 U403 ( .A1(n306), .A2(n296), .B(n295), .ZN(n297) );
  AOI22D0 U404 ( .A1(core_result[43]), .A2(n169), .B1(n181), .B2(n297), .ZN(
        n299) );
  AOI22D0 U405 ( .A1(n323), .A2(core_result[4]), .B1(n153), .B2(core_result[5]), .ZN(n298) );
  OAI211D0 U406 ( .A1(n300), .A2(n164), .B(n299), .C(n298), .ZN(result[20]) );
  INVD0 U407 ( .I(core_result[42]), .ZN(n305) );
  OAI21D0 U408 ( .A1(n318), .A2(n301), .B(n307), .ZN(n302) );
  AOI22D0 U409 ( .A1(core_result[41]), .A2(n170), .B1(n182), .B2(n302), .ZN(
        n304) );
  AOI22D0 U410 ( .A1(n147), .A2(core_result[2]), .B1(n154), .B2(core_result[3]), .ZN(n303) );
  OAI211D0 U411 ( .A1(n305), .A2(n172), .B(n304), .C(n303), .ZN(result[18]) );
  INVD0 U412 ( .I(core_result[43]), .ZN(n311) );
  AO21D0 U413 ( .A1(core_result[20]), .A2(n307), .B(n306), .Z(n308) );
  AOI22D0 U414 ( .A1(core_result[42]), .A2(n167), .B1(n179), .B2(n308), .ZN(
        n310) );
  AOI22D0 U415 ( .A1(n323), .A2(core_result[3]), .B1(n153), .B2(core_result[4]), .ZN(n309) );
  OAI211D0 U416 ( .A1(n311), .A2(n173), .B(n310), .C(n309), .ZN(result[19]) );
  INVD0 U417 ( .I(core_result[40]), .ZN(n317) );
  OAI21D0 U418 ( .A1(n313), .A2(n312), .B(n319), .ZN(n314) );
  AOI22D0 U419 ( .A1(core_result[39]), .A2(n168), .B1(n180), .B2(n314), .ZN(
        n316) );
  AOI22D0 U420 ( .A1(n147), .A2(core_result[0]), .B1(n153), .B2(core_result[1]), .ZN(n315) );
  OAI211D0 U421 ( .A1(n317), .A2(n174), .B(n316), .C(n315), .ZN(result[16]) );
  INVD0 U422 ( .I(core_result[41]), .ZN(n327) );
  AO21D0 U423 ( .A1(core_result[18]), .A2(n319), .B(n318), .Z(n320) );
  AOI22D0 U424 ( .A1(core_result[40]), .A2(n169), .B1(n181), .B2(n320), .ZN(
        n325) );
  AOI22D0 U425 ( .A1(n147), .A2(core_result[1]), .B1(n154), .B2(core_result[2]), .ZN(n324) );
  OAI211D0 U426 ( .A1(n327), .A2(n172), .B(n325), .C(n324), .ZN(result[17]) );
  INVD0 U427 ( .I(y[30]), .ZN(n332) );
  INVD0 U428 ( .I(n328), .ZN(n342) );
  CKAN2D0 U429 ( .A1(n329), .A2(n342), .Z(n341) );
  CKND2D0 U430 ( .A1(n341), .A2(n331), .ZN(n340) );
  OR2D0 U431 ( .A1(n332), .A2(n155), .Z(n350) );
  IND2D0 U432 ( .A1(n333), .B1(n330), .ZN(n343) );
  OAI21D0 U433 ( .A1(n175), .A2(n332), .B(n331), .ZN(\U3/RSOP_73/C1/Z_7 ) );
  AO21D0 U434 ( .A1(n340), .A2(y[23]), .B(n333), .Z(\U3/RSOP_73/C2/Z_0 ) );
  INVD0 U435 ( .I(\U3/RSOP_73/C2/Z_0 ), .ZN(\DP_OP_101J2_122_6116/n31 ) );
  OR2D0 U436 ( .A1(x[15]), .A2(n334), .Z(core_x[23]) );
  INR2D0 U437 ( .A1(x[0]), .B1(divide_mode), .ZN(core_x[0]) );
  INVD0 U438 ( .I(n336), .ZN(n337) );
  INR2D0 U439 ( .A1(x[3]), .B1(n337), .ZN(core_x[3]) );
  INR2D0 U440 ( .A1(x[1]), .B1(divide_mode), .ZN(core_x[1]) );
  INR2D0 U441 ( .A1(x[2]), .B1(n351), .ZN(core_x[2]) );
  INR2D0 U442 ( .A1(x[5]), .B1(n337), .ZN(core_x[5]) );
  INR2D0 U443 ( .A1(x[6]), .B1(n337), .ZN(core_x[6]) );
  INR2D0 U444 ( .A1(x[4]), .B1(n351), .ZN(core_x[4]) );
  INR2D0 U445 ( .A1(x[7]), .B1(n337), .ZN(core_x[7]) );
  INR2D0 U446 ( .A1(x[17]), .B1(n338), .ZN(core_x[25]) );
  INR2D0 U447 ( .A1(x[18]), .B1(n339), .ZN(core_x[26]) );
  INR2D0 U448 ( .A1(x[19]), .B1(n338), .ZN(core_x[27]) );
  INR2D0 U449 ( .A1(x[16]), .B1(n338), .ZN(core_x[24]) );
  INR2D0 U450 ( .A1(x[21]), .B1(n339), .ZN(core_x[29]) );
  INR2D0 U451 ( .A1(x[20]), .B1(n339), .ZN(core_x[28]) );
  AOI21D0 U452 ( .A1(n156), .A2(y[24]), .B(n178), .ZN(n344) );
  AOI21D0 U453 ( .A1(n340), .A2(y[25]), .B(n176), .ZN(n345) );
  AOI21D0 U454 ( .A1(n156), .A2(y[26]), .B(n343), .ZN(n346) );
  AOI21D0 U455 ( .A1(n340), .A2(y[27]), .B(n176), .ZN(n347) );
  AOI21D0 U456 ( .A1(n156), .A2(y[28]), .B(n343), .ZN(n348) );
  AOI21D0 U457 ( .A1(n156), .A2(y[29]), .B(n176), .ZN(n349) );
  IOA21D0 U458 ( .A1(y[29]), .A2(n178), .B(n341), .ZN(\U3/RSOP_73/C1/Z_6 ) );
  IOA21D0 U459 ( .A1(y[28]), .A2(n177), .B(n149), .ZN(\U3/RSOP_73/C1/Z_5 ) );
  IOA21D0 U460 ( .A1(y[27]), .A2(n178), .B(n341), .ZN(\U3/RSOP_73/C1/Z_4 ) );
  IOA21D0 U461 ( .A1(y[26]), .A2(n177), .B(n149), .ZN(\U3/RSOP_73/C1/Z_3 ) );
  IOA21D0 U462 ( .A1(y[25]), .A2(n178), .B(n149), .ZN(\U3/RSOP_73/C1/Z_2 ) );
  IOA21D0 U463 ( .A1(y[24]), .A2(n177), .B(n149), .ZN(\U3/RSOP_73/C1/Z_1 ) );
  IOA21D0 U464 ( .A1(y[23]), .A2(n176), .B(n342), .ZN(\U3/RSOP_73/C1/Z_0 ) );
endmodule

