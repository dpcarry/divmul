/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Wed Sep  2 14:55:34 2026
/////////////////////////////////////////////////////////////


module oadm_multilevel_rounding_lut_1 ( level, index, value_low, x_error, 
        y_error );
  input [1:0] level;
  input [2:0] index;
  input [3:0] value_low;
  output [1:0] x_error;
  output [1:0] y_error;
  wire   n2, n3;

  INVD0 U1 ( .I(value_low[1]), .ZN(n3) );
  OAI21D0 U2 ( .A1(index[2]), .A2(n3), .B(value_low[0]), .ZN(n2) );
  AOI21D0 U3 ( .A1(index[2]), .A2(n3), .B(n2), .ZN(x_error[0]) );
endmodule


module oadm_multilevel_rounding_lut_0 ( level, index, value_low, x_error, 
        y_error );
  input [1:0] level;
  input [2:0] index;
  input [3:0] value_low;
  output [1:0] x_error;
  output [1:0] y_error;
  wire   n2, n3;

  CKND2D0 U1 ( .A1(index[2]), .A2(value_low[0]), .ZN(n3) );
  CKND2D0 U2 ( .A1(n3), .A2(value_low[1]), .ZN(n2) );
  OAI21D0 U3 ( .A1(value_low[1]), .A2(n3), .B(n2), .ZN(y_error[0]) );
endmodule


