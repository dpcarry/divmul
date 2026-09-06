/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Fri Sep  4 18:53:41 2026
/////////////////////////////////////////////////////////////


module fp32_normal_finite_wrapper_DW01_add_3 ( A, B, CI, SUM, CO );
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
  fp32_normal_finite_wrapper_DW01_add_3 add_1_root_add_0_root_add_25_2 ( .A(
        x[30:23]), .B({N42, N41, N40, N39, N38, N37, N36, N35}), .CI(n79), 
        .SUM({N34, N33, N32, N31, N30, N29, N28, N27}) );
  AN2XD1 U3 ( .A1(exponent_adjust[0]), .A2(N27), .Z(n1) );
  CKBD1 U34 ( .I(result_fraction[8]), .Z(result[8]) );
  CKBD1 U35 ( .I(result_fraction[6]), .Z(result[6]) );
  CKBD1 U36 ( .I(result_fraction[9]), .Z(result[9]) );
  CKBD1 U37 ( .I(result_fraction[10]), .Z(result[10]) );
  CKBD1 U38 ( .I(result_fraction[11]), .Z(result[11]) );
  CKBD1 U39 ( .I(result_fraction[12]), .Z(result[12]) );
  CKBD1 U40 ( .I(result_fraction[13]), .Z(result[13]) );
  CKBD1 U41 ( .I(result_fraction[14]), .Z(result[14]) );
  CKBD1 U42 ( .I(result_fraction[15]), .Z(result[15]) );
  CKBD1 U43 ( .I(result_fraction[16]), .Z(result[16]) );
  CKBD1 U44 ( .I(result_fraction[17]), .Z(result[17]) );
  CKBD1 U45 ( .I(result_fraction[7]), .Z(result[7]) );
  CKBD1 U46 ( .I(result_fraction[4]), .Z(result[4]) );
  CKBD1 U47 ( .I(result_fraction[5]), .Z(result[5]) );
  CKBD1 U48 ( .I(result_fraction[3]), .Z(result[3]) );
  CKBD1 U49 ( .I(result_fraction[2]), .Z(result[2]) );
  FA1D0 U50 ( .A(N28), .B(exponent_adjust[1]), .CI(n1), .CO(
        add_0_root_add_0_root_add_25_2_carry[2]), .S(result[24]) );
  FA1D0 U51 ( .A(N29), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[2]), .CO(
        add_0_root_add_0_root_add_25_2_carry[3]), .S(result[25]) );
  FA1D0 U52 ( .A(N30), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[3]), .CO(
        add_0_root_add_0_root_add_25_2_carry[4]), .S(result[26]) );
  FA1D0 U53 ( .A(N31), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[4]), .CO(
        add_0_root_add_0_root_add_25_2_carry[5]), .S(result[27]) );
  FA1D0 U54 ( .A(N32), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[5]), .CO(
        add_0_root_add_0_root_add_25_2_carry[6]), .S(result[28]) );
  FA1D0 U55 ( .A(N33), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[6]), .CO(
        add_0_root_add_0_root_add_25_2_carry[7]), .S(result[29]) );
  XOR3D1 U64 ( .A1(N34), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_25_2_carry[7]), .Z(result[30]) );
  AN2XD1 U72 ( .A1(y[23]), .A2(y[24]), .Z(n4) );
  AN2XD1 U73 ( .A1(n4), .A2(y[25]), .Z(n5) );
  AN2XD1 U74 ( .A1(n5), .A2(y[26]), .Z(n6) );
  AN2XD1 U75 ( .A1(n6), .A2(y[27]), .Z(n7) );
  AN2XD1 U76 ( .A1(n7), .A2(y[28]), .Z(n8) );
  CKBD1 U86 ( .I(x[22]), .Z(fraction_x[22]) );
  CKBD1 U87 ( .I(x[21]), .Z(fraction_x[21]) );
  CKBD1 U88 ( .I(x[20]), .Z(fraction_x[20]) );
  CKBD1 U89 ( .I(x[19]), .Z(fraction_x[19]) );
  CKBD1 U90 ( .I(x[18]), .Z(fraction_x[18]) );
  CKBD1 U91 ( .I(x[17]), .Z(fraction_x[17]) );
  CKBD1 U92 ( .I(x[16]), .Z(fraction_x[16]) );
  CKBD1 U93 ( .I(x[15]), .Z(fraction_x[15]) );
  CKBD1 U94 ( .I(x[14]), .Z(fraction_x[14]) );
  CKBD1 U95 ( .I(y[22]), .Z(fraction_y[22]) );
  CKBD1 U96 ( .I(y[21]), .Z(fraction_y[21]) );
  CKBD1 U97 ( .I(y[20]), .Z(fraction_y[20]) );
  CKBD1 U98 ( .I(y[19]), .Z(fraction_y[19]) );
  CKBD1 U99 ( .I(y[18]), .Z(fraction_y[18]) );
  CKBD1 U100 ( .I(y[17]), .Z(fraction_y[17]) );
  CKBD1 U101 ( .I(y[16]), .Z(fraction_y[16]) );
  CKBD1 U102 ( .I(y[15]), .Z(fraction_y[15]) );
  CKBD1 U103 ( .I(y[14]), .Z(fraction_y[14]) );
  CKBD1 U104 ( .I(result_fraction[22]), .Z(result[22]) );
  CKBD1 U105 ( .I(result_fraction[21]), .Z(result[21]) );
  CKBD1 U106 ( .I(result_fraction[20]), .Z(result[20]) );
  CKBD1 U107 ( .I(result_fraction[19]), .Z(result[19]) );
  CKBD1 U108 ( .I(result_fraction[18]), .Z(result[18]) );
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


