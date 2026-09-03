/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Wed Sep  2 21:35:38 2026
/////////////////////////////////////////////////////////////


module oadm_fixed_l2_div_root_opt ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   C14_DATA2_1, mult_x_2_n145, mult_x_2_n144, mult_x_2_n130,
         mult_x_2_n129, mult_x_2_n128, mult_x_2_n127, mult_x_2_n120,
         mult_x_2_n119, mult_x_2_n118, mult_x_2_n111, mult_x_2_n110,
         mult_x_2_n109, mult_x_2_n105, mult_x_2_n99, mult_x_2_n95,
         mult_x_2_n94, mult_x_2_n93, mult_x_2_n91, mult_x_2_n90, mult_x_2_n89,
         mult_x_2_n85, mult_x_2_n72, mult_x_2_n71, mult_x_2_n70, mult_x_2_n69,
         mult_x_2_n68, mult_x_2_n66, mult_x_2_n65, mult_x_2_n64, mult_x_2_n63,
         mult_x_2_n62, mult_x_2_n61, mult_x_2_n60, mult_x_2_n59, mult_x_2_n58,
         mult_x_2_n57, mult_x_2_n56, mult_x_2_n55, mult_x_2_n54, mult_x_2_n53,
         mult_x_2_n52, mult_x_2_n51, mult_x_2_n50, mult_x_2_n49, mult_x_2_n48,
         mult_x_2_n47, mult_x_2_n46, mult_x_2_n45, mult_x_2_n44, mult_x_2_n43,
         mult_x_2_n41, mult_x_2_n39, mult_x_2_n38, mult_x_2_n37, mult_x_2_n34,
         mult_x_2_n33, mult_x_2_n30, mult_x_2_n29, mult_x_2_n28, mult_x_2_n27,
         mult_x_2_n26, mult_x_2_n25, mult_x_2_n24, DP_OP_64J1_123_7885_n23,
         DP_OP_64J1_123_7885_n22, DP_OP_64J1_123_7885_n21,
         DP_OP_64J1_123_7885_n20, DP_OP_64J1_123_7885_n19,
         DP_OP_64J1_123_7885_n18, DP_OP_64J1_123_7885_n17,
         DP_OP_64J1_123_7885_n16, DP_OP_64J1_123_7885_n15,
         DP_OP_64J1_123_7885_n14, DP_OP_64J1_123_7885_n13,
         DP_OP_64J1_123_7885_n12, DP_OP_64J1_123_7885_n11,
         DP_OP_64J1_123_7885_n8, DP_OP_64J1_123_7885_n7,
         DP_OP_64J1_123_7885_n6, intadd_0_A_12_, intadd_0_A_1_, intadd_0_B_12_,
         intadd_0_B_11_, intadd_0_B_2_, intadd_0_B_1_, intadd_0_B_0_,
         intadd_0_CI, intadd_0_SUM_12_, intadd_0_SUM_11_, intadd_0_SUM_10_,
         intadd_0_SUM_9_, intadd_0_SUM_8_, intadd_0_SUM_7_, intadd_0_SUM_6_,
         intadd_0_SUM_5_, intadd_0_SUM_4_, intadd_0_SUM_3_, intadd_0_SUM_2_,
         intadd_0_SUM_1_, intadd_0_SUM_0_, intadd_0_n13, intadd_0_n12,
         intadd_0_n11, intadd_0_n10, intadd_0_n9, intadd_0_n8, intadd_0_n7,
         intadd_0_n6, intadd_0_n5, intadd_0_n4, intadd_0_n3, intadd_0_n2,
         intadd_0_n1, intadd_1_A_7_, intadd_1_A_6_, intadd_1_A_5_,
         intadd_1_A_4_, intadd_1_A_3_, intadd_1_A_2_, intadd_1_A_1_,
         intadd_1_A_0_, intadd_1_B_7_, intadd_1_B_6_, intadd_1_B_5_,
         intadd_1_B_4_, intadd_1_B_3_, intadd_1_B_2_, intadd_1_B_1_,
         intadd_1_B_0_, intadd_1_CI, intadd_1_SUM_7_, intadd_1_SUM_6_,
         intadd_1_SUM_5_, intadd_1_SUM_4_, intadd_1_SUM_3_, intadd_1_SUM_2_,
         intadd_1_SUM_1_, intadd_1_SUM_0_, intadd_1_n8, intadd_1_n7,
         intadd_1_n6, intadd_1_n5, intadd_1_n4, intadd_1_n3, intadd_1_n2,
         intadd_1_n1, intadd_2_A_5_, intadd_2_A_4_, intadd_2_A_3_,
         intadd_2_A_2_, intadd_2_A_1_, intadd_2_A_0_, intadd_2_B_5_,
         intadd_2_B_4_, intadd_2_B_3_, intadd_2_B_2_, intadd_2_B_1_,
         intadd_2_B_0_, intadd_2_CI, intadd_2_SUM_5_, intadd_2_SUM_4_,
         intadd_2_SUM_3_, intadd_2_SUM_2_, intadd_2_SUM_1_, intadd_2_SUM_0_,
         intadd_2_n6, intadd_2_n5, intadd_2_n4, intadd_2_n3, intadd_2_n2,
         intadd_2_n1, intadd_3_A_5_, intadd_3_A_4_, intadd_3_A_3_,
         intadd_3_A_2_, intadd_3_A_1_, intadd_3_A_0_, intadd_3_B_5_,
         intadd_3_B_4_, intadd_3_B_3_, intadd_3_B_2_, intadd_3_B_1_,
         intadd_3_B_0_, intadd_3_CI, intadd_3_SUM_5_, intadd_3_SUM_4_,
         intadd_3_SUM_3_, intadd_3_SUM_2_, intadd_3_SUM_1_, intadd_3_SUM_0_,
         intadd_3_n6, intadd_3_n5, intadd_3_n4, intadd_3_n3, intadd_3_n2,
         intadd_3_n1, intadd_4_A_3_, intadd_4_A_2_, intadd_4_A_1_,
         intadd_4_B_3_, intadd_4_B_2_, intadd_4_B_1_, intadd_4_B_0_,
         intadd_4_CI, intadd_4_SUM_1_, intadd_4_SUM_0_, intadd_4_n4,
         intadd_4_n3, intadd_4_n2, intadd_4_n1, intadd_5_A_3_, intadd_5_A_2_,
         intadd_5_A_1_, intadd_5_B_3_, intadd_5_B_2_, intadd_5_B_1_,
         intadd_5_B_0_, intadd_5_CI, intadd_5_SUM_3_, intadd_5_SUM_2_,
         intadd_5_SUM_1_, intadd_5_SUM_0_, intadd_5_n4, intadd_5_n3,
         intadd_5_n2, intadd_5_n1, intadd_6_B_2_, intadd_6_B_1_, intadd_6_B_0_,
         intadd_6_CI, intadd_6_SUM_2_, intadd_6_SUM_1_, intadd_6_SUM_0_,
         intadd_6_n3, intadd_6_n2, intadd_6_n1, n49, n50, n51, n52, n53, n55,
         n56, n57, n58, n66, n67, n68, n69, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233,
         n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n244,
         n245, n246, n247, n248, n249, n250, n251, n252, n253, n254, n255,
         n256, n257, n258, n259, n260, n261, n262, n263, n264, n265, n266,
         n267, n268, n269, n270, n271, n272, n273, n274, n275, n276, n277,
         n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, n288,
         n289, n290, n291, n292, n293, n294, n295, n296, n298, n299, n300,
         n301, n302, n303, n304, n305, n306, n307, n308, n309, n310, n311,
         n312, n313, n314, n315, n316, n317, n318, n319, n320, n321;
  wire   [6:0] exponent_input;

  CMPE42D1 mult_x_2_U36 ( .A(mult_x_2_n72), .B(mult_x_2_n130), .C(mult_x_2_n68), .CIX(mult_x_2_n66), .D(mult_x_2_n69), .CO(mult_x_2_n63), .COX(mult_x_2_n62), 
        .S(mult_x_2_n64) );
  CMPE42D1 mult_x_2_U35 ( .A(mult_x_2_n91), .B(mult_x_2_n145), .C(
        mult_x_2_n111), .CIX(mult_x_2_n65), .D(mult_x_2_n120), .CO(
        mult_x_2_n60), .COX(mult_x_2_n59), .S(mult_x_2_n61) );
  CMPE42D1 mult_x_2_U34 ( .A(mult_x_2_n129), .B(mult_x_2_n95), .C(n314), .CIX(
        mult_x_2_n61), .D(mult_x_2_n62), .CO(mult_x_2_n57), .COX(mult_x_2_n56), 
        .S(mult_x_2_n58) );
  CMPE42D1 mult_x_2_U33 ( .A(mult_x_2_n90), .B(mult_x_2_n144), .C(
        mult_x_2_n110), .CIX(mult_x_2_n56), .D(mult_x_2_n119), .CO(
        mult_x_2_n54), .COX(mult_x_2_n53), .S(mult_x_2_n55) );
  CMPE42D1 mult_x_2_U32 ( .A(mult_x_2_n128), .B(mult_x_2_n94), .C(mult_x_2_n59), .CIX(mult_x_2_n60), .D(mult_x_2_n55), .CO(mult_x_2_n51), .COX(mult_x_2_n50), 
        .S(mult_x_2_n52) );
  CMPE42D1 mult_x_2_U31 ( .A(mult_x_2_n89), .B(mult_x_2_n99), .C(mult_x_2_n109), .CIX(mult_x_2_n53), .D(mult_x_2_n118), .CO(mult_x_2_n48), .COX(mult_x_2_n47), 
        .S(mult_x_2_n49) );
  CMPE42D1 mult_x_2_U30 ( .A(mult_x_2_n127), .B(mult_x_2_n93), .C(mult_x_2_n50), .CIX(mult_x_2_n54), .D(mult_x_2_n49), .CO(mult_x_2_n45), .COX(mult_x_2_n44), 
        .S(mult_x_2_n46) );
  CMPE42D1 mult_x_2_U27 ( .A(mult_x_2_n47), .B(mult_x_2_n43), .C(mult_x_2_n41), 
        .CIX(mult_x_2_n44), .D(mult_x_2_n48), .CO(mult_x_2_n38), .COX(
        mult_x_2_n37), .S(mult_x_2_n39) );
  CMPE42D1 mult_x_2_U22 ( .A(mult_x_2_n85), .B(mult_x_2_n105), .C(mult_x_2_n95), .CIX(mult_x_2_n27), .D(mult_x_2_n30), .CO(mult_x_2_n25), .COX(mult_x_2_n24), 
        .S(mult_x_2_n26) );
  FA1D0 intadd_0_U14 ( .A(mult_x_2_n99), .B(intadd_0_B_0_), .CI(intadd_0_CI), 
        .CO(intadd_0_n13), .S(intadd_0_SUM_0_) );
  FA1D0 intadd_4_U5 ( .A(y[16]), .B(intadd_4_B_0_), .CI(intadd_4_CI), .CO(
        intadd_4_n4), .S(intadd_4_SUM_0_) );
  FA1D0 DP_OP_64J1_123_7885_U23 ( .A(DP_OP_64J1_123_7885_n22), .B(x[25]), .CI(
        DP_OP_64J1_123_7885_n16), .CO(DP_OP_64J1_123_7885_n15), .S(
        exponent_input[2]) );
  FA1D0 intadd_0_U5 ( .A(mult_x_2_n29), .B(mult_x_2_n33), .CI(intadd_0_n5), 
        .CO(intadd_0_n4), .S(intadd_0_SUM_9_) );
  FA1D0 intadd_0_U2 ( .A(intadd_0_A_12_), .B(intadd_0_B_12_), .CI(intadd_0_n2), 
        .CO(intadd_0_n1), .S(intadd_0_SUM_12_) );
  FA1D0 intadd_0_U7 ( .A(mult_x_2_n45), .B(mult_x_2_n39), .CI(intadd_0_n7), 
        .CO(intadd_0_n6), .S(intadd_0_SUM_7_) );
  FA1D0 intadd_0_U13 ( .A(intadd_0_A_1_), .B(intadd_0_B_1_), .CI(intadd_0_n13), 
        .CO(intadd_0_n12), .S(intadd_0_SUM_1_) );
  FA1D0 intadd_6_U3 ( .A(intadd_2_SUM_3_), .B(intadd_6_B_1_), .CI(intadd_6_n3), 
        .CO(intadd_6_n2), .S(intadd_6_SUM_1_) );
  FA1D0 intadd_6_U2 ( .A(intadd_2_SUM_4_), .B(intadd_6_B_2_), .CI(intadd_6_n2), 
        .CO(intadd_6_n1), .S(intadd_6_SUM_2_) );
  FA1D0 intadd_3_U5 ( .A(intadd_3_A_2_), .B(intadd_3_B_2_), .CI(intadd_3_n5), 
        .CO(intadd_3_n4), .S(intadd_3_SUM_2_) );
  FA1D0 intadd_2_U4 ( .A(intadd_2_A_3_), .B(intadd_2_B_3_), .CI(intadd_2_n4), 
        .CO(intadd_2_n3), .S(intadd_2_SUM_3_) );
  FA1D0 intadd_2_U3 ( .A(intadd_2_A_4_), .B(intadd_2_B_4_), .CI(intadd_2_n3), 
        .CO(intadd_2_n2), .S(intadd_2_SUM_4_) );
  FA1D0 intadd_3_U6 ( .A(intadd_3_A_1_), .B(intadd_3_B_1_), .CI(intadd_3_n6), 
        .CO(intadd_3_n5), .S(intadd_3_SUM_1_) );
  FA1D0 intadd_1_U3 ( .A(intadd_1_A_6_), .B(intadd_1_B_6_), .CI(intadd_1_n3), 
        .CO(intadd_1_n2), .S(intadd_1_SUM_6_) );
  FA1D0 intadd_4_U4 ( .A(intadd_4_A_1_), .B(intadd_4_B_1_), .CI(intadd_4_n4), 
        .CO(intadd_4_n3), .S(intadd_4_SUM_1_) );
  FA1D0 intadd_5_U2 ( .A(intadd_5_A_3_), .B(intadd_5_B_3_), .CI(intadd_5_n2), 
        .CO(intadd_5_n1), .S(intadd_5_SUM_3_) );
  FA1D0 intadd_5_U4 ( .A(intadd_5_A_1_), .B(intadd_5_B_1_), .CI(intadd_5_n4), 
        .CO(intadd_5_n3), .S(intadd_5_SUM_1_) );
  FA1D0 intadd_1_U8 ( .A(intadd_1_A_1_), .B(intadd_1_B_1_), .CI(intadd_1_n8), 
        .CO(intadd_1_n7), .S(intadd_1_SUM_1_) );
  FA1D0 intadd_1_U9 ( .A(intadd_1_A_0_), .B(intadd_1_B_0_), .CI(intadd_1_CI), 
        .CO(intadd_1_n8), .S(intadd_1_SUM_0_) );
  FA1D0 intadd_2_U7 ( .A(intadd_2_A_0_), .B(intadd_2_B_0_), .CI(intadd_2_CI), 
        .CO(intadd_2_n6), .S(intadd_2_SUM_0_) );
  FA1D0 intadd_2_U6 ( .A(intadd_2_A_1_), .B(intadd_2_B_1_), .CI(intadd_2_n6), 
        .CO(intadd_2_n5), .S(intadd_2_SUM_1_) );
  FA1D0 intadd_1_U7 ( .A(intadd_1_A_2_), .B(intadd_1_B_2_), .CI(intadd_1_n7), 
        .CO(intadd_1_n6), .S(intadd_1_SUM_2_) );
  FA1D0 intadd_2_U5 ( .A(intadd_2_A_2_), .B(intadd_2_B_2_), .CI(intadd_2_n5), 
        .CO(intadd_2_n4), .S(intadd_2_SUM_2_) );
  FA1D0 intadd_1_U6 ( .A(intadd_1_A_3_), .B(intadd_1_B_3_), .CI(intadd_1_n6), 
        .CO(intadd_1_n5), .S(intadd_1_SUM_3_) );
  FA1D0 intadd_5_U5 ( .A(x[16]), .B(intadd_5_B_0_), .CI(intadd_5_CI), .CO(
        intadd_5_n4), .S(intadd_5_SUM_0_) );
  FA1D0 intadd_1_U5 ( .A(intadd_1_A_4_), .B(intadd_1_B_4_), .CI(intadd_1_n5), 
        .CO(intadd_1_n4), .S(intadd_1_SUM_4_) );
  FA1D0 intadd_1_U4 ( .A(intadd_1_A_5_), .B(intadd_1_B_5_), .CI(intadd_1_n4), 
        .CO(intadd_1_n3), .S(intadd_1_SUM_5_) );
  FA1D0 intadd_2_U2 ( .A(intadd_2_A_5_), .B(intadd_2_B_5_), .CI(intadd_2_n2), 
        .CO(intadd_2_n1), .S(intadd_2_SUM_5_) );
  FA1D0 intadd_6_U4 ( .A(intadd_2_SUM_2_), .B(intadd_6_B_0_), .CI(intadd_6_CI), 
        .CO(intadd_6_n3), .S(intadd_6_SUM_0_) );
  FA1D0 intadd_1_U2 ( .A(intadd_1_A_7_), .B(intadd_1_B_7_), .CI(intadd_1_n2), 
        .CO(intadd_1_n1), .S(intadd_1_SUM_7_) );
  FA1D0 intadd_5_U3 ( .A(intadd_5_A_2_), .B(intadd_5_B_2_), .CI(intadd_5_n3), 
        .CO(intadd_5_n2), .S(intadd_5_SUM_2_) );
  FA1D0 intadd_3_U7 ( .A(intadd_3_A_0_), .B(intadd_3_B_0_), .CI(intadd_3_CI), 
        .CO(intadd_3_n6), .S(intadd_3_SUM_0_) );
  FA1D0 intadd_3_U4 ( .A(intadd_3_A_3_), .B(intadd_3_B_3_), .CI(intadd_3_n4), 
        .CO(intadd_3_n3), .S(intadd_3_SUM_3_) );
  FA1D0 intadd_3_U3 ( .A(intadd_3_A_4_), .B(intadd_3_B_4_), .CI(intadd_3_n3), 
        .CO(intadd_3_n2), .S(intadd_3_SUM_4_) );
  FA1D0 intadd_3_U2 ( .A(intadd_3_A_5_), .B(intadd_3_B_5_), .CI(intadd_3_n2), 
        .CO(intadd_3_n1), .S(intadd_3_SUM_5_) );
  FA1D0 intadd_0_U12 ( .A(mult_x_2_n71), .B(intadd_0_B_2_), .CI(intadd_0_n12), 
        .CO(intadd_0_n11), .S(intadd_0_SUM_2_) );
  FA1D0 intadd_0_U11 ( .A(mult_x_2_n70), .B(mult_x_2_n64), .CI(intadd_0_n11), 
        .CO(intadd_0_n10), .S(intadd_0_SUM_3_) );
  FA1D0 intadd_0_U10 ( .A(mult_x_2_n63), .B(mult_x_2_n58), .CI(intadd_0_n10), 
        .CO(intadd_0_n9), .S(intadd_0_SUM_4_) );
  FA1D0 intadd_0_U9 ( .A(mult_x_2_n57), .B(mult_x_2_n52), .CI(intadd_0_n9), 
        .CO(intadd_0_n8), .S(intadd_0_SUM_5_) );
  FA1D0 intadd_0_U8 ( .A(mult_x_2_n51), .B(mult_x_2_n46), .CI(intadd_0_n8), 
        .CO(intadd_0_n7), .S(intadd_0_SUM_6_) );
  FA1D0 intadd_0_U6 ( .A(mult_x_2_n34), .B(mult_x_2_n38), .CI(intadd_0_n6), 
        .CO(intadd_0_n5), .S(intadd_0_SUM_8_) );
  FA1D0 intadd_0_U4 ( .A(mult_x_2_n26), .B(mult_x_2_n28), .CI(intadd_0_n4), 
        .CO(intadd_0_n3), .S(intadd_0_SUM_10_) );
  FA1D0 intadd_0_U3 ( .A(mult_x_2_n25), .B(intadd_0_B_11_), .CI(intadd_0_n3), 
        .CO(intadd_0_n2), .S(intadd_0_SUM_11_) );
  FA1D0 DP_OP_64J1_123_7885_U24 ( .A(DP_OP_64J1_123_7885_n23), .B(x[24]), .CI(
        DP_OP_64J1_123_7885_n17), .CO(DP_OP_64J1_123_7885_n16), .S(
        exponent_input[1]) );
  FA1D0 DP_OP_64J1_123_7885_U12 ( .A(DP_OP_64J1_123_7885_n7), .B(
        DP_OP_64J1_123_7885_n8), .CI(exponent_input[1]), .CO(
        DP_OP_64J1_123_7885_n6), .S(C14_DATA2_1) );
  FA1D0 DP_OP_64J1_123_7885_U22 ( .A(DP_OP_64J1_123_7885_n21), .B(x[26]), .CI(
        DP_OP_64J1_123_7885_n15), .CO(DP_OP_64J1_123_7885_n14), .S(
        exponent_input[3]) );
  FA1D0 DP_OP_64J1_123_7885_U21 ( .A(DP_OP_64J1_123_7885_n20), .B(x[27]), .CI(
        DP_OP_64J1_123_7885_n14), .CO(DP_OP_64J1_123_7885_n13), .S(
        exponent_input[4]) );
  FA1D0 DP_OP_64J1_123_7885_U20 ( .A(DP_OP_64J1_123_7885_n19), .B(x[28]), .CI(
        DP_OP_64J1_123_7885_n13), .CO(DP_OP_64J1_123_7885_n12), .S(
        exponent_input[5]) );
  FA1D0 DP_OP_64J1_123_7885_U19 ( .A(DP_OP_64J1_123_7885_n18), .B(x[29]), .CI(
        DP_OP_64J1_123_7885_n12), .CO(DP_OP_64J1_123_7885_n11), .S(
        exponent_input[6]) );
  FA1D0 U42 ( .A(n52), .B(n256), .CI(n255), .CO(intadd_3_B_5_), .S(
        intadd_3_A_4_) );
  FA1D0 U43 ( .A(n254), .B(n279), .CI(n253), .CO(n207), .S(n255) );
  FA1D0 U44 ( .A(n286), .B(n285), .CI(n284), .CO(intadd_3_B_4_), .S(
        intadd_3_A_3_) );
  FA1D0 U46 ( .A(n289), .B(n288), .CI(n287), .CO(n279), .S(n291) );
  FA1D0 U48 ( .A(n295), .B(n294), .CI(intadd_4_SUM_1_), .CO(intadd_3_B_1_), 
        .S(intadd_3_A_0_) );
  FA1D0 U49 ( .A(n249), .B(n53), .CI(n197), .CO(n198), .S(n194) );
  FA1D0 U50 ( .A(n257), .B(n51), .CI(n203), .CO(n204), .S(n200) );
  FA1D0 U51 ( .A(n252), .B(n251), .CI(n250), .CO(intadd_1_B_6_), .S(
        intadd_1_A_5_) );
  FA1D0 U52 ( .A(n264), .B(n263), .CI(n262), .CO(intadd_2_A_5_), .S(
        intadd_2_A_4_) );
  FA1D0 U53 ( .A(n232), .B(n229), .CI(n228), .CO(intadd_2_B_4_), .S(
        intadd_2_A_3_) );
  FA1D0 U54 ( .A(n233), .B(n231), .CI(n230), .CO(intadd_2_B_3_), .S(
        intadd_2_A_2_) );
  FA1D0 U55 ( .A(n245), .B(n244), .CI(n243), .CO(intadd_1_B_4_), .S(
        intadd_1_A_3_) );
  FA1D0 U56 ( .A(n242), .B(n241), .CI(n240), .CO(intadd_1_B_3_), .S(
        intadd_1_A_2_) );
  FA1D0 U57 ( .A(n135), .B(n134), .CI(n133), .CO(n137), .S(n132) );
  FA1D0 U58 ( .A(n51), .B(n201), .CI(intadd_5_B_0_), .CO(n202), .S(n199) );
  FA1D0 U59 ( .A(n53), .B(n195), .CI(intadd_4_B_0_), .CO(n196), .S(n193) );
  FA1D0 U60 ( .A(n239), .B(n238), .CI(n237), .CO(intadd_1_B_2_), .S(
        intadd_1_A_1_) );
  FA1D0 U61 ( .A(n273), .B(n272), .CI(n271), .CO(intadd_1_A_7_), .S(
        intadd_1_A_6_) );
  FA1D0 U62 ( .A(n248), .B(n247), .CI(n246), .CO(intadd_1_B_5_), .S(
        intadd_1_A_4_) );
  FA1D0 U63 ( .A(n236), .B(n235), .CI(n234), .CO(intadd_2_B_2_), .S(
        intadd_2_A_1_) );
  FA1D0 U64 ( .A(n173), .B(n220), .CI(n172), .CO(n67), .S(n221) );
  FA1D0 U65 ( .A(n186), .B(n185), .CI(n184), .CO(n187), .S(n181) );
  FA1D0 U66 ( .A(n94), .B(n93), .CI(n92), .CO(n213), .S(n98) );
  MUX2D0 U67 ( .I0(n85), .I1(n84), .S(n147), .Z(result[30]) );
  MUX2D0 U68 ( .I0(n80), .I1(exponent_input[6]), .S(n147), .Z(result[29]) );
  XNR2D0 U70 ( .A1(n81), .A2(exponent_input[6]), .ZN(n80) );
  MUX2D0 U71 ( .I0(n78), .I1(exponent_input[5]), .S(n147), .Z(result[28]) );
  OR2D0 U73 ( .A1(exponent_input[5]), .A2(n79), .Z(n81) );
  XNR2D0 U74 ( .A1(n79), .A2(exponent_input[5]), .ZN(n78) );
  MUX2D0 U75 ( .I0(n76), .I1(exponent_input[4]), .S(n147), .Z(result[27]) );
  MUX2D0 U76 ( .I0(n74), .I1(exponent_input[3]), .S(n147), .Z(result[26]) );
  XNR2D0 U77 ( .A1(n77), .A2(exponent_input[4]), .ZN(n76) );
  OR2D0 U78 ( .A1(exponent_input[4]), .A2(n77), .Z(n79) );
  MUX2D0 U79 ( .I0(n73), .I1(exponent_input[2]), .S(n147), .Z(result[25]) );
  OR2D0 U80 ( .A1(n75), .A2(exponent_input[3]), .Z(n77) );
  OR2D0 U81 ( .A1(DP_OP_64J1_123_7885_n6), .A2(exponent_input[2]), .Z(n75) );
  MUX2D0 U82 ( .I0(C14_DATA2_1), .I1(exponent_input[1]), .S(n147), .Z(
        result[24]) );
  OAI222D0 U83 ( .A1(n304), .A2(n312), .B1(n305), .B2(n310), .C1(n303), .C2(
        DP_OP_64J1_123_7885_n8), .ZN(result[14]) );
  OAI222D0 U84 ( .A1(n302), .A2(n310), .B1(n312), .B2(n99), .C1(
        DP_OP_64J1_123_7885_n8), .C2(n98), .ZN(result[11]) );
  OAI222D0 U85 ( .A1(n100), .A2(DP_OP_64J1_123_7885_n8), .B1(n312), .B2(n98), 
        .C1(n310), .C2(n99), .ZN(result[10]) );
  OAI22D0 U86 ( .A1(n149), .A2(n148), .B1(DP_OP_64J1_123_7885_n8), .B2(n311), 
        .ZN(result[22]) );
  OAI222D0 U87 ( .A1(n302), .A2(n312), .B1(DP_OP_64J1_123_7885_n8), .B2(n99), 
        .C1(n310), .C2(n303), .ZN(result[12]) );
  OAI222D0 U88 ( .A1(n308), .A2(n312), .B1(n309), .B2(n310), .C1(n307), .C2(
        DP_OP_64J1_123_7885_n8), .ZN(result[18]) );
  OAI222D0 U89 ( .A1(n313), .A2(n312), .B1(n311), .B2(n310), .C1(n309), .C2(
        DP_OP_64J1_123_7885_n8), .ZN(result[20]) );
  XNR2D0 U90 ( .A1(n312), .A2(exponent_input[0]), .ZN(result[23]) );
  OR2D0 U91 ( .A1(exponent_input[0]), .A2(n312), .Z(DP_OP_64J1_123_7885_n7) );
  OAI222D0 U92 ( .A1(n307), .A2(n312), .B1(n308), .B2(n310), .C1(n306), .C2(
        DP_OP_64J1_123_7885_n8), .ZN(result[17]) );
  OAI22D0 U93 ( .A1(n310), .A2(n150), .B1(n162), .B2(n312), .ZN(result[7]) );
  OAI222D0 U94 ( .A1(n312), .A2(n100), .B1(n310), .B2(n98), .C1(
        DP_OP_64J1_123_7885_n8), .C2(n150), .ZN(result[9]) );
  OAI222D0 U95 ( .A1(n303), .A2(n312), .B1(n304), .B2(n310), .C1(n302), .C2(
        DP_OP_64J1_123_7885_n8), .ZN(result[13]) );
  OAI222D0 U96 ( .A1(n309), .A2(n312), .B1(n313), .B2(n310), .C1(n308), .C2(
        DP_OP_64J1_123_7885_n8), .ZN(result[19]) );
  OAI222D0 U97 ( .A1(n305), .A2(n312), .B1(n306), .B2(n310), .C1(n304), .C2(
        DP_OP_64J1_123_7885_n8), .ZN(result[15]) );
  OAI222D0 U98 ( .A1(n306), .A2(n312), .B1(n307), .B2(n310), .C1(n305), .C2(
        DP_OP_64J1_123_7885_n8), .ZN(result[16]) );
  OAI222D0 U99 ( .A1(DP_OP_64J1_123_7885_n8), .A2(n162), .B1(n100), .B2(n310), 
        .C1(n312), .C2(n150), .ZN(result[8]) );
  INVD0 U100 ( .I(n146), .ZN(n312) );
  INVD0 U101 ( .I(n145), .ZN(DP_OP_64J1_123_7885_n8) );
  NR2D0 U102 ( .A1(n162), .A2(n310), .ZN(result[6]) );
  NR2D0 U103 ( .A1(n148), .A2(n147), .ZN(n146) );
  INVD0 U104 ( .I(n147), .ZN(n310) );
  NR2D0 U105 ( .A1(n147), .A2(intadd_0_SUM_12_), .ZN(n145) );
  INVD0 U106 ( .I(intadd_0_SUM_12_), .ZN(n148) );
  XOR2D0 U107 ( .A1(intadd_0_n1), .A2(n72), .Z(n147) );
  INVD0 U108 ( .I(intadd_0_SUM_10_), .ZN(n311) );
  INVD0 U109 ( .I(intadd_0_SUM_9_), .ZN(n313) );
  INVD0 U110 ( .I(intadd_0_SUM_8_), .ZN(n309) );
  INVD0 U111 ( .I(intadd_0_SUM_7_), .ZN(n308) );
  XOR3D0 U114 ( .A1(n225), .A2(n224), .A3(n223), .Z(mult_x_2_n34) );
  INVD0 U116 ( .I(intadd_0_SUM_6_), .ZN(n307) );
  INVD0 U117 ( .I(intadd_0_SUM_5_), .ZN(n306) );
  XNR2D0 U119 ( .A1(n221), .A2(mult_x_2_n37), .ZN(n224) );
  INVD0 U120 ( .I(mult_x_2_n37), .ZN(n176) );
  INVD0 U121 ( .I(n187), .ZN(intadd_0_A_12_) );
  INVD0 U123 ( .I(intadd_0_SUM_4_), .ZN(n305) );
  INVD0 U124 ( .I(n181), .ZN(intadd_0_B_11_) );
  INVD0 U125 ( .I(intadd_0_SUM_3_), .ZN(n304) );
  INVD0 U130 ( .I(intadd_0_SUM_2_), .ZN(n303) );
  INVD0 U132 ( .I(n221), .ZN(n177) );
  INVD0 U133 ( .I(mult_x_2_n24), .ZN(n186) );
  CKND2D0 U134 ( .A1(n171), .A2(n170), .ZN(mult_x_2_n70) );
  OA22D0 U136 ( .A1(n296), .A2(n300), .B1(n183), .B2(intadd_3_SUM_4_), .Z(n185) );
  INVD0 U137 ( .I(mult_x_2_n94), .ZN(n184) );
  INVD0 U139 ( .I(intadd_0_SUM_1_), .ZN(n302) );
  OAI22D0 U140 ( .A1(n183), .A2(intadd_3_SUM_5_), .B1(n182), .B2(n296), .ZN(
        intadd_0_B_12_) );
  NR2D0 U141 ( .A1(n296), .A2(n183), .ZN(n72) );
  AOI221D0 U142 ( .A1(n183), .A2(n210), .B1(intadd_3_SUM_2_), .B2(n210), .C(
        mult_x_2_n30), .ZN(n68) );
  NR2D0 U143 ( .A1(n182), .A2(intadd_3_SUM_5_), .ZN(mult_x_2_n94) );
  INR2D0 U144 ( .A1(intadd_3_n1), .B1(n205), .ZN(n296) );
  NR2D0 U145 ( .A1(n300), .A2(intadd_3_SUM_5_), .ZN(mult_x_2_n105) );
  MUX2D0 U146 ( .I0(n169), .I1(n168), .S(n217), .Z(n170) );
  XNR3D0 U147 ( .A1(n213), .A2(n212), .A3(intadd_0_SUM_0_), .ZN(n99) );
  ND3D0 U148 ( .A1(n153), .A2(n152), .A3(n151), .ZN(mult_x_2_n69) );
  NR2D0 U149 ( .A1(n182), .A2(intadd_3_SUM_4_), .ZN(mult_x_2_n95) );
  MAOI222D0 U150 ( .A(n214), .B(n213), .C(n212), .ZN(intadd_0_B_1_) );
  NR3D0 U151 ( .A1(n183), .A2(intadd_3_SUM_2_), .A3(n210), .ZN(mult_x_2_n30)
         );
  CKND2D0 U152 ( .A1(n167), .A2(n215), .ZN(n168) );
  MUX2D0 U153 ( .I0(n165), .I1(n164), .S(n220), .Z(n171) );
  INVD0 U154 ( .I(n161), .ZN(intadd_0_B_2_) );
  NR2D0 U155 ( .A1(n183), .A2(intadd_3_SUM_3_), .ZN(mult_x_2_n85) );
  INVD0 U156 ( .I(n157), .ZN(intadd_0_A_1_) );
  OR2D0 U157 ( .A1(intadd_3_SUM_3_), .A2(n182), .Z(n210) );
  XNR2D0 U158 ( .A1(n217), .A2(n216), .ZN(n218) );
  NR2D0 U159 ( .A1(n182), .A2(intadd_3_SUM_2_), .ZN(n220) );
  INVD0 U160 ( .I(intadd_0_SUM_0_), .ZN(n214) );
  OR2D0 U161 ( .A1(intadd_3_SUM_1_), .A2(n182), .Z(n160) );
  INVD0 U162 ( .I(n217), .ZN(n163) );
  CKND2D0 U163 ( .A1(mult_x_2_n144), .A2(n90), .ZN(n212) );
  NR2D0 U164 ( .A1(n155), .A2(n301), .ZN(n217) );
  OAI21D0 U165 ( .A1(n89), .A2(n88), .B(intadd_3_CI), .ZN(n155) );
  XNR3D0 U166 ( .A1(n50), .A2(intadd_5_n1), .A3(n281), .ZN(n285) );
  INVD0 U167 ( .I(intadd_5_SUM_3_), .ZN(n290) );
  INVD0 U168 ( .I(intadd_5_SUM_2_), .ZN(n292) );
  CKND2D0 U169 ( .A1(n88), .A2(n89), .ZN(intadd_3_CI) );
  INVD0 U170 ( .I(n215), .ZN(n219) );
  INVD0 U171 ( .I(intadd_5_SUM_1_), .ZN(n294) );
  AOI21D0 U172 ( .A1(n91), .A2(mult_x_2_n145), .B(n314), .ZN(n93) );
  AOI221D0 U173 ( .A1(intadd_6_SUM_1_), .A2(n162), .B1(n300), .B2(n162), .C(
        mult_x_2_n72), .ZN(n215) );
  AO21D0 U174 ( .A1(intadd_1_SUM_7_), .A2(n87), .B(intadd_3_B_0_), .Z(n88) );
  OAI21D0 U175 ( .A1(n97), .A2(n96), .B(n95), .ZN(n150) );
  NR2D0 U176 ( .A1(n87), .A2(intadd_1_SUM_7_), .ZN(intadd_3_B_0_) );
  XOR3D0 U177 ( .A1(n52), .A2(intadd_4_n1), .A3(n283), .Z(n284) );
  INVD0 U178 ( .I(intadd_6_n1), .ZN(n89) );
  INVD0 U179 ( .I(n96), .ZN(n86) );
  INVD0 U180 ( .I(intadd_2_SUM_5_), .ZN(n87) );
  INVD0 U181 ( .I(intadd_2_n1), .ZN(intadd_5_B_1_) );
  INVD0 U182 ( .I(intadd_6_SUM_0_), .ZN(n156) );
  MAOI222D0 U183 ( .A(n144), .B(intadd_1_SUM_3_), .C(n143), .ZN(intadd_6_B_0_)
         );
  INVD0 U184 ( .I(intadd_1_n1), .ZN(intadd_4_B_1_) );
  INVD0 U185 ( .I(intadd_2_SUM_1_), .ZN(n143) );
  MAOI222D0 U186 ( .A(n142), .B(n141), .C(n140), .ZN(n144) );
  INVD0 U187 ( .I(intadd_1_SUM_6_), .ZN(intadd_6_B_2_) );
  MAOI222D0 U188 ( .A(n129), .B(intadd_1_SUM_1_), .C(n128), .ZN(n142) );
  INVD0 U189 ( .I(intadd_1_SUM_5_), .ZN(intadd_6_B_1_) );
  IAO21D0 U190 ( .A1(intadd_2_SUM_0_), .A2(n227), .B(n226), .ZN(intadd_2_B_1_)
         );
  INVD0 U191 ( .I(intadd_1_SUM_4_), .ZN(intadd_6_CI) );
  IOA21D0 U192 ( .A1(n121), .A2(intadd_1_SUM_0_), .B(n120), .ZN(n129) );
  CKAN2D0 U193 ( .A1(n136), .A2(n137), .Z(n227) );
  NR2D0 U194 ( .A1(n137), .A2(n136), .ZN(n226) );
  OAI221D0 U195 ( .A1(intadd_1_SUM_0_), .A2(n121), .B1(n119), .B2(n125), .C(
        n118), .ZN(n120) );
  OA21D0 U196 ( .A1(n132), .A2(n131), .B(n130), .Z(n136) );
  INVD0 U197 ( .I(intadd_1_SUM_2_), .ZN(n140) );
  AOI211D0 U199 ( .A1(n125), .A2(n124), .B(n123), .C(n122), .ZN(n131) );
  CKND2D0 U200 ( .A1(n122), .A2(n123), .ZN(n130) );
  INVD0 U201 ( .I(n202), .ZN(intadd_5_A_2_) );
  INVD0 U202 ( .I(n198), .ZN(intadd_4_B_3_) );
  MAOI222D0 U203 ( .A(n111), .B(n110), .C(n109), .ZN(n121) );
  INVD0 U204 ( .I(n204), .ZN(intadd_5_B_3_) );
  INVD0 U205 ( .I(n194), .ZN(intadd_4_B_2_) );
  INVD0 U206 ( .I(n199), .ZN(intadd_5_A_1_) );
  INVD0 U207 ( .I(n196), .ZN(intadd_4_A_2_) );
  INVD0 U208 ( .I(n200), .ZN(intadd_5_B_2_) );
  INVD0 U209 ( .I(n193), .ZN(intadd_4_A_1_) );
  NR2D0 U210 ( .A1(n115), .A2(n114), .ZN(n122) );
  AO21D0 U211 ( .A1(n207), .A2(n206), .B(n205), .Z(intadd_3_A_5_) );
  INVD0 U212 ( .I(intadd_5_SUM_0_), .ZN(intadd_2_B_5_) );
  INVD0 U213 ( .I(intadd_4_SUM_0_), .ZN(intadd_1_B_7_) );
  NR2D0 U214 ( .A1(n206), .A2(n207), .ZN(n205) );
  NR2D0 U215 ( .A1(n116), .A2(n117), .ZN(n123) );
  IND2D0 U216 ( .A1(n113), .B1(n112), .ZN(n115) );
  AOI22D0 U217 ( .A1(n298), .A2(n264), .B1(n259), .B2(n260), .ZN(n229) );
  AOI22D0 U218 ( .A1(n298), .A2(n260), .B1(n259), .B2(n258), .ZN(n263) );
  AOI22D0 U219 ( .A1(n268), .A2(n267), .B1(n266), .B2(n265), .ZN(n272) );
  ND3D0 U220 ( .A1(n279), .A2(n289), .A3(n295), .ZN(n286) );
  AOI22D0 U221 ( .A1(n268), .A2(n273), .B1(n266), .B2(n267), .ZN(n251) );
  AOI22D0 U222 ( .A1(n268), .A2(n249), .B1(n266), .B2(n270), .ZN(n195) );
  AOI22D0 U223 ( .A1(n298), .A2(n261), .B1(n50), .B2(n259), .ZN(n203) );
  AOI22D0 U224 ( .A1(n268), .A2(n270), .B1(n266), .B2(n52), .ZN(n197) );
  AO22D0 U225 ( .A1(n258), .A2(n298), .B1(n259), .B2(n257), .Z(intadd_5_CI) );
  AOI22D0 U226 ( .A1(n298), .A2(n257), .B1(n259), .B2(n261), .ZN(n201) );
  CKND2D0 U227 ( .A1(n102), .A2(n101), .ZN(intadd_1_CI) );
  MAOI222D0 U228 ( .A(n107), .B(n106), .C(n105), .ZN(n110) );
  CKND2D0 U229 ( .A1(n108), .A2(n300), .ZN(n259) );
  CKND2D0 U230 ( .A1(n190), .A2(n189), .ZN(intadd_1_B_1_) );
  INVD0 U231 ( .I(n191), .ZN(n266) );
  INVD0 U232 ( .I(n182), .ZN(n108) );
  INVD0 U233 ( .I(n301), .ZN(n300) );
  INVD0 U234 ( .I(n154), .ZN(n298) );
  OAI31D0 U235 ( .A1(n275), .A2(n58), .A3(n57), .B(n56), .ZN(n288) );
  CKND2D0 U236 ( .A1(n192), .A2(n276), .ZN(n191) );
  AOI22D0 U237 ( .A1(n278), .A2(n256), .B1(n50), .B2(n275), .ZN(intadd_5_B_0_)
         );
  INVD0 U238 ( .I(n192), .ZN(n268) );
  INVD0 U239 ( .I(n50), .ZN(n256) );
  MAOI22D0 U240 ( .A1(n52), .A2(n269), .B1(n269), .B2(n52), .ZN(intadd_4_B_0_)
         );
  CKND2D0 U241 ( .A1(n275), .A2(n274), .ZN(n154) );
  NR2D0 U242 ( .A1(n275), .A2(n183), .ZN(n182) );
  NR2D0 U243 ( .A1(n274), .A2(n278), .ZN(n301) );
  INVD0 U244 ( .I(n276), .ZN(n188) );
  INVD0 U245 ( .I(n51), .ZN(n258) );
  CKND2D0 U246 ( .A1(n269), .A2(n58), .ZN(n192) );
  CKND2D0 U247 ( .A1(n277), .A2(x[22]), .ZN(n276) );
  INVD0 U248 ( .I(n183), .ZN(n274) );
  CKND2D0 U249 ( .A1(n183), .A2(x[22]), .ZN(n289) );
  INVD0 U250 ( .I(n278), .ZN(n275) );
  INVD0 U251 ( .I(n277), .ZN(n269) );
  INVD0 U252 ( .I(y[29]), .ZN(DP_OP_64J1_123_7885_n18) );
  INVD0 U254 ( .I(y[25]), .ZN(DP_OP_64J1_123_7885_n22) );
  INVD0 U255 ( .I(y[28]), .ZN(DP_OP_64J1_123_7885_n19) );
  INVD0 U256 ( .I(y[12]), .ZN(n245) );
  INVD0 U257 ( .I(y[10]), .ZN(n239) );
  BUFFD0 U258 ( .I(y[22]), .Z(n183) );
  BUFFD0 U259 ( .I(y[21]), .Z(n278) );
  INVD0 U260 ( .I(y[27]), .ZN(DP_OP_64J1_123_7885_n20) );
  INVD0 U261 ( .I(y[26]), .ZN(DP_OP_64J1_123_7885_n21) );
  INVD0 U262 ( .I(y[24]), .ZN(DP_OP_64J1_123_7885_n23) );
  BUFFD0 U263 ( .I(x[21]), .Z(n277) );
  INVD0 U264 ( .I(x[22]), .ZN(n58) );
  XOR2D0 U265 ( .A1(y[31]), .A2(x[31]), .Z(result[31]) );
  INVD0 U266 ( .I(y[11]), .ZN(n242) );
  INVD0 U268 ( .I(x[19]), .ZN(n261) );
  INVD0 U269 ( .I(x[15]), .ZN(n264) );
  INVD0 U270 ( .I(x[11]), .ZN(intadd_2_A_0_) );
  INVD0 U271 ( .I(y[19]), .ZN(n270) );
  INVD0 U272 ( .I(y[16]), .ZN(n267) );
  INVD0 U273 ( .I(y[14]), .ZN(n252) );
  INVD0 U274 ( .I(x[10]), .ZN(n135) );
  BUFFD0 U275 ( .I(y[20]), .Z(n52) );
  BUFFD0 U276 ( .I(x[20]), .Z(n50) );
  BUFFD0 U277 ( .I(x[17]), .Z(n51) );
  INVD0 U278 ( .I(y[13]), .ZN(n248) );
  INVD0 U279 ( .I(x[18]), .ZN(n257) );
  BUFFD0 U280 ( .I(y[17]), .Z(n53) );
  INVD0 U281 ( .I(x[14]), .ZN(n232) );
  INVD0 U282 ( .I(y[18]), .ZN(n249) );
  INVD0 U283 ( .I(x[16]), .ZN(n260) );
  INVD0 U284 ( .I(x[12]), .ZN(n236) );
  INVD0 U285 ( .I(y[15]), .ZN(n273) );
  INVD0 U286 ( .I(x[13]), .ZN(n233) );
  INVD0 U287 ( .I(n49), .ZN(result[2]) );
  INVD0 U288 ( .I(n49), .ZN(result[3]) );
  INVD0 U289 ( .I(n49), .ZN(result[5]) );
  INVD0 U290 ( .I(n49), .ZN(result[1]) );
  INVD0 U291 ( .I(n49), .ZN(result[0]) );
  INVD0 U292 ( .I(n49), .ZN(result[4]) );
  TIEH U293 ( .Z(n49) );
  AOI21D0 U294 ( .A1(n183), .A2(n192), .B(n188), .ZN(n206) );
  INVD0 U295 ( .I(n289), .ZN(n55) );
  MAOI222D0 U296 ( .A(n278), .B(n55), .C(n269), .ZN(n254) );
  CKND2D0 U297 ( .A1(n183), .A2(n277), .ZN(n57) );
  OAI21D0 U298 ( .A1(n275), .A2(n58), .B(n57), .ZN(n56) );
  CKND2D0 U299 ( .A1(n278), .A2(n277), .ZN(n287) );
  OAI21D0 U300 ( .A1(n183), .A2(x[22]), .B(n289), .ZN(n293) );
  MUX2ND0 U301 ( .I0(n269), .I1(n277), .S(n293), .ZN(n253) );
  NR2D0 U304 ( .A1(n301), .A2(intadd_3_SUM_5_), .ZN(n173) );
  NR2D0 U305 ( .A1(n183), .A2(intadd_3_SUM_1_), .ZN(n172) );
  NR2D0 U307 ( .A1(n300), .A2(intadd_3_SUM_4_), .ZN(n69) );
  XNR2D0 U310 ( .A1(exponent_input[2]), .A2(DP_OP_64J1_123_7885_n6), .ZN(n73)
         );
  XNR2D0 U311 ( .A1(exponent_input[3]), .A2(n75), .ZN(n74) );
  AOI221D0 U312 ( .A1(intadd_6_SUM_2_), .A2(n301), .B1(intadd_3_SUM_0_), .B2(
        n300), .C(n210), .ZN(mult_x_2_n65) );
  NR4D0 U313 ( .A1(n278), .A2(n183), .A3(intadd_6_SUM_0_), .A4(intadd_6_SUM_1_), .ZN(n314) );
  NR2D0 U314 ( .A1(n182), .A2(intadd_6_SUM_1_), .ZN(n96) );
  AOI221D0 U315 ( .A1(n183), .A2(n86), .B1(intadd_6_SUM_0_), .B2(n86), .C(n314), .ZN(mult_x_2_n68) );
  NR2D0 U316 ( .A1(n155), .A2(n182), .ZN(mult_x_2_n144) );
  NR2D0 U317 ( .A1(n182), .A2(intadd_6_SUM_2_), .ZN(mult_x_2_n145) );
  NR2D0 U318 ( .A1(n154), .A2(intadd_6_SUM_2_), .ZN(n90) );
  OAI21D0 U319 ( .A1(mult_x_2_n144), .A2(n90), .B(n212), .ZN(n94) );
  NR2D0 U320 ( .A1(n154), .A2(intadd_6_SUM_1_), .ZN(n91) );
  CKND2D0 U321 ( .A1(n300), .A2(n156), .ZN(n92) );
  XNR3D0 U322 ( .A1(n314), .A2(n91), .A3(mult_x_2_n145), .ZN(n100) );
  NR2D0 U323 ( .A1(n154), .A2(intadd_6_SUM_0_), .ZN(n97) );
  INVD0 U324 ( .I(n314), .ZN(n95) );
  CKND2D0 U325 ( .A1(n108), .A2(n156), .ZN(n162) );
  NR3D0 U326 ( .A1(n183), .A2(intadd_3_SUM_0_), .A3(n160), .ZN(n222) );
  AOI221D0 U327 ( .A1(n183), .A2(n160), .B1(intadd_3_SUM_0_), .B2(n160), .C(
        n222), .ZN(mult_x_2_n43) );
  AOI22D0 U328 ( .A1(n277), .A2(y[12]), .B1(n245), .B2(n269), .ZN(n102) );
  OAI32D0 U329 ( .A1(y[10]), .A2(y[11]), .A3(n269), .B1(n191), .B2(n239), .ZN(
        n101) );
  OA21D0 U330 ( .A1(n102), .A2(n101), .B(intadd_1_CI), .Z(n111) );
  OAI21D0 U331 ( .A1(n275), .A2(n135), .B(x[11]), .ZN(n103) );
  OAI31D0 U332 ( .A1(n275), .A2(x[11]), .A3(n135), .B(n103), .ZN(n107) );
  OAI21D0 U333 ( .A1(n239), .A2(n269), .B(n242), .ZN(n104) );
  OAI31D0 U334 ( .A1(n239), .A2(n269), .A3(n242), .B(n104), .ZN(n106) );
  CKND2D0 U335 ( .A1(n135), .A2(y[10]), .ZN(n105) );
  OAI22D0 U336 ( .A1(n275), .A2(x[12]), .B1(n236), .B2(n278), .ZN(n112) );
  AOI32D0 U337 ( .A1(n278), .A2(n135), .A3(intadd_2_A_0_), .B1(x[10]), .B2(
        n259), .ZN(n113) );
  XOR2D0 U338 ( .A1(n112), .A2(n113), .Z(n109) );
  AOI22D0 U339 ( .A1(n135), .A2(n298), .B1(n259), .B2(intadd_2_A_0_), .ZN(n114) );
  CKND2D0 U340 ( .A1(n114), .A2(n115), .ZN(n124) );
  INR2D0 U341 ( .A1(n124), .B1(n122), .ZN(n119) );
  AOI21D0 U342 ( .A1(n259), .A2(n135), .B(n298), .ZN(n117) );
  AOI22D0 U343 ( .A1(n278), .A2(n233), .B1(x[13]), .B2(n275), .ZN(n116) );
  AOI21D0 U344 ( .A1(n117), .A2(n116), .B(n123), .ZN(n125) );
  CKND2D0 U345 ( .A1(n119), .A2(n125), .ZN(n118) );
  AOI22D0 U346 ( .A1(n298), .A2(intadd_2_A_0_), .B1(n236), .B2(n259), .ZN(n134) );
  AOI22D0 U347 ( .A1(n278), .A2(n232), .B1(x[14]), .B2(n275), .ZN(n133) );
  NR2D0 U354 ( .A1(n183), .A2(intadd_6_SUM_1_), .ZN(mult_x_2_n91) );
  NR2D0 U355 ( .A1(n183), .A2(intadd_6_SUM_2_), .ZN(mult_x_2_n90) );
  NR2D0 U356 ( .A1(n155), .A2(n183), .ZN(mult_x_2_n89) );
  NR2D0 U357 ( .A1(n155), .A2(n300), .ZN(mult_x_2_n111) );
  AO222D0 U358 ( .A1(intadd_0_SUM_10_), .A2(n146), .B1(intadd_0_SUM_11_), .B2(
        n147), .C1(intadd_0_SUM_9_), .C2(n145), .Z(result[21]) );
  NR2D0 U359 ( .A1(n147), .A2(intadd_0_SUM_11_), .ZN(n149) );
  NR2D0 U360 ( .A1(n300), .A2(intadd_3_SUM_0_), .ZN(mult_x_2_n110) );
  NR2D0 U361 ( .A1(n300), .A2(intadd_3_SUM_1_), .ZN(mult_x_2_n109) );
  NR2D0 U362 ( .A1(n301), .A2(intadd_3_SUM_1_), .ZN(mult_x_2_n120) );
  NR2D0 U363 ( .A1(n301), .A2(intadd_3_SUM_2_), .ZN(mult_x_2_n119) );
  NR2D0 U364 ( .A1(n301), .A2(intadd_3_SUM_3_), .ZN(mult_x_2_n118) );
  NR2D0 U365 ( .A1(n154), .A2(intadd_3_SUM_2_), .ZN(mult_x_2_n130) );
  NR2D0 U366 ( .A1(n154), .A2(intadd_3_SUM_5_), .ZN(mult_x_2_n127) );
  NR2D0 U367 ( .A1(n154), .A2(intadd_3_SUM_4_), .ZN(mult_x_2_n128) );
  NR2D0 U368 ( .A1(n154), .A2(intadd_3_SUM_3_), .ZN(mult_x_2_n129) );
  NR2D0 U369 ( .A1(n182), .A2(n296), .ZN(mult_x_2_n93) );
  NR2D0 U370 ( .A1(n154), .A2(intadd_3_SUM_1_), .ZN(n216) );
  CKND2D0 U371 ( .A1(n216), .A2(n220), .ZN(n153) );
  CKND2D0 U372 ( .A1(n216), .A2(n217), .ZN(n152) );
  CKND2D0 U373 ( .A1(n217), .A2(n220), .ZN(n151) );
  NR2D0 U374 ( .A1(n301), .A2(intadd_6_SUM_1_), .ZN(intadd_0_CI) );
  NR2D0 U375 ( .A1(n155), .A2(n154), .ZN(intadd_0_B_0_) );
  NR2D0 U376 ( .A1(n182), .A2(intadd_3_SUM_0_), .ZN(mult_x_2_n99) );
  INVD0 U377 ( .I(intadd_6_SUM_2_), .ZN(n209) );
  AOI22D0 U378 ( .A1(n301), .A2(n156), .B1(n209), .B2(n300), .ZN(n159) );
  INVD0 U379 ( .I(intadd_3_SUM_0_), .ZN(n208) );
  CKND2D0 U380 ( .A1(n298), .A2(n208), .ZN(n158) );
  FA1D0 U381 ( .A(n160), .B(n159), .CI(n158), .CO(n161), .S(n157) );
  NR3D0 U382 ( .A1(intadd_6_SUM_1_), .A2(n162), .A3(n300), .ZN(mult_x_2_n72)
         );
  ND3D0 U383 ( .A1(n215), .A2(n163), .A3(n216), .ZN(n165) );
  ND3D0 U384 ( .A1(n217), .A2(n215), .A3(n216), .ZN(n164) );
  INVD0 U385 ( .I(n216), .ZN(n166) );
  ND3D0 U386 ( .A1(n215), .A2(n166), .A3(n220), .ZN(n169) );
  NR2D0 U387 ( .A1(n220), .A2(n216), .ZN(n167) );
  NR2D0 U388 ( .A1(n300), .A2(intadd_3_SUM_3_), .ZN(n225) );
  CKND2D0 U389 ( .A1(n221), .A2(n225), .ZN(n174) );
  MUX2ND0 U390 ( .I0(n174), .I1(n177), .S(n222), .ZN(n175) );
  CKND2D0 U391 ( .A1(mult_x_2_n37), .A2(n225), .ZN(n178) );
  AOI22D0 U392 ( .A1(n266), .A2(n242), .B1(n268), .B2(n239), .ZN(intadd_1_B_0_) );
  AOI22D0 U393 ( .A1(n277), .A2(y[13]), .B1(n248), .B2(n269), .ZN(n190) );
  OAI21D0 U394 ( .A1(y[10]), .A2(n188), .B(n192), .ZN(n189) );
  OAI21D0 U395 ( .A1(n190), .A2(n189), .B(intadd_1_B_1_), .ZN(intadd_1_A_0_)
         );
  OAI22D0 U396 ( .A1(n53), .A2(n192), .B1(y[18]), .B2(n191), .ZN(intadd_4_CI)
         );
  AOI22D0 U397 ( .A1(n278), .A2(n264), .B1(x[15]), .B2(n275), .ZN(intadd_2_CI)
         );
  AOI22D0 U398 ( .A1(n298), .A2(n236), .B1(n259), .B2(n233), .ZN(intadd_2_B_0_) );
  AOI22D0 U399 ( .A1(n301), .A2(n209), .B1(n208), .B2(n300), .ZN(n211) );
  AOI21D0 U400 ( .A1(n211), .A2(n210), .B(mult_x_2_n65), .ZN(mult_x_2_n66) );
  XOR3D0 U401 ( .A1(n220), .A2(n219), .A3(n218), .Z(mult_x_2_n71) );
  INVD0 U402 ( .I(n222), .ZN(n223) );
  AOI22D0 U403 ( .A1(n278), .A2(n257), .B1(x[18]), .B2(n275), .ZN(n228) );
  AOI22D0 U404 ( .A1(n298), .A2(n232), .B1(n259), .B2(n264), .ZN(n231) );
  AOI22D0 U405 ( .A1(n278), .A2(n258), .B1(n51), .B2(n275), .ZN(n230) );
  AOI22D0 U406 ( .A1(n298), .A2(n233), .B1(n259), .B2(n232), .ZN(n235) );
  AOI22D0 U407 ( .A1(n278), .A2(n260), .B1(x[16]), .B2(n275), .ZN(n234) );
  AOI22D0 U408 ( .A1(n266), .A2(n245), .B1(n268), .B2(n242), .ZN(n238) );
  AOI22D0 U409 ( .A1(n277), .A2(n252), .B1(y[14]), .B2(n269), .ZN(n237) );
  AOI22D0 U410 ( .A1(n266), .A2(n248), .B1(n268), .B2(n245), .ZN(n241) );
  AOI22D0 U411 ( .A1(n277), .A2(n273), .B1(y[15]), .B2(n269), .ZN(n240) );
  AOI22D0 U412 ( .A1(n268), .A2(n248), .B1(n266), .B2(n252), .ZN(n244) );
  AOI22D0 U413 ( .A1(n277), .A2(n267), .B1(y[16]), .B2(n269), .ZN(n243) );
  AOI22D0 U414 ( .A1(n268), .A2(n252), .B1(n266), .B2(n273), .ZN(n247) );
  INVD0 U415 ( .I(n53), .ZN(n265) );
  AOI22D0 U416 ( .A1(n277), .A2(n265), .B1(n53), .B2(n269), .ZN(n246) );
  AOI22D0 U417 ( .A1(n277), .A2(n249), .B1(y[18]), .B2(n269), .ZN(n250) );
  AOI22D0 U418 ( .A1(n278), .A2(n261), .B1(x[19]), .B2(n275), .ZN(n262) );
  AOI22D0 U419 ( .A1(n277), .A2(n270), .B1(y[19]), .B2(n269), .ZN(n271) );
  OAI21D0 U420 ( .A1(n275), .A2(n274), .B(n50), .ZN(n280) );
  CKND2D0 U421 ( .A1(n52), .A2(n276), .ZN(n282) );
  OAI21D0 U422 ( .A1(n278), .A2(n277), .B(n287), .ZN(n295) );
  FA1D0 U423 ( .A(n51), .B(x[19]), .CI(n280), .CO(n281), .S(intadd_5_A_3_) );
  FA1D0 U424 ( .A(n53), .B(y[19]), .CI(n282), .CO(n283), .S(intadd_4_A_3_) );
  OAI221D0 U427 ( .A1(n301), .A2(intadd_3_SUM_4_), .B1(n300), .B2(
        intadd_3_SUM_2_), .C(n299), .ZN(mult_x_2_n41) );
  CKXOR2D0 U45 ( .A1(n315), .A2(n84), .Z(n85) );
  XOR3D0 U47 ( .A1(DP_OP_64J1_123_7885_n11), .A2(y[30]), .A3(x[30]), .Z(n84)
         );
  NR2D0 U69 ( .A1(n81), .A2(exponent_input[6]), .ZN(n315) );
  INR2D0 U72 ( .A1(x[23]), .B1(y[23]), .ZN(DP_OP_64J1_123_7885_n17) );
  XNR2D0 U112 ( .A1(y[23]), .A2(x[23]), .ZN(exponent_input[0]) );
  MUX2ND0 U113 ( .I0(n317), .I1(n316), .S(n66), .ZN(mult_x_2_n28) );
  CKND2D0 U115 ( .A1(n67), .A2(n318), .ZN(n316) );
  CKND2D0 U118 ( .A1(n68), .A2(n67), .ZN(n317) );
  NR2D0 U122 ( .A1(n301), .A2(n296), .ZN(n66) );
  CKND0 U126 ( .I(n68), .ZN(n318) );
  AO211D0 U127 ( .A1(mult_x_2_n37), .A2(n221), .B(n175), .C(n319), .Z(
        mult_x_2_n33) );
  MUX2ND0 U128 ( .I0(n178), .I1(n176), .S(n222), .ZN(n319) );
  XOR4D0 U129 ( .A1(n69), .A2(n68), .A3(n66), .A4(n67), .Z(mult_x_2_n29) );
  OA21D0 U131 ( .A1(n66), .A2(n69), .B(n68), .Z(mult_x_2_n27) );
  OR2D0 U135 ( .A1(n154), .A2(n296), .Z(n299) );
  CKXOR2D0 U138 ( .A1(intadd_2_SUM_0_), .A2(n320), .Z(n141) );
  NR2D0 U198 ( .A1(n227), .A2(n226), .ZN(n320) );
  XNR2D0 U253 ( .A1(n132), .A2(n321), .ZN(n128) );
  INR2D0 U267 ( .A1(n130), .B1(n131), .ZN(n321) );
  CMPE42D1 U302 ( .A(intadd_4_A_2_), .B(intadd_4_B_2_), .C(intadd_4_n3), .CIX(
        n293), .D(n292), .CO(intadd_3_B_2_), .COX(intadd_4_n2), .S(
        intadd_3_A_1_) );
  CMPE42D1 U303 ( .A(intadd_4_A_3_), .B(intadd_4_B_3_), .C(intadd_4_n2), .CIX(
        n291), .D(n290), .CO(intadd_3_B_3_), .COX(intadd_4_n1), .S(
        intadd_3_A_2_) );
endmodule

