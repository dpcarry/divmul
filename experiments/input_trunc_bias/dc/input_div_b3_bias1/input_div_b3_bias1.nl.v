/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Fri Sep  4 18:45:48 2026
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
  FA1D0 U45 ( .A(N5), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[2]), .CO(
        add_0_root_add_0_root_add_22_2_carry[3]), .S(result[25]) );
  FA1D0 U46 ( .A(N6), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[3]), .CO(
        add_0_root_add_0_root_add_22_2_carry[4]), .S(result[26]) );
  FA1D0 U47 ( .A(N7), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[4]), .CO(
        add_0_root_add_0_root_add_22_2_carry[5]), .S(result[27]) );
  FA1D0 U48 ( .A(N8), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[5]), .CO(
        add_0_root_add_0_root_add_22_2_carry[6]), .S(result[28]) );
  FA1D0 U49 ( .A(N9), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[6]), .CO(
        add_0_root_add_0_root_add_22_2_carry[7]), .S(result[29]) );
  FA1D0 U50 ( .A(N4), .B(exponent_adjust[1]), .CI(n1), .CO(
        add_0_root_add_0_root_add_22_2_carry[2]), .S(result[24]) );
  XOR3D1 U59 ( .A1(N10), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_22_2_carry[7]), .Z(result[30]) );
  INVD1 U64 ( .I(y[29]), .ZN(N17) );
  INVD1 U65 ( .I(y[24]), .ZN(N12) );
  INVD1 U66 ( .I(y[25]), .ZN(N13) );
  INVD1 U67 ( .I(y[26]), .ZN(N14) );
  INVD1 U68 ( .I(y[27]), .ZN(N15) );
  INVD1 U69 ( .I(y[28]), .ZN(N16) );
  CKBD1 U87 ( .I(x[22]), .Z(fraction_x[22]) );
  CKBD1 U88 ( .I(x[21]), .Z(fraction_x[21]) );
  CKBD1 U89 ( .I(x[20]), .Z(fraction_x[20]) );
  CKBD1 U90 ( .I(y[22]), .Z(fraction_y[22]) );
  CKBD1 U91 ( .I(y[21]), .Z(fraction_y[21]) );
  CKBD1 U92 ( .I(y[20]), .Z(fraction_y[20]) );
  CKBD1 U93 ( .I(result_fraction[22]), .Z(result[22]) );
  CKBD1 U94 ( .I(result_fraction[21]), .Z(result[21]) );
  CKBD1 U95 ( .I(result_fraction[20]), .Z(result[20]) );
  CKBD1 U96 ( .I(result_fraction[19]), .Z(result[19]) );
  CKBD1 U97 ( .I(result_fraction[18]), .Z(result[18]) );
  TIEL U110 ( .ZN(n79) );
  CKXOR2D1 U111 ( .A1(exponent_adjust[0]), .A2(N3), .Z(result[23]) );
  CKND0 U119 ( .I(y[23]), .ZN(N11) );
endmodule


