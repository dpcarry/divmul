/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Thu Sep  3 21:17:29 2026
/////////////////////////////////////////////////////////////


module csa3_WIDTH29 ( input_a, input_b, input_c, sum, carry );
  input [28:0] input_a;
  input [28:0] input_b;
  input [28:0] input_c;
  output [28:0] sum;
  output [28:0] carry;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28;

  CKXOR2D1 U2 ( .A1(input_c[9]), .A2(n1), .Z(sum[9]) );
  CKXOR2D1 U3 ( .A1(input_c[8]), .A2(n2), .Z(sum[8]) );
  CKXOR2D1 U4 ( .A1(input_c[7]), .A2(n3), .Z(sum[7]) );
  CKXOR2D1 U5 ( .A1(input_c[6]), .A2(n4), .Z(sum[6]) );
  CKXOR2D1 U6 ( .A1(input_c[5]), .A2(n5), .Z(sum[5]) );
  CKXOR2D1 U7 ( .A1(input_c[4]), .A2(n6), .Z(sum[4]) );
  CKXOR2D1 U8 ( .A1(input_c[3]), .A2(n7), .Z(sum[3]) );
  CKXOR2D1 U9 ( .A1(input_c[2]), .A2(n8), .Z(sum[2]) );
  CKXOR2D1 U11 ( .A1(input_c[27]), .A2(n9), .Z(sum[27]) );
  CKXOR2D1 U12 ( .A1(input_c[26]), .A2(n10), .Z(sum[26]) );
  CKXOR2D1 U13 ( .A1(input_c[25]), .A2(n11), .Z(sum[25]) );
  CKXOR2D1 U14 ( .A1(input_c[24]), .A2(n12), .Z(sum[24]) );
  CKXOR2D1 U15 ( .A1(input_c[23]), .A2(n13), .Z(sum[23]) );
  CKXOR2D1 U16 ( .A1(input_c[22]), .A2(n14), .Z(sum[22]) );
  CKXOR2D1 U17 ( .A1(input_c[21]), .A2(n15), .Z(sum[21]) );
  CKXOR2D1 U18 ( .A1(input_c[20]), .A2(n16), .Z(sum[20]) );
  CKXOR2D1 U19 ( .A1(input_c[1]), .A2(n17), .Z(sum[1]) );
  CKXOR2D1 U20 ( .A1(input_c[19]), .A2(n18), .Z(sum[19]) );
  CKXOR2D1 U21 ( .A1(input_c[18]), .A2(n19), .Z(sum[18]) );
  CKXOR2D1 U22 ( .A1(input_c[17]), .A2(n20), .Z(sum[17]) );
  CKXOR2D1 U23 ( .A1(input_c[16]), .A2(n21), .Z(sum[16]) );
  CKXOR2D1 U24 ( .A1(input_c[15]), .A2(n22), .Z(sum[15]) );
  CKXOR2D1 U25 ( .A1(input_c[14]), .A2(n23), .Z(sum[14]) );
  CKXOR2D1 U26 ( .A1(input_c[13]), .A2(n24), .Z(sum[13]) );
  CKXOR2D1 U27 ( .A1(input_c[12]), .A2(n25), .Z(sum[12]) );
  CKXOR2D1 U28 ( .A1(input_c[11]), .A2(n26), .Z(sum[11]) );
  CKXOR2D1 U29 ( .A1(input_c[10]), .A2(n27), .Z(sum[10]) );
  CKXOR2D1 U30 ( .A1(input_c[0]), .A2(n28), .Z(sum[0]) );
  CKXOR2D1 U32 ( .A1(input_b[8]), .A2(input_a[8]), .Z(n2) );
  CKXOR2D1 U34 ( .A1(input_b[7]), .A2(input_a[7]), .Z(n3) );
  CKXOR2D1 U36 ( .A1(input_b[6]), .A2(input_a[6]), .Z(n4) );
  CKXOR2D1 U38 ( .A1(input_b[5]), .A2(input_a[5]), .Z(n5) );
  CKXOR2D1 U40 ( .A1(input_b[4]), .A2(input_a[4]), .Z(n6) );
  CKXOR2D1 U42 ( .A1(input_b[3]), .A2(input_a[3]), .Z(n7) );
  CKXOR2D1 U44 ( .A1(input_b[2]), .A2(input_a[2]), .Z(n8) );
  CKXOR2D1 U46 ( .A1(input_b[1]), .A2(input_a[1]), .Z(n17) );
  CKXOR2D1 U48 ( .A1(input_b[27]), .A2(input_a[27]), .Z(n9) );
  CKXOR2D1 U50 ( .A1(input_b[26]), .A2(input_a[26]), .Z(n10) );
  CKXOR2D1 U52 ( .A1(input_b[25]), .A2(input_a[25]), .Z(n11) );
  CKXOR2D1 U54 ( .A1(input_b[24]), .A2(input_a[24]), .Z(n12) );
  CKXOR2D1 U56 ( .A1(input_b[23]), .A2(input_a[23]), .Z(n13) );
  CKXOR2D1 U58 ( .A1(input_b[22]), .A2(input_a[22]), .Z(n14) );
  CKXOR2D1 U60 ( .A1(input_b[21]), .A2(input_a[21]), .Z(n15) );
  CKXOR2D1 U62 ( .A1(input_b[20]), .A2(input_a[20]), .Z(n16) );
  CKXOR2D1 U64 ( .A1(input_b[19]), .A2(input_a[19]), .Z(n18) );
  CKXOR2D1 U66 ( .A1(input_b[0]), .A2(input_a[0]), .Z(n28) );
  CKXOR2D1 U68 ( .A1(input_b[18]), .A2(input_a[18]), .Z(n19) );
  CKXOR2D1 U70 ( .A1(input_b[17]), .A2(input_a[17]), .Z(n20) );
  CKXOR2D1 U72 ( .A1(input_b[16]), .A2(input_a[16]), .Z(n21) );
  CKXOR2D1 U74 ( .A1(input_b[15]), .A2(input_a[15]), .Z(n22) );
  CKXOR2D1 U76 ( .A1(input_b[14]), .A2(input_a[14]), .Z(n23) );
  CKXOR2D1 U78 ( .A1(input_b[13]), .A2(input_a[13]), .Z(n24) );
  CKXOR2D1 U80 ( .A1(input_b[12]), .A2(input_a[12]), .Z(n25) );
  CKXOR2D1 U82 ( .A1(input_b[11]), .A2(input_a[11]), .Z(n26) );
  CKXOR2D1 U84 ( .A1(input_b[10]), .A2(input_a[10]), .Z(n27) );
  CKXOR2D1 U86 ( .A1(input_b[9]), .A2(input_a[9]), .Z(n1) );
  AO22D0 U33 ( .A1(input_b[20]), .A2(input_a[20]), .B1(n16), .B2(input_c[20]), 
        .Z(carry[21]) );
  AO22D0 U35 ( .A1(input_b[19]), .A2(input_a[19]), .B1(n18), .B2(input_c[19]), 
        .Z(carry[20]) );
  AO22D0 U37 ( .A1(input_b[21]), .A2(input_a[21]), .B1(n15), .B2(input_c[21]), 
        .Z(carry[22]) );
  AO22D0 U39 ( .A1(input_b[22]), .A2(input_a[22]), .B1(n14), .B2(input_c[22]), 
        .Z(carry[23]) );
  AO22D0 U41 ( .A1(input_b[23]), .A2(input_a[23]), .B1(n13), .B2(input_c[23]), 
        .Z(carry[24]) );
  AO22D0 U43 ( .A1(input_b[24]), .A2(input_a[24]), .B1(n12), .B2(input_c[24]), 
        .Z(carry[25]) );
  AO22D0 U45 ( .A1(input_b[25]), .A2(input_a[25]), .B1(n11), .B2(input_c[25]), 
        .Z(carry[26]) );
  AO22D0 U47 ( .A1(input_b[26]), .A2(input_a[26]), .B1(n10), .B2(input_c[26]), 
        .Z(carry[27]) );
  AO22D0 U49 ( .A1(input_b[27]), .A2(input_a[27]), .B1(n9), .B2(input_c[27]), 
        .Z(carry[28]) );
  XOR3D1 U51 ( .A1(input_c[28]), .A2(input_b[28]), .A3(input_a[28]), .Z(
        sum[28]) );
  AO22D0 U53 ( .A1(input_b[4]), .A2(input_a[4]), .B1(n6), .B2(input_c[4]), .Z(
        carry[5]) );
  AO22D0 U55 ( .A1(input_b[1]), .A2(input_a[1]), .B1(n17), .B2(input_c[1]), 
        .Z(carry[2]) );
  AO22D0 U57 ( .A1(input_b[2]), .A2(input_a[2]), .B1(n8), .B2(input_c[2]), .Z(
        carry[3]) );
  AO22D0 U59 ( .A1(input_b[3]), .A2(input_a[3]), .B1(n7), .B2(input_c[3]), .Z(
        carry[4]) );
  AO22D0 U61 ( .A1(input_b[5]), .A2(input_a[5]), .B1(n5), .B2(input_c[5]), .Z(
        carry[6]) );
  AO22D0 U63 ( .A1(input_b[6]), .A2(input_a[6]), .B1(n4), .B2(input_c[6]), .Z(
        carry[7]) );
  AO22D0 U65 ( .A1(input_b[7]), .A2(input_a[7]), .B1(n3), .B2(input_c[7]), .Z(
        carry[8]) );
  AO22D0 U67 ( .A1(input_b[8]), .A2(input_a[8]), .B1(n2), .B2(input_c[8]), .Z(
        carry[9]) );
  AO22D0 U69 ( .A1(input_b[9]), .A2(input_a[9]), .B1(n1), .B2(input_c[9]), .Z(
        carry[10]) );
  AO22D0 U71 ( .A1(input_b[10]), .A2(input_a[10]), .B1(n27), .B2(input_c[10]), 
        .Z(carry[11]) );
  AO22D0 U73 ( .A1(input_b[11]), .A2(input_a[11]), .B1(n26), .B2(input_c[11]), 
        .Z(carry[12]) );
  AO22D0 U75 ( .A1(input_b[0]), .A2(input_a[0]), .B1(n28), .B2(input_c[0]), 
        .Z(carry[1]) );
  AO22D0 U77 ( .A1(input_b[12]), .A2(input_a[12]), .B1(n25), .B2(input_c[12]), 
        .Z(carry[13]) );
  AO22D0 U79 ( .A1(input_b[13]), .A2(input_a[13]), .B1(n24), .B2(input_c[13]), 
        .Z(carry[14]) );
  AO22D0 U81 ( .A1(input_b[14]), .A2(input_a[14]), .B1(n23), .B2(input_c[14]), 
        .Z(carry[15]) );
  AO22D0 U83 ( .A1(input_b[15]), .A2(input_a[15]), .B1(n22), .B2(input_c[15]), 
        .Z(carry[16]) );
  AO22D0 U85 ( .A1(input_b[16]), .A2(input_a[16]), .B1(n21), .B2(input_c[16]), 
        .Z(carry[17]) );
  AO22D0 U87 ( .A1(input_b[18]), .A2(input_a[18]), .B1(n19), .B2(input_c[18]), 
        .Z(carry[19]) );
  AO22D0 U88 ( .A1(input_b[17]), .A2(input_a[17]), .B1(n20), .B2(input_c[17]), 
        .Z(carry[18]) );
endmodule


module fp32_normal_finite_wrapper_DW01_add_3_DW01_add_16 ( A, B, CI, SUM, CO
 );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [7:2] carry;

  FA1D0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1D0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1D0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1D0 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA1D0 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  FA1D0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  XOR3D1 U1_7 ( .A1(A[7]), .A2(B[7]), .A3(carry[7]), .Z(SUM[7]) );
  AN2XD1 U1 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
  CKXOR2D1 U2 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
endmodule


module fp32_normal_finite_wrapper_DW01_add_1_DW01_add_14 ( A, B, CI, SUM, CO
 );
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
  CKAN2D1 U1 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
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
  wire   N19, N20, N21, N22, N23, N24, N25, N26, N43, N44, N45, N46, N47, N48,
         N49, N50, N42, N41, N40, N39, N38, N37, N36, N34, N33, N32, N31, N30,
         N29, N28, N27, N9, N8, N7, N6, N5, N4, N3, N17, N16, N15, N14, N13,
         N12, N11, N10, n1, n2, n35, n410, n51, n60, n70, n75, n76, n79;
  wire   [7:2] add_0_root_add_0_root_add_22_2_carry;
  wire   [7:2] add_0_root_add_0_root_add_25_2_carry;

  CKXOR2D1 U2 ( .A1(y[31]), .A2(x[31]), .Z(result[31]) );
  fp32_normal_finite_wrapper_DW01_add_3_DW01_add_16 add_1_root_add_0_root_add_25_2 ( 
        .A(x[30:23]), .B({N42, N41, N40, N39, N38, N37, N36, N11}), .CI(n79), 
        .SUM({N34, N33, N32, N31, N30, N29, N28, N27}) );
  fp32_normal_finite_wrapper_DW01_add_1_DW01_add_14 add_1_root_add_0_root_add_22_2 ( 
        .A(x[30:23]), .B({y[30], N17, N16, N15, N14, N13, N12, N11}), .CI(n79), 
        .SUM({N10, N9, N8, N7, N6, N5, N4, N3}) );
  AN2XD1 U3 ( .A1(exponent_adjust[0]), .A2(N3), .Z(n1) );
  AN2XD1 U4 ( .A1(exponent_adjust[0]), .A2(N27), .Z(n2) );
  INVD1 U5 ( .I(divide_mode), .ZN(n76) );
  CKBD1 U6 ( .I(result_fraction[0]), .Z(result[0]) );
  AO22D0 U7 ( .A1(N49), .A2(n76), .B1(N25), .B2(divide_mode), .Z(result[29])
         );
  AO22D0 U8 ( .A1(N48), .A2(n76), .B1(N24), .B2(divide_mode), .Z(result[28])
         );
  AO22D0 U9 ( .A1(N47), .A2(n76), .B1(N23), .B2(divide_mode), .Z(result[27])
         );
  AO22D0 U10 ( .A1(N46), .A2(n76), .B1(N22), .B2(divide_mode), .Z(result[26])
         );
  AO22D0 U11 ( .A1(N45), .A2(n76), .B1(N21), .B2(divide_mode), .Z(result[25])
         );
  AO22D0 U12 ( .A1(N44), .A2(n76), .B1(N20), .B2(divide_mode), .Z(result[24])
         );
  FA1D0 U13 ( .A(N4), .B(exponent_adjust[1]), .CI(n1), .CO(
        add_0_root_add_0_root_add_22_2_carry[2]), .S(N20) );
  FA1D0 U14 ( .A(N5), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[2]), .CO(
        add_0_root_add_0_root_add_22_2_carry[3]), .S(N21) );
  FA1D0 U15 ( .A(N6), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[3]), .CO(
        add_0_root_add_0_root_add_22_2_carry[4]), .S(N22) );
  FA1D0 U16 ( .A(N7), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[4]), .CO(
        add_0_root_add_0_root_add_22_2_carry[5]), .S(N23) );
  FA1D0 U17 ( .A(N8), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[5]), .CO(
        add_0_root_add_0_root_add_22_2_carry[6]), .S(N24) );
  FA1D0 U18 ( .A(N9), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[6]), .CO(
        add_0_root_add_0_root_add_22_2_carry[7]), .S(N25) );
  FA1D0 U19 ( .A(N28), .B(exponent_adjust[1]), .CI(n2), .CO(
        add_0_root_add_0_root_add_25_2_carry[2]), .S(N44) );
  FA1D0 U20 ( .A(N29), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[2]), .CO(
        add_0_root_add_0_root_add_25_2_carry[3]), .S(N45) );
  FA1D0 U21 ( .A(N30), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[3]), .CO(
        add_0_root_add_0_root_add_25_2_carry[4]), .S(N46) );
  FA1D0 U22 ( .A(N31), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[4]), .CO(
        add_0_root_add_0_root_add_25_2_carry[5]), .S(N47) );
  FA1D0 U23 ( .A(N32), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[5]), .CO(
        add_0_root_add_0_root_add_25_2_carry[6]), .S(N48) );
  FA1D0 U24 ( .A(N33), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[6]), .CO(
        add_0_root_add_0_root_add_25_2_carry[7]), .S(N49) );
  AO22D0 U25 ( .A1(N43), .A2(n76), .B1(N19), .B2(divide_mode), .Z(result[23])
         );
  AO22D0 U26 ( .A1(N50), .A2(n76), .B1(divide_mode), .B2(N26), .Z(result[30])
         );
  XOR3D1 U27 ( .A1(N34), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_25_2_carry[7]), .Z(N50) );
  XOR3D1 U28 ( .A1(N10), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_22_2_carry[7]), .Z(N26) );
  CKBD1 U29 ( .I(y[1]), .Z(fraction_y[1]) );
  CKBD1 U30 ( .I(y[0]), .Z(fraction_y[0]) );
  CKBD1 U31 ( .I(y[2]), .Z(fraction_y[2]) );
  CKBD1 U32 ( .I(x[1]), .Z(fraction_x[1]) );
  CKBD1 U33 ( .I(y[3]), .Z(fraction_y[3]) );
  CKBD1 U34 ( .I(x[2]), .Z(fraction_x[2]) );
  CKBD1 U35 ( .I(y[4]), .Z(fraction_y[4]) );
  CKBD1 U36 ( .I(x[3]), .Z(fraction_x[3]) );
  CKBD1 U37 ( .I(y[5]), .Z(fraction_y[5]) );
  CKBD1 U38 ( .I(y[22]), .Z(fraction_y[22]) );
  CKBD1 U39 ( .I(x[4]), .Z(fraction_x[4]) );
  CKBD1 U40 ( .I(x[22]), .Z(fraction_x[22]) );
  CKBD1 U41 ( .I(y[6]), .Z(fraction_y[6]) );
  CKBD1 U42 ( .I(x[5]), .Z(fraction_x[5]) );
  CKBD1 U43 ( .I(y[21]), .Z(fraction_y[21]) );
  CKBD1 U44 ( .I(x[21]), .Z(fraction_x[21]) );
  CKBD1 U45 ( .I(y[7]), .Z(fraction_y[7]) );
  CKBD1 U46 ( .I(x[6]), .Z(fraction_x[6]) );
  CKBD1 U47 ( .I(y[8]), .Z(fraction_y[8]) );
  CKBD1 U48 ( .I(x[7]), .Z(fraction_x[7]) );
  CKBD1 U49 ( .I(y[9]), .Z(fraction_y[9]) );
  CKBD1 U50 ( .I(x[8]), .Z(fraction_x[8]) );
  CKBD1 U51 ( .I(x[9]), .Z(fraction_x[9]) );
  CKBD1 U52 ( .I(y[10]), .Z(fraction_y[10]) );
  CKBD1 U53 ( .I(y[11]), .Z(fraction_y[11]) );
  CKBD1 U54 ( .I(x[10]), .Z(fraction_x[10]) );
  CKBD1 U55 ( .I(y[12]), .Z(fraction_y[12]) );
  CKBD1 U56 ( .I(x[11]), .Z(fraction_x[11]) );
  CKBD1 U57 ( .I(y[13]), .Z(fraction_y[13]) );
  CKBD1 U58 ( .I(x[12]), .Z(fraction_x[12]) );
  CKBD1 U59 ( .I(y[14]), .Z(fraction_y[14]) );
  CKBD1 U60 ( .I(x[13]), .Z(fraction_x[13]) );
  CKBD1 U61 ( .I(y[15]), .Z(fraction_y[15]) );
  CKBD1 U62 ( .I(x[14]), .Z(fraction_x[14]) );
  CKBD1 U63 ( .I(y[16]), .Z(fraction_y[16]) );
  CKBD1 U64 ( .I(x[15]), .Z(fraction_x[15]) );
  CKBD1 U65 ( .I(y[17]), .Z(fraction_y[17]) );
  CKBD1 U66 ( .I(x[16]), .Z(fraction_x[16]) );
  CKBD1 U67 ( .I(y[18]), .Z(fraction_y[18]) );
  CKBD1 U68 ( .I(x[17]), .Z(fraction_x[17]) );
  CKBD1 U69 ( .I(y[19]), .Z(fraction_y[19]) );
  CKBD1 U70 ( .I(x[18]), .Z(fraction_x[18]) );
  CKBD1 U71 ( .I(y[20]), .Z(fraction_y[20]) );
  CKBD1 U72 ( .I(x[19]), .Z(fraction_x[19]) );
  CKBD1 U73 ( .I(x[20]), .Z(fraction_x[20]) );
  AN2XD1 U74 ( .A1(y[23]), .A2(y[24]), .Z(n35) );
  INVD1 U75 ( .I(y[29]), .ZN(N17) );
  INVD0 U76 ( .I(y[24]), .ZN(N12) );
  INVD1 U77 ( .I(y[25]), .ZN(N13) );
  INVD1 U78 ( .I(y[26]), .ZN(N14) );
  INVD1 U79 ( .I(y[27]), .ZN(N15) );
  INVD1 U80 ( .I(y[28]), .ZN(N16) );
  AN2XD1 U81 ( .A1(n35), .A2(y[25]), .Z(n410) );
  AN2XD1 U82 ( .A1(n410), .A2(y[26]), .Z(n51) );
  AN2XD1 U83 ( .A1(n51), .A2(y[27]), .Z(n60) );
  AN2XD1 U84 ( .A1(n60), .A2(y[28]), .Z(n70) );
  CKXOR2D1 U85 ( .A1(y[30]), .A2(n75), .Z(N42) );
  ND2D1 U86 ( .A1(n70), .A2(y[29]), .ZN(n75) );
  CKBD1 U87 ( .I(x[0]), .Z(fraction_x[0]) );
  CKBD1 U88 ( .I(result_fraction[22]), .Z(result[22]) );
  CKBD1 U89 ( .I(result_fraction[21]), .Z(result[21]) );
  CKBD1 U90 ( .I(result_fraction[20]), .Z(result[20]) );
  CKBD1 U91 ( .I(result_fraction[19]), .Z(result[19]) );
  CKBD1 U92 ( .I(result_fraction[18]), .Z(result[18]) );
  CKBD1 U93 ( .I(result_fraction[17]), .Z(result[17]) );
  CKBD1 U94 ( .I(result_fraction[16]), .Z(result[16]) );
  CKBD1 U95 ( .I(result_fraction[15]), .Z(result[15]) );
  CKBD1 U96 ( .I(result_fraction[14]), .Z(result[14]) );
  CKBD1 U97 ( .I(result_fraction[13]), .Z(result[13]) );
  CKBD1 U98 ( .I(result_fraction[12]), .Z(result[12]) );
  CKBD1 U99 ( .I(result_fraction[11]), .Z(result[11]) );
  CKBD1 U100 ( .I(result_fraction[10]), .Z(result[10]) );
  CKBD1 U101 ( .I(result_fraction[9]), .Z(result[9]) );
  CKBD1 U102 ( .I(result_fraction[8]), .Z(result[8]) );
  CKBD1 U103 ( .I(result_fraction[7]), .Z(result[7]) );
  CKBD1 U104 ( .I(result_fraction[6]), .Z(result[6]) );
  CKBD1 U105 ( .I(result_fraction[5]), .Z(result[5]) );
  CKBD1 U106 ( .I(result_fraction[4]), .Z(result[4]) );
  CKBD1 U107 ( .I(result_fraction[3]), .Z(result[3]) );
  CKBD1 U108 ( .I(result_fraction[2]), .Z(result[2]) );
  CKBD1 U109 ( .I(result_fraction[1]), .Z(result[1]) );
  TIEL U110 ( .ZN(n79) );
  CKXOR2D1 U111 ( .A1(exponent_adjust[0]), .A2(N3), .Z(N19) );
  CKXOR2D1 U112 ( .A1(exponent_adjust[0]), .A2(N27), .Z(N43) );
  CKXOR2D1 U113 ( .A1(y[23]), .A2(y[24]), .Z(N36) );
  CKXOR2D1 U114 ( .A1(n35), .A2(y[25]), .Z(N37) );
  CKXOR2D1 U115 ( .A1(n410), .A2(y[26]), .Z(N38) );
  CKXOR2D1 U116 ( .A1(n51), .A2(y[27]), .Z(N39) );
  CKXOR2D1 U117 ( .A1(n60), .A2(y[28]), .Z(N40) );
  CKXOR2D1 U118 ( .A1(n70), .A2(y[29]), .Z(N41) );
  CKND0 U119 ( .I(y[23]), .ZN(N11) );
