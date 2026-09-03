/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Thu Aug 20 03:19:43 2026
/////////////////////////////////////////////////////////////


module CSA3_2_Array_WIDTH25_1 ( In_1, In_2, In_3, S, C );
  input [24:0] In_1;
  input [24:0] In_2;
  input [24:0] In_3;
  output [24:0] S;
  output [24:0] C;
  wire   n26;

  CKAN2D1 U1 ( .A1(In_3[21]), .A2(In_2[21]), .Z(C[21]) );
  CKAN2D0 U2 ( .A1(In_3[18]), .A2(In_2[18]), .Z(C[18]) );
  CKAN2D0 U3 ( .A1(In_3[17]), .A2(In_2[17]), .Z(C[17]) );
  CKAN2D0 U4 ( .A1(In_3[16]), .A2(In_2[16]), .Z(C[16]) );
  CKAN2D0 U5 ( .A1(In_3[15]), .A2(In_2[15]), .Z(C[15]) );
  CKAN2D0 U6 ( .A1(In_3[14]), .A2(In_2[14]), .Z(C[14]) );
  CKAN2D0 U7 ( .A1(In_3[11]), .A2(In_2[11]), .Z(C[11]) );
  CKAN2D0 U8 ( .A1(In_3[13]), .A2(In_2[13]), .Z(C[13]) );
  CKAN2D0 U9 ( .A1(In_3[10]), .A2(In_2[10]), .Z(C[10]) );
  CKAN2D1 U10 ( .A1(In_3[20]), .A2(In_2[20]), .Z(C[20]) );
  CKAN2D1 U11 ( .A1(In_3[19]), .A2(In_2[19]), .Z(C[19]) );
  IAO21D0 U12 ( .A1(In_3[11]), .A2(In_2[11]), .B(C[11]), .ZN(S[11]) );
  CKAN2D0 U13 ( .A1(In_3[12]), .A2(In_2[12]), .Z(C[12]) );
  IAO21D0 U14 ( .A1(In_3[13]), .A2(In_2[13]), .B(C[13]), .ZN(S[13]) );
  INVD0 U15 ( .I(n26), .ZN(C[23]) );
  XOR2D0 U16 ( .A1(In_3[21]), .A2(In_2[21]), .Z(S[21]) );
  CKND2D1 U17 ( .A1(In_3[24]), .A2(In_2[24]), .ZN(n26) );
  XOR2D0 U18 ( .A1(In_3[20]), .A2(In_2[20]), .Z(S[20]) );
  XOR2D0 U19 ( .A1(In_3[19]), .A2(In_2[19]), .Z(S[19]) );
  XOR2D0 U20 ( .A1(In_3[18]), .A2(In_2[18]), .Z(S[18]) );
  IAO21D0 U21 ( .A1(In_3[17]), .A2(In_2[17]), .B(C[17]), .ZN(S[17]) );
  IAO21D0 U22 ( .A1(In_3[16]), .A2(In_2[16]), .B(C[16]), .ZN(S[16]) );
  IAO21D0 U23 ( .A1(In_3[15]), .A2(In_2[15]), .B(C[15]), .ZN(S[15]) );
  IAO21D0 U24 ( .A1(In_3[14]), .A2(In_2[14]), .B(C[14]), .ZN(S[14]) );
  IAO21D0 U25 ( .A1(In_3[12]), .A2(In_2[12]), .B(C[12]), .ZN(S[12]) );
  CKAN2D0 U26 ( .A1(In_3[0]), .A2(In_2[0]), .Z(C[0]) );
  CKAN2D0 U27 ( .A1(In_3[1]), .A2(In_2[1]), .Z(C[1]) );
  CKAN2D0 U28 ( .A1(In_3[2]), .A2(In_2[2]), .Z(C[2]) );
  CKAN2D0 U29 ( .A1(In_3[3]), .A2(In_2[3]), .Z(C[3]) );
  CKAN2D0 U30 ( .A1(In_3[4]), .A2(In_2[4]), .Z(C[4]) );
  CKAN2D0 U31 ( .A1(In_3[5]), .A2(In_2[5]), .Z(C[5]) );
  CKAN2D0 U32 ( .A1(In_3[6]), .A2(In_2[6]), .Z(C[6]) );
  CKAN2D0 U33 ( .A1(In_3[7]), .A2(In_2[7]), .Z(C[7]) );
  CKAN2D0 U34 ( .A1(In_3[8]), .A2(In_2[8]), .Z(C[8]) );
  CKAN2D0 U35 ( .A1(In_3[9]), .A2(In_2[9]), .Z(C[9]) );
  OAI21D1 U36 ( .A1(In_3[24]), .A2(In_2[24]), .B(n26), .ZN(S[24]) );
  INVD1 U37 ( .I(S[24]), .ZN(S[23]) );
  AN2XD1 U38 ( .A1(In_3[24]), .A2(In_2[22]), .Z(C[22]) );
  IAO21D0 U39 ( .A1(In_3[0]), .A2(In_2[0]), .B(C[0]), .ZN(S[0]) );
  IAO21D0 U40 ( .A1(In_3[1]), .A2(In_2[1]), .B(C[1]), .ZN(S[1]) );
  IAO21D0 U41 ( .A1(In_3[2]), .A2(In_2[2]), .B(C[2]), .ZN(S[2]) );
  IAO21D0 U42 ( .A1(In_3[3]), .A2(In_2[3]), .B(C[3]), .ZN(S[3]) );
  IAO21D0 U43 ( .A1(In_3[4]), .A2(In_2[4]), .B(C[4]), .ZN(S[4]) );
  IAO21D0 U44 ( .A1(In_3[5]), .A2(In_2[5]), .B(C[5]), .ZN(S[5]) );
  IAO21D0 U45 ( .A1(In_3[6]), .A2(In_2[6]), .B(C[6]), .ZN(S[6]) );
  IAO21D0 U46 ( .A1(In_3[7]), .A2(In_2[7]), .B(C[7]), .ZN(S[7]) );
  IAO21D0 U47 ( .A1(In_3[8]), .A2(In_2[8]), .B(C[8]), .ZN(S[8]) );
  IAO21D0 U48 ( .A1(In_3[9]), .A2(In_2[9]), .B(C[9]), .ZN(S[9]) );
  IAO21D0 U49 ( .A1(In_3[10]), .A2(In_2[10]), .B(C[10]), .ZN(S[10]) );
  IAO21D1 U50 ( .A1(In_3[24]), .A2(In_2[22]), .B(C[22]), .ZN(S[22]) );
endmodule