module input_trunc_core_BITS3_BIAS1_DIVIDE1_DW_div_uns_6 ( a, b, quotient, 
        remainder, divide_by_0 );
  input [9:0] a;
  input [4:0] b;
  output [9:0] quotient;
  output [4:0] remainder;
  output divide_by_0;
  wire   u_div_SumTmp_1__2_, u_div_SumTmp_1__3_, u_div_SumTmp_2__2_,
         u_div_SumTmp_2__3_, u_div_SumTmp_3__2_, u_div_SumTmp_3__3_,
         u_div_SumTmp_4__1_, u_div_SumTmp_4__2_, u_div_SumTmp_4__3_,
         u_div_SumTmp_5__1_, u_div_SumTmp_5__2_, u_div_SumTmp_5__3_,
         u_div_CryTmp_0__3_, u_div_CryTmp_0__4_, u_div_CryTmp_1__3_,
         u_div_CryTmp_1__4_, u_div_CryTmp_2__3_, u_div_CryTmp_2__4_,
         u_div_CryTmp_3__3_, u_div_CryTmp_3__4_, u_div_CryTmp_4__3_,
         u_div_CryTmp_4__4_, u_div_CryTmp_5__2_, u_div_CryTmp_5__3_,
         u_div_PartRem_1__2_, u_div_PartRem_1__3_, u_div_PartRem_1__4_,
         u_div_PartRem_2__2_, u_div_PartRem_2__3_, u_div_PartRem_2__4_,
         u_div_PartRem_3__3_, u_div_PartRem_3__4_, u_div_PartRem_4__2_,
         u_div_PartRem_4__4_, u_div_PartRem_5__1_, u_div_PartRem_5__2_,
         u_div_PartRem_5__4_, n3, n4, n5, n6, n7, n9, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n33, n34, n35, n36, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49;
  wire   [3:1] u_div_BInv;

  FA1D0 u_div_u_fa_PartRem_0_0_3 ( .A(u_div_PartRem_1__3_), .B(u_div_BInv[3]), 
        .CI(u_div_CryTmp_0__3_), .CO(u_div_CryTmp_0__4_) );
  FA1D0 u_div_u_fa_PartRem_0_0_2 ( .A(u_div_PartRem_1__2_), .B(u_div_BInv[2]), 
        .CI(n6), .CO(u_div_CryTmp_0__3_) );
  FA1D0 u_div_u_fa_PartRem_0_1_2 ( .A(u_div_PartRem_2__2_), .B(u_div_BInv[2]), 
        .CI(n5), .CO(u_div_CryTmp_1__3_), .S(u_div_SumTmp_1__2_) );
  FA1D0 u_div_u_fa_PartRem_0_2_2 ( .A(n22), .B(u_div_BInv[2]), .CI(n3), .CO(
        u_div_CryTmp_2__3_), .S(u_div_SumTmp_2__2_) );
  FA1D0 u_div_u_fa_PartRem_0_3_2 ( .A(u_div_PartRem_4__2_), .B(u_div_BInv[2]), 
        .CI(n4), .CO(u_div_CryTmp_3__3_), .S(u_div_SumTmp_3__2_) );
  FA1D0 u_div_u_fa_PartRem_0_4_2 ( .A(u_div_PartRem_5__2_), .B(u_div_BInv[2]), 
        .CI(n7), .CO(u_div_CryTmp_4__3_), .S(u_div_SumTmp_4__2_) );
  FA1D0 u_div_u_fa_PartRem_0_5_2 ( .A(a[7]), .B(u_div_BInv[2]), .CI(
        u_div_CryTmp_5__2_), .CO(u_div_CryTmp_5__3_), .S(u_div_SumTmp_5__2_)
         );
  FA1D0 u_div_u_fa_PartRem_0_1_3 ( .A(u_div_PartRem_2__3_), .B(u_div_BInv[3]), 
        .CI(u_div_CryTmp_1__3_), .CO(u_div_CryTmp_1__4_), .S(
        u_div_SumTmp_1__3_) );
  FA1D0 u_div_u_fa_PartRem_0_2_3 ( .A(u_div_PartRem_3__3_), .B(u_div_BInv[3]), 
        .CI(u_div_CryTmp_2__3_), .CO(u_div_CryTmp_2__4_), .S(
        u_div_SumTmp_2__3_) );
  FA1D0 u_div_u_fa_PartRem_0_3_3 ( .A(n17), .B(u_div_BInv[3]), .CI(
        u_div_CryTmp_3__3_), .CO(u_div_CryTmp_3__4_), .S(u_div_SumTmp_3__3_)
         );
  FA1D0 u_div_u_fa_PartRem_0_4_3 ( .A(n24), .B(u_div_BInv[3]), .CI(
        u_div_CryTmp_4__3_), .CO(u_div_CryTmp_4__4_), .S(u_div_SumTmp_4__3_)
         );
  FA1D0 u_div_u_fa_PartRem_0_5_3 ( .A(a[8]), .B(u_div_BInv[3]), .CI(
        u_div_CryTmp_5__3_), .CO(quotient[5]), .S(u_div_SumTmp_5__3_) );
  INVD1 U3 ( .I(u_div_SumTmp_4__2_), .ZN(n36) );
  AN2XD1 U6 ( .A1(quotient[3]), .A2(u_div_BInv[1]), .Z(n3) );
  AN2XD1 U7 ( .A1(quotient[4]), .A2(u_div_BInv[1]), .Z(n4) );
  AN2XD1 U8 ( .A1(quotient[2]), .A2(u_div_BInv[1]), .Z(n5) );
  AN2XD1 U9 ( .A1(u_div_BInv[1]), .A2(quotient[1]), .Z(n6) );
  XNR2D1 U12 ( .A1(u_div_BInv[1]), .A2(quotient[4]), .ZN(n9) );
  INVD1 U21 ( .I(quotient[4]), .ZN(n30) );
  INVD1 U29 ( .I(u_div_SumTmp_3__2_), .ZN(n43) );
  INVD1 U30 ( .I(u_div_SumTmp_1__2_), .ZN(n45) );
  MUX2ND0 U31 ( .I0(n27), .I1(n36), .S(quotient[4]), .ZN(n17) );
  INVD1 U33 ( .I(u_div_SumTmp_2__3_), .ZN(n42) );
  XNR2D1 U34 ( .A1(u_div_CryTmp_1__4_), .A2(u_div_PartRem_2__4_), .ZN(n18) );
  XNR2D1 U35 ( .A1(u_div_CryTmp_4__4_), .A2(u_div_PartRem_5__4_), .ZN(n19) );
  XNR2D1 U36 ( .A1(u_div_CryTmp_3__4_), .A2(u_div_PartRem_4__4_), .ZN(n20) );
  XNR2D1 U37 ( .A1(u_div_CryTmp_2__4_), .A2(u_div_PartRem_3__4_), .ZN(n21) );
  INVD1 U38 ( .I(u_div_SumTmp_1__3_), .ZN(n44) );
  MUX2ND0 U39 ( .I0(n30), .I1(n9), .S(quotient[3]), .ZN(n22) );
  XNR2D1 U41 ( .A1(u_div_BInv[1]), .A2(quotient[3]), .ZN(n23) );
  XNR2D1 U43 ( .A1(u_div_BInv[1]), .A2(quotient[2]), .ZN(n25) );
  INVD1 U46 ( .I(b[2]), .ZN(u_div_BInv[2]) );
  INVD1 U48 ( .I(b[3]), .ZN(u_div_BInv[3]) );
  XNR2D1 U49 ( .A1(u_div_BInv[1]), .A2(a[6]), .ZN(u_div_SumTmp_5__1_) );
  CKXOR2D1 U50 ( .A1(u_div_BInv[1]), .A2(u_div_PartRem_5__1_), .Z(
        u_div_SumTmp_4__1_) );
  CKND1 U51 ( .I(n26), .ZN(u_div_PartRem_5__4_) );
  CKND1 U52 ( .I(n27), .ZN(u_div_PartRem_5__2_) );
  MUX2ND0 U53 ( .I0(a[8]), .I1(u_div_SumTmp_5__3_), .S(quotient[5]), .ZN(n26)
         );
  CKND1 U54 ( .I(n28), .ZN(u_div_PartRem_4__4_) );
  CKND1 U55 ( .I(n29), .ZN(u_div_PartRem_4__2_) );
  MUX2ND0 U56 ( .I0(n24), .I1(u_div_SumTmp_4__3_), .S(quotient[4]), .ZN(n28)
         );
  CKND1 U57 ( .I(n33), .ZN(u_div_PartRem_3__4_) );
  MUX2ND0 U59 ( .I0(n17), .I1(u_div_SumTmp_3__3_), .S(quotient[3]), .ZN(n33)
         );
  MUX2ND0 U60 ( .I0(a[6]), .I1(u_div_SumTmp_5__1_), .S(quotient[5]), .ZN(n27)
         );
  CKND1 U62 ( .I(n39), .ZN(u_div_PartRem_2__3_) );
  MUX2ND0 U64 ( .I0(u_div_PartRem_5__1_), .I1(u_div_SumTmp_4__1_), .S(
        quotient[4]), .ZN(n29) );
  MUX2ND0 U66 ( .I0(n39), .I1(n44), .S(quotient[1]), .ZN(u_div_PartRem_1__4_)
         );
  MUX2ND0 U67 ( .I0(n22), .I1(u_div_SumTmp_2__2_), .S(quotient[2]), .ZN(n39)
         );
  MUX2ND0 U68 ( .I0(n40), .I1(n45), .S(quotient[1]), .ZN(u_div_PartRem_1__3_)
         );
  MUX2ND0 U69 ( .I0(n41), .I1(n25), .S(quotient[1]), .ZN(u_div_PartRem_1__2_)
         );
  AO21D0 U1 ( .A1(u_div_PartRem_1__4_), .A2(u_div_CryTmp_0__4_), .B(n46), .Z(
        quotient[0]) );
  MUX2ND0 U2 ( .I0(n38), .I1(n18), .S(quotient[1]), .ZN(n46) );
  CKND0 U4 ( .I(n41), .ZN(quotient[2]) );
  AOI21D0 U5 ( .A1(u_div_CryTmp_2__4_), .A2(u_div_PartRem_3__4_), .B(n48), 
        .ZN(n41) );
  AO21D0 U10 ( .A1(u_div_CryTmp_1__4_), .A2(u_div_PartRem_2__4_), .B(n47), .Z(
        quotient[1]) );
  MUX2ND0 U11 ( .I0(n33), .I1(n21), .S(quotient[2]), .ZN(n47) );
  CKND0 U13 ( .I(u_div_PartRem_2__4_), .ZN(n38) );
  MUX2ND0 U14 ( .I0(n34), .I1(n42), .S(quotient[2]), .ZN(u_div_PartRem_2__4_)
         );
  CKND0 U15 ( .I(u_div_PartRem_2__2_), .ZN(n40) );
  MUX2ND0 U16 ( .I0(n35), .I1(n23), .S(quotient[2]), .ZN(u_div_PartRem_2__2_)
         );
  CKND0 U17 ( .I(n35), .ZN(quotient[3]) );
  AOI21D0 U18 ( .A1(u_div_CryTmp_3__4_), .A2(u_div_PartRem_4__4_), .B(n49), 
        .ZN(n35) );
  MUX2ND0 U19 ( .I0(n28), .I1(n20), .S(quotient[3]), .ZN(n48) );
  CKND0 U20 ( .I(u_div_PartRem_3__3_), .ZN(n34) );
  MUX2ND0 U22 ( .I0(n29), .I1(n43), .S(quotient[3]), .ZN(u_div_PartRem_3__3_)
         );
  MUX2ND0 U23 ( .I0(n26), .I1(n19), .S(quotient[4]), .ZN(n49) );
  IOA21D0 U24 ( .A1(u_div_CryTmp_4__4_), .A2(u_div_PartRem_5__4_), .B(
        quotient[5]), .ZN(quotient[4]) );
  MUX2D0 U25 ( .I0(a[7]), .I1(u_div_SumTmp_5__2_), .S(quotient[5]), .Z(n24) );
  CKND0 U26 ( .I(b[1]), .ZN(u_div_BInv[1]) );
  CKND0 U27 ( .I(quotient[5]), .ZN(u_div_PartRem_5__1_) );
  NR2D0 U28 ( .A1(quotient[5]), .A2(b[1]), .ZN(n7) );
  IND2D0 U32 ( .A1(a[6]), .B1(b[1]), .ZN(u_div_CryTmp_5__2_) );
