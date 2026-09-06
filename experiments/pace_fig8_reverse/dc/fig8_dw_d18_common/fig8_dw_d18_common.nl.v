/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Sat Sep  5 13:37:17 2026
/////////////////////////////////////////////////////////////


module fp32_normal_finite_wrapper_DW01_add_1_DW01_add_2 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [7:2] carry;

  XOR3D1 U1_7 ( .A1(A[7]), .A2(B[7]), .A3(carry[7]), .Z(SUM[7]) );
  FA1D0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1D0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1D0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1D0 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA1D0 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  FA1D0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  AN2D1 U1 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
  CKXOR2D1 U2 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
endmodule


module fp32_normal_finite_wrapper ( x, y, divide_mode, fraction_x, fraction_y, 
        result_fraction, exponent_adjust, result );
  input [31:0] x;
  input [31:0] y;
  output [22:0] fraction_x;
  output [22:0] fraction_y;
  input [22:0] result_fraction;
  input [2:0] exponent_adjust;
  output [31:0] result;
  input divide_mode;
  wire   N9, N8, N7, N6, N5, N4, N3, N17, N16, N15, N14, N13, N12, N11, N10,
         n1, n79;
  wire   [7:2] add_0_root_add_0_root_add_22_2_carry;

  CKXOR2D1 U2 ( .A1(y[31]), .A2(x[31]), .Z(result[31]) );
  fp32_normal_finite_wrapper_DW01_add_1_DW01_add_2 add_1_root_add_0_root_add_22_2 ( 
        .A(x[30:23]), .B({y[30], N17, N16, N15, N14, N13, N12, N11}), .CI(n79), 
        .SUM({N10, N9, N8, N7, N6, N5, N4, N3}) );
  AN2XD1 U3 ( .A1(exponent_adjust[0]), .A2(N3), .Z(n1) );
  CKBD1 U41 ( .I(result_fraction[18]), .Z(result[18]) );
  CKBD1 U42 ( .I(result_fraction[19]), .Z(result[19]) );
  CKBD1 U43 ( .I(result_fraction[20]), .Z(result[20]) );
  CKBD1 U44 ( .I(result_fraction[21]), .Z(result[21]) );
  CKBD1 U45 ( .I(result_fraction[22]), .Z(result[22]) );
  FA1D0 U46 ( .A(N4), .B(exponent_adjust[1]), .CI(n1), .CO(
        add_0_root_add_0_root_add_22_2_carry[2]), .S(result[24]) );
  FA1D0 U47 ( .A(N5), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[2]), .CO(
        add_0_root_add_0_root_add_22_2_carry[3]), .S(result[25]) );
  FA1D0 U48 ( .A(N6), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[3]), .CO(
        add_0_root_add_0_root_add_22_2_carry[4]), .S(result[26]) );
  FA1D0 U49 ( .A(N7), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[4]), .CO(
        add_0_root_add_0_root_add_22_2_carry[5]), .S(result[27]) );
  FA1D0 U50 ( .A(N8), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[5]), .CO(
        add_0_root_add_0_root_add_22_2_carry[6]), .S(result[28]) );
  FA1D0 U51 ( .A(N9), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[6]), .CO(
        add_0_root_add_0_root_add_22_2_carry[7]), .S(result[29]) );
  CKBD1 U58 ( .I(y[18]), .Z(fraction_y[18]) );
  CKBD1 U59 ( .I(y[19]), .Z(fraction_y[19]) );
  CKBD1 U60 ( .I(y[20]), .Z(fraction_y[20]) );
  CKBD1 U61 ( .I(y[21]), .Z(fraction_y[21]) );
  CKBD1 U62 ( .I(y[22]), .Z(fraction_y[22]) );
  XOR3D1 U65 ( .A1(N10), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_22_2_carry[7]), .Z(result[30]) );
  INVD1 U71 ( .I(y[29]), .ZN(N17) );
  INVD1 U72 ( .I(y[24]), .ZN(N12) );
  INVD1 U73 ( .I(y[25]), .ZN(N13) );
  INVD1 U74 ( .I(y[26]), .ZN(N14) );
  INVD1 U75 ( .I(y[27]), .ZN(N15) );
  INVD1 U76 ( .I(y[28]), .ZN(N16) );
  CKBD1 U105 ( .I(x[22]), .Z(fraction_x[22]) );
  CKBD1 U106 ( .I(x[21]), .Z(fraction_x[21]) );
  CKBD1 U107 ( .I(x[20]), .Z(fraction_x[20]) );
  CKBD1 U108 ( .I(x[19]), .Z(fraction_x[19]) );
  CKBD1 U109 ( .I(x[18]), .Z(fraction_x[18]) );
  TIEL U110 ( .ZN(n79) );
  CKXOR2D1 U111 ( .A1(exponent_adjust[0]), .A2(N3), .Z(result[23]) );
  CKND0 U119 ( .I(y[23]), .ZN(N11) );
