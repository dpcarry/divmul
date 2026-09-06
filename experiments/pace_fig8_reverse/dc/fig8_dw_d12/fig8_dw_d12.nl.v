/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Sat Sep  5 13:26:09 2026
/////////////////////////////////////////////////////////////


module fig8_dw_B11_add_1_root_sub_2151_DP_OP_357_4856_0 ( I1, I2, O6 );
  input [7:0] I1;
  input [7:0] I2;
  output [9:0] O6;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n48, n49, n50, n51, n52, n53, n54;

  FA1D0 U4 ( .A(I2[7]), .B(I1[7]), .CI(n3), .CO(n2), .S(O6[7]) );
  FA1D0 U5 ( .A(n48), .B(I1[6]), .CI(n4), .CO(n3), .S(O6[6]) );
  FA1D0 U6 ( .A(n49), .B(I1[5]), .CI(n5), .CO(n4), .S(O6[5]) );
  FA1D0 U7 ( .A(n50), .B(I1[4]), .CI(n6), .CO(n5), .S(O6[4]) );
  FA1D0 U8 ( .A(n51), .B(I1[3]), .CI(n7), .CO(n6), .S(O6[3]) );
  FA1D0 U9 ( .A(n52), .B(I1[2]), .CI(n8), .CO(n7), .S(O6[2]) );
  FA1D0 U10 ( .A(n53), .B(I1[1]), .CI(n9), .CO(n8), .S(O6[1]) );
  HA1D0 U11 ( .A(n54), .B(I1[0]), .CO(n9), .S(O6[0]) );
  INR2XD0 U22 ( .A1(I2[7]), .B1(n2), .ZN(O6[9]) );
  INVD1 U23 ( .I(I2[0]), .ZN(n54) );
  INVD1 U24 ( .I(I2[1]), .ZN(n53) );
  INVD1 U25 ( .I(I2[2]), .ZN(n52) );
  INVD1 U26 ( .I(I2[3]), .ZN(n51) );
  INVD1 U27 ( .I(I2[4]), .ZN(n50) );
  INVD1 U28 ( .I(I2[5]), .ZN(n49) );
  INVD1 U29 ( .I(I2[6]), .ZN(n48) );
  CKXOR2D0 U30 ( .A1(I2[7]), .A2(n2), .Z(O6[8]) );
endmodule


