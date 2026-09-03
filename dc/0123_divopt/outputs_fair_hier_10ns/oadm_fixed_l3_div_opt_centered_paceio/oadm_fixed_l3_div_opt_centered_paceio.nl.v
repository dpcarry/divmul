/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Wed Sep  2 14:57:11 2026
/////////////////////////////////////////////////////////////


module oadm_rounding_error_lut_3 ( index, value_low, x_error, y_error );
  input [2:0] index;
  input [3:0] value_low;
  output [1:0] x_error;
  output [1:0] y_error;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44;

  INVD0 U1 ( .I(index[0]), .ZN(n21) );
  CKND2D0 U2 ( .A1(value_low[1]), .A2(n21), .ZN(n23) );
  INVD0 U3 ( .I(n23), .ZN(n31) );
  CKND2D0 U4 ( .A1(value_low[1]), .A2(index[0]), .ZN(n13) );
  INVD0 U5 ( .I(n13), .ZN(n4) );
  INVD0 U6 ( .I(index[1]), .ZN(n28) );
  INVD0 U7 ( .I(value_low[3]), .ZN(n24) );
  OAI22D0 U8 ( .A1(n21), .A2(value_low[3]), .B1(n24), .B2(index[0]), .ZN(n36)
         );
  IND2D0 U9 ( .A1(n36), .B1(value_low[2]), .ZN(n34) );
  INVD0 U10 ( .I(value_low[2]), .ZN(n32) );
  OAI221D0 U11 ( .A1(value_low[2]), .A2(value_low[3]), .B1(n32), .B2(n24), .C(
        value_low[1]), .ZN(n1) );
  OAI21D0 U12 ( .A1(value_low[1]), .A2(n34), .B(n1), .ZN(n2) );
  AOI221D0 U13 ( .A1(n31), .A2(index[1]), .B1(n4), .B2(n28), .C(n2), .ZN(n20)
         );
  INVD0 U14 ( .I(value_low[0]), .ZN(n41) );
  NR2D0 U15 ( .A1(index[0]), .A2(value_low[1]), .ZN(n6) );
  AOI22D0 U16 ( .A1(index[2]), .A2(n6), .B1(n13), .B2(value_low[3]), .ZN(n3)
         );
  OAI221D0 U17 ( .A1(index[2]), .A2(n6), .B1(n13), .B2(value_low[3]), .C(n3), 
        .ZN(n10) );
  INVD0 U18 ( .I(value_low[1]), .ZN(n40) );
  NR2D0 U19 ( .A1(index[1]), .A2(n4), .ZN(n5) );
  CKND2D0 U20 ( .A1(n4), .A2(value_low[3]), .ZN(n35) );
  NR2D0 U21 ( .A1(n35), .A2(n28), .ZN(n30) );
  AOI211D0 U22 ( .A1(n36), .A2(n40), .B(n5), .C(n30), .ZN(n8) );
  INVD0 U23 ( .I(index[2]), .ZN(n39) );
  OAI221D0 U24 ( .A1(value_low[3]), .A2(index[0]), .B1(n24), .B2(n6), .C(n28), 
        .ZN(n7) );
  OAI21D0 U25 ( .A1(n8), .A2(n39), .B(n7), .ZN(n9) );
  AOI32D0 U26 ( .A1(index[1]), .A2(n32), .A3(n10), .B1(value_low[2]), .B2(n9), 
        .ZN(n19) );
  NR2D0 U27 ( .A1(index[1]), .A2(value_low[3]), .ZN(n33) );
  OAI32D0 U28 ( .A1(index[2]), .A2(value_low[2]), .A3(index[0]), .B1(n21), 
        .B2(n39), .ZN(n11) );
  AOI32D0 U29 ( .A1(value_low[0]), .A2(n40), .A3(n11), .B1(value_low[1]), .B2(
        value_low[2]), .ZN(n12) );
  OAI21D0 U30 ( .A1(index[2]), .A2(n13), .B(n12), .ZN(n17) );
  CKND2D0 U31 ( .A1(value_low[2]), .A2(n28), .ZN(n14) );
  INVD0 U32 ( .I(n14), .ZN(n15) );
  OAI32D0 U33 ( .A1(n15), .A2(n23), .A3(n24), .B1(n14), .B2(n13), .ZN(n16) );
  AOI22D0 U34 ( .A1(n33), .A2(n17), .B1(n16), .B2(n39), .ZN(n18) );
  OAI221D0 U35 ( .A1(value_low[0]), .A2(n20), .B1(n41), .B2(n19), .C(n18), 
        .ZN(x_error[0]) );
  NR2D0 U36 ( .A1(n21), .A2(value_low[1]), .ZN(n25) );
  INVD0 U37 ( .I(n25), .ZN(n26) );
  AOI22D0 U38 ( .A1(n26), .A2(n24), .B1(n23), .B2(n39), .ZN(n22) );
  OAI221D0 U39 ( .A1(n24), .A2(n26), .B1(n39), .B2(n23), .C(n22), .ZN(n29) );
  OAI222D0 U40 ( .A1(index[2]), .A2(n26), .B1(n39), .B2(n25), .C1(n31), .C2(
        n24), .ZN(n27) );
  AOI33D0 U41 ( .A1(value_low[2]), .A2(index[1]), .A3(n29), .B1(n28), .B2(n27), 
        .B3(n32), .ZN(n44) );
  AOI32D0 U42 ( .A1(n33), .A2(n32), .A3(n31), .B1(n30), .B2(value_low[2]), 
        .ZN(n43) );
  OAI21D0 U43 ( .A1(index[0]), .A2(value_low[3]), .B(n34), .ZN(n38) );
  OAI31D0 U44 ( .A1(value_low[2]), .A2(n36), .A3(n40), .B(n35), .ZN(n37) );
  AOI32D0 U45 ( .A1(n40), .A2(n39), .A3(n38), .B1(index[2]), .B2(n37), .ZN(n42) );
  AOI32D0 U46 ( .A1(n44), .A2(n43), .A3(n42), .B1(n41), .B2(n43), .ZN(
        x_error[1]) );
endmodule


module oadm_rounding_error_lut_2 ( index, value_low, x_error, y_error );
  input [2:0] index;
  input [3:0] value_low;
  output [1:0] x_error;
  output [1:0] y_error;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44;

  INVD0 U1 ( .I(value_low[3]), .ZN(n34) );
  CKND2D0 U2 ( .A1(index[0]), .A2(n34), .ZN(n32) );
  INVD0 U3 ( .I(value_low[0]), .ZN(n16) );
  INVD0 U4 ( .I(index[1]), .ZN(n13) );
  NR2D0 U5 ( .A1(n16), .A2(n13), .ZN(n20) );
  INVD0 U6 ( .I(value_low[2]), .ZN(n21) );
  INVD0 U7 ( .I(index[2]), .ZN(n17) );
  INVD0 U8 ( .I(index[0]), .ZN(n18) );
  OAI222D0 U9 ( .A1(value_low[1]), .A2(n34), .B1(value_low[1]), .B2(n17), .C1(
        index[2]), .C2(n18), .ZN(n7) );
  OAI222D0 U10 ( .A1(index[1]), .A2(n18), .B1(n13), .B2(index[0]), .C1(
        value_low[2]), .C2(n34), .ZN(n3) );
  CKND2D0 U11 ( .A1(index[1]), .A2(n21), .ZN(n31) );
  AOI211D0 U12 ( .A1(n31), .A2(n34), .B(index[0]), .C(index[2]), .ZN(n1) );
  AO31D0 U13 ( .A1(value_low[2]), .A2(n18), .A3(n13), .B(n1), .Z(n2) );
  AOI32D0 U14 ( .A1(n16), .A2(value_low[1]), .A3(n3), .B1(n2), .B2(
        value_low[1]), .ZN(n5) );
  CKND2D0 U15 ( .A1(value_low[0]), .A2(index[2]), .ZN(n42) );
  INVD0 U16 ( .I(n42), .ZN(n27) );
  INVD0 U17 ( .I(value_low[1]), .ZN(n38) );
  OAI221D0 U18 ( .A1(value_low[1]), .A2(n27), .B1(n38), .B2(n17), .C(n13), 
        .ZN(n4) );
  AOI32D0 U19 ( .A1(n21), .A2(n5), .A3(n32), .B1(n4), .B2(n5), .ZN(n6) );
  AOI31D0 U20 ( .A1(n20), .A2(n21), .A3(n7), .B(n6), .ZN(n10) );
  CKND2D0 U21 ( .A1(value_low[3]), .A2(n18), .ZN(n12) );
  OAI21D0 U22 ( .A1(value_low[1]), .A2(n17), .B(n20), .ZN(n8) );
  MAOI22D0 U23 ( .A1(value_low[2]), .A2(n8), .B1(n31), .B2(n38), .ZN(n9) );
  AOI32D0 U24 ( .A1(n32), .A2(n10), .A3(n12), .B1(n9), .B2(n10), .ZN(
        y_error[1]) );
  OAI211D0 U25 ( .A1(index[0]), .A2(index[2]), .B(value_low[0]), .C(n32), .ZN(
        n44) );
  AOI33D0 U26 ( .A1(index[0]), .A2(index[1]), .A3(value_low[3]), .B1(n34), 
        .B2(n38), .B3(n18), .ZN(n11) );
  OAI31D0 U27 ( .A1(index[1]), .A2(n38), .A3(n12), .B(n11), .ZN(n41) );
  NR2D0 U28 ( .A1(n21), .A2(n13), .ZN(n35) );
  OA33D0 U29 ( .A1(n17), .A2(n13), .A3(n32), .B1(n18), .B2(index[1]), .B3(
        index[2]), .Z(n14) );
  NR2D0 U30 ( .A1(index[0]), .A2(value_low[3]), .ZN(n26) );
  CKND2D0 U31 ( .A1(index[1]), .A2(n26), .ZN(n23) );
  OAI22D0 U32 ( .A1(value_low[2]), .A2(n14), .B1(index[2]), .B2(n23), .ZN(n15)
         );
  AOI32D0 U33 ( .A1(n35), .A2(value_low[0]), .A3(n17), .B1(n15), .B2(
        value_low[0]), .ZN(n39) );
  AOI221D0 U34 ( .A1(index[1]), .A2(value_low[2]), .B1(n17), .B2(value_low[2]), 
        .C(n16), .ZN(n19) );
  OAI22D0 U35 ( .A1(value_low[2]), .A2(n20), .B1(n19), .B2(n18), .ZN(n22) );
  MAOI22D0 U36 ( .A1(value_low[3]), .A2(n22), .B1(n21), .B2(n23), .ZN(n37) );
  NR2D0 U37 ( .A1(index[1]), .A2(value_low[2]), .ZN(n29) );
  CKND2D0 U38 ( .A1(index[0]), .A2(value_low[3]), .ZN(n25) );
  INVD0 U39 ( .I(n35), .ZN(n24) );
  OAI221D0 U40 ( .A1(n35), .A2(n25), .B1(n24), .B2(index[0]), .C(n23), .ZN(n28) );
  OAI222D0 U41 ( .A1(n29), .A2(n28), .B1(n29), .B2(n27), .C1(n27), .C2(n26), 
        .ZN(n30) );
  OAI31D0 U42 ( .A1(value_low[0]), .A2(n32), .A3(n31), .B(n30), .ZN(n33) );
  AOI31D0 U43 ( .A1(n35), .A2(value_low[0]), .A3(n34), .B(n33), .ZN(n36) );
  AOI32D0 U44 ( .A1(n39), .A2(n38), .A3(n37), .B1(value_low[1]), .B2(n36), 
        .ZN(n40) );
  AOI31D0 U45 ( .A1(value_low[2]), .A2(n42), .A3(n41), .B(n40), .ZN(n43) );
  OAI31D0 U46 ( .A1(index[1]), .A2(value_low[2]), .A3(n44), .B(n43), .ZN(
        y_error[0]) );
endmodule


