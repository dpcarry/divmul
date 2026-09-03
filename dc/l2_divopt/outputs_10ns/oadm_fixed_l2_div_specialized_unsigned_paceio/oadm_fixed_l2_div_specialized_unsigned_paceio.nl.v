/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Wed Sep  2 19:55:19 2026
/////////////////////////////////////////////////////////////


module oadm_fixed_l2_div_specialized_unsigned_paceio ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   impl_x_rounding_lut_N251, C6_DATA2_1, DP_OP_54J1_124_1025_n544,
         DP_OP_54J1_124_1025_n242, DP_OP_54J1_124_1025_n241,
         DP_OP_54J1_124_1025_n222, DP_OP_54J1_124_1025_n221,
         DP_OP_54J1_124_1025_n220, DP_OP_54J1_124_1025_n219,
         DP_OP_54J1_124_1025_n218, DP_OP_54J1_124_1025_n217,
         DP_OP_54J1_124_1025_n216, DP_OP_54J1_124_1025_n215,
         DP_OP_54J1_124_1025_n214, DP_OP_54J1_124_1025_n213,
         DP_OP_54J1_124_1025_n212, DP_OP_54J1_124_1025_n211,
         DP_OP_54J1_124_1025_n210, DP_OP_54J1_124_1025_n209,
         DP_OP_54J1_124_1025_n208, DP_OP_54J1_124_1025_n207,
         DP_OP_54J1_124_1025_n206, DP_OP_54J1_124_1025_n205,
         DP_OP_54J1_124_1025_n204, DP_OP_54J1_124_1025_n178,
         DP_OP_54J1_124_1025_n156, DP_OP_54J1_124_1025_n155,
         DP_OP_54J1_124_1025_n151, DP_OP_54J1_124_1025_n149,
         DP_OP_54J1_124_1025_n148, DP_OP_54J1_124_1025_n147,
         DP_OP_54J1_124_1025_n144, DP_OP_54J1_124_1025_n143,
         DP_OP_54J1_124_1025_n142, DP_OP_54J1_124_1025_n141,
         DP_OP_54J1_124_1025_n140, DP_OP_54J1_124_1025_n139,
         DP_OP_54J1_124_1025_n138, DP_OP_54J1_124_1025_n137,
         DP_OP_54J1_124_1025_n136, DP_OP_54J1_124_1025_n135,
         DP_OP_54J1_124_1025_n134, DP_OP_54J1_124_1025_n133,
         DP_OP_54J1_124_1025_n132, DP_OP_54J1_124_1025_n131,
         DP_OP_54J1_124_1025_n130, DP_OP_54J1_124_1025_n129,
         DP_OP_54J1_124_1025_n128, DP_OP_54J1_124_1025_n127,
         DP_OP_54J1_124_1025_n126, DP_OP_54J1_124_1025_n125,
         DP_OP_54J1_124_1025_n124, DP_OP_54J1_124_1025_n123,
         DP_OP_54J1_124_1025_n122, DP_OP_54J1_124_1025_n121,
         DP_OP_54J1_124_1025_n120, DP_OP_54J1_124_1025_n119,
         DP_OP_54J1_124_1025_n118, DP_OP_54J1_124_1025_n117,
         DP_OP_54J1_124_1025_n116, DP_OP_54J1_124_1025_n115,
         DP_OP_54J1_124_1025_n114, DP_OP_54J1_124_1025_n113,
         DP_OP_54J1_124_1025_n112, DP_OP_54J1_124_1025_n111,
         DP_OP_54J1_124_1025_n110, DP_OP_54J1_124_1025_n109,
         DP_OP_54J1_124_1025_n108, DP_OP_54J1_124_1025_n107,
         DP_OP_54J1_124_1025_n106, DP_OP_54J1_124_1025_n105,
         DP_OP_54J1_124_1025_n104, DP_OP_54J1_124_1025_n103,
         DP_OP_54J1_124_1025_n102, DP_OP_54J1_124_1025_n101,
         DP_OP_54J1_124_1025_n100, DP_OP_54J1_124_1025_n99,
         DP_OP_54J1_124_1025_n98, DP_OP_54J1_124_1025_n97,
         DP_OP_54J1_124_1025_n96, DP_OP_54J1_124_1025_n95,
         DP_OP_54J1_124_1025_n94, DP_OP_54J1_124_1025_n93,
         DP_OP_54J1_124_1025_n92, DP_OP_54J1_124_1025_n91,
         DP_OP_54J1_124_1025_n90, DP_OP_54J1_124_1025_n89,
         DP_OP_54J1_124_1025_n88, DP_OP_54J1_124_1025_n87,
         DP_OP_54J1_124_1025_n86, DP_OP_54J1_124_1025_n85,
         DP_OP_54J1_124_1025_n84, DP_OP_54J1_124_1025_n83,
         DP_OP_54J1_124_1025_n82, DP_OP_54J1_124_1025_n81,
         DP_OP_54J1_124_1025_n80, DP_OP_54J1_124_1025_n79,
         DP_OP_54J1_124_1025_n78, DP_OP_54J1_124_1025_n77,
         DP_OP_54J1_124_1025_n76, DP_OP_54J1_124_1025_n75,
         DP_OP_54J1_124_1025_n74, DP_OP_54J1_124_1025_n73,
         DP_OP_54J1_124_1025_n72, DP_OP_54J1_124_1025_n71,
         DP_OP_54J1_124_1025_n70, DP_OP_54J1_124_1025_n69,
         DP_OP_54J1_124_1025_n68, DP_OP_54J1_124_1025_n67,
         DP_OP_54J1_124_1025_n66, DP_OP_54J1_124_1025_n65,
         DP_OP_54J1_124_1025_n64, DP_OP_54J1_124_1025_n63,
         DP_OP_54J1_124_1025_n62, DP_OP_54J1_124_1025_n61,
         DP_OP_54J1_124_1025_n60, DP_OP_54J1_124_1025_n59,
         DP_OP_54J1_124_1025_n58, DP_OP_54J1_124_1025_n57,
         DP_OP_54J1_124_1025_n56, DP_OP_54J1_124_1025_n55,
         DP_OP_54J1_124_1025_n54, DP_OP_54J1_124_1025_n53,
         DP_OP_54J1_124_1025_n52, DP_OP_54J1_124_1025_n51,
         DP_OP_54J1_124_1025_n50, DP_OP_54J1_124_1025_n49,
         DP_OP_54J1_124_1025_n48, DP_OP_54J1_124_1025_n47,
         DP_OP_54J1_124_1025_n46, DP_OP_54J1_124_1025_n45,
         DP_OP_54J1_124_1025_n44, DP_OP_54J1_124_1025_n43,
         DP_OP_54J1_124_1025_n42, DP_OP_54J1_124_1025_n41,
         DP_OP_54J1_124_1025_n40, DP_OP_54J1_124_1025_n39, mult_x_4_n224,
         mult_x_4_n223, mult_x_4_n222, mult_x_4_n221, mult_x_4_n220,
         mult_x_4_n219, mult_x_4_n218, mult_x_4_n217, mult_x_4_n216,
         mult_x_4_n215, mult_x_4_n214, mult_x_4_n213, mult_x_4_n212,
         mult_x_4_n211, mult_x_4_n210, mult_x_4_n209, mult_x_4_n208,
         mult_x_4_n207, mult_x_4_n206, mult_x_4_n205, mult_x_4_n204,
         mult_x_4_n199, mult_x_4_n198, mult_x_4_n197, mult_x_4_n196,
         mult_x_4_n195, mult_x_4_n194, mult_x_4_n193, mult_x_4_n192,
         mult_x_4_n191, mult_x_4_n190, mult_x_4_n189, mult_x_4_n188,
         mult_x_4_n187, mult_x_4_n186, mult_x_4_n185, mult_x_4_n184,
         mult_x_4_n183, mult_x_4_n182, mult_x_4_n181, mult_x_4_n180,
         mult_x_4_n179, mult_x_4_n174, mult_x_4_n173, mult_x_4_n172,
         mult_x_4_n171, mult_x_4_n170, mult_x_4_n169, mult_x_4_n168,
         mult_x_4_n167, mult_x_4_n166, mult_x_4_n165, mult_x_4_n164,
         mult_x_4_n163, mult_x_4_n162, mult_x_4_n161, mult_x_4_n160,
         mult_x_4_n159, mult_x_4_n158, mult_x_4_n157, mult_x_4_n156,
         mult_x_4_n155, mult_x_4_n154, mult_x_4_n149, mult_x_4_n148,
         mult_x_4_n147, mult_x_4_n146, mult_x_4_n145, mult_x_4_n144,
         mult_x_4_n143, mult_x_4_n142, mult_x_4_n141, mult_x_4_n140,
         mult_x_4_n139, mult_x_4_n138, mult_x_4_n137, mult_x_4_n136,
         mult_x_4_n135, mult_x_4_n134, mult_x_4_n133, mult_x_4_n132,
         mult_x_4_n131, mult_x_4_n130, mult_x_4_n129, mult_x_4_n120,
         mult_x_4_n117, mult_x_4_n116, mult_x_4_n115, mult_x_4_n114,
         mult_x_4_n113, mult_x_4_n112, mult_x_4_n111, mult_x_4_n110,
         mult_x_4_n109, mult_x_4_n108, mult_x_4_n107, mult_x_4_n106,
         mult_x_4_n105, mult_x_4_n104, mult_x_4_n103, mult_x_4_n102,
         mult_x_4_n101, mult_x_4_n100, mult_x_4_n99, mult_x_4_n98,
         mult_x_4_n97, mult_x_4_n96, mult_x_4_n95, mult_x_4_n94, mult_x_4_n93,
         mult_x_4_n92, mult_x_4_n91, mult_x_4_n90, mult_x_4_n89, mult_x_4_n88,
         mult_x_4_n87, mult_x_4_n86, mult_x_4_n85, mult_x_4_n84, mult_x_4_n83,
         mult_x_4_n82, mult_x_4_n81, mult_x_4_n80, mult_x_4_n79, mult_x_4_n78,
         mult_x_4_n77, mult_x_4_n76, mult_x_4_n75, mult_x_4_n74, mult_x_4_n73,
         mult_x_4_n72, mult_x_4_n71, mult_x_4_n70, mult_x_4_n69, mult_x_4_n68,
         mult_x_4_n67, mult_x_4_n66, mult_x_4_n65, mult_x_4_n64, mult_x_4_n63,
         mult_x_4_n62, mult_x_4_n61, mult_x_4_n60, mult_x_4_n59, mult_x_4_n58,
         mult_x_4_n57, mult_x_4_n56, mult_x_4_n55, DP_OP_56J1_125_5844_n23,
         DP_OP_56J1_125_5844_n22, DP_OP_56J1_125_5844_n21,
         DP_OP_56J1_125_5844_n20, DP_OP_56J1_125_5844_n19,
         DP_OP_56J1_125_5844_n18, DP_OP_56J1_125_5844_n17,
         DP_OP_56J1_125_5844_n16, DP_OP_56J1_125_5844_n15,
         DP_OP_56J1_125_5844_n14, DP_OP_56J1_125_5844_n13,
         DP_OP_56J1_125_5844_n12, DP_OP_56J1_125_5844_n11,
         DP_OP_56J1_125_5844_n8, DP_OP_56J1_125_5844_n7,
         DP_OP_56J1_125_5844_n6, intadd_0_A_24_, intadd_0_A_22_,
         intadd_0_B_24_, intadd_0_B_23_, intadd_0_B_20_, intadd_0_B_19_,
         intadd_0_B_18_, intadd_0_B_15_, intadd_0_B_14_, intadd_0_B_13_,
         intadd_0_B_12_, intadd_0_B_11_, intadd_0_B_10_, intadd_0_B_9_,
         intadd_0_B_8_, intadd_0_B_7_, intadd_0_B_6_, intadd_0_B_5_,
         intadd_0_B_4_, intadd_0_B_3_, intadd_0_B_2_, intadd_0_B_1_,
         intadd_0_B_0_, intadd_0_CI, intadd_0_SUM_24_, intadd_0_SUM_23_,
         intadd_0_SUM_22_, intadd_0_SUM_21_, intadd_0_SUM_20_,
         intadd_0_SUM_19_, intadd_0_SUM_18_, intadd_0_SUM_17_,
         intadd_0_SUM_16_, intadd_0_SUM_15_, intadd_0_SUM_14_,
         intadd_0_SUM_13_, intadd_0_SUM_12_, intadd_0_SUM_11_,
         intadd_0_SUM_10_, intadd_0_SUM_9_, intadd_0_SUM_8_, intadd_0_SUM_7_,
         intadd_0_SUM_6_, intadd_0_SUM_5_, intadd_0_SUM_4_, intadd_0_SUM_3_,
         intadd_0_SUM_2_, intadd_0_SUM_1_, intadd_0_SUM_0_, intadd_0_n25,
         intadd_0_n24, intadd_0_n23, intadd_0_n22, intadd_0_n21, intadd_0_n20,
         intadd_0_n19, intadd_0_n18, intadd_0_n17, intadd_0_n16, intadd_0_n15,
         intadd_0_n14, intadd_0_n13, intadd_0_n12, intadd_0_n11, intadd_0_n10,
         intadd_0_n9, intadd_0_n8, intadd_0_n7, intadd_0_n6, intadd_0_n5,
         intadd_0_n4, intadd_0_n3, intadd_0_n2, intadd_0_n1, intadd_1_A_22_,
         intadd_1_A_21_, intadd_1_B_22_, intadd_1_B_21_, intadd_1_B_20_,
         intadd_1_CI, intadd_1_SUM_22_, intadd_1_SUM_21_, intadd_1_SUM_20_,
         intadd_1_SUM_19_, intadd_1_SUM_18_, intadd_1_SUM_17_,
         intadd_1_SUM_16_, intadd_1_SUM_15_, intadd_1_SUM_14_,
         intadd_1_SUM_13_, intadd_1_SUM_12_, intadd_1_SUM_11_,
         intadd_1_SUM_10_, intadd_1_SUM_9_, intadd_1_SUM_8_, intadd_1_SUM_7_,
         intadd_1_SUM_6_, intadd_1_SUM_5_, intadd_1_SUM_4_, intadd_1_SUM_3_,
         intadd_1_SUM_2_, intadd_1_SUM_1_, intadd_1_SUM_0_, intadd_1_n23,
         intadd_1_n22, intadd_1_n21, intadd_1_n20, intadd_1_n19, intadd_1_n18,
         intadd_1_n17, intadd_1_n16, intadd_1_n15, intadd_1_n14, intadd_1_n13,
         intadd_1_n12, intadd_1_n11, intadd_1_n10, intadd_1_n9, intadd_1_n8,
         intadd_1_n7, intadd_1_n6, intadd_1_n5, intadd_1_n4, intadd_1_n3,
         intadd_1_n2, intadd_1_n1, intadd_2_A_17_, intadd_2_A_16_,
         intadd_2_A_15_, intadd_2_A_14_, intadd_2_A_13_, intadd_2_A_12_,
         intadd_2_A_11_, intadd_2_A_10_, intadd_2_A_9_, intadd_2_A_8_,
         intadd_2_A_7_, intadd_2_A_6_, intadd_2_A_5_, intadd_2_A_4_,
         intadd_2_A_3_, intadd_2_A_2_, intadd_2_A_1_, intadd_2_A_0_,
         intadd_2_B_17_, intadd_2_B_16_, intadd_2_B_15_, intadd_2_B_14_,
         intadd_2_B_13_, intadd_2_B_12_, intadd_2_B_11_, intadd_2_B_10_,
         intadd_2_B_9_, intadd_2_B_8_, intadd_2_B_7_, intadd_2_B_6_,
         intadd_2_B_5_, intadd_2_B_4_, intadd_2_B_3_, intadd_2_B_2_,
         intadd_2_B_1_, intadd_2_B_0_, intadd_2_CI, intadd_2_n18, intadd_2_n17,
         intadd_2_n16, intadd_2_n15, intadd_2_n14, intadd_2_n13, intadd_2_n12,
         intadd_2_n11, intadd_2_n10, intadd_2_n9, intadd_2_n8, intadd_2_n7,
         intadd_2_n6, intadd_2_n5, intadd_2_n4, intadd_2_n3, intadd_2_n2,
         intadd_2_n1, intadd_3_A_3_, intadd_3_A_2_, intadd_3_A_1_,
         intadd_3_B_3_, intadd_3_B_2_, intadd_3_B_1_, intadd_3_B_0_,
         intadd_3_CI, intadd_3_SUM_3_, intadd_3_SUM_0_, intadd_3_n4,
         intadd_3_n3, intadd_3_n2, intadd_3_n1, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n58, n59, n60, n61, n62,
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
         n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235,
         n236, n237, n238, n239, n240, n241, n242, n243, n244, n245, n246,
         n247, n248, n249, n250, n251, n252, n253, n254, n255, n256, n257,
         n258, n259, n260, n261, n262, n263, n264, n265, n266, n267, n268,
         n269, n270, n271, n272, n273, n274, n275, n276, n277, n278, n279;
  wire   [6:0] impl_exponent_input;
  wire   [5:4] impl_midpoint_product;

  CMPE42D1 DP_OP_54J1_124_1025_U97 ( .A(DP_OP_54J1_124_1025_n151), .B(
        impl_x_rounding_lut_N251), .C(DP_OP_54J1_124_1025_n242), .CIX(
        DP_OP_54J1_124_1025_n222), .D(DP_OP_54J1_124_1025_n178), .CO(
        DP_OP_54J1_124_1025_n148), .COX(DP_OP_54J1_124_1025_n147), .S(
        DP_OP_54J1_124_1025_n149) );
  CMPE42D1 DP_OP_54J1_124_1025_U93 ( .A(DP_OP_54J1_124_1025_n221), .B(
        DP_OP_54J1_124_1025_n241), .C(DP_OP_54J1_124_1025_n147), .CIX(
        DP_OP_54J1_124_1025_n148), .D(DP_OP_54J1_124_1025_n144), .CO(
        DP_OP_54J1_124_1025_n141), .COX(DP_OP_54J1_124_1025_n140), .S(
        DP_OP_54J1_124_1025_n142) );
  CMPE42D1 DP_OP_54J1_124_1025_U91 ( .A(DP_OP_54J1_124_1025_n143), .B(
        DP_OP_54J1_124_1025_n220), .C(DP_OP_54J1_124_1025_n139), .CIX(
        DP_OP_54J1_124_1025_n141), .D(DP_OP_54J1_124_1025_n140), .CO(
        DP_OP_54J1_124_1025_n136), .COX(DP_OP_54J1_124_1025_n135), .S(
        DP_OP_54J1_124_1025_n137) );
  CMPE42D1 DP_OP_54J1_124_1025_U88 ( .A(DP_OP_54J1_124_1025_n138), .B(
        DP_OP_54J1_124_1025_n219), .C(DP_OP_54J1_124_1025_n134), .CIX(
        DP_OP_54J1_124_1025_n136), .D(DP_OP_54J1_124_1025_n135), .CO(
        DP_OP_54J1_124_1025_n131), .COX(DP_OP_54J1_124_1025_n130), .S(
        DP_OP_54J1_124_1025_n132) );
  CMPE42D1 DP_OP_54J1_124_1025_U85 ( .A(DP_OP_54J1_124_1025_n133), .B(
        DP_OP_54J1_124_1025_n218), .C(DP_OP_54J1_124_1025_n129), .CIX(
        DP_OP_54J1_124_1025_n131), .D(DP_OP_54J1_124_1025_n130), .CO(
        DP_OP_54J1_124_1025_n126), .COX(DP_OP_54J1_124_1025_n125), .S(
        DP_OP_54J1_124_1025_n127) );
  CMPE42D1 DP_OP_54J1_124_1025_U82 ( .A(DP_OP_54J1_124_1025_n128), .B(
        DP_OP_54J1_124_1025_n217), .C(DP_OP_54J1_124_1025_n124), .CIX(
        DP_OP_54J1_124_1025_n126), .D(DP_OP_54J1_124_1025_n125), .CO(
        DP_OP_54J1_124_1025_n121), .COX(DP_OP_54J1_124_1025_n120), .S(
        DP_OP_54J1_124_1025_n122) );
  CMPE42D1 DP_OP_54J1_124_1025_U79 ( .A(DP_OP_54J1_124_1025_n123), .B(
        DP_OP_54J1_124_1025_n216), .C(DP_OP_54J1_124_1025_n119), .CIX(
        DP_OP_54J1_124_1025_n121), .D(DP_OP_54J1_124_1025_n120), .CO(
        DP_OP_54J1_124_1025_n116), .COX(DP_OP_54J1_124_1025_n115), .S(
        DP_OP_54J1_124_1025_n117) );
  CMPE42D1 DP_OP_54J1_124_1025_U76 ( .A(DP_OP_54J1_124_1025_n118), .B(
        DP_OP_54J1_124_1025_n215), .C(DP_OP_54J1_124_1025_n114), .CIX(
        DP_OP_54J1_124_1025_n116), .D(DP_OP_54J1_124_1025_n115), .CO(
        DP_OP_54J1_124_1025_n111), .COX(DP_OP_54J1_124_1025_n110), .S(
        DP_OP_54J1_124_1025_n112) );
  CMPE42D1 DP_OP_54J1_124_1025_U73 ( .A(DP_OP_54J1_124_1025_n113), .B(
        DP_OP_54J1_124_1025_n214), .C(DP_OP_54J1_124_1025_n109), .CIX(
        DP_OP_54J1_124_1025_n111), .D(DP_OP_54J1_124_1025_n110), .CO(
        DP_OP_54J1_124_1025_n106), .COX(DP_OP_54J1_124_1025_n105), .S(
        DP_OP_54J1_124_1025_n107) );
  CMPE42D1 DP_OP_54J1_124_1025_U70 ( .A(DP_OP_54J1_124_1025_n108), .B(
        DP_OP_54J1_124_1025_n213), .C(DP_OP_54J1_124_1025_n104), .CIX(
        DP_OP_54J1_124_1025_n106), .D(DP_OP_54J1_124_1025_n105), .CO(
        DP_OP_54J1_124_1025_n101), .COX(DP_OP_54J1_124_1025_n100), .S(
        DP_OP_54J1_124_1025_n102) );
  CMPE42D1 DP_OP_54J1_124_1025_U67 ( .A(DP_OP_54J1_124_1025_n103), .B(
        DP_OP_54J1_124_1025_n212), .C(DP_OP_54J1_124_1025_n99), .CIX(
        DP_OP_54J1_124_1025_n101), .D(DP_OP_54J1_124_1025_n100), .CO(
        DP_OP_54J1_124_1025_n96), .COX(DP_OP_54J1_124_1025_n95), .S(
        DP_OP_54J1_124_1025_n97) );
  CMPE42D1 DP_OP_54J1_124_1025_U64 ( .A(DP_OP_54J1_124_1025_n98), .B(
        DP_OP_54J1_124_1025_n211), .C(DP_OP_54J1_124_1025_n94), .CIX(
        DP_OP_54J1_124_1025_n96), .D(DP_OP_54J1_124_1025_n95), .CO(
        DP_OP_54J1_124_1025_n91), .COX(DP_OP_54J1_124_1025_n90), .S(
        DP_OP_54J1_124_1025_n92) );
  CMPE42D1 DP_OP_54J1_124_1025_U61 ( .A(DP_OP_54J1_124_1025_n93), .B(
        DP_OP_54J1_124_1025_n210), .C(DP_OP_54J1_124_1025_n89), .CIX(
        DP_OP_54J1_124_1025_n91), .D(DP_OP_54J1_124_1025_n90), .CO(
        DP_OP_54J1_124_1025_n86), .COX(DP_OP_54J1_124_1025_n85), .S(
        DP_OP_54J1_124_1025_n87) );
  CMPE42D1 DP_OP_54J1_124_1025_U58 ( .A(DP_OP_54J1_124_1025_n88), .B(
        DP_OP_54J1_124_1025_n209), .C(DP_OP_54J1_124_1025_n84), .CIX(
        DP_OP_54J1_124_1025_n86), .D(DP_OP_54J1_124_1025_n85), .CO(
        DP_OP_54J1_124_1025_n81), .COX(DP_OP_54J1_124_1025_n80), .S(
        DP_OP_54J1_124_1025_n82) );
  CMPE42D1 DP_OP_54J1_124_1025_U55 ( .A(DP_OP_54J1_124_1025_n83), .B(
        DP_OP_54J1_124_1025_n208), .C(DP_OP_54J1_124_1025_n79), .CIX(
        DP_OP_54J1_124_1025_n81), .D(DP_OP_54J1_124_1025_n80), .CO(
        DP_OP_54J1_124_1025_n76), .COX(DP_OP_54J1_124_1025_n75), .S(
        DP_OP_54J1_124_1025_n77) );
  CMPE42D1 DP_OP_54J1_124_1025_U52 ( .A(DP_OP_54J1_124_1025_n78), .B(
        DP_OP_54J1_124_1025_n207), .C(DP_OP_54J1_124_1025_n74), .CIX(
        DP_OP_54J1_124_1025_n76), .D(DP_OP_54J1_124_1025_n75), .CO(
        DP_OP_54J1_124_1025_n71), .COX(DP_OP_54J1_124_1025_n70), .S(
        DP_OP_54J1_124_1025_n72) );
  CMPE42D1 DP_OP_54J1_124_1025_U49 ( .A(DP_OP_54J1_124_1025_n73), .B(
        DP_OP_54J1_124_1025_n206), .C(DP_OP_54J1_124_1025_n69), .CIX(
        DP_OP_54J1_124_1025_n71), .D(DP_OP_54J1_124_1025_n70), .CO(
        DP_OP_54J1_124_1025_n66), .COX(DP_OP_54J1_124_1025_n65), .S(
        DP_OP_54J1_124_1025_n67) );
  CMPE42D1 DP_OP_54J1_124_1025_U47 ( .A(DP_OP_54J1_124_1025_n68), .B(
        DP_OP_54J1_124_1025_n205), .C(DP_OP_54J1_124_1025_n64), .CIX(
        DP_OP_54J1_124_1025_n66), .D(DP_OP_54J1_124_1025_n65), .CO(
        DP_OP_54J1_124_1025_n61), .COX(DP_OP_54J1_124_1025_n60), .S(
        DP_OP_54J1_124_1025_n62) );
  CMPE42D1 DP_OP_54J1_124_1025_U45 ( .A(DP_OP_54J1_124_1025_n63), .B(
        DP_OP_54J1_124_1025_n204), .C(DP_OP_54J1_124_1025_n59), .CIX(
        DP_OP_54J1_124_1025_n61), .D(DP_OP_54J1_124_1025_n60), .CO(
        DP_OP_54J1_124_1025_n56), .COX(DP_OP_54J1_124_1025_n55), .S(
        DP_OP_54J1_124_1025_n57) );
  CMPE42D1 DP_OP_54J1_124_1025_U43 ( .A(DP_OP_54J1_124_1025_n54), .B(
        DP_OP_54J1_124_1025_n58), .C(DP_OP_54J1_124_1025_n55), .CIX(
        DP_OP_54J1_124_1025_n156), .D(DP_OP_54J1_124_1025_n56), .CO(
        DP_OP_54J1_124_1025_n51), .COX(DP_OP_54J1_124_1025_n50), .S(
        DP_OP_54J1_124_1025_n52) );
  CMPE42D1 DP_OP_54J1_124_1025_U41 ( .A(DP_OP_54J1_124_1025_n49), .B(
        DP_OP_54J1_124_1025_n53), .C(DP_OP_54J1_124_1025_n50), .CIX(
        DP_OP_54J1_124_1025_n155), .D(DP_OP_54J1_124_1025_n51), .CO(
        DP_OP_54J1_124_1025_n46), .COX(DP_OP_54J1_124_1025_n45), .S(
        DP_OP_54J1_124_1025_n47) );
  CMPE42D1 DP_OP_54J1_124_1025_U40 ( .A(n33), .B(impl_midpoint_product[4]), 
        .C(DP_OP_54J1_124_1025_n48), .CIX(DP_OP_54J1_124_1025_n46), .D(
        DP_OP_54J1_124_1025_n45), .CO(DP_OP_54J1_124_1025_n43), .COX(
        DP_OP_54J1_124_1025_n42), .S(DP_OP_54J1_124_1025_n44) );
  CMPE42D1 DP_OP_54J1_124_1025_U39 ( .A(n34), .B(impl_midpoint_product[5]), 
        .C(DP_OP_54J1_124_1025_n42), .CIX(DP_OP_54J1_124_1025_n43), .D(
        DP_OP_54J1_124_1025_n544), .CO(DP_OP_54J1_124_1025_n40), .COX(
        DP_OP_54J1_124_1025_n39), .S(DP_OP_54J1_124_1025_n41) );
  CMPE42D1 mult_x_4_U71 ( .A(mult_x_4_n199), .B(mult_x_4_n224), .C(
        mult_x_4_n149), .CIX(mult_x_4_n174), .D(mult_x_4_n120), .CO(
        mult_x_4_n116), .COX(mult_x_4_n115), .S(mult_x_4_n117) );
  CMPE42D1 mult_x_4_U70 ( .A(mult_x_4_n198), .B(mult_x_4_n223), .C(
        mult_x_4_n148), .CIX(mult_x_4_n115), .D(mult_x_4_n173), .CO(
        mult_x_4_n113), .COX(mult_x_4_n112), .S(mult_x_4_n114) );
  CMPE42D1 mult_x_4_U69 ( .A(mult_x_4_n197), .B(mult_x_4_n222), .C(
        mult_x_4_n147), .CIX(mult_x_4_n112), .D(mult_x_4_n172), .CO(
        mult_x_4_n110), .COX(mult_x_4_n109), .S(mult_x_4_n111) );
  CMPE42D1 mult_x_4_U68 ( .A(mult_x_4_n196), .B(mult_x_4_n221), .C(
        mult_x_4_n146), .CIX(mult_x_4_n109), .D(mult_x_4_n171), .CO(
        mult_x_4_n107), .COX(mult_x_4_n106), .S(mult_x_4_n108) );
  CMPE42D1 mult_x_4_U67 ( .A(mult_x_4_n195), .B(mult_x_4_n220), .C(
        mult_x_4_n145), .CIX(mult_x_4_n106), .D(mult_x_4_n170), .CO(
        mult_x_4_n104), .COX(mult_x_4_n103), .S(mult_x_4_n105) );
  CMPE42D1 mult_x_4_U66 ( .A(mult_x_4_n194), .B(mult_x_4_n219), .C(
        mult_x_4_n144), .CIX(mult_x_4_n103), .D(mult_x_4_n169), .CO(
        mult_x_4_n101), .COX(mult_x_4_n100), .S(mult_x_4_n102) );
  CMPE42D1 mult_x_4_U65 ( .A(mult_x_4_n193), .B(mult_x_4_n218), .C(
        mult_x_4_n143), .CIX(mult_x_4_n100), .D(mult_x_4_n168), .CO(
        mult_x_4_n98), .COX(mult_x_4_n97), .S(mult_x_4_n99) );
  CMPE42D1 mult_x_4_U64 ( .A(mult_x_4_n192), .B(mult_x_4_n217), .C(
        mult_x_4_n142), .CIX(mult_x_4_n97), .D(mult_x_4_n167), .CO(
        mult_x_4_n95), .COX(mult_x_4_n94), .S(mult_x_4_n96) );
  CMPE42D1 mult_x_4_U63 ( .A(mult_x_4_n191), .B(mult_x_4_n216), .C(
        mult_x_4_n141), .CIX(mult_x_4_n94), .D(mult_x_4_n166), .CO(
        mult_x_4_n92), .COX(mult_x_4_n91), .S(mult_x_4_n93) );
  CMPE42D1 mult_x_4_U62 ( .A(mult_x_4_n190), .B(mult_x_4_n215), .C(
        mult_x_4_n140), .CIX(mult_x_4_n91), .D(mult_x_4_n165), .CO(
        mult_x_4_n89), .COX(mult_x_4_n88), .S(mult_x_4_n90) );
  CMPE42D1 mult_x_4_U61 ( .A(mult_x_4_n189), .B(mult_x_4_n214), .C(
        mult_x_4_n139), .CIX(mult_x_4_n88), .D(mult_x_4_n164), .CO(
        mult_x_4_n86), .COX(mult_x_4_n85), .S(mult_x_4_n87) );
  CMPE42D1 mult_x_4_U60 ( .A(mult_x_4_n188), .B(mult_x_4_n213), .C(
        mult_x_4_n138), .CIX(mult_x_4_n85), .D(mult_x_4_n163), .CO(
        mult_x_4_n83), .COX(mult_x_4_n82), .S(mult_x_4_n84) );
  CMPE42D1 mult_x_4_U59 ( .A(mult_x_4_n187), .B(mult_x_4_n212), .C(
        mult_x_4_n137), .CIX(mult_x_4_n82), .D(mult_x_4_n162), .CO(
        mult_x_4_n80), .COX(mult_x_4_n79), .S(mult_x_4_n81) );
  CMPE42D1 mult_x_4_U58 ( .A(mult_x_4_n186), .B(mult_x_4_n211), .C(
        mult_x_4_n136), .CIX(mult_x_4_n79), .D(mult_x_4_n161), .CO(
        mult_x_4_n77), .COX(mult_x_4_n76), .S(mult_x_4_n78) );
  CMPE42D1 mult_x_4_U57 ( .A(mult_x_4_n185), .B(mult_x_4_n210), .C(
        mult_x_4_n135), .CIX(mult_x_4_n76), .D(mult_x_4_n160), .CO(
        mult_x_4_n74), .COX(mult_x_4_n73), .S(mult_x_4_n75) );
  CMPE42D1 mult_x_4_U56 ( .A(mult_x_4_n184), .B(mult_x_4_n209), .C(
        mult_x_4_n134), .CIX(mult_x_4_n73), .D(mult_x_4_n159), .CO(
        mult_x_4_n71), .COX(mult_x_4_n70), .S(mult_x_4_n72) );
  CMPE42D1 mult_x_4_U55 ( .A(mult_x_4_n183), .B(mult_x_4_n208), .C(
        mult_x_4_n133), .CIX(mult_x_4_n70), .D(mult_x_4_n158), .CO(
        mult_x_4_n68), .COX(mult_x_4_n67), .S(mult_x_4_n69) );
  CMPE42D1 mult_x_4_U54 ( .A(mult_x_4_n182), .B(mult_x_4_n207), .C(
        mult_x_4_n132), .CIX(mult_x_4_n67), .D(mult_x_4_n157), .CO(
        mult_x_4_n65), .COX(mult_x_4_n64), .S(mult_x_4_n66) );
  CMPE42D1 mult_x_4_U53 ( .A(mult_x_4_n181), .B(mult_x_4_n206), .C(
        mult_x_4_n131), .CIX(mult_x_4_n64), .D(mult_x_4_n156), .CO(
        mult_x_4_n62), .COX(mult_x_4_n61), .S(mult_x_4_n63) );
  CMPE42D1 mult_x_4_U52 ( .A(mult_x_4_n180), .B(mult_x_4_n205), .C(
        mult_x_4_n130), .CIX(mult_x_4_n61), .D(mult_x_4_n155), .CO(
        mult_x_4_n59), .COX(mult_x_4_n58), .S(mult_x_4_n60) );
  CMPE42D1 mult_x_4_U51 ( .A(mult_x_4_n179), .B(mult_x_4_n204), .C(
        mult_x_4_n129), .CIX(mult_x_4_n58), .D(mult_x_4_n154), .CO(
        mult_x_4_n56), .COX(mult_x_4_n55), .S(mult_x_4_n57) );
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
  FA1D0 intadd_0_U26 ( .A(DP_OP_54J1_124_1025_n149), .B(intadd_0_B_0_), .CI(
        intadd_0_CI), .CO(intadd_0_n25), .S(intadd_0_SUM_0_) );
  FA1D0 intadd_0_U25 ( .A(DP_OP_54J1_124_1025_n142), .B(intadd_0_B_1_), .CI(
        intadd_0_n25), .CO(intadd_0_n24), .S(intadd_0_SUM_1_) );
  FA1D0 intadd_0_U24 ( .A(DP_OP_54J1_124_1025_n137), .B(intadd_0_B_2_), .CI(
        intadd_0_n24), .CO(intadd_0_n23), .S(intadd_0_SUM_2_) );
  FA1D0 intadd_0_U23 ( .A(DP_OP_54J1_124_1025_n132), .B(intadd_0_B_3_), .CI(
        intadd_0_n23), .CO(intadd_0_n22), .S(intadd_0_SUM_3_) );
  FA1D0 intadd_0_U22 ( .A(DP_OP_54J1_124_1025_n127), .B(intadd_0_B_4_), .CI(
        intadd_0_n22), .CO(intadd_0_n21), .S(intadd_0_SUM_4_) );
  FA1D0 intadd_0_U21 ( .A(DP_OP_54J1_124_1025_n122), .B(intadd_0_B_5_), .CI(
        intadd_0_n21), .CO(intadd_0_n20), .S(intadd_0_SUM_5_) );
  FA1D0 intadd_0_U20 ( .A(DP_OP_54J1_124_1025_n117), .B(intadd_0_B_6_), .CI(
        intadd_0_n20), .CO(intadd_0_n19), .S(intadd_0_SUM_6_) );
  FA1D0 intadd_0_U19 ( .A(DP_OP_54J1_124_1025_n112), .B(intadd_0_B_7_), .CI(
        intadd_0_n19), .CO(intadd_0_n18), .S(intadd_0_SUM_7_) );
  FA1D0 intadd_0_U18 ( .A(DP_OP_54J1_124_1025_n107), .B(intadd_0_B_8_), .CI(
        intadd_0_n18), .CO(intadd_0_n17), .S(intadd_0_SUM_8_) );
  FA1D0 intadd_0_U17 ( .A(DP_OP_54J1_124_1025_n102), .B(intadd_0_B_9_), .CI(
        intadd_0_n17), .CO(intadd_0_n16), .S(intadd_0_SUM_9_) );
  FA1D0 intadd_0_U16 ( .A(DP_OP_54J1_124_1025_n97), .B(intadd_0_B_10_), .CI(
        intadd_0_n16), .CO(intadd_0_n15), .S(intadd_0_SUM_10_) );
  FA1D0 intadd_0_U15 ( .A(DP_OP_54J1_124_1025_n92), .B(intadd_0_B_11_), .CI(
        intadd_0_n15), .CO(intadd_0_n14), .S(intadd_0_SUM_11_) );
  FA1D0 intadd_0_U14 ( .A(DP_OP_54J1_124_1025_n87), .B(intadd_0_B_12_), .CI(
        intadd_0_n14), .CO(intadd_0_n13), .S(intadd_0_SUM_12_) );
  FA1D0 intadd_0_U13 ( .A(DP_OP_54J1_124_1025_n82), .B(intadd_0_B_13_), .CI(
        intadd_0_n13), .CO(intadd_0_n12), .S(intadd_0_SUM_13_) );
  FA1D0 intadd_0_U12 ( .A(DP_OP_54J1_124_1025_n77), .B(intadd_0_B_14_), .CI(
        intadd_0_n12), .CO(intadd_0_n11), .S(intadd_0_SUM_14_) );
  FA1D0 intadd_0_U11 ( .A(DP_OP_54J1_124_1025_n72), .B(intadd_0_B_15_), .CI(
        intadd_0_n11), .CO(intadd_0_n10), .S(intadd_0_SUM_15_) );
  FA1D0 intadd_0_U8 ( .A(DP_OP_54J1_124_1025_n57), .B(intadd_0_B_18_), .CI(
        intadd_0_n8), .CO(intadd_0_n7), .S(intadd_0_SUM_18_) );
  FA1D0 intadd_0_U7 ( .A(DP_OP_54J1_124_1025_n52), .B(intadd_0_B_19_), .CI(
        intadd_0_n7), .CO(intadd_0_n6), .S(intadd_0_SUM_19_) );
  FA1D0 intadd_0_U6 ( .A(DP_OP_54J1_124_1025_n47), .B(intadd_0_B_20_), .CI(
        intadd_0_n6), .CO(intadd_0_n5), .S(intadd_0_SUM_20_) );
  FA1D0 intadd_0_U5 ( .A(DP_OP_54J1_124_1025_n44), .B(DP_OP_54J1_124_1025_n544), .CI(intadd_0_n5), .CO(intadd_0_n4), .S(intadd_0_SUM_21_) );
  FA1D0 intadd_0_U4 ( .A(intadd_0_A_22_), .B(DP_OP_54J1_124_1025_n41), .CI(
        intadd_0_n4), .CO(intadd_0_n3), .S(intadd_0_SUM_22_) );
  FA1D0 intadd_0_U3 ( .A(DP_OP_54J1_124_1025_n40), .B(intadd_0_B_23_), .CI(
        intadd_0_n3), .CO(intadd_0_n2), .S(intadd_0_SUM_23_) );
  FA1D0 intadd_0_U2 ( .A(intadd_0_A_24_), .B(intadd_0_B_24_), .CI(intadd_0_n2), 
        .CO(intadd_0_n1), .S(intadd_0_SUM_24_) );
  FA1D0 intadd_1_U24 ( .A(mult_x_4_n116), .B(mult_x_4_n114), .CI(intadd_1_CI), 
        .CO(intadd_1_n23), .S(intadd_1_SUM_0_) );
  FA1D0 intadd_1_U23 ( .A(mult_x_4_n111), .B(mult_x_4_n113), .CI(intadd_1_n23), 
        .CO(intadd_1_n22), .S(intadd_1_SUM_1_) );
  FA1D0 intadd_1_U22 ( .A(mult_x_4_n108), .B(mult_x_4_n110), .CI(intadd_1_n22), 
        .CO(intadd_1_n21), .S(intadd_1_SUM_2_) );
  FA1D0 intadd_1_U21 ( .A(mult_x_4_n105), .B(mult_x_4_n107), .CI(intadd_1_n21), 
        .CO(intadd_1_n20), .S(intadd_1_SUM_3_) );
  FA1D0 intadd_1_U20 ( .A(mult_x_4_n102), .B(mult_x_4_n104), .CI(intadd_1_n20), 
        .CO(intadd_1_n19), .S(intadd_1_SUM_4_) );
  FA1D0 intadd_1_U19 ( .A(mult_x_4_n99), .B(mult_x_4_n101), .CI(intadd_1_n19), 
        .CO(intadd_1_n18), .S(intadd_1_SUM_5_) );
  FA1D0 intadd_1_U18 ( .A(mult_x_4_n96), .B(mult_x_4_n98), .CI(intadd_1_n18), 
        .CO(intadd_1_n17), .S(intadd_1_SUM_6_) );
  FA1D0 intadd_1_U17 ( .A(mult_x_4_n93), .B(mult_x_4_n95), .CI(intadd_1_n17), 
        .CO(intadd_1_n16), .S(intadd_1_SUM_7_) );
  FA1D0 intadd_1_U16 ( .A(mult_x_4_n90), .B(mult_x_4_n92), .CI(intadd_1_n16), 
        .CO(intadd_1_n15), .S(intadd_1_SUM_8_) );
  FA1D0 intadd_1_U15 ( .A(mult_x_4_n87), .B(mult_x_4_n89), .CI(intadd_1_n15), 
        .CO(intadd_1_n14), .S(intadd_1_SUM_9_) );
  FA1D0 intadd_1_U14 ( .A(mult_x_4_n84), .B(mult_x_4_n86), .CI(intadd_1_n14), 
        .CO(intadd_1_n13), .S(intadd_1_SUM_10_) );
  FA1D0 intadd_1_U13 ( .A(mult_x_4_n81), .B(mult_x_4_n83), .CI(intadd_1_n13), 
        .CO(intadd_1_n12), .S(intadd_1_SUM_11_) );
  FA1D0 intadd_1_U12 ( .A(mult_x_4_n78), .B(mult_x_4_n80), .CI(intadd_1_n12), 
        .CO(intadd_1_n11), .S(intadd_1_SUM_12_) );
  FA1D0 intadd_1_U11 ( .A(mult_x_4_n75), .B(mult_x_4_n77), .CI(intadd_1_n11), 
        .CO(intadd_1_n10), .S(intadd_1_SUM_13_) );
  FA1D0 intadd_1_U10 ( .A(mult_x_4_n72), .B(mult_x_4_n74), .CI(intadd_1_n10), 
        .CO(intadd_1_n9), .S(intadd_1_SUM_14_) );
  FA1D0 intadd_1_U9 ( .A(mult_x_4_n69), .B(mult_x_4_n71), .CI(intadd_1_n9), 
        .CO(intadd_1_n8), .S(intadd_1_SUM_15_) );
  FA1D0 intadd_1_U8 ( .A(mult_x_4_n66), .B(mult_x_4_n68), .CI(intadd_1_n8), 
        .CO(intadd_1_n7), .S(intadd_1_SUM_16_) );
  FA1D0 intadd_1_U7 ( .A(mult_x_4_n63), .B(mult_x_4_n65), .CI(intadd_1_n7), 
        .CO(intadd_1_n6), .S(intadd_1_SUM_17_) );
  FA1D0 intadd_1_U6 ( .A(mult_x_4_n60), .B(mult_x_4_n62), .CI(intadd_1_n6), 
        .CO(intadd_1_n5), .S(intadd_1_SUM_18_) );
  FA1D0 intadd_1_U5 ( .A(mult_x_4_n57), .B(mult_x_4_n59), .CI(intadd_1_n5), 
        .CO(intadd_1_n4), .S(intadd_1_SUM_19_) );
  FA1D0 intadd_1_U4 ( .A(mult_x_4_n56), .B(intadd_1_B_20_), .CI(intadd_1_n4), 
        .CO(intadd_1_n3), .S(intadd_1_SUM_20_) );
  FA1D0 intadd_1_U3 ( .A(intadd_1_A_21_), .B(intadd_1_B_21_), .CI(intadd_1_n3), 
        .CO(intadd_1_n2), .S(intadd_1_SUM_21_) );
  FA1D0 intadd_1_U2 ( .A(intadd_1_A_22_), .B(intadd_1_B_22_), .CI(intadd_1_n2), 
        .CO(intadd_1_n1), .S(intadd_1_SUM_22_) );
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
  INVD0 U68 ( .I(y[2]), .ZN(n27) );
  INVD0 U69 ( .I(n27), .ZN(n28) );
  INVD0 U70 ( .I(x[19]), .ZN(n29) );
  INVD0 U71 ( .I(n29), .ZN(n30) );
  INVD0 U72 ( .I(x[18]), .ZN(n31) );
  INVD0 U73 ( .I(n31), .ZN(n32) );
  INVD0 U74 ( .I(x[20]), .ZN(n33) );
  INVD0 U75 ( .I(n33), .ZN(n34) );
  OAI22D0 U76 ( .A1(n137), .A2(n33), .B1(n30), .B2(n192), .ZN(n270) );
  OAI22D0 U77 ( .A1(n137), .A2(n30), .B1(n32), .B2(n192), .ZN(
        DP_OP_54J1_124_1025_n204) );
  INVD0 U79 ( .I(x[0]), .ZN(n35) );
  INVD0 U80 ( .I(n35), .ZN(n36) );
  INVD0 U81 ( .I(x[2]), .ZN(n37) );
  INVD0 U82 ( .I(n37), .ZN(n38) );
  INVD0 U83 ( .I(y[17]), .ZN(n39) );
  INVD0 U84 ( .I(n39), .ZN(n40) );
  INVD0 U85 ( .I(n130), .ZN(n41) );
  OA31D0 U86 ( .A1(n41), .A2(n36), .A3(n202), .B(n200), .Z(n201) );
  OAI22D0 U87 ( .A1(n137), .A2(n41), .B1(n36), .B2(n192), .ZN(
        DP_OP_54J1_124_1025_n222) );
  OAI22D0 U88 ( .A1(n137), .A2(n38), .B1(n41), .B2(n192), .ZN(
        DP_OP_54J1_124_1025_n221) );
  INVD0 U89 ( .I(x[1]), .ZN(n130) );
  OA33D0 U90 ( .A1(n37), .A2(n264), .A3(n130), .B1(x[1]), .B2(n192), .B3(n38), 
        .Z(n131) );
  NR2D0 U91 ( .A1(x[1]), .A2(n36), .ZN(n63) );
  OAI21D0 U92 ( .A1(n36), .A2(n202), .B(x[1]), .ZN(n62) );
  BUFFD0 U93 ( .I(y[22]), .Z(n175) );
  BUFFD0 U94 ( .I(x[21]), .Z(n252) );
  INVD0 U95 ( .I(n252), .ZN(n261) );
  BUFFD0 U96 ( .I(y[21]), .Z(n257) );
  INVD0 U97 ( .I(n257), .ZN(n202) );
  NR2D0 U98 ( .A1(n261), .A2(n202), .ZN(n269) );
  INVD0 U99 ( .I(n268), .ZN(n67) );
  AOI21D0 U100 ( .A1(n202), .A2(n261), .B(n269), .ZN(n65) );
  INVD0 U101 ( .I(n65), .ZN(n73) );
  NR2D0 U102 ( .A1(n67), .A2(n73), .ZN(n66) );
  FA1D0 U103 ( .A(x[22]), .B(n175), .CI(n269), .CO(n263), .S(n268) );
  NR2D0 U104 ( .A1(n66), .A2(n263), .ZN(intadd_0_A_24_) );
  INVD0 U105 ( .I(intadd_0_SUM_22_), .ZN(n136) );
  INVD0 U106 ( .I(n175), .ZN(n259) );
  CKAN2D0 U107 ( .A1(n259), .A2(n202), .Z(n184) );
  INVD1 U108 ( .I(n184), .ZN(n192) );
  NR2D0 U109 ( .A1(n136), .A2(n192), .ZN(mult_x_4_n208) );
  INVD0 U110 ( .I(intadd_0_SUM_23_), .ZN(n195) );
  NR2D0 U111 ( .A1(n192), .A2(n195), .ZN(mult_x_4_n207) );
  CKND2D0 U112 ( .A1(n175), .A2(n202), .ZN(n139) );
  INVD0 U113 ( .I(n139), .ZN(n193) );
  INVD0 U114 ( .I(intadd_0_A_24_), .ZN(n42) );
  MUX2ND0 U115 ( .I0(n42), .I1(intadd_0_A_24_), .S(intadd_0_n1), .ZN(n138) );
  INVD0 U116 ( .I(n138), .ZN(n140) );
  OAI21D1 U117 ( .A1(n175), .A2(n202), .B(n139), .ZN(n105) );
  INVD0 U118 ( .I(n105), .ZN(n137) );
  INVD0 U119 ( .I(intadd_0_SUM_24_), .ZN(n194) );
  AOI22D0 U120 ( .A1(n193), .A2(n140), .B1(n137), .B2(n194), .ZN(n273) );
  AOI21D0 U121 ( .A1(intadd_0_SUM_23_), .A2(n192), .B(mult_x_4_n208), .ZN(n276) );
  NR2D0 U122 ( .A1(n42), .A2(intadd_0_n1), .ZN(n171) );
  CKND2D0 U123 ( .A1(n171), .A2(n139), .ZN(n272) );
  OAI21D0 U124 ( .A1(n273), .A2(n276), .B(n272), .ZN(n46) );
  OAI22D0 U125 ( .A1(n171), .A2(n139), .B1(n105), .B2(n138), .ZN(n44) );
  AOI21D0 U126 ( .A1(intadd_0_SUM_24_), .A2(n192), .B(mult_x_4_n207), .ZN(n43)
         );
  XOR2D0 U127 ( .A1(n44), .A2(n43), .Z(n45) );
  XNR3D1 U128 ( .A1(n46), .A2(n45), .A3(intadd_1_n1), .ZN(n277) );
  MUX2D0 U129 ( .I0(C6_DATA2_1), .I1(impl_exponent_input[1]), .S(n277), .Z(
        result[24]) );
  XNR2D0 U130 ( .A1(impl_exponent_input[2]), .A2(DP_OP_56J1_125_5844_n6), .ZN(
        n47) );
  MUX2D0 U131 ( .I0(n47), .I1(impl_exponent_input[2]), .S(n277), .Z(result[25]) );
  OR2D0 U132 ( .A1(DP_OP_56J1_125_5844_n6), .A2(impl_exponent_input[2]), .Z(
        n49) );
  XNR2D0 U133 ( .A1(impl_exponent_input[3]), .A2(n49), .ZN(n48) );
  MUX2D0 U134 ( .I0(n48), .I1(impl_exponent_input[3]), .S(n277), .Z(result[26]) );
  OR2D0 U135 ( .A1(n49), .A2(impl_exponent_input[3]), .Z(n51) );
  XNR2D0 U136 ( .A1(n51), .A2(impl_exponent_input[4]), .ZN(n50) );
  MUX2D0 U137 ( .I0(n50), .I1(impl_exponent_input[4]), .S(n277), .Z(result[27]) );
  OR2D0 U138 ( .A1(impl_exponent_input[4]), .A2(n51), .Z(n53) );
  XNR2D0 U139 ( .A1(n53), .A2(impl_exponent_input[5]), .ZN(n52) );
  MUX2D0 U140 ( .I0(n52), .I1(impl_exponent_input[5]), .S(n277), .Z(result[28]) );
  OR2D0 U141 ( .A1(impl_exponent_input[5]), .A2(n53), .Z(n55) );
  XNR2D0 U142 ( .A1(n55), .A2(impl_exponent_input[6]), .ZN(n54) );
  MUX2D0 U143 ( .I0(n54), .I1(impl_exponent_input[6]), .S(n277), .Z(result[29]) );
  MUX2D0 U148 ( .I0(n59), .I1(n58), .S(n277), .Z(result[30]) );
  NR2D0 U149 ( .A1(n261), .A2(y[0]), .ZN(n158) );
  INVD0 U150 ( .I(y[1]), .ZN(n208) );
  CKND2D0 U151 ( .A1(y[1]), .A2(n27), .ZN(n60) );
  INVD0 U152 ( .I(y[0]), .ZN(n205) );
  INVD0 U153 ( .I(x[22]), .ZN(n149) );
  CKND2D0 U154 ( .A1(n261), .A2(n149), .ZN(n162) );
  OAI21D0 U155 ( .A1(n149), .A2(n261), .B(n162), .ZN(n161) );
  OAI222D0 U156 ( .A1(n60), .A2(n252), .B1(n60), .B2(n205), .C1(n205), .C2(
        n161), .ZN(n61) );
  AOI221D0 U157 ( .A1(n158), .A2(n28), .B1(n208), .B2(n28), .C(n61), .ZN(
        DP_OP_54J1_124_1025_n151) );
  CKND2D0 U158 ( .A1(n38), .A2(n62), .ZN(n64) );
  CKND2D0 U159 ( .A1(n36), .A2(n105), .ZN(n200) );
  OAI221D0 U160 ( .A1(n64), .A2(n63), .B1(n38), .B2(n62), .C(n200), .ZN(
        impl_x_rounding_lut_N251) );
  NR2D0 U161 ( .A1(n65), .A2(n263), .ZN(impl_midpoint_product[4]) );
  AOI21D0 U162 ( .A1(n73), .A2(n67), .B(n66), .ZN(n151) );
  INVD0 U163 ( .I(n263), .ZN(n69) );
  NR4D0 U164 ( .A1(n259), .A2(n202), .A3(n261), .A4(n149), .ZN(n258) );
  OAI21D0 U165 ( .A1(n258), .A2(n69), .B(n151), .ZN(n68) );
  OAI21D0 U166 ( .A1(n151), .A2(n69), .B(n68), .ZN(impl_midpoint_product[5])
         );
  INVD0 U167 ( .I(x[17]), .ZN(n76) );
  AOI22D0 U168 ( .A1(n257), .A2(n33), .B1(n34), .B2(n202), .ZN(n72) );
  INVD0 U169 ( .I(n70), .ZN(DP_OP_54J1_124_1025_n58) );
  INVD0 U170 ( .I(x[16]), .ZN(n169) );
  INVD0 U171 ( .I(n72), .ZN(n170) );
  NR2D0 U172 ( .A1(n169), .A2(n170), .ZN(DP_OP_54J1_124_1025_n63) );
  INVD0 U173 ( .I(x[15]), .ZN(n79) );
  CKND2D0 U174 ( .A1(n79), .A2(n71), .ZN(DP_OP_54J1_124_1025_n68) );
  OAI21D0 U175 ( .A1(n71), .A2(n79), .B(DP_OP_54J1_124_1025_n68), .ZN(
        DP_OP_54J1_124_1025_n69) );
  FA1D0 U176 ( .A(n76), .B(n73), .CI(n72), .CO(n70), .S(n74) );
  INVD0 U177 ( .I(n74), .ZN(DP_OP_54J1_124_1025_n59) );
  INVD0 U178 ( .I(x[14]), .ZN(n81) );
  CKND2D0 U180 ( .A1(n81), .A2(n75), .ZN(DP_OP_54J1_124_1025_n73) );
  OAI21D0 U181 ( .A1(n75), .A2(n81), .B(DP_OP_54J1_124_1025_n73), .ZN(
        DP_OP_54J1_124_1025_n74) );
  INVD0 U182 ( .I(x[13]), .ZN(n83) );
  AOI22D0 U183 ( .A1(n257), .A2(n76), .B1(x[17]), .B2(n202), .ZN(n77) );
  CKND2D0 U184 ( .A1(n83), .A2(n77), .ZN(DP_OP_54J1_124_1025_n78) );
  OAI21D0 U185 ( .A1(n77), .A2(n83), .B(DP_OP_54J1_124_1025_n78), .ZN(
        DP_OP_54J1_124_1025_n79) );
  INVD0 U186 ( .I(x[12]), .ZN(n85) );
  AOI22D0 U187 ( .A1(n257), .A2(n169), .B1(x[16]), .B2(n202), .ZN(n78) );
  CKND2D0 U188 ( .A1(n85), .A2(n78), .ZN(DP_OP_54J1_124_1025_n83) );
  OAI21D0 U189 ( .A1(n78), .A2(n85), .B(DP_OP_54J1_124_1025_n83), .ZN(
        DP_OP_54J1_124_1025_n84) );
  INVD0 U190 ( .I(x[11]), .ZN(n87) );
  AOI22D0 U191 ( .A1(n257), .A2(n79), .B1(x[15]), .B2(n202), .ZN(n80) );
  CKND2D0 U192 ( .A1(n87), .A2(n80), .ZN(DP_OP_54J1_124_1025_n88) );
  OAI21D0 U193 ( .A1(n80), .A2(n87), .B(DP_OP_54J1_124_1025_n88), .ZN(
        DP_OP_54J1_124_1025_n89) );
  OAI22D0 U194 ( .A1(n137), .A2(n32), .B1(x[17]), .B2(n192), .ZN(
        DP_OP_54J1_124_1025_n205) );
  INVD0 U195 ( .I(x[10]), .ZN(n89) );
  AOI22D0 U196 ( .A1(n257), .A2(n81), .B1(x[14]), .B2(n202), .ZN(n82) );
  CKND2D0 U197 ( .A1(n89), .A2(n82), .ZN(DP_OP_54J1_124_1025_n93) );
  OAI21D0 U198 ( .A1(n82), .A2(n89), .B(DP_OP_54J1_124_1025_n93), .ZN(
        DP_OP_54J1_124_1025_n94) );
  OAI22D0 U199 ( .A1(n137), .A2(x[17]), .B1(x[16]), .B2(n192), .ZN(
        DP_OP_54J1_124_1025_n206) );
  INVD0 U200 ( .I(x[9]), .ZN(n91) );
  AOI22D0 U201 ( .A1(n257), .A2(n83), .B1(x[13]), .B2(n202), .ZN(n84) );
  CKND2D0 U202 ( .A1(n91), .A2(n84), .ZN(DP_OP_54J1_124_1025_n98) );
  OAI21D0 U203 ( .A1(n84), .A2(n91), .B(DP_OP_54J1_124_1025_n98), .ZN(
        DP_OP_54J1_124_1025_n99) );
  OAI22D0 U204 ( .A1(n137), .A2(x[16]), .B1(x[15]), .B2(n192), .ZN(
        DP_OP_54J1_124_1025_n207) );
  INVD0 U205 ( .I(x[8]), .ZN(n93) );
  AOI22D0 U206 ( .A1(n257), .A2(n85), .B1(x[12]), .B2(n202), .ZN(n86) );
  CKND2D0 U207 ( .A1(n93), .A2(n86), .ZN(DP_OP_54J1_124_1025_n103) );
  OAI21D0 U208 ( .A1(n86), .A2(n93), .B(DP_OP_54J1_124_1025_n103), .ZN(
        DP_OP_54J1_124_1025_n104) );
  OAI22D0 U209 ( .A1(n137), .A2(x[15]), .B1(x[14]), .B2(n192), .ZN(
        DP_OP_54J1_124_1025_n208) );
  INVD0 U210 ( .I(x[7]), .ZN(n95) );
  AOI22D0 U211 ( .A1(n257), .A2(n87), .B1(x[11]), .B2(n202), .ZN(n88) );
  CKND2D0 U212 ( .A1(n95), .A2(n88), .ZN(DP_OP_54J1_124_1025_n108) );
  OAI21D0 U213 ( .A1(n88), .A2(n95), .B(DP_OP_54J1_124_1025_n108), .ZN(
        DP_OP_54J1_124_1025_n109) );
  OAI22D0 U214 ( .A1(n137), .A2(x[14]), .B1(x[13]), .B2(n192), .ZN(
        DP_OP_54J1_124_1025_n209) );
  INVD0 U215 ( .I(x[6]), .ZN(n97) );
  AOI22D0 U216 ( .A1(n257), .A2(n89), .B1(x[10]), .B2(n202), .ZN(n90) );
  CKND2D0 U217 ( .A1(n97), .A2(n90), .ZN(DP_OP_54J1_124_1025_n113) );
  OAI21D0 U218 ( .A1(n90), .A2(n97), .B(DP_OP_54J1_124_1025_n113), .ZN(
        DP_OP_54J1_124_1025_n114) );
  OAI22D0 U219 ( .A1(n137), .A2(x[13]), .B1(x[12]), .B2(n192), .ZN(
        DP_OP_54J1_124_1025_n210) );
  INVD0 U220 ( .I(x[5]), .ZN(n123) );
  AOI22D0 U221 ( .A1(n257), .A2(n91), .B1(x[9]), .B2(n202), .ZN(n92) );
  CKND2D0 U222 ( .A1(n123), .A2(n92), .ZN(DP_OP_54J1_124_1025_n118) );
  OAI21D0 U223 ( .A1(n92), .A2(n123), .B(DP_OP_54J1_124_1025_n118), .ZN(
        DP_OP_54J1_124_1025_n119) );
  OAI22D0 U224 ( .A1(n137), .A2(x[12]), .B1(x[11]), .B2(n192), .ZN(
        DP_OP_54J1_124_1025_n211) );
  INVD0 U225 ( .I(x[4]), .ZN(n99) );
  AOI22D0 U226 ( .A1(n257), .A2(n93), .B1(x[8]), .B2(n202), .ZN(n94) );
  CKND2D0 U227 ( .A1(n99), .A2(n94), .ZN(DP_OP_54J1_124_1025_n123) );
  OAI21D0 U228 ( .A1(n94), .A2(n99), .B(DP_OP_54J1_124_1025_n123), .ZN(
        DP_OP_54J1_124_1025_n124) );
  OAI22D0 U229 ( .A1(n137), .A2(x[11]), .B1(x[10]), .B2(n192), .ZN(
        DP_OP_54J1_124_1025_n212) );
  INVD0 U230 ( .I(x[3]), .ZN(n100) );
  AOI22D0 U231 ( .A1(n257), .A2(n95), .B1(x[7]), .B2(n202), .ZN(n96) );
  CKND2D0 U232 ( .A1(n100), .A2(n96), .ZN(DP_OP_54J1_124_1025_n128) );
  OAI21D0 U233 ( .A1(n96), .A2(n100), .B(DP_OP_54J1_124_1025_n128), .ZN(
        DP_OP_54J1_124_1025_n129) );
  OAI22D0 U234 ( .A1(n137), .A2(x[10]), .B1(x[9]), .B2(n192), .ZN(
        DP_OP_54J1_124_1025_n213) );
  INVD0 U235 ( .I(intadd_0_SUM_0_), .ZN(n179) );
  NR2D0 U236 ( .A1(n179), .A2(n184), .ZN(mult_x_4_n149) );
  AOI22D0 U237 ( .A1(n257), .A2(n97), .B1(x[6]), .B2(n202), .ZN(n98) );
  CKND2D0 U238 ( .A1(n37), .A2(n98), .ZN(DP_OP_54J1_124_1025_n133) );
  OAI21D0 U239 ( .A1(n98), .A2(n37), .B(DP_OP_54J1_124_1025_n133), .ZN(
        DP_OP_54J1_124_1025_n134) );
  OAI22D0 U240 ( .A1(n137), .A2(x[9]), .B1(x[8]), .B2(n192), .ZN(
        DP_OP_54J1_124_1025_n214) );
  OAI22D0 U241 ( .A1(n137), .A2(x[8]), .B1(x[7]), .B2(n192), .ZN(
        DP_OP_54J1_124_1025_n215) );
  AOI22D0 U242 ( .A1(n257), .A2(x[4]), .B1(n99), .B2(n202), .ZN(
        DP_OP_54J1_124_1025_n241) );
  AOI22D0 U243 ( .A1(n257), .A2(x[3]), .B1(n100), .B2(n202), .ZN(
        DP_OP_54J1_124_1025_n242) );
  CKAN2D0 U244 ( .A1(intadd_1_SUM_0_), .A2(n277), .Z(result[0]) );
  OAI22D0 U245 ( .A1(intadd_0_SUM_2_), .A2(n139), .B1(intadd_0_SUM_1_), .B2(
        n105), .ZN(mult_x_4_n174) );
  OAI22D0 U246 ( .A1(n137), .A2(x[7]), .B1(x[6]), .B2(n192), .ZN(
        DP_OP_54J1_124_1025_n216) );
  INVD0 U247 ( .I(intadd_0_SUM_1_), .ZN(n178) );
  AOI22D0 U248 ( .A1(n184), .A2(n179), .B1(n178), .B2(n192), .ZN(mult_x_4_n148) );
  INVD0 U249 ( .I(intadd_0_SUM_4_), .ZN(n106) );
  NR2D0 U250 ( .A1(n106), .A2(n192), .ZN(n174) );
  AO21D0 U251 ( .A1(intadd_0_SUM_5_), .A2(n192), .B(n174), .Z(mult_x_4_n144)
         );
  INVD0 U252 ( .I(intadd_0_SUM_6_), .ZN(n107) );
  CKND2D0 U253 ( .A1(n184), .A2(intadd_0_SUM_5_), .ZN(n176) );
  OAI21D0 U254 ( .A1(n184), .A2(n107), .B(n176), .ZN(mult_x_4_n143) );
  NR2D0 U255 ( .A1(n107), .A2(n192), .ZN(mult_x_4_n224) );
  AO21D0 U256 ( .A1(intadd_0_SUM_7_), .A2(n192), .B(mult_x_4_n224), .Z(
        mult_x_4_n142) );
  INVD0 U257 ( .I(intadd_0_SUM_7_), .ZN(n117) );
  NR2D0 U258 ( .A1(n117), .A2(n192), .ZN(mult_x_4_n223) );
  AO21D0 U259 ( .A1(intadd_0_SUM_8_), .A2(n192), .B(mult_x_4_n223), .Z(
        mult_x_4_n141) );
  INVD0 U260 ( .I(intadd_0_SUM_8_), .ZN(n116) );
  NR2D0 U261 ( .A1(n116), .A2(n192), .ZN(mult_x_4_n222) );
  AO21D0 U262 ( .A1(intadd_0_SUM_9_), .A2(n192), .B(mult_x_4_n222), .Z(
        mult_x_4_n140) );
  INVD0 U263 ( .I(intadd_0_SUM_13_), .ZN(n109) );
  NR2D0 U264 ( .A1(n109), .A2(n192), .ZN(mult_x_4_n217) );
  AO21D0 U265 ( .A1(intadd_0_SUM_14_), .A2(n192), .B(mult_x_4_n217), .Z(
        mult_x_4_n135) );
  INVD0 U266 ( .I(intadd_0_SUM_15_), .ZN(n108) );
  NR2D0 U267 ( .A1(n108), .A2(n192), .ZN(mult_x_4_n215) );
  AO21D0 U268 ( .A1(intadd_0_SUM_16_), .A2(n192), .B(mult_x_4_n215), .Z(
        mult_x_4_n133) );
  INVD0 U269 ( .I(intadd_0_SUM_14_), .ZN(n110) );
  NR2D0 U270 ( .A1(n110), .A2(n192), .ZN(mult_x_4_n216) );
  AO21D0 U271 ( .A1(intadd_0_SUM_15_), .A2(n192), .B(mult_x_4_n216), .Z(
        mult_x_4_n134) );
  INVD0 U272 ( .I(intadd_0_SUM_18_), .ZN(n113) );
  NR2D0 U273 ( .A1(n113), .A2(n192), .ZN(mult_x_4_n212) );
  AO21D0 U274 ( .A1(intadd_0_SUM_19_), .A2(n192), .B(mult_x_4_n212), .Z(
        mult_x_4_n130) );
  INVD0 U275 ( .I(intadd_0_SUM_12_), .ZN(n115) );
  NR2D0 U276 ( .A1(n115), .A2(n192), .ZN(mult_x_4_n218) );
  AO21D0 U277 ( .A1(intadd_0_SUM_13_), .A2(n192), .B(mult_x_4_n218), .Z(
        mult_x_4_n136) );
  INVD0 U278 ( .I(intadd_0_SUM_19_), .ZN(n114) );
  NR2D0 U279 ( .A1(n114), .A2(n192), .ZN(mult_x_4_n211) );
  AO21D0 U280 ( .A1(intadd_0_SUM_20_), .A2(n192), .B(mult_x_4_n211), .Z(
        mult_x_4_n129) );
  INVD0 U281 ( .I(intadd_0_SUM_10_), .ZN(n120) );
  NR2D0 U282 ( .A1(n120), .A2(n192), .ZN(mult_x_4_n220) );
  AO21D0 U283 ( .A1(intadd_0_SUM_11_), .A2(n192), .B(mult_x_4_n220), .Z(
        mult_x_4_n138) );
  INVD0 U284 ( .I(intadd_0_SUM_17_), .ZN(n112) );
  NR2D0 U285 ( .A1(n112), .A2(n192), .ZN(mult_x_4_n213) );
  AO21D0 U286 ( .A1(intadd_0_SUM_18_), .A2(n192), .B(mult_x_4_n213), .Z(
        mult_x_4_n131) );
  INVD0 U287 ( .I(intadd_0_SUM_11_), .ZN(n118) );
  NR2D0 U288 ( .A1(n118), .A2(n192), .ZN(mult_x_4_n219) );
  AO21D0 U289 ( .A1(intadd_0_SUM_12_), .A2(n192), .B(mult_x_4_n219), .Z(
        mult_x_4_n137) );
  INVD0 U290 ( .I(intadd_0_SUM_9_), .ZN(n119) );
  NR2D0 U291 ( .A1(n119), .A2(n192), .ZN(mult_x_4_n221) );
  AO21D0 U292 ( .A1(intadd_0_SUM_10_), .A2(n192), .B(mult_x_4_n221), .Z(
        mult_x_4_n139) );
  INVD0 U293 ( .I(intadd_0_SUM_16_), .ZN(n111) );
  NR2D0 U294 ( .A1(n111), .A2(n192), .ZN(mult_x_4_n214) );
  AO21D0 U295 ( .A1(intadd_0_SUM_17_), .A2(n192), .B(mult_x_4_n214), .Z(
        mult_x_4_n132) );
  INVD0 U296 ( .I(intadd_0_SUM_3_), .ZN(n101) );
  AOI22D0 U297 ( .A1(n184), .A2(n101), .B1(n106), .B2(n192), .ZN(mult_x_4_n145) );
  INVD0 U298 ( .I(intadd_0_SUM_2_), .ZN(n102) );
  AOI22D0 U299 ( .A1(n184), .A2(n102), .B1(n101), .B2(n192), .ZN(mult_x_4_n146) );
  AOI22D0 U300 ( .A1(n184), .A2(n178), .B1(n102), .B2(n192), .ZN(mult_x_4_n147) );
  OAI22D0 U301 ( .A1(n137), .A2(x[6]), .B1(x[5]), .B2(n192), .ZN(
        DP_OP_54J1_124_1025_n217) );
  NR2D0 U302 ( .A1(n277), .A2(intadd_1_SUM_21_), .ZN(n103) );
  INVD0 U303 ( .I(intadd_1_SUM_22_), .ZN(n104) );
  NR2XD0 U304 ( .A1(n277), .A2(intadd_1_SUM_22_), .ZN(n134) );
  MOAI22D0 U305 ( .A1(n103), .A2(n104), .B1(n134), .B2(intadd_1_SUM_20_), .ZN(
        result[22]) );
  OAI22D0 U306 ( .A1(intadd_0_SUM_4_), .A2(n139), .B1(intadd_0_SUM_3_), .B2(
        n105), .ZN(mult_x_4_n172) );
  OAI22D0 U307 ( .A1(intadd_0_SUM_22_), .A2(n139), .B1(intadd_0_SUM_21_), .B2(
        n105), .ZN(mult_x_4_n154) );
  OAI22D0 U308 ( .A1(intadd_0_SUM_2_), .A2(n105), .B1(intadd_0_SUM_3_), .B2(
        n139), .ZN(mult_x_4_n173) );
  OAI22D0 U309 ( .A1(intadd_0_SUM_21_), .A2(n139), .B1(intadd_0_SUM_20_), .B2(
        n105), .ZN(mult_x_4_n155) );
  NR2XD0 U310 ( .A1(n104), .A2(n277), .ZN(n278) );
  AO222D0 U311 ( .A1(n277), .A2(intadd_1_SUM_4_), .B1(n134), .B2(
        intadd_1_SUM_2_), .C1(n278), .C2(intadd_1_SUM_3_), .Z(result[4]) );
  AO222D0 U312 ( .A1(n277), .A2(intadd_1_SUM_2_), .B1(n134), .B2(
        intadd_1_SUM_0_), .C1(n278), .C2(intadd_1_SUM_1_), .Z(result[2]) );
  AO222D0 U313 ( .A1(n277), .A2(intadd_1_SUM_3_), .B1(n134), .B2(
        intadd_1_SUM_1_), .C1(n278), .C2(intadd_1_SUM_2_), .Z(result[3]) );
  OAI22D0 U314 ( .A1(intadd_0_SUM_14_), .A2(n139), .B1(intadd_0_SUM_13_), .B2(
        n105), .ZN(mult_x_4_n162) );
  OAI22D0 U315 ( .A1(intadd_0_SUM_10_), .A2(n139), .B1(intadd_0_SUM_9_), .B2(
        n105), .ZN(mult_x_4_n166) );
  OAI22D0 U316 ( .A1(intadd_0_SUM_12_), .A2(n139), .B1(intadd_0_SUM_11_), .B2(
        n105), .ZN(mult_x_4_n164) );
  OAI22D0 U317 ( .A1(intadd_0_SUM_11_), .A2(n139), .B1(intadd_0_SUM_10_), .B2(
        n105), .ZN(mult_x_4_n165) );
  OAI22D0 U318 ( .A1(intadd_0_SUM_7_), .A2(n139), .B1(intadd_0_SUM_6_), .B2(
        n105), .ZN(mult_x_4_n169) );
  OAI22D0 U319 ( .A1(intadd_0_SUM_13_), .A2(n139), .B1(intadd_0_SUM_12_), .B2(
        n105), .ZN(mult_x_4_n163) );
  OAI22D0 U320 ( .A1(intadd_0_SUM_8_), .A2(n139), .B1(intadd_0_SUM_7_), .B2(
        n105), .ZN(mult_x_4_n168) );
  OAI22D0 U321 ( .A1(intadd_0_SUM_17_), .A2(n139), .B1(intadd_0_SUM_16_), .B2(
        n105), .ZN(mult_x_4_n159) );
  OAI22D0 U322 ( .A1(intadd_0_SUM_9_), .A2(n139), .B1(intadd_0_SUM_8_), .B2(
        n105), .ZN(mult_x_4_n167) );
  OAI22D0 U323 ( .A1(intadd_0_SUM_19_), .A2(n139), .B1(intadd_0_SUM_18_), .B2(
        n105), .ZN(mult_x_4_n157) );
  OAI22D0 U324 ( .A1(intadd_0_SUM_18_), .A2(n139), .B1(intadd_0_SUM_17_), .B2(
        n105), .ZN(mult_x_4_n158) );
  OAI22D0 U325 ( .A1(intadd_0_SUM_15_), .A2(n139), .B1(intadd_0_SUM_14_), .B2(
        n105), .ZN(mult_x_4_n161) );
  OAI22D0 U326 ( .A1(intadd_0_SUM_20_), .A2(n139), .B1(intadd_0_SUM_19_), .B2(
        n105), .ZN(mult_x_4_n156) );
  OAI22D0 U327 ( .A1(intadd_0_SUM_16_), .A2(n139), .B1(intadd_0_SUM_15_), .B2(
        n105), .ZN(mult_x_4_n160) );
  OAI22D0 U328 ( .A1(intadd_0_SUM_5_), .A2(n105), .B1(intadd_0_SUM_6_), .B2(
        n139), .ZN(mult_x_4_n170) );
  OAI22D0 U329 ( .A1(n137), .A2(x[5]), .B1(x[4]), .B2(n192), .ZN(
        DP_OP_54J1_124_1025_n218) );
  OAI22D0 U330 ( .A1(intadd_0_SUM_4_), .A2(n105), .B1(intadd_0_SUM_5_), .B2(
        n139), .ZN(mult_x_4_n171) );
  AO222D0 U331 ( .A1(n277), .A2(intadd_1_SUM_11_), .B1(n278), .B2(
        intadd_1_SUM_10_), .C1(intadd_1_SUM_9_), .C2(n134), .Z(result[11]) );
  AO222D0 U332 ( .A1(n277), .A2(intadd_1_SUM_15_), .B1(n278), .B2(
        intadd_1_SUM_14_), .C1(intadd_1_SUM_13_), .C2(n134), .Z(result[15]) );
  AO222D0 U333 ( .A1(n277), .A2(intadd_1_SUM_14_), .B1(n278), .B2(
        intadd_1_SUM_13_), .C1(intadd_1_SUM_12_), .C2(n134), .Z(result[14]) );
  AO222D0 U334 ( .A1(n277), .A2(intadd_1_SUM_6_), .B1(n278), .B2(
        intadd_1_SUM_5_), .C1(intadd_1_SUM_4_), .C2(n134), .Z(result[6]) );
  AO222D0 U335 ( .A1(n277), .A2(intadd_1_SUM_10_), .B1(n278), .B2(
        intadd_1_SUM_9_), .C1(intadd_1_SUM_8_), .C2(n134), .Z(result[10]) );
  AO222D0 U336 ( .A1(n277), .A2(intadd_1_SUM_13_), .B1(n278), .B2(
        intadd_1_SUM_12_), .C1(intadd_1_SUM_11_), .C2(n134), .Z(result[13]) );
  AO222D0 U337 ( .A1(n277), .A2(intadd_1_SUM_18_), .B1(n278), .B2(
        intadd_1_SUM_17_), .C1(intadd_1_SUM_16_), .C2(n134), .Z(result[18]) );
  AO222D0 U338 ( .A1(n277), .A2(intadd_1_SUM_9_), .B1(n278), .B2(
        intadd_1_SUM_8_), .C1(intadd_1_SUM_7_), .C2(n134), .Z(result[9]) );
  AO222D0 U339 ( .A1(n277), .A2(intadd_1_SUM_19_), .B1(n278), .B2(
        intadd_1_SUM_18_), .C1(intadd_1_SUM_17_), .C2(n134), .Z(result[19]) );
  AO222D0 U340 ( .A1(n277), .A2(intadd_1_SUM_20_), .B1(n278), .B2(
        intadd_1_SUM_19_), .C1(intadd_1_SUM_18_), .C2(n134), .Z(result[20]) );
  AO222D0 U341 ( .A1(n277), .A2(intadd_1_SUM_7_), .B1(n278), .B2(
        intadd_1_SUM_6_), .C1(intadd_1_SUM_5_), .C2(n134), .Z(result[7]) );
  AO222D0 U342 ( .A1(n277), .A2(intadd_1_SUM_5_), .B1(n278), .B2(
        intadd_1_SUM_4_), .C1(intadd_1_SUM_3_), .C2(n134), .Z(result[5]) );
  AO222D0 U343 ( .A1(n277), .A2(intadd_1_SUM_16_), .B1(n278), .B2(
        intadd_1_SUM_15_), .C1(intadd_1_SUM_14_), .C2(n134), .Z(result[16]) );
  AO222D0 U344 ( .A1(n277), .A2(intadd_1_SUM_17_), .B1(n278), .B2(
        intadd_1_SUM_16_), .C1(intadd_1_SUM_15_), .C2(n134), .Z(result[17]) );
  AO222D0 U345 ( .A1(n277), .A2(intadd_1_SUM_12_), .B1(n278), .B2(
        intadd_1_SUM_11_), .C1(intadd_1_SUM_10_), .C2(n134), .Z(result[12]) );
  AO222D0 U346 ( .A1(n277), .A2(intadd_1_SUM_21_), .B1(n278), .B2(
        intadd_1_SUM_20_), .C1(intadd_1_SUM_19_), .C2(n134), .Z(result[21]) );
  AO222D0 U347 ( .A1(n277), .A2(intadd_1_SUM_8_), .B1(n278), .B2(
        intadd_1_SUM_7_), .C1(intadd_1_SUM_6_), .C2(n134), .Z(result[8]) );
  OAI22D0 U348 ( .A1(n137), .A2(x[4]), .B1(x[3]), .B2(n192), .ZN(
        DP_OP_54J1_124_1025_n219) );
  OAI22D0 U349 ( .A1(n137), .A2(x[3]), .B1(n38), .B2(n192), .ZN(
        DP_OP_54J1_124_1025_n220) );
  INVD0 U350 ( .I(intadd_0_B_19_), .ZN(DP_OP_54J1_124_1025_n155) );
  OAI21D0 U351 ( .A1(n137), .A2(n36), .B(n192), .ZN(DP_OP_54J1_124_1025_n178)
         );
  NR2D0 U352 ( .A1(n106), .A2(n193), .ZN(mult_x_4_n199) );
  INVD0 U353 ( .I(intadd_0_B_18_), .ZN(DP_OP_54J1_124_1025_n156) );
  NR2D0 U354 ( .A1(n195), .A2(n193), .ZN(mult_x_4_n180) );
  NR2D0 U355 ( .A1(n194), .A2(n193), .ZN(mult_x_4_n179) );
  NR2D0 U356 ( .A1(n107), .A2(n193), .ZN(mult_x_4_n197) );
  NR2D0 U357 ( .A1(n136), .A2(n193), .ZN(mult_x_4_n181) );
  INVD0 U358 ( .I(intadd_0_SUM_21_), .ZN(n148) );
  NR2D0 U359 ( .A1(n148), .A2(n193), .ZN(mult_x_4_n182) );
  NR2D0 U360 ( .A1(n108), .A2(n193), .ZN(mult_x_4_n188) );
  NR2D0 U361 ( .A1(n109), .A2(n193), .ZN(mult_x_4_n190) );
  NR2D0 U362 ( .A1(n110), .A2(n193), .ZN(mult_x_4_n189) );
  INVD0 U363 ( .I(intadd_0_SUM_20_), .ZN(n135) );
  NR2D0 U364 ( .A1(n135), .A2(n193), .ZN(mult_x_4_n183) );
  NR2D0 U365 ( .A1(n111), .A2(n193), .ZN(mult_x_4_n187) );
  NR2D0 U366 ( .A1(n112), .A2(n193), .ZN(mult_x_4_n186) );
  NR2D0 U367 ( .A1(n113), .A2(n193), .ZN(mult_x_4_n185) );
  NR2D0 U368 ( .A1(n114), .A2(n193), .ZN(mult_x_4_n184) );
  NR2D0 U369 ( .A1(n115), .A2(n193), .ZN(mult_x_4_n191) );
  NR2D0 U370 ( .A1(n116), .A2(n193), .ZN(mult_x_4_n195) );
  NR2D0 U371 ( .A1(n117), .A2(n193), .ZN(mult_x_4_n196) );
  NR2D0 U372 ( .A1(n118), .A2(n193), .ZN(mult_x_4_n192) );
  NR2D0 U373 ( .A1(n119), .A2(n193), .ZN(mult_x_4_n194) );
  NR2D0 U374 ( .A1(n120), .A2(n193), .ZN(mult_x_4_n193) );
  NR2D0 U375 ( .A1(n149), .A2(n205), .ZN(n122) );
  AOI22D0 U376 ( .A1(n252), .A2(n28), .B1(n27), .B2(n261), .ZN(n157) );
  OAI221D0 U377 ( .A1(n28), .A2(y[1]), .B1(n27), .B2(x[22]), .C(y[0]), .ZN(
        n121) );
  OAI211D0 U378 ( .A1(y[1]), .A2(n122), .B(n157), .C(n121), .ZN(n128) );
  INVD0 U379 ( .I(impl_x_rounding_lut_N251), .ZN(n129) );
  NR2D0 U380 ( .A1(n128), .A2(n129), .ZN(n127) );
  AOI22D0 U381 ( .A1(n257), .A2(n123), .B1(x[5]), .B2(n202), .ZN(n125) );
  INVD0 U382 ( .I(n124), .ZN(DP_OP_54J1_124_1025_n138) );
  FA1D0 U383 ( .A(n130), .B(n127), .CI(n125), .CO(n124), .S(n126) );
  INVD0 U384 ( .I(n126), .ZN(DP_OP_54J1_124_1025_n139) );
  NR2D0 U385 ( .A1(n192), .A2(n140), .ZN(mult_x_4_n205) );
  NR2D0 U386 ( .A1(n194), .A2(n192), .ZN(mult_x_4_n206) );
  AOI21D0 U387 ( .A1(n129), .A2(n128), .B(n127), .ZN(n133) );
  CKND2D0 U388 ( .A1(n257), .A2(n175), .ZN(n264) );
  CKND2D0 U389 ( .A1(n36), .A2(n131), .ZN(n132) );
  CKND2D0 U390 ( .A1(n133), .A2(n132), .ZN(DP_OP_54J1_124_1025_n143) );
  OAI21D0 U391 ( .A1(n133), .A2(n132), .B(DP_OP_54J1_124_1025_n143), .ZN(
        DP_OP_54J1_124_1025_n144) );
  INVD0 U392 ( .I(n134), .ZN(DP_OP_56J1_125_5844_n8) );
  INVD0 U393 ( .I(n278), .ZN(n199) );
  OR2D0 U394 ( .A1(impl_exponent_input[0]), .A2(n199), .Z(
        DP_OP_56J1_125_5844_n7) );
  CKND2D0 U395 ( .A1(intadd_0_SUM_3_), .A2(n139), .ZN(n177) );
  NR2D0 U396 ( .A1(n176), .A2(n177), .ZN(mult_x_4_n120) );
  NR2D0 U397 ( .A1(n135), .A2(n192), .ZN(mult_x_4_n210) );
  INVD0 U398 ( .I(mult_x_4_n55), .ZN(n146) );
  AOI22D0 U399 ( .A1(n193), .A2(n195), .B1(n137), .B2(n136), .ZN(n145) );
  AOI21D0 U400 ( .A1(intadd_0_SUM_21_), .A2(n192), .B(mult_x_4_n210), .ZN(n142) );
  CKND2D0 U401 ( .A1(n139), .A2(n138), .ZN(n141) );
  NR3D0 U402 ( .A1(n193), .A2(n140), .A3(n142), .ZN(n191) );
  AO21D0 U403 ( .A1(n142), .A2(n141), .B(n191), .Z(n144) );
  INVD0 U404 ( .I(n143), .ZN(intadd_1_B_20_) );
  FA1D0 U405 ( .A(n146), .B(n145), .CI(n144), .CO(n147), .S(n143) );
  INVD0 U406 ( .I(n147), .ZN(intadd_1_B_21_) );
  NR2D0 U407 ( .A1(n148), .A2(n192), .ZN(mult_x_4_n209) );
  INVD0 U408 ( .I(y[20]), .ZN(intadd_0_A_22_) );
  OAI21D0 U409 ( .A1(n261), .A2(n149), .B(y[20]), .ZN(n256) );
  XNR3D0 U410 ( .A1(intadd_3_n1), .A2(n150), .A3(intadd_0_A_22_), .ZN(
        DP_OP_54J1_124_1025_n544) );
  INVD0 U411 ( .I(DP_OP_54J1_124_1025_n39), .ZN(n154) );
  NR2D0 U412 ( .A1(intadd_0_A_24_), .A2(n151), .ZN(n153) );
  INVD0 U413 ( .I(n152), .ZN(intadd_0_B_24_) );
  INVD0 U414 ( .I(intadd_3_SUM_3_), .ZN(intadd_0_B_20_) );
  FA1D0 U415 ( .A(n154), .B(n153), .CI(DP_OP_54J1_124_1025_n544), .CO(n152), 
        .S(n155) );
  INVD0 U416 ( .I(n155), .ZN(intadd_0_B_23_) );
  INVD0 U417 ( .I(intadd_2_n1), .ZN(intadd_3_B_1_) );
  NR2D0 U418 ( .A1(n161), .A2(n205), .ZN(n156) );
  AOI32D0 U419 ( .A1(n158), .A2(n157), .A3(n208), .B1(n156), .B2(n157), .ZN(
        intadd_2_CI) );
  INVD0 U420 ( .I(n161), .ZN(n248) );
  INVD0 U421 ( .I(n162), .ZN(n250) );
  AOI22D0 U422 ( .A1(n248), .A2(n208), .B1(n250), .B2(n205), .ZN(intadd_2_B_0_) );
  INVD0 U423 ( .I(y[3]), .ZN(n213) );
  AOI22D0 U424 ( .A1(n252), .A2(y[3]), .B1(n213), .B2(n261), .ZN(n160) );
  OAI21D0 U425 ( .A1(y[0]), .A2(n161), .B(n162), .ZN(n159) );
  CKND2D0 U426 ( .A1(n160), .A2(n159), .ZN(intadd_2_B_1_) );
  OAI21D0 U427 ( .A1(n160), .A2(n159), .B(intadd_2_B_1_), .ZN(intadd_2_A_0_)
         );
  INVD0 U428 ( .I(intadd_3_SUM_0_), .ZN(intadd_2_A_17_) );
  OAI22D0 U429 ( .A1(n40), .A2(n162), .B1(y[18]), .B2(n161), .ZN(intadd_3_CI)
         );
  AOI22D0 U430 ( .A1(n252), .A2(intadd_0_A_22_), .B1(y[20]), .B2(n261), .ZN(
        intadd_3_B_0_) );
  INVD0 U431 ( .I(y[18]), .ZN(n244) );
  INVD0 U432 ( .I(y[19]), .ZN(n251) );
  AOI22D0 U433 ( .A1(n250), .A2(n244), .B1(n248), .B2(n251), .ZN(n165) );
  INVD0 U434 ( .I(n163), .ZN(intadd_3_A_1_) );
  AOI22D0 U435 ( .A1(n250), .A2(n251), .B1(n248), .B2(y[20]), .ZN(n167) );
  INVD0 U436 ( .I(n164), .ZN(intadd_3_B_2_) );
  FA1D0 U437 ( .A(n40), .B(n165), .CI(intadd_3_B_0_), .CO(n166), .S(n163) );
  INVD0 U438 ( .I(n166), .ZN(intadd_3_A_2_) );
  FA1D0 U439 ( .A(n244), .B(n40), .CI(n167), .CO(n168), .S(n164) );
  INVD0 U440 ( .I(n168), .ZN(intadd_3_A_3_) );
  INVD0 U442 ( .I(y[24]), .ZN(DP_OP_56J1_125_5844_n23) );
  INVD0 U443 ( .I(y[25]), .ZN(DP_OP_56J1_125_5844_n22) );
  INVD0 U444 ( .I(y[26]), .ZN(DP_OP_56J1_125_5844_n21) );
  INVD0 U445 ( .I(y[27]), .ZN(DP_OP_56J1_125_5844_n20) );
  INVD0 U446 ( .I(y[28]), .ZN(DP_OP_56J1_125_5844_n19) );
  INVD0 U447 ( .I(y[29]), .ZN(DP_OP_56J1_125_5844_n18) );
  AOI21D0 U448 ( .A1(n170), .A2(n169), .B(DP_OP_54J1_124_1025_n63), .ZN(
        DP_OP_54J1_124_1025_n64) );
  INR2D0 U449 ( .A1(intadd_0_SUM_5_), .B1(n193), .ZN(mult_x_4_n198) );
  INR2D0 U450 ( .A1(n171), .B1(n192), .ZN(mult_x_4_n204) );
  OAI211D0 U451 ( .A1(intadd_0_SUM_1_), .A2(intadd_0_SUM_3_), .B(
        intadd_0_SUM_0_), .C(intadd_0_SUM_2_), .ZN(n173) );
  OR2D0 U452 ( .A1(n177), .A2(n178), .Z(n172) );
  MAOI22D0 U453 ( .A1(n173), .A2(n172), .B1(intadd_0_SUM_2_), .B2(n174), .ZN(
        n183) );
  CKND2D0 U454 ( .A1(intadd_0_SUM_2_), .A2(n174), .ZN(n187) );
  NR2D0 U455 ( .A1(n202), .A2(n175), .ZN(n181) );
  AO21D0 U456 ( .A1(n177), .A2(n176), .B(mult_x_4_n120), .Z(n186) );
  AOI22D0 U457 ( .A1(n179), .A2(n137), .B1(n178), .B2(n193), .ZN(n185) );
  AOI211D0 U458 ( .A1(n193), .A2(intadd_0_SUM_0_), .B(n181), .C(n180), .ZN(
        n182) );
  AOI31D0 U459 ( .A1(n184), .A2(n183), .A3(n187), .B(n182), .ZN(n190) );
  FA1D0 U460 ( .A(n187), .B(n186), .CI(n185), .CO(n189), .S(n180) );
  INVD0 U461 ( .I(mult_x_4_n117), .ZN(n188) );
  MAOI222D0 U462 ( .A(n190), .B(n189), .C(n188), .ZN(intadd_1_CI) );
  INVD0 U463 ( .I(n191), .ZN(n197) );
  AOI32D0 U464 ( .A1(intadd_0_SUM_22_), .A2(n272), .A3(n192), .B1(
        mult_x_4_n209), .B2(n272), .ZN(n198) );
  AOI22D0 U465 ( .A1(n195), .A2(n137), .B1(n194), .B2(n193), .ZN(n196) );
  XNR3D0 U466 ( .A1(n197), .A2(n198), .A3(n196), .ZN(intadd_1_A_21_) );
  AOI21D0 U467 ( .A1(n198), .A2(n197), .B(n196), .ZN(intadd_1_B_22_) );
  XNR2D0 U468 ( .A1(n199), .A2(impl_exponent_input[0]), .ZN(result[23]) );
  AOI221D0 U469 ( .A1(n38), .A2(n257), .B1(n37), .B2(n202), .C(n201), .ZN(
        intadd_0_CI) );
  AOI22D0 U470 ( .A1(n248), .A2(n27), .B1(n250), .B2(n208), .ZN(n204) );
  INVD0 U471 ( .I(y[4]), .ZN(n216) );
  AOI22D0 U472 ( .A1(n252), .A2(n216), .B1(y[4]), .B2(n261), .ZN(n203) );
  FA1D0 U473 ( .A(n205), .B(n204), .CI(n203), .CO(intadd_2_B_2_), .S(
        intadd_2_A_1_) );
  AOI22D0 U474 ( .A1(n248), .A2(n213), .B1(n250), .B2(n27), .ZN(n207) );
  INVD0 U475 ( .I(y[5]), .ZN(n219) );
  AOI22D0 U476 ( .A1(n252), .A2(n219), .B1(y[5]), .B2(n261), .ZN(n206) );
  FA1D0 U477 ( .A(n208), .B(n207), .CI(n206), .CO(intadd_2_B_3_), .S(
        intadd_2_A_2_) );
  AOI22D0 U478 ( .A1(n250), .A2(n213), .B1(n248), .B2(n216), .ZN(n210) );
  INVD0 U479 ( .I(y[6]), .ZN(n222) );
  AOI22D0 U480 ( .A1(n252), .A2(n222), .B1(y[6]), .B2(n261), .ZN(n209) );
  FA1D0 U481 ( .A(n27), .B(n210), .CI(n209), .CO(intadd_2_A_4_), .S(
        intadd_2_A_3_) );
  AOI22D0 U482 ( .A1(n250), .A2(n216), .B1(n248), .B2(n219), .ZN(n212) );
  INVD0 U483 ( .I(y[7]), .ZN(n225) );
  AOI22D0 U484 ( .A1(n252), .A2(n225), .B1(y[7]), .B2(n261), .ZN(n211) );
  FA1D0 U485 ( .A(n213), .B(n212), .CI(n211), .CO(intadd_2_B_5_), .S(
        intadd_2_B_4_) );
  AOI22D0 U486 ( .A1(n250), .A2(n219), .B1(n248), .B2(n222), .ZN(n215) );
  INVD0 U487 ( .I(y[8]), .ZN(n228) );
  AOI22D0 U488 ( .A1(n252), .A2(n228), .B1(y[8]), .B2(n261), .ZN(n214) );
  FA1D0 U489 ( .A(n216), .B(n215), .CI(n214), .CO(intadd_2_A_6_), .S(
        intadd_2_A_5_) );
  AOI22D0 U490 ( .A1(n250), .A2(n222), .B1(n248), .B2(n225), .ZN(n218) );
  INVD0 U491 ( .I(y[9]), .ZN(n231) );
  AOI22D0 U492 ( .A1(n252), .A2(n231), .B1(y[9]), .B2(n261), .ZN(n217) );
  FA1D0 U493 ( .A(n219), .B(n218), .CI(n217), .CO(intadd_2_B_7_), .S(
        intadd_2_B_6_) );
  AOI22D0 U494 ( .A1(n250), .A2(n225), .B1(n248), .B2(n228), .ZN(n221) );
  INVD0 U495 ( .I(y[10]), .ZN(n234) );
  AOI22D0 U496 ( .A1(n252), .A2(n234), .B1(y[10]), .B2(n261), .ZN(n220) );
  FA1D0 U497 ( .A(n222), .B(n221), .CI(n220), .CO(intadd_2_B_8_), .S(
        intadd_2_A_7_) );
  AOI22D0 U498 ( .A1(n250), .A2(n228), .B1(n248), .B2(n231), .ZN(n224) );
  INVD0 U499 ( .I(y[11]), .ZN(n237) );
  AOI22D0 U500 ( .A1(n252), .A2(n237), .B1(y[11]), .B2(n261), .ZN(n223) );
  FA1D0 U501 ( .A(n225), .B(n224), .CI(n223), .CO(intadd_2_B_9_), .S(
        intadd_2_A_8_) );
  AOI22D0 U502 ( .A1(n250), .A2(n231), .B1(n248), .B2(n234), .ZN(n227) );
  INVD0 U503 ( .I(y[12]), .ZN(n240) );
  AOI22D0 U504 ( .A1(n252), .A2(n240), .B1(y[12]), .B2(n261), .ZN(n226) );
  FA1D0 U505 ( .A(n228), .B(n227), .CI(n226), .CO(intadd_2_B_10_), .S(
        intadd_2_A_9_) );
  AOI22D0 U506 ( .A1(n250), .A2(n234), .B1(n248), .B2(n237), .ZN(n230) );
  INVD0 U507 ( .I(y[13]), .ZN(n243) );
  AOI22D0 U508 ( .A1(n252), .A2(n243), .B1(y[13]), .B2(n261), .ZN(n229) );
  FA1D0 U509 ( .A(n231), .B(n230), .CI(n229), .CO(intadd_2_B_11_), .S(
        intadd_2_A_10_) );
  AOI22D0 U510 ( .A1(n250), .A2(n237), .B1(n248), .B2(n240), .ZN(n233) );
  INVD0 U511 ( .I(y[14]), .ZN(n247) );
  AOI22D0 U512 ( .A1(n252), .A2(n247), .B1(y[14]), .B2(n261), .ZN(n232) );
  FA1D0 U513 ( .A(n234), .B(n233), .CI(n232), .CO(intadd_2_B_12_), .S(
        intadd_2_A_11_) );
  AOI22D0 U514 ( .A1(n250), .A2(n240), .B1(n248), .B2(n243), .ZN(n236) );
  INVD0 U515 ( .I(y[15]), .ZN(n255) );
  AOI22D0 U516 ( .A1(n252), .A2(n255), .B1(y[15]), .B2(n261), .ZN(n235) );
  FA1D0 U517 ( .A(n237), .B(n236), .CI(n235), .CO(intadd_2_B_13_), .S(
        intadd_2_A_12_) );
  AOI22D0 U518 ( .A1(n250), .A2(n243), .B1(n248), .B2(n247), .ZN(n239) );
  INVD0 U519 ( .I(y[16]), .ZN(n249) );
  AOI22D0 U520 ( .A1(n252), .A2(n249), .B1(y[16]), .B2(n261), .ZN(n238) );
  FA1D0 U521 ( .A(n240), .B(n239), .CI(n238), .CO(intadd_2_B_14_), .S(
        intadd_2_A_13_) );
  AOI22D0 U522 ( .A1(n250), .A2(n247), .B1(n248), .B2(n255), .ZN(n242) );
  AOI22D0 U523 ( .A1(n252), .A2(n39), .B1(n40), .B2(n261), .ZN(n241) );
  FA1D0 U524 ( .A(n243), .B(n242), .CI(n241), .CO(intadd_2_B_15_), .S(
        intadd_2_A_14_) );
  AOI22D0 U525 ( .A1(n250), .A2(n255), .B1(n248), .B2(n249), .ZN(n246) );
  AOI22D0 U526 ( .A1(n252), .A2(n244), .B1(y[18]), .B2(n261), .ZN(n245) );
  FA1D0 U527 ( .A(n247), .B(n246), .CI(n245), .CO(intadd_2_B_16_), .S(
        intadd_2_A_15_) );
  AOI22D0 U528 ( .A1(n250), .A2(n249), .B1(n248), .B2(n39), .ZN(n254) );
  AOI22D0 U529 ( .A1(n252), .A2(n251), .B1(y[19]), .B2(n261), .ZN(n253) );
  FA1D0 U530 ( .A(n255), .B(n254), .CI(n253), .CO(intadd_2_B_17_), .S(
        intadd_2_A_16_) );
  FA1D0 U531 ( .A(n40), .B(y[19]), .CI(n256), .CO(n150), .S(intadd_3_B_3_) );
  CKND2D0 U532 ( .A1(n257), .A2(x[22]), .ZN(n260) );
  AOI221D0 U533 ( .A1(n261), .A2(n260), .B1(n259), .B2(n260), .C(n258), .ZN(
        n262) );
  CKND2D0 U534 ( .A1(n269), .A2(n268), .ZN(n267) );
  XNR3D0 U535 ( .A1(n263), .A2(n262), .A3(n267), .ZN(n266) );
  CKND2D0 U536 ( .A1(n34), .A2(n264), .ZN(n265) );
  FA1D0 U537 ( .A(n30), .B(n266), .CI(n265), .CO(DP_OP_54J1_124_1025_n48), .S(
        DP_OP_54J1_124_1025_n49) );
  OA21D0 U538 ( .A1(n269), .A2(n268), .B(n267), .Z(n271) );
  FA1D0 U539 ( .A(n32), .B(n271), .CI(n270), .CO(DP_OP_54J1_124_1025_n53), .S(
        DP_OP_54J1_124_1025_n54) );
  XOR2D0 U540 ( .A1(y[31]), .A2(x[31]), .Z(result[31]) );
  INVD0 U541 ( .I(n276), .ZN(n275) );
  CKND2D0 U542 ( .A1(n273), .A2(n272), .ZN(n274) );
  MUX2ND0 U543 ( .I0(n276), .I1(n275), .S(n274), .ZN(intadd_1_A_22_) );
  AO22D0 U544 ( .A1(n278), .A2(intadd_1_SUM_0_), .B1(intadd_1_SUM_1_), .B2(
        n277), .Z(result[1]) );
  CKXOR2D0 U78 ( .A1(n279), .A2(n58), .Z(n59) );
  XOR3D0 U144 ( .A1(DP_OP_56J1_125_5844_n11), .A2(y[30]), .A3(x[30]), .Z(n58)
         );
  NR2D0 U145 ( .A1(n55), .A2(impl_exponent_input[6]), .ZN(n279) );
  INR2D0 U146 ( .A1(x[23]), .B1(y[23]), .ZN(DP_OP_56J1_125_5844_n17) );
  XNR2D0 U147 ( .A1(y[23]), .A2(x[23]), .ZN(impl_exponent_input[0]) );
  AOI22D1 U179 ( .A1(n30), .A2(n202), .B1(n257), .B2(n29), .ZN(n71) );
  AOI22D1 U441 ( .A1(n32), .A2(n202), .B1(n257), .B2(n31), .ZN(n75) );
  CMPE42D1 U545 ( .A(intadd_2_A_16_), .B(intadd_2_B_16_), .C(intadd_2_n3), 
        .CIX(DP_OP_54J1_124_1025_n67), .D(intadd_0_n10), .CO(intadd_0_n9), 
        .COX(intadd_2_n2), .S(intadd_0_SUM_16_) );
  CMPE42D1 U546 ( .A(intadd_2_A_17_), .B(intadd_2_B_17_), .C(intadd_2_n2), 
        .CIX(DP_OP_54J1_124_1025_n62), .D(intadd_0_n9), .CO(intadd_0_n8), 
        .COX(intadd_2_n1), .S(intadd_0_SUM_17_) );
endmodule

