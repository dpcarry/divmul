/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Sat Sep  5 13:38:25 2026
/////////////////////////////////////////////////////////////


module fig8_dw_B5_RND0_add_1_root_sub_2151_DP_OP_357_8474_0 ( I1, I2, O6 );
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
  INVD1 U22 ( .I(I2[1]), .ZN(n53) );
  INVD1 U23 ( .I(I2[2]), .ZN(n52) );
  INVD1 U24 ( .I(I2[3]), .ZN(n51) );
  INVD1 U25 ( .I(I2[4]), .ZN(n50) );
  INVD1 U26 ( .I(I2[5]), .ZN(n49) );
  INVD1 U27 ( .I(I2[6]), .ZN(n48) );
  INVD1 U28 ( .I(I2[0]), .ZN(n54) );
  INR2D0 U29 ( .A1(I2[7]), .B1(n2), .ZN(O6[9]) );
  CKXOR2D0 U30 ( .A1(I2[7]), .A2(n2), .Z(O6[8]) );
endmodule


module fig8_dw_B5_RND0_sub_0_root_sub_2151_DP_OP_356_8819_0 ( I1, I2, O5, O4
 );
  input [9:0] I1;
  input [1:0] I2;
  output [9:0] O5;
  output O4;
  wire   n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74;

  INR4D0 U49 ( .A1(n63), .B1(n64), .B2(O5[5]), .B3(O5[9]), .ZN(O4) );
  OR3D0 U50 ( .A1(O5[3]), .A2(O5[2]), .A3(O5[4]), .Z(n64) );
  INR4D0 U51 ( .A1(n65), .B1(O5[7]), .B2(O5[6]), .B3(O5[8]), .ZN(n63) );
  CKXOR2D0 U52 ( .A1(n66), .A2(I1[6]), .Z(O5[6]) );
  CKXOR2D0 U53 ( .A1(I1[7]), .A2(n67), .Z(O5[7]) );
  NR2D0 U54 ( .A1(O5[0]), .A2(O5[1]), .ZN(n65) );
  CKXOR2D0 U55 ( .A1(n68), .A2(I1[8]), .Z(O5[8]) );
  CKXOR2D0 U56 ( .A1(I1[0]), .A2(I2[0]), .Z(O5[0]) );
  XNR2D0 U57 ( .A1(I1[1]), .A2(n69), .ZN(O5[1]) );
  CKXOR2D0 U58 ( .A1(n70), .A2(I1[2]), .Z(O5[2]) );
  XNR2D0 U59 ( .A1(I1[3]), .A2(n71), .ZN(O5[3]) );
  CKXOR2D0 U60 ( .A1(n72), .A2(I1[4]), .Z(O5[4]) );
  XNR2D0 U61 ( .A1(I1[5]), .A2(n73), .ZN(O5[5]) );
  XNR2D0 U62 ( .A1(I1[9]), .A2(n74), .ZN(O5[9]) );
  IND2D0 U63 ( .A1(I1[8]), .B1(n68), .ZN(n74) );
  INR2D0 U64 ( .A1(n67), .B1(I1[7]), .ZN(n68) );
  INR2D0 U65 ( .A1(n66), .B1(I1[6]), .ZN(n67) );
  NR2D0 U66 ( .A1(n73), .A2(I1[5]), .ZN(n66) );
  IND2D0 U67 ( .A1(I1[4]), .B1(n72), .ZN(n73) );
  NR2D0 U68 ( .A1(n71), .A2(I1[3]), .ZN(n72) );
  IND2D0 U69 ( .A1(I1[2]), .B1(n70), .ZN(n71) );
  NR2D0 U70 ( .A1(n69), .A2(I1[1]), .ZN(n70) );
  IND2D0 U71 ( .A1(I1[0]), .B1(I2[0]), .ZN(n69) );
endmodule


