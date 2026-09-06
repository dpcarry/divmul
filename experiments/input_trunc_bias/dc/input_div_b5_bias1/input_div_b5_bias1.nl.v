/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Fri Sep  4 18:47:25 2026
/////////////////////////////////////////////////////////////


module fp32_normal_finite_wrapper_DW01_add_1 ( A, B, CI, SUM, CO );
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
  fp32_normal_finite_wrapper_DW01_add_1 add_1_root_add_0_root_add_22_2 ( .A(
        x[30:23]), .B({y[30], N17, N16, N15, N14, N13, N12, N11}), .CI(n79), 
        .SUM({N10, N9, N8, N7, N6, N5, N4, N3}) );
  AN2XD1 U3 ( .A1(exponent_adjust[0]), .A2(N3), .Z(n1) );
  FA1D0 U41 ( .A(N4), .B(exponent_adjust[1]), .CI(n1), .CO(
        add_0_root_add_0_root_add_22_2_carry[2]), .S(result[24]) );
  FA1D0 U42 ( .A(N5), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[2]), .CO(
        add_0_root_add_0_root_add_22_2_carry[3]), .S(result[25]) );
  FA1D0 U43 ( .A(N6), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[3]), .CO(
        add_0_root_add_0_root_add_22_2_carry[4]), .S(result[26]) );
  FA1D0 U44 ( .A(N7), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[4]), .CO(
        add_0_root_add_0_root_add_22_2_carry[5]), .S(result[27]) );
  FA1D0 U45 ( .A(N8), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[5]), .CO(
        add_0_root_add_0_root_add_22_2_carry[6]), .S(result[28]) );
  FA1D0 U46 ( .A(N9), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[6]), .CO(
        add_0_root_add_0_root_add_22_2_carry[7]), .S(result[29]) );
  XOR3D1 U55 ( .A1(N10), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_22_2_carry[7]), .Z(result[30]) );
  INVD1 U63 ( .I(y[29]), .ZN(N17) );
  INVD1 U64 ( .I(y[24]), .ZN(N12) );
  INVD1 U65 ( .I(y[25]), .ZN(N13) );
  INVD1 U66 ( .I(y[26]), .ZN(N14) );
  INVD1 U67 ( .I(y[27]), .ZN(N15) );
  INVD1 U68 ( .I(y[28]), .ZN(N16) );
  CKBD1 U87 ( .I(x[22]), .Z(fraction_x[22]) );
  CKBD1 U88 ( .I(x[21]), .Z(fraction_x[21]) );
  CKBD1 U89 ( .I(x[20]), .Z(fraction_x[20]) );
  CKBD1 U90 ( .I(x[19]), .Z(fraction_x[19]) );
  CKBD1 U91 ( .I(x[18]), .Z(fraction_x[18]) );
  CKBD1 U92 ( .I(y[22]), .Z(fraction_y[22]) );
  CKBD1 U93 ( .I(y[21]), .Z(fraction_y[21]) );
  CKBD1 U94 ( .I(y[20]), .Z(fraction_y[20]) );
  CKBD1 U95 ( .I(y[19]), .Z(fraction_y[19]) );
  CKBD1 U96 ( .I(y[18]), .Z(fraction_y[18]) );
  CKBD1 U97 ( .I(result_fraction[22]), .Z(result[22]) );
  CKBD1 U98 ( .I(result_fraction[21]), .Z(result[21]) );
  CKBD1 U99 ( .I(result_fraction[20]), .Z(result[20]) );
  CKBD1 U100 ( .I(result_fraction[19]), .Z(result[19]) );
  CKBD1 U101 ( .I(result_fraction[18]), .Z(result[18]) );
  CKBD1 U102 ( .I(result_fraction[17]), .Z(result[17]) );
  CKBD1 U103 ( .I(result_fraction[16]), .Z(result[16]) );
  TIEL U110 ( .ZN(n79) );
  CKXOR2D1 U111 ( .A1(exponent_adjust[0]), .A2(N3), .Z(result[23]) );
  CKND0 U119 ( .I(y[23]), .ZN(N11) );
endmodule


