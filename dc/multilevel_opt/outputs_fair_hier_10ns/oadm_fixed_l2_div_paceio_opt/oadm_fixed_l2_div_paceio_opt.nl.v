/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Wed Sep  2 14:56:20 2026
/////////////////////////////////////////////////////////////


module oadm_multilevel_rounding_lut_1 ( level, index, value_low, x_error, 
        y_error );
  input [1:0] level;
  input [2:0] index;
  input [3:0] value_low;
  output [1:0] x_error;
  output [1:0] y_error;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10;

  ND3D0 U1 ( .A1(index[1]), .A2(value_low[1]), .A3(value_low[2]), .ZN(n10) );
  INVD0 U2 ( .I(index[1]), .ZN(n8) );
  INVD0 U3 ( .I(index[2]), .ZN(n5) );
  INVD0 U4 ( .I(value_low[2]), .ZN(n4) );
  IND4D0 U5 ( .A1(value_low[1]), .B1(n8), .B2(n5), .B3(n4), .ZN(n3) );
  INVD0 U6 ( .I(value_low[0]), .ZN(n2) );
  AOI221D0 U7 ( .A1(n10), .A2(n3), .B1(n5), .B2(n3), .C(n2), .ZN(x_error[1])
         );
  CKAN2D0 U8 ( .A1(value_low[1]), .A2(n4), .Z(n7) );
  OAI222D0 U9 ( .A1(index[2]), .A2(n8), .B1(n5), .B2(index[1]), .C1(
        value_low[1]), .C2(n4), .ZN(n6) );
  OAI222D0 U10 ( .A1(value_low[0]), .A2(n8), .B1(value_low[0]), .B2(n7), .C1(
        n7), .C2(n6), .ZN(n9) );
  OAI21D0 U11 ( .A1(value_low[0]), .A2(n10), .B(n9), .ZN(x_error[0]) );
endmodule


module oadm_multilevel_rounding_lut_0 ( level, index, value_low, x_error, 
        y_error );
  input [1:0] level;
  input [2:0] index;
  input [3:0] value_low;
  output [1:0] x_error;
  output [1:0] y_error;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;

  CKND2D0 U1 ( .A1(value_low[0]), .A2(value_low[1]), .ZN(n8) );
  CKND2D0 U2 ( .A1(value_low[0]), .A2(index[2]), .ZN(n11) );
  NR2D0 U3 ( .A1(n9), .A2(value_low[0]), .ZN(n5) );
  INVD0 U4 ( .I(value_low[2]), .ZN(n7) );
  INVD0 U5 ( .I(index[1]), .ZN(n9) );
  INVD0 U6 ( .I(n5), .ZN(n6) );
  CKND2D0 U7 ( .A1(n9), .A2(n11), .ZN(n3) );
  CKND2D0 U8 ( .A1(index[1]), .A2(index[2]), .ZN(n2) );
  AOI22D0 U9 ( .A1(value_low[1]), .A2(n7), .B1(n3), .B2(n2), .ZN(n4) );
  OAI222D0 U10 ( .A1(n7), .A2(value_low[1]), .B1(n7), .B2(n6), .C1(n5), .C2(n4), .ZN(y_error[0]) );
  INVD0 U11 ( .I(value_low[1]), .ZN(n12) );
  AOI33D0 U12 ( .A1(value_low[2]), .A2(n11), .A3(n9), .B1(index[1]), .B2(n8), 
        .B3(n7), .ZN(n10) );
  AOI21D0 U13 ( .A1(n12), .A2(n11), .B(n10), .ZN(y_error[1]) );
endmodule