module oadm_fixed_plane_centered_LEVEL1 ( x_mantissa, y_mantissa, divide_mode, 
        plane_exact );
  input [23:0] x_mantissa;
  input [23:0] y_mantissa;
  output [28:0] plane_exact;
  input divide_mode;
  wire   N6, midpoint_product_7_, x_rounding_error_0_, y_rounding_error_0_,
         DP_OP_44J1_122_2819_n179, DP_OP_44J1_122_2819_n158,
         DP_OP_44J1_122_2819_n131, DP_OP_44J1_122_2819_n130,
         DP_OP_44J1_122_2819_n50, DP_OP_44J1_122_2819_n48,
         DP_OP_44J1_122_2819_n47, DP_OP_44J1_122_2819_n46,
         DP_OP_44J1_122_2819_n45, DP_OP_44J1_122_2819_n44,
         DP_OP_44J1_122_2819_n43, DP_OP_44J1_122_2819_n41,
         DP_OP_44J1_122_2819_n40, DP_OP_44J1_122_2819_n39, intadd_1_A_23_,
         intadd_1_A_19_, intadd_1_A_18_, intadd_1_A_17_, intadd_1_A_16_,
         intadd_1_A_15_, intadd_1_A_14_, intadd_1_A_13_, intadd_1_A_12_,
         intadd_1_A_11_, intadd_1_A_10_, intadd_1_A_9_, intadd_1_A_8_,
         intadd_1_A_7_, intadd_1_A_6_, intadd_1_A_5_, intadd_1_A_4_,
         intadd_1_A_3_, intadd_1_A_2_, intadd_1_A_1_, intadd_1_A_0_,
         intadd_1_B_24_, intadd_1_B_23_, intadd_1_B_21_, intadd_1_B_19_,
         intadd_1_B_18_, intadd_1_B_17_, intadd_1_B_16_, intadd_1_B_15_,
         intadd_1_B_14_, intadd_1_B_13_, intadd_1_B_12_, intadd_1_B_11_,
         intadd_1_B_10_, intadd_1_B_9_, intadd_1_B_8_, intadd_1_B_7_,
         intadd_1_B_6_, intadd_1_B_5_, intadd_1_B_4_, intadd_1_B_3_,
         intadd_1_B_2_, intadd_1_B_1_, intadd_1_B_0_, intadd_1_CI,
         intadd_1_n25, intadd_1_n24, intadd_1_n23, intadd_1_n22, intadd_1_n21,
         intadd_1_n20, intadd_1_n19, intadd_1_n18, intadd_1_n17, intadd_1_n16,
         intadd_1_n15, intadd_1_n14, intadd_1_n13, intadd_1_n12, intadd_1_n11,
         intadd_1_n10, intadd_1_n9, intadd_1_n8, intadd_1_n7, intadd_1_n6,
         intadd_1_n5, intadd_1_n4, intadd_1_n3, intadd_1_n2, intadd_1_n1,
         intadd_2_A_18_, intadd_2_A_17_, intadd_2_A_16_, intadd_2_A_15_,
         intadd_2_A_14_, intadd_2_A_13_, intadd_2_A_12_, intadd_2_A_11_,
         intadd_2_A_10_, intadd_2_A_9_, intadd_2_A_8_, intadd_2_A_7_,
         intadd_2_A_6_, intadd_2_A_5_, intadd_2_A_4_, intadd_2_A_3_,
         intadd_2_A_2_, intadd_2_A_1_, intadd_2_A_0_, intadd_2_B_19_,
         intadd_2_B_18_, intadd_2_B_17_, intadd_2_B_16_, intadd_2_B_15_,
         intadd_2_B_14_, intadd_2_B_13_, intadd_2_B_12_, intadd_2_B_11_,
         intadd_2_B_10_, intadd_2_B_9_, intadd_2_B_8_, intadd_2_B_7_,
         intadd_2_B_6_, intadd_2_B_5_, intadd_2_B_4_, intadd_2_B_3_,
         intadd_2_B_2_, intadd_2_B_1_, intadd_2_B_0_, intadd_2_CI,
         intadd_2_n20, intadd_2_n19, intadd_2_n18, intadd_2_n17, intadd_2_n16,
         intadd_2_n15, intadd_2_n14, intadd_2_n13, intadd_2_n12, intadd_2_n11,
         intadd_2_n10, intadd_2_n9, intadd_2_n8, intadd_2_n7, intadd_2_n6,
         intadd_2_n5, intadd_2_n4, intadd_2_n3, intadd_2_n2, intadd_2_n1,
         intadd_3_A_19_, intadd_3_A_18_, intadd_3_A_17_, intadd_3_A_16_,
         intadd_3_A_15_, intadd_3_A_14_, intadd_3_A_13_, intadd_3_A_12_,
         intadd_3_A_11_, intadd_3_A_10_, intadd_3_A_9_, intadd_3_A_8_,
         intadd_3_A_7_, intadd_3_A_6_, intadd_3_A_5_, intadd_3_A_4_,
         intadd_3_A_3_, intadd_3_A_2_, intadd_3_A_1_, intadd_3_A_0_,
         intadd_3_B_19_, intadd_3_B_18_, intadd_3_B_17_, intadd_3_B_16_,
         intadd_3_B_15_, intadd_3_B_14_, intadd_3_B_13_, intadd_3_B_12_,
         intadd_3_B_11_, intadd_3_B_10_, intadd_3_B_9_, intadd_3_B_8_,
         intadd_3_B_7_, intadd_3_B_6_, intadd_3_B_5_, intadd_3_B_4_,
         intadd_3_B_3_, intadd_3_B_2_, intadd_3_B_1_, intadd_3_B_0_,
         intadd_3_CI, intadd_3_SUM_19_, intadd_3_SUM_18_, intadd_3_SUM_17_,
         intadd_3_SUM_16_, intadd_3_SUM_15_, intadd_3_SUM_14_,
         intadd_3_SUM_13_, intadd_3_SUM_12_, intadd_3_SUM_11_,
         intadd_3_SUM_10_, intadd_3_SUM_9_, intadd_3_SUM_8_, intadd_3_SUM_7_,
         intadd_3_SUM_6_, intadd_3_SUM_5_, intadd_3_SUM_4_, intadd_3_SUM_3_,
         intadd_3_SUM_2_, intadd_3_SUM_1_, intadd_3_SUM_0_, intadd_3_n20,
         intadd_3_n19, intadd_3_n18, intadd_3_n17, intadd_3_n16, intadd_3_n15,
         intadd_3_n14, intadd_3_n13, intadd_3_n12, intadd_3_n11, intadd_3_n10,
         intadd_3_n9, intadd_3_n8, intadd_3_n7, intadd_3_n6, intadd_3_n5,
         intadd_3_n4, intadd_3_n3, intadd_3_n2, intadd_3_n1, n5, n600, n7, n8,
         n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n601, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1;

  oadm_multilevel_rounding_lut_1 x_rounding_lut ( .level({1'b0, 1'b0}), 
        .index({n87, 1'b0, 1'b0}), .value_low({1'b0, 1'b0, x_mantissa[1:0]}), 
        .x_error({SYNOPSYS_UNCONNECTED__0, x_rounding_error_0_}) );
  oadm_multilevel_rounding_lut_0 y_rounding_lut ( .level({1'b0, 1'b0}), 
        .index({n89, 1'b0, 1'b0}), .value_low({1'b0, 1'b0, y_mantissa[1:0]}), 
        .y_error({SYNOPSYS_UNCONNECTED__1, y_rounding_error_0_}) );
  CMPE42D1 DP_OP_44J1_122_2819_U43 ( .A(DP_OP_44J1_122_2819_n179), .B(N6), .C(
        DP_OP_44J1_122_2819_n158), .CIX(DP_OP_44J1_122_2819_n48), .D(
        DP_OP_44J1_122_2819_n50), .CO(DP_OP_44J1_122_2819_n46), .COX(
        DP_OP_44J1_122_2819_n45), .S(DP_OP_44J1_122_2819_n47) );
  CMPE42D1 DP_OP_44J1_122_2819_U41 ( .A(x_mantissa[21]), .B(
        midpoint_product_7_), .C(n86), .CIX(DP_OP_44J1_122_2819_n43), .D(
        DP_OP_44J1_122_2819_n130), .CO(DP_OP_44J1_122_2819_n40), .COX(
        DP_OP_44J1_122_2819_n39), .S(DP_OP_44J1_122_2819_n41) );
  FA1D0 intadd_1_U26 ( .A(intadd_1_A_0_), .B(intadd_1_B_0_), .CI(intadd_1_CI), 
        .CO(intadd_1_n25), .S(plane_exact[0]) );
  FA1D0 intadd_1_U25 ( .A(intadd_1_A_1_), .B(intadd_1_B_1_), .CI(intadd_1_n25), 
        .CO(intadd_1_n24), .S(plane_exact[1]) );
  FA1D0 intadd_1_U24 ( .A(intadd_1_A_2_), .B(intadd_1_B_2_), .CI(intadd_1_n24), 
        .CO(intadd_1_n23), .S(plane_exact[2]) );
  FA1D0 intadd_1_U23 ( .A(intadd_1_A_3_), .B(intadd_1_B_3_), .CI(intadd_1_n23), 
        .CO(intadd_1_n22), .S(plane_exact[3]) );
  FA1D0 intadd_1_U22 ( .A(intadd_1_A_4_), .B(intadd_1_B_4_), .CI(intadd_1_n22), 
        .CO(intadd_1_n21), .S(plane_exact[4]) );
  FA1D0 intadd_1_U21 ( .A(intadd_1_A_5_), .B(intadd_1_B_5_), .CI(intadd_1_n21), 
        .CO(intadd_1_n20), .S(plane_exact[5]) );
  FA1D0 intadd_1_U20 ( .A(intadd_1_A_6_), .B(intadd_1_B_6_), .CI(intadd_1_n20), 
        .CO(intadd_1_n19), .S(plane_exact[6]) );
  FA1D0 intadd_1_U19 ( .A(intadd_1_A_7_), .B(intadd_1_B_7_), .CI(intadd_1_n19), 
        .CO(intadd_1_n18), .S(plane_exact[7]) );
  FA1D0 intadd_1_U18 ( .A(intadd_1_A_8_), .B(intadd_1_B_8_), .CI(intadd_1_n18), 
        .CO(intadd_1_n17), .S(plane_exact[8]) );
  FA1D0 intadd_1_U17 ( .A(intadd_1_A_9_), .B(intadd_1_B_9_), .CI(intadd_1_n17), 
        .CO(intadd_1_n16), .S(plane_exact[9]) );
  FA1D0 intadd_1_U16 ( .A(intadd_1_A_10_), .B(intadd_1_B_10_), .CI(
        intadd_1_n16), .CO(intadd_1_n15), .S(plane_exact[10]) );
  FA1D0 intadd_1_U15 ( .A(intadd_1_A_11_), .B(intadd_1_B_11_), .CI(
        intadd_1_n15), .CO(intadd_1_n14), .S(plane_exact[11]) );
  FA1D0 intadd_1_U14 ( .A(intadd_1_A_12_), .B(intadd_1_B_12_), .CI(
        intadd_1_n14), .CO(intadd_1_n13), .S(plane_exact[12]) );
  FA1D0 intadd_1_U13 ( .A(intadd_1_A_13_), .B(intadd_1_B_13_), .CI(
        intadd_1_n13), .CO(intadd_1_n12), .S(plane_exact[13]) );
  FA1D0 intadd_1_U12 ( .A(intadd_1_A_14_), .B(intadd_1_B_14_), .CI(
        intadd_1_n12), .CO(intadd_1_n11), .S(plane_exact[14]) );
  FA1D0 intadd_1_U11 ( .A(intadd_1_A_15_), .B(intadd_1_B_15_), .CI(
        intadd_1_n11), .CO(intadd_1_n10), .S(plane_exact[15]) );
  FA1D0 intadd_1_U10 ( .A(intadd_1_A_16_), .B(intadd_1_B_16_), .CI(
        intadd_1_n10), .CO(intadd_1_n9), .S(plane_exact[16]) );
  FA1D0 intadd_1_U9 ( .A(intadd_1_A_17_), .B(intadd_1_B_17_), .CI(intadd_1_n9), 
        .CO(intadd_1_n8), .S(plane_exact[17]) );
  FA1D0 intadd_1_U8 ( .A(intadd_1_A_18_), .B(intadd_1_B_18_), .CI(intadd_1_n8), 
        .CO(intadd_1_n7), .S(plane_exact[18]) );
  FA1D0 intadd_1_U7 ( .A(intadd_1_A_19_), .B(intadd_1_B_19_), .CI(intadd_1_n7), 
        .CO(intadd_1_n6), .S(plane_exact[19]) );
  FA1D0 intadd_1_U6 ( .A(DP_OP_44J1_122_2819_n47), .B(n88), .CI(intadd_1_n6), 
        .CO(intadd_1_n5), .S(plane_exact[20]) );
  FA1D0 intadd_1_U5 ( .A(DP_OP_44J1_122_2819_n44), .B(intadd_1_B_21_), .CI(
        intadd_1_n5), .CO(intadd_1_n4), .S(plane_exact[21]) );
  FA1D0 intadd_1_U4 ( .A(DP_OP_44J1_122_2819_n41), .B(y_mantissa[21]), .CI(
        intadd_1_n4), .CO(intadd_1_n3), .S(plane_exact[22]) );
  FA1D0 intadd_1_U3 ( .A(intadd_1_A_23_), .B(intadd_1_B_23_), .CI(intadd_1_n3), 
        .CO(intadd_1_n2), .S(plane_exact[23]) );
  FA1D0 intadd_1_U2 ( .A(midpoint_product_7_), .B(intadd_1_B_24_), .CI(
        intadd_1_n2), .CO(intadd_1_n1), .S(plane_exact[24]) );
  FA1D0 intadd_2_U21 ( .A(intadd_2_A_0_), .B(intadd_2_B_0_), .CI(intadd_2_CI), 
        .CO(intadd_2_n20), .S(intadd_1_A_1_) );
  FA1D0 intadd_2_U20 ( .A(intadd_2_A_1_), .B(intadd_2_B_1_), .CI(intadd_2_n20), 
        .CO(intadd_2_n19), .S(intadd_1_A_2_) );
  FA1D0 intadd_2_U19 ( .A(intadd_2_A_2_), .B(intadd_2_B_2_), .CI(intadd_2_n19), 
        .CO(intadd_2_n18), .S(intadd_1_A_3_) );
  FA1D0 intadd_2_U18 ( .A(intadd_2_A_3_), .B(intadd_2_B_3_), .CI(intadd_2_n18), 
        .CO(intadd_2_n17), .S(intadd_1_A_4_) );
  FA1D0 intadd_2_U17 ( .A(intadd_2_A_4_), .B(intadd_2_B_4_), .CI(intadd_2_n17), 
        .CO(intadd_2_n16), .S(intadd_1_A_5_) );
  FA1D0 intadd_2_U16 ( .A(intadd_2_A_5_), .B(intadd_2_B_5_), .CI(intadd_2_n16), 
        .CO(intadd_2_n15), .S(intadd_1_A_6_) );
  FA1D0 intadd_2_U15 ( .A(intadd_2_A_6_), .B(intadd_2_B_6_), .CI(intadd_2_n15), 
        .CO(intadd_2_n14), .S(intadd_1_A_7_) );
  FA1D0 intadd_2_U14 ( .A(intadd_2_A_7_), .B(intadd_2_B_7_), .CI(intadd_2_n14), 
        .CO(intadd_2_n13), .S(intadd_1_A_8_) );
  FA1D0 intadd_2_U13 ( .A(intadd_2_A_8_), .B(intadd_2_B_8_), .CI(intadd_2_n13), 
        .CO(intadd_2_n12), .S(intadd_1_A_9_) );
  FA1D0 intadd_2_U12 ( .A(intadd_2_A_9_), .B(intadd_2_B_9_), .CI(intadd_2_n12), 
        .CO(intadd_2_n11), .S(intadd_1_A_10_) );
  FA1D0 intadd_2_U11 ( .A(intadd_2_A_10_), .B(intadd_2_B_10_), .CI(
        intadd_2_n11), .CO(intadd_2_n10), .S(intadd_1_A_11_) );
  FA1D0 intadd_2_U10 ( .A(intadd_2_A_11_), .B(intadd_2_B_11_), .CI(
        intadd_2_n10), .CO(intadd_2_n9), .S(intadd_1_A_12_) );
  FA1D0 intadd_2_U9 ( .A(intadd_2_A_12_), .B(intadd_2_B_12_), .CI(intadd_2_n9), 
        .CO(intadd_2_n8), .S(intadd_1_A_13_) );
  FA1D0 intadd_2_U8 ( .A(intadd_2_A_13_), .B(intadd_2_B_13_), .CI(intadd_2_n8), 
        .CO(intadd_2_n7), .S(intadd_1_A_14_) );
  FA1D0 intadd_2_U7 ( .A(intadd_2_A_14_), .B(intadd_2_B_14_), .CI(intadd_2_n7), 
        .CO(intadd_2_n6), .S(intadd_1_A_15_) );
  FA1D0 intadd_2_U6 ( .A(intadd_2_A_15_), .B(intadd_2_B_15_), .CI(intadd_2_n6), 
        .CO(intadd_2_n5), .S(intadd_1_A_16_) );
  FA1D0 intadd_2_U5 ( .A(intadd_2_A_16_), .B(intadd_2_B_16_), .CI(intadd_2_n5), 
        .CO(intadd_2_n4), .S(intadd_1_A_17_) );
  FA1D0 intadd_2_U4 ( .A(intadd_2_A_17_), .B(intadd_2_B_17_), .CI(intadd_2_n4), 
        .CO(intadd_2_n3), .S(intadd_1_A_18_) );
  FA1D0 intadd_2_U3 ( .A(intadd_2_A_18_), .B(intadd_2_B_18_), .CI(intadd_2_n3), 
        .CO(intadd_2_n2), .S(intadd_1_A_19_) );
  FA1D0 intadd_2_U2 ( .A(intadd_2_B_18_), .B(intadd_2_B_19_), .CI(intadd_2_n2), 
        .CO(intadd_2_n1), .S(DP_OP_44J1_122_2819_n131) );
  FA1D0 intadd_3_U21 ( .A(intadd_3_A_0_), .B(intadd_3_B_0_), .CI(intadd_3_CI), 
        .CO(intadd_3_n20), .S(intadd_3_SUM_0_) );
  FA1D0 intadd_3_U20 ( .A(intadd_3_A_1_), .B(intadd_3_B_1_), .CI(intadd_3_n20), 
        .CO(intadd_3_n19), .S(intadd_3_SUM_1_) );
  FA1D0 intadd_3_U19 ( .A(intadd_3_A_2_), .B(intadd_3_B_2_), .CI(intadd_3_n19), 
        .CO(intadd_3_n18), .S(intadd_3_SUM_2_) );
  FA1D0 intadd_3_U18 ( .A(intadd_3_A_3_), .B(intadd_3_B_3_), .CI(intadd_3_n18), 
        .CO(intadd_3_n17), .S(intadd_3_SUM_3_) );
  FA1D0 intadd_3_U17 ( .A(intadd_3_A_4_), .B(intadd_3_B_4_), .CI(intadd_3_n17), 
        .CO(intadd_3_n16), .S(intadd_3_SUM_4_) );
  FA1D0 intadd_3_U16 ( .A(intadd_3_A_5_), .B(intadd_3_B_5_), .CI(intadd_3_n16), 
        .CO(intadd_3_n15), .S(intadd_3_SUM_5_) );
  FA1D0 intadd_3_U15 ( .A(intadd_3_A_6_), .B(intadd_3_B_6_), .CI(intadd_3_n15), 
        .CO(intadd_3_n14), .S(intadd_3_SUM_6_) );
  FA1D0 intadd_3_U14 ( .A(intadd_3_A_7_), .B(intadd_3_B_7_), .CI(intadd_3_n14), 
        .CO(intadd_3_n13), .S(intadd_3_SUM_7_) );
  FA1D0 intadd_3_U13 ( .A(intadd_3_A_8_), .B(intadd_3_B_8_), .CI(intadd_3_n13), 
        .CO(intadd_3_n12), .S(intadd_3_SUM_8_) );
  FA1D0 intadd_3_U12 ( .A(intadd_3_A_9_), .B(intadd_3_B_9_), .CI(intadd_3_n12), 
        .CO(intadd_3_n11), .S(intadd_3_SUM_9_) );
  FA1D0 intadd_3_U11 ( .A(intadd_3_A_10_), .B(intadd_3_B_10_), .CI(
        intadd_3_n11), .CO(intadd_3_n10), .S(intadd_3_SUM_10_) );
  FA1D0 intadd_3_U10 ( .A(intadd_3_A_11_), .B(intadd_3_B_11_), .CI(
        intadd_3_n10), .CO(intadd_3_n9), .S(intadd_3_SUM_11_) );
  FA1D0 intadd_3_U9 ( .A(intadd_3_A_12_), .B(intadd_3_B_12_), .CI(intadd_3_n9), 
        .CO(intadd_3_n8), .S(intadd_3_SUM_12_) );
  FA1D0 intadd_3_U8 ( .A(intadd_3_A_13_), .B(intadd_3_B_13_), .CI(intadd_3_n8), 
        .CO(intadd_3_n7), .S(intadd_3_SUM_13_) );
  FA1D0 intadd_3_U7 ( .A(intadd_3_A_14_), .B(intadd_3_B_14_), .CI(intadd_3_n7), 
        .CO(intadd_3_n6), .S(intadd_3_SUM_14_) );
  FA1D0 intadd_3_U6 ( .A(intadd_3_A_15_), .B(intadd_3_B_15_), .CI(intadd_3_n6), 
        .CO(intadd_3_n5), .S(intadd_3_SUM_15_) );
  FA1D0 intadd_3_U5 ( .A(intadd_3_A_16_), .B(intadd_3_B_16_), .CI(intadd_3_n5), 
        .CO(intadd_3_n4), .S(intadd_3_SUM_16_) );
  FA1D0 intadd_3_U4 ( .A(intadd_3_A_17_), .B(intadd_3_B_17_), .CI(intadd_3_n4), 
        .CO(intadd_3_n3), .S(intadd_3_SUM_17_) );
  FA1D0 intadd_3_U3 ( .A(intadd_3_A_18_), .B(intadd_3_B_18_), .CI(intadd_3_n3), 
        .CO(intadd_3_n2), .S(intadd_3_SUM_18_) );
  FA1D0 intadd_3_U2 ( .A(intadd_3_A_19_), .B(intadd_3_B_19_), .CI(intadd_3_n2), 
        .CO(intadd_3_n1), .S(intadd_3_SUM_19_) );
  CKND2 U4 ( .I(n85), .ZN(n87) );
  XOR2D0 U5 ( .A1(n71), .A2(DP_OP_44J1_122_2819_n45), .Z(n5) );
  OR2D0 U6 ( .A1(n13), .A2(n5), .Z(n600) );
  INVD1 U7 ( .I(y_mantissa[22]), .ZN(n85) );
  BUFFD1 U8 ( .I(x_mantissa[22]), .Z(n89) );
  INVD1 U9 ( .I(x_mantissa[22]), .ZN(n84) );
  CKND2D0 U10 ( .A1(n84), .A2(n85), .ZN(n16) );
  NR2D0 U11 ( .A1(n16), .A2(intadd_1_n1), .ZN(plane_exact[26]) );
  INVD0 U12 ( .I(y_mantissa[21]), .ZN(intadd_1_A_23_) );
  NR2D0 U13 ( .A1(n87), .A2(x_mantissa[21]), .ZN(n10) );
  AO21D0 U14 ( .A1(n87), .A2(x_mantissa[20]), .B(n10), .Z(n71) );
  CKAN2D0 U15 ( .A1(DP_OP_44J1_122_2819_n45), .A2(n71), .Z(n86) );
  INVD0 U16 ( .I(x_mantissa[19]), .ZN(n63) );
  INVD0 U17 ( .I(x_mantissa[20]), .ZN(n68) );
  AOI22D0 U18 ( .A1(n87), .A2(n63), .B1(n68), .B2(n85), .ZN(
        DP_OP_44J1_122_2819_n158) );
  INVD0 U19 ( .I(intadd_3_n1), .ZN(DP_OP_44J1_122_2819_n48) );
  AO21D0 U20 ( .A1(intadd_1_n1), .A2(n16), .B(plane_exact[26]), .Z(
        plane_exact[25]) );
  INVD0 U21 ( .I(intadd_3_SUM_0_), .ZN(intadd_1_B_0_) );
  MUX2ND0 U22 ( .I0(n84), .I1(n89), .S(y_mantissa[2]), .ZN(n8) );
  INVD0 U23 ( .I(y_mantissa[0]), .ZN(n7) );
  OAI32D0 U24 ( .A1(y_mantissa[0]), .A2(y_mantissa[1]), .A3(n84), .B1(n89), 
        .B2(n7), .ZN(n9) );
  CKND2D0 U25 ( .A1(n8), .A2(n9), .ZN(intadd_2_CI) );
  OAI21D0 U26 ( .A1(n9), .A2(n8), .B(intadd_2_CI), .ZN(intadd_1_A_0_) );
  INVD0 U27 ( .I(intadd_3_SUM_1_), .ZN(intadd_1_B_1_) );
  INVD0 U28 ( .I(intadd_3_SUM_2_), .ZN(intadd_1_B_2_) );
  INVD0 U29 ( .I(intadd_3_SUM_3_), .ZN(intadd_1_B_3_) );
  INVD0 U30 ( .I(intadd_3_SUM_4_), .ZN(intadd_1_B_4_) );
  INVD0 U31 ( .I(intadd_3_SUM_5_), .ZN(intadd_1_B_5_) );
  INVD0 U32 ( .I(intadd_3_SUM_6_), .ZN(intadd_1_B_6_) );
  INVD0 U33 ( .I(intadd_3_SUM_7_), .ZN(intadd_1_B_7_) );
  INVD0 U34 ( .I(intadd_3_SUM_8_), .ZN(intadd_1_B_8_) );
  INVD0 U35 ( .I(intadd_3_SUM_9_), .ZN(intadd_1_B_9_) );
  INVD0 U36 ( .I(intadd_3_SUM_10_), .ZN(intadd_1_B_10_) );
  INVD0 U37 ( .I(intadd_3_SUM_11_), .ZN(intadd_1_B_11_) );
  INVD0 U38 ( .I(intadd_3_SUM_12_), .ZN(intadd_1_B_12_) );
  INVD0 U39 ( .I(intadd_3_SUM_13_), .ZN(intadd_1_B_13_) );
  INVD0 U40 ( .I(intadd_3_SUM_14_), .ZN(intadd_1_B_14_) );
  INVD0 U41 ( .I(intadd_3_SUM_15_), .ZN(intadd_1_B_15_) );
  INVD0 U42 ( .I(intadd_3_SUM_16_), .ZN(intadd_1_B_16_) );
  INVD0 U43 ( .I(intadd_3_SUM_17_), .ZN(intadd_1_B_17_) );
  INVD0 U44 ( .I(intadd_3_SUM_18_), .ZN(intadd_1_B_18_) );
  INVD0 U45 ( .I(intadd_3_SUM_19_), .ZN(intadd_1_B_19_) );
  CKND2D0 U46 ( .A1(x_rounding_error_0_), .A2(y_rounding_error_0_), .ZN(n18)
         );
  OA21D0 U47 ( .A1(x_rounding_error_0_), .A2(y_rounding_error_0_), .B(n18), 
        .Z(intadd_3_CI) );
  CKND2D0 U48 ( .A1(x_mantissa[0]), .A2(n85), .ZN(intadd_3_B_0_) );
  CKND2D0 U49 ( .A1(x_mantissa[2]), .A2(n85), .ZN(n19) );
  OA21D0 U50 ( .A1(x_mantissa[2]), .A2(n85), .B(n19), .Z(intadd_3_A_0_) );
  AOI22D0 U51 ( .A1(n87), .A2(x_mantissa[0]), .B1(x_mantissa[1]), .B2(n85), 
        .ZN(intadd_3_A_1_) );
  MUX2ND0 U52 ( .I0(n85), .I1(n87), .S(x_mantissa[3]), .ZN(n17) );
  NR2D0 U53 ( .A1(n17), .A2(n18), .ZN(intadd_3_A_2_) );
  AOI21D0 U54 ( .A1(x_mantissa[21]), .A2(n87), .B(n10), .ZN(
        DP_OP_44J1_122_2819_n179) );
  AOI22D0 U55 ( .A1(n87), .A2(x_mantissa[18]), .B1(x_mantissa[19]), .B2(n85), 
        .ZN(n11) );
  NR2D0 U56 ( .A1(DP_OP_44J1_122_2819_n179), .A2(n11), .ZN(
        DP_OP_44J1_122_2819_n50) );
  AO21D0 U57 ( .A1(n11), .A2(DP_OP_44J1_122_2819_n179), .B(
        DP_OP_44J1_122_2819_n50), .Z(intadd_3_B_19_) );
  INVD0 U58 ( .I(DP_OP_44J1_122_2819_n131), .ZN(n88) );
  INVD0 U59 ( .I(y_mantissa[20]), .ZN(n15) );
  OAI221D0 U60 ( .A1(y_mantissa[21]), .A2(y_mantissa[20]), .B1(intadd_1_A_23_), 
        .B2(n15), .C(n89), .ZN(n12) );
  XNR2D0 U61 ( .A1(intadd_2_n1), .A2(n12), .ZN(DP_OP_44J1_122_2819_n130) );
  INVD0 U62 ( .I(DP_OP_44J1_122_2819_n130), .ZN(intadd_1_B_21_) );
  XNR2D0 U63 ( .A1(DP_OP_44J1_122_2819_n46), .A2(DP_OP_44J1_122_2819_n131), 
        .ZN(n13) );
  CKND2D0 U64 ( .A1(n13), .A2(n5), .ZN(n14) );
  CKND2D0 U65 ( .A1(n14), .A2(n600), .ZN(DP_OP_44J1_122_2819_n44) );
  AOI22D0 U66 ( .A1(n89), .A2(y_mantissa[0]), .B1(y_mantissa[1]), .B2(n84), 
        .ZN(intadd_2_A_0_) );
  AOI22D0 U67 ( .A1(n89), .A2(y_mantissa[1]), .B1(y_mantissa[2]), .B2(n84), 
        .ZN(intadd_2_A_1_) );
  AOI22D0 U68 ( .A1(n89), .A2(y_mantissa[2]), .B1(y_mantissa[3]), .B2(n84), 
        .ZN(intadd_2_A_2_) );
  AOI22D0 U69 ( .A1(n89), .A2(y_mantissa[3]), .B1(y_mantissa[4]), .B2(n84), 
        .ZN(intadd_2_A_3_) );
  AOI22D0 U70 ( .A1(n89), .A2(y_mantissa[4]), .B1(y_mantissa[5]), .B2(n84), 
        .ZN(intadd_2_A_4_) );
  AOI22D0 U71 ( .A1(n89), .A2(y_mantissa[5]), .B1(y_mantissa[6]), .B2(n84), 
        .ZN(intadd_2_A_5_) );
  AOI22D0 U72 ( .A1(n89), .A2(y_mantissa[6]), .B1(y_mantissa[7]), .B2(n84), 
        .ZN(intadd_2_A_6_) );
  AOI22D0 U73 ( .A1(n89), .A2(y_mantissa[7]), .B1(y_mantissa[8]), .B2(n84), 
        .ZN(intadd_2_A_7_) );
  AOI22D0 U74 ( .A1(n89), .A2(y_mantissa[8]), .B1(y_mantissa[9]), .B2(n84), 
        .ZN(intadd_2_A_8_) );
  AOI22D0 U75 ( .A1(n89), .A2(y_mantissa[9]), .B1(y_mantissa[10]), .B2(n84), 
        .ZN(intadd_2_A_9_) );
  AOI22D0 U76 ( .A1(n89), .A2(y_mantissa[10]), .B1(y_mantissa[11]), .B2(n84), 
        .ZN(intadd_2_A_10_) );
  AOI22D0 U77 ( .A1(n89), .A2(y_mantissa[11]), .B1(y_mantissa[12]), .B2(n84), 
        .ZN(intadd_2_A_11_) );
  AOI22D0 U78 ( .A1(n89), .A2(y_mantissa[12]), .B1(y_mantissa[13]), .B2(n84), 
        .ZN(intadd_2_A_12_) );
  AOI22D0 U79 ( .A1(n89), .A2(y_mantissa[13]), .B1(y_mantissa[14]), .B2(n84), 
        .ZN(intadd_2_A_13_) );
  AOI22D0 U80 ( .A1(n89), .A2(y_mantissa[14]), .B1(y_mantissa[15]), .B2(n84), 
        .ZN(intadd_2_A_14_) );
  AOI22D0 U81 ( .A1(n89), .A2(y_mantissa[15]), .B1(y_mantissa[16]), .B2(n84), 
        .ZN(intadd_2_A_15_) );
  AOI22D0 U82 ( .A1(n89), .A2(y_mantissa[16]), .B1(y_mantissa[17]), .B2(n84), 
        .ZN(intadd_2_A_16_) );
  AOI22D0 U83 ( .A1(n89), .A2(n15), .B1(y_mantissa[20]), .B2(n84), .ZN(
        intadd_2_B_17_) );
  AOI22D0 U84 ( .A1(n89), .A2(y_mantissa[17]), .B1(y_mantissa[18]), .B2(n84), 
        .ZN(intadd_2_A_17_) );
  AOI22D0 U85 ( .A1(n89), .A2(y_mantissa[18]), .B1(y_mantissa[19]), .B2(n84), 
        .ZN(intadd_2_A_18_) );
  AOI22D0 U86 ( .A1(n89), .A2(y_mantissa[19]), .B1(y_mantissa[20]), .B2(n84), 
        .ZN(intadd_2_B_19_) );
  AOI22D0 U87 ( .A1(n89), .A2(y_mantissa[21]), .B1(intadd_1_A_23_), .B2(n84), 
        .ZN(intadd_2_B_18_) );
  INVD0 U88 ( .I(n16), .ZN(midpoint_product_7_) );
  AOI21D0 U89 ( .A1(n87), .A2(n89), .B(midpoint_product_7_), .ZN(N6) );
  AOI21D0 U90 ( .A1(n18), .A2(n17), .B(intadd_3_A_2_), .ZN(intadd_3_B_1_) );
  INVD0 U91 ( .I(x_mantissa[4]), .ZN(n26) );
  OAI33D0 U92 ( .A1(x_mantissa[4]), .A2(x_mantissa[2]), .A3(n87), .B1(n26), 
        .B2(x_mantissa[1]), .B3(n85), .ZN(intadd_3_A_3_) );
  IOA21D0 U93 ( .A1(n87), .A2(x_mantissa[1]), .B(n19), .ZN(n21) );
  MUX2ND0 U94 ( .I0(n87), .I1(n85), .S(n26), .ZN(n20) );
  AOI21D0 U95 ( .A1(n21), .A2(n20), .B(intadd_3_A_3_), .ZN(intadd_3_B_2_) );
  INVD0 U96 ( .I(x_mantissa[5]), .ZN(n29) );
  OAI33D0 U97 ( .A1(x_mantissa[5]), .A2(x_mantissa[3]), .A3(n87), .B1(n29), 
        .B2(x_mantissa[2]), .B3(n85), .ZN(intadd_3_A_4_) );
  MUX2D0 U98 ( .I0(x_mantissa[2]), .I1(x_mantissa[3]), .S(n85), .Z(n23) );
  MUX2ND0 U99 ( .I0(n87), .I1(n85), .S(n29), .ZN(n22) );
  AOI21D0 U100 ( .A1(n23), .A2(n22), .B(intadd_3_A_4_), .ZN(intadd_3_B_3_) );
  INVD0 U101 ( .I(x_mantissa[6]), .ZN(n32) );
  OAI33D0 U102 ( .A1(x_mantissa[6]), .A2(x_mantissa[4]), .A3(n87), .B1(n32), 
        .B2(x_mantissa[3]), .B3(n85), .ZN(intadd_3_A_5_) );
  MUX2D0 U103 ( .I0(x_mantissa[3]), .I1(x_mantissa[4]), .S(n85), .Z(n25) );
  MUX2ND0 U104 ( .I0(n87), .I1(n85), .S(n32), .ZN(n24) );
  AOI21D0 U105 ( .A1(n25), .A2(n24), .B(intadd_3_A_5_), .ZN(intadd_3_B_4_) );
  INVD0 U106 ( .I(x_mantissa[7]), .ZN(n35) );
  OAI33D0 U107 ( .A1(x_mantissa[7]), .A2(x_mantissa[5]), .A3(n87), .B1(n35), 
        .B2(x_mantissa[4]), .B3(n85), .ZN(intadd_3_A_6_) );
  MUX2ND0 U108 ( .I0(n29), .I1(n26), .S(n87), .ZN(n28) );
  MUX2ND0 U109 ( .I0(n87), .I1(n85), .S(n35), .ZN(n27) );
  AOI21D0 U110 ( .A1(n28), .A2(n27), .B(intadd_3_A_6_), .ZN(intadd_3_B_5_) );
  INVD0 U111 ( .I(x_mantissa[8]), .ZN(n38) );
  OAI33D0 U112 ( .A1(x_mantissa[8]), .A2(x_mantissa[6]), .A3(n87), .B1(n38), 
        .B2(x_mantissa[5]), .B3(n85), .ZN(intadd_3_A_7_) );
  MUX2ND0 U113 ( .I0(n32), .I1(n29), .S(n87), .ZN(n31) );
  MUX2ND0 U114 ( .I0(n87), .I1(n85), .S(n38), .ZN(n30) );
  AOI21D0 U115 ( .A1(n31), .A2(n30), .B(intadd_3_A_7_), .ZN(intadd_3_B_6_) );
  INVD0 U116 ( .I(x_mantissa[9]), .ZN(n41) );
  OAI33D0 U117 ( .A1(x_mantissa[9]), .A2(x_mantissa[7]), .A3(n87), .B1(n41), 
        .B2(x_mantissa[6]), .B3(n85), .ZN(intadd_3_A_8_) );
  MUX2ND0 U118 ( .I0(n35), .I1(n32), .S(n87), .ZN(n34) );
  MUX2ND0 U119 ( .I0(n87), .I1(n85), .S(n41), .ZN(n33) );
  AOI21D0 U120 ( .A1(n34), .A2(n33), .B(intadd_3_A_8_), .ZN(intadd_3_B_7_) );
  INVD0 U121 ( .I(x_mantissa[10]), .ZN(n44) );
  OAI33D0 U122 ( .A1(x_mantissa[10]), .A2(x_mantissa[8]), .A3(n87), .B1(n44), 
        .B2(x_mantissa[7]), .B3(n85), .ZN(intadd_3_A_9_) );
  MUX2ND0 U123 ( .I0(n38), .I1(n35), .S(n87), .ZN(n37) );
  MUX2ND0 U124 ( .I0(n87), .I1(n85), .S(n44), .ZN(n36) );
  AOI21D0 U125 ( .A1(n37), .A2(n36), .B(intadd_3_A_9_), .ZN(intadd_3_B_8_) );
  INVD0 U126 ( .I(x_mantissa[11]), .ZN(n47) );
  OAI33D0 U127 ( .A1(x_mantissa[11]), .A2(x_mantissa[9]), .A3(n87), .B1(n47), 
        .B2(x_mantissa[8]), .B3(n85), .ZN(intadd_3_A_10_) );
  MUX2ND0 U128 ( .I0(n41), .I1(n38), .S(n87), .ZN(n40) );
  MUX2ND0 U129 ( .I0(n87), .I1(n85), .S(n47), .ZN(n39) );
  AOI21D0 U130 ( .A1(n40), .A2(n39), .B(intadd_3_A_10_), .ZN(intadd_3_B_9_) );
  INVD0 U131 ( .I(x_mantissa[12]), .ZN(n50) );
  OAI33D0 U132 ( .A1(x_mantissa[12]), .A2(x_mantissa[10]), .A3(n87), .B1(n50), 
        .B2(x_mantissa[9]), .B3(n85), .ZN(intadd_3_A_11_) );
  MUX2ND0 U133 ( .I0(n44), .I1(n41), .S(n87), .ZN(n43) );
  MUX2ND0 U134 ( .I0(n87), .I1(n85), .S(n50), .ZN(n42) );
  AOI21D0 U135 ( .A1(n43), .A2(n42), .B(intadd_3_A_11_), .ZN(intadd_3_B_10_)
         );
  INVD0 U136 ( .I(x_mantissa[13]), .ZN(n53) );
  OAI33D0 U137 ( .A1(x_mantissa[13]), .A2(x_mantissa[11]), .A3(n87), .B1(n53), 
        .B2(x_mantissa[10]), .B3(n85), .ZN(intadd_3_A_12_) );
  MUX2ND0 U138 ( .I0(n47), .I1(n44), .S(n87), .ZN(n46) );
  MUX2ND0 U139 ( .I0(n87), .I1(n85), .S(n53), .ZN(n45) );
  AOI21D0 U140 ( .A1(n46), .A2(n45), .B(intadd_3_A_12_), .ZN(intadd_3_B_11_)
         );
  INVD0 U141 ( .I(x_mantissa[14]), .ZN(n56) );
  OAI33D0 U142 ( .A1(x_mantissa[14]), .A2(x_mantissa[12]), .A3(n87), .B1(n56), 
        .B2(x_mantissa[11]), .B3(n85), .ZN(intadd_3_A_13_) );
  MUX2ND0 U143 ( .I0(n50), .I1(n47), .S(n87), .ZN(n49) );
  MUX2ND0 U144 ( .I0(n87), .I1(n85), .S(n56), .ZN(n48) );
  AOI21D0 U145 ( .A1(n49), .A2(n48), .B(intadd_3_A_13_), .ZN(intadd_3_B_12_)
         );
  INVD0 U146 ( .I(x_mantissa[15]), .ZN(n59) );
  OAI33D0 U147 ( .A1(x_mantissa[15]), .A2(x_mantissa[13]), .A3(n87), .B1(n59), 
        .B2(x_mantissa[12]), .B3(n85), .ZN(intadd_3_A_14_) );
  MUX2ND0 U148 ( .I0(n53), .I1(n50), .S(n87), .ZN(n52) );
  MUX2ND0 U149 ( .I0(n87), .I1(n85), .S(n59), .ZN(n51) );
  AOI21D0 U150 ( .A1(n52), .A2(n51), .B(intadd_3_A_14_), .ZN(intadd_3_B_13_)
         );
  INVD0 U151 ( .I(x_mantissa[16]), .ZN(n62) );
  OAI33D0 U152 ( .A1(x_mantissa[16]), .A2(x_mantissa[14]), .A3(n87), .B1(n62), 
        .B2(x_mantissa[13]), .B3(n85), .ZN(intadd_3_A_15_) );
  MUX2ND0 U153 ( .I0(n56), .I1(n53), .S(n87), .ZN(n55) );
  MUX2ND0 U154 ( .I0(n87), .I1(n85), .S(n62), .ZN(n54) );
  AOI21D0 U155 ( .A1(n55), .A2(n54), .B(intadd_3_A_15_), .ZN(intadd_3_B_14_)
         );
  INVD0 U156 ( .I(x_mantissa[17]), .ZN(n66) );
  OAI33D0 U157 ( .A1(x_mantissa[17]), .A2(x_mantissa[15]), .A3(n87), .B1(n66), 
        .B2(x_mantissa[14]), .B3(n85), .ZN(intadd_3_A_16_) );
  MUX2ND0 U158 ( .I0(n59), .I1(n56), .S(n87), .ZN(n58) );
  MUX2ND0 U159 ( .I0(n87), .I1(n85), .S(n66), .ZN(n57) );
  AOI21D0 U160 ( .A1(n58), .A2(n57), .B(intadd_3_A_16_), .ZN(intadd_3_B_15_)
         );
  INVD0 U161 ( .I(x_mantissa[18]), .ZN(n67) );
  OAI33D0 U162 ( .A1(x_mantissa[18]), .A2(x_mantissa[16]), .A3(n87), .B1(n67), 
        .B2(x_mantissa[15]), .B3(n85), .ZN(intadd_3_A_17_) );
  MUX2ND0 U163 ( .I0(n62), .I1(n59), .S(n87), .ZN(n61) );
  MUX2ND0 U164 ( .I0(n87), .I1(n85), .S(n67), .ZN(n601) );
  AOI21D0 U165 ( .A1(n61), .A2(n601), .B(intadd_3_A_17_), .ZN(intadd_3_B_16_)
         );
  OAI33D0 U166 ( .A1(x_mantissa[19]), .A2(x_mantissa[17]), .A3(n87), .B1(n63), 
        .B2(x_mantissa[16]), .B3(n85), .ZN(intadd_3_A_18_) );
  MUX2ND0 U167 ( .I0(n66), .I1(n62), .S(n87), .ZN(n65) );
  MUX2ND0 U168 ( .I0(n87), .I1(n85), .S(n63), .ZN(n64) );
  AOI21D0 U169 ( .A1(n65), .A2(n64), .B(intadd_3_A_18_), .ZN(intadd_3_B_17_)
         );
  OAI33D0 U170 ( .A1(n87), .A2(x_mantissa[18]), .A3(x_mantissa[20]), .B1(n85), 
        .B2(x_mantissa[17]), .B3(n68), .ZN(intadd_3_A_19_) );
  MUX2ND0 U171 ( .I0(n67), .I1(n66), .S(n87), .ZN(n70) );
  MUX2ND0 U172 ( .I0(n87), .I1(n85), .S(n68), .ZN(n69) );
  AOI21D0 U173 ( .A1(n70), .A2(n69), .B(intadd_3_A_19_), .ZN(intadd_3_B_18_)
         );
  INVD0 U174 ( .I(DP_OP_44J1_122_2819_n45), .ZN(n73) );
  CKND2D0 U175 ( .A1(n73), .A2(DP_OP_44J1_122_2819_n131), .ZN(n72) );
  INVD0 U176 ( .I(n71), .ZN(n77) );
  NR2D0 U177 ( .A1(n72), .A2(n77), .ZN(n82) );
  INVD0 U178 ( .I(DP_OP_44J1_122_2819_n46), .ZN(n76) );
  CKND2D0 U179 ( .A1(n73), .A2(DP_OP_44J1_122_2819_n46), .ZN(n74) );
  NR2D0 U180 ( .A1(n74), .A2(n77), .ZN(n75) );
  IAO21D0 U181 ( .A1(n76), .A2(n88), .B(n75), .ZN(n81) );
  AN3D0 U182 ( .A1(DP_OP_44J1_122_2819_n131), .A2(n77), .A3(
        DP_OP_44J1_122_2819_n45), .Z(n79) );
  AN3D0 U183 ( .A1(DP_OP_44J1_122_2819_n46), .A2(n77), .A3(
        DP_OP_44J1_122_2819_n45), .Z(n78) );
  NR2D0 U184 ( .A1(n79), .A2(n78), .ZN(n80) );
  IND3D0 U185 ( .A1(n82), .B1(n81), .B2(n80), .ZN(DP_OP_44J1_122_2819_n43) );
  INVD0 U186 ( .I(N6), .ZN(n83) );
  FA1D0 U187 ( .A(DP_OP_44J1_122_2819_n40), .B(DP_OP_44J1_122_2819_n39), .CI(
        n83), .CO(intadd_1_B_24_), .S(intadd_1_B_23_) );
  MUX2ND0 U188 ( .I0(n89), .I1(n84), .S(y_mantissa[3]), .ZN(intadd_2_B_0_) );
  MUX2ND0 U189 ( .I0(n89), .I1(n84), .S(y_mantissa[4]), .ZN(intadd_2_B_1_) );
  MUX2ND0 U190 ( .I0(n89), .I1(n84), .S(y_mantissa[5]), .ZN(intadd_2_B_2_) );
  MUX2ND0 U191 ( .I0(n89), .I1(n84), .S(y_mantissa[6]), .ZN(intadd_2_B_3_) );
  MUX2ND0 U192 ( .I0(n89), .I1(n84), .S(y_mantissa[7]), .ZN(intadd_2_B_4_) );
  MUX2ND0 U193 ( .I0(n89), .I1(n84), .S(y_mantissa[8]), .ZN(intadd_2_B_5_) );
  MUX2ND0 U194 ( .I0(n89), .I1(n84), .S(y_mantissa[9]), .ZN(intadd_2_B_6_) );
  MUX2ND0 U195 ( .I0(n89), .I1(n84), .S(y_mantissa[10]), .ZN(intadd_2_B_7_) );
  MUX2ND0 U196 ( .I0(n89), .I1(n84), .S(y_mantissa[11]), .ZN(intadd_2_B_8_) );
  MUX2ND0 U197 ( .I0(n89), .I1(n84), .S(y_mantissa[12]), .ZN(intadd_2_B_9_) );
  MUX2ND0 U198 ( .I0(n89), .I1(n84), .S(y_mantissa[13]), .ZN(intadd_2_B_10_)
         );
  MUX2ND0 U199 ( .I0(n89), .I1(n84), .S(y_mantissa[14]), .ZN(intadd_2_B_11_)
         );
  MUX2ND0 U200 ( .I0(n89), .I1(n84), .S(y_mantissa[15]), .ZN(intadd_2_B_12_)
         );
  MUX2ND0 U201 ( .I0(n89), .I1(n84), .S(y_mantissa[16]), .ZN(intadd_2_B_13_)
         );
  MUX2ND0 U202 ( .I0(n89), .I1(n84), .S(y_mantissa[17]), .ZN(intadd_2_B_14_)
         );
  MUX2ND0 U203 ( .I0(n89), .I1(n84), .S(y_mantissa[18]), .ZN(intadd_2_B_15_)
         );
  MUX2ND0 U204 ( .I0(n89), .I1(n84), .S(y_mantissa[19]), .ZN(intadd_2_B_16_)
         );
  NR3D0 U205 ( .A1(x_mantissa[1]), .A2(x_mantissa[0]), .A3(n85), .ZN(
        intadd_1_CI) );