module fig8_dw_B11_DW_div_5 ( a, b, quotient, remainder, divide_by_0 );
  input [24:0] a;
  input [11:0] b;
  output [24:0] quotient;
  output [11:0] remainder;
  output divide_by_0;
  wire   n187, PartRem_13__11_, PartRem_13__2_, PartRem_12__11_,
         PartRem_12__7_, PartRem_12__2_, PartRem_12__1_, PartRem_11__11_,
         PartRem_11__3_, PartRem_11__1_, PartRem_10__11_, PartRem_10__1_,
         PartRem_9__11_, PartRem_9__1_, PartRem_8__11_, PartRem_8__1_,
         PartRem_7__11_, PartRem_7__1_, PartRem_6__11_, PartRem_6__1_,
         PartRem_5__11_, PartRem_5__1_, PartRem_4__11_, PartRem_4__1_,
         PartRem_3__11_, PartRem_3__1_, CryTmp_13__12_, CryTmp_13__10_,
         CryTmp_13__9_, CryTmp_13__8_, CryTmp_13__7_, CryTmp_13__6_,
         CryTmp_13__5_, CryTmp_13__4_, CryTmp_13__3_, CryTmp_13__2_,
         CryTmp_13__1_, CryTmp_12__11_, CryTmp_12__10_, CryTmp_12__9_,
         CryTmp_12__8_, CryTmp_12__7_, CryTmp_12__6_, CryTmp_12__5_,
         CryTmp_12__4_, CryTmp_12__3_, CryTmp_12__2_, CryTmp_12__1_,
         CryTmp_11__11_, CryTmp_11__10_, CryTmp_11__9_, CryTmp_11__8_,
         CryTmp_11__7_, CryTmp_11__6_, CryTmp_11__5_, CryTmp_11__4_,
         CryTmp_11__3_, CryTmp_11__2_, CryTmp_10__11_, CryTmp_10__10_,
         CryTmp_10__9_, CryTmp_10__8_, CryTmp_10__7_, CryTmp_10__6_,
         CryTmp_10__5_, CryTmp_10__4_, CryTmp_10__3_, CryTmp_10__2_,
         CryTmp_9__11_, CryTmp_9__10_, CryTmp_9__9_, CryTmp_9__8_,
         CryTmp_9__7_, CryTmp_9__6_, CryTmp_9__5_, CryTmp_9__4_, CryTmp_9__3_,
         CryTmp_9__2_, CryTmp_8__11_, CryTmp_8__10_, CryTmp_8__9_,
         CryTmp_8__8_, CryTmp_8__7_, CryTmp_8__6_, CryTmp_8__5_, CryTmp_8__4_,
         CryTmp_8__3_, CryTmp_8__2_, CryTmp_7__11_, CryTmp_7__10_,
         CryTmp_7__9_, CryTmp_7__8_, CryTmp_7__7_, CryTmp_7__6_, CryTmp_7__5_,
         CryTmp_7__4_, CryTmp_7__3_, CryTmp_7__2_, CryTmp_6__11_,
         CryTmp_6__10_, CryTmp_6__9_, CryTmp_6__8_, CryTmp_6__7_, CryTmp_6__6_,
         CryTmp_6__5_, CryTmp_6__4_, CryTmp_6__3_, CryTmp_6__2_, CryTmp_5__11_,
         CryTmp_5__10_, CryTmp_5__9_, CryTmp_5__8_, CryTmp_5__7_, CryTmp_5__6_,
         CryTmp_5__5_, CryTmp_5__4_, CryTmp_5__3_, CryTmp_5__2_, CryTmp_4__11_,
         CryTmp_4__10_, CryTmp_4__9_, CryTmp_4__8_, CryTmp_4__7_, CryTmp_4__6_,
         CryTmp_4__5_, CryTmp_4__4_, CryTmp_4__3_, CryTmp_4__2_, CryTmp_3__11_,
         CryTmp_3__10_, CryTmp_3__9_, CryTmp_3__8_, CryTmp_3__7_, CryTmp_3__6_,
         CryTmp_3__5_, CryTmp_3__4_, CryTmp_3__3_, CryTmp_3__2_, CryTmp_2__11_,
         CryTmp_2__10_, CryTmp_2__9_, CryTmp_2__8_, CryTmp_2__7_, CryTmp_2__6_,
         CryTmp_2__5_, CryTmp_2__4_, CryTmp_2__3_, CryTmp_2__2_, CryTmp_1__11_,
         CryTmp_1__10_, CryTmp_1__9_, CryTmp_1__8_, CryTmp_1__7_, CryTmp_1__6_,
         CryTmp_1__5_, CryTmp_1__4_, CryTmp_1__3_, CryTmp_1__2_,
         SumTmp_13__10_, SumTmp_13__9_, SumTmp_13__8_, SumTmp_13__7_,
         SumTmp_13__6_, SumTmp_13__5_, SumTmp_13__4_, SumTmp_13__3_,
         SumTmp_13__2_, SumTmp_13__1_, SumTmp_13__0_, SumTmp_12__10_,
         SumTmp_12__9_, SumTmp_12__8_, SumTmp_12__7_, SumTmp_12__6_,
         SumTmp_12__5_, SumTmp_12__4_, SumTmp_12__3_, SumTmp_12__2_,
         SumTmp_12__1_, SumTmp_11__10_, SumTmp_11__9_, SumTmp_11__8_,
         SumTmp_11__7_, SumTmp_11__6_, SumTmp_11__5_, SumTmp_11__4_,
         SumTmp_11__3_, SumTmp_11__2_, SumTmp_11__1_, SumTmp_10__10_,
         SumTmp_10__9_, SumTmp_10__8_, SumTmp_10__7_, SumTmp_10__6_,
         SumTmp_10__5_, SumTmp_10__4_, SumTmp_10__3_, SumTmp_10__2_,
         SumTmp_10__1_, SumTmp_9__10_, SumTmp_9__9_, SumTmp_9__8_,
         SumTmp_9__7_, SumTmp_9__6_, SumTmp_9__5_, SumTmp_9__4_, SumTmp_9__3_,
         SumTmp_9__2_, SumTmp_9__1_, SumTmp_8__10_, SumTmp_8__9_, SumTmp_8__8_,
         SumTmp_8__7_, SumTmp_8__6_, SumTmp_8__5_, SumTmp_8__4_, SumTmp_8__3_,
         SumTmp_8__2_, SumTmp_8__1_, SumTmp_7__10_, SumTmp_7__9_, SumTmp_7__8_,
         SumTmp_7__7_, SumTmp_7__6_, SumTmp_7__5_, SumTmp_7__4_, SumTmp_7__3_,
         SumTmp_7__2_, SumTmp_7__1_, SumTmp_6__10_, SumTmp_6__9_, SumTmp_6__8_,
         SumTmp_6__7_, SumTmp_6__6_, SumTmp_6__5_, SumTmp_6__4_, SumTmp_6__3_,
         SumTmp_6__2_, SumTmp_6__1_, SumTmp_5__10_, SumTmp_5__9_, SumTmp_5__8_,
         SumTmp_5__7_, SumTmp_5__6_, SumTmp_5__5_, SumTmp_5__4_, SumTmp_5__3_,
         SumTmp_5__2_, SumTmp_5__1_, SumTmp_4__10_, SumTmp_4__9_, SumTmp_4__8_,
         SumTmp_4__7_, SumTmp_4__6_, SumTmp_4__5_, SumTmp_4__4_, SumTmp_4__3_,
         SumTmp_4__2_, SumTmp_4__1_, SumTmp_3__10_, SumTmp_3__9_, SumTmp_3__8_,
         SumTmp_3__7_, SumTmp_3__6_, SumTmp_3__5_, SumTmp_3__4_, SumTmp_3__3_,
         SumTmp_3__2_, SumTmp_3__1_, SumTmp_2__10_, SumTmp_2__9_, SumTmp_2__8_,
         SumTmp_2__7_, SumTmp_2__6_, SumTmp_2__5_, SumTmp_2__4_, SumTmp_2__3_,
         SumTmp_2__2_, SumTmp_2__1_, n1, n2, n3, n4, n5, n7, n8, n10, n14, n15,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n113, n114, n117, n118, n119, n120,
         n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131,
         n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n178,
         n179, n182, n183, n184, n185, n186, n188, n189, n190, n191, n192,
         n193;
  wire   [10:1] BInv;

  FA1D0 u_fa_PartRem_0_13_1 ( .A(a[14]), .B(BInv[1]), .CI(CryTmp_13__1_), .CO(
        CryTmp_13__2_), .S(SumTmp_13__1_) );
  FA1D0 u_fa_PartRem_0_1_9 ( .A(n89), .B(BInv[9]), .CI(CryTmp_1__9_), .CO(
        CryTmp_1__10_) );
  FA1D0 u_fa_PartRem_0_1_10 ( .A(n5), .B(BInv[10]), .CI(CryTmp_1__10_), .CO(
        CryTmp_1__11_) );
  FA1D0 u_fa_PartRem_0_6_1 ( .A(PartRem_7__1_), .B(BInv[1]), .CI(CryTmp_12__1_), .CO(CryTmp_6__2_), .S(SumTmp_6__1_) );
  FA1D0 u_fa_PartRem_0_7_1 ( .A(PartRem_8__1_), .B(BInv[1]), .CI(CryTmp_12__1_), .CO(CryTmp_7__2_), .S(SumTmp_7__1_) );
  FA1D0 u_fa_PartRem_0_8_1 ( .A(PartRem_9__1_), .B(BInv[1]), .CI(CryTmp_12__1_), .CO(CryTmp_8__2_), .S(SumTmp_8__1_) );
  FA1D0 u_fa_PartRem_0_1_7 ( .A(n67), .B(BInv[7]), .CI(CryTmp_1__7_), .CO(
        CryTmp_1__8_) );
  FA1D0 u_fa_PartRem_0_1_8 ( .A(n4), .B(BInv[8]), .CI(CryTmp_1__8_), .CO(
        CryTmp_1__9_) );
  FA1D0 u_fa_PartRem_0_2_8 ( .A(n69), .B(BInv[8]), .CI(CryTmp_2__8_), .CO(
        CryTmp_2__9_), .S(SumTmp_2__8_) );
  FA1D0 u_fa_PartRem_0_1_1 ( .A(n104), .B(BInv[1]), .CI(CryTmp_12__1_), .CO(
        CryTmp_1__2_) );
  FA1D0 u_fa_PartRem_0_1_2 ( .A(n1), .B(BInv[2]), .CI(CryTmp_1__2_), .CO(
        CryTmp_1__3_) );
  FA1D0 u_fa_PartRem_0_2_3 ( .A(n17), .B(BInv[3]), .CI(CryTmp_2__3_), .CO(
        CryTmp_2__4_), .S(SumTmp_2__3_) );
  FA1D0 u_fa_PartRem_0_2_2 ( .A(n123), .B(BInv[2]), .CI(CryTmp_2__2_), .CO(
        CryTmp_2__3_), .S(SumTmp_2__2_) );
  FA1D0 u_fa_PartRem_0_3_8 ( .A(n76), .B(BInv[8]), .CI(CryTmp_3__8_), .CO(
        CryTmp_3__9_), .S(SumTmp_3__8_) );
  FA1D0 u_fa_PartRem_0_4_8 ( .A(n75), .B(BInv[8]), .CI(CryTmp_4__8_), .CO(
        CryTmp_4__9_), .S(SumTmp_4__8_) );
  FA1D0 u_fa_PartRem_0_3_3 ( .A(n24), .B(BInv[3]), .CI(CryTmp_3__3_), .CO(
        CryTmp_3__4_), .S(SumTmp_3__3_) );
  FA1D0 u_fa_PartRem_0_3_2 ( .A(n122), .B(BInv[2]), .CI(CryTmp_3__2_), .CO(
        CryTmp_3__3_), .S(SumTmp_3__2_) );
  FA1D0 u_fa_PartRem_0_5_8 ( .A(n74), .B(BInv[8]), .CI(CryTmp_5__8_), .CO(
        CryTmp_5__9_), .S(SumTmp_5__8_) );
  FA1D0 u_fa_PartRem_0_4_3 ( .A(n23), .B(BInv[3]), .CI(CryTmp_4__3_), .CO(
        CryTmp_4__4_), .S(SumTmp_4__3_) );
  FA1D0 u_fa_PartRem_0_6_8 ( .A(n73), .B(BInv[8]), .CI(CryTmp_6__8_), .CO(
        CryTmp_6__9_), .S(SumTmp_6__8_) );
  FA1D0 u_fa_PartRem_0_4_2 ( .A(n121), .B(BInv[2]), .CI(CryTmp_4__2_), .CO(
        CryTmp_4__3_), .S(SumTmp_4__2_) );
  FA1D0 u_fa_PartRem_0_5_3 ( .A(n22), .B(BInv[3]), .CI(CryTmp_5__3_), .CO(
        CryTmp_5__4_), .S(SumTmp_5__3_) );
  FA1D0 u_fa_PartRem_0_7_8 ( .A(n72), .B(BInv[8]), .CI(CryTmp_7__8_), .CO(
        CryTmp_7__9_), .S(SumTmp_7__8_) );
  FA1D0 u_fa_PartRem_0_5_2 ( .A(n120), .B(BInv[2]), .CI(CryTmp_5__2_), .CO(
        CryTmp_5__3_), .S(SumTmp_5__2_) );
  FA1D0 u_fa_PartRem_0_6_3 ( .A(n21), .B(BInv[3]), .CI(CryTmp_6__3_), .CO(
        CryTmp_6__4_), .S(SumTmp_6__3_) );
  FA1D0 u_fa_PartRem_0_8_8 ( .A(n71), .B(BInv[8]), .CI(CryTmp_8__8_), .CO(
        CryTmp_8__9_), .S(SumTmp_8__8_) );
  FA1D0 u_fa_PartRem_0_6_2 ( .A(n119), .B(BInv[2]), .CI(CryTmp_6__2_), .CO(
        CryTmp_6__3_), .S(SumTmp_6__2_) );
  FA1D0 u_fa_PartRem_0_7_3 ( .A(n20), .B(BInv[3]), .CI(CryTmp_7__3_), .CO(
        CryTmp_7__4_), .S(SumTmp_7__3_) );
  FA1D0 u_fa_PartRem_0_9_8 ( .A(n70), .B(BInv[8]), .CI(CryTmp_9__8_), .CO(
        CryTmp_9__9_), .S(SumTmp_9__8_) );
  FA1D0 u_fa_PartRem_0_7_2 ( .A(n125), .B(BInv[2]), .CI(CryTmp_7__2_), .CO(
        CryTmp_7__3_), .S(SumTmp_7__2_) );
  FA1D0 u_fa_PartRem_0_8_3 ( .A(n19), .B(BInv[3]), .CI(CryTmp_8__3_), .CO(
        CryTmp_8__4_), .S(SumTmp_8__3_) );
  FA1D0 u_fa_PartRem_0_10_8 ( .A(n128), .B(BInv[8]), .CI(CryTmp_10__8_), .CO(
        CryTmp_10__9_), .S(SumTmp_10__8_) );
  FA1D0 u_fa_PartRem_0_8_2 ( .A(n124), .B(BInv[2]), .CI(CryTmp_8__2_), .CO(
        CryTmp_8__3_), .S(SumTmp_8__2_) );
  FA1D0 u_fa_PartRem_0_9_3 ( .A(n18), .B(BInv[3]), .CI(CryTmp_9__3_), .CO(
        CryTmp_9__4_), .S(SumTmp_9__3_) );
  FA1D0 u_fa_PartRem_0_11_8 ( .A(n77), .B(BInv[8]), .CI(CryTmp_11__8_), .CO(
        CryTmp_11__9_), .S(SumTmp_11__8_) );
  FA1D0 u_fa_PartRem_0_9_2 ( .A(n118), .B(BInv[2]), .CI(CryTmp_9__2_), .CO(
        CryTmp_9__3_), .S(SumTmp_9__2_) );
  FA1D0 u_fa_PartRem_0_10_3 ( .A(PartRem_11__3_), .B(BInv[3]), .CI(
        CryTmp_10__3_), .CO(CryTmp_10__4_), .S(SumTmp_10__3_) );
  FA1D0 u_fa_PartRem_0_12_8 ( .A(n78), .B(BInv[8]), .CI(CryTmp_12__8_), .CO(
        CryTmp_12__9_), .S(SumTmp_12__8_) );
  FA1D0 u_fa_PartRem_0_10_2 ( .A(n117), .B(BInv[2]), .CI(CryTmp_10__2_), .CO(
        CryTmp_10__3_), .S(SumTmp_10__2_) );
  FA1D0 u_fa_PartRem_0_11_3 ( .A(n126), .B(BInv[3]), .CI(CryTmp_11__3_), .CO(
        CryTmp_11__4_), .S(SumTmp_11__3_) );
  FA1D0 u_fa_PartRem_0_13_8 ( .A(a[21]), .B(BInv[8]), .CI(CryTmp_13__8_), .CO(
        CryTmp_13__9_), .S(SumTmp_13__8_) );
  FA1D0 u_fa_PartRem_0_11_2 ( .A(PartRem_12__2_), .B(BInv[2]), .CI(
        CryTmp_11__2_), .CO(CryTmp_11__3_), .S(SumTmp_11__2_) );
  FA1D0 u_fa_PartRem_0_12_3 ( .A(n141), .B(BInv[3]), .CI(CryTmp_12__3_), .CO(
        CryTmp_12__4_), .S(SumTmp_12__3_) );
  FA1D0 u_fa_PartRem_0_12_2 ( .A(PartRem_13__2_), .B(BInv[2]), .CI(
        CryTmp_12__2_), .CO(CryTmp_12__3_), .S(SumTmp_12__2_) );
  FA1D0 u_fa_PartRem_0_13_3 ( .A(a[16]), .B(BInv[3]), .CI(CryTmp_13__3_), .CO(
        CryTmp_13__4_), .S(SumTmp_13__3_) );
  FA1D0 u_fa_PartRem_0_13_2 ( .A(a[15]), .B(BInv[2]), .CI(CryTmp_13__2_), .CO(
        CryTmp_13__3_), .S(SumTmp_13__2_) );
  FA1D0 u_fa_PartRem_0_2_9 ( .A(n79), .B(BInv[9]), .CI(CryTmp_2__9_), .CO(
        CryTmp_2__10_), .S(SumTmp_2__9_) );
  FA1D0 u_fa_PartRem_0_1_5 ( .A(n45), .B(BInv[5]), .CI(CryTmp_1__5_), .CO(
        CryTmp_1__6_) );
  FA1D0 u_fa_PartRem_0_1_6 ( .A(n3), .B(BInv[6]), .CI(CryTmp_1__6_), .CO(
        CryTmp_1__7_) );
  FA1D0 u_fa_PartRem_0_2_7 ( .A(n58), .B(BInv[7]), .CI(CryTmp_2__7_), .CO(
        CryTmp_2__8_), .S(SumTmp_2__7_) );
  FA1D0 u_fa_PartRem_0_2_6 ( .A(n47), .B(BInv[6]), .CI(CryTmp_2__6_), .CO(
        CryTmp_2__7_), .S(SumTmp_2__6_) );
  FA1D0 u_fa_PartRem_0_1_3 ( .A(n25), .B(BInv[3]), .CI(CryTmp_1__3_), .CO(
        CryTmp_1__4_) );
  FA1D0 u_fa_PartRem_0_1_4 ( .A(n2), .B(BInv[4]), .CI(CryTmp_1__4_), .CO(
        CryTmp_1__5_) );
  FA1D0 u_fa_PartRem_0_2_5 ( .A(n35), .B(BInv[5]), .CI(CryTmp_2__5_), .CO(
        CryTmp_2__6_), .S(SumTmp_2__5_) );
  FA1D0 u_fa_PartRem_0_2_4 ( .A(n26), .B(BInv[4]), .CI(CryTmp_2__4_), .CO(
        CryTmp_2__5_), .S(SumTmp_2__4_) );
  FA1D0 u_fa_PartRem_0_3_9 ( .A(n86), .B(BInv[9]), .CI(CryTmp_3__9_), .CO(
        CryTmp_3__10_), .S(SumTmp_3__9_) );
  FA1D0 u_fa_PartRem_0_3_7 ( .A(n65), .B(BInv[7]), .CI(CryTmp_3__7_), .CO(
        CryTmp_3__8_), .S(SumTmp_3__7_) );
  FA1D0 u_fa_PartRem_0_3_6 ( .A(n54), .B(BInv[6]), .CI(CryTmp_3__6_), .CO(
        CryTmp_3__7_), .S(SumTmp_3__6_) );
  FA1D0 u_fa_PartRem_0_4_9 ( .A(n85), .B(BInv[9]), .CI(CryTmp_4__9_), .CO(
        CryTmp_4__10_), .S(SumTmp_4__9_) );
  FA1D0 u_fa_PartRem_0_3_5 ( .A(n42), .B(BInv[5]), .CI(CryTmp_3__5_), .CO(
        CryTmp_3__6_), .S(SumTmp_3__5_) );
  FA1D0 u_fa_PartRem_0_3_4 ( .A(n32), .B(BInv[4]), .CI(CryTmp_3__4_), .CO(
        CryTmp_3__5_), .S(SumTmp_3__4_) );
  FA1D0 u_fa_PartRem_0_4_7 ( .A(n64), .B(BInv[7]), .CI(CryTmp_4__7_), .CO(
        CryTmp_4__8_), .S(SumTmp_4__7_) );
  FA1D0 u_fa_PartRem_0_5_9 ( .A(n84), .B(BInv[9]), .CI(CryTmp_5__9_), .CO(
        CryTmp_5__10_), .S(SumTmp_5__9_) );
  FA1D0 u_fa_PartRem_0_4_6 ( .A(n53), .B(BInv[6]), .CI(CryTmp_4__6_), .CO(
        CryTmp_4__7_), .S(SumTmp_4__6_) );
  FA1D0 u_fa_PartRem_0_4_5 ( .A(n41), .B(BInv[5]), .CI(CryTmp_4__5_), .CO(
        CryTmp_4__6_), .S(SumTmp_4__5_) );
  FA1D0 u_fa_PartRem_0_5_7 ( .A(n63), .B(BInv[7]), .CI(CryTmp_5__7_), .CO(
        CryTmp_5__8_), .S(SumTmp_5__7_) );
  FA1D0 u_fa_PartRem_0_4_4 ( .A(n31), .B(BInv[4]), .CI(CryTmp_4__4_), .CO(
        CryTmp_4__5_), .S(SumTmp_4__4_) );
  FA1D0 u_fa_PartRem_0_6_9 ( .A(n83), .B(BInv[9]), .CI(CryTmp_6__9_), .CO(
        CryTmp_6__10_), .S(SumTmp_6__9_) );
  FA1D0 u_fa_PartRem_0_5_6 ( .A(n52), .B(BInv[6]), .CI(CryTmp_5__6_), .CO(
        CryTmp_5__7_), .S(SumTmp_5__6_) );
  FA1D0 u_fa_PartRem_0_5_5 ( .A(n40), .B(BInv[5]), .CI(CryTmp_5__5_), .CO(
        CryTmp_5__6_), .S(SumTmp_5__5_) );
  FA1D0 u_fa_PartRem_0_6_7 ( .A(n62), .B(BInv[7]), .CI(CryTmp_6__7_), .CO(
        CryTmp_6__8_), .S(SumTmp_6__7_) );
  FA1D0 u_fa_PartRem_0_5_4 ( .A(n30), .B(BInv[4]), .CI(CryTmp_5__4_), .CO(
        CryTmp_5__5_), .S(SumTmp_5__4_) );
  FA1D0 u_fa_PartRem_0_7_9 ( .A(n82), .B(BInv[9]), .CI(CryTmp_7__9_), .CO(
        CryTmp_7__10_), .S(SumTmp_7__9_) );
  FA1D0 u_fa_PartRem_0_6_6 ( .A(n51), .B(BInv[6]), .CI(CryTmp_6__6_), .CO(
        CryTmp_6__7_), .S(SumTmp_6__6_) );
  FA1D0 u_fa_PartRem_0_6_5 ( .A(n39), .B(BInv[5]), .CI(CryTmp_6__5_), .CO(
        CryTmp_6__6_), .S(SumTmp_6__5_) );
  FA1D0 u_fa_PartRem_0_7_7 ( .A(n61), .B(BInv[7]), .CI(CryTmp_7__7_), .CO(
        CryTmp_7__8_), .S(SumTmp_7__7_) );
  FA1D0 u_fa_PartRem_0_6_4 ( .A(n29), .B(BInv[4]), .CI(CryTmp_6__4_), .CO(
        CryTmp_6__5_), .S(SumTmp_6__4_) );
  FA1D0 u_fa_PartRem_0_8_9 ( .A(n81), .B(BInv[9]), .CI(CryTmp_8__9_), .CO(
        CryTmp_8__10_), .S(SumTmp_8__9_) );
  FA1D0 u_fa_PartRem_0_7_6 ( .A(n50), .B(BInv[6]), .CI(CryTmp_7__6_), .CO(
        CryTmp_7__7_), .S(SumTmp_7__6_) );
  FA1D0 u_fa_PartRem_0_7_5 ( .A(n38), .B(BInv[5]), .CI(CryTmp_7__5_), .CO(
        CryTmp_7__6_), .S(SumTmp_7__5_) );
  FA1D0 u_fa_PartRem_0_8_7 ( .A(n60), .B(BInv[7]), .CI(CryTmp_8__7_), .CO(
        CryTmp_8__8_), .S(SumTmp_8__7_) );
  FA1D0 u_fa_PartRem_0_7_4 ( .A(n28), .B(BInv[4]), .CI(CryTmp_7__4_), .CO(
        CryTmp_7__5_), .S(SumTmp_7__4_) );
  FA1D0 u_fa_PartRem_0_9_9 ( .A(n80), .B(BInv[9]), .CI(CryTmp_9__9_), .CO(
        CryTmp_9__10_), .S(SumTmp_9__9_) );
  FA1D0 u_fa_PartRem_0_8_6 ( .A(n49), .B(BInv[6]), .CI(CryTmp_8__6_), .CO(
        CryTmp_8__7_), .S(SumTmp_8__6_) );
  FA1D0 u_fa_PartRem_0_8_5 ( .A(n37), .B(BInv[5]), .CI(CryTmp_8__5_), .CO(
        CryTmp_8__6_), .S(SumTmp_8__5_) );
  FA1D0 u_fa_PartRem_0_9_7 ( .A(n59), .B(BInv[7]), .CI(CryTmp_9__7_), .CO(
        CryTmp_9__8_), .S(SumTmp_9__7_) );
  FA1D0 u_fa_PartRem_0_8_4 ( .A(n27), .B(BInv[4]), .CI(CryTmp_8__4_), .CO(
        CryTmp_8__5_), .S(SumTmp_8__4_) );
  FA1D0 u_fa_PartRem_0_10_9 ( .A(n87), .B(BInv[9]), .CI(CryTmp_10__9_), .CO(
        CryTmp_10__10_), .S(SumTmp_10__9_) );
  FA1D0 u_fa_PartRem_0_9_6 ( .A(n48), .B(BInv[6]), .CI(CryTmp_9__6_), .CO(
        CryTmp_9__7_), .S(SumTmp_9__6_) );
  FA1D0 u_fa_PartRem_0_9_5 ( .A(n36), .B(BInv[5]), .CI(CryTmp_9__5_), .CO(
        CryTmp_9__6_), .S(SumTmp_9__5_) );
  FA1D0 u_fa_PartRem_0_10_7 ( .A(n66), .B(BInv[7]), .CI(CryTmp_10__7_), .CO(
        CryTmp_10__8_), .S(SumTmp_10__7_) );
  FA1D0 u_fa_PartRem_0_9_4 ( .A(n127), .B(BInv[4]), .CI(CryTmp_9__4_), .CO(
        CryTmp_9__5_), .S(SumTmp_9__4_) );
  FA1D0 u_fa_PartRem_0_11_9 ( .A(n88), .B(BInv[9]), .CI(CryTmp_11__9_), .CO(
        CryTmp_11__10_), .S(SumTmp_11__9_) );
  FA1D0 u_fa_PartRem_0_10_6 ( .A(n55), .B(BInv[6]), .CI(CryTmp_10__6_), .CO(
        CryTmp_10__7_), .S(SumTmp_10__6_) );
  FA1D0 u_fa_PartRem_0_10_5 ( .A(n43), .B(BInv[5]), .CI(CryTmp_10__5_), .CO(
        CryTmp_10__6_), .S(SumTmp_10__5_) );
  FA1D0 u_fa_PartRem_0_11_7 ( .A(PartRem_12__7_), .B(BInv[7]), .CI(
        CryTmp_11__7_), .CO(CryTmp_11__8_), .S(SumTmp_11__7_) );
  FA1D0 u_fa_PartRem_0_10_4 ( .A(n33), .B(BInv[4]), .CI(CryTmp_10__4_), .CO(
        CryTmp_10__5_), .S(SumTmp_10__4_) );
  FA1D0 u_fa_PartRem_0_12_9 ( .A(n90), .B(BInv[9]), .CI(CryTmp_12__9_), .CO(
        CryTmp_12__10_), .S(SumTmp_12__9_) );
  FA1D0 u_fa_PartRem_0_11_6 ( .A(n56), .B(BInv[6]), .CI(CryTmp_11__6_), .CO(
        CryTmp_11__7_), .S(SumTmp_11__6_) );
  FA1D0 u_fa_PartRem_0_11_5 ( .A(n44), .B(BInv[5]), .CI(CryTmp_11__5_), .CO(
        CryTmp_11__6_), .S(SumTmp_11__5_) );
  FA1D0 u_fa_PartRem_0_12_7 ( .A(n68), .B(BInv[7]), .CI(CryTmp_12__7_), .CO(
        CryTmp_12__8_), .S(SumTmp_12__7_) );
  FA1D0 u_fa_PartRem_0_11_4 ( .A(n34), .B(BInv[4]), .CI(CryTmp_11__4_), .CO(
        CryTmp_11__5_), .S(SumTmp_11__4_) );
  FA1D0 u_fa_PartRem_0_13_9 ( .A(a[22]), .B(BInv[9]), .CI(CryTmp_13__9_), .CO(
        CryTmp_13__10_), .S(SumTmp_13__9_) );
  FA1D0 u_fa_PartRem_0_12_6 ( .A(n57), .B(BInv[6]), .CI(CryTmp_12__6_), .CO(
        CryTmp_12__7_), .S(SumTmp_12__6_) );
  FA1D0 u_fa_PartRem_0_12_5 ( .A(n46), .B(BInv[5]), .CI(CryTmp_12__5_), .CO(
        CryTmp_12__6_), .S(SumTmp_12__5_) );
  FA1D0 u_fa_PartRem_0_13_7 ( .A(a[20]), .B(BInv[7]), .CI(CryTmp_13__7_), .CO(
        CryTmp_13__8_), .S(SumTmp_13__7_) );
  FA1D0 u_fa_PartRem_0_12_4 ( .A(n101), .B(BInv[4]), .CI(CryTmp_12__4_), .CO(
        CryTmp_12__5_), .S(SumTmp_12__4_) );
  FA1D0 u_fa_PartRem_0_13_6 ( .A(a[19]), .B(BInv[6]), .CI(CryTmp_13__6_), .CO(
        CryTmp_13__7_), .S(SumTmp_13__6_) );
  FA1D0 u_fa_PartRem_0_13_5 ( .A(a[18]), .B(BInv[5]), .CI(CryTmp_13__5_), .CO(
        CryTmp_13__6_), .S(SumTmp_13__5_) );
  FA1D0 u_fa_PartRem_0_13_4 ( .A(a[17]), .B(BInv[4]), .CI(CryTmp_13__4_), .CO(
        CryTmp_13__5_), .S(SumTmp_13__4_) );
  FA1D0 u_fa_PartRem_0_2_1 ( .A(PartRem_3__1_), .B(BInv[1]), .CI(CryTmp_12__1_), .CO(CryTmp_2__2_), .S(SumTmp_2__1_) );
  FA1D0 u_fa_PartRem_0_3_1 ( .A(PartRem_4__1_), .B(BInv[1]), .CI(CryTmp_12__1_), .CO(CryTmp_3__2_), .S(SumTmp_3__1_) );
  FA1D0 u_fa_PartRem_0_4_1 ( .A(PartRem_5__1_), .B(BInv[1]), .CI(CryTmp_12__1_), .CO(CryTmp_4__2_), .S(SumTmp_4__1_) );
  FA1D0 u_fa_PartRem_0_5_1 ( .A(PartRem_6__1_), .B(BInv[1]), .CI(CryTmp_12__1_), .CO(CryTmp_5__2_), .S(SumTmp_5__1_) );
  FA1D0 u_fa_PartRem_0_9_1 ( .A(PartRem_10__1_), .B(BInv[1]), .CI(
        CryTmp_12__1_), .CO(CryTmp_9__2_), .S(SumTmp_9__1_) );
  FA1D0 u_fa_PartRem_0_10_1 ( .A(PartRem_11__1_), .B(BInv[1]), .CI(
        CryTmp_12__1_), .CO(CryTmp_10__2_), .S(SumTmp_10__1_) );
  FA1D0 u_fa_PartRem_0_11_1 ( .A(PartRem_12__1_), .B(BInv[1]), .CI(
        CryTmp_12__1_), .CO(CryTmp_11__2_), .S(SumTmp_11__1_) );
  FA1D0 u_fa_PartRem_0_12_1 ( .A(n102), .B(BInv[1]), .CI(CryTmp_12__1_), .CO(
        CryTmp_12__2_), .S(SumTmp_12__1_) );
  FA1D0 u_fa_PartRem_0_2_10 ( .A(n91), .B(BInv[10]), .CI(CryTmp_2__10_), .CO(
        CryTmp_2__11_), .S(SumTmp_2__10_) );
  FA1D0 u_fa_PartRem_0_3_10 ( .A(n98), .B(BInv[10]), .CI(CryTmp_3__10_), .CO(
        CryTmp_3__11_), .S(SumTmp_3__10_) );
  FA1D0 u_fa_PartRem_0_4_10 ( .A(n97), .B(BInv[10]), .CI(CryTmp_4__10_), .CO(
        CryTmp_4__11_), .S(SumTmp_4__10_) );
  FA1D0 u_fa_PartRem_0_5_10 ( .A(n96), .B(BInv[10]), .CI(CryTmp_5__10_), .CO(
        CryTmp_5__11_), .S(SumTmp_5__10_) );
  FA1D0 u_fa_PartRem_0_6_10 ( .A(n95), .B(BInv[10]), .CI(CryTmp_6__10_), .CO(
        CryTmp_6__11_), .S(SumTmp_6__10_) );
  FA1D0 u_fa_PartRem_0_7_10 ( .A(n94), .B(BInv[10]), .CI(CryTmp_7__10_), .CO(
        CryTmp_7__11_), .S(SumTmp_7__10_) );
  FA1D0 u_fa_PartRem_0_8_10 ( .A(n93), .B(BInv[10]), .CI(CryTmp_8__10_), .CO(
        CryTmp_8__11_), .S(SumTmp_8__10_) );
  FA1D0 u_fa_PartRem_0_9_10 ( .A(n92), .B(BInv[10]), .CI(CryTmp_9__10_), .CO(
        CryTmp_9__11_), .S(SumTmp_9__10_) );
  FA1D0 u_fa_PartRem_0_10_10 ( .A(n99), .B(BInv[10]), .CI(CryTmp_10__10_), 
        .CO(CryTmp_10__11_), .S(SumTmp_10__10_) );
  FA1D0 u_fa_PartRem_0_11_10 ( .A(n100), .B(BInv[10]), .CI(CryTmp_11__10_), 
        .CO(CryTmp_11__11_), .S(SumTmp_11__10_) );
  FA1D0 u_fa_PartRem_0_12_10 ( .A(n129), .B(BInv[10]), .CI(CryTmp_12__10_), 
        .CO(CryTmp_12__11_), .S(SumTmp_12__10_) );
  FA1D1 u_fa_PartRem_0_13_10 ( .A(a[23]), .B(BInv[10]), .CI(CryTmp_13__10_), 
        .CO(CryTmp_13__12_), .S(SumTmp_13__10_) );
  CKND2D0 U2 ( .A1(quotient[8]), .A2(b[0]), .ZN(n146) );
  INVD1 U8 ( .I(SumTmp_11__1_), .ZN(n185) );
  INVD1 U9 ( .I(SumTmp_11__7_), .ZN(n179) );
  MUX2D0 U11 ( .I0(a[13]), .I1(SumTmp_13__0_), .S(CryTmp_13__12_), .Z(n102) );
  INVD1 U12 ( .I(SumTmp_10__1_), .ZN(n186) );
  INVD1 U13 ( .I(SumTmp_12__2_), .ZN(n182) );
  INVD1 U15 ( .I(SumTmp_9__1_), .ZN(n167) );
  INVD1 U16 ( .I(SumTmp_10__3_), .ZN(n183) );
  INVD1 U17 ( .I(SumTmp_8__1_), .ZN(n159) );
  INVD1 U18 ( .I(SumTmp_7__1_), .ZN(n160) );
  INVD1 U19 ( .I(SumTmp_6__1_), .ZN(n161) );
  INVD1 U20 ( .I(SumTmp_5__1_), .ZN(n162) );
  INVD1 U21 ( .I(SumTmp_4__1_), .ZN(n163) );
  INVD1 U22 ( .I(SumTmp_3__1_), .ZN(n164) );
  MUX2ND0 U24 ( .I0(n156), .I1(n165), .S(n187), .ZN(n1) );
  MUX2D0 U25 ( .I0(n17), .I1(SumTmp_2__3_), .S(quotient[2]), .Z(n2) );
  MUX2D0 U26 ( .I0(n35), .I1(SumTmp_2__5_), .S(quotient[2]), .Z(n3) );
  MUX2D0 U27 ( .I0(n58), .I1(SumTmp_2__7_), .S(quotient[2]), .Z(n4) );
  MUX2D0 U28 ( .I0(n79), .I1(SumTmp_2__9_), .S(quotient[2]), .Z(n5) );
  MUX2D0 U31 ( .I0(n155), .I1(n132), .S(quotient[3]), .Z(n8) );
  ND2D1 U32 ( .A1(n7), .A2(n8), .ZN(n187) );
  ND2D1 U33 ( .A1(PartRem_3__11_), .A2(CryTmp_2__11_), .ZN(n7) );
  ND2D1 U34 ( .A1(n7), .A2(n8), .ZN(quotient[2]) );
  MUX2D0 U35 ( .I0(a[16]), .I1(SumTmp_13__3_), .S(CryTmp_13__12_), .Z(n101) );
  INVD1 U36 ( .I(b[2]), .ZN(BInv[2]) );
  INVD1 U37 ( .I(b[3]), .ZN(BInv[3]) );
  INVD1 U38 ( .I(b[4]), .ZN(BInv[4]) );
  INVD1 U39 ( .I(b[5]), .ZN(BInv[5]) );
  INVD1 U40 ( .I(b[6]), .ZN(BInv[6]) );
  INVD1 U41 ( .I(b[7]), .ZN(BInv[7]) );
  INVD1 U42 ( .I(b[8]), .ZN(BInv[8]) );
  INVD1 U43 ( .I(b[9]), .ZN(BInv[9]) );
  INVD1 U44 ( .I(b[10]), .ZN(BInv[10]) );
  MUX2ND0 U45 ( .I0(n173), .I1(n140), .S(quotient[11]), .ZN(n10) );
  OR2D1 U51 ( .A1(n113), .A2(n14), .Z(quotient[5]) );
  MUX2ND0 U52 ( .I0(n149), .I1(n136), .S(quotient[6]), .ZN(n14) );
  OR2D1 U53 ( .A1(n114), .A2(n15), .Z(quotient[4]) );
  MUX2ND0 U54 ( .I0(n151), .I1(n137), .S(quotient[5]), .ZN(n15) );
  AN2XD1 U56 ( .A1(n187), .A2(b[0]), .Z(n104) );
  MUX2D0 U58 ( .I0(n122), .I1(SumTmp_3__2_), .S(quotient[3]), .Z(n17) );
  MUX2D0 U59 ( .I0(n117), .I1(SumTmp_10__2_), .S(quotient[10]), .Z(n18) );
  MUX2D0 U60 ( .I0(n118), .I1(SumTmp_9__2_), .S(quotient[9]), .Z(n19) );
  MUX2D0 U61 ( .I0(n124), .I1(SumTmp_8__2_), .S(quotient[8]), .Z(n20) );
  MUX2D0 U62 ( .I0(n125), .I1(SumTmp_7__2_), .S(quotient[7]), .Z(n21) );
  MUX2D0 U63 ( .I0(n119), .I1(SumTmp_6__2_), .S(quotient[6]), .Z(n22) );
  MUX2D0 U64 ( .I0(n120), .I1(SumTmp_5__2_), .S(quotient[5]), .Z(n23) );
  MUX2D0 U65 ( .I0(n121), .I1(SumTmp_4__2_), .S(quotient[4]), .Z(n24) );
  MUX2D0 U66 ( .I0(n123), .I1(SumTmp_2__2_), .S(quotient[2]), .Z(n25) );
  MUX2D0 U67 ( .I0(n24), .I1(SumTmp_3__3_), .S(quotient[3]), .Z(n26) );
  MUX2D0 U68 ( .I0(n18), .I1(SumTmp_9__3_), .S(quotient[9]), .Z(n27) );
  MUX2D0 U69 ( .I0(n19), .I1(SumTmp_8__3_), .S(quotient[8]), .Z(n28) );
  MUX2D0 U70 ( .I0(n20), .I1(SumTmp_7__3_), .S(quotient[7]), .Z(n29) );
  MUX2D0 U71 ( .I0(n21), .I1(SumTmp_6__3_), .S(quotient[6]), .Z(n30) );
  MUX2D0 U72 ( .I0(n22), .I1(SumTmp_5__3_), .S(quotient[5]), .Z(n31) );
  MUX2D0 U73 ( .I0(n23), .I1(SumTmp_4__3_), .S(quotient[4]), .Z(n32) );
  MUX2D0 U74 ( .I0(n126), .I1(SumTmp_11__3_), .S(quotient[11]), .Z(n33) );
  MUX2D0 U75 ( .I0(n141), .I1(SumTmp_12__3_), .S(quotient[12]), .Z(n34) );
  MUX2D0 U76 ( .I0(n32), .I1(SumTmp_3__4_), .S(quotient[3]), .Z(n35) );
  MUX2D0 U77 ( .I0(n33), .I1(SumTmp_10__4_), .S(quotient[10]), .Z(n36) );
  MUX2D0 U78 ( .I0(n127), .I1(SumTmp_9__4_), .S(quotient[9]), .Z(n37) );
  MUX2D0 U79 ( .I0(n27), .I1(SumTmp_8__4_), .S(quotient[8]), .Z(n38) );
  MUX2D0 U80 ( .I0(n28), .I1(SumTmp_7__4_), .S(quotient[7]), .Z(n39) );
  MUX2D0 U81 ( .I0(n29), .I1(SumTmp_6__4_), .S(quotient[6]), .Z(n40) );
  MUX2D0 U82 ( .I0(n30), .I1(SumTmp_5__4_), .S(quotient[5]), .Z(n41) );
  MUX2D0 U83 ( .I0(n31), .I1(SumTmp_4__4_), .S(quotient[4]), .Z(n42) );
  MUX2D0 U84 ( .I0(n34), .I1(SumTmp_11__4_), .S(quotient[11]), .Z(n43) );
  MUX2D0 U85 ( .I0(n101), .I1(SumTmp_12__4_), .S(quotient[12]), .Z(n44) );
  MUX2D0 U86 ( .I0(n26), .I1(SumTmp_2__4_), .S(quotient[2]), .Z(n45) );
  MUX2D0 U87 ( .I0(a[17]), .I1(SumTmp_13__4_), .S(CryTmp_13__12_), .Z(n46) );
  MUX2D0 U88 ( .I0(n42), .I1(SumTmp_3__5_), .S(quotient[3]), .Z(n47) );
  MUX2D0 U89 ( .I0(n43), .I1(SumTmp_10__5_), .S(quotient[10]), .Z(n48) );
  MUX2D0 U90 ( .I0(n36), .I1(SumTmp_9__5_), .S(quotient[9]), .Z(n49) );
  MUX2D0 U91 ( .I0(n37), .I1(SumTmp_8__5_), .S(quotient[8]), .Z(n50) );
  MUX2D0 U92 ( .I0(n38), .I1(SumTmp_7__5_), .S(quotient[7]), .Z(n51) );
  MUX2D0 U93 ( .I0(n39), .I1(SumTmp_6__5_), .S(quotient[6]), .Z(n52) );
  MUX2D0 U94 ( .I0(n40), .I1(SumTmp_5__5_), .S(quotient[5]), .Z(n53) );
  MUX2D0 U95 ( .I0(n41), .I1(SumTmp_4__5_), .S(quotient[4]), .Z(n54) );
  MUX2D0 U96 ( .I0(n44), .I1(SumTmp_11__5_), .S(quotient[11]), .Z(n55) );
  MUX2D0 U97 ( .I0(n46), .I1(SumTmp_12__5_), .S(quotient[12]), .Z(n56) );
  MUX2D0 U98 ( .I0(a[18]), .I1(SumTmp_13__5_), .S(CryTmp_13__12_), .Z(n57) );
  MUX2D0 U99 ( .I0(n54), .I1(SumTmp_3__6_), .S(quotient[3]), .Z(n58) );
  MUX2D0 U100 ( .I0(n55), .I1(SumTmp_10__6_), .S(quotient[10]), .Z(n59) );
  MUX2D0 U101 ( .I0(n48), .I1(SumTmp_9__6_), .S(quotient[9]), .Z(n60) );
  MUX2D0 U102 ( .I0(n49), .I1(SumTmp_8__6_), .S(quotient[8]), .Z(n61) );
  MUX2D0 U103 ( .I0(n50), .I1(SumTmp_7__6_), .S(quotient[7]), .Z(n62) );
  MUX2D0 U104 ( .I0(n51), .I1(SumTmp_6__6_), .S(quotient[6]), .Z(n63) );
  MUX2D0 U105 ( .I0(n52), .I1(SumTmp_5__6_), .S(quotient[5]), .Z(n64) );
  MUX2D0 U106 ( .I0(n53), .I1(SumTmp_4__6_), .S(quotient[4]), .Z(n65) );
  MUX2D0 U107 ( .I0(n56), .I1(SumTmp_11__6_), .S(quotient[11]), .Z(n66) );
  MUX2D0 U108 ( .I0(n47), .I1(SumTmp_2__6_), .S(quotient[2]), .Z(n67) );
  MUX2D0 U109 ( .I0(a[19]), .I1(SumTmp_13__6_), .S(CryTmp_13__12_), .Z(n68) );
  MUX2D0 U110 ( .I0(n65), .I1(SumTmp_3__7_), .S(quotient[3]), .Z(n69) );
  MUX2D0 U111 ( .I0(n66), .I1(SumTmp_10__7_), .S(quotient[10]), .Z(n70) );
  MUX2D0 U112 ( .I0(n59), .I1(SumTmp_9__7_), .S(quotient[9]), .Z(n71) );
  MUX2D0 U113 ( .I0(n60), .I1(SumTmp_8__7_), .S(quotient[8]), .Z(n72) );
  MUX2D0 U114 ( .I0(n61), .I1(SumTmp_7__7_), .S(quotient[7]), .Z(n73) );
  MUX2D0 U115 ( .I0(n62), .I1(SumTmp_6__7_), .S(quotient[6]), .Z(n74) );
  MUX2D0 U116 ( .I0(n63), .I1(SumTmp_5__7_), .S(quotient[5]), .Z(n75) );
  MUX2D0 U117 ( .I0(n64), .I1(SumTmp_4__7_), .S(quotient[4]), .Z(n76) );
  MUX2D0 U118 ( .I0(n68), .I1(SumTmp_12__7_), .S(quotient[12]), .Z(n77) );
  MUX2D0 U119 ( .I0(a[20]), .I1(SumTmp_13__7_), .S(CryTmp_13__12_), .Z(n78) );
  MUX2D0 U120 ( .I0(n76), .I1(SumTmp_3__8_), .S(quotient[3]), .Z(n79) );
  MUX2D0 U121 ( .I0(n128), .I1(SumTmp_10__8_), .S(quotient[10]), .Z(n80) );
  MUX2D0 U122 ( .I0(n70), .I1(SumTmp_9__8_), .S(quotient[9]), .Z(n81) );
  MUX2D0 U123 ( .I0(n71), .I1(SumTmp_8__8_), .S(quotient[8]), .Z(n82) );
  MUX2D0 U124 ( .I0(n72), .I1(SumTmp_7__8_), .S(quotient[7]), .Z(n83) );
  MUX2D0 U125 ( .I0(n73), .I1(SumTmp_6__8_), .S(quotient[6]), .Z(n84) );
  MUX2D0 U126 ( .I0(n74), .I1(SumTmp_5__8_), .S(quotient[5]), .Z(n85) );
  MUX2D0 U127 ( .I0(n75), .I1(SumTmp_4__8_), .S(quotient[4]), .Z(n86) );
  MUX2D0 U128 ( .I0(n77), .I1(SumTmp_11__8_), .S(quotient[11]), .Z(n87) );
  MUX2D0 U129 ( .I0(n78), .I1(SumTmp_12__8_), .S(quotient[12]), .Z(n88) );
  MUX2D0 U130 ( .I0(n69), .I1(SumTmp_2__8_), .S(quotient[2]), .Z(n89) );
  MUX2D0 U131 ( .I0(a[21]), .I1(SumTmp_13__8_), .S(CryTmp_13__12_), .Z(n90) );
  MUX2D0 U132 ( .I0(n86), .I1(SumTmp_3__9_), .S(quotient[3]), .Z(n91) );
  MUX2D0 U133 ( .I0(n87), .I1(SumTmp_10__9_), .S(quotient[10]), .Z(n92) );
  MUX2D0 U134 ( .I0(n80), .I1(SumTmp_9__9_), .S(quotient[9]), .Z(n93) );
  MUX2D0 U135 ( .I0(n81), .I1(SumTmp_8__9_), .S(quotient[8]), .Z(n94) );
  MUX2D0 U136 ( .I0(n82), .I1(SumTmp_7__9_), .S(quotient[7]), .Z(n95) );
  MUX2D0 U137 ( .I0(n83), .I1(SumTmp_6__9_), .S(quotient[6]), .Z(n96) );
  MUX2D0 U138 ( .I0(n84), .I1(SumTmp_5__9_), .S(quotient[5]), .Z(n97) );
  MUX2D0 U139 ( .I0(n85), .I1(SumTmp_4__9_), .S(quotient[4]), .Z(n98) );
  MUX2D0 U140 ( .I0(n88), .I1(SumTmp_11__9_), .S(quotient[11]), .Z(n99) );
  MUX2D0 U141 ( .I0(n90), .I1(SumTmp_12__9_), .S(quotient[12]), .Z(n100) );
  XNR2D0 U142 ( .A1(CryTmp_2__11_), .A2(PartRem_3__11_), .ZN(n130) );
  XNR2D0 U143 ( .A1(CryTmp_12__11_), .A2(PartRem_13__11_), .ZN(n131) );
  XNR2D0 U144 ( .A1(CryTmp_3__11_), .A2(PartRem_4__11_), .ZN(n132) );
  XNR2D0 U145 ( .A1(CryTmp_11__11_), .A2(PartRem_12__11_), .ZN(n140) );
  XNR2D0 U146 ( .A1(CryTmp_10__11_), .A2(PartRem_11__11_), .ZN(n139) );
  XNR2D0 U147 ( .A1(CryTmp_9__11_), .A2(PartRem_10__11_), .ZN(n133) );
  XNR2D0 U148 ( .A1(CryTmp_8__11_), .A2(PartRem_9__11_), .ZN(n134) );
  XNR2D0 U149 ( .A1(CryTmp_7__11_), .A2(PartRem_8__11_), .ZN(n135) );
  XNR2D0 U150 ( .A1(CryTmp_6__11_), .A2(PartRem_7__11_), .ZN(n136) );
  XNR2D0 U151 ( .A1(CryTmp_5__11_), .A2(PartRem_6__11_), .ZN(n137) );
  XNR2D0 U152 ( .A1(CryTmp_4__11_), .A2(PartRem_5__11_), .ZN(n138) );
  OR2XD1 U154 ( .A1(CryTmp_12__1_), .A2(a[13]), .Z(CryTmp_13__1_) );
  MUX2D0 U155 ( .I0(n144), .I1(n133), .S(quotient[9]), .Z(n103) );
  MUX2D0 U156 ( .I0(n153), .I1(n138), .S(quotient[4]), .Z(n105) );
  ND2D1 U157 ( .A1(quotient[11]), .A2(b[0]), .ZN(n175) );
  ND2D1 U158 ( .A1(quotient[10]), .A2(b[0]), .ZN(n166) );
  ND2D1 U159 ( .A1(quotient[9]), .A2(b[0]), .ZN(n143) );
  ND2D1 U160 ( .A1(quotient[7]), .A2(b[0]), .ZN(n148) );
  ND2D1 U161 ( .A1(quotient[6]), .A2(b[0]), .ZN(n150) );
  ND2D1 U162 ( .A1(quotient[5]), .A2(b[0]), .ZN(n152) );
  ND2D1 U163 ( .A1(quotient[4]), .A2(b[0]), .ZN(n154) );
  ND2D1 U164 ( .A1(quotient[3]), .A2(b[0]), .ZN(n156) );
  ND2D1 U165 ( .A1(quotient[12]), .A2(b[0]), .ZN(n172) );
  AN2XD1 U173 ( .A1(PartRem_6__11_), .A2(CryTmp_5__11_), .Z(n113) );
  AN2XD1 U174 ( .A1(PartRem_5__11_), .A2(CryTmp_4__11_), .Z(n114) );
  MUX2ND0 U177 ( .I0(n172), .I1(n185), .S(quotient[11]), .ZN(n117) );
  MUX2ND0 U178 ( .I0(n175), .I1(n186), .S(quotient[10]), .ZN(n118) );
  MUX2ND0 U179 ( .I0(n146), .I1(n160), .S(quotient[7]), .ZN(n119) );
  MUX2ND0 U180 ( .I0(n148), .I1(n161), .S(quotient[6]), .ZN(n120) );
  MUX2ND0 U181 ( .I0(n150), .I1(n162), .S(quotient[5]), .ZN(n121) );
  MUX2ND0 U182 ( .I0(n152), .I1(n163), .S(quotient[4]), .ZN(n122) );
  MUX2ND0 U183 ( .I0(n154), .I1(n164), .S(quotient[3]), .ZN(n123) );
  MUX2ND0 U184 ( .I0(n166), .I1(n167), .S(quotient[9]), .ZN(n124) );
  MUX2ND0 U185 ( .I0(n143), .I1(n159), .S(quotient[8]), .ZN(n125) );
  INVD1 U187 ( .I(SumTmp_11__2_), .ZN(n184) );
  MUX2ND0 U188 ( .I0(n168), .I1(n182), .S(quotient[12]), .ZN(n126) );
  MUX2ND0 U189 ( .I0(n174), .I1(n183), .S(quotient[10]), .ZN(n127) );
  MUX2ND0 U190 ( .I0(n170), .I1(n179), .S(quotient[11]), .ZN(n128) );
  INVD1 U192 ( .I(SumTmp_2__1_), .ZN(n165) );
  INVD1 U193 ( .I(b[0]), .ZN(CryTmp_12__1_) );
  INVD1 U196 ( .I(b[1]), .ZN(BInv[1]) );
  XNR2D1 U198 ( .A1(CryTmp_12__1_), .A2(a[13]), .ZN(SumTmp_13__0_) );
  CKND1 U199 ( .I(n143), .ZN(PartRem_9__1_) );
  CKND1 U200 ( .I(n145), .ZN(PartRem_9__11_) );
  CKND1 U201 ( .I(n146), .ZN(PartRem_8__1_) );
  MUX2ND0 U202 ( .I0(n92), .I1(SumTmp_9__10_), .S(quotient[9]), .ZN(n145) );
  CKND1 U203 ( .I(n147), .ZN(PartRem_8__11_) );
  CKND1 U204 ( .I(n148), .ZN(PartRem_7__1_) );
  MUX2ND0 U205 ( .I0(n93), .I1(SumTmp_8__10_), .S(quotient[8]), .ZN(n147) );
  CKND1 U206 ( .I(n149), .ZN(PartRem_7__11_) );
  CKND1 U207 ( .I(n150), .ZN(PartRem_6__1_) );
  MUX2ND0 U208 ( .I0(n94), .I1(SumTmp_7__10_), .S(quotient[7]), .ZN(n149) );
  CKND1 U209 ( .I(n151), .ZN(PartRem_6__11_) );
  CKND1 U210 ( .I(n152), .ZN(PartRem_5__1_) );
  MUX2ND0 U211 ( .I0(n95), .I1(SumTmp_6__10_), .S(quotient[6]), .ZN(n151) );
  CKND1 U212 ( .I(n153), .ZN(PartRem_5__11_) );
  CKND1 U213 ( .I(n154), .ZN(PartRem_4__1_) );
  MUX2ND0 U214 ( .I0(n96), .I1(SumTmp_5__10_), .S(quotient[5]), .ZN(n153) );
  CKND1 U215 ( .I(n155), .ZN(PartRem_4__11_) );
  CKND1 U216 ( .I(n156), .ZN(PartRem_3__1_) );
  MUX2ND0 U217 ( .I0(n97), .I1(SumTmp_4__10_), .S(quotient[4]), .ZN(n155) );
  CKND1 U218 ( .I(n157), .ZN(PartRem_3__11_) );
  MUX2ND0 U219 ( .I0(n98), .I1(SumTmp_3__10_), .S(quotient[3]), .ZN(n157) );
  MUX2ND0 U220 ( .I0(n91), .I1(SumTmp_2__10_), .S(quotient[2]), .ZN(n158) );
  CKND1 U221 ( .I(n168), .ZN(PartRem_13__2_) );
  CKND1 U222 ( .I(n169), .ZN(PartRem_13__11_) );
  CKND1 U223 ( .I(n170), .ZN(PartRem_12__7_) );
  CKND1 U224 ( .I(n171), .ZN(PartRem_12__2_) );
  CKND1 U225 ( .I(n172), .ZN(PartRem_12__1_) );
  MUX2ND0 U226 ( .I0(a[23]), .I1(SumTmp_13__10_), .S(CryTmp_13__12_), .ZN(n169) );
  CKND1 U227 ( .I(n173), .ZN(PartRem_12__11_) );
  CKND1 U229 ( .I(n175), .ZN(PartRem_11__1_) );
  MUX2ND0 U230 ( .I0(n129), .I1(SumTmp_12__10_), .S(quotient[12]), .ZN(n173)
         );
  CKND1 U231 ( .I(n178), .ZN(PartRem_11__11_) );
  MUX2ND0 U232 ( .I0(n57), .I1(SumTmp_12__6_), .S(quotient[12]), .ZN(n170) );
  MUX2ND0 U233 ( .I0(a[14]), .I1(SumTmp_13__1_), .S(CryTmp_13__12_), .ZN(n168)
         );
  MUX2ND0 U234 ( .I0(n102), .I1(SumTmp_12__1_), .S(quotient[12]), .ZN(n171) );
  CKND1 U235 ( .I(n166), .ZN(PartRem_10__1_) );
  MUX2ND0 U236 ( .I0(n100), .I1(SumTmp_11__10_), .S(quotient[11]), .ZN(n178)
         );
  CKND1 U237 ( .I(n144), .ZN(PartRem_10__11_) );
  MUX2ND0 U238 ( .I0(n99), .I1(SumTmp_10__10_), .S(quotient[10]), .ZN(n144) );
  AO21D0 U3 ( .A1(n189), .A2(CryTmp_1__11_), .B(n188), .Z(quotient[1]) );
  MUX2ND0 U4 ( .I0(n157), .I1(n130), .S(quotient[2]), .ZN(n188) );
  CKND0 U5 ( .I(n158), .ZN(n189) );
  AO21D1 U6 ( .A1(CryTmp_6__11_), .A2(PartRem_7__11_), .B(n190), .Z(
        quotient[6]) );
  MUX2ND0 U7 ( .I0(n147), .I1(n135), .S(quotient[7]), .ZN(n190) );
  AO21D0 U10 ( .A1(CryTmp_7__11_), .A2(PartRem_8__11_), .B(n191), .Z(
        quotient[7]) );
  MUX2ND0 U14 ( .I0(n145), .I1(n134), .S(quotient[8]), .ZN(n191) );
  AO21D1 U23 ( .A1(CryTmp_9__11_), .A2(PartRem_10__11_), .B(n192), .Z(
        quotient[9]) );
  MUX2ND0 U29 ( .I0(n178), .I1(n139), .S(quotient[10]), .ZN(n192) );
  CKND0 U30 ( .I(PartRem_11__3_), .ZN(n174) );
  MUX2ND0 U46 ( .I0(n171), .I1(n184), .S(quotient[11]), .ZN(PartRem_11__3_) );
  AO21D0 U47 ( .A1(CryTmp_11__11_), .A2(PartRem_12__11_), .B(n193), .Z(
        quotient[11]) );
  MUX2ND0 U48 ( .I0(n169), .I1(n131), .S(quotient[12]), .ZN(n193) );
  IOA21D2 U49 ( .A1(CryTmp_12__11_), .A2(PartRem_13__11_), .B(CryTmp_13__12_), 
        .ZN(quotient[12]) );
  MUX2D0 U50 ( .I0(a[22]), .I1(SumTmp_13__9_), .S(CryTmp_13__12_), .Z(n129) );
  MUX2D0 U55 ( .I0(a[15]), .I1(SumTmp_13__2_), .S(CryTmp_13__12_), .Z(n141) );
  IOA21D1 U57 ( .A1(CryTmp_3__11_), .A2(PartRem_4__11_), .B(n105), .ZN(
        quotient[3]) );
  IOA21D1 U153 ( .A1(CryTmp_8__11_), .A2(PartRem_9__11_), .B(n103), .ZN(
        quotient[8]) );
  AO21D1 U166 ( .A1(CryTmp_10__11_), .A2(PartRem_11__11_), .B(n10), .Z(
        quotient[10]) );