module fig8_dw_B5_RND0_DW_div_6 ( a, b, quotient, remainder, divide_by_0 );
  input [12:0] a;
  input [5:0] b;
  output [12:0] quotient;
  output [5:0] remainder;
  output divide_by_0;
  wire   PartRem_7__5_, PartRem_7__2_, PartRem_6__5_, PartRem_6__2_,
         PartRem_6__1_, PartRem_5__5_, PartRem_5__3_, PartRem_5__1_,
         PartRem_4__5_, PartRem_4__1_, PartRem_3__5_, PartRem_3__1_,
         PartRem_2__5_, PartRem_2__1_, PartRem_1__5_, PartRem_1__4_,
         PartRem_1__3_, PartRem_1__2_, PartRem_1__1_, CryTmp_7__4_,
         CryTmp_7__3_, CryTmp_7__2_, CryTmp_7__1_, CryTmp_6__5_, CryTmp_6__4_,
         CryTmp_6__3_, CryTmp_6__2_, CryTmp_6__1_, CryTmp_5__5_, CryTmp_5__4_,
         CryTmp_5__3_, CryTmp_5__2_, CryTmp_4__5_, CryTmp_4__4_, CryTmp_4__3_,
         CryTmp_4__2_, CryTmp_3__5_, CryTmp_3__4_, CryTmp_3__3_, CryTmp_3__2_,
         CryTmp_2__5_, CryTmp_2__4_, CryTmp_2__3_, CryTmp_2__2_, CryTmp_1__5_,
         CryTmp_1__4_, CryTmp_1__3_, CryTmp_1__2_, CryTmp_0__5_, CryTmp_0__4_,
         CryTmp_0__3_, CryTmp_0__2_, SumTmp_7__4_, SumTmp_7__3_, SumTmp_7__2_,
         SumTmp_7__1_, SumTmp_7__0_, SumTmp_6__4_, SumTmp_6__3_, SumTmp_6__2_,
         SumTmp_6__1_, SumTmp_5__4_, SumTmp_5__3_, SumTmp_5__2_, SumTmp_5__1_,
         SumTmp_4__4_, SumTmp_4__3_, SumTmp_4__2_, SumTmp_4__1_, SumTmp_3__4_,
         SumTmp_3__3_, SumTmp_3__2_, SumTmp_3__1_, SumTmp_2__4_, SumTmp_2__3_,
         SumTmp_2__2_, SumTmp_2__1_, SumTmp_1__4_, SumTmp_1__3_, SumTmp_1__2_,
         SumTmp_1__1_, SumTmp_0__4_, SumTmp_0__3_, SumTmp_0__2_, SumTmp_0__1_,
         n2, n4, n5, n6, n7, n8, n9, n10, n11, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78;
  wire   [4:1] BInv;

  FA1D0 u_fa_PartRem_0_7_1 ( .A(a[8]), .B(BInv[1]), .CI(CryTmp_7__1_), .CO(
        CryTmp_7__2_), .S(SumTmp_7__1_) );
  FA1D0 u_fa_PartRem_0_3_1 ( .A(PartRem_4__1_), .B(BInv[1]), .CI(CryTmp_6__1_), 
        .CO(CryTmp_3__2_), .S(SumTmp_3__1_) );
  FA1D0 u_fa_PartRem_0_0_3 ( .A(PartRem_1__3_), .B(BInv[3]), .CI(CryTmp_0__3_), 
        .CO(CryTmp_0__4_), .S(SumTmp_0__3_) );
  FA1D0 u_fa_PartRem_0_0_2 ( .A(PartRem_1__2_), .B(BInv[2]), .CI(CryTmp_0__2_), 
        .CO(CryTmp_0__3_), .S(SumTmp_0__2_) );
  FA1D0 u_fa_PartRem_0_6_3 ( .A(n37), .B(BInv[3]), .CI(CryTmp_6__3_), .CO(
        CryTmp_6__4_), .S(SumTmp_6__3_) );
  FA1D0 u_fa_PartRem_0_0_1 ( .A(PartRem_1__1_), .B(BInv[1]), .CI(CryTmp_6__1_), 
        .CO(CryTmp_0__2_), .S(SumTmp_0__1_) );
  FA1D0 u_fa_PartRem_0_7_3 ( .A(a[10]), .B(BInv[3]), .CI(CryTmp_7__3_), .CO(
        CryTmp_7__4_), .S(SumTmp_7__3_) );
  FA1D0 u_fa_PartRem_0_1_3 ( .A(n4), .B(BInv[3]), .CI(CryTmp_1__3_), .CO(
        CryTmp_1__4_), .S(SumTmp_1__3_) );
  FA1D0 u_fa_PartRem_0_1_2 ( .A(n24), .B(BInv[2]), .CI(CryTmp_1__2_), .CO(
        CryTmp_1__3_), .S(SumTmp_1__2_) );
  FA1D0 u_fa_PartRem_0_2_3 ( .A(n6), .B(BInv[3]), .CI(CryTmp_2__3_), .CO(
        CryTmp_2__4_), .S(SumTmp_2__3_) );
  FA1D0 u_fa_PartRem_0_1_1 ( .A(PartRem_2__1_), .B(BInv[1]), .CI(CryTmp_6__1_), 
        .CO(CryTmp_1__2_), .S(SumTmp_1__1_) );
  FA1D0 u_fa_PartRem_0_7_2 ( .A(a[9]), .B(BInv[2]), .CI(CryTmp_7__2_), .CO(
        CryTmp_7__3_), .S(SumTmp_7__2_) );
  FA1D0 u_fa_PartRem_0_3_3 ( .A(n5), .B(BInv[3]), .CI(CryTmp_3__3_), .CO(
        CryTmp_3__4_), .S(SumTmp_3__3_) );
  FA1D0 u_fa_PartRem_0_5_3 ( .A(n29), .B(BInv[3]), .CI(CryTmp_5__3_), .CO(
        CryTmp_5__4_), .S(SumTmp_5__3_) );
  FA1D0 u_fa_PartRem_0_2_2 ( .A(n27), .B(BInv[2]), .CI(CryTmp_2__2_), .CO(
        CryTmp_2__3_), .S(SumTmp_2__2_) );
  FA1D0 u_fa_PartRem_0_3_2 ( .A(n26), .B(BInv[2]), .CI(CryTmp_3__2_), .CO(
        CryTmp_3__3_), .S(SumTmp_3__2_) );
  FA1D0 u_fa_PartRem_0_2_1 ( .A(PartRem_3__1_), .B(BInv[1]), .CI(CryTmp_6__1_), 
        .CO(CryTmp_2__2_), .S(SumTmp_2__1_) );
  FA1D0 u_fa_PartRem_0_4_3 ( .A(PartRem_5__3_), .B(BInv[3]), .CI(CryTmp_4__3_), 
        .CO(CryTmp_4__4_), .S(SumTmp_4__3_) );
  FA1D0 u_fa_PartRem_0_4_2 ( .A(n25), .B(BInv[2]), .CI(CryTmp_4__2_), .CO(
        CryTmp_4__3_), .S(SumTmp_4__2_) );
  FA1D0 u_fa_PartRem_0_6_2 ( .A(PartRem_7__2_), .B(BInv[2]), .CI(CryTmp_6__2_), 
        .CO(CryTmp_6__3_), .S(SumTmp_6__2_) );
  FA1D0 u_fa_PartRem_0_4_1 ( .A(PartRem_5__1_), .B(BInv[1]), .CI(CryTmp_6__1_), 
        .CO(CryTmp_4__2_), .S(SumTmp_4__1_) );
  FA1D0 u_fa_PartRem_0_5_2 ( .A(PartRem_6__2_), .B(BInv[2]), .CI(CryTmp_5__2_), 
        .CO(CryTmp_5__3_), .S(SumTmp_5__2_) );
  FA1D0 u_fa_PartRem_0_5_1 ( .A(PartRem_6__1_), .B(BInv[1]), .CI(CryTmp_6__1_), 
        .CO(CryTmp_5__2_), .S(SumTmp_5__1_) );
  FA1D0 u_fa_PartRem_0_6_1 ( .A(n2), .B(BInv[1]), .CI(CryTmp_6__1_), .CO(
        CryTmp_6__2_), .S(SumTmp_6__1_) );
  FA1D0 u_fa_PartRem_0_4_4 ( .A(n10), .B(BInv[4]), .CI(CryTmp_4__4_), .CO(
        CryTmp_4__5_), .S(SumTmp_4__4_) );
  FA1D0 u_fa_PartRem_0_5_4 ( .A(n7), .B(BInv[4]), .CI(CryTmp_5__4_), .CO(
        CryTmp_5__5_), .S(SumTmp_5__4_) );
  FA1D0 u_fa_PartRem_0_0_4 ( .A(PartRem_1__4_), .B(BInv[4]), .CI(CryTmp_0__4_), 
        .CO(CryTmp_0__5_), .S(SumTmp_0__4_) );
  FA1D0 u_fa_PartRem_0_6_4 ( .A(n11), .B(BInv[4]), .CI(CryTmp_6__4_), .CO(
        CryTmp_6__5_), .S(SumTmp_6__4_) );
  FA1D0 u_fa_PartRem_0_2_4 ( .A(n9), .B(BInv[4]), .CI(CryTmp_2__4_), .CO(
        CryTmp_2__5_), .S(SumTmp_2__4_) );
  FA1D0 u_fa_PartRem_0_1_4 ( .A(n8), .B(BInv[4]), .CI(CryTmp_1__4_), .CO(
        CryTmp_1__5_), .S(SumTmp_1__4_) );
  FA1D0 u_fa_PartRem_0_3_4 ( .A(n30), .B(BInv[4]), .CI(CryTmp_3__4_), .CO(
        CryTmp_3__5_), .S(SumTmp_3__4_) );
  FA1D0 u_fa_PartRem_0_7_4 ( .A(a[11]), .B(BInv[4]), .CI(CryTmp_7__4_), .CO(
        quotient[7]), .S(SumTmp_7__4_) );
  INVD1 U2 ( .I(SumTmp_4__1_), .ZN(n69) );
  INVD1 U3 ( .I(SumTmp_5__1_), .ZN(n68) );
  INVD1 U4 ( .I(SumTmp_3__1_), .ZN(n70) );
  INVD1 U5 ( .I(SumTmp_6__2_), .ZN(n61) );
  INVD1 U7 ( .I(SumTmp_2__1_), .ZN(n71) );
  INVD1 U8 ( .I(SumTmp_4__3_), .ZN(n64) );
  MUX2D0 U10 ( .I0(a[7]), .I1(SumTmp_7__0_), .S(quotient[7]), .Z(n2) );
  MUX2D0 U12 ( .I0(n27), .I1(SumTmp_2__2_), .S(quotient[2]), .Z(n4) );
  MUX2D0 U13 ( .I0(n25), .I1(SumTmp_4__2_), .S(quotient[4]), .Z(n5) );
  MUX2D0 U14 ( .I0(n26), .I1(SumTmp_3__2_), .S(quotient[3]), .Z(n6) );
  MUX2D0 U15 ( .I0(n37), .I1(SumTmp_6__3_), .S(quotient[6]), .Z(n7) );
  MUX2D0 U16 ( .I0(n6), .I1(SumTmp_2__3_), .S(quotient[2]), .Z(n8) );
  MUX2D0 U17 ( .I0(n5), .I1(SumTmp_3__3_), .S(quotient[3]), .Z(n9) );
  MUX2D0 U18 ( .I0(n29), .I1(SumTmp_5__3_), .S(quotient[5]), .Z(n10) );
  MUX2D0 U19 ( .I0(a[10]), .I1(SumTmp_7__3_), .S(quotient[7]), .Z(n11) );
  INVD1 U33 ( .I(SumTmp_0__2_), .ZN(n46) );
  INVD1 U40 ( .I(SumTmp_0__3_), .ZN(n44) );
  INVD1 U42 ( .I(SumTmp_1__1_), .ZN(n72) );
  MUX2ND0 U43 ( .I0(n63), .I1(n71), .S(quotient[2]), .ZN(n24) );
  MUX2ND0 U44 ( .I0(n53), .I1(n68), .S(quotient[5]), .ZN(n25) );
  MUX2ND0 U45 ( .I0(n56), .I1(n69), .S(quotient[4]), .ZN(n26) );
  MUX2ND0 U46 ( .I0(n60), .I1(n70), .S(quotient[3]), .ZN(n27) );
  INVD1 U47 ( .I(SumTmp_0__4_), .ZN(n42) );
  XNR2D1 U48 ( .A1(CryTmp_0__5_), .A2(PartRem_1__5_), .ZN(n28) );
  INVD1 U49 ( .I(SumTmp_0__1_), .ZN(n48) );
  INVD1 U51 ( .I(SumTmp_5__2_), .ZN(n65) );
  MUX2ND0 U52 ( .I0(n50), .I1(n61), .S(quotient[6]), .ZN(n29) );
  MUX2ND0 U53 ( .I0(n55), .I1(n64), .S(quotient[4]), .ZN(n30) );
  XNR2D1 U54 ( .A1(CryTmp_1__5_), .A2(PartRem_2__5_), .ZN(n31) );
  XNR2D1 U55 ( .A1(CryTmp_2__5_), .A2(PartRem_3__5_), .ZN(n32) );
  XNR2D1 U56 ( .A1(CryTmp_6__5_), .A2(PartRem_7__5_), .ZN(n33) );
  XNR2D1 U57 ( .A1(CryTmp_5__5_), .A2(PartRem_6__5_), .ZN(n34) );
  XNR2D1 U58 ( .A1(CryTmp_3__5_), .A2(PartRem_4__5_), .ZN(n35) );
  XNR2D1 U59 ( .A1(CryTmp_4__5_), .A2(PartRem_5__5_), .ZN(n36) );
  ND2D1 U60 ( .A1(quotient[4]), .A2(n38), .ZN(n60) );
  ND2D1 U61 ( .A1(quotient[3]), .A2(n38), .ZN(n63) );
  ND2D1 U62 ( .A1(quotient[5]), .A2(b[0]), .ZN(n56) );
  ND2D1 U63 ( .A1(quotient[2]), .A2(n38), .ZN(n67) );
  ND2D1 U64 ( .A1(quotient[6]), .A2(b[0]), .ZN(n53) );
  ND2D1 U65 ( .A1(quotient[1]), .A2(n38), .ZN(n47) );
  AN2XD1 U66 ( .A1(n38), .A2(quotient[0]), .Z(remainder[0]) );
  INVD1 U68 ( .I(b[0]), .ZN(CryTmp_6__1_) );
  INVD1 U71 ( .I(CryTmp_6__1_), .ZN(n38) );
  INVD1 U72 ( .I(b[1]), .ZN(BInv[1]) );
  INVD1 U74 ( .I(b[2]), .ZN(BInv[2]) );
  INVD1 U75 ( .I(b[3]), .ZN(BInv[3]) );
  INVD1 U76 ( .I(b[4]), .ZN(BInv[4]) );
  XNR2D1 U77 ( .A1(CryTmp_6__1_), .A2(a[7]), .ZN(SumTmp_7__0_) );
  MUX2ND0 U78 ( .I0(n40), .I1(n28), .S(quotient[0]), .ZN(remainder[5]) );
  MUX2ND0 U79 ( .I0(n41), .I1(n42), .S(quotient[0]), .ZN(remainder[4]) );
  MUX2ND0 U80 ( .I0(n43), .I1(n44), .S(quotient[0]), .ZN(remainder[3]) );
  MUX2ND0 U81 ( .I0(n45), .I1(n46), .S(quotient[0]), .ZN(remainder[2]) );
  MUX2ND0 U82 ( .I0(n47), .I1(n48), .S(quotient[0]), .ZN(remainder[1]) );
  CKND1 U83 ( .I(n49), .ZN(PartRem_7__5_) );
  CKND1 U84 ( .I(n50), .ZN(PartRem_7__2_) );
  MUX2ND0 U85 ( .I0(a[11]), .I1(SumTmp_7__4_), .S(quotient[7]), .ZN(n49) );
  CKND1 U86 ( .I(n51), .ZN(PartRem_6__5_) );
  CKND1 U87 ( .I(n52), .ZN(PartRem_6__2_) );
  CKND1 U88 ( .I(n53), .ZN(PartRem_6__1_) );
  MUX2ND0 U89 ( .I0(n11), .I1(SumTmp_6__4_), .S(quotient[6]), .ZN(n51) );
  CKND1 U90 ( .I(n54), .ZN(PartRem_5__5_) );
  CKND1 U92 ( .I(n56), .ZN(PartRem_5__1_) );
  MUX2ND0 U93 ( .I0(n7), .I1(SumTmp_5__4_), .S(quotient[5]), .ZN(n54) );
  CKND1 U94 ( .I(n59), .ZN(PartRem_4__5_) );
  CKND1 U95 ( .I(n60), .ZN(PartRem_4__1_) );
  MUX2ND0 U96 ( .I0(n10), .I1(SumTmp_4__4_), .S(quotient[4]), .ZN(n59) );
  MUX2ND0 U97 ( .I0(a[8]), .I1(SumTmp_7__1_), .S(quotient[7]), .ZN(n50) );
  CKND1 U98 ( .I(n62), .ZN(PartRem_3__5_) );
  CKND1 U99 ( .I(n63), .ZN(PartRem_3__1_) );
  MUX2ND0 U100 ( .I0(n30), .I1(SumTmp_3__4_), .S(quotient[3]), .ZN(n62) );
  MUX2ND0 U101 ( .I0(n2), .I1(SumTmp_6__1_), .S(quotient[6]), .ZN(n52) );
  CKND1 U102 ( .I(n66), .ZN(PartRem_2__5_) );
  CKND1 U103 ( .I(n67), .ZN(PartRem_2__1_) );
  MUX2ND0 U104 ( .I0(n9), .I1(SumTmp_2__4_), .S(quotient[2]), .ZN(n66) );
  CKND1 U105 ( .I(n40), .ZN(PartRem_1__5_) );
  MUX2ND0 U106 ( .I0(n8), .I1(SumTmp_1__4_), .S(quotient[1]), .ZN(n40) );
  CKND1 U107 ( .I(n41), .ZN(PartRem_1__4_) );
  MUX2ND0 U108 ( .I0(n4), .I1(SumTmp_1__3_), .S(quotient[1]), .ZN(n41) );
  CKND1 U109 ( .I(n43), .ZN(PartRem_1__3_) );
  MUX2ND0 U110 ( .I0(n24), .I1(SumTmp_1__2_), .S(quotient[1]), .ZN(n43) );
  CKND1 U112 ( .I(n47), .ZN(PartRem_1__1_) );
  AO21D0 U6 ( .A1(CryTmp_0__5_), .A2(PartRem_1__5_), .B(n73), .Z(quotient[0])
         );
  MUX2ND0 U9 ( .I0(n66), .I1(n31), .S(quotient[1]), .ZN(n73) );
  CKND0 U11 ( .I(PartRem_1__2_), .ZN(n45) );
  MUX2ND0 U20 ( .I0(n67), .I1(n72), .S(quotient[1]), .ZN(PartRem_1__2_) );
  AO21D0 U21 ( .A1(CryTmp_1__5_), .A2(PartRem_2__5_), .B(n74), .Z(quotient[1])
         );
  MUX2ND0 U22 ( .I0(n62), .I1(n32), .S(quotient[2]), .ZN(n74) );
  AO21D0 U23 ( .A1(CryTmp_2__5_), .A2(PartRem_3__5_), .B(n75), .Z(quotient[2])
         );
  MUX2ND0 U24 ( .I0(n59), .I1(n35), .S(quotient[3]), .ZN(n75) );
  AO21D0 U25 ( .A1(CryTmp_3__5_), .A2(PartRem_4__5_), .B(n76), .Z(quotient[3])
         );
  MUX2ND0 U26 ( .I0(n54), .I1(n36), .S(quotient[4]), .ZN(n76) );
  AO21D0 U27 ( .A1(CryTmp_4__5_), .A2(PartRem_5__5_), .B(n77), .Z(quotient[4])
         );
  MUX2ND0 U28 ( .I0(n51), .I1(n34), .S(quotient[5]), .ZN(n77) );
  CKND0 U29 ( .I(PartRem_5__3_), .ZN(n55) );
  MUX2ND0 U30 ( .I0(n52), .I1(n65), .S(quotient[5]), .ZN(PartRem_5__3_) );
  AO21D0 U31 ( .A1(CryTmp_5__5_), .A2(PartRem_6__5_), .B(n78), .Z(quotient[5])
         );
  MUX2ND0 U32 ( .I0(n49), .I1(n33), .S(quotient[6]), .ZN(n78) );
  IOA21D0 U34 ( .A1(CryTmp_6__5_), .A2(PartRem_7__5_), .B(quotient[7]), .ZN(
        quotient[6]) );
  MUX2D0 U35 ( .I0(a[9]), .I1(SumTmp_7__2_), .S(quotient[7]), .Z(n37) );
  OR2D1 U36 ( .A1(CryTmp_6__1_), .A2(a[7]), .Z(CryTmp_7__1_) );
