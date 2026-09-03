/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Thu Aug 20 03:00:46 2026
/////////////////////////////////////////////////////////////


module CSA3_2_Array_WIDTH25_1 ( In_1, In_2, In_3, S, C );
  input [24:0] In_1;
  input [24:0] In_2;
  input [24:0] In_3;
  output [24:0] S;
  output [24:0] C;
  wire   n26;

  CKND2D0 U1 ( .A1(In_3[24]), .A2(In_2[24]), .ZN(n26) );
  INVD0 U2 ( .I(n26), .ZN(C[23]) );
  CKAN2D0 U3 ( .A1(In_3[0]), .A2(In_2[0]), .Z(C[0]) );
  CKAN2D0 U4 ( .A1(In_3[1]), .A2(In_2[1]), .Z(C[1]) );
  CKAN2D0 U5 ( .A1(In_3[2]), .A2(In_2[2]), .Z(C[2]) );
  CKAN2D0 U6 ( .A1(In_3[3]), .A2(In_2[3]), .Z(C[3]) );
  CKAN2D0 U7 ( .A1(In_3[4]), .A2(In_2[4]), .Z(C[4]) );
  CKAN2D0 U8 ( .A1(In_3[5]), .A2(In_2[5]), .Z(C[5]) );
  CKAN2D0 U9 ( .A1(In_3[6]), .A2(In_2[6]), .Z(C[6]) );
  CKAN2D0 U10 ( .A1(In_3[7]), .A2(In_2[7]), .Z(C[7]) );
  CKAN2D0 U11 ( .A1(In_3[8]), .A2(In_2[8]), .Z(C[8]) );
  CKAN2D0 U12 ( .A1(In_3[9]), .A2(In_2[9]), .Z(C[9]) );
  CKAN2D0 U13 ( .A1(In_3[10]), .A2(In_2[10]), .Z(C[10]) );
  CKAN2D0 U14 ( .A1(In_3[11]), .A2(In_2[11]), .Z(C[11]) );
  CKAN2D0 U15 ( .A1(In_3[12]), .A2(In_2[12]), .Z(C[12]) );
  CKAN2D0 U16 ( .A1(In_3[13]), .A2(In_2[13]), .Z(C[13]) );
  CKAN2D0 U17 ( .A1(In_3[14]), .A2(In_2[14]), .Z(C[14]) );
  CKAN2D0 U18 ( .A1(In_3[15]), .A2(In_2[15]), .Z(C[15]) );
  CKAN2D0 U19 ( .A1(In_3[16]), .A2(In_2[16]), .Z(C[16]) );
  CKAN2D0 U20 ( .A1(In_3[17]), .A2(In_2[17]), .Z(C[17]) );
  CKAN2D0 U21 ( .A1(In_3[18]), .A2(In_2[18]), .Z(C[18]) );
  CKAN2D0 U22 ( .A1(In_3[19]), .A2(In_2[19]), .Z(C[19]) );
  CKAN2D0 U23 ( .A1(In_3[20]), .A2(In_2[20]), .Z(C[20]) );
  OAI21D0 U24 ( .A1(In_3[24]), .A2(In_2[24]), .B(n26), .ZN(S[24]) );
  INVD0 U25 ( .I(S[24]), .ZN(S[23]) );
  CKAN2D0 U26 ( .A1(In_3[24]), .A2(In_2[22]), .Z(C[22]) );
  CKAN2D0 U27 ( .A1(In_3[21]), .A2(In_2[21]), .Z(C[21]) );
  IAO21D0 U28 ( .A1(In_3[0]), .A2(In_2[0]), .B(C[0]), .ZN(S[0]) );
  IAO21D0 U29 ( .A1(In_3[1]), .A2(In_2[1]), .B(C[1]), .ZN(S[1]) );
  IAO21D0 U30 ( .A1(In_3[2]), .A2(In_2[2]), .B(C[2]), .ZN(S[2]) );
  IAO21D0 U31 ( .A1(In_3[3]), .A2(In_2[3]), .B(C[3]), .ZN(S[3]) );
  IAO21D0 U32 ( .A1(In_3[4]), .A2(In_2[4]), .B(C[4]), .ZN(S[4]) );
  IAO21D0 U33 ( .A1(In_3[5]), .A2(In_2[5]), .B(C[5]), .ZN(S[5]) );
  IAO21D0 U34 ( .A1(In_3[6]), .A2(In_2[6]), .B(C[6]), .ZN(S[6]) );
  IAO21D0 U35 ( .A1(In_3[7]), .A2(In_2[7]), .B(C[7]), .ZN(S[7]) );
  IAO21D0 U36 ( .A1(In_3[8]), .A2(In_2[8]), .B(C[8]), .ZN(S[8]) );
  IAO21D0 U37 ( .A1(In_3[9]), .A2(In_2[9]), .B(C[9]), .ZN(S[9]) );
  IAO21D0 U38 ( .A1(In_3[10]), .A2(In_2[10]), .B(C[10]), .ZN(S[10]) );
  IAO21D0 U39 ( .A1(In_3[11]), .A2(In_2[11]), .B(C[11]), .ZN(S[11]) );
  IAO21D0 U40 ( .A1(In_3[12]), .A2(In_2[12]), .B(C[12]), .ZN(S[12]) );
  IAO21D0 U41 ( .A1(In_3[13]), .A2(In_2[13]), .B(C[13]), .ZN(S[13]) );
  IAO21D0 U42 ( .A1(In_3[14]), .A2(In_2[14]), .B(C[14]), .ZN(S[14]) );
  IAO21D0 U43 ( .A1(In_3[15]), .A2(In_2[15]), .B(C[15]), .ZN(S[15]) );
  IAO21D0 U44 ( .A1(In_3[16]), .A2(In_2[16]), .B(C[16]), .ZN(S[16]) );
  IAO21D0 U45 ( .A1(In_3[17]), .A2(In_2[17]), .B(C[17]), .ZN(S[17]) );
  IAO21D0 U46 ( .A1(In_3[18]), .A2(In_2[18]), .B(C[18]), .ZN(S[18]) );
  IAO21D0 U47 ( .A1(In_3[19]), .A2(In_2[19]), .B(C[19]), .ZN(S[19]) );
  IAO21D0 U48 ( .A1(In_3[20]), .A2(In_2[20]), .B(C[20]), .ZN(S[20]) );
  IAO21D0 U49 ( .A1(In_3[21]), .A2(In_2[21]), .B(C[21]), .ZN(S[21]) );
  IAO21D0 U50 ( .A1(In_3[24]), .A2(In_2[22]), .B(C[22]), .ZN(S[22]) );
endmodule


