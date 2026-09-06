/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Sat Sep  5 13:36:10 2026
/////////////////////////////////////////////////////////////


module fig8_dw_B5_add_1_root_sub_2151_DP_OP_357_8474_0 ( I1, I2, O6 );
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


module fig8_dw_B5_DW_div_6 ( a, b, quotient, remainder, divide_by_0 );
  input [12:0] a;
  input [5:0] b;
  output [12:0] quotient;
  output [5:0] remainder;
  output divide_by_0;
  wire   PartRem_7__5_, PartRem_7__2_, PartRem_6__5_, PartRem_6__2_,
         PartRem_6__1_, PartRem_5__5_, PartRem_5__3_, PartRem_5__1_,
         PartRem_4__5_, PartRem_4__1_, PartRem_3__5_, PartRem_3__1_,
         CryTmp_7__6_, CryTmp_7__4_, CryTmp_7__3_, CryTmp_7__2_, CryTmp_7__1_,
         CryTmp_6__5_, CryTmp_6__4_, CryTmp_6__3_, CryTmp_6__2_, CryTmp_6__1_,
         CryTmp_5__5_, CryTmp_5__4_, CryTmp_5__3_, CryTmp_5__2_, CryTmp_4__5_,
         CryTmp_4__4_, CryTmp_4__3_, CryTmp_4__2_, CryTmp_3__5_, CryTmp_3__4_,
         CryTmp_3__3_, CryTmp_3__2_, CryTmp_2__5_, CryTmp_2__4_, CryTmp_2__3_,
         CryTmp_2__2_, CryTmp_1__5_, CryTmp_1__4_, CryTmp_1__3_, CryTmp_1__2_,
         SumTmp_7__4_, SumTmp_7__3_, SumTmp_7__2_, SumTmp_7__1_, SumTmp_7__0_,
         SumTmp_6__4_, SumTmp_6__3_, SumTmp_6__2_, SumTmp_6__1_, SumTmp_5__4_,
         SumTmp_5__3_, SumTmp_5__2_, SumTmp_5__1_, SumTmp_4__4_, SumTmp_4__3_,
         SumTmp_4__2_, SumTmp_4__1_, SumTmp_4__0_, SumTmp_3__4_, SumTmp_3__3_,
         SumTmp_3__2_, SumTmp_3__1_, SumTmp_2__4_, SumTmp_2__3_, SumTmp_2__2_,
         SumTmp_2__1_, n2, n4, n5, n6, n7, n8, n9, n10, n11, n12, n18, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n37, n38, n39, n40,
         n41, n42, n43, n44, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64;
  wire   [4:1] BInv;

  FA1D0 u_fa_PartRem_0_7_1 ( .A(a[8]), .B(BInv[1]), .CI(CryTmp_7__1_), .CO(
        CryTmp_7__2_), .S(SumTmp_7__1_) );
  FA1D0 u_fa_PartRem_0_1_3 ( .A(n7), .B(BInv[3]), .CI(CryTmp_1__3_), .CO(
        CryTmp_1__4_) );
  FA1D0 u_fa_PartRem_0_1_4 ( .A(n9), .B(BInv[4]), .CI(CryTmp_1__4_), .CO(
        CryTmp_1__5_) );
  FA1D0 u_fa_PartRem_0_3_1 ( .A(PartRem_4__1_), .B(BInv[1]), .CI(CryTmp_6__1_), 
        .CO(CryTmp_3__2_), .S(SumTmp_3__1_) );
  FA1D0 u_fa_PartRem_0_4_1 ( .A(PartRem_5__1_), .B(BInv[1]), .CI(CryTmp_6__1_), 
        .CO(CryTmp_4__2_), .S(SumTmp_4__1_) );
  FA1D0 u_fa_PartRem_0_1_1 ( .A(n18), .B(BInv[1]), .CI(CryTmp_6__1_), .CO(
        CryTmp_1__2_) );
  FA1D0 u_fa_PartRem_0_1_2 ( .A(n4), .B(BInv[2]), .CI(CryTmp_1__2_), .CO(
        CryTmp_1__3_) );
  FA1D0 u_fa_PartRem_0_2_3 ( .A(n5), .B(BInv[3]), .CI(CryTmp_2__3_), .CO(
        CryTmp_2__4_), .S(SumTmp_2__3_) );
  FA1D0 u_fa_PartRem_0_2_2 ( .A(n26), .B(BInv[2]), .CI(CryTmp_2__2_), .CO(
        CryTmp_2__3_), .S(SumTmp_2__2_) );
  FA1D0 u_fa_PartRem_0_2_1 ( .A(PartRem_3__1_), .B(BInv[1]), .CI(CryTmp_6__1_), 
        .CO(CryTmp_2__2_), .S(SumTmp_2__1_) );
  FA1D0 u_fa_PartRem_0_3_3 ( .A(n6), .B(BInv[3]), .CI(CryTmp_3__3_), .CO(
        CryTmp_3__4_), .S(SumTmp_3__3_) );
  FA1D0 u_fa_PartRem_0_3_2 ( .A(n25), .B(BInv[2]), .CI(CryTmp_3__2_), .CO(
        CryTmp_3__3_), .S(SumTmp_3__2_) );
  FA1D0 u_fa_PartRem_0_4_3 ( .A(PartRem_5__3_), .B(BInv[3]), .CI(CryTmp_4__3_), 
        .CO(CryTmp_4__4_), .S(SumTmp_4__3_) );
  FA1D0 u_fa_PartRem_0_4_2 ( .A(n24), .B(BInv[2]), .CI(CryTmp_4__2_), .CO(
        CryTmp_4__3_), .S(SumTmp_4__2_) );
  FA1D0 u_fa_PartRem_0_5_3 ( .A(n27), .B(BInv[3]), .CI(CryTmp_5__3_), .CO(
        CryTmp_5__4_), .S(SumTmp_5__3_) );
  FA1D0 u_fa_PartRem_0_5_2 ( .A(PartRem_6__2_), .B(BInv[2]), .CI(CryTmp_5__2_), 
        .CO(CryTmp_5__3_), .S(SumTmp_5__2_) );
  FA1D0 u_fa_PartRem_0_5_1 ( .A(PartRem_6__1_), .B(BInv[1]), .CI(CryTmp_6__1_), 
        .CO(CryTmp_5__2_), .S(SumTmp_5__1_) );
  FA1D0 u_fa_PartRem_0_6_3 ( .A(n34), .B(BInv[3]), .CI(CryTmp_6__3_), .CO(
        CryTmp_6__4_), .S(SumTmp_6__3_) );
  FA1D0 u_fa_PartRem_0_6_2 ( .A(PartRem_7__2_), .B(BInv[2]), .CI(CryTmp_6__2_), 
        .CO(CryTmp_6__3_), .S(SumTmp_6__2_) );
  FA1D0 u_fa_PartRem_0_7_3 ( .A(a[10]), .B(BInv[3]), .CI(CryTmp_7__3_), .CO(
        CryTmp_7__4_), .S(SumTmp_7__3_) );
  FA1D0 u_fa_PartRem_0_6_1 ( .A(n2), .B(BInv[1]), .CI(CryTmp_6__1_), .CO(
        CryTmp_6__2_), .S(SumTmp_6__1_) );
  FA1D0 u_fa_PartRem_0_7_2 ( .A(a[9]), .B(BInv[2]), .CI(CryTmp_7__2_), .CO(
        CryTmp_7__3_), .S(SumTmp_7__2_) );
  FA1D0 u_fa_PartRem_0_2_4 ( .A(n10), .B(BInv[4]), .CI(CryTmp_2__4_), .CO(
        CryTmp_2__5_), .S(SumTmp_2__4_) );
  FA1D0 u_fa_PartRem_0_3_4 ( .A(n28), .B(BInv[4]), .CI(CryTmp_3__4_), .CO(
        CryTmp_3__5_), .S(SumTmp_3__4_) );
  FA1D0 u_fa_PartRem_0_4_4 ( .A(n11), .B(BInv[4]), .CI(CryTmp_4__4_), .CO(
        CryTmp_4__5_), .S(SumTmp_4__4_) );
  FA1D0 u_fa_PartRem_0_5_4 ( .A(n8), .B(BInv[4]), .CI(CryTmp_5__4_), .CO(
        CryTmp_5__5_), .S(SumTmp_5__4_) );
  FA1D0 u_fa_PartRem_0_6_4 ( .A(n12), .B(BInv[4]), .CI(CryTmp_6__4_), .CO(
        CryTmp_6__5_), .S(SumTmp_6__4_) );
  FA1D0 u_fa_PartRem_0_7_4 ( .A(a[11]), .B(BInv[4]), .CI(CryTmp_7__4_), .CO(
        CryTmp_7__6_), .S(SumTmp_7__4_) );
  INVD1 U2 ( .I(SumTmp_4__1_), .ZN(n56) );
  INVD1 U3 ( .I(SumTmp_5__1_), .ZN(n55) );
  INVD1 U4 ( .I(SumTmp_6__2_), .ZN(n49) );
  INVD1 U6 ( .I(SumTmp_3__1_), .ZN(n57) );
  INVD1 U7 ( .I(SumTmp_4__3_), .ZN(n52) );
  MUX2D0 U10 ( .I0(a[7]), .I1(SumTmp_7__0_), .S(CryTmp_7__6_), .Z(n2) );
  MUX2ND0 U12 ( .I0(n51), .I1(n58), .S(quotient[2]), .ZN(n4) );
  MUX2D0 U13 ( .I0(n25), .I1(SumTmp_3__2_), .S(quotient[3]), .Z(n5) );
  MUX2D0 U14 ( .I0(n24), .I1(SumTmp_4__2_), .S(quotient[4]), .Z(n6) );
  MUX2D0 U15 ( .I0(n26), .I1(SumTmp_2__2_), .S(quotient[2]), .Z(n7) );
  MUX2D0 U16 ( .I0(n34), .I1(SumTmp_6__3_), .S(quotient[6]), .Z(n8) );
  MUX2D0 U17 ( .I0(n5), .I1(SumTmp_2__3_), .S(quotient[2]), .Z(n9) );
  MUX2D0 U18 ( .I0(n6), .I1(SumTmp_3__3_), .S(quotient[3]), .Z(n10) );
  MUX2D0 U19 ( .I0(n27), .I1(SumTmp_5__3_), .S(quotient[5]), .Z(n11) );
  MUX2D0 U20 ( .I0(a[10]), .I1(SumTmp_7__3_), .S(CryTmp_7__6_), .Z(n12) );
  INR2D1 U31 ( .A1(quotient[2]), .B1(CryTmp_6__1_), .ZN(n18) );
  MUX2ND0 U37 ( .I0(n41), .I1(n55), .S(quotient[5]), .ZN(n24) );
  MUX2ND0 U38 ( .I0(n44), .I1(n56), .S(quotient[4]), .ZN(n25) );
  MUX2ND0 U39 ( .I0(n48), .I1(n57), .S(quotient[3]), .ZN(n26) );
  INVD1 U41 ( .I(SumTmp_5__2_), .ZN(n53) );
  MUX2ND0 U42 ( .I0(n38), .I1(n49), .S(quotient[6]), .ZN(n27) );
  MUX2ND0 U43 ( .I0(n43), .I1(n52), .S(quotient[4]), .ZN(n28) );
  XNR2D1 U44 ( .A1(CryTmp_2__5_), .A2(PartRem_3__5_), .ZN(n29) );
  INVD1 U45 ( .I(SumTmp_2__1_), .ZN(n58) );
  XNR2D1 U46 ( .A1(CryTmp_6__5_), .A2(PartRem_7__5_), .ZN(n30) );
  XNR2D1 U47 ( .A1(CryTmp_3__5_), .A2(PartRem_4__5_), .ZN(n31) );
  XNR2D1 U48 ( .A1(CryTmp_5__5_), .A2(PartRem_6__5_), .ZN(n32) );
  XNR2D1 U49 ( .A1(CryTmp_4__5_), .A2(PartRem_5__5_), .ZN(n33) );
  ND2D1 U51 ( .A1(quotient[5]), .A2(SumTmp_4__0_), .ZN(n44) );
  ND2D1 U52 ( .A1(quotient[4]), .A2(SumTmp_4__0_), .ZN(n48) );
  INVD1 U53 ( .I(CryTmp_6__1_), .ZN(SumTmp_4__0_) );
  ND2D1 U54 ( .A1(quotient[3]), .A2(SumTmp_4__0_), .ZN(n51) );
  ND2D1 U55 ( .A1(quotient[6]), .A2(SumTmp_4__0_), .ZN(n41) );
  INVD1 U57 ( .I(b[0]), .ZN(CryTmp_6__1_) );
  INVD1 U60 ( .I(b[1]), .ZN(BInv[1]) );
  INVD1 U62 ( .I(b[2]), .ZN(BInv[2]) );
  INVD1 U63 ( .I(b[3]), .ZN(BInv[3]) );
  INVD1 U64 ( .I(b[4]), .ZN(BInv[4]) );
  XNR2D1 U65 ( .A1(CryTmp_6__1_), .A2(a[7]), .ZN(SumTmp_7__0_) );
  CKND1 U66 ( .I(n37), .ZN(PartRem_7__5_) );
  CKND1 U67 ( .I(n38), .ZN(PartRem_7__2_) );
  MUX2ND0 U68 ( .I0(a[11]), .I1(SumTmp_7__4_), .S(CryTmp_7__6_), .ZN(n37) );
  CKND1 U69 ( .I(n39), .ZN(PartRem_6__5_) );
  CKND1 U70 ( .I(n40), .ZN(PartRem_6__2_) );
  CKND1 U71 ( .I(n41), .ZN(PartRem_6__1_) );
  MUX2ND0 U72 ( .I0(n12), .I1(SumTmp_6__4_), .S(quotient[6]), .ZN(n39) );
  CKND1 U73 ( .I(n42), .ZN(PartRem_5__5_) );
  CKND1 U75 ( .I(n44), .ZN(PartRem_5__1_) );
  MUX2ND0 U76 ( .I0(n8), .I1(SumTmp_5__4_), .S(quotient[5]), .ZN(n42) );
  CKND1 U77 ( .I(n47), .ZN(PartRem_4__5_) );
  CKND1 U78 ( .I(n48), .ZN(PartRem_4__1_) );
  MUX2ND0 U79 ( .I0(n11), .I1(SumTmp_4__4_), .S(quotient[4]), .ZN(n47) );
  MUX2ND0 U80 ( .I0(a[8]), .I1(SumTmp_7__1_), .S(CryTmp_7__6_), .ZN(n38) );
  CKND1 U81 ( .I(n50), .ZN(PartRem_3__5_) );
  CKND1 U82 ( .I(n51), .ZN(PartRem_3__1_) );
  MUX2ND0 U83 ( .I0(n28), .I1(SumTmp_3__4_), .S(quotient[3]), .ZN(n50) );
  MUX2ND0 U84 ( .I0(n2), .I1(SumTmp_6__1_), .S(quotient[6]), .ZN(n40) );
  MUX2ND0 U85 ( .I0(n10), .I1(SumTmp_2__4_), .S(quotient[2]), .ZN(n54) );
  AO21D0 U5 ( .A1(n60), .A2(CryTmp_1__5_), .B(n59), .Z(quotient[1]) );
  MUX2ND0 U8 ( .I0(n50), .I1(n29), .S(quotient[2]), .ZN(n59) );
  CKND0 U9 ( .I(n54), .ZN(n60) );
  AO21D0 U11 ( .A1(CryTmp_2__5_), .A2(PartRem_3__5_), .B(n61), .Z(quotient[2])
         );
  MUX2ND0 U21 ( .I0(n47), .I1(n31), .S(quotient[3]), .ZN(n61) );
  AO21D0 U22 ( .A1(CryTmp_3__5_), .A2(PartRem_4__5_), .B(n62), .Z(quotient[3])
         );
  MUX2ND0 U23 ( .I0(n42), .I1(n33), .S(quotient[4]), .ZN(n62) );
  AO21D0 U24 ( .A1(CryTmp_4__5_), .A2(PartRem_5__5_), .B(n63), .Z(quotient[4])
         );
  MUX2ND0 U25 ( .I0(n39), .I1(n32), .S(quotient[5]), .ZN(n63) );
  CKND0 U26 ( .I(PartRem_5__3_), .ZN(n43) );
  MUX2ND0 U27 ( .I0(n40), .I1(n53), .S(quotient[5]), .ZN(PartRem_5__3_) );
  AO21D0 U28 ( .A1(CryTmp_5__5_), .A2(PartRem_6__5_), .B(n64), .Z(quotient[5])
         );
  MUX2ND0 U29 ( .I0(n37), .I1(n30), .S(quotient[6]), .ZN(n64) );
  IOA21D0 U30 ( .A1(CryTmp_6__5_), .A2(PartRem_7__5_), .B(CryTmp_7__6_), .ZN(
        quotient[6]) );
  MUX2D0 U32 ( .I0(a[9]), .I1(SumTmp_7__2_), .S(CryTmp_7__6_), .Z(n34) );
  IND2D0 U33 ( .A1(a[7]), .B1(b[0]), .ZN(CryTmp_7__1_) );