endmodule


module input_trunc_core_BITS3_BIAS1_DIVIDE1 ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   n6, n8, n7;
  wire   [3:1] a;
  wire   [3:1] b;
  wire   [5:0] division_quotient;
  wire   [22:18] fraction;
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

  AN2XD1 U9 ( .A1(division_quotient[0]), .A2(division_quotient[5]), .Z(
        fraction[18]) );
  fp32_normal_finite_wrapper wrapper ( .x({x[31:20], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .y({y[31:20], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0}), .divide_mode(1'b0), .fraction_x({a, 
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19}), .fraction_y({b, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31, 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, 
        SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39}), 
        .result_fraction({fraction, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .exponent_adjust({n7, n7, n7}), .result({result[31:18], 
        SYNOPSYS_UNCONNECTED__40, SYNOPSYS_UNCONNECTED__41, 
        SYNOPSYS_UNCONNECTED__42, SYNOPSYS_UNCONNECTED__43, 
        SYNOPSYS_UNCONNECTED__44, SYNOPSYS_UNCONNECTED__45, 
        SYNOPSYS_UNCONNECTED__46, SYNOPSYS_UNCONNECTED__47, 
        SYNOPSYS_UNCONNECTED__48, SYNOPSYS_UNCONNECTED__49, 
        SYNOPSYS_UNCONNECTED__50, SYNOPSYS_UNCONNECTED__51, 
        SYNOPSYS_UNCONNECTED__52, SYNOPSYS_UNCONNECTED__53, 
        SYNOPSYS_UNCONNECTED__54, SYNOPSYS_UNCONNECTED__55, 
        SYNOPSYS_UNCONNECTED__56, SYNOPSYS_UNCONNECTED__57}) );
  input_trunc_core_BITS3_BIAS1_DIVIDE1_DW_div_uns_6 div_18 ( .a({n6, a, n6, n8, 
        n8, n8, n8, n8}), .b({n6, b, n6}), .quotient({SYNOPSYS_UNCONNECTED__58, 
        SYNOPSYS_UNCONNECTED__59, SYNOPSYS_UNCONNECTED__60, 
        SYNOPSYS_UNCONNECTED__61, division_quotient}) );
  AO22D0 U3 ( .A1(n7), .A2(division_quotient[0]), .B1(division_quotient[5]), 
        .B2(division_quotient[1]), .Z(fraction[19]) );
  AO22D0 U4 ( .A1(n7), .A2(division_quotient[1]), .B1(division_quotient[5]), 
        .B2(division_quotient[2]), .Z(fraction[20]) );
  AO22D0 U5 ( .A1(n7), .A2(division_quotient[2]), .B1(division_quotient[5]), 
        .B2(division_quotient[3]), .Z(fraction[21]) );
  AO22D0 U6 ( .A1(n7), .A2(division_quotient[3]), .B1(division_quotient[4]), 
        .B2(division_quotient[5]), .Z(fraction[22]) );
  INVD1 U7 ( .I(division_quotient[5]), .ZN(n7) );
  TIEH U8 ( .Z(n6) );
  TIEL U10 ( .ZN(n8) );
endmodule


module input_div_b3_bias1 ( x, y, result );
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
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17;
  assign result[17] = 1'b0;
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

  input_trunc_core_BITS3_BIAS1_DIVIDE1 dut ( .x({x[31:20], 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y({y[31:20], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .result({result[31:18], 
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17}) );
endmodule

