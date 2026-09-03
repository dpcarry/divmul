/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Wed Sep  2 22:03:32 2026
/////////////////////////////////////////////////////////////


module oadm_fixed_l3_div_root_opt ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   C11_DATA2_1, DP_OP_61J1_122_7044_n144, DP_OP_61J1_122_7044_n141,
         DP_OP_61J1_122_7044_n138, DP_OP_61J1_122_7044_n128,
         DP_OP_61J1_122_7044_n125, DP_OP_61J1_122_7044_n124,
         DP_OP_61J1_122_7044_n123, DP_OP_61J1_122_7044_n89,
         DP_OP_61J1_122_7044_n86, DP_OP_61J1_122_7044_n83,
         DP_OP_61J1_122_7044_n73, DP_OP_61J1_122_7044_n70,
         DP_OP_61J1_122_7044_n69, DP_OP_61J1_122_7044_n68, mult_x_10_n38,
         mult_x_10_n34, mult_x_10_n33, mult_x_10_n21, mult_x_10_n18,
         mult_x_10_n16, mult_x_10_n15, mult_x_10_n14, mult_x_10_n13,
         mult_x_10_n12, mult_x_10_n11, mult_x_2_n162, mult_x_2_n160,
         mult_x_2_n158, mult_x_2_n154, mult_x_2_n153, mult_x_2_n152,
         mult_x_2_n151, mult_x_2_n150, mult_x_2_n146, mult_x_2_n144,
         mult_x_2_n143, mult_x_2_n142, mult_x_2_n136, mult_x_2_n135,
         mult_x_2_n134, mult_x_2_n133, mult_x_2_n132, mult_x_2_n131,
         mult_x_2_n128, mult_x_2_n126, mult_x_2_n124, mult_x_2_n123,
         mult_x_2_n118, mult_x_2_n117, mult_x_2_n116, mult_x_2_n115,
         mult_x_2_n113, mult_x_2_n110, mult_x_2_n107, mult_x_2_n106,
         mult_x_2_n105, mult_x_2_n102, mult_x_2_n99, mult_x_2_n97,
         mult_x_2_n91, mult_x_2_n88, mult_x_2_n87, mult_x_2_n86, mult_x_2_n85,
         mult_x_2_n84, mult_x_2_n83, mult_x_2_n82, mult_x_2_n81, mult_x_2_n80,
         mult_x_2_n79, mult_x_2_n78, mult_x_2_n77, mult_x_2_n76, mult_x_2_n75,
         mult_x_2_n74, mult_x_2_n73, mult_x_2_n72, mult_x_2_n71, mult_x_2_n70,
         mult_x_2_n69, mult_x_2_n68, mult_x_2_n67, mult_x_2_n66, mult_x_2_n65,
         mult_x_2_n64, mult_x_2_n63, mult_x_2_n62, mult_x_2_n61, mult_x_2_n60,
         mult_x_2_n59, mult_x_2_n58, mult_x_2_n57, mult_x_2_n56, mult_x_2_n55,
         mult_x_2_n54, mult_x_2_n53, mult_x_2_n52, mult_x_2_n51, mult_x_2_n50,
         mult_x_2_n49, mult_x_2_n48, mult_x_2_n47, mult_x_2_n46, mult_x_2_n45,
         mult_x_2_n44, mult_x_2_n43, mult_x_2_n42, mult_x_2_n41, mult_x_2_n40,
         mult_x_2_n39, mult_x_2_n38, mult_x_2_n37, mult_x_2_n36, mult_x_2_n35,
         mult_x_2_n34, mult_x_2_n33, mult_x_2_n32, mult_x_2_n31, mult_x_2_n30,
         mult_x_2_n29, mult_x_2_n28, mult_x_2_n27, mult_x_2_n26, mult_x_2_n25,
         mult_x_2_n24, mult_x_2_n23, mult_x_2_n22, mult_x_2_n21, mult_x_2_n20,
         mult_x_2_n19, mult_x_2_n18, DP_OP_63J1_123_2151_n23,
         DP_OP_63J1_123_2151_n22, DP_OP_63J1_123_2151_n21,
         DP_OP_63J1_123_2151_n20, DP_OP_63J1_123_2151_n19,
         DP_OP_63J1_123_2151_n18, DP_OP_63J1_123_2151_n17,
         DP_OP_63J1_123_2151_n16, DP_OP_63J1_123_2151_n15,
         DP_OP_63J1_123_2151_n14, DP_OP_63J1_123_2151_n13,
         DP_OP_63J1_123_2151_n12, DP_OP_63J1_123_2151_n11,
         DP_OP_63J1_123_2151_n7, DP_OP_63J1_123_2151_n6, intadd_0_B_9_,
         intadd_0_CI, intadd_0_SUM_9_, intadd_0_SUM_8_, intadd_0_SUM_7_,
         intadd_0_SUM_6_, intadd_0_SUM_5_, intadd_0_SUM_4_, intadd_0_SUM_3_,
         intadd_0_SUM_2_, intadd_0_SUM_1_, intadd_0_SUM_0_, intadd_0_n10,
         intadd_0_n9, intadd_0_n8, intadd_0_n7, intadd_0_n6, intadd_0_n5,
         intadd_0_n4, intadd_0_n3, intadd_0_n2, intadd_0_n1, intadd_1_A_9_,
         intadd_1_A_8_, intadd_1_A_7_, intadd_1_A_6_, intadd_1_A_4_,
         intadd_1_A_1_, intadd_1_A_0_, intadd_1_B_9_, intadd_1_B_8_,
         intadd_1_B_6_, intadd_1_B_5_, intadd_1_B_4_, intadd_1_B_3_,
         intadd_1_B_2_, intadd_1_B_1_, intadd_1_B_0_, intadd_1_CI,
         intadd_1_SUM_9_, intadd_1_SUM_8_, intadd_1_SUM_7_, intadd_1_SUM_6_,
         intadd_1_SUM_5_, intadd_1_SUM_4_, intadd_1_SUM_3_, intadd_1_SUM_2_,
         intadd_1_SUM_1_, intadd_1_SUM_0_, intadd_1_n10, intadd_1_n9,
         intadd_1_n8, intadd_1_n7, intadd_1_n6, intadd_1_n5, intadd_1_n4,
         intadd_1_n3, intadd_1_n2, intadd_1_n1, intadd_2_A_4_, intadd_2_A_1_,
         intadd_2_A_0_, intadd_2_B_5_, intadd_2_B_4_, intadd_2_B_3_,
         intadd_2_B_2_, intadd_2_B_1_, intadd_2_B_0_, intadd_2_CI,
         intadd_2_SUM_5_, intadd_2_SUM_4_, intadd_2_SUM_3_, intadd_2_SUM_2_,
         intadd_2_SUM_1_, intadd_2_SUM_0_, intadd_2_n6, intadd_2_n5,
         intadd_2_n4, intadd_2_n3, intadd_2_n2, intadd_2_n1, intadd_3_A_3_,
         intadd_3_A_2_, intadd_3_A_1_, intadd_3_A_0_, intadd_3_B_4_,
         intadd_3_B_3_, intadd_3_B_2_, intadd_3_B_1_, intadd_3_SUM_4_,
         intadd_3_SUM_3_, intadd_3_SUM_2_, intadd_3_SUM_1_, intadd_3_SUM_0_,
         intadd_3_n5, intadd_3_n4, intadd_3_n3, intadd_3_n2, intadd_3_n1,
         intadd_4_A_1_, intadd_4_A_0_, intadd_4_B_4_, intadd_4_B_2_,
         intadd_4_B_1_, intadd_4_B_0_, intadd_4_CI, intadd_4_SUM_1_,
         intadd_4_SUM_0_, intadd_4_n5, intadd_4_n4, intadd_4_n3, intadd_4_n2,
         intadd_4_n1, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n76, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
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
         n232, n233, n234, n235;
  wire   [6:0] implementation_exponent_input;

  CMPE42D1 DP_OP_61J1_122_7044_U118 ( .A(DP_OP_61J1_122_7044_n138), .B(y[16]), 
        .C(DP_OP_61J1_122_7044_n141), .CIX(DP_OP_61J1_122_7044_n128), .D(
        DP_OP_61J1_122_7044_n144), .CO(DP_OP_61J1_122_7044_n124), .COX(
        DP_OP_61J1_122_7044_n123), .S(DP_OP_61J1_122_7044_n125) );
  CMPE42D1 DP_OP_61J1_122_7044_U64 ( .A(DP_OP_61J1_122_7044_n83), .B(x[16]), 
        .C(DP_OP_61J1_122_7044_n86), .CIX(DP_OP_61J1_122_7044_n73), .D(
        DP_OP_61J1_122_7044_n89), .CO(DP_OP_61J1_122_7044_n69), .COX(
        DP_OP_61J1_122_7044_n68), .S(DP_OP_61J1_122_7044_n70) );
  CMPE42D1 mult_x_10_U13 ( .A(mult_x_10_n38), .B(n63), .C(mult_x_10_n34), 
        .CIX(mult_x_10_n21), .D(mult_x_10_n18), .CO(mult_x_10_n15), .COX(
        mult_x_10_n14), .S(mult_x_10_n16) );
  CMPE42D1 mult_x_10_U12 ( .A(n62), .B(n61), .C(x[21]), .CIX(mult_x_10_n14), 
        .D(mult_x_10_n33), .CO(mult_x_10_n12), .COX(mult_x_10_n11), .S(
        mult_x_10_n13) );
  CMPE42D1 mult_x_2_U43 ( .A(mult_x_2_n146), .B(mult_x_2_n162), .C(
        mult_x_2_n154), .CIX(mult_x_2_n88), .D(mult_x_2_n91), .CO(mult_x_2_n85), .COX(mult_x_2_n84), .S(mult_x_2_n86) );
  CMPE42D1 mult_x_2_U40 ( .A(mult_x_2_n87), .B(mult_x_2_n153), .C(mult_x_2_n83), .CIX(mult_x_2_n81), .D(mult_x_2_n84), .CO(mult_x_2_n78), .COX(mult_x_2_n77), 
        .S(mult_x_2_n79) );
  CMPE42D1 mult_x_2_U38 ( .A(mult_x_2_n128), .B(mult_x_2_n160), .C(
        mult_x_2_n152), .CIX(mult_x_2_n80), .D(mult_x_2_n136), .CO(
        mult_x_2_n73), .COX(mult_x_2_n72), .S(mult_x_2_n74) );
  CMPE42D1 mult_x_2_U37 ( .A(mult_x_2_n82), .B(mult_x_2_n144), .C(mult_x_2_n76), .CIX(mult_x_2_n74), .D(mult_x_2_n77), .CO(mult_x_2_n70), .COX(mult_x_2_n69), 
        .S(mult_x_2_n71) );
  CMPE42D1 mult_x_2_U34 ( .A(mult_x_2_n135), .B(mult_x_2_n151), .C(
        mult_x_2_n143), .CIX(mult_x_2_n66), .D(mult_x_2_n75), .CO(mult_x_2_n63), .COX(mult_x_2_n62), .S(mult_x_2_n64) );
  CMPE42D1 mult_x_2_U33 ( .A(mult_x_2_n72), .B(mult_x_2_n68), .C(mult_x_2_n69), 
        .CIX(mult_x_2_n73), .D(mult_x_2_n64), .CO(mult_x_2_n60), .COX(
        mult_x_2_n59), .S(mult_x_2_n61) );
  CMPE42D1 mult_x_2_U32 ( .A(mult_x_2_n102), .B(mult_x_2_n110), .C(
        mult_x_2_n118), .CIX(mult_x_2_n65), .D(mult_x_2_n126), .CO(
        mult_x_2_n57), .COX(mult_x_2_n56), .S(mult_x_2_n58) );
  CMPE42D1 mult_x_2_U31 ( .A(mult_x_2_n134), .B(mult_x_2_n158), .C(
        mult_x_2_n150), .CIX(mult_x_2_n62), .D(mult_x_2_n142), .CO(
        mult_x_2_n54), .COX(mult_x_2_n53), .S(mult_x_2_n55) );
  CMPE42D1 mult_x_2_U30 ( .A(mult_x_2_n55), .B(mult_x_2_n67), .C(mult_x_2_n58), 
        .CIX(mult_x_2_n59), .D(mult_x_2_n63), .CO(mult_x_2_n51), .COX(
        mult_x_2_n50), .S(mult_x_2_n52) );
  CMPE42D1 mult_x_2_U27 ( .A(mult_x_2_n117), .B(mult_x_2_n133), .C(
        mult_x_2_n49), .CIX(mult_x_2_n47), .D(mult_x_2_n53), .CO(mult_x_2_n44), 
        .COX(mult_x_2_n43), .S(mult_x_2_n45) );
  CMPE42D1 mult_x_2_U26 ( .A(mult_x_2_n57), .B(mult_x_2_n56), .C(mult_x_2_n54), 
        .CIX(mult_x_2_n50), .D(mult_x_2_n45), .CO(mult_x_2_n41), .COX(
        mult_x_2_n40), .S(mult_x_2_n42) );
  CMPE42D1 mult_x_2_U24 ( .A(mult_x_2_n132), .B(mult_x_2_n116), .C(
        mult_x_2_n124), .CIX(mult_x_2_n39), .D(mult_x_2_n48), .CO(mult_x_2_n36), .COX(mult_x_2_n35), .S(mult_x_2_n37) );
  CMPE42D1 mult_x_2_U23 ( .A(mult_x_2_n43), .B(mult_x_2_n46), .C(mult_x_2_n37), 
        .CIX(mult_x_2_n40), .D(mult_x_2_n44), .CO(mult_x_2_n33), .COX(
        mult_x_2_n32), .S(mult_x_2_n34) );
  CMPE42D1 mult_x_2_U22 ( .A(mult_x_2_n99), .B(mult_x_2_n115), .C(
        mult_x_2_n131), .CIX(mult_x_2_n38), .D(mult_x_2_n123), .CO(
        mult_x_2_n30), .COX(mult_x_2_n29), .S(mult_x_2_n31) );
  CMPE42D1 mult_x_2_U21 ( .A(mult_x_2_n35), .B(mult_x_2_n107), .C(mult_x_2_n31), .CIX(mult_x_2_n32), .D(mult_x_2_n36), .CO(mult_x_2_n27), .COX(mult_x_2_n26), 
        .S(mult_x_2_n28) );
  CMPE42D1 mult_x_2_U19 ( .A(mult_x_2_n29), .B(mult_x_2_n106), .C(mult_x_2_n25), .CIX(mult_x_2_n26), .D(mult_x_2_n30), .CO(mult_x_2_n22), .COX(mult_x_2_n21), 
        .S(mult_x_2_n23) );
  CMPE42D1 mult_x_2_U18 ( .A(mult_x_2_n97), .B(mult_x_2_n113), .C(
        mult_x_2_n105), .CIX(mult_x_2_n21), .D(mult_x_2_n24), .CO(mult_x_2_n19), .COX(mult_x_2_n18), .S(mult_x_2_n20) );
  FA1D0 intadd_4_U6 ( .A(intadd_4_A_0_), .B(intadd_4_B_0_), .CI(intadd_4_CI), 
        .CO(intadd_4_n5), .S(intadd_4_SUM_0_) );
  FA1D0 DP_OP_63J1_123_2151_U23 ( .A(DP_OP_63J1_123_2151_n22), .B(x[25]), .CI(
        DP_OP_63J1_123_2151_n16), .CO(DP_OP_63J1_123_2151_n15), .S(
        implementation_exponent_input[2]) );
  FA1D0 intadd_0_U4 ( .A(mult_x_2_n23), .B(mult_x_2_n27), .CI(intadd_0_n4), 
        .CO(intadd_0_n3), .S(intadd_0_SUM_7_) );
  FA1D0 intadd_0_U2 ( .A(mult_x_2_n19), .B(intadd_0_B_9_), .CI(intadd_0_n2), 
        .CO(intadd_0_n1), .S(intadd_0_SUM_9_) );
  FA1D0 intadd_0_U7 ( .A(mult_x_2_n42), .B(mult_x_2_n51), .CI(intadd_0_n7), 
        .CO(intadd_0_n6), .S(intadd_0_SUM_4_) );
  FA1D0 intadd_3_U5 ( .A(intadd_3_A_1_), .B(intadd_3_B_1_), .CI(intadd_3_n5), 
        .CO(intadd_3_n4), .S(intadd_3_SUM_1_) );
  FA1D0 intadd_3_U6 ( .A(intadd_3_A_0_), .B(intadd_1_SUM_2_), .CI(
        intadd_1_SUM_1_), .CO(intadd_3_n5), .S(intadd_3_SUM_0_) );
  FA1D0 intadd_1_U4 ( .A(intadd_1_A_7_), .B(intadd_3_n1), .CI(intadd_1_n4), 
        .CO(intadd_1_n3), .S(intadd_1_SUM_7_) );
  FA1D0 intadd_3_U3 ( .A(intadd_3_A_3_), .B(intadd_3_B_3_), .CI(intadd_3_n3), 
        .CO(intadd_3_n2), .S(intadd_3_SUM_3_) );
  FA1D0 intadd_1_U10 ( .A(intadd_1_A_1_), .B(intadd_1_B_1_), .CI(intadd_1_n10), 
        .CO(intadd_1_n9), .S(intadd_1_SUM_1_) );
  FA1D0 intadd_1_U5 ( .A(intadd_1_A_6_), .B(intadd_1_B_6_), .CI(intadd_1_n5), 
        .CO(intadd_1_n4), .S(intadd_1_SUM_6_) );
  FA1D0 intadd_2_U7 ( .A(intadd_2_A_0_), .B(intadd_2_B_0_), .CI(intadd_2_CI), 
        .CO(intadd_2_n6), .S(intadd_2_SUM_0_) );
  FA1D0 intadd_1_U11 ( .A(intadd_1_A_0_), .B(intadd_1_B_0_), .CI(intadd_1_CI), 
        .CO(intadd_1_n10), .S(intadd_1_SUM_0_) );
  FA1D0 intadd_2_U3 ( .A(intadd_2_A_4_), .B(intadd_2_B_4_), .CI(intadd_2_n3), 
        .CO(intadd_2_n2), .S(intadd_2_SUM_4_) );
  FA1D0 intadd_1_U8 ( .A(DP_OP_61J1_122_7044_n69), .B(intadd_1_B_3_), .CI(
        intadd_1_n8), .CO(intadd_1_n7), .S(intadd_1_SUM_3_) );
  FA1D0 intadd_1_U7 ( .A(intadd_1_A_4_), .B(intadd_1_B_4_), .CI(intadd_1_n7), 
        .CO(intadd_1_n6), .S(intadd_1_SUM_4_) );
  FA1D0 intadd_2_U6 ( .A(intadd_2_A_1_), .B(intadd_2_B_1_), .CI(intadd_2_n6), 
        .CO(intadd_2_n5), .S(intadd_2_SUM_1_) );
  FA1D0 intadd_1_U9 ( .A(DP_OP_61J1_122_7044_n70), .B(intadd_1_B_2_), .CI(
        intadd_1_n9), .CO(intadd_1_n8), .S(intadd_1_SUM_2_) );
  FA1D0 intadd_2_U5 ( .A(DP_OP_61J1_122_7044_n125), .B(intadd_2_B_2_), .CI(
        intadd_2_n5), .CO(intadd_2_n4), .S(intadd_2_SUM_2_) );
  FA1D0 intadd_2_U4 ( .A(DP_OP_61J1_122_7044_n124), .B(intadd_2_B_3_), .CI(
        intadd_2_n4), .CO(intadd_2_n3), .S(intadd_2_SUM_3_) );
  FA1D0 intadd_2_U2 ( .A(y[19]), .B(intadd_2_B_5_), .CI(intadd_2_n2), .CO(
        intadd_2_n1), .S(intadd_2_SUM_5_) );
  FA1D0 intadd_1_U6 ( .A(x[19]), .B(intadd_1_B_5_), .CI(intadd_1_n6), .CO(
        intadd_1_n5), .S(intadd_1_SUM_5_) );
  FA1D0 intadd_4_U5 ( .A(intadd_4_A_1_), .B(intadd_4_B_1_), .CI(intadd_4_n5), 
        .CO(intadd_4_n4), .S(intadd_4_SUM_1_) );
  FA1D0 intadd_4_U4 ( .A(mult_x_10_n16), .B(intadd_4_B_2_), .CI(intadd_4_n4), 
        .CO(intadd_4_n3), .S(intadd_1_B_6_) );
  FA1D0 intadd_3_U4 ( .A(intadd_3_A_2_), .B(intadd_3_B_2_), .CI(intadd_3_n4), 
        .CO(intadd_3_n3), .S(intadd_3_SUM_2_) );
  FA1D0 intadd_4_U3 ( .A(mult_x_10_n13), .B(mult_x_10_n15), .CI(intadd_4_n3), 
        .CO(intadd_4_n2), .S(intadd_1_B_8_) );
  FA1D0 intadd_4_U2 ( .A(mult_x_10_n12), .B(intadd_4_B_4_), .CI(intadd_4_n2), 
        .CO(intadd_4_n1), .S(intadd_1_A_9_) );
  FA1D0 intadd_3_U2 ( .A(intadd_1_SUM_6_), .B(intadd_3_B_4_), .CI(intadd_3_n2), 
        .CO(intadd_3_n1), .S(intadd_3_SUM_4_) );
  FA1D0 intadd_1_U3 ( .A(intadd_1_A_8_), .B(intadd_1_B_8_), .CI(intadd_1_n3), 
        .CO(intadd_1_n2), .S(intadd_1_SUM_8_) );
  FA1D0 intadd_1_U2 ( .A(intadd_1_A_9_), .B(intadd_1_B_9_), .CI(intadd_1_n2), 
        .CO(intadd_1_n1), .S(intadd_1_SUM_9_) );
  FA1D0 intadd_0_U11 ( .A(mult_x_2_n85), .B(mult_x_2_n79), .CI(intadd_0_CI), 
        .CO(intadd_0_n10), .S(intadd_0_SUM_0_) );
  FA1D0 intadd_0_U10 ( .A(mult_x_2_n78), .B(mult_x_2_n71), .CI(intadd_0_n10), 
        .CO(intadd_0_n9), .S(intadd_0_SUM_1_) );
  FA1D0 intadd_0_U9 ( .A(mult_x_2_n70), .B(mult_x_2_n61), .CI(intadd_0_n9), 
        .CO(intadd_0_n8), .S(intadd_0_SUM_2_) );
  FA1D0 intadd_0_U8 ( .A(mult_x_2_n60), .B(mult_x_2_n52), .CI(intadd_0_n8), 
        .CO(intadd_0_n7), .S(intadd_0_SUM_3_) );
  FA1D0 intadd_0_U6 ( .A(mult_x_2_n34), .B(mult_x_2_n41), .CI(intadd_0_n6), 
        .CO(intadd_0_n5), .S(intadd_0_SUM_5_) );
  FA1D0 intadd_0_U5 ( .A(mult_x_2_n28), .B(mult_x_2_n33), .CI(intadd_0_n5), 
        .CO(intadd_0_n4), .S(intadd_0_SUM_6_) );
  FA1D0 intadd_0_U3 ( .A(mult_x_2_n20), .B(mult_x_2_n22), .CI(intadd_0_n3), 
        .CO(intadd_0_n2), .S(intadd_0_SUM_8_) );
  FA1D0 DP_OP_63J1_123_2151_U24 ( .A(DP_OP_63J1_123_2151_n23), .B(x[24]), .CI(
        DP_OP_63J1_123_2151_n17), .CO(DP_OP_63J1_123_2151_n16), .S(
        implementation_exponent_input[1]) );
  FA1D0 DP_OP_63J1_123_2151_U12 ( .A(DP_OP_63J1_123_2151_n7), .B(n234), .CI(
        implementation_exponent_input[1]), .CO(DP_OP_63J1_123_2151_n6), .S(
        C11_DATA2_1) );
  FA1D0 DP_OP_63J1_123_2151_U22 ( .A(DP_OP_63J1_123_2151_n21), .B(x[26]), .CI(
        DP_OP_63J1_123_2151_n15), .CO(DP_OP_63J1_123_2151_n14), .S(
        implementation_exponent_input[3]) );
  FA1D0 DP_OP_63J1_123_2151_U21 ( .A(DP_OP_63J1_123_2151_n20), .B(x[27]), .CI(
        DP_OP_63J1_123_2151_n14), .CO(DP_OP_63J1_123_2151_n13), .S(
        implementation_exponent_input[4]) );
  FA1D0 DP_OP_63J1_123_2151_U20 ( .A(DP_OP_63J1_123_2151_n19), .B(x[28]), .CI(
        DP_OP_63J1_123_2151_n13), .CO(DP_OP_63J1_123_2151_n12), .S(
        implementation_exponent_input[5]) );
  FA1D0 DP_OP_63J1_123_2151_U19 ( .A(DP_OP_63J1_123_2151_n18), .B(x[29]), .CI(
        DP_OP_63J1_123_2151_n12), .CO(DP_OP_63J1_123_2151_n11), .S(
        implementation_exponent_input[6]) );
  FA1D0 U46 ( .A(mult_x_2_n18), .B(n210), .CI(n209), .CO(n65), .S(
        intadd_0_B_9_) );
  FA1D0 U47 ( .A(n192), .B(n191), .CI(n190), .CO(mult_x_2_n46), .S(
        mult_x_2_n47) );
  FA1D0 U48 ( .A(intadd_4_SUM_1_), .B(intadd_1_SUM_5_), .CI(n177), .CO(
        intadd_3_B_4_), .S(intadd_3_A_3_) );
  FA1D0 U49 ( .A(n129), .B(n128), .CI(intadd_2_SUM_4_), .CO(n130), .S(n127) );
  FA1D0 U50 ( .A(n125), .B(n124), .CI(intadd_2_SUM_3_), .CO(n126), .S(n123) );
  FA1D0 U51 ( .A(n176), .B(n175), .CI(n174), .CO(intadd_2_B_2_), .S(
        intadd_2_B_1_) );
  FA1D0 U52 ( .A(n169), .B(n168), .CI(n167), .CO(intadd_1_B_2_), .S(
        intadd_1_B_1_) );
  FA1D0 U53 ( .A(n135), .B(n134), .CI(n133), .CO(n136), .S(n132) );
  FA1D0 U54 ( .A(n143), .B(n142), .CI(n141), .CO(n144), .S(n140) );
  FA1D0 U55 ( .A(n198), .B(n197), .CI(n196), .CO(mult_x_2_n65), .S(
        mult_x_2_n66) );
  FA1D0 U56 ( .A(n187), .B(n186), .CI(n185), .CO(mult_x_2_n38), .S(
        mult_x_2_n39) );
  FA1D0 U57 ( .A(intadd_2_SUM_2_), .B(n121), .CI(n120), .CO(n122), .S(n108) );
  FA1D0 U58 ( .A(n181), .B(n180), .CI(n179), .CO(mult_x_2_n24), .S(
        mult_x_2_n25) );
  FA1D0 U59 ( .A(n216), .B(n215), .CI(n214), .CO(n220), .S(n217) );
  MUX2D0 U60 ( .I0(n79), .I1(n78), .S(n231), .Z(result[30]) );
  MUX2D0 U61 ( .I0(implementation_exponent_input[6]), .I1(n74), .S(n231), .Z(
        result[29]) );
  MUX2D0 U62 ( .I0(implementation_exponent_input[5]), .I1(n72), .S(n231), .Z(
        result[28]) );
  OR2D0 U64 ( .A1(implementation_exponent_input[5]), .A2(n73), .Z(n76) );
  MUX2D0 U65 ( .I0(implementation_exponent_input[4]), .I1(n70), .S(n231), .Z(
        result[27]) );
  OR2D0 U66 ( .A1(implementation_exponent_input[4]), .A2(n71), .Z(n73) );
  MUX2D0 U67 ( .I0(implementation_exponent_input[3]), .I1(n68), .S(n231), .Z(
        result[26]) );
  OR2D0 U68 ( .A1(n69), .A2(implementation_exponent_input[3]), .Z(n71) );
  MUX2D0 U69 ( .I0(implementation_exponent_input[2]), .I1(n67), .S(n231), .Z(
        result[25]) );
  OR2D0 U70 ( .A1(DP_OP_63J1_123_2151_n6), .A2(
        implementation_exponent_input[2]), .Z(n69) );
  MUX2D0 U71 ( .I0(implementation_exponent_input[1]), .I1(C11_DATA2_1), .S(
        n231), .Z(result[24]) );
  AO222D0 U72 ( .A1(intadd_0_SUM_6_), .A2(n103), .B1(intadd_0_SUM_8_), .B2(
        n102), .C1(intadd_0_SUM_7_), .C2(n101), .Z(result[21]) );
  OR2D0 U73 ( .A1(implementation_exponent_input[0]), .A2(n229), .Z(
        DP_OP_63J1_123_2151_n7) );
  NR2D0 U74 ( .A1(n102), .A2(intadd_0_SUM_8_), .ZN(n97) );
  XNR2D0 U75 ( .A1(n229), .A2(implementation_exponent_input[0]), .ZN(
        result[23]) );
  CKND2D0 U76 ( .A1(n231), .A2(intadd_0_SUM_9_), .ZN(n229) );
  CKND2D0 U77 ( .A1(n231), .A2(n96), .ZN(n234) );
  INVD0 U78 ( .I(intadd_0_SUM_9_), .ZN(n96) );
  XNR3D0 U79 ( .A1(n66), .A2(n65), .A3(intadd_0_n1), .ZN(n231) );
  INVD0 U80 ( .I(intadd_0_SUM_7_), .ZN(n232) );
  INVD0 U81 ( .I(intadd_0_SUM_6_), .ZN(n230) );
  INVD0 U82 ( .I(intadd_0_SUM_5_), .ZN(n233) );
  INVD0 U83 ( .I(intadd_0_SUM_4_), .ZN(n228) );
  INVD0 U84 ( .I(intadd_0_SUM_3_), .ZN(n227) );
  INVD0 U85 ( .I(intadd_0_SUM_2_), .ZN(n226) );
  INVD0 U86 ( .I(intadd_0_SUM_1_), .ZN(n225) );
  INVD0 U87 ( .I(intadd_0_SUM_0_), .ZN(n224) );
  INVD0 U88 ( .I(n217), .ZN(n222) );
  NR2D0 U89 ( .A1(n184), .A2(n189), .ZN(n66) );
  NR2D0 U90 ( .A1(n195), .A2(n194), .ZN(n180) );
  NR2D0 U91 ( .A1(n195), .A2(n182), .ZN(mult_x_2_n105) );
  NR2D0 U92 ( .A1(n189), .A2(n182), .ZN(n210) );
  NR2D0 U93 ( .A1(n195), .A2(n184), .ZN(n209) );
  NR2D0 U94 ( .A1(n189), .A2(n194), .ZN(mult_x_2_n113) );
  XNR3D0 U95 ( .A1(mult_x_2_n86), .A2(n220), .A3(n219), .ZN(n223) );
  OA21D0 U96 ( .A1(n219), .A2(n220), .B(mult_x_2_n86), .Z(intadd_0_CI) );
  INVD0 U97 ( .I(intadd_1_SUM_9_), .ZN(n195) );
  NR2D0 U98 ( .A1(n105), .A2(n182), .ZN(mult_x_2_n106) );
  NR2D0 U99 ( .A1(n105), .A2(n184), .ZN(mult_x_2_n97) );
  NR2D0 U100 ( .A1(n105), .A2(n194), .ZN(mult_x_2_n115) );
  XOR2D0 U101 ( .A1(intadd_1_n1), .A2(n148), .Z(n189) );
  NR2D0 U102 ( .A1(n204), .A2(n194), .ZN(mult_x_2_n116) );
  XOR2D0 U103 ( .A1(n113), .A2(n112), .Z(n215) );
  NR2D0 U104 ( .A1(n204), .A2(n184), .ZN(n181) );
  INVD0 U105 ( .I(intadd_1_SUM_8_), .ZN(n105) );
  NR2D0 U106 ( .A1(n204), .A2(n182), .ZN(mult_x_2_n107) );
  AO21D0 U107 ( .A1(n212), .A2(n211), .B(n214), .Z(n221) );
  NR2D0 U108 ( .A1(n211), .A2(n212), .ZN(n214) );
  AOI221D0 U109 ( .A1(n182), .A2(n94), .B1(n200), .B2(n94), .C(mult_x_2_n48), 
        .ZN(mult_x_2_n49) );
  NR2D0 U110 ( .A1(n183), .A2(n194), .ZN(mult_x_2_n117) );
  NR2D0 U111 ( .A1(n183), .A2(n184), .ZN(mult_x_2_n99) );
  INVD0 U112 ( .I(intadd_1_SUM_7_), .ZN(n204) );
  OAI21D0 U113 ( .A1(n117), .A2(n116), .B(n115), .ZN(n211) );
  CKND2D0 U114 ( .A1(n115), .A2(n111), .ZN(n110) );
  INVD0 U115 ( .I(intadd_3_SUM_4_), .ZN(n183) );
  INVD0 U116 ( .I(intadd_3_SUM_3_), .ZN(n200) );
  AOI221D0 U117 ( .A1(n202), .A2(n87), .B1(n114), .B2(n87), .C(mult_x_2_n87), 
        .ZN(mult_x_2_n88) );
  AOI221D0 U118 ( .A1(n108), .A2(n107), .B1(n202), .B2(n107), .C(mult_x_2_n91), 
        .ZN(n216) );
  AOI221D0 U119 ( .A1(n182), .A2(n88), .B1(n114), .B2(n88), .C(mult_x_2_n67), 
        .ZN(mult_x_2_n68) );
  AOI221D0 U120 ( .A1(n108), .A2(n92), .B1(n194), .B2(n92), .C(mult_x_2_n82), 
        .ZN(mult_x_2_n83) );
  NR2D0 U121 ( .A1(n201), .A2(n182), .ZN(mult_x_2_n110) );
  AOI221D0 U122 ( .A1(n194), .A2(n90), .B1(n114), .B2(n90), .C(mult_x_2_n75), 
        .ZN(mult_x_2_n76) );
  INVD0 U123 ( .I(intadd_3_SUM_2_), .ZN(n201) );
  XOR2D0 U124 ( .A1(n100), .A2(n99), .Z(n218) );
  INVD0 U125 ( .I(intadd_3_SUM_1_), .ZN(n114) );
  OA21D0 U126 ( .A1(intadd_4_n1), .A2(n149), .B(n148), .Z(intadd_1_B_9_) );
  INVD0 U127 ( .I(n127), .ZN(intadd_3_A_2_) );
  INVD0 U128 ( .I(n130), .ZN(intadd_3_B_3_) );
  CKND2D0 U129 ( .A1(n106), .A2(n119), .ZN(n213) );
  INVD0 U130 ( .I(intadd_2_n1), .ZN(intadd_1_A_6_) );
  INVD0 U131 ( .I(n126), .ZN(intadd_3_B_2_) );
  INVD0 U132 ( .I(intadd_1_A_9_), .ZN(intadd_1_A_8_) );
  INVD0 U133 ( .I(n108), .ZN(n119) );
  CKND2D0 U134 ( .A1(intadd_4_n1), .A2(n149), .ZN(n148) );
  INVD0 U135 ( .I(n123), .ZN(intadd_3_A_1_) );
  INVD0 U136 ( .I(intadd_2_SUM_5_), .ZN(n177) );
  INVD0 U137 ( .I(n122), .ZN(intadd_3_B_1_) );
  INVD0 U138 ( .I(intadd_1_SUM_4_), .ZN(n128) );
  INVD0 U139 ( .I(intadd_1_B_8_), .ZN(intadd_1_A_7_) );
  INVD0 U140 ( .I(intadd_1_SUM_3_), .ZN(n124) );
  INVD0 U141 ( .I(intadd_3_SUM_0_), .ZN(n120) );
  INVD0 U142 ( .I(n86), .ZN(n121) );
  MAOI222D0 U144 ( .A(intadd_1_SUM_1_), .B(intadd_2_SUM_1_), .C(n85), .ZN(n86)
         );
  INVD0 U145 ( .I(intadd_4_SUM_0_), .ZN(n129) );
  MAOI222D0 U146 ( .A(intadd_1_SUM_0_), .B(n84), .C(n83), .ZN(n85) );
  INVD0 U147 ( .I(n132), .ZN(intadd_1_B_3_) );
  INVD0 U148 ( .I(n136), .ZN(intadd_1_B_4_) );
  INVD0 U149 ( .I(intadd_2_SUM_0_), .ZN(n83) );
  INVD0 U150 ( .I(n89), .ZN(n182) );
  INVD0 U151 ( .I(n140), .ZN(intadd_2_B_3_) );
  INVD0 U152 ( .I(DP_OP_61J1_122_7044_n68), .ZN(n135) );
  OAI31D0 U153 ( .A1(n152), .A2(DP_OP_61J1_122_7044_n83), .A3(n138), .B(n137), 
        .ZN(intadd_1_A_4_) );
  INVD0 U154 ( .I(n144), .ZN(intadd_2_B_4_) );
  INVD0 U155 ( .I(n109), .ZN(n188) );
  CKND2D0 U156 ( .A1(n93), .A2(n156), .ZN(n89) );
  OAI21D0 U157 ( .A1(n178), .A2(n150), .B(n64), .ZN(n149) );
  XOR2D0 U158 ( .A1(n159), .A2(n158), .Z(intadd_4_B_0_) );
  NR2D0 U159 ( .A1(mult_x_10_n33), .A2(n150), .ZN(intadd_4_A_0_) );
  OAI21D0 U160 ( .A1(n152), .A2(DP_OP_61J1_122_7044_n83), .B(n138), .ZN(n137)
         );
  INR2D0 U161 ( .A1(n156), .B1(n104), .ZN(n194) );
  CKND2D0 U162 ( .A1(n95), .A2(n156), .ZN(n193) );
  OA21D0 U163 ( .A1(DP_OP_61J1_122_7044_n83), .A2(n138), .B(x[18]), .Z(
        intadd_1_B_5_) );
  INVD0 U164 ( .I(n203), .ZN(n106) );
  INVD0 U165 ( .I(n184), .ZN(n93) );
  AOI221D0 U166 ( .A1(mult_x_10_n18), .A2(n160), .B1(n163), .B2(n160), .C(
        mult_x_10_n21), .ZN(n161) );
  NR2D0 U167 ( .A1(mult_x_10_n18), .A2(n151), .ZN(intadd_4_CI) );
  NR2D0 U168 ( .A1(n166), .A2(n163), .ZN(DP_OP_61J1_122_7044_n83) );
  CKND2D0 U169 ( .A1(n163), .A2(n157), .ZN(n184) );
  NR2D0 U170 ( .A1(n154), .A2(n155), .ZN(n175) );
  NR2D0 U171 ( .A1(n152), .A2(n153), .ZN(n168) );
  OAI21D0 U172 ( .A1(n151), .A2(n152), .B(n208), .ZN(DP_OP_61J1_122_7044_n73)
         );
  INVD0 U173 ( .I(DP_OP_61J1_122_7044_n123), .ZN(n143) );
  NR2D0 U174 ( .A1(n155), .A2(n171), .ZN(intadd_2_CI) );
  CKND2D0 U175 ( .A1(n151), .A2(n165), .ZN(n156) );
  NR2D0 U176 ( .A1(n173), .A2(n165), .ZN(n162) );
  INVD0 U177 ( .I(mult_x_10_n11), .ZN(n178) );
  NR2D0 U178 ( .A1(n173), .A2(n163), .ZN(mult_x_10_n38) );
  NR2D0 U179 ( .A1(n170), .A2(n163), .ZN(mult_x_10_n33) );
  OAI31D0 U180 ( .A1(n154), .A2(DP_OP_61J1_122_7044_n138), .A3(n147), .B(n146), 
        .ZN(intadd_2_A_4_) );
  NR2D0 U181 ( .A1(n165), .A2(n170), .ZN(mult_x_10_n34) );
  INVD0 U182 ( .I(n62), .ZN(mult_x_10_n18) );
  INVD0 U183 ( .I(n59), .ZN(n163) );
  INVD0 U184 ( .I(n61), .ZN(n165) );
  CKND2D0 U185 ( .A1(n63), .A2(n61), .ZN(n157) );
  OAI21D0 U186 ( .A1(n154), .A2(DP_OP_61J1_122_7044_n138), .B(n147), .ZN(n146)
         );
  INVD0 U187 ( .I(n60), .ZN(n166) );
  OA21D0 U188 ( .A1(DP_OP_61J1_122_7044_n138), .A2(n147), .B(y[18]), .Z(
        intadd_2_B_5_) );
  INVD0 U189 ( .I(n63), .ZN(n151) );
  NR2D0 U190 ( .A1(n172), .A2(n170), .ZN(DP_OP_61J1_122_7044_n138) );
  NR2D0 U191 ( .A1(n173), .A2(y[19]), .ZN(n142) );
  INVD0 U192 ( .I(y[27]), .ZN(DP_OP_63J1_123_2151_n20) );
  INVD0 U194 ( .I(y[18]), .ZN(n154) );
  INVD0 U195 ( .I(y[24]), .ZN(DP_OP_63J1_123_2151_n23) );
  BUFFD0 U196 ( .I(y[21]), .Z(n61) );
  INVD0 U197 ( .I(x[22]), .ZN(n170) );
  INVD0 U198 ( .I(x[21]), .ZN(n173) );
  XOR2D0 U199 ( .A1(y[31]), .A2(x[31]), .Z(result[31]) );
  BUFFD0 U200 ( .I(x[17]), .Z(n60) );
  INVD0 U202 ( .I(x[19]), .ZN(n208) );
  BUFFD0 U203 ( .I(x[20]), .Z(n62) );
  INVD0 U204 ( .I(x[18]), .ZN(n152) );
  BUFFD0 U205 ( .I(y[20]), .Z(n63) );
  INVD0 U206 ( .I(y[16]), .ZN(n171) );
  INVD0 U207 ( .I(y[26]), .ZN(DP_OP_63J1_123_2151_n21) );
  INVD0 U208 ( .I(y[17]), .ZN(n172) );
  INVD0 U209 ( .I(y[25]), .ZN(DP_OP_63J1_123_2151_n22) );
  BUFFD0 U210 ( .I(y[22]), .Z(n59) );
  INVD0 U211 ( .I(y[19]), .ZN(n145) );
  INVD0 U212 ( .I(x[16]), .ZN(n164) );
  INVD0 U213 ( .I(y[29]), .ZN(DP_OP_63J1_123_2151_n18) );
  INVD0 U214 ( .I(y[28]), .ZN(DP_OP_63J1_123_2151_n19) );
  INVD0 U215 ( .I(n58), .ZN(result[0]) );
  INVD0 U216 ( .I(n58), .ZN(result[1]) );
  INVD0 U217 ( .I(n58), .ZN(result[6]) );
  INVD0 U218 ( .I(n58), .ZN(result[7]) );
  INVD0 U219 ( .I(n58), .ZN(result[4]) );
  INVD0 U220 ( .I(n58), .ZN(result[2]) );
  INVD0 U221 ( .I(n58), .ZN(result[5]) );
  INVD0 U222 ( .I(n58), .ZN(result[3]) );
  TIEH U223 ( .Z(n58) );
  NR2D0 U224 ( .A1(n59), .A2(x[22]), .ZN(n150) );
  INVD0 U225 ( .I(mult_x_10_n33), .ZN(n64) );
  XNR2D0 U226 ( .A1(implementation_exponent_input[2]), .A2(
        DP_OP_63J1_123_2151_n6), .ZN(n67) );
  XNR2D0 U227 ( .A1(implementation_exponent_input[3]), .A2(n69), .ZN(n68) );
  XNR2D0 U228 ( .A1(n71), .A2(implementation_exponent_input[4]), .ZN(n70) );
  XNR2D0 U229 ( .A1(n73), .A2(implementation_exponent_input[5]), .ZN(n72) );
  XNR2D0 U230 ( .A1(n76), .A2(implementation_exponent_input[6]), .ZN(n74) );
  NR4D0 U232 ( .A1(n163), .A2(n170), .A3(n151), .A4(mult_x_10_n18), .ZN(
        mult_x_10_n21) );
  CKND2D0 U233 ( .A1(n62), .A2(y[17]), .ZN(n155) );
  NR2D0 U234 ( .A1(n171), .A2(x[16]), .ZN(n82) );
  AOI221D0 U235 ( .A1(mult_x_10_n18), .A2(n172), .B1(n171), .B2(n172), .C(
        intadd_2_CI), .ZN(n81) );
  CKND2D0 U236 ( .A1(n63), .A2(n60), .ZN(n153) );
  OAI222D0 U237 ( .A1(n60), .A2(n63), .B1(n60), .B2(x[16]), .C1(n153), .C2(
        n164), .ZN(n80) );
  MAOI222D0 U238 ( .A(n82), .B(n81), .C(n80), .ZN(n84) );
  CKND2D0 U239 ( .A1(n59), .A2(n61), .ZN(n95) );
  OAI21D0 U240 ( .A1(n157), .A2(n163), .B(n184), .ZN(n202) );
  NR4D0 U241 ( .A1(n108), .A2(n114), .A3(n193), .A4(n202), .ZN(mult_x_2_n87)
         );
  INVD0 U242 ( .I(n193), .ZN(n91) );
  CKND2D0 U243 ( .A1(n91), .A2(n119), .ZN(n87) );
  NR4D0 U244 ( .A1(n108), .A2(n114), .A3(n184), .A4(n156), .ZN(mult_x_2_n67)
         );
  CKND2D0 U245 ( .A1(n93), .A2(n119), .ZN(n88) );
  NR2D0 U246 ( .A1(n151), .A2(n59), .ZN(n104) );
  NR4D0 U247 ( .A1(n182), .A2(n108), .A3(n194), .A4(n114), .ZN(mult_x_2_n75)
         );
  CKND2D0 U248 ( .A1(n119), .A2(n89), .ZN(n90) );
  NR4D0 U249 ( .A1(n108), .A2(n194), .A3(n114), .A4(n193), .ZN(mult_x_2_n82)
         );
  CKND2D0 U250 ( .A1(intadd_3_SUM_1_), .A2(n91), .ZN(n92) );
  NR4D0 U251 ( .A1(n184), .A2(n201), .A3(n200), .A4(n156), .ZN(mult_x_2_n48)
         );
  CKND2D0 U252 ( .A1(n93), .A2(intadd_3_SUM_2_), .ZN(n94) );
  CKND2D0 U253 ( .A1(n151), .A2(n95), .ZN(n203) );
  NR2D0 U254 ( .A1(n213), .A2(n231), .ZN(result[8]) );
  NR2D0 U255 ( .A1(n114), .A2(n184), .ZN(mult_x_2_n102) );
  INVD0 U256 ( .I(n231), .ZN(n102) );
  OAI22D0 U257 ( .A1(n97), .A2(n96), .B1(n234), .B2(n232), .ZN(result[22]) );
  NR2D0 U258 ( .A1(n163), .A2(n63), .ZN(n98) );
  MUX2ND0 U259 ( .I0(n61), .I1(n165), .S(n98), .ZN(n109) );
  NR2D0 U260 ( .A1(n188), .A2(n108), .ZN(n100) );
  CKND2D0 U261 ( .A1(intadd_3_SUM_1_), .A2(n106), .ZN(n99) );
  OAI22D0 U262 ( .A1(n231), .A2(n218), .B1(n229), .B2(n213), .ZN(result[9]) );
  NR2D0 U263 ( .A1(n200), .A2(n194), .ZN(mult_x_2_n118) );
  INVD0 U264 ( .I(n234), .ZN(n103) );
  INVD0 U265 ( .I(n229), .ZN(n101) );
  NR2D0 U266 ( .A1(n202), .A2(n200), .ZN(mult_x_2_n136) );
  NR2D0 U267 ( .A1(n193), .A2(n201), .ZN(mult_x_2_n128) );
  NR2D0 U268 ( .A1(n183), .A2(n193), .ZN(mult_x_2_n126) );
  NR2D0 U269 ( .A1(n200), .A2(n188), .ZN(mult_x_2_n154) );
  NR2D0 U270 ( .A1(n61), .A2(n104), .ZN(n199) );
  NR2D0 U271 ( .A1(n201), .A2(n199), .ZN(mult_x_2_n146) );
  NR2D0 U272 ( .A1(n183), .A2(n199), .ZN(mult_x_2_n144) );
  NR2D0 U273 ( .A1(n195), .A2(n193), .ZN(mult_x_2_n123) );
  NR2D0 U274 ( .A1(n105), .A2(n193), .ZN(mult_x_2_n124) );
  NR2D0 U275 ( .A1(n202), .A2(n189), .ZN(mult_x_2_n131) );
  NR2D0 U276 ( .A1(n183), .A2(n188), .ZN(mult_x_2_n153) );
  NR2D0 U277 ( .A1(n183), .A2(n202), .ZN(mult_x_2_n135) );
  NR2D0 U278 ( .A1(n183), .A2(n203), .ZN(mult_x_2_n162) );
  NR2D0 U279 ( .A1(n204), .A2(n188), .ZN(mult_x_2_n152) );
  NR2D0 U280 ( .A1(n204), .A2(n199), .ZN(mult_x_2_n143) );
  NR2D0 U281 ( .A1(n105), .A2(n202), .ZN(mult_x_2_n133) );
  CKND2D0 U282 ( .A1(n62), .A2(n145), .ZN(DP_OP_61J1_122_7044_n144) );
  NR2D0 U283 ( .A1(n195), .A2(n202), .ZN(mult_x_2_n132) );
  NR2D0 U284 ( .A1(n204), .A2(n202), .ZN(mult_x_2_n134) );
  NR2D0 U285 ( .A1(n105), .A2(n199), .ZN(mult_x_2_n142) );
  NR2D0 U286 ( .A1(n154), .A2(n173), .ZN(DP_OP_61J1_122_7044_n141) );
  NR2D0 U287 ( .A1(n105), .A2(n203), .ZN(mult_x_2_n160) );
  NR2D0 U288 ( .A1(n105), .A2(n188), .ZN(mult_x_2_n151) );
  NR2D0 U289 ( .A1(n195), .A2(n188), .ZN(mult_x_2_n150) );
  NR2D0 U290 ( .A1(n152), .A2(n165), .ZN(DP_OP_61J1_122_7044_n86) );
  NR2D0 U291 ( .A1(n203), .A2(n189), .ZN(mult_x_2_n158) );
  NR4D0 U292 ( .A1(n199), .A2(n108), .A3(n114), .A4(n202), .ZN(mult_x_2_n91)
         );
  ND4D0 U293 ( .A1(n106), .A2(intadd_3_SUM_1_), .A3(intadd_3_SUM_2_), .A4(n109), .ZN(n115) );
  CKND2D0 U294 ( .A1(n106), .A2(intadd_3_SUM_3_), .ZN(n111) );
  INR3D0 U295 ( .A1(n110), .B1(n201), .B2(n188), .ZN(n219) );
  INVD0 U296 ( .I(n199), .ZN(n118) );
  CKND2D0 U297 ( .A1(intadd_3_SUM_1_), .A2(n118), .ZN(n107) );
  CKND2D0 U298 ( .A1(intadd_3_SUM_2_), .A2(n109), .ZN(n113) );
  OAI21D0 U299 ( .A1(n111), .A2(n115), .B(n110), .ZN(n112) );
  NR2D0 U300 ( .A1(n114), .A2(n188), .ZN(n117) );
  NR2D0 U301 ( .A1(n201), .A2(n203), .ZN(n116) );
  AOI21D0 U302 ( .A1(n119), .A2(n118), .B(mult_x_2_n67), .ZN(n212) );
  AO21D0 U303 ( .A1(n165), .A2(n173), .B(n162), .Z(n125) );
  NR2D0 U304 ( .A1(n153), .A2(n164), .ZN(intadd_1_CI) );
  NR2D0 U305 ( .A1(n164), .A2(n165), .ZN(intadd_1_B_0_) );
  OAI31D0 U306 ( .A1(n208), .A2(n151), .A3(n152), .B(DP_OP_61J1_122_7044_n73), 
        .ZN(intadd_1_A_1_) );
  NR2D0 U307 ( .A1(n165), .A2(x[19]), .ZN(n134) );
  NR2D0 U308 ( .A1(n152), .A2(n163), .ZN(n131) );
  MUX2ND0 U309 ( .I0(n60), .I1(n166), .S(n131), .ZN(n133) );
  CKND2D0 U310 ( .A1(n59), .A2(n208), .ZN(n138) );
  NR2D0 U311 ( .A1(n173), .A2(n171), .ZN(intadd_2_B_0_) );
  OAI21D0 U312 ( .A1(mult_x_10_n18), .A2(n154), .B(n145), .ZN(
        DP_OP_61J1_122_7044_n128) );
  OAI31D0 U313 ( .A1(n145), .A2(mult_x_10_n18), .A3(n154), .B(
        DP_OP_61J1_122_7044_n128), .ZN(intadd_2_A_1_) );
  NR2D0 U314 ( .A1(n154), .A2(n170), .ZN(n139) );
  MUX2ND0 U315 ( .I0(y[17]), .I1(n172), .S(n139), .ZN(n141) );
  CKND2D0 U316 ( .A1(x[22]), .A2(n145), .ZN(n147) );
  AOI21D0 U317 ( .A1(n151), .A2(mult_x_10_n18), .B(intadd_4_CI), .ZN(
        intadd_3_A_0_) );
  AOI21D0 U318 ( .A1(n153), .A2(n152), .B(n168), .ZN(intadd_1_A_0_) );
  AOI21D0 U319 ( .A1(n155), .A2(n154), .B(n175), .ZN(intadd_2_A_0_) );
  CKND2D0 U320 ( .A1(n62), .A2(n61), .ZN(n159) );
  ND3D0 U321 ( .A1(x[21]), .A2(n157), .A3(n156), .ZN(n158) );
  CKND2D0 U322 ( .A1(x[22]), .A2(n63), .ZN(n160) );
  FA1D0 U323 ( .A(mult_x_10_n33), .B(n161), .CI(n162), .CO(intadd_4_B_2_), .S(
        intadd_4_A_1_) );
  OA21D0 U324 ( .A1(n63), .A2(n62), .B(n162), .Z(intadd_4_B_1_) );
  NR2D0 U325 ( .A1(n164), .A2(n163), .ZN(n169) );
  NR2D0 U326 ( .A1(n166), .A2(n165), .ZN(n167) );
  NR2D0 U327 ( .A1(n171), .A2(n170), .ZN(n176) );
  NR2D0 U328 ( .A1(n173), .A2(n172), .ZN(n174) );
  MUX2ND0 U329 ( .I0(n178), .I1(mult_x_10_n11), .S(intadd_4_A_0_), .ZN(
        intadd_4_B_4_) );
  NR2D0 U330 ( .A1(n193), .A2(n189), .ZN(n179) );
  NR2D0 U331 ( .A1(n183), .A2(n182), .ZN(n187) );
  NR2D0 U332 ( .A1(n200), .A2(n184), .ZN(n186) );
  NR2D0 U333 ( .A1(n189), .A2(n199), .ZN(n185) );
  NR2D0 U334 ( .A1(n195), .A2(n199), .ZN(n192) );
  NR2D0 U335 ( .A1(n189), .A2(n188), .ZN(n191) );
  NR2D0 U336 ( .A1(n204), .A2(n193), .ZN(n190) );
  NR2D0 U337 ( .A1(n193), .A2(n200), .ZN(n198) );
  NR2D0 U338 ( .A1(n201), .A2(n194), .ZN(n197) );
  NR2D0 U339 ( .A1(n195), .A2(n203), .ZN(n196) );
  NR2D0 U340 ( .A1(n200), .A2(n199), .ZN(n207) );
  NR2D0 U341 ( .A1(n202), .A2(n201), .ZN(n206) );
  NR2D0 U342 ( .A1(n204), .A2(n203), .ZN(n205) );
  FA1D0 U343 ( .A(n207), .B(n206), .CI(n205), .CO(mult_x_2_n80), .S(
        mult_x_2_n81) );
  CKND2D0 U344 ( .A1(n63), .A2(n208), .ZN(DP_OP_61J1_122_7044_n89) );
  OAI222D0 U345 ( .A1(n229), .A2(n218), .B1(n221), .B2(n231), .C1(n213), .C2(
        n234), .ZN(result[10]) );
  OAI222D0 U346 ( .A1(n234), .A2(n218), .B1(n222), .B2(n231), .C1(n221), .C2(
        n229), .ZN(result[11]) );
  OAI222D0 U347 ( .A1(n221), .A2(n234), .B1(n223), .B2(n231), .C1(n222), .C2(
        n229), .ZN(result[12]) );
  OAI222D0 U348 ( .A1(n222), .A2(n234), .B1(n224), .B2(n231), .C1(n223), .C2(
        n229), .ZN(result[13]) );
  OAI222D0 U349 ( .A1(n223), .A2(n234), .B1(n225), .B2(n231), .C1(n224), .C2(
        n229), .ZN(result[14]) );
  OAI222D0 U350 ( .A1(n224), .A2(n234), .B1(n226), .B2(n231), .C1(n225), .C2(
        n229), .ZN(result[15]) );
  OAI222D0 U351 ( .A1(n225), .A2(n234), .B1(n227), .B2(n231), .C1(n226), .C2(
        n229), .ZN(result[16]) );
  OAI222D0 U352 ( .A1(n226), .A2(n234), .B1(n228), .B2(n231), .C1(n227), .C2(
        n229), .ZN(result[17]) );
  OAI222D0 U353 ( .A1(n227), .A2(n234), .B1(n233), .B2(n231), .C1(n228), .C2(
        n229), .ZN(result[18]) );
  OAI222D0 U354 ( .A1(n228), .A2(n234), .B1(n230), .B2(n231), .C1(n233), .C2(
        n229), .ZN(result[19]) );
  OAI222D0 U355 ( .A1(n233), .A2(n234), .B1(n232), .B2(n231), .C1(n230), .C2(
        n229), .ZN(result[20]) );
  CKXOR2D0 U63 ( .A1(n235), .A2(n79), .Z(n78) );
  XOR3D0 U143 ( .A1(DP_OP_63J1_123_2151_n11), .A2(y[30]), .A3(x[30]), .Z(n79)
         );
  NR2D0 U193 ( .A1(n76), .A2(implementation_exponent_input[6]), .ZN(n235) );
  INR2D0 U201 ( .A1(x[23]), .B1(y[23]), .ZN(DP_OP_63J1_123_2151_n17) );
  XNR2D0 U231 ( .A1(y[23]), .A2(x[23]), .ZN(implementation_exponent_input[0])
         );
endmodule

