/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Thu Sep  3 21:46:27 2026
/////////////////////////////////////////////////////////////


module CSA3_2_Array_WIDTH24 ( In_1, In_2, In_3, S, C );
  input [23:0] In_1;
  input [23:0] In_2;
  input [23:0] In_3;
  output [23:0] S;
  output [23:0] C;
  wire   In_3_0_, n1, n2, n3, n4, n5, n6, n7, n8, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n9;
  assign S[0] = In_3_0_;
  assign In_3_0_ = In_3[0];

  CKXOR2D1 U1 ( .A1(In_3[9]), .A2(n1), .Z(S[9]) );
  CKXOR2D1 U2 ( .A1(In_3[8]), .A2(n2), .Z(S[8]) );
  CKXOR2D1 U3 ( .A1(In_3[7]), .A2(n3), .Z(S[7]) );
  CKXOR2D1 U4 ( .A1(In_3[6]), .A2(n4), .Z(S[6]) );
  CKXOR2D1 U5 ( .A1(In_3[5]), .A2(n5), .Z(S[5]) );
  CKXOR2D1 U6 ( .A1(In_3[4]), .A2(n6), .Z(S[4]) );
  CKXOR2D1 U7 ( .A1(In_3[3]), .A2(n7), .Z(S[3]) );
  CKXOR2D1 U8 ( .A1(In_3[2]), .A2(n8), .Z(S[2]) );
  CKXOR2D1 U10 ( .A1(In_3[22]), .A2(n10), .Z(S[22]) );
  CKXOR2D1 U11 ( .A1(In_3[21]), .A2(n11), .Z(S[21]) );
  CKXOR2D1 U12 ( .A1(In_3[20]), .A2(n12), .Z(S[20]) );
  CKXOR2D1 U13 ( .A1(In_3[1]), .A2(n13), .Z(S[1]) );
  CKXOR2D1 U14 ( .A1(In_3[19]), .A2(n14), .Z(S[19]) );
  CKXOR2D1 U15 ( .A1(In_3[18]), .A2(n15), .Z(S[18]) );
  CKXOR2D1 U16 ( .A1(In_3[17]), .A2(n16), .Z(S[17]) );
  CKXOR2D1 U17 ( .A1(In_3[16]), .A2(n17), .Z(S[16]) );
  CKXOR2D1 U18 ( .A1(In_3[15]), .A2(n18), .Z(S[15]) );
  CKXOR2D1 U19 ( .A1(In_3[14]), .A2(n19), .Z(S[14]) );
  CKXOR2D1 U20 ( .A1(In_3[13]), .A2(n20), .Z(S[13]) );
  CKXOR2D1 U21 ( .A1(In_3[12]), .A2(n21), .Z(S[12]) );
  CKXOR2D1 U22 ( .A1(In_3[11]), .A2(n22), .Z(S[11]) );
  CKXOR2D1 U23 ( .A1(In_3[10]), .A2(n23), .Z(S[10]) );
  CKXOR2D1 U26 ( .A1(In_2[9]), .A2(In_1[9]), .Z(n1) );
  CKXOR2D1 U28 ( .A1(In_2[8]), .A2(In_1[8]), .Z(n2) );
  CKXOR2D1 U30 ( .A1(In_2[7]), .A2(In_1[7]), .Z(n3) );
  CKXOR2D1 U32 ( .A1(In_2[6]), .A2(In_1[6]), .Z(n4) );
  CKXOR2D1 U34 ( .A1(In_2[5]), .A2(In_1[5]), .Z(n5) );
  CKXOR2D1 U36 ( .A1(In_2[4]), .A2(In_1[4]), .Z(n6) );
  CKXOR2D1 U38 ( .A1(In_2[3]), .A2(In_1[3]), .Z(n7) );
  CKXOR2D1 U40 ( .A1(In_2[2]), .A2(In_1[2]), .Z(n8) );
  CKXOR2D1 U42 ( .A1(In_2[23]), .A2(In_1[23]), .Z(S[23]) );
  CKXOR2D1 U44 ( .A1(In_2[22]), .A2(In_1[22]), .Z(n10) );
  CKXOR2D1 U46 ( .A1(In_2[21]), .A2(In_1[21]), .Z(n11) );
  CKXOR2D1 U48 ( .A1(In_2[20]), .A2(In_1[20]), .Z(n12) );
  CKXOR2D1 U50 ( .A1(In_2[1]), .A2(In_1[1]), .Z(n13) );
  CKXOR2D1 U52 ( .A1(In_2[19]), .A2(In_1[19]), .Z(n14) );
  CKXOR2D1 U54 ( .A1(In_2[18]), .A2(In_1[18]), .Z(n15) );
  CKXOR2D1 U56 ( .A1(In_2[17]), .A2(In_1[17]), .Z(n16) );
  CKXOR2D1 U58 ( .A1(In_2[16]), .A2(In_1[16]), .Z(n17) );
  CKXOR2D1 U60 ( .A1(In_2[15]), .A2(In_1[15]), .Z(n18) );
  CKXOR2D1 U62 ( .A1(In_2[14]), .A2(In_1[14]), .Z(n19) );
  CKXOR2D1 U64 ( .A1(In_2[13]), .A2(In_1[13]), .Z(n20) );
  CKXOR2D1 U66 ( .A1(In_2[12]), .A2(In_1[12]), .Z(n21) );
  CKXOR2D1 U68 ( .A1(In_2[11]), .A2(In_1[11]), .Z(n22) );
  CKXOR2D1 U70 ( .A1(In_2[10]), .A2(In_1[10]), .Z(n23) );
  AO22D0 U25 ( .A1(In_2[1]), .A2(In_1[1]), .B1(n13), .B2(In_3[1]), .Z(C[1]) );
  AO22D0 U27 ( .A1(In_2[2]), .A2(In_1[2]), .B1(n8), .B2(In_3[2]), .Z(C[2]) );
  AO22D0 U29 ( .A1(In_2[3]), .A2(In_1[3]), .B1(n7), .B2(In_3[3]), .Z(C[3]) );
  AO22D0 U31 ( .A1(In_2[4]), .A2(In_1[4]), .B1(n6), .B2(In_3[4]), .Z(C[4]) );
  AO22D0 U33 ( .A1(In_2[5]), .A2(In_1[5]), .B1(n5), .B2(In_3[5]), .Z(C[5]) );
  AO22D0 U35 ( .A1(In_2[6]), .A2(In_1[6]), .B1(n4), .B2(In_3[6]), .Z(C[6]) );
  AO22D0 U37 ( .A1(In_2[7]), .A2(In_1[7]), .B1(n3), .B2(In_3[7]), .Z(C[7]) );
  AO22D0 U39 ( .A1(In_2[8]), .A2(In_1[8]), .B1(n2), .B2(In_3[8]), .Z(C[8]) );
  AO22D0 U41 ( .A1(In_2[9]), .A2(In_1[9]), .B1(n1), .B2(In_3[9]), .Z(C[9]) );
  AO22D0 U43 ( .A1(In_2[10]), .A2(In_1[10]), .B1(n23), .B2(In_3[10]), .Z(C[10]) );
  AO22D0 U45 ( .A1(In_2[11]), .A2(In_1[11]), .B1(n22), .B2(In_3[11]), .Z(C[11]) );
  AO22D0 U47 ( .A1(In_2[12]), .A2(In_1[12]), .B1(n21), .B2(In_3[12]), .Z(C[12]) );
  AO22D0 U49 ( .A1(In_2[13]), .A2(In_1[13]), .B1(n20), .B2(In_3[13]), .Z(C[13]) );
  AO22D0 U51 ( .A1(In_2[14]), .A2(In_1[14]), .B1(n19), .B2(In_3[14]), .Z(C[14]) );
  AO22D0 U53 ( .A1(In_2[15]), .A2(In_1[15]), .B1(n18), .B2(In_3[15]), .Z(C[15]) );
  AO22D0 U55 ( .A1(In_2[16]), .A2(In_1[16]), .B1(n17), .B2(In_3[16]), .Z(C[16]) );
  AO22D0 U57 ( .A1(In_2[17]), .A2(In_1[17]), .B1(n16), .B2(In_3[17]), .Z(C[17]) );
  AO22D0 U59 ( .A1(In_2[18]), .A2(In_1[18]), .B1(n15), .B2(In_3[18]), .Z(C[18]) );
  AO22D0 U61 ( .A1(In_2[19]), .A2(In_1[19]), .B1(n14), .B2(In_3[19]), .Z(C[19]) );
  AO22D0 U63 ( .A1(In_2[21]), .A2(In_1[21]), .B1(n11), .B2(In_3[21]), .Z(C[21]) );
  AO22D0 U65 ( .A1(In_2[22]), .A2(In_1[22]), .B1(n10), .B2(In_3[22]), .Z(C[22]) );
  AO22D0 U67 ( .A1(In_2[20]), .A2(In_1[20]), .B1(n12), .B2(In_3[20]), .Z(C[20]) );
  CKND1 U9 ( .I(n9), .ZN(C[23]) );
  CKND2D0 U24 ( .A1(In_1[23]), .A2(In_2[23]), .ZN(n9) );