module oadm_fixed_plane_centered_LEVEL2 ( x_mantissa, y_mantissa, divide_mode, 
        plane_exact );
  input [23:0] x_mantissa;
  input [23:0] y_mantissa;
  output [28:0] plane_exact;
  input divide_mode;
  wire   DP_OP_42J1_122_9574_n549, DP_OP_42J1_122_9574_n245,
         DP_OP_42J1_122_9574_n244, DP_OP_42J1_122_9574_n225,
         DP_OP_42J1_122_9574_n224, DP_OP_42J1_122_9574_n223,
         DP_OP_42J1_122_9574_n222, DP_OP_42J1_122_9574_n221,
         DP_OP_42J1_122_9574_n220, DP_OP_42J1_122_9574_n219,
         DP_OP_42J1_122_9574_n218, DP_OP_42J1_122_9574_n217,
         DP_OP_42J1_122_9574_n216, DP_OP_42J1_122_9574_n215,
         DP_OP_42J1_122_9574_n214, DP_OP_42J1_122_9574_n213,
         DP_OP_42J1_122_9574_n212, DP_OP_42J1_122_9574_n211,
         DP_OP_42J1_122_9574_n210, DP_OP_42J1_122_9574_n209,
         DP_OP_42J1_122_9574_n208, DP_OP_42J1_122_9574_n207,
         DP_OP_42J1_122_9574_n184, DP_OP_42J1_122_9574_n181,
         DP_OP_42J1_122_9574_n178, DP_OP_42J1_122_9574_n157,
         DP_OP_42J1_122_9574_n156, DP_OP_42J1_122_9574_n152,
         DP_OP_42J1_122_9574_n151, DP_OP_42J1_122_9574_n150,
         DP_OP_42J1_122_9574_n147, DP_OP_42J1_122_9574_n146,
         DP_OP_42J1_122_9574_n145, DP_OP_42J1_122_9574_n144,
         DP_OP_42J1_122_9574_n143, DP_OP_42J1_122_9574_n142,
         DP_OP_42J1_122_9574_n141, DP_OP_42J1_122_9574_n140,
         DP_OP_42J1_122_9574_n139, DP_OP_42J1_122_9574_n138,
         DP_OP_42J1_122_9574_n137, DP_OP_42J1_122_9574_n136,
         DP_OP_42J1_122_9574_n135, DP_OP_42J1_122_9574_n134,
         DP_OP_42J1_122_9574_n133, DP_OP_42J1_122_9574_n132,
         DP_OP_42J1_122_9574_n131, DP_OP_42J1_122_9574_n130,
         DP_OP_42J1_122_9574_n129, DP_OP_42J1_122_9574_n128,
         DP_OP_42J1_122_9574_n127, DP_OP_42J1_122_9574_n126,
         DP_OP_42J1_122_9574_n125, DP_OP_42J1_122_9574_n124,
         DP_OP_42J1_122_9574_n123, DP_OP_42J1_122_9574_n122,
         DP_OP_42J1_122_9574_n121, DP_OP_42J1_122_9574_n120,
         DP_OP_42J1_122_9574_n119, DP_OP_42J1_122_9574_n118,
         DP_OP_42J1_122_9574_n117, DP_OP_42J1_122_9574_n116,
         DP_OP_42J1_122_9574_n115, DP_OP_42J1_122_9574_n114,
         DP_OP_42J1_122_9574_n113, DP_OP_42J1_122_9574_n112,
         DP_OP_42J1_122_9574_n111, DP_OP_42J1_122_9574_n110,
         DP_OP_42J1_122_9574_n109, DP_OP_42J1_122_9574_n108,
         DP_OP_42J1_122_9574_n107, DP_OP_42J1_122_9574_n106,
         DP_OP_42J1_122_9574_n105, DP_OP_42J1_122_9574_n104,
         DP_OP_42J1_122_9574_n103, DP_OP_42J1_122_9574_n102,
         DP_OP_42J1_122_9574_n101, DP_OP_42J1_122_9574_n100,
         DP_OP_42J1_122_9574_n99, DP_OP_42J1_122_9574_n98,
         DP_OP_42J1_122_9574_n97, DP_OP_42J1_122_9574_n96,
         DP_OP_42J1_122_9574_n95, DP_OP_42J1_122_9574_n94,
         DP_OP_42J1_122_9574_n93, DP_OP_42J1_122_9574_n92,
         DP_OP_42J1_122_9574_n91, DP_OP_42J1_122_9574_n90,
         DP_OP_42J1_122_9574_n89, DP_OP_42J1_122_9574_n88,
         DP_OP_42J1_122_9574_n87, DP_OP_42J1_122_9574_n86,
         DP_OP_42J1_122_9574_n85, DP_OP_42J1_122_9574_n84,
         DP_OP_42J1_122_9574_n83, DP_OP_42J1_122_9574_n82,
         DP_OP_42J1_122_9574_n81, DP_OP_42J1_122_9574_n80,
         DP_OP_42J1_122_9574_n79, DP_OP_42J1_122_9574_n78,
         DP_OP_42J1_122_9574_n77, DP_OP_42J1_122_9574_n76,
         DP_OP_42J1_122_9574_n75, DP_OP_42J1_122_9574_n74,
         DP_OP_42J1_122_9574_n73, DP_OP_42J1_122_9574_n72,
         DP_OP_42J1_122_9574_n71, DP_OP_42J1_122_9574_n70,
         DP_OP_42J1_122_9574_n69, DP_OP_42J1_122_9574_n68,
         DP_OP_42J1_122_9574_n67, DP_OP_42J1_122_9574_n66,
         DP_OP_42J1_122_9574_n65, DP_OP_42J1_122_9574_n64,
         DP_OP_42J1_122_9574_n63, DP_OP_42J1_122_9574_n62,
         DP_OP_42J1_122_9574_n61, DP_OP_42J1_122_9574_n60,
         DP_OP_42J1_122_9574_n59, DP_OP_42J1_122_9574_n58,
         DP_OP_42J1_122_9574_n57, DP_OP_42J1_122_9574_n56,
         DP_OP_42J1_122_9574_n55, DP_OP_42J1_122_9574_n54,
         DP_OP_42J1_122_9574_n53, DP_OP_42J1_122_9574_n52,
         DP_OP_42J1_122_9574_n51, DP_OP_42J1_122_9574_n50,
         DP_OP_42J1_122_9574_n49, DP_OP_42J1_122_9574_n48,
         DP_OP_42J1_122_9574_n47, DP_OP_42J1_122_9574_n46,
         DP_OP_42J1_122_9574_n45, DP_OP_42J1_122_9574_n44,
         DP_OP_42J1_122_9574_n43, DP_OP_42J1_122_9574_n42, intadd_1_A_24_,
         intadd_1_A_22_, intadd_1_B_24_, intadd_1_B_23_, intadd_1_B_20_,
         intadd_1_B_19_, intadd_1_B_18_, intadd_1_B_17_, intadd_1_B_16_,
         intadd_1_B_15_, intadd_1_B_14_, intadd_1_B_13_, intadd_1_B_12_,
         intadd_1_B_11_, intadd_1_B_10_, intadd_1_B_9_, intadd_1_B_8_,
         intadd_1_B_7_, intadd_1_B_6_, intadd_1_B_5_, intadd_1_B_4_,
         intadd_1_B_3_, intadd_1_B_2_, intadd_1_B_1_, intadd_1_B_0_,
         intadd_1_CI, intadd_1_n25, intadd_1_n24, intadd_1_n23, intadd_1_n22,
         intadd_1_n21, intadd_1_n20, intadd_1_n19, intadd_1_n18, intadd_1_n17,
         intadd_1_n16, intadd_1_n15, intadd_1_n14, intadd_1_n13, intadd_1_n12,
         intadd_1_n11, intadd_1_n10, intadd_1_n9, intadd_1_n8, intadd_1_n7,
         intadd_1_n6, intadd_1_n5, intadd_1_n4, intadd_1_n3, intadd_1_n2,
         intadd_1_n1, intadd_2_A_17_, intadd_2_A_16_, intadd_2_A_15_,
         intadd_2_A_14_, intadd_2_A_13_, intadd_2_A_12_, intadd_2_A_11_,
         intadd_2_A_10_, intadd_2_A_9_, intadd_2_A_8_, intadd_2_A_7_,
         intadd_2_A_6_, intadd_2_A_5_, intadd_2_A_4_, intadd_2_A_3_,
         intadd_2_A_2_, intadd_2_A_1_, intadd_2_A_0_, intadd_2_B_17_,
         intadd_2_B_16_, intadd_2_B_15_, intadd_2_B_14_, intadd_2_B_13_,
         intadd_2_B_12_, intadd_2_B_11_, intadd_2_B_10_, intadd_2_B_9_,
         intadd_2_B_8_, intadd_2_B_7_, intadd_2_B_6_, intadd_2_B_5_,
         intadd_2_B_4_, intadd_2_B_3_, intadd_2_B_2_, intadd_2_B_1_,
         intadd_2_B_0_, intadd_2_CI, intadd_2_n18, intadd_2_n17, intadd_2_n16,
         intadd_2_n15, intadd_2_n14, intadd_2_n13, intadd_2_n12, intadd_2_n11,
         intadd_2_n10, intadd_2_n9, intadd_2_n8, intadd_2_n7, intadd_2_n6,
         intadd_2_n5, intadd_2_n4, intadd_2_n3, intadd_2_n2, intadd_2_n1,
         intadd_3_A_3_, intadd_3_A_2_, intadd_3_A_1_, intadd_3_B_3_,
         intadd_3_B_2_, intadd_3_B_1_, intadd_3_B_0_, intadd_3_CI,
         intadd_3_SUM_3_, intadd_3_SUM_0_, intadd_3_n4, intadd_3_n3,
         intadd_3_n2, intadd_3_n1, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142;
  wire   [7:6] midpoint_product;
  wire   [1:0] x_rounding_error;
  wire   [1:0] y_rounding_error;

  oadm_multilevel_rounding_lut_1 x_rounding_lut ( .level({1'b0, 1'b0}), 
        .index({y_mantissa[22], n141, 1'b0}), .value_low({1'b0, 
        x_mantissa[2:0]}), .x_error(x_rounding_error) );
  oadm_multilevel_rounding_lut_0 y_rounding_lut ( .level({1'b0, 1'b0}), 
        .index({x_mantissa[22], n142, 1'b0}), .value_low({1'b0, 
        y_mantissa[2:0]}), .y_error(y_rounding_error) );
  CMPE42D1 DP_OP_42J1_122_9574_U102 ( .A(DP_OP_42J1_122_9574_n178), .B(
        y_rounding_error[0]), .C(DP_OP_42J1_122_9574_n245), .CIX(
        DP_OP_42J1_122_9574_n225), .D(DP_OP_42J1_122_9574_n181), .CO(
        DP_OP_42J1_122_9574_n151), .COX(DP_OP_42J1_122_9574_n150), .S(
        DP_OP_42J1_122_9574_n152) );
  CMPE42D1 DP_OP_42J1_122_9574_U98 ( .A(DP_OP_42J1_122_9574_n224), .B(
        DP_OP_42J1_122_9574_n244), .C(DP_OP_42J1_122_9574_n150), .CIX(
        DP_OP_42J1_122_9574_n151), .D(DP_OP_42J1_122_9574_n147), .CO(
        DP_OP_42J1_122_9574_n144), .COX(DP_OP_42J1_122_9574_n143), .S(
        DP_OP_42J1_122_9574_n145) );
  CMPE42D1 DP_OP_42J1_122_9574_U96 ( .A(DP_OP_42J1_122_9574_n146), .B(
        DP_OP_42J1_122_9574_n223), .C(DP_OP_42J1_122_9574_n142), .CIX(
        DP_OP_42J1_122_9574_n144), .D(DP_OP_42J1_122_9574_n143), .CO(
        DP_OP_42J1_122_9574_n139), .COX(DP_OP_42J1_122_9574_n138), .S(
        DP_OP_42J1_122_9574_n140) );
  CMPE42D1 DP_OP_42J1_122_9574_U93 ( .A(DP_OP_42J1_122_9574_n141), .B(
        DP_OP_42J1_122_9574_n222), .C(DP_OP_42J1_122_9574_n137), .CIX(
        DP_OP_42J1_122_9574_n139), .D(DP_OP_42J1_122_9574_n138), .CO(
        DP_OP_42J1_122_9574_n134), .COX(DP_OP_42J1_122_9574_n133), .S(
        DP_OP_42J1_122_9574_n135) );
  CMPE42D1 DP_OP_42J1_122_9574_U90 ( .A(DP_OP_42J1_122_9574_n136), .B(
        DP_OP_42J1_122_9574_n221), .C(DP_OP_42J1_122_9574_n132), .CIX(
        DP_OP_42J1_122_9574_n134), .D(DP_OP_42J1_122_9574_n133), .CO(
        DP_OP_42J1_122_9574_n129), .COX(DP_OP_42J1_122_9574_n128), .S(
        DP_OP_42J1_122_9574_n130) );
  CMPE42D1 DP_OP_42J1_122_9574_U87 ( .A(DP_OP_42J1_122_9574_n131), .B(
        DP_OP_42J1_122_9574_n220), .C(DP_OP_42J1_122_9574_n127), .CIX(
        DP_OP_42J1_122_9574_n129), .D(DP_OP_42J1_122_9574_n128), .CO(
        DP_OP_42J1_122_9574_n124), .COX(DP_OP_42J1_122_9574_n123), .S(
        DP_OP_42J1_122_9574_n125) );
  CMPE42D1 DP_OP_42J1_122_9574_U84 ( .A(DP_OP_42J1_122_9574_n126), .B(
        DP_OP_42J1_122_9574_n219), .C(DP_OP_42J1_122_9574_n122), .CIX(
        DP_OP_42J1_122_9574_n124), .D(DP_OP_42J1_122_9574_n123), .CO(
        DP_OP_42J1_122_9574_n119), .COX(DP_OP_42J1_122_9574_n118), .S(
        DP_OP_42J1_122_9574_n120) );
  CMPE42D1 DP_OP_42J1_122_9574_U81 ( .A(DP_OP_42J1_122_9574_n121), .B(
        DP_OP_42J1_122_9574_n218), .C(DP_OP_42J1_122_9574_n117), .CIX(
        DP_OP_42J1_122_9574_n119), .D(DP_OP_42J1_122_9574_n118), .CO(
        DP_OP_42J1_122_9574_n114), .COX(DP_OP_42J1_122_9574_n113), .S(
        DP_OP_42J1_122_9574_n115) );
  CMPE42D1 DP_OP_42J1_122_9574_U78 ( .A(DP_OP_42J1_122_9574_n116), .B(
        DP_OP_42J1_122_9574_n217), .C(DP_OP_42J1_122_9574_n112), .CIX(
        DP_OP_42J1_122_9574_n114), .D(DP_OP_42J1_122_9574_n113), .CO(
        DP_OP_42J1_122_9574_n109), .COX(DP_OP_42J1_122_9574_n108), .S(
        DP_OP_42J1_122_9574_n110) );
  CMPE42D1 DP_OP_42J1_122_9574_U75 ( .A(DP_OP_42J1_122_9574_n111), .B(
        DP_OP_42J1_122_9574_n216), .C(DP_OP_42J1_122_9574_n107), .CIX(
        DP_OP_42J1_122_9574_n109), .D(DP_OP_42J1_122_9574_n108), .CO(
        DP_OP_42J1_122_9574_n104), .COX(DP_OP_42J1_122_9574_n103), .S(
        DP_OP_42J1_122_9574_n105) );
  CMPE42D1 DP_OP_42J1_122_9574_U72 ( .A(DP_OP_42J1_122_9574_n106), .B(
        DP_OP_42J1_122_9574_n215), .C(DP_OP_42J1_122_9574_n102), .CIX(
        DP_OP_42J1_122_9574_n104), .D(DP_OP_42J1_122_9574_n103), .CO(
        DP_OP_42J1_122_9574_n99), .COX(DP_OP_42J1_122_9574_n98), .S(
        DP_OP_42J1_122_9574_n100) );
  CMPE42D1 DP_OP_42J1_122_9574_U69 ( .A(DP_OP_42J1_122_9574_n101), .B(
        DP_OP_42J1_122_9574_n214), .C(DP_OP_42J1_122_9574_n97), .CIX(
        DP_OP_42J1_122_9574_n99), .D(DP_OP_42J1_122_9574_n98), .CO(
        DP_OP_42J1_122_9574_n94), .COX(DP_OP_42J1_122_9574_n93), .S(
        DP_OP_42J1_122_9574_n95) );
  CMPE42D1 DP_OP_42J1_122_9574_U66 ( .A(DP_OP_42J1_122_9574_n96), .B(
        DP_OP_42J1_122_9574_n213), .C(DP_OP_42J1_122_9574_n92), .CIX(
        DP_OP_42J1_122_9574_n94), .D(DP_OP_42J1_122_9574_n93), .CO(
        DP_OP_42J1_122_9574_n89), .COX(DP_OP_42J1_122_9574_n88), .S(
        DP_OP_42J1_122_9574_n90) );
  CMPE42D1 DP_OP_42J1_122_9574_U63 ( .A(DP_OP_42J1_122_9574_n91), .B(
        DP_OP_42J1_122_9574_n212), .C(DP_OP_42J1_122_9574_n87), .CIX(
        DP_OP_42J1_122_9574_n89), .D(DP_OP_42J1_122_9574_n88), .CO(
        DP_OP_42J1_122_9574_n84), .COX(DP_OP_42J1_122_9574_n83), .S(
        DP_OP_42J1_122_9574_n85) );
  CMPE42D1 DP_OP_42J1_122_9574_U60 ( .A(DP_OP_42J1_122_9574_n86), .B(
        DP_OP_42J1_122_9574_n211), .C(DP_OP_42J1_122_9574_n82), .CIX(
        DP_OP_42J1_122_9574_n84), .D(DP_OP_42J1_122_9574_n83), .CO(
        DP_OP_42J1_122_9574_n79), .COX(DP_OP_42J1_122_9574_n78), .S(
        DP_OP_42J1_122_9574_n80) );
  CMPE42D1 DP_OP_42J1_122_9574_U57 ( .A(DP_OP_42J1_122_9574_n81), .B(
        DP_OP_42J1_122_9574_n210), .C(DP_OP_42J1_122_9574_n77), .CIX(
        DP_OP_42J1_122_9574_n79), .D(DP_OP_42J1_122_9574_n78), .CO(
        DP_OP_42J1_122_9574_n74), .COX(DP_OP_42J1_122_9574_n73), .S(
        DP_OP_42J1_122_9574_n75) );
  CMPE42D1 DP_OP_42J1_122_9574_U54 ( .A(DP_OP_42J1_122_9574_n76), .B(
        DP_OP_42J1_122_9574_n209), .C(DP_OP_42J1_122_9574_n72), .CIX(
        DP_OP_42J1_122_9574_n74), .D(DP_OP_42J1_122_9574_n73), .CO(
        DP_OP_42J1_122_9574_n69), .COX(DP_OP_42J1_122_9574_n68), .S(
        DP_OP_42J1_122_9574_n70) );
  CMPE42D1 DP_OP_42J1_122_9574_U52 ( .A(DP_OP_42J1_122_9574_n71), .B(
        DP_OP_42J1_122_9574_n208), .C(DP_OP_42J1_122_9574_n67), .CIX(
        DP_OP_42J1_122_9574_n69), .D(DP_OP_42J1_122_9574_n68), .CO(
        DP_OP_42J1_122_9574_n64), .COX(DP_OP_42J1_122_9574_n63), .S(
        DP_OP_42J1_122_9574_n65) );
  CMPE42D1 DP_OP_42J1_122_9574_U50 ( .A(DP_OP_42J1_122_9574_n66), .B(
        DP_OP_42J1_122_9574_n207), .C(DP_OP_42J1_122_9574_n62), .CIX(
        DP_OP_42J1_122_9574_n64), .D(DP_OP_42J1_122_9574_n63), .CO(
        DP_OP_42J1_122_9574_n59), .COX(DP_OP_42J1_122_9574_n58), .S(
        DP_OP_42J1_122_9574_n60) );
  CMPE42D1 DP_OP_42J1_122_9574_U48 ( .A(DP_OP_42J1_122_9574_n57), .B(
        DP_OP_42J1_122_9574_n61), .C(DP_OP_42J1_122_9574_n58), .CIX(
        DP_OP_42J1_122_9574_n157), .D(DP_OP_42J1_122_9574_n59), .CO(
        DP_OP_42J1_122_9574_n54), .COX(DP_OP_42J1_122_9574_n53), .S(
        DP_OP_42J1_122_9574_n55) );
  CMPE42D1 DP_OP_42J1_122_9574_U46 ( .A(DP_OP_42J1_122_9574_n52), .B(
        DP_OP_42J1_122_9574_n56), .C(DP_OP_42J1_122_9574_n53), .CIX(
        DP_OP_42J1_122_9574_n156), .D(DP_OP_42J1_122_9574_n54), .CO(
        DP_OP_42J1_122_9574_n49), .COX(DP_OP_42J1_122_9574_n48), .S(
        DP_OP_42J1_122_9574_n50) );
  CMPE42D1 DP_OP_42J1_122_9574_U45 ( .A(DP_OP_42J1_122_9574_n184), .B(
        midpoint_product[6]), .C(DP_OP_42J1_122_9574_n51), .CIX(
        DP_OP_42J1_122_9574_n49), .D(DP_OP_42J1_122_9574_n48), .CO(
        DP_OP_42J1_122_9574_n46), .COX(DP_OP_42J1_122_9574_n45), .S(
        DP_OP_42J1_122_9574_n47) );
  CMPE42D1 DP_OP_42J1_122_9574_U44 ( .A(x_mantissa[20]), .B(
        midpoint_product[7]), .C(DP_OP_42J1_122_9574_n45), .CIX(
        DP_OP_42J1_122_9574_n46), .D(DP_OP_42J1_122_9574_n549), .CO(
        DP_OP_42J1_122_9574_n43), .COX(DP_OP_42J1_122_9574_n42), .S(
        DP_OP_42J1_122_9574_n44) );
  FA1D0 intadd_1_U26 ( .A(DP_OP_42J1_122_9574_n152), .B(intadd_1_B_0_), .CI(
        intadd_1_CI), .CO(intadd_1_n25), .S(plane_exact[0]) );
  FA1D0 intadd_1_U25 ( .A(DP_OP_42J1_122_9574_n145), .B(intadd_1_B_1_), .CI(
        intadd_1_n25), .CO(intadd_1_n24), .S(plane_exact[1]) );
  FA1D0 intadd_1_U24 ( .A(DP_OP_42J1_122_9574_n140), .B(intadd_1_B_2_), .CI(
        intadd_1_n24), .CO(intadd_1_n23), .S(plane_exact[2]) );
  FA1D0 intadd_1_U23 ( .A(DP_OP_42J1_122_9574_n135), .B(intadd_1_B_3_), .CI(
        intadd_1_n23), .CO(intadd_1_n22), .S(plane_exact[3]) );
  FA1D0 intadd_1_U22 ( .A(DP_OP_42J1_122_9574_n130), .B(intadd_1_B_4_), .CI(
        intadd_1_n22), .CO(intadd_1_n21), .S(plane_exact[4]) );
  FA1D0 intadd_1_U21 ( .A(DP_OP_42J1_122_9574_n125), .B(intadd_1_B_5_), .CI(
        intadd_1_n21), .CO(intadd_1_n20), .S(plane_exact[5]) );
  FA1D0 intadd_1_U20 ( .A(DP_OP_42J1_122_9574_n120), .B(intadd_1_B_6_), .CI(
        intadd_1_n20), .CO(intadd_1_n19), .S(plane_exact[6]) );
  FA1D0 intadd_1_U19 ( .A(DP_OP_42J1_122_9574_n115), .B(intadd_1_B_7_), .CI(
        intadd_1_n19), .CO(intadd_1_n18), .S(plane_exact[7]) );
  FA1D0 intadd_1_U18 ( .A(DP_OP_42J1_122_9574_n110), .B(intadd_1_B_8_), .CI(
        intadd_1_n18), .CO(intadd_1_n17), .S(plane_exact[8]) );
  FA1D0 intadd_1_U17 ( .A(DP_OP_42J1_122_9574_n105), .B(intadd_1_B_9_), .CI(
        intadd_1_n17), .CO(intadd_1_n16), .S(plane_exact[9]) );
  FA1D0 intadd_1_U16 ( .A(DP_OP_42J1_122_9574_n100), .B(intadd_1_B_10_), .CI(
        intadd_1_n16), .CO(intadd_1_n15), .S(plane_exact[10]) );
  FA1D0 intadd_1_U15 ( .A(DP_OP_42J1_122_9574_n95), .B(intadd_1_B_11_), .CI(
        intadd_1_n15), .CO(intadd_1_n14), .S(plane_exact[11]) );
  FA1D0 intadd_1_U14 ( .A(DP_OP_42J1_122_9574_n90), .B(intadd_1_B_12_), .CI(
        intadd_1_n14), .CO(intadd_1_n13), .S(plane_exact[12]) );
  FA1D0 intadd_1_U13 ( .A(DP_OP_42J1_122_9574_n85), .B(intadd_1_B_13_), .CI(
        intadd_1_n13), .CO(intadd_1_n12), .S(plane_exact[13]) );
  FA1D0 intadd_1_U12 ( .A(DP_OP_42J1_122_9574_n80), .B(intadd_1_B_14_), .CI(
        intadd_1_n12), .CO(intadd_1_n11), .S(plane_exact[14]) );
  FA1D0 intadd_1_U11 ( .A(DP_OP_42J1_122_9574_n75), .B(intadd_1_B_15_), .CI(
        intadd_1_n11), .CO(intadd_1_n10), .S(plane_exact[15]) );
  FA1D0 intadd_1_U10 ( .A(DP_OP_42J1_122_9574_n70), .B(intadd_1_B_16_), .CI(
        intadd_1_n10), .CO(intadd_1_n9), .S(plane_exact[16]) );
  FA1D0 intadd_1_U9 ( .A(DP_OP_42J1_122_9574_n65), .B(intadd_1_B_17_), .CI(
        intadd_1_n9), .CO(intadd_1_n8), .S(plane_exact[17]) );
  FA1D0 intadd_1_U8 ( .A(DP_OP_42J1_122_9574_n60), .B(intadd_1_B_18_), .CI(
        intadd_1_n8), .CO(intadd_1_n7), .S(plane_exact[18]) );
  FA1D0 intadd_1_U7 ( .A(DP_OP_42J1_122_9574_n55), .B(intadd_1_B_19_), .CI(
        intadd_1_n7), .CO(intadd_1_n6), .S(plane_exact[19]) );
  FA1D0 intadd_1_U6 ( .A(DP_OP_42J1_122_9574_n50), .B(intadd_1_B_20_), .CI(
        intadd_1_n6), .CO(intadd_1_n5), .S(plane_exact[20]) );
  FA1D0 intadd_1_U5 ( .A(DP_OP_42J1_122_9574_n47), .B(DP_OP_42J1_122_9574_n549), .CI(intadd_1_n5), .CO(intadd_1_n4), .S(plane_exact[21]) );
  FA1D0 intadd_1_U4 ( .A(intadd_1_A_22_), .B(DP_OP_42J1_122_9574_n44), .CI(
        intadd_1_n4), .CO(intadd_1_n3), .S(plane_exact[22]) );
  FA1D0 intadd_1_U3 ( .A(DP_OP_42J1_122_9574_n43), .B(intadd_1_B_23_), .CI(
        intadd_1_n3), .CO(intadd_1_n2), .S(plane_exact[23]) );
  FA1D0 intadd_1_U2 ( .A(intadd_1_A_24_), .B(intadd_1_B_24_), .CI(intadd_1_n2), 
        .CO(intadd_1_n1), .S(plane_exact[24]) );
  FA1D0 intadd_2_U19 ( .A(intadd_2_A_0_), .B(intadd_2_B_0_), .CI(intadd_2_CI), 
        .CO(intadd_2_n18), .S(intadd_1_B_0_) );
  FA1D0 intadd_2_U18 ( .A(intadd_2_A_1_), .B(intadd_2_B_1_), .CI(intadd_2_n18), 
        .CO(intadd_2_n17), .S(intadd_1_B_1_) );
  FA1D0 intadd_2_U17 ( .A(intadd_2_A_2_), .B(intadd_2_B_2_), .CI(intadd_2_n17), 
        .CO(intadd_2_n16), .S(intadd_1_B_2_) );
  FA1D0 intadd_2_U16 ( .A(intadd_2_A_3_), .B(intadd_2_B_3_), .CI(intadd_2_n16), 
        .CO(intadd_2_n15), .S(intadd_1_B_3_) );
  FA1D0 intadd_2_U15 ( .A(intadd_2_A_4_), .B(intadd_2_B_4_), .CI(intadd_2_n15), 
        .CO(intadd_2_n14), .S(intadd_1_B_4_) );
  FA1D0 intadd_2_U14 ( .A(intadd_2_A_5_), .B(intadd_2_B_5_), .CI(intadd_2_n14), 
        .CO(intadd_2_n13), .S(intadd_1_B_5_) );
  FA1D0 intadd_2_U13 ( .A(intadd_2_A_6_), .B(intadd_2_B_6_), .CI(intadd_2_n13), 
        .CO(intadd_2_n12), .S(intadd_1_B_6_) );
  FA1D0 intadd_2_U12 ( .A(intadd_2_A_7_), .B(intadd_2_B_7_), .CI(intadd_2_n12), 
        .CO(intadd_2_n11), .S(intadd_1_B_7_) );
  FA1D0 intadd_2_U11 ( .A(intadd_2_A_8_), .B(intadd_2_B_8_), .CI(intadd_2_n11), 
        .CO(intadd_2_n10), .S(intadd_1_B_8_) );
  FA1D0 intadd_2_U10 ( .A(intadd_2_A_9_), .B(intadd_2_B_9_), .CI(intadd_2_n10), 
        .CO(intadd_2_n9), .S(intadd_1_B_9_) );
  FA1D0 intadd_2_U9 ( .A(intadd_2_A_10_), .B(intadd_2_B_10_), .CI(intadd_2_n9), 
        .CO(intadd_2_n8), .S(intadd_1_B_10_) );
  FA1D0 intadd_2_U8 ( .A(intadd_2_A_11_), .B(intadd_2_B_11_), .CI(intadd_2_n8), 
        .CO(intadd_2_n7), .S(intadd_1_B_11_) );
  FA1D0 intadd_2_U7 ( .A(intadd_2_A_12_), .B(intadd_2_B_12_), .CI(intadd_2_n7), 
        .CO(intadd_2_n6), .S(intadd_1_B_12_) );
  FA1D0 intadd_2_U6 ( .A(intadd_2_A_13_), .B(intadd_2_B_13_), .CI(intadd_2_n6), 
        .CO(intadd_2_n5), .S(intadd_1_B_13_) );
  FA1D0 intadd_2_U5 ( .A(intadd_2_A_14_), .B(intadd_2_B_14_), .CI(intadd_2_n5), 
        .CO(intadd_2_n4), .S(intadd_1_B_14_) );
  FA1D0 intadd_2_U4 ( .A(intadd_2_A_15_), .B(intadd_2_B_15_), .CI(intadd_2_n4), 
        .CO(intadd_2_n3), .S(intadd_1_B_15_) );
  FA1D0 intadd_2_U3 ( .A(intadd_2_A_16_), .B(intadd_2_B_16_), .CI(intadd_2_n3), 
        .CO(intadd_2_n2), .S(intadd_1_B_16_) );
  FA1D0 intadd_2_U2 ( .A(intadd_2_A_17_), .B(intadd_2_B_17_), .CI(intadd_2_n2), 
        .CO(intadd_2_n1), .S(intadd_1_B_17_) );
  FA1D0 intadd_3_U5 ( .A(y_mantissa[16]), .B(intadd_3_B_0_), .CI(intadd_3_CI), 
        .CO(intadd_3_n4), .S(intadd_3_SUM_0_) );
  FA1D0 intadd_3_U4 ( .A(intadd_3_A_1_), .B(intadd_3_B_1_), .CI(intadd_3_n4), 
        .CO(intadd_3_n3), .S(intadd_1_B_18_) );
  FA1D0 intadd_3_U3 ( .A(intadd_3_A_2_), .B(intadd_3_B_2_), .CI(intadd_3_n3), 
        .CO(intadd_3_n2), .S(intadd_1_B_19_) );
  FA1D0 intadd_3_U2 ( .A(intadd_3_A_3_), .B(intadd_3_B_3_), .CI(intadd_3_n2), 
        .CO(intadd_3_n1), .S(intadd_3_SUM_3_) );
  OAI22D0 U4 ( .A1(x_mantissa[19]), .A2(n138), .B1(DP_OP_42J1_122_9574_n184), 
        .B2(n137), .ZN(n139) );
  OAI22D0 U5 ( .A1(x_mantissa[19]), .A2(n137), .B1(x_mantissa[18]), .B2(n138), 
        .ZN(DP_OP_42J1_122_9574_n207) );
  MAOI22D0 U6 ( .A1(x_mantissa[19]), .A2(n126), .B1(n126), .B2(x_mantissa[19]), 
        .ZN(n9) );
  OAI32D0 U7 ( .A1(y_mantissa[0]), .A2(y_mantissa[1]), .A3(n118), .B1(n115), 
        .B2(n114), .ZN(n116) );
  OAI21D0 U8 ( .A1(y_mantissa[0]), .A2(n114), .B(n52), .ZN(n50) );
  INVD0 U9 ( .I(y_mantissa[0]), .ZN(n115) );
  INVD0 U10 ( .I(x_mantissa[21]), .ZN(n118) );
  INVD0 U11 ( .I(n118), .ZN(n142) );
  CKND2D0 U12 ( .A1(n142), .A2(x_mantissa[22]), .ZN(n49) );
  CKND2D0 U13 ( .A1(y_mantissa[20]), .A2(n49), .ZN(n119) );
  XOR3D0 U14 ( .A1(y_mantissa[20]), .A2(intadd_3_n1), .A3(n3), .Z(
        DP_OP_42J1_122_9574_n549) );
  INVD0 U15 ( .I(y_mantissa[21]), .ZN(n126) );
  INVD0 U16 ( .I(n126), .ZN(n141) );
  NR2D0 U17 ( .A1(n126), .A2(n118), .ZN(n5) );
  INVD0 U18 ( .I(n5), .ZN(n136) );
  OAI21D0 U19 ( .A1(n142), .A2(n141), .B(n136), .ZN(n59) );
  INVD0 U20 ( .I(n4), .ZN(n135) );
  NR2D0 U21 ( .A1(n135), .A2(n59), .ZN(n47) );
  AOI21D0 U22 ( .A1(n59), .A2(n135), .B(n47), .ZN(n123) );
  ND4D0 U23 ( .A1(n142), .A2(x_mantissa[22]), .A3(n141), .A4(y_mantissa[22]), 
        .ZN(n128) );
  FA1D0 U24 ( .A(x_mantissa[22]), .B(y_mantissa[22]), .CI(n5), .CO(n130), .S(
        n4) );
  CKND2D0 U25 ( .A1(n128), .A2(n130), .ZN(n7) );
  CKND2D0 U26 ( .A1(n7), .A2(n123), .ZN(n6) );
  OAI21D0 U27 ( .A1(n123), .A2(n7), .B(n6), .ZN(midpoint_product[7]) );
  INVD0 U28 ( .I(x_mantissa[20]), .ZN(DP_OP_42J1_122_9574_n184) );
  INVD0 U29 ( .I(x_mantissa[17]), .ZN(n13) );
  AOI22D0 U30 ( .A1(n141), .A2(DP_OP_42J1_122_9574_n184), .B1(x_mantissa[20]), 
        .B2(n126), .ZN(n12) );
  INVD0 U31 ( .I(n8), .ZN(DP_OP_42J1_122_9574_n61) );
  INVD0 U32 ( .I(x_mantissa[15]), .ZN(n16) );
  CKND2D0 U33 ( .A1(n16), .A2(n9), .ZN(DP_OP_42J1_122_9574_n71) );
  OAI21D0 U34 ( .A1(n9), .A2(n16), .B(DP_OP_42J1_122_9574_n71), .ZN(
        DP_OP_42J1_122_9574_n72) );
  FA1D0 U35 ( .A(n13), .B(n59), .CI(n12), .CO(n8), .S(n10) );
  INVD0 U36 ( .I(n10), .ZN(DP_OP_42J1_122_9574_n62) );
  INVD0 U37 ( .I(x_mantissa[14]), .ZN(n18) );
  MAOI22D0 U38 ( .A1(x_mantissa[18]), .A2(n126), .B1(n126), .B2(x_mantissa[18]), .ZN(n11) );
  CKND2D0 U39 ( .A1(n18), .A2(n11), .ZN(DP_OP_42J1_122_9574_n76) );
  OAI21D0 U40 ( .A1(n11), .A2(n18), .B(DP_OP_42J1_122_9574_n76), .ZN(
        DP_OP_42J1_122_9574_n77) );
  INVD0 U41 ( .I(x_mantissa[16]), .ZN(n60) );
  INVD0 U42 ( .I(n12), .ZN(n61) );
  NR2D0 U43 ( .A1(n60), .A2(n61), .ZN(DP_OP_42J1_122_9574_n66) );
  OR2D0 U44 ( .A1(y_mantissa[22]), .A2(n141), .Z(n138) );
  CKND2D0 U45 ( .A1(n141), .A2(y_mantissa[22]), .ZN(n131) );
  CKND2D0 U46 ( .A1(n138), .A2(n131), .ZN(n137) );
  OAI22D0 U47 ( .A1(x_mantissa[18]), .A2(n137), .B1(x_mantissa[17]), .B2(n138), 
        .ZN(DP_OP_42J1_122_9574_n208) );
  INVD0 U48 ( .I(x_mantissa[13]), .ZN(n20) );
  AOI22D0 U49 ( .A1(n141), .A2(n13), .B1(x_mantissa[17]), .B2(n126), .ZN(n14)
         );
  CKND2D0 U50 ( .A1(n20), .A2(n14), .ZN(DP_OP_42J1_122_9574_n81) );
  OAI21D0 U51 ( .A1(n14), .A2(n20), .B(DP_OP_42J1_122_9574_n81), .ZN(
        DP_OP_42J1_122_9574_n82) );
  OAI22D0 U52 ( .A1(x_mantissa[17]), .A2(n137), .B1(x_mantissa[16]), .B2(n138), 
        .ZN(DP_OP_42J1_122_9574_n209) );
  INVD0 U53 ( .I(x_mantissa[12]), .ZN(n22) );
  AOI22D0 U54 ( .A1(n141), .A2(n60), .B1(x_mantissa[16]), .B2(n126), .ZN(n15)
         );
  CKND2D0 U55 ( .A1(n22), .A2(n15), .ZN(DP_OP_42J1_122_9574_n86) );
  OAI21D0 U56 ( .A1(n15), .A2(n22), .B(DP_OP_42J1_122_9574_n86), .ZN(
        DP_OP_42J1_122_9574_n87) );
  OAI22D0 U57 ( .A1(x_mantissa[16]), .A2(n137), .B1(x_mantissa[15]), .B2(n138), 
        .ZN(DP_OP_42J1_122_9574_n210) );
  INVD0 U58 ( .I(x_mantissa[11]), .ZN(n24) );
  AOI22D0 U59 ( .A1(n141), .A2(n16), .B1(x_mantissa[15]), .B2(n126), .ZN(n17)
         );
  CKND2D0 U60 ( .A1(n24), .A2(n17), .ZN(DP_OP_42J1_122_9574_n91) );
  OAI21D0 U61 ( .A1(n17), .A2(n24), .B(DP_OP_42J1_122_9574_n91), .ZN(
        DP_OP_42J1_122_9574_n92) );
  OAI22D0 U62 ( .A1(x_mantissa[15]), .A2(n137), .B1(x_mantissa[14]), .B2(n138), 
        .ZN(DP_OP_42J1_122_9574_n211) );
  INVD0 U63 ( .I(x_mantissa[10]), .ZN(n26) );
  AOI22D0 U64 ( .A1(n141), .A2(n18), .B1(x_mantissa[14]), .B2(n126), .ZN(n19)
         );
  CKND2D0 U65 ( .A1(n26), .A2(n19), .ZN(DP_OP_42J1_122_9574_n96) );
  OAI21D0 U66 ( .A1(n19), .A2(n26), .B(DP_OP_42J1_122_9574_n96), .ZN(
        DP_OP_42J1_122_9574_n97) );
  OAI22D0 U67 ( .A1(x_mantissa[14]), .A2(n137), .B1(x_mantissa[13]), .B2(n138), 
        .ZN(DP_OP_42J1_122_9574_n212) );
  INVD0 U68 ( .I(x_mantissa[9]), .ZN(n28) );
  AOI22D0 U69 ( .A1(n141), .A2(n20), .B1(x_mantissa[13]), .B2(n126), .ZN(n21)
         );
  CKND2D0 U70 ( .A1(n28), .A2(n21), .ZN(DP_OP_42J1_122_9574_n101) );
  OAI21D0 U71 ( .A1(n21), .A2(n28), .B(DP_OP_42J1_122_9574_n101), .ZN(
        DP_OP_42J1_122_9574_n102) );
  OAI22D0 U72 ( .A1(x_mantissa[13]), .A2(n137), .B1(x_mantissa[12]), .B2(n138), 
        .ZN(DP_OP_42J1_122_9574_n213) );
  INVD0 U73 ( .I(x_mantissa[8]), .ZN(n30) );
  AOI22D0 U74 ( .A1(n141), .A2(n22), .B1(x_mantissa[12]), .B2(n126), .ZN(n23)
         );
  CKND2D0 U75 ( .A1(n30), .A2(n23), .ZN(DP_OP_42J1_122_9574_n106) );
  OAI21D0 U76 ( .A1(n23), .A2(n30), .B(DP_OP_42J1_122_9574_n106), .ZN(
        DP_OP_42J1_122_9574_n107) );
  OAI22D0 U77 ( .A1(x_mantissa[12]), .A2(n137), .B1(x_mantissa[11]), .B2(n138), 
        .ZN(DP_OP_42J1_122_9574_n214) );
  INVD0 U78 ( .I(x_mantissa[7]), .ZN(n32) );
  AOI22D0 U79 ( .A1(n141), .A2(n24), .B1(x_mantissa[11]), .B2(n126), .ZN(n25)
         );
  CKND2D0 U80 ( .A1(n32), .A2(n25), .ZN(DP_OP_42J1_122_9574_n111) );
  OAI21D0 U81 ( .A1(n25), .A2(n32), .B(DP_OP_42J1_122_9574_n111), .ZN(
        DP_OP_42J1_122_9574_n112) );
  OAI22D0 U82 ( .A1(x_mantissa[11]), .A2(n137), .B1(x_mantissa[10]), .B2(n138), 
        .ZN(DP_OP_42J1_122_9574_n215) );
  INVD0 U83 ( .I(x_mantissa[6]), .ZN(n34) );
  AOI22D0 U84 ( .A1(n141), .A2(n26), .B1(x_mantissa[10]), .B2(n126), .ZN(n27)
         );
  CKND2D0 U85 ( .A1(n34), .A2(n27), .ZN(DP_OP_42J1_122_9574_n116) );
  OAI21D0 U86 ( .A1(n27), .A2(n34), .B(DP_OP_42J1_122_9574_n116), .ZN(
        DP_OP_42J1_122_9574_n117) );
  OAI22D0 U87 ( .A1(x_mantissa[10]), .A2(n137), .B1(x_mantissa[9]), .B2(n138), 
        .ZN(DP_OP_42J1_122_9574_n216) );
  INVD0 U88 ( .I(x_mantissa[5]), .ZN(n38) );
  AOI22D0 U89 ( .A1(n141), .A2(n28), .B1(x_mantissa[9]), .B2(n126), .ZN(n29)
         );
  CKND2D0 U90 ( .A1(n38), .A2(n29), .ZN(DP_OP_42J1_122_9574_n121) );
  OAI21D0 U91 ( .A1(n29), .A2(n38), .B(DP_OP_42J1_122_9574_n121), .ZN(
        DP_OP_42J1_122_9574_n122) );
  OAI22D0 U92 ( .A1(x_mantissa[9]), .A2(n137), .B1(x_mantissa[8]), .B2(n138), 
        .ZN(DP_OP_42J1_122_9574_n217) );
  INVD0 U93 ( .I(x_mantissa[4]), .ZN(n36) );
  AOI22D0 U94 ( .A1(n141), .A2(n30), .B1(x_mantissa[8]), .B2(n126), .ZN(n31)
         );
  CKND2D0 U95 ( .A1(n36), .A2(n31), .ZN(DP_OP_42J1_122_9574_n126) );
  OAI21D0 U96 ( .A1(n31), .A2(n36), .B(DP_OP_42J1_122_9574_n126), .ZN(
        DP_OP_42J1_122_9574_n127) );
  OAI22D0 U97 ( .A1(x_mantissa[8]), .A2(n137), .B1(x_mantissa[7]), .B2(n138), 
        .ZN(DP_OP_42J1_122_9574_n218) );
  INVD0 U98 ( .I(x_mantissa[3]), .ZN(n37) );
  AOI22D0 U99 ( .A1(n141), .A2(n32), .B1(x_mantissa[7]), .B2(n126), .ZN(n33)
         );
  CKND2D0 U100 ( .A1(n37), .A2(n33), .ZN(DP_OP_42J1_122_9574_n131) );
  OAI21D0 U101 ( .A1(n33), .A2(n37), .B(DP_OP_42J1_122_9574_n131), .ZN(
        DP_OP_42J1_122_9574_n132) );
  OAI22D0 U102 ( .A1(x_mantissa[7]), .A2(n137), .B1(x_mantissa[6]), .B2(n138), 
        .ZN(DP_OP_42J1_122_9574_n219) );
  INVD0 U103 ( .I(x_mantissa[2]), .ZN(n122) );
  AOI22D0 U104 ( .A1(n141), .A2(n34), .B1(x_mantissa[6]), .B2(n126), .ZN(n35)
         );
  CKND2D0 U105 ( .A1(n122), .A2(n35), .ZN(DP_OP_42J1_122_9574_n136) );
  OAI21D0 U106 ( .A1(n35), .A2(n122), .B(DP_OP_42J1_122_9574_n136), .ZN(
        DP_OP_42J1_122_9574_n137) );
  OAI22D0 U107 ( .A1(x_mantissa[6]), .A2(n137), .B1(x_mantissa[5]), .B2(n138), 
        .ZN(DP_OP_42J1_122_9574_n220) );
  AOI22D0 U108 ( .A1(n141), .A2(x_mantissa[4]), .B1(n36), .B2(n126), .ZN(
        DP_OP_42J1_122_9574_n244) );
  AOI22D0 U109 ( .A1(n141), .A2(x_mantissa[3]), .B1(n37), .B2(n126), .ZN(
        DP_OP_42J1_122_9574_n245) );
  OAI22D0 U110 ( .A1(x_mantissa[5]), .A2(n137), .B1(x_mantissa[4]), .B2(n138), 
        .ZN(DP_OP_42J1_122_9574_n221) );
  OAI22D0 U111 ( .A1(x_mantissa[4]), .A2(n137), .B1(x_mantissa[3]), .B2(n138), 
        .ZN(DP_OP_42J1_122_9574_n222) );
  OAI22D0 U112 ( .A1(x_mantissa[0]), .A2(n138), .B1(x_mantissa[1]), .B2(n137), 
        .ZN(DP_OP_42J1_122_9574_n225) );
  OAI22D0 U113 ( .A1(x_mantissa[2]), .A2(n138), .B1(x_mantissa[3]), .B2(n137), 
        .ZN(DP_OP_42J1_122_9574_n223) );
  OAI21D0 U114 ( .A1(x_mantissa[0]), .A2(n137), .B(n138), .ZN(
        DP_OP_42J1_122_9574_n181) );
  INVD0 U115 ( .I(x_mantissa[1]), .ZN(n43) );
  CKAN2D0 U116 ( .A1(y_rounding_error[0]), .A2(x_rounding_error[1]), .Z(n42)
         );
  AOI22D0 U117 ( .A1(n141), .A2(n38), .B1(x_mantissa[5]), .B2(n126), .ZN(n41)
         );
  INVD0 U118 ( .I(n39), .ZN(DP_OP_42J1_122_9574_n141) );
  INVD0 U119 ( .I(intadd_1_B_19_), .ZN(DP_OP_42J1_122_9574_n156) );
  INVD0 U120 ( .I(x_rounding_error[0]), .ZN(DP_OP_42J1_122_9574_n178) );
  OAI22D0 U121 ( .A1(x_mantissa[1]), .A2(n138), .B1(x_mantissa[2]), .B2(n137), 
        .ZN(DP_OP_42J1_122_9574_n224) );
  INVD0 U122 ( .I(x_mantissa[0]), .ZN(n120) );
  IAO21D0 U123 ( .A1(y_rounding_error[0]), .A2(x_rounding_error[1]), .B(n42), 
        .ZN(n45) );
  INVD0 U124 ( .I(n40), .ZN(DP_OP_42J1_122_9574_n147) );
  FA1D0 U125 ( .A(n43), .B(n42), .CI(n41), .CO(n39), .S(n44) );
  INVD0 U126 ( .I(n44), .ZN(DP_OP_42J1_122_9574_n142) );
  FA1D0 U127 ( .A(y_rounding_error[1]), .B(n120), .CI(n45), .CO(n46), .S(n40)
         );
  INVD0 U128 ( .I(n46), .ZN(DP_OP_42J1_122_9574_n146) );
  INVD0 U129 ( .I(intadd_1_B_18_), .ZN(DP_OP_42J1_122_9574_n157) );
  NR2D0 U130 ( .A1(n130), .A2(n47), .ZN(intadd_1_B_24_) );
  INVD0 U131 ( .I(intadd_1_B_24_), .ZN(n48) );
  NR2D0 U132 ( .A1(n48), .A2(intadd_1_n1), .ZN(plane_exact[26]) );
  AO21D0 U133 ( .A1(intadd_1_n1), .A2(n48), .B(plane_exact[26]), .Z(
        plane_exact[25]) );
  INVD0 U134 ( .I(intadd_3_SUM_3_), .ZN(intadd_1_B_20_) );
  INVD0 U135 ( .I(intadd_2_n1), .ZN(intadd_3_B_1_) );
  NR2XD0 U136 ( .A1(n142), .A2(x_mantissa[22]), .ZN(n110) );
  INVD0 U137 ( .I(n110), .ZN(n52) );
  CKND2D0 U138 ( .A1(n52), .A2(n49), .ZN(n114) );
  INVD0 U139 ( .I(n114), .ZN(n108) );
  INVD0 U140 ( .I(y_mantissa[1]), .ZN(n109) );
  AOI22D0 U141 ( .A1(n110), .A2(n115), .B1(n108), .B2(n109), .ZN(intadd_2_B_0_) );
  INVD0 U142 ( .I(y_mantissa[3]), .ZN(n104) );
  AOI22D0 U143 ( .A1(n142), .A2(y_mantissa[3]), .B1(n104), .B2(n118), .ZN(n51)
         );
  CKND2D0 U144 ( .A1(n51), .A2(n50), .ZN(intadd_2_B_1_) );
  OAI21D0 U145 ( .A1(n51), .A2(n50), .B(intadd_2_B_1_), .ZN(intadd_2_A_0_) );
  INVD0 U146 ( .I(intadd_3_SUM_0_), .ZN(intadd_2_A_17_) );
  OAI22D0 U147 ( .A1(y_mantissa[17]), .A2(n52), .B1(y_mantissa[18]), .B2(n114), 
        .ZN(intadd_3_CI) );
  INVD0 U148 ( .I(y_mantissa[20]), .ZN(intadd_1_A_22_) );
  AOI22D0 U149 ( .A1(n142), .A2(intadd_1_A_22_), .B1(y_mantissa[20]), .B2(n118), .ZN(intadd_3_B_0_) );
  INVD0 U150 ( .I(y_mantissa[18]), .ZN(n65) );
  INVD0 U151 ( .I(y_mantissa[19]), .ZN(n62) );
  AOI22D0 U152 ( .A1(n110), .A2(n65), .B1(n108), .B2(n62), .ZN(n55) );
  INVD0 U153 ( .I(n53), .ZN(intadd_3_A_1_) );
  AOI22D0 U154 ( .A1(n110), .A2(n62), .B1(n108), .B2(y_mantissa[20]), .ZN(n57)
         );
  INVD0 U155 ( .I(n54), .ZN(intadd_3_B_2_) );
  FA1D0 U156 ( .A(y_mantissa[17]), .B(n55), .CI(intadd_3_B_0_), .CO(n56), .S(
        n53) );
  INVD0 U157 ( .I(n56), .ZN(intadd_3_A_2_) );
  FA1D0 U158 ( .A(n65), .B(y_mantissa[17]), .CI(n57), .CO(n58), .S(n54) );
  INVD0 U159 ( .I(n58), .ZN(intadd_3_B_3_) );
  INR2D0 U160 ( .A1(n59), .B1(n130), .ZN(midpoint_product[6]) );
  AOI21D0 U161 ( .A1(n61), .A2(n60), .B(DP_OP_42J1_122_9574_n66), .ZN(
        DP_OP_42J1_122_9574_n67) );
  INVD0 U162 ( .I(y_mantissa[15]), .ZN(n74) );
  INVD0 U163 ( .I(y_mantissa[16]), .ZN(n71) );
  INVD0 U164 ( .I(y_mantissa[17]), .ZN(n68) );
  AOI22D0 U165 ( .A1(n110), .A2(n71), .B1(n108), .B2(n68), .ZN(n64) );
  AOI22D0 U166 ( .A1(n142), .A2(n62), .B1(y_mantissa[19]), .B2(n118), .ZN(n63)
         );
  FA1D0 U167 ( .A(n74), .B(n64), .CI(n63), .CO(intadd_2_B_17_), .S(
        intadd_2_A_16_) );
  INVD0 U168 ( .I(y_mantissa[14]), .ZN(n77) );
  AOI22D0 U169 ( .A1(n110), .A2(n74), .B1(n108), .B2(n71), .ZN(n67) );
  AOI22D0 U170 ( .A1(n142), .A2(n65), .B1(y_mantissa[18]), .B2(n118), .ZN(n66)
         );
  FA1D0 U171 ( .A(n77), .B(n67), .CI(n66), .CO(intadd_2_B_16_), .S(
        intadd_2_A_15_) );
  INVD0 U172 ( .I(y_mantissa[13]), .ZN(n80) );
  AOI22D0 U173 ( .A1(n110), .A2(n77), .B1(n108), .B2(n74), .ZN(n70) );
  AOI22D0 U174 ( .A1(n142), .A2(n68), .B1(y_mantissa[17]), .B2(n118), .ZN(n69)
         );
  FA1D0 U175 ( .A(n80), .B(n70), .CI(n69), .CO(intadd_2_B_15_), .S(
        intadd_2_A_14_) );
  INVD0 U176 ( .I(y_mantissa[12]), .ZN(n83) );
  AOI22D0 U177 ( .A1(n110), .A2(n80), .B1(n108), .B2(n77), .ZN(n73) );
  AOI22D0 U178 ( .A1(n142), .A2(n71), .B1(y_mantissa[16]), .B2(n118), .ZN(n72)
         );
  FA1D0 U179 ( .A(n83), .B(n73), .CI(n72), .CO(intadd_2_B_14_), .S(
        intadd_2_A_13_) );
  INVD0 U180 ( .I(y_mantissa[11]), .ZN(n86) );
  AOI22D0 U181 ( .A1(n110), .A2(n83), .B1(n108), .B2(n80), .ZN(n76) );
  AOI22D0 U182 ( .A1(n142), .A2(n74), .B1(y_mantissa[15]), .B2(n118), .ZN(n75)
         );
  FA1D0 U183 ( .A(n86), .B(n76), .CI(n75), .CO(intadd_2_B_13_), .S(
        intadd_2_A_12_) );
  INVD0 U184 ( .I(y_mantissa[10]), .ZN(n89) );
  AOI22D0 U185 ( .A1(n110), .A2(n86), .B1(n108), .B2(n83), .ZN(n79) );
  AOI22D0 U186 ( .A1(n142), .A2(n77), .B1(y_mantissa[14]), .B2(n118), .ZN(n78)
         );
  FA1D0 U187 ( .A(n89), .B(n79), .CI(n78), .CO(intadd_2_B_12_), .S(
        intadd_2_A_11_) );
  INVD0 U188 ( .I(y_mantissa[9]), .ZN(n92) );
  AOI22D0 U189 ( .A1(n110), .A2(n89), .B1(n108), .B2(n86), .ZN(n82) );
  AOI22D0 U190 ( .A1(n142), .A2(n80), .B1(y_mantissa[13]), .B2(n118), .ZN(n81)
         );
  FA1D0 U191 ( .A(n92), .B(n82), .CI(n81), .CO(intadd_2_B_11_), .S(
        intadd_2_A_10_) );
  INVD0 U192 ( .I(y_mantissa[8]), .ZN(n95) );
  AOI22D0 U193 ( .A1(n110), .A2(n92), .B1(n108), .B2(n89), .ZN(n85) );
  AOI22D0 U194 ( .A1(n142), .A2(n83), .B1(y_mantissa[12]), .B2(n118), .ZN(n84)
         );
  FA1D0 U195 ( .A(n95), .B(n85), .CI(n84), .CO(intadd_2_B_10_), .S(
        intadd_2_A_9_) );
  INVD0 U196 ( .I(y_mantissa[7]), .ZN(n98) );
  AOI22D0 U197 ( .A1(n110), .A2(n95), .B1(n108), .B2(n92), .ZN(n88) );
  AOI22D0 U198 ( .A1(n142), .A2(n86), .B1(y_mantissa[11]), .B2(n118), .ZN(n87)
         );
  FA1D0 U199 ( .A(n98), .B(n88), .CI(n87), .CO(intadd_2_B_9_), .S(
        intadd_2_A_8_) );
  INVD0 U200 ( .I(y_mantissa[6]), .ZN(n101) );
  AOI22D0 U201 ( .A1(n110), .A2(n98), .B1(n108), .B2(n95), .ZN(n91) );
  AOI22D0 U202 ( .A1(n142), .A2(n89), .B1(y_mantissa[10]), .B2(n118), .ZN(n90)
         );
  FA1D0 U203 ( .A(n101), .B(n91), .CI(n90), .CO(intadd_2_B_8_), .S(
        intadd_2_A_7_) );
  INVD0 U204 ( .I(y_mantissa[5]), .ZN(n105) );
  AOI22D0 U205 ( .A1(n110), .A2(n101), .B1(n108), .B2(n98), .ZN(n94) );
  AOI22D0 U206 ( .A1(n142), .A2(n92), .B1(y_mantissa[9]), .B2(n118), .ZN(n93)
         );
  FA1D0 U207 ( .A(n105), .B(n94), .CI(n93), .CO(intadd_2_B_7_), .S(
        intadd_2_A_6_) );
  INVD0 U208 ( .I(y_mantissa[4]), .ZN(n111) );
  AOI22D0 U209 ( .A1(n110), .A2(n105), .B1(n108), .B2(n101), .ZN(n97) );
  AOI22D0 U210 ( .A1(n142), .A2(n95), .B1(y_mantissa[8]), .B2(n118), .ZN(n96)
         );
  FA1D0 U211 ( .A(n111), .B(n97), .CI(n96), .CO(intadd_2_B_6_), .S(
        intadd_2_A_5_) );
  AOI22D0 U212 ( .A1(n110), .A2(n111), .B1(n108), .B2(n105), .ZN(n100) );
  AOI22D0 U213 ( .A1(n142), .A2(n98), .B1(y_mantissa[7]), .B2(n118), .ZN(n99)
         );
  FA1D0 U214 ( .A(n104), .B(n100), .CI(n99), .CO(intadd_2_B_5_), .S(
        intadd_2_A_4_) );
  INVD0 U215 ( .I(y_mantissa[2]), .ZN(n117) );
  AOI22D0 U216 ( .A1(n110), .A2(n104), .B1(n108), .B2(n111), .ZN(n103) );
  AOI22D0 U217 ( .A1(n142), .A2(n101), .B1(y_mantissa[6]), .B2(n118), .ZN(n102) );
  FA1D0 U218 ( .A(n117), .B(n103), .CI(n102), .CO(intadd_2_B_4_), .S(
        intadd_2_A_3_) );
  AOI22D0 U219 ( .A1(n110), .A2(n117), .B1(n108), .B2(n104), .ZN(n107) );
  AOI22D0 U220 ( .A1(n142), .A2(n105), .B1(y_mantissa[5]), .B2(n118), .ZN(n106) );
  FA1D0 U221 ( .A(n109), .B(n107), .CI(n106), .CO(intadd_2_B_3_), .S(
        intadd_2_A_2_) );
  AOI22D0 U222 ( .A1(n110), .A2(n109), .B1(n108), .B2(n117), .ZN(n113) );
  AOI22D0 U223 ( .A1(n142), .A2(n111), .B1(y_mantissa[4]), .B2(n118), .ZN(n112) );
  FA1D0 U224 ( .A(n115), .B(n113), .CI(n112), .CO(intadd_2_B_2_), .S(
        intadd_2_A_1_) );
  OAI221D0 U225 ( .A1(n142), .A2(y_mantissa[2]), .B1(n118), .B2(n117), .C(n116), .ZN(intadd_2_CI) );
  FA1D0 U226 ( .A(y_mantissa[17]), .B(y_mantissa[19]), .CI(n119), .CO(n3), .S(
        intadd_3_A_3_) );
  OA32D0 U227 ( .A1(n126), .A2(x_mantissa[0]), .A3(x_mantissa[1]), .B1(n120), 
        .B2(n137), .Z(n121) );
  AOI221D0 U228 ( .A1(n141), .A2(x_mantissa[2]), .B1(n126), .B2(n122), .C(n121), .ZN(intadd_1_CI) );
  INVD0 U229 ( .I(DP_OP_42J1_122_9574_n549), .ZN(n125) );
  OR2D0 U230 ( .A1(n123), .A2(intadd_1_B_24_), .Z(n124) );
  FA1D0 U231 ( .A(DP_OP_42J1_122_9574_n42), .B(n125), .CI(n124), .CO(
        intadd_1_A_24_), .S(intadd_1_B_23_) );
  NR2D0 U232 ( .A1(n135), .A2(n136), .ZN(n134) );
  INR2D0 U233 ( .A1(x_mantissa[22]), .B1(n126), .ZN(n127) );
  AOI32D0 U234 ( .A1(y_mantissa[22]), .A2(n128), .A3(n142), .B1(n127), .B2(
        n128), .ZN(n129) );
  XNR3D0 U235 ( .A1(n130), .A2(n134), .A3(n129), .ZN(n133) );
  CKND2D0 U236 ( .A1(x_mantissa[20]), .A2(n131), .ZN(n132) );
  FA1D0 U237 ( .A(x_mantissa[19]), .B(n133), .CI(n132), .CO(
        DP_OP_42J1_122_9574_n51), .S(DP_OP_42J1_122_9574_n52) );
  AOI21D0 U238 ( .A1(n136), .A2(n135), .B(n134), .ZN(n140) );
  FA1D0 U239 ( .A(x_mantissa[18]), .B(n140), .CI(n139), .CO(
        DP_OP_42J1_122_9574_n56), .S(DP_OP_42J1_122_9574_n57) );
