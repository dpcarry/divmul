/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Wed Sep  2 20:05:56 2026
/////////////////////////////////////////////////////////////


module oadm_fixed_l2_div_specialized_reduced_scale_paceio ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   impl_x_rounding_lut_N251, C6_DATA2_1, DP_OP_54J1_124_4725_n542,
         DP_OP_54J1_124_4725_n240, DP_OP_54J1_124_4725_n239,
         DP_OP_54J1_124_4725_n220, DP_OP_54J1_124_4725_n219,
         DP_OP_54J1_124_4725_n218, DP_OP_54J1_124_4725_n217,
         DP_OP_54J1_124_4725_n216, DP_OP_54J1_124_4725_n215,
         DP_OP_54J1_124_4725_n214, DP_OP_54J1_124_4725_n213,
         DP_OP_54J1_124_4725_n212, DP_OP_54J1_124_4725_n211,
         DP_OP_54J1_124_4725_n210, DP_OP_54J1_124_4725_n209,
         DP_OP_54J1_124_4725_n208, DP_OP_54J1_124_4725_n207,
         DP_OP_54J1_124_4725_n206, DP_OP_54J1_124_4725_n205,
         DP_OP_54J1_124_4725_n204, DP_OP_54J1_124_4725_n203,
         DP_OP_54J1_124_4725_n202, DP_OP_54J1_124_4725_n176,
         DP_OP_54J1_124_4725_n154, DP_OP_54J1_124_4725_n153,
         DP_OP_54J1_124_4725_n149, DP_OP_54J1_124_4725_n147,
         DP_OP_54J1_124_4725_n146, DP_OP_54J1_124_4725_n145,
         DP_OP_54J1_124_4725_n142, DP_OP_54J1_124_4725_n141,
         DP_OP_54J1_124_4725_n140, DP_OP_54J1_124_4725_n139,
         DP_OP_54J1_124_4725_n138, DP_OP_54J1_124_4725_n137,
         DP_OP_54J1_124_4725_n136, DP_OP_54J1_124_4725_n135,
         DP_OP_54J1_124_4725_n134, DP_OP_54J1_124_4725_n133,
         DP_OP_54J1_124_4725_n132, DP_OP_54J1_124_4725_n131,
         DP_OP_54J1_124_4725_n130, DP_OP_54J1_124_4725_n129,
         DP_OP_54J1_124_4725_n128, DP_OP_54J1_124_4725_n127,
         DP_OP_54J1_124_4725_n126, DP_OP_54J1_124_4725_n125,
         DP_OP_54J1_124_4725_n124, DP_OP_54J1_124_4725_n123,
         DP_OP_54J1_124_4725_n122, DP_OP_54J1_124_4725_n121,
         DP_OP_54J1_124_4725_n120, DP_OP_54J1_124_4725_n119,
         DP_OP_54J1_124_4725_n118, DP_OP_54J1_124_4725_n117,
         DP_OP_54J1_124_4725_n116, DP_OP_54J1_124_4725_n115,
         DP_OP_54J1_124_4725_n114, DP_OP_54J1_124_4725_n113,
         DP_OP_54J1_124_4725_n112, DP_OP_54J1_124_4725_n111,
         DP_OP_54J1_124_4725_n110, DP_OP_54J1_124_4725_n109,
         DP_OP_54J1_124_4725_n108, DP_OP_54J1_124_4725_n107,
         DP_OP_54J1_124_4725_n106, DP_OP_54J1_124_4725_n105,
         DP_OP_54J1_124_4725_n104, DP_OP_54J1_124_4725_n103,
         DP_OP_54J1_124_4725_n102, DP_OP_54J1_124_4725_n101,
         DP_OP_54J1_124_4725_n100, DP_OP_54J1_124_4725_n99,
         DP_OP_54J1_124_4725_n98, DP_OP_54J1_124_4725_n97,
         DP_OP_54J1_124_4725_n96, DP_OP_54J1_124_4725_n95,
         DP_OP_54J1_124_4725_n94, DP_OP_54J1_124_4725_n93,
         DP_OP_54J1_124_4725_n92, DP_OP_54J1_124_4725_n91,
         DP_OP_54J1_124_4725_n90, DP_OP_54J1_124_4725_n89,
         DP_OP_54J1_124_4725_n88, DP_OP_54J1_124_4725_n87,
         DP_OP_54J1_124_4725_n86, DP_OP_54J1_124_4725_n85,
         DP_OP_54J1_124_4725_n84, DP_OP_54J1_124_4725_n83,
         DP_OP_54J1_124_4725_n82, DP_OP_54J1_124_4725_n81,
         DP_OP_54J1_124_4725_n80, DP_OP_54J1_124_4725_n79,
         DP_OP_54J1_124_4725_n78, DP_OP_54J1_124_4725_n77,
         DP_OP_54J1_124_4725_n76, DP_OP_54J1_124_4725_n75,
         DP_OP_54J1_124_4725_n74, DP_OP_54J1_124_4725_n73,
         DP_OP_54J1_124_4725_n72, DP_OP_54J1_124_4725_n71,
         DP_OP_54J1_124_4725_n70, DP_OP_54J1_124_4725_n69,
         DP_OP_54J1_124_4725_n68, DP_OP_54J1_124_4725_n67,
         DP_OP_54J1_124_4725_n66, DP_OP_54J1_124_4725_n65,
         DP_OP_54J1_124_4725_n64, DP_OP_54J1_124_4725_n63,
         DP_OP_54J1_124_4725_n62, DP_OP_54J1_124_4725_n61,
         DP_OP_54J1_124_4725_n60, DP_OP_54J1_124_4725_n59,
         DP_OP_54J1_124_4725_n58, DP_OP_54J1_124_4725_n57,
         DP_OP_54J1_124_4725_n56, DP_OP_54J1_124_4725_n55,
         DP_OP_54J1_124_4725_n54, DP_OP_54J1_124_4725_n53,
         DP_OP_54J1_124_4725_n52, DP_OP_54J1_124_4725_n51,
         DP_OP_54J1_124_4725_n50, DP_OP_54J1_124_4725_n49,
         DP_OP_54J1_124_4725_n48, DP_OP_54J1_124_4725_n47,
         DP_OP_54J1_124_4725_n46, DP_OP_54J1_124_4725_n45,
         DP_OP_54J1_124_4725_n44, DP_OP_54J1_124_4725_n43,
         DP_OP_54J1_124_4725_n42, DP_OP_54J1_124_4725_n41,
         DP_OP_54J1_124_4725_n40, DP_OP_54J1_124_4725_n39,
         DP_OP_54J1_124_4725_n38, DP_OP_54J1_124_4725_n37, mult_x_4_n218,
         mult_x_4_n217, mult_x_4_n216, mult_x_4_n215, mult_x_4_n214,
         mult_x_4_n213, mult_x_4_n212, mult_x_4_n211, mult_x_4_n210,
         mult_x_4_n209, mult_x_4_n208, mult_x_4_n207, mult_x_4_n206,
         mult_x_4_n205, mult_x_4_n204, mult_x_4_n203, mult_x_4_n202,
         mult_x_4_n201, mult_x_4_n200, mult_x_4_n195, mult_x_4_n194,
         mult_x_4_n193, mult_x_4_n192, mult_x_4_n191, mult_x_4_n190,
         mult_x_4_n189, mult_x_4_n188, mult_x_4_n187, mult_x_4_n186,
         mult_x_4_n185, mult_x_4_n184, mult_x_4_n183, mult_x_4_n182,
         mult_x_4_n181, mult_x_4_n180, mult_x_4_n179, mult_x_4_n178,
         mult_x_4_n177, mult_x_4_n172, mult_x_4_n171, mult_x_4_n170,
         mult_x_4_n169, mult_x_4_n168, mult_x_4_n167, mult_x_4_n166,
         mult_x_4_n165, mult_x_4_n164, mult_x_4_n163, mult_x_4_n162,
         mult_x_4_n161, mult_x_4_n160, mult_x_4_n159, mult_x_4_n158,
         mult_x_4_n157, mult_x_4_n156, mult_x_4_n155, mult_x_4_n154,
         mult_x_4_n147, mult_x_4_n146, mult_x_4_n145, mult_x_4_n144,
         mult_x_4_n143, mult_x_4_n142, mult_x_4_n141, mult_x_4_n140,
         mult_x_4_n139, mult_x_4_n138, mult_x_4_n137, mult_x_4_n136,
         mult_x_4_n135, mult_x_4_n134, mult_x_4_n133, mult_x_4_n132,
         mult_x_4_n131, mult_x_4_n130, mult_x_4_n129, mult_x_4_n118,
         mult_x_4_n115, mult_x_4_n114, mult_x_4_n113, mult_x_4_n112,
         mult_x_4_n111, mult_x_4_n110, mult_x_4_n109, mult_x_4_n108,
         mult_x_4_n107, mult_x_4_n106, mult_x_4_n105, mult_x_4_n104,
         mult_x_4_n103, mult_x_4_n102, mult_x_4_n101, mult_x_4_n100,
         mult_x_4_n99, mult_x_4_n98, mult_x_4_n97, mult_x_4_n96, mult_x_4_n95,
         mult_x_4_n94, mult_x_4_n93, mult_x_4_n92, mult_x_4_n91, mult_x_4_n90,
         mult_x_4_n89, mult_x_4_n88, mult_x_4_n87, mult_x_4_n86, mult_x_4_n85,
         mult_x_4_n84, mult_x_4_n83, mult_x_4_n82, mult_x_4_n81, mult_x_4_n80,
         mult_x_4_n79, mult_x_4_n78, mult_x_4_n77, mult_x_4_n76, mult_x_4_n75,
         mult_x_4_n74, mult_x_4_n73, mult_x_4_n72, mult_x_4_n71, mult_x_4_n70,
         mult_x_4_n69, mult_x_4_n68, mult_x_4_n67, mult_x_4_n66, mult_x_4_n65,
         mult_x_4_n64, mult_x_4_n63, mult_x_4_n62, mult_x_4_n61, mult_x_4_n60,
         mult_x_4_n59, DP_OP_56J1_125_5844_n23, DP_OP_56J1_125_5844_n22,
         DP_OP_56J1_125_5844_n21, DP_OP_56J1_125_5844_n20,
         DP_OP_56J1_125_5844_n19, DP_OP_56J1_125_5844_n18,
         DP_OP_56J1_125_5844_n17, DP_OP_56J1_125_5844_n16,
         DP_OP_56J1_125_5844_n15, DP_OP_56J1_125_5844_n14,
         DP_OP_56J1_125_5844_n13, DP_OP_56J1_125_5844_n12,
         DP_OP_56J1_125_5844_n11, DP_OP_56J1_125_5844_n8,
         DP_OP_56J1_125_5844_n7, DP_OP_56J1_125_5844_n6, intadd_0_B_20_,
         intadd_0_B_19_, intadd_0_B_18_, intadd_0_B_15_, intadd_0_B_14_,
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
         intadd_0_n3, intadd_0_n2, intadd_0_n1, intadd_1_A_21_, intadd_1_A_20_,
         intadd_1_A_19_, intadd_1_B_21_, intadd_1_B_20_, intadd_1_B_19_,
         intadd_1_B_18_, intadd_1_CI, intadd_1_SUM_21_, intadd_1_SUM_20_,
         intadd_1_SUM_19_, intadd_1_SUM_18_, intadd_1_SUM_17_,
         intadd_1_SUM_16_, intadd_1_SUM_15_, intadd_1_SUM_14_,
         intadd_1_SUM_13_, intadd_1_SUM_12_, intadd_1_SUM_11_,
         intadd_1_SUM_10_, intadd_1_SUM_9_, intadd_1_SUM_8_, intadd_1_SUM_7_,
         intadd_1_SUM_6_, intadd_1_SUM_5_, intadd_1_SUM_4_, intadd_1_SUM_3_,
         intadd_1_SUM_2_, intadd_1_SUM_1_, intadd_1_SUM_0_, intadd_1_n22,
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
         intadd_3_n2, intadd_3_n1, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n50, n51,
         n52, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n114, n115, n116, n117, n118, n119, n120, n121,
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
         n232, n233, n234, n235, n236, n237, n238, n239, n240, n241, n242,
         n243, n244, n245, n246, n247, n248, n249, n250, n251, n252, n253,
         n254, n255, n256, n257, n258, n259, n260, n261, n262, n263, n264,
         n265, n266, n267, n268, n269, n270, n271, n272, n273, n274, n275,
         n276, n277, n278, n279, n280, n281, n282, n283, n284, n285, n286,
         n287, n288, n289, n290, n291, n292, n293;
  wire   [6:0] impl_exponent_input;
  wire   [5:4] impl_midpoint_product;

  CMPE42D1 DP_OP_54J1_124_4725_U95 ( .A(DP_OP_54J1_124_4725_n149), .B(
        impl_x_rounding_lut_N251), .C(DP_OP_54J1_124_4725_n240), .CIX(
        DP_OP_54J1_124_4725_n220), .D(DP_OP_54J1_124_4725_n176), .CO(
        DP_OP_54J1_124_4725_n146), .COX(DP_OP_54J1_124_4725_n145), .S(
        DP_OP_54J1_124_4725_n147) );
  CMPE42D1 DP_OP_54J1_124_4725_U91 ( .A(DP_OP_54J1_124_4725_n219), .B(
        DP_OP_54J1_124_4725_n239), .C(DP_OP_54J1_124_4725_n145), .CIX(
        DP_OP_54J1_124_4725_n146), .D(DP_OP_54J1_124_4725_n142), .CO(
        DP_OP_54J1_124_4725_n139), .COX(DP_OP_54J1_124_4725_n138), .S(
        DP_OP_54J1_124_4725_n140) );
  CMPE42D1 DP_OP_54J1_124_4725_U89 ( .A(DP_OP_54J1_124_4725_n141), .B(
        DP_OP_54J1_124_4725_n218), .C(DP_OP_54J1_124_4725_n137), .CIX(
        DP_OP_54J1_124_4725_n139), .D(DP_OP_54J1_124_4725_n138), .CO(
        DP_OP_54J1_124_4725_n134), .COX(DP_OP_54J1_124_4725_n133), .S(
        DP_OP_54J1_124_4725_n135) );
  CMPE42D1 DP_OP_54J1_124_4725_U86 ( .A(DP_OP_54J1_124_4725_n136), .B(
        DP_OP_54J1_124_4725_n217), .C(DP_OP_54J1_124_4725_n132), .CIX(
        DP_OP_54J1_124_4725_n134), .D(DP_OP_54J1_124_4725_n133), .CO(
        DP_OP_54J1_124_4725_n129), .COX(DP_OP_54J1_124_4725_n128), .S(
        DP_OP_54J1_124_4725_n130) );
  CMPE42D1 DP_OP_54J1_124_4725_U83 ( .A(DP_OP_54J1_124_4725_n131), .B(
        DP_OP_54J1_124_4725_n216), .C(DP_OP_54J1_124_4725_n127), .CIX(
        DP_OP_54J1_124_4725_n129), .D(DP_OP_54J1_124_4725_n128), .CO(
        DP_OP_54J1_124_4725_n124), .COX(DP_OP_54J1_124_4725_n123), .S(
        DP_OP_54J1_124_4725_n125) );
  CMPE42D1 DP_OP_54J1_124_4725_U80 ( .A(DP_OP_54J1_124_4725_n126), .B(
        DP_OP_54J1_124_4725_n215), .C(DP_OP_54J1_124_4725_n122), .CIX(
        DP_OP_54J1_124_4725_n124), .D(DP_OP_54J1_124_4725_n123), .CO(
        DP_OP_54J1_124_4725_n119), .COX(DP_OP_54J1_124_4725_n118), .S(
        DP_OP_54J1_124_4725_n120) );
  CMPE42D1 DP_OP_54J1_124_4725_U77 ( .A(DP_OP_54J1_124_4725_n121), .B(
        DP_OP_54J1_124_4725_n214), .C(DP_OP_54J1_124_4725_n117), .CIX(
        DP_OP_54J1_124_4725_n119), .D(DP_OP_54J1_124_4725_n118), .CO(
        DP_OP_54J1_124_4725_n114), .COX(DP_OP_54J1_124_4725_n113), .S(
        DP_OP_54J1_124_4725_n115) );
  CMPE42D1 DP_OP_54J1_124_4725_U74 ( .A(DP_OP_54J1_124_4725_n116), .B(
        DP_OP_54J1_124_4725_n213), .C(DP_OP_54J1_124_4725_n112), .CIX(
        DP_OP_54J1_124_4725_n114), .D(DP_OP_54J1_124_4725_n113), .CO(
        DP_OP_54J1_124_4725_n109), .COX(DP_OP_54J1_124_4725_n108), .S(
        DP_OP_54J1_124_4725_n110) );
  CMPE42D1 DP_OP_54J1_124_4725_U71 ( .A(DP_OP_54J1_124_4725_n111), .B(
        DP_OP_54J1_124_4725_n212), .C(DP_OP_54J1_124_4725_n107), .CIX(
        DP_OP_54J1_124_4725_n109), .D(DP_OP_54J1_124_4725_n108), .CO(
        DP_OP_54J1_124_4725_n104), .COX(DP_OP_54J1_124_4725_n103), .S(
        DP_OP_54J1_124_4725_n105) );
  CMPE42D1 DP_OP_54J1_124_4725_U68 ( .A(DP_OP_54J1_124_4725_n106), .B(
        DP_OP_54J1_124_4725_n211), .C(DP_OP_54J1_124_4725_n102), .CIX(
        DP_OP_54J1_124_4725_n104), .D(DP_OP_54J1_124_4725_n103), .CO(
        DP_OP_54J1_124_4725_n99), .COX(DP_OP_54J1_124_4725_n98), .S(
        DP_OP_54J1_124_4725_n100) );
  CMPE42D1 DP_OP_54J1_124_4725_U65 ( .A(DP_OP_54J1_124_4725_n101), .B(
        DP_OP_54J1_124_4725_n210), .C(DP_OP_54J1_124_4725_n97), .CIX(
        DP_OP_54J1_124_4725_n99), .D(DP_OP_54J1_124_4725_n98), .CO(
        DP_OP_54J1_124_4725_n94), .COX(DP_OP_54J1_124_4725_n93), .S(
        DP_OP_54J1_124_4725_n95) );
  CMPE42D1 DP_OP_54J1_124_4725_U62 ( .A(DP_OP_54J1_124_4725_n96), .B(
        DP_OP_54J1_124_4725_n209), .C(DP_OP_54J1_124_4725_n92), .CIX(
        DP_OP_54J1_124_4725_n94), .D(DP_OP_54J1_124_4725_n93), .CO(
        DP_OP_54J1_124_4725_n89), .COX(DP_OP_54J1_124_4725_n88), .S(
        DP_OP_54J1_124_4725_n90) );
  CMPE42D1 DP_OP_54J1_124_4725_U59 ( .A(DP_OP_54J1_124_4725_n91), .B(
        DP_OP_54J1_124_4725_n208), .C(DP_OP_54J1_124_4725_n87), .CIX(
        DP_OP_54J1_124_4725_n89), .D(DP_OP_54J1_124_4725_n88), .CO(
        DP_OP_54J1_124_4725_n84), .COX(DP_OP_54J1_124_4725_n83), .S(
        DP_OP_54J1_124_4725_n85) );
  CMPE42D1 DP_OP_54J1_124_4725_U56 ( .A(DP_OP_54J1_124_4725_n86), .B(
        DP_OP_54J1_124_4725_n207), .C(DP_OP_54J1_124_4725_n82), .CIX(
        DP_OP_54J1_124_4725_n84), .D(DP_OP_54J1_124_4725_n83), .CO(
        DP_OP_54J1_124_4725_n79), .COX(DP_OP_54J1_124_4725_n78), .S(
        DP_OP_54J1_124_4725_n80) );
  CMPE42D1 DP_OP_54J1_124_4725_U53 ( .A(DP_OP_54J1_124_4725_n81), .B(
        DP_OP_54J1_124_4725_n206), .C(DP_OP_54J1_124_4725_n77), .CIX(
        DP_OP_54J1_124_4725_n79), .D(DP_OP_54J1_124_4725_n78), .CO(
        DP_OP_54J1_124_4725_n74), .COX(DP_OP_54J1_124_4725_n73), .S(
        DP_OP_54J1_124_4725_n75) );
  CMPE42D1 DP_OP_54J1_124_4725_U50 ( .A(DP_OP_54J1_124_4725_n76), .B(
        DP_OP_54J1_124_4725_n205), .C(DP_OP_54J1_124_4725_n72), .CIX(
        DP_OP_54J1_124_4725_n74), .D(DP_OP_54J1_124_4725_n73), .CO(
        DP_OP_54J1_124_4725_n69), .COX(DP_OP_54J1_124_4725_n68), .S(
        DP_OP_54J1_124_4725_n70) );
  CMPE42D1 DP_OP_54J1_124_4725_U47 ( .A(DP_OP_54J1_124_4725_n71), .B(
        DP_OP_54J1_124_4725_n204), .C(DP_OP_54J1_124_4725_n67), .CIX(
        DP_OP_54J1_124_4725_n69), .D(DP_OP_54J1_124_4725_n68), .CO(
        DP_OP_54J1_124_4725_n64), .COX(DP_OP_54J1_124_4725_n63), .S(
        DP_OP_54J1_124_4725_n65) );
  CMPE42D1 DP_OP_54J1_124_4725_U45 ( .A(DP_OP_54J1_124_4725_n66), .B(
        DP_OP_54J1_124_4725_n203), .C(DP_OP_54J1_124_4725_n62), .CIX(
        DP_OP_54J1_124_4725_n64), .D(DP_OP_54J1_124_4725_n63), .CO(
        DP_OP_54J1_124_4725_n59), .COX(DP_OP_54J1_124_4725_n58), .S(
        DP_OP_54J1_124_4725_n60) );
  CMPE42D1 DP_OP_54J1_124_4725_U43 ( .A(DP_OP_54J1_124_4725_n61), .B(
        DP_OP_54J1_124_4725_n202), .C(DP_OP_54J1_124_4725_n57), .CIX(
        DP_OP_54J1_124_4725_n59), .D(DP_OP_54J1_124_4725_n58), .CO(
        DP_OP_54J1_124_4725_n54), .COX(DP_OP_54J1_124_4725_n53), .S(
        DP_OP_54J1_124_4725_n55) );
  CMPE42D1 DP_OP_54J1_124_4725_U41 ( .A(DP_OP_54J1_124_4725_n52), .B(
        DP_OP_54J1_124_4725_n56), .C(DP_OP_54J1_124_4725_n53), .CIX(
        DP_OP_54J1_124_4725_n154), .D(DP_OP_54J1_124_4725_n54), .CO(
        DP_OP_54J1_124_4725_n49), .COX(DP_OP_54J1_124_4725_n48), .S(
        DP_OP_54J1_124_4725_n50) );
  CMPE42D1 DP_OP_54J1_124_4725_U39 ( .A(DP_OP_54J1_124_4725_n47), .B(
        DP_OP_54J1_124_4725_n51), .C(DP_OP_54J1_124_4725_n48), .CIX(
        DP_OP_54J1_124_4725_n153), .D(DP_OP_54J1_124_4725_n49), .CO(
        DP_OP_54J1_124_4725_n44), .COX(DP_OP_54J1_124_4725_n43), .S(
        DP_OP_54J1_124_4725_n45) );
  CMPE42D1 DP_OP_54J1_124_4725_U38 ( .A(n33), .B(impl_midpoint_product[4]), 
        .C(DP_OP_54J1_124_4725_n46), .CIX(DP_OP_54J1_124_4725_n44), .D(
        DP_OP_54J1_124_4725_n43), .CO(DP_OP_54J1_124_4725_n41), .COX(
        DP_OP_54J1_124_4725_n40), .S(DP_OP_54J1_124_4725_n42) );
  CMPE42D1 DP_OP_54J1_124_4725_U37 ( .A(n34), .B(impl_midpoint_product[5]), 
        .C(DP_OP_54J1_124_4725_n40), .CIX(DP_OP_54J1_124_4725_n41), .D(
        DP_OP_54J1_124_4725_n542), .CO(DP_OP_54J1_124_4725_n38), .COX(
        DP_OP_54J1_124_4725_n37), .S(DP_OP_54J1_124_4725_n39) );
  CMPE42D1 mult_x_4_U71 ( .A(mult_x_4_n195), .B(mult_x_4_n218), .C(
        mult_x_4_n147), .CIX(mult_x_4_n172), .D(mult_x_4_n118), .CO(
        mult_x_4_n114), .COX(mult_x_4_n113), .S(mult_x_4_n115) );
  CMPE42D1 mult_x_4_U70 ( .A(mult_x_4_n194), .B(mult_x_4_n217), .C(
        mult_x_4_n146), .CIX(mult_x_4_n113), .D(mult_x_4_n171), .CO(
        mult_x_4_n111), .COX(mult_x_4_n110), .S(mult_x_4_n112) );
  CMPE42D1 mult_x_4_U69 ( .A(mult_x_4_n193), .B(mult_x_4_n216), .C(
        mult_x_4_n145), .CIX(mult_x_4_n110), .D(mult_x_4_n170), .CO(
        mult_x_4_n108), .COX(mult_x_4_n107), .S(mult_x_4_n109) );
  CMPE42D1 mult_x_4_U68 ( .A(mult_x_4_n192), .B(mult_x_4_n215), .C(
        mult_x_4_n144), .CIX(mult_x_4_n107), .D(mult_x_4_n169), .CO(
        mult_x_4_n105), .COX(mult_x_4_n104), .S(mult_x_4_n106) );
  CMPE42D1 mult_x_4_U67 ( .A(mult_x_4_n191), .B(mult_x_4_n214), .C(
        mult_x_4_n143), .CIX(mult_x_4_n104), .D(mult_x_4_n168), .CO(
        mult_x_4_n102), .COX(mult_x_4_n101), .S(mult_x_4_n103) );
  CMPE42D1 mult_x_4_U66 ( .A(mult_x_4_n190), .B(mult_x_4_n213), .C(
        mult_x_4_n142), .CIX(mult_x_4_n101), .D(mult_x_4_n167), .CO(
        mult_x_4_n99), .COX(mult_x_4_n98), .S(mult_x_4_n100) );
  CMPE42D1 mult_x_4_U65 ( .A(mult_x_4_n189), .B(mult_x_4_n212), .C(
        mult_x_4_n141), .CIX(mult_x_4_n98), .D(mult_x_4_n166), .CO(
        mult_x_4_n96), .COX(mult_x_4_n95), .S(mult_x_4_n97) );
  CMPE42D1 mult_x_4_U64 ( .A(mult_x_4_n188), .B(mult_x_4_n211), .C(
        mult_x_4_n140), .CIX(mult_x_4_n95), .D(mult_x_4_n165), .CO(
        mult_x_4_n93), .COX(mult_x_4_n92), .S(mult_x_4_n94) );
  CMPE42D1 mult_x_4_U63 ( .A(mult_x_4_n187), .B(mult_x_4_n210), .C(
        mult_x_4_n139), .CIX(mult_x_4_n92), .D(mult_x_4_n164), .CO(
        mult_x_4_n90), .COX(mult_x_4_n89), .S(mult_x_4_n91) );
  CMPE42D1 mult_x_4_U62 ( .A(mult_x_4_n186), .B(mult_x_4_n209), .C(
        mult_x_4_n138), .CIX(mult_x_4_n89), .D(mult_x_4_n163), .CO(
        mult_x_4_n87), .COX(mult_x_4_n86), .S(mult_x_4_n88) );
  CMPE42D1 mult_x_4_U61 ( .A(mult_x_4_n185), .B(mult_x_4_n208), .C(
        mult_x_4_n137), .CIX(mult_x_4_n86), .D(mult_x_4_n162), .CO(
        mult_x_4_n84), .COX(mult_x_4_n83), .S(mult_x_4_n85) );
  CMPE42D1 mult_x_4_U60 ( .A(mult_x_4_n184), .B(mult_x_4_n207), .C(
        mult_x_4_n136), .CIX(mult_x_4_n83), .D(mult_x_4_n161), .CO(
        mult_x_4_n81), .COX(mult_x_4_n80), .S(mult_x_4_n82) );
  CMPE42D1 mult_x_4_U59 ( .A(mult_x_4_n183), .B(mult_x_4_n206), .C(
        mult_x_4_n135), .CIX(mult_x_4_n80), .D(mult_x_4_n160), .CO(
        mult_x_4_n78), .COX(mult_x_4_n77), .S(mult_x_4_n79) );
  CMPE42D1 mult_x_4_U58 ( .A(mult_x_4_n182), .B(mult_x_4_n205), .C(
        mult_x_4_n134), .CIX(mult_x_4_n77), .D(mult_x_4_n159), .CO(
        mult_x_4_n75), .COX(mult_x_4_n74), .S(mult_x_4_n76) );
  CMPE42D1 mult_x_4_U57 ( .A(mult_x_4_n181), .B(mult_x_4_n204), .C(
        mult_x_4_n133), .CIX(mult_x_4_n74), .D(mult_x_4_n158), .CO(
        mult_x_4_n72), .COX(mult_x_4_n71), .S(mult_x_4_n73) );
  CMPE42D1 mult_x_4_U56 ( .A(mult_x_4_n180), .B(mult_x_4_n203), .C(
        mult_x_4_n132), .CIX(mult_x_4_n71), .D(mult_x_4_n157), .CO(
        mult_x_4_n69), .COX(mult_x_4_n68), .S(mult_x_4_n70) );
  CMPE42D1 mult_x_4_U55 ( .A(mult_x_4_n179), .B(mult_x_4_n202), .C(
        mult_x_4_n131), .CIX(mult_x_4_n68), .D(mult_x_4_n156), .CO(
        mult_x_4_n66), .COX(mult_x_4_n65), .S(mult_x_4_n67) );
  CMPE42D1 mult_x_4_U54 ( .A(mult_x_4_n178), .B(mult_x_4_n201), .C(
        mult_x_4_n130), .CIX(mult_x_4_n65), .D(mult_x_4_n155), .CO(
        mult_x_4_n63), .COX(mult_x_4_n62), .S(mult_x_4_n64) );
  CMPE42D1 mult_x_4_U53 ( .A(mult_x_4_n177), .B(mult_x_4_n200), .C(
        mult_x_4_n129), .CIX(mult_x_4_n62), .D(mult_x_4_n154), .CO(
        mult_x_4_n60), .COX(mult_x_4_n59), .S(mult_x_4_n61) );
  FA1D0 DP_OP_56J1_125_5844_U24 ( .A(DP_OP_56J1_125_5844_n23), .B(x[24]), .CI(
        DP_OP_56J1_125_5844_n17), .CO(DP_OP_56J1_125_5844_n16), .S(
        impl_exponent_input[1]) );
  FA1D0 DP_OP_56J1_125_5844_U23 ( .A(DP_OP_56J1_125_5844_n22), .B(x[25]), .CI(
        DP_OP_56J1_125_5844_n16), .CO(DP_OP_56J1_125_5844_n15), .S(
        impl_exponent_input[2]) );
  FA1D0 DP_OP_56J1_125_5844_U22 ( .A(DP_OP_56J1_125_5844_n21), .B(x[26]), .CI(
        DP_OP_56J1_125_5844_n15), .CO(DP_OP_56J1_125_5844_n14), .S(
        impl_exponent_input[3]) );
  FA1D0 DP_OP_56J1_125_5844_U21 ( .A(DP_OP_56J1_125_5844_n20), .B(x[27]), .CI(
        DP_OP_56J1_125_5844_n14), .CO(DP_OP_56J1_125_5844_n13), .S(
        impl_exponent_input[4]) );
  FA1D0 DP_OP_56J1_125_5844_U20 ( .A(DP_OP_56J1_125_5844_n19), .B(x[28]), .CI(
        DP_OP_56J1_125_5844_n13), .CO(DP_OP_56J1_125_5844_n12), .S(
        impl_exponent_input[5]) );
  FA1D0 DP_OP_56J1_125_5844_U19 ( .A(DP_OP_56J1_125_5844_n18), .B(x[29]), .CI(
        DP_OP_56J1_125_5844_n12), .CO(DP_OP_56J1_125_5844_n11), .S(
        impl_exponent_input[6]) );
  FA1D0 DP_OP_56J1_125_5844_U12 ( .A(DP_OP_56J1_125_5844_n7), .B(
        DP_OP_56J1_125_5844_n8), .CI(impl_exponent_input[1]), .CO(
        DP_OP_56J1_125_5844_n6), .S(C6_DATA2_1) );
  FA1D0 intadd_0_U25 ( .A(DP_OP_54J1_124_4725_n147), .B(intadd_0_B_0_), .CI(
        intadd_0_CI), .CO(intadd_0_n24), .S(intadd_0_SUM_0_) );
  FA1D0 intadd_0_U24 ( .A(DP_OP_54J1_124_4725_n140), .B(intadd_0_B_1_), .CI(
        intadd_0_n24), .CO(intadd_0_n23), .S(intadd_0_SUM_1_) );
  FA1D0 intadd_0_U23 ( .A(DP_OP_54J1_124_4725_n135), .B(intadd_0_B_2_), .CI(
        intadd_0_n23), .CO(intadd_0_n22), .S(intadd_0_SUM_2_) );
  FA1D0 intadd_0_U22 ( .A(DP_OP_54J1_124_4725_n130), .B(intadd_0_B_3_), .CI(
        intadd_0_n22), .CO(intadd_0_n21), .S(intadd_0_SUM_3_) );
  FA1D0 intadd_0_U21 ( .A(DP_OP_54J1_124_4725_n125), .B(intadd_0_B_4_), .CI(
        intadd_0_n21), .CO(intadd_0_n20), .S(intadd_0_SUM_4_) );
  FA1D0 intadd_0_U20 ( .A(DP_OP_54J1_124_4725_n120), .B(intadd_0_B_5_), .CI(
        intadd_0_n20), .CO(intadd_0_n19), .S(intadd_0_SUM_5_) );
  FA1D0 intadd_0_U19 ( .A(DP_OP_54J1_124_4725_n115), .B(intadd_0_B_6_), .CI(
        intadd_0_n19), .CO(intadd_0_n18), .S(intadd_0_SUM_6_) );
  FA1D0 intadd_0_U18 ( .A(DP_OP_54J1_124_4725_n110), .B(intadd_0_B_7_), .CI(
        intadd_0_n18), .CO(intadd_0_n17), .S(intadd_0_SUM_7_) );
  FA1D0 intadd_0_U17 ( .A(DP_OP_54J1_124_4725_n105), .B(intadd_0_B_8_), .CI(
        intadd_0_n17), .CO(intadd_0_n16), .S(intadd_0_SUM_8_) );
  FA1D0 intadd_0_U16 ( .A(DP_OP_54J1_124_4725_n100), .B(intadd_0_B_9_), .CI(
        intadd_0_n16), .CO(intadd_0_n15), .S(intadd_0_SUM_9_) );
  FA1D0 intadd_0_U15 ( .A(DP_OP_54J1_124_4725_n95), .B(intadd_0_B_10_), .CI(
        intadd_0_n15), .CO(intadd_0_n14), .S(intadd_0_SUM_10_) );
  FA1D0 intadd_0_U14 ( .A(DP_OP_54J1_124_4725_n90), .B(intadd_0_B_11_), .CI(
        intadd_0_n14), .CO(intadd_0_n13), .S(intadd_0_SUM_11_) );
  FA1D0 intadd_0_U13 ( .A(DP_OP_54J1_124_4725_n85), .B(intadd_0_B_12_), .CI(
        intadd_0_n13), .CO(intadd_0_n12), .S(intadd_0_SUM_12_) );
  FA1D0 intadd_0_U12 ( .A(DP_OP_54J1_124_4725_n80), .B(intadd_0_B_13_), .CI(
        intadd_0_n12), .CO(intadd_0_n11), .S(intadd_0_SUM_13_) );
  FA1D0 intadd_0_U11 ( .A(DP_OP_54J1_124_4725_n75), .B(intadd_0_B_14_), .CI(
        intadd_0_n11), .CO(intadd_0_n10), .S(intadd_0_SUM_14_) );
  FA1D0 intadd_0_U10 ( .A(DP_OP_54J1_124_4725_n70), .B(intadd_0_B_15_), .CI(
        intadd_0_n10), .CO(intadd_0_n9), .S(intadd_0_SUM_15_) );
  FA1D0 intadd_0_U7 ( .A(DP_OP_54J1_124_4725_n55), .B(intadd_0_B_18_), .CI(
        intadd_0_n7), .CO(intadd_0_n6), .S(intadd_0_SUM_18_) );
  FA1D0 intadd_0_U6 ( .A(DP_OP_54J1_124_4725_n50), .B(intadd_0_B_19_), .CI(
        intadd_0_n6), .CO(intadd_0_n5), .S(intadd_0_SUM_19_) );
  FA1D0 intadd_0_U5 ( .A(DP_OP_54J1_124_4725_n45), .B(intadd_0_B_20_), .CI(
        intadd_0_n5), .CO(intadd_0_n4), .S(intadd_0_SUM_20_) );
  FA1D0 intadd_0_U4 ( .A(DP_OP_54J1_124_4725_n42), .B(DP_OP_54J1_124_4725_n542), .CI(intadd_0_n4), .CO(intadd_0_n3), .S(intadd_0_SUM_21_) );
  FA1D0 intadd_0_U3 ( .A(n35), .B(DP_OP_54J1_124_4725_n39), .CI(intadd_0_n3), 
        .CO(intadd_0_n2), .S(intadd_0_SUM_22_) );
  FA1D0 intadd_1_U23 ( .A(mult_x_4_n114), .B(mult_x_4_n112), .CI(intadd_1_CI), 
        .CO(intadd_1_n22), .S(intadd_1_SUM_0_) );
  FA1D0 intadd_1_U22 ( .A(mult_x_4_n109), .B(mult_x_4_n111), .CI(intadd_1_n22), 
        .CO(intadd_1_n21), .S(intadd_1_SUM_1_) );
  FA1D0 intadd_1_U21 ( .A(mult_x_4_n106), .B(mult_x_4_n108), .CI(intadd_1_n21), 
        .CO(intadd_1_n20), .S(intadd_1_SUM_2_) );
  FA1D0 intadd_1_U20 ( .A(mult_x_4_n103), .B(mult_x_4_n105), .CI(intadd_1_n20), 
        .CO(intadd_1_n19), .S(intadd_1_SUM_3_) );
  FA1D0 intadd_1_U19 ( .A(mult_x_4_n100), .B(mult_x_4_n102), .CI(intadd_1_n19), 
        .CO(intadd_1_n18), .S(intadd_1_SUM_4_) );
  FA1D0 intadd_1_U18 ( .A(mult_x_4_n97), .B(mult_x_4_n99), .CI(intadd_1_n18), 
        .CO(intadd_1_n17), .S(intadd_1_SUM_5_) );
  FA1D0 intadd_1_U17 ( .A(mult_x_4_n94), .B(mult_x_4_n96), .CI(intadd_1_n17), 
        .CO(intadd_1_n16), .S(intadd_1_SUM_6_) );
  FA1D0 intadd_1_U16 ( .A(mult_x_4_n91), .B(mult_x_4_n93), .CI(intadd_1_n16), 
        .CO(intadd_1_n15), .S(intadd_1_SUM_7_) );
  FA1D0 intadd_1_U15 ( .A(mult_x_4_n88), .B(mult_x_4_n90), .CI(intadd_1_n15), 
        .CO(intadd_1_n14), .S(intadd_1_SUM_8_) );
  FA1D0 intadd_1_U14 ( .A(mult_x_4_n85), .B(mult_x_4_n87), .CI(intadd_1_n14), 
        .CO(intadd_1_n13), .S(intadd_1_SUM_9_) );
  FA1D0 intadd_1_U13 ( .A(mult_x_4_n82), .B(mult_x_4_n84), .CI(intadd_1_n13), 
        .CO(intadd_1_n12), .S(intadd_1_SUM_10_) );
  FA1D0 intadd_1_U12 ( .A(mult_x_4_n79), .B(mult_x_4_n81), .CI(intadd_1_n12), 
        .CO(intadd_1_n11), .S(intadd_1_SUM_11_) );
  FA1D0 intadd_1_U11 ( .A(mult_x_4_n76), .B(mult_x_4_n78), .CI(intadd_1_n11), 
        .CO(intadd_1_n10), .S(intadd_1_SUM_12_) );
  FA1D0 intadd_1_U10 ( .A(mult_x_4_n73), .B(mult_x_4_n75), .CI(intadd_1_n10), 
        .CO(intadd_1_n9), .S(intadd_1_SUM_13_) );
  FA1D0 intadd_1_U9 ( .A(mult_x_4_n70), .B(mult_x_4_n72), .CI(intadd_1_n9), 
        .CO(intadd_1_n8), .S(intadd_1_SUM_14_) );
  FA1D0 intadd_1_U8 ( .A(mult_x_4_n67), .B(mult_x_4_n69), .CI(intadd_1_n8), 
        .CO(intadd_1_n7), .S(intadd_1_SUM_15_) );
  FA1D0 intadd_1_U7 ( .A(mult_x_4_n64), .B(mult_x_4_n66), .CI(intadd_1_n7), 
        .CO(intadd_1_n6), .S(intadd_1_SUM_16_) );
  FA1D0 intadd_1_U6 ( .A(mult_x_4_n61), .B(mult_x_4_n63), .CI(intadd_1_n6), 
        .CO(intadd_1_n5), .S(intadd_1_SUM_17_) );
  FA1D0 intadd_1_U5 ( .A(mult_x_4_n60), .B(intadd_1_B_18_), .CI(intadd_1_n5), 
        .CO(intadd_1_n4), .S(intadd_1_SUM_18_) );
  FA1D0 intadd_1_U4 ( .A(intadd_1_A_19_), .B(intadd_1_B_19_), .CI(intadd_1_n4), 
        .CO(intadd_1_n3), .S(intadd_1_SUM_19_) );
  FA1D0 intadd_1_U3 ( .A(intadd_1_A_20_), .B(intadd_1_B_20_), .CI(intadd_1_n3), 
        .CO(intadd_1_n2), .S(intadd_1_SUM_20_) );
  FA1D0 intadd_2_U19 ( .A(intadd_2_A_0_), .B(intadd_2_B_0_), .CI(intadd_2_CI), 
        .CO(intadd_2_n18), .S(intadd_0_B_0_) );
  FA1D0 intadd_2_U18 ( .A(intadd_2_A_1_), .B(intadd_2_B_1_), .CI(intadd_2_n18), 
        .CO(intadd_2_n17), .S(intadd_0_B_1_) );
  FA1D0 intadd_2_U17 ( .A(intadd_2_A_2_), .B(intadd_2_B_2_), .CI(intadd_2_n17), 
        .CO(intadd_2_n16), .S(intadd_0_B_2_) );
  FA1D0 intadd_2_U16 ( .A(intadd_2_A_3_), .B(intadd_2_B_3_), .CI(intadd_2_n16), 
        .CO(intadd_2_n15), .S(intadd_0_B_3_) );
  FA1D0 intadd_2_U15 ( .A(intadd_2_A_4_), .B(intadd_2_B_4_), .CI(intadd_2_n15), 
        .CO(intadd_2_n14), .S(intadd_0_B_4_) );
  FA1D0 intadd_2_U14 ( .A(intadd_2_A_5_), .B(intadd_2_B_5_), .CI(intadd_2_n14), 
        .CO(intadd_2_n13), .S(intadd_0_B_5_) );
  FA1D0 intadd_2_U13 ( .A(intadd_2_A_6_), .B(intadd_2_B_6_), .CI(intadd_2_n13), 
        .CO(intadd_2_n12), .S(intadd_0_B_6_) );
  FA1D0 intadd_2_U12 ( .A(intadd_2_A_7_), .B(intadd_2_B_7_), .CI(intadd_2_n12), 
        .CO(intadd_2_n11), .S(intadd_0_B_7_) );
  FA1D0 intadd_2_U11 ( .A(intadd_2_A_8_), .B(intadd_2_B_8_), .CI(intadd_2_n11), 
        .CO(intadd_2_n10), .S(intadd_0_B_8_) );
  FA1D0 intadd_2_U10 ( .A(intadd_2_A_9_), .B(intadd_2_B_9_), .CI(intadd_2_n10), 
        .CO(intadd_2_n9), .S(intadd_0_B_9_) );
  FA1D0 intadd_2_U9 ( .A(intadd_2_A_10_), .B(intadd_2_B_10_), .CI(intadd_2_n9), 
        .CO(intadd_2_n8), .S(intadd_0_B_10_) );
  FA1D0 intadd_2_U8 ( .A(intadd_2_A_11_), .B(intadd_2_B_11_), .CI(intadd_2_n8), 
        .CO(intadd_2_n7), .S(intadd_0_B_11_) );
  FA1D0 intadd_2_U7 ( .A(intadd_2_A_12_), .B(intadd_2_B_12_), .CI(intadd_2_n7), 
        .CO(intadd_2_n6), .S(intadd_0_B_12_) );
  FA1D0 intadd_2_U6 ( .A(intadd_2_A_13_), .B(intadd_2_B_13_), .CI(intadd_2_n6), 
        .CO(intadd_2_n5), .S(intadd_0_B_13_) );
  FA1D0 intadd_2_U5 ( .A(intadd_2_A_14_), .B(intadd_2_B_14_), .CI(intadd_2_n5), 
        .CO(intadd_2_n4), .S(intadd_0_B_14_) );
  FA1D0 intadd_2_U4 ( .A(intadd_2_A_15_), .B(intadd_2_B_15_), .CI(intadd_2_n4), 
        .CO(intadd_2_n3), .S(intadd_0_B_15_) );
  FA1D0 intadd_3_U5 ( .A(y[16]), .B(intadd_3_B_0_), .CI(intadd_3_CI), .CO(
        intadd_3_n4), .S(intadd_3_SUM_0_) );
  FA1D0 intadd_3_U4 ( .A(intadd_3_A_1_), .B(intadd_3_B_1_), .CI(intadd_3_n4), 
        .CO(intadd_3_n3), .S(intadd_0_B_18_) );
  FA1D0 intadd_3_U3 ( .A(intadd_3_A_2_), .B(intadd_3_B_2_), .CI(intadd_3_n3), 
        .CO(intadd_3_n2), .S(intadd_0_B_19_) );
  FA1D0 intadd_3_U2 ( .A(intadd_3_A_3_), .B(intadd_3_B_3_), .CI(intadd_3_n2), 
        .CO(intadd_3_n1), .S(intadd_3_SUM_3_) );
  FA1D0 intadd_1_U2 ( .A(intadd_1_A_21_), .B(intadd_1_B_21_), .CI(intadd_1_n2), 
        .CO(intadd_1_n1), .S(intadd_1_SUM_21_) );
  INVD0 U68 ( .I(y[2]), .ZN(n27) );
  INVD0 U69 ( .I(n27), .ZN(n28) );
  INVD0 U70 ( .I(x[19]), .ZN(n29) );
  INVD0 U71 ( .I(n29), .ZN(n30) );
  INVD0 U72 ( .I(x[18]), .ZN(n31) );
  INVD0 U73 ( .I(n31), .ZN(n32) );
  INVD0 U74 ( .I(x[20]), .ZN(n33) );
  INVD0 U75 ( .I(n33), .ZN(n34) );
  OAI22D0 U78 ( .A1(n193), .A2(n33), .B1(n30), .B2(n288), .ZN(n289) );
  OAI22D0 U79 ( .A1(n193), .A2(n30), .B1(n32), .B2(n288), .ZN(
        DP_OP_54J1_124_4725_n202) );
  INVD0 U81 ( .I(x[0]), .ZN(n37) );
  INVD0 U82 ( .I(n37), .ZN(n38) );
  INVD0 U83 ( .I(x[2]), .ZN(n39) );
  INVD0 U84 ( .I(n39), .ZN(n40) );
  INVD0 U85 ( .I(y[17]), .ZN(n41) );
  INVD0 U86 ( .I(n41), .ZN(n42) );
  INVD0 U87 ( .I(n142), .ZN(n43) );
  OA31D0 U88 ( .A1(n43), .A2(n38), .A3(n218), .B(n216), .Z(n217) );
  OAI22D0 U89 ( .A1(n193), .A2(n43), .B1(n38), .B2(n288), .ZN(
        DP_OP_54J1_124_4725_n220) );
  OAI22D0 U90 ( .A1(n193), .A2(n40), .B1(n43), .B2(n288), .ZN(
        DP_OP_54J1_124_4725_n219) );
  INVD0 U91 ( .I(x[1]), .ZN(n142) );
  OA33D0 U92 ( .A1(n39), .A2(n282), .A3(n142), .B1(x[1]), .B2(n288), .B3(n40), 
        .Z(n143) );
  NR2D0 U93 ( .A1(x[1]), .A2(n38), .ZN(n75) );
  OAI21D0 U94 ( .A1(n38), .A2(n218), .B(x[1]), .ZN(n74) );
  BUFFD0 U95 ( .I(x[21]), .Z(n268) );
  INVD0 U96 ( .I(n268), .ZN(n279) );
  INVD0 U97 ( .I(x[22]), .ZN(n132) );
  OAI21D0 U98 ( .A1(n279), .A2(n132), .B(y[20]), .ZN(n272) );
  INVD0 U100 ( .I(intadd_0_SUM_22_), .ZN(n164) );
  INVD0 U101 ( .I(y[22]), .ZN(n277) );
  BUFFD0 U102 ( .I(y[21]), .Z(n275) );
  INVD0 U103 ( .I(n275), .ZN(n218) );
  INVD0 U105 ( .I(n196), .ZN(n165) );
  NR2D0 U106 ( .A1(n164), .A2(n165), .ZN(mult_x_4_n202) );
  INVD0 U107 ( .I(intadd_0_SUM_21_), .ZN(n160) );
  NR2D0 U108 ( .A1(n160), .A2(n165), .ZN(mult_x_4_n203) );
  INVD0 U109 ( .I(intadd_0_SUM_23_), .ZN(n163) );
  NR2D0 U110 ( .A1(n165), .A2(n163), .ZN(mult_x_4_n201) );
  NR2D0 U111 ( .A1(n218), .A2(n279), .ZN(n287) );
  INVD0 U112 ( .I(n286), .ZN(n46) );
  AOI21D0 U113 ( .A1(n279), .A2(n218), .B(n287), .ZN(n77) );
  INVD0 U114 ( .I(n77), .ZN(n84) );
  NR2D0 U115 ( .A1(n46), .A2(n84), .ZN(n45) );
  FA1D0 U116 ( .A(x[22]), .B(y[22]), .CI(n287), .CO(n281), .S(n286) );
  NR2D0 U117 ( .A1(n45), .A2(n281), .ZN(n48) );
  INVD0 U118 ( .I(DP_OP_54J1_124_4725_n542), .ZN(n274) );
  AOI21D0 U119 ( .A1(n84), .A2(n46), .B(n45), .ZN(n80) );
  OR2D0 U120 ( .A1(n48), .A2(n80), .Z(n273) );
  XNR3D0 U121 ( .A1(n48), .A2(n47), .A3(intadd_0_n1), .ZN(n157) );
  NR2D0 U122 ( .A1(n218), .A2(y[22]), .ZN(n50) );
  INVD0 U123 ( .I(n50), .ZN(n207) );
  OR2D0 U125 ( .A1(n277), .A2(n275), .Z(n147) );
  AOI21D0 U128 ( .A1(intadd_0_SUM_23_), .A2(n165), .B(mult_x_4_n202), .ZN(n110) );
  OR2D0 U129 ( .A1(n50), .A2(n206), .Z(n118) );
  INVD0 U130 ( .I(n118), .ZN(n193) );
  AOI22D0 U131 ( .A1(n193), .A2(n163), .B1(n206), .B2(n157), .ZN(n213) );
  AOI21D0 U132 ( .A1(intadd_0_SUM_22_), .A2(n165), .B(mult_x_4_n203), .ZN(n214) );
  NR2D0 U134 ( .A1(n212), .A2(intadd_1_n1), .ZN(n51) );
  AOI31D0 U136 ( .A1(n277), .A2(n275), .A3(n157), .B(mult_x_4_n201), .ZN(n52)
         );
  OAI21D0 U137 ( .A1(n277), .A2(n157), .B(n52), .ZN(n54) );
  CKAN2D0 U138 ( .A1(intadd_1_n1), .A2(n212), .Z(n55) );
  OAI21D0 U141 ( .A1(n56), .A2(n55), .B(n54), .ZN(n57) );
  CKND2D1 U142 ( .A1(n58), .A2(n57), .ZN(n291) );
  MUX2D0 U143 ( .I0(C6_DATA2_1), .I1(impl_exponent_input[1]), .S(n291), .Z(
        result[24]) );
  XNR2D0 U144 ( .A1(impl_exponent_input[2]), .A2(DP_OP_56J1_125_5844_n6), .ZN(
        n59) );
  MUX2D0 U145 ( .I0(n59), .I1(impl_exponent_input[2]), .S(n291), .Z(result[25]) );
  OR2D0 U146 ( .A1(DP_OP_56J1_125_5844_n6), .A2(impl_exponent_input[2]), .Z(
        n61) );
  XNR2D0 U147 ( .A1(impl_exponent_input[3]), .A2(n61), .ZN(n60) );
  MUX2D0 U148 ( .I0(n60), .I1(impl_exponent_input[3]), .S(n291), .Z(result[26]) );
  OR2D0 U149 ( .A1(n61), .A2(impl_exponent_input[3]), .Z(n63) );
  XNR2D0 U150 ( .A1(n63), .A2(impl_exponent_input[4]), .ZN(n62) );
  MUX2D0 U151 ( .I0(n62), .I1(impl_exponent_input[4]), .S(n291), .Z(result[27]) );
  OR2D0 U152 ( .A1(impl_exponent_input[4]), .A2(n63), .Z(n65) );
  XNR2D0 U153 ( .A1(n65), .A2(impl_exponent_input[5]), .ZN(n64) );
  MUX2D0 U154 ( .I0(n64), .I1(impl_exponent_input[5]), .S(n291), .Z(result[28]) );
  OR2D0 U155 ( .A1(impl_exponent_input[5]), .A2(n65), .Z(n67) );
  XNR2D0 U156 ( .A1(n67), .A2(impl_exponent_input[6]), .ZN(n66) );
  MUX2D0 U157 ( .I0(n66), .I1(impl_exponent_input[6]), .S(n291), .Z(result[29]) );
  MUX2D0 U162 ( .I0(n71), .I1(n70), .S(n291), .Z(result[30]) );
  NR2D0 U163 ( .A1(n279), .A2(y[0]), .ZN(n177) );
  INVD0 U164 ( .I(y[1]), .ZN(n224) );
  CKND2D0 U165 ( .A1(y[1]), .A2(n27), .ZN(n72) );
  INVD0 U166 ( .I(y[0]), .ZN(n221) );
  CKND2D0 U167 ( .A1(n279), .A2(n132), .ZN(n181) );
  OAI21D0 U168 ( .A1(n132), .A2(n279), .B(n181), .ZN(n180) );
  OAI222D0 U169 ( .A1(n72), .A2(n268), .B1(n72), .B2(n221), .C1(n221), .C2(
        n180), .ZN(n73) );
  AOI221D0 U170 ( .A1(n177), .A2(n28), .B1(n224), .B2(n28), .C(n73), .ZN(
        DP_OP_54J1_124_4725_n149) );
  CKND2D0 U171 ( .A1(n40), .A2(n74), .ZN(n76) );
  CKND2D0 U172 ( .A1(n38), .A2(n118), .ZN(n216) );
  OAI221D0 U173 ( .A1(n76), .A2(n75), .B1(n40), .B2(n74), .C(n216), .ZN(
        impl_x_rounding_lut_N251) );
  NR2D0 U174 ( .A1(n77), .A2(n281), .ZN(impl_midpoint_product[4]) );
  INVD0 U175 ( .I(n281), .ZN(n79) );
  NR4D0 U176 ( .A1(n277), .A2(n279), .A3(n218), .A4(n132), .ZN(n276) );
  OAI21D0 U177 ( .A1(n276), .A2(n79), .B(n80), .ZN(n78) );
  OAI21D0 U178 ( .A1(n80), .A2(n79), .B(n78), .ZN(impl_midpoint_product[5]) );
  INVD0 U179 ( .I(x[17]), .ZN(n87) );
  AOI22D0 U180 ( .A1(n275), .A2(n33), .B1(n34), .B2(n218), .ZN(n83) );
  INVD0 U181 ( .I(n81), .ZN(DP_OP_54J1_124_4725_n56) );
  INVD0 U182 ( .I(x[16]), .ZN(n188) );
  INVD0 U183 ( .I(n83), .ZN(n189) );
  NR2D0 U184 ( .A1(n188), .A2(n189), .ZN(DP_OP_54J1_124_4725_n61) );
  INVD0 U185 ( .I(x[15]), .ZN(n90) );
  CKND2D0 U186 ( .A1(n90), .A2(n82), .ZN(DP_OP_54J1_124_4725_n66) );
  OAI21D0 U187 ( .A1(n82), .A2(n90), .B(DP_OP_54J1_124_4725_n66), .ZN(
        DP_OP_54J1_124_4725_n67) );
  FA1D0 U188 ( .A(n87), .B(n84), .CI(n83), .CO(n81), .S(n85) );
  INVD0 U189 ( .I(n85), .ZN(DP_OP_54J1_124_4725_n57) );
  INVD0 U190 ( .I(x[14]), .ZN(n92) );
  CKND2D0 U192 ( .A1(n92), .A2(n86), .ZN(DP_OP_54J1_124_4725_n71) );
  OAI21D0 U193 ( .A1(n86), .A2(n92), .B(DP_OP_54J1_124_4725_n71), .ZN(
        DP_OP_54J1_124_4725_n72) );
  INVD0 U195 ( .I(x[13]), .ZN(n94) );
  AOI22D0 U196 ( .A1(n275), .A2(n87), .B1(x[17]), .B2(n218), .ZN(n88) );
  CKND2D0 U197 ( .A1(n94), .A2(n88), .ZN(DP_OP_54J1_124_4725_n76) );
  OAI21D0 U198 ( .A1(n88), .A2(n94), .B(DP_OP_54J1_124_4725_n76), .ZN(
        DP_OP_54J1_124_4725_n77) );
  OAI22D0 U199 ( .A1(n193), .A2(n32), .B1(x[17]), .B2(n288), .ZN(
        DP_OP_54J1_124_4725_n203) );
  INVD0 U200 ( .I(x[12]), .ZN(n96) );
  AOI22D0 U201 ( .A1(n275), .A2(n188), .B1(x[16]), .B2(n218), .ZN(n89) );
  CKND2D0 U202 ( .A1(n96), .A2(n89), .ZN(DP_OP_54J1_124_4725_n81) );
  OAI21D0 U203 ( .A1(n89), .A2(n96), .B(DP_OP_54J1_124_4725_n81), .ZN(
        DP_OP_54J1_124_4725_n82) );
  OAI22D0 U204 ( .A1(n193), .A2(x[17]), .B1(x[16]), .B2(n288), .ZN(
        DP_OP_54J1_124_4725_n204) );
  INVD0 U205 ( .I(x[11]), .ZN(n98) );
  AOI22D0 U206 ( .A1(n275), .A2(n90), .B1(x[15]), .B2(n218), .ZN(n91) );
  CKND2D0 U207 ( .A1(n98), .A2(n91), .ZN(DP_OP_54J1_124_4725_n86) );
  OAI21D0 U208 ( .A1(n91), .A2(n98), .B(DP_OP_54J1_124_4725_n86), .ZN(
        DP_OP_54J1_124_4725_n87) );
  OAI22D0 U209 ( .A1(n193), .A2(x[16]), .B1(x[15]), .B2(n288), .ZN(
        DP_OP_54J1_124_4725_n205) );
  INVD0 U210 ( .I(x[10]), .ZN(n100) );
  AOI22D0 U211 ( .A1(n275), .A2(n92), .B1(x[14]), .B2(n218), .ZN(n93) );
  CKND2D0 U212 ( .A1(n100), .A2(n93), .ZN(DP_OP_54J1_124_4725_n91) );
  OAI21D0 U213 ( .A1(n93), .A2(n100), .B(DP_OP_54J1_124_4725_n91), .ZN(
        DP_OP_54J1_124_4725_n92) );
  OAI22D0 U214 ( .A1(n193), .A2(x[15]), .B1(x[14]), .B2(n288), .ZN(
        DP_OP_54J1_124_4725_n206) );
  INVD0 U215 ( .I(x[9]), .ZN(n102) );
  AOI22D0 U216 ( .A1(n275), .A2(n94), .B1(x[13]), .B2(n218), .ZN(n95) );
  CKND2D0 U217 ( .A1(n102), .A2(n95), .ZN(DP_OP_54J1_124_4725_n96) );
  OAI21D0 U218 ( .A1(n95), .A2(n102), .B(DP_OP_54J1_124_4725_n96), .ZN(
        DP_OP_54J1_124_4725_n97) );
  OAI22D0 U219 ( .A1(n193), .A2(x[14]), .B1(x[13]), .B2(n288), .ZN(
        DP_OP_54J1_124_4725_n207) );
  INVD0 U220 ( .I(x[8]), .ZN(n104) );
  AOI22D0 U221 ( .A1(n275), .A2(n96), .B1(x[12]), .B2(n218), .ZN(n97) );
  CKND2D0 U222 ( .A1(n104), .A2(n97), .ZN(DP_OP_54J1_124_4725_n101) );
  OAI21D0 U223 ( .A1(n97), .A2(n104), .B(DP_OP_54J1_124_4725_n101), .ZN(
        DP_OP_54J1_124_4725_n102) );
  OAI22D0 U224 ( .A1(n193), .A2(x[13]), .B1(x[12]), .B2(n288), .ZN(
        DP_OP_54J1_124_4725_n208) );
  INVD0 U225 ( .I(x[7]), .ZN(n106) );
  AOI22D0 U226 ( .A1(n275), .A2(n98), .B1(x[11]), .B2(n218), .ZN(n99) );
  CKND2D0 U227 ( .A1(n106), .A2(n99), .ZN(DP_OP_54J1_124_4725_n106) );
  OAI21D0 U228 ( .A1(n99), .A2(n106), .B(DP_OP_54J1_124_4725_n106), .ZN(
        DP_OP_54J1_124_4725_n107) );
  OAI22D0 U229 ( .A1(n193), .A2(x[12]), .B1(x[11]), .B2(n288), .ZN(
        DP_OP_54J1_124_4725_n209) );
  INVD0 U230 ( .I(x[6]), .ZN(n108) );
  AOI22D0 U231 ( .A1(n275), .A2(n100), .B1(x[10]), .B2(n218), .ZN(n101) );
  CKND2D0 U232 ( .A1(n108), .A2(n101), .ZN(DP_OP_54J1_124_4725_n111) );
  OAI21D0 U233 ( .A1(n101), .A2(n108), .B(DP_OP_54J1_124_4725_n111), .ZN(
        DP_OP_54J1_124_4725_n112) );
  OAI22D0 U234 ( .A1(n193), .A2(x[11]), .B1(x[10]), .B2(n288), .ZN(
        DP_OP_54J1_124_4725_n210) );
  INVD0 U235 ( .I(x[5]), .ZN(n135) );
  AOI22D0 U236 ( .A1(n275), .A2(n102), .B1(x[9]), .B2(n218), .ZN(n103) );
  CKND2D0 U237 ( .A1(n135), .A2(n103), .ZN(DP_OP_54J1_124_4725_n116) );
  OAI21D0 U238 ( .A1(n103), .A2(n135), .B(DP_OP_54J1_124_4725_n116), .ZN(
        DP_OP_54J1_124_4725_n117) );
  OAI22D0 U239 ( .A1(n193), .A2(x[10]), .B1(x[9]), .B2(n288), .ZN(
        DP_OP_54J1_124_4725_n211) );
  INVD0 U240 ( .I(intadd_0_SUM_0_), .ZN(n192) );
  NR2D0 U241 ( .A1(n192), .A2(n196), .ZN(mult_x_4_n147) );
  INVD0 U242 ( .I(x[4]), .ZN(n116) );
  AOI22D0 U243 ( .A1(n275), .A2(n104), .B1(x[8]), .B2(n218), .ZN(n105) );
  CKND2D0 U244 ( .A1(n116), .A2(n105), .ZN(DP_OP_54J1_124_4725_n121) );
  OAI21D0 U245 ( .A1(n105), .A2(n116), .B(DP_OP_54J1_124_4725_n121), .ZN(
        DP_OP_54J1_124_4725_n122) );
  OAI22D0 U246 ( .A1(n193), .A2(x[9]), .B1(x[8]), .B2(n288), .ZN(
        DP_OP_54J1_124_4725_n212) );
  INVD0 U247 ( .I(x[3]), .ZN(n117) );
  AOI22D0 U248 ( .A1(n275), .A2(n106), .B1(x[7]), .B2(n218), .ZN(n107) );
  CKND2D0 U249 ( .A1(n117), .A2(n107), .ZN(DP_OP_54J1_124_4725_n126) );
  OAI21D0 U250 ( .A1(n107), .A2(n117), .B(DP_OP_54J1_124_4725_n126), .ZN(
        DP_OP_54J1_124_4725_n127) );
  OAI22D0 U251 ( .A1(n193), .A2(x[8]), .B1(x[7]), .B2(n288), .ZN(
        DP_OP_54J1_124_4725_n213) );
  CKAN2D0 U252 ( .A1(intadd_1_SUM_0_), .A2(n291), .Z(result[0]) );
  OAI22D0 U253 ( .A1(intadd_0_SUM_2_), .A2(n147), .B1(intadd_0_SUM_1_), .B2(
        n118), .ZN(mult_x_4_n172) );
  AOI22D0 U254 ( .A1(n275), .A2(n108), .B1(x[6]), .B2(n218), .ZN(n109) );
  CKND2D0 U255 ( .A1(n39), .A2(n109), .ZN(DP_OP_54J1_124_4725_n131) );
  OAI21D0 U256 ( .A1(n109), .A2(n39), .B(DP_OP_54J1_124_4725_n131), .ZN(
        DP_OP_54J1_124_4725_n132) );
  INVD0 U257 ( .I(intadd_0_SUM_1_), .ZN(n198) );
  AOI22D0 U258 ( .A1(n196), .A2(n192), .B1(n198), .B2(n288), .ZN(mult_x_4_n146) );
  NR2D0 U259 ( .A1(n291), .A2(intadd_1_SUM_21_), .ZN(n114) );
  MOAI22D0 U264 ( .A1(n114), .A2(n115), .B1(n146), .B2(intadd_1_SUM_20_), .ZN(
        result[22]) );
  INVD0 U265 ( .I(intadd_0_SUM_4_), .ZN(n119) );
  NR2D0 U266 ( .A1(n119), .A2(n165), .ZN(n203) );
  AO21D0 U267 ( .A1(intadd_0_SUM_5_), .A2(n165), .B(n203), .Z(mult_x_4_n142)
         );
  OAI22D0 U268 ( .A1(n193), .A2(x[7]), .B1(x[6]), .B2(n288), .ZN(
        DP_OP_54J1_124_4725_n214) );
  INVD0 U269 ( .I(intadd_0_SUM_6_), .ZN(n120) );
  NR2D0 U270 ( .A1(n120), .A2(n165), .ZN(mult_x_4_n218) );
  AO21D0 U271 ( .A1(intadd_0_SUM_7_), .A2(n288), .B(mult_x_4_n218), .Z(
        mult_x_4_n140) );
  CKND2D0 U272 ( .A1(n196), .A2(intadd_0_SUM_5_), .ZN(n191) );
  OAI21D0 U273 ( .A1(n196), .A2(n120), .B(n191), .ZN(mult_x_4_n141) );
  CKND2D0 U274 ( .A1(n196), .A2(intadd_0_SUM_3_), .ZN(n197) );
  OAI21D0 U275 ( .A1(n196), .A2(n119), .B(n197), .ZN(mult_x_4_n143) );
  INVD0 U276 ( .I(intadd_0_SUM_8_), .ZN(n123) );
  NR2D0 U277 ( .A1(n123), .A2(n165), .ZN(mult_x_4_n216) );
  AO21D0 U278 ( .A1(intadd_0_SUM_9_), .A2(n165), .B(mult_x_4_n216), .Z(
        mult_x_4_n138) );
  INVD0 U279 ( .I(intadd_0_SUM_9_), .ZN(n127) );
  NR2D0 U280 ( .A1(n127), .A2(n165), .ZN(mult_x_4_n215) );
  AO21D0 U281 ( .A1(intadd_0_SUM_10_), .A2(n165), .B(mult_x_4_n215), .Z(
        mult_x_4_n137) );
  INVD0 U282 ( .I(intadd_0_SUM_17_), .ZN(n130) );
  NR2D0 U283 ( .A1(n130), .A2(n165), .ZN(mult_x_4_n207) );
  AO21D0 U284 ( .A1(intadd_0_SUM_18_), .A2(n165), .B(mult_x_4_n207), .Z(
        mult_x_4_n129) );
  INVD0 U285 ( .I(intadd_0_SUM_7_), .ZN(n128) );
  NR2D0 U286 ( .A1(n128), .A2(n165), .ZN(mult_x_4_n217) );
  AO21D0 U287 ( .A1(intadd_0_SUM_8_), .A2(n165), .B(mult_x_4_n217), .Z(
        mult_x_4_n139) );
  INVD0 U288 ( .I(intadd_0_SUM_10_), .ZN(n122) );
  NR2D0 U289 ( .A1(n122), .A2(n165), .ZN(mult_x_4_n214) );
  AO21D0 U290 ( .A1(intadd_0_SUM_11_), .A2(n165), .B(mult_x_4_n214), .Z(
        mult_x_4_n136) );
  INVD0 U291 ( .I(intadd_0_SUM_15_), .ZN(n131) );
  NR2D0 U292 ( .A1(n131), .A2(n165), .ZN(mult_x_4_n209) );
  AO21D0 U293 ( .A1(intadd_0_SUM_16_), .A2(n165), .B(mult_x_4_n209), .Z(
        mult_x_4_n131) );
  INVD0 U294 ( .I(intadd_0_SUM_16_), .ZN(n129) );
  NR2D0 U295 ( .A1(n129), .A2(n165), .ZN(mult_x_4_n208) );
  AO21D0 U296 ( .A1(intadd_0_SUM_17_), .A2(n165), .B(mult_x_4_n208), .Z(
        mult_x_4_n130) );
  INVD0 U297 ( .I(intadd_0_SUM_14_), .ZN(n125) );
  NR2D0 U298 ( .A1(n125), .A2(n165), .ZN(mult_x_4_n210) );
  AO21D0 U299 ( .A1(intadd_0_SUM_15_), .A2(n165), .B(mult_x_4_n210), .Z(
        mult_x_4_n132) );
  INVD0 U300 ( .I(intadd_0_SUM_13_), .ZN(n124) );
  NR2D0 U301 ( .A1(n124), .A2(n165), .ZN(mult_x_4_n211) );
  AO21D0 U302 ( .A1(intadd_0_SUM_14_), .A2(n165), .B(mult_x_4_n211), .Z(
        mult_x_4_n133) );
  INVD0 U303 ( .I(intadd_0_SUM_12_), .ZN(n126) );
  NR2D0 U304 ( .A1(n126), .A2(n165), .ZN(mult_x_4_n212) );
  AO21D0 U305 ( .A1(intadd_0_SUM_13_), .A2(n165), .B(mult_x_4_n212), .Z(
        mult_x_4_n134) );
  INVD0 U306 ( .I(intadd_0_SUM_11_), .ZN(n121) );
  NR2D0 U307 ( .A1(n121), .A2(n165), .ZN(mult_x_4_n213) );
  AO21D0 U308 ( .A1(intadd_0_SUM_12_), .A2(n165), .B(mult_x_4_n213), .Z(
        mult_x_4_n135) );
  INVD0 U309 ( .I(intadd_0_SUM_2_), .ZN(n200) );
  MAOI22D0 U310 ( .A1(n196), .A2(n200), .B1(intadd_0_SUM_3_), .B2(n196), .ZN(
        mult_x_4_n144) );
  NR2XD0 U311 ( .A1(n291), .A2(n115), .ZN(n292) );
  AO222D0 U312 ( .A1(n291), .A2(intadd_1_SUM_2_), .B1(n146), .B2(
        intadd_1_SUM_0_), .C1(n292), .C2(intadd_1_SUM_1_), .Z(result[2]) );
  AO222D0 U313 ( .A1(n291), .A2(intadd_1_SUM_4_), .B1(n146), .B2(
        intadd_1_SUM_2_), .C1(n292), .C2(intadd_1_SUM_3_), .Z(result[4]) );
  AO222D0 U314 ( .A1(n291), .A2(intadd_1_SUM_3_), .B1(n146), .B2(
        intadd_1_SUM_1_), .C1(n292), .C2(intadd_1_SUM_2_), .Z(result[3]) );
  AO222D0 U315 ( .A1(n291), .A2(intadd_1_SUM_13_), .B1(n292), .B2(
        intadd_1_SUM_12_), .C1(intadd_1_SUM_11_), .C2(n146), .Z(result[13]) );
  AO222D0 U316 ( .A1(n291), .A2(intadd_1_SUM_12_), .B1(n292), .B2(
        intadd_1_SUM_11_), .C1(intadd_1_SUM_10_), .C2(n146), .Z(result[12]) );
  AO222D0 U317 ( .A1(n291), .A2(intadd_1_SUM_14_), .B1(n292), .B2(
        intadd_1_SUM_13_), .C1(intadd_1_SUM_12_), .C2(n146), .Z(result[14]) );
  AO222D0 U318 ( .A1(n291), .A2(intadd_1_SUM_10_), .B1(n292), .B2(
        intadd_1_SUM_9_), .C1(intadd_1_SUM_8_), .C2(n146), .Z(result[10]) );
  AO222D0 U319 ( .A1(n291), .A2(intadd_1_SUM_15_), .B1(n292), .B2(
        intadd_1_SUM_14_), .C1(intadd_1_SUM_13_), .C2(n146), .Z(result[15]) );
  AO222D0 U320 ( .A1(n291), .A2(intadd_1_SUM_6_), .B1(n292), .B2(
        intadd_1_SUM_5_), .C1(intadd_1_SUM_4_), .C2(n146), .Z(result[6]) );
  AO222D0 U321 ( .A1(n291), .A2(intadd_1_SUM_11_), .B1(n292), .B2(
        intadd_1_SUM_10_), .C1(intadd_1_SUM_9_), .C2(n146), .Z(result[11]) );
  AO222D0 U322 ( .A1(n291), .A2(intadd_1_SUM_7_), .B1(n292), .B2(
        intadd_1_SUM_6_), .C1(intadd_1_SUM_5_), .C2(n146), .Z(result[7]) );
  AO222D0 U323 ( .A1(n291), .A2(intadd_1_SUM_21_), .B1(n292), .B2(
        intadd_1_SUM_20_), .C1(intadd_1_SUM_19_), .C2(n146), .Z(result[21]) );
  AO222D0 U324 ( .A1(n291), .A2(intadd_1_SUM_20_), .B1(n292), .B2(
        intadd_1_SUM_19_), .C1(intadd_1_SUM_18_), .C2(n146), .Z(result[20]) );
  AO222D0 U325 ( .A1(n291), .A2(intadd_1_SUM_8_), .B1(n292), .B2(
        intadd_1_SUM_7_), .C1(intadd_1_SUM_6_), .C2(n146), .Z(result[8]) );
  AO222D0 U326 ( .A1(n291), .A2(intadd_1_SUM_19_), .B1(n292), .B2(
        intadd_1_SUM_18_), .C1(intadd_1_SUM_17_), .C2(n146), .Z(result[19]) );
  AO222D0 U327 ( .A1(n291), .A2(intadd_1_SUM_18_), .B1(n292), .B2(
        intadd_1_SUM_17_), .C1(intadd_1_SUM_16_), .C2(n146), .Z(result[18]) );
  AO222D0 U328 ( .A1(n291), .A2(intadd_1_SUM_17_), .B1(n292), .B2(
        intadd_1_SUM_16_), .C1(intadd_1_SUM_15_), .C2(n146), .Z(result[17]) );
  AO222D0 U329 ( .A1(n291), .A2(intadd_1_SUM_5_), .B1(n292), .B2(
        intadd_1_SUM_4_), .C1(intadd_1_SUM_3_), .C2(n146), .Z(result[5]) );
  AO222D0 U330 ( .A1(n291), .A2(intadd_1_SUM_16_), .B1(n292), .B2(
        intadd_1_SUM_15_), .C1(intadd_1_SUM_14_), .C2(n146), .Z(result[16]) );
  AO222D0 U331 ( .A1(n291), .A2(intadd_1_SUM_9_), .B1(n292), .B2(
        intadd_1_SUM_8_), .C1(intadd_1_SUM_7_), .C2(n146), .Z(result[9]) );
  AOI22D0 U332 ( .A1(n196), .A2(n198), .B1(n200), .B2(n288), .ZN(mult_x_4_n145) );
  OAI22D0 U333 ( .A1(n193), .A2(x[6]), .B1(x[5]), .B2(n288), .ZN(
        DP_OP_54J1_124_4725_n215) );
  AOI22D0 U334 ( .A1(n275), .A2(x[4]), .B1(n116), .B2(n218), .ZN(
        DP_OP_54J1_124_4725_n239) );
  AOI22D0 U335 ( .A1(n275), .A2(x[3]), .B1(n117), .B2(n218), .ZN(
        DP_OP_54J1_124_4725_n240) );
  OAI22D0 U336 ( .A1(intadd_0_SUM_4_), .A2(n147), .B1(intadd_0_SUM_3_), .B2(
        n118), .ZN(mult_x_4_n170) );
  OAI22D0 U337 ( .A1(intadd_0_SUM_16_), .A2(n147), .B1(intadd_0_SUM_15_), .B2(
        n118), .ZN(mult_x_4_n158) );
  OAI22D0 U338 ( .A1(intadd_0_SUM_17_), .A2(n147), .B1(intadd_0_SUM_16_), .B2(
        n118), .ZN(mult_x_4_n157) );
  OAI22D0 U339 ( .A1(intadd_0_SUM_13_), .A2(n147), .B1(intadd_0_SUM_12_), .B2(
        n118), .ZN(mult_x_4_n161) );
  OAI22D0 U340 ( .A1(intadd_0_SUM_8_), .A2(n147), .B1(intadd_0_SUM_7_), .B2(
        n118), .ZN(mult_x_4_n166) );
  OAI22D0 U341 ( .A1(intadd_0_SUM_11_), .A2(n147), .B1(intadd_0_SUM_10_), .B2(
        n118), .ZN(mult_x_4_n163) );
  OAI22D0 U342 ( .A1(intadd_0_SUM_9_), .A2(n147), .B1(intadd_0_SUM_8_), .B2(
        n118), .ZN(mult_x_4_n165) );
  OAI22D0 U343 ( .A1(intadd_0_SUM_14_), .A2(n147), .B1(intadd_0_SUM_13_), .B2(
        n118), .ZN(mult_x_4_n160) );
  OAI22D0 U344 ( .A1(intadd_0_SUM_7_), .A2(n147), .B1(intadd_0_SUM_6_), .B2(
        n118), .ZN(mult_x_4_n167) );
  OAI22D0 U345 ( .A1(intadd_0_SUM_15_), .A2(n147), .B1(intadd_0_SUM_14_), .B2(
        n118), .ZN(mult_x_4_n159) );
  OAI22D0 U346 ( .A1(intadd_0_SUM_12_), .A2(n147), .B1(intadd_0_SUM_11_), .B2(
        n118), .ZN(mult_x_4_n162) );
  OAI22D0 U347 ( .A1(intadd_0_SUM_18_), .A2(n147), .B1(intadd_0_SUM_17_), .B2(
        n118), .ZN(mult_x_4_n156) );
  OAI22D0 U348 ( .A1(intadd_0_SUM_10_), .A2(n147), .B1(intadd_0_SUM_9_), .B2(
        n118), .ZN(mult_x_4_n164) );
  OAI22D0 U349 ( .A1(intadd_0_SUM_19_), .A2(n147), .B1(intadd_0_SUM_18_), .B2(
        n118), .ZN(mult_x_4_n155) );
  OAI22D0 U350 ( .A1(intadd_0_SUM_2_), .A2(n118), .B1(intadd_0_SUM_3_), .B2(
        n147), .ZN(mult_x_4_n171) );
  OAI22D0 U351 ( .A1(intadd_0_SUM_5_), .A2(n118), .B1(intadd_0_SUM_6_), .B2(
        n147), .ZN(mult_x_4_n168) );
  OAI22D0 U352 ( .A1(intadd_0_SUM_19_), .A2(n118), .B1(intadd_0_SUM_20_), .B2(
        n147), .ZN(mult_x_4_n154) );
  OAI22D0 U353 ( .A1(intadd_0_SUM_4_), .A2(n118), .B1(intadd_0_SUM_5_), .B2(
        n147), .ZN(mult_x_4_n169) );
  OAI22D0 U354 ( .A1(n193), .A2(x[5]), .B1(x[4]), .B2(n288), .ZN(
        DP_OP_54J1_124_4725_n216) );
  OAI22D0 U355 ( .A1(n193), .A2(x[4]), .B1(x[3]), .B2(n288), .ZN(
        DP_OP_54J1_124_4725_n217) );
  OAI22D0 U356 ( .A1(n193), .A2(x[3]), .B1(n40), .B2(n288), .ZN(
        DP_OP_54J1_124_4725_n218) );
  OAI21D0 U357 ( .A1(n193), .A2(n38), .B(n288), .ZN(DP_OP_54J1_124_4725_n176)
         );
  NR2D0 U358 ( .A1(n119), .A2(n206), .ZN(mult_x_4_n195) );
  NR2D0 U359 ( .A1(n160), .A2(n206), .ZN(mult_x_4_n178) );
  NR2D0 U360 ( .A1(n120), .A2(n206), .ZN(mult_x_4_n193) );
  NR2D0 U361 ( .A1(n164), .A2(n206), .ZN(mult_x_4_n177) );
  INVD0 U362 ( .I(intadd_0_SUM_20_), .ZN(n162) );
  NR2D0 U363 ( .A1(n162), .A2(n206), .ZN(mult_x_4_n179) );
  NR2D0 U364 ( .A1(n121), .A2(n206), .ZN(mult_x_4_n188) );
  NR2D0 U365 ( .A1(n122), .A2(n206), .ZN(mult_x_4_n189) );
  NR2D0 U366 ( .A1(n123), .A2(n206), .ZN(mult_x_4_n191) );
  NR2D0 U367 ( .A1(n124), .A2(n206), .ZN(mult_x_4_n186) );
  NR2D0 U368 ( .A1(n125), .A2(n206), .ZN(mult_x_4_n185) );
  NR2D0 U369 ( .A1(n126), .A2(n206), .ZN(mult_x_4_n187) );
  NR2D0 U370 ( .A1(n127), .A2(n206), .ZN(mult_x_4_n190) );
  INVD0 U371 ( .I(intadd_0_SUM_18_), .ZN(n148) );
  NR2D0 U372 ( .A1(n148), .A2(n206), .ZN(mult_x_4_n181) );
  NR2D0 U373 ( .A1(n128), .A2(n206), .ZN(mult_x_4_n192) );
  NR2D0 U374 ( .A1(n129), .A2(n206), .ZN(mult_x_4_n183) );
  INVD0 U375 ( .I(intadd_0_SUM_19_), .ZN(n156) );
  NR2D0 U376 ( .A1(n156), .A2(n206), .ZN(mult_x_4_n180) );
  NR2D0 U377 ( .A1(n130), .A2(n206), .ZN(mult_x_4_n182) );
  NR2D0 U378 ( .A1(n131), .A2(n206), .ZN(mult_x_4_n184) );
  NR2D0 U379 ( .A1(n132), .A2(n221), .ZN(n134) );
  AOI22D0 U380 ( .A1(n268), .A2(n28), .B1(n27), .B2(n279), .ZN(n176) );
  OAI221D0 U381 ( .A1(n28), .A2(y[1]), .B1(n27), .B2(x[22]), .C(y[0]), .ZN(
        n133) );
  OAI211D0 U382 ( .A1(y[1]), .A2(n134), .B(n176), .C(n133), .ZN(n140) );
  INVD0 U383 ( .I(impl_x_rounding_lut_N251), .ZN(n141) );
  NR2D0 U384 ( .A1(n140), .A2(n141), .ZN(n139) );
  AOI22D0 U385 ( .A1(n275), .A2(n135), .B1(x[5]), .B2(n218), .ZN(n137) );
  INVD0 U386 ( .I(n136), .ZN(DP_OP_54J1_124_4725_n136) );
  INVD0 U387 ( .I(intadd_0_B_19_), .ZN(DP_OP_54J1_124_4725_n153) );
  FA1D0 U388 ( .A(n142), .B(n139), .CI(n137), .CO(n136), .S(n138) );
  INVD0 U389 ( .I(n138), .ZN(DP_OP_54J1_124_4725_n137) );
  NR2D0 U390 ( .A1(n165), .A2(n157), .ZN(mult_x_4_n200) );
  INVD0 U391 ( .I(intadd_0_B_18_), .ZN(DP_OP_54J1_124_4725_n154) );
  AOI21D0 U392 ( .A1(n141), .A2(n140), .B(n139), .ZN(n145) );
  CKND2D0 U393 ( .A1(n275), .A2(y[22]), .ZN(n282) );
  CKND2D0 U394 ( .A1(n38), .A2(n143), .ZN(n144) );
  CKND2D0 U395 ( .A1(n145), .A2(n144), .ZN(DP_OP_54J1_124_4725_n141) );
  OAI21D0 U396 ( .A1(n145), .A2(n144), .B(DP_OP_54J1_124_4725_n141), .ZN(
        DP_OP_54J1_124_4725_n142) );
  INVD0 U397 ( .I(n146), .ZN(DP_OP_56J1_125_5844_n8) );
  INVD0 U398 ( .I(n292), .ZN(n215) );
  OR2D0 U399 ( .A1(impl_exponent_input[0]), .A2(n215), .Z(
        DP_OP_56J1_125_5844_n7) );
  CKND2D0 U400 ( .A1(intadd_0_SUM_3_), .A2(n147), .ZN(n190) );
  NR2D0 U401 ( .A1(n190), .A2(n191), .ZN(mult_x_4_n118) );
  NR2D0 U402 ( .A1(n148), .A2(n165), .ZN(mult_x_4_n206) );
  INVD0 U403 ( .I(mult_x_4_n59), .ZN(n154) );
  AOI22D0 U404 ( .A1(n206), .A2(n160), .B1(n193), .B2(n162), .ZN(n153) );
  NR2D0 U405 ( .A1(n163), .A2(n206), .ZN(n150) );
  AO21D0 U406 ( .A1(intadd_0_SUM_19_), .A2(n165), .B(mult_x_4_n206), .Z(n149)
         );
  CKND2D0 U407 ( .A1(n150), .A2(n149), .ZN(n167) );
  OAI21D0 U408 ( .A1(n150), .A2(n149), .B(n167), .ZN(n152) );
  INVD0 U409 ( .I(n151), .ZN(intadd_1_B_18_) );
  FA1D0 U410 ( .A(n154), .B(n153), .CI(n152), .CO(n155), .S(n151) );
  INVD0 U411 ( .I(n155), .ZN(intadd_1_B_19_) );
  NR2D0 U412 ( .A1(n156), .A2(n165), .ZN(mult_x_4_n205) );
  NR2D0 U413 ( .A1(n157), .A2(n206), .ZN(n159) );
  AO21D0 U414 ( .A1(intadd_0_SUM_20_), .A2(n288), .B(mult_x_4_n205), .Z(n158)
         );
  CKND2D0 U415 ( .A1(n159), .A2(n158), .ZN(n171) );
  OAI21D0 U416 ( .A1(n159), .A2(n158), .B(n171), .ZN(n169) );
  AOI22D0 U417 ( .A1(n206), .A2(n164), .B1(n193), .B2(n160), .ZN(n168) );
  INVD0 U418 ( .I(n161), .ZN(intadd_1_A_19_) );
  NR2D0 U419 ( .A1(n162), .A2(n165), .ZN(mult_x_4_n204) );
  AOI22D0 U420 ( .A1(n193), .A2(n164), .B1(n206), .B2(n163), .ZN(n173) );
  AOI21D0 U421 ( .A1(intadd_0_SUM_21_), .A2(n165), .B(mult_x_4_n204), .ZN(n172) );
  INVD0 U422 ( .I(n166), .ZN(intadd_1_B_20_) );
  FA1D0 U423 ( .A(n169), .B(n168), .CI(n167), .CO(n170), .S(n161) );
  INVD0 U424 ( .I(n170), .ZN(intadd_1_A_20_) );
  FA1D0 U425 ( .A(n173), .B(n172), .CI(n171), .CO(n174), .S(n166) );
  INVD0 U426 ( .I(n174), .ZN(intadd_1_B_21_) );
  INVD0 U427 ( .I(intadd_3_SUM_3_), .ZN(intadd_0_B_20_) );
  INVD0 U428 ( .I(intadd_2_n1), .ZN(intadd_3_B_1_) );
  NR2D0 U429 ( .A1(n180), .A2(n221), .ZN(n175) );
  AOI32D0 U430 ( .A1(n177), .A2(n176), .A3(n224), .B1(n175), .B2(n176), .ZN(
        intadd_2_CI) );
  INVD0 U431 ( .I(n180), .ZN(n264) );
  INVD0 U432 ( .I(n181), .ZN(n266) );
  AOI22D0 U433 ( .A1(n264), .A2(n224), .B1(n266), .B2(n221), .ZN(intadd_2_B_0_) );
  INVD0 U434 ( .I(y[3]), .ZN(n229) );
  AOI22D0 U435 ( .A1(n268), .A2(y[3]), .B1(n229), .B2(n279), .ZN(n179) );
  OAI21D0 U436 ( .A1(y[0]), .A2(n180), .B(n181), .ZN(n178) );
  CKND2D0 U437 ( .A1(n179), .A2(n178), .ZN(intadd_2_B_1_) );
  OAI21D0 U438 ( .A1(n179), .A2(n178), .B(intadd_2_B_1_), .ZN(intadd_2_A_0_)
         );
  INVD0 U439 ( .I(intadd_3_SUM_0_), .ZN(intadd_2_A_17_) );
  OAI22D0 U440 ( .A1(n42), .A2(n181), .B1(y[18]), .B2(n180), .ZN(intadd_3_CI)
         );
  AOI22D0 U441 ( .A1(n268), .A2(n35), .B1(y[20]), .B2(n279), .ZN(intadd_3_B_0_) );
  INVD0 U442 ( .I(y[18]), .ZN(n260) );
  INVD0 U443 ( .I(y[19]), .ZN(n267) );
  AOI22D0 U444 ( .A1(n266), .A2(n260), .B1(n264), .B2(n267), .ZN(n184) );
  INVD0 U445 ( .I(n182), .ZN(intadd_3_A_1_) );
  AOI22D0 U446 ( .A1(n266), .A2(n267), .B1(n264), .B2(y[20]), .ZN(n186) );
  INVD0 U447 ( .I(n183), .ZN(intadd_3_B_2_) );
  FA1D0 U448 ( .A(n42), .B(n184), .CI(intadd_3_B_0_), .CO(n185), .S(n182) );
  INVD0 U449 ( .I(n185), .ZN(intadd_3_A_2_) );
  FA1D0 U450 ( .A(n260), .B(n42), .CI(n186), .CO(n187), .S(n183) );
  INVD0 U451 ( .I(n187), .ZN(intadd_3_A_3_) );
  INVD0 U453 ( .I(y[24]), .ZN(DP_OP_56J1_125_5844_n23) );
  INVD0 U454 ( .I(y[25]), .ZN(DP_OP_56J1_125_5844_n22) );
  INVD0 U455 ( .I(y[26]), .ZN(DP_OP_56J1_125_5844_n21) );
  INVD0 U456 ( .I(y[27]), .ZN(DP_OP_56J1_125_5844_n20) );
  INVD0 U457 ( .I(y[28]), .ZN(DP_OP_56J1_125_5844_n19) );
  INVD0 U458 ( .I(y[29]), .ZN(DP_OP_56J1_125_5844_n18) );
  AOI21D0 U459 ( .A1(n189), .A2(n188), .B(DP_OP_54J1_124_4725_n61), .ZN(
        DP_OP_54J1_124_4725_n62) );
  INR2D0 U460 ( .A1(intadd_0_SUM_5_), .B1(n206), .ZN(mult_x_4_n194) );
  AO21D0 U461 ( .A1(n191), .A2(n190), .B(mult_x_4_n118), .Z(n195) );
  CKND2D0 U462 ( .A1(intadd_0_SUM_2_), .A2(n203), .ZN(n201) );
  AOI22D0 U463 ( .A1(n206), .A2(n198), .B1(n193), .B2(n192), .ZN(n194) );
  INVD0 U464 ( .I(mult_x_4_n115), .ZN(n210) );
  FA1D0 U465 ( .A(n195), .B(n201), .CI(n194), .CO(n211), .S(n205) );
  OAI211D0 U466 ( .A1(intadd_0_SUM_1_), .A2(intadd_0_SUM_3_), .B(n196), .C(
        intadd_0_SUM_0_), .ZN(n199) );
  OAI22D0 U467 ( .A1(n200), .A2(n199), .B1(n198), .B2(n197), .ZN(n202) );
  OAI211D0 U468 ( .A1(intadd_0_SUM_2_), .A2(n203), .B(n202), .C(n201), .ZN(
        n204) );
  AOI22D0 U469 ( .A1(n206), .A2(intadd_0_SUM_0_), .B1(n205), .B2(n204), .ZN(
        n208) );
  CKND2D0 U470 ( .A1(n208), .A2(n207), .ZN(n209) );
  MAOI222D0 U471 ( .A(n211), .B(n210), .C(n209), .ZN(intadd_1_CI) );
  AOI21D0 U472 ( .A1(n214), .A2(n213), .B(n212), .ZN(intadd_1_A_21_) );
  XNR2D0 U473 ( .A1(n215), .A2(impl_exponent_input[0]), .ZN(result[23]) );
  AOI221D0 U474 ( .A1(n40), .A2(n275), .B1(n39), .B2(n218), .C(n217), .ZN(
        intadd_0_CI) );
  AOI22D0 U475 ( .A1(n264), .A2(n27), .B1(n266), .B2(n224), .ZN(n220) );
  INVD0 U476 ( .I(y[4]), .ZN(n232) );
  AOI22D0 U477 ( .A1(n268), .A2(n232), .B1(y[4]), .B2(n279), .ZN(n219) );
  FA1D0 U478 ( .A(n221), .B(n220), .CI(n219), .CO(intadd_2_B_2_), .S(
        intadd_2_A_1_) );
  AOI22D0 U479 ( .A1(n264), .A2(n229), .B1(n266), .B2(n27), .ZN(n223) );
  INVD0 U480 ( .I(y[5]), .ZN(n235) );
  AOI22D0 U481 ( .A1(n268), .A2(n235), .B1(y[5]), .B2(n279), .ZN(n222) );
  FA1D0 U482 ( .A(n224), .B(n223), .CI(n222), .CO(intadd_2_B_3_), .S(
        intadd_2_A_2_) );
  AOI22D0 U483 ( .A1(n266), .A2(n229), .B1(n264), .B2(n232), .ZN(n226) );
  INVD0 U484 ( .I(y[6]), .ZN(n238) );
  AOI22D0 U485 ( .A1(n268), .A2(n238), .B1(y[6]), .B2(n279), .ZN(n225) );
  FA1D0 U486 ( .A(n27), .B(n226), .CI(n225), .CO(intadd_2_A_4_), .S(
        intadd_2_A_3_) );
  AOI22D0 U487 ( .A1(n266), .A2(n232), .B1(n264), .B2(n235), .ZN(n228) );
  INVD0 U488 ( .I(y[7]), .ZN(n241) );
  AOI22D0 U489 ( .A1(n268), .A2(n241), .B1(y[7]), .B2(n279), .ZN(n227) );
  FA1D0 U490 ( .A(n229), .B(n228), .CI(n227), .CO(intadd_2_B_5_), .S(
        intadd_2_B_4_) );
  AOI22D0 U491 ( .A1(n266), .A2(n235), .B1(n264), .B2(n238), .ZN(n231) );
  INVD0 U492 ( .I(y[8]), .ZN(n244) );
  AOI22D0 U493 ( .A1(n268), .A2(n244), .B1(y[8]), .B2(n279), .ZN(n230) );
  FA1D0 U494 ( .A(n232), .B(n231), .CI(n230), .CO(intadd_2_A_6_), .S(
        intadd_2_A_5_) );
  AOI22D0 U495 ( .A1(n266), .A2(n238), .B1(n264), .B2(n241), .ZN(n234) );
  INVD0 U496 ( .I(y[9]), .ZN(n247) );
  AOI22D0 U497 ( .A1(n268), .A2(n247), .B1(y[9]), .B2(n279), .ZN(n233) );
  FA1D0 U498 ( .A(n235), .B(n234), .CI(n233), .CO(intadd_2_B_7_), .S(
        intadd_2_B_6_) );
  AOI22D0 U499 ( .A1(n266), .A2(n241), .B1(n264), .B2(n244), .ZN(n237) );
  INVD0 U500 ( .I(y[10]), .ZN(n250) );
  AOI22D0 U501 ( .A1(n268), .A2(n250), .B1(y[10]), .B2(n279), .ZN(n236) );
  FA1D0 U502 ( .A(n238), .B(n237), .CI(n236), .CO(intadd_2_B_8_), .S(
        intadd_2_A_7_) );
  AOI22D0 U503 ( .A1(n266), .A2(n244), .B1(n264), .B2(n247), .ZN(n240) );
  INVD0 U504 ( .I(y[11]), .ZN(n253) );
  AOI22D0 U505 ( .A1(n268), .A2(n253), .B1(y[11]), .B2(n279), .ZN(n239) );
  FA1D0 U506 ( .A(n241), .B(n240), .CI(n239), .CO(intadd_2_B_9_), .S(
        intadd_2_A_8_) );
  AOI22D0 U507 ( .A1(n266), .A2(n247), .B1(n264), .B2(n250), .ZN(n243) );
  INVD0 U508 ( .I(y[12]), .ZN(n256) );
  AOI22D0 U509 ( .A1(n268), .A2(n256), .B1(y[12]), .B2(n279), .ZN(n242) );
  FA1D0 U510 ( .A(n244), .B(n243), .CI(n242), .CO(intadd_2_B_10_), .S(
        intadd_2_A_9_) );
  AOI22D0 U511 ( .A1(n266), .A2(n250), .B1(n264), .B2(n253), .ZN(n246) );
  INVD0 U512 ( .I(y[13]), .ZN(n259) );
  AOI22D0 U513 ( .A1(n268), .A2(n259), .B1(y[13]), .B2(n279), .ZN(n245) );
  FA1D0 U514 ( .A(n247), .B(n246), .CI(n245), .CO(intadd_2_B_11_), .S(
        intadd_2_A_10_) );
  AOI22D0 U515 ( .A1(n266), .A2(n253), .B1(n264), .B2(n256), .ZN(n249) );
  INVD0 U516 ( .I(y[14]), .ZN(n263) );
  AOI22D0 U517 ( .A1(n268), .A2(n263), .B1(y[14]), .B2(n279), .ZN(n248) );
  FA1D0 U518 ( .A(n250), .B(n249), .CI(n248), .CO(intadd_2_B_12_), .S(
        intadd_2_A_11_) );
  AOI22D0 U519 ( .A1(n266), .A2(n256), .B1(n264), .B2(n259), .ZN(n252) );
  INVD0 U520 ( .I(y[15]), .ZN(n271) );
  AOI22D0 U521 ( .A1(n268), .A2(n271), .B1(y[15]), .B2(n279), .ZN(n251) );
  FA1D0 U522 ( .A(n253), .B(n252), .CI(n251), .CO(intadd_2_B_13_), .S(
        intadd_2_A_12_) );
  AOI22D0 U523 ( .A1(n266), .A2(n259), .B1(n264), .B2(n263), .ZN(n255) );
  INVD0 U524 ( .I(y[16]), .ZN(n265) );
  AOI22D0 U525 ( .A1(n268), .A2(n265), .B1(y[16]), .B2(n279), .ZN(n254) );
  FA1D0 U526 ( .A(n256), .B(n255), .CI(n254), .CO(intadd_2_B_14_), .S(
        intadd_2_A_13_) );
  AOI22D0 U527 ( .A1(n266), .A2(n263), .B1(n264), .B2(n271), .ZN(n258) );
  AOI22D0 U528 ( .A1(n268), .A2(n41), .B1(n42), .B2(n279), .ZN(n257) );
  FA1D0 U529 ( .A(n259), .B(n258), .CI(n257), .CO(intadd_2_B_15_), .S(
        intadd_2_A_14_) );
  AOI22D0 U530 ( .A1(n266), .A2(n271), .B1(n264), .B2(n265), .ZN(n262) );
  AOI22D0 U531 ( .A1(n268), .A2(n260), .B1(y[18]), .B2(n279), .ZN(n261) );
  FA1D0 U532 ( .A(n263), .B(n262), .CI(n261), .CO(intadd_2_B_16_), .S(
        intadd_2_A_15_) );
  AOI22D0 U533 ( .A1(n266), .A2(n265), .B1(n264), .B2(n41), .ZN(n270) );
  AOI22D0 U534 ( .A1(n268), .A2(n267), .B1(y[19]), .B2(n279), .ZN(n269) );
  FA1D0 U535 ( .A(n271), .B(n270), .CI(n269), .CO(intadd_2_B_17_), .S(
        intadd_2_A_16_) );
  FA1D0 U536 ( .A(n42), .B(y[19]), .CI(n272), .CO(n44), .S(intadd_3_B_3_) );
  CKND2D0 U538 ( .A1(n275), .A2(x[22]), .ZN(n278) );
  AOI221D0 U539 ( .A1(n279), .A2(n278), .B1(n277), .B2(n278), .C(n276), .ZN(
        n280) );
  CKND2D0 U540 ( .A1(n287), .A2(n286), .ZN(n285) );
  XNR3D0 U541 ( .A1(n281), .A2(n280), .A3(n285), .ZN(n284) );
  CKND2D0 U542 ( .A1(n34), .A2(n282), .ZN(n283) );
  FA1D0 U543 ( .A(n30), .B(n284), .CI(n283), .CO(DP_OP_54J1_124_4725_n46), .S(
        DP_OP_54J1_124_4725_n47) );
  OA21D0 U544 ( .A1(n287), .A2(n286), .B(n285), .Z(n290) );
  FA1D0 U545 ( .A(n32), .B(n290), .CI(n289), .CO(DP_OP_54J1_124_4725_n51), .S(
        DP_OP_54J1_124_4725_n52) );
  XOR2D0 U546 ( .A1(y[31]), .A2(x[31]), .Z(result[31]) );
  AO22D0 U547 ( .A1(n292), .A2(intadd_1_SUM_0_), .B1(intadd_1_SUM_1_), .B2(
        n291), .Z(result[1]) );
  CKXOR2D0 U76 ( .A1(n293), .A2(n70), .Z(n71) );
  XOR3D0 U77 ( .A1(DP_OP_56J1_125_5844_n11), .A2(y[30]), .A3(x[30]), .Z(n70)
         );
  NR2D0 U80 ( .A1(n67), .A2(impl_exponent_input[6]), .ZN(n293) );
  INR2D1 U99 ( .A1(n115), .B1(n291), .ZN(n146) );
  INR2D0 U104 ( .A1(x[23]), .B1(y[23]), .ZN(DP_OP_56J1_125_5844_n17) );
  XNR2D0 U124 ( .A1(y[23]), .A2(x[23]), .ZN(impl_exponent_input[0]) );
  XNR4D0 U126 ( .A1(n212), .A2(n111), .A3(n110), .A4(intadd_1_n1), .ZN(n115)
         );
  NR2D0 U127 ( .A1(n213), .A2(n214), .ZN(n212) );
  OR3D0 U133 ( .A1(n55), .A2(n54), .A3(n56), .Z(n58) );
  MAOI222D0 U135 ( .A(n111), .B(n110), .C(n51), .ZN(n56) );
  AOI21D0 U139 ( .A1(n207), .A2(n157), .B(n206), .ZN(n111) );
  CKND0 U140 ( .I(n147), .ZN(n206) );
  XNR3D0 U158 ( .A1(intadd_3_n1), .A2(n44), .A3(n35), .ZN(
        DP_OP_54J1_124_4725_n542) );
  CKND0 U159 ( .I(y[20]), .ZN(n35) );
  AOI22D1 U160 ( .A1(n30), .A2(n218), .B1(n275), .B2(n29), .ZN(n82) );
  AOI22D1 U161 ( .A1(n32), .A2(n218), .B1(n275), .B2(n31), .ZN(n86) );
  CKND0 U191 ( .I(n288), .ZN(n196) );
  CKND2D0 U194 ( .A1(n218), .A2(n277), .ZN(n288) );
  CMPE42D1 U260 ( .A(intadd_2_A_16_), .B(intadd_2_B_16_), .C(intadd_2_n3), 
        .CIX(DP_OP_54J1_124_4725_n65), .D(intadd_0_n9), .CO(intadd_0_n8), 
        .COX(intadd_2_n2), .S(intadd_0_SUM_16_) );
  CMPE42D1 U261 ( .A(DP_OP_54J1_124_4725_n37), .B(n274), .C(n273), .CIX(
        DP_OP_54J1_124_4725_n38), .D(intadd_0_n2), .CO(intadd_0_n1), .COX(n47), 
        .S(intadd_0_SUM_23_) );
  CMPE42D1 U262 ( .A(intadd_2_A_17_), .B(intadd_2_B_17_), .C(intadd_2_n2), 
        .CIX(DP_OP_54J1_124_4725_n60), .D(intadd_0_n8), .CO(intadd_0_n7), 
        .COX(intadd_2_n1), .S(intadd_0_SUM_17_) );
endmodule

