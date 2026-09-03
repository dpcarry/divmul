/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Thu Aug 20 03:01:25 2026
/////////////////////////////////////////////////////////////


module CSA3_2_Array_WIDTH25_3 ( In_1, In_2, In_3, S, C );
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
  OAI21D0 U23 ( .A1(In_3[24]), .A2(In_2[24]), .B(n26), .ZN(S[24]) );
  INVD0 U24 ( .I(S[24]), .ZN(S[23]) );
  CKAN2D0 U25 ( .A1(In_3[24]), .A2(In_2[22]), .Z(C[22]) );
  CKAN2D0 U26 ( .A1(In_3[21]), .A2(In_2[21]), .Z(C[21]) );
  CKAN2D0 U27 ( .A1(In_3[20]), .A2(In_2[20]), .Z(C[20]) );
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
  IAO21D0 U49 ( .A1(In_3[24]), .A2(In_2[22]), .B(C[22]), .ZN(S[22]) );
  IAO21D0 U50 ( .A1(In_3[21]), .A2(In_2[21]), .B(C[21]), .ZN(S[21]) );
endmodule


module CSA3_2_Array_WIDTH25_2 ( In_1, In_2, In_3, S, C );
  input [24:0] In_1;
  input [24:0] In_2;
  input [24:0] In_3;
  output [24:0] S;
  output [24:0] C;


  BUFFD0 U1 ( .I(S[21]), .Z(S[23]) );
  BUFFD0 U2 ( .I(C[21]), .Z(C[22]) );
  BUFFD0 U3 ( .I(C[21]), .Z(C[23]) );
  FA1D0 U4 ( .A(In_1[24]), .B(In_2[24]), .CI(In_3[24]), .CO(C[21]), .S(S[21])
         );
  BUFFD0 U5 ( .I(S[21]), .Z(S[22]) );
  BUFFD0 U6 ( .I(S[21]), .Z(S[24]) );
  FA1D0 U7 ( .A(In_1[20]), .B(In_2[24]), .CI(In_3[24]), .CO(C[20]), .S(S[20])
         );
  FA1D0 U8 ( .A(In_2[19]), .B(In_1[19]), .CI(In_3[24]), .CO(C[19]), .S(S[19])
         );
  FA1D0 U9 ( .A(In_2[18]), .B(In_1[18]), .CI(In_3[24]), .CO(C[18]), .S(S[18])
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
  FA1D0 U27 ( .A(In_2[0]), .B(In_1[0]), .CI(In_3[0]), .CO(C[0]), .S(S[0]) );
endmodule


module CSA3_2_Array_WIDTH25_1 ( In_1, In_2, In_3, S, C );
  input [24:0] In_1;
  input [24:0] In_2;
  input [24:0] In_3;
  output [24:0] S;
  output [24:0] C;


  CKAN2D0 U1 ( .A1(In_3[0]), .A2(In_1[0]), .Z(C[0]) );
  IAO21D0 U2 ( .A1(In_3[0]), .A2(In_1[0]), .B(C[0]), .ZN(S[0]) );
  XOR3D0 U3 ( .A1(In_3[24]), .A2(In_1[24]), .A3(In_2[24]), .Z(S[24]) );
  FA1D0 U4 ( .A(In_2[23]), .B(In_1[23]), .CI(In_3[23]), .CO(C[23]), .S(S[23])
         );
  FA1D0 U5 ( .A(In_2[22]), .B(In_1[22]), .CI(In_3[22]), .CO(C[22]), .S(S[22])
         );
  FA1D0 U6 ( .A(In_2[21]), .B(In_1[21]), .CI(In_3[21]), .CO(C[21]), .S(S[21])
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


module CSA3_2_Array_WIDTH25_0 ( In_1, In_2, In_3, S, C );
  input [24:0] In_1;
  input [24:0] In_2;
  input [24:0] In_3;
  output [24:0] S;
  output [24:0] C;


  BUFFD0 U1 ( .I(In_1[0]), .Z(S[0]) );
  XOR3D0 U2 ( .A1(In_3[24]), .A2(In_1[24]), .A3(In_2[24]), .Z(S[24]) );
  FA1D0 U3 ( .A(In_2[23]), .B(In_1[23]), .CI(In_3[23]), .CO(C[23]), .S(S[23])
         );
  FA1D0 U4 ( .A(In_2[22]), .B(In_1[22]), .CI(In_3[22]), .CO(C[22]), .S(S[22])
         );
  FA1D0 U5 ( .A(In_2[21]), .B(In_1[21]), .CI(In_3[21]), .CO(C[21]), .S(S[21])
         );
  FA1D0 U6 ( .A(In_2[20]), .B(In_1[20]), .CI(In_3[20]), .CO(C[20]), .S(S[20])
         );
  FA1D0 U7 ( .A(In_2[19]), .B(In_1[19]), .CI(In_3[19]), .CO(C[19]), .S(S[19])
         );
  FA1D0 U8 ( .A(In_2[18]), .B(In_1[18]), .CI(In_3[18]), .CO(C[18]), .S(S[18])
         );
  FA1D0 U9 ( .A(In_2[17]), .B(In_1[17]), .CI(In_3[17]), .CO(C[17]), .S(S[17])
         );
  FA1D0 U10 ( .A(In_2[16]), .B(In_1[16]), .CI(In_3[16]), .CO(C[16]), .S(S[16])
         );
  FA1D0 U11 ( .A(In_2[15]), .B(In_1[15]), .CI(In_3[15]), .CO(C[15]), .S(S[15])
         );
  FA1D0 U12 ( .A(In_2[14]), .B(In_1[14]), .CI(In_3[14]), .CO(C[14]), .S(S[14])
         );
  FA1D0 U13 ( .A(In_2[13]), .B(In_1[13]), .CI(In_3[13]), .CO(C[13]), .S(S[13])
         );
  FA1D0 U14 ( .A(In_2[12]), .B(In_1[12]), .CI(In_3[12]), .CO(C[12]), .S(S[12])
         );
  FA1D0 U15 ( .A(In_2[11]), .B(In_1[11]), .CI(In_3[11]), .CO(C[11]), .S(S[11])
         );
  FA1D0 U16 ( .A(In_2[10]), .B(In_1[10]), .CI(In_3[10]), .CO(C[10]), .S(S[10])
         );
  FA1D0 U17 ( .A(In_2[9]), .B(In_1[9]), .CI(In_3[9]), .CO(C[9]), .S(S[9]) );
  FA1D0 U18 ( .A(In_2[8]), .B(In_1[8]), .CI(In_3[8]), .CO(C[8]), .S(S[8]) );
  FA1D0 U19 ( .A(In_2[7]), .B(In_1[7]), .CI(In_3[7]), .CO(C[7]), .S(S[7]) );
  FA1D0 U20 ( .A(In_2[6]), .B(In_1[6]), .CI(In_3[6]), .CO(C[6]), .S(S[6]) );
  FA1D0 U21 ( .A(In_2[5]), .B(In_1[5]), .CI(In_3[5]), .CO(C[5]), .S(S[5]) );
  FA1D0 U22 ( .A(In_2[4]), .B(In_1[4]), .CI(In_3[4]), .CO(C[4]), .S(S[4]) );
  FA1D0 U23 ( .A(In_2[3]), .B(In_1[3]), .CI(In_3[3]), .CO(C[3]), .S(S[3]) );
  FA1D0 U24 ( .A(In_2[2]), .B(In_1[2]), .CI(In_3[2]), .CO(C[2]), .S(S[2]) );
  FA1D0 U25 ( .A(In_2[1]), .B(In_1[1]), .CI(In_3[1]), .CO(C[1]), .S(S[1]) );
endmodule


module Mantissa_Div_L3_MANTISSA_WIDTH23 ( Mantissa_X, Mantissa_Y, Mantissa_Out, 
        Shift );
  input [22:0] Mantissa_X;
  input [22:0] Mantissa_Y;
  output [22:0] Mantissa_Out;
  output Shift;
  wire   n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, intadd_0_CI,
         intadd_0_SUM_20_, intadd_0_SUM_19_, intadd_0_SUM_18_,
         intadd_0_SUM_17_, intadd_0_SUM_16_, intadd_0_SUM_15_,
         intadd_0_SUM_14_, intadd_0_SUM_13_, intadd_0_SUM_12_,
         intadd_0_SUM_11_, intadd_0_SUM_10_, intadd_0_SUM_9_, intadd_0_SUM_8_,
         intadd_0_SUM_7_, intadd_0_SUM_6_, intadd_0_SUM_5_, intadd_0_SUM_4_,
         intadd_0_SUM_3_, intadd_0_SUM_2_, intadd_0_SUM_1_, intadd_0_SUM_0_,
         intadd_0_n21, intadd_0_n20, intadd_0_n19, intadd_0_n18, intadd_0_n17,
         intadd_0_n16, intadd_0_n15, intadd_0_n14, intadd_0_n13, intadd_0_n12,
         intadd_0_n11, intadd_0_n10, intadd_0_n9, intadd_0_n8, intadd_0_n7,
         intadd_0_n6, intadd_0_n5, intadd_0_n4, intadd_0_n3, intadd_0_n2,
         intadd_0_n1, n1, n2, n3, n4, n5, n6, n7, n8, n9, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194,
         n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205,
         n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216,
         n217, n218, n219, n220, n221, n222, n223, n224, n225, n226, n227,
         n228, n229, n230, n231, n232, n233, n234, n235, n236, n237, n238,
         n239, n240, n241, n242, n243, n244, n245, n246, n247, n248, n249,
         n250, n251, n252, n253, n254, n255, n256, n257, n258, n259, n260,
         n261, n262, n263, n264, n265, n266, n267, n268, n269, n270, n271,
         n272, n273, n274, n275, n276, n277, n278, n279, n280, n281, n282,
         n283, n284, n285, n286, n287, n288, n289, n290, n291, n292, n293,
         n294, n295, n296, n297, n298, n299, n300, n301, n302, n303, n304,
         n305, n306, n307, n308, n309, n310, n311, n312, n313, n314, n315,
         n316, n317, n318, n319, n320, n321, n322, n323, n324, n325, n326,
         n327, n328, n329, n330, n331, n332, n333, n334, n335, n336, n337,
         n338, n339, n340, n341, n342, n343, n344, n345, n346, n347, n348,
         n349, n350, n351, n352, n353, n354, n355, n356, n357, n358, n359,
         n360, n361, n362, n363, n364, n365, n366, n367, n368, n369, n370,
         n371, n372, n373, n374, n375, n376, n377, n378, n379, n380, n381,
         n382, n383, n384, n385, n386, n387, n388, n389, n390, n391, n392,
         n393, n394, n395, n396, n397, n398, n399, n400, n401, n402, n403,
         n404, n405, n406, n407, n408, n409, n410, n411, n412, n413, n414,
         n415, n416, n417, n418, n419, n420, n421, n422, n423, n424, n425,
         n426, n427, n428, n429, n430, n431, n432, n433, n434, n435, n436,
         n437, n438, n439, n440, n441, n442, n443, n444, n445, n446, n447,
         n448, n449, n450, n451, n452, n453, n454, n455, n456, n457, n458,
         n459, n460, n461, n462, n463, n464;
  wire   [23:0] x_sub_y;
  wire   [24:0] L1_p2;
  wire   [24:0] A11S;
  wire   [23:0] A11C;
  wire   [24:0] A12S;
  wire   [23:0] A12C;
  wire   [24:0] A21S;
  wire   [23:0] A21C;
  wire   [24:2] A31S;
  wire   [23:1] A31C;
  wire   [1:0] Res;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4;

  CSA3_2_Array_WIDTH25_3 Stage_1_1 ( .In_1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .In_2({x_sub_y[23], 1'b0, 
        n82, n79, n78, n77, n75, n72, n71, n70, n68, n66, n65, n63, n61, n60, 
        x_sub_y[8:6], n16, n14, n13, x_sub_y[2:0]}), .In_3({L1_p2[24], 1'b0, 
        1'b0, L1_p2[21:0]}), .S(A11S), .C({SYNOPSYS_UNCONNECTED__0, A11C}) );
  CSA3_2_Array_WIDTH25_2 Stage_1_2 ( .In_1({n107, 1'b0, 1'b0, 1'b0, n108, n111, 
        n114, n117, n120, n123, n126, n129, n132, n135, n138, n141, n144, n147, 
        n150, n153, n156, n159, n162, n164, n165}), .In_2({n105, 1'b0, 1'b0, 
        1'b0, 1'b0, n106, n110, n113, n116, n119, n122, n125, n128, n131, n134, 
        n137, n140, n143, n146, n149, n152, n155, n158, n161, n163}), .In_3({
        n104, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, n109, n112, n115, n118, n121, 
        n124, n127, n130, n133, n136, n139, n142, n145, n148, n151, n154, n157, 
        n160}), .S(A12S), .C({SYNOPSYS_UNCONNECTED__1, A12C}) );
  CSA3_2_Array_WIDTH25_1 Stage_2_1 ( .In_1(A11S), .In_2({A11C, 1'b0}), .In_3(
        A12S), .S(A21S), .C({SYNOPSYS_UNCONNECTED__2, A21C}) );
  CSA3_2_Array_WIDTH25_0 Stage_3_1 ( .In_1(A21S), .In_2({A21C, 1'b0}), .In_3({
        A12C, 1'b0}), .S({A31S, Res}), .C({SYNOPSYS_UNCONNECTED__3, A31C, 
        SYNOPSYS_UNCONNECTED__4}) );
  FA1D0 intadd_0_U22 ( .A(A31C[2]), .B(A31S[3]), .CI(intadd_0_CI), .CO(
        intadd_0_n21), .S(intadd_0_SUM_0_) );
  FA1D0 intadd_0_U21 ( .A(A31C[3]), .B(A31S[4]), .CI(intadd_0_n21), .CO(
        intadd_0_n20), .S(intadd_0_SUM_1_) );
  FA1D0 intadd_0_U20 ( .A(A31C[4]), .B(A31S[5]), .CI(intadd_0_n20), .CO(
        intadd_0_n19), .S(intadd_0_SUM_2_) );
  FA1D0 intadd_0_U19 ( .A(A31C[5]), .B(A31S[6]), .CI(intadd_0_n19), .CO(
        intadd_0_n18), .S(intadd_0_SUM_3_) );
  FA1D0 intadd_0_U18 ( .A(A31C[6]), .B(A31S[7]), .CI(intadd_0_n18), .CO(
        intadd_0_n17), .S(intadd_0_SUM_4_) );
  FA1D0 intadd_0_U17 ( .A(A31C[7]), .B(A31S[8]), .CI(intadd_0_n17), .CO(
        intadd_0_n16), .S(intadd_0_SUM_5_) );
  FA1D0 intadd_0_U16 ( .A(A31C[8]), .B(A31S[9]), .CI(intadd_0_n16), .CO(
        intadd_0_n15), .S(intadd_0_SUM_6_) );
  FA1D0 intadd_0_U15 ( .A(A31C[9]), .B(A31S[10]), .CI(intadd_0_n15), .CO(
        intadd_0_n14), .S(intadd_0_SUM_7_) );
  FA1D0 intadd_0_U14 ( .A(A31C[10]), .B(A31S[11]), .CI(intadd_0_n14), .CO(
        intadd_0_n13), .S(intadd_0_SUM_8_) );
  FA1D0 intadd_0_U13 ( .A(A31C[11]), .B(A31S[12]), .CI(intadd_0_n13), .CO(
        intadd_0_n12), .S(intadd_0_SUM_9_) );
  FA1D0 intadd_0_U12 ( .A(A31C[12]), .B(A31S[13]), .CI(intadd_0_n12), .CO(
        intadd_0_n11), .S(intadd_0_SUM_10_) );
  FA1D0 intadd_0_U11 ( .A(A31C[13]), .B(A31S[14]), .CI(intadd_0_n11), .CO(
        intadd_0_n10), .S(intadd_0_SUM_11_) );
  FA1D0 intadd_0_U10 ( .A(A31C[14]), .B(A31S[15]), .CI(intadd_0_n10), .CO(
        intadd_0_n9), .S(intadd_0_SUM_12_) );
  FA1D0 intadd_0_U9 ( .A(A31C[15]), .B(A31S[16]), .CI(intadd_0_n9), .CO(
        intadd_0_n8), .S(intadd_0_SUM_13_) );
  FA1D0 intadd_0_U8 ( .A(A31C[16]), .B(A31S[17]), .CI(intadd_0_n8), .CO(
        intadd_0_n7), .S(intadd_0_SUM_14_) );
  FA1D0 intadd_0_U7 ( .A(A31C[17]), .B(A31S[18]), .CI(intadd_0_n7), .CO(
        intadd_0_n6), .S(intadd_0_SUM_15_) );
  FA1D0 intadd_0_U6 ( .A(A31C[18]), .B(A31S[19]), .CI(intadd_0_n6), .CO(
        intadd_0_n5), .S(intadd_0_SUM_16_) );
  FA1D0 intadd_0_U5 ( .A(A31C[19]), .B(A31S[20]), .CI(intadd_0_n5), .CO(
        intadd_0_n4), .S(intadd_0_SUM_17_) );
  FA1D0 intadd_0_U4 ( .A(A31C[20]), .B(A31S[21]), .CI(intadd_0_n4), .CO(
        intadd_0_n3), .S(intadd_0_SUM_18_) );
  FA1D0 intadd_0_U3 ( .A(A31C[21]), .B(A31S[22]), .CI(intadd_0_n3), .CO(
        intadd_0_n2), .S(intadd_0_SUM_19_) );
  FA1D0 intadd_0_U2 ( .A(A31C[22]), .B(A31S[23]), .CI(intadd_0_n2), .CO(
        intadd_0_n1), .S(intadd_0_SUM_20_) );
  MUX2D0 U4 ( .I0(n223), .I1(n222), .S(n229), .Z(n1) );
  OR2D0 U5 ( .A1(n210), .A2(intadd_0_SUM_20_), .Z(n2) );
  MUX2D0 U6 ( .I0(n373), .I1(n372), .S(n392), .Z(n3) );
  AO21D0 U7 ( .A1(Mantissa_Y[21]), .A2(n96), .B(n436), .Z(n4) );
  CKAN2D0 U8 ( .A1(n275), .A2(n423), .Z(n5) );
  MUX2D0 U9 ( .I0(n343), .I1(n342), .S(n365), .Z(n6) );
  MUX2D0 U10 ( .I0(n305), .I1(n304), .S(n327), .Z(n7) );
  MUX2D0 U11 ( .I0(n381), .I1(n380), .S(n398), .Z(n8) );
  MUX2D0 U12 ( .I0(n278), .I1(n277), .S(n299), .Z(n9) );
  INVD0 U13 ( .I(n437), .ZN(n11) );
  INVD0 U14 ( .I(n423), .ZN(n12) );
  INVD0 U15 ( .I(n1), .ZN(n13) );
  INVD0 U16 ( .I(n434), .ZN(n14) );
  INVD0 U17 ( .I(x_sub_y[5]), .ZN(n15) );
  INVD0 U18 ( .I(n15), .ZN(n16) );
  INVD0 U19 ( .I(n463), .ZN(n17) );
  INVD0 U20 ( .I(n17), .ZN(n18) );
  INVD0 U21 ( .I(n97), .ZN(n19) );
  INVD0 U22 ( .I(n19), .ZN(n20) );
  INVD0 U23 ( .I(n19), .ZN(n21) );
  INVD0 U24 ( .I(n173), .ZN(n22) );
  INVD0 U25 ( .I(n22), .ZN(n23) );
  INVD0 U26 ( .I(n22), .ZN(n24) );
  INVD0 U27 ( .I(n178), .ZN(n25) );
  INVD0 U28 ( .I(n25), .ZN(n26) );
  INVD0 U29 ( .I(n25), .ZN(n27) );
  INVD0 U30 ( .I(n188), .ZN(n28) );
  INVD0 U31 ( .I(n28), .ZN(n29) );
  INVD0 U32 ( .I(n28), .ZN(n30) );
  INVD0 U33 ( .I(n416), .ZN(n31) );
  INVD0 U34 ( .I(n197), .ZN(n32) );
  INVD0 U35 ( .I(n32), .ZN(n33) );
  INVD0 U36 ( .I(n32), .ZN(n34) );
  INVD0 U37 ( .I(n54), .ZN(n35) );
  INVD0 U38 ( .I(n56), .ZN(n36) );
  INVD0 U39 ( .I(n58), .ZN(n37) );
  INVD0 U40 ( .I(x_sub_y[9]), .ZN(n38) );
  INVD0 U41 ( .I(n9), .ZN(n39) );
  INVD0 U42 ( .I(n39), .ZN(n40) );
  INVD0 U43 ( .I(n63), .ZN(n41) );
  INVD0 U44 ( .I(n65), .ZN(n42) );
  INVD0 U45 ( .I(n7), .ZN(n43) );
  INVD0 U46 ( .I(n43), .ZN(n44) );
  INVD0 U47 ( .I(n68), .ZN(n45) );
  INVD0 U48 ( .I(n70), .ZN(n46) );
  INVD0 U49 ( .I(x_sub_y[16]), .ZN(n47) );
  INVD0 U50 ( .I(n75), .ZN(n48) );
  INVD0 U51 ( .I(x_sub_y[22]), .ZN(n49) );
  INVD0 U52 ( .I(n77), .ZN(n50) );
  INVD0 U53 ( .I(n3), .ZN(n51) );
  INVD0 U54 ( .I(n51), .ZN(n52) );
  INVD0 U55 ( .I(x_sub_y[6]), .ZN(n53) );
  INVD0 U56 ( .I(n53), .ZN(n54) );
  INVD0 U57 ( .I(x_sub_y[7]), .ZN(n55) );
  INVD0 U58 ( .I(n55), .ZN(n56) );
  INVD0 U59 ( .I(x_sub_y[8]), .ZN(n57) );
  INVD0 U60 ( .I(n57), .ZN(n58) );
  INVD0 U61 ( .I(x_sub_y[9]), .ZN(n59) );
  INVD0 U62 ( .I(n59), .ZN(n60) );
  INVD0 U63 ( .I(n9), .ZN(n61) );
  INVD0 U64 ( .I(x_sub_y[11]), .ZN(n62) );
  INVD0 U65 ( .I(n62), .ZN(n63) );
  INVD0 U66 ( .I(x_sub_y[12]), .ZN(n64) );
  INVD0 U67 ( .I(n64), .ZN(n65) );
  INVD0 U68 ( .I(n7), .ZN(n66) );
  INVD0 U69 ( .I(x_sub_y[14]), .ZN(n67) );
  INVD0 U70 ( .I(n67), .ZN(n68) );
  INVD0 U71 ( .I(x_sub_y[15]), .ZN(n69) );
  INVD0 U72 ( .I(n69), .ZN(n70) );
  INVD0 U73 ( .I(n451), .ZN(n71) );
  INVD0 U74 ( .I(n6), .ZN(n72) );
  INVD0 U75 ( .I(n6), .ZN(n73) );
  INVD0 U76 ( .I(x_sub_y[18]), .ZN(n74) );
  INVD0 U77 ( .I(n74), .ZN(n75) );
  INVD0 U78 ( .I(x_sub_y[19]), .ZN(n76) );
  INVD0 U79 ( .I(n76), .ZN(n77) );
  INVD0 U80 ( .I(n3), .ZN(n78) );
  INVD0 U81 ( .I(n8), .ZN(n79) );
  INVD0 U82 ( .I(n8), .ZN(n80) );
  INVD0 U83 ( .I(x_sub_y[22]), .ZN(n81) );
  INVD0 U84 ( .I(n81), .ZN(n82) );
  INVD0 U85 ( .I(n183), .ZN(n83) );
  INVD0 U86 ( .I(n83), .ZN(n84) );
  INVD0 U87 ( .I(n83), .ZN(n85) );
  INVD0 U88 ( .I(n460), .ZN(n86) );
  INVD0 U89 ( .I(n86), .ZN(n87) );
  INVD0 U90 ( .I(n86), .ZN(n88) );
  INVD0 U91 ( .I(n216), .ZN(n89) );
  INVD0 U92 ( .I(n89), .ZN(n90) );
  INVD0 U93 ( .I(n205), .ZN(n91) );
  INVD0 U94 ( .I(n91), .ZN(n92) );
  INVD0 U95 ( .I(n91), .ZN(n93) );
  INVD0 U96 ( .I(n12), .ZN(n94) );
  INVD0 U97 ( .I(n11), .ZN(n95) );
  INVD0 U98 ( .I(n11), .ZN(n96) );
  INVD0 U99 ( .I(n4), .ZN(n97) );
  INVD0 U100 ( .I(n4), .ZN(n98) );
  INVD0 U101 ( .I(n4), .ZN(n99) );
  INVD0 U102 ( .I(n464), .ZN(n100) );
  INVD0 U103 ( .I(n100), .ZN(n101) );
  INVD0 U104 ( .I(n100), .ZN(n102) );
  INVD0 U105 ( .I(n100), .ZN(n103) );
  INVD0 U106 ( .I(n100), .ZN(n166) );
  INVD0 U107 ( .I(n407), .ZN(n167) );
  INVD0 U108 ( .I(n167), .ZN(n168) );
  INVD0 U109 ( .I(n167), .ZN(n169) );
  INVD0 U110 ( .I(n167), .ZN(n170) );
  INVD0 U111 ( .I(n167), .ZN(n171) );
  INVD0 U112 ( .I(n411), .ZN(n172) );
  INVD0 U113 ( .I(n172), .ZN(n173) );
  INVD0 U114 ( .I(n172), .ZN(n174) );
  INVD0 U115 ( .I(n172), .ZN(n175) );
  INVD0 U116 ( .I(n5), .ZN(n176) );
  INVD0 U117 ( .I(n5), .ZN(n177) );
  INVD0 U118 ( .I(n5), .ZN(n178) );
  INVD0 U119 ( .I(n5), .ZN(n179) );
  INVD0 U120 ( .I(n2), .ZN(n180) );
  INVD0 U121 ( .I(n2), .ZN(n181) );
  INVD0 U122 ( .I(n2), .ZN(n182) );
  INVD0 U123 ( .I(n2), .ZN(n183) );
  INVD0 U124 ( .I(n460), .ZN(n184) );
  INVD0 U125 ( .I(n184), .ZN(n185) );
  INVD0 U126 ( .I(n184), .ZN(n186) );
  INVD0 U127 ( .I(n184), .ZN(n187) );
  OR2D0 U128 ( .A1(n240), .A2(n95), .Z(n400) );
  INVD0 U129 ( .I(n400), .ZN(n188) );
  INVD0 U130 ( .I(n400), .ZN(n189) );
  INVD0 U131 ( .I(n400), .ZN(n190) );
  BUFFD0 U132 ( .I(n416), .Z(n408) );
  INVD0 U133 ( .I(n408), .ZN(n191) );
  INVD0 U134 ( .I(n408), .ZN(n192) );
  INVD0 U135 ( .I(n408), .ZN(n193) );
  INVD0 U136 ( .I(n408), .ZN(n194) );
  CKAN2D0 U137 ( .A1(n419), .A2(Mantissa_Y[20]), .Z(n462) );
  INVD0 U138 ( .I(n462), .ZN(n195) );
  INVD0 U139 ( .I(n462), .ZN(n196) );
  INVD0 U140 ( .I(n462), .ZN(n197) );
  INVD0 U141 ( .I(n462), .ZN(n198) );
  INVD0 U142 ( .I(n216), .ZN(n199) );
  INVD0 U143 ( .I(n199), .ZN(n200) );
  INVD0 U144 ( .I(n199), .ZN(n201) );
  INVD0 U145 ( .I(n199), .ZN(n202) );
  INVD0 U146 ( .I(n199), .ZN(n203) );
  CKAN2D0 U147 ( .A1(n426), .A2(n94), .Z(n459) );
  INVD0 U148 ( .I(n459), .ZN(n204) );
  INVD0 U149 ( .I(n459), .ZN(n205) );
  INVD0 U150 ( .I(n459), .ZN(n206) );
  INVD0 U151 ( .I(n459), .ZN(n207) );
  XOR3D0 U152 ( .A1(intadd_0_n1), .A2(A31C[23]), .A3(A31S[24]), .Z(n208) );
  BUFFD0 U153 ( .I(n208), .Z(n215) );
  BUFFD0 U154 ( .I(n215), .Z(Shift) );
  INVD0 U155 ( .I(Mantissa_Y[22]), .ZN(n396) );
  BUFFD0 U156 ( .I(n396), .Z(n369) );
  CKND2D0 U157 ( .A1(Mantissa_X[22]), .A2(n369), .ZN(n388) );
  BUFFD0 U158 ( .I(n369), .Z(n426) );
  NR2D0 U159 ( .A1(n426), .A2(Mantissa_X[22]), .ZN(n414) );
  INVD0 U160 ( .I(Mantissa_Y[21]), .ZN(n423) );
  INVD0 U161 ( .I(Mantissa_Y[20]), .ZN(n437) );
  NR2D0 U162 ( .A1(n95), .A2(Mantissa_X[20]), .ZN(n370) );
  INVD0 U163 ( .I(Mantissa_Y[19]), .ZN(n360) );
  INVD0 U164 ( .I(Mantissa_Y[17]), .ZN(n341) );
  INVD0 U165 ( .I(Mantissa_Y[15]), .ZN(n322) );
  INVD0 U166 ( .I(Mantissa_Y[13]), .ZN(n303) );
  INVD0 U167 ( .I(Mantissa_Y[11]), .ZN(n285) );
  INVD0 U168 ( .I(Mantissa_Y[9]), .ZN(n266) );
  INVD0 U169 ( .I(Mantissa_Y[7]), .ZN(n243) );
  INVD0 U170 ( .I(Mantissa_Y[5]), .ZN(n246) );
  INR2D0 U171 ( .A1(Mantissa_Y[3]), .B1(Mantissa_X[3]), .ZN(n221) );
  INVD0 U172 ( .I(Mantissa_X[2]), .ZN(n219) );
  INVD0 U173 ( .I(Mantissa_X[1]), .ZN(n255) );
  INVD0 U174 ( .I(Mantissa_Y[0]), .ZN(n224) );
  NR2D0 U175 ( .A1(n224), .A2(Mantissa_X[0]), .ZN(n431) );
  INVD0 U176 ( .I(Mantissa_X[3]), .ZN(n237) );
  NR2D0 U177 ( .A1(n237), .A2(Mantissa_Y[3]), .ZN(n220) );
  IAO21D0 U178 ( .A1(n221), .A2(n223), .B(n220), .ZN(n235) );
  INVD0 U179 ( .I(Mantissa_X[4]), .ZN(n233) );
  MAOI222D0 U180 ( .A(Mantissa_Y[4]), .B(n235), .C(n233), .ZN(n247) );
  MAOI222D0 U181 ( .A(Mantissa_X[5]), .B(n246), .C(n247), .ZN(n232) );
  INVD0 U182 ( .I(Mantissa_X[6]), .ZN(n230) );
  MAOI222D0 U183 ( .A(Mantissa_Y[6]), .B(n232), .C(n230), .ZN(n244) );
  MAOI222D0 U184 ( .A(Mantissa_X[7]), .B(n243), .C(n244), .ZN(n258) );
  INVD0 U185 ( .I(Mantissa_X[8]), .ZN(n256) );
  MAOI222D0 U186 ( .A(Mantissa_Y[8]), .B(n258), .C(n256), .ZN(n267) );
  MAOI222D0 U187 ( .A(Mantissa_X[9]), .B(n266), .C(n267), .ZN(n278) );
  INVD0 U188 ( .I(Mantissa_X[10]), .ZN(n276) );
  MAOI222D0 U189 ( .A(Mantissa_Y[10]), .B(n278), .C(n276), .ZN(n286) );
  MAOI222D0 U190 ( .A(Mantissa_X[11]), .B(n285), .C(n286), .ZN(n296) );
  INVD0 U191 ( .I(Mantissa_X[12]), .ZN(n294) );
  MAOI222D0 U192 ( .A(Mantissa_Y[12]), .B(n296), .C(n294), .ZN(n304) );
  MAOI222D0 U193 ( .A(Mantissa_X[13]), .B(n303), .C(n304), .ZN(n314) );
  INVD0 U194 ( .I(Mantissa_X[14]), .ZN(n312) );
  MAOI222D0 U195 ( .A(Mantissa_Y[14]), .B(n314), .C(n312), .ZN(n323) );
  MAOI222D0 U196 ( .A(Mantissa_X[15]), .B(n322), .C(n323), .ZN(n334) );
  INVD0 U197 ( .I(Mantissa_X[16]), .ZN(n332) );
  MAOI222D0 U198 ( .A(Mantissa_Y[16]), .B(n334), .C(n332), .ZN(n342) );
  MAOI222D0 U199 ( .A(Mantissa_X[17]), .B(n341), .C(n342), .ZN(n352) );
  INVD0 U200 ( .I(Mantissa_X[18]), .ZN(n350) );
  MAOI222D0 U201 ( .A(Mantissa_Y[18]), .B(n352), .C(n350), .ZN(n361) );
  MAOI222D0 U202 ( .A(Mantissa_X[19]), .B(n360), .C(n361), .ZN(n373) );
  CKND2D0 U203 ( .A1(Mantissa_X[20]), .A2(n96), .ZN(n371) );
  OAI21D0 U204 ( .A1(n370), .A2(n373), .B(n371), .ZN(n380) );
  MAOI222D0 U205 ( .A(Mantissa_X[21]), .B(n423), .C(n380), .ZN(n389) );
  OR2D0 U206 ( .A1(n414), .A2(n389), .Z(n418) );
  CKND2D0 U207 ( .A1(n388), .A2(n418), .ZN(n463) );
  NR2D0 U208 ( .A1(n18), .A2(Mantissa_Y[22]), .ZN(L1_p2[24]) );
  INR2D0 U209 ( .A1(intadd_0_SUM_20_), .B1(Shift), .ZN(n216) );
  AO22D0 U210 ( .A1(Shift), .A2(intadd_0_SUM_19_), .B1(n216), .B2(
        intadd_0_SUM_18_), .Z(Mantissa_Out[21]) );
  OA21D0 U211 ( .A1(Shift), .A2(intadd_0_SUM_19_), .B(intadd_0_SUM_20_), .Z(
        Mantissa_Out[22]) );
  CKAN2D0 U212 ( .A1(A31C[1]), .A2(A31S[2]), .Z(intadd_0_CI) );
  IAO21D0 U213 ( .A1(A31C[1]), .A2(A31S[2]), .B(intadd_0_CI), .ZN(n209) );
  BUFFD0 U214 ( .I(n208), .Z(n212) );
  BUFFD0 U215 ( .I(n212), .Z(n210) );
  AO222D0 U216 ( .A1(n215), .A2(n209), .B1(Res[1]), .B2(n201), .C1(n84), .C2(
        intadd_0_SUM_0_), .Z(Mantissa_Out[1]) );
  AO222D0 U217 ( .A1(n210), .A2(Res[1]), .B1(Res[0]), .B2(n200), .C1(n180), 
        .C2(n209), .Z(Mantissa_Out[0]) );
  AO222D0 U218 ( .A1(n215), .A2(intadd_0_SUM_0_), .B1(n182), .B2(
        intadd_0_SUM_1_), .C1(n203), .C2(n209), .Z(Mantissa_Out[2]) );
  AO222D0 U219 ( .A1(n210), .A2(intadd_0_SUM_17_), .B1(n180), .B2(
        intadd_0_SUM_18_), .C1(n90), .C2(intadd_0_SUM_16_), .Z(
        Mantissa_Out[19]) );
  AO222D0 U220 ( .A1(n210), .A2(intadd_0_SUM_18_), .B1(n181), .B2(
        intadd_0_SUM_19_), .C1(n90), .C2(intadd_0_SUM_17_), .Z(
        Mantissa_Out[20]) );
  BUFFD0 U221 ( .I(n212), .Z(n211) );
  AO222D0 U222 ( .A1(n211), .A2(intadd_0_SUM_16_), .B1(n180), .B2(
        intadd_0_SUM_17_), .C1(n201), .C2(intadd_0_SUM_15_), .Z(
        Mantissa_Out[18]) );
  AO222D0 U223 ( .A1(n211), .A2(intadd_0_SUM_15_), .B1(n85), .B2(
        intadd_0_SUM_16_), .C1(n202), .C2(intadd_0_SUM_14_), .Z(
        Mantissa_Out[17]) );
  BUFFD0 U224 ( .I(n212), .Z(n213) );
  AO222D0 U225 ( .A1(n213), .A2(intadd_0_SUM_14_), .B1(n84), .B2(
        intadd_0_SUM_15_), .C1(n201), .C2(intadd_0_SUM_13_), .Z(
        Mantissa_Out[16]) );
  AO222D0 U226 ( .A1(n211), .A2(intadd_0_SUM_13_), .B1(n180), .B2(
        intadd_0_SUM_14_), .C1(n200), .C2(intadd_0_SUM_12_), .Z(
        Mantissa_Out[15]) );
  AO222D0 U227 ( .A1(n211), .A2(intadd_0_SUM_12_), .B1(n183), .B2(
        intadd_0_SUM_13_), .C1(n90), .C2(intadd_0_SUM_11_), .Z(
        Mantissa_Out[14]) );
  BUFFD0 U228 ( .I(n212), .Z(n214) );
  AO222D0 U229 ( .A1(n214), .A2(intadd_0_SUM_6_), .B1(n183), .B2(
        intadd_0_SUM_7_), .C1(n200), .C2(intadd_0_SUM_5_), .Z(Mantissa_Out[8])
         );
  AO222D0 U230 ( .A1(n213), .A2(intadd_0_SUM_11_), .B1(n85), .B2(
        intadd_0_SUM_12_), .C1(n200), .C2(intadd_0_SUM_10_), .Z(
        Mantissa_Out[13]) );
  AO222D0 U231 ( .A1(n213), .A2(intadd_0_SUM_10_), .B1(n183), .B2(
        intadd_0_SUM_11_), .C1(n203), .C2(intadd_0_SUM_9_), .Z(
        Mantissa_Out[12]) );
  AO222D0 U232 ( .A1(n213), .A2(intadd_0_SUM_9_), .B1(n182), .B2(
        intadd_0_SUM_10_), .C1(n216), .C2(intadd_0_SUM_8_), .Z(
        Mantissa_Out[11]) );
  AO222D0 U233 ( .A1(n214), .A2(intadd_0_SUM_8_), .B1(n182), .B2(
        intadd_0_SUM_9_), .C1(n203), .C2(intadd_0_SUM_7_), .Z(Mantissa_Out[10]) );
  AO222D0 U234 ( .A1(n214), .A2(intadd_0_SUM_7_), .B1(n84), .B2(
        intadd_0_SUM_8_), .C1(n203), .C2(intadd_0_SUM_6_), .Z(Mantissa_Out[9])
         );
  AO222D0 U235 ( .A1(n214), .A2(intadd_0_SUM_5_), .B1(n182), .B2(
        intadd_0_SUM_6_), .C1(n202), .C2(intadd_0_SUM_4_), .Z(Mantissa_Out[7])
         );
  BUFFD0 U236 ( .I(n215), .Z(n217) );
  AO222D0 U237 ( .A1(n217), .A2(intadd_0_SUM_4_), .B1(n181), .B2(
        intadd_0_SUM_5_), .C1(n90), .C2(intadd_0_SUM_3_), .Z(Mantissa_Out[6])
         );
  AO222D0 U238 ( .A1(n217), .A2(intadd_0_SUM_3_), .B1(n181), .B2(
        intadd_0_SUM_4_), .C1(n202), .C2(intadd_0_SUM_2_), .Z(Mantissa_Out[5])
         );
  AO222D0 U239 ( .A1(n217), .A2(intadd_0_SUM_2_), .B1(n85), .B2(
        intadd_0_SUM_3_), .C1(n202), .C2(intadd_0_SUM_1_), .Z(Mantissa_Out[4])
         );
  AO222D0 U240 ( .A1(n217), .A2(intadd_0_SUM_1_), .B1(n181), .B2(
        intadd_0_SUM_2_), .C1(n201), .C2(intadd_0_SUM_0_), .Z(Mantissa_Out[3])
         );
  FA1D0 U241 ( .A(Mantissa_Y[2]), .B(n219), .CI(n218), .CO(n223), .S(n432) );
  INVD0 U242 ( .I(n432), .ZN(x_sub_y[2]) );
  INVD0 U243 ( .I(n223), .ZN(n222) );
  NR2D0 U244 ( .A1(n221), .A2(n220), .ZN(n229) );
  INVD0 U245 ( .I(n92), .ZN(n435) );
  BUFFD0 U246 ( .I(n396), .Z(n331) );
  INVD0 U247 ( .I(n331), .ZN(n275) );
  INVD0 U248 ( .I(n176), .ZN(n419) );
  AOI22D0 U249 ( .A1(n435), .A2(x_sub_y[2]), .B1(n419), .B2(n13), .ZN(n228) );
  CKND2D0 U250 ( .A1(Mantissa_X[0]), .A2(n224), .ZN(n430) );
  MAOI222D0 U251 ( .A(Mantissa_Y[1]), .B(n255), .C(n430), .ZN(n226) );
  INVD0 U252 ( .I(Mantissa_Y[2]), .ZN(n225) );
  MAOI222D0 U253 ( .A(Mantissa_X[2]), .B(n226), .C(n225), .ZN(n236) );
  CKND2D0 U254 ( .A1(Mantissa_Y[21]), .A2(n369), .ZN(n460) );
  OAI21D0 U255 ( .A1(n229), .A2(n236), .B(n86), .ZN(n227) );
  AOI32D0 U256 ( .A1(n229), .A2(n228), .A3(n236), .B1(n227), .B2(n228), .ZN(
        n165) );
  INVD0 U257 ( .I(n232), .ZN(n231) );
  INVD0 U258 ( .I(Mantissa_Y[6]), .ZN(n269) );
  AOI22D0 U259 ( .A1(Mantissa_Y[6]), .A2(n230), .B1(Mantissa_X[6]), .B2(n269), 
        .ZN(n261) );
  MUX2ND0 U260 ( .I0(n232), .I1(n231), .S(n261), .ZN(x_sub_y[6]) );
  INVD0 U261 ( .I(n235), .ZN(n234) );
  INVD0 U262 ( .I(Mantissa_Y[4]), .ZN(n249) );
  AOI22D0 U263 ( .A1(Mantissa_Y[4]), .A2(n233), .B1(Mantissa_X[4]), .B2(n249), 
        .ZN(n238) );
  MUX2ND0 U264 ( .I0(n235), .I1(n234), .S(n238), .ZN(x_sub_y[4]) );
  MAOI222D0 U265 ( .A(Mantissa_Y[3]), .B(n237), .C(n236), .ZN(n250) );
  INVD0 U266 ( .I(n250), .ZN(n239) );
  MUX2ND0 U267 ( .I0(n239), .I1(n250), .S(n238), .ZN(n433) );
  NR2D0 U268 ( .A1(n93), .A2(n95), .ZN(n436) );
  INVD0 U269 ( .I(n436), .ZN(n411) );
  CKND2D0 U270 ( .A1(n275), .A2(Mantissa_Y[21]), .ZN(n240) );
  OAI21D0 U271 ( .A1(Mantissa_Y[20]), .A2(n240), .B(n195), .ZN(n407) );
  AOI22D0 U272 ( .A1(n190), .A2(n54), .B1(n171), .B2(n14), .ZN(n242) );
  CKND2D0 U273 ( .A1(n96), .A2(n240), .ZN(n416) );
  CKND2D0 U274 ( .A1(n194), .A2(n13), .ZN(n241) );
  OAI211D0 U275 ( .A1(n433), .A2(n175), .B(n242), .C(n241), .ZN(n163) );
  INVD0 U276 ( .I(n244), .ZN(n245) );
  INVD0 U277 ( .I(Mantissa_X[7]), .ZN(n280) );
  AOI22D0 U278 ( .A1(Mantissa_Y[7]), .A2(n280), .B1(Mantissa_X[7]), .B2(n243), 
        .ZN(n271) );
  MUX2ND0 U279 ( .I0(n245), .I1(n244), .S(n271), .ZN(x_sub_y[7]) );
  INVD0 U280 ( .I(n247), .ZN(n248) );
  INVD0 U281 ( .I(Mantissa_X[5]), .ZN(n260) );
  AOI22D0 U282 ( .A1(Mantissa_Y[5]), .A2(n260), .B1(Mantissa_X[5]), .B2(n246), 
        .ZN(n251) );
  MUX2ND0 U283 ( .I0(n248), .I1(n247), .S(n251), .ZN(x_sub_y[5]) );
  MAOI222D0 U284 ( .A(Mantissa_X[4]), .B(n250), .C(n249), .ZN(n259) );
  INVD0 U285 ( .I(n259), .ZN(n252) );
  MUX2ND0 U286 ( .I0(n259), .I1(n252), .S(n251), .ZN(n438) );
  AOI22D0 U287 ( .A1(n189), .A2(x_sub_y[7]), .B1(n171), .B2(n16), .ZN(n254) );
  CKND2D0 U288 ( .A1(n194), .A2(n14), .ZN(n253) );
  OAI211D0 U289 ( .A1(n438), .A2(n23), .B(n254), .C(n253), .ZN(n161) );
  INVD0 U290 ( .I(n426), .ZN(n429) );
  FA1D0 U291 ( .A(Mantissa_Y[1]), .B(n255), .CI(n431), .CO(n218), .S(n265) );
  NR2D0 U292 ( .A1(n429), .A2(n265), .ZN(L1_p2[0]) );
  INVD0 U293 ( .I(n258), .ZN(n257) );
  INVD0 U294 ( .I(Mantissa_Y[8]), .ZN(n288) );
  AOI22D0 U295 ( .A1(Mantissa_Y[8]), .A2(n256), .B1(Mantissa_X[8]), .B2(n288), 
        .ZN(n281) );
  MUX2ND0 U296 ( .I0(n258), .I1(n257), .S(n281), .ZN(x_sub_y[8]) );
  MAOI222D0 U297 ( .A(Mantissa_Y[5]), .B(n260), .C(n259), .ZN(n270) );
  INVD0 U298 ( .I(n270), .ZN(n262) );
  MUX2ND0 U299 ( .I0(n262), .I1(n270), .S(n261), .ZN(n440) );
  AOI22D0 U300 ( .A1(n189), .A2(n58), .B1(n170), .B2(n54), .ZN(n264) );
  CKND2D0 U301 ( .A1(n193), .A2(x_sub_y[5]), .ZN(n263) );
  OAI211D0 U302 ( .A1(n440), .A2(n174), .B(n264), .C(n263), .ZN(n158) );
  INVD0 U303 ( .I(n265), .ZN(x_sub_y[1]) );
  INVD0 U304 ( .I(n267), .ZN(n268) );
  INVD0 U305 ( .I(Mantissa_X[9]), .ZN(n298) );
  AOI22D0 U306 ( .A1(Mantissa_Y[9]), .A2(n298), .B1(Mantissa_X[9]), .B2(n266), 
        .ZN(n290) );
  MUX2ND0 U307 ( .I0(n268), .I1(n267), .S(n290), .ZN(x_sub_y[9]) );
  MAOI222D0 U308 ( .A(Mantissa_X[6]), .B(n270), .C(n269), .ZN(n279) );
  INVD0 U309 ( .I(n279), .ZN(n272) );
  MUX2ND0 U310 ( .I0(n279), .I1(n272), .S(n271), .ZN(n441) );
  AOI22D0 U311 ( .A1(n29), .A2(n60), .B1(n168), .B2(n56), .ZN(n274) );
  CKND2D0 U312 ( .A1(n191), .A2(n54), .ZN(n273) );
  OAI211D0 U313 ( .A1(n441), .A2(n175), .B(n274), .C(n273), .ZN(n155) );
  NR2D0 U314 ( .A1(n275), .A2(n1), .ZN(L1_p2[2]) );
  INVD0 U315 ( .I(n278), .ZN(n277) );
  INVD0 U316 ( .I(Mantissa_Y[10]), .ZN(n306) );
  AOI22D0 U317 ( .A1(Mantissa_Y[10]), .A2(n276), .B1(Mantissa_X[10]), .B2(n306), .ZN(n299) );
  MAOI222D0 U318 ( .A(Mantissa_Y[7]), .B(n280), .C(n279), .ZN(n289) );
  INVD0 U319 ( .I(n289), .ZN(n282) );
  MUX2ND0 U320 ( .I0(n282), .I1(n289), .S(n281), .ZN(n442) );
  AOI22D0 U321 ( .A1(n188), .A2(n61), .B1(n169), .B2(x_sub_y[8]), .ZN(n284) );
  CKND2D0 U322 ( .A1(n192), .A2(n56), .ZN(n283) );
  OAI211D0 U323 ( .A1(n442), .A2(n173), .B(n284), .C(n283), .ZN(n152) );
  INVD0 U324 ( .I(n286), .ZN(n287) );
  INVD0 U325 ( .I(Mantissa_X[11]), .ZN(n316) );
  AOI22D0 U326 ( .A1(Mantissa_Y[11]), .A2(n316), .B1(Mantissa_X[11]), .B2(n285), .ZN(n308) );
  MUX2ND0 U327 ( .I0(n287), .I1(n286), .S(n308), .ZN(x_sub_y[11]) );
  MAOI222D0 U328 ( .A(Mantissa_X[8]), .B(n289), .C(n288), .ZN(n297) );
  INVD0 U329 ( .I(n297), .ZN(n291) );
  MUX2ND0 U330 ( .I0(n297), .I1(n291), .S(n290), .ZN(n443) );
  AOI22D0 U331 ( .A1(n30), .A2(x_sub_y[11]), .B1(n170), .B2(n60), .ZN(n293) );
  CKND2D0 U332 ( .A1(n193), .A2(n58), .ZN(n292) );
  OAI211D0 U333 ( .A1(n443), .A2(n174), .B(n293), .C(n292), .ZN(n149) );
  INVD0 U334 ( .I(n331), .ZN(n321) );
  INVD0 U335 ( .I(x_sub_y[5]), .ZN(n439) );
  NR2D0 U336 ( .A1(n321), .A2(n439), .ZN(L1_p2[4]) );
  INVD0 U337 ( .I(n296), .ZN(n295) );
  INVD0 U338 ( .I(Mantissa_Y[12]), .ZN(n325) );
  AOI22D0 U339 ( .A1(Mantissa_Y[12]), .A2(n294), .B1(Mantissa_X[12]), .B2(n325), .ZN(n317) );
  MUX2ND0 U340 ( .I0(n296), .I1(n295), .S(n317), .ZN(x_sub_y[12]) );
  MAOI222D0 U341 ( .A(Mantissa_Y[9]), .B(n298), .C(n297), .ZN(n307) );
  INVD0 U342 ( .I(n307), .ZN(n300) );
  MUX2ND0 U343 ( .I0(n300), .I1(n307), .S(n299), .ZN(n444) );
  AOI22D0 U344 ( .A1(n30), .A2(x_sub_y[12]), .B1(n169), .B2(n61), .ZN(n302) );
  CKND2D0 U345 ( .A1(n31), .A2(x_sub_y[9]), .ZN(n301) );
  OAI211D0 U346 ( .A1(n444), .A2(n24), .B(n302), .C(n301), .ZN(n146) );
  NR2D0 U347 ( .A1(n321), .A2(n35), .ZN(L1_p2[5]) );
  INVD0 U348 ( .I(n304), .ZN(n305) );
  INVD0 U349 ( .I(Mantissa_X[13]), .ZN(n336) );
  AOI22D0 U350 ( .A1(Mantissa_Y[13]), .A2(n336), .B1(Mantissa_X[13]), .B2(n303), .ZN(n327) );
  MAOI222D0 U351 ( .A(Mantissa_X[10]), .B(n307), .C(n306), .ZN(n315) );
  INVD0 U352 ( .I(n315), .ZN(n309) );
  MUX2ND0 U353 ( .I0(n315), .I1(n309), .S(n308), .ZN(n445) );
  AOI22D0 U354 ( .A1(n189), .A2(n66), .B1(n168), .B2(x_sub_y[11]), .ZN(n311)
         );
  CKND2D0 U355 ( .A1(n191), .A2(n39), .ZN(n310) );
  OAI211D0 U356 ( .A1(n445), .A2(n24), .B(n311), .C(n310), .ZN(n143) );
  NR2D0 U357 ( .A1(n321), .A2(n36), .ZN(L1_p2[6]) );
  INVD0 U358 ( .I(n314), .ZN(n313) );
  INVD0 U359 ( .I(Mantissa_Y[14]), .ZN(n344) );
  AOI22D0 U360 ( .A1(Mantissa_Y[14]), .A2(n312), .B1(Mantissa_X[14]), .B2(n344), .ZN(n337) );
  MUX2ND0 U361 ( .I0(n314), .I1(n313), .S(n337), .ZN(x_sub_y[14]) );
  MAOI222D0 U362 ( .A(Mantissa_Y[11]), .B(n316), .C(n315), .ZN(n326) );
  INVD0 U363 ( .I(n326), .ZN(n318) );
  MUX2ND0 U364 ( .I0(n318), .I1(n326), .S(n317), .ZN(n446) );
  AOI22D0 U365 ( .A1(n190), .A2(x_sub_y[14]), .B1(n171), .B2(x_sub_y[12]), 
        .ZN(n320) );
  CKND2D0 U366 ( .A1(n194), .A2(n63), .ZN(n319) );
  OAI211D0 U367 ( .A1(n446), .A2(n175), .B(n320), .C(n319), .ZN(n140) );
  NR2D0 U368 ( .A1(n321), .A2(n57), .ZN(L1_p2[7]) );
  INVD0 U369 ( .I(n323), .ZN(n324) );
  INVD0 U370 ( .I(Mantissa_X[15]), .ZN(n354) );
  AOI22D0 U371 ( .A1(Mantissa_Y[15]), .A2(n354), .B1(Mantissa_X[15]), .B2(n322), .ZN(n346) );
  MUX2ND0 U372 ( .I0(n324), .I1(n323), .S(n346), .ZN(x_sub_y[15]) );
  MAOI222D0 U373 ( .A(Mantissa_X[12]), .B(n326), .C(n325), .ZN(n335) );
  INVD0 U374 ( .I(n335), .ZN(n328) );
  MUX2ND0 U375 ( .I0(n335), .I1(n328), .S(n327), .ZN(n447) );
  AOI22D0 U376 ( .A1(n29), .A2(x_sub_y[15]), .B1(n169), .B2(n66), .ZN(n330) );
  CKND2D0 U377 ( .A1(n192), .A2(n65), .ZN(n329) );
  OAI211D0 U378 ( .A1(n447), .A2(n173), .B(n330), .C(n329), .ZN(n137) );
  INVD0 U379 ( .I(n331), .ZN(n359) );
  NR2D0 U380 ( .A1(n359), .A2(n59), .ZN(L1_p2[8]) );
  INVD0 U381 ( .I(n334), .ZN(n333) );
  INVD0 U382 ( .I(Mantissa_Y[16]), .ZN(n363) );
  AOI22D0 U383 ( .A1(Mantissa_Y[16]), .A2(n332), .B1(Mantissa_X[16]), .B2(n363), .ZN(n355) );
  MUX2ND0 U384 ( .I0(n334), .I1(n333), .S(n355), .ZN(x_sub_y[16]) );
  MAOI222D0 U385 ( .A(Mantissa_Y[13]), .B(n336), .C(n335), .ZN(n345) );
  INVD0 U386 ( .I(n345), .ZN(n338) );
  MUX2ND0 U387 ( .I0(n338), .I1(n345), .S(n337), .ZN(n448) );
  AOI22D0 U388 ( .A1(n188), .A2(n71), .B1(n407), .B2(x_sub_y[14]), .ZN(n340)
         );
  CKND2D0 U389 ( .A1(n31), .A2(n43), .ZN(n339) );
  OAI211D0 U390 ( .A1(n448), .A2(n23), .B(n340), .C(n339), .ZN(n134) );
  NR2D0 U391 ( .A1(n359), .A2(n9), .ZN(L1_p2[9]) );
  INVD0 U392 ( .I(n342), .ZN(n343) );
  INVD0 U393 ( .I(Mantissa_X[17]), .ZN(n375) );
  AOI22D0 U394 ( .A1(Mantissa_Y[17]), .A2(n375), .B1(Mantissa_X[17]), .B2(n341), .ZN(n365) );
  MAOI222D0 U395 ( .A(Mantissa_X[14]), .B(n345), .C(n344), .ZN(n353) );
  INVD0 U396 ( .I(n353), .ZN(n347) );
  MUX2ND0 U397 ( .I0(n353), .I1(n347), .S(n346), .ZN(n449) );
  AOI22D0 U398 ( .A1(n30), .A2(n72), .B1(n170), .B2(x_sub_y[15]), .ZN(n349) );
  CKND2D0 U399 ( .A1(n193), .A2(n68), .ZN(n348) );
  OAI211D0 U400 ( .A1(n449), .A2(n174), .B(n349), .C(n348), .ZN(n131) );
  NR2D0 U401 ( .A1(n359), .A2(n62), .ZN(L1_p2[10]) );
  INVD0 U402 ( .I(n352), .ZN(n351) );
  INVD0 U403 ( .I(Mantissa_Y[18]), .ZN(n382) );
  AOI22D0 U404 ( .A1(Mantissa_Y[18]), .A2(n350), .B1(Mantissa_X[18]), .B2(n382), .ZN(n376) );
  MUX2ND0 U405 ( .I0(n352), .I1(n351), .S(n376), .ZN(x_sub_y[18]) );
  MAOI222D0 U406 ( .A(Mantissa_Y[15]), .B(n354), .C(n353), .ZN(n364) );
  INVD0 U407 ( .I(n364), .ZN(n356) );
  MUX2ND0 U408 ( .I0(n356), .I1(n364), .S(n355), .ZN(n450) );
  AOI22D0 U409 ( .A1(n189), .A2(x_sub_y[18]), .B1(n168), .B2(n71), .ZN(n358)
         );
  CKND2D0 U410 ( .A1(n191), .A2(n70), .ZN(n357) );
  OAI211D0 U411 ( .A1(n450), .A2(n24), .B(n358), .C(n357), .ZN(n128) );
  NR2D0 U412 ( .A1(n359), .A2(n64), .ZN(L1_p2[11]) );
  INVD0 U413 ( .I(n361), .ZN(n362) );
  INVD0 U414 ( .I(Mantissa_X[19]), .ZN(n391) );
  AOI22D0 U415 ( .A1(Mantissa_Y[19]), .A2(n391), .B1(Mantissa_X[19]), .B2(n360), .ZN(n384) );
  MUX2ND0 U416 ( .I0(n362), .I1(n361), .S(n384), .ZN(x_sub_y[19]) );
  MAOI222D0 U417 ( .A(Mantissa_X[16]), .B(n364), .C(n363), .ZN(n374) );
  INVD0 U418 ( .I(n374), .ZN(n366) );
  MUX2ND0 U419 ( .I0(n374), .I1(n366), .S(n365), .ZN(n452) );
  AOI22D0 U420 ( .A1(n30), .A2(x_sub_y[19]), .B1(n171), .B2(n72), .ZN(n368) );
  CKND2D0 U421 ( .A1(n194), .A2(x_sub_y[16]), .ZN(n367) );
  OAI211D0 U422 ( .A1(n452), .A2(n175), .B(n368), .C(n367), .ZN(n125) );
  INVD0 U423 ( .I(n369), .ZN(n421) );
  NR2D0 U424 ( .A1(n421), .A2(n7), .ZN(L1_p2[12]) );
  INVD0 U425 ( .I(n373), .ZN(n372) );
  INR2D0 U426 ( .A1(n371), .B1(n370), .ZN(n392) );
  MAOI222D0 U427 ( .A(Mantissa_Y[17]), .B(n375), .C(n374), .ZN(n383) );
  INVD0 U428 ( .I(n383), .ZN(n377) );
  MUX2ND0 U429 ( .I0(n377), .I1(n383), .S(n376), .ZN(n454) );
  AOI22D0 U430 ( .A1(n190), .A2(n78), .B1(n407), .B2(x_sub_y[18]), .ZN(n379)
         );
  CKND2D0 U431 ( .A1(n31), .A2(n73), .ZN(n378) );
  OAI211D0 U432 ( .A1(n454), .A2(n24), .B(n379), .C(n378), .ZN(n122) );
  NR2D0 U433 ( .A1(n421), .A2(n67), .ZN(L1_p2[13]) );
  INVD0 U434 ( .I(n380), .ZN(n381) );
  CKND2D0 U435 ( .A1(Mantissa_X[21]), .A2(n94), .ZN(n404) );
  NR2D0 U436 ( .A1(n94), .A2(Mantissa_X[21]), .ZN(n402) );
  INR2D0 U437 ( .A1(n404), .B1(n402), .ZN(n398) );
  MAOI222D0 U438 ( .A(Mantissa_X[18]), .B(n383), .C(n382), .ZN(n390) );
  INVD0 U439 ( .I(n390), .ZN(n385) );
  MUX2ND0 U440 ( .I0(n390), .I1(n385), .S(n384), .ZN(n455) );
  AOI22D0 U441 ( .A1(n188), .A2(n79), .B1(n169), .B2(x_sub_y[19]), .ZN(n387)
         );
  CKND2D0 U442 ( .A1(n192), .A2(n75), .ZN(n386) );
  OAI211D0 U443 ( .A1(n455), .A2(n173), .B(n387), .C(n386), .ZN(n119) );
  NR2D0 U444 ( .A1(n421), .A2(n69), .ZN(L1_p2[14]) );
  INVD0 U445 ( .I(n388), .ZN(n413) );
  NR2D0 U446 ( .A1(n414), .A2(n413), .ZN(n405) );
  INVD0 U447 ( .I(n405), .ZN(n406) );
  XOR2D0 U448 ( .A1(n389), .A2(n406), .Z(x_sub_y[22]) );
  MAOI222D0 U449 ( .A(Mantissa_Y[19]), .B(n391), .C(n390), .ZN(n397) );
  INVD0 U450 ( .I(n397), .ZN(n393) );
  MUX2ND0 U451 ( .I0(n393), .I1(n397), .S(n392), .ZN(n456) );
  AOI22D0 U452 ( .A1(n190), .A2(n82), .B1(n170), .B2(n78), .ZN(n395) );
  CKND2D0 U453 ( .A1(n193), .A2(n77), .ZN(n394) );
  OAI211D0 U454 ( .A1(n456), .A2(n174), .B(n395), .C(n394), .ZN(n116) );
  INVD0 U455 ( .I(n396), .ZN(n417) );
  INVD0 U456 ( .I(x_sub_y[16]), .ZN(n451) );
  NR2D0 U457 ( .A1(n417), .A2(n451), .ZN(L1_p2[15]) );
  INVD0 U458 ( .I(n463), .ZN(x_sub_y[23]) );
  MAOI222D0 U459 ( .A(Mantissa_X[20]), .B(n397), .C(n96), .ZN(n403) );
  INVD0 U460 ( .I(n403), .ZN(n399) );
  MUX2ND0 U461 ( .I0(n403), .I1(n399), .S(n398), .ZN(n457) );
  AOI22D0 U462 ( .A1(n191), .A2(n51), .B1(n79), .B2(n168), .ZN(n401) );
  CKND2D0 U463 ( .A1(x_sub_y[23]), .A2(n29), .ZN(n409) );
  OAI211D0 U464 ( .A1(n457), .A2(n23), .B(n401), .C(n409), .ZN(n113) );
  INVD0 U465 ( .I(n73), .ZN(n453) );
  NR2D0 U466 ( .A1(n417), .A2(n6), .ZN(L1_p2[16]) );
  AOI21D0 U467 ( .A1(n404), .A2(n403), .B(n402), .ZN(n412) );
  MUX2ND0 U468 ( .I0(n406), .I1(n405), .S(n412), .ZN(n461) );
  AOI22D0 U469 ( .A1(n31), .A2(n80), .B1(n82), .B2(n407), .ZN(n410) );
  OAI211D0 U470 ( .A1(n461), .A2(n23), .B(n410), .C(n409), .ZN(n110) );
  NR2D0 U471 ( .A1(n417), .A2(n74), .ZN(L1_p2[17]) );
  NR2D0 U472 ( .A1(n413), .A2(n412), .ZN(n428) );
  NR2D0 U473 ( .A1(n414), .A2(n428), .ZN(n422) );
  CKND2D0 U474 ( .A1(n422), .A2(n436), .ZN(n427) );
  OAI211D0 U475 ( .A1(n12), .A2(n11), .B(n429), .C(n418), .ZN(n415) );
  OAI211D0 U476 ( .A1(n49), .A2(n416), .B(n427), .C(n415), .ZN(n106) );
  NR2D0 U477 ( .A1(n417), .A2(n76), .ZN(L1_p2[18]) );
  AOI22D0 U478 ( .A1(n435), .A2(x_sub_y[22]), .B1(n419), .B2(n418), .ZN(n420)
         );
  OAI21D0 U479 ( .A1(n428), .A2(n460), .B(n420), .ZN(n108) );
  NR2D0 U480 ( .A1(n421), .A2(n3), .ZN(L1_p2[19]) );
  INVD0 U481 ( .I(n422), .ZN(n425) );
  OAI21D0 U482 ( .A1(Mantissa_Y[20]), .A2(n94), .B(n204), .ZN(n424) );
  MOAI22D0 U483 ( .A1(n425), .A2(n33), .B1(x_sub_y[23]), .B2(n424), .ZN(n104)
         );
  AOI32D0 U484 ( .A1(n11), .A2(n427), .A3(n426), .B1(n18), .B2(n427), .ZN(n105) );
  OAI22D0 U485 ( .A1(n428), .A2(n88), .B1(n12), .B2(n18), .ZN(n107) );
  NR2D0 U486 ( .A1(n429), .A2(n81), .ZN(L1_p2[21]) );
  INVD0 U487 ( .I(n80), .ZN(n458) );
  NR2D0 U488 ( .A1(n429), .A2(n8), .ZN(L1_p2[20]) );
  IND2D0 U489 ( .A1(n431), .B1(n430), .ZN(x_sub_y[0]) );
  NR2D0 U490 ( .A1(Mantissa_Y[22]), .A2(n432), .ZN(L1_p2[1]) );
  INVD0 U491 ( .I(x_sub_y[4]), .ZN(n434) );
  NR2D0 U492 ( .A1(Mantissa_Y[22]), .A2(n434), .ZN(L1_p2[3]) );
  OAI222D0 U493 ( .A1(n26), .A2(n434), .B1(n186), .B2(n433), .C1(n204), .C2(n1), .ZN(n164) );
  OAI222D0 U494 ( .A1(n179), .A2(n439), .B1(n185), .B2(n438), .C1(n206), .C2(
        n434), .ZN(n162) );
  CKND2D0 U495 ( .A1(n435), .A2(n95), .ZN(n464) );
  OAI222D0 U496 ( .A1(n166), .A2(n35), .B1(n195), .B2(n438), .C1(n439), .C2(
        n99), .ZN(n160) );
  OAI222D0 U497 ( .A1(n177), .A2(n53), .B1(n87), .B2(n440), .C1(n207), .C2(
        n439), .ZN(n159) );
  OAI222D0 U498 ( .A1(n103), .A2(n36), .B1(n33), .B2(n440), .C1(n35), .C2(n99), 
        .ZN(n157) );
  OAI222D0 U499 ( .A1(n176), .A2(n36), .B1(n88), .B2(n441), .C1(n93), .C2(n35), 
        .ZN(n156) );
  OAI222D0 U500 ( .A1(n102), .A2(n37), .B1(n198), .B2(n441), .C1(n36), .C2(n98), .ZN(n154) );
  OAI222D0 U501 ( .A1(n178), .A2(n37), .B1(n88), .B2(n442), .C1(n205), .C2(n55), .ZN(n153) );
  OAI222D0 U502 ( .A1(n103), .A2(n38), .B1(n196), .B2(n442), .C1(n37), .C2(n20), .ZN(n151) );
  OAI222D0 U503 ( .A1(n179), .A2(n38), .B1(n185), .B2(n443), .C1(n206), .C2(
        n37), .ZN(n150) );
  OAI222D0 U504 ( .A1(n101), .A2(n40), .B1(n197), .B2(n443), .C1(n38), .C2(n97), .ZN(n148) );
  OAI222D0 U505 ( .A1(n27), .A2(n40), .B1(n186), .B2(n444), .C1(n207), .C2(n38), .ZN(n147) );
  OAI222D0 U506 ( .A1(n101), .A2(n41), .B1(n198), .B2(n444), .C1(n40), .C2(n21), .ZN(n145) );
  OAI222D0 U507 ( .A1(n177), .A2(n41), .B1(n187), .B2(n445), .C1(n92), .C2(n40), .ZN(n144) );
  OAI222D0 U508 ( .A1(n102), .A2(n42), .B1(n34), .B2(n445), .C1(n41), .C2(n98), 
        .ZN(n142) );
  OAI222D0 U509 ( .A1(n176), .A2(n42), .B1(n87), .B2(n446), .C1(n204), .C2(n41), .ZN(n141) );
  OAI222D0 U510 ( .A1(n103), .A2(n44), .B1(n196), .B2(n446), .C1(n42), .C2(n99), .ZN(n139) );
  OAI222D0 U511 ( .A1(n178), .A2(n44), .B1(n87), .B2(n447), .C1(n205), .C2(n42), .ZN(n138) );
  OAI222D0 U512 ( .A1(n166), .A2(n45), .B1(n195), .B2(n447), .C1(n44), .C2(n21), .ZN(n136) );
  OAI222D0 U513 ( .A1(n26), .A2(n45), .B1(n185), .B2(n448), .C1(n206), .C2(n44), .ZN(n135) );
  OAI222D0 U514 ( .A1(n166), .A2(n46), .B1(n197), .B2(n448), .C1(n45), .C2(n20), .ZN(n133) );
  OAI222D0 U515 ( .A1(n179), .A2(n46), .B1(n186), .B2(n449), .C1(n93), .C2(n45), .ZN(n132) );
  OAI222D0 U516 ( .A1(n101), .A2(n47), .B1(n33), .B2(n449), .C1(n46), .C2(n97), 
        .ZN(n130) );
  OAI222D0 U517 ( .A1(n177), .A2(n47), .B1(n88), .B2(n450), .C1(n207), .C2(n46), .ZN(n129) );
  OAI222D0 U518 ( .A1(n102), .A2(n453), .B1(n198), .B2(n450), .C1(n47), .C2(
        n98), .ZN(n127) );
  OAI222D0 U519 ( .A1(n176), .A2(n453), .B1(n187), .B2(n452), .C1(n204), .C2(
        n47), .ZN(n126) );
  OAI222D0 U520 ( .A1(n103), .A2(n48), .B1(n196), .B2(n452), .C1(n453), .C2(
        n99), .ZN(n124) );
  OAI222D0 U521 ( .A1(n27), .A2(n48), .B1(n460), .B2(n454), .C1(n205), .C2(
        n453), .ZN(n123) );
  OAI222D0 U522 ( .A1(n464), .A2(n50), .B1(n195), .B2(n454), .C1(n48), .C2(n21), .ZN(n121) );
  OAI222D0 U523 ( .A1(n178), .A2(n50), .B1(n185), .B2(n455), .C1(n92), .C2(n48), .ZN(n120) );
  OAI222D0 U524 ( .A1(n166), .A2(n52), .B1(n34), .B2(n455), .C1(n50), .C2(n21), 
        .ZN(n118) );
  OAI222D0 U525 ( .A1(n179), .A2(n52), .B1(n87), .B2(n456), .C1(n206), .C2(n50), .ZN(n117) );
  OAI222D0 U526 ( .A1(n101), .A2(n458), .B1(n197), .B2(n456), .C1(n97), .C2(
        n52), .ZN(n115) );
  OAI222D0 U527 ( .A1(n177), .A2(n458), .B1(n186), .B2(n457), .C1(n207), .C2(
        n52), .ZN(n114) );
  OAI222D0 U528 ( .A1(n102), .A2(n49), .B1(n198), .B2(n457), .C1(n98), .C2(
        n458), .ZN(n112) );
  OAI222D0 U529 ( .A1(n26), .A2(n49), .B1(n187), .B2(n461), .C1(n93), .C2(n458), .ZN(n111) );
  OAI222D0 U530 ( .A1(n464), .A2(n18), .B1(n49), .B2(n20), .C1(n196), .C2(n461), .ZN(n109) );
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
  BUFFD0 U2 ( .I(y[0]), .Z(mantissa_y[0]) );
  BUFFD0 U3 ( .I(y[9]), .Z(mantissa_y[9]) );
  BUFFD0 U4 ( .I(y[10]), .Z(mantissa_y[10]) );
  BUFFD0 U5 ( .I(y[14]), .Z(mantissa_y[14]) );
  BUFFD0 U6 ( .I(y[5]), .Z(mantissa_y[5]) );
  BUFFD0 U7 ( .I(y[1]), .Z(mantissa_y[1]) );
  BUFFD0 U8 ( .I(y[22]), .Z(mantissa_y[22]) );
  BUFFD0 U9 ( .I(y[20]), .Z(mantissa_y[20]) );
  BUFFD0 U10 ( .I(mantissa_out[0]), .Z(out0[0]) );
  BUFFD0 U11 ( .I(mantissa_out[2]), .Z(out0[2]) );
  BUFFD0 U12 ( .I(mantissa_out[17]), .Z(out0[17]) );
  BUFFD0 U13 ( .I(x[22]), .Z(mantissa_x[22]) );
  BUFFD0 U14 ( .I(x[21]), .Z(mantissa_x[21]) );
  BUFFD0 U15 ( .I(x[20]), .Z(mantissa_x[20]) );
  BUFFD0 U16 ( .I(x[19]), .Z(mantissa_x[19]) );
  BUFFD0 U17 ( .I(x[18]), .Z(mantissa_x[18]) );
  BUFFD0 U18 ( .I(x[17]), .Z(mantissa_x[17]) );
  BUFFD0 U19 ( .I(x[16]), .Z(mantissa_x[16]) );
  BUFFD0 U20 ( .I(x[15]), .Z(mantissa_x[15]) );
  BUFFD0 U21 ( .I(x[14]), .Z(mantissa_x[14]) );
  BUFFD0 U22 ( .I(x[13]), .Z(mantissa_x[13]) );
  BUFFD0 U23 ( .I(x[12]), .Z(mantissa_x[12]) );
  BUFFD0 U24 ( .I(x[11]), .Z(mantissa_x[11]) );
  BUFFD0 U25 ( .I(x[10]), .Z(mantissa_x[10]) );
  BUFFD0 U26 ( .I(x[9]), .Z(mantissa_x[9]) );
  BUFFD0 U27 ( .I(x[8]), .Z(mantissa_x[8]) );
  BUFFD0 U28 ( .I(x[7]), .Z(mantissa_x[7]) );
  BUFFD0 U29 ( .I(x[6]), .Z(mantissa_x[6]) );
  BUFFD0 U30 ( .I(x[5]), .Z(mantissa_x[5]) );
  BUFFD0 U31 ( .I(x[4]), .Z(mantissa_x[4]) );
  BUFFD0 U32 ( .I(x[3]), .Z(mantissa_x[3]) );
  BUFFD0 U33 ( .I(x[2]), .Z(mantissa_x[2]) );
  BUFFD0 U34 ( .I(x[1]), .Z(mantissa_x[1]) );
  BUFFD0 U35 ( .I(x[0]), .Z(mantissa_x[0]) );
  BUFFD0 U36 ( .I(mantissa_out[1]), .Z(out0[1]) );
  BUFFD0 U37 ( .I(mantissa_out[3]), .Z(out0[3]) );
  BUFFD0 U38 ( .I(mantissa_out[4]), .Z(out0[4]) );
  BUFFD0 U39 ( .I(mantissa_out[5]), .Z(out0[5]) );
  BUFFD0 U40 ( .I(mantissa_out[6]), .Z(out0[6]) );
  BUFFD0 U41 ( .I(mantissa_out[7]), .Z(out0[7]) );
  BUFFD0 U42 ( .I(mantissa_out[8]), .Z(out0[8]) );
  BUFFD0 U43 ( .I(mantissa_out[9]), .Z(out0[9]) );
  BUFFD0 U44 ( .I(mantissa_out[10]), .Z(out0[10]) );
  BUFFD0 U45 ( .I(mantissa_out[11]), .Z(out0[11]) );
  BUFFD0 U46 ( .I(mantissa_out[12]), .Z(out0[12]) );
  BUFFD0 U47 ( .I(mantissa_out[13]), .Z(out0[13]) );
  BUFFD0 U48 ( .I(mantissa_out[14]), .Z(out0[14]) );
  BUFFD0 U49 ( .I(mantissa_out[15]), .Z(out0[15]) );
  BUFFD0 U50 ( .I(mantissa_out[16]), .Z(out0[16]) );
  BUFFD0 U51 ( .I(mantissa_out[18]), .Z(out0[18]) );
  BUFFD0 U52 ( .I(mantissa_out[19]), .Z(out0[19]) );
  BUFFD0 U53 ( .I(mantissa_out[20]), .Z(out0[20]) );
  BUFFD0 U54 ( .I(mantissa_out[21]), .Z(out0[21]) );
  BUFFD0 U55 ( .I(mantissa_out[22]), .Z(out0[22]) );
  BUFFD0 U56 ( .I(y[2]), .Z(mantissa_y[2]) );
  BUFFD0 U57 ( .I(y[3]), .Z(mantissa_y[3]) );
  BUFFD0 U58 ( .I(y[4]), .Z(mantissa_y[4]) );
  BUFFD0 U59 ( .I(y[6]), .Z(mantissa_y[6]) );
  BUFFD0 U60 ( .I(y[7]), .Z(mantissa_y[7]) );
  BUFFD0 U61 ( .I(y[8]), .Z(mantissa_y[8]) );
  BUFFD0 U62 ( .I(y[11]), .Z(mantissa_y[11]) );
  BUFFD0 U63 ( .I(y[12]), .Z(mantissa_y[12]) );
  BUFFD0 U64 ( .I(y[13]), .Z(mantissa_y[13]) );
  BUFFD0 U65 ( .I(y[15]), .Z(mantissa_y[15]) );
  BUFFD0 U66 ( .I(y[16]), .Z(mantissa_y[16]) );
  BUFFD0 U67 ( .I(y[17]), .Z(mantissa_y[17]) );
  BUFFD0 U68 ( .I(y[18]), .Z(mantissa_y[18]) );
  BUFFD0 U69 ( .I(y[19]), .Z(mantissa_y[19]) );
  BUFFD0 U70 ( .I(y[21]), .Z(mantissa_y[21]) );
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


module pace_fp32_l3 ( x, y, out0 );
  input [31:0] x;
  input [31:0] y;
  output [31:0] out0;
  wire   shift, n2;
  wire   [22:0] mantissa_x;
  wire   [22:0] mantissa_y;
  wire   [22:0] mantissa_out;

  Mantissa_Div_L3_MANTISSA_WIDTH23 mantissa_div ( .Mantissa_X(mantissa_x), 
        .Mantissa_Y(mantissa_y), .Mantissa_Out(mantissa_out), .Shift(shift) );
  FP_DIV_WRAPPER_32 fp_wrapper ( .x(x), .y(y), .out0(out0), .mantissa_x(
        mantissa_x), .mantissa_y(mantissa_y), .mantissa_out(mantissa_out), 
        .shift(n2) );
  INVD0 U2 ( .I(shift), .ZN(n2) );
endmodule