module CSA3_2_Array_WIDTH25_0 ( In_1, In_2, In_3, S, C );
  input [24:0] In_1;
  input [24:0] In_2;
  input [24:0] In_3;
  output [24:0] S;
  output [24:0] C;


  CKAN2D0 U1 ( .A1(In_3[0]), .A2(In_1[0]), .Z(C[0]) );
  IAO21D0 U2 ( .A1(In_3[0]), .A2(In_1[0]), .B(C[0]), .ZN(S[0]) );
  XOR3D0 U3 ( .A1(In_3[24]), .A2(In_1[24]), .A3(In_2[24]), .Z(S[24]) );
  FA1D0 U4 ( .A(In_2[23]), .B(In_1[23]), .CI(In_3[24]), .CO(C[23]), .S(S[23])
         );
  FA1D0 U5 ( .A(In_2[22]), .B(In_1[22]), .CI(In_3[24]), .CO(C[22]), .S(S[22])
         );
  FA1D0 U6 ( .A(In_2[21]), .B(In_1[21]), .CI(In_3[24]), .CO(C[21]), .S(S[21])
         );
  FA1D0 U7 ( .A(In_2[20]), .B(In_1[20]), .CI(In_3[20]), .CO(C[20]), .S(S[20])
         );
  FA1D0 U8 ( .A(In_2[19]), .B(In_1[19]), .CI(In_3[19]), .CO(C[19]), .S(S[19])
         );
  FA1D0 U9 ( .A(In_2[18]), .B(In_1[18]), .CI(In_3[18]), .CO(C[18]), .S(S[18])
         );
  FA1D0 U10 ( .A(In_2[17]), .B(In_1[17]), .CI(In_3[17]), .CO(C[17]), .S(S[17])
         );
  FA1D0 U11 ( .A(In_2[16]), .B(In_1[16]), .CI(In_3[16]), .CO(C[16]), .S(S[16])
         );
  FA1D0 U12 ( .A(In_2[15]), .B(In_1[15]), .CI(In_3[15]), .CO(C[15]), .S(S[15])
         );
  FA1D0 U13 ( .A(In_2[14]), .B(In_1[14]), .CI(In_3[14]), .CO(C[14]), .S(S[14])
         );
  FA1D0 U14 ( .A(In_2[13]), .B(In_1[13]), .CI(In_3[13]), .CO(C[13]), .S(S[13])
         );
  FA1D0 U15 ( .A(In_2[12]), .B(In_1[12]), .CI(In_3[12]), .CO(C[12]), .S(S[12])
         );
  FA1D0 U16 ( .A(In_2[11]), .B(In_1[11]), .CI(In_3[11]), .CO(C[11]), .S(S[11])
         );
  FA1D0 U17 ( .A(In_2[10]), .B(In_1[10]), .CI(In_3[10]), .CO(C[10]), .S(S[10])
         );
  FA1D0 U18 ( .A(In_2[9]), .B(In_1[9]), .CI(In_3[9]), .CO(C[9]), .S(S[9]) );
  FA1D0 U19 ( .A(In_2[8]), .B(In_1[8]), .CI(In_3[8]), .CO(C[8]), .S(S[8]) );
  FA1D0 U20 ( .A(In_2[7]), .B(In_1[7]), .CI(In_3[7]), .CO(C[7]), .S(S[7]) );
  FA1D0 U21 ( .A(In_2[6]), .B(In_1[6]), .CI(In_3[6]), .CO(C[6]), .S(S[6]) );
  FA1D0 U22 ( .A(In_2[5]), .B(In_1[5]), .CI(In_3[5]), .CO(C[5]), .S(S[5]) );
  FA1D0 U23 ( .A(In_2[4]), .B(In_1[4]), .CI(In_3[4]), .CO(C[4]), .S(S[4]) );
  FA1D0 U24 ( .A(In_2[3]), .B(In_1[3]), .CI(In_3[3]), .CO(C[3]), .S(S[3]) );
  FA1D0 U25 ( .A(In_2[2]), .B(In_1[2]), .CI(In_3[2]), .CO(C[2]), .S(S[2]) );
  FA1D0 U26 ( .A(In_2[1]), .B(In_1[1]), .CI(In_3[1]), .CO(C[1]), .S(S[1]) );
endmodule