endmodule


module fig8_dw_B5_DW_fp_div_0 ( a, b, rnd, z, status );
  input [13:0] a;
  input [13:0] b;
  input [2:0] rnd;
  output [13:0] z;
  output [7:0] status;
  wire   n_Logic1_, n_Logic0_, GEN_2_shift_req, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93;
  wire   [9:0] GEN_2_ez;
  wire   [6:1] GEN_2_quo;
  wire   [8:0] GEN_2_ez_norm;
  wire   [4:0] GEN_2_mz_rounded;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6;

  fig8_dw_B5_add_1_root_sub_2151_DP_OP_357_8474_0 add_1_root_sub_2151_DP_OP_357_8474_3 ( 
        .I1(a[12:5]), .I2(b[12:5]), .O6(GEN_2_ez) );
  fig8_dw_B5_DW_div_6 GEN_2_U3 ( .a({n_Logic1_, a[4:0], n_Logic0_, n_Logic0_, 
        n_Logic0_, n_Logic0_, n_Logic0_, n_Logic0_, n_Logic0_}), .b({n_Logic1_, 
        b[4:0]}), .quotient({SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, GEN_2_quo, 
        SYNOPSYS_UNCONNECTED__6}) );
  XNR2D1 U3 ( .A1(GEN_2_ez[9]), .A2(n50), .ZN(n49) );
  AN4XD1 U4 ( .A1(n49), .A2(n76), .A3(n74), .A4(n80), .Z(n69) );
  INVD1 U5 ( .I(a[4]), .ZN(n68) );
  INVD1 U6 ( .I(b[3]), .ZN(n66) );
  INVD1 U7 ( .I(b[2]), .ZN(n65) );
  INVD1 U8 ( .I(a[1]), .ZN(n67) );
  TIEH U9 ( .Z(n_Logic1_) );
  TIEL U10 ( .ZN(n_Logic0_) );
  IND2D0 U11 ( .A1(GEN_2_ez[0]), .B1(GEN_2_shift_req), .ZN(n55) );
  OR2D0 U12 ( .A1(n55), .A2(GEN_2_ez[1]), .Z(n54) );
  OR2D0 U13 ( .A1(n54), .A2(GEN_2_ez[2]), .Z(n53) );
  OR2D0 U14 ( .A1(n53), .A2(GEN_2_ez[3]), .Z(n52) );
  OR2D0 U15 ( .A1(n52), .A2(GEN_2_ez[4]), .Z(n51) );
  NR2D0 U16 ( .A1(n51), .A2(GEN_2_ez[5]), .ZN(n58) );
  INR2D0 U17 ( .A1(n58), .B1(GEN_2_ez[6]), .ZN(n57) );
  IND2D0 U18 ( .A1(GEN_2_ez[7]), .B1(n57), .ZN(n56) );
  NR2D0 U19 ( .A1(GEN_2_ez[8]), .A2(n56), .ZN(n50) );
  XNR2D0 U20 ( .A1(n51), .A2(GEN_2_ez[5]), .ZN(GEN_2_ez_norm[5]) );
  XNR2D0 U21 ( .A1(n52), .A2(GEN_2_ez[4]), .ZN(GEN_2_ez_norm[4]) );
  XNR2D0 U22 ( .A1(n53), .A2(GEN_2_ez[3]), .ZN(GEN_2_ez_norm[3]) );
  XNR2D0 U23 ( .A1(n54), .A2(GEN_2_ez[2]), .ZN(GEN_2_ez_norm[2]) );
  XNR2D0 U24 ( .A1(n55), .A2(GEN_2_ez[1]), .ZN(GEN_2_ez_norm[1]) );
  CKXOR2D0 U25 ( .A1(GEN_2_ez[0]), .A2(GEN_2_shift_req), .Z(GEN_2_ez_norm[0])
         );
  XNR2D0 U26 ( .A1(n56), .A2(GEN_2_ez[8]), .ZN(GEN_2_ez_norm[8]) );
  CKXOR2D0 U27 ( .A1(n57), .A2(GEN_2_ez[7]), .Z(GEN_2_ez_norm[7]) );
  CKXOR2D0 U28 ( .A1(n58), .A2(GEN_2_ez[6]), .Z(GEN_2_ez_norm[6]) );
  AN2D0 U29 ( .A1(a[3]), .A2(n66), .Z(n60) );
  OAI32D0 U30 ( .A1(n65), .A2(a[2]), .A3(n60), .B1(a[3]), .B2(n66), .ZN(n63)
         );
  IAO21D0 U31 ( .A1(n67), .A2(b[1]), .B(a[0]), .ZN(n59) );
  AO22D0 U32 ( .A1(n59), .A2(b[0]), .B1(b[1]), .B2(n67), .Z(n62) );
  AOI21D0 U33 ( .A1(a[2]), .A2(n65), .B(n60), .ZN(n61) );
  OAI222D0 U34 ( .A1(n63), .A2(n62), .B1(b[4]), .B2(n68), .C1(n61), .C2(n63), 
        .ZN(n64) );
  IOA21D0 U35 ( .A1(n68), .A2(b[4]), .B(n64), .ZN(GEN_2_shift_req) );
  IOA21D0 U36 ( .A1(GEN_2_ez_norm[4]), .A2(n69), .B(n70), .ZN(z[9]) );
  IOA21D0 U37 ( .A1(GEN_2_ez_norm[3]), .A2(n69), .B(n70), .ZN(z[8]) );
  IOA21D0 U38 ( .A1(GEN_2_ez_norm[2]), .A2(n69), .B(n70), .ZN(z[7]) );
  IOA21D0 U39 ( .A1(GEN_2_ez_norm[1]), .A2(n69), .B(n70), .ZN(z[6]) );
  AO21D0 U40 ( .A1(GEN_2_ez_norm[0]), .A2(n69), .B(n71), .Z(z[5]) );
  IOA21D0 U41 ( .A1(GEN_2_mz_rounded[4]), .A2(n69), .B(n72), .ZN(z[4]) );
  IOA21D0 U42 ( .A1(GEN_2_mz_rounded[3]), .A2(n69), .B(n72), .ZN(z[3]) );
  IOA21D0 U43 ( .A1(GEN_2_mz_rounded[2]), .A2(n69), .B(n72), .ZN(z[2]) );
  IOA21D0 U44 ( .A1(GEN_2_mz_rounded[1]), .A2(n69), .B(n72), .ZN(z[1]) );
  OA221D0 U45 ( .A1(n73), .A2(n74), .B1(n75), .B2(n76), .C(n77), .Z(z[13]) );
  CKXOR2D0 U46 ( .A1(b[13]), .A2(a[13]), .Z(n77) );
  IOA21D0 U47 ( .A1(GEN_2_ez_norm[7]), .A2(n69), .B(n70), .ZN(z[12]) );
  IOA21D0 U48 ( .A1(GEN_2_ez_norm[6]), .A2(n69), .B(n70), .ZN(z[11]) );
  IOA21D0 U49 ( .A1(GEN_2_ez_norm[5]), .A2(n69), .B(n70), .ZN(z[10]) );
  AN2D0 U50 ( .A1(n72), .A2(n78), .Z(n70) );
  IOA21D0 U51 ( .A1(GEN_2_mz_rounded[0]), .A2(n69), .B(n72), .ZN(z[0]) );
  ND4D0 U52 ( .A1(n79), .A2(n78), .A3(n74), .A4(n76), .ZN(n72) );
  CKND0 U53 ( .I(n71), .ZN(n78) );
  AOI211D0 U54 ( .A1(n81), .A2(n82), .B(n71), .C(n79), .ZN(n80) );
  OA21D0 U55 ( .A1(n83), .A2(GEN_2_ez_norm[8]), .B(n49), .Z(n79) );
  NR2D0 U56 ( .A1(n84), .A2(n85), .ZN(n83) );
  ND4D0 U57 ( .A1(GEN_2_ez_norm[7]), .A2(GEN_2_ez_norm[6]), .A3(
        GEN_2_ez_norm[5]), .A4(GEN_2_ez_norm[4]), .ZN(n85) );
  ND4D0 U58 ( .A1(GEN_2_ez_norm[3]), .A2(GEN_2_ez_norm[2]), .A3(
        GEN_2_ez_norm[1]), .A4(GEN_2_ez_norm[0]), .ZN(n84) );
  CKND2D0 U59 ( .A1(n73), .A2(n75), .ZN(n71) );
  CKND2D0 U60 ( .A1(n86), .A2(n87), .ZN(n75) );
  AN4D0 U61 ( .A1(a[10]), .A2(a[11]), .A3(a[12]), .A4(a[5]), .Z(n87) );
  AN4D0 U62 ( .A1(a[6]), .A2(a[7]), .A3(a[8]), .A4(a[9]), .Z(n86) );
  CKND2D0 U63 ( .A1(n88), .A2(n89), .ZN(n73) );
  NR4D0 U64 ( .A1(b[9]), .A2(b[8]), .A3(b[7]), .A4(b[6]), .ZN(n89) );
  NR4D0 U65 ( .A1(b[5]), .A2(b[12]), .A3(b[11]), .A4(b[10]), .ZN(n88) );
  NR4D0 U66 ( .A1(GEN_2_ez_norm[7]), .A2(GEN_2_ez_norm[6]), .A3(
        GEN_2_ez_norm[5]), .A4(GEN_2_ez_norm[4]), .ZN(n82) );
  NR4D0 U67 ( .A1(GEN_2_ez_norm[3]), .A2(GEN_2_ez_norm[2]), .A3(
        GEN_2_ez_norm[1]), .A4(GEN_2_ez_norm[0]), .ZN(n81) );
  CKND2D0 U68 ( .A1(n90), .A2(n91), .ZN(n74) );
  NR4D0 U69 ( .A1(a[9]), .A2(a[8]), .A3(a[7]), .A4(a[6]), .ZN(n91) );
  NR4D0 U70 ( .A1(a[5]), .A2(a[12]), .A3(a[11]), .A4(a[10]), .ZN(n90) );
  CKND2D0 U71 ( .A1(n92), .A2(n93), .ZN(n76) );
  AN4D0 U72 ( .A1(b[10]), .A2(b[11]), .A3(b[12]), .A4(b[5]), .Z(n93) );
  AN4D0 U73 ( .A1(b[6]), .A2(b[7]), .A3(b[8]), .A4(b[9]), .Z(n92) );
  MUX2D0 U74 ( .I0(GEN_2_quo[6]), .I1(GEN_2_quo[5]), .S(GEN_2_shift_req), .Z(
        GEN_2_mz_rounded[4]) );
  MUX2D0 U75 ( .I0(GEN_2_quo[5]), .I1(GEN_2_quo[4]), .S(GEN_2_shift_req), .Z(
        GEN_2_mz_rounded[3]) );
  MUX2D0 U76 ( .I0(GEN_2_quo[4]), .I1(GEN_2_quo[3]), .S(GEN_2_shift_req), .Z(
        GEN_2_mz_rounded[2]) );
  MUX2D0 U77 ( .I0(GEN_2_quo[3]), .I1(GEN_2_quo[2]), .S(GEN_2_shift_req), .Z(
        GEN_2_mz_rounded[1]) );
  MUX2D0 U78 ( .I0(GEN_2_quo[2]), .I1(GEN_2_quo[1]), .S(GEN_2_shift_req), .Z(
        GEN_2_mz_rounded[0]) );
endmodule


module fig8_dw_B5 ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   n1, n21;

  fig8_dw_B5_DW_fp_div_0 core ( .a(x[31:18]), .b(y[31:18]), .rnd({n1, n1, n21}), .z(result[31:18]) );
  TIEH U3 ( .Z(n21) );
  TIEL U22 ( .ZN(n1) );
endmodule


module fig8_dw_d18 ( x, y, result );
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

  fig8_dw_B5 core ( .x({x[31:24], n21, x[22:18], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .y({y[31], n23, y[29:18], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .result({result[31:18], SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17}) );
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

