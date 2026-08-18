/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Sun Aug  9 14:36:29 2026
/////////////////////////////////////////////////////////////


module csa3_WIDTH29_2 ( input_a, input_b, input_c, sum, carry );
  input [28:0] input_a;
  input [28:0] input_b;
  input [28:0] input_c;
  output [28:0] sum;
  output [28:0] carry;


  BUFFD0 U2 ( .I(input_a[0]), .Z(sum[0]) );
  BUFFD0 U3 ( .I(input_a[15]), .Z(sum[15]) );
  BUFFD0 U4 ( .I(input_a[24]), .Z(sum[24]) );
  BUFFD0 U5 ( .I(input_a[23]), .Z(sum[23]) );
  BUFFD0 U6 ( .I(input_a[22]), .Z(sum[22]) );
  BUFFD0 U7 ( .I(input_a[21]), .Z(sum[21]) );
  BUFFD0 U8 ( .I(input_a[1]), .Z(sum[1]) );
  BUFFD0 U9 ( .I(input_a[2]), .Z(sum[2]) );
  BUFFD0 U10 ( .I(input_a[3]), .Z(sum[3]) );
  BUFFD0 U11 ( .I(input_a[4]), .Z(sum[4]) );
  BUFFD0 U12 ( .I(input_a[5]), .Z(sum[5]) );
  BUFFD0 U13 ( .I(input_a[6]), .Z(sum[6]) );
  BUFFD0 U14 ( .I(input_a[7]), .Z(sum[7]) );
  BUFFD0 U15 ( .I(input_a[8]), .Z(sum[8]) );
  BUFFD0 U16 ( .I(input_a[9]), .Z(sum[9]) );
  BUFFD0 U17 ( .I(input_a[10]), .Z(sum[10]) );
  BUFFD0 U18 ( .I(input_a[11]), .Z(sum[11]) );
  BUFFD0 U19 ( .I(input_a[12]), .Z(sum[12]) );
  BUFFD0 U20 ( .I(input_a[13]), .Z(sum[13]) );
  BUFFD0 U21 ( .I(input_a[14]), .Z(sum[14]) );
  BUFFD0 U22 ( .I(input_a[16]), .Z(sum[16]) );
  BUFFD0 U23 ( .I(input_a[17]), .Z(sum[17]) );
  BUFFD0 U24 ( .I(input_a[18]), .Z(sum[18]) );
  BUFFD0 U25 ( .I(input_a[19]), .Z(sum[19]) );
  BUFFD0 U26 ( .I(input_a[20]), .Z(sum[20]) );
endmodule


module csa3_WIDTH29_1 ( input_a, input_b, input_c, sum, carry );
  input [28:0] input_a;
  input [28:0] input_b;
  input [28:0] input_c;
  output [28:0] sum;
  output [28:0] carry;


  BUFFD0 U2 ( .I(input_a[2]), .Z(sum[2]) );
  BUFFD0 U3 ( .I(input_a[17]), .Z(sum[17]) );
  BUFFD0 U4 ( .I(input_a[24]), .Z(sum[24]) );
  BUFFD0 U5 ( .I(input_a[23]), .Z(sum[23]) );
  BUFFD0 U6 ( .I(input_a[22]), .Z(sum[22]) );
  BUFFD0 U7 ( .I(input_a[21]), .Z(sum[21]) );
  BUFFD0 U8 ( .I(input_a[0]), .Z(sum[0]) );
  BUFFD0 U9 ( .I(input_a[1]), .Z(sum[1]) );
  BUFFD0 U10 ( .I(input_a[3]), .Z(sum[3]) );
  BUFFD0 U11 ( .I(input_a[4]), .Z(sum[4]) );
  BUFFD0 U12 ( .I(input_a[5]), .Z(sum[5]) );
  BUFFD0 U13 ( .I(input_a[6]), .Z(sum[6]) );
  BUFFD0 U14 ( .I(input_a[7]), .Z(sum[7]) );
  BUFFD0 U15 ( .I(input_a[8]), .Z(sum[8]) );
  BUFFD0 U16 ( .I(input_a[9]), .Z(sum[9]) );
  BUFFD0 U17 ( .I(input_a[10]), .Z(sum[10]) );
  BUFFD0 U18 ( .I(input_a[11]), .Z(sum[11]) );
  BUFFD0 U19 ( .I(input_a[12]), .Z(sum[12]) );
  BUFFD0 U20 ( .I(input_a[13]), .Z(sum[13]) );
  BUFFD0 U21 ( .I(input_a[14]), .Z(sum[14]) );
  BUFFD0 U22 ( .I(input_a[15]), .Z(sum[15]) );
  BUFFD0 U23 ( .I(input_a[16]), .Z(sum[16]) );
  BUFFD0 U24 ( .I(input_a[18]), .Z(sum[18]) );
  BUFFD0 U25 ( .I(input_a[19]), .Z(sum[19]) );
  BUFFD0 U26 ( .I(input_a[20]), .Z(sum[20]) );
endmodule


module csa3_WIDTH29_0 ( input_a, input_b, input_c, sum, carry );
  input [28:0] input_a;
  input [28:0] input_b;
  input [28:0] input_c;
  output [28:0] sum;
  output [28:0] carry;


  BUFFD0 U2 ( .I(input_a[8]), .Z(sum[8]) );
  BUFFD0 U3 ( .I(input_a[24]), .Z(sum[24]) );
  BUFFD0 U4 ( .I(input_a[23]), .Z(sum[23]) );
  BUFFD0 U5 ( .I(input_a[22]), .Z(sum[22]) );
  BUFFD0 U6 ( .I(input_a[0]), .Z(sum[0]) );
  BUFFD0 U7 ( .I(input_a[1]), .Z(sum[1]) );
  BUFFD0 U8 ( .I(input_a[2]), .Z(sum[2]) );
  BUFFD0 U9 ( .I(input_a[3]), .Z(sum[3]) );
  BUFFD0 U10 ( .I(input_a[4]), .Z(sum[4]) );
  BUFFD0 U11 ( .I(input_a[5]), .Z(sum[5]) );
  BUFFD0 U12 ( .I(input_a[6]), .Z(sum[6]) );
  BUFFD0 U13 ( .I(input_a[7]), .Z(sum[7]) );
  BUFFD0 U14 ( .I(input_a[9]), .Z(sum[9]) );
  BUFFD0 U15 ( .I(input_a[10]), .Z(sum[10]) );
  BUFFD0 U16 ( .I(input_a[11]), .Z(sum[11]) );
  BUFFD0 U17 ( .I(input_a[12]), .Z(sum[12]) );
  BUFFD0 U18 ( .I(input_a[13]), .Z(sum[13]) );
  BUFFD0 U19 ( .I(input_a[14]), .Z(sum[14]) );
  BUFFD0 U20 ( .I(input_a[15]), .Z(sum[15]) );
  BUFFD0 U21 ( .I(input_a[16]), .Z(sum[16]) );
  BUFFD0 U22 ( .I(input_a[17]), .Z(sum[17]) );
  BUFFD0 U23 ( .I(input_a[18]), .Z(sum[18]) );
  BUFFD0 U24 ( .I(input_a[19]), .Z(sum[19]) );
  BUFFD0 U25 ( .I(input_a[20]), .Z(sum[20]) );
  BUFFD0 U26 ( .I(input_a[21]), .Z(sum[21]) );
endmodule


module recip_scale_fixed_APPROX_LEVEL0_VALUE_WIDTH29 ( clk, value, 
        y_fraction_msb, scaled_value );
  input [28:0] value;
  input [3:0] y_fraction_msb;
  output [28:0] scaled_value;
  input clk;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171;
  wire   [32:8] product_comb;

  DFQD1 product_stage_reg_33_ ( .D(n1), .CP(clk), .Q(scaled_value[28]) );
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
  OAI21D0 U3 ( .A1(n146), .A2(n142), .B(n143), .ZN(n122) );
  IOA21D1 U4 ( .A1(n130), .A2(n128), .B(n127), .ZN(n82) );
  CKND2D1 U5 ( .A1(n77), .A2(n76), .ZN(n127) );
  CKND2D0 U6 ( .A1(n66), .A2(n65), .ZN(n138) );
  CKND2D0 U7 ( .A1(n69), .A2(n68), .ZN(n123) );
  CKND2D0 U8 ( .A1(n55), .A2(n54), .ZN(n115) );
  CKND2D0 U9 ( .A1(n59), .A2(n58), .ZN(n143) );
  CKND2D0 U10 ( .A1(n52), .A2(n51), .ZN(n148) );
  CKND2D0 U11 ( .A1(n62), .A2(n61), .ZN(n119) );
  CKND2D0 U12 ( .A1(n45), .A2(n44), .ZN(n153) );
  CKND2D0 U13 ( .A1(n48), .A2(n47), .ZN(n111) );
  CKAN2D0 U14 ( .A1(n5), .A2(n96), .Z(n1) );
  INVD0 U15 ( .I(n131), .ZN(n5) );
  FA1D0 U16 ( .A(value[23]), .B(n96), .CI(n95), .CO(n131), .S(product_comb[31]) );
  FA1D0 U17 ( .A(n81), .B(n2), .CI(n80), .CO(n93), .S(product_comb[29]) );
  OR2D0 U18 ( .A1(n77), .A2(n76), .Z(n128) );
  NR2D0 U19 ( .A1(n59), .A2(n58), .ZN(n142) );
  NR2D0 U20 ( .A1(n52), .A2(n51), .ZN(n147) );
  OR2D0 U21 ( .A1(n62), .A2(n61), .Z(n120) );
  NR2D0 U22 ( .A1(n66), .A2(n65), .ZN(n137) );
  OR2D0 U23 ( .A1(n69), .A2(n68), .Z(n124) );
  NR2D0 U24 ( .A1(n73), .A2(n72), .ZN(n132) );
  ND2D0 U25 ( .A1(n73), .A2(n72), .ZN(n133) );
  CKAN2D0 U26 ( .A1(value[21]), .A2(n96), .Z(n2) );
  CKAN2D0 U27 ( .A1(n94), .A2(value[20]), .Z(n3) );
  CKAN2D0 U28 ( .A1(value[19]), .A2(n81), .Z(n4) );
  XNR2D0 U29 ( .A1(n131), .A2(value[24]), .ZN(product_comb[32]) );
  XNR2D0 U30 ( .A1(n130), .A2(n129), .ZN(product_comb[23]) );
  XOR2D0 U31 ( .A1(n136), .A2(n135), .Z(product_comb[22]) );
  AOI21D1 U32 ( .A1(n122), .A2(n120), .B(n63), .ZN(n141) );
  CKND2D0 U33 ( .A1(n34), .A2(n33), .ZN(n103) );
  INVD0 U34 ( .I(n115), .ZN(n56) );
  INVD0 U35 ( .I(n111), .ZN(n49) );
  INVD0 U36 ( .I(n123), .ZN(n70) );
  INVD0 U37 ( .I(n119), .ZN(n63) );
  CKND2D0 U38 ( .A1(n41), .A2(n40), .ZN(n107) );
  NR2D0 U39 ( .A1(n45), .A2(n44), .ZN(n152) );
  OR2D0 U40 ( .A1(n55), .A2(n54), .Z(n116) );
  CKND2D0 U41 ( .A1(n38), .A2(n37), .ZN(n158) );
  INVD0 U42 ( .I(value[19]), .ZN(n74) );
  INVD0 U43 ( .I(value[20]), .ZN(n7) );
  INVD0 U44 ( .I(value[21]), .ZN(n6) );
  XOR2D0 U45 ( .A1(value[19]), .A2(n81), .Z(n89) );
  XOR2D0 U46 ( .A1(value[20]), .A2(n94), .Z(n79) );
  XOR2D0 U47 ( .A1(value[21]), .A2(n96), .Z(n92) );
  INVD0 U48 ( .I(value[13]), .ZN(n57) );
  INVD0 U49 ( .I(value[11]), .ZN(n50) );
  INVD0 U50 ( .I(value[12]), .ZN(n53) );
  INVD0 U51 ( .I(value[14]), .ZN(n60) );
  INVD0 U52 ( .I(value[24]), .ZN(n96) );
  INVD0 U53 ( .I(value[18]), .ZN(n75) );
  INVD0 U54 ( .I(value[15]), .ZN(n64) );
  INVD0 U55 ( .I(value[17]), .ZN(n71) );
  INVD0 U56 ( .I(value[16]), .ZN(n67) );
  INVD0 U57 ( .I(value[10]), .ZN(n46) );
  INVD0 U58 ( .I(value[22]), .ZN(n81) );
  INVD0 U59 ( .I(value[23]), .ZN(n94) );
  AOI21D0 U60 ( .A1(n28), .A2(n97), .B(n27), .ZN(n166) );
  AOI21D1 U61 ( .A1(n114), .A2(n112), .B(n49), .ZN(n151) );
  FA1D0 U62 ( .A(n4), .B(n79), .CI(n78), .CO(n91), .S(product_comb[27]) );
  FA1D0 U63 ( .A(n6), .B(value[24]), .CI(value[18]), .CO(n90), .S(n86) );
  FA1D0 U64 ( .A(n7), .B(value[23]), .CI(value[17]), .CO(n87), .S(n83) );
  INVD0 U65 ( .I(value[4]), .ZN(n8) );
  INVD0 U66 ( .I(value[3]), .ZN(n18) );
  NR2D0 U67 ( .A1(n24), .A2(n23), .ZN(n167) );
  INVD0 U68 ( .I(value[5]), .ZN(n29) );
  FA1D0 U69 ( .A(n8), .B(value[1]), .CI(value[7]), .CO(n25), .S(n24) );
  NR2D0 U70 ( .A1(n26), .A2(n25), .ZN(n98) );
  NR2D0 U71 ( .A1(n167), .A2(n98), .ZN(n28) );
  INVD0 U72 ( .I(value[1]), .ZN(n10) );
  NR2D0 U73 ( .A1(value[4]), .A2(n10), .ZN(n13) );
  INVD0 U74 ( .I(value[0]), .ZN(n9) );
  NR2D0 U75 ( .A1(value[3]), .A2(n9), .ZN(n12) );
  CKND2D0 U76 ( .A1(value[4]), .A2(n10), .ZN(n11) );
  OAI21D0 U77 ( .A1(n13), .A2(n12), .B(n11), .ZN(n17) );
  INVD0 U78 ( .I(value[2]), .ZN(n14) );
  OR2D0 U79 ( .A1(value[5]), .A2(n14), .Z(n16) );
  CKAN2D0 U80 ( .A1(value[5]), .A2(n14), .Z(n15) );
  AOI21D0 U81 ( .A1(n17), .A2(n16), .B(n15), .ZN(n22) );
  HA1D0 U82 ( .A(value[0]), .B(n18), .CO(n23), .S(n19) );
  NR2D0 U83 ( .A1(n19), .A2(value[6]), .ZN(n21) );
  CKND2D0 U84 ( .A1(n19), .A2(value[6]), .ZN(n20) );
  OAI21D0 U85 ( .A1(n22), .A2(n21), .B(n20), .ZN(n97) );
  CKND2D0 U86 ( .A1(n24), .A2(n23), .ZN(n168) );
  CKND2D0 U87 ( .A1(n26), .A2(n25), .ZN(n99) );
  OAI21D0 U88 ( .A1(n98), .A2(n168), .B(n99), .ZN(n27) );
  INVD0 U89 ( .I(value[6]), .ZN(n32) );
  FA1D0 U90 ( .A(value[8]), .B(value[2]), .CI(n29), .CO(n30), .S(n26) );
  NR2D0 U91 ( .A1(n31), .A2(n30), .ZN(n162) );
  CKND2D0 U92 ( .A1(n31), .A2(n30), .ZN(n163) );
  OAI21D0 U93 ( .A1(n166), .A2(n162), .B(n163), .ZN(n106) );
  INVD0 U94 ( .I(value[7]), .ZN(n36) );
  FA1D0 U95 ( .A(n32), .B(value[3]), .CI(value[9]), .CO(n33), .S(n31) );
  OR2D0 U96 ( .A1(n34), .A2(n33), .Z(n104) );
  INVD0 U97 ( .I(n103), .ZN(n35) );
  AOI21D1 U98 ( .A1(n106), .A2(n104), .B(n35), .ZN(n161) );
  INVD0 U99 ( .I(value[8]), .ZN(n39) );
  FA1D0 U100 ( .A(n36), .B(value[10]), .CI(value[4]), .CO(n37), .S(n34) );
  NR2D0 U101 ( .A1(n38), .A2(n37), .ZN(n157) );
  OAI21D1 U102 ( .A1(n161), .A2(n157), .B(n158), .ZN(n110) );
  INVD0 U103 ( .I(value[9]), .ZN(n43) );
  FA1D0 U104 ( .A(n39), .B(value[5]), .CI(value[11]), .CO(n40), .S(n38) );
  OR2D0 U105 ( .A1(n41), .A2(n40), .Z(n108) );
  INVD0 U106 ( .I(n107), .ZN(n42) );
  AOI21D1 U107 ( .A1(n110), .A2(n108), .B(n42), .ZN(n156) );
  FA1D0 U108 ( .A(n43), .B(value[12]), .CI(value[6]), .CO(n44), .S(n41) );
  OAI21D1 U109 ( .A1(n156), .A2(n152), .B(n153), .ZN(n114) );
  FA1D0 U110 ( .A(n46), .B(value[13]), .CI(value[7]), .CO(n47), .S(n45) );
  OR2D0 U111 ( .A1(n48), .A2(n47), .Z(n112) );
  FA1D0 U112 ( .A(n50), .B(value[14]), .CI(value[8]), .CO(n51), .S(n48) );
  OAI21D1 U113 ( .A1(n151), .A2(n147), .B(n148), .ZN(n118) );
  FA1D0 U114 ( .A(n53), .B(value[15]), .CI(value[9]), .CO(n54), .S(n52) );
  AOI21D1 U115 ( .A1(n118), .A2(n116), .B(n56), .ZN(n146) );
  FA1D0 U116 ( .A(n57), .B(value[16]), .CI(value[10]), .CO(n58), .S(n55) );
  FA1D0 U117 ( .A(n60), .B(value[17]), .CI(value[11]), .CO(n61), .S(n59) );
  FA1D0 U118 ( .A(n64), .B(value[18]), .CI(value[12]), .CO(n65), .S(n62) );
  OAI21D1 U119 ( .A1(n141), .A2(n137), .B(n138), .ZN(n126) );
  FA1D0 U120 ( .A(n67), .B(value[19]), .CI(value[13]), .CO(n68), .S(n66) );
  AOI21D1 U121 ( .A1(n126), .A2(n124), .B(n70), .ZN(n136) );
  FA1D0 U122 ( .A(n71), .B(value[20]), .CI(value[14]), .CO(n72), .S(n69) );
  OAI21D1 U123 ( .A1(n136), .A2(n132), .B(n133), .ZN(n130) );
  FA1D0 U124 ( .A(n74), .B(value[22]), .CI(value[16]), .CO(n84), .S(n77) );
  FA1D0 U125 ( .A(n75), .B(value[21]), .CI(value[15]), .CO(n76), .S(n73) );
  FA1D0 U126 ( .A(n84), .B(n83), .CI(n82), .CO(n85), .S(product_comb[24]) );
  FA1D0 U127 ( .A(n87), .B(n86), .CI(n85), .CO(n88), .S(product_comb[25]) );
  FA1D0 U128 ( .A(n90), .B(n89), .CI(n88), .CO(n78), .S(product_comb[26]) );
  FA1D0 U129 ( .A(n3), .B(n92), .CI(n91), .CO(n80), .S(product_comb[28]) );
  FA1D0 U130 ( .A(value[22]), .B(n94), .CI(n93), .CO(n95), .S(product_comb[30]) );
  INVD0 U131 ( .I(n97), .ZN(n170) );
  OAI21D0 U132 ( .A1(n170), .A2(n167), .B(n168), .ZN(n102) );
  INVD0 U133 ( .I(n98), .ZN(n100) );
  CKND2D0 U134 ( .A1(n100), .A2(n99), .ZN(n101) );
  XNR2D0 U135 ( .A1(n102), .A2(n101), .ZN(product_comb[9]) );
  CKND2D0 U136 ( .A1(n104), .A2(n103), .ZN(n105) );
  XNR2D0 U137 ( .A1(n106), .A2(n105), .ZN(product_comb[11]) );
  CKND2D0 U138 ( .A1(n108), .A2(n107), .ZN(n109) );
  XNR2D0 U139 ( .A1(n110), .A2(n109), .ZN(product_comb[13]) );
  CKND2D0 U140 ( .A1(n112), .A2(n111), .ZN(n113) );
  XNR2D0 U141 ( .A1(n114), .A2(n113), .ZN(product_comb[15]) );
  CKND2D0 U142 ( .A1(n116), .A2(n115), .ZN(n117) );
  XNR2D0 U143 ( .A1(n118), .A2(n117), .ZN(product_comb[17]) );
  CKND2D0 U144 ( .A1(n120), .A2(n119), .ZN(n121) );
  XNR2D0 U145 ( .A1(n122), .A2(n121), .ZN(product_comb[19]) );
  CKND2D0 U146 ( .A1(n124), .A2(n123), .ZN(n125) );
  XNR2D0 U147 ( .A1(n126), .A2(n125), .ZN(product_comb[21]) );
  CKND2D0 U148 ( .A1(n128), .A2(n127), .ZN(n129) );
  INVD0 U149 ( .I(n132), .ZN(n134) );
  CKND2D0 U150 ( .A1(n134), .A2(n133), .ZN(n135) );
  INVD0 U151 ( .I(n137), .ZN(n139) );
  CKND2D0 U152 ( .A1(n139), .A2(n138), .ZN(n140) );
  XOR2D0 U153 ( .A1(n141), .A2(n140), .Z(product_comb[20]) );
  INVD0 U154 ( .I(n142), .ZN(n144) );
  CKND2D0 U155 ( .A1(n144), .A2(n143), .ZN(n145) );
  XOR2D0 U156 ( .A1(n146), .A2(n145), .Z(product_comb[18]) );
  INVD0 U157 ( .I(n147), .ZN(n149) );
  CKND2D0 U158 ( .A1(n149), .A2(n148), .ZN(n150) );
  XOR2D0 U159 ( .A1(n151), .A2(n150), .Z(product_comb[16]) );
  INVD0 U160 ( .I(n152), .ZN(n154) );
  CKND2D0 U161 ( .A1(n154), .A2(n153), .ZN(n155) );
  XOR2D0 U162 ( .A1(n156), .A2(n155), .Z(product_comb[14]) );
  INVD0 U163 ( .I(n157), .ZN(n159) );
  CKND2D0 U164 ( .A1(n159), .A2(n158), .ZN(n160) );
  XOR2D0 U165 ( .A1(n161), .A2(n160), .Z(product_comb[12]) );
  INVD0 U166 ( .I(n162), .ZN(n164) );
  CKND2D0 U167 ( .A1(n164), .A2(n163), .ZN(n165) );
  XOR2D0 U168 ( .A1(n166), .A2(n165), .Z(product_comb[10]) );
  INVD0 U169 ( .I(n167), .ZN(n169) );
  CKND2D0 U170 ( .A1(n169), .A2(n168), .ZN(n171) );
  XOR2D0 U171 ( .A1(n171), .A2(n170), .Z(product_comb[8]) );