endmodule


module fig8_dw_B11_DW_fp_div_0 ( a, b, rnd, z, status );
  input [19:0] a;
  input [19:0] b;
  input [2:0] rnd;
  output [19:0] z;
  output [7:0] status;
  wire   n_Logic1_, n_Logic0_, GEN_2_shift_req, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115;
  wire   [9:0] GEN_2_ez;
  wire   [12:1] GEN_2_quo;
  wire   [9:0] GEN_2_ez_norm;
  wire   [10:0] GEN_2_mz_rounded;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12;

  fig8_dw_B11_add_1_root_sub_2151_DP_OP_357_4856_0 add_1_root_sub_2151_DP_OP_357_4856_3 ( 
        .I1(a[18:11]), .I2(b[18:11]), .O6(GEN_2_ez) );
  fig8_dw_B11_DW_div_5 GEN_2_U3 ( .a({n_Logic1_, a[10:0], n_Logic0_, n_Logic0_, 
        n_Logic0_, n_Logic0_, n_Logic0_, n_Logic0_, n_Logic0_, n_Logic0_, 
        n_Logic0_, n_Logic0_, n_Logic0_, n_Logic0_, n_Logic0_}), .b({n_Logic1_, 
        b[10:0]}), .quotient({SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, GEN_2_quo, 
        SYNOPSYS_UNCONNECTED__12}) );
  AN4D1 U3 ( .A1(a[11]), .A2(a[12]), .A3(a[13]), .A4(a[14]), .Z(n106) );
  AN4D1 U4 ( .A1(b[15]), .A2(b[16]), .A3(b[17]), .A4(b[18]), .Z(n111) );
  CKAN2D0 U5 ( .A1(b[3]), .A2(n84), .Z(n62) );
  CKND0 U6 ( .I(a[3]), .ZN(n84) );
  CKND0 U7 ( .I(b[0]), .ZN(n76) );
  CKND0 U8 ( .I(b[1]), .ZN(n77) );
  CKND0 U9 ( .I(b[7]), .ZN(n81) );
  CKND0 U10 ( .I(a[2]), .ZN(n83) );
  CKND0 U11 ( .I(a[8]), .ZN(n85) );
  CKND0 U12 ( .I(b[5]), .ZN(n79) );
  CKND0 U13 ( .I(b[9]), .ZN(n82) );
  CKND0 U14 ( .I(b[6]), .ZN(n80) );
  CKAN2D0 U15 ( .A1(b[10]), .A2(n86), .Z(n71) );
  CKND0 U16 ( .I(a[10]), .ZN(n86) );
  CKND0 U17 ( .I(b[4]), .ZN(n78) );
  MUX2D0 U18 ( .I0(GEN_2_quo[2]), .I1(GEN_2_quo[1]), .S(GEN_2_shift_req), .Z(
        GEN_2_mz_rounded[0]) );
  AN4XD1 U20 ( .A1(n96), .A2(n97), .A3(n90), .A4(n92), .Z(n88) );
  TIEH U22 ( .Z(n_Logic1_) );
  TIEL U23 ( .ZN(n_Logic0_) );
  AO21D1 U24 ( .A1(GEN_2_mz_rounded[0]), .A2(n87), .B(n88), .Z(z[0]) );
  IND2D0 U25 ( .A1(GEN_2_ez[0]), .B1(GEN_2_shift_req), .ZN(n54) );
  OR2D0 U26 ( .A1(n54), .A2(GEN_2_ez[1]), .Z(n53) );
  OR2D0 U27 ( .A1(n53), .A2(GEN_2_ez[2]), .Z(n52) );
  OR2D0 U28 ( .A1(n52), .A2(GEN_2_ez[3]), .Z(n51) );
  OR2D0 U29 ( .A1(n51), .A2(GEN_2_ez[4]), .Z(n50) );
  NR2D0 U30 ( .A1(n50), .A2(GEN_2_ez[5]), .ZN(n57) );
  INR2D0 U31 ( .A1(n57), .B1(GEN_2_ez[6]), .ZN(n56) );
  IND2D0 U32 ( .A1(GEN_2_ez[7]), .B1(n56), .ZN(n55) );
  NR2D0 U33 ( .A1(GEN_2_ez[8]), .A2(n55), .ZN(n49) );
  CKXOR2D0 U34 ( .A1(GEN_2_ez[9]), .A2(n49), .Z(GEN_2_ez_norm[9]) );
  XNR2D0 U35 ( .A1(n50), .A2(GEN_2_ez[5]), .ZN(GEN_2_ez_norm[5]) );
  XNR2D0 U36 ( .A1(n51), .A2(GEN_2_ez[4]), .ZN(GEN_2_ez_norm[4]) );
  XNR2D0 U37 ( .A1(n52), .A2(GEN_2_ez[3]), .ZN(GEN_2_ez_norm[3]) );
  XNR2D0 U38 ( .A1(n53), .A2(GEN_2_ez[2]), .ZN(GEN_2_ez_norm[2]) );
  XNR2D0 U39 ( .A1(n54), .A2(GEN_2_ez[1]), .ZN(GEN_2_ez_norm[1]) );
  CKXOR2D0 U40 ( .A1(GEN_2_ez[0]), .A2(GEN_2_shift_req), .Z(GEN_2_ez_norm[0])
         );
  XNR2D0 U41 ( .A1(n55), .A2(GEN_2_ez[8]), .ZN(GEN_2_ez_norm[8]) );
  CKXOR2D0 U42 ( .A1(n56), .A2(GEN_2_ez[7]), .Z(GEN_2_ez_norm[7]) );
  CKXOR2D0 U43 ( .A1(n57), .A2(GEN_2_ez[6]), .Z(GEN_2_ez_norm[6]) );
  MAOI22D0 U44 ( .A1(a[9]), .A2(n82), .B1(n85), .B2(b[8]), .ZN(n58) );
  NR2D0 U45 ( .A1(n82), .A2(a[9]), .ZN(n70) );
  OAI32D0 U46 ( .A1(n58), .A2(n70), .A3(n71), .B1(b[10]), .B2(n86), .ZN(n75)
         );
  IND2D0 U47 ( .A1(a[5]), .B1(b[5]), .ZN(n63) );
  AOI32D0 U48 ( .A1(n63), .A2(n78), .A3(a[4]), .B1(a[5]), .B2(n79), .ZN(n61)
         );
  OR2D0 U49 ( .A1(a[7]), .A2(n81), .Z(n59) );
  AOI32D0 U50 ( .A1(a[6]), .A2(n80), .A3(n59), .B1(n81), .B2(a[7]), .ZN(n60)
         );
  AOI21D0 U53 ( .A1(b[2]), .A2(n83), .B(n62), .ZN(n64) );
  OAI32D0 U54 ( .A1(n83), .A2(b[2]), .A3(n62), .B1(b[3]), .B2(n84), .ZN(n66)
         );
  OAI221D0 U55 ( .A1(a[4]), .A2(n78), .B1(n64), .B2(n66), .C(n63), .ZN(n69) );
  OA22D0 U56 ( .A1(n76), .A2(a[0]), .B1(n77), .B2(a[1]), .Z(n65) );
  AOI211D0 U57 ( .A1(a[1]), .A2(n77), .B(n66), .C(n65), .ZN(n68) );
  AOI211D0 U59 ( .A1(b[8]), .A2(n85), .B(n71), .C(n70), .ZN(n72) );
  AO21D0 U60 ( .A1(GEN_2_mz_rounded[9]), .A2(n87), .B(n88), .Z(z[9]) );
  AO21D0 U61 ( .A1(GEN_2_mz_rounded[8]), .A2(n87), .B(n88), .Z(z[8]) );
  AO21D0 U62 ( .A1(GEN_2_mz_rounded[7]), .A2(n87), .B(n88), .Z(z[7]) );
  AO21D0 U63 ( .A1(GEN_2_mz_rounded[6]), .A2(n87), .B(n88), .Z(z[6]) );
  AO21D0 U64 ( .A1(GEN_2_mz_rounded[5]), .A2(n87), .B(n88), .Z(z[5]) );
  AO21D0 U65 ( .A1(GEN_2_mz_rounded[4]), .A2(n87), .B(n88), .Z(z[4]) );
  AO21D0 U66 ( .A1(GEN_2_mz_rounded[3]), .A2(n87), .B(n88), .Z(z[3]) );
  AO21D0 U67 ( .A1(GEN_2_mz_rounded[2]), .A2(n87), .B(n88), .Z(z[2]) );
  AO21D0 U68 ( .A1(GEN_2_mz_rounded[1]), .A2(n87), .B(n88), .Z(z[1]) );
  OA221D0 U69 ( .A1(n89), .A2(n90), .B1(n91), .B2(n92), .C(n93), .Z(z[19]) );
  CKXOR2D0 U70 ( .A1(b[19]), .A2(a[19]), .Z(n93) );
  IOA21D0 U71 ( .A1(GEN_2_ez_norm[7]), .A2(n87), .B(n94), .ZN(z[18]) );
  IOA21D0 U72 ( .A1(GEN_2_ez_norm[6]), .A2(n87), .B(n94), .ZN(z[17]) );
  IOA21D0 U73 ( .A1(GEN_2_ez_norm[5]), .A2(n87), .B(n94), .ZN(z[16]) );
  IOA21D0 U74 ( .A1(GEN_2_ez_norm[4]), .A2(n87), .B(n94), .ZN(z[15]) );
  IOA21D0 U75 ( .A1(GEN_2_ez_norm[3]), .A2(n87), .B(n94), .ZN(z[14]) );
  IOA21D0 U76 ( .A1(GEN_2_ez_norm[2]), .A2(n87), .B(n94), .ZN(z[13]) );
  IOA21D0 U77 ( .A1(GEN_2_ez_norm[1]), .A2(n87), .B(n94), .ZN(z[12]) );
  NR2D0 U78 ( .A1(n95), .A2(n88), .ZN(n94) );
  IOA21D0 U79 ( .A1(GEN_2_ez_norm[0]), .A2(n87), .B(n96), .ZN(z[11]) );
  AO21D0 U80 ( .A1(GEN_2_mz_rounded[10]), .A2(n87), .B(n88), .Z(z[10]) );
  CKND0 U81 ( .I(n95), .ZN(n96) );
  AOI211D0 U83 ( .A1(n100), .A2(n101), .B(n95), .C(n97), .ZN(n99) );
  IAO21D0 U84 ( .A1(n102), .A2(GEN_2_ez_norm[8]), .B(GEN_2_ez_norm[9]), .ZN(
        n97) );
  NR2D0 U85 ( .A1(n103), .A2(n104), .ZN(n102) );
  ND4D0 U86 ( .A1(GEN_2_ez_norm[7]), .A2(GEN_2_ez_norm[6]), .A3(
        GEN_2_ez_norm[5]), .A4(GEN_2_ez_norm[4]), .ZN(n104) );
  ND4D0 U87 ( .A1(GEN_2_ez_norm[3]), .A2(GEN_2_ez_norm[2]), .A3(
        GEN_2_ez_norm[1]), .A4(GEN_2_ez_norm[0]), .ZN(n103) );
  CKND2D0 U88 ( .A1(n89), .A2(n91), .ZN(n95) );
  CKND2D0 U89 ( .A1(n105), .A2(n106), .ZN(n91) );
  AN4D0 U90 ( .A1(a[15]), .A2(a[16]), .A3(a[17]), .A4(a[18]), .Z(n105) );
  CKND2D0 U91 ( .A1(n107), .A2(n108), .ZN(n89) );
  NR4D0 U92 ( .A1(b[18]), .A2(b[17]), .A3(b[16]), .A4(b[15]), .ZN(n108) );
  NR4D0 U93 ( .A1(b[14]), .A2(b[13]), .A3(b[12]), .A4(b[11]), .ZN(n107) );
  NR4D0 U94 ( .A1(GEN_2_ez_norm[7]), .A2(GEN_2_ez_norm[6]), .A3(
        GEN_2_ez_norm[5]), .A4(GEN_2_ez_norm[4]), .ZN(n101) );
  NR4D0 U95 ( .A1(GEN_2_ez_norm[3]), .A2(GEN_2_ez_norm[2]), .A3(
        GEN_2_ez_norm[1]), .A4(GEN_2_ez_norm[0]), .ZN(n100) );
  CKND2D0 U96 ( .A1(n109), .A2(n110), .ZN(n90) );
  NR4D0 U97 ( .A1(a[18]), .A2(a[17]), .A3(a[16]), .A4(a[15]), .ZN(n110) );
  NR4D0 U98 ( .A1(a[14]), .A2(a[13]), .A3(a[12]), .A4(a[11]), .ZN(n109) );
  CKND2D0 U99 ( .A1(n111), .A2(n112), .ZN(n92) );
  AN4D0 U100 ( .A1(b[11]), .A2(b[12]), .A3(b[13]), .A4(b[14]), .Z(n112) );
  MUX2D0 U101 ( .I0(GEN_2_quo[11]), .I1(GEN_2_quo[10]), .S(GEN_2_shift_req), 
        .Z(GEN_2_mz_rounded[9]) );
  MUX2D0 U102 ( .I0(GEN_2_quo[10]), .I1(GEN_2_quo[9]), .S(GEN_2_shift_req), 
        .Z(GEN_2_mz_rounded[8]) );
  MUX2D0 U103 ( .I0(GEN_2_quo[9]), .I1(GEN_2_quo[8]), .S(GEN_2_shift_req), .Z(
        GEN_2_mz_rounded[7]) );
  MUX2D0 U104 ( .I0(GEN_2_quo[8]), .I1(GEN_2_quo[7]), .S(GEN_2_shift_req), .Z(
        GEN_2_mz_rounded[6]) );
  MUX2D0 U105 ( .I0(GEN_2_quo[7]), .I1(GEN_2_quo[6]), .S(GEN_2_shift_req), .Z(
        GEN_2_mz_rounded[5]) );
  MUX2D0 U106 ( .I0(GEN_2_quo[6]), .I1(GEN_2_quo[5]), .S(GEN_2_shift_req), .Z(
        GEN_2_mz_rounded[4]) );
  MUX2D0 U107 ( .I0(GEN_2_quo[5]), .I1(GEN_2_quo[4]), .S(GEN_2_shift_req), .Z(
        GEN_2_mz_rounded[3]) );
  MUX2D0 U108 ( .I0(GEN_2_quo[4]), .I1(GEN_2_quo[3]), .S(GEN_2_shift_req), .Z(
        GEN_2_mz_rounded[2]) );
  MUX2D0 U109 ( .I0(GEN_2_quo[3]), .I1(GEN_2_quo[2]), .S(GEN_2_shift_req), .Z(
        GEN_2_mz_rounded[1]) );
  MUX2D0 U110 ( .I0(GEN_2_quo[12]), .I1(GEN_2_quo[11]), .S(GEN_2_shift_req), 
        .Z(GEN_2_mz_rounded[10]) );
  NR2XD0 U19 ( .A1(n113), .A2(GEN_2_ez_norm[9]), .ZN(n87) );
  ND3D0 U21 ( .A1(n90), .A2(n92), .A3(n99), .ZN(n113) );
  OAI21D0 U51 ( .A1(n67), .A2(n61), .B(n114), .ZN(n115) );
  OA31D0 U52 ( .A1(n68), .A2(n69), .A3(n67), .B(n60), .Z(n114) );
  OAI21D0 U58 ( .A1(a[6]), .A2(n80), .B(n59), .ZN(n67) );
  AOI21D1 U82 ( .A1(n72), .A2(n115), .B(n75), .ZN(GEN_2_shift_req) );
