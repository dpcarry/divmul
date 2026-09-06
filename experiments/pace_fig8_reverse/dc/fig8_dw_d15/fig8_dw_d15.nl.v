/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Sat Sep  5 13:32:18 2026
/////////////////////////////////////////////////////////////


module fig8_dw_B8_add_1_root_sub_2151_DP_OP_357_2740_0 ( I1, I2, O6 );
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
  INVD1 U22 ( .I(I2[0]), .ZN(n54) );
  INVD1 U23 ( .I(I2[1]), .ZN(n53) );
  INVD1 U24 ( .I(I2[2]), .ZN(n52) );
  INVD1 U25 ( .I(I2[3]), .ZN(n51) );
  INVD1 U26 ( .I(I2[4]), .ZN(n50) );
  INVD1 U27 ( .I(I2[5]), .ZN(n49) );
  INVD1 U28 ( .I(I2[6]), .ZN(n48) );
  INR2D0 U29 ( .A1(I2[7]), .B1(n2), .ZN(O6[9]) );
  CKXOR2D0 U30 ( .A1(I2[7]), .A2(n2), .Z(O6[8]) );
endmodule


module fig8_dw_B8_DW_div_6 ( a, b, quotient, remainder, divide_by_0 );
  input [18:0] a;
  input [8:0] b;
  output [18:0] quotient;
  output [8:0] remainder;
  output divide_by_0;
  wire   PartRem_10__8_, PartRem_10__2_, PartRem_9__8_, PartRem_9__2_,
         PartRem_9__1_, PartRem_8__8_, PartRem_8__3_, PartRem_8__1_,
         PartRem_7__8_, PartRem_7__1_, PartRem_6__8_, PartRem_6__1_,
         PartRem_5__8_, PartRem_5__1_, PartRem_4__8_, PartRem_4__1_,
         PartRem_3__8_, PartRem_3__1_, CryTmp_10__9_, CryTmp_10__7_,
         CryTmp_10__6_, CryTmp_10__5_, CryTmp_10__4_, CryTmp_10__3_,
         CryTmp_10__2_, CryTmp_10__1_, CryTmp_9__8_, CryTmp_9__7_,
         CryTmp_9__6_, CryTmp_9__5_, CryTmp_9__4_, CryTmp_9__3_, CryTmp_9__2_,
         CryTmp_9__1_, CryTmp_8__8_, CryTmp_8__7_, CryTmp_8__6_, CryTmp_8__5_,
         CryTmp_8__4_, CryTmp_8__3_, CryTmp_8__2_, CryTmp_7__8_, CryTmp_7__7_,
         CryTmp_7__6_, CryTmp_7__5_, CryTmp_7__4_, CryTmp_7__3_, CryTmp_7__2_,
         CryTmp_6__8_, CryTmp_6__7_, CryTmp_6__6_, CryTmp_6__5_, CryTmp_6__4_,
         CryTmp_6__3_, CryTmp_6__2_, CryTmp_5__8_, CryTmp_5__7_, CryTmp_5__6_,
         CryTmp_5__5_, CryTmp_5__4_, CryTmp_5__3_, CryTmp_5__2_, CryTmp_4__8_,
         CryTmp_4__7_, CryTmp_4__6_, CryTmp_4__5_, CryTmp_4__4_, CryTmp_4__3_,
         CryTmp_4__2_, CryTmp_3__8_, CryTmp_3__7_, CryTmp_3__6_, CryTmp_3__5_,
         CryTmp_3__4_, CryTmp_3__3_, CryTmp_3__2_, CryTmp_2__8_, CryTmp_2__7_,
         CryTmp_2__6_, CryTmp_2__5_, CryTmp_2__4_, CryTmp_2__3_, CryTmp_2__2_,
         CryTmp_1__8_, CryTmp_1__7_, CryTmp_1__6_, CryTmp_1__5_, CryTmp_1__4_,
         CryTmp_1__3_, CryTmp_1__2_, SumTmp_10__7_, SumTmp_10__6_,
         SumTmp_10__5_, SumTmp_10__4_, SumTmp_10__3_, SumTmp_10__2_,
         SumTmp_10__1_, SumTmp_10__0_, SumTmp_9__7_, SumTmp_9__6_,
         SumTmp_9__5_, SumTmp_9__4_, SumTmp_9__3_, SumTmp_9__2_, SumTmp_9__1_,
         SumTmp_8__7_, SumTmp_8__6_, SumTmp_8__5_, SumTmp_8__4_, SumTmp_8__3_,
         SumTmp_8__2_, SumTmp_8__1_, SumTmp_7__7_, SumTmp_7__6_, SumTmp_7__5_,
         SumTmp_7__4_, SumTmp_7__3_, SumTmp_7__2_, SumTmp_7__1_, SumTmp_6__7_,
         SumTmp_6__6_, SumTmp_6__5_, SumTmp_6__4_, SumTmp_6__3_, SumTmp_6__2_,
         SumTmp_6__1_, SumTmp_5__7_, SumTmp_5__6_, SumTmp_5__5_, SumTmp_5__4_,
         SumTmp_5__3_, SumTmp_5__2_, SumTmp_5__1_, SumTmp_4__7_, SumTmp_4__6_,
         SumTmp_4__5_, SumTmp_4__4_, SumTmp_4__3_, SumTmp_4__2_, SumTmp_4__1_,
         SumTmp_3__7_, SumTmp_3__6_, SumTmp_3__5_, SumTmp_3__4_, SumTmp_3__3_,
         SumTmp_3__2_, SumTmp_3__1_, SumTmp_2__7_, SumTmp_2__6_, SumTmp_2__5_,
         SumTmp_2__4_, SumTmp_2__3_, SumTmp_2__2_, SumTmp_2__1_, n2, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n113, n114, n115, n116, n117, n118, n119,
         n120, n121;
  wire   [7:1] BInv;

  FA1D0 u_fa_PartRem_0_10_1 ( .A(a[11]), .B(BInv[1]), .CI(CryTmp_10__1_), .CO(
        CryTmp_10__2_), .S(SumTmp_10__1_) );
  FA1D0 u_fa_PartRem_0_1_6 ( .A(n27), .B(BInv[6]), .CI(CryTmp_1__6_), .CO(
        CryTmp_1__7_) );
  FA1D0 u_fa_PartRem_0_1_7 ( .A(n36), .B(BInv[7]), .CI(CryTmp_1__7_), .CO(
        CryTmp_1__8_) );
  FA1D0 u_fa_PartRem_0_1_4 ( .A(n10), .B(BInv[4]), .CI(CryTmp_1__4_), .CO(
        CryTmp_1__5_) );
  FA1D0 u_fa_PartRem_0_1_5 ( .A(n18), .B(BInv[5]), .CI(CryTmp_1__5_), .CO(
        CryTmp_1__6_) );
  FA1D0 u_fa_PartRem_0_2_6 ( .A(n32), .B(BInv[6]), .CI(CryTmp_2__6_), .CO(
        CryTmp_2__7_), .S(SumTmp_2__6_) );
  FA1D0 u_fa_PartRem_0_2_5 ( .A(n23), .B(BInv[5]), .CI(CryTmp_2__5_), .CO(
        CryTmp_2__6_), .S(SumTmp_2__5_) );
  FA1D0 u_fa_PartRem_0_1_2 ( .A(n61), .B(BInv[2]), .CI(CryTmp_1__2_), .CO(
        CryTmp_1__3_) );
  FA1D0 u_fa_PartRem_0_1_3 ( .A(n4), .B(BInv[3]), .CI(CryTmp_1__3_), .CO(
        CryTmp_1__4_) );
  FA1D0 u_fa_PartRem_0_2_4 ( .A(n14), .B(BInv[4]), .CI(CryTmp_2__4_), .CO(
        CryTmp_2__5_), .S(SumTmp_2__4_) );
  FA1D0 u_fa_PartRem_0_2_3 ( .A(n9), .B(BInv[3]), .CI(CryTmp_2__3_), .CO(
        CryTmp_2__4_), .S(SumTmp_2__3_) );
  FA1D0 u_fa_PartRem_0_2_2 ( .A(n66), .B(BInv[2]), .CI(CryTmp_2__2_), .CO(
        CryTmp_2__3_), .S(SumTmp_2__2_) );
  FA1D0 u_fa_PartRem_0_3_6 ( .A(n31), .B(BInv[6]), .CI(CryTmp_3__6_), .CO(
        CryTmp_3__7_), .S(SumTmp_3__6_) );
  FA1D0 u_fa_PartRem_0_3_5 ( .A(n22), .B(BInv[5]), .CI(CryTmp_3__5_), .CO(
        CryTmp_3__6_), .S(SumTmp_3__5_) );
  FA1D0 u_fa_PartRem_0_3_4 ( .A(n13), .B(BInv[4]), .CI(CryTmp_3__4_), .CO(
        CryTmp_3__5_), .S(SumTmp_3__4_) );
  FA1D0 u_fa_PartRem_0_3_3 ( .A(n8), .B(BInv[3]), .CI(CryTmp_3__3_), .CO(
        CryTmp_3__4_), .S(SumTmp_3__3_) );
  FA1D0 u_fa_PartRem_0_4_6 ( .A(n30), .B(BInv[6]), .CI(CryTmp_4__6_), .CO(
        CryTmp_4__7_), .S(SumTmp_4__6_) );
  FA1D0 u_fa_PartRem_0_3_2 ( .A(n65), .B(BInv[2]), .CI(CryTmp_3__2_), .CO(
        CryTmp_3__3_), .S(SumTmp_3__2_) );
  FA1D0 u_fa_PartRem_0_4_5 ( .A(n21), .B(BInv[5]), .CI(CryTmp_4__5_), .CO(
        CryTmp_4__6_), .S(SumTmp_4__5_) );
  FA1D0 u_fa_PartRem_0_4_4 ( .A(n12), .B(BInv[4]), .CI(CryTmp_4__4_), .CO(
        CryTmp_4__5_), .S(SumTmp_4__4_) );
  FA1D0 u_fa_PartRem_0_5_6 ( .A(n29), .B(BInv[6]), .CI(CryTmp_5__6_), .CO(
        CryTmp_5__7_), .S(SumTmp_5__6_) );
  FA1D0 u_fa_PartRem_0_4_3 ( .A(n7), .B(BInv[3]), .CI(CryTmp_4__3_), .CO(
        CryTmp_4__4_), .S(SumTmp_4__3_) );
  FA1D0 u_fa_PartRem_0_5_5 ( .A(n20), .B(BInv[5]), .CI(CryTmp_5__5_), .CO(
        CryTmp_5__6_), .S(SumTmp_5__5_) );
  FA1D0 u_fa_PartRem_0_4_2 ( .A(n64), .B(BInv[2]), .CI(CryTmp_4__2_), .CO(
        CryTmp_4__3_), .S(SumTmp_4__2_) );
  FA1D0 u_fa_PartRem_0_5_4 ( .A(n11), .B(BInv[4]), .CI(CryTmp_5__4_), .CO(
        CryTmp_5__5_), .S(SumTmp_5__4_) );
  FA1D0 u_fa_PartRem_0_6_6 ( .A(n28), .B(BInv[6]), .CI(CryTmp_6__6_), .CO(
        CryTmp_6__7_), .S(SumTmp_6__6_) );
  FA1D0 u_fa_PartRem_0_5_3 ( .A(n6), .B(BInv[3]), .CI(CryTmp_5__3_), .CO(
        CryTmp_5__4_), .S(SumTmp_5__3_) );
  FA1D0 u_fa_PartRem_0_6_5 ( .A(n19), .B(BInv[5]), .CI(CryTmp_6__5_), .CO(
        CryTmp_6__6_), .S(SumTmp_6__5_) );
  FA1D0 u_fa_PartRem_0_5_2 ( .A(n67), .B(BInv[2]), .CI(CryTmp_5__2_), .CO(
        CryTmp_5__3_), .S(SumTmp_5__2_) );
  FA1D0 u_fa_PartRem_0_6_4 ( .A(n69), .B(BInv[4]), .CI(CryTmp_6__4_), .CO(
        CryTmp_6__5_), .S(SumTmp_6__4_) );
  FA1D0 u_fa_PartRem_0_7_6 ( .A(n33), .B(BInv[6]), .CI(CryTmp_7__6_), .CO(
        CryTmp_7__7_), .S(SumTmp_7__6_) );
  FA1D0 u_fa_PartRem_0_6_3 ( .A(n5), .B(BInv[3]), .CI(CryTmp_6__3_), .CO(
        CryTmp_6__4_), .S(SumTmp_6__3_) );
  FA1D0 u_fa_PartRem_0_7_5 ( .A(n24), .B(BInv[5]), .CI(CryTmp_7__5_), .CO(
        CryTmp_7__6_), .S(SumTmp_7__5_) );
  FA1D0 u_fa_PartRem_0_6_2 ( .A(n63), .B(BInv[2]), .CI(CryTmp_6__2_), .CO(
        CryTmp_6__3_), .S(SumTmp_6__2_) );
  FA1D0 u_fa_PartRem_0_7_4 ( .A(n15), .B(BInv[4]), .CI(CryTmp_7__4_), .CO(
        CryTmp_7__5_), .S(SumTmp_7__4_) );
  FA1D0 u_fa_PartRem_0_8_6 ( .A(n34), .B(BInv[6]), .CI(CryTmp_8__6_), .CO(
        CryTmp_8__7_), .S(SumTmp_8__6_) );
  FA1D0 u_fa_PartRem_0_7_3 ( .A(PartRem_8__3_), .B(BInv[3]), .CI(CryTmp_7__3_), 
        .CO(CryTmp_7__4_), .S(SumTmp_7__3_) );
  FA1D0 u_fa_PartRem_0_8_5 ( .A(n25), .B(BInv[5]), .CI(CryTmp_8__5_), .CO(
        CryTmp_8__6_), .S(SumTmp_8__5_) );
  FA1D0 u_fa_PartRem_0_7_2 ( .A(n62), .B(BInv[2]), .CI(CryTmp_7__2_), .CO(
        CryTmp_7__3_), .S(SumTmp_7__2_) );
  FA1D0 u_fa_PartRem_0_8_4 ( .A(n16), .B(BInv[4]), .CI(CryTmp_8__4_), .CO(
        CryTmp_8__5_), .S(SumTmp_8__4_) );
  FA1D0 u_fa_PartRem_0_9_6 ( .A(n35), .B(BInv[6]), .CI(CryTmp_9__6_), .CO(
        CryTmp_9__7_), .S(SumTmp_9__6_) );
  FA1D0 u_fa_PartRem_0_8_3 ( .A(n68), .B(BInv[3]), .CI(CryTmp_8__3_), .CO(
        CryTmp_8__4_), .S(SumTmp_8__3_) );
  FA1D0 u_fa_PartRem_0_9_5 ( .A(n26), .B(BInv[5]), .CI(CryTmp_9__5_), .CO(
        CryTmp_9__6_), .S(SumTmp_9__5_) );
  FA1D0 u_fa_PartRem_0_8_2 ( .A(PartRem_9__2_), .B(BInv[2]), .CI(CryTmp_8__2_), 
        .CO(CryTmp_8__3_), .S(SumTmp_8__2_) );
  FA1D0 u_fa_PartRem_0_10_6 ( .A(a[16]), .B(BInv[6]), .CI(CryTmp_10__6_), .CO(
        CryTmp_10__7_), .S(SumTmp_10__6_) );
  FA1D0 u_fa_PartRem_0_9_4 ( .A(n17), .B(BInv[4]), .CI(CryTmp_9__4_), .CO(
        CryTmp_9__5_), .S(SumTmp_9__4_) );
  FA1D0 u_fa_PartRem_0_10_5 ( .A(a[15]), .B(BInv[5]), .CI(CryTmp_10__5_), .CO(
        CryTmp_10__6_), .S(SumTmp_10__5_) );
  FA1D0 u_fa_PartRem_0_9_3 ( .A(n79), .B(BInv[3]), .CI(CryTmp_9__3_), .CO(
        CryTmp_9__4_), .S(SumTmp_9__3_) );
  FA1D0 u_fa_PartRem_0_10_4 ( .A(a[14]), .B(BInv[4]), .CI(CryTmp_10__4_), .CO(
        CryTmp_10__5_), .S(SumTmp_10__4_) );
  FA1D0 u_fa_PartRem_0_9_2 ( .A(PartRem_10__2_), .B(BInv[2]), .CI(CryTmp_9__2_), .CO(CryTmp_9__3_), .S(SumTmp_9__2_) );
  FA1D0 u_fa_PartRem_0_10_3 ( .A(a[13]), .B(BInv[3]), .CI(CryTmp_10__3_), .CO(
        CryTmp_10__4_), .S(SumTmp_10__3_) );
  FA1D0 u_fa_PartRem_0_10_2 ( .A(a[12]), .B(BInv[2]), .CI(CryTmp_10__2_), .CO(
        CryTmp_10__3_), .S(SumTmp_10__2_) );
  FA1D0 u_fa_PartRem_0_2_1 ( .A(PartRem_3__1_), .B(BInv[1]), .CI(CryTmp_9__1_), 
        .CO(CryTmp_2__2_), .S(SumTmp_2__1_) );
  FA1D0 u_fa_PartRem_0_3_1 ( .A(PartRem_4__1_), .B(BInv[1]), .CI(CryTmp_9__1_), 
        .CO(CryTmp_3__2_), .S(SumTmp_3__1_) );
  FA1D0 u_fa_PartRem_0_4_1 ( .A(PartRem_5__1_), .B(BInv[1]), .CI(CryTmp_9__1_), 
        .CO(CryTmp_4__2_), .S(SumTmp_4__1_) );
  FA1D0 u_fa_PartRem_0_5_1 ( .A(PartRem_6__1_), .B(BInv[1]), .CI(CryTmp_9__1_), 
        .CO(CryTmp_5__2_), .S(SumTmp_5__1_) );
  FA1D0 u_fa_PartRem_0_6_1 ( .A(PartRem_7__1_), .B(BInv[1]), .CI(CryTmp_9__1_), 
        .CO(CryTmp_6__2_), .S(SumTmp_6__1_) );
  FA1D0 u_fa_PartRem_0_7_1 ( .A(PartRem_8__1_), .B(BInv[1]), .CI(CryTmp_9__1_), 
        .CO(CryTmp_7__2_), .S(SumTmp_7__1_) );
  FA1D0 u_fa_PartRem_0_8_1 ( .A(PartRem_9__1_), .B(BInv[1]), .CI(CryTmp_9__1_), 
        .CO(CryTmp_8__2_), .S(SumTmp_8__1_) );
  FA1D0 u_fa_PartRem_0_9_1 ( .A(n2), .B(BInv[1]), .CI(CryTmp_9__1_), .CO(
        CryTmp_9__2_), .S(SumTmp_9__1_) );
  FA1D0 u_fa_PartRem_0_2_7 ( .A(n41), .B(BInv[7]), .CI(CryTmp_2__7_), .CO(
        CryTmp_2__8_), .S(SumTmp_2__7_) );
  FA1D0 u_fa_PartRem_0_3_7 ( .A(n40), .B(BInv[7]), .CI(CryTmp_3__7_), .CO(
        CryTmp_3__8_), .S(SumTmp_3__7_) );
  FA1D0 u_fa_PartRem_0_4_7 ( .A(n39), .B(BInv[7]), .CI(CryTmp_4__7_), .CO(
        CryTmp_4__8_), .S(SumTmp_4__7_) );
  FA1D0 u_fa_PartRem_0_5_7 ( .A(n38), .B(BInv[7]), .CI(CryTmp_5__7_), .CO(
        CryTmp_5__8_), .S(SumTmp_5__7_) );
  FA1D0 u_fa_PartRem_0_6_7 ( .A(n37), .B(BInv[7]), .CI(CryTmp_6__7_), .CO(
        CryTmp_6__8_), .S(SumTmp_6__7_) );
  FA1D0 u_fa_PartRem_0_7_7 ( .A(n42), .B(BInv[7]), .CI(CryTmp_7__7_), .CO(
        CryTmp_7__8_), .S(SumTmp_7__7_) );
  FA1D0 u_fa_PartRem_0_8_7 ( .A(n43), .B(BInv[7]), .CI(CryTmp_8__7_), .CO(
        CryTmp_8__8_), .S(SumTmp_8__7_) );
  FA1D0 u_fa_PartRem_0_9_7 ( .A(n44), .B(BInv[7]), .CI(CryTmp_9__7_), .CO(
        CryTmp_9__8_), .S(SumTmp_9__7_) );
  FA1D0 u_fa_PartRem_0_10_7 ( .A(a[17]), .B(BInv[7]), .CI(CryTmp_10__7_), .CO(
        CryTmp_10__9_), .S(SumTmp_10__7_) );
  FA1D0 u_fa_PartRem_0_1_1 ( .A(n78), .B(BInv[1]), .CI(CryTmp_9__1_), .CO(
        CryTmp_1__2_) );
  INVD1 U2 ( .I(SumTmp_7__1_), .ZN(n105) );
  INVD1 U3 ( .I(SumTmp_8__1_), .ZN(n104) );
  INVD1 U4 ( .I(SumTmp_9__2_), .ZN(n98) );
  INVD1 U6 ( .I(SumTmp_6__1_), .ZN(n106) );
  INVD1 U7 ( .I(SumTmp_7__3_), .ZN(n101) );
  INVD1 U8 ( .I(SumTmp_5__1_), .ZN(n107) );
  INVD1 U9 ( .I(SumTmp_4__1_), .ZN(n108) );
  INVD1 U10 ( .I(SumTmp_3__1_), .ZN(n109) );
  INVD1 U11 ( .I(SumTmp_2__1_), .ZN(n110) );
  MUX2D0 U14 ( .I0(a[10]), .I1(SumTmp_10__0_), .S(CryTmp_10__9_), .Z(n2) );
  MUX2D0 U16 ( .I0(n66), .I1(SumTmp_2__2_), .S(quotient[2]), .Z(n4) );
  MUX2D0 U17 ( .I0(n62), .I1(SumTmp_7__2_), .S(quotient[7]), .Z(n5) );
  MUX2D0 U18 ( .I0(n63), .I1(SumTmp_6__2_), .S(quotient[6]), .Z(n6) );
  MUX2D0 U19 ( .I0(n67), .I1(SumTmp_5__2_), .S(quotient[5]), .Z(n7) );
  MUX2D0 U20 ( .I0(n64), .I1(SumTmp_4__2_), .S(quotient[4]), .Z(n8) );
  MUX2D0 U21 ( .I0(n65), .I1(SumTmp_3__2_), .S(quotient[3]), .Z(n9) );
  MUX2D0 U22 ( .I0(n9), .I1(SumTmp_2__3_), .S(quotient[2]), .Z(n10) );
  MUX2D0 U23 ( .I0(n5), .I1(SumTmp_6__3_), .S(quotient[6]), .Z(n11) );
  MUX2D0 U24 ( .I0(n6), .I1(SumTmp_5__3_), .S(quotient[5]), .Z(n12) );
  MUX2D0 U25 ( .I0(n7), .I1(SumTmp_4__3_), .S(quotient[4]), .Z(n13) );
  MUX2D0 U26 ( .I0(n8), .I1(SumTmp_3__3_), .S(quotient[3]), .Z(n14) );
  MUX2D0 U27 ( .I0(n68), .I1(SumTmp_8__3_), .S(quotient[8]), .Z(n15) );
  MUX2D0 U28 ( .I0(n79), .I1(SumTmp_9__3_), .S(quotient[9]), .Z(n16) );
  MUX2D0 U29 ( .I0(a[13]), .I1(SumTmp_10__3_), .S(CryTmp_10__9_), .Z(n17) );
  MUX2D0 U30 ( .I0(n14), .I1(SumTmp_2__4_), .S(quotient[2]), .Z(n18) );
  MUX2D0 U31 ( .I0(n15), .I1(SumTmp_7__4_), .S(quotient[7]), .Z(n19) );
  MUX2D0 U32 ( .I0(n69), .I1(SumTmp_6__4_), .S(quotient[6]), .Z(n20) );
  MUX2D0 U33 ( .I0(n11), .I1(SumTmp_5__4_), .S(quotient[5]), .Z(n21) );
  MUX2D0 U34 ( .I0(n12), .I1(SumTmp_4__4_), .S(quotient[4]), .Z(n22) );
  MUX2D0 U35 ( .I0(n13), .I1(SumTmp_3__4_), .S(quotient[3]), .Z(n23) );
  MUX2D0 U36 ( .I0(n16), .I1(SumTmp_8__4_), .S(quotient[8]), .Z(n24) );
  MUX2D0 U37 ( .I0(n17), .I1(SumTmp_9__4_), .S(quotient[9]), .Z(n25) );
  MUX2D0 U38 ( .I0(a[14]), .I1(SumTmp_10__4_), .S(CryTmp_10__9_), .Z(n26) );
  MUX2D0 U39 ( .I0(n23), .I1(SumTmp_2__5_), .S(quotient[2]), .Z(n27) );
  MUX2D0 U40 ( .I0(n24), .I1(SumTmp_7__5_), .S(quotient[7]), .Z(n28) );
  MUX2D0 U41 ( .I0(n19), .I1(SumTmp_6__5_), .S(quotient[6]), .Z(n29) );
  MUX2D0 U42 ( .I0(n20), .I1(SumTmp_5__5_), .S(quotient[5]), .Z(n30) );
  MUX2D0 U43 ( .I0(n21), .I1(SumTmp_4__5_), .S(quotient[4]), .Z(n31) );
  MUX2D0 U44 ( .I0(n22), .I1(SumTmp_3__5_), .S(quotient[3]), .Z(n32) );
  MUX2D0 U45 ( .I0(n25), .I1(SumTmp_8__5_), .S(quotient[8]), .Z(n33) );
  MUX2D0 U46 ( .I0(n26), .I1(SumTmp_9__5_), .S(quotient[9]), .Z(n34) );
  MUX2D0 U47 ( .I0(a[15]), .I1(SumTmp_10__5_), .S(CryTmp_10__9_), .Z(n35) );
  MUX2D0 U48 ( .I0(n32), .I1(SumTmp_2__6_), .S(quotient[2]), .Z(n36) );
  MUX2D0 U49 ( .I0(n33), .I1(SumTmp_7__6_), .S(quotient[7]), .Z(n37) );
  MUX2D0 U50 ( .I0(n28), .I1(SumTmp_6__6_), .S(quotient[6]), .Z(n38) );
  MUX2D0 U51 ( .I0(n29), .I1(SumTmp_5__6_), .S(quotient[5]), .Z(n39) );
  MUX2D0 U52 ( .I0(n30), .I1(SumTmp_4__6_), .S(quotient[4]), .Z(n40) );
  MUX2D0 U53 ( .I0(n31), .I1(SumTmp_3__6_), .S(quotient[3]), .Z(n41) );
  MUX2D0 U54 ( .I0(n34), .I1(SumTmp_8__6_), .S(quotient[8]), .Z(n42) );
  MUX2D0 U55 ( .I0(n35), .I1(SumTmp_9__6_), .S(quotient[9]), .Z(n43) );
  MUX2D0 U56 ( .I0(a[16]), .I1(SumTmp_10__6_), .S(CryTmp_10__9_), .Z(n44) );
  ND2D1 U73 ( .A1(quotient[8]), .A2(b[0]), .ZN(n88) );
  ND2D1 U74 ( .A1(quotient[7]), .A2(b[0]), .ZN(n90) );
  ND2D1 U75 ( .A1(quotient[6]), .A2(b[0]), .ZN(n92) );
  ND2D1 U76 ( .A1(quotient[5]), .A2(b[0]), .ZN(n94) );
  ND2D1 U77 ( .A1(quotient[4]), .A2(b[0]), .ZN(n96) );
  ND2D1 U78 ( .A1(quotient[3]), .A2(b[0]), .ZN(n100) );
  ND2D1 U79 ( .A1(quotient[9]), .A2(b[0]), .ZN(n85) );
  MUX2ND0 U88 ( .I0(n100), .I1(n110), .S(quotient[2]), .ZN(n61) );
  MUX2ND0 U89 ( .I0(n85), .I1(n104), .S(quotient[8]), .ZN(n62) );
  MUX2ND0 U90 ( .I0(n88), .I1(n105), .S(quotient[7]), .ZN(n63) );
  MUX2ND0 U91 ( .I0(n92), .I1(n107), .S(quotient[5]), .ZN(n64) );
  MUX2ND0 U92 ( .I0(n94), .I1(n108), .S(quotient[4]), .ZN(n65) );
  MUX2ND0 U93 ( .I0(n96), .I1(n109), .S(quotient[3]), .ZN(n66) );
  MUX2ND0 U94 ( .I0(n90), .I1(n106), .S(quotient[6]), .ZN(n67) );
  INVD1 U96 ( .I(SumTmp_8__2_), .ZN(n102) );
  MUX2ND0 U97 ( .I0(n97), .I1(n98), .S(quotient[9]), .ZN(n68) );
  MUX2ND0 U98 ( .I0(n87), .I1(n101), .S(quotient[7]), .ZN(n69) );
  XNR2D1 U99 ( .A1(CryTmp_2__8_), .A2(PartRem_3__8_), .ZN(n70) );
  XNR2D1 U100 ( .A1(CryTmp_9__8_), .A2(PartRem_10__8_), .ZN(n71) );
  XNR2D1 U101 ( .A1(CryTmp_3__8_), .A2(PartRem_4__8_), .ZN(n72) );
  XNR2D1 U102 ( .A1(CryTmp_6__8_), .A2(PartRem_7__8_), .ZN(n73) );
  XNR2D1 U103 ( .A1(CryTmp_5__8_), .A2(PartRem_6__8_), .ZN(n74) );
  XNR2D1 U104 ( .A1(CryTmp_4__8_), .A2(PartRem_5__8_), .ZN(n75) );
  XNR2D1 U105 ( .A1(CryTmp_8__8_), .A2(PartRem_9__8_), .ZN(n76) );
  XNR2D1 U106 ( .A1(CryTmp_7__8_), .A2(PartRem_8__8_), .ZN(n77) );
  INVD1 U107 ( .I(b[0]), .ZN(CryTmp_9__1_) );
  INR2D1 U109 ( .A1(quotient[2]), .B1(CryTmp_9__1_), .ZN(n78) );
  INVD1 U113 ( .I(b[1]), .ZN(BInv[1]) );
  INVD1 U114 ( .I(b[2]), .ZN(BInv[2]) );
  INVD1 U116 ( .I(b[3]), .ZN(BInv[3]) );
  INVD1 U117 ( .I(b[4]), .ZN(BInv[4]) );
  INVD1 U118 ( .I(b[5]), .ZN(BInv[5]) );
  INVD1 U119 ( .I(b[6]), .ZN(BInv[6]) );
  INVD1 U120 ( .I(b[7]), .ZN(BInv[7]) );
  XNR2D1 U121 ( .A1(CryTmp_9__1_), .A2(a[10]), .ZN(SumTmp_10__0_) );
  CKND1 U122 ( .I(n83), .ZN(PartRem_9__8_) );
  CKND1 U123 ( .I(n84), .ZN(PartRem_9__2_) );
  CKND1 U124 ( .I(n85), .ZN(PartRem_9__1_) );
  MUX2ND0 U125 ( .I0(n44), .I1(SumTmp_9__7_), .S(quotient[9]), .ZN(n83) );
  CKND1 U126 ( .I(n86), .ZN(PartRem_8__8_) );
  CKND1 U128 ( .I(n88), .ZN(PartRem_8__1_) );
  MUX2ND0 U129 ( .I0(n43), .I1(SumTmp_8__7_), .S(quotient[8]), .ZN(n86) );
  CKND1 U130 ( .I(n89), .ZN(PartRem_7__8_) );
  CKND1 U131 ( .I(n90), .ZN(PartRem_7__1_) );
  MUX2ND0 U132 ( .I0(n42), .I1(SumTmp_7__7_), .S(quotient[7]), .ZN(n89) );
  CKND1 U133 ( .I(n91), .ZN(PartRem_6__8_) );
  CKND1 U134 ( .I(n92), .ZN(PartRem_6__1_) );
  MUX2ND0 U135 ( .I0(n37), .I1(SumTmp_6__7_), .S(quotient[6]), .ZN(n91) );
  CKND1 U136 ( .I(n93), .ZN(PartRem_5__8_) );
  CKND1 U137 ( .I(n94), .ZN(PartRem_5__1_) );
  MUX2ND0 U138 ( .I0(n38), .I1(SumTmp_5__7_), .S(quotient[5]), .ZN(n93) );
  CKND1 U139 ( .I(n95), .ZN(PartRem_4__8_) );
  CKND1 U140 ( .I(n96), .ZN(PartRem_4__1_) );
  MUX2ND0 U141 ( .I0(n39), .I1(SumTmp_4__7_), .S(quotient[4]), .ZN(n95) );
  CKND1 U142 ( .I(n99), .ZN(PartRem_3__8_) );
  CKND1 U143 ( .I(n100), .ZN(PartRem_3__1_) );
  MUX2ND0 U144 ( .I0(n40), .I1(SumTmp_3__7_), .S(quotient[3]), .ZN(n99) );
  MUX2ND0 U145 ( .I0(n2), .I1(SumTmp_9__1_), .S(quotient[9]), .ZN(n84) );
  MUX2ND0 U146 ( .I0(n41), .I1(SumTmp_2__7_), .S(quotient[2]), .ZN(n103) );
  CKND1 U147 ( .I(n82), .ZN(PartRem_10__8_) );
  MUX2ND0 U148 ( .I0(a[17]), .I1(SumTmp_10__7_), .S(CryTmp_10__9_), .ZN(n82)
         );
  CKND1 U149 ( .I(n97), .ZN(PartRem_10__2_) );
  MUX2ND0 U150 ( .I0(a[11]), .I1(SumTmp_10__1_), .S(CryTmp_10__9_), .ZN(n97)
         );
  AO21D0 U5 ( .A1(n114), .A2(CryTmp_1__8_), .B(n113), .Z(quotient[1]) );
  MUX2ND0 U12 ( .I0(n99), .I1(n70), .S(quotient[2]), .ZN(n113) );
  CKND0 U13 ( .I(n103), .ZN(n114) );
  AO21D0 U15 ( .A1(CryTmp_2__8_), .A2(PartRem_3__8_), .B(n115), .Z(quotient[2]) );
  MUX2ND0 U57 ( .I0(n95), .I1(n72), .S(quotient[3]), .ZN(n115) );
  AO21D0 U58 ( .A1(CryTmp_3__8_), .A2(PartRem_4__8_), .B(n116), .Z(quotient[3]) );
  MUX2ND0 U59 ( .I0(n93), .I1(n75), .S(quotient[4]), .ZN(n116) );
  AO21D0 U60 ( .A1(CryTmp_4__8_), .A2(PartRem_5__8_), .B(n117), .Z(quotient[4]) );
  MUX2ND0 U61 ( .I0(n91), .I1(n74), .S(quotient[5]), .ZN(n117) );
  AO21D0 U62 ( .A1(CryTmp_5__8_), .A2(PartRem_6__8_), .B(n118), .Z(quotient[5]) );
  MUX2ND0 U63 ( .I0(n89), .I1(n73), .S(quotient[6]), .ZN(n118) );
  AO21D0 U64 ( .A1(CryTmp_6__8_), .A2(PartRem_7__8_), .B(n119), .Z(quotient[6]) );
  MUX2ND0 U65 ( .I0(n86), .I1(n77), .S(quotient[7]), .ZN(n119) );
  AO21D0 U66 ( .A1(CryTmp_7__8_), .A2(PartRem_8__8_), .B(n120), .Z(quotient[7]) );
  MUX2ND0 U67 ( .I0(n83), .I1(n76), .S(quotient[8]), .ZN(n120) );
  CKND0 U68 ( .I(PartRem_8__3_), .ZN(n87) );
  MUX2ND0 U69 ( .I0(n84), .I1(n102), .S(quotient[8]), .ZN(PartRem_8__3_) );
  AO21D0 U70 ( .A1(CryTmp_8__8_), .A2(PartRem_9__8_), .B(n121), .Z(quotient[8]) );
  MUX2ND0 U71 ( .I0(n82), .I1(n71), .S(quotient[9]), .ZN(n121) );
  IOA21D0 U72 ( .A1(CryTmp_9__8_), .A2(PartRem_10__8_), .B(CryTmp_10__9_), 
        .ZN(quotient[9]) );
  MUX2D0 U80 ( .I0(a[12]), .I1(SumTmp_10__2_), .S(CryTmp_10__9_), .Z(n79) );
  IND2D0 U81 ( .A1(a[10]), .B1(b[0]), .ZN(CryTmp_10__1_) );
