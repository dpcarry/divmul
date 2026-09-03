/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Thu Sep  3 12:48:11 2026
/////////////////////////////////////////////////////////////


module SHIFTER_width24_0 ( x, shift, left, out0 );
  input [23:0] x;
  input [4:0] shift;
  output [23:0] out0;
  input left;
  wire   n26, n27, n30, n31, n34, n35, n38, n39, n121, n128, n135, n142, n150,
         n158, n166, n174, n179, n183, n187, n191, n192, n201, n210;

  INVD1 U15 ( .I(x[3]), .ZN(n38) );
  INVD1 U18 ( .I(x[2]), .ZN(n34) );
  INVD1 U21 ( .I(x[1]), .ZN(n30) );
  INVD1 U25 ( .I(x[0]), .ZN(n26) );
  INVD1 U30 ( .I(x[5]), .ZN(n31) );
  INVD1 U34 ( .I(x[7]), .ZN(n39) );
  INVD1 U35 ( .I(x[4]), .ZN(n27) );
  INVD1 U37 ( .I(x[6]), .ZN(n35) );
  CKND1 U1 ( .I(n27), .ZN(out0[4]) );
  INVD1 U2 ( .I(n187), .ZN(out0[18]) );
  INVD1 U3 ( .I(n192), .ZN(out0[20]) );
  INVD1 U4 ( .I(n191), .ZN(out0[19]) );
  INVD1 U5 ( .I(n135), .ZN(out0[10]) );
  INVD1 U6 ( .I(n121), .ZN(out0[8]) );
  CKND1 U7 ( .I(n150), .ZN(out0[12]) );
  INVD1 U8 ( .I(n31), .ZN(out0[5]) );
  INVD0 U9 ( .I(x[18]), .ZN(n187) );
  CKND1 U10 ( .I(n201), .ZN(out0[21]) );
  INVD1 U11 ( .I(n179), .ZN(out0[16]) );
  INVD1 U12 ( .I(n210), .ZN(out0[22]) );
  CKND1 U13 ( .I(n128), .ZN(out0[9]) );
  INVD1 U14 ( .I(n34), .ZN(out0[2]) );
  INVD1 U16 ( .I(n26), .ZN(out0[0]) );
  CKND1 U17 ( .I(n158), .ZN(out0[13]) );
  CKND1 U19 ( .I(n142), .ZN(out0[11]) );
  INVD0 U20 ( .I(x[8]), .ZN(n121) );
  INVD0 U22 ( .I(x[12]), .ZN(n150) );
  INVD0 U23 ( .I(x[19]), .ZN(n191) );
  INVD0 U24 ( .I(x[10]), .ZN(n135) );
  INVD0 U26 ( .I(x[16]), .ZN(n179) );
  INVD1 U27 ( .I(n35), .ZN(out0[6]) );
  INVD1 U28 ( .I(n183), .ZN(out0[17]) );
  INVD1 U29 ( .I(n38), .ZN(out0[3]) );
  INVD1 U31 ( .I(n166), .ZN(out0[14]) );
  INVD0 U32 ( .I(x[13]), .ZN(n158) );
  INVD0 U33 ( .I(x[11]), .ZN(n142) );
  INVD0 U36 ( .I(x[9]), .ZN(n128) );
  INVD0 U38 ( .I(x[17]), .ZN(n183) );
  INVD0 U39 ( .I(x[20]), .ZN(n192) );
  INVD1 U40 ( .I(n39), .ZN(out0[7]) );
  INVD1 U41 ( .I(n30), .ZN(out0[1]) );
  CKND1 U42 ( .I(n174), .ZN(out0[15]) );
  INVD0 U43 ( .I(x[14]), .ZN(n166) );
  INVD0 U44 ( .I(x[21]), .ZN(n201) );
  INVD0 U45 ( .I(x[22]), .ZN(n210) );
  INVD0 U46 ( .I(x[15]), .ZN(n174) );
endmodule