endmodule


module oadm_multilevel_opt_FIXED_LEVEL1_FP_STYLE1 ( x, y, level, divide_mode, 
        result );
  input [31:0] x;
  input [31:0] y;
  input [1:0] level;
  output [31:0] result;
  input divide_mode;
  wire   N31, N32, N33, N34, N35, N36, N37, C5_DATA2_0, C5_DATA2_1, C5_DATA2_2,
         C5_DATA2_3, C5_DATA2_4, C5_DATA2_5, C5_DATA2_6, mult_x_2_n200,
         mult_x_2_n199, mult_x_2_n198, mult_x_2_n197, mult_x_2_n196,
         mult_x_2_n195, mult_x_2_n194, mult_x_2_n193, mult_x_2_n192,
         mult_x_2_n191, mult_x_2_n190, mult_x_2_n189, mult_x_2_n188,
         mult_x_2_n187, mult_x_2_n186, mult_x_2_n185, mult_x_2_n184,
         mult_x_2_n183, mult_x_2_n182, mult_x_2_n181, mult_x_2_n180,
         mult_x_2_n179, mult_x_2_n178, mult_x_2_n174, mult_x_2_n173,
         mult_x_2_n172, mult_x_2_n171, mult_x_2_n170, mult_x_2_n169,
         mult_x_2_n168, mult_x_2_n167, mult_x_2_n166, mult_x_2_n165,
         mult_x_2_n164, mult_x_2_n163, mult_x_2_n162, mult_x_2_n161,
         mult_x_2_n160, mult_x_2_n159, mult_x_2_n158, mult_x_2_n157,
         mult_x_2_n156, mult_x_2_n155, mult_x_2_n154, mult_x_2_n153,
         mult_x_2_n152, mult_x_2_n149, mult_x_2_n148, mult_x_2_n147,
         mult_x_2_n146, mult_x_2_n145, mult_x_2_n144, mult_x_2_n143,
         mult_x_2_n142, mult_x_2_n141, mult_x_2_n140, mult_x_2_n139,
         mult_x_2_n138, mult_x_2_n137, mult_x_2_n136, mult_x_2_n135,
         mult_x_2_n134, mult_x_2_n133, mult_x_2_n132, mult_x_2_n131,
         mult_x_2_n130, mult_x_2_n129, mult_x_2_n128, mult_x_2_n127,
         mult_x_2_n117, mult_x_2_n114, mult_x_2_n113, mult_x_2_n112,
         mult_x_2_n111, mult_x_2_n110, mult_x_2_n109, mult_x_2_n108,
         mult_x_2_n107, mult_x_2_n106, mult_x_2_n105, mult_x_2_n104,
         mult_x_2_n103, mult_x_2_n102, mult_x_2_n101, mult_x_2_n100,
         mult_x_2_n99, mult_x_2_n98, mult_x_2_n97, mult_x_2_n96, mult_x_2_n95,
         mult_x_2_n94, mult_x_2_n93, mult_x_2_n92, mult_x_2_n91, mult_x_2_n90,
         mult_x_2_n89, mult_x_2_n88, mult_x_2_n87, mult_x_2_n86, mult_x_2_n85,
         mult_x_2_n84, mult_x_2_n83, mult_x_2_n82, mult_x_2_n81, mult_x_2_n80,
         mult_x_2_n79, mult_x_2_n78, mult_x_2_n77, mult_x_2_n76, mult_x_2_n75,
         mult_x_2_n74, mult_x_2_n73, mult_x_2_n72, mult_x_2_n71, mult_x_2_n70,
         mult_x_2_n69, mult_x_2_n68, mult_x_2_n67, mult_x_2_n66, mult_x_2_n65,
         mult_x_2_n64, mult_x_2_n63, mult_x_2_n62, mult_x_2_n61, mult_x_2_n60,
         mult_x_2_n59, mult_x_2_n58, mult_x_2_n57, mult_x_2_n56, mult_x_2_n55,
         mult_x_2_n54, mult_x_2_n53, mult_x_2_n52, mult_x_2_n50, mult_x_2_n49,
         mult_x_2_n48, mult_x_2_n45, mult_x_2_n44, mult_x_2_n43, C1_Z_0,
         DP_OP_43J1_125_5546_n27, DP_OP_43J1_125_5546_n26,
         DP_OP_43J1_125_5546_n25, DP_OP_43J1_125_5546_n24,
         DP_OP_43J1_125_5546_n23, DP_OP_43J1_125_5546_n22,
         DP_OP_43J1_125_5546_n21, DP_OP_43J1_125_5546_n20,
         DP_OP_43J1_125_5546_n19, DP_OP_43J1_125_5546_n18,
         DP_OP_43J1_125_5546_n17, DP_OP_43J1_125_5546_n16,
         DP_OP_43J1_125_5546_n15, DP_OP_43J1_125_5546_n14,
         DP_OP_43J1_125_5546_n12, DP_OP_43J1_125_5546_n8,
         DP_OP_43J1_125_5546_n7, DP_OP_43J1_125_5546_n6,
         DP_OP_43J1_125_5546_n5, DP_OP_43J1_125_5546_n4,
         DP_OP_43J1_125_5546_n3, DP_OP_43J1_125_5546_n2, intadd_0_A_23_,
         intadd_0_A_22_, intadd_0_A_21_, intadd_0_A_20_, intadd_0_A_19_,
         intadd_0_A_18_, intadd_0_A_17_, intadd_0_A_16_, intadd_0_A_15_,
         intadd_0_A_14_, intadd_0_A_13_, intadd_0_A_12_, intadd_0_A_11_,
         intadd_0_A_10_, intadd_0_A_9_, intadd_0_A_8_, intadd_0_A_7_,
         intadd_0_A_6_, intadd_0_A_5_, intadd_0_A_4_, intadd_0_A_3_,
         intadd_0_A_2_, intadd_0_A_1_, intadd_0_A_0_, intadd_0_B_23_,
         intadd_0_B_22_, intadd_0_B_21_, intadd_0_B_20_, intadd_0_B_19_,
         intadd_0_B_18_, intadd_0_B_17_, intadd_0_B_16_, intadd_0_B_15_,
         intadd_0_B_14_, intadd_0_B_13_, intadd_0_B_12_, intadd_0_B_11_,
         intadd_0_B_10_, intadd_0_B_9_, intadd_0_B_8_, intadd_0_B_7_,
         intadd_0_B_6_, intadd_0_B_5_, intadd_0_B_4_, intadd_0_B_3_,
         intadd_0_B_2_, intadd_0_B_1_, intadd_0_B_0_, intadd_0_CI,
         intadd_0_SUM_23_, intadd_0_SUM_22_, intadd_0_SUM_21_,
         intadd_0_SUM_20_, intadd_0_SUM_19_, intadd_0_SUM_18_,
         intadd_0_SUM_17_, intadd_0_SUM_16_, intadd_0_SUM_15_,
         intadd_0_SUM_14_, intadd_0_SUM_13_, intadd_0_SUM_12_,
         intadd_0_SUM_11_, intadd_0_SUM_10_, intadd_0_SUM_9_, intadd_0_SUM_8_,
         intadd_0_SUM_7_, intadd_0_SUM_6_, intadd_0_SUM_5_, intadd_0_SUM_4_,
         intadd_0_SUM_3_, intadd_0_SUM_2_, intadd_0_SUM_1_, intadd_0_SUM_0_,
         intadd_0_n24, intadd_0_n23, intadd_0_n22, intadd_0_n21, intadd_0_n20,
         intadd_0_n19, intadd_0_n18, intadd_0_n17, intadd_0_n16, intadd_0_n15,
         intadd_0_n14, intadd_0_n13, intadd_0_n12, intadd_0_n11, intadd_0_n10,
         intadd_0_n9, intadd_0_n8, intadd_0_n7, intadd_0_n6, intadd_0_n5,
         intadd_0_n4, intadd_0_n3, intadd_0_n2, intadd_0_n1, n26, n27, n28,
         n29, n30, n310, n320, n330, n340, n350, n360, n370, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138;
  wire   [26:0] plane_full;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1;

  oadm_fixed_plane_centered_LEVEL1 fixed_centered_plane_plane ( .x_mantissa({
        1'b0, x[22:0]}), .y_mantissa({1'b0, n137, y[21:0]}), .divide_mode(1'b0), .plane_exact({SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, plane_full})
         );
  CMPE42D1 mult_x_2_U66 ( .A(mult_x_2_n149), .B(plane_full[6]), .C(
        mult_x_2_n174), .CIX(mult_x_2_n200), .D(mult_x_2_n117), .CO(
        mult_x_2_n113), .COX(mult_x_2_n112), .S(mult_x_2_n114) );
  CMPE42D1 mult_x_2_U65 ( .A(mult_x_2_n148), .B(plane_full[7]), .C(
        mult_x_2_n173), .CIX(mult_x_2_n112), .D(mult_x_2_n199), .CO(
        mult_x_2_n110), .COX(mult_x_2_n109), .S(mult_x_2_n111) );
  CMPE42D1 mult_x_2_U64 ( .A(mult_x_2_n147), .B(plane_full[8]), .C(
        mult_x_2_n172), .CIX(mult_x_2_n109), .D(mult_x_2_n198), .CO(
        mult_x_2_n107), .COX(mult_x_2_n106), .S(mult_x_2_n108) );
  CMPE42D1 mult_x_2_U63 ( .A(mult_x_2_n146), .B(plane_full[9]), .C(
        mult_x_2_n171), .CIX(mult_x_2_n106), .D(mult_x_2_n197), .CO(
        mult_x_2_n104), .COX(mult_x_2_n103), .S(mult_x_2_n105) );
  CMPE42D1 mult_x_2_U62 ( .A(mult_x_2_n145), .B(plane_full[10]), .C(
        mult_x_2_n170), .CIX(mult_x_2_n103), .D(mult_x_2_n196), .CO(
        mult_x_2_n101), .COX(mult_x_2_n100), .S(mult_x_2_n102) );
  CMPE42D1 mult_x_2_U61 ( .A(mult_x_2_n144), .B(plane_full[11]), .C(
        mult_x_2_n169), .CIX(mult_x_2_n100), .D(mult_x_2_n195), .CO(
        mult_x_2_n98), .COX(mult_x_2_n97), .S(mult_x_2_n99) );
  CMPE42D1 mult_x_2_U60 ( .A(mult_x_2_n143), .B(plane_full[12]), .C(
        mult_x_2_n168), .CIX(mult_x_2_n97), .D(mult_x_2_n194), .CO(
        mult_x_2_n95), .COX(mult_x_2_n94), .S(mult_x_2_n96) );
  CMPE42D1 mult_x_2_U59 ( .A(mult_x_2_n142), .B(plane_full[13]), .C(
        mult_x_2_n167), .CIX(mult_x_2_n94), .D(mult_x_2_n193), .CO(
        mult_x_2_n92), .COX(mult_x_2_n91), .S(mult_x_2_n93) );
  CMPE42D1 mult_x_2_U58 ( .A(mult_x_2_n141), .B(plane_full[14]), .C(
        mult_x_2_n166), .CIX(mult_x_2_n91), .D(mult_x_2_n192), .CO(
        mult_x_2_n89), .COX(mult_x_2_n88), .S(mult_x_2_n90) );
  CMPE42D1 mult_x_2_U57 ( .A(mult_x_2_n140), .B(plane_full[15]), .C(
        mult_x_2_n165), .CIX(mult_x_2_n88), .D(mult_x_2_n191), .CO(
        mult_x_2_n86), .COX(mult_x_2_n85), .S(mult_x_2_n87) );
  CMPE42D1 mult_x_2_U56 ( .A(mult_x_2_n139), .B(plane_full[16]), .C(
        mult_x_2_n164), .CIX(mult_x_2_n85), .D(mult_x_2_n190), .CO(
        mult_x_2_n83), .COX(mult_x_2_n82), .S(mult_x_2_n84) );
  CMPE42D1 mult_x_2_U55 ( .A(mult_x_2_n138), .B(plane_full[17]), .C(
        mult_x_2_n163), .CIX(mult_x_2_n82), .D(mult_x_2_n189), .CO(
        mult_x_2_n80), .COX(mult_x_2_n79), .S(mult_x_2_n81) );
  CMPE42D1 mult_x_2_U54 ( .A(mult_x_2_n137), .B(plane_full[18]), .C(
        mult_x_2_n162), .CIX(mult_x_2_n79), .D(mult_x_2_n188), .CO(
        mult_x_2_n77), .COX(mult_x_2_n76), .S(mult_x_2_n78) );
  CMPE42D1 mult_x_2_U53 ( .A(mult_x_2_n136), .B(plane_full[19]), .C(
        mult_x_2_n161), .CIX(mult_x_2_n76), .D(mult_x_2_n187), .CO(
        mult_x_2_n74), .COX(mult_x_2_n73), .S(mult_x_2_n75) );
  CMPE42D1 mult_x_2_U52 ( .A(mult_x_2_n135), .B(plane_full[20]), .C(
        mult_x_2_n160), .CIX(mult_x_2_n73), .D(mult_x_2_n186), .CO(
        mult_x_2_n71), .COX(mult_x_2_n70), .S(mult_x_2_n72) );
  CMPE42D1 mult_x_2_U51 ( .A(mult_x_2_n134), .B(plane_full[21]), .C(
        mult_x_2_n159), .CIX(mult_x_2_n70), .D(mult_x_2_n185), .CO(
        mult_x_2_n68), .COX(mult_x_2_n67), .S(mult_x_2_n69) );
  CMPE42D1 mult_x_2_U50 ( .A(mult_x_2_n133), .B(plane_full[22]), .C(
        mult_x_2_n158), .CIX(mult_x_2_n67), .D(mult_x_2_n184), .CO(
        mult_x_2_n65), .COX(mult_x_2_n64), .S(mult_x_2_n66) );
  CMPE42D1 mult_x_2_U49 ( .A(mult_x_2_n132), .B(plane_full[23]), .C(
        mult_x_2_n157), .CIX(mult_x_2_n64), .D(mult_x_2_n183), .CO(
        mult_x_2_n62), .COX(mult_x_2_n61), .S(mult_x_2_n63) );
  CMPE42D1 mult_x_2_U48 ( .A(mult_x_2_n131), .B(plane_full[24]), .C(
        mult_x_2_n156), .CIX(mult_x_2_n61), .D(mult_x_2_n182), .CO(
        mult_x_2_n59), .COX(mult_x_2_n58), .S(mult_x_2_n60) );
  CMPE42D1 mult_x_2_U47 ( .A(mult_x_2_n130), .B(plane_full[25]), .C(
        mult_x_2_n155), .CIX(mult_x_2_n58), .D(mult_x_2_n181), .CO(
        mult_x_2_n56), .COX(mult_x_2_n55), .S(mult_x_2_n57) );
  CMPE42D1 mult_x_2_U46 ( .A(mult_x_2_n129), .B(plane_full[26]), .C(
        mult_x_2_n154), .CIX(mult_x_2_n55), .D(mult_x_2_n180), .CO(
        mult_x_2_n53), .COX(mult_x_2_n52), .S(mult_x_2_n54) );
  CMPE42D1 mult_x_2_U44 ( .A(mult_x_2_n128), .B(plane_full[26]), .C(
        mult_x_2_n153), .CIX(mult_x_2_n52), .D(mult_x_2_n179), .CO(
        mult_x_2_n49), .COX(mult_x_2_n48), .S(mult_x_2_n50) );
  CMPE42D1 mult_x_2_U42 ( .A(mult_x_2_n127), .B(plane_full[26]), .C(
        mult_x_2_n152), .CIX(mult_x_2_n48), .D(mult_x_2_n178), .CO(
        mult_x_2_n44), .COX(mult_x_2_n43), .S(mult_x_2_n45) );
  HA1D0 DP_OP_43J1_125_5546_U22 ( .A(DP_OP_43J1_125_5546_n27), .B(x[23]), .CO(
        DP_OP_43J1_125_5546_n20), .S(N31) );
  FA1D0 DP_OP_43J1_125_5546_U21 ( .A(DP_OP_43J1_125_5546_n26), .B(x[24]), .CI(
        DP_OP_43J1_125_5546_n20), .CO(DP_OP_43J1_125_5546_n19), .S(N32) );
  FA1D0 DP_OP_43J1_125_5546_U20 ( .A(DP_OP_43J1_125_5546_n25), .B(x[25]), .CI(
        DP_OP_43J1_125_5546_n19), .CO(DP_OP_43J1_125_5546_n18), .S(N33) );
  FA1D0 DP_OP_43J1_125_5546_U19 ( .A(DP_OP_43J1_125_5546_n24), .B(x[26]), .CI(
        DP_OP_43J1_125_5546_n18), .CO(DP_OP_43J1_125_5546_n17), .S(N34) );
  FA1D0 DP_OP_43J1_125_5546_U18 ( .A(DP_OP_43J1_125_5546_n23), .B(x[27]), .CI(
        DP_OP_43J1_125_5546_n17), .CO(DP_OP_43J1_125_5546_n16), .S(N35) );
  FA1D0 DP_OP_43J1_125_5546_U17 ( .A(DP_OP_43J1_125_5546_n22), .B(x[28]), .CI(
        DP_OP_43J1_125_5546_n16), .CO(DP_OP_43J1_125_5546_n15), .S(N36) );
  FA1D0 DP_OP_43J1_125_5546_U16 ( .A(DP_OP_43J1_125_5546_n21), .B(x[29]), .CI(
        DP_OP_43J1_125_5546_n15), .CO(DP_OP_43J1_125_5546_n14), .S(N37) );
  FA1D0 DP_OP_43J1_125_5546_U9 ( .A(DP_OP_43J1_125_5546_n12), .B(C1_Z_0), .CI(
        N31), .CO(DP_OP_43J1_125_5546_n8), .S(C5_DATA2_0) );
  FA1D0 DP_OP_43J1_125_5546_U8 ( .A(N32), .B(n138), .CI(DP_OP_43J1_125_5546_n8), .CO(DP_OP_43J1_125_5546_n7), .S(C5_DATA2_1) );
  FA1D0 DP_OP_43J1_125_5546_U7 ( .A(N33), .B(C1_Z_0), .CI(
        DP_OP_43J1_125_5546_n7), .CO(DP_OP_43J1_125_5546_n6), .S(C5_DATA2_2)
         );
  FA1D0 DP_OP_43J1_125_5546_U6 ( .A(N34), .B(C1_Z_0), .CI(
        DP_OP_43J1_125_5546_n6), .CO(DP_OP_43J1_125_5546_n5), .S(C5_DATA2_3)
         );
  FA1D0 DP_OP_43J1_125_5546_U5 ( .A(N35), .B(C1_Z_0), .CI(
        DP_OP_43J1_125_5546_n5), .CO(DP_OP_43J1_125_5546_n4), .S(C5_DATA2_4)
         );
  FA1D0 DP_OP_43J1_125_5546_U4 ( .A(N36), .B(C1_Z_0), .CI(
        DP_OP_43J1_125_5546_n4), .CO(DP_OP_43J1_125_5546_n3), .S(C5_DATA2_5)
         );
  FA1D0 DP_OP_43J1_125_5546_U3 ( .A(N37), .B(C1_Z_0), .CI(
        DP_OP_43J1_125_5546_n3), .CO(DP_OP_43J1_125_5546_n2), .S(C5_DATA2_6)
         );
  FA1D0 intadd_0_U25 ( .A(intadd_0_A_0_), .B(intadd_0_B_0_), .CI(intadd_0_CI), 
        .CO(intadd_0_n24), .S(intadd_0_SUM_0_) );
  FA1D0 intadd_0_U24 ( .A(intadd_0_A_1_), .B(intadd_0_B_1_), .CI(intadd_0_n24), 
        .CO(intadd_0_n23), .S(intadd_0_SUM_1_) );
  FA1D0 intadd_0_U23 ( .A(intadd_0_A_2_), .B(intadd_0_B_2_), .CI(intadd_0_n23), 
        .CO(intadd_0_n22), .S(intadd_0_SUM_2_) );
  FA1D0 intadd_0_U22 ( .A(intadd_0_A_3_), .B(intadd_0_B_3_), .CI(intadd_0_n22), 
        .CO(intadd_0_n21), .S(intadd_0_SUM_3_) );
  FA1D0 intadd_0_U21 ( .A(intadd_0_A_4_), .B(intadd_0_B_4_), .CI(intadd_0_n21), 
        .CO(intadd_0_n20), .S(intadd_0_SUM_4_) );
  FA1D0 intadd_0_U20 ( .A(intadd_0_A_5_), .B(intadd_0_B_5_), .CI(intadd_0_n20), 
        .CO(intadd_0_n19), .S(intadd_0_SUM_5_) );
  FA1D0 intadd_0_U19 ( .A(intadd_0_A_6_), .B(intadd_0_B_6_), .CI(intadd_0_n19), 
        .CO(intadd_0_n18), .S(intadd_0_SUM_6_) );
  FA1D0 intadd_0_U18 ( .A(intadd_0_A_7_), .B(intadd_0_B_7_), .CI(intadd_0_n18), 
        .CO(intadd_0_n17), .S(intadd_0_SUM_7_) );
  FA1D0 intadd_0_U17 ( .A(intadd_0_A_8_), .B(intadd_0_B_8_), .CI(intadd_0_n17), 
        .CO(intadd_0_n16), .S(intadd_0_SUM_8_) );
  FA1D0 intadd_0_U16 ( .A(intadd_0_A_9_), .B(intadd_0_B_9_), .CI(intadd_0_n16), 
        .CO(intadd_0_n15), .S(intadd_0_SUM_9_) );
  FA1D0 intadd_0_U15 ( .A(intadd_0_A_10_), .B(intadd_0_B_10_), .CI(
        intadd_0_n15), .CO(intadd_0_n14), .S(intadd_0_SUM_10_) );
  FA1D0 intadd_0_U14 ( .A(intadd_0_A_11_), .B(intadd_0_B_11_), .CI(
        intadd_0_n14), .CO(intadd_0_n13), .S(intadd_0_SUM_11_) );
  FA1D0 intadd_0_U13 ( .A(intadd_0_A_12_), .B(intadd_0_B_12_), .CI(
        intadd_0_n13), .CO(intadd_0_n12), .S(intadd_0_SUM_12_) );
  FA1D0 intadd_0_U12 ( .A(intadd_0_A_13_), .B(intadd_0_B_13_), .CI(
        intadd_0_n12), .CO(intadd_0_n11), .S(intadd_0_SUM_13_) );
  FA1D0 intadd_0_U11 ( .A(intadd_0_A_14_), .B(intadd_0_B_14_), .CI(
        intadd_0_n11), .CO(intadd_0_n10), .S(intadd_0_SUM_14_) );
  FA1D0 intadd_0_U10 ( .A(intadd_0_A_15_), .B(intadd_0_B_15_), .CI(
        intadd_0_n10), .CO(intadd_0_n9), .S(intadd_0_SUM_15_) );
  FA1D0 intadd_0_U9 ( .A(intadd_0_A_16_), .B(intadd_0_B_16_), .CI(intadd_0_n9), 
        .CO(intadd_0_n8), .S(intadd_0_SUM_16_) );
  FA1D0 intadd_0_U8 ( .A(intadd_0_A_17_), .B(intadd_0_B_17_), .CI(intadd_0_n8), 
        .CO(intadd_0_n7), .S(intadd_0_SUM_17_) );
  FA1D0 intadd_0_U7 ( .A(intadd_0_A_18_), .B(intadd_0_B_18_), .CI(intadd_0_n7), 
        .CO(intadd_0_n6), .S(intadd_0_SUM_18_) );
  FA1D0 intadd_0_U6 ( .A(intadd_0_A_19_), .B(intadd_0_B_19_), .CI(intadd_0_n6), 
        .CO(intadd_0_n5), .S(intadd_0_SUM_19_) );
  FA1D0 intadd_0_U5 ( .A(intadd_0_A_20_), .B(intadd_0_B_20_), .CI(intadd_0_n5), 
        .CO(intadd_0_n4), .S(intadd_0_SUM_20_) );
  FA1D0 intadd_0_U4 ( .A(intadd_0_A_21_), .B(intadd_0_B_21_), .CI(intadd_0_n4), 
        .CO(intadd_0_n3), .S(intadd_0_SUM_21_) );
  FA1D0 intadd_0_U3 ( .A(intadd_0_A_22_), .B(intadd_0_B_22_), .CI(intadd_0_n3), 
        .CO(intadd_0_n2), .S(intadd_0_SUM_22_) );
  FA1D0 intadd_0_U2 ( .A(intadd_0_A_23_), .B(intadd_0_B_23_), .CI(intadd_0_n2), 
        .CO(intadd_0_n1), .S(intadd_0_SUM_23_) );
  INVD0 U4 ( .I(y[22]), .ZN(n119) );
  CKND2 U5 ( .I(n119), .ZN(n137) );
  INVD0 U6 ( .I(plane_full[23]), .ZN(n114) );
  NR2D0 U7 ( .A1(n114), .A2(n137), .ZN(n111) );
  INVD0 U8 ( .I(plane_full[26]), .ZN(n92) );
  AO22D0 U9 ( .A1(n137), .A2(plane_full[26]), .B1(n92), .B2(n119), .Z(n27) );
  XOR2D0 U10 ( .A1(n111), .A2(n27), .Z(n26) );
  XOR2D0 U11 ( .A1(plane_full[26]), .A2(n26), .Z(n133) );
  MAOI22D0 U12 ( .A1(plane_full[25]), .A2(n119), .B1(n119), .B2(plane_full[25]), .ZN(n132) );
  MAOI222D0 U13 ( .A(mult_x_2_n43), .B(n133), .C(n132), .ZN(n30) );
  INR2D0 U14 ( .A1(n119), .B1(plane_full[24]), .ZN(n93) );
  IAO21D0 U15 ( .A1(n27), .A2(plane_full[26]), .B(n111), .ZN(n28) );
  XNR3D0 U16 ( .A1(n93), .A2(plane_full[26]), .A3(n28), .ZN(n29) );
  XOR2D0 U17 ( .A1(n30), .A2(n29), .Z(n310) );
  XOR2D0 U18 ( .A1(intadd_0_n1), .A2(n310), .Z(n134) );
  INVD0 U19 ( .I(intadd_0_SUM_23_), .ZN(n320) );
  CKND2D1 U20 ( .A1(n134), .A2(n320), .ZN(n90) );
  MUX2D0 U21 ( .I0(N31), .I1(C5_DATA2_0), .S(n90), .Z(result[23]) );
  MUX2D0 U22 ( .I0(N32), .I1(C5_DATA2_1), .S(n90), .Z(result[24]) );
  MUX2D0 U23 ( .I0(N33), .I1(C5_DATA2_2), .S(n90), .Z(result[25]) );
  MUX2D0 U24 ( .I0(N34), .I1(C5_DATA2_3), .S(n90), .Z(result[26]) );
  MUX2D0 U25 ( .I0(N35), .I1(C5_DATA2_4), .S(n90), .Z(result[27]) );
  MUX2D0 U26 ( .I0(N36), .I1(C5_DATA2_5), .S(n90), .Z(result[28]) );
  MUX2D0 U27 ( .I0(N37), .I1(C5_DATA2_6), .S(n90), .Z(result[29]) );
  INVD0 U28 ( .I(intadd_0_SUM_22_), .ZN(n330) );
  CKAN2D0 U29 ( .A1(intadd_0_SUM_23_), .A2(n330), .Z(n340) );
  CKAN2D0 U30 ( .A1(n134), .A2(n340), .Z(n138) );
  CKAN2D0 U31 ( .A1(intadd_0_SUM_23_), .A2(intadd_0_SUM_22_), .Z(n350) );
  CKAN2D0 U32 ( .A1(n134), .A2(n350), .Z(n67) );
  INVD0 U33 ( .I(n67), .ZN(n85) );
  INVD0 U34 ( .I(n138), .ZN(n135) );
  CKND2D0 U35 ( .A1(n85), .A2(n135), .ZN(C1_Z_0) );
  XOR2D0 U36 ( .A1(y[30]), .A2(x[30]), .Z(n360) );
  XOR2D0 U37 ( .A1(DP_OP_43J1_125_5546_n14), .A2(n360), .Z(n39) );
  XOR2D0 U38 ( .A1(n39), .A2(C1_Z_0), .Z(n370) );
  XOR2D0 U39 ( .A1(n370), .A2(DP_OP_43J1_125_5546_n2), .Z(n38) );
  MUX2D0 U40 ( .I0(n39), .I1(n38), .S(n90), .Z(result[30]) );
  INVD0 U41 ( .I(intadd_0_SUM_20_), .ZN(n40) );
  INVD0 U42 ( .I(n134), .ZN(n88) );
  AOI21D0 U43 ( .A1(intadd_0_SUM_23_), .A2(n40), .B(n88), .ZN(n41) );
  OAI222D0 U44 ( .A1(n85), .A2(intadd_0_SUM_19_), .B1(n90), .B2(
        intadd_0_SUM_21_), .C1(n41), .C2(intadd_0_SUM_22_), .ZN(result[21]) );
  OAI222D0 U45 ( .A1(n90), .A2(intadd_0_SUM_1_), .B1(n135), .B2(
        intadd_0_SUM_0_), .C1(n134), .C2(intadd_0_SUM_2_), .ZN(result[1]) );
  OAI22D0 U46 ( .A1(intadd_0_SUM_1_), .A2(n134), .B1(intadd_0_SUM_0_), .B2(n90), .ZN(result[0]) );
  AO222D0 U47 ( .A1(intadd_0_SUM_23_), .A2(intadd_0_SUM_21_), .B1(
        intadd_0_SUM_23_), .B2(n88), .C1(n134), .C2(intadd_0_SUM_22_), .Z(n42)
         );
  OAI21D0 U48 ( .A1(intadd_0_SUM_20_), .A2(n85), .B(n42), .ZN(result[22]) );
  OAI22D0 U49 ( .A1(intadd_0_SUM_18_), .A2(n85), .B1(intadd_0_SUM_21_), .B2(
        n134), .ZN(n43) );
  IAO21D0 U50 ( .A1(n135), .A2(intadd_0_SUM_19_), .B(n43), .ZN(n44) );
  OAI21D0 U51 ( .A1(intadd_0_SUM_20_), .A2(n90), .B(n44), .ZN(result[20]) );
  INVD0 U52 ( .I(intadd_0_SUM_5_), .ZN(n79) );
  OAI22D0 U53 ( .A1(intadd_0_SUM_4_), .A2(n85), .B1(intadd_0_SUM_7_), .B2(n134), .ZN(n45) );
  AOI21D0 U54 ( .A1(n138), .A2(n79), .B(n45), .ZN(n46) );
  OAI21D0 U55 ( .A1(intadd_0_SUM_6_), .A2(n90), .B(n46), .ZN(result[6]) );
  INVD0 U56 ( .I(intadd_0_SUM_9_), .ZN(n72) );
  OAI22D0 U57 ( .A1(intadd_0_SUM_8_), .A2(n85), .B1(intadd_0_SUM_11_), .B2(
        n134), .ZN(n47) );
  AOI21D0 U58 ( .A1(n138), .A2(n72), .B(n47), .ZN(n48) );
  OAI21D0 U59 ( .A1(intadd_0_SUM_10_), .A2(n90), .B(n48), .ZN(result[10]) );
  INVD0 U60 ( .I(intadd_0_SUM_17_), .ZN(n87) );
  OAI22D0 U61 ( .A1(intadd_0_SUM_16_), .A2(n85), .B1(intadd_0_SUM_19_), .B2(
        n134), .ZN(n49) );
  AOI21D0 U62 ( .A1(n138), .A2(n87), .B(n49), .ZN(n50) );
  OAI21D0 U63 ( .A1(intadd_0_SUM_18_), .A2(n90), .B(n50), .ZN(result[18]) );
  INVD0 U64 ( .I(intadd_0_SUM_13_), .ZN(n83) );
  OAI22D0 U65 ( .A1(intadd_0_SUM_12_), .A2(n85), .B1(intadd_0_SUM_15_), .B2(
        n134), .ZN(n51) );
  AOI21D0 U66 ( .A1(n138), .A2(n83), .B(n51), .ZN(n52) );
  OAI21D0 U67 ( .A1(intadd_0_SUM_14_), .A2(n90), .B(n52), .ZN(result[14]) );
  INVD0 U68 ( .I(intadd_0_SUM_1_), .ZN(n56) );
  OAI22D0 U69 ( .A1(intadd_0_SUM_3_), .A2(n134), .B1(intadd_0_SUM_0_), .B2(n85), .ZN(n53) );
  AOI21D0 U70 ( .A1(n138), .A2(n56), .B(n53), .ZN(n54) );
  OAI21D0 U71 ( .A1(intadd_0_SUM_2_), .A2(n90), .B(n54), .ZN(result[2]) );
  OAI22D0 U72 ( .A1(intadd_0_SUM_2_), .A2(n135), .B1(intadd_0_SUM_4_), .B2(
        n134), .ZN(n55) );
  AOI21D0 U73 ( .A1(n67), .A2(n56), .B(n55), .ZN(n57) );
  OAI21D0 U74 ( .A1(intadd_0_SUM_3_), .A2(n90), .B(n57), .ZN(result[3]) );
  OAI22D0 U75 ( .A1(intadd_0_SUM_14_), .A2(n135), .B1(intadd_0_SUM_16_), .B2(
        n134), .ZN(n58) );
  AOI21D0 U76 ( .A1(n67), .A2(n83), .B(n58), .ZN(n59) );
  OAI21D0 U77 ( .A1(intadd_0_SUM_15_), .A2(n90), .B(n59), .ZN(result[15]) );
  OAI22D0 U78 ( .A1(intadd_0_SUM_18_), .A2(n135), .B1(intadd_0_SUM_20_), .B2(
        n134), .ZN(n60) );
  AOI21D0 U79 ( .A1(n67), .A2(n87), .B(n60), .ZN(n61) );
  OAI21D0 U80 ( .A1(intadd_0_SUM_19_), .A2(n90), .B(n61), .ZN(result[19]) );
  OAI22D0 U81 ( .A1(intadd_0_SUM_3_), .A2(n135), .B1(intadd_0_SUM_2_), .B2(n85), .ZN(n62) );
  AOI21D0 U82 ( .A1(n88), .A2(n79), .B(n62), .ZN(n63) );
  OAI21D0 U83 ( .A1(intadd_0_SUM_4_), .A2(n90), .B(n63), .ZN(result[4]) );
  OAI22D0 U84 ( .A1(intadd_0_SUM_6_), .A2(n135), .B1(intadd_0_SUM_8_), .B2(
        n134), .ZN(n64) );
  AOI21D0 U85 ( .A1(n67), .A2(n79), .B(n64), .ZN(n65) );
  OAI21D0 U86 ( .A1(intadd_0_SUM_7_), .A2(n90), .B(n65), .ZN(result[7]) );
  OAI22D0 U87 ( .A1(intadd_0_SUM_10_), .A2(n135), .B1(intadd_0_SUM_12_), .B2(
        n134), .ZN(n66) );
  AOI21D0 U88 ( .A1(n67), .A2(n72), .B(n66), .ZN(n68) );
  OAI21D0 U89 ( .A1(intadd_0_SUM_11_), .A2(n90), .B(n68), .ZN(result[11]) );
  INVD0 U90 ( .I(n90), .ZN(n80) );
  OAI22D0 U91 ( .A1(intadd_0_SUM_7_), .A2(n85), .B1(intadd_0_SUM_8_), .B2(n135), .ZN(n69) );
  AOI21D0 U92 ( .A1(n80), .A2(n72), .B(n69), .ZN(n70) );
  OAI21D0 U93 ( .A1(intadd_0_SUM_10_), .A2(n134), .B(n70), .ZN(result[9]) );
  OAI22D0 U94 ( .A1(intadd_0_SUM_6_), .A2(n85), .B1(intadd_0_SUM_7_), .B2(n135), .ZN(n71) );
  AOI21D0 U95 ( .A1(n88), .A2(n72), .B(n71), .ZN(n73) );
  OAI21D0 U96 ( .A1(intadd_0_SUM_8_), .A2(n90), .B(n73), .ZN(result[8]) );
  OAI22D0 U97 ( .A1(intadd_0_SUM_15_), .A2(n85), .B1(intadd_0_SUM_16_), .B2(
        n135), .ZN(n74) );
  AOI21D0 U98 ( .A1(n80), .A2(n87), .B(n74), .ZN(n75) );
  OAI21D0 U99 ( .A1(intadd_0_SUM_18_), .A2(n134), .B(n75), .ZN(result[17]) );
  OAI22D0 U100 ( .A1(intadd_0_SUM_11_), .A2(n85), .B1(intadd_0_SUM_12_), .B2(
        n135), .ZN(n76) );
  AOI21D0 U101 ( .A1(n80), .A2(n83), .B(n76), .ZN(n77) );
  OAI21D0 U102 ( .A1(intadd_0_SUM_14_), .A2(n134), .B(n77), .ZN(result[13]) );
  OAI22D0 U103 ( .A1(intadd_0_SUM_3_), .A2(n85), .B1(intadd_0_SUM_4_), .B2(
        n135), .ZN(n78) );
  AOI21D0 U104 ( .A1(n80), .A2(n79), .B(n78), .ZN(n81) );
  OAI21D0 U105 ( .A1(intadd_0_SUM_6_), .A2(n134), .B(n81), .ZN(result[5]) );
  OAI22D0 U106 ( .A1(intadd_0_SUM_10_), .A2(n85), .B1(intadd_0_SUM_11_), .B2(
        n135), .ZN(n82) );
  AOI21D0 U107 ( .A1(n88), .A2(n83), .B(n82), .ZN(n84) );
  OAI21D0 U108 ( .A1(intadd_0_SUM_12_), .A2(n90), .B(n84), .ZN(result[12]) );
  OAI22D0 U109 ( .A1(intadd_0_SUM_14_), .A2(n85), .B1(intadd_0_SUM_15_), .B2(
        n135), .ZN(n86) );
  AOI21D0 U110 ( .A1(n88), .A2(n87), .B(n86), .ZN(n89) );
  OAI21D0 U111 ( .A1(intadd_0_SUM_16_), .A2(n90), .B(n89), .ZN(result[16]) );
  AO21D0 U112 ( .A1(plane_full[24]), .A2(n137), .B(n93), .Z(mult_x_2_n152) );
  INVD0 U113 ( .I(plane_full[14]), .ZN(n109) );
  NR2D0 U114 ( .A1(n109), .A2(n137), .ZN(mult_x_2_n135) );
  INVD0 U115 ( .I(plane_full[15]), .ZN(n96) );
  NR2D0 U116 ( .A1(n96), .A2(n137), .ZN(mult_x_2_n134) );
  INVD0 U117 ( .I(plane_full[10]), .ZN(n102) );
  NR2D0 U118 ( .A1(n102), .A2(n137), .ZN(mult_x_2_n139) );
  INVD0 U119 ( .I(plane_full[16]), .ZN(n97) );
  NR2D0 U120 ( .A1(n97), .A2(n137), .ZN(mult_x_2_n133) );
  INVD0 U121 ( .I(plane_full[8]), .ZN(n101) );
  NR2D0 U122 ( .A1(n101), .A2(n137), .ZN(mult_x_2_n141) );
  INVD0 U123 ( .I(plane_full[7]), .ZN(n105) );
  NR2D0 U124 ( .A1(n105), .A2(n137), .ZN(mult_x_2_n142) );
  INVD0 U125 ( .I(plane_full[9]), .ZN(n100) );
  NR2D0 U126 ( .A1(n100), .A2(n137), .ZN(mult_x_2_n140) );
  INVD0 U127 ( .I(plane_full[19]), .ZN(n106) );
  NR2D0 U128 ( .A1(n106), .A2(n137), .ZN(mult_x_2_n130) );
  INVD0 U129 ( .I(plane_full[12]), .ZN(n107) );
  NR2D0 U130 ( .A1(n107), .A2(n137), .ZN(mult_x_2_n137) );
  INVD0 U131 ( .I(plane_full[6]), .ZN(n110) );
  NR2D0 U132 ( .A1(n110), .A2(n137), .ZN(mult_x_2_n143) );
  INVD0 U133 ( .I(plane_full[18]), .ZN(n108) );
  NR2D0 U134 ( .A1(n108), .A2(n137), .ZN(mult_x_2_n131) );
  INVD0 U135 ( .I(plane_full[11]), .ZN(n98) );
  NR2D0 U136 ( .A1(n98), .A2(n137), .ZN(mult_x_2_n138) );
  INVD0 U137 ( .I(plane_full[17]), .ZN(n99) );
  NR2D0 U138 ( .A1(n99), .A2(n137), .ZN(mult_x_2_n132) );
  INVD0 U139 ( .I(plane_full[13]), .ZN(n104) );
  NR2D0 U140 ( .A1(n104), .A2(n137), .ZN(mult_x_2_n136) );
  INVD0 U141 ( .I(plane_full[5]), .ZN(n125) );
  NR2D0 U142 ( .A1(n125), .A2(n137), .ZN(mult_x_2_n144) );
  INVD0 U143 ( .I(plane_full[4]), .ZN(n95) );
  NR2D0 U144 ( .A1(n95), .A2(n137), .ZN(mult_x_2_n145) );
  INVD0 U145 ( .I(plane_full[20]), .ZN(n103) );
  NR2D0 U146 ( .A1(n103), .A2(n137), .ZN(mult_x_2_n129) );
  CKND2D0 U147 ( .A1(n137), .A2(plane_full[24]), .ZN(n91) );
  OAI21D0 U148 ( .A1(n137), .A2(plane_full[23]), .B(n91), .ZN(mult_x_2_n180)
         );
  INVD0 U149 ( .I(plane_full[21]), .ZN(n112) );
  NR2D0 U150 ( .A1(n112), .A2(n137), .ZN(mult_x_2_n128) );
  INVD0 U151 ( .I(plane_full[22]), .ZN(n113) );
  NR2D0 U152 ( .A1(n113), .A2(n137), .ZN(mult_x_2_n127) );
  AOI22D0 U153 ( .A1(n137), .A2(n92), .B1(plane_full[25]), .B2(n119), .ZN(
        mult_x_2_n178) );
  AO21D0 U154 ( .A1(n137), .A2(plane_full[25]), .B(n93), .Z(mult_x_2_n179) );
  INVD0 U155 ( .I(plane_full[3]), .ZN(n123) );
  NR2D0 U156 ( .A1(n123), .A2(n137), .ZN(mult_x_2_n146) );
  AOI21D0 U157 ( .A1(n137), .A2(n123), .B(mult_x_2_n146), .ZN(mult_x_2_n173)
         );
  INR2D0 U158 ( .A1(plane_full[0]), .B1(n137), .ZN(mult_x_2_n149) );
  INVD0 U159 ( .I(plane_full[1]), .ZN(n124) );
  NR2D0 U160 ( .A1(n124), .A2(n137), .ZN(mult_x_2_n148) );
  INVD0 U161 ( .I(plane_full[2]), .ZN(n94) );
  NR2D0 U162 ( .A1(n94), .A2(n137), .ZN(mult_x_2_n147) );
  INVD0 U163 ( .I(mult_x_2_n114), .ZN(intadd_0_A_0_) );
  INVD0 U164 ( .I(mult_x_2_n113), .ZN(intadd_0_B_1_) );
  INVD0 U165 ( .I(mult_x_2_n111), .ZN(intadd_0_A_1_) );
  INVD0 U166 ( .I(mult_x_2_n110), .ZN(intadd_0_B_2_) );
  INVD0 U167 ( .I(mult_x_2_n108), .ZN(intadd_0_A_2_) );
  INVD0 U168 ( .I(mult_x_2_n107), .ZN(intadd_0_B_3_) );
  INVD0 U169 ( .I(mult_x_2_n105), .ZN(intadd_0_A_3_) );
  INVD0 U170 ( .I(mult_x_2_n104), .ZN(intadd_0_B_4_) );
  INVD0 U171 ( .I(mult_x_2_n102), .ZN(intadd_0_A_4_) );
  INVD0 U172 ( .I(mult_x_2_n101), .ZN(intadd_0_B_5_) );
  INVD0 U173 ( .I(mult_x_2_n99), .ZN(intadd_0_A_5_) );
  INVD0 U174 ( .I(mult_x_2_n98), .ZN(intadd_0_B_6_) );
  INVD0 U175 ( .I(mult_x_2_n96), .ZN(intadd_0_A_6_) );
  INVD0 U176 ( .I(mult_x_2_n95), .ZN(intadd_0_B_7_) );
  INVD0 U177 ( .I(mult_x_2_n93), .ZN(intadd_0_A_7_) );
  INVD0 U178 ( .I(mult_x_2_n92), .ZN(intadd_0_B_8_) );
  INVD0 U179 ( .I(mult_x_2_n90), .ZN(intadd_0_A_8_) );
  INVD0 U180 ( .I(mult_x_2_n89), .ZN(intadd_0_B_9_) );
  INVD0 U181 ( .I(mult_x_2_n87), .ZN(intadd_0_A_9_) );
  INVD0 U182 ( .I(mult_x_2_n86), .ZN(intadd_0_B_10_) );
  INVD0 U183 ( .I(mult_x_2_n84), .ZN(intadd_0_A_10_) );
  INVD0 U184 ( .I(mult_x_2_n83), .ZN(intadd_0_B_11_) );
  INVD0 U185 ( .I(mult_x_2_n81), .ZN(intadd_0_A_11_) );
  INVD0 U186 ( .I(mult_x_2_n80), .ZN(intadd_0_B_12_) );
  INVD0 U187 ( .I(mult_x_2_n78), .ZN(intadd_0_A_12_) );
  INVD0 U188 ( .I(mult_x_2_n77), .ZN(intadd_0_B_13_) );
  INVD0 U189 ( .I(mult_x_2_n75), .ZN(intadd_0_A_13_) );
  INVD0 U190 ( .I(mult_x_2_n74), .ZN(intadd_0_B_14_) );
  INVD0 U191 ( .I(mult_x_2_n72), .ZN(intadd_0_A_14_) );
  INVD0 U192 ( .I(mult_x_2_n71), .ZN(intadd_0_B_15_) );
  INVD0 U193 ( .I(mult_x_2_n69), .ZN(intadd_0_A_15_) );
  INVD0 U194 ( .I(mult_x_2_n68), .ZN(intadd_0_B_16_) );
  INVD0 U195 ( .I(mult_x_2_n66), .ZN(intadd_0_A_16_) );
  INVD0 U196 ( .I(mult_x_2_n65), .ZN(intadd_0_B_17_) );
  INVD0 U197 ( .I(mult_x_2_n63), .ZN(intadd_0_A_17_) );
  INVD0 U198 ( .I(mult_x_2_n62), .ZN(intadd_0_B_18_) );
  INVD0 U199 ( .I(mult_x_2_n60), .ZN(intadd_0_A_18_) );
  INVD0 U200 ( .I(mult_x_2_n59), .ZN(intadd_0_B_19_) );
  INVD0 U201 ( .I(mult_x_2_n57), .ZN(intadd_0_A_19_) );
  INVD0 U202 ( .I(mult_x_2_n56), .ZN(intadd_0_B_20_) );
  INVD0 U203 ( .I(mult_x_2_n54), .ZN(intadd_0_A_20_) );
  INVD0 U204 ( .I(mult_x_2_n53), .ZN(intadd_0_B_21_) );
  INVD0 U205 ( .I(mult_x_2_n50), .ZN(intadd_0_A_21_) );
  INVD0 U206 ( .I(mult_x_2_n49), .ZN(intadd_0_B_22_) );
  INVD0 U207 ( .I(mult_x_2_n45), .ZN(intadd_0_A_22_) );
  INVD0 U208 ( .I(y[23]), .ZN(DP_OP_43J1_125_5546_n27) );
  INVD0 U209 ( .I(y[24]), .ZN(DP_OP_43J1_125_5546_n26) );
  INVD0 U210 ( .I(y[25]), .ZN(DP_OP_43J1_125_5546_n25) );
  INVD0 U211 ( .I(y[26]), .ZN(DP_OP_43J1_125_5546_n24) );
  INVD0 U212 ( .I(y[27]), .ZN(DP_OP_43J1_125_5546_n23) );
  INVD0 U213 ( .I(y[28]), .ZN(DP_OP_43J1_125_5546_n22) );
  INVD0 U214 ( .I(y[29]), .ZN(DP_OP_43J1_125_5546_n21) );
  AOI21D0 U215 ( .A1(n137), .A2(n95), .B(mult_x_2_n146), .ZN(mult_x_2_n200) );
  AOI21D0 U216 ( .A1(n137), .A2(n99), .B(mult_x_2_n132), .ZN(mult_x_2_n159) );
  AOI21D0 U217 ( .A1(n137), .A2(n101), .B(mult_x_2_n141), .ZN(mult_x_2_n168)
         );
  AOI21D0 U218 ( .A1(n137), .A2(n107), .B(mult_x_2_n137), .ZN(mult_x_2_n164)
         );
  AOI21D0 U219 ( .A1(n137), .A2(n108), .B(mult_x_2_n131), .ZN(mult_x_2_n158)
         );
  AOI21D0 U220 ( .A1(n137), .A2(n109), .B(mult_x_2_n135), .ZN(mult_x_2_n162)
         );
  AOI21D0 U221 ( .A1(n137), .A2(n106), .B(mult_x_2_n130), .ZN(mult_x_2_n157)
         );
  AOI21D0 U222 ( .A1(n137), .A2(n104), .B(mult_x_2_n136), .ZN(mult_x_2_n163)
         );
  AOI21D0 U223 ( .A1(n137), .A2(n98), .B(mult_x_2_n138), .ZN(mult_x_2_n165) );
  AOI21D0 U224 ( .A1(n137), .A2(n100), .B(mult_x_2_n140), .ZN(mult_x_2_n167)
         );
  AOI21D0 U225 ( .A1(n137), .A2(n97), .B(mult_x_2_n133), .ZN(mult_x_2_n160) );
  AOI21D0 U226 ( .A1(n137), .A2(n125), .B(mult_x_2_n144), .ZN(mult_x_2_n171)
         );
  AOI21D0 U227 ( .A1(n137), .A2(n102), .B(mult_x_2_n139), .ZN(mult_x_2_n166)
         );
  AOI21D0 U228 ( .A1(n137), .A2(n110), .B(mult_x_2_n143), .ZN(mult_x_2_n170)
         );
  AOI21D0 U229 ( .A1(n137), .A2(n96), .B(mult_x_2_n134), .ZN(mult_x_2_n161) );
  AOI21D0 U230 ( .A1(n137), .A2(n105), .B(mult_x_2_n142), .ZN(mult_x_2_n169)
         );
  AOI21D0 U231 ( .A1(n137), .A2(n103), .B(mult_x_2_n129), .ZN(mult_x_2_n156)
         );
  AOI21D0 U232 ( .A1(n137), .A2(n94), .B(mult_x_2_n147), .ZN(mult_x_2_n174) );
  AOI21D0 U233 ( .A1(n137), .A2(n95), .B(mult_x_2_n145), .ZN(mult_x_2_n172) );
  AOI21D0 U234 ( .A1(n137), .A2(n96), .B(mult_x_2_n135), .ZN(mult_x_2_n189) );
  AOI21D0 U235 ( .A1(n137), .A2(n97), .B(mult_x_2_n134), .ZN(mult_x_2_n188) );
  AOI21D0 U236 ( .A1(n137), .A2(n98), .B(mult_x_2_n139), .ZN(mult_x_2_n193) );
  AOI21D0 U237 ( .A1(n137), .A2(n99), .B(mult_x_2_n133), .ZN(mult_x_2_n187) );
  AOI21D0 U238 ( .A1(n137), .A2(n100), .B(mult_x_2_n141), .ZN(mult_x_2_n195)
         );
  AOI21D0 U239 ( .A1(n137), .A2(n101), .B(mult_x_2_n142), .ZN(mult_x_2_n196)
         );
  AOI21D0 U240 ( .A1(n137), .A2(n102), .B(mult_x_2_n140), .ZN(mult_x_2_n194)
         );
  AOI21D0 U241 ( .A1(n137), .A2(n103), .B(mult_x_2_n130), .ZN(mult_x_2_n184)
         );
  AOI21D0 U242 ( .A1(n137), .A2(n104), .B(mult_x_2_n137), .ZN(mult_x_2_n191)
         );
  AOI21D0 U243 ( .A1(n137), .A2(n105), .B(mult_x_2_n143), .ZN(mult_x_2_n197)
         );
  AOI21D0 U244 ( .A1(n137), .A2(n106), .B(mult_x_2_n131), .ZN(mult_x_2_n185)
         );
  AOI21D0 U245 ( .A1(n137), .A2(n107), .B(mult_x_2_n138), .ZN(mult_x_2_n192)
         );
  AOI21D0 U246 ( .A1(n137), .A2(n108), .B(mult_x_2_n132), .ZN(mult_x_2_n186)
         );
  AOI21D0 U247 ( .A1(n137), .A2(n109), .B(mult_x_2_n136), .ZN(mult_x_2_n190)
         );
  AOI21D0 U248 ( .A1(n137), .A2(n110), .B(mult_x_2_n144), .ZN(mult_x_2_n198)
         );
  AOI21D0 U249 ( .A1(n137), .A2(n125), .B(mult_x_2_n145), .ZN(mult_x_2_n199)
         );
  AOI21D0 U250 ( .A1(n137), .A2(n112), .B(mult_x_2_n128), .ZN(mult_x_2_n155)
         );
  AOI21D0 U251 ( .A1(n137), .A2(n114), .B(n111), .ZN(mult_x_2_n153) );
  AOI21D0 U252 ( .A1(n137), .A2(n113), .B(mult_x_2_n127), .ZN(mult_x_2_n154)
         );
  AOI21D0 U253 ( .A1(n137), .A2(n112), .B(mult_x_2_n129), .ZN(mult_x_2_n183)
         );
  AOI21D0 U254 ( .A1(n137), .A2(n113), .B(mult_x_2_n128), .ZN(mult_x_2_n182)
         );
  AOI21D0 U255 ( .A1(n137), .A2(n114), .B(mult_x_2_n127), .ZN(mult_x_2_n181)
         );
  NR3D0 U256 ( .A1(n137), .A2(plane_full[0]), .A3(n125), .ZN(mult_x_2_n117) );
  OA211D0 U257 ( .A1(plane_full[3]), .A2(plane_full[1]), .B(plane_full[0]), 
        .C(n137), .Z(n117) );
  NR2D0 U258 ( .A1(n119), .A2(plane_full[1]), .ZN(n115) );
  NR2D0 U259 ( .A1(mult_x_2_n149), .A2(n115), .ZN(n116) );
  AOI22D0 U260 ( .A1(plane_full[2]), .A2(n117), .B1(n116), .B2(mult_x_2_n173), 
        .ZN(n122) );
  INVD0 U261 ( .I(n118), .ZN(n121) );
  AOI22D0 U262 ( .A1(n137), .A2(plane_full[2]), .B1(n124), .B2(n119), .ZN(n120) );
  MAOI222D0 U263 ( .A(n122), .B(n121), .C(n120), .ZN(n128) );
  FA1D0 U264 ( .A(plane_full[0]), .B(plane_full[4]), .CI(mult_x_2_n146), .CO(
        n127), .S(n118) );
  AOI21D0 U265 ( .A1(n137), .A2(n123), .B(mult_x_2_n147), .ZN(n131) );
  AOI21D0 U266 ( .A1(n137), .A2(n124), .B(mult_x_2_n148), .ZN(n130) );
  AOI221D0 U267 ( .A1(n137), .A2(n125), .B1(plane_full[0]), .B2(n125), .C(
        mult_x_2_n117), .ZN(n129) );
  XOR3D0 U268 ( .A1(n131), .A2(n130), .A3(n129), .Z(n126) );
  MAOI222D0 U269 ( .A(n128), .B(n127), .C(n126), .ZN(intadd_0_CI) );
  MAOI222D0 U270 ( .A(n131), .B(n130), .C(n129), .ZN(intadd_0_B_0_) );
  XNR3D0 U271 ( .A1(mult_x_2_n43), .A2(n133), .A3(n132), .ZN(intadd_0_A_23_)
         );
  CKND2D0 U272 ( .A1(n135), .A2(n134), .ZN(n136) );
  XOR2D0 U273 ( .A1(C1_Z_0), .A2(n136), .Z(DP_OP_43J1_125_5546_n12) );
  INVD0 U274 ( .I(mult_x_2_n44), .ZN(intadd_0_B_23_) );
  XOR2D0 U275 ( .A1(y[31]), .A2(x[31]), .Z(result[31]) );
endmodule


module oadm_fixed_l1_div_paceio_opt ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15;

  oadm_multilevel_opt_FIXED_LEVEL1_FP_STYLE1 impl ( .x({x[31:22], n3, x[20:5], 
        n11, n15, n9, n7, x[0]}), .y({y[31:22], n5, y[20:2], n13, y[0]}), 
        .level({1'b0, 1'b0}), .divide_mode(1'b0), .result(result) );
  INVD0 U6 ( .I(x[21]), .ZN(n2) );
  INVD0 U7 ( .I(n2), .ZN(n3) );
  INVD0 U8 ( .I(y[21]), .ZN(n4) );
  INVD0 U9 ( .I(n4), .ZN(n5) );
  INVD0 U10 ( .I(x[1]), .ZN(n6) );
  INVD0 U11 ( .I(n6), .ZN(n7) );
  INVD0 U12 ( .I(x[2]), .ZN(n8) );
  INVD0 U13 ( .I(n8), .ZN(n9) );
  INVD0 U14 ( .I(x[4]), .ZN(n10) );
  INVD0 U15 ( .I(n10), .ZN(n11) );
  INVD0 U16 ( .I(y[1]), .ZN(n12) );
  INVD0 U17 ( .I(n12), .ZN(n13) );
  INVD0 U18 ( .I(x[3]), .ZN(n14) );
  INVD0 U19 ( .I(n14), .ZN(n15) );
endmodule