module input_trunc_core_BITS9_BIAS1_DIVIDE0_DW_mult_uns_0 ( a, b, product );
  input [10:0] a;
  input [10:0] b;
  output [21:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n26, n27, n28, n29, n30, n31,
         n32, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n61, n62, n63,
         n64, n65, n66, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n174, n175, n176, n177, n178,
         n179, n180, n181, n334, n335, n336, n337, n338, n339, n340, n341,
         n342, n343, n345, n346, n347, n348, n349, n350, n351, n352, n353,
         n354, n355, n356, n357, n358, n359, n360, n361, n362, n363, n364,
         n365, n366, n367, n368, n369, n370, n371, n372, n373, n374, n375,
         n376, n377, n378, n379, n380, n381, n382, n383, n384, n385, n386,
         n387, n388, n389, n390, n391, n392, n393, n394, n395, n396, n397,
         n398, n399, n400, n401, n402;

  FA1D0 U3 ( .A(n23), .B(n22), .CI(n3), .CO(n2), .S(product[20]) );
  FA1D0 U4 ( .A(n28), .B(n24), .CI(n4), .CO(n3), .S(product[19]) );
  FA1D0 U5 ( .A(n31), .B(n29), .CI(n5), .CO(n4), .S(product[18]) );
  FA1D0 U6 ( .A(n36), .B(n32), .CI(n6), .CO(n5), .S(product[17]) );
  FA1D0 U7 ( .A(n41), .B(n37), .CI(n7), .CO(n6), .S(product[16]) );
  FA1D0 U8 ( .A(n48), .B(n42), .CI(n8), .CO(n7), .S(product[15]) );
  FA1D0 U9 ( .A(n54), .B(n49), .CI(n9), .CO(n8), .S(product[14]) );
  FA1D0 U10 ( .A(n62), .B(n55), .CI(n10), .CO(n9), .S(product[13]) );
  FA1D0 U11 ( .A(n69), .B(n63), .CI(n11), .CO(n10), .S(product[12]) );
  FA1D0 U12 ( .A(n70), .B(n75), .CI(n12), .CO(n11), .S(product[11]) );
  FA1D0 U13 ( .A(n76), .B(n81), .CI(n13), .CO(n12), .S(product[10]) );
  FA1D0 U14 ( .A(n82), .B(n88), .CI(n14), .CO(n13), .S(product[9]) );
  FA1D0 U15 ( .A(n89), .B(n93), .CI(n15), .CO(n14), .S(product[8]) );
  FA1D0 U16 ( .A(n94), .B(n98), .CI(n16), .CO(n15), .S(product[7]) );
  FA1D0 U17 ( .A(n99), .B(n100), .CI(n17), .CO(n16), .S(product[6]) );
  FA1D0 U18 ( .A(n101), .B(n104), .CI(n18), .CO(n17), .S(product[5]) );
  FA1D0 U19 ( .A(n105), .B(n106), .CI(n19), .CO(n18), .S(product[4]) );
  FA1D0 U20 ( .A(n20), .B(n170), .CI(n107), .CO(n19), .S(product[3]) );
  FA1D0 U22 ( .A(n336), .B(n112), .CI(n120), .CO(n21), .S(n22) );
  FA1D0 U23 ( .A(n121), .B(n26), .CI(n27), .CO(n23), .S(n24) );
  CMPE42D1 U25 ( .A(n113), .B(n335), .C(n122), .CIX(n30), .D(n133), .CO(n28), 
        .COX(n27), .S(n29) );
  CMPE42D1 U26 ( .A(n123), .B(n34), .C(n134), .CIX(n35), .D(n38), .CO(n31), 
        .COX(n30), .S(n32) );
  CMPE42D1 U28 ( .A(n146), .B(n124), .C(n39), .CIX(n40), .D(n43), .CO(n36), 
        .COX(n35), .S(n37) );
  FA1D0 U29 ( .A(n114), .B(n334), .CI(n135), .CO(n38), .S(n39) );
  CMPE42D1 U30 ( .A(n50), .B(n125), .C(n44), .CIX(n47), .D(n51), .CO(n41), 
        .COX(n40), .S(n42) );
  FA1D0 U31 ( .A(n136), .B(n46), .CI(n147), .CO(n43), .S(n44) );
  CMPE42D1 U33 ( .A(n56), .B(n126), .C(n52), .CIX(n53), .D(n57), .CO(n48), 
        .COX(n47), .S(n49) );
  CMPE42D1 U34 ( .A(n115), .B(n345), .C(n148), .CIX(n159), .D(n137), .CO(n51), 
        .COX(n50), .S(n52) );
  CMPE42D1 U35 ( .A(n64), .B(n127), .C(n58), .CIX(n61), .D(n65), .CO(n54), 
        .COX(n53), .S(n55) );
  CMPE42D1 U36 ( .A(n116), .B(a[1]), .C(n149), .CIX(n160), .D(n138), .CO(n57), 
        .COX(n56), .S(n58) );
  CMPE42D1 U38 ( .A(n71), .B(n150), .C(n66), .CIX(n68), .D(n72), .CO(n62), 
        .COX(n61), .S(n63) );
  CMPE42D1 U39 ( .A(n117), .B(a[1]), .C(n161), .CIX(n128), .D(n139), .CO(n65), 
        .COX(n64), .S(n66) );
  CMPE42D1 U41 ( .A(n77), .B(n151), .C(n73), .CIX(n74), .D(n78), .CO(n69), 
        .COX(n68), .S(n70) );
  CMPE42D1 U42 ( .A(n118), .B(a[1]), .C(n162), .CIX(n129), .D(n140), .CO(n72), 
        .COX(n71), .S(n73) );
  CMPE42D1 U43 ( .A(n85), .B(n141), .C(n83), .CIX(n80), .D(n79), .CO(n75), 
        .COX(n74), .S(n76) );
  CMPE42D1 U44 ( .A(n345), .B(n337), .C(n163), .CIX(n130), .D(n152), .CO(n78), 
        .COX(n77), .S(n79) );
  CMPE42D1 U45 ( .A(n86), .B(n164), .C(n90), .CIX(n84), .D(n87), .CO(n81), 
        .COX(n80), .S(n82) );
  FA1D0 U46 ( .A(n131), .B(n142), .CI(n153), .CO(n83), .S(n84) );
  HA1D0 U47 ( .A(n108), .B(n174), .CO(n85), .S(n86) );
  CMPE42D1 U48 ( .A(n143), .B(n154), .C(n95), .CIX(n92), .D(n91), .CO(n88), 
        .COX(n87), .S(n89) );
  FA1D0 U49 ( .A(n338), .B(n175), .CI(n165), .CO(n90), .S(n91) );
  CMPE42D1 U50 ( .A(n144), .B(n166), .C(n155), .CIX(n96), .D(n97), .CO(n93), 
        .COX(n92), .S(n94) );
  HA1D0 U51 ( .A(n109), .B(n176), .CO(n95), .S(n96) );
  CMPE42D1 U52 ( .A(n340), .B(n177), .C(n167), .CIX(n102), .D(n156), .CO(n98), 
        .COX(n97), .S(n99) );
  FA1D0 U53 ( .A(n157), .B(n168), .CI(n103), .CO(n100), .S(n101) );
  HA1D0 U54 ( .A(n110), .B(n178), .CO(n102), .S(n103) );
  FA1D0 U55 ( .A(n342), .B(n179), .CI(n169), .CO(n104), .S(n105) );
  HA1D0 U56 ( .A(n111), .B(n180), .CO(n106), .S(n107) );
  INVD1 U243 ( .I(n366), .ZN(n342) );
  ND2D1 U245 ( .A1(n399), .A2(n355), .ZN(n356) );
  INVD1 U246 ( .I(a[1]), .ZN(n345) );
  INVD1 U247 ( .I(a[3]), .ZN(n343) );
  INVD1 U248 ( .I(a[5]), .ZN(n341) );
  ND2D1 U249 ( .A1(n400), .A2(n366), .ZN(n367) );
  CKXOR2D1 U250 ( .A1(n343), .A2(a[4]), .Z(n366) );
  INVD1 U251 ( .I(n377), .ZN(n340) );
  INVD1 U252 ( .I(a[7]), .ZN(n339) );
  ND2D1 U253 ( .A1(n401), .A2(n377), .ZN(n378) );
  CKXOR2D1 U255 ( .A1(n341), .A2(a[6]), .Z(n377) );
  INVD1 U256 ( .I(n388), .ZN(n338) );
  INVD1 U257 ( .I(b[4]), .ZN(n351) );
  INVD1 U258 ( .I(a[9]), .ZN(n337) );
  ND2D1 U259 ( .A1(n402), .A2(n388), .ZN(n389) );
  INVD1 U260 ( .I(b[5]), .ZN(n350) );
  CKXOR2D1 U261 ( .A1(n339), .A2(a[8]), .Z(n388) );
  INVD1 U262 ( .I(b[6]), .ZN(n349) );
  INVD1 U263 ( .I(b[8]), .ZN(n347) );
  INVD1 U264 ( .I(b[7]), .ZN(n348) );
  INVD1 U265 ( .I(b[9]), .ZN(n346) );
  INVD1 U266 ( .I(n46), .ZN(n334) );
  INVD1 U267 ( .I(n34), .ZN(n335) );
  INVD1 U268 ( .I(n26), .ZN(n336) );
  INVD1 U269 ( .I(b[2]), .ZN(n353) );
  INVD1 U270 ( .I(b[3]), .ZN(n352) );
  INVD1 U271 ( .I(b[1]), .ZN(n354) );
  XNR3D0 U272 ( .A1(n21), .A2(n2), .A3(a[9]), .ZN(product[21]) );
  XNR2D0 U273 ( .A1(n354), .A2(a[1]), .ZN(product[1]) );
  MUX2ND0 U274 ( .I0(b[4]), .I1(b[5]), .S(n337), .ZN(n46) );
  MUX2ND0 U275 ( .I0(b[6]), .I1(b[7]), .S(n337), .ZN(n34) );
  MUX2ND0 U276 ( .I0(b[8]), .I1(b[9]), .S(n337), .ZN(n26) );
  XNR2D0 U277 ( .A1(n353), .A2(a[1]), .ZN(n181) );
  XNR2D0 U278 ( .A1(n352), .A2(a[1]), .ZN(n180) );
  XNR2D0 U279 ( .A1(n351), .A2(a[1]), .ZN(n179) );
  XNR2D0 U280 ( .A1(n350), .A2(a[1]), .ZN(n178) );
  XNR2D0 U281 ( .A1(n349), .A2(a[1]), .ZN(n177) );
  XNR2D0 U282 ( .A1(n348), .A2(a[1]), .ZN(n176) );
  XNR2D0 U283 ( .A1(n347), .A2(a[1]), .ZN(n175) );
  XNR2D0 U284 ( .A1(n346), .A2(a[1]), .ZN(n174) );
  OAI22D0 U285 ( .A1(a[3]), .A2(n356), .B1(n355), .B2(n357), .ZN(n170) );
  OAI22D0 U286 ( .A1(n357), .A2(n356), .B1(n355), .B2(n358), .ZN(n169) );
  XNR2D0 U287 ( .A1(n343), .A2(n354), .ZN(n357) );
  OAI22D0 U288 ( .A1(n358), .A2(n356), .B1(n355), .B2(n359), .ZN(n168) );
  XNR2D0 U289 ( .A1(n343), .A2(n353), .ZN(n358) );
  OAI22D0 U290 ( .A1(n359), .A2(n356), .B1(n355), .B2(n360), .ZN(n167) );
  XNR2D0 U291 ( .A1(n343), .A2(n352), .ZN(n359) );
  OAI22D0 U292 ( .A1(n360), .A2(n356), .B1(n355), .B2(n361), .ZN(n166) );
  XNR2D0 U293 ( .A1(n343), .A2(n351), .ZN(n360) );
  OAI22D0 U294 ( .A1(n361), .A2(n356), .B1(n355), .B2(n362), .ZN(n165) );
  XNR2D0 U295 ( .A1(n343), .A2(n350), .ZN(n361) );
  OAI22D0 U296 ( .A1(n362), .A2(n356), .B1(n355), .B2(n363), .ZN(n164) );
  XNR2D0 U297 ( .A1(n343), .A2(n349), .ZN(n362) );
  OAI22D0 U298 ( .A1(n363), .A2(n356), .B1(n355), .B2(n364), .ZN(n163) );
  XNR2D0 U299 ( .A1(n343), .A2(n348), .ZN(n363) );
  OAI22D0 U300 ( .A1(n364), .A2(n356), .B1(n355), .B2(n365), .ZN(n162) );
  XNR2D0 U301 ( .A1(n343), .A2(n347), .ZN(n364) );
  OAI22D0 U302 ( .A1(n365), .A2(n356), .B1(a[3]), .B2(n355), .ZN(n161) );
  XNR2D0 U303 ( .A1(n343), .A2(n346), .ZN(n365) );
  MUX2ND0 U304 ( .I0(n355), .I1(n356), .S(n343), .ZN(n160) );
  IOA21D0 U305 ( .A1(n356), .A2(n355), .B(a[3]), .ZN(n159) );
  OAI22D0 U306 ( .A1(a[5]), .A2(n367), .B1(n366), .B2(n368), .ZN(n157) );
  OAI22D0 U307 ( .A1(n368), .A2(n367), .B1(n366), .B2(n369), .ZN(n156) );
  XNR2D0 U308 ( .A1(n341), .A2(n354), .ZN(n368) );
  OAI22D0 U309 ( .A1(n369), .A2(n367), .B1(n366), .B2(n370), .ZN(n155) );
  XNR2D0 U310 ( .A1(n341), .A2(n353), .ZN(n369) );
  OAI22D0 U311 ( .A1(n370), .A2(n367), .B1(n366), .B2(n371), .ZN(n154) );
  XNR2D0 U312 ( .A1(n341), .A2(n352), .ZN(n370) );
  OAI22D0 U313 ( .A1(n371), .A2(n367), .B1(n366), .B2(n372), .ZN(n153) );
  XNR2D0 U314 ( .A1(n341), .A2(n351), .ZN(n371) );
  OAI22D0 U315 ( .A1(n372), .A2(n367), .B1(n366), .B2(n373), .ZN(n152) );
  XNR2D0 U316 ( .A1(n341), .A2(n350), .ZN(n372) );
  OAI22D0 U317 ( .A1(n373), .A2(n367), .B1(n366), .B2(n374), .ZN(n151) );
  XNR2D0 U318 ( .A1(n341), .A2(n349), .ZN(n373) );
  OAI22D0 U319 ( .A1(n374), .A2(n367), .B1(n366), .B2(n375), .ZN(n150) );
  XNR2D0 U320 ( .A1(n341), .A2(n348), .ZN(n374) );
  OAI22D0 U321 ( .A1(n375), .A2(n367), .B1(n366), .B2(n376), .ZN(n149) );
  XNR2D0 U322 ( .A1(n341), .A2(n347), .ZN(n375) );
  OAI22D0 U323 ( .A1(n376), .A2(n367), .B1(a[5]), .B2(n366), .ZN(n148) );
  XNR2D0 U324 ( .A1(n341), .A2(n346), .ZN(n376) );
  MUX2ND0 U325 ( .I0(n366), .I1(n367), .S(n341), .ZN(n147) );
  IOA21D0 U326 ( .A1(n367), .A2(n366), .B(a[5]), .ZN(n146) );
  OAI22D0 U327 ( .A1(a[7]), .A2(n378), .B1(n377), .B2(n379), .ZN(n144) );
  OAI22D0 U328 ( .A1(n379), .A2(n378), .B1(n377), .B2(n380), .ZN(n143) );
  XNR2D0 U329 ( .A1(n339), .A2(n354), .ZN(n379) );
  OAI22D0 U330 ( .A1(n380), .A2(n378), .B1(n377), .B2(n381), .ZN(n142) );
  XNR2D0 U331 ( .A1(n339), .A2(n353), .ZN(n380) );
  OAI22D0 U332 ( .A1(n381), .A2(n378), .B1(n377), .B2(n382), .ZN(n141) );
  XNR2D0 U333 ( .A1(n339), .A2(n352), .ZN(n381) );
  OAI22D0 U334 ( .A1(n382), .A2(n378), .B1(n377), .B2(n383), .ZN(n140) );
  XNR2D0 U335 ( .A1(n339), .A2(n351), .ZN(n382) );
  OAI22D0 U336 ( .A1(n383), .A2(n378), .B1(n377), .B2(n384), .ZN(n139) );
  XNR2D0 U337 ( .A1(n339), .A2(n350), .ZN(n383) );
  OAI22D0 U338 ( .A1(n384), .A2(n378), .B1(n377), .B2(n385), .ZN(n138) );
  XNR2D0 U339 ( .A1(n339), .A2(n349), .ZN(n384) );
  OAI22D0 U340 ( .A1(n385), .A2(n378), .B1(n377), .B2(n386), .ZN(n137) );
  XNR2D0 U341 ( .A1(n339), .A2(n348), .ZN(n385) );
  OAI22D0 U342 ( .A1(n386), .A2(n378), .B1(n377), .B2(n387), .ZN(n136) );
  XNR2D0 U343 ( .A1(n339), .A2(n347), .ZN(n386) );
  OAI22D0 U344 ( .A1(n387), .A2(n378), .B1(a[7]), .B2(n377), .ZN(n135) );
  XNR2D0 U345 ( .A1(n339), .A2(n346), .ZN(n387) );
  MUX2ND0 U346 ( .I0(n377), .I1(n378), .S(n339), .ZN(n134) );
  IOA21D0 U347 ( .A1(n378), .A2(n377), .B(a[7]), .ZN(n133) );
  OAI22D0 U348 ( .A1(a[9]), .A2(n389), .B1(n388), .B2(n390), .ZN(n131) );
  OAI22D0 U349 ( .A1(n390), .A2(n389), .B1(n388), .B2(n391), .ZN(n130) );
  XNR2D0 U350 ( .A1(n337), .A2(n354), .ZN(n390) );
  OAI22D0 U351 ( .A1(n391), .A2(n389), .B1(n388), .B2(n392), .ZN(n129) );
  XNR2D0 U352 ( .A1(n337), .A2(n353), .ZN(n391) );
  OAI22D0 U353 ( .A1(n392), .A2(n389), .B1(n388), .B2(n393), .ZN(n128) );
  XNR2D0 U354 ( .A1(n337), .A2(n352), .ZN(n392) );
  OAI22D0 U355 ( .A1(n393), .A2(n389), .B1(n388), .B2(n394), .ZN(n127) );
  XNR2D0 U356 ( .A1(n337), .A2(n351), .ZN(n393) );
  OAI22D0 U357 ( .A1(n394), .A2(n389), .B1(n388), .B2(n395), .ZN(n126) );
  XNR2D0 U358 ( .A1(n337), .A2(n350), .ZN(n394) );
  OAI22D0 U359 ( .A1(n395), .A2(n389), .B1(n388), .B2(n396), .ZN(n125) );
  XNR2D0 U360 ( .A1(n337), .A2(n349), .ZN(n395) );
  OAI22D0 U361 ( .A1(n396), .A2(n389), .B1(n388), .B2(n397), .ZN(n124) );
  XNR2D0 U362 ( .A1(n337), .A2(n348), .ZN(n396) );
  OAI22D0 U363 ( .A1(n397), .A2(n389), .B1(n388), .B2(n398), .ZN(n123) );
  XNR2D0 U364 ( .A1(n337), .A2(n347), .ZN(n397) );
  OAI22D0 U365 ( .A1(n398), .A2(n389), .B1(a[9]), .B2(n388), .ZN(n122) );
  XNR2D0 U366 ( .A1(n337), .A2(n346), .ZN(n398) );
  MUX2ND0 U367 ( .I0(n388), .I1(n389), .S(n337), .ZN(n121) );
  IOA21D0 U368 ( .A1(n389), .A2(n388), .B(a[9]), .ZN(n120) );
  CKND2D0 U369 ( .A1(n337), .A2(n354), .ZN(n118) );
  MUX2ND0 U370 ( .I0(n354), .I1(n353), .S(n337), .ZN(n117) );
  MUX2ND0 U371 ( .I0(n353), .I1(n352), .S(n337), .ZN(n116) );
  MUX2ND0 U372 ( .I0(n352), .I1(n351), .S(n337), .ZN(n115) );
  MUX2ND0 U373 ( .I0(n350), .I1(n349), .S(n337), .ZN(n114) );
  MUX2ND0 U374 ( .I0(n348), .I1(n347), .S(n337), .ZN(n113) );
  CKND2D0 U375 ( .A1(a[9]), .A2(n346), .ZN(n112) );
  NR2D0 U376 ( .A1(n343), .A2(n356), .ZN(n111) );
  XNR2D0 U377 ( .A1(n343), .A2(a[2]), .ZN(n399) );
  NR2D0 U378 ( .A1(n341), .A2(n367), .ZN(n110) );
  XNR2D0 U379 ( .A1(n341), .A2(a[4]), .ZN(n400) );
  NR2D0 U380 ( .A1(n339), .A2(n378), .ZN(n109) );
  XNR2D0 U381 ( .A1(n339), .A2(a[6]), .ZN(n401) );
  NR2D0 U382 ( .A1(n337), .A2(n389), .ZN(n108) );
  XNR2D0 U383 ( .A1(n337), .A2(a[8]), .ZN(n402) );
  INR2D0 U244 ( .A1(n181), .B1(n355), .ZN(n20) );
  XNR2D0 U254 ( .A1(n355), .A2(n181), .ZN(product[2]) );
  CKXOR2D0 U384 ( .A1(n345), .A2(a[2]), .Z(n355) );
endmodule


module input_trunc_core_BITS9_BIAS1_DIVIDE0 ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   adjustment_0_, n1, n24, n25, n2, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n26, n27;
  wire   [9:1] a;
  wire   [9:1] b;
  wire   [21:1] multiplication_product;
  wire   [22:3] fraction;
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
        SYNOPSYS_UNCONNECTED__30;

  fp32_normal_finite_wrapper wrapper ( .x({x[31:14], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y({
        y[31:14], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .divide_mode(1'b0), .fraction_x({a, 
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13}), .fraction_y({b, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27}), 
        .result_fraction({fraction, multiplication_product[21], 1'b0, 1'b0}), 
        .exponent_adjust({n1, n1, adjustment_0_}), .result({result[31:2], 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29}) );
  input_trunc_core_BITS9_BIAS1_DIVIDE0_DW_mult_uns_0 mult_22 ( .a({n27, a, n27}), .b({n27, b, n27}), .product({multiplication_product, 
        SYNOPSYS_UNCONNECTED__30}) );
  INVD1 U3 ( .I(n25), .ZN(n1) );
  INVD1 U4 ( .I(multiplication_product[15]), .ZN(n10) );
  INVD1 U5 ( .I(multiplication_product[14]), .ZN(n11) );
  INVD1 U6 ( .I(multiplication_product[13]), .ZN(n12) );
  INVD1 U7 ( .I(multiplication_product[12]), .ZN(n13) );
  INVD1 U8 ( .I(multiplication_product[11]), .ZN(n14) );
  INVD1 U9 ( .I(multiplication_product[10]), .ZN(n15) );
  INVD1 U10 ( .I(multiplication_product[9]), .ZN(n16) );
  ND2D1 U11 ( .A1(n5), .A2(n4), .ZN(n25) );
  ND2D1 U12 ( .A1(n4), .A2(n25), .ZN(adjustment_0_) );
  INVD1 U13 ( .I(multiplication_product[20]), .ZN(n5) );
  ND2D1 U14 ( .A1(multiplication_product[20]), .A2(n4), .ZN(n24) );
  OAI222D0 U15 ( .A1(n20), .A2(n24), .B1(n25), .B2(n21), .C1(n19), .C2(n4), 
        .ZN(fraction[8]) );
  OAI222D0 U16 ( .A1(n24), .A2(n22), .B1(n25), .B2(n23), .C1(n4), .C2(n21), 
        .ZN(fraction[6]) );
  OAI222D0 U17 ( .A1(n24), .A2(n19), .B1(n2), .B2(n20), .C1(n4), .C2(n18), 
        .ZN(fraction[9]) );
  OAI222D0 U18 ( .A1(n24), .A2(n18), .B1(n2), .B2(n19), .C1(n4), .C2(n17), 
        .ZN(fraction[10]) );
  OAI222D0 U19 ( .A1(n24), .A2(n17), .B1(n2), .B2(n18), .C1(n4), .C2(n16), 
        .ZN(fraction[11]) );
  OAI222D0 U20 ( .A1(n24), .A2(n16), .B1(n25), .B2(n17), .C1(n4), .C2(n15), 
        .ZN(fraction[12]) );
  OAI222D0 U21 ( .A1(n24), .A2(n15), .B1(n2), .B2(n16), .C1(n4), .C2(n14), 
        .ZN(fraction[13]) );
  OAI222D0 U22 ( .A1(n24), .A2(n14), .B1(n25), .B2(n15), .C1(n4), .C2(n13), 
        .ZN(fraction[14]) );
  OAI222D0 U23 ( .A1(n24), .A2(n13), .B1(n2), .B2(n14), .C1(n4), .C2(n12), 
        .ZN(fraction[15]) );
  OAI222D0 U24 ( .A1(n24), .A2(n12), .B1(n25), .B2(n13), .C1(n4), .C2(n11), 
        .ZN(fraction[16]) );
  OAI222D0 U25 ( .A1(n24), .A2(n11), .B1(n2), .B2(n12), .C1(n4), .C2(n10), 
        .ZN(fraction[17]) );
  OAI222D0 U26 ( .A1(n24), .A2(n21), .B1(n2), .B2(n22), .C1(n20), .C2(n4), 
        .ZN(fraction[7]) );
  ND2D1 U27 ( .A1(n5), .A2(n4), .ZN(n2) );
  OAI222D0 U28 ( .A1(n24), .A2(n6), .B1(n25), .B2(n7), .C1(n5), .C2(n4), .ZN(
        fraction[22]) );
  OAI222D0 U29 ( .A1(n24), .A2(n10), .B1(n25), .B2(n11), .C1(n4), .C2(n9), 
        .ZN(fraction[18]) );
  OAI222D0 U30 ( .A1(n24), .A2(n9), .B1(n2), .B2(n10), .C1(n4), .C2(n8), .ZN(
        fraction[19]) );
  OAI222D0 U31 ( .A1(n24), .A2(n8), .B1(n25), .B2(n9), .C1(n4), .C2(n7), .ZN(
        fraction[20]) );
  OAI222D0 U32 ( .A1(n24), .A2(n7), .B1(n2), .B2(n8), .C1(n4), .C2(n6), .ZN(
        fraction[21]) );
  INVD1 U33 ( .I(multiplication_product[19]), .ZN(n6) );
  INVD1 U34 ( .I(multiplication_product[18]), .ZN(n7) );
  INVD1 U35 ( .I(multiplication_product[17]), .ZN(n8) );
  INVD1 U36 ( .I(multiplication_product[16]), .ZN(n9) );
  INVD1 U37 ( .I(multiplication_product[8]), .ZN(n17) );
  INVD1 U38 ( .I(multiplication_product[7]), .ZN(n18) );
  INVD1 U39 ( .I(multiplication_product[6]), .ZN(n19) );
  INVD1 U40 ( .I(multiplication_product[5]), .ZN(n20) );
  INVD1 U41 ( .I(multiplication_product[4]), .ZN(n21) );
  OAI221D0 U42 ( .A1(n4), .A2(n23), .B1(n24), .B2(n26), .C(n25), .ZN(
        fraction[4]) );
  OAI222D0 U43 ( .A1(n24), .A2(n23), .B1(n2), .B2(n26), .C1(n4), .C2(n22), 
        .ZN(fraction[5]) );
  OAI21D1 U44 ( .A1(n4), .A2(n26), .B(n24), .ZN(fraction[3]) );
  INVD1 U45 ( .I(multiplication_product[3]), .ZN(n22) );
  INVD1 U46 ( .I(multiplication_product[2]), .ZN(n23) );
  INVD1 U49 ( .I(multiplication_product[1]), .ZN(n26) );
  TIEH U51 ( .Z(n27) );
  CKND0 U47 ( .I(multiplication_product[21]), .ZN(n4) );
endmodule


module input_mul_b9_bias1 ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;

  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1;
  assign result[0] = 1'b0;
  assign result[1] = 1'b0;

  input_trunc_core_BITS9_BIAS1_DIVIDE0 dut ( .x({x[31:14], 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .y({y[31:14], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .result({result[31:2], 
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1}) );
endmodule