endmodule


module CSA3_2_Array_WIDTH25 ( In_1, In_2, In_3, S, C );
  input [24:0] In_1;
  input [24:0] In_2;
  input [24:0] In_3;
  output [24:0] S;
  output [24:0] C;
  wire   In_2_24_, n1, n2, n3, n4, n5, n6, n7, n8, n11, n12, n13, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n9, n10, n26;
  assign S[24] = In_2_24_;
  assign In_2_24_ = In_2[24];

  CKXOR2D1 U1 ( .A1(In_3[9]), .A2(n1), .Z(S[9]) );
  CKXOR2D1 U2 ( .A1(In_3[8]), .A2(n2), .Z(S[8]) );
  CKXOR2D1 U3 ( .A1(In_3[7]), .A2(n3), .Z(S[7]) );
  CKXOR2D1 U4 ( .A1(In_3[6]), .A2(n4), .Z(S[6]) );
  CKXOR2D1 U5 ( .A1(In_3[5]), .A2(n5), .Z(S[5]) );
  CKXOR2D1 U6 ( .A1(In_3[4]), .A2(n6), .Z(S[4]) );
  CKXOR2D1 U7 ( .A1(In_3[3]), .A2(n7), .Z(S[3]) );
  CKXOR2D1 U8 ( .A1(In_3[2]), .A2(n8), .Z(S[2]) );
  CKXOR2D1 U11 ( .A1(In_3[22]), .A2(n11), .Z(S[22]) );
  CKXOR2D1 U12 ( .A1(In_3[21]), .A2(n12), .Z(S[21]) );
  CKXOR2D1 U13 ( .A1(In_3[20]), .A2(n13), .Z(S[20]) );
  CKXOR2D1 U14 ( .A1(In_3[1]), .A2(In_1[1]), .Z(S[1]) );
  CKXOR2D1 U15 ( .A1(In_3[19]), .A2(n15), .Z(S[19]) );
  CKXOR2D1 U16 ( .A1(In_3[18]), .A2(n16), .Z(S[18]) );
  CKXOR2D1 U17 ( .A1(In_3[17]), .A2(n17), .Z(S[17]) );
  CKXOR2D1 U18 ( .A1(In_3[16]), .A2(n18), .Z(S[16]) );
  CKXOR2D1 U19 ( .A1(In_3[15]), .A2(n19), .Z(S[15]) );
  CKXOR2D1 U20 ( .A1(In_3[14]), .A2(n20), .Z(S[14]) );
  CKXOR2D1 U21 ( .A1(In_3[13]), .A2(n21), .Z(S[13]) );
  CKXOR2D1 U22 ( .A1(In_3[12]), .A2(n22), .Z(S[12]) );
  CKXOR2D1 U23 ( .A1(In_3[11]), .A2(n23), .Z(S[11]) );
  CKXOR2D1 U24 ( .A1(In_3[10]), .A2(n24), .Z(S[10]) );
  CKXOR2D1 U25 ( .A1(In_3[0]), .A2(In_1[0]), .Z(S[0]) );
  CKXOR2D1 U27 ( .A1(In_2[9]), .A2(In_1[9]), .Z(n1) );
  CKXOR2D1 U29 ( .A1(In_2[8]), .A2(In_1[8]), .Z(n2) );
  CKXOR2D1 U31 ( .A1(In_2[7]), .A2(In_1[7]), .Z(n3) );
  CKXOR2D1 U33 ( .A1(In_2[6]), .A2(In_1[6]), .Z(n4) );
  CKXOR2D1 U35 ( .A1(In_2[5]), .A2(In_1[5]), .Z(n5) );
  CKXOR2D1 U37 ( .A1(In_2[4]), .A2(In_1[4]), .Z(n6) );
  CKXOR2D1 U39 ( .A1(In_2[3]), .A2(In_1[3]), .Z(n7) );
  CKXOR2D1 U41 ( .A1(In_2[2]), .A2(In_1[2]), .Z(n8) );
  CKXOR2D1 U45 ( .A1(In_2[23]), .A2(In_1[23]), .Z(S[23]) );
  CKXOR2D1 U47 ( .A1(In_2[22]), .A2(In_1[22]), .Z(n11) );
  CKXOR2D1 U49 ( .A1(In_2[21]), .A2(In_1[21]), .Z(n12) );
  CKXOR2D1 U51 ( .A1(In_2[20]), .A2(In_1[20]), .Z(n13) );
  CKXOR2D1 U55 ( .A1(In_2[19]), .A2(In_1[19]), .Z(n15) );
  CKXOR2D1 U57 ( .A1(In_2[18]), .A2(In_1[18]), .Z(n16) );
  CKXOR2D1 U59 ( .A1(In_2[17]), .A2(In_1[17]), .Z(n17) );
  CKXOR2D1 U61 ( .A1(In_2[16]), .A2(In_1[16]), .Z(n18) );
  CKXOR2D1 U63 ( .A1(In_2[15]), .A2(In_1[15]), .Z(n19) );
  CKXOR2D1 U65 ( .A1(In_2[14]), .A2(In_1[14]), .Z(n20) );
  CKXOR2D1 U67 ( .A1(In_2[13]), .A2(In_1[13]), .Z(n21) );
  CKXOR2D1 U69 ( .A1(In_2[12]), .A2(In_1[12]), .Z(n22) );
  CKXOR2D1 U71 ( .A1(In_2[11]), .A2(In_1[11]), .Z(n23) );
  CKXOR2D1 U73 ( .A1(In_2[10]), .A2(In_1[10]), .Z(n24) );
  AO22D0 U26 ( .A1(In_2[20]), .A2(In_1[20]), .B1(n13), .B2(In_3[20]), .Z(C[20]) );
  AO22D0 U30 ( .A1(In_2[2]), .A2(In_1[2]), .B1(n8), .B2(In_3[2]), .Z(C[2]) );
  AO22D0 U32 ( .A1(In_2[3]), .A2(In_1[3]), .B1(n7), .B2(In_3[3]), .Z(C[3]) );
  AO22D0 U34 ( .A1(In_2[4]), .A2(In_1[4]), .B1(n6), .B2(In_3[4]), .Z(C[4]) );
  AO22D0 U36 ( .A1(In_2[5]), .A2(In_1[5]), .B1(n5), .B2(In_3[5]), .Z(C[5]) );
  AO22D0 U38 ( .A1(In_2[6]), .A2(In_1[6]), .B1(n4), .B2(In_3[6]), .Z(C[6]) );
  AO22D0 U40 ( .A1(In_2[7]), .A2(In_1[7]), .B1(n3), .B2(In_3[7]), .Z(C[7]) );
  AO22D0 U42 ( .A1(In_2[8]), .A2(In_1[8]), .B1(n2), .B2(In_3[8]), .Z(C[8]) );
  AO22D0 U44 ( .A1(In_2[9]), .A2(In_1[9]), .B1(n1), .B2(In_3[9]), .Z(C[9]) );
  AO22D0 U46 ( .A1(In_2[10]), .A2(In_1[10]), .B1(n24), .B2(In_3[10]), .Z(C[10]) );
  AO22D0 U48 ( .A1(In_2[11]), .A2(In_1[11]), .B1(n23), .B2(In_3[11]), .Z(C[11]) );
  AO22D0 U50 ( .A1(In_2[12]), .A2(In_1[12]), .B1(n22), .B2(In_3[12]), .Z(C[12]) );
  AO22D0 U52 ( .A1(In_2[13]), .A2(In_1[13]), .B1(n21), .B2(In_3[13]), .Z(C[13]) );
  AO22D0 U54 ( .A1(In_2[14]), .A2(In_1[14]), .B1(n20), .B2(In_3[14]), .Z(C[14]) );
  AO22D0 U56 ( .A1(In_2[15]), .A2(In_1[15]), .B1(n19), .B2(In_3[15]), .Z(C[15]) );
  AO22D0 U58 ( .A1(In_2[16]), .A2(In_1[16]), .B1(n18), .B2(In_3[16]), .Z(C[16]) );
  AO22D0 U60 ( .A1(In_2[17]), .A2(In_1[17]), .B1(n17), .B2(In_3[17]), .Z(C[17]) );
  AO22D0 U62 ( .A1(In_2[18]), .A2(In_1[18]), .B1(n16), .B2(In_3[18]), .Z(C[18]) );
  AO22D0 U64 ( .A1(In_2[19]), .A2(In_1[19]), .B1(n15), .B2(In_3[19]), .Z(C[19]) );
  AO22D0 U66 ( .A1(In_2[22]), .A2(In_1[22]), .B1(n11), .B2(In_3[22]), .Z(C[22]) );
  AO22D0 U68 ( .A1(In_2[21]), .A2(In_1[21]), .B1(n12), .B2(In_3[21]), .Z(C[21]) );
  CKND1 U9 ( .I(n9), .ZN(C[23]) );
  CKND2D0 U10 ( .A1(In_1[23]), .A2(In_2[23]), .ZN(n9) );
  CKND0 U28 ( .I(n26), .ZN(C[1]) );
  CKND1 U43 ( .I(n10), .ZN(C[0]) );
  CKND2D0 U53 ( .A1(In_3[1]), .A2(In_1[1]), .ZN(n26) );
  CKND2D0 U70 ( .A1(In_3[0]), .A2(In_1[0]), .ZN(n10) );
