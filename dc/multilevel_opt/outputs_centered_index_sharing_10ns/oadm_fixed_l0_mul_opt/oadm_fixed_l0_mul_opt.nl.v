/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Mon Aug 31 01:38:59 2026
/////////////////////////////////////////////////////////////


module oadm_fixed_l0_mul_opt ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   impl_N70, impl_N69, impl_N68, impl_N67, impl_N66, impl_N65, impl_N64,
         impl_N63, impl_N62, C14_DATA2_0, C14_DATA2_1, C14_DATA2_2,
         C14_DATA2_3, C14_DATA2_4, C14_DATA2_5, C14_DATA2_6, C14_DATA2_7,
         C14_DATA2_8, C1_Z_0, DP_OP_87J1_123_7201_n23, DP_OP_87J1_123_7201_n22,
         DP_OP_87J1_123_7201_n21, DP_OP_87J1_123_7201_n20,
         DP_OP_87J1_123_7201_n19, DP_OP_87J1_123_7201_n18,
         DP_OP_87J1_123_7201_n17, DP_OP_87J1_123_7201_n16,
         DP_OP_87J1_123_7201_n14, DP_OP_87J1_123_7201_n10,
         DP_OP_87J1_123_7201_n9, DP_OP_87J1_123_7201_n8,
         DP_OP_87J1_123_7201_n7, DP_OP_87J1_123_7201_n6,
         DP_OP_87J1_123_7201_n5, DP_OP_87J1_123_7201_n4,
         DP_OP_87J1_123_7201_n3, DP_OP_87J1_123_7201_n2, intadd_0_A_22_,
         intadd_0_A_21_, intadd_0_A_20_, intadd_0_A_19_, intadd_0_A_18_,
         intadd_0_A_17_, intadd_0_A_16_, intadd_0_A_15_, intadd_0_A_14_,
         intadd_0_A_13_, intadd_0_A_12_, intadd_0_A_11_, intadd_0_A_10_,
         intadd_0_A_9_, intadd_0_A_8_, intadd_0_A_7_, intadd_0_A_6_,
         intadd_0_A_5_, intadd_0_A_4_, intadd_0_A_3_, intadd_0_A_2_,
         intadd_0_A_1_, intadd_0_B_23_, intadd_0_B_21_, intadd_0_B_20_,
         intadd_0_B_19_, intadd_0_B_18_, intadd_0_B_17_, intadd_0_B_16_,
         intadd_0_B_15_, intadd_0_B_14_, intadd_0_B_13_, intadd_0_B_12_,
         intadd_0_B_11_, intadd_0_B_10_, intadd_0_B_9_, intadd_0_B_8_,
         intadd_0_B_7_, intadd_0_B_6_, intadd_0_B_5_, intadd_0_B_4_,
         intadd_0_B_3_, intadd_0_B_2_, intadd_0_B_1_, intadd_0_CI,
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
         intadd_0_n4, intadd_0_n3, intadd_0_n2, intadd_0_n1, intadd_1_A_19_,
         intadd_1_CI, intadd_1_n20, intadd_1_n19, intadd_1_n18, intadd_1_n17,
         intadd_1_n16, intadd_1_n15, intadd_1_n14, intadd_1_n13, intadd_1_n12,
         intadd_1_n11, intadd_1_n10, intadd_1_n9, intadd_1_n8, intadd_1_n7,
         intadd_1_n6, intadd_1_n5, intadd_1_n4, intadd_1_n3, intadd_1_n2,
         intadd_1_n1, intadd_2_CI, intadd_2_n19, intadd_2_n18, intadd_2_n17,
         intadd_2_n16, intadd_2_n15, intadd_2_n14, intadd_2_n13, intadd_2_n12,
         intadd_2_n11, intadd_2_n10, intadd_2_n9, intadd_2_n8, intadd_2_n7,
         intadd_2_n6, intadd_2_n5, intadd_2_n4, intadd_2_n3, intadd_2_n2,
         intadd_2_n1, n137, n138, n140, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n157, n158, n159,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222;

  FA1D0 DP_OP_87J1_123_7201_U25 ( .A(y[24]), .B(x[24]), .CI(
        DP_OP_87J1_123_7201_n23), .CO(DP_OP_87J1_123_7201_n22), .S(impl_N63)
         );
  FA1D0 DP_OP_87J1_123_7201_U24 ( .A(y[25]), .B(x[25]), .CI(
        DP_OP_87J1_123_7201_n22), .CO(DP_OP_87J1_123_7201_n21), .S(impl_N64)
         );
  FA1D0 DP_OP_87J1_123_7201_U23 ( .A(y[26]), .B(x[26]), .CI(
        DP_OP_87J1_123_7201_n21), .CO(DP_OP_87J1_123_7201_n20), .S(impl_N65)
         );
  FA1D0 DP_OP_87J1_123_7201_U22 ( .A(y[27]), .B(x[27]), .CI(
        DP_OP_87J1_123_7201_n20), .CO(DP_OP_87J1_123_7201_n19), .S(impl_N66)
         );
  FA1D0 DP_OP_87J1_123_7201_U21 ( .A(y[28]), .B(x[28]), .CI(
        DP_OP_87J1_123_7201_n19), .CO(DP_OP_87J1_123_7201_n18), .S(impl_N67)
         );
  FA1D0 DP_OP_87J1_123_7201_U20 ( .A(y[29]), .B(x[29]), .CI(
        DP_OP_87J1_123_7201_n18), .CO(DP_OP_87J1_123_7201_n17), .S(impl_N68)
         );
  FA1D0 DP_OP_87J1_123_7201_U19 ( .A(n138), .B(x[30]), .CI(
        DP_OP_87J1_123_7201_n17), .CO(DP_OP_87J1_123_7201_n16), .S(impl_N69)
         );
  FA1D0 DP_OP_87J1_123_7201_U11 ( .A(DP_OP_87J1_123_7201_n14), .B(C1_Z_0), 
        .CI(impl_N62), .CO(DP_OP_87J1_123_7201_n10), .S(C14_DATA2_0) );
  FA1D0 DP_OP_87J1_123_7201_U10 ( .A(impl_N63), .B(C1_Z_0), .CI(
        DP_OP_87J1_123_7201_n10), .CO(DP_OP_87J1_123_7201_n9), .S(C14_DATA2_1)
         );
  FA1D0 DP_OP_87J1_123_7201_U9 ( .A(impl_N64), .B(C1_Z_0), .CI(
        DP_OP_87J1_123_7201_n9), .CO(DP_OP_87J1_123_7201_n8), .S(C14_DATA2_2)
         );
  FA1D0 DP_OP_87J1_123_7201_U8 ( .A(impl_N65), .B(C1_Z_0), .CI(
        DP_OP_87J1_123_7201_n8), .CO(DP_OP_87J1_123_7201_n7), .S(C14_DATA2_3)
         );
  FA1D0 DP_OP_87J1_123_7201_U7 ( .A(impl_N66), .B(C1_Z_0), .CI(
        DP_OP_87J1_123_7201_n7), .CO(DP_OP_87J1_123_7201_n6), .S(C14_DATA2_4)
         );
  FA1D0 DP_OP_87J1_123_7201_U6 ( .A(impl_N67), .B(C1_Z_0), .CI(
        DP_OP_87J1_123_7201_n6), .CO(DP_OP_87J1_123_7201_n5), .S(C14_DATA2_5)
         );
  FA1D0 DP_OP_87J1_123_7201_U5 ( .A(impl_N68), .B(C1_Z_0), .CI(
        DP_OP_87J1_123_7201_n5), .CO(DP_OP_87J1_123_7201_n4), .S(C14_DATA2_6)
         );
  FA1D0 DP_OP_87J1_123_7201_U4 ( .A(impl_N69), .B(C1_Z_0), .CI(
        DP_OP_87J1_123_7201_n4), .CO(DP_OP_87J1_123_7201_n3), .S(C14_DATA2_7)
         );
  FA1D0 DP_OP_87J1_123_7201_U3 ( .A(impl_N70), .B(C1_Z_0), .CI(
        DP_OP_87J1_123_7201_n3), .CO(DP_OP_87J1_123_7201_n2), .S(C14_DATA2_8)
         );
  FA1D0 intadd_0_U25 ( .A(y[1]), .B(y[0]), .CI(intadd_0_CI), .CO(intadd_0_n24), 
        .S(intadd_0_SUM_0_) );
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
  FA1D0 intadd_1_U21 ( .A(x[2]), .B(x[3]), .CI(intadd_1_CI), .CO(intadd_1_n20), 
        .S(intadd_0_B_2_) );
  FA1D0 intadd_1_U20 ( .A(x[3]), .B(x[4]), .CI(intadd_1_n20), .CO(intadd_1_n19), .S(intadd_0_B_3_) );
  FA1D0 intadd_1_U19 ( .A(x[4]), .B(x[5]), .CI(intadd_1_n19), .CO(intadd_1_n18), .S(intadd_0_B_4_) );
  FA1D0 intadd_1_U18 ( .A(x[5]), .B(x[6]), .CI(intadd_1_n18), .CO(intadd_1_n17), .S(intadd_0_B_5_) );
  FA1D0 intadd_1_U17 ( .A(x[6]), .B(x[7]), .CI(intadd_1_n17), .CO(intadd_1_n16), .S(intadd_0_B_6_) );
  FA1D0 intadd_1_U16 ( .A(x[7]), .B(x[8]), .CI(intadd_1_n16), .CO(intadd_1_n15), .S(intadd_0_B_7_) );
  FA1D0 intadd_1_U15 ( .A(x[8]), .B(x[9]), .CI(intadd_1_n15), .CO(intadd_1_n14), .S(intadd_0_B_8_) );
  FA1D0 intadd_1_U14 ( .A(x[9]), .B(x[10]), .CI(intadd_1_n14), .CO(
        intadd_1_n13), .S(intadd_0_B_9_) );
  FA1D0 intadd_1_U13 ( .A(x[10]), .B(x[11]), .CI(intadd_1_n13), .CO(
        intadd_1_n12), .S(intadd_0_B_10_) );
  FA1D0 intadd_1_U12 ( .A(x[11]), .B(x[12]), .CI(intadd_1_n12), .CO(
        intadd_1_n11), .S(intadd_0_B_11_) );
  FA1D0 intadd_1_U11 ( .A(x[12]), .B(x[13]), .CI(intadd_1_n11), .CO(
        intadd_1_n10), .S(intadd_0_B_12_) );
  FA1D0 intadd_1_U10 ( .A(x[13]), .B(x[14]), .CI(intadd_1_n10), .CO(
        intadd_1_n9), .S(intadd_0_B_13_) );
  FA1D0 intadd_1_U9 ( .A(x[14]), .B(x[15]), .CI(intadd_1_n9), .CO(intadd_1_n8), 
        .S(intadd_0_B_14_) );
  FA1D0 intadd_1_U8 ( .A(x[15]), .B(x[16]), .CI(intadd_1_n8), .CO(intadd_1_n7), 
        .S(intadd_0_B_15_) );
  FA1D0 intadd_1_U7 ( .A(x[16]), .B(x[17]), .CI(intadd_1_n7), .CO(intadd_1_n6), 
        .S(intadd_0_B_16_) );
  FA1D0 intadd_1_U6 ( .A(x[17]), .B(x[18]), .CI(intadd_1_n6), .CO(intadd_1_n5), 
        .S(intadd_0_B_17_) );
  FA1D0 intadd_1_U5 ( .A(x[18]), .B(x[19]), .CI(intadd_1_n5), .CO(intadd_1_n4), 
        .S(intadd_0_B_18_) );
  FA1D0 intadd_1_U4 ( .A(x[19]), .B(x[20]), .CI(intadd_1_n4), .CO(intadd_1_n3), 
        .S(intadd_0_B_19_) );
  FA1D0 intadd_1_U3 ( .A(x[20]), .B(x[21]), .CI(intadd_1_n3), .CO(intadd_1_n2), 
        .S(intadd_0_B_20_) );
  FA1D0 intadd_1_U2 ( .A(x[21]), .B(intadd_1_A_19_), .CI(intadd_1_n2), .CO(
        intadd_1_n1), .S(intadd_0_B_21_) );
  FA1D0 intadd_2_U20 ( .A(y[3]), .B(y[4]), .CI(intadd_2_CI), .CO(intadd_2_n19), 
        .S(intadd_0_A_3_) );
  FA1D0 intadd_2_U19 ( .A(y[4]), .B(y[5]), .CI(intadd_2_n19), .CO(intadd_2_n18), .S(intadd_0_A_4_) );
  FA1D0 intadd_2_U18 ( .A(y[5]), .B(y[6]), .CI(intadd_2_n18), .CO(intadd_2_n17), .S(intadd_0_A_5_) );
  FA1D0 intadd_2_U17 ( .A(y[6]), .B(y[7]), .CI(intadd_2_n17), .CO(intadd_2_n16), .S(intadd_0_A_6_) );
  FA1D0 intadd_2_U16 ( .A(y[7]), .B(y[8]), .CI(intadd_2_n16), .CO(intadd_2_n15), .S(intadd_0_A_7_) );
  FA1D0 intadd_2_U15 ( .A(y[8]), .B(y[9]), .CI(intadd_2_n15), .CO(intadd_2_n14), .S(intadd_0_A_8_) );
  FA1D0 intadd_2_U14 ( .A(y[9]), .B(y[10]), .CI(intadd_2_n14), .CO(
        intadd_2_n13), .S(intadd_0_A_9_) );
  FA1D0 intadd_2_U13 ( .A(y[10]), .B(y[11]), .CI(intadd_2_n13), .CO(
        intadd_2_n12), .S(intadd_0_A_10_) );
  FA1D0 intadd_2_U12 ( .A(y[11]), .B(y[12]), .CI(intadd_2_n12), .CO(
        intadd_2_n11), .S(intadd_0_A_11_) );
  FA1D0 intadd_2_U11 ( .A(y[12]), .B(y[13]), .CI(intadd_2_n11), .CO(
        intadd_2_n10), .S(intadd_0_A_12_) );
  FA1D0 intadd_2_U10 ( .A(y[13]), .B(y[14]), .CI(intadd_2_n10), .CO(
        intadd_2_n9), .S(intadd_0_A_13_) );
  FA1D0 intadd_2_U9 ( .A(y[14]), .B(y[15]), .CI(intadd_2_n9), .CO(intadd_2_n8), 
        .S(intadd_0_A_14_) );
  FA1D0 intadd_2_U8 ( .A(y[15]), .B(y[16]), .CI(intadd_2_n8), .CO(intadd_2_n7), 
        .S(intadd_0_A_15_) );
  FA1D0 intadd_2_U7 ( .A(y[16]), .B(y[17]), .CI(intadd_2_n7), .CO(intadd_2_n6), 
        .S(intadd_0_A_16_) );
  FA1D0 intadd_2_U6 ( .A(y[17]), .B(y[18]), .CI(intadd_2_n6), .CO(intadd_2_n5), 
        .S(intadd_0_A_17_) );
  FA1D0 intadd_2_U5 ( .A(y[18]), .B(y[19]), .CI(intadd_2_n5), .CO(intadd_2_n4), 
        .S(intadd_0_A_18_) );
  FA1D0 intadd_2_U4 ( .A(y[19]), .B(y[20]), .CI(intadd_2_n4), .CO(intadd_2_n3), 
        .S(intadd_0_A_19_) );
  FA1D0 intadd_2_U3 ( .A(y[21]), .B(intadd_2_n3), .CI(y[20]), .CO(intadd_2_n2), 
        .S(intadd_0_A_20_) );
  FA1D0 intadd_2_U2 ( .A(y[22]), .B(y[21]), .CI(intadd_2_n2), .CO(intadd_2_n1), 
        .S(intadd_0_A_21_) );
  FA1D0 intadd_0_U2 ( .A(x[22]), .B(intadd_0_B_23_), .CI(intadd_0_n2), .CO(
        intadd_0_n1), .S(intadd_0_SUM_23_) );
  FA1D0 intadd_0_U3 ( .A(intadd_0_A_22_), .B(intadd_1_n1), .CI(intadd_0_n3), 
        .CO(intadd_0_n2), .S(intadd_0_SUM_22_) );
  OR2D0 U150 ( .A1(y[23]), .A2(x[23]), .Z(DP_OP_87J1_123_7201_n23) );
  ND4D0 U151 ( .A1(x[23]), .A2(x[24]), .A3(x[25]), .A4(x[26]), .ZN(n151) );
  INVD0 U152 ( .I(y[3]), .ZN(n137) );
  NR2XD0 U157 ( .A1(intadd_0_n1), .A2(intadd_0_SUM_23_), .ZN(C1_Z_0) );
  XNR2D0 U158 ( .A1(x[23]), .A2(y[23]), .ZN(impl_N62) );
  XNR2D0 U159 ( .A1(y[30]), .A2(DP_OP_87J1_123_7201_n16), .ZN(impl_N70) );
  INVD0 U160 ( .I(intadd_0_n1), .ZN(n204) );
  CKND2D0 U161 ( .A1(intadd_0_SUM_23_), .A2(n204), .ZN(n218) );
  INVD0 U162 ( .I(n218), .ZN(n167) );
  CKND2D0 U163 ( .A1(C14_DATA2_7), .A2(n218), .ZN(n142) );
  IOA21D0 U164 ( .A1(n167), .A2(impl_N69), .B(n142), .ZN(n210) );
  INR2D0 U165 ( .A1(impl_N68), .B1(n218), .ZN(n143) );
  AOI21D0 U166 ( .A1(C14_DATA2_6), .A2(n218), .B(n143), .ZN(n180) );
  INR2D0 U167 ( .A1(impl_N67), .B1(n218), .ZN(n144) );
  AOI21D0 U168 ( .A1(C14_DATA2_5), .A2(n218), .B(n144), .ZN(n181) );
  CKND2D0 U169 ( .A1(C14_DATA2_0), .A2(n218), .ZN(n145) );
  IOA21D0 U170 ( .A1(n167), .A2(impl_N62), .B(n145), .ZN(n165) );
  INVD0 U171 ( .I(n165), .ZN(n183) );
  IND4D0 U172 ( .A1(n210), .B1(n180), .B2(n181), .B3(n183), .ZN(n175) );
  CKND2D0 U173 ( .A1(C14_DATA2_3), .A2(n218), .ZN(n146) );
  IOA21D0 U174 ( .A1(n167), .A2(impl_N65), .B(n146), .ZN(n212) );
  CKND2D0 U175 ( .A1(C14_DATA2_2), .A2(n218), .ZN(n147) );
  IOA21D0 U176 ( .A1(n167), .A2(impl_N64), .B(n147), .ZN(n211) );
  CKND2D0 U177 ( .A1(C14_DATA2_1), .A2(n218), .ZN(n148) );
  IOA21D0 U178 ( .A1(n167), .A2(impl_N63), .B(n148), .ZN(n214) );
  INR2D0 U179 ( .A1(impl_N66), .B1(n218), .ZN(n149) );
  AOI21D0 U180 ( .A1(C14_DATA2_4), .A2(n218), .B(n149), .ZN(n179) );
  INVD0 U181 ( .I(n179), .ZN(n150) );
  OR4D0 U182 ( .A1(n212), .A2(n211), .A3(n214), .A4(n150), .Z(n174) );
  ND4D0 U183 ( .A1(x[27]), .A2(x[28]), .A3(x[30]), .A4(x[29]), .ZN(n152) );
  NR2D0 U184 ( .A1(n152), .A2(n151), .ZN(n201) );
  ND4D0 U185 ( .A1(y[29]), .A2(y[30]), .A3(y[28]), .A4(y[27]), .ZN(n154) );
  ND4D0 U186 ( .A1(y[26]), .A2(y[25]), .A3(y[24]), .A4(y[23]), .ZN(n153) );
  NR2D0 U187 ( .A1(n154), .A2(n153), .ZN(n195) );
  NR2D0 U188 ( .A1(n201), .A2(n195), .ZN(n173) );
  INVD0 U190 ( .I(n162), .ZN(n155) );
  NR4D0 U193 ( .A1(y[26]), .A2(y[25]), .A3(y[24]), .A4(y[23]), .ZN(n158) );
  NR4D0 U194 ( .A1(y[29]), .A2(y[30]), .A3(y[28]), .A4(y[27]), .ZN(n157) );
  CKND2D0 U195 ( .A1(n158), .A2(n157), .ZN(n188) );
  OR4D0 U196 ( .A1(x[27]), .A2(x[28]), .A3(x[30]), .A4(x[29]), .Z(n160) );
  OR4D0 U197 ( .A1(x[23]), .A2(x[24]), .A3(x[25]), .A4(x[26]), .Z(n159) );
  NR2D0 U198 ( .A1(n160), .A2(n159), .ZN(n198) );
  INVD0 U199 ( .I(n198), .ZN(n161) );
  OAI211D0 U200 ( .A1(n162), .A2(n218), .B(n188), .C(n161), .ZN(n163) );
  CKND2D0 U202 ( .A1(C14_DATA2_8), .A2(n218), .ZN(n170) );
  ND4D0 U203 ( .A1(n212), .A2(n211), .A3(n214), .A4(n165), .ZN(n166) );
  NR4D0 U204 ( .A1(n180), .A2(n181), .A3(n179), .A4(n166), .ZN(n168) );
  AOI22D0 U205 ( .A1(n210), .A2(n168), .B1(n167), .B2(impl_N70), .ZN(n169) );
  CKND2D0 U206 ( .A1(n170), .A2(n169), .ZN(n178) );
  OAI211D0 U209 ( .A1(n175), .A2(n174), .B(n173), .C(n172), .ZN(n206) );
  NR2XD0 U210 ( .A1(n206), .A2(n218), .ZN(n221) );
  INVD0 U211 ( .I(intadd_0_SUM_23_), .ZN(n176) );
  INVD0 U212 ( .I(n206), .ZN(n203) );
  NR2XD0 U213 ( .A1(n206), .A2(n204), .ZN(n222) );
  AO31D0 U214 ( .A1(n176), .A2(n203), .A3(intadd_0_SUM_20_), .B(n222), .Z(n177) );
  AO22D0 U215 ( .A1(n221), .A2(intadd_0_SUM_21_), .B1(intadd_0_SUM_22_), .B2(
        n177), .Z(result[21]) );
  INVD0 U216 ( .I(n215), .ZN(n182) );
  AOI211D0 U217 ( .A1(n215), .A2(n178), .B(n195), .C(n201), .ZN(n213) );
  OAI21D0 U218 ( .A1(n179), .A2(n182), .B(n213), .ZN(result[27]) );
  OAI21D0 U219 ( .A1(n180), .A2(n182), .B(n213), .ZN(result[29]) );
  OAI21D0 U220 ( .A1(n181), .A2(n182), .B(n213), .ZN(result[28]) );
  OAI21D0 U221 ( .A1(n183), .A2(n182), .B(n213), .ZN(result[23]) );
  NR4D0 U222 ( .A1(x[8]), .A2(x[12]), .A3(x[10]), .A4(x[11]), .ZN(n187) );
  NR4D0 U223 ( .A1(x[4]), .A2(x[5]), .A3(x[9]), .A4(x[7]), .ZN(n186) );
  NR4D0 U224 ( .A1(x[16]), .A2(x[17]), .A3(x[21]), .A4(x[19]), .ZN(n185) );
  NR4D0 U225 ( .A1(x[15]), .A2(x[13]), .A3(x[14]), .A4(x[18]), .ZN(n184) );
  ND4D0 U226 ( .A1(n187), .A2(n186), .A3(n185), .A4(n184), .ZN(n202) );
  NR2D0 U227 ( .A1(x[0]), .A2(x[1]), .ZN(n220) );
  NR4D0 U228 ( .A1(x[2]), .A2(x[22]), .A3(x[3]), .A4(x[6]), .ZN(n189) );
  IND4D0 U229 ( .A1(x[20]), .B1(n220), .B2(n189), .B3(n188), .ZN(n200) );
  OR4D0 U230 ( .A1(y[2]), .A2(y[6]), .A3(y[4]), .A4(y[5]), .Z(n190) );
  OR4D0 U231 ( .A1(y[0]), .A2(y[3]), .A3(y[22]), .A4(n190), .Z(n197) );
  NR4D0 U232 ( .A1(y[10]), .A2(y[11]), .A3(y[15]), .A4(y[13]), .ZN(n194) );
  NR4D0 U233 ( .A1(y[9]), .A2(y[7]), .A3(y[8]), .A4(y[12]), .ZN(n193) );
  NR4D0 U234 ( .A1(y[21]), .A2(y[19]), .A3(y[20]), .A4(y[1]), .ZN(n192) );
  NR4D0 U235 ( .A1(y[14]), .A2(y[18]), .A3(y[16]), .A4(y[17]), .ZN(n191) );
  ND4D0 U236 ( .A1(n194), .A2(n193), .A3(n192), .A4(n191), .ZN(n196) );
  OA31D0 U237 ( .A1(n198), .A2(n197), .A3(n196), .B(n195), .Z(n199) );
  AOI221D0 U238 ( .A1(n202), .A2(n201), .B1(n200), .B2(n201), .C(n199), .ZN(
        n208) );
  OAI221D0 U239 ( .A1(intadd_0_n1), .A2(intadd_0_SUM_22_), .B1(n204), .B2(
        intadd_0_SUM_23_), .C(n203), .ZN(n205) );
  CKND2D0 U240 ( .A1(n208), .A2(n205), .ZN(result[22]) );
  INR2XD0 U241 ( .A1(C1_Z_0), .B1(n206), .ZN(n207) );
  AO222D0 U242 ( .A1(n222), .A2(intadd_0_SUM_21_), .B1(n221), .B2(
        intadd_0_SUM_20_), .C1(intadd_0_SUM_19_), .C2(n207), .Z(result[20]) );
  AO222D0 U243 ( .A1(n222), .A2(intadd_0_SUM_20_), .B1(n221), .B2(
        intadd_0_SUM_19_), .C1(intadd_0_SUM_18_), .C2(n207), .Z(result[19]) );
  AO222D0 U244 ( .A1(n222), .A2(intadd_0_SUM_19_), .B1(n221), .B2(
        intadd_0_SUM_18_), .C1(intadd_0_SUM_17_), .C2(n207), .Z(result[18]) );
  AO222D0 U245 ( .A1(n222), .A2(intadd_0_SUM_18_), .B1(n221), .B2(
        intadd_0_SUM_17_), .C1(intadd_0_SUM_16_), .C2(n207), .Z(result[17]) );
  AO222D0 U246 ( .A1(n222), .A2(intadd_0_SUM_17_), .B1(n221), .B2(
        intadd_0_SUM_16_), .C1(intadd_0_SUM_15_), .C2(n207), .Z(result[16]) );
  AO222D0 U247 ( .A1(n222), .A2(intadd_0_SUM_9_), .B1(n221), .B2(
        intadd_0_SUM_8_), .C1(intadd_0_SUM_7_), .C2(n207), .Z(result[8]) );
  AO222D0 U248 ( .A1(n222), .A2(intadd_0_SUM_16_), .B1(n221), .B2(
        intadd_0_SUM_15_), .C1(intadd_0_SUM_14_), .C2(n207), .Z(result[15]) );
  AO222D0 U249 ( .A1(n222), .A2(intadd_0_SUM_15_), .B1(n221), .B2(
        intadd_0_SUM_14_), .C1(intadd_0_SUM_13_), .C2(n207), .Z(result[14]) );
  AO222D0 U250 ( .A1(n222), .A2(intadd_0_SUM_14_), .B1(n221), .B2(
        intadd_0_SUM_13_), .C1(intadd_0_SUM_12_), .C2(n207), .Z(result[13]) );
  AO222D0 U251 ( .A1(n222), .A2(intadd_0_SUM_13_), .B1(n221), .B2(
        intadd_0_SUM_12_), .C1(intadd_0_SUM_11_), .C2(n207), .Z(result[12]) );
  AO222D0 U252 ( .A1(n222), .A2(intadd_0_SUM_6_), .B1(n221), .B2(
        intadd_0_SUM_5_), .C1(intadd_0_SUM_4_), .C2(n207), .Z(result[5]) );
  AO222D0 U253 ( .A1(n222), .A2(intadd_0_SUM_12_), .B1(n221), .B2(
        intadd_0_SUM_11_), .C1(intadd_0_SUM_10_), .C2(n207), .Z(result[11]) );
  AO222D0 U254 ( .A1(n222), .A2(intadd_0_SUM_11_), .B1(n221), .B2(
        intadd_0_SUM_10_), .C1(intadd_0_SUM_9_), .C2(n207), .Z(result[10]) );
  AO222D0 U255 ( .A1(n222), .A2(intadd_0_SUM_10_), .B1(n221), .B2(
        intadd_0_SUM_9_), .C1(intadd_0_SUM_8_), .C2(n207), .Z(result[9]) );
  AO222D0 U256 ( .A1(n222), .A2(intadd_0_SUM_8_), .B1(n221), .B2(
        intadd_0_SUM_7_), .C1(intadd_0_SUM_6_), .C2(n207), .Z(result[7]) );
  AO222D0 U257 ( .A1(n222), .A2(intadd_0_SUM_7_), .B1(n221), .B2(
        intadd_0_SUM_6_), .C1(intadd_0_SUM_5_), .C2(n207), .Z(result[6]) );
  AO222D0 U258 ( .A1(n222), .A2(intadd_0_SUM_5_), .B1(n221), .B2(
        intadd_0_SUM_4_), .C1(intadd_0_SUM_3_), .C2(n207), .Z(result[4]) );
  AO222D0 U259 ( .A1(n222), .A2(intadd_0_SUM_4_), .B1(n207), .B2(
        intadd_0_SUM_2_), .C1(intadd_0_SUM_3_), .C2(n221), .Z(result[3]) );
  AO222D0 U260 ( .A1(n222), .A2(intadd_0_SUM_2_), .B1(n207), .B2(
        intadd_0_SUM_0_), .C1(n221), .C2(intadd_0_SUM_1_), .Z(result[1]) );
  AO222D0 U261 ( .A1(n222), .A2(intadd_0_SUM_3_), .B1(n207), .B2(
        intadd_0_SUM_1_), .C1(n221), .C2(intadd_0_SUM_2_), .Z(result[2]) );
  OA21D0 U262 ( .A1(x[0]), .A2(x[2]), .B(x[1]), .Z(intadd_1_CI) );
  INVD0 U263 ( .I(x[22]), .ZN(intadd_1_A_19_) );
  OR2D0 U264 ( .A1(intadd_2_n1), .A2(y[22]), .Z(intadd_0_B_23_) );
  OAI21D0 U265 ( .A1(x[31]), .A2(y[31]), .B(n208), .ZN(n209) );
  AOI21D0 U266 ( .A1(x[31]), .A2(y[31]), .B(n209), .ZN(result[31]) );
  IOA21D0 U267 ( .A1(n215), .A2(n210), .B(n213), .ZN(result[30]) );
  IOA21D0 U268 ( .A1(n215), .A2(n211), .B(n213), .ZN(result[25]) );
  IOA21D0 U269 ( .A1(n215), .A2(n212), .B(n213), .ZN(result[26]) );
  IOA21D0 U270 ( .A1(n215), .A2(n214), .B(n213), .ZN(result[24]) );
  INVD0 U271 ( .I(y[2]), .ZN(n217) );
  NR2D0 U272 ( .A1(n217), .A2(y[1]), .ZN(n216) );
  XOR2D0 U273 ( .A1(y[3]), .A2(n216), .Z(intadd_0_A_2_) );
  AOI21D0 U274 ( .A1(n137), .A2(n140), .B(n217), .ZN(intadd_2_CI) );
  XOR2D0 U275 ( .A1(C1_Z_0), .A2(n218), .Z(DP_OP_87J1_123_7201_n14) );
  IOA21D0 U276 ( .A1(y[22]), .A2(intadd_2_n1), .B(intadd_0_B_23_), .ZN(
        intadd_0_A_22_) );
  INR2D0 U278 ( .A1(x[1]), .B1(x[0]), .ZN(n219) );
  XOR2D0 U279 ( .A1(n219), .A2(x[2]), .Z(intadd_0_B_1_) );
  AOI21D0 U280 ( .A1(x[1]), .A2(x[0]), .B(n220), .ZN(intadd_0_CI) );
  AO22D0 U281 ( .A1(n222), .A2(intadd_0_SUM_1_), .B1(intadd_0_SUM_0_), .B2(
        n221), .Z(result[0]) );
  INR2D0 U153 ( .A1(n215), .B1(n178), .ZN(n172) );
  AOI21D0 U154 ( .A1(n218), .A2(n164), .B(n163), .ZN(n215) );
  XOR3D0 U155 ( .A1(DP_OP_87J1_123_7201_n2), .A2(C1_Z_0), .A3(n155), .Z(n164)
         );
  IND2D0 U156 ( .A1(DP_OP_87J1_123_7201_n16), .B1(n138), .ZN(n162) );
  CKND0 U189 ( .I(y[30]), .ZN(n138) );
  XNR2D0 U191 ( .A1(y[2]), .A2(n140), .ZN(intadd_0_A_1_) );
  CKND0 U192 ( .I(y[1]), .ZN(n140) );
endmodule

