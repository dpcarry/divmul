/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Thu Aug 20 03:20:22 2026
/////////////////////////////////////////////////////////////


module CSA3_2_Array_WIDTH25_3 ( In_1, In_2, In_3, S, C );
  input [24:0] In_1;
  input [24:0] In_2;
  input [24:0] In_3;
  output [24:0] S;
  output [24:0] C;
  wire   n26;

  OAI21D0 U1 ( .A1(In_3[24]), .A2(In_2[24]), .B(n26), .ZN(S[24]) );
  IAO21D1 U2 ( .A1(In_3[19]), .A2(In_2[19]), .B(C[19]), .ZN(S[19]) );
  CKAN2D0 U3 ( .A1(In_3[17]), .A2(In_2[17]), .Z(C[17]) );
  CKAN2D0 U4 ( .A1(In_3[16]), .A2(In_2[16]), .Z(C[16]) );
  CKAN2D0 U5 ( .A1(In_3[15]), .A2(In_2[15]), .Z(C[15]) );
  CKAN2D0 U6 ( .A1(In_3[14]), .A2(In_2[14]), .Z(C[14]) );
  CKAN2D0 U7 ( .A1(In_3[13]), .A2(In_2[13]), .Z(C[13]) );
  IAO21D1 U8 ( .A1(In_3[20]), .A2(In_2[20]), .B(C[20]), .ZN(S[20]) );
  AN2XD1 U9 ( .A1(In_3[19]), .A2(In_2[19]), .Z(C[19]) );
  AN2D0 U10 ( .A1(In_3[18]), .A2(In_2[18]), .Z(C[18]) );
  IAO21D0 U11 ( .A1(In_3[18]), .A2(In_2[18]), .B(C[18]), .ZN(S[18]) );
  INVD0 U12 ( .I(n26), .ZN(C[23]) );
  CKND2D1 U13 ( .A1(In_3[24]), .A2(In_2[24]), .ZN(n26) );
  IAO21D0 U14 ( .A1(In_3[17]), .A2(In_2[17]), .B(C[17]), .ZN(S[17]) );
  IAO21D0 U15 ( .A1(In_3[16]), .A2(In_2[16]), .B(C[16]), .ZN(S[16]) );
  IAO21D0 U16 ( .A1(In_3[15]), .A2(In_2[15]), .B(C[15]), .ZN(S[15]) );
  IAO21D0 U17 ( .A1(In_3[14]), .A2(In_2[14]), .B(C[14]), .ZN(S[14]) );
  IAO21D0 U18 ( .A1(In_3[13]), .A2(In_2[13]), .B(C[13]), .ZN(S[13]) );
  CKAN2D0 U19 ( .A1(In_3[0]), .A2(In_2[0]), .Z(C[0]) );
  CKAN2D0 U20 ( .A1(In_3[1]), .A2(In_2[1]), .Z(C[1]) );
  CKAN2D0 U21 ( .A1(In_3[2]), .A2(In_2[2]), .Z(C[2]) );
  CKAN2D0 U22 ( .A1(In_3[3]), .A2(In_2[3]), .Z(C[3]) );
  CKAN2D0 U23 ( .A1(In_3[4]), .A2(In_2[4]), .Z(C[4]) );
  CKAN2D0 U24 ( .A1(In_3[5]), .A2(In_2[5]), .Z(C[5]) );
  CKAN2D0 U25 ( .A1(In_3[6]), .A2(In_2[6]), .Z(C[6]) );
  CKAN2D0 U26 ( .A1(In_3[7]), .A2(In_2[7]), .Z(C[7]) );
  CKAN2D0 U27 ( .A1(In_3[8]), .A2(In_2[8]), .Z(C[8]) );
  CKAN2D0 U28 ( .A1(In_3[9]), .A2(In_2[9]), .Z(C[9]) );
  CKAN2D0 U29 ( .A1(In_3[10]), .A2(In_2[10]), .Z(C[10]) );
  CKAN2D0 U30 ( .A1(In_3[11]), .A2(In_2[11]), .Z(C[11]) );
  CKAN2D0 U31 ( .A1(In_3[12]), .A2(In_2[12]), .Z(C[12]) );
  INVD1 U32 ( .I(S[24]), .ZN(S[23]) );
  AN2XD1 U33 ( .A1(In_3[24]), .A2(In_2[22]), .Z(C[22]) );
  AN2XD1 U34 ( .A1(In_3[21]), .A2(In_2[21]), .Z(C[21]) );
  AN2XD1 U35 ( .A1(In_3[20]), .A2(In_2[20]), .Z(C[20]) );
  IAO21D0 U36 ( .A1(In_3[0]), .A2(In_2[0]), .B(C[0]), .ZN(S[0]) );
  IAO21D0 U37 ( .A1(In_3[1]), .A2(In_2[1]), .B(C[1]), .ZN(S[1]) );
  IAO21D0 U38 ( .A1(In_3[2]), .A2(In_2[2]), .B(C[2]), .ZN(S[2]) );
  IAO21D0 U39 ( .A1(In_3[3]), .A2(In_2[3]), .B(C[3]), .ZN(S[3]) );
  IAO21D0 U40 ( .A1(In_3[4]), .A2(In_2[4]), .B(C[4]), .ZN(S[4]) );
  IAO21D0 U41 ( .A1(In_3[5]), .A2(In_2[5]), .B(C[5]), .ZN(S[5]) );
  IAO21D0 U42 ( .A1(In_3[6]), .A2(In_2[6]), .B(C[6]), .ZN(S[6]) );
  IAO21D0 U43 ( .A1(In_3[7]), .A2(In_2[7]), .B(C[7]), .ZN(S[7]) );
  IAO21D0 U44 ( .A1(In_3[8]), .A2(In_2[8]), .B(C[8]), .ZN(S[8]) );
  IAO21D0 U45 ( .A1(In_3[9]), .A2(In_2[9]), .B(C[9]), .ZN(S[9]) );
  IAO21D0 U46 ( .A1(In_3[10]), .A2(In_2[10]), .B(C[10]), .ZN(S[10]) );
  IAO21D0 U47 ( .A1(In_3[11]), .A2(In_2[11]), .B(C[11]), .ZN(S[11]) );
  IAO21D0 U48 ( .A1(In_3[12]), .A2(In_2[12]), .B(C[12]), .ZN(S[12]) );
  IAO21D1 U49 ( .A1(In_3[24]), .A2(In_2[22]), .B(C[22]), .ZN(S[22]) );
  IAO21D1 U50 ( .A1(In_3[21]), .A2(In_2[21]), .B(C[21]), .ZN(S[21]) );
endmodule