module CSA3_2_Array_WIDTH25_0 ( In_1, In_2, In_3, S, C );
  input [24:0] In_1;
  input [24:0] In_2;
  input [24:0] In_3;
  output [24:0] S;
  output [24:0] C;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14;

  INVD1 U1 ( .I(n13), .ZN(C[19]) );
  INVD1 U2 ( .I(In_3[24]), .ZN(n5) );
  AN2D0 U3 ( .A1(In_3[0]), .A2(In_1[0]), .Z(C[0]) );
  INVD1 U4 ( .I(n14), .ZN(C[20]) );
  MAOI222D0 U5 ( .A(In_1[11]), .B(In_2[11]), .C(In_3[11]), .ZN(n6) );
  XOR3D0 U6 ( .A1(In_1[21]), .A2(In_2[21]), .A3(n2), .Z(S[21]) );
  MAOI222D0 U7 ( .A(In_1[19]), .B(In_2[19]), .C(In_3[19]), .ZN(n13) );
  XOR3D0 U8 ( .A1(In_1[19]), .A2(In_2[19]), .A3(In_3[19]), .Z(S[19]) );
  XOR3D0 U9 ( .A1(In_1[20]), .A2(In_2[20]), .A3(In_3[20]), .Z(S[20]) );
  MAOI222D0 U10 ( .A(In_1[20]), .B(In_2[20]), .C(In_3[20]), .ZN(n14) );
  INVD0 U11 ( .I(n5), .ZN(n2) );
  INVD0 U12 ( .I(In_1[21]), .ZN(n4) );
  INVD0 U13 ( .I(n12), .ZN(C[18]) );
  INVD0 U14 ( .I(In_2[21]), .ZN(n3) );
  MAOI222D0 U15 ( .A(In_1[18]), .B(In_2[18]), .C(In_3[18]), .ZN(n12) );
  XOR3D0 U16 ( .A1(In_1[18]), .A2(In_2[18]), .A3(In_3[18]), .Z(S[18]) );
  INVD0 U17 ( .I(n11), .ZN(C[17]) );
  MAOI222D0 U18 ( .A(In_1[17]), .B(In_2[17]), .C(In_3[17]), .ZN(n11) );
  XOR3D0 U19 ( .A1(In_1[17]), .A2(In_2[17]), .A3(In_3[17]), .Z(S[17]) );
  INVD0 U20 ( .I(n10), .ZN(C[16]) );
  XOR3D0 U21 ( .A1(In_1[16]), .A2(In_2[16]), .A3(In_3[16]), .Z(S[16]) );
  INVD0 U22 ( .I(n9), .ZN(C[15]) );
  MAOI222D0 U23 ( .A(In_1[16]), .B(In_2[16]), .C(In_3[16]), .ZN(n10) );
  INVD0 U24 ( .I(n8), .ZN(C[14]) );
  XOR3D0 U25 ( .A1(In_1[15]), .A2(In_2[15]), .A3(In_3[15]), .Z(S[15]) );
  MAOI222D0 U26 ( .A(In_1[15]), .B(In_2[15]), .C(In_3[15]), .ZN(n9) );
  INVD0 U27 ( .I(n7), .ZN(C[13]) );
  MAOI222D0 U28 ( .A(In_1[14]), .B(In_2[14]), .C(In_3[14]), .ZN(n8) );
  XOR3D0 U29 ( .A1(In_1[14]), .A2(In_2[14]), .A3(In_3[14]), .Z(S[14]) );
  MAOI222D0 U30 ( .A(In_1[13]), .B(In_2[13]), .C(In_3[13]), .ZN(n7) );
  XOR3D0 U31 ( .A1(In_1[13]), .A2(In_2[13]), .A3(In_3[13]), .Z(S[13]) );
  XOR3D0 U32 ( .A1(In_1[11]), .A2(In_2[11]), .A3(In_3[11]), .Z(S[11]) );
  XOR3D1 U33 ( .A1(In_3[24]), .A2(In_1[24]), .A3(In_2[24]), .Z(S[24]) );
  MAOI222D1 U34 ( .A(n5), .B(n4), .C(n3), .ZN(C[21]) );
  INVD0 U35 ( .I(n6), .ZN(C[11]) );
  IAO21D0 U36 ( .A1(In_3[0]), .A2(In_1[0]), .B(C[0]), .ZN(S[0]) );
  FA1D0 U37 ( .A(In_2[10]), .B(In_1[10]), .CI(In_3[10]), .CO(C[10]), .S(S[10])
         );
  FA1D0 U38 ( .A(In_2[23]), .B(In_1[23]), .CI(In_3[24]), .CO(C[23]), .S(S[23])
         );
  FA1D0 U39 ( .A(In_2[22]), .B(In_1[22]), .CI(In_3[24]), .CO(C[22]), .S(S[22])
         );
  FA1D0 U40 ( .A(In_2[12]), .B(In_1[12]), .CI(In_3[12]), .CO(C[12]), .S(S[12])
         );
  FA1D0 U41 ( .A(In_2[9]), .B(In_1[9]), .CI(In_3[9]), .CO(C[9]), .S(S[9]) );
  FA1D0 U42 ( .A(In_2[8]), .B(In_1[8]), .CI(In_3[8]), .CO(C[8]), .S(S[8]) );
  FA1D0 U43 ( .A(In_2[7]), .B(In_1[7]), .CI(In_3[7]), .CO(C[7]), .S(S[7]) );
  FA1D0 U44 ( .A(In_2[6]), .B(In_1[6]), .CI(In_3[6]), .CO(C[6]), .S(S[6]) );
  FA1D0 U45 ( .A(In_2[5]), .B(In_1[5]), .CI(In_3[5]), .CO(C[5]), .S(S[5]) );
  FA1D0 U46 ( .A(In_2[4]), .B(In_1[4]), .CI(In_3[4]), .CO(C[4]), .S(S[4]) );
  FA1D0 U47 ( .A(In_2[3]), .B(In_1[3]), .CI(In_3[3]), .CO(C[3]), .S(S[3]) );
  FA1D0 U48 ( .A(In_2[2]), .B(In_1[2]), .CI(In_3[2]), .CO(C[2]), .S(S[2]) );
  FA1D0 U49 ( .A(In_2[1]), .B(In_1[1]), .CI(In_3[1]), .CO(C[1]), .S(S[1]) );
endmodule