endmodule


module fig8_dw_B5_RND0_DW_fp_div_0 ( a, b, rnd, z, status );
  input [13:0] a;
  input [13:0] b;
  input [2:0] rnd;
  output [13:0] z;
  output [7:0] status;
  wire   n_Logic1_, n_Logic0_, GEN_2_shift_req, GEN_2_RND_eval_0_,
         GEN_2_mz_rounded_2_, N30, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115;
  wire   [9:0] GEN_2_ez;
  wire   [7:0] GEN_2_quo;
  wire   [5:0] GEN_2_div_rem;
  wire   [9:0] GEN_2_ez_norm;
  wire   [3:0] GEN_2_mz;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4;

  fig8_dw_B5_RND0_add_1_root_sub_2151_DP_OP_357_8474_0 add_1_root_sub_2151_DP_OP_357_8474_3 ( 
        .I1(a[12:5]), .I2(b[12:5]), .O6(GEN_2_ez) );
  fig8_dw_B5_RND0_sub_0_root_sub_2151_DP_OP_356_8819_0 sub_0_root_sub_2151_DP_OP_356_8819_4 ( 
        .I1(GEN_2_ez), .I2({n_Logic0_, GEN_2_shift_req}), .O5(GEN_2_ez_norm), 
        .O4(N30) );
  fig8_dw_B5_RND0_DW_div_6 GEN_2_U3 ( .a({n_Logic1_, a[4:0], n_Logic0_, 
        n_Logic0_, n_Logic0_, n_Logic0_, n_Logic0_, n_Logic0_, n_Logic0_}), 
        .b({n_Logic1_, b[4:0]}), .quotient({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, GEN_2_quo}), 
        .remainder(GEN_2_div_rem) );
  ND2D1 U3 ( .A1(n51), .A2(GEN_2_mz[3]), .ZN(n52) );
  AN2XD1 U4 ( .A1(n50), .A2(GEN_2_mz[1]), .Z(n49) );
  AN2XD1 U5 ( .A1(GEN_2_RND_eval_0_), .A2(GEN_2_mz[0]), .Z(n50) );
  AN2XD1 U7 ( .A1(n49), .A2(GEN_2_mz[2]), .Z(n51) );
  INVD1 U8 ( .I(a[4]), .ZN(n62) );
  INVD1 U9 ( .I(b[3]), .ZN(n60) );
  INVD1 U10 ( .I(b[2]), .ZN(n59) );
  INVD1 U11 ( .I(a[1]), .ZN(n61) );
  TIEH U12 ( .Z(n_Logic1_) );
  TIEL U13 ( .ZN(n_Logic0_) );
  CKXOR2D1 U16 ( .A1(n49), .A2(GEN_2_mz[2]), .Z(GEN_2_mz_rounded_2_) );
  IOA21D1 U18 ( .A1(n62), .A2(b[4]), .B(n58), .ZN(GEN_2_shift_req) );
  AN2D0 U19 ( .A1(a[3]), .A2(n60), .Z(n54) );
  OAI32D0 U20 ( .A1(n59), .A2(a[2]), .A3(n54), .B1(a[3]), .B2(n60), .ZN(n57)
         );
  IAO21D0 U21 ( .A1(n61), .A2(b[1]), .B(a[0]), .ZN(n53) );
  AO22D0 U22 ( .A1(n53), .A2(b[0]), .B1(b[1]), .B2(n61), .Z(n56) );
  AOI21D0 U23 ( .A1(a[2]), .A2(n59), .B(n54), .ZN(n55) );
  OAI222D0 U24 ( .A1(n57), .A2(n56), .B1(b[4]), .B2(n62), .C1(n55), .C2(n57), 
        .ZN(n58) );
  OAI21D0 U25 ( .A1(n63), .A2(n64), .B(n65), .ZN(z[9]) );
  OAI21D0 U26 ( .A1(n66), .A2(n64), .B(n65), .ZN(z[8]) );
  OAI21D0 U27 ( .A1(n67), .A2(n64), .B(n65), .ZN(z[7]) );
  OAI21D0 U28 ( .A1(n68), .A2(n64), .B(n65), .ZN(z[6]) );
  OAI221D0 U29 ( .A1(n69), .A2(n70), .B1(n71), .B2(n64), .C(n65), .ZN(z[5]) );
  CKND0 U30 ( .I(n72), .ZN(n69) );
  AN2D0 U33 ( .A1(GEN_2_mz_rounded_2_), .A2(n73), .Z(z[2]) );
  AOI221D0 U35 ( .A1(n74), .A2(n75), .B1(n76), .B2(n77), .C(n78), .ZN(z[13])
         );
  XNR2D0 U36 ( .A1(b[13]), .A2(a[13]), .ZN(n78) );
  OAI21D0 U37 ( .A1(n79), .A2(n64), .B(n65), .ZN(z[12]) );
  OAI21D0 U38 ( .A1(n80), .A2(n64), .B(n65), .ZN(z[11]) );
  OAI21D0 U39 ( .A1(n81), .A2(n64), .B(n65), .ZN(z[10]) );
  AOI211D0 U40 ( .A1(n72), .A2(n82), .B(n77), .C(n75), .ZN(n65) );
  CKND0 U41 ( .I(n83), .ZN(n77) );
  ND3D0 U42 ( .A1(n72), .A2(n70), .A3(n84), .ZN(n64) );
  ND4D0 U43 ( .A1(N30), .A2(GEN_2_quo[6]), .A3(n85), .A4(n86), .ZN(n70) );
  INR4D0 U44 ( .A1(GEN_2_quo[3]), .B1(n87), .B2(n88), .B3(n89), .ZN(n86) );
  AOI21D0 U45 ( .A1(GEN_2_quo[7]), .A2(GEN_2_quo[4]), .B(GEN_2_shift_req), 
        .ZN(n89) );
  NR2D0 U46 ( .A1(n90), .A2(n91), .ZN(n85) );
  CKND2D0 U49 ( .A1(n93), .A2(n94), .ZN(n83) );
  AN4D0 U50 ( .A1(a[10]), .A2(a[11]), .A3(a[12]), .A4(a[5]), .Z(n94) );
  AN4D0 U51 ( .A1(a[6]), .A2(a[7]), .A3(a[8]), .A4(a[9]), .Z(n93) );
  NR2D0 U52 ( .A1(n82), .A2(n75), .ZN(n92) );
  AN2D0 U53 ( .A1(n95), .A2(n96), .Z(n75) );
  NR4D0 U54 ( .A1(b[9]), .A2(b[8]), .A3(b[7]), .A4(b[6]), .ZN(n96) );
  NR4D0 U55 ( .A1(b[5]), .A2(b[12]), .A3(b[11]), .A4(b[10]), .ZN(n95) );
  IAO21D0 U56 ( .A1(n97), .A2(GEN_2_ez_norm[8]), .B(GEN_2_ez_norm[9]), .ZN(n82) );
  NR2D0 U57 ( .A1(n98), .A2(n99), .ZN(n97) );
  ND4D0 U58 ( .A1(GEN_2_ez_norm[7]), .A2(GEN_2_ez_norm[6]), .A3(
        GEN_2_ez_norm[5]), .A4(GEN_2_ez_norm[4]), .ZN(n99) );
  ND4D0 U59 ( .A1(GEN_2_ez_norm[3]), .A2(GEN_2_ez_norm[2]), .A3(
        GEN_2_ez_norm[1]), .A4(GEN_2_ez_norm[0]), .ZN(n98) );
  NR2D0 U60 ( .A1(n76), .A2(n74), .ZN(n72) );
  AN2D0 U61 ( .A1(n100), .A2(n101), .Z(n74) );
  NR4D0 U62 ( .A1(a[9]), .A2(a[8]), .A3(a[7]), .A4(a[6]), .ZN(n101) );
  NR4D0 U63 ( .A1(a[5]), .A2(a[12]), .A3(a[11]), .A4(a[10]), .ZN(n100) );
  IAO21D0 U67 ( .A1(n104), .A2(n105), .B(GEN_2_ez_norm[9]), .ZN(n84) );
  ND4D0 U68 ( .A1(n71), .A2(n68), .A3(n67), .A4(n66), .ZN(n105) );
  CKND0 U69 ( .I(GEN_2_ez_norm[3]), .ZN(n66) );
  CKND0 U70 ( .I(GEN_2_ez_norm[2]), .ZN(n67) );
  CKND0 U71 ( .I(GEN_2_ez_norm[1]), .ZN(n68) );
  CKND0 U72 ( .I(GEN_2_ez_norm[0]), .ZN(n71) );
  ND4D0 U73 ( .A1(n63), .A2(n81), .A3(n80), .A4(n79), .ZN(n104) );
  CKND0 U74 ( .I(GEN_2_ez_norm[7]), .ZN(n79) );
  CKND0 U75 ( .I(GEN_2_ez_norm[6]), .ZN(n80) );
  CKND0 U76 ( .I(GEN_2_ez_norm[5]), .ZN(n81) );
  CKND0 U77 ( .I(GEN_2_ez_norm[4]), .ZN(n63) );
  MUX2ND0 U78 ( .I0(GEN_2_quo[6]), .I1(GEN_2_quo[5]), .S(GEN_2_shift_req), 
        .ZN(n90) );
  CKND0 U79 ( .I(n91), .ZN(GEN_2_mz[3]) );
  MUX2ND0 U80 ( .I0(GEN_2_quo[5]), .I1(GEN_2_quo[4]), .S(GEN_2_shift_req), 
        .ZN(n91) );
  MUX2D0 U81 ( .I0(GEN_2_quo[4]), .I1(GEN_2_quo[3]), .S(GEN_2_shift_req), .Z(
        GEN_2_mz[2]) );
  CKND0 U82 ( .I(n87), .ZN(GEN_2_mz[1]) );
  MUX2ND0 U83 ( .I0(GEN_2_quo[3]), .I1(GEN_2_quo[2]), .S(GEN_2_shift_req), 
        .ZN(n87) );
  AOI21D0 U84 ( .A1(n106), .A2(n107), .B(n108), .ZN(GEN_2_RND_eval_0_) );
  MUX2ND0 U85 ( .I0(GEN_2_quo[1]), .I1(GEN_2_quo[0]), .S(GEN_2_shift_req), 
        .ZN(n108) );
  NR4D0 U86 ( .A1(GEN_2_div_rem[5]), .A2(GEN_2_div_rem[4]), .A3(
        GEN_2_div_rem[3]), .A4(GEN_2_div_rem[2]), .ZN(n107) );
  NR4D0 U87 ( .A1(GEN_2_div_rem[1]), .A2(GEN_2_div_rem[0]), .A3(n109), .A4(
        GEN_2_mz[0]), .ZN(n106) );
  CKND0 U88 ( .I(n88), .ZN(GEN_2_mz[0]) );
  MUX2ND0 U89 ( .I0(GEN_2_quo[2]), .I1(GEN_2_quo[1]), .S(GEN_2_shift_req), 
        .ZN(n88) );
  INR2D0 U90 ( .A1(GEN_2_quo[0]), .B1(GEN_2_shift_req), .ZN(n109) );
  AOI21D0 U6 ( .A1(n90), .A2(n52), .B(n110), .ZN(z[4]) );
  OAI21D0 U14 ( .A1(n90), .A2(n52), .B(n73), .ZN(n110) );
  AN4D0 U15 ( .A1(n84), .A2(n72), .A3(n92), .A4(n83), .Z(n73) );
  AOI21D0 U17 ( .A1(n50), .A2(GEN_2_mz[1]), .B(n111), .ZN(z[1]) );
  OAI21D0 U31 ( .A1(n50), .A2(GEN_2_mz[1]), .B(n73), .ZN(n111) );
  AOI21D0 U32 ( .A1(n51), .A2(GEN_2_mz[3]), .B(n112), .ZN(z[3]) );
  OAI21D0 U34 ( .A1(n51), .A2(GEN_2_mz[3]), .B(n73), .ZN(n112) );
  AOI21D0 U47 ( .A1(GEN_2_RND_eval_0_), .A2(GEN_2_mz[0]), .B(n113), .ZN(z[0])
         );
  OAI21D0 U48 ( .A1(GEN_2_RND_eval_0_), .A2(GEN_2_mz[0]), .B(n73), .ZN(n113)
         );
  NR2D0 U64 ( .A1(n115), .A2(n114), .ZN(n76) );
  ND4D0 U65 ( .A1(b[6]), .A2(b[11]), .A3(b[12]), .A4(b[10]), .ZN(n114) );
  ND4D0 U66 ( .A1(b[9]), .A2(b[5]), .A3(b[8]), .A4(b[7]), .ZN(n115) );