module oadm_l3_plane_direct ( x_mantissa, y_mantissa, plane_separate_shift, 
        plane_combined_shift, plane_exact, rounding_correction, 
        plane_exact_reduced_midpoint, plane_exact_centered, 
        plane_exact_centered_index );
  input [23:0] x_mantissa;
  input [23:0] y_mantissa;
  output [28:0] plane_separate_shift;
  output [28:0] plane_combined_shift;
  output [28:0] plane_exact;
  output [2:0] rounding_correction;
  output [28:0] plane_exact_reduced_midpoint;
  output [28:0] plane_exact_centered;
  output [28:0] plane_exact_centered_index;
  wire   DP_OP_36J1_123_8177_n245, DP_OP_36J1_123_8177_n226,
         DP_OP_36J1_123_8177_n225, DP_OP_36J1_123_8177_n224,
         DP_OP_36J1_123_8177_n223, DP_OP_36J1_123_8177_n222,
         DP_OP_36J1_123_8177_n221, DP_OP_36J1_123_8177_n220,
         DP_OP_36J1_123_8177_n219, DP_OP_36J1_123_8177_n218,
         DP_OP_36J1_123_8177_n217, DP_OP_36J1_123_8177_n216,
         DP_OP_36J1_123_8177_n215, DP_OP_36J1_123_8177_n214,
         DP_OP_36J1_123_8177_n213, DP_OP_36J1_123_8177_n212,
         DP_OP_36J1_123_8177_n211, DP_OP_36J1_123_8177_n209,
         DP_OP_36J1_123_8177_n207, DP_OP_36J1_123_8177_n206,
         DP_OP_36J1_123_8177_n188, DP_OP_36J1_123_8177_n166,
         DP_OP_36J1_123_8177_n164, DP_OP_36J1_123_8177_n162,
         DP_OP_36J1_123_8177_n156, DP_OP_36J1_123_8177_n155,
         DP_OP_36J1_123_8177_n153, DP_OP_36J1_123_8177_n152,
         DP_OP_36J1_123_8177_n151, DP_OP_36J1_123_8177_n148,
         DP_OP_36J1_123_8177_n147, DP_OP_36J1_123_8177_n146,
         DP_OP_36J1_123_8177_n145, DP_OP_36J1_123_8177_n144,
         DP_OP_36J1_123_8177_n143, DP_OP_36J1_123_8177_n142,
         DP_OP_36J1_123_8177_n141, DP_OP_36J1_123_8177_n140,
         DP_OP_36J1_123_8177_n139, DP_OP_36J1_123_8177_n138,
         DP_OP_36J1_123_8177_n137, DP_OP_36J1_123_8177_n136,
         DP_OP_36J1_123_8177_n135, DP_OP_36J1_123_8177_n134,
         DP_OP_36J1_123_8177_n133, DP_OP_36J1_123_8177_n132,
         DP_OP_36J1_123_8177_n131, DP_OP_36J1_123_8177_n130,
         DP_OP_36J1_123_8177_n129, DP_OP_36J1_123_8177_n128,
         DP_OP_36J1_123_8177_n127, DP_OP_36J1_123_8177_n126,
         DP_OP_36J1_123_8177_n125, DP_OP_36J1_123_8177_n124,
         DP_OP_36J1_123_8177_n123, DP_OP_36J1_123_8177_n122,
         DP_OP_36J1_123_8177_n121, DP_OP_36J1_123_8177_n120,
         DP_OP_36J1_123_8177_n119, DP_OP_36J1_123_8177_n118,
         DP_OP_36J1_123_8177_n117, DP_OP_36J1_123_8177_n116,
         DP_OP_36J1_123_8177_n115, DP_OP_36J1_123_8177_n114,
         DP_OP_36J1_123_8177_n113, DP_OP_36J1_123_8177_n112,
         DP_OP_36J1_123_8177_n111, DP_OP_36J1_123_8177_n110,
         DP_OP_36J1_123_8177_n109, DP_OP_36J1_123_8177_n108,
         DP_OP_36J1_123_8177_n107, DP_OP_36J1_123_8177_n106,
         DP_OP_36J1_123_8177_n105, DP_OP_36J1_123_8177_n104,
         DP_OP_36J1_123_8177_n103, DP_OP_36J1_123_8177_n102,
         DP_OP_36J1_123_8177_n101, DP_OP_36J1_123_8177_n100,
         DP_OP_36J1_123_8177_n99, DP_OP_36J1_123_8177_n98,
         DP_OP_36J1_123_8177_n97, DP_OP_36J1_123_8177_n96,
         DP_OP_36J1_123_8177_n95, DP_OP_36J1_123_8177_n94,
         DP_OP_36J1_123_8177_n93, DP_OP_36J1_123_8177_n92,
         DP_OP_36J1_123_8177_n91, DP_OP_36J1_123_8177_n90,
         DP_OP_36J1_123_8177_n89, DP_OP_36J1_123_8177_n88,
         DP_OP_36J1_123_8177_n87, DP_OP_36J1_123_8177_n86,
         DP_OP_36J1_123_8177_n85, DP_OP_36J1_123_8177_n84,
         DP_OP_36J1_123_8177_n83, DP_OP_36J1_123_8177_n82,
         DP_OP_36J1_123_8177_n81, DP_OP_36J1_123_8177_n80,
         DP_OP_36J1_123_8177_n79, DP_OP_36J1_123_8177_n78,
         DP_OP_36J1_123_8177_n77, DP_OP_36J1_123_8177_n76,
         DP_OP_36J1_123_8177_n75, DP_OP_36J1_123_8177_n74,
         DP_OP_36J1_123_8177_n71, DP_OP_36J1_123_8177_n70,
         DP_OP_36J1_123_8177_n69, DP_OP_36J1_123_8177_n68,
         DP_OP_36J1_123_8177_n67, DP_OP_36J1_123_8177_n66,
         DP_OP_36J1_123_8177_n65, DP_OP_36J1_123_8177_n64,
         DP_OP_36J1_123_8177_n63, DP_OP_36J1_123_8177_n62,
         DP_OP_36J1_123_8177_n61, DP_OP_36J1_123_8177_n60,
         DP_OP_36J1_123_8177_n59, DP_OP_36J1_123_8177_n58,
         DP_OP_36J1_123_8177_n57, DP_OP_36J1_123_8177_n56,
         DP_OP_36J1_123_8177_n55, DP_OP_36J1_123_8177_n54,
         DP_OP_36J1_123_8177_n53, DP_OP_36J1_123_8177_n52,
         DP_OP_36J1_123_8177_n51, intadd_1_A_20_, intadd_1_A_19_,
         intadd_1_A_18_, intadd_1_A_17_, intadd_1_A_16_, intadd_1_A_15_,
         intadd_1_A_14_, intadd_1_A_13_, intadd_1_A_12_, intadd_1_A_11_,
         intadd_1_A_10_, intadd_1_A_9_, intadd_1_A_8_, intadd_1_A_7_,
         intadd_1_A_6_, intadd_1_A_5_, intadd_1_A_4_, intadd_1_A_3_,
         intadd_1_A_2_, intadd_1_A_1_, intadd_1_A_0_, intadd_1_B_21_,
         intadd_1_B_20_, intadd_1_B_18_, intadd_1_B_16_, intadd_1_B_14_,
         intadd_1_B_13_, intadd_1_B_12_, intadd_1_B_11_, intadd_1_B_10_,
         intadd_1_B_9_, intadd_1_B_8_, intadd_1_B_7_, intadd_1_B_6_,
         intadd_1_B_5_, intadd_1_B_4_, intadd_1_B_3_, intadd_1_B_2_,
         intadd_1_B_1_, intadd_1_B_0_, intadd_1_CI, intadd_1_SUM_21_,
         intadd_1_SUM_20_, intadd_1_SUM_19_, intadd_1_SUM_18_,
         intadd_1_SUM_17_, intadd_1_SUM_16_, intadd_1_SUM_15_,
         intadd_1_SUM_14_, intadd_1_SUM_13_, intadd_1_SUM_12_,
         intadd_1_SUM_11_, intadd_1_SUM_10_, intadd_1_SUM_9_, intadd_1_SUM_8_,
         intadd_1_SUM_7_, intadd_1_SUM_6_, intadd_1_SUM_5_, intadd_1_SUM_4_,
         intadd_1_SUM_3_, intadd_1_SUM_2_, intadd_1_SUM_1_, intadd_1_SUM_0_,
         intadd_1_n22, intadd_1_n21, intadd_1_n20, intadd_1_n19, intadd_1_n18,
         intadd_1_n17, intadd_1_n16, intadd_1_n15, intadd_1_n14, intadd_1_n13,
         intadd_1_n12, intadd_1_n11, intadd_1_n10, intadd_1_n9, intadd_1_n8,
         intadd_1_n7, intadd_1_n6, intadd_1_n5, intadd_1_n4, intadd_1_n3,
         intadd_1_n2, intadd_1_n1, intadd_2_A_18_, intadd_2_A_17_,
         intadd_2_A_16_, intadd_2_A_15_, intadd_2_A_14_, intadd_2_A_13_,
         intadd_2_A_12_, intadd_2_A_11_, intadd_2_A_10_, intadd_2_A_9_,
         intadd_2_A_8_, intadd_2_A_7_, intadd_2_A_6_, intadd_2_A_5_,
         intadd_2_A_4_, intadd_2_A_3_, intadd_2_A_2_, intadd_2_A_1_,
         intadd_2_A_0_, intadd_2_B_18_, intadd_2_B_17_, intadd_2_B_16_,
         intadd_2_B_15_, intadd_2_B_14_, intadd_2_B_13_, intadd_2_B_12_,
         intadd_2_B_11_, intadd_2_B_10_, intadd_2_B_9_, intadd_2_B_8_,
         intadd_2_B_7_, intadd_2_B_6_, intadd_2_B_5_, intadd_2_B_4_,
         intadd_2_B_3_, intadd_2_B_2_, intadd_2_B_1_, intadd_2_B_0_,
         intadd_2_CI, intadd_2_SUM_17_, intadd_2_SUM_15_, intadd_2_n19,
         intadd_2_n18, intadd_2_n17, intadd_2_n16, intadd_2_n15, intadd_2_n14,
         intadd_2_n13, intadd_2_n12, intadd_2_n11, intadd_2_n10, intadd_2_n9,
         intadd_2_n8, intadd_2_n7, intadd_2_n6, intadd_2_n5, intadd_2_n4,
         intadd_2_n3, intadd_2_n2, intadd_2_n1, intadd_3_A_2_, intadd_3_A_1_,
         intadd_3_B_2_, intadd_3_B_1_, intadd_3_CI, intadd_3_SUM_0_,
         intadd_3_n3, intadd_3_n2, intadd_3_n1, intadd_4_A_2_, intadd_4_A_1_,
         intadd_4_A_0_, intadd_4_B_2_, intadd_4_B_1_, intadd_4_B_0_,
         intadd_4_CI, intadd_4_n3, intadd_4_n2, intadd_4_n1, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104,
         n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115,
         n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, n126,
         n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, n137,
         n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, n148,
         n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n243, n244, n245, n246, n247,
         n248, n249, n250, n251, n252, n253, n254, n255, n256, n257, n258,
         n259, n260, n261, n262, n263, n264, n265, n266, n267, n268, n269,
         n270, n271, n272, n273, n274, n275, n276, n277, n278, n279, n280,
         n281, n282, n283, n284, n285, n286, n287, n288, n289, n290, n291,
         n292, n293, n294, n295, n296, n297, n298, n299, n300, n301, n302;
  wire   [1:0] x_rounding_error;
  wire   [1:0] y_rounding_error;
  wire   [5:4] midpoint_product_reduced;

  oadm_rounding_error_lut_3 x_rounding_lut ( .index({n299, y_mantissa[21], 
        n298}), .value_low(x_mantissa[3:0]), .x_error(x_rounding_error) );
  oadm_rounding_error_lut_2 y_rounding_lut ( .index({n301, n302, n300}), 
        .value_low(y_mantissa[3:0]), .y_error(y_rounding_error) );
  CMPE42D1 DP_OP_36J1_123_8177_U104 ( .A(DP_OP_36J1_123_8177_n155), .B(
        DP_OP_36J1_123_8177_n207), .C(DP_OP_36J1_123_8177_n245), .CIX(
        DP_OP_36J1_123_8177_n156), .D(DP_OP_36J1_123_8177_n226), .CO(
        DP_OP_36J1_123_8177_n152), .COX(DP_OP_36J1_123_8177_n151), .S(
        DP_OP_36J1_123_8177_n153) );
  CMPE42D1 DP_OP_36J1_123_8177_U100 ( .A(DP_OP_36J1_123_8177_n225), .B(
        DP_OP_36J1_123_8177_n206), .C(DP_OP_36J1_123_8177_n151), .CIX(
        DP_OP_36J1_123_8177_n152), .D(DP_OP_36J1_123_8177_n148), .CO(
        DP_OP_36J1_123_8177_n145), .COX(DP_OP_36J1_123_8177_n144), .S(
        DP_OP_36J1_123_8177_n146) );
  CMPE42D1 DP_OP_36J1_123_8177_U98 ( .A(DP_OP_36J1_123_8177_n147), .B(
        DP_OP_36J1_123_8177_n224), .C(DP_OP_36J1_123_8177_n143), .CIX(
        DP_OP_36J1_123_8177_n145), .D(DP_OP_36J1_123_8177_n144), .CO(
        DP_OP_36J1_123_8177_n140), .COX(DP_OP_36J1_123_8177_n139), .S(
        DP_OP_36J1_123_8177_n141) );
  CMPE42D1 DP_OP_36J1_123_8177_U95 ( .A(DP_OP_36J1_123_8177_n138), .B(
        DP_OP_36J1_123_8177_n223), .C(DP_OP_36J1_123_8177_n142), .CIX(
        DP_OP_36J1_123_8177_n140), .D(DP_OP_36J1_123_8177_n139), .CO(
        DP_OP_36J1_123_8177_n135), .COX(DP_OP_36J1_123_8177_n134), .S(
        DP_OP_36J1_123_8177_n136) );
  CMPE42D1 DP_OP_36J1_123_8177_U92 ( .A(DP_OP_36J1_123_8177_n137), .B(
        DP_OP_36J1_123_8177_n222), .C(DP_OP_36J1_123_8177_n133), .CIX(
        DP_OP_36J1_123_8177_n135), .D(DP_OP_36J1_123_8177_n134), .CO(
        DP_OP_36J1_123_8177_n130), .COX(DP_OP_36J1_123_8177_n129), .S(
        DP_OP_36J1_123_8177_n131) );
  CMPE42D1 DP_OP_36J1_123_8177_U89 ( .A(DP_OP_36J1_123_8177_n132), .B(
        DP_OP_36J1_123_8177_n221), .C(DP_OP_36J1_123_8177_n128), .CIX(
        DP_OP_36J1_123_8177_n130), .D(DP_OP_36J1_123_8177_n129), .CO(
        DP_OP_36J1_123_8177_n125), .COX(DP_OP_36J1_123_8177_n124), .S(
        DP_OP_36J1_123_8177_n126) );
  CMPE42D1 DP_OP_36J1_123_8177_U86 ( .A(DP_OP_36J1_123_8177_n127), .B(
        DP_OP_36J1_123_8177_n220), .C(DP_OP_36J1_123_8177_n123), .CIX(
        DP_OP_36J1_123_8177_n125), .D(DP_OP_36J1_123_8177_n124), .CO(
        DP_OP_36J1_123_8177_n120), .COX(DP_OP_36J1_123_8177_n119), .S(
        DP_OP_36J1_123_8177_n121) );
  CMPE42D1 DP_OP_36J1_123_8177_U83 ( .A(DP_OP_36J1_123_8177_n122), .B(
        DP_OP_36J1_123_8177_n219), .C(DP_OP_36J1_123_8177_n118), .CIX(
        DP_OP_36J1_123_8177_n120), .D(DP_OP_36J1_123_8177_n119), .CO(
        DP_OP_36J1_123_8177_n115), .COX(DP_OP_36J1_123_8177_n114), .S(
        DP_OP_36J1_123_8177_n116) );
  CMPE42D1 DP_OP_36J1_123_8177_U80 ( .A(DP_OP_36J1_123_8177_n117), .B(
        DP_OP_36J1_123_8177_n218), .C(DP_OP_36J1_123_8177_n113), .CIX(
        DP_OP_36J1_123_8177_n115), .D(DP_OP_36J1_123_8177_n114), .CO(
        DP_OP_36J1_123_8177_n110), .COX(DP_OP_36J1_123_8177_n109), .S(
        DP_OP_36J1_123_8177_n111) );
  CMPE42D1 DP_OP_36J1_123_8177_U77 ( .A(DP_OP_36J1_123_8177_n112), .B(
        DP_OP_36J1_123_8177_n217), .C(DP_OP_36J1_123_8177_n108), .CIX(
        DP_OP_36J1_123_8177_n110), .D(DP_OP_36J1_123_8177_n109), .CO(
        DP_OP_36J1_123_8177_n105), .COX(DP_OP_36J1_123_8177_n104), .S(
        DP_OP_36J1_123_8177_n106) );
  CMPE42D1 DP_OP_36J1_123_8177_U74 ( .A(DP_OP_36J1_123_8177_n107), .B(
        DP_OP_36J1_123_8177_n216), .C(DP_OP_36J1_123_8177_n103), .CIX(
        DP_OP_36J1_123_8177_n105), .D(DP_OP_36J1_123_8177_n104), .CO(
        DP_OP_36J1_123_8177_n100), .COX(DP_OP_36J1_123_8177_n99), .S(
        DP_OP_36J1_123_8177_n101) );
  CMPE42D1 DP_OP_36J1_123_8177_U71 ( .A(DP_OP_36J1_123_8177_n102), .B(
        DP_OP_36J1_123_8177_n215), .C(DP_OP_36J1_123_8177_n98), .CIX(
        DP_OP_36J1_123_8177_n100), .D(DP_OP_36J1_123_8177_n99), .CO(
        DP_OP_36J1_123_8177_n95), .COX(DP_OP_36J1_123_8177_n94), .S(
        DP_OP_36J1_123_8177_n96) );
  CMPE42D1 DP_OP_36J1_123_8177_U68 ( .A(DP_OP_36J1_123_8177_n97), .B(
        DP_OP_36J1_123_8177_n214), .C(DP_OP_36J1_123_8177_n93), .CIX(
        DP_OP_36J1_123_8177_n95), .D(DP_OP_36J1_123_8177_n94), .CO(
        DP_OP_36J1_123_8177_n90), .COX(DP_OP_36J1_123_8177_n89), .S(
        DP_OP_36J1_123_8177_n91) );
  CMPE42D1 DP_OP_36J1_123_8177_U65 ( .A(DP_OP_36J1_123_8177_n92), .B(
        DP_OP_36J1_123_8177_n213), .C(DP_OP_36J1_123_8177_n88), .CIX(
        DP_OP_36J1_123_8177_n90), .D(DP_OP_36J1_123_8177_n89), .CO(
        DP_OP_36J1_123_8177_n85), .COX(DP_OP_36J1_123_8177_n84), .S(
        DP_OP_36J1_123_8177_n86) );
  CMPE42D1 DP_OP_36J1_123_8177_U62 ( .A(DP_OP_36J1_123_8177_n87), .B(
        DP_OP_36J1_123_8177_n212), .C(DP_OP_36J1_123_8177_n83), .CIX(
        DP_OP_36J1_123_8177_n85), .D(DP_OP_36J1_123_8177_n84), .CO(
        DP_OP_36J1_123_8177_n80), .COX(DP_OP_36J1_123_8177_n79), .S(
        DP_OP_36J1_123_8177_n81) );
  CMPE42D1 DP_OP_36J1_123_8177_U60 ( .A(DP_OP_36J1_123_8177_n82), .B(
        DP_OP_36J1_123_8177_n211), .C(DP_OP_36J1_123_8177_n78), .CIX(
        DP_OP_36J1_123_8177_n80), .D(DP_OP_36J1_123_8177_n79), .CO(
        DP_OP_36J1_123_8177_n75), .COX(DP_OP_36J1_123_8177_n74), .S(
        DP_OP_36J1_123_8177_n76) );
  CMPE42D1 DP_OP_36J1_123_8177_U57 ( .A(DP_OP_36J1_123_8177_n71), .B(
        DP_OP_36J1_123_8177_n77), .C(DP_OP_36J1_123_8177_n74), .CIX(
        DP_OP_36J1_123_8177_n166), .D(DP_OP_36J1_123_8177_n75), .CO(
        DP_OP_36J1_123_8177_n68), .COX(DP_OP_36J1_123_8177_n67), .S(
        DP_OP_36J1_123_8177_n69) );
  CMPE42D1 DP_OP_36J1_123_8177_U55 ( .A(DP_OP_36J1_123_8177_n66), .B(
        DP_OP_36J1_123_8177_n209), .C(DP_OP_36J1_123_8177_n70), .CIX(
        DP_OP_36J1_123_8177_n68), .D(DP_OP_36J1_123_8177_n67), .CO(
        DP_OP_36J1_123_8177_n63), .COX(DP_OP_36J1_123_8177_n62), .S(
        DP_OP_36J1_123_8177_n64) );
  CMPE42D1 DP_OP_36J1_123_8177_U53 ( .A(DP_OP_36J1_123_8177_n61), .B(
        DP_OP_36J1_123_8177_n65), .C(DP_OP_36J1_123_8177_n62), .CIX(
        DP_OP_36J1_123_8177_n164), .D(DP_OP_36J1_123_8177_n63), .CO(
        DP_OP_36J1_123_8177_n58), .COX(DP_OP_36J1_123_8177_n57), .S(
        DP_OP_36J1_123_8177_n59) );
  CMPE42D1 DP_OP_36J1_123_8177_U52 ( .A(DP_OP_36J1_123_8177_n188), .B(
        midpoint_product_reduced[4]), .C(DP_OP_36J1_123_8177_n60), .CIX(
        DP_OP_36J1_123_8177_n58), .D(DP_OP_36J1_123_8177_n57), .CO(
        DP_OP_36J1_123_8177_n55), .COX(DP_OP_36J1_123_8177_n54), .S(
        DP_OP_36J1_123_8177_n56) );
  CMPE42D1 DP_OP_36J1_123_8177_U51 ( .A(x_mantissa[19]), .B(
        midpoint_product_reduced[5]), .C(DP_OP_36J1_123_8177_n54), .CIX(
        DP_OP_36J1_123_8177_n55), .D(DP_OP_36J1_123_8177_n162), .CO(
        DP_OP_36J1_123_8177_n52), .COX(DP_OP_36J1_123_8177_n51), .S(
        DP_OP_36J1_123_8177_n53) );
  FA1D0 intadd_1_U23 ( .A(intadd_1_A_0_), .B(intadd_1_B_0_), .CI(intadd_1_CI), 
        .CO(intadd_1_n22), .S(intadd_1_SUM_0_) );
  FA1D0 intadd_1_U22 ( .A(intadd_1_A_1_), .B(intadd_1_B_1_), .CI(intadd_1_n22), 
        .CO(intadd_1_n21), .S(intadd_1_SUM_1_) );
  FA1D0 intadd_1_U21 ( .A(intadd_1_A_2_), .B(intadd_1_B_2_), .CI(intadd_1_n21), 
        .CO(intadd_1_n20), .S(intadd_1_SUM_2_) );
  FA1D0 intadd_1_U20 ( .A(intadd_1_A_3_), .B(intadd_1_B_3_), .CI(intadd_1_n20), 
        .CO(intadd_1_n19), .S(intadd_1_SUM_3_) );
  FA1D0 intadd_1_U19 ( .A(intadd_1_A_4_), .B(intadd_1_B_4_), .CI(intadd_1_n19), 
        .CO(intadd_1_n18), .S(intadd_1_SUM_4_) );
  FA1D0 intadd_1_U18 ( .A(intadd_1_A_5_), .B(intadd_1_B_5_), .CI(intadd_1_n18), 
        .CO(intadd_1_n17), .S(intadd_1_SUM_5_) );
  FA1D0 intadd_1_U17 ( .A(intadd_1_A_6_), .B(intadd_1_B_6_), .CI(intadd_1_n17), 
        .CO(intadd_1_n16), .S(intadd_1_SUM_6_) );
  FA1D0 intadd_1_U16 ( .A(intadd_1_A_7_), .B(intadd_1_B_7_), .CI(intadd_1_n16), 
        .CO(intadd_1_n15), .S(intadd_1_SUM_7_) );
  FA1D0 intadd_1_U15 ( .A(intadd_1_A_8_), .B(intadd_1_B_8_), .CI(intadd_1_n15), 
        .CO(intadd_1_n14), .S(intadd_1_SUM_8_) );
  FA1D0 intadd_1_U14 ( .A(intadd_1_A_9_), .B(intadd_1_B_9_), .CI(intadd_1_n14), 
        .CO(intadd_1_n13), .S(intadd_1_SUM_9_) );
  FA1D0 intadd_1_U13 ( .A(intadd_1_A_10_), .B(intadd_1_B_10_), .CI(
        intadd_1_n13), .CO(intadd_1_n12), .S(intadd_1_SUM_10_) );
  FA1D0 intadd_1_U12 ( .A(intadd_1_A_11_), .B(intadd_1_B_11_), .CI(
        intadd_1_n12), .CO(intadd_1_n11), .S(intadd_1_SUM_11_) );
  FA1D0 intadd_1_U11 ( .A(intadd_1_A_12_), .B(intadd_1_B_12_), .CI(
        intadd_1_n11), .CO(intadd_1_n10), .S(intadd_1_SUM_12_) );
  FA1D0 intadd_1_U10 ( .A(intadd_1_A_13_), .B(intadd_1_B_13_), .CI(
        intadd_1_n10), .CO(intadd_1_n9), .S(intadd_1_SUM_13_) );
  FA1D0 intadd_1_U9 ( .A(intadd_1_A_14_), .B(intadd_1_B_14_), .CI(intadd_1_n9), 
        .CO(intadd_1_n8), .S(intadd_1_SUM_14_) );
  FA1D0 intadd_1_U8 ( .A(intadd_1_A_15_), .B(DP_OP_36J1_123_8177_n166), .CI(
        intadd_1_n8), .CO(intadd_1_n7), .S(intadd_1_SUM_15_) );
  FA1D0 intadd_1_U7 ( .A(intadd_1_A_16_), .B(intadd_1_B_16_), .CI(intadd_1_n7), 
        .CO(intadd_1_n6), .S(intadd_1_SUM_16_) );
  FA1D0 intadd_1_U6 ( .A(intadd_1_A_17_), .B(DP_OP_36J1_123_8177_n164), .CI(
        intadd_1_n6), .CO(intadd_1_n5), .S(intadd_1_SUM_17_) );
  FA1D0 intadd_1_U5 ( .A(intadd_1_A_18_), .B(intadd_1_B_18_), .CI(intadd_1_n5), 
        .CO(intadd_1_n4), .S(intadd_1_SUM_18_) );
  FA1D0 intadd_1_U4 ( .A(intadd_1_A_19_), .B(DP_OP_36J1_123_8177_n162), .CI(
        intadd_1_n4), .CO(intadd_1_n3), .S(intadd_1_SUM_19_) );
  FA1D0 intadd_1_U3 ( .A(intadd_1_A_20_), .B(intadd_1_B_20_), .CI(intadd_1_n3), 
        .CO(intadd_1_n2), .S(intadd_1_SUM_20_) );
  FA1D0 intadd_1_U2 ( .A(y_mantissa[19]), .B(intadd_1_B_21_), .CI(intadd_1_n2), 
        .CO(intadd_1_n1), .S(intadd_1_SUM_21_) );
  FA1D0 intadd_2_U20 ( .A(intadd_2_A_0_), .B(intadd_2_B_0_), .CI(intadd_2_CI), 
        .CO(intadd_2_n19), .S(intadd_1_CI) );
  FA1D0 intadd_2_U19 ( .A(intadd_2_A_1_), .B(intadd_2_B_1_), .CI(intadd_2_n19), 
        .CO(intadd_2_n18), .S(intadd_1_B_1_) );
  FA1D0 intadd_2_U18 ( .A(intadd_2_A_2_), .B(intadd_2_B_2_), .CI(intadd_2_n18), 
        .CO(intadd_2_n17), .S(intadd_1_B_2_) );
  FA1D0 intadd_2_U17 ( .A(intadd_2_A_3_), .B(intadd_2_B_3_), .CI(intadd_2_n17), 
        .CO(intadd_2_n16), .S(intadd_1_B_3_) );
  FA1D0 intadd_2_U16 ( .A(intadd_2_A_4_), .B(intadd_2_B_4_), .CI(intadd_2_n16), 
        .CO(intadd_2_n15), .S(intadd_1_B_4_) );
  FA1D0 intadd_2_U15 ( .A(intadd_2_A_5_), .B(intadd_2_B_5_), .CI(intadd_2_n15), 
        .CO(intadd_2_n14), .S(intadd_1_B_5_) );
  FA1D0 intadd_2_U14 ( .A(intadd_2_A_6_), .B(intadd_2_B_6_), .CI(intadd_2_n14), 
        .CO(intadd_2_n13), .S(intadd_1_B_6_) );
  FA1D0 intadd_2_U13 ( .A(intadd_2_A_7_), .B(intadd_2_B_7_), .CI(intadd_2_n13), 
        .CO(intadd_2_n12), .S(intadd_1_B_7_) );
  FA1D0 intadd_2_U12 ( .A(intadd_2_A_8_), .B(intadd_2_B_8_), .CI(intadd_2_n12), 
        .CO(intadd_2_n11), .S(intadd_1_B_8_) );
  FA1D0 intadd_2_U11 ( .A(intadd_2_A_9_), .B(intadd_2_B_9_), .CI(intadd_2_n11), 
        .CO(intadd_2_n10), .S(intadd_1_B_9_) );
  FA1D0 intadd_2_U10 ( .A(intadd_2_A_10_), .B(intadd_2_B_10_), .CI(
        intadd_2_n10), .CO(intadd_2_n9), .S(intadd_1_B_10_) );
  FA1D0 intadd_2_U9 ( .A(intadd_2_A_11_), .B(intadd_2_B_11_), .CI(intadd_2_n9), 
        .CO(intadd_2_n8), .S(intadd_1_B_11_) );
  FA1D0 intadd_2_U8 ( .A(intadd_2_A_12_), .B(intadd_2_B_12_), .CI(intadd_2_n8), 
        .CO(intadd_2_n7), .S(intadd_1_B_12_) );
  FA1D0 intadd_2_U7 ( .A(intadd_2_A_13_), .B(intadd_2_B_13_), .CI(intadd_2_n7), 
        .CO(intadd_2_n6), .S(intadd_1_B_13_) );
  FA1D0 intadd_2_U6 ( .A(intadd_2_A_14_), .B(intadd_2_B_14_), .CI(intadd_2_n6), 
        .CO(intadd_2_n5), .S(intadd_1_B_14_) );
  FA1D0 intadd_2_U5 ( .A(intadd_2_A_15_), .B(intadd_2_B_15_), .CI(intadd_2_n5), 
        .CO(intadd_2_n4), .S(intadd_2_SUM_15_) );
  FA1D0 intadd_2_U4 ( .A(intadd_2_A_16_), .B(intadd_2_B_16_), .CI(intadd_2_n4), 
        .CO(intadd_2_n3), .S(intadd_1_B_16_) );
  FA1D0 intadd_2_U3 ( .A(intadd_2_A_17_), .B(intadd_2_B_17_), .CI(intadd_2_n3), 
        .CO(intadd_2_n2), .S(intadd_2_SUM_17_) );
  FA1D0 intadd_2_U2 ( .A(intadd_2_A_18_), .B(intadd_2_B_18_), .CI(intadd_2_n2), 
        .CO(intadd_2_n1), .S(intadd_1_B_18_) );
  FA1D0 intadd_3_U4 ( .A(DP_OP_36J1_123_8177_n52), .B(DP_OP_36J1_123_8177_n51), 
        .CI(intadd_3_CI), .CO(intadd_3_n3), .S(intadd_3_SUM_0_) );
  FA1D0 intadd_3_U3 ( .A(intadd_3_A_1_), .B(intadd_3_B_1_), .CI(intadd_3_n3), 
        .CO(intadd_3_n2), .S(plane_exact_centered[22]) );
  FA1D0 intadd_3_U2 ( .A(intadd_3_A_2_), .B(intadd_3_B_2_), .CI(intadd_3_n2), 
        .CO(intadd_3_n1), .S(plane_exact_centered[23]) );
  FA1D0 intadd_4_U4 ( .A(intadd_4_A_0_), .B(intadd_4_B_0_), .CI(intadd_4_CI), 
        .CO(intadd_4_n3), .S(midpoint_product_reduced[4]) );
  FA1D0 intadd_4_U3 ( .A(intadd_4_A_1_), .B(intadd_4_B_1_), .CI(intadd_4_n3), 
        .CO(intadd_4_n2), .S(midpoint_product_reduced[5]) );
  FA1D0 intadd_4_U2 ( .A(intadd_4_A_2_), .B(intadd_4_B_2_), .CI(intadd_4_n2), 
        .CO(intadd_4_n1), .S(intadd_3_CI) );
  AOI22D0 U3 ( .A1(n301), .A2(y_mantissa[17]), .B1(y_mantissa[18]), .B2(n255), 
        .ZN(n258) );
  AOI22D0 U4 ( .A1(n300), .A2(n166), .B1(y_mantissa[17]), .B2(n269), .ZN(n148)
         );
  INVD0 U5 ( .I(y_mantissa[17]), .ZN(n166) );
  AOI22D0 U6 ( .A1(n298), .A2(n83), .B1(x_mantissa[6]), .B2(n283), .ZN(n85) );
  AOI22D0 U7 ( .A1(n299), .A2(x_mantissa[5]), .B1(x_mantissa[6]), .B2(n284), 
        .ZN(n72) );
  AOI22D0 U8 ( .A1(x_mantissa[6]), .A2(n252), .B1(n251), .B2(n83), .ZN(n15) );
  INVD0 U9 ( .I(x_mantissa[6]), .ZN(n83) );
  AOI22D0 U10 ( .A1(n298), .A2(n80), .B1(x_mantissa[7]), .B2(n283), .ZN(n81)
         );
  AOI22D0 U11 ( .A1(n299), .A2(x_mantissa[6]), .B1(x_mantissa[7]), .B2(n284), 
        .ZN(n69) );
  AOI22D0 U12 ( .A1(n299), .A2(x_mantissa[7]), .B1(x_mantissa[8]), .B2(n284), 
        .ZN(n66) );
  AOI22D0 U13 ( .A1(x_mantissa[7]), .A2(n252), .B1(n251), .B2(n80), .ZN(n14)
         );
  INVD0 U14 ( .I(x_mantissa[7]), .ZN(n80) );
  AOI22D0 U15 ( .A1(n298), .A2(n73), .B1(x_mantissa[9]), .B2(n283), .ZN(n74)
         );
  AOI22D0 U16 ( .A1(n299), .A2(x_mantissa[8]), .B1(x_mantissa[9]), .B2(n284), 
        .ZN(n63) );
  AOI22D0 U17 ( .A1(n299), .A2(x_mantissa[9]), .B1(x_mantissa[10]), .B2(n284), 
        .ZN(n60) );
  AOI22D0 U18 ( .A1(x_mantissa[9]), .A2(n252), .B1(n251), .B2(n73), .ZN(n12)
         );
  INVD0 U19 ( .I(x_mantissa[9]), .ZN(n73) );
  AOI22D0 U20 ( .A1(n298), .A2(n67), .B1(x_mantissa[11]), .B2(n283), .ZN(n68)
         );
  AOI22D0 U21 ( .A1(n299), .A2(x_mantissa[10]), .B1(x_mantissa[11]), .B2(n284), 
        .ZN(n53) );
  AOI22D0 U22 ( .A1(n299), .A2(x_mantissa[11]), .B1(x_mantissa[12]), .B2(n284), 
        .ZN(n50) );
  AOI22D0 U23 ( .A1(x_mantissa[11]), .A2(n252), .B1(n251), .B2(n67), .ZN(n10)
         );
  INVD0 U24 ( .I(x_mantissa[11]), .ZN(n67) );
  AOI22D0 U25 ( .A1(n298), .A2(n61), .B1(x_mantissa[13]), .B2(n283), .ZN(n62)
         );
  AOI22D0 U26 ( .A1(n299), .A2(x_mantissa[12]), .B1(x_mantissa[13]), .B2(n284), 
        .ZN(n36) );
  AOI22D0 U27 ( .A1(n299), .A2(x_mantissa[13]), .B1(x_mantissa[14]), .B2(n284), 
        .ZN(n34) );
  AOI22D0 U28 ( .A1(x_mantissa[13]), .A2(n252), .B1(n251), .B2(n61), .ZN(n8)
         );
  INVD0 U29 ( .I(x_mantissa[13]), .ZN(n61) );
  AOI22D0 U30 ( .A1(n298), .A2(n51), .B1(x_mantissa[15]), .B2(n283), .ZN(n52)
         );
  AOI22D0 U31 ( .A1(n299), .A2(x_mantissa[15]), .B1(x_mantissa[16]), .B2(n284), 
        .ZN(n56) );
  AOI22D0 U32 ( .A1(n299), .A2(x_mantissa[14]), .B1(x_mantissa[15]), .B2(n284), 
        .ZN(n25) );
  AOI22D0 U33 ( .A1(x_mantissa[15]), .A2(n252), .B1(n251), .B2(n51), .ZN(n6)
         );
  INVD0 U34 ( .I(x_mantissa[15]), .ZN(n51) );
  AOI22D0 U35 ( .A1(n298), .A2(x_mantissa[4]), .B1(n79), .B2(n283), .ZN(
        DP_OP_36J1_123_8177_n245) );
  AOI22D0 U36 ( .A1(n299), .A2(x_mantissa[3]), .B1(x_mantissa[4]), .B2(n284), 
        .ZN(n78) );
  AOI22D0 U37 ( .A1(n299), .A2(x_mantissa[4]), .B1(x_mantissa[5]), .B2(n284), 
        .ZN(n75) );
  AOI22D0 U38 ( .A1(x_mantissa[4]), .A2(n252), .B1(n251), .B2(n79), .ZN(n17)
         );
  INVD0 U39 ( .I(x_mantissa[4]), .ZN(n79) );
  AOI22D0 U40 ( .A1(n300), .A2(n228), .B1(y_mantissa[4]), .B2(n269), .ZN(n245)
         );
  AOI22D0 U41 ( .A1(n301), .A2(y_mantissa[3]), .B1(y_mantissa[4]), .B2(n255), 
        .ZN(n208) );
  AOI22D0 U42 ( .A1(y_mantissa[4]), .A2(n229), .B1(n238), .B2(n228), .ZN(n200)
         );
  INVD0 U43 ( .I(y_mantissa[4]), .ZN(n228) );
  AOI22D0 U44 ( .A1(n301), .A2(y_mantissa[4]), .B1(y_mantissa[5]), .B2(n255), 
        .ZN(n212) );
  AOI22D0 U45 ( .A1(n300), .A2(n218), .B1(y_mantissa[6]), .B2(n269), .ZN(n220)
         );
  AOI22D0 U46 ( .A1(n301), .A2(y_mantissa[6]), .B1(y_mantissa[7]), .B2(n255), 
        .ZN(n108) );
  AOI22D0 U47 ( .A1(n301), .A2(y_mantissa[5]), .B1(y_mantissa[6]), .B2(n255), 
        .ZN(n102) );
  AOI22D0 U48 ( .A1(y_mantissa[6]), .A2(n229), .B1(n238), .B2(n218), .ZN(n96)
         );
  INVD0 U49 ( .I(y_mantissa[6]), .ZN(n218) );
  AOI22D0 U50 ( .A1(n300), .A2(n204), .B1(y_mantissa[8]), .B2(n269), .ZN(n206)
         );
  AOI22D0 U51 ( .A1(n301), .A2(y_mantissa[8]), .B1(y_mantissa[9]), .B2(n255), 
        .ZN(n122) );
  AOI22D0 U52 ( .A1(n301), .A2(y_mantissa[7]), .B1(y_mantissa[8]), .B2(n255), 
        .ZN(n115) );
  AOI22D0 U53 ( .A1(y_mantissa[8]), .A2(n229), .B1(n238), .B2(n204), .ZN(n104)
         );
  INVD0 U54 ( .I(y_mantissa[8]), .ZN(n204) );
  AOI22D0 U55 ( .A1(n301), .A2(y_mantissa[10]), .B1(y_mantissa[11]), .B2(n255), 
        .ZN(n136) );
  AOI22D0 U56 ( .A1(n301), .A2(y_mantissa[9]), .B1(y_mantissa[10]), .B2(n255), 
        .ZN(n129) );
  AOI22D0 U57 ( .A1(y_mantissa[10]), .A2(n229), .B1(n238), .B2(n117), .ZN(n118) );
  AOI22D0 U58 ( .A1(n300), .A2(n117), .B1(y_mantissa[10]), .B2(n269), .ZN(n100) );
  INVD0 U59 ( .I(y_mantissa[10]), .ZN(n117) );
  AOI22D0 U60 ( .A1(n301), .A2(y_mantissa[12]), .B1(y_mantissa[13]), .B2(n255), 
        .ZN(n150) );
  AOI22D0 U61 ( .A1(n301), .A2(y_mantissa[11]), .B1(y_mantissa[12]), .B2(n255), 
        .ZN(n143) );
  AOI22D0 U62 ( .A1(y_mantissa[12]), .A2(n229), .B1(n238), .B2(n131), .ZN(n132) );
  AOI22D0 U63 ( .A1(n300), .A2(n131), .B1(y_mantissa[12]), .B2(n269), .ZN(n113) );
  INVD0 U64 ( .I(y_mantissa[12]), .ZN(n131) );
  AOI22D0 U65 ( .A1(n301), .A2(y_mantissa[14]), .B1(y_mantissa[15]), .B2(n255), 
        .ZN(n163) );
  AOI22D0 U66 ( .A1(n301), .A2(y_mantissa[13]), .B1(y_mantissa[14]), .B2(n255), 
        .ZN(n157) );
  AOI22D0 U67 ( .A1(y_mantissa[14]), .A2(n229), .B1(n238), .B2(n145), .ZN(n146) );
  AOI22D0 U68 ( .A1(n300), .A2(n145), .B1(y_mantissa[14]), .B2(n269), .ZN(n127) );
  INVD0 U69 ( .I(y_mantissa[14]), .ZN(n145) );
  AOI22D0 U70 ( .A1(n301), .A2(y_mantissa[16]), .B1(y_mantissa[17]), .B2(n255), 
        .ZN(n176) );
  AOI22D0 U71 ( .A1(n301), .A2(y_mantissa[15]), .B1(y_mantissa[16]), .B2(n255), 
        .ZN(n169) );
  AOI22D0 U72 ( .A1(y_mantissa[16]), .A2(n229), .B1(n238), .B2(n159), .ZN(n160) );
  AOI22D0 U73 ( .A1(n300), .A2(n159), .B1(y_mantissa[16]), .B2(n269), .ZN(n141) );
  INVD0 U74 ( .I(y_mantissa[16]), .ZN(n159) );
  AOI22D0 U75 ( .A1(n298), .A2(n39), .B1(x_mantissa[17]), .B2(n283), .ZN(n35)
         );
  AOI22D0 U76 ( .A1(n299), .A2(x_mantissa[17]), .B1(x_mantissa[18]), .B2(n284), 
        .ZN(n46) );
  AOI22D0 U77 ( .A1(n299), .A2(x_mantissa[16]), .B1(x_mantissa[17]), .B2(n284), 
        .ZN(n27) );
  AOI22D0 U78 ( .A1(x_mantissa[17]), .A2(n252), .B1(n251), .B2(n39), .ZN(n4)
         );
  INVD0 U79 ( .I(x_mantissa[17]), .ZN(n39) );
  BUFFD0 U80 ( .I(x_mantissa[21]), .Z(n302) );
  INVD0 U81 ( .I(x_mantissa[22]), .ZN(n255) );
  INVD0 U82 ( .I(n255), .ZN(n301) );
  INVD0 U83 ( .I(x_mantissa[20]), .ZN(n269) );
  INVD0 U84 ( .I(n269), .ZN(n300) );
  INVD0 U85 ( .I(y_mantissa[22]), .ZN(n284) );
  INVD0 U86 ( .I(n284), .ZN(n299) );
  INVD0 U87 ( .I(y_mantissa[20]), .ZN(n283) );
  INVD0 U88 ( .I(n283), .ZN(n298) );
  NR3D0 U89 ( .A1(n298), .A2(y_mantissa[21]), .A3(n284), .ZN(n249) );
  INVD0 U90 ( .I(n249), .ZN(n20) );
  INVD0 U91 ( .I(x_mantissa[16]), .ZN(n48) );
  ND3D0 U92 ( .A1(n298), .A2(y_mantissa[21]), .A3(n284), .ZN(n23) );
  INVD0 U93 ( .I(y_mantissa[21]), .ZN(n184) );
  AOI22D0 U94 ( .A1(n298), .A2(n184), .B1(y_mantissa[21]), .B2(n283), .ZN(n286) );
  NR2D0 U95 ( .A1(n299), .A2(n286), .ZN(n252) );
  NR2D0 U96 ( .A1(n284), .A2(n286), .ZN(n251) );
  OAI221D0 U97 ( .A1(x_mantissa[16]), .A2(n20), .B1(n48), .B2(n23), .C(n4), 
        .ZN(DP_OP_36J1_123_8177_n211) );
  AOI22D0 U98 ( .A1(x_mantissa[16]), .A2(n252), .B1(n251), .B2(n48), .ZN(n5)
         );
  OAI221D0 U99 ( .A1(x_mantissa[15]), .A2(n20), .B1(n51), .B2(n23), .C(n5), 
        .ZN(DP_OP_36J1_123_8177_n212) );
  INVD0 U100 ( .I(x_mantissa[14]), .ZN(n58) );
  OAI221D0 U101 ( .A1(x_mantissa[14]), .A2(n20), .B1(n58), .B2(n23), .C(n6), 
        .ZN(DP_OP_36J1_123_8177_n213) );
  AOI22D0 U102 ( .A1(x_mantissa[14]), .A2(n252), .B1(n251), .B2(n58), .ZN(n7)
         );
  OAI221D0 U103 ( .A1(x_mantissa[13]), .A2(n20), .B1(n61), .B2(n23), .C(n7), 
        .ZN(DP_OP_36J1_123_8177_n214) );
  INVD0 U104 ( .I(x_mantissa[12]), .ZN(n64) );
  OAI221D0 U105 ( .A1(x_mantissa[12]), .A2(n20), .B1(n64), .B2(n23), .C(n8), 
        .ZN(DP_OP_36J1_123_8177_n215) );
  AOI22D0 U106 ( .A1(x_mantissa[12]), .A2(n252), .B1(n251), .B2(n64), .ZN(n9)
         );
  OAI221D0 U107 ( .A1(x_mantissa[11]), .A2(n20), .B1(n67), .B2(n23), .C(n9), 
        .ZN(DP_OP_36J1_123_8177_n216) );
  INVD0 U108 ( .I(x_mantissa[10]), .ZN(n70) );
  OAI221D0 U109 ( .A1(x_mantissa[10]), .A2(n20), .B1(n70), .B2(n23), .C(n10), 
        .ZN(DP_OP_36J1_123_8177_n217) );
  AOI22D0 U110 ( .A1(x_mantissa[10]), .A2(n252), .B1(n251), .B2(n70), .ZN(n11)
         );
  OAI221D0 U111 ( .A1(x_mantissa[9]), .A2(n20), .B1(n73), .B2(n23), .C(n11), 
        .ZN(DP_OP_36J1_123_8177_n218) );
  INVD0 U112 ( .I(x_mantissa[8]), .ZN(n76) );
  OAI221D0 U113 ( .A1(x_mantissa[8]), .A2(n20), .B1(n76), .B2(n23), .C(n12), 
        .ZN(DP_OP_36J1_123_8177_n219) );
  AOI22D0 U114 ( .A1(x_mantissa[8]), .A2(n252), .B1(n251), .B2(n76), .ZN(n13)
         );
  OAI221D0 U115 ( .A1(x_mantissa[7]), .A2(n20), .B1(n80), .B2(n23), .C(n13), 
        .ZN(DP_OP_36J1_123_8177_n220) );
  OAI221D0 U116 ( .A1(x_mantissa[6]), .A2(n20), .B1(n83), .B2(n23), .C(n14), 
        .ZN(DP_OP_36J1_123_8177_n221) );
  INVD0 U117 ( .I(x_mantissa[5]), .ZN(n88) );
  OAI221D0 U118 ( .A1(x_mantissa[5]), .A2(n20), .B1(n88), .B2(n23), .C(n15), 
        .ZN(DP_OP_36J1_123_8177_n222) );
  AOI22D0 U119 ( .A1(x_mantissa[5]), .A2(n252), .B1(n251), .B2(n88), .ZN(n16)
         );
  OAI221D0 U120 ( .A1(x_mantissa[4]), .A2(n20), .B1(n79), .B2(n23), .C(n16), 
        .ZN(DP_OP_36J1_123_8177_n223) );
  INVD0 U121 ( .I(x_mantissa[3]), .ZN(n247) );
  OAI221D0 U122 ( .A1(x_mantissa[3]), .A2(n20), .B1(n247), .B2(n23), .C(n17), 
        .ZN(DP_OP_36J1_123_8177_n224) );
  INVD0 U123 ( .I(x_mantissa[1]), .ZN(n279) );
  INVD0 U124 ( .I(x_mantissa[2]), .ZN(n282) );
  AOI22D0 U125 ( .A1(x_mantissa[2]), .A2(n252), .B1(n251), .B2(n282), .ZN(n18)
         );
  OAI221D0 U126 ( .A1(x_mantissa[1]), .A2(n20), .B1(n279), .B2(n23), .C(n18), 
        .ZN(DP_OP_36J1_123_8177_n226) );
  AOI22D0 U127 ( .A1(x_mantissa[3]), .A2(n252), .B1(n251), .B2(n247), .ZN(n19)
         );
  OAI221D0 U128 ( .A1(x_mantissa[2]), .A2(n20), .B1(n282), .B2(n23), .C(n19), 
        .ZN(DP_OP_36J1_123_8177_n225) );
  INVD0 U129 ( .I(x_mantissa[18]), .ZN(n37) );
  AOI22D0 U130 ( .A1(n299), .A2(n37), .B1(x_mantissa[19]), .B2(n284), .ZN(
        DP_OP_36J1_123_8177_n188) );
  NR2D0 U131 ( .A1(n283), .A2(n269), .ZN(n31) );
  AOI21D0 U132 ( .A1(n269), .A2(n283), .B(n31), .ZN(n181) );
  INVD0 U133 ( .I(x_mantissa[19]), .ZN(n22) );
  AOI22D0 U134 ( .A1(n298), .A2(x_mantissa[19]), .B1(n22), .B2(n283), .ZN(n42)
         );
  CKND2D0 U135 ( .A1(n181), .A2(n42), .ZN(n41) );
  CKND2D0 U136 ( .A1(n31), .A2(n182), .ZN(n263) );
  OAI21D0 U137 ( .A1(n31), .A2(n182), .B(n263), .ZN(n26) );
  INVD0 U138 ( .I(n21), .ZN(DP_OP_36J1_123_8177_n65) );
  AOI22D0 U139 ( .A1(n299), .A2(x_mantissa[19]), .B1(n22), .B2(n284), .ZN(n29)
         );
  INVD0 U140 ( .I(n23), .ZN(n40) );
  AOI22D0 U141 ( .A1(x_mantissa[18]), .A2(n40), .B1(n249), .B2(n37), .ZN(n24)
         );
  OAI21D0 U142 ( .A1(n286), .A2(n29), .B(n24), .ZN(DP_OP_36J1_123_8177_n209)
         );
  CKND2D0 U143 ( .A1(n42), .A2(n25), .ZN(DP_OP_36J1_123_8177_n77) );
  OAI21D0 U144 ( .A1(n42), .A2(n25), .B(DP_OP_36J1_123_8177_n77), .ZN(
        DP_OP_36J1_123_8177_n78) );
  FA1D0 U145 ( .A(n27), .B(n41), .CI(n26), .CO(n21), .S(n28) );
  INVD0 U146 ( .I(n28), .ZN(DP_OP_36J1_123_8177_n66) );
  INVD0 U147 ( .I(n286), .ZN(n285) );
  AOI221D0 U148 ( .A1(n299), .A2(y_mantissa[21]), .B1(n284), .B2(n184), .C(
        n285), .ZN(n248) );
  IAO21D0 U149 ( .A1(n248), .A2(n285), .B(n29), .ZN(n45) );
  CKND2D0 U150 ( .A1(n302), .A2(n298), .ZN(n30) );
  INVD0 U151 ( .I(n302), .ZN(n270) );
  NR4D0 U152 ( .A1(n269), .A2(n270), .A3(n283), .A4(n184), .ZN(n293) );
  AO221D0 U153 ( .A1(n184), .A2(n30), .B1(n269), .B2(n30), .C(n293), .Z(n264)
         );
  FA1D0 U154 ( .A(y_mantissa[21]), .B(n302), .CI(n31), .CO(n189), .S(n182) );
  XNR3D0 U155 ( .A1(n264), .A2(n192), .A3(n263), .ZN(n44) );
  INVD0 U156 ( .I(n32), .ZN(DP_OP_36J1_123_8177_n60) );
  AOI22D0 U157 ( .A1(n298), .A2(n37), .B1(x_mantissa[18]), .B2(n283), .ZN(n33)
         );
  CKND2D0 U158 ( .A1(n34), .A2(n33), .ZN(DP_OP_36J1_123_8177_n82) );
  OAI21D0 U159 ( .A1(n34), .A2(n33), .B(DP_OP_36J1_123_8177_n82), .ZN(
        DP_OP_36J1_123_8177_n83) );
  CKND2D0 U160 ( .A1(n36), .A2(n35), .ZN(DP_OP_36J1_123_8177_n87) );
  OAI21D0 U161 ( .A1(n36), .A2(n35), .B(DP_OP_36J1_123_8177_n87), .ZN(
        DP_OP_36J1_123_8177_n88) );
  AOI221D0 U162 ( .A1(n299), .A2(x_mantissa[18]), .B1(n284), .B2(n37), .C(n286), .ZN(n38) );
  AOI221D0 U163 ( .A1(n40), .A2(x_mantissa[17]), .B1(n249), .B2(n39), .C(n38), 
        .ZN(n55) );
  OAI21D0 U164 ( .A1(n181), .A2(n42), .B(n41), .ZN(n54) );
  INVD0 U165 ( .I(n43), .ZN(DP_OP_36J1_123_8177_n70) );
  FA1D0 U166 ( .A(n46), .B(n45), .CI(n44), .CO(n32), .S(n47) );
  INVD0 U167 ( .I(n47), .ZN(DP_OP_36J1_123_8177_n61) );
  AOI22D0 U168 ( .A1(n298), .A2(n48), .B1(x_mantissa[16]), .B2(n283), .ZN(n49)
         );
  CKND2D0 U169 ( .A1(n50), .A2(n49), .ZN(DP_OP_36J1_123_8177_n92) );
  OAI21D0 U170 ( .A1(n50), .A2(n49), .B(DP_OP_36J1_123_8177_n92), .ZN(
        DP_OP_36J1_123_8177_n93) );
  CKND2D0 U171 ( .A1(n53), .A2(n52), .ZN(DP_OP_36J1_123_8177_n97) );
  OAI21D0 U172 ( .A1(n53), .A2(n52), .B(DP_OP_36J1_123_8177_n97), .ZN(
        DP_OP_36J1_123_8177_n98) );
  FA1D0 U173 ( .A(n56), .B(n55), .CI(n54), .CO(n43), .S(n57) );
  INVD0 U174 ( .I(n57), .ZN(DP_OP_36J1_123_8177_n71) );
  AOI22D0 U175 ( .A1(n298), .A2(n58), .B1(x_mantissa[14]), .B2(n283), .ZN(n59)
         );
  CKND2D0 U176 ( .A1(n60), .A2(n59), .ZN(DP_OP_36J1_123_8177_n102) );
  OAI21D0 U177 ( .A1(n60), .A2(n59), .B(DP_OP_36J1_123_8177_n102), .ZN(
        DP_OP_36J1_123_8177_n103) );
  CKND2D0 U178 ( .A1(n63), .A2(n62), .ZN(DP_OP_36J1_123_8177_n107) );
  OAI21D0 U179 ( .A1(n63), .A2(n62), .B(DP_OP_36J1_123_8177_n107), .ZN(
        DP_OP_36J1_123_8177_n108) );
  AOI22D0 U180 ( .A1(n298), .A2(n64), .B1(x_mantissa[12]), .B2(n283), .ZN(n65)
         );
  CKND2D0 U181 ( .A1(n66), .A2(n65), .ZN(DP_OP_36J1_123_8177_n112) );
  OAI21D0 U182 ( .A1(n66), .A2(n65), .B(DP_OP_36J1_123_8177_n112), .ZN(
        DP_OP_36J1_123_8177_n113) );
  CKND2D0 U183 ( .A1(n69), .A2(n68), .ZN(DP_OP_36J1_123_8177_n117) );
  OAI21D0 U184 ( .A1(n69), .A2(n68), .B(DP_OP_36J1_123_8177_n117), .ZN(
        DP_OP_36J1_123_8177_n118) );
  AOI22D0 U185 ( .A1(n298), .A2(n70), .B1(x_mantissa[10]), .B2(n283), .ZN(n71)
         );
  CKND2D0 U186 ( .A1(n72), .A2(n71), .ZN(DP_OP_36J1_123_8177_n122) );
  OAI21D0 U187 ( .A1(n72), .A2(n71), .B(DP_OP_36J1_123_8177_n122), .ZN(
        DP_OP_36J1_123_8177_n123) );
  CKND2D0 U188 ( .A1(n75), .A2(n74), .ZN(DP_OP_36J1_123_8177_n127) );
  OAI21D0 U189 ( .A1(n75), .A2(n74), .B(DP_OP_36J1_123_8177_n127), .ZN(
        DP_OP_36J1_123_8177_n128) );
  AOI22D0 U190 ( .A1(n298), .A2(n76), .B1(x_mantissa[8]), .B2(n283), .ZN(n77)
         );
  CKND2D0 U191 ( .A1(n78), .A2(n77), .ZN(DP_OP_36J1_123_8177_n132) );
  OAI21D0 U192 ( .A1(n78), .A2(n77), .B(DP_OP_36J1_123_8177_n132), .ZN(
        DP_OP_36J1_123_8177_n133) );
  AOI22D0 U193 ( .A1(n299), .A2(x_mantissa[2]), .B1(x_mantissa[3]), .B2(n284), 
        .ZN(n82) );
  CKND2D0 U194 ( .A1(n82), .A2(n81), .ZN(DP_OP_36J1_123_8177_n137) );
  OAI21D0 U195 ( .A1(n82), .A2(n81), .B(DP_OP_36J1_123_8177_n137), .ZN(
        DP_OP_36J1_123_8177_n138) );
  INVD0 U196 ( .I(x_mantissa[0]), .ZN(n280) );
  AOI22D0 U197 ( .A1(n299), .A2(n280), .B1(n279), .B2(n284), .ZN(
        DP_OP_36J1_123_8177_n206) );
  CKAN2D0 U198 ( .A1(y_rounding_error[1]), .A2(x_rounding_error[1]), .Z(n89)
         );
  AOI22D0 U199 ( .A1(n299), .A2(x_mantissa[1]), .B1(x_mantissa[2]), .B2(n284), 
        .ZN(n86) );
  INVD0 U200 ( .I(n84), .ZN(DP_OP_36J1_123_8177_n142) );
  INVD0 U201 ( .I(intadd_1_SUM_14_), .ZN(plane_exact_centered[14]) );
  INVD0 U202 ( .I(intadd_1_SUM_15_), .ZN(plane_exact_centered[15]) );
  INVD0 U203 ( .I(intadd_1_SUM_16_), .ZN(plane_exact_centered[16]) );
  INVD0 U204 ( .I(intadd_1_SUM_13_), .ZN(plane_exact_centered[13]) );
  INVD0 U205 ( .I(intadd_1_SUM_8_), .ZN(plane_exact_centered[8]) );
  INVD0 U206 ( .I(intadd_1_SUM_11_), .ZN(plane_exact_centered[11]) );
  INVD0 U207 ( .I(intadd_1_SUM_12_), .ZN(plane_exact_centered[12]) );
  INVD0 U208 ( .I(intadd_1_SUM_9_), .ZN(plane_exact_centered[9]) );
  INVD0 U209 ( .I(intadd_1_SUM_10_), .ZN(plane_exact_centered[10]) );
  INVD0 U210 ( .I(intadd_1_SUM_6_), .ZN(plane_exact_centered[6]) );
  INVD0 U211 ( .I(intadd_1_SUM_7_), .ZN(plane_exact_centered[7]) );
  INVD0 U212 ( .I(intadd_1_SUM_17_), .ZN(plane_exact_centered[17]) );
  INVD0 U213 ( .I(intadd_1_SUM_18_), .ZN(plane_exact_centered[18]) );
  INVD0 U214 ( .I(intadd_1_SUM_19_), .ZN(plane_exact_centered[19]) );
  INVD0 U215 ( .I(intadd_1_SUM_20_), .ZN(plane_exact_centered[20]) );
  FA1D0 U216 ( .A(n89), .B(n86), .CI(n85), .CO(n84), .S(n87) );
  INVD0 U217 ( .I(n87), .ZN(DP_OP_36J1_123_8177_n143) );
  INVD0 U218 ( .I(intadd_1_SUM_21_), .ZN(plane_exact_centered[21]) );
  CKND2D0 U219 ( .A1(y_rounding_error[0]), .A2(x_rounding_error[0]), .ZN(n95)
         );
  INVD0 U220 ( .I(n95), .ZN(n93) );
  AOI22D0 U221 ( .A1(n298), .A2(n88), .B1(x_mantissa[5]), .B2(n283), .ZN(n92)
         );
  IAO21D0 U222 ( .A1(y_rounding_error[1]), .A2(x_rounding_error[1]), .B(n89), 
        .ZN(n91) );
  INVD0 U223 ( .I(n90), .ZN(DP_OP_36J1_123_8177_n148) );
  FA1D0 U224 ( .A(n93), .B(n92), .CI(n91), .CO(n94), .S(n90) );
  INVD0 U225 ( .I(n94), .ZN(DP_OP_36J1_123_8177_n147) );
  OAI21D0 U226 ( .A1(y_rounding_error[0]), .A2(x_rounding_error[0]), .B(n95), 
        .ZN(DP_OP_36J1_123_8177_n155) );
  INVD0 U227 ( .I(intadd_1_n1), .ZN(intadd_3_B_1_) );
  INVD0 U228 ( .I(DP_OP_36J1_123_8177_n121), .ZN(intadd_1_A_6_) );
  INVD0 U229 ( .I(DP_OP_36J1_123_8177_n116), .ZN(intadd_1_A_7_) );
  INVD0 U230 ( .I(DP_OP_36J1_123_8177_n111), .ZN(intadd_1_A_8_) );
  INVD0 U231 ( .I(DP_OP_36J1_123_8177_n106), .ZN(intadd_1_A_9_) );
  INVD0 U232 ( .I(DP_OP_36J1_123_8177_n101), .ZN(intadd_1_A_10_) );
  INVD0 U233 ( .I(DP_OP_36J1_123_8177_n96), .ZN(intadd_1_A_11_) );
  INVD0 U234 ( .I(DP_OP_36J1_123_8177_n91), .ZN(intadd_1_A_12_) );
  INVD0 U235 ( .I(DP_OP_36J1_123_8177_n86), .ZN(intadd_1_A_13_) );
  INVD0 U236 ( .I(DP_OP_36J1_123_8177_n81), .ZN(intadd_1_A_14_) );
  INVD0 U237 ( .I(intadd_2_SUM_15_), .ZN(DP_OP_36J1_123_8177_n166) );
  INVD0 U238 ( .I(DP_OP_36J1_123_8177_n76), .ZN(intadd_1_A_15_) );
  INVD0 U239 ( .I(DP_OP_36J1_123_8177_n69), .ZN(intadd_1_A_16_) );
  INVD0 U240 ( .I(intadd_2_SUM_17_), .ZN(DP_OP_36J1_123_8177_n164) );
  INVD0 U241 ( .I(DP_OP_36J1_123_8177_n64), .ZN(intadd_1_A_17_) );
  INVD0 U242 ( .I(DP_OP_36J1_123_8177_n59), .ZN(intadd_1_A_18_) );
  AOI22D0 U243 ( .A1(n300), .A2(n270), .B1(n302), .B2(n269), .ZN(n273) );
  NR2D0 U244 ( .A1(n301), .A2(n273), .ZN(n242) );
  NR2D0 U245 ( .A1(n255), .A2(n273), .ZN(n241) );
  INVD0 U246 ( .I(y_mantissa[7]), .ZN(n201) );
  ND3D0 U247 ( .A1(n300), .A2(n302), .A3(n255), .ZN(n229) );
  ND3D0 U248 ( .A1(n301), .A2(n269), .A3(n270), .ZN(n238) );
  AOI221D0 U249 ( .A1(n242), .A2(y_mantissa[7]), .B1(n241), .B2(n201), .C(n96), 
        .ZN(n211) );
  INVD0 U250 ( .I(y_mantissa[9]), .ZN(n110) );
  AOI22D0 U251 ( .A1(n300), .A2(n110), .B1(y_mantissa[9]), .B2(n269), .ZN(n210) );
  INVD0 U252 ( .I(n97), .ZN(intadd_2_B_6_) );
  AOI22D0 U253 ( .A1(y_mantissa[7]), .A2(n229), .B1(n238), .B2(n201), .ZN(n98)
         );
  AOI221D0 U254 ( .A1(n242), .A2(y_mantissa[8]), .B1(n241), .B2(n204), .C(n98), 
        .ZN(n101) );
  INVD0 U255 ( .I(n99), .ZN(intadd_2_A_6_) );
  FA1D0 U256 ( .A(n102), .B(n101), .CI(n100), .CO(n103), .S(n99) );
  INVD0 U257 ( .I(n103), .ZN(intadd_2_B_7_) );
  AOI221D0 U258 ( .A1(n242), .A2(y_mantissa[9]), .B1(n241), .B2(n110), .C(n104), .ZN(n107) );
  INVD0 U259 ( .I(y_mantissa[11]), .ZN(n124) );
  AOI22D0 U260 ( .A1(n300), .A2(n124), .B1(y_mantissa[11]), .B2(n269), .ZN(
        n106) );
  INVD0 U261 ( .I(n105), .ZN(intadd_2_A_7_) );
  FA1D0 U262 ( .A(n108), .B(n107), .CI(n106), .CO(n109), .S(n105) );
  INVD0 U263 ( .I(n109), .ZN(intadd_2_B_8_) );
  AOI22D0 U264 ( .A1(y_mantissa[9]), .A2(n229), .B1(n238), .B2(n110), .ZN(n111) );
  AOI221D0 U265 ( .A1(n242), .A2(y_mantissa[10]), .B1(n241), .B2(n117), .C(
        n111), .ZN(n114) );
  INVD0 U266 ( .I(n112), .ZN(intadd_2_A_8_) );
  FA1D0 U267 ( .A(n115), .B(n114), .CI(n113), .CO(n116), .S(n112) );
  INVD0 U268 ( .I(n116), .ZN(intadd_2_B_9_) );
  AOI221D0 U269 ( .A1(n242), .A2(y_mantissa[11]), .B1(n241), .B2(n124), .C(
        n118), .ZN(n121) );
  INVD0 U270 ( .I(y_mantissa[13]), .ZN(n138) );
  AOI22D0 U271 ( .A1(n300), .A2(n138), .B1(y_mantissa[13]), .B2(n269), .ZN(
        n120) );
  INVD0 U272 ( .I(n119), .ZN(intadd_2_A_9_) );
  FA1D0 U273 ( .A(n122), .B(n121), .CI(n120), .CO(n123), .S(n119) );
  INVD0 U274 ( .I(n123), .ZN(intadd_2_B_10_) );
  AOI22D0 U275 ( .A1(y_mantissa[11]), .A2(n229), .B1(n238), .B2(n124), .ZN(
        n125) );
  AOI221D0 U276 ( .A1(n242), .A2(y_mantissa[12]), .B1(n241), .B2(n131), .C(
        n125), .ZN(n128) );
  INVD0 U277 ( .I(n126), .ZN(intadd_2_A_10_) );
  FA1D0 U278 ( .A(n129), .B(n128), .CI(n127), .CO(n130), .S(n126) );
  INVD0 U279 ( .I(n130), .ZN(intadd_2_B_11_) );
  AOI221D0 U280 ( .A1(n242), .A2(y_mantissa[13]), .B1(n241), .B2(n138), .C(
        n132), .ZN(n135) );
  INVD0 U281 ( .I(y_mantissa[15]), .ZN(n152) );
  AOI22D0 U282 ( .A1(n300), .A2(n152), .B1(y_mantissa[15]), .B2(n269), .ZN(
        n134) );
  INVD0 U283 ( .I(n133), .ZN(intadd_2_A_11_) );
  FA1D0 U284 ( .A(n136), .B(n135), .CI(n134), .CO(n137), .S(n133) );
  INVD0 U285 ( .I(n137), .ZN(intadd_2_B_12_) );
  AOI22D0 U286 ( .A1(y_mantissa[13]), .A2(n229), .B1(n238), .B2(n138), .ZN(
        n139) );
  AOI221D0 U287 ( .A1(n242), .A2(y_mantissa[14]), .B1(n241), .B2(n145), .C(
        n139), .ZN(n142) );
  INVD0 U288 ( .I(n140), .ZN(intadd_2_A_12_) );
  FA1D0 U289 ( .A(n143), .B(n142), .CI(n141), .CO(n144), .S(n140) );
  INVD0 U290 ( .I(n144), .ZN(intadd_2_B_13_) );
  AOI221D0 U291 ( .A1(n242), .A2(y_mantissa[15]), .B1(n241), .B2(n152), .C(
        n146), .ZN(n149) );
  INVD0 U292 ( .I(n147), .ZN(intadd_2_A_13_) );
  FA1D0 U293 ( .A(n150), .B(n149), .CI(n148), .CO(n151), .S(n147) );
  INVD0 U294 ( .I(n151), .ZN(intadd_2_B_14_) );
  AOI22D0 U295 ( .A1(y_mantissa[15]), .A2(n229), .B1(n238), .B2(n152), .ZN(
        n153) );
  AOI221D0 U296 ( .A1(n242), .A2(y_mantissa[16]), .B1(n241), .B2(n159), .C(
        n153), .ZN(n156) );
  INVD0 U297 ( .I(y_mantissa[18]), .ZN(n256) );
  AOI22D0 U298 ( .A1(n300), .A2(n256), .B1(y_mantissa[18]), .B2(n269), .ZN(
        n155) );
  INVD0 U299 ( .I(n154), .ZN(intadd_2_A_14_) );
  FA1D0 U300 ( .A(n157), .B(n156), .CI(n155), .CO(n158), .S(n154) );
  INVD0 U301 ( .I(n158), .ZN(intadd_2_B_15_) );
  INVD0 U302 ( .I(y_mantissa[19]), .ZN(intadd_1_B_20_) );
  AOI221D0 U303 ( .A1(n242), .A2(y_mantissa[17]), .B1(n241), .B2(n166), .C(
        n160), .ZN(n162) );
  AOI22D0 U304 ( .A1(n300), .A2(intadd_1_B_20_), .B1(y_mantissa[19]), .B2(n269), .ZN(n259) );
  INVD0 U305 ( .I(n259), .ZN(n177) );
  INVD0 U306 ( .I(n161), .ZN(intadd_2_A_15_) );
  FA1D0 U307 ( .A(n163), .B(n162), .CI(n177), .CO(n164), .S(n161) );
  INVD0 U308 ( .I(n164), .ZN(intadd_2_B_16_) );
  INVD0 U309 ( .I(n229), .ZN(n173) );
  INVD0 U310 ( .I(n238), .ZN(n172) );
  AOI221D0 U311 ( .A1(n301), .A2(y_mantissa[18]), .B1(n255), .B2(n256), .C(
        n273), .ZN(n165) );
  AOI221D0 U312 ( .A1(n173), .A2(y_mantissa[17]), .B1(n172), .B2(n166), .C(
        n165), .ZN(n168) );
  INVD0 U313 ( .I(n167), .ZN(intadd_2_A_16_) );
  FA1D0 U314 ( .A(n177), .B(n169), .CI(n168), .CO(n170), .S(n167) );
  INVD0 U315 ( .I(n170), .ZN(intadd_2_B_17_) );
  AOI22D0 U316 ( .A1(n301), .A2(y_mantissa[19]), .B1(intadd_1_B_20_), .B2(n255), .ZN(n179) );
  NR2D0 U317 ( .A1(n179), .A2(n273), .ZN(n171) );
  AOI221D0 U318 ( .A1(n173), .A2(y_mantissa[18]), .B1(n172), .B2(n256), .C(
        n171), .ZN(n175) );
  INVD0 U319 ( .I(n174), .ZN(intadd_2_A_17_) );
  FA1D0 U320 ( .A(n177), .B(n176), .CI(n175), .CO(n178), .S(n174) );
  INVD0 U321 ( .I(n178), .ZN(intadd_2_B_18_) );
  OAI221D0 U322 ( .A1(n301), .A2(n302), .B1(n255), .B2(n270), .C(n273), .ZN(
        n237) );
  AOI21D0 U323 ( .A1(n273), .A2(n237), .B(n179), .ZN(n257) );
  INVD0 U324 ( .I(n180), .ZN(intadd_2_A_18_) );
  INVD0 U325 ( .I(DP_OP_36J1_123_8177_n56), .ZN(intadd_1_A_19_) );
  INVD0 U326 ( .I(DP_OP_36J1_123_8177_n53), .ZN(intadd_1_A_20_) );
  INVD0 U327 ( .I(intadd_3_SUM_0_), .ZN(intadd_1_B_21_) );
  INVD0 U328 ( .I(n181), .ZN(intadd_4_A_1_) );
  INVD0 U329 ( .I(n192), .ZN(n262) );
  INVD0 U330 ( .I(n182), .ZN(n266) );
  NR2D0 U331 ( .A1(intadd_4_A_1_), .A2(n266), .ZN(n265) );
  MUX2ND0 U332 ( .I0(n262), .I1(n192), .S(n265), .ZN(n188) );
  INVD0 U333 ( .I(n188), .ZN(n191) );
  CKND2D0 U334 ( .A1(n302), .A2(n299), .ZN(n183) );
  NR4D0 U335 ( .A1(n255), .A2(n270), .A3(n284), .A4(n184), .ZN(n199) );
  AOI221D0 U336 ( .A1(n184), .A2(n183), .B1(n255), .B2(n183), .C(n199), .ZN(
        n297) );
  CKND2D0 U337 ( .A1(n302), .A2(y_mantissa[21]), .ZN(n185) );
  NR4D0 U338 ( .A1(n269), .A2(n270), .A3(n284), .A4(n184), .ZN(n295) );
  AOI221D0 U339 ( .A1(n284), .A2(n185), .B1(n269), .B2(n185), .C(n295), .ZN(
        n294) );
  NR2D0 U340 ( .A1(n283), .A2(n255), .ZN(n292) );
  AO31D0 U341 ( .A1(n299), .A2(n301), .A3(n198), .B(n199), .Z(n186) );
  NR2D0 U342 ( .A1(n186), .A2(intadd_4_n1), .ZN(n190) );
  AOI21D0 U343 ( .A1(intadd_4_n1), .A2(n186), .B(n190), .ZN(n187) );
  MUX2ND0 U344 ( .I0(n188), .I1(n191), .S(n187), .ZN(intadd_3_A_1_) );
  INVD0 U345 ( .I(intadd_3_A_1_), .ZN(intadd_3_B_2_) );
  FA1D0 U346 ( .A(n299), .B(n301), .CI(n189), .CO(intadd_4_B_0_), .S(n192) );
  NR2D0 U347 ( .A1(n191), .A2(n190), .ZN(n195) );
  CKND2D0 U348 ( .A1(n192), .A2(n265), .ZN(n193) );
  IND2D0 U349 ( .A1(intadd_4_B_0_), .B1(n193), .ZN(n194) );
  CKND2D0 U350 ( .A1(n195), .A2(n194), .ZN(n253) );
  OA21D0 U351 ( .A1(n195), .A2(n194), .B(n253), .Z(intadd_3_A_2_) );
  CKND2D0 U352 ( .A1(n301), .A2(n299), .ZN(n197) );
  OAI21D0 U353 ( .A1(n199), .A2(n197), .B(n198), .ZN(n196) );
  OAI31D0 U354 ( .A1(n199), .A2(n198), .A3(n197), .B(n196), .ZN(intadd_4_A_2_)
         );
  INVD0 U355 ( .I(intadd_1_SUM_4_), .ZN(plane_exact_centered[4]) );
  INVD0 U356 ( .I(intadd_1_SUM_5_), .ZN(plane_exact_centered[5]) );
  INVD0 U357 ( .I(DP_OP_36J1_123_8177_n131), .ZN(intadd_1_A_4_) );
  AOI22D0 U358 ( .A1(n301), .A2(y_mantissa[2]), .B1(y_mantissa[3]), .B2(n255), 
        .ZN(n226) );
  INVD0 U359 ( .I(y_mantissa[5]), .ZN(n215) );
  AOI221D0 U360 ( .A1(n242), .A2(y_mantissa[5]), .B1(n241), .B2(n215), .C(n200), .ZN(n225) );
  AOI22D0 U361 ( .A1(n300), .A2(n201), .B1(y_mantissa[7]), .B2(n269), .ZN(n224) );
  INVD0 U362 ( .I(n202), .ZN(intadd_2_B_4_) );
  AOI22D0 U363 ( .A1(y_mantissa[5]), .A2(n229), .B1(n238), .B2(n215), .ZN(n203) );
  AOI221D0 U364 ( .A1(n242), .A2(y_mantissa[6]), .B1(n241), .B2(n218), .C(n203), .ZN(n207) );
  INVD0 U365 ( .I(n205), .ZN(intadd_2_A_4_) );
  FA1D0 U366 ( .A(n208), .B(n207), .CI(n206), .CO(n209), .S(n205) );
  INVD0 U367 ( .I(n209), .ZN(intadd_2_B_5_) );
  FA1D0 U368 ( .A(n212), .B(n211), .CI(n210), .CO(n97), .S(n213) );
  INVD0 U369 ( .I(n213), .ZN(intadd_2_A_5_) );
  INVD0 U370 ( .I(DP_OP_36J1_123_8177_n126), .ZN(intadd_1_A_5_) );
  INVD0 U371 ( .I(intadd_1_SUM_2_), .ZN(plane_exact_centered[2]) );
  INVD0 U372 ( .I(intadd_1_SUM_3_), .ZN(plane_exact_centered[3]) );
  INVD0 U373 ( .I(DP_OP_36J1_123_8177_n141), .ZN(intadd_1_A_2_) );
  AOI22D0 U374 ( .A1(n301), .A2(y_mantissa[0]), .B1(y_mantissa[1]), .B2(n255), 
        .ZN(n234) );
  INVD0 U375 ( .I(y_mantissa[3]), .ZN(n236) );
  INVD0 U376 ( .I(y_mantissa[2]), .ZN(n268) );
  AOI22D0 U377 ( .A1(y_mantissa[2]), .A2(n229), .B1(n238), .B2(n268), .ZN(n214) );
  AOI221D0 U378 ( .A1(n242), .A2(y_mantissa[3]), .B1(n241), .B2(n236), .C(n214), .ZN(n233) );
  AOI22D0 U379 ( .A1(n300), .A2(n215), .B1(y_mantissa[5]), .B2(n269), .ZN(n232) );
  INVD0 U380 ( .I(n216), .ZN(intadd_2_B_2_) );
  AOI22D0 U381 ( .A1(n301), .A2(y_mantissa[1]), .B1(y_mantissa[2]), .B2(n255), 
        .ZN(n222) );
  AOI22D0 U382 ( .A1(y_mantissa[3]), .A2(n229), .B1(n238), .B2(n236), .ZN(n217) );
  AOI221D0 U383 ( .A1(n242), .A2(y_mantissa[4]), .B1(n241), .B2(n228), .C(n217), .ZN(n221) );
  INVD0 U384 ( .I(n219), .ZN(intadd_2_A_2_) );
  FA1D0 U385 ( .A(n222), .B(n221), .CI(n220), .CO(n223), .S(n219) );
  INVD0 U386 ( .I(n223), .ZN(intadd_2_B_3_) );
  FA1D0 U387 ( .A(n226), .B(n225), .CI(n224), .CO(n202), .S(n227) );
  INVD0 U388 ( .I(n227), .ZN(intadd_2_A_3_) );
  INVD0 U389 ( .I(DP_OP_36J1_123_8177_n136), .ZN(intadd_1_A_3_) );
  INVD0 U390 ( .I(intadd_1_SUM_1_), .ZN(plane_exact_centered[1]) );
  CKND2D0 U391 ( .A1(y_mantissa[0]), .A2(n255), .ZN(n244) );
  INVD0 U392 ( .I(y_mantissa[1]), .ZN(n240) );
  AOI22D0 U393 ( .A1(y_mantissa[1]), .A2(n229), .B1(n238), .B2(n240), .ZN(n230) );
  AOI221D0 U394 ( .A1(n242), .A2(y_mantissa[2]), .B1(n241), .B2(n268), .C(n230), .ZN(n243) );
  INVD0 U395 ( .I(n231), .ZN(intadd_2_B_1_) );
  FA1D0 U396 ( .A(n234), .B(n233), .CI(n232), .CO(n216), .S(n235) );
  INVD0 U397 ( .I(n235), .ZN(intadd_2_A_1_) );
  INVD0 U398 ( .I(DP_OP_36J1_123_8177_n146), .ZN(intadd_1_A_1_) );
  INVD0 U399 ( .I(intadd_1_SUM_0_), .ZN(plane_exact_centered[0]) );
  AOI22D0 U400 ( .A1(n300), .A2(n236), .B1(y_mantissa[3]), .B2(n269), .ZN(n274) );
  OAI22D0 U401 ( .A1(y_mantissa[0]), .A2(n238), .B1(n237), .B2(n244), .ZN(n239) );
  AOI221D0 U402 ( .A1(n242), .A2(y_mantissa[1]), .B1(n241), .B2(n240), .C(n239), .ZN(n275) );
  NR2D0 U403 ( .A1(n274), .A2(n275), .ZN(intadd_2_B_0_) );
  FA1D0 U404 ( .A(n245), .B(n244), .CI(n243), .CO(n231), .S(n246) );
  INVD0 U405 ( .I(n246), .ZN(intadd_2_A_0_) );
  NR2D0 U406 ( .A1(n280), .A2(n299), .ZN(DP_OP_36J1_123_8177_n207) );
  AOI22D0 U407 ( .A1(n298), .A2(n247), .B1(x_mantissa[3]), .B2(n283), .ZN(n287) );
  AO22D0 U408 ( .A1(n249), .A2(n280), .B1(n248), .B2(DP_OP_36J1_123_8177_n207), 
        .Z(n250) );
  AOI221D0 U409 ( .A1(n252), .A2(x_mantissa[1]), .B1(n251), .B2(n279), .C(n250), .ZN(n288) );
  NR2D0 U410 ( .A1(n287), .A2(n288), .ZN(DP_OP_36J1_123_8177_n156) );
  INVD0 U411 ( .I(DP_OP_36J1_123_8177_n153), .ZN(intadd_1_A_0_) );
  INVD0 U412 ( .I(intadd_3_n1), .ZN(n254) );
  NR2D0 U413 ( .A1(n253), .A2(n254), .ZN(plane_exact_centered[25]) );
  AOI21D0 U414 ( .A1(n254), .A2(n253), .B(plane_exact_centered[25]), .ZN(
        plane_exact_centered[24]) );
  AOI22D0 U415 ( .A1(n301), .A2(n256), .B1(y_mantissa[19]), .B2(n255), .ZN(
        n261) );
  FA1D0 U416 ( .A(n259), .B(n258), .CI(n257), .CO(n260), .S(n180) );
  XNR3D0 U417 ( .A1(n261), .A2(intadd_2_n1), .A3(n260), .ZN(
        DP_OP_36J1_123_8177_n162) );
  AOI21D0 U418 ( .A1(n264), .A2(n263), .B(n262), .ZN(intadd_4_CI) );
  AOI21D0 U419 ( .A1(intadd_4_A_1_), .A2(n266), .B(n265), .ZN(intadd_4_B_2_)
         );
  INVD0 U420 ( .I(y_mantissa[0]), .ZN(n272) );
  OAI32D0 U421 ( .A1(y_mantissa[0]), .A2(y_mantissa[1]), .A3(n269), .B1(n273), 
        .B2(n272), .ZN(n267) );
  OAI221D0 U422 ( .A1(n300), .A2(y_mantissa[2]), .B1(n269), .B2(n268), .C(n267), .ZN(n278) );
  INVD0 U423 ( .I(n273), .ZN(n271) );
  OAI221D0 U424 ( .A1(n273), .A2(n272), .B1(n271), .B2(n270), .C(n301), .ZN(
        n277) );
  AO21D0 U425 ( .A1(n275), .A2(n274), .B(intadd_2_B_0_), .Z(n276) );
  MAOI222D0 U426 ( .A(n278), .B(n277), .C(n276), .ZN(intadd_2_CI) );
  AOI32D0 U427 ( .A1(n298), .A2(n280), .A3(n279), .B1(x_mantissa[0]), .B2(n285), .ZN(n281) );
  AOI221D0 U428 ( .A1(n298), .A2(x_mantissa[2]), .B1(n283), .B2(n282), .C(n281), .ZN(n291) );
  AOI221D0 U429 ( .A1(y_mantissa[21]), .A2(n286), .B1(x_mantissa[0]), .B2(n285), .C(n284), .ZN(n290) );
  AOI21D0 U430 ( .A1(n288), .A2(n287), .B(DP_OP_36J1_123_8177_n156), .ZN(n289)
         );
  MAOI222D0 U431 ( .A(n291), .B(n290), .C(n289), .ZN(intadd_1_B_0_) );
  FA1D0 U432 ( .A(n294), .B(n293), .CI(n292), .CO(n296), .S(intadd_4_A_0_) );
  FA1D0 U433 ( .A(n297), .B(n296), .CI(n295), .CO(n198), .S(intadd_4_B_1_) );
