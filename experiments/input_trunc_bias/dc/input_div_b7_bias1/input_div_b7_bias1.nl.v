/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Fri Sep  4 18:50:09 2026
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
  FA1D0 U37 ( .A(N5), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[2]), .CO(
        add_0_root_add_0_root_add_22_2_carry[3]), .S(result[25]) );
  FA1D0 U38 ( .A(N6), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[3]), .CO(
        add_0_root_add_0_root_add_22_2_carry[4]), .S(result[26]) );
  FA1D0 U39 ( .A(N7), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[4]), .CO(
        add_0_root_add_0_root_add_22_2_carry[5]), .S(result[27]) );
  FA1D0 U40 ( .A(N8), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[5]), .CO(
        add_0_root_add_0_root_add_22_2_carry[6]), .S(result[28]) );
  FA1D0 U41 ( .A(N9), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[6]), .CO(
        add_0_root_add_0_root_add_22_2_carry[7]), .S(result[29]) );
  FA1D0 U42 ( .A(N4), .B(exponent_adjust[1]), .CI(n1), .CO(
        add_0_root_add_0_root_add_22_2_carry[2]), .S(result[24]) );
  XOR3D1 U51 ( .A1(N10), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_22_2_carry[7]), .Z(result[30]) );
  INVD1 U59 ( .I(y[29]), .ZN(N17) );
  INVD1 U60 ( .I(y[24]), .ZN(N12) );
  INVD1 U61 ( .I(y[25]), .ZN(N13) );
  INVD1 U62 ( .I(y[26]), .ZN(N14) );
  INVD1 U63 ( .I(y[27]), .ZN(N15) );
  INVD1 U64 ( .I(y[28]), .ZN(N16) );
  CKBD1 U87 ( .I(x[22]), .Z(fraction_x[22]) );
  CKBD1 U88 ( .I(x[21]), .Z(fraction_x[21]) );
  CKBD1 U89 ( .I(x[20]), .Z(fraction_x[20]) );
  CKBD1 U90 ( .I(x[19]), .Z(fraction_x[19]) );
  CKBD1 U91 ( .I(x[18]), .Z(fraction_x[18]) );
  CKBD1 U92 ( .I(x[17]), .Z(fraction_x[17]) );
  CKBD1 U93 ( .I(x[16]), .Z(fraction_x[16]) );
  CKBD1 U94 ( .I(y[22]), .Z(fraction_y[22]) );
  CKBD1 U95 ( .I(y[21]), .Z(fraction_y[21]) );
  CKBD1 U96 ( .I(y[20]), .Z(fraction_y[20]) );
  CKBD1 U97 ( .I(y[19]), .Z(fraction_y[19]) );
  CKBD1 U98 ( .I(y[18]), .Z(fraction_y[18]) );
  CKBD1 U99 ( .I(y[17]), .Z(fraction_y[17]) );
  CKBD1 U100 ( .I(y[16]), .Z(fraction_y[16]) );
  CKBD1 U101 ( .I(result_fraction[22]), .Z(result[22]) );
  CKBD1 U102 ( .I(result_fraction[21]), .Z(result[21]) );
  CKBD1 U103 ( .I(result_fraction[20]), .Z(result[20]) );
  CKBD1 U104 ( .I(result_fraction[19]), .Z(result[19]) );
  CKBD1 U105 ( .I(result_fraction[18]), .Z(result[18]) );
  CKBD1 U106 ( .I(result_fraction[17]), .Z(result[17]) );
  CKBD1 U107 ( .I(result_fraction[16]), .Z(result[16]) );
  CKBD1 U108 ( .I(result_fraction[15]), .Z(result[15]) );
  CKBD1 U109 ( .I(result_fraction[14]), .Z(result[14]) );
  TIEL U110 ( .ZN(n79) );
  CKXOR2D1 U111 ( .A1(exponent_adjust[0]), .A2(N3), .Z(result[23]) );
  CKND0 U119 ( .I(y[23]), .ZN(N11) );
endmodule