endmodule


module fig8_dw_B5_RND0 ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   n1;

  fig8_dw_B5_RND0_DW_fp_div_0 core ( .a(x[31:18]), .b(y[31:18]), .rnd({n1, n1, 
        n1}), .z(result[31:18]) );
  TIEL U21 ( .ZN(n1) );
endmodule


module fig8_dw_d18_rne ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   n19, n20, n21, n22, n23;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17;

  fig8_dw_B5_RND0 core ( .x({x[31:24], n21, x[22:18], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .y({y[31], n23, y[29:18], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .result({result[31:18], SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15, SYNOPSYS_UNCONNECTED__16, 
        SYNOPSYS_UNCONNECTED__17}) );
  TIEH U1 ( .Z(n19) );
  INVD1 U2 ( .I(n19), .ZN(result[0]) );
  INVD1 U3 ( .I(n19), .ZN(result[1]) );
  INVD1 U4 ( .I(n19), .ZN(result[2]) );
  INVD1 U5 ( .I(n19), .ZN(result[3]) );
  INVD1 U6 ( .I(n19), .ZN(result[4]) );
  INVD1 U7 ( .I(n19), .ZN(result[5]) );
  INVD1 U8 ( .I(n19), .ZN(result[6]) );
  INVD1 U9 ( .I(n19), .ZN(result[7]) );
  INVD1 U10 ( .I(n19), .ZN(result[8]) );
  INVD1 U11 ( .I(n19), .ZN(result[9]) );
  INVD1 U12 ( .I(n19), .ZN(result[10]) );
  INVD1 U13 ( .I(n19), .ZN(result[11]) );
  INVD1 U14 ( .I(n19), .ZN(result[12]) );
  INVD1 U15 ( .I(n19), .ZN(result[13]) );
  INVD1 U16 ( .I(n19), .ZN(result[14]) );
  INVD1 U17 ( .I(n19), .ZN(result[15]) );
  INVD1 U18 ( .I(n19), .ZN(result[16]) );
  INVD1 U19 ( .I(n19), .ZN(result[17]) );
  CKND0 U20 ( .I(x[23]), .ZN(n20) );
  CKND0 U21 ( .I(n20), .ZN(n21) );
  CKND0 U22 ( .I(y[30]), .ZN(n22) );
  CKND0 U23 ( .I(n22), .ZN(n23) );
endmodule