endmodule


module fig8_dw_B8_DW_fp_div_0 ( a, b, rnd, z, status );
  input [16:0] a;
  input [16:0] b;
  input [2:0] rnd;
  output [16:0] z;
  output [7:0] status;
  wire   n_Logic1_, n_Logic0_, GEN_2_shift_req, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105;
  wire   [9:0] GEN_2_ez;
  wire   [9:1] GEN_2_quo;
  wire   [8:0] GEN_2_ez_norm;
  wire   [7:0] GEN_2_mz_rounded;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9;

  fig8_dw_B8_add_1_root_sub_2151_DP_OP_357_2740_0 add_1_root_sub_2151_DP_OP_357_2740_3 ( 
        .I1(a[15:8]), .I2(b[15:8]), .O6(GEN_2_ez) );
  fig8_dw_B8_DW_div_6 GEN_2_U3 ( .a({n_Logic1_, a[7:0], n_Logic0_, n_Logic0_, 
        n_Logic0_, n_Logic0_, n_Logic0_, n_Logic0_, n_Logic0_, n_Logic0_, 
        n_Logic0_, n_Logic0_}), .b({n_Logic1_, b[7:0]}), .quotient({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, GEN_2_quo, SYNOPSYS_UNCONNECTED__9}) );
  XNR2D1 U3 ( .A1(GEN_2_ez[9]), .A2(n50), .ZN(n49) );
  AN4XD1 U4 ( .A1(n49), .A2(n87), .A3(n85), .A4(n91), .Z(n80) );
  AOI31D1 U7 ( .A1(n70), .A2(n69), .A3(n68), .B(n67), .ZN(GEN_2_shift_req) );
  INVD1 U8 ( .I(b[3]), .ZN(n72) );
  INVD1 U9 ( .I(a[7]), .ZN(n78) );
  CKND0 U10 ( .I(a[0]), .ZN(n73) );
  INVD1 U11 ( .I(a[5]), .ZN(n76) );
  INVD1 U12 ( .I(b[2]), .ZN(n71) );
  INVD1 U13 ( .I(a[1]), .ZN(n74) );
  INVD1 U14 ( .I(a[6]), .ZN(n77) );
  INVD1 U15 ( .I(a[4]), .ZN(n75) );
  TIEH U16 ( .Z(n_Logic1_) );
  TIEL U17 ( .ZN(n_Logic0_) );
  IND2D0 U18 ( .A1(GEN_2_ez[0]), .B1(GEN_2_shift_req), .ZN(n55) );
  OR2D0 U19 ( .A1(n55), .A2(GEN_2_ez[1]), .Z(n54) );
  OR2D0 U20 ( .A1(n54), .A2(GEN_2_ez[2]), .Z(n53) );
  OR2D0 U21 ( .A1(n53), .A2(GEN_2_ez[3]), .Z(n52) );
  OR2D0 U22 ( .A1(n52), .A2(GEN_2_ez[4]), .Z(n51) );
  NR2D0 U23 ( .A1(n51), .A2(GEN_2_ez[5]), .ZN(n58) );
  INR2D0 U24 ( .A1(n58), .B1(GEN_2_ez[6]), .ZN(n57) );
  IND2D0 U25 ( .A1(GEN_2_ez[7]), .B1(n57), .ZN(n56) );
  NR2D0 U26 ( .A1(GEN_2_ez[8]), .A2(n56), .ZN(n50) );
  XNR2D0 U27 ( .A1(n51), .A2(GEN_2_ez[5]), .ZN(GEN_2_ez_norm[5]) );
  XNR2D0 U28 ( .A1(n52), .A2(GEN_2_ez[4]), .ZN(GEN_2_ez_norm[4]) );
  XNR2D0 U29 ( .A1(n53), .A2(GEN_2_ez[3]), .ZN(GEN_2_ez_norm[3]) );
  XNR2D0 U30 ( .A1(n54), .A2(GEN_2_ez[2]), .ZN(GEN_2_ez_norm[2]) );
  XNR2D0 U31 ( .A1(n55), .A2(GEN_2_ez[1]), .ZN(GEN_2_ez_norm[1]) );
  CKXOR2D0 U32 ( .A1(GEN_2_ez[0]), .A2(GEN_2_shift_req), .Z(GEN_2_ez_norm[0])
         );
  XNR2D0 U33 ( .A1(n56), .A2(GEN_2_ez[8]), .ZN(GEN_2_ez_norm[8]) );
  CKXOR2D0 U34 ( .A1(n57), .A2(GEN_2_ez[7]), .Z(GEN_2_ez_norm[7]) );
  CKXOR2D0 U35 ( .A1(n58), .A2(GEN_2_ez[6]), .Z(GEN_2_ez_norm[6]) );
  AN2D0 U36 ( .A1(b[7]), .A2(n78), .Z(n64) );
  AO22D0 U38 ( .A1(n73), .A2(b[0]), .B1(n74), .B2(b[1]), .Z(n59) );
  IND2D0 U39 ( .A1(a[3]), .B1(b[3]), .ZN(n60) );
  AOI32D0 U40 ( .A1(a[2]), .A2(n71), .A3(n60), .B1(n72), .B2(a[3]), .ZN(n62)
         );
  OAI211D0 U41 ( .A1(b[1]), .A2(n74), .B(n59), .C(n62), .ZN(n69) );
  OAI21D0 U42 ( .A1(a[2]), .A2(n71), .B(n60), .ZN(n61) );
  AN2D0 U43 ( .A1(b[5]), .A2(n76), .Z(n63) );
  AOI221D0 U44 ( .A1(n62), .A2(n61), .B1(b[4]), .B2(n75), .C(n63), .ZN(n68) );
  OA32D0 U45 ( .A1(n63), .A2(b[4]), .A3(n75), .B1(n76), .B2(b[5]), .Z(n66) );
  OA32D0 U46 ( .A1(n77), .A2(b[6]), .A3(n64), .B1(b[7]), .B2(n78), .Z(n65) );
  IOA21D0 U48 ( .A1(GEN_2_ez_norm[1]), .A2(n80), .B(n81), .ZN(z[9]) );
  AO21D0 U49 ( .A1(GEN_2_ez_norm[0]), .A2(n80), .B(n82), .Z(z[8]) );
  IOA21D0 U50 ( .A1(GEN_2_mz_rounded[7]), .A2(n80), .B(n83), .ZN(z[7]) );
  IOA21D0 U51 ( .A1(GEN_2_mz_rounded[6]), .A2(n80), .B(n83), .ZN(z[6]) );
  IOA21D0 U52 ( .A1(GEN_2_mz_rounded[5]), .A2(n80), .B(n83), .ZN(z[5]) );
  IOA21D0 U53 ( .A1(GEN_2_mz_rounded[4]), .A2(n80), .B(n83), .ZN(z[4]) );
  IOA21D0 U54 ( .A1(GEN_2_mz_rounded[3]), .A2(n80), .B(n83), .ZN(z[3]) );
  IOA21D0 U55 ( .A1(GEN_2_mz_rounded[2]), .A2(n80), .B(n83), .ZN(z[2]) );
  IOA21D0 U56 ( .A1(GEN_2_mz_rounded[1]), .A2(n80), .B(n83), .ZN(z[1]) );
  OA221D0 U57 ( .A1(n84), .A2(n85), .B1(n86), .B2(n87), .C(n88), .Z(z[16]) );
  CKXOR2D0 U58 ( .A1(b[16]), .A2(a[16]), .Z(n88) );
  IOA21D0 U59 ( .A1(GEN_2_ez_norm[7]), .A2(n80), .B(n81), .ZN(z[15]) );
  IOA21D0 U60 ( .A1(GEN_2_ez_norm[6]), .A2(n80), .B(n81), .ZN(z[14]) );
  IOA21D0 U61 ( .A1(GEN_2_ez_norm[5]), .A2(n80), .B(n81), .ZN(z[13]) );
  IOA21D0 U62 ( .A1(GEN_2_ez_norm[4]), .A2(n80), .B(n81), .ZN(z[12]) );
  IOA21D0 U63 ( .A1(GEN_2_ez_norm[3]), .A2(n80), .B(n81), .ZN(z[11]) );
  IOA21D0 U64 ( .A1(GEN_2_ez_norm[2]), .A2(n80), .B(n81), .ZN(z[10]) );
  IOA21D0 U66 ( .A1(GEN_2_mz_rounded[0]), .A2(n80), .B(n83), .ZN(z[0]) );
  AOI211D0 U68 ( .A1(n92), .A2(n93), .B(n82), .C(n90), .ZN(n91) );
  OA21D0 U69 ( .A1(n94), .A2(GEN_2_ez_norm[8]), .B(n49), .Z(n90) );
  NR2D0 U70 ( .A1(n95), .A2(n96), .ZN(n94) );
  ND4D0 U71 ( .A1(GEN_2_ez_norm[7]), .A2(GEN_2_ez_norm[6]), .A3(
        GEN_2_ez_norm[5]), .A4(GEN_2_ez_norm[4]), .ZN(n96) );
  ND4D0 U72 ( .A1(GEN_2_ez_norm[3]), .A2(GEN_2_ez_norm[2]), .A3(
        GEN_2_ez_norm[1]), .A4(GEN_2_ez_norm[0]), .ZN(n95) );
  CKND2D0 U73 ( .A1(n84), .A2(n86), .ZN(n82) );
  CKND2D0 U74 ( .A1(n97), .A2(n98), .ZN(n86) );
  AN4D0 U75 ( .A1(a[10]), .A2(a[11]), .A3(a[12]), .A4(a[13]), .Z(n98) );
  AN4D0 U76 ( .A1(a[14]), .A2(a[15]), .A3(a[8]), .A4(a[9]), .Z(n97) );
  CKND2D0 U77 ( .A1(n99), .A2(n100), .ZN(n84) );
  NR4D0 U78 ( .A1(b[9]), .A2(b[8]), .A3(b[15]), .A4(b[14]), .ZN(n100) );
  NR4D0 U79 ( .A1(b[13]), .A2(b[12]), .A3(b[11]), .A4(b[10]), .ZN(n99) );
  NR4D0 U80 ( .A1(GEN_2_ez_norm[7]), .A2(GEN_2_ez_norm[6]), .A3(
        GEN_2_ez_norm[5]), .A4(GEN_2_ez_norm[4]), .ZN(n93) );
  NR4D0 U81 ( .A1(GEN_2_ez_norm[3]), .A2(GEN_2_ez_norm[2]), .A3(
        GEN_2_ez_norm[1]), .A4(GEN_2_ez_norm[0]), .ZN(n92) );
  CKND2D0 U82 ( .A1(n101), .A2(n102), .ZN(n85) );
  NR4D0 U83 ( .A1(a[9]), .A2(a[8]), .A3(a[15]), .A4(a[14]), .ZN(n102) );
  NR4D0 U84 ( .A1(a[13]), .A2(a[12]), .A3(a[11]), .A4(a[10]), .ZN(n101) );
  CKND2D0 U85 ( .A1(n103), .A2(n104), .ZN(n87) );
  AN4D0 U86 ( .A1(b[10]), .A2(b[11]), .A3(b[12]), .A4(b[13]), .Z(n104) );
  AN4D0 U87 ( .A1(b[14]), .A2(b[15]), .A3(b[8]), .A4(b[9]), .Z(n103) );
  MUX2D0 U88 ( .I0(GEN_2_quo[9]), .I1(GEN_2_quo[8]), .S(GEN_2_shift_req), .Z(
        GEN_2_mz_rounded[7]) );
  MUX2D0 U89 ( .I0(GEN_2_quo[8]), .I1(GEN_2_quo[7]), .S(GEN_2_shift_req), .Z(
        GEN_2_mz_rounded[6]) );
  MUX2D0 U90 ( .I0(GEN_2_quo[7]), .I1(GEN_2_quo[6]), .S(GEN_2_shift_req), .Z(
        GEN_2_mz_rounded[5]) );
  MUX2D0 U91 ( .I0(GEN_2_quo[6]), .I1(GEN_2_quo[5]), .S(GEN_2_shift_req), .Z(
        GEN_2_mz_rounded[4]) );
  MUX2D0 U92 ( .I0(GEN_2_quo[5]), .I1(GEN_2_quo[4]), .S(GEN_2_shift_req), .Z(
        GEN_2_mz_rounded[3]) );
  MUX2D0 U93 ( .I0(GEN_2_quo[4]), .I1(GEN_2_quo[3]), .S(GEN_2_shift_req), .Z(
        GEN_2_mz_rounded[2]) );
  MUX2D0 U94 ( .I0(GEN_2_quo[3]), .I1(GEN_2_quo[2]), .S(GEN_2_shift_req), .Z(
        GEN_2_mz_rounded[1]) );
  MUX2D0 U95 ( .I0(GEN_2_quo[2]), .I1(GEN_2_quo[1]), .S(GEN_2_shift_req), .Z(
        GEN_2_mz_rounded[0]) );
  INR2D0 U5 ( .A1(n83), .B1(n82), .ZN(n81) );
  IND4D0 U6 ( .A1(n82), .B1(n90), .B2(n87), .B3(n85), .ZN(n83) );
  OAI21D0 U37 ( .A1(n66), .A2(n105), .B(n65), .ZN(n67) );
  CKND0 U47 ( .I(n70), .ZN(n105) );
  AOI21D0 U65 ( .A1(b[6]), .A2(n77), .B(n64), .ZN(n70) );