module input_trunc_core_BITS7_BIAS1_DIVIDE1_DW_div_uns_6 ( a, b, quotient, 
        remainder, divide_by_0 );
  input [17:0] a;
  input [8:0] b;
  output [17:0] quotient;
  output [8:0] remainder;
  output divide_by_0;
  wire   u_div_SumTmp_1__2_, u_div_SumTmp_1__3_, u_div_SumTmp_1__4_,
         u_div_SumTmp_1__5_, u_div_SumTmp_1__6_, u_div_SumTmp_1__7_,
         u_div_SumTmp_2__2_, u_div_SumTmp_2__3_, u_div_SumTmp_2__4_,
         u_div_SumTmp_2__5_, u_div_SumTmp_2__6_, u_div_SumTmp_2__7_,
         u_div_SumTmp_3__2_, u_div_SumTmp_3__3_, u_div_SumTmp_3__4_,
         u_div_SumTmp_3__5_, u_div_SumTmp_3__6_, u_div_SumTmp_3__7_,
         u_div_SumTmp_4__2_, u_div_SumTmp_4__3_, u_div_SumTmp_4__4_,
         u_div_SumTmp_4__5_, u_div_SumTmp_4__6_, u_div_SumTmp_4__7_,
         u_div_SumTmp_5__2_, u_div_SumTmp_5__3_, u_div_SumTmp_5__4_,
         u_div_SumTmp_5__5_, u_div_SumTmp_5__6_, u_div_SumTmp_5__7_,
         u_div_SumTmp_6__2_, u_div_SumTmp_6__3_, u_div_SumTmp_6__4_,
         u_div_SumTmp_6__5_, u_div_SumTmp_6__6_, u_div_SumTmp_6__7_,
         u_div_SumTmp_7__2_, u_div_SumTmp_7__3_, u_div_SumTmp_7__4_,
         u_div_SumTmp_7__5_, u_div_SumTmp_7__6_, u_div_SumTmp_7__7_,
         u_div_SumTmp_8__1_, u_div_SumTmp_8__2_, u_div_SumTmp_8__3_,
         u_div_SumTmp_8__4_, u_div_SumTmp_8__5_, u_div_SumTmp_8__6_,
         u_div_SumTmp_8__7_, u_div_SumTmp_9__1_, u_div_SumTmp_9__2_,
         u_div_SumTmp_9__3_, u_div_SumTmp_9__4_, u_div_SumTmp_9__5_,
         u_div_SumTmp_9__6_, u_div_SumTmp_9__7_, u_div_CryTmp_0__3_,
         u_div_CryTmp_0__4_, u_div_CryTmp_0__5_, u_div_CryTmp_0__6_,
         u_div_CryTmp_0__7_, u_div_CryTmp_0__8_, u_div_CryTmp_1__3_,
         u_div_CryTmp_1__4_, u_div_CryTmp_1__5_, u_div_CryTmp_1__6_,
         u_div_CryTmp_1__7_, u_div_CryTmp_1__8_, u_div_CryTmp_2__3_,
         u_div_CryTmp_2__4_, u_div_CryTmp_2__5_, u_div_CryTmp_2__6_,
         u_div_CryTmp_2__7_, u_div_CryTmp_2__8_, u_div_CryTmp_3__3_,
         u_div_CryTmp_3__4_, u_div_CryTmp_3__5_, u_div_CryTmp_3__6_,
         u_div_CryTmp_3__7_, u_div_CryTmp_3__8_, u_div_CryTmp_4__3_,
         u_div_CryTmp_4__4_, u_div_CryTmp_4__5_, u_div_CryTmp_4__6_,
         u_div_CryTmp_4__7_, u_div_CryTmp_4__8_, u_div_CryTmp_5__3_,
         u_div_CryTmp_5__4_, u_div_CryTmp_5__5_, u_div_CryTmp_5__6_,
         u_div_CryTmp_5__7_, u_div_CryTmp_5__8_, u_div_CryTmp_6__3_,
         u_div_CryTmp_6__4_, u_div_CryTmp_6__5_, u_div_CryTmp_6__6_,
         u_div_CryTmp_6__7_, u_div_CryTmp_6__8_, u_div_CryTmp_7__3_,
         u_div_CryTmp_7__4_, u_div_CryTmp_7__5_, u_div_CryTmp_7__6_,
         u_div_CryTmp_7__7_, u_div_CryTmp_7__8_, u_div_CryTmp_8__3_,
         u_div_CryTmp_8__4_, u_div_CryTmp_8__5_, u_div_CryTmp_8__6_,
         u_div_CryTmp_8__7_, u_div_CryTmp_8__8_, u_div_CryTmp_9__2_,
         u_div_CryTmp_9__3_, u_div_CryTmp_9__4_, u_div_CryTmp_9__5_,
         u_div_CryTmp_9__6_, u_div_CryTmp_9__7_, u_div_PartRem_1__2_,
         u_div_PartRem_1__3_, u_div_PartRem_1__4_, u_div_PartRem_1__5_,
         u_div_PartRem_1__6_, u_div_PartRem_1__7_, u_div_PartRem_1__8_,
         u_div_PartRem_2__2_, u_div_PartRem_2__3_, u_div_PartRem_2__4_,
         u_div_PartRem_2__5_, u_div_PartRem_2__6_, u_div_PartRem_2__7_,
         u_div_PartRem_2__8_, u_div_PartRem_3__8_, u_div_PartRem_4__8_,
         u_div_PartRem_5__8_, u_div_PartRem_6__8_, u_div_PartRem_7__3_,
         u_div_PartRem_7__8_, u_div_PartRem_8__2_, u_div_PartRem_8__8_,
         u_div_PartRem_9__1_, u_div_PartRem_9__2_, u_div_PartRem_9__8_, n3, n4,
         n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n44, n45, n46, n47, n48,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n118, n119, n120, n121, n122, n123, n124, n125;
  wire   [7:1] u_div_BInv;

  FA1D0 u_div_u_fa_PartRem_0_0_7 ( .A(u_div_PartRem_1__7_), .B(u_div_BInv[7]), 
        .CI(u_div_CryTmp_0__7_), .CO(u_div_CryTmp_0__8_) );
  FA1D0 u_div_u_fa_PartRem_0_0_5 ( .A(u_div_PartRem_1__5_), .B(u_div_BInv[5]), 
        .CI(u_div_CryTmp_0__5_), .CO(u_div_CryTmp_0__6_) );
  FA1D0 u_div_u_fa_PartRem_0_0_6 ( .A(u_div_PartRem_1__6_), .B(u_div_BInv[6]), 
        .CI(u_div_CryTmp_0__6_), .CO(u_div_CryTmp_0__7_) );
  FA1D0 u_div_u_fa_PartRem_0_1_6 ( .A(u_div_PartRem_2__6_), .B(u_div_BInv[6]), 
        .CI(u_div_CryTmp_1__6_), .CO(u_div_CryTmp_1__7_), .S(
        u_div_SumTmp_1__6_) );
  FA1D0 u_div_u_fa_PartRem_0_0_3 ( .A(u_div_PartRem_1__3_), .B(u_div_BInv[3]), 
        .CI(u_div_CryTmp_0__3_), .CO(u_div_CryTmp_0__4_) );
  FA1D0 u_div_u_fa_PartRem_0_0_4 ( .A(u_div_PartRem_1__4_), .B(u_div_BInv[4]), 
        .CI(u_div_CryTmp_0__4_), .CO(u_div_CryTmp_0__5_) );
  FA1D0 u_div_u_fa_PartRem_0_1_5 ( .A(u_div_PartRem_2__5_), .B(u_div_BInv[5]), 
        .CI(u_div_CryTmp_1__5_), .CO(u_div_CryTmp_1__6_), .S(
        u_div_SumTmp_1__5_) );
  FA1D0 u_div_u_fa_PartRem_0_1_4 ( .A(u_div_PartRem_2__4_), .B(u_div_BInv[4]), 
        .CI(u_div_CryTmp_1__4_), .CO(u_div_CryTmp_1__5_), .S(
        u_div_SumTmp_1__4_) );
  FA1D0 u_div_u_fa_PartRem_0_1_3 ( .A(u_div_PartRem_2__3_), .B(u_div_BInv[3]), 
        .CI(u_div_CryTmp_1__3_), .CO(u_div_CryTmp_1__4_), .S(
        u_div_SumTmp_1__3_) );
  FA1D0 u_div_u_fa_PartRem_0_2_6 ( .A(n34), .B(u_div_BInv[6]), .CI(
        u_div_CryTmp_2__6_), .CO(u_div_CryTmp_2__7_), .S(u_div_SumTmp_2__6_)
         );
  FA1D0 u_div_u_fa_PartRem_0_1_2 ( .A(u_div_PartRem_2__2_), .B(u_div_BInv[2]), 
        .CI(n9), .CO(u_div_CryTmp_1__3_), .S(u_div_SumTmp_1__2_) );
  FA1D0 u_div_u_fa_PartRem_0_2_5 ( .A(n27), .B(u_div_BInv[5]), .CI(
        u_div_CryTmp_2__5_), .CO(u_div_CryTmp_2__6_), .S(u_div_SumTmp_2__5_)
         );
  FA1D0 u_div_u_fa_PartRem_0_2_4 ( .A(n20), .B(u_div_BInv[4]), .CI(
        u_div_CryTmp_2__4_), .CO(u_div_CryTmp_2__5_), .S(u_div_SumTmp_2__4_)
         );
  FA1D0 u_div_u_fa_PartRem_0_3_6 ( .A(n33), .B(u_div_BInv[6]), .CI(
        u_div_CryTmp_3__6_), .CO(u_div_CryTmp_3__7_), .S(u_div_SumTmp_3__6_)
         );
  FA1D0 u_div_u_fa_PartRem_0_2_3 ( .A(n14), .B(u_div_BInv[3]), .CI(
        u_div_CryTmp_2__3_), .CO(u_div_CryTmp_2__4_), .S(u_div_SumTmp_2__3_)
         );
  FA1D0 u_div_u_fa_PartRem_0_3_5 ( .A(n26), .B(u_div_BInv[5]), .CI(
        u_div_CryTmp_3__5_), .CO(u_div_CryTmp_3__6_), .S(u_div_SumTmp_3__5_)
         );
  FA1D0 u_div_u_fa_PartRem_0_2_2 ( .A(n78), .B(u_div_BInv[2]), .CI(n4), .CO(
        u_div_CryTmp_2__3_), .S(u_div_SumTmp_2__2_) );
  FA1D0 u_div_u_fa_PartRem_0_3_4 ( .A(n19), .B(u_div_BInv[4]), .CI(
        u_div_CryTmp_3__4_), .CO(u_div_CryTmp_3__5_), .S(u_div_SumTmp_3__4_)
         );
  FA1D0 u_div_u_fa_PartRem_0_4_6 ( .A(n32), .B(u_div_BInv[6]), .CI(
        u_div_CryTmp_4__6_), .CO(u_div_CryTmp_4__7_), .S(u_div_SumTmp_4__6_)
         );
  FA1D0 u_div_u_fa_PartRem_0_3_3 ( .A(n13), .B(u_div_BInv[3]), .CI(
        u_div_CryTmp_3__3_), .CO(u_div_CryTmp_3__4_), .S(u_div_SumTmp_3__3_)
         );
  FA1D0 u_div_u_fa_PartRem_0_4_5 ( .A(n25), .B(u_div_BInv[5]), .CI(
        u_div_CryTmp_4__5_), .CO(u_div_CryTmp_4__6_), .S(u_div_SumTmp_4__5_)
         );
  FA1D0 u_div_u_fa_PartRem_0_3_2 ( .A(n77), .B(u_div_BInv[2]), .CI(n8), .CO(
        u_div_CryTmp_3__3_), .S(u_div_SumTmp_3__2_) );
  FA1D0 u_div_u_fa_PartRem_0_4_4 ( .A(n18), .B(u_div_BInv[4]), .CI(
        u_div_CryTmp_4__4_), .CO(u_div_CryTmp_4__5_), .S(u_div_SumTmp_4__4_)
         );
  FA1D0 u_div_u_fa_PartRem_0_5_6 ( .A(n31), .B(u_div_BInv[6]), .CI(
        u_div_CryTmp_5__6_), .CO(u_div_CryTmp_5__7_), .S(u_div_SumTmp_5__6_)
         );
  FA1D0 u_div_u_fa_PartRem_0_4_3 ( .A(n12), .B(u_div_BInv[3]), .CI(
        u_div_CryTmp_4__3_), .CO(u_div_CryTmp_4__4_), .S(u_div_SumTmp_4__3_)
         );
  FA1D0 u_div_u_fa_PartRem_0_5_5 ( .A(n24), .B(u_div_BInv[5]), .CI(
        u_div_CryTmp_5__5_), .CO(u_div_CryTmp_5__6_), .S(u_div_SumTmp_5__5_)
         );
  FA1D0 u_div_u_fa_PartRem_0_4_2 ( .A(n76), .B(u_div_BInv[2]), .CI(n7), .CO(
        u_div_CryTmp_4__3_), .S(u_div_SumTmp_4__2_) );
  FA1D0 u_div_u_fa_PartRem_0_5_4 ( .A(n65), .B(u_div_BInv[4]), .CI(
        u_div_CryTmp_5__4_), .CO(u_div_CryTmp_5__5_), .S(u_div_SumTmp_5__4_)
         );
  FA1D0 u_div_u_fa_PartRem_0_6_6 ( .A(n35), .B(u_div_BInv[6]), .CI(
        u_div_CryTmp_6__6_), .CO(u_div_CryTmp_6__7_), .S(u_div_SumTmp_6__6_)
         );
  FA1D0 u_div_u_fa_PartRem_0_5_3 ( .A(n11), .B(u_div_BInv[3]), .CI(
        u_div_CryTmp_5__3_), .CO(u_div_CryTmp_5__4_), .S(u_div_SumTmp_5__3_)
         );
  FA1D0 u_div_u_fa_PartRem_0_6_5 ( .A(n28), .B(u_div_BInv[5]), .CI(
        u_div_CryTmp_6__5_), .CO(u_div_CryTmp_6__6_), .S(u_div_SumTmp_6__5_)
         );
  FA1D0 u_div_u_fa_PartRem_0_5_2 ( .A(n75), .B(u_div_BInv[2]), .CI(n6), .CO(
        u_div_CryTmp_5__3_), .S(u_div_SumTmp_5__2_) );
  FA1D0 u_div_u_fa_PartRem_0_6_4 ( .A(n21), .B(u_div_BInv[4]), .CI(
        u_div_CryTmp_6__4_), .CO(u_div_CryTmp_6__5_), .S(u_div_SumTmp_6__4_)
         );
  FA1D0 u_div_u_fa_PartRem_0_7_6 ( .A(n30), .B(u_div_BInv[6]), .CI(
        u_div_CryTmp_7__6_), .CO(u_div_CryTmp_7__7_), .S(u_div_SumTmp_7__6_)
         );
  FA1D0 u_div_u_fa_PartRem_0_6_3 ( .A(u_div_PartRem_7__3_), .B(u_div_BInv[3]), 
        .CI(u_div_CryTmp_6__3_), .CO(u_div_CryTmp_6__4_), .S(
        u_div_SumTmp_6__3_) );
  FA1D0 u_div_u_fa_PartRem_0_7_5 ( .A(n23), .B(u_div_BInv[5]), .CI(
        u_div_CryTmp_7__5_), .CO(u_div_CryTmp_7__6_), .S(u_div_SumTmp_7__5_)
         );
  FA1D0 u_div_u_fa_PartRem_0_6_2 ( .A(n74), .B(u_div_BInv[2]), .CI(n5), .CO(
        u_div_CryTmp_6__3_), .S(u_div_SumTmp_6__2_) );
  FA1D0 u_div_u_fa_PartRem_0_7_4 ( .A(n17), .B(u_div_BInv[4]), .CI(
        u_div_CryTmp_7__4_), .CO(u_div_CryTmp_7__5_), .S(u_div_SumTmp_7__4_)
         );
  FA1D0 u_div_u_fa_PartRem_0_8_6 ( .A(n29), .B(u_div_BInv[6]), .CI(
        u_div_CryTmp_8__6_), .CO(u_div_CryTmp_8__7_), .S(u_div_SumTmp_8__6_)
         );
  FA1D0 u_div_u_fa_PartRem_0_7_3 ( .A(n64), .B(u_div_BInv[3]), .CI(
        u_div_CryTmp_7__3_), .CO(u_div_CryTmp_7__4_), .S(u_div_SumTmp_7__3_)
         );
  FA1D0 u_div_u_fa_PartRem_0_8_5 ( .A(n22), .B(u_div_BInv[5]), .CI(
        u_div_CryTmp_8__5_), .CO(u_div_CryTmp_8__6_), .S(u_div_SumTmp_8__5_)
         );
  FA1D0 u_div_u_fa_PartRem_0_7_2 ( .A(u_div_PartRem_8__2_), .B(u_div_BInv[2]), 
        .CI(n3), .CO(u_div_CryTmp_7__3_), .S(u_div_SumTmp_7__2_) );
  FA1D0 u_div_u_fa_PartRem_0_9_6 ( .A(a[15]), .B(u_div_BInv[6]), .CI(
        u_div_CryTmp_9__6_), .CO(u_div_CryTmp_9__7_), .S(u_div_SumTmp_9__6_)
         );
  FA1D0 u_div_u_fa_PartRem_0_8_4 ( .A(n16), .B(u_div_BInv[4]), .CI(
        u_div_CryTmp_8__4_), .CO(u_div_CryTmp_8__5_), .S(u_div_SumTmp_8__4_)
         );
  FA1D0 u_div_u_fa_PartRem_0_9_5 ( .A(a[14]), .B(u_div_BInv[5]), .CI(
        u_div_CryTmp_9__5_), .CO(u_div_CryTmp_9__6_), .S(u_div_SumTmp_9__5_)
         );
  FA1D0 u_div_u_fa_PartRem_0_8_3 ( .A(n80), .B(u_div_BInv[3]), .CI(
        u_div_CryTmp_8__3_), .CO(u_div_CryTmp_8__4_), .S(u_div_SumTmp_8__3_)
         );
  FA1D0 u_div_u_fa_PartRem_0_9_4 ( .A(a[13]), .B(u_div_BInv[4]), .CI(
        u_div_CryTmp_9__4_), .CO(u_div_CryTmp_9__5_), .S(u_div_SumTmp_9__4_)
         );
  FA1D0 u_div_u_fa_PartRem_0_9_3 ( .A(a[12]), .B(u_div_BInv[3]), .CI(
        u_div_CryTmp_9__3_), .CO(u_div_CryTmp_9__4_), .S(u_div_SumTmp_9__3_)
         );
  FA1D0 u_div_u_fa_PartRem_0_9_2 ( .A(a[11]), .B(u_div_BInv[2]), .CI(
        u_div_CryTmp_9__2_), .CO(u_div_CryTmp_9__3_), .S(u_div_SumTmp_9__2_)
         );
  FA1D0 u_div_u_fa_PartRem_0_8_2 ( .A(u_div_PartRem_9__2_), .B(u_div_BInv[2]), 
        .CI(n10), .CO(u_div_CryTmp_8__3_), .S(u_div_SumTmp_8__2_) );
  FA1D0 u_div_u_fa_PartRem_0_1_7 ( .A(u_div_PartRem_2__7_), .B(u_div_BInv[7]), 
        .CI(u_div_CryTmp_1__7_), .CO(u_div_CryTmp_1__8_), .S(
        u_div_SumTmp_1__7_) );
  FA1D0 u_div_u_fa_PartRem_0_2_7 ( .A(n41), .B(u_div_BInv[7]), .CI(
        u_div_CryTmp_2__7_), .CO(u_div_CryTmp_2__8_), .S(u_div_SumTmp_2__7_)
         );
  FA1D0 u_div_u_fa_PartRem_0_3_7 ( .A(n40), .B(u_div_BInv[7]), .CI(
        u_div_CryTmp_3__7_), .CO(u_div_CryTmp_3__8_), .S(u_div_SumTmp_3__7_)
         );
  FA1D0 u_div_u_fa_PartRem_0_4_7 ( .A(n39), .B(u_div_BInv[7]), .CI(
        u_div_CryTmp_4__7_), .CO(u_div_CryTmp_4__8_), .S(u_div_SumTmp_4__7_)
         );
  FA1D0 u_div_u_fa_PartRem_0_5_7 ( .A(n38), .B(u_div_BInv[7]), .CI(
        u_div_CryTmp_5__7_), .CO(u_div_CryTmp_5__8_), .S(u_div_SumTmp_5__7_)
         );
  FA1D0 u_div_u_fa_PartRem_0_6_7 ( .A(n42), .B(u_div_BInv[7]), .CI(
        u_div_CryTmp_6__7_), .CO(u_div_CryTmp_6__8_), .S(u_div_SumTmp_6__7_)
         );
  FA1D0 u_div_u_fa_PartRem_0_7_7 ( .A(n37), .B(u_div_BInv[7]), .CI(
        u_div_CryTmp_7__7_), .CO(u_div_CryTmp_7__8_), .S(u_div_SumTmp_7__7_)
         );
  FA1D0 u_div_u_fa_PartRem_0_8_7 ( .A(n36), .B(u_div_BInv[7]), .CI(
        u_div_CryTmp_8__7_), .CO(u_div_CryTmp_8__8_), .S(u_div_SumTmp_8__7_)
         );
  FA1D0 u_div_u_fa_PartRem_0_0_2 ( .A(u_div_PartRem_1__2_), .B(u_div_BInv[2]), 
        .CI(n15), .CO(u_div_CryTmp_0__3_) );
  FA1D0 u_div_u_fa_PartRem_0_9_7 ( .A(a[16]), .B(u_div_BInv[7]), .CI(
        u_div_CryTmp_9__7_), .CO(quotient[9]), .S(u_div_SumTmp_9__7_) );
  INVD1 U1 ( .I(u_div_SumTmp_8__2_), .ZN(n100) );
  INVD1 U3 ( .I(u_div_SumTmp_6__3_), .ZN(n109) );
  AN2XD1 U7 ( .A1(quotient[8]), .A2(u_div_BInv[1]), .Z(n3) );
  AN2XD1 U8 ( .A1(quotient[3]), .A2(u_div_BInv[1]), .Z(n4) );
  AN2XD1 U9 ( .A1(quotient[7]), .A2(u_div_BInv[1]), .Z(n5) );
  AN2XD1 U10 ( .A1(quotient[6]), .A2(u_div_BInv[1]), .Z(n6) );
  AN2XD1 U11 ( .A1(quotient[5]), .A2(u_div_BInv[1]), .Z(n7) );
  AN2XD1 U12 ( .A1(quotient[4]), .A2(u_div_BInv[1]), .Z(n8) );
  AN2XD1 U13 ( .A1(quotient[2]), .A2(u_div_BInv[1]), .Z(n9) );
  MUX2D0 U15 ( .I0(n74), .I1(u_div_SumTmp_6__2_), .S(quotient[6]), .Z(n11) );
  MUX2D0 U16 ( .I0(n75), .I1(u_div_SumTmp_5__2_), .S(quotient[5]), .Z(n12) );
  MUX2D0 U17 ( .I0(n76), .I1(u_div_SumTmp_4__2_), .S(quotient[4]), .Z(n13) );
  MUX2D0 U18 ( .I0(n77), .I1(u_div_SumTmp_3__2_), .S(quotient[3]), .Z(n14) );
  AN2XD1 U19 ( .A1(u_div_BInv[1]), .A2(quotient[1]), .Z(n15) );
  MUX2D0 U20 ( .I0(a[12]), .I1(u_div_SumTmp_9__3_), .S(quotient[9]), .Z(n16)
         );
  MUX2D0 U21 ( .I0(n80), .I1(u_div_SumTmp_8__3_), .S(quotient[8]), .Z(n17) );
  MUX2D0 U22 ( .I0(n11), .I1(u_div_SumTmp_5__3_), .S(quotient[5]), .Z(n18) );
  MUX2D0 U23 ( .I0(n12), .I1(u_div_SumTmp_4__3_), .S(quotient[4]), .Z(n19) );
  MUX2D0 U24 ( .I0(n13), .I1(u_div_SumTmp_3__3_), .S(quotient[3]), .Z(n20) );
  MUX2D0 U25 ( .I0(n64), .I1(u_div_SumTmp_7__3_), .S(quotient[7]), .Z(n21) );
  MUX2D0 U26 ( .I0(a[13]), .I1(u_div_SumTmp_9__4_), .S(quotient[9]), .Z(n22)
         );
  MUX2D0 U27 ( .I0(n16), .I1(u_div_SumTmp_8__4_), .S(quotient[8]), .Z(n23) );
  MUX2D0 U28 ( .I0(n21), .I1(u_div_SumTmp_6__4_), .S(quotient[6]), .Z(n24) );
  MUX2D0 U29 ( .I0(n65), .I1(u_div_SumTmp_5__4_), .S(quotient[5]), .Z(n25) );
  MUX2D0 U30 ( .I0(n18), .I1(u_div_SumTmp_4__4_), .S(quotient[4]), .Z(n26) );
  MUX2D0 U31 ( .I0(n19), .I1(u_div_SumTmp_3__4_), .S(quotient[3]), .Z(n27) );
  MUX2D0 U32 ( .I0(n17), .I1(u_div_SumTmp_7__4_), .S(quotient[7]), .Z(n28) );
  MUX2D0 U33 ( .I0(a[14]), .I1(u_div_SumTmp_9__5_), .S(quotient[9]), .Z(n29)
         );
  MUX2D0 U34 ( .I0(n22), .I1(u_div_SumTmp_8__5_), .S(quotient[8]), .Z(n30) );
  MUX2D0 U35 ( .I0(n28), .I1(u_div_SumTmp_6__5_), .S(quotient[6]), .Z(n31) );
  MUX2D0 U36 ( .I0(n24), .I1(u_div_SumTmp_5__5_), .S(quotient[5]), .Z(n32) );
  MUX2D0 U37 ( .I0(n25), .I1(u_div_SumTmp_4__5_), .S(quotient[4]), .Z(n33) );
  MUX2D0 U38 ( .I0(n26), .I1(u_div_SumTmp_3__5_), .S(quotient[3]), .Z(n34) );
  MUX2D0 U39 ( .I0(n23), .I1(u_div_SumTmp_7__5_), .S(quotient[7]), .Z(n35) );
  MUX2D0 U40 ( .I0(a[15]), .I1(u_div_SumTmp_9__6_), .S(quotient[9]), .Z(n36)
         );
  MUX2D0 U41 ( .I0(n29), .I1(u_div_SumTmp_8__6_), .S(quotient[8]), .Z(n37) );
  MUX2D0 U42 ( .I0(n35), .I1(u_div_SumTmp_6__6_), .S(quotient[6]), .Z(n38) );
  MUX2D0 U43 ( .I0(n31), .I1(u_div_SumTmp_5__6_), .S(quotient[5]), .Z(n39) );
  MUX2D0 U44 ( .I0(n32), .I1(u_div_SumTmp_4__6_), .S(quotient[4]), .Z(n40) );
  MUX2D0 U45 ( .I0(n33), .I1(u_div_SumTmp_3__6_), .S(quotient[3]), .Z(n41) );
  MUX2D0 U46 ( .I0(n30), .I1(u_div_SumTmp_7__6_), .S(quotient[7]), .Z(n42) );
  XNR2D1 U48 ( .A1(u_div_BInv[1]), .A2(quotient[8]), .ZN(n44) );
  XNR2D1 U49 ( .A1(u_div_BInv[1]), .A2(quotient[7]), .ZN(n45) );
  XNR2D1 U50 ( .A1(u_div_BInv[1]), .A2(quotient[6]), .ZN(n46) );
  XNR2D1 U51 ( .A1(u_div_BInv[1]), .A2(quotient[5]), .ZN(n47) );
  XNR2D1 U52 ( .A1(u_div_BInv[1]), .A2(quotient[4]), .ZN(n48) );
  INVD1 U73 ( .I(quotient[8]), .ZN(n87) );
  INVD1 U85 ( .I(u_div_SumTmp_7__2_), .ZN(n110) );
  MUX2ND0 U86 ( .I0(n84), .I1(n100), .S(quotient[8]), .ZN(n64) );
  INVD1 U87 ( .I(u_div_SumTmp_1__2_), .ZN(n116) );
  MUX2ND0 U88 ( .I0(n89), .I1(n109), .S(quotient[6]), .ZN(n65) );
  INVD1 U89 ( .I(u_div_SumTmp_1__4_), .ZN(n114) );
  INVD1 U90 ( .I(u_div_SumTmp_1__6_), .ZN(n112) );
  XNR2D1 U91 ( .A1(u_div_CryTmp_1__8_), .A2(u_div_PartRem_2__8_), .ZN(n66) );
  XNR2D1 U92 ( .A1(u_div_CryTmp_8__8_), .A2(u_div_PartRem_9__8_), .ZN(n67) );
  XNR2D1 U93 ( .A1(u_div_CryTmp_5__8_), .A2(u_div_PartRem_6__8_), .ZN(n68) );
  XNR2D1 U94 ( .A1(u_div_CryTmp_3__8_), .A2(u_div_PartRem_4__8_), .ZN(n69) );
  XNR2D1 U95 ( .A1(u_div_CryTmp_4__8_), .A2(u_div_PartRem_5__8_), .ZN(n70) );
  XNR2D1 U96 ( .A1(u_div_CryTmp_6__8_), .A2(u_div_PartRem_7__8_), .ZN(n71) );
  XNR2D1 U97 ( .A1(u_div_CryTmp_7__8_), .A2(u_div_PartRem_8__8_), .ZN(n72) );
  XNR2D1 U98 ( .A1(u_div_CryTmp_2__8_), .A2(u_div_PartRem_3__8_), .ZN(n73) );
  INVD1 U99 ( .I(u_div_SumTmp_1__7_), .ZN(n111) );
  MUX2ND0 U100 ( .I0(n87), .I1(n44), .S(quotient[7]), .ZN(n74) );
  MUX2ND0 U101 ( .I0(n90), .I1(n45), .S(quotient[6]), .ZN(n75) );
  MUX2ND0 U102 ( .I0(n92), .I1(n46), .S(quotient[5]), .ZN(n76) );
  MUX2ND0 U103 ( .I0(n94), .I1(n47), .S(quotient[4]), .ZN(n77) );
  MUX2ND0 U104 ( .I0(n96), .I1(n48), .S(quotient[3]), .ZN(n78) );
  INVD1 U107 ( .I(u_div_SumTmp_1__3_), .ZN(n115) );
  INVD1 U108 ( .I(u_div_SumTmp_1__5_), .ZN(n113) );
  XNR2D1 U109 ( .A1(u_div_BInv[1]), .A2(quotient[3]), .ZN(n79) );
  XNR2D1 U111 ( .A1(u_div_BInv[1]), .A2(quotient[2]), .ZN(n81) );
  INVD1 U113 ( .I(b[2]), .ZN(u_div_BInv[2]) );
  INVD1 U115 ( .I(b[3]), .ZN(u_div_BInv[3]) );
  INVD1 U116 ( .I(b[4]), .ZN(u_div_BInv[4]) );
  INVD1 U117 ( .I(b[5]), .ZN(u_div_BInv[5]) );
  INVD1 U118 ( .I(b[6]), .ZN(u_div_BInv[6]) );
  INVD1 U119 ( .I(b[7]), .ZN(u_div_BInv[7]) );
  XNR2D1 U120 ( .A1(u_div_BInv[1]), .A2(a[10]), .ZN(u_div_SumTmp_9__1_) );
  CKXOR2D1 U121 ( .A1(u_div_BInv[1]), .A2(u_div_PartRem_9__1_), .Z(
        u_div_SumTmp_8__1_) );
  CKND1 U122 ( .I(n83), .ZN(u_div_PartRem_9__8_) );
  CKND1 U123 ( .I(n84), .ZN(u_div_PartRem_9__2_) );
  MUX2ND0 U124 ( .I0(a[16]), .I1(u_div_SumTmp_9__7_), .S(quotient[9]), .ZN(n83) );
  CKND1 U125 ( .I(n85), .ZN(u_div_PartRem_8__8_) );
  CKND1 U126 ( .I(n86), .ZN(u_div_PartRem_8__2_) );
  MUX2ND0 U127 ( .I0(n36), .I1(u_div_SumTmp_8__7_), .S(quotient[8]), .ZN(n85)
         );
  CKND1 U128 ( .I(n88), .ZN(u_div_PartRem_7__8_) );
  MUX2ND0 U130 ( .I0(n37), .I1(u_div_SumTmp_7__7_), .S(quotient[7]), .ZN(n88)
         );
  CKND1 U131 ( .I(n91), .ZN(u_div_PartRem_6__8_) );
  MUX2ND0 U132 ( .I0(n42), .I1(u_div_SumTmp_6__7_), .S(quotient[6]), .ZN(n91)
         );
  CKND1 U133 ( .I(n93), .ZN(u_div_PartRem_5__8_) );
  MUX2ND0 U134 ( .I0(n38), .I1(u_div_SumTmp_5__7_), .S(quotient[5]), .ZN(n93)
         );
  CKND1 U135 ( .I(n95), .ZN(u_div_PartRem_4__8_) );
  MUX2ND0 U136 ( .I0(n39), .I1(u_div_SumTmp_4__7_), .S(quotient[4]), .ZN(n95)
         );
  CKND1 U137 ( .I(n98), .ZN(u_div_PartRem_3__8_) );
  MUX2ND0 U138 ( .I0(n40), .I1(u_div_SumTmp_3__7_), .S(quotient[3]), .ZN(n98)
         );
  MUX2ND0 U139 ( .I0(a[10]), .I1(u_div_SumTmp_9__1_), .S(quotient[9]), .ZN(n84) );
  CKND1 U140 ( .I(n101), .ZN(u_div_PartRem_2__8_) );
  CKND1 U141 ( .I(n102), .ZN(u_div_PartRem_2__7_) );
  CKND1 U142 ( .I(n103), .ZN(u_div_PartRem_2__6_) );
  CKND1 U143 ( .I(n104), .ZN(u_div_PartRem_2__5_) );
  CKND1 U144 ( .I(n105), .ZN(u_div_PartRem_2__4_) );
  CKND1 U145 ( .I(n106), .ZN(u_div_PartRem_2__3_) );
  MUX2ND0 U147 ( .I0(n41), .I1(u_div_SumTmp_2__7_), .S(quotient[2]), .ZN(n101)
         );
  MUX2ND0 U148 ( .I0(u_div_PartRem_9__1_), .I1(u_div_SumTmp_8__1_), .S(
        quotient[8]), .ZN(n86) );
  MUX2ND0 U150 ( .I0(n102), .I1(n111), .S(quotient[1]), .ZN(
        u_div_PartRem_1__8_) );
  MUX2ND0 U151 ( .I0(n34), .I1(u_div_SumTmp_2__6_), .S(quotient[2]), .ZN(n102)
         );
  MUX2ND0 U152 ( .I0(n103), .I1(n112), .S(quotient[1]), .ZN(
        u_div_PartRem_1__7_) );
  MUX2ND0 U153 ( .I0(n27), .I1(u_div_SumTmp_2__5_), .S(quotient[2]), .ZN(n103)
         );
  MUX2ND0 U154 ( .I0(n104), .I1(n113), .S(quotient[1]), .ZN(
        u_div_PartRem_1__6_) );
  MUX2ND0 U155 ( .I0(n20), .I1(u_div_SumTmp_2__4_), .S(quotient[2]), .ZN(n104)
         );
  MUX2ND0 U156 ( .I0(n105), .I1(n114), .S(quotient[1]), .ZN(
        u_div_PartRem_1__5_) );
  MUX2ND0 U157 ( .I0(n14), .I1(u_div_SumTmp_2__3_), .S(quotient[2]), .ZN(n105)
         );
  MUX2ND0 U158 ( .I0(n106), .I1(n115), .S(quotient[1]), .ZN(
        u_div_PartRem_1__4_) );
  MUX2ND0 U159 ( .I0(n78), .I1(u_div_SumTmp_2__2_), .S(quotient[2]), .ZN(n106)
         );
  MUX2ND0 U160 ( .I0(n107), .I1(n116), .S(quotient[1]), .ZN(
        u_div_PartRem_1__3_) );
  MUX2ND0 U161 ( .I0(n108), .I1(n81), .S(quotient[1]), .ZN(u_div_PartRem_1__2_) );
  AO21D0 U2 ( .A1(u_div_PartRem_1__8_), .A2(u_div_CryTmp_0__8_), .B(n118), .Z(
        quotient[0]) );
  MUX2ND0 U4 ( .I0(n101), .I1(n66), .S(quotient[1]), .ZN(n118) );
  CKND0 U5 ( .I(n108), .ZN(quotient[2]) );
  AOI21D0 U6 ( .A1(u_div_CryTmp_2__8_), .A2(u_div_PartRem_3__8_), .B(n120), 
        .ZN(n108) );
  AO21D0 U14 ( .A1(u_div_CryTmp_1__8_), .A2(u_div_PartRem_2__8_), .B(n119), 
        .Z(quotient[1]) );
  MUX2ND0 U47 ( .I0(n98), .I1(n73), .S(quotient[2]), .ZN(n119) );
  CKND0 U53 ( .I(u_div_PartRem_2__2_), .ZN(n107) );
  MUX2ND0 U54 ( .I0(n99), .I1(n79), .S(quotient[2]), .ZN(u_div_PartRem_2__2_)
         );
  CKND0 U55 ( .I(n99), .ZN(quotient[3]) );
  AOI21D0 U56 ( .A1(u_div_CryTmp_3__8_), .A2(u_div_PartRem_4__8_), .B(n121), 
        .ZN(n99) );
  MUX2ND0 U57 ( .I0(n95), .I1(n69), .S(quotient[3]), .ZN(n120) );
  CKND0 U58 ( .I(n96), .ZN(quotient[4]) );
  AOI21D0 U59 ( .A1(u_div_CryTmp_4__8_), .A2(u_div_PartRem_5__8_), .B(n122), 
        .ZN(n96) );
  MUX2ND0 U60 ( .I0(n93), .I1(n70), .S(quotient[4]), .ZN(n121) );
  CKND0 U61 ( .I(n94), .ZN(quotient[5]) );
  AOI21D0 U62 ( .A1(u_div_CryTmp_5__8_), .A2(u_div_PartRem_6__8_), .B(n123), 
        .ZN(n94) );
  MUX2ND0 U63 ( .I0(n91), .I1(n68), .S(quotient[5]), .ZN(n122) );
  CKND0 U64 ( .I(n92), .ZN(quotient[6]) );
  AOI21D0 U65 ( .A1(u_div_CryTmp_6__8_), .A2(u_div_PartRem_7__8_), .B(n124), 
        .ZN(n92) );
  MUX2ND0 U66 ( .I0(n88), .I1(n71), .S(quotient[6]), .ZN(n123) );
  CKND0 U67 ( .I(n90), .ZN(quotient[7]) );
  AOI21D0 U68 ( .A1(u_div_CryTmp_7__8_), .A2(u_div_PartRem_8__8_), .B(n125), 
        .ZN(n90) );
  MUX2ND0 U69 ( .I0(n85), .I1(n72), .S(quotient[7]), .ZN(n124) );
  CKND0 U70 ( .I(u_div_PartRem_7__3_), .ZN(n89) );
  MUX2ND0 U71 ( .I0(n86), .I1(n110), .S(quotient[7]), .ZN(u_div_PartRem_7__3_)
         );
  MUX2ND0 U72 ( .I0(n83), .I1(n67), .S(quotient[8]), .ZN(n125) );
  IOA21D0 U74 ( .A1(u_div_CryTmp_8__8_), .A2(u_div_PartRem_9__8_), .B(
        quotient[9]), .ZN(quotient[8]) );
  MUX2D0 U75 ( .I0(a[11]), .I1(u_div_SumTmp_9__2_), .S(quotient[9]), .Z(n80)
         );
  CKND0 U76 ( .I(b[1]), .ZN(u_div_BInv[1]) );
  CKND0 U77 ( .I(quotient[9]), .ZN(u_div_PartRem_9__1_) );
  NR2D0 U78 ( .A1(quotient[9]), .A2(b[1]), .ZN(n10) );
  IND2D0 U79 ( .A1(a[10]), .B1(b[1]), .ZN(u_div_CryTmp_9__2_) );