endmodule


module oadm_core_fixed_APPROX_LEVEL0 ( clk, x_mantissa, y_mantissa, 
        divide_mode, mantissa_value );
  input [23:0] x_mantissa;
  input [23:0] y_mantissa;
  output [28:0] mantissa_value;
  input clk, divide_mode;
  wire   divide_s1, divide_s2, divide_s3, divide_s4, divide_s5, N232, N233,
         N234, N235, N236, N237, N238, N239, N240, N241, N242, N243, N244,
         N245, N246, N247, N248, N249, N250, N251, N252, N253, N254, N255,
         N256, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227, n228, n229, n230, n231, n2320, n2330, n2340, n2350,
         n2360, n2370, n2380, n2390, n2400, n2410, n2420, n2430, n2440, n2450,
         n2460, n2470, n2480, n2490, n2500, n2510, n2520, n2530, n2540, n2550,
         n2560, n257, n258, n259, n260, n261, n262, n263, n264, n265, n266,
         n267, n268, n269, n270, n271, n272, n273, n274, n275, n276, n277,
         n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, n288,
         n289, n290, n291, n292, n293, n294, n295, n296, n297, n298, n299,
         n300, n301, n302, n303, n304, n305, n306, n307, n308, n309, n310,
         n311, n312, n313, n314, n315, n316, n317, n318, n319, n320, n321,
         n322, n323, n324, n325, n326, n327, n328, n329, n330, n331, n332,
         n333, n334, n335, n336, n337, n338, n339, n340, n341, n342, n343,
         n344, n345, n346, n347, n348, n349, n350, n351, n352, n353, n354,
         n355, n356, n357, n358, n359, n360, n361, n362, n363, n364, n365,
         n366, n367, n368, n369, n370, n371, n372, n373, n374, n375, n376,
         n377, n378, n379, n380, n381, n382, n383, n384, n385, n386, n387,
         n388, n389, n390, n391, n392, n393, n394, n395, n396, n397, n398,
         n399, n400, n401, n402, n403, n404, n405, n406, n407, n408, n409,
         n410, n411, n412, n413, n414, n415, n416, n417, n418, n419, n420,
         n421, n422, n423, n424, n425, n426, n427, n428, n429, n430, n431,
         n432, n433, n434, n435, n436, n437, n438, n439, n440, n441, n442,
         n443, n444, n445, n446, n447, n448, n449, n450, n451, n452, n453,
         n454, n455, n456, n457, n458, n459, n460, n461, n462, n463, n464,
         n465, n466, n467, n468, n469, n470, n471, n472, n473, n474, n475,
         n476, n477, n478, n479, n480, n481, n482, n483, n484, n485, n486,
         n487, n488, n489, n490, n491, n492, n493, n494, n495, n496, n497,
         n498, n499, n500, n501, n502, n503, n504, n505, n506, n507, n508,
         n509, n510, n511, n512, n513, n514, n515, n516, n517, n518, n519,
         n520, n521, n522, n523, n524, n525, n526, n527, n528, n529, n530,
         n531, n532, n533, n534, n535, n536, n537, n538, n539, n540, n541,
         n542, n543, n544, n545, n546, n547, n548, n549, n550, n551, n552,
         n553, n554, n555, n556, n557, n558, n559, n560, n561, n562, n563,
         n564, n565, n566, n567, n568, n569, n570, n571, n572, n573, n574,
         n575, n576, n577, n578, n579, n580, n581, n582, n583, n584, n585,
         n586, n587, n588, n589, n590, n591, n592, n593, n594, n595, n596,
         n597, n598, n599, n600, n601, n602, n603, n604, n605, n606, n607,
         n608, n609, n610, n611, n612, n613, n614, n615, n616, n617, n618,
         n619, n620, n621, n622, n623, n624, n625, n626, n627, n628, n629,
         n630, n631, n632, n633, n634, n635, n636, n637, n638, n639, n640,
         n641, n642, n643, n644, n645, n646, n647, n648, n649, n650, n651,
         n652, n653, n654, n655, n656, n657, n658, n659, n660, n661, n662,
         n663, n664, n665, n666, n667, n668, n669, n670, n671, n672, n673,
         n674, n675, n676, n677, n678, n679, n680, n681, n682, n683, n684,
         n685, n686, n687, n688, n689, n690, n691, n692, n693, n694, n695,
         n696, n697, n698, n699, n700, n701, n702, n703, n704, n705, n706,
         n707, n708, n709, n710, n711, n712, n713, n714, n715, n716, n717,
         n718, n719, n720, n721, n722, n723, n724, n725, n726, n727, n728,
         n729, n730, n731, n732, n733, n734, n735, n736, n737, n738, n739,
         n740, n741, n742, n743, n744, n745, n746, n747, n748, n749, n750,
         n751, n752, n753, n754, n755, n756, n757, n758, n759, n760, n761,
         n762, n763, n764, n765, n766, n767, n768, n769, n770, n771, n772,
         n773, n774, n775, n776, n777, n778, n779, n780, n781, n782, n783,
         n784, n785, n786, n787, n788, n789, n790, n791, n792, n793, n794,
         n795, n796, n797, n798, n799, n800, n801, n802, n803, n804, n805,
         n806, n807, n808, n809, n810, n811, n812, n813, n814, n815, n816,
         n817, n818, n819, n820, n821, n822, n823, n824, n825, n826, n827,
         n828, n829, n830, n831, n832, n833, n834, n835, n836, n837, n838,
         n839, n840, n841, n842, n843, n844, n845, n846, n847, n848, n849,
         n850, n851, n852, n853, n854, n855, n856, n857, n858, n859, n860,
         n861, n862, n863, n864, n865, n866, n867, n868, n869, n870, n871,
         n872, n873, n874, n875, n876, n877, n878, n879, n880;
  wire   [24:0] base_c1;
  wire   [24:0] base_s1;
  wire   [24:0] base_s2;
  wire   [24:0] base_s3;
  wire   [24:0] sum0;
  wire   [24:0] sum1;
  wire   [24:0] sum2;
  wire   [24:0] shared_s4;
  wire   [28:0] divided_s5;
  wire   [24:0] shared_s5;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14;

  csa3_WIDTH29_2 csa0 ( .input_a({1'b0, 1'b0, 1'b0, 1'b0, base_s3}), .input_b(
        {1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .input_c({1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .sum({SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, sum0}) );
  csa3_WIDTH29_1 csa1 ( .input_a({1'b0, 1'b0, 1'b0, 1'b0, sum0}), .input_b({
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .input_c({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .sum({SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, sum1}) );
  csa3_WIDTH29_0 csa2 ( .input_a({1'b0, 1'b0, 1'b0, 1'b0, sum1}), .input_b({
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .input_c({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .sum({SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, sum2}) );
  recip_scale_fixed_APPROX_LEVEL0_VALUE_WIDTH29 division_scale ( .clk(clk), 
        .value({1'b0, 1'b0, 1'b0, 1'b0, shared_s4[24:22], n54, n55, n56, 
        shared_s4[18:7], n57, n58, n59, shared_s4[3:0]}), .y_fraction_msb({
        1'b0, 1'b0, 1'b0, 1'b0}), .scaled_value({divided_s5[28], 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, divided_s5[24:0]}) );
  DFQD1 base_s1_reg_24_ ( .D(base_c1[24]), .CP(clk), .Q(base_s1[24]) );
  DFQD1 base_s1_reg_23_ ( .D(base_c1[23]), .CP(clk), .Q(base_s1[23]) );
  DFQD1 base_s1_reg_22_ ( .D(base_c1[22]), .CP(clk), .Q(base_s1[22]) );
  DFQD1 base_s1_reg_21_ ( .D(base_c1[21]), .CP(clk), .Q(base_s1[21]) );
  DFQD1 base_s1_reg_20_ ( .D(base_c1[20]), .CP(clk), .Q(base_s1[20]) );
  DFQD1 base_s1_reg_19_ ( .D(base_c1[19]), .CP(clk), .Q(base_s1[19]) );
  DFQD1 base_s1_reg_18_ ( .D(base_c1[18]), .CP(clk), .Q(base_s1[18]) );
  DFQD1 base_s1_reg_17_ ( .D(base_c1[17]), .CP(clk), .Q(base_s1[17]) );
  DFQD1 base_s1_reg_16_ ( .D(base_c1[16]), .CP(clk), .Q(base_s1[16]) );
  DFQD1 base_s1_reg_15_ ( .D(base_c1[15]), .CP(clk), .Q(base_s1[15]) );
  DFQD1 base_s1_reg_14_ ( .D(base_c1[14]), .CP(clk), .Q(base_s1[14]) );
  DFQD1 base_s1_reg_13_ ( .D(base_c1[13]), .CP(clk), .Q(base_s1[13]) );
  DFQD1 base_s1_reg_12_ ( .D(base_c1[12]), .CP(clk), .Q(base_s1[12]) );
  DFQD1 base_s1_reg_11_ ( .D(base_c1[11]), .CP(clk), .Q(base_s1[11]) );
  DFQD1 base_s1_reg_10_ ( .D(base_c1[10]), .CP(clk), .Q(base_s1[10]) );
  DFQD1 base_s1_reg_9_ ( .D(base_c1[9]), .CP(clk), .Q(base_s1[9]) );
  DFQD1 base_s1_reg_8_ ( .D(base_c1[8]), .CP(clk), .Q(base_s1[8]) );
  DFQD1 base_s1_reg_7_ ( .D(base_c1[7]), .CP(clk), .Q(base_s1[7]) );
  DFQD1 base_s1_reg_6_ ( .D(base_c1[6]), .CP(clk), .Q(base_s1[6]) );
  DFQD1 base_s1_reg_5_ ( .D(base_c1[5]), .CP(clk), .Q(base_s1[5]) );
  DFQD1 base_s1_reg_4_ ( .D(base_c1[4]), .CP(clk), .Q(base_s1[4]) );
  DFQD1 base_s1_reg_3_ ( .D(base_c1[3]), .CP(clk), .Q(base_s1[3]) );
  DFQD1 base_s1_reg_2_ ( .D(base_c1[2]), .CP(clk), .Q(base_s1[2]) );
  DFQD1 base_s1_reg_1_ ( .D(base_c1[1]), .CP(clk), .Q(base_s1[1]) );
  DFQD1 base_s1_reg_0_ ( .D(base_c1[0]), .CP(clk), .Q(base_s1[0]) );
  DFQD1 divide_s1_reg ( .D(n880), .CP(clk), .Q(divide_s1) );
  DFQD1 base_s2_reg_24_ ( .D(base_s1[24]), .CP(clk), .Q(base_s2[24]) );
  DFQD1 base_s2_reg_23_ ( .D(base_s1[23]), .CP(clk), .Q(base_s2[23]) );
  DFQD1 base_s2_reg_22_ ( .D(base_s1[22]), .CP(clk), .Q(base_s2[22]) );
  DFQD1 base_s2_reg_21_ ( .D(base_s1[21]), .CP(clk), .Q(base_s2[21]) );
  DFQD1 base_s2_reg_20_ ( .D(base_s1[20]), .CP(clk), .Q(base_s2[20]) );
  DFQD1 base_s2_reg_19_ ( .D(base_s1[19]), .CP(clk), .Q(base_s2[19]) );
  DFQD1 base_s2_reg_18_ ( .D(base_s1[18]), .CP(clk), .Q(base_s2[18]) );
  DFQD1 base_s2_reg_17_ ( .D(base_s1[17]), .CP(clk), .Q(base_s2[17]) );
  DFQD1 base_s2_reg_16_ ( .D(base_s1[16]), .CP(clk), .Q(base_s2[16]) );
  DFQD1 base_s2_reg_15_ ( .D(base_s1[15]), .CP(clk), .Q(base_s2[15]) );
  DFQD1 base_s2_reg_14_ ( .D(base_s1[14]), .CP(clk), .Q(base_s2[14]) );
  DFQD1 base_s2_reg_13_ ( .D(base_s1[13]), .CP(clk), .Q(base_s2[13]) );
  DFQD1 base_s2_reg_12_ ( .D(base_s1[12]), .CP(clk), .Q(base_s2[12]) );
  DFQD1 base_s2_reg_11_ ( .D(base_s1[11]), .CP(clk), .Q(base_s2[11]) );
  DFQD1 base_s2_reg_10_ ( .D(base_s1[10]), .CP(clk), .Q(base_s2[10]) );
  DFQD1 base_s2_reg_9_ ( .D(base_s1[9]), .CP(clk), .Q(base_s2[9]) );
  DFQD1 base_s2_reg_8_ ( .D(base_s1[8]), .CP(clk), .Q(base_s2[8]) );
  DFQD1 base_s2_reg_7_ ( .D(base_s1[7]), .CP(clk), .Q(base_s2[7]) );
  DFQD1 base_s2_reg_6_ ( .D(base_s1[6]), .CP(clk), .Q(base_s2[6]) );
  DFQD1 base_s2_reg_5_ ( .D(base_s1[5]), .CP(clk), .Q(base_s2[5]) );
  DFQD1 base_s2_reg_4_ ( .D(base_s1[4]), .CP(clk), .Q(base_s2[4]) );
  DFQD1 base_s2_reg_3_ ( .D(base_s1[3]), .CP(clk), .Q(base_s2[3]) );
  DFQD1 base_s2_reg_2_ ( .D(base_s1[2]), .CP(clk), .Q(base_s2[2]) );
  DFQD1 base_s2_reg_1_ ( .D(base_s1[1]), .CP(clk), .Q(base_s2[1]) );
  DFQD1 base_s2_reg_0_ ( .D(base_s1[0]), .CP(clk), .Q(base_s2[0]) );
  DFQD1 divide_s2_reg ( .D(divide_s1), .CP(clk), .Q(divide_s2) );
  DFQD1 base_s3_reg_24_ ( .D(base_s2[24]), .CP(clk), .Q(base_s3[24]) );
  DFQD1 base_s3_reg_23_ ( .D(base_s2[23]), .CP(clk), .Q(base_s3[23]) );
  DFQD1 base_s3_reg_22_ ( .D(base_s2[22]), .CP(clk), .Q(base_s3[22]) );
  DFQD1 base_s3_reg_21_ ( .D(base_s2[21]), .CP(clk), .Q(base_s3[21]) );
  DFQD1 base_s3_reg_20_ ( .D(base_s2[20]), .CP(clk), .Q(base_s3[20]) );
  DFQD1 base_s3_reg_19_ ( .D(base_s2[19]), .CP(clk), .Q(base_s3[19]) );
  DFQD1 base_s3_reg_18_ ( .D(base_s2[18]), .CP(clk), .Q(base_s3[18]) );
  DFQD1 base_s3_reg_17_ ( .D(base_s2[17]), .CP(clk), .Q(base_s3[17]) );
  DFQD1 base_s3_reg_16_ ( .D(base_s2[16]), .CP(clk), .Q(base_s3[16]) );
  DFQD1 base_s3_reg_15_ ( .D(base_s2[15]), .CP(clk), .Q(base_s3[15]) );
  DFQD1 base_s3_reg_14_ ( .D(base_s2[14]), .CP(clk), .Q(base_s3[14]) );
  DFQD1 base_s3_reg_13_ ( .D(base_s2[13]), .CP(clk), .Q(base_s3[13]) );
  DFQD1 base_s3_reg_12_ ( .D(base_s2[12]), .CP(clk), .Q(base_s3[12]) );
  DFQD1 base_s3_reg_11_ ( .D(base_s2[11]), .CP(clk), .Q(base_s3[11]) );
  DFQD1 base_s3_reg_10_ ( .D(base_s2[10]), .CP(clk), .Q(base_s3[10]) );
  DFQD1 base_s3_reg_9_ ( .D(base_s2[9]), .CP(clk), .Q(base_s3[9]) );
  DFQD1 base_s3_reg_8_ ( .D(base_s2[8]), .CP(clk), .Q(base_s3[8]) );
  DFQD1 base_s3_reg_7_ ( .D(base_s2[7]), .CP(clk), .Q(base_s3[7]) );
  DFQD1 base_s3_reg_6_ ( .D(base_s2[6]), .CP(clk), .Q(base_s3[6]) );
  DFQD1 base_s3_reg_5_ ( .D(base_s2[5]), .CP(clk), .Q(base_s3[5]) );
  DFQD1 base_s3_reg_4_ ( .D(base_s2[4]), .CP(clk), .Q(base_s3[4]) );
  DFQD1 base_s3_reg_3_ ( .D(base_s2[3]), .CP(clk), .Q(base_s3[3]) );
  DFQD1 base_s3_reg_2_ ( .D(base_s2[2]), .CP(clk), .Q(base_s3[2]) );
  DFQD1 base_s3_reg_1_ ( .D(base_s2[1]), .CP(clk), .Q(base_s3[1]) );
  DFQD1 base_s3_reg_0_ ( .D(base_s2[0]), .CP(clk), .Q(base_s3[0]) );
  DFQD1 divide_s3_reg ( .D(divide_s2), .CP(clk), .Q(divide_s3) );
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
  DFQD1 divide_s4_reg ( .D(divide_s3), .CP(clk), .Q(divide_s4) );
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
  DFQD1 mantissa_value_reg_28_ ( .D(n67), .CP(clk), .Q(mantissa_value[28]) );
  DFQD1 mantissa_value_reg_27_ ( .D(n67), .CP(clk), .Q(mantissa_value[27]) );
  DFQD1 mantissa_value_reg_26_ ( .D(n67), .CP(clk), .Q(mantissa_value[26]) );
  DFQD1 mantissa_value_reg_25_ ( .D(n67), .CP(clk), .Q(mantissa_value[25]) );
  DFQD1 mantissa_value_reg_24_ ( .D(N256), .CP(clk), .Q(mantissa_value[24]) );
  DFQD1 mantissa_value_reg_23_ ( .D(N255), .CP(clk), .Q(mantissa_value[23]) );
  DFQD1 mantissa_value_reg_22_ ( .D(N254), .CP(clk), .Q(mantissa_value[22]) );
  DFQD1 mantissa_value_reg_21_ ( .D(N253), .CP(clk), .Q(mantissa_value[21]) );
  DFQD1 mantissa_value_reg_20_ ( .D(N252), .CP(clk), .Q(mantissa_value[20]) );
  DFQD1 mantissa_value_reg_19_ ( .D(N251), .CP(clk), .Q(mantissa_value[19]) );
  DFQD1 mantissa_value_reg_18_ ( .D(N250), .CP(clk), .Q(mantissa_value[18]) );
  DFQD1 mantissa_value_reg_17_ ( .D(N249), .CP(clk), .Q(mantissa_value[17]) );
  DFQD1 mantissa_value_reg_16_ ( .D(N248), .CP(clk), .Q(mantissa_value[16]) );
  DFQD1 mantissa_value_reg_15_ ( .D(N247), .CP(clk), .Q(mantissa_value[15]) );
  DFQD1 mantissa_value_reg_14_ ( .D(N246), .CP(clk), .Q(mantissa_value[14]) );
  DFQD1 mantissa_value_reg_13_ ( .D(N245), .CP(clk), .Q(mantissa_value[13]) );
  DFQD1 mantissa_value_reg_12_ ( .D(N244), .CP(clk), .Q(mantissa_value[12]) );
  DFQD1 mantissa_value_reg_11_ ( .D(N243), .CP(clk), .Q(mantissa_value[11]) );
  DFQD1 mantissa_value_reg_10_ ( .D(N242), .CP(clk), .Q(mantissa_value[10]) );
  DFQD1 mantissa_value_reg_9_ ( .D(N241), .CP(clk), .Q(mantissa_value[9]) );
  DFQD1 mantissa_value_reg_8_ ( .D(N240), .CP(clk), .Q(mantissa_value[8]) );
  DFQD1 mantissa_value_reg_7_ ( .D(N239), .CP(clk), .Q(mantissa_value[7]) );
  DFQD1 mantissa_value_reg_6_ ( .D(N238), .CP(clk), .Q(mantissa_value[6]) );
  DFQD1 mantissa_value_reg_5_ ( .D(N237), .CP(clk), .Q(mantissa_value[5]) );
  DFQD1 mantissa_value_reg_4_ ( .D(N236), .CP(clk), .Q(mantissa_value[4]) );
  DFQD1 mantissa_value_reg_3_ ( .D(N235), .CP(clk), .Q(mantissa_value[3]) );
  DFQD1 mantissa_value_reg_2_ ( .D(N234), .CP(clk), .Q(mantissa_value[2]) );
  DFQD1 mantissa_value_reg_1_ ( .D(N233), .CP(clk), .Q(mantissa_value[1]) );
  DFQD1 mantissa_value_reg_0_ ( .D(N232), .CP(clk), .Q(mantissa_value[0]) );
  INVD0 U3 ( .I(n467), .ZN(n659) );
  OAI21D0 U4 ( .A1(n541), .A2(n664), .B(n671), .ZN(n599) );
  INVD0 U5 ( .I(n673), .ZN(n541) );
  OAI21D0 U6 ( .A1(n623), .A2(n573), .B(n572), .ZN(n713) );
  INVD0 U7 ( .I(n467), .ZN(n469) );
  CKND2D0 U8 ( .A1(n726), .A2(n725), .ZN(n793) );
  INVD0 U9 ( .I(divide_mode), .ZN(n320) );
  INVD0 U10 ( .I(n754), .ZN(n809) );
  CKND2D0 U11 ( .A1(n759), .A2(n758), .ZN(n760) );
  CKND2D0 U12 ( .A1(n797), .A2(n796), .ZN(n798) );
  CKND2D0 U13 ( .A1(n635), .A2(n634), .ZN(n758) );
  CKND2D0 U14 ( .A1(n779), .A2(n821), .ZN(n825) );
  CKND2D0 U15 ( .A1(n728), .A2(n727), .ZN(n796) );
  CKND2D0 U16 ( .A1(n747), .A2(n746), .ZN(n748) );
  CKND2D0 U17 ( .A1(n633), .A2(n632), .ZN(n803) );
  OR2D0 U18 ( .A1(n633), .A2(n632), .Z(n804) );
  CKND2D0 U19 ( .A1(n629), .A2(n628), .ZN(n810) );
  OR2D0 U20 ( .A1(n629), .A2(n628), .Z(n811) );
  CKND2D0 U21 ( .A1(n514), .A2(n513), .ZN(n767) );
  CKND2D0 U22 ( .A1(n512), .A2(n511), .ZN(n774) );
  CKND2D0 U23 ( .A1(n407), .A2(n406), .ZN(n828) );
  CKND2D0 U24 ( .A1(n510), .A2(n509), .ZN(n814) );
  CKND2D0 U25 ( .A1(n403), .A2(n402), .ZN(n820) );
  CKND2D0 U26 ( .A1(n396), .A2(n395), .ZN(n783) );
  CKND2D0 U27 ( .A1(n371), .A2(n370), .ZN(n840) );
  CKND2D0 U28 ( .A1(n394), .A2(n393), .ZN(n832) );
  CKND2D0 U29 ( .A1(n369), .A2(n368), .ZN(n836) );
  CKND2D0 U30 ( .A1(n364), .A2(n363), .ZN(n846) );
  CKND2D0 U31 ( .A1(n540), .A2(n536), .ZN(n664) );
  CKND2D0 U32 ( .A1(n663), .A2(n668), .ZN(n670) );
  NR2D0 U33 ( .A1(n611), .A2(n535), .ZN(n540) );
  CKND2D0 U34 ( .A1(n411), .A2(n417), .ZN(n419) );
  CKND2D0 U35 ( .A1(n362), .A2(n361), .ZN(n850) );
  CKND2D0 U36 ( .A1(n665), .A2(n51), .ZN(n715) );
  CKND2D0 U37 ( .A1(n591), .A2(n50), .ZN(n710) );
  CKND2D0 U38 ( .A1(n505), .A2(n46), .ZN(n607) );
  NR2D0 U39 ( .A1(n591), .A2(n50), .ZN(n662) );
  CKND2D0 U40 ( .A1(n463), .A2(n45), .ZN(n477) );
  CKND2D0 U41 ( .A1(n298), .A2(n292), .ZN(n382) );
  CKND2D0 U42 ( .A1(n2520), .A2(n42), .ZN(n413) );
  CKND2D0 U43 ( .A1(n349), .A2(n348), .ZN(n859) );
  CKND2D0 U44 ( .A1(n570), .A2(n48), .ZN(n620) );
  CKND2D0 U45 ( .A1(n2360), .A2(n40), .ZN(n374) );
  CKND2D0 U46 ( .A1(n359), .A2(n358), .ZN(n854) );
  CKND2D0 U47 ( .A1(n571), .A2(n49), .ZN(n601) );
  CKND2D0 U48 ( .A1(n269), .A2(n43), .ZN(n412) );
  CKND2D0 U49 ( .A1(n195), .A2(n38), .ZN(n291) );
  CKND2D0 U50 ( .A1(n198), .A2(n39), .ZN(n385) );
  CKND2D0 U51 ( .A1(n2370), .A2(n41), .ZN(n278) );
  CKND2D0 U52 ( .A1(n537), .A2(n47), .ZN(n612) );
  CKND2D0 U53 ( .A1(n190), .A2(n36), .ZN(n304) );
  CKND2D0 U54 ( .A1(n194), .A2(n37), .ZN(n297) );
  CKND2D0 U55 ( .A1(n189), .A2(n35), .ZN(n310) );
  CKND2D0 U56 ( .A1(n187), .A2(n34), .ZN(n350) );
  CKND2D0 U57 ( .A1(n178), .A2(n33), .ZN(n342) );
  NR2D0 U58 ( .A1(n437), .A2(n444), .ZN(n519) );
  CKND2D0 U59 ( .A1(n436), .A2(n442), .ZN(n444) );
  CKND2D0 U60 ( .A1(n502), .A2(n520), .ZN(n503) );
  CKND2D0 U61 ( .A1(n2530), .A2(n257), .ZN(n437) );
  CKND2D0 U62 ( .A1(n138), .A2(n143), .ZN(n215) );
  CKND2D0 U63 ( .A1(n214), .A2(n219), .ZN(n222) );
  CKND2D0 U64 ( .A1(n267), .A2(n42), .ZN(n438) );
  CKND2D0 U65 ( .A1(n532), .A2(n46), .ZN(n556) );
  CKND2D0 U66 ( .A1(n568), .A2(n48), .ZN(n644) );
  CKND2D0 U67 ( .A1(n460), .A2(n44), .ZN(n521) );
  NR2D0 U68 ( .A1(n460), .A2(n44), .ZN(n518) );
  CKND2D0 U69 ( .A1(n687), .A2(n51), .ZN(n692) );
  CKND2D0 U70 ( .A1(n660), .A2(n50), .ZN(n693) );
  CKND2D0 U71 ( .A1(n219), .A2(n216), .ZN(n212) );
  CKND2D0 U72 ( .A1(n2490), .A2(n41), .ZN(n2540) );
  CKND2D0 U73 ( .A1(n432), .A2(n43), .ZN(n439) );
  INR2D0 U74 ( .A1(n287), .B1(n459), .ZN(n2490) );
  CKND2D0 U75 ( .A1(n2340), .A2(n40), .ZN(n2380) );
  INR2D0 U76 ( .A1(n273), .B1(n459), .ZN(n267) );
  INR2D0 U77 ( .A1(n474), .B1(n459), .ZN(n432) );
  CKND2D0 U78 ( .A1(n89), .A2(n32), .ZN(n179) );
  CKND2D0 U79 ( .A1(n118), .A2(n36), .ZN(n139) );
  CKND2D0 U80 ( .A1(n211), .A2(n39), .ZN(n216) );
  CKND2D0 U81 ( .A1(n105), .A2(n34), .ZN(n156) );
  CKND2D0 U82 ( .A1(n135), .A2(n37), .ZN(n140) );
  CKND2D0 U83 ( .A1(n148), .A2(n38), .ZN(n201) );
  INR2D0 U84 ( .A1(n282), .B1(n2330), .ZN(n2340) );
  CKND2D0 U85 ( .A1(n90), .A2(n33), .ZN(n183) );
  CKND2D0 U86 ( .A1(n579), .A2(n584), .ZN(n680) );
  CKND2D0 U87 ( .A1(n485), .A2(n491), .ZN(n493) );
  CKND2D0 U88 ( .A1(n2410), .A2(n2460), .ZN(n486) );
  NR2D0 U89 ( .A1(n424), .A2(n423), .ZN(n485) );
  CKND2D0 U90 ( .A1(n18), .A2(n17), .ZN(n2420) );
  CKND2D0 U91 ( .A1(n23), .A2(n22), .ZN(n488) );
  CKND2D0 U92 ( .A1(n20), .A2(n19), .ZN(n425) );
  CKND2D0 U93 ( .A1(n22), .A2(n21), .ZN(n487) );
  CKND2D0 U94 ( .A1(n19), .A2(n18), .ZN(n2430) );
  CKND2D0 U95 ( .A1(n21), .A2(n20), .ZN(n426) );
  CKND2D0 U96 ( .A1(n16), .A2(n15), .ZN(n205) );
  CKND2D0 U97 ( .A1(n17), .A2(n16), .ZN(n206) );
  CKND2D0 U98 ( .A1(n25), .A2(n24), .ZN(n545) );
  CKND2D0 U99 ( .A1(n24), .A2(n23), .ZN(n544) );
  CKND2D0 U100 ( .A1(n27), .A2(n26), .ZN(n581) );
  CKND2D0 U101 ( .A1(n26), .A2(n25), .ZN(n580) );
  CKND2D0 U102 ( .A1(n28), .A2(n27), .ZN(n681) );
  CKND2D0 U103 ( .A1(n29), .A2(n28), .ZN(n682) );
  CKND2D0 U104 ( .A1(n11), .A2(n10), .ZN(n73) );
  CKND2D0 U105 ( .A1(n15), .A2(n14), .ZN(n125) );
  CKND2D0 U106 ( .A1(n14), .A2(n13), .ZN(n124) );
  CKND2D0 U107 ( .A1(n801), .A2(n800), .ZN(n802) );
  NR2D0 U108 ( .A1(n638), .A2(n756), .ZN(n640) );
  CKND2D0 U109 ( .A1(n759), .A2(n804), .ZN(n638) );
  NR2D0 U110 ( .A1(n724), .A2(n723), .ZN(n750) );
  CKND2D0 U111 ( .A1(n762), .A2(n807), .ZN(n763) );
  ND2D0 U112 ( .A1(n724), .A2(n723), .ZN(n800) );
  AOI21D0 U113 ( .A1(n409), .A2(n778), .B(n408), .ZN(n764) );
  CKND2D0 U114 ( .A1(n762), .A2(n811), .ZN(n756) );
  CKND2D0 U115 ( .A1(n766), .A2(n768), .ZN(n517) );
  CKND2D0 U116 ( .A1(n797), .A2(n752), .ZN(n732) );
  CKND2D0 U117 ( .A1(n775), .A2(n774), .ZN(n776) );
  CKND2D0 U118 ( .A1(n829), .A2(n828), .ZN(n830) );
  CKND2D0 U119 ( .A1(n752), .A2(n793), .ZN(n753) );
  NR2D0 U120 ( .A1(n827), .A2(n825), .ZN(n409) );
  CKND2D0 U121 ( .A1(n811), .A2(n810), .ZN(n812) );
  CKND2D0 U122 ( .A1(n804), .A2(n803), .ZN(n805) );
  OR2D0 U123 ( .A1(n728), .A2(n727), .Z(n797) );
  CKND2D0 U124 ( .A1(n815), .A2(n814), .ZN(n816) );
  CKND2D0 U125 ( .A1(n779), .A2(n818), .ZN(n780) );
  CKND2D0 U126 ( .A1(n768), .A2(n767), .ZN(n769) );
  OR2D0 U127 ( .A1(n514), .A2(n513), .Z(n768) );
  OR2D0 U128 ( .A1(n745), .A2(n744), .Z(n747) );
  NR2D0 U129 ( .A1(n726), .A2(n725), .ZN(n794) );
  CKND2D0 U130 ( .A1(n821), .A2(n820), .ZN(n822) );
  CKND2D0 U131 ( .A1(n745), .A2(n744), .ZN(n746) );
  NR2D0 U132 ( .A1(n510), .A2(n509), .ZN(n771) );
  NR2D0 U133 ( .A1(n401), .A2(n400), .ZN(n819) );
  CKND2D0 U134 ( .A1(n784), .A2(n783), .ZN(n785) );
  CKND2D0 U135 ( .A1(n401), .A2(n400), .ZN(n818) );
  CKND2D0 U136 ( .A1(n841), .A2(n840), .ZN(n842) );
  CKND2D0 U137 ( .A1(n788), .A2(n836), .ZN(n789) );
  CKND2D0 U138 ( .A1(n833), .A2(n832), .ZN(n834) );
  NR2D0 U139 ( .A1(n371), .A2(n370), .ZN(n839) );
  CKND2D0 U140 ( .A1(n847), .A2(n846), .ZN(n848) );
  NR2D0 U141 ( .A1(n670), .A2(n664), .ZN(n674) );
  NR2D0 U142 ( .A1(n369), .A2(n368), .ZN(n837) );
  CKND2D0 U143 ( .A1(n712), .A2(n710), .ZN(n592) );
  CKND2D0 U144 ( .A1(n471), .A2(n478), .ZN(n472) );
  CKND2D0 U145 ( .A1(n716), .A2(n715), .ZN(n717) );
  CKND2D0 U146 ( .A1(n609), .A2(n607), .ZN(n506) );
  CKND2D0 U147 ( .A1(n375), .A2(n374), .ZN(n376) );
  CKND2D0 U148 ( .A1(n621), .A2(n620), .ZN(n622) );
  NR2D0 U149 ( .A1(n662), .A2(n714), .ZN(n668) );
  CKND2D0 U150 ( .A1(n270), .A2(n412), .ZN(n271) );
  CKND2D0 U151 ( .A1(n602), .A2(n601), .ZN(n603) );
  CKND2D0 U152 ( .A1(n284), .A2(n413), .ZN(n285) );
  CKND2D0 U153 ( .A1(n464), .A2(n477), .ZN(n465) );
  CKND2D0 U154 ( .A1(n386), .A2(n385), .ZN(n387) );
  CKND2D0 U155 ( .A1(n613), .A2(n612), .ZN(n614) );
  CKND2D0 U156 ( .A1(n435), .A2(n44), .ZN(n478) );
  CKND2D0 U157 ( .A1(n279), .A2(n278), .ZN(n280) );
  NR2D0 U158 ( .A1(n382), .A2(n384), .ZN(n200) );
  NR2D0 U159 ( .A1(n597), .A2(n600), .ZN(n663) );
  CKND2D0 U160 ( .A1(n292), .A2(n291), .ZN(n293) );
  CKND2D0 U161 ( .A1(n298), .A2(n297), .ZN(n299) );
  NR2D0 U162 ( .A1(n2360), .A2(n40), .ZN(n275) );
  CKND2D0 U163 ( .A1(n305), .A2(n304), .ZN(n306) );
  NR2D0 U164 ( .A1(n194), .A2(n37), .ZN(n290) );
  CKND2D0 U165 ( .A1(n519), .A2(n524), .ZN(n527) );
  CKND2D0 U166 ( .A1(n688), .A2(n692), .ZN(n689) );
  CKND2D0 U167 ( .A1(n588), .A2(n643), .ZN(n589) );
  CKND2D0 U168 ( .A1(n676), .A2(n693), .ZN(n661) );
  NR2D0 U169 ( .A1(n222), .A2(n215), .ZN(n225) );
  CKND2D0 U170 ( .A1(n436), .A2(n438), .ZN(n268) );
  CKND2D0 U171 ( .A1(n551), .A2(n555), .ZN(n552) );
  CKND2D0 U172 ( .A1(n575), .A2(n644), .ZN(n569) );
  CKND2D0 U173 ( .A1(n461), .A2(n521), .ZN(n462) );
  CKND2D0 U174 ( .A1(n533), .A2(n556), .ZN(n534) );
  CKND2D0 U175 ( .A1(n257), .A2(n2540), .ZN(n2500) );
  NR2D0 U176 ( .A1(n554), .A2(n557), .ZN(n642) );
  NR2D0 U177 ( .A1(n522), .A2(n518), .ZN(n524) );
  CKND2D0 U178 ( .A1(n442), .A2(n439), .ZN(n433) );
  CKND2D0 U179 ( .A1(n138), .A2(n139), .ZN(n119) );
  NR2D0 U180 ( .A1(n532), .A2(n46), .ZN(n554) );
  OR2D0 U181 ( .A1(n2490), .A2(n41), .Z(n257) );
  NR2D0 U182 ( .A1(n267), .A2(n42), .ZN(n421) );
  OR2D0 U183 ( .A1(n432), .A2(n43), .Z(n442) );
  NR2D0 U184 ( .A1(n550), .A2(n47), .ZN(n557) );
  CKND2D0 U185 ( .A1(n550), .A2(n47), .ZN(n555) );
  NR2D0 U186 ( .A1(n587), .A2(n49), .ZN(n645) );
  CKND2D0 U187 ( .A1(n587), .A2(n49), .ZN(n643) );
  NR2D0 U188 ( .A1(n660), .A2(n50), .ZN(n691) );
  CKND2D0 U189 ( .A1(n214), .A2(n201), .ZN(n149) );
  CKND2D0 U190 ( .A1(n143), .A2(n140), .ZN(n136) );
  NR2D0 U191 ( .A1(n687), .A2(n51), .ZN(n694) );
  CKND2D0 U192 ( .A1(n2530), .A2(n2380), .ZN(n2350) );
  INR2D0 U193 ( .A1(n708), .B1(n330), .ZN(n687) );
  OR2D0 U194 ( .A1(n720), .A2(n659), .Z(n660) );
  CKAN2D0 U195 ( .A1(n617), .A2(n616), .Z(n619) );
  INR2D0 U196 ( .A1(n594), .B1(n659), .ZN(n587) );
  INR2D0 U197 ( .A1(n605), .B1(n567), .ZN(n568) );
  NR2D0 U198 ( .A1(n118), .A2(n36), .ZN(n120) );
  OR2D0 U199 ( .A1(n2340), .A2(n40), .Z(n2530) );
  CKND2D0 U200 ( .A1(n501), .A2(n45), .ZN(n520) );
  INR2D0 U201 ( .A1(n468), .B1(n459), .ZN(n460) );
  INR2D0 U202 ( .A1(n624), .B1(n567), .ZN(n550) );
  INR2D0 U203 ( .A1(n617), .B1(n567), .ZN(n532) );
  INR2D0 U204 ( .A1(n507), .B1(n567), .ZN(n501) );
  INR2D0 U205 ( .A1(n300), .B1(n134), .ZN(n118) );
  INR2D0 U206 ( .A1(n295), .B1(n134), .ZN(n135) );
  BUFFD0 U207 ( .I(n500), .Z(n2330) );
  BUFFD0 U208 ( .I(n500), .Z(n134) );
  CKND2D0 U209 ( .A1(n88), .A2(n31), .ZN(n161) );
  INR2D0 U210 ( .A1(n327), .B1(n880), .ZN(n81) );
  INR2D0 U211 ( .A1(n321), .B1(n880), .ZN(n88) );
  AO21D0 U212 ( .A1(n497), .A2(n496), .B(n495), .Z(n702) );
  NR2D0 U213 ( .A1(n486), .A2(n493), .ZN(n496) );
  CKBD1 U214 ( .I(n320), .Z(n467) );
  CKND2D0 U215 ( .A1(n227), .A2(n2420), .ZN(n209) );
  CKND2D0 U216 ( .A1(n145), .A2(n206), .ZN(n146) );
  CKND2D0 U217 ( .A1(n653), .A2(n681), .ZN(n585) );
  CKND2D0 U218 ( .A1(n529), .A2(n545), .ZN(n530) );
  CKND2D0 U219 ( .A1(n429), .A2(n487), .ZN(n430) );
  CKND2D0 U220 ( .A1(n123), .A2(n128), .ZN(n130) );
  CKND2D0 U221 ( .A1(n264), .A2(n426), .ZN(n265) );
  CKND2D0 U222 ( .A1(n456), .A2(n488), .ZN(n457) );
  CKND2D0 U223 ( .A1(n261), .A2(n425), .ZN(n2470) );
  CKND2D0 U224 ( .A1(n564), .A2(n581), .ZN(n565) );
  CKND2D0 U225 ( .A1(n498), .A2(n544), .ZN(n499) );
  CKND2D0 U226 ( .A1(n656), .A2(n682), .ZN(n657) );
  CKND2D0 U227 ( .A1(n561), .A2(n580), .ZN(n548) );
  CKND2D0 U228 ( .A1(n230), .A2(n2430), .ZN(n231) );
  NR2D0 U229 ( .A1(n2400), .A2(n2390), .ZN(n2460) );
  NR2D0 U230 ( .A1(n578), .A2(n577), .ZN(n584) );
  NR2D0 U231 ( .A1(n484), .A2(n483), .ZN(n491) );
  NR2D0 U232 ( .A1(n543), .A2(n542), .ZN(n579) );
  CKAN2D0 U233 ( .A1(n878), .A2(divided_s5[28]), .Z(n67) );
  NR2D0 U234 ( .A1(n17), .A2(n16), .ZN(n203) );
  NR2D0 U235 ( .A1(n16), .A2(n15), .ZN(n204) );
  NR2D0 U236 ( .A1(n19), .A2(n18), .ZN(n2390) );
  NR2D0 U237 ( .A1(n18), .A2(n17), .ZN(n2400) );
  NR2D0 U238 ( .A1(n20), .A2(n19), .ZN(n424) );
  NR2D0 U239 ( .A1(n21), .A2(n20), .ZN(n423) );
  NR2D0 U240 ( .A1(n23), .A2(n22), .ZN(n483) );
  NR2D0 U241 ( .A1(n29), .A2(n28), .ZN(n678) );
  NR2D0 U242 ( .A1(n28), .A2(n27), .ZN(n679) );
  NR2D0 U243 ( .A1(n24), .A2(n23), .ZN(n543) );
  NR2D0 U244 ( .A1(n26), .A2(n25), .ZN(n578) );
  NR2D0 U245 ( .A1(n27), .A2(n26), .ZN(n577) );
  CKND2D0 U246 ( .A1(n8), .A2(y_mantissa[0]), .ZN(n79) );
  CKND2D0 U247 ( .A1(n10), .A2(n9), .ZN(n84) );
  NR2D0 U248 ( .A1(n12), .A2(n11), .ZN(n99) );
  CKND2D0 U249 ( .A1(n12), .A2(n11), .ZN(n100) );
  CKND2D0 U250 ( .A1(n13), .A2(n12), .ZN(n101) );
  XNR2D0 U251 ( .A1(n799), .A2(n798), .ZN(base_c1[23]) );
  XOR2D0 U252 ( .A1(n795), .A2(n753), .Z(base_c1[22]) );
  OAI21D0 U253 ( .A1(n795), .A2(n794), .B(n793), .ZN(n799) );
  XOR2D0 U254 ( .A1(n761), .A2(n760), .Z(base_c1[20]) );
  XOR2D0 U255 ( .A1(n749), .A2(n748), .Z(base_c1[24]) );
  AOI21D0 U256 ( .A1(n66), .A2(n734), .B(n733), .ZN(n749) );
  XNR2D0 U257 ( .A1(n66), .A2(n802), .ZN(base_c1[21]) );
  XNR2D0 U258 ( .A1(n806), .A2(n805), .ZN(base_c1[19]) );
  XNR2D0 U259 ( .A1(n813), .A2(n812), .ZN(base_c1[18]) );
  AOI21D0 U260 ( .A1(n806), .A2(n804), .B(n757), .ZN(n761) );
  XOR2D0 U261 ( .A1(n809), .A2(n763), .Z(base_c1[17]) );
  AO21D0 U262 ( .A1(n754), .A2(n640), .B(n639), .Z(n66) );
  XOR2D0 U263 ( .A1(n770), .A2(n769), .Z(base_c1[16]) );
  OAI21D0 U264 ( .A1(n809), .A2(n808), .B(n807), .ZN(n813) );
  XOR2D0 U265 ( .A1(n777), .A2(n776), .Z(base_c1[15]) );
  XNR2D0 U266 ( .A1(n817), .A2(n816), .ZN(base_c1[14]) );
  AOI21D0 U267 ( .A1(n817), .A2(n815), .B(n772), .ZN(n777) );
  AOI21D0 U268 ( .A1(n817), .A2(n766), .B(n765), .ZN(n770) );
  OAI21D0 U269 ( .A1(n638), .A2(n755), .B(n637), .ZN(n639) );
  INVD0 U270 ( .I(n764), .ZN(n817) );
  NR2D0 U271 ( .A1(n732), .A2(n750), .ZN(n734) );
  OAI21D0 U272 ( .A1(n732), .A2(n800), .B(n731), .ZN(n733) );
  INVD0 U273 ( .I(n800), .ZN(n751) );
  XNR2D0 U274 ( .A1(n823), .A2(n822), .ZN(base_c1[12]) );
  INVD0 U275 ( .I(n750), .ZN(n801) );
  OAI21D0 U276 ( .A1(n764), .A2(n517), .B(n516), .ZN(n754) );
  XNR2D0 U277 ( .A1(n831), .A2(n830), .ZN(base_c1[13]) );
  AOI21D0 U278 ( .A1(n759), .A2(n757), .B(n636), .ZN(n637) );
  XOR2D0 U279 ( .A1(n826), .A2(n780), .Z(base_c1[11]) );
  OAI21D0 U280 ( .A1(n826), .A2(n819), .B(n818), .ZN(n823) );
  OAI21D0 U281 ( .A1(n826), .A2(n825), .B(n824), .ZN(n831) );
  INVD0 U282 ( .I(n758), .ZN(n636) );
  INVD0 U283 ( .I(n803), .ZN(n757) );
  INVD0 U284 ( .I(n796), .ZN(n729) );
  INVD0 U285 ( .I(n778), .ZN(n826) );
  OAI21D0 U286 ( .A1(n827), .A2(n824), .B(n828), .ZN(n408) );
  AOI21D0 U287 ( .A1(n765), .A2(n768), .B(n515), .ZN(n516) );
  INVD0 U288 ( .I(n808), .ZN(n762) );
  OR2D1 U289 ( .A1(n635), .A2(n634), .Z(n759) );
  XOR2D0 U290 ( .A1(n718), .A2(n717), .Z(n724) );
  XOR2D0 U291 ( .A1(n786), .A2(n785), .Z(base_c1[10]) );
  INVD0 U292 ( .I(n810), .ZN(n630) );
  AOI21D0 U293 ( .A1(n835), .A2(n833), .B(n782), .ZN(n786) );
  INVD0 U294 ( .I(n794), .ZN(n752) );
  CKND2D1 U295 ( .A1(n627), .A2(n626), .ZN(n807) );
  INVD0 U296 ( .I(n827), .ZN(n829) );
  AOI21D0 U297 ( .A1(n713), .A2(n712), .B(n711), .ZN(n718) );
  XNR2D0 U298 ( .A1(n843), .A2(n842), .ZN(base_c1[8]) );
  XNR2D0 U299 ( .A1(n713), .A2(n592), .ZN(n635) );
  XNR2D0 U300 ( .A1(n835), .A2(n834), .ZN(base_c1[9]) );
  INVD0 U301 ( .I(n773), .ZN(n775) );
  OAI21D0 U302 ( .A1(n773), .A2(n814), .B(n774), .ZN(n765) );
  NR2XD0 U303 ( .A1(n627), .A2(n626), .ZN(n808) );
  INVD0 U304 ( .I(n767), .ZN(n515) );
  OAI21D0 U305 ( .A1(n781), .A2(n399), .B(n398), .ZN(n778) );
  AOI21D0 U306 ( .A1(n821), .A2(n405), .B(n404), .ZN(n824) );
  NR2XD0 U307 ( .A1(n773), .A2(n771), .ZN(n766) );
  INVD0 U308 ( .I(n781), .ZN(n835) );
  INVD0 U309 ( .I(n820), .ZN(n404) );
  OAI21D0 U310 ( .A1(n838), .A2(n837), .B(n836), .ZN(n843) );
  AOI21D0 U311 ( .A1(n784), .A2(n782), .B(n397), .ZN(n398) );
  XOR2D0 U312 ( .A1(n838), .A2(n789), .Z(base_c1[7]) );
  INVD0 U313 ( .I(n814), .ZN(n772) );
  INVD0 U314 ( .I(n771), .ZN(n815) );
  NR2XD0 U315 ( .A1(n407), .A2(n406), .ZN(n827) );
  INVD0 U316 ( .I(n819), .ZN(n779) );
  XOR2D0 U317 ( .A1(n623), .A2(n622), .Z(n629) );
  NR2XD0 U318 ( .A1(n512), .A2(n511), .ZN(n773) );
  XOR2D0 U319 ( .A1(n615), .A2(n614), .Z(n627) );
  XOR2D0 U320 ( .A1(n703), .A2(n738), .Z(n728) );
  XOR2D0 U321 ( .A1(n604), .A2(n603), .Z(n633) );
  OR2D0 U322 ( .A1(n403), .A2(n402), .Z(n821) );
  XNR2D0 U323 ( .A1(n272), .A2(n271), .ZN(n407) );
  XNR2D0 U324 ( .A1(n610), .A2(n506), .ZN(n514) );
  INVD0 U325 ( .I(n787), .ZN(n838) );
  NR2XD0 U326 ( .A1(n707), .A2(n735), .ZN(n703) );
  AOI21D0 U327 ( .A1(n373), .A2(n787), .B(n372), .ZN(n781) );
  AOI21D0 U328 ( .A1(n599), .A2(n621), .B(n598), .ZN(n604) );
  XNR2D0 U329 ( .A1(n466), .A2(n465), .ZN(n512) );
  CKND2D0 U330 ( .A1(n784), .A2(n833), .ZN(n399) );
  INVD0 U331 ( .I(n783), .ZN(n397) );
  INVD0 U332 ( .I(n599), .ZN(n623) );
  XNR2D0 U333 ( .A1(n707), .A2(n735), .ZN(n726) );
  AOI21D0 U334 ( .A1(n610), .A2(n609), .B(n608), .ZN(n615) );
  INVD0 U335 ( .I(n739), .ZN(n707) );
  XOR2D0 U336 ( .A1(n281), .A2(n280), .Z(n401) );
  XOR2D0 U337 ( .A1(n286), .A2(n285), .Z(n403) );
  INVD0 U338 ( .I(n832), .ZN(n782) );
  OAI21D0 U339 ( .A1(n286), .A2(n410), .B(n413), .ZN(n272) );
  OAI21D0 U340 ( .A1(n367), .A2(n844), .B(n366), .ZN(n787) );
  OR2D0 U341 ( .A1(n396), .A2(n395), .Z(n784) );
  OAI21D0 U342 ( .A1(n541), .A2(n476), .B(n478), .ZN(n466) );
  OAI21D0 U343 ( .A1(n839), .A2(n836), .B(n840), .ZN(n372) );
  XOR2D0 U344 ( .A1(n541), .A2(n472), .Z(n510) );
  OAI21D0 U345 ( .A1(n739), .A2(n738), .B(n737), .ZN(n743) );
  XOR2D0 U346 ( .A1(n849), .A2(n848), .Z(base_c1[6]) );
  AOI21D0 U347 ( .A1(n377), .A2(n375), .B(n276), .ZN(n281) );
  XNR2D0 U348 ( .A1(n377), .A2(n376), .ZN(n396) );
  AOI21D0 U349 ( .A1(n847), .A2(n845), .B(n365), .ZN(n366) );
  AOI21D0 U350 ( .A1(n674), .A2(n673), .B(n672), .ZN(n739) );
  OR2D0 U351 ( .A1(n394), .A2(n393), .Z(n833) );
  XNR2D0 U352 ( .A1(n294), .A2(n293), .ZN(n371) );
  AOI21D0 U353 ( .A1(n852), .A2(n851), .B(n845), .ZN(n849) );
  OAI21D0 U354 ( .A1(n420), .A2(n419), .B(n418), .ZN(n673) );
  CKND2D0 U355 ( .A1(n847), .A2(n851), .ZN(n367) );
  XNR2D0 U356 ( .A1(n388), .A2(n387), .ZN(n394) );
  OAI21D0 U357 ( .A1(n671), .A2(n670), .B(n669), .ZN(n672) );
  INVD0 U358 ( .I(n420), .ZN(n377) );
  AOI21D0 U359 ( .A1(n668), .A2(n667), .B(n666), .ZN(n669) );
  INVD0 U360 ( .I(n539), .ZN(n480) );
  AOI21D0 U361 ( .A1(n200), .A2(n289), .B(n199), .ZN(n420) );
  OAI21D0 U362 ( .A1(n383), .A2(n290), .B(n297), .ZN(n294) );
  CKND2D0 U363 ( .A1(n851), .A2(n850), .ZN(n853) );
  AOI21D0 U364 ( .A1(n540), .A2(n539), .B(n538), .ZN(n671) );
  XOR2D0 U365 ( .A1(n383), .A2(n299), .Z(n369) );
  INVD0 U366 ( .I(n850), .ZN(n845) );
  OAI21D0 U367 ( .A1(n383), .A2(n382), .B(n381), .ZN(n388) );
  OR2D0 U368 ( .A1(n364), .A2(n363), .Z(n847) );
  AOI21D0 U369 ( .A1(n856), .A2(n855), .B(n360), .ZN(n844) );
  CKND2D0 U370 ( .A1(n860), .A2(n859), .ZN(n861) );
  OAI21D0 U371 ( .A1(n714), .A2(n710), .B(n715), .ZN(n666) );
  INVD0 U372 ( .I(n736), .ZN(n738) );
  OAI21D0 U373 ( .A1(n611), .A2(n607), .B(n612), .ZN(n538) );
  OR2D0 U374 ( .A1(n362), .A2(n361), .Z(n851) );
  CKND2D0 U375 ( .A1(n736), .A2(n735), .ZN(n737) );
  AOI21D0 U376 ( .A1(n417), .A2(n416), .B(n415), .ZN(n418) );
  OAI21D0 U377 ( .A1(n381), .A2(n384), .B(n385), .ZN(n199) );
  INVD0 U378 ( .I(n476), .ZN(n471) );
  XOR2D0 U379 ( .A1(n307), .A2(n306), .Z(n364) );
  OAI21D0 U380 ( .A1(n479), .A2(n478), .B(n477), .ZN(n539) );
  INVD0 U381 ( .I(n714), .ZN(n716) );
  INVD0 U382 ( .I(n662), .ZN(n712) );
  NR2XD0 U383 ( .A1(n476), .A2(n479), .ZN(n536) );
  INVD0 U384 ( .I(n289), .ZN(n383) );
  INVD0 U385 ( .I(n667), .ZN(n572) );
  INVD0 U386 ( .I(n535), .ZN(n609) );
  INVD0 U387 ( .I(n710), .ZN(n711) );
  XOR2D0 U388 ( .A1(n741), .A2(n62), .Z(n742) );
  INVD0 U389 ( .I(n663), .ZN(n573) );
  INVD0 U390 ( .I(n607), .ZN(n608) );
  OAI21D0 U391 ( .A1(n277), .A2(n374), .B(n278), .ZN(n416) );
  NR2XD0 U392 ( .A1(n665), .A2(n51), .ZN(n714) );
  INVD0 U393 ( .I(n597), .ZN(n621) );
  INVD0 U394 ( .I(n620), .ZN(n598) );
  OAI21D0 U395 ( .A1(n862), .A2(n858), .B(n859), .ZN(n856) );
  NR2XD0 U396 ( .A1(n275), .A2(n277), .ZN(n411) );
  OAI21D0 U397 ( .A1(n414), .A2(n413), .B(n412), .ZN(n415) );
  NR2XD0 U398 ( .A1(n410), .A2(n414), .ZN(n417) );
  AOI21D0 U399 ( .A1(n292), .A2(n197), .B(n196), .ZN(n381) );
  AOI21D0 U400 ( .A1(n313), .A2(n311), .B(n303), .ZN(n307) );
  NR2XD0 U401 ( .A1(n435), .A2(n44), .ZN(n476) );
  NR2XD0 U402 ( .A1(n505), .A2(n46), .ZN(n535) );
  INVD0 U403 ( .I(n600), .ZN(n602) );
  XNR2D0 U404 ( .A1(n313), .A2(n312), .ZN(n362) );
  INVD0 U405 ( .I(n414), .ZN(n270) );
  INVD0 U406 ( .I(n479), .ZN(n464) );
  OAI21D0 U407 ( .A1(n193), .A2(n302), .B(n192), .ZN(n289) );
  CKND2D0 U408 ( .A1(n855), .A2(n854), .ZN(n857) );
  XNR2D0 U409 ( .A1(n740), .A2(n62), .ZN(n736) );
  NR2D0 U410 ( .A1(n740), .A2(n62), .ZN(n741) );
  OAI21D0 U411 ( .A1(n600), .A2(n620), .B(n601), .ZN(n667) );
  INVD0 U412 ( .I(n275), .ZN(n375) );
  INVD0 U413 ( .I(n374), .ZN(n276) );
  INVD0 U414 ( .I(n302), .ZN(n313) );
  XOR2D0 U415 ( .A1(n690), .A2(n689), .Z(n735) );
  XOR2D0 U416 ( .A1(n695), .A2(n661), .Z(n665) );
  NR2D0 U417 ( .A1(n349), .A2(n348), .ZN(n858) );
  NR2XD0 U418 ( .A1(n2520), .A2(n42), .ZN(n410) );
  INVD0 U419 ( .I(n291), .ZN(n196) );
  OAI21D0 U420 ( .A1(n695), .A2(n64), .B(n63), .ZN(n740) );
  AOI21D0 U421 ( .A1(n305), .A2(n303), .B(n191), .ZN(n192) );
  NR2XD0 U422 ( .A1(n571), .A2(n49), .ZN(n600) );
  INVD0 U423 ( .I(n611), .ZN(n613) );
  NR2XD0 U424 ( .A1(n463), .A2(n45), .ZN(n479) );
  XNR2D0 U425 ( .A1(n504), .A2(n503), .ZN(n505) );
  XOR2D0 U426 ( .A1(n590), .A2(n589), .Z(n591) );
  XNR2D0 U427 ( .A1(n434), .A2(n433), .ZN(n435) );
  NR2XD0 U428 ( .A1(n269), .A2(n43), .ZN(n414) );
  NR2XD0 U429 ( .A1(n537), .A2(n47), .ZN(n611) );
  INVD0 U430 ( .I(n290), .ZN(n298) );
  XOR2D0 U431 ( .A1(n345), .A2(n344), .Z(n349) );
  XNR2D0 U432 ( .A1(n353), .A2(n352), .ZN(n359) );
  XOR2D0 U433 ( .A1(n482), .A2(n462), .Z(n463) );
  AOI21D0 U434 ( .A1(n677), .A2(n676), .B(n675), .ZN(n690) );
  XNR2D0 U435 ( .A1(n576), .A2(n569), .ZN(n571) );
  XNR2D0 U436 ( .A1(n553), .A2(n552), .ZN(n570) );
  CKND2D0 U437 ( .A1(n869), .A2(n868), .ZN(n871) );
  OAI21D0 U438 ( .A1(n482), .A2(n518), .B(n521), .ZN(n504) );
  INVD0 U439 ( .I(n677), .ZN(n695) );
  INVD0 U440 ( .I(n304), .ZN(n191) );
  AOI21D0 U441 ( .A1(n864), .A2(n865), .B(n340), .ZN(n862) );
  XOR2D0 U442 ( .A1(n2510), .A2(n2500), .Z(n2520) );
  XOR2D0 U443 ( .A1(n213), .A2(n212), .Z(n2360) );
  OR2D0 U444 ( .A1(n195), .A2(n38), .Z(n292) );
  NR2XD0 U445 ( .A1(n2370), .A2(n41), .ZN(n277) );
  AOI21D0 U446 ( .A1(n576), .A2(n575), .B(n574), .ZN(n590) );
  OAI21D0 U447 ( .A1(n422), .A2(n421), .B(n438), .ZN(n434) );
  CKND2D0 U448 ( .A1(n305), .A2(n311), .ZN(n193) );
  XOR2D0 U449 ( .A1(n422), .A2(n268), .Z(n269) );
  AOI21D0 U450 ( .A1(n352), .A2(n351), .B(n188), .ZN(n302) );
  NR2XD0 U451 ( .A1(n198), .A2(n39), .ZN(n384) );
  OAI21D0 U452 ( .A1(n867), .A2(n337), .B(n868), .ZN(n865) );
  XNR2D0 U453 ( .A1(n137), .A2(n136), .ZN(n195) );
  CKND2D0 U454 ( .A1(n343), .A2(n342), .ZN(n344) );
  AOI21D0 U455 ( .A1(n446), .A2(n2530), .B(n2560), .ZN(n2510) );
  INVD0 U456 ( .I(n310), .ZN(n303) );
  CKND2D0 U457 ( .A1(n864), .A2(n863), .ZN(n866) );
  XOR2D0 U458 ( .A1(n65), .A2(n534), .Z(n537) );
  CKND2D0 U459 ( .A1(n351), .A2(n350), .ZN(n353) );
  OR2D0 U460 ( .A1(n190), .A2(n36), .Z(n305) );
  OAI21D0 U461 ( .A1(n65), .A2(n559), .B(n558), .ZN(n576) );
  OAI21D0 U462 ( .A1(n65), .A2(n554), .B(n556), .ZN(n553) );
  OAI21D0 U463 ( .A1(n65), .A2(n650), .B(n649), .ZN(n677) );
  CKND2D0 U464 ( .A1(n311), .A2(n310), .ZN(n312) );
  AOI21D0 U465 ( .A1(n202), .A2(n214), .B(n218), .ZN(n213) );
  XNR2D0 U466 ( .A1(n202), .A2(n149), .ZN(n198) );
  XNR2D0 U467 ( .A1(n446), .A2(n2350), .ZN(n2370) );
  OA21D0 U468 ( .A1(n528), .A2(n527), .B(n526), .Z(n65) );
  CKND2D0 U469 ( .A1(n339), .A2(n338), .ZN(n863) );
  OAI21D0 U470 ( .A1(n144), .A2(n215), .B(n221), .ZN(n202) );
  INVD0 U471 ( .I(n528), .ZN(n446) );
  OAI21D0 U472 ( .A1(n144), .A2(n120), .B(n139), .ZN(n137) );
  XOR2D0 U473 ( .A1(n155), .A2(n154), .Z(n190) );
  OAI21D0 U474 ( .A1(n345), .A2(n341), .B(n342), .ZN(n352) );
  XOR2D0 U475 ( .A1(n144), .A2(n119), .Z(n194) );
  CKND2D0 U476 ( .A1(n336), .A2(n335), .ZN(n868) );
  XNR2D0 U477 ( .A1(n159), .A2(n158), .ZN(n189) );
  AOI21D0 U478 ( .A1(n159), .A2(n157), .B(n151), .ZN(n155) );
  NR2D0 U479 ( .A1(n178), .A2(n33), .ZN(n341) );
  AOI21D0 U480 ( .A1(n225), .A2(n224), .B(n223), .ZN(n528) );
  INVD0 U481 ( .I(n224), .ZN(n144) );
  AOI21D0 U482 ( .A1(n317), .A2(n318), .B(n174), .ZN(n345) );
  XNR2D0 U483 ( .A1(n186), .A2(n185), .ZN(n187) );
  AOI21D0 U484 ( .A1(n525), .A2(n524), .B(n523), .ZN(n526) );
  CKND2D0 U485 ( .A1(n317), .A2(n316), .ZN(n319) );
  OAI21D0 U486 ( .A1(n150), .A2(n109), .B(n108), .ZN(n224) );
  XOR2D0 U487 ( .A1(n177), .A2(n181), .Z(n178) );
  OAI21D0 U488 ( .A1(n181), .A2(n180), .B(n179), .ZN(n186) );
  INVD0 U489 ( .I(n150), .ZN(n159) );
  CKND2D0 U490 ( .A1(n325), .A2(n324), .ZN(n326) );
  OAI21D0 U491 ( .A1(n445), .A2(n444), .B(n443), .ZN(n525) );
  AOI21D0 U492 ( .A1(n648), .A2(n647), .B(n646), .ZN(n649) );
  CKND2D0 U493 ( .A1(n642), .A2(n648), .ZN(n650) );
  OAI21D0 U494 ( .A1(n323), .A2(n333), .B(n324), .ZN(n318) );
  INVD0 U495 ( .I(n176), .ZN(n181) );
  CKND2D0 U496 ( .A1(n173), .A2(n32), .ZN(n316) );
  AOI21D0 U497 ( .A1(n92), .A2(n176), .B(n91), .ZN(n150) );
  INVD0 U498 ( .I(n445), .ZN(n258) );
  INVD0 U499 ( .I(n647), .ZN(n558) );
  OA21D0 U500 ( .A1(n694), .A2(n693), .B(n692), .Z(n63) );
  INVD0 U501 ( .I(n641), .ZN(n575) );
  INVD0 U502 ( .I(n691), .ZN(n676) );
  OAI21D0 U503 ( .A1(n645), .A2(n644), .B(n643), .ZN(n646) );
  INVD0 U504 ( .I(n693), .ZN(n675) );
  OAI21D0 U505 ( .A1(n557), .A2(n556), .B(n555), .ZN(n647) );
  INVD0 U506 ( .I(n557), .ZN(n551) );
  INVD0 U507 ( .I(n644), .ZN(n574) );
  OAI21D0 U508 ( .A1(n163), .A2(n160), .B(n161), .ZN(n176) );
  INVD0 U509 ( .I(n645), .ZN(n588) );
  NR2D0 U510 ( .A1(n641), .A2(n645), .ZN(n648) );
  INVD0 U511 ( .I(n554), .ZN(n533) );
  OAI21D0 U512 ( .A1(n222), .A2(n221), .B(n220), .ZN(n223) );
  CKND2D0 U513 ( .A1(n172), .A2(n31), .ZN(n324) );
  AOI21D0 U514 ( .A1(n442), .A2(n441), .B(n440), .ZN(n443) );
  AOI21D0 U515 ( .A1(n257), .A2(n2560), .B(n2550), .ZN(n445) );
  XOR2D0 U516 ( .A1(n619), .A2(n618), .Z(n626) );
  INVD0 U517 ( .I(n518), .ZN(n461) );
  XOR2D0 U518 ( .A1(n722), .A2(n721), .Z(n723) );
  CKND2D0 U519 ( .A1(n332), .A2(n30), .ZN(n333) );
  INVD0 U520 ( .I(n2540), .ZN(n2550) );
  AOI21D0 U521 ( .A1(n219), .A2(n218), .B(n217), .ZN(n220) );
  INVD0 U522 ( .I(n522), .ZN(n502) );
  OAI21D0 U523 ( .A1(n522), .A2(n521), .B(n520), .ZN(n523) );
  XOR2D0 U524 ( .A1(n596), .A2(n721), .Z(n634) );
  XOR2D0 U525 ( .A1(n625), .A2(n721), .Z(n628) );
  AOI21D0 U526 ( .A1(n143), .A2(n142), .B(n141), .ZN(n221) );
  XOR2D0 U527 ( .A1(n606), .A2(n721), .Z(n632) );
  AOI21D0 U528 ( .A1(n166), .A2(n167), .B(n82), .ZN(n163) );
  INVD0 U529 ( .I(n421), .ZN(n436) );
  INVD0 U530 ( .I(n439), .ZN(n440) );
  AOI21D0 U531 ( .A1(n153), .A2(n151), .B(n107), .ZN(n108) );
  XOR2D0 U532 ( .A1(n709), .A2(n792), .Z(n725) );
  CKND2D0 U533 ( .A1(n175), .A2(n179), .ZN(n177) );
  NR2XD0 U534 ( .A1(n501), .A2(n45), .ZN(n522) );
  CKND2D0 U535 ( .A1(n157), .A2(n156), .ZN(n158) );
  XOR2D0 U536 ( .A1(n706), .A2(n792), .Z(n744) );
  INVD0 U537 ( .I(n216), .ZN(n217) );
  INVD0 U538 ( .I(n156), .ZN(n151) );
  INVD0 U539 ( .I(n152), .ZN(n107) );
  INVD0 U540 ( .I(n201), .ZN(n218) );
  CKND2D0 U541 ( .A1(n153), .A2(n152), .ZN(n154) );
  CKND2D0 U542 ( .A1(n157), .A2(n153), .ZN(n109) );
  IND2D0 U543 ( .A1(n708), .B1(n880), .ZN(n709) );
  INVD0 U544 ( .I(n120), .ZN(n138) );
  INVD0 U545 ( .I(n140), .ZN(n141) );
  XOR2D0 U546 ( .A1(n508), .A2(n618), .Z(n513) );
  OAI21D0 U547 ( .A1(n182), .A2(n179), .B(n183), .ZN(n91) );
  IND2D0 U548 ( .A1(n720), .B1(n719), .ZN(n722) );
  INVD0 U549 ( .I(n2380), .ZN(n2560) );
  CKND2D0 U550 ( .A1(n169), .A2(x_mantissa[0]), .ZN(n170) );
  OR2D1 U551 ( .A1(n211), .A2(n39), .Z(n219) );
  OR2D0 U552 ( .A1(n135), .A2(n37), .Z(n143) );
  CKND2D0 U553 ( .A1(n184), .A2(n183), .ZN(n185) );
  OR2D0 U554 ( .A1(n105), .A2(n34), .Z(n157) );
  OR2D0 U555 ( .A1(n148), .A2(n38), .Z(n214) );
  NR2D0 U556 ( .A1(n89), .A2(n32), .ZN(n180) );
  XOR2D0 U557 ( .A1(n470), .A2(n618), .Z(n511) );
  XOR2D0 U558 ( .A1(n274), .A2(n379), .Z(n406) );
  XOR2D0 U559 ( .A1(n283), .A2(n379), .Z(n400) );
  NR2D0 U560 ( .A1(n705), .A2(divide_mode), .ZN(n62) );
  XNR2D0 U561 ( .A1(n686), .A2(n29), .ZN(n708) );
  XOR2D0 U562 ( .A1(n475), .A2(n618), .Z(n509) );
  XNR2D0 U563 ( .A1(n549), .A2(n548), .ZN(n624) );
  XNR2D0 U564 ( .A1(n566), .A2(n565), .ZN(n605) );
  XNR2D0 U565 ( .A1(n531), .A2(n530), .ZN(n617) );
  XNR2D0 U566 ( .A1(n658), .A2(n657), .ZN(n720) );
  XOR2D0 U567 ( .A1(n380), .A2(n379), .Z(n395) );
  XNR2D0 U568 ( .A1(n586), .A2(n585), .ZN(n594) );
  OAI21D0 U569 ( .A1(n53), .A2(n655), .B(n654), .ZN(n658) );
  OAI21D0 U570 ( .A1(n53), .A2(n701), .B(n700), .ZN(n705) );
  INR2XD0 U571 ( .A1(n329), .B1(n2330), .ZN(n169) );
  BUFFD1 U572 ( .I(n792), .Z(n459) );
  INR2XD0 U573 ( .A1(n346), .B1(n330), .ZN(n89) );
  OAI21D0 U574 ( .A1(n52), .A2(n680), .B(n699), .ZN(n586) );
  OAI21D0 U575 ( .A1(n52), .A2(n701), .B(n685), .ZN(n686) );
  XOR2D0 U576 ( .A1(n52), .A2(n499), .Z(n507) );
  INR2XD0 U577 ( .A1(n314), .B1(n134), .ZN(n105) );
  CKND2D0 U578 ( .A1(n162), .A2(n161), .ZN(n164) );
  INR2XD0 U579 ( .A1(n308), .B1(n134), .ZN(n106) );
  INR2XD0 U580 ( .A1(n378), .B1(n2330), .ZN(n211) );
  INR2XD0 U581 ( .A1(n390), .B1(n2330), .ZN(n148) );
  OAI21D0 U582 ( .A1(n53), .A2(n547), .B(n546), .ZN(n549) );
  OAI21D0 U583 ( .A1(n52), .A2(n543), .B(n544), .ZN(n531) );
  OAI21D0 U584 ( .A1(n53), .A2(n563), .B(n562), .ZN(n566) );
  XNR2D0 U585 ( .A1(n210), .A2(n209), .ZN(n378) );
  XNR2D0 U586 ( .A1(n2480), .A2(n2470), .ZN(n287) );
  XNR2D0 U587 ( .A1(n431), .A2(n430), .ZN(n474) );
  XNR2D0 U588 ( .A1(n266), .A2(n265), .ZN(n273) );
  XNR2D0 U589 ( .A1(n458), .A2(n457), .ZN(n468) );
  XNR2D0 U590 ( .A1(n147), .A2(n146), .ZN(n390) );
  BUFFD0 U591 ( .I(n595), .Z(n330) );
  BUFFD1 U592 ( .I(n595), .Z(n792) );
  BUFFD1 U593 ( .I(n500), .Z(n567) );
  CKND2D0 U594 ( .A1(n166), .A2(n165), .ZN(n168) );
  XNR2D0 U595 ( .A1(n2320), .A2(n231), .ZN(n282) );
  NR2XD0 U596 ( .A1(n90), .A2(n33), .ZN(n182) );
  BUFFD0 U597 ( .I(n595), .Z(n721) );
  BUFFD0 U598 ( .I(n595), .Z(n356) );
  XOR2D0 U599 ( .A1(n97), .A2(n96), .Z(n314) );
  BUFFD0 U600 ( .I(n469), .Z(n391) );
  OAI21D0 U601 ( .A1(n455), .A2(n486), .B(n494), .ZN(n2480) );
  BUFFD0 U602 ( .I(n469), .Z(n618) );
  BUFFD1 U603 ( .I(n659), .Z(n500) );
  OAI21D0 U604 ( .A1(n60), .A2(n229), .B(n228), .ZN(n2320) );
  OAI21D0 U605 ( .A1(n60), .A2(n454), .B(n453), .ZN(n458) );
  XOR2D0 U606 ( .A1(n455), .A2(n133), .Z(n295) );
  OAI21D0 U607 ( .A1(n60), .A2(n428), .B(n427), .ZN(n431) );
  OAI21D0 U608 ( .A1(n60), .A2(n263), .B(n262), .ZN(n266) );
  OAI21D0 U609 ( .A1(n455), .A2(n208), .B(n207), .ZN(n210) );
  CKND2D0 U610 ( .A1(n81), .A2(n30), .ZN(n165) );
  OAI21D0 U611 ( .A1(n455), .A2(n204), .B(n205), .ZN(n147) );
  NR2D0 U612 ( .A1(n88), .A2(n31), .ZN(n160) );
  XOR2D0 U613 ( .A1(n104), .A2(n103), .Z(n308) );
  BUFFD1 U614 ( .I(n469), .Z(n595) );
  BUFFD0 U615 ( .I(n469), .Z(n379) );
  XOR2D0 U616 ( .A1(n117), .A2(n116), .Z(n300) );
  INR2XD0 U617 ( .A1(n355), .B1(n719), .ZN(n90) );
  CKND2D0 U618 ( .A1(n448), .A2(n485), .ZN(n428) );
  AOI21D0 U619 ( .A1(n684), .A2(n683), .B(n696), .ZN(n685) );
  CKND2D0 U620 ( .A1(n651), .A2(n653), .ZN(n655) );
  INVD0 U621 ( .I(n467), .ZN(n616) );
  INVD0 U622 ( .I(n593), .ZN(n719) );
  AOI21D0 U623 ( .A1(n684), .A2(n653), .B(n652), .ZN(n654) );
  INVD0 U624 ( .I(n497), .ZN(n455) );
  AOI21D0 U625 ( .A1(n452), .A2(n485), .B(n490), .ZN(n427) );
  CKND2D0 U626 ( .A1(n448), .A2(n261), .ZN(n263) );
  AOI21D0 U627 ( .A1(n452), .A2(n261), .B(n260), .ZN(n262) );
  XNR2D0 U628 ( .A1(n114), .A2(n70), .ZN(n355) );
  CKND2D0 U629 ( .A1(n451), .A2(n448), .ZN(n454) );
  AOI21D0 U630 ( .A1(n452), .A2(n451), .B(n450), .ZN(n453) );
  INVD0 U631 ( .I(n497), .ZN(n60) );
  AOI21D0 U632 ( .A1(n114), .A2(n94), .B(n93), .ZN(n97) );
  AOI21D0 U633 ( .A1(n114), .A2(n123), .B(n127), .ZN(n104) );
  AOI21D0 U634 ( .A1(n114), .A2(n113), .B(n112), .ZN(n117) );
  INVD0 U635 ( .I(n699), .ZN(n684) );
  OAI21D0 U636 ( .A1(n494), .A2(n493), .B(n492), .ZN(n495) );
  BUFFD0 U637 ( .I(n320), .Z(n593) );
  OAI21D0 U638 ( .A1(n111), .A2(n122), .B(n124), .ZN(n112) );
  OAI21D0 U639 ( .A1(n449), .A2(n484), .B(n487), .ZN(n450) );
  OAI21D0 U640 ( .A1(n131), .A2(n130), .B(n129), .ZN(n497) );
  INVD0 U641 ( .I(n131), .ZN(n114) );
  OAI21D0 U642 ( .A1(n87), .A2(n83), .B(n84), .ZN(n76) );
  INVD0 U643 ( .I(n494), .ZN(n452) );
  INVD0 U644 ( .I(n320), .ZN(n880) );
  NR2D0 U645 ( .A1(n447), .A2(n484), .ZN(n451) );
  AOI21D0 U646 ( .A1(n69), .A2(n71), .B(n68), .ZN(n131) );
  AOI21D0 U647 ( .A1(n2450), .A2(n227), .B(n226), .ZN(n228) );
  AOI21D0 U648 ( .A1(n2460), .A2(n2450), .B(n2440), .ZN(n494) );
  CKND2D0 U649 ( .A1(n94), .A2(n100), .ZN(n70) );
  CKND2D0 U650 ( .A1(n2410), .A2(n227), .ZN(n229) );
  CKND2D0 U651 ( .A1(n95), .A2(n101), .ZN(n96) );
  CKND2D0 U652 ( .A1(n102), .A2(n124), .ZN(n103) );
  AOI21D0 U653 ( .A1(n583), .A2(n561), .B(n560), .ZN(n562) );
  CKND2D0 U654 ( .A1(n115), .A2(n125), .ZN(n116) );
  CKND2D0 U655 ( .A1(n579), .A2(n561), .ZN(n563) );
  CKND2D0 U656 ( .A1(n132), .A2(n205), .ZN(n133) );
  AOI21D0 U657 ( .A1(n128), .A2(n127), .B(n126), .ZN(n129) );
  AOI21D0 U658 ( .A1(n584), .A2(n583), .B(n582), .ZN(n699) );
  INVD0 U659 ( .I(n2450), .ZN(n207) );
  INVD0 U660 ( .I(n583), .ZN(n546) );
  AOI21D0 U661 ( .A1(n491), .A2(n490), .B(n489), .ZN(n492) );
  INVD0 U662 ( .I(n2400), .ZN(n227) );
  NR2D0 U663 ( .A1(n679), .A2(n678), .ZN(n683) );
  INVD0 U664 ( .I(n424), .ZN(n261) );
  NR2XD0 U665 ( .A1(n99), .A2(n98), .ZN(n123) );
  NR2XD0 U666 ( .A1(n122), .A2(n121), .ZN(n128) );
  INVD0 U667 ( .I(n681), .ZN(n652) );
  INVD0 U668 ( .I(n578), .ZN(n561) );
  INVD0 U669 ( .I(n580), .ZN(n560) );
  NR2XD0 U670 ( .A1(n204), .A2(n203), .ZN(n2410) );
  INVD0 U671 ( .I(n679), .ZN(n653) );
  NR2XD0 U672 ( .A1(n22), .A2(n21), .ZN(n484) );
  NR2D0 U673 ( .A1(n25), .A2(n24), .ZN(n542) );
  BUFFD0 U674 ( .I(x_mantissa[8]), .Z(n37) );
  BUFFD0 U675 ( .I(x_mantissa[17]), .Z(n46) );
  BUFFD0 U676 ( .I(x_mantissa[18]), .Z(n47) );
  CKND2D0 U677 ( .A1(n9), .A2(n8), .ZN(n77) );
  NR2D0 U678 ( .A1(n10), .A2(n9), .ZN(n83) );
  BUFFD0 U679 ( .I(x_mantissa[21]), .Z(n50) );
  NR2D0 U680 ( .A1(n13), .A2(n12), .ZN(n98) );
  NR2D0 U681 ( .A1(n15), .A2(n14), .ZN(n121) );
  NR2XD0 U682 ( .A1(n14), .A2(n13), .ZN(n122) );
  BUFFD0 U683 ( .I(shared_s4[4]), .Z(n59) );
  BUFFD0 U684 ( .I(shared_s4[6]), .Z(n57) );
  BUFFD1 U685 ( .I(shared_s4[19]), .Z(n56) );
  BUFFD1 U686 ( .I(shared_s4[20]), .Z(n55) );
  BUFFD1 U687 ( .I(shared_s4[21]), .Z(n54) );
  BUFFD0 U688 ( .I(divide_s5), .Z(n872) );
  BUFFD0 U689 ( .I(divide_s5), .Z(n876) );
  BUFFD0 U690 ( .I(y_mantissa[21]), .Z(n28) );
  BUFFD0 U691 ( .I(y_mantissa[18]), .Z(n25) );
  BUFFD0 U692 ( .I(y_mantissa[19]), .Z(n26) );
  BUFFD0 U693 ( .I(y_mantissa[16]), .Z(n23) );
  BUFFD0 U694 ( .I(y_mantissa[17]), .Z(n24) );
  BUFFD0 U695 ( .I(y_mantissa[14]), .Z(n21) );
  BUFFD0 U696 ( .I(y_mantissa[15]), .Z(n22) );
  BUFFD0 U697 ( .I(y_mantissa[12]), .Z(n19) );
  BUFFD0 U698 ( .I(y_mantissa[13]), .Z(n20) );
  BUFFD0 U699 ( .I(y_mantissa[10]), .Z(n17) );
  BUFFD0 U700 ( .I(y_mantissa[11]), .Z(n18) );
  BUFFD0 U701 ( .I(y_mantissa[8]), .Z(n15) );
  BUFFD0 U702 ( .I(y_mantissa[9]), .Z(n16) );
  BUFFD0 U703 ( .I(y_mantissa[6]), .Z(n13) );
  BUFFD0 U704 ( .I(y_mantissa[7]), .Z(n14) );
  BUFFD0 U705 ( .I(y_mantissa[4]), .Z(n11) );
  BUFFD0 U706 ( .I(y_mantissa[5]), .Z(n12) );
  BUFFD0 U707 ( .I(y_mantissa[2]), .Z(n9) );
  BUFFD0 U708 ( .I(y_mantissa[3]), .Z(n10) );
  BUFFD0 U709 ( .I(y_mantissa[1]), .Z(n8) );
  BUFFD0 U710 ( .I(x_mantissa[22]), .Z(n51) );
  BUFFD0 U711 ( .I(x_mantissa[20]), .Z(n49) );
  BUFFD0 U712 ( .I(y_mantissa[20]), .Z(n27) );
  BUFFD0 U713 ( .I(x_mantissa[16]), .Z(n45) );
  BUFFD0 U714 ( .I(x_mantissa[15]), .Z(n44) );
  BUFFD0 U715 ( .I(x_mantissa[14]), .Z(n43) );
  BUFFD0 U716 ( .I(x_mantissa[13]), .Z(n42) );
  BUFFD0 U717 ( .I(x_mantissa[12]), .Z(n41) );
  BUFFD0 U718 ( .I(x_mantissa[11]), .Z(n40) );
  BUFFD0 U719 ( .I(x_mantissa[10]), .Z(n39) );
  BUFFD0 U720 ( .I(x_mantissa[9]), .Z(n38) );
  BUFFD0 U721 ( .I(x_mantissa[7]), .Z(n36) );
  BUFFD0 U722 ( .I(x_mantissa[1]), .Z(n30) );
  BUFFD0 U723 ( .I(x_mantissa[2]), .Z(n31) );
  BUFFD0 U724 ( .I(x_mantissa[3]), .Z(n32) );
  BUFFD0 U725 ( .I(x_mantissa[5]), .Z(n34) );
  BUFFD0 U726 ( .I(x_mantissa[4]), .Z(n33) );
  BUFFD0 U727 ( .I(y_mantissa[22]), .Z(n29) );
  BUFFD0 U728 ( .I(x_mantissa[19]), .Z(n48) );
  BUFFD0 U729 ( .I(x_mantissa[6]), .Z(n35) );
  INVD0 U731 ( .I(n702), .ZN(n52) );
  INVD0 U732 ( .I(n702), .ZN(n53) );
  NR2D0 U733 ( .A1(n568), .A2(n48), .ZN(n641) );
  NR2D0 U734 ( .A1(n570), .A2(n48), .ZN(n597) );
  OR2D0 U735 ( .A1(n189), .A2(n35), .Z(n311) );
  CKND2D0 U736 ( .A1(n106), .A2(n35), .ZN(n152) );
  OR2D0 U737 ( .A1(n106), .A2(n35), .Z(n153) );
  BUFFD1 U738 ( .I(shared_s4[5]), .Z(n58) );
  OR2D0 U739 ( .A1(n9), .A2(n8), .Z(n61) );
  OR2D0 U740 ( .A1(n691), .A2(n694), .Z(n64) );
  NR2D0 U741 ( .A1(n11), .A2(n10), .ZN(n72) );
  NR2D0 U742 ( .A1(n83), .A2(n72), .ZN(n69) );
  CKND2D0 U743 ( .A1(n77), .A2(n79), .ZN(n71) );
  CKND2D0 U744 ( .A1(n73), .A2(n84), .ZN(n68) );
  INVD0 U745 ( .I(n99), .ZN(n94) );
  INVD0 U746 ( .I(n71), .ZN(n87) );
  INVD0 U747 ( .I(n72), .ZN(n74) );
  CKND2D0 U748 ( .A1(n74), .A2(n73), .ZN(n75) );
  XNR2D0 U749 ( .A1(n76), .A2(n75), .ZN(n346) );
  NR2D0 U750 ( .A1(n182), .A2(n180), .ZN(n92) );
  CKND2D0 U751 ( .A1(n61), .A2(n77), .ZN(n78) );
  XOR2D0 U752 ( .A1(n78), .A2(n79), .Z(n327) );
  OR2D0 U753 ( .A1(n81), .A2(n30), .Z(n166) );
  OR2D0 U754 ( .A1(n8), .A2(y_mantissa[0]), .Z(n80) );
  CKAN2D0 U755 ( .A1(n80), .A2(n79), .Z(n329) );
  INVD0 U756 ( .I(n170), .ZN(n167) );
  INVD0 U757 ( .I(n165), .ZN(n82) );
  INVD0 U758 ( .I(n83), .ZN(n85) );
  CKND2D0 U759 ( .A1(n85), .A2(n84), .ZN(n86) );
  XOR2D0 U760 ( .A1(n87), .A2(n86), .Z(n321) );
  INVD0 U761 ( .I(n100), .ZN(n93) );
  INVD0 U762 ( .I(n98), .ZN(n95) );
  CKND2D0 U763 ( .A1(n101), .A2(n100), .ZN(n127) );
  INVD0 U764 ( .I(n122), .ZN(n102) );
  INVD0 U765 ( .I(n123), .ZN(n110) );
  NR2D0 U766 ( .A1(n110), .A2(n122), .ZN(n113) );
  INVD0 U767 ( .I(n127), .ZN(n111) );
  INVD0 U768 ( .I(n121), .ZN(n115) );
  CKND2D0 U769 ( .A1(n125), .A2(n124), .ZN(n126) );
  INVD0 U770 ( .I(n204), .ZN(n132) );
  INVD0 U771 ( .I(n139), .ZN(n142) );
  INVD0 U772 ( .I(n203), .ZN(n145) );
  INVD0 U773 ( .I(n160), .ZN(n162) );
  XOR2D0 U774 ( .A1(n164), .A2(n163), .Z(n173) );
  OR2D0 U775 ( .A1(n173), .A2(n32), .Z(n317) );
  XNR2D0 U776 ( .A1(n168), .A2(n167), .ZN(n172) );
  NR2D0 U777 ( .A1(n172), .A2(n31), .ZN(n323) );
  OR2D0 U778 ( .A1(n169), .A2(x_mantissa[0]), .Z(n171) );
  CKAN2D0 U779 ( .A1(n171), .A2(n170), .Z(n332) );
  INVD0 U780 ( .I(n316), .ZN(n174) );
  INVD0 U781 ( .I(n180), .ZN(n175) );
  INVD0 U782 ( .I(n182), .ZN(n184) );
  OR2D0 U783 ( .A1(n187), .A2(n34), .Z(n351) );
  INVD0 U784 ( .I(n350), .ZN(n188) );
  INVD0 U785 ( .I(n297), .ZN(n197) );
  INVD0 U786 ( .I(n2410), .ZN(n208) );
  CKND2D0 U787 ( .A1(n206), .A2(n205), .ZN(n2450) );
  INVD0 U788 ( .I(n2420), .ZN(n226) );
  INVD0 U789 ( .I(n2390), .ZN(n230) );
  AOI21D1 U790 ( .A1(n377), .A2(n411), .B(n416), .ZN(n286) );
  CKND2D0 U791 ( .A1(n2430), .A2(n2420), .ZN(n2440) );
  INVD0 U792 ( .I(n437), .ZN(n259) );
  AOI21D1 U793 ( .A1(n446), .A2(n259), .B(n258), .ZN(n422) );
  INVD0 U794 ( .I(n486), .ZN(n448) );
  INVD0 U795 ( .I(n425), .ZN(n260) );
  INVD0 U796 ( .I(n423), .ZN(n264) );
  INVD0 U797 ( .I(n593), .ZN(n473) );
  CKAN2D0 U798 ( .A1(n273), .A2(n473), .Z(n274) );
  INVD0 U799 ( .I(n277), .ZN(n279) );
  INVD0 U800 ( .I(n467), .ZN(n389) );
  CKAN2D0 U801 ( .A1(n282), .A2(n389), .Z(n283) );
  INVD0 U802 ( .I(n410), .ZN(n284) );
  CKAN2D0 U803 ( .A1(n287), .A2(n473), .Z(n288) );
  XOR2D0 U804 ( .A1(n288), .A2(n379), .Z(n402) );
  CKAN2D0 U805 ( .A1(n295), .A2(n389), .Z(n296) );
  XOR2D0 U806 ( .A1(n296), .A2(n391), .Z(n370) );
  INVD0 U807 ( .I(n593), .ZN(n354) );
  CKAN2D0 U808 ( .A1(n300), .A2(n354), .Z(n301) );
  XOR2D0 U809 ( .A1(n301), .A2(n391), .Z(n368) );
  NR2D0 U810 ( .A1(n839), .A2(n837), .ZN(n373) );
  CKAN2D0 U811 ( .A1(n308), .A2(n354), .Z(n309) );
  XOR2D0 U812 ( .A1(n309), .A2(n391), .Z(n363) );
  CKAN2D0 U813 ( .A1(n314), .A2(n473), .Z(n315) );
  XOR2D0 U814 ( .A1(n315), .A2(n356), .Z(n361) );
  XNR2D0 U815 ( .A1(n319), .A2(n318), .ZN(n339) );
  INVD0 U816 ( .I(n320), .ZN(n704) );
  CKAN2D0 U817 ( .A1(n321), .A2(n704), .Z(n322) );
  XOR2D0 U818 ( .A1(n322), .A2(n356), .Z(n338) );
  OR2D0 U819 ( .A1(n339), .A2(n338), .Z(n864) );
  INVD0 U820 ( .I(n323), .ZN(n325) );
  XOR2D0 U821 ( .A1(n326), .A2(n333), .Z(n336) );
  CKAN2D0 U822 ( .A1(n327), .A2(n704), .Z(n328) );
  XOR2D0 U823 ( .A1(n328), .A2(n330), .Z(n335) );
  NR2D0 U824 ( .A1(n336), .A2(n335), .ZN(n867) );
  CKAN2D0 U825 ( .A1(n329), .A2(n704), .Z(n331) );
  XOR2D0 U826 ( .A1(n331), .A2(n330), .Z(n791) );
  OR2D0 U827 ( .A1(n332), .A2(n30), .Z(n334) );
  CKAN2D0 U828 ( .A1(n334), .A2(n333), .Z(n790) );
  INVD0 U829 ( .I(n870), .ZN(n337) );
  INVD0 U830 ( .I(n863), .ZN(n340) );
  INVD0 U831 ( .I(n341), .ZN(n343) );
  CKAN2D0 U832 ( .A1(n346), .A2(n354), .Z(n347) );
  XOR2D0 U833 ( .A1(n347), .A2(n356), .Z(n348) );
  CKAN2D0 U834 ( .A1(n355), .A2(n354), .Z(n357) );
  XOR2D0 U835 ( .A1(n357), .A2(n356), .Z(n358) );
  OR2D0 U836 ( .A1(n359), .A2(n358), .Z(n855) );
  INVD0 U837 ( .I(n854), .ZN(n360) );
  INVD0 U838 ( .I(n846), .ZN(n365) );
  CKAN2D0 U839 ( .A1(n378), .A2(n389), .Z(n380) );
  INVD0 U840 ( .I(n384), .ZN(n386) );
  CKAN2D0 U841 ( .A1(n390), .A2(n389), .Z(n392) );
  XOR2D0 U842 ( .A1(n392), .A2(n391), .Z(n393) );
  INVD0 U843 ( .I(n818), .ZN(n405) );
  CKND2D0 U844 ( .A1(n426), .A2(n425), .ZN(n490) );
  INVD0 U845 ( .I(n484), .ZN(n429) );
  INVD0 U846 ( .I(n438), .ZN(n441) );
  AOI21D1 U847 ( .A1(n446), .A2(n519), .B(n525), .ZN(n482) );
  INVD0 U848 ( .I(n485), .ZN(n447) );
  INVD0 U849 ( .I(n490), .ZN(n449) );
  INVD0 U850 ( .I(n483), .ZN(n456) );
  CKAN2D0 U851 ( .A1(n468), .A2(n616), .Z(n470) );
  CKAN2D0 U852 ( .A1(n474), .A2(n473), .Z(n475) );
  INVD0 U853 ( .I(n536), .ZN(n481) );
  OAI21D1 U854 ( .A1(n541), .A2(n481), .B(n480), .ZN(n610) );
  CKND2D0 U855 ( .A1(n488), .A2(n487), .ZN(n489) );
  INVD0 U856 ( .I(n543), .ZN(n498) );
  CKAN2D0 U857 ( .A1(n507), .A2(n616), .Z(n508) );
  INVD0 U858 ( .I(n542), .ZN(n529) );
  INVD0 U859 ( .I(n579), .ZN(n547) );
  CKND2D0 U860 ( .A1(n545), .A2(n544), .ZN(n583) );
  INVD0 U861 ( .I(n642), .ZN(n559) );
  INVD0 U862 ( .I(n577), .ZN(n564) );
  CKND2D0 U863 ( .A1(n581), .A2(n580), .ZN(n582) );
  CKAN2D0 U864 ( .A1(n594), .A2(n719), .Z(n596) );
  CKAN2D0 U865 ( .A1(n605), .A2(n616), .Z(n606) );
  CKAN2D0 U866 ( .A1(n624), .A2(n719), .Z(n625) );
  INVD0 U867 ( .I(n807), .ZN(n631) );
  AOI21D1 U868 ( .A1(n631), .A2(n811), .B(n630), .ZN(n755) );
  INVD0 U869 ( .I(n680), .ZN(n651) );
  INVD0 U870 ( .I(n678), .ZN(n656) );
  INVD0 U871 ( .I(n683), .ZN(n698) );
  OR2D0 U872 ( .A1(n680), .A2(n698), .Z(n701) );
  CKND2D0 U873 ( .A1(n682), .A2(n681), .ZN(n696) );
  INVD0 U874 ( .I(n694), .ZN(n688) );
  NR2D0 U875 ( .A1(n696), .A2(n29), .ZN(n697) );
  OA21D0 U876 ( .A1(n699), .A2(n698), .B(n697), .Z(n700) );
  CKAN2D0 U877 ( .A1(n705), .A2(n704), .Z(n706) );
  INVD0 U878 ( .I(n744), .ZN(n727) );
  INVD0 U879 ( .I(n793), .ZN(n730) );
  NR2D0 U880 ( .A1(n730), .A2(n729), .ZN(n731) );
  HA1D0 U881 ( .A(n743), .B(n742), .S(n745) );
  AOI21D1 U882 ( .A1(n66), .A2(n801), .B(n751), .ZN(n795) );
  OAI21D1 U883 ( .A1(n809), .A2(n756), .B(n755), .ZN(n806) );
  INVD0 U884 ( .I(n837), .ZN(n788) );
  FA1D0 U885 ( .A(n792), .B(n791), .CI(n790), .CO(n870), .S(base_c1[0]) );
  INVD0 U886 ( .I(n839), .ZN(n841) );
  INVD0 U887 ( .I(n844), .ZN(n852) );
  XNR2D0 U888 ( .A1(n853), .A2(n852), .ZN(base_c1[5]) );
  XNR2D0 U889 ( .A1(n857), .A2(n856), .ZN(base_c1[4]) );
  INVD0 U890 ( .I(n858), .ZN(n860) );
  XOR2D0 U891 ( .A1(n862), .A2(n861), .Z(base_c1[3]) );
  XNR2D0 U892 ( .A1(n866), .A2(n865), .ZN(base_c1[2]) );
  INVD0 U893 ( .I(n867), .ZN(n869) );
  XNR2D0 U894 ( .A1(n871), .A2(n870), .ZN(base_c1[1]) );
  MUX2D0 U895 ( .I0(shared_s5[0]), .I1(divided_s5[0]), .S(n872), .Z(N232) );
  BUFFD0 U896 ( .I(divide_s5), .Z(n878) );
  BUFFD0 U897 ( .I(n876), .Z(n875) );
  MUX2D0 U898 ( .I0(shared_s5[11]), .I1(divided_s5[11]), .S(n875), .Z(N243) );
  MUX2D0 U899 ( .I0(shared_s5[10]), .I1(divided_s5[10]), .S(n875), .Z(N242) );
  MUX2D0 U900 ( .I0(shared_s5[9]), .I1(divided_s5[9]), .S(n875), .Z(N241) );
  BUFFD0 U901 ( .I(n872), .Z(n874) );
  MUX2D0 U902 ( .I0(shared_s5[7]), .I1(divided_s5[7]), .S(n874), .Z(N239) );
  MUX2D0 U903 ( .I0(shared_s5[6]), .I1(divided_s5[6]), .S(n874), .Z(N238) );
  MUX2D0 U904 ( .I0(shared_s5[5]), .I1(divided_s5[5]), .S(n874), .Z(N237) );
  BUFFD0 U905 ( .I(n872), .Z(n873) );
  MUX2D0 U906 ( .I0(shared_s5[4]), .I1(divided_s5[4]), .S(n873), .Z(N236) );
  MUX2D0 U907 ( .I0(shared_s5[1]), .I1(divided_s5[1]), .S(n873), .Z(N233) );
  MUX2D0 U908 ( .I0(shared_s5[2]), .I1(divided_s5[2]), .S(n873), .Z(N234) );
  MUX2D0 U909 ( .I0(shared_s5[3]), .I1(divided_s5[3]), .S(n873), .Z(N235) );
  MUX2D0 U910 ( .I0(shared_s5[8]), .I1(divided_s5[8]), .S(n874), .Z(N240) );
  MUX2D0 U911 ( .I0(shared_s5[12]), .I1(divided_s5[12]), .S(n875), .Z(N244) );
  BUFFD0 U912 ( .I(n876), .Z(n877) );
  MUX2D0 U913 ( .I0(shared_s5[19]), .I1(divided_s5[19]), .S(n877), .Z(N251) );
  MUX2D0 U914 ( .I0(shared_s5[14]), .I1(divided_s5[14]), .S(n876), .Z(N246) );
  MUX2D0 U915 ( .I0(shared_s5[15]), .I1(divided_s5[15]), .S(n876), .Z(N247) );
  MUX2D0 U916 ( .I0(shared_s5[13]), .I1(divided_s5[13]), .S(n872), .Z(N245) );
  MUX2D0 U917 ( .I0(shared_s5[17]), .I1(divided_s5[17]), .S(n877), .Z(N249) );
  MUX2D0 U918 ( .I0(shared_s5[20]), .I1(divided_s5[20]), .S(n877), .Z(N252) );
  MUX2D0 U919 ( .I0(shared_s5[16]), .I1(divided_s5[16]), .S(divide_s5), .Z(
        N248) );
  MUX2D0 U920 ( .I0(shared_s5[18]), .I1(divided_s5[18]), .S(n877), .Z(N250) );
  BUFFD0 U921 ( .I(n878), .Z(n879) );
  MUX2D0 U922 ( .I0(shared_s5[23]), .I1(divided_s5[23]), .S(n879), .Z(N255) );
  MUX2D0 U923 ( .I0(shared_s5[22]), .I1(divided_s5[22]), .S(n879), .Z(N254) );
  MUX2D0 U924 ( .I0(shared_s5[24]), .I1(divided_s5[24]), .S(n879), .Z(N256) );
  MUX2D0 U925 ( .I0(shared_s5[21]), .I1(divided_s5[21]), .S(n879), .Z(N253) );
endmodule


module oadm_dm_fixed_APPROX_LEVEL0 ( clk, x, y, divide_mode, result );
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
         C2_Z_3, C2_Z_2, C2_Z_1, C2_Z_0, DP_OP_58J1_127_7635_n50,
         DP_OP_58J1_127_7635_n49, DP_OP_58J1_127_7635_n48,
         DP_OP_58J1_127_7635_n47, DP_OP_58J1_127_7635_n46,
         DP_OP_58J1_127_7635_n45, DP_OP_58J1_127_7635_n44,
         DP_OP_58J1_127_7635_n43, DP_OP_58J1_127_7635_n10,
         DP_OP_58J1_127_7635_n9, DP_OP_58J1_127_7635_n8,
         DP_OP_58J1_127_7635_n7, DP_OP_58J1_127_7635_n6,
         DP_OP_58J1_127_7635_n5, DP_OP_58J1_127_7635_n4,
         DP_OP_58J1_127_7635_n3, DP_OP_57J1_126_2635_n8,
         DP_OP_57J1_126_2635_n7, DP_OP_57J1_126_2635_n6,
         DP_OP_57J1_126_2635_n5, DP_OP_57J1_126_2635_n4,
         DP_OP_57J1_126_2635_n3, DP_OP_57J1_126_2635_n2,
         DP_OP_57J1_126_2635_n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
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
         n280, n281, n282, n283;
  wire   [28:0] core_value;
  wire   [10:0] exponent_s1;
  wire   [10:0] exponent_s2;
  wire   [10:0] exponent_s3;
  wire   [10:0] exponent_s4;
  wire   [11:0] exponent_s6;
  wire   [10:0] exponent_s5;

  oadm_core_fixed_APPROX_LEVEL0 mantissa_core ( .clk(clk), .x_mantissa({1'b0, 
        x[22:0]}), .y_mantissa({1'b0, y[22:0]}), .divide_mode(n283), 
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
  DFQD1 exponent_s1_reg_10_ ( .D(n275), .CP(clk), .Q(exponent_s1[10]) );
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
  FA1D0 DP_OP_58J1_127_7635_U11 ( .A(n276), .B(DP_OP_58J1_127_7635_n44), .CI(
        DP_OP_58J1_127_7635_n10), .CO(DP_OP_58J1_127_7635_n9), .S(N63) );
  FA1D0 DP_OP_58J1_127_7635_U10 ( .A(n277), .B(DP_OP_58J1_127_7635_n45), .CI(
        DP_OP_58J1_127_7635_n9), .CO(DP_OP_58J1_127_7635_n8), .S(N64) );
  FA1D0 DP_OP_58J1_127_7635_U9 ( .A(n278), .B(DP_OP_58J1_127_7635_n46), .CI(
        DP_OP_58J1_127_7635_n8), .CO(DP_OP_58J1_127_7635_n7), .S(N65) );
  FA1D0 DP_OP_58J1_127_7635_U8 ( .A(n279), .B(DP_OP_58J1_127_7635_n47), .CI(
        DP_OP_58J1_127_7635_n7), .CO(DP_OP_58J1_127_7635_n6), .S(N66) );
  FA1D0 DP_OP_58J1_127_7635_U7 ( .A(n280), .B(DP_OP_58J1_127_7635_n48), .CI(
        DP_OP_58J1_127_7635_n6), .CO(DP_OP_58J1_127_7635_n5), .S(N67) );
  FA1D0 DP_OP_58J1_127_7635_U6 ( .A(n281), .B(DP_OP_58J1_127_7635_n49), .CI(
        DP_OP_58J1_127_7635_n5), .CO(DP_OP_58J1_127_7635_n4), .S(N68) );
  FA1D0 DP_OP_58J1_127_7635_U5 ( .A(n282), .B(DP_OP_58J1_127_7635_n50), .CI(
        DP_OP_58J1_127_7635_n4), .CO(DP_OP_58J1_127_7635_n3), .S(N69) );
  HA1D0 DP_OP_57J1_126_2635_U9 ( .A(x[23]), .B(C2_Z_0), .CO(
        DP_OP_57J1_126_2635_n8), .S(DP_OP_58J1_127_7635_n43) );
  FA1D0 DP_OP_57J1_126_2635_U8 ( .A(x[24]), .B(C2_Z_1), .CI(
        DP_OP_57J1_126_2635_n8), .CO(DP_OP_57J1_126_2635_n7), .S(
        DP_OP_58J1_127_7635_n44) );
  FA1D0 DP_OP_57J1_126_2635_U7 ( .A(x[25]), .B(C2_Z_2), .CI(
        DP_OP_57J1_126_2635_n7), .CO(DP_OP_57J1_126_2635_n6), .S(
        DP_OP_58J1_127_7635_n45) );
  FA1D0 DP_OP_57J1_126_2635_U6 ( .A(x[26]), .B(C2_Z_3), .CI(
        DP_OP_57J1_126_2635_n6), .CO(DP_OP_57J1_126_2635_n5), .S(
        DP_OP_58J1_127_7635_n46) );
  FA1D0 DP_OP_57J1_126_2635_U5 ( .A(x[27]), .B(C2_Z_4), .CI(
        DP_OP_57J1_126_2635_n5), .CO(DP_OP_57J1_126_2635_n4), .S(
        DP_OP_58J1_127_7635_n47) );
  FA1D0 DP_OP_57J1_126_2635_U4 ( .A(x[28]), .B(C2_Z_5), .CI(
        DP_OP_57J1_126_2635_n4), .CO(DP_OP_57J1_126_2635_n3), .S(
        DP_OP_58J1_127_7635_n48) );
  FA1D0 DP_OP_57J1_126_2635_U3 ( .A(x[29]), .B(C2_Z_6), .CI(
        DP_OP_57J1_126_2635_n3), .CO(DP_OP_57J1_126_2635_n2), .S(
        DP_OP_58J1_127_7635_n49) );
  FA1D0 DP_OP_57J1_126_2635_U2 ( .A(x[30]), .B(C2_Z_7), .CI(
        DP_OP_57J1_126_2635_n2), .CO(DP_OP_57J1_126_2635_n1), .S(
        DP_OP_58J1_127_7635_n50) );
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
  INVD0 U3 ( .I(n89), .ZN(n90) );
  INVD0 U4 ( .I(n228), .ZN(n78) );
  AN2XD1 U5 ( .A1(n80), .A2(n231), .Z(n110) );
  INVD0 U6 ( .I(divide_mode), .ZN(n204) );
  INVD0 U7 ( .I(n264), .ZN(n620) );
  CKND2D0 U8 ( .A1(n650), .A2(n640), .ZN(n226) );
  INVD0 U9 ( .I(n218), .ZN(n127) );
  INVD0 U10 ( .I(n206), .ZN(n283) );
  INVD0 U11 ( .I(n267), .ZN(n34) );
  INVD0 U12 ( .I(n255), .ZN(n54) );
  OR2D0 U13 ( .A1(infinity_s6), .A2(n224), .Z(n233) );
  INVD0 U14 ( .I(n264), .ZN(n630) );
  CKND2D0 U15 ( .A1(n130), .A2(n226), .ZN(n260) );
  INVD0 U16 ( .I(n257), .ZN(n46) );
  CKND2D0 U17 ( .A1(n130), .A2(n225), .ZN(n267) );
  CKAN2D0 U18 ( .A1(n228), .A2(n130), .Z(n255) );
  INVD1 U19 ( .I(n260), .ZN(n36) );
  CKAN2D0 U20 ( .A1(n97), .A2(n122), .Z(n126) );
  INVD1 U21 ( .I(n102), .ZN(n222) );
  XOR2D0 U22 ( .A1(n50), .A2(n84), .Z(n109) );
  ND2D1 U23 ( .A1(n129), .A2(n79), .ZN(n231) );
  NR2D1 U24 ( .A1(core_value[25]), .A2(core_value[24]), .ZN(n640) );
  NR2D1 U25 ( .A1(core_value[27]), .A2(core_value[26]), .ZN(n650) );
  OAI211D0 U26 ( .A1(n1660), .A2(n54), .B(n1650), .C(n1640), .ZN(N166) );
  OAI211D0 U27 ( .A1(n1570), .A2(n55), .B(n147), .C(n146), .ZN(N160) );
  INVD1 U28 ( .I(n42), .ZN(n30) );
  INVD1 U29 ( .I(n59), .ZN(n27) );
  CKBD1 U30 ( .I(n267), .Z(n257) );
  OR2D1 U31 ( .A1(n231), .A2(n128), .Z(n261) );
  NR2D2 U32 ( .A1(n233), .A2(invalid_s6), .ZN(n130) );
  ND2D1 U33 ( .A1(n219), .A2(n127), .ZN(n224) );
  AO211D0 U34 ( .A1(n219), .A2(n218), .B(infinity_s6), .C(invalid_s6), .Z(n223) );
  CKXOR2D1 U35 ( .A1(n86), .A2(n85), .Z(n120) );
  OR2XD1 U36 ( .A1(n94), .A2(n93), .Z(n124) );
  FA1D0 U37 ( .A(exponent_s6[0]), .B(n53), .CI(n109), .CO(n113), .S(n111) );
  XOR2D0 U38 ( .A1(n50), .A2(n81), .Z(n114) );
  NR2D0 U39 ( .A1(DP_OP_58J1_127_7635_n3), .A2(DP_OP_57J1_126_2635_n1), .ZN(
        n275) );
  INVD1 U40 ( .I(n110), .ZN(n50) );
  NR2XD1 U41 ( .A1(n226), .A2(core_value[23]), .ZN(n129) );
  OAI211D0 U42 ( .A1(n172), .A2(n25), .B(n1710), .C(n1700), .ZN(N169) );
  OAI211D0 U43 ( .A1(n145), .A2(n56), .B(n144), .C(n143), .ZN(N159) );
  OAI211D0 U44 ( .A1(n133), .A2(n55), .B(n132), .C(n131), .ZN(N153) );
  OAI211D0 U45 ( .A1(n136), .A2(n26), .B(n135), .C(n134), .ZN(N155) );
  OAI211D0 U46 ( .A1(n1600), .A2(n26), .B(n1590), .C(n1580), .ZN(N161) );
  OAI211D0 U47 ( .A1(n139), .A2(n25), .B(n138), .C(n137), .ZN(N156) );
  OAI211D0 U48 ( .A1(n1690), .A2(n56), .B(n1680), .C(n1670), .ZN(N167) );
  OAI211D0 U49 ( .A1(n142), .A2(n54), .B(n141), .C(n140), .ZN(N157) );
  OAI211D0 U50 ( .A1(n1630), .A2(n55), .B(n1620), .C(n1610), .ZN(N164) );
  BUFFD1 U51 ( .I(n262), .Z(n58) );
  BUFFD1 U52 ( .I(n262), .Z(n57) );
  BUFFD1 U53 ( .I(n262), .Z(n59) );
  INVD0 U54 ( .I(n255), .ZN(n56) );
  INVD0 U55 ( .I(n255), .ZN(n55) );
  OAI21D0 U56 ( .A1(n105), .A2(n49), .B(n37), .ZN(n1520) );
  OAI21D0 U57 ( .A1(n220), .A2(n48), .B(n37), .ZN(n148) );
  OAI21D0 U58 ( .A1(n108), .A2(n49), .B(n38), .ZN(n1530) );
  OAI21D0 U59 ( .A1(n98), .A2(n224), .B(n37), .ZN(n149) );
  OAI21D0 U60 ( .A1(n116), .A2(n49), .B(n38), .ZN(n1540) );
  OAI21D0 U61 ( .A1(n221), .A2(n48), .B(n38), .ZN(n1500) );
  OAI21D0 U62 ( .A1(n112), .A2(n48), .B(n37), .ZN(n1550) );
  OAI21D0 U63 ( .A1(n222), .A2(n224), .B(n38), .ZN(n1510) );
  OAI21D0 U64 ( .A1(n234), .A2(n233), .B(n232), .ZN(n1560) );
  INVD1 U65 ( .I(n223), .ZN(n38) );
  INVD1 U66 ( .I(n223), .ZN(n37) );
  CKND2D0 U67 ( .A1(n219), .A2(n127), .ZN(n48) );
  CKND2D0 U68 ( .A1(n219), .A2(n127), .ZN(n49) );
  AO21D1 U69 ( .A1(n126), .A2(n125), .B(n124), .Z(n218) );
  IND2D1 U70 ( .A1(n91), .B1(n90), .ZN(n94) );
  INVD0 U71 ( .I(n123), .ZN(n220) );
  ND3D0 U72 ( .A1(n221), .A2(n222), .A3(n117), .ZN(n118) );
  XOR2D0 U73 ( .A1(n51), .A2(exponent_s6[11]), .Z(n85) );
  INVD1 U74 ( .I(n110), .ZN(n51) );
  INVD1 U75 ( .I(n110), .ZN(n52) );
  ND3D0 U76 ( .A1(n83), .A2(n82), .A3(n231), .ZN(n84) );
  ND2D1 U77 ( .A1(n83), .A2(n78), .ZN(n81) );
  OAI31D0 U78 ( .A1(n74), .A2(n73), .A3(n72), .B(n71), .ZN(n121) );
  ND2D1 U79 ( .A1(n77), .A2(n76), .ZN(n227) );
  AOI21D0 U80 ( .A1(n198), .A2(n203), .B(n197), .ZN(n199) );
  CKND2D0 U81 ( .A1(n75), .A2(n133), .ZN(n73) );
  ND2D1 U82 ( .A1(n129), .A2(n660), .ZN(n79) );
  NR2D0 U83 ( .A1(n129), .A2(n226), .ZN(n225) );
  NR2D0 U84 ( .A1(n217), .A2(n216), .ZN(C2_Z_7) );
  INVD0 U85 ( .I(n226), .ZN(n82) );
  CKND2D0 U86 ( .A1(n207), .A2(n206), .ZN(C2_Z_0) );
  CKND2D0 U87 ( .A1(n208), .A2(n210), .ZN(C2_Z_1) );
  CKND2D0 U88 ( .A1(n209), .A2(n210), .ZN(C2_Z_2) );
  CKND2D0 U89 ( .A1(n211), .A2(n210), .ZN(C2_Z_3) );
  CKND2D0 U90 ( .A1(n212), .A2(n214), .ZN(C2_Z_4) );
  CKND2D0 U91 ( .A1(n213), .A2(n214), .ZN(C2_Z_5) );
  CKND2D0 U92 ( .A1(n215), .A2(n214), .ZN(C2_Z_6) );
  ND4D0 U93 ( .A1(n700), .A2(n690), .A3(n680), .A4(n670), .ZN(n74) );
  BUFFD0 U94 ( .I(n204), .Z(n210) );
  BUFFD0 U95 ( .I(n204), .Z(n214) );
  BUFFD0 U96 ( .I(core_value[19]), .Z(n22) );
  BUFFD0 U97 ( .I(core_value[20]), .Z(n4) );
  BUFFD0 U98 ( .I(core_value[18]), .Z(n21) );
  INVD0 U99 ( .I(invalid_s6), .ZN(n232) );
  INVD0 U100 ( .I(core_value[1]), .ZN(n133) );
  OR4D0 U101 ( .A1(core_value[2]), .A2(core_value[0]), .A3(core_value[18]), 
        .A4(core_value[20]), .Z(n72) );
  BUFFD0 U102 ( .I(core_value[0]), .Z(n2) );
  CKND2D0 U103 ( .A1(n174), .A2(n173), .ZN(n270) );
  INVD0 U105 ( .I(n133), .ZN(n3) );
  INVD0 U106 ( .I(n240), .ZN(n5) );
  INVD0 U107 ( .I(n136), .ZN(n6) );
  INVD0 U108 ( .I(n139), .ZN(n7) );
  INVD0 U109 ( .I(n142), .ZN(n8) );
  INVD0 U110 ( .I(n243), .ZN(n9) );
  INVD0 U111 ( .I(n145), .ZN(n10) );
  INVD0 U112 ( .I(n1570), .ZN(n11) );
  INVD0 U113 ( .I(n1600), .ZN(n12) );
  INVD0 U114 ( .I(n246), .ZN(n13) );
  INVD0 U115 ( .I(n249), .ZN(n14) );
  INVD0 U116 ( .I(n1630), .ZN(n15) );
  INVD0 U117 ( .I(n252), .ZN(n16) );
  INVD0 U118 ( .I(n1660), .ZN(n17) );
  INVD0 U119 ( .I(n1690), .ZN(n18) );
  INVD0 U120 ( .I(n256), .ZN(n19) );
  INVD0 U121 ( .I(n172), .ZN(n20) );
  OR4D0 U122 ( .A1(x[5]), .A2(x[19]), .A3(x[17]), .A4(x[21]), .Z(n192) );
  OR4D0 U123 ( .A1(x[2]), .A2(x[18]), .A3(x[6]), .A4(x[8]), .Z(n179) );
  INVD0 U124 ( .I(n82), .ZN(n23) );
  INVD1 U125 ( .I(n261), .ZN(n42) );
  INVD0 U126 ( .I(n54), .ZN(n24) );
  INVD0 U127 ( .I(n24), .ZN(n25) );
  INVD0 U128 ( .I(n24), .ZN(n26) );
  INVD0 U129 ( .I(n27), .ZN(n28) );
  INVD0 U130 ( .I(n27), .ZN(n29) );
  INVD0 U131 ( .I(n30), .ZN(n31) );
  INVD0 U132 ( .I(n30), .ZN(n32) );
  INVD0 U133 ( .I(n267), .ZN(n33) );
  INVD0 U134 ( .I(n260), .ZN(n35) );
  INVD0 U135 ( .I(n261), .ZN(n39) );
  INVD0 U136 ( .I(n261), .ZN(n40) );
  INVD0 U137 ( .I(n261), .ZN(n41) );
  INVD0 U138 ( .I(n257), .ZN(n43) );
  INVD0 U139 ( .I(n257), .ZN(n44) );
  INVD0 U140 ( .I(n257), .ZN(n45) );
  INVD0 U141 ( .I(n203), .ZN(n47) );
  INVD1 U142 ( .I(n110), .ZN(n53) );
  INVD1 U143 ( .I(n56), .ZN(n263) );
  INR2D1 U144 ( .A1(n227), .B1(n128), .ZN(n262) );
  CKBD1 U145 ( .I(n260), .Z(n264) );
  INVD1 U146 ( .I(n264), .ZN(n60) );
  INVD1 U147 ( .I(n264), .ZN(n61) );
  INVD0 U148 ( .I(core_value[21]), .ZN(n268) );
  INVD1 U149 ( .I(core_value[22]), .ZN(n660) );
  INR2D1 U150 ( .A1(core_value[21]), .B1(n79), .ZN(n228) );
  NR4D0 U151 ( .A1(core_value[12]), .A2(core_value[13]), .A3(core_value[14]), 
        .A4(core_value[11]), .ZN(n700) );
  NR4D0 U152 ( .A1(core_value[19]), .A2(core_value[15]), .A3(core_value[17]), 
        .A4(core_value[16]), .ZN(n690) );
  NR4D0 U153 ( .A1(core_value[4]), .A2(core_value[6]), .A3(core_value[5]), 
        .A4(core_value[3]), .ZN(n680) );
  NR4D0 U154 ( .A1(core_value[10]), .A2(core_value[8]), .A3(core_value[9]), 
        .A4(core_value[7]), .ZN(n670) );
  NR2XD0 U155 ( .A1(n79), .A2(core_value[21]), .ZN(n75) );
  NR2D0 U156 ( .A1(core_value[28]), .A2(zero_s6), .ZN(n71) );
  INVD1 U157 ( .I(n75), .ZN(n77) );
  INVD1 U158 ( .I(core_value[28]), .ZN(n76) );
  INVD1 U159 ( .I(n227), .ZN(n83) );
  INVD1 U160 ( .I(n81), .ZN(n80) );
  FA1D0 U161 ( .A(n52), .B(exponent_s6[9]), .CI(n87), .CO(n92), .S(n91) );
  FA1D0 U162 ( .A(n53), .B(exponent_s6[8]), .CI(n88), .CO(n87), .S(n89) );
  FA1D0 U163 ( .A(n53), .B(exponent_s6[10]), .CI(n92), .CO(n86), .S(n93) );
  FA1D0 U164 ( .A(n52), .B(exponent_s6[7]), .CI(n95), .CO(n88), .S(n123) );
  FA1D0 U165 ( .A(n51), .B(exponent_s6[6]), .CI(n96), .CO(n95), .S(n97) );
  INVD0 U166 ( .I(n97), .ZN(n98) );
  FA1D0 U167 ( .A(n52), .B(exponent_s6[5]), .CI(n99), .CO(n96), .S(n100) );
  INVD0 U168 ( .I(n100), .ZN(n221) );
  FA1D0 U169 ( .A(n53), .B(exponent_s6[4]), .CI(n101), .CO(n99), .S(n102) );
  FA1D0 U170 ( .A(n51), .B(exponent_s6[3]), .CI(n103), .CO(n101), .S(n104) );
  INVD0 U171 ( .I(n104), .ZN(n105) );
  FA1D0 U172 ( .A(n52), .B(exponent_s6[2]), .CI(n106), .CO(n103), .S(n107) );
  INVD0 U173 ( .I(n107), .ZN(n108) );
  INVD0 U174 ( .I(n111), .ZN(n112) );
  FA1D0 U175 ( .A(n114), .B(exponent_s6[1]), .CI(n113), .CO(n106), .S(n115) );
  INVD0 U176 ( .I(n115), .ZN(n116) );
  NR4D0 U177 ( .A1(n104), .A2(n107), .A3(n111), .A4(n115), .ZN(n117) );
  NR4D0 U178 ( .A1(n124), .A2(n123), .A3(n97), .A4(n118), .ZN(n119) );
  NR3D0 U179 ( .A1(n121), .A2(n120), .A3(n119), .ZN(n219) );
  NR3D0 U180 ( .A1(n221), .A2(n105), .A3(n116), .ZN(n122) );
  NR4D0 U181 ( .A1(n220), .A2(n222), .A3(n108), .A4(n112), .ZN(n125) );
  INVD1 U182 ( .I(n130), .ZN(n128) );
  AOI22D0 U183 ( .A1(core_value[2]), .A2(n40), .B1(core_value[0]), .B2(n29), 
        .ZN(n132) );
  AOI22D0 U184 ( .A1(n7), .A2(n35), .B1(n6), .B2(n34), .ZN(n131) );
  INVD0 U185 ( .I(core_value[3]), .ZN(n136) );
  AOI22D0 U186 ( .A1(n5), .A2(n57), .B1(core_value[4]), .B2(n32), .ZN(n135) );
  AOI22D0 U187 ( .A1(n9), .A2(n630), .B1(n8), .B2(n45), .ZN(n134) );
  INVD0 U188 ( .I(core_value[4]), .ZN(n139) );
  AOI22D0 U189 ( .A1(n8), .A2(n39), .B1(core_value[3]), .B2(n59), .ZN(n138) );
  AOI22D0 U190 ( .A1(n10), .A2(n620), .B1(n9), .B2(n46), .ZN(n137) );
  INVD0 U191 ( .I(core_value[5]), .ZN(n142) );
  AOI22D0 U192 ( .A1(n7), .A2(n262), .B1(core_value[6]), .B2(n41), .ZN(n141)
         );
  AOI22D0 U193 ( .A1(n11), .A2(n61), .B1(core_value[7]), .B2(n44), .ZN(n140)
         );
  INVD0 U194 ( .I(core_value[7]), .ZN(n145) );
  AOI22D0 U195 ( .A1(n11), .A2(n31), .B1(core_value[6]), .B2(n57), .ZN(n144)
         );
  AOI22D0 U196 ( .A1(n13), .A2(n35), .B1(n12), .B2(n43), .ZN(n143) );
  INVD0 U197 ( .I(core_value[8]), .ZN(n1570) );
  AOI22D0 U198 ( .A1(n12), .A2(n40), .B1(core_value[7]), .B2(n28), .ZN(n147)
         );
  AOI22D0 U199 ( .A1(n14), .A2(n60), .B1(core_value[10]), .B2(n44), .ZN(n146)
         );
  INVD0 U200 ( .I(core_value[9]), .ZN(n1600) );
  AOI22D0 U201 ( .A1(n13), .A2(n39), .B1(core_value[8]), .B2(n58), .ZN(n1590)
         );
  AOI22D0 U202 ( .A1(n15), .A2(n620), .B1(core_value[11]), .B2(n33), .ZN(n1580) );
  INVD0 U203 ( .I(core_value[12]), .ZN(n1630) );
  AOI22D0 U204 ( .A1(n16), .A2(n40), .B1(core_value[11]), .B2(n58), .ZN(n1620)
         );
  AOI22D0 U205 ( .A1(n18), .A2(n60), .B1(n17), .B2(n46), .ZN(n1610) );
  INVD0 U206 ( .I(core_value[14]), .ZN(n1660) );
  AOI22D0 U207 ( .A1(n18), .A2(n32), .B1(core_value[13]), .B2(n28), .ZN(n1650)
         );
  AOI22D0 U208 ( .A1(n20), .A2(n36), .B1(n19), .B2(n45), .ZN(n1640) );
  INVD0 U209 ( .I(core_value[15]), .ZN(n1690) );
  AOI22D0 U210 ( .A1(n19), .A2(n41), .B1(n17), .B2(n58), .ZN(n1680) );
  AOI22D0 U211 ( .A1(n21), .A2(n630), .B1(n20), .B2(n43), .ZN(n1670) );
  INVD0 U212 ( .I(core_value[17]), .ZN(n172) );
  AOI22D0 U213 ( .A1(n21), .A2(n41), .B1(core_value[16]), .B2(n57), .ZN(n1710)
         );
  AOI22D0 U214 ( .A1(n4), .A2(n61), .B1(n22), .B2(n34), .ZN(n1700) );
  CKBD1 U215 ( .I(n204), .Z(n206) );
  AN4D0 U216 ( .A1(y[30]), .A2(y[29]), .A3(y[28]), .A4(y[27]), .Z(n174) );
  AN4D0 U217 ( .A1(y[26]), .A2(y[25]), .A3(y[24]), .A4(y[23]), .Z(n173) );
  AN4D0 U218 ( .A1(x[30]), .A2(x[29]), .A3(x[28]), .A4(x[27]), .Z(n176) );
  AN4D0 U219 ( .A1(x[26]), .A2(x[25]), .A3(x[24]), .A4(x[23]), .Z(n175) );
  CKND2D0 U220 ( .A1(n176), .A2(n175), .ZN(n200) );
  NR4D0 U221 ( .A1(y[30]), .A2(y[29]), .A3(y[28]), .A4(y[27]), .ZN(n178) );
  NR4D0 U222 ( .A1(y[26]), .A2(y[25]), .A3(y[24]), .A4(y[23]), .ZN(n177) );
  CKND2D0 U223 ( .A1(n178), .A2(n177), .ZN(n273) );
  NR4D0 U224 ( .A1(x[22]), .A2(x[20]), .A3(x[9]), .A4(x[10]), .ZN(n183) );
  NR4D0 U225 ( .A1(x[0]), .A2(x[3]), .A3(x[4]), .A4(n179), .ZN(n182) );
  NR4D0 U226 ( .A1(x[11]), .A2(x[15]), .A3(x[16]), .A4(x[14]), .ZN(n1810) );
  NR4D0 U227 ( .A1(x[1]), .A2(x[7]), .A3(x[12]), .A4(x[13]), .ZN(n180) );
  ND4D0 U228 ( .A1(n183), .A2(n182), .A3(n1810), .A4(n180), .ZN(n193) );
  INVD0 U229 ( .I(n200), .ZN(n198) );
  NR4D0 U230 ( .A1(y[5]), .A2(y[19]), .A3(y[17]), .A4(y[21]), .ZN(n190) );
  NR4D0 U231 ( .A1(y[22]), .A2(y[20]), .A3(y[9]), .A4(y[10]), .ZN(n189) );
  NR4D0 U232 ( .A1(y[2]), .A2(y[18]), .A3(y[6]), .A4(y[8]), .ZN(n187) );
  NR3D0 U233 ( .A1(y[0]), .A2(y[3]), .A3(y[4]), .ZN(n186) );
  NR4D0 U234 ( .A1(y[11]), .A2(y[15]), .A3(y[16]), .A4(y[14]), .ZN(n185) );
  NR4D0 U235 ( .A1(y[1]), .A2(y[7]), .A3(y[12]), .A4(y[13]), .ZN(n184) );
  AN4D0 U236 ( .A1(n187), .A2(n186), .A3(n185), .A4(n184), .Z(n188) );
  AOI31D0 U237 ( .A1(n190), .A2(n189), .A3(n188), .B(n47), .ZN(n191) );
  AOI221D0 U238 ( .A1(n193), .A2(n198), .B1(n192), .B2(n198), .C(n191), .ZN(
        n196) );
  OAI211D0 U239 ( .A1(n200), .A2(n273), .B(n196), .C(n206), .ZN(n274) );
  INVD0 U240 ( .I(n274), .ZN(n202) );
  NR4D0 U241 ( .A1(x[30]), .A2(x[29]), .A3(x[28]), .A4(x[27]), .ZN(n195) );
  NR4D0 U242 ( .A1(x[26]), .A2(x[25]), .A3(x[24]), .A4(x[23]), .ZN(n194) );
  CKND2D0 U243 ( .A1(n195), .A2(n194), .ZN(n272) );
  INVD0 U244 ( .I(n270), .ZN(n203) );
  INVD0 U245 ( .I(n214), .ZN(n216) );
  OAI211D0 U246 ( .A1(n272), .A2(n273), .B(n216), .C(n196), .ZN(n197) );
  AOI221D0 U247 ( .A1(n270), .A2(n202), .B1(n272), .B2(n202), .C(n199), .ZN(
        invalid_operation) );
  AOI21D0 U248 ( .A1(n202), .A2(n270), .B(n199), .ZN(n271) );
  INVD0 U249 ( .I(n199), .ZN(n269) );
  OAI22D0 U250 ( .A1(n271), .A2(n200), .B1(n273), .B2(n269), .ZN(n201) );
  AO31D0 U251 ( .A1(n203), .A2(n202), .A3(n272), .B(n201), .Z(infinity_result)
         );
  INVD0 U252 ( .I(y[23]), .ZN(n207) );
  CKAN2D0 U253 ( .A1(n207), .A2(n283), .Z(n235) );
  OR2D0 U254 ( .A1(n235), .A2(DP_OP_58J1_127_7635_n43), .Z(
        DP_OP_58J1_127_7635_n10) );
  INVD0 U255 ( .I(y[24]), .ZN(n208) );
  INVD0 U256 ( .I(n210), .ZN(n205) );
  CKAN2D0 U257 ( .A1(n208), .A2(n205), .Z(n276) );
  INVD0 U258 ( .I(y[25]), .ZN(n209) );
  CKAN2D0 U259 ( .A1(n209), .A2(n283), .Z(n277) );
  INVD0 U260 ( .I(y[26]), .ZN(n211) );
  CKAN2D0 U261 ( .A1(n211), .A2(n205), .Z(n278) );
  INVD0 U262 ( .I(y[27]), .ZN(n212) );
  CKAN2D0 U263 ( .A1(n212), .A2(n205), .Z(n279) );
  INVD0 U264 ( .I(y[28]), .ZN(n213) );
  CKAN2D0 U265 ( .A1(n213), .A2(n205), .Z(n280) );
  INVD0 U266 ( .I(y[29]), .ZN(n215) );
  CKAN2D0 U267 ( .A1(n215), .A2(n216), .Z(n281) );
  CKND2D0 U268 ( .A1(y[30]), .A2(n216), .ZN(n282) );
  INVD0 U269 ( .I(y[30]), .ZN(n217) );
  AOI22D0 U270 ( .A1(n23), .A2(core_value[23]), .B1(core_value[22]), .B2(n225), 
        .ZN(n230) );
  AOI22D0 U271 ( .A1(core_value[20]), .A2(n228), .B1(core_value[19]), .B2(n227), .ZN(n229) );
  OA211D0 U272 ( .A1(n268), .A2(n231), .B(n230), .C(n229), .Z(n234) );
  XOR2D0 U273 ( .A1(y[31]), .A2(x[31]), .Z(sign_out) );
  INR2D0 U274 ( .A1(finite_result_31_), .B1(invalid_s6), .ZN(N181) );
  XNR2D0 U275 ( .A1(DP_OP_58J1_127_7635_n43), .A2(n235), .ZN(N62) );
  XNR2D0 U276 ( .A1(DP_OP_57J1_126_2635_n1), .A2(DP_OP_58J1_127_7635_n3), .ZN(
        N70) );
  AO22D0 U277 ( .A1(core_value[1]), .A2(n36), .B1(n2), .B2(n34), .Z(N150) );
  AO222D0 U278 ( .A1(n39), .A2(core_value[0]), .B1(n46), .B2(n3), .C1(n35), 
        .C2(core_value[2]), .Z(N151) );
  AOI22D0 U279 ( .A1(n5), .A2(n44), .B1(n6), .B2(n620), .ZN(n237) );
  AOI22D0 U280 ( .A1(core_value[1]), .A2(n32), .B1(n2), .B2(n263), .ZN(n236)
         );
  CKND2D0 U281 ( .A1(n237), .A2(n236), .ZN(N152) );
  INVD0 U282 ( .I(core_value[2]), .ZN(n240) );
  AOI22D0 U283 ( .A1(core_value[1]), .A2(n28), .B1(core_value[3]), .B2(n31), 
        .ZN(n239) );
  AOI22D0 U284 ( .A1(core_value[4]), .A2(n45), .B1(core_value[5]), .B2(n60), 
        .ZN(n238) );
  OAI211D0 U285 ( .A1(n240), .A2(n26), .B(n239), .C(n238), .ZN(N154) );
  INVD0 U286 ( .I(core_value[6]), .ZN(n243) );
  AOI22D0 U287 ( .A1(n10), .A2(n31), .B1(core_value[5]), .B2(n57), .ZN(n242)
         );
  AOI22D0 U288 ( .A1(core_value[8]), .A2(n44), .B1(core_value[9]), .B2(n630), 
        .ZN(n241) );
  OAI211D0 U289 ( .A1(n243), .A2(n54), .B(n242), .C(n241), .ZN(N158) );
  INVD0 U290 ( .I(core_value[10]), .ZN(n246) );
  AOI22D0 U291 ( .A1(n14), .A2(n39), .B1(core_value[9]), .B2(n59), .ZN(n245)
         );
  AOI22D0 U292 ( .A1(n15), .A2(n45), .B1(core_value[13]), .B2(n60), .ZN(n244)
         );
  OAI211D0 U293 ( .A1(n246), .A2(n55), .B(n245), .C(n244), .ZN(N162) );
  INVD0 U294 ( .I(core_value[11]), .ZN(n249) );
  AOI22D0 U295 ( .A1(core_value[12]), .A2(n41), .B1(core_value[10]), .B2(n59), 
        .ZN(n248) );
  AOI22D0 U296 ( .A1(n16), .A2(n33), .B1(core_value[14]), .B2(n36), .ZN(n247)
         );
  OAI211D0 U297 ( .A1(n249), .A2(n56), .B(n248), .C(n247), .ZN(N163) );
  INVD0 U298 ( .I(core_value[13]), .ZN(n252) );
  AOI22D0 U299 ( .A1(core_value[12]), .A2(n29), .B1(core_value[14]), .B2(n42), 
        .ZN(n251) );
  AOI22D0 U300 ( .A1(core_value[15]), .A2(n43), .B1(core_value[16]), .B2(n61), 
        .ZN(n250) );
  OAI211D0 U301 ( .A1(n252), .A2(n25), .B(n251), .C(n250), .ZN(N165) );
  INVD0 U302 ( .I(core_value[16]), .ZN(n256) );
  AOI22D0 U303 ( .A1(core_value[15]), .A2(n58), .B1(core_value[17]), .B2(n42), 
        .ZN(n254) );
  AOI22D0 U304 ( .A1(core_value[18]), .A2(n43), .B1(core_value[19]), .B2(n620), 
        .ZN(n253) );
  OAI211D0 U305 ( .A1(n256), .A2(n26), .B(n254), .C(n253), .ZN(N168) );
  AOI22D0 U306 ( .A1(n22), .A2(n40), .B1(core_value[17]), .B2(n29), .ZN(n259)
         );
  AOI22D0 U307 ( .A1(n21), .A2(n263), .B1(n4), .B2(n33), .ZN(n258) );
  OAI211D0 U308 ( .A1(n268), .A2(n260), .B(n259), .C(n258), .ZN(N170) );
  AOI22D0 U309 ( .A1(core_value[18]), .A2(n29), .B1(core_value[20]), .B2(n42), 
        .ZN(n266) );
  AOI22D0 U310 ( .A1(core_value[22]), .A2(n61), .B1(n22), .B2(n263), .ZN(n265)
         );
  OAI211D0 U311 ( .A1(n268), .A2(n267), .B(n266), .C(n265), .ZN(N171) );
  OAI222D0 U312 ( .A1(n274), .A2(n273), .B1(n272), .B2(n271), .C1(n270), .C2(
        n269), .ZN(zero_result) );
endmodule


module oadm_dm_l0 ( clk, x, y, divide_mode, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  input clk, divide_mode;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47;

  oadm_dm_fixed_APPROX_LEVEL0 impl ( .clk(clk), .x({x[31:23], n46, n2, n45, 
        x[19], n6, n4, n44, n43, n42, n41, n40, n39, n38, n37, n8, n36, x[6], 
        n35, n34, n33, n32, n31, x[0]}), .y({y[31:23], n30, n29, n28, n27, n26, 
        n25, n24, n23, n22, n21, n20, n19, n18, n17, n16, n15, n14, n13, n12, 
        n11, n10, n9, y[0]}), .divide_mode(n47), .result(result) );
  BUFFD0 U1 ( .I(y[9]), .Z(n17) );
  BUFFD0 U2 ( .I(y[10]), .Z(n18) );
  BUFFD0 U3 ( .I(y[11]), .Z(n19) );
  BUFFD0 U4 ( .I(y[12]), .Z(n20) );
  BUFFD0 U5 ( .I(y[13]), .Z(n21) );
  BUFFD0 U6 ( .I(y[14]), .Z(n22) );
  BUFFD0 U7 ( .I(y[15]), .Z(n23) );
  BUFFD0 U8 ( .I(y[16]), .Z(n24) );
  BUFFD0 U9 ( .I(y[17]), .Z(n25) );
  BUFFD0 U10 ( .I(y[18]), .Z(n26) );
  BUFFD0 U11 ( .I(y[19]), .Z(n27) );
  BUFFD0 U12 ( .I(x[22]), .Z(n46) );
  BUFFD0 U13 ( .I(y[22]), .Z(n30) );
  BUFFD0 U14 ( .I(y[21]), .Z(n29) );
  BUFFD0 U15 ( .I(x[20]), .Z(n45) );
  BUFFD0 U16 ( .I(y[20]), .Z(n28) );
  BUFFD0 U17 ( .I(x[16]), .Z(n44) );
  BUFFD0 U18 ( .I(x[15]), .Z(n43) );
  BUFFD0 U19 ( .I(x[14]), .Z(n42) );
  BUFFD0 U20 ( .I(x[13]), .Z(n41) );
  BUFFD0 U21 ( .I(x[12]), .Z(n40) );
  BUFFD0 U22 ( .I(x[11]), .Z(n39) );
  BUFFD0 U23 ( .I(x[10]), .Z(n38) );
  BUFFD0 U24 ( .I(x[9]), .Z(n37) );
  BUFFD0 U25 ( .I(x[7]), .Z(n36) );
  BUFFD0 U26 ( .I(y[8]), .Z(n16) );
  BUFFD0 U27 ( .I(y[7]), .Z(n15) );
  BUFFD0 U28 ( .I(x[5]), .Z(n35) );
  BUFFD0 U29 ( .I(y[6]), .Z(n14) );
  BUFFD0 U30 ( .I(x[4]), .Z(n34) );
  BUFFD0 U31 ( .I(y[5]), .Z(n13) );
  BUFFD0 U32 ( .I(y[1]), .Z(n9) );
  BUFFD0 U33 ( .I(y[4]), .Z(n12) );
  BUFFD0 U34 ( .I(y[2]), .Z(n10) );
  BUFFD0 U35 ( .I(y[3]), .Z(n11) );
  INVD0 U36 ( .I(x[21]), .ZN(n1) );
  INVD0 U37 ( .I(n1), .ZN(n2) );
  INVD0 U38 ( .I(x[17]), .ZN(n3) );
  INVD0 U39 ( .I(n3), .ZN(n4) );
  INVD0 U40 ( .I(x[18]), .ZN(n5) );
  INVD0 U41 ( .I(n5), .ZN(n6) );
  INVD0 U42 ( .I(x[8]), .ZN(n7) );
  INVD0 U43 ( .I(n7), .ZN(n8) );
  CKBD1 U44 ( .I(divide_mode), .Z(n47) );
  BUFFD0 U45 ( .I(x[2]), .Z(n32) );
  BUFFD0 U46 ( .I(x[1]), .Z(n31) );
  BUFFD0 U47 ( .I(x[3]), .Z(n33) );
endmodule