module Mantissa_Div_L2_MANTISSA_WIDTH23 ( Mantissa_X, Mantissa_Y, Mantissa_Out, 
        Shift );
  input [22:0] Mantissa_X;
  input [22:0] Mantissa_Y;
  output [22:0] Mantissa_Out;
  output Shift;
  wire   L1_p2_24_, Res_0_, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         intadd_0_CI, intadd_0_SUM_21_, intadd_0_SUM_20_, intadd_0_SUM_19_,
         intadd_0_SUM_18_, intadd_0_SUM_17_, intadd_0_SUM_16_,
         intadd_0_SUM_15_, intadd_0_SUM_14_, intadd_0_SUM_13_,
         intadd_0_SUM_12_, intadd_0_SUM_11_, intadd_0_SUM_10_, intadd_0_SUM_9_,
         intadd_0_SUM_8_, intadd_0_SUM_7_, intadd_0_SUM_6_, intadd_0_SUM_5_,
         intadd_0_SUM_4_, intadd_0_SUM_3_, intadd_0_SUM_2_, intadd_0_SUM_1_,
         intadd_0_SUM_0_, intadd_0_n22, intadd_0_n21, intadd_0_n20,
         intadd_0_n19, intadd_0_n18, intadd_0_n17, intadd_0_n16, intadd_0_n15,
         intadd_0_n14, intadd_0_n13, intadd_0_n12, intadd_0_n11, intadd_0_n10,
         intadd_0_n9, intadd_0_n8, intadd_0_n7, intadd_0_n6, intadd_0_n5,
         intadd_0_n4, intadd_0_n3, intadd_0_n2, intadd_0_n1, n1, n3, n4, n5,
         n6, n7, n8, n9, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
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
         n232, n233, n234, n235, n236, n237, n238, n239, n240, n241, n242,
         n243, n244, n245, n246, n247, n248, n249, n250, n251, n252, n253,
         n254, n255, n256, n257, n258, n259, n260, n261, n262, n263, n264,
         n265, n266, n267, n268, n269, n270, n271, n272, n273, n274, n275,
         n276, n277, n278, n279, n280, n281, n282, n283, n284, n285, n286,
         n287, n288, n289, n290, n291, n292, n293, n294, n295, n296, n297,
         n298, n299, n300, n301, n302, n303, n304, n305, n306, n307, n308,
         n309, n310, n311, n312, n313, n314, n315, n316, n317, n318, n319,
         n320, n321, n322, n323, n324, n325, n326, n327, n328, n329, n330,
         n331, n332, n333, n334, n335, n336, n337, n338, n339, n340, n341,
         n342, n343, n344, n345, n346, n347, n348, n349, n350, n351;
  wire   [23:0] x_sub_y;
  wire   [24:0] A11S;
  wire   [23:0] A11C;
  wire   [24:1] A21S;
  wire   [23:0] A21C;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1;

  CSA3_2_Array_WIDTH25_1 Stage_1_1 ( .In_1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .In_2({x_sub_y[23], 1'b0, 
        n4, x_sub_y[21:14], n48, n44, n46, n40, x_sub_y[9], n36, n38, n32, n34, 
        n6, n8, x_sub_y[2:0]}), .In_3({L1_p2_24_, 1'b0, 1'b0, n351, n332, n331, 
        n330, n350, n349, n348, n347, n346, n344, n345, n343, n342, n340, n339, 
        n338, n337, n336, n335, n333, n334, n341}), .S(A11S), .C({
        SYNOPSYS_UNCONNECTED__0, A11C}) );
  CSA3_2_Array_WIDTH25_0 Stage_2_1 ( .In_1(A11S), .In_2({A11C, 1'b0}), .In_3({
        n10, 1'b0, 1'b0, 1'b0, n11, n12, n13, n14, n15, n16, n17, n18, n19, 
        n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31}), .S({A21S, 
        Res_0_}), .C({SYNOPSYS_UNCONNECTED__1, A21C}) );
  FA1D0 intadd_0_U23 ( .A(A21C[1]), .B(A21S[2]), .CI(intadd_0_CI), .CO(
        intadd_0_n22), .S(intadd_0_SUM_0_) );
  FA1D0 intadd_0_U22 ( .A(A21C[2]), .B(A21S[3]), .CI(intadd_0_n22), .CO(
        intadd_0_n21), .S(intadd_0_SUM_1_) );
  FA1D0 intadd_0_U21 ( .A(A21C[3]), .B(A21S[4]), .CI(intadd_0_n21), .CO(
        intadd_0_n20), .S(intadd_0_SUM_2_) );
  FA1D0 intadd_0_U20 ( .A(A21C[4]), .B(A21S[5]), .CI(intadd_0_n20), .CO(
        intadd_0_n19), .S(intadd_0_SUM_3_) );
  FA1D0 intadd_0_U19 ( .A(A21C[5]), .B(A21S[6]), .CI(intadd_0_n19), .CO(
        intadd_0_n18), .S(intadd_0_SUM_4_) );
  FA1D0 intadd_0_U18 ( .A(A21C[6]), .B(A21S[7]), .CI(intadd_0_n18), .CO(
        intadd_0_n17), .S(intadd_0_SUM_5_) );
  FA1D0 intadd_0_U17 ( .A(A21C[7]), .B(A21S[8]), .CI(intadd_0_n17), .CO(
        intadd_0_n16), .S(intadd_0_SUM_6_) );
  FA1D0 intadd_0_U16 ( .A(A21C[8]), .B(A21S[9]), .CI(intadd_0_n16), .CO(
        intadd_0_n15), .S(intadd_0_SUM_7_) );
  FA1D0 intadd_0_U13 ( .A(A21C[11]), .B(A21S[12]), .CI(intadd_0_n13), .CO(
        intadd_0_n12), .S(intadd_0_SUM_10_) );
  FA1D0 intadd_0_U12 ( .A(A21C[12]), .B(A21S[13]), .CI(intadd_0_n12), .CO(
        intadd_0_n11), .S(intadd_0_SUM_11_) );
  FA1D0 intadd_0_U11 ( .A(A21C[13]), .B(A21S[14]), .CI(intadd_0_n11), .CO(
        intadd_0_n10), .S(intadd_0_SUM_12_) );
  FA1D0 intadd_0_U10 ( .A(A21C[14]), .B(A21S[15]), .CI(intadd_0_n10), .CO(
        intadd_0_n9), .S(intadd_0_SUM_13_) );
  FA1D0 intadd_0_U9 ( .A(A21C[15]), .B(A21S[16]), .CI(intadd_0_n9), .CO(
        intadd_0_n8), .S(intadd_0_SUM_14_) );
  FA1D0 intadd_0_U8 ( .A(A21C[16]), .B(A21S[17]), .CI(intadd_0_n8), .CO(
        intadd_0_n7), .S(intadd_0_SUM_15_) );
  FA1D0 intadd_0_U7 ( .A(A21C[17]), .B(A21S[18]), .CI(intadd_0_n7), .CO(
        intadd_0_n6), .S(intadd_0_SUM_16_) );
  FA1D0 intadd_0_U6 ( .A(A21C[18]), .B(A21S[19]), .CI(intadd_0_n6), .CO(
        intadd_0_n5), .S(intadd_0_SUM_17_) );
  FA1D0 intadd_0_U5 ( .A(A21C[19]), .B(A21S[20]), .CI(intadd_0_n5), .CO(
        intadd_0_n4), .S(intadd_0_SUM_18_) );
  FA1D0 intadd_0_U4 ( .A(A21C[20]), .B(A21S[21]), .CI(intadd_0_n4), .CO(
        intadd_0_n3), .S(intadd_0_SUM_19_) );
  MAOI222D1 U3 ( .A(Mantissa_Y[8]), .B(n184), .C(n194), .ZN(n257) );
  CKND2D0 U5 ( .A1(n103), .A2(Mantissa_X[19]), .ZN(n136) );
  MAOI222D1 U6 ( .A(Mantissa_Y[6]), .B(n171), .C(n181), .ZN(n251) );
  OAI21D0 U7 ( .A1(n278), .A2(n117), .B(n116), .ZN(n300) );
  OAI22D0 U8 ( .A1(n188), .A2(n186), .B1(Mantissa_Y[8]), .B2(n184), .ZN(n205)
         );
  OAI21D0 U9 ( .A1(n319), .A2(n138), .B(n137), .ZN(n323) );
  OAI21D0 U10 ( .A1(n111), .A2(n110), .B(n109), .ZN(n296) );
  OAI21D0 U11 ( .A1(n296), .A2(n113), .B(n165), .ZN(n168) );
  NR2D0 U12 ( .A1(n152), .A2(n147), .ZN(n159) );
  INVD0 U13 ( .I(intadd_0_SUM_21_), .ZN(n223) );
  INVD0 U14 ( .I(n70), .ZN(n49) );
  OR2D0 U15 ( .A1(Shift), .A2(intadd_0_SUM_21_), .Z(n232) );
  INVD0 U16 ( .I(n49), .ZN(n50) );
  FA1D0 U17 ( .A(A21C[22]), .B(A21S[23]), .CI(intadd_0_n2), .CO(intadd_0_n1), 
        .S(intadd_0_SUM_21_) );
  CKBD1 U18 ( .I(n226), .Z(Shift) );
  XNR2D1 U19 ( .A1(n152), .A2(n153), .ZN(n1) );
  INVD0 U20 ( .I(n1), .ZN(n4) );
  INVD0 U21 ( .I(n233), .ZN(n80) );
  FA1D1 U22 ( .A(A21C[21]), .B(A21S[22]), .CI(intadd_0_n3), .CO(intadd_0_n2), 
        .S(intadd_0_SUM_20_) );
  CKND2D0 U23 ( .A1(n4), .A2(n73), .ZN(n157) );
  AN2D0 U24 ( .A1(x_sub_y[20]), .A2(n292), .Z(n331) );
  CKAN2D0 U25 ( .A1(x_sub_y[19]), .A2(n292), .Z(n330) );
  CKAN2D0 U26 ( .A1(x_sub_y[13]), .A2(n286), .Z(n344) );
  AN2D0 U27 ( .A1(A21S[1]), .A2(A21C[0]), .Z(intadd_0_CI) );
  CKND2D0 U28 ( .A1(n86), .A2(n108), .ZN(n166) );
  CKAN2D0 U29 ( .A1(n144), .A2(n292), .Z(n328) );
  BUFFD0 U30 ( .I(n291), .Z(n292) );
  BUFFD0 U31 ( .I(n76), .Z(n325) );
  BUFFD0 U32 ( .I(n267), .Z(n247) );
  BUFFD0 U33 ( .I(n290), .Z(n291) );
  BUFFD0 U34 ( .I(n290), .Z(n267) );
  CKND2D0 U35 ( .A1(n100), .A2(Mantissa_Y[16]), .ZN(n124) );
  CKND2D0 U36 ( .A1(n99), .A2(Mantissa_X[15]), .ZN(n283) );
  NR2D1 U37 ( .A1(n99), .A2(Mantissa_X[15]), .ZN(n122) );
  CKND2D0 U38 ( .A1(n98), .A2(Mantissa_Y[14]), .ZN(n118) );
  CKND2D0 U39 ( .A1(n87), .A2(Mantissa_X[3]), .ZN(n164) );
  NR2D1 U40 ( .A1(n268), .A2(Mantissa_X[13]), .ZN(n269) );
  INVD0 U41 ( .I(Mantissa_Y[1]), .ZN(n240) );
  INR2XD0 U42 ( .A1(Mantissa_X[0]), .B1(Mantissa_Y[0]), .ZN(n237) );
  INR2D1 U43 ( .A1(Mantissa_X[14]), .B1(Mantissa_Y[14]), .ZN(n119) );
  INVD1 U44 ( .I(Mantissa_Y[15]), .ZN(n99) );
  INVD0 U45 ( .I(n233), .ZN(n81) );
  INVD0 U46 ( .I(n232), .ZN(n68) );
  INVD0 U47 ( .I(n232), .ZN(n69) );
  INVD0 U48 ( .I(n233), .ZN(n79) );
  INVD0 U49 ( .I(n232), .ZN(n67) );
  CKAN2D1 U50 ( .A1(x_sub_y[21]), .A2(n292), .Z(n332) );
  CKAN2D0 U51 ( .A1(x_sub_y[18]), .A2(n291), .Z(n350) );
  CKAN2D0 U52 ( .A1(x_sub_y[17]), .A2(n290), .Z(n349) );
  CKAN2D0 U53 ( .A1(x_sub_y[16]), .A2(n290), .Z(n348) );
  CKAN2D0 U54 ( .A1(x_sub_y[15]), .A2(n291), .Z(n347) );
  CKAN2D0 U55 ( .A1(x_sub_y[14]), .A2(n286), .Z(n346) );
  AOI32D0 U56 ( .A1(n183), .A2(n182), .A3(n181), .B1(n180), .B2(n182), .ZN(n28) );
  IOA21D0 U57 ( .A1(Mantissa_X[4]), .A2(n89), .B(n88), .ZN(n179) );
  INVD0 U58 ( .I(n328), .ZN(n61) );
  BUFFD0 U59 ( .I(n64), .Z(n273) );
  NR2D0 U60 ( .A1(n143), .A2(Mantissa_Y[21]), .ZN(n145) );
  NR2D0 U61 ( .A1(n91), .A2(Mantissa_X[6]), .ZN(n173) );
  NR2D0 U62 ( .A1(n90), .A2(Mantissa_Y[5]), .ZN(n177) );
  ND2D1 U63 ( .A1(n104), .A2(Mantissa_Y[19]), .ZN(n137) );
  ND2D0 U64 ( .A1(n101), .A2(Mantissa_X[17]), .ZN(n128) );
  NR2D0 U65 ( .A1(n92), .A2(Mantissa_Y[7]), .ZN(n190) );
  NR2D0 U66 ( .A1(n96), .A2(Mantissa_Y[11]), .ZN(n216) );
  CKND2D0 U67 ( .A1(n268), .A2(Mantissa_X[13]), .ZN(n115) );
  CKND2D0 U68 ( .A1(n236), .A2(Mantissa_Y[2]), .ZN(n108) );
  NR2D0 U69 ( .A1(n93), .A2(Mantissa_X[8]), .ZN(n186) );
  NR2D0 U70 ( .A1(n95), .A2(Mantissa_X[10]), .ZN(n199) );
  CKND2D0 U71 ( .A1(n85), .A2(Mantissa_X[2]), .ZN(n109) );
  ND2D0 U72 ( .A1(n97), .A2(Mantissa_X[12]), .ZN(n114) );
  NR2D0 U73 ( .A1(n94), .A2(Mantissa_Y[9]), .ZN(n203) );
  INVD0 U74 ( .I(Mantissa_X[2]), .ZN(n236) );
  INR2D0 U75 ( .A1(Mantissa_Y[12]), .B1(Mantissa_X[12]), .ZN(n212) );
  INR2D1 U76 ( .A1(Mantissa_X[16]), .B1(Mantissa_Y[16]), .ZN(n125) );
  AO222D0 U77 ( .A1(n227), .A2(intadd_0_SUM_12_), .B1(n51), .B2(
        intadd_0_SUM_13_), .C1(n78), .C2(intadd_0_SUM_11_), .Z(
        Mantissa_Out[13]) );
  AO222D0 U78 ( .A1(n231), .A2(intadd_0_SUM_1_), .B1(n51), .B2(intadd_0_SUM_2_), .C1(n80), .C2(intadd_0_SUM_0_), .Z(Mantissa_Out[2]) );
  AO222D0 U79 ( .A1(n230), .A2(intadd_0_SUM_3_), .B1(n51), .B2(intadd_0_SUM_4_), .C1(n80), .C2(intadd_0_SUM_2_), .Z(Mantissa_Out[4]) );
  AO222D0 U80 ( .A1(n228), .A2(intadd_0_SUM_8_), .B1(n50), .B2(intadd_0_SUM_9_), .C1(n81), .C2(intadd_0_SUM_7_), .Z(Mantissa_Out[9]) );
  AO222D0 U81 ( .A1(n228), .A2(intadd_0_SUM_15_), .B1(n50), .B2(
        intadd_0_SUM_16_), .C1(n79), .C2(intadd_0_SUM_14_), .Z(
        Mantissa_Out[16]) );
  AO222D0 U82 ( .A1(n231), .A2(intadd_0_SUM_0_), .B1(n234), .B2(n79), .C1(n50), 
        .C2(intadd_0_SUM_1_), .Z(Mantissa_Out[1]) );
  AO222D0 U83 ( .A1(n227), .A2(intadd_0_SUM_13_), .B1(n70), .B2(
        intadd_0_SUM_14_), .C1(n53), .C2(intadd_0_SUM_12_), .Z(
        Mantissa_Out[14]) );
  AO222D0 U84 ( .A1(Shift), .A2(n234), .B1(Res_0_), .B2(n54), .C1(n67), .C2(
        intadd_0_SUM_0_), .Z(Mantissa_Out[0]) );
  AO222D0 U85 ( .A1(n225), .A2(intadd_0_SUM_18_), .B1(n67), .B2(
        intadd_0_SUM_19_), .C1(n54), .C2(intadd_0_SUM_17_), .Z(
        Mantissa_Out[19]) );
  AO222D0 U86 ( .A1(n228), .A2(intadd_0_SUM_10_), .B1(n69), .B2(
        intadd_0_SUM_11_), .C1(n54), .C2(intadd_0_SUM_9_), .Z(Mantissa_Out[11]) );
  AO222D0 U87 ( .A1(n225), .A2(intadd_0_SUM_19_), .B1(n68), .B2(
        intadd_0_SUM_20_), .C1(n53), .C2(intadd_0_SUM_18_), .Z(
        Mantissa_Out[20]) );
  AO222D0 U88 ( .A1(n230), .A2(intadd_0_SUM_5_), .B1(n68), .B2(intadd_0_SUM_6_), .C1(n53), .C2(intadd_0_SUM_4_), .Z(Mantissa_Out[6]) );
  AO222D0 U89 ( .A1(n230), .A2(intadd_0_SUM_7_), .B1(n70), .B2(intadd_0_SUM_8_), .C1(n78), .C2(intadd_0_SUM_6_), .Z(Mantissa_Out[8]) );
  AO222D0 U90 ( .A1(n230), .A2(intadd_0_SUM_6_), .B1(n69), .B2(intadd_0_SUM_7_), .C1(n80), .C2(intadd_0_SUM_5_), .Z(Mantissa_Out[7]) );
  AO222D0 U91 ( .A1(n227), .A2(intadd_0_SUM_11_), .B1(n70), .B2(
        intadd_0_SUM_12_), .C1(n81), .C2(intadd_0_SUM_10_), .Z(
        Mantissa_Out[12]) );
  AO222D0 U92 ( .A1(n225), .A2(intadd_0_SUM_17_), .B1(n67), .B2(
        intadd_0_SUM_18_), .C1(n79), .C2(intadd_0_SUM_16_), .Z(
        Mantissa_Out[18]) );
  AO222D0 U93 ( .A1(n231), .A2(intadd_0_SUM_4_), .B1(n68), .B2(intadd_0_SUM_5_), .C1(n80), .C2(intadd_0_SUM_3_), .Z(Mantissa_Out[5]) );
  AO222D0 U94 ( .A1(n227), .A2(intadd_0_SUM_14_), .B1(n67), .B2(
        intadd_0_SUM_15_), .C1(n78), .C2(intadd_0_SUM_13_), .Z(
        Mantissa_Out[15]) );
  AO222D0 U95 ( .A1(n225), .A2(intadd_0_SUM_16_), .B1(n69), .B2(
        intadd_0_SUM_17_), .C1(n81), .C2(intadd_0_SUM_15_), .Z(
        Mantissa_Out[17]) );
  AO222D0 U96 ( .A1(n231), .A2(intadd_0_SUM_2_), .B1(n68), .B2(intadd_0_SUM_3_), .C1(n79), .C2(intadd_0_SUM_1_), .Z(Mantissa_Out[3]) );
  AO222D0 U97 ( .A1(n228), .A2(intadd_0_SUM_9_), .B1(n69), .B2(
        intadd_0_SUM_10_), .C1(n81), .C2(intadd_0_SUM_8_), .Z(Mantissa_Out[10]) );
  BUFFD1 U98 ( .I(n226), .Z(n230) );
  BUFFD1 U99 ( .I(n229), .Z(n231) );
  BUFFD1 U100 ( .I(n229), .Z(n228) );
  OA21D0 U101 ( .A1(n226), .A2(intadd_0_SUM_20_), .B(intadd_0_SUM_21_), .Z(
        Mantissa_Out[22]) );
  BUFFD1 U102 ( .I(n229), .Z(n225) );
  BUFFD1 U103 ( .I(n229), .Z(n227) );
  BUFFD2 U104 ( .I(n224), .Z(n226) );
  BUFFD1 U105 ( .I(n224), .Z(n229) );
  OAI211D0 U106 ( .A1(n159), .A2(n66), .B(n158), .C(n157), .ZN(n11) );
  OAI222D0 U107 ( .A1(n156), .A2(n62), .B1(n65), .B2(n1), .C1(n55), .C2(n155), 
        .ZN(n12) );
  OAI222D0 U108 ( .A1(n156), .A2(n64), .B1(n61), .B2(n326), .C1(n57), .C2(n142), .ZN(n13) );
  INVD0 U109 ( .I(x_sub_y[21]), .ZN(n156) );
  INVD0 U110 ( .I(x_sub_y[20]), .ZN(n326) );
  XOR2D0 U111 ( .A1(n154), .A2(n153), .Z(n155) );
  INVD0 U112 ( .I(x_sub_y[19]), .ZN(n329) );
  XOR2D0 U113 ( .A1(n289), .A2(n318), .Z(x_sub_y[19]) );
  INVD0 U114 ( .I(x_sub_y[18]), .ZN(n321) );
  XOR2D0 U115 ( .A1(n150), .A2(n141), .Z(n142) );
  CKND2D1 U116 ( .A1(n289), .A2(n136), .ZN(n105) );
  XOR2D0 U117 ( .A1(n323), .A2(n322), .Z(n324) );
  XOR2D0 U118 ( .A1(n288), .A2(n314), .Z(x_sub_y[18]) );
  INVD0 U119 ( .I(x_sub_y[17]), .ZN(n317) );
  XNR2D0 U120 ( .A1(n319), .A2(n318), .ZN(n320) );
  CKND2D0 U121 ( .A1(n280), .A2(n279), .ZN(n21) );
  XOR2D0 U122 ( .A1(n287), .A2(n310), .Z(x_sub_y[17]) );
  INVD0 U123 ( .I(x_sub_y[16]), .ZN(n313) );
  XOR2D0 U124 ( .A1(n285), .A2(n306), .Z(x_sub_y[16]) );
  XNR2D0 U125 ( .A1(n315), .A2(n314), .ZN(n316) );
  INVD0 U126 ( .I(x_sub_y[15]), .ZN(n308) );
  XOR2D0 U127 ( .A1(n284), .A2(n302), .Z(x_sub_y[15]) );
  XNR2D0 U128 ( .A1(n311), .A2(n310), .ZN(n312) );
  INVD0 U129 ( .I(n47), .ZN(n48) );
  INVD0 U130 ( .I(n43), .ZN(n44) );
  XNR2D0 U131 ( .A1(n307), .A2(n306), .ZN(n309) );
  INVD0 U132 ( .I(x_sub_y[13]), .ZN(n47) );
  XOR2D0 U133 ( .A1(n281), .A2(n299), .Z(x_sub_y[14]) );
  INVD0 U134 ( .I(x_sub_y[12]), .ZN(n43) );
  XOR2D0 U135 ( .A1(n271), .A2(n277), .Z(x_sub_y[13]) );
  OA21D0 U136 ( .A1(n214), .A2(n212), .B(n114), .Z(n271) );
  INVD0 U137 ( .I(n272), .ZN(n73) );
  BUFFD0 U138 ( .I(n61), .Z(n272) );
  IOA21D0 U139 ( .A1(Mantissa_Y[4]), .A2(n160), .B(n163), .ZN(n88) );
  INVD0 U140 ( .I(n328), .ZN(n62) );
  INVD0 U141 ( .I(n328), .ZN(n63) );
  INVD0 U142 ( .I(n325), .ZN(n57) );
  INVD0 U143 ( .I(n325), .ZN(n55) );
  INVD0 U144 ( .I(n325), .ZN(n56) );
  NR2XD0 U145 ( .A1(n247), .A2(Mantissa_X[22]), .ZN(n147) );
  INVD0 U146 ( .I(n327), .ZN(n65) );
  INVD0 U147 ( .I(n327), .ZN(n66) );
  CKND2D0 U148 ( .A1(n235), .A2(n109), .ZN(n86) );
  INVD0 U149 ( .I(n327), .ZN(n64) );
  CKND2D0 U150 ( .A1(n283), .A2(n282), .ZN(n302) );
  BUFFD0 U151 ( .I(n267), .Z(n293) );
  INVD0 U152 ( .I(n128), .ZN(n131) );
  INVD0 U153 ( .I(n269), .ZN(n116) );
  INVD0 U154 ( .I(n108), .ZN(n111) );
  INVD0 U155 ( .I(n115), .ZN(n117) );
  INVD0 U156 ( .I(n124), .ZN(n127) );
  INVD0 U157 ( .I(n274), .ZN(n76) );
  INVD0 U158 ( .I(n283), .ZN(n123) );
  INVD0 U159 ( .I(n89), .ZN(n71) );
  NR2XD0 U160 ( .A1(n148), .A2(n3), .ZN(n149) );
  INVD0 U161 ( .I(n122), .ZN(n282) );
  INVD0 U162 ( .I(n164), .ZN(n113) );
  XOR2D0 U163 ( .A1(n3), .A2(Mantissa_X[22]), .Z(n153) );
  INVD0 U164 ( .I(n118), .ZN(n121) );
  INVD0 U165 ( .I(n136), .ZN(n138) );
  INVD0 U166 ( .I(n132), .ZN(n135) );
  INVD0 U167 ( .I(n125), .ZN(n126) );
  INVD0 U168 ( .I(n129), .ZN(n130) );
  CKND2D1 U169 ( .A1(n102), .A2(Mantissa_Y[18]), .ZN(n132) );
  INVD0 U170 ( .I(Mantissa_Y[4]), .ZN(n89) );
  INVD0 U171 ( .I(n133), .ZN(n134) );
  BUFFD1 U172 ( .I(Mantissa_Y[22]), .Z(n3) );
  INVD0 U173 ( .I(n119), .ZN(n120) );
  INVD0 U174 ( .I(n112), .ZN(n165) );
  OR2D1 U175 ( .A1(n144), .A2(Mantissa_Y[22]), .Z(n274) );
  CKAN2D0 U176 ( .A1(n144), .A2(Mantissa_Y[22]), .Z(n327) );
  INVD0 U177 ( .I(Mantissa_Y[5]), .ZN(n176) );
  INVD0 U178 ( .I(Mantissa_Y[8]), .ZN(n93) );
  INVD0 U179 ( .I(Mantissa_X[4]), .ZN(n160) );
  XNR2D0 U180 ( .A1(Mantissa_Y[21]), .A2(Mantissa_X[21]), .ZN(n141) );
  XOR2D0 U181 ( .A1(Mantissa_Y[20]), .A2(Mantissa_X[20]), .Z(n322) );
  INVD0 U182 ( .I(Mantissa_X[22]), .ZN(n148) );
  INVD0 U183 ( .I(Mantissa_X[8]), .ZN(n184) );
  INVD0 U184 ( .I(Mantissa_Y[19]), .ZN(n103) );
  INVD0 U185 ( .I(Mantissa_X[11]), .ZN(n96) );
  INVD0 U186 ( .I(Mantissa_X[5]), .ZN(n90) );
  INVD0 U187 ( .I(Mantissa_X[21]), .ZN(n143) );
  INVD0 U188 ( .I(Mantissa_Y[13]), .ZN(n268) );
  XOR2D0 U189 ( .A1(Mantissa_Y[19]), .A2(Mantissa_X[19]), .Z(n318) );
  INVD0 U190 ( .I(Mantissa_Y[9]), .ZN(n202) );
  INVD0 U191 ( .I(Mantissa_Y[11]), .ZN(n215) );
  INVD0 U192 ( .I(Mantissa_X[18]), .ZN(n102) );
  INVD0 U193 ( .I(Mantissa_X[19]), .ZN(n104) );
  INVD0 U194 ( .I(Mantissa_Y[7]), .ZN(n189) );
  INVD0 U195 ( .I(Mantissa_Y[12]), .ZN(n97) );
  INVD0 U196 ( .I(Mantissa_Y[17]), .ZN(n101) );
  INR2XD0 U197 ( .A1(Mantissa_Y[20]), .B1(Mantissa_X[20]), .ZN(n140) );
  INVD0 U198 ( .I(Mantissa_X[9]), .ZN(n94) );
  INVD0 U199 ( .I(Mantissa_X[7]), .ZN(n92) );
  INR2XD0 U200 ( .A1(Mantissa_Y[3]), .B1(Mantissa_X[3]), .ZN(n112) );
  INVD0 U201 ( .I(Mantissa_Y[10]), .ZN(n95) );
  XNR2D0 U202 ( .A1(Mantissa_Y[18]), .A2(Mantissa_X[18]), .ZN(n314) );
  INVD0 U203 ( .I(Mantissa_Y[3]), .ZN(n87) );
  INVD0 U204 ( .I(Mantissa_Y[6]), .ZN(n91) );
  INVD0 U205 ( .I(Mantissa_X[6]), .ZN(n171) );
  INVD0 U206 ( .I(Mantissa_X[14]), .ZN(n98) );
  INVD0 U207 ( .I(Mantissa_Y[2]), .ZN(n85) );
  INVD0 U208 ( .I(Mantissa_X[10]), .ZN(n197) );
  XOR2D0 U209 ( .A1(Mantissa_Y[17]), .A2(Mantissa_X[17]), .Z(n310) );
  XNR2D0 U210 ( .A1(Mantissa_Y[16]), .A2(Mantissa_X[16]), .ZN(n306) );
  INVD0 U211 ( .I(Mantissa_X[16]), .ZN(n100) );
  INVD0 U212 ( .I(x_sub_y[4]), .ZN(n5) );
  INVD0 U213 ( .I(n5), .ZN(n6) );
  INVD0 U214 ( .I(x_sub_y[3]), .ZN(n7) );
  INVD0 U215 ( .I(n7), .ZN(n8) );
  INVD0 U216 ( .I(x_sub_y[6]), .ZN(n9) );
  INVD0 U217 ( .I(n9), .ZN(n32) );
  INVD0 U218 ( .I(x_sub_y[5]), .ZN(n33) );
  INVD0 U219 ( .I(n33), .ZN(n34) );
  INVD0 U220 ( .I(x_sub_y[8]), .ZN(n35) );
  INVD0 U221 ( .I(n35), .ZN(n36) );
  INVD0 U222 ( .I(x_sub_y[7]), .ZN(n37) );
  INVD0 U223 ( .I(n37), .ZN(n38) );
  INVD0 U224 ( .I(x_sub_y[10]), .ZN(n39) );
  INVD0 U225 ( .I(n39), .ZN(n40) );
  INVD0 U226 ( .I(x_sub_y[9]), .ZN(n41) );
  INVD0 U227 ( .I(n41), .ZN(n42) );
  INVD0 U228 ( .I(x_sub_y[11]), .ZN(n45) );
  INVD0 U229 ( .I(n45), .ZN(n46) );
  INVD1 U230 ( .I(n49), .ZN(n51) );
  INVD1 U231 ( .I(n78), .ZN(n52) );
  INVD1 U232 ( .I(n52), .ZN(n53) );
  INVD1 U233 ( .I(n52), .ZN(n54) );
  INVD0 U234 ( .I(n273), .ZN(n58) );
  INVD0 U235 ( .I(n273), .ZN(n59) );
  INVD0 U236 ( .I(n273), .ZN(n60) );
  INVD1 U237 ( .I(n232), .ZN(n70) );
  MAOI222D1 U238 ( .A(n71), .B(n160), .C(n168), .ZN(n244) );
  INVD0 U239 ( .I(n272), .ZN(n72) );
  INVD0 U240 ( .I(n272), .ZN(n74) );
  INVD0 U241 ( .I(n274), .ZN(n75) );
  INVD1 U242 ( .I(n274), .ZN(n77) );
  OR2XD1 U243 ( .A1(n223), .A2(Shift), .Z(n233) );
  INVD1 U244 ( .I(n233), .ZN(n78) );
  MAOI222D1 U245 ( .A(Mantissa_Y[10]), .B(n197), .C(n207), .ZN(n264) );
  XOR3D1 U246 ( .A1(A21C[23]), .A2(A21S[24]), .A3(intadd_0_n1), .Z(n224) );
  INVD0 U247 ( .I(Mantissa_X[1]), .ZN(n82) );
  NR2D0 U248 ( .A1(n82), .A2(Mantissa_Y[1]), .ZN(n84) );
  INVD0 U249 ( .I(Mantissa_X[0]), .ZN(n83) );
  CKND2D0 U250 ( .A1(n83), .A2(Mantissa_Y[0]), .ZN(n239) );
  OAI22D0 U251 ( .A1(n84), .A2(n239), .B1(Mantissa_X[1]), .B2(n240), .ZN(n235)
         );
  OAI21D1 U252 ( .A1(n166), .A2(n112), .B(n164), .ZN(n163) );
  OAI22D1 U253 ( .A1(n179), .A2(n177), .B1(Mantissa_X[5]), .B2(n176), .ZN(n175) );
  OAI22D1 U254 ( .A1(n175), .A2(n173), .B1(Mantissa_Y[6]), .B2(n171), .ZN(n192) );
  OAI22D1 U255 ( .A1(n192), .A2(n190), .B1(Mantissa_X[7]), .B2(n189), .ZN(n188) );
  OAI22D1 U256 ( .A1(n205), .A2(n203), .B1(Mantissa_X[9]), .B2(n202), .ZN(n201) );
  OAI22D1 U257 ( .A1(n201), .A2(n199), .B1(Mantissa_Y[10]), .B2(n197), .ZN(
        n218) );
  OAI22D1 U258 ( .A1(n218), .A2(n216), .B1(Mantissa_X[11]), .B2(n215), .ZN(
        n214) );
  AOI21D1 U259 ( .A1(n271), .A2(n115), .B(n269), .ZN(n281) );
  AOI21D1 U260 ( .A1(n281), .A2(n118), .B(n119), .ZN(n284) );
  AOI21D1 U261 ( .A1(n284), .A2(n283), .B(n122), .ZN(n285) );
  AOI21D1 U262 ( .A1(n285), .A2(n124), .B(n125), .ZN(n287) );
  INR2D1 U263 ( .A1(Mantissa_Y[17]), .B1(Mantissa_X[17]), .ZN(n129) );
  AOI21D1 U264 ( .A1(n287), .A2(n128), .B(n129), .ZN(n288) );
  INR2D1 U265 ( .A1(Mantissa_X[18]), .B1(Mantissa_Y[18]), .ZN(n133) );
  AOI21D1 U266 ( .A1(n288), .A2(n132), .B(n133), .ZN(n289) );
  ND2D1 U267 ( .A1(n105), .A2(n137), .ZN(n107) );
  INVD1 U268 ( .I(Mantissa_Y[20]), .ZN(n106) );
  ND2D1 U269 ( .A1(n106), .A2(Mantissa_X[20]), .ZN(n139) );
  OAI21D1 U270 ( .A1(n107), .A2(n140), .B(n139), .ZN(n146) );
  CKXOR2D1 U271 ( .A1(n146), .A2(n141), .Z(x_sub_y[21]) );
  CKXOR2D1 U272 ( .A1(n107), .A2(n322), .Z(x_sub_y[20]) );
  INVD1 U273 ( .I(Mantissa_Y[21]), .ZN(n144) );
  INVD1 U274 ( .I(Mantissa_Y[22]), .ZN(n290) );
  MAOI222D1 U275 ( .A(Mantissa_X[1]), .B(n237), .C(n240), .ZN(n110) );
  MAOI222D1 U276 ( .A(Mantissa_X[5]), .B(n244), .C(n176), .ZN(n181) );
  MAOI222D1 U277 ( .A(Mantissa_X[7]), .B(n251), .C(n189), .ZN(n194) );
  MAOI222D1 U278 ( .A(Mantissa_X[9]), .B(n257), .C(n202), .ZN(n207) );
  MAOI222D1 U279 ( .A(Mantissa_X[11]), .B(n264), .C(n215), .ZN(n220) );
  OAI21D1 U280 ( .A1(n212), .A2(n220), .B(n114), .ZN(n278) );
  OAI21D1 U281 ( .A1(n300), .A2(n121), .B(n120), .ZN(n303) );
  OAI21D1 U282 ( .A1(n303), .A2(n123), .B(n282), .ZN(n307) );
  OAI21D1 U283 ( .A1(n307), .A2(n127), .B(n126), .ZN(n311) );
  OAI21D1 U284 ( .A1(n311), .A2(n131), .B(n130), .ZN(n315) );
  OAI21D1 U285 ( .A1(n315), .A2(n135), .B(n134), .ZN(n319) );
  OAI21D1 U286 ( .A1(n323), .A2(n140), .B(n139), .ZN(n150) );
  OAI22D1 U287 ( .A1(n146), .A2(n145), .B1(Mantissa_X[21]), .B2(n144), .ZN(
        n152) );
  NR2D1 U288 ( .A1(n159), .A2(n149), .ZN(x_sub_y[23]) );
  INVD1 U289 ( .I(x_sub_y[23]), .ZN(n294) );
  ND2D1 U290 ( .A1(n150), .A2(Mantissa_X[21]), .ZN(n154) );
  INVD1 U291 ( .I(n154), .ZN(n151) );
  OAI21D1 U292 ( .A1(n151), .A2(Mantissa_X[22]), .B(n77), .ZN(n158) );
  OAI21D1 U293 ( .A1(Mantissa_Y[21]), .A2(n294), .B(n158), .ZN(n10) );
  CKAN2D0 U294 ( .A1(Mantissa_Y[4]), .A2(n160), .Z(n162) );
  NR2D0 U295 ( .A1(n160), .A2(Mantissa_Y[4]), .ZN(n161) );
  NR2D0 U296 ( .A1(n162), .A2(n161), .ZN(n170) );
  XOR2D0 U297 ( .A1(n163), .A2(n170), .Z(x_sub_y[4]) );
  CKND2D0 U298 ( .A1(n165), .A2(n164), .ZN(n295) );
  XOR2D0 U299 ( .A1(n166), .A2(n295), .Z(x_sub_y[3]) );
  AOI22D0 U300 ( .A1(x_sub_y[4]), .A2(n58), .B1(n72), .B2(n8), .ZN(n169) );
  OAI21D0 U301 ( .A1(n170), .A2(n168), .B(n75), .ZN(n167) );
  AOI32D0 U302 ( .A1(n170), .A2(n169), .A3(n168), .B1(n167), .B2(n169), .ZN(
        n30) );
  NR2D0 U303 ( .A1(n171), .A2(Mantissa_Y[6]), .ZN(n172) );
  NR2D0 U304 ( .A1(n173), .A2(n172), .ZN(n183) );
  INVD0 U305 ( .I(n183), .ZN(n174) );
  XOR2D0 U306 ( .A1(n175), .A2(n174), .Z(x_sub_y[6]) );
  NR2D0 U307 ( .A1(n176), .A2(Mantissa_X[5]), .ZN(n178) );
  NR2D0 U308 ( .A1(n178), .A2(n177), .ZN(n241) );
  XOR2D0 U309 ( .A1(n179), .A2(n241), .Z(x_sub_y[5]) );
  AOI22D0 U310 ( .A1(x_sub_y[6]), .A2(n60), .B1(n73), .B2(x_sub_y[5]), .ZN(
        n182) );
  OAI21D0 U311 ( .A1(n183), .A2(n181), .B(n75), .ZN(n180) );
  NR2D0 U312 ( .A1(n184), .A2(Mantissa_Y[8]), .ZN(n185) );
  NR2D0 U313 ( .A1(n186), .A2(n185), .ZN(n196) );
  INVD0 U314 ( .I(n196), .ZN(n187) );
  XOR2D0 U315 ( .A1(n188), .A2(n187), .Z(x_sub_y[8]) );
  NR2D0 U316 ( .A1(n189), .A2(Mantissa_X[7]), .ZN(n191) );
  NR2D0 U317 ( .A1(n191), .A2(n190), .ZN(n248) );
  XOR2D0 U318 ( .A1(n192), .A2(n248), .Z(x_sub_y[7]) );
  AOI22D0 U319 ( .A1(x_sub_y[8]), .A2(n59), .B1(n72), .B2(x_sub_y[7]), .ZN(
        n195) );
  OAI21D0 U320 ( .A1(n196), .A2(n194), .B(n77), .ZN(n193) );
  AOI32D0 U321 ( .A1(n196), .A2(n195), .A3(n194), .B1(n193), .B2(n195), .ZN(
        n26) );
  NR2D0 U322 ( .A1(n197), .A2(Mantissa_Y[10]), .ZN(n198) );
  NR2D0 U323 ( .A1(n199), .A2(n198), .ZN(n209) );
  INVD0 U324 ( .I(n209), .ZN(n200) );
  XOR2D0 U325 ( .A1(n201), .A2(n200), .Z(x_sub_y[10]) );
  NR2D0 U326 ( .A1(n202), .A2(Mantissa_X[9]), .ZN(n204) );
  NR2D0 U327 ( .A1(n204), .A2(n203), .ZN(n254) );
  XOR2D0 U328 ( .A1(n205), .A2(n254), .Z(x_sub_y[9]) );
  AOI22D0 U329 ( .A1(x_sub_y[10]), .A2(n58), .B1(n74), .B2(n42), .ZN(n208) );
  OAI21D0 U330 ( .A1(n209), .A2(n207), .B(n76), .ZN(n206) );
  AOI32D0 U331 ( .A1(n209), .A2(n208), .A3(n207), .B1(n206), .B2(n208), .ZN(
        n24) );
  INVD0 U332 ( .I(Mantissa_X[12]), .ZN(n210) );
  NR2D0 U333 ( .A1(n210), .A2(Mantissa_Y[12]), .ZN(n211) );
  NR2D0 U334 ( .A1(n212), .A2(n211), .ZN(n222) );
  INVD0 U335 ( .I(n222), .ZN(n213) );
  XOR2D0 U336 ( .A1(n214), .A2(n213), .Z(x_sub_y[12]) );
  NR2D0 U337 ( .A1(n215), .A2(Mantissa_X[11]), .ZN(n217) );
  NR2D0 U338 ( .A1(n217), .A2(n216), .ZN(n261) );
  XOR2D0 U339 ( .A1(n218), .A2(n261), .Z(x_sub_y[11]) );
  AOI22D0 U340 ( .A1(x_sub_y[12]), .A2(n60), .B1(n73), .B2(x_sub_y[11]), .ZN(
        n221) );
  OAI21D0 U341 ( .A1(n222), .A2(n220), .B(n75), .ZN(n219) );
  AOI32D0 U342 ( .A1(n222), .A2(n221), .A3(n220), .B1(n219), .B2(n221), .ZN(
        n22) );
  AO22D0 U343 ( .A1(n54), .A2(intadd_0_SUM_19_), .B1(n226), .B2(
        intadd_0_SUM_20_), .Z(Mantissa_Out[21]) );
  XOR2D0 U344 ( .A1(A21S[1]), .A2(A21C[0]), .Z(n234) );
  XNR3D0 U345 ( .A1(Mantissa_Y[2]), .A2(n236), .A3(n235), .ZN(x_sub_y[2]) );
  INVD0 U346 ( .I(n237), .ZN(n238) );
  CKND2D0 U347 ( .A1(n239), .A2(n238), .ZN(x_sub_y[0]) );
  XOR3D0 U348 ( .A1(Mantissa_X[1]), .A2(n240), .A3(n239), .Z(x_sub_y[1]) );
  CKAN2D0 U349 ( .A1(x_sub_y[1]), .A2(n247), .Z(n341) );
  AOI22D0 U350 ( .A1(n34), .A2(n59), .B1(n74), .B2(x_sub_y[4]), .ZN(n246) );
  INVD0 U351 ( .I(n241), .ZN(n243) );
  INVD0 U352 ( .I(n244), .ZN(n242) );
  OAI221D0 U353 ( .A1(n244), .A2(n243), .B1(n242), .B2(n241), .C(n77), .ZN(
        n245) );
  CKND2D0 U354 ( .A1(n246), .A2(n245), .ZN(n29) );
  CKAN2D0 U355 ( .A1(x_sub_y[2]), .A2(n247), .Z(n334) );
  CKAN2D0 U356 ( .A1(x_sub_y[3]), .A2(n247), .Z(n333) );
  AOI22D0 U357 ( .A1(n38), .A2(n58), .B1(n73), .B2(n32), .ZN(n253) );
  INVD0 U358 ( .I(n248), .ZN(n250) );
  INVD0 U359 ( .I(n251), .ZN(n249) );
  OAI221D0 U360 ( .A1(n251), .A2(n250), .B1(n249), .B2(n248), .C(n76), .ZN(
        n252) );
  CKND2D0 U361 ( .A1(n253), .A2(n252), .ZN(n27) );
  BUFFD0 U362 ( .I(n267), .Z(n260) );
  CKAN2D0 U363 ( .A1(n6), .A2(n260), .Z(n335) );
  CKAN2D0 U364 ( .A1(n34), .A2(n260), .Z(n336) );
  AOI22D0 U365 ( .A1(n42), .A2(n60), .B1(n72), .B2(n36), .ZN(n259) );
  INVD0 U366 ( .I(n254), .ZN(n256) );
  INVD0 U367 ( .I(n257), .ZN(n255) );
  OAI221D0 U368 ( .A1(n257), .A2(n256), .B1(n255), .B2(n254), .C(n75), .ZN(
        n258) );
  CKND2D0 U369 ( .A1(n259), .A2(n258), .ZN(n25) );
  CKAN2D0 U370 ( .A1(n32), .A2(n260), .Z(n337) );
  CKAN2D0 U371 ( .A1(n38), .A2(n260), .Z(n338) );
  AOI22D0 U372 ( .A1(n46), .A2(n59), .B1(n74), .B2(n40), .ZN(n266) );
  INVD0 U373 ( .I(n261), .ZN(n263) );
  INVD0 U374 ( .I(n264), .ZN(n262) );
  OAI221D0 U375 ( .A1(n264), .A2(n263), .B1(n262), .B2(n261), .C(n77), .ZN(
        n265) );
  CKND2D0 U376 ( .A1(n266), .A2(n265), .ZN(n23) );
  CKAN2D0 U377 ( .A1(n36), .A2(n293), .Z(n339) );
  CKAN2D0 U378 ( .A1(n42), .A2(n293), .Z(n340) );
  CKAN2D0 U379 ( .A1(Mantissa_X[13]), .A2(n268), .Z(n270) );
  NR2D0 U380 ( .A1(n270), .A2(n269), .ZN(n275) );
  INVD0 U381 ( .I(n275), .ZN(n277) );
  AOI22D0 U382 ( .A1(x_sub_y[13]), .A2(n58), .B1(n72), .B2(x_sub_y[12]), .ZN(
        n280) );
  INVD0 U383 ( .I(n278), .ZN(n276) );
  OAI221D0 U384 ( .A1(n278), .A2(n277), .B1(n276), .B2(n275), .C(n76), .ZN(
        n279) );
  CKAN2D0 U385 ( .A1(n40), .A2(n293), .Z(n342) );
  BUFFD0 U386 ( .I(n291), .Z(n286) );
  CKAN2D0 U387 ( .A1(x_sub_y[11]), .A2(n286), .Z(n343) );
  XNR2D0 U388 ( .A1(Mantissa_Y[14]), .A2(Mantissa_X[14]), .ZN(n299) );
  CKAN2D0 U389 ( .A1(n44), .A2(n286), .Z(n345) );
  AN2XD1 U390 ( .A1(n4), .A2(n293), .Z(n351) );
  NR2D1 U391 ( .A1(n294), .A2(n3), .ZN(L1_p2_24_) );
  INVD0 U392 ( .I(x_sub_y[2]), .ZN(n298) );
  XNR2D0 U393 ( .A1(n296), .A2(n295), .ZN(n297) );
  OAI222D0 U394 ( .A1(n7), .A2(n65), .B1(n62), .B2(n298), .C1(n55), .C2(n297), 
        .ZN(n31) );
  XNR2D0 U395 ( .A1(n300), .A2(n299), .ZN(n301) );
  INVD0 U396 ( .I(x_sub_y[14]), .ZN(n304) );
  OAI222D0 U397 ( .A1(n301), .A2(n56), .B1(n63), .B2(n47), .C1(n66), .C2(n304), 
        .ZN(n20) );
  XNR2D0 U398 ( .A1(n303), .A2(n302), .ZN(n305) );
  OAI222D0 U399 ( .A1(n305), .A2(n57), .B1(n61), .B2(n304), .C1(n64), .C2(n308), .ZN(n19) );
  OAI222D0 U400 ( .A1(n309), .A2(n55), .B1(n62), .B2(n308), .C1(n65), .C2(n313), .ZN(n18) );
  OAI222D0 U401 ( .A1(n317), .A2(n66), .B1(n63), .B2(n313), .C1(n56), .C2(n312), .ZN(n17) );
  OAI222D0 U402 ( .A1(n317), .A2(n61), .B1(n64), .B2(n321), .C1(n57), .C2(n316), .ZN(n16) );
  OAI222D0 U403 ( .A1(n329), .A2(n65), .B1(n62), .B2(n321), .C1(n55), .C2(n320), .ZN(n15) );
  OAI222D0 U404 ( .A1(n329), .A2(n63), .B1(n66), .B2(n326), .C1(n56), .C2(n324), .ZN(n14) );
  FA1D0 U405 ( .A(A21C[10]), .B(A21S[11]), .CI(intadd_0_n14), .CO(intadd_0_n13), .S(intadd_0_SUM_9_) );
  FA1D0 U406 ( .A(A21C[9]), .B(A21S[10]), .CI(intadd_0_n15), .CO(intadd_0_n14), 
        .S(intadd_0_SUM_8_) );
