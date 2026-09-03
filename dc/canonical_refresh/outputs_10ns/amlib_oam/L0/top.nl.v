/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Wed Sep  2 17:08:57 2026
/////////////////////////////////////////////////////////////


module top ( mantissa_x, mantissa_y, sign_x, sign_y, exp_x, exp_y, 
        mantissa_out, sign_out, exp_out );
  input [22:0] mantissa_x;
  input [22:0] mantissa_y;
  input [7:0] exp_x;
  input [7:0] exp_y;
  output [22:0] mantissa_out;
  output [7:0] exp_out;
  input sign_x, sign_y;
  output sign_out;
  wire   intadd_0_A_18_, intadd_0_A_17_, intadd_0_A_16_, intadd_0_A_15_,
         intadd_0_A_14_, intadd_0_A_13_, intadd_0_A_12_, intadd_0_A_11_,
         intadd_0_A_10_, intadd_0_A_9_, intadd_0_A_8_, intadd_0_A_7_,
         intadd_0_A_6_, intadd_0_A_5_, intadd_0_A_4_, intadd_0_A_3_,
         intadd_0_A_2_, intadd_0_A_1_, intadd_0_A_0_, intadd_0_B_18_,
         intadd_0_B_17_, intadd_0_B_16_, intadd_0_B_15_, intadd_0_B_14_,
         intadd_0_B_13_, intadd_0_B_12_, intadd_0_B_11_, intadd_0_B_10_,
         intadd_0_B_9_, intadd_0_B_8_, intadd_0_B_7_, intadd_0_B_6_,
         intadd_0_B_5_, intadd_0_B_4_, intadd_0_B_3_, intadd_0_B_2_,
         intadd_0_B_1_, intadd_0_B_0_, intadd_0_CI, intadd_0_SUM_18_,
         intadd_0_SUM_17_, intadd_0_SUM_16_, intadd_0_SUM_15_,
         intadd_0_SUM_14_, intadd_0_SUM_13_, intadd_0_SUM_12_,
         intadd_0_SUM_11_, intadd_0_SUM_10_, intadd_0_SUM_9_, intadd_0_SUM_8_,
         intadd_0_SUM_7_, intadd_0_SUM_6_, intadd_0_SUM_5_, intadd_0_SUM_4_,
         intadd_0_SUM_3_, intadd_0_SUM_2_, intadd_0_SUM_1_, intadd_0_SUM_0_,
         intadd_0_n19, intadd_0_n18, intadd_0_n17, intadd_0_n16, intadd_0_n15,
         intadd_0_n14, intadd_0_n13, intadd_0_n12, intadd_0_n11, intadd_0_n10,
         intadd_0_n9, intadd_0_n8, intadd_0_n7, intadd_0_n6, intadd_0_n5,
         intadd_0_n4, intadd_0_n3, intadd_0_n2, intadd_0_n1, intadd_1_A_7_,
         intadd_1_A_6_, intadd_1_A_5_, intadd_1_A_4_, intadd_1_A_3_,
         intadd_1_A_2_, intadd_1_A_1_, intadd_1_B_7_, intadd_1_B_6_,
         intadd_1_B_5_, intadd_1_B_4_, intadd_1_B_3_, intadd_1_B_2_,
         intadd_1_B_1_, intadd_1_CI, intadd_1_SUM_7_, intadd_1_SUM_6_,
         intadd_1_SUM_5_, intadd_1_SUM_4_, intadd_1_SUM_3_, intadd_1_SUM_2_,
         intadd_1_SUM_1_, intadd_1_SUM_0_, intadd_1_n8, intadd_1_n7,
         intadd_1_n6, intadd_1_n5, intadd_1_n4, intadd_1_n3, intadd_1_n2,
         intadd_1_n1, n162, n163, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n187, n188, n189, n190, n191, n192, n193, n194, n195,
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
         n328, n329, n330, n331, n332, n333, n334, n335, n336, n337;

  FA1D0 intadd_0_U20 ( .A(intadd_0_A_0_), .B(intadd_0_B_0_), .CI(intadd_0_CI), 
        .CO(intadd_0_n19), .S(intadd_0_SUM_0_) );
  FA1D0 intadd_0_U19 ( .A(intadd_0_A_1_), .B(intadd_0_B_1_), .CI(intadd_0_n19), 
        .CO(intadd_0_n18), .S(intadd_0_SUM_1_) );
  FA1D0 intadd_0_U18 ( .A(intadd_0_A_2_), .B(intadd_0_B_2_), .CI(intadd_0_n18), 
        .CO(intadd_0_n17), .S(intadd_0_SUM_2_) );
  FA1D0 intadd_0_U17 ( .A(intadd_0_A_3_), .B(intadd_0_B_3_), .CI(intadd_0_n17), 
        .CO(intadd_0_n16), .S(intadd_0_SUM_3_) );
  FA1D0 intadd_0_U16 ( .A(intadd_0_A_4_), .B(intadd_0_B_4_), .CI(intadd_0_n16), 
        .CO(intadd_0_n15), .S(intadd_0_SUM_4_) );
  FA1D0 intadd_0_U15 ( .A(intadd_0_A_5_), .B(intadd_0_B_5_), .CI(intadd_0_n15), 
        .CO(intadd_0_n14), .S(intadd_0_SUM_5_) );
  FA1D0 intadd_0_U14 ( .A(intadd_0_A_6_), .B(intadd_0_B_6_), .CI(intadd_0_n14), 
        .CO(intadd_0_n13), .S(intadd_0_SUM_6_) );
  FA1D0 intadd_0_U13 ( .A(intadd_0_A_7_), .B(intadd_0_B_7_), .CI(intadd_0_n13), 
        .CO(intadd_0_n12), .S(intadd_0_SUM_7_) );
  FA1D0 intadd_0_U12 ( .A(intadd_0_A_8_), .B(intadd_0_B_8_), .CI(intadd_0_n12), 
        .CO(intadd_0_n11), .S(intadd_0_SUM_8_) );
  FA1D0 intadd_0_U11 ( .A(intadd_0_A_9_), .B(intadd_0_B_9_), .CI(intadd_0_n11), 
        .CO(intadd_0_n10), .S(intadd_0_SUM_9_) );
  FA1D0 intadd_0_U10 ( .A(intadd_0_A_10_), .B(intadd_0_B_10_), .CI(
        intadd_0_n10), .CO(intadd_0_n9), .S(intadd_0_SUM_10_) );
  FA1D0 intadd_0_U9 ( .A(intadd_0_A_11_), .B(intadd_0_B_11_), .CI(intadd_0_n9), 
        .CO(intadd_0_n8), .S(intadd_0_SUM_11_) );
  FA1D0 intadd_0_U8 ( .A(intadd_0_A_12_), .B(intadd_0_B_12_), .CI(intadd_0_n8), 
        .CO(intadd_0_n7), .S(intadd_0_SUM_12_) );
  FA1D0 intadd_0_U7 ( .A(intadd_0_A_13_), .B(intadd_0_B_13_), .CI(intadd_0_n7), 
        .CO(intadd_0_n6), .S(intadd_0_SUM_13_) );
  FA1D0 intadd_0_U6 ( .A(intadd_0_A_14_), .B(intadd_0_B_14_), .CI(intadd_0_n6), 
        .CO(intadd_0_n5), .S(intadd_0_SUM_14_) );
  FA1D0 intadd_0_U5 ( .A(intadd_0_A_15_), .B(intadd_0_B_15_), .CI(intadd_0_n5), 
        .CO(intadd_0_n4), .S(intadd_0_SUM_15_) );
  FA1D0 intadd_0_U4 ( .A(intadd_0_A_16_), .B(intadd_0_B_16_), .CI(intadd_0_n4), 
        .CO(intadd_0_n3), .S(intadd_0_SUM_16_) );
  FA1D0 intadd_0_U3 ( .A(intadd_0_A_17_), .B(intadd_0_B_17_), .CI(intadd_0_n3), 
        .CO(intadd_0_n2), .S(intadd_0_SUM_17_) );
  FA1D0 intadd_0_U2 ( .A(intadd_0_A_18_), .B(intadd_0_B_18_), .CI(intadd_0_n2), 
        .CO(intadd_0_n1), .S(intadd_0_SUM_18_) );
  FA1D0 intadd_1_U9 ( .A(exp_x[0]), .B(exp_y[0]), .CI(intadd_1_CI), .CO(
        intadd_1_n8), .S(intadd_1_SUM_0_) );
  FA1D0 intadd_1_U8 ( .A(intadd_1_A_1_), .B(intadd_1_B_1_), .CI(intadd_1_n8), 
        .CO(intadd_1_n7), .S(intadd_1_SUM_1_) );
  FA1D0 intadd_1_U7 ( .A(intadd_1_A_2_), .B(intadd_1_B_2_), .CI(intadd_1_n7), 
        .CO(intadd_1_n6), .S(intadd_1_SUM_2_) );
  FA1D0 intadd_1_U6 ( .A(intadd_1_A_3_), .B(intadd_1_B_3_), .CI(intadd_1_n6), 
        .CO(intadd_1_n5), .S(intadd_1_SUM_3_) );
  FA1D0 intadd_1_U5 ( .A(intadd_1_A_4_), .B(intadd_1_B_4_), .CI(intadd_1_n5), 
        .CO(intadd_1_n4), .S(intadd_1_SUM_4_) );
  FA1D0 intadd_1_U4 ( .A(intadd_1_A_5_), .B(intadd_1_B_5_), .CI(intadd_1_n4), 
        .CO(intadd_1_n3), .S(intadd_1_SUM_5_) );
  FA1D0 intadd_1_U3 ( .A(intadd_1_A_6_), .B(intadd_1_B_6_), .CI(intadd_1_n3), 
        .CO(intadd_1_n2), .S(intadd_1_SUM_6_) );
  FA1D0 intadd_1_U2 ( .A(intadd_1_A_7_), .B(intadd_1_B_7_), .CI(intadd_1_n2), 
        .CO(intadd_1_n1), .S(intadd_1_SUM_7_) );
  INVD0 U246 ( .I(mantissa_x[22]), .ZN(n162) );
  INVD0 U247 ( .I(n162), .ZN(n163) );
  INVD0 U250 ( .I(mantissa_x[19]), .ZN(n166) );
  INVD0 U251 ( .I(n166), .ZN(n167) );
  INVD0 U253 ( .I(mantissa_y[21]), .ZN(n175) );
  INVD0 U254 ( .I(mantissa_x[21]), .ZN(n174) );
  CKND2D0 U255 ( .A1(n175), .A2(n174), .ZN(n169) );
  NR2D0 U256 ( .A1(n174), .A2(n175), .ZN(n168) );
  OAI222D0 U257 ( .A1(mantissa_y[22]), .A2(n169), .B1(mantissa_y[22]), .B2(
        n163), .C1(n163), .C2(n168), .ZN(n183) );
  OAI33D0 U258 ( .A1(mantissa_y[21]), .A2(mantissa_x[21]), .A3(n162), .B1(n175), .B2(n174), .B3(n163), .ZN(n170) );
  INVD0 U260 ( .I(mantissa_x[20]), .ZN(n325) );
  INVD0 U261 ( .I(mantissa_y[20]), .ZN(n173) );
  MAOI222D0 U262 ( .A(n325), .B(n174), .C(n173), .ZN(n178) );
  AOI22D0 U263 ( .A1(mantissa_y[21]), .A2(n174), .B1(mantissa_x[21]), .B2(n175), .ZN(n328) );
  MUX2ND0 U264 ( .I0(n163), .I1(n162), .S(n328), .ZN(n177) );
  NR2D0 U265 ( .A1(n171), .A2(n172), .ZN(n182) );
  AOI21D0 U266 ( .A1(n172), .A2(n171), .B(n182), .ZN(n185) );
  MAOI222D0 U267 ( .A(n167), .B(mantissa_x[20]), .C(mantissa_y[19]), .ZN(n330)
         );
  AOI22D0 U268 ( .A1(mantissa_x[20]), .A2(mantissa_y[20]), .B1(n173), .B2(n325), .ZN(n329) );
  MUX2ND0 U269 ( .I0(mantissa_x[21]), .I1(n174), .S(n329), .ZN(n176) );
  MAOI222D0 U270 ( .A(n330), .B(n176), .C(n175), .ZN(n179) );
  FA1D0 U271 ( .A(mantissa_y[22]), .B(n178), .CI(n177), .CO(n172), .S(n180) );
  NR2D0 U272 ( .A1(n179), .A2(n180), .ZN(n184) );
  AO21D0 U273 ( .A1(n180), .A2(n179), .B(n184), .Z(n194) );
  INVD0 U274 ( .I(intadd_0_n1), .ZN(n195) );
  CKND2D0 U275 ( .A1(n194), .A2(n195), .ZN(n193) );
  FA1D0 U276 ( .A(n183), .B(n182), .CI(n181), .CO(n191), .S(n192) );
  FA1D0 U277 ( .A(n185), .B(n184), .CI(n193), .CO(n181), .S(n197) );
  INVD0 U280 ( .I(n221), .ZN(n235) );
  IOA21D0 U281 ( .A1(n191), .A2(n197), .B(n235), .ZN(n190) );
  ND4D0 U282 ( .A1(intadd_1_SUM_3_), .A2(intadd_1_SUM_6_), .A3(intadd_1_SUM_2_), .A4(intadd_1_SUM_4_), .ZN(n189) );
  ND4D0 U283 ( .A1(intadd_1_SUM_7_), .A2(intadd_1_SUM_0_), .A3(intadd_1_SUM_5_), .A4(intadd_1_SUM_1_), .ZN(n188) );
  NR2D0 U284 ( .A1(n331), .A2(intadd_1_n1), .ZN(n187) );
  AO221D0 U285 ( .A1(n235), .A2(n189), .B1(n235), .B2(n188), .C(n187), .Z(n234) );
  ND3D0 U286 ( .A1(n235), .A2(n191), .A3(n192), .ZN(n222) );
  OAI211D0 U287 ( .A1(n192), .A2(n190), .B(n234), .C(n222), .ZN(
        mantissa_out[22]) );
  INVD0 U288 ( .I(n191), .ZN(intadd_1_B_1_) );
  NR2D0 U289 ( .A1(intadd_1_B_1_), .A2(n192), .ZN(intadd_1_CI) );
  CKND2D0 U290 ( .A1(n235), .A2(intadd_1_B_1_), .ZN(n233) );
  OAI21D0 U291 ( .A1(n195), .A2(n194), .B(n193), .ZN(n201) );
  CKND2D0 U292 ( .A1(n235), .A2(intadd_1_CI), .ZN(n226) );
  OA22D0 U293 ( .A1(intadd_0_SUM_18_), .A2(n222), .B1(n201), .B2(n226), .Z(
        n196) );
  OAI211D0 U294 ( .A1(n197), .A2(n233), .B(n196), .C(n234), .ZN(
        mantissa_out[21]) );
  OA22D0 U295 ( .A1(intadd_0_SUM_17_), .A2(n226), .B1(intadd_0_SUM_16_), .B2(
        n222), .Z(n198) );
  OAI211D0 U296 ( .A1(intadd_0_SUM_18_), .A2(n233), .B(n198), .C(n234), .ZN(
        mantissa_out[19]) );
  OA22D0 U297 ( .A1(intadd_0_SUM_15_), .A2(n222), .B1(intadd_0_SUM_16_), .B2(
        n226), .Z(n199) );
  OAI211D0 U298 ( .A1(intadd_0_SUM_17_), .A2(n233), .B(n199), .C(n234), .ZN(
        mantissa_out[18]) );
  OA22D0 U299 ( .A1(intadd_0_SUM_18_), .A2(n226), .B1(intadd_0_SUM_17_), .B2(
        n222), .Z(n200) );
  OAI211D0 U300 ( .A1(n233), .A2(n201), .B(n200), .C(n234), .ZN(
        mantissa_out[20]) );
  OA22D0 U301 ( .A1(intadd_0_SUM_13_), .A2(n222), .B1(intadd_0_SUM_14_), .B2(
        n226), .Z(n202) );
  OAI211D0 U302 ( .A1(intadd_0_SUM_15_), .A2(n233), .B(n202), .C(n234), .ZN(
        mantissa_out[16]) );
  OA22D0 U303 ( .A1(intadd_0_SUM_12_), .A2(n222), .B1(intadd_0_SUM_13_), .B2(
        n226), .Z(n203) );
  OAI211D0 U304 ( .A1(intadd_0_SUM_14_), .A2(n233), .B(n203), .C(n234), .ZN(
        mantissa_out[15]) );
  OA22D0 U305 ( .A1(intadd_0_SUM_14_), .A2(n222), .B1(intadd_0_SUM_15_), .B2(
        n226), .Z(n204) );
  OAI211D0 U306 ( .A1(intadd_0_SUM_16_), .A2(n233), .B(n204), .C(n234), .ZN(
        mantissa_out[17]) );
  OA22D0 U307 ( .A1(intadd_0_SUM_10_), .A2(n222), .B1(intadd_0_SUM_11_), .B2(
        n226), .Z(n205) );
  OAI211D0 U308 ( .A1(intadd_0_SUM_12_), .A2(n233), .B(n205), .C(n234), .ZN(
        mantissa_out[13]) );
  OA22D0 U309 ( .A1(intadd_0_SUM_9_), .A2(n222), .B1(intadd_0_SUM_10_), .B2(
        n226), .Z(n206) );
  OAI211D0 U310 ( .A1(intadd_0_SUM_11_), .A2(n233), .B(n206), .C(n234), .ZN(
        mantissa_out[12]) );
  OA22D0 U311 ( .A1(intadd_0_SUM_8_), .A2(n222), .B1(intadd_0_SUM_9_), .B2(
        n226), .Z(n207) );
  OAI211D0 U312 ( .A1(intadd_0_SUM_10_), .A2(n233), .B(n207), .C(n234), .ZN(
        mantissa_out[11]) );
  OA22D0 U313 ( .A1(intadd_0_SUM_7_), .A2(n222), .B1(intadd_0_SUM_8_), .B2(
        n226), .Z(n208) );
  OAI211D0 U314 ( .A1(intadd_0_SUM_9_), .A2(n233), .B(n208), .C(n234), .ZN(
        mantissa_out[10]) );
  OA22D0 U315 ( .A1(intadd_0_SUM_11_), .A2(n222), .B1(intadd_0_SUM_12_), .B2(
        n226), .Z(n209) );
  OAI211D0 U316 ( .A1(intadd_0_SUM_13_), .A2(n233), .B(n209), .C(n234), .ZN(
        mantissa_out[14]) );
  OA22D0 U317 ( .A1(intadd_0_SUM_6_), .A2(n222), .B1(intadd_0_SUM_7_), .B2(
        n226), .Z(n210) );
  OAI211D0 U318 ( .A1(intadd_0_SUM_8_), .A2(n233), .B(n210), .C(n234), .ZN(
        mantissa_out[9]) );
  OA22D0 U319 ( .A1(intadd_0_SUM_5_), .A2(n222), .B1(intadd_0_SUM_6_), .B2(
        n226), .Z(n211) );
  OAI211D0 U320 ( .A1(intadd_0_SUM_7_), .A2(n233), .B(n211), .C(n234), .ZN(
        mantissa_out[8]) );
  OA22D0 U321 ( .A1(intadd_0_SUM_4_), .A2(n222), .B1(intadd_0_SUM_5_), .B2(
        n226), .Z(n212) );
  OAI211D0 U322 ( .A1(intadd_0_SUM_6_), .A2(n233), .B(n212), .C(n234), .ZN(
        mantissa_out[7]) );
  OA22D0 U323 ( .A1(intadd_0_SUM_3_), .A2(n222), .B1(intadd_0_SUM_4_), .B2(
        n226), .Z(n213) );
  OAI211D0 U324 ( .A1(intadd_0_SUM_5_), .A2(n233), .B(n213), .C(n234), .ZN(
        mantissa_out[6]) );
  OA22D0 U325 ( .A1(intadd_0_SUM_2_), .A2(n222), .B1(intadd_0_SUM_3_), .B2(
        n226), .Z(n214) );
  OAI211D0 U326 ( .A1(intadd_0_SUM_4_), .A2(n233), .B(n214), .C(n234), .ZN(
        mantissa_out[5]) );
  OA22D0 U327 ( .A1(intadd_0_SUM_1_), .A2(n222), .B1(intadd_0_SUM_2_), .B2(
        n226), .Z(n215) );
  OAI211D0 U328 ( .A1(intadd_0_SUM_3_), .A2(n233), .B(n215), .C(n234), .ZN(
        mantissa_out[4]) );
  OA22D0 U329 ( .A1(intadd_0_SUM_0_), .A2(n222), .B1(intadd_0_SUM_1_), .B2(
        n226), .Z(n216) );
  OAI211D0 U330 ( .A1(intadd_0_SUM_2_), .A2(n233), .B(n216), .C(n234), .ZN(
        mantissa_out[3]) );
  CKAN2D0 U331 ( .A1(mantissa_y[0]), .A2(mantissa_x[0]), .Z(n224) );
  INVD0 U332 ( .I(mantissa_x[1]), .ZN(n241) );
  NR2D0 U333 ( .A1(mantissa_y[0]), .A2(mantissa_x[0]), .ZN(n217) );
  NR2D0 U334 ( .A1(n224), .A2(n217), .ZN(n227) );
  MUX2ND0 U335 ( .I0(n241), .I1(mantissa_x[1]), .S(n227), .ZN(n223) );
  INVD0 U336 ( .I(mantissa_x[2]), .ZN(n243) );
  INVD0 U337 ( .I(mantissa_y[2]), .ZN(n244) );
  AOI22D0 U338 ( .A1(mantissa_y[2]), .A2(mantissa_x[2]), .B1(n243), .B2(n244), 
        .ZN(n337) );
  INVD0 U339 ( .I(mantissa_y[1]), .ZN(n240) );
  AOI22D0 U340 ( .A1(mantissa_x[1]), .A2(mantissa_y[1]), .B1(n240), .B2(n241), 
        .ZN(n237) );
  OAI22D0 U341 ( .A1(mantissa_x[1]), .A2(n224), .B1(mantissa_y[0]), .B2(
        mantissa_x[0]), .ZN(n236) );
  XNR3D0 U342 ( .A1(n337), .A2(n237), .A3(n236), .ZN(n218) );
  CKND2D0 U343 ( .A1(n219), .A2(n218), .ZN(intadd_0_CI) );
  OAI21D0 U344 ( .A1(n219), .A2(n218), .B(intadd_0_CI), .ZN(n232) );
  OA22D0 U345 ( .A1(intadd_0_SUM_0_), .A2(n226), .B1(n222), .B2(n232), .Z(n220) );
  OAI211D0 U346 ( .A1(intadd_0_SUM_1_), .A2(n233), .B(n220), .C(n234), .ZN(
        mantissa_out[2]) );
  OA21D0 U347 ( .A1(intadd_1_SUM_0_), .A2(n221), .B(n234), .Z(exp_out[0]) );
  INVD0 U348 ( .I(n222), .ZN(n228) );
  FA1D0 U349 ( .A(mantissa_y[1]), .B(n224), .CI(n223), .CO(n219), .S(n229) );
  MAOI22D0 U350 ( .A1(n228), .A2(n229), .B1(n226), .B2(n232), .ZN(n225) );
  OAI211D0 U351 ( .A1(intadd_0_SUM_0_), .A2(n233), .B(n225), .C(n234), .ZN(
        mantissa_out[1]) );
  INVD0 U352 ( .I(n226), .ZN(n230) );
  AOI22D0 U353 ( .A1(n230), .A2(n229), .B1(n228), .B2(n227), .ZN(n231) );
  OAI211D0 U354 ( .A1(n233), .A2(n232), .B(n231), .C(n234), .ZN(
        mantissa_out[0]) );
  CKAN2D0 U355 ( .A1(exp_x[1]), .A2(exp_y[1]), .Z(intadd_1_B_2_) );
  CKAN2D0 U356 ( .A1(exp_x[2]), .A2(exp_y[2]), .Z(intadd_1_B_3_) );
  CKAN2D0 U357 ( .A1(exp_x[3]), .A2(exp_y[3]), .Z(intadd_1_B_4_) );
  CKAN2D0 U358 ( .A1(exp_x[4]), .A2(exp_y[4]), .Z(intadd_1_B_5_) );
  CKAN2D0 U359 ( .A1(exp_x[5]), .A2(exp_y[5]), .Z(intadd_1_B_6_) );
  CKAN2D0 U360 ( .A1(exp_x[6]), .A2(exp_y[6]), .Z(intadd_1_B_7_) );
  IOA21D0 U361 ( .A1(intadd_1_SUM_1_), .A2(n235), .B(n234), .ZN(exp_out[1]) );
  IOA21D0 U362 ( .A1(intadd_1_SUM_2_), .A2(n235), .B(n234), .ZN(exp_out[2]) );
  IOA21D0 U363 ( .A1(intadd_1_SUM_3_), .A2(n235), .B(n234), .ZN(exp_out[3]) );
  IOA21D0 U364 ( .A1(intadd_1_SUM_4_), .A2(n235), .B(n234), .ZN(exp_out[4]) );
  IOA21D0 U365 ( .A1(intadd_1_SUM_5_), .A2(n235), .B(n234), .ZN(exp_out[5]) );
  IOA21D0 U366 ( .A1(intadd_1_SUM_6_), .A2(n235), .B(n234), .ZN(exp_out[6]) );
  IOA21D0 U367 ( .A1(intadd_1_SUM_7_), .A2(n235), .B(n234), .ZN(exp_out[7]) );
  INVD0 U368 ( .I(n236), .ZN(n239) );
  MUX2ND0 U369 ( .I0(n243), .I1(mantissa_x[2]), .S(n237), .ZN(n238) );
  MAOI222D0 U370 ( .A(n239), .B(mantissa_y[2]), .C(n238), .ZN(intadd_0_B_0_)
         );
  MAOI222D0 U371 ( .A(n241), .B(n243), .C(n240), .ZN(n332) );
  INVD0 U372 ( .I(mantissa_x[3]), .ZN(n247) );
  INVD0 U373 ( .I(n337), .ZN(n336) );
  AOI22D0 U374 ( .A1(n337), .A2(mantissa_x[3]), .B1(n247), .B2(n336), .ZN(n242) );
  MAOI222D0 U375 ( .A(mantissa_y[3]), .B(n332), .C(n242), .ZN(intadd_0_B_1_)
         );
  INVD0 U376 ( .I(mantissa_x[4]), .ZN(n252) );
  INVD0 U377 ( .I(mantissa_y[4]), .ZN(n253) );
  AOI22D0 U378 ( .A1(mantissa_y[4]), .A2(mantissa_x[4]), .B1(n252), .B2(n253), 
        .ZN(n249) );
  MAOI222D0 U379 ( .A(n244), .B(n243), .C(n247), .ZN(n246) );
  INVD0 U380 ( .I(mantissa_y[3]), .ZN(n248) );
  AOI22D0 U381 ( .A1(mantissa_y[3]), .A2(mantissa_x[3]), .B1(n247), .B2(n248), 
        .ZN(n333) );
  XNR3D0 U382 ( .A1(n249), .A2(n246), .A3(n333), .ZN(intadd_0_A_1_) );
  MUX2ND0 U383 ( .I0(n252), .I1(mantissa_x[4]), .S(n333), .ZN(n245) );
  MAOI222D0 U384 ( .A(mantissa_y[4]), .B(n246), .C(n245), .ZN(intadd_0_B_2_)
         );
  INVD0 U385 ( .I(mantissa_x[5]), .ZN(n257) );
  INVD0 U386 ( .I(mantissa_y[5]), .ZN(n258) );
  AOI22D0 U387 ( .A1(mantissa_y[5]), .A2(mantissa_x[5]), .B1(n257), .B2(n258), 
        .ZN(n254) );
  MAOI222D0 U388 ( .A(n252), .B(n248), .C(n247), .ZN(n251) );
  XNR3D0 U389 ( .A1(n254), .A2(n251), .A3(n249), .ZN(intadd_0_A_2_) );
  MUX2ND0 U390 ( .I0(n257), .I1(mantissa_x[5]), .S(n249), .ZN(n250) );
  MAOI222D0 U391 ( .A(mantissa_y[5]), .B(n251), .C(n250), .ZN(intadd_0_B_3_)
         );
  INVD0 U392 ( .I(mantissa_x[6]), .ZN(n262) );
  INVD0 U393 ( .I(mantissa_y[6]), .ZN(n263) );
  AOI22D0 U394 ( .A1(mantissa_y[6]), .A2(mantissa_x[6]), .B1(n262), .B2(n263), 
        .ZN(n259) );
  MAOI222D0 U395 ( .A(n257), .B(n253), .C(n252), .ZN(n256) );
  XNR3D0 U396 ( .A1(n259), .A2(n256), .A3(n254), .ZN(intadd_0_A_3_) );
  MUX2ND0 U397 ( .I0(n262), .I1(mantissa_x[6]), .S(n254), .ZN(n255) );
  MAOI222D0 U398 ( .A(mantissa_y[6]), .B(n256), .C(n255), .ZN(intadd_0_B_4_)
         );
  INVD0 U399 ( .I(mantissa_x[7]), .ZN(n267) );
  INVD0 U400 ( .I(mantissa_y[7]), .ZN(n268) );
  AOI22D0 U401 ( .A1(mantissa_y[7]), .A2(mantissa_x[7]), .B1(n267), .B2(n268), 
        .ZN(n264) );
  MAOI222D0 U402 ( .A(n262), .B(n258), .C(n257), .ZN(n261) );
  XNR3D0 U403 ( .A1(n264), .A2(n261), .A3(n259), .ZN(intadd_0_A_4_) );
  MUX2ND0 U404 ( .I0(n267), .I1(mantissa_x[7]), .S(n259), .ZN(n260) );
  MAOI222D0 U405 ( .A(mantissa_y[7]), .B(n261), .C(n260), .ZN(intadd_0_B_5_)
         );
  INVD0 U406 ( .I(mantissa_x[8]), .ZN(n272) );
  INVD0 U407 ( .I(mantissa_y[8]), .ZN(n273) );
  AOI22D0 U408 ( .A1(mantissa_y[8]), .A2(mantissa_x[8]), .B1(n272), .B2(n273), 
        .ZN(n269) );
  MAOI222D0 U409 ( .A(n267), .B(n263), .C(n262), .ZN(n266) );
  XNR3D0 U410 ( .A1(n269), .A2(n266), .A3(n264), .ZN(intadd_0_A_5_) );
  MUX2ND0 U411 ( .I0(n272), .I1(mantissa_x[8]), .S(n264), .ZN(n265) );
  MAOI222D0 U412 ( .A(mantissa_y[8]), .B(n266), .C(n265), .ZN(intadd_0_B_6_)
         );
  INVD0 U413 ( .I(mantissa_x[9]), .ZN(n277) );
  INVD0 U414 ( .I(mantissa_y[9]), .ZN(n278) );
  AOI22D0 U415 ( .A1(mantissa_y[9]), .A2(mantissa_x[9]), .B1(n277), .B2(n278), 
        .ZN(n274) );
  MAOI222D0 U416 ( .A(n272), .B(n268), .C(n267), .ZN(n271) );
  XNR3D0 U417 ( .A1(n274), .A2(n271), .A3(n269), .ZN(intadd_0_A_6_) );
  MUX2ND0 U418 ( .I0(n277), .I1(mantissa_x[9]), .S(n269), .ZN(n270) );
  MAOI222D0 U419 ( .A(mantissa_y[9]), .B(n271), .C(n270), .ZN(intadd_0_B_7_)
         );
  INVD0 U420 ( .I(mantissa_x[10]), .ZN(n282) );
  INVD0 U421 ( .I(mantissa_y[10]), .ZN(n283) );
  AOI22D0 U422 ( .A1(mantissa_y[10]), .A2(mantissa_x[10]), .B1(n282), .B2(n283), .ZN(n279) );
  MAOI222D0 U423 ( .A(n277), .B(n273), .C(n272), .ZN(n276) );
  XNR3D0 U424 ( .A1(n279), .A2(n276), .A3(n274), .ZN(intadd_0_A_7_) );
  MUX2ND0 U425 ( .I0(n282), .I1(mantissa_x[10]), .S(n274), .ZN(n275) );
  MAOI222D0 U426 ( .A(mantissa_y[10]), .B(n276), .C(n275), .ZN(intadd_0_B_8_)
         );
  INVD0 U427 ( .I(mantissa_x[11]), .ZN(n287) );
  INVD0 U428 ( .I(mantissa_y[11]), .ZN(n288) );
  AOI22D0 U429 ( .A1(mantissa_y[11]), .A2(mantissa_x[11]), .B1(n287), .B2(n288), .ZN(n284) );
  MAOI222D0 U430 ( .A(n282), .B(n278), .C(n277), .ZN(n281) );
  XNR3D0 U431 ( .A1(n284), .A2(n281), .A3(n279), .ZN(intadd_0_A_8_) );
  MUX2ND0 U432 ( .I0(n287), .I1(mantissa_x[11]), .S(n279), .ZN(n280) );
  MAOI222D0 U433 ( .A(mantissa_y[11]), .B(n281), .C(n280), .ZN(intadd_0_B_9_)
         );
  INVD0 U434 ( .I(mantissa_x[12]), .ZN(n292) );
  INVD0 U435 ( .I(mantissa_y[12]), .ZN(n293) );
  AOI22D0 U436 ( .A1(mantissa_y[12]), .A2(mantissa_x[12]), .B1(n292), .B2(n293), .ZN(n289) );
  MAOI222D0 U437 ( .A(n287), .B(n283), .C(n282), .ZN(n286) );
  XNR3D0 U438 ( .A1(n289), .A2(n286), .A3(n284), .ZN(intadd_0_A_9_) );
  MUX2ND0 U439 ( .I0(n292), .I1(mantissa_x[12]), .S(n284), .ZN(n285) );
  MAOI222D0 U440 ( .A(mantissa_y[12]), .B(n286), .C(n285), .ZN(intadd_0_B_10_)
         );
  INVD0 U441 ( .I(mantissa_x[13]), .ZN(n297) );
  INVD0 U442 ( .I(mantissa_y[13]), .ZN(n298) );
  AOI22D0 U443 ( .A1(mantissa_y[13]), .A2(mantissa_x[13]), .B1(n297), .B2(n298), .ZN(n294) );
  MAOI222D0 U444 ( .A(n292), .B(n288), .C(n287), .ZN(n291) );
  XNR3D0 U445 ( .A1(n294), .A2(n291), .A3(n289), .ZN(intadd_0_A_10_) );
  MUX2ND0 U446 ( .I0(n297), .I1(mantissa_x[13]), .S(n289), .ZN(n290) );
  MAOI222D0 U447 ( .A(mantissa_y[13]), .B(n291), .C(n290), .ZN(intadd_0_B_11_)
         );
  INVD0 U448 ( .I(mantissa_x[14]), .ZN(n302) );
  INVD0 U449 ( .I(mantissa_y[14]), .ZN(n303) );
  AOI22D0 U450 ( .A1(mantissa_y[14]), .A2(mantissa_x[14]), .B1(n302), .B2(n303), .ZN(n299) );
  MAOI222D0 U451 ( .A(n297), .B(n293), .C(n292), .ZN(n296) );
  XNR3D0 U452 ( .A1(n299), .A2(n296), .A3(n294), .ZN(intadd_0_A_11_) );
  MUX2ND0 U453 ( .I0(n302), .I1(mantissa_x[14]), .S(n294), .ZN(n295) );
  MAOI222D0 U454 ( .A(mantissa_y[14]), .B(n296), .C(n295), .ZN(intadd_0_B_12_)
         );
  INVD0 U455 ( .I(mantissa_x[15]), .ZN(n307) );
  INVD0 U456 ( .I(mantissa_y[15]), .ZN(n308) );
  AOI22D0 U457 ( .A1(mantissa_y[15]), .A2(mantissa_x[15]), .B1(n307), .B2(n308), .ZN(n304) );
  MAOI222D0 U458 ( .A(n302), .B(n298), .C(n297), .ZN(n301) );
  XNR3D0 U459 ( .A1(n304), .A2(n301), .A3(n299), .ZN(intadd_0_A_12_) );
  MUX2ND0 U460 ( .I0(n307), .I1(mantissa_x[15]), .S(n299), .ZN(n300) );
  MAOI222D0 U461 ( .A(mantissa_y[15]), .B(n301), .C(n300), .ZN(intadd_0_B_13_)
         );
  INVD0 U462 ( .I(mantissa_x[16]), .ZN(n312) );
  INVD0 U463 ( .I(mantissa_y[16]), .ZN(n313) );
  AOI22D0 U464 ( .A1(mantissa_y[16]), .A2(mantissa_x[16]), .B1(n312), .B2(n313), .ZN(n309) );
  MAOI222D0 U465 ( .A(n307), .B(n303), .C(n302), .ZN(n306) );
  XNR3D0 U466 ( .A1(n309), .A2(n306), .A3(n304), .ZN(intadd_0_A_13_) );
  MUX2ND0 U467 ( .I0(n312), .I1(mantissa_x[16]), .S(n304), .ZN(n305) );
  MAOI222D0 U468 ( .A(mantissa_y[16]), .B(n306), .C(n305), .ZN(intadd_0_B_14_)
         );
  INVD0 U469 ( .I(mantissa_x[17]), .ZN(n317) );
  INVD0 U470 ( .I(mantissa_y[17]), .ZN(n318) );
  AOI22D0 U471 ( .A1(mantissa_y[17]), .A2(mantissa_x[17]), .B1(n317), .B2(n318), .ZN(n314) );
  MAOI222D0 U472 ( .A(n312), .B(n308), .C(n307), .ZN(n311) );
  XNR3D0 U473 ( .A1(n314), .A2(n311), .A3(n309), .ZN(intadd_0_A_14_) );
  MUX2ND0 U474 ( .I0(n317), .I1(mantissa_x[17]), .S(n309), .ZN(n310) );
  MAOI222D0 U475 ( .A(mantissa_y[17]), .B(n311), .C(n310), .ZN(intadd_0_B_15_)
         );
  INVD0 U476 ( .I(mantissa_x[18]), .ZN(n322) );
  INVD0 U477 ( .I(mantissa_y[18]), .ZN(n323) );
  AOI22D0 U478 ( .A1(mantissa_y[18]), .A2(mantissa_x[18]), .B1(n322), .B2(n323), .ZN(n319) );
  MAOI222D0 U479 ( .A(n317), .B(n313), .C(n312), .ZN(n316) );
  XNR3D0 U480 ( .A1(n319), .A2(n316), .A3(n314), .ZN(intadd_0_A_15_) );
  MUX2ND0 U481 ( .I0(n322), .I1(mantissa_x[18]), .S(n314), .ZN(n315) );
  MAOI222D0 U482 ( .A(mantissa_y[18]), .B(n316), .C(n315), .ZN(intadd_0_B_16_)
         );
  MAOI22D0 U483 ( .A1(n167), .A2(mantissa_y[19]), .B1(mantissa_y[19]), .B2(
        n167), .ZN(n324) );
  MAOI222D0 U484 ( .A(n322), .B(n318), .C(n317), .ZN(n321) );
  XNR3D0 U485 ( .A1(n324), .A2(n321), .A3(n319), .ZN(intadd_0_A_16_) );
  MUX2ND0 U486 ( .I0(n166), .I1(n167), .S(n319), .ZN(n320) );
  MAOI222D0 U487 ( .A(mantissa_y[19]), .B(n321), .C(n320), .ZN(intadd_0_B_17_)
         );
  MAOI222D0 U488 ( .A(n166), .B(n323), .C(n322), .ZN(n327) );
  XNR3D0 U489 ( .A1(n329), .A2(n327), .A3(n324), .ZN(intadd_0_A_17_) );
  MUX2ND0 U490 ( .I0(n325), .I1(mantissa_x[20]), .S(n324), .ZN(n326) );
  MAOI222D0 U491 ( .A(mantissa_y[20]), .B(n327), .C(n326), .ZN(intadd_0_B_18_)
         );
  XNR3D0 U492 ( .A1(n330), .A2(n329), .A3(n328), .ZN(intadd_0_A_18_) );
  IAO21D0 U493 ( .A1(exp_x[1]), .A2(exp_y[1]), .B(intadd_1_B_2_), .ZN(
        intadd_1_A_1_) );
  IAO21D0 U494 ( .A1(exp_x[2]), .A2(exp_y[2]), .B(intadd_1_B_3_), .ZN(
        intadd_1_A_2_) );
  IAO21D0 U495 ( .A1(exp_x[3]), .A2(exp_y[3]), .B(intadd_1_B_4_), .ZN(
        intadd_1_A_3_) );
  IAO21D0 U496 ( .A1(exp_x[4]), .A2(exp_y[4]), .B(intadd_1_B_5_), .ZN(
        intadd_1_A_4_) );
  IAO21D0 U497 ( .A1(exp_x[5]), .A2(exp_y[5]), .B(intadd_1_B_6_), .ZN(
        intadd_1_A_5_) );
  IAO21D0 U498 ( .A1(exp_x[6]), .A2(exp_y[6]), .B(intadd_1_B_7_), .ZN(
        intadd_1_A_6_) );
  IOA21D0 U499 ( .A1(exp_y[7]), .A2(exp_x[7]), .B(n331), .ZN(intadd_1_A_7_) );
  XOR2D0 U500 ( .A1(sign_y), .A2(sign_x), .Z(sign_out) );
  INVD0 U501 ( .I(n333), .ZN(n334) );
  MUX2ND0 U502 ( .I0(n334), .I1(n333), .S(n332), .ZN(n335) );
  MUX2ND0 U503 ( .I0(n337), .I1(n336), .S(n335), .ZN(intadd_0_A_0_) );
  XNR2D0 U248 ( .A1(intadd_1_n1), .A2(n331), .ZN(n221) );
  OR2D0 U249 ( .A1(exp_y[7]), .A2(exp_x[7]), .Z(n331) );
  CKXOR2D0 U252 ( .A1(n170), .A2(mantissa_y[22]), .Z(n171) );
endmodule