endmodule


module input_trunc_core_BITS7_BIAS1_DIVIDE1 ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   n10, n12, n11;
  wire   [7:1] a;
  wire   [7:1] b;
  wire   [9:0] division_quotient;
  wire   [22:14] fraction;
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
        SYNOPSYS_UNCONNECTED__52, SYNOPSYS_UNCONNECTED__53;

  AN2XD1 U13 ( .A1(division_quotient[0]), .A2(division_quotient[9]), .Z(
        fraction[14]) );
  fp32_normal_finite_wrapper wrapper ( .x({x[31:16], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y({y[31:16], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .divide_mode(1'b0), .fraction_x(
        {a, SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15}), .fraction_y({b, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31}), 
        .result_fraction({fraction, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .exponent_adjust({n11, n11, 
        n11}), .result({result[31:14], SYNOPSYS_UNCONNECTED__32, 
        SYNOPSYS_UNCONNECTED__33, SYNOPSYS_UNCONNECTED__34, 
        SYNOPSYS_UNCONNECTED__35, SYNOPSYS_UNCONNECTED__36, 
        SYNOPSYS_UNCONNECTED__37, SYNOPSYS_UNCONNECTED__38, 
        SYNOPSYS_UNCONNECTED__39, SYNOPSYS_UNCONNECTED__40, 
        SYNOPSYS_UNCONNECTED__41, SYNOPSYS_UNCONNECTED__42, 
        SYNOPSYS_UNCONNECTED__43, SYNOPSYS_UNCONNECTED__44, 
        SYNOPSYS_UNCONNECTED__45}) );
  input_trunc_core_BITS7_BIAS1_DIVIDE1_DW_div_uns_6 div_18 ( .a({n10, a, n10, 
        n12, n12, n12, n12, n12, n12, n12, n12, n12}), .b({n10, b, n10}), 
        .quotient({SYNOPSYS_UNCONNECTED__46, SYNOPSYS_UNCONNECTED__47, 
        SYNOPSYS_UNCONNECTED__48, SYNOPSYS_UNCONNECTED__49, 
        SYNOPSYS_UNCONNECTED__50, SYNOPSYS_UNCONNECTED__51, 
        SYNOPSYS_UNCONNECTED__52, SYNOPSYS_UNCONNECTED__53, division_quotient}) );
  AO22D0 U3 ( .A1(n11), .A2(division_quotient[0]), .B1(division_quotient[9]), 
        .B2(division_quotient[1]), .Z(fraction[15]) );
  AO22D0 U4 ( .A1(n11), .A2(division_quotient[1]), .B1(division_quotient[9]), 
        .B2(division_quotient[2]), .Z(fraction[16]) );
  AO22D0 U5 ( .A1(n11), .A2(division_quotient[2]), .B1(division_quotient[9]), 
        .B2(division_quotient[3]), .Z(fraction[17]) );
  AO22D0 U6 ( .A1(n11), .A2(division_quotient[3]), .B1(division_quotient[9]), 
        .B2(division_quotient[4]), .Z(fraction[18]) );
  AO22D0 U7 ( .A1(n11), .A2(division_quotient[4]), .B1(division_quotient[9]), 
        .B2(division_quotient[5]), .Z(fraction[19]) );
  AO22D0 U8 ( .A1(n11), .A2(division_quotient[5]), .B1(division_quotient[9]), 
        .B2(division_quotient[6]), .Z(fraction[20]) );
  AO22D0 U9 ( .A1(n11), .A2(division_quotient[6]), .B1(division_quotient[9]), 
        .B2(division_quotient[7]), .Z(fraction[21]) );
  AO22D0 U10 ( .A1(n11), .A2(division_quotient[7]), .B1(division_quotient[8]), 
        .B2(division_quotient[9]), .Z(fraction[22]) );
  INVD1 U11 ( .I(division_quotient[9]), .ZN(n11) );
  TIEH U12 ( .Z(n10) );
  TIEL U14 ( .ZN(n12) );
endmodule


module input_div_b7_bias1 ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;

  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13;
  assign result[13] = 1'b0;
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

  input_trunc_core_BITS7_BIAS1_DIVIDE1 dut ( .x({x[31:16], 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .y({y[31:16], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .result({
        result[31:14], SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13}) );
endmodule