endmodule


module fig8_dw_d18_common_DW_div_6 ( a, b, quotient, remainder, divide_by_0 );
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
         SumTmp_4__2_, SumTmp_4__1_, SumTmp_3__4_, SumTmp_3__3_, SumTmp_3__2_,
         SumTmp_3__1_, SumTmp_2__4_, SumTmp_2__3_, SumTmp_2__2_, SumTmp_2__1_,
         n2, n4, n5, n6, n7, n8, n9, n10, n11, n12, n18, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n37, n38, n39, n40, n41, n42, n43,
         n44, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64;
  wire   [4:1] BInv;

  FA1D0 u_fa_PartRem_0_7_1 ( .A(a[8]), .B(BInv[1]), .CI(CryTmp_7__1_), .CO(
        CryTmp_7__2_), .S(SumTmp_7__1_) );
  FA1D0 u_fa_PartRem_0_1_3 ( .A(n7), .B(BInv[3]), .CI(CryTmp_1__3_), .CO(
        CryTmp_1__4_) );
  FA1D0 u_fa_PartRem_0_1_4 ( .A(n8), .B(BInv[4]), .CI(CryTmp_1__4_), .CO(
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
  FA1D0 u_fa_PartRem_0_5_4 ( .A(n9), .B(BInv[4]), .CI(CryTmp_5__4_), .CO(
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
  MUX2D0 U16 ( .I0(n5), .I1(SumTmp_2__3_), .S(quotient[2]), .Z(n8) );
  MUX2D0 U17 ( .I0(n34), .I1(SumTmp_6__3_), .S(quotient[6]), .Z(n9) );
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
  XNR2D1 U48 ( .A1(CryTmp_4__5_), .A2(PartRem_5__5_), .ZN(n32) );
  XNR2D1 U49 ( .A1(CryTmp_5__5_), .A2(PartRem_6__5_), .ZN(n33) );
  ND2D1 U50 ( .A1(quotient[5]), .A2(b[0]), .ZN(n44) );
  ND2D1 U51 ( .A1(quotient[4]), .A2(b[0]), .ZN(n48) );
  ND2D1 U52 ( .A1(quotient[3]), .A2(b[0]), .ZN(n51) );
  ND2D1 U53 ( .A1(quotient[6]), .A2(b[0]), .ZN(n41) );
  INVD1 U56 ( .I(b[0]), .ZN(CryTmp_6__1_) );
  INVD1 U59 ( .I(b[1]), .ZN(BInv[1]) );
  INVD1 U60 ( .I(b[2]), .ZN(BInv[2]) );
  INVD1 U62 ( .I(b[3]), .ZN(BInv[3]) );
  INVD1 U63 ( .I(b[4]), .ZN(BInv[4]) );
  XNR2D1 U64 ( .A1(CryTmp_6__1_), .A2(a[7]), .ZN(SumTmp_7__0_) );
  CKND1 U65 ( .I(n37), .ZN(PartRem_7__5_) );
  CKND1 U66 ( .I(n38), .ZN(PartRem_7__2_) );
  MUX2ND0 U67 ( .I0(a[11]), .I1(SumTmp_7__4_), .S(CryTmp_7__6_), .ZN(n37) );
  CKND1 U68 ( .I(n39), .ZN(PartRem_6__5_) );
  CKND1 U69 ( .I(n40), .ZN(PartRem_6__2_) );
  CKND1 U70 ( .I(n41), .ZN(PartRem_6__1_) );
  MUX2ND0 U71 ( .I0(n12), .I1(SumTmp_6__4_), .S(quotient[6]), .ZN(n39) );
  CKND1 U72 ( .I(n42), .ZN(PartRem_5__5_) );
  CKND1 U74 ( .I(n44), .ZN(PartRem_5__1_) );
  MUX2ND0 U75 ( .I0(n9), .I1(SumTmp_5__4_), .S(quotient[5]), .ZN(n42) );
  CKND1 U76 ( .I(n47), .ZN(PartRem_4__5_) );
  CKND1 U77 ( .I(n48), .ZN(PartRem_4__1_) );
  MUX2ND0 U78 ( .I0(n11), .I1(SumTmp_4__4_), .S(quotient[4]), .ZN(n47) );
  MUX2ND0 U79 ( .I0(a[8]), .I1(SumTmp_7__1_), .S(CryTmp_7__6_), .ZN(n38) );
  CKND1 U80 ( .I(n50), .ZN(PartRem_3__5_) );
  CKND1 U81 ( .I(n51), .ZN(PartRem_3__1_) );
  MUX2ND0 U82 ( .I0(n28), .I1(SumTmp_3__4_), .S(quotient[3]), .ZN(n50) );
  MUX2ND0 U83 ( .I0(n2), .I1(SumTmp_6__1_), .S(quotient[6]), .ZN(n40) );
  MUX2ND0 U84 ( .I0(n10), .I1(SumTmp_2__4_), .S(quotient[2]), .ZN(n54) );
  AO21D0 U5 ( .A1(n60), .A2(CryTmp_1__5_), .B(n59), .Z(quotient[1]) );
  MUX2ND0 U8 ( .I0(n50), .I1(n29), .S(quotient[2]), .ZN(n59) );
  CKND0 U9 ( .I(n54), .ZN(n60) );
  AO21D0 U11 ( .A1(CryTmp_2__5_), .A2(PartRem_3__5_), .B(n61), .Z(quotient[2])
         );
  MUX2ND0 U21 ( .I0(n47), .I1(n31), .S(quotient[3]), .ZN(n61) );
  AO21D0 U22 ( .A1(CryTmp_3__5_), .A2(PartRem_4__5_), .B(n62), .Z(quotient[3])
         );
  MUX2ND0 U23 ( .I0(n42), .I1(n32), .S(quotient[4]), .ZN(n62) );
  AO21D0 U24 ( .A1(CryTmp_4__5_), .A2(PartRem_5__5_), .B(n63), .Z(quotient[4])
         );
  MUX2ND0 U25 ( .I0(n39), .I1(n33), .S(quotient[5]), .ZN(n63) );
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


module fig8_dw_d18_common_DW_fp_div_0 ( a, b, rnd, z, status );
  input [13:0] a;
  input [13:0] b;
  input [2:0] rnd;
  output [13:0] z;
  output [7:0] status;
  wire   n_Logic1_, n_Logic0_, GEN_2_shift_req, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58;
  wire   [6:1] GEN_2_quo;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6;

  fig8_dw_d18_common_DW_div_6 GEN_2_U3 ( .a({n_Logic1_, a[4:0], n_Logic0_, 
        n_Logic0_, n_Logic0_, n_Logic0_, n_Logic0_, n_Logic0_, n_Logic0_}), 
        .b({n_Logic1_, b[4:0]}), .quotient({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, GEN_2_quo, SYNOPSYS_UNCONNECTED__6}) );
  INVD1 U3 ( .I(a[4]), .ZN(n58) );
  INVD1 U4 ( .I(b[3]), .ZN(n56) );
  INVD1 U5 ( .I(a[1]), .ZN(n57) );
  INVD1 U6 ( .I(b[2]), .ZN(n55) );
  TIEH U7 ( .Z(n_Logic1_) );
  TIEL U8 ( .ZN(n_Logic0_) );
  CKND0 U9 ( .I(GEN_2_shift_req), .ZN(z[5]) );
  AN2D0 U10 ( .A1(a[3]), .A2(n56), .Z(n50) );
  OAI32D0 U11 ( .A1(n55), .A2(a[2]), .A3(n50), .B1(a[3]), .B2(n56), .ZN(n53)
         );
  IAO21D0 U12 ( .A1(n57), .A2(b[1]), .B(a[0]), .ZN(n49) );
  AO22D0 U13 ( .A1(n49), .A2(b[0]), .B1(b[1]), .B2(n57), .Z(n52) );
  AOI21D0 U14 ( .A1(a[2]), .A2(n55), .B(n50), .ZN(n51) );
  OAI222D0 U15 ( .A1(n53), .A2(n52), .B1(b[4]), .B2(n58), .C1(n51), .C2(n53), 
        .ZN(n54) );
  IOA21D0 U16 ( .A1(n58), .A2(b[4]), .B(n54), .ZN(GEN_2_shift_req) );
  MUX2D0 U17 ( .I0(GEN_2_quo[6]), .I1(GEN_2_quo[5]), .S(GEN_2_shift_req), .Z(
        z[4]) );
  MUX2D0 U18 ( .I0(GEN_2_quo[5]), .I1(GEN_2_quo[4]), .S(GEN_2_shift_req), .Z(
        z[3]) );
  MUX2D0 U19 ( .I0(GEN_2_quo[4]), .I1(GEN_2_quo[3]), .S(GEN_2_shift_req), .Z(
        z[2]) );
  MUX2D0 U20 ( .I0(GEN_2_quo[3]), .I1(GEN_2_quo[2]), .S(GEN_2_shift_req), .Z(
        z[1]) );
  MUX2D0 U21 ( .I0(GEN_2_quo[2]), .I1(GEN_2_quo[1]), .S(GEN_2_shift_req), .Z(
        z[0]) );
endmodule


module fig8_dw_d18_common ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   n2, n1, adjust_2_;
  wire   [5:0] z;
  wire   [22:18] fy;
  wire   [22:18] fx;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31, 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, 
        SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39, 
        SYNOPSYS_UNCONNECTED__40, SYNOPSYS_UNCONNECTED__41, 
        SYNOPSYS_UNCONNECTED__42, SYNOPSYS_UNCONNECTED__43, 
        SYNOPSYS_UNCONNECTED__44, SYNOPSYS_UNCONNECTED__45, 
        SYNOPSYS_UNCONNECTED__46, SYNOPSYS_UNCONNECTED__47, 
        SYNOPSYS_UNCONNECTED__48, SYNOPSYS_UNCONNECTED__49, 
        SYNOPSYS_UNCONNECTED__50, SYNOPSYS_UNCONNECTED__51, 
        SYNOPSYS_UNCONNECTED__52, SYNOPSYS_UNCONNECTED__53, 
        SYNOPSYS_UNCONNECTED__54, SYNOPSYS_UNCONNECTED__55, 
        SYNOPSYS_UNCONNECTED__56, SYNOPSYS_UNCONNECTED__57, 
        SYNOPSYS_UNCONNECTED__58, SYNOPSYS_UNCONNECTED__59, 
        SYNOPSYS_UNCONNECTED__60, SYNOPSYS_UNCONNECTED__61;
  assign result[0] = 1'b0;
  assign result[1] = 1'b0;
  assign result[2] = 1'b0;
  assign result[3] = 1'b0;
  assign result[4] = 1'b0;
  assign result[5] = 1'b0;
  assign result[6] = 1'b0;
  assign result[7] = 1'b0;
  assign result[8] = 1'b0;
  assign result[9] = 1'b0;
  assign result[10] = 1'b0;
  assign result[11] = 1'b0;
  assign result[12] = 1'b0;
  assign result[13] = 1'b0;
  assign result[14] = 1'b0;
  assign result[15] = 1'b0;
  assign result[16] = 1'b0;
  assign result[17] = 1'b0;

  fp32_normal_finite_wrapper shell ( .x({x[31:18], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .y({y[31:18], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .divide_mode(1'b0), .fraction_x({fx, SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15, SYNOPSYS_UNCONNECTED__16, 
        SYNOPSYS_UNCONNECTED__17}), .fraction_y({fy, SYNOPSYS_UNCONNECTED__18, 
        SYNOPSYS_UNCONNECTED__19, SYNOPSYS_UNCONNECTED__20, 
        SYNOPSYS_UNCONNECTED__21, SYNOPSYS_UNCONNECTED__22, 
        SYNOPSYS_UNCONNECTED__23, SYNOPSYS_UNCONNECTED__24, 
        SYNOPSYS_UNCONNECTED__25, SYNOPSYS_UNCONNECTED__26, 
        SYNOPSYS_UNCONNECTED__27, SYNOPSYS_UNCONNECTED__28, 
        SYNOPSYS_UNCONNECTED__29, SYNOPSYS_UNCONNECTED__30, 
        SYNOPSYS_UNCONNECTED__31, SYNOPSYS_UNCONNECTED__32, 
        SYNOPSYS_UNCONNECTED__33, SYNOPSYS_UNCONNECTED__34, 
        SYNOPSYS_UNCONNECTED__35}), .result_fraction({z[4:0], 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0}), .exponent_adjust({adjust_2_, adjust_2_, adjust_2_}), .result({result[31:18], SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, 
        SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39, 
        SYNOPSYS_UNCONNECTED__40, SYNOPSYS_UNCONNECTED__41, 
        SYNOPSYS_UNCONNECTED__42, SYNOPSYS_UNCONNECTED__43, 
        SYNOPSYS_UNCONNECTED__44, SYNOPSYS_UNCONNECTED__45, 
        SYNOPSYS_UNCONNECTED__46, SYNOPSYS_UNCONNECTED__47, 
        SYNOPSYS_UNCONNECTED__48, SYNOPSYS_UNCONNECTED__49, 
        SYNOPSYS_UNCONNECTED__50, SYNOPSYS_UNCONNECTED__51, 
        SYNOPSYS_UNCONNECTED__52, SYNOPSYS_UNCONNECTED__53}) );
  fig8_dw_d18_common_DW_fp_div_0 core ( .a({n1, n1, n2, n2, n2, n2, n2, n2, n2, 
        fx}), .b({n1, n1, n2, n2, n2, n2, n2, n2, n2, fy}), .rnd({n1, n1, n2}), 
        .z({SYNOPSYS_UNCONNECTED__54, SYNOPSYS_UNCONNECTED__55, 
        SYNOPSYS_UNCONNECTED__56, SYNOPSYS_UNCONNECTED__57, 
        SYNOPSYS_UNCONNECTED__58, SYNOPSYS_UNCONNECTED__59, 
        SYNOPSYS_UNCONNECTED__60, SYNOPSYS_UNCONNECTED__61, z}) );
  INVD1 U9 ( .I(z[5]), .ZN(adjust_2_) );
  TIEH U10 ( .Z(n2) );
  TIEL U11 ( .ZN(n1) );
endmodule

