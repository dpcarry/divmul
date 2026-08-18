/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Sat Aug 15 02:41:51 2026
/////////////////////////////////////////////////////////////


module csa3_WIDTH29_2 ( input_a, input_b, input_c, sum, carry );
  input [28:0] input_a;
  input [28:0] input_b;
  input [28:0] input_c;
  output [28:0] sum;
  output [28:0] carry;


  CKBD1 U2 ( .I(input_a[25]), .Z(sum[25]) );
  CKBD1 U3 ( .I(input_a[24]), .Z(sum[24]) );
  BUFFD1 U4 ( .I(input_a[23]), .Z(sum[23]) );
  BUFFD1 U5 ( .I(input_a[22]), .Z(sum[22]) );
  BUFFD0 U6 ( .I(input_a[20]), .Z(sum[20]) );
  BUFFD0 U7 ( .I(input_a[26]), .Z(sum[26]) );
  BUFFD0 U8 ( .I(input_a[21]), .Z(sum[21]) );
  BUFFD0 U9 ( .I(input_a[19]), .Z(sum[19]) );
  BUFFD0 U10 ( .I(input_a[18]), .Z(sum[18]) );
  BUFFD0 U11 ( .I(input_a[7]), .Z(sum[7]) );
  BUFFD0 U12 ( .I(input_a[9]), .Z(sum[9]) );
  BUFFD0 U13 ( .I(input_a[0]), .Z(sum[0]) );
  BUFFD0 U14 ( .I(input_a[6]), .Z(sum[6]) );
  BUFFD0 U15 ( .I(input_a[17]), .Z(sum[17]) );
  BUFFD0 U16 ( .I(input_a[16]), .Z(sum[16]) );
  BUFFD0 U17 ( .I(input_a[15]), .Z(sum[15]) );
  BUFFD0 U18 ( .I(input_a[14]), .Z(sum[14]) );
  BUFFD0 U19 ( .I(input_a[13]), .Z(sum[13]) );
  BUFFD0 U20 ( .I(input_a[12]), .Z(sum[12]) );
  BUFFD0 U21 ( .I(input_a[11]), .Z(sum[11]) );
  BUFFD0 U22 ( .I(input_a[10]), .Z(sum[10]) );
  BUFFD0 U23 ( .I(input_a[1]), .Z(sum[1]) );
  BUFFD0 U24 ( .I(input_a[2]), .Z(sum[2]) );
  BUFFD0 U25 ( .I(input_a[3]), .Z(sum[3]) );
  BUFFD0 U26 ( .I(input_a[4]), .Z(sum[4]) );
  BUFFD0 U27 ( .I(input_a[5]), .Z(sum[5]) );
  BUFFD0 U28 ( .I(input_a[8]), .Z(sum[8]) );
endmodule


module csa3_WIDTH29_1 ( input_a, input_b, input_c, sum, carry );
  input [28:0] input_a;
  input [28:0] input_b;
  input [28:0] input_c;
  output [28:0] sum;
  output [28:0] carry;


  BUFFD0 U2 ( .I(input_a[26]), .Z(sum[26]) );
  BUFFD0 U3 ( .I(input_a[25]), .Z(sum[25]) );
  BUFFD0 U4 ( .I(input_a[24]), .Z(sum[24]) );
  BUFFD0 U5 ( .I(input_a[23]), .Z(sum[23]) );
  BUFFD0 U6 ( .I(input_a[22]), .Z(sum[22]) );
  BUFFD0 U7 ( .I(input_a[21]), .Z(sum[21]) );
  BUFFD0 U8 ( .I(input_a[20]), .Z(sum[20]) );
  BUFFD0 U9 ( .I(input_a[19]), .Z(sum[19]) );
  BUFFD0 U10 ( .I(input_a[18]), .Z(sum[18]) );
  BUFFD0 U11 ( .I(input_a[9]), .Z(sum[9]) );
  BUFFD0 U12 ( .I(input_a[7]), .Z(sum[7]) );
  BUFFD0 U13 ( .I(input_a[10]), .Z(sum[10]) );
  BUFFD0 U14 ( .I(input_a[0]), .Z(sum[0]) );
  BUFFD0 U15 ( .I(input_a[11]), .Z(sum[11]) );
  BUFFD0 U16 ( .I(input_a[17]), .Z(sum[17]) );
  BUFFD0 U17 ( .I(input_a[16]), .Z(sum[16]) );
  BUFFD0 U18 ( .I(input_a[15]), .Z(sum[15]) );
  BUFFD0 U19 ( .I(input_a[14]), .Z(sum[14]) );
  BUFFD0 U20 ( .I(input_a[13]), .Z(sum[13]) );
  BUFFD0 U21 ( .I(input_a[12]), .Z(sum[12]) );
  BUFFD0 U22 ( .I(input_a[1]), .Z(sum[1]) );
  BUFFD0 U23 ( .I(input_a[2]), .Z(sum[2]) );
  BUFFD0 U24 ( .I(input_a[3]), .Z(sum[3]) );
  BUFFD0 U25 ( .I(input_a[4]), .Z(sum[4]) );
  BUFFD0 U26 ( .I(input_a[5]), .Z(sum[5]) );
  BUFFD0 U27 ( .I(input_a[6]), .Z(sum[6]) );
  BUFFD0 U28 ( .I(input_a[8]), .Z(sum[8]) );
endmodule


module csa3_WIDTH29_0 ( input_a, input_b, input_c, sum, carry );
  input [28:0] input_a;
  input [28:0] input_b;
  input [28:0] input_c;
  output [28:0] sum;
  output [28:0] carry;


  BUFFD0 U2 ( .I(input_a[26]), .Z(sum[26]) );
  BUFFD0 U3 ( .I(input_a[25]), .Z(sum[25]) );
  BUFFD0 U4 ( .I(input_a[24]), .Z(sum[24]) );
  BUFFD0 U5 ( .I(input_a[23]), .Z(sum[23]) );
  BUFFD0 U6 ( .I(input_a[22]), .Z(sum[22]) );
  BUFFD0 U7 ( .I(input_a[21]), .Z(sum[21]) );
  BUFFD0 U8 ( .I(input_a[20]), .Z(sum[20]) );
  BUFFD0 U9 ( .I(input_a[19]), .Z(sum[19]) );
  BUFFD0 U10 ( .I(input_a[0]), .Z(sum[0]) );
  BUFFD0 U11 ( .I(input_a[2]), .Z(sum[2]) );
  BUFFD0 U12 ( .I(input_a[18]), .Z(sum[18]) );
  BUFFD0 U13 ( .I(input_a[17]), .Z(sum[17]) );
  BUFFD0 U14 ( .I(input_a[16]), .Z(sum[16]) );
  BUFFD0 U15 ( .I(input_a[15]), .Z(sum[15]) );
  BUFFD0 U16 ( .I(input_a[14]), .Z(sum[14]) );
  BUFFD0 U17 ( .I(input_a[13]), .Z(sum[13]) );
  BUFFD0 U18 ( .I(input_a[12]), .Z(sum[12]) );
  BUFFD0 U19 ( .I(input_a[11]), .Z(sum[11]) );
  BUFFD0 U20 ( .I(input_a[1]), .Z(sum[1]) );
  BUFFD0 U21 ( .I(input_a[3]), .Z(sum[3]) );
  BUFFD0 U22 ( .I(input_a[4]), .Z(sum[4]) );
  BUFFD0 U23 ( .I(input_a[5]), .Z(sum[5]) );
  BUFFD0 U24 ( .I(input_a[6]), .Z(sum[6]) );
  BUFFD0 U25 ( .I(input_a[7]), .Z(sum[7]) );
  BUFFD0 U26 ( .I(input_a[8]), .Z(sum[8]) );
  BUFFD0 U27 ( .I(input_a[9]), .Z(sum[9]) );
  BUFFD0 U28 ( .I(input_a[10]), .Z(sum[10]) );
endmodule


module recip_scale_fixed_APPROX_LEVEL0_VALUE_WIDTH29 ( clk, value, 
        y_fraction_msb, scaled_value );
  input [28:0] value;
  input [3:0] y_fraction_msb;
  output [28:0] scaled_value;
  input clk;
  wire   n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183;
  wire   [36:8] product_comb;

  DFQD1 product_stage_reg_35_ ( .D(product_comb[36]), .CP(clk), .Q(
        scaled_value[28]) );
  DFQD1 product_stage_reg_34_ ( .D(product_comb[34]), .CP(clk), .Q(
        scaled_value[26]) );
  DFQD1 product_stage_reg_33_ ( .D(product_comb[33]), .CP(clk), .Q(
        scaled_value[25]) );
  DFQD1 product_stage_reg_32_ ( .D(product_comb[32]), .CP(clk), .Q(
        scaled_value[24]) );
  DFQD1 product_stage_reg_31_ ( .D(product_comb[31]), .CP(clk), .Q(
        scaled_value[23]) );
  DFQD1 product_stage_reg_30_ ( .D(product_comb[30]), .CP(clk), .Q(
        scaled_value[22]) );
  DFQD1 product_stage_reg_29_ ( .D(product_comb[29]), .CP(clk), .Q(
        scaled_value[21]) );
  DFQD1 product_stage_reg_28_ ( .D(product_comb[28]), .CP(clk), .Q(
        scaled_value[20]) );
  DFQD1 product_stage_reg_27_ ( .D(product_comb[27]), .CP(clk), .Q(
        scaled_value[19]) );
  DFQD1 product_stage_reg_26_ ( .D(product_comb[26]), .CP(clk), .Q(
        scaled_value[18]) );
  DFQD1 product_stage_reg_25_ ( .D(product_comb[25]), .CP(clk), .Q(
        scaled_value[17]) );
  DFQD1 product_stage_reg_24_ ( .D(product_comb[24]), .CP(clk), .Q(
        scaled_value[16]) );
  DFQD1 product_stage_reg_23_ ( .D(product_comb[23]), .CP(clk), .Q(
        scaled_value[15]) );
  DFQD1 product_stage_reg_22_ ( .D(product_comb[22]), .CP(clk), .Q(
        scaled_value[14]) );
  DFQD1 product_stage_reg_21_ ( .D(product_comb[21]), .CP(clk), .Q(
        scaled_value[13]) );
  DFQD1 product_stage_reg_20_ ( .D(product_comb[20]), .CP(clk), .Q(
        scaled_value[12]) );
  DFQD1 product_stage_reg_19_ ( .D(product_comb[19]), .CP(clk), .Q(
        scaled_value[11]) );
  DFQD1 product_stage_reg_18_ ( .D(product_comb[18]), .CP(clk), .Q(
        scaled_value[10]) );
  DFQD1 product_stage_reg_17_ ( .D(product_comb[17]), .CP(clk), .Q(
        scaled_value[9]) );
  DFQD1 product_stage_reg_16_ ( .D(product_comb[16]), .CP(clk), .Q(
        scaled_value[8]) );
  DFQD1 product_stage_reg_15_ ( .D(product_comb[15]), .CP(clk), .Q(
        scaled_value[7]) );
  DFQD1 product_stage_reg_14_ ( .D(product_comb[14]), .CP(clk), .Q(
        scaled_value[6]) );
  DFQD1 product_stage_reg_13_ ( .D(product_comb[13]), .CP(clk), .Q(
        scaled_value[5]) );
  DFQD1 product_stage_reg_12_ ( .D(product_comb[12]), .CP(clk), .Q(
        scaled_value[4]) );
  DFQD1 product_stage_reg_11_ ( .D(product_comb[11]), .CP(clk), .Q(
        scaled_value[3]) );
  DFQD1 product_stage_reg_10_ ( .D(product_comb[10]), .CP(clk), .Q(
        scaled_value[2]) );
  DFQD1 product_stage_reg_9_ ( .D(product_comb[9]), .CP(clk), .Q(
        scaled_value[1]) );
  DFQD1 product_stage_reg_8_ ( .D(product_comb[8]), .CP(clk), .Q(
        scaled_value[0]) );
  INVD0 U3 ( .I(n143), .ZN(product_comb[34]) );
  ND2D0 U4 ( .A1(n38), .A2(n37), .ZN(n111) );
  NR2D0 U5 ( .A1(n42), .A2(n41), .ZN(n164) );
  ND2D0 U6 ( .A1(n42), .A2(n41), .ZN(n165) );
  ND2D0 U7 ( .A1(n45), .A2(n44), .ZN(n115) );
  NR2D0 U8 ( .A1(n49), .A2(n48), .ZN(n159) );
  ND2D0 U9 ( .A1(n49), .A2(n48), .ZN(n160) );
  OR2D0 U10 ( .A1(n52), .A2(n51), .Z(n120) );
  ND2D0 U11 ( .A1(n52), .A2(n51), .ZN(n119) );
  NR2D0 U12 ( .A1(n56), .A2(n55), .ZN(n154) );
  ND2D0 U13 ( .A1(n56), .A2(n55), .ZN(n155) );
  OR2D0 U14 ( .A1(n59), .A2(n58), .Z(n124) );
  ND2D0 U15 ( .A1(n59), .A2(n58), .ZN(n123) );
  NR2D0 U16 ( .A1(n63), .A2(n62), .ZN(n149) );
  ND2D0 U17 ( .A1(n63), .A2(n62), .ZN(n150) );
  ND2D0 U18 ( .A1(n66), .A2(n65), .ZN(n127) );
  NR2D0 U19 ( .A1(n70), .A2(n69), .ZN(n144) );
  OR2D0 U20 ( .A1(n66), .A2(n65), .Z(n128) );
  ND2D0 U21 ( .A1(n74), .A2(n73), .ZN(n131) );
  ND2D0 U22 ( .A1(n70), .A2(n69), .ZN(n145) );
  OR2D0 U23 ( .A1(n74), .A2(n73), .Z(n132) );
  INVD0 U24 ( .I(n131), .ZN(n75) );
  INVD0 U25 ( .I(n111), .ZN(n39) );
  INVD0 U26 ( .I(n123), .ZN(n60) );
  INVD0 U27 ( .I(n127), .ZN(n67) );
  CKND2D0 U28 ( .A1(n31), .A2(n30), .ZN(n107) );
  CKND2D0 U29 ( .A1(n28), .A2(n27), .ZN(n175) );
  INVD0 U30 ( .I(n119), .ZN(n53) );
  INVD0 U31 ( .I(n115), .ZN(n46) );
  CKND2D0 U32 ( .A1(n35), .A2(n34), .ZN(n170) );
  OR2D0 U33 ( .A1(n45), .A2(n44), .Z(n116) );
  INVD0 U34 ( .I(value[24]), .ZN(n141) );
  INVD0 U35 ( .I(value[12]), .ZN(n50) );
  INVD0 U36 ( .I(value[11]), .ZN(n47) );
  INVD0 U37 ( .I(value[16]), .ZN(n64) );
  INVD0 U38 ( .I(value[17]), .ZN(n68) );
  INVD0 U39 ( .I(value[23]), .ZN(n88) );
  INVD0 U40 ( .I(value[20]), .ZN(n76) );
  INVD0 U41 ( .I(value[21]), .ZN(n80) );
  INVD0 U42 ( .I(value[14]), .ZN(n57) );
  INVD0 U43 ( .I(value[10]), .ZN(n43) );
  INVD0 U44 ( .I(value[22]), .ZN(n84) );
  INVD0 U45 ( .I(value[15]), .ZN(n61) );
  INVD0 U46 ( .I(value[25]), .ZN(n138) );
  INVD0 U47 ( .I(value[18]), .ZN(n72) );
  INVD0 U48 ( .I(value[19]), .ZN(n71) );
  INVD0 U49 ( .I(value[13]), .ZN(n54) );
  BUFFD0 U50 ( .I(scaled_value[28]), .Z(scaled_value[27]) );
  INVD0 U51 ( .I(value[28]), .ZN(n3) );
  INVD0 U52 ( .I(value[28]), .ZN(n4) );
  INVD0 U53 ( .I(value[4]), .ZN(n5) );
  INVD0 U54 ( .I(value[3]), .ZN(n15) );
  NR2D0 U55 ( .A1(n21), .A2(n20), .ZN(n179) );
  INVD0 U56 ( .I(value[5]), .ZN(n26) );
  FA1D0 U57 ( .A(n5), .B(value[1]), .CI(value[7]), .CO(n22), .S(n21) );
  NR2XD0 U58 ( .A1(n23), .A2(n22), .ZN(n102) );
  NR2D0 U59 ( .A1(n179), .A2(n102), .ZN(n25) );
  INVD0 U60 ( .I(value[1]), .ZN(n7) );
  NR2D0 U61 ( .A1(value[4]), .A2(n7), .ZN(n10) );
  INVD0 U62 ( .I(value[0]), .ZN(n6) );
  NR2D0 U63 ( .A1(value[3]), .A2(n6), .ZN(n9) );
  CKND2D0 U64 ( .A1(value[4]), .A2(n7), .ZN(n8) );
  OAI21D0 U65 ( .A1(n10), .A2(n9), .B(n8), .ZN(n14) );
  INVD0 U66 ( .I(value[2]), .ZN(n11) );
  OR2D0 U67 ( .A1(value[5]), .A2(n11), .Z(n13) );
  CKAN2D0 U68 ( .A1(value[5]), .A2(n11), .Z(n12) );
  AOI21D0 U69 ( .A1(n14), .A2(n13), .B(n12), .ZN(n19) );
  HA1D0 U70 ( .A(value[0]), .B(n15), .CO(n20), .S(n16) );
  NR2D0 U71 ( .A1(n16), .A2(value[6]), .ZN(n18) );
  CKND2D0 U72 ( .A1(n16), .A2(value[6]), .ZN(n17) );
  OAI21D0 U73 ( .A1(n19), .A2(n18), .B(n17), .ZN(n101) );
  CKND2D0 U74 ( .A1(n21), .A2(n20), .ZN(n180) );
  CKND2D0 U75 ( .A1(n23), .A2(n22), .ZN(n103) );
  OAI21D0 U76 ( .A1(n102), .A2(n180), .B(n103), .ZN(n24) );
  AOI21D1 U77 ( .A1(n25), .A2(n101), .B(n24), .ZN(n178) );
  INVD0 U78 ( .I(value[6]), .ZN(n29) );
  FA1D0 U79 ( .A(n26), .B(value[2]), .CI(value[8]), .CO(n27), .S(n23) );
  NR2D0 U80 ( .A1(n28), .A2(n27), .ZN(n174) );
  OAI21D1 U81 ( .A1(n178), .A2(n174), .B(n175), .ZN(n110) );
  INVD0 U82 ( .I(value[7]), .ZN(n33) );
  FA1D0 U83 ( .A(n29), .B(value[3]), .CI(value[9]), .CO(n30), .S(n28) );
  OR2D0 U84 ( .A1(n31), .A2(n30), .Z(n108) );
  INVD0 U85 ( .I(n107), .ZN(n32) );
  AOI21D1 U86 ( .A1(n110), .A2(n108), .B(n32), .ZN(n173) );
  INVD0 U87 ( .I(value[8]), .ZN(n36) );
  FA1D0 U88 ( .A(n33), .B(value[10]), .CI(value[4]), .CO(n34), .S(n31) );
  NR2D0 U89 ( .A1(n35), .A2(n34), .ZN(n169) );
  OAI21D1 U90 ( .A1(n173), .A2(n169), .B(n170), .ZN(n114) );
  INVD0 U91 ( .I(value[9]), .ZN(n40) );
  FA1D0 U92 ( .A(n36), .B(value[5]), .CI(value[11]), .CO(n37), .S(n35) );
  OR2D0 U93 ( .A1(n38), .A2(n37), .Z(n112) );
  AOI21D1 U94 ( .A1(n114), .A2(n112), .B(n39), .ZN(n168) );
  FA1D0 U95 ( .A(n40), .B(value[12]), .CI(value[6]), .CO(n41), .S(n38) );
  OAI21D1 U96 ( .A1(n168), .A2(n164), .B(n165), .ZN(n118) );
  FA1D0 U97 ( .A(n43), .B(value[13]), .CI(value[7]), .CO(n44), .S(n42) );
  AOI21D1 U98 ( .A1(n118), .A2(n116), .B(n46), .ZN(n163) );
  FA1D0 U99 ( .A(n47), .B(value[14]), .CI(value[8]), .CO(n48), .S(n45) );
  OAI21D1 U100 ( .A1(n163), .A2(n159), .B(n160), .ZN(n122) );
  FA1D0 U101 ( .A(n50), .B(value[15]), .CI(value[9]), .CO(n51), .S(n49) );
  AOI21D1 U102 ( .A1(n122), .A2(n120), .B(n53), .ZN(n158) );
  FA1D0 U103 ( .A(n54), .B(value[16]), .CI(value[10]), .CO(n55), .S(n52) );
  OAI21D1 U104 ( .A1(n158), .A2(n154), .B(n155), .ZN(n126) );
  FA1D0 U105 ( .A(n57), .B(value[17]), .CI(value[11]), .CO(n58), .S(n56) );
  AOI21D1 U106 ( .A1(n126), .A2(n124), .B(n60), .ZN(n153) );
  FA1D0 U107 ( .A(n61), .B(value[18]), .CI(value[12]), .CO(n62), .S(n59) );
  OAI21D1 U108 ( .A1(n153), .A2(n149), .B(n150), .ZN(n130) );
  FA1D0 U109 ( .A(n64), .B(value[19]), .CI(value[13]), .CO(n65), .S(n63) );
  AOI21D1 U110 ( .A1(n130), .A2(n128), .B(n67), .ZN(n148) );
  FA1D0 U111 ( .A(n68), .B(value[20]), .CI(value[14]), .CO(n69), .S(n66) );
  OAI21D1 U112 ( .A1(n148), .A2(n144), .B(n145), .ZN(n134) );
  FA1D0 U113 ( .A(n71), .B(value[22]), .CI(value[16]), .CO(n79), .S(n74) );
  FA1D0 U114 ( .A(n72), .B(value[21]), .CI(value[15]), .CO(n73), .S(n70) );
  AO21D1 U115 ( .A1(n134), .A2(n132), .B(n75), .Z(n77) );
  FA1D0 U116 ( .A(n76), .B(value[23]), .CI(value[17]), .CO(n83), .S(n78) );
  FA1D0 U117 ( .A(n79), .B(n78), .CI(n77), .CO(n81), .S(product_comb[24]) );
  FA1D0 U118 ( .A(n80), .B(value[24]), .CI(value[18]), .CO(n87), .S(n82) );
  FA1D0 U119 ( .A(n83), .B(n82), .CI(n81), .CO(n85), .S(product_comb[25]) );
  FA1D0 U120 ( .A(n84), .B(value[25]), .CI(value[19]), .CO(n91), .S(n86) );
  FA1D0 U121 ( .A(n87), .B(n86), .CI(n85), .CO(n89), .S(product_comb[26]) );
  FA1D0 U122 ( .A(n88), .B(value[20]), .CI(value[26]), .CO(n94), .S(n90) );
  FA1D0 U123 ( .A(n91), .B(n90), .CI(n89), .CO(n92), .S(product_comb[27]) );
  FA1D0 U124 ( .A(n141), .B(value[21]), .CI(value[27]), .CO(n96), .S(n93) );
  FA1D0 U125 ( .A(n94), .B(n93), .CI(n92), .CO(n95), .S(product_comb[28]) );
  FA1D0 U126 ( .A(value[28]), .B(n138), .CI(value[22]), .CO(n99), .S(n97) );
  FA1D0 U127 ( .A(n97), .B(n96), .CI(n95), .CO(n98), .S(product_comb[29]) );
  FA1D0 U128 ( .A(n3), .B(value[28]), .CI(value[25]), .CO(n136) );
  FA1D0 U129 ( .A(value[26]), .B(n3), .CI(value[23]), .CO(n142) );
  FA1D0 U130 ( .A(value[27]), .B(n4), .CI(value[24]), .CO(n139) );
  FA1D0 U131 ( .A(n99), .B(n88), .CI(n98), .CO(n140), .S(product_comb[30]) );
  INVD1 U132 ( .I(n100), .ZN(product_comb[36]) );
  INVD0 U133 ( .I(n101), .ZN(n182) );
  OAI21D0 U134 ( .A1(n182), .A2(n179), .B(n180), .ZN(n106) );
  INVD0 U135 ( .I(n102), .ZN(n104) );
  CKND2D0 U136 ( .A1(n104), .A2(n103), .ZN(n105) );
  XNR2D0 U137 ( .A1(n106), .A2(n105), .ZN(product_comb[9]) );
  CKND2D0 U138 ( .A1(n108), .A2(n107), .ZN(n109) );
  XNR2D0 U139 ( .A1(n110), .A2(n109), .ZN(product_comb[11]) );
  CKND2D0 U140 ( .A1(n112), .A2(n111), .ZN(n113) );
  XNR2D0 U141 ( .A1(n114), .A2(n113), .ZN(product_comb[13]) );
  CKND2D0 U142 ( .A1(n116), .A2(n115), .ZN(n117) );
  XNR2D0 U143 ( .A1(n118), .A2(n117), .ZN(product_comb[15]) );
  CKND2D0 U144 ( .A1(n120), .A2(n119), .ZN(n121) );
  XNR2D0 U145 ( .A1(n122), .A2(n121), .ZN(product_comb[17]) );
  CKND2D0 U146 ( .A1(n124), .A2(n123), .ZN(n125) );
  XNR2D0 U147 ( .A1(n126), .A2(n125), .ZN(product_comb[19]) );
  CKND2D0 U148 ( .A1(n128), .A2(n127), .ZN(n129) );
  XNR2D0 U149 ( .A1(n130), .A2(n129), .ZN(product_comb[21]) );
  CKND2D0 U150 ( .A1(n132), .A2(n131), .ZN(n133) );
  XNR2D1 U151 ( .A1(n134), .A2(n133), .ZN(product_comb[23]) );
  FA1D0 U152 ( .A(n4), .B(n136), .CI(n135), .CO(n143), .S(product_comb[33]) );
  FA1D0 U153 ( .A(n139), .B(n138), .CI(n137), .CO(n135), .S(product_comb[32])
         );
  FA1D0 U154 ( .A(n142), .B(n141), .CI(n140), .CO(n137), .S(product_comb[31])
         );
  FA1D0 U155 ( .A(value[26]), .B(n3), .CI(n143), .CO(n100) );
  INVD0 U156 ( .I(n144), .ZN(n146) );
  CKND2D0 U157 ( .A1(n146), .A2(n145), .ZN(n147) );
  CKXOR2D1 U158 ( .A1(n148), .A2(n147), .Z(product_comb[22]) );
  INVD0 U159 ( .I(n149), .ZN(n151) );
  CKND2D0 U160 ( .A1(n151), .A2(n150), .ZN(n152) );
  XOR2D0 U161 ( .A1(n153), .A2(n152), .Z(product_comb[20]) );
  INVD0 U162 ( .I(n154), .ZN(n156) );
  CKND2D0 U163 ( .A1(n156), .A2(n155), .ZN(n157) );
  XOR2D0 U164 ( .A1(n158), .A2(n157), .Z(product_comb[18]) );
  INVD0 U165 ( .I(n159), .ZN(n161) );
  CKND2D0 U166 ( .A1(n161), .A2(n160), .ZN(n162) );
  XOR2D0 U167 ( .A1(n163), .A2(n162), .Z(product_comb[16]) );
  INVD0 U168 ( .I(n164), .ZN(n166) );
  CKND2D0 U169 ( .A1(n166), .A2(n165), .ZN(n167) );
  XOR2D0 U170 ( .A1(n168), .A2(n167), .Z(product_comb[14]) );
  INVD0 U171 ( .I(n169), .ZN(n171) );
  CKND2D0 U172 ( .A1(n171), .A2(n170), .ZN(n172) );
  XOR2D0 U173 ( .A1(n173), .A2(n172), .Z(product_comb[12]) );
  INVD0 U174 ( .I(n174), .ZN(n176) );
  CKND2D0 U175 ( .A1(n176), .A2(n175), .ZN(n177) );
  XOR2D0 U176 ( .A1(n178), .A2(n177), .Z(product_comb[10]) );
  INVD0 U177 ( .I(n179), .ZN(n181) );
  CKND2D0 U178 ( .A1(n181), .A2(n180), .ZN(n183) );
  XOR2D0 U179 ( .A1(n183), .A2(n182), .Z(product_comb[8]) );