endmodule


module CSA3_2_Array_WIDTH4 ( In_1, In_2, In_3, S, C );
  input [3:0] In_1;
  input [3:0] In_2;
  input [3:0] In_3;
  output [3:0] S;
  output [3:0] C;
  wire   n3, n4, n1, n2, n5, n6, n7;

  CKXOR2D1 U8 ( .A1(In_2[2]), .A2(In_1[2]), .Z(S[2]) );
  CKND0 U1 ( .I(n7), .ZN(C[2]) );
  CKND2D0 U2 ( .A1(n6), .A2(n5), .ZN(C[1]) );
  CKND2D0 U3 ( .A1(In_1[2]), .A2(In_2[2]), .ZN(n7) );
  CKND0 U4 ( .I(n5), .ZN(n3) );
  XNR2D0 U5 ( .A1(In_2[1]), .A2(In_1[1]), .ZN(n5) );
  CKND0 U6 ( .I(n3), .ZN(S[1]) );
  CKND2D0 U7 ( .A1(n2), .A2(n1), .ZN(C[0]) );
  CKND2D0 U9 ( .A1(In_1[1]), .A2(In_2[1]), .ZN(n6) );
  CKND0 U10 ( .I(n1), .ZN(n4) );
  XNR2D0 U11 ( .A1(In_2[0]), .A2(In_1[0]), .ZN(n1) );
  CKND1 U12 ( .I(n4), .ZN(S[0]) );
  CKND2D0 U13 ( .A1(In_1[0]), .A2(In_2[0]), .ZN(n2) );