endmodule


module oadm_fixed_l3_div_opt_PLANE_STYLE5_NORM_STYLE2_FP_STYLE1 ( x, y, result
 );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   C4_DATA2_1, mult_x_2_n246, mult_x_2_n245, mult_x_2_n244,
         mult_x_2_n243, mult_x_2_n242, mult_x_2_n241, mult_x_2_n240,
         mult_x_2_n239, mult_x_2_n238, mult_x_2_n237, mult_x_2_n236,
         mult_x_2_n235, mult_x_2_n234, mult_x_2_n233, mult_x_2_n232,
         mult_x_2_n231, mult_x_2_n230, mult_x_2_n229, mult_x_2_n228,
         mult_x_2_n227, mult_x_2_n226, mult_x_2_n218, mult_x_2_n217,
         mult_x_2_n216, mult_x_2_n215, mult_x_2_n214, mult_x_2_n213,
         mult_x_2_n212, mult_x_2_n211, mult_x_2_n210, mult_x_2_n209,
         mult_x_2_n208, mult_x_2_n207, mult_x_2_n206, mult_x_2_n205,
         mult_x_2_n204, mult_x_2_n203, mult_x_2_n202, mult_x_2_n201,
         mult_x_2_n200, mult_x_2_n199, mult_x_2_n198, mult_x_2_n197,
         mult_x_2_n196, mult_x_2_n191, mult_x_2_n190, mult_x_2_n189,
         mult_x_2_n188, mult_x_2_n187, mult_x_2_n186, mult_x_2_n185,
         mult_x_2_n184, mult_x_2_n183, mult_x_2_n182, mult_x_2_n181,
         mult_x_2_n180, mult_x_2_n179, mult_x_2_n178, mult_x_2_n177,
         mult_x_2_n176, mult_x_2_n175, mult_x_2_n174, mult_x_2_n173,
         mult_x_2_n172, mult_x_2_n171, mult_x_2_n170, mult_x_2_n169,
         mult_x_2_n168, mult_x_2_n166, mult_x_2_n165, mult_x_2_n164,
         mult_x_2_n163, mult_x_2_n162, mult_x_2_n161, mult_x_2_n160,
         mult_x_2_n159, mult_x_2_n158, mult_x_2_n157, mult_x_2_n156,
         mult_x_2_n155, mult_x_2_n154, mult_x_2_n153, mult_x_2_n152,
         mult_x_2_n151, mult_x_2_n150, mult_x_2_n149, mult_x_2_n148,
         mult_x_2_n147, mult_x_2_n146, mult_x_2_n145, mult_x_2_n144,
         mult_x_2_n134, mult_x_2_n131, mult_x_2_n130, mult_x_2_n129,
         mult_x_2_n128, mult_x_2_n127, mult_x_2_n126, mult_x_2_n125,
         mult_x_2_n124, mult_x_2_n123, mult_x_2_n122, mult_x_2_n121,
         mult_x_2_n120, mult_x_2_n119, mult_x_2_n118, mult_x_2_n117,
         mult_x_2_n116, mult_x_2_n115, mult_x_2_n114, mult_x_2_n113,
         mult_x_2_n112, mult_x_2_n111, mult_x_2_n110, mult_x_2_n109,
         mult_x_2_n108, mult_x_2_n107, mult_x_2_n106, mult_x_2_n105,
         mult_x_2_n104, mult_x_2_n103, mult_x_2_n102, mult_x_2_n101,
         mult_x_2_n100, mult_x_2_n99, mult_x_2_n98, mult_x_2_n97, mult_x_2_n96,
         mult_x_2_n95, mult_x_2_n94, mult_x_2_n93, mult_x_2_n92, mult_x_2_n91,
         mult_x_2_n90, mult_x_2_n89, mult_x_2_n88, mult_x_2_n87, mult_x_2_n86,
         mult_x_2_n85, mult_x_2_n84, mult_x_2_n83, mult_x_2_n82, mult_x_2_n81,
         mult_x_2_n80, mult_x_2_n79, mult_x_2_n78, mult_x_2_n77, mult_x_2_n76,
         mult_x_2_n75, mult_x_2_n74, mult_x_2_n73, mult_x_2_n72, mult_x_2_n71,
         mult_x_2_n70, mult_x_2_n69, mult_x_2_n68, mult_x_2_n67, mult_x_2_n66,
         mult_x_2_n65, mult_x_2_n64, mult_x_2_n63, mult_x_2_n62, mult_x_2_n60,
         mult_x_2_n59, mult_x_2_n58, DP_OP_23J1_124_1556_n24,
         DP_OP_23J1_124_1556_n23, DP_OP_23J1_124_1556_n22,
         DP_OP_23J1_124_1556_n21, DP_OP_23J1_124_1556_n20,
         DP_OP_23J1_124_1556_n19, DP_OP_23J1_124_1556_n18,
         DP_OP_23J1_124_1556_n17, DP_OP_23J1_124_1556_n16,
         DP_OP_23J1_124_1556_n15, DP_OP_23J1_124_1556_n14,
         DP_OP_23J1_124_1556_n13, DP_OP_23J1_124_1556_n12,
         DP_OP_23J1_124_1556_n11, DP_OP_23J1_124_1556_n8,
         DP_OP_23J1_124_1556_n7, DP_OP_23J1_124_1556_n6, intadd_0_CI,
         intadd_0_SUM_22_, intadd_0_SUM_21_, intadd_0_SUM_20_,
         intadd_0_SUM_19_, intadd_0_SUM_18_, intadd_0_SUM_17_,
         intadd_0_SUM_16_, intadd_0_SUM_15_, intadd_0_SUM_14_,
         intadd_0_SUM_13_, intadd_0_SUM_12_, intadd_0_SUM_11_,
         intadd_0_SUM_10_, intadd_0_SUM_9_, intadd_0_SUM_8_, intadd_0_SUM_7_,
         intadd_0_SUM_6_, intadd_0_SUM_5_, intadd_0_SUM_4_, intadd_0_SUM_3_,
         intadd_0_SUM_2_, intadd_0_SUM_1_, intadd_0_SUM_0_, intadd_0_n23,
         intadd_0_n22, intadd_0_n21, intadd_0_n20, intadd_0_n19, intadd_0_n18,
         intadd_0_n17, intadd_0_n16, intadd_0_n15, intadd_0_n14, intadd_0_n13,
         intadd_0_n12, intadd_0_n11, intadd_0_n10, intadd_0_n9, intadd_0_n8,
         intadd_0_n7, intadd_0_n6, intadd_0_n5, intadd_0_n4, intadd_0_n3,
         intadd_0_n2, intadd_0_n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
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
         n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194;
  wire   [6:0] exponent_input;
  wire   [25:0] centered_plane;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2;

  oadm_l3_plane_direct direct_plane_impl ( .x_mantissa({1'b0, x[22:0]}), 
        .y_mantissa({1'b0, n192, n191, y[20:0]}), .plane_exact_centered({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, centered_plane}) );
  CMPE42D1 mult_x_2_U83 ( .A(mult_x_2_n246), .B(mult_x_2_n166), .C(
        mult_x_2_n191), .CIX(mult_x_2_n134), .D(mult_x_2_n218), .CO(
        mult_x_2_n130), .COX(mult_x_2_n129), .S(mult_x_2_n131) );
  CMPE42D1 mult_x_2_U82 ( .A(mult_x_2_n245), .B(mult_x_2_n165), .C(
        mult_x_2_n190), .CIX(mult_x_2_n129), .D(mult_x_2_n217), .CO(
        mult_x_2_n127), .COX(mult_x_2_n126), .S(mult_x_2_n128) );
  CMPE42D1 mult_x_2_U81 ( .A(mult_x_2_n244), .B(mult_x_2_n164), .C(
        mult_x_2_n189), .CIX(mult_x_2_n126), .D(mult_x_2_n216), .CO(
        mult_x_2_n124), .COX(mult_x_2_n123), .S(mult_x_2_n125) );
  CMPE42D1 mult_x_2_U80 ( .A(mult_x_2_n243), .B(mult_x_2_n163), .C(
        mult_x_2_n188), .CIX(mult_x_2_n123), .D(mult_x_2_n215), .CO(
        mult_x_2_n121), .COX(mult_x_2_n120), .S(mult_x_2_n122) );
  CMPE42D1 mult_x_2_U79 ( .A(mult_x_2_n242), .B(mult_x_2_n162), .C(
        mult_x_2_n187), .CIX(mult_x_2_n120), .D(mult_x_2_n214), .CO(
        mult_x_2_n118), .COX(mult_x_2_n117), .S(mult_x_2_n119) );
  CMPE42D1 mult_x_2_U78 ( .A(mult_x_2_n241), .B(mult_x_2_n161), .C(
        mult_x_2_n186), .CIX(mult_x_2_n117), .D(mult_x_2_n213), .CO(
        mult_x_2_n115), .COX(mult_x_2_n114), .S(mult_x_2_n116) );
  CMPE42D1 mult_x_2_U77 ( .A(mult_x_2_n240), .B(mult_x_2_n160), .C(
        mult_x_2_n185), .CIX(mult_x_2_n114), .D(mult_x_2_n212), .CO(
        mult_x_2_n112), .COX(mult_x_2_n111), .S(mult_x_2_n113) );
  CMPE42D1 mult_x_2_U76 ( .A(mult_x_2_n239), .B(mult_x_2_n159), .C(
        mult_x_2_n184), .CIX(mult_x_2_n111), .D(mult_x_2_n211), .CO(
        mult_x_2_n109), .COX(mult_x_2_n108), .S(mult_x_2_n110) );
  CMPE42D1 mult_x_2_U75 ( .A(mult_x_2_n238), .B(mult_x_2_n158), .C(
        mult_x_2_n183), .CIX(mult_x_2_n108), .D(mult_x_2_n210), .CO(
        mult_x_2_n106), .COX(mult_x_2_n105), .S(mult_x_2_n107) );
  CMPE42D1 mult_x_2_U74 ( .A(mult_x_2_n237), .B(mult_x_2_n157), .C(
        mult_x_2_n182), .CIX(mult_x_2_n105), .D(mult_x_2_n209), .CO(
        mult_x_2_n103), .COX(mult_x_2_n102), .S(mult_x_2_n104) );
  CMPE42D1 mult_x_2_U73 ( .A(mult_x_2_n236), .B(mult_x_2_n156), .C(
        mult_x_2_n181), .CIX(mult_x_2_n102), .D(mult_x_2_n208), .CO(
        mult_x_2_n100), .COX(mult_x_2_n99), .S(mult_x_2_n101) );
  CMPE42D1 mult_x_2_U72 ( .A(mult_x_2_n235), .B(mult_x_2_n155), .C(
        mult_x_2_n180), .CIX(mult_x_2_n99), .D(mult_x_2_n207), .CO(
        mult_x_2_n97), .COX(mult_x_2_n96), .S(mult_x_2_n98) );
  CMPE42D1 mult_x_2_U71 ( .A(mult_x_2_n234), .B(mult_x_2_n154), .C(
        mult_x_2_n179), .CIX(mult_x_2_n96), .D(mult_x_2_n206), .CO(
        mult_x_2_n94), .COX(mult_x_2_n93), .S(mult_x_2_n95) );
  CMPE42D1 mult_x_2_U70 ( .A(mult_x_2_n233), .B(mult_x_2_n153), .C(
        mult_x_2_n178), .CIX(mult_x_2_n93), .D(mult_x_2_n205), .CO(
        mult_x_2_n91), .COX(mult_x_2_n90), .S(mult_x_2_n92) );
  CMPE42D1 mult_x_2_U69 ( .A(mult_x_2_n232), .B(mult_x_2_n152), .C(
        mult_x_2_n177), .CIX(mult_x_2_n90), .D(mult_x_2_n204), .CO(
        mult_x_2_n88), .COX(mult_x_2_n87), .S(mult_x_2_n89) );
  CMPE42D1 mult_x_2_U68 ( .A(mult_x_2_n231), .B(mult_x_2_n151), .C(
        mult_x_2_n176), .CIX(mult_x_2_n87), .D(mult_x_2_n203), .CO(
        mult_x_2_n85), .COX(mult_x_2_n84), .S(mult_x_2_n86) );
  CMPE42D1 mult_x_2_U67 ( .A(mult_x_2_n230), .B(mult_x_2_n150), .C(
        mult_x_2_n175), .CIX(mult_x_2_n84), .D(mult_x_2_n202), .CO(
        mult_x_2_n82), .COX(mult_x_2_n81), .S(mult_x_2_n83) );
  CMPE42D1 mult_x_2_U66 ( .A(mult_x_2_n229), .B(mult_x_2_n149), .C(
        mult_x_2_n174), .CIX(mult_x_2_n81), .D(mult_x_2_n201), .CO(
        mult_x_2_n79), .COX(mult_x_2_n78), .S(mult_x_2_n80) );
  CMPE42D1 mult_x_2_U65 ( .A(mult_x_2_n228), .B(mult_x_2_n148), .C(
        mult_x_2_n173), .CIX(mult_x_2_n78), .D(mult_x_2_n200), .CO(
        mult_x_2_n76), .COX(mult_x_2_n75), .S(mult_x_2_n77) );
  CMPE42D1 mult_x_2_U64 ( .A(mult_x_2_n227), .B(mult_x_2_n147), .C(
        mult_x_2_n172), .CIX(mult_x_2_n75), .D(mult_x_2_n199), .CO(
        mult_x_2_n73), .COX(mult_x_2_n72), .S(mult_x_2_n74) );
  CMPE42D1 mult_x_2_U63 ( .A(mult_x_2_n226), .B(mult_x_2_n146), .C(
        mult_x_2_n171), .CIX(mult_x_2_n72), .D(mult_x_2_n198), .CO(
        mult_x_2_n70), .COX(mult_x_2_n69), .S(mult_x_2_n71) );
  CMPE42D1 mult_x_2_U62 ( .A(n194), .B(mult_x_2_n145), .C(mult_x_2_n170), 
        .CIX(mult_x_2_n69), .D(mult_x_2_n197), .CO(mult_x_2_n67), .COX(
        mult_x_2_n66), .S(mult_x_2_n68) );
  CMPE42D1 mult_x_2_U61 ( .A(n194), .B(mult_x_2_n144), .C(mult_x_2_n169), 
        .CIX(mult_x_2_n66), .D(mult_x_2_n196), .CO(mult_x_2_n64), .COX(
        mult_x_2_n63), .S(mult_x_2_n65) );
  CMPE42D1 mult_x_2_U59 ( .A(mult_x_2_n168), .B(n170), .C(n193), .CIX(
        mult_x_2_n63), .D(mult_x_2_n62), .CO(mult_x_2_n59), .COX(mult_x_2_n58), 
        .S(mult_x_2_n60) );
  HA1D0 DP_OP_23J1_124_1556_U25 ( .A(DP_OP_23J1_124_1556_n24), .B(x[23]), .CO(
        DP_OP_23J1_124_1556_n17), .S(exponent_input[0]) );
  FA1D0 DP_OP_23J1_124_1556_U24 ( .A(DP_OP_23J1_124_1556_n23), .B(x[24]), .CI(
        DP_OP_23J1_124_1556_n17), .CO(DP_OP_23J1_124_1556_n16), .S(
        exponent_input[1]) );
  FA1D0 DP_OP_23J1_124_1556_U23 ( .A(DP_OP_23J1_124_1556_n22), .B(x[25]), .CI(
        DP_OP_23J1_124_1556_n16), .CO(DP_OP_23J1_124_1556_n15), .S(
        exponent_input[2]) );
  FA1D0 DP_OP_23J1_124_1556_U22 ( .A(DP_OP_23J1_124_1556_n21), .B(x[26]), .CI(
        DP_OP_23J1_124_1556_n15), .CO(DP_OP_23J1_124_1556_n14), .S(
        exponent_input[3]) );
  FA1D0 DP_OP_23J1_124_1556_U21 ( .A(DP_OP_23J1_124_1556_n20), .B(x[27]), .CI(
        DP_OP_23J1_124_1556_n14), .CO(DP_OP_23J1_124_1556_n13), .S(
        exponent_input[4]) );
  FA1D0 DP_OP_23J1_124_1556_U20 ( .A(DP_OP_23J1_124_1556_n19), .B(x[28]), .CI(
        DP_OP_23J1_124_1556_n13), .CO(DP_OP_23J1_124_1556_n12), .S(
        exponent_input[5]) );
  FA1D0 DP_OP_23J1_124_1556_U19 ( .A(DP_OP_23J1_124_1556_n18), .B(x[29]), .CI(
        DP_OP_23J1_124_1556_n12), .CO(DP_OP_23J1_124_1556_n11), .S(
        exponent_input[6]) );
  FA1D0 DP_OP_23J1_124_1556_U12 ( .A(DP_OP_23J1_124_1556_n7), .B(
        DP_OP_23J1_124_1556_n8), .CI(exponent_input[1]), .CO(
        DP_OP_23J1_124_1556_n6), .S(C4_DATA2_1) );
  FA1D0 intadd_0_U24 ( .A(mult_x_2_n128), .B(mult_x_2_n130), .CI(intadd_0_CI), 
        .CO(intadd_0_n23), .S(intadd_0_SUM_0_) );
  FA1D0 intadd_0_U23 ( .A(mult_x_2_n125), .B(mult_x_2_n127), .CI(intadd_0_n23), 
        .CO(intadd_0_n22), .S(intadd_0_SUM_1_) );
  FA1D0 intadd_0_U22 ( .A(mult_x_2_n122), .B(mult_x_2_n124), .CI(intadd_0_n22), 
        .CO(intadd_0_n21), .S(intadd_0_SUM_2_) );
  FA1D0 intadd_0_U21 ( .A(mult_x_2_n119), .B(mult_x_2_n121), .CI(intadd_0_n21), 
        .CO(intadd_0_n20), .S(intadd_0_SUM_3_) );
  FA1D0 intadd_0_U20 ( .A(mult_x_2_n116), .B(mult_x_2_n118), .CI(intadd_0_n20), 
        .CO(intadd_0_n19), .S(intadd_0_SUM_4_) );
  FA1D0 intadd_0_U19 ( .A(mult_x_2_n113), .B(mult_x_2_n115), .CI(intadd_0_n19), 
        .CO(intadd_0_n18), .S(intadd_0_SUM_5_) );
  FA1D0 intadd_0_U18 ( .A(mult_x_2_n110), .B(mult_x_2_n112), .CI(intadd_0_n18), 
        .CO(intadd_0_n17), .S(intadd_0_SUM_6_) );
  FA1D0 intadd_0_U17 ( .A(mult_x_2_n107), .B(mult_x_2_n109), .CI(intadd_0_n17), 
        .CO(intadd_0_n16), .S(intadd_0_SUM_7_) );
  FA1D0 intadd_0_U16 ( .A(mult_x_2_n104), .B(mult_x_2_n106), .CI(intadd_0_n16), 
        .CO(intadd_0_n15), .S(intadd_0_SUM_8_) );
  FA1D0 intadd_0_U15 ( .A(mult_x_2_n101), .B(mult_x_2_n103), .CI(intadd_0_n15), 
        .CO(intadd_0_n14), .S(intadd_0_SUM_9_) );
  FA1D0 intadd_0_U14 ( .A(mult_x_2_n98), .B(mult_x_2_n100), .CI(intadd_0_n14), 
        .CO(intadd_0_n13), .S(intadd_0_SUM_10_) );
  FA1D0 intadd_0_U13 ( .A(mult_x_2_n95), .B(mult_x_2_n97), .CI(intadd_0_n13), 
        .CO(intadd_0_n12), .S(intadd_0_SUM_11_) );
  FA1D0 intadd_0_U12 ( .A(mult_x_2_n92), .B(mult_x_2_n94), .CI(intadd_0_n12), 
        .CO(intadd_0_n11), .S(intadd_0_SUM_12_) );
  FA1D0 intadd_0_U11 ( .A(mult_x_2_n89), .B(mult_x_2_n91), .CI(intadd_0_n11), 
        .CO(intadd_0_n10), .S(intadd_0_SUM_13_) );
  FA1D0 intadd_0_U10 ( .A(mult_x_2_n86), .B(mult_x_2_n88), .CI(intadd_0_n10), 
        .CO(intadd_0_n9), .S(intadd_0_SUM_14_) );
  FA1D0 intadd_0_U9 ( .A(mult_x_2_n83), .B(mult_x_2_n85), .CI(intadd_0_n9), 
        .CO(intadd_0_n8), .S(intadd_0_SUM_15_) );
  FA1D0 intadd_0_U8 ( .A(mult_x_2_n80), .B(mult_x_2_n82), .CI(intadd_0_n8), 
        .CO(intadd_0_n7), .S(intadd_0_SUM_16_) );
  FA1D0 intadd_0_U7 ( .A(mult_x_2_n77), .B(mult_x_2_n79), .CI(intadd_0_n7), 
        .CO(intadd_0_n6), .S(intadd_0_SUM_17_) );
  FA1D0 intadd_0_U6 ( .A(mult_x_2_n74), .B(mult_x_2_n76), .CI(intadd_0_n6), 
        .CO(intadd_0_n5), .S(intadd_0_SUM_18_) );
  FA1D0 intadd_0_U5 ( .A(mult_x_2_n71), .B(mult_x_2_n73), .CI(intadd_0_n5), 
        .CO(intadd_0_n4), .S(intadd_0_SUM_19_) );
  FA1D0 intadd_0_U4 ( .A(mult_x_2_n68), .B(mult_x_2_n70), .CI(intadd_0_n4), 
        .CO(intadd_0_n3), .S(intadd_0_SUM_20_) );
  FA1D0 intadd_0_U3 ( .A(mult_x_2_n65), .B(mult_x_2_n67), .CI(intadd_0_n3), 
        .CO(intadd_0_n2), .S(intadd_0_SUM_21_) );
  FA1D0 intadd_0_U2 ( .A(mult_x_2_n60), .B(mult_x_2_n64), .CI(intadd_0_n2), 
        .CO(intadd_0_n1), .S(intadd_0_SUM_22_) );
  AOI22D0 U4 ( .A1(centered_plane[24]), .A2(n130), .B1(n131), .B2(n101), .ZN(
        n72) );
  AOI22D0 U5 ( .A1(centered_plane[23]), .A2(n130), .B1(n131), .B2(n98), .ZN(
        n67) );
  AOI22D0 U6 ( .A1(centered_plane[22]), .A2(n130), .B1(n131), .B2(n119), .ZN(
        n47) );
  AOI22D0 U7 ( .A1(centered_plane[21]), .A2(n130), .B1(n131), .B2(n120), .ZN(
        n46) );
  AOI22D0 U8 ( .A1(centered_plane[20]), .A2(n130), .B1(n131), .B2(n117), .ZN(
        n45) );
  AOI22D0 U9 ( .A1(centered_plane[19]), .A2(n130), .B1(n131), .B2(n115), .ZN(
        n42) );
  AOI22D0 U10 ( .A1(centered_plane[18]), .A2(n130), .B1(n131), .B2(n116), .ZN(
        n44) );
  AOI22D0 U11 ( .A1(centered_plane[17]), .A2(n130), .B1(n131), .B2(n114), .ZN(
        n43) );
  AOI22D0 U12 ( .A1(centered_plane[16]), .A2(n130), .B1(n131), .B2(n111), .ZN(
        n32) );
  AOI22D0 U13 ( .A1(centered_plane[15]), .A2(n130), .B1(n131), .B2(n112), .ZN(
        n31) );
  AOI22D0 U14 ( .A1(centered_plane[14]), .A2(n130), .B1(n131), .B2(n110), .ZN(
        n27) );
  AOI22D0 U15 ( .A1(centered_plane[13]), .A2(n130), .B1(n131), .B2(n106), .ZN(
        n33) );
  AOI22D0 U16 ( .A1(centered_plane[12]), .A2(n38), .B1(n131), .B2(n107), .ZN(
        n36) );
  INVD0 U17 ( .I(y[22]), .ZN(n77) );
  INVD0 U18 ( .I(n77), .ZN(n192) );
  BUFFD0 U19 ( .I(y[21]), .Z(n191) );
  NR3D0 U20 ( .A1(n192), .A2(y[20]), .A3(n191), .ZN(n2) );
  BUFFD0 U21 ( .I(n2), .Z(n121) );
  INVD0 U22 ( .I(n121), .ZN(n113) );
  AOI22D0 U23 ( .A1(n121), .A2(centered_plane[22]), .B1(centered_plane[23]), 
        .B2(n113), .ZN(mult_x_2_n62) );
  INVD0 U24 ( .I(n191), .ZN(n150) );
  INVD0 U25 ( .I(y[20]), .ZN(n48) );
  OAI32D0 U26 ( .A1(y[20]), .A2(n192), .A3(n150), .B1(n191), .B2(n48), .ZN(
        n170) );
  INVD0 U27 ( .I(n170), .ZN(n145) );
  NR2D0 U28 ( .A1(n48), .A2(n192), .ZN(n24) );
  NR2D0 U29 ( .A1(n24), .A2(n191), .ZN(n193) );
  INVD0 U30 ( .I(n193), .ZN(n194) );
  AOI22D0 U31 ( .A1(n121), .A2(centered_plane[23]), .B1(centered_plane[24]), 
        .B2(n113), .ZN(n4) );
  XOR2D0 U32 ( .A1(mult_x_2_n62), .A2(n170), .Z(n3) );
  XOR2D0 U33 ( .A1(n4), .A2(n3), .Z(n8) );
  NR2D0 U34 ( .A1(y[20]), .A2(n191), .ZN(n50) );
  NR2D0 U35 ( .A1(n192), .A2(n50), .ZN(n25) );
  INVD0 U36 ( .I(n25), .ZN(n5) );
  INVD0 U37 ( .I(centered_plane[25]), .ZN(n124) );
  NR2XD0 U38 ( .A1(n77), .A2(n150), .ZN(n131) );
  NR3D0 U39 ( .A1(n192), .A2(n191), .A3(n48), .ZN(n38) );
  OAI222D0 U40 ( .A1(centered_plane[25]), .A2(n5), .B1(n124), .B2(n25), .C1(
        n131), .C2(n38), .ZN(n6) );
  CKND2D0 U41 ( .A1(n194), .A2(n6), .ZN(n7) );
  XNR2D0 U42 ( .A1(n8), .A2(n7), .ZN(n9) );
  XNR2D0 U43 ( .A1(mult_x_2_n58), .A2(n9), .ZN(n10) );
  XNR3D1 U44 ( .A1(mult_x_2_n59), .A2(n10), .A3(intadd_0_n1), .ZN(n189) );
  MUX2D0 U45 ( .I0(C4_DATA2_1), .I1(exponent_input[1]), .S(n189), .Z(
        result[24]) );
  XNR2D0 U46 ( .A1(exponent_input[2]), .A2(DP_OP_23J1_124_1556_n6), .ZN(n11)
         );
  MUX2D0 U47 ( .I0(n11), .I1(exponent_input[2]), .S(n189), .Z(result[25]) );
  OR2D0 U48 ( .A1(DP_OP_23J1_124_1556_n6), .A2(exponent_input[2]), .Z(n13) );
  XNR2D0 U49 ( .A1(exponent_input[3]), .A2(n13), .ZN(n12) );
  MUX2D0 U50 ( .I0(n12), .I1(exponent_input[3]), .S(n189), .Z(result[26]) );
  OR2D0 U51 ( .A1(n13), .A2(exponent_input[3]), .Z(n15) );
  XNR2D0 U52 ( .A1(n15), .A2(exponent_input[4]), .ZN(n14) );
  MUX2D0 U53 ( .I0(n14), .I1(exponent_input[4]), .S(n189), .Z(result[27]) );
  OR2D0 U54 ( .A1(exponent_input[4]), .A2(n15), .Z(n17) );
  XNR2D0 U55 ( .A1(n17), .A2(exponent_input[5]), .ZN(n16) );
  MUX2D0 U56 ( .I0(n16), .I1(exponent_input[5]), .S(n189), .Z(result[28]) );
  OR2D0 U57 ( .A1(exponent_input[5]), .A2(n17), .Z(n19) );
  XNR2D0 U58 ( .A1(n19), .A2(exponent_input[6]), .ZN(n18) );
  MUX2D0 U59 ( .I0(n18), .I1(exponent_input[6]), .S(n189), .Z(result[29]) );
  OR2D0 U60 ( .A1(exponent_input[6]), .A2(n19), .Z(n21) );
  XOR2D0 U61 ( .A1(y[30]), .A2(x[30]), .Z(n20) );
  XOR2D0 U62 ( .A1(DP_OP_23J1_124_1556_n11), .A2(n20), .Z(n22) );
  XNR2D0 U63 ( .A1(n21), .A2(n22), .ZN(n23) );
  MUX2D0 U64 ( .I0(n23), .I1(n22), .S(n189), .Z(result[30]) );
  INVD0 U65 ( .I(centered_plane[6]), .ZN(n102) );
  NR2D0 U66 ( .A1(n24), .A2(n131), .ZN(n140) );
  CKND2D0 U67 ( .A1(n140), .A2(n25), .ZN(n128) );
  INVD0 U68 ( .I(centered_plane[5]), .ZN(n137) );
  AOI22D0 U69 ( .A1(centered_plane[5]), .A2(n38), .B1(n131), .B2(n137), .ZN(
        n26) );
  OAI221D0 U70 ( .A1(centered_plane[6]), .A2(n194), .B1(n102), .B2(n128), .C(
        n26), .ZN(mult_x_2_n187) );
  INVD0 U71 ( .I(centered_plane[15]), .ZN(n112) );
  BUFFD0 U72 ( .I(n38), .Z(n130) );
  INVD0 U73 ( .I(centered_plane[14]), .ZN(n110) );
  OAI221D0 U74 ( .A1(centered_plane[15]), .A2(n194), .B1(n112), .B2(n128), .C(
        n27), .ZN(mult_x_2_n178) );
  INVD0 U75 ( .I(centered_plane[12]), .ZN(n107) );
  INVD0 U76 ( .I(centered_plane[11]), .ZN(n105) );
  AOI22D0 U77 ( .A1(centered_plane[11]), .A2(n38), .B1(n131), .B2(n105), .ZN(
        n28) );
  OAI221D0 U78 ( .A1(centered_plane[12]), .A2(n194), .B1(n107), .B2(n128), .C(
        n28), .ZN(mult_x_2_n181) );
  INVD0 U79 ( .I(centered_plane[10]), .ZN(n104) );
  INVD0 U80 ( .I(centered_plane[9]), .ZN(n103) );
  AOI22D0 U81 ( .A1(centered_plane[9]), .A2(n38), .B1(n131), .B2(n103), .ZN(
        n29) );
  OAI221D0 U82 ( .A1(centered_plane[10]), .A2(n194), .B1(n104), .B2(n128), .C(
        n29), .ZN(mult_x_2_n183) );
  AOI22D0 U83 ( .A1(centered_plane[10]), .A2(n38), .B1(n131), .B2(n104), .ZN(
        n30) );
  OAI221D0 U84 ( .A1(centered_plane[11]), .A2(n194), .B1(n105), .B2(n128), .C(
        n30), .ZN(mult_x_2_n182) );
  INVD0 U85 ( .I(centered_plane[16]), .ZN(n111) );
  OAI221D0 U86 ( .A1(centered_plane[16]), .A2(n194), .B1(n111), .B2(n128), .C(
        n31), .ZN(mult_x_2_n177) );
  INVD0 U87 ( .I(centered_plane[17]), .ZN(n114) );
  OAI221D0 U88 ( .A1(centered_plane[17]), .A2(n194), .B1(n114), .B2(n128), .C(
        n32), .ZN(mult_x_2_n176) );
  INVD0 U89 ( .I(centered_plane[13]), .ZN(n106) );
  OAI221D0 U90 ( .A1(centered_plane[14]), .A2(n194), .B1(n110), .B2(n128), .C(
        n33), .ZN(mult_x_2_n179) );
  INVD0 U91 ( .I(centered_plane[8]), .ZN(n108) );
  INVD0 U92 ( .I(centered_plane[7]), .ZN(n109) );
  AOI22D0 U93 ( .A1(centered_plane[7]), .A2(n38), .B1(n131), .B2(n109), .ZN(
        n34) );
  OAI221D0 U94 ( .A1(centered_plane[8]), .A2(n194), .B1(n108), .B2(n128), .C(
        n34), .ZN(mult_x_2_n185) );
  AOI22D0 U95 ( .A1(centered_plane[6]), .A2(n38), .B1(n131), .B2(n102), .ZN(
        n35) );
  OAI221D0 U96 ( .A1(centered_plane[7]), .A2(n194), .B1(n109), .B2(n128), .C(
        n35), .ZN(mult_x_2_n186) );
  OAI221D0 U97 ( .A1(centered_plane[13]), .A2(n194), .B1(n106), .B2(n128), .C(
        n36), .ZN(mult_x_2_n180) );
  AOI22D0 U98 ( .A1(centered_plane[8]), .A2(n38), .B1(n131), .B2(n108), .ZN(
        n37) );
  OAI221D0 U99 ( .A1(centered_plane[9]), .A2(n194), .B1(n103), .B2(n128), .C(
        n37), .ZN(mult_x_2_n184) );
  INVD0 U100 ( .I(centered_plane[4]), .ZN(n139) );
  AOI22D0 U101 ( .A1(centered_plane[4]), .A2(n38), .B1(n131), .B2(n139), .ZN(
        n39) );
  OAI221D0 U102 ( .A1(centered_plane[5]), .A2(n194), .B1(n137), .B2(n128), .C(
        n39), .ZN(mult_x_2_n188) );
  INVD0 U103 ( .I(centered_plane[3]), .ZN(n155) );
  AOI22D0 U104 ( .A1(centered_plane[3]), .A2(n130), .B1(n131), .B2(n155), .ZN(
        n40) );
  OAI221D0 U105 ( .A1(centered_plane[4]), .A2(n194), .B1(n139), .B2(n128), .C(
        n40), .ZN(mult_x_2_n189) );
  INVD0 U106 ( .I(centered_plane[2]), .ZN(n149) );
  AOI22D0 U107 ( .A1(centered_plane[2]), .A2(n130), .B1(n131), .B2(n149), .ZN(
        n41) );
  OAI221D0 U108 ( .A1(centered_plane[3]), .A2(n194), .B1(n155), .B2(n128), .C(
        n41), .ZN(mult_x_2_n190) );
  INVD0 U109 ( .I(centered_plane[20]), .ZN(n117) );
  INVD0 U110 ( .I(centered_plane[19]), .ZN(n115) );
  OAI221D0 U111 ( .A1(centered_plane[20]), .A2(n194), .B1(n117), .B2(n128), 
        .C(n42), .ZN(mult_x_2_n173) );
  INVD0 U112 ( .I(centered_plane[18]), .ZN(n116) );
  OAI221D0 U113 ( .A1(centered_plane[18]), .A2(n194), .B1(n116), .B2(n128), 
        .C(n43), .ZN(mult_x_2_n175) );
  OAI221D0 U114 ( .A1(centered_plane[19]), .A2(n194), .B1(n115), .B2(n128), 
        .C(n44), .ZN(mult_x_2_n174) );
  INVD0 U115 ( .I(centered_plane[21]), .ZN(n120) );
  OAI221D0 U116 ( .A1(centered_plane[21]), .A2(n194), .B1(n120), .B2(n128), 
        .C(n45), .ZN(mult_x_2_n172) );
  INVD0 U117 ( .I(centered_plane[22]), .ZN(n119) );
  OAI221D0 U118 ( .A1(centered_plane[22]), .A2(n194), .B1(n119), .B2(n128), 
        .C(n46), .ZN(mult_x_2_n171) );
  INVD0 U119 ( .I(centered_plane[23]), .ZN(n98) );
  OAI221D0 U120 ( .A1(centered_plane[23]), .A2(n194), .B1(n98), .B2(n128), .C(
        n47), .ZN(mult_x_2_n170) );
  OAI21D0 U121 ( .A1(y[20]), .A2(n193), .B(n77), .ZN(n49) );
  CKND2D0 U122 ( .A1(n131), .A2(n48), .ZN(n158) );
  CKAN2D0 U123 ( .A1(n49), .A2(n158), .Z(n147) );
  OR2D0 U124 ( .A1(n131), .A2(n50), .Z(n51) );
  CKND2D0 U125 ( .A1(n147), .A2(n51), .ZN(n134) );
  INVD0 U126 ( .I(n158), .ZN(n76) );
  CKND2D0 U127 ( .A1(n76), .A2(centered_plane[3]), .ZN(n52) );
  OAI221D0 U128 ( .A1(centered_plane[4]), .A2(n145), .B1(n139), .B2(n134), .C(
        n52), .ZN(mult_x_2_n218) );
  CKND2D0 U129 ( .A1(n76), .A2(centered_plane[10]), .ZN(n53) );
  OAI221D0 U130 ( .A1(centered_plane[11]), .A2(n145), .B1(n105), .B2(n134), 
        .C(n53), .ZN(mult_x_2_n211) );
  CKND2D0 U131 ( .A1(n76), .A2(centered_plane[6]), .ZN(n54) );
  OAI221D0 U132 ( .A1(centered_plane[7]), .A2(n145), .B1(n109), .B2(n134), .C(
        n54), .ZN(mult_x_2_n215) );
  CKND2D0 U133 ( .A1(n76), .A2(centered_plane[5]), .ZN(n55) );
  OAI221D0 U134 ( .A1(centered_plane[6]), .A2(n145), .B1(n102), .B2(n134), .C(
        n55), .ZN(mult_x_2_n216) );
  CKND2D0 U135 ( .A1(n76), .A2(centered_plane[11]), .ZN(n56) );
  OAI221D0 U136 ( .A1(centered_plane[12]), .A2(n145), .B1(n107), .B2(n134), 
        .C(n56), .ZN(mult_x_2_n210) );
  CKND2D0 U137 ( .A1(n76), .A2(centered_plane[9]), .ZN(n57) );
  OAI221D0 U138 ( .A1(centered_plane[10]), .A2(n145), .B1(n104), .B2(n134), 
        .C(n57), .ZN(mult_x_2_n212) );
  CKND2D0 U139 ( .A1(n76), .A2(centered_plane[7]), .ZN(n58) );
  OAI221D0 U140 ( .A1(centered_plane[8]), .A2(n145), .B1(n108), .B2(n134), .C(
        n58), .ZN(mult_x_2_n214) );
  CKND2D0 U141 ( .A1(n76), .A2(centered_plane[8]), .ZN(n59) );
  OAI221D0 U142 ( .A1(centered_plane[9]), .A2(n145), .B1(n103), .B2(n134), .C(
        n59), .ZN(mult_x_2_n213) );
  CKND2D0 U143 ( .A1(n76), .A2(centered_plane[12]), .ZN(n60) );
  OAI221D0 U144 ( .A1(centered_plane[13]), .A2(n145), .B1(n106), .B2(n134), 
        .C(n60), .ZN(mult_x_2_n209) );
  CKND2D0 U145 ( .A1(n76), .A2(centered_plane[16]), .ZN(n61) );
  OAI221D0 U146 ( .A1(centered_plane[17]), .A2(n145), .B1(n114), .B2(n134), 
        .C(n61), .ZN(mult_x_2_n205) );
  CKND2D0 U147 ( .A1(n76), .A2(centered_plane[15]), .ZN(n62) );
  OAI221D0 U148 ( .A1(centered_plane[16]), .A2(n145), .B1(n111), .B2(n134), 
        .C(n62), .ZN(mult_x_2_n206) );
  CKND2D0 U149 ( .A1(n76), .A2(centered_plane[14]), .ZN(n63) );
  OAI221D0 U150 ( .A1(centered_plane[15]), .A2(n145), .B1(n112), .B2(n134), 
        .C(n63), .ZN(mult_x_2_n207) );
  CKND2D0 U151 ( .A1(n76), .A2(centered_plane[13]), .ZN(n64) );
  OAI221D0 U152 ( .A1(centered_plane[14]), .A2(n145), .B1(n110), .B2(n134), 
        .C(n64), .ZN(mult_x_2_n208) );
  CKND2D0 U153 ( .A1(n76), .A2(centered_plane[4]), .ZN(n65) );
  OAI221D0 U154 ( .A1(centered_plane[5]), .A2(n145), .B1(n137), .B2(n134), .C(
        n65), .ZN(mult_x_2_n217) );
  CKND2D0 U155 ( .A1(n76), .A2(centered_plane[19]), .ZN(n66) );
  OAI221D0 U156 ( .A1(centered_plane[20]), .A2(n145), .B1(n117), .B2(n134), 
        .C(n66), .ZN(mult_x_2_n202) );
  INVD0 U157 ( .I(centered_plane[24]), .ZN(n101) );
  OAI221D0 U158 ( .A1(centered_plane[24]), .A2(n194), .B1(n101), .B2(n128), 
        .C(n67), .ZN(mult_x_2_n169) );
  CKND2D0 U159 ( .A1(n76), .A2(centered_plane[17]), .ZN(n68) );
  OAI221D0 U160 ( .A1(centered_plane[18]), .A2(n145), .B1(n116), .B2(n134), 
        .C(n68), .ZN(mult_x_2_n204) );
  CKND2D0 U161 ( .A1(n76), .A2(centered_plane[18]), .ZN(n69) );
  OAI221D0 U162 ( .A1(centered_plane[19]), .A2(n145), .B1(n115), .B2(n134), 
        .C(n69), .ZN(mult_x_2_n203) );
  CKND2D0 U163 ( .A1(n76), .A2(centered_plane[20]), .ZN(n70) );
  OAI221D0 U164 ( .A1(centered_plane[21]), .A2(n145), .B1(n120), .B2(n134), 
        .C(n70), .ZN(mult_x_2_n201) );
  CKND2D0 U165 ( .A1(n76), .A2(centered_plane[24]), .ZN(n71) );
  OAI221D0 U166 ( .A1(centered_plane[25]), .A2(n145), .B1(n124), .B2(n134), 
        .C(n71), .ZN(mult_x_2_n197) );
  OAI221D0 U167 ( .A1(centered_plane[25]), .A2(n194), .B1(n124), .B2(n128), 
        .C(n72), .ZN(mult_x_2_n168) );
  CKND2D0 U168 ( .A1(n76), .A2(centered_plane[21]), .ZN(n73) );
  OAI221D0 U169 ( .A1(centered_plane[22]), .A2(n145), .B1(n119), .B2(n134), 
        .C(n73), .ZN(mult_x_2_n200) );
  CKND2D0 U170 ( .A1(n76), .A2(centered_plane[22]), .ZN(n74) );
  OAI221D0 U171 ( .A1(centered_plane[23]), .A2(n145), .B1(n98), .B2(n134), .C(
        n74), .ZN(mult_x_2_n199) );
  CKND2D0 U172 ( .A1(n76), .A2(centered_plane[23]), .ZN(n75) );
  OAI221D0 U173 ( .A1(centered_plane[24]), .A2(n145), .B1(n101), .B2(n134), 
        .C(n75), .ZN(mult_x_2_n198) );
  AOI221D0 U174 ( .A1(y[20]), .A2(n150), .B1(n77), .B2(n150), .C(n76), .ZN(n78) );
  NR2D0 U175 ( .A1(n193), .A2(n78), .ZN(n156) );
  INVD0 U176 ( .I(n156), .ZN(n126) );
  NR2D0 U177 ( .A1(n194), .A2(n78), .ZN(n157) );
  INVD0 U178 ( .I(n157), .ZN(n100) );
  CKND2D0 U179 ( .A1(n191), .A2(n158), .ZN(n153) );
  INVD0 U180 ( .I(n153), .ZN(n148) );
  CKND2D0 U181 ( .A1(n148), .A2(n137), .ZN(n79) );
  OAI221D0 U182 ( .A1(centered_plane[6]), .A2(n126), .B1(n102), .B2(n100), .C(
        n79), .ZN(mult_x_2_n246) );
  CKND2D0 U183 ( .A1(n148), .A2(n109), .ZN(n80) );
  OAI221D0 U184 ( .A1(centered_plane[8]), .A2(n126), .B1(n108), .B2(n100), .C(
        n80), .ZN(mult_x_2_n244) );
  CKND2D0 U185 ( .A1(n148), .A2(n110), .ZN(n81) );
  OAI221D0 U186 ( .A1(centered_plane[15]), .A2(n126), .B1(n112), .B2(n100), 
        .C(n81), .ZN(mult_x_2_n237) );
  CKND2D0 U187 ( .A1(n148), .A2(n111), .ZN(n82) );
  OAI221D0 U188 ( .A1(centered_plane[17]), .A2(n126), .B1(n114), .B2(n100), 
        .C(n82), .ZN(mult_x_2_n235) );
  CKND2D0 U189 ( .A1(n148), .A2(n106), .ZN(n83) );
  OAI221D0 U190 ( .A1(centered_plane[14]), .A2(n126), .B1(n110), .B2(n100), 
        .C(n83), .ZN(mult_x_2_n238) );
  CKND2D0 U191 ( .A1(n148), .A2(n104), .ZN(n84) );
  OAI221D0 U192 ( .A1(centered_plane[11]), .A2(n126), .B1(n105), .B2(n100), 
        .C(n84), .ZN(mult_x_2_n241) );
  CKND2D0 U193 ( .A1(n148), .A2(n112), .ZN(n85) );
  OAI221D0 U194 ( .A1(centered_plane[16]), .A2(n126), .B1(n111), .B2(n100), 
        .C(n85), .ZN(mult_x_2_n236) );
  CKND2D0 U195 ( .A1(n148), .A2(n107), .ZN(n86) );
  OAI221D0 U196 ( .A1(centered_plane[13]), .A2(n126), .B1(n106), .B2(n100), 
        .C(n86), .ZN(mult_x_2_n239) );
  CKND2D0 U197 ( .A1(n148), .A2(n108), .ZN(n87) );
  OAI221D0 U198 ( .A1(centered_plane[9]), .A2(n126), .B1(n103), .B2(n100), .C(
        n87), .ZN(mult_x_2_n243) );
  CKND2D0 U199 ( .A1(n148), .A2(n105), .ZN(n88) );
  OAI221D0 U200 ( .A1(centered_plane[12]), .A2(n126), .B1(n107), .B2(n100), 
        .C(n88), .ZN(mult_x_2_n240) );
  CKND2D0 U201 ( .A1(n148), .A2(n103), .ZN(n89) );
  OAI221D0 U202 ( .A1(centered_plane[10]), .A2(n126), .B1(n104), .B2(n100), 
        .C(n89), .ZN(mult_x_2_n242) );
  CKND2D0 U203 ( .A1(n148), .A2(n102), .ZN(n90) );
  OAI221D0 U204 ( .A1(centered_plane[7]), .A2(n126), .B1(n109), .B2(n100), .C(
        n90), .ZN(mult_x_2_n245) );
  CKND2D0 U205 ( .A1(n148), .A2(n115), .ZN(n91) );
  OAI221D0 U206 ( .A1(centered_plane[20]), .A2(n126), .B1(n117), .B2(n100), 
        .C(n91), .ZN(mult_x_2_n232) );
  CKND2D0 U207 ( .A1(n148), .A2(n114), .ZN(n92) );
  OAI221D0 U208 ( .A1(centered_plane[18]), .A2(n126), .B1(n116), .B2(n100), 
        .C(n92), .ZN(mult_x_2_n234) );
  CKND2D0 U209 ( .A1(n148), .A2(n116), .ZN(n93) );
  OAI221D0 U210 ( .A1(centered_plane[19]), .A2(n126), .B1(n115), .B2(n100), 
        .C(n93), .ZN(mult_x_2_n233) );
  CKND2D0 U211 ( .A1(n148), .A2(n117), .ZN(n94) );
  OAI221D0 U212 ( .A1(centered_plane[21]), .A2(n126), .B1(n120), .B2(n100), 
        .C(n94), .ZN(mult_x_2_n231) );
  CKND2D0 U213 ( .A1(n148), .A2(n120), .ZN(n95) );
  OAI221D0 U214 ( .A1(centered_plane[22]), .A2(n126), .B1(n119), .B2(n100), 
        .C(n95), .ZN(mult_x_2_n230) );
  CKND2D0 U215 ( .A1(n148), .A2(n119), .ZN(n96) );
  OAI221D0 U216 ( .A1(centered_plane[23]), .A2(n126), .B1(n98), .B2(n100), .C(
        n96), .ZN(mult_x_2_n229) );
  CKND2D0 U217 ( .A1(n148), .A2(n101), .ZN(n97) );
  OAI221D0 U218 ( .A1(centered_plane[25]), .A2(n126), .B1(n124), .B2(n100), 
        .C(n97), .ZN(mult_x_2_n227) );
  CKND2D0 U219 ( .A1(n148), .A2(n98), .ZN(n99) );
  OAI221D0 U220 ( .A1(centered_plane[24]), .A2(n126), .B1(n101), .B2(n100), 
        .C(n99), .ZN(mult_x_2_n228) );
  INVD0 U221 ( .I(centered_plane[0]), .ZN(n168) );
  NR2D0 U222 ( .A1(n168), .A2(n121), .ZN(mult_x_2_n166) );
  INVD0 U223 ( .I(centered_plane[1]), .ZN(n161) );
  AOI22D0 U224 ( .A1(n121), .A2(n168), .B1(n161), .B2(n113), .ZN(mult_x_2_n165) );
  AOI22D0 U225 ( .A1(n121), .A2(n161), .B1(n149), .B2(n113), .ZN(mult_x_2_n164) );
  AOI22D0 U226 ( .A1(n121), .A2(n108), .B1(n103), .B2(n113), .ZN(mult_x_2_n157) );
  AOI22D0 U227 ( .A1(n121), .A2(n102), .B1(n109), .B2(n113), .ZN(mult_x_2_n159) );
  AOI22D0 U228 ( .A1(n121), .A2(n137), .B1(n102), .B2(n113), .ZN(mult_x_2_n160) );
  AOI22D0 U229 ( .A1(n121), .A2(n103), .B1(n104), .B2(n113), .ZN(mult_x_2_n156) );
  AOI22D0 U230 ( .A1(n121), .A2(n104), .B1(n105), .B2(n113), .ZN(mult_x_2_n155) );
  AOI22D0 U231 ( .A1(n121), .A2(n105), .B1(n107), .B2(n113), .ZN(mult_x_2_n154) );
  AOI22D0 U232 ( .A1(n121), .A2(n106), .B1(n110), .B2(n113), .ZN(mult_x_2_n152) );
  AOI22D0 U233 ( .A1(n121), .A2(n107), .B1(n106), .B2(n113), .ZN(mult_x_2_n153) );
  AOI22D0 U234 ( .A1(n121), .A2(n109), .B1(n108), .B2(n113), .ZN(mult_x_2_n158) );
  AOI22D0 U235 ( .A1(n121), .A2(n111), .B1(n114), .B2(n113), .ZN(mult_x_2_n149) );
  AOI22D0 U236 ( .A1(n121), .A2(n110), .B1(n112), .B2(n113), .ZN(mult_x_2_n151) );
  AOI22D0 U237 ( .A1(n121), .A2(n112), .B1(n111), .B2(n113), .ZN(mult_x_2_n150) );
  AOI22D0 U238 ( .A1(n121), .A2(n139), .B1(n137), .B2(n113), .ZN(mult_x_2_n161) );
  CKAN2D0 U239 ( .A1(intadd_0_SUM_0_), .A2(n189), .Z(result[0]) );
  AOI22D0 U240 ( .A1(n121), .A2(n155), .B1(n139), .B2(n113), .ZN(mult_x_2_n162) );
  AOI22D0 U241 ( .A1(n121), .A2(n149), .B1(n155), .B2(n113), .ZN(mult_x_2_n163) );
  AOI22D0 U242 ( .A1(n121), .A2(n115), .B1(n117), .B2(n113), .ZN(mult_x_2_n146) );
  AOI22D0 U243 ( .A1(n121), .A2(n114), .B1(n116), .B2(n113), .ZN(mult_x_2_n148) );
  AOI22D0 U244 ( .A1(n121), .A2(n116), .B1(n115), .B2(n113), .ZN(mult_x_2_n147) );
  AOI22D0 U245 ( .A1(n121), .A2(n117), .B1(n120), .B2(n113), .ZN(mult_x_2_n145) );
  AOI22D0 U246 ( .A1(centered_plane[1]), .A2(n130), .B1(n131), .B2(n161), .ZN(
        n118) );
  NR2D0 U247 ( .A1(n193), .A2(centered_plane[2]), .ZN(n146) );
  AOI32D0 U248 ( .A1(centered_plane[2]), .A2(n118), .A3(n128), .B1(n146), .B2(
        n118), .ZN(mult_x_2_n191) );
  AOI22D0 U249 ( .A1(n121), .A2(n120), .B1(n119), .B2(n113), .ZN(mult_x_2_n144) );
  NR2D0 U250 ( .A1(n189), .A2(intadd_0_SUM_21_), .ZN(n122) );
  INVD0 U251 ( .I(intadd_0_SUM_22_), .ZN(n123) );
  NR2XD0 U252 ( .A1(n189), .A2(intadd_0_SUM_22_), .ZN(n127) );
  MOAI22D0 U253 ( .A1(n122), .A2(n123), .B1(n127), .B2(intadd_0_SUM_20_), .ZN(
        result[22]) );
  OAI21D0 U254 ( .A1(n158), .A2(n124), .B(n145), .ZN(mult_x_2_n196) );
  NR2XD0 U255 ( .A1(n123), .A2(n189), .ZN(n190) );
  AO222D0 U256 ( .A1(n189), .A2(intadd_0_SUM_2_), .B1(n127), .B2(
        intadd_0_SUM_0_), .C1(n190), .C2(intadd_0_SUM_1_), .Z(result[2]) );
  AO222D0 U257 ( .A1(n189), .A2(intadd_0_SUM_4_), .B1(n127), .B2(
        intadd_0_SUM_2_), .C1(n190), .C2(intadd_0_SUM_3_), .Z(result[4]) );
  AO222D0 U258 ( .A1(n189), .A2(intadd_0_SUM_3_), .B1(n127), .B2(
        intadd_0_SUM_1_), .C1(n190), .C2(intadd_0_SUM_2_), .Z(result[3]) );
  AO222D0 U259 ( .A1(n189), .A2(intadd_0_SUM_6_), .B1(n190), .B2(
        intadd_0_SUM_5_), .C1(intadd_0_SUM_4_), .C2(n127), .Z(result[6]) );
  AO222D0 U260 ( .A1(n189), .A2(intadd_0_SUM_8_), .B1(n190), .B2(
        intadd_0_SUM_7_), .C1(intadd_0_SUM_6_), .C2(n127), .Z(result[8]) );
  AO222D0 U261 ( .A1(n189), .A2(intadd_0_SUM_9_), .B1(n190), .B2(
        intadd_0_SUM_8_), .C1(intadd_0_SUM_7_), .C2(n127), .Z(result[9]) );
  AO222D0 U262 ( .A1(n189), .A2(intadd_0_SUM_10_), .B1(n190), .B2(
        intadd_0_SUM_9_), .C1(intadd_0_SUM_8_), .C2(n127), .Z(result[10]) );
  AO222D0 U263 ( .A1(n189), .A2(intadd_0_SUM_12_), .B1(n190), .B2(
        intadd_0_SUM_11_), .C1(intadd_0_SUM_10_), .C2(n127), .Z(result[12]) );
  AO222D0 U264 ( .A1(n189), .A2(intadd_0_SUM_5_), .B1(n190), .B2(
        intadd_0_SUM_4_), .C1(intadd_0_SUM_3_), .C2(n127), .Z(result[5]) );
  AO222D0 U265 ( .A1(n189), .A2(intadd_0_SUM_14_), .B1(n190), .B2(
        intadd_0_SUM_13_), .C1(intadd_0_SUM_12_), .C2(n127), .Z(result[14]) );
  AO222D0 U266 ( .A1(n189), .A2(intadd_0_SUM_13_), .B1(n190), .B2(
        intadd_0_SUM_12_), .C1(intadd_0_SUM_11_), .C2(n127), .Z(result[13]) );
  AO222D0 U267 ( .A1(n189), .A2(intadd_0_SUM_16_), .B1(n190), .B2(
        intadd_0_SUM_15_), .C1(intadd_0_SUM_14_), .C2(n127), .Z(result[16]) );
  AO222D0 U268 ( .A1(n189), .A2(intadd_0_SUM_11_), .B1(n190), .B2(
        intadd_0_SUM_10_), .C1(intadd_0_SUM_9_), .C2(n127), .Z(result[11]) );
  AO222D0 U269 ( .A1(n189), .A2(intadd_0_SUM_18_), .B1(n190), .B2(
        intadd_0_SUM_17_), .C1(intadd_0_SUM_16_), .C2(n127), .Z(result[18]) );
  AO222D0 U270 ( .A1(n189), .A2(intadd_0_SUM_19_), .B1(n190), .B2(
        intadd_0_SUM_18_), .C1(intadd_0_SUM_17_), .C2(n127), .Z(result[19]) );
  AO222D0 U271 ( .A1(n189), .A2(intadd_0_SUM_20_), .B1(n190), .B2(
        intadd_0_SUM_19_), .C1(intadd_0_SUM_18_), .C2(n127), .Z(result[20]) );
  AO222D0 U272 ( .A1(n189), .A2(intadd_0_SUM_15_), .B1(n190), .B2(
        intadd_0_SUM_14_), .C1(intadd_0_SUM_13_), .C2(n127), .Z(result[15]) );
  AO222D0 U273 ( .A1(n189), .A2(intadd_0_SUM_21_), .B1(n190), .B2(
        intadd_0_SUM_20_), .C1(intadd_0_SUM_19_), .C2(n127), .Z(result[21]) );
  AO222D0 U274 ( .A1(n189), .A2(intadd_0_SUM_17_), .B1(n190), .B2(
        intadd_0_SUM_16_), .C1(intadd_0_SUM_15_), .C2(n127), .Z(result[17]) );
  AO222D0 U275 ( .A1(n189), .A2(intadd_0_SUM_7_), .B1(n190), .B2(
        intadd_0_SUM_6_), .C1(intadd_0_SUM_5_), .C2(n127), .Z(result[7]) );
  CKND2D0 U276 ( .A1(n148), .A2(n124), .ZN(n125) );
  CKND2D0 U277 ( .A1(n126), .A2(n125), .ZN(mult_x_2_n226) );
  INVD0 U278 ( .I(n127), .ZN(DP_OP_23J1_124_1556_n8) );
  INVD0 U279 ( .I(n190), .ZN(n188) );
  OR2D0 U280 ( .A1(exponent_input[0]), .A2(n188), .Z(DP_OP_23J1_124_1556_n7)
         );
  AOI21D0 U281 ( .A1(n193), .A2(n168), .B(n131), .ZN(n132) );
  AOI22D0 U282 ( .A1(centered_plane[1]), .A2(n128), .B1(n194), .B2(n161), .ZN(
        n129) );
  AOI221D0 U283 ( .A1(n131), .A2(n168), .B1(n130), .B2(centered_plane[0]), .C(
        n129), .ZN(n133) );
  NR2D0 U284 ( .A1(n132), .A2(n133), .ZN(mult_x_2_n134) );
  INVD0 U285 ( .I(y[23]), .ZN(DP_OP_23J1_124_1556_n24) );
  INVD0 U286 ( .I(y[24]), .ZN(DP_OP_23J1_124_1556_n23) );
  INVD0 U287 ( .I(y[25]), .ZN(DP_OP_23J1_124_1556_n22) );
  INVD0 U288 ( .I(y[26]), .ZN(DP_OP_23J1_124_1556_n21) );
  INVD0 U289 ( .I(y[27]), .ZN(DP_OP_23J1_124_1556_n20) );
  INVD0 U290 ( .I(y[28]), .ZN(DP_OP_23J1_124_1556_n19) );
  INVD0 U291 ( .I(y[29]), .ZN(DP_OP_23J1_124_1556_n18) );
  AO21D0 U292 ( .A1(n133), .A2(n132), .B(mult_x_2_n134), .Z(n177) );
  INVD0 U293 ( .I(n134), .ZN(n160) );
  NR2D0 U294 ( .A1(n149), .A2(n158), .ZN(n135) );
  AOI221D0 U295 ( .A1(n170), .A2(n155), .B1(n160), .B2(centered_plane[3]), .C(
        n135), .ZN(n176) );
  NR2D0 U296 ( .A1(n153), .A2(centered_plane[4]), .ZN(n136) );
  AOI221D0 U297 ( .A1(n156), .A2(n137), .B1(n157), .B2(centered_plane[5]), .C(
        n136), .ZN(n175) );
  INVD0 U298 ( .I(mult_x_2_n131), .ZN(n186) );
  NR2D0 U299 ( .A1(n153), .A2(centered_plane[3]), .ZN(n138) );
  AOI221D0 U300 ( .A1(n156), .A2(n139), .B1(n157), .B2(centered_plane[4]), .C(
        n138), .ZN(n180) );
  CKND2D0 U301 ( .A1(n140), .A2(centered_plane[0]), .ZN(n179) );
  NR2D0 U302 ( .A1(n161), .A2(n158), .ZN(n141) );
  AOI221D0 U303 ( .A1(n160), .A2(centered_plane[2]), .B1(n170), .B2(n149), .C(
        n141), .ZN(n181) );
  NR2D0 U304 ( .A1(n179), .A2(n181), .ZN(n143) );
  CKAN2D0 U305 ( .A1(n181), .A2(n179), .Z(n142) );
  NR2D0 U306 ( .A1(n143), .A2(n142), .ZN(n144) );
  XOR2D0 U307 ( .A1(n180), .A2(n144), .Z(n174) );
  NR2D0 U308 ( .A1(n145), .A2(centered_plane[0]), .ZN(n164) );
  AOI22D0 U309 ( .A1(n148), .A2(n147), .B1(n146), .B2(n168), .ZN(n167) );
  OAI221D0 U310 ( .A1(n193), .A2(n149), .B1(n194), .B2(centered_plane[2]), .C(
        centered_plane[0]), .ZN(n152) );
  CKND2D0 U311 ( .A1(y[20]), .A2(n150), .ZN(n151) );
  OAI22D0 U312 ( .A1(centered_plane[1]), .A2(n167), .B1(n152), .B2(n151), .ZN(
        n163) );
  NR2D0 U313 ( .A1(n153), .A2(centered_plane[2]), .ZN(n154) );
  AOI221D0 U314 ( .A1(n157), .A2(centered_plane[3]), .B1(n156), .B2(n155), .C(
        n154), .ZN(n166) );
  NR2D0 U315 ( .A1(n158), .A2(n168), .ZN(n159) );
  AOI221D0 U316 ( .A1(n170), .A2(n161), .B1(n160), .B2(centered_plane[1]), .C(
        n159), .ZN(n165) );
  CKND2D0 U317 ( .A1(n166), .A2(n165), .ZN(n162) );
  MAOI222D0 U318 ( .A(n164), .B(n163), .C(n162), .ZN(n173) );
  OR2D0 U319 ( .A1(n166), .A2(n165), .Z(n172) );
  INVD0 U320 ( .I(n167), .ZN(n169) );
  ND3D0 U321 ( .A1(n170), .A2(n169), .A3(n168), .ZN(n171) );
  OAI222D0 U322 ( .A1(n174), .A2(n173), .B1(n174), .B2(n172), .C1(n172), .C2(
        n171), .ZN(n184) );
  FA1D0 U323 ( .A(n177), .B(n176), .CI(n175), .CO(n187), .S(n178) );
  INVD0 U324 ( .I(n178), .ZN(n183) );
  MAOI222D0 U325 ( .A(n181), .B(n180), .C(n179), .ZN(n182) );
  MAOI222D0 U326 ( .A(n184), .B(n183), .C(n182), .ZN(n185) );
  MAOI222D0 U327 ( .A(n187), .B(n186), .C(n185), .ZN(intadd_0_CI) );
  XNR2D0 U328 ( .A1(n188), .A2(exponent_input[0]), .ZN(result[23]) );
  XOR2D0 U329 ( .A1(y[31]), .A2(x[31]), .Z(result[31]) );
  AO22D0 U330 ( .A1(n190), .A2(intadd_0_SUM_0_), .B1(intadd_0_SUM_1_), .B2(
        n189), .Z(result[1]) );
endmodule


module oadm_fixed_l3_div_opt_centered_paceio ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81;

  oadm_fixed_l3_div_opt_PLANE_STYLE5_NORM_STYLE2_FP_STYLE1 impl ( .x({x[31:23], 
        n81, x[21], n80, n66, n36, n34, n50, n32, n48, n30, n46, n28, n44, n26, 
        n42, n24, n22, n40, n20, n76, n78, n68, n64}), .y({y[31:21], n79, n38, 
        n2, n18, n16, n62, n14, n60, n12, n58, n10, n56, n8, n54, n6, n52, n4, 
        n70, n77, n74, n72}), .result(result) );
  INVD0 U1 ( .I(y[18]), .ZN(n1) );
  INVD0 U2 ( .I(n1), .ZN(n2) );
  INVD0 U3 ( .I(y[4]), .ZN(n3) );
  INVD0 U4 ( .I(n3), .ZN(n4) );
  INVD0 U5 ( .I(y[6]), .ZN(n5) );
  INVD0 U6 ( .I(n5), .ZN(n6) );
  INVD0 U7 ( .I(y[8]), .ZN(n7) );
  INVD0 U8 ( .I(n7), .ZN(n8) );
  INVD0 U9 ( .I(y[10]), .ZN(n9) );
  INVD0 U10 ( .I(n9), .ZN(n10) );
  INVD0 U11 ( .I(y[12]), .ZN(n11) );
  INVD0 U12 ( .I(n11), .ZN(n12) );
  INVD0 U13 ( .I(y[14]), .ZN(n13) );
  INVD0 U14 ( .I(n13), .ZN(n14) );
  INVD0 U15 ( .I(y[16]), .ZN(n15) );
  INVD0 U16 ( .I(n15), .ZN(n16) );
  INVD0 U17 ( .I(y[17]), .ZN(n17) );
  INVD0 U18 ( .I(n17), .ZN(n18) );
  INVD0 U19 ( .I(x[4]), .ZN(n19) );
  INVD0 U20 ( .I(n19), .ZN(n20) );
  INVD0 U21 ( .I(x[6]), .ZN(n21) );
  INVD0 U22 ( .I(n21), .ZN(n22) );
  INVD0 U23 ( .I(x[7]), .ZN(n23) );
  INVD0 U24 ( .I(n23), .ZN(n24) );
  INVD0 U25 ( .I(x[9]), .ZN(n25) );
  INVD0 U26 ( .I(n25), .ZN(n26) );
  INVD0 U27 ( .I(x[11]), .ZN(n27) );
  INVD0 U28 ( .I(n27), .ZN(n28) );
  INVD0 U29 ( .I(x[13]), .ZN(n29) );
  INVD0 U30 ( .I(n29), .ZN(n30) );
  INVD0 U31 ( .I(x[15]), .ZN(n31) );
  INVD0 U32 ( .I(n31), .ZN(n32) );
  INVD0 U33 ( .I(x[17]), .ZN(n33) );
  INVD0 U34 ( .I(n33), .ZN(n34) );
  INVD0 U35 ( .I(x[18]), .ZN(n35) );
  INVD0 U36 ( .I(n35), .ZN(n36) );
  INVD0 U37 ( .I(y[19]), .ZN(n37) );
  INVD0 U38 ( .I(n37), .ZN(n38) );
  INVD0 U39 ( .I(x[5]), .ZN(n39) );
  INVD0 U40 ( .I(n39), .ZN(n40) );
  INVD0 U41 ( .I(x[8]), .ZN(n41) );
  INVD0 U42 ( .I(n41), .ZN(n42) );
  INVD0 U43 ( .I(x[10]), .ZN(n43) );
  INVD0 U44 ( .I(n43), .ZN(n44) );
  INVD0 U45 ( .I(x[12]), .ZN(n45) );
  INVD0 U46 ( .I(n45), .ZN(n46) );
  INVD0 U47 ( .I(x[14]), .ZN(n47) );
  INVD0 U48 ( .I(n47), .ZN(n48) );
  INVD0 U49 ( .I(x[16]), .ZN(n49) );
  INVD0 U50 ( .I(n49), .ZN(n50) );
  INVD0 U51 ( .I(y[5]), .ZN(n51) );
  INVD0 U52 ( .I(n51), .ZN(n52) );
  INVD0 U53 ( .I(y[7]), .ZN(n53) );
  INVD0 U54 ( .I(n53), .ZN(n54) );
  INVD0 U55 ( .I(y[9]), .ZN(n55) );
  INVD0 U56 ( .I(n55), .ZN(n56) );
  INVD0 U57 ( .I(y[11]), .ZN(n57) );
  INVD0 U58 ( .I(n57), .ZN(n58) );
  INVD0 U59 ( .I(y[13]), .ZN(n59) );
  INVD0 U60 ( .I(n59), .ZN(n60) );
  INVD0 U61 ( .I(y[15]), .ZN(n61) );
  INVD0 U62 ( .I(n61), .ZN(n62) );
  INVD0 U63 ( .I(x[0]), .ZN(n63) );
  INVD0 U64 ( .I(n63), .ZN(n64) );
  INVD0 U65 ( .I(x[19]), .ZN(n65) );
  INVD0 U66 ( .I(n65), .ZN(n66) );
  INVD0 U67 ( .I(x[1]), .ZN(n67) );
  INVD0 U68 ( .I(n67), .ZN(n68) );
  INVD0 U69 ( .I(y[3]), .ZN(n69) );
  INVD0 U70 ( .I(n69), .ZN(n70) );
  INVD0 U71 ( .I(y[0]), .ZN(n71) );
  INVD0 U72 ( .I(n71), .ZN(n72) );
  INVD0 U73 ( .I(y[1]), .ZN(n73) );
  INVD0 U74 ( .I(n73), .ZN(n74) );
  INVD0 U75 ( .I(x[3]), .ZN(n75) );
  INVD0 U76 ( .I(n75), .ZN(n76) );
  BUFFD0 U77 ( .I(y[20]), .Z(n79) );
  BUFFD0 U78 ( .I(x[22]), .Z(n81) );
  BUFFD0 U79 ( .I(x[20]), .Z(n80) );
  BUFFD0 U80 ( .I(y[2]), .Z(n77) );
  BUFFD0 U81 ( .I(x[2]), .Z(n78) );
endmodule

