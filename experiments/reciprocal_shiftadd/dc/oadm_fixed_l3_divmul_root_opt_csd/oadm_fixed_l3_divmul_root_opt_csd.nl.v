/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Sun Sep  6 00:21:55 2026
/////////////////////////////////////////////////////////////


module fp32_normal_finite_wrapper_DW01_add_3_DW01_add_20 ( A, B, CI, SUM, CO
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


module fp32_normal_finite_wrapper_DW01_add_1_DW01_add_18 ( A, B, CI, SUM, CO
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
         N12, N11, N10, n1, n2, n35, n410, n51, n60, n70, n76, n77, n78, n80;
  wire   [7:2] add_0_root_add_0_root_add_22_2_carry;
  wire   [7:2] add_0_root_add_0_root_add_25_2_carry;

  CKXOR2D1 U2 ( .A1(y[31]), .A2(x[31]), .Z(result[31]) );
  fp32_normal_finite_wrapper_DW01_add_3_DW01_add_20 add_1_root_add_0_root_add_25_2 ( 
        .A(x[30:23]), .B({N42, N41, N40, N39, N38, N37, N36, N11}), .CI(n80), 
        .SUM({N34, N33, N32, N31, N30, N29, N28, N27}) );
  fp32_normal_finite_wrapper_DW01_add_1_DW01_add_18 add_1_root_add_0_root_add_22_2 ( 
        .A(x[30:23]), .B({y[30], N17, N16, N15, N14, N13, N12, N11}), .CI(n80), 
        .SUM({N10, N9, N8, N7, N6, N5, N4, N3}) );
  AN2XD1 U3 ( .A1(exponent_adjust[0]), .A2(N3), .Z(n1) );
  AN2XD1 U4 ( .A1(exponent_adjust[0]), .A2(N27), .Z(n2) );
  INVD1 U25 ( .I(n77), .ZN(n78) );
  CKBD1 U26 ( .I(result_fraction[8]), .Z(result[8]) );
  CKBD1 U27 ( .I(result_fraction[7]), .Z(result[7]) );
  CKBD1 U28 ( .I(result_fraction[21]), .Z(result[21]) );
  CKBD1 U29 ( .I(result_fraction[15]), .Z(result[15]) );
  CKBD1 U30 ( .I(result_fraction[16]), .Z(result[16]) );
  CKBD1 U31 ( .I(result_fraction[17]), .Z(result[17]) );
  CKBD1 U32 ( .I(result_fraction[18]), .Z(result[18]) );
  CKBD1 U33 ( .I(result_fraction[19]), .Z(result[19]) );
  CKBD1 U34 ( .I(result_fraction[11]), .Z(result[11]) );
  CKBD1 U35 ( .I(result_fraction[12]), .Z(result[12]) );
  CKBD1 U36 ( .I(result_fraction[13]), .Z(result[13]) );
  CKBD1 U37 ( .I(result_fraction[14]), .Z(result[14]) );
  CKBD1 U38 ( .I(result_fraction[20]), .Z(result[20]) );
  CKBD1 U39 ( .I(result_fraction[10]), .Z(result[10]) );
  CKBD1 U40 ( .I(result_fraction[6]), .Z(result[6]) );
  CKBD1 U41 ( .I(result_fraction[5]), .Z(result[5]) );
  CKBD1 U42 ( .I(divide_mode), .Z(n77) );
  AO22D0 U43 ( .A1(N49), .A2(n78), .B1(N25), .B2(n77), .Z(result[29]) );
  AO22D0 U44 ( .A1(N48), .A2(n78), .B1(N24), .B2(n77), .Z(result[28]) );
  AO22D0 U45 ( .A1(N47), .A2(n78), .B1(N23), .B2(n77), .Z(result[27]) );
  AO22D0 U46 ( .A1(N46), .A2(n78), .B1(N22), .B2(n77), .Z(result[26]) );
  AO22D0 U47 ( .A1(N45), .A2(n78), .B1(N21), .B2(n77), .Z(result[25]) );
  AO22D0 U48 ( .A1(N44), .A2(n78), .B1(N20), .B2(n77), .Z(result[24]) );
  CKBD1 U49 ( .I(result_fraction[9]), .Z(result[9]) );
  FA1D0 U50 ( .A(N4), .B(exponent_adjust[1]), .CI(n1), .CO(
        add_0_root_add_0_root_add_22_2_carry[2]), .S(N20) );
  FA1D0 U51 ( .A(N5), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[2]), .CO(
        add_0_root_add_0_root_add_22_2_carry[3]), .S(N21) );
  FA1D0 U52 ( .A(N6), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[3]), .CO(
        add_0_root_add_0_root_add_22_2_carry[4]), .S(N22) );
  FA1D0 U53 ( .A(N7), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[4]), .CO(
        add_0_root_add_0_root_add_22_2_carry[5]), .S(N23) );
  FA1D0 U54 ( .A(N8), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[5]), .CO(
        add_0_root_add_0_root_add_22_2_carry[6]), .S(N24) );
  FA1D0 U55 ( .A(N9), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[6]), .CO(
        add_0_root_add_0_root_add_22_2_carry[7]), .S(N25) );
  FA1D0 U56 ( .A(N28), .B(exponent_adjust[1]), .CI(n2), .CO(
        add_0_root_add_0_root_add_25_2_carry[2]), .S(N44) );
  FA1D0 U57 ( .A(N29), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[2]), .CO(
        add_0_root_add_0_root_add_25_2_carry[3]), .S(N45) );
  FA1D0 U58 ( .A(N30), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[3]), .CO(
        add_0_root_add_0_root_add_25_2_carry[4]), .S(N46) );
  FA1D0 U59 ( .A(N31), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[4]), .CO(
        add_0_root_add_0_root_add_25_2_carry[5]), .S(N47) );
  FA1D0 U60 ( .A(N32), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[5]), .CO(
        add_0_root_add_0_root_add_25_2_carry[6]), .S(N48) );
  FA1D0 U61 ( .A(N33), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[6]), .CO(
        add_0_root_add_0_root_add_25_2_carry[7]), .S(N49) );
  AO22D0 U62 ( .A1(N43), .A2(n78), .B1(N19), .B2(n77), .Z(result[23]) );
  AO22D0 U63 ( .A1(N50), .A2(n78), .B1(n77), .B2(N26), .Z(result[30]) );
  XOR3D1 U64 ( .A1(N34), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_25_2_carry[7]), .Z(N50) );
  XOR3D1 U65 ( .A1(N10), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_22_2_carry[7]), .Z(N26) );
  CKBD1 U66 ( .I(y[22]), .Z(fraction_y[22]) );
  CKBD1 U67 ( .I(x[22]), .Z(fraction_x[22]) );
  CKBD1 U68 ( .I(x[20]), .Z(fraction_x[20]) );
  CKBD1 U69 ( .I(y[21]), .Z(fraction_y[21]) );
  AN2XD1 U70 ( .A1(y[23]), .A2(y[24]), .Z(n35) );
  INVD1 U71 ( .I(y[29]), .ZN(N17) );
  INVD0 U72 ( .I(y[24]), .ZN(N12) );
  INVD1 U73 ( .I(y[25]), .ZN(N13) );
  INVD1 U74 ( .I(y[26]), .ZN(N14) );
  INVD1 U75 ( .I(y[27]), .ZN(N15) );
  INVD1 U76 ( .I(y[28]), .ZN(N16) );
  AN2XD1 U77 ( .A1(n35), .A2(y[25]), .Z(n410) );
  AN2XD1 U78 ( .A1(n410), .A2(y[26]), .Z(n51) );
  AN2XD1 U79 ( .A1(n51), .A2(y[27]), .Z(n60) );
  AN2XD1 U80 ( .A1(n60), .A2(y[28]), .Z(n70) );
  CKXOR2D1 U81 ( .A1(y[30]), .A2(n76), .Z(N42) );
  ND2D1 U82 ( .A1(n70), .A2(y[29]), .ZN(n76) );
  CKBD1 U88 ( .I(x[21]), .Z(fraction_x[21]) );
  CKBD1 U89 ( .I(x[19]), .Z(fraction_x[19]) );
  CKBD1 U90 ( .I(x[18]), .Z(fraction_x[18]) );
  CKBD1 U91 ( .I(x[17]), .Z(fraction_x[17]) );
  CKBD1 U92 ( .I(x[16]), .Z(fraction_x[16]) );
  CKBD1 U93 ( .I(x[15]), .Z(fraction_x[15]) );
  CKBD1 U94 ( .I(x[14]), .Z(fraction_x[14]) );
  CKBD1 U95 ( .I(x[13]), .Z(fraction_x[13]) );
  CKBD1 U96 ( .I(x[12]), .Z(fraction_x[12]) );
  CKBD1 U97 ( .I(x[11]), .Z(fraction_x[11]) );
  CKBD1 U98 ( .I(x[10]), .Z(fraction_x[10]) );
  CKBD1 U99 ( .I(y[20]), .Z(fraction_y[20]) );
  CKBD1 U100 ( .I(y[19]), .Z(fraction_y[19]) );
  CKBD1 U101 ( .I(y[18]), .Z(fraction_y[18]) );
  CKBD1 U102 ( .I(y[17]), .Z(fraction_y[17]) );
  CKBD1 U103 ( .I(y[16]), .Z(fraction_y[16]) );
  CKBD1 U104 ( .I(y[15]), .Z(fraction_y[15]) );
  CKBD1 U105 ( .I(y[14]), .Z(fraction_y[14]) );
  CKBD1 U106 ( .I(y[13]), .Z(fraction_y[13]) );
  CKBD1 U107 ( .I(y[12]), .Z(fraction_y[12]) );
  CKBD1 U108 ( .I(y[11]), .Z(fraction_y[11]) );
  CKBD1 U109 ( .I(y[10]), .Z(fraction_y[10]) );
  CKBD1 U110 ( .I(result_fraction[22]), .Z(result[22]) );
  TIEL U111 ( .ZN(n80) );
  CKXOR2D1 U112 ( .A1(exponent_adjust[0]), .A2(N3), .Z(N19) );
  CKXOR2D1 U113 ( .A1(exponent_adjust[0]), .A2(N27), .Z(N43) );
  CKXOR2D1 U114 ( .A1(y[23]), .A2(y[24]), .Z(N36) );
  CKXOR2D1 U115 ( .A1(n35), .A2(y[25]), .Z(N37) );
  CKXOR2D1 U116 ( .A1(n410), .A2(y[26]), .Z(N38) );
  CKXOR2D1 U117 ( .A1(n51), .A2(y[27]), .Z(N39) );
  CKXOR2D1 U118 ( .A1(n60), .A2(y[28]), .Z(N40) );
  CKXOR2D1 U119 ( .A1(n70), .A2(y[29]), .Z(N41) );
  CKND0 U120 ( .I(y[23]), .ZN(N11) );