endmodule


module fig8_dw_B8 ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   n1, n18;

  fig8_dw_B8_DW_fp_div_0 core ( .a(x[31:15]), .b(y[31:15]), .rnd({n1, n1, n18}), .z(result[31:15]) );
  TIEH U3 ( .Z(n18) );
  TIEL U19 ( .ZN(n1) );
endmodule


module fig8_dw_d15 ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   n16, n17, n18, n19, n20, n21;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14;

  fig8_dw_B8 core ( .x({x[31:24], n18, x[22:15], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y({
        y[31], n20, y[29:16], n21, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .result({
        result[31:15], SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14}) );
  TIEH U1 ( .Z(n16) );
  INVD1 U2 ( .I(n16), .ZN(result[0]) );
  INVD1 U3 ( .I(n16), .ZN(result[1]) );
  INVD1 U4 ( .I(n16), .ZN(result[2]) );
  INVD1 U5 ( .I(n16), .ZN(result[3]) );
  INVD1 U6 ( .I(n16), .ZN(result[4]) );
  INVD1 U7 ( .I(n16), .ZN(result[5]) );
  INVD1 U8 ( .I(n16), .ZN(result[6]) );
  INVD1 U9 ( .I(n16), .ZN(result[7]) );
  INVD1 U10 ( .I(n16), .ZN(result[8]) );
  INVD1 U11 ( .I(n16), .ZN(result[9]) );
  INVD1 U12 ( .I(n16), .ZN(result[10]) );
  INVD1 U13 ( .I(n16), .ZN(result[11]) );
  INVD1 U14 ( .I(n16), .ZN(result[12]) );
  INVD1 U15 ( .I(n16), .ZN(result[13]) );
  INVD1 U16 ( .I(n16), .ZN(result[14]) );
  CKND0 U17 ( .I(x[23]), .ZN(n17) );
  CKND0 U18 ( .I(n17), .ZN(n18) );
  CKND0 U19 ( .I(y[30]), .ZN(n19) );
  CKND0 U20 ( .I(n19), .ZN(n20) );
  CKBD1 U21 ( .I(y[15]), .Z(n21) );
endmodule