endmodule


module FP_DIV_WRAPPER_32 ( x, y, out0, mantissa_x, mantissa_y, mantissa_out, 
        shift_0__BAR );
  input [31:0] x;
  input [31:0] y;
  output [31:0] out0;
  output [22:0] mantissa_x;
  output [22:0] mantissa_y;
  input [22:0] mantissa_out;
  input shift_0__BAR;
  wire   intadd_1_A_6_, intadd_1_A_5_, intadd_1_A_4_, intadd_1_A_3_,
         intadd_1_A_2_, intadd_1_A_1_, intadd_1_B_6_, intadd_1_B_5_,
         intadd_1_B_4_, intadd_1_B_3_, intadd_1_B_2_, intadd_1_B_1_,
         intadd_1_n7, intadd_1_n6, intadd_1_n5, intadd_1_n4, intadd_1_n3,
         intadd_1_n2, intadd_1_n1, n1, n2, n3, n4, n5, n6, n7;

  FA1D0 intadd_1_U4 ( .A(intadd_1_A_4_), .B(intadd_1_B_4_), .CI(intadd_1_n4), 
        .CO(intadd_1_n3), .S(out0[27]) );
  FA1D0 intadd_1_U5 ( .A(intadd_1_A_3_), .B(intadd_1_B_3_), .CI(intadd_1_n5), 
        .CO(intadd_1_n4), .S(out0[26]) );
  FA1D0 intadd_1_U6 ( .A(intadd_1_A_2_), .B(intadd_1_B_2_), .CI(intadd_1_n6), 
        .CO(intadd_1_n5), .S(out0[25]) );
  FA1D0 intadd_1_U7 ( .A(intadd_1_A_1_), .B(intadd_1_B_1_), .CI(intadd_1_n7), 
        .CO(intadd_1_n6), .S(out0[24]) );
  FA1D0 intadd_1_U8 ( .A(y[23]), .B(x[23]), .CI(shift_0__BAR), .CO(intadd_1_n7), .S(out0[23]) );
  CKND2D0 U2 ( .A1(n7), .A2(y[29]), .ZN(n6) );
  CKND2D0 U3 ( .A1(n1), .A2(y[24]), .ZN(intadd_1_B_2_) );
  CKND2D0 U4 ( .A1(n2), .A2(y[25]), .ZN(intadd_1_B_3_) );
  CKND2D0 U5 ( .A1(n5), .A2(y[28]), .ZN(intadd_1_B_6_) );
  CKND2D0 U6 ( .A1(n3), .A2(y[26]), .ZN(intadd_1_B_4_) );
  CKND2D0 U7 ( .A1(n4), .A2(y[27]), .ZN(intadd_1_B_5_) );
  BUFFD1 U8 ( .I(x[21]), .Z(mantissa_x[21]) );
  BUFFD1 U9 ( .I(y[11]), .Z(mantissa_y[11]) );
  BUFFD1 U10 ( .I(x[14]), .Z(mantissa_x[14]) );
  BUFFD1 U11 ( .I(y[14]), .Z(mantissa_y[14]) );
  BUFFD1 U12 ( .I(y[8]), .Z(mantissa_y[8]) );
  BUFFD1 U13 ( .I(y[7]), .Z(mantissa_y[7]) );
  BUFFD1 U14 ( .I(y[9]), .Z(mantissa_y[9]) );
  BUFFD1 U15 ( .I(y[6]), .Z(mantissa_y[6]) );
  BUFFD1 U16 ( .I(x[15]), .Z(mantissa_x[15]) );
  CKBD1 U17 ( .I(x[17]), .Z(mantissa_x[17]) );
  BUFFD1 U18 ( .I(y[21]), .Z(mantissa_y[21]) );
  BUFFD0 U19 ( .I(mantissa_out[22]), .Z(out0[22]) );
  BUFFD0 U20 ( .I(y[5]), .Z(mantissa_y[5]) );
  BUFFD0 U21 ( .I(y[4]), .Z(mantissa_y[4]) );
  CKBD1 U22 ( .I(x[18]), .Z(mantissa_x[18]) );
  BUFFD0 U23 ( .I(x[7]), .Z(mantissa_x[7]) );
  CKBD1 U24 ( .I(y[18]), .Z(mantissa_y[18]) );
  BUFFD0 U25 ( .I(y[15]), .Z(mantissa_y[15]) );
  BUFFD0 U26 ( .I(x[3]), .Z(mantissa_x[3]) );
  BUFFD0 U27 ( .I(y[3]), .Z(mantissa_y[3]) );
  BUFFD0 U28 ( .I(x[10]), .Z(mantissa_x[10]) );
  BUFFD0 U29 ( .I(x[11]), .Z(mantissa_x[11]) );
  BUFFD0 U30 ( .I(x[12]), .Z(mantissa_x[12]) );
  BUFFD0 U31 ( .I(x[5]), .Z(mantissa_x[5]) );
  BUFFD0 U32 ( .I(y[13]), .Z(mantissa_y[13]) );
  BUFFD0 U33 ( .I(x[8]), .Z(mantissa_x[8]) );
  BUFFD0 U34 ( .I(y[2]), .Z(mantissa_y[2]) );
  BUFFD0 U35 ( .I(x[6]), .Z(mantissa_x[6]) );
  BUFFD0 U36 ( .I(x[9]), .Z(mantissa_x[9]) );
  BUFFD0 U37 ( .I(x[4]), .Z(mantissa_x[4]) );
  BUFFD0 U38 ( .I(x[2]), .Z(mantissa_x[2]) );
  BUFFD0 U39 ( .I(x[13]), .Z(mantissa_x[13]) );
  CKBD1 U40 ( .I(y[20]), .Z(mantissa_y[20]) );
  BUFFD0 U41 ( .I(y[10]), .Z(mantissa_y[10]) );
  CKBD1 U42 ( .I(y[17]), .Z(mantissa_y[17]) );
  BUFFD0 U43 ( .I(y[12]), .Z(mantissa_y[12]) );
  XNR4D0 U44 ( .A1(x[30]), .A2(y[30]), .A3(n6), .A4(intadd_1_n1), .ZN(out0[30]) );
  BUFFD0 U45 ( .I(mantissa_out[9]), .Z(out0[9]) );
  BUFFD0 U46 ( .I(mantissa_out[4]), .Z(out0[4]) );
  BUFFD0 U47 ( .I(mantissa_out[1]), .Z(out0[1]) );
  BUFFD0 U48 ( .I(mantissa_out[2]), .Z(out0[2]) );
  BUFFD0 U49 ( .I(mantissa_out[16]), .Z(out0[16]) );
  BUFFD0 U50 ( .I(mantissa_out[13]), .Z(out0[13]) );
  BUFFD0 U51 ( .I(mantissa_out[14]), .Z(out0[14]) );
  BUFFD0 U52 ( .I(mantissa_out[11]), .Z(out0[11]) );
  BUFFD0 U53 ( .I(mantissa_out[6]), .Z(out0[6]) );
  BUFFD0 U54 ( .I(mantissa_out[0]), .Z(out0[0]) );
  BUFFD0 U55 ( .I(mantissa_out[20]), .Z(out0[20]) );
  BUFFD0 U56 ( .I(mantissa_out[21]), .Z(out0[21]) );
  BUFFD0 U57 ( .I(mantissa_out[19]), .Z(out0[19]) );
  BUFFD0 U58 ( .I(mantissa_out[15]), .Z(out0[15]) );
  BUFFD0 U59 ( .I(mantissa_out[5]), .Z(out0[5]) );
  BUFFD0 U60 ( .I(mantissa_out[3]), .Z(out0[3]) );
  BUFFD0 U61 ( .I(mantissa_out[17]), .Z(out0[17]) );
  BUFFD0 U62 ( .I(mantissa_out[18]), .Z(out0[18]) );
  BUFFD0 U63 ( .I(mantissa_out[12]), .Z(out0[12]) );
  BUFFD0 U64 ( .I(mantissa_out[8]), .Z(out0[8]) );
  BUFFD0 U65 ( .I(mantissa_out[10]), .Z(out0[10]) );
  BUFFD0 U66 ( .I(mantissa_out[7]), .Z(out0[7]) );
  OAI21D0 U67 ( .A1(y[26]), .A2(n3), .B(intadd_1_B_4_), .ZN(intadd_1_A_3_) );
  OAI21D0 U68 ( .A1(y[28]), .A2(n5), .B(intadd_1_B_6_), .ZN(intadd_1_A_5_) );
  OAI21D0 U69 ( .A1(y[29]), .A2(n7), .B(n6), .ZN(intadd_1_A_6_) );
  OAI21D0 U70 ( .A1(y[25]), .A2(n2), .B(intadd_1_B_3_), .ZN(intadd_1_A_2_) );
  OAI21D0 U71 ( .A1(y[27]), .A2(n4), .B(intadd_1_B_5_), .ZN(intadd_1_A_4_) );
  OAI21D0 U72 ( .A1(y[24]), .A2(n1), .B(intadd_1_B_2_), .ZN(intadd_1_B_1_) );
  BUFFD1 U73 ( .I(y[19]), .Z(mantissa_y[19]) );
  INVD0 U74 ( .I(x[29]), .ZN(n7) );
  INVD0 U75 ( .I(x[28]), .ZN(n5) );
  BUFFD1 U76 ( .I(x[19]), .Z(mantissa_x[19]) );
  BUFFD1 U77 ( .I(x[22]), .Z(mantissa_x[22]) );
  INVD0 U78 ( .I(x[24]), .ZN(n1) );
  INVD0 U79 ( .I(x[27]), .ZN(n4) );
  BUFFD1 U80 ( .I(x[16]), .Z(mantissa_x[16]) );
  BUFFD0 U81 ( .I(y[1]), .Z(mantissa_y[1]) );
  INVD0 U82 ( .I(x[26]), .ZN(n3) );
  BUFFD1 U83 ( .I(y[16]), .Z(mantissa_y[16]) );
  INVD0 U84 ( .I(x[25]), .ZN(n2) );
  INVD0 U85 ( .I(y[23]), .ZN(intadd_1_A_1_) );
  BUFFD0 U86 ( .I(y[0]), .Z(mantissa_y[0]) );
  BUFFD0 U87 ( .I(x[0]), .Z(mantissa_x[0]) );
  CKBD1 U88 ( .I(y[22]), .Z(mantissa_y[22]) );
  CKBD1 U89 ( .I(x[20]), .Z(mantissa_x[20]) );
  BUFFD1 U90 ( .I(x[1]), .Z(mantissa_x[1]) );
  XOR2D0 U91 ( .A1(y[31]), .A2(x[31]), .Z(out0[31]) );
  FA1D0 U92 ( .A(intadd_1_A_5_), .B(intadd_1_B_5_), .CI(intadd_1_n3), .CO(
        intadd_1_n2), .S(out0[28]) );
  FA1D0 U93 ( .A(intadd_1_A_6_), .B(intadd_1_B_6_), .CI(intadd_1_n2), .CO(
        intadd_1_n1), .S(out0[29]) );
endmodule


module pace_fp32_l2 ( x, y, out0 );
  input [31:0] x;
  input [31:0] y;
  output [31:0] out0;
  wire   shift, n2, n3;
  wire   [22:0] mantissa_x;
  wire   [22:0] mantissa_y;
  wire   [22:0] mantissa_out;

  Mantissa_Div_L2_MANTISSA_WIDTH23 mantissa_div ( .Mantissa_X(mantissa_x), 
        .Mantissa_Y({mantissa_y[22:5], n2, mantissa_y[3:0]}), .Mantissa_Out(
        mantissa_out), .Shift(shift) );
  FP_DIV_WRAPPER_32 fp_wrapper ( .x(x), .y({y[31:23], n3, y[21:0]}), .out0(
        out0), .mantissa_x(mantissa_x), .mantissa_y(mantissa_y), 
        .mantissa_out(mantissa_out), .shift_0__BAR(shift) );
  BUFFD0 U2 ( .I(mantissa_y[4]), .Z(n2) );
  CKBD1 U3 ( .I(y[22]), .Z(n3) );
endmodule