module Mantissa_Div_L2_MANTISSA_WIDTH23 ( Mantissa_X, Mantissa_Y, Mantissa_Out, 
        Shift );
  input [22:0] Mantissa_X;
  input [22:0] Mantissa_Y;
  output [22:0] Mantissa_Out;
  output Shift;
  wire   Res_0_, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, intadd_0_CI,
         intadd_0_SUM_21_, intadd_0_SUM_20_, intadd_0_SUM_19_,
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
         n331, n332, n333;
  wire   [23:0] x_sub_y;
  wire   [24:0] L1_p2;
  wire   [24:0] A11S;
  wire   [23:0] A11C;
  wire   [24:1] A21S;
  wire   [23:0] A21C;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1;

  CSA3_2_Array_WIDTH25_1 Stage_1_1 ( .In_1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .In_2({x_sub_y[23], 1'b0, 
        n71, n69, n67, n65, x_sub_y[18], n61, n59, n57, n55, n53, n51, n49, 
        n47, x_sub_y[9], n43, n41, n39, n37, n35, n33, x_sub_y[2:0]}), .In_3({
        L1_p2[24], 1'b0, 1'b0, L1_p2[21:0]}), .S(A11S), .C({
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
  FA1D0 intadd_0_U15 ( .A(A21C[9]), .B(A21S[10]), .CI(intadd_0_n15), .CO(
        intadd_0_n14), .S(intadd_0_SUM_8_) );
  FA1D0 intadd_0_U14 ( .A(A21C[10]), .B(A21S[11]), .CI(intadd_0_n14), .CO(
        intadd_0_n13), .S(intadd_0_SUM_9_) );
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
  FA1D0 intadd_0_U3 ( .A(A21C[21]), .B(A21S[22]), .CI(intadd_0_n3), .CO(
        intadd_0_n2), .S(intadd_0_SUM_20_) );
  FA1D0 intadd_0_U2 ( .A(A21C[22]), .B(A21S[23]), .CI(intadd_0_n2), .CO(
        intadd_0_n1), .S(intadd_0_SUM_21_) );
  MUX2D0 U4 ( .I0(n263), .I1(n262), .S(n268), .Z(n1) );
  INVD0 U5 ( .I(n87), .ZN(n3) );
  INVD0 U6 ( .I(n309), .ZN(n4) );
  INVD0 U7 ( .I(Mantissa_Y[22]), .ZN(n5) );
  INVD0 U8 ( .I(n5), .ZN(n6) );
  INVD0 U9 ( .I(n5), .ZN(n7) );
  INVD0 U10 ( .I(n5), .ZN(n8) );
  INVD0 U11 ( .I(n5), .ZN(n9) );
  INVD0 U12 ( .I(x_sub_y[3]), .ZN(n32) );
  INVD0 U13 ( .I(n32), .ZN(n33) );
  INVD0 U14 ( .I(x_sub_y[4]), .ZN(n34) );
  INVD0 U15 ( .I(n34), .ZN(n35) );
  INVD0 U16 ( .I(x_sub_y[5]), .ZN(n36) );
  INVD0 U17 ( .I(n36), .ZN(n37) );
  INVD0 U18 ( .I(x_sub_y[6]), .ZN(n38) );
  INVD0 U19 ( .I(n38), .ZN(n39) );
  INVD0 U20 ( .I(x_sub_y[7]), .ZN(n40) );
  INVD0 U21 ( .I(n40), .ZN(n41) );
  INVD0 U22 ( .I(x_sub_y[8]), .ZN(n42) );
  INVD0 U23 ( .I(n42), .ZN(n43) );
  INVD0 U24 ( .I(x_sub_y[9]), .ZN(n44) );
  INVD0 U25 ( .I(n44), .ZN(n45) );
  INVD0 U26 ( .I(x_sub_y[10]), .ZN(n46) );
  INVD0 U27 ( .I(n46), .ZN(n47) );
  INVD0 U28 ( .I(x_sub_y[11]), .ZN(n48) );
  INVD0 U29 ( .I(n48), .ZN(n49) );
  INVD0 U30 ( .I(x_sub_y[12]), .ZN(n50) );
  INVD0 U31 ( .I(n50), .ZN(n51) );
  INVD0 U32 ( .I(x_sub_y[13]), .ZN(n52) );
  INVD0 U33 ( .I(n52), .ZN(n53) );
  INVD0 U34 ( .I(x_sub_y[14]), .ZN(n54) );
  INVD0 U35 ( .I(n54), .ZN(n55) );
  INVD0 U36 ( .I(x_sub_y[15]), .ZN(n56) );
  INVD0 U37 ( .I(n56), .ZN(n57) );
  INVD0 U38 ( .I(n1), .ZN(n58) );
  INVD0 U39 ( .I(n1), .ZN(n59) );
  INVD0 U40 ( .I(x_sub_y[17]), .ZN(n60) );
  INVD0 U41 ( .I(n60), .ZN(n61) );
  INVD0 U42 ( .I(x_sub_y[18]), .ZN(n62) );
  INVD0 U43 ( .I(n62), .ZN(n63) );
  INVD0 U44 ( .I(x_sub_y[19]), .ZN(n64) );
  INVD0 U45 ( .I(n64), .ZN(n65) );
  INVD0 U46 ( .I(x_sub_y[20]), .ZN(n66) );
  INVD0 U47 ( .I(n66), .ZN(n67) );
  INVD0 U48 ( .I(x_sub_y[21]), .ZN(n68) );
  INVD0 U49 ( .I(n68), .ZN(n69) );
  INVD0 U50 ( .I(x_sub_y[22]), .ZN(n70) );
  INVD0 U51 ( .I(n70), .ZN(n71) );
  INVD0 U52 ( .I(n93), .ZN(n72) );
  INVD0 U53 ( .I(n72), .ZN(n73) );
  INVD0 U54 ( .I(n95), .ZN(n74) );
  INVD0 U55 ( .I(n74), .ZN(n75) );
  INVD0 U56 ( .I(n74), .ZN(n76) );
  INVD0 U57 ( .I(n98), .ZN(n77) );
  INVD0 U58 ( .I(n77), .ZN(n78) );
  INVD0 U59 ( .I(n77), .ZN(n79) );
  INVD0 U60 ( .I(n102), .ZN(n80) );
  INVD0 U61 ( .I(n80), .ZN(n81) );
  INVD0 U62 ( .I(n80), .ZN(n82) );
  INVD0 U63 ( .I(n119), .ZN(n83) );
  INVD0 U64 ( .I(n83), .ZN(n84) );
  INVD0 U65 ( .I(n6), .ZN(n85) );
  INVD0 U66 ( .I(Mantissa_Y[22]), .ZN(n86) );
  INVD0 U67 ( .I(Mantissa_Y[22]), .ZN(n87) );
  INVD0 U68 ( .I(Mantissa_Y[22]), .ZN(n88) );
  INVD0 U69 ( .I(n120), .ZN(n89) );
  INVD0 U70 ( .I(n89), .ZN(n90) );
  INVD0 U71 ( .I(n89), .ZN(n91) );
  INVD0 U72 ( .I(n89), .ZN(n92) );
  INVD0 U73 ( .I(n89), .ZN(n93) );
  INVD0 U74 ( .I(n327), .ZN(n94) );
  INVD0 U75 ( .I(n94), .ZN(n95) );
  INVD0 U76 ( .I(n94), .ZN(n96) );
  INVD0 U77 ( .I(n94), .ZN(n97) );
  OR2D0 U78 ( .A1(n309), .A2(n8), .Z(n330) );
  INVD0 U79 ( .I(n330), .ZN(n98) );
  INVD0 U80 ( .I(n330), .ZN(n99) );
  INVD0 U81 ( .I(n330), .ZN(n100) );
  INVD0 U82 ( .I(n330), .ZN(n101) );
  OR2D0 U83 ( .A1(n85), .A2(Mantissa_Y[21]), .Z(n328) );
  INVD0 U84 ( .I(n328), .ZN(n102) );
  INVD0 U85 ( .I(n328), .ZN(n103) );
  INVD0 U86 ( .I(n328), .ZN(n104) );
  INVD0 U87 ( .I(n328), .ZN(n105) );
  INVD0 U88 ( .I(n119), .ZN(n106) );
  INVD0 U89 ( .I(n106), .ZN(n107) );
  INVD0 U90 ( .I(n106), .ZN(n108) );
  INVD0 U91 ( .I(n106), .ZN(n109) );
  INVD0 U92 ( .I(n106), .ZN(n110) );
  XOR3D0 U93 ( .A1(intadd_0_n1), .A2(A21C[23]), .A3(A21S[24]), .Z(n111) );
  BUFFD0 U94 ( .I(n111), .Z(n118) );
  BUFFD0 U95 ( .I(n118), .Z(Shift) );
  INVD0 U96 ( .I(Mantissa_Y[21]), .ZN(n309) );
  INVD0 U97 ( .I(Mantissa_Y[19]), .ZN(n304) );
  INVD0 U98 ( .I(Mantissa_Y[17]), .ZN(n284) );
  INVD0 U99 ( .I(Mantissa_Y[15]), .ZN(n264) );
  INVD0 U100 ( .I(Mantissa_Y[13]), .ZN(n244) );
  INVD0 U101 ( .I(Mantissa_Y[11]), .ZN(n224) );
  INVD0 U102 ( .I(Mantissa_Y[9]), .ZN(n204) );
  INVD0 U103 ( .I(Mantissa_Y[7]), .ZN(n184) );
  INVD0 U104 ( .I(Mantissa_Y[5]), .ZN(n164) );
  INVD0 U105 ( .I(Mantissa_Y[3]), .ZN(n139) );
  NR2D0 U106 ( .A1(n139), .A2(Mantissa_X[3]), .ZN(n123) );
  INVD0 U107 ( .I(Mantissa_X[2]), .ZN(n128) );
  INVD0 U108 ( .I(Mantissa_X[1]), .ZN(n146) );
  INR2D0 U109 ( .A1(Mantissa_Y[0]), .B1(Mantissa_X[0]), .ZN(n145) );
  INR2D0 U110 ( .A1(Mantissa_X[3]), .B1(Mantissa_Y[3]), .ZN(n122) );
  IAO21D0 U111 ( .A1(n123), .A2(n125), .B(n122), .ZN(n138) );
  INVD0 U112 ( .I(Mantissa_X[4]), .ZN(n152) );
  MAOI222D0 U113 ( .A(Mantissa_Y[4]), .B(n138), .C(n152), .ZN(n149) );
  MAOI222D0 U114 ( .A(Mantissa_X[5]), .B(n164), .C(n149), .ZN(n163) );
  INVD0 U115 ( .I(Mantissa_X[6]), .ZN(n174) );
  MAOI222D0 U116 ( .A(Mantissa_Y[6]), .B(n163), .C(n174), .ZN(n171) );
  MAOI222D0 U117 ( .A(Mantissa_X[7]), .B(n184), .C(n171), .ZN(n183) );
  INVD0 U118 ( .I(Mantissa_X[8]), .ZN(n194) );
  MAOI222D0 U119 ( .A(Mantissa_Y[8]), .B(n183), .C(n194), .ZN(n191) );
  MAOI222D0 U120 ( .A(Mantissa_X[9]), .B(n204), .C(n191), .ZN(n203) );
  INVD0 U121 ( .I(Mantissa_X[10]), .ZN(n214) );
  MAOI222D0 U122 ( .A(Mantissa_Y[10]), .B(n203), .C(n214), .ZN(n211) );
  MAOI222D0 U123 ( .A(Mantissa_X[11]), .B(n224), .C(n211), .ZN(n223) );
  INVD0 U124 ( .I(Mantissa_X[12]), .ZN(n234) );
  MAOI222D0 U125 ( .A(Mantissa_Y[12]), .B(n223), .C(n234), .ZN(n231) );
  MAOI222D0 U126 ( .A(Mantissa_X[13]), .B(n244), .C(n231), .ZN(n243) );
  INVD0 U127 ( .I(Mantissa_X[14]), .ZN(n254) );
  MAOI222D0 U128 ( .A(Mantissa_Y[14]), .B(n243), .C(n254), .ZN(n251) );
  MAOI222D0 U129 ( .A(Mantissa_X[15]), .B(n264), .C(n251), .ZN(n263) );
  INVD0 U130 ( .I(Mantissa_X[16]), .ZN(n274) );
  MAOI222D0 U131 ( .A(Mantissa_Y[16]), .B(n263), .C(n274), .ZN(n271) );
  MAOI222D0 U132 ( .A(Mantissa_X[17]), .B(n284), .C(n271), .ZN(n283) );
  INVD0 U133 ( .I(Mantissa_X[18]), .ZN(n294) );
  MAOI222D0 U134 ( .A(Mantissa_Y[18]), .B(n283), .C(n294), .ZN(n291) );
  MAOI222D0 U135 ( .A(Mantissa_X[19]), .B(n304), .C(n291), .ZN(n303) );
  INVD0 U136 ( .I(Mantissa_X[20]), .ZN(n313) );
  MAOI222D0 U137 ( .A(Mantissa_Y[20]), .B(n303), .C(n313), .ZN(n310) );
  MAOI222D0 U138 ( .A(Mantissa_X[21]), .B(n309), .C(n310), .ZN(n319) );
  MUX2ND0 U139 ( .I0(n7), .I1(n86), .S(Mantissa_X[22]), .ZN(n325) );
  XNR2D0 U140 ( .A1(n319), .A2(n325), .ZN(x_sub_y[22]) );
  INR2D0 U141 ( .A1(intadd_0_SUM_21_), .B1(Shift), .ZN(n119) );
  AO22D0 U142 ( .A1(Shift), .A2(intadd_0_SUM_20_), .B1(n84), .B2(
        intadd_0_SUM_19_), .Z(Mantissa_Out[21]) );
  OA21D0 U143 ( .A1(Shift), .A2(intadd_0_SUM_20_), .B(intadd_0_SUM_21_), .Z(
        Mantissa_Out[22]) );
  CKAN2D0 U144 ( .A1(A21S[1]), .A2(A21C[0]), .Z(intadd_0_CI) );
  IAO21D0 U145 ( .A1(A21S[1]), .A2(A21C[0]), .B(intadd_0_CI), .ZN(n112) );
  BUFFD0 U146 ( .I(n111), .Z(n115) );
  BUFFD0 U147 ( .I(n115), .Z(n113) );
  NR2D0 U148 ( .A1(n113), .A2(intadd_0_SUM_21_), .ZN(n120) );
  AO222D0 U149 ( .A1(n118), .A2(intadd_0_SUM_0_), .B1(n112), .B2(n108), .C1(
        n73), .C2(intadd_0_SUM_1_), .Z(Mantissa_Out[1]) );
  AO222D0 U150 ( .A1(n113), .A2(n112), .B1(Res_0_), .B2(n107), .C1(n90), .C2(
        intadd_0_SUM_0_), .Z(Mantissa_Out[0]) );
  AO222D0 U151 ( .A1(n118), .A2(intadd_0_SUM_1_), .B1(n92), .B2(
        intadd_0_SUM_2_), .C1(n110), .C2(intadd_0_SUM_0_), .Z(Mantissa_Out[2])
         );
  AO222D0 U152 ( .A1(n113), .A2(intadd_0_SUM_18_), .B1(n90), .B2(
        intadd_0_SUM_19_), .C1(n119), .C2(intadd_0_SUM_17_), .Z(
        Mantissa_Out[19]) );
  AO222D0 U153 ( .A1(n113), .A2(intadd_0_SUM_19_), .B1(n91), .B2(
        intadd_0_SUM_20_), .C1(n84), .C2(intadd_0_SUM_18_), .Z(
        Mantissa_Out[20]) );
  BUFFD0 U154 ( .I(n115), .Z(n114) );
  AO222D0 U155 ( .A1(n114), .A2(intadd_0_SUM_17_), .B1(n90), .B2(
        intadd_0_SUM_18_), .C1(n108), .C2(intadd_0_SUM_16_), .Z(
        Mantissa_Out[18]) );
  AO222D0 U156 ( .A1(n114), .A2(intadd_0_SUM_16_), .B1(n73), .B2(
        intadd_0_SUM_17_), .C1(n109), .C2(intadd_0_SUM_15_), .Z(
        Mantissa_Out[17]) );
  BUFFD0 U157 ( .I(n115), .Z(n116) );
  AO222D0 U158 ( .A1(n116), .A2(intadd_0_SUM_15_), .B1(n120), .B2(
        intadd_0_SUM_16_), .C1(n108), .C2(intadd_0_SUM_14_), .Z(
        Mantissa_Out[16]) );
  AO222D0 U159 ( .A1(n114), .A2(intadd_0_SUM_14_), .B1(n90), .B2(
        intadd_0_SUM_15_), .C1(n107), .C2(intadd_0_SUM_13_), .Z(
        Mantissa_Out[15]) );
  AO222D0 U160 ( .A1(n114), .A2(intadd_0_SUM_13_), .B1(n93), .B2(
        intadd_0_SUM_14_), .C1(n84), .C2(intadd_0_SUM_12_), .Z(
        Mantissa_Out[14]) );
  BUFFD0 U161 ( .I(n115), .Z(n117) );
  AO222D0 U162 ( .A1(n117), .A2(intadd_0_SUM_7_), .B1(n93), .B2(
        intadd_0_SUM_8_), .C1(n107), .C2(intadd_0_SUM_6_), .Z(Mantissa_Out[8])
         );
  AO222D0 U163 ( .A1(n116), .A2(intadd_0_SUM_12_), .B1(n73), .B2(
        intadd_0_SUM_13_), .C1(n107), .C2(intadd_0_SUM_11_), .Z(
        Mantissa_Out[13]) );
  AO222D0 U164 ( .A1(n116), .A2(intadd_0_SUM_11_), .B1(n93), .B2(
        intadd_0_SUM_12_), .C1(n110), .C2(intadd_0_SUM_10_), .Z(
        Mantissa_Out[12]) );
  AO222D0 U165 ( .A1(n116), .A2(intadd_0_SUM_10_), .B1(n92), .B2(
        intadd_0_SUM_11_), .C1(n84), .C2(intadd_0_SUM_9_), .Z(Mantissa_Out[11]) );
  AO222D0 U166 ( .A1(n117), .A2(intadd_0_SUM_9_), .B1(n92), .B2(
        intadd_0_SUM_10_), .C1(n110), .C2(intadd_0_SUM_8_), .Z(
        Mantissa_Out[10]) );
  AO222D0 U167 ( .A1(n117), .A2(intadd_0_SUM_8_), .B1(n120), .B2(
        intadd_0_SUM_9_), .C1(n110), .C2(intadd_0_SUM_7_), .Z(Mantissa_Out[9])
         );
  AO222D0 U168 ( .A1(n117), .A2(intadd_0_SUM_6_), .B1(n92), .B2(
        intadd_0_SUM_7_), .C1(n109), .C2(intadd_0_SUM_5_), .Z(Mantissa_Out[7])
         );
  BUFFD0 U169 ( .I(n118), .Z(n121) );
  AO222D0 U170 ( .A1(n121), .A2(intadd_0_SUM_5_), .B1(n91), .B2(
        intadd_0_SUM_6_), .C1(n119), .C2(intadd_0_SUM_4_), .Z(Mantissa_Out[6])
         );
  AO222D0 U171 ( .A1(n121), .A2(intadd_0_SUM_4_), .B1(n91), .B2(
        intadd_0_SUM_5_), .C1(n109), .C2(intadd_0_SUM_3_), .Z(Mantissa_Out[5])
         );
  AO222D0 U172 ( .A1(n121), .A2(intadd_0_SUM_3_), .B1(n73), .B2(
        intadd_0_SUM_4_), .C1(n109), .C2(intadd_0_SUM_2_), .Z(Mantissa_Out[4])
         );
  AO222D0 U173 ( .A1(n121), .A2(intadd_0_SUM_2_), .B1(n91), .B2(
        intadd_0_SUM_3_), .C1(n108), .C2(intadd_0_SUM_1_), .Z(Mantissa_Out[3])
         );
  INVD0 U174 ( .I(n125), .ZN(n124) );
  NR2D0 U175 ( .A1(n123), .A2(n122), .ZN(n130) );
  MUX2ND0 U176 ( .I0(n125), .I1(n124), .S(n130), .ZN(x_sub_y[3]) );
  FA1D0 U177 ( .A(Mantissa_Y[2]), .B(n128), .CI(n126), .CO(n125), .S(n159) );
  INVD0 U178 ( .I(n159), .ZN(x_sub_y[2]) );
  NR2D0 U179 ( .A1(n4), .A2(n7), .ZN(n327) );
  AOI22D0 U180 ( .A1(n105), .A2(x_sub_y[3]), .B1(n97), .B2(x_sub_y[2]), .ZN(
        n134) );
  INR2D0 U181 ( .A1(Mantissa_X[0]), .B1(Mantissa_Y[0]), .ZN(n144) );
  INVD0 U182 ( .I(Mantissa_Y[1]), .ZN(n127) );
  MAOI222D0 U183 ( .A(Mantissa_X[1]), .B(n144), .C(n127), .ZN(n129) );
  MAOI222D0 U184 ( .A(n129), .B(Mantissa_Y[2]), .C(n128), .ZN(n140) );
  INVD0 U185 ( .I(n130), .ZN(n132) );
  INVD0 U186 ( .I(n140), .ZN(n131) );
  OAI221D0 U187 ( .A1(n140), .A2(n132), .B1(n131), .B2(n130), .C(n100), .ZN(
        n133) );
  CKND2D0 U188 ( .A1(n134), .A2(n133), .ZN(n31) );
  INVD0 U189 ( .I(n138), .ZN(n137) );
  CKAN2D0 U190 ( .A1(Mantissa_Y[4]), .A2(n152), .Z(n136) );
  NR2D0 U191 ( .A1(n152), .A2(Mantissa_Y[4]), .ZN(n135) );
  NR2D0 U192 ( .A1(n136), .A2(n135), .ZN(n143) );
  MUX2ND0 U193 ( .I0(n138), .I1(n137), .S(n143), .ZN(x_sub_y[4]) );
  AOI22D0 U194 ( .A1(n81), .A2(x_sub_y[4]), .B1(n75), .B2(n33), .ZN(n142) );
  MAOI222D0 U195 ( .A(Mantissa_X[3]), .B(n140), .C(n139), .ZN(n151) );
  OAI21D0 U196 ( .A1(n143), .A2(n151), .B(n99), .ZN(n141) );
  AOI32D0 U197 ( .A1(n143), .A2(n142), .A3(n151), .B1(n141), .B2(n142), .ZN(
        n30) );
  OR2D0 U198 ( .A1(n144), .A2(n145), .Z(x_sub_y[0]) );
  FA1D0 U199 ( .A(Mantissa_Y[1]), .B(n146), .CI(n145), .CO(n126), .S(n158) );
  NR2D0 U200 ( .A1(n7), .A2(n158), .ZN(L1_p2[0]) );
  INVD0 U201 ( .I(n149), .ZN(n150) );
  NR2D0 U202 ( .A1(n164), .A2(Mantissa_X[5]), .ZN(n148) );
  CKAN2D0 U203 ( .A1(Mantissa_X[5]), .A2(n164), .Z(n147) );
  NR2D0 U204 ( .A1(n148), .A2(n147), .ZN(n153) );
  MUX2ND0 U205 ( .I0(n150), .I1(n149), .S(n153), .ZN(x_sub_y[5]) );
  AOI22D0 U206 ( .A1(n103), .A2(n37), .B1(n76), .B2(x_sub_y[4]), .ZN(n157) );
  MAOI222D0 U207 ( .A(Mantissa_Y[4]), .B(n152), .C(n151), .ZN(n165) );
  INVD0 U208 ( .I(n153), .ZN(n155) );
  INVD0 U209 ( .I(n165), .ZN(n154) );
  OAI221D0 U210 ( .A1(n165), .A2(n155), .B1(n154), .B2(n153), .C(n78), .ZN(
        n156) );
  CKND2D0 U211 ( .A1(n157), .A2(n156), .ZN(n29) );
  INVD0 U212 ( .I(n158), .ZN(x_sub_y[1]) );
  NR2D0 U213 ( .A1(n3), .A2(n159), .ZN(L1_p2[1]) );
  INVD0 U214 ( .I(n163), .ZN(n162) );
  CKAN2D0 U215 ( .A1(Mantissa_Y[6]), .A2(n174), .Z(n161) );
  NR2D0 U216 ( .A1(n174), .A2(Mantissa_Y[6]), .ZN(n160) );
  NR2D0 U217 ( .A1(n161), .A2(n160), .ZN(n168) );
  MUX2ND0 U218 ( .I0(n163), .I1(n162), .S(n168), .ZN(x_sub_y[6]) );
  AOI22D0 U219 ( .A1(n104), .A2(x_sub_y[6]), .B1(n96), .B2(n37), .ZN(n167) );
  MAOI222D0 U220 ( .A(Mantissa_X[5]), .B(n165), .C(n164), .ZN(n173) );
  OAI21D0 U221 ( .A1(n168), .A2(n173), .B(n101), .ZN(n166) );
  AOI32D0 U222 ( .A1(n168), .A2(n167), .A3(n173), .B1(n166), .B2(n167), .ZN(
        n28) );
  INVD0 U223 ( .I(n171), .ZN(n172) );
  NR2D0 U224 ( .A1(n184), .A2(Mantissa_X[7]), .ZN(n170) );
  CKAN2D0 U225 ( .A1(Mantissa_X[7]), .A2(n184), .Z(n169) );
  NR2D0 U226 ( .A1(n170), .A2(n169), .ZN(n175) );
  MUX2ND0 U227 ( .I0(n172), .I1(n171), .S(n175), .ZN(x_sub_y[7]) );
  AOI22D0 U228 ( .A1(n82), .A2(x_sub_y[7]), .B1(n76), .B2(n39), .ZN(n179) );
  MAOI222D0 U229 ( .A(Mantissa_Y[6]), .B(n174), .C(n173), .ZN(n185) );
  INVD0 U230 ( .I(n175), .ZN(n177) );
  INVD0 U231 ( .I(n185), .ZN(n176) );
  OAI221D0 U232 ( .A1(n185), .A2(n177), .B1(n176), .B2(n175), .C(n79), .ZN(
        n178) );
  CKND2D0 U233 ( .A1(n179), .A2(n178), .ZN(n27) );
  CKAN2D0 U234 ( .A1(n35), .A2(n86), .Z(L1_p2[3]) );
  INVD0 U235 ( .I(n183), .ZN(n182) );
  CKAN2D0 U236 ( .A1(Mantissa_Y[8]), .A2(n194), .Z(n181) );
  NR2D0 U237 ( .A1(n194), .A2(Mantissa_Y[8]), .ZN(n180) );
  NR2D0 U238 ( .A1(n181), .A2(n180), .ZN(n188) );
  MUX2ND0 U239 ( .I0(n183), .I1(n182), .S(n188), .ZN(x_sub_y[8]) );
  AOI22D0 U240 ( .A1(n102), .A2(x_sub_y[8]), .B1(n95), .B2(n41), .ZN(n187) );
  MAOI222D0 U241 ( .A(Mantissa_X[7]), .B(n185), .C(n184), .ZN(n193) );
  OAI21D0 U242 ( .A1(n188), .A2(n193), .B(n98), .ZN(n186) );
  AOI32D0 U243 ( .A1(n188), .A2(n187), .A3(n193), .B1(n186), .B2(n187), .ZN(
        n26) );
  INVD0 U244 ( .I(n191), .ZN(n192) );
  NR2D0 U245 ( .A1(n204), .A2(Mantissa_X[9]), .ZN(n190) );
  CKAN2D0 U246 ( .A1(Mantissa_X[9]), .A2(n204), .Z(n189) );
  NR2D0 U247 ( .A1(n190), .A2(n189), .ZN(n195) );
  MUX2ND0 U248 ( .I0(n192), .I1(n191), .S(n195), .ZN(x_sub_y[9]) );
  AOI22D0 U249 ( .A1(n103), .A2(n45), .B1(n75), .B2(n43), .ZN(n199) );
  MAOI222D0 U250 ( .A(Mantissa_Y[8]), .B(n194), .C(n193), .ZN(n205) );
  INVD0 U251 ( .I(n195), .ZN(n197) );
  INVD0 U252 ( .I(n205), .ZN(n196) );
  OAI221D0 U253 ( .A1(n205), .A2(n197), .B1(n196), .B2(n195), .C(n99), .ZN(
        n198) );
  CKND2D0 U254 ( .A1(n199), .A2(n198), .ZN(n25) );
  CKAN2D0 U255 ( .A1(n39), .A2(n87), .Z(L1_p2[5]) );
  INVD0 U256 ( .I(n203), .ZN(n202) );
  CKAN2D0 U257 ( .A1(Mantissa_Y[10]), .A2(n214), .Z(n201) );
  NR2D0 U258 ( .A1(n214), .A2(Mantissa_Y[10]), .ZN(n200) );
  NR2D0 U259 ( .A1(n201), .A2(n200), .ZN(n208) );
  MUX2ND0 U260 ( .I0(n203), .I1(n202), .S(n208), .ZN(x_sub_y[10]) );
  AOI22D0 U261 ( .A1(n104), .A2(x_sub_y[10]), .B1(n96), .B2(n45), .ZN(n207) );
  MAOI222D0 U262 ( .A(Mantissa_X[9]), .B(n205), .C(n204), .ZN(n213) );
  OAI21D0 U263 ( .A1(n208), .A2(n213), .B(n101), .ZN(n206) );
  AOI32D0 U264 ( .A1(n208), .A2(n207), .A3(n213), .B1(n206), .B2(n207), .ZN(
        n24) );
  INVD0 U265 ( .I(n211), .ZN(n212) );
  NR2D0 U266 ( .A1(n224), .A2(Mantissa_X[11]), .ZN(n210) );
  CKAN2D0 U267 ( .A1(Mantissa_X[11]), .A2(n224), .Z(n209) );
  NR2D0 U268 ( .A1(n210), .A2(n209), .ZN(n215) );
  MUX2ND0 U269 ( .I0(n212), .I1(n211), .S(n215), .ZN(x_sub_y[11]) );
  AOI22D0 U270 ( .A1(n81), .A2(x_sub_y[11]), .B1(n75), .B2(n47), .ZN(n219) );
  MAOI222D0 U271 ( .A(Mantissa_Y[10]), .B(n214), .C(n213), .ZN(n225) );
  INVD0 U272 ( .I(n215), .ZN(n217) );
  INVD0 U273 ( .I(n225), .ZN(n216) );
  OAI221D0 U274 ( .A1(n225), .A2(n217), .B1(n216), .B2(n215), .C(n78), .ZN(
        n218) );
  CKND2D0 U275 ( .A1(n219), .A2(n218), .ZN(n23) );
  CKAN2D0 U276 ( .A1(n43), .A2(n88), .Z(L1_p2[7]) );
  INVD0 U277 ( .I(n223), .ZN(n222) );
  CKAN2D0 U278 ( .A1(Mantissa_Y[12]), .A2(n234), .Z(n221) );
  NR2D0 U279 ( .A1(n234), .A2(Mantissa_Y[12]), .ZN(n220) );
  NR2D0 U280 ( .A1(n221), .A2(n220), .ZN(n228) );
  MUX2ND0 U281 ( .I0(n223), .I1(n222), .S(n228), .ZN(x_sub_y[12]) );
  AOI22D0 U282 ( .A1(n105), .A2(x_sub_y[12]), .B1(n97), .B2(n49), .ZN(n227) );
  MAOI222D0 U283 ( .A(Mantissa_X[11]), .B(n225), .C(n224), .ZN(n233) );
  OAI21D0 U284 ( .A1(n228), .A2(n233), .B(n100), .ZN(n226) );
  AOI32D0 U285 ( .A1(n228), .A2(n227), .A3(n233), .B1(n226), .B2(n227), .ZN(
        n22) );
  INVD0 U286 ( .I(n231), .ZN(n232) );
  NR2D0 U287 ( .A1(n244), .A2(Mantissa_X[13]), .ZN(n230) );
  CKAN2D0 U288 ( .A1(Mantissa_X[13]), .A2(n244), .Z(n229) );
  NR2D0 U289 ( .A1(n230), .A2(n229), .ZN(n235) );
  MUX2ND0 U290 ( .I0(n232), .I1(n231), .S(n235), .ZN(x_sub_y[13]) );
  AOI22D0 U291 ( .A1(n102), .A2(x_sub_y[13]), .B1(n95), .B2(n51), .ZN(n239) );
  MAOI222D0 U292 ( .A(Mantissa_Y[12]), .B(n234), .C(n233), .ZN(n245) );
  INVD0 U293 ( .I(n235), .ZN(n237) );
  INVD0 U294 ( .I(n245), .ZN(n236) );
  OAI221D0 U295 ( .A1(n245), .A2(n237), .B1(n236), .B2(n235), .C(n98), .ZN(
        n238) );
  CKND2D0 U296 ( .A1(n239), .A2(n238), .ZN(n21) );
  CKAN2D0 U297 ( .A1(n47), .A2(n85), .Z(L1_p2[9]) );
  INVD0 U298 ( .I(n243), .ZN(n242) );
  CKAN2D0 U299 ( .A1(Mantissa_Y[14]), .A2(n254), .Z(n241) );
  NR2D0 U300 ( .A1(n254), .A2(Mantissa_Y[14]), .ZN(n240) );
  NR2D0 U301 ( .A1(n241), .A2(n240), .ZN(n248) );
  MUX2ND0 U302 ( .I0(n243), .I1(n242), .S(n248), .ZN(x_sub_y[14]) );
  AOI22D0 U303 ( .A1(n103), .A2(x_sub_y[14]), .B1(n327), .B2(n53), .ZN(n247)
         );
  MAOI222D0 U304 ( .A(Mantissa_X[13]), .B(n245), .C(n244), .ZN(n253) );
  OAI21D0 U305 ( .A1(n248), .A2(n253), .B(n99), .ZN(n246) );
  AOI32D0 U306 ( .A1(n248), .A2(n247), .A3(n253), .B1(n246), .B2(n247), .ZN(
        n20) );
  INVD0 U307 ( .I(n251), .ZN(n252) );
  NR2D0 U308 ( .A1(n264), .A2(Mantissa_X[15]), .ZN(n250) );
  CKAN2D0 U309 ( .A1(Mantissa_X[15]), .A2(n264), .Z(n249) );
  NR2D0 U310 ( .A1(n250), .A2(n249), .ZN(n255) );
  MUX2ND0 U311 ( .I0(n252), .I1(n251), .S(n255), .ZN(x_sub_y[15]) );
  AOI22D0 U312 ( .A1(n82), .A2(x_sub_y[15]), .B1(n76), .B2(n55), .ZN(n259) );
  MAOI222D0 U313 ( .A(Mantissa_Y[14]), .B(n254), .C(n253), .ZN(n265) );
  INVD0 U314 ( .I(n255), .ZN(n257) );
  INVD0 U315 ( .I(n265), .ZN(n256) );
  OAI221D0 U316 ( .A1(n265), .A2(n257), .B1(n256), .B2(n255), .C(n79), .ZN(
        n258) );
  CKND2D0 U317 ( .A1(n259), .A2(n258), .ZN(n19) );
  CKAN2D0 U318 ( .A1(n51), .A2(n86), .Z(L1_p2[11]) );
  INVD0 U319 ( .I(n263), .ZN(n262) );
  CKAN2D0 U320 ( .A1(Mantissa_Y[16]), .A2(n274), .Z(n261) );
  NR2D0 U321 ( .A1(n274), .A2(Mantissa_Y[16]), .ZN(n260) );
  NR2D0 U322 ( .A1(n261), .A2(n260), .ZN(n268) );
  AOI22D0 U323 ( .A1(n104), .A2(n58), .B1(n96), .B2(n57), .ZN(n267) );
  MAOI222D0 U324 ( .A(Mantissa_X[15]), .B(n265), .C(n264), .ZN(n273) );
  OAI21D0 U325 ( .A1(n268), .A2(n273), .B(n101), .ZN(n266) );
  AOI32D0 U326 ( .A1(n268), .A2(n267), .A3(n273), .B1(n266), .B2(n267), .ZN(
        n18) );
  INVD0 U327 ( .I(n271), .ZN(n272) );
  NR2D0 U328 ( .A1(n284), .A2(Mantissa_X[17]), .ZN(n270) );
  CKAN2D0 U329 ( .A1(Mantissa_X[17]), .A2(n284), .Z(n269) );
  NR2D0 U330 ( .A1(n270), .A2(n269), .ZN(n275) );
  MUX2ND0 U331 ( .I0(n272), .I1(n271), .S(n275), .ZN(x_sub_y[17]) );
  AOI22D0 U332 ( .A1(n105), .A2(x_sub_y[17]), .B1(n97), .B2(n58), .ZN(n279) );
  MAOI222D0 U333 ( .A(Mantissa_Y[16]), .B(n274), .C(n273), .ZN(n285) );
  INVD0 U334 ( .I(n275), .ZN(n277) );
  INVD0 U335 ( .I(n285), .ZN(n276) );
  OAI221D0 U336 ( .A1(n285), .A2(n277), .B1(n276), .B2(n275), .C(n100), .ZN(
        n278) );
  CKND2D0 U337 ( .A1(n279), .A2(n278), .ZN(n17) );
  CKAN2D0 U338 ( .A1(n55), .A2(n87), .Z(L1_p2[13]) );
  INVD0 U339 ( .I(n283), .ZN(n282) );
  CKAN2D0 U340 ( .A1(Mantissa_Y[18]), .A2(n294), .Z(n281) );
  NR2D0 U341 ( .A1(n294), .A2(Mantissa_Y[18]), .ZN(n280) );
  NR2D0 U342 ( .A1(n281), .A2(n280), .ZN(n288) );
  MUX2ND0 U343 ( .I0(n283), .I1(n282), .S(n288), .ZN(x_sub_y[18]) );
  AOI22D0 U344 ( .A1(n102), .A2(n63), .B1(n95), .B2(n61), .ZN(n287) );
  MAOI222D0 U345 ( .A(Mantissa_X[17]), .B(n285), .C(n284), .ZN(n293) );
  OAI21D0 U346 ( .A1(n288), .A2(n293), .B(n98), .ZN(n286) );
  AOI32D0 U347 ( .A1(n288), .A2(n287), .A3(n293), .B1(n286), .B2(n287), .ZN(
        n16) );
  INVD0 U348 ( .I(n291), .ZN(n292) );
  NR2D0 U349 ( .A1(n304), .A2(Mantissa_X[19]), .ZN(n290) );
  CKAN2D0 U350 ( .A1(Mantissa_X[19]), .A2(n304), .Z(n289) );
  NR2D0 U351 ( .A1(n290), .A2(n289), .ZN(n295) );
  MUX2ND0 U352 ( .I0(n292), .I1(n291), .S(n295), .ZN(x_sub_y[19]) );
  AOI22D0 U353 ( .A1(n81), .A2(x_sub_y[19]), .B1(n75), .B2(n63), .ZN(n299) );
  MAOI222D0 U354 ( .A(Mantissa_Y[18]), .B(n294), .C(n293), .ZN(n305) );
  INVD0 U355 ( .I(n295), .ZN(n297) );
  INVD0 U356 ( .I(n305), .ZN(n296) );
  OAI221D0 U357 ( .A1(n305), .A2(n297), .B1(n296), .B2(n295), .C(n78), .ZN(
        n298) );
  CKND2D0 U358 ( .A1(n299), .A2(n298), .ZN(n15) );
  CKAN2D0 U359 ( .A1(n59), .A2(n88), .Z(L1_p2[15]) );
  INVD0 U360 ( .I(n303), .ZN(n302) );
  CKAN2D0 U361 ( .A1(Mantissa_Y[20]), .A2(n313), .Z(n301) );
  NR2D0 U362 ( .A1(n313), .A2(Mantissa_Y[20]), .ZN(n300) );
  NR2D0 U363 ( .A1(n301), .A2(n300), .ZN(n308) );
  MUX2ND0 U364 ( .I0(n303), .I1(n302), .S(n308), .ZN(x_sub_y[20]) );
  AOI22D0 U365 ( .A1(n103), .A2(x_sub_y[20]), .B1(n327), .B2(n65), .ZN(n307)
         );
  MAOI222D0 U366 ( .A(Mantissa_X[19]), .B(n305), .C(n304), .ZN(n312) );
  OAI21D0 U367 ( .A1(n308), .A2(n312), .B(n99), .ZN(n306) );
  AOI32D0 U368 ( .A1(n308), .A2(n307), .A3(n312), .B1(n306), .B2(n307), .ZN(
        n14) );
  INVD0 U369 ( .I(n310), .ZN(n311) );
  MUX2ND0 U370 ( .I0(Mantissa_Y[21]), .I1(n309), .S(Mantissa_X[21]), .ZN(n314)
         );
  MUX2ND0 U371 ( .I0(n311), .I1(n310), .S(n314), .ZN(x_sub_y[21]) );
  AOI22D0 U372 ( .A1(n104), .A2(x_sub_y[21]), .B1(n96), .B2(n67), .ZN(n318) );
  MAOI222D0 U373 ( .A(Mantissa_Y[20]), .B(n313), .C(n312), .ZN(n321) );
  INVD0 U374 ( .I(n314), .ZN(n316) );
  INVD0 U375 ( .I(n321), .ZN(n315) );
  OAI221D0 U376 ( .A1(n321), .A2(n316), .B1(n315), .B2(n314), .C(n101), .ZN(
        n317) );
  CKND2D0 U377 ( .A1(n318), .A2(n317), .ZN(n13) );
  CKAN2D0 U378 ( .A1(n63), .A2(n85), .Z(L1_p2[17]) );
  NR2D0 U379 ( .A1(n88), .A2(Mantissa_X[22]), .ZN(n320) );
  NR2D0 U380 ( .A1(n320), .A2(n319), .ZN(n324) );
  CKND2D0 U381 ( .A1(Mantissa_X[21]), .A2(n321), .ZN(n326) );
  INVD0 U382 ( .I(n326), .ZN(n322) );
  OAI21D0 U383 ( .A1(n322), .A2(Mantissa_X[22]), .B(n79), .ZN(n332) );
  CKND2D0 U384 ( .A1(n76), .A2(x_sub_y[22]), .ZN(n323) );
  OAI211D0 U385 ( .A1(n324), .A2(n80), .B(n332), .C(n323), .ZN(n11) );
  CKAN2D0 U386 ( .A1(n67), .A2(n87), .Z(L1_p2[19]) );
  AOI21D0 U387 ( .A1(Mantissa_X[22]), .A2(n85), .B(n324), .ZN(x_sub_y[23]) );
  CKAN2D0 U388 ( .A1(n71), .A2(n86), .Z(L1_p2[21]) );
  INR2D0 U389 ( .A1(n33), .B1(n9), .ZN(L1_p2[2]) );
  INR2D0 U390 ( .A1(x_sub_y[5]), .B1(n8), .ZN(L1_p2[4]) );
  INR2D0 U391 ( .A1(n41), .B1(n9), .ZN(L1_p2[6]) );
  INR2D0 U392 ( .A1(n45), .B1(n6), .ZN(L1_p2[8]) );
  INR2D0 U393 ( .A1(x_sub_y[11]), .B1(n7), .ZN(L1_p2[10]) );
  INR2D0 U394 ( .A1(x_sub_y[13]), .B1(n8), .ZN(L1_p2[12]) );
  INR2D0 U395 ( .A1(x_sub_y[15]), .B1(n9), .ZN(L1_p2[14]) );
  INR2D0 U396 ( .A1(x_sub_y[17]), .B1(n6), .ZN(L1_p2[16]) );
  MAOI22D0 U397 ( .A1(n326), .A2(n325), .B1(n326), .B2(n325), .ZN(n331) );
  AOI22D0 U398 ( .A1(n105), .A2(n71), .B1(n97), .B2(x_sub_y[21]), .ZN(n329) );
  IOA21D0 U399 ( .A1(n331), .A2(n100), .B(n329), .ZN(n12) );
  INR2D0 U400 ( .A1(x_sub_y[19]), .B1(n8), .ZN(L1_p2[18]) );
  INR2D0 U401 ( .A1(n69), .B1(n9), .ZN(L1_p2[20]) );
  INVD0 U402 ( .I(x_sub_y[23]), .ZN(n333) );
  OAI21D0 U403 ( .A1(Mantissa_Y[21]), .A2(n333), .B(n332), .ZN(n10) );
  NR2D0 U404 ( .A1(n333), .A2(n6), .ZN(L1_p2[24]) );
endmodule


module FP_DIV_WRAPPER_32 ( x, y, out0, mantissa_x, mantissa_y, mantissa_out, 
        shift );
  input [31:0] x;
  input [31:0] y;
  output [31:0] out0;
  output [22:0] mantissa_x;
  output [22:0] mantissa_y;
  input [22:0] mantissa_out;
  input [0:0] shift;
  wire   intadd_1_A_6_, intadd_1_A_5_, intadd_1_A_4_, intadd_1_A_3_,
         intadd_1_A_2_, intadd_1_B_6_, intadd_1_B_5_, intadd_1_B_4_,
         intadd_1_B_3_, intadd_1_B_2_, intadd_1_B_1_, intadd_1_B_0_,
         intadd_1_CI, intadd_1_SUM_6_, intadd_1_SUM_5_, intadd_1_SUM_4_,
         intadd_1_SUM_3_, intadd_1_SUM_2_, intadd_1_SUM_1_, intadd_1_SUM_0_,
         intadd_1_n7, intadd_1_n6, intadd_1_n5, intadd_1_n4, intadd_1_n3,
         intadd_1_n2, intadd_1_n1, n1, n2, n3, n4, n5, n6, n7;

  FA1D0 intadd_1_U8 ( .A(shift[0]), .B(intadd_1_B_0_), .CI(intadd_1_CI), .CO(
        intadd_1_n7), .S(intadd_1_SUM_0_) );
  FA1D0 intadd_1_U7 ( .A(y[23]), .B(intadd_1_B_1_), .CI(intadd_1_n7), .CO(
        intadd_1_n6), .S(intadd_1_SUM_1_) );
  FA1D0 intadd_1_U6 ( .A(intadd_1_A_2_), .B(intadd_1_B_2_), .CI(intadd_1_n6), 
        .CO(intadd_1_n5), .S(intadd_1_SUM_2_) );
  FA1D0 intadd_1_U5 ( .A(intadd_1_A_3_), .B(intadd_1_B_3_), .CI(intadd_1_n5), 
        .CO(intadd_1_n4), .S(intadd_1_SUM_3_) );
  FA1D0 intadd_1_U4 ( .A(intadd_1_A_4_), .B(intadd_1_B_4_), .CI(intadd_1_n4), 
        .CO(intadd_1_n3), .S(intadd_1_SUM_4_) );
  FA1D0 intadd_1_U3 ( .A(intadd_1_A_5_), .B(intadd_1_B_5_), .CI(intadd_1_n3), 
        .CO(intadd_1_n2), .S(intadd_1_SUM_5_) );
  FA1D0 intadd_1_U2 ( .A(intadd_1_A_6_), .B(intadd_1_B_6_), .CI(intadd_1_n2), 
        .CO(intadd_1_n1), .S(intadd_1_SUM_6_) );
  BUFFD0 U2 ( .I(y[3]), .Z(mantissa_y[3]) );
  BUFFD0 U3 ( .I(y[4]), .Z(mantissa_y[4]) );
  BUFFD0 U4 ( .I(y[10]), .Z(mantissa_y[10]) );
  BUFFD0 U5 ( .I(y[14]), .Z(mantissa_y[14]) );
  BUFFD0 U6 ( .I(y[0]), .Z(mantissa_y[0]) );
  BUFFD0 U7 ( .I(y[21]), .Z(mantissa_y[21]) );
  BUFFD0 U8 ( .I(mantissa_out[0]), .Z(out0[0]) );
  BUFFD0 U9 ( .I(mantissa_out[2]), .Z(out0[2]) );
  BUFFD0 U10 ( .I(mantissa_out[17]), .Z(out0[17]) );
  BUFFD0 U11 ( .I(x[22]), .Z(mantissa_x[22]) );
  BUFFD0 U12 ( .I(x[21]), .Z(mantissa_x[21]) );
  BUFFD0 U13 ( .I(x[20]), .Z(mantissa_x[20]) );
  BUFFD0 U14 ( .I(x[19]), .Z(mantissa_x[19]) );
  BUFFD0 U15 ( .I(x[18]), .Z(mantissa_x[18]) );
  BUFFD0 U16 ( .I(x[17]), .Z(mantissa_x[17]) );
  BUFFD0 U17 ( .I(x[16]), .Z(mantissa_x[16]) );
  BUFFD0 U18 ( .I(x[15]), .Z(mantissa_x[15]) );
  BUFFD0 U19 ( .I(x[14]), .Z(mantissa_x[14]) );
  BUFFD0 U20 ( .I(x[13]), .Z(mantissa_x[13]) );
  BUFFD0 U21 ( .I(x[12]), .Z(mantissa_x[12]) );
  BUFFD0 U22 ( .I(x[11]), .Z(mantissa_x[11]) );
  BUFFD0 U23 ( .I(x[10]), .Z(mantissa_x[10]) );
  BUFFD0 U24 ( .I(x[9]), .Z(mantissa_x[9]) );
  BUFFD0 U25 ( .I(x[8]), .Z(mantissa_x[8]) );
  BUFFD0 U26 ( .I(x[7]), .Z(mantissa_x[7]) );
  BUFFD0 U27 ( .I(x[6]), .Z(mantissa_x[6]) );
  BUFFD0 U28 ( .I(x[5]), .Z(mantissa_x[5]) );
  BUFFD0 U29 ( .I(x[4]), .Z(mantissa_x[4]) );
  BUFFD0 U30 ( .I(x[3]), .Z(mantissa_x[3]) );
  BUFFD0 U31 ( .I(x[2]), .Z(mantissa_x[2]) );
  BUFFD0 U32 ( .I(x[1]), .Z(mantissa_x[1]) );
  BUFFD0 U33 ( .I(x[0]), .Z(mantissa_x[0]) );
  BUFFD0 U34 ( .I(mantissa_out[1]), .Z(out0[1]) );
  BUFFD0 U35 ( .I(mantissa_out[3]), .Z(out0[3]) );
  BUFFD0 U36 ( .I(mantissa_out[4]), .Z(out0[4]) );
  BUFFD0 U37 ( .I(mantissa_out[5]), .Z(out0[5]) );
  BUFFD0 U38 ( .I(mantissa_out[6]), .Z(out0[6]) );
  BUFFD0 U39 ( .I(mantissa_out[7]), .Z(out0[7]) );
  BUFFD0 U40 ( .I(mantissa_out[8]), .Z(out0[8]) );
  BUFFD0 U41 ( .I(mantissa_out[9]), .Z(out0[9]) );
  BUFFD0 U42 ( .I(mantissa_out[10]), .Z(out0[10]) );
  BUFFD0 U43 ( .I(mantissa_out[11]), .Z(out0[11]) );
  BUFFD0 U44 ( .I(mantissa_out[12]), .Z(out0[12]) );
  BUFFD0 U45 ( .I(mantissa_out[13]), .Z(out0[13]) );
  BUFFD0 U46 ( .I(mantissa_out[14]), .Z(out0[14]) );
  BUFFD0 U47 ( .I(mantissa_out[15]), .Z(out0[15]) );
  BUFFD0 U48 ( .I(mantissa_out[16]), .Z(out0[16]) );
  BUFFD0 U49 ( .I(mantissa_out[18]), .Z(out0[18]) );
  BUFFD0 U50 ( .I(mantissa_out[19]), .Z(out0[19]) );
  BUFFD0 U51 ( .I(mantissa_out[20]), .Z(out0[20]) );
  BUFFD0 U52 ( .I(mantissa_out[21]), .Z(out0[21]) );
  BUFFD0 U53 ( .I(mantissa_out[22]), .Z(out0[22]) );
  BUFFD0 U54 ( .I(y[1]), .Z(mantissa_y[1]) );
  BUFFD0 U55 ( .I(y[2]), .Z(mantissa_y[2]) );
  BUFFD0 U56 ( .I(y[5]), .Z(mantissa_y[5]) );
  BUFFD0 U57 ( .I(y[6]), .Z(mantissa_y[6]) );
  BUFFD0 U58 ( .I(y[7]), .Z(mantissa_y[7]) );
  BUFFD0 U59 ( .I(y[8]), .Z(mantissa_y[8]) );
  BUFFD0 U60 ( .I(y[9]), .Z(mantissa_y[9]) );
  BUFFD0 U61 ( .I(y[11]), .Z(mantissa_y[11]) );
  BUFFD0 U62 ( .I(y[12]), .Z(mantissa_y[12]) );
  BUFFD0 U63 ( .I(y[13]), .Z(mantissa_y[13]) );
  BUFFD0 U64 ( .I(y[15]), .Z(mantissa_y[15]) );
  BUFFD0 U65 ( .I(y[16]), .Z(mantissa_y[16]) );
  BUFFD0 U66 ( .I(y[17]), .Z(mantissa_y[17]) );
  BUFFD0 U67 ( .I(y[18]), .Z(mantissa_y[18]) );
  BUFFD0 U68 ( .I(y[19]), .Z(mantissa_y[19]) );
  BUFFD0 U69 ( .I(y[20]), .Z(mantissa_y[20]) );
  BUFFD0 U70 ( .I(y[22]), .Z(mantissa_y[22]) );
  INVD0 U71 ( .I(y[29]), .ZN(n7) );
  NR2D0 U72 ( .A1(n7), .A2(x[29]), .ZN(n6) );
  XNR4D0 U73 ( .A1(n6), .A2(y[30]), .A3(x[30]), .A4(intadd_1_n1), .ZN(out0[30]) );
  INVD0 U74 ( .I(intadd_1_SUM_0_), .ZN(out0[23]) );
  INVD0 U75 ( .I(intadd_1_SUM_1_), .ZN(out0[24]) );
  INVD0 U76 ( .I(intadd_1_SUM_2_), .ZN(out0[25]) );
  INVD0 U77 ( .I(intadd_1_SUM_3_), .ZN(out0[26]) );
  INVD0 U78 ( .I(intadd_1_SUM_4_), .ZN(out0[27]) );
  INVD0 U79 ( .I(intadd_1_SUM_5_), .ZN(out0[28]) );
  INVD0 U80 ( .I(intadd_1_SUM_6_), .ZN(out0[29]) );
  INVD0 U81 ( .I(x[23]), .ZN(intadd_1_CI) );
  INVD0 U82 ( .I(y[23]), .ZN(intadd_1_B_0_) );
  INVD0 U83 ( .I(y[24]), .ZN(n1) );
  NR2D0 U84 ( .A1(n1), .A2(x[24]), .ZN(intadd_1_B_2_) );
  INVD0 U85 ( .I(y[25]), .ZN(n2) );
  NR2D0 U86 ( .A1(n2), .A2(x[25]), .ZN(intadd_1_B_3_) );
  INVD0 U87 ( .I(y[26]), .ZN(n3) );
  NR2D0 U88 ( .A1(n3), .A2(x[26]), .ZN(intadd_1_B_4_) );
  INVD0 U89 ( .I(y[27]), .ZN(n4) );
  NR2D0 U90 ( .A1(n4), .A2(x[27]), .ZN(intadd_1_B_5_) );
  INVD0 U91 ( .I(y[28]), .ZN(n5) );
  NR2D0 U92 ( .A1(n5), .A2(x[28]), .ZN(intadd_1_B_6_) );
  AOI21D0 U93 ( .A1(x[24]), .A2(n1), .B(intadd_1_B_2_), .ZN(intadd_1_B_1_) );
  AOI21D0 U94 ( .A1(x[25]), .A2(n2), .B(intadd_1_B_3_), .ZN(intadd_1_A_2_) );
  AOI21D0 U95 ( .A1(x[26]), .A2(n3), .B(intadd_1_B_4_), .ZN(intadd_1_A_3_) );
  AOI21D0 U96 ( .A1(x[27]), .A2(n4), .B(intadd_1_B_5_), .ZN(intadd_1_A_4_) );
  AOI21D0 U97 ( .A1(x[28]), .A2(n5), .B(intadd_1_B_6_), .ZN(intadd_1_A_5_) );
  AOI21D0 U98 ( .A1(x[29]), .A2(n7), .B(n6), .ZN(intadd_1_A_6_) );
  XOR2D0 U99 ( .A1(y[31]), .A2(x[31]), .Z(out0[31]) );
endmodule


module pace_fp32_l2 ( x, y, out0 );
  input [31:0] x;
  input [31:0] y;
  output [31:0] out0;
  wire   shift, n2;
  wire   [22:0] mantissa_x;
  wire   [22:0] mantissa_y;
  wire   [22:0] mantissa_out;

  Mantissa_Div_L2_MANTISSA_WIDTH23 mantissa_div ( .Mantissa_X(mantissa_x), 
        .Mantissa_Y(mantissa_y), .Mantissa_Out(mantissa_out), .Shift(shift) );
  FP_DIV_WRAPPER_32 fp_wrapper ( .x(x), .y(y), .out0(out0), .mantissa_x(
        mantissa_x), .mantissa_y(mantissa_y), .mantissa_out(mantissa_out), 
        .shift(n2) );
  INVD0 U2 ( .I(shift), .ZN(n2) );
endmodule

