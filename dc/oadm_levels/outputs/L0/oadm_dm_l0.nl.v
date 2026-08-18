/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Sun Aug  9 13:26:44 2026
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


  BUFFD0 U2 ( .I(input_a[2]), .Z(sum[2]) );
  BUFFD0 U3 ( .I(input_a[8]), .Z(sum[8]) );
  BUFFD0 U4 ( .I(input_a[24]), .Z(sum[24]) );
  BUFFD0 U5 ( .I(input_a[23]), .Z(sum[23]) );
  BUFFD0 U6 ( .I(input_a[22]), .Z(sum[22]) );
  BUFFD0 U7 ( .I(input_a[0]), .Z(sum[0]) );
  BUFFD0 U8 ( .I(input_a[1]), .Z(sum[1]) );
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


module sa_scale_VALUE_WIDTH29_COEFF_WIDTH8 ( clk, value, coefficient, 
        scaled_value );
  input [28:0] value;
  input [7:0] coefficient;
  output [28:0] scaled_value;
  input clk;
  wire   partial_1_2__29_, partial_1_2__28_, partial_1_2__27_,
         partial_1_2__26_, partial_1_2__25_, partial_1_2__24_,
         partial_1_2__23_, partial_1_2__22_, partial_1_2__21_,
         partial_1_2__20_, partial_1_2__19_, partial_1_2__18_,
         partial_1_2__17_, partial_1_2__16_, partial_1_2__15_,
         partial_1_2__14_, partial_1_2__13_, partial_1_2__12_,
         partial_1_2__11_, partial_1_2__10_, partial_1_2__9_, partial_1_2__8_,
         partial_1_2__7_, partial_1_2__6_, partial_1_2__5_,
         partial_1_stage_0__25_, partial_1_stage_0__24_,
         partial_1_stage_0__23_, partial_1_stage_0__22_,
         partial_1_stage_0__21_, partial_1_stage_0__20_,
         partial_1_stage_0__19_, partial_1_stage_0__18_,
         partial_1_stage_0__17_, partial_1_stage_0__16_,
         partial_1_stage_0__15_, partial_1_stage_0__14_,
         partial_1_stage_0__13_, partial_1_stage_0__12_,
         partial_1_stage_0__11_, partial_1_stage_0__10_, partial_1_stage_0__9_,
         partial_1_stage_0__8_, partial_1_stage_0__7_, partial_1_stage_0__6_,
         partial_1_stage_0__5_, partial_1_stage_0__4_, partial_1_stage_0__3_,
         partial_1_stage_0__2_, partial_1_stage_2__30_, partial_1_stage_2__29_,
         partial_1_stage_2__28_, partial_1_stage_2__27_,
         partial_1_stage_2__26_, partial_1_stage_2__25_,
         partial_1_stage_2__24_, partial_1_stage_2__23_,
         partial_1_stage_2__22_, partial_1_stage_2__21_,
         partial_1_stage_2__20_, partial_1_stage_2__19_,
         partial_1_stage_2__18_, partial_1_stage_2__17_,
         partial_1_stage_2__16_, partial_1_stage_2__15_,
         partial_1_stage_2__14_, partial_1_stage_2__13_,
         partial_1_stage_2__12_, partial_1_stage_2__11_,
         partial_1_stage_2__10_, partial_1_stage_2__9_, partial_1_stage_2__8_,
         partial_1_stage_2__7_, partial_1_stage_2__6_, partial_1_stage_2__5_,
         partial_1_stage_2__4_, n13, n14, n15, n16, n17, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187;

  DFQD1 partial_1_stage_reg_0__25_ ( .D(value[24]), .CP(clk), .Q(
        partial_1_stage_0__25_) );
  DFQD1 partial_1_stage_reg_0__24_ ( .D(value[23]), .CP(clk), .Q(
        partial_1_stage_0__24_) );
  DFQD1 partial_1_stage_reg_0__23_ ( .D(value[22]), .CP(clk), .Q(
        partial_1_stage_0__23_) );
  DFQD1 partial_1_stage_reg_0__22_ ( .D(value[21]), .CP(clk), .Q(
        partial_1_stage_0__22_) );
  DFQD1 partial_1_stage_reg_0__21_ ( .D(value[20]), .CP(clk), .Q(
        partial_1_stage_0__21_) );
  DFQD1 partial_1_stage_reg_0__20_ ( .D(value[19]), .CP(clk), .Q(
        partial_1_stage_0__20_) );
  DFQD1 partial_1_stage_reg_0__19_ ( .D(value[18]), .CP(clk), .Q(
        partial_1_stage_0__19_) );
  DFQD1 partial_1_stage_reg_0__18_ ( .D(value[17]), .CP(clk), .Q(
        partial_1_stage_0__18_) );
  DFQD1 partial_1_stage_reg_0__17_ ( .D(value[16]), .CP(clk), .Q(
        partial_1_stage_0__17_) );
  DFQD1 partial_1_stage_reg_0__16_ ( .D(value[15]), .CP(clk), .Q(
        partial_1_stage_0__16_) );
  DFQD1 partial_1_stage_reg_0__15_ ( .D(value[14]), .CP(clk), .Q(
        partial_1_stage_0__15_) );
  DFQD1 partial_1_stage_reg_0__14_ ( .D(value[13]), .CP(clk), .Q(
        partial_1_stage_0__14_) );
  DFQD1 partial_1_stage_reg_0__13_ ( .D(value[12]), .CP(clk), .Q(
        partial_1_stage_0__13_) );
  DFQD1 partial_1_stage_reg_0__12_ ( .D(value[11]), .CP(clk), .Q(
        partial_1_stage_0__12_) );
  DFQD1 partial_1_stage_reg_0__11_ ( .D(value[10]), .CP(clk), .Q(
        partial_1_stage_0__11_) );
  DFQD1 partial_1_stage_reg_0__10_ ( .D(value[9]), .CP(clk), .Q(
        partial_1_stage_0__10_) );
  DFQD1 partial_1_stage_reg_0__9_ ( .D(value[8]), .CP(clk), .Q(
        partial_1_stage_0__9_) );
  DFQD1 partial_1_stage_reg_0__8_ ( .D(value[7]), .CP(clk), .Q(
        partial_1_stage_0__8_) );
  DFQD1 partial_1_stage_reg_0__7_ ( .D(value[6]), .CP(clk), .Q(
        partial_1_stage_0__7_) );
  DFQD1 partial_1_stage_reg_0__6_ ( .D(value[5]), .CP(clk), .Q(
        partial_1_stage_0__6_) );
  DFQD1 partial_1_stage_reg_0__5_ ( .D(value[4]), .CP(clk), .Q(
        partial_1_stage_0__5_) );
  DFQD1 partial_1_stage_reg_0__4_ ( .D(value[3]), .CP(clk), .Q(
        partial_1_stage_0__4_) );
  DFQD1 partial_1_stage_reg_0__3_ ( .D(value[2]), .CP(clk), .Q(
        partial_1_stage_0__3_) );
  DFQD1 partial_1_stage_reg_0__2_ ( .D(value[1]), .CP(clk), .Q(
        partial_1_stage_0__2_) );
  DFQD1 partial_1_stage_reg_2__30_ ( .D(n19), .CP(clk), .Q(
        partial_1_stage_2__30_) );
  DFQD1 partial_1_stage_reg_2__29_ ( .D(partial_1_2__29_), .CP(clk), .Q(
        partial_1_stage_2__29_) );
  DFQD1 partial_1_stage_reg_2__28_ ( .D(partial_1_2__28_), .CP(clk), .Q(
        partial_1_stage_2__28_) );
  DFQD1 partial_1_stage_reg_2__27_ ( .D(partial_1_2__27_), .CP(clk), .Q(
        partial_1_stage_2__27_) );
  DFQD1 partial_1_stage_reg_2__26_ ( .D(partial_1_2__26_), .CP(clk), .Q(
        partial_1_stage_2__26_) );
  DFQD1 partial_1_stage_reg_2__25_ ( .D(partial_1_2__25_), .CP(clk), .Q(
        partial_1_stage_2__25_) );
  DFQD1 partial_1_stage_reg_2__24_ ( .D(partial_1_2__24_), .CP(clk), .Q(
        partial_1_stage_2__24_) );
  DFQD1 partial_1_stage_reg_2__23_ ( .D(partial_1_2__23_), .CP(clk), .Q(
        partial_1_stage_2__23_) );
  DFQD1 partial_1_stage_reg_2__22_ ( .D(partial_1_2__22_), .CP(clk), .Q(
        partial_1_stage_2__22_) );
  DFQD1 partial_1_stage_reg_2__21_ ( .D(partial_1_2__21_), .CP(clk), .Q(
        partial_1_stage_2__21_) );
  DFQD1 partial_1_stage_reg_2__20_ ( .D(partial_1_2__20_), .CP(clk), .Q(
        partial_1_stage_2__20_) );
  DFQD1 partial_1_stage_reg_2__19_ ( .D(partial_1_2__19_), .CP(clk), .Q(
        partial_1_stage_2__19_) );
  DFQD1 partial_1_stage_reg_2__18_ ( .D(partial_1_2__18_), .CP(clk), .Q(
        partial_1_stage_2__18_) );
  DFQD1 partial_1_stage_reg_2__17_ ( .D(partial_1_2__17_), .CP(clk), .Q(
        partial_1_stage_2__17_) );
  DFQD1 partial_1_stage_reg_2__16_ ( .D(partial_1_2__16_), .CP(clk), .Q(
        partial_1_stage_2__16_) );
  DFQD1 partial_1_stage_reg_2__15_ ( .D(partial_1_2__15_), .CP(clk), .Q(
        partial_1_stage_2__15_) );
  DFQD1 partial_1_stage_reg_2__14_ ( .D(partial_1_2__14_), .CP(clk), .Q(
        partial_1_stage_2__14_) );
  DFQD1 partial_1_stage_reg_2__13_ ( .D(partial_1_2__13_), .CP(clk), .Q(
        partial_1_stage_2__13_) );
  DFQD1 partial_1_stage_reg_2__12_ ( .D(partial_1_2__12_), .CP(clk), .Q(
        partial_1_stage_2__12_) );
  DFQD1 partial_1_stage_reg_2__11_ ( .D(partial_1_2__11_), .CP(clk), .Q(
        partial_1_stage_2__11_) );
  DFQD1 partial_1_stage_reg_2__10_ ( .D(partial_1_2__10_), .CP(clk), .Q(
        partial_1_stage_2__10_) );
  DFQD1 partial_1_stage_reg_2__9_ ( .D(partial_1_2__9_), .CP(clk), .Q(
        partial_1_stage_2__9_) );
  DFQD1 partial_1_stage_reg_2__8_ ( .D(partial_1_2__8_), .CP(clk), .Q(
        partial_1_stage_2__8_) );
  DFQD1 partial_1_stage_reg_2__6_ ( .D(partial_1_2__6_), .CP(clk), .Q(
        partial_1_stage_2__6_) );
  DFQD1 partial_1_stage_reg_2__5_ ( .D(partial_1_2__5_), .CP(clk), .Q(
        partial_1_stage_2__5_) );
  DFQD1 partial_1_stage_reg_2__4_ ( .D(value[0]), .CP(clk), .Q(
        partial_1_stage_2__4_) );
  DFQD1 partial_1_stage_reg_2__7_ ( .D(partial_1_2__7_), .CP(clk), .Q(
        partial_1_stage_2__7_) );
  FA1D0 U3 ( .A(value[22]), .B(value[23]), .CI(n91), .CO(n92), .S(
        partial_1_2__27_) );
  CKND2D0 U4 ( .A1(n69), .A2(n68), .ZN(n152) );
  OAI21D0 U5 ( .A1(n165), .A2(n161), .B(n162), .ZN(n145) );
  FA1D0 U6 ( .A(value[21]), .B(value[22]), .CI(n82), .CO(n91), .S(
        partial_1_2__26_) );
  CKAN2D0 U7 ( .A1(n93), .A2(value[24]), .Z(n19) );
  CKND2D0 U8 ( .A1(n59), .A2(n58), .ZN(n162) );
  CKND2D0 U9 ( .A1(n61), .A2(n60), .ZN(n142) );
  CKND2D0 U10 ( .A1(n64), .A2(n63), .ZN(n157) );
  CKND2D0 U11 ( .A1(n56), .A2(n55), .ZN(n138) );
  CKND2D0 U12 ( .A1(n49), .A2(n48), .ZN(n172) );
  CKND2D0 U13 ( .A1(n54), .A2(n53), .ZN(n167) );
  CKND2D0 U14 ( .A1(n51), .A2(n50), .ZN(n134) );
  CKAN2D0 U15 ( .A1(partial_1_stage_2__27_), .A2(partial_1_stage_0__22_), .Z(
        n13) );
  CKAN2D0 U16 ( .A1(partial_1_stage_2__26_), .A2(partial_1_stage_0__21_), .Z(
        n14) );
  CKAN2D0 U17 ( .A1(n113), .A2(n15), .Z(scaled_value[24]) );
  FA1D0 U18 ( .A(n17), .B(n71), .CI(n70), .CO(n113), .S(scaled_value[22]) );
  FA1D0 U19 ( .A(value[20]), .B(value[21]), .CI(n90), .CO(n82), .S(
        partial_1_2__25_) );
  FA1D0 U20 ( .A(value[19]), .B(value[20]), .CI(n81), .CO(n90), .S(
        partial_1_2__24_) );
  FA1D0 U21 ( .A(value[18]), .B(value[19]), .CI(n89), .CO(n81), .S(
        partial_1_2__23_) );
  FA1D0 U22 ( .A(value[17]), .B(value[18]), .CI(n80), .CO(n89), .S(
        partial_1_2__22_) );
  OAI21D1 U23 ( .A1(n155), .A2(n151), .B(n152), .ZN(n72) );
  FA1D0 U24 ( .A(value[16]), .B(value[17]), .CI(n88), .CO(n80), .S(
        partial_1_2__21_) );
  FA1D0 U25 ( .A(value[15]), .B(value[16]), .CI(n79), .CO(n88), .S(
        partial_1_2__20_) );
  FA1D0 U26 ( .A(value[13]), .B(value[14]), .CI(n78), .CO(n87), .S(
        partial_1_2__18_) );
  FA1D0 U27 ( .A(value[12]), .B(value[13]), .CI(n86), .CO(n78), .S(
        partial_1_2__17_) );
  FA1D0 U28 ( .A(value[11]), .B(value[12]), .CI(n77), .CO(n86), .S(
        partial_1_2__16_) );
  FA1D0 U29 ( .A(value[10]), .B(value[11]), .CI(n85), .CO(n77), .S(
        partial_1_2__15_) );
  FA1D0 U30 ( .A(value[9]), .B(value[10]), .CI(n76), .CO(n85), .S(
        partial_1_2__14_) );
  FA1D0 U31 ( .A(value[8]), .B(value[9]), .CI(n84), .CO(n76), .S(
        partial_1_2__13_) );
  FA1D0 U32 ( .A(value[7]), .B(value[8]), .CI(n75), .CO(n84), .S(
        partial_1_2__12_) );
  NR2D0 U33 ( .A1(n54), .A2(n53), .ZN(n166) );
  NR2D0 U34 ( .A1(n59), .A2(n58), .ZN(n161) );
  NR2D0 U35 ( .A1(n69), .A2(n68), .ZN(n151) );
  OR2D0 U36 ( .A1(n66), .A2(n65), .Z(n147) );
  ND2D0 U37 ( .A1(n66), .A2(n65), .ZN(n146) );
  OR2D0 U38 ( .A1(n61), .A2(n60), .Z(n143) );
  NR2D0 U39 ( .A1(n64), .A2(n63), .ZN(n156) );
  XOR2D0 U40 ( .A1(n113), .A2(n15), .Z(scaled_value[23]) );
  XOR2D0 U41 ( .A1(n93), .A2(value[24]), .Z(partial_1_2__29_) );
  AOI21D1 U42 ( .A1(n145), .A2(n143), .B(n62), .ZN(n160) );
  OAI21D0 U43 ( .A1(n180), .A2(n176), .B(n177), .ZN(n133) );
  INVD0 U44 ( .I(n134), .ZN(n52) );
  INVD0 U45 ( .I(n146), .ZN(n67) );
  INVD0 U46 ( .I(n138), .ZN(n57) );
  INVD0 U47 ( .I(n142), .ZN(n62) );
  CKND2D0 U48 ( .A1(n44), .A2(n43), .ZN(n177) );
  CKND2D0 U49 ( .A1(n46), .A2(n45), .ZN(n130) );
  OR2D0 U50 ( .A1(n56), .A2(n55), .Z(n139) );
  XOR2D0 U51 ( .A1(partial_1_stage_0__22_), .A2(partial_1_stage_2__27_), .Z(
        n108) );
  XOR2D0 U52 ( .A1(partial_1_stage_0__21_), .A2(partial_1_stage_2__26_), .Z(
        n105) );
  XOR2D0 U53 ( .A1(partial_1_stage_0__23_), .A2(partial_1_stage_2__28_), .Z(
        n110) );
  XOR2D0 U54 ( .A1(partial_1_stage_0__24_), .A2(partial_1_stage_2__29_), .Z(
        n112) );
  FA1D0 U55 ( .A(value[23]), .B(value[24]), .CI(n92), .CO(n93), .S(
        partial_1_2__28_) );
  CKAN2D0 U56 ( .A1(partial_1_stage_2__30_), .A2(partial_1_stage_0__25_), .Z(
        n15) );
  CKAN2D0 U57 ( .A1(partial_1_stage_2__28_), .A2(partial_1_stage_0__23_), .Z(
        n16) );
  CKAN2D0 U58 ( .A1(partial_1_stage_0__24_), .A2(partial_1_stage_2__29_), .Z(
        n17) );
  NR2D0 U59 ( .A1(n30), .A2(n29), .ZN(n118) );
  AOI21D0 U60 ( .A1(n129), .A2(n127), .B(n42), .ZN(n180) );
  AOI21D1 U61 ( .A1(n137), .A2(n135), .B(n52), .ZN(n170) );
  FA1D0 U62 ( .A(n74), .B(n73), .CI(n72), .CO(n98), .S(scaled_value[15]) );
  FA1D0 U63 ( .A(value[2]), .B(value[3]), .CI(n83), .CO(n94), .S(
        partial_1_2__7_) );
  FA1D0 U64 ( .A(value[14]), .B(value[15]), .CI(n87), .CO(n79), .S(
        partial_1_2__19_) );
  XOR2D0 U65 ( .A1(partial_1_stage_0__25_), .A2(partial_1_stage_2__30_), .Z(
        n71) );
  FA1D0 U66 ( .A(partial_1_stage_2__25_), .B(partial_1_stage_0__25_), .CI(
        partial_1_stage_0__20_), .CO(n106), .S(n102) );
  FA1D0 U67 ( .A(partial_1_stage_2__24_), .B(partial_1_stage_0__24_), .CI(
        partial_1_stage_0__19_), .CO(n103), .S(n99) );
  FA1D0 U68 ( .A(partial_1_stage_2__23_), .B(partial_1_stage_0__23_), .CI(
        partial_1_stage_0__18_), .CO(n100), .S(n73) );
  FA1D0 U69 ( .A(partial_1_stage_2__7_), .B(partial_1_stage_0__7_), .CI(
        partial_1_stage_0__2_), .CO(n29), .S(n28) );
  NR2D0 U70 ( .A1(n28), .A2(n27), .ZN(n117) );
  NR2D0 U71 ( .A1(n118), .A2(n117), .ZN(n32) );
  HA1D0 U72 ( .A(partial_1_stage_2__4_), .B(partial_1_stage_2__6_), .CO(n27), 
        .S(n23) );
  NR2D0 U73 ( .A1(n23), .A2(partial_1_stage_0__6_), .ZN(n26) );
  NR2D0 U74 ( .A1(partial_1_stage_0__5_), .A2(partial_1_stage_2__5_), .ZN(n22)
         );
  CKND2D0 U75 ( .A1(partial_1_stage_2__4_), .A2(partial_1_stage_0__4_), .ZN(
        n21) );
  CKND2D0 U76 ( .A1(partial_1_stage_0__5_), .A2(partial_1_stage_2__5_), .ZN(
        n20) );
  OA21D0 U77 ( .A1(n22), .A2(n21), .B(n20), .Z(n25) );
  CKND2D0 U78 ( .A1(n23), .A2(partial_1_stage_0__6_), .ZN(n24) );
  OAI21D0 U79 ( .A1(n26), .A2(n25), .B(n24), .ZN(n114) );
  CKND2D0 U80 ( .A1(n28), .A2(n27), .ZN(n115) );
  CKND2D0 U81 ( .A1(n30), .A2(n29), .ZN(n119) );
  OAI21D0 U82 ( .A1(n118), .A2(n115), .B(n119), .ZN(n31) );
  AOI21D0 U83 ( .A1(n32), .A2(n114), .B(n31), .ZN(n123) );
  FA1D0 U84 ( .A(partial_1_stage_0__3_), .B(partial_1_stage_2__8_), .CI(
        partial_1_stage_0__8_), .CO(n33), .S(n30) );
  OR2D0 U85 ( .A1(n34), .A2(n33), .Z(n182) );
  FA1D0 U86 ( .A(partial_1_stage_2__9_), .B(partial_1_stage_0__4_), .CI(
        partial_1_stage_0__9_), .CO(n35), .S(n34) );
  OR2D0 U87 ( .A1(n36), .A2(n35), .Z(n185) );
  CKND2D0 U88 ( .A1(n182), .A2(n185), .ZN(n39) );
  CKND2D0 U89 ( .A1(n34), .A2(n33), .ZN(n124) );
  INVD0 U90 ( .I(n124), .ZN(n181) );
  CKND2D0 U91 ( .A1(n36), .A2(n35), .ZN(n184) );
  INVD0 U92 ( .I(n184), .ZN(n37) );
  AOI21D0 U93 ( .A1(n185), .A2(n181), .B(n37), .ZN(n38) );
  OAI21D0 U94 ( .A1(n123), .A2(n39), .B(n38), .ZN(n129) );
  FA1D0 U95 ( .A(partial_1_stage_2__10_), .B(partial_1_stage_0__10_), .CI(
        partial_1_stage_0__5_), .CO(n40), .S(n36) );
  OR2D0 U96 ( .A1(n41), .A2(n40), .Z(n127) );
  CKND2D0 U97 ( .A1(n41), .A2(n40), .ZN(n126) );
  INVD0 U98 ( .I(n126), .ZN(n42) );
  FA1D0 U99 ( .A(partial_1_stage_2__11_), .B(partial_1_stage_0__11_), .CI(
        partial_1_stage_0__6_), .CO(n43), .S(n41) );
  NR2D0 U100 ( .A1(n44), .A2(n43), .ZN(n176) );
  FA1D0 U101 ( .A(partial_1_stage_2__12_), .B(partial_1_stage_0__12_), .CI(
        partial_1_stage_0__7_), .CO(n45), .S(n44) );
  OR2D0 U102 ( .A1(n46), .A2(n45), .Z(n131) );
  INVD0 U103 ( .I(n130), .ZN(n47) );
  AOI21D1 U104 ( .A1(n133), .A2(n131), .B(n47), .ZN(n175) );
  FA1D0 U105 ( .A(partial_1_stage_2__13_), .B(partial_1_stage_0__13_), .CI(
        partial_1_stage_0__8_), .CO(n48), .S(n46) );
  NR2D0 U106 ( .A1(n49), .A2(n48), .ZN(n171) );
  OAI21D1 U107 ( .A1(n175), .A2(n171), .B(n172), .ZN(n137) );
  FA1D0 U108 ( .A(partial_1_stage_2__14_), .B(partial_1_stage_0__14_), .CI(
        partial_1_stage_0__9_), .CO(n50), .S(n49) );
  OR2D0 U109 ( .A1(n51), .A2(n50), .Z(n135) );
  FA1D0 U110 ( .A(partial_1_stage_2__15_), .B(partial_1_stage_0__15_), .CI(
        partial_1_stage_0__10_), .CO(n53), .S(n51) );
  OAI21D1 U111 ( .A1(n170), .A2(n166), .B(n167), .ZN(n141) );
  FA1D0 U112 ( .A(partial_1_stage_2__16_), .B(partial_1_stage_0__16_), .CI(
        partial_1_stage_0__11_), .CO(n55), .S(n54) );
  AOI21D1 U113 ( .A1(n141), .A2(n139), .B(n57), .ZN(n165) );
  FA1D0 U114 ( .A(partial_1_stage_2__17_), .B(partial_1_stage_0__17_), .CI(
        partial_1_stage_0__12_), .CO(n58), .S(n56) );
  FA1D0 U115 ( .A(partial_1_stage_2__18_), .B(partial_1_stage_0__18_), .CI(
        partial_1_stage_0__13_), .CO(n60), .S(n59) );
  FA1D0 U116 ( .A(partial_1_stage_2__19_), .B(partial_1_stage_0__19_), .CI(
        partial_1_stage_0__14_), .CO(n63), .S(n61) );
  OAI21D1 U117 ( .A1(n160), .A2(n156), .B(n157), .ZN(n149) );
  FA1D0 U118 ( .A(partial_1_stage_2__20_), .B(partial_1_stage_0__20_), .CI(
        partial_1_stage_0__15_), .CO(n65), .S(n64) );
  AOI21D1 U119 ( .A1(n149), .A2(n147), .B(n67), .ZN(n155) );
  FA1D0 U120 ( .A(partial_1_stage_2__22_), .B(partial_1_stage_0__22_), .CI(
        partial_1_stage_0__17_), .CO(n74), .S(n69) );
  FA1D0 U121 ( .A(partial_1_stage_2__21_), .B(partial_1_stage_0__21_), .CI(
        partial_1_stage_0__16_), .CO(n68), .S(n66) );
  FA1D0 U122 ( .A(value[3]), .B(value[4]), .CI(n94), .CO(n95), .S(
        partial_1_2__8_) );
  FA1D0 U123 ( .A(value[4]), .B(value[5]), .CI(n95), .CO(n96), .S(
        partial_1_2__9_) );
  FA1D0 U124 ( .A(value[5]), .B(value[6]), .CI(n96), .CO(n97), .S(
        partial_1_2__10_) );
  FA1D0 U125 ( .A(value[6]), .B(value[7]), .CI(n97), .CO(n75), .S(
        partial_1_2__11_) );
  FA1D0 U126 ( .A(n100), .B(n99), .CI(n98), .CO(n101), .S(scaled_value[16]) );
  FA1D0 U127 ( .A(n103), .B(n102), .CI(n101), .CO(n104), .S(scaled_value[17])
         );
  FA1D0 U128 ( .A(n106), .B(n105), .CI(n104), .CO(n107), .S(scaled_value[18])
         );
  FA1D0 U129 ( .A(n14), .B(n108), .CI(n107), .CO(n109), .S(scaled_value[19])
         );
  FA1D0 U130 ( .A(n13), .B(n110), .CI(n109), .CO(n111), .S(scaled_value[20])
         );
  FA1D0 U131 ( .A(n16), .B(n112), .CI(n111), .CO(n70), .S(scaled_value[21]) );
  INVD0 U132 ( .I(n114), .ZN(n116) );
  OAI21D0 U133 ( .A1(n117), .A2(n116), .B(n115), .ZN(n122) );
  INVD0 U134 ( .I(n118), .ZN(n120) );
  CKND2D0 U135 ( .A1(n120), .A2(n119), .ZN(n121) );
  XNR2D0 U136 ( .A1(n122), .A2(n121), .ZN(scaled_value[0]) );
  INVD0 U137 ( .I(n123), .ZN(n183) );
  CKND2D0 U138 ( .A1(n182), .A2(n124), .ZN(n125) );
  XNR2D0 U139 ( .A1(n183), .A2(n125), .ZN(scaled_value[1]) );
  CKND2D0 U140 ( .A1(n127), .A2(n126), .ZN(n128) );
  XNR2D0 U141 ( .A1(n129), .A2(n128), .ZN(scaled_value[3]) );
  CKND2D0 U142 ( .A1(n131), .A2(n130), .ZN(n132) );
  XNR2D0 U143 ( .A1(n133), .A2(n132), .ZN(scaled_value[5]) );
  CKND2D0 U144 ( .A1(n135), .A2(n134), .ZN(n136) );
  XNR2D0 U145 ( .A1(n137), .A2(n136), .ZN(scaled_value[7]) );
  CKND2D0 U146 ( .A1(n139), .A2(n138), .ZN(n140) );
  XNR2D0 U147 ( .A1(n141), .A2(n140), .ZN(scaled_value[9]) );
  CKND2D0 U148 ( .A1(n143), .A2(n142), .ZN(n144) );
  XNR2D0 U149 ( .A1(n145), .A2(n144), .ZN(scaled_value[11]) );
  CKND2D0 U150 ( .A1(n147), .A2(n146), .ZN(n148) );
  XNR2D0 U151 ( .A1(n149), .A2(n148), .ZN(scaled_value[13]) );
  FA1D0 U152 ( .A(value[1]), .B(value[2]), .CI(n150), .CO(n83), .S(
        partial_1_2__6_) );
  HA1D0 U153 ( .A(value[1]), .B(value[0]), .CO(n150), .S(partial_1_2__5_) );
  INVD0 U154 ( .I(n151), .ZN(n153) );
  CKND2D0 U155 ( .A1(n153), .A2(n152), .ZN(n154) );
  XOR2D0 U156 ( .A1(n155), .A2(n154), .Z(scaled_value[14]) );
  INVD0 U157 ( .I(n156), .ZN(n158) );
  CKND2D0 U158 ( .A1(n158), .A2(n157), .ZN(n159) );
  XOR2D0 U159 ( .A1(n160), .A2(n159), .Z(scaled_value[12]) );
  INVD0 U160 ( .I(n161), .ZN(n163) );
  CKND2D0 U161 ( .A1(n163), .A2(n162), .ZN(n164) );
  XOR2D0 U162 ( .A1(n165), .A2(n164), .Z(scaled_value[10]) );
  INVD0 U163 ( .I(n166), .ZN(n168) );
  CKND2D0 U164 ( .A1(n168), .A2(n167), .ZN(n169) );
  XOR2D0 U165 ( .A1(n170), .A2(n169), .Z(scaled_value[8]) );
  INVD0 U166 ( .I(n171), .ZN(n173) );
  CKND2D0 U167 ( .A1(n173), .A2(n172), .ZN(n174) );
  XOR2D0 U168 ( .A1(n175), .A2(n174), .Z(scaled_value[6]) );
  INVD0 U169 ( .I(n176), .ZN(n178) );
  CKND2D0 U170 ( .A1(n178), .A2(n177), .ZN(n179) );
  XOR2D0 U171 ( .A1(n180), .A2(n179), .Z(scaled_value[4]) );
  AOI21D0 U172 ( .A1(n183), .A2(n182), .B(n181), .ZN(n187) );
  CKND2D0 U173 ( .A1(n185), .A2(n184), .ZN(n186) );
  XOR2D0 U174 ( .A1(n187), .A2(n186), .Z(scaled_value[2]) );
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
         N256, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
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
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n2320,
         n2330, n2340, n2350, n2360, n2370, n2380, n2390, n2400, n2410, n2420,
         n2430, n2440, n2450, n2460, n2470, n2480, n2490, n2500, n2510, n2520,
         n2530, n2540, n2550, n2560, n257, n258, n259, n260, n261, n262, n263,
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
         n748, n749, n750, n751, n752, n753, n754, n755, n756, n757, n758,
         n759, n760, n761, n762, n763, n764, n765, n766, n767, n768, n769,
         n770, n771, n772, n773, n774, n775, n776, n777, n778, n779, n780,
         n781, n782, n783, n784, n785, n786, n787, n788, n789, n790, n791,
         n792, n793, n794, n795, n796, n797, n798, n799, n800, n801, n802,
         n803, n804, n805, n806, n807, n808, n809, n810, n811, n812, n813,
         n814, n815, n816, n817, n818, n819, n820, n821, n822, n823, n824,
         n825, n826, n827, n828, n829, n830, n831, n832, n833, n834, n835,
         n836, n837, n838, n839, n840, n841, n842, n843, n844, n845, n846,
         n847, n848, n849, n850, n851, n852, n853, n854, n855, n856, n857,
         n858, n859, n860, n861, n862, n863, n864, n865, n866, n867, n868,
         n869;
  wire   [24:0] base_c1;
  wire   [24:0] base_s1;
  wire   [24:0] base_s2;
  wire   [24:0] base_s3;
  wire   [24:0] sum0;
  wire   [24:0] sum1;
  wire   [24:0] sum2;
  wire   [24:0] shared_s4;
  wire   [24:0] divided_s5;
  wire   [24:0] shared_s5;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15;

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
  sa_scale_VALUE_WIDTH29_COEFF_WIDTH8 division_scale ( .clk(clk), .value({1'b0, 
        1'b0, 1'b0, 1'b0, n50, shared_s4[23:0]}), .coefficient({1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .scaled_value({
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, divided_s5}) );
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
  DFQD1 divide_s1_reg ( .D(n869), .CP(clk), .Q(divide_s1) );
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
  DFQD1 shared_s4_reg_0_ ( .D(sum2[0]), .CP(clk), .Q(shared_s4[0]) );
  DFQD1 shared_s4_reg_1_ ( .D(sum2[1]), .CP(clk), .Q(shared_s4[1]) );
  INVD0 U3 ( .I(n457), .ZN(n649) );
  INVD0 U4 ( .I(n518), .ZN(n436) );
  OAI21D0 U5 ( .A1(n56), .A2(n549), .B(n548), .ZN(n566) );
  OAI21D0 U6 ( .A1(n531), .A2(n654), .B(n661), .ZN(n589) );
  OAI21D0 U7 ( .A1(n531), .A2(n471), .B(n470), .ZN(n600) );
  CKND2D0 U8 ( .A1(n716), .A2(n715), .ZN(n783) );
  INVD0 U9 ( .I(divide_mode), .ZN(n310) );
  INVD0 U10 ( .I(n754), .ZN(n807) );
  INVD0 U11 ( .I(n744), .ZN(n799) );
  OAI21D1 U12 ( .A1(n754), .A2(n507), .B(n506), .ZN(n744) );
  CKND2D0 U13 ( .A1(n749), .A2(n794), .ZN(n628) );
  CKND2D0 U14 ( .A1(n752), .A2(n801), .ZN(n746) );
  CKND2D0 U15 ( .A1(n749), .A2(n748), .ZN(n750) );
  CKND2D0 U16 ( .A1(n787), .A2(n786), .ZN(n788) );
  CKND2D0 U17 ( .A1(n625), .A2(n624), .ZN(n748) );
  OR2D0 U18 ( .A1(n623), .A2(n622), .Z(n794) );
  OR2D0 U19 ( .A1(n619), .A2(n618), .Z(n801) );
  CKND2D0 U20 ( .A1(n619), .A2(n618), .ZN(n800) );
  CKND2D0 U21 ( .A1(n623), .A2(n622), .ZN(n793) );
  CKND2D0 U22 ( .A1(n769), .A2(n811), .ZN(n815) );
  CKND2D0 U23 ( .A1(n718), .A2(n717), .ZN(n786) );
  CKND2D0 U24 ( .A1(n737), .A2(n736), .ZN(n738) );
  AOI21D1 U25 ( .A1(n703), .A2(n702), .B(n701), .ZN(n708) );
  CKND2D0 U26 ( .A1(n397), .A2(n396), .ZN(n818) );
  CKND2D0 U27 ( .A1(n502), .A2(n501), .ZN(n764) );
  CKND2D0 U28 ( .A1(n504), .A2(n503), .ZN(n757) );
  ND2D0 U29 ( .A1(n391), .A2(n390), .ZN(n808) );
  CKND2D0 U30 ( .A1(n393), .A2(n392), .ZN(n810) );
  ND2D0 U31 ( .A1(n500), .A2(n499), .ZN(n804) );
  CKND2D0 U32 ( .A1(n386), .A2(n385), .ZN(n773) );
  AOI21D1 U33 ( .A1(n664), .A2(n663), .B(n662), .ZN(n729) );
  NR2D0 U34 ( .A1(n361), .A2(n360), .ZN(n829) );
  CKND2D0 U35 ( .A1(n384), .A2(n383), .ZN(n822) );
  CKND2D0 U36 ( .A1(n361), .A2(n360), .ZN(n830) );
  CKND2D0 U37 ( .A1(n359), .A2(n358), .ZN(n826) );
  CKND2D0 U38 ( .A1(n354), .A2(n353), .ZN(n836) );
  CKND2D0 U39 ( .A1(n530), .A2(n526), .ZN(n654) );
  CKND2D0 U40 ( .A1(n653), .A2(n658), .ZN(n660) );
  NR2D0 U41 ( .A1(n601), .A2(n525), .ZN(n530) );
  CKND2D0 U42 ( .A1(n352), .A2(n351), .ZN(n840) );
  NR2D0 U43 ( .A1(n466), .A2(n469), .ZN(n526) );
  CKND2D0 U44 ( .A1(n401), .A2(n407), .ZN(n409) );
  ND2D0 U45 ( .A1(n425), .A2(n40), .ZN(n468) );
  NR2D0 U46 ( .A1(n581), .A2(n46), .ZN(n652) );
  ND2D0 U47 ( .A1(n581), .A2(n46), .ZN(n700) );
  NR2D0 U48 ( .A1(n495), .A2(n42), .ZN(n525) );
  CKND2D0 U49 ( .A1(n655), .A2(n47), .ZN(n705) );
  CKND2D0 U50 ( .A1(n259), .A2(n39), .ZN(n402) );
  CKND2D0 U51 ( .A1(n288), .A2(n282), .ZN(n372) );
  CKND2D0 U52 ( .A1(n339), .A2(n338), .ZN(n849) );
  CKND2D0 U53 ( .A1(n561), .A2(n45), .ZN(n591) );
  CKND2D0 U54 ( .A1(n349), .A2(n348), .ZN(n844) );
  CKND2D0 U55 ( .A1(n453), .A2(n41), .ZN(n467) );
  ND2D0 U56 ( .A1(n2420), .A2(n38), .ZN(n403) );
  CKND2D0 U57 ( .A1(n527), .A2(n43), .ZN(n602) );
  CKND2D0 U58 ( .A1(n188), .A2(n35), .ZN(n375) );
  CKND2D0 U59 ( .A1(n227), .A2(n37), .ZN(n268) );
  CKND2D0 U60 ( .A1(n185), .A2(n34), .ZN(n281) );
  CKND2D0 U61 ( .A1(n184), .A2(n33), .ZN(n287) );
  CKND2D0 U62 ( .A1(n180), .A2(n32), .ZN(n294) );
  CKND2D0 U63 ( .A1(n177), .A2(n30), .ZN(n340) );
  CKND2D0 U64 ( .A1(n179), .A2(n31), .ZN(n300) );
  CKND2D0 U65 ( .A1(n168), .A2(n29), .ZN(n332) );
  AOI21D1 U66 ( .A1(n215), .A2(n214), .B(n213), .ZN(n518) );
  NR2D0 U67 ( .A1(n427), .A2(n434), .ZN(n509) );
  CKND2D0 U68 ( .A1(n426), .A2(n432), .ZN(n434) );
  CKND2D0 U69 ( .A1(n128), .A2(n133), .ZN(n205) );
  CKND2D0 U70 ( .A1(n2430), .A2(n2470), .ZN(n427) );
  CKND2D0 U71 ( .A1(n2470), .A2(n2440), .ZN(n2400) );
  CKND2D0 U72 ( .A1(n432), .A2(n429), .ZN(n423) );
  CKND2D0 U73 ( .A1(n209), .A2(n206), .ZN(n202) );
  CKND2D0 U74 ( .A1(n2390), .A2(n37), .ZN(n2440) );
  CKND2D0 U75 ( .A1(n540), .A2(n43), .ZN(n545) );
  CKND2D0 U76 ( .A1(n558), .A2(n44), .ZN(n634) );
  NR2D0 U77 ( .A1(n522), .A2(n42), .ZN(n544) );
  CKND2D0 U78 ( .A1(n422), .A2(n39), .ZN(n429) );
  CKND2D0 U79 ( .A1(n650), .A2(n46), .ZN(n683) );
  CKND2D0 U80 ( .A1(n204), .A2(n209), .ZN(n212) );
  NR2D0 U81 ( .A1(n450), .A2(n40), .ZN(n508) );
  OR2D0 U82 ( .A1(n2390), .A2(n37), .Z(n2470) );
  NR2D0 U83 ( .A1(n540), .A2(n43), .ZN(n547) );
  NR2D0 U84 ( .A1(n257), .A2(n38), .ZN(n411) );
  OR2D0 U85 ( .A1(n422), .A2(n39), .Z(n432) );
  CKND2D0 U86 ( .A1(n125), .A2(n33), .ZN(n130) );
  CKND2D0 U87 ( .A1(n138), .A2(n34), .ZN(n191) );
  CKND2D0 U88 ( .A1(n201), .A2(n35), .ZN(n206) );
  CKND2D0 U89 ( .A1(n95), .A2(n30), .ZN(n146) );
  CKND2D0 U90 ( .A1(n108), .A2(n32), .ZN(n129) );
  CKND2D0 U91 ( .A1(n79), .A2(n28), .ZN(n169) );
  CKND2D0 U92 ( .A1(n224), .A2(n36), .ZN(n228) );
  CKND2D0 U93 ( .A1(n491), .A2(n41), .ZN(n510) );
  INR2D0 U94 ( .A1(n336), .B1(n320), .ZN(n79) );
  INR2D0 U95 ( .A1(n272), .B1(n223), .ZN(n224) );
  INR2D0 U96 ( .A1(n497), .B1(n557), .ZN(n491) );
  INR2D0 U97 ( .A1(n290), .B1(n124), .ZN(n108) );
  INR2D0 U98 ( .A1(n285), .B1(n124), .ZN(n125) );
  CKND2D0 U99 ( .A1(n80), .A2(n29), .ZN(n173) );
  CKND2D0 U100 ( .A1(n569), .A2(n574), .ZN(n670) );
  CKND2D0 U101 ( .A1(n475), .A2(n481), .ZN(n483) );
  CKND2D0 U102 ( .A1(n231), .A2(n2360), .ZN(n476) );
  NR2D0 U103 ( .A1(n414), .A2(n413), .ZN(n475) );
  BUFFD0 U104 ( .I(n863), .Z(n862) );
  BUFFD0 U105 ( .I(n863), .Z(n865) );
  CKND2D0 U106 ( .A1(n25), .A2(n24), .ZN(n672) );
  CKND2D0 U107 ( .A1(n23), .A2(n22), .ZN(n571) );
  CKND2D0 U108 ( .A1(n20), .A2(n19), .ZN(n534) );
  CKND2D0 U109 ( .A1(n21), .A2(n20), .ZN(n535) );
  CKND2D0 U110 ( .A1(n22), .A2(n21), .ZN(n570) );
  CKND2D0 U111 ( .A1(n18), .A2(n17), .ZN(n477) );
  CKND2D0 U112 ( .A1(n19), .A2(n18), .ZN(n478) );
  CKND2D0 U113 ( .A1(n16), .A2(n15), .ZN(n415) );
  CKND2D0 U114 ( .A1(n17), .A2(n16), .ZN(n416) );
  CKND2D0 U115 ( .A1(n14), .A2(n13), .ZN(n2320) );
  CKND2D0 U116 ( .A1(n15), .A2(n14), .ZN(n2330) );
  CKND2D0 U117 ( .A1(n12), .A2(n11), .ZN(n195) );
  CKND2D0 U118 ( .A1(n13), .A2(n12), .ZN(n196) );
  CKND2D0 U119 ( .A1(n7), .A2(n6), .ZN(n63) );
  NR2D0 U120 ( .A1(n12), .A2(n11), .ZN(n194) );
  NR2D0 U121 ( .A1(n8), .A2(n7), .ZN(n89) );
  CKND2D0 U122 ( .A1(n10), .A2(n9), .ZN(n114) );
  CKND2D0 U123 ( .A1(n11), .A2(n10), .ZN(n115) );
  CKND2D0 U124 ( .A1(n9), .A2(n8), .ZN(n91) );
  CKND2D0 U125 ( .A1(n24), .A2(n23), .ZN(n671) );
  BUFFD0 U126 ( .I(shared_s4[24]), .Z(n50) );
  CKND2D0 U127 ( .A1(n791), .A2(n790), .ZN(n792) );
  NR2D0 U128 ( .A1(n628), .A2(n746), .ZN(n630) );
  CKND2D0 U129 ( .A1(n752), .A2(n797), .ZN(n753) );
  NR2D0 U130 ( .A1(n714), .A2(n713), .ZN(n740) );
  CKND2D0 U131 ( .A1(n801), .A2(n800), .ZN(n802) );
  CKND2D0 U132 ( .A1(n787), .A2(n742), .ZN(n722) );
  CKND2D0 U133 ( .A1(n819), .A2(n818), .ZN(n820) );
  CKND2D0 U134 ( .A1(n794), .A2(n793), .ZN(n795) );
  CKND2D0 U135 ( .A1(n765), .A2(n764), .ZN(n766) );
  CKND2D0 U136 ( .A1(n742), .A2(n783), .ZN(n743) );
  CKND2D0 U137 ( .A1(n756), .A2(n758), .ZN(n507) );
  NR2D0 U138 ( .A1(n817), .A2(n815), .ZN(n399) );
  CKND2D0 U139 ( .A1(n769), .A2(n808), .ZN(n770) );
  CKND2D0 U140 ( .A1(n758), .A2(n757), .ZN(n759) );
  CKND2D0 U141 ( .A1(n805), .A2(n804), .ZN(n806) );
  OR2D0 U142 ( .A1(n718), .A2(n717), .Z(n787) );
  OR2D0 U143 ( .A1(n504), .A2(n503), .Z(n758) );
  OR2D0 U144 ( .A1(n735), .A2(n734), .Z(n737) );
  CKND2D0 U145 ( .A1(n811), .A2(n810), .ZN(n812) );
  NR2D0 U146 ( .A1(n716), .A2(n715), .ZN(n784) );
  CKND2D0 U147 ( .A1(n735), .A2(n734), .ZN(n736) );
  CKND2D0 U148 ( .A1(n831), .A2(n830), .ZN(n832) );
  NR2D0 U149 ( .A1(n391), .A2(n390), .ZN(n809) );
  CKND2D0 U150 ( .A1(n774), .A2(n773), .ZN(n775) );
  NR2D0 U151 ( .A1(n500), .A2(n499), .ZN(n761) );
  INVD1 U152 ( .I(n729), .ZN(n697) );
  CKND2D0 U153 ( .A1(n823), .A2(n822), .ZN(n824) );
  CKND2D0 U154 ( .A1(n778), .A2(n826), .ZN(n779) );
  NR2D0 U155 ( .A1(n660), .A2(n654), .ZN(n664) );
  NR2D0 U156 ( .A1(n359), .A2(n358), .ZN(n827) );
  CKND2D0 U157 ( .A1(n837), .A2(n836), .ZN(n838) );
  CKND2D0 U158 ( .A1(n599), .A2(n597), .ZN(n496) );
  CKND2D0 U159 ( .A1(n706), .A2(n705), .ZN(n707) );
  CKND2D0 U160 ( .A1(n461), .A2(n468), .ZN(n462) );
  CKND2D0 U161 ( .A1(n702), .A2(n700), .ZN(n582) );
  CKND2D0 U162 ( .A1(n274), .A2(n403), .ZN(n275) );
  CKND2D0 U163 ( .A1(n365), .A2(n364), .ZN(n366) );
  NR2D0 U164 ( .A1(n652), .A2(n704), .ZN(n658) );
  CKND2D0 U165 ( .A1(n260), .A2(n402), .ZN(n261) );
  CKND2D0 U166 ( .A1(n454), .A2(n467), .ZN(n455) );
  CKND2D0 U167 ( .A1(n592), .A2(n591), .ZN(n593) );
  CKND2D0 U168 ( .A1(n611), .A2(n610), .ZN(n612) );
  NR2D0 U169 ( .A1(n587), .A2(n590), .ZN(n653) );
  CKND2D0 U170 ( .A1(n269), .A2(n268), .ZN(n270) );
  CKND2D0 U171 ( .A1(n376), .A2(n375), .ZN(n377) );
  CKND2D0 U172 ( .A1(n603), .A2(n602), .ZN(n604) );
  NR2D0 U173 ( .A1(n372), .A2(n374), .ZN(n190) );
  ND2D0 U174 ( .A1(n495), .A2(n42), .ZN(n597) );
  ND2D0 U175 ( .A1(n560), .A2(n44), .ZN(n610) );
  CKND2D0 U176 ( .A1(n282), .A2(n281), .ZN(n283) );
  NR2D0 U177 ( .A1(n226), .A2(n36), .ZN(n265) );
  CKND2D0 U178 ( .A1(n288), .A2(n287), .ZN(n289) );
  CKND2D0 U179 ( .A1(n226), .A2(n36), .ZN(n364) );
  CKND2D0 U180 ( .A1(n295), .A2(n294), .ZN(n296) );
  NR2D0 U181 ( .A1(n184), .A2(n33), .ZN(n280) );
  CKND2D0 U182 ( .A1(n509), .A2(n514), .ZN(n517) );
  CKND2D0 U183 ( .A1(n426), .A2(n428), .ZN(n258) );
  CKND2D0 U184 ( .A1(n541), .A2(n545), .ZN(n542) );
  CKND2D0 U185 ( .A1(n451), .A2(n511), .ZN(n452) );
  CKND2D0 U186 ( .A1(n565), .A2(n634), .ZN(n559) );
  NR2D0 U187 ( .A1(n212), .A2(n205), .ZN(n215) );
  CKND2D0 U188 ( .A1(n678), .A2(n682), .ZN(n679) );
  CKND2D0 U189 ( .A1(n578), .A2(n633), .ZN(n579) );
  CKND2D0 U190 ( .A1(n523), .A2(n546), .ZN(n524) );
  CKND2D0 U191 ( .A1(n666), .A2(n683), .ZN(n651) );
  NR2D0 U192 ( .A1(n512), .A2(n508), .ZN(n514) );
  CKND2D0 U193 ( .A1(n492), .A2(n510), .ZN(n493) );
  CKND2D0 U194 ( .A1(n128), .A2(n129), .ZN(n109) );
  NR2D0 U195 ( .A1(n544), .A2(n547), .ZN(n632) );
  CKND2D0 U196 ( .A1(n577), .A2(n45), .ZN(n633) );
  NR2D0 U197 ( .A1(n577), .A2(n45), .ZN(n635) );
  ND2D0 U198 ( .A1(n522), .A2(n42), .ZN(n546) );
  CKND2D0 U199 ( .A1(n2430), .A2(n228), .ZN(n225) );
  ND2D0 U200 ( .A1(n257), .A2(n38), .ZN(n428) );
  CKND2D0 U201 ( .A1(n204), .A2(n191), .ZN(n139) );
  CKND2D0 U202 ( .A1(n133), .A2(n130), .ZN(n126) );
  NR2D0 U203 ( .A1(n650), .A2(n46), .ZN(n681) );
  NR2D0 U204 ( .A1(n677), .A2(n47), .ZN(n684) );
  ND2D0 U205 ( .A1(n450), .A2(n40), .ZN(n511) );
  CKND2D0 U206 ( .A1(n677), .A2(n47), .ZN(n682) );
  INR2D0 U207 ( .A1(n595), .B1(n557), .ZN(n558) );
  INR2D0 U208 ( .A1(n698), .B1(n320), .ZN(n677) );
  INR2D0 U209 ( .A1(n584), .B1(n649), .ZN(n577) );
  OR2D0 U210 ( .A1(n710), .A2(n649), .Z(n650) );
  NR2D0 U211 ( .A1(n108), .A2(n32), .ZN(n110) );
  CKND2D0 U212 ( .A1(n78), .A2(n27), .ZN(n151) );
  CKBD1 U213 ( .I(n649), .Z(n490) );
  CKBD1 U214 ( .I(n459), .Z(n585) );
  INR2D0 U215 ( .A1(n317), .B1(n869), .ZN(n71) );
  INR2D0 U216 ( .A1(n311), .B1(n869), .ZN(n78) );
  AO21D0 U217 ( .A1(n487), .A2(n486), .B(n485), .Z(n692) );
  NR2D0 U218 ( .A1(n476), .A2(n483), .ZN(n486) );
  CKBD1 U219 ( .I(n310), .Z(n457) );
  CKND2D0 U220 ( .A1(n2540), .A2(n416), .ZN(n2550) );
  CKND2D0 U221 ( .A1(n2510), .A2(n415), .ZN(n2370) );
  CKND2D0 U222 ( .A1(n220), .A2(n2330), .ZN(n221) );
  CKND2D0 U223 ( .A1(n113), .A2(n118), .ZN(n120) );
  CKND2D0 U224 ( .A1(n446), .A2(n478), .ZN(n447) );
  CKND2D0 U225 ( .A1(n419), .A2(n477), .ZN(n420) );
  CKND2D0 U226 ( .A1(n217), .A2(n2320), .ZN(n199) );
  CKND2D0 U227 ( .A1(n488), .A2(n534), .ZN(n489) );
  CKND2D0 U228 ( .A1(n135), .A2(n196), .ZN(n136) );
  CKND2D0 U229 ( .A1(n519), .A2(n535), .ZN(n520) );
  CKND2D0 U230 ( .A1(n643), .A2(n671), .ZN(n575) );
  CKND2D0 U231 ( .A1(n554), .A2(n571), .ZN(n555) );
  CKND2D0 U232 ( .A1(n551), .A2(n570), .ZN(n538) );
  CKND2D0 U233 ( .A1(n646), .A2(n672), .ZN(n647) );
  NR2D0 U234 ( .A1(n230), .A2(n229), .ZN(n2360) );
  NR2D0 U235 ( .A1(n568), .A2(n567), .ZN(n574) );
  NR2D0 U236 ( .A1(n533), .A2(n532), .ZN(n569) );
  NR2D0 U237 ( .A1(n474), .A2(n473), .ZN(n481) );
  NR2D0 U238 ( .A1(n20), .A2(n19), .ZN(n533) );
  NR2D0 U239 ( .A1(n21), .A2(n20), .ZN(n532) );
  NR2D0 U240 ( .A1(n22), .A2(n21), .ZN(n568) );
  NR2D0 U241 ( .A1(n23), .A2(n22), .ZN(n567) );
  NR2D0 U242 ( .A1(n25), .A2(n24), .ZN(n668) );
  NR2D0 U243 ( .A1(n13), .A2(n12), .ZN(n193) );
  CKND2D0 U244 ( .A1(n8), .A2(n7), .ZN(n90) );
  NR2D0 U245 ( .A1(n14), .A2(n13), .ZN(n230) );
  NR2D0 U246 ( .A1(n15), .A2(n14), .ZN(n229) );
  NR2D0 U247 ( .A1(n16), .A2(n15), .ZN(n414) );
  NR2D0 U248 ( .A1(n17), .A2(n16), .ZN(n413) );
  NR2D0 U249 ( .A1(n19), .A2(n18), .ZN(n473) );
  CKND2D0 U250 ( .A1(n6), .A2(n5), .ZN(n74) );
  CKND2D0 U251 ( .A1(n4), .A2(y_mantissa[0]), .ZN(n69) );
  NR2D0 U252 ( .A1(n24), .A2(n23), .ZN(n669) );
  BUFFD1 U253 ( .I(divide_s5), .Z(n863) );
  BUFFD1 U254 ( .I(divide_s5), .Z(n866) );
  XNR2D0 U255 ( .A1(n789), .A2(n788), .ZN(base_c1[23]) );
  XOR2D0 U256 ( .A1(n751), .A2(n750), .Z(base_c1[20]) );
  XOR2D0 U257 ( .A1(n739), .A2(n738), .Z(base_c1[24]) );
  XOR2D0 U258 ( .A1(n785), .A2(n743), .Z(base_c1[22]) );
  OAI21D0 U259 ( .A1(n785), .A2(n784), .B(n783), .ZN(n789) );
  AOI21D0 U260 ( .A1(n796), .A2(n794), .B(n747), .ZN(n751) );
  XNR2D0 U261 ( .A1(n57), .A2(n792), .ZN(base_c1[21]) );
  XNR2D0 U262 ( .A1(n796), .A2(n795), .ZN(base_c1[19]) );
  XNR2D0 U263 ( .A1(n803), .A2(n802), .ZN(base_c1[18]) );
  AOI21D0 U264 ( .A1(n57), .A2(n724), .B(n723), .ZN(n739) );
  OAI21D0 U265 ( .A1(n799), .A2(n798), .B(n797), .ZN(n803) );
  XOR2D0 U266 ( .A1(n799), .A2(n753), .Z(base_c1[17]) );
  XOR2D0 U267 ( .A1(n767), .A2(n766), .Z(base_c1[15]) );
  XOR2D0 U268 ( .A1(n760), .A2(n759), .Z(base_c1[16]) );
  AO21D0 U269 ( .A1(n744), .A2(n630), .B(n629), .Z(n57) );
  AOI21D0 U270 ( .A1(n807), .A2(n756), .B(n755), .ZN(n760) );
  OAI21D0 U271 ( .A1(n628), .A2(n745), .B(n627), .ZN(n629) );
  AOI21D0 U272 ( .A1(n807), .A2(n805), .B(n762), .ZN(n767) );
  XNR2D0 U273 ( .A1(n807), .A2(n806), .ZN(base_c1[14]) );
  INVD0 U274 ( .I(n740), .ZN(n791) );
  INVD0 U275 ( .I(n790), .ZN(n741) );
  AOI21D0 U276 ( .A1(n749), .A2(n747), .B(n626), .ZN(n627) );
  XNR2D0 U277 ( .A1(n813), .A2(n812), .ZN(base_c1[12]) );
  OAI21D0 U278 ( .A1(n722), .A2(n790), .B(n721), .ZN(n723) );
  XNR2D0 U279 ( .A1(n821), .A2(n820), .ZN(base_c1[13]) );
  NR2D0 U280 ( .A1(n722), .A2(n740), .ZN(n724) );
  CKND2D1 U281 ( .A1(n714), .A2(n713), .ZN(n790) );
  OAI21D0 U282 ( .A1(n816), .A2(n815), .B(n814), .ZN(n821) );
  INVD0 U283 ( .I(n748), .ZN(n626) );
  XOR2D0 U284 ( .A1(n816), .A2(n770), .Z(base_c1[11]) );
  OAI21D0 U285 ( .A1(n816), .A2(n809), .B(n808), .ZN(n813) );
  INVD0 U286 ( .I(n768), .ZN(n816) );
  XOR2D0 U287 ( .A1(n708), .A2(n707), .Z(n714) );
  OR2D1 U288 ( .A1(n625), .A2(n624), .Z(n749) );
  XOR2D0 U289 ( .A1(n776), .A2(n775), .Z(base_c1[10]) );
  AOI21D0 U290 ( .A1(n755), .A2(n758), .B(n505), .ZN(n506) );
  INVD0 U291 ( .I(n793), .ZN(n747) );
  INVD0 U292 ( .I(n800), .ZN(n620) );
  INVD0 U293 ( .I(n798), .ZN(n752) );
  OAI21D0 U294 ( .A1(n817), .A2(n814), .B(n818), .ZN(n398) );
  XNR2D0 U295 ( .A1(n703), .A2(n582), .ZN(n625) );
  AOI21D0 U296 ( .A1(n811), .A2(n395), .B(n394), .ZN(n814) );
  OAI21D0 U297 ( .A1(n763), .A2(n804), .B(n764), .ZN(n755) );
  XNR2D0 U298 ( .A1(n825), .A2(n824), .ZN(base_c1[9]) );
  AOI21D0 U299 ( .A1(n825), .A2(n823), .B(n772), .ZN(n776) );
  NR2XD0 U300 ( .A1(n763), .A2(n761), .ZN(n756) );
  INVD0 U301 ( .I(n817), .ZN(n819) );
  XNR2D0 U302 ( .A1(n833), .A2(n832), .ZN(base_c1[8]) );
  INVD0 U303 ( .I(n784), .ZN(n742) );
  NR2XD0 U304 ( .A1(n617), .A2(n616), .ZN(n798) );
  INVD0 U305 ( .I(n757), .ZN(n505) );
  CKND2D1 U306 ( .A1(n617), .A2(n616), .ZN(n797) );
  OAI21D0 U307 ( .A1(n771), .A2(n389), .B(n388), .ZN(n768) );
  INVD0 U308 ( .I(n763), .ZN(n765) );
  OAI21D0 U309 ( .A1(n828), .A2(n827), .B(n826), .ZN(n833) );
  XOR2D0 U310 ( .A1(n613), .A2(n612), .Z(n619) );
  INVD0 U311 ( .I(n771), .ZN(n825) );
  XOR2D0 U312 ( .A1(n693), .A2(n728), .Z(n718) );
  INVD0 U313 ( .I(n809), .ZN(n769) );
  AOI21D0 U314 ( .A1(n774), .A2(n772), .B(n387), .ZN(n388) );
  INVD0 U315 ( .I(n761), .ZN(n805) );
  INVD0 U316 ( .I(n804), .ZN(n762) );
  XOR2D0 U317 ( .A1(n828), .A2(n779), .Z(base_c1[7]) );
  XOR2D0 U318 ( .A1(n605), .A2(n604), .Z(n617) );
  XOR2D0 U319 ( .A1(n594), .A2(n593), .Z(n623) );
  NR2XD0 U320 ( .A1(n397), .A2(n396), .ZN(n817) );
  NR2XD0 U321 ( .A1(n502), .A2(n501), .ZN(n763) );
  INVD0 U322 ( .I(n810), .ZN(n394) );
  INVD0 U323 ( .I(n589), .ZN(n613) );
  AOI21D0 U324 ( .A1(n600), .A2(n599), .B(n598), .ZN(n605) );
  XNR2D0 U325 ( .A1(n600), .A2(n496), .ZN(n504) );
  XNR2D0 U326 ( .A1(n697), .A2(n725), .ZN(n716) );
  AOI21D0 U327 ( .A1(n589), .A2(n611), .B(n588), .ZN(n594) );
  INVD0 U328 ( .I(n777), .ZN(n828) );
  OR2D0 U329 ( .A1(n393), .A2(n392), .Z(n811) );
  AOI21D0 U330 ( .A1(n363), .A2(n777), .B(n362), .ZN(n771) );
  XNR2D0 U331 ( .A1(n262), .A2(n261), .ZN(n397) );
  XNR2D0 U332 ( .A1(n456), .A2(n455), .ZN(n502) );
  CKND2D0 U333 ( .A1(n774), .A2(n823), .ZN(n389) );
  NR2XD0 U334 ( .A1(n697), .A2(n725), .ZN(n693) );
  INVD0 U335 ( .I(n773), .ZN(n387) );
  OAI21D0 U336 ( .A1(n276), .A2(n400), .B(n403), .ZN(n262) );
  OR2D0 U337 ( .A1(n386), .A2(n385), .Z(n774) );
  OAI21D0 U338 ( .A1(n357), .A2(n834), .B(n356), .ZN(n777) );
  XOR2D0 U339 ( .A1(n276), .A2(n275), .Z(n393) );
  XOR2D0 U340 ( .A1(n531), .A2(n462), .Z(n500) );
  OAI21D0 U341 ( .A1(n531), .A2(n466), .B(n468), .ZN(n456) );
  INVD0 U342 ( .I(n822), .ZN(n772) );
  XOR2D0 U343 ( .A1(n271), .A2(n270), .Z(n391) );
  OAI21D0 U344 ( .A1(n729), .A2(n728), .B(n727), .ZN(n733) );
  OAI21D0 U345 ( .A1(n829), .A2(n826), .B(n830), .ZN(n362) );
  OR2D0 U346 ( .A1(n384), .A2(n383), .Z(n823) );
  XNR2D0 U347 ( .A1(n367), .A2(n366), .ZN(n386) );
  AOI21D0 U348 ( .A1(n837), .A2(n835), .B(n355), .ZN(n356) );
  AOI21D0 U349 ( .A1(n367), .A2(n365), .B(n266), .ZN(n271) );
  XOR2D0 U350 ( .A1(n839), .A2(n838), .Z(base_c1[6]) );
  CKND2D0 U351 ( .A1(n837), .A2(n841), .ZN(n357) );
  XNR2D0 U352 ( .A1(n284), .A2(n283), .ZN(n361) );
  XNR2D0 U353 ( .A1(n378), .A2(n377), .ZN(n384) );
  AOI21D0 U354 ( .A1(n842), .A2(n841), .B(n835), .ZN(n839) );
  INVD0 U355 ( .I(n410), .ZN(n367) );
  OAI21D0 U356 ( .A1(n410), .A2(n409), .B(n408), .ZN(n663) );
  OAI21D0 U357 ( .A1(n661), .A2(n660), .B(n659), .ZN(n662) );
  XOR2D0 U358 ( .A1(n373), .A2(n289), .Z(n359) );
  AOI21D0 U359 ( .A1(n658), .A2(n657), .B(n656), .ZN(n659) );
  CKND2D0 U360 ( .A1(n841), .A2(n840), .ZN(n843) );
  OAI21D0 U361 ( .A1(n373), .A2(n280), .B(n287), .ZN(n284) );
  AOI21D0 U362 ( .A1(n530), .A2(n529), .B(n528), .ZN(n661) );
  INVD0 U363 ( .I(n529), .ZN(n470) );
  AOI21D0 U364 ( .A1(n190), .A2(n279), .B(n189), .ZN(n410) );
  OR2D0 U365 ( .A1(n354), .A2(n353), .Z(n837) );
  OAI21D0 U366 ( .A1(n373), .A2(n372), .B(n371), .ZN(n378) );
  INVD0 U367 ( .I(n840), .ZN(n835) );
  CKND2D0 U368 ( .A1(n850), .A2(n849), .ZN(n851) );
  INVD0 U369 ( .I(n700), .ZN(n701) );
  INVD0 U370 ( .I(n653), .ZN(n563) );
  XOR2D0 U371 ( .A1(n731), .A2(n52), .Z(n732) );
  INVD0 U372 ( .I(n466), .ZN(n461) );
  INVD0 U373 ( .I(n652), .ZN(n702) );
  OAI21D0 U374 ( .A1(n469), .A2(n468), .B(n467), .ZN(n529) );
  OAI21D0 U375 ( .A1(n601), .A2(n597), .B(n602), .ZN(n528) );
  OAI21D0 U376 ( .A1(n704), .A2(n700), .B(n705), .ZN(n656) );
  XOR2D0 U377 ( .A1(n297), .A2(n296), .Z(n354) );
  INVD0 U378 ( .I(n657), .ZN(n562) );
  INVD0 U379 ( .I(n704), .ZN(n706) );
  INVD0 U380 ( .I(n597), .ZN(n598) );
  INVD0 U381 ( .I(n525), .ZN(n599) );
  AOI21D0 U382 ( .A1(n407), .A2(n406), .B(n405), .ZN(n408) );
  CKND2D0 U383 ( .A1(n726), .A2(n725), .ZN(n727) );
  OR2D0 U384 ( .A1(n352), .A2(n351), .Z(n841) );
  INVD0 U385 ( .I(n279), .ZN(n373) );
  INVD0 U386 ( .I(n726), .ZN(n728) );
  OAI21D0 U387 ( .A1(n371), .A2(n374), .B(n375), .ZN(n189) );
  AOI21D0 U388 ( .A1(n846), .A2(n845), .B(n350), .ZN(n834) );
  XNR2D0 U389 ( .A1(n730), .A2(n52), .ZN(n726) );
  NR2XD0 U390 ( .A1(n265), .A2(n267), .ZN(n401) );
  AOI21D0 U391 ( .A1(n303), .A2(n301), .B(n293), .ZN(n297) );
  XNR2D0 U392 ( .A1(n303), .A2(n302), .ZN(n352) );
  INVD0 U393 ( .I(n265), .ZN(n365) );
  INVD0 U394 ( .I(n469), .ZN(n454) );
  OAI21D0 U395 ( .A1(n267), .A2(n364), .B(n268), .ZN(n406) );
  AOI21D0 U396 ( .A1(n282), .A2(n187), .B(n186), .ZN(n371) );
  INVD0 U397 ( .I(n590), .ZN(n592) );
  INVD0 U398 ( .I(n364), .ZN(n266) );
  OAI21D0 U399 ( .A1(n852), .A2(n848), .B(n849), .ZN(n846) );
  CKND2D0 U400 ( .A1(n845), .A2(n844), .ZN(n847) );
  NR2XD0 U401 ( .A1(n655), .A2(n47), .ZN(n704) );
  NR2XD0 U402 ( .A1(n400), .A2(n404), .ZN(n407) );
  OAI21D0 U403 ( .A1(n404), .A2(n403), .B(n402), .ZN(n405) );
  NR2XD0 U404 ( .A1(n425), .A2(n40), .ZN(n466) );
  INVD0 U405 ( .I(n610), .ZN(n588) );
  INVD0 U406 ( .I(n404), .ZN(n260) );
  INVD0 U407 ( .I(n587), .ZN(n611) );
  OAI21D0 U408 ( .A1(n183), .A2(n292), .B(n182), .ZN(n279) );
  OAI21D0 U409 ( .A1(n590), .A2(n610), .B(n591), .ZN(n657) );
  NR2D0 U410 ( .A1(n730), .A2(n52), .ZN(n731) );
  OAI21D0 U411 ( .A1(n685), .A2(n55), .B(n54), .ZN(n730) );
  XOR2D0 U412 ( .A1(n685), .A2(n651), .Z(n655) );
  NR2XD0 U413 ( .A1(n259), .A2(n39), .ZN(n404) );
  NR2XD0 U414 ( .A1(n561), .A2(n45), .ZN(n590) );
  NR2D0 U415 ( .A1(n339), .A2(n338), .ZN(n848) );
  INVD0 U416 ( .I(n292), .ZN(n303) );
  XNR2D0 U417 ( .A1(n424), .A2(n423), .ZN(n425) );
  XOR2D0 U418 ( .A1(n680), .A2(n679), .Z(n725) );
  INVD0 U419 ( .I(n281), .ZN(n186) );
  NR2XD0 U420 ( .A1(n2420), .A2(n38), .ZN(n400) );
  XOR2D0 U421 ( .A1(n580), .A2(n579), .Z(n581) );
  INVD0 U422 ( .I(n601), .ZN(n603) );
  XNR2D0 U423 ( .A1(n494), .A2(n493), .ZN(n495) );
  AOI21D0 U424 ( .A1(n295), .A2(n293), .B(n181), .ZN(n182) );
  NR2XD0 U425 ( .A1(n453), .A2(n41), .ZN(n469) );
  AOI21D0 U426 ( .A1(n566), .A2(n565), .B(n564), .ZN(n580) );
  OAI21D0 U427 ( .A1(n412), .A2(n411), .B(n428), .ZN(n424) );
  NR2XD0 U428 ( .A1(n227), .A2(n37), .ZN(n267) );
  XOR2D0 U429 ( .A1(n335), .A2(n334), .Z(n339) );
  XOR2D0 U430 ( .A1(n2410), .A2(n2400), .Z(n2420) );
  OAI21D0 U431 ( .A1(n472), .A2(n508), .B(n511), .ZN(n494) );
  INVD0 U432 ( .I(n294), .ZN(n181) );
  CKND2D0 U433 ( .A1(n859), .A2(n858), .ZN(n861) );
  OR2D0 U434 ( .A1(n185), .A2(n34), .Z(n282) );
  XOR2D0 U435 ( .A1(n203), .A2(n202), .Z(n226) );
  AOI21D0 U436 ( .A1(n342), .A2(n341), .B(n178), .ZN(n292) );
  AOI21D0 U437 ( .A1(n854), .A2(n855), .B(n330), .ZN(n852) );
  XNR2D0 U438 ( .A1(n343), .A2(n342), .ZN(n349) );
  XNR2D0 U439 ( .A1(n543), .A2(n542), .ZN(n560) );
  XNR2D0 U440 ( .A1(n566), .A2(n559), .ZN(n561) );
  XOR2D0 U441 ( .A1(n472), .A2(n452), .Z(n453) );
  INVD0 U442 ( .I(n280), .ZN(n288) );
  AOI21D0 U443 ( .A1(n667), .A2(n666), .B(n665), .ZN(n680) );
  NR2XD0 U444 ( .A1(n527), .A2(n43), .ZN(n601) );
  NR2XD0 U445 ( .A1(n188), .A2(n35), .ZN(n374) );
  XOR2D0 U446 ( .A1(n412), .A2(n258), .Z(n259) );
  INVD0 U447 ( .I(n667), .ZN(n685) );
  CKND2D0 U448 ( .A1(n295), .A2(n301), .ZN(n183) );
  CKND2D0 U449 ( .A1(n333), .A2(n332), .ZN(n334) );
  AOI21D0 U450 ( .A1(n192), .A2(n204), .B(n208), .ZN(n203) );
  OR2D0 U451 ( .A1(n180), .A2(n32), .Z(n295) );
  INVD0 U452 ( .I(n300), .ZN(n293) );
  CKND2D0 U453 ( .A1(n854), .A2(n853), .ZN(n856) );
  CKND2D0 U454 ( .A1(n301), .A2(n300), .ZN(n302) );
  XNR2D0 U455 ( .A1(n436), .A2(n225), .ZN(n227) );
  AOI21D0 U456 ( .A1(n436), .A2(n2430), .B(n2460), .ZN(n2410) );
  XNR2D0 U457 ( .A1(n127), .A2(n126), .ZN(n185) );
  CKND2D0 U458 ( .A1(n341), .A2(n340), .ZN(n343) );
  XNR2D0 U459 ( .A1(n192), .A2(n139), .ZN(n188) );
  OAI21D0 U460 ( .A1(n56), .A2(n544), .B(n546), .ZN(n543) );
  OAI21D0 U461 ( .A1(n857), .A2(n327), .B(n858), .ZN(n855) );
  OAI21D0 U462 ( .A1(n56), .A2(n640), .B(n639), .ZN(n667) );
  XOR2D0 U463 ( .A1(n56), .A2(n524), .Z(n527) );
  OAI21D0 U464 ( .A1(n134), .A2(n110), .B(n129), .ZN(n127) );
  CKND2D0 U465 ( .A1(n326), .A2(n325), .ZN(n858) );
  CKND2D0 U466 ( .A1(n329), .A2(n328), .ZN(n853) );
  OA21D0 U467 ( .A1(n518), .A2(n517), .B(n516), .Z(n56) );
  XOR2D0 U468 ( .A1(n134), .A2(n109), .Z(n184) );
  OAI21D0 U469 ( .A1(n134), .A2(n205), .B(n211), .ZN(n192) );
  OAI21D0 U470 ( .A1(n335), .A2(n331), .B(n332), .ZN(n342) );
  XOR2D0 U471 ( .A1(n145), .A2(n144), .Z(n180) );
  INVD0 U472 ( .I(n214), .ZN(n134) );
  AOI21D0 U473 ( .A1(n149), .A2(n147), .B(n141), .ZN(n145) );
  NR2D0 U474 ( .A1(n168), .A2(n29), .ZN(n331) );
  XNR2D0 U475 ( .A1(n149), .A2(n148), .ZN(n179) );
  AOI21D0 U476 ( .A1(n307), .A2(n308), .B(n164), .ZN(n335) );
  XNR2D0 U477 ( .A1(n176), .A2(n175), .ZN(n177) );
  CKND2D0 U478 ( .A1(n315), .A2(n314), .ZN(n316) );
  OAI21D0 U479 ( .A1(n171), .A2(n170), .B(n169), .ZN(n176) );
  INVD0 U480 ( .I(n140), .ZN(n149) );
  AOI21D0 U481 ( .A1(n515), .A2(n514), .B(n513), .ZN(n516) );
  XOR2D0 U482 ( .A1(n167), .A2(n171), .Z(n168) );
  OAI21D0 U483 ( .A1(n140), .A2(n99), .B(n98), .ZN(n214) );
  CKND2D0 U484 ( .A1(n307), .A2(n306), .ZN(n309) );
  INVD0 U485 ( .I(n637), .ZN(n548) );
  AOI21D0 U486 ( .A1(n82), .A2(n166), .B(n81), .ZN(n140) );
  CKND2D0 U487 ( .A1(n632), .A2(n638), .ZN(n640) );
  CKND2D0 U488 ( .A1(n163), .A2(n28), .ZN(n306) );
  INVD0 U489 ( .I(n166), .ZN(n171) );
  OAI21D0 U490 ( .A1(n435), .A2(n434), .B(n433), .ZN(n515) );
  INVD0 U491 ( .I(n435), .ZN(n2480) );
  AOI21D0 U492 ( .A1(n638), .A2(n637), .B(n636), .ZN(n639) );
  INVD0 U493 ( .I(n547), .ZN(n541) );
  INVD0 U494 ( .I(n631), .ZN(n565) );
  INVD0 U495 ( .I(n635), .ZN(n578) );
  INVD0 U496 ( .I(n544), .ZN(n523) );
  OAI21D0 U497 ( .A1(n153), .A2(n150), .B(n151), .ZN(n166) );
  INVD0 U498 ( .I(n681), .ZN(n666) );
  INVD0 U499 ( .I(n634), .ZN(n564) );
  INVD0 U500 ( .I(n683), .ZN(n665) );
  OAI21D0 U501 ( .A1(n212), .A2(n211), .B(n210), .ZN(n213) );
  NR2D0 U502 ( .A1(n631), .A2(n635), .ZN(n638) );
  CKND2D0 U503 ( .A1(n162), .A2(n27), .ZN(n314) );
  AOI21D0 U504 ( .A1(n432), .A2(n431), .B(n430), .ZN(n433) );
  OAI21D0 U505 ( .A1(n547), .A2(n546), .B(n545), .ZN(n637) );
  OA21D0 U506 ( .A1(n684), .A2(n683), .B(n682), .Z(n54) );
  AOI21D0 U507 ( .A1(n2470), .A2(n2460), .B(n2450), .ZN(n435) );
  OAI21D0 U508 ( .A1(n635), .A2(n634), .B(n633), .ZN(n636) );
  XOR2D0 U509 ( .A1(n586), .A2(n711), .Z(n624) );
  XOR2D0 U510 ( .A1(n712), .A2(n711), .Z(n713) );
  INVD0 U511 ( .I(n411), .ZN(n426) );
  INVD0 U512 ( .I(n2440), .ZN(n2450) );
  OAI21D0 U513 ( .A1(n512), .A2(n511), .B(n510), .ZN(n513) );
  CKND2D0 U514 ( .A1(n165), .A2(n169), .ZN(n167) );
  CKND2D0 U515 ( .A1(n322), .A2(n26), .ZN(n323) );
  XOR2D0 U516 ( .A1(n699), .A2(n782), .Z(n715) );
  AOI21D0 U517 ( .A1(n209), .A2(n208), .B(n207), .ZN(n210) );
  XOR2D0 U518 ( .A1(n615), .A2(n711), .Z(n618) );
  AOI21D0 U519 ( .A1(n133), .A2(n132), .B(n131), .ZN(n211) );
  AOI21D0 U520 ( .A1(n143), .A2(n141), .B(n97), .ZN(n98) );
  INVD0 U521 ( .I(n429), .ZN(n430) );
  XOR2D0 U522 ( .A1(n596), .A2(n711), .Z(n622) );
  AOI21D0 U523 ( .A1(n156), .A2(n157), .B(n72), .ZN(n153) );
  XOR2D0 U524 ( .A1(n609), .A2(n608), .Z(n616) );
  INVD0 U525 ( .I(n512), .ZN(n492) );
  INVD0 U526 ( .I(n508), .ZN(n451) );
  INR2XD0 U527 ( .A1(n607), .B1(n557), .ZN(n522) );
  INVD0 U528 ( .I(n146), .ZN(n141) );
  OAI21D0 U529 ( .A1(n172), .A2(n169), .B(n173), .ZN(n81) );
  CKND2D0 U530 ( .A1(n147), .A2(n146), .ZN(n148) );
  IND2D0 U531 ( .A1(n710), .B1(n709), .ZN(n712) );
  CKND2D0 U532 ( .A1(n147), .A2(n143), .ZN(n99) );
  INR2XD0 U533 ( .A1(n614), .B1(n557), .ZN(n540) );
  IND2D0 U534 ( .A1(n698), .B1(n869), .ZN(n699) );
  CKND2D0 U535 ( .A1(n143), .A2(n142), .ZN(n144) );
  XOR2D0 U536 ( .A1(n498), .A2(n608), .Z(n503) );
  INVD0 U537 ( .I(n130), .ZN(n131) );
  INVD0 U538 ( .I(n142), .ZN(n97) );
  INVD0 U539 ( .I(n206), .ZN(n207) );
  NR2XD0 U540 ( .A1(n491), .A2(n41), .ZN(n512) );
  INVD0 U541 ( .I(n191), .ZN(n208) );
  INVD0 U542 ( .I(n110), .ZN(n128) );
  INVD0 U543 ( .I(n228), .ZN(n2460) );
  XOR2D0 U544 ( .A1(n696), .A2(n782), .Z(n734) );
  XNR2D0 U545 ( .A1(n556), .A2(n555), .ZN(n595) );
  XOR2D0 U546 ( .A1(n264), .A2(n369), .Z(n396) );
  XNR2D0 U547 ( .A1(n576), .A2(n575), .ZN(n584) );
  XNR2D0 U548 ( .A1(n521), .A2(n520), .ZN(n607) );
  INR2XD0 U549 ( .A1(n458), .B1(n449), .ZN(n450) );
  XNR2D0 U550 ( .A1(n648), .A2(n647), .ZN(n710) );
  XOR2D0 U551 ( .A1(n460), .A2(n608), .Z(n501) );
  OR2D0 U552 ( .A1(n224), .A2(n36), .Z(n2430) );
  INR2XD0 U553 ( .A1(n464), .B1(n449), .ZN(n422) );
  XNR2D0 U554 ( .A1(n676), .A2(n25), .ZN(n698) );
  XNR2D0 U555 ( .A1(n539), .A2(n538), .ZN(n614) );
  CKND2D0 U556 ( .A1(n174), .A2(n173), .ZN(n175) );
  INR2XD0 U557 ( .A1(n263), .B1(n449), .ZN(n257) );
  NR2D0 U558 ( .A1(n79), .A2(n28), .ZN(n170) );
  NR2D0 U559 ( .A1(n695), .A2(divide_mode), .ZN(n52) );
  CKND2D0 U560 ( .A1(n159), .A2(x_mantissa[0]), .ZN(n160) );
  XOR2D0 U561 ( .A1(n465), .A2(n608), .Z(n499) );
  INR2XD0 U562 ( .A1(n277), .B1(n449), .ZN(n2390) );
  OR2D0 U563 ( .A1(n95), .A2(n30), .Z(n147) );
  OR2D1 U564 ( .A1(n201), .A2(n35), .Z(n209) );
  XOR2D0 U565 ( .A1(n273), .A2(n369), .Z(n390) );
  OR2D0 U566 ( .A1(n138), .A2(n34), .Z(n204) );
  XOR2D0 U567 ( .A1(n370), .A2(n369), .Z(n385) );
  OR2D0 U568 ( .A1(n125), .A2(n33), .Z(n133) );
  OAI21D0 U569 ( .A1(n48), .A2(n691), .B(n675), .ZN(n676) );
  XOR2D0 U570 ( .A1(n48), .A2(n489), .Z(n497) );
  INR2XD0 U571 ( .A1(n368), .B1(n223), .ZN(n201) );
  INR2XD0 U572 ( .A1(n319), .B1(n223), .ZN(n159) );
  INR2XD0 U573 ( .A1(n380), .B1(n223), .ZN(n138) );
  OAI21D0 U574 ( .A1(n49), .A2(n691), .B(n690), .ZN(n695) );
  OAI21D0 U575 ( .A1(n49), .A2(n645), .B(n644), .ZN(n648) );
  BUFFD1 U576 ( .I(n782), .Z(n449) );
  OAI21D0 U577 ( .A1(n48), .A2(n533), .B(n534), .ZN(n521) );
  CKND2D0 U578 ( .A1(n152), .A2(n151), .ZN(n154) );
  OAI21D0 U579 ( .A1(n49), .A2(n537), .B(n536), .ZN(n539) );
  OAI21D0 U580 ( .A1(n48), .A2(n670), .B(n689), .ZN(n576) );
  OAI21D0 U581 ( .A1(n49), .A2(n553), .B(n552), .ZN(n556) );
  INR2XD0 U582 ( .A1(n298), .B1(n124), .ZN(n96) );
  INR2XD0 U583 ( .A1(n304), .B1(n124), .ZN(n95) );
  BUFFD0 U584 ( .I(n585), .Z(n711) );
  XNR2D0 U585 ( .A1(n137), .A2(n136), .ZN(n380) );
  BUFFD1 U586 ( .I(n490), .Z(n557) );
  NR2XD0 U587 ( .A1(n80), .A2(n29), .ZN(n172) );
  BUFFD1 U588 ( .I(n490), .Z(n124) );
  XNR2D0 U589 ( .A1(n200), .A2(n199), .ZN(n368) );
  XNR2D0 U590 ( .A1(n2560), .A2(n2550), .ZN(n263) );
  BUFFD1 U591 ( .I(n490), .Z(n223) );
  BUFFD0 U592 ( .I(n585), .Z(n346) );
  XNR2D0 U593 ( .A1(n448), .A2(n447), .ZN(n458) );
  XNR2D0 U594 ( .A1(n222), .A2(n221), .ZN(n272) );
  BUFFD0 U595 ( .I(n585), .Z(n320) );
  XNR2D0 U596 ( .A1(n2380), .A2(n2370), .ZN(n277) );
  CKND2D0 U597 ( .A1(n156), .A2(n155), .ZN(n158) );
  XNR2D0 U598 ( .A1(n421), .A2(n420), .ZN(n464) );
  BUFFD1 U599 ( .I(n585), .Z(n782) );
  NR2D0 U600 ( .A1(n78), .A2(n27), .ZN(n150) );
  XOR2D0 U601 ( .A1(n445), .A2(n123), .Z(n285) );
  OAI21D0 U602 ( .A1(n51), .A2(n444), .B(n443), .ZN(n448) );
  XOR2D0 U603 ( .A1(n94), .A2(n93), .Z(n298) );
  OAI21D0 U604 ( .A1(n51), .A2(n219), .B(n218), .ZN(n222) );
  XOR2D0 U605 ( .A1(n107), .A2(n106), .Z(n290) );
  OAI21D0 U606 ( .A1(n445), .A2(n194), .B(n195), .ZN(n137) );
  BUFFD0 U607 ( .I(n459), .Z(n381) );
  BUFFD0 U608 ( .I(n459), .Z(n608) );
  OAI21D0 U609 ( .A1(n445), .A2(n476), .B(n484), .ZN(n2380) );
  CKND2D0 U610 ( .A1(n71), .A2(n26), .ZN(n155) );
  INR2XD0 U611 ( .A1(n345), .B1(n709), .ZN(n80) );
  OAI21D0 U612 ( .A1(n445), .A2(n198), .B(n197), .ZN(n200) );
  XOR2D0 U613 ( .A1(n87), .A2(n86), .Z(n304) );
  OAI21D0 U614 ( .A1(n51), .A2(n2530), .B(n2520), .ZN(n2560) );
  OAI21D0 U615 ( .A1(n51), .A2(n418), .B(n417), .ZN(n421) );
  BUFFD0 U616 ( .I(n459), .Z(n369) );
  CKND2D0 U617 ( .A1(n441), .A2(n438), .ZN(n444) );
  CKND2D0 U618 ( .A1(n438), .A2(n475), .ZN(n418) );
  AOI21D0 U619 ( .A1(n442), .A2(n475), .B(n480), .ZN(n417) );
  AOI21D0 U620 ( .A1(n674), .A2(n643), .B(n642), .ZN(n644) );
  AOI21D0 U621 ( .A1(n442), .A2(n441), .B(n440), .ZN(n443) );
  INVD0 U622 ( .I(n487), .ZN(n51) );
  INVD0 U623 ( .I(n487), .ZN(n445) );
  CKND2D0 U624 ( .A1(n438), .A2(n2510), .ZN(n2530) );
  AOI21D0 U625 ( .A1(n674), .A2(n673), .B(n686), .ZN(n675) );
  AOI21D0 U626 ( .A1(n104), .A2(n113), .B(n117), .ZN(n94) );
  AOI21D0 U627 ( .A1(n104), .A2(n103), .B(n102), .ZN(n107) );
  AOI21D0 U628 ( .A1(n442), .A2(n2510), .B(n2500), .ZN(n2520) );
  AOI21D0 U629 ( .A1(n104), .A2(n84), .B(n83), .ZN(n87) );
  INVD0 U630 ( .I(n583), .ZN(n709) );
  CKND2D0 U631 ( .A1(n641), .A2(n643), .ZN(n645) );
  INVD0 U632 ( .I(n310), .ZN(n869) );
  INVD0 U633 ( .I(n121), .ZN(n104) );
  OAI21D0 U634 ( .A1(n77), .A2(n73), .B(n74), .ZN(n66) );
  BUFFD0 U635 ( .I(n310), .Z(n583) );
  NR2D0 U636 ( .A1(n437), .A2(n474), .ZN(n441) );
  OAI21D0 U637 ( .A1(n101), .A2(n112), .B(n114), .ZN(n102) );
  OAI21D0 U638 ( .A1(n121), .A2(n120), .B(n119), .ZN(n487) );
  OAI21D0 U639 ( .A1(n439), .A2(n474), .B(n477), .ZN(n440) );
  OAI21D0 U640 ( .A1(n484), .A2(n483), .B(n482), .ZN(n485) );
  INVD0 U641 ( .I(n484), .ZN(n442) );
  CKND2D0 U642 ( .A1(n84), .A2(n90), .ZN(n60) );
  AOI21D0 U643 ( .A1(n2360), .A2(n2350), .B(n2340), .ZN(n484) );
  AOI21D0 U644 ( .A1(n574), .A2(n573), .B(n572), .ZN(n689) );
  CKND2D0 U645 ( .A1(n231), .A2(n217), .ZN(n219) );
  AOI21D0 U646 ( .A1(n118), .A2(n117), .B(n116), .ZN(n119) );
  AOI21D0 U647 ( .A1(n2350), .A2(n217), .B(n216), .ZN(n218) );
  INVD0 U648 ( .I(n2350), .ZN(n197) );
  AOI21D0 U649 ( .A1(n59), .A2(n61), .B(n58), .ZN(n121) );
  AOI21D0 U650 ( .A1(n481), .A2(n480), .B(n479), .ZN(n482) );
  CKND2D0 U651 ( .A1(n122), .A2(n195), .ZN(n123) );
  CKND2D0 U652 ( .A1(n105), .A2(n115), .ZN(n106) );
  INVD0 U653 ( .I(n573), .ZN(n536) );
  CKND2D0 U654 ( .A1(n92), .A2(n114), .ZN(n93) );
  CKND2D0 U655 ( .A1(n569), .A2(n551), .ZN(n553) );
  AOI21D0 U656 ( .A1(n573), .A2(n551), .B(n550), .ZN(n552) );
  CKND2D0 U657 ( .A1(n85), .A2(n91), .ZN(n86) );
  INVD0 U658 ( .I(n414), .ZN(n2510) );
  INVD0 U659 ( .I(n230), .ZN(n217) );
  NR2XD0 U660 ( .A1(n89), .A2(n88), .ZN(n113) );
  NR2XD0 U661 ( .A1(n194), .A2(n193), .ZN(n231) );
  NR2XD0 U662 ( .A1(n112), .A2(n111), .ZN(n118) );
  INVD0 U663 ( .I(n669), .ZN(n643) );
  INVD0 U664 ( .I(n568), .ZN(n551) );
  NR2D0 U665 ( .A1(n669), .A2(n668), .ZN(n673) );
  INVD0 U666 ( .I(n570), .ZN(n550) );
  BUFFD0 U667 ( .I(n866), .Z(n867) );
  BUFFD0 U668 ( .I(n866), .Z(n868) );
  BUFFD0 U669 ( .I(x_mantissa[21]), .Z(n46) );
  NR2D0 U670 ( .A1(n6), .A2(n5), .ZN(n73) );
  CKND2D0 U671 ( .A1(n5), .A2(n4), .ZN(n67) );
  NR2D0 U672 ( .A1(n9), .A2(n8), .ZN(n88) );
  NR2XD0 U673 ( .A1(n10), .A2(n9), .ZN(n112) );
  NR2D0 U674 ( .A1(n11), .A2(n10), .ZN(n111) );
  BUFFD0 U675 ( .I(x_mantissa[8]), .Z(n33) );
  BUFFD0 U676 ( .I(x_mantissa[17]), .Z(n42) );
  NR2XD0 U677 ( .A1(n18), .A2(n17), .ZN(n474) );
  BUFFD0 U678 ( .I(x_mantissa[18]), .Z(n43) );
  BUFFD0 U679 ( .I(divide_s5), .Z(n864) );
  BUFFD0 U680 ( .I(x_mantissa[16]), .Z(n41) );
  BUFFD0 U681 ( .I(x_mantissa[15]), .Z(n40) );
  BUFFD0 U682 ( .I(x_mantissa[13]), .Z(n38) );
  BUFFD0 U683 ( .I(x_mantissa[9]), .Z(n34) );
  BUFFD0 U684 ( .I(x_mantissa[10]), .Z(n35) );
  BUFFD0 U685 ( .I(x_mantissa[7]), .Z(n32) );
  BUFFD0 U686 ( .I(x_mantissa[12]), .Z(n37) );
  BUFFD0 U687 ( .I(x_mantissa[14]), .Z(n39) );
  BUFFD0 U688 ( .I(x_mantissa[11]), .Z(n36) );
  BUFFD0 U689 ( .I(y_mantissa[17]), .Z(n20) );
  BUFFD0 U690 ( .I(y_mantissa[16]), .Z(n19) );
  BUFFD0 U691 ( .I(x_mantissa[22]), .Z(n47) );
  BUFFD0 U692 ( .I(y_mantissa[19]), .Z(n22) );
  BUFFD0 U693 ( .I(y_mantissa[18]), .Z(n21) );
  BUFFD0 U694 ( .I(y_mantissa[6]), .Z(n9) );
  BUFFD0 U695 ( .I(y_mantissa[7]), .Z(n10) );
  BUFFD0 U696 ( .I(y_mantissa[4]), .Z(n7) );
  BUFFD0 U697 ( .I(y_mantissa[21]), .Z(n24) );
  BUFFD0 U698 ( .I(y_mantissa[5]), .Z(n8) );
  BUFFD0 U699 ( .I(y_mantissa[20]), .Z(n23) );
  BUFFD0 U700 ( .I(y_mantissa[22]), .Z(n25) );
  BUFFD0 U701 ( .I(y_mantissa[1]), .Z(n4) );
  BUFFD0 U702 ( .I(y_mantissa[3]), .Z(n6) );
  BUFFD0 U703 ( .I(y_mantissa[2]), .Z(n5) );
  BUFFD0 U704 ( .I(x_mantissa[5]), .Z(n30) );
  BUFFD0 U705 ( .I(y_mantissa[13]), .Z(n16) );
  BUFFD0 U706 ( .I(y_mantissa[12]), .Z(n15) );
  BUFFD0 U707 ( .I(x_mantissa[4]), .Z(n29) );
  BUFFD0 U708 ( .I(y_mantissa[10]), .Z(n13) );
  BUFFD0 U709 ( .I(x_mantissa[3]), .Z(n28) );
  BUFFD0 U710 ( .I(x_mantissa[20]), .Z(n45) );
  BUFFD0 U711 ( .I(y_mantissa[11]), .Z(n14) );
  BUFFD0 U712 ( .I(y_mantissa[15]), .Z(n18) );
  BUFFD0 U713 ( .I(y_mantissa[14]), .Z(n17) );
  BUFFD0 U714 ( .I(x_mantissa[2]), .Z(n27) );
  BUFFD0 U715 ( .I(y_mantissa[9]), .Z(n12) );
  BUFFD0 U716 ( .I(x_mantissa[1]), .Z(n26) );
  BUFFD0 U717 ( .I(y_mantissa[8]), .Z(n11) );
  BUFFD0 U718 ( .I(x_mantissa[6]), .Z(n31) );
  BUFFD0 U719 ( .I(x_mantissa[19]), .Z(n44) );
  INVD0 U721 ( .I(n692), .ZN(n48) );
  INVD0 U722 ( .I(n692), .ZN(n49) );
  NR2D0 U723 ( .A1(n558), .A2(n44), .ZN(n631) );
  NR2D0 U724 ( .A1(n560), .A2(n44), .ZN(n587) );
  OR2D0 U725 ( .A1(n179), .A2(n31), .Z(n301) );
  CKND2D0 U726 ( .A1(n96), .A2(n31), .ZN(n142) );
  OR2D0 U727 ( .A1(n96), .A2(n31), .Z(n143) );
  OR2D0 U728 ( .A1(n5), .A2(n4), .Z(n53) );
  OR2D0 U729 ( .A1(n681), .A2(n684), .Z(n55) );
  NR2D0 U730 ( .A1(n7), .A2(n6), .ZN(n62) );
  NR2D0 U731 ( .A1(n73), .A2(n62), .ZN(n59) );
  CKND2D0 U732 ( .A1(n67), .A2(n69), .ZN(n61) );
  CKND2D0 U733 ( .A1(n63), .A2(n74), .ZN(n58) );
  INVD0 U734 ( .I(n89), .ZN(n84) );
  XNR2D0 U735 ( .A1(n104), .A2(n60), .ZN(n345) );
  INVD0 U736 ( .I(n61), .ZN(n77) );
  INVD0 U737 ( .I(n62), .ZN(n64) );
  CKND2D0 U738 ( .A1(n64), .A2(n63), .ZN(n65) );
  XNR2D0 U739 ( .A1(n66), .A2(n65), .ZN(n336) );
  NR2D0 U740 ( .A1(n172), .A2(n170), .ZN(n82) );
  CKND2D0 U741 ( .A1(n53), .A2(n67), .ZN(n68) );
  XOR2D0 U742 ( .A1(n68), .A2(n69), .Z(n317) );
  OR2D0 U743 ( .A1(n71), .A2(n26), .Z(n156) );
  OR2D0 U744 ( .A1(n4), .A2(y_mantissa[0]), .Z(n70) );
  CKAN2D0 U745 ( .A1(n70), .A2(n69), .Z(n319) );
  INVD0 U746 ( .I(n160), .ZN(n157) );
  INVD0 U747 ( .I(n155), .ZN(n72) );
  INVD0 U748 ( .I(n73), .ZN(n75) );
  CKND2D0 U749 ( .A1(n75), .A2(n74), .ZN(n76) );
  XOR2D0 U750 ( .A1(n77), .A2(n76), .Z(n311) );
  INVD0 U751 ( .I(n90), .ZN(n83) );
  INVD0 U752 ( .I(n88), .ZN(n85) );
  CKND2D0 U753 ( .A1(n91), .A2(n90), .ZN(n117) );
  INVD0 U754 ( .I(n112), .ZN(n92) );
  INVD0 U755 ( .I(n113), .ZN(n100) );
  NR2D0 U756 ( .A1(n100), .A2(n112), .ZN(n103) );
  INVD0 U757 ( .I(n117), .ZN(n101) );
  INVD0 U758 ( .I(n111), .ZN(n105) );
  CKND2D0 U759 ( .A1(n115), .A2(n114), .ZN(n116) );
  INVD0 U760 ( .I(n194), .ZN(n122) );
  INVD0 U761 ( .I(n129), .ZN(n132) );
  INVD0 U762 ( .I(n193), .ZN(n135) );
  INVD0 U763 ( .I(n150), .ZN(n152) );
  XOR2D0 U764 ( .A1(n154), .A2(n153), .Z(n163) );
  OR2D0 U765 ( .A1(n163), .A2(n28), .Z(n307) );
  XNR2D0 U766 ( .A1(n158), .A2(n157), .ZN(n162) );
  NR2D0 U767 ( .A1(n162), .A2(n27), .ZN(n313) );
  OR2D0 U768 ( .A1(n159), .A2(x_mantissa[0]), .Z(n161) );
  CKAN2D0 U769 ( .A1(n161), .A2(n160), .Z(n322) );
  OAI21D0 U770 ( .A1(n313), .A2(n323), .B(n314), .ZN(n308) );
  INVD0 U771 ( .I(n306), .ZN(n164) );
  INVD0 U772 ( .I(n170), .ZN(n165) );
  INVD0 U773 ( .I(n172), .ZN(n174) );
  OR2D0 U774 ( .A1(n177), .A2(n30), .Z(n341) );
  INVD0 U775 ( .I(n340), .ZN(n178) );
  INVD0 U776 ( .I(n287), .ZN(n187) );
  INVD0 U777 ( .I(n231), .ZN(n198) );
  CKND2D0 U778 ( .A1(n196), .A2(n195), .ZN(n2350) );
  INVD0 U779 ( .I(n2320), .ZN(n216) );
  INVD0 U780 ( .I(n229), .ZN(n220) );
  AOI21D1 U781 ( .A1(n367), .A2(n401), .B(n406), .ZN(n276) );
  CKND2D0 U782 ( .A1(n2330), .A2(n2320), .ZN(n2340) );
  INVD0 U783 ( .I(n427), .ZN(n2490) );
  AOI21D1 U784 ( .A1(n436), .A2(n2490), .B(n2480), .ZN(n412) );
  INVD0 U785 ( .I(n476), .ZN(n438) );
  INVD0 U786 ( .I(n415), .ZN(n2500) );
  INVD0 U787 ( .I(n413), .ZN(n2540) );
  INVD0 U788 ( .I(n583), .ZN(n463) );
  CKAN2D0 U789 ( .A1(n263), .A2(n463), .Z(n264) );
  INVD1 U790 ( .I(n457), .ZN(n459) );
  INVD0 U791 ( .I(n267), .ZN(n269) );
  INVD0 U792 ( .I(n457), .ZN(n379) );
  CKAN2D0 U793 ( .A1(n272), .A2(n379), .Z(n273) );
  INVD0 U794 ( .I(n400), .ZN(n274) );
  CKAN2D0 U795 ( .A1(n277), .A2(n463), .Z(n278) );
  XOR2D0 U796 ( .A1(n278), .A2(n369), .Z(n392) );
  CKAN2D0 U797 ( .A1(n285), .A2(n379), .Z(n286) );
  XOR2D0 U798 ( .A1(n286), .A2(n381), .Z(n360) );
  INVD0 U799 ( .I(n583), .ZN(n344) );
  CKAN2D0 U800 ( .A1(n290), .A2(n344), .Z(n291) );
  XOR2D0 U801 ( .A1(n291), .A2(n381), .Z(n358) );
  NR2D0 U802 ( .A1(n829), .A2(n827), .ZN(n363) );
  CKAN2D0 U803 ( .A1(n298), .A2(n344), .Z(n299) );
  XOR2D0 U804 ( .A1(n299), .A2(n381), .Z(n353) );
  CKAN2D0 U805 ( .A1(n304), .A2(n463), .Z(n305) );
  XOR2D0 U806 ( .A1(n305), .A2(n346), .Z(n351) );
  XNR2D0 U807 ( .A1(n309), .A2(n308), .ZN(n329) );
  INVD0 U808 ( .I(n310), .ZN(n694) );
  CKAN2D0 U809 ( .A1(n311), .A2(n694), .Z(n312) );
  XOR2D0 U810 ( .A1(n312), .A2(n346), .Z(n328) );
  OR2D0 U811 ( .A1(n329), .A2(n328), .Z(n854) );
  INVD0 U812 ( .I(n313), .ZN(n315) );
  XOR2D0 U813 ( .A1(n316), .A2(n323), .Z(n326) );
  CKAN2D0 U814 ( .A1(n317), .A2(n694), .Z(n318) );
  XOR2D0 U815 ( .A1(n318), .A2(n320), .Z(n325) );
  NR2D0 U816 ( .A1(n326), .A2(n325), .ZN(n857) );
  CKAN2D0 U817 ( .A1(n319), .A2(n694), .Z(n321) );
  XOR2D0 U818 ( .A1(n321), .A2(n320), .Z(n781) );
  OR2D0 U819 ( .A1(n322), .A2(n26), .Z(n324) );
  CKAN2D0 U820 ( .A1(n324), .A2(n323), .Z(n780) );
  INVD0 U821 ( .I(n860), .ZN(n327) );
  INVD0 U822 ( .I(n853), .ZN(n330) );
  INVD0 U823 ( .I(n331), .ZN(n333) );
  CKAN2D0 U824 ( .A1(n336), .A2(n344), .Z(n337) );
  XOR2D0 U825 ( .A1(n337), .A2(n346), .Z(n338) );
  CKAN2D0 U826 ( .A1(n345), .A2(n344), .Z(n347) );
  XOR2D0 U827 ( .A1(n347), .A2(n346), .Z(n348) );
  OR2D0 U828 ( .A1(n349), .A2(n348), .Z(n845) );
  INVD0 U829 ( .I(n844), .ZN(n350) );
  INVD0 U830 ( .I(n836), .ZN(n355) );
  CKAN2D0 U831 ( .A1(n368), .A2(n379), .Z(n370) );
  INVD0 U832 ( .I(n374), .ZN(n376) );
  CKAN2D0 U833 ( .A1(n380), .A2(n379), .Z(n382) );
  XOR2D0 U834 ( .A1(n382), .A2(n381), .Z(n383) );
  INVD0 U835 ( .I(n808), .ZN(n395) );
  AOI21D1 U836 ( .A1(n399), .A2(n768), .B(n398), .ZN(n754) );
  INVD1 U837 ( .I(n663), .ZN(n531) );
  CKND2D0 U838 ( .A1(n416), .A2(n415), .ZN(n480) );
  INVD0 U839 ( .I(n474), .ZN(n419) );
  INVD0 U840 ( .I(n428), .ZN(n431) );
  AOI21D1 U841 ( .A1(n436), .A2(n509), .B(n515), .ZN(n472) );
  INVD0 U842 ( .I(n475), .ZN(n437) );
  INVD0 U843 ( .I(n480), .ZN(n439) );
  INVD0 U844 ( .I(n473), .ZN(n446) );
  INVD0 U845 ( .I(n457), .ZN(n606) );
  CKAN2D0 U846 ( .A1(n458), .A2(n606), .Z(n460) );
  CKAN2D0 U847 ( .A1(n464), .A2(n463), .Z(n465) );
  INVD0 U848 ( .I(n526), .ZN(n471) );
  CKND2D0 U849 ( .A1(n478), .A2(n477), .ZN(n479) );
  INVD0 U850 ( .I(n533), .ZN(n488) );
  CKAN2D0 U851 ( .A1(n497), .A2(n606), .Z(n498) );
  INVD0 U852 ( .I(n532), .ZN(n519) );
  INVD0 U853 ( .I(n569), .ZN(n537) );
  CKND2D0 U854 ( .A1(n535), .A2(n534), .ZN(n573) );
  INVD0 U855 ( .I(n632), .ZN(n549) );
  INVD0 U856 ( .I(n567), .ZN(n554) );
  OAI21D1 U857 ( .A1(n613), .A2(n563), .B(n562), .ZN(n703) );
  CKND2D0 U858 ( .A1(n571), .A2(n570), .ZN(n572) );
  CKAN2D0 U859 ( .A1(n584), .A2(n709), .Z(n586) );
  CKAN2D0 U860 ( .A1(n595), .A2(n606), .Z(n596) );
  CKAN2D0 U861 ( .A1(n607), .A2(n606), .Z(n609) );
  CKAN2D0 U862 ( .A1(n614), .A2(n709), .Z(n615) );
  INVD0 U863 ( .I(n797), .ZN(n621) );
  AOI21D1 U864 ( .A1(n621), .A2(n801), .B(n620), .ZN(n745) );
  INVD0 U865 ( .I(n670), .ZN(n641) );
  INVD0 U866 ( .I(n689), .ZN(n674) );
  INVD0 U867 ( .I(n671), .ZN(n642) );
  INVD0 U868 ( .I(n668), .ZN(n646) );
  INVD0 U869 ( .I(n673), .ZN(n688) );
  OR2D0 U870 ( .A1(n670), .A2(n688), .Z(n691) );
  CKND2D0 U871 ( .A1(n672), .A2(n671), .ZN(n686) );
  INVD0 U872 ( .I(n684), .ZN(n678) );
  NR2D0 U873 ( .A1(n686), .A2(n25), .ZN(n687) );
  OA21D0 U874 ( .A1(n689), .A2(n688), .B(n687), .Z(n690) );
  CKAN2D0 U875 ( .A1(n695), .A2(n694), .Z(n696) );
  INVD0 U876 ( .I(n734), .ZN(n717) );
  INVD0 U877 ( .I(n783), .ZN(n720) );
  INVD0 U878 ( .I(n786), .ZN(n719) );
  NR2D0 U879 ( .A1(n720), .A2(n719), .ZN(n721) );
  HA1D0 U880 ( .A(n733), .B(n732), .S(n735) );
  AOI21D1 U881 ( .A1(n57), .A2(n791), .B(n741), .ZN(n785) );
  OAI21D1 U882 ( .A1(n799), .A2(n746), .B(n745), .ZN(n796) );
  INVD0 U883 ( .I(n827), .ZN(n778) );
  FA1D0 U884 ( .A(n782), .B(n781), .CI(n780), .CO(n860), .S(base_c1[0]) );
  INVD0 U885 ( .I(n829), .ZN(n831) );
  INVD0 U886 ( .I(n834), .ZN(n842) );
  XNR2D0 U887 ( .A1(n843), .A2(n842), .ZN(base_c1[5]) );
  XNR2D0 U888 ( .A1(n847), .A2(n846), .ZN(base_c1[4]) );
  INVD0 U889 ( .I(n848), .ZN(n850) );
  XOR2D0 U890 ( .A1(n852), .A2(n851), .Z(base_c1[3]) );
  XNR2D0 U891 ( .A1(n856), .A2(n855), .ZN(base_c1[2]) );
  INVD0 U892 ( .I(n857), .ZN(n859) );
  XNR2D0 U893 ( .A1(n861), .A2(n860), .ZN(base_c1[1]) );
  MUX2D0 U894 ( .I0(shared_s5[24]), .I1(divided_s5[24]), .S(n862), .Z(N256) );
  MUX2D0 U895 ( .I0(shared_s5[23]), .I1(divided_s5[23]), .S(n865), .Z(N255) );
  MUX2D0 U896 ( .I0(shared_s5[17]), .I1(divided_s5[17]), .S(divide_s5), .Z(
        N249) );
  MUX2D0 U897 ( .I0(shared_s5[19]), .I1(divided_s5[19]), .S(n863), .Z(N251) );
  MUX2D0 U898 ( .I0(shared_s5[21]), .I1(divided_s5[21]), .S(n865), .Z(N253) );
  MUX2D0 U899 ( .I0(shared_s5[22]), .I1(divided_s5[22]), .S(n865), .Z(N254) );
  MUX2D0 U900 ( .I0(shared_s5[10]), .I1(divided_s5[10]), .S(n868), .Z(N242) );
  MUX2D0 U901 ( .I0(shared_s5[11]), .I1(divided_s5[11]), .S(n864), .Z(N243) );
  MUX2D0 U902 ( .I0(shared_s5[12]), .I1(divided_s5[12]), .S(n864), .Z(N244) );
  MUX2D0 U903 ( .I0(shared_s5[13]), .I1(divided_s5[13]), .S(n864), .Z(N245) );
  MUX2D0 U904 ( .I0(shared_s5[14]), .I1(divided_s5[14]), .S(n864), .Z(N246) );
  MUX2D0 U905 ( .I0(shared_s5[15]), .I1(divided_s5[15]), .S(n862), .Z(N247) );
  MUX2D0 U906 ( .I0(shared_s5[16]), .I1(divided_s5[16]), .S(n862), .Z(N248) );
  MUX2D0 U907 ( .I0(shared_s5[18]), .I1(divided_s5[18]), .S(n867), .Z(N250) );
  MUX2D0 U908 ( .I0(shared_s5[20]), .I1(divided_s5[20]), .S(n865), .Z(N252) );
  MUX2D0 U909 ( .I0(shared_s5[0]), .I1(divided_s5[0]), .S(n867), .Z(N232) );
  MUX2D0 U910 ( .I0(shared_s5[1]), .I1(divided_s5[1]), .S(n867), .Z(N233) );
  MUX2D0 U911 ( .I0(shared_s5[3]), .I1(divided_s5[3]), .S(n866), .Z(N235) );
  MUX2D0 U912 ( .I0(shared_s5[2]), .I1(divided_s5[2]), .S(n867), .Z(N234) );
  MUX2D0 U913 ( .I0(shared_s5[4]), .I1(divided_s5[4]), .S(n862), .Z(N236) );
  MUX2D0 U914 ( .I0(shared_s5[5]), .I1(divided_s5[5]), .S(n866), .Z(N237) );
  MUX2D0 U915 ( .I0(shared_s5[6]), .I1(divided_s5[6]), .S(n863), .Z(N238) );
  MUX2D0 U916 ( .I0(shared_s5[7]), .I1(divided_s5[7]), .S(n868), .Z(N239) );
  MUX2D0 U917 ( .I0(shared_s5[8]), .I1(divided_s5[8]), .S(n868), .Z(N240) );
  MUX2D0 U918 ( .I0(shared_s5[9]), .I1(divided_s5[9]), .S(n868), .Z(N241) );
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
         C2_Z_3, C2_Z_2, C2_Z_1, C2_Z_0, DP_OP_58J1_124_7635_n50,
         DP_OP_58J1_124_7635_n49, DP_OP_58J1_124_7635_n48,
         DP_OP_58J1_124_7635_n47, DP_OP_58J1_124_7635_n46,
         DP_OP_58J1_124_7635_n45, DP_OP_58J1_124_7635_n44,
         DP_OP_58J1_124_7635_n43, DP_OP_58J1_124_7635_n10,
         DP_OP_58J1_124_7635_n9, DP_OP_58J1_124_7635_n8,
         DP_OP_58J1_124_7635_n7, DP_OP_58J1_124_7635_n6,
         DP_OP_58J1_124_7635_n5, DP_OP_58J1_124_7635_n4,
         DP_OP_58J1_124_7635_n3, DP_OP_57J1_123_2635_n8,
         DP_OP_57J1_123_2635_n7, DP_OP_57J1_123_2635_n6,
         DP_OP_57J1_123_2635_n5, DP_OP_57J1_123_2635_n4,
         DP_OP_57J1_123_2635_n3, DP_OP_57J1_123_2635_n2,
         DP_OP_57J1_123_2635_n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
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
         n269, n270, n271, n272, n273, n274, n275, n276, n277, n278;
  wire   [24:0] core_value;
  wire   [10:0] exponent_s1;
  wire   [10:0] exponent_s2;
  wire   [10:0] exponent_s3;
  wire   [10:0] exponent_s4;
  wire   [11:0] exponent_s6;
  wire   [10:0] exponent_s5;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3;

  oadm_core_fixed_APPROX_LEVEL0 mantissa_core ( .clk(clk), .x_mantissa({1'b0, 
        x[22:0]}), .y_mantissa({1'b0, y[22:0]}), .divide_mode(n278), 
        .mantissa_value({SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, core_value}) );
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
  DFQD1 exponent_s1_reg_10_ ( .D(n270), .CP(clk), .Q(exponent_s1[10]) );
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
  FA1D0 DP_OP_58J1_124_7635_U11 ( .A(n271), .B(DP_OP_58J1_124_7635_n44), .CI(
        DP_OP_58J1_124_7635_n10), .CO(DP_OP_58J1_124_7635_n9), .S(N63) );
  FA1D0 DP_OP_58J1_124_7635_U10 ( .A(n272), .B(DP_OP_58J1_124_7635_n45), .CI(
        DP_OP_58J1_124_7635_n9), .CO(DP_OP_58J1_124_7635_n8), .S(N64) );
  FA1D0 DP_OP_58J1_124_7635_U9 ( .A(n273), .B(DP_OP_58J1_124_7635_n46), .CI(
        DP_OP_58J1_124_7635_n8), .CO(DP_OP_58J1_124_7635_n7), .S(N65) );
  FA1D0 DP_OP_58J1_124_7635_U8 ( .A(n274), .B(DP_OP_58J1_124_7635_n47), .CI(
        DP_OP_58J1_124_7635_n7), .CO(DP_OP_58J1_124_7635_n6), .S(N66) );
  FA1D0 DP_OP_58J1_124_7635_U7 ( .A(n275), .B(DP_OP_58J1_124_7635_n48), .CI(
        DP_OP_58J1_124_7635_n6), .CO(DP_OP_58J1_124_7635_n5), .S(N67) );
  FA1D0 DP_OP_58J1_124_7635_U6 ( .A(n276), .B(DP_OP_58J1_124_7635_n49), .CI(
        DP_OP_58J1_124_7635_n5), .CO(DP_OP_58J1_124_7635_n4), .S(N68) );
  FA1D0 DP_OP_58J1_124_7635_U5 ( .A(n277), .B(DP_OP_58J1_124_7635_n50), .CI(
        DP_OP_58J1_124_7635_n4), .CO(DP_OP_58J1_124_7635_n3), .S(N69) );
  HA1D0 DP_OP_57J1_123_2635_U9 ( .A(x[23]), .B(C2_Z_0), .CO(
        DP_OP_57J1_123_2635_n8), .S(DP_OP_58J1_124_7635_n43) );
  FA1D0 DP_OP_57J1_123_2635_U8 ( .A(x[24]), .B(C2_Z_1), .CI(
        DP_OP_57J1_123_2635_n8), .CO(DP_OP_57J1_123_2635_n7), .S(
        DP_OP_58J1_124_7635_n44) );
  FA1D0 DP_OP_57J1_123_2635_U7 ( .A(x[25]), .B(C2_Z_2), .CI(
        DP_OP_57J1_123_2635_n7), .CO(DP_OP_57J1_123_2635_n6), .S(
        DP_OP_58J1_124_7635_n45) );
  FA1D0 DP_OP_57J1_123_2635_U6 ( .A(x[26]), .B(C2_Z_3), .CI(
        DP_OP_57J1_123_2635_n6), .CO(DP_OP_57J1_123_2635_n5), .S(
        DP_OP_58J1_124_7635_n46) );
  FA1D0 DP_OP_57J1_123_2635_U5 ( .A(x[27]), .B(C2_Z_4), .CI(
        DP_OP_57J1_123_2635_n5), .CO(DP_OP_57J1_123_2635_n4), .S(
        DP_OP_58J1_124_7635_n47) );
  FA1D0 DP_OP_57J1_123_2635_U4 ( .A(x[28]), .B(C2_Z_5), .CI(
        DP_OP_57J1_123_2635_n4), .CO(DP_OP_57J1_123_2635_n3), .S(
        DP_OP_58J1_124_7635_n48) );
  FA1D0 DP_OP_57J1_123_2635_U3 ( .A(x[29]), .B(C2_Z_6), .CI(
        DP_OP_57J1_123_2635_n3), .CO(DP_OP_57J1_123_2635_n2), .S(
        DP_OP_58J1_124_7635_n49) );
  FA1D0 DP_OP_57J1_123_2635_U2 ( .A(x[30]), .B(C2_Z_7), .CI(
        DP_OP_57J1_123_2635_n2), .CO(DP_OP_57J1_123_2635_n1), .S(
        DP_OP_58J1_124_7635_n50) );
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
  NR2XD0 U3 ( .A1(n228), .A2(invalid_s6), .ZN(n126) );
  INVD0 U4 ( .I(n86), .ZN(n87) );
  INVD0 U5 ( .I(core_value[22]), .ZN(n660) );
  CKAN2D0 U6 ( .A1(n79), .A2(n226), .Z(n106) );
  INVD0 U7 ( .I(n126), .ZN(n124) );
  INVD0 U8 ( .I(divide_mode), .ZN(n200) );
  INVD0 U9 ( .I(n30), .ZN(n31) );
  INVD0 U10 ( .I(n30), .ZN(n32) );
  INVD0 U11 ( .I(n56), .ZN(n258) );
  INVD0 U12 ( .I(n214), .ZN(n123) );
  INVD0 U13 ( .I(n202), .ZN(n278) );
  INVD0 U14 ( .I(n262), .ZN(n34) );
  INVD0 U15 ( .I(n250), .ZN(n54) );
  OR2D0 U16 ( .A1(infinity_s6), .A2(n220), .Z(n228) );
  INVD0 U17 ( .I(n259), .ZN(n640) );
  CKND2D0 U18 ( .A1(n126), .A2(core_value[24]), .ZN(n255) );
  INVD0 U19 ( .I(n252), .ZN(n46) );
  CKND2D0 U20 ( .A1(n126), .A2(n222), .ZN(n262) );
  CKAN2D0 U21 ( .A1(n223), .A2(n126), .Z(n250) );
  INVD0 U22 ( .I(n257), .ZN(n57) );
  INVD0 U23 ( .I(n27), .ZN(n28) );
  INVD1 U24 ( .I(n256), .ZN(n40) );
  AO211D0 U25 ( .A1(n215), .A2(n214), .B(infinity_s6), .C(invalid_s6), .Z(n219) );
  CKAN2D0 U26 ( .A1(n94), .A2(n118), .Z(n122) );
  ND2D1 U27 ( .A1(n125), .A2(n78), .ZN(n226) );
  ND2D0 U28 ( .A1(n232), .A2(n231), .ZN(N152) );
  INVD1 U29 ( .I(n262), .ZN(n33) );
  INVD1 U30 ( .I(n255), .ZN(n35) );
  INVD1 U31 ( .I(n255), .ZN(n36) );
  INVD1 U32 ( .I(n58), .ZN(n27) );
  INVD1 U33 ( .I(n42), .ZN(n30) );
  OR2D1 U34 ( .A1(n226), .A2(n124), .Z(n256) );
  INR2D1 U35 ( .A1(n75), .B1(n124), .ZN(n257) );
  CKBD1 U36 ( .I(n262), .Z(n252) );
  OR2XD1 U37 ( .A1(n91), .A2(n90), .Z(n120) );
  CKXOR2D1 U38 ( .A1(n83), .A2(n82), .Z(n116) );
  ND3D1 U39 ( .A1(n217), .A2(n218), .A3(n113), .ZN(n114) );
  INVD1 U40 ( .I(n97), .ZN(n217) );
  INVD1 U41 ( .I(n99), .ZN(n218) );
  OAI31D1 U42 ( .A1(n74), .A2(n73), .A3(n72), .B(n71), .ZN(n117) );
  ND2D1 U43 ( .A1(n125), .A2(n660), .ZN(n78) );
  INVD0 U44 ( .I(zero_s6), .ZN(n71) );
  OAI211D0 U45 ( .A1(n129), .A2(n55), .B(n128), .C(n127), .ZN(N153) );
  OAI211D0 U46 ( .A1(n1680), .A2(n25), .B(n1670), .C(n1660), .ZN(N169) );
  OAI211D0 U47 ( .A1(n147), .A2(n26), .B(n146), .C(n145), .ZN(N161) );
  OAI211D0 U48 ( .A1(n138), .A2(n54), .B(n137), .C(n136), .ZN(N157) );
  OAI211D0 U49 ( .A1(n141), .A2(n56), .B(n140), .C(n139), .ZN(N159) );
  OAI211D0 U50 ( .A1(n1620), .A2(n54), .B(n1610), .C(n1600), .ZN(N166) );
  OAI211D0 U51 ( .A1(n132), .A2(n26), .B(n131), .C(n130), .ZN(N155) );
  OAI211D0 U52 ( .A1(n1590), .A2(n55), .B(n1580), .C(n1570), .ZN(N164) );
  OAI211D0 U53 ( .A1(n135), .A2(n25), .B(n134), .C(n133), .ZN(N156) );
  OAI211D0 U54 ( .A1(n1650), .A2(n56), .B(n1640), .C(n1630), .ZN(N167) );
  OAI211D0 U55 ( .A1(n144), .A2(n55), .B(n143), .C(n142), .ZN(N160) );
  INVD1 U56 ( .I(n256), .ZN(n42) );
  INVD0 U57 ( .I(n57), .ZN(n60) );
  INVD0 U58 ( .I(n250), .ZN(n56) );
  INVD0 U59 ( .I(n250), .ZN(n55) );
  OAI21D0 U60 ( .A1(n112), .A2(n220), .B(n38), .ZN(n1540) );
  OAI21D0 U61 ( .A1(n216), .A2(n220), .B(n37), .ZN(n1530) );
  OAI21D0 U62 ( .A1(n218), .A2(n48), .B(n37), .ZN(n1510) );
  OAI21D0 U63 ( .A1(n102), .A2(n48), .B(n37), .ZN(n1520) );
  OAI21D0 U64 ( .A1(n221), .A2(n49), .B(n38), .ZN(n148) );
  OAI21D0 U65 ( .A1(n217), .A2(n48), .B(n38), .ZN(n1500) );
  OAI21D0 U66 ( .A1(n108), .A2(n49), .B(n38), .ZN(n1550) );
  OAI21D0 U67 ( .A1(n95), .A2(n49), .B(n37), .ZN(n149) );
  OAI21D0 U68 ( .A1(n229), .A2(n228), .B(n227), .ZN(n1560) );
  INVD1 U69 ( .I(n219), .ZN(n37) );
  INVD1 U70 ( .I(n219), .ZN(n38) );
  CKND2D0 U71 ( .A1(n215), .A2(n123), .ZN(n48) );
  CKND2D0 U72 ( .A1(n215), .A2(n123), .ZN(n49) );
  ND2D1 U73 ( .A1(n215), .A2(n123), .ZN(n220) );
  AO21D1 U74 ( .A1(n122), .A2(n121), .B(n120), .Z(n214) );
  IND2D1 U75 ( .A1(n88), .B1(n87), .ZN(n91) );
  INVD0 U76 ( .I(n119), .ZN(n221) );
  INVD0 U77 ( .I(n104), .ZN(n216) );
  NR2D0 U78 ( .A1(DP_OP_58J1_124_7635_n3), .A2(DP_OP_57J1_123_2635_n1), .ZN(
        n270) );
  XOR2D0 U79 ( .A1(n51), .A2(n80), .Z(n110) );
  XOR2D0 U80 ( .A1(n50), .A2(n81), .Z(n105) );
  XOR2D0 U81 ( .A1(n50), .A2(exponent_s6[11]), .Z(n82) );
  AOI21D0 U82 ( .A1(n194), .A2(n199), .B(n193), .ZN(n195) );
  ND3D0 U83 ( .A1(n76), .A2(n650), .A3(n226), .ZN(n81) );
  ND2D1 U84 ( .A1(n76), .A2(n77), .ZN(n80) );
  CKND2D0 U85 ( .A1(n75), .A2(n129), .ZN(n73) );
  NR2D0 U86 ( .A1(n213), .A2(n212), .ZN(C2_Z_7) );
  NR2D1 U87 ( .A1(n78), .A2(core_value[21]), .ZN(n75) );
  CKND2D0 U88 ( .A1(n211), .A2(n210), .ZN(C2_Z_6) );
  CKND2D0 U89 ( .A1(n209), .A2(n210), .ZN(C2_Z_5) );
  CKND2D0 U90 ( .A1(n208), .A2(n210), .ZN(C2_Z_4) );
  CKND2D0 U91 ( .A1(n207), .A2(n206), .ZN(C2_Z_3) );
  CKND2D0 U92 ( .A1(n205), .A2(n206), .ZN(C2_Z_2) );
  CKND2D0 U93 ( .A1(n203), .A2(n202), .ZN(C2_Z_0) );
  CKND2D0 U94 ( .A1(n204), .A2(n206), .ZN(C2_Z_1) );
  NR2D0 U95 ( .A1(n125), .A2(core_value[24]), .ZN(n222) );
  ND4D0 U96 ( .A1(n700), .A2(n690), .A3(n680), .A4(n670), .ZN(n74) );
  BUFFD0 U97 ( .I(n200), .Z(n206) );
  BUFFD0 U98 ( .I(n200), .Z(n210) );
  INVD0 U99 ( .I(core_value[24]), .ZN(n650) );
  INVD0 U100 ( .I(core_value[1]), .ZN(n129) );
  OR4D0 U101 ( .A1(core_value[2]), .A2(core_value[0]), .A3(core_value[18]), 
        .A4(core_value[20]), .Z(n72) );
  BUFFD0 U102 ( .I(core_value[18]), .Z(n22) );
  BUFFD0 U103 ( .I(core_value[20]), .Z(n4) );
  BUFFD0 U104 ( .I(core_value[19]), .Z(n23) );
  INVD0 U105 ( .I(invalid_s6), .ZN(n227) );
  BUFFD0 U106 ( .I(core_value[0]), .Z(n2) );
  CKND2D0 U107 ( .A1(n1700), .A2(n1690), .ZN(n265) );
  INVD0 U109 ( .I(n129), .ZN(n3) );
  INVD0 U110 ( .I(n650), .ZN(n5) );
  INVD0 U111 ( .I(n235), .ZN(n6) );
  INVD0 U112 ( .I(n132), .ZN(n7) );
  INVD0 U113 ( .I(n135), .ZN(n8) );
  INVD0 U114 ( .I(n138), .ZN(n9) );
  INVD0 U115 ( .I(n238), .ZN(n10) );
  INVD0 U116 ( .I(n141), .ZN(n11) );
  INVD0 U117 ( .I(n144), .ZN(n12) );
  INVD0 U118 ( .I(n147), .ZN(n13) );
  INVD0 U119 ( .I(n241), .ZN(n14) );
  INVD0 U120 ( .I(n244), .ZN(n15) );
  INVD0 U121 ( .I(n1590), .ZN(n16) );
  INVD0 U122 ( .I(n247), .ZN(n17) );
  INVD0 U123 ( .I(n1620), .ZN(n18) );
  INVD0 U124 ( .I(n1650), .ZN(n19) );
  INVD0 U125 ( .I(n251), .ZN(n20) );
  INVD0 U126 ( .I(n1680), .ZN(n21) );
  OR4D0 U127 ( .A1(x[5]), .A2(x[19]), .A3(x[17]), .A4(x[21]), .Z(n188) );
  OR4D0 U128 ( .A1(x[2]), .A2(x[18]), .A3(x[6]), .A4(x[8]), .Z(n175) );
  NR2D1 U129 ( .A1(core_value[24]), .A2(core_value[23]), .ZN(n125) );
  INVD0 U130 ( .I(n54), .ZN(n24) );
  INVD0 U131 ( .I(n24), .ZN(n25) );
  INVD0 U132 ( .I(n24), .ZN(n26) );
  INVD0 U133 ( .I(n27), .ZN(n29) );
  INVD0 U134 ( .I(n256), .ZN(n39) );
  INVD0 U135 ( .I(n256), .ZN(n41) );
  INVD0 U136 ( .I(n252), .ZN(n43) );
  INVD0 U137 ( .I(n252), .ZN(n44) );
  INVD0 U138 ( .I(n252), .ZN(n45) );
  INVD0 U139 ( .I(n199), .ZN(n47) );
  INVD1 U140 ( .I(n106), .ZN(n50) );
  INVD1 U141 ( .I(n106), .ZN(n51) );
  INVD1 U142 ( .I(n106), .ZN(n52) );
  INVD1 U143 ( .I(n106), .ZN(n53) );
  INVD1 U144 ( .I(n57), .ZN(n58) );
  INVD1 U145 ( .I(n57), .ZN(n59) );
  CKBD1 U146 ( .I(n255), .Z(n259) );
  INVD1 U147 ( .I(n259), .ZN(n61) );
  INVD1 U148 ( .I(n259), .ZN(n620) );
  INVD1 U149 ( .I(n259), .ZN(n630) );
  FA1D0 U150 ( .A(exponent_s6[0]), .B(n52), .CI(n105), .CO(n109), .S(n107) );
  INVD0 U151 ( .I(core_value[21]), .ZN(n263) );
  INR2D1 U152 ( .A1(core_value[21]), .B1(n78), .ZN(n223) );
  NR4D0 U153 ( .A1(core_value[12]), .A2(core_value[13]), .A3(core_value[14]), 
        .A4(core_value[11]), .ZN(n700) );
  NR4D0 U154 ( .A1(core_value[19]), .A2(core_value[15]), .A3(core_value[17]), 
        .A4(core_value[16]), .ZN(n690) );
  NR4D0 U155 ( .A1(core_value[4]), .A2(core_value[6]), .A3(core_value[5]), 
        .A4(core_value[3]), .ZN(n680) );
  NR4D0 U156 ( .A1(core_value[10]), .A2(core_value[8]), .A3(core_value[9]), 
        .A4(core_value[7]), .ZN(n670) );
  INVD1 U157 ( .I(n75), .ZN(n76) );
  INVD1 U158 ( .I(n223), .ZN(n77) );
  INVD1 U159 ( .I(n80), .ZN(n79) );
  FA1D0 U160 ( .A(n52), .B(exponent_s6[9]), .CI(n84), .CO(n89), .S(n88) );
  FA1D0 U161 ( .A(n51), .B(exponent_s6[8]), .CI(n85), .CO(n84), .S(n86) );
  FA1D0 U162 ( .A(n53), .B(exponent_s6[10]), .CI(n89), .CO(n83), .S(n90) );
  FA1D0 U163 ( .A(n50), .B(exponent_s6[7]), .CI(n92), .CO(n85), .S(n119) );
  FA1D0 U164 ( .A(n53), .B(exponent_s6[6]), .CI(n93), .CO(n92), .S(n94) );
  INVD0 U165 ( .I(n94), .ZN(n95) );
  FA1D0 U166 ( .A(n52), .B(exponent_s6[5]), .CI(n96), .CO(n93), .S(n97) );
  FA1D0 U167 ( .A(n51), .B(exponent_s6[4]), .CI(n98), .CO(n96), .S(n99) );
  FA1D0 U168 ( .A(n50), .B(exponent_s6[3]), .CI(n100), .CO(n98), .S(n101) );
  INVD0 U169 ( .I(n101), .ZN(n102) );
  FA1D0 U170 ( .A(n53), .B(exponent_s6[2]), .CI(n103), .CO(n100), .S(n104) );
  INVD0 U171 ( .I(n107), .ZN(n108) );
  FA1D0 U172 ( .A(n110), .B(exponent_s6[1]), .CI(n109), .CO(n103), .S(n111) );
  INVD0 U173 ( .I(n111), .ZN(n112) );
  NR4D0 U174 ( .A1(n101), .A2(n104), .A3(n107), .A4(n111), .ZN(n113) );
  NR4D0 U175 ( .A1(n120), .A2(n119), .A3(n94), .A4(n114), .ZN(n115) );
  NR3D0 U176 ( .A1(n117), .A2(n116), .A3(n115), .ZN(n215) );
  NR3D0 U177 ( .A1(n217), .A2(n102), .A3(n112), .ZN(n118) );
  NR4D0 U178 ( .A1(n221), .A2(n218), .A3(n216), .A4(n108), .ZN(n121) );
  AOI22D0 U179 ( .A1(core_value[2]), .A2(n39), .B1(core_value[0]), .B2(n28), 
        .ZN(n128) );
  AOI22D0 U180 ( .A1(n8), .A2(n35), .B1(n7), .B2(n34), .ZN(n127) );
  INVD0 U181 ( .I(core_value[3]), .ZN(n132) );
  AOI22D0 U182 ( .A1(n6), .A2(n257), .B1(core_value[4]), .B2(n32), .ZN(n131)
         );
  AOI22D0 U183 ( .A1(n10), .A2(n640), .B1(n9), .B2(n45), .ZN(n130) );
  INVD0 U184 ( .I(core_value[4]), .ZN(n135) );
  AOI22D0 U185 ( .A1(n9), .A2(n39), .B1(core_value[3]), .B2(n58), .ZN(n134) );
  AOI22D0 U186 ( .A1(n11), .A2(n630), .B1(n10), .B2(n44), .ZN(n133) );
  INVD0 U187 ( .I(core_value[5]), .ZN(n138) );
  AOI22D0 U188 ( .A1(n8), .A2(n28), .B1(core_value[6]), .B2(n42), .ZN(n137) );
  AOI22D0 U189 ( .A1(n12), .A2(n620), .B1(core_value[7]), .B2(n46), .ZN(n136)
         );
  INVD0 U190 ( .I(core_value[7]), .ZN(n141) );
  AOI22D0 U191 ( .A1(n12), .A2(n31), .B1(core_value[6]), .B2(n29), .ZN(n140)
         );
  AOI22D0 U192 ( .A1(n14), .A2(n35), .B1(n13), .B2(n43), .ZN(n139) );
  INVD0 U193 ( .I(core_value[8]), .ZN(n144) );
  AOI22D0 U194 ( .A1(n13), .A2(n40), .B1(core_value[7]), .B2(n59), .ZN(n143)
         );
  AOI22D0 U195 ( .A1(n15), .A2(n61), .B1(core_value[10]), .B2(n46), .ZN(n142)
         );
  INVD0 U196 ( .I(core_value[9]), .ZN(n147) );
  AOI22D0 U197 ( .A1(n14), .A2(n42), .B1(core_value[8]), .B2(n60), .ZN(n146)
         );
  AOI22D0 U198 ( .A1(n16), .A2(n630), .B1(core_value[11]), .B2(n33), .ZN(n145)
         );
  INVD0 U199 ( .I(core_value[12]), .ZN(n1590) );
  AOI22D0 U200 ( .A1(n17), .A2(n42), .B1(core_value[11]), .B2(n59), .ZN(n1580)
         );
  AOI22D0 U201 ( .A1(n19), .A2(n61), .B1(n18), .B2(n45), .ZN(n1570) );
  INVD0 U202 ( .I(core_value[14]), .ZN(n1620) );
  AOI22D0 U203 ( .A1(n19), .A2(n32), .B1(core_value[13]), .B2(n28), .ZN(n1610)
         );
  AOI22D0 U204 ( .A1(n21), .A2(n36), .B1(n20), .B2(n44), .ZN(n1600) );
  INVD0 U205 ( .I(core_value[15]), .ZN(n1650) );
  AOI22D0 U206 ( .A1(n20), .A2(n41), .B1(n18), .B2(n60), .ZN(n1640) );
  AOI22D0 U207 ( .A1(n22), .A2(n640), .B1(n21), .B2(n43), .ZN(n1630) );
  INVD0 U208 ( .I(core_value[17]), .ZN(n1680) );
  AOI22D0 U209 ( .A1(n22), .A2(n41), .B1(core_value[16]), .B2(n58), .ZN(n1670)
         );
  AOI22D0 U210 ( .A1(n4), .A2(n620), .B1(n23), .B2(n34), .ZN(n1660) );
  CKBD1 U211 ( .I(n200), .Z(n202) );
  AN4D0 U212 ( .A1(y[30]), .A2(y[29]), .A3(y[28]), .A4(y[27]), .Z(n1700) );
  AN4D0 U213 ( .A1(y[26]), .A2(y[25]), .A3(y[24]), .A4(y[23]), .Z(n1690) );
  AN4D0 U214 ( .A1(x[30]), .A2(x[29]), .A3(x[28]), .A4(x[27]), .Z(n172) );
  AN4D0 U215 ( .A1(x[26]), .A2(x[25]), .A3(x[24]), .A4(x[23]), .Z(n1710) );
  CKND2D0 U216 ( .A1(n172), .A2(n1710), .ZN(n196) );
  NR4D0 U217 ( .A1(y[30]), .A2(y[29]), .A3(y[28]), .A4(y[27]), .ZN(n174) );
  NR4D0 U218 ( .A1(y[26]), .A2(y[25]), .A3(y[24]), .A4(y[23]), .ZN(n173) );
  CKND2D0 U219 ( .A1(n174), .A2(n173), .ZN(n268) );
  NR4D0 U220 ( .A1(x[22]), .A2(x[20]), .A3(x[9]), .A4(x[10]), .ZN(n179) );
  NR4D0 U221 ( .A1(x[0]), .A2(x[3]), .A3(x[4]), .A4(n175), .ZN(n178) );
  NR4D0 U222 ( .A1(x[11]), .A2(x[15]), .A3(x[16]), .A4(x[14]), .ZN(n177) );
  NR4D0 U223 ( .A1(x[1]), .A2(x[7]), .A3(x[12]), .A4(x[13]), .ZN(n176) );
  ND4D0 U224 ( .A1(n179), .A2(n178), .A3(n177), .A4(n176), .ZN(n189) );
  INVD0 U225 ( .I(n196), .ZN(n194) );
  NR4D0 U226 ( .A1(y[5]), .A2(y[19]), .A3(y[17]), .A4(y[21]), .ZN(n186) );
  NR4D0 U227 ( .A1(y[22]), .A2(y[20]), .A3(y[9]), .A4(y[10]), .ZN(n185) );
  NR4D0 U228 ( .A1(y[2]), .A2(y[18]), .A3(y[6]), .A4(y[8]), .ZN(n183) );
  NR3D0 U229 ( .A1(y[0]), .A2(y[3]), .A3(y[4]), .ZN(n182) );
  NR4D0 U230 ( .A1(y[11]), .A2(y[15]), .A3(y[16]), .A4(y[14]), .ZN(n1810) );
  NR4D0 U231 ( .A1(y[1]), .A2(y[7]), .A3(y[12]), .A4(y[13]), .ZN(n180) );
  AN4D0 U232 ( .A1(n183), .A2(n182), .A3(n1810), .A4(n180), .Z(n184) );
  AOI31D0 U233 ( .A1(n186), .A2(n185), .A3(n184), .B(n47), .ZN(n187) );
  AOI221D0 U234 ( .A1(n189), .A2(n194), .B1(n188), .B2(n194), .C(n187), .ZN(
        n192) );
  OAI211D0 U235 ( .A1(n196), .A2(n268), .B(n192), .C(n202), .ZN(n269) );
  INVD0 U236 ( .I(n269), .ZN(n198) );
  NR4D0 U237 ( .A1(x[30]), .A2(x[29]), .A3(x[28]), .A4(x[27]), .ZN(n191) );
  NR4D0 U238 ( .A1(x[26]), .A2(x[25]), .A3(x[24]), .A4(x[23]), .ZN(n190) );
  CKND2D0 U239 ( .A1(n191), .A2(n190), .ZN(n267) );
  INVD0 U240 ( .I(n265), .ZN(n199) );
  INVD0 U241 ( .I(n210), .ZN(n212) );
  OAI211D0 U242 ( .A1(n267), .A2(n268), .B(n212), .C(n192), .ZN(n193) );
  AOI221D0 U243 ( .A1(n265), .A2(n198), .B1(n267), .B2(n198), .C(n195), .ZN(
        invalid_operation) );
  AOI21D0 U244 ( .A1(n198), .A2(n265), .B(n195), .ZN(n266) );
  INVD0 U245 ( .I(n195), .ZN(n264) );
  OAI22D0 U246 ( .A1(n266), .A2(n196), .B1(n268), .B2(n264), .ZN(n197) );
  AO31D0 U247 ( .A1(n199), .A2(n198), .A3(n267), .B(n197), .Z(infinity_result)
         );
  INVD0 U248 ( .I(y[23]), .ZN(n203) );
  CKAN2D0 U249 ( .A1(n203), .A2(n278), .Z(n230) );
  OR2D0 U250 ( .A1(n230), .A2(DP_OP_58J1_124_7635_n43), .Z(
        DP_OP_58J1_124_7635_n10) );
  INVD0 U251 ( .I(y[24]), .ZN(n204) );
  INVD0 U252 ( .I(n206), .ZN(n201) );
  CKAN2D0 U253 ( .A1(n204), .A2(n201), .Z(n271) );
  INVD0 U254 ( .I(y[25]), .ZN(n205) );
  CKAN2D0 U255 ( .A1(n205), .A2(n278), .Z(n272) );
  INVD0 U256 ( .I(y[26]), .ZN(n207) );
  CKAN2D0 U257 ( .A1(n207), .A2(n201), .Z(n273) );
  INVD0 U258 ( .I(y[27]), .ZN(n208) );
  CKAN2D0 U259 ( .A1(n208), .A2(n201), .Z(n274) );
  INVD0 U260 ( .I(y[28]), .ZN(n209) );
  CKAN2D0 U261 ( .A1(n209), .A2(n201), .Z(n275) );
  INVD0 U262 ( .I(y[29]), .ZN(n211) );
  CKAN2D0 U263 ( .A1(n211), .A2(n212), .Z(n276) );
  CKND2D0 U264 ( .A1(y[30]), .A2(n212), .ZN(n277) );
  INVD0 U265 ( .I(y[30]), .ZN(n213) );
  AOI22D0 U266 ( .A1(core_value[23]), .A2(n5), .B1(core_value[22]), .B2(n222), 
        .ZN(n225) );
  AOI22D0 U267 ( .A1(core_value[20]), .A2(n223), .B1(core_value[19]), .B2(n75), 
        .ZN(n224) );
  OA211D0 U268 ( .A1(n263), .A2(n226), .B(n225), .C(n224), .Z(n229) );
  XOR2D0 U269 ( .A1(y[31]), .A2(x[31]), .Z(sign_out) );
  INR2D0 U270 ( .A1(finite_result_31_), .B1(invalid_s6), .ZN(N181) );
  XNR2D0 U271 ( .A1(DP_OP_58J1_124_7635_n43), .A2(n230), .ZN(N62) );
  XNR2D0 U272 ( .A1(DP_OP_57J1_123_2635_n1), .A2(DP_OP_58J1_124_7635_n3), .ZN(
        N70) );
  AO22D0 U273 ( .A1(core_value[1]), .A2(n36), .B1(n2), .B2(n34), .Z(N150) );
  AO222D0 U274 ( .A1(n40), .A2(core_value[0]), .B1(n43), .B2(n3), .C1(n35), 
        .C2(core_value[2]), .Z(N151) );
  AOI22D0 U275 ( .A1(n6), .A2(n45), .B1(n7), .B2(n630), .ZN(n232) );
  AOI22D0 U276 ( .A1(core_value[1]), .A2(n32), .B1(n2), .B2(n258), .ZN(n231)
         );
  INVD0 U277 ( .I(core_value[2]), .ZN(n235) );
  AOI22D0 U278 ( .A1(core_value[1]), .A2(n58), .B1(core_value[3]), .B2(n31), 
        .ZN(n234) );
  AOI22D0 U279 ( .A1(core_value[4]), .A2(n45), .B1(core_value[5]), .B2(n61), 
        .ZN(n233) );
  OAI211D0 U280 ( .A1(n235), .A2(n26), .B(n234), .C(n233), .ZN(N154) );
  INVD0 U281 ( .I(core_value[6]), .ZN(n238) );
  AOI22D0 U282 ( .A1(n11), .A2(n31), .B1(core_value[5]), .B2(n29), .ZN(n237)
         );
  AOI22D0 U283 ( .A1(core_value[8]), .A2(n46), .B1(core_value[9]), .B2(n640), 
        .ZN(n236) );
  OAI211D0 U284 ( .A1(n238), .A2(n54), .B(n237), .C(n236), .ZN(N158) );
  INVD0 U285 ( .I(core_value[10]), .ZN(n241) );
  AOI22D0 U286 ( .A1(n15), .A2(n41), .B1(core_value[9]), .B2(n59), .ZN(n240)
         );
  AOI22D0 U287 ( .A1(n16), .A2(n43), .B1(core_value[13]), .B2(n61), .ZN(n239)
         );
  OAI211D0 U288 ( .A1(n241), .A2(n56), .B(n240), .C(n239), .ZN(N162) );
  INVD0 U289 ( .I(core_value[11]), .ZN(n244) );
  AOI22D0 U290 ( .A1(core_value[12]), .A2(n40), .B1(core_value[10]), .B2(n28), 
        .ZN(n243) );
  AOI22D0 U291 ( .A1(n17), .A2(n33), .B1(core_value[14]), .B2(n36), .ZN(n242)
         );
  OAI211D0 U292 ( .A1(n244), .A2(n55), .B(n243), .C(n242), .ZN(N163) );
  INVD0 U293 ( .I(core_value[13]), .ZN(n247) );
  AOI22D0 U294 ( .A1(core_value[12]), .A2(n29), .B1(core_value[14]), .B2(n41), 
        .ZN(n246) );
  AOI22D0 U295 ( .A1(core_value[15]), .A2(n44), .B1(core_value[16]), .B2(n620), 
        .ZN(n245) );
  OAI211D0 U296 ( .A1(n247), .A2(n25), .B(n246), .C(n245), .ZN(N165) );
  INVD0 U297 ( .I(core_value[16]), .ZN(n251) );
  AOI22D0 U298 ( .A1(core_value[15]), .A2(n59), .B1(core_value[17]), .B2(n40), 
        .ZN(n249) );
  AOI22D0 U299 ( .A1(core_value[18]), .A2(n44), .B1(core_value[19]), .B2(n630), 
        .ZN(n248) );
  OAI211D0 U300 ( .A1(n251), .A2(n26), .B(n249), .C(n248), .ZN(N168) );
  AOI22D0 U301 ( .A1(n23), .A2(n39), .B1(core_value[17]), .B2(n60), .ZN(n254)
         );
  AOI22D0 U302 ( .A1(n22), .A2(n258), .B1(n4), .B2(n33), .ZN(n253) );
  OAI211D0 U303 ( .A1(n263), .A2(n255), .B(n254), .C(n253), .ZN(N170) );
  AOI22D0 U304 ( .A1(core_value[18]), .A2(n60), .B1(core_value[20]), .B2(n39), 
        .ZN(n261) );
  AOI22D0 U305 ( .A1(core_value[22]), .A2(n620), .B1(n23), .B2(n258), .ZN(n260) );
  OAI211D0 U306 ( .A1(n263), .A2(n262), .B(n261), .C(n260), .ZN(N171) );
  OAI222D0 U307 ( .A1(n269), .A2(n268), .B1(n267), .B2(n266), .C1(n265), .C2(
        n264), .ZN(zero_result) );
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
  BUFFD0 U1 ( .I(y[10]), .Z(n18) );
  BUFFD0 U2 ( .I(y[11]), .Z(n19) );
  BUFFD0 U3 ( .I(y[12]), .Z(n20) );
  BUFFD0 U4 ( .I(y[13]), .Z(n21) );
  BUFFD0 U5 ( .I(y[14]), .Z(n22) );
  BUFFD0 U6 ( .I(y[15]), .Z(n23) );
  BUFFD0 U7 ( .I(y[16]), .Z(n24) );
  BUFFD0 U8 ( .I(y[17]), .Z(n25) );
  BUFFD0 U9 ( .I(y[18]), .Z(n26) );
  BUFFD0 U10 ( .I(y[19]), .Z(n27) );
  BUFFD0 U11 ( .I(y[3]), .Z(n11) );
  BUFFD0 U12 ( .I(y[2]), .Z(n10) );
  BUFFD0 U13 ( .I(y[4]), .Z(n12) );
  BUFFD0 U14 ( .I(y[1]), .Z(n9) );
  BUFFD0 U15 ( .I(y[5]), .Z(n13) );
  BUFFD0 U16 ( .I(x[4]), .Z(n34) );
  BUFFD0 U17 ( .I(y[6]), .Z(n14) );
  BUFFD0 U18 ( .I(x[5]), .Z(n35) );
  BUFFD0 U19 ( .I(y[7]), .Z(n15) );
  BUFFD0 U20 ( .I(y[8]), .Z(n16) );
  BUFFD0 U21 ( .I(x[7]), .Z(n36) );
  BUFFD0 U22 ( .I(y[9]), .Z(n17) );
  BUFFD0 U23 ( .I(x[9]), .Z(n37) );
  BUFFD0 U24 ( .I(x[10]), .Z(n38) );
  BUFFD0 U25 ( .I(x[11]), .Z(n39) );
  BUFFD0 U26 ( .I(x[12]), .Z(n40) );
  BUFFD0 U27 ( .I(x[13]), .Z(n41) );
  BUFFD0 U28 ( .I(x[14]), .Z(n42) );
  BUFFD0 U29 ( .I(x[15]), .Z(n43) );
  BUFFD0 U30 ( .I(x[16]), .Z(n44) );
  BUFFD0 U31 ( .I(y[20]), .Z(n28) );
  BUFFD0 U32 ( .I(x[20]), .Z(n45) );
  BUFFD0 U33 ( .I(y[21]), .Z(n29) );
  BUFFD0 U34 ( .I(y[22]), .Z(n30) );
  BUFFD0 U35 ( .I(x[22]), .Z(n46) );
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