endmodule


module Mantissa_OAUM_MANTISSA_WIDTH23_ACC_30_DW01_add_0 ( A, B, CI, SUM, CO );
  input [25:0] A;
  input [25:0] B;
  output [25:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [25:3] carry;

  FA1D0 U1_24 ( .A(A[24]), .B(B[24]), .CI(carry[24]), .CO(carry[25]), .S(
        SUM[24]) );
  FA1D0 U1_23 ( .A(A[23]), .B(B[23]), .CI(n1), .CO(carry[24]), .S(SUM[23]) );
  XOR3D1 U1_25 ( .A1(1'b0), .A2(B[25]), .A3(carry[25]), .Z(SUM[25]) );
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
  FA1D0 U1_2 ( .A(A[2]), .B(B[2]), .CI(n2), .CO(carry[3]), .S(SUM[2]) );
  FA1D0 U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  AN2XD1 U1 ( .A1(carry[22]), .A2(A[22]), .Z(n1) );
  AN2XD1 U2 ( .A1(B[1]), .A2(A[1]), .Z(n2) );
  CKXOR2D1 U3 ( .A1(carry[22]), .A2(A[22]), .Z(SUM[22]) );
  CKXOR2D1 U4 ( .A1(B[1]), .A2(A[1]), .Z(SUM[1]) );
endmodule


module Mantissa_OAUM_MANTISSA_WIDTH23_ACC_30 ( Mantissa_X, Mantissa_Y, 
        Mantissa_Out, Shift );
  input [37:15] Mantissa_X;
  input [37:15] Mantissa_Y;
  output [37:15] Mantissa_Out;
  output [1:0] Shift;
  wire   n4, final_add_1_16_, final_add_1_15_, final_add_1_14_, final_sum_14_,
         final_sum_13_, final_sum_12_, final_sum_11_, final_sum_10_,
         final_sum_9_, final_sum_8_, final_sum_7_, final_sum_6_, final_sum_5_,
         final_sum_4_, final_sum_3_, final_sum_2_, final_sum_1_, final_sum_0_,
         final_sum__1_, final_sum__2_, final_sum__3_, final_sum__4_,
         final_sum__5_, final_sum__6_, final_sum__7_, final_sum__8_, n31, n32,
         n2, n3, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30;
  wire   [38:15] s_1_0;
  wire   [38:16] s_1_1;
  wire   [40:16] s_2_0;
  wire   [39:16] s_2_1;
  wire   [15:13] s_3_0;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4;

  CSA3_2_Array_WIDTH24 Stage_0_0 ( .In_1({Mantissa_X, 1'b0}), .In_2({
        Mantissa_Y, 1'b0}), .In_3({1'b0, Mantissa_X}), .S(s_1_0), .C({s_1_1, 
        SYNOPSYS_UNCONNECTED__0}) );
  CSA3_2_Array_WIDTH25 Stage_1_0 ( .In_1({1'b0, s_1_0}), .In_2({s_1_1, 1'b0, 
        1'b0}), .In_3({1'b0, 1'b0, Mantissa_Y}), .S(s_2_0), .C({
        SYNOPSYS_UNCONNECTED__1, s_2_1}) );
  CSA3_2_Array_WIDTH4 Stage_2_0 ( .In_1({1'b0, s_2_0[40:38]}), .In_2({1'b0, 
        s_2_1[39:37]}), .In_3({1'b0, 1'b0, 1'b0, 1'b0}), .S({
        SYNOPSYS_UNCONNECTED__2, s_3_0}), .C({SYNOPSYS_UNCONNECTED__3, 
        final_add_1_16_, final_add_1_15_, final_add_1_14_}) );
  Mantissa_OAUM_MANTISSA_WIDTH23_ACC_30_DW01_add_0 add_131 ( .A({1'b0, s_3_0, 
        s_2_0[37:16]}), .B({final_add_1_16_, final_add_1_15_, final_add_1_14_, 
        n4, s_2_1[36:16], n4}), .CI(n4), .SUM({Shift, final_sum_14_, 
        final_sum_13_, final_sum_12_, final_sum_11_, final_sum_10_, 
        final_sum_9_, final_sum_8_, final_sum_7_, final_sum_6_, final_sum_5_, 
        final_sum_4_, final_sum_3_, final_sum_2_, final_sum_1_, final_sum_0_, 
        final_sum__1_, final_sum__2_, final_sum__3_, final_sum__4_, 
        final_sum__5_, final_sum__6_, final_sum__7_, final_sum__8_, 
        SYNOPSYS_UNCONNECTED__4}) );
  OAI222D0 U3 ( .A1(n13), .A2(n31), .B1(n2), .B2(n14), .C1(n12), .C2(n5), .ZN(
        Mantissa_Out[31]) );
  OAI222D0 U4 ( .A1(n31), .A2(n27), .B1(n2), .B2(n28), .C1(n5), .C2(n26), .ZN(
        Mantissa_Out[17]) );
  OAI222D0 U5 ( .A1(n31), .A2(n26), .B1(n32), .B2(n27), .C1(n5), .C2(n25), 
        .ZN(Mantissa_Out[18]) );
  OAI222D0 U6 ( .A1(n31), .A2(n25), .B1(n3), .B2(n26), .C1(n5), .C2(n24), .ZN(
        Mantissa_Out[19]) );
  OAI222D0 U7 ( .A1(n31), .A2(n24), .B1(n2), .B2(n25), .C1(n5), .C2(n23), .ZN(
        Mantissa_Out[20]) );
  OAI222D0 U8 ( .A1(n31), .A2(n23), .B1(n32), .B2(n24), .C1(n5), .C2(n22), 
        .ZN(Mantissa_Out[21]) );
  OAI222D0 U9 ( .A1(n31), .A2(n22), .B1(n3), .B2(n23), .C1(n5), .C2(n21), .ZN(
        Mantissa_Out[22]) );
  OAI222D0 U10 ( .A1(n31), .A2(n20), .B1(n32), .B2(n21), .C1(n5), .C2(n19), 
        .ZN(Mantissa_Out[24]) );
  OAI222D0 U11 ( .A1(n31), .A2(n18), .B1(n3), .B2(n19), .C1(n5), .C2(n17), 
        .ZN(Mantissa_Out[26]) );
  OAI222D0 U12 ( .A1(n31), .A2(n17), .B1(n32), .B2(n18), .C1(n5), .C2(n16), 
        .ZN(Mantissa_Out[27]) );
  OAI222D0 U13 ( .A1(n31), .A2(n16), .B1(n2), .B2(n17), .C1(n5), .C2(n15), 
        .ZN(Mantissa_Out[28]) );
  OAI222D0 U14 ( .A1(n31), .A2(n15), .B1(n3), .B2(n16), .C1(n5), .C2(n14), 
        .ZN(Mantissa_Out[29]) );
  OAI222D0 U15 ( .A1(n31), .A2(n14), .B1(n32), .B2(n15), .C1(n13), .C2(n5), 
        .ZN(Mantissa_Out[30]) );
  OAI222D0 U16 ( .A1(n31), .A2(n12), .B1(n3), .B2(n13), .C1(n5), .C2(n11), 
        .ZN(Mantissa_Out[32]) );
  OAI222D0 U17 ( .A1(n31), .A2(n11), .B1(n2), .B2(n12), .C1(n5), .C2(n10), 
        .ZN(Mantissa_Out[33]) );
  OAI222D0 U18 ( .A1(n31), .A2(n10), .B1(n3), .B2(n11), .C1(n5), .C2(n9), .ZN(
        Mantissa_Out[34]) );
  OAI222D0 U19 ( .A1(n31), .A2(n21), .B1(n32), .B2(n22), .C1(n5), .C2(n20), 
        .ZN(Mantissa_Out[23]) );
  OAI222D0 U20 ( .A1(n31), .A2(n19), .B1(n2), .B2(n20), .C1(n5), .C2(n18), 
        .ZN(Mantissa_Out[25]) );
  OAI222D0 U21 ( .A1(n31), .A2(n7), .B1(n3), .B2(n8), .C1(n6), .C2(n5), .ZN(
        Mantissa_Out[37]) );
  OAI222D0 U22 ( .A1(n31), .A2(n9), .B1(n32), .B2(n10), .C1(n5), .C2(n8), .ZN(
        Mantissa_Out[35]) );
  OAI222D0 U23 ( .A1(n31), .A2(n8), .B1(n2), .B2(n9), .C1(n5), .C2(n7), .ZN(
        Mantissa_Out[36]) );
  OAI222D0 U24 ( .A1(n31), .A2(n28), .B1(n3), .B2(n29), .C1(n5), .C2(n27), 
        .ZN(Mantissa_Out[16]) );
  ND2D1 U25 ( .A1(n6), .A2(n5), .ZN(n3) );
  ND2D1 U26 ( .A1(n6), .A2(n5), .ZN(n2) );
  ND2D1 U27 ( .A1(n6), .A2(n5), .ZN(n32) );
  INVD1 U28 ( .I(final_sum_12_), .ZN(n9) );
  INVD1 U29 ( .I(final_sum_11_), .ZN(n10) );
  INVD1 U30 ( .I(final_sum_10_), .ZN(n11) );
  INVD1 U31 ( .I(final_sum_9_), .ZN(n12) );
  INVD1 U32 ( .I(final_sum_8_), .ZN(n13) );
  INVD1 U33 ( .I(final_sum_7_), .ZN(n14) );
  INVD1 U34 ( .I(final_sum_6_), .ZN(n15) );
  INVD1 U35 ( .I(final_sum_5_), .ZN(n16) );
  INVD1 U36 ( .I(final_sum_4_), .ZN(n17) );
  INVD1 U37 ( .I(final_sum_3_), .ZN(n18) );
  INVD1 U38 ( .I(final_sum_2_), .ZN(n19) );
  INVD1 U39 ( .I(final_sum_1_), .ZN(n20) );
  INVD1 U40 ( .I(final_sum_0_), .ZN(n21) );
  INVD1 U41 ( .I(final_sum__1_), .ZN(n22) );
  INVD1 U42 ( .I(final_sum__2_), .ZN(n23) );
  INVD1 U43 ( .I(final_sum__3_), .ZN(n24) );
  INVD1 U44 ( .I(final_sum__4_), .ZN(n25) );
  INVD1 U45 ( .I(final_sum__5_), .ZN(n26) );
  INVD1 U46 ( .I(final_sum__6_), .ZN(n27) );
  INVD1 U47 ( .I(final_sum__7_), .ZN(n28) );
  INVD1 U48 ( .I(Shift[1]), .ZN(n5) );
  ND2D1 U49 ( .A1(Shift[0]), .A2(n5), .ZN(n31) );
  OAI222D0 U50 ( .A1(n29), .A2(n31), .B1(n30), .B2(n2), .C1(n28), .C2(n5), 
        .ZN(Mantissa_Out[15]) );
  INVD1 U51 ( .I(s_2_0[16]), .ZN(n30) );
  INVD1 U52 ( .I(Shift[0]), .ZN(n6) );
  INVD1 U53 ( .I(final_sum_14_), .ZN(n7) );
  INVD1 U54 ( .I(final_sum_13_), .ZN(n8) );
  INVD1 U55 ( .I(final_sum__8_), .ZN(n29) );
  TIEL U56 ( .ZN(n4) );
endmodule


module fp32_normal_finite_wrapper_DW01_add_3_DW01_add_4 ( A, B, CI, SUM, CO );
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
  wire   N42, N41, N40, N39, N38, N37, N36, N35, N34, N33, N32, N31, N30, N29,
         N28, N27, n1, n4, n5, n6, n7, n8, n80, n81;
  wire   [7:2] add_0_root_add_0_root_add_25_2_carry;

  CKXOR2D1 U2 ( .A1(y[31]), .A2(x[31]), .Z(result[31]) );
  fp32_normal_finite_wrapper_DW01_add_3_DW01_add_4 add_1_root_add_0_root_add_25_2 ( 
        .A(x[30:23]), .B({N42, N41, N40, N39, N38, N37, N36, N35}), .CI(n80), 
        .SUM({N34, N33, N32, N31, N30, N29, N28, N27}) );
  AN2XD1 U3 ( .A1(exponent_adjust[0]), .A2(N27), .Z(n1) );
  CKBD1 U6 ( .I(result_fraction[16]), .Z(result[16]) );
  CKBD1 U7 ( .I(result_fraction[2]), .Z(result[2]) );
  CKBD1 U8 ( .I(result_fraction[3]), .Z(result[3]) );
  CKBD1 U9 ( .I(result_fraction[4]), .Z(result[4]) );
  CKBD1 U10 ( .I(result_fraction[5]), .Z(result[5]) );
  CKBD1 U11 ( .I(result_fraction[6]), .Z(result[6]) );
  CKBD1 U12 ( .I(result_fraction[7]), .Z(result[7]) );
  CKBD1 U13 ( .I(result_fraction[9]), .Z(result[9]) );
  CKBD1 U14 ( .I(result_fraction[11]), .Z(result[11]) );
  CKBD1 U15 ( .I(result_fraction[12]), .Z(result[12]) );
  CKBD1 U16 ( .I(result_fraction[13]), .Z(result[13]) );
  CKBD1 U17 ( .I(result_fraction[14]), .Z(result[14]) );
  CKBD1 U18 ( .I(result_fraction[15]), .Z(result[15]) );
  CKBD1 U19 ( .I(result_fraction[17]), .Z(result[17]) );
  CKBD1 U20 ( .I(result_fraction[18]), .Z(result[18]) );
  CKBD1 U21 ( .I(result_fraction[19]), .Z(result[19]) );
  CKBD1 U22 ( .I(result_fraction[8]), .Z(result[8]) );
  CKBD1 U23 ( .I(result_fraction[10]), .Z(result[10]) );
  CKBD1 U25 ( .I(result_fraction[22]), .Z(result[22]) );
  CKBD1 U26 ( .I(result_fraction[20]), .Z(result[20]) );
  CKBD1 U27 ( .I(result_fraction[21]), .Z(result[21]) );
  CKBD1 U28 ( .I(result_fraction[1]), .Z(result[1]) );
  FA1D0 U29 ( .A(N28), .B(exponent_adjust[1]), .CI(n1), .CO(
        add_0_root_add_0_root_add_25_2_carry[2]), .S(result[24]) );
  FA1D0 U30 ( .A(N29), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[2]), .CO(
        add_0_root_add_0_root_add_25_2_carry[3]), .S(result[25]) );
  FA1D0 U31 ( .A(N30), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[3]), .CO(
        add_0_root_add_0_root_add_25_2_carry[4]), .S(result[26]) );
  FA1D0 U32 ( .A(N31), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[4]), .CO(
        add_0_root_add_0_root_add_25_2_carry[5]), .S(result[27]) );
  FA1D0 U33 ( .A(N32), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[5]), .CO(
        add_0_root_add_0_root_add_25_2_carry[6]), .S(result[28]) );
  FA1D0 U34 ( .A(N33), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[6]), .CO(
        add_0_root_add_0_root_add_25_2_carry[7]), .S(result[29]) );
  CKBD1 U35 ( .I(result_fraction[0]), .Z(result[0]) );
  XOR3D1 U44 ( .A1(N34), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_25_2_carry[7]), .Z(result[30]) );
  CKBD1 U45 ( .I(y[1]), .Z(fraction_y[1]) );
  CKBD1 U46 ( .I(y[0]), .Z(fraction_y[0]) );
  CKBD1 U48 ( .I(y[2]), .Z(fraction_y[2]) );
  CKBD1 U50 ( .I(y[3]), .Z(fraction_y[3]) );
  CKBD1 U52 ( .I(y[4]), .Z(fraction_y[4]) );
  CKBD1 U54 ( .I(y[5]), .Z(fraction_y[5]) );
  CKBD1 U56 ( .I(y[6]), .Z(fraction_y[6]) );
  CKBD1 U58 ( .I(y[7]), .Z(fraction_y[7]) );
  CKBD1 U60 ( .I(y[8]), .Z(fraction_y[8]) );
  CKBD1 U61 ( .I(y[9]), .Z(fraction_y[9]) );
  CKBD1 U62 ( .I(y[10]), .Z(fraction_y[10]) );
  CKBD1 U63 ( .I(y[11]), .Z(fraction_y[11]) );
  CKBD1 U64 ( .I(y[12]), .Z(fraction_y[12]) );
  CKBD1 U65 ( .I(y[13]), .Z(fraction_y[13]) );
  CKBD1 U66 ( .I(y[14]), .Z(fraction_y[14]) );
  CKBD1 U67 ( .I(y[15]), .Z(fraction_y[15]) );
  CKBD1 U68 ( .I(y[16]), .Z(fraction_y[16]) );
  CKBD1 U69 ( .I(y[17]), .Z(fraction_y[17]) );
  CKBD1 U70 ( .I(y[18]), .Z(fraction_y[18]) );
  CKBD1 U71 ( .I(y[19]), .Z(fraction_y[19]) );
  CKBD1 U72 ( .I(y[21]), .Z(fraction_y[21]) );
  CKBD1 U73 ( .I(y[22]), .Z(fraction_y[22]) );
  CKBD1 U74 ( .I(y[20]), .Z(fraction_y[20]) );
  AN2XD1 U75 ( .A1(y[23]), .A2(y[24]), .Z(n4) );
  AN2XD1 U76 ( .A1(n4), .A2(y[25]), .Z(n5) );
  AN2XD1 U77 ( .A1(n5), .A2(y[26]), .Z(n6) );
  AN2XD1 U78 ( .A1(n6), .A2(y[27]), .Z(n7) );
  AN2XD1 U79 ( .A1(n7), .A2(y[28]), .Z(n8) );
  CKBD1 U87 ( .I(x[22]), .Z(fraction_x[22]) );
  CKBD1 U88 ( .I(x[21]), .Z(fraction_x[21]) );
  CKBD1 U89 ( .I(x[20]), .Z(fraction_x[20]) );
  CKBD1 U90 ( .I(x[19]), .Z(fraction_x[19]) );
  CKBD1 U91 ( .I(x[18]), .Z(fraction_x[18]) );
  CKBD1 U92 ( .I(x[17]), .Z(fraction_x[17]) );
  CKBD1 U93 ( .I(x[16]), .Z(fraction_x[16]) );
  CKBD1 U94 ( .I(x[15]), .Z(fraction_x[15]) );
  CKBD1 U95 ( .I(x[14]), .Z(fraction_x[14]) );
  CKBD1 U96 ( .I(x[13]), .Z(fraction_x[13]) );
  CKBD1 U97 ( .I(x[12]), .Z(fraction_x[12]) );
  CKBD1 U98 ( .I(x[11]), .Z(fraction_x[11]) );
  CKBD1 U99 ( .I(x[10]), .Z(fraction_x[10]) );
  CKBD1 U100 ( .I(x[9]), .Z(fraction_x[9]) );
  CKBD1 U101 ( .I(x[8]), .Z(fraction_x[8]) );
  CKBD1 U102 ( .I(x[7]), .Z(fraction_x[7]) );
  CKBD1 U103 ( .I(x[6]), .Z(fraction_x[6]) );
  CKBD1 U104 ( .I(x[5]), .Z(fraction_x[5]) );
  CKBD1 U105 ( .I(x[4]), .Z(fraction_x[4]) );
  CKBD1 U106 ( .I(x[3]), .Z(fraction_x[3]) );
  CKBD1 U107 ( .I(x[2]), .Z(fraction_x[2]) );
  CKBD1 U108 ( .I(x[1]), .Z(fraction_x[1]) );
  CKBD1 U109 ( .I(x[0]), .Z(fraction_x[0]) );
  TIEL U110 ( .ZN(n80) );
  CKXOR2D1 U113 ( .A1(exponent_adjust[0]), .A2(N27), .Z(result[23]) );
  CKXOR2D1 U114 ( .A1(y[23]), .A2(y[24]), .Z(N36) );
  CKXOR2D1 U115 ( .A1(n4), .A2(y[25]), .Z(N37) );
  CKXOR2D1 U116 ( .A1(n5), .A2(y[26]), .Z(N38) );
  CKXOR2D1 U117 ( .A1(n6), .A2(y[27]), .Z(N39) );
  CKXOR2D1 U118 ( .A1(n7), .A2(y[28]), .Z(N40) );
  CKXOR2D1 U119 ( .A1(n8), .A2(y[29]), .Z(N41) );
  CKND0 U120 ( .I(y[23]), .ZN(N35) );
  CKXOR2D0 U4 ( .A1(y[30]), .A2(n81), .Z(N42) );
  CKND2D0 U5 ( .A1(y[29]), .A2(n8), .ZN(n81) );