module CSA3_2_Array_WIDTH25_2 ( In_1, In_2, In_3, S, C );
  input [24:0] In_1;
  input [24:0] In_2;
  input [24:0] In_3;
  output [24:0] S;
  output [24:0] C;


  FA1D0 U1 ( .A(In_1[24]), .B(In_2[24]), .CI(In_3[24]), .CO(C[21]), .S(S[21])
         );
  BUFFD1 U2 ( .I(S[21]), .Z(S[24]) );
  BUFFD1 U3 ( .I(C[21]), .Z(C[22]) );
  BUFFD1 U4 ( .I(C[21]), .Z(C[23]) );
  BUFFD1 U5 ( .I(S[21]), .Z(S[23]) );
  CKBD1 U6 ( .I(S[21]), .Z(S[22]) );
  FA1D0 U7 ( .A(In_2[13]), .B(In_1[13]), .CI(In_3[13]), .CO(C[13]), .S(S[13])
         );
  FA1D0 U8 ( .A(In_2[16]), .B(In_1[16]), .CI(In_3[16]), .CO(C[16]), .S(S[16])
         );
  FA1D0 U9 ( .A(In_2[17]), .B(In_1[17]), .CI(In_3[17]), .CO(C[17]), .S(S[17])
         );
  FA1D0 U10 ( .A(In_2[14]), .B(In_1[14]), .CI(In_3[14]), .CO(C[14]), .S(S[14])
         );
  FA1D0 U11 ( .A(In_1[20]), .B(In_2[24]), .CI(In_3[24]), .CO(C[20]), .S(S[20])
         );
  FA1D0 U12 ( .A(In_2[19]), .B(In_1[19]), .CI(In_3[24]), .CO(C[19]), .S(S[19])
         );
  FA1D0 U13 ( .A(In_2[18]), .B(In_1[18]), .CI(In_3[24]), .CO(C[18]), .S(S[18])
         );
  FA1D0 U14 ( .A(In_2[15]), .B(In_1[15]), .CI(In_3[15]), .CO(C[15]), .S(S[15])
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


  XOR3D1 U1 ( .A1(In_3[24]), .A2(In_1[24]), .A3(In_2[24]), .Z(S[24]) );
  FA1D0 U2 ( .A(In_2[17]), .B(In_1[17]), .CI(In_3[17]), .CO(C[17]), .S(S[17])
         );
  CKAN2D0 U3 ( .A1(In_3[0]), .A2(In_1[0]), .Z(C[0]) );
  IAO21D0 U4 ( .A1(In_3[0]), .A2(In_1[0]), .B(C[0]), .ZN(S[0]) );
  FA1D0 U5 ( .A(In_2[15]), .B(In_1[15]), .CI(In_3[15]), .CO(C[15]), .S(S[15])
         );
  FA1D0 U6 ( .A(In_2[14]), .B(In_1[14]), .CI(In_3[14]), .CO(C[14]), .S(S[14])
         );
  FA1D0 U7 ( .A(In_2[16]), .B(In_1[16]), .CI(In_3[16]), .CO(C[16]), .S(S[16])
         );
  FA1D0 U8 ( .A(In_2[23]), .B(In_1[23]), .CI(In_3[23]), .CO(C[23]), .S(S[23])
         );
  FA1D0 U9 ( .A(In_2[22]), .B(In_1[22]), .CI(In_3[22]), .CO(C[22]), .S(S[22])
         );
  FA1D0 U10 ( .A(In_2[21]), .B(In_1[21]), .CI(In_3[21]), .CO(C[21]), .S(S[21])
         );
  FA1D0 U11 ( .A(In_2[20]), .B(In_1[20]), .CI(In_3[20]), .CO(C[20]), .S(S[20])
         );
  FA1D0 U12 ( .A(In_2[19]), .B(In_1[19]), .CI(In_3[19]), .CO(C[19]), .S(S[19])
         );
  FA1D0 U13 ( .A(In_2[18]), .B(In_1[18]), .CI(In_3[18]), .CO(C[18]), .S(S[18])
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


  FA1D0 U1 ( .A(In_2[23]), .B(In_1[23]), .CI(In_3[23]), .CO(C[23]), .S(S[23])
         );
  BUFFD0 U2 ( .I(In_1[0]), .Z(S[0]) );
  XOR3D1 U3 ( .A1(In_3[24]), .A2(In_1[24]), .A3(In_2[24]), .Z(S[24]) );
  FA1D0 U4 ( .A(In_2[22]), .B(In_1[22]), .CI(In_3[22]), .CO(C[22]), .S(S[22])
         );
  FA1D0 U5 ( .A(In_2[13]), .B(In_1[13]), .CI(In_3[13]), .CO(C[13]), .S(S[13])
         );
  FA1D0 U6 ( .A(In_2[16]), .B(In_1[16]), .CI(In_3[16]), .CO(C[16]), .S(S[16])
         );
  FA1D0 U7 ( .A(In_2[17]), .B(In_1[17]), .CI(In_3[17]), .CO(C[17]), .S(S[17])
         );
  FA1D0 U8 ( .A(In_2[15]), .B(In_1[15]), .CI(In_3[15]), .CO(C[15]), .S(S[15])
         );
  FA1D0 U9 ( .A(In_2[14]), .B(In_3[14]), .CI(In_1[14]), .CO(C[14]), .S(S[14])
         );
  FA1D0 U10 ( .A(In_2[21]), .B(In_1[21]), .CI(In_3[21]), .CO(C[21]), .S(S[21])
         );
  FA1D0 U11 ( .A(In_2[20]), .B(In_1[20]), .CI(In_3[20]), .CO(C[20]), .S(S[20])
         );
  FA1D0 U12 ( .A(In_2[19]), .B(In_1[19]), .CI(In_3[19]), .CO(C[19]), .S(S[19])
         );
  FA1D0 U13 ( .A(In_2[18]), .B(In_1[18]), .CI(In_3[18]), .CO(C[18]), .S(S[18])
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
         intadd_0_n1, n1, n2, n3, n4, n6, n7, n8, n9, n10, n11, n12, n13, n14,
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
         n459, n460, n461, n462, n463, n464, n465, n466, n467, n468, n469,
         n470, n471, n472;
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
        n81, n50, n79, n76, x_sub_y[18], n73, n71, n69, n67, n65, n63, n61, 
        n58, n56, n53, x_sub_y[7], n451, n9, n7, n6, x_sub_y[2:0]}), .In_3({
        L1_p2[24], 1'b0, 1'b0, L1_p2[21:0]}), .S(A11S), .C({
        SYNOPSYS_UNCONNECTED__0, A11C}) );
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
  BUFFD1 U3 ( .I(n248), .Z(n246) );
  MAOI222D1 U4 ( .A(Mantissa_X[16]), .B(n385), .C(n362), .ZN(n396) );
  MAOI222D1 U5 ( .A(Mantissa_X[19]), .B(n390), .C(n392), .ZN(n403) );
  MAOI222D1 U6 ( .A(Mantissa_X[12]), .B(n347), .C(n324), .ZN(n358) );
  MAOI222D1 U7 ( .A(Mantissa_X[8]), .B(n311), .C(n286), .ZN(n321) );
  MAOI222D1 U8 ( .A(Mantissa_Y[7]), .B(n273), .C(n302), .ZN(n311) );
  MAOI222D1 U9 ( .A(Mantissa_Y[8]), .B(n289), .C(n287), .ZN(n298) );
  MAOI222D1 U10 ( .A(Mantissa_Y[1]), .B(n285), .C(n443), .ZN(n220) );
  OR2D0 U12 ( .A1(n264), .A2(Mantissa_Y[4]), .Z(n208) );
  INVD0 U13 ( .I(Mantissa_Y[9]), .ZN(n296) );
  MAOI222D1 U14 ( .A(Mantissa_Y[12]), .B(n327), .C(n325), .ZN(n335) );
  INVD0 U15 ( .I(Mantissa_X[18]), .ZN(n381) );
  INVD0 U16 ( .I(Mantissa_Y[5]), .ZN(n276) );
  OAI22D0 U17 ( .A1(n211), .A2(n257), .B1(Mantissa_X[6]), .B2(n291), .ZN(n302)
         );
  OAI22D0 U18 ( .A1(n321), .A2(n210), .B1(n297), .B2(Mantissa_Y[9]), .ZN(n329)
         );
  MAOI222D1 U19 ( .A(Mantissa_Y[11]), .B(n316), .C(n339), .ZN(n347) );
  MAOI222D1 U20 ( .A(Mantissa_Y[18]), .B(n383), .C(n381), .ZN(n392) );
  INVD0 U21 ( .I(n269), .ZN(n98) );
  AOI22D0 U22 ( .A1(n189), .A2(n50), .B1(n170), .B2(n76), .ZN(n413) );
  AOI22D0 U23 ( .A1(n190), .A2(n81), .B1(n171), .B2(x_sub_y[20]), .ZN(n418) );
  INVD0 U24 ( .I(n82), .ZN(n29) );
  OAI211D0 U25 ( .A1(n461), .A2(n173), .B(n388), .C(n387), .ZN(n128) );
  OAI211D0 U26 ( .A1(n465), .A2(n175), .B(n418), .C(n417), .ZN(n116) );
  INVD0 U27 ( .I(n184), .ZN(n83) );
  CKBD1 U28 ( .I(Shift), .Z(n248) );
  INVD0 U29 ( .I(n83), .ZN(n85) );
  AO222D0 U30 ( .A1(n252), .A2(n253), .B1(Res[1]), .B2(n202), .C1(n84), .C2(
        intadd_0_SUM_0_), .Z(Mantissa_Out[1]) );
  AO222D0 U31 ( .A1(n249), .A2(intadd_0_SUM_9_), .B1(n183), .B2(
        intadd_0_SUM_10_), .C1(n203), .C2(intadd_0_SUM_8_), .Z(
        Mantissa_Out[11]) );
  NR2D0 U32 ( .A1(n94), .A2(n97), .ZN(n428) );
  MUX2D0 U33 ( .I0(n279), .I1(n278), .S(n280), .Z(n1) );
  MUX2D0 U34 ( .I0(n393), .I1(n392), .S(n409), .Z(n2) );
  INVD0 U35 ( .I(x_sub_y[21]), .ZN(n31) );
  INVD0 U36 ( .I(x_sub_y[21]), .ZN(n49) );
  INVD0 U37 ( .I(n2), .ZN(n77) );
  INVD0 U38 ( .I(n77), .ZN(n47) );
  MUX2D0 U39 ( .I0(n289), .I1(n288), .S(n310), .Z(n3) );
  INVD0 U40 ( .I(n78), .ZN(n79) );
  INVD0 U41 ( .I(n79), .ZN(n48) );
  INVD0 U42 ( .I(x_sub_y[20]), .ZN(n78) );
  INVD0 U43 ( .I(n255), .ZN(n200) );
  INVD0 U44 ( .I(n89), .ZN(n91) );
  INVD0 U45 ( .I(n89), .ZN(n90) );
  INVD0 U46 ( .I(x_sub_y[17]), .ZN(n72) );
  MUX2D0 U47 ( .I0(n239), .I1(n238), .S(n245), .Z(n4) );
  INVD0 U48 ( .I(x_sub_y[18]), .ZN(n74) );
  NR2XD0 U49 ( .A1(n432), .A2(n47), .ZN(L1_p2[18]) );
  INVD0 U50 ( .I(n75), .ZN(n46) );
  INVD0 U51 ( .I(n73), .ZN(n45) );
  AN2D0 U52 ( .A1(A31C[1]), .A2(A31S[2]), .Z(intadd_0_CI) );
  CKAN2D1 U53 ( .A1(n329), .A2(Mantissa_X[10]), .Z(n209) );
  CKAN2D0 U54 ( .A1(n291), .A2(Mantissa_X[6]), .Z(n211) );
  CKND2D0 U55 ( .A1(Mantissa_X[21]), .A2(n95), .ZN(n225) );
  NR2XD0 U56 ( .A1(n96), .A2(Mantissa_X[21]), .ZN(n224) );
  CKAN2D0 U57 ( .A1(n297), .A2(Mantissa_Y[9]), .Z(n210) );
  INVD0 U58 ( .I(n435), .ZN(n96) );
  BUFFD1 U59 ( .I(n419), .Z(n399) );
  AN2D0 U60 ( .A1(n276), .A2(Mantissa_X[5]), .Z(n214) );
  INVD1 U61 ( .I(Mantissa_Y[7]), .ZN(n272) );
  INVD1 U62 ( .I(Mantissa_X[6]), .ZN(n258) );
  INR2D0 U63 ( .A1(Mantissa_Y[3]), .B1(Mantissa_X[3]), .ZN(n237) );
  INVD1 U64 ( .I(Mantissa_X[8]), .ZN(n287) );
  INVD0 U65 ( .I(Mantissa_Y[0]), .ZN(n218) );
  INVD1 U66 ( .I(Mantissa_X[9]), .ZN(n297) );
  AO222D1 U67 ( .A1(n249), .A2(intadd_0_SUM_10_), .B1(n85), .B2(
        intadd_0_SUM_11_), .C1(n90), .C2(intadd_0_SUM_9_), .Z(Mantissa_Out[12]) );
  AO222D1 U68 ( .A1(n251), .A2(intadd_0_SUM_1_), .B1(n85), .B2(intadd_0_SUM_2_), .C1(n255), .C2(intadd_0_SUM_0_), .Z(Mantissa_Out[3]) );
  AO222D1 U69 ( .A1(n247), .A2(intadd_0_SUM_13_), .B1(n84), .B2(
        intadd_0_SUM_14_), .C1(n203), .C2(intadd_0_SUM_12_), .Z(
        Mantissa_Out[15]) );
  AO222D1 U70 ( .A1(n250), .A2(intadd_0_SUM_5_), .B1(n84), .B2(intadd_0_SUM_6_), .C1(n201), .C2(intadd_0_SUM_4_), .Z(Mantissa_Out[7]) );
  AO222D1 U71 ( .A1(n247), .A2(intadd_0_SUM_16_), .B1(n181), .B2(
        intadd_0_SUM_17_), .C1(n91), .C2(intadd_0_SUM_15_), .Z(
        Mantissa_Out[18]) );
  CKBD1 U72 ( .I(n246), .Z(n252) );
  FA1D0 U73 ( .A(A31C[19]), .B(A31S[20]), .CI(intadd_0_n5), .CO(intadd_0_n4), 
        .S(intadd_0_SUM_17_) );
  NR2D1 U74 ( .A1(n441), .A2(n31), .ZN(L1_p2[20]) );
  CKND2D0 U75 ( .A1(x_sub_y[23]), .A2(n23), .ZN(n424) );
  ND2D1 U76 ( .A1(n434), .A2(n428), .ZN(n439) );
  NR2D0 U77 ( .A1(n432), .A2(n46), .ZN(L1_p2[17]) );
  NR2D0 U78 ( .A1(n432), .A2(n45), .ZN(L1_p2[16]) );
  NR2D0 U79 ( .A1(n432), .A2(n70), .ZN(L1_p2[15]) );
  INVD0 U80 ( .I(n74), .ZN(n75) );
  NR2D0 U81 ( .A1(n433), .A2(n68), .ZN(L1_p2[14]) );
  INVD0 U82 ( .I(n68), .ZN(n69) );
  BUFFD0 U83 ( .I(x_sub_y[6]), .Z(n451) );
  BUFFD0 U84 ( .I(n428), .Z(n426) );
  CKAN2D0 U85 ( .A1(n241), .A2(n97), .Z(n467) );
  CKND2D1 U86 ( .A1(n213), .A2(n208), .ZN(n278) );
  CKAN2D0 U87 ( .A1(n240), .A2(Mantissa_Y[20]), .Z(n466) );
  NR2D0 U88 ( .A1(n427), .A2(n232), .ZN(n222) );
  CKAN2D0 U89 ( .A1(n438), .A2(n96), .Z(n469) );
  CKAN2D0 U90 ( .A1(n305), .A2(n95), .Z(n472) );
  FA1D0 U91 ( .A(Mantissa_Y[2]), .B(n235), .CI(n234), .CO(n239), .S(n445) );
  NR2XD0 U92 ( .A1(n218), .A2(Mantissa_X[0]), .ZN(n444) );
  NR2D0 U93 ( .A1(n221), .A2(Mantissa_Y[3]), .ZN(n236) );
  INVD0 U94 ( .I(n269), .ZN(n97) );
  CKAN2D0 U95 ( .A1(n277), .A2(Mantissa_Y[5]), .Z(n212) );
  CKND2D0 U96 ( .A1(Mantissa_X[0]), .A2(n218), .ZN(n443) );
  INVD1 U97 ( .I(Mantissa_X[14]), .ZN(n343) );
  INVD1 U98 ( .I(Mantissa_X[1]), .ZN(n285) );
  INVD1 U99 ( .I(Mantissa_X[10]), .ZN(n307) );
  CKBD1 U100 ( .I(Mantissa_Y[20]), .Z(n269) );
  CKBD1 U101 ( .I(Mantissa_Y[21]), .Z(n435) );
  INVD1 U102 ( .I(Mantissa_Y[11]), .ZN(n315) );
  INVD1 U103 ( .I(Mantissa_X[12]), .ZN(n325) );
  AO222D0 U104 ( .A1(n252), .A2(intadd_0_SUM_0_), .B1(n85), .B2(
        intadd_0_SUM_1_), .C1(n203), .C2(n253), .Z(Mantissa_Out[2]) );
  AO222D0 U105 ( .A1(n249), .A2(intadd_0_SUM_11_), .B1(n184), .B2(
        intadd_0_SUM_12_), .C1(n255), .C2(intadd_0_SUM_10_), .Z(
        Mantissa_Out[13]) );
  AO222D0 U106 ( .A1(n256), .A2(intadd_0_SUM_17_), .B1(n182), .B2(
        intadd_0_SUM_18_), .C1(n90), .C2(intadd_0_SUM_16_), .Z(
        Mantissa_Out[19]) );
  AO222D0 U107 ( .A1(n256), .A2(Res[1]), .B1(Res[0]), .B2(n201), .C1(n181), 
        .C2(n253), .Z(Mantissa_Out[0]) );
  AO222D0 U108 ( .A1(n256), .A2(intadd_0_SUM_18_), .B1(n181), .B2(
        intadd_0_SUM_19_), .C1(n201), .C2(intadd_0_SUM_17_), .Z(
        Mantissa_Out[20]) );
  AO222D0 U109 ( .A1(n247), .A2(intadd_0_SUM_12_), .B1(n184), .B2(
        intadd_0_SUM_13_), .C1(n203), .C2(intadd_0_SUM_11_), .Z(
        Mantissa_Out[14]) );
  AO222D0 U110 ( .A1(n250), .A2(intadd_0_SUM_6_), .B1(n184), .B2(
        intadd_0_SUM_7_), .C1(n202), .C2(intadd_0_SUM_5_), .Z(Mantissa_Out[8])
         );
  INVD0 U111 ( .I(n255), .ZN(n89) );
  BUFFD1 U112 ( .I(n252), .Z(n251) );
  BUFFD1 U113 ( .I(n252), .Z(n249) );
  OR2XD1 U114 ( .A1(n256), .A2(intadd_0_SUM_20_), .Z(n254) );
  BUFFD1 U115 ( .I(n248), .Z(n250) );
  BUFFD1 U116 ( .I(n248), .Z(n247) );
  CKBD1 U117 ( .I(n248), .Z(n256) );
  FA1D1 U118 ( .A(A31C[22]), .B(A31S[23]), .CI(intadd_0_n2), .CO(intadd_0_n1), 
        .S(intadd_0_SUM_20_) );
  FA1D1 U119 ( .A(A31C[21]), .B(A31S[22]), .CI(intadd_0_n3), .CO(intadd_0_n2), 
        .S(intadd_0_SUM_19_) );
  OAI211D0 U120 ( .A1(n470), .A2(n18), .B(n425), .C(n424), .ZN(n110) );
  OAI211D0 U121 ( .A1(n468), .A2(n173), .B(n421), .C(n424), .ZN(n113) );
  OAI211D0 U122 ( .A1(n30), .A2(n431), .B(n439), .C(n430), .ZN(n106) );
  NR2XD0 U123 ( .A1(n433), .A2(n48), .ZN(L1_p2[19]) );
  INVD0 U124 ( .I(n82), .ZN(n30) );
  OAI21D0 U125 ( .A1(n440), .A2(n186), .B(n233), .ZN(n108) );
  INVD0 U126 ( .I(n434), .ZN(n437) );
  AOI22D0 U127 ( .A1(n24), .A2(x_sub_y[21]), .B1(n81), .B2(n17), .ZN(n425) );
  OAI211D0 U128 ( .A1(n463), .A2(n18), .B(n408), .C(n407), .ZN(n122) );
  INVD0 U129 ( .I(n442), .ZN(n11) );
  AOI22D0 U130 ( .A1(n25), .A2(n79), .B1(n50), .B2(n169), .ZN(n421) );
  AOI22D0 U131 ( .A1(n241), .A2(n82), .B1(n240), .B2(n429), .ZN(n233) );
  AOI22D0 U132 ( .A1(n192), .A2(x_sub_y[20]), .B1(n17), .B2(x_sub_y[18]), .ZN(
        n408) );
  AN2XD1 U133 ( .A1(n216), .A2(n429), .Z(n442) );
  CKND2D0 U134 ( .A1(n194), .A2(n77), .ZN(n417) );
  MUX2ND0 U135 ( .I0(n227), .I1(n226), .S(n228), .ZN(x_sub_y[21]) );
  CKND2D0 U136 ( .A1(n193), .A2(n75), .ZN(n412) );
  OAI211D0 U137 ( .A1(n460), .A2(n175), .B(n379), .C(n378), .ZN(n131) );
  CKND2D0 U138 ( .A1(n25), .A2(n73), .ZN(n407) );
  NR2D0 U139 ( .A1(n433), .A2(n66), .ZN(L1_p2[13]) );
  CKND2D0 U140 ( .A1(n195), .A2(n71), .ZN(n397) );
  INVD0 U141 ( .I(n72), .ZN(n73) );
  IAO21D0 U142 ( .A1(A31C[1]), .A2(A31S[2]), .B(intadd_0_CI), .ZN(n253) );
  INVD0 U143 ( .I(n70), .ZN(n71) );
  INVD0 U144 ( .I(x_sub_y[16]), .ZN(n70) );
  INVD0 U145 ( .I(x_sub_y[15]), .ZN(n68) );
  INVD0 U146 ( .I(n66), .ZN(n67) );
  INVD0 U147 ( .I(x_sub_y[14]), .ZN(n66) );
  OAI22D1 U148 ( .A1(n209), .A2(n306), .B1(Mantissa_X[10]), .B2(n329), .ZN(
        n339) );
  INVD0 U149 ( .I(n26), .ZN(n27) );
  INVD0 U150 ( .I(n198), .ZN(n26) );
  OA21D0 U151 ( .A1(Mantissa_Y[20]), .A2(n268), .B(n196), .Z(n422) );
  INVD0 U152 ( .I(n466), .ZN(n198) );
  AO21D0 U153 ( .A1(Mantissa_Y[21]), .A2(n98), .B(n428), .Z(n217) );
  INVD0 U154 ( .I(n93), .ZN(n241) );
  OAI22D1 U155 ( .A1(n278), .A2(n214), .B1(n276), .B2(Mantissa_X[5]), .ZN(n260) );
  INVD0 U156 ( .I(n92), .ZN(n94) );
  INVD0 U157 ( .I(n177), .ZN(n240) );
  INVD0 U158 ( .I(n423), .ZN(n194) );
  BUFFD0 U159 ( .I(n431), .Z(n423) );
  INVD0 U160 ( .I(n205), .ZN(n92) );
  INVD0 U161 ( .I(n222), .ZN(n223) );
  INVD0 U162 ( .I(n420), .ZN(n190) );
  INVD0 U163 ( .I(n472), .ZN(n177) );
  OAI21D0 U164 ( .A1(Mantissa_Y[20]), .A2(n96), .B(n204), .ZN(n436) );
  INR2D0 U165 ( .A1(n401), .B1(n400), .ZN(n414) );
  INVD0 U166 ( .I(n469), .ZN(n205) );
  CKND2D0 U167 ( .A1(n98), .A2(n268), .ZN(n431) );
  INR2D0 U168 ( .A1(n225), .B1(n224), .ZN(n228) );
  INVD0 U169 ( .I(n86), .ZN(n88) );
  IAO21D1 U170 ( .A1(n237), .A2(n239), .B(n236), .ZN(n264) );
  INVD0 U171 ( .I(n185), .ZN(n186) );
  INVD0 U172 ( .I(n216), .ZN(n232) );
  NR2XD0 U173 ( .A1(n97), .A2(Mantissa_X[20]), .ZN(n400) );
  INVD0 U174 ( .I(n471), .ZN(n86) );
  INVD0 U175 ( .I(n438), .ZN(n441) );
  CKND2D1 U176 ( .A1(Mantissa_X[22]), .A2(n399), .ZN(n216) );
  INVD0 U177 ( .I(n399), .ZN(n433) );
  CKND2D0 U178 ( .A1(Mantissa_Y[21]), .A2(n399), .ZN(n471) );
  BUFFD1 U179 ( .I(n399), .Z(n438) );
  AOI22D0 U180 ( .A1(Mantissa_Y[16]), .A2(n363), .B1(Mantissa_X[16]), .B2(n362), .ZN(n384) );
  AOI22D0 U181 ( .A1(Mantissa_Y[17]), .A2(n372), .B1(Mantissa_X[17]), .B2(n371), .ZN(n394) );
  AOI22D0 U182 ( .A1(Mantissa_Y[18]), .A2(n381), .B1(Mantissa_X[18]), .B2(n380), .ZN(n404) );
  INVD0 U183 ( .I(n419), .ZN(n432) );
  AOI22D0 U184 ( .A1(Mantissa_Y[19]), .A2(n391), .B1(Mantissa_X[19]), .B2(n390), .ZN(n409) );
  INVD0 U185 ( .I(Mantissa_X[4]), .ZN(n262) );
  INVD0 U186 ( .I(Mantissa_X[17]), .ZN(n372) );
  INVD0 U187 ( .I(Mantissa_X[13]), .ZN(n334) );
  INVD0 U188 ( .I(Mantissa_X[2]), .ZN(n235) );
  INVD0 U189 ( .I(Mantissa_X[19]), .ZN(n391) );
  INVD0 U190 ( .I(Mantissa_X[15]), .ZN(n353) );
  INVD0 U191 ( .I(Mantissa_X[11]), .ZN(n316) );
  INVD0 U192 ( .I(Mantissa_Y[18]), .ZN(n380) );
  INVD0 U193 ( .I(Mantissa_X[3]), .ZN(n221) );
  INVD0 U194 ( .I(Mantissa_Y[16]), .ZN(n362) );
  INVD0 U195 ( .I(Mantissa_X[7]), .ZN(n273) );
  INVD0 U196 ( .I(Mantissa_Y[14]), .ZN(n342) );
  INVD1 U197 ( .I(Mantissa_Y[22]), .ZN(n419) );
  INVD0 U198 ( .I(Mantissa_Y[10]), .ZN(n306) );
  INVD0 U199 ( .I(Mantissa_Y[12]), .ZN(n324) );
  INVD0 U200 ( .I(Mantissa_X[5]), .ZN(n277) );
  INVD0 U201 ( .I(Mantissa_Y[8]), .ZN(n286) );
  INVD0 U202 ( .I(Mantissa_Y[2]), .ZN(n219) );
  INVD0 U203 ( .I(Mantissa_Y[6]), .ZN(n257) );
  INVD0 U204 ( .I(Mantissa_Y[4]), .ZN(n261) );
  INVD0 U205 ( .I(n4), .ZN(n6) );
  INVD0 U206 ( .I(n447), .ZN(n7) );
  INVD0 U207 ( .I(n1), .ZN(n8) );
  INVD0 U208 ( .I(n1), .ZN(n9) );
  INVD1 U209 ( .I(n442), .ZN(n10) );
  INVD0 U210 ( .I(n99), .ZN(n12) );
  INVD0 U211 ( .I(n12), .ZN(n13) );
  INVD0 U212 ( .I(n103), .ZN(n14) );
  INVD0 U213 ( .I(n14), .ZN(n15) );
  INVD0 U214 ( .I(n170), .ZN(n16) );
  INVD0 U215 ( .I(n16), .ZN(n17) );
  INVD0 U216 ( .I(n428), .ZN(n18) );
  INVD0 U217 ( .I(n179), .ZN(n19) );
  INVD0 U218 ( .I(n19), .ZN(n20) );
  INVD0 U219 ( .I(n19), .ZN(n21) );
  INVD0 U220 ( .I(n189), .ZN(n22) );
  INVD0 U221 ( .I(n22), .ZN(n23) );
  INVD0 U222 ( .I(n431), .ZN(n24) );
  INVD0 U223 ( .I(n431), .ZN(n25) );
  INVD0 U224 ( .I(n26), .ZN(n28) );
  INVD0 U225 ( .I(n451), .ZN(n32) );
  INVD0 U226 ( .I(n451), .ZN(n33) );
  INVD0 U227 ( .I(n52), .ZN(n34) );
  INVD0 U228 ( .I(n53), .ZN(n35) );
  INVD0 U229 ( .I(n56), .ZN(n36) );
  INVD0 U230 ( .I(n59), .ZN(n37) );
  INVD0 U231 ( .I(n59), .ZN(n38) );
  INVD0 U232 ( .I(n61), .ZN(n39) );
  INVD0 U233 ( .I(n63), .ZN(n40) );
  INVD0 U234 ( .I(n65), .ZN(n41) );
  INVD0 U235 ( .I(x_sub_y[14]), .ZN(n42) );
  INVD0 U236 ( .I(x_sub_y[15]), .ZN(n43) );
  INVD0 U237 ( .I(n71), .ZN(n44) );
  INVD1 U238 ( .I(n49), .ZN(n50) );
  INVD0 U239 ( .I(x_sub_y[7]), .ZN(n51) );
  INVD0 U240 ( .I(n51), .ZN(n52) );
  INVD0 U241 ( .I(n3), .ZN(n53) );
  INVD0 U242 ( .I(n3), .ZN(n54) );
  INVD0 U243 ( .I(x_sub_y[9]), .ZN(n55) );
  INVD0 U244 ( .I(n55), .ZN(n56) );
  INVD0 U245 ( .I(x_sub_y[10]), .ZN(n57) );
  INVD0 U246 ( .I(n57), .ZN(n58) );
  INVD0 U247 ( .I(n57), .ZN(n59) );
  INVD0 U248 ( .I(x_sub_y[11]), .ZN(n60) );
  INVD0 U249 ( .I(n60), .ZN(n61) );
  INVD0 U250 ( .I(x_sub_y[12]), .ZN(n62) );
  INVD0 U251 ( .I(n62), .ZN(n63) );
  INVD0 U252 ( .I(x_sub_y[13]), .ZN(n64) );
  INVD0 U253 ( .I(n64), .ZN(n65) );
  INVD1 U254 ( .I(n2), .ZN(n76) );
  INVD1 U255 ( .I(x_sub_y[22]), .ZN(n80) );
  INVD1 U256 ( .I(n80), .ZN(n81) );
  INVD1 U257 ( .I(n80), .ZN(n82) );
  INVD1 U258 ( .I(n83), .ZN(n84) );
  INVD0 U259 ( .I(n86), .ZN(n87) );
  INVD0 U260 ( .I(n92), .ZN(n93) );
  INVD1 U261 ( .I(n435), .ZN(n95) );
  INVD0 U262 ( .I(n217), .ZN(n99) );
  INVD0 U263 ( .I(n217), .ZN(n100) );
  INVD0 U264 ( .I(n217), .ZN(n101) );
  INVD0 U265 ( .I(n217), .ZN(n102) );
  INVD0 U266 ( .I(n467), .ZN(n103) );
  INVD0 U267 ( .I(n467), .ZN(n166) );
  INVD0 U268 ( .I(n467), .ZN(n167) );
  INVD0 U269 ( .I(n467), .ZN(n168) );
  INVD0 U270 ( .I(n422), .ZN(n169) );
  INVD0 U271 ( .I(n422), .ZN(n170) );
  INVD0 U272 ( .I(n422), .ZN(n171) );
  INVD0 U273 ( .I(n422), .ZN(n172) );
  INVD0 U274 ( .I(n426), .ZN(n173) );
  INVD0 U275 ( .I(n426), .ZN(n174) );
  INVD0 U276 ( .I(n426), .ZN(n175) );
  INVD0 U277 ( .I(n426), .ZN(n176) );
  INVD0 U278 ( .I(n472), .ZN(n178) );
  INVD0 U279 ( .I(n472), .ZN(n179) );
  INVD0 U280 ( .I(n472), .ZN(n180) );
  INVD1 U281 ( .I(n254), .ZN(n181) );
  INVD1 U282 ( .I(n254), .ZN(n182) );
  INVD1 U283 ( .I(n254), .ZN(n183) );
  INVD1 U284 ( .I(n254), .ZN(n184) );
  INVD0 U285 ( .I(n471), .ZN(n185) );
  INVD0 U286 ( .I(n185), .ZN(n187) );
  INVD0 U287 ( .I(n185), .ZN(n188) );
  OR2D0 U288 ( .A1(n268), .A2(n97), .Z(n420) );
  INVD0 U289 ( .I(n420), .ZN(n189) );
  INVD0 U290 ( .I(n420), .ZN(n191) );
  INVD0 U291 ( .I(n420), .ZN(n192) );
  INVD0 U292 ( .I(n423), .ZN(n193) );
  INVD0 U293 ( .I(n423), .ZN(n195) );
  INVD0 U294 ( .I(n466), .ZN(n196) );
  INVD0 U295 ( .I(n466), .ZN(n197) );
  INVD0 U296 ( .I(n466), .ZN(n199) );
  OAI222D0 U297 ( .A1(n15), .A2(n11), .B1(n30), .B2(n13), .C1(n197), .C2(n470), 
        .ZN(n109) );
  OAI222D0 U298 ( .A1(n166), .A2(n29), .B1(n199), .B2(n468), .C1(n100), .C2(
        n31), .ZN(n112) );
  INVD1 U299 ( .I(n200), .ZN(n201) );
  INVD1 U300 ( .I(n200), .ZN(n202) );
  INVD1 U301 ( .I(n200), .ZN(n203) );
  INR2D1 U302 ( .A1(intadd_0_SUM_20_), .B1(n246), .ZN(n255) );
  INVD0 U303 ( .I(n469), .ZN(n204) );
  INVD0 U304 ( .I(n469), .ZN(n206) );
  INVD0 U305 ( .I(n469), .ZN(n207) );
  AO21D1 U306 ( .A1(n264), .A2(Mantissa_Y[4]), .B(n262), .Z(n213) );
  OAI22D1 U307 ( .A1(n282), .A2(n212), .B1(n277), .B2(Mantissa_Y[5]), .ZN(n291) );
  MAOI222D1 U308 ( .A(Mantissa_Y[15]), .B(n353), .C(n377), .ZN(n385) );
  MAOI222D1 U309 ( .A(Mantissa_X[13]), .B(n333), .C(n335), .ZN(n345) );
  MAOI222D1 U310 ( .A(Mantissa_X[4]), .B(n266), .C(n261), .ZN(n282) );
  MAOI222D1 U311 ( .A(Mantissa_Y[3]), .B(n221), .C(n243), .ZN(n266) );
  FA1D0 U312 ( .A(A31C[17]), .B(A31S[18]), .CI(intadd_0_n7), .CO(intadd_0_n6), 
        .S(intadd_0_SUM_15_) );
  INVD1 U313 ( .I(Mantissa_Y[19]), .ZN(n390) );
  INVD1 U314 ( .I(Mantissa_Y[17]), .ZN(n371) );
  INVD1 U315 ( .I(Mantissa_Y[15]), .ZN(n352) );
  INVD1 U316 ( .I(Mantissa_Y[13]), .ZN(n333) );
  MAOI222D1 U317 ( .A(Mantissa_Y[6]), .B(n260), .C(n258), .ZN(n274) );
  FCICOND1 U318 ( .A(Mantissa_X[7]), .B(n272), .CI(n274), .CON(n289) );
  FCICOND1 U319 ( .A(Mantissa_X[9]), .B(n296), .CI(n298), .CON(n309) );
  MAOI222D1 U320 ( .A(Mantissa_Y[10]), .B(n309), .C(n307), .ZN(n317) );
  FCICOND1 U321 ( .A(Mantissa_X[11]), .B(n315), .CI(n317), .CON(n327) );
  MAOI222D1 U322 ( .A(Mantissa_Y[14]), .B(n345), .C(n343), .ZN(n354) );
  FCICOND1 U323 ( .A(Mantissa_X[15]), .B(n352), .CI(n354), .CON(n365) );
  INVD1 U324 ( .I(Mantissa_X[16]), .ZN(n363) );
  FCICOND1 U325 ( .A(Mantissa_Y[16]), .B(n365), .CI(n363), .CON(n373) );
  FCICOND1 U326 ( .A(Mantissa_X[17]), .B(n371), .CI(n373), .CON(n383) );
  ND2D1 U327 ( .A1(Mantissa_X[20]), .A2(n98), .ZN(n401) );
  OAI21D1 U328 ( .A1(n400), .A2(n403), .B(n401), .ZN(n226) );
  FCICOND1 U329 ( .A(Mantissa_X[21]), .B(n95), .CI(n226), .CON(n215) );
  NR2D1 U330 ( .A1(n438), .A2(Mantissa_X[22]), .ZN(n427) );
  CKXOR2D1 U331 ( .A1(n215), .A2(n223), .Z(x_sub_y[22]) );
  OR2XD1 U332 ( .A1(n427), .A2(n215), .Z(n429) );
  BUFFD0 U333 ( .I(n419), .Z(n361) );
  INVD0 U334 ( .I(n361), .ZN(n305) );
  MAOI222D1 U335 ( .A(Mantissa_X[2]), .B(n220), .C(n219), .ZN(n243) );
  FCICOND1 U336 ( .A(Mantissa_Y[13]), .B(n334), .CI(n358), .CON(n367) );
  MAOI222D1 U337 ( .A(Mantissa_X[14]), .B(n367), .C(n342), .ZN(n377) );
  FCICOND1 U338 ( .A(Mantissa_Y[17]), .B(n372), .CI(n396), .CON(n405) );
  MAOI222D1 U339 ( .A(Mantissa_X[18]), .B(n405), .C(n380), .ZN(n411) );
  FCICOND1 U340 ( .A(Mantissa_Y[19]), .B(n391), .CI(n411), .CON(n415) );
  MAOI222D1 U341 ( .A(Mantissa_X[20]), .B(n415), .C(n98), .ZN(n230) );
  AOI21D1 U342 ( .A1(n225), .A2(n230), .B(n224), .ZN(n231) );
  MUX2ND0 U343 ( .I0(n223), .I1(n222), .S(n231), .ZN(n470) );
  INVD0 U344 ( .I(n226), .ZN(n227) );
  INVD0 U345 ( .I(n230), .ZN(n229) );
  MUX2ND0 U346 ( .I0(n230), .I1(n229), .S(n228), .ZN(n468) );
  XOR3D2 U347 ( .A1(intadd_0_n1), .A2(A31C[23]), .A3(A31S[24]), .Z(Shift) );
  OA21D0 U348 ( .A1(n246), .A2(intadd_0_SUM_19_), .B(intadd_0_SUM_20_), .Z(
        Mantissa_Out[22]) );
  NR2D1 U349 ( .A1(n232), .A2(n231), .ZN(n440) );
  INVD0 U350 ( .I(n445), .ZN(x_sub_y[2]) );
  INVD0 U351 ( .I(n239), .ZN(n238) );
  NR2D0 U352 ( .A1(n237), .A2(n236), .ZN(n245) );
  AOI22D0 U353 ( .A1(n241), .A2(x_sub_y[2]), .B1(n240), .B2(n6), .ZN(n244) );
  OAI21D0 U354 ( .A1(n245), .A2(n243), .B(n185), .ZN(n242) );
  AOI32D0 U355 ( .A1(n245), .A2(n244), .A3(n243), .B1(n242), .B2(n244), .ZN(
        n165) );
  AO22D0 U356 ( .A1(n246), .A2(intadd_0_SUM_19_), .B1(n91), .B2(
        intadd_0_SUM_18_), .Z(Mantissa_Out[21]) );
  AO222D1 U357 ( .A1(n247), .A2(intadd_0_SUM_15_), .B1(n183), .B2(
        intadd_0_SUM_16_), .C1(n91), .C2(intadd_0_SUM_14_), .Z(
        Mantissa_Out[17]) );
  AO222D1 U358 ( .A1(n249), .A2(intadd_0_SUM_14_), .B1(n181), .B2(
        intadd_0_SUM_15_), .C1(n90), .C2(intadd_0_SUM_13_), .Z(
        Mantissa_Out[16]) );
  AO222D1 U359 ( .A1(n250), .A2(intadd_0_SUM_8_), .B1(n183), .B2(
        intadd_0_SUM_9_), .C1(n90), .C2(intadd_0_SUM_7_), .Z(Mantissa_Out[10])
         );
  AO222D1 U360 ( .A1(n250), .A2(intadd_0_SUM_7_), .B1(n183), .B2(
        intadd_0_SUM_8_), .C1(n201), .C2(intadd_0_SUM_6_), .Z(Mantissa_Out[9])
         );
  AO222D1 U361 ( .A1(n251), .A2(intadd_0_SUM_4_), .B1(n182), .B2(
        intadd_0_SUM_5_), .C1(n91), .C2(intadd_0_SUM_3_), .Z(Mantissa_Out[6])
         );
  AO222D1 U362 ( .A1(n251), .A2(intadd_0_SUM_3_), .B1(n182), .B2(
        intadd_0_SUM_4_), .C1(n202), .C2(intadd_0_SUM_2_), .Z(Mantissa_Out[5])
         );
  AO222D1 U363 ( .A1(n251), .A2(intadd_0_SUM_2_), .B1(n182), .B2(
        intadd_0_SUM_3_), .C1(n202), .C2(intadd_0_SUM_1_), .Z(Mantissa_Out[4])
         );
  INVD0 U364 ( .I(n260), .ZN(n259) );
  AOI22D0 U365 ( .A1(Mantissa_Y[6]), .A2(n258), .B1(Mantissa_X[6]), .B2(n257), 
        .ZN(n290) );
  MUX2ND0 U366 ( .I0(n260), .I1(n259), .S(n290), .ZN(x_sub_y[6]) );
  INVD0 U367 ( .I(n264), .ZN(n263) );
  AOI22D0 U368 ( .A1(Mantissa_Y[4]), .A2(n262), .B1(Mantissa_X[4]), .B2(n261), 
        .ZN(n265) );
  MUX2ND0 U369 ( .I0(n264), .I1(n263), .S(n265), .ZN(x_sub_y[4]) );
  INVD0 U370 ( .I(n266), .ZN(n267) );
  MUX2ND0 U371 ( .I0(n267), .I1(n266), .S(n265), .ZN(n446) );
  CKND2D0 U372 ( .A1(n305), .A2(Mantissa_Y[21]), .ZN(n268) );
  AOI22D0 U373 ( .A1(n192), .A2(x_sub_y[6]), .B1(n172), .B2(n7), .ZN(n271) );
  CKND2D0 U374 ( .A1(n195), .A2(n6), .ZN(n270) );
  OAI211D0 U375 ( .A1(n446), .A2(n176), .B(n271), .C(n270), .ZN(n163) );
  INVD0 U376 ( .I(n274), .ZN(n275) );
  AOI22D0 U377 ( .A1(Mantissa_Y[7]), .A2(n273), .B1(Mantissa_X[7]), .B2(n272), 
        .ZN(n300) );
  MUX2ND0 U378 ( .I0(n275), .I1(n274), .S(n300), .ZN(x_sub_y[7]) );
  INVD0 U379 ( .I(n278), .ZN(n279) );
  AOI22D0 U380 ( .A1(Mantissa_Y[5]), .A2(n277), .B1(Mantissa_X[5]), .B2(n276), 
        .ZN(n280) );
  INVD0 U381 ( .I(n282), .ZN(n281) );
  MUX2ND0 U382 ( .I0(n282), .I1(n281), .S(n280), .ZN(n448) );
  AOI22D0 U383 ( .A1(n191), .A2(n52), .B1(n17), .B2(n9), .ZN(n284) );
  CKND2D0 U384 ( .A1(n24), .A2(n7), .ZN(n283) );
  OAI211D0 U385 ( .A1(n448), .A2(n176), .B(n284), .C(n283), .ZN(n161) );
  FA1D0 U386 ( .A(Mantissa_Y[1]), .B(n285), .CI(n444), .CO(n234), .S(n295) );
  NR2D0 U387 ( .A1(n441), .A2(n295), .ZN(L1_p2[0]) );
  INVD0 U388 ( .I(n289), .ZN(n288) );
  AOI22D0 U389 ( .A1(Mantissa_Y[8]), .A2(n287), .B1(Mantissa_X[8]), .B2(n286), 
        .ZN(n310) );
  INVD0 U390 ( .I(n291), .ZN(n292) );
  MUX2ND0 U391 ( .I0(n292), .I1(n291), .S(n290), .ZN(n450) );
  AOI22D0 U392 ( .A1(n190), .A2(n54), .B1(n171), .B2(x_sub_y[6]), .ZN(n294) );
  CKND2D0 U393 ( .A1(n194), .A2(n8), .ZN(n293) );
  OAI211D0 U394 ( .A1(n450), .A2(n175), .B(n294), .C(n293), .ZN(n158) );
  INVD0 U395 ( .I(n295), .ZN(x_sub_y[1]) );
  INVD0 U396 ( .I(n298), .ZN(n299) );
  AOI22D0 U397 ( .A1(Mantissa_Y[9]), .A2(n297), .B1(Mantissa_X[9]), .B2(n296), 
        .ZN(n319) );
  MUX2ND0 U398 ( .I0(n299), .I1(n298), .S(n319), .ZN(x_sub_y[9]) );
  INVD0 U399 ( .I(n302), .ZN(n301) );
  MUX2ND0 U400 ( .I0(n302), .I1(n301), .S(n300), .ZN(n452) );
  AOI22D0 U401 ( .A1(n192), .A2(x_sub_y[9]), .B1(n169), .B2(n52), .ZN(n304) );
  CKND2D0 U402 ( .A1(n25), .A2(x_sub_y[6]), .ZN(n303) );
  OAI211D0 U403 ( .A1(n452), .A2(n173), .B(n304), .C(n303), .ZN(n155) );
  NR2D0 U404 ( .A1(n305), .A2(n4), .ZN(L1_p2[2]) );
  INVD0 U405 ( .I(n309), .ZN(n308) );
  AOI22D0 U406 ( .A1(Mantissa_Y[10]), .A2(n307), .B1(Mantissa_X[10]), .B2(n306), .ZN(n328) );
  MUX2ND0 U407 ( .I0(n309), .I1(n308), .S(n328), .ZN(x_sub_y[10]) );
  INVD0 U408 ( .I(n311), .ZN(n312) );
  MUX2ND0 U409 ( .I0(n312), .I1(n311), .S(n310), .ZN(n453) );
  AOI22D0 U410 ( .A1(n189), .A2(n58), .B1(n170), .B2(n53), .ZN(n314) );
  CKND2D0 U411 ( .A1(n193), .A2(n52), .ZN(n313) );
  OAI211D0 U412 ( .A1(n453), .A2(n174), .B(n314), .C(n313), .ZN(n152) );
  INVD0 U413 ( .I(n317), .ZN(n318) );
  AOI22D0 U414 ( .A1(Mantissa_Y[11]), .A2(n316), .B1(Mantissa_X[11]), .B2(n315), .ZN(n337) );
  MUX2ND0 U415 ( .I0(n318), .I1(n317), .S(n337), .ZN(x_sub_y[11]) );
  INVD0 U416 ( .I(n321), .ZN(n320) );
  MUX2ND0 U417 ( .I0(n321), .I1(n320), .S(n319), .ZN(n454) );
  AOI22D0 U418 ( .A1(n23), .A2(x_sub_y[11]), .B1(n171), .B2(x_sub_y[9]), .ZN(
        n323) );
  CKND2D0 U419 ( .A1(n194), .A2(n54), .ZN(n322) );
  OAI211D0 U420 ( .A1(n454), .A2(n175), .B(n323), .C(n322), .ZN(n149) );
  INVD0 U421 ( .I(n361), .ZN(n351) );
  INVD0 U422 ( .I(n8), .ZN(n449) );
  NR2D0 U423 ( .A1(n351), .A2(n449), .ZN(L1_p2[4]) );
  INVD0 U424 ( .I(n327), .ZN(n326) );
  AOI22D0 U425 ( .A1(Mantissa_Y[12]), .A2(n325), .B1(Mantissa_X[12]), .B2(n324), .ZN(n346) );
  MUX2ND0 U426 ( .I0(n327), .I1(n326), .S(n346), .ZN(x_sub_y[12]) );
  INVD0 U427 ( .I(n329), .ZN(n330) );
  MUX2ND0 U428 ( .I0(n330), .I1(n329), .S(n328), .ZN(n455) );
  AOI22D0 U429 ( .A1(n190), .A2(x_sub_y[12]), .B1(n172), .B2(n58), .ZN(n332)
         );
  CKND2D0 U430 ( .A1(n25), .A2(n56), .ZN(n331) );
  OAI211D0 U431 ( .A1(n455), .A2(n18), .B(n332), .C(n331), .ZN(n146) );
  NR2D0 U432 ( .A1(n351), .A2(n32), .ZN(L1_p2[5]) );
  INVD0 U433 ( .I(n335), .ZN(n336) );
  AOI22D0 U434 ( .A1(Mantissa_Y[13]), .A2(n334), .B1(Mantissa_X[13]), .B2(n333), .ZN(n356) );
  MUX2ND0 U435 ( .I0(n336), .I1(n335), .S(n356), .ZN(x_sub_y[13]) );
  INVD0 U436 ( .I(n339), .ZN(n338) );
  MUX2ND0 U437 ( .I0(n339), .I1(n338), .S(n337), .ZN(n456) );
  AOI22D0 U438 ( .A1(n191), .A2(x_sub_y[13]), .B1(n169), .B2(x_sub_y[11]), 
        .ZN(n341) );
  CKND2D0 U439 ( .A1(n193), .A2(n59), .ZN(n340) );
  OAI211D0 U440 ( .A1(n456), .A2(n173), .B(n341), .C(n340), .ZN(n143) );
  NR2D0 U441 ( .A1(n351), .A2(n51), .ZN(L1_p2[6]) );
  INVD0 U442 ( .I(n345), .ZN(n344) );
  AOI22D0 U443 ( .A1(Mantissa_Y[14]), .A2(n343), .B1(Mantissa_X[14]), .B2(n342), .ZN(n366) );
  MUX2ND0 U444 ( .I0(n345), .I1(n344), .S(n366), .ZN(x_sub_y[14]) );
  INVD0 U445 ( .I(n347), .ZN(n348) );
  MUX2ND0 U446 ( .I0(n348), .I1(n347), .S(n346), .ZN(n457) );
  AOI22D0 U447 ( .A1(n192), .A2(n67), .B1(n172), .B2(x_sub_y[12]), .ZN(n350)
         );
  CKND2D0 U448 ( .A1(n195), .A2(n61), .ZN(n349) );
  OAI211D0 U449 ( .A1(n457), .A2(n176), .B(n350), .C(n349), .ZN(n140) );
  NR2D0 U450 ( .A1(n351), .A2(n35), .ZN(L1_p2[7]) );
  INVD0 U451 ( .I(n354), .ZN(n355) );
  AOI22D0 U452 ( .A1(Mantissa_Y[15]), .A2(n353), .B1(Mantissa_X[15]), .B2(n352), .ZN(n375) );
  MUX2ND0 U453 ( .I0(n355), .I1(n354), .S(n375), .ZN(x_sub_y[15]) );
  INVD0 U454 ( .I(n358), .ZN(n357) );
  MUX2ND0 U455 ( .I0(n358), .I1(n357), .S(n356), .ZN(n458) );
  AOI22D0 U456 ( .A1(n23), .A2(n69), .B1(n170), .B2(x_sub_y[13]), .ZN(n360) );
  CKND2D0 U457 ( .A1(n193), .A2(n63), .ZN(n359) );
  OAI211D0 U458 ( .A1(n458), .A2(n174), .B(n360), .C(n359), .ZN(n137) );
  INVD0 U459 ( .I(n361), .ZN(n389) );
  NR2D0 U460 ( .A1(n389), .A2(n55), .ZN(L1_p2[8]) );
  INVD0 U461 ( .I(n365), .ZN(n364) );
  MUX2ND0 U462 ( .I0(n365), .I1(n364), .S(n384), .ZN(x_sub_y[16]) );
  INVD0 U463 ( .I(n367), .ZN(n368) );
  MUX2ND0 U464 ( .I0(n368), .I1(n367), .S(n366), .ZN(n459) );
  AOI22D0 U465 ( .A1(n189), .A2(x_sub_y[16]), .B1(n17), .B2(n67), .ZN(n370) );
  CKND2D0 U466 ( .A1(n24), .A2(n65), .ZN(n369) );
  OAI211D0 U467 ( .A1(n459), .A2(n18), .B(n370), .C(n369), .ZN(n134) );
  NR2D0 U468 ( .A1(n389), .A2(n37), .ZN(L1_p2[9]) );
  INVD0 U469 ( .I(n373), .ZN(n374) );
  MUX2ND0 U470 ( .I0(n374), .I1(n373), .S(n394), .ZN(x_sub_y[17]) );
  INVD0 U471 ( .I(n377), .ZN(n376) );
  MUX2ND0 U472 ( .I0(n377), .I1(n376), .S(n375), .ZN(n460) );
  AOI22D0 U473 ( .A1(n190), .A2(x_sub_y[17]), .B1(n171), .B2(n69), .ZN(n379)
         );
  CKND2D0 U474 ( .A1(n194), .A2(x_sub_y[14]), .ZN(n378) );
  NR2D0 U475 ( .A1(n389), .A2(n60), .ZN(L1_p2[10]) );
  INVD0 U476 ( .I(n383), .ZN(n382) );
  MUX2ND0 U477 ( .I0(n383), .I1(n382), .S(n404), .ZN(x_sub_y[18]) );
  INVD0 U478 ( .I(n385), .ZN(n386) );
  MUX2ND0 U479 ( .I0(n386), .I1(n385), .S(n384), .ZN(n461) );
  AOI22D1 U480 ( .A1(n191), .A2(n75), .B1(n169), .B2(x_sub_y[16]), .ZN(n388)
         );
  CKND2D0 U481 ( .A1(n24), .A2(x_sub_y[15]), .ZN(n387) );
  NR2D0 U482 ( .A1(n389), .A2(n62), .ZN(L1_p2[11]) );
  INVD0 U483 ( .I(n392), .ZN(n393) );
  INVD0 U484 ( .I(n396), .ZN(n395) );
  MUX2ND0 U485 ( .I0(n396), .I1(n395), .S(n394), .ZN(n462) );
  AOI22D1 U486 ( .A1(n23), .A2(n76), .B1(n172), .B2(x_sub_y[17]), .ZN(n398) );
  OAI211D1 U487 ( .A1(n462), .A2(n176), .B(n398), .C(n397), .ZN(n125) );
  NR2D0 U488 ( .A1(n433), .A2(n64), .ZN(L1_p2[12]) );
  INVD0 U489 ( .I(n403), .ZN(n402) );
  MUX2ND0 U490 ( .I0(n403), .I1(n402), .S(n414), .ZN(x_sub_y[20]) );
  INVD0 U491 ( .I(n405), .ZN(n406) );
  MUX2ND0 U492 ( .I0(n406), .I1(n405), .S(n404), .ZN(n463) );
  INVD0 U493 ( .I(n411), .ZN(n410) );
  MUX2ND0 U494 ( .I0(n411), .I1(n410), .S(n409), .ZN(n464) );
  OAI211D1 U495 ( .A1(n464), .A2(n174), .B(n413), .C(n412), .ZN(n119) );
  INVD0 U496 ( .I(n415), .ZN(n416) );
  MUX2ND0 U497 ( .I0(n416), .I1(n415), .S(n414), .ZN(n465) );
  INVD1 U498 ( .I(n10), .ZN(x_sub_y[23]) );
  NR2D1 U499 ( .A1(n427), .A2(n440), .ZN(n434) );
  OAI211D0 U500 ( .A1(n435), .A2(n269), .B(n441), .C(n429), .ZN(n430) );
  MOAI22D1 U501 ( .A1(n437), .A2(n27), .B1(x_sub_y[23]), .B2(n436), .ZN(n104)
         );
  AOI32D1 U502 ( .A1(n269), .A2(n439), .A3(n438), .B1(n10), .B2(n439), .ZN(
        n105) );
  OAI22D1 U503 ( .A1(n440), .A2(n88), .B1(n435), .B2(n11), .ZN(n107) );
  NR2D1 U504 ( .A1(n441), .A2(n29), .ZN(L1_p2[21]) );
  NR2D1 U505 ( .A1(n10), .A2(Mantissa_Y[22]), .ZN(L1_p2[24]) );
  IND2D0 U506 ( .A1(n444), .B1(n443), .ZN(x_sub_y[0]) );
  OAI222D0 U507 ( .A1(n167), .A2(n47), .B1(n196), .B2(n463), .C1(n74), .C2(n13), .ZN(n121) );
  NR2D0 U508 ( .A1(Mantissa_Y[22]), .A2(n445), .ZN(L1_p2[1]) );
  INVD0 U509 ( .I(x_sub_y[4]), .ZN(n447) );
  NR2D0 U510 ( .A1(Mantissa_Y[22]), .A2(n447), .ZN(L1_p2[3]) );
  OAI222D0 U511 ( .A1(n20), .A2(n447), .B1(n187), .B2(n446), .C1(n204), .C2(n4), .ZN(n164) );
  OAI222D0 U512 ( .A1(n180), .A2(n449), .B1(n87), .B2(n448), .C1(n206), .C2(
        n447), .ZN(n162) );
  OAI222D0 U513 ( .A1(n168), .A2(n33), .B1(n196), .B2(n448), .C1(n449), .C2(
        n102), .ZN(n160) );
  OAI222D0 U514 ( .A1(n178), .A2(n32), .B1(n87), .B2(n450), .C1(n207), .C2(
        n449), .ZN(n159) );
  OAI222D0 U515 ( .A1(n167), .A2(n34), .B1(n27), .B2(n450), .C1(n33), .C2(n101), .ZN(n157) );
  OAI222D0 U516 ( .A1(n177), .A2(n34), .B1(n186), .B2(n452), .C1(n94), .C2(n32), .ZN(n156) );
  OAI222D0 U517 ( .A1(n166), .A2(n35), .B1(n199), .B2(n452), .C1(n34), .C2(
        n100), .ZN(n154) );
  OAI222D0 U518 ( .A1(n179), .A2(n35), .B1(n88), .B2(n453), .C1(n205), .C2(n34), .ZN(n153) );
  OAI222D0 U519 ( .A1(n15), .A2(n36), .B1(n197), .B2(n453), .C1(n35), .C2(n101), .ZN(n151) );
  OAI222D0 U520 ( .A1(n180), .A2(n36), .B1(n88), .B2(n454), .C1(n206), .C2(n3), 
        .ZN(n150) );
  OAI222D0 U521 ( .A1(n103), .A2(n37), .B1(n198), .B2(n454), .C1(n36), .C2(n99), .ZN(n148) );
  OAI222D0 U522 ( .A1(n21), .A2(n37), .B1(n187), .B2(n455), .C1(n207), .C2(n36), .ZN(n147) );
  OAI222D0 U523 ( .A1(n168), .A2(n39), .B1(n199), .B2(n455), .C1(n38), .C2(n13), .ZN(n145) );
  OAI222D0 U524 ( .A1(n178), .A2(n39), .B1(n188), .B2(n456), .C1(n93), .C2(n38), .ZN(n144) );
  OAI222D0 U525 ( .A1(n166), .A2(n40), .B1(n28), .B2(n456), .C1(n39), .C2(n100), .ZN(n142) );
  OAI222D0 U526 ( .A1(n177), .A2(n40), .B1(n87), .B2(n457), .C1(n204), .C2(n39), .ZN(n141) );
  OAI222D0 U527 ( .A1(n167), .A2(n41), .B1(n197), .B2(n457), .C1(n40), .C2(
        n101), .ZN(n139) );
  OAI222D0 U528 ( .A1(n179), .A2(n41), .B1(n186), .B2(n458), .C1(n205), .C2(
        n40), .ZN(n138) );
  OAI222D0 U529 ( .A1(n168), .A2(n42), .B1(n196), .B2(n458), .C1(n41), .C2(
        n102), .ZN(n136) );
  OAI222D0 U530 ( .A1(n20), .A2(n42), .B1(n471), .B2(n459), .C1(n206), .C2(n41), .ZN(n135) );
  OAI222D0 U531 ( .A1(n15), .A2(n43), .B1(n198), .B2(n459), .C1(n42), .C2(n13), 
        .ZN(n133) );
  OAI222D0 U532 ( .A1(n180), .A2(n43), .B1(n187), .B2(n460), .C1(n94), .C2(n42), .ZN(n132) );
  OAI222D0 U533 ( .A1(n103), .A2(n44), .B1(n27), .B2(n460), .C1(n43), .C2(n99), 
        .ZN(n130) );
  OAI222D0 U534 ( .A1(n178), .A2(n44), .B1(n88), .B2(n461), .C1(n207), .C2(n43), .ZN(n129) );
  OAI222D0 U535 ( .A1(n166), .A2(n45), .B1(n199), .B2(n461), .C1(n44), .C2(
        n100), .ZN(n127) );
  OAI222D0 U536 ( .A1(n177), .A2(n72), .B1(n188), .B2(n462), .C1(n204), .C2(
        n44), .ZN(n126) );
  OAI222D0 U537 ( .A1(n167), .A2(n46), .B1(n197), .B2(n462), .C1(n45), .C2(
        n101), .ZN(n124) );
  OAI222D0 U538 ( .A1(n21), .A2(n46), .B1(n186), .B2(n463), .C1(n205), .C2(n45), .ZN(n123) );
  OAI222D0 U539 ( .A1(n179), .A2(n47), .B1(n471), .B2(n464), .C1(n93), .C2(n74), .ZN(n120) );
  OAI222D0 U540 ( .A1(n168), .A2(n48), .B1(n28), .B2(n464), .C1(n47), .C2(n102), .ZN(n118) );
  OAI222D0 U541 ( .A1(n180), .A2(n48), .B1(n87), .B2(n465), .C1(n206), .C2(n2), 
        .ZN(n117) );
  OAI222D0 U542 ( .A1(n103), .A2(n31), .B1(n198), .B2(n465), .C1(n99), .C2(n48), .ZN(n115) );
  OAI222D0 U543 ( .A1(n178), .A2(n31), .B1(n187), .B2(n468), .C1(n207), .C2(
        n78), .ZN(n114) );
  OAI222D0 U544 ( .A1(n20), .A2(n29), .B1(n188), .B2(n470), .C1(n94), .C2(n49), 
        .ZN(n111) );
  FA1D0 U545 ( .A(A31C[15]), .B(A31S[16]), .CI(intadd_0_n9), .CO(intadd_0_n8), 
        .S(intadd_0_SUM_13_) );
  FA1D0 U546 ( .A(A31C[20]), .B(A31S[21]), .CI(intadd_0_n4), .CO(intadd_0_n3), 
        .S(intadd_0_SUM_18_) );
  FA1D0 U547 ( .A(A31C[18]), .B(A31S[19]), .CI(intadd_0_n6), .CO(intadd_0_n5), 
        .S(intadd_0_SUM_16_) );
  FA1D0 U548 ( .A(A31C[16]), .B(A31S[17]), .CI(intadd_0_n8), .CO(intadd_0_n7), 
        .S(intadd_0_SUM_14_) );
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
         intadd_1_n2, intadd_1_n1, n4, n5, n6, n7, n8, n9, n10, n11;

  FA1D0 U2 ( .A(intadd_1_A_6_), .B(intadd_1_B_6_), .CI(intadd_1_n2), .CO(
        intadd_1_n1), .S(out0[29]) );
  CKND2D0 U3 ( .A1(y[28]), .A2(n9), .ZN(intadd_1_B_6_) );
  CKND2D0 U4 ( .A1(y[25]), .A2(n6), .ZN(intadd_1_B_3_) );
  CKND2D0 U5 ( .A1(y[24]), .A2(n5), .ZN(intadd_1_B_2_) );
  CKND2D0 U6 ( .A1(y[29]), .A2(n11), .ZN(n10) );
  CKND2D0 U7 ( .A1(y[26]), .A2(n7), .ZN(intadd_1_B_4_) );
  CKND2D0 U8 ( .A1(y[27]), .A2(n8), .ZN(intadd_1_B_5_) );
  BUFFD0 U9 ( .I(x[2]), .Z(mantissa_x[2]) );
  BUFFD1 U10 ( .I(x[6]), .Z(mantissa_x[6]) );
  BUFFD1 U11 ( .I(y[21]), .Z(mantissa_y[21]) );
  BUFFD1 U12 ( .I(x[20]), .Z(mantissa_x[20]) );
  BUFFD1 U13 ( .I(y[2]), .Z(mantissa_y[2]) );
  BUFFD1 U14 ( .I(x[14]), .Z(mantissa_x[14]) );
  BUFFD1 U15 ( .I(y[22]), .Z(mantissa_y[22]) );
  BUFFD1 U16 ( .I(y[3]), .Z(mantissa_y[3]) );
  CKBD1 U17 ( .I(x[10]), .Z(mantissa_x[10]) );
  BUFFD1 U18 ( .I(y[5]), .Z(mantissa_y[5]) );
  BUFFD1 U19 ( .I(y[4]), .Z(mantissa_y[4]) );
  BUFFD1 U20 ( .I(x[5]), .Z(mantissa_x[5]) );
  CKBD1 U21 ( .I(x[12]), .Z(mantissa_x[12]) );
  BUFFD1 U22 ( .I(y[6]), .Z(mantissa_y[6]) );
  CKBD1 U23 ( .I(x[11]), .Z(mantissa_x[11]) );
  BUFFD1 U24 ( .I(y[8]), .Z(mantissa_y[8]) );
  CKBD1 U25 ( .I(x[9]), .Z(mantissa_x[9]) );
  BUFFD0 U26 ( .I(x[22]), .Z(mantissa_x[22]) );
  BUFFD1 U27 ( .I(y[10]), .Z(mantissa_y[10]) );
  CKBD1 U28 ( .I(y[11]), .Z(mantissa_y[11]) );
  BUFFD1 U29 ( .I(y[16]), .Z(mantissa_y[16]) );
  BUFFD1 U30 ( .I(y[18]), .Z(mantissa_y[18]) );
  CKBD1 U31 ( .I(x[13]), .Z(mantissa_x[13]) );
  BUFFD1 U32 ( .I(y[17]), .Z(mantissa_y[17]) );
  BUFFD0 U33 ( .I(mantissa_out[7]), .Z(out0[7]) );
  BUFFD0 U34 ( .I(mantissa_out[12]), .Z(out0[12]) );
  BUFFD0 U35 ( .I(mantissa_out[1]), .Z(out0[1]) );
  BUFFD0 U36 ( .I(mantissa_out[15]), .Z(out0[15]) );
  BUFFD0 U37 ( .I(mantissa_out[3]), .Z(out0[3]) );
  XNR2D0 U38 ( .A1(intadd_1_n1), .A2(n4), .ZN(out0[30]) );
  BUFFD0 U39 ( .I(mantissa_out[5]), .Z(out0[5]) );
  BUFFD0 U40 ( .I(mantissa_out[17]), .Z(out0[17]) );
  BUFFD0 U41 ( .I(mantissa_out[4]), .Z(out0[4]) );
  BUFFD0 U42 ( .I(mantissa_out[6]), .Z(out0[6]) );
  BUFFD0 U43 ( .I(mantissa_out[18]), .Z(out0[18]) );
  BUFFD0 U44 ( .I(mantissa_out[9]), .Z(out0[9]) );
  BUFFD0 U45 ( .I(mantissa_out[11]), .Z(out0[11]) );
  BUFFD0 U46 ( .I(mantissa_out[10]), .Z(out0[10]) );
  BUFFD0 U47 ( .I(mantissa_out[16]), .Z(out0[16]) );
  FA1D0 U48 ( .A(intadd_1_A_5_), .B(intadd_1_B_5_), .CI(intadd_1_n3), .CO(
        intadd_1_n2), .S(out0[28]) );
  FA1D1 U49 ( .A(intadd_1_A_2_), .B(intadd_1_B_2_), .CI(intadd_1_n6), .CO(
        intadd_1_n5), .S(out0[25]) );
  BUFFD0 U50 ( .I(x[3]), .Z(mantissa_x[3]) );
  BUFFD0 U51 ( .I(x[0]), .Z(mantissa_x[0]) );
  CKBD1 U52 ( .I(y[13]), .Z(mantissa_y[13]) );
  BUFFD0 U53 ( .I(y[0]), .Z(mantissa_y[0]) );
  CKBD1 U54 ( .I(y[14]), .Z(mantissa_y[14]) );
  BUFFD0 U55 ( .I(x[1]), .Z(mantissa_x[1]) );
  CKBD1 U56 ( .I(y[12]), .Z(mantissa_y[12]) );
  BUFFD0 U57 ( .I(x[4]), .Z(mantissa_x[4]) );
  CKBD1 U58 ( .I(y[9]), .Z(mantissa_y[9]) );
  BUFFD0 U59 ( .I(mantissa_out[2]), .Z(out0[2]) );
  BUFFD0 U60 ( .I(mantissa_out[8]), .Z(out0[8]) );
  BUFFD0 U61 ( .I(mantissa_out[21]), .Z(out0[21]) );
  BUFFD0 U62 ( .I(mantissa_out[20]), .Z(out0[20]) );
  BUFFD0 U63 ( .I(mantissa_out[19]), .Z(out0[19]) );
  BUFFD0 U64 ( .I(mantissa_out[13]), .Z(out0[13]) );
  BUFFD0 U65 ( .I(mantissa_out[14]), .Z(out0[14]) );
  BUFFD0 U66 ( .I(mantissa_out[0]), .Z(out0[0]) );
  BUFFD0 U67 ( .I(mantissa_out[22]), .Z(out0[22]) );
  FA1D1 U68 ( .A(intadd_1_A_3_), .B(intadd_1_B_3_), .CI(intadd_1_n5), .CO(
        intadd_1_n4), .S(out0[26]) );
  FA1D1 U69 ( .A(intadd_1_A_1_), .B(intadd_1_B_1_), .CI(intadd_1_n7), .CO(
        intadd_1_n6), .S(out0[24]) );
  FA1D1 U70 ( .A(y[23]), .B(x[23]), .CI(shift_0__BAR), .CO(intadd_1_n7), .S(
        out0[23]) );
  OAI21D0 U71 ( .A1(y[28]), .A2(n9), .B(intadd_1_B_6_), .ZN(intadd_1_A_5_) );
  OAI21D0 U72 ( .A1(y[29]), .A2(n11), .B(n10), .ZN(intadd_1_A_6_) );
  OAI21D0 U73 ( .A1(y[27]), .A2(n8), .B(intadd_1_B_5_), .ZN(intadd_1_A_4_) );
  OAI21D0 U74 ( .A1(y[24]), .A2(n5), .B(intadd_1_B_2_), .ZN(intadd_1_B_1_) );
  OAI21D0 U75 ( .A1(y[26]), .A2(n7), .B(intadd_1_B_4_), .ZN(intadd_1_A_3_) );
  OAI21D0 U76 ( .A1(y[25]), .A2(n6), .B(intadd_1_B_3_), .ZN(intadd_1_A_2_) );
  BUFFD1 U77 ( .I(y[1]), .Z(mantissa_y[1]) );
  INVD0 U78 ( .I(x[25]), .ZN(n6) );
  INVD0 U79 ( .I(x[26]), .ZN(n7) );
  BUFFD1 U80 ( .I(x[8]), .Z(mantissa_x[8]) );
  INVD0 U81 ( .I(x[24]), .ZN(n5) );
  BUFFD1 U82 ( .I(x[16]), .Z(mantissa_x[16]) );
  BUFFD1 U83 ( .I(x[18]), .Z(mantissa_x[18]) );
  INVD0 U84 ( .I(x[27]), .ZN(n8) );
  INVD0 U85 ( .I(x[28]), .ZN(n9) );
  INVD0 U86 ( .I(x[29]), .ZN(n11) );
  BUFFD1 U87 ( .I(x[19]), .Z(mantissa_x[19]) );
  BUFFD1 U88 ( .I(y[19]), .Z(mantissa_y[19]) );
  BUFFD1 U89 ( .I(x[7]), .Z(mantissa_x[7]) );
  BUFFD1 U90 ( .I(x[15]), .Z(mantissa_x[15]) );
  BUFFD1 U91 ( .I(x[21]), .Z(mantissa_x[21]) );
  BUFFD1 U92 ( .I(y[15]), .Z(mantissa_y[15]) );
  INVD0 U93 ( .I(y[23]), .ZN(intadd_1_A_1_) );
  BUFFD1 U94 ( .I(x[17]), .Z(mantissa_x[17]) );
  BUFFD1 U95 ( .I(y[7]), .Z(mantissa_y[7]) );
  BUFFD1 U96 ( .I(y[20]), .Z(mantissa_y[20]) );
  XOR3D0 U97 ( .A1(y[30]), .A2(x[30]), .A3(n10), .Z(n4) );
  XOR2D0 U98 ( .A1(y[31]), .A2(x[31]), .Z(out0[31]) );
  FA1D0 U99 ( .A(intadd_1_A_4_), .B(intadd_1_B_4_), .CI(intadd_1_n4), .CO(
        intadd_1_n3), .S(out0[27]) );
endmodule


module pace_fp32_l3 ( x, y, out0 );
  input [31:0] x;
  input [31:0] y;
  output [31:0] out0;
  wire   shift;
  wire   [22:0] mantissa_x;
  wire   [22:0] mantissa_y;
  wire   [22:0] mantissa_out;

  Mantissa_Div_L3_MANTISSA_WIDTH23 mantissa_div ( .Mantissa_X(mantissa_x), 
        .Mantissa_Y(mantissa_y), .Mantissa_Out(mantissa_out), .Shift(shift) );
  FP_DIV_WRAPPER_32 fp_wrapper ( .x(x), .y(y), .out0(out0), .mantissa_x(
        mantissa_x), .mantissa_y(mantissa_y), .mantissa_out(mantissa_out), 
        .shift_0__BAR(shift) );
endmodule