module input_trunc_core_BITS5_BIAS1_DIVIDE1_DW_div_uns_6 ( a, b, quotient, 
        remainder, divide_by_0 );
  input [13:0] a;
  input [6:0] b;
  output [13:0] quotient;
  output [6:0] remainder;
  output divide_by_0;
  wire   u_div_SumTmp_1__2_, u_div_SumTmp_1__3_, u_div_SumTmp_1__4_,
         u_div_SumTmp_1__5_, u_div_SumTmp_2__2_, u_div_SumTmp_2__3_,
         u_div_SumTmp_2__4_, u_div_SumTmp_2__5_, u_div_SumTmp_3__2_,
         u_div_SumTmp_3__3_, u_div_SumTmp_3__4_, u_div_SumTmp_3__5_,
         u_div_SumTmp_4__2_, u_div_SumTmp_4__3_, u_div_SumTmp_4__4_,
         u_div_SumTmp_4__5_, u_div_SumTmp_5__2_, u_div_SumTmp_5__3_,
         u_div_SumTmp_5__4_, u_div_SumTmp_5__5_, u_div_SumTmp_6__1_,
         u_div_SumTmp_6__2_, u_div_SumTmp_6__3_, u_div_SumTmp_6__4_,
         u_div_SumTmp_6__5_, u_div_SumTmp_7__1_, u_div_SumTmp_7__2_,
         u_div_SumTmp_7__3_, u_div_SumTmp_7__4_, u_div_SumTmp_7__5_,
         u_div_CryTmp_0__3_, u_div_CryTmp_0__4_, u_div_CryTmp_0__5_,
         u_div_CryTmp_0__6_, u_div_CryTmp_1__3_, u_div_CryTmp_1__4_,
         u_div_CryTmp_1__5_, u_div_CryTmp_1__6_, u_div_CryTmp_2__3_,
         u_div_CryTmp_2__4_, u_div_CryTmp_2__5_, u_div_CryTmp_2__6_,
         u_div_CryTmp_3__3_, u_div_CryTmp_3__4_, u_div_CryTmp_3__5_,
         u_div_CryTmp_3__6_, u_div_CryTmp_4__3_, u_div_CryTmp_4__4_,
         u_div_CryTmp_4__5_, u_div_CryTmp_4__6_, u_div_CryTmp_5__3_,
         u_div_CryTmp_5__4_, u_div_CryTmp_5__5_, u_div_CryTmp_5__6_,
         u_div_CryTmp_6__3_, u_div_CryTmp_6__4_, u_div_CryTmp_6__5_,
         u_div_CryTmp_6__6_, u_div_CryTmp_7__2_, u_div_CryTmp_7__3_,
         u_div_CryTmp_7__4_, u_div_CryTmp_7__5_, u_div_PartRem_1__2_,
         u_div_PartRem_1__3_, u_div_PartRem_1__4_, u_div_PartRem_1__5_,
         u_div_PartRem_1__6_, u_div_PartRem_2__2_, u_div_PartRem_2__3_,
         u_div_PartRem_2__4_, u_div_PartRem_2__5_, u_div_PartRem_2__6_,
         u_div_PartRem_3__6_, u_div_PartRem_4__6_, u_div_PartRem_5__3_,
         u_div_PartRem_5__6_, u_div_PartRem_6__2_, u_div_PartRem_6__6_,
         u_div_PartRem_7__1_, u_div_PartRem_7__2_, u_div_PartRem_7__6_, n3, n4,
         n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n22, n23, n24, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83;
  wire   [5:1] u_div_BInv;

  FA1D0 u_div_u_fa_PartRem_0_0_5 ( .A(u_div_PartRem_1__5_), .B(u_div_BInv[5]), 
        .CI(u_div_CryTmp_0__5_), .CO(u_div_CryTmp_0__6_) );
  FA1D0 u_div_u_fa_PartRem_0_1_2 ( .A(u_div_PartRem_2__2_), .B(u_div_BInv[2]), 
        .CI(n7), .CO(u_div_CryTmp_1__3_), .S(u_div_SumTmp_1__2_) );
  FA1D0 u_div_u_fa_PartRem_0_0_3 ( .A(u_div_PartRem_1__3_), .B(u_div_BInv[3]), 
        .CI(u_div_CryTmp_0__3_), .CO(u_div_CryTmp_0__4_) );
  FA1D0 u_div_u_fa_PartRem_0_0_4 ( .A(u_div_PartRem_1__4_), .B(u_div_BInv[4]), 
        .CI(u_div_CryTmp_0__4_), .CO(u_div_CryTmp_0__5_) );
  FA1D0 u_div_u_fa_PartRem_0_1_4 ( .A(u_div_PartRem_2__4_), .B(u_div_BInv[4]), 
        .CI(u_div_CryTmp_1__4_), .CO(u_div_CryTmp_1__5_), .S(
        u_div_SumTmp_1__4_) );
  FA1D0 u_div_u_fa_PartRem_0_0_2 ( .A(u_div_PartRem_1__2_), .B(u_div_BInv[2]), 
        .CI(n11), .CO(u_div_CryTmp_0__3_) );
  FA1D0 u_div_u_fa_PartRem_0_1_3 ( .A(u_div_PartRem_2__3_), .B(u_div_BInv[3]), 
        .CI(u_div_CryTmp_1__3_), .CO(u_div_CryTmp_1__4_), .S(
        u_div_SumTmp_1__3_) );
  FA1D0 u_div_u_fa_PartRem_0_2_4 ( .A(n14), .B(u_div_BInv[4]), .CI(
        u_div_CryTmp_2__4_), .CO(u_div_CryTmp_2__5_), .S(u_div_SumTmp_2__4_)
         );
  FA1D0 u_div_u_fa_PartRem_0_2_3 ( .A(n10), .B(u_div_BInv[3]), .CI(
        u_div_CryTmp_2__3_), .CO(u_div_CryTmp_2__4_), .S(u_div_SumTmp_2__3_)
         );
  FA1D0 u_div_u_fa_PartRem_0_2_2 ( .A(n47), .B(u_div_BInv[2]), .CI(n4), .CO(
        u_div_CryTmp_2__3_), .S(u_div_SumTmp_2__2_) );
  FA1D0 u_div_u_fa_PartRem_0_3_4 ( .A(n37), .B(u_div_BInv[4]), .CI(
        u_div_CryTmp_3__4_), .CO(u_div_CryTmp_3__5_), .S(u_div_SumTmp_3__4_)
         );
  FA1D0 u_div_u_fa_PartRem_0_3_3 ( .A(n9), .B(u_div_BInv[3]), .CI(
        u_div_CryTmp_3__3_), .CO(u_div_CryTmp_3__4_), .S(u_div_SumTmp_3__3_)
         );
  FA1D0 u_div_u_fa_PartRem_0_3_2 ( .A(n45), .B(u_div_BInv[2]), .CI(n6), .CO(
        u_div_CryTmp_3__3_), .S(u_div_SumTmp_3__2_) );
  FA1D0 u_div_u_fa_PartRem_0_4_4 ( .A(n15), .B(u_div_BInv[4]), .CI(
        u_div_CryTmp_4__4_), .CO(u_div_CryTmp_4__5_), .S(u_div_SumTmp_4__4_)
         );
  FA1D0 u_div_u_fa_PartRem_0_4_3 ( .A(u_div_PartRem_5__3_), .B(u_div_BInv[3]), 
        .CI(u_div_CryTmp_4__3_), .CO(u_div_CryTmp_4__4_), .S(
        u_div_SumTmp_4__3_) );
  FA1D0 u_div_u_fa_PartRem_0_4_2 ( .A(n44), .B(u_div_BInv[2]), .CI(n5), .CO(
        u_div_CryTmp_4__3_), .S(u_div_SumTmp_4__2_) );
  FA1D0 u_div_u_fa_PartRem_0_5_4 ( .A(n13), .B(u_div_BInv[4]), .CI(
        u_div_CryTmp_5__4_), .CO(u_div_CryTmp_5__5_), .S(u_div_SumTmp_5__4_)
         );
  FA1D0 u_div_u_fa_PartRem_0_5_3 ( .A(n36), .B(u_div_BInv[3]), .CI(
        u_div_CryTmp_5__3_), .CO(u_div_CryTmp_5__4_), .S(u_div_SumTmp_5__3_)
         );
  FA1D0 u_div_u_fa_PartRem_0_5_2 ( .A(u_div_PartRem_6__2_), .B(u_div_BInv[2]), 
        .CI(n3), .CO(u_div_CryTmp_5__3_), .S(u_div_SumTmp_5__2_) );
  FA1D0 u_div_u_fa_PartRem_0_6_4 ( .A(n12), .B(u_div_BInv[4]), .CI(
        u_div_CryTmp_6__4_), .CO(u_div_CryTmp_6__5_), .S(u_div_SumTmp_6__4_)
         );
  FA1D0 u_div_u_fa_PartRem_0_6_3 ( .A(n48), .B(u_div_BInv[3]), .CI(
        u_div_CryTmp_6__3_), .CO(u_div_CryTmp_6__4_), .S(u_div_SumTmp_6__3_)
         );
  FA1D0 u_div_u_fa_PartRem_0_7_4 ( .A(a[11]), .B(u_div_BInv[4]), .CI(
        u_div_CryTmp_7__4_), .CO(u_div_CryTmp_7__5_), .S(u_div_SumTmp_7__4_)
         );
  FA1D0 u_div_u_fa_PartRem_0_6_2 ( .A(u_div_PartRem_7__2_), .B(u_div_BInv[2]), 
        .CI(n8), .CO(u_div_CryTmp_6__3_), .S(u_div_SumTmp_6__2_) );
  FA1D0 u_div_u_fa_PartRem_0_7_3 ( .A(a[10]), .B(u_div_BInv[3]), .CI(
        u_div_CryTmp_7__3_), .CO(u_div_CryTmp_7__4_), .S(u_div_SumTmp_7__3_)
         );
  FA1D0 u_div_u_fa_PartRem_0_7_2 ( .A(a[9]), .B(u_div_BInv[2]), .CI(
        u_div_CryTmp_7__2_), .CO(u_div_CryTmp_7__3_), .S(u_div_SumTmp_7__2_)
         );
  FA1D0 u_div_u_fa_PartRem_0_1_5 ( .A(u_div_PartRem_2__5_), .B(u_div_BInv[5]), 
        .CI(u_div_CryTmp_1__5_), .CO(u_div_CryTmp_1__6_), .S(
        u_div_SumTmp_1__5_) );
  FA1D0 u_div_u_fa_PartRem_0_2_5 ( .A(n19), .B(u_div_BInv[5]), .CI(
        u_div_CryTmp_2__5_), .CO(u_div_CryTmp_2__6_), .S(u_div_SumTmp_2__5_)
         );
  FA1D0 u_div_u_fa_PartRem_0_3_5 ( .A(n18), .B(u_div_BInv[5]), .CI(
        u_div_CryTmp_3__5_), .CO(u_div_CryTmp_3__6_), .S(u_div_SumTmp_3__5_)
         );
  FA1D0 u_div_u_fa_PartRem_0_4_5 ( .A(n20), .B(u_div_BInv[5]), .CI(
        u_div_CryTmp_4__5_), .CO(u_div_CryTmp_4__6_), .S(u_div_SumTmp_4__5_)
         );
  FA1D0 u_div_u_fa_PartRem_0_5_5 ( .A(n17), .B(u_div_BInv[5]), .CI(
        u_div_CryTmp_5__5_), .CO(u_div_CryTmp_5__6_), .S(u_div_SumTmp_5__5_)
         );
  FA1D0 u_div_u_fa_PartRem_0_6_5 ( .A(n16), .B(u_div_BInv[5]), .CI(
        u_div_CryTmp_6__5_), .CO(u_div_CryTmp_6__6_), .S(u_div_SumTmp_6__5_)
         );
  FA1D0 u_div_u_fa_PartRem_0_7_5 ( .A(a[12]), .B(u_div_BInv[5]), .CI(
        u_div_CryTmp_7__5_), .CO(quotient[7]), .S(u_div_SumTmp_7__5_) );
  INVD1 U1 ( .I(u_div_SumTmp_6__2_), .ZN(n65) );
  INVD1 U4 ( .I(u_div_SumTmp_4__3_), .ZN(n72) );
  AN2XD1 U7 ( .A1(quotient[6]), .A2(u_div_BInv[1]), .Z(n3) );
  AN2XD1 U8 ( .A1(quotient[3]), .A2(u_div_BInv[1]), .Z(n4) );
  AN2XD1 U9 ( .A1(quotient[5]), .A2(u_div_BInv[1]), .Z(n5) );
  AN2XD1 U10 ( .A1(quotient[4]), .A2(u_div_BInv[1]), .Z(n6) );
  AN2XD1 U11 ( .A1(quotient[2]), .A2(u_div_BInv[1]), .Z(n7) );
  MUX2D0 U13 ( .I0(n44), .I1(u_div_SumTmp_4__2_), .S(quotient[4]), .Z(n9) );
  MUX2D0 U14 ( .I0(n45), .I1(u_div_SumTmp_3__2_), .S(quotient[3]), .Z(n10) );
  AN2XD1 U15 ( .A1(u_div_BInv[1]), .A2(quotient[1]), .Z(n11) );
  MUX2D0 U16 ( .I0(a[10]), .I1(u_div_SumTmp_7__3_), .S(quotient[7]), .Z(n12)
         );
  MUX2D0 U17 ( .I0(n48), .I1(u_div_SumTmp_6__3_), .S(quotient[6]), .Z(n13) );
  MUX2D0 U18 ( .I0(n9), .I1(u_div_SumTmp_3__3_), .S(quotient[3]), .Z(n14) );
  MUX2D0 U19 ( .I0(n36), .I1(u_div_SumTmp_5__3_), .S(quotient[5]), .Z(n15) );
  MUX2D0 U20 ( .I0(a[11]), .I1(u_div_SumTmp_7__4_), .S(quotient[7]), .Z(n16)
         );
  MUX2D0 U21 ( .I0(n12), .I1(u_div_SumTmp_6__4_), .S(quotient[6]), .Z(n17) );
  MUX2D0 U22 ( .I0(n15), .I1(u_div_SumTmp_4__4_), .S(quotient[4]), .Z(n18) );
  MUX2D0 U23 ( .I0(n37), .I1(u_div_SumTmp_3__4_), .S(quotient[3]), .Z(n19) );
  MUX2D0 U24 ( .I0(n13), .I1(u_div_SumTmp_5__4_), .S(quotient[5]), .Z(n20) );
  XNR2D1 U26 ( .A1(u_div_BInv[1]), .A2(quotient[6]), .ZN(n22) );
  XNR2D1 U27 ( .A1(u_div_BInv[1]), .A2(quotient[5]), .ZN(n23) );
  XNR2D1 U28 ( .A1(u_div_BInv[1]), .A2(quotient[4]), .ZN(n24) );
  INVD1 U43 ( .I(quotient[6]), .ZN(n55) );
  INVD1 U53 ( .I(u_div_SumTmp_5__2_), .ZN(n73) );
  INVD1 U54 ( .I(u_div_SumTmp_1__2_), .ZN(n77) );
  MUX2ND0 U55 ( .I0(n52), .I1(n65), .S(quotient[6]), .ZN(n36) );
  MUX2ND0 U56 ( .I0(n57), .I1(n72), .S(quotient[4]), .ZN(n37) );
  INVD1 U57 ( .I(u_div_SumTmp_1__4_), .ZN(n75) );
  XNR2D1 U58 ( .A1(u_div_CryTmp_1__6_), .A2(u_div_PartRem_2__6_), .ZN(n38) );
  XNR2D1 U59 ( .A1(u_div_CryTmp_6__6_), .A2(u_div_PartRem_7__6_), .ZN(n39) );
  XNR2D1 U60 ( .A1(u_div_CryTmp_3__6_), .A2(u_div_PartRem_4__6_), .ZN(n40) );
  XNR2D1 U61 ( .A1(u_div_CryTmp_5__6_), .A2(u_div_PartRem_6__6_), .ZN(n41) );
  XNR2D1 U62 ( .A1(u_div_CryTmp_4__6_), .A2(u_div_PartRem_5__6_), .ZN(n42) );
  XNR2D1 U63 ( .A1(u_div_CryTmp_2__6_), .A2(u_div_PartRem_3__6_), .ZN(n43) );
  INVD1 U64 ( .I(u_div_SumTmp_1__5_), .ZN(n74) );
  MUX2ND0 U65 ( .I0(n55), .I1(n22), .S(quotient[5]), .ZN(n44) );
  MUX2ND0 U66 ( .I0(n58), .I1(n23), .S(quotient[4]), .ZN(n45) );
  INVD1 U69 ( .I(u_div_SumTmp_1__3_), .ZN(n76) );
  XNR2D1 U70 ( .A1(u_div_BInv[1]), .A2(quotient[3]), .ZN(n46) );
  MUX2ND0 U71 ( .I0(n60), .I1(n24), .S(quotient[3]), .ZN(n47) );
  XNR2D1 U73 ( .A1(u_div_BInv[1]), .A2(quotient[2]), .ZN(n49) );
  INVD1 U76 ( .I(b[2]), .ZN(u_div_BInv[2]) );
  INVD1 U77 ( .I(b[3]), .ZN(u_div_BInv[3]) );
  INVD1 U78 ( .I(b[4]), .ZN(u_div_BInv[4]) );
  INVD1 U79 ( .I(b[5]), .ZN(u_div_BInv[5]) );
  XNR2D1 U80 ( .A1(u_div_BInv[1]), .A2(a[8]), .ZN(u_div_SumTmp_7__1_) );
  CKXOR2D1 U81 ( .A1(u_div_BInv[1]), .A2(u_div_PartRem_7__1_), .Z(
        u_div_SumTmp_6__1_) );
  CKND1 U82 ( .I(n51), .ZN(u_div_PartRem_7__6_) );
  CKND1 U83 ( .I(n52), .ZN(u_div_PartRem_7__2_) );
  MUX2ND0 U84 ( .I0(a[12]), .I1(u_div_SumTmp_7__5_), .S(quotient[7]), .ZN(n51)
         );
  CKND1 U85 ( .I(n53), .ZN(u_div_PartRem_6__6_) );
  CKND1 U86 ( .I(n54), .ZN(u_div_PartRem_6__2_) );
  MUX2ND0 U87 ( .I0(n16), .I1(u_div_SumTmp_6__5_), .S(quotient[6]), .ZN(n53)
         );
  CKND1 U88 ( .I(n56), .ZN(u_div_PartRem_5__6_) );
  MUX2ND0 U90 ( .I0(n17), .I1(u_div_SumTmp_5__5_), .S(quotient[5]), .ZN(n56)
         );
  CKND1 U91 ( .I(n59), .ZN(u_div_PartRem_4__6_) );
  MUX2ND0 U92 ( .I0(n20), .I1(u_div_SumTmp_4__5_), .S(quotient[4]), .ZN(n59)
         );
  CKND1 U93 ( .I(n63), .ZN(u_div_PartRem_3__6_) );
  MUX2ND0 U94 ( .I0(n18), .I1(u_div_SumTmp_3__5_), .S(quotient[3]), .ZN(n63)
         );
  MUX2ND0 U95 ( .I0(a[8]), .I1(u_div_SumTmp_7__1_), .S(quotient[7]), .ZN(n52)
         );
  CKND1 U96 ( .I(n66), .ZN(u_div_PartRem_2__6_) );
  CKND1 U97 ( .I(n67), .ZN(u_div_PartRem_2__5_) );
  CKND1 U98 ( .I(n68), .ZN(u_div_PartRem_2__4_) );
  CKND1 U99 ( .I(n69), .ZN(u_div_PartRem_2__3_) );
  MUX2ND0 U101 ( .I0(n19), .I1(u_div_SumTmp_2__5_), .S(quotient[2]), .ZN(n66)
         );
  MUX2ND0 U102 ( .I0(u_div_PartRem_7__1_), .I1(u_div_SumTmp_6__1_), .S(
        quotient[6]), .ZN(n54) );
  MUX2ND0 U104 ( .I0(n67), .I1(n74), .S(quotient[1]), .ZN(u_div_PartRem_1__6_)
         );
  MUX2ND0 U105 ( .I0(n14), .I1(u_div_SumTmp_2__4_), .S(quotient[2]), .ZN(n67)
         );
  MUX2ND0 U106 ( .I0(n68), .I1(n75), .S(quotient[1]), .ZN(u_div_PartRem_1__5_)
         );
  MUX2ND0 U107 ( .I0(n10), .I1(u_div_SumTmp_2__3_), .S(quotient[2]), .ZN(n68)
         );
  MUX2ND0 U108 ( .I0(n69), .I1(n76), .S(quotient[1]), .ZN(u_div_PartRem_1__4_)
         );
  MUX2ND0 U109 ( .I0(n47), .I1(u_div_SumTmp_2__2_), .S(quotient[2]), .ZN(n69)
         );
  MUX2ND0 U110 ( .I0(n70), .I1(n77), .S(quotient[1]), .ZN(u_div_PartRem_1__3_)
         );
  MUX2ND0 U111 ( .I0(n71), .I1(n49), .S(quotient[1]), .ZN(u_div_PartRem_1__2_)
         );
  AO21D0 U2 ( .A1(u_div_PartRem_1__6_), .A2(u_div_CryTmp_0__6_), .B(n78), .Z(
        quotient[0]) );
  MUX2ND0 U3 ( .I0(n66), .I1(n38), .S(quotient[1]), .ZN(n78) );
  CKND0 U5 ( .I(n71), .ZN(quotient[2]) );
  AOI21D0 U6 ( .A1(u_div_CryTmp_2__6_), .A2(u_div_PartRem_3__6_), .B(n80), 
        .ZN(n71) );
  AO21D0 U12 ( .A1(u_div_CryTmp_1__6_), .A2(u_div_PartRem_2__6_), .B(n79), .Z(
        quotient[1]) );
  MUX2ND0 U25 ( .I0(n63), .I1(n43), .S(quotient[2]), .ZN(n79) );
  CKND0 U29 ( .I(u_div_PartRem_2__2_), .ZN(n70) );
  MUX2ND0 U30 ( .I0(n64), .I1(n46), .S(quotient[2]), .ZN(u_div_PartRem_2__2_)
         );
  CKND0 U31 ( .I(n64), .ZN(quotient[3]) );
  AOI21D0 U32 ( .A1(u_div_CryTmp_3__6_), .A2(u_div_PartRem_4__6_), .B(n81), 
        .ZN(n64) );
  MUX2ND0 U33 ( .I0(n59), .I1(n40), .S(quotient[3]), .ZN(n80) );
  CKND0 U34 ( .I(n60), .ZN(quotient[4]) );
  AOI21D0 U35 ( .A1(u_div_CryTmp_4__6_), .A2(u_div_PartRem_5__6_), .B(n82), 
        .ZN(n60) );
  MUX2ND0 U36 ( .I0(n56), .I1(n42), .S(quotient[4]), .ZN(n81) );
  CKND0 U37 ( .I(n58), .ZN(quotient[5]) );
  AOI21D0 U38 ( .A1(u_div_CryTmp_5__6_), .A2(u_div_PartRem_6__6_), .B(n83), 
        .ZN(n58) );
  MUX2ND0 U39 ( .I0(n53), .I1(n41), .S(quotient[5]), .ZN(n82) );
  CKND0 U40 ( .I(u_div_PartRem_5__3_), .ZN(n57) );
  MUX2ND0 U41 ( .I0(n54), .I1(n73), .S(quotient[5]), .ZN(u_div_PartRem_5__3_)
         );
  MUX2ND0 U42 ( .I0(n51), .I1(n39), .S(quotient[6]), .ZN(n83) );
  IOA21D0 U44 ( .A1(u_div_CryTmp_6__6_), .A2(u_div_PartRem_7__6_), .B(
        quotient[7]), .ZN(quotient[6]) );
  MUX2D0 U45 ( .I0(a[9]), .I1(u_div_SumTmp_7__2_), .S(quotient[7]), .Z(n48) );
  CKND0 U46 ( .I(b[1]), .ZN(u_div_BInv[1]) );
  CKND0 U47 ( .I(quotient[7]), .ZN(u_div_PartRem_7__1_) );
  NR2D0 U48 ( .A1(quotient[7]), .A2(b[1]), .ZN(n8) );
  IND2D0 U49 ( .A1(a[8]), .B1(b[1]), .ZN(u_div_CryTmp_7__2_) );