endmodule


module oadm_core_eq1011_APPROX_LEVEL0 ( clk, x_mantissa, y_mantissa, 
        divide_mode, mantissa_value );
  input [23:0] x_mantissa;
  input [23:0] y_mantissa;
  output [28:0] mantissa_value;
  input clk, divide_mode;
  wire   divide_s1, divide_s2, divide_s3, divide_s4, divide_s5, N177, N178,
         N179, N180, N181, N182, N183, N184, N185, N186, N187, N188, N189,
         N190, N191, N192, N193, N194, N195, N196, N197, N198, N199, N200,
         N201, N202, N203, N204, N205, DP_OP_24J1_122_2196_n90,
         DP_OP_24J1_122_2196_n87, DP_OP_24J1_122_2196_n86,
         DP_OP_24J1_122_2196_n85, DP_OP_24J1_122_2196_n84,
         DP_OP_24J1_122_2196_n83, DP_OP_24J1_122_2196_n82,
         DP_OP_24J1_122_2196_n81, DP_OP_24J1_122_2196_n80,
         DP_OP_24J1_122_2196_n79, DP_OP_24J1_122_2196_n78,
         DP_OP_24J1_122_2196_n77, DP_OP_24J1_122_2196_n76,
         DP_OP_24J1_122_2196_n75, DP_OP_24J1_122_2196_n74,
         DP_OP_24J1_122_2196_n73, DP_OP_24J1_122_2196_n72,
         DP_OP_24J1_122_2196_n71, DP_OP_24J1_122_2196_n70,
         DP_OP_24J1_122_2196_n69, DP_OP_24J1_122_2196_n68,
         DP_OP_24J1_122_2196_n67, DP_OP_24J1_122_2196_n66,
         DP_OP_24J1_122_2196_n65, DP_OP_24J1_122_2196_n64,
         DP_OP_24J1_122_2196_n63, DP_OP_24J1_122_2196_n62,
         DP_OP_24J1_122_2196_n61, DP_OP_24J1_122_2196_n60,
         DP_OP_24J1_122_2196_n59, DP_OP_24J1_122_2196_n58,
         DP_OP_24J1_122_2196_n57, DP_OP_24J1_122_2196_n56,
         DP_OP_24J1_122_2196_n55, DP_OP_24J1_122_2196_n54,
         DP_OP_24J1_122_2196_n53, DP_OP_24J1_122_2196_n52,
         DP_OP_24J1_122_2196_n51, DP_OP_24J1_122_2196_n50,
         DP_OP_24J1_122_2196_n49, DP_OP_24J1_122_2196_n48,
         DP_OP_24J1_122_2196_n47, DP_OP_24J1_122_2196_n46,
         DP_OP_24J1_122_2196_n45, DP_OP_24J1_122_2196_n44,
         DP_OP_24J1_122_2196_n43, DP_OP_24J1_122_2196_n42,
         DP_OP_24J1_122_2196_n41, DP_OP_24J1_122_2196_n40,
         DP_OP_24J1_122_2196_n39, DP_OP_24J1_122_2196_n38,
         DP_OP_24J1_122_2196_n37, DP_OP_24J1_122_2196_n36,
         DP_OP_24J1_122_2196_n35, DP_OP_24J1_122_2196_n34,
         DP_OP_24J1_122_2196_n33, DP_OP_24J1_122_2196_n32,
         DP_OP_24J1_122_2196_n31, DP_OP_24J1_122_2196_n30,
         DP_OP_24J1_122_2196_n29, DP_OP_24J1_122_2196_n28,
         DP_OP_24J1_122_2196_n27, intadd_0_A_1_, intadd_0_B_23_,
         intadd_0_B_22_, intadd_0_B_2_, intadd_0_B_1_, intadd_0_CI,
         intadd_0_n24, intadd_0_n23, intadd_0_n22, intadd_0_n21, intadd_0_n20,
         intadd_0_n19, intadd_0_n18, intadd_0_n17, intadd_0_n16, intadd_0_n15,
         intadd_0_n14, intadd_0_n13, intadd_0_n12, intadd_0_n11, intadd_0_n10,
         intadd_0_n9, intadd_0_n8, intadd_0_n7, intadd_0_n6, intadd_0_n5,
         intadd_0_n4, intadd_0_n3, intadd_0_n2, intadd_0_n1, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, n175, n176, n1770, n1780, n1790, n1800, n1810, n1820, n1830,
         n1840, n1850, n1860, n1870, n1880, n1890, n1900, n1910, n1920, n1930,
         n1940, n1950, n1960, n1970, n1980, n1990, n2000, n2010, n2020, n2030,
         n2040, n2050, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n243, n244, n245, n246, n247,
         n248, n249, n250, n251, n252, n253, n254, n255, n256;
  wire   [23:0] zm0_c1;
  wire   [24:0] zm0_s1;
  wire   [22:0] x_s1;
  wire   [24:0] zm0_s2;
  wire   [22:0] x_s2;
  wire   [24:0] zm0_s3;
  wire   [22:0] x_s3;
  wire   [24:1] plane0;
  wire   [26:0] sum0;
  wire   [26:0] sum1;
  wire   [26:0] sum2;
  wire   [26:0] shared_s4;
  wire   [28:0] divided_s5;
  wire   [26:0] shared_s5;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5;

  csa3_WIDTH29_2 csa0 ( .input_a({1'b0, 1'b0, n254, n255, plane0, zm0_s3[0]}), 
        .input_b({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .input_c({1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .sum({SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        sum0}) );
  csa3_WIDTH29_1 csa1 ( .input_a({1'b0, 1'b0, sum0}), .input_b({1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0}), .input_c({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .sum({
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, sum1}) );
  csa3_WIDTH29_0 csa2 ( .input_a({1'b0, 1'b0, sum1}), .input_b({1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0}), .input_c({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .sum({
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, sum2}) );
  recip_scale_fixed_APPROX_LEVEL0_VALUE_WIDTH29 division_scale ( .clk(clk), 
        .value({n15, shared_s4[26], n14, shared_s4[25:7], n11, n12, n13, 
        shared_s4[3:0]}), .y_fraction_msb({1'b0, 1'b0, 1'b0, 1'b0}), 
        .scaled_value(divided_s5) );
  DFQD1 zm0_s1_reg_24_ ( .D(intadd_0_n1), .CP(clk), .Q(zm0_s1[24]) );
  DFQD1 zm0_s1_reg_23_ ( .D(zm0_c1[23]), .CP(clk), .Q(zm0_s1[23]) );
  DFQD1 zm0_s1_reg_22_ ( .D(zm0_c1[22]), .CP(clk), .Q(zm0_s1[22]) );
  DFQD1 zm0_s1_reg_21_ ( .D(zm0_c1[21]), .CP(clk), .Q(zm0_s1[21]) );
  DFQD1 zm0_s1_reg_20_ ( .D(zm0_c1[20]), .CP(clk), .Q(zm0_s1[20]) );
  DFQD1 zm0_s1_reg_19_ ( .D(zm0_c1[19]), .CP(clk), .Q(zm0_s1[19]) );
  DFQD1 zm0_s1_reg_18_ ( .D(zm0_c1[18]), .CP(clk), .Q(zm0_s1[18]) );
  DFQD1 zm0_s1_reg_17_ ( .D(zm0_c1[17]), .CP(clk), .Q(zm0_s1[17]) );
  DFQD1 zm0_s1_reg_16_ ( .D(zm0_c1[16]), .CP(clk), .Q(zm0_s1[16]) );
  DFQD1 zm0_s1_reg_15_ ( .D(zm0_c1[15]), .CP(clk), .Q(zm0_s1[15]) );
  DFQD1 zm0_s1_reg_14_ ( .D(zm0_c1[14]), .CP(clk), .Q(zm0_s1[14]) );
  DFQD1 zm0_s1_reg_13_ ( .D(zm0_c1[13]), .CP(clk), .Q(zm0_s1[13]) );
  DFQD1 zm0_s1_reg_12_ ( .D(zm0_c1[12]), .CP(clk), .Q(zm0_s1[12]) );
  DFQD1 zm0_s1_reg_11_ ( .D(zm0_c1[11]), .CP(clk), .Q(zm0_s1[11]) );
  DFQD1 zm0_s1_reg_10_ ( .D(zm0_c1[10]), .CP(clk), .Q(zm0_s1[10]) );
  DFQD1 zm0_s1_reg_9_ ( .D(zm0_c1[9]), .CP(clk), .Q(zm0_s1[9]) );
  DFQD1 zm0_s1_reg_8_ ( .D(zm0_c1[8]), .CP(clk), .Q(zm0_s1[8]) );
  DFQD1 zm0_s1_reg_7_ ( .D(zm0_c1[7]), .CP(clk), .Q(zm0_s1[7]) );
  DFQD1 zm0_s1_reg_6_ ( .D(zm0_c1[6]), .CP(clk), .Q(zm0_s1[6]) );
  DFQD1 zm0_s1_reg_5_ ( .D(zm0_c1[5]), .CP(clk), .Q(zm0_s1[5]) );
  DFQD1 zm0_s1_reg_4_ ( .D(zm0_c1[4]), .CP(clk), .Q(zm0_s1[4]) );
  DFQD1 zm0_s1_reg_3_ ( .D(zm0_c1[3]), .CP(clk), .Q(zm0_s1[3]) );
  DFQD1 zm0_s1_reg_2_ ( .D(zm0_c1[2]), .CP(clk), .Q(zm0_s1[2]) );
  DFQD1 zm0_s1_reg_1_ ( .D(zm0_c1[1]), .CP(clk), .Q(zm0_s1[1]) );
  DFQD1 zm0_s1_reg_0_ ( .D(zm0_c1[0]), .CP(clk), .Q(zm0_s1[0]) );
  DFQD1 x_s1_reg_22_ ( .D(x_mantissa[22]), .CP(clk), .Q(x_s1[22]) );
  DFQD1 x_s1_reg_21_ ( .D(x_mantissa[21]), .CP(clk), .Q(x_s1[21]) );
  DFQD1 x_s1_reg_20_ ( .D(x_mantissa[20]), .CP(clk), .Q(x_s1[20]) );
  DFQD1 x_s1_reg_19_ ( .D(x_mantissa[19]), .CP(clk), .Q(x_s1[19]) );
  DFQD1 x_s1_reg_18_ ( .D(x_mantissa[18]), .CP(clk), .Q(x_s1[18]) );
  DFQD1 x_s1_reg_17_ ( .D(x_mantissa[17]), .CP(clk), .Q(x_s1[17]) );
  DFQD1 x_s1_reg_16_ ( .D(x_mantissa[16]), .CP(clk), .Q(x_s1[16]) );
  DFQD1 x_s1_reg_15_ ( .D(x_mantissa[15]), .CP(clk), .Q(x_s1[15]) );
  DFQD1 x_s1_reg_14_ ( .D(x_mantissa[14]), .CP(clk), .Q(x_s1[14]) );
  DFQD1 x_s1_reg_13_ ( .D(x_mantissa[13]), .CP(clk), .Q(x_s1[13]) );
  DFQD1 x_s1_reg_12_ ( .D(x_mantissa[12]), .CP(clk), .Q(x_s1[12]) );
  DFQD1 x_s1_reg_11_ ( .D(x_mantissa[11]), .CP(clk), .Q(x_s1[11]) );
  DFQD1 x_s1_reg_10_ ( .D(x_mantissa[10]), .CP(clk), .Q(x_s1[10]) );
  DFQD1 x_s1_reg_9_ ( .D(x_mantissa[9]), .CP(clk), .Q(x_s1[9]) );
  DFQD1 x_s1_reg_8_ ( .D(x_mantissa[8]), .CP(clk), .Q(x_s1[8]) );
  DFQD1 x_s1_reg_7_ ( .D(x_mantissa[7]), .CP(clk), .Q(x_s1[7]) );
  DFQD1 x_s1_reg_6_ ( .D(x_mantissa[6]), .CP(clk), .Q(x_s1[6]) );
  DFQD1 x_s1_reg_5_ ( .D(x_mantissa[5]), .CP(clk), .Q(x_s1[5]) );
  DFQD1 x_s1_reg_4_ ( .D(x_mantissa[4]), .CP(clk), .Q(x_s1[4]) );
  DFQD1 x_s1_reg_3_ ( .D(x_mantissa[3]), .CP(clk), .Q(x_s1[3]) );
  DFQD1 x_s1_reg_2_ ( .D(x_mantissa[2]), .CP(clk), .Q(x_s1[2]) );
  DFQD1 x_s1_reg_1_ ( .D(x_mantissa[1]), .CP(clk), .Q(x_s1[1]) );
  DFQD1 x_s1_reg_0_ ( .D(x_mantissa[0]), .CP(clk), .Q(x_s1[0]) );
  DFQD1 divide_s1_reg ( .D(divide_mode), .CP(clk), .Q(divide_s1) );
  DFQD1 zm0_s2_reg_24_ ( .D(zm0_s1[24]), .CP(clk), .Q(zm0_s2[24]) );
  DFQD1 zm0_s2_reg_23_ ( .D(zm0_s1[23]), .CP(clk), .Q(zm0_s2[23]) );
  DFQD1 zm0_s2_reg_22_ ( .D(zm0_s1[22]), .CP(clk), .Q(zm0_s2[22]) );
  DFQD1 zm0_s2_reg_21_ ( .D(zm0_s1[21]), .CP(clk), .Q(zm0_s2[21]) );
  DFQD1 zm0_s2_reg_20_ ( .D(zm0_s1[20]), .CP(clk), .Q(zm0_s2[20]) );
  DFQD1 zm0_s2_reg_19_ ( .D(zm0_s1[19]), .CP(clk), .Q(zm0_s2[19]) );
  DFQD1 zm0_s2_reg_18_ ( .D(zm0_s1[18]), .CP(clk), .Q(zm0_s2[18]) );
  DFQD1 zm0_s2_reg_17_ ( .D(zm0_s1[17]), .CP(clk), .Q(zm0_s2[17]) );
  DFQD1 zm0_s2_reg_16_ ( .D(zm0_s1[16]), .CP(clk), .Q(zm0_s2[16]) );
  DFQD1 zm0_s2_reg_15_ ( .D(zm0_s1[15]), .CP(clk), .Q(zm0_s2[15]) );
  DFQD1 zm0_s2_reg_14_ ( .D(zm0_s1[14]), .CP(clk), .Q(zm0_s2[14]) );
  DFQD1 zm0_s2_reg_13_ ( .D(zm0_s1[13]), .CP(clk), .Q(zm0_s2[13]) );
  DFQD1 zm0_s2_reg_12_ ( .D(zm0_s1[12]), .CP(clk), .Q(zm0_s2[12]) );
  DFQD1 zm0_s2_reg_11_ ( .D(zm0_s1[11]), .CP(clk), .Q(zm0_s2[11]) );
  DFQD1 zm0_s2_reg_10_ ( .D(zm0_s1[10]), .CP(clk), .Q(zm0_s2[10]) );
  DFQD1 zm0_s2_reg_9_ ( .D(zm0_s1[9]), .CP(clk), .Q(zm0_s2[9]) );
  DFQD1 zm0_s2_reg_8_ ( .D(zm0_s1[8]), .CP(clk), .Q(zm0_s2[8]) );
  DFQD1 zm0_s2_reg_7_ ( .D(zm0_s1[7]), .CP(clk), .Q(zm0_s2[7]) );
  DFQD1 zm0_s2_reg_6_ ( .D(zm0_s1[6]), .CP(clk), .Q(zm0_s2[6]) );
  DFQD1 zm0_s2_reg_5_ ( .D(zm0_s1[5]), .CP(clk), .Q(zm0_s2[5]) );
  DFQD1 zm0_s2_reg_4_ ( .D(zm0_s1[4]), .CP(clk), .Q(zm0_s2[4]) );
  DFQD1 zm0_s2_reg_3_ ( .D(zm0_s1[3]), .CP(clk), .Q(zm0_s2[3]) );
  DFQD1 zm0_s2_reg_2_ ( .D(zm0_s1[2]), .CP(clk), .Q(zm0_s2[2]) );
  DFQD1 zm0_s2_reg_1_ ( .D(zm0_s1[1]), .CP(clk), .Q(zm0_s2[1]) );
  DFQD1 zm0_s2_reg_0_ ( .D(zm0_s1[0]), .CP(clk), .Q(zm0_s2[0]) );
  DFQD1 x_s2_reg_22_ ( .D(x_s1[22]), .CP(clk), .Q(x_s2[22]) );
  DFQD1 x_s2_reg_21_ ( .D(x_s1[21]), .CP(clk), .Q(x_s2[21]) );
  DFQD1 x_s2_reg_20_ ( .D(x_s1[20]), .CP(clk), .Q(x_s2[20]) );
  DFQD1 x_s2_reg_19_ ( .D(x_s1[19]), .CP(clk), .Q(x_s2[19]) );
  DFQD1 x_s2_reg_18_ ( .D(x_s1[18]), .CP(clk), .Q(x_s2[18]) );
  DFQD1 x_s2_reg_17_ ( .D(x_s1[17]), .CP(clk), .Q(x_s2[17]) );
  DFQD1 x_s2_reg_16_ ( .D(x_s1[16]), .CP(clk), .Q(x_s2[16]) );
  DFQD1 x_s2_reg_15_ ( .D(x_s1[15]), .CP(clk), .Q(x_s2[15]) );
  DFQD1 x_s2_reg_14_ ( .D(x_s1[14]), .CP(clk), .Q(x_s2[14]) );
  DFQD1 x_s2_reg_13_ ( .D(x_s1[13]), .CP(clk), .Q(x_s2[13]) );
  DFQD1 x_s2_reg_12_ ( .D(x_s1[12]), .CP(clk), .Q(x_s2[12]) );
  DFQD1 x_s2_reg_11_ ( .D(x_s1[11]), .CP(clk), .Q(x_s2[11]) );
  DFQD1 x_s2_reg_10_ ( .D(x_s1[10]), .CP(clk), .Q(x_s2[10]) );
  DFQD1 x_s2_reg_9_ ( .D(x_s1[9]), .CP(clk), .Q(x_s2[9]) );
  DFQD1 x_s2_reg_8_ ( .D(x_s1[8]), .CP(clk), .Q(x_s2[8]) );
  DFQD1 x_s2_reg_7_ ( .D(x_s1[7]), .CP(clk), .Q(x_s2[7]) );
  DFQD1 x_s2_reg_6_ ( .D(x_s1[6]), .CP(clk), .Q(x_s2[6]) );
  DFQD1 x_s2_reg_5_ ( .D(x_s1[5]), .CP(clk), .Q(x_s2[5]) );
  DFQD1 x_s2_reg_4_ ( .D(x_s1[4]), .CP(clk), .Q(x_s2[4]) );
  DFQD1 x_s2_reg_3_ ( .D(x_s1[3]), .CP(clk), .Q(x_s2[3]) );
  DFQD1 x_s2_reg_2_ ( .D(x_s1[2]), .CP(clk), .Q(x_s2[2]) );
  DFQD1 x_s2_reg_1_ ( .D(x_s1[1]), .CP(clk), .Q(x_s2[1]) );
  DFQD1 x_s2_reg_0_ ( .D(x_s1[0]), .CP(clk), .Q(x_s2[0]) );
  DFQD1 divide_s2_reg ( .D(divide_s1), .CP(clk), .Q(divide_s2) );
  DFQD1 zm0_s3_reg_24_ ( .D(zm0_s2[24]), .CP(clk), .Q(zm0_s3[24]) );
  DFQD1 zm0_s3_reg_23_ ( .D(zm0_s2[23]), .CP(clk), .Q(zm0_s3[23]) );
  DFQD1 zm0_s3_reg_22_ ( .D(zm0_s2[22]), .CP(clk), .Q(zm0_s3[22]) );
  DFQD1 zm0_s3_reg_21_ ( .D(zm0_s2[21]), .CP(clk), .Q(zm0_s3[21]) );
  DFQD1 zm0_s3_reg_20_ ( .D(zm0_s2[20]), .CP(clk), .Q(zm0_s3[20]) );
  DFQD1 zm0_s3_reg_19_ ( .D(zm0_s2[19]), .CP(clk), .Q(zm0_s3[19]) );
  DFQD1 zm0_s3_reg_18_ ( .D(zm0_s2[18]), .CP(clk), .Q(zm0_s3[18]) );
  DFQD1 zm0_s3_reg_17_ ( .D(zm0_s2[17]), .CP(clk), .Q(zm0_s3[17]) );
  DFQD1 zm0_s3_reg_16_ ( .D(zm0_s2[16]), .CP(clk), .Q(zm0_s3[16]) );
  DFQD1 zm0_s3_reg_15_ ( .D(zm0_s2[15]), .CP(clk), .Q(zm0_s3[15]) );
  DFQD1 zm0_s3_reg_14_ ( .D(zm0_s2[14]), .CP(clk), .Q(zm0_s3[14]) );
  DFQD1 zm0_s3_reg_13_ ( .D(zm0_s2[13]), .CP(clk), .Q(zm0_s3[13]) );
  DFQD1 zm0_s3_reg_12_ ( .D(zm0_s2[12]), .CP(clk), .Q(zm0_s3[12]) );
  DFQD1 zm0_s3_reg_11_ ( .D(zm0_s2[11]), .CP(clk), .Q(zm0_s3[11]) );
  DFQD1 zm0_s3_reg_10_ ( .D(zm0_s2[10]), .CP(clk), .Q(zm0_s3[10]) );
  DFQD1 zm0_s3_reg_9_ ( .D(zm0_s2[9]), .CP(clk), .Q(zm0_s3[9]) );
  DFQD1 zm0_s3_reg_8_ ( .D(zm0_s2[8]), .CP(clk), .Q(zm0_s3[8]) );
  DFQD1 zm0_s3_reg_7_ ( .D(zm0_s2[7]), .CP(clk), .Q(zm0_s3[7]) );
  DFQD1 zm0_s3_reg_6_ ( .D(zm0_s2[6]), .CP(clk), .Q(zm0_s3[6]) );
  DFQD1 zm0_s3_reg_5_ ( .D(zm0_s2[5]), .CP(clk), .Q(zm0_s3[5]) );
  DFQD1 zm0_s3_reg_4_ ( .D(zm0_s2[4]), .CP(clk), .Q(zm0_s3[4]) );
  DFQD1 zm0_s3_reg_3_ ( .D(zm0_s2[3]), .CP(clk), .Q(zm0_s3[3]) );
  DFQD1 zm0_s3_reg_2_ ( .D(zm0_s2[2]), .CP(clk), .Q(zm0_s3[2]) );
  DFQD1 zm0_s3_reg_1_ ( .D(zm0_s2[1]), .CP(clk), .Q(zm0_s3[1]) );
  DFQD1 zm0_s3_reg_0_ ( .D(zm0_s2[0]), .CP(clk), .Q(zm0_s3[0]) );
  DFQD1 x_s3_reg_22_ ( .D(x_s2[22]), .CP(clk), .Q(x_s3[22]) );
  DFQD1 x_s3_reg_21_ ( .D(x_s2[21]), .CP(clk), .Q(x_s3[21]) );
  DFQD1 x_s3_reg_20_ ( .D(x_s2[20]), .CP(clk), .Q(x_s3[20]) );
  DFQD1 x_s3_reg_19_ ( .D(x_s2[19]), .CP(clk), .Q(x_s3[19]) );
  DFQD1 x_s3_reg_18_ ( .D(x_s2[18]), .CP(clk), .Q(x_s3[18]) );
  DFQD1 x_s3_reg_17_ ( .D(x_s2[17]), .CP(clk), .Q(x_s3[17]) );
  DFQD1 x_s3_reg_16_ ( .D(x_s2[16]), .CP(clk), .Q(x_s3[16]) );
  DFQD1 x_s3_reg_15_ ( .D(x_s2[15]), .CP(clk), .Q(x_s3[15]) );
  DFQD1 x_s3_reg_14_ ( .D(x_s2[14]), .CP(clk), .Q(x_s3[14]) );
  DFQD1 x_s3_reg_13_ ( .D(x_s2[13]), .CP(clk), .Q(x_s3[13]) );
  DFQD1 x_s3_reg_12_ ( .D(x_s2[12]), .CP(clk), .Q(x_s3[12]) );
  DFQD1 x_s3_reg_11_ ( .D(x_s2[11]), .CP(clk), .Q(x_s3[11]) );
  DFQD1 x_s3_reg_10_ ( .D(x_s2[10]), .CP(clk), .Q(x_s3[10]) );
  DFQD1 x_s3_reg_9_ ( .D(x_s2[9]), .CP(clk), .Q(x_s3[9]) );
  DFQD1 x_s3_reg_8_ ( .D(x_s2[8]), .CP(clk), .Q(x_s3[8]) );
  DFQD1 x_s3_reg_7_ ( .D(x_s2[7]), .CP(clk), .Q(x_s3[7]) );
  DFQD1 x_s3_reg_6_ ( .D(x_s2[6]), .CP(clk), .Q(x_s3[6]) );
  DFQD1 x_s3_reg_5_ ( .D(x_s2[5]), .CP(clk), .Q(x_s3[5]) );
  DFQD1 x_s3_reg_4_ ( .D(x_s2[4]), .CP(clk), .Q(x_s3[4]) );
  DFQD1 x_s3_reg_3_ ( .D(x_s2[3]), .CP(clk), .Q(x_s3[3]) );
  DFQD1 x_s3_reg_2_ ( .D(x_s2[2]), .CP(clk), .Q(x_s3[2]) );
  DFQD1 x_s3_reg_1_ ( .D(x_s2[1]), .CP(clk), .Q(x_s3[1]) );
  DFQD1 x_s3_reg_0_ ( .D(x_s2[0]), .CP(clk), .Q(x_s3[0]) );
  DFQD1 divide_s3_reg ( .D(divide_s2), .CP(clk), .Q(divide_s3) );
  DFQD1 shared_s4_reg_26_ ( .D(sum2[26]), .CP(clk), .Q(shared_s4[26]) );
  DFQD1 shared_s4_reg_25_ ( .D(sum2[25]), .CP(clk), .Q(shared_s4[25]) );
  DFQD1 shared_s4_reg_24_ ( .D(sum2[24]), .CP(clk), .Q(shared_s4[24]) );
  DFQD1 shared_s4_reg_23_ ( .D(sum2[23]), .CP(clk), .Q(shared_s4[23]) );
  DFQD1 shared_s4_reg_22_ ( .D(sum2[22]), .CP(clk), .Q(shared_s4[22]) );
  DFQD1 shared_s4_reg_21_ ( .D(sum2[21]), .CP(clk), .Q(shared_s4[21]) );
  DFQD1 shared_s4_reg_20_ ( .D(sum2[20]), .CP(clk), .Q(shared_s4[20]) );
  DFQD1 shared_s4_reg_19_ ( .D(sum2[19]), .CP(clk), .Q(shared_s4[19]) );
  DFQD1 shared_s4_reg_18_ ( .D(sum2[18]), .CP(clk), .Q(shared_s4[18]) );
  DFQD1 shared_s4_reg_17_ ( .D(sum2[17]), .CP(clk), .Q(shared_s4[17]) );
  DFQD1 shared_s4_reg_16_ ( .D(sum2[16]), .CP(clk), .Q(shared_s4[16]) );
  DFQD1 shared_s4_reg_15_ ( .D(sum2[15]), .CP(clk), .Q(shared_s4[15]) );
  DFQD1 shared_s4_reg_14_ ( .D(sum2[14]), .CP(clk), .Q(shared_s4[14]) );
  DFQD1 shared_s4_reg_13_ ( .D(sum2[13]), .CP(clk), .Q(shared_s4[13]) );
  DFQD1 shared_s4_reg_12_ ( .D(sum2[12]), .CP(clk), .Q(shared_s4[12]) );
  DFQD1 shared_s4_reg_11_ ( .D(sum2[11]), .CP(clk), .Q(shared_s4[11]) );
  DFQD1 shared_s4_reg_10_ ( .D(sum2[10]), .CP(clk), .Q(shared_s4[10]) );
  DFQD1 shared_s4_reg_9_ ( .D(sum2[9]), .CP(clk), .Q(shared_s4[9]) );
  DFQD1 shared_s4_reg_8_ ( .D(sum2[8]), .CP(clk), .Q(shared_s4[8]) );
  DFQD1 shared_s4_reg_7_ ( .D(sum2[7]), .CP(clk), .Q(shared_s4[7]) );
  DFQD1 shared_s4_reg_6_ ( .D(sum2[6]), .CP(clk), .Q(shared_s4[6]) );
  DFQD1 shared_s4_reg_5_ ( .D(sum2[5]), .CP(clk), .Q(shared_s4[5]) );
  DFQD1 shared_s4_reg_4_ ( .D(sum2[4]), .CP(clk), .Q(shared_s4[4]) );
  DFQD1 shared_s4_reg_3_ ( .D(sum2[3]), .CP(clk), .Q(shared_s4[3]) );
  DFQD1 shared_s4_reg_2_ ( .D(sum2[2]), .CP(clk), .Q(shared_s4[2]) );
  DFQD1 shared_s4_reg_1_ ( .D(sum2[1]), .CP(clk), .Q(shared_s4[1]) );
  DFQD1 shared_s4_reg_0_ ( .D(sum2[0]), .CP(clk), .Q(shared_s4[0]) );
  DFQD1 divide_s4_reg ( .D(n256), .CP(clk), .Q(divide_s4) );
  DFQD1 shared_s5_reg_26_ ( .D(n14), .CP(clk), .Q(shared_s5[26]) );
  DFQD1 shared_s5_reg_25_ ( .D(shared_s4[25]), .CP(clk), .Q(shared_s5[25]) );
  DFQD1 shared_s5_reg_24_ ( .D(shared_s4[24]), .CP(clk), .Q(shared_s5[24]) );
  DFQD1 shared_s5_reg_23_ ( .D(shared_s4[23]), .CP(clk), .Q(shared_s5[23]) );
  DFQD1 shared_s5_reg_22_ ( .D(shared_s4[22]), .CP(clk), .Q(shared_s5[22]) );
  DFQD1 shared_s5_reg_21_ ( .D(shared_s4[21]), .CP(clk), .Q(shared_s5[21]) );
  DFQD1 shared_s5_reg_20_ ( .D(shared_s4[20]), .CP(clk), .Q(shared_s5[20]) );
  DFQD1 shared_s5_reg_19_ ( .D(shared_s4[19]), .CP(clk), .Q(shared_s5[19]) );
  DFQD1 shared_s5_reg_18_ ( .D(shared_s4[18]), .CP(clk), .Q(shared_s5[18]) );
  DFQD1 shared_s5_reg_17_ ( .D(shared_s4[17]), .CP(clk), .Q(shared_s5[17]) );
  DFQD1 shared_s5_reg_16_ ( .D(shared_s4[16]), .CP(clk), .Q(shared_s5[16]) );
  DFQD1 shared_s5_reg_15_ ( .D(shared_s4[15]), .CP(clk), .Q(shared_s5[15]) );
  DFQD1 shared_s5_reg_14_ ( .D(shared_s4[14]), .CP(clk), .Q(shared_s5[14]) );
  DFQD1 shared_s5_reg_13_ ( .D(shared_s4[13]), .CP(clk), .Q(shared_s5[13]) );
  DFQD1 shared_s5_reg_12_ ( .D(shared_s4[12]), .CP(clk), .Q(shared_s5[12]) );
  DFQD1 shared_s5_reg_11_ ( .D(shared_s4[11]), .CP(clk), .Q(shared_s5[11]) );
  DFQD1 shared_s5_reg_10_ ( .D(shared_s4[10]), .CP(clk), .Q(shared_s5[10]) );
  DFQD1 shared_s5_reg_9_ ( .D(shared_s4[9]), .CP(clk), .Q(shared_s5[9]) );
  DFQD1 shared_s5_reg_8_ ( .D(shared_s4[8]), .CP(clk), .Q(shared_s5[8]) );
  DFQD1 shared_s5_reg_7_ ( .D(shared_s4[7]), .CP(clk), .Q(shared_s5[7]) );
  DFQD1 shared_s5_reg_6_ ( .D(shared_s4[6]), .CP(clk), .Q(shared_s5[6]) );
  DFQD1 shared_s5_reg_5_ ( .D(shared_s4[5]), .CP(clk), .Q(shared_s5[5]) );
  DFQD1 shared_s5_reg_4_ ( .D(shared_s4[4]), .CP(clk), .Q(shared_s5[4]) );
  DFQD1 shared_s5_reg_3_ ( .D(shared_s4[3]), .CP(clk), .Q(shared_s5[3]) );
  DFQD1 shared_s5_reg_2_ ( .D(shared_s4[2]), .CP(clk), .Q(shared_s5[2]) );
  DFQD1 shared_s5_reg_1_ ( .D(shared_s4[1]), .CP(clk), .Q(shared_s5[1]) );
  DFQD1 shared_s5_reg_0_ ( .D(shared_s4[0]), .CP(clk), .Q(shared_s5[0]) );
  DFQD1 divide_s5_reg ( .D(divide_s4), .CP(clk), .Q(divide_s5) );
  DFQD1 mantissa_value_reg_28_ ( .D(N205), .CP(clk), .Q(mantissa_value[28]) );
  DFQD1 mantissa_value_reg_27_ ( .D(N204), .CP(clk), .Q(mantissa_value[27]) );
  DFQD1 mantissa_value_reg_26_ ( .D(N203), .CP(clk), .Q(mantissa_value[26]) );
  DFQD1 mantissa_value_reg_25_ ( .D(N202), .CP(clk), .Q(mantissa_value[25]) );
  DFQD1 mantissa_value_reg_24_ ( .D(N201), .CP(clk), .Q(mantissa_value[24]) );
  DFQD1 mantissa_value_reg_23_ ( .D(N200), .CP(clk), .Q(mantissa_value[23]) );
  DFQD1 mantissa_value_reg_22_ ( .D(N199), .CP(clk), .Q(mantissa_value[22]) );
  DFQD1 mantissa_value_reg_21_ ( .D(N198), .CP(clk), .Q(mantissa_value[21]) );
  DFQD1 mantissa_value_reg_20_ ( .D(N197), .CP(clk), .Q(mantissa_value[20]) );
  DFQD1 mantissa_value_reg_19_ ( .D(N196), .CP(clk), .Q(mantissa_value[19]) );
  DFQD1 mantissa_value_reg_18_ ( .D(N195), .CP(clk), .Q(mantissa_value[18]) );
  DFQD1 mantissa_value_reg_17_ ( .D(N194), .CP(clk), .Q(mantissa_value[17]) );
  DFQD1 mantissa_value_reg_16_ ( .D(N193), .CP(clk), .Q(mantissa_value[16]) );
  DFQD1 mantissa_value_reg_15_ ( .D(N192), .CP(clk), .Q(mantissa_value[15]) );
  DFQD1 mantissa_value_reg_14_ ( .D(N191), .CP(clk), .Q(mantissa_value[14]) );
  DFQD1 mantissa_value_reg_13_ ( .D(N190), .CP(clk), .Q(mantissa_value[13]) );
  DFQD1 mantissa_value_reg_12_ ( .D(N189), .CP(clk), .Q(mantissa_value[12]) );
  DFQD1 mantissa_value_reg_11_ ( .D(N188), .CP(clk), .Q(mantissa_value[11]) );
  DFQD1 mantissa_value_reg_10_ ( .D(N187), .CP(clk), .Q(mantissa_value[10]) );
  DFQD1 mantissa_value_reg_9_ ( .D(N186), .CP(clk), .Q(mantissa_value[9]) );
  DFQD1 mantissa_value_reg_8_ ( .D(N185), .CP(clk), .Q(mantissa_value[8]) );
  DFQD1 mantissa_value_reg_7_ ( .D(N184), .CP(clk), .Q(mantissa_value[7]) );
  DFQD1 mantissa_value_reg_6_ ( .D(N183), .CP(clk), .Q(mantissa_value[6]) );
  DFQD1 mantissa_value_reg_5_ ( .D(N182), .CP(clk), .Q(mantissa_value[5]) );
  DFQD1 mantissa_value_reg_4_ ( .D(N181), .CP(clk), .Q(mantissa_value[4]) );
  DFQD1 mantissa_value_reg_3_ ( .D(N180), .CP(clk), .Q(mantissa_value[3]) );
  DFQD1 mantissa_value_reg_2_ ( .D(N179), .CP(clk), .Q(mantissa_value[2]) );
  DFQD1 mantissa_value_reg_1_ ( .D(N178), .CP(clk), .Q(mantissa_value[1]) );
  DFQD1 mantissa_value_reg_0_ ( .D(N177), .CP(clk), .Q(mantissa_value[0]) );
  CMPE42D1 DP_OP_24J1_122_2196_U48 ( .A(y_mantissa[3]), .B(x_mantissa[3]), .C(
        x_mantissa[2]), .CIX(DP_OP_24J1_122_2196_n90), .D(y_mantissa[2]), .CO(
        DP_OP_24J1_122_2196_n86), .COX(DP_OP_24J1_122_2196_n85), .S(
        DP_OP_24J1_122_2196_n87) );
  CMPE42D1 DP_OP_24J1_122_2196_U47 ( .A(y_mantissa[4]), .B(x_mantissa[4]), .C(
        x_mantissa[3]), .CIX(DP_OP_24J1_122_2196_n85), .D(y_mantissa[3]), .CO(
        DP_OP_24J1_122_2196_n83), .COX(DP_OP_24J1_122_2196_n82), .S(
        DP_OP_24J1_122_2196_n84) );
  CMPE42D1 DP_OP_24J1_122_2196_U46 ( .A(y_mantissa[5]), .B(x_mantissa[5]), .C(
        x_mantissa[4]), .CIX(DP_OP_24J1_122_2196_n82), .D(y_mantissa[4]), .CO(
        DP_OP_24J1_122_2196_n80), .COX(DP_OP_24J1_122_2196_n79), .S(
        DP_OP_24J1_122_2196_n81) );
  CMPE42D1 DP_OP_24J1_122_2196_U45 ( .A(y_mantissa[6]), .B(x_mantissa[6]), .C(
        x_mantissa[5]), .CIX(DP_OP_24J1_122_2196_n79), .D(y_mantissa[5]), .CO(
        DP_OP_24J1_122_2196_n77), .COX(DP_OP_24J1_122_2196_n76), .S(
        DP_OP_24J1_122_2196_n78) );
  CMPE42D1 DP_OP_24J1_122_2196_U44 ( .A(y_mantissa[7]), .B(x_mantissa[7]), .C(
        x_mantissa[6]), .CIX(DP_OP_24J1_122_2196_n76), .D(y_mantissa[6]), .CO(
        DP_OP_24J1_122_2196_n74), .COX(DP_OP_24J1_122_2196_n73), .S(
        DP_OP_24J1_122_2196_n75) );
  CMPE42D1 DP_OP_24J1_122_2196_U43 ( .A(y_mantissa[8]), .B(x_mantissa[8]), .C(
        x_mantissa[7]), .CIX(DP_OP_24J1_122_2196_n73), .D(y_mantissa[7]), .CO(
        DP_OP_24J1_122_2196_n71), .COX(DP_OP_24J1_122_2196_n70), .S(
        DP_OP_24J1_122_2196_n72) );
  CMPE42D1 DP_OP_24J1_122_2196_U42 ( .A(y_mantissa[9]), .B(x_mantissa[9]), .C(
        x_mantissa[8]), .CIX(DP_OP_24J1_122_2196_n70), .D(y_mantissa[8]), .CO(
        DP_OP_24J1_122_2196_n68), .COX(DP_OP_24J1_122_2196_n67), .S(
        DP_OP_24J1_122_2196_n69) );
  CMPE42D1 DP_OP_24J1_122_2196_U41 ( .A(y_mantissa[10]), .B(x_mantissa[10]), 
        .C(x_mantissa[9]), .CIX(DP_OP_24J1_122_2196_n67), .D(y_mantissa[9]), 
        .CO(DP_OP_24J1_122_2196_n65), .COX(DP_OP_24J1_122_2196_n64), .S(
        DP_OP_24J1_122_2196_n66) );
  CMPE42D1 DP_OP_24J1_122_2196_U40 ( .A(y_mantissa[11]), .B(x_mantissa[11]), 
        .C(x_mantissa[10]), .CIX(DP_OP_24J1_122_2196_n64), .D(y_mantissa[10]), 
        .CO(DP_OP_24J1_122_2196_n62), .COX(DP_OP_24J1_122_2196_n61), .S(
        DP_OP_24J1_122_2196_n63) );
  CMPE42D1 DP_OP_24J1_122_2196_U39 ( .A(y_mantissa[12]), .B(x_mantissa[12]), 
        .C(x_mantissa[11]), .CIX(DP_OP_24J1_122_2196_n61), .D(y_mantissa[11]), 
        .CO(DP_OP_24J1_122_2196_n59), .COX(DP_OP_24J1_122_2196_n58), .S(
        DP_OP_24J1_122_2196_n60) );
  CMPE42D1 DP_OP_24J1_122_2196_U38 ( .A(y_mantissa[13]), .B(x_mantissa[13]), 
        .C(x_mantissa[12]), .CIX(DP_OP_24J1_122_2196_n58), .D(y_mantissa[12]), 
        .CO(DP_OP_24J1_122_2196_n56), .COX(DP_OP_24J1_122_2196_n55), .S(
        DP_OP_24J1_122_2196_n57) );
  CMPE42D1 DP_OP_24J1_122_2196_U37 ( .A(y_mantissa[14]), .B(x_mantissa[14]), 
        .C(x_mantissa[13]), .CIX(DP_OP_24J1_122_2196_n55), .D(y_mantissa[13]), 
        .CO(DP_OP_24J1_122_2196_n53), .COX(DP_OP_24J1_122_2196_n52), .S(
        DP_OP_24J1_122_2196_n54) );
  CMPE42D1 DP_OP_24J1_122_2196_U36 ( .A(y_mantissa[15]), .B(x_mantissa[15]), 
        .C(x_mantissa[14]), .CIX(DP_OP_24J1_122_2196_n52), .D(y_mantissa[14]), 
        .CO(DP_OP_24J1_122_2196_n50), .COX(DP_OP_24J1_122_2196_n49), .S(
        DP_OP_24J1_122_2196_n51) );
  CMPE42D1 DP_OP_24J1_122_2196_U35 ( .A(y_mantissa[16]), .B(x_mantissa[16]), 
        .C(x_mantissa[15]), .CIX(DP_OP_24J1_122_2196_n49), .D(y_mantissa[15]), 
        .CO(DP_OP_24J1_122_2196_n47), .COX(DP_OP_24J1_122_2196_n46), .S(
        DP_OP_24J1_122_2196_n48) );
  CMPE42D1 DP_OP_24J1_122_2196_U34 ( .A(y_mantissa[17]), .B(x_mantissa[17]), 
        .C(x_mantissa[16]), .CIX(DP_OP_24J1_122_2196_n46), .D(y_mantissa[16]), 
        .CO(DP_OP_24J1_122_2196_n44), .COX(DP_OP_24J1_122_2196_n43), .S(
        DP_OP_24J1_122_2196_n45) );
  CMPE42D1 DP_OP_24J1_122_2196_U33 ( .A(y_mantissa[18]), .B(x_mantissa[18]), 
        .C(x_mantissa[17]), .CIX(DP_OP_24J1_122_2196_n43), .D(y_mantissa[17]), 
        .CO(DP_OP_24J1_122_2196_n41), .COX(DP_OP_24J1_122_2196_n40), .S(
        DP_OP_24J1_122_2196_n42) );
  CMPE42D1 DP_OP_24J1_122_2196_U32 ( .A(y_mantissa[19]), .B(x_mantissa[19]), 
        .C(x_mantissa[18]), .CIX(DP_OP_24J1_122_2196_n40), .D(y_mantissa[18]), 
        .CO(DP_OP_24J1_122_2196_n38), .COX(DP_OP_24J1_122_2196_n37), .S(
        DP_OP_24J1_122_2196_n39) );
  CMPE42D1 DP_OP_24J1_122_2196_U31 ( .A(y_mantissa[20]), .B(x_mantissa[20]), 
        .C(x_mantissa[19]), .CIX(DP_OP_24J1_122_2196_n37), .D(y_mantissa[19]), 
        .CO(DP_OP_24J1_122_2196_n35), .COX(DP_OP_24J1_122_2196_n34), .S(
        DP_OP_24J1_122_2196_n36) );
  CMPE42D1 DP_OP_24J1_122_2196_U30 ( .A(y_mantissa[21]), .B(x_mantissa[21]), 
        .C(x_mantissa[20]), .CIX(DP_OP_24J1_122_2196_n34), .D(y_mantissa[20]), 
        .CO(DP_OP_24J1_122_2196_n32), .COX(DP_OP_24J1_122_2196_n31), .S(
        DP_OP_24J1_122_2196_n33) );
  CMPE42D1 DP_OP_24J1_122_2196_U28 ( .A(y_mantissa[22]), .B(y_mantissa[21]), 
        .C(x_mantissa[21]), .CIX(DP_OP_24J1_122_2196_n31), .D(
        DP_OP_24J1_122_2196_n30), .CO(DP_OP_24J1_122_2196_n28), .COX(
        DP_OP_24J1_122_2196_n27), .S(DP_OP_24J1_122_2196_n29) );
  FA1D0 intadd_0_U24 ( .A(intadd_0_A_1_), .B(intadd_0_B_1_), .CI(intadd_0_n24), 
        .CO(intadd_0_n23), .S(zm0_c1[1]) );
  FA1D0 intadd_0_U5 ( .A(DP_OP_24J1_122_2196_n33), .B(DP_OP_24J1_122_2196_n35), 
        .CI(intadd_0_n5), .CO(intadd_0_n4), .S(zm0_c1[20]) );
  FA1D0 intadd_0_U7 ( .A(DP_OP_24J1_122_2196_n39), .B(DP_OP_24J1_122_2196_n41), 
        .CI(intadd_0_n7), .CO(intadd_0_n6), .S(zm0_c1[18]) );
  FA1D0 intadd_0_U9 ( .A(DP_OP_24J1_122_2196_n45), .B(DP_OP_24J1_122_2196_n47), 
        .CI(intadd_0_n9), .CO(intadd_0_n8), .S(zm0_c1[16]) );
  FA1D0 intadd_0_U13 ( .A(DP_OP_24J1_122_2196_n57), .B(DP_OP_24J1_122_2196_n59), .CI(intadd_0_n13), .CO(intadd_0_n12), .S(zm0_c1[12]) );
  FA1D0 intadd_0_U15 ( .A(DP_OP_24J1_122_2196_n63), .B(DP_OP_24J1_122_2196_n65), .CI(intadd_0_n15), .CO(intadd_0_n14), .S(zm0_c1[10]) );
  FA1D0 intadd_0_U17 ( .A(DP_OP_24J1_122_2196_n69), .B(DP_OP_24J1_122_2196_n71), .CI(intadd_0_n17), .CO(intadd_0_n16), .S(zm0_c1[8]) );
  FA1D0 intadd_0_U19 ( .A(DP_OP_24J1_122_2196_n75), .B(DP_OP_24J1_122_2196_n77), .CI(intadd_0_n19), .CO(intadd_0_n18), .S(zm0_c1[6]) );
  FA1D0 intadd_0_U23 ( .A(DP_OP_24J1_122_2196_n87), .B(intadd_0_B_2_), .CI(
        intadd_0_n23), .CO(intadd_0_n22), .S(zm0_c1[2]) );
  FA1D0 intadd_0_U14 ( .A(DP_OP_24J1_122_2196_n60), .B(DP_OP_24J1_122_2196_n62), .CI(intadd_0_n14), .CO(intadd_0_n13), .S(zm0_c1[11]) );
  FA1D0 intadd_0_U22 ( .A(DP_OP_24J1_122_2196_n84), .B(DP_OP_24J1_122_2196_n86), .CI(intadd_0_n22), .CO(intadd_0_n21), .S(zm0_c1[3]) );
  FA1D0 intadd_0_U25 ( .A(x_mantissa[0]), .B(n9), .CI(intadd_0_CI), .CO(
        intadd_0_n24), .S(zm0_c1[0]) );
  FA1D1 intadd_0_U10 ( .A(DP_OP_24J1_122_2196_n48), .B(DP_OP_24J1_122_2196_n50), .CI(intadd_0_n10), .CO(intadd_0_n9), .S(zm0_c1[15]) );
  FA1D1 intadd_0_U8 ( .A(DP_OP_24J1_122_2196_n42), .B(DP_OP_24J1_122_2196_n44), 
        .CI(intadd_0_n8), .CO(intadd_0_n7), .S(zm0_c1[17]) );
  FA1D1 intadd_0_U6 ( .A(DP_OP_24J1_122_2196_n36), .B(DP_OP_24J1_122_2196_n38), 
        .CI(intadd_0_n6), .CO(intadd_0_n5), .S(zm0_c1[19]) );
  FA1D1 intadd_0_U4 ( .A(DP_OP_24J1_122_2196_n29), .B(DP_OP_24J1_122_2196_n32), 
        .CI(intadd_0_n4), .CO(intadd_0_n3), .S(zm0_c1[21]) );
  FA1D0 intadd_0_U18 ( .A(DP_OP_24J1_122_2196_n72), .B(DP_OP_24J1_122_2196_n74), .CI(intadd_0_n18), .CO(intadd_0_n17), .S(zm0_c1[7]) );
  FA1D0 intadd_0_U16 ( .A(DP_OP_24J1_122_2196_n66), .B(DP_OP_24J1_122_2196_n68), .CI(intadd_0_n16), .CO(intadd_0_n15), .S(zm0_c1[9]) );
  FA1D0 U3 ( .A(DP_OP_24J1_122_2196_n54), .B(DP_OP_24J1_122_2196_n56), .CI(
        intadd_0_n12), .CO(intadd_0_n11), .S(zm0_c1[13]) );
  CKAN2D0 U4 ( .A1(n249), .A2(n248), .Z(n255) );
  CKAN2D0 U5 ( .A1(n245), .A2(n244), .Z(n254) );
  NR2D0 U6 ( .A1(n247), .A2(n246), .ZN(n245) );
  FA1D0 U7 ( .A(DP_OP_24J1_122_2196_n78), .B(DP_OP_24J1_122_2196_n80), .CI(
        intadd_0_n20), .CO(intadd_0_n19), .S(zm0_c1[5]) );
  ND2D0 U8 ( .A1(n79), .A2(n78), .ZN(n222) );
  ND2D0 U9 ( .A1(n88), .A2(n87), .ZN(n92) );
  NR2D0 U10 ( .A1(n88), .A2(n87), .ZN(n91) );
  ND2D0 U11 ( .A1(n83), .A2(n82), .ZN(n227) );
  BUFFD1 U12 ( .I(shared_s4[26]), .Z(n15) );
  XNR2D0 U13 ( .A1(n247), .A2(n246), .ZN(n249) );
  OAI21D0 U14 ( .A1(n89), .A2(n91), .B(n92), .ZN(n97) );
  INVD0 U15 ( .I(n95), .ZN(n89) );
  AO21D0 U16 ( .A1(n230), .A2(n228), .B(n84), .Z(n232) );
  OAI21D0 U17 ( .A1(n225), .A2(n221), .B(n222), .ZN(n230) );
  AOI21D0 U18 ( .A1(n2000), .A2(n1980), .B(n76), .ZN(n225) );
  OAI21D0 U19 ( .A1(n164), .A2(n160), .B(n161), .ZN(n2000) );
  AOI21D0 U20 ( .A1(n149), .A2(n69), .B(n68), .ZN(n164) );
  OAI21D0 U21 ( .A1(n136), .A2(n44), .B(n43), .ZN(n149) );
  INVD0 U22 ( .I(n227), .ZN(n84) );
  IOA21D0 U23 ( .A1(DP_OP_24J1_122_2196_n27), .A2(y_mantissa[22]), .B(
        intadd_0_B_23_), .ZN(intadd_0_B_22_) );
  CKND2D0 U24 ( .A1(n52), .A2(n51), .ZN(n166) );
  CKND2D0 U25 ( .A1(n72), .A2(n71), .ZN(n161) );
  CKND2D0 U26 ( .A1(n56), .A2(n55), .ZN(n2020) );
  CKND2D0 U27 ( .A1(n75), .A2(n74), .ZN(n1970) );
  CKND2D0 U28 ( .A1(n38), .A2(n37), .ZN(n1870) );
  NR2D0 U29 ( .A1(n79), .A2(n78), .ZN(n221) );
  OR2D0 U30 ( .A1(n83), .A2(n82), .Z(n228) );
  OR2D0 U31 ( .A1(y_mantissa[22]), .A2(DP_OP_24J1_122_2196_n27), .Z(
        intadd_0_B_23_) );
  BUFFD0 U32 ( .I(n244), .Z(n1950) );
  BUFFD0 U33 ( .I(n244), .Z(n219) );
  BUFFD0 U34 ( .I(n248), .Z(n235) );
  BUFFD0 U35 ( .I(n248), .Z(n256) );
  BUFFD0 U36 ( .I(n248), .Z(n240) );
  BUFFD0 U37 ( .I(shared_s4[6]), .Z(n11) );
  BUFFD0 U38 ( .I(divide_s3), .Z(n248) );
  BUFFD0 U39 ( .I(shared_s4[26]), .Z(n14) );
  BUFFD0 U40 ( .I(divide_s3), .Z(n244) );
  BUFFD0 U41 ( .I(divide_s3), .Z(n158) );
  INVD0 U42 ( .I(zm0_s3[19]), .ZN(n86) );
  INVD0 U43 ( .I(zm0_s3[20]), .ZN(n85) );
  INVD0 U44 ( .I(zm0_s3[16]), .ZN(n81) );
  INVD0 U45 ( .I(zm0_s3[17]), .ZN(n80) );
  BUFFD0 U46 ( .I(divide_s5), .Z(n116) );
  NR2XD0 U47 ( .A1(n251), .A2(n252), .ZN(DP_OP_24J1_122_2196_n90) );
  BUFFD1 U49 ( .I(y_mantissa[0]), .Z(n8) );
  BUFFD1 U50 ( .I(y_mantissa[1]), .Z(n9) );
  INVD0 U51 ( .I(n253), .ZN(n10) );
  OA21D0 U52 ( .A1(n9), .A2(n8), .B(x_mantissa[1]), .Z(intadd_0_B_2_) );
  OAI31D0 U53 ( .A1(n8), .A2(n9), .A3(n253), .B(n250), .ZN(intadd_0_B_1_) );
  OAI21D0 U54 ( .A1(n8), .A2(n253), .B(n9), .ZN(n250) );
  BUFFD1 U55 ( .I(shared_s4[5]), .Z(n12) );
  BUFFD1 U56 ( .I(shared_s4[4]), .Z(n13) );
  INVD0 U57 ( .I(zm0_s3[23]), .ZN(n16) );
  OR2D0 U58 ( .A1(n16), .A2(x_s3[22]), .Z(n243) );
  XNR2D0 U59 ( .A1(n16), .A2(x_s3[22]), .ZN(n107) );
  INVD0 U60 ( .I(zm0_s3[22]), .ZN(n17) );
  INVD0 U61 ( .I(zm0_s3[21]), .ZN(n18) );
  FA1D0 U62 ( .A(x_s3[21]), .B(x_s3[22]), .CI(n17), .CO(n106), .S(n102) );
  FA1D0 U63 ( .A(x_s3[20]), .B(x_s3[21]), .CI(n18), .CO(n103), .S(n98) );
  INVD0 U64 ( .I(zm0_s3[18]), .ZN(n19) );
  FA1D0 U65 ( .A(x_s3[17]), .B(x_s3[18]), .CI(n19), .CO(n239), .S(n233) );
  INVD0 U66 ( .I(zm0_s3[3]), .ZN(n29) );
  INVD0 U67 ( .I(zm0_s3[2]), .ZN(n20) );
  NR2D0 U68 ( .A1(n26), .A2(n25), .ZN(n130) );
  FA1D0 U69 ( .A(x_s3[1]), .B(x_s3[2]), .CI(n20), .CO(n25), .S(n24) );
  NR2D0 U70 ( .A1(n24), .A2(n23), .ZN(n129) );
  NR2D0 U71 ( .A1(n130), .A2(n129), .ZN(n28) );
  HA1D0 U72 ( .A(x_s3[1]), .B(x_s3[0]), .CO(n23), .S(n22) );
  INVD0 U73 ( .I(zm0_s3[1]), .ZN(n21) );
  NR2D0 U74 ( .A1(n22), .A2(n21), .ZN(n118) );
  CKND2D0 U75 ( .A1(n22), .A2(n21), .ZN(n119) );
  OAI21D0 U76 ( .A1(n118), .A2(zm0_s3[0]), .B(n119), .ZN(n124) );
  CKND2D0 U77 ( .A1(n24), .A2(n23), .ZN(n127) );
  CKND2D0 U78 ( .A1(n26), .A2(n25), .ZN(n131) );
  OAI21D0 U79 ( .A1(n130), .A2(n127), .B(n131), .ZN(n27) );
  AOI21D0 U80 ( .A1(n28), .A2(n124), .B(n27), .ZN(n136) );
  INVD0 U81 ( .I(zm0_s3[4]), .ZN(n30) );
  FA1D0 U82 ( .A(x_s3[2]), .B(x_s3[3]), .CI(n29), .CO(n33), .S(n26) );
  NR2D0 U83 ( .A1(n34), .A2(n33), .ZN(n137) );
  INVD0 U84 ( .I(zm0_s3[5]), .ZN(n31) );
  FA1D0 U85 ( .A(x_s3[3]), .B(x_s3[4]), .CI(n30), .CO(n35), .S(n34) );
  NR2D0 U86 ( .A1(n36), .A2(n35), .ZN(n143) );
  NR2D0 U87 ( .A1(n137), .A2(n143), .ZN(n154) );
  INVD0 U88 ( .I(zm0_s3[6]), .ZN(n32) );
  FA1D0 U89 ( .A(x_s3[4]), .B(x_s3[5]), .CI(n31), .CO(n37), .S(n36) );
  NR2D0 U90 ( .A1(n38), .A2(n37), .ZN(n1880) );
  INVD0 U91 ( .I(zm0_s3[7]), .ZN(n45) );
  FA1D0 U92 ( .A(x_s3[5]), .B(x_s3[6]), .CI(n32), .CO(n39), .S(n38) );
  NR2D0 U93 ( .A1(n40), .A2(n39), .ZN(n1900) );
  NR2D0 U94 ( .A1(n1880), .A2(n1900), .ZN(n42) );
  CKND2D0 U95 ( .A1(n154), .A2(n42), .ZN(n44) );
  CKND2D0 U96 ( .A1(n34), .A2(n33), .ZN(n140) );
  CKND2D0 U97 ( .A1(n36), .A2(n35), .ZN(n144) );
  OAI21D0 U98 ( .A1(n143), .A2(n140), .B(n144), .ZN(n153) );
  CKND2D0 U99 ( .A1(n40), .A2(n39), .ZN(n1910) );
  OAI21D0 U100 ( .A1(n1900), .A2(n1870), .B(n1910), .ZN(n41) );
  AOI21D0 U101 ( .A1(n42), .A2(n153), .B(n41), .ZN(n43) );
  INVD0 U102 ( .I(zm0_s3[8]), .ZN(n46) );
  FA1D0 U103 ( .A(x_s3[6]), .B(x_s3[7]), .CI(n45), .CO(n51), .S(n40) );
  NR2D0 U104 ( .A1(n52), .A2(n51), .ZN(n167) );
  INVD0 U105 ( .I(zm0_s3[9]), .ZN(n47) );
  FA1D0 U106 ( .A(x_s3[7]), .B(x_s3[8]), .CI(n46), .CO(n53), .S(n52) );
  NR2D0 U107 ( .A1(n54), .A2(n53), .ZN(n168) );
  NR2D0 U108 ( .A1(n167), .A2(n168), .ZN(n174) );
  INVD0 U109 ( .I(zm0_s3[10]), .ZN(n48) );
  FA1D0 U110 ( .A(x_s3[8]), .B(x_s3[9]), .CI(n47), .CO(n55), .S(n54) );
  NR2D0 U111 ( .A1(n56), .A2(n55), .ZN(n1780) );
  INVD0 U112 ( .I(zm0_s3[11]), .ZN(n49) );
  FA1D0 U113 ( .A(x_s3[9]), .B(x_s3[10]), .CI(n48), .CO(n57), .S(n56) );
  NR2D0 U114 ( .A1(n58), .A2(n57), .ZN(n206) );
  NR2D0 U115 ( .A1(n1780), .A2(n206), .ZN(n60) );
  CKND2D0 U116 ( .A1(n174), .A2(n60), .ZN(n1820) );
  INVD0 U117 ( .I(zm0_s3[12]), .ZN(n50) );
  FA1D0 U118 ( .A(x_s3[10]), .B(x_s3[11]), .CI(n49), .CO(n61), .S(n58) );
  OR2D0 U119 ( .A1(n62), .A2(n61), .Z(n213) );
  INVD0 U120 ( .I(zm0_s3[13]), .ZN(n70) );
  FA1D0 U121 ( .A(x_s3[11]), .B(x_s3[12]), .CI(n50), .CO(n63), .S(n62) );
  OR2D0 U122 ( .A1(n64), .A2(n63), .Z(n216) );
  CKND2D0 U123 ( .A1(n213), .A2(n216), .ZN(n67) );
  NR2D0 U124 ( .A1(n1820), .A2(n67), .ZN(n69) );
  CKND2D0 U125 ( .A1(n54), .A2(n53), .ZN(n169) );
  OAI21D0 U126 ( .A1(n168), .A2(n166), .B(n169), .ZN(n175) );
  CKND2D0 U127 ( .A1(n58), .A2(n57), .ZN(n207) );
  OAI21D0 U128 ( .A1(n206), .A2(n2020), .B(n207), .ZN(n59) );
  AOI21D0 U129 ( .A1(n60), .A2(n175), .B(n59), .ZN(n1810) );
  CKND2D0 U130 ( .A1(n62), .A2(n61), .ZN(n1840) );
  INVD0 U131 ( .I(n1840), .ZN(n212) );
  CKND2D0 U132 ( .A1(n64), .A2(n63), .ZN(n215) );
  INVD0 U133 ( .I(n215), .ZN(n65) );
  AOI21D0 U134 ( .A1(n216), .A2(n212), .B(n65), .ZN(n66) );
  OAI21D0 U135 ( .A1(n1810), .A2(n67), .B(n66), .ZN(n68) );
  INVD0 U136 ( .I(zm0_s3[14]), .ZN(n73) );
  FA1D0 U137 ( .A(x_s3[12]), .B(x_s3[13]), .CI(n70), .CO(n71), .S(n64) );
  NR2D0 U138 ( .A1(n72), .A2(n71), .ZN(n160) );
  INVD0 U139 ( .I(zm0_s3[15]), .ZN(n77) );
  FA1D0 U140 ( .A(x_s3[13]), .B(x_s3[14]), .CI(n73), .CO(n74), .S(n72) );
  OR2D0 U141 ( .A1(n75), .A2(n74), .Z(n1980) );
  INVD0 U142 ( .I(n1970), .ZN(n76) );
  FA1D0 U143 ( .A(x_s3[14]), .B(x_s3[15]), .CI(n77), .CO(n78), .S(n75) );
  FA1D0 U144 ( .A(x_s3[16]), .B(x_s3[17]), .CI(n80), .CO(n234), .S(n83) );
  FA1D0 U145 ( .A(x_s3[15]), .B(x_s3[16]), .CI(n81), .CO(n82), .S(n79) );
  FA1D0 U146 ( .A(x_s3[19]), .B(x_s3[20]), .CI(n85), .CO(n99), .S(n88) );
  FA1D0 U147 ( .A(x_s3[18]), .B(x_s3[19]), .CI(n86), .CO(n87), .S(n238) );
  MUX2D0 U148 ( .I0(zm0_s3[24]), .I1(n90), .S(divide_s3), .Z(plane0[24]) );
  INVD0 U149 ( .I(n91), .ZN(n93) );
  CKND2D0 U150 ( .A1(n93), .A2(n92), .ZN(n94) );
  XNR2D0 U151 ( .A1(n95), .A2(n94), .ZN(n96) );
  MUX2D0 U152 ( .I0(zm0_s3[20]), .I1(n96), .S(n240), .Z(plane0[20]) );
  FA1D0 U153 ( .A(n99), .B(n98), .CI(n97), .CO(n101), .S(n100) );
  MUX2D0 U154 ( .I0(zm0_s3[21]), .I1(n100), .S(n240), .Z(plane0[21]) );
  FA1D0 U155 ( .A(n103), .B(n102), .CI(n101), .CO(n105), .S(n104) );
  MUX2D0 U156 ( .I0(zm0_s3[22]), .I1(n104), .S(n240), .Z(plane0[22]) );
  FA1D0 U157 ( .A(n107), .B(n106), .CI(n105), .CO(n242), .S(n108) );
  MUX2D0 U158 ( .I0(zm0_s3[23]), .I1(n108), .S(n256), .Z(plane0[23]) );
  MUX2D0 U159 ( .I0(shared_s5[26]), .I1(divided_s5[27]), .S(divide_s5), .Z(
        N204) );
  BUFFD0 U160 ( .I(divide_s5), .Z(n109) );
  MUX2D0 U161 ( .I0(shared_s5[0]), .I1(divided_s5[0]), .S(n109), .Z(N177) );
  MUX2D0 U162 ( .I0(shared_s5[26]), .I1(divided_s5[26]), .S(n116), .Z(N203) );
  MUX2D0 U163 ( .I0(shared_s5[25]), .I1(divided_s5[25]), .S(n116), .Z(N202) );
  MUX2D0 U164 ( .I0(shared_s5[26]), .I1(divided_s5[28]), .S(n116), .Z(N205) );
  BUFFD0 U165 ( .I(divide_s5), .Z(n113) );
  BUFFD0 U166 ( .I(n113), .Z(n112) );
  MUX2D0 U167 ( .I0(shared_s5[9]), .I1(divided_s5[9]), .S(n112), .Z(N186) );
  MUX2D0 U168 ( .I0(shared_s5[10]), .I1(divided_s5[10]), .S(n112), .Z(N187) );
  MUX2D0 U169 ( .I0(shared_s5[11]), .I1(divided_s5[11]), .S(n112), .Z(N188) );
  BUFFD0 U170 ( .I(n109), .Z(n111) );
  MUX2D0 U171 ( .I0(shared_s5[4]), .I1(divided_s5[4]), .S(n111), .Z(N181) );
  MUX2D0 U172 ( .I0(shared_s5[1]), .I1(divided_s5[1]), .S(n111), .Z(N178) );
  BUFFD0 U173 ( .I(n109), .Z(n110) );
  MUX2D0 U174 ( .I0(shared_s5[5]), .I1(divided_s5[5]), .S(n110), .Z(N182) );
  MUX2D0 U175 ( .I0(shared_s5[8]), .I1(divided_s5[8]), .S(n110), .Z(N185) );
  MUX2D0 U176 ( .I0(shared_s5[6]), .I1(divided_s5[6]), .S(n110), .Z(N183) );
  MUX2D0 U177 ( .I0(shared_s5[7]), .I1(divided_s5[7]), .S(n110), .Z(N184) );
  MUX2D0 U178 ( .I0(shared_s5[2]), .I1(divided_s5[2]), .S(n111), .Z(N179) );
  MUX2D0 U179 ( .I0(shared_s5[3]), .I1(divided_s5[3]), .S(n111), .Z(N180) );
  MUX2D0 U180 ( .I0(shared_s5[12]), .I1(divided_s5[12]), .S(n112), .Z(N189) );
  BUFFD0 U181 ( .I(n113), .Z(n115) );
  MUX2D0 U182 ( .I0(shared_s5[19]), .I1(divided_s5[19]), .S(n115), .Z(N196) );
  BUFFD0 U183 ( .I(n113), .Z(n114) );
  MUX2D0 U184 ( .I0(shared_s5[16]), .I1(divided_s5[16]), .S(n114), .Z(N193) );
  MUX2D0 U185 ( .I0(shared_s5[14]), .I1(divided_s5[14]), .S(n114), .Z(N191) );
  MUX2D0 U186 ( .I0(shared_s5[15]), .I1(divided_s5[15]), .S(n114), .Z(N192) );
  MUX2D0 U187 ( .I0(shared_s5[20]), .I1(divided_s5[20]), .S(n115), .Z(N197) );
  MUX2D0 U188 ( .I0(shared_s5[17]), .I1(divided_s5[17]), .S(n115), .Z(N194) );
  MUX2D0 U189 ( .I0(shared_s5[13]), .I1(divided_s5[13]), .S(n114), .Z(N190) );
  MUX2D0 U190 ( .I0(shared_s5[18]), .I1(divided_s5[18]), .S(n115), .Z(N195) );
  BUFFD0 U191 ( .I(n116), .Z(n117) );
  MUX2D0 U192 ( .I0(shared_s5[24]), .I1(divided_s5[24]), .S(n117), .Z(N201) );
  MUX2D0 U193 ( .I0(shared_s5[23]), .I1(divided_s5[23]), .S(n117), .Z(N200) );
  MUX2D0 U194 ( .I0(shared_s5[22]), .I1(divided_s5[22]), .S(n117), .Z(N199) );
  MUX2D0 U195 ( .I0(shared_s5[21]), .I1(divided_s5[21]), .S(n117), .Z(N198) );
  INVD0 U196 ( .I(n118), .ZN(n120) );
  CKND2D0 U197 ( .A1(n120), .A2(n119), .ZN(n121) );
  XOR2D0 U198 ( .A1(n121), .A2(zm0_s3[0]), .Z(n122) );
  MUX2D0 U199 ( .I0(zm0_s3[1]), .I1(n122), .S(n256), .Z(plane0[1]) );
  INVD0 U200 ( .I(n129), .ZN(n123) );
  CKND2D0 U201 ( .A1(n123), .A2(n127), .ZN(n125) );
  INVD0 U202 ( .I(n124), .ZN(n128) );
  XOR2D0 U203 ( .A1(n125), .A2(n128), .Z(n126) );
  MUX2D0 U204 ( .I0(zm0_s3[2]), .I1(n126), .S(n256), .Z(plane0[2]) );
  OAI21D0 U205 ( .A1(n129), .A2(n128), .B(n127), .ZN(n134) );
  INVD0 U206 ( .I(n130), .ZN(n132) );
  CKND2D0 U207 ( .A1(n132), .A2(n131), .ZN(n133) );
  XNR2D0 U208 ( .A1(n134), .A2(n133), .ZN(n135) );
  MUX2D0 U209 ( .I0(zm0_s3[3]), .I1(n135), .S(n158), .Z(plane0[3]) );
  INVD0 U210 ( .I(n136), .ZN(n155) );
  INVD0 U211 ( .I(n137), .ZN(n142) );
  CKND2D0 U212 ( .A1(n142), .A2(n140), .ZN(n138) );
  XNR2D0 U213 ( .A1(n155), .A2(n138), .ZN(n139) );
  MUX2D0 U214 ( .I0(zm0_s3[4]), .I1(n139), .S(n158), .Z(plane0[4]) );
  INVD0 U215 ( .I(n140), .ZN(n141) );
  AOI21D0 U216 ( .A1(n155), .A2(n142), .B(n141), .ZN(n147) );
  INVD0 U217 ( .I(n143), .ZN(n145) );
  CKND2D0 U218 ( .A1(n145), .A2(n144), .ZN(n146) );
  XOR2D0 U219 ( .A1(n147), .A2(n146), .Z(n148) );
  MUX2D0 U220 ( .I0(zm0_s3[5]), .I1(n148), .S(n158), .Z(plane0[5]) );
  INVD0 U221 ( .I(n149), .ZN(n1830) );
  INVD0 U222 ( .I(n167), .ZN(n150) );
  CKND2D0 U223 ( .A1(n150), .A2(n166), .ZN(n151) );
  XOR2D0 U224 ( .A1(n1830), .A2(n151), .Z(n152) );
  MUX2D0 U225 ( .I0(zm0_s3[8]), .I1(n152), .S(n1950), .Z(plane0[8]) );
  AOI21D0 U226 ( .A1(n155), .A2(n154), .B(n153), .ZN(n1890) );
  INVD0 U227 ( .I(n1880), .ZN(n156) );
  CKND2D0 U228 ( .A1(n156), .A2(n1870), .ZN(n157) );
  XOR2D0 U229 ( .A1(n1890), .A2(n157), .Z(n159) );
  MUX2D0 U230 ( .I0(zm0_s3[6]), .I1(n159), .S(n158), .Z(plane0[6]) );
  INVD0 U231 ( .I(n160), .ZN(n162) );
  CKND2D0 U232 ( .A1(n162), .A2(n161), .ZN(n163) );
  XOR2D0 U233 ( .A1(n164), .A2(n163), .Z(n165) );
  MUX2D0 U234 ( .I0(zm0_s3[14]), .I1(n165), .S(n219), .Z(plane0[14]) );
  OAI21D0 U235 ( .A1(n1830), .A2(n167), .B(n166), .ZN(n172) );
  INVD0 U236 ( .I(n168), .ZN(n170) );
  CKND2D0 U237 ( .A1(n170), .A2(n169), .ZN(n171) );
  XNR2D0 U238 ( .A1(n172), .A2(n171), .ZN(n173) );
  MUX2D0 U239 ( .I0(zm0_s3[9]), .I1(n173), .S(n1950), .Z(plane0[9]) );
  INVD0 U240 ( .I(n174), .ZN(n1770) );
  INVD0 U241 ( .I(n175), .ZN(n176) );
  OAI21D0 U242 ( .A1(n1830), .A2(n1770), .B(n176), .ZN(n2050) );
  INVD0 U243 ( .I(n1780), .ZN(n2040) );
  CKND2D0 U244 ( .A1(n2040), .A2(n2020), .ZN(n1790) );
  XNR2D0 U245 ( .A1(n2050), .A2(n1790), .ZN(n1800) );
  MUX2D0 U246 ( .I0(zm0_s3[10]), .I1(n1800), .S(n1950), .Z(plane0[10]) );
  OAI21D0 U247 ( .A1(n1830), .A2(n1820), .B(n1810), .ZN(n214) );
  CKND2D0 U248 ( .A1(n213), .A2(n1840), .ZN(n1850) );
  XNR2D0 U249 ( .A1(n214), .A2(n1850), .ZN(n1860) );
  MUX2D0 U250 ( .I0(zm0_s3[12]), .I1(n1860), .S(n219), .Z(plane0[12]) );
  OAI21D0 U251 ( .A1(n1890), .A2(n1880), .B(n1870), .ZN(n1940) );
  INVD0 U252 ( .I(n1900), .ZN(n1920) );
  CKND2D0 U253 ( .A1(n1920), .A2(n1910), .ZN(n1930) );
  XNR2D0 U254 ( .A1(n1940), .A2(n1930), .ZN(n1960) );
  MUX2D0 U255 ( .I0(zm0_s3[7]), .I1(n1960), .S(n1950), .Z(plane0[7]) );
  CKND2D0 U256 ( .A1(n1980), .A2(n1970), .ZN(n1990) );
  XNR2D0 U257 ( .A1(n2000), .A2(n1990), .ZN(n2010) );
  MUX2D0 U258 ( .I0(zm0_s3[15]), .I1(n2010), .S(n235), .Z(plane0[15]) );
  INVD0 U259 ( .I(n2020), .ZN(n2030) );
  AOI21D0 U260 ( .A1(n2050), .A2(n2040), .B(n2030), .ZN(n210) );
  INVD0 U261 ( .I(n206), .ZN(n208) );
  CKND2D0 U262 ( .A1(n208), .A2(n207), .ZN(n209) );
  XOR2D0 U263 ( .A1(n210), .A2(n209), .Z(n211) );
  MUX2D0 U264 ( .I0(zm0_s3[11]), .I1(n211), .S(n219), .Z(plane0[11]) );
  AOI21D0 U265 ( .A1(n214), .A2(n213), .B(n212), .ZN(n218) );
  CKND2D0 U266 ( .A1(n216), .A2(n215), .ZN(n217) );
  XOR2D0 U267 ( .A1(n218), .A2(n217), .Z(n220) );
  MUX2D0 U268 ( .I0(zm0_s3[13]), .I1(n220), .S(n219), .Z(plane0[13]) );
  INVD0 U269 ( .I(n221), .ZN(n223) );
  CKND2D0 U270 ( .A1(n223), .A2(n222), .ZN(n224) );
  XOR2D0 U271 ( .A1(n225), .A2(n224), .Z(n226) );
  MUX2D0 U272 ( .I0(zm0_s3[16]), .I1(n226), .S(n235), .Z(plane0[16]) );
  CKND2D0 U273 ( .A1(n228), .A2(n227), .ZN(n229) );
  XNR2D0 U274 ( .A1(n230), .A2(n229), .ZN(n231) );
  MUX2D0 U275 ( .I0(zm0_s3[17]), .I1(n231), .S(n235), .Z(plane0[17]) );
  FA1D0 U276 ( .A(n234), .B(n233), .CI(n232), .CO(n237), .S(n236) );
  MUX2D0 U277 ( .I0(zm0_s3[18]), .I1(n236), .S(n235), .Z(plane0[18]) );
  FA1D0 U278 ( .A(n239), .B(n238), .CI(n237), .CO(n95), .S(n241) );
  MUX2D0 U279 ( .I0(zm0_s3[19]), .I1(n241), .S(n240), .Z(plane0[19]) );
  INVD0 U280 ( .I(x_mantissa[22]), .ZN(DP_OP_24J1_122_2196_n30) );
  FA1D0 U281 ( .A(zm0_s3[24]), .B(n243), .CI(n242), .CO(n247), .S(n90) );
  INVD0 U282 ( .I(zm0_s3[24]), .ZN(n246) );
  INVD0 U283 ( .I(x_mantissa[1]), .ZN(n253) );
  INVD0 U284 ( .I(x_mantissa[2]), .ZN(n251) );
  INVD0 U285 ( .I(y_mantissa[2]), .ZN(n252) );
  AOI21D0 U286 ( .A1(n252), .A2(n251), .B(DP_OP_24J1_122_2196_n90), .ZN(
        intadd_0_A_1_) );
  MUX2ND0 U287 ( .I0(n253), .I1(n10), .S(n8), .ZN(intadd_0_CI) );
  FA1D0 U288 ( .A(DP_OP_24J1_122_2196_n81), .B(DP_OP_24J1_122_2196_n83), .CI(
        intadd_0_n21), .CO(intadd_0_n20), .S(zm0_c1[4]) );
  FA1D0 U289 ( .A(DP_OP_24J1_122_2196_n51), .B(DP_OP_24J1_122_2196_n53), .CI(
        intadd_0_n11), .CO(intadd_0_n10), .S(zm0_c1[14]) );
  FA1D0 U290 ( .A(DP_OP_24J1_122_2196_n28), .B(intadd_0_B_22_), .CI(
        intadd_0_n3), .CO(intadd_0_n2), .S(zm0_c1[22]) );
  FA1D0 U291 ( .A(x_mantissa[22]), .B(intadd_0_B_23_), .CI(intadd_0_n2), .CO(
        intadd_0_n1), .S(zm0_c1[23]) );
endmodule


module oadm_dm_eq1011_APPROX_LEVEL0 ( clk, x, y, divide_mode, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  input clk, divide_mode;
  wire   sign_out, invalid_operation, infinity_result, zero_result, sign_s1,
         invalid_s1, infinity_s1, zero_s1, sign_s2, invalid_s2, infinity_s2,
         zero_s2, sign_s3, invalid_s3, infinity_s3, zero_s3, sign_s4,
         invalid_s4, infinity_s4, zero_s4, N62, N63, N64, N65, N66, N67, N68,
         N69, N70, sign_s5, invalid_s6, invalid_s5, infinity_s6, infinity_s5,
         zero_s6, zero_s5, finite_result_31_, N150, N151, N152, N153, N154,
         N155, N156, N157, N158, N159, N160, N161, N162, N163, N164, N165,
         N166, N167, N168, N169, N170, N171, N181, n148, n149, n1500, n1510,
         n1520, n1530, n1540, n1550, n1560, C2_Z_7, C2_Z_6, C2_Z_5, C2_Z_4,
         C2_Z_3, C2_Z_2, C2_Z_1, C2_Z_0, DP_OP_58J1_125_7635_n50,
         DP_OP_58J1_125_7635_n49, DP_OP_58J1_125_7635_n48,
         DP_OP_58J1_125_7635_n47, DP_OP_58J1_125_7635_n46,
         DP_OP_58J1_125_7635_n45, DP_OP_58J1_125_7635_n44,
         DP_OP_58J1_125_7635_n43, DP_OP_58J1_125_7635_n10,
         DP_OP_58J1_125_7635_n9, DP_OP_58J1_125_7635_n8,
         DP_OP_58J1_125_7635_n7, DP_OP_58J1_125_7635_n6,
         DP_OP_58J1_125_7635_n5, DP_OP_58J1_125_7635_n4,
         DP_OP_58J1_125_7635_n3, DP_OP_57J1_124_2635_n8,
         DP_OP_57J1_124_2635_n7, DP_OP_57J1_124_2635_n6,
         DP_OP_57J1_124_2635_n5, DP_OP_57J1_124_2635_n4,
         DP_OP_57J1_124_2635_n3, DP_OP_57J1_124_2635_n2,
         DP_OP_57J1_124_2635_n1, n1, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n620, n630, n640, n650, n660, n670,
         n680, n690, n700, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n1570, n1580, n1590,
         n1600, n1610, n1620, n1630, n1640, n1650, n1660, n1670, n1680, n1690,
         n1700, n1710, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n1810, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235,
         n236, n237, n238, n239, n240, n241, n242, n243, n244, n245, n246,
         n247, n248, n249, n250, n251, n252, n253, n254, n255, n256, n257,
         n258, n259, n260, n261, n262, n263, n264, n265, n266, n267, n268,
         n269, n270, n271, n272, n273, n274, n275, n276, n277, n278, n279,
         n280, n281;
  wire   [28:0] core_value;
  wire   [10:0] exponent_s1;
  wire   [10:0] exponent_s2;
  wire   [10:0] exponent_s3;
  wire   [10:0] exponent_s4;
  wire   [11:0] exponent_s6;
  wire   [10:0] exponent_s5;

  oadm_core_eq1011_APPROX_LEVEL0 mantissa_core ( .clk(clk), .x_mantissa({1'b0, 
        x[22:0]}), .y_mantissa({1'b0, y[22:0]}), .divide_mode(n213), 
        .mantissa_value(core_value) );
  DFQD1 infinity_s1_reg ( .D(infinity_result), .CP(clk), .Q(infinity_s1) );
  DFQD1 invalid_s1_reg ( .D(invalid_operation), .CP(clk), .Q(invalid_s1) );
  DFQD1 zero_s1_reg ( .D(zero_result), .CP(clk), .Q(zero_s1) );
  DFQD1 zero_s2_reg ( .D(zero_s1), .CP(clk), .Q(zero_s2) );
  DFQD1 zero_s3_reg ( .D(zero_s2), .CP(clk), .Q(zero_s3) );
  DFQD1 zero_s4_reg ( .D(zero_s3), .CP(clk), .Q(zero_s4) );
  DFQD1 zero_s5_reg ( .D(zero_s4), .CP(clk), .Q(zero_s5) );
  DFQD1 zero_s6_reg ( .D(zero_s5), .CP(clk), .Q(zero_s6) );
  DFQD1 infinity_s2_reg ( .D(infinity_s1), .CP(clk), .Q(infinity_s2) );
  DFQD1 infinity_s3_reg ( .D(infinity_s2), .CP(clk), .Q(infinity_s3) );
  DFQD1 infinity_s4_reg ( .D(infinity_s3), .CP(clk), .Q(infinity_s4) );
  DFQD1 infinity_s5_reg ( .D(infinity_s4), .CP(clk), .Q(infinity_s5) );
  DFQD1 infinity_s6_reg ( .D(infinity_s5), .CP(clk), .Q(infinity_s6) );
  DFQD1 invalid_s2_reg ( .D(invalid_s1), .CP(clk), .Q(invalid_s2) );
  DFQD1 invalid_s3_reg ( .D(invalid_s2), .CP(clk), .Q(invalid_s3) );
  DFQD1 invalid_s4_reg ( .D(invalid_s3), .CP(clk), .Q(invalid_s4) );
  DFQD1 invalid_s5_reg ( .D(invalid_s4), .CP(clk), .Q(invalid_s5) );
  DFQD1 invalid_s6_reg ( .D(invalid_s5), .CP(clk), .Q(invalid_s6) );
  DFQD1 exponent_s1_reg_10_ ( .D(n273), .CP(clk), .Q(exponent_s1[10]) );
  DFQD1 exponent_s2_reg_10_ ( .D(exponent_s1[10]), .CP(clk), .Q(
        exponent_s2[10]) );
  DFQD1 exponent_s3_reg_10_ ( .D(exponent_s2[10]), .CP(clk), .Q(
        exponent_s3[10]) );
  DFQD1 exponent_s4_reg_10_ ( .D(exponent_s3[10]), .CP(clk), .Q(
        exponent_s4[10]) );
  DFQD1 exponent_s5_reg_10_ ( .D(exponent_s4[10]), .CP(clk), .Q(
        exponent_s5[10]) );
  DFQD1 exponent_s6_reg_10_ ( .D(exponent_s5[10]), .CP(clk), .Q(
        exponent_s6[10]) );
  DFQD1 exponent_s6_reg_11_ ( .D(exponent_s5[10]), .CP(clk), .Q(
        exponent_s6[11]) );
  DFQD1 exponent_s5_reg_9_ ( .D(exponent_s4[10]), .CP(clk), .Q(exponent_s5[9])
         );
  DFQD1 exponent_s6_reg_9_ ( .D(exponent_s5[9]), .CP(clk), .Q(exponent_s6[9])
         );
  DFQD1 exponent_s1_reg_8_ ( .D(N70), .CP(clk), .Q(exponent_s1[8]) );
  DFQD1 exponent_s2_reg_8_ ( .D(exponent_s1[8]), .CP(clk), .Q(exponent_s2[8])
         );
  DFQD1 exponent_s3_reg_8_ ( .D(exponent_s2[8]), .CP(clk), .Q(exponent_s3[8])
         );
  DFQD1 exponent_s4_reg_8_ ( .D(exponent_s3[8]), .CP(clk), .Q(exponent_s4[8])
         );
  DFQD1 exponent_s5_reg_8_ ( .D(exponent_s4[8]), .CP(clk), .Q(exponent_s5[8])
         );
  DFQD1 exponent_s6_reg_8_ ( .D(exponent_s5[8]), .CP(clk), .Q(exponent_s6[8])
         );
  DFQD1 exponent_s1_reg_7_ ( .D(N69), .CP(clk), .Q(exponent_s1[7]) );
  DFQD1 exponent_s2_reg_7_ ( .D(exponent_s1[7]), .CP(clk), .Q(exponent_s2[7])
         );
  DFQD1 exponent_s3_reg_7_ ( .D(exponent_s2[7]), .CP(clk), .Q(exponent_s3[7])
         );
  DFQD1 exponent_s4_reg_7_ ( .D(exponent_s3[7]), .CP(clk), .Q(exponent_s4[7])
         );
  DFQD1 exponent_s5_reg_7_ ( .D(exponent_s4[7]), .CP(clk), .Q(exponent_s5[7])
         );
  DFQD1 exponent_s6_reg_7_ ( .D(exponent_s5[7]), .CP(clk), .Q(exponent_s6[7])
         );
  DFQD1 exponent_s1_reg_6_ ( .D(N68), .CP(clk), .Q(exponent_s1[6]) );
  DFQD1 exponent_s2_reg_6_ ( .D(exponent_s1[6]), .CP(clk), .Q(exponent_s2[6])
         );
  DFQD1 exponent_s3_reg_6_ ( .D(exponent_s2[6]), .CP(clk), .Q(exponent_s3[6])
         );
  DFQD1 exponent_s4_reg_6_ ( .D(exponent_s3[6]), .CP(clk), .Q(exponent_s4[6])
         );
  DFQD1 exponent_s5_reg_6_ ( .D(exponent_s4[6]), .CP(clk), .Q(exponent_s5[6])
         );
  DFQD1 exponent_s6_reg_6_ ( .D(exponent_s5[6]), .CP(clk), .Q(exponent_s6[6])
         );
  DFQD1 exponent_s1_reg_5_ ( .D(N67), .CP(clk), .Q(exponent_s1[5]) );
  DFQD1 exponent_s2_reg_5_ ( .D(exponent_s1[5]), .CP(clk), .Q(exponent_s2[5])
         );
  DFQD1 exponent_s3_reg_5_ ( .D(exponent_s2[5]), .CP(clk), .Q(exponent_s3[5])
         );
  DFQD1 exponent_s4_reg_5_ ( .D(exponent_s3[5]), .CP(clk), .Q(exponent_s4[5])
         );
  DFQD1 exponent_s5_reg_5_ ( .D(exponent_s4[5]), .CP(clk), .Q(exponent_s5[5])
         );
  DFQD1 exponent_s6_reg_5_ ( .D(exponent_s5[5]), .CP(clk), .Q(exponent_s6[5])
         );
  DFQD1 exponent_s1_reg_4_ ( .D(N66), .CP(clk), .Q(exponent_s1[4]) );
  DFQD1 exponent_s2_reg_4_ ( .D(exponent_s1[4]), .CP(clk), .Q(exponent_s2[4])
         );
  DFQD1 exponent_s3_reg_4_ ( .D(exponent_s2[4]), .CP(clk), .Q(exponent_s3[4])
         );
  DFQD1 exponent_s4_reg_4_ ( .D(exponent_s3[4]), .CP(clk), .Q(exponent_s4[4])
         );
  DFQD1 exponent_s5_reg_4_ ( .D(exponent_s4[4]), .CP(clk), .Q(exponent_s5[4])
         );
  DFQD1 exponent_s6_reg_4_ ( .D(exponent_s5[4]), .CP(clk), .Q(exponent_s6[4])
         );
  DFQD1 exponent_s1_reg_3_ ( .D(N65), .CP(clk), .Q(exponent_s1[3]) );
  DFQD1 exponent_s2_reg_3_ ( .D(exponent_s1[3]), .CP(clk), .Q(exponent_s2[3])
         );
  DFQD1 exponent_s3_reg_3_ ( .D(exponent_s2[3]), .CP(clk), .Q(exponent_s3[3])
         );
  DFQD1 exponent_s4_reg_3_ ( .D(exponent_s3[3]), .CP(clk), .Q(exponent_s4[3])
         );
  DFQD1 exponent_s5_reg_3_ ( .D(exponent_s4[3]), .CP(clk), .Q(exponent_s5[3])
         );
  DFQD1 exponent_s6_reg_3_ ( .D(exponent_s5[3]), .CP(clk), .Q(exponent_s6[3])
         );
  DFQD1 exponent_s1_reg_2_ ( .D(N64), .CP(clk), .Q(exponent_s1[2]) );
  DFQD1 exponent_s2_reg_2_ ( .D(exponent_s1[2]), .CP(clk), .Q(exponent_s2[2])
         );
  DFQD1 exponent_s3_reg_2_ ( .D(exponent_s2[2]), .CP(clk), .Q(exponent_s3[2])
         );
  DFQD1 exponent_s4_reg_2_ ( .D(exponent_s3[2]), .CP(clk), .Q(exponent_s4[2])
         );
  DFQD1 exponent_s5_reg_2_ ( .D(exponent_s4[2]), .CP(clk), .Q(exponent_s5[2])
         );
  DFQD1 exponent_s6_reg_2_ ( .D(exponent_s5[2]), .CP(clk), .Q(exponent_s6[2])
         );
  DFQD1 exponent_s1_reg_1_ ( .D(N63), .CP(clk), .Q(exponent_s1[1]) );
  DFQD1 exponent_s2_reg_1_ ( .D(exponent_s1[1]), .CP(clk), .Q(exponent_s2[1])
         );
  DFQD1 exponent_s3_reg_1_ ( .D(exponent_s2[1]), .CP(clk), .Q(exponent_s3[1])
         );
  DFQD1 exponent_s4_reg_1_ ( .D(exponent_s3[1]), .CP(clk), .Q(exponent_s4[1])
         );
  DFQD1 exponent_s5_reg_1_ ( .D(exponent_s4[1]), .CP(clk), .Q(exponent_s5[1])
         );
  DFQD1 exponent_s6_reg_1_ ( .D(exponent_s5[1]), .CP(clk), .Q(exponent_s6[1])
         );
  DFQD1 exponent_s1_reg_0_ ( .D(N62), .CP(clk), .Q(exponent_s1[0]) );
  DFQD1 exponent_s2_reg_0_ ( .D(exponent_s1[0]), .CP(clk), .Q(exponent_s2[0])
         );
  DFQD1 exponent_s3_reg_0_ ( .D(exponent_s2[0]), .CP(clk), .Q(exponent_s3[0])
         );
  DFQD1 exponent_s4_reg_0_ ( .D(exponent_s3[0]), .CP(clk), .Q(exponent_s4[0])
         );
  DFQD1 exponent_s5_reg_0_ ( .D(exponent_s4[0]), .CP(clk), .Q(exponent_s5[0])
         );
  DFQD1 exponent_s6_reg_0_ ( .D(exponent_s5[0]), .CP(clk), .Q(exponent_s6[0])
         );
  DFQD1 sign_s1_reg ( .D(sign_out), .CP(clk), .Q(sign_s1) );
  DFQD1 sign_s2_reg ( .D(sign_s1), .CP(clk), .Q(sign_s2) );
  DFQD1 sign_s3_reg ( .D(sign_s2), .CP(clk), .Q(sign_s3) );
  DFQD1 sign_s4_reg ( .D(sign_s3), .CP(clk), .Q(sign_s4) );
  DFQD1 sign_s5_reg ( .D(sign_s4), .CP(clk), .Q(sign_s5) );
  DFQD1 sign_s6_reg ( .D(sign_s5), .CP(clk), .Q(finite_result_31_) );
  FA1D0 DP_OP_58J1_125_7635_U11 ( .A(n274), .B(DP_OP_58J1_125_7635_n44), .CI(
        DP_OP_58J1_125_7635_n10), .CO(DP_OP_58J1_125_7635_n9), .S(N63) );
  FA1D0 DP_OP_58J1_125_7635_U10 ( .A(n275), .B(DP_OP_58J1_125_7635_n45), .CI(
        DP_OP_58J1_125_7635_n9), .CO(DP_OP_58J1_125_7635_n8), .S(N64) );
  FA1D0 DP_OP_58J1_125_7635_U9 ( .A(n276), .B(DP_OP_58J1_125_7635_n46), .CI(
        DP_OP_58J1_125_7635_n8), .CO(DP_OP_58J1_125_7635_n7), .S(N65) );
  FA1D0 DP_OP_58J1_125_7635_U8 ( .A(n277), .B(DP_OP_58J1_125_7635_n47), .CI(
        DP_OP_58J1_125_7635_n7), .CO(DP_OP_58J1_125_7635_n6), .S(N66) );
  FA1D0 DP_OP_58J1_125_7635_U7 ( .A(n278), .B(DP_OP_58J1_125_7635_n48), .CI(
        DP_OP_58J1_125_7635_n6), .CO(DP_OP_58J1_125_7635_n5), .S(N67) );
  FA1D0 DP_OP_58J1_125_7635_U6 ( .A(n279), .B(DP_OP_58J1_125_7635_n49), .CI(
        DP_OP_58J1_125_7635_n5), .CO(DP_OP_58J1_125_7635_n4), .S(N68) );
  FA1D0 DP_OP_58J1_125_7635_U5 ( .A(n280), .B(DP_OP_58J1_125_7635_n50), .CI(
        DP_OP_58J1_125_7635_n4), .CO(DP_OP_58J1_125_7635_n3), .S(N69) );
  HA1D0 DP_OP_57J1_124_2635_U9 ( .A(x[23]), .B(C2_Z_0), .CO(
        DP_OP_57J1_124_2635_n8), .S(DP_OP_58J1_125_7635_n43) );
  FA1D0 DP_OP_57J1_124_2635_U8 ( .A(x[24]), .B(C2_Z_1), .CI(
        DP_OP_57J1_124_2635_n8), .CO(DP_OP_57J1_124_2635_n7), .S(
        DP_OP_58J1_125_7635_n44) );
  FA1D0 DP_OP_57J1_124_2635_U7 ( .A(x[25]), .B(C2_Z_2), .CI(
        DP_OP_57J1_124_2635_n7), .CO(DP_OP_57J1_124_2635_n6), .S(
        DP_OP_58J1_125_7635_n45) );
  FA1D0 DP_OP_57J1_124_2635_U6 ( .A(x[26]), .B(C2_Z_3), .CI(
        DP_OP_57J1_124_2635_n6), .CO(DP_OP_57J1_124_2635_n5), .S(
        DP_OP_58J1_125_7635_n46) );
  FA1D0 DP_OP_57J1_124_2635_U5 ( .A(x[27]), .B(C2_Z_4), .CI(
        DP_OP_57J1_124_2635_n5), .CO(DP_OP_57J1_124_2635_n4), .S(
        DP_OP_58J1_125_7635_n47) );
  FA1D0 DP_OP_57J1_124_2635_U4 ( .A(x[28]), .B(C2_Z_5), .CI(
        DP_OP_57J1_124_2635_n4), .CO(DP_OP_57J1_124_2635_n3), .S(
        DP_OP_58J1_125_7635_n48) );
  FA1D0 DP_OP_57J1_124_2635_U3 ( .A(x[29]), .B(C2_Z_6), .CI(
        DP_OP_57J1_124_2635_n3), .CO(DP_OP_57J1_124_2635_n2), .S(
        DP_OP_58J1_125_7635_n49) );
  FA1D0 DP_OP_57J1_124_2635_U2 ( .A(x[30]), .B(C2_Z_7), .CI(
        DP_OP_57J1_124_2635_n2), .CO(DP_OP_57J1_124_2635_n1), .S(
        DP_OP_58J1_125_7635_n50) );
  DFQD1 result_reg_31_ ( .D(N181), .CP(clk), .Q(result[31]) );
  DFQD1 result_reg_30_ ( .D(n148), .CP(clk), .Q(result[30]) );
  DFQD1 result_reg_29_ ( .D(n149), .CP(clk), .Q(result[29]) );
  DFQD1 result_reg_28_ ( .D(n1500), .CP(clk), .Q(result[28]) );
  DFQD1 result_reg_27_ ( .D(n1510), .CP(clk), .Q(result[27]) );
  DFQD1 result_reg_26_ ( .D(n1520), .CP(clk), .Q(result[26]) );
  DFQD1 result_reg_25_ ( .D(n1530), .CP(clk), .Q(result[25]) );
  DFQD1 result_reg_24_ ( .D(n1540), .CP(clk), .Q(result[24]) );
  DFQD1 result_reg_23_ ( .D(n1550), .CP(clk), .Q(result[23]) );
  DFQD1 result_reg_22_ ( .D(n1560), .CP(clk), .Q(result[22]) );
  DFQD1 result_reg_21_ ( .D(N171), .CP(clk), .Q(result[21]) );
  DFQD1 result_reg_20_ ( .D(N170), .CP(clk), .Q(result[20]) );
  DFQD1 result_reg_19_ ( .D(N169), .CP(clk), .Q(result[19]) );
  DFQD1 result_reg_18_ ( .D(N168), .CP(clk), .Q(result[18]) );
  DFQD1 result_reg_17_ ( .D(N167), .CP(clk), .Q(result[17]) );
  DFQD1 result_reg_16_ ( .D(N166), .CP(clk), .Q(result[16]) );
  DFQD1 result_reg_15_ ( .D(N165), .CP(clk), .Q(result[15]) );
  DFQD1 result_reg_14_ ( .D(N164), .CP(clk), .Q(result[14]) );
  DFQD1 result_reg_13_ ( .D(N163), .CP(clk), .Q(result[13]) );
  DFQD1 result_reg_12_ ( .D(N162), .CP(clk), .Q(result[12]) );
  DFQD1 result_reg_11_ ( .D(N161), .CP(clk), .Q(result[11]) );
  DFQD1 result_reg_10_ ( .D(N160), .CP(clk), .Q(result[10]) );
  DFQD1 result_reg_9_ ( .D(N159), .CP(clk), .Q(result[9]) );
  DFQD1 result_reg_8_ ( .D(N158), .CP(clk), .Q(result[8]) );
  DFQD1 result_reg_7_ ( .D(N157), .CP(clk), .Q(result[7]) );
  DFQD1 result_reg_6_ ( .D(N156), .CP(clk), .Q(result[6]) );
  DFQD1 result_reg_5_ ( .D(N155), .CP(clk), .Q(result[5]) );
  DFQD1 result_reg_4_ ( .D(N154), .CP(clk), .Q(result[4]) );
  DFQD1 result_reg_3_ ( .D(N153), .CP(clk), .Q(result[3]) );
  DFQD1 result_reg_2_ ( .D(N152), .CP(clk), .Q(result[2]) );
  DFQD1 result_reg_1_ ( .D(N151), .CP(clk), .Q(result[1]) );
  DFQD1 result_reg_0_ ( .D(N150), .CP(clk), .Q(result[0]) );
  INVD0 U3 ( .I(n227), .ZN(n83) );
  INVD0 U4 ( .I(n133), .ZN(n131) );
  INVD0 U5 ( .I(n113), .ZN(n58) );
  INVD0 U6 ( .I(n256), .ZN(n46) );
  INVD0 U7 ( .I(n262), .ZN(n670) );
  INVD0 U8 ( .I(n262), .ZN(n660) );
  OR2D0 U9 ( .A1(infinity_s6), .A2(n222), .Z(n232) );
  INVD0 U10 ( .I(n265), .ZN(n256) );
  INVD0 U11 ( .I(n46), .ZN(n50) );
  CKND2D0 U12 ( .A1(n133), .A2(n224), .ZN(n265) );
  INVD0 U13 ( .I(n262), .ZN(n680) );
  CKND2D0 U14 ( .A1(n133), .A2(n25), .ZN(n259) );
  CKAN2D0 U15 ( .A1(n227), .A2(n133), .Z(n254) );
  OR2D0 U16 ( .A1(n230), .A2(n131), .Z(n1) );
  CKAN2D0 U17 ( .A1(n700), .A2(n690), .Z(n225) );
  INVD1 U18 ( .I(n45), .ZN(n32) );
  INVD1 U19 ( .I(n1), .ZN(n45) );
  BUFFD0 U20 ( .I(n260), .Z(n630) );
  CKBD1 U21 ( .I(n259), .Z(n262) );
  INVD1 U22 ( .I(n221), .ZN(n39) );
  INVD1 U23 ( .I(n221), .ZN(n38) );
  AO211D0 U24 ( .A1(n217), .A2(n216), .B(infinity_s6), .C(invalid_s6), .Z(n221) );
  ND2D1 U25 ( .A1(n217), .A2(n130), .ZN(n222) );
  OR2XD1 U26 ( .A1(n98), .A2(n97), .Z(n127) );
  AN2D0 U27 ( .A1(n101), .A2(n125), .Z(n129) );
  NR2D0 U28 ( .A1(DP_OP_58J1_125_7635_n3), .A2(DP_OP_57J1_124_2635_n1), .ZN(
        n273) );
  ND2D1 U29 ( .A1(n87), .A2(n83), .ZN(n86) );
  INVD1 U30 ( .I(n80), .ZN(n82) );
  CKND2D1 U31 ( .A1(n132), .A2(n84), .ZN(n230) );
  NR2XD0 U32 ( .A1(n24), .A2(core_value[23]), .ZN(n132) );
  INVD1 U33 ( .I(core_value[28]), .ZN(n81) );
  INVD1 U34 ( .I(core_value[22]), .ZN(n71) );
  BUFFD0 U35 ( .I(n281), .Z(n213) );
  OAI211D0 U36 ( .A1(n175), .A2(n27), .B(n174), .C(n173), .ZN(N169) );
  OAI211D0 U37 ( .A1(n139), .A2(n28), .B(n138), .C(n137), .ZN(N155) );
  OAI211D0 U38 ( .A1(n1690), .A2(n59), .B(n1680), .C(n1670), .ZN(N166) );
  OAI211D0 U39 ( .A1(n1630), .A2(n28), .B(n1620), .C(n1610), .ZN(N161) );
  OAI211D0 U40 ( .A1(n1570), .A2(n61), .B(n147), .C(n146), .ZN(N159) );
  OAI211D0 U41 ( .A1(n136), .A2(n60), .B(n135), .C(n134), .ZN(N153) );
  OAI211D0 U42 ( .A1(n1600), .A2(n60), .B(n1590), .C(n1580), .ZN(N160) );
  OAI211D0 U43 ( .A1(n145), .A2(n59), .B(n144), .C(n143), .ZN(N157) );
  OAI211D0 U44 ( .A1(n1660), .A2(n60), .B(n1650), .C(n1640), .ZN(N164) );
  OAI211D0 U45 ( .A1(n172), .A2(n61), .B(n1710), .C(n1700), .ZN(N167) );
  OAI211D0 U46 ( .A1(n142), .A2(n27), .B(n141), .C(n140), .ZN(N156) );
  BUFFD1 U47 ( .I(n260), .Z(n640) );
  BUFFD1 U48 ( .I(n260), .Z(n620) );
  INVD0 U49 ( .I(n254), .ZN(n61) );
  INVD0 U50 ( .I(n254), .ZN(n59) );
  INVD0 U51 ( .I(n254), .ZN(n60) );
  OAI21D0 U52 ( .A1(n108), .A2(n222), .B(n39), .ZN(n1520) );
  OAI21D0 U53 ( .A1(n219), .A2(n53), .B(n38), .ZN(n1510) );
  OAI21D0 U54 ( .A1(n119), .A2(n222), .B(n38), .ZN(n1540) );
  OAI21D0 U55 ( .A1(n218), .A2(n53), .B(n39), .ZN(n1500) );
  OAI21D0 U56 ( .A1(n111), .A2(n52), .B(n39), .ZN(n1530) );
  OAI21D0 U57 ( .A1(n115), .A2(n52), .B(n38), .ZN(n1550) );
  OAI21D0 U58 ( .A1(n220), .A2(n52), .B(n38), .ZN(n149) );
  OAI21D0 U59 ( .A1(n223), .A2(n53), .B(n39), .ZN(n148) );
  OAI21D0 U60 ( .A1(n233), .A2(n232), .B(n231), .ZN(n1560) );
  NR2D1 U61 ( .A1(n232), .A2(invalid_s6), .ZN(n133) );
  CKND2D0 U62 ( .A1(n217), .A2(n130), .ZN(n53) );
  CKND2D0 U63 ( .A1(n217), .A2(n130), .ZN(n52) );
  AO21D1 U64 ( .A1(n129), .A2(n128), .B(n127), .Z(n216) );
  XOR2D0 U65 ( .A1(n90), .A2(n89), .Z(n123) );
  IND2D1 U66 ( .A1(n95), .B1(n94), .ZN(n98) );
  INVD0 U67 ( .I(n126), .ZN(n223) );
  ND3D0 U68 ( .A1(n218), .A2(n219), .A3(n120), .ZN(n121) );
  FA1D1 U69 ( .A(n58), .B(exponent_s6[4]), .CI(n104), .CO(n102), .S(n105) );
  FA1D1 U70 ( .A(n56), .B(exponent_s6[3]), .CI(n106), .CO(n104), .S(n107) );
  FA1D1 U71 ( .A(n57), .B(exponent_s6[2]), .CI(n109), .CO(n106), .S(n110) );
  FA1D1 U72 ( .A(n117), .B(exponent_s6[1]), .CI(n116), .CO(n109), .S(n118) );
  XOR2D0 U73 ( .A1(n55), .A2(n86), .Z(n117) );
  XOR2D0 U74 ( .A1(n55), .A2(n88), .Z(n112) );
  XOR2D0 U75 ( .A1(n56), .A2(exponent_s6[11]), .Z(n89) );
  ND3D0 U76 ( .A1(n87), .A2(n225), .A3(n230), .ZN(n88) );
  OAI31D0 U77 ( .A1(n79), .A2(n78), .A3(n77), .B(n76), .ZN(n124) );
  CKND2D0 U78 ( .A1(n80), .A2(n136), .ZN(n78) );
  AOI21D0 U79 ( .A1(n201), .A2(n206), .B(n200), .ZN(n202) );
  NR2D0 U80 ( .A1(n132), .A2(n25), .ZN(n224) );
  CKND2D0 U81 ( .A1(n214), .A2(n40), .ZN(C2_Z_6) );
  CKND2D0 U82 ( .A1(n210), .A2(n41), .ZN(C2_Z_3) );
  CKND2D0 U83 ( .A1(n209), .A2(n40), .ZN(C2_Z_2) );
  CKND2D0 U84 ( .A1(n211), .A2(n40), .ZN(C2_Z_4) );
  CKND2D0 U85 ( .A1(n212), .A2(n41), .ZN(C2_Z_5) );
  CKND2D0 U86 ( .A1(n208), .A2(n41), .ZN(C2_Z_1) );
  CKND2D0 U87 ( .A1(n207), .A2(n40), .ZN(C2_Z_0) );
  ND4D0 U88 ( .A1(n75), .A2(n74), .A3(n73), .A4(n72), .ZN(n79) );
  BUFFD0 U89 ( .I(core_value[19]), .Z(n23) );
  BUFFD0 U90 ( .I(core_value[20]), .Z(n5) );
  BUFFD0 U91 ( .I(core_value[18]), .Z(n22) );
  INVD0 U92 ( .I(core_value[1]), .ZN(n136) );
  BUFFD0 U93 ( .I(core_value[0]), .Z(n3) );
  OR4D0 U94 ( .A1(core_value[2]), .A2(core_value[0]), .A3(core_value[18]), 
        .A4(core_value[20]), .Z(n77) );
  CKND2D0 U95 ( .A1(n177), .A2(n176), .ZN(n268) );
  BUFFD0 U96 ( .I(divide_mode), .Z(n281) );
  INVD0 U98 ( .I(n136), .ZN(n4) );
  INVD0 U99 ( .I(n239), .ZN(n6) );
  INVD0 U100 ( .I(n139), .ZN(n7) );
  INVD0 U101 ( .I(n142), .ZN(n8) );
  INVD0 U102 ( .I(n145), .ZN(n9) );
  INVD0 U103 ( .I(n242), .ZN(n10) );
  INVD0 U104 ( .I(n1570), .ZN(n11) );
  INVD0 U105 ( .I(n1600), .ZN(n12) );
  INVD0 U106 ( .I(n1630), .ZN(n13) );
  INVD0 U107 ( .I(n245), .ZN(n14) );
  INVD0 U108 ( .I(n248), .ZN(n15) );
  INVD0 U109 ( .I(n1660), .ZN(n16) );
  INVD0 U110 ( .I(n251), .ZN(n17) );
  INVD0 U111 ( .I(n1690), .ZN(n18) );
  INVD0 U112 ( .I(n172), .ZN(n19) );
  INVD0 U113 ( .I(n255), .ZN(n20) );
  INVD0 U114 ( .I(n175), .ZN(n21) );
  INVD1 U115 ( .I(n225), .ZN(n24) );
  INVD0 U116 ( .I(n225), .ZN(n25) );
  INVD0 U117 ( .I(n59), .ZN(n26) );
  INVD0 U118 ( .I(n26), .ZN(n27) );
  INVD0 U119 ( .I(n26), .ZN(n28) );
  INVD0 U120 ( .I(n640), .ZN(n29) );
  INVD0 U121 ( .I(n29), .ZN(n30) );
  INVD0 U122 ( .I(n29), .ZN(n31) );
  INVD0 U123 ( .I(n32), .ZN(n33) );
  INVD0 U124 ( .I(n32), .ZN(n34) );
  INVD0 U125 ( .I(n265), .ZN(n35) );
  INVD0 U126 ( .I(n259), .ZN(n36) );
  INVD0 U127 ( .I(n259), .ZN(n37) );
  INVD0 U128 ( .I(n213), .ZN(n40) );
  INVD0 U129 ( .I(n213), .ZN(n41) );
  INVD0 U130 ( .I(n1), .ZN(n42) );
  INVD0 U131 ( .I(n1), .ZN(n43) );
  INVD0 U132 ( .I(n1), .ZN(n44) );
  INVD0 U133 ( .I(n46), .ZN(n47) );
  INVD0 U134 ( .I(n46), .ZN(n48) );
  INVD0 U135 ( .I(n46), .ZN(n49) );
  INVD0 U136 ( .I(n206), .ZN(n51) );
  BUFFD0 U137 ( .I(divide_mode), .Z(n54) );
  AN2XD1 U138 ( .A1(n85), .A2(n230), .Z(n113) );
  INVD1 U139 ( .I(n113), .ZN(n55) );
  INVD1 U140 ( .I(n113), .ZN(n56) );
  INVD1 U141 ( .I(n113), .ZN(n57) );
  INR2D1 U142 ( .A1(n226), .B1(n131), .ZN(n260) );
  INVD1 U143 ( .I(n262), .ZN(n650) );
  FA1D0 U144 ( .A(exponent_s6[0]), .B(n58), .CI(n112), .CO(n116), .S(n114) );
  ND2D1 U145 ( .A1(n82), .A2(n81), .ZN(n226) );
  INVD0 U146 ( .I(core_value[21]), .ZN(n266) );
  NR2XD0 U147 ( .A1(core_value[27]), .A2(core_value[26]), .ZN(n700) );
  NR2XD0 U148 ( .A1(core_value[25]), .A2(core_value[24]), .ZN(n690) );
  CKND2D1 U149 ( .A1(n132), .A2(n71), .ZN(n84) );
  INR2D1 U150 ( .A1(core_value[21]), .B1(n84), .ZN(n227) );
  NR4D0 U151 ( .A1(core_value[12]), .A2(core_value[13]), .A3(core_value[14]), 
        .A4(core_value[11]), .ZN(n75) );
  NR4D0 U152 ( .A1(core_value[19]), .A2(core_value[15]), .A3(core_value[17]), 
        .A4(core_value[16]), .ZN(n74) );
  NR4D0 U153 ( .A1(core_value[4]), .A2(core_value[6]), .A3(core_value[5]), 
        .A4(core_value[3]), .ZN(n73) );
  NR4D0 U154 ( .A1(core_value[10]), .A2(core_value[8]), .A3(core_value[9]), 
        .A4(core_value[7]), .ZN(n72) );
  NR2XD0 U155 ( .A1(n84), .A2(core_value[21]), .ZN(n80) );
  NR2D0 U156 ( .A1(core_value[28]), .A2(zero_s6), .ZN(n76) );
  INVD1 U157 ( .I(n226), .ZN(n87) );
  INVD1 U158 ( .I(n86), .ZN(n85) );
  FA1D0 U159 ( .A(n58), .B(exponent_s6[9]), .CI(n91), .CO(n96), .S(n95) );
  FA1D0 U160 ( .A(n57), .B(exponent_s6[8]), .CI(n92), .CO(n91), .S(n93) );
  INVD0 U161 ( .I(n93), .ZN(n94) );
  FA1D0 U162 ( .A(n57), .B(exponent_s6[10]), .CI(n96), .CO(n90), .S(n97) );
  FA1D0 U163 ( .A(n58), .B(exponent_s6[7]), .CI(n99), .CO(n92), .S(n126) );
  FA1D0 U164 ( .A(n56), .B(exponent_s6[6]), .CI(n100), .CO(n99), .S(n101) );
  FA1D0 U165 ( .A(n57), .B(exponent_s6[5]), .CI(n102), .CO(n100), .S(n103) );
  INVD0 U166 ( .I(n103), .ZN(n218) );
  INVD0 U167 ( .I(n105), .ZN(n219) );
  INVD0 U168 ( .I(n107), .ZN(n108) );
  INVD0 U169 ( .I(n110), .ZN(n111) );
  INVD0 U170 ( .I(n114), .ZN(n115) );
  INVD0 U171 ( .I(n118), .ZN(n119) );
  NR4D0 U172 ( .A1(n107), .A2(n110), .A3(n114), .A4(n118), .ZN(n120) );
  NR4D0 U173 ( .A1(n127), .A2(n126), .A3(n101), .A4(n121), .ZN(n122) );
  NR3D0 U174 ( .A1(n124), .A2(n123), .A3(n122), .ZN(n217) );
  NR3D0 U175 ( .A1(n218), .A2(n108), .A3(n119), .ZN(n125) );
  NR4D0 U176 ( .A1(n223), .A2(n219), .A3(n111), .A4(n115), .ZN(n128) );
  INVD1 U177 ( .I(n216), .ZN(n130) );
  AOI22D0 U178 ( .A1(core_value[2]), .A2(n42), .B1(core_value[0]), .B2(n31), 
        .ZN(n135) );
  AOI22D0 U179 ( .A1(n8), .A2(n36), .B1(n7), .B2(n35), .ZN(n134) );
  INVD0 U180 ( .I(core_value[3]), .ZN(n139) );
  AOI22D0 U181 ( .A1(n6), .A2(n30), .B1(core_value[4]), .B2(n34), .ZN(n138) );
  AOI22D0 U182 ( .A1(n10), .A2(n680), .B1(n9), .B2(n49), .ZN(n137) );
  INVD0 U183 ( .I(core_value[4]), .ZN(n142) );
  AOI22D0 U184 ( .A1(n9), .A2(n42), .B1(core_value[3]), .B2(n630), .ZN(n141)
         );
  AOI22D0 U185 ( .A1(n11), .A2(n670), .B1(n10), .B2(n48), .ZN(n140) );
  INVD0 U186 ( .I(core_value[5]), .ZN(n145) );
  AOI22D0 U187 ( .A1(n8), .A2(n620), .B1(core_value[6]), .B2(n45), .ZN(n144)
         );
  AOI22D0 U188 ( .A1(n12), .A2(n660), .B1(core_value[7]), .B2(n50), .ZN(n143)
         );
  INVD0 U189 ( .I(core_value[7]), .ZN(n1570) );
  AOI22D0 U190 ( .A1(n12), .A2(n33), .B1(core_value[6]), .B2(n620), .ZN(n147)
         );
  AOI22D0 U191 ( .A1(n14), .A2(n36), .B1(n13), .B2(n47), .ZN(n146) );
  INVD0 U192 ( .I(core_value[8]), .ZN(n1600) );
  AOI22D0 U193 ( .A1(n13), .A2(n43), .B1(core_value[7]), .B2(n30), .ZN(n1590)
         );
  AOI22D0 U194 ( .A1(n15), .A2(n650), .B1(core_value[10]), .B2(n50), .ZN(n1580) );
  INVD0 U195 ( .I(core_value[9]), .ZN(n1630) );
  AOI22D0 U196 ( .A1(n14), .A2(n45), .B1(core_value[8]), .B2(n620), .ZN(n1620)
         );
  AOI22D0 U197 ( .A1(n16), .A2(n670), .B1(core_value[11]), .B2(n256), .ZN(
        n1610) );
  INVD0 U198 ( .I(core_value[12]), .ZN(n1660) );
  AOI22D0 U199 ( .A1(n17), .A2(n45), .B1(core_value[11]), .B2(n31), .ZN(n1650)
         );
  AOI22D0 U200 ( .A1(n19), .A2(n650), .B1(n18), .B2(n49), .ZN(n1640) );
  INVD0 U201 ( .I(core_value[14]), .ZN(n1690) );
  AOI22D0 U202 ( .A1(n19), .A2(n34), .B1(core_value[13]), .B2(n30), .ZN(n1680)
         );
  AOI22D0 U203 ( .A1(n21), .A2(n37), .B1(n20), .B2(n48), .ZN(n1670) );
  INVD0 U204 ( .I(core_value[15]), .ZN(n172) );
  AOI22D0 U205 ( .A1(n20), .A2(n44), .B1(n18), .B2(n630), .ZN(n1710) );
  AOI22D0 U206 ( .A1(n22), .A2(n680), .B1(n21), .B2(n47), .ZN(n1700) );
  INVD0 U207 ( .I(core_value[17]), .ZN(n175) );
  AOI22D0 U208 ( .A1(n22), .A2(n44), .B1(core_value[16]), .B2(n640), .ZN(n174)
         );
  AOI22D0 U209 ( .A1(n5), .A2(n660), .B1(n23), .B2(n35), .ZN(n173) );
  AN4D0 U210 ( .A1(y[30]), .A2(y[29]), .A3(y[28]), .A4(y[27]), .Z(n177) );
  AN4D0 U211 ( .A1(y[26]), .A2(y[25]), .A3(y[24]), .A4(y[23]), .Z(n176) );
  AN4D0 U212 ( .A1(x[30]), .A2(x[29]), .A3(x[28]), .A4(x[27]), .Z(n179) );
  AN4D0 U213 ( .A1(x[26]), .A2(x[25]), .A3(x[24]), .A4(x[23]), .Z(n178) );
  CKND2D0 U214 ( .A1(n179), .A2(n178), .ZN(n203) );
  NR4D0 U215 ( .A1(y[30]), .A2(y[29]), .A3(y[28]), .A4(y[27]), .ZN(n1810) );
  NR4D0 U216 ( .A1(y[26]), .A2(y[25]), .A3(y[24]), .A4(y[23]), .ZN(n180) );
  CKND2D0 U217 ( .A1(n1810), .A2(n180), .ZN(n271) );
  NR4D0 U218 ( .A1(x[22]), .A2(x[20]), .A3(x[9]), .A4(x[10]), .ZN(n186) );
  OR4D0 U219 ( .A1(x[2]), .A2(x[18]), .A3(x[6]), .A4(x[8]), .Z(n182) );
  NR4D0 U220 ( .A1(x[0]), .A2(x[3]), .A3(x[4]), .A4(n182), .ZN(n185) );
  NR4D0 U221 ( .A1(x[11]), .A2(x[15]), .A3(x[16]), .A4(x[14]), .ZN(n184) );
  NR4D0 U222 ( .A1(x[1]), .A2(x[7]), .A3(x[12]), .A4(x[13]), .ZN(n183) );
  ND4D0 U223 ( .A1(n186), .A2(n185), .A3(n184), .A4(n183), .ZN(n196) );
  INVD0 U224 ( .I(n203), .ZN(n201) );
  OR4D0 U225 ( .A1(x[5]), .A2(x[19]), .A3(x[17]), .A4(x[21]), .Z(n195) );
  NR4D0 U226 ( .A1(y[5]), .A2(y[19]), .A3(y[17]), .A4(y[21]), .ZN(n193) );
  NR4D0 U227 ( .A1(y[22]), .A2(y[20]), .A3(y[9]), .A4(y[10]), .ZN(n192) );
  NR4D0 U228 ( .A1(y[2]), .A2(y[18]), .A3(y[6]), .A4(y[8]), .ZN(n190) );
  NR3D0 U229 ( .A1(y[0]), .A2(y[3]), .A3(y[4]), .ZN(n189) );
  NR4D0 U230 ( .A1(y[11]), .A2(y[15]), .A3(y[16]), .A4(y[14]), .ZN(n188) );
  NR4D0 U231 ( .A1(y[1]), .A2(y[7]), .A3(y[12]), .A4(y[13]), .ZN(n187) );
  AN4D0 U232 ( .A1(n190), .A2(n189), .A3(n188), .A4(n187), .Z(n191) );
  AOI31D0 U233 ( .A1(n193), .A2(n192), .A3(n191), .B(n51), .ZN(n194) );
  AOI221D0 U234 ( .A1(n196), .A2(n201), .B1(n195), .B2(n201), .C(n194), .ZN(
        n199) );
  OAI211D0 U235 ( .A1(n203), .A2(n271), .B(n199), .C(n41), .ZN(n272) );
  INVD0 U236 ( .I(n272), .ZN(n205) );
  NR4D0 U237 ( .A1(x[30]), .A2(x[29]), .A3(x[28]), .A4(x[27]), .ZN(n198) );
  NR4D0 U238 ( .A1(x[26]), .A2(x[25]), .A3(x[24]), .A4(x[23]), .ZN(n197) );
  CKND2D0 U239 ( .A1(n198), .A2(n197), .ZN(n270) );
  INVD0 U240 ( .I(n268), .ZN(n206) );
  OAI211D0 U241 ( .A1(n270), .A2(n271), .B(n281), .C(n199), .ZN(n200) );
  AOI221D0 U242 ( .A1(n268), .A2(n205), .B1(n270), .B2(n205), .C(n202), .ZN(
        invalid_operation) );
  AOI21D0 U243 ( .A1(n205), .A2(n268), .B(n202), .ZN(n269) );
  INVD0 U244 ( .I(n202), .ZN(n267) );
  OAI22D0 U245 ( .A1(n269), .A2(n203), .B1(n271), .B2(n267), .ZN(n204) );
  AO31D0 U246 ( .A1(n206), .A2(n205), .A3(n270), .B(n204), .Z(infinity_result)
         );
  INVD0 U247 ( .I(y[23]), .ZN(n207) );
  CKAN2D0 U248 ( .A1(n207), .A2(divide_mode), .Z(n234) );
  OR2D0 U249 ( .A1(n234), .A2(DP_OP_58J1_125_7635_n43), .Z(
        DP_OP_58J1_125_7635_n10) );
  INVD0 U250 ( .I(y[24]), .ZN(n208) );
  CKAN2D0 U251 ( .A1(n208), .A2(n54), .Z(n274) );
  INVD0 U252 ( .I(y[25]), .ZN(n209) );
  CKAN2D0 U253 ( .A1(n209), .A2(n281), .Z(n275) );
  INVD0 U254 ( .I(y[26]), .ZN(n210) );
  CKAN2D0 U255 ( .A1(n210), .A2(n54), .Z(n276) );
  INVD0 U256 ( .I(y[27]), .ZN(n211) );
  CKAN2D0 U257 ( .A1(n211), .A2(divide_mode), .Z(n277) );
  INVD0 U258 ( .I(y[28]), .ZN(n212) );
  CKAN2D0 U259 ( .A1(n212), .A2(n281), .Z(n278) );
  INVD0 U260 ( .I(y[29]), .ZN(n214) );
  CKAN2D0 U261 ( .A1(n214), .A2(n213), .Z(n279) );
  CKND2D0 U262 ( .A1(y[30]), .A2(n54), .ZN(n280) );
  INVD0 U263 ( .I(y[30]), .ZN(n215) );
  NR2D0 U264 ( .A1(n215), .A2(n54), .ZN(C2_Z_7) );
  INVD0 U265 ( .I(n101), .ZN(n220) );
  AOI22D0 U266 ( .A1(core_value[23]), .A2(n25), .B1(core_value[22]), .B2(n224), 
        .ZN(n229) );
  AOI22D0 U267 ( .A1(core_value[20]), .A2(n227), .B1(core_value[19]), .B2(n226), .ZN(n228) );
  OA211D0 U268 ( .A1(n266), .A2(n230), .B(n229), .C(n228), .Z(n233) );
  INVD0 U269 ( .I(invalid_s6), .ZN(n231) );
  XOR2D0 U270 ( .A1(y[31]), .A2(x[31]), .Z(sign_out) );
  INR2D0 U271 ( .A1(finite_result_31_), .B1(invalid_s6), .ZN(N181) );
  XNR2D0 U272 ( .A1(DP_OP_58J1_125_7635_n43), .A2(n234), .ZN(N62) );
  XNR2D0 U273 ( .A1(DP_OP_57J1_124_2635_n1), .A2(DP_OP_58J1_125_7635_n3), .ZN(
        N70) );
  AO22D0 U274 ( .A1(core_value[1]), .A2(n37), .B1(n3), .B2(n35), .Z(N150) );
  AO222D0 U275 ( .A1(n43), .A2(core_value[0]), .B1(n47), .B2(n4), .C1(n36), 
        .C2(core_value[2]), .Z(N151) );
  AOI22D0 U276 ( .A1(n6), .A2(n49), .B1(n7), .B2(n670), .ZN(n236) );
  INVD0 U277 ( .I(n61), .ZN(n261) );
  AOI22D0 U278 ( .A1(core_value[1]), .A2(n34), .B1(n3), .B2(n261), .ZN(n235)
         );
  CKND2D0 U279 ( .A1(n236), .A2(n235), .ZN(N152) );
  INVD0 U280 ( .I(core_value[2]), .ZN(n239) );
  AOI22D0 U281 ( .A1(core_value[1]), .A2(n31), .B1(core_value[3]), .B2(n44), 
        .ZN(n238) );
  AOI22D0 U282 ( .A1(core_value[4]), .A2(n48), .B1(core_value[5]), .B2(n650), 
        .ZN(n237) );
  OAI211D0 U283 ( .A1(n239), .A2(n28), .B(n238), .C(n237), .ZN(N154) );
  INVD0 U284 ( .I(core_value[6]), .ZN(n242) );
  AOI22D0 U285 ( .A1(n11), .A2(n33), .B1(core_value[5]), .B2(n640), .ZN(n241)
         );
  AOI22D0 U286 ( .A1(core_value[8]), .A2(n50), .B1(core_value[9]), .B2(n680), 
        .ZN(n240) );
  OAI211D0 U287 ( .A1(n242), .A2(n59), .B(n241), .C(n240), .ZN(N158) );
  INVD0 U288 ( .I(core_value[10]), .ZN(n245) );
  AOI22D0 U289 ( .A1(n15), .A2(n44), .B1(core_value[9]), .B2(n31), .ZN(n244)
         );
  AOI22D0 U290 ( .A1(n16), .A2(n47), .B1(core_value[13]), .B2(n650), .ZN(n243)
         );
  OAI211D0 U291 ( .A1(n245), .A2(n61), .B(n244), .C(n243), .ZN(N162) );
  INVD0 U292 ( .I(core_value[11]), .ZN(n248) );
  AOI22D0 U293 ( .A1(core_value[12]), .A2(n43), .B1(core_value[10]), .B2(n620), 
        .ZN(n247) );
  AOI22D0 U294 ( .A1(n17), .A2(n256), .B1(core_value[14]), .B2(n37), .ZN(n246)
         );
  OAI211D0 U295 ( .A1(n248), .A2(n60), .B(n247), .C(n246), .ZN(N163) );
  INVD0 U296 ( .I(core_value[13]), .ZN(n251) );
  AOI22D0 U297 ( .A1(core_value[12]), .A2(n630), .B1(core_value[14]), .B2(n43), 
        .ZN(n250) );
  AOI22D0 U298 ( .A1(core_value[15]), .A2(n49), .B1(core_value[16]), .B2(n660), 
        .ZN(n249) );
  OAI211D0 U299 ( .A1(n251), .A2(n27), .B(n250), .C(n249), .ZN(N165) );
  INVD0 U300 ( .I(core_value[16]), .ZN(n255) );
  AOI22D0 U301 ( .A1(core_value[15]), .A2(n640), .B1(core_value[17]), .B2(n42), 
        .ZN(n253) );
  AOI22D0 U302 ( .A1(core_value[18]), .A2(n48), .B1(core_value[19]), .B2(n670), 
        .ZN(n252) );
  OAI211D0 U303 ( .A1(n255), .A2(n28), .B(n253), .C(n252), .ZN(N168) );
  AOI22D0 U304 ( .A1(n23), .A2(n42), .B1(core_value[17]), .B2(n630), .ZN(n258)
         );
  AOI22D0 U305 ( .A1(n22), .A2(n261), .B1(n5), .B2(n35), .ZN(n257) );
  OAI211D0 U306 ( .A1(n266), .A2(n259), .B(n258), .C(n257), .ZN(N170) );
  AOI22D0 U307 ( .A1(core_value[18]), .A2(n30), .B1(core_value[20]), .B2(n33), 
        .ZN(n264) );
  AOI22D0 U308 ( .A1(core_value[22]), .A2(n660), .B1(n23), .B2(n261), .ZN(n263) );
  OAI211D0 U309 ( .A1(n266), .A2(n265), .B(n264), .C(n263), .ZN(N171) );
  OAI222D0 U310 ( .A1(n272), .A2(n271), .B1(n270), .B2(n269), .C1(n268), .C2(
        n267), .ZN(zero_result) );
endmodule


module oadm_dm_eq_l0 ( clk, x, y, divide_mode, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  input clk, divide_mode;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81;

  oadm_dm_eq1011_APPROX_LEVEL0 impl ( .clk(clk), .x({x[31:22], n32, n10, n40, 
        n38, n36, n18, n8, n26, n24, n16, n20, n22, n14, n30, n6, n34, n42, 
        n12, n4, x[2], n2, x[0]}), .y({y[31:23], n80, n28, n52, n50, n48, n62, 
        n60, n46, n76, n74, n58, n66, n72, n56, n70, n44, n54, n64, n78, n68, 
        y[2], n81, n1}), .divide_mode(divide_mode), .result(result) );
  INVD0 U1 ( .I(x[3]), .ZN(n3) );
  INVD0 U2 ( .I(y[3]), .ZN(n67) );
  BUFFD0 U3 ( .I(y[1]), .Z(n81) );
  BUFFD0 U4 ( .I(y[0]), .Z(n1) );
  BUFFD1 U5 ( .I(x[1]), .Z(n2) );
  INVD1 U6 ( .I(n3), .ZN(n4) );
  INVD0 U7 ( .I(x[7]), .ZN(n5) );
  INVD0 U8 ( .I(n5), .ZN(n6) );
  INVD0 U9 ( .I(x[15]), .ZN(n7) );
  INVD0 U10 ( .I(n7), .ZN(n8) );
  INVD0 U11 ( .I(x[20]), .ZN(n9) );
  INVD0 U12 ( .I(n9), .ZN(n10) );
  INVD0 U13 ( .I(x[4]), .ZN(n11) );
  INVD0 U14 ( .I(n11), .ZN(n12) );
  INVD0 U15 ( .I(x[9]), .ZN(n13) );
  INVD0 U16 ( .I(n13), .ZN(n14) );
  INVD0 U17 ( .I(x[12]), .ZN(n15) );
  INVD0 U18 ( .I(n15), .ZN(n16) );
  INVD0 U19 ( .I(x[16]), .ZN(n17) );
  INVD0 U20 ( .I(n17), .ZN(n18) );
  INVD0 U21 ( .I(x[11]), .ZN(n19) );
  INVD0 U22 ( .I(n19), .ZN(n20) );
  INVD0 U23 ( .I(x[10]), .ZN(n21) );
  INVD0 U24 ( .I(n21), .ZN(n22) );
  INVD0 U25 ( .I(x[13]), .ZN(n23) );
  INVD0 U26 ( .I(n23), .ZN(n24) );
  INVD0 U27 ( .I(x[14]), .ZN(n25) );
  INVD0 U28 ( .I(n25), .ZN(n26) );
  INVD0 U29 ( .I(y[21]), .ZN(n27) );
  INVD0 U30 ( .I(n27), .ZN(n28) );
  INVD0 U31 ( .I(x[8]), .ZN(n29) );
  INVD0 U32 ( .I(n29), .ZN(n30) );
  INVD0 U33 ( .I(x[21]), .ZN(n31) );
  INVD0 U34 ( .I(n31), .ZN(n32) );
  INVD0 U35 ( .I(x[6]), .ZN(n33) );
  INVD0 U36 ( .I(n33), .ZN(n34) );
  INVD0 U37 ( .I(x[17]), .ZN(n35) );
  INVD0 U38 ( .I(n35), .ZN(n36) );
  INVD0 U39 ( .I(x[18]), .ZN(n37) );
  INVD0 U40 ( .I(n37), .ZN(n38) );
  INVD0 U41 ( .I(x[19]), .ZN(n39) );
  INVD0 U42 ( .I(n39), .ZN(n40) );
  INVD0 U43 ( .I(x[5]), .ZN(n41) );
  INVD0 U44 ( .I(n41), .ZN(n42) );
  INVD0 U45 ( .I(y[7]), .ZN(n43) );
  INVD0 U46 ( .I(n43), .ZN(n44) );
  INVD0 U47 ( .I(y[15]), .ZN(n45) );
  INVD0 U48 ( .I(n45), .ZN(n46) );
  INVD0 U49 ( .I(y[18]), .ZN(n47) );
  INVD0 U50 ( .I(n47), .ZN(n48) );
  INVD0 U51 ( .I(y[19]), .ZN(n49) );
  INVD0 U52 ( .I(n49), .ZN(n50) );
  INVD0 U53 ( .I(y[20]), .ZN(n51) );
  INVD0 U54 ( .I(n51), .ZN(n52) );
  INVD0 U55 ( .I(y[6]), .ZN(n53) );
  INVD0 U56 ( .I(n53), .ZN(n54) );
  INVD0 U57 ( .I(y[9]), .ZN(n55) );
  INVD0 U58 ( .I(n55), .ZN(n56) );
  INVD0 U59 ( .I(y[12]), .ZN(n57) );
  INVD0 U60 ( .I(n57), .ZN(n58) );
  INVD0 U61 ( .I(y[16]), .ZN(n59) );
  INVD0 U62 ( .I(n59), .ZN(n60) );
  INVD0 U63 ( .I(y[17]), .ZN(n61) );
  INVD0 U64 ( .I(n61), .ZN(n62) );
  INVD0 U65 ( .I(y[5]), .ZN(n63) );
  INVD0 U66 ( .I(n63), .ZN(n64) );
  INVD0 U67 ( .I(y[11]), .ZN(n65) );
  INVD0 U68 ( .I(n65), .ZN(n66) );
  INVD1 U69 ( .I(n67), .ZN(n68) );
  INVD0 U70 ( .I(y[8]), .ZN(n69) );
  INVD0 U71 ( .I(n69), .ZN(n70) );
  INVD0 U72 ( .I(y[10]), .ZN(n71) );
  INVD0 U73 ( .I(n71), .ZN(n72) );
  INVD0 U74 ( .I(y[13]), .ZN(n73) );
  INVD0 U75 ( .I(n73), .ZN(n74) );
  INVD0 U76 ( .I(y[14]), .ZN(n75) );
  INVD0 U77 ( .I(n75), .ZN(n76) );
  INVD0 U78 ( .I(y[4]), .ZN(n77) );
  INVD0 U79 ( .I(n77), .ZN(n78) );
  INVD0 U80 ( .I(y[22]), .ZN(n79) );
  INVD0 U81 ( .I(n79), .ZN(n80) );
endmodule

