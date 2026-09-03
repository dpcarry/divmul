/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Thu Sep  3 02:51:24 2026
/////////////////////////////////////////////////////////////


module oadm_fixed_l1_mul_canonical ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   impl_impl_fixed_centered_plane_plane_midpoint_product_7_,
         impl_impl_fixed_centered_plane_plane_N6, DP_OP_85J1_122_5649_n158,
         DP_OP_85J1_122_5649_n137, DP_OP_85J1_122_5649_n136,
         DP_OP_85J1_122_5649_n53, DP_OP_85J1_122_5649_n51,
         DP_OP_85J1_122_5649_n49, DP_OP_85J1_122_5649_n48,
         DP_OP_85J1_122_5649_n47, DP_OP_85J1_122_5649_n46,
         DP_OP_85J1_122_5649_n44, DP_OP_85J1_122_5649_n43,
         DP_OP_85J1_122_5649_n42, DP_OP_85J1_122_5649_n41,
         DP_OP_85J1_122_5649_n40, DP_OP_85J1_122_5649_n39, intadd_0_A_23_,
         intadd_0_A_22_, intadd_0_A_21_, intadd_0_A_20_, intadd_0_A_19_,
         intadd_0_A_18_, intadd_0_A_17_, intadd_0_A_16_, intadd_0_A_15_,
         intadd_0_A_14_, intadd_0_A_13_, intadd_0_A_12_, intadd_0_A_11_,
         intadd_0_A_10_, intadd_0_A_9_, intadd_0_A_8_, intadd_0_A_7_,
         intadd_0_A_6_, intadd_0_A_5_, intadd_0_A_4_, intadd_0_A_3_,
         intadd_0_A_2_, intadd_0_A_1_, intadd_0_A_0_, intadd_0_B_23_,
         intadd_0_B_21_, intadd_0_B_20_, intadd_0_B_19_, intadd_0_B_18_,
         intadd_0_B_17_, intadd_0_B_16_, intadd_0_B_15_, intadd_0_B_14_,
         intadd_0_B_13_, intadd_0_B_12_, intadd_0_B_11_, intadd_0_B_10_,
         intadd_0_B_9_, intadd_0_B_8_, intadd_0_B_7_, intadd_0_B_6_,
         intadd_0_B_5_, intadd_0_B_4_, intadd_0_B_3_, intadd_0_B_2_,
         intadd_0_B_1_, intadd_0_B_0_, intadd_0_CI, intadd_0_SUM_23_,
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
         intadd_0_n3, intadd_0_n2, intadd_0_n1, intadd_1_A_18_, intadd_1_A_17_,
         intadd_1_A_16_, intadd_1_A_15_, intadd_1_A_14_, intadd_1_A_13_,
         intadd_1_A_12_, intadd_1_A_11_, intadd_1_A_10_, intadd_1_A_9_,
         intadd_1_A_8_, intadd_1_A_7_, intadd_1_A_6_, intadd_1_A_5_,
         intadd_1_A_4_, intadd_1_A_3_, intadd_1_A_2_, intadd_1_A_1_,
         intadd_1_A_0_, intadd_1_B_19_, intadd_1_B_18_, intadd_1_B_17_,
         intadd_1_B_16_, intadd_1_B_15_, intadd_1_B_14_, intadd_1_B_13_,
         intadd_1_B_12_, intadd_1_B_11_, intadd_1_B_10_, intadd_1_B_9_,
         intadd_1_B_8_, intadd_1_B_7_, intadd_1_B_6_, intadd_1_B_5_,
         intadd_1_B_4_, intadd_1_B_3_, intadd_1_B_2_, intadd_1_B_1_,
         intadd_1_B_0_, intadd_1_CI, intadd_1_n20, intadd_1_n19, intadd_1_n18,
         intadd_1_n17, intadd_1_n16, intadd_1_n15, intadd_1_n14, intadd_1_n13,
         intadd_1_n12, intadd_1_n11, intadd_1_n10, intadd_1_n9, intadd_1_n8,
         intadd_1_n7, intadd_1_n6, intadd_1_n5, intadd_1_n4, intadd_1_n3,
         intadd_1_n2, intadd_1_n1, intadd_2_A_19_, intadd_2_A_18_,
         intadd_2_A_17_, intadd_2_A_16_, intadd_2_A_15_, intadd_2_A_14_,
         intadd_2_A_13_, intadd_2_A_12_, intadd_2_A_11_, intadd_2_A_10_,
         intadd_2_A_9_, intadd_2_A_8_, intadd_2_A_7_, intadd_2_A_6_,
         intadd_2_A_5_, intadd_2_A_4_, intadd_2_A_3_, intadd_2_A_2_,
         intadd_2_A_1_, intadd_2_A_0_, intadd_2_B_19_, intadd_2_B_18_,
         intadd_2_B_17_, intadd_2_B_16_, intadd_2_B_15_, intadd_2_B_14_,
         intadd_2_B_13_, intadd_2_B_12_, intadd_2_B_11_, intadd_2_B_10_,
         intadd_2_B_9_, intadd_2_B_8_, intadd_2_B_7_, intadd_2_B_6_,
         intadd_2_B_5_, intadd_2_B_4_, intadd_2_B_3_, intadd_2_B_2_,
         intadd_2_B_1_, intadd_2_B_0_, intadd_2_CI, intadd_2_n20, intadd_2_n19,
         intadd_2_n18, intadd_2_n17, intadd_2_n16, intadd_2_n15, intadd_2_n14,
         intadd_2_n13, intadd_2_n12, intadd_2_n11, intadd_2_n10, intadd_2_n9,
         intadd_2_n8, intadd_2_n7, intadd_2_n6, intadd_2_n5, intadd_2_n4,
         intadd_2_n3, intadd_2_n2, intadd_2_n1, intadd_3_A_5_, intadd_3_A_4_,
         intadd_3_A_3_, intadd_3_A_2_, intadd_3_A_1_, intadd_3_B_5_,
         intadd_3_B_4_, intadd_3_B_3_, intadd_3_B_2_, intadd_3_B_1_,
         intadd_3_SUM_0_, intadd_3_n6, intadd_3_n5, intadd_3_n4, intadd_3_n3,
         intadd_3_n2, intadd_3_n1, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
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
         n232;

  CMPE42D1 DP_OP_85J1_122_5649_U44 ( .A(DP_OP_85J1_122_5649_n158), .B(
        DP_OP_85J1_122_5649_n46), .C(DP_OP_85J1_122_5649_n137), .CIX(
        DP_OP_85J1_122_5649_n51), .D(DP_OP_85J1_122_5649_n53), .CO(
        DP_OP_85J1_122_5649_n48), .COX(DP_OP_85J1_122_5649_n47), .S(
        DP_OP_85J1_122_5649_n49) );
  CMPE42D1 DP_OP_85J1_122_5649_U42 ( .A(DP_OP_85J1_122_5649_n46), .B(n77), .C(
        DP_OP_85J1_122_5649_n136), .CIX(DP_OP_85J1_122_5649_n48), .D(
        DP_OP_85J1_122_5649_n47), .CO(DP_OP_85J1_122_5649_n43), .COX(
        DP_OP_85J1_122_5649_n42), .S(DP_OP_85J1_122_5649_n44) );
  CMPE42D1 DP_OP_85J1_122_5649_U41 ( .A(
        impl_impl_fixed_centered_plane_plane_midpoint_product_7_), .B(
        impl_impl_fixed_centered_plane_plane_N6), .C(y[21]), .CIX(
        DP_OP_85J1_122_5649_n43), .D(DP_OP_85J1_122_5649_n42), .CO(
        DP_OP_85J1_122_5649_n40), .COX(DP_OP_85J1_122_5649_n39), .S(
        DP_OP_85J1_122_5649_n41) );
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
  FA1D0 intadd_0_U3 ( .A(intadd_0_A_22_), .B(x[21]), .CI(intadd_0_n3), .CO(
        intadd_0_n2), .S(intadd_0_SUM_22_) );
  FA1D0 intadd_1_U21 ( .A(intadd_1_A_0_), .B(intadd_1_B_0_), .CI(intadd_1_CI), 
        .CO(intadd_1_n20), .S(intadd_0_B_1_) );
  FA1D0 intadd_1_U20 ( .A(intadd_1_A_1_), .B(intadd_1_B_1_), .CI(intadd_1_n20), 
        .CO(intadd_1_n19), .S(intadd_0_B_2_) );
  FA1D0 intadd_1_U19 ( .A(intadd_1_A_2_), .B(intadd_1_B_2_), .CI(intadd_1_n19), 
        .CO(intadd_1_n18), .S(intadd_0_B_3_) );
  FA1D0 intadd_1_U18 ( .A(intadd_1_A_3_), .B(intadd_1_B_3_), .CI(intadd_1_n18), 
        .CO(intadd_1_n17), .S(intadd_0_B_4_) );
  FA1D0 intadd_1_U17 ( .A(intadd_1_A_4_), .B(intadd_1_B_4_), .CI(intadd_1_n17), 
        .CO(intadd_1_n16), .S(intadd_0_B_5_) );
  FA1D0 intadd_1_U16 ( .A(intadd_1_A_5_), .B(intadd_1_B_5_), .CI(intadd_1_n16), 
        .CO(intadd_1_n15), .S(intadd_0_B_6_) );
  FA1D0 intadd_1_U15 ( .A(intadd_1_A_6_), .B(intadd_1_B_6_), .CI(intadd_1_n15), 
        .CO(intadd_1_n14), .S(intadd_0_B_7_) );
  FA1D0 intadd_1_U14 ( .A(intadd_1_A_7_), .B(intadd_1_B_7_), .CI(intadd_1_n14), 
        .CO(intadd_1_n13), .S(intadd_0_B_8_) );
  FA1D0 intadd_1_U13 ( .A(intadd_1_A_8_), .B(intadd_1_B_8_), .CI(intadd_1_n13), 
        .CO(intadd_1_n12), .S(intadd_0_B_9_) );
  FA1D0 intadd_1_U12 ( .A(intadd_1_A_9_), .B(intadd_1_B_9_), .CI(intadd_1_n12), 
        .CO(intadd_1_n11), .S(intadd_0_B_10_) );
  FA1D0 intadd_1_U11 ( .A(intadd_1_A_10_), .B(intadd_1_B_10_), .CI(
        intadd_1_n11), .CO(intadd_1_n10), .S(intadd_0_B_11_) );
  FA1D0 intadd_1_U10 ( .A(intadd_1_A_11_), .B(intadd_1_B_11_), .CI(
        intadd_1_n10), .CO(intadd_1_n9), .S(intadd_0_B_12_) );
  FA1D0 intadd_1_U9 ( .A(intadd_1_A_12_), .B(intadd_1_B_12_), .CI(intadd_1_n9), 
        .CO(intadd_1_n8), .S(intadd_0_B_13_) );
  FA1D0 intadd_1_U8 ( .A(intadd_1_A_13_), .B(intadd_1_B_13_), .CI(intadd_1_n8), 
        .CO(intadd_1_n7), .S(intadd_0_B_14_) );
  FA1D0 intadd_1_U7 ( .A(intadd_1_A_14_), .B(intadd_1_B_14_), .CI(intadd_1_n7), 
        .CO(intadd_1_n6), .S(intadd_0_B_15_) );
  FA1D0 intadd_1_U6 ( .A(intadd_1_A_15_), .B(intadd_1_B_15_), .CI(intadd_1_n6), 
        .CO(intadd_1_n5), .S(intadd_0_B_16_) );
  FA1D0 intadd_1_U5 ( .A(intadd_1_A_16_), .B(intadd_1_B_16_), .CI(intadd_1_n5), 
        .CO(intadd_1_n4), .S(intadd_0_B_17_) );
  FA1D0 intadd_1_U4 ( .A(intadd_1_A_17_), .B(intadd_1_B_17_), .CI(intadd_1_n4), 
        .CO(intadd_1_n3), .S(intadd_0_B_18_) );
  FA1D0 intadd_1_U3 ( .A(intadd_1_A_18_), .B(intadd_1_B_18_), .CI(intadd_1_n3), 
        .CO(intadd_1_n2), .S(intadd_0_B_19_) );
  FA1D0 intadd_1_U2 ( .A(intadd_1_A_18_), .B(intadd_1_B_19_), .CI(intadd_1_n2), 
        .CO(intadd_1_n1), .S(intadd_0_B_20_) );
  FA1D0 intadd_2_U21 ( .A(intadd_2_A_0_), .B(intadd_2_B_0_), .CI(intadd_2_CI), 
        .CO(intadd_2_n20), .S(intadd_0_A_0_) );
  FA1D0 intadd_2_U20 ( .A(intadd_2_A_1_), .B(intadd_2_B_1_), .CI(intadd_2_n20), 
        .CO(intadd_2_n19), .S(intadd_0_A_1_) );
  FA1D0 intadd_2_U19 ( .A(intadd_2_A_2_), .B(intadd_2_B_2_), .CI(intadd_2_n19), 
        .CO(intadd_2_n18), .S(intadd_0_A_2_) );
  FA1D0 intadd_2_U18 ( .A(intadd_2_A_3_), .B(intadd_2_B_3_), .CI(intadd_2_n18), 
        .CO(intadd_2_n17), .S(intadd_0_A_3_) );
  FA1D0 intadd_2_U17 ( .A(intadd_2_A_4_), .B(intadd_2_B_4_), .CI(intadd_2_n17), 
        .CO(intadd_2_n16), .S(intadd_0_A_4_) );
  FA1D0 intadd_2_U16 ( .A(intadd_2_A_5_), .B(intadd_2_B_5_), .CI(intadd_2_n16), 
        .CO(intadd_2_n15), .S(intadd_0_A_5_) );
  FA1D0 intadd_2_U15 ( .A(intadd_2_A_6_), .B(intadd_2_B_6_), .CI(intadd_2_n15), 
        .CO(intadd_2_n14), .S(intadd_0_A_6_) );
  FA1D0 intadd_2_U14 ( .A(intadd_2_A_7_), .B(intadd_2_B_7_), .CI(intadd_2_n14), 
        .CO(intadd_2_n13), .S(intadd_0_A_7_) );
  FA1D0 intadd_2_U13 ( .A(intadd_2_A_8_), .B(intadd_2_B_8_), .CI(intadd_2_n13), 
        .CO(intadd_2_n12), .S(intadd_0_A_8_) );
  FA1D0 intadd_2_U12 ( .A(intadd_2_A_9_), .B(intadd_2_B_9_), .CI(intadd_2_n12), 
        .CO(intadd_2_n11), .S(intadd_0_A_9_) );
  FA1D0 intadd_2_U11 ( .A(intadd_2_A_10_), .B(intadd_2_B_10_), .CI(
        intadd_2_n11), .CO(intadd_2_n10), .S(intadd_0_A_10_) );
  FA1D0 intadd_2_U10 ( .A(intadd_2_A_11_), .B(intadd_2_B_11_), .CI(
        intadd_2_n10), .CO(intadd_2_n9), .S(intadd_0_A_11_) );
  FA1D0 intadd_2_U9 ( .A(intadd_2_A_12_), .B(intadd_2_B_12_), .CI(intadd_2_n9), 
        .CO(intadd_2_n8), .S(intadd_0_A_12_) );
  FA1D0 intadd_2_U8 ( .A(intadd_2_A_13_), .B(intadd_2_B_13_), .CI(intadd_2_n8), 
        .CO(intadd_2_n7), .S(intadd_0_A_13_) );
  FA1D0 intadd_2_U7 ( .A(intadd_2_A_14_), .B(intadd_2_B_14_), .CI(intadd_2_n7), 
        .CO(intadd_2_n6), .S(intadd_0_A_14_) );
  FA1D0 intadd_2_U6 ( .A(intadd_2_A_15_), .B(intadd_2_B_15_), .CI(intadd_2_n6), 
        .CO(intadd_2_n5), .S(intadd_0_A_15_) );
  FA1D0 intadd_2_U5 ( .A(intadd_2_A_16_), .B(intadd_2_B_16_), .CI(intadd_2_n5), 
        .CO(intadd_2_n4), .S(intadd_0_A_16_) );
  FA1D0 intadd_2_U4 ( .A(intadd_2_A_17_), .B(intadd_2_B_17_), .CI(intadd_2_n4), 
        .CO(intadd_2_n3), .S(intadd_0_A_17_) );
  FA1D0 intadd_2_U3 ( .A(intadd_2_A_18_), .B(intadd_2_B_18_), .CI(intadd_2_n3), 
        .CO(intadd_2_n2), .S(intadd_0_A_18_) );
  FA1D0 intadd_2_U2 ( .A(intadd_2_A_19_), .B(intadd_2_B_19_), .CI(intadd_2_n2), 
        .CO(intadd_2_n1), .S(intadd_0_A_19_) );
  FA1D0 intadd_3_U7 ( .A(x[24]), .B(y[23]), .CI(y[24]), .CO(intadd_3_n6), .S(
        intadd_3_SUM_0_) );
  FA1D0 intadd_3_U6 ( .A(intadd_3_A_1_), .B(intadd_3_B_1_), .CI(intadd_3_n6), 
        .CO(intadd_3_n5), .S(result[25]) );
  FA1D0 intadd_3_U5 ( .A(intadd_3_A_2_), .B(intadd_3_B_2_), .CI(intadd_3_n5), 
        .CO(intadd_3_n4), .S(result[26]) );
  FA1D0 intadd_3_U4 ( .A(intadd_3_A_3_), .B(intadd_3_B_3_), .CI(intadd_3_n4), 
        .CO(intadd_3_n3), .S(result[27]) );
  FA1D0 intadd_3_U3 ( .A(intadd_3_A_4_), .B(intadd_3_B_4_), .CI(intadd_3_n3), 
        .CO(intadd_3_n2), .S(result[28]) );
  FA1D0 intadd_3_U2 ( .A(intadd_3_A_5_), .B(intadd_3_B_5_), .CI(intadd_3_n2), 
        .CO(intadd_3_n1), .S(result[29]) );
  FA1D0 intadd_0_U2 ( .A(intadd_0_A_23_), .B(intadd_0_B_23_), .CI(intadd_0_n2), 
        .CO(intadd_0_n1), .S(intadd_0_SUM_23_) );
  INVD0 U85 ( .I(n153), .ZN(n144) );
  CKND2D0 U86 ( .A1(intadd_0_SUM_23_), .A2(n144), .ZN(n231) );
  CKND2D0 U87 ( .A1(n232), .A2(intadd_0_SUM_22_), .ZN(n149) );
  NR2D0 U88 ( .A1(n168), .A2(n169), .ZN(intadd_2_B_2_) );
  CKND2D0 U89 ( .A1(n160), .A2(n159), .ZN(intadd_1_B_0_) );
  NR2D0 U90 ( .A1(n164), .A2(n165), .ZN(n169) );
  CKND2D0 U91 ( .A1(n78), .A2(n222), .ZN(n170) );
  BUFFD0 U92 ( .I(y[11]), .Z(n87) );
  BUFFD0 U93 ( .I(y[15]), .Z(n91) );
  BUFFD0 U94 ( .I(y[17]), .Z(n93) );
  BUFFD0 U95 ( .I(y[16]), .Z(n92) );
  BUFFD0 U96 ( .I(y[6]), .Z(n81) );
  BUFFD0 U97 ( .I(y[8]), .Z(n84) );
  BUFFD0 U98 ( .I(y[2]), .Z(n78) );
  BUFFD0 U99 ( .I(y[9]), .Z(n85) );
  BUFFD0 U100 ( .I(y[13]), .Z(n89) );
  BUFFD0 U101 ( .I(y[7]), .Z(n83) );
  BUFFD0 U102 ( .I(y[10]), .Z(n86) );
  BUFFD0 U103 ( .I(y[4]), .Z(n95) );
  BUFFD0 U104 ( .I(y[14]), .Z(n90) );
  BUFFD0 U105 ( .I(x[1]), .Z(n79) );
  BUFFD0 U106 ( .I(y[12]), .Z(n88) );
  BUFFD0 U107 ( .I(y[5]), .Z(n82) );
  BUFFD0 U108 ( .I(y[18]), .Z(n94) );
  BUFFD0 U109 ( .I(y[3]), .Z(n80) );
  CKND2D0 U110 ( .A1(n232), .A2(n99), .ZN(n150) );
  INVD0 U111 ( .I(n158), .ZN(intadd_3_A_1_) );
  INVD0 U112 ( .I(n133), .ZN(n155) );
  AOI21D0 U113 ( .A1(intadd_0_SUM_23_), .A2(n99), .B(n153), .ZN(n101) );
  XNR3D0 U114 ( .A1(impl_impl_fixed_centered_plane_plane_midpoint_product_7_), 
        .A2(intadd_0_n1), .A3(n96), .ZN(n153) );
  INVD0 U115 ( .I(intadd_0_SUM_22_), .ZN(n99) );
  INVD0 U116 ( .I(n167), .ZN(intadd_0_B_23_) );
  INVD0 U117 ( .I(DP_OP_85J1_122_5649_n41), .ZN(intadd_0_A_22_) );
  INVD0 U118 ( .I(DP_OP_85J1_122_5649_n44), .ZN(intadd_0_A_21_) );
  INVD0 U119 ( .I(DP_OP_85J1_122_5649_n49), .ZN(intadd_0_A_20_) );
  INVD0 U120 ( .I(intadd_2_n1), .ZN(DP_OP_85J1_122_5649_n51) );
  XOR2D0 U121 ( .A1(intadd_1_n1), .A2(n228), .Z(intadd_0_B_21_) );
  AOI21D0 U122 ( .A1(n169), .A2(n168), .B(intadd_2_B_2_), .ZN(intadd_2_A_1_)
         );
  AO21D0 U123 ( .A1(n165), .A2(n164), .B(n169), .Z(intadd_2_B_0_) );
  AOI21D0 U124 ( .A1(n207), .A2(n206), .B(intadd_2_B_15_), .ZN(intadd_2_A_14_)
         );
  AOI21D0 U125 ( .A1(n189), .A2(n188), .B(intadd_2_B_9_), .ZN(intadd_2_A_8_)
         );
  AOI21D0 U126 ( .A1(n198), .A2(n197), .B(intadd_2_B_12_), .ZN(intadd_2_A_11_)
         );
  AOI21D0 U127 ( .A1(n177), .A2(n176), .B(intadd_2_B_5_), .ZN(intadd_2_A_4_)
         );
  AOI21D0 U128 ( .A1(n173), .A2(n172), .B(intadd_2_B_3_), .ZN(intadd_2_A_2_)
         );
  AOI21D0 U129 ( .A1(n180), .A2(n179), .B(intadd_2_B_6_), .ZN(intadd_2_A_5_)
         );
  AOI21D0 U130 ( .A1(n195), .A2(n194), .B(intadd_2_B_11_), .ZN(intadd_2_A_10_)
         );
  AOI21D0 U131 ( .A1(n201), .A2(n200), .B(intadd_2_B_13_), .ZN(intadd_2_A_12_)
         );
  AOI21D0 U132 ( .A1(n224), .A2(n223), .B(intadd_2_B_19_), .ZN(intadd_2_A_18_)
         );
  AO21D0 U133 ( .A1(n166), .A2(DP_OP_85J1_122_5649_n158), .B(
        DP_OP_85J1_122_5649_n53), .Z(intadd_2_A_19_) );
  AOI21D0 U134 ( .A1(n175), .A2(n174), .B(intadd_2_B_4_), .ZN(intadd_2_A_3_)
         );
  AOI21D0 U135 ( .A1(n183), .A2(n182), .B(intadd_2_B_7_), .ZN(intadd_2_A_6_)
         );
  AOI21D0 U136 ( .A1(n204), .A2(n203), .B(intadd_2_B_14_), .ZN(intadd_2_A_13_)
         );
  AOI21D0 U137 ( .A1(n217), .A2(n216), .B(intadd_2_B_18_), .ZN(intadd_2_A_17_)
         );
  AOI21D0 U138 ( .A1(n210), .A2(n209), .B(intadd_2_B_16_), .ZN(intadd_2_A_15_)
         );
  OAI21D0 U139 ( .A1(n160), .A2(n159), .B(intadd_1_B_0_), .ZN(intadd_0_B_0_)
         );
  AOI21D0 U140 ( .A1(n213), .A2(n212), .B(intadd_2_B_17_), .ZN(intadd_2_A_16_)
         );
  AOI21D0 U141 ( .A1(n192), .A2(n191), .B(intadd_2_B_10_), .ZN(intadd_2_A_9_)
         );
  AOI21D0 U142 ( .A1(n186), .A2(n185), .B(intadd_2_B_8_), .ZN(intadd_2_A_7_)
         );
  OAI21D0 U143 ( .A1(n171), .A2(n222), .B(n170), .ZN(n173) );
  INVD0 U144 ( .I(impl_impl_fixed_centered_plane_plane_N6), .ZN(
        DP_OP_85J1_122_5649_n46) );
  NR2XD0 U145 ( .A1(DP_OP_85J1_122_5649_n158), .A2(n166), .ZN(
        DP_OP_85J1_122_5649_n53) );
  OA21D0 U146 ( .A1(n78), .A2(n222), .B(n170), .Z(intadd_2_CI) );
  INVD0 U147 ( .I(n83), .ZN(n187) );
  INVD0 U148 ( .I(n84), .ZN(n190) );
  INVD0 U149 ( .I(n87), .ZN(n199) );
  INVD0 U150 ( .I(n86), .ZN(n196) );
  INVD0 U151 ( .I(n94), .ZN(n219) );
  INVD0 U152 ( .I(n91), .ZN(n211) );
  INVD0 U153 ( .I(n93), .ZN(n220) );
  INVD0 U154 ( .I(n88), .ZN(n202) );
  INVD0 U155 ( .I(n92), .ZN(n215) );
  INVD0 U156 ( .I(n89), .ZN(n205) );
  INVD0 U157 ( .I(n85), .ZN(n193) );
  INVD0 U158 ( .I(n90), .ZN(n208) );
  AOI22D0 U159 ( .A1(x[22]), .A2(y[0]), .B1(y[1]), .B2(n222), .ZN(
        intadd_2_B_1_) );
  CKND2D0 U160 ( .A1(y[0]), .A2(n222), .ZN(intadd_2_A_0_) );
  AOI22D0 U161 ( .A1(n225), .A2(x[5]), .B1(x[6]), .B2(n226), .ZN(intadd_1_A_5_) );
  AOI22D0 U162 ( .A1(n225), .A2(x[6]), .B1(x[7]), .B2(n226), .ZN(intadd_1_A_6_) );
  AOI22D0 U163 ( .A1(n225), .A2(x[18]), .B1(x[19]), .B2(n226), .ZN(
        intadd_1_B_18_) );
  AOI22D0 U164 ( .A1(n225), .A2(x[17]), .B1(x[18]), .B2(n226), .ZN(
        intadd_1_A_17_) );
  AOI22D0 U165 ( .A1(n225), .A2(x[19]), .B1(x[20]), .B2(n226), .ZN(
        intadd_1_B_19_) );
  AOI22D0 U166 ( .A1(n225), .A2(x[3]), .B1(x[4]), .B2(n226), .ZN(intadd_1_A_3_) );
  AOI22D0 U167 ( .A1(n225), .A2(x[7]), .B1(x[8]), .B2(n226), .ZN(intadd_1_A_7_) );
  AOI22D0 U168 ( .A1(n225), .A2(n227), .B1(x[20]), .B2(n226), .ZN(
        intadd_1_B_17_) );
  INVD0 U169 ( .I(n95), .ZN(n178) );
  INVD0 U170 ( .I(n79), .ZN(n162) );
  AOI22D0 U171 ( .A1(n225), .A2(x[2]), .B1(x[3]), .B2(n226), .ZN(intadd_1_A_2_) );
  AOI22D0 U172 ( .A1(n225), .A2(x[8]), .B1(x[9]), .B2(n226), .ZN(intadd_1_A_8_) );
  AOI22D0 U173 ( .A1(n225), .A2(n79), .B1(x[2]), .B2(n226), .ZN(intadd_1_A_1_)
         );
  AOI22D0 U174 ( .A1(n225), .A2(x[16]), .B1(x[17]), .B2(n226), .ZN(
        intadd_1_A_16_) );
  AOI22D0 U175 ( .A1(y[22]), .A2(x[0]), .B1(n79), .B2(n226), .ZN(intadd_1_A_0_) );
  AOI22D0 U176 ( .A1(n225), .A2(x[9]), .B1(x[10]), .B2(n226), .ZN(
        intadd_1_A_9_) );
  AOI22D0 U177 ( .A1(n225), .A2(x[10]), .B1(x[11]), .B2(n226), .ZN(
        intadd_1_A_10_) );
  INVD0 U178 ( .I(n82), .ZN(n181) );
  AOI22D0 U179 ( .A1(n225), .A2(x[15]), .B1(x[16]), .B2(n226), .ZN(
        intadd_1_A_15_) );
  AOI22D0 U180 ( .A1(n225), .A2(x[4]), .B1(x[5]), .B2(n226), .ZN(intadd_1_A_4_) );
  AOI22D0 U181 ( .A1(n225), .A2(x[13]), .B1(x[14]), .B2(n226), .ZN(
        intadd_1_A_13_) );
  AOI22D0 U182 ( .A1(n221), .A2(n218), .B1(y[21]), .B2(n222), .ZN(
        DP_OP_85J1_122_5649_n136) );
  AOI22D0 U183 ( .A1(n221), .A2(n214), .B1(n218), .B2(n222), .ZN(
        DP_OP_85J1_122_5649_n137) );
  AOI22D0 U184 ( .A1(n225), .A2(x[14]), .B1(x[15]), .B2(n226), .ZN(
        intadd_1_A_14_) );
  AOI21D0 U185 ( .A1(n221), .A2(n225), .B(
        impl_impl_fixed_centered_plane_plane_midpoint_product_7_), .ZN(
        impl_impl_fixed_centered_plane_plane_N6) );
  INVD0 U186 ( .I(n81), .ZN(n184) );
  AOI22D0 U187 ( .A1(n225), .A2(x[12]), .B1(x[13]), .B2(n226), .ZN(
        intadd_1_A_12_) );
  AOI22D0 U188 ( .A1(n225), .A2(x[11]), .B1(x[12]), .B2(n226), .ZN(
        intadd_1_A_11_) );
  INVD0 U189 ( .I(intadd_3_SUM_0_), .ZN(n156) );
  ND3D0 U190 ( .A1(n221), .A2(n163), .A3(n171), .ZN(intadd_0_CI) );
  INVD0 U191 ( .I(x[20]), .ZN(n227) );
  INVD0 U192 ( .I(y[1]), .ZN(n171) );
  INVD0 U193 ( .I(x[0]), .ZN(n161) );
  INVD0 U194 ( .I(y[0]), .ZN(n163) );
  BUFFD1 U195 ( .I(x[22]), .Z(n221) );
  INVD0 U196 ( .I(x[23]), .ZN(n102) );
  INVD0 U197 ( .I(y[20]), .ZN(n218) );
  BUFFD1 U198 ( .I(y[22]), .Z(n225) );
  TIEL U199 ( .ZN(n77) );
  AOI22D0 U200 ( .A1(n221), .A2(n94), .B1(y[19]), .B2(n222), .ZN(n166) );
  INVD0 U201 ( .I(y[19]), .ZN(n214) );
  AOI22D0 U202 ( .A1(n225), .A2(x[21]), .B1(intadd_0_A_23_), .B2(n226), .ZN(
        intadd_1_A_18_) );
  INVD0 U203 ( .I(x[21]), .ZN(intadd_0_A_23_) );
  INVD2 U204 ( .I(n221), .ZN(n222) );
  NR2D1 U205 ( .A1(n225), .A2(n221), .ZN(
        impl_impl_fixed_centered_plane_plane_midpoint_product_7_) );
  INVD1 U206 ( .I(n231), .ZN(n232) );
  NR2D0 U207 ( .A1(n153), .A2(intadd_0_SUM_23_), .ZN(n133) );
  OAI222D0 U208 ( .A1(n150), .A2(intadd_0_SUM_0_), .B1(n155), .B2(
        intadd_0_SUM_1_), .C1(intadd_0_SUM_2_), .C2(n144), .ZN(result[1]) );
  INVD0 U209 ( .I(intadd_0_SUM_20_), .ZN(n97) );
  AOI21D0 U210 ( .A1(intadd_0_SUM_23_), .A2(n97), .B(n153), .ZN(n98) );
  OAI222D0 U211 ( .A1(n149), .A2(intadd_0_SUM_19_), .B1(n155), .B2(
        intadd_0_SUM_21_), .C1(n98), .C2(intadd_0_SUM_22_), .ZN(result[21]) );
  INVD0 U212 ( .I(n100), .ZN(result[23]) );
  OAI22D0 U213 ( .A1(n144), .A2(intadd_0_SUM_1_), .B1(intadd_0_SUM_0_), .B2(
        n155), .ZN(result[0]) );
  FA1D0 U214 ( .A(y[23]), .B(n102), .CI(n101), .CO(n157), .S(n100) );
  INVD0 U215 ( .I(n103), .ZN(result[24]) );
  AO222D0 U216 ( .A1(intadd_0_SUM_23_), .A2(intadd_0_SUM_21_), .B1(
        intadd_0_SUM_23_), .B2(n153), .C1(intadd_0_SUM_22_), .C2(n144), .Z(
        n104) );
  OAI21D0 U217 ( .A1(intadd_0_SUM_20_), .A2(n149), .B(n104), .ZN(result[22])
         );
  INVD0 U218 ( .I(n150), .ZN(n147) );
  INVD0 U219 ( .I(intadd_0_SUM_3_), .ZN(n152) );
  OAI22D0 U220 ( .A1(intadd_0_SUM_2_), .A2(n149), .B1(n144), .B2(
        intadd_0_SUM_5_), .ZN(n105) );
  AOI21D0 U221 ( .A1(n147), .A2(n152), .B(n105), .ZN(n106) );
  OAI21D0 U222 ( .A1(intadd_0_SUM_4_), .A2(n155), .B(n106), .ZN(result[4]) );
  INVD0 U223 ( .I(intadd_0_SUM_19_), .ZN(n142) );
  OAI22D0 U224 ( .A1(intadd_0_SUM_16_), .A2(n149), .B1(intadd_0_SUM_17_), .B2(
        n150), .ZN(n107) );
  AOI21D0 U225 ( .A1(n153), .A2(n142), .B(n107), .ZN(n108) );
  OAI21D0 U226 ( .A1(intadd_0_SUM_18_), .A2(n155), .B(n108), .ZN(result[18])
         );
  INVD0 U227 ( .I(intadd_0_SUM_11_), .ZN(n146) );
  OAI22D0 U228 ( .A1(intadd_0_SUM_8_), .A2(n149), .B1(intadd_0_SUM_9_), .B2(
        n150), .ZN(n109) );
  AOI21D0 U229 ( .A1(n153), .A2(n146), .B(n109), .ZN(n110) );
  OAI21D0 U230 ( .A1(intadd_0_SUM_10_), .A2(n155), .B(n110), .ZN(result[10])
         );
  INVD0 U231 ( .I(intadd_0_SUM_15_), .ZN(n139) );
  OAI22D0 U232 ( .A1(intadd_0_SUM_12_), .A2(n149), .B1(intadd_0_SUM_13_), .B2(
        n150), .ZN(n111) );
  AOI21D0 U233 ( .A1(n153), .A2(n139), .B(n111), .ZN(n112) );
  OAI21D0 U234 ( .A1(intadd_0_SUM_14_), .A2(n155), .B(n112), .ZN(result[14])
         );
  INVD0 U235 ( .I(intadd_0_SUM_7_), .ZN(n136) );
  OAI22D0 U236 ( .A1(intadd_0_SUM_4_), .A2(n149), .B1(intadd_0_SUM_5_), .B2(
        n150), .ZN(n113) );
  AOI21D0 U237 ( .A1(n153), .A2(n136), .B(n113), .ZN(n114) );
  OAI21D0 U238 ( .A1(intadd_0_SUM_6_), .A2(n155), .B(n114), .ZN(result[6]) );
  INVD0 U239 ( .I(n149), .ZN(n122) );
  OAI22D0 U240 ( .A1(n144), .A2(intadd_0_SUM_14_), .B1(intadd_0_SUM_12_), .B2(
        n150), .ZN(n115) );
  AOI21D0 U241 ( .A1(n122), .A2(n146), .B(n115), .ZN(n116) );
  OAI21D0 U242 ( .A1(intadd_0_SUM_13_), .A2(n155), .B(n116), .ZN(result[13])
         );
  OAI22D0 U243 ( .A1(n144), .A2(intadd_0_SUM_18_), .B1(intadd_0_SUM_16_), .B2(
        n150), .ZN(n117) );
  AOI21D0 U244 ( .A1(n122), .A2(n139), .B(n117), .ZN(n118) );
  OAI21D0 U245 ( .A1(intadd_0_SUM_17_), .A2(n155), .B(n118), .ZN(result[17])
         );
  OAI22D0 U246 ( .A1(n144), .A2(intadd_0_SUM_10_), .B1(intadd_0_SUM_8_), .B2(
        n150), .ZN(n119) );
  AOI21D0 U247 ( .A1(n122), .A2(n136), .B(n119), .ZN(n120) );
  OAI21D0 U248 ( .A1(intadd_0_SUM_9_), .A2(n155), .B(n120), .ZN(result[9]) );
  OAI22D0 U249 ( .A1(n144), .A2(intadd_0_SUM_6_), .B1(intadd_0_SUM_4_), .B2(
        n150), .ZN(n121) );
  AOI21D0 U250 ( .A1(n122), .A2(n152), .B(n121), .ZN(n123) );
  OAI21D0 U251 ( .A1(intadd_0_SUM_5_), .A2(n155), .B(n123), .ZN(result[5]) );
  OAI22D0 U252 ( .A1(intadd_0_SUM_17_), .A2(n149), .B1(intadd_0_SUM_18_), .B2(
        n150), .ZN(n124) );
  AOI21D0 U253 ( .A1(n133), .A2(n142), .B(n124), .ZN(n125) );
  OAI21D0 U254 ( .A1(n144), .A2(intadd_0_SUM_20_), .B(n125), .ZN(result[19])
         );
  OAI22D0 U255 ( .A1(intadd_0_SUM_13_), .A2(n149), .B1(intadd_0_SUM_14_), .B2(
        n150), .ZN(n126) );
  AOI21D0 U256 ( .A1(n133), .A2(n139), .B(n126), .ZN(n127) );
  OAI21D0 U257 ( .A1(n144), .A2(intadd_0_SUM_16_), .B(n127), .ZN(result[15])
         );
  OAI22D0 U258 ( .A1(intadd_0_SUM_1_), .A2(n149), .B1(intadd_0_SUM_2_), .B2(
        n150), .ZN(n128) );
  AOI21D0 U259 ( .A1(n133), .A2(n152), .B(n128), .ZN(n129) );
  OAI21D0 U260 ( .A1(n144), .A2(intadd_0_SUM_4_), .B(n129), .ZN(result[3]) );
  OAI22D0 U261 ( .A1(intadd_0_SUM_5_), .A2(n149), .B1(intadd_0_SUM_6_), .B2(
        n150), .ZN(n130) );
  AOI21D0 U262 ( .A1(n133), .A2(n136), .B(n130), .ZN(n131) );
  OAI21D0 U263 ( .A1(n144), .A2(intadd_0_SUM_8_), .B(n131), .ZN(result[7]) );
  OAI22D0 U264 ( .A1(intadd_0_SUM_9_), .A2(n149), .B1(intadd_0_SUM_10_), .B2(
        n150), .ZN(n132) );
  AOI21D0 U265 ( .A1(n133), .A2(n146), .B(n132), .ZN(n134) );
  OAI21D0 U266 ( .A1(n144), .A2(intadd_0_SUM_12_), .B(n134), .ZN(result[11])
         );
  OAI22D0 U267 ( .A1(n144), .A2(intadd_0_SUM_9_), .B1(intadd_0_SUM_6_), .B2(
        n149), .ZN(n135) );
  AOI21D0 U268 ( .A1(n147), .A2(n136), .B(n135), .ZN(n137) );
  OAI21D0 U269 ( .A1(intadd_0_SUM_8_), .A2(n155), .B(n137), .ZN(result[8]) );
  OAI22D0 U270 ( .A1(n144), .A2(intadd_0_SUM_17_), .B1(intadd_0_SUM_14_), .B2(
        n149), .ZN(n138) );
  AOI21D0 U271 ( .A1(n147), .A2(n139), .B(n138), .ZN(n140) );
  OAI21D0 U272 ( .A1(intadd_0_SUM_16_), .A2(n155), .B(n140), .ZN(result[16])
         );
  OAI22D0 U273 ( .A1(n144), .A2(intadd_0_SUM_21_), .B1(intadd_0_SUM_18_), .B2(
        n149), .ZN(n141) );
  AOI21D0 U274 ( .A1(n147), .A2(n142), .B(n141), .ZN(n143) );
  OAI21D0 U275 ( .A1(intadd_0_SUM_20_), .A2(n155), .B(n143), .ZN(result[20])
         );
  OAI22D0 U276 ( .A1(n144), .A2(intadd_0_SUM_13_), .B1(intadd_0_SUM_10_), .B2(
        n149), .ZN(n145) );
  AOI21D0 U277 ( .A1(n147), .A2(n146), .B(n145), .ZN(n148) );
  OAI21D0 U278 ( .A1(intadd_0_SUM_12_), .A2(n155), .B(n148), .ZN(result[12])
         );
  OAI22D0 U279 ( .A1(intadd_0_SUM_1_), .A2(n150), .B1(intadd_0_SUM_0_), .B2(
        n149), .ZN(n151) );
  AOI21D0 U280 ( .A1(n153), .A2(n152), .B(n151), .ZN(n154) );
  OAI21D0 U281 ( .A1(intadd_0_SUM_2_), .A2(n155), .B(n154), .ZN(result[2]) );
  FA1D0 U282 ( .A(n231), .B(n157), .CI(n156), .CO(n158), .S(n103) );
  INVD1 U283 ( .I(n225), .ZN(n226) );
  OAI32D1 U284 ( .A1(x[0]), .A2(n79), .A3(n226), .B1(n225), .B2(n161), .ZN(
        n160) );
  MUX2ND0 U285 ( .I0(n226), .I1(n225), .S(x[2]), .ZN(n159) );
  AOI221D0 U286 ( .A1(n225), .A2(n162), .B1(n226), .B2(n79), .C(n161), .ZN(
        n165) );
  AOI221D0 U287 ( .A1(n221), .A2(n171), .B1(n222), .B2(y[1]), .C(n163), .ZN(
        n164) );
  MUX2ND0 U288 ( .I0(n222), .I1(n221), .S(n80), .ZN(n168) );
  MUX2ND0 U289 ( .I0(n222), .I1(n221), .S(y[21]), .ZN(DP_OP_85J1_122_5649_n158) );
  FA1D0 U290 ( .A(DP_OP_85J1_122_5649_n40), .B(DP_OP_85J1_122_5649_n39), .CI(
        DP_OP_85J1_122_5649_n46), .CO(n96), .S(n167) );
  OAI33D1 U291 ( .A1(x[22]), .A2(n78), .A3(n95), .B1(n222), .B2(y[1]), .B3(
        n178), .ZN(intadd_2_B_3_) );
  MUX2ND0 U292 ( .I0(n222), .I1(n221), .S(n95), .ZN(n172) );
  OAI33D1 U293 ( .A1(n82), .A2(n80), .A3(x[22]), .B1(n181), .B2(n78), .B3(n222), .ZN(intadd_2_B_4_) );
  MUX2D0 U294 ( .I0(n80), .I1(n78), .S(n221), .Z(n175) );
  MUX2ND0 U295 ( .I0(n222), .I1(n221), .S(n82), .ZN(n174) );
  OAI33D1 U296 ( .A1(n221), .A2(n95), .A3(n81), .B1(n222), .B2(n80), .B3(n184), 
        .ZN(intadd_2_B_5_) );
  MUX2D0 U297 ( .I0(n95), .I1(n80), .S(n221), .Z(n177) );
  MUX2ND0 U298 ( .I0(n222), .I1(n221), .S(n81), .ZN(n176) );
  OAI33D1 U299 ( .A1(n83), .A2(n82), .A3(n221), .B1(n187), .B2(n95), .B3(n222), 
        .ZN(intadd_2_B_6_) );
  MUX2ND0 U300 ( .I0(n178), .I1(n181), .S(n222), .ZN(n180) );
  MUX2ND0 U301 ( .I0(n222), .I1(n221), .S(n83), .ZN(n179) );
  OAI33D1 U302 ( .A1(n84), .A2(n81), .A3(n221), .B1(n190), .B2(n82), .B3(n222), 
        .ZN(intadd_2_B_7_) );
  MUX2ND0 U303 ( .I0(n181), .I1(n184), .S(n222), .ZN(n183) );
  MUX2ND0 U304 ( .I0(n222), .I1(n221), .S(n84), .ZN(n182) );
  OAI33D1 U305 ( .A1(n85), .A2(n83), .A3(n221), .B1(n193), .B2(n81), .B3(n222), 
        .ZN(intadd_2_B_8_) );
  MUX2ND0 U306 ( .I0(n184), .I1(n187), .S(n222), .ZN(n186) );
  MUX2ND0 U307 ( .I0(n222), .I1(n221), .S(n85), .ZN(n185) );
  OAI33D1 U308 ( .A1(n86), .A2(n84), .A3(n221), .B1(n196), .B2(n83), .B3(n222), 
        .ZN(intadd_2_B_9_) );
  MUX2ND0 U309 ( .I0(n187), .I1(n190), .S(n222), .ZN(n189) );
  MUX2ND0 U310 ( .I0(n222), .I1(n221), .S(n86), .ZN(n188) );
  OAI33D1 U311 ( .A1(n87), .A2(n85), .A3(n221), .B1(n199), .B2(n84), .B3(n222), 
        .ZN(intadd_2_B_10_) );
  MUX2ND0 U312 ( .I0(n190), .I1(n193), .S(n222), .ZN(n192) );
  MUX2ND0 U313 ( .I0(n222), .I1(n221), .S(n87), .ZN(n191) );
  OAI33D1 U314 ( .A1(n88), .A2(n86), .A3(n221), .B1(n202), .B2(n85), .B3(n222), 
        .ZN(intadd_2_B_11_) );
  MUX2ND0 U315 ( .I0(n193), .I1(n196), .S(n222), .ZN(n195) );
  MUX2ND0 U316 ( .I0(n222), .I1(n221), .S(n88), .ZN(n194) );
  OAI33D1 U317 ( .A1(n89), .A2(n87), .A3(n221), .B1(n205), .B2(n86), .B3(n222), 
        .ZN(intadd_2_B_12_) );
  MUX2ND0 U318 ( .I0(n196), .I1(n199), .S(n222), .ZN(n198) );
  MUX2ND0 U319 ( .I0(n222), .I1(n221), .S(n89), .ZN(n197) );
  OAI33D1 U320 ( .A1(n90), .A2(n88), .A3(n221), .B1(n208), .B2(n87), .B3(n222), 
        .ZN(intadd_2_B_13_) );
  MUX2ND0 U321 ( .I0(n199), .I1(n202), .S(n222), .ZN(n201) );
  MUX2ND0 U322 ( .I0(n222), .I1(n221), .S(n90), .ZN(n200) );
  OAI33D1 U323 ( .A1(n91), .A2(n89), .A3(n221), .B1(n211), .B2(n88), .B3(n222), 
        .ZN(intadd_2_B_14_) );
  MUX2ND0 U324 ( .I0(n202), .I1(n205), .S(n222), .ZN(n204) );
  MUX2ND0 U325 ( .I0(n222), .I1(n221), .S(n91), .ZN(n203) );
  OAI33D1 U326 ( .A1(n92), .A2(n90), .A3(n221), .B1(n215), .B2(n89), .B3(n222), 
        .ZN(intadd_2_B_15_) );
  MUX2ND0 U327 ( .I0(n205), .I1(n208), .S(n222), .ZN(n207) );
  MUX2ND0 U328 ( .I0(n222), .I1(n221), .S(n92), .ZN(n206) );
  OAI33D1 U329 ( .A1(n93), .A2(n91), .A3(n221), .B1(n220), .B2(n90), .B3(n222), 
        .ZN(intadd_2_B_16_) );
  MUX2ND0 U330 ( .I0(n208), .I1(n211), .S(n222), .ZN(n210) );
  MUX2ND0 U331 ( .I0(n222), .I1(n221), .S(n93), .ZN(n209) );
  OAI33D1 U332 ( .A1(n94), .A2(n92), .A3(n221), .B1(n219), .B2(n91), .B3(n222), 
        .ZN(intadd_2_B_17_) );
  MUX2ND0 U333 ( .I0(n211), .I1(n215), .S(n222), .ZN(n213) );
  MUX2ND0 U334 ( .I0(n222), .I1(n221), .S(n94), .ZN(n212) );
  OAI33D1 U335 ( .A1(y[19]), .A2(n93), .A3(n221), .B1(n214), .B2(n92), .B3(
        n222), .ZN(intadd_2_B_18_) );
  MUX2ND0 U336 ( .I0(n215), .I1(n220), .S(n222), .ZN(n217) );
  MUX2ND0 U337 ( .I0(n222), .I1(n221), .S(y[19]), .ZN(n216) );
  OAI33D1 U338 ( .A1(n221), .A2(n94), .A3(y[20]), .B1(n222), .B2(n93), .B3(
        n218), .ZN(intadd_2_B_19_) );
  MUX2ND0 U339 ( .I0(n220), .I1(n219), .S(n222), .ZN(n224) );
  MUX2ND0 U340 ( .I0(n222), .I1(n221), .S(y[20]), .ZN(n223) );
  MUX2ND0 U341 ( .I0(y[22]), .I1(n226), .S(x[3]), .ZN(intadd_1_CI) );
  MUX2ND0 U342 ( .I0(y[22]), .I1(n226), .S(x[4]), .ZN(intadd_1_B_1_) );
  MUX2ND0 U343 ( .I0(n225), .I1(n226), .S(x[5]), .ZN(intadd_1_B_2_) );
  MUX2ND0 U344 ( .I0(n225), .I1(n226), .S(x[6]), .ZN(intadd_1_B_3_) );
  MUX2ND0 U345 ( .I0(n225), .I1(n226), .S(x[7]), .ZN(intadd_1_B_4_) );
  MUX2ND0 U346 ( .I0(n225), .I1(n226), .S(x[8]), .ZN(intadd_1_B_5_) );
  MUX2ND0 U347 ( .I0(n225), .I1(n226), .S(x[9]), .ZN(intadd_1_B_6_) );
  MUX2ND0 U348 ( .I0(n225), .I1(n226), .S(x[10]), .ZN(intadd_1_B_7_) );
  MUX2ND0 U349 ( .I0(n225), .I1(n226), .S(x[11]), .ZN(intadd_1_B_8_) );
  MUX2ND0 U350 ( .I0(n225), .I1(n226), .S(x[12]), .ZN(intadd_1_B_9_) );
  MUX2ND0 U351 ( .I0(n225), .I1(n226), .S(x[13]), .ZN(intadd_1_B_10_) );
  MUX2ND0 U352 ( .I0(n225), .I1(n226), .S(x[14]), .ZN(intadd_1_B_11_) );
  MUX2ND0 U353 ( .I0(n225), .I1(n226), .S(x[15]), .ZN(intadd_1_B_12_) );
  MUX2ND0 U354 ( .I0(n225), .I1(n226), .S(x[16]), .ZN(intadd_1_B_13_) );
  MUX2ND0 U355 ( .I0(n225), .I1(n226), .S(x[17]), .ZN(intadd_1_B_14_) );
  MUX2ND0 U356 ( .I0(n225), .I1(n226), .S(x[18]), .ZN(intadd_1_B_15_) );
  MUX2ND0 U357 ( .I0(n225), .I1(n226), .S(x[19]), .ZN(intadd_1_B_16_) );
  AOI221D0 U358 ( .A1(x[21]), .A2(x[20]), .B1(intadd_0_A_23_), .B2(n227), .C(
        n226), .ZN(n228) );
  FA1D0 U359 ( .A(x[25]), .B(y[25]), .CI(n232), .CO(intadd_3_A_2_), .S(
        intadd_3_B_1_) );
  FA1D0 U360 ( .A(x[26]), .B(y[26]), .CI(n232), .CO(intadd_3_A_3_), .S(
        intadd_3_B_2_) );
  FA1D0 U361 ( .A(x[27]), .B(y[27]), .CI(n232), .CO(intadd_3_A_4_), .S(
        intadd_3_B_3_) );
  FA1D0 U362 ( .A(x[28]), .B(y[28]), .CI(n232), .CO(intadd_3_A_5_), .S(
        intadd_3_B_4_) );
  FA1D0 U363 ( .A(x[29]), .B(y[29]), .CI(n232), .CO(n229), .S(intadd_3_B_5_)
         );
  XOR4D0 U364 ( .A1(x[30]), .A2(y[30]), .A3(n229), .A4(intadd_3_n1), .Z(n230)
         );
  MUX2ND0 U365 ( .I0(n232), .I1(n231), .S(n230), .ZN(result[30]) );
  XOR2D0 U366 ( .A1(y[31]), .A2(x[31]), .Z(result[31]) );
endmodule