endmodule


module fig8_dw_B11 ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   n1, n15;

  fig8_dw_B11_DW_fp_div_0 core ( .a(x[31:12]), .b(y[31:12]), .rnd({n1, n1, n15}), .z(result[31:12]) );
  TIEH U3 ( .Z(n15) );
  TIEL U16 ( .ZN(n1) );
endmodule


module fig8_dw_d12 ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   n13, n14, n15, n16, n17, n18;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11;

  fig8_dw_B11 core ( .x({x[31:24], n15, x[22:12], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y({y[31], n17, y[29:13], 
        n18, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .result({result[31:12], SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11}) );
  TIEH U1 ( .Z(n13) );
  INVD1 U2 ( .I(n13), .ZN(result[0]) );
  INVD1 U3 ( .I(n13), .ZN(result[1]) );
  INVD1 U4 ( .I(n13), .ZN(result[2]) );
  INVD1 U5 ( .I(n13), .ZN(result[3]) );
  INVD1 U6 ( .I(n13), .ZN(result[4]) );
  INVD1 U7 ( .I(n13), .ZN(result[5]) );
  INVD1 U8 ( .I(n13), .ZN(result[6]) );
  INVD1 U9 ( .I(n13), .ZN(result[7]) );
  INVD1 U10 ( .I(n13), .ZN(result[8]) );
  INVD1 U11 ( .I(n13), .ZN(result[9]) );
  INVD1 U12 ( .I(n13), .ZN(result[10]) );
  INVD1 U13 ( .I(n13), .ZN(result[11]) );
  CKND0 U14 ( .I(x[23]), .ZN(n14) );
  CKND0 U15 ( .I(n14), .ZN(n15) );
  CKND0 U16 ( .I(y[30]), .ZN(n16) );
  CKND0 U17 ( .I(n16), .ZN(n17) );
  CKBD1 U18 ( .I(y[12]), .Z(n18) );
endmodule