endmodule


module oadm_multilevel_opt_FIXED_LEVEL2_FP_STYLE1 ( x, y, level, divide_mode, 
        result );
  input [31:0] x;
  input [31:0] y;
  input [1:0] level;
  output [31:0] result;
  input divide_mode;
  wire   N31, N32, N33, N34, N35, N36, N37, C6_DATA2_0, C6_DATA2_1, C6_DATA2_2,
         C6_DATA2_3, C6_DATA2_4, C6_DATA2_5, C6_DATA2_6, mult_x_3_n233,
         mult_x_3_n232, mult_x_3_n231, mult_x_3_n230, mult_x_3_n229,
         mult_x_3_n228, mult_x_3_n227, mult_x_3_n226, mult_x_3_n225,
         mult_x_3_n224, mult_x_3_n223, mult_x_3_n222, mult_x_3_n221,
         mult_x_3_n220, mult_x_3_n219, mult_x_3_n218, mult_x_3_n217,
         mult_x_3_n216, mult_x_3_n215, mult_x_3_n214, mult_x_3_n213,
         mult_x_3_n212, mult_x_3_n207, mult_x_3_n206, mult_x_3_n205,
         mult_x_3_n204, mult_x_3_n203, mult_x_3_n202, mult_x_3_n201,
         mult_x_3_n200, mult_x_3_n199, mult_x_3_n198, mult_x_3_n197,
         mult_x_3_n196, mult_x_3_n195, mult_x_3_n194, mult_x_3_n193,
         mult_x_3_n192, mult_x_3_n191, mult_x_3_n190, mult_x_3_n189,
         mult_x_3_n188, mult_x_3_n187, mult_x_3_n183, mult_x_3_n182,
         mult_x_3_n181, mult_x_3_n180, mult_x_3_n179, mult_x_3_n178,
         mult_x_3_n177, mult_x_3_n176, mult_x_3_n175, mult_x_3_n174,
         mult_x_3_n173, mult_x_3_n172, mult_x_3_n171, mult_x_3_n170,
         mult_x_3_n169, mult_x_3_n168, mult_x_3_n167, mult_x_3_n166,
         mult_x_3_n165, mult_x_3_n164, mult_x_3_n163, mult_x_3_n162,
         mult_x_3_n161, mult_x_3_n160, mult_x_3_n157, mult_x_3_n156,
         mult_x_3_n155, mult_x_3_n154, mult_x_3_n153, mult_x_3_n152,
         mult_x_3_n151, mult_x_3_n150, mult_x_3_n149, mult_x_3_n148,
         mult_x_3_n147, mult_x_3_n146, mult_x_3_n145, mult_x_3_n144,
         mult_x_3_n143, mult_x_3_n142, mult_x_3_n141, mult_x_3_n140,
         mult_x_3_n139, mult_x_3_n138, mult_x_3_n137, mult_x_3_n136,
         mult_x_3_n135, mult_x_3_n134, mult_x_3_n128, mult_x_3_n125,
         mult_x_3_n124, mult_x_3_n123, mult_x_3_n122, mult_x_3_n121,
         mult_x_3_n120, mult_x_3_n119, mult_x_3_n118, mult_x_3_n117,
         mult_x_3_n116, mult_x_3_n115, mult_x_3_n114, mult_x_3_n113,
         mult_x_3_n112, mult_x_3_n111, mult_x_3_n110, mult_x_3_n109,
         mult_x_3_n108, mult_x_3_n107, mult_x_3_n106, mult_x_3_n105,
         mult_x_3_n104, mult_x_3_n103, mult_x_3_n102, mult_x_3_n101,
         mult_x_3_n100, mult_x_3_n99, mult_x_3_n98, mult_x_3_n97, mult_x_3_n96,
         mult_x_3_n95, mult_x_3_n94, mult_x_3_n93, mult_x_3_n92, mult_x_3_n91,
         mult_x_3_n90, mult_x_3_n89, mult_x_3_n88, mult_x_3_n87, mult_x_3_n86,
         mult_x_3_n85, mult_x_3_n84, mult_x_3_n83, mult_x_3_n82, mult_x_3_n81,
         mult_x_3_n80, mult_x_3_n79, mult_x_3_n78, mult_x_3_n77, mult_x_3_n76,
         mult_x_3_n75, mult_x_3_n74, mult_x_3_n73, mult_x_3_n72, mult_x_3_n71,
         mult_x_3_n70, mult_x_3_n69, mult_x_3_n68, mult_x_3_n67, mult_x_3_n66,
         mult_x_3_n65, mult_x_3_n64, mult_x_3_n63, mult_x_3_n62, mult_x_3_n61,
         mult_x_3_n60, mult_x_3_n59, mult_x_3_n58, mult_x_3_n57, mult_x_3_n56,
         mult_x_3_n55, mult_x_3_n54, mult_x_3_n53, mult_x_3_n52, mult_x_3_n51,
         mult_x_3_n50, C1_Z_0, DP_OP_44J1_125_8301_n27,
         DP_OP_44J1_125_8301_n26, DP_OP_44J1_125_8301_n25,
         DP_OP_44J1_125_8301_n24, DP_OP_44J1_125_8301_n23,
         DP_OP_44J1_125_8301_n22, DP_OP_44J1_125_8301_n21,
         DP_OP_44J1_125_8301_n20, DP_OP_44J1_125_8301_n19,
         DP_OP_44J1_125_8301_n18, DP_OP_44J1_125_8301_n17,
         DP_OP_44J1_125_8301_n16, DP_OP_44J1_125_8301_n15,
         DP_OP_44J1_125_8301_n14, DP_OP_44J1_125_8301_n12,
         DP_OP_44J1_125_8301_n8, DP_OP_44J1_125_8301_n7,
         DP_OP_44J1_125_8301_n6, DP_OP_44J1_125_8301_n5,
         DP_OP_44J1_125_8301_n4, DP_OP_44J1_125_8301_n3,
         DP_OP_44J1_125_8301_n2, intadd_0_B_23_, intadd_0_CI, intadd_0_SUM_23_,
         intadd_0_SUM_22_, intadd_0_SUM_21_, intadd_0_SUM_20_,
         intadd_0_SUM_19_, intadd_0_SUM_18_, intadd_0_SUM_17_,
         intadd_0_SUM_16_, intadd_0_SUM_15_, intadd_0_SUM_14_,
         intadd_0_SUM_13_, intadd_0_SUM_12_, intadd_0_SUM_11_,
         intadd_0_SUM_10_, intadd_0_SUM_9_, intadd_0_SUM_8_, intadd_0_SUM_7_,
         intadd_0_SUM_6_, intadd_0_SUM_5_, intadd_0_SUM_4_, intadd_0_SUM_3_,
         intadd_0_SUM_2_, intadd_0_SUM_1_, intadd_0_SUM_0_, intadd_0_n24,
         intadd_0_n23, intadd_0_n22, intadd_0_n21, intadd_0_n20, intadd_0_n19,
         intadd_0_n18, intadd_0_n17, intadd_0_n16, intadd_0_n15, intadd_0_n14,
         intadd_0_n13, intadd_0_n12, intadd_0_n11, intadd_0_n10, intadd_0_n9,
         intadd_0_n8, intadd_0_n7, intadd_0_n6, intadd_0_n5, intadd_0_n4,
         intadd_0_n3, intadd_0_n2, intadd_0_n1, n26, n27, n28, n29, n30, n310,
         n320, n330, n340, n350, n360, n370, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136;
  wire   [26:0] plane_full;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1;

  oadm_fixed_plane_centered_LEVEL2 fixed_centered_plane_plane ( .x_mantissa({
        1'b0, x[22:0]}), .y_mantissa({1'b0, y[22:0]}), .divide_mode(1'b0), 
        .plane_exact({SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        plane_full}) );
  CMPE42D1 mult_x_3_U74 ( .A(mult_x_3_n207), .B(mult_x_3_n233), .C(
        mult_x_3_n157), .CIX(mult_x_3_n183), .D(mult_x_3_n128), .CO(
        mult_x_3_n124), .COX(mult_x_3_n123), .S(mult_x_3_n125) );
  CMPE42D1 mult_x_3_U73 ( .A(mult_x_3_n206), .B(mult_x_3_n232), .C(
        mult_x_3_n156), .CIX(mult_x_3_n123), .D(mult_x_3_n182), .CO(
        mult_x_3_n121), .COX(mult_x_3_n120), .S(mult_x_3_n122) );
  CMPE42D1 mult_x_3_U72 ( .A(mult_x_3_n205), .B(mult_x_3_n231), .C(
        mult_x_3_n155), .CIX(mult_x_3_n120), .D(mult_x_3_n181), .CO(
        mult_x_3_n118), .COX(mult_x_3_n117), .S(mult_x_3_n119) );
  CMPE42D1 mult_x_3_U71 ( .A(mult_x_3_n204), .B(mult_x_3_n230), .C(
        mult_x_3_n154), .CIX(mult_x_3_n117), .D(mult_x_3_n180), .CO(
        mult_x_3_n115), .COX(mult_x_3_n114), .S(mult_x_3_n116) );
  CMPE42D1 mult_x_3_U70 ( .A(mult_x_3_n203), .B(mult_x_3_n229), .C(
        mult_x_3_n153), .CIX(mult_x_3_n114), .D(mult_x_3_n179), .CO(
        mult_x_3_n112), .COX(mult_x_3_n111), .S(mult_x_3_n113) );
  CMPE42D1 mult_x_3_U69 ( .A(mult_x_3_n202), .B(mult_x_3_n228), .C(
        mult_x_3_n152), .CIX(mult_x_3_n111), .D(mult_x_3_n178), .CO(
        mult_x_3_n109), .COX(mult_x_3_n108), .S(mult_x_3_n110) );
  CMPE42D1 mult_x_3_U68 ( .A(mult_x_3_n201), .B(mult_x_3_n227), .C(
        mult_x_3_n151), .CIX(mult_x_3_n108), .D(mult_x_3_n177), .CO(
        mult_x_3_n106), .COX(mult_x_3_n105), .S(mult_x_3_n107) );
  CMPE42D1 mult_x_3_U67 ( .A(mult_x_3_n200), .B(mult_x_3_n226), .C(
        mult_x_3_n150), .CIX(mult_x_3_n105), .D(mult_x_3_n176), .CO(
        mult_x_3_n103), .COX(mult_x_3_n102), .S(mult_x_3_n104) );
  CMPE42D1 mult_x_3_U66 ( .A(mult_x_3_n199), .B(mult_x_3_n225), .C(
        mult_x_3_n149), .CIX(mult_x_3_n102), .D(mult_x_3_n175), .CO(
        mult_x_3_n100), .COX(mult_x_3_n99), .S(mult_x_3_n101) );
  CMPE42D1 mult_x_3_U65 ( .A(mult_x_3_n198), .B(mult_x_3_n224), .C(
        mult_x_3_n148), .CIX(mult_x_3_n99), .D(mult_x_3_n174), .CO(
        mult_x_3_n97), .COX(mult_x_3_n96), .S(mult_x_3_n98) );
  CMPE42D1 mult_x_3_U64 ( .A(mult_x_3_n197), .B(mult_x_3_n223), .C(
        mult_x_3_n147), .CIX(mult_x_3_n96), .D(mult_x_3_n173), .CO(
        mult_x_3_n94), .COX(mult_x_3_n93), .S(mult_x_3_n95) );
  CMPE42D1 mult_x_3_U63 ( .A(mult_x_3_n196), .B(mult_x_3_n222), .C(
        mult_x_3_n146), .CIX(mult_x_3_n93), .D(mult_x_3_n172), .CO(
        mult_x_3_n91), .COX(mult_x_3_n90), .S(mult_x_3_n92) );
  CMPE42D1 mult_x_3_U62 ( .A(mult_x_3_n195), .B(mult_x_3_n221), .C(
        mult_x_3_n145), .CIX(mult_x_3_n90), .D(mult_x_3_n171), .CO(
        mult_x_3_n88), .COX(mult_x_3_n87), .S(mult_x_3_n89) );
  CMPE42D1 mult_x_3_U61 ( .A(mult_x_3_n194), .B(mult_x_3_n220), .C(
        mult_x_3_n144), .CIX(mult_x_3_n87), .D(mult_x_3_n170), .CO(
        mult_x_3_n85), .COX(mult_x_3_n84), .S(mult_x_3_n86) );
  CMPE42D1 mult_x_3_U60 ( .A(mult_x_3_n193), .B(mult_x_3_n219), .C(
        mult_x_3_n143), .CIX(mult_x_3_n84), .D(mult_x_3_n169), .CO(
        mult_x_3_n82), .COX(mult_x_3_n81), .S(mult_x_3_n83) );
  CMPE42D1 mult_x_3_U59 ( .A(mult_x_3_n192), .B(mult_x_3_n218), .C(
        mult_x_3_n142), .CIX(mult_x_3_n81), .D(mult_x_3_n168), .CO(
        mult_x_3_n79), .COX(mult_x_3_n78), .S(mult_x_3_n80) );
  CMPE42D1 mult_x_3_U58 ( .A(mult_x_3_n191), .B(mult_x_3_n217), .C(
        mult_x_3_n141), .CIX(mult_x_3_n78), .D(mult_x_3_n167), .CO(
        mult_x_3_n76), .COX(mult_x_3_n75), .S(mult_x_3_n77) );
  CMPE42D1 mult_x_3_U57 ( .A(mult_x_3_n190), .B(mult_x_3_n216), .C(
        mult_x_3_n140), .CIX(mult_x_3_n75), .D(mult_x_3_n166), .CO(
        mult_x_3_n73), .COX(mult_x_3_n72), .S(mult_x_3_n74) );
  CMPE42D1 mult_x_3_U56 ( .A(mult_x_3_n189), .B(mult_x_3_n215), .C(
        mult_x_3_n139), .CIX(mult_x_3_n72), .D(mult_x_3_n165), .CO(
        mult_x_3_n70), .COX(mult_x_3_n69), .S(mult_x_3_n71) );
  CMPE42D1 mult_x_3_U55 ( .A(mult_x_3_n188), .B(mult_x_3_n214), .C(
        mult_x_3_n138), .CIX(mult_x_3_n69), .D(mult_x_3_n164), .CO(
        mult_x_3_n67), .COX(mult_x_3_n66), .S(mult_x_3_n68) );
  CMPE42D1 mult_x_3_U54 ( .A(mult_x_3_n187), .B(mult_x_3_n213), .C(
        mult_x_3_n137), .CIX(mult_x_3_n66), .D(mult_x_3_n163), .CO(
        mult_x_3_n64), .COX(mult_x_3_n63), .S(mult_x_3_n65) );
  CMPE42D1 mult_x_3_U52 ( .A(mult_x_3_n62), .B(mult_x_3_n212), .C(
        mult_x_3_n136), .CIX(mult_x_3_n63), .D(mult_x_3_n162), .CO(
        mult_x_3_n59), .COX(mult_x_3_n58), .S(mult_x_3_n60) );
  CMPE42D1 mult_x_3_U50 ( .A(mult_x_3_n57), .B(mult_x_3_n61), .C(mult_x_3_n135), .CIX(mult_x_3_n58), .D(mult_x_3_n161), .CO(mult_x_3_n54), .COX(mult_x_3_n53), 
        .S(mult_x_3_n55) );
  CMPE42D1 mult_x_3_U49 ( .A(mult_x_3_n57), .B(mult_x_3_n56), .C(mult_x_3_n134), .CIX(mult_x_3_n53), .D(mult_x_3_n160), .CO(mult_x_3_n51), .COX(mult_x_3_n50), 
        .S(mult_x_3_n52) );
  HA1D0 DP_OP_44J1_125_8301_U22 ( .A(DP_OP_44J1_125_8301_n27), .B(x[23]), .CO(
        DP_OP_44J1_125_8301_n20), .S(N31) );
  FA1D0 DP_OP_44J1_125_8301_U21 ( .A(DP_OP_44J1_125_8301_n26), .B(x[24]), .CI(
        DP_OP_44J1_125_8301_n20), .CO(DP_OP_44J1_125_8301_n19), .S(N32) );
  FA1D0 DP_OP_44J1_125_8301_U20 ( .A(DP_OP_44J1_125_8301_n25), .B(x[25]), .CI(
        DP_OP_44J1_125_8301_n19), .CO(DP_OP_44J1_125_8301_n18), .S(N33) );
  FA1D0 DP_OP_44J1_125_8301_U19 ( .A(DP_OP_44J1_125_8301_n24), .B(x[26]), .CI(
        DP_OP_44J1_125_8301_n18), .CO(DP_OP_44J1_125_8301_n17), .S(N34) );
  FA1D0 DP_OP_44J1_125_8301_U18 ( .A(DP_OP_44J1_125_8301_n23), .B(x[27]), .CI(
        DP_OP_44J1_125_8301_n17), .CO(DP_OP_44J1_125_8301_n16), .S(N35) );
  FA1D0 DP_OP_44J1_125_8301_U17 ( .A(DP_OP_44J1_125_8301_n22), .B(x[28]), .CI(
        DP_OP_44J1_125_8301_n16), .CO(DP_OP_44J1_125_8301_n15), .S(N36) );
  FA1D0 DP_OP_44J1_125_8301_U16 ( .A(DP_OP_44J1_125_8301_n21), .B(x[29]), .CI(
        DP_OP_44J1_125_8301_n15), .CO(DP_OP_44J1_125_8301_n14), .S(N37) );
  FA1D0 DP_OP_44J1_125_8301_U9 ( .A(DP_OP_44J1_125_8301_n12), .B(C1_Z_0), .CI(
        N31), .CO(DP_OP_44J1_125_8301_n8), .S(C6_DATA2_0) );
  FA1D0 DP_OP_44J1_125_8301_U8 ( .A(N32), .B(n136), .CI(DP_OP_44J1_125_8301_n8), .CO(DP_OP_44J1_125_8301_n7), .S(C6_DATA2_1) );
  FA1D0 DP_OP_44J1_125_8301_U7 ( .A(N33), .B(C1_Z_0), .CI(
        DP_OP_44J1_125_8301_n7), .CO(DP_OP_44J1_125_8301_n6), .S(C6_DATA2_2)
         );
  FA1D0 DP_OP_44J1_125_8301_U6 ( .A(N34), .B(C1_Z_0), .CI(
        DP_OP_44J1_125_8301_n6), .CO(DP_OP_44J1_125_8301_n5), .S(C6_DATA2_3)
         );
  FA1D0 DP_OP_44J1_125_8301_U5 ( .A(N35), .B(C1_Z_0), .CI(
        DP_OP_44J1_125_8301_n5), .CO(DP_OP_44J1_125_8301_n4), .S(C6_DATA2_4)
         );
  FA1D0 DP_OP_44J1_125_8301_U4 ( .A(N36), .B(C1_Z_0), .CI(
        DP_OP_44J1_125_8301_n4), .CO(DP_OP_44J1_125_8301_n3), .S(C6_DATA2_5)
         );
  FA1D0 DP_OP_44J1_125_8301_U3 ( .A(N37), .B(C1_Z_0), .CI(
        DP_OP_44J1_125_8301_n3), .CO(DP_OP_44J1_125_8301_n2), .S(C6_DATA2_6)
         );
  FA1D0 intadd_0_U25 ( .A(mult_x_3_n124), .B(mult_x_3_n122), .CI(intadd_0_CI), 
        .CO(intadd_0_n24), .S(intadd_0_SUM_0_) );
  FA1D0 intadd_0_U24 ( .A(mult_x_3_n119), .B(mult_x_3_n121), .CI(intadd_0_n24), 
        .CO(intadd_0_n23), .S(intadd_0_SUM_1_) );
  FA1D0 intadd_0_U23 ( .A(mult_x_3_n116), .B(mult_x_3_n118), .CI(intadd_0_n23), 
        .CO(intadd_0_n22), .S(intadd_0_SUM_2_) );
  FA1D0 intadd_0_U22 ( .A(mult_x_3_n113), .B(mult_x_3_n115), .CI(intadd_0_n22), 
        .CO(intadd_0_n21), .S(intadd_0_SUM_3_) );
  FA1D0 intadd_0_U21 ( .A(mult_x_3_n110), .B(mult_x_3_n112), .CI(intadd_0_n21), 
        .CO(intadd_0_n20), .S(intadd_0_SUM_4_) );
  FA1D0 intadd_0_U20 ( .A(mult_x_3_n107), .B(mult_x_3_n109), .CI(intadd_0_n20), 
        .CO(intadd_0_n19), .S(intadd_0_SUM_5_) );
  FA1D0 intadd_0_U19 ( .A(mult_x_3_n104), .B(mult_x_3_n106), .CI(intadd_0_n19), 
        .CO(intadd_0_n18), .S(intadd_0_SUM_6_) );
  FA1D0 intadd_0_U18 ( .A(mult_x_3_n101), .B(mult_x_3_n103), .CI(intadd_0_n18), 
        .CO(intadd_0_n17), .S(intadd_0_SUM_7_) );
  FA1D0 intadd_0_U17 ( .A(mult_x_3_n98), .B(mult_x_3_n100), .CI(intadd_0_n17), 
        .CO(intadd_0_n16), .S(intadd_0_SUM_8_) );
  FA1D0 intadd_0_U16 ( .A(mult_x_3_n95), .B(mult_x_3_n97), .CI(intadd_0_n16), 
        .CO(intadd_0_n15), .S(intadd_0_SUM_9_) );
  FA1D0 intadd_0_U15 ( .A(mult_x_3_n92), .B(mult_x_3_n94), .CI(intadd_0_n15), 
        .CO(intadd_0_n14), .S(intadd_0_SUM_10_) );
  FA1D0 intadd_0_U14 ( .A(mult_x_3_n89), .B(mult_x_3_n91), .CI(intadd_0_n14), 
        .CO(intadd_0_n13), .S(intadd_0_SUM_11_) );
  FA1D0 intadd_0_U13 ( .A(mult_x_3_n86), .B(mult_x_3_n88), .CI(intadd_0_n13), 
        .CO(intadd_0_n12), .S(intadd_0_SUM_12_) );
  FA1D0 intadd_0_U12 ( .A(mult_x_3_n83), .B(mult_x_3_n85), .CI(intadd_0_n12), 
        .CO(intadd_0_n11), .S(intadd_0_SUM_13_) );
  FA1D0 intadd_0_U11 ( .A(mult_x_3_n80), .B(mult_x_3_n82), .CI(intadd_0_n11), 
        .CO(intadd_0_n10), .S(intadd_0_SUM_14_) );
  FA1D0 intadd_0_U10 ( .A(mult_x_3_n77), .B(mult_x_3_n79), .CI(intadd_0_n10), 
        .CO(intadd_0_n9), .S(intadd_0_SUM_15_) );
  FA1D0 intadd_0_U9 ( .A(mult_x_3_n74), .B(mult_x_3_n76), .CI(intadd_0_n9), 
        .CO(intadd_0_n8), .S(intadd_0_SUM_16_) );
  FA1D0 intadd_0_U8 ( .A(mult_x_3_n71), .B(mult_x_3_n73), .CI(intadd_0_n8), 
        .CO(intadd_0_n7), .S(intadd_0_SUM_17_) );
  FA1D0 intadd_0_U7 ( .A(mult_x_3_n68), .B(mult_x_3_n70), .CI(intadd_0_n7), 
        .CO(intadd_0_n6), .S(intadd_0_SUM_18_) );
  FA1D0 intadd_0_U6 ( .A(mult_x_3_n65), .B(mult_x_3_n67), .CI(intadd_0_n6), 
        .CO(intadd_0_n5), .S(intadd_0_SUM_19_) );
  FA1D0 intadd_0_U5 ( .A(mult_x_3_n60), .B(mult_x_3_n64), .CI(intadd_0_n5), 
        .CO(intadd_0_n4), .S(intadd_0_SUM_20_) );
  FA1D0 intadd_0_U4 ( .A(mult_x_3_n55), .B(mult_x_3_n59), .CI(intadd_0_n4), 
        .CO(intadd_0_n3), .S(intadd_0_SUM_21_) );
  FA1D0 intadd_0_U3 ( .A(mult_x_3_n52), .B(mult_x_3_n54), .CI(intadd_0_n3), 
        .CO(intadd_0_n2), .S(intadd_0_SUM_22_) );
  FA1D0 intadd_0_U2 ( .A(mult_x_3_n51), .B(intadd_0_B_23_), .CI(intadd_0_n2), 
        .CO(intadd_0_n1), .S(intadd_0_SUM_23_) );
  NR2XD1 U4 ( .A1(n110), .A2(n41), .ZN(n81) );
  INVD0 U5 ( .I(plane_full[23]), .ZN(n104) );
  NR2D0 U6 ( .A1(y[22]), .A2(y[21]), .ZN(n126) );
  INVD1 U7 ( .I(n126), .ZN(n113) );
  NR2D0 U8 ( .A1(n104), .A2(n113), .ZN(mult_x_3_n216) );
  INVD0 U9 ( .I(plane_full[24]), .ZN(n103) );
  NR2D0 U10 ( .A1(n103), .A2(n113), .ZN(mult_x_3_n215) );
  INR2D0 U11 ( .A1(intadd_0_SUM_22_), .B1(intadd_0_SUM_23_), .ZN(n340) );
  INVD0 U12 ( .I(mult_x_3_n50), .ZN(n108) );
  INVD0 U13 ( .I(y[22]), .ZN(n26) );
  CKND2D0 U14 ( .A1(n26), .A2(y[21]), .ZN(n27) );
  NR2XD0 U15 ( .A1(n26), .A2(y[21]), .ZN(n123) );
  INVD0 U16 ( .I(n123), .ZN(n105) );
  CKND2D0 U17 ( .A1(n27), .A2(n105), .ZN(n119) );
  OA22D0 U18 ( .A1(plane_full[25]), .A2(n119), .B1(plane_full[26]), .B2(n105), 
        .Z(n107) );
  AO21D0 U19 ( .A1(plane_full[24]), .A2(n113), .B(mult_x_3_n216), .Z(n106) );
  INVD0 U20 ( .I(n27), .ZN(n122) );
  NR2D0 U21 ( .A1(plane_full[26]), .A2(n122), .ZN(n28) );
  XOR2D0 U22 ( .A1(n28), .A2(n106), .Z(n30) );
  AOI21D0 U23 ( .A1(plane_full[25]), .A2(n113), .B(mult_x_3_n215), .ZN(n29) );
  XOR2D0 U24 ( .A1(n30), .A2(n29), .Z(n310) );
  XNR2D0 U25 ( .A1(n320), .A2(n310), .ZN(n330) );
  XOR2D0 U26 ( .A1(intadd_0_n1), .A2(n330), .Z(n110) );
  INR2XD0 U27 ( .A1(n340), .B1(n110), .ZN(n136) );
  INVD0 U28 ( .I(intadd_0_SUM_23_), .ZN(n41) );
  MUX2D0 U29 ( .I0(C6_DATA2_0), .I1(N31), .S(n81), .Z(result[23]) );
  MUX2D0 U30 ( .I0(C6_DATA2_1), .I1(N32), .S(n81), .Z(result[24]) );
  MUX2D0 U31 ( .I0(C6_DATA2_2), .I1(N33), .S(n81), .Z(result[25]) );
  MUX2D0 U32 ( .I0(C6_DATA2_3), .I1(N34), .S(n81), .Z(result[26]) );
  MUX2D0 U33 ( .I0(C6_DATA2_4), .I1(N35), .S(n81), .Z(result[27]) );
  MUX2D0 U34 ( .I0(C6_DATA2_5), .I1(N36), .S(n81), .Z(result[28]) );
  MUX2D0 U35 ( .I0(C6_DATA2_6), .I1(N37), .S(n81), .Z(result[29]) );
  NR2D0 U36 ( .A1(intadd_0_SUM_23_), .A2(intadd_0_SUM_22_), .ZN(n350) );
  INR2XD0 U37 ( .A1(n350), .B1(n110), .ZN(n112) );
  INVD0 U38 ( .I(n112), .ZN(n360) );
  INVD0 U39 ( .I(n136), .ZN(n134) );
  CKND2D0 U40 ( .A1(n360), .A2(n134), .ZN(C1_Z_0) );
  XOR2D0 U41 ( .A1(y[30]), .A2(x[30]), .Z(n370) );
  XOR2D0 U42 ( .A1(DP_OP_44J1_125_8301_n14), .A2(n370), .Z(n39) );
  XOR2D0 U43 ( .A1(n39), .A2(C1_Z_0), .Z(n38) );
  XOR2D0 U44 ( .A1(n38), .A2(DP_OP_44J1_125_8301_n2), .Z(n40) );
  MUX2D0 U45 ( .I0(n40), .I1(n39), .S(n81), .Z(result[30]) );
  AO22D0 U46 ( .A1(n110), .A2(intadd_0_SUM_1_), .B1(n81), .B2(intadd_0_SUM_0_), 
        .Z(result[0]) );
  INVD0 U47 ( .I(n110), .ZN(n133) );
  IOA21D0 U48 ( .A1(intadd_0_SUM_20_), .A2(n41), .B(n133), .ZN(n42) );
  AO222D0 U49 ( .A1(intadd_0_SUM_19_), .A2(n112), .B1(intadd_0_SUM_22_), .B2(
        n42), .C1(n81), .C2(intadd_0_SUM_21_), .Z(result[21]) );
  AOI22D0 U50 ( .A1(intadd_0_SUM_2_), .A2(n136), .B1(intadd_0_SUM_1_), .B2(
        n112), .ZN(n44) );
  AOI22D0 U51 ( .A1(n110), .A2(intadd_0_SUM_4_), .B1(n81), .B2(intadd_0_SUM_3_), .ZN(n43) );
  CKND2D0 U52 ( .A1(n44), .A2(n43), .ZN(result[3]) );
  AOI22D0 U53 ( .A1(n136), .A2(intadd_0_SUM_10_), .B1(n112), .B2(
        intadd_0_SUM_9_), .ZN(n46) );
  AOI22D0 U54 ( .A1(n110), .A2(intadd_0_SUM_12_), .B1(n81), .B2(
        intadd_0_SUM_11_), .ZN(n45) );
  CKND2D0 U55 ( .A1(n46), .A2(n45), .ZN(result[11]) );
  AOI22D0 U56 ( .A1(n136), .A2(intadd_0_SUM_18_), .B1(n112), .B2(
        intadd_0_SUM_17_), .ZN(n48) );
  AOI22D0 U57 ( .A1(n110), .A2(intadd_0_SUM_20_), .B1(n81), .B2(
        intadd_0_SUM_19_), .ZN(n47) );
  CKND2D0 U58 ( .A1(n48), .A2(n47), .ZN(result[19]) );
  AOI22D0 U59 ( .A1(n136), .A2(intadd_0_SUM_13_), .B1(n112), .B2(
        intadd_0_SUM_12_), .ZN(n50) );
  AOI22D0 U60 ( .A1(n110), .A2(intadd_0_SUM_15_), .B1(n81), .B2(
        intadd_0_SUM_14_), .ZN(n49) );
  CKND2D0 U61 ( .A1(n50), .A2(n49), .ZN(result[14]) );
  AOI22D0 U62 ( .A1(n136), .A2(intadd_0_SUM_17_), .B1(n112), .B2(
        intadd_0_SUM_16_), .ZN(n52) );
  AOI22D0 U63 ( .A1(n110), .A2(intadd_0_SUM_19_), .B1(n81), .B2(
        intadd_0_SUM_18_), .ZN(n51) );
  CKND2D0 U64 ( .A1(n52), .A2(n51), .ZN(result[18]) );
  AOI22D0 U65 ( .A1(n136), .A2(intadd_0_SUM_12_), .B1(n112), .B2(
        intadd_0_SUM_11_), .ZN(n54) );
  AOI22D0 U66 ( .A1(n110), .A2(intadd_0_SUM_14_), .B1(n81), .B2(
        intadd_0_SUM_13_), .ZN(n53) );
  CKND2D0 U67 ( .A1(n54), .A2(n53), .ZN(result[13]) );
  AOI22D0 U68 ( .A1(n136), .A2(intadd_0_SUM_16_), .B1(n112), .B2(
        intadd_0_SUM_15_), .ZN(n56) );
  AOI22D0 U69 ( .A1(n110), .A2(intadd_0_SUM_18_), .B1(n81), .B2(
        intadd_0_SUM_17_), .ZN(n55) );
  CKND2D0 U70 ( .A1(n56), .A2(n55), .ZN(result[17]) );
  AOI22D0 U71 ( .A1(n136), .A2(intadd_0_SUM_9_), .B1(n112), .B2(
        intadd_0_SUM_8_), .ZN(n58) );
  AOI22D0 U72 ( .A1(n110), .A2(intadd_0_SUM_11_), .B1(n81), .B2(
        intadd_0_SUM_10_), .ZN(n57) );
  CKND2D0 U73 ( .A1(n58), .A2(n57), .ZN(result[10]) );
  AOI22D0 U74 ( .A1(n136), .A2(intadd_0_SUM_19_), .B1(n112), .B2(
        intadd_0_SUM_18_), .ZN(n60) );
  AOI22D0 U75 ( .A1(n110), .A2(intadd_0_SUM_21_), .B1(n81), .B2(
        intadd_0_SUM_20_), .ZN(n59) );
  CKND2D0 U76 ( .A1(n60), .A2(n59), .ZN(result[20]) );
  AOI22D0 U77 ( .A1(n136), .A2(intadd_0_SUM_14_), .B1(n112), .B2(
        intadd_0_SUM_13_), .ZN(n62) );
  AOI22D0 U78 ( .A1(n110), .A2(intadd_0_SUM_16_), .B1(n81), .B2(
        intadd_0_SUM_15_), .ZN(n61) );
  CKND2D0 U79 ( .A1(n62), .A2(n61), .ZN(result[15]) );
  AOI22D0 U80 ( .A1(n136), .A2(intadd_0_SUM_6_), .B1(n112), .B2(
        intadd_0_SUM_5_), .ZN(n64) );
  AOI22D0 U81 ( .A1(n110), .A2(intadd_0_SUM_8_), .B1(n81), .B2(intadd_0_SUM_7_), .ZN(n63) );
  CKND2D0 U82 ( .A1(n64), .A2(n63), .ZN(result[7]) );
  AOI22D0 U83 ( .A1(n136), .A2(intadd_0_SUM_5_), .B1(n112), .B2(
        intadd_0_SUM_4_), .ZN(n66) );
  AOI22D0 U84 ( .A1(n110), .A2(intadd_0_SUM_7_), .B1(n81), .B2(intadd_0_SUM_6_), .ZN(n65) );
  CKND2D0 U85 ( .A1(n66), .A2(n65), .ZN(result[6]) );
  AOI22D0 U86 ( .A1(n136), .A2(intadd_0_SUM_11_), .B1(n112), .B2(
        intadd_0_SUM_10_), .ZN(n68) );
  AOI22D0 U87 ( .A1(n110), .A2(intadd_0_SUM_13_), .B1(n81), .B2(
        intadd_0_SUM_12_), .ZN(n67) );
  CKND2D0 U88 ( .A1(n68), .A2(n67), .ZN(result[12]) );
  AOI22D0 U89 ( .A1(n136), .A2(intadd_0_SUM_7_), .B1(n112), .B2(
        intadd_0_SUM_6_), .ZN(n70) );
  AOI22D0 U90 ( .A1(n110), .A2(intadd_0_SUM_9_), .B1(n81), .B2(intadd_0_SUM_8_), .ZN(n69) );
  CKND2D0 U91 ( .A1(n70), .A2(n69), .ZN(result[8]) );
  AOI22D0 U92 ( .A1(n136), .A2(intadd_0_SUM_15_), .B1(n112), .B2(
        intadd_0_SUM_14_), .ZN(n72) );
  AOI22D0 U93 ( .A1(n110), .A2(intadd_0_SUM_17_), .B1(n81), .B2(
        intadd_0_SUM_16_), .ZN(n71) );
  CKND2D0 U94 ( .A1(n72), .A2(n71), .ZN(result[16]) );
  AOI22D0 U95 ( .A1(n136), .A2(intadd_0_SUM_8_), .B1(n112), .B2(
        intadd_0_SUM_7_), .ZN(n74) );
  AOI22D0 U96 ( .A1(n110), .A2(intadd_0_SUM_10_), .B1(n81), .B2(
        intadd_0_SUM_9_), .ZN(n73) );
  CKND2D0 U97 ( .A1(n74), .A2(n73), .ZN(result[9]) );
  AOI22D0 U98 ( .A1(n136), .A2(intadd_0_SUM_1_), .B1(n112), .B2(
        intadd_0_SUM_0_), .ZN(n76) );
  AOI22D0 U99 ( .A1(n110), .A2(intadd_0_SUM_3_), .B1(n81), .B2(intadd_0_SUM_2_), .ZN(n75) );
  CKND2D0 U100 ( .A1(n76), .A2(n75), .ZN(result[2]) );
  AOI22D0 U101 ( .A1(intadd_0_SUM_2_), .A2(n112), .B1(intadd_0_SUM_3_), .B2(
        n136), .ZN(n78) );
  AOI22D0 U102 ( .A1(n110), .A2(intadd_0_SUM_5_), .B1(n81), .B2(
        intadd_0_SUM_4_), .ZN(n77) );
  CKND2D0 U103 ( .A1(n78), .A2(n77), .ZN(result[4]) );
  AOI22D0 U104 ( .A1(intadd_0_SUM_3_), .A2(n112), .B1(n136), .B2(
        intadd_0_SUM_4_), .ZN(n80) );
  AOI22D0 U105 ( .A1(n110), .A2(intadd_0_SUM_6_), .B1(n81), .B2(
        intadd_0_SUM_5_), .ZN(n79) );
  CKND2D0 U106 ( .A1(n80), .A2(n79), .ZN(result[5]) );
  AO222D0 U107 ( .A1(intadd_0_SUM_1_), .A2(n81), .B1(intadd_0_SUM_2_), .B2(
        n110), .C1(n136), .C2(intadd_0_SUM_0_), .Z(result[1]) );
  INVD0 U108 ( .I(plane_full[0]), .ZN(n82) );
  NR2D0 U109 ( .A1(n82), .A2(n126), .ZN(mult_x_3_n157) );
  OAI22D0 U110 ( .A1(plane_full[1]), .A2(n119), .B1(plane_full[2]), .B2(n105), 
        .ZN(mult_x_3_n183) );
  INVD0 U111 ( .I(plane_full[1]), .ZN(n120) );
  AOI22D0 U112 ( .A1(n126), .A2(n82), .B1(n120), .B2(n113), .ZN(mult_x_3_n156)
         );
  INVD0 U113 ( .I(plane_full[4]), .ZN(n85) );
  NR2D0 U114 ( .A1(n85), .A2(n113), .ZN(n116) );
  AO21D0 U115 ( .A1(plane_full[5]), .A2(n113), .B(n116), .Z(mult_x_3_n152) );
  INVD0 U116 ( .I(plane_full[6]), .ZN(n86) );
  NR2D0 U117 ( .A1(n86), .A2(n113), .ZN(mult_x_3_n233) );
  AO21D0 U118 ( .A1(plane_full[7]), .A2(n113), .B(mult_x_3_n233), .Z(
        mult_x_3_n150) );
  CKND2D0 U119 ( .A1(n126), .A2(plane_full[5]), .ZN(n117) );
  OAI21D0 U120 ( .A1(n126), .A2(n86), .B(n117), .ZN(mult_x_3_n151) );
  INVD0 U121 ( .I(plane_full[7]), .ZN(n97) );
  NR2D0 U122 ( .A1(n97), .A2(n113), .ZN(mult_x_3_n232) );
  AO21D0 U123 ( .A1(plane_full[8]), .A2(n113), .B(mult_x_3_n232), .Z(
        mult_x_3_n149) );
  INVD0 U124 ( .I(plane_full[9]), .ZN(n96) );
  NR2D0 U125 ( .A1(n96), .A2(n113), .ZN(mult_x_3_n230) );
  AO21D0 U126 ( .A1(plane_full[10]), .A2(n113), .B(mult_x_3_n230), .Z(
        mult_x_3_n147) );
  INVD0 U127 ( .I(plane_full[10]), .ZN(n92) );
  NR2D0 U128 ( .A1(n92), .A2(n113), .ZN(mult_x_3_n229) );
  AO21D0 U129 ( .A1(plane_full[11]), .A2(n113), .B(mult_x_3_n229), .Z(
        mult_x_3_n146) );
  INVD0 U130 ( .I(plane_full[11]), .ZN(n99) );
  NR2D0 U131 ( .A1(n99), .A2(n113), .ZN(mult_x_3_n228) );
  AO21D0 U132 ( .A1(plane_full[12]), .A2(n113), .B(mult_x_3_n228), .Z(
        mult_x_3_n145) );
  INVD0 U133 ( .I(plane_full[12]), .ZN(n87) );
  NR2D0 U134 ( .A1(n87), .A2(n113), .ZN(mult_x_3_n227) );
  AO21D0 U135 ( .A1(plane_full[13]), .A2(n113), .B(mult_x_3_n227), .Z(
        mult_x_3_n144) );
  INVD0 U136 ( .I(plane_full[13]), .ZN(n94) );
  NR2D0 U137 ( .A1(n94), .A2(n113), .ZN(mult_x_3_n226) );
  AO21D0 U138 ( .A1(plane_full[14]), .A2(n113), .B(mult_x_3_n226), .Z(
        mult_x_3_n143) );
  INVD0 U139 ( .I(plane_full[14]), .ZN(n90) );
  NR2D0 U140 ( .A1(n90), .A2(n113), .ZN(mult_x_3_n225) );
  AO21D0 U141 ( .A1(plane_full[15]), .A2(n113), .B(mult_x_3_n225), .Z(
        mult_x_3_n142) );
  INVD0 U142 ( .I(plane_full[8]), .ZN(n98) );
  NR2D0 U143 ( .A1(n98), .A2(n113), .ZN(mult_x_3_n231) );
  AO21D0 U144 ( .A1(plane_full[9]), .A2(n113), .B(mult_x_3_n231), .Z(
        mult_x_3_n148) );
  INVD0 U145 ( .I(plane_full[16]), .ZN(n95) );
  NR2D0 U146 ( .A1(n95), .A2(n113), .ZN(mult_x_3_n223) );
  AO21D0 U147 ( .A1(plane_full[17]), .A2(n113), .B(mult_x_3_n223), .Z(
        mult_x_3_n140) );
  INVD0 U148 ( .I(plane_full[17]), .ZN(n91) );
  NR2D0 U149 ( .A1(n91), .A2(n113), .ZN(mult_x_3_n222) );
  AO21D0 U150 ( .A1(plane_full[18]), .A2(n113), .B(mult_x_3_n222), .Z(
        mult_x_3_n139) );
  INVD0 U151 ( .I(plane_full[18]), .ZN(n89) );
  NR2D0 U152 ( .A1(n89), .A2(n113), .ZN(mult_x_3_n221) );
  AO21D0 U153 ( .A1(plane_full[19]), .A2(n113), .B(mult_x_3_n221), .Z(
        mult_x_3_n138) );
  INVD0 U154 ( .I(plane_full[19]), .ZN(n88) );
  NR2D0 U155 ( .A1(n88), .A2(n113), .ZN(mult_x_3_n220) );
  AO21D0 U156 ( .A1(plane_full[20]), .A2(n113), .B(mult_x_3_n220), .Z(
        mult_x_3_n137) );
  INVD0 U157 ( .I(plane_full[15]), .ZN(n93) );
  NR2D0 U158 ( .A1(n93), .A2(n113), .ZN(mult_x_3_n224) );
  AO21D0 U159 ( .A1(plane_full[16]), .A2(n113), .B(mult_x_3_n224), .Z(
        mult_x_3_n141) );
  INVD0 U160 ( .I(plane_full[20]), .ZN(n100) );
  NR2D0 U161 ( .A1(n100), .A2(n113), .ZN(mult_x_3_n219) );
  AO21D0 U162 ( .A1(plane_full[21]), .A2(n113), .B(mult_x_3_n219), .Z(
        mult_x_3_n136) );
  INVD0 U163 ( .I(plane_full[3]), .ZN(n83) );
  AOI22D0 U164 ( .A1(n126), .A2(n83), .B1(n85), .B2(n113), .ZN(mult_x_3_n153)
         );
  INVD0 U165 ( .I(plane_full[2]), .ZN(n84) );
  AOI22D0 U166 ( .A1(n126), .A2(n84), .B1(n83), .B2(n113), .ZN(mult_x_3_n154)
         );
  AOI22D0 U167 ( .A1(n126), .A2(n120), .B1(n84), .B2(n113), .ZN(mult_x_3_n155)
         );
  INVD0 U168 ( .I(plane_full[21]), .ZN(n101) );
  NR2D0 U169 ( .A1(n101), .A2(n113), .ZN(mult_x_3_n218) );
  AO21D0 U170 ( .A1(plane_full[22]), .A2(n113), .B(mult_x_3_n218), .Z(
        mult_x_3_n135) );
  INVD0 U171 ( .I(plane_full[22]), .ZN(n102) );
  NR2D0 U172 ( .A1(n102), .A2(n113), .ZN(mult_x_3_n217) );
  AO21D0 U173 ( .A1(plane_full[23]), .A2(n113), .B(mult_x_3_n217), .Z(
        mult_x_3_n134) );
  OAI22D0 U174 ( .A1(plane_full[3]), .A2(n105), .B1(plane_full[2]), .B2(n119), 
        .ZN(mult_x_3_n182) );
  OAI22D0 U175 ( .A1(plane_full[17]), .A2(n105), .B1(plane_full[16]), .B2(n119), .ZN(mult_x_3_n168) );
  OAI22D0 U176 ( .A1(plane_full[13]), .A2(n105), .B1(plane_full[12]), .B2(n119), .ZN(mult_x_3_n172) );
  OAI22D0 U177 ( .A1(plane_full[10]), .A2(n105), .B1(plane_full[9]), .B2(n119), 
        .ZN(mult_x_3_n175) );
  OAI22D0 U178 ( .A1(plane_full[11]), .A2(n105), .B1(plane_full[10]), .B2(n119), .ZN(mult_x_3_n174) );
  OAI22D0 U179 ( .A1(plane_full[19]), .A2(n105), .B1(plane_full[18]), .B2(n119), .ZN(mult_x_3_n166) );
  OAI22D0 U180 ( .A1(plane_full[8]), .A2(n105), .B1(plane_full[7]), .B2(n119), 
        .ZN(mult_x_3_n177) );
  OAI22D0 U181 ( .A1(plane_full[12]), .A2(n105), .B1(plane_full[11]), .B2(n119), .ZN(mult_x_3_n173) );
  OAI22D0 U182 ( .A1(plane_full[9]), .A2(n105), .B1(plane_full[8]), .B2(n119), 
        .ZN(mult_x_3_n176) );
  OAI22D0 U183 ( .A1(plane_full[15]), .A2(n105), .B1(plane_full[14]), .B2(n119), .ZN(mult_x_3_n170) );
  OAI22D0 U184 ( .A1(plane_full[16]), .A2(n105), .B1(plane_full[15]), .B2(n119), .ZN(mult_x_3_n169) );
  OAI22D0 U185 ( .A1(plane_full[14]), .A2(n105), .B1(plane_full[13]), .B2(n119), .ZN(mult_x_3_n171) );
  OAI22D0 U186 ( .A1(plane_full[7]), .A2(n105), .B1(plane_full[6]), .B2(n119), 
        .ZN(mult_x_3_n178) );
  OAI22D0 U187 ( .A1(plane_full[18]), .A2(n105), .B1(plane_full[17]), .B2(n119), .ZN(mult_x_3_n167) );
  OAI22D0 U188 ( .A1(plane_full[5]), .A2(n119), .B1(plane_full[6]), .B2(n105), 
        .ZN(mult_x_3_n179) );
  OAI22D0 U189 ( .A1(plane_full[3]), .A2(n119), .B1(plane_full[4]), .B2(n105), 
        .ZN(mult_x_3_n181) );
  OAI22D0 U190 ( .A1(plane_full[4]), .A2(n119), .B1(plane_full[5]), .B2(n105), 
        .ZN(mult_x_3_n180) );
  OAI22D0 U191 ( .A1(plane_full[20]), .A2(n105), .B1(plane_full[19]), .B2(n119), .ZN(mult_x_3_n165) );
  OAI22D0 U192 ( .A1(plane_full[21]), .A2(n105), .B1(plane_full[20]), .B2(n119), .ZN(mult_x_3_n164) );
  OAI22D0 U193 ( .A1(plane_full[24]), .A2(n105), .B1(plane_full[23]), .B2(n119), .ZN(mult_x_3_n161) );
  OAI22D0 U194 ( .A1(plane_full[23]), .A2(n105), .B1(plane_full[22]), .B2(n119), .ZN(mult_x_3_n162) );
  OAI22D0 U195 ( .A1(plane_full[22]), .A2(n105), .B1(plane_full[21]), .B2(n119), .ZN(mult_x_3_n163) );
  OAI22D0 U196 ( .A1(plane_full[25]), .A2(n105), .B1(plane_full[24]), .B2(n119), .ZN(mult_x_3_n160) );
  CKAN2D0 U197 ( .A1(plane_full[5]), .A2(n105), .Z(mult_x_3_n206) );
  NR2D0 U198 ( .A1(n85), .A2(n123), .ZN(mult_x_3_n207) );
  CKND2D0 U199 ( .A1(plane_full[26]), .A2(n105), .ZN(mult_x_3_n57) );
  INVD0 U200 ( .I(mult_x_3_n57), .ZN(mult_x_3_n56) );
  NR2D0 U201 ( .A1(n86), .A2(n123), .ZN(mult_x_3_n205) );
  NR2D0 U202 ( .A1(n87), .A2(n123), .ZN(mult_x_3_n199) );
  NR2D0 U203 ( .A1(n88), .A2(n123), .ZN(mult_x_3_n192) );
  NR2D0 U204 ( .A1(n89), .A2(n123), .ZN(mult_x_3_n193) );
  NR2D0 U205 ( .A1(n90), .A2(n123), .ZN(mult_x_3_n197) );
  NR2D0 U206 ( .A1(n91), .A2(n123), .ZN(mult_x_3_n194) );
  NR2D0 U207 ( .A1(n92), .A2(n123), .ZN(mult_x_3_n201) );
  NR2D0 U208 ( .A1(n93), .A2(n123), .ZN(mult_x_3_n196) );
  NR2D0 U209 ( .A1(n94), .A2(n123), .ZN(mult_x_3_n198) );
  NR2D0 U210 ( .A1(n95), .A2(n123), .ZN(mult_x_3_n195) );
  NR2D0 U211 ( .A1(n96), .A2(n123), .ZN(mult_x_3_n202) );
  NR2D0 U212 ( .A1(n97), .A2(n123), .ZN(mult_x_3_n204) );
  NR2D0 U213 ( .A1(n98), .A2(n123), .ZN(mult_x_3_n203) );
  NR2D0 U214 ( .A1(n99), .A2(n123), .ZN(mult_x_3_n200) );
  NR2D0 U215 ( .A1(n100), .A2(n123), .ZN(mult_x_3_n191) );
  NR2D0 U216 ( .A1(n101), .A2(n123), .ZN(mult_x_3_n190) );
  NR2D0 U217 ( .A1(n102), .A2(n123), .ZN(mult_x_3_n189) );
  NR2D0 U218 ( .A1(n103), .A2(n123), .ZN(mult_x_3_n187) );
  NR2D0 U219 ( .A1(n104), .A2(n123), .ZN(mult_x_3_n188) );
  CKND2D0 U220 ( .A1(plane_full[25]), .A2(n105), .ZN(mult_x_3_n62) );
  INVD0 U221 ( .I(mult_x_3_n62), .ZN(mult_x_3_n61) );
  CKND2D0 U222 ( .A1(n126), .A2(plane_full[26]), .ZN(mult_x_3_n212) );
  INVD0 U223 ( .I(mult_x_3_n212), .ZN(mult_x_3_n213) );
  CKND2D0 U224 ( .A1(plane_full[3]), .A2(n105), .ZN(n118) );
  NR2D0 U225 ( .A1(n117), .A2(n118), .ZN(mult_x_3_n128) );
  FA1D0 U226 ( .A(n108), .B(n107), .CI(n106), .CO(n320), .S(n109) );
  INVD0 U227 ( .I(n109), .ZN(intadd_0_B_23_) );
  INVD0 U228 ( .I(y[23]), .ZN(DP_OP_44J1_125_8301_n27) );
  INVD0 U229 ( .I(y[24]), .ZN(DP_OP_44J1_125_8301_n26) );
  INVD0 U230 ( .I(y[25]), .ZN(DP_OP_44J1_125_8301_n25) );
  INVD0 U231 ( .I(y[26]), .ZN(DP_OP_44J1_125_8301_n24) );
  INVD0 U232 ( .I(y[27]), .ZN(DP_OP_44J1_125_8301_n23) );
  INVD0 U233 ( .I(y[28]), .ZN(DP_OP_44J1_125_8301_n22) );
  INVD0 U234 ( .I(y[29]), .ZN(DP_OP_44J1_125_8301_n21) );
  OAI222D0 U235 ( .A1(intadd_0_SUM_23_), .A2(intadd_0_SUM_21_), .B1(
        intadd_0_SUM_23_), .B2(n133), .C1(intadd_0_SUM_22_), .C2(n110), .ZN(
        n111) );
  IOA21D0 U236 ( .A1(n112), .A2(intadd_0_SUM_20_), .B(n111), .ZN(result[22])
         );
  INR2D0 U237 ( .A1(plane_full[25]), .B1(n113), .ZN(mult_x_3_n214) );
  OAI211D0 U238 ( .A1(plane_full[1]), .A2(plane_full[3]), .B(plane_full[0]), 
        .C(plane_full[2]), .ZN(n115) );
  IND2D0 U239 ( .A1(n118), .B1(plane_full[1]), .ZN(n114) );
  MAOI22D0 U240 ( .A1(n115), .A2(n114), .B1(plane_full[2]), .B2(n116), .ZN(
        n125) );
  CKND2D0 U241 ( .A1(plane_full[2]), .A2(n116), .ZN(n129) );
  AO21D0 U242 ( .A1(n118), .A2(n117), .B(mult_x_3_n128), .Z(n128) );
  MAOI22D0 U243 ( .A1(n120), .A2(n123), .B1(plane_full[0]), .B2(n119), .ZN(
        n127) );
  AOI211D0 U244 ( .A1(plane_full[0]), .A2(n123), .B(n122), .C(n121), .ZN(n124)
         );
  AOI31D0 U245 ( .A1(n126), .A2(n125), .A3(n129), .B(n124), .ZN(n132) );
  FA1D0 U246 ( .A(n129), .B(n128), .CI(n127), .CO(n131), .S(n121) );
  INVD0 U247 ( .I(mult_x_3_n125), .ZN(n130) );
  MAOI222D0 U248 ( .A(n132), .B(n131), .C(n130), .ZN(intadd_0_CI) );
  CKND2D0 U249 ( .A1(n134), .A2(n133), .ZN(n135) );
  XOR2D0 U250 ( .A1(C1_Z_0), .A2(n135), .Z(DP_OP_44J1_125_8301_n12) );
  XOR2D0 U251 ( .A1(y[31]), .A2(x[31]), .Z(result[31]) );
endmodule


module oadm_fixed_l2_div_paceio_opt ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26;

  oadm_multilevel_opt_FIXED_LEVEL2_FP_STYLE1 impl ( .x({x[31:23], n17, n26, n9, 
        n3, n7, x[17:3], n15, n23, n21}), .y({y[31:23], n24, n25, n11, 
        y[19:18], n19, y[16:2], n13, n5}), .level({1'b0, 1'b0}), .divide_mode(
        1'b0), .result(result) );
  INVD0 U6 ( .I(x[19]), .ZN(n2) );
  INVD0 U7 ( .I(n2), .ZN(n3) );
  INVD0 U8 ( .I(y[0]), .ZN(n4) );
  INVD0 U9 ( .I(n4), .ZN(n5) );
  INVD0 U10 ( .I(x[18]), .ZN(n6) );
  INVD0 U11 ( .I(n6), .ZN(n7) );
  INVD0 U12 ( .I(x[20]), .ZN(n8) );
  INVD0 U13 ( .I(n8), .ZN(n9) );
  INVD0 U14 ( .I(y[20]), .ZN(n10) );
  INVD0 U15 ( .I(n10), .ZN(n11) );
  INVD0 U16 ( .I(y[1]), .ZN(n12) );
  INVD0 U17 ( .I(n12), .ZN(n13) );
  INVD0 U18 ( .I(x[2]), .ZN(n14) );
  INVD0 U19 ( .I(n14), .ZN(n15) );
  INVD0 U20 ( .I(x[22]), .ZN(n16) );
  INVD0 U21 ( .I(n16), .ZN(n17) );
  INVD0 U22 ( .I(y[17]), .ZN(n18) );
  INVD0 U23 ( .I(n18), .ZN(n19) );
  INVD0 U24 ( .I(x[0]), .ZN(n20) );
  INVD0 U25 ( .I(n20), .ZN(n21) );
  INVD0 U26 ( .I(x[1]), .ZN(n22) );
  INVD0 U27 ( .I(n22), .ZN(n23) );
  BUFFD0 U28 ( .I(y[21]), .Z(n25) );
  BUFFD0 U29 ( .I(y[22]), .Z(n24) );
  BUFFD0 U30 ( .I(x[21]), .Z(n26) );
endmodule