endmodule


module input_trunc_core_BITS5_BIAS1_DIVIDE1 ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   n8, n10, n9;
  wire   [5:1] a;
  wire   [5:1] b;
  wire   [7:0] division_quotient;
  wire   [22:16] fraction;
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
        SYNOPSYS_UNCONNECTED__56, SYNOPSYS_UNCONNECTED__57;

  AN2XD1 U11 ( .A1(division_quotient[0]), .A2(division_quotient[7]), .Z(
        fraction[16]) );
  fp32_normal_finite_wrapper wrapper ( .x({x[31:18], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .y({y[31:18], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .divide_mode(1'b0), .fraction_x({a, SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15, SYNOPSYS_UNCONNECTED__16, 
        SYNOPSYS_UNCONNECTED__17}), .fraction_y({b, SYNOPSYS_UNCONNECTED__18, 
        SYNOPSYS_UNCONNECTED__19, SYNOPSYS_UNCONNECTED__20, 
        SYNOPSYS_UNCONNECTED__21, SYNOPSYS_UNCONNECTED__22, 
        SYNOPSYS_UNCONNECTED__23, SYNOPSYS_UNCONNECTED__24, 
        SYNOPSYS_UNCONNECTED__25, SYNOPSYS_UNCONNECTED__26, 
        SYNOPSYS_UNCONNECTED__27, SYNOPSYS_UNCONNECTED__28, 
        SYNOPSYS_UNCONNECTED__29, SYNOPSYS_UNCONNECTED__30, 
        SYNOPSYS_UNCONNECTED__31, SYNOPSYS_UNCONNECTED__32, 
        SYNOPSYS_UNCONNECTED__33, SYNOPSYS_UNCONNECTED__34, 
        SYNOPSYS_UNCONNECTED__35}), .result_fraction({fraction, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .exponent_adjust({n9, n9, n9}), .result({result[31:16], 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, 
        SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39, 
        SYNOPSYS_UNCONNECTED__40, SYNOPSYS_UNCONNECTED__41, 
        SYNOPSYS_UNCONNECTED__42, SYNOPSYS_UNCONNECTED__43, 
        SYNOPSYS_UNCONNECTED__44, SYNOPSYS_UNCONNECTED__45, 
        SYNOPSYS_UNCONNECTED__46, SYNOPSYS_UNCONNECTED__47, 
        SYNOPSYS_UNCONNECTED__48, SYNOPSYS_UNCONNECTED__49, 
        SYNOPSYS_UNCONNECTED__50, SYNOPSYS_UNCONNECTED__51}) );
  input_trunc_core_BITS5_BIAS1_DIVIDE1_DW_div_uns_6 div_18 ( .a({n8, a, n8, 
        n10, n10, n10, n10, n10, n10, n10}), .b({n8, b, n8}), .quotient({
        SYNOPSYS_UNCONNECTED__52, SYNOPSYS_UNCONNECTED__53, 
        SYNOPSYS_UNCONNECTED__54, SYNOPSYS_UNCONNECTED__55, 
        SYNOPSYS_UNCONNECTED__56, SYNOPSYS_UNCONNECTED__57, division_quotient}) );
  AO22D0 U3 ( .A1(n9), .A2(division_quotient[0]), .B1(division_quotient[7]), 
        .B2(division_quotient[1]), .Z(fraction[17]) );
  AO22D0 U4 ( .A1(n9), .A2(division_quotient[1]), .B1(division_quotient[7]), 
        .B2(division_quotient[2]), .Z(fraction[18]) );
  AO22D0 U5 ( .A1(n9), .A2(division_quotient[2]), .B1(division_quotient[7]), 
        .B2(division_quotient[3]), .Z(fraction[19]) );
  AO22D0 U6 ( .A1(n9), .A2(division_quotient[3]), .B1(division_quotient[7]), 
        .B2(division_quotient[4]), .Z(fraction[20]) );
  AO22D0 U7 ( .A1(n9), .A2(division_quotient[4]), .B1(division_quotient[7]), 
        .B2(division_quotient[5]), .Z(fraction[21]) );
  AO22D0 U8 ( .A1(n9), .A2(division_quotient[5]), .B1(division_quotient[6]), 
        .B2(division_quotient[7]), .Z(fraction[22]) );
  INVD1 U9 ( .I(division_quotient[7]), .ZN(n9) );
  TIEH U10 ( .Z(n8) );
  TIEL U12 ( .ZN(n10) );
endmodule


module input_div_b5_bias1 ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;

  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15;
  assign result[15] = 1'b0;
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

  input_trunc_core_BITS5_BIAS1_DIVIDE1 dut ( .x({x[31:18], 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0}), .y({y[31:18], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .result({result[31:16], SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15}) );
endmodule