endmodule


module amlib_oam_fp32_common_LEVEL0 ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;

  wire   [22:0] fraction_x;
  wire   [22:0] fraction_y;
  wire   [22:0] result_fraction;
  wire   [1:0] shift;
  wire   [2:0] exponent_adjust;

  Mantissa_OAUM_MANTISSA_WIDTH23_ACC_30 oam_core ( .Mantissa_X(fraction_x), 
        .Mantissa_Y(fraction_y), .Mantissa_Out(result_fraction), .Shift(shift)
         );
  fp32_normal_finite_wrapper fp_wrapper ( .x(x), .y(y), .divide_mode(1'b0), 
        .fraction_x(fraction_x), .fraction_y(fraction_y), .result_fraction(
        result_fraction), .exponent_adjust({exponent_adjust[2], 
        exponent_adjust[2], exponent_adjust[0]}), .result(result) );
  NR2D1 U3 ( .A1(shift[0]), .A2(shift[1]), .ZN(exponent_adjust[2]) );
  IND2D1 U4 ( .A1(shift[1]), .B1(shift[0]), .ZN(exponent_adjust[0]) );
endmodule


module amlib_oam_l0_fp32_common ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;


  amlib_oam_fp32_common_LEVEL0 impl ( .x(x), .y(y), .result(result) );
endmodule