endmodule


module oadm_fixed_divmul_correction_chain_LEVEL2_DW01_add_0 ( A, B, CI, SUM, 
        CO );
  input [28:0] A;
  input [28:0] B;
  output [28:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [28:3] carry;

  FA1D0 U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  FA1D0 U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  FA1D0 U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  FA1D0 U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  FA1D0 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  FA1D0 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  FA1D0 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  FA1D0 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  FA1D0 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FA1D0 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FA1D0 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  FA1D0 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FA1D0 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA1D0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA1D0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1D0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1D0 U1_2 ( .A(A[2]), .B(B[2]), .CI(n1), .CO(carry[3]), .S(SUM[2]) );
  FA1D0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  XOR3D1 U1_28 ( .A1(A[28]), .A2(B[28]), .A3(carry[28]), .Z(SUM[28]) );
  FA1D0 U1_27 ( .A(A[27]), .B(B[27]), .CI(carry[27]), .CO(carry[28]), .S(
        SUM[27]) );
  FA1D0 U1_26 ( .A(A[26]), .B(B[26]), .CI(carry[26]), .CO(carry[27]), .S(
        SUM[26]) );
  FA1D0 U1_25 ( .A(A[25]), .B(B[25]), .CI(carry[25]), .CO(carry[26]), .S(
        SUM[25]) );
  FA1D0 U1_24 ( .A(A[24]), .B(B[24]), .CI(carry[24]), .CO(carry[25]), .S(
        SUM[24]) );
  FA1D0 U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  FA1D0 U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  FA1D0 U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  FA1D0 U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  AN2XD1 U1 ( .A1(B[1]), .A2(A[1]), .Z(n1) );
  CKBD1 U2 ( .I(A[0]), .Z(SUM[0]) );
  CKXOR2D1 U3 ( .A1(B[1]), .A2(A[1]), .Z(SUM[1]) );
endmodule


module oadm_fixed_divmul_correction_chain_LEVEL2_DW01_sub_0 ( A, B, CI, DIFF, 
        CO );
  input [28:0] A;
  input [28:0] B;
  output [28:0] DIFF;
  input CI;
  output CO;
  wire   carry_3_, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48;

  AN2XD1 U1 ( .A1(n6), .A2(n27), .Z(n1) );
  AN2XD1 U2 ( .A1(n1), .A2(n26), .Z(n2) );
  AN2XD1 U3 ( .A1(n2), .A2(n28), .Z(n3) );
  AN2XD1 U4 ( .A1(n3), .A2(n28), .Z(n4) );
  AN2XD1 U5 ( .A1(n23), .A2(n30), .Z(n5) );
  INVD1 U6 ( .I(B[23]), .ZN(n27) );
  AN2XD1 U7 ( .A1(n5), .A2(n29), .Z(n6) );
  INVD1 U8 ( .I(B[24]), .ZN(n26) );
  AN2XD1 U10 ( .A1(n24), .A2(n47), .Z(n7) );
  AN2XD1 U11 ( .A1(n7), .A2(n46), .Z(n8) );
  AN2XD1 U12 ( .A1(n8), .A2(n45), .Z(n9) );
  AN2XD1 U13 ( .A1(n9), .A2(n44), .Z(n10) );
  AN2XD1 U14 ( .A1(n10), .A2(n43), .Z(n11) );
  AN2XD1 U15 ( .A1(n11), .A2(n42), .Z(n12) );
  AN2XD1 U16 ( .A1(n12), .A2(n41), .Z(n13) );
  AN2XD1 U17 ( .A1(n13), .A2(n40), .Z(n14) );
  AN2XD1 U18 ( .A1(n14), .A2(n39), .Z(n15) );
  AN2XD1 U19 ( .A1(n15), .A2(n38), .Z(n16) );
  AN2XD1 U20 ( .A1(n16), .A2(n37), .Z(n17) );
  AN2XD1 U21 ( .A1(n17), .A2(n36), .Z(n18) );
  AN2XD1 U22 ( .A1(n18), .A2(n35), .Z(n19) );
  AN2XD1 U23 ( .A1(n19), .A2(n34), .Z(n20) );
  AN2XD1 U24 ( .A1(n20), .A2(n33), .Z(n21) );
  AN2XD1 U25 ( .A1(n21), .A2(n32), .Z(n22) );
  AN2XD1 U26 ( .A1(n22), .A2(n31), .Z(n23) );
  INVD1 U27 ( .I(B[21]), .ZN(n30) );
  INVD1 U28 ( .I(B[22]), .ZN(n29) );
  AN2XD1 U29 ( .A1(carry_3_), .A2(n48), .Z(n24) );
  INVD1 U30 ( .I(B[4]), .ZN(n47) );
  INVD1 U31 ( .I(B[3]), .ZN(n48) );
  INVD1 U32 ( .I(B[5]), .ZN(n46) );
  INVD1 U33 ( .I(B[6]), .ZN(n45) );
  INVD1 U34 ( .I(B[7]), .ZN(n44) );
  INVD1 U35 ( .I(B[8]), .ZN(n43) );
  INVD1 U36 ( .I(B[9]), .ZN(n42) );
  INVD1 U37 ( .I(B[10]), .ZN(n41) );
  INVD1 U38 ( .I(B[11]), .ZN(n40) );
  INVD1 U39 ( .I(B[12]), .ZN(n39) );
  INVD1 U40 ( .I(B[13]), .ZN(n38) );
  INVD1 U41 ( .I(B[14]), .ZN(n37) );
  INVD1 U42 ( .I(B[15]), .ZN(n36) );
  INVD1 U43 ( .I(B[16]), .ZN(n35) );
  INVD1 U44 ( .I(B[17]), .ZN(n34) );
  INVD1 U45 ( .I(B[18]), .ZN(n33) );
  INVD1 U46 ( .I(B[19]), .ZN(n32) );
  INVD1 U47 ( .I(B[20]), .ZN(n31) );
  CKXOR2D1 U50 ( .A1(n4), .A2(n28), .Z(DIFF[27]) );
  CKXOR2D1 U51 ( .A1(n3), .A2(n28), .Z(DIFF[26]) );
  CKXOR2D1 U52 ( .A1(n2), .A2(n28), .Z(DIFF[25]) );
  CKXOR2D1 U53 ( .A1(n1), .A2(n26), .Z(DIFF[24]) );
  CKXOR2D1 U54 ( .A1(n6), .A2(n27), .Z(DIFF[23]) );
  CKXOR2D1 U55 ( .A1(n5), .A2(n29), .Z(DIFF[22]) );
  CKXOR2D1 U56 ( .A1(n23), .A2(n30), .Z(DIFF[21]) );
  CKXOR2D1 U57 ( .A1(n22), .A2(n31), .Z(DIFF[20]) );
  CKXOR2D1 U58 ( .A1(n21), .A2(n32), .Z(DIFF[19]) );
  CKXOR2D1 U59 ( .A1(n20), .A2(n33), .Z(DIFF[18]) );
  CKXOR2D1 U60 ( .A1(n19), .A2(n34), .Z(DIFF[17]) );
  CKXOR2D1 U61 ( .A1(n18), .A2(n35), .Z(DIFF[16]) );
  CKXOR2D1 U62 ( .A1(n17), .A2(n36), .Z(DIFF[15]) );
  CKXOR2D1 U63 ( .A1(n16), .A2(n37), .Z(DIFF[14]) );
  CKXOR2D1 U64 ( .A1(n15), .A2(n38), .Z(DIFF[13]) );
  CKXOR2D1 U65 ( .A1(n14), .A2(n39), .Z(DIFF[12]) );
  CKXOR2D1 U66 ( .A1(n13), .A2(n40), .Z(DIFF[11]) );
  CKXOR2D1 U67 ( .A1(n12), .A2(n41), .Z(DIFF[10]) );
  CKXOR2D1 U68 ( .A1(n11), .A2(n42), .Z(DIFF[9]) );
  CKXOR2D1 U69 ( .A1(n10), .A2(n43), .Z(DIFF[8]) );
  CKXOR2D1 U70 ( .A1(n9), .A2(n44), .Z(DIFF[7]) );
  CKXOR2D1 U71 ( .A1(n8), .A2(n45), .Z(DIFF[6]) );
  CKXOR2D1 U72 ( .A1(n7), .A2(n46), .Z(DIFF[5]) );
  CKXOR2D1 U73 ( .A1(n24), .A2(n47), .Z(DIFF[4]) );
  CKXOR2D1 U74 ( .A1(carry_3_), .A2(n48), .Z(DIFF[3]) );
  NR3D0 U75 ( .A1(B[0]), .A2(B[2]), .A3(B[1]), .ZN(carry_3_) );
  CKND0 U9 ( .I(B[28]), .ZN(n28) );
  NR2D0 U48 ( .A1(B[28]), .A2(n4), .ZN(DIFF[28]) );
endmodule


module oadm_fixed_divmul_correction_chain_LEVEL2_DW01_sub_1 ( A, B, CI, DIFF, 
        CO );
  input [28:0] A;
  input [28:0] B;
  output [28:0] DIFF;
  input CI;
  output CO;
  wire   carry_3_, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48;

  AN2XD1 U1 ( .A1(n5), .A2(n26), .Z(n1) );
  AN2XD1 U2 ( .A1(n6), .A2(n48), .Z(n2) );
  AN2XD1 U3 ( .A1(n2), .A2(n48), .Z(n3) );
  AN2XD1 U4 ( .A1(n23), .A2(n28), .Z(n4) );
  AN2XD1 U5 ( .A1(n4), .A2(n27), .Z(n5) );
  AN2XD1 U6 ( .A1(n1), .A2(n47), .Z(n6) );
  INVD1 U7 ( .I(B[23]), .ZN(n26) );
  AN2XD1 U9 ( .A1(n24), .A2(n45), .Z(n7) );
  AN2XD1 U10 ( .A1(n7), .A2(n44), .Z(n8) );
  AN2XD1 U11 ( .A1(n8), .A2(n43), .Z(n9) );
  AN2XD1 U12 ( .A1(n9), .A2(n42), .Z(n10) );
  AN2XD1 U13 ( .A1(n10), .A2(n41), .Z(n11) );
  AN2XD1 U14 ( .A1(n11), .A2(n40), .Z(n12) );
  AN2XD1 U15 ( .A1(n12), .A2(n39), .Z(n13) );
  AN2XD1 U16 ( .A1(n13), .A2(n38), .Z(n14) );
  AN2XD1 U17 ( .A1(n14), .A2(n37), .Z(n15) );
  AN2XD1 U18 ( .A1(n15), .A2(n36), .Z(n16) );
  AN2XD1 U19 ( .A1(n16), .A2(n35), .Z(n17) );
  AN2XD1 U20 ( .A1(n17), .A2(n34), .Z(n18) );
  AN2XD1 U21 ( .A1(n18), .A2(n33), .Z(n19) );
  AN2XD1 U22 ( .A1(n19), .A2(n32), .Z(n20) );
  AN2XD1 U23 ( .A1(n20), .A2(n31), .Z(n21) );
  AN2XD1 U24 ( .A1(n21), .A2(n30), .Z(n22) );
  AN2XD1 U25 ( .A1(n22), .A2(n29), .Z(n23) );
  INVD1 U26 ( .I(B[21]), .ZN(n28) );
  INVD1 U27 ( .I(B[22]), .ZN(n27) );
  INVD1 U28 ( .I(B[24]), .ZN(n47) );
  AN2XD1 U29 ( .A1(carry_3_), .A2(n46), .Z(n24) );
  INVD1 U30 ( .I(B[3]), .ZN(n46) );
  INVD1 U31 ( .I(B[4]), .ZN(n45) );
  INVD1 U32 ( .I(B[5]), .ZN(n44) );
  INVD1 U33 ( .I(B[6]), .ZN(n43) );
  INVD1 U34 ( .I(B[7]), .ZN(n42) );
  INVD1 U35 ( .I(B[8]), .ZN(n41) );
  INVD1 U36 ( .I(B[9]), .ZN(n40) );
  INVD1 U37 ( .I(B[10]), .ZN(n39) );
  INVD1 U38 ( .I(B[11]), .ZN(n38) );
  INVD1 U39 ( .I(B[12]), .ZN(n37) );
  INVD1 U42 ( .I(B[13]), .ZN(n36) );
  INVD1 U43 ( .I(B[14]), .ZN(n35) );
  INVD1 U44 ( .I(B[15]), .ZN(n34) );
  INVD1 U45 ( .I(B[16]), .ZN(n33) );
  INVD1 U46 ( .I(B[17]), .ZN(n32) );
  INVD1 U47 ( .I(B[18]), .ZN(n31) );
  INVD1 U48 ( .I(B[19]), .ZN(n30) );
  INVD1 U49 ( .I(B[20]), .ZN(n29) );
  CKXOR2D1 U50 ( .A1(n3), .A2(n48), .Z(DIFF[27]) );
  CKXOR2D1 U51 ( .A1(n2), .A2(n48), .Z(DIFF[26]) );
  CKXOR2D1 U52 ( .A1(n6), .A2(n48), .Z(DIFF[25]) );
  CKXOR2D1 U53 ( .A1(n1), .A2(n47), .Z(DIFF[24]) );
  CKXOR2D1 U54 ( .A1(n5), .A2(n26), .Z(DIFF[23]) );
  CKXOR2D1 U55 ( .A1(n4), .A2(n27), .Z(DIFF[22]) );
  CKXOR2D1 U56 ( .A1(n23), .A2(n28), .Z(DIFF[21]) );
  CKXOR2D1 U57 ( .A1(n22), .A2(n29), .Z(DIFF[20]) );
  CKXOR2D1 U58 ( .A1(n21), .A2(n30), .Z(DIFF[19]) );
  CKXOR2D1 U59 ( .A1(n20), .A2(n31), .Z(DIFF[18]) );
  CKXOR2D1 U60 ( .A1(n19), .A2(n32), .Z(DIFF[17]) );
  CKXOR2D1 U61 ( .A1(n18), .A2(n33), .Z(DIFF[16]) );
  CKXOR2D1 U62 ( .A1(n17), .A2(n34), .Z(DIFF[15]) );
  CKXOR2D1 U63 ( .A1(n16), .A2(n35), .Z(DIFF[14]) );
  CKXOR2D1 U64 ( .A1(n15), .A2(n36), .Z(DIFF[13]) );
  CKXOR2D1 U65 ( .A1(n14), .A2(n37), .Z(DIFF[12]) );
  CKXOR2D1 U66 ( .A1(n13), .A2(n38), .Z(DIFF[11]) );
  CKXOR2D1 U67 ( .A1(n12), .A2(n39), .Z(DIFF[10]) );
  CKXOR2D1 U68 ( .A1(n11), .A2(n40), .Z(DIFF[9]) );
  CKXOR2D1 U69 ( .A1(n10), .A2(n41), .Z(DIFF[8]) );
  CKXOR2D1 U70 ( .A1(n9), .A2(n42), .Z(DIFF[7]) );
  CKXOR2D1 U71 ( .A1(n8), .A2(n43), .Z(DIFF[6]) );
  CKXOR2D1 U72 ( .A1(n7), .A2(n44), .Z(DIFF[5]) );
  CKXOR2D1 U73 ( .A1(n24), .A2(n45), .Z(DIFF[4]) );
  CKXOR2D1 U74 ( .A1(carry_3_), .A2(n46), .Z(DIFF[3]) );
  NR3D0 U75 ( .A1(B[0]), .A2(B[2]), .A3(B[1]), .ZN(carry_3_) );
  CKND0 U8 ( .I(B[28]), .ZN(n48) );
  NR2D0 U40 ( .A1(B[28]), .A2(n3), .ZN(DIFF[28]) );
endmodule


module oadm_fixed_divmul_correction_chain_LEVEL2_DW01_sub_4 ( A, B, CI, DIFF, 
        CO );
  input [25:0] A;
  input [25:0] B;
  output [25:0] DIFF;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n26, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46;
  wire   [23:22] carry;

  FA1D0 U2_22 ( .A(B[22]), .B(n26), .CI(carry[22]), .CO(carry[23]) );
  INVD1 U1 ( .I(A[22]), .ZN(n26) );
  IND2D1 U2 ( .A1(n21), .B1(B[21]), .ZN(carry[22]) );
  CKBD1 U3 ( .I(DIFF[23]), .Z(DIFF[24]) );
  CKBD1 U4 ( .I(DIFF[23]), .Z(DIFF[25]) );
  AN2XD1 U7 ( .A1(n2), .A2(n46), .Z(n3) );
  AN2XD1 U8 ( .A1(n3), .A2(n45), .Z(n4) );
  AN2XD1 U9 ( .A1(n4), .A2(n44), .Z(n5) );
  AN2XD1 U10 ( .A1(n5), .A2(n43), .Z(n6) );
  AN2XD1 U11 ( .A1(n6), .A2(n42), .Z(n7) );
  AN2XD1 U12 ( .A1(n7), .A2(n41), .Z(n8) );
  AN2XD1 U13 ( .A1(n8), .A2(n40), .Z(n9) );
  AN2XD1 U14 ( .A1(n9), .A2(n39), .Z(n10) );
  AN2XD1 U15 ( .A1(n10), .A2(n38), .Z(n11) );
  AN2XD1 U16 ( .A1(n11), .A2(n37), .Z(n12) );
  AN2XD1 U17 ( .A1(n12), .A2(n36), .Z(n13) );
  AN2XD1 U18 ( .A1(n13), .A2(n35), .Z(n14) );
  AN2XD1 U19 ( .A1(n14), .A2(n34), .Z(n15) );
  AN2XD1 U20 ( .A1(n15), .A2(n33), .Z(n16) );
  AN2XD1 U21 ( .A1(n16), .A2(n32), .Z(n17) );
  AN2XD1 U22 ( .A1(n17), .A2(n31), .Z(n18) );
  AN2XD1 U23 ( .A1(n18), .A2(n30), .Z(n19) );
  AN2XD1 U24 ( .A1(n19), .A2(n29), .Z(n20) );
  INVD1 U26 ( .I(carry[22]), .ZN(DIFF[22]) );
  INVD1 U29 ( .I(B[2]), .ZN(n46) );
  INVD1 U30 ( .I(B[3]), .ZN(n45) );
  CKBD1 U31 ( .I(B[0]), .Z(DIFF[0]) );
  INVD1 U32 ( .I(B[4]), .ZN(n44) );
  INVD1 U33 ( .I(B[5]), .ZN(n43) );
  INVD1 U34 ( .I(B[6]), .ZN(n42) );
  INVD1 U35 ( .I(B[7]), .ZN(n41) );
  INVD1 U36 ( .I(B[8]), .ZN(n40) );
  INVD1 U37 ( .I(B[9]), .ZN(n39) );
  INVD1 U38 ( .I(B[10]), .ZN(n38) );
  INVD1 U39 ( .I(B[11]), .ZN(n37) );
  INVD1 U40 ( .I(B[12]), .ZN(n36) );
  INVD1 U41 ( .I(B[13]), .ZN(n35) );
  INVD1 U42 ( .I(B[14]), .ZN(n34) );
  INVD1 U43 ( .I(B[15]), .ZN(n33) );
  INVD1 U44 ( .I(B[16]), .ZN(n32) );
  INVD1 U45 ( .I(B[17]), .ZN(n31) );
  INVD1 U46 ( .I(B[18]), .ZN(n30) );
  INVD1 U47 ( .I(B[19]), .ZN(n29) );
  INVD1 U48 ( .I(B[20]), .ZN(n28) );
  CKXOR2D1 U50 ( .A1(n20), .A2(n28), .Z(DIFF[20]) );
  CKXOR2D1 U51 ( .A1(n19), .A2(n29), .Z(DIFF[19]) );
  CKXOR2D1 U52 ( .A1(n18), .A2(n30), .Z(DIFF[18]) );
  CKXOR2D1 U53 ( .A1(n17), .A2(n31), .Z(DIFF[17]) );
  CKXOR2D1 U54 ( .A1(n16), .A2(n32), .Z(DIFF[16]) );
  CKXOR2D1 U55 ( .A1(n15), .A2(n33), .Z(DIFF[15]) );
  CKXOR2D1 U56 ( .A1(n14), .A2(n34), .Z(DIFF[14]) );
  CKXOR2D1 U57 ( .A1(n13), .A2(n35), .Z(DIFF[13]) );
  CKXOR2D1 U58 ( .A1(n12), .A2(n36), .Z(DIFF[12]) );
  CKXOR2D1 U59 ( .A1(n11), .A2(n37), .Z(DIFF[11]) );
  CKXOR2D1 U60 ( .A1(n10), .A2(n38), .Z(DIFF[10]) );
  CKXOR2D1 U61 ( .A1(n9), .A2(n39), .Z(DIFF[9]) );
  CKXOR2D1 U62 ( .A1(n8), .A2(n40), .Z(DIFF[8]) );
  CKXOR2D1 U63 ( .A1(n7), .A2(n41), .Z(DIFF[7]) );
  CKXOR2D1 U64 ( .A1(n6), .A2(n42), .Z(DIFF[6]) );
  CKXOR2D1 U65 ( .A1(n5), .A2(n43), .Z(DIFF[5]) );
  CKXOR2D1 U66 ( .A1(n4), .A2(n44), .Z(DIFF[4]) );
  CKXOR2D1 U67 ( .A1(n3), .A2(n45), .Z(DIFF[3]) );
  CKXOR2D1 U68 ( .A1(n2), .A2(n46), .Z(DIFF[2]) );
  CKND0 U70 ( .I(carry[23]), .ZN(DIFF[23]) );
  CKXOR2D0 U5 ( .A1(n21), .A2(B[21]), .Z(DIFF[21]) );
  AN2D0 U6 ( .A1(n28), .A2(n20), .Z(n21) );
  CKXOR2D0 U25 ( .A1(B[0]), .A2(B[1]), .Z(DIFF[1]) );
  NR2D0 U27 ( .A1(B[0]), .A2(B[1]), .ZN(n2) );
endmodule


module oadm_fixed_divmul_correction_chain_LEVEL2_DW01_sub_5 ( A, B, CI, DIFF, 
        CO );
  input [28:0] A;
  input [28:0] B;
  output [28:0] DIFF;
  input CI;
  output CO;
  wire   carry_2_, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50;

  AN2XD1 U1 ( .A1(n24), .A2(n31), .Z(n1) );
  AN2XD1 U2 ( .A1(n1), .A2(n30), .Z(n2) );
  INVD1 U3 ( .I(B[21]), .ZN(n31) );
  AN2XD1 U4 ( .A1(n2), .A2(n28), .Z(n3) );
  AN2XD1 U5 ( .A1(n3), .A2(n27), .Z(n4) );
  AN2XD1 U6 ( .A1(n4), .A2(n29), .Z(n5) );
  AN2XD1 U7 ( .A1(n5), .A2(n29), .Z(n6) );
  AN2XD1 U8 ( .A1(n25), .A2(n49), .Z(n7) );
  AN2XD1 U9 ( .A1(n7), .A2(n48), .Z(n8) );
  AN2XD1 U10 ( .A1(n8), .A2(n47), .Z(n9) );
  AN2XD1 U11 ( .A1(n9), .A2(n46), .Z(n10) );
  AN2XD1 U12 ( .A1(n10), .A2(n45), .Z(n11) );
  AN2XD1 U13 ( .A1(n11), .A2(n44), .Z(n12) );
  AN2XD1 U14 ( .A1(n12), .A2(n43), .Z(n13) );
  AN2XD1 U15 ( .A1(n13), .A2(n42), .Z(n14) );
  AN2XD1 U16 ( .A1(n14), .A2(n41), .Z(n15) );
  AN2XD1 U17 ( .A1(n15), .A2(n40), .Z(n16) );
  AN2XD1 U18 ( .A1(n16), .A2(n39), .Z(n17) );
  AN2XD1 U19 ( .A1(n17), .A2(n38), .Z(n18) );
  AN2XD1 U20 ( .A1(n18), .A2(n37), .Z(n19) );
  AN2XD1 U21 ( .A1(n19), .A2(n36), .Z(n20) );
  AN2XD1 U22 ( .A1(n20), .A2(n35), .Z(n21) );
  AN2XD1 U23 ( .A1(n21), .A2(n34), .Z(n22) );
  AN2XD1 U24 ( .A1(n22), .A2(n33), .Z(n23) );
  AN2XD1 U25 ( .A1(n23), .A2(n32), .Z(n24) );
  INVD1 U26 ( .I(B[23]), .ZN(n28) );
  INVD1 U27 ( .I(B[22]), .ZN(n30) );
  INVD1 U28 ( .I(B[24]), .ZN(n27) );
  AN2XD1 U30 ( .A1(carry_2_), .A2(n50), .Z(n25) );
  INVD1 U31 ( .I(B[2]), .ZN(n50) );
  INVD1 U32 ( .I(B[3]), .ZN(n49) );
  INVD1 U33 ( .I(B[4]), .ZN(n48) );
  INVD1 U34 ( .I(B[5]), .ZN(n47) );
  INVD1 U35 ( .I(B[6]), .ZN(n46) );
  INVD1 U36 ( .I(B[7]), .ZN(n45) );
  INVD1 U37 ( .I(B[8]), .ZN(n44) );
  INVD1 U38 ( .I(B[9]), .ZN(n43) );
  INVD1 U39 ( .I(B[10]), .ZN(n42) );
  INVD1 U40 ( .I(B[11]), .ZN(n41) );
  INVD1 U41 ( .I(B[12]), .ZN(n40) );
  INVD1 U42 ( .I(B[13]), .ZN(n39) );
  INVD1 U43 ( .I(B[14]), .ZN(n38) );
  INVD1 U44 ( .I(B[15]), .ZN(n37) );
  INVD1 U45 ( .I(B[16]), .ZN(n36) );
  INVD1 U46 ( .I(B[17]), .ZN(n35) );
  INVD1 U47 ( .I(B[18]), .ZN(n34) );
  INVD1 U48 ( .I(B[19]), .ZN(n33) );
  INVD1 U49 ( .I(B[20]), .ZN(n32) );
  CKXOR2D1 U52 ( .A1(n6), .A2(n29), .Z(DIFF[27]) );
  CKXOR2D1 U53 ( .A1(n5), .A2(n29), .Z(DIFF[26]) );
  CKXOR2D1 U54 ( .A1(n4), .A2(n29), .Z(DIFF[25]) );
  CKXOR2D1 U55 ( .A1(n3), .A2(n27), .Z(DIFF[24]) );
  CKXOR2D1 U56 ( .A1(n2), .A2(n28), .Z(DIFF[23]) );
  CKXOR2D1 U57 ( .A1(n1), .A2(n30), .Z(DIFF[22]) );
  CKXOR2D1 U58 ( .A1(n24), .A2(n31), .Z(DIFF[21]) );
  CKXOR2D1 U59 ( .A1(n23), .A2(n32), .Z(DIFF[20]) );
  CKXOR2D1 U60 ( .A1(n22), .A2(n33), .Z(DIFF[19]) );
  CKXOR2D1 U61 ( .A1(n21), .A2(n34), .Z(DIFF[18]) );
  CKXOR2D1 U62 ( .A1(n20), .A2(n35), .Z(DIFF[17]) );
  CKXOR2D1 U63 ( .A1(n19), .A2(n36), .Z(DIFF[16]) );
  CKXOR2D1 U64 ( .A1(n18), .A2(n37), .Z(DIFF[15]) );
  CKXOR2D1 U65 ( .A1(n17), .A2(n38), .Z(DIFF[14]) );
  CKXOR2D1 U66 ( .A1(n16), .A2(n39), .Z(DIFF[13]) );
  CKXOR2D1 U67 ( .A1(n15), .A2(n40), .Z(DIFF[12]) );
  CKXOR2D1 U68 ( .A1(n14), .A2(n41), .Z(DIFF[11]) );
  CKXOR2D1 U69 ( .A1(n13), .A2(n42), .Z(DIFF[10]) );
  CKXOR2D1 U70 ( .A1(n12), .A2(n43), .Z(DIFF[9]) );
  CKXOR2D1 U71 ( .A1(n11), .A2(n44), .Z(DIFF[8]) );
  CKXOR2D1 U72 ( .A1(n10), .A2(n45), .Z(DIFF[7]) );
  CKXOR2D1 U73 ( .A1(n9), .A2(n46), .Z(DIFF[6]) );
  CKXOR2D1 U74 ( .A1(n8), .A2(n47), .Z(DIFF[5]) );
  CKXOR2D1 U75 ( .A1(n7), .A2(n48), .Z(DIFF[4]) );
  CKXOR2D1 U76 ( .A1(n25), .A2(n49), .Z(DIFF[3]) );
  CKXOR2D1 U77 ( .A1(carry_2_), .A2(n50), .Z(DIFF[2]) );
  NR2D0 U78 ( .A1(B[1]), .A2(B[0]), .ZN(carry_2_) );
  CKND0 U29 ( .I(B[28]), .ZN(n29) );
  NR2D0 U50 ( .A1(B[28]), .A2(n6), .ZN(DIFF[28]) );
endmodule


module oadm_fixed_divmul_correction_chain_LEVEL2_DW01_sub_6 ( A, B, CI, DIFF, 
        CO );
  input [28:0] A;
  input [28:0] B;
  output [28:0] DIFF;
  input CI;
  output CO;
  wire   carry_2_, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50;

  AN2XD1 U1 ( .A1(n24), .A2(n29), .Z(n1) );
  AN2XD1 U2 ( .A1(n1), .A2(n28), .Z(n2) );
  AN2XD1 U3 ( .A1(n2), .A2(n27), .Z(n3) );
  AN2XD1 U4 ( .A1(n3), .A2(n49), .Z(n4) );
  AN2XD1 U5 ( .A1(n4), .A2(n50), .Z(n5) );
  AN2XD1 U6 ( .A1(n5), .A2(n50), .Z(n6) );
  INVD1 U7 ( .I(B[21]), .ZN(n29) );
  AN2XD1 U8 ( .A1(n25), .A2(n47), .Z(n7) );
  AN2XD1 U9 ( .A1(n7), .A2(n46), .Z(n8) );
  AN2XD1 U10 ( .A1(n8), .A2(n45), .Z(n9) );
  AN2XD1 U11 ( .A1(n9), .A2(n44), .Z(n10) );
  AN2XD1 U12 ( .A1(n10), .A2(n43), .Z(n11) );
  AN2XD1 U13 ( .A1(n11), .A2(n42), .Z(n12) );
  AN2XD1 U14 ( .A1(n12), .A2(n41), .Z(n13) );
  AN2XD1 U15 ( .A1(n13), .A2(n40), .Z(n14) );
  AN2XD1 U16 ( .A1(n14), .A2(n39), .Z(n15) );
  AN2XD1 U17 ( .A1(n15), .A2(n38), .Z(n16) );
  AN2XD1 U18 ( .A1(n16), .A2(n37), .Z(n17) );
  AN2XD1 U19 ( .A1(n17), .A2(n36), .Z(n18) );
  AN2XD1 U20 ( .A1(n18), .A2(n35), .Z(n19) );
  AN2XD1 U21 ( .A1(n19), .A2(n34), .Z(n20) );
  AN2XD1 U22 ( .A1(n20), .A2(n33), .Z(n21) );
  AN2XD1 U23 ( .A1(n21), .A2(n32), .Z(n22) );
  AN2XD1 U24 ( .A1(n22), .A2(n31), .Z(n23) );
  AN2XD1 U25 ( .A1(n23), .A2(n30), .Z(n24) );
  INVD1 U26 ( .I(B[22]), .ZN(n28) );
  INVD1 U27 ( .I(B[23]), .ZN(n27) );
  INVD1 U28 ( .I(B[24]), .ZN(n49) );
  AN2XD1 U30 ( .A1(carry_2_), .A2(n48), .Z(n25) );
  INVD1 U31 ( .I(B[2]), .ZN(n48) );
  INVD1 U32 ( .I(B[3]), .ZN(n47) );
  INVD1 U33 ( .I(B[4]), .ZN(n46) );
  INVD1 U34 ( .I(B[5]), .ZN(n45) );
  INVD1 U35 ( .I(B[6]), .ZN(n44) );
  INVD1 U36 ( .I(B[7]), .ZN(n43) );
  INVD1 U37 ( .I(B[8]), .ZN(n42) );
  INVD1 U38 ( .I(B[9]), .ZN(n41) );
  INVD1 U39 ( .I(B[10]), .ZN(n40) );
  INVD1 U40 ( .I(B[11]), .ZN(n39) );
  INVD1 U41 ( .I(B[12]), .ZN(n38) );
  INVD1 U44 ( .I(B[13]), .ZN(n37) );
  INVD1 U45 ( .I(B[14]), .ZN(n36) );
  INVD1 U46 ( .I(B[15]), .ZN(n35) );
  INVD1 U47 ( .I(B[16]), .ZN(n34) );
  INVD1 U48 ( .I(B[17]), .ZN(n33) );
  INVD1 U49 ( .I(B[18]), .ZN(n32) );
  INVD1 U50 ( .I(B[19]), .ZN(n31) );
  INVD1 U51 ( .I(B[20]), .ZN(n30) );
  CKXOR2D1 U52 ( .A1(n6), .A2(n50), .Z(DIFF[27]) );
  CKXOR2D1 U53 ( .A1(n5), .A2(n50), .Z(DIFF[26]) );
  CKXOR2D1 U54 ( .A1(n4), .A2(n50), .Z(DIFF[25]) );
  CKXOR2D1 U55 ( .A1(n3), .A2(n49), .Z(DIFF[24]) );
  CKXOR2D1 U56 ( .A1(n2), .A2(n27), .Z(DIFF[23]) );
  CKXOR2D1 U57 ( .A1(n1), .A2(n28), .Z(DIFF[22]) );
  CKXOR2D1 U58 ( .A1(n24), .A2(n29), .Z(DIFF[21]) );
  CKXOR2D1 U59 ( .A1(n23), .A2(n30), .Z(DIFF[20]) );
  CKXOR2D1 U60 ( .A1(n22), .A2(n31), .Z(DIFF[19]) );
  CKXOR2D1 U61 ( .A1(n21), .A2(n32), .Z(DIFF[18]) );
  CKXOR2D1 U62 ( .A1(n20), .A2(n33), .Z(DIFF[17]) );
  CKXOR2D1 U63 ( .A1(n19), .A2(n34), .Z(DIFF[16]) );
  CKXOR2D1 U64 ( .A1(n18), .A2(n35), .Z(DIFF[15]) );
  CKXOR2D1 U65 ( .A1(n17), .A2(n36), .Z(DIFF[14]) );
  CKXOR2D1 U66 ( .A1(n16), .A2(n37), .Z(DIFF[13]) );
  CKXOR2D1 U67 ( .A1(n15), .A2(n38), .Z(DIFF[12]) );
  CKXOR2D1 U68 ( .A1(n14), .A2(n39), .Z(DIFF[11]) );
  CKXOR2D1 U69 ( .A1(n13), .A2(n40), .Z(DIFF[10]) );
  CKXOR2D1 U70 ( .A1(n12), .A2(n41), .Z(DIFF[9]) );
  CKXOR2D1 U71 ( .A1(n11), .A2(n42), .Z(DIFF[8]) );
  CKXOR2D1 U72 ( .A1(n10), .A2(n43), .Z(DIFF[7]) );
  CKXOR2D1 U73 ( .A1(n9), .A2(n44), .Z(DIFF[6]) );
  CKXOR2D1 U74 ( .A1(n8), .A2(n45), .Z(DIFF[5]) );
  CKXOR2D1 U75 ( .A1(n7), .A2(n46), .Z(DIFF[4]) );
  CKXOR2D1 U76 ( .A1(n25), .A2(n47), .Z(DIFF[3]) );
  CKXOR2D1 U77 ( .A1(carry_2_), .A2(n48), .Z(DIFF[2]) );
  NR2D0 U78 ( .A1(B[1]), .A2(B[0]), .ZN(carry_2_) );
  CKND0 U29 ( .I(B[28]), .ZN(n50) );
  NR2D0 U42 ( .A1(B[28]), .A2(n6), .ZN(DIFF[28]) );
endmodule


module oadm_fixed_divmul_correction_chain_LEVEL2_DW01_sub_9 ( A, B, CI, DIFF, 
        CO );
  input [25:0] A;
  input [25:0] B;
  output [25:0] DIFF;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46;

  NR2D1 U1 ( .A1(n2), .A2(n27), .ZN(DIFF[23]) );
  AN2XD1 U2 ( .A1(n22), .A2(n26), .Z(n2) );
  INVD1 U3 ( .I(B[21]), .ZN(n26) );
  INVD1 U4 ( .I(B[22]), .ZN(n27) );
  AN2XD1 U6 ( .A1(n3), .A2(n46), .Z(n4) );
  AN2XD1 U7 ( .A1(n4), .A2(n45), .Z(n5) );
  AN2XD1 U8 ( .A1(n5), .A2(n44), .Z(n6) );
  AN2XD1 U9 ( .A1(n6), .A2(n43), .Z(n7) );
  AN2XD1 U10 ( .A1(n7), .A2(n42), .Z(n8) );
  AN2XD1 U11 ( .A1(n8), .A2(n41), .Z(n9) );
  AN2XD1 U12 ( .A1(n9), .A2(n40), .Z(n10) );
  AN2XD1 U13 ( .A1(n10), .A2(n39), .Z(n11) );
  AN2XD1 U14 ( .A1(n11), .A2(n38), .Z(n12) );
  AN2XD1 U15 ( .A1(n12), .A2(n37), .Z(n13) );
  AN2XD1 U16 ( .A1(n13), .A2(n36), .Z(n14) );
  AN2XD1 U17 ( .A1(n14), .A2(n35), .Z(n15) );
  AN2XD1 U18 ( .A1(n15), .A2(n34), .Z(n16) );
  AN2XD1 U19 ( .A1(n16), .A2(n33), .Z(n17) );
  AN2XD1 U20 ( .A1(n17), .A2(n32), .Z(n18) );
  AN2XD1 U21 ( .A1(n18), .A2(n31), .Z(n19) );
  AN2XD1 U22 ( .A1(n19), .A2(n30), .Z(n20) );
  AN2XD1 U23 ( .A1(n20), .A2(n29), .Z(n21) );
  AN2XD1 U24 ( .A1(n21), .A2(n28), .Z(n22) );
  CKBD1 U25 ( .I(DIFF[23]), .Z(DIFF[24]) );
  CKBD1 U26 ( .I(DIFF[23]), .Z(DIFF[25]) );
  INVD1 U29 ( .I(B[2]), .ZN(n46) );
  CKBD1 U30 ( .I(B[0]), .Z(DIFF[0]) );
  INVD1 U31 ( .I(B[3]), .ZN(n45) );
  INVD1 U32 ( .I(B[4]), .ZN(n44) );
  INVD1 U33 ( .I(B[5]), .ZN(n43) );
  INVD1 U34 ( .I(B[6]), .ZN(n42) );
  INVD1 U35 ( .I(B[7]), .ZN(n41) );
  INVD1 U36 ( .I(B[8]), .ZN(n40) );
  INVD1 U37 ( .I(B[9]), .ZN(n39) );
  INVD1 U38 ( .I(B[10]), .ZN(n38) );
  INVD1 U39 ( .I(B[11]), .ZN(n37) );
  INVD1 U40 ( .I(B[12]), .ZN(n36) );
  INVD1 U41 ( .I(B[13]), .ZN(n35) );
  INVD1 U42 ( .I(B[14]), .ZN(n34) );
  INVD1 U43 ( .I(B[15]), .ZN(n33) );
  INVD1 U44 ( .I(B[16]), .ZN(n32) );
  INVD1 U45 ( .I(B[17]), .ZN(n31) );
  INVD1 U46 ( .I(B[18]), .ZN(n30) );
  INVD1 U47 ( .I(B[19]), .ZN(n29) );
  INVD1 U48 ( .I(B[20]), .ZN(n28) );
  XNR2D1 U49 ( .A1(n2), .A2(n27), .ZN(DIFF[22]) );
  CKXOR2D1 U50 ( .A1(n22), .A2(n26), .Z(DIFF[21]) );
  CKXOR2D1 U51 ( .A1(n21), .A2(n28), .Z(DIFF[20]) );
  CKXOR2D1 U52 ( .A1(n20), .A2(n29), .Z(DIFF[19]) );
  CKXOR2D1 U53 ( .A1(n19), .A2(n30), .Z(DIFF[18]) );
  CKXOR2D1 U54 ( .A1(n18), .A2(n31), .Z(DIFF[17]) );
  CKXOR2D1 U55 ( .A1(n17), .A2(n32), .Z(DIFF[16]) );
  CKXOR2D1 U56 ( .A1(n16), .A2(n33), .Z(DIFF[15]) );
  CKXOR2D1 U57 ( .A1(n15), .A2(n34), .Z(DIFF[14]) );
  CKXOR2D1 U58 ( .A1(n14), .A2(n35), .Z(DIFF[13]) );
  CKXOR2D1 U59 ( .A1(n13), .A2(n36), .Z(DIFF[12]) );
  CKXOR2D1 U60 ( .A1(n12), .A2(n37), .Z(DIFF[11]) );
  CKXOR2D1 U61 ( .A1(n11), .A2(n38), .Z(DIFF[10]) );
  CKXOR2D1 U62 ( .A1(n10), .A2(n39), .Z(DIFF[9]) );
  CKXOR2D1 U63 ( .A1(n9), .A2(n40), .Z(DIFF[8]) );
  CKXOR2D1 U64 ( .A1(n8), .A2(n41), .Z(DIFF[7]) );
  CKXOR2D1 U65 ( .A1(n7), .A2(n42), .Z(DIFF[6]) );
  CKXOR2D1 U66 ( .A1(n6), .A2(n43), .Z(DIFF[5]) );
  CKXOR2D1 U67 ( .A1(n5), .A2(n44), .Z(DIFF[4]) );
  CKXOR2D1 U68 ( .A1(n4), .A2(n45), .Z(DIFF[3]) );
  CKXOR2D1 U69 ( .A1(n3), .A2(n46), .Z(DIFF[2]) );
  CKXOR2D0 U5 ( .A1(B[0]), .A2(B[1]), .Z(DIFF[1]) );
  NR2D0 U27 ( .A1(B[0]), .A2(B[1]), .ZN(n3) );
endmodule


module oadm_fixed_divmul_correction_chain_LEVEL2_DW_mult_uns_0 ( a, b, product
 );
  input [28:0] a;
  input [6:0] b;
  output [35:0] product;
  wire   n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206,
         n207, n208, n209, n210, n213, n214, n215, n216, n217, n218, n219,
         n220, n221, n222, n223, n224, n225, n226, n227, n228, n229, n230,
         n231, n232, n233, n234, n235, n236, n237, n437, n438, n439, n440,
         n441, n442, n443, n444, n445, n446, n447, n448, n449, n450, n451,
         n452, n453, n454, n455, n456, n457, n458, n459, n460, n461, n462,
         n463, n464, n465, n466, n467, n468, n469, n470, n471, n472, n473,
         n474, n475, n476, n477, n478, n479, n480, n482, n483, n484, n485,
         n486, n487, n488, n489, n490, n491, n492, n493, n494, n495, n496,
         n497, n498, n499, n500, n501, n502, n503, n504, n505, n506, n507,
         n508, n509, n510;

  FA1D0 U17 ( .A(n50), .B(n47), .CI(n17), .CO(n16), .S(product[30]) );
  FA1D0 U18 ( .A(n51), .B(n55), .CI(n18), .CO(n17), .S(product[29]) );
  FA1D0 U19 ( .A(n58), .B(n56), .CI(n19), .CO(n18), .S(product[28]) );
  FA1D0 U20 ( .A(n61), .B(n59), .CI(n20), .CO(n19), .S(product[27]) );
  FA1D0 U21 ( .A(n64), .B(n62), .CI(n21), .CO(n20), .S(product[26]) );
  FA1D0 U22 ( .A(n67), .B(n65), .CI(n22), .CO(n21), .S(product[25]) );
  FA1D0 U23 ( .A(n70), .B(n68), .CI(n23), .CO(n22), .S(product[24]) );
  FA1D0 U24 ( .A(n73), .B(n71), .CI(n24), .CO(n23), .S(product[23]) );
  FA1D0 U25 ( .A(n76), .B(n74), .CI(n25), .CO(n24), .S(product[22]) );
  FA1D0 U26 ( .A(n79), .B(n77), .CI(n26), .CO(n25), .S(product[21]) );
  FA1D0 U27 ( .A(n82), .B(n80), .CI(n27), .CO(n26), .S(product[20]) );
  FA1D0 U28 ( .A(n85), .B(n83), .CI(n28), .CO(n27), .S(product[19]) );
  FA1D0 U29 ( .A(n88), .B(n86), .CI(n29), .CO(n28), .S(product[18]) );
  FA1D0 U30 ( .A(n91), .B(n89), .CI(n30), .CO(n29), .S(product[17]) );
  FA1D0 U31 ( .A(n94), .B(n92), .CI(n31), .CO(n30), .S(product[16]) );
  FA1D0 U32 ( .A(n97), .B(n95), .CI(n32), .CO(n31), .S(product[15]) );
  FA1D0 U33 ( .A(n100), .B(n98), .CI(n33), .CO(n32), .S(product[14]) );
  FA1D0 U34 ( .A(n103), .B(n101), .CI(n34), .CO(n33), .S(product[13]) );
  FA1D0 U35 ( .A(n106), .B(n104), .CI(n35), .CO(n34), .S(product[12]) );
  FA1D0 U36 ( .A(n109), .B(n107), .CI(n36), .CO(n35), .S(product[11]) );
  FA1D0 U37 ( .A(n112), .B(n110), .CI(n37), .CO(n36), .S(product[10]) );
  FA1D0 U38 ( .A(n115), .B(n113), .CI(n38), .CO(n37), .S(product[9]) );
  FA1D0 U39 ( .A(n118), .B(n116), .CI(n39), .CO(n38), .S(product[8]) );
  FA1D0 U40 ( .A(n119), .B(n121), .CI(n40), .CO(n39), .S(product[7]) );
  FA1D0 U47 ( .A(n52), .B(n157), .CI(n49), .CO(n46), .S(n47) );
  HA1D0 U48 ( .A(n131), .B(n184), .CO(n48), .S(n49) );
  FA1D0 U49 ( .A(n54), .B(n158), .CI(n53), .CO(n50), .S(n51) );
  HA1D0 U50 ( .A(n132), .B(n185), .CO(n52), .S(n53) );
  CMPE42D1 U51 ( .A(n186), .B(n213), .C(n133), .CIX(n57), .D(n159), .CO(n55), 
        .COX(n54), .S(n56) );
  CMPE42D1 U52 ( .A(n187), .B(n214), .C(n134), .CIX(n60), .D(n160), .CO(n58), 
        .COX(n57), .S(n59) );
  CMPE42D1 U53 ( .A(n188), .B(n215), .C(n135), .CIX(n63), .D(n161), .CO(n61), 
        .COX(n60), .S(n62) );
  CMPE42D1 U54 ( .A(n189), .B(n216), .C(n136), .CIX(n66), .D(n162), .CO(n64), 
        .COX(n63), .S(n65) );
  CMPE42D1 U55 ( .A(n190), .B(n217), .C(n137), .CIX(n69), .D(n163), .CO(n67), 
        .COX(n66), .S(n68) );
  CMPE42D1 U56 ( .A(n191), .B(n218), .C(n138), .CIX(n72), .D(n164), .CO(n70), 
        .COX(n69), .S(n71) );
  CMPE42D1 U57 ( .A(n192), .B(n219), .C(n139), .CIX(n75), .D(n165), .CO(n73), 
        .COX(n72), .S(n74) );
  CMPE42D1 U58 ( .A(n193), .B(n220), .C(n140), .CIX(n78), .D(n166), .CO(n76), 
        .COX(n75), .S(n77) );
  CMPE42D1 U59 ( .A(n194), .B(n221), .C(n141), .CIX(n81), .D(n167), .CO(n79), 
        .COX(n78), .S(n80) );
  CMPE42D1 U60 ( .A(n195), .B(n222), .C(n142), .CIX(n84), .D(n168), .CO(n82), 
        .COX(n81), .S(n83) );
  CMPE42D1 U61 ( .A(n196), .B(n223), .C(n143), .CIX(n87), .D(n169), .CO(n85), 
        .COX(n84), .S(n86) );
  CMPE42D1 U62 ( .A(n197), .B(n224), .C(n144), .CIX(n90), .D(n170), .CO(n88), 
        .COX(n87), .S(n89) );
  CMPE42D1 U63 ( .A(n198), .B(n225), .C(n145), .CIX(n93), .D(n171), .CO(n91), 
        .COX(n90), .S(n92) );
  CMPE42D1 U64 ( .A(n199), .B(n226), .C(n146), .CIX(n96), .D(n172), .CO(n94), 
        .COX(n93), .S(n95) );
  CMPE42D1 U65 ( .A(n200), .B(n227), .C(n147), .CIX(n99), .D(n173), .CO(n97), 
        .COX(n96), .S(n98) );
  CMPE42D1 U66 ( .A(n201), .B(n228), .C(n148), .CIX(n102), .D(n174), .CO(n100), 
        .COX(n99), .S(n101) );
  CMPE42D1 U67 ( .A(n202), .B(n229), .C(n149), .CIX(n105), .D(n175), .CO(n103), 
        .COX(n102), .S(n104) );
  CMPE42D1 U68 ( .A(n203), .B(n230), .C(n150), .CIX(n108), .D(n176), .CO(n106), 
        .COX(n105), .S(n107) );
  CMPE42D1 U69 ( .A(n204), .B(n231), .C(n151), .CIX(n111), .D(n177), .CO(n109), 
        .COX(n108), .S(n110) );
  CMPE42D1 U70 ( .A(n205), .B(n232), .C(n152), .CIX(n114), .D(n178), .CO(n112), 
        .COX(n111), .S(n113) );
  CMPE42D1 U71 ( .A(n206), .B(n233), .C(n153), .CIX(n117), .D(n179), .CO(n115), 
        .COX(n114), .S(n116) );
  CMPE42D1 U72 ( .A(n207), .B(n234), .C(n154), .CIX(n120), .D(n180), .CO(n118), 
        .COX(n117), .S(n119) );
  CMPE42D1 U73 ( .A(n208), .B(n235), .C(n155), .CIX(n181), .D(n125), .CO(n121), 
        .COX(n120), .S(n122) );
  FA1D0 U74 ( .A(n126), .B(n127), .CI(n182), .CO(n123), .S(n124) );
  HA1D0 U75 ( .A(n209), .B(n236), .CO(n125), .S(n126) );
  HA1D0 U76 ( .A(n210), .B(n237), .CO(n127), .S(n128) );
  INVD1 U313 ( .I(n124), .ZN(n461) );
  INVD1 U314 ( .I(a[21]), .ZN(n445) );
  INVD1 U315 ( .I(a[22]), .ZN(n444) );
  INVD1 U316 ( .I(a[20]), .ZN(n446) );
  INVD1 U317 ( .I(a[23]), .ZN(n443) );
  INVD1 U318 ( .I(a[24]), .ZN(n442) );
  INVD1 U319 ( .I(a[25]), .ZN(n441) );
  INVD1 U320 ( .I(a[26]), .ZN(n440) );
  INVD1 U321 ( .I(a[27]), .ZN(n439) );
  INVD1 U322 ( .I(a[1]), .ZN(n466) );
  INVD1 U323 ( .I(a[0]), .ZN(n467) );
  INVD1 U324 ( .I(a[5]), .ZN(n462) );
  INVD1 U325 ( .I(a[6]), .ZN(n460) );
  INVD1 U326 ( .I(a[7]), .ZN(n459) );
  INVD1 U327 ( .I(a[4]), .ZN(n463) );
  INVD1 U328 ( .I(a[8]), .ZN(n458) );
  INVD1 U329 ( .I(a[9]), .ZN(n457) );
  INVD1 U330 ( .I(a[10]), .ZN(n456) );
  INVD1 U331 ( .I(a[3]), .ZN(n464) );
  INVD1 U332 ( .I(a[11]), .ZN(n455) );
  INVD1 U333 ( .I(a[12]), .ZN(n454) );
  INVD1 U334 ( .I(a[13]), .ZN(n453) );
  INVD1 U335 ( .I(a[14]), .ZN(n452) );
  INVD1 U336 ( .I(a[15]), .ZN(n451) );
  INVD1 U337 ( .I(a[2]), .ZN(n465) );
  INVD1 U338 ( .I(a[16]), .ZN(n450) );
  INVD1 U339 ( .I(a[17]), .ZN(n449) );
  INVD1 U340 ( .I(a[19]), .ZN(n447) );
  INVD1 U341 ( .I(a[18]), .ZN(n448) );
  INVD1 U342 ( .I(a[28]), .ZN(n438) );
  INVD1 U343 ( .I(b[0]), .ZN(n468) );
  INVD1 U344 ( .I(b[5]), .ZN(n437) );
  CKXOR2D1 U345 ( .A1(n437), .A2(b[6]), .Z(n476) );
  XOR3D0 U346 ( .A1(n469), .A2(n470), .A3(n471), .Z(product[31]) );
  OAI22D0 U347 ( .A1(n472), .A2(n473), .B1(n474), .B2(b[2]), .ZN(n471) );
  CKXOR2D0 U348 ( .A1(b[5]), .A2(n439), .Z(n474) );
  OAI22D0 U349 ( .A1(n475), .A2(n442), .B1(n476), .B2(n441), .ZN(n470) );
  XOR3D0 U350 ( .A1(n48), .A2(n46), .A3(n16), .Z(n469) );
  AO222D0 U351 ( .A1(n477), .A2(n122), .B1(n477), .B2(n123), .C1(n123), .C2(
        n122), .Z(n40) );
  OAI222D0 U352 ( .A1(n478), .A2(n461), .B1(n479), .B2(n478), .C1(n479), .C2(
        n461), .ZN(n477) );
  OA21D0 U353 ( .A1(a[0]), .A2(n437), .B(n473), .Z(n479) );
  OAI222D0 U356 ( .A1(n482), .A2(n483), .B1(n482), .B2(n484), .C1(n484), .C2(
        n483), .ZN(n480) );
  CKND2D0 U357 ( .A1(b[2]), .A2(a[1]), .ZN(n484) );
  CKND2D0 U358 ( .A1(a[3]), .A2(b[0]), .ZN(n483) );
  ND4D0 U359 ( .A1(b[0]), .A2(a[2]), .A3(b[2]), .A4(a[0]), .ZN(n482) );
  NR2D0 U360 ( .A1(n468), .A2(n463), .ZN(n237) );
  NR2D0 U361 ( .A1(n468), .A2(n462), .ZN(n236) );
  NR2D0 U362 ( .A1(n468), .A2(n460), .ZN(n235) );
  NR2D0 U363 ( .A1(n468), .A2(n459), .ZN(n234) );
  NR2D0 U364 ( .A1(n468), .A2(n458), .ZN(n233) );
  NR2D0 U365 ( .A1(n468), .A2(n457), .ZN(n232) );
  NR2D0 U366 ( .A1(n468), .A2(n456), .ZN(n231) );
  NR2D0 U367 ( .A1(n468), .A2(n455), .ZN(n230) );
  NR2D0 U368 ( .A1(n468), .A2(n454), .ZN(n229) );
  NR2D0 U369 ( .A1(n468), .A2(n453), .ZN(n228) );
  NR2D0 U370 ( .A1(n468), .A2(n452), .ZN(n227) );
  NR2D0 U371 ( .A1(n468), .A2(n451), .ZN(n226) );
  NR2D0 U372 ( .A1(n468), .A2(n450), .ZN(n225) );
  NR2D0 U373 ( .A1(n468), .A2(n449), .ZN(n224) );
  NR2D0 U374 ( .A1(n468), .A2(n448), .ZN(n223) );
  NR2D0 U375 ( .A1(n468), .A2(n447), .ZN(n222) );
  NR2D0 U376 ( .A1(n468), .A2(n446), .ZN(n221) );
  NR2D0 U377 ( .A1(n468), .A2(n445), .ZN(n220) );
  NR2D0 U378 ( .A1(n468), .A2(n444), .ZN(n219) );
  NR2D0 U379 ( .A1(n468), .A2(n443), .ZN(n218) );
  NR2D0 U380 ( .A1(n442), .A2(n468), .ZN(n217) );
  NR2D0 U381 ( .A1(n441), .A2(n468), .ZN(n216) );
  NR2D0 U382 ( .A1(n440), .A2(n468), .ZN(n215) );
  NR2D0 U383 ( .A1(n439), .A2(n468), .ZN(n214) );
  NR2D0 U384 ( .A1(n468), .A2(n438), .ZN(n213) );
  NR2D0 U385 ( .A1(b[4]), .A2(n465), .ZN(n210) );
  NR2D0 U386 ( .A1(b[4]), .A2(n464), .ZN(n209) );
  NR2D0 U387 ( .A1(b[4]), .A2(n463), .ZN(n208) );
  NR2D0 U388 ( .A1(b[4]), .A2(n462), .ZN(n207) );
  NR2D0 U389 ( .A1(b[4]), .A2(n460), .ZN(n206) );
  NR2D0 U390 ( .A1(b[4]), .A2(n459), .ZN(n205) );
  NR2D0 U391 ( .A1(b[4]), .A2(n458), .ZN(n204) );
  NR2D0 U392 ( .A1(b[4]), .A2(n457), .ZN(n203) );
  NR2D0 U393 ( .A1(b[4]), .A2(n456), .ZN(n202) );
  NR2D0 U394 ( .A1(b[4]), .A2(n455), .ZN(n201) );
  NR2D0 U395 ( .A1(b[4]), .A2(n454), .ZN(n200) );
  NR2D0 U396 ( .A1(b[4]), .A2(n453), .ZN(n199) );
  NR2D0 U397 ( .A1(b[4]), .A2(n452), .ZN(n198) );
  NR2D0 U398 ( .A1(b[4]), .A2(n451), .ZN(n197) );
  NR2D0 U399 ( .A1(b[4]), .A2(n450), .ZN(n196) );
  NR2D0 U400 ( .A1(b[4]), .A2(n449), .ZN(n195) );
  NR2D0 U401 ( .A1(b[4]), .A2(n448), .ZN(n194) );
  NR2D0 U402 ( .A1(b[4]), .A2(n447), .ZN(n193) );
  NR2D0 U403 ( .A1(b[4]), .A2(n446), .ZN(n192) );
  NR2D0 U404 ( .A1(b[4]), .A2(n445), .ZN(n191) );
  NR2D0 U405 ( .A1(b[4]), .A2(n444), .ZN(n190) );
  NR2D0 U406 ( .A1(b[4]), .A2(n443), .ZN(n189) );
  NR2D0 U407 ( .A1(n442), .A2(b[4]), .ZN(n188) );
  NR2D0 U408 ( .A1(n441), .A2(b[4]), .ZN(n187) );
  NR2D0 U409 ( .A1(n440), .A2(b[4]), .ZN(n186) );
  NR2D0 U410 ( .A1(n439), .A2(b[4]), .ZN(n185) );
  NR2D0 U411 ( .A1(b[4]), .A2(n438), .ZN(n184) );
  OAI22D0 U412 ( .A1(a[0]), .A2(n473), .B1(n485), .B2(b[2]), .ZN(n182) );
  OAI22D0 U413 ( .A1(n485), .A2(n473), .B1(n486), .B2(b[2]), .ZN(n181) );
  CKXOR2D0 U414 ( .A1(b[5]), .A2(n466), .Z(n485) );
  OAI22D0 U415 ( .A1(n486), .A2(n473), .B1(n487), .B2(b[2]), .ZN(n180) );
  CKXOR2D0 U416 ( .A1(b[5]), .A2(n465), .Z(n486) );
  OAI22D0 U417 ( .A1(n487), .A2(n473), .B1(n488), .B2(b[2]), .ZN(n179) );
  CKXOR2D0 U418 ( .A1(b[5]), .A2(n464), .Z(n487) );
  OAI22D0 U419 ( .A1(n488), .A2(n473), .B1(n489), .B2(b[2]), .ZN(n178) );
  CKXOR2D0 U420 ( .A1(b[5]), .A2(n463), .Z(n488) );
  OAI22D0 U421 ( .A1(n489), .A2(n473), .B1(n490), .B2(b[2]), .ZN(n177) );
  CKXOR2D0 U422 ( .A1(b[5]), .A2(n462), .Z(n489) );
  OAI22D0 U423 ( .A1(n490), .A2(n473), .B1(n491), .B2(b[2]), .ZN(n176) );
  CKXOR2D0 U424 ( .A1(b[5]), .A2(n460), .Z(n490) );
  OAI22D0 U425 ( .A1(n491), .A2(n473), .B1(n492), .B2(b[2]), .ZN(n175) );
  CKXOR2D0 U426 ( .A1(b[5]), .A2(n459), .Z(n491) );
  OAI22D0 U427 ( .A1(n492), .A2(n473), .B1(n493), .B2(b[2]), .ZN(n174) );
  CKXOR2D0 U428 ( .A1(b[5]), .A2(n458), .Z(n492) );
  OAI22D0 U429 ( .A1(n493), .A2(n473), .B1(n494), .B2(b[2]), .ZN(n173) );
  CKXOR2D0 U430 ( .A1(b[5]), .A2(n457), .Z(n493) );
  OAI22D0 U431 ( .A1(n494), .A2(n473), .B1(n495), .B2(b[2]), .ZN(n172) );
  CKXOR2D0 U432 ( .A1(b[5]), .A2(n456), .Z(n494) );
  OAI22D0 U433 ( .A1(n495), .A2(n473), .B1(n496), .B2(b[2]), .ZN(n171) );
  CKXOR2D0 U434 ( .A1(b[5]), .A2(n455), .Z(n495) );
  OAI22D0 U435 ( .A1(n496), .A2(n473), .B1(n497), .B2(b[2]), .ZN(n170) );
  CKXOR2D0 U436 ( .A1(b[5]), .A2(n454), .Z(n496) );
  OAI22D0 U437 ( .A1(n497), .A2(n473), .B1(n498), .B2(b[2]), .ZN(n169) );
  CKXOR2D0 U438 ( .A1(b[5]), .A2(n453), .Z(n497) );
  OAI22D0 U439 ( .A1(n498), .A2(n473), .B1(n499), .B2(b[2]), .ZN(n168) );
  CKXOR2D0 U440 ( .A1(b[5]), .A2(n452), .Z(n498) );
  OAI22D0 U441 ( .A1(n499), .A2(n473), .B1(n500), .B2(b[2]), .ZN(n167) );
  CKXOR2D0 U442 ( .A1(b[5]), .A2(n451), .Z(n499) );
  OAI22D0 U443 ( .A1(n500), .A2(n473), .B1(n501), .B2(b[2]), .ZN(n166) );
  CKXOR2D0 U444 ( .A1(b[5]), .A2(n450), .Z(n500) );
  OAI22D0 U445 ( .A1(n501), .A2(n473), .B1(n502), .B2(b[2]), .ZN(n165) );
  CKXOR2D0 U446 ( .A1(b[5]), .A2(n449), .Z(n501) );
  OAI22D0 U447 ( .A1(n502), .A2(n473), .B1(n503), .B2(b[2]), .ZN(n164) );
  CKXOR2D0 U448 ( .A1(b[5]), .A2(n448), .Z(n502) );
  OAI22D0 U449 ( .A1(n503), .A2(n473), .B1(n504), .B2(b[2]), .ZN(n163) );
  CKXOR2D0 U450 ( .A1(b[5]), .A2(n447), .Z(n503) );
  OAI22D0 U451 ( .A1(n504), .A2(n473), .B1(n505), .B2(b[2]), .ZN(n162) );
  CKXOR2D0 U452 ( .A1(b[5]), .A2(n446), .Z(n504) );
  OAI22D0 U453 ( .A1(n505), .A2(n473), .B1(n506), .B2(b[2]), .ZN(n161) );
  CKXOR2D0 U454 ( .A1(b[5]), .A2(n445), .Z(n505) );
  OAI22D0 U455 ( .A1(n506), .A2(n473), .B1(n507), .B2(b[2]), .ZN(n160) );
  CKXOR2D0 U456 ( .A1(b[5]), .A2(n444), .Z(n506) );
  OAI22D0 U457 ( .A1(n507), .A2(n473), .B1(n508), .B2(b[2]), .ZN(n159) );
  CKXOR2D0 U458 ( .A1(b[5]), .A2(n443), .Z(n507) );
  OAI22D0 U459 ( .A1(n508), .A2(n473), .B1(n509), .B2(b[2]), .ZN(n158) );
  CKXOR2D0 U460 ( .A1(b[5]), .A2(n442), .Z(n508) );
  OAI22D0 U461 ( .A1(n509), .A2(n473), .B1(n472), .B2(b[2]), .ZN(n157) );
  CKXOR2D0 U462 ( .A1(b[5]), .A2(n440), .Z(n472) );
  CKND2D0 U463 ( .A1(b[5]), .A2(b[2]), .ZN(n473) );
  CKXOR2D0 U464 ( .A1(b[5]), .A2(n441), .Z(n509) );
  NR2D0 U465 ( .A1(n476), .A2(n467), .ZN(n155) );
  OAI22D0 U466 ( .A1(n475), .A2(n467), .B1(n476), .B2(n466), .ZN(n154) );
  OAI22D0 U467 ( .A1(n475), .A2(n466), .B1(n476), .B2(n465), .ZN(n153) );
  OAI22D0 U468 ( .A1(n475), .A2(n465), .B1(n476), .B2(n464), .ZN(n152) );
  OAI22D0 U469 ( .A1(n475), .A2(n464), .B1(n476), .B2(n463), .ZN(n151) );
  OAI22D0 U470 ( .A1(n475), .A2(n463), .B1(n476), .B2(n462), .ZN(n150) );
  OAI22D0 U471 ( .A1(n475), .A2(n462), .B1(n476), .B2(n460), .ZN(n149) );
  OAI22D0 U472 ( .A1(n475), .A2(n460), .B1(n476), .B2(n459), .ZN(n148) );
  OAI22D0 U473 ( .A1(n475), .A2(n459), .B1(n476), .B2(n458), .ZN(n147) );
  OAI22D0 U474 ( .A1(n475), .A2(n458), .B1(n476), .B2(n457), .ZN(n146) );
  OAI22D0 U475 ( .A1(n475), .A2(n457), .B1(n476), .B2(n456), .ZN(n145) );
  OAI22D0 U476 ( .A1(n475), .A2(n456), .B1(n476), .B2(n455), .ZN(n144) );
  OAI22D0 U477 ( .A1(n475), .A2(n455), .B1(n476), .B2(n454), .ZN(n143) );
  OAI22D0 U478 ( .A1(n475), .A2(n454), .B1(n476), .B2(n453), .ZN(n142) );
  OAI22D0 U479 ( .A1(n475), .A2(n453), .B1(n476), .B2(n452), .ZN(n141) );
  OAI22D0 U480 ( .A1(n475), .A2(n452), .B1(n476), .B2(n451), .ZN(n140) );
  OAI22D0 U481 ( .A1(n475), .A2(n451), .B1(n476), .B2(n450), .ZN(n139) );
  OAI22D0 U482 ( .A1(n475), .A2(n450), .B1(n476), .B2(n449), .ZN(n138) );
  OAI22D0 U483 ( .A1(n475), .A2(n449), .B1(n476), .B2(n448), .ZN(n137) );
  OAI22D0 U484 ( .A1(n475), .A2(n448), .B1(n476), .B2(n447), .ZN(n136) );
  OAI22D0 U485 ( .A1(n475), .A2(n447), .B1(n476), .B2(n446), .ZN(n135) );
  OAI22D0 U486 ( .A1(n475), .A2(n446), .B1(n476), .B2(n445), .ZN(n134) );
  OAI22D0 U487 ( .A1(n475), .A2(n445), .B1(n476), .B2(n444), .ZN(n133) );
  OAI22D0 U488 ( .A1(n475), .A2(n444), .B1(n476), .B2(n443), .ZN(n132) );
  OAI22D0 U489 ( .A1(n475), .A2(n443), .B1(n476), .B2(n442), .ZN(n131) );
  CKND2D0 U490 ( .A1(n476), .A2(b[6]), .ZN(n475) );
  MAOI222D0 U354 ( .A(n480), .B(n128), .C(n510), .ZN(n478) );
  NR2D0 U355 ( .A1(n467), .A2(b[2]), .ZN(n510) );
endmodule


module oadm_fixed_divmul_correction_chain_LEVEL2_DW01_add_10 ( A, B, CI, SUM, 
        CO );
  input [27:0] A;
  input [27:0] B;
  output [27:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [27:2] carry;

  FA1D0 U1_25 ( .A(A[25]), .B(B[25]), .CI(carry[25]), .CO(carry[26]), .S(
        SUM[25]) );
  FA1D0 U1_24 ( .A(A[24]), .B(B[24]), .CI(carry[24]), .CO(carry[25]), .S(
        SUM[24]) );
  FA1D0 U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  FA1D0 U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  FA1D0 U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  FA1D0 U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  FA1D0 U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  FA1D0 U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  FA1D0 U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  FA1D0 U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  FA1D0 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  FA1D0 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  FA1D0 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  FA1D0 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  FA1D0 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FA1D0 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FA1D0 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  FA1D0 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FA1D0 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA1D0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA1D0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1D0 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  FA1D0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1D0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1D0 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA1D0 U1_26 ( .A(A[26]), .B(B[26]), .CI(carry[26]), .CO(carry[27]), .S(
        SUM[26]) );
  XOR3D1 U1_27 ( .A1(A[27]), .A2(B[27]), .A3(carry[27]), .Z(SUM[27]) );
  AN2XD1 U1 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
  CKXOR2D1 U2 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
endmodule


module oadm_fixed_divmul_correction_chain_LEVEL2_DW01_add_12 ( A, B, CI, SUM, 
        CO );
  input [26:0] A;
  input [26:0] B;
  output [26:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [26:2] carry;

  FA1D0 U1_24 ( .A(A[24]), .B(B[24]), .CI(carry[24]), .CO(carry[25]), .S(
        SUM[24]) );
  FA1D0 U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  FA1D0 U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  FA1D0 U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  FA1D0 U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  FA1D0 U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  FA1D0 U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  FA1D0 U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  FA1D0 U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  FA1D0 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  FA1D0 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  FA1D0 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  FA1D0 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  FA1D0 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FA1D0 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FA1D0 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  FA1D0 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FA1D0 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA1D0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA1D0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1D0 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  FA1D0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1D0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1D0 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA1D0 U1_25 ( .A(A[25]), .B(B[25]), .CI(carry[25]), .CO(carry[26]), .S(
        SUM[25]) );
  XOR3D1 U1_26 ( .A1(A[26]), .A2(B[26]), .A3(carry[26]), .Z(SUM[26]) );
  AN2XD1 U1 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
  CKXOR2D1 U2 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
endmodule


module oadm_fixed_divmul_correction_chain_LEVEL2_DW01_add_7 ( A, B, CI, SUM, 
        CO );
  input [27:0] A;
  input [27:0] B;
  output [27:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [22:2] carry;

  FA1D0 U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  FA1D0 U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  FA1D0 U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  FA1D0 U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  FA1D0 U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  FA1D0 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  FA1D0 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  FA1D0 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  FA1D0 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  FA1D0 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FA1D0 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FA1D0 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  FA1D0 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FA1D0 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA1D0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA1D0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1D0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1D0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1D0 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  FA1D0 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA1D0 U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  AN2XD1 U2 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
  XNR2D1 U4 ( .A1(carry[22]), .A2(B[22]), .ZN(SUM[22]) );
  CKXOR2D1 U5 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
  CKND0 U6 ( .I(SUM[24]), .ZN(SUM[23]) );
  OR2D0 U1 ( .A1(B[22]), .A2(carry[22]), .Z(SUM[24]) );
endmodule


module oadm_fixed_divmul_correction_chain_LEVEL2_DW01_add_6 ( A, B, CI, SUM, 
        CO );
  input [28:0] A;
  input [28:0] B;
  output [28:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [23:2] carry;

  FA1D0 U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  FA1D0 U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  FA1D0 U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  FA1D0 U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  FA1D0 U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  FA1D0 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  FA1D0 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  FA1D0 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  FA1D0 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  FA1D0 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FA1D0 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FA1D0 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  FA1D0 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FA1D0 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA1D0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA1D0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1D0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1D0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1D0 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA1D0 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  FA1D0 U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  AN2XD1 U2 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
  INVD1 U3 ( .I(n2), .ZN(SUM[24]) );
  INVD1 U4 ( .I(n2), .ZN(SUM[25]) );
  INVD1 U5 ( .I(n2), .ZN(SUM[26]) );
  INVD1 U6 ( .I(n2), .ZN(SUM[27]) );
  INVD1 U7 ( .I(n2), .ZN(SUM[28]) );
  AN2XD1 U8 ( .A1(carry[23]), .A2(B[23]), .Z(n2) );
  XNR2D1 U10 ( .A1(carry[22]), .A2(B[22]), .ZN(SUM[22]) );
  CKXOR2D1 U11 ( .A1(carry[23]), .A2(B[23]), .Z(SUM[23]) );
  CKXOR2D1 U12 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
  OR2D0 U1 ( .A1(B[22]), .A2(carry[22]), .Z(carry[23]) );
endmodule


module oadm_fixed_divmul_correction_chain_LEVEL2_DW01_add_5 ( A, B, CI, SUM, 
        CO );
  input [28:0] A;
  input [28:0] B;
  output [28:0] SUM;
  input CI;
  output CO;
  wire   n1, n3, n4, n5;
  wire   [25:2] carry;

  FA1D0 U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  FA1D0 U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  FA1D0 U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  FA1D0 U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  FA1D0 U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  FA1D0 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  FA1D0 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  FA1D0 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  FA1D0 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  FA1D0 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FA1D0 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FA1D0 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  FA1D0 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FA1D0 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA1D0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA1D0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1D0 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  FA1D0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1D0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1D0 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA1D0 U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  FA1D0 U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  FA1D0 U1_24 ( .A(A[24]), .B(B[24]), .CI(carry[24]), .CO(carry[25]), .S(
        SUM[24]) );
  FA1D0 U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  AN2XD1 U1 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
  AN2XD1 U3 ( .A1(n4), .A2(B[26]), .Z(n3) );
  AN2XD1 U4 ( .A1(carry[25]), .A2(B[25]), .Z(n4) );
  CKXOR2D1 U5 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
  CKXOR2D1 U6 ( .A1(n4), .A2(B[26]), .Z(SUM[26]) );
  CKXOR2D1 U7 ( .A1(carry[25]), .A2(B[25]), .Z(SUM[25]) );
  CKXOR2D1 U9 ( .A1(n3), .A2(B[27]), .Z(SUM[27]) );
  XNR2D0 U2 ( .A1(B[28]), .A2(n5), .ZN(SUM[28]) );
  CKND2D0 U8 ( .A1(B[27]), .A2(n3), .ZN(n5) );
endmodule


module oadm_fixed_divmul_correction_chain_LEVEL2_DW01_sub_11 ( A, B, CI, DIFF, 
        CO );
  input [27:0] A;
  input [27:0] B;
  output [27:0] DIFF;
  input CI;
  output CO;
  wire   n3, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n24;
  wire   [22:1] carry;

  FA1D0 U2_20 ( .A(A[20]), .B(n5), .CI(carry[20]), .CO(carry[21]), .S(DIFF[20]) );
  FA1D0 U2_19 ( .A(A[19]), .B(n6), .CI(carry[19]), .CO(carry[20]), .S(DIFF[19]) );
  FA1D0 U2_18 ( .A(A[18]), .B(n7), .CI(carry[18]), .CO(carry[19]), .S(DIFF[18]) );
  FA1D0 U2_17 ( .A(A[17]), .B(n8), .CI(carry[17]), .CO(carry[18]), .S(DIFF[17]) );
  FA1D0 U2_16 ( .A(A[16]), .B(n9), .CI(carry[16]), .CO(carry[17]), .S(DIFF[16]) );
  FA1D0 U2_15 ( .A(A[15]), .B(n10), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  FA1D0 U2_14 ( .A(A[14]), .B(n11), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  FA1D0 U2_13 ( .A(A[13]), .B(n12), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  FA1D0 U2_12 ( .A(A[12]), .B(n13), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  FA1D0 U2_11 ( .A(A[11]), .B(n14), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  FA1D0 U2_10 ( .A(A[10]), .B(n15), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  FA1D0 U2_9 ( .A(A[9]), .B(n16), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  FA1D0 U2_8 ( .A(A[8]), .B(n17), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  FA1D0 U2_7 ( .A(A[7]), .B(n18), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  FA1D0 U2_6 ( .A(A[6]), .B(n19), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  FA1D0 U2_5 ( .A(A[5]), .B(n20), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  FA1D0 U2_4 ( .A(A[4]), .B(n21), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FA1D0 U2_1 ( .A(A[1]), .B(n24), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  FA1D0 U2_3 ( .A(A[3]), .B(n22), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  FA1D0 U2_2 ( .A(A[2]), .B(n23), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  FA1D0 U2_21 ( .A(A[21]), .B(n3), .CI(carry[21]), .CO(carry[22]), .S(DIFF[21]) );
  INVD1 U4 ( .I(B[21]), .ZN(n3) );
  INVD1 U5 ( .I(B[2]), .ZN(n23) );
  INVD1 U6 ( .I(B[3]), .ZN(n22) );
  INVD1 U8 ( .I(B[1]), .ZN(n24) );
  INVD1 U11 ( .I(B[4]), .ZN(n21) );
  INVD1 U12 ( .I(B[5]), .ZN(n20) );
  INVD1 U13 ( .I(B[6]), .ZN(n19) );
  INVD1 U14 ( .I(B[7]), .ZN(n18) );
  INVD1 U15 ( .I(B[8]), .ZN(n17) );
  INVD1 U16 ( .I(B[9]), .ZN(n16) );
  INVD1 U17 ( .I(B[10]), .ZN(n15) );
  INVD1 U18 ( .I(B[11]), .ZN(n14) );
  INVD1 U19 ( .I(B[12]), .ZN(n13) );
  INVD1 U20 ( .I(B[13]), .ZN(n12) );
  INVD1 U21 ( .I(B[14]), .ZN(n11) );
  INVD1 U22 ( .I(B[15]), .ZN(n10) );
  INVD1 U23 ( .I(B[16]), .ZN(n9) );
  INVD1 U24 ( .I(B[17]), .ZN(n8) );
  INVD1 U25 ( .I(B[18]), .ZN(n7) );
  INVD1 U26 ( .I(B[19]), .ZN(n6) );
  INVD1 U27 ( .I(B[20]), .ZN(n5) );
  IND2D0 U1 ( .A1(carry[22]), .B1(B[22]), .ZN(DIFF[23]) );
  CKXOR2D0 U2 ( .A1(carry[22]), .A2(B[22]), .Z(DIFF[22]) );
  IND2D0 U3 ( .A1(A[0]), .B1(B[0]), .ZN(carry[1]) );
  CKXOR2D0 U7 ( .A1(A[0]), .A2(B[0]), .Z(DIFF[0]) );
endmodule


module oadm_fixed_divmul_correction_chain_LEVEL2_DW01_sub_10 ( A, B, CI, DIFF, 
        CO );
  input [28:0] A;
  input [28:0] B;
  output [28:0] DIFF;
  input CI;
  output CO;
  wire   n2, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26;
  wire   [25:1] carry;

  FA1D0 U2_20 ( .A(A[20]), .B(n6), .CI(carry[20]), .CO(carry[21]), .S(DIFF[20]) );
  FA1D0 U2_19 ( .A(A[19]), .B(n8), .CI(carry[19]), .CO(carry[20]), .S(DIFF[19]) );
  FA1D0 U2_18 ( .A(A[18]), .B(n9), .CI(carry[18]), .CO(carry[19]), .S(DIFF[18]) );
  FA1D0 U2_17 ( .A(A[17]), .B(n10), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  FA1D0 U2_16 ( .A(A[16]), .B(n11), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  FA1D0 U2_15 ( .A(A[15]), .B(n12), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  FA1D0 U2_14 ( .A(A[14]), .B(n13), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  FA1D0 U2_13 ( .A(A[13]), .B(n14), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  FA1D0 U2_12 ( .A(A[12]), .B(n15), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  FA1D0 U2_11 ( .A(A[11]), .B(n16), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  FA1D0 U2_10 ( .A(A[10]), .B(n17), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  FA1D0 U2_9 ( .A(A[9]), .B(n18), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  FA1D0 U2_8 ( .A(A[8]), .B(n19), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  FA1D0 U2_7 ( .A(A[7]), .B(n20), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  FA1D0 U2_6 ( .A(A[6]), .B(n21), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  FA1D0 U2_5 ( .A(A[5]), .B(n22), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  FA1D0 U2_4 ( .A(A[4]), .B(n23), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FA1D0 U2_3 ( .A(A[3]), .B(n24), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  FA1D0 U2_2 ( .A(A[2]), .B(n25), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  FA1D0 U2_1 ( .A(A[1]), .B(n26), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  FA1D0 U2_21 ( .A(A[21]), .B(n7), .CI(carry[21]), .CO(carry[22]), .S(DIFF[21]) );
  IND2D1 U1 ( .A1(carry[24]), .B1(A[25]), .ZN(carry[25]) );
  CKBD1 U2 ( .I(DIFF[26]), .Z(DIFF[27]) );
  IND2D1 U3 ( .A1(n2), .B1(A[25]), .ZN(carry[24]) );
  NR2D1 U4 ( .A1(carry[25]), .A2(A[25]), .ZN(DIFF[26]) );
  AN2XD1 U5 ( .A1(carry[22]), .A2(A[22]), .Z(n2) );
  CKBD1 U6 ( .I(DIFF[26]), .Z(DIFF[28]) );
  INVD1 U7 ( .I(B[21]), .ZN(n7) );
  INVD1 U9 ( .I(B[1]), .ZN(n26) );
  INVD1 U11 ( .I(B[2]), .ZN(n25) );
  INVD1 U12 ( .I(B[3]), .ZN(n24) );
  INVD1 U13 ( .I(B[4]), .ZN(n23) );
  INVD1 U15 ( .I(B[5]), .ZN(n22) );
  INVD1 U16 ( .I(B[6]), .ZN(n21) );
  INVD1 U17 ( .I(B[7]), .ZN(n20) );
  INVD1 U18 ( .I(B[8]), .ZN(n19) );
  INVD1 U19 ( .I(B[9]), .ZN(n18) );
  INVD1 U20 ( .I(B[10]), .ZN(n17) );
  INVD1 U21 ( .I(B[11]), .ZN(n16) );
  INVD1 U22 ( .I(B[12]), .ZN(n15) );
  INVD1 U23 ( .I(B[13]), .ZN(n14) );
  INVD1 U24 ( .I(B[14]), .ZN(n13) );
  INVD1 U25 ( .I(B[15]), .ZN(n12) );
  INVD1 U26 ( .I(B[16]), .ZN(n11) );
  INVD1 U27 ( .I(B[17]), .ZN(n10) );
  INVD1 U28 ( .I(B[18]), .ZN(n9) );
  INVD1 U29 ( .I(B[19]), .ZN(n8) );
  INVD1 U30 ( .I(B[20]), .ZN(n6) );
  XNR2D1 U31 ( .A1(n2), .A2(A[23]), .ZN(DIFF[23]) );
  XNR2D1 U32 ( .A1(carry[24]), .A2(A[24]), .ZN(DIFF[24]) );
  XNR2D1 U33 ( .A1(carry[25]), .A2(A[25]), .ZN(DIFF[25]) );
  CKXOR2D1 U35 ( .A1(carry[22]), .A2(A[22]), .Z(DIFF[22]) );
  IND2D0 U8 ( .A1(A[0]), .B1(B[0]), .ZN(carry[1]) );
  CKXOR2D0 U10 ( .A1(A[0]), .A2(B[0]), .Z(DIFF[0]) );
endmodule


module oadm_fixed_divmul_correction_chain_LEVEL2_DW01_add_3 ( A, B, CI, SUM, 
        CO );
  input [28:0] A;
  input [28:0] B;
  output [28:0] SUM;
  input CI;
  output CO;
  wire   n1, n5;
  wire   [27:2] carry;

  FA1D0 U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  FA1D0 U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  FA1D0 U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  FA1D0 U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  FA1D0 U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  FA1D0 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  FA1D0 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  FA1D0 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  FA1D0 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  FA1D0 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FA1D0 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FA1D0 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  FA1D0 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FA1D0 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA1D0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA1D0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1D0 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  FA1D0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1D0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1D0 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA1D0 U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  FA1D0 U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  FA1D0 U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  AN2XD1 U3 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
  XNR2D1 U9 ( .A1(carry[26]), .A2(B[26]), .ZN(SUM[26]) );
  XNR2D1 U10 ( .A1(carry[25]), .A2(B[25]), .ZN(SUM[25]) );
  XNR2D1 U11 ( .A1(carry[24]), .A2(B[24]), .ZN(SUM[24]) );
  XNR2D1 U13 ( .A1(carry[27]), .A2(B[27]), .ZN(SUM[27]) );
  CKXOR2D1 U14 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
  CKXOR2D0 U1 ( .A1(B[28]), .A2(n5), .Z(SUM[28]) );
  NR2D0 U2 ( .A1(carry[27]), .A2(B[26]), .ZN(n5) );
  OR2D0 U4 ( .A1(B[26]), .A2(carry[26]), .Z(carry[27]) );
  OR2D0 U5 ( .A1(B[25]), .A2(carry[25]), .Z(carry[26]) );
  OR2D0 U6 ( .A1(carry[24]), .A2(B[24]), .Z(carry[25]) );
endmodule


module oadm_fixed_divmul_correction_chain_LEVEL2 ( x, y, divide_mode, result
 );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  input divide_mode;
  wire   y_mantissa_22_, N103, N104, N105, N106, N107, N108, N109, N110, N111,
         N112, N113, N114, N115, N116, N117, N118, N119, N120, N121, N122,
         N123, N124, N125, N126, N127, N128, N129, N130, N131, N153, N155,
         N158, N159, N160, N161, N162, N163, N164, N165, N166, N167, N168,
         N169, N170, N171, N172, N173, N174, N175, N176, N177, N178, N179,
         N180, N181, N182, N183, N270, N271, N272, N273, N274, N275, N276,
         N277, N278, N279, N280, N281, N282, N283, N284, N285, N286, N287,
         N288, N289, N290, N291, N292, N293, N294, N295, N296, N297, N298,
         N325, N326, N327, N328, N329, N330, N331, N332, N333, N334, N335,
         N336, N337, N338, N339, N340, N341, N342, N343, N344, N345, N346,
         N353, N354, N355, N356, N357, N358, N359, N360, N361, N362, N363,
         N364, N365, N366, N367, N368, N369, N370, N371, N372, N373, N374,
         N375, N376, N377, N381, N382, N383, N384, N385, N386, N387, N388,
         N389, N390, N391, N392, N393, N394, N395, N396, N397, N398, N399,
         N400, N401, N402, N403, N404, N405, N406, N410, N419, N421, N422,
         N423, N424, N425, N426, N427, N428, N429, N430, N431, N432, N433,
         N434, N435, N436, N437, N438, N439, N440, N441, N442, N443, N444,
         N445, N446, N447, N448, N449, N450, N451, N452, N453, N454, N455,
         N456, N457, N458, N459, N460, N461, N462, N463, N464, N465, N466,
         N467, N468, N469, N470, N471, N472, N473, N474, N476, N477, N478,
         N479, N480, N481, N482, N483, N484, N485, N486, N487, N488, N489,
         N490, N491, N492, N493, N494, N495, N496, N497, N498, N499, N500,
         N501, N502, N503, N504, N505, N506, N507, N508, N509, N510, N511,
         N512, N513, N514, N515, N516, N517, N518, N519, N520, N521, N522,
         N523, N524, N525, N526, N527, N528, N529, N586, N587, N588, N589,
         N590, N591, N592, N593, N594, N595, N596, N597, N598, N599, N600,
         N601, N602, N603, N604, N605, N606, N607, N608, N609, N610, N611,
         N639, N665, N668, N669, N670, N671, N672, N673, N674, N675, N676,
         N677, N678, N679, N680, N681, N682, N683, N684, N685, N686, N687,
         N688, N689, N690, N691, N692, N696, N697, N698, N699, N700, N701,
         N702, N703, N704, N705, N706, N707, N708, N709, N710, N711, N712,
         N713, N714, N715, N716, N717, N718, N719, N720, N721, N725, N736,
         N738, N739, N740, N741, N742, N743, N744, N745, N746, N747, N748,
         N749, N750, N751, N752, N753, N754, N755, N756, N757, N758, N759,
         N760, N761, N762, N763, N764, N765, N766, N767, N768, N769, N770,
         N771, N772, N773, N774, N775, N776, N777, N778, N779, N780, N781,
         N782, N783, N784, N785, N786, N787, N788, N789, N791, N792, N793,
         N794, N795, N796, N797, N798, N799, N800, N801, N802, N803, N804,
         N805, N806, N807, N808, N809, N810, N811, N812, N813, N814, N815,
         N816, N817, N818, N819, N820, N821, N822, N823, N824, N825, N826,
         N827, N828, N829, N830, N831, N832, N833, N834, N835, N836, N837,
         N838, N839, N840, N841, N842, coefficient_2, coefficient_0, n96, n97,
         n98, n99, n100, n101, n102, n1030, n1040, n1050, n1060, n1070, n1080,
         n1090, n1100, n1110, n1120, n1130, n1140, n1150, n1160, n1170, n1180,
         n1190, n1200, n1210, n1220, n1230, n1240, n1250, n1260, n1270, n1280,
         n1290, n1300, n1310, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, N557, N556,
         N555, N554, N553, N552, N551, N550, N549, N869, N868, N867, N866,
         N865, N864, N863, N862, N861, N860, N269, N268, N267, N266, N265,
         N264, N263, N262, N261, N260, N259, N258, N257, N256, N255, N254,
         N253, N252, N251, N250, N249, N248, N247, N246, N245, N244, N243,
         N242, N241, N45, N237, N236, N235, N234, N233, N232, N231, N230, N229,
         N228, N227, N226, N225, N224, N223, N222, N221, N220, N219, N218,
         N217, N216, N215, N214, N213, N70, N209, N208, N206, N205, N204, N203,
         N202, N201, N200, N199, N198, N197, N196, N195, N194, N193, N192,
         N191, N190, N189, N188, N187, N186, N990, N980, N970, N960, N95, N94,
         N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80,
         N79, N78, N77, N76, N75, N74, N69, N68, N67, N66, N65, N64, N63, N62,
         N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48,
         N47, N46, N43, N41, N1020, N1010, N1000, n1, n2, n3, n4, n5, n6, n7,
         n8, n12, n13, n14, n16, n17;
  wire   [28:0] base_plane;
  wire   [28:0] delta_1;
  wire   [28:0] delta_2;
  wire   [28:0] level_2_accumulator_sum;
  wire   [28:1] level_2_accumulator_carry;
  wire   [28:0] selected_plane;
  wire   [5:4] coefficient;
  wire   [31:7] scaled_product;
  wire   [22:0] normalized_fraction;
  wire   [2:0] exponent_adjust;
  wire   [28:21] add_0_root_add_55_2_carry;
  wire   [28:19] add_0_root_add_76_2_carry;
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
        SYNOPSYS_UNCONNECTED__28;

  csa3_WIDTH29 level_2_accumulator_correction_csa ( .input_a(base_plane), 
        .input_b(delta_1), .input_c(delta_2), .sum(level_2_accumulator_sum), 
        .carry({level_2_accumulator_carry, SYNOPSYS_UNCONNECTED__0}) );
  fp32_normal_finite_wrapper fp_wrapper ( .x(x), .y(y), .divide_mode(n2), 
        .fraction_x({N155, N153, N206, N205, N204, N203, N202, N201, N200, 
        N199, N198, N197, N196, N195, N194, N193, N192, N191, N190, N189, N188, 
        N187, N186}), .fraction_y({y_mantissa_22_, N346, N345, N344, N343, 
        N342, N341, N340, N339, N338, N337, N336, N335, N334, N333, N332, N331, 
        N330, N329, N328, N327, N326, N325}), .result_fraction(
        normalized_fraction), .exponent_adjust({exponent_adjust[2], 
        exponent_adjust[2], exponent_adjust[0]}), .result(result) );
  oadm_fixed_divmul_correction_chain_LEVEL2_DW01_add_0 add_113 ( .A(
        level_2_accumulator_sum), .B({level_2_accumulator_carry, N45}), .CI(
        N45), .SUM(selected_plane) );
  oadm_fixed_divmul_correction_chain_LEVEL2_DW01_sub_0 sub_75 ( .A({N45, N45, 
        N45, N45, N45, N45, N45, N45, N45, N45, N45, N45, N45, N45, N45, N45, 
        N45, N45, N45, N45, N45, N45, N45, N45, N45, N45, N45, N45, N45}), .B(
        {N725, N725, N725, N725, N721, N720, N719, N718, N717, N716, N715, 
        N714, N713, N712, N711, N710, N709, N708, N707, N706, N705, N704, N703, 
        N702, N701, N700, N699, N698, N697}), .CI(N45), .DIFF({N816, N815, 
        N814, N813, N812, N811, N810, N809, N808, N807, N806, N805, N804, N803, 
        N802, N801, N800, N799, N798, N797, N796, N795, N794, N793, N792, N791, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3}) );
  oadm_fixed_divmul_correction_chain_LEVEL2_DW01_sub_1 sub_74 ( .A({N45, N45, 
        N45, N45, N45, N45, N45, N45, N45, N45, N45, N45, N45, N45, N45, N45, 
        N45, N45, N45, N45, N45, N45, N45, N45, N45, N45, N45, N45, N45}), .B(
        {N696, N696, N696, N696, N692, N691, N690, N689, N688, N687, N686, 
        N685, N684, N683, N682, N681, N680, N679, N678, N677, N676, N675, N674, 
        N673, N672, N671, N670, N669, N668}), .CI(N45), .DIFF({N763, N762, 
        N761, N760, N759, N758, N757, N756, N755, N754, N753, N752, N751, N750, 
        N749, N748, N747, N746, N745, N744, N743, N742, N741, N740, N739, N738, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6}) );
  oadm_fixed_divmul_correction_chain_LEVEL2_DW01_sub_4 sub_65 ( .A({N45, N45, 
        N70, y_mantissa_22_, N70, N45, N45, N45, N45, N45, N45, N45, N45, N45, 
        N45, N45, N45, N45, N45, N45, N45, N45, N45, N45, N45, N45}), .B({N45, 
        N45, N70, y_mantissa_22_, N346, N345, N344, N343, N342, N341, N340, 
        N339, N338, N337, N336, N335, N334, N333, N332, N331, N330, N329, N328, 
        N327, N326, N325}), .CI(N45), .DIFF({N611, N610, N609, N608, N607, 
        N606, N605, N604, N603, N602, N601, N600, N599, N598, N597, N596, N595, 
        N594, N593, N592, N591, N590, N589, N588, N587, N586}) );
  oadm_fixed_divmul_correction_chain_LEVEL2_DW01_sub_5 sub_54 ( .A({N45, N45, 
        N45, N45, N45, N45, N45, N45, N45, N45, N45, N45, N45, N45, N45, N45, 
        N45, N45, N45, N45, N45, N45, N45, N45, N45, N45, N45, N45, N45}), .B(
        {N410, N410, N410, N410, N406, N405, N404, N403, N402, N401, N400, 
        N399, N398, N397, N396, N395, N394, N393, N392, N391, N390, N389, N388, 
        N387, N386, N385, N384, N383, N382}), .CI(N45), .DIFF({N502, N501, 
        N500, N499, N498, N497, N496, N495, N494, N493, N492, N491, N490, N489, 
        N488, N487, N486, N485, N484, N483, N482, N481, N480, N479, N478, N477, 
        N476, SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8}) );
  oadm_fixed_divmul_correction_chain_LEVEL2_DW01_sub_6 sub_53 ( .A({N45, N45, 
        N45, N45, N45, N45, N45, N45, N45, N45, N45, N45, N45, N45, N45, N45, 
        N45, N45, N45, N45, N45, N45, N45, N45, N45, N45, N45, N45, N45}), .B(
        {N381, N381, N381, N381, N377, N376, N375, N374, N373, N372, N371, 
        N370, N369, N368, N367, N366, N365, N364, N363, N362, N361, N360, N359, 
        N358, N357, N356, N355, N354, N353}), .CI(N45), .DIFF({N447, N446, 
        N445, N444, N443, N442, N441, N440, N439, N438, N437, N436, N435, N434, 
        N433, N432, N431, N430, N429, N428, N427, N426, N425, N424, N423, N422, 
        N421, SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10}) );
  oadm_fixed_divmul_correction_chain_LEVEL2_DW01_sub_9 sub_42 ( .A({N45, N45, 
        N70, N70, N45, N45, N45, N45, N45, N45, N45, N45, N45, N45, N45, N45, 
        N45, N45, N45, N45, N45, N45, N45, N45, N45, N45}), .B({N45, N45, N70, 
        y_mantissa_22_, N346, N345, N344, N343, N342, N341, N340, N339, N338, 
        N337, N336, N335, N334, N333, N332, N331, N330, N329, N328, N327, N326, 
        N325}), .CI(N45), .DIFF({N183, N182, N181, N180, N179, N178, N177, 
        N176, N175, N174, N173, N172, N171, N170, N169, N168, N167, N166, N165, 
        N164, N163, N162, N161, N160, N159, N158}) );
  oadm_fixed_divmul_correction_chain_LEVEL2_DW_mult_uns_0 mult_158 ( .a(
        selected_plane), .b({n14, coefficient, N45, coefficient_2, N45, 
        coefficient_0}), .product({SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, scaled_product, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21}) );
  oadm_fixed_divmul_correction_chain_LEVEL2_DW01_add_10 add_1_root_add_55_2 ( 
        .A({N474, N474, N473, N472, N471, N470, N469, N468, N467, N466, N465, 
        N464, N463, N462, N461, N460, N459, N458, N457, N456, N455, N454, N453, 
        N452, N451, N450, N449, N448}), .B({N529, N529, N528, N527, N526, N525, 
        N524, N523, N522, N521, N520, N519, N518, N517, N516, N515, N514, N513, 
        N512, N511, N510, N509, N508, N507, N506, N505, N504, N503}), .CI(N45), 
        .SUM({N557, N556, N555, N554, N553, N552, N551, N550, N549, 
        delta_1[18:0]}) );
  oadm_fixed_divmul_correction_chain_LEVEL2_DW01_add_12 add_1_root_add_76_2 ( 
        .A({N789, N789, N788, N787, N786, N785, N784, N783, N782, N781, N780, 
        N779, N778, N777, N776, N775, N774, N773, N772, N771, N770, N769, N768, 
        N767, N766, N765, N764}), .B({N842, N842, N841, N840, N839, N838, N837, 
        N836, N835, N834, N833, N832, N831, N830, N829, N828, N827, N826, N825, 
        N824, N823, N822, N821, N820, N819, N818, N817}), .CI(N45), .SUM({N869, 
        N868, N867, N866, N865, N864, N863, N862, N861, N860, delta_2[16:0]})
         );
  oadm_fixed_divmul_correction_chain_LEVEL2_DW01_add_7 add_2_root_add_46_4 ( 
        .A({N45, N45, N45, N45, N45, N70, N155, N153, N206, N205, N204, N203, 
        N202, N201, N200, N199, N198, N197, N196, N195, N194, N193, N192, N191, 
        N190, N189, N188, N187}), .B({N45, N45, N45, N45, N70, y_mantissa_22_, 
        N346, N345, N344, N343, N342, N341, N340, N339, N338, N337, N336, N335, 
        N334, N333, N332, N331, N330, N329, N328, N327, N326, N325}), .CI(N45), 
        .SUM({SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, N237, N236, N235, N234, N233, N232, N231, 
        N230, N229, N228, N227, N226, N225, N224, N223, N222, N221, N220, N219, 
        N218, N217, N216, N215, N214, N213}) );
  oadm_fixed_divmul_correction_chain_LEVEL2_DW01_add_6 add_1_root_add_0_root_add_46_4 ( 
        .A({N45, N45, N45, N45, N45, N45, N70, y_mantissa_22_, N346, N345, 
        N344, N343, N342, N341, N340, N339, N338, N337, N336, N335, N334, N333, 
        N332, N331, N330, N329, N328, N327, N326}), .B({N70, N70, N70, N70, 
        N70, N209, N208, n16, N206, N205, N204, N203, N202, N201, N200, N199, 
        N198, N197, N196, N195, N194, N193, N192, N191, N190, N189, N188, N187, 
        N186}), .CI(N45), .SUM({N269, N268, N267, N266, N265, N264, N263, N262, 
        N261, N260, N259, N258, N257, N256, N255, N254, N253, N252, N251, N250, 
        N249, N248, N247, N246, N245, N244, N243, N242, N241}) );
  oadm_fixed_divmul_correction_chain_LEVEL2_DW01_add_5 add_0_root_add_0_root_add_46_4 ( 
        .A({N45, N45, N45, N45, N237, N236, N235, N234, N233, N232, N231, N230, 
        N229, N228, N227, N226, N225, N224, N223, N222, N221, N220, N219, N218, 
        N217, N216, N215, N214, N213}), .B({N269, N268, N267, N266, N265, N264, 
        N263, N262, N261, N260, N259, N258, N257, N256, N255, N254, N253, N252, 
        N251, N250, N249, N248, N247, N246, N245, N244, N243, N242, N241}), 
        .CI(N45), .SUM({N298, N297, N296, N295, N294, N293, N292, N291, N290, 
        N289, N288, N287, N286, N285, N284, N283, N282, N281, N280, N279, N278, 
        N277, N276, N275, N274, N273, N272, N271, N270}) );
  oadm_fixed_divmul_correction_chain_LEVEL2_DW01_sub_11 sub_2_root_sub_39_2 ( 
        .A({N45, N45, N45, N45, N45, N70, N155, N153, N206, N205, N204, N203, 
        N202, N201, N200, N199, N198, N197, N196, N195, N194, N193, N192, N191, 
        N190, N189, N188, N187}), .B({N45, N45, N45, N45, N70, y_mantissa_22_, 
        N346, N345, N344, N343, N342, N341, N340, N339, N338, N337, N336, N335, 
        N334, N333, N332, N331, N330, N329, N328, N327, N326, N325}), .CI(N45), 
        .DIFF({SYNOPSYS_UNCONNECTED__25, SYNOPSYS_UNCONNECTED__26, 
        SYNOPSYS_UNCONNECTED__27, SYNOPSYS_UNCONNECTED__28, N69, N68, N67, N66, 
        N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, 
        N51, N50, N49, N48, N47, N46}) );
  oadm_fixed_divmul_correction_chain_LEVEL2_DW01_sub_10 sub_1_root_sub_0_root_sub_39_2 ( 
        .A({N45, N45, N45, n1, N43, N43, N41, n16, N206, N205, N204, N203, 
        N202, N201, N200, N199, N198, N197, N196, N195, N194, N193, N192, N191, 
        N190, N189, N188, N187, N186}), .B({N45, N45, N45, N45, N45, N45, N70, 
        y_mantissa_22_, N346, N345, N344, N343, N342, N341, N340, N339, N338, 
        N337, N336, N335, N334, N333, N332, N331, N330, N329, N328, N327, N326}), .CI(N45), .DIFF({N1020, N1010, N1000, N990, N980, N970, N960, N95, N94, N93, 
        N92, N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, 
        N78, N77, N76, N75, N74}) );
  oadm_fixed_divmul_correction_chain_LEVEL2_DW01_add_3 add_0_root_sub_0_root_sub_39_2 ( 
        .A({N70, N70, N70, N70, N70, N69, N68, N67, N66, N65, N64, N63, N62, 
        N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, 
        N47, N46}), .B({N1020, N1010, N1000, N990, N980, N970, N960, N95, N94, 
        N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, 
        N79, N78, N77, N76, N75, N74}), .CI(N45), .SUM({N131, N130, N129, N128, 
        N127, N126, N125, N124, N123, N122, N121, N120, N119, N118, N117, N116, 
        N115, N114, N113, N112, N111, N110, N109, N108, N107, N106, N105, N104, 
        N103}) );
  TIEL U3 ( .ZN(N45) );
  IOA21D1 U5 ( .A1(N502), .A2(n17), .B(n147), .ZN(N529) );
  IOA21D1 U6 ( .A1(N447), .A2(n14), .B(n148), .ZN(N474) );
  IOA21D1 U7 ( .A1(N763), .A2(n13), .B(n146), .ZN(N789) );
  IOA21D1 U8 ( .A1(N816), .A2(n16), .B(n145), .ZN(N842) );
  ND2D1 U10 ( .A1(n1030), .A2(n4), .ZN(exponent_adjust[2]) );
  ND2D1 U11 ( .A1(n8), .A2(n1030), .ZN(exponent_adjust[0]) );
  CKBD1 U12 ( .I(n98), .Z(n8) );
  IND3D1 U13 ( .A1(n1190), .B1(n1200), .B2(n8), .ZN(n1030) );
  ND3D1 U14 ( .A1(n1200), .A2(n1190), .A3(n8), .ZN(n4) );
  OAI221D0 U15 ( .A1(n99), .A2(n6), .B1(n8), .B2(n141), .C(n144), .ZN(
        normalized_fraction[10]) );
  OA22D0 U16 ( .A1(n5), .A2(n1040), .B1(n1030), .B2(n96), .Z(n144) );
  OAI221D0 U17 ( .A1(n96), .A2(n97), .B1(n8), .B2(n99), .C(n100), .ZN(
        normalized_fraction[9]) );
  OA22D0 U18 ( .A1(n101), .A2(n102), .B1(n1030), .B2(n1040), .Z(n100) );
  OAI221D0 U19 ( .A1(n141), .A2(n97), .B1(n98), .B2(n139), .C(n143), .ZN(
        normalized_fraction[11]) );
  OA22D0 U20 ( .A1(n101), .A2(n96), .B1(n1030), .B2(n99), .Z(n143) );
  OAI221D0 U21 ( .A1(n139), .A2(n97), .B1(n98), .B2(n137), .C(n142), .ZN(
        normalized_fraction[12]) );
  OA22D0 U22 ( .A1(n101), .A2(n99), .B1(n1030), .B2(n141), .Z(n142) );
  ND3D1 U23 ( .A1(n1200), .A2(n1190), .A3(n8), .ZN(n5) );
  ND3D1 U24 ( .A1(n1200), .A2(n1190), .A3(n8), .ZN(n101) );
  IND2D1 U25 ( .A1(n1200), .B1(n8), .ZN(n7) );
  OAI22D1 U26 ( .A1(n8), .A2(n1160), .B1(n1180), .B2(n7), .ZN(
        normalized_fraction[0]) );
  IND2D1 U27 ( .A1(n1200), .B1(n8), .ZN(n6) );
  IND2D1 U28 ( .A1(n1200), .B1(n8), .ZN(n97) );
  AOI22D1 U29 ( .A1(scaled_product[31]), .A2(n2), .B1(selected_plane[24]), 
        .B2(n12), .ZN(n98) );
  CKBD1 U30 ( .I(divide_mode), .Z(n2) );
  CKBD1 U31 ( .I(divide_mode), .Z(n3) );
  FA1D0 U32 ( .A(N419), .B(N550), .CI(N549), .CO(add_0_root_add_55_2_carry[21]), .S(delta_1[20]) );
  FA1D0 U33 ( .A(N419), .B(N551), .CI(add_0_root_add_55_2_carry[21]), .CO(
        add_0_root_add_55_2_carry[22]), .S(delta_1[21]) );
  FA1D0 U34 ( .A(N419), .B(N552), .CI(add_0_root_add_55_2_carry[22]), .CO(
        add_0_root_add_55_2_carry[23]), .S(delta_1[22]) );
  FA1D0 U35 ( .A(N419), .B(N553), .CI(add_0_root_add_55_2_carry[23]), .CO(
        add_0_root_add_55_2_carry[24]), .S(delta_1[23]) );
  FA1D0 U36 ( .A(N419), .B(N554), .CI(add_0_root_add_55_2_carry[24]), .CO(
        add_0_root_add_55_2_carry[25]), .S(delta_1[24]) );
  FA1D0 U37 ( .A(N736), .B(N862), .CI(add_0_root_add_76_2_carry[19]), .CO(
        add_0_root_add_76_2_carry[20]), .S(delta_2[19]) );
  FA1D0 U38 ( .A(N736), .B(N861), .CI(N860), .CO(add_0_root_add_76_2_carry[19]), .S(delta_2[18]) );
  FA1D0 U39 ( .A(N736), .B(N863), .CI(add_0_root_add_76_2_carry[20]), .CO(
        add_0_root_add_76_2_carry[21]), .S(delta_2[20]) );
  AOI22D1 U40 ( .A1(scaled_product[30]), .A2(divide_mode), .B1(
        selected_plane[23]), .B2(n12), .ZN(n1200) );
  AO22D0 U41 ( .A1(N273), .A2(n12), .B1(N106), .B2(n2), .Z(base_plane[3]) );
  AO22D0 U42 ( .A1(N274), .A2(n12), .B1(N107), .B2(n2), .Z(base_plane[4]) );
  INVD1 U43 ( .I(N549), .ZN(delta_1[19]) );
  FA1D0 U44 ( .A(N419), .B(N555), .CI(add_0_root_add_55_2_carry[25]), .CO(
        add_0_root_add_55_2_carry[26]), .S(delta_1[25]) );
  AO22D0 U45 ( .A1(N272), .A2(n12), .B1(N105), .B2(n3), .Z(base_plane[2]) );
  FA1D0 U46 ( .A(N736), .B(N864), .CI(add_0_root_add_76_2_carry[21]), .CO(
        add_0_root_add_76_2_carry[22]), .S(delta_2[21]) );
  FA1D0 U47 ( .A(N419), .B(N556), .CI(add_0_root_add_55_2_carry[26]), .CO(
        add_0_root_add_55_2_carry[27]), .S(delta_1[26]) );
  AO22D0 U48 ( .A1(N275), .A2(n12), .B1(N108), .B2(n3), .Z(base_plane[5]) );
  FA1D0 U49 ( .A(N736), .B(N865), .CI(add_0_root_add_76_2_carry[22]), .CO(
        add_0_root_add_76_2_carry[23]), .S(delta_2[22]) );
  FA1D0 U50 ( .A(N419), .B(N557), .CI(add_0_root_add_55_2_carry[27]), .CO(
        add_0_root_add_55_2_carry[28]), .S(delta_1[27]) );
  FA1D0 U51 ( .A(N736), .B(N866), .CI(add_0_root_add_76_2_carry[23]), .CO(
        add_0_root_add_76_2_carry[24]), .S(delta_2[23]) );
  AO22D0 U52 ( .A1(N276), .A2(n12), .B1(N109), .B2(n3), .Z(base_plane[6]) );
  FA1D0 U53 ( .A(N736), .B(N869), .CI(add_0_root_add_76_2_carry[26]), .CO(
        add_0_root_add_76_2_carry[27]), .S(delta_2[26]) );
  FA1D0 U54 ( .A(N736), .B(N869), .CI(add_0_root_add_76_2_carry[27]), .CO(
        add_0_root_add_76_2_carry[28]), .S(delta_2[27]) );
  XOR3D1 U55 ( .A1(N736), .A2(N869), .A3(add_0_root_add_76_2_carry[28]), .Z(
        delta_2[28]) );
  FA1D0 U56 ( .A(N736), .B(N867), .CI(add_0_root_add_76_2_carry[24]), .CO(
        add_0_root_add_76_2_carry[25]), .S(delta_2[24]) );
  INVD1 U57 ( .I(N860), .ZN(delta_2[17]) );
  AOI22D1 U58 ( .A1(scaled_product[29]), .A2(n3), .B1(selected_plane[22]), 
        .B2(n12), .ZN(n1190) );
  XOR3D1 U59 ( .A1(N419), .A2(N557), .A3(add_0_root_add_55_2_carry[28]), .Z(
        delta_1[28]) );
  FA1D0 U60 ( .A(N736), .B(N868), .CI(add_0_root_add_76_2_carry[25]), .CO(
        add_0_root_add_76_2_carry[26]), .S(delta_2[25]) );
  AO22D0 U61 ( .A1(N277), .A2(n12), .B1(N110), .B2(n3), .Z(base_plane[7]) );
  AO22D0 U62 ( .A1(N271), .A2(n12), .B1(N104), .B2(n2), .Z(base_plane[1]) );
  AO22D0 U63 ( .A1(N278), .A2(n12), .B1(N111), .B2(n3), .Z(base_plane[8]) );
  AO22D0 U64 ( .A1(N279), .A2(n12), .B1(N112), .B2(n3), .Z(base_plane[9]) );
  AO22D0 U65 ( .A1(N280), .A2(n12), .B1(N113), .B2(n2), .Z(base_plane[10]) );
  AO22D0 U66 ( .A1(N281), .A2(n12), .B1(N114), .B2(n2), .Z(base_plane[11]) );
  AO22D0 U67 ( .A1(N282), .A2(n12), .B1(N115), .B2(n3), .Z(base_plane[12]) );
  AO22D0 U68 ( .A1(N283), .A2(n12), .B1(N116), .B2(n3), .Z(base_plane[13]) );
  AO22D0 U69 ( .A1(N284), .A2(n12), .B1(N117), .B2(divide_mode), .Z(
        base_plane[14]) );
  AO22D0 U70 ( .A1(N285), .A2(n12), .B1(N118), .B2(divide_mode), .Z(
        base_plane[15]) );
  OAI221D0 U71 ( .A1(n1190), .A2(n6), .B1(n8), .B2(n1200), .C(n1210), .ZN(
        normalized_fraction[22]) );
  OA22D0 U72 ( .A1(n5), .A2(n1220), .B1(n1030), .B2(n1230), .Z(n1210) );
  OAI221D0 U73 ( .A1(n1230), .A2(n97), .B1(n8), .B2(n1190), .C(n1240), .ZN(
        normalized_fraction[21]) );
  OA22D0 U74 ( .A1(n4), .A2(n1250), .B1(n1030), .B2(n1220), .Z(n1240) );
  OAI221D0 U75 ( .A1(n1100), .A2(n6), .B1(n8), .B2(n1080), .C(n1130), .ZN(
        normalized_fraction[4]) );
  OA22D0 U76 ( .A1(n4), .A2(n1140), .B1(n1030), .B2(n1120), .Z(n1130) );
  OAI221D0 U77 ( .A1(n102), .A2(n6), .B1(n8), .B2(n1040), .C(n1070), .ZN(
        normalized_fraction[7]) );
  OA22D0 U78 ( .A1(n4), .A2(n1080), .B1(n1030), .B2(n1060), .Z(n1070) );
  OAI221D0 U79 ( .A1(n133), .A2(n97), .B1(n98), .B2(n1310), .C(n136), .ZN(
        normalized_fraction[15]) );
  OA22D0 U80 ( .A1(n4), .A2(n137), .B1(n1030), .B2(n135), .Z(n136) );
  OAI221D0 U81 ( .A1(n1270), .A2(n97), .B1(n98), .B2(n1250), .C(n1300), .ZN(
        normalized_fraction[18]) );
  OA22D0 U82 ( .A1(n4), .A2(n1310), .B1(n1030), .B2(n1290), .Z(n1300) );
  OAI221D0 U83 ( .A1(n1080), .A2(n7), .B1(n8), .B2(n1060), .C(n1110), .ZN(
        normalized_fraction[5]) );
  OA22D0 U84 ( .A1(n5), .A2(n1120), .B1(n1030), .B2(n1100), .Z(n1110) );
  OAI221D0 U85 ( .A1(n1040), .A2(n7), .B1(n8), .B2(n96), .C(n1050), .ZN(
        normalized_fraction[8]) );
  OA22D0 U86 ( .A1(n5), .A2(n1060), .B1(n1030), .B2(n102), .Z(n1050) );
  OAI221D0 U87 ( .A1(n137), .A2(n6), .B1(n98), .B2(n135), .C(n140), .ZN(
        normalized_fraction[13]) );
  OA22D0 U88 ( .A1(n5), .A2(n141), .B1(n1030), .B2(n139), .Z(n140) );
  OAI221D0 U89 ( .A1(n1310), .A2(n6), .B1(n98), .B2(n1290), .C(n134), .ZN(
        normalized_fraction[16]) );
  OA22D0 U90 ( .A1(n5), .A2(n135), .B1(n1030), .B2(n133), .Z(n134) );
  OAI221D0 U91 ( .A1(n1250), .A2(n6), .B1(n98), .B2(n1220), .C(n1280), .ZN(
        normalized_fraction[19]) );
  OA22D0 U92 ( .A1(n5), .A2(n1290), .B1(n1030), .B2(n1270), .Z(n1280) );
  OAI221D0 U93 ( .A1(n1120), .A2(n97), .B1(n8), .B2(n1100), .C(n1150), .ZN(
        normalized_fraction[3]) );
  OA22D0 U94 ( .A1(n101), .A2(n1160), .B1(n1030), .B2(n1140), .Z(n1150) );
  OAI221D0 U95 ( .A1(n1060), .A2(n97), .B1(n8), .B2(n102), .C(n1090), .ZN(
        normalized_fraction[6]) );
  OA22D0 U96 ( .A1(n101), .A2(n1100), .B1(n1030), .B2(n1080), .Z(n1090) );
  OAI221D0 U97 ( .A1(n135), .A2(n7), .B1(n98), .B2(n133), .C(n138), .ZN(
        normalized_fraction[14]) );
  OA22D0 U98 ( .A1(n101), .A2(n139), .B1(n1030), .B2(n137), .Z(n138) );
  OAI221D0 U99 ( .A1(n1290), .A2(n7), .B1(n98), .B2(n1270), .C(n132), .ZN(
        normalized_fraction[17]) );
  OA22D0 U100 ( .A1(n101), .A2(n133), .B1(n1030), .B2(n1310), .Z(n132) );
  OAI221D0 U101 ( .A1(n1220), .A2(n7), .B1(n98), .B2(n1230), .C(n1260), .ZN(
        normalized_fraction[20]) );
  OA22D0 U102 ( .A1(n101), .A2(n1270), .B1(n1030), .B2(n1250), .Z(n1260) );
  AO22D0 U103 ( .A1(N286), .A2(n12), .B1(N119), .B2(n2), .Z(base_plane[16]) );
  OAI221D0 U104 ( .A1(n1140), .A2(n7), .B1(n8), .B2(n1120), .C(n1170), .ZN(
        normalized_fraction[2]) );
  OA22D0 U105 ( .A1(n1030), .A2(n1160), .B1(n5), .B2(n1180), .Z(n1170) );
  AO22D0 U106 ( .A1(N287), .A2(n12), .B1(N120), .B2(n2), .Z(base_plane[17]) );
  AO22D0 U107 ( .A1(N288), .A2(n12), .B1(N121), .B2(n3), .Z(base_plane[18]) );
  AO22D0 U108 ( .A1(N289), .A2(n12), .B1(N122), .B2(n3), .Z(base_plane[19]) );
  OAI222D0 U109 ( .A1(n1160), .A2(n6), .B1(n1180), .B2(n1030), .C1(n8), .C2(
        n1140), .ZN(normalized_fraction[1]) );
  AO22D0 U110 ( .A1(N290), .A2(n12), .B1(N123), .B2(divide_mode), .Z(
        base_plane[20]) );
  AO22D0 U111 ( .A1(N291), .A2(n12), .B1(N124), .B2(n2), .Z(base_plane[21]) );
  AO22D0 U112 ( .A1(N292), .A2(n12), .B1(N125), .B2(n2), .Z(base_plane[22]) );
  AO22D0 U113 ( .A1(N293), .A2(n12), .B1(N126), .B2(n3), .Z(base_plane[23]) );
  AO22D0 U114 ( .A1(N294), .A2(n12), .B1(N127), .B2(n3), .Z(base_plane[24]) );
  AO22D0 U115 ( .A1(N346), .A2(n12), .B1(N179), .B2(n2), .Z(N403) );
  AO22D0 U116 ( .A1(N295), .A2(n12), .B1(N128), .B2(divide_mode), .Z(
        base_plane[25]) );
  AO22D0 U117 ( .A1(N665), .A2(n12), .B1(N609), .B2(n2), .Z(N720) );
  AO22D0 U118 ( .A1(N296), .A2(n12), .B1(N129), .B2(n3), .Z(base_plane[26]) );
  AO22D0 U119 ( .A1(N665), .A2(n12), .B1(N610), .B2(divide_mode), .Z(N721) );
  AO22D0 U120 ( .A1(N297), .A2(n12), .B1(N130), .B2(n2), .Z(base_plane[27]) );
  AO22D0 U121 ( .A1(N665), .A2(n12), .B1(N611), .B2(n3), .Z(N725) );
  AO22D0 U122 ( .A1(N298), .A2(n12), .B1(N131), .B2(divide_mode), .Z(
        base_plane[28]) );
  ND2D1 U123 ( .A1(N153), .A2(N725), .ZN(n145) );
  ND2D1 U124 ( .A1(N155), .A2(N410), .ZN(n147) );
  INVD1 U125 ( .I(coefficient_2), .ZN(coefficient[4]) );
  NR2D1 U126 ( .A1(y_mantissa_22_), .A2(N346), .ZN(coefficient_0) );
  AO22D0 U127 ( .A1(N153), .A2(n12), .B1(N153), .B2(n3), .Z(N374) );
  AOI22D1 U128 ( .A1(scaled_product[23]), .A2(divide_mode), .B1(
        selected_plane[16]), .B2(n12), .ZN(n1310) );
  AO22D0 U129 ( .A1(N639), .A2(n12), .B1(N155), .B2(n3), .Z(N691) );
  AOI22D1 U130 ( .A1(scaled_product[20]), .A2(divide_mode), .B1(
        selected_plane[13]), .B2(n12), .ZN(n137) );
  ND2D1 U131 ( .A1(N346), .A2(N696), .ZN(n146) );
  AOI22D1 U132 ( .A1(scaled_product[19]), .A2(n2), .B1(selected_plane[12]), 
        .B2(n12), .ZN(n139) );
  AOI22D1 U133 ( .A1(scaled_product[18]), .A2(n2), .B1(selected_plane[11]), 
        .B2(n12), .ZN(n141) );
  ND2D1 U135 ( .A1(N381), .A2(y_mantissa_22_), .ZN(n148) );
  AOI22D1 U136 ( .A1(scaled_product[17]), .A2(n3), .B1(selected_plane[10]), 
        .B2(n12), .ZN(n99) );
  IND2D1 U137 ( .A1(N153), .B1(n17), .ZN(N209) );
  AOI22D1 U138 ( .A1(scaled_product[16]), .A2(n3), .B1(selected_plane[9]), 
        .B2(n12), .ZN(n96) );
  AOI22D1 U139 ( .A1(scaled_product[15]), .A2(divide_mode), .B1(
        selected_plane[8]), .B2(n12), .ZN(n1040) );
  AOI22D1 U140 ( .A1(scaled_product[14]), .A2(divide_mode), .B1(
        selected_plane[7]), .B2(n12), .ZN(n102) );
  AOI22D1 U141 ( .A1(scaled_product[8]), .A2(n3), .B1(selected_plane[1]), .B2(
        n12), .ZN(n1160) );
  AOI22D1 U142 ( .A1(scaled_product[7]), .A2(divide_mode), .B1(
        selected_plane[0]), .B2(n12), .ZN(n1180) );
  AO22D0 U143 ( .A1(N478), .A2(n17), .B1(N155), .B2(N386), .Z(N505) );
  AO22D0 U144 ( .A1(N423), .A2(n14), .B1(N357), .B2(y_mantissa_22_), .Z(N450)
         );
  AO22D0 U145 ( .A1(N479), .A2(n17), .B1(N155), .B2(N387), .Z(N506) );
  AO22D0 U146 ( .A1(N424), .A2(n14), .B1(N358), .B2(y_mantissa_22_), .Z(N451)
         );
  AO22D0 U147 ( .A1(N480), .A2(n17), .B1(N155), .B2(N388), .Z(N507) );
  AO22D0 U148 ( .A1(N425), .A2(n14), .B1(N359), .B2(y_mantissa_22_), .Z(N452)
         );
  AO22D0 U149 ( .A1(N477), .A2(n17), .B1(N155), .B2(N385), .Z(N504) );
  AO22D0 U150 ( .A1(N422), .A2(n14), .B1(N356), .B2(y_mantissa_22_), .Z(N449)
         );
  AO22D0 U151 ( .A1(N481), .A2(n17), .B1(N155), .B2(N389), .Z(N508) );
  AO22D0 U152 ( .A1(N426), .A2(n14), .B1(N360), .B2(y_mantissa_22_), .Z(N453)
         );
  AO22D0 U153 ( .A1(N482), .A2(n17), .B1(N155), .B2(N390), .Z(N509) );
  AO22D0 U154 ( .A1(N427), .A2(n14), .B1(N361), .B2(y_mantissa_22_), .Z(N454)
         );
  AO22D0 U155 ( .A1(N421), .A2(n14), .B1(N355), .B2(y_mantissa_22_), .Z(N448)
         );
  AO22D0 U156 ( .A1(N476), .A2(n17), .B1(N155), .B2(N384), .Z(N503) );
  AO22D0 U158 ( .A1(N793), .A2(n16), .B1(N153), .B2(N702), .Z(N819) );
  AO22D0 U159 ( .A1(N740), .A2(n13), .B1(N346), .B2(N673), .Z(N766) );
  AO22D0 U160 ( .A1(N794), .A2(n16), .B1(N153), .B2(N703), .Z(N820) );
  AO22D0 U161 ( .A1(N741), .A2(n13), .B1(N346), .B2(N674), .Z(N767) );
  AO22D0 U162 ( .A1(N795), .A2(n16), .B1(N153), .B2(N704), .Z(N821) );
  AO22D0 U163 ( .A1(N742), .A2(n13), .B1(N346), .B2(N675), .Z(N768) );
  AO22D0 U164 ( .A1(N792), .A2(n16), .B1(N153), .B2(N701), .Z(N818) );
  AO22D0 U165 ( .A1(N739), .A2(n13), .B1(N346), .B2(N672), .Z(N765) );
  AO22D0 U166 ( .A1(N483), .A2(n17), .B1(N155), .B2(N391), .Z(N510) );
  AO22D0 U167 ( .A1(N428), .A2(n14), .B1(N362), .B2(y_mantissa_22_), .Z(N455)
         );
  AO22D0 U168 ( .A1(N796), .A2(n16), .B1(N153), .B2(N705), .Z(N822) );
  AO22D0 U169 ( .A1(N743), .A2(n13), .B1(N346), .B2(N676), .Z(N769) );
  AO22D0 U170 ( .A1(N484), .A2(n17), .B1(N155), .B2(N392), .Z(N511) );
  AO22D0 U171 ( .A1(N429), .A2(n14), .B1(N363), .B2(y_mantissa_22_), .Z(N456)
         );
  AO22D0 U172 ( .A1(N485), .A2(n17), .B1(N155), .B2(N393), .Z(N512) );
  AO22D0 U173 ( .A1(N430), .A2(n14), .B1(N364), .B2(y_mantissa_22_), .Z(N457)
         );
  AO22D0 U174 ( .A1(N797), .A2(n16), .B1(N153), .B2(N706), .Z(N823) );
  AO22D0 U175 ( .A1(N744), .A2(n13), .B1(N346), .B2(N677), .Z(N770) );
  AO22D0 U176 ( .A1(N738), .A2(n13), .B1(N346), .B2(N671), .Z(N764) );
  AO22D0 U177 ( .A1(N791), .A2(n16), .B1(N153), .B2(N700), .Z(N817) );
  AO22D0 U178 ( .A1(N486), .A2(n17), .B1(N155), .B2(N394), .Z(N513) );
  AO22D0 U179 ( .A1(N431), .A2(n14), .B1(N365), .B2(y_mantissa_22_), .Z(N458)
         );
  AO22D0 U181 ( .A1(N487), .A2(n17), .B1(N155), .B2(N395), .Z(N514) );
  AO22D0 U182 ( .A1(N432), .A2(n14), .B1(N366), .B2(y_mantissa_22_), .Z(N459)
         );
  AO22D0 U183 ( .A1(N798), .A2(n16), .B1(N153), .B2(N707), .Z(N824) );
  AO22D0 U184 ( .A1(N745), .A2(n13), .B1(N346), .B2(N678), .Z(N771) );
  AO22D0 U185 ( .A1(N488), .A2(n17), .B1(N155), .B2(N396), .Z(N515) );
  AO22D0 U186 ( .A1(N433), .A2(n14), .B1(N367), .B2(y_mantissa_22_), .Z(N460)
         );
  AO22D0 U187 ( .A1(N489), .A2(n17), .B1(N155), .B2(N397), .Z(N516) );
  AO22D0 U188 ( .A1(N434), .A2(n14), .B1(N368), .B2(y_mantissa_22_), .Z(N461)
         );
  AO22D0 U189 ( .A1(N490), .A2(n17), .B1(N155), .B2(N398), .Z(N517) );
  AO22D0 U190 ( .A1(N435), .A2(n14), .B1(N369), .B2(y_mantissa_22_), .Z(N462)
         );
  AO22D0 U191 ( .A1(N491), .A2(n17), .B1(N155), .B2(N399), .Z(N518) );
  AO22D0 U192 ( .A1(N436), .A2(n14), .B1(N370), .B2(y_mantissa_22_), .Z(N463)
         );
  AO22D0 U193 ( .A1(N492), .A2(n17), .B1(N155), .B2(N400), .Z(N519) );
  AO22D0 U194 ( .A1(N437), .A2(n14), .B1(N371), .B2(y_mantissa_22_), .Z(N464)
         );
  AO22D0 U195 ( .A1(N493), .A2(n17), .B1(N155), .B2(N401), .Z(N520) );
  AO22D0 U196 ( .A1(N438), .A2(n14), .B1(N372), .B2(y_mantissa_22_), .Z(N465)
         );
  AO22D0 U197 ( .A1(N494), .A2(n17), .B1(N155), .B2(N402), .Z(N521) );
  AO22D0 U198 ( .A1(N439), .A2(n14), .B1(N373), .B2(y_mantissa_22_), .Z(N466)
         );
  AO22D0 U199 ( .A1(N495), .A2(n17), .B1(N155), .B2(N403), .Z(N522) );
  AO22D0 U200 ( .A1(N440), .A2(n14), .B1(N374), .B2(y_mantissa_22_), .Z(N467)
         );
  AO22D0 U201 ( .A1(N496), .A2(n17), .B1(N155), .B2(N404), .Z(N523) );
  AO22D0 U202 ( .A1(N441), .A2(n14), .B1(N375), .B2(y_mantissa_22_), .Z(N468)
         );
  AO22D0 U203 ( .A1(N497), .A2(n17), .B1(N155), .B2(N405), .Z(N524) );
  AO22D0 U204 ( .A1(N442), .A2(n14), .B1(N376), .B2(y_mantissa_22_), .Z(N469)
         );
  AO22D0 U205 ( .A1(N799), .A2(n16), .B1(N153), .B2(N708), .Z(N825) );
  AO22D0 U206 ( .A1(N746), .A2(n13), .B1(N346), .B2(N679), .Z(N772) );
  AO22D0 U207 ( .A1(N498), .A2(n17), .B1(N155), .B2(N406), .Z(N525) );
  AO22D0 U208 ( .A1(N443), .A2(n14), .B1(N377), .B2(y_mantissa_22_), .Z(N470)
         );
  AO22D0 U209 ( .A1(N800), .A2(n16), .B1(N153), .B2(N709), .Z(N826) );
  AO22D0 U210 ( .A1(N747), .A2(n13), .B1(N346), .B2(N680), .Z(N773) );
  IOA21D1 U211 ( .A1(N499), .A2(n17), .B(n147), .ZN(N526) );
  IOA21D1 U212 ( .A1(N444), .A2(n14), .B(n148), .ZN(N471) );
  AO22D0 U213 ( .A1(N801), .A2(n16), .B1(N153), .B2(N710), .Z(N827) );
  AO22D0 U214 ( .A1(N748), .A2(n13), .B1(N346), .B2(N681), .Z(N774) );
  AO22D0 U215 ( .A1(N802), .A2(n16), .B1(N153), .B2(N711), .Z(N828) );
  AO22D0 U216 ( .A1(N749), .A2(n13), .B1(N346), .B2(N682), .Z(N775) );
  AO22D0 U217 ( .A1(N803), .A2(n16), .B1(N153), .B2(N712), .Z(N829) );
  AO22D0 U218 ( .A1(N750), .A2(n13), .B1(N346), .B2(N683), .Z(N776) );
  AO22D0 U219 ( .A1(N804), .A2(n16), .B1(N153), .B2(N713), .Z(N830) );
  AO22D0 U220 ( .A1(N751), .A2(n13), .B1(N346), .B2(N684), .Z(N777) );
  AO22D0 U221 ( .A1(N805), .A2(n16), .B1(N153), .B2(N714), .Z(N831) );
  AO22D0 U222 ( .A1(N752), .A2(n13), .B1(N346), .B2(N685), .Z(N778) );
  AO22D0 U223 ( .A1(N806), .A2(n16), .B1(N153), .B2(N715), .Z(N832) );
  AO22D0 U224 ( .A1(N753), .A2(n13), .B1(N346), .B2(N686), .Z(N779) );
  AO22D0 U225 ( .A1(N807), .A2(n16), .B1(N153), .B2(N716), .Z(N833) );
  AO22D0 U226 ( .A1(N754), .A2(n13), .B1(N346), .B2(N687), .Z(N780) );
  AO22D0 U227 ( .A1(N808), .A2(n16), .B1(N153), .B2(N717), .Z(N834) );
  AO22D0 U228 ( .A1(N755), .A2(n13), .B1(N346), .B2(N688), .Z(N781) );
  AO22D0 U229 ( .A1(N809), .A2(n16), .B1(N153), .B2(N718), .Z(N835) );
  AO22D0 U230 ( .A1(N756), .A2(n13), .B1(N346), .B2(N689), .Z(N782) );
  IOA21D1 U231 ( .A1(N500), .A2(n17), .B(n147), .ZN(N527) );
  IOA21D1 U232 ( .A1(N445), .A2(n14), .B(n148), .ZN(N472) );
  AO22D0 U233 ( .A1(N810), .A2(n16), .B1(N153), .B2(N719), .Z(N836) );
  AO22D0 U234 ( .A1(N757), .A2(n13), .B1(N346), .B2(N690), .Z(N783) );
  AO22D0 U235 ( .A1(N758), .A2(n13), .B1(N346), .B2(N691), .Z(N784) );
  AO22D0 U236 ( .A1(N811), .A2(n16), .B1(N153), .B2(N720), .Z(N837) );
  IOA21D1 U237 ( .A1(N501), .A2(n17), .B(n147), .ZN(N528) );
  IOA21D1 U238 ( .A1(N446), .A2(n14), .B(n148), .ZN(N473) );
  AO22D0 U239 ( .A1(N759), .A2(n13), .B1(N346), .B2(N692), .Z(N785) );
  AO22D0 U240 ( .A1(N812), .A2(n16), .B1(N153), .B2(N721), .Z(N838) );
  IOA21D1 U241 ( .A1(N760), .A2(n13), .B(n146), .ZN(N786) );
  IOA21D1 U242 ( .A1(N813), .A2(n16), .B(n145), .ZN(N839) );
  IOA21D1 U243 ( .A1(N814), .A2(n16), .B(n145), .ZN(N840) );
  IOA21D1 U244 ( .A1(N761), .A2(n13), .B(n146), .ZN(N787) );
  IOA21D1 U245 ( .A1(N815), .A2(n16), .B(n145), .ZN(N841) );
  IOA21D1 U246 ( .A1(N762), .A2(n13), .B(n146), .ZN(N788) );
  AO22D0 U249 ( .A1(N270), .A2(n12), .B1(N103), .B2(n2), .Z(base_plane[0]) );
  AO22D0 U250 ( .A1(n13), .A2(n12), .B1(N607), .B2(n2), .Z(N718) );
  AO22D0 U251 ( .A1(n14), .A2(n12), .B1(N181), .B2(n2), .Z(N405) );
  AO22D0 U252 ( .A1(n14), .A2(n12), .B1(N180), .B2(n3), .Z(N404) );
  AO22D0 U253 ( .A1(n14), .A2(n12), .B1(N182), .B2(divide_mode), .Z(N406) );
  AO22D0 U254 ( .A1(n13), .A2(n12), .B1(N608), .B2(n3), .Z(N719) );
  AO22D0 U255 ( .A1(n14), .A2(n12), .B1(N183), .B2(n3), .Z(N410) );
  ND2D1 U256 ( .A1(y_mantissa_22_), .A2(n13), .ZN(coefficient_2) );
  ND2D1 U257 ( .A1(N346), .A2(n14), .ZN(coefficient[5]) );
  AOI22D1 U258 ( .A1(scaled_product[28]), .A2(divide_mode), .B1(
        selected_plane[21]), .B2(n12), .ZN(n1230) );
  AOI22D1 U259 ( .A1(scaled_product[27]), .A2(n3), .B1(selected_plane[20]), 
        .B2(n12), .ZN(n1220) );
  AOI22D1 U260 ( .A1(scaled_product[26]), .A2(divide_mode), .B1(
        selected_plane[19]), .B2(n12), .ZN(n1250) );
  AOI22D1 U261 ( .A1(scaled_product[25]), .A2(n2), .B1(selected_plane[18]), 
        .B2(n12), .ZN(n1270) );
  AOI22D1 U262 ( .A1(scaled_product[24]), .A2(n3), .B1(selected_plane[17]), 
        .B2(n12), .ZN(n1290) );
  AO22D0 U263 ( .A1(n16), .A2(n12), .B1(n16), .B2(n2), .Z(N689) );
  AO22D0 U265 ( .A1(n17), .A2(n12), .B1(n17), .B2(n2), .Z(N375) );
  AO22D0 U267 ( .A1(n16), .A2(n12), .B1(N153), .B2(n2), .Z(N690) );
  AOI22D1 U268 ( .A1(scaled_product[22]), .A2(n2), .B1(selected_plane[15]), 
        .B2(n12), .ZN(n133) );
  AO22D0 U269 ( .A1(n17), .A2(n12), .B1(N155), .B2(divide_mode), .Z(N376) );
  XOR3D1 U271 ( .A1(N346), .A2(n3), .A3(n16), .Z(N736) );
  AOI22D1 U272 ( .A1(scaled_product[21]), .A2(n3), .B1(selected_plane[14]), 
        .B2(n12), .ZN(n135) );
  XOR3D1 U273 ( .A1(y_mantissa_22_), .A2(divide_mode), .A3(n17), .Z(N419) );
  AOI22D1 U275 ( .A1(scaled_product[13]), .A2(n3), .B1(selected_plane[6]), 
        .B2(n12), .ZN(n1060) );
  AOI22D1 U276 ( .A1(scaled_product[12]), .A2(divide_mode), .B1(
        selected_plane[5]), .B2(n12), .ZN(n1080) );
  AOI22D1 U277 ( .A1(scaled_product[11]), .A2(n2), .B1(selected_plane[4]), 
        .B2(n12), .ZN(n1100) );
  AOI22D1 U278 ( .A1(scaled_product[10]), .A2(n3), .B1(selected_plane[3]), 
        .B2(n12), .ZN(n1120) );
  AOI22D1 U279 ( .A1(scaled_product[9]), .A2(n2), .B1(selected_plane[2]), .B2(
        n12), .ZN(n1140) );
  AO22D0 U281 ( .A1(N187), .A2(n12), .B1(N187), .B2(n2), .Z(N354) );
  AO22D0 U282 ( .A1(N186), .A2(n12), .B1(N186), .B2(n2), .Z(N353) );
  AO22D0 U283 ( .A1(N326), .A2(n12), .B1(N159), .B2(n2), .Z(N383) );
  AO22D0 U284 ( .A1(N325), .A2(n12), .B1(N158), .B2(n3), .Z(N382) );
  AO22D0 U285 ( .A1(N188), .A2(n12), .B1(N188), .B2(n3), .Z(N355) );
  AO22D0 U286 ( .A1(N327), .A2(n12), .B1(N160), .B2(n3), .Z(N384) );
  AO22D0 U287 ( .A1(N186), .A2(n12), .B1(N186), .B2(n2), .Z(N668) );
  AO22D0 U288 ( .A1(N188), .A2(n12), .B1(N188), .B2(n3), .Z(N670) );
  AO22D0 U289 ( .A1(N187), .A2(n12), .B1(N187), .B2(n3), .Z(N669) );
  AO22D0 U290 ( .A1(N328), .A2(n12), .B1(N161), .B2(n3), .Z(N385) );
  AO22D0 U291 ( .A1(N189), .A2(n12), .B1(N189), .B2(n3), .Z(N356) );
  AO22D0 U292 ( .A1(N325), .A2(n12), .B1(N586), .B2(n2), .Z(N697) );
  AO22D0 U293 ( .A1(N327), .A2(n12), .B1(N588), .B2(n3), .Z(N699) );
  AO22D0 U294 ( .A1(N326), .A2(n12), .B1(N587), .B2(n3), .Z(N698) );
  AO22D0 U295 ( .A1(N329), .A2(n12), .B1(N162), .B2(n2), .Z(N386) );
  AO22D0 U296 ( .A1(N330), .A2(n12), .B1(N163), .B2(n3), .Z(N387) );
  AO22D0 U297 ( .A1(N329), .A2(n12), .B1(N590), .B2(n3), .Z(N701) );
  AO22D0 U298 ( .A1(N328), .A2(n12), .B1(N589), .B2(n2), .Z(N700) );
  AO22D0 U299 ( .A1(N189), .A2(n12), .B1(N189), .B2(n2), .Z(N671) );
  AO22D0 U300 ( .A1(N190), .A2(n12), .B1(N190), .B2(n2), .Z(N357) );
  AO22D0 U301 ( .A1(N330), .A2(n12), .B1(N591), .B2(n2), .Z(N702) );
  AO22D0 U302 ( .A1(N331), .A2(n12), .B1(N164), .B2(n3), .Z(N388) );
  AO22D0 U303 ( .A1(N190), .A2(n12), .B1(N190), .B2(n3), .Z(N672) );
  AO22D0 U304 ( .A1(N331), .A2(n12), .B1(N592), .B2(n3), .Z(N703) );
  AO22D0 U305 ( .A1(N191), .A2(n12), .B1(N191), .B2(n3), .Z(N358) );
  AO22D0 U306 ( .A1(N332), .A2(n12), .B1(N165), .B2(n2), .Z(N389) );
  AO22D0 U307 ( .A1(N332), .A2(n12), .B1(N593), .B2(n3), .Z(N704) );
  AO22D0 U308 ( .A1(N191), .A2(n12), .B1(N191), .B2(n3), .Z(N673) );
  AO22D0 U309 ( .A1(N333), .A2(n12), .B1(N166), .B2(n3), .Z(N390) );
  AO22D0 U310 ( .A1(N333), .A2(n12), .B1(N594), .B2(n2), .Z(N705) );
  AO22D0 U311 ( .A1(N192), .A2(n12), .B1(N192), .B2(n3), .Z(N359) );
  AO22D0 U312 ( .A1(N192), .A2(n12), .B1(N192), .B2(n2), .Z(N674) );
  AO22D0 U313 ( .A1(N334), .A2(n12), .B1(N595), .B2(n3), .Z(N706) );
  AO22D0 U314 ( .A1(N334), .A2(n12), .B1(N167), .B2(n3), .Z(N391) );
  AO22D0 U315 ( .A1(N193), .A2(n12), .B1(N193), .B2(n2), .Z(N360) );
  AO22D0 U316 ( .A1(N335), .A2(n12), .B1(N596), .B2(n3), .Z(N707) );
  AO22D0 U317 ( .A1(N193), .A2(n12), .B1(N193), .B2(n3), .Z(N675) );
  AO22D0 U318 ( .A1(N335), .A2(n12), .B1(N168), .B2(n2), .Z(N392) );
  INVD1 U319 ( .I(N346), .ZN(n13) );
  AO22D0 U320 ( .A1(N336), .A2(n12), .B1(N169), .B2(n2), .Z(N393) );
  AO22D0 U321 ( .A1(N336), .A2(n12), .B1(N597), .B2(n2), .Z(N708) );
  AO22D0 U322 ( .A1(N337), .A2(n12), .B1(N170), .B2(n3), .Z(N394) );
  AO22D0 U323 ( .A1(N194), .A2(n12), .B1(N194), .B2(n3), .Z(N676) );
  AO22D0 U324 ( .A1(N194), .A2(n12), .B1(N194), .B2(n3), .Z(N361) );
  AO22D0 U325 ( .A1(N337), .A2(n12), .B1(N598), .B2(n3), .Z(N709) );
  AO22D0 U326 ( .A1(N338), .A2(n12), .B1(N171), .B2(n3), .Z(N395) );
  AO22D0 U327 ( .A1(N338), .A2(n12), .B1(N599), .B2(n3), .Z(N710) );
  AO22D0 U328 ( .A1(N339), .A2(n12), .B1(N600), .B2(n2), .Z(N711) );
  AO22D0 U329 ( .A1(N339), .A2(n12), .B1(N172), .B2(n2), .Z(N396) );
  AO22D0 U330 ( .A1(N340), .A2(n12), .B1(N601), .B2(n3), .Z(N712) );
  AO22D0 U331 ( .A1(N340), .A2(n12), .B1(N173), .B2(n2), .Z(N397) );
  AO22D0 U332 ( .A1(N195), .A2(n12), .B1(N195), .B2(n2), .Z(N677) );
  AO22D0 U333 ( .A1(N341), .A2(n12), .B1(N602), .B2(n3), .Z(N713) );
  AO22D0 U334 ( .A1(N341), .A2(n12), .B1(N174), .B2(n3), .Z(N398) );
  AO22D0 U335 ( .A1(N195), .A2(n12), .B1(N195), .B2(n3), .Z(N362) );
  AO22D0 U336 ( .A1(N342), .A2(n12), .B1(N603), .B2(n2), .Z(N714) );
  AO22D0 U337 ( .A1(N342), .A2(n12), .B1(N175), .B2(n2), .Z(N399) );
  AO22D0 U338 ( .A1(N343), .A2(n12), .B1(N604), .B2(n2), .Z(N715) );
  AO22D0 U339 ( .A1(N343), .A2(n12), .B1(N176), .B2(n2), .Z(N400) );
  AO22D0 U340 ( .A1(N344), .A2(n12), .B1(N605), .B2(n3), .Z(N716) );
  AO22D0 U341 ( .A1(N344), .A2(n12), .B1(N177), .B2(n3), .Z(N401) );
  AO22D0 U342 ( .A1(N345), .A2(n12), .B1(N606), .B2(n2), .Z(N717) );
  AO22D0 U343 ( .A1(N345), .A2(n12), .B1(N178), .B2(n2), .Z(N402) );
  AO22D0 U344 ( .A1(N196), .A2(n12), .B1(N196), .B2(n3), .Z(N678) );
  AO22D0 U345 ( .A1(N196), .A2(n12), .B1(N196), .B2(n2), .Z(N363) );
  AO22D0 U346 ( .A1(N197), .A2(n12), .B1(N197), .B2(n3), .Z(N364) );
  AO22D0 U347 ( .A1(N197), .A2(n12), .B1(N197), .B2(n3), .Z(N679) );
  AO22D0 U348 ( .A1(N198), .A2(n12), .B1(N198), .B2(n3), .Z(N365) );
  AO22D0 U349 ( .A1(N198), .A2(n12), .B1(N198), .B2(n2), .Z(N680) );
  AO22D0 U350 ( .A1(N199), .A2(n12), .B1(N199), .B2(n2), .Z(N681) );
  AO22D0 U351 ( .A1(N199), .A2(n12), .B1(N199), .B2(n2), .Z(N366) );
  AO22D0 U352 ( .A1(N200), .A2(n12), .B1(N200), .B2(n3), .Z(N682) );
  AO22D0 U353 ( .A1(N200), .A2(n12), .B1(N200), .B2(n2), .Z(N367) );
  AO22D0 U354 ( .A1(N201), .A2(n12), .B1(N201), .B2(n2), .Z(N683) );
  AO22D0 U355 ( .A1(N201), .A2(n12), .B1(N201), .B2(n3), .Z(N368) );
  AO22D0 U356 ( .A1(N202), .A2(n12), .B1(N202), .B2(n2), .Z(N684) );
  AO22D0 U357 ( .A1(N202), .A2(n12), .B1(N202), .B2(n2), .Z(N369) );
  AO22D0 U358 ( .A1(N203), .A2(n12), .B1(N203), .B2(n3), .Z(N685) );
  AO22D0 U359 ( .A1(N203), .A2(n12), .B1(N203), .B2(n2), .Z(N370) );
  AO22D0 U360 ( .A1(N204), .A2(n12), .B1(N204), .B2(n2), .Z(N686) );
  AO22D0 U361 ( .A1(N204), .A2(n12), .B1(N204), .B2(n3), .Z(N371) );
  AO22D0 U362 ( .A1(N205), .A2(n12), .B1(N205), .B2(n2), .Z(N687) );
  AO22D0 U363 ( .A1(N205), .A2(n12), .B1(N205), .B2(n2), .Z(N372) );
  AO22D0 U364 ( .A1(N206), .A2(n12), .B1(N206), .B2(n3), .Z(N688) );
  AO22D0 U365 ( .A1(N206), .A2(n12), .B1(N206), .B2(n2), .Z(N373) );
  TIEH U368 ( .Z(N70) );
  XNR2D1 U369 ( .A1(N153), .A2(N155), .ZN(N208) );
  CKXOR2D1 U370 ( .A1(N153), .A2(N155), .Z(N41) );
  CKND0 U372 ( .I(N153), .ZN(N639) );
  CKND0 U373 ( .I(N346), .ZN(N665) );
  AN2XD1 U374 ( .A1(n17), .A2(n12), .Z(N381) );
  AN2XD1 U375 ( .A1(N639), .A2(n12), .Z(N696) );
  CKND0 U4 ( .I(N43), .ZN(n1) );
  CKND2D0 U9 ( .A1(N155), .A2(N153), .ZN(N43) );
  ND2D1 U134 ( .A1(N155), .A2(n12), .ZN(N377) );
  ND2D1 U157 ( .A1(N153), .A2(n12), .ZN(N692) );
  CKND1 U180 ( .I(N155), .ZN(n17) );
  INVD1 U247 ( .I(y_mantissa_22_), .ZN(n14) );
  CKND1 U248 ( .I(N153), .ZN(n16) );
  INVD3 U264 ( .I(divide_mode), .ZN(n12) );
endmodule


module oadm_fixed_l2_divmul_correction_chain ( x, y, divide_mode, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  input divide_mode;
  wire   n42;

  oadm_fixed_divmul_correction_chain_LEVEL2 impl ( .x(x), .y(y), .divide_mode(
        n42), .result(result) );
  BUFFD0 U1 ( .I(divide_mode), .Z(n42) );
endmodule