endmodule



    module oadm_fixed_divmul_root_opt_csd_3_16_10_16_8_e3_b6_95_7c_69_5a_4e_44_DW01_add_8 ( 
        A, B, CI, SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [16:5] carry;

  XOR3D1 U1_16 ( .A1(A[16]), .A2(B[16]), .A3(carry[16]), .Z(SUM[16]) );
  FA1D0 U1_4 ( .A(A[4]), .B(B[4]), .CI(n1), .CO(carry[5]), .S(SUM[4]) );
  FA1D0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1D0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA1D0 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  FA1D0 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FA1D0 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA1D0 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FA1D0 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FA1D0 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  FA1D0 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  FA1D0 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  FA1D0 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  AN2XD1 U1 ( .A1(B[3]), .A2(A[3]), .Z(n1) );
  CKBD1 U2 ( .I(B[2]), .Z(SUM[2]) );
  CKBD1 U3 ( .I(B[1]), .Z(SUM[1]) );
  CKXOR2D1 U4 ( .A1(B[3]), .A2(A[3]), .Z(SUM[3]) );
endmodule



    module oadm_fixed_divmul_root_opt_csd_3_16_10_16_8_e3_b6_95_7c_69_5a_4e_44_DW01_add_7 ( 
        A, B, CI, SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [16:2] carry;

  FA1D0 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  FA1D0 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA1D0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1D0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1D0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1D0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA1D0 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FA1D0 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  FA1D0 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  FA1D0 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  FA1D0 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  FA1D0 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FA1D0 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA1D0 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  XOR3D1 U1_16 ( .A1(A[16]), .A2(B[16]), .A3(carry[16]), .Z(SUM[16]) );
  FA1D0 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  AN2XD1 U1 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
  CKXOR2D1 U2 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
endmodule



    module oadm_fixed_divmul_root_opt_csd_3_16_10_16_8_e3_b6_95_7c_69_5a_4e_44_DW01_add_6 ( 
        A, B, CI, SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [16:3] carry;

  XOR3D1 U1_16 ( .A1(A[16]), .A2(B[16]), .A3(carry[16]), .Z(SUM[16]) );
  FA1D0 U1_2 ( .A(A[2]), .B(B[2]), .CI(n1), .CO(carry[3]), .S(SUM[2]) );
  FA1D0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1D0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1D0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1D0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA1D0 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  FA1D0 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FA1D0 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  FA1D0 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  FA1D0 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FA1D0 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  FA1D0 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA1D0 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FA1D0 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  AN2XD1 U1 ( .A1(B[1]), .A2(A[1]), .Z(n1) );
  CKBD1 U2 ( .I(B[0]), .Z(SUM[0]) );
  CKXOR2D1 U3 ( .A1(B[1]), .A2(A[1]), .Z(SUM[1]) );
endmodule



    module oadm_fixed_divmul_root_opt_csd_3_16_10_16_8_e3_b6_95_7c_69_5a_4e_44_DW_mult_tc_1 ( 
        a, b, product );
  input [9:0] a;
  input [5:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n17,
         n18, n19, n20, n21, n23, n24, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n63,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n195;

  FA1D0 U2 ( .A(n172), .B(n15), .CI(n2), .CO(n1), .S(product[14]) );
  FA1D0 U3 ( .A(n17), .B(n170), .CI(n3), .CO(n2), .S(product[13]) );
  FA1D0 U4 ( .A(n19), .B(n18), .CI(n4), .CO(n3), .S(product[12]) );
  FA1D0 U5 ( .A(n23), .B(n20), .CI(n5), .CO(n4), .S(product[11]) );
  FA1D0 U6 ( .A(n24), .B(n26), .CI(n6), .CO(n5), .S(product[10]) );
  FA1D0 U7 ( .A(n28), .B(n27), .CI(n7), .CO(n6), .S(product[9]) );
  FA1D0 U8 ( .A(n30), .B(n29), .CI(n8), .CO(n7), .S(product[8]) );
  FA1D0 U9 ( .A(n32), .B(n31), .CI(n9), .CO(n8), .S(product[7]) );
  FA1D0 U10 ( .A(n34), .B(n33), .CI(n10), .CO(n9), .S(product[6]) );
  FA1D0 U11 ( .A(n36), .B(n35), .CI(n11), .CO(n10), .S(product[5]) );
  FA1D0 U12 ( .A(n37), .B(n38), .CI(n12), .CO(n11), .S(product[4]) );
  FA1D0 U13 ( .A(n39), .B(n40), .CI(n13), .CO(n12), .S(product[3]) );
  FA1D0 U14 ( .A(n166), .B(n61), .CI(n14), .CO(n13), .S(product[2]) );
  HA1D0 U15 ( .A(n167), .B(n41), .CO(n14), .S(product[1]) );
  FA1D0 U17 ( .A(n43), .B(n21), .CI(n51), .CO(n17), .S(n18) );
  FA1D0 U18 ( .A(n52), .B(n44), .CI(n169), .CO(n19), .S(n20) );
  FA1D0 U20 ( .A(n171), .B(n53), .CI(n169), .CO(n23), .S(n24) );
  FA1D0 U22 ( .A(n63), .B(n45), .CI(n54), .CO(n26), .S(n27) );
  FA1D0 U23 ( .A(n164), .B(n46), .CI(n55), .CO(n28), .S(n29) );
  FA1D0 U24 ( .A(n163), .B(n47), .CI(n56), .CO(n30), .S(n31) );
  FA1D0 U25 ( .A(n162), .B(n48), .CI(n57), .CO(n32), .S(n33) );
  FA1D0 U26 ( .A(n161), .B(n49), .CI(n58), .CO(n34), .S(n35) );
  FA1D0 U27 ( .A(n160), .B(n50), .CI(n59), .CO(n36), .S(n37) );
  HA1D0 U28 ( .A(n60), .B(n165), .CO(n38), .S(n39) );
  XNR2D1 U118 ( .A1(b[1]), .A2(n177), .ZN(n160) );
  XNR2D1 U119 ( .A1(b[1]), .A2(n176), .ZN(n161) );
  XNR2D1 U120 ( .A1(b[1]), .A2(n175), .ZN(n162) );
  XNR2D1 U121 ( .A1(b[1]), .A2(n174), .ZN(n163) );
  XNR2D1 U122 ( .A1(b[1]), .A2(n173), .ZN(n164) );
  INVD1 U123 ( .I(n15), .ZN(n170) );
  INVD1 U124 ( .I(b[3]), .ZN(n168) );
  INVD1 U125 ( .I(n63), .ZN(n171) );
  INVD1 U126 ( .I(n21), .ZN(n169) );
  XNR2D1 U127 ( .A1(b[1]), .A2(n178), .ZN(n165) );
  INVD1 U129 ( .I(a[0]), .ZN(n181) );
  XNR2D1 U131 ( .A1(b[1]), .A2(n179), .ZN(n166) );
  XNR2D1 U132 ( .A1(b[1]), .A2(n180), .ZN(n167) );
  INVD1 U133 ( .I(a[9]), .ZN(n172) );
  INVD1 U134 ( .I(a[1]), .ZN(n180) );
  INVD1 U135 ( .I(a[2]), .ZN(n179) );
  INVD1 U136 ( .I(a[3]), .ZN(n178) );
  INVD1 U137 ( .I(a[4]), .ZN(n177) );
  INVD1 U138 ( .I(a[5]), .ZN(n176) );
  INVD1 U139 ( .I(a[6]), .ZN(n175) );
  INVD1 U140 ( .I(a[7]), .ZN(n174) );
  INVD1 U141 ( .I(a[8]), .ZN(n173) );
  CKND0 U142 ( .I(n181), .ZN(product[0]) );
  AN2D0 U143 ( .A1(n181), .A2(b[1]), .Z(n41) );
  CKND0 U144 ( .I(n1), .ZN(product[15]) );
  XNR2D0 U145 ( .A1(b[1]), .A2(n172), .ZN(n63) );
  NR2D0 U146 ( .A1(n182), .A2(n181), .ZN(n61) );
  OAI22D0 U147 ( .A1(n183), .A2(n184), .B1(n182), .B2(n185), .ZN(n60) );
  CKXOR2D0 U148 ( .A1(b[3]), .A2(n181), .Z(n183) );
  OAI22D0 U149 ( .A1(n185), .A2(n184), .B1(n182), .B2(n186), .ZN(n59) );
  CKXOR2D0 U150 ( .A1(b[3]), .A2(n180), .Z(n185) );
  OAI22D0 U151 ( .A1(n186), .A2(n184), .B1(n182), .B2(n187), .ZN(n58) );
  CKXOR2D0 U152 ( .A1(b[3]), .A2(n179), .Z(n186) );
  OAI22D0 U153 ( .A1(n187), .A2(n184), .B1(n182), .B2(n188), .ZN(n57) );
  CKXOR2D0 U154 ( .A1(b[3]), .A2(n178), .Z(n187) );
  OAI22D0 U155 ( .A1(n188), .A2(n184), .B1(n182), .B2(n189), .ZN(n56) );
  CKXOR2D0 U156 ( .A1(b[3]), .A2(n177), .Z(n188) );
  OAI22D0 U157 ( .A1(n189), .A2(n184), .B1(n182), .B2(n190), .ZN(n55) );
  CKXOR2D0 U158 ( .A1(b[3]), .A2(n176), .Z(n189) );
  OAI22D0 U159 ( .A1(n190), .A2(n184), .B1(n182), .B2(n191), .ZN(n54) );
  CKXOR2D0 U160 ( .A1(b[3]), .A2(n175), .Z(n190) );
  OAI22D0 U161 ( .A1(n191), .A2(n184), .B1(n182), .B2(n192), .ZN(n53) );
  CKXOR2D0 U162 ( .A1(b[3]), .A2(n174), .Z(n191) );
  OAI22D0 U163 ( .A1(n192), .A2(n184), .B1(n182), .B2(n193), .ZN(n52) );
  CKXOR2D0 U164 ( .A1(b[3]), .A2(n173), .Z(n192) );
  AO21D0 U165 ( .A1(n184), .A2(n182), .B(n193), .Z(n51) );
  CKXOR2D0 U166 ( .A1(n168), .A2(a[9]), .Z(n193) );
  NR2D0 U167 ( .A1(b[3]), .A2(n181), .ZN(n50) );
  OAI22D0 U168 ( .A1(n181), .A2(n168), .B1(b[3]), .B2(n180), .ZN(n49) );
  OAI22D0 U169 ( .A1(n180), .A2(n168), .B1(b[3]), .B2(n179), .ZN(n48) );
  OAI22D0 U170 ( .A1(n179), .A2(n168), .B1(b[3]), .B2(n178), .ZN(n47) );
  OAI22D0 U171 ( .A1(n178), .A2(n168), .B1(b[3]), .B2(n177), .ZN(n46) );
  OAI22D0 U172 ( .A1(n177), .A2(n168), .B1(b[3]), .B2(n176), .ZN(n45) );
  OAI22D0 U173 ( .A1(n175), .A2(n168), .B1(b[3]), .B2(n174), .ZN(n44) );
  OAI22D0 U174 ( .A1(n174), .A2(n168), .B1(b[3]), .B2(n173), .ZN(n43) );
  OAI32D0 U175 ( .A1(n168), .A2(a[0]), .A3(n182), .B1(n168), .B2(n184), .ZN(
        n40) );
  OAI22D0 U177 ( .A1(n176), .A2(n168), .B1(b[3]), .B2(n175), .ZN(n21) );
  OAI22D0 U178 ( .A1(b[3]), .A2(n172), .B1(n173), .B2(n168), .ZN(n15) );
  OAI211D0 U128 ( .A1(b[2]), .A2(b[3]), .B(n195), .C(n182), .ZN(n184) );
  XNR2D0 U130 ( .A1(b[2]), .A2(b[1]), .ZN(n182) );
  CKND2D0 U176 ( .A1(b[2]), .A2(b[3]), .ZN(n195) );
endmodule



    module oadm_fixed_divmul_root_opt_csd_3_16_10_16_8_e3_b6_95_7c_69_5a_4e_44_DW_mult_tc_0 ( 
        a, b, product );
  input [9:0] a;
  input [5:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n17,
         n18, n19, n20, n21, n23, n24, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n63,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n195;

  FA1D0 U2 ( .A(n172), .B(n15), .CI(n2), .CO(n1), .S(product[14]) );
  FA1D0 U3 ( .A(n17), .B(n170), .CI(n3), .CO(n2), .S(product[13]) );
  FA1D0 U4 ( .A(n19), .B(n18), .CI(n4), .CO(n3), .S(product[12]) );
  FA1D0 U5 ( .A(n23), .B(n20), .CI(n5), .CO(n4), .S(product[11]) );
  FA1D0 U6 ( .A(n24), .B(n26), .CI(n6), .CO(n5), .S(product[10]) );
  FA1D0 U7 ( .A(n28), .B(n27), .CI(n7), .CO(n6), .S(product[9]) );
  FA1D0 U8 ( .A(n30), .B(n29), .CI(n8), .CO(n7), .S(product[8]) );
  FA1D0 U9 ( .A(n32), .B(n31), .CI(n9), .CO(n8), .S(product[7]) );
  FA1D0 U10 ( .A(n34), .B(n33), .CI(n10), .CO(n9), .S(product[6]) );
  FA1D0 U11 ( .A(n36), .B(n35), .CI(n11), .CO(n10), .S(product[5]) );
  FA1D0 U12 ( .A(n37), .B(n38), .CI(n12), .CO(n11), .S(product[4]) );
  FA1D0 U13 ( .A(n39), .B(n40), .CI(n13), .CO(n12), .S(product[3]) );
  FA1D0 U14 ( .A(n166), .B(n61), .CI(n14), .CO(n13), .S(product[2]) );
  HA1D0 U15 ( .A(n167), .B(n41), .CO(n14), .S(product[1]) );
  FA1D0 U17 ( .A(n43), .B(n21), .CI(n51), .CO(n17), .S(n18) );
  FA1D0 U18 ( .A(n52), .B(n44), .CI(n169), .CO(n19), .S(n20) );
  FA1D0 U20 ( .A(n171), .B(n53), .CI(n169), .CO(n23), .S(n24) );
  FA1D0 U22 ( .A(n63), .B(n45), .CI(n54), .CO(n26), .S(n27) );
  FA1D0 U23 ( .A(n164), .B(n46), .CI(n55), .CO(n28), .S(n29) );
  FA1D0 U24 ( .A(n163), .B(n47), .CI(n56), .CO(n30), .S(n31) );
  FA1D0 U25 ( .A(n162), .B(n48), .CI(n57), .CO(n32), .S(n33) );
  FA1D0 U26 ( .A(n161), .B(n49), .CI(n58), .CO(n34), .S(n35) );
  FA1D0 U27 ( .A(n160), .B(n50), .CI(n59), .CO(n36), .S(n37) );
  HA1D0 U28 ( .A(n60), .B(n165), .CO(n38), .S(n39) );
  XNR2D1 U118 ( .A1(b[1]), .A2(n177), .ZN(n160) );
  XNR2D1 U119 ( .A1(b[1]), .A2(n176), .ZN(n161) );
  XNR2D1 U120 ( .A1(b[1]), .A2(n175), .ZN(n162) );
  XNR2D1 U121 ( .A1(b[1]), .A2(n174), .ZN(n163) );
  XNR2D1 U122 ( .A1(b[1]), .A2(n173), .ZN(n164) );
  INVD1 U123 ( .I(n15), .ZN(n170) );
  INVD1 U124 ( .I(n63), .ZN(n171) );
  INVD1 U125 ( .I(n21), .ZN(n169) );
  XNR2D1 U126 ( .A1(b[1]), .A2(n178), .ZN(n165) );
  INVD1 U127 ( .I(a[0]), .ZN(n181) );
  INVD1 U129 ( .I(b[3]), .ZN(n168) );
  XNR2D1 U131 ( .A1(b[1]), .A2(n179), .ZN(n166) );
  XNR2D1 U132 ( .A1(b[1]), .A2(n180), .ZN(n167) );
  INVD1 U133 ( .I(a[9]), .ZN(n172) );
  INVD1 U134 ( .I(a[1]), .ZN(n180) );
  INVD1 U135 ( .I(a[2]), .ZN(n179) );
  INVD1 U136 ( .I(a[3]), .ZN(n178) );
  INVD1 U137 ( .I(a[4]), .ZN(n177) );
  INVD1 U138 ( .I(a[5]), .ZN(n176) );
  INVD1 U139 ( .I(a[6]), .ZN(n175) );
  INVD1 U140 ( .I(a[7]), .ZN(n174) );
  INVD1 U141 ( .I(a[8]), .ZN(n173) );
  CKND0 U142 ( .I(n181), .ZN(product[0]) );
  AN2D0 U143 ( .A1(n181), .A2(b[1]), .Z(n41) );
  CKND0 U144 ( .I(n1), .ZN(product[15]) );
  XNR2D0 U145 ( .A1(b[1]), .A2(n172), .ZN(n63) );
  NR2D0 U146 ( .A1(n182), .A2(n181), .ZN(n61) );
  OAI22D0 U147 ( .A1(n183), .A2(n184), .B1(n182), .B2(n185), .ZN(n60) );
  CKXOR2D0 U148 ( .A1(b[3]), .A2(n181), .Z(n183) );
  OAI22D0 U149 ( .A1(n185), .A2(n184), .B1(n182), .B2(n186), .ZN(n59) );
  CKXOR2D0 U150 ( .A1(b[3]), .A2(n180), .Z(n185) );
  OAI22D0 U151 ( .A1(n186), .A2(n184), .B1(n182), .B2(n187), .ZN(n58) );
  CKXOR2D0 U152 ( .A1(b[3]), .A2(n179), .Z(n186) );
  OAI22D0 U153 ( .A1(n187), .A2(n184), .B1(n182), .B2(n188), .ZN(n57) );
  CKXOR2D0 U154 ( .A1(b[3]), .A2(n178), .Z(n187) );
  OAI22D0 U155 ( .A1(n188), .A2(n184), .B1(n182), .B2(n189), .ZN(n56) );
  CKXOR2D0 U156 ( .A1(b[3]), .A2(n177), .Z(n188) );
  OAI22D0 U157 ( .A1(n189), .A2(n184), .B1(n182), .B2(n190), .ZN(n55) );
  CKXOR2D0 U158 ( .A1(b[3]), .A2(n176), .Z(n189) );
  OAI22D0 U159 ( .A1(n190), .A2(n184), .B1(n182), .B2(n191), .ZN(n54) );
  CKXOR2D0 U160 ( .A1(b[3]), .A2(n175), .Z(n190) );
  OAI22D0 U161 ( .A1(n191), .A2(n184), .B1(n182), .B2(n192), .ZN(n53) );
  CKXOR2D0 U162 ( .A1(b[3]), .A2(n174), .Z(n191) );
  OAI22D0 U163 ( .A1(n192), .A2(n184), .B1(n182), .B2(n193), .ZN(n52) );
  CKXOR2D0 U164 ( .A1(b[3]), .A2(n173), .Z(n192) );
  AO21D0 U165 ( .A1(n184), .A2(n182), .B(n193), .Z(n51) );
  CKXOR2D0 U166 ( .A1(n168), .A2(a[9]), .Z(n193) );
  NR2D0 U167 ( .A1(b[3]), .A2(n181), .ZN(n50) );
  OAI22D0 U168 ( .A1(n181), .A2(n168), .B1(b[3]), .B2(n180), .ZN(n49) );
  OAI22D0 U169 ( .A1(n180), .A2(n168), .B1(b[3]), .B2(n179), .ZN(n48) );
  OAI22D0 U170 ( .A1(n179), .A2(n168), .B1(b[3]), .B2(n178), .ZN(n47) );
  OAI22D0 U171 ( .A1(n178), .A2(n168), .B1(b[3]), .B2(n177), .ZN(n46) );
  OAI22D0 U172 ( .A1(n177), .A2(n168), .B1(b[3]), .B2(n176), .ZN(n45) );
  OAI22D0 U173 ( .A1(n175), .A2(n168), .B1(b[3]), .B2(n174), .ZN(n44) );
  OAI22D0 U174 ( .A1(n174), .A2(n168), .B1(b[3]), .B2(n173), .ZN(n43) );
  OAI32D0 U175 ( .A1(n168), .A2(a[0]), .A3(n182), .B1(n168), .B2(n184), .ZN(
        n40) );
  OAI22D0 U177 ( .A1(n176), .A2(n168), .B1(b[3]), .B2(n175), .ZN(n21) );
  OAI22D0 U178 ( .A1(b[3]), .A2(n172), .B1(n173), .B2(n168), .ZN(n15) );
  OAI211D0 U128 ( .A1(b[2]), .A2(b[3]), .B(n195), .C(n182), .ZN(n184) );
  XNR2D0 U130 ( .A1(b[2]), .A2(b[1]), .ZN(n182) );
  CKND2D0 U176 ( .A1(b[2]), .A2(b[3]), .ZN(n195) );
endmodule



    module oadm_fixed_divmul_root_opt_csd_3_16_10_16_8_e3_b6_95_7c_69_5a_4e_44_DW_mult_uns_0 ( 
        a, b, product );
  input [4:0] a;
  input [4:0] b;
  output [9:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n20, n21, n22, n24, n25, n26, n27, n28, n29, n36, n37, n41,
         n42, n43, n46, n47, n48, n88, n89, n90, n91, n95, n96, n97, n98, n99,
         n102, n103, n104, n105, n106, n107, n108;

  FA1D0 U3 ( .A(n12), .B(n10), .CI(n3), .CO(n2), .S(product[7]) );
  FA1D0 U4 ( .A(n15), .B(n13), .CI(n4), .CO(n3), .S(product[6]) );
  FA1D0 U5 ( .A(n16), .B(n20), .CI(n5), .CO(n4), .S(product[5]) );
  FA1D0 U6 ( .A(n21), .B(n24), .CI(n6), .CO(n5), .S(product[4]) );
  FA1D0 U7 ( .A(n25), .B(n27), .CI(n7), .CO(n6), .S(product[3]) );
  FA1D0 U8 ( .A(n8), .B(a[2]), .CI(n29), .CO(n7), .S(product[2]) );
  HA1D0 U9 ( .A(b[1]), .B(a[1]), .CO(n8), .S(product[1]) );
  FA1D0 U10 ( .A(b[3]), .B(a[3]), .CI(n11), .CO(n9), .S(n10) );
  CMPE42D1 U11 ( .A(b[2]), .B(a[2]), .C(n36), .CIX(n14), .D(n17), .CO(n12), 
        .COX(n11), .S(n13) );
  CMPE42D1 U12 ( .A(n41), .B(a[1]), .C(n22), .CIX(n89), .D(n18), .CO(n15), 
        .COX(n14), .S(n16) );
  HA1D0 U13 ( .A(b[1]), .B(n37), .CO(n17), .S(n18) );
  FA1D0 U16 ( .A(n47), .B(b[3]), .CI(n28), .CO(n24), .S(n25) );
  HA1D0 U17 ( .A(a[3]), .B(n43), .CO(n26), .S(n27) );
  HA1D0 U18 ( .A(n48), .B(b[2]), .CO(n28), .S(n29) );
  XNR3D1 U58 ( .A1(n42), .A2(n46), .A3(n102), .ZN(n21) );
  INVD1 U59 ( .I(n22), .ZN(n95) );
  ND2D1 U60 ( .A1(n46), .A2(n26), .ZN(n105) );
  IND2D1 U61 ( .A1(n46), .B1(n26), .ZN(n104) );
  NR2D1 U63 ( .A1(n46), .A2(n22), .ZN(n106) );
  AN2XD1 U64 ( .A1(n46), .A2(n95), .Z(n88) );
  INVD1 U68 ( .I(b[3]), .ZN(n90) );
  INVD1 U69 ( .I(a[1]), .ZN(n97) );
  INVD1 U70 ( .I(b[1]), .ZN(n99) );
  INVD1 U71 ( .I(a[3]), .ZN(n91) );
  INVD1 U72 ( .I(a[2]), .ZN(n96) );
  INVD1 U73 ( .I(b[2]), .ZN(n98) );
  OR2D1 U74 ( .A1(n46), .A2(n42), .Z(n89) );
  XNR2D1 U75 ( .A1(n2), .A2(n9), .ZN(product[8]) );
  MUX2ND0 U76 ( .I0(n104), .I1(n105), .S(n42), .ZN(n103) );
  CKXOR2D1 U77 ( .A1(n26), .A2(n95), .Z(n102) );
  NR2D0 U79 ( .A1(n99), .A2(n97), .ZN(n48) );
  NR2D0 U80 ( .A1(n98), .A2(n97), .ZN(n47) );
  NR2D0 U81 ( .A1(n90), .A2(n97), .ZN(n46) );
  NR2D0 U82 ( .A1(n99), .A2(n96), .ZN(n43) );
  NR2D0 U83 ( .A1(n98), .A2(n96), .ZN(n42) );
  NR2D0 U84 ( .A1(n90), .A2(n96), .ZN(n41) );
  NR2D0 U85 ( .A1(n99), .A2(n91), .ZN(n22) );
  NR2D0 U86 ( .A1(n98), .A2(n91), .ZN(n37) );
  NR2D0 U87 ( .A1(n90), .A2(n91), .ZN(n36) );
  OR2D0 U56 ( .A1(n9), .A2(n2), .Z(product[9]) );
  AO211D0 U57 ( .A1(n108), .A2(n26), .B(n103), .C(n107), .Z(n20) );
  MUX2D0 U62 ( .I0(n106), .I1(n88), .S(n42), .Z(n107) );
  CKND0 U65 ( .I(n22), .ZN(n108) );
endmodule


module oadm_fixed_divmul_root_opt_csd_3_16_10_16_8_e3_b6_95_7c_69_5a_4e_44 ( x, 
        y, divide_mode, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  input divide_mode;
  wire   x_residual_19_, y_residual_19_, N41, N42, N43, N44, N45, N46, N47,
         N48, N49, N50, N51, N52, N53, N54, N55, N56, N57, N65, N66, N67, N68,
         N69, N70, N71, N72, N73, N74, N75, N76, N77, N78, N79, N82, n80, n81,
         n820, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, sa_pos_sum_3_0_9_, sa_pos_sum_3_0_8_, sa_pos_sum_3_0_7_,
         sa_pos_sum_3_0_6_, sa_pos_sum_3_0_5_, sa_pos_sum_3_0_4_,
         sa_pos_sum_3_0_3_, sa_pos_sum_3_0_2_, sa_pos_sum_3_0_1_,
         sa_pos_sum_3_0_16_, sa_pos_sum_3_0_15_, sa_pos_sum_3_0_14_,
         sa_pos_sum_3_0_13_, sa_pos_sum_3_0_12_, sa_pos_sum_3_0_11_,
         sa_pos_sum_3_0_10_, sa_pos_sum_3_0_0_, sa_pos_sum_2_0_9_,
         sa_pos_sum_2_0_8_, sa_pos_sum_2_0_7_, sa_pos_sum_2_0_6_,
         sa_pos_sum_2_0_5_, sa_pos_sum_2_0_13_, sa_pos_sum_2_0_12_,
         sa_pos_sum_2_0_11_, sa_pos_sum_2_0_10_, sa_pos_sum_1_1_9_,
         sa_pos_sum_1_1_8_, sa_pos_sum_1_1_7_, sa_pos_sum_1_1_6_,
         sa_pos_sum_1_1_5_, sa_pos_sum_1_1_4_, sa_pos_sum_1_1_3_,
         sa_pos_sum_1_1_2_, sa_pos_sum_1_1_1_, sa_pos_sum_1_1_16_,
         sa_pos_sum_1_1_15_, sa_pos_sum_1_1_14_, sa_pos_sum_1_1_13_,
         sa_pos_sum_1_1_12_, sa_pos_sum_1_1_11_, sa_pos_sum_1_1_10_,
         sa_pos_sum_1_1_0_, sa_pos_sum_0_3_9_, sa_pos_sum_0_3_8_,
         sa_pos_sum_0_3_7_, sa_pos_sum_0_3_6_, sa_neg_sum_1_1_9_,
         sa_neg_sum_1_1_8_, sa_neg_sum_1_1_7_, sa_neg_sum_1_1_15_,
         sa_neg_sum_1_1_14_, sa_neg_sum_1_1_13_, sa_neg_sum_1_1_12_,
         sa_neg_sum_1_1_11_, sa_neg_sum_1_1_10_, sa_neg_sum_0_3_9_,
         sa_neg_sum_0_3_8_, sa_neg_sum_0_3_7_, sa_neg_sum_0_3_6_,
         sa_neg_sum_0_3_5_, sa_neg_sum_0_3_4_, sa_neg_sum_0_3_3_,
         sa_neg_sum_0_3_2_, sa_neg_sum_0_3_1_, sa_neg_sum_0_3_16_,
         sa_neg_sum_0_3_15_, sa_neg_sum_0_3_14_, sa_neg_sum_0_3_13_,
         sa_neg_sum_0_3_12_, sa_neg_sum_0_3_11_, sa_neg_sum_0_3_10_,
         sa_neg_sum_0_3_0_, N990, N980, N970, N1400, N1390, N1380, N1370,
         N1360, N1350, N1340, N1330, N1320, N1250, N124, N1230, N1220, N1150,
         N1140, N1130, N112, N111, N110, N109, N108, N107, N106, N105, N104,
         N103, N1020, N1010, N1000, add_77_carry_2_, add_77_carry_3_,
         add_3_root_sub_0_root_sub_187_SUM_5_,
         add_3_root_sub_0_root_sub_187_SUM_6_,
         add_3_root_sub_0_root_sub_187_SUM_7_,
         add_3_root_sub_0_root_sub_187_SUM_8_,
         add_3_root_sub_0_root_sub_187_SUM_9_,
         add_3_root_sub_0_root_sub_187_SUM_10_,
         add_3_root_sub_0_root_sub_187_SUM_11_,
         add_3_root_sub_0_root_sub_187_SUM_12_,
         add_3_root_sub_0_root_sub_187_SUM_13_,
         add_3_root_sub_0_root_sub_187_SUM_14_,
         add_3_root_sub_0_root_sub_187_SUM_15_,
         add_3_root_sub_0_root_sub_187_SUM_16_,
         add_3_root_sub_0_root_sub_187_B_3_,
         add_3_root_sub_0_root_sub_187_B_4_,
         add_3_root_sub_0_root_sub_187_B_5_,
         add_3_root_sub_0_root_sub_187_B_6_,
         add_3_root_sub_0_root_sub_187_B_7_,
         add_3_root_sub_0_root_sub_187_B_8_,
         add_3_root_sub_0_root_sub_187_B_9_,
         add_3_root_sub_0_root_sub_187_B_10_,
         add_3_root_sub_0_root_sub_187_B_11_,
         add_3_root_sub_0_root_sub_187_B_12_,
         add_4_root_sub_0_root_sub_187_B_6_,
         add_4_root_sub_0_root_sub_187_B_7_,
         add_4_root_sub_0_root_sub_187_B_8_,
         add_4_root_sub_0_root_sub_187_B_9_,
         add_4_root_sub_0_root_sub_187_B_10_,
         add_4_root_sub_0_root_sub_187_B_11_,
         add_4_root_sub_0_root_sub_187_B_12_,
         add_4_root_sub_0_root_sub_187_B_13_,
         add_4_root_sub_0_root_sub_187_B_14_,
         add_4_root_sub_0_root_sub_187_B_16_,
         sub_5_root_sub_0_root_sub_187_DIFF_2_,
         sub_5_root_sub_0_root_sub_187_DIFF_3_,
         sub_5_root_sub_0_root_sub_187_DIFF_4_,
         sub_5_root_sub_0_root_sub_187_DIFF_5_,
         sub_5_root_sub_0_root_sub_187_DIFF_6_,
         sub_5_root_sub_0_root_sub_187_DIFF_7_,
         sub_5_root_sub_0_root_sub_187_DIFF_8_,
         sub_5_root_sub_0_root_sub_187_DIFF_9_,
         sub_5_root_sub_0_root_sub_187_DIFF_10_,
         sub_5_root_sub_0_root_sub_187_DIFF_11_,
         sub_5_root_sub_0_root_sub_187_DIFF_12_,
         sub_5_root_sub_0_root_sub_187_B_1_,
         sub_5_root_sub_0_root_sub_187_B_3_,
         sub_5_root_sub_0_root_sub_187_B_4_,
         sub_5_root_sub_0_root_sub_187_B_5_,
         sub_5_root_sub_0_root_sub_187_B_6_,
         sub_5_root_sub_0_root_sub_187_B_7_,
         sub_5_root_sub_0_root_sub_187_B_8_,
         sub_5_root_sub_0_root_sub_187_B_9_,
         sub_5_root_sub_0_root_sub_187_A_2_,
         sub_5_root_sub_0_root_sub_187_A_3_,
         sub_5_root_sub_0_root_sub_187_A_4_,
         sub_5_root_sub_0_root_sub_187_A_5_,
         sub_5_root_sub_0_root_sub_187_A_6_,
         sub_5_root_sub_0_root_sub_187_A_7_,
         sub_5_root_sub_0_root_sub_187_A_8_,
         sub_5_root_sub_0_root_sub_187_A_9_,
         sub_5_root_sub_0_root_sub_187_A_10_,
         sub_5_root_sub_0_root_sub_187_A_11_, n1, n2, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n410, n420, n430, n440, n450, n460, n470, n480, n490,
         n500, n510, n520, n530, n540, n550, n560, n570, n58, n59, n61, n62,
         n63, n64, n650, n660, n670, n680, n690, n700, n710, n720, n730, n740,
         n750, n760, n770, n780, n790, n1030, n1040, n1050, n1060, n1070,
         n1080, n1090, n1100, n1110, n1240, n150, n153, n155, n157, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219;
  wire   [19:10] x_mantissa;
  wire   [19:10] y_mantissa;
  wire   [3:1] x_midpoint;
  wire   [3:1] y_midpoint;
  wire   [5:0] x_shared_residual;
  wire   [5:0] y_shared_residual;
  wire   [15:0] x_product;
  wire   [15:1] y_product;
  wire   [4:2] midpoint_sum;
  wire   [24:6] plane_value;
  wire   [8:1] sa_pos_t0;
  wire   [9:1] sa_pos_t1;
  wire   [10:3] sa_pos_t2;
  wire   [11:3] sa_pos_t3;
  wire   [12:4] sa_pos_t4;
  wire   [14:6] sa_pos_t6;
  wire   [15:8] sa_pos_t7;
  wire   [16:8] sa_pos_t8;
  wire   [9:2] sa_neg_t1;
  wire   [10:2] sa_neg_t2;
  wire   [16:0] sa_difference;
  wire   [22:5] normalized_fraction;
  wire   [2:0] exponent_adjust;
  wire   [24:8] add_0_root_add_0_root_add_80_3_carry;
  wire   [24:8] add_1_root_add_0_root_add_80_3_carry;
  wire   [16:7] add_3_root_sub_0_root_sub_187_carry;
  wire   [15:8] sub_6_root_sub_0_root_sub_187_carry;
  wire   [12:5] sub_10_root_sub_0_root_sub_187_carry;
  wire   [11:8] add_4_root_sub_0_root_sub_187_carry;
  wire   [12:3] sub_5_root_sub_0_root_sub_187_carry;
  wire   [16:10] add_7_root_sub_0_root_sub_187_carry;
  wire   [15:7] sub_8_root_sub_0_root_sub_187_carry;
  wire   [11:5] add_11_root_sub_0_root_sub_187_carry;
  wire   [10:4] add_12_root_sub_0_root_sub_187_carry;
  wire   [9:3] add_13_root_sub_0_root_sub_187_carry;
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
        SYNOPSYS_UNCONNECTED__26;

  MAOI22D1 U226 ( .A1(n189), .A2(n190), .B1(n118), .B2(n95), .ZN(n141) );
  fp32_normal_finite_wrapper fp_wrapper ( .x({x[31:10], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y({y[31:10], 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .divide_mode(divide_mode), 
        .fraction_x({x_midpoint, x_mantissa, SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9}), .fraction_y({y_midpoint, y_mantissa, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19}), 
        .result_fraction({normalized_fraction, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .exponent_adjust({exponent_adjust[2], exponent_adjust[2], 
        exponent_adjust[0]}), .result({result[31:5], SYNOPSYS_UNCONNECTED__20, 
        SYNOPSYS_UNCONNECTED__21, SYNOPSYS_UNCONNECTED__22, 
        SYNOPSYS_UNCONNECTED__23, SYNOPSYS_UNCONNECTED__24}) );
  oadm_fixed_divmul_root_opt_csd_3_16_10_16_8_e3_b6_95_7c_69_5a_4e_44_DW01_add_8 add_2_root_sub_0_root_sub_187 ( 
        .A({add_3_root_sub_0_root_sub_187_SUM_16_, 
        add_3_root_sub_0_root_sub_187_SUM_15_, 
        add_3_root_sub_0_root_sub_187_SUM_14_, 
        add_3_root_sub_0_root_sub_187_SUM_13_, 
        add_3_root_sub_0_root_sub_187_SUM_12_, 
        add_3_root_sub_0_root_sub_187_SUM_11_, 
        add_3_root_sub_0_root_sub_187_SUM_10_, 
        add_3_root_sub_0_root_sub_187_SUM_9_, 
        add_3_root_sub_0_root_sub_187_SUM_8_, 
        add_3_root_sub_0_root_sub_187_SUM_7_, 
        add_3_root_sub_0_root_sub_187_SUM_6_, 
        add_3_root_sub_0_root_sub_187_SUM_5_, 
        add_3_root_sub_0_root_sub_187_B_4_, add_3_root_sub_0_root_sub_187_B_3_, 
        n202, n202, n202}), .B({n34, n34, n34, n34, 
        sub_5_root_sub_0_root_sub_187_DIFF_12_, 
        sub_5_root_sub_0_root_sub_187_DIFF_11_, 
        sub_5_root_sub_0_root_sub_187_DIFF_10_, 
        sub_5_root_sub_0_root_sub_187_DIFF_9_, 
        sub_5_root_sub_0_root_sub_187_DIFF_8_, 
        sub_5_root_sub_0_root_sub_187_DIFF_7_, 
        sub_5_root_sub_0_root_sub_187_DIFF_6_, 
        sub_5_root_sub_0_root_sub_187_DIFF_5_, 
        sub_5_root_sub_0_root_sub_187_DIFF_4_, 
        sub_5_root_sub_0_root_sub_187_DIFF_3_, 
        sub_5_root_sub_0_root_sub_187_DIFF_2_, 
        sub_5_root_sub_0_root_sub_187_B_1_, n202}), .CI(n202), .SUM({n203, 
        n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, 
        n216, n217, n218, SYNOPSYS_UNCONNECTED__25}) );
  oadm_fixed_divmul_root_opt_csd_3_16_10_16_8_e3_b6_95_7c_69_5a_4e_44_DW01_add_7 add_1_root_sub_0_root_sub_187 ( 
        .A({sa_pos_sum_1_1_16_, sa_pos_sum_1_1_15_, sa_pos_sum_1_1_14_, 
        sa_pos_sum_1_1_13_, sa_pos_sum_1_1_12_, sa_pos_sum_1_1_11_, 
        sa_pos_sum_1_1_10_, sa_pos_sum_1_1_9_, sa_pos_sum_1_1_8_, 
        sa_pos_sum_1_1_7_, sa_pos_sum_1_1_6_, sa_pos_sum_1_1_5_, 
        sa_pos_sum_1_1_4_, sa_pos_sum_1_1_3_, sa_pos_sum_1_1_2_, 
        sa_pos_sum_1_1_1_, sa_pos_sum_1_1_0_}), .B({sa_neg_sum_0_3_16_, 
        sa_neg_sum_0_3_15_, sa_neg_sum_0_3_14_, sa_neg_sum_0_3_13_, 
        sa_neg_sum_0_3_12_, sa_neg_sum_0_3_11_, sa_neg_sum_0_3_10_, 
        sa_neg_sum_0_3_9_, sa_neg_sum_0_3_8_, sa_neg_sum_0_3_7_, 
        sa_neg_sum_0_3_6_, sa_neg_sum_0_3_5_, sa_neg_sum_0_3_4_, 
        sa_neg_sum_0_3_3_, sa_neg_sum_0_3_2_, sa_neg_sum_0_3_1_, 
        sa_neg_sum_0_3_0_}), .CI(n202), .SUM({sa_pos_sum_3_0_16_, 
        sa_pos_sum_3_0_15_, sa_pos_sum_3_0_14_, sa_pos_sum_3_0_13_, 
        sa_pos_sum_3_0_12_, sa_pos_sum_3_0_11_, sa_pos_sum_3_0_10_, 
        sa_pos_sum_3_0_9_, sa_pos_sum_3_0_8_, sa_pos_sum_3_0_7_, 
        sa_pos_sum_3_0_6_, sa_pos_sum_3_0_5_, sa_pos_sum_3_0_4_, 
        sa_pos_sum_3_0_3_, sa_pos_sum_3_0_2_, sa_pos_sum_3_0_1_, 
        sa_pos_sum_3_0_0_}) );
  oadm_fixed_divmul_root_opt_csd_3_16_10_16_8_e3_b6_95_7c_69_5a_4e_44_DW01_add_6 add_0_root_sub_0_root_sub_187 ( 
        .A({n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, 
        n214, n215, n216, n217, n218, n202}), .B({sa_pos_sum_3_0_16_, 
        sa_pos_sum_3_0_15_, sa_pos_sum_3_0_14_, sa_pos_sum_3_0_13_, 
        sa_pos_sum_3_0_12_, sa_pos_sum_3_0_11_, sa_pos_sum_3_0_10_, 
        sa_pos_sum_3_0_9_, sa_pos_sum_3_0_8_, sa_pos_sum_3_0_7_, 
        sa_pos_sum_3_0_6_, sa_pos_sum_3_0_5_, sa_pos_sum_3_0_4_, 
        sa_pos_sum_3_0_3_, sa_pos_sum_3_0_2_, sa_pos_sum_3_0_1_, 
        sa_pos_sum_3_0_0_}), .CI(n202), .SUM(sa_difference) );
  oadm_fixed_divmul_root_opt_csd_3_16_10_16_8_e3_b6_95_7c_69_5a_4e_44_DW_mult_tc_1 mult_61 ( 
        .a({x_residual_19_, x_mantissa[18:16], x_shared_residual}), .b({n202, 
        n1, y_midpoint, n1}), .product(x_product) );
  oadm_fixed_divmul_root_opt_csd_3_16_10_16_8_e3_b6_95_7c_69_5a_4e_44_DW_mult_tc_0 mult_63 ( 
        .a({y_residual_19_, y_mantissa[18:16], y_shared_residual}), .b({n202, 
        n1, x_midpoint, n1}), .product({y_product, N41}) );
  oadm_fixed_divmul_root_opt_csd_3_16_10_16_8_e3_b6_95_7c_69_5a_4e_44_DW_mult_uns_0 mult_74 ( 
        .a({n1, x_midpoint, n1}), .b({n1, y_midpoint, n1}), .product({N1400, 
        N1390, N1380, N1370, N1360, N1350, N1340, N1330, N1320, 
        SYNOPSYS_UNCONNECTED__26}) );
  TIEH U3 ( .Z(n1) );
  FA1D0 U6 ( .A(sub_5_root_sub_0_root_sub_187_A_10_), .B(n570), .CI(
        sub_5_root_sub_0_root_sub_187_carry[10]), .CO(
        sub_5_root_sub_0_root_sub_187_carry[11]), .S(
        sub_5_root_sub_0_root_sub_187_DIFF_10_) );
  AO22D0 U12 ( .A1(n155), .A2(y_product[15]), .B1(N57), .B2(divide_mode), .Z(
        N82) );
  OR2XD1 U13 ( .A1(n192), .A2(n81), .Z(n2) );
  NR2D1 U14 ( .A1(sub_10_root_sub_0_root_sub_187_carry[12]), .A2(sa_pos_t4[12]), .ZN(n3) );
  AN2XD1 U15 ( .A1(sa_pos_sum_0_3_6_), .A2(add_4_root_sub_0_root_sub_187_B_6_), 
        .Z(n4) );
  AN2XD1 U16 ( .A1(sa_pos_t0[1]), .A2(sa_pos_t1[1]), .Z(n5) );
  AN2XD1 U17 ( .A1(sa_pos_t1[9]), .A2(add_13_root_sub_0_root_sub_187_carry[9]), 
        .Z(n6) );
  XNR2D1 U18 ( .A1(sa_neg_t2[2]), .A2(sa_neg_t1[2]), .ZN(n7) );
  OR2XD1 U19 ( .A1(n191), .A2(n81), .Z(n8) );
  AN2XD1 U20 ( .A1(sa_neg_t1[2]), .A2(sa_neg_t2[2]), .Z(n9) );
  OR2XD1 U21 ( .A1(n93), .A2(n195), .Z(n10) );
  OR2XD1 U22 ( .A1(n93), .A2(n196), .Z(n11) );
  OR2XD1 U23 ( .A1(n93), .A2(n197), .Z(n12) );
  OR2XD1 U24 ( .A1(n93), .A2(n198), .Z(n13) );
  AN2XD1 U25 ( .A1(n660), .A2(n1050), .Z(n14) );
  OR2XD1 U26 ( .A1(n93), .A2(n194), .Z(n15) );
  OR2XD1 U27 ( .A1(n93), .A2(n193), .Z(n16) );
  OR2XD1 U28 ( .A1(n93), .A2(n192), .Z(n17) );
  OR2XD1 U29 ( .A1(n93), .A2(n191), .Z(n18) );
  AN2XD1 U30 ( .A1(sa_pos_t2[3]), .A2(sa_pos_t3[3]), .Z(n19) );
  AN2XD1 U31 ( .A1(add_3_root_sub_0_root_sub_187_B_5_), .A2(sa_pos_sum_2_0_5_), 
        .Z(n20) );
  AN2XD1 U32 ( .A1(x_product[0]), .A2(N1220), .Z(n21) );
  AN2XD1 U33 ( .A1(N970), .A2(N41), .Z(n22) );
  OR2XD1 U34 ( .A1(n196), .A2(n820), .Z(n23) );
  OR2XD1 U35 ( .A1(n197), .A2(n820), .Z(n24) );
  OR2XD1 U36 ( .A1(n198), .A2(n820), .Z(n25) );
  OR2XD1 U37 ( .A1(n195), .A2(n820), .Z(n26) );
  ND2D1 U38 ( .A1(n500), .A2(n720), .ZN(n27) );
  OR2XD1 U39 ( .A1(n194), .A2(n820), .Z(n28) );
  OR2XD1 U40 ( .A1(n193), .A2(n820), .Z(n29) );
  OR2XD1 U41 ( .A1(n192), .A2(n820), .Z(n30) );
  OR2XD1 U42 ( .A1(n191), .A2(n820), .Z(n31) );
  AN2XD1 U43 ( .A1(sa_pos_t7[8]), .A2(sa_pos_t8[8]), .Z(n32) );
  AOI22D1 U44 ( .A1(n102), .A2(plane_value[6]), .B1(n187), .B2(plane_value[7]), 
        .ZN(n33) );
  NR2D1 U45 ( .A1(sub_5_root_sub_0_root_sub_187_carry[12]), .A2(n470), .ZN(n34) );
  ND2D1 U46 ( .A1(n118), .A2(n116), .ZN(exponent_adjust[2]) );
  INVD1 U47 ( .I(plane_value[24]), .ZN(n191) );
  INVD1 U48 ( .I(plane_value[23]), .ZN(n192) );
  INVD1 U49 ( .I(plane_value[22]), .ZN(n193) );
  AN2XD1 U50 ( .A1(n36), .A2(n184), .Z(n35) );
  AN2XD1 U52 ( .A1(n37), .A2(n183), .Z(n36) );
  FA1D0 U53 ( .A(sub_5_root_sub_0_root_sub_187_A_11_), .B(n153), .CI(
        sub_5_root_sub_0_root_sub_187_carry[11]), .CO(
        sub_5_root_sub_0_root_sub_187_carry[12]), .S(
        sub_5_root_sub_0_root_sub_187_DIFF_11_) );
  AN2XD1 U54 ( .A1(n38), .A2(n182), .Z(n37) );
  AN2XD1 U55 ( .A1(n39), .A2(n181), .Z(n38) );
  AN2XD1 U56 ( .A1(n410), .A2(n180), .Z(n39) );
  AN2XD1 U58 ( .A1(n420), .A2(n179), .Z(n410) );
  AN2XD1 U59 ( .A1(n430), .A2(n178), .Z(n420) );
  AN2XD1 U60 ( .A1(n440), .A2(n177), .Z(n430) );
  AN2XD1 U61 ( .A1(n450), .A2(n176), .Z(n440) );
  FA1D0 U62 ( .A(n27), .B(n3), .CI(add_3_root_sub_0_root_sub_187_carry[14]), 
        .CO(add_3_root_sub_0_root_sub_187_carry[15]), .S(
        add_3_root_sub_0_root_sub_187_SUM_14_) );
  FA1D0 U63 ( .A(sa_pos_sum_2_0_13_), .B(n3), .CI(
        add_3_root_sub_0_root_sub_187_carry[13]), .CO(
        add_3_root_sub_0_root_sub_187_carry[14]), .S(
        add_3_root_sub_0_root_sub_187_SUM_13_) );
  FA1D0 U64 ( .A(n27), .B(n3), .CI(add_3_root_sub_0_root_sub_187_carry[15]), 
        .CO(add_3_root_sub_0_root_sub_187_carry[16]), .S(
        add_3_root_sub_0_root_sub_187_SUM_15_) );
  AN2XD1 U65 ( .A1(n460), .A2(n175), .Z(n450) );
  AN2XD1 U67 ( .A1(n63), .A2(n174), .Z(n460) );
  XOR3D1 U68 ( .A1(n27), .A2(n3), .A3(add_3_root_sub_0_root_sub_187_carry[16]), 
        .Z(add_3_root_sub_0_root_sub_187_SUM_16_) );
  AN2XD1 U72 ( .A1(add_11_root_sub_0_root_sub_187_carry[11]), .A2(
        sa_pos_t3[11]), .Z(n470) );
  AN2XD1 U75 ( .A1(n520), .A2(n740), .Z(n480) );
  AN2XD1 U76 ( .A1(n480), .A2(n750), .Z(n490) );
  AN2XD1 U77 ( .A1(n510), .A2(n730), .Z(n500) );
  AN2XD1 U78 ( .A1(n490), .A2(n760), .Z(n510) );
  AN2XD1 U79 ( .A1(n530), .A2(n770), .Z(n520) );
  AN2XD1 U80 ( .A1(n540), .A2(n780), .Z(n530) );
  AN2XD1 U81 ( .A1(n169), .A2(n790), .Z(n540) );
  INVD1 U82 ( .I(sa_pos_sum_2_0_5_), .ZN(n169) );
  INVD1 U83 ( .I(n118), .ZN(n188) );
  INVD1 U84 ( .I(n102), .ZN(n186) );
  INVD1 U85 ( .I(n116), .ZN(n189) );
  XOR3D1 U86 ( .A1(N1150), .A2(N82), .A3(
        add_0_root_add_0_root_add_80_3_carry[24]), .Z(plane_value[24]) );
  XOR3D1 U87 ( .A1(N1400), .A2(x_product[15]), .A3(
        add_1_root_add_0_root_add_80_3_carry[24]), .Z(N1150) );
  IND3D1 U88 ( .A1(n113), .B1(n114), .B2(n96), .ZN(n118) );
  FA1D0 U89 ( .A(n6), .B(add_4_root_sub_0_root_sub_187_B_10_), .CI(
        add_4_root_sub_0_root_sub_187_carry[10]), .CO(
        add_4_root_sub_0_root_sub_187_carry[11]), .S(sa_neg_sum_0_3_10_) );
  FA1D0 U90 ( .A(N1130), .B(N82), .CI(add_0_root_add_0_root_add_80_3_carry[22]), .CO(add_0_root_add_0_root_add_80_3_carry[23]), .S(plane_value[22]) );
  FA1D0 U91 ( .A(N1140), .B(N82), .CI(add_0_root_add_0_root_add_80_3_carry[23]), .CO(add_0_root_add_0_root_add_80_3_carry[24]), .S(plane_value[23]) );
  FA1D0 U92 ( .A(sa_pos_sum_0_3_9_), .B(add_4_root_sub_0_root_sub_187_B_9_), 
        .CI(add_4_root_sub_0_root_sub_187_carry[9]), .CO(
        add_4_root_sub_0_root_sub_187_carry[10]), .S(sa_neg_sum_0_3_9_) );
  INVD1 U93 ( .I(y_product[14]), .ZN(n184) );
  FA1D0 U94 ( .A(N1370), .B(x_product[15]), .CI(
        add_1_root_add_0_root_add_80_3_carry[21]), .CO(
        add_1_root_add_0_root_add_80_3_carry[22]), .S(N112) );
  FA1D0 U95 ( .A(N1390), .B(x_product[15]), .CI(
        add_1_root_add_0_root_add_80_3_carry[23]), .CO(
        add_1_root_add_0_root_add_80_3_carry[24]), .S(N1140) );
  FA1D0 U96 ( .A(N1380), .B(x_product[15]), .CI(
        add_1_root_add_0_root_add_80_3_carry[22]), .CO(
        add_1_root_add_0_root_add_80_3_carry[23]), .S(N1130) );
  FA1D0 U97 ( .A(sa_pos_sum_0_3_8_), .B(add_4_root_sub_0_root_sub_187_B_8_), 
        .CI(add_4_root_sub_0_root_sub_187_carry[8]), .CO(
        add_4_root_sub_0_root_sub_187_carry[9]), .S(sa_neg_sum_0_3_8_) );
  INVD1 U98 ( .I(y_product[13]), .ZN(n183) );
  FA1D0 U99 ( .A(sa_pos_sum_0_3_7_), .B(add_4_root_sub_0_root_sub_187_B_7_), 
        .CI(n4), .CO(add_4_root_sub_0_root_sub_187_carry[8]), .S(
        sa_neg_sum_0_3_7_) );
  INVD1 U100 ( .I(plane_value[21]), .ZN(n194) );
  AN2XD1 U101 ( .A1(add_4_root_sub_0_root_sub_187_B_11_), .A2(
        add_4_root_sub_0_root_sub_187_carry[11]), .Z(n550) );
  ND3D1 U102 ( .A1(n114), .A2(n113), .A3(n96), .ZN(n116) );
  INVD1 U103 ( .I(plane_value[20]), .ZN(n195) );
  INVD1 U104 ( .I(y_product[12]), .ZN(n182) );
  FA1D0 U105 ( .A(N1360), .B(x_product[14]), .CI(
        add_1_root_add_0_root_add_80_3_carry[20]), .CO(
        add_1_root_add_0_root_add_80_3_carry[21]), .S(N111) );
  AN2XD1 U106 ( .A1(add_4_root_sub_0_root_sub_187_B_12_), .A2(n550), .Z(n560)
         );
  INVD1 U107 ( .I(plane_value[19]), .ZN(n196) );
  INVD1 U108 ( .I(y_product[11]), .ZN(n181) );
  FA1D0 U109 ( .A(N1350), .B(x_product[13]), .CI(
        add_1_root_add_0_root_add_80_3_carry[19]), .CO(
        add_1_root_add_0_root_add_80_3_carry[20]), .S(N110) );
  INVD1 U110 ( .I(plane_value[18]), .ZN(n197) );
  XNR2D1 U111 ( .A1(add_12_root_sub_0_root_sub_187_carry[10]), .A2(
        sa_neg_t2[10]), .ZN(n570) );
  AN2XD1 U112 ( .A1(add_4_root_sub_0_root_sub_187_B_13_), .A2(n560), .Z(n58)
         );
  INVD1 U113 ( .I(y_product[10]), .ZN(n180) );
  FA1D0 U114 ( .A(N1340), .B(x_product[12]), .CI(
        add_1_root_add_0_root_add_80_3_carry[18]), .CO(
        add_1_root_add_0_root_add_80_3_carry[19]), .S(N109) );
  FA1D0 U115 ( .A(sub_5_root_sub_0_root_sub_187_A_7_), .B(n163), .CI(
        sub_5_root_sub_0_root_sub_187_carry[7]), .CO(
        sub_5_root_sub_0_root_sub_187_carry[8]), .S(
        sub_5_root_sub_0_root_sub_187_DIFF_7_) );
  INVD1 U116 ( .I(sub_5_root_sub_0_root_sub_187_B_7_), .ZN(n163) );
  FA1D0 U117 ( .A(sub_5_root_sub_0_root_sub_187_A_8_), .B(n164), .CI(
        sub_5_root_sub_0_root_sub_187_carry[8]), .CO(
        sub_5_root_sub_0_root_sub_187_carry[9]), .S(
        sub_5_root_sub_0_root_sub_187_DIFF_8_) );
  INVD1 U118 ( .I(sub_5_root_sub_0_root_sub_187_B_8_), .ZN(n164) );
  FA1D0 U119 ( .A(sub_5_root_sub_0_root_sub_187_A_9_), .B(n165), .CI(
        sub_5_root_sub_0_root_sub_187_carry[9]), .CO(
        sub_5_root_sub_0_root_sub_187_carry[10]), .S(
        sub_5_root_sub_0_root_sub_187_DIFF_9_) );
  INVD1 U120 ( .I(sub_5_root_sub_0_root_sub_187_B_9_), .ZN(n165) );
  AN2XD1 U121 ( .A1(add_4_root_sub_0_root_sub_187_B_14_), .A2(n58), .Z(n59) );
  FA1D0 U122 ( .A(sub_5_root_sub_0_root_sub_187_A_6_), .B(n162), .CI(
        sub_5_root_sub_0_root_sub_187_carry[6]), .CO(
        sub_5_root_sub_0_root_sub_187_carry[7]), .S(
        sub_5_root_sub_0_root_sub_187_DIFF_6_) );
  INVD1 U123 ( .I(sub_5_root_sub_0_root_sub_187_B_6_), .ZN(n162) );
  INVD1 U124 ( .I(y_product[9]), .ZN(n179) );
  FA1D0 U125 ( .A(sub_5_root_sub_0_root_sub_187_A_5_), .B(n161), .CI(
        sub_5_root_sub_0_root_sub_187_carry[5]), .CO(
        sub_5_root_sub_0_root_sub_187_carry[6]), .S(
        sub_5_root_sub_0_root_sub_187_DIFF_5_) );
  INVD1 U126 ( .I(sub_5_root_sub_0_root_sub_187_B_5_), .ZN(n161) );
  INVD1 U127 ( .I(y_product[8]), .ZN(n178) );
  ND2D1 U128 ( .A1(n96), .A2(n118), .ZN(exponent_adjust[0]) );
  FA1D0 U129 ( .A(sub_5_root_sub_0_root_sub_187_A_4_), .B(n160), .CI(
        sub_5_root_sub_0_root_sub_187_carry[4]), .CO(
        sub_5_root_sub_0_root_sub_187_carry[5]), .S(
        sub_5_root_sub_0_root_sub_187_DIFF_4_) );
  INVD1 U130 ( .I(sub_5_root_sub_0_root_sub_187_B_4_), .ZN(n160) );
  INVD1 U131 ( .I(y_product[7]), .ZN(n177) );
  FA1D0 U132 ( .A(sa_pos_t2[10]), .B(sa_pos_t3[10]), .CI(
        add_11_root_sub_0_root_sub_187_carry[10]), .CO(
        add_11_root_sub_0_root_sub_187_carry[11]), .S(
        sub_5_root_sub_0_root_sub_187_A_10_) );
  NR2D1 U133 ( .A1(n192), .A2(n90), .ZN(sa_pos_t3[10]) );
  NR2D1 U134 ( .A1(n91), .A2(n191), .ZN(sa_pos_t2[10]) );
  INVD1 U135 ( .I(y_product[6]), .ZN(n176) );
  FA1D0 U136 ( .A(sub_5_root_sub_0_root_sub_187_A_3_), .B(n159), .CI(
        sub_5_root_sub_0_root_sub_187_carry[3]), .CO(
        sub_5_root_sub_0_root_sub_187_carry[4]), .S(
        sub_5_root_sub_0_root_sub_187_DIFF_3_) );
  INVD1 U137 ( .I(sub_5_root_sub_0_root_sub_187_B_3_), .ZN(n159) );
  FA1D0 U138 ( .A(sa_pos_t2[9]), .B(sa_pos_t3[9]), .CI(
        add_11_root_sub_0_root_sub_187_carry[9]), .CO(
        add_11_root_sub_0_root_sub_187_carry[10]), .S(
        sub_5_root_sub_0_root_sub_187_A_9_) );
  NR2D1 U139 ( .A1(n193), .A2(n90), .ZN(sa_pos_t3[9]) );
  NR2D1 U140 ( .A1(n91), .A2(n192), .ZN(sa_pos_t2[9]) );
  FA1D0 U141 ( .A(sa_pos_t2[8]), .B(sa_pos_t3[8]), .CI(
        add_11_root_sub_0_root_sub_187_carry[8]), .CO(
        add_11_root_sub_0_root_sub_187_carry[9]), .S(
        sub_5_root_sub_0_root_sub_187_A_8_) );
  NR2D1 U142 ( .A1(n194), .A2(n90), .ZN(sa_pos_t3[8]) );
  NR2D1 U143 ( .A1(n91), .A2(n193), .ZN(sa_pos_t2[8]) );
  FA1D0 U144 ( .A(sa_pos_t2[7]), .B(sa_pos_t3[7]), .CI(
        add_11_root_sub_0_root_sub_187_carry[7]), .CO(
        add_11_root_sub_0_root_sub_187_carry[8]), .S(
        sub_5_root_sub_0_root_sub_187_A_7_) );
  NR2D1 U145 ( .A1(n195), .A2(n90), .ZN(sa_pos_t3[7]) );
  NR2D1 U146 ( .A1(n91), .A2(n194), .ZN(sa_pos_t2[7]) );
  INVD1 U147 ( .I(y_product[5]), .ZN(n175) );
  FA1D0 U148 ( .A(sa_pos_t2[6]), .B(sa_pos_t3[6]), .CI(
        add_11_root_sub_0_root_sub_187_carry[6]), .CO(
        add_11_root_sub_0_root_sub_187_carry[7]), .S(
        sub_5_root_sub_0_root_sub_187_A_6_) );
  NR2D1 U149 ( .A1(n196), .A2(n90), .ZN(sa_pos_t3[6]) );
  NR2D1 U150 ( .A1(n91), .A2(n195), .ZN(sa_pos_t2[6]) );
  INVD1 U151 ( .I(plane_value[17]), .ZN(n198) );
  FA1D0 U152 ( .A(sa_neg_sum_1_1_7_), .B(n2), .CI(n14), .CO(
        sub_6_root_sub_0_root_sub_187_carry[8]), .S(sa_pos_sum_1_1_7_) );
  NR2D1 U153 ( .A1(n83), .A2(n199), .ZN(sa_neg_sum_1_1_7_) );
  INVD1 U154 ( .I(y_product[4]), .ZN(n174) );
  FA1D0 U155 ( .A(sa_pos_t2[5]), .B(sa_pos_t3[5]), .CI(
        add_11_root_sub_0_root_sub_187_carry[5]), .CO(
        add_11_root_sub_0_root_sub_187_carry[6]), .S(
        sub_5_root_sub_0_root_sub_187_A_5_) );
  NR2D1 U156 ( .A1(n197), .A2(n90), .ZN(sa_pos_t3[5]) );
  NR2D1 U157 ( .A1(n91), .A2(n196), .ZN(sa_pos_t2[5]) );
  ND2D1 U158 ( .A1(add_12_root_sub_0_root_sub_187_carry[10]), .A2(
        sa_neg_t2[10]), .ZN(n153) );
  NR2D1 U159 ( .A1(n86), .A2(n198), .ZN(sa_pos_t0[1]) );
  FA1D0 U161 ( .A(sa_pos_t2[4]), .B(sa_pos_t3[4]), .CI(n19), .CO(
        add_11_root_sub_0_root_sub_187_carry[5]), .S(
        sub_5_root_sub_0_root_sub_187_A_4_) );
  NR2D1 U162 ( .A1(n198), .A2(n90), .ZN(sa_pos_t3[4]) );
  NR2D1 U163 ( .A1(n91), .A2(n197), .ZN(sa_pos_t2[4]) );
  FA1D0 U164 ( .A(sub_5_root_sub_0_root_sub_187_A_2_), .B(n7), .CI(n166), .CO(
        sub_5_root_sub_0_root_sub_187_carry[3]), .S(
        sub_5_root_sub_0_root_sub_187_DIFF_2_) );
  INVD1 U165 ( .I(sub_5_root_sub_0_root_sub_187_B_1_), .ZN(n166) );
  NR2D1 U166 ( .A1(n91), .A2(n199), .ZN(sub_5_root_sub_0_root_sub_187_A_2_) );
  FA1D0 U167 ( .A(sa_pos_sum_2_0_12_), .B(add_3_root_sub_0_root_sub_187_B_12_), 
        .CI(add_3_root_sub_0_root_sub_187_carry[12]), .CO(
        add_3_root_sub_0_root_sub_187_carry[13]), .S(
        add_3_root_sub_0_root_sub_187_SUM_12_) );
  FA1D0 U168 ( .A(sa_pos_sum_2_0_11_), .B(add_3_root_sub_0_root_sub_187_B_11_), 
        .CI(add_3_root_sub_0_root_sub_187_carry[11]), .CO(
        add_3_root_sub_0_root_sub_187_carry[12]), .S(
        add_3_root_sub_0_root_sub_187_SUM_11_) );
  FA1D0 U170 ( .A(sa_pos_sum_2_0_9_), .B(add_3_root_sub_0_root_sub_187_B_9_), 
        .CI(add_3_root_sub_0_root_sub_187_carry[9]), .CO(
        add_3_root_sub_0_root_sub_187_carry[10]), .S(
        add_3_root_sub_0_root_sub_187_SUM_9_) );
  FA1D0 U171 ( .A(sa_pos_sum_2_0_10_), .B(add_3_root_sub_0_root_sub_187_B_10_), 
        .CI(add_3_root_sub_0_root_sub_187_carry[10]), .CO(
        add_3_root_sub_0_root_sub_187_carry[11]), .S(
        add_3_root_sub_0_root_sub_187_SUM_10_) );
  FA1D0 U172 ( .A(sa_pos_sum_2_0_8_), .B(add_3_root_sub_0_root_sub_187_B_8_), 
        .CI(add_3_root_sub_0_root_sub_187_carry[8]), .CO(
        add_3_root_sub_0_root_sub_187_carry[9]), .S(
        add_3_root_sub_0_root_sub_187_SUM_8_) );
  AN2XD1 U173 ( .A1(n64), .A2(x_product[7]), .Z(n61) );
  AN2XD1 U174 ( .A1(add_1_root_add_0_root_add_80_3_carry[11]), .A2(
        x_product[5]), .Z(n62) );
  FA1D0 U175 ( .A(sa_pos_sum_2_0_7_), .B(add_3_root_sub_0_root_sub_187_B_7_), 
        .CI(add_3_root_sub_0_root_sub_187_carry[7]), .CO(
        add_3_root_sub_0_root_sub_187_carry[8]), .S(
        add_3_root_sub_0_root_sub_187_SUM_7_) );
  AN2XD1 U176 ( .A1(n700), .A2(n173), .Z(n63) );
  AN2XD1 U177 ( .A1(n62), .A2(x_product[6]), .Z(n64) );
  FA1D0 U178 ( .A(sa_pos_sum_2_0_6_), .B(add_3_root_sub_0_root_sub_187_B_6_), 
        .CI(n20), .CO(add_3_root_sub_0_root_sub_187_carry[7]), .S(
        add_3_root_sub_0_root_sub_187_SUM_6_) );
  NR2D1 U179 ( .A1(n191), .A2(n90), .ZN(sa_pos_t3[11]) );
  AN2XD1 U180 ( .A1(n670), .A2(n1030), .Z(n650) );
  AN2XD1 U181 ( .A1(n650), .A2(n1040), .Z(n660) );
  NR2D1 U182 ( .A1(n91), .A2(n198), .ZN(sa_pos_t2[3]) );
  INVD1 U183 ( .I(plane_value[16]), .ZN(n199) );
  AN2XD1 U184 ( .A1(n680), .A2(n1060), .Z(n670) );
  AN2XD1 U185 ( .A1(n690), .A2(n1070), .Z(n680) );
  AN2XD1 U186 ( .A1(n168), .A2(n1080), .Z(n690) );
  INVD1 U187 ( .I(sa_pos_sum_1_1_0_), .ZN(n168) );
  AN2XD1 U188 ( .A1(n710), .A2(n172), .Z(n700) );
  NR2D1 U190 ( .A1(n199), .A2(n90), .ZN(sa_pos_t3[3]) );
  OR2D1 U191 ( .A1(n92), .A2(n191), .Z(n720) );
  NR2D1 U192 ( .A1(n93), .A2(n199), .ZN(add_3_root_sub_0_root_sub_187_B_3_) );
  OR2D1 U193 ( .A1(n92), .A2(n192), .Z(n730) );
  OR2D1 U194 ( .A1(n92), .A2(n195), .Z(n740) );
  OR2D1 U195 ( .A1(n92), .A2(n194), .Z(n750) );
  OR2D1 U196 ( .A1(n92), .A2(n193), .Z(n760) );
  OR2D1 U197 ( .A1(n92), .A2(n196), .Z(n770) );
  OR2D1 U198 ( .A1(n92), .A2(n197), .Z(n780) );
  OR2D1 U199 ( .A1(n92), .A2(n198), .Z(n790) );
  NR2D1 U200 ( .A1(n86), .A2(n199), .ZN(sa_neg_sum_0_3_0_) );
  NR2D1 U202 ( .A1(n92), .A2(n199), .ZN(sa_pos_sum_2_0_5_) );
  FA1D0 U203 ( .A(sa_pos_t7[13]), .B(sa_pos_t8[13]), .CI(
        add_7_root_sub_0_root_sub_187_carry[13]), .CO(
        add_7_root_sub_0_root_sub_187_carry[14]), .S(sa_neg_sum_1_1_13_) );
  NR2D1 U204 ( .A1(n80), .A2(n194), .ZN(sa_pos_t8[13]) );
  NR2D1 U205 ( .A1(n83), .A2(n193), .ZN(sa_pos_t7[13]) );
  FA1D0 U206 ( .A(sa_pos_t7[15]), .B(sa_pos_t8[15]), .CI(
        add_7_root_sub_0_root_sub_187_carry[15]), .CO(
        add_7_root_sub_0_root_sub_187_carry[16]), .S(sa_neg_sum_1_1_15_) );
  NR2D1 U207 ( .A1(n80), .A2(n192), .ZN(sa_pos_t8[15]) );
  NR2D1 U208 ( .A1(n83), .A2(n191), .ZN(sa_pos_t7[15]) );
  FA1D0 U209 ( .A(sa_pos_t7[12]), .B(sa_pos_t8[12]), .CI(
        add_7_root_sub_0_root_sub_187_carry[12]), .CO(
        add_7_root_sub_0_root_sub_187_carry[13]), .S(sa_neg_sum_1_1_12_) );
  NR2D1 U210 ( .A1(n80), .A2(n195), .ZN(sa_pos_t8[12]) );
  NR2D1 U211 ( .A1(n83), .A2(n194), .ZN(sa_pos_t7[12]) );
  FA1D0 U212 ( .A(sa_pos_t7[14]), .B(sa_pos_t8[14]), .CI(
        add_7_root_sub_0_root_sub_187_carry[14]), .CO(
        add_7_root_sub_0_root_sub_187_carry[15]), .S(sa_neg_sum_1_1_14_) );
  NR2D1 U213 ( .A1(n80), .A2(n193), .ZN(sa_pos_t8[14]) );
  NR2D1 U214 ( .A1(n83), .A2(n192), .ZN(sa_pos_t7[14]) );
  FA1D0 U215 ( .A(sa_pos_t7[11]), .B(sa_pos_t8[11]), .CI(
        add_7_root_sub_0_root_sub_187_carry[11]), .CO(
        add_7_root_sub_0_root_sub_187_carry[12]), .S(sa_neg_sum_1_1_11_) );
  NR2D1 U216 ( .A1(n80), .A2(n196), .ZN(sa_pos_t8[11]) );
  NR2D1 U217 ( .A1(n83), .A2(n195), .ZN(sa_pos_t7[11]) );
  OAI222D0 U218 ( .A1(n99), .A2(n186), .B1(divide_mode), .B2(n100), .C1(n96), 
        .C2(n95), .ZN(normalized_fraction[8]) );
  AOI22D1 U219 ( .A1(plane_value[6]), .A2(n189), .B1(n188), .B2(plane_value[7]), .ZN(n100) );
  OAI22D1 U220 ( .A1(n96), .A2(n99), .B1(divide_mode), .B2(n101), .ZN(
        normalized_fraction[7]) );
  AOI22D1 U221 ( .A1(n102), .A2(plane_value[7]), .B1(plane_value[6]), .B2(n188), .ZN(n101) );
  FA1D0 U222 ( .A(sa_pos_t7[10]), .B(sa_pos_t8[10]), .CI(
        add_7_root_sub_0_root_sub_187_carry[10]), .CO(
        add_7_root_sub_0_root_sub_187_carry[11]), .S(sa_neg_sum_1_1_10_) );
  NR2D1 U223 ( .A1(n80), .A2(n197), .ZN(sa_pos_t8[10]) );
  NR2D1 U224 ( .A1(n83), .A2(n196), .ZN(sa_pos_t7[10]) );
  OAI221D0 U225 ( .A1(n119), .A2(n186), .B1(n96), .B2(n113), .C(n120), .ZN(
        normalized_fraction[21]) );
  OA22D0 U227 ( .A1(n116), .A2(n121), .B1(n118), .B2(n117), .Z(n120) );
  OAI221D0 U228 ( .A1(n130), .A2(n186), .B1(n96), .B2(n128), .C(n133), .ZN(
        normalized_fraction[15]) );
  OA22D0 U229 ( .A1(n116), .A2(n134), .B1(n118), .B2(n132), .Z(n133) );
  OAI221D0 U230 ( .A1(n128), .A2(n186), .B1(n96), .B2(n126), .C(n131), .ZN(
        normalized_fraction[16]) );
  OA22D0 U231 ( .A1(n116), .A2(n132), .B1(n118), .B2(n130), .Z(n131) );
  OAI221D0 U232 ( .A1(n126), .A2(n186), .B1(n96), .B2(n123), .C(n129), .ZN(
        normalized_fraction[17]) );
  OA22D0 U233 ( .A1(n116), .A2(n130), .B1(n118), .B2(n128), .Z(n129) );
  OAI221D0 U234 ( .A1(n123), .A2(n186), .B1(n96), .B2(n121), .C(n127), .ZN(
        normalized_fraction[18]) );
  OA22D0 U235 ( .A1(n116), .A2(n128), .B1(n118), .B2(n126), .Z(n127) );
  OAI221D0 U236 ( .A1(n121), .A2(n186), .B1(n96), .B2(n117), .C(n125), .ZN(
        normalized_fraction[19]) );
  OA22D0 U237 ( .A1(n116), .A2(n126), .B1(n118), .B2(n123), .Z(n125) );
  OAI221D0 U238 ( .A1(n138), .A2(n186), .B1(n96), .B2(n136), .C(n140), .ZN(
        normalized_fraction[11]) );
  OA22D0 U239 ( .A1(n116), .A2(n95), .B1(n118), .B2(n97), .Z(n140) );
  OAI221D0 U240 ( .A1(n136), .A2(n186), .B1(n96), .B2(n134), .C(n139), .ZN(
        normalized_fraction[12]) );
  OA22D0 U241 ( .A1(n116), .A2(n97), .B1(n118), .B2(n138), .Z(n139) );
  OAI221D0 U242 ( .A1(n134), .A2(n186), .B1(n96), .B2(n132), .C(n137), .ZN(
        normalized_fraction[13]) );
  OA22D0 U243 ( .A1(n116), .A2(n138), .B1(n118), .B2(n136), .Z(n137) );
  OAI221D0 U244 ( .A1(n132), .A2(n186), .B1(n96), .B2(n130), .C(n135), .ZN(
        normalized_fraction[14]) );
  OA22D0 U245 ( .A1(n116), .A2(n136), .B1(n118), .B2(n134), .Z(n135) );
  OAI221D0 U246 ( .A1(n117), .A2(n186), .B1(n96), .B2(n119), .C(n122), .ZN(
        normalized_fraction[20]) );
  OA22D0 U247 ( .A1(n116), .A2(n123), .B1(n118), .B2(n121), .Z(n122) );
  OAI221D0 U248 ( .A1(n113), .A2(n186), .B1(n96), .B2(n114), .C(n115), .ZN(
        normalized_fraction[22]) );
  OA22D0 U249 ( .A1(n116), .A2(n117), .B1(n118), .B2(n119), .Z(n115) );
  NR2D1 U250 ( .A1(n187), .A2(n114), .ZN(n102) );
  INVD1 U251 ( .I(n96), .ZN(n187) );
  FA1D0 U252 ( .A(sa_pos_t7[9]), .B(sa_pos_t8[9]), .CI(n32), .CO(
        add_7_root_sub_0_root_sub_187_carry[10]), .S(sa_neg_sum_1_1_9_) );
  NR2D1 U253 ( .A1(n80), .A2(n198), .ZN(sa_pos_t8[9]) );
  NR2D1 U254 ( .A1(n83), .A2(n197), .ZN(sa_pos_t7[9]) );
  OAI221D0 U255 ( .A1(n97), .A2(n186), .B1(n96), .B2(n138), .C(n141), .ZN(
        normalized_fraction[10]) );
  NR2D1 U256 ( .A1(divide_mode), .A2(n33), .ZN(normalized_fraction[6]) );
  NR2D1 U258 ( .A1(n83), .A2(n198), .ZN(sa_pos_t7[8]) );
  NR2D1 U260 ( .A1(n80), .A2(n199), .ZN(sa_pos_t8[8]) );
  NR2D1 U261 ( .A1(divide_mode), .A2(n201), .ZN(normalized_fraction[5]) );
  ND2D1 U262 ( .A1(n187), .A2(plane_value[6]), .ZN(n201) );
  NR2D1 U263 ( .A1(n80), .A2(n191), .ZN(sa_pos_t8[16]) );
  INVD1 U264 ( .I(n99), .ZN(n190) );
  AOI22D1 U265 ( .A1(n155), .A2(plane_value[24]), .B1(sa_difference[16]), .B2(
        divide_mode), .ZN(n96) );
  FA1D0 U266 ( .A(sa_pos_t0[8]), .B(sa_pos_t1[8]), .CI(
        add_13_root_sub_0_root_sub_187_carry[8]), .CO(
        add_13_root_sub_0_root_sub_187_carry[9]), .S(sa_pos_sum_0_3_8_) );
  NR2D1 U267 ( .A1(n192), .A2(n84), .ZN(sa_pos_t1[8]) );
  NR2D1 U268 ( .A1(n86), .A2(n191), .ZN(sa_pos_t0[8]) );
  FA1D0 U269 ( .A(N111), .B(N78), .CI(add_0_root_add_0_root_add_80_3_carry[20]), .CO(add_0_root_add_0_root_add_80_3_carry[21]), .S(plane_value[20]) );
  AO22D0 U270 ( .A1(y_product[14]), .A2(n155), .B1(N55), .B2(divide_mode), .Z(
        N78) );
  FA1D0 U271 ( .A(N112), .B(N79), .CI(add_0_root_add_0_root_add_80_3_carry[21]), .CO(add_0_root_add_0_root_add_80_3_carry[22]), .S(plane_value[21]) );
  AO22D0 U272 ( .A1(n155), .A2(y_product[15]), .B1(N56), .B2(divide_mode), .Z(
        N79) );
  FA1D0 U273 ( .A(sa_pos_t0[7]), .B(sa_pos_t1[7]), .CI(
        add_13_root_sub_0_root_sub_187_carry[7]), .CO(
        add_13_root_sub_0_root_sub_187_carry[8]), .S(sa_pos_sum_0_3_7_) );
  NR2D1 U274 ( .A1(n193), .A2(n84), .ZN(sa_pos_t1[7]) );
  NR2D1 U275 ( .A1(n86), .A2(n192), .ZN(sa_pos_t0[7]) );
  FA1D0 U276 ( .A(N110), .B(N77), .CI(add_0_root_add_0_root_add_80_3_carry[19]), .CO(add_0_root_add_0_root_add_80_3_carry[20]), .S(plane_value[19]) );
  AO22D0 U277 ( .A1(y_product[13]), .A2(n155), .B1(N54), .B2(divide_mode), .Z(
        N77) );
  FA1D0 U278 ( .A(sa_pos_t0[6]), .B(sa_pos_t1[6]), .CI(
        add_13_root_sub_0_root_sub_187_carry[6]), .CO(
        add_13_root_sub_0_root_sub_187_carry[7]), .S(sa_pos_sum_0_3_6_) );
  NR2D1 U279 ( .A1(n194), .A2(n84), .ZN(sa_pos_t1[6]) );
  NR2D1 U280 ( .A1(n86), .A2(n193), .ZN(sa_pos_t0[6]) );
  FA1D0 U281 ( .A(sa_pos_t0[5]), .B(sa_pos_t1[5]), .CI(
        add_13_root_sub_0_root_sub_187_carry[5]), .CO(
        add_13_root_sub_0_root_sub_187_carry[6]), .S(sa_neg_sum_0_3_5_) );
  NR2D1 U282 ( .A1(n195), .A2(n84), .ZN(sa_pos_t1[5]) );
  NR2D1 U283 ( .A1(n86), .A2(n194), .ZN(sa_pos_t0[5]) );
  FA1D0 U284 ( .A(sa_pos_t0[4]), .B(sa_pos_t1[4]), .CI(
        add_13_root_sub_0_root_sub_187_carry[4]), .CO(
        add_13_root_sub_0_root_sub_187_carry[5]), .S(sa_neg_sum_0_3_4_) );
  NR2D1 U285 ( .A1(n196), .A2(n84), .ZN(sa_pos_t1[4]) );
  NR2D1 U286 ( .A1(n86), .A2(n195), .ZN(sa_pos_t0[4]) );
  FA1D0 U289 ( .A(N109), .B(N76), .CI(add_0_root_add_0_root_add_80_3_carry[18]), .CO(add_0_root_add_0_root_add_80_3_carry[19]), .S(plane_value[18]) );
  AO22D0 U290 ( .A1(y_product[12]), .A2(n155), .B1(N53), .B2(divide_mode), .Z(
        N76) );
  FA1D0 U291 ( .A(sa_pos_t0[3]), .B(sa_pos_t1[3]), .CI(
        add_13_root_sub_0_root_sub_187_carry[3]), .CO(
        add_13_root_sub_0_root_sub_187_carry[4]), .S(sa_neg_sum_0_3_3_) );
  NR2D1 U292 ( .A1(n197), .A2(n84), .ZN(sa_pos_t1[3]) );
  NR2D1 U293 ( .A1(n86), .A2(n196), .ZN(sa_pos_t0[3]) );
  AOI22D1 U294 ( .A1(n155), .A2(plane_value[23]), .B1(sa_difference[15]), .B2(
        divide_mode), .ZN(n114) );
  FA1D0 U295 ( .A(N108), .B(N75), .CI(add_0_root_add_0_root_add_80_3_carry[17]), .CO(add_0_root_add_0_root_add_80_3_carry[18]), .S(plane_value[17]) );
  AO22D0 U296 ( .A1(y_product[11]), .A2(n155), .B1(N52), .B2(divide_mode), .Z(
        N75) );
  FA1D0 U297 ( .A(sa_pos_t0[2]), .B(sa_pos_t1[2]), .CI(n5), .CO(
        add_13_root_sub_0_root_sub_187_carry[3]), .S(sa_neg_sum_0_3_2_) );
  NR2D1 U298 ( .A1(n198), .A2(n84), .ZN(sa_pos_t1[2]) );
  NR2D1 U299 ( .A1(n86), .A2(n197), .ZN(sa_pos_t0[2]) );
  FA1D0 U300 ( .A(sa_neg_t1[9]), .B(sa_neg_t2[9]), .CI(
        add_12_root_sub_0_root_sub_187_carry[9]), .CO(
        add_12_root_sub_0_root_sub_187_carry[10]), .S(
        sub_5_root_sub_0_root_sub_187_B_9_) );
  NR2D1 U301 ( .A1(n192), .A2(n85), .ZN(sa_neg_t2[9]) );
  NR2D1 U302 ( .A1(n94), .A2(n191), .ZN(sa_neg_t1[9]) );
  FA1D0 U303 ( .A(N107), .B(N74), .CI(add_0_root_add_0_root_add_80_3_carry[16]), .CO(add_0_root_add_0_root_add_80_3_carry[17]), .S(plane_value[16]) );
  AO22D0 U304 ( .A1(y_product[10]), .A2(n155), .B1(N51), .B2(divide_mode), .Z(
        N74) );
  FA1D0 U305 ( .A(sa_neg_t1[6]), .B(sa_neg_t2[6]), .CI(
        add_12_root_sub_0_root_sub_187_carry[6]), .CO(
        add_12_root_sub_0_root_sub_187_carry[7]), .S(
        sub_5_root_sub_0_root_sub_187_B_6_) );
  NR2D1 U306 ( .A1(n195), .A2(n85), .ZN(sa_neg_t2[6]) );
  NR2D1 U307 ( .A1(n94), .A2(n194), .ZN(sa_neg_t1[6]) );
  FA1D0 U308 ( .A(sa_neg_t1[7]), .B(sa_neg_t2[7]), .CI(
        add_12_root_sub_0_root_sub_187_carry[7]), .CO(
        add_12_root_sub_0_root_sub_187_carry[8]), .S(
        sub_5_root_sub_0_root_sub_187_B_7_) );
  NR2D1 U309 ( .A1(n194), .A2(n85), .ZN(sa_neg_t2[7]) );
  NR2D1 U310 ( .A1(n94), .A2(n193), .ZN(sa_neg_t1[7]) );
  FA1D0 U311 ( .A(sa_neg_t1[8]), .B(sa_neg_t2[8]), .CI(
        add_12_root_sub_0_root_sub_187_carry[8]), .CO(
        add_12_root_sub_0_root_sub_187_carry[9]), .S(
        sub_5_root_sub_0_root_sub_187_B_8_) );
  NR2D1 U312 ( .A1(n193), .A2(n85), .ZN(sa_neg_t2[8]) );
  NR2D1 U313 ( .A1(n94), .A2(n192), .ZN(sa_neg_t1[8]) );
  FA1D0 U314 ( .A(sa_neg_t1[5]), .B(sa_neg_t2[5]), .CI(
        add_12_root_sub_0_root_sub_187_carry[5]), .CO(
        add_12_root_sub_0_root_sub_187_carry[6]), .S(
        sub_5_root_sub_0_root_sub_187_B_5_) );
  NR2D1 U315 ( .A1(n196), .A2(n85), .ZN(sa_neg_t2[5]) );
  NR2D1 U316 ( .A1(n94), .A2(n195), .ZN(sa_neg_t1[5]) );
  FA1D0 U317 ( .A(N106), .B(N73), .CI(add_0_root_add_0_root_add_80_3_carry[15]), .CO(add_0_root_add_0_root_add_80_3_carry[16]), .S(plane_value[15]) );
  AO22D0 U318 ( .A1(y_product[9]), .A2(n155), .B1(N50), .B2(divide_mode), .Z(
        N73) );
  FA1D0 U319 ( .A(N1330), .B(x_product[11]), .CI(
        add_1_root_add_0_root_add_80_3_carry[17]), .CO(
        add_1_root_add_0_root_add_80_3_carry[18]), .S(N108) );
  FA1D0 U320 ( .A(sa_neg_t1[4]), .B(sa_neg_t2[4]), .CI(
        add_12_root_sub_0_root_sub_187_carry[4]), .CO(
        add_12_root_sub_0_root_sub_187_carry[5]), .S(
        sub_5_root_sub_0_root_sub_187_B_4_) );
  NR2D1 U321 ( .A1(n197), .A2(n85), .ZN(sa_neg_t2[4]) );
  NR2D1 U322 ( .A1(n94), .A2(n196), .ZN(sa_neg_t1[4]) );
  FA1D0 U323 ( .A(N105), .B(N72), .CI(add_0_root_add_0_root_add_80_3_carry[14]), .CO(add_0_root_add_0_root_add_80_3_carry[15]), .S(plane_value[14]) );
  AO22D0 U324 ( .A1(y_product[8]), .A2(n155), .B1(N49), .B2(divide_mode), .Z(
        N72) );
  FA1D0 U325 ( .A(N1320), .B(x_product[10]), .CI(
        add_1_root_add_0_root_add_80_3_carry[16]), .CO(
        add_1_root_add_0_root_add_80_3_carry[17]), .S(N107) );
  FA1D0 U329 ( .A(sa_neg_t1[3]), .B(sa_neg_t2[3]), .CI(n9), .CO(
        add_12_root_sub_0_root_sub_187_carry[4]), .S(
        sub_5_root_sub_0_root_sub_187_B_3_) );
  NR2D1 U330 ( .A1(n198), .A2(n85), .ZN(sa_neg_t2[3]) );
  NR2D1 U331 ( .A1(n94), .A2(n197), .ZN(sa_neg_t1[3]) );
  FA1D0 U332 ( .A(N104), .B(N71), .CI(add_0_root_add_0_root_add_80_3_carry[13]), .CO(add_0_root_add_0_root_add_80_3_carry[14]), .S(plane_value[13]) );
  AO22D0 U333 ( .A1(y_product[7]), .A2(n155), .B1(N48), .B2(divide_mode), .Z(
        N71) );
  NR2D1 U334 ( .A1(n191), .A2(n84), .ZN(sa_pos_t1[9]) );
  AOI22D1 U335 ( .A1(n155), .A2(plane_value[22]), .B1(sa_difference[14]), .B2(
        divide_mode), .ZN(n113) );
  FA1D0 U336 ( .A(N103), .B(N70), .CI(add_0_root_add_0_root_add_80_3_carry[12]), .CO(add_0_root_add_0_root_add_80_3_carry[13]), .S(plane_value[12]) );
  AO22D0 U337 ( .A1(y_product[6]), .A2(n155), .B1(N47), .B2(divide_mode), .Z(
        N70) );
  FA1D0 U338 ( .A(N1020), .B(N69), .CI(
        add_0_root_add_0_root_add_80_3_carry[11]), .CO(
        add_0_root_add_0_root_add_80_3_carry[12]), .S(plane_value[11]) );
  AO22D0 U339 ( .A1(y_product[5]), .A2(n155), .B1(N46), .B2(divide_mode), .Z(
        N69) );
  FA1D0 U340 ( .A(sa_neg_sum_1_1_8_), .B(n8), .CI(
        sub_6_root_sub_0_root_sub_187_carry[8]), .CO(
        sub_6_root_sub_0_root_sub_187_carry[9]), .S(sa_pos_sum_1_1_8_) );
  FA1D0 U341 ( .A(N1010), .B(N68), .CI(
        add_0_root_add_0_root_add_80_3_carry[10]), .CO(
        add_0_root_add_0_root_add_80_3_carry[11]), .S(plane_value[10]) );
  AO22D0 U342 ( .A1(y_product[4]), .A2(n155), .B1(N45), .B2(divide_mode), .Z(
        N68) );
  FA1D0 U343 ( .A(sa_pos_t4[11]), .B(n18), .CI(
        sub_10_root_sub_0_root_sub_187_carry[11]), .CO(
        sub_10_root_sub_0_root_sub_187_carry[12]), .S(
        add_3_root_sub_0_root_sub_187_B_11_) );
  NR2D1 U344 ( .A1(n88), .A2(n192), .ZN(sa_pos_t4[11]) );
  NR2D1 U345 ( .A1(n191), .A2(n85), .ZN(sa_neg_t2[10]) );
  FA1D0 U346 ( .A(sa_pos_t4[8]), .B(n15), .CI(
        sub_10_root_sub_0_root_sub_187_carry[8]), .CO(
        sub_10_root_sub_0_root_sub_187_carry[9]), .S(
        add_3_root_sub_0_root_sub_187_B_8_) );
  NR2D1 U347 ( .A1(n88), .A2(n195), .ZN(sa_pos_t4[8]) );
  FA1D0 U348 ( .A(sa_pos_t4[9]), .B(n16), .CI(
        sub_10_root_sub_0_root_sub_187_carry[9]), .CO(
        sub_10_root_sub_0_root_sub_187_carry[10]), .S(
        add_3_root_sub_0_root_sub_187_B_9_) );
  NR2D1 U349 ( .A1(n88), .A2(n194), .ZN(sa_pos_t4[9]) );
  FA1D0 U350 ( .A(sa_pos_t4[10]), .B(n17), .CI(
        sub_10_root_sub_0_root_sub_187_carry[10]), .CO(
        sub_10_root_sub_0_root_sub_187_carry[11]), .S(
        add_3_root_sub_0_root_sub_187_B_10_) );
  NR2D1 U351 ( .A1(n88), .A2(n193), .ZN(sa_pos_t4[10]) );
  NR2D1 U352 ( .A1(n94), .A2(n198), .ZN(sa_neg_t1[2]) );
  FA1D0 U353 ( .A(N1000), .B(N67), .CI(add_0_root_add_0_root_add_80_3_carry[9]), .CO(add_0_root_add_0_root_add_80_3_carry[10]), .S(plane_value[9]) );
  AO22D0 U354 ( .A1(y_product[3]), .A2(n155), .B1(N44), .B2(divide_mode), .Z(
        N67) );
  INVD1 U355 ( .I(y_product[3]), .ZN(n173) );
  FA1D0 U356 ( .A(n155), .B(x_product[4]), .CI(
        add_1_root_add_0_root_add_80_3_carry[10]), .CO(
        add_1_root_add_0_root_add_80_3_carry[11]), .S(N1010) );
  FA1D0 U357 ( .A(sa_pos_t4[7]), .B(n10), .CI(
        sub_10_root_sub_0_root_sub_187_carry[7]), .CO(
        sub_10_root_sub_0_root_sub_187_carry[8]), .S(
        add_3_root_sub_0_root_sub_187_B_7_) );
  NR2D1 U358 ( .A1(n88), .A2(n196), .ZN(sa_pos_t4[7]) );
  OR2D1 U359 ( .A1(n195), .A2(n81), .Z(n1030) );
  OR2D1 U360 ( .A1(n194), .A2(n81), .Z(n1040) );
  OR2D1 U361 ( .A1(n193), .A2(n81), .Z(n1050) );
  FA1D0 U362 ( .A(sa_pos_t4[6]), .B(n11), .CI(
        sub_10_root_sub_0_root_sub_187_carry[6]), .CO(
        sub_10_root_sub_0_root_sub_187_carry[7]), .S(
        add_3_root_sub_0_root_sub_187_B_6_) );
  NR2D1 U363 ( .A1(n88), .A2(n197), .ZN(sa_pos_t4[6]) );
  OR2D1 U364 ( .A1(n196), .A2(n81), .Z(n1060) );
  FA1D0 U365 ( .A(sa_pos_t4[5]), .B(n12), .CI(
        sub_10_root_sub_0_root_sub_187_carry[5]), .CO(
        sub_10_root_sub_0_root_sub_187_carry[6]), .S(
        add_3_root_sub_0_root_sub_187_B_5_) );
  NR2D1 U366 ( .A1(n88), .A2(n198), .ZN(sa_pos_t4[5]) );
  FA1D0 U367 ( .A(N1250), .B(x_product[3]), .CI(
        add_1_root_add_0_root_add_80_3_carry[9]), .CO(
        add_1_root_add_0_root_add_80_3_carry[10]), .S(N1000) );
  INR2D1 U368 ( .A1(midpoint_sum[4]), .B1(divide_mode), .ZN(N1250) );
  OR2D1 U369 ( .A1(n197), .A2(n81), .Z(n1070) );
  FA1D0 U370 ( .A(sa_pos_t4[4]), .B(n13), .CI(n167), .CO(
        sub_10_root_sub_0_root_sub_187_carry[5]), .S(
        add_3_root_sub_0_root_sub_187_B_4_) );
  INVD1 U371 ( .I(add_3_root_sub_0_root_sub_187_B_3_), .ZN(n167) );
  NR2D1 U372 ( .A1(n88), .A2(n199), .ZN(sa_pos_t4[4]) );
  NR2D1 U373 ( .A1(n199), .A2(n84), .ZN(sa_pos_t1[1]) );
  OR2D1 U374 ( .A1(n198), .A2(n81), .Z(n1080) );
  NR2D1 U375 ( .A1(n199), .A2(n85), .ZN(sa_neg_t2[2]) );
  FA1D0 U376 ( .A(N990), .B(N66), .CI(add_0_root_add_0_root_add_80_3_carry[8]), 
        .CO(add_0_root_add_0_root_add_80_3_carry[9]), .S(plane_value[8]) );
  AO22D0 U377 ( .A1(y_product[2]), .A2(n155), .B1(N43), .B2(divide_mode), .Z(
        N66) );
  INVD1 U378 ( .I(y_product[2]), .ZN(n172) );
  NR2D1 U379 ( .A1(n88), .A2(n191), .ZN(sa_pos_t4[12]) );
  FA1D0 U380 ( .A(N980), .B(N65), .CI(n22), .CO(
        add_0_root_add_0_root_add_80_3_carry[8]), .S(plane_value[7]) );
  AO22D0 U381 ( .A1(y_product[1]), .A2(n155), .B1(N42), .B2(divide_mode), .Z(
        N65) );
  NR2D1 U383 ( .A1(n199), .A2(n81), .ZN(sa_pos_sum_1_1_0_) );
  FA1D0 U384 ( .A(N124), .B(x_product[2]), .CI(
        add_1_root_add_0_root_add_80_3_carry[8]), .CO(
        add_1_root_add_0_root_add_80_3_carry[9]), .S(N990) );
  INR2D1 U385 ( .A1(midpoint_sum[3]), .B1(divide_mode), .ZN(N124) );
  FA1D0 U386 ( .A(N1230), .B(x_product[1]), .CI(n21), .CO(
        add_1_root_add_0_root_add_80_3_carry[8]), .S(N980) );
  INR2D1 U387 ( .A1(midpoint_sum[2]), .B1(divide_mode), .ZN(N1230) );
  NR2D1 U388 ( .A1(n94), .A2(n199), .ZN(sub_5_root_sub_0_root_sub_187_B_1_) );
  FA1D0 U389 ( .A(sa_pos_t6[9]), .B(n23), .CI(
        sub_8_root_sub_0_root_sub_187_carry[9]), .CO(
        sub_8_root_sub_0_root_sub_187_carry[10]), .S(
        add_4_root_sub_0_root_sub_187_B_9_) );
  NR2D1 U390 ( .A1(n196), .A2(n87), .ZN(sa_pos_t6[9]) );
  FA1D0 U391 ( .A(sa_pos_t6[10]), .B(n26), .CI(
        sub_8_root_sub_0_root_sub_187_carry[10]), .CO(
        sub_8_root_sub_0_root_sub_187_carry[11]), .S(
        add_4_root_sub_0_root_sub_187_B_10_) );
  NR2D1 U392 ( .A1(n195), .A2(n87), .ZN(sa_pos_t6[10]) );
  FA1D0 U393 ( .A(sa_pos_t6[14]), .B(n31), .CI(
        sub_8_root_sub_0_root_sub_187_carry[14]), .CO(
        sub_8_root_sub_0_root_sub_187_carry[15]), .S(
        add_4_root_sub_0_root_sub_187_B_14_) );
  NR2D1 U394 ( .A1(n191), .A2(n87), .ZN(sa_pos_t6[14]) );
  FA1D0 U395 ( .A(sa_pos_t6[11]), .B(n28), .CI(
        sub_8_root_sub_0_root_sub_187_carry[11]), .CO(
        sub_8_root_sub_0_root_sub_187_carry[12]), .S(
        add_4_root_sub_0_root_sub_187_B_11_) );
  NR2D1 U396 ( .A1(n194), .A2(n87), .ZN(sa_pos_t6[11]) );
  FA1D0 U397 ( .A(sa_pos_t6[12]), .B(n29), .CI(
        sub_8_root_sub_0_root_sub_187_carry[12]), .CO(
        sub_8_root_sub_0_root_sub_187_carry[13]), .S(
        add_4_root_sub_0_root_sub_187_B_12_) );
  NR2D1 U398 ( .A1(n193), .A2(n87), .ZN(sa_pos_t6[12]) );
  FA1D0 U399 ( .A(sa_pos_t6[13]), .B(n30), .CI(
        sub_8_root_sub_0_root_sub_187_carry[13]), .CO(
        sub_8_root_sub_0_root_sub_187_carry[14]), .S(
        add_4_root_sub_0_root_sub_187_B_13_) );
  NR2D1 U400 ( .A1(n192), .A2(n87), .ZN(sa_pos_t6[13]) );
  FA1D0 U401 ( .A(sa_pos_t6[8]), .B(n24), .CI(
        sub_8_root_sub_0_root_sub_187_carry[8]), .CO(
        sub_8_root_sub_0_root_sub_187_carry[9]), .S(
        add_4_root_sub_0_root_sub_187_B_8_) );
  NR2D1 U402 ( .A1(n197), .A2(n87), .ZN(sa_pos_t6[8]) );
  FA1D0 U403 ( .A(sa_pos_t6[7]), .B(n25), .CI(
        sub_8_root_sub_0_root_sub_187_carry[7]), .CO(
        sub_8_root_sub_0_root_sub_187_carry[8]), .S(
        add_4_root_sub_0_root_sub_187_B_7_) );
  NR2D1 U405 ( .A1(n198), .A2(n87), .ZN(sa_pos_t6[7]) );
  OAI221D0 U406 ( .A1(n95), .A2(n186), .B1(n96), .B2(n97), .C(n98), .ZN(
        normalized_fraction[9]) );
  AOI32D1 U407 ( .A1(n189), .A2(n155), .A3(plane_value[7]), .B1(n188), .B2(
        n190), .ZN(n98) );
  NR2D1 U409 ( .A1(n199), .A2(n87), .ZN(sa_pos_t6[6]) );
  AOI22D1 U411 ( .A1(n155), .A2(plane_value[21]), .B1(sa_difference[13]), .B2(
        divide_mode), .ZN(n119) );
  AOI22D1 U412 ( .A1(n155), .A2(plane_value[20]), .B1(sa_difference[12]), .B2(
        divide_mode), .ZN(n117) );
  AOI22D1 U413 ( .A1(n155), .A2(plane_value[19]), .B1(sa_difference[11]), .B2(
        divide_mode), .ZN(n121) );
  AOI22D1 U414 ( .A1(n155), .A2(plane_value[18]), .B1(sa_difference[10]), .B2(
        divide_mode), .ZN(n123) );
  AOI22D1 U415 ( .A1(n155), .A2(plane_value[17]), .B1(sa_difference[9]), .B2(
        divide_mode), .ZN(n126) );
  AOI22D1 U416 ( .A1(n155), .A2(plane_value[16]), .B1(sa_difference[8]), .B2(
        divide_mode), .ZN(n128) );
  AOI22D1 U417 ( .A1(sa_difference[7]), .A2(divide_mode), .B1(plane_value[15]), 
        .B2(n155), .ZN(n130) );
  AOI22D1 U418 ( .A1(sa_difference[6]), .A2(divide_mode), .B1(plane_value[14]), 
        .B2(n155), .ZN(n132) );
  AOI22D1 U419 ( .A1(sa_difference[5]), .A2(divide_mode), .B1(plane_value[13]), 
        .B2(n155), .ZN(n134) );
  AOI22D1 U420 ( .A1(sa_difference[4]), .A2(divide_mode), .B1(plane_value[12]), 
        .B2(n155), .ZN(n136) );
  ND3D1 U421 ( .A1(n1110), .A2(n200), .A3(y_midpoint[3]), .ZN(n90) );
  AN2XD1 U422 ( .A1(n89), .A2(n90), .Z(n86) );
  OA211D1 U423 ( .A1(n1110), .A2(n87), .B(n89), .C(n81), .Z(n91) );
  AN2XD1 U424 ( .A1(n820), .A2(n84), .Z(n93) );
  AOI22D1 U425 ( .A1(sa_difference[3]), .A2(divide_mode), .B1(plane_value[11]), 
        .B2(n155), .ZN(n138) );
  AOI22D1 U426 ( .A1(sa_difference[2]), .A2(divide_mode), .B1(plane_value[10]), 
        .B2(n155), .ZN(n97) );
  AN3XD1 U427 ( .A1(n84), .A2(n81), .A3(n90), .Z(n92) );
  AOI22D1 U428 ( .A1(sa_difference[1]), .A2(divide_mode), .B1(plane_value[9]), 
        .B2(n155), .ZN(n95) );
  AN3XD1 U429 ( .A1(n84), .A2(n85), .A3(n86), .Z(n83) );
  AN2XD1 U430 ( .A1(n81), .A2(n820), .Z(n80) );
  AOI22D1 U431 ( .A1(sa_difference[0]), .A2(divide_mode), .B1(plane_value[8]), 
        .B2(n155), .ZN(n99) );
  FA1D0 U433 ( .A(x_midpoint[2]), .B(y_midpoint[2]), .CI(add_77_carry_2_), 
        .CO(add_77_carry_3_), .S(midpoint_sum[2]) );
  FA1D0 U437 ( .A(x_midpoint[3]), .B(y_midpoint[3]), .CI(add_77_carry_3_), 
        .CO(midpoint_sum[4]), .S(midpoint_sum[3]) );
  NR2D1 U438 ( .A1(n1100), .A2(divide_mode), .ZN(N1220) );
  CKXOR2D1 U439 ( .A1(y_midpoint[1]), .A2(x_midpoint[1]), .Z(n1100) );
  INVD1 U440 ( .I(y_midpoint[2]), .ZN(n200) );
  OA21D1 U441 ( .A1(y_midpoint[1]), .A2(n87), .B(n820), .Z(n94) );
  ND3D1 U442 ( .A1(n200), .A2(n157), .A3(y_midpoint[1]), .ZN(n820) );
  ND2D1 U443 ( .A1(y_midpoint[3]), .A2(y_midpoint[2]), .ZN(n87) );
  ND3D1 U444 ( .A1(n1110), .A2(n157), .A3(y_midpoint[2]), .ZN(n89) );
  ND3D1 U445 ( .A1(n200), .A2(n157), .A3(n1110), .ZN(n81) );
  ND3D1 U446 ( .A1(y_midpoint[1]), .A2(n200), .A3(y_midpoint[3]), .ZN(n84) );
  OA21D1 U447 ( .A1(y_midpoint[1]), .A2(n87), .B(n89), .Z(n88) );
  ND3D1 U448 ( .A1(y_midpoint[1]), .A2(n157), .A3(y_midpoint[2]), .ZN(n85) );
  INR2D1 U449 ( .A1(y_mantissa[11]), .B1(divide_mode), .ZN(
        y_shared_residual[1]) );
  INR2D1 U451 ( .A1(x_mantissa[11]), .B1(divide_mode), .ZN(
        x_shared_residual[1]) );
  INR2D1 U452 ( .A1(y_mantissa[10]), .B1(divide_mode), .ZN(
        y_shared_residual[0]) );
  INR2D1 U453 ( .A1(x_mantissa[10]), .B1(divide_mode), .ZN(
        x_shared_residual[0]) );
  INR2D1 U456 ( .A1(y_mantissa[12]), .B1(divide_mode), .ZN(
        y_shared_residual[2]) );
  INR2D1 U457 ( .A1(x_mantissa[12]), .B1(divide_mode), .ZN(
        x_shared_residual[2]) );
  INR2D1 U459 ( .A1(y_mantissa[13]), .B1(divide_mode), .ZN(
        y_shared_residual[3]) );
  INR2D1 U460 ( .A1(y_mantissa[14]), .B1(divide_mode), .ZN(
        y_shared_residual[4]) );
  INR2D1 U461 ( .A1(x_mantissa[13]), .B1(divide_mode), .ZN(
        x_shared_residual[3]) );
  INR2D1 U462 ( .A1(x_mantissa[14]), .B1(divide_mode), .ZN(
        x_shared_residual[4]) );
  INR2D1 U463 ( .A1(y_mantissa[15]), .B1(divide_mode), .ZN(
        y_shared_residual[5]) );
  INR2D1 U464 ( .A1(x_mantissa[15]), .B1(divide_mode), .ZN(
        x_shared_residual[5]) );
  INVD1 U465 ( .I(y_mantissa[19]), .ZN(y_residual_19_) );
  INVD1 U466 ( .I(x_mantissa[19]), .ZN(x_residual_19_) );
  TIEL U467 ( .ZN(n202) );
  XNR2D1 U469 ( .A1(sub_6_root_sub_0_root_sub_187_carry[9]), .A2(
        sa_neg_sum_1_1_9_), .ZN(sa_pos_sum_1_1_9_) );
  XNR2D1 U470 ( .A1(sub_6_root_sub_0_root_sub_187_carry[10]), .A2(
        sa_neg_sum_1_1_10_), .ZN(sa_pos_sum_1_1_10_) );
  XNR2D1 U471 ( .A1(sub_6_root_sub_0_root_sub_187_carry[11]), .A2(
        sa_neg_sum_1_1_11_), .ZN(sa_pos_sum_1_1_11_) );
  XNR2D1 U472 ( .A1(sub_6_root_sub_0_root_sub_187_carry[12]), .A2(
        sa_neg_sum_1_1_12_), .ZN(sa_pos_sum_1_1_12_) );
  XNR2D1 U473 ( .A1(sub_6_root_sub_0_root_sub_187_carry[13]), .A2(
        sa_neg_sum_1_1_13_), .ZN(sa_pos_sum_1_1_13_) );
  XNR2D1 U474 ( .A1(sub_6_root_sub_0_root_sub_187_carry[14]), .A2(
        sa_neg_sum_1_1_14_), .ZN(sa_pos_sum_1_1_14_) );
  XNR2D1 U475 ( .A1(sub_6_root_sub_0_root_sub_187_carry[15]), .A2(
        sa_neg_sum_1_1_15_), .ZN(sa_pos_sum_1_1_15_) );
  XNR2D1 U477 ( .A1(sub_10_root_sub_0_root_sub_187_carry[12]), .A2(
        sa_pos_t4[12]), .ZN(add_3_root_sub_0_root_sub_187_B_12_) );
  XNR2D1 U478 ( .A1(sub_5_root_sub_0_root_sub_187_carry[12]), .A2(n470), .ZN(
        sub_5_root_sub_0_root_sub_187_DIFF_12_) );
  XNR2D1 U479 ( .A1(n1090), .A2(sa_pos_t6[6]), .ZN(
        add_4_root_sub_0_root_sub_187_B_6_) );
  CKXOR2D1 U480 ( .A1(n170), .A2(n171), .Z(N42) );
  CKXOR2D1 U481 ( .A1(n710), .A2(n172), .Z(N43) );
  CKXOR2D1 U482 ( .A1(n700), .A2(n173), .Z(N44) );
  CKXOR2D1 U483 ( .A1(n63), .A2(n174), .Z(N45) );
  CKXOR2D1 U484 ( .A1(n460), .A2(n175), .Z(N46) );
  CKXOR2D1 U485 ( .A1(n450), .A2(n176), .Z(N47) );
  CKXOR2D1 U486 ( .A1(n440), .A2(n177), .Z(N48) );
  CKXOR2D1 U487 ( .A1(n430), .A2(n178), .Z(N49) );
  CKXOR2D1 U488 ( .A1(n420), .A2(n179), .Z(N50) );
  CKXOR2D1 U489 ( .A1(n410), .A2(n180), .Z(N51) );
  CKXOR2D1 U490 ( .A1(n39), .A2(n181), .Z(N52) );
  CKXOR2D1 U491 ( .A1(n38), .A2(n182), .Z(N53) );
  CKXOR2D1 U492 ( .A1(n37), .A2(n183), .Z(N54) );
  CKXOR2D1 U493 ( .A1(n36), .A2(n184), .Z(N55) );
  CKXOR2D1 U494 ( .A1(n35), .A2(n185), .Z(N56) );
  CKXOR2D1 U495 ( .A1(N41), .A2(N970), .Z(plane_value[6]) );
  CKXOR2D1 U496 ( .A1(x_product[0]), .A2(N1220), .Z(N970) );
  CKXOR2D1 U497 ( .A1(add_1_root_add_0_root_add_80_3_carry[11]), .A2(
        x_product[5]), .Z(N1020) );
  CKXOR2D1 U498 ( .A1(n62), .A2(x_product[6]), .Z(N103) );
  CKXOR2D1 U499 ( .A1(n64), .A2(x_product[7]), .Z(N104) );
  CKXOR2D1 U500 ( .A1(n61), .A2(x_product[8]), .Z(N105) );
  CKXOR2D1 U501 ( .A1(add_3_root_sub_0_root_sub_187_B_5_), .A2(
        sa_pos_sum_2_0_5_), .Z(add_3_root_sub_0_root_sub_187_SUM_5_) );
  CKXOR2D1 U502 ( .A1(n169), .A2(n790), .Z(sa_pos_sum_2_0_6_) );
  CKXOR2D1 U503 ( .A1(n540), .A2(n780), .Z(sa_pos_sum_2_0_7_) );
  CKXOR2D1 U504 ( .A1(n530), .A2(n770), .Z(sa_pos_sum_2_0_8_) );
  CKXOR2D1 U505 ( .A1(n520), .A2(n740), .Z(sa_pos_sum_2_0_9_) );
  CKXOR2D1 U506 ( .A1(n480), .A2(n750), .Z(sa_pos_sum_2_0_10_) );
  CKXOR2D1 U507 ( .A1(n490), .A2(n760), .Z(sa_pos_sum_2_0_11_) );
  CKXOR2D1 U508 ( .A1(n510), .A2(n730), .Z(sa_pos_sum_2_0_12_) );
  CKXOR2D1 U509 ( .A1(n500), .A2(n720), .Z(sa_pos_sum_2_0_13_) );
  CKXOR2D1 U510 ( .A1(n168), .A2(n1080), .Z(sa_pos_sum_1_1_1_) );
  CKXOR2D1 U511 ( .A1(n690), .A2(n1070), .Z(sa_pos_sum_1_1_2_) );
  CKXOR2D1 U512 ( .A1(n680), .A2(n1060), .Z(sa_pos_sum_1_1_3_) );
  CKXOR2D1 U513 ( .A1(n670), .A2(n1030), .Z(sa_pos_sum_1_1_4_) );
  CKXOR2D1 U514 ( .A1(n650), .A2(n1040), .Z(sa_pos_sum_1_1_5_) );
  CKXOR2D1 U515 ( .A1(n660), .A2(n1050), .Z(sa_pos_sum_1_1_6_) );
  CKXOR2D1 U516 ( .A1(add_4_root_sub_0_root_sub_187_B_6_), .A2(
        sa_pos_sum_0_3_6_), .Z(sa_neg_sum_0_3_6_) );
  CKXOR2D1 U518 ( .A1(n59), .A2(add_4_root_sub_0_root_sub_187_B_16_), .Z(
        sa_neg_sum_0_3_15_) );
  CKXOR2D1 U519 ( .A1(add_4_root_sub_0_root_sub_187_carry[11]), .A2(
        add_4_root_sub_0_root_sub_187_B_11_), .Z(sa_neg_sum_0_3_11_) );
  CKXOR2D1 U520 ( .A1(n550), .A2(add_4_root_sub_0_root_sub_187_B_12_), .Z(
        sa_neg_sum_0_3_12_) );
  CKXOR2D1 U521 ( .A1(n560), .A2(add_4_root_sub_0_root_sub_187_B_13_), .Z(
        sa_neg_sum_0_3_13_) );
  CKXOR2D1 U522 ( .A1(n58), .A2(add_4_root_sub_0_root_sub_187_B_14_), .Z(
        sa_neg_sum_0_3_14_) );
  CKXOR2D1 U523 ( .A1(sa_pos_t8[8]), .A2(sa_pos_t7[8]), .Z(sa_neg_sum_1_1_8_)
         );
  CKXOR2D1 U525 ( .A1(sa_pos_t3[3]), .A2(sa_pos_t2[3]), .Z(
        sub_5_root_sub_0_root_sub_187_A_3_) );
  CKXOR2D1 U526 ( .A1(add_11_root_sub_0_root_sub_187_carry[11]), .A2(
        sa_pos_t3[11]), .Z(sub_5_root_sub_0_root_sub_187_A_11_) );
  CKXOR2D1 U527 ( .A1(sa_pos_t1[1]), .A2(sa_pos_t0[1]), .Z(sa_neg_sum_0_3_1_)
         );
  CKXOR2D1 U528 ( .A1(add_13_root_sub_0_root_sub_187_carry[9]), .A2(
        sa_pos_t1[9]), .Z(sa_pos_sum_0_3_9_) );
  XOR3D0 U4 ( .A1(n219), .A2(sa_pos_t8[16]), .A3(
        add_7_root_sub_0_root_sub_187_carry[16]), .Z(sa_pos_sum_1_1_16_) );
  NR2D0 U5 ( .A1(sub_6_root_sub_0_root_sub_187_carry[15]), .A2(
        sa_neg_sum_1_1_15_), .ZN(n219) );
  CKND0 U7 ( .I(sub_8_root_sub_0_root_sub_187_carry[15]), .ZN(
        add_4_root_sub_0_root_sub_187_B_16_) );
  NR2D0 U8 ( .A1(sub_8_root_sub_0_root_sub_187_carry[15]), .A2(n59), .ZN(
        sa_neg_sum_0_3_16_) );
  OR2D0 U9 ( .A1(sub_6_root_sub_0_root_sub_187_carry[14]), .A2(
        sa_neg_sum_1_1_14_), .Z(sub_6_root_sub_0_root_sub_187_carry[15]) );
  OR2D0 U10 ( .A1(sub_6_root_sub_0_root_sub_187_carry[13]), .A2(
        sa_neg_sum_1_1_13_), .Z(sub_6_root_sub_0_root_sub_187_carry[14]) );
  OR2D0 U11 ( .A1(sub_6_root_sub_0_root_sub_187_carry[12]), .A2(
        sa_neg_sum_1_1_12_), .Z(sub_6_root_sub_0_root_sub_187_carry[13]) );
  OR2D0 U51 ( .A1(sub_6_root_sub_0_root_sub_187_carry[11]), .A2(
        sa_neg_sum_1_1_11_), .Z(sub_6_root_sub_0_root_sub_187_carry[12]) );
  OR2D0 U57 ( .A1(sub_6_root_sub_0_root_sub_187_carry[10]), .A2(
        sa_neg_sum_1_1_10_), .Z(sub_6_root_sub_0_root_sub_187_carry[11]) );
  OR2D0 U66 ( .A1(sub_6_root_sub_0_root_sub_187_carry[9]), .A2(
        sa_neg_sum_1_1_9_), .Z(sub_6_root_sub_0_root_sub_187_carry[10]) );
  IND2D0 U69 ( .A1(sa_pos_t6[6]), .B1(n150), .ZN(
        sub_8_root_sub_0_root_sub_187_carry[7]) );
  NR2D0 U70 ( .A1(n820), .A2(n199), .ZN(n150) );
  CKND0 U71 ( .I(n150), .ZN(n1090) );
  CKND0 U73 ( .I(y_product[15]), .ZN(n185) );
  NR2D0 U74 ( .A1(y_product[15]), .A2(n35), .ZN(N57) );
  IND2D0 U160 ( .A1(x_product[9]), .B1(n1240), .ZN(
        add_1_root_add_0_root_add_80_3_carry[16]) );
  CKND2D0 U169 ( .A1(x_product[8]), .A2(n61), .ZN(n1240) );
  CKXOR2D0 U189 ( .A1(x_product[9]), .A2(n1240), .Z(N106) );
  INVD1 U201 ( .I(divide_mode), .ZN(n155) );
  CKND0 U257 ( .I(N41), .ZN(n170) );
  CKND0 U259 ( .I(y_product[1]), .ZN(n171) );
  NR2D0 U287 ( .A1(N41), .A2(y_product[1]), .ZN(n710) );
  IND2D0 U288 ( .A1(x_midpoint[1]), .B1(n1110), .ZN(add_77_carry_2_) );
  CKND0 U326 ( .I(y_midpoint[1]), .ZN(n1110) );
  CKND0 U327 ( .I(y_midpoint[3]), .ZN(n157) );
endmodule


module oadm_fixed_l3_divmul_root_opt_csd ( x, y, divide_mode, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  input divide_mode;
  wire   n3;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4;
  assign result[4] = 1'b0;
  assign result[3] = 1'b0;
  assign result[2] = 1'b0;
  assign result[1] = 1'b0;
  assign result[0] = 1'b0;

  oadm_fixed_divmul_root_opt_csd_3_16_10_16_8_e3_b6_95_7c_69_5a_4e_44 implementation ( 
        .x({x[31:10], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .y({y[31:10], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .divide_mode(n3), .result({result[31:5], 
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4}) );
  CKBD1 U1 ( .I(divide_mode), .Z(n3) );
endmodule