module NORMALIZE_width24_0 ( x, out0, num0 );
  input [23:0] x;
  output [23:0] out0;
  output [4:0] num0;

  wire   SYNOPSYS_UNCONNECTED__0;

  SHIFTER_width24_0 shifter ( .x({1'b1, x[22:0]}), .shift({1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .left(1'b0), .out0({SYNOPSYS_UNCONNECTED__0, out0[22:0]}) );
endmodule


module SHIFTER_width24_1 ( x, shift, left, out0 );
  input [23:0] x;
  input [4:0] shift;
  output [23:0] out0;
  input left;
  wire   n32, n33, n36, n37, n40, n41, n44, n45, n127, n134, n141, n148, n156,
         n164, n172, n180, n185, n189, n193, n197, n198, n207, n216;

  INVD1 U10 ( .I(x[3]), .ZN(n44) );
  INVD1 U11 ( .I(x[2]), .ZN(n40) );
  INVD1 U16 ( .I(x[1]), .ZN(n36) );
  INVD1 U19 ( .I(x[5]), .ZN(n37) );
  INVD1 U21 ( .I(x[0]), .ZN(n32) );
  INVD1 U24 ( .I(x[4]), .ZN(n33) );
  INVD1 U32 ( .I(x[7]), .ZN(n45) );
  INVD1 U34 ( .I(x[6]), .ZN(n41) );
  INVD1 U1 ( .I(n216), .ZN(out0[22]) );
  INVD1 U2 ( .I(n185), .ZN(out0[16]) );
  CKND1 U3 ( .I(n189), .ZN(out0[17]) );
  INVD1 U4 ( .I(n41), .ZN(out0[6]) );
  INVD1 U5 ( .I(n37), .ZN(out0[5]) );
  INVD0 U6 ( .I(x[16]), .ZN(n185) );
  INVD1 U7 ( .I(n33), .ZN(out0[4]) );
  INVD1 U8 ( .I(n198), .ZN(out0[20]) );
  INVD1 U9 ( .I(n193), .ZN(out0[18]) );
  INVD1 U12 ( .I(n32), .ZN(out0[0]) );
  INVD1 U13 ( .I(n148), .ZN(out0[11]) );
  INVD1 U14 ( .I(n36), .ZN(out0[1]) );
  INVD1 U15 ( .I(n45), .ZN(out0[7]) );
  INVD1 U17 ( .I(n164), .ZN(out0[13]) );
  INVD0 U18 ( .I(x[17]), .ZN(n189) );
  INVD0 U20 ( .I(x[18]), .ZN(n193) );
  INVD1 U22 ( .I(n207), .ZN(out0[21]) );
  INVD1 U23 ( .I(n156), .ZN(out0[12]) );
  INVD1 U25 ( .I(n141), .ZN(out0[10]) );
  INVD1 U26 ( .I(n127), .ZN(out0[8]) );
  INVD1 U27 ( .I(n197), .ZN(out0[19]) );
  INVD0 U28 ( .I(x[13]), .ZN(n164) );
  INVD0 U29 ( .I(x[11]), .ZN(n148) );
  INVD0 U30 ( .I(x[19]), .ZN(n197) );
  INVD0 U31 ( .I(x[12]), .ZN(n156) );
  INVD0 U33 ( .I(x[10]), .ZN(n141) );
  INVD0 U35 ( .I(x[8]), .ZN(n127) );
  INVD0 U36 ( .I(x[22]), .ZN(n216) );
  INVD1 U37 ( .I(n40), .ZN(out0[2]) );
  INVD1 U38 ( .I(n134), .ZN(out0[9]) );
  INVD1 U39 ( .I(n180), .ZN(out0[15]) );
  INVD0 U40 ( .I(x[9]), .ZN(n134) );
  INVD0 U41 ( .I(x[20]), .ZN(n198) );
  INVD1 U42 ( .I(n44), .ZN(out0[3]) );
  INVD1 U43 ( .I(n172), .ZN(out0[14]) );
  INVD0 U44 ( .I(x[15]), .ZN(n180) );
  INVD0 U45 ( .I(x[14]), .ZN(n172) );
  INVD0 U46 ( .I(x[21]), .ZN(n207) );
endmodule


module NORMALIZE_width24_1 ( x, out0, num0 );
  input [23:0] x;
  output [23:0] out0;
  output [4:0] num0;

  wire   SYNOPSYS_UNCONNECTED__0;

  SHIFTER_width24_1 shifter ( .x({1'b1, x[22:0]}), .shift({1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .left(1'b0), .out0({SYNOPSYS_UNCONNECTED__0, out0[22:0]}) );
endmodule


module SHIFTER_width73 ( x, shift, left, out0 );
  input [72:0] x;
  input [6:0] shift;
  output [72:0] out0;
  input left;
  wire   n88, n511, n526, n537, n548, n559, n570, n586, n597, n608, n620, n632,
         n643, n654, n665, n676, n704, n710, n716, n722, n728, n891, n896,
         n901;

  INVD1 U86 ( .I(x[47]), .ZN(n88) );
  CKND0 U1 ( .I(n901), .ZN(out0[26]) );
  CKND0 U2 ( .I(n896), .ZN(out0[25]) );
  CKND0 U3 ( .I(n570), .ZN(out0[46]) );
  CKND0 U4 ( .I(n559), .ZN(out0[45]) );
  CKND0 U5 ( .I(n548), .ZN(out0[44]) );
  CKND0 U6 ( .I(n537), .ZN(out0[43]) );
  CKND0 U7 ( .I(n526), .ZN(out0[42]) );
  CKND0 U8 ( .I(n511), .ZN(out0[41]) );
  CKND0 U9 ( .I(n728), .ZN(out0[31]) );
  CKND0 U10 ( .I(n722), .ZN(out0[30]) );
  CKND0 U11 ( .I(n716), .ZN(out0[29]) );
  CKND0 U12 ( .I(n710), .ZN(out0[28]) );
  CKND0 U13 ( .I(n704), .ZN(out0[27]) );
  CKND0 U14 ( .I(n586), .ZN(out0[32]) );
  CKND0 U15 ( .I(n597), .ZN(out0[33]) );
  CKND0 U16 ( .I(n608), .ZN(out0[34]) );
  CKND0 U17 ( .I(n620), .ZN(out0[35]) );
  CKND0 U18 ( .I(n632), .ZN(out0[36]) );
  CKND0 U19 ( .I(n654), .ZN(out0[38]) );
  CKND0 U20 ( .I(n643), .ZN(out0[37]) );
  CKND0 U21 ( .I(n665), .ZN(out0[39]) );
  CKND0 U22 ( .I(n676), .ZN(out0[40]) );
  CKND0 U23 ( .I(n891), .ZN(out0[24]) );
  CKND0 U24 ( .I(n88), .ZN(out0[47]) );
  INVD1 U25 ( .I(x[24]), .ZN(n891) );
  INVD1 U26 ( .I(x[34]), .ZN(n608) );
  INVD1 U27 ( .I(x[25]), .ZN(n896) );
  INVD1 U28 ( .I(x[26]), .ZN(n901) );
  INVD1 U29 ( .I(x[37]), .ZN(n643) );
  INVD1 U30 ( .I(x[38]), .ZN(n654) );
  INVD1 U31 ( .I(x[40]), .ZN(n676) );
  INVD1 U32 ( .I(x[28]), .ZN(n710) );
  INVD1 U33 ( .I(x[27]), .ZN(n704) );
  INVD1 U34 ( .I(x[36]), .ZN(n632) );
  INVD1 U35 ( .I(x[39]), .ZN(n665) );
  INVD1 U36 ( .I(x[30]), .ZN(n722) );
  INVD1 U37 ( .I(x[33]), .ZN(n597) );
  INVD1 U38 ( .I(x[31]), .ZN(n728) );
  INVD1 U39 ( .I(x[35]), .ZN(n620) );
  INVD1 U40 ( .I(x[29]), .ZN(n716) );
  INVD1 U41 ( .I(x[45]), .ZN(n559) );
  INVD1 U42 ( .I(x[44]), .ZN(n548) );
  INVD1 U43 ( .I(x[43]), .ZN(n537) );
  INVD1 U44 ( .I(x[42]), .ZN(n526) );
  INVD1 U45 ( .I(x[41]), .ZN(n511) );
  INVD1 U46 ( .I(x[32]), .ZN(n586) );
  INVD1 U47 ( .I(x[46]), .ZN(n570) );
endmodule


module lead_comb_core_DW01_sub_2_DW01_sub_3 ( A, B, CI, DIFF, CO );
  input [48:0] A;
  input [48:0] B;
  output [48:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92;

  AN2XD1 U1 ( .A1(n15), .A2(n57), .Z(n1) );
  AN2XD1 U2 ( .A1(n3), .A2(n61), .Z(n2) );
  AN2XD1 U3 ( .A1(n4), .A2(n62), .Z(n3) );
  AN2XD1 U4 ( .A1(n5), .A2(n63), .Z(n4) );
  AN2XD1 U5 ( .A1(n6), .A2(n64), .Z(n5) );
  AN2XD1 U6 ( .A1(n7), .A2(n65), .Z(n6) );
  AN2XD1 U7 ( .A1(n8), .A2(n66), .Z(n7) );
  AN2XD1 U8 ( .A1(n18), .A2(n67), .Z(n8) );
  AN2XD1 U9 ( .A1(n10), .A2(n74), .Z(n9) );
  AN2XD1 U10 ( .A1(n24), .A2(n75), .Z(n10) );
  AN2XD1 U11 ( .A1(n12), .A2(n51), .Z(n11) );
  AN2XD1 U12 ( .A1(n32), .A2(n52), .Z(n12) );
  INVD1 U13 ( .I(B[37]), .ZN(n57) );
  AN2XD1 U14 ( .A1(n14), .A2(n55), .Z(n13) );
  AN2XD1 U15 ( .A1(n1), .A2(n56), .Z(n14) );
  AN2XD1 U16 ( .A1(n16), .A2(n58), .Z(n15) );
  INVD1 U17 ( .I(B[33]), .ZN(n61) );
  AN2XD1 U18 ( .A1(n17), .A2(n59), .Z(n16) );
  INVD1 U19 ( .I(B[32]), .ZN(n62) );
  AN2XD1 U20 ( .A1(n2), .A2(n60), .Z(n17) );
  INVD1 U21 ( .I(B[31]), .ZN(n63) );
  INVD1 U22 ( .I(B[30]), .ZN(n64) );
  INVD1 U23 ( .I(B[29]), .ZN(n65) );
  INVD1 U24 ( .I(B[28]), .ZN(n66) );
  INVD1 U25 ( .I(B[27]), .ZN(n67) );
  AN2XD1 U26 ( .A1(n19), .A2(n68), .Z(n18) );
  AN2XD1 U27 ( .A1(n20), .A2(n69), .Z(n19) );
  AN2XD1 U28 ( .A1(n21), .A2(n70), .Z(n20) );
  AN2XD1 U29 ( .A1(n22), .A2(n71), .Z(n21) );
  INVD1 U30 ( .I(B[20]), .ZN(n74) );
  AN2XD1 U31 ( .A1(n23), .A2(n72), .Z(n22) );
  INVD1 U32 ( .I(B[19]), .ZN(n75) );
  AN2XD1 U33 ( .A1(n9), .A2(n73), .Z(n23) );
  AN2XD1 U34 ( .A1(n25), .A2(n76), .Z(n24) );
  AN2XD1 U35 ( .A1(n26), .A2(n77), .Z(n25) );
  AN2XD1 U36 ( .A1(n27), .A2(n78), .Z(n26) );
  AN2XD1 U37 ( .A1(n35), .A2(n79), .Z(n27) );
  AN2XD1 U38 ( .A1(n39), .A2(n84), .Z(n28) );
  AN2XD1 U39 ( .A1(n42), .A2(n87), .Z(n29) );
  INVD1 U40 ( .I(B[43]), .ZN(n51) );
  AN2XD1 U41 ( .A1(n11), .A2(n50), .Z(n30) );
  INVD1 U42 ( .I(B[42]), .ZN(n52) );
  AN2XD1 U43 ( .A1(n43), .A2(n48), .Z(n31) );
  INVD1 U44 ( .I(B[39]), .ZN(n55) );
  AN2XD1 U45 ( .A1(n33), .A2(n53), .Z(n32) );
  INVD1 U46 ( .I(B[38]), .ZN(n56) );
  AN2XD1 U47 ( .A1(n13), .A2(n54), .Z(n33) );
  INVD1 U48 ( .I(B[36]), .ZN(n58) );
  AN2XD1 U49 ( .A1(n31), .A2(n47), .Z(DIFF[48]) );
  INVD1 U50 ( .I(B[35]), .ZN(n59) );
  INVD1 U51 ( .I(B[34]), .ZN(n60) );
  INVD1 U52 ( .I(B[26]), .ZN(n68) );
  INVD1 U53 ( .I(B[25]), .ZN(n69) );
  INVD1 U54 ( .I(B[24]), .ZN(n70) );
  INVD1 U55 ( .I(B[23]), .ZN(n71) );
  INVD1 U56 ( .I(B[22]), .ZN(n72) );
  INVD1 U57 ( .I(B[21]), .ZN(n73) );
  INVD1 U58 ( .I(B[18]), .ZN(n76) );
  INVD1 U59 ( .I(B[17]), .ZN(n77) );
  INVD1 U60 ( .I(B[16]), .ZN(n78) );
  INVD1 U61 ( .I(B[15]), .ZN(n79) );
  AN2XD1 U62 ( .A1(n36), .A2(n80), .Z(n35) );
  AN2XD1 U63 ( .A1(n37), .A2(n81), .Z(n36) );
  INVD1 U64 ( .I(B[10]), .ZN(n84) );
  AN2XD1 U65 ( .A1(n38), .A2(n82), .Z(n37) );
  AN2XD1 U66 ( .A1(n28), .A2(n83), .Z(n38) );
  INVD1 U67 ( .I(B[7]), .ZN(n87) );
  AN2XD1 U68 ( .A1(n40), .A2(n85), .Z(n39) );
  AN2XD1 U69 ( .A1(n29), .A2(n86), .Z(n40) );
  AN2XD1 U70 ( .A1(n45), .A2(n89), .Z(n41) );
  AN2XD1 U71 ( .A1(n41), .A2(n88), .Z(n42) );
  INVD1 U72 ( .I(B[46]), .ZN(n48) );
  INVD1 U73 ( .I(B[47]), .ZN(n47) );
  INVD1 U74 ( .I(B[44]), .ZN(n50) );
  AN2XD1 U75 ( .A1(n30), .A2(n49), .Z(n43) );
  INVD1 U76 ( .I(B[41]), .ZN(n53) );
  INVD1 U77 ( .I(B[40]), .ZN(n54) );
  INVD1 U78 ( .I(B[14]), .ZN(n80) );
  INVD1 U79 ( .I(B[13]), .ZN(n81) );
  INVD1 U80 ( .I(B[12]), .ZN(n82) );
  INVD1 U81 ( .I(B[11]), .ZN(n83) );
  INVD1 U82 ( .I(B[9]), .ZN(n85) );
  INVD1 U84 ( .I(B[8]), .ZN(n86) );
  INVD1 U85 ( .I(B[5]), .ZN(n89) );
  AN2XD1 U86 ( .A1(n44), .A2(n90), .Z(n45) );
  INVD1 U87 ( .I(B[6]), .ZN(n88) );
  INVD1 U88 ( .I(B[45]), .ZN(n49) );
  CKBD1 U90 ( .I(B[2]), .Z(DIFF[2]) );
  INVD1 U92 ( .I(B[4]), .ZN(n90) );
  CKXOR2D1 U93 ( .A1(n31), .A2(n47), .Z(DIFF[47]) );
  CKXOR2D1 U94 ( .A1(n43), .A2(n48), .Z(DIFF[46]) );
  CKXOR2D1 U95 ( .A1(n30), .A2(n49), .Z(DIFF[45]) );
  CKXOR2D1 U96 ( .A1(n11), .A2(n50), .Z(DIFF[44]) );
  CKXOR2D1 U97 ( .A1(n12), .A2(n51), .Z(DIFF[43]) );
  CKXOR2D1 U98 ( .A1(n32), .A2(n52), .Z(DIFF[42]) );
  CKXOR2D1 U99 ( .A1(n33), .A2(n53), .Z(DIFF[41]) );
  CKXOR2D1 U100 ( .A1(n13), .A2(n54), .Z(DIFF[40]) );
  CKXOR2D1 U101 ( .A1(n14), .A2(n55), .Z(DIFF[39]) );
  CKXOR2D1 U102 ( .A1(n1), .A2(n56), .Z(DIFF[38]) );
  CKXOR2D1 U103 ( .A1(n15), .A2(n57), .Z(DIFF[37]) );
  CKXOR2D1 U104 ( .A1(n16), .A2(n58), .Z(DIFF[36]) );
  CKXOR2D1 U105 ( .A1(n17), .A2(n59), .Z(DIFF[35]) );
  CKXOR2D1 U106 ( .A1(n2), .A2(n60), .Z(DIFF[34]) );
  CKXOR2D1 U107 ( .A1(n3), .A2(n61), .Z(DIFF[33]) );
  CKXOR2D1 U108 ( .A1(n4), .A2(n62), .Z(DIFF[32]) );
  CKXOR2D1 U109 ( .A1(n5), .A2(n63), .Z(DIFF[31]) );
  CKXOR2D1 U110 ( .A1(n6), .A2(n64), .Z(DIFF[30]) );
  CKXOR2D1 U111 ( .A1(n7), .A2(n65), .Z(DIFF[29]) );
  CKXOR2D1 U112 ( .A1(n8), .A2(n66), .Z(DIFF[28]) );
  CKXOR2D1 U113 ( .A1(n18), .A2(n67), .Z(DIFF[27]) );
  CKXOR2D1 U114 ( .A1(n19), .A2(n68), .Z(DIFF[26]) );
  CKXOR2D1 U115 ( .A1(n20), .A2(n69), .Z(DIFF[25]) );
  CKXOR2D1 U116 ( .A1(n21), .A2(n70), .Z(DIFF[24]) );
  CKXOR2D1 U117 ( .A1(n22), .A2(n71), .Z(DIFF[23]) );
  CKXOR2D1 U118 ( .A1(n23), .A2(n72), .Z(DIFF[22]) );
  CKXOR2D1 U119 ( .A1(n9), .A2(n73), .Z(DIFF[21]) );
  CKXOR2D1 U120 ( .A1(n10), .A2(n74), .Z(DIFF[20]) );
  CKXOR2D1 U121 ( .A1(n24), .A2(n75), .Z(DIFF[19]) );
  CKXOR2D1 U122 ( .A1(n25), .A2(n76), .Z(DIFF[18]) );
  CKXOR2D1 U123 ( .A1(n26), .A2(n77), .Z(DIFF[17]) );
  CKXOR2D1 U124 ( .A1(n27), .A2(n78), .Z(DIFF[16]) );
  CKXOR2D1 U125 ( .A1(n35), .A2(n79), .Z(DIFF[15]) );
  CKXOR2D1 U126 ( .A1(n36), .A2(n80), .Z(DIFF[14]) );
  CKXOR2D1 U127 ( .A1(n37), .A2(n81), .Z(DIFF[13]) );
  CKXOR2D1 U128 ( .A1(n38), .A2(n82), .Z(DIFF[12]) );
  CKXOR2D1 U129 ( .A1(n28), .A2(n83), .Z(DIFF[11]) );
  CKXOR2D1 U130 ( .A1(n39), .A2(n84), .Z(DIFF[10]) );
  CKXOR2D1 U131 ( .A1(n40), .A2(n85), .Z(DIFF[9]) );
  CKXOR2D1 U132 ( .A1(n29), .A2(n86), .Z(DIFF[8]) );
  CKXOR2D1 U133 ( .A1(n42), .A2(n87), .Z(DIFF[7]) );
  CKXOR2D1 U134 ( .A1(n41), .A2(n88), .Z(DIFF[6]) );
  CKXOR2D1 U135 ( .A1(n45), .A2(n89), .Z(DIFF[5]) );
  CKXOR2D1 U136 ( .A1(n44), .A2(n90), .Z(DIFF[4]) );
  CKXOR2D1 U137 ( .A1(n92), .A2(n91), .Z(DIFF[3]) );
  CKND0 U83 ( .I(B[3]), .ZN(n91) );
  CKND0 U89 ( .I(B[2]), .ZN(n92) );
  NR2D0 U91 ( .A1(B[2]), .A2(B[3]), .ZN(n44) );
endmodule


module lead_comb_core_DW01_sub_3_DW01_sub_4 ( A, B, CI, DIFF, CO );
  input [23:0] A;
  input [23:0] B;
  output [23:0] DIFF;
  input CI;
  output CO;
  wire   n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n19, n20, n21, n22, n23, n24;
  wire   [23:2] carry;

  FA1D0 U2_22 ( .A(A[22]), .B(n12), .CI(carry[22]), .CO(carry[23]), .S(
        DIFF[22]) );
  FA1D0 U2_18 ( .A(A[18]), .B(n9), .CI(carry[18]), .CO(carry[19]), .S(DIFF[18]) );
  FA1D0 U2_17 ( .A(A[17]), .B(n3), .CI(carry[17]), .CO(carry[18]), .S(DIFF[17]) );
  FA1D0 U2_8 ( .A(A[8]), .B(n23), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  FA1D0 U2_7 ( .A(A[7]), .B(n17), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  FA1D0 U2_6 ( .A(A[6]), .B(n11), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  FA1D0 U2_2 ( .A(A[2]), .B(n8), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  FA1D0 U2_21 ( .A(A[21]), .B(n6), .CI(carry[21]), .CO(carry[22]), .S(DIFF[21]) );
  FA1D0 U2_20 ( .A(A[20]), .B(n21), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  FA1D0 U2_19 ( .A(A[19]), .B(n15), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  FA1D0 U2_16 ( .A(A[16]), .B(n24), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  FA1D0 U2_15 ( .A(A[15]), .B(n19), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  FA1D0 U2_14 ( .A(A[14]), .B(n13), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  FA1D0 U2_13 ( .A(A[13]), .B(n7), .CI(carry[13]), .CO(carry[14]), .S(DIFF[13]) );
  FA1D0 U2_12 ( .A(A[12]), .B(n22), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  FA1D0 U2_11 ( .A(A[11]), .B(n16), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  FA1D0 U2_10 ( .A(A[10]), .B(n10), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  FA1D0 U2_9 ( .A(A[9]), .B(n4), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9]) );
  FA1D0 U2_5 ( .A(A[5]), .B(n5), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  FA1D0 U2_4 ( .A(A[4]), .B(n20), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FA1D0 U2_3 ( .A(A[3]), .B(n14), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  INVD1 U1 ( .I(B[3]), .ZN(n14) );
  INVD1 U2 ( .I(B[4]), .ZN(n20) );
  INVD1 U3 ( .I(B[5]), .ZN(n5) );
  INVD1 U4 ( .I(B[9]), .ZN(n4) );
  INVD1 U5 ( .I(B[10]), .ZN(n10) );
  INVD1 U6 ( .I(B[11]), .ZN(n16) );
  INVD1 U7 ( .I(B[12]), .ZN(n22) );
  INVD1 U8 ( .I(B[13]), .ZN(n7) );
  INVD1 U9 ( .I(B[14]), .ZN(n13) );
  INVD1 U10 ( .I(B[15]), .ZN(n19) );
  INVD1 U11 ( .I(B[16]), .ZN(n24) );
  INVD1 U12 ( .I(B[19]), .ZN(n15) );
  INVD1 U13 ( .I(B[20]), .ZN(n21) );
  INVD1 U14 ( .I(B[21]), .ZN(n6) );
  INVD1 U16 ( .I(B[2]), .ZN(n8) );
  INVD1 U18 ( .I(B[6]), .ZN(n11) );
  INVD1 U19 ( .I(B[7]), .ZN(n17) );
  INVD1 U20 ( .I(B[8]), .ZN(n23) );
  INVD1 U21 ( .I(B[17]), .ZN(n3) );
  INVD1 U22 ( .I(B[18]), .ZN(n9) );
  INVD1 U23 ( .I(B[22]), .ZN(n12) );
  XNR3D0 U15 ( .A1(carry[23]), .A2(A[23]), .A3(B[23]), .ZN(DIFF[23]) );
  CKXOR2D0 U17 ( .A1(A[1]), .A2(B[1]), .Z(DIFF[1]) );
  IND2D0 U24 ( .A1(A[1]), .B1(B[1]), .ZN(carry[2]) );
endmodule


module lead_comb_core_DW01_sub_4_DW01_sub_5 ( A, B, CI, DIFF, CO );
  input [23:0] A;
  input [23:0] B;
  output [23:0] DIFF;
  input CI;
  output CO;
  wire   n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n19, n20, n21, n22, n23, n24;
  wire   [23:2] carry;

  FA1D0 U2_2 ( .A(A[2]), .B(n8), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  FA1D0 U2_22 ( .A(A[22]), .B(n12), .CI(carry[22]), .CO(carry[23]), .S(
        DIFF[22]) );
  FA1D0 U2_16 ( .A(A[16]), .B(n24), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  FA1D0 U2_14 ( .A(A[14]), .B(n13), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  FA1D0 U2_12 ( .A(A[12]), .B(n22), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  FA1D0 U2_6 ( .A(A[6]), .B(n11), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  FA1D0 U2_21 ( .A(A[21]), .B(n6), .CI(carry[21]), .CO(carry[22]), .S(DIFF[21]) );
  FA1D0 U2_20 ( .A(A[20]), .B(n21), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  FA1D0 U2_19 ( .A(A[19]), .B(n15), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  FA1D0 U2_15 ( .A(A[15]), .B(n19), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  FA1D0 U2_13 ( .A(A[13]), .B(n7), .CI(carry[13]), .CO(carry[14]), .S(DIFF[13]) );
  FA1D0 U2_11 ( .A(A[11]), .B(n16), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  FA1D0 U2_10 ( .A(A[10]), .B(n10), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  FA1D0 U2_9 ( .A(A[9]), .B(n4), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9]) );
  FA1D0 U2_5 ( .A(A[5]), .B(n5), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  FA1D0 U2_4 ( .A(A[4]), .B(n20), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FA1D0 U2_3 ( .A(A[3]), .B(n14), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  FA1D0 U2_18 ( .A(A[18]), .B(n9), .CI(carry[18]), .CO(carry[19]), .S(DIFF[18]) );
  FA1D0 U2_17 ( .A(A[17]), .B(n3), .CI(carry[17]), .CO(carry[18]), .S(DIFF[17]) );
  FA1D0 U2_8 ( .A(A[8]), .B(n23), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  FA1D0 U2_7 ( .A(A[7]), .B(n17), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  INVD1 U1 ( .I(B[7]), .ZN(n17) );
  INVD1 U2 ( .I(B[8]), .ZN(n23) );
  INVD1 U3 ( .I(B[17]), .ZN(n3) );
  INVD1 U4 ( .I(B[18]), .ZN(n9) );
  INVD1 U5 ( .I(B[3]), .ZN(n14) );
  INVD1 U6 ( .I(B[4]), .ZN(n20) );
  INVD1 U7 ( .I(B[5]), .ZN(n5) );
  INVD1 U8 ( .I(B[9]), .ZN(n4) );
  INVD1 U9 ( .I(B[10]), .ZN(n10) );
  INVD1 U10 ( .I(B[11]), .ZN(n16) );
  INVD1 U11 ( .I(B[13]), .ZN(n7) );
  INVD1 U12 ( .I(B[15]), .ZN(n19) );
  INVD1 U13 ( .I(B[19]), .ZN(n15) );
  INVD1 U14 ( .I(B[20]), .ZN(n21) );
  INVD1 U15 ( .I(B[21]), .ZN(n6) );
  INVD1 U16 ( .I(B[6]), .ZN(n11) );
  INVD1 U17 ( .I(B[12]), .ZN(n22) );
  INVD1 U18 ( .I(B[14]), .ZN(n13) );
  INVD1 U19 ( .I(B[16]), .ZN(n24) );
  INVD1 U20 ( .I(B[22]), .ZN(n12) );
  INVD1 U22 ( .I(B[2]), .ZN(n8) );
  XNR3D0 U21 ( .A1(carry[23]), .A2(A[23]), .A3(B[23]), .ZN(DIFF[23]) );
  CKXOR2D0 U23 ( .A1(A[1]), .A2(B[1]), .Z(DIFF[1]) );
  IND2D0 U24 ( .A1(A[1]), .B1(B[1]), .ZN(carry[2]) );
endmodule


module lead_comb_core_DW_cmp_1 ( A, B, TC, GE_LT, GE_GT_EQ, GE_LT_GT_LE, EQ_NE
 );
  input [23:0] A;
  input [23:0] B;
  input TC, GE_LT, GE_GT_EQ;
  output GE_LT_GT_LE, EQ_NE;
  wire   n989, n919, n920, n921, n922, n923, n924, n925, n926, n927, n928,
         n929, n930, n931, n932, n933, n934, n935, n936, n937, n938, n939,
         n940, n941, n942, n943, n944, n945, n946, n947, n948, n949, n950,
         n951, n952, n953, n954, n955, n956, n957, n958, n959, n960, n961,
         n962, n963, n964, n965, n966, n967, n968, n969, n970, n971, n972,
         n973, n974, n975, n976, n977, n978, n979, n980, n981, n982, n983,
         n984, n985, n986, n987, n988;

  INVD1 U463 ( .I(n956), .ZN(n921) );
  INVD1 U464 ( .I(n968), .ZN(n932) );
  INVD1 U465 ( .I(n983), .ZN(n934) );
  INVD1 U466 ( .I(n949), .ZN(n933) );
  CKBD1 U467 ( .I(n989), .Z(GE_LT_GT_LE) );
  INVD1 U468 ( .I(n963), .ZN(n928) );
  INVD1 U469 ( .I(B[4]), .ZN(n936) );
  INVD1 U470 ( .I(B[3]), .ZN(n929) );
  INVD1 U471 ( .I(B[15]), .ZN(n935) );
  INVD1 U472 ( .I(B[12]), .ZN(n938) );
  INVD1 U473 ( .I(B[20]), .ZN(n937) );
  INVD1 U474 ( .I(A[2]), .ZN(n941) );
  INVD1 U475 ( .I(B[19]), .ZN(n930) );
  INVD1 U476 ( .I(B[16]), .ZN(n939) );
  INVD1 U477 ( .I(B[11]), .ZN(n931) );
  INVD1 U478 ( .I(B[10]), .ZN(n924) );
  INVD1 U479 ( .I(A[18]), .ZN(n942) );
  INVD1 U480 ( .I(B[22]), .ZN(n926) );
  INVD1 U481 ( .I(B[5]), .ZN(n920) );
  INVD1 U482 ( .I(B[13]), .ZN(n923) );
  INVD1 U483 ( .I(B[21]), .ZN(n922) );
  INVD1 U484 ( .I(B[9]), .ZN(n919) );
  INVD1 U485 ( .I(B[6]), .ZN(n925) );
  INVD1 U486 ( .I(A[8]), .ZN(n945) );
  INVD1 U487 ( .I(A[17]), .ZN(n940) );
  INVD1 U488 ( .I(B[14]), .ZN(n927) );
  INVD1 U489 ( .I(A[7]), .ZN(n943) );
  INVD1 U490 ( .I(A[23]), .ZN(n944) );
  OAI32D0 U491 ( .A1(n946), .A2(n947), .A3(n948), .B1(n949), .B2(n950), .ZN(
        n989) );
  AOI221D0 U492 ( .A1(B[23]), .A2(n944), .B1(n951), .B2(n952), .C(n953), .ZN(
        n950) );
  AOI221D0 U493 ( .A1(n954), .A2(n955), .B1(n955), .B2(n947), .C(n956), .ZN(
        n953) );
  OA32D0 U494 ( .A1(n930), .A2(A[19]), .A3(n957), .B1(A[20]), .B2(n937), .Z(
        n955) );
  AOI32D0 U495 ( .A1(n958), .A2(n940), .A3(B[17]), .B1(B[18]), .B2(n942), .ZN(
        n954) );
  OAI22D0 U496 ( .A1(A[22]), .A2(n926), .B1(A[21]), .B2(n922), .ZN(n951) );
  OAI31D0 U497 ( .A1(n959), .A2(n960), .A3(n961), .B(n921), .ZN(n948) );
  IOA21D0 U498 ( .A1(n922), .A2(A[21]), .B(n952), .ZN(n956) );
  CKND2D0 U499 ( .A1(A[22]), .A2(n926), .ZN(n952) );
  OA211D0 U500 ( .A1(n962), .A2(n963), .B(n932), .C(n964), .Z(n961) );
  AOI221D0 U501 ( .A1(n965), .A2(n928), .B1(A[5]), .B2(n920), .C(n966), .ZN(
        n964) );
  AOI22D0 U502 ( .A1(B[2]), .A2(n941), .B1(n967), .B2(B[1]), .ZN(n965) );
  IAO21D0 U503 ( .A1(n941), .A2(B[2]), .B(A[1]), .ZN(n967) );
  OAI32D0 U504 ( .A1(n929), .A2(A[3]), .A3(n969), .B1(A[4]), .B2(n936), .ZN(
        n963) );
  AOI21D0 U505 ( .A1(A[3]), .A2(n929), .B(n969), .ZN(n962) );
  AN2D0 U506 ( .A1(A[4]), .A2(n936), .Z(n969) );
  AOI32D0 U509 ( .A1(B[7]), .A2(n943), .A3(n972), .B1(n945), .B2(B[8]), .ZN(
        n971) );
  OR2D0 U510 ( .A1(B[8]), .A2(n945), .Z(n972) );
  OA32D0 U511 ( .A1(n966), .A2(A[5]), .A3(n920), .B1(n925), .B2(A[6]), .Z(n970) );
  INR2D0 U512 ( .A1(A[6]), .B1(B[6]), .ZN(n966) );
  AO21D0 U513 ( .A1(n930), .A2(A[19]), .B(n957), .Z(n947) );
  AN2D0 U514 ( .A1(A[20]), .A2(n937), .Z(n957) );
  OAI211D0 U515 ( .A1(n973), .A2(n959), .B(n933), .C(n974), .ZN(n946) );
  OA21D0 U516 ( .A1(n940), .A2(B[17]), .B(n958), .Z(n974) );
  OR2D0 U517 ( .A1(B[18]), .A2(n942), .Z(n958) );
  NR2D0 U518 ( .A1(n944), .A2(B[23]), .ZN(n949) );
  CKND2D0 U519 ( .A1(n975), .A2(n976), .ZN(n959) );
  OAI221D0 U520 ( .A1(n977), .A2(n978), .B1(n979), .B2(n977), .C(n980), .ZN(
        n976) );
  OAI32D0 U521 ( .A1(n919), .A2(A[9]), .A3(n981), .B1(A[10]), .B2(n924), .ZN(
        n978) );
  OAI32D0 U522 ( .A1(n931), .A2(A[11]), .A3(n982), .B1(A[12]), .B2(n938), .ZN(
        n977) );
  OAI32D0 U524 ( .A1(n923), .A2(A[13]), .A3(n986), .B1(A[14]), .B2(n927), .ZN(
        n985) );
  OAI32D0 U525 ( .A1(n935), .A2(A[15]), .A3(n987), .B1(A[16]), .B2(n939), .ZN(
        n984) );
  IINR4D0 U526 ( .A1(n980), .A2(n979), .B1(n988), .B2(n981), .ZN(n973) );
  AN2D0 U527 ( .A1(A[10]), .A2(n924), .Z(n981) );
  AN2D0 U528 ( .A1(A[9]), .A2(n919), .Z(n988) );
  AOI21D0 U529 ( .A1(n931), .A2(A[11]), .B(n982), .ZN(n979) );
  INR2D0 U530 ( .A1(A[12]), .B1(B[12]), .ZN(n982) );
  AOI211D0 U531 ( .A1(n923), .A2(A[13]), .B(n986), .C(n934), .ZN(n980) );
  INR2D0 U533 ( .A1(A[16]), .B1(B[16]), .ZN(n987) );
  INR2D0 U534 ( .A1(A[14]), .B1(B[14]), .ZN(n986) );
  OAI21D0 U507 ( .A1(n970), .A2(n968), .B(n971), .ZN(n960) );
  OAI21D0 U508 ( .A1(B[7]), .A2(n943), .B(n972), .ZN(n968) );
  AOI21D0 U523 ( .A1(n985), .A2(n983), .B(n984), .ZN(n975) );
  AOI21D0 U532 ( .A1(A[15]), .A2(n935), .B(n987), .ZN(n983) );
endmodule


module lead_comb_core_DW_mult_uns_1 ( a, b, product );
  input [23:0] a;
  input [23:0] b;
  output [47:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n46, n47,
         n48, n49, n50, n51, n53, n54, n56, n57, n58, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n116, n117, n118, n119, n120,
         n121, n122, n123, n124, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n171, n172, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n188, n189, n190, n191, n192, n193, n194, n195, n196,
         n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207,
         n208, n209, n210, n211, n212, n213, n214, n215, n216, n217, n218,
         n219, n220, n221, n222, n223, n224, n225, n226, n227, n228, n229,
         n230, n231, n232, n233, n234, n235, n236, n237, n238, n239, n240,
         n241, n242, n243, n244, n245, n246, n247, n248, n249, n250, n251,
         n252, n253, n254, n255, n256, n257, n258, n259, n260, n261, n262,
         n263, n264, n265, n266, n267, n268, n269, n270, n271, n272, n273,
         n274, n275, n276, n277, n278, n279, n280, n281, n282, n283, n284,
         n285, n286, n287, n288, n289, n290, n291, n292, n293, n294, n295,
         n296, n297, n298, n299, n300, n301, n302, n303, n304, n305, n306,
         n307, n308, n309, n310, n311, n312, n313, n314, n315, n316, n317,
         n318, n319, n320, n321, n322, n323, n324, n325, n326, n327, n328,
         n329, n330, n331, n332, n333, n334, n335, n336, n337, n338, n339,
         n340, n341, n342, n343, n344, n345, n346, n347, n348, n498, n499,
         n500, n501, n502, n503, n504, n505, n506, n507, n508, n509, n510,
         n511, n512, n513, n514, n515, n516, n518, n519, n520, n521, n522,
         n523, n524, n525, n526, n527, n528, n533, n534, n535, n536, n537,
         n538, n539, n540, n541, n542, n543, n544, n545, n546, n547, n548,
         n549, n550, n551, n552, n553, n554;

  FA1D0 U2 ( .A(n46), .B(n512), .CI(n2), .CO(n1), .S(product[46]) );
  FA1D0 U3 ( .A(n47), .B(n48), .CI(n3), .CO(n2), .S(product[45]) );
  FA1D0 U4 ( .A(n50), .B(n49), .CI(n4), .CO(n3), .S(product[44]) );
  FA1D0 U5 ( .A(n53), .B(n51), .CI(n5), .CO(n4), .S(product[43]) );
  FA1D0 U6 ( .A(n57), .B(n54), .CI(n6), .CO(n5), .S(product[42]) );
  FA1D0 U7 ( .A(n61), .B(n58), .CI(n7), .CO(n6), .S(product[41]) );
  FA1D0 U8 ( .A(n66), .B(n62), .CI(n8), .CO(n7), .S(product[40]) );
  FA1D0 U9 ( .A(n73), .B(n67), .CI(n9), .CO(n8), .S(product[39]) );
  FA1D0 U10 ( .A(n80), .B(n74), .CI(n10), .CO(n9), .S(product[38]) );
  FA1D0 U11 ( .A(n87), .B(n81), .CI(n11), .CO(n10), .S(product[37]) );
  FA1D0 U12 ( .A(n96), .B(n88), .CI(n12), .CO(n11), .S(product[36]) );
  FA1D0 U13 ( .A(n106), .B(n97), .CI(n13), .CO(n12), .S(product[35]) );
  FA1D0 U14 ( .A(n117), .B(n107), .CI(n14), .CO(n13), .S(product[34]) );
  FA1D0 U15 ( .A(n128), .B(n118), .CI(n15), .CO(n14), .S(product[33]) );
  FA1D0 U16 ( .A(n139), .B(n129), .CI(n16), .CO(n15), .S(product[32]) );
  FA1D0 U17 ( .A(n150), .B(n140), .CI(n17), .CO(n16), .S(product[31]) );
  FA1D0 U18 ( .A(n163), .B(n151), .CI(n18), .CO(n17), .S(product[30]) );
  FA1D0 U19 ( .A(n176), .B(n164), .CI(n19), .CO(n18), .S(product[29]) );
  FA1D0 U20 ( .A(n189), .B(n177), .CI(n20), .CO(n19), .S(product[28]) );
  FA1D0 U21 ( .A(n202), .B(n190), .CI(n21), .CO(n20), .S(product[27]) );
  FA1D0 U22 ( .A(n203), .B(n215), .CI(n22), .CO(n21), .S(product[26]) );
  FA1D0 U23 ( .A(n228), .B(n216), .CI(n23), .CO(n22), .S(product[25]) );
  FA1D0 U24 ( .A(n229), .B(n240), .CI(n24), .CO(n23), .S(product[24]) );
  FA1D0 U25 ( .A(n253), .B(n241), .CI(n25), .CO(n24), .S(product[23]) );
  FA1D0 U26 ( .A(n264), .B(n254), .CI(n26), .CO(n25), .S(product[22]) );
  FA1D0 U27 ( .A(n265), .B(n275), .CI(n27), .CO(n26), .S(product[21]) );
  FA1D0 U28 ( .A(n276), .B(n285), .CI(n28), .CO(n27), .S(product[20]) );
  FA1D0 U29 ( .A(n293), .B(n286), .CI(n29), .CO(n28), .S(product[19]) );
  FA1D0 U30 ( .A(n294), .B(n301), .CI(n30), .CO(n29), .S(product[18]) );
  FA1D0 U31 ( .A(n302), .B(n309), .CI(n31), .CO(n30), .S(product[17]) );
  FA1D0 U32 ( .A(n310), .B(n317), .CI(n32), .CO(n31), .S(product[16]) );
  FA1D0 U33 ( .A(n318), .B(n323), .CI(n33), .CO(n32), .S(product[15]) );
  FA1D0 U34 ( .A(n324), .B(n330), .CI(n34), .CO(n33), .S(product[14]) );
  FA1D0 U35 ( .A(n335), .B(n331), .CI(n35), .CO(n34), .S(product[13]) );
  FA1D0 U36 ( .A(n336), .B(n337), .CI(n36), .CO(n35), .S(product[12]) );
  FA1D0 U37 ( .A(n338), .B(n341), .CI(n37), .CO(n36), .S(product[11]) );
  FA1D0 U38 ( .A(n343), .B(n342), .CI(n38), .CO(n37), .S(product[10]) );
  FA1D0 U39 ( .A(n345), .B(n344), .CI(n39), .CO(n38), .S(product[9]) );
  FA1D0 U40 ( .A(n346), .B(n347), .CI(n40), .CO(n39), .S(product[8]) );
  FA1D0 U42 ( .A(a[5]), .B(n511), .CI(n42), .CO(n41), .S(product[6]) );
  FA1D0 U52 ( .A(a[21]), .B(a[20]), .CI(n512), .CO(n50), .S(n51) );
  FA1D0 U54 ( .A(n513), .B(a[19]), .CI(n56), .CO(n53), .S(n54) );
  CMPE42D1 U56 ( .A(a[18]), .B(a[20]), .C(n514), .CIX(n60), .D(n63), .CO(n57), 
        .COX(n56), .S(n58) );
  CMPE42D1 U58 ( .A(a[23]), .B(a[19]), .C(n64), .CIX(n65), .D(n68), .CO(n61), 
        .COX(n60), .S(n62) );
  CMPE42D1 U61 ( .A(n77), .B(a[19]), .C(n75), .CIX(n72), .D(n69), .CO(n66), 
        .COX(n65), .S(n67) );
  FA1D0 U62 ( .A(a[18]), .B(a[16]), .CI(n512), .CO(n68), .S(n69) );
  CMPE42D1 U65 ( .A(n78), .B(n84), .C(n76), .CIX(n79), .D(n82), .CO(n73), 
        .COX(n72), .S(n74) );
  FA1D0 U66 ( .A(a[17]), .B(a[23]), .CI(a[18]), .CO(n75), .S(n76) );
  CMPE42D1 U69 ( .A(n92), .B(n89), .C(n83), .CIX(n86), .D(n90), .CO(n80), 
        .COX(n79), .S(n81) );
  FA1D0 U70 ( .A(a[21]), .B(a[14]), .CI(n85), .CO(n82), .S(n83) );
  CMPE42D1 U73 ( .A(n98), .B(n101), .C(n91), .CIX(n95), .D(n99), .CO(n87), 
        .COX(n86), .S(n88) );
  CMPE42D1 U74 ( .A(a[20]), .B(a[13]), .C(a[16]), .CIX(n93), .D(n103), .CO(n90), .COX(n89), .S(n91) );
  FA1D0 U75 ( .A(a[22]), .B(a[15]), .CI(n512), .CO(n92), .S(n93) );
  CMPE42D1 U77 ( .A(n112), .B(n111), .C(n109), .CIX(n105), .D(n100), .CO(n96), 
        .COX(n95), .S(n97) );
  CMPE42D1 U78 ( .A(a[11]), .B(a[15]), .C(n104), .CIX(n102), .D(n108), .CO(n99), .COX(n98), .S(n100) );
  FA1D0 U79 ( .A(a[21]), .B(a[14]), .CI(a[19]), .CO(n101), .S(n102) );
  CMPE42D1 U82 ( .A(n113), .B(n110), .C(n120), .CIX(n116), .D(n123), .CO(n106), 
        .COX(n105), .S(n107) );
  CMPE42D1 U83 ( .A(a[21]), .B(a[18]), .C(a[20]), .CIX(n119), .D(a[13]), .CO(
        n109), .COX(n108), .S(n110) );
  CMPE42D1 U84 ( .A(a[23]), .B(a[14]), .C(a[10]), .CIX(n122), .D(n525), .CO(
        n112), .COX(n111), .S(n113) );
  CMPE42D1 U87 ( .A(n124), .B(n121), .C(n131), .CIX(n127), .D(n134), .CO(n117), 
        .COX(n116), .S(n118) );
  CMPE42D1 U88 ( .A(a[20]), .B(a[17]), .C(a[19]), .CIX(n130), .D(a[12]), .CO(
        n120), .COX(n119), .S(n121) );
  CMPE42D1 U89 ( .A(a[22]), .B(a[13]), .C(a[21]), .CIX(n133), .D(n526), .CO(
        n123), .COX(n122), .S(n124) );
  CMPE42D1 U92 ( .A(n145), .B(n135), .C(n132), .CIX(n138), .D(n142), .CO(n128), 
        .COX(n127), .S(n129) );
  CMPE42D1 U93 ( .A(a[18]), .B(a[11]), .C(a[16]), .CIX(n141), .D(a[9]), .CO(
        n131), .COX(n130), .S(n132) );
  CMPE42D1 U94 ( .A(a[19]), .B(a[12]), .C(n514), .CIX(n144), .D(n147), .CO(
        n134), .COX(n133), .S(n135) );
  CMPE42D1 U97 ( .A(n156), .B(n146), .C(n143), .CIX(n149), .D(n153), .CO(n139), 
        .COX(n138), .S(n140) );
  CMPE42D1 U98 ( .A(a[7]), .B(a[10]), .C(n148), .CIX(n152), .D(n155), .CO(n142), .COX(n141), .S(n143) );
  CMPE42D1 U99 ( .A(a[20]), .B(a[11]), .C(a[18]), .CIX(n158), .D(a[17]), .CO(
        n145), .COX(n144), .S(n146) );
  CMPE42D1 U102 ( .A(n169), .B(n157), .C(n154), .CIX(n162), .D(n166), .CO(n150), .COX(n149), .S(n151) );
  CMPE42D1 U103 ( .A(a[6]), .B(a[9]), .C(n168), .CIX(n165), .D(n171), .CO(n153), .COX(n152), .S(n154) );
  CMPE42D1 U104 ( .A(a[19]), .B(a[10]), .C(a[17]), .CIX(n159), .D(a[16]), .CO(
        n156), .COX(n155), .S(n157) );
  FA1D0 U105 ( .A(a[23]), .B(a[14]), .CI(n505), .CO(n158), .S(n159) );
  CMPE42D1 U108 ( .A(n182), .B(n170), .C(n167), .CIX(n175), .D(n179), .CO(n163), .COX(n162), .S(n164) );
  CMPE42D1 U109 ( .A(a[21]), .B(a[8]), .C(n181), .CIX(n178), .D(n184), .CO(
        n166), .COX(n165), .S(n167) );
  CMPE42D1 U110 ( .A(a[18]), .B(a[9]), .C(a[16]), .CIX(n172), .D(a[15]), .CO(
        n169), .COX(n168), .S(n170) );
  FA1D0 U111 ( .A(a[22]), .B(a[13]), .CI(n506), .CO(n171), .S(n172) );
  CMPE42D1 U114 ( .A(n195), .B(n183), .C(n180), .CIX(n188), .D(n192), .CO(n176), .COX(n175), .S(n177) );
  CMPE42D1 U115 ( .A(a[5]), .B(a[12]), .C(n194), .CIX(n191), .D(n197), .CO(
        n179), .COX(n178), .S(n180) );
  CMPE42D1 U116 ( .A(a[15]), .B(a[7]), .C(a[14]), .CIX(n185), .D(n199), .CO(
        n182), .COX(n181), .S(n183) );
  FA1D0 U117 ( .A(a[17]), .B(a[8]), .CI(n514), .CO(n184), .S(n185) );
  CMPE42D1 U120 ( .A(n208), .B(n196), .C(n193), .CIX(n201), .D(n205), .CO(n189), .COX(n188), .S(n190) );
  CMPE42D1 U121 ( .A(n200), .B(a[13]), .C(n207), .CIX(n204), .D(n210), .CO(
        n192), .COX(n191), .S(n193) );
  CMPE42D1 U122 ( .A(a[6]), .B(a[14]), .C(a[11]), .CIX(n198), .D(n212), .CO(
        n195), .COX(n194), .S(n196) );
  FA1D0 U123 ( .A(a[16]), .B(a[7]), .CI(a[4]), .CO(n197), .S(n198) );
  HA1D0 U124 ( .A(a[20]), .B(n512), .CO(n199), .S(n200) );
  CMPE42D1 U125 ( .A(n217), .B(n221), .C(n206), .CIX(n214), .D(n218), .CO(n202), .COX(n201), .S(n203) );
  CMPE42D1 U126 ( .A(n213), .B(a[12]), .C(n220), .CIX(n209), .D(n223), .CO(
        n205), .COX(n204), .S(n206) );
  CMPE42D1 U127 ( .A(a[5]), .B(a[13]), .C(a[10]), .CIX(n211), .D(n225), .CO(
        n208), .COX(n207), .S(n209) );
  FA1D0 U128 ( .A(a[15]), .B(a[6]), .CI(product[4]), .CO(n210), .S(n211) );
  HA1D0 U129 ( .A(a[19]), .B(n513), .CO(n212), .S(n213) );
  CMPE42D1 U130 ( .A(n234), .B(n237), .C(n231), .CIX(n227), .D(n219), .CO(n215), .COX(n214), .S(n216) );
  CMPE42D1 U131 ( .A(n236), .B(n226), .C(n230), .CIX(n222), .D(n233), .CO(n218), .COX(n217), .S(n219) );
  CMPE42D1 U132 ( .A(product[3]), .B(a[11]), .C(a[5]), .CIX(n224), .D(a[4]), 
        .CO(n221), .COX(n220), .S(n222) );
  FA1D0 U133 ( .A(a[14]), .B(a[9]), .CI(a[12]), .CO(n223), .S(n224) );
  HA1D0 U134 ( .A(a[18]), .B(n514), .CO(n225), .S(n226) );
  CMPE42D1 U135 ( .A(n246), .B(n235), .C(n243), .CIX(n239), .D(n232), .CO(n228), .COX(n227), .S(n229) );
  CMPE42D1 U136 ( .A(a[10]), .B(a[13]), .C(a[11]), .CIX(n238), .D(n242), .CO(
        n231), .COX(n230), .S(n232) );
  CMPE42D1 U137 ( .A(a[8]), .B(a[23]), .C(a[17]), .CIX(n245), .D(n250), .CO(
        n234), .COX(n233), .S(n235) );
  CMPE42D1 U138 ( .A(product[4]), .B(n515), .C(a[1]), .CIX(n248), .D(a[4]), 
        .CO(n237), .COX(n236), .S(n238) );
  CMPE42D1 U139 ( .A(n259), .B(n247), .C(n256), .CIX(n252), .D(n244), .CO(n240), .COX(n239), .S(n241) );
  CMPE42D1 U140 ( .A(n251), .B(product[4]), .C(n255), .CIX(n261), .D(n258), 
        .CO(n243), .COX(n242), .S(n244) );
  FA1D0 U142 ( .A(a[22]), .B(a[9]), .CI(a[16]), .CO(n248), .S(n249) );
  CMPE42D1 U144 ( .A(n270), .B(n260), .C(n267), .CIX(n263), .D(n257), .CO(n253), .COX(n252), .S(n254) );
  CMPE42D1 U145 ( .A(a[8]), .B(a[11]), .C(a[9]), .CIX(n269), .D(n266), .CO(
        n256), .COX(n255), .S(n257) );
  CMPE42D1 U146 ( .A(a[6]), .B(a[21]), .C(a[15]), .CIX(n262), .D(n272), .CO(
        n259), .COX(n258), .S(n260) );
  FA1D0 U147 ( .A(product[3]), .B(n518), .CI(a[1]), .CO(n261), .S(n262) );
  CMPE42D1 U148 ( .A(n268), .B(n273), .C(n271), .CIX(n274), .D(n278), .CO(n264), .COX(n263), .S(n265) );
  CMPE42D1 U149 ( .A(a[7]), .B(a[14]), .C(a[8]), .CIX(n277), .D(a[10]), .CO(
        n267), .COX(n266), .S(n268) );
  HA1D0 U151 ( .A(a[1]), .B(n519), .CO(n272), .S(n273) );
  CMPE42D1 U152 ( .A(n290), .B(n287), .C(n279), .CIX(n284), .D(n288), .CO(n275), .COX(n274), .S(n276) );
  CMPE42D1 U153 ( .A(a[6]), .B(a[13]), .C(a[9]), .CIX(n281), .D(n283), .CO(
        n278), .COX(n277), .S(n279) );
  HA1D0 U155 ( .A(a[4]), .B(n520), .CO(n282), .S(n283) );
  CMPE42D1 U156 ( .A(n291), .B(n295), .C(n289), .CIX(n292), .D(n296), .CO(n285), .COX(n284), .S(n286) );
  CMPE42D1 U157 ( .A(a[12]), .B(a[6]), .C(a[8]), .CIX(n298), .D(product[4]), 
        .CO(n288), .COX(n287), .S(n289) );
  FA1D0 U158 ( .A(a[5]), .B(n521), .CI(a[18]), .CO(n290), .S(n291) );
  CMPE42D1 U159 ( .A(n299), .B(n303), .C(n297), .CIX(n300), .D(n304), .CO(n293), .COX(n292), .S(n294) );
  CMPE42D1 U160 ( .A(a[11]), .B(a[5]), .C(a[7]), .CIX(n306), .D(product[3]), 
        .CO(n296), .COX(n295), .S(n297) );
  FA1D0 U161 ( .A(a[4]), .B(n522), .CI(a[17]), .CO(n298), .S(n299) );
  CMPE42D1 U162 ( .A(n311), .B(a[6]), .C(n308), .CIX(n312), .D(n305), .CO(n301), .COX(n300), .S(n302) );
  CMPE42D1 U163 ( .A(a[4]), .B(a[16]), .C(a[10]), .CIX(n307), .D(n314), .CO(
        n304), .COX(n303), .S(n305) );
  FA1D0 U164 ( .A(product[4]), .B(n523), .CI(a[1]), .CO(n306), .S(n307) );
  CMPE42D1 U165 ( .A(n315), .B(product[4]), .C(n319), .CIX(n320), .D(n313), 
        .CO(n309), .COX(n308), .S(n310) );
  HA1D0 U167 ( .A(product[3]), .B(n524), .CO(n314), .S(n315) );
  CMPE42D1 U168 ( .A(a[8]), .B(a[14]), .C(n327), .CIX(n321), .D(n322), .CO(
        n317), .COX(n316), .S(n318) );
  CMPE42D1 U169 ( .A(product[3]), .B(n525), .C(a[1]), .CIX(n325), .D(a[4]), 
        .CO(n320), .COX(n319), .S(n321) );
  CMPE42D1 U170 ( .A(n332), .B(a[7]), .C(n328), .CIX(n326), .D(n329), .CO(n323), .COX(n322), .S(n324) );
  HA1D0 U172 ( .A(a[1]), .B(n526), .CO(n327), .S(n328) );
  HA1D0 U174 ( .A(product[3]), .B(n500), .CO(n332), .S(n333) );
  CMPE42D1 U175 ( .A(a[11]), .B(n503), .C(a[1]), .CIX(n339), .D(a[5]), .CO(
        n335), .COX(n334), .S(n336) );
  HA1D0 U177 ( .A(a[10]), .B(n505), .CO(n339), .S(n340) );
  FA1D0 U178 ( .A(a[9]), .B(n506), .CI(product[4]), .CO(n341), .S(n342) );
  FA1D0 U179 ( .A(a[8]), .B(n507), .CI(product[3]), .CO(n343), .S(n344) );
  FA1D0 U180 ( .A(a[7]), .B(n508), .CI(a[1]), .CO(n345), .S(n346) );
  HA1D0 U181 ( .A(a[6]), .B(n510), .CO(n347), .S(n348) );
  INVD1 U234 ( .I(n333), .ZN(n499) );
  INVD1 U235 ( .I(n249), .ZN(n501) );
  INVD1 U237 ( .I(n316), .ZN(n498) );
  INVD1 U238 ( .I(n282), .ZN(n509) );
  INVD1 U239 ( .I(product[3]), .ZN(n511) );
  INVD1 U240 ( .I(product[4]), .ZN(n510) );
  INVD1 U241 ( .I(a[5]), .ZN(n507) );
  INVD1 U242 ( .I(a[7]), .ZN(n505) );
  INVD1 U243 ( .I(a[6]), .ZN(n506) );
  INVD1 U244 ( .I(a[8]), .ZN(n503) );
  INVD1 U245 ( .I(a[9]), .ZN(n500) );
  INVD1 U246 ( .I(n334), .ZN(n502) );
  INVD1 U247 ( .I(a[10]), .ZN(n526) );
  INVD1 U248 ( .I(a[14]), .ZN(n522) );
  INVD1 U249 ( .I(a[12]), .ZN(n524) );
  INVD1 U250 ( .I(a[20]), .ZN(n515) );
  INVD1 U251 ( .I(a[11]), .ZN(n525) );
  INVD1 U252 ( .I(a[15]), .ZN(n521) );
  INVD1 U253 ( .I(a[16]), .ZN(n520) );
  INVD1 U254 ( .I(a[22]), .ZN(n513) );
  INVD1 U256 ( .I(a[21]), .ZN(n514) );
  INVD1 U257 ( .I(a[17]), .ZN(n519) );
  INVD1 U258 ( .I(a[4]), .ZN(n508) );
  INVD1 U259 ( .I(a[1]), .ZN(n516) );
  CKBD1 U260 ( .I(a[2]), .Z(product[3]) );
  CKBD1 U261 ( .I(a[3]), .Z(product[4]) );
  INVD1 U262 ( .I(a[13]), .ZN(n523) );
  INVD1 U263 ( .I(a[18]), .ZN(n518) );
  INVD1 U264 ( .I(a[23]), .ZN(n512) );
  CKBD1 U265 ( .I(a[1]), .Z(product[2]) );
  AN2D0 U266 ( .A1(n41), .A2(n348), .Z(n40) );
  CKXOR2D0 U267 ( .A1(n41), .A2(n348), .Z(product[7]) );
  OR2D0 U268 ( .A1(n516), .A2(a[4]), .Z(n42) );
  XNR2D0 U269 ( .A1(n516), .A2(a[4]), .ZN(product[5]) );
  AN2D0 U270 ( .A1(n340), .A2(a[4]), .Z(n337) );
  CKXOR2D0 U271 ( .A1(n340), .A2(a[4]), .Z(n338) );
  CKND2D0 U272 ( .A1(n527), .A2(n528), .ZN(n312) );
  OAI222D0 U273 ( .A1(n507), .A2(n500), .B1(n521), .B2(n500), .C1(n507), .C2(
        n521), .ZN(n311) );
  XOR4D0 U274 ( .A1(a[15]), .A2(a[9]), .A3(n316), .A4(a[5]), .Z(n313) );
  OAI211D0 U281 ( .A1(n499), .A2(n502), .B(n533), .C(n534), .ZN(n330) );
  INR2D0 U282 ( .A1(a[6]), .B1(n524), .ZN(n329) );
  XOR4D0 U283 ( .A1(n524), .A2(a[6]), .A3(n499), .A4(n334), .Z(n331) );
  NR2D0 U284 ( .A1(a[12]), .A2(n499), .ZN(n535) );
  NR2D0 U285 ( .A1(n499), .A2(n524), .ZN(n536) );
  NR2D0 U286 ( .A1(a[12]), .A2(n502), .ZN(n537) );
  NR2D0 U287 ( .A1(n502), .A2(n524), .ZN(n538) );
  MUX2ND0 U288 ( .I0(n536), .I1(n535), .S(a[6]), .ZN(n533) );
  MUX2ND0 U289 ( .I0(n538), .I1(n537), .S(a[6]), .ZN(n534) );
  AN2D0 U290 ( .A1(product[4]), .A2(a[13]), .Z(n325) );
  CKXOR2D0 U291 ( .A1(product[4]), .A2(a[13]), .Z(n326) );
  OAI211D0 U292 ( .A1(n509), .A2(n504), .B(n539), .C(n540), .ZN(n270) );
  INR2D0 U293 ( .A1(a[5]), .B1(n515), .ZN(n269) );
  XOR4D0 U294 ( .A1(n515), .A2(a[5]), .A3(n509), .A4(n280), .Z(n271) );
  NR2D0 U295 ( .A1(a[20]), .A2(n509), .ZN(n541) );
  NR2D0 U296 ( .A1(n509), .A2(n515), .ZN(n542) );
  NR2D0 U297 ( .A1(a[20]), .A2(n504), .ZN(n543) );
  NR2D0 U298 ( .A1(n504), .A2(n515), .ZN(n544) );
  MUX2ND0 U299 ( .I0(n542), .I1(n541), .S(a[5]), .ZN(n539) );
  MUX2ND0 U300 ( .I0(n544), .I1(n543), .S(a[5]), .ZN(n540) );
  CKXOR2D0 U302 ( .A1(a[7]), .A2(a[19]), .Z(n281) );
  OAI211D0 U303 ( .A1(n505), .A2(n501), .B(n545), .C(n546), .ZN(n246) );
  INR2D0 U304 ( .A1(a[10]), .B1(n524), .ZN(n245) );
  XOR4D0 U305 ( .A1(n524), .A2(a[10]), .A3(n505), .A4(n249), .Z(n247) );
  NR2D0 U306 ( .A1(a[12]), .A2(n505), .ZN(n547) );
  NR2D0 U307 ( .A1(n505), .A2(n524), .ZN(n548) );
  NR2D0 U308 ( .A1(a[12]), .A2(n501), .ZN(n549) );
  NR2D0 U309 ( .A1(n501), .A2(n524), .ZN(n550) );
  MUX2ND0 U310 ( .I0(n548), .I1(n547), .S(a[10]), .ZN(n545) );
  MUX2ND0 U311 ( .I0(n550), .I1(n549), .S(a[10]), .ZN(n546) );
  CKXOR2D0 U312 ( .A1(n1), .A2(n512), .Z(product[47]) );
  CKXOR2D0 U313 ( .A1(a[17]), .A2(n520), .Z(n85) );
  CKND2D0 U314 ( .A1(n519), .A2(n520), .ZN(n84) );
  CKXOR2D0 U315 ( .A1(a[22]), .A2(n521), .Z(n78) );
  CKND2D0 U316 ( .A1(n513), .A2(n521), .ZN(n77) );
  CKXOR2D0 U317 ( .A1(a[17]), .A2(n515), .Z(n64) );
  CKND2D0 U318 ( .A1(n515), .A2(n519), .ZN(n63) );
  CKXOR2D0 U319 ( .A1(a[22]), .A2(n514), .Z(n49) );
  CKND2D0 U320 ( .A1(n513), .A2(n514), .ZN(n48) );
  CKXOR2D0 U321 ( .A1(a[23]), .A2(n513), .Z(n47) );
  CKND2D0 U322 ( .A1(n512), .A2(n513), .ZN(n46) );
  CKXOR2D0 U323 ( .A1(a[15]), .A2(n503), .Z(n148) );
  CKND2D0 U324 ( .A1(n521), .A2(n503), .ZN(n147) );
  CKXOR2D0 U325 ( .A1(a[22]), .A2(n524), .Z(n104) );
  CKND2D0 U326 ( .A1(n513), .A2(n524), .ZN(n103) );
  INR2D0 U236 ( .A1(product[3]), .B1(a[19]), .ZN(n250) );
  XNR2D0 U255 ( .A1(a[19]), .A2(product[3]), .ZN(n251) );
  CKND0 U275 ( .I(n504), .ZN(n280) );
  CKND2D0 U276 ( .A1(a[19]), .A2(a[7]), .ZN(n504) );
  OAI21D0 U277 ( .A1(a[15]), .A2(n552), .B(n551), .ZN(n528) );
  OAI31D0 U278 ( .A1(n498), .A2(a[9]), .A3(a[5]), .B(a[15]), .ZN(n551) );
  NR3D0 U279 ( .A1(n498), .A2(a[9]), .A3(n507), .ZN(n552) );
  OAI21D0 U280 ( .A1(a[5]), .A2(n554), .B(n553), .ZN(n527) );
  OAI31D0 U301 ( .A1(n498), .A2(n500), .A3(n521), .B(a[5]), .ZN(n553) );
  NR3D0 U327 ( .A1(n498), .A2(n500), .A3(a[15]), .ZN(n554) );
endmodule


module lead_comb_core_DW_mult_uns_0 ( a, b, product );
  input [23:0] a;
  input [23:0] b;
  output [47:0] product;
  wire   n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120,
         n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131,
         n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142,
         n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153,
         n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186,
         n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197,
         n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208,
         n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219,
         n220, n221, n222, n223, n224, n225, n226, n227, n228, n229, n230,
         n231, n232, n233, n234, n235, n236, n237, n238, n239, n240, n241,
         n242, n243, n244, n245, n246, n247, n248, n249, n250, n251, n252,
         n253, n254, n255, n256, n257, n258, n259, n260, n261, n262, n263,
         n264, n265, n266, n267, n268, n269, n270, n271, n272, n273, n274,
         n275, n276, n277, n278, n279, n280, n281, n282, n283, n284, n285,
         n286, n287, n288, n289, n290, n291, n292, n293, n294, n295, n296,
         n297, n298, n299, n300, n301, n302, n303, n304, n305, n306, n307,
         n308, n309, n310, n311, n312, n313, n314, n315, n316, n317, n318,
         n319, n320, n321, n322, n323, n324, n325, n326, n327, n328, n329,
         n330, n331, n332, n333, n334, n335, n336, n337, n338, n339, n340,
         n341, n342, n343, n344, n345, n346, n347, n348, n349, n350, n351,
         n352, n353, n354, n355, n356, n357, n358, n359, n360, n361, n362,
         n363, n364, n365, n366, n367, n368, n369, n370, n371, n372, n373,
         n374, n375, n376, n377, n378, n379, n380, n381, n382, n383, n384,
         n385, n386, n387, n388, n389, n390, n391, n392, n393, n394, n395,
         n396, n397, n398, n399, n400, n401, n402, n403, n404, n405, n406,
         n407, n408, n409, n410, n411, n412, n413, n414, n415, n416, n417,
         n418, n419, n420, n421, n422, n423, n424, n425, n426, n427, n428,
         n429, n430, n431, n432, n433, n434, n435, n436, n437, n438, n439,
         n440, n441, n442, n443, n444, n445, n446, n447, n448, n449, n450,
         n451, n452, n453, n454, n455, n456, n457, n458, n459, n460, n461,
         n462, n463, n464, n465, n466, n467, n468, n469, n470, n471, n472,
         n473, n474, n475, n476, n477, n478, n479, n480, n481, n482, n483,
         n484, n485, n486, n487, n488, n489, n490, n491, n492, n493, n494,
         n495, n496, n497, n498, n499, n500, n501, n502, n503, n504, n505,
         n506, n507, n508, n509, n510, n511, n512, n513, n514, n515, n516,
         n517, n518, n519, n520, n521, n522, n523, n524, n525, n526, n527,
         n528, n529, n530, n531, n532, n533, n534, n535, n536, n537, n538,
         n539, n540, n541, n542, n543, n544, n545, n546, n547, n548, n549,
         n550, n551, n552, n553, n554, n555, n556, n557, n558, n559, n560,
         n561, n562, n563, n564, n565, n566, n567, n568, n569, n570, n571,
         n572, n573, n574, n575, n576, n577, n578, n579, n580, n581, n582,
         n583, n584, n585, n586, n587, n588, n589, n590, n591, n592, n593,
         n594, n595, n596, n597, n598, n599, n600, n601, n602, n603, n604,
         n605, n606, n607, n608, n609, n610, n611, n612, n613, n614, n615,
         n616, n617, n618, n619, n620, n621, n622, n623, n624, n625, n626,
         n627, n628, n629, n630, n631, n632, n633, n634, n635, n636, n637,
         n638, n639, n640, n641, n642, n643, n644, n645, n646, n647, n648,
         n649, n650, n651, n652, n653, n654, n655, n656, n657, n658, n659,
         n660, n661, n662, n663, n664, n665, n666, n667, n668, n669, n670,
         n671, n672, n673, n674, n675, n676, n677, n678, n679, n680, n681,
         n682, n683, n684, n685, n686, n687, n688, n689, n690, n691, n692,
         n693, n694, n695, n696, n697, n698, n699, n700, n701, n702, n703,
         n704, n705, n706, n707, n708, n709, n710, n711, n712, n713, n714,
         n715, n716, n717, n718, n719, n720, n721, n722, n723, n724, n725,
         n726, n727, n728, n729, n730, n731, n732, n733, n734, n735, n736,
         n737, n738, n739, n740, n741, n742, n743, n744, n745, n746, n747,
         n748, n749, n750, n751, n752, n753, n754, n755, n756, n864, n865,
         n866, n867, n868, n869, n870, n871, n872, n873, n874, n875, n876,
         n877, n878, n879, n880, n881, n882, n883, n884, n885, n886, n887;

  FA1D0 U56 ( .A(n481), .B(a[23]), .CI(n70), .CO(product[47]), .S(product[46])
         );
  FA1D0 U57 ( .A(n114), .B(n482), .CI(n71), .CO(n70), .S(product[45]) );
  FA1D0 U58 ( .A(n116), .B(n115), .CI(n72), .CO(n71), .S(product[44]) );
  FA1D0 U59 ( .A(n119), .B(n117), .CI(n73), .CO(n72), .S(product[43]) );
  FA1D0 U60 ( .A(n122), .B(n120), .CI(n74), .CO(n73), .S(product[42]) );
  FA1D0 U61 ( .A(n125), .B(n123), .CI(n75), .CO(n74), .S(product[41]) );
  FA1D0 U62 ( .A(n130), .B(n126), .CI(n76), .CO(n75), .S(product[40]) );
  FA1D0 U63 ( .A(n135), .B(n131), .CI(n77), .CO(n76), .S(product[39]) );
  FA1D0 U64 ( .A(n141), .B(n136), .CI(n78), .CO(n77), .S(product[38]) );
  FA1D0 U65 ( .A(n147), .B(n142), .CI(n79), .CO(n78), .S(product[37]) );
  FA1D0 U66 ( .A(n155), .B(n148), .CI(n80), .CO(n79), .S(product[36]) );
  FA1D0 U67 ( .A(n163), .B(n156), .CI(n81), .CO(n80), .S(product[35]) );
  FA1D0 U68 ( .A(n172), .B(n164), .CI(n82), .CO(n81), .S(product[34]) );
  FA1D0 U69 ( .A(n181), .B(n173), .CI(n83), .CO(n82), .S(product[33]) );
  FA1D0 U70 ( .A(n192), .B(n182), .CI(n84), .CO(n83), .S(product[32]) );
  FA1D0 U71 ( .A(n203), .B(n193), .CI(n85), .CO(n84), .S(product[31]) );
  FA1D0 U72 ( .A(n215), .B(n204), .CI(n86), .CO(n85), .S(product[30]) );
  FA1D0 U73 ( .A(n227), .B(n216), .CI(n87), .CO(n86), .S(product[29]) );
  FA1D0 U74 ( .A(n241), .B(n228), .CI(n88), .CO(n87), .S(product[28]) );
  FA1D0 U75 ( .A(n255), .B(n242), .CI(n89), .CO(n88), .S(product[27]) );
  FA1D0 U76 ( .A(n270), .B(n256), .CI(n90), .CO(n89), .S(product[26]) );
  FA1D0 U77 ( .A(n271), .B(n285), .CI(n91), .CO(n90), .S(product[25]) );
  FA1D0 U78 ( .A(n286), .B(n302), .CI(n92), .CO(n91), .S(product[24]) );
  FA1D0 U79 ( .A(n303), .B(n318), .CI(n93), .CO(n92), .S(product[23]) );
  FA1D0 U80 ( .A(n319), .B(n334), .CI(n94), .CO(n93), .S(product[22]) );
  FA1D0 U81 ( .A(n335), .B(n348), .CI(n95), .CO(n94), .S(product[21]) );
  FA1D0 U82 ( .A(n349), .B(n362), .CI(n96), .CO(n95), .S(product[20]) );
  FA1D0 U83 ( .A(n363), .B(n375), .CI(n97), .CO(n96), .S(product[19]) );
  FA1D0 U84 ( .A(n388), .B(n376), .CI(n98), .CO(n97), .S(product[18]) );
  FA1D0 U85 ( .A(n399), .B(n389), .CI(n99), .CO(n98), .S(product[17]) );
  FA1D0 U86 ( .A(n400), .B(n410), .CI(n100), .CO(n99), .S(product[16]) );
  FA1D0 U87 ( .A(n411), .B(n420), .CI(n101), .CO(n100), .S(product[15]) );
  FA1D0 U88 ( .A(n421), .B(n430), .CI(n102), .CO(n101), .S(product[14]) );
  FA1D0 U89 ( .A(n431), .B(n438), .CI(n103), .CO(n102), .S(product[13]) );
  FA1D0 U90 ( .A(n439), .B(n446), .CI(n104), .CO(n103), .S(product[12]) );
  FA1D0 U91 ( .A(n447), .B(n453), .CI(n105), .CO(n104), .S(product[11]) );
  FA1D0 U92 ( .A(n454), .B(n460), .CI(n106), .CO(n105), .S(product[10]) );
  FA1D0 U93 ( .A(n461), .B(n465), .CI(n107), .CO(n106), .S(product[9]) );
  FA1D0 U94 ( .A(n466), .B(n469), .CI(n108), .CO(n107), .S(product[8]) );
  FA1D0 U95 ( .A(n470), .B(n473), .CI(n109), .CO(n108), .S(product[7]) );
  FA1D0 U96 ( .A(n474), .B(n476), .CI(n110), .CO(n109), .S(product[6]) );
  FA1D0 U97 ( .A(n478), .B(n479), .CI(n111), .CO(n110), .S(product[5]) );
  FA1D0 U98 ( .A(n480), .B(n753), .CI(n112), .CO(n111), .S(product[4]) );
  HA1D0 U99 ( .A(n113), .B(n755), .CO(n112), .S(product[3]) );
  HA1D0 U100 ( .A(n756), .B(a[1]), .CO(n113), .S(product[2]) );
  FA1D0 U101 ( .A(n504), .B(a[22]), .CI(n483), .CO(n114), .S(n115) );
  FA1D0 U102 ( .A(n484), .B(n505), .CI(n118), .CO(n116), .S(n117) );
  CMPE42D1 U103 ( .A(n526), .B(a[21]), .C(n485), .CIX(n121), .D(n506), .CO(
        n119), .COX(n118), .S(n120) );
  CMPE42D1 U104 ( .A(n486), .B(n527), .C(n507), .CIX(n124), .D(n127), .CO(n122), .COX(n121), .S(n123) );
  CMPE42D1 U105 ( .A(n528), .B(n547), .C(n128), .CIX(n129), .D(n132), .CO(n125), .COX(n124), .S(n126) );
  FA1D0 U106 ( .A(n508), .B(a[20]), .CI(n487), .CO(n127), .S(n128) );
  CMPE42D1 U107 ( .A(n137), .B(n509), .C(n133), .CIX(n134), .D(n138), .CO(n130), .COX(n129), .S(n131) );
  FA1D0 U108 ( .A(n529), .B(n548), .CI(n488), .CO(n132), .S(n133) );
  CMPE42D1 U109 ( .A(n530), .B(n549), .C(n139), .CIX(n140), .D(n144), .CO(n135), .COX(n134), .S(n136) );
  CMPE42D1 U110 ( .A(n510), .B(a[19]), .C(n489), .CIX(n143), .D(n567), .CO(
        n138), .COX(n137), .S(n139) );
  CMPE42D1 U111 ( .A(n149), .B(n511), .C(n145), .CIX(n146), .D(n150), .CO(n141), .COX(n140), .S(n142) );
  CMPE42D1 U112 ( .A(n490), .B(n531), .C(n568), .CIX(n152), .D(n550), .CO(n144), .COX(n143), .S(n145) );
  CMPE42D1 U113 ( .A(n153), .B(n157), .C(n151), .CIX(n154), .D(n158), .CO(n147), .COX(n146), .S(n148) );
  CMPE42D1 U114 ( .A(n569), .B(n532), .C(n551), .CIX(n160), .D(n491), .CO(n150), .COX(n149), .S(n151) );
  FA1D0 U115 ( .A(n512), .B(a[18]), .CI(n586), .CO(n152), .S(n153) );
  CMPE42D1 U116 ( .A(n169), .B(n165), .C(n166), .CIX(n162), .D(n159), .CO(n155), .COX(n154), .S(n156) );
  CMPE42D1 U117 ( .A(n533), .B(n570), .C(n552), .CIX(n161), .D(n168), .CO(n158), .COX(n157), .S(n159) );
  FA1D0 U118 ( .A(n492), .B(n587), .CI(n513), .CO(n160), .S(n161) );
  CMPE42D1 U119 ( .A(n167), .B(n170), .C(n178), .CIX(n171), .D(n175), .CO(n163), .COX(n162), .S(n164) );
  CMPE42D1 U120 ( .A(n604), .B(n571), .C(n588), .CIX(n174), .D(n553), .CO(n166), .COX(n165), .S(n167) );
  CMPE42D1 U121 ( .A(n514), .B(a[17]), .C(n493), .CIX(n177), .D(n534), .CO(
        n169), .COX(n168), .S(n170) );
  CMPE42D1 U122 ( .A(n187), .B(n179), .C(n176), .CIX(n180), .D(n184), .CO(n172), .COX(n171), .S(n173) );
  CMPE42D1 U123 ( .A(n535), .B(n589), .C(n572), .CIX(n183), .D(n186), .CO(n175), .COX(n174), .S(n176) );
  CMPE42D1 U124 ( .A(n494), .B(n554), .C(n605), .CIX(n189), .D(n515), .CO(n178), .COX(n177), .S(n179) );
  CMPE42D1 U125 ( .A(n194), .B(n198), .C(n185), .CIX(n191), .D(n195), .CO(n181), .COX(n180), .S(n182) );
  CMPE42D1 U126 ( .A(n495), .B(n536), .C(n197), .CIX(n188), .D(n190), .CO(n184), .COX(n183), .S(n185) );
  CMPE42D1 U127 ( .A(n606), .B(n555), .C(n590), .CIX(n200), .D(n573), .CO(n187), .COX(n186), .S(n188) );
  FA1D0 U128 ( .A(n516), .B(a[16]), .CI(n621), .CO(n189), .S(n190) );
  CMPE42D1 U129 ( .A(n205), .B(n209), .C(n196), .CIX(n202), .D(n206), .CO(n192), .COX(n191), .S(n193) );
  CMPE42D1 U130 ( .A(n211), .B(n591), .C(n208), .CIX(n212), .D(n199), .CO(n195), .COX(n194), .S(n196) );
  CMPE42D1 U131 ( .A(n537), .B(n622), .C(n607), .CIX(n201), .D(n574), .CO(n198), .COX(n197), .S(n199) );
  FA1D0 U132 ( .A(n496), .B(n556), .CI(n517), .CO(n200), .S(n201) );
  CMPE42D1 U133 ( .A(n217), .B(n221), .C(n207), .CIX(n214), .D(n218), .CO(n203), .COX(n202), .S(n204) );
  CMPE42D1 U134 ( .A(n575), .B(n608), .C(n213), .CIX(n224), .D(n210), .CO(n206), .COX(n205), .S(n207) );
  CMPE42D1 U135 ( .A(n557), .B(n592), .C(n637), .CIX(n220), .D(n623), .CO(n209), .COX(n208), .S(n210) );
  CMPE42D1 U136 ( .A(n518), .B(a[15]), .C(n497), .CIX(n223), .D(n538), .CO(
        n212), .COX(n211), .S(n213) );
  CMPE42D1 U137 ( .A(n229), .B(n233), .C(n219), .CIX(n226), .D(n230), .CO(n215), .COX(n214), .S(n216) );
  CMPE42D1 U138 ( .A(n235), .B(n593), .C(n222), .CIX(n236), .D(n225), .CO(n218), .COX(n217), .S(n219) );
  CMPE42D1 U139 ( .A(n558), .B(n624), .C(n609), .CIX(n232), .D(n576), .CO(n221), .COX(n220), .S(n222) );
  CMPE42D1 U140 ( .A(n498), .B(n638), .C(n519), .CIX(n238), .D(n539), .CO(n224), .COX(n223), .S(n225) );
  CMPE42D1 U141 ( .A(n243), .B(n250), .C(n231), .CIX(n240), .D(n244), .CO(n227), .COX(n226), .S(n228) );
  CMPE42D1 U142 ( .A(n246), .B(n249), .C(n234), .CIX(n247), .D(n237), .CO(n230), .COX(n229), .S(n231) );
  CMPE42D1 U143 ( .A(n594), .B(n639), .C(n610), .CIX(n239), .D(n625), .CO(n233), .COX(n232), .S(n234) );
  CMPE42D1 U144 ( .A(n540), .B(n577), .C(n559), .CIX(n252), .D(n652), .CO(n236), .COX(n235), .S(n237) );
  FA1D0 U145 ( .A(n520), .B(a[14]), .CI(n499), .CO(n238), .S(n239) );
  CMPE42D1 U146 ( .A(n257), .B(n248), .C(n245), .CIX(n254), .D(n258), .CO(n241), .COX(n240), .S(n242) );
  CMPE42D1 U147 ( .A(n251), .B(n263), .C(n261), .CIX(n264), .D(n267), .CO(n244), .COX(n243), .S(n245) );
  CMPE42D1 U148 ( .A(n611), .B(n640), .C(n626), .CIX(n260), .D(n266), .CO(n247), .COX(n246), .S(n248) );
  CMPE42D1 U149 ( .A(n541), .B(n578), .C(n595), .CIX(n253), .D(n653), .CO(n250), .COX(n249), .S(n251) );
  FA1D0 U150 ( .A(n500), .B(n560), .CI(n521), .CO(n252), .S(n253) );
  CMPE42D1 U151 ( .A(n279), .B(n265), .C(n259), .CIX(n269), .D(n273), .CO(n255), .COX(n254), .S(n256) );
  CMPE42D1 U152 ( .A(n262), .B(n268), .C(n282), .CIX(n272), .D(n276), .CO(n258), .COX(n257), .S(n259) );
  CMPE42D1 U153 ( .A(n612), .B(n654), .C(n627), .CIX(n278), .D(n641), .CO(n261), .COX(n260), .S(n262) );
  CMPE42D1 U154 ( .A(n561), .B(n666), .C(n579), .CIX(n281), .D(n596), .CO(n264), .COX(n263), .S(n265) );
  CMPE42D1 U155 ( .A(n522), .B(a[13]), .C(n501), .CIX(n275), .D(n542), .CO(
        n267), .COX(n266), .S(n268) );
  CMPE42D1 U156 ( .A(n294), .B(n280), .C(n274), .CIX(n284), .D(n288), .CO(n270), .COX(n269), .S(n271) );
  CMPE42D1 U157 ( .A(n283), .B(n277), .C(n297), .CIX(n287), .D(n291), .CO(n273), .COX(n272), .S(n274) );
  CMPE42D1 U158 ( .A(n597), .B(n642), .C(n613), .CIX(n293), .D(n628), .CO(n276), .COX(n275), .S(n277) );
  CMPE42D1 U159 ( .A(n543), .B(n655), .C(n562), .CIX(n296), .D(n580), .CO(n279), .COX(n278), .S(n280) );
  CMPE42D1 U160 ( .A(n502), .B(n667), .C(n523), .CIX(n290), .D(n299), .CO(n282), .COX(n281), .S(n283) );
  CMPE42D1 U161 ( .A(n304), .B(n308), .C(n305), .CIX(n301), .D(n289), .CO(n285), .COX(n284), .S(n286) );
  CMPE42D1 U162 ( .A(n295), .B(n300), .C(n298), .CIX(n311), .D(n292), .CO(n288), .COX(n287), .S(n289) );
  CMPE42D1 U163 ( .A(n544), .B(n598), .C(n563), .CIX(n310), .D(n315), .CO(n291), .COX(n290), .S(n292) );
  CMPE42D1 U164 ( .A(n643), .B(n581), .C(n629), .CIX(n307), .D(n614), .CO(n294), .COX(n293), .S(n295) );
  CMPE42D1 U165 ( .A(n524), .B(n679), .C(n668), .CIX(n313), .D(n656), .CO(n297), .COX(n296), .S(n298) );
  HA1D0 U166 ( .A(n503), .B(a[12]), .CO(n299), .S(n300) );
  CMPE42D1 U167 ( .A(n320), .B(n324), .C(n306), .CIX(n317), .D(n321), .CO(n302), .COX(n301), .S(n303) );
  CMPE42D1 U168 ( .A(n323), .B(n326), .C(n312), .CIX(n309), .D(n327), .CO(n305), .COX(n304), .S(n306) );
  CMPE42D1 U169 ( .A(n630), .B(n657), .C(n644), .CIX(n329), .D(n316), .CO(n308), .COX(n307), .S(n309) );
  CMPE42D1 U170 ( .A(n669), .B(n599), .C(n582), .CIX(n314), .D(n331), .CO(n311), .COX(n310), .S(n312) );
  FA1D0 U171 ( .A(n680), .B(n615), .CI(n564), .CO(n313), .S(n314) );
  HA1D0 U172 ( .A(n525), .B(n545), .CO(n315), .S(n316) );
  CMPE42D1 U173 ( .A(n336), .B(n340), .C(n337), .CIX(n322), .D(n333), .CO(n318), .COX(n317), .S(n319) );
  CMPE42D1 U174 ( .A(n342), .B(n332), .C(n328), .CIX(n343), .D(n325), .CO(n321), .COX(n320), .S(n322) );
  CMPE42D1 U175 ( .A(n583), .B(n631), .C(n600), .CIX(n339), .D(n345), .CO(n324), .COX(n323), .S(n325) );
  CMPE42D1 U176 ( .A(n670), .B(n616), .C(n658), .CIX(n330), .D(n645), .CO(n327), .COX(n326), .S(n328) );
  FA1D0 U177 ( .A(n565), .B(n691), .CI(n681), .CO(n329), .S(n330) );
  HA1D0 U178 ( .A(n546), .B(a[11]), .CO(n331), .S(n332) );
  CMPE42D1 U179 ( .A(n354), .B(n357), .C(n351), .CIX(n347), .D(n338), .CO(n334), .COX(n333), .S(n335) );
  CMPE42D1 U180 ( .A(n346), .B(n646), .C(n350), .CIX(n344), .D(n341), .CO(n337), .COX(n336), .S(n338) );
  CMPE42D1 U181 ( .A(n617), .B(n682), .C(n671), .CIX(n353), .D(n659), .CO(n340), .COX(n339), .S(n341) );
  CMPE42D1 U182 ( .A(n601), .B(n632), .C(n692), .CIX(n356), .D(n359), .CO(n343), .COX(n342), .S(n344) );
  HA1D0 U183 ( .A(n566), .B(n584), .CO(n345), .S(n346) );
  CMPE42D1 U184 ( .A(n368), .B(n358), .C(n365), .CIX(n361), .D(n352), .CO(n348), .COX(n347), .S(n349) );
  CMPE42D1 U185 ( .A(n372), .B(n647), .C(n360), .CIX(n355), .D(n364), .CO(n351), .COX(n350), .S(n352) );
  CMPE42D1 U186 ( .A(n633), .B(n683), .C(n672), .CIX(n367), .D(n660), .CO(n354), .COX(n353), .S(n355) );
  CMPE42D1 U187 ( .A(n602), .B(n702), .C(n618), .CIX(n370), .D(n693), .CO(n357), .COX(n356), .S(n358) );
  HA1D0 U188 ( .A(n585), .B(a[10]), .CO(n359), .S(n360) );
  CMPE42D1 U189 ( .A(n381), .B(n369), .C(n378), .CIX(n374), .D(n366), .CO(n362), .COX(n361), .S(n363) );
  CMPE42D1 U190 ( .A(n373), .B(n684), .C(n380), .CIX(n377), .D(n383), .CO(n365), .COX(n364), .S(n366) );
  CMPE42D1 U191 ( .A(n648), .B(n694), .C(n673), .CIX(n371), .D(n385), .CO(n368), .COX(n367), .S(n369) );
  FA1D0 U192 ( .A(n703), .B(n661), .CI(n634), .CO(n370), .S(n371) );
  HA1D0 U193 ( .A(n603), .B(n619), .CO(n372), .S(n373) );
  CMPE42D1 U194 ( .A(n394), .B(n382), .C(n391), .CIX(n387), .D(n379), .CO(n375), .COX(n374), .S(n376) );
  CMPE42D1 U195 ( .A(n396), .B(n685), .C(n386), .CIX(n393), .D(n390), .CO(n378), .COX(n377), .S(n379) );
  CMPE42D1 U196 ( .A(n662), .B(n704), .C(n695), .CIX(n384), .D(n674), .CO(n381), .COX(n380), .S(n382) );
  FA1D0 U197 ( .A(n635), .B(n712), .CI(n649), .CO(n383), .S(n384) );
  HA1D0 U198 ( .A(n620), .B(a[9]), .CO(n385), .S(n386) );
  CMPE42D1 U199 ( .A(n405), .B(n395), .C(n402), .CIX(n398), .D(n392), .CO(n388), .COX(n387), .S(n389) );
  CMPE42D1 U200 ( .A(n663), .B(n696), .C(n686), .CIX(n401), .D(n397), .CO(n391), .COX(n390), .S(n392) );
  CMPE42D1 U201 ( .A(n713), .B(n675), .C(n705), .CIX(n404), .D(n407), .CO(n394), .COX(n393), .S(n395) );
  HA1D0 U202 ( .A(n636), .B(n650), .CO(n396), .S(n397) );
  CMPE42D1 U203 ( .A(n406), .B(n408), .C(n403), .CIX(n409), .D(n413), .CO(n399), .COX(n398), .S(n400) );
  CMPE42D1 U204 ( .A(n687), .B(n706), .C(n697), .CIX(n415), .D(n417), .CO(n402), .COX(n401), .S(n403) );
  CMPE42D1 U205 ( .A(n664), .B(n721), .C(n676), .CIX(n412), .D(n714), .CO(n405), .COX(n404), .S(n406) );
  HA1D0 U206 ( .A(n651), .B(a[8]), .CO(n407), .S(n408) );
  CMPE42D1 U207 ( .A(n425), .B(n422), .C(n423), .CIX(n419), .D(n414), .CO(n410), .COX(n409), .S(n411) );
  CMPE42D1 U208 ( .A(n688), .B(n707), .C(n427), .CIX(n416), .D(n418), .CO(n413), .COX(n412), .S(n414) );
  FA1D0 U209 ( .A(n722), .B(n698), .CI(n715), .CO(n415), .S(n416) );
  HA1D0 U210 ( .A(n665), .B(n677), .CO(n417), .S(n418) );
  CMPE42D1 U211 ( .A(n432), .B(n428), .C(n424), .CIX(n429), .D(n433), .CO(n420), .COX(n419), .S(n421) );
  CMPE42D1 U212 ( .A(n708), .B(n723), .C(n716), .CIX(n426), .D(n435), .CO(n423), .COX(n422), .S(n424) );
  FA1D0 U213 ( .A(n689), .B(n729), .CI(n699), .CO(n425), .S(n426) );
  HA1D0 U214 ( .A(n678), .B(a[7]), .CO(n427), .S(n428) );
  CMPE42D1 U215 ( .A(n436), .B(n709), .C(n437), .CIX(n441), .D(n434), .CO(n430), .COX(n429), .S(n431) );
  CMPE42D1 U216 ( .A(n730), .B(n717), .C(n724), .CIX(n440), .D(n443), .CO(n433), .COX(n432), .S(n434) );
  HA1D0 U217 ( .A(n690), .B(n700), .CO(n435), .S(n436) );
  CMPE42D1 U218 ( .A(n450), .B(n725), .C(n444), .CIX(n442), .D(n445), .CO(n438), .COX(n437), .S(n439) );
  CMPE42D1 U219 ( .A(n710), .B(n736), .C(n731), .CIX(n448), .D(n718), .CO(n441), .COX(n440), .S(n442) );
  HA1D0 U220 ( .A(n701), .B(a[6]), .CO(n443), .S(n444) );
  CMPE42D1 U221 ( .A(n451), .B(n457), .C(n455), .CIX(n452), .D(n449), .CO(n446), .COX(n445), .S(n447) );
  FA1D0 U222 ( .A(n732), .B(n726), .CI(n737), .CO(n448), .S(n449) );
  HA1D0 U223 ( .A(n711), .B(n719), .CO(n450), .S(n451) );
  CMPE42D1 U224 ( .A(n462), .B(n738), .C(n458), .CIX(n456), .D(n459), .CO(n453), .COX(n452), .S(n454) );
  FA1D0 U225 ( .A(n727), .B(n742), .CI(n733), .CO(n455), .S(n456) );
  HA1D0 U226 ( .A(n720), .B(a[5]), .CO(n457), .S(n458) );
  CMPE42D1 U227 ( .A(n739), .B(n743), .C(n467), .CIX(n464), .D(n463), .CO(n460), .COX(n459), .S(n461) );
  HA1D0 U228 ( .A(n728), .B(n734), .CO(n462), .S(n463) );
  CMPE42D1 U229 ( .A(n740), .B(n747), .C(n744), .CIX(n468), .D(n471), .CO(n465), .COX(n464), .S(n466) );
  HA1D0 U230 ( .A(n735), .B(a[4]), .CO(n467), .S(n468) );
  FA1D0 U231 ( .A(n475), .B(n745), .CI(n472), .CO(n469), .S(n470) );
  HA1D0 U232 ( .A(n741), .B(n748), .CO(n471), .S(n472) );
  FA1D0 U233 ( .A(n749), .B(n751), .CI(n477), .CO(n473), .S(n474) );
  HA1D0 U234 ( .A(n746), .B(a[3]), .CO(n475), .S(n476) );
  HA1D0 U235 ( .A(n750), .B(n752), .CO(n477), .S(n478) );
  HA1D0 U236 ( .A(n754), .B(a[2]), .CO(n479), .S(n480) );
  INVD1 U562 ( .I(b[13]), .ZN(n874) );
  INVD1 U563 ( .I(b[9]), .ZN(n878) );
  INVD1 U564 ( .I(b[8]), .ZN(n879) );
  INVD1 U565 ( .I(b[7]), .ZN(n880) );
  INVD1 U566 ( .I(b[6]), .ZN(n881) );
  INVD1 U567 ( .I(b[5]), .ZN(n882) );
  INVD1 U568 ( .I(b[4]), .ZN(n883) );
  INVD1 U569 ( .I(b[3]), .ZN(n884) );
  INVD1 U570 ( .I(b[18]), .ZN(n869) );
  INVD1 U571 ( .I(b[19]), .ZN(n868) );
  INVD1 U572 ( .I(b[14]), .ZN(n873) );
  INVD1 U573 ( .I(b[15]), .ZN(n872) );
  INVD1 U574 ( .I(b[12]), .ZN(n875) );
  INVD1 U575 ( .I(b[10]), .ZN(n877) );
  INVD1 U576 ( .I(b[11]), .ZN(n876) );
  INVD1 U577 ( .I(b[2]), .ZN(n885) );
  INVD1 U578 ( .I(b[1]), .ZN(n886) );
  INVD1 U579 ( .I(b[0]), .ZN(n887) );
  INVD1 U580 ( .I(b[23]), .ZN(n864) );
  INVD1 U581 ( .I(b[22]), .ZN(n865) );
  INVD1 U582 ( .I(b[20]), .ZN(n867) );
  INVD1 U583 ( .I(b[17]), .ZN(n870) );
  INVD1 U584 ( .I(b[16]), .ZN(n871) );
  INVD1 U585 ( .I(b[21]), .ZN(n866) );
  NR2D0 U586 ( .A1(n887), .A2(n886), .ZN(n756) );
  NR2D0 U587 ( .A1(n887), .A2(n885), .ZN(n755) );
  NR2D0 U588 ( .A1(n886), .A2(n885), .ZN(n754) );
  NR2D0 U589 ( .A1(n887), .A2(n884), .ZN(n753) );
  NR2D0 U590 ( .A1(n886), .A2(n884), .ZN(n752) );
  NR2D0 U591 ( .A1(n885), .A2(n884), .ZN(n751) );
  NR2D0 U592 ( .A1(n887), .A2(n883), .ZN(n750) );
  NR2D0 U593 ( .A1(n886), .A2(n883), .ZN(n749) );
  NR2D0 U594 ( .A1(n885), .A2(n883), .ZN(n748) );
  NR2D0 U595 ( .A1(n884), .A2(n883), .ZN(n747) );
  NR2D0 U596 ( .A1(n887), .A2(n882), .ZN(n746) );
  NR2D0 U597 ( .A1(n886), .A2(n882), .ZN(n745) );
  NR2D0 U598 ( .A1(n885), .A2(n882), .ZN(n744) );
  NR2D0 U599 ( .A1(n884), .A2(n882), .ZN(n743) );
  NR2D0 U600 ( .A1(n883), .A2(n882), .ZN(n742) );
  NR2D0 U601 ( .A1(n887), .A2(n881), .ZN(n741) );
  NR2D0 U602 ( .A1(n886), .A2(n881), .ZN(n740) );
  NR2D0 U603 ( .A1(n885), .A2(n881), .ZN(n739) );
  NR2D0 U604 ( .A1(n884), .A2(n881), .ZN(n738) );
  NR2D0 U605 ( .A1(n883), .A2(n881), .ZN(n737) );
  NR2D0 U606 ( .A1(n882), .A2(n881), .ZN(n736) );
  NR2D0 U607 ( .A1(n887), .A2(n880), .ZN(n735) );
  NR2D0 U608 ( .A1(n886), .A2(n880), .ZN(n734) );
  NR2D0 U609 ( .A1(n885), .A2(n880), .ZN(n733) );
  NR2D0 U610 ( .A1(n884), .A2(n880), .ZN(n732) );
  NR2D0 U611 ( .A1(n883), .A2(n880), .ZN(n731) );
  NR2D0 U612 ( .A1(n882), .A2(n880), .ZN(n730) );
  NR2D0 U613 ( .A1(n881), .A2(n880), .ZN(n729) );
  NR2D0 U614 ( .A1(n887), .A2(n879), .ZN(n728) );
  NR2D0 U615 ( .A1(n886), .A2(n879), .ZN(n727) );
  NR2D0 U616 ( .A1(n885), .A2(n879), .ZN(n726) );
  NR2D0 U617 ( .A1(n884), .A2(n879), .ZN(n725) );
  NR2D0 U618 ( .A1(n883), .A2(n879), .ZN(n724) );
  NR2D0 U619 ( .A1(n882), .A2(n879), .ZN(n723) );
  NR2D0 U620 ( .A1(n881), .A2(n879), .ZN(n722) );
  NR2D0 U621 ( .A1(n880), .A2(n879), .ZN(n721) );
  NR2D0 U622 ( .A1(n887), .A2(n878), .ZN(n720) );
  NR2D0 U623 ( .A1(n886), .A2(n878), .ZN(n719) );
  NR2D0 U624 ( .A1(n885), .A2(n878), .ZN(n718) );
  NR2D0 U625 ( .A1(n884), .A2(n878), .ZN(n717) );
  NR2D0 U626 ( .A1(n883), .A2(n878), .ZN(n716) );
  NR2D0 U627 ( .A1(n882), .A2(n878), .ZN(n715) );
  NR2D0 U628 ( .A1(n881), .A2(n878), .ZN(n714) );
  NR2D0 U629 ( .A1(n880), .A2(n878), .ZN(n713) );
  NR2D0 U630 ( .A1(n879), .A2(n878), .ZN(n712) );
  NR2D0 U631 ( .A1(n887), .A2(n877), .ZN(n711) );
  NR2D0 U632 ( .A1(n886), .A2(n877), .ZN(n710) );
  NR2D0 U633 ( .A1(n885), .A2(n877), .ZN(n709) );
  NR2D0 U634 ( .A1(n884), .A2(n877), .ZN(n708) );
  NR2D0 U635 ( .A1(n883), .A2(n877), .ZN(n707) );
  NR2D0 U636 ( .A1(n882), .A2(n877), .ZN(n706) );
  NR2D0 U637 ( .A1(n881), .A2(n877), .ZN(n705) );
  NR2D0 U638 ( .A1(n880), .A2(n877), .ZN(n704) );
  NR2D0 U639 ( .A1(n879), .A2(n877), .ZN(n703) );
  NR2D0 U640 ( .A1(n878), .A2(n877), .ZN(n702) );
  NR2D0 U641 ( .A1(n887), .A2(n876), .ZN(n701) );
  NR2D0 U642 ( .A1(n886), .A2(n876), .ZN(n700) );
  NR2D0 U643 ( .A1(n885), .A2(n876), .ZN(n699) );
  NR2D0 U644 ( .A1(n884), .A2(n876), .ZN(n698) );
  NR2D0 U645 ( .A1(n883), .A2(n876), .ZN(n697) );
  NR2D0 U646 ( .A1(n882), .A2(n876), .ZN(n696) );
  NR2D0 U647 ( .A1(n881), .A2(n876), .ZN(n695) );
  NR2D0 U648 ( .A1(n880), .A2(n876), .ZN(n694) );
  NR2D0 U649 ( .A1(n879), .A2(n876), .ZN(n693) );
  NR2D0 U650 ( .A1(n878), .A2(n876), .ZN(n692) );
  NR2D0 U651 ( .A1(n877), .A2(n876), .ZN(n691) );
  NR2D0 U652 ( .A1(n887), .A2(n875), .ZN(n690) );
  NR2D0 U653 ( .A1(n886), .A2(n875), .ZN(n689) );
  NR2D0 U654 ( .A1(n885), .A2(n875), .ZN(n688) );
  NR2D0 U655 ( .A1(n884), .A2(n875), .ZN(n687) );
  NR2D0 U656 ( .A1(n883), .A2(n875), .ZN(n686) );
  NR2D0 U657 ( .A1(n882), .A2(n875), .ZN(n685) );
  NR2D0 U658 ( .A1(n881), .A2(n875), .ZN(n684) );
  NR2D0 U659 ( .A1(n880), .A2(n875), .ZN(n683) );
  NR2D0 U660 ( .A1(n879), .A2(n875), .ZN(n682) );
  NR2D0 U661 ( .A1(n878), .A2(n875), .ZN(n681) );
  NR2D0 U662 ( .A1(n877), .A2(n875), .ZN(n680) );
  NR2D0 U663 ( .A1(n876), .A2(n875), .ZN(n679) );
  NR2D0 U664 ( .A1(n887), .A2(n874), .ZN(n678) );
  NR2D0 U665 ( .A1(n886), .A2(n874), .ZN(n677) );
  NR2D0 U666 ( .A1(n885), .A2(n874), .ZN(n676) );
  NR2D0 U667 ( .A1(n884), .A2(n874), .ZN(n675) );
  NR2D0 U668 ( .A1(n883), .A2(n874), .ZN(n674) );
  NR2D0 U669 ( .A1(n882), .A2(n874), .ZN(n673) );
  NR2D0 U670 ( .A1(n881), .A2(n874), .ZN(n672) );
  NR2D0 U671 ( .A1(n880), .A2(n874), .ZN(n671) );
  NR2D0 U672 ( .A1(n879), .A2(n874), .ZN(n670) );
  NR2D0 U673 ( .A1(n878), .A2(n874), .ZN(n669) );
  NR2D0 U674 ( .A1(n877), .A2(n874), .ZN(n668) );
  NR2D0 U675 ( .A1(n876), .A2(n874), .ZN(n667) );
  NR2D0 U676 ( .A1(n875), .A2(n874), .ZN(n666) );
  NR2D0 U677 ( .A1(n887), .A2(n873), .ZN(n665) );
  NR2D0 U678 ( .A1(n886), .A2(n873), .ZN(n664) );
  NR2D0 U679 ( .A1(n885), .A2(n873), .ZN(n663) );
  NR2D0 U680 ( .A1(n884), .A2(n873), .ZN(n662) );
  NR2D0 U681 ( .A1(n883), .A2(n873), .ZN(n661) );
  NR2D0 U682 ( .A1(n882), .A2(n873), .ZN(n660) );
  NR2D0 U683 ( .A1(n881), .A2(n873), .ZN(n659) );
  NR2D0 U684 ( .A1(n880), .A2(n873), .ZN(n658) );
  NR2D0 U685 ( .A1(n879), .A2(n873), .ZN(n657) );
  NR2D0 U686 ( .A1(n878), .A2(n873), .ZN(n656) );
  NR2D0 U687 ( .A1(n877), .A2(n873), .ZN(n655) );
  NR2D0 U688 ( .A1(n876), .A2(n873), .ZN(n654) );
  NR2D0 U689 ( .A1(n875), .A2(n873), .ZN(n653) );
  NR2D0 U690 ( .A1(n874), .A2(n873), .ZN(n652) );
  NR2D0 U691 ( .A1(n887), .A2(n872), .ZN(n651) );
  NR2D0 U692 ( .A1(n886), .A2(n872), .ZN(n650) );
  NR2D0 U693 ( .A1(n885), .A2(n872), .ZN(n649) );
  NR2D0 U694 ( .A1(n884), .A2(n872), .ZN(n648) );
  NR2D0 U695 ( .A1(n883), .A2(n872), .ZN(n647) );
  NR2D0 U696 ( .A1(n882), .A2(n872), .ZN(n646) );
  NR2D0 U697 ( .A1(n881), .A2(n872), .ZN(n645) );
  NR2D0 U698 ( .A1(n880), .A2(n872), .ZN(n644) );
  NR2D0 U699 ( .A1(n879), .A2(n872), .ZN(n643) );
  NR2D0 U700 ( .A1(n878), .A2(n872), .ZN(n642) );
  NR2D0 U701 ( .A1(n877), .A2(n872), .ZN(n641) );
  NR2D0 U702 ( .A1(n876), .A2(n872), .ZN(n640) );
  NR2D0 U703 ( .A1(n875), .A2(n872), .ZN(n639) );
  NR2D0 U704 ( .A1(n874), .A2(n872), .ZN(n638) );
  NR2D0 U705 ( .A1(n873), .A2(n872), .ZN(n637) );
  NR2D0 U706 ( .A1(n887), .A2(n871), .ZN(n636) );
  NR2D0 U707 ( .A1(n886), .A2(n871), .ZN(n635) );
  NR2D0 U708 ( .A1(n885), .A2(n871), .ZN(n634) );
  NR2D0 U709 ( .A1(n884), .A2(n871), .ZN(n633) );
  NR2D0 U710 ( .A1(n883), .A2(n871), .ZN(n632) );
  NR2D0 U711 ( .A1(n882), .A2(n871), .ZN(n631) );
  NR2D0 U712 ( .A1(n881), .A2(n871), .ZN(n630) );
  NR2D0 U713 ( .A1(n880), .A2(n871), .ZN(n629) );
  NR2D0 U714 ( .A1(n879), .A2(n871), .ZN(n628) );
  NR2D0 U715 ( .A1(n878), .A2(n871), .ZN(n627) );
  NR2D0 U716 ( .A1(n877), .A2(n871), .ZN(n626) );
  NR2D0 U717 ( .A1(n876), .A2(n871), .ZN(n625) );
  NR2D0 U718 ( .A1(n875), .A2(n871), .ZN(n624) );
  NR2D0 U719 ( .A1(n874), .A2(n871), .ZN(n623) );
  NR2D0 U720 ( .A1(n873), .A2(n871), .ZN(n622) );
  NR2D0 U721 ( .A1(n872), .A2(n871), .ZN(n621) );
  NR2D0 U722 ( .A1(n887), .A2(n870), .ZN(n620) );
  NR2D0 U723 ( .A1(n886), .A2(n870), .ZN(n619) );
  NR2D0 U724 ( .A1(n885), .A2(n870), .ZN(n618) );
  NR2D0 U725 ( .A1(n884), .A2(n870), .ZN(n617) );
  NR2D0 U726 ( .A1(n883), .A2(n870), .ZN(n616) );
  NR2D0 U727 ( .A1(n882), .A2(n870), .ZN(n615) );
  NR2D0 U728 ( .A1(n881), .A2(n870), .ZN(n614) );
  NR2D0 U729 ( .A1(n880), .A2(n870), .ZN(n613) );
  NR2D0 U730 ( .A1(n879), .A2(n870), .ZN(n612) );
  NR2D0 U731 ( .A1(n878), .A2(n870), .ZN(n611) );
  NR2D0 U732 ( .A1(n877), .A2(n870), .ZN(n610) );
  NR2D0 U733 ( .A1(n876), .A2(n870), .ZN(n609) );
  NR2D0 U734 ( .A1(n875), .A2(n870), .ZN(n608) );
  NR2D0 U735 ( .A1(n874), .A2(n870), .ZN(n607) );
  NR2D0 U736 ( .A1(n873), .A2(n870), .ZN(n606) );
  NR2D0 U737 ( .A1(n872), .A2(n870), .ZN(n605) );
  NR2D0 U738 ( .A1(n871), .A2(n870), .ZN(n604) );
  NR2D0 U739 ( .A1(n887), .A2(n869), .ZN(n603) );
  NR2D0 U740 ( .A1(n886), .A2(n869), .ZN(n602) );
  NR2D0 U741 ( .A1(n885), .A2(n869), .ZN(n601) );
  NR2D0 U742 ( .A1(n884), .A2(n869), .ZN(n600) );
  NR2D0 U743 ( .A1(n883), .A2(n869), .ZN(n599) );
  NR2D0 U744 ( .A1(n882), .A2(n869), .ZN(n598) );
  NR2D0 U745 ( .A1(n881), .A2(n869), .ZN(n597) );
  NR2D0 U746 ( .A1(n880), .A2(n869), .ZN(n596) );
  NR2D0 U747 ( .A1(n879), .A2(n869), .ZN(n595) );
  NR2D0 U748 ( .A1(n878), .A2(n869), .ZN(n594) );
  NR2D0 U749 ( .A1(n877), .A2(n869), .ZN(n593) );
  NR2D0 U750 ( .A1(n876), .A2(n869), .ZN(n592) );
  NR2D0 U751 ( .A1(n875), .A2(n869), .ZN(n591) );
  NR2D0 U752 ( .A1(n874), .A2(n869), .ZN(n590) );
  NR2D0 U753 ( .A1(n873), .A2(n869), .ZN(n589) );
  NR2D0 U754 ( .A1(n872), .A2(n869), .ZN(n588) );
  NR2D0 U755 ( .A1(n871), .A2(n869), .ZN(n587) );
  NR2D0 U756 ( .A1(n870), .A2(n869), .ZN(n586) );
  NR2D0 U757 ( .A1(n887), .A2(n868), .ZN(n585) );
  NR2D0 U758 ( .A1(n886), .A2(n868), .ZN(n584) );
  NR2D0 U759 ( .A1(n885), .A2(n868), .ZN(n583) );
  NR2D0 U760 ( .A1(n884), .A2(n868), .ZN(n582) );
  NR2D0 U761 ( .A1(n883), .A2(n868), .ZN(n581) );
  NR2D0 U762 ( .A1(n882), .A2(n868), .ZN(n580) );
  NR2D0 U763 ( .A1(n881), .A2(n868), .ZN(n579) );
  NR2D0 U764 ( .A1(n880), .A2(n868), .ZN(n578) );
  NR2D0 U765 ( .A1(n879), .A2(n868), .ZN(n577) );
  NR2D0 U766 ( .A1(n878), .A2(n868), .ZN(n576) );
  NR2D0 U767 ( .A1(n877), .A2(n868), .ZN(n575) );
  NR2D0 U768 ( .A1(n876), .A2(n868), .ZN(n574) );
  NR2D0 U769 ( .A1(n875), .A2(n868), .ZN(n573) );
  NR2D0 U770 ( .A1(n874), .A2(n868), .ZN(n572) );
  NR2D0 U771 ( .A1(n873), .A2(n868), .ZN(n571) );
  NR2D0 U772 ( .A1(n872), .A2(n868), .ZN(n570) );
  NR2D0 U773 ( .A1(n871), .A2(n868), .ZN(n569) );
  NR2D0 U774 ( .A1(n870), .A2(n868), .ZN(n568) );
  NR2D0 U775 ( .A1(n869), .A2(n868), .ZN(n567) );
  NR2D0 U776 ( .A1(n887), .A2(n867), .ZN(n566) );
  NR2D0 U777 ( .A1(n886), .A2(n867), .ZN(n565) );
  NR2D0 U778 ( .A1(n885), .A2(n867), .ZN(n564) );
  NR2D0 U779 ( .A1(n884), .A2(n867), .ZN(n563) );
  NR2D0 U780 ( .A1(n883), .A2(n867), .ZN(n562) );
  NR2D0 U781 ( .A1(n882), .A2(n867), .ZN(n561) );
  NR2D0 U782 ( .A1(n881), .A2(n867), .ZN(n560) );
  NR2D0 U783 ( .A1(n880), .A2(n867), .ZN(n559) );
  NR2D0 U784 ( .A1(n879), .A2(n867), .ZN(n558) );
  NR2D0 U785 ( .A1(n878), .A2(n867), .ZN(n557) );
  NR2D0 U786 ( .A1(n877), .A2(n867), .ZN(n556) );
  NR2D0 U787 ( .A1(n876), .A2(n867), .ZN(n555) );
  NR2D0 U788 ( .A1(n875), .A2(n867), .ZN(n554) );
  NR2D0 U789 ( .A1(n874), .A2(n867), .ZN(n553) );
  NR2D0 U790 ( .A1(n873), .A2(n867), .ZN(n552) );
  NR2D0 U791 ( .A1(n872), .A2(n867), .ZN(n551) );
  NR2D0 U792 ( .A1(n871), .A2(n867), .ZN(n550) );
  NR2D0 U793 ( .A1(n870), .A2(n867), .ZN(n549) );
  NR2D0 U794 ( .A1(n869), .A2(n867), .ZN(n548) );
  NR2D0 U795 ( .A1(n868), .A2(n867), .ZN(n547) );
  NR2D0 U796 ( .A1(n887), .A2(n866), .ZN(n546) );
  NR2D0 U797 ( .A1(n886), .A2(n866), .ZN(n545) );
  NR2D0 U798 ( .A1(n885), .A2(n866), .ZN(n544) );
  NR2D0 U799 ( .A1(n884), .A2(n866), .ZN(n543) );
  NR2D0 U800 ( .A1(n883), .A2(n866), .ZN(n542) );
  NR2D0 U801 ( .A1(n882), .A2(n866), .ZN(n541) );
  NR2D0 U802 ( .A1(n881), .A2(n866), .ZN(n540) );
  NR2D0 U803 ( .A1(n880), .A2(n866), .ZN(n539) );
  NR2D0 U804 ( .A1(n879), .A2(n866), .ZN(n538) );
  NR2D0 U805 ( .A1(n878), .A2(n866), .ZN(n537) );
  NR2D0 U806 ( .A1(n877), .A2(n866), .ZN(n536) );
  NR2D0 U807 ( .A1(n876), .A2(n866), .ZN(n535) );
  NR2D0 U808 ( .A1(n875), .A2(n866), .ZN(n534) );
  NR2D0 U809 ( .A1(n874), .A2(n866), .ZN(n533) );
  NR2D0 U810 ( .A1(n873), .A2(n866), .ZN(n532) );
  NR2D0 U811 ( .A1(n872), .A2(n866), .ZN(n531) );
  NR2D0 U812 ( .A1(n871), .A2(n866), .ZN(n530) );
  NR2D0 U813 ( .A1(n870), .A2(n866), .ZN(n529) );
  NR2D0 U814 ( .A1(n869), .A2(n866), .ZN(n528) );
  NR2D0 U815 ( .A1(n868), .A2(n866), .ZN(n527) );
  NR2D0 U816 ( .A1(n867), .A2(n866), .ZN(n526) );
  NR2D0 U817 ( .A1(n887), .A2(n865), .ZN(n525) );
  NR2D0 U818 ( .A1(n886), .A2(n865), .ZN(n524) );
  NR2D0 U819 ( .A1(n885), .A2(n865), .ZN(n523) );
  NR2D0 U820 ( .A1(n884), .A2(n865), .ZN(n522) );
  NR2D0 U821 ( .A1(n883), .A2(n865), .ZN(n521) );
  NR2D0 U822 ( .A1(n882), .A2(n865), .ZN(n520) );
  NR2D0 U823 ( .A1(n881), .A2(n865), .ZN(n519) );
  NR2D0 U824 ( .A1(n880), .A2(n865), .ZN(n518) );
  NR2D0 U825 ( .A1(n879), .A2(n865), .ZN(n517) );
  NR2D0 U826 ( .A1(n878), .A2(n865), .ZN(n516) );
  NR2D0 U827 ( .A1(n877), .A2(n865), .ZN(n515) );
  NR2D0 U828 ( .A1(n876), .A2(n865), .ZN(n514) );
  NR2D0 U829 ( .A1(n875), .A2(n865), .ZN(n513) );
  NR2D0 U830 ( .A1(n874), .A2(n865), .ZN(n512) );
  NR2D0 U831 ( .A1(n873), .A2(n865), .ZN(n511) );
  NR2D0 U832 ( .A1(n872), .A2(n865), .ZN(n510) );
  NR2D0 U833 ( .A1(n871), .A2(n865), .ZN(n509) );
  NR2D0 U834 ( .A1(n870), .A2(n865), .ZN(n508) );
  NR2D0 U835 ( .A1(n869), .A2(n865), .ZN(n507) );
  NR2D0 U836 ( .A1(n868), .A2(n865), .ZN(n506) );
  NR2D0 U837 ( .A1(n867), .A2(n865), .ZN(n505) );
  NR2D0 U838 ( .A1(n866), .A2(n865), .ZN(n504) );
  NR2D0 U839 ( .A1(n887), .A2(n864), .ZN(n503) );
  NR2D0 U840 ( .A1(n886), .A2(n864), .ZN(n502) );
  NR2D0 U841 ( .A1(n885), .A2(n864), .ZN(n501) );
  NR2D0 U842 ( .A1(n884), .A2(n864), .ZN(n500) );
  NR2D0 U843 ( .A1(n883), .A2(n864), .ZN(n499) );
  NR2D0 U844 ( .A1(n882), .A2(n864), .ZN(n498) );
  NR2D0 U845 ( .A1(n881), .A2(n864), .ZN(n497) );
  NR2D0 U846 ( .A1(n880), .A2(n864), .ZN(n496) );
  NR2D0 U847 ( .A1(n879), .A2(n864), .ZN(n495) );
  NR2D0 U848 ( .A1(n878), .A2(n864), .ZN(n494) );
  NR2D0 U849 ( .A1(n877), .A2(n864), .ZN(n493) );
  NR2D0 U850 ( .A1(n876), .A2(n864), .ZN(n492) );
  NR2D0 U851 ( .A1(n875), .A2(n864), .ZN(n491) );
  NR2D0 U852 ( .A1(n874), .A2(n864), .ZN(n490) );
  NR2D0 U853 ( .A1(n873), .A2(n864), .ZN(n489) );
  NR2D0 U854 ( .A1(n872), .A2(n864), .ZN(n488) );
  NR2D0 U855 ( .A1(n871), .A2(n864), .ZN(n487) );
  NR2D0 U856 ( .A1(n870), .A2(n864), .ZN(n486) );
  NR2D0 U857 ( .A1(n869), .A2(n864), .ZN(n485) );
  NR2D0 U858 ( .A1(n868), .A2(n864), .ZN(n484) );
  NR2D0 U859 ( .A1(n867), .A2(n864), .ZN(n483) );
  NR2D0 U860 ( .A1(n866), .A2(n864), .ZN(n482) );
  NR2D0 U861 ( .A1(n865), .A2(n864), .ZN(n481) );
endmodule


module lead_comb_core_DW01_add_1_DW01_add_5 ( A, B, CI, SUM, CO );
  input [48:0] A;
  input [48:0] B;
  output [48:0] SUM;
  input CI;
  output CO;
  wire   n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n2;
  wire   [47:4] carry;

  FA1D0 U1_3 ( .A(A[3]), .B(B[3]), .CI(n2), .CO(carry[4]), .S(n25) );
  FA1D0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(n24) );
  FA1D0 U1_45 ( .A(A[45]), .B(B[45]), .CI(carry[45]), .CO(carry[46]), .S(
        SUM[45]) );
  FA1D0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(n23) );
  FA1D0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(n22) );
  FA1D0 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(n20) );
  FA1D0 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(n19) );
  FA1D0 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(n18)
         );
  FA1D0 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(n17)
         );
  FA1D0 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(n16)
         );
  FA1D0 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(n15)
         );
  FA1D0 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(n14)
         );
  FA1D0 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(n13)
         );
  FA1D0 U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(n12)
         );
  FA1D0 U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(n11)
         );
  FA1D0 U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(n10)
         );
  FA1D0 U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(n9)
         );
  FA1D0 U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(n8)
         );
  FA1D0 U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(n7)
         );
  FA1D0 U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(n6)
         );
  FA1D0 U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(n5)
         );
  FA1D0 U1_24 ( .A(A[24]), .B(B[24]), .CI(carry[24]), .CO(carry[25]), .S(
        SUM[24]) );
  FA1D0 U1_25 ( .A(A[25]), .B(B[25]), .CI(carry[25]), .CO(carry[26]), .S(
        SUM[25]) );
  FA1D0 U1_26 ( .A(A[26]), .B(B[26]), .CI(carry[26]), .CO(carry[27]), .S(
        SUM[26]) );
  FA1D0 U1_27 ( .A(A[27]), .B(B[27]), .CI(carry[27]), .CO(carry[28]), .S(
        SUM[27]) );
  FA1D0 U1_28 ( .A(A[28]), .B(B[28]), .CI(carry[28]), .CO(carry[29]), .S(
        SUM[28]) );
  FA1D0 U1_29 ( .A(A[29]), .B(B[29]), .CI(carry[29]), .CO(carry[30]), .S(
        SUM[29]) );
  FA1D0 U1_30 ( .A(A[30]), .B(B[30]), .CI(carry[30]), .CO(carry[31]), .S(
        SUM[30]) );
  FA1D0 U1_31 ( .A(A[31]), .B(B[31]), .CI(carry[31]), .CO(carry[32]), .S(
        SUM[31]) );
  FA1D0 U1_32 ( .A(A[32]), .B(B[32]), .CI(carry[32]), .CO(carry[33]), .S(
        SUM[32]) );
  FA1D0 U1_33 ( .A(A[33]), .B(B[33]), .CI(carry[33]), .CO(carry[34]), .S(
        SUM[33]) );
  FA1D0 U1_34 ( .A(A[34]), .B(B[34]), .CI(carry[34]), .CO(carry[35]), .S(
        SUM[34]) );
  FA1D0 U1_35 ( .A(A[35]), .B(B[35]), .CI(carry[35]), .CO(carry[36]), .S(
        SUM[35]) );
  FA1D0 U1_36 ( .A(A[36]), .B(B[36]), .CI(carry[36]), .CO(carry[37]), .S(
        SUM[36]) );
  FA1D0 U1_37 ( .A(A[37]), .B(B[37]), .CI(carry[37]), .CO(carry[38]), .S(
        SUM[37]) );
  FA1D0 U1_38 ( .A(A[38]), .B(B[38]), .CI(carry[38]), .CO(carry[39]), .S(
        SUM[38]) );
  FA1D0 U1_39 ( .A(A[39]), .B(B[39]), .CI(carry[39]), .CO(carry[40]), .S(
        SUM[39]) );
  FA1D0 U1_40 ( .A(A[40]), .B(B[40]), .CI(carry[40]), .CO(carry[41]), .S(
        SUM[40]) );
  FA1D0 U1_41 ( .A(A[41]), .B(B[41]), .CI(carry[41]), .CO(carry[42]), .S(
        SUM[41]) );
  FA1D0 U1_44 ( .A(A[44]), .B(B[44]), .CI(carry[44]), .CO(carry[45]), .S(
        SUM[44]) );
  FA1D0 U1_46 ( .A(A[46]), .B(B[46]), .CI(carry[46]), .CO(carry[47]), .S(
        SUM[46]) );
  FA1D0 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(n21) );
  FA1D0 U1_42 ( .A(A[42]), .B(B[42]), .CI(carry[42]), .CO(carry[43]), .S(
        SUM[42]) );
  FA1D0 U1_43 ( .A(A[43]), .B(B[43]), .CI(carry[43]), .CO(carry[44]), .S(
        SUM[43]) );
  AN2XD1 U2 ( .A1(B[2]), .A2(A[2]), .Z(n2) );
  CKXOR2D1 U5 ( .A1(carry[47]), .A2(B[47]), .Z(SUM[47]) );
endmodule


module lead_comb_core ( x, y, out0 );
  input [23:0] x;
  input [23:0] y;
  output [72:0] out0;
  wire   borrow, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, N18,
         N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N30, N31, N32, N33,
         N34, N35, N36, N37, N38, N39, N40, N41, N42, N43, N44, N45, N46, N47,
         N48, N49, N50, N51, N52, N55, N56, N57, N58, N59, N60, N61, N62, N63,
         N64, N65, N66, N67, N68, N69, N70, N71, N72, N73, N74, N75, N76, N77,
         N78, N79, N80, N81, N82, N83, N84, N85, N86, N87, N88, N89, N90, N91,
         N92, N93, N94, N95, N96, N97, N98, N99, N100, N101, N104, N105, N106,
         N107, N108, N109, N110, N111, N112, N113, N114, N115, N116, N117,
         N118, N119, N120, N121, N122, N123, N124, N125, N126, N127, N128,
         N129, N130, N131, N132, N133, N134, N135, N136, N137, N138, N139,
         N140, N141, N142, N143, N144, N145, N146, N147, N148, N149,
         square_product_9_, square_product_8_, square_product_7_,
         square_product_6_, square_product_5_, square_product_4_,
         square_product_47_, square_product_46_, square_product_45_,
         square_product_44_, square_product_43_, square_product_42_,
         square_product_41_, square_product_40_, square_product_3_,
         square_product_39_, square_product_38_, square_product_37_,
         square_product_36_, square_product_35_, square_product_34_,
         square_product_33_, square_product_32_, square_product_31_,
         square_product_30_, square_product_2_, square_product_29_,
         square_product_28_, square_product_27_, square_product_26_,
         square_product_25_, square_product_24_, square_product_23_,
         square_product_22_, square_product_21_, square_product_20_,
         square_product_19_, square_product_18_, square_product_17_,
         square_product_16_, square_product_15_, square_product_14_,
         square_product_13_, square_product_12_, square_product_11_,
         square_product_10_, n4, n5, n610, n260, n280, n29;
  wire   [22:0] a_norm;
  wire   [22:0] b_norm;
  wire   [23:1] abs_delta;
  wire   [48:2] linear_term;
  wire   [47:24] qlog;
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
        SYNOPSYS_UNCONNECTED__74, SYNOPSYS_UNCONNECTED__75, 
        SYNOPSYS_UNCONNECTED__76, SYNOPSYS_UNCONNECTED__77, 
        SYNOPSYS_UNCONNECTED__78, SYNOPSYS_UNCONNECTED__79, 
        SYNOPSYS_UNCONNECTED__80, SYNOPSYS_UNCONNECTED__81, 
        SYNOPSYS_UNCONNECTED__82, SYNOPSYS_UNCONNECTED__83;

  NORMALIZE_width24_0 norm_a ( .x({1'b1, x[22:0]}), .out0({
        SYNOPSYS_UNCONNECTED__0, a_norm}) );
  NORMALIZE_width24_1 norm_b ( .x({1'b1, y[22:0]}), .out0({
        SYNOPSYS_UNCONNECTED__1, b_norm}) );
  SHIFTER_width73 shift_out ( .x({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, qlog, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .shift({1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .left(1'b1), .out0({SYNOPSYS_UNCONNECTED__2, 
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
        SYNOPSYS_UNCONNECTED__23, SYNOPSYS_UNCONNECTED__24, 
        SYNOPSYS_UNCONNECTED__25, SYNOPSYS_UNCONNECTED__26, out0[47:24], 
        SYNOPSYS_UNCONNECTED__27, SYNOPSYS_UNCONNECTED__28, 
        SYNOPSYS_UNCONNECTED__29, SYNOPSYS_UNCONNECTED__30, 
        SYNOPSYS_UNCONNECTED__31, SYNOPSYS_UNCONNECTED__32, 
        SYNOPSYS_UNCONNECTED__33, SYNOPSYS_UNCONNECTED__34, 
        SYNOPSYS_UNCONNECTED__35, SYNOPSYS_UNCONNECTED__36, 
        SYNOPSYS_UNCONNECTED__37, SYNOPSYS_UNCONNECTED__38, 
        SYNOPSYS_UNCONNECTED__39, SYNOPSYS_UNCONNECTED__40, 
        SYNOPSYS_UNCONNECTED__41, SYNOPSYS_UNCONNECTED__42, 
        SYNOPSYS_UNCONNECTED__43, SYNOPSYS_UNCONNECTED__44, 
        SYNOPSYS_UNCONNECTED__45, SYNOPSYS_UNCONNECTED__46, 
        SYNOPSYS_UNCONNECTED__47, SYNOPSYS_UNCONNECTED__48, 
        SYNOPSYS_UNCONNECTED__49, SYNOPSYS_UNCONNECTED__50}) );
  lead_comb_core_DW01_sub_2_DW01_sub_3 sub_25 ( .A({n280, n29, n29, n29, n29, 
        n29, n29, n29, n29, n29, n29, n29, n29, n29, n29, n29, n29, n29, n29, 
        n29, n29, n29, n29, n29, n29, n29, n29, n29, n29, n29, n29, n29, n29, 
        n29, n29, n29, n29, n29, n29, n29, n29, n29, n29, n29, n29, n29, n29, 
        n29, n29}), .B({n29, N149, N148, N147, N146, N145, N144, N143, N142, 
        N141, N140, N139, N138, N137, N136, N135, N134, N133, N132, N131, N130, 
        N129, N128, N127, N126, N125, N124, N123, N122, N121, N120, N119, N118, 
        N117, N116, N115, N114, N113, N112, N111, N110, N109, N108, N107, N106, 
        N105, N104, n29, n29}), .CI(n29), .DIFF({N101, N100, N99, N98, N97, 
        N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, N83, 
        N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, N72, N71, N70, N69, 
        N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, 
        SYNOPSYS_UNCONNECTED__51, SYNOPSYS_UNCONNECTED__52}) );
  lead_comb_core_DW01_sub_3_DW01_sub_4 sub_19_2 ( .A({a_norm, n29}), .B({
        b_norm, n29}), .CI(n29), .DIFF({N52, N51, N50, N49, N48, N47, N46, N45, 
        N44, N43, N42, N41, N40, N39, N38, N37, N36, N35, N34, N33, N32, N31, 
        N30, SYNOPSYS_UNCONNECTED__53}) );
  lead_comb_core_DW01_sub_4_DW01_sub_5 sub_19 ( .A({b_norm, n29}), .B({a_norm, 
        n29}), .CI(n29), .DIFF({N28, N27, N26, N25, N24, N23, N22, N21, N20, 
        N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, 
        SYNOPSYS_UNCONNECTED__54}) );
  lead_comb_core_DW_cmp_1 lt_18 ( .A({a_norm, n29}), .B({b_norm, n29}), .TC(
        n29), .GE_LT(n280), .GE_GT_EQ(n29), .GE_LT_GT_LE(borrow) );
  lead_comb_core_DW_mult_uns_1 mult_21 ( .a({abs_delta, n29}), .b({n280, n29, 
        n280, n280, n29, n29, n29, n280, n29, n280, n280, n29, n280, n29, n29, 
        n29, n29, n280, n280, n280, n29, n29, n280, n29}), .product({N149, 
        N148, N147, N146, N145, N144, N143, N142, N141, N140, N139, N138, N137, 
        N136, N135, N134, N133, N132, N131, N130, N129, N128, N127, N126, N125, 
        N124, N123, N122, N121, N120, N119, N118, N117, N116, N115, N114, N113, 
        N112, N111, N110, N109, N108, N107, N106, N105, N104, 
        SYNOPSYS_UNCONNECTED__55, SYNOPSYS_UNCONNECTED__56}) );
  lead_comb_core_DW_mult_uns_0 mult_23 ( .a({N149, N148, N147, N146, N145, 
        N144, N143, N142, N141, N140, N139, N138, N137, N136, N135, N134, N133, 
        N132, N131, N130, N129, N128, N127, N126}), .b({N149, N148, N147, N146, 
        N145, N144, N143, N142, N141, N140, N139, N138, N137, N136, N135, N134, 
        N133, N132, N131, N130, N129, N128, N127, N126}), .product({
        square_product_47_, square_product_46_, square_product_45_, 
        square_product_44_, square_product_43_, square_product_42_, 
        square_product_41_, square_product_40_, square_product_39_, 
        square_product_38_, square_product_37_, square_product_36_, 
        square_product_35_, square_product_34_, square_product_33_, 
        square_product_32_, square_product_31_, square_product_30_, 
        square_product_29_, square_product_28_, square_product_27_, 
        square_product_26_, square_product_25_, square_product_24_, 
        square_product_23_, square_product_22_, square_product_21_, 
        square_product_20_, square_product_19_, square_product_18_, 
        square_product_17_, square_product_16_, square_product_15_, 
        square_product_14_, square_product_13_, square_product_12_, 
        square_product_11_, square_product_10_, square_product_9_, 
        square_product_8_, square_product_7_, square_product_6_, 
        square_product_5_, square_product_4_, square_product_3_, 
        square_product_2_, SYNOPSYS_UNCONNECTED__57, SYNOPSYS_UNCONNECTED__58}) );
  lead_comb_core_DW01_add_1_DW01_add_5 add_26 ( .A({n29, n29, 
        square_product_47_, square_product_46_, square_product_45_, 
        square_product_44_, square_product_43_, square_product_42_, 
        square_product_41_, square_product_40_, square_product_39_, 
        square_product_38_, square_product_37_, square_product_36_, 
        square_product_35_, square_product_34_, square_product_33_, 
        square_product_32_, square_product_31_, square_product_30_, 
        square_product_29_, square_product_28_, square_product_27_, 
        square_product_26_, square_product_25_, square_product_24_, 
        square_product_23_, square_product_22_, square_product_21_, 
        square_product_20_, square_product_19_, square_product_18_, 
        square_product_17_, square_product_16_, square_product_15_, 
        square_product_14_, square_product_13_, square_product_12_, 
        square_product_11_, square_product_10_, square_product_9_, 
        square_product_8_, square_product_7_, square_product_6_, 
        square_product_5_, square_product_4_, square_product_3_, 
        square_product_2_, n29}), .B({linear_term, n29, n29}), .CI(n29), .SUM(
        {SYNOPSYS_UNCONNECTED__59, qlog, SYNOPSYS_UNCONNECTED__60, 
        SYNOPSYS_UNCONNECTED__61, SYNOPSYS_UNCONNECTED__62, 
        SYNOPSYS_UNCONNECTED__63, SYNOPSYS_UNCONNECTED__64, 
        SYNOPSYS_UNCONNECTED__65, SYNOPSYS_UNCONNECTED__66, 
        SYNOPSYS_UNCONNECTED__67, SYNOPSYS_UNCONNECTED__68, 
        SYNOPSYS_UNCONNECTED__69, SYNOPSYS_UNCONNECTED__70, 
        SYNOPSYS_UNCONNECTED__71, SYNOPSYS_UNCONNECTED__72, 
        SYNOPSYS_UNCONNECTED__73, SYNOPSYS_UNCONNECTED__74, 
        SYNOPSYS_UNCONNECTED__75, SYNOPSYS_UNCONNECTED__76, 
        SYNOPSYS_UNCONNECTED__77, SYNOPSYS_UNCONNECTED__78, 
        SYNOPSYS_UNCONNECTED__79, SYNOPSYS_UNCONNECTED__80, 
        SYNOPSYS_UNCONNECTED__81, SYNOPSYS_UNCONNECTED__82, 
        SYNOPSYS_UNCONNECTED__83}) );
  ND2D1 U6 ( .A1(borrow), .A2(n260), .ZN(linear_term[48]) );
  INVD1 U7 ( .I(N101), .ZN(n260) );
  AO22D0 U8 ( .A1(N96), .A2(borrow), .B1(N145), .B2(n5), .Z(linear_term[43])
         );
  AO22D0 U9 ( .A1(N95), .A2(borrow), .B1(N144), .B2(n5), .Z(linear_term[42])
         );
  AO22D0 U10 ( .A1(N60), .A2(borrow), .B1(N109), .B2(n5), .Z(linear_term[7])
         );
  AO22D0 U15 ( .A1(N99), .A2(borrow), .B1(N148), .B2(n5), .Z(linear_term[46])
         );
  AO22D0 U16 ( .A1(N97), .A2(borrow), .B1(N146), .B2(n5), .Z(linear_term[44])
         );
  AO22D0 U17 ( .A1(N94), .A2(borrow), .B1(N143), .B2(n5), .Z(linear_term[41])
         );
  AO22D0 U18 ( .A1(N93), .A2(borrow), .B1(N142), .B2(n610), .Z(linear_term[40]) );
  AO22D0 U19 ( .A1(N92), .A2(borrow), .B1(N141), .B2(n5), .Z(linear_term[39])
         );
  AO22D0 U20 ( .A1(N91), .A2(borrow), .B1(N140), .B2(n610), .Z(linear_term[38]) );
  AO22D0 U21 ( .A1(N90), .A2(borrow), .B1(N139), .B2(n610), .Z(linear_term[37]) );
  AO22D0 U22 ( .A1(N89), .A2(borrow), .B1(N138), .B2(n5), .Z(linear_term[36])
         );
  AO22D0 U23 ( .A1(N88), .A2(borrow), .B1(N137), .B2(n610), .Z(linear_term[35]) );
  AO22D0 U24 ( .A1(N87), .A2(borrow), .B1(N136), .B2(n5), .Z(linear_term[34])
         );
  AO22D0 U25 ( .A1(N86), .A2(borrow), .B1(N135), .B2(n610), .Z(linear_term[33]) );
  AO22D0 U26 ( .A1(N85), .A2(borrow), .B1(N134), .B2(n610), .Z(linear_term[32]) );
  AO22D0 U27 ( .A1(N84), .A2(borrow), .B1(N133), .B2(n5), .Z(linear_term[31])
         );
  AO22D0 U28 ( .A1(N83), .A2(borrow), .B1(N132), .B2(n610), .Z(linear_term[30]) );
  AO22D0 U29 ( .A1(N82), .A2(borrow), .B1(N131), .B2(n5), .Z(linear_term[29])
         );
  AO22D0 U30 ( .A1(N81), .A2(borrow), .B1(N130), .B2(n610), .Z(linear_term[28]) );
  AO22D0 U31 ( .A1(N80), .A2(borrow), .B1(N129), .B2(n610), .Z(linear_term[27]) );
  AO22D0 U32 ( .A1(N79), .A2(borrow), .B1(N128), .B2(n5), .Z(linear_term[26])
         );
  AO22D0 U33 ( .A1(N78), .A2(borrow), .B1(N127), .B2(n610), .Z(linear_term[25]) );
  AO22D0 U34 ( .A1(N77), .A2(borrow), .B1(N126), .B2(n5), .Z(linear_term[24])
         );
  AO22D0 U35 ( .A1(N76), .A2(borrow), .B1(N125), .B2(n610), .Z(linear_term[23]) );
  AO22D0 U36 ( .A1(N75), .A2(borrow), .B1(N124), .B2(n610), .Z(linear_term[22]) );
  AO22D0 U37 ( .A1(N74), .A2(borrow), .B1(N123), .B2(n5), .Z(linear_term[21])
         );
  AO22D0 U38 ( .A1(N73), .A2(borrow), .B1(N122), .B2(n610), .Z(linear_term[20]) );
  AO22D0 U39 ( .A1(N72), .A2(borrow), .B1(N121), .B2(n5), .Z(linear_term[19])
         );
  AO22D0 U40 ( .A1(N71), .A2(borrow), .B1(N120), .B2(n610), .Z(linear_term[18]) );
  AO22D0 U41 ( .A1(N70), .A2(borrow), .B1(N119), .B2(n5), .Z(linear_term[17])
         );
  AO22D0 U42 ( .A1(N69), .A2(borrow), .B1(N118), .B2(n610), .Z(linear_term[16]) );
  AO22D0 U43 ( .A1(N68), .A2(borrow), .B1(N117), .B2(n610), .Z(linear_term[15]) );
  AO22D0 U44 ( .A1(N67), .A2(borrow), .B1(N116), .B2(n5), .Z(linear_term[14])
         );
  AO22D0 U45 ( .A1(N66), .A2(borrow), .B1(N115), .B2(n610), .Z(linear_term[13]) );
  AO22D0 U46 ( .A1(N65), .A2(borrow), .B1(N114), .B2(n5), .Z(linear_term[12])
         );
  AO22D0 U47 ( .A1(N64), .A2(borrow), .B1(N113), .B2(n610), .Z(linear_term[11]) );
  AO22D0 U48 ( .A1(N63), .A2(borrow), .B1(N112), .B2(n5), .Z(linear_term[10])
         );
  AO22D0 U49 ( .A1(borrow), .A2(N62), .B1(N111), .B2(n5), .Z(linear_term[9])
         );
  AO22D0 U50 ( .A1(N61), .A2(borrow), .B1(N110), .B2(n5), .Z(linear_term[8])
         );
  AO22D0 U51 ( .A1(N59), .A2(borrow), .B1(N108), .B2(n5), .Z(linear_term[6])
         );
  AO22D0 U52 ( .A1(N58), .A2(borrow), .B1(N107), .B2(n5), .Z(linear_term[5])
         );
  AO22D0 U53 ( .A1(N149), .A2(n5), .B1(N100), .B2(borrow), .Z(linear_term[47])
         );
  AO22D0 U62 ( .A1(N98), .A2(borrow), .B1(N147), .B2(n5), .Z(linear_term[45])
         );
  AO22D0 U63 ( .A1(N57), .A2(borrow), .B1(N106), .B2(n5), .Z(linear_term[4])
         );
  AO22D0 U64 ( .A1(N56), .A2(borrow), .B1(N105), .B2(n5), .Z(linear_term[3])
         );
  AO22D0 U65 ( .A1(N55), .A2(borrow), .B1(N104), .B2(n5), .Z(linear_term[2])
         );
  AO22D0 U76 ( .A1(N36), .A2(n5), .B1(N12), .B2(borrow), .Z(abs_delta[7]) );
  INVD1 U77 ( .I(n4), .ZN(n610) );
  INVD1 U78 ( .I(n4), .ZN(n5) );
  AO22D0 U79 ( .A1(N9), .A2(borrow), .B1(N33), .B2(n5), .Z(abs_delta[4]) );
  AO22D0 U80 ( .A1(N34), .A2(n5), .B1(N10), .B2(borrow), .Z(abs_delta[5]) );
  AO22D0 U81 ( .A1(N7), .A2(borrow), .B1(N31), .B2(n5), .Z(abs_delta[2]) );
  AO22D0 U82 ( .A1(N37), .A2(n5), .B1(N13), .B2(borrow), .Z(abs_delta[8]) );
  AO22D0 U83 ( .A1(N35), .A2(n5), .B1(N11), .B2(borrow), .Z(abs_delta[6]) );
  AO22D0 U84 ( .A1(N8), .A2(borrow), .B1(N32), .B2(n5), .Z(abs_delta[3]) );
  AO22D0 U85 ( .A1(N38), .A2(n5), .B1(N14), .B2(borrow), .Z(abs_delta[9]) );
  AO22D0 U86 ( .A1(N40), .A2(n5), .B1(N16), .B2(borrow), .Z(abs_delta[11]) );
  AO22D0 U87 ( .A1(N51), .A2(n5), .B1(N27), .B2(borrow), .Z(abs_delta[22]) );
  AO22D0 U88 ( .A1(N43), .A2(n5), .B1(N19), .B2(n4), .Z(abs_delta[14]) );
  AO22D0 U89 ( .A1(N39), .A2(n5), .B1(N15), .B2(borrow), .Z(abs_delta[10]) );
  AO22D0 U90 ( .A1(N45), .A2(n5), .B1(N21), .B2(borrow), .Z(abs_delta[16]) );
  AO22D0 U91 ( .A1(N50), .A2(n5), .B1(N26), .B2(borrow), .Z(abs_delta[21]) );
  AO22D0 U92 ( .A1(N48), .A2(n5), .B1(N24), .B2(borrow), .Z(abs_delta[19]) );
  AO22D0 U93 ( .A1(N46), .A2(n5), .B1(N22), .B2(borrow), .Z(abs_delta[17]) );
  AO22D0 U94 ( .A1(N41), .A2(n5), .B1(N17), .B2(borrow), .Z(abs_delta[12]) );
  AO22D0 U95 ( .A1(N44), .A2(n5), .B1(N20), .B2(borrow), .Z(abs_delta[15]) );
  AO22D0 U96 ( .A1(N49), .A2(n5), .B1(N25), .B2(borrow), .Z(abs_delta[20]) );
  AO22D0 U97 ( .A1(N47), .A2(n5), .B1(N23), .B2(borrow), .Z(abs_delta[18]) );
  AO22D0 U98 ( .A1(N42), .A2(n5), .B1(N18), .B2(borrow), .Z(abs_delta[13]) );
  CKBD1 U103 ( .I(borrow), .Z(n4) );
  AO22D0 U104 ( .A1(N6), .A2(borrow), .B1(N30), .B2(n5), .Z(abs_delta[1]) );
  AO22D0 U105 ( .A1(N52), .A2(n5), .B1(N28), .B2(borrow), .Z(abs_delta[23]) );
  TIEL U106 ( .ZN(n29) );
  TIEH U107 ( .Z(n280) );
endmodule


module fp32_normal_finite_wrapper_DW01_add_1_DW01_add_2 ( A, B, CI, SUM, CO );
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
  fp32_normal_finite_wrapper_DW01_add_1_DW01_add_2 add_1_root_add_0_root_add_22_2 ( 
        .A(x[30:23]), .B({y[30], N17, N16, N15, N14, N13, N12, N11}), .CI(n80), 
        .SUM({N10, N9, N8, N7, N6, N5, N4, N3}) );
  AN2XD1 U3 ( .A1(exponent_adjust[0]), .A2(N3), .Z(n1) );
  CKBD1 U6 ( .I(result_fraction[14]), .Z(result[14]) );
  CKBD1 U7 ( .I(result_fraction[7]), .Z(result[7]) );
  CKBD1 U8 ( .I(result_fraction[8]), .Z(result[8]) );
  CKBD1 U9 ( .I(result_fraction[12]), .Z(result[12]) );
  CKBD1 U10 ( .I(result_fraction[10]), .Z(result[10]) );
  CKBD1 U11 ( .I(result_fraction[15]), .Z(result[15]) );
  CKBD1 U12 ( .I(result_fraction[13]), .Z(result[13]) );
  CKBD1 U13 ( .I(result_fraction[11]), .Z(result[11]) );
  CKBD1 U14 ( .I(result_fraction[16]), .Z(result[16]) );
  CKBD1 U15 ( .I(result_fraction[20]), .Z(result[20]) );
  CKBD1 U16 ( .I(result_fraction[18]), .Z(result[18]) );
  CKBD1 U17 ( .I(result_fraction[5]), .Z(result[5]) );
  CKBD1 U18 ( .I(result_fraction[3]), .Z(result[3]) );
  CKBD1 U19 ( .I(result_fraction[6]), .Z(result[6]) );
  CKBD1 U20 ( .I(result_fraction[9]), .Z(result[9]) );
  CKBD1 U21 ( .I(result_fraction[21]), .Z(result[21]) );
  CKBD1 U22 ( .I(result_fraction[19]), .Z(result[19]) );
  CKBD1 U23 ( .I(result_fraction[1]), .Z(result[1]) );
  CKBD1 U24 ( .I(result_fraction[4]), .Z(result[4]) );
  CKBD1 U25 ( .I(result_fraction[2]), .Z(result[2]) );
  CKBD1 U26 ( .I(result_fraction[17]), .Z(result[17]) );
  FA1D0 U27 ( .A(N4), .B(exponent_adjust[1]), .CI(n1), .CO(
        add_0_root_add_0_root_add_22_2_carry[2]), .S(result[24]) );
  FA1D0 U28 ( .A(N5), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[2]), .CO(
        add_0_root_add_0_root_add_22_2_carry[3]), .S(result[25]) );
  FA1D0 U29 ( .A(N6), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[3]), .CO(
        add_0_root_add_0_root_add_22_2_carry[4]), .S(result[26]) );
  FA1D0 U30 ( .A(N7), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[4]), .CO(
        add_0_root_add_0_root_add_22_2_carry[5]), .S(result[27]) );
  FA1D0 U31 ( .A(N8), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[5]), .CO(
        add_0_root_add_0_root_add_22_2_carry[6]), .S(result[28]) );
  FA1D0 U32 ( .A(N9), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[6]), .CO(
        add_0_root_add_0_root_add_22_2_carry[7]), .S(result[29]) );
  CKBD1 U39 ( .I(x[21]), .Z(fraction_x[21]) );
  CKBD1 U40 ( .I(x[22]), .Z(fraction_x[22]) );
  CKBD1 U41 ( .I(x[20]), .Z(fraction_x[20]) );
  CKBD1 U42 ( .I(result_fraction[22]), .Z(result[22]) );
  CKBD1 U43 ( .I(x[19]), .Z(fraction_x[19]) );
  CKBD1 U44 ( .I(result_fraction[0]), .Z(result[0]) );
  CKBD1 U45 ( .I(x[18]), .Z(fraction_x[18]) );
  CKBD1 U46 ( .I(x[16]), .Z(fraction_x[16]) );
  CKBD1 U47 ( .I(x[17]), .Z(fraction_x[17]) );
  CKBD1 U48 ( .I(x[15]), .Z(fraction_x[15]) );
  CKBD1 U49 ( .I(x[14]), .Z(fraction_x[14]) );
  CKBD1 U50 ( .I(x[12]), .Z(fraction_x[12]) );
  CKBD1 U51 ( .I(x[13]), .Z(fraction_x[13]) );
  CKBD1 U52 ( .I(x[11]), .Z(fraction_x[11]) );
  CKBD1 U53 ( .I(x[10]), .Z(fraction_x[10]) );
  CKBD1 U54 ( .I(x[9]), .Z(fraction_x[9]) );
  CKBD1 U55 ( .I(x[8]), .Z(fraction_x[8]) );
  CKBD1 U56 ( .I(x[7]), .Z(fraction_x[7]) );
  CKBD1 U57 ( .I(x[4]), .Z(fraction_x[4]) );
  CKBD1 U58 ( .I(x[5]), .Z(fraction_x[5]) );
  CKBD1 U59 ( .I(x[6]), .Z(fraction_x[6]) );
  CKBD1 U60 ( .I(x[3]), .Z(fraction_x[3]) );
  CKBD1 U61 ( .I(x[2]), .Z(fraction_x[2]) );
  CKBD1 U62 ( .I(y[0]), .Z(fraction_y[0]) );
  CKBD1 U63 ( .I(y[1]), .Z(fraction_y[1]) );
  XOR3D1 U66 ( .A1(N10), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_22_2_carry[7]), .Z(result[30]) );
  INVD1 U74 ( .I(y[29]), .ZN(N17) );
  INVD1 U75 ( .I(y[24]), .ZN(N12) );
  INVD1 U76 ( .I(y[25]), .ZN(N13) );
  INVD1 U77 ( .I(y[26]), .ZN(N14) );
  INVD1 U78 ( .I(y[27]), .ZN(N15) );
  INVD1 U79 ( .I(y[28]), .ZN(N16) );
  CKBD1 U88 ( .I(x[1]), .Z(fraction_x[1]) );
  CKBD1 U89 ( .I(x[0]), .Z(fraction_x[0]) );
  CKBD1 U90 ( .I(y[22]), .Z(fraction_y[22]) );
  CKBD1 U91 ( .I(y[21]), .Z(fraction_y[21]) );
  CKBD1 U92 ( .I(y[20]), .Z(fraction_y[20]) );
  CKBD1 U93 ( .I(y[19]), .Z(fraction_y[19]) );
  CKBD1 U94 ( .I(y[18]), .Z(fraction_y[18]) );
  CKBD1 U95 ( .I(y[17]), .Z(fraction_y[17]) );
  CKBD1 U96 ( .I(y[16]), .Z(fraction_y[16]) );
  CKBD1 U97 ( .I(y[15]), .Z(fraction_y[15]) );
  CKBD1 U98 ( .I(y[14]), .Z(fraction_y[14]) );
  CKBD1 U99 ( .I(y[13]), .Z(fraction_y[13]) );
  CKBD1 U100 ( .I(y[12]), .Z(fraction_y[12]) );
  CKBD1 U101 ( .I(y[11]), .Z(fraction_y[11]) );
  CKBD1 U102 ( .I(y[10]), .Z(fraction_y[10]) );
  CKBD1 U103 ( .I(y[9]), .Z(fraction_y[9]) );
  CKBD1 U104 ( .I(y[8]), .Z(fraction_y[8]) );
  CKBD1 U105 ( .I(y[7]), .Z(fraction_y[7]) );
  CKBD1 U106 ( .I(y[6]), .Z(fraction_y[6]) );
  CKBD1 U107 ( .I(y[5]), .Z(fraction_y[5]) );
  CKBD1 U108 ( .I(y[4]), .Z(fraction_y[4]) );
  CKBD1 U109 ( .I(y[3]), .Z(fraction_y[3]) );
  CKBD1 U110 ( .I(y[2]), .Z(fraction_y[2]) );
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


  fp32_normal_finite_wrapper shared_wrapper ( .x(x), .y(y), .divide_mode(1'b0), 
        .fraction_x(mantissa_x), .fraction_y(mantissa_y), .result_fraction(
        mantissa_out), .exponent_adjust({shift[0], shift[0], shift[0]}), 
        .result(out0) );
endmodule


module lead_fp32_paceio_comb_DW_cmp_0 ( A, B, TC, GE_LT, GE_GT_EQ, GE_LT_GT_LE, 
        EQ_NE );
  input [23:0] A;
  input [23:0] B;
  input TC, GE_LT, GE_GT_EQ;
  output GE_LT_GT_LE, EQ_NE;
  wire   n937, n938, n939, n940, n941, n942, n943, n944, n945, n946, n947,
         n948, n949, n950, n951, n952, n953, n954, n955, n956, n957, n958,
         n959, n960, n961, n962, n963, n964, n965, n966, n967, n968, n969,
         n970, n971, n972, n973, n974, n975, n976, n977, n978, n979, n980,
         n981, n982, n983, n984, n985, n986, n987, n988, n989, n990, n991,
         n992, n993, n994, n995, n996, n997, n998, n999, n1000, n1001, n1002,
         n1003, n1004, n1005, n1006;

  INVD1 U467 ( .I(n974), .ZN(n939) );
  INVD1 U468 ( .I(n986), .ZN(n943) );
  INVD1 U469 ( .I(n1001), .ZN(n942) );
  INVD1 U470 ( .I(n967), .ZN(n937) );
  INVD1 U471 ( .I(B[14]), .ZN(n953) );
  INVD1 U472 ( .I(n981), .ZN(n946) );
  INVD1 U473 ( .I(B[3]), .ZN(n962) );
  INVD1 U474 ( .I(B[2]), .ZN(n963) );
  INVD1 U475 ( .I(A[1]), .ZN(n947) );
  INVD1 U476 ( .I(B[11]), .ZN(n956) );
  INVD1 U477 ( .I(B[9]), .ZN(n958) );
  INVD1 U478 ( .I(B[12]), .ZN(n955) );
  INVD1 U479 ( .I(B[10]), .ZN(n957) );
  INVD1 U480 ( .I(B[15]), .ZN(n952) );
  INVD1 U481 ( .I(B[8]), .ZN(n959) );
  INVD1 U482 ( .I(B[19]), .ZN(n950) );
  INVD1 U483 ( .I(B[4]), .ZN(n961) );
  INVD1 U484 ( .I(B[13]), .ZN(n954) );
  INVD1 U485 ( .I(B[21]), .ZN(n948) );
  INVD1 U486 ( .I(A[7]), .ZN(n944) );
  INVD1 U487 ( .I(B[5]), .ZN(n960) );
  INVD1 U488 ( .I(B[18]), .ZN(n951) );
  INVD1 U489 ( .I(A[17]), .ZN(n940) );
  INVD1 U490 ( .I(B[20]), .ZN(n949) );
  INVD1 U491 ( .I(A[6]), .ZN(n945) );
  INVD1 U492 ( .I(A[16]), .ZN(n941) );
  INVD1 U493 ( .I(A[22]), .ZN(n938) );
  OAI32D0 U494 ( .A1(n964), .A2(n965), .A3(n966), .B1(n967), .B2(n968), .ZN(
        GE_LT_GT_LE) );
  AOI221D0 U495 ( .A1(B[22]), .A2(n938), .B1(n969), .B2(n970), .C(n971), .ZN(
        n968) );
  AOI221D0 U496 ( .A1(n972), .A2(n973), .B1(n973), .B2(n965), .C(n974), .ZN(
        n971) );
  OA32D0 U497 ( .A1(n951), .A2(A[18]), .A3(n975), .B1(A[19]), .B2(n950), .Z(
        n973) );
  AOI32D0 U498 ( .A1(n976), .A2(n941), .A3(B[16]), .B1(B[17]), .B2(n940), .ZN(
        n972) );
  OAI22D0 U499 ( .A1(A[21]), .A2(n948), .B1(A[20]), .B2(n949), .ZN(n969) );
  OAI31D0 U500 ( .A1(n977), .A2(n978), .A3(n979), .B(n939), .ZN(n966) );
  IOA21D0 U501 ( .A1(n949), .A2(A[20]), .B(n970), .ZN(n974) );
  CKND2D0 U502 ( .A1(A[21]), .A2(n948), .ZN(n970) );
  OA211D0 U503 ( .A1(n980), .A2(n981), .B(n943), .C(n982), .Z(n979) );
  AOI221D0 U504 ( .A1(n983), .A2(n946), .B1(A[4]), .B2(n961), .C(n984), .ZN(
        n982) );
  AOI22D0 U505 ( .A1(B[1]), .A2(n947), .B1(n985), .B2(B[0]), .ZN(n983) );
  IAO21D0 U506 ( .A1(n947), .A2(B[1]), .B(A[0]), .ZN(n985) );
  OAI32D0 U507 ( .A1(n963), .A2(A[2]), .A3(n987), .B1(A[3]), .B2(n962), .ZN(
        n981) );
  AOI21D0 U508 ( .A1(A[2]), .A2(n963), .B(n987), .ZN(n980) );
  AN2D0 U509 ( .A1(A[3]), .A2(n962), .Z(n987) );
  AOI32D0 U512 ( .A1(B[6]), .A2(n945), .A3(n990), .B1(n944), .B2(B[7]), .ZN(
        n989) );
  OR2D0 U513 ( .A1(B[7]), .A2(n944), .Z(n990) );
  OA32D0 U514 ( .A1(n984), .A2(A[4]), .A3(n961), .B1(n960), .B2(A[5]), .Z(n988) );
  INR2D0 U515 ( .A1(A[5]), .B1(B[5]), .ZN(n984) );
  AO21D0 U516 ( .A1(n951), .A2(A[18]), .B(n975), .Z(n965) );
  AN2D0 U517 ( .A1(A[19]), .A2(n950), .Z(n975) );
  OAI211D0 U518 ( .A1(n991), .A2(n977), .B(n937), .C(n992), .ZN(n964) );
  OA21D0 U519 ( .A1(n941), .A2(B[16]), .B(n976), .Z(n992) );
  OR2D0 U520 ( .A1(B[17]), .A2(n940), .Z(n976) );
  NR2D0 U521 ( .A1(n938), .A2(B[22]), .ZN(n967) );
  CKND2D0 U522 ( .A1(n993), .A2(n994), .ZN(n977) );
  OAI221D0 U523 ( .A1(n995), .A2(n996), .B1(n997), .B2(n995), .C(n998), .ZN(
        n994) );
  OAI32D0 U524 ( .A1(n959), .A2(A[8]), .A3(n999), .B1(A[9]), .B2(n958), .ZN(
        n996) );
  OAI32D0 U525 ( .A1(n957), .A2(A[10]), .A3(n1000), .B1(A[11]), .B2(n956), 
        .ZN(n995) );
  OAI32D0 U527 ( .A1(n955), .A2(A[12]), .A3(n1004), .B1(A[13]), .B2(n954), 
        .ZN(n1003) );
  OAI32D0 U528 ( .A1(n953), .A2(A[14]), .A3(n1005), .B1(A[15]), .B2(n952), 
        .ZN(n1002) );
  IINR4D0 U529 ( .A1(n998), .A2(n997), .B1(n1006), .B2(n999), .ZN(n991) );
  AN2D0 U530 ( .A1(A[9]), .A2(n958), .Z(n999) );
  AN2D0 U531 ( .A1(A[8]), .A2(n959), .Z(n1006) );
  AOI21D0 U532 ( .A1(n957), .A2(A[10]), .B(n1000), .ZN(n997) );
  INR2D0 U533 ( .A1(A[11]), .B1(B[11]), .ZN(n1000) );
  AOI211D0 U534 ( .A1(n955), .A2(A[12]), .B(n1004), .C(n942), .ZN(n998) );
  INR2D0 U536 ( .A1(A[15]), .B1(B[15]), .ZN(n1005) );
  INR2D0 U537 ( .A1(A[13]), .B1(B[13]), .ZN(n1004) );
  OAI21D0 U510 ( .A1(n988), .A2(n986), .B(n989), .ZN(n978) );
  OAI21D0 U511 ( .A1(B[6]), .A2(n945), .B(n990), .ZN(n986) );
  AOI21D0 U526 ( .A1(n1003), .A2(n1001), .B(n1002), .ZN(n993) );
  AOI21D0 U535 ( .A1(A[14]), .A2(n953), .B(n1005), .ZN(n1001) );
endmodule


module lead_fp32_paceio_comb ( x, y, out0 );
  input [31:0] x;
  input [31:0] y;
  output [31:0] out0;
  wire   n7, below_one, n6, n9, n10;
  wire   [22:0] core_x;
  wire   [22:0] core_y;
  wire   [47:24] core_out;
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
        SYNOPSYS_UNCONNECTED__48;

  lead_comb_core lead_core ( .x({1'b0, core_x}), .y({1'b0, core_y}), .out0({
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
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, core_out, SYNOPSYS_UNCONNECTED__25, 
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
        SYNOPSYS_UNCONNECTED__48}) );
  FP_DIV_WRAPPER_32 fp_wrapper ( .x(x), .y(y), .out0(out0), .mantissa_x(core_x), .mantissa_y(core_y), .mantissa_out(normalized_q23), .shift(n9) );
  lead_fp32_paceio_comb_DW_cmp_0 lt_11 ( .A({n7, core_x}), .B({n7, core_y}), 
        .TC(n6), .GE_LT(n7), .GE_GT_EQ(n6), .GE_LT_GT_LE(below_one) );
  INVD1 U31 ( .I(n10), .ZN(n9) );
  AO22D0 U32 ( .A1(n9), .A2(core_out[38]), .B1(n10), .B2(core_out[39]), .Z(
        normalized_q23[14]) );
  AO22D0 U33 ( .A1(n10), .A2(core_out[32]), .B1(n9), .B2(core_out[31]), .Z(
        normalized_q23[7]) );
  AO22D0 U34 ( .A1(n9), .A2(core_out[32]), .B1(n10), .B2(core_out[33]), .Z(
        normalized_q23[8]) );
  AO22D0 U35 ( .A1(n9), .A2(core_out[36]), .B1(n10), .B2(core_out[37]), .Z(
        normalized_q23[12]) );
  AO22D0 U36 ( .A1(core_out[34]), .A2(n9), .B1(n10), .B2(core_out[35]), .Z(
        normalized_q23[10]) );
  AO22D0 U37 ( .A1(n9), .A2(core_out[39]), .B1(n10), .B2(core_out[40]), .Z(
        normalized_q23[15]) );
  AO22D0 U38 ( .A1(n9), .A2(core_out[37]), .B1(n10), .B2(core_out[38]), .Z(
        normalized_q23[13]) );
  AO22D0 U39 ( .A1(n9), .A2(core_out[35]), .B1(n10), .B2(core_out[36]), .Z(
        normalized_q23[11]) );
  AO22D0 U40 ( .A1(n9), .A2(core_out[40]), .B1(n10), .B2(core_out[41]), .Z(
        normalized_q23[16]) );
  AO22D0 U41 ( .A1(n9), .A2(core_out[44]), .B1(n10), .B2(core_out[45]), .Z(
        normalized_q23[20]) );
  AO22D0 U42 ( .A1(n9), .A2(core_out[42]), .B1(n10), .B2(core_out[43]), .Z(
        normalized_q23[18]) );
  AO22D0 U43 ( .A1(n10), .A2(core_out[30]), .B1(n9), .B2(core_out[29]), .Z(
        normalized_q23[5]) );
  AO22D0 U44 ( .A1(n10), .A2(core_out[28]), .B1(n9), .B2(core_out[27]), .Z(
        normalized_q23[3]) );
  AO22D0 U45 ( .A1(n10), .A2(core_out[31]), .B1(n9), .B2(core_out[30]), .Z(
        normalized_q23[6]) );
  AO22D0 U46 ( .A1(n9), .A2(core_out[33]), .B1(n10), .B2(core_out[34]), .Z(
        normalized_q23[9]) );
  AO22D0 U47 ( .A1(n9), .A2(core_out[45]), .B1(n10), .B2(core_out[46]), .Z(
        normalized_q23[21]) );
  AO22D0 U48 ( .A1(n9), .A2(core_out[43]), .B1(n10), .B2(core_out[44]), .Z(
        normalized_q23[19]) );
  AO22D0 U49 ( .A1(n10), .A2(core_out[26]), .B1(n9), .B2(core_out[25]), .Z(
        normalized_q23[1]) );
  AO22D0 U50 ( .A1(n10), .A2(core_out[29]), .B1(n9), .B2(core_out[28]), .Z(
        normalized_q23[4]) );
  AO22D0 U51 ( .A1(n10), .A2(core_out[27]), .B1(n9), .B2(core_out[26]), .Z(
        normalized_q23[2]) );
  AO22D0 U52 ( .A1(n9), .A2(core_out[41]), .B1(n10), .B2(core_out[42]), .Z(
        normalized_q23[17]) );
  INVD1 U53 ( .I(below_one), .ZN(n10) );
  AO22D0 U54 ( .A1(n9), .A2(core_out[46]), .B1(core_out[47]), .B2(n10), .Z(
        normalized_q23[22]) );
  AO22D0 U55 ( .A1(n10), .A2(core_out[25]), .B1(core_out[24]), .B2(n9), .Z(
        normalized_q23[0]) );
  TIEH U56 ( .Z(n7) );
  TIEL U57 ( .ZN(n6) );
endmodule

