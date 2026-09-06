/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Sat Sep  5 13:16:34 2026
/////////////////////////////////////////////////////////////


module CSA3_2_Array_WIDTH9_0 ( In_1, In_2, In_3, S, C );
  input [8:0] In_1;
  input [8:0] In_2;
  input [8:0] In_3;
  output [8:0] S;
  output [8:0] C;
  wire   n10, n11, n12, n13, n14, n15, n16, n17;

  CKXOR2D1 U2 ( .A1(In_3[7]), .A2(In_2[7]), .Z(S[7]) );
  CKXOR2D1 U3 ( .A1(In_3[6]), .A2(In_2[6]), .Z(S[6]) );
  CKXOR2D1 U4 ( .A1(In_3[5]), .A2(In_2[5]), .Z(S[5]) );
  CKXOR2D1 U5 ( .A1(In_3[4]), .A2(In_2[4]), .Z(S[4]) );
  CKXOR2D1 U6 ( .A1(In_3[3]), .A2(In_2[3]), .Z(S[3]) );
  CKXOR2D1 U7 ( .A1(In_3[2]), .A2(In_2[2]), .Z(S[2]) );
  CKXOR2D1 U8 ( .A1(In_3[1]), .A2(In_2[1]), .Z(S[1]) );
  CKXOR2D1 U9 ( .A1(In_3[0]), .A2(In_2[0]), .Z(S[0]) );
  XNR2D0 U1 ( .A1(In_3[8]), .A2(In_2[8]), .ZN(S[8]) );
  CKND0 U10 ( .I(n17), .ZN(C[7]) );
  CKND1 U11 ( .I(n16), .ZN(C[6]) );
  CKND2D0 U12 ( .A1(In_3[7]), .A2(In_2[7]), .ZN(n17) );
  CKND1 U13 ( .I(n15), .ZN(C[5]) );
  CKND2D0 U14 ( .A1(In_3[6]), .A2(In_2[6]), .ZN(n16) );
  CKND1 U15 ( .I(n14), .ZN(C[4]) );
  CKND2D0 U16 ( .A1(In_3[5]), .A2(In_2[5]), .ZN(n15) );
  CKND1 U17 ( .I(n13), .ZN(C[3]) );
  CKND2D0 U18 ( .A1(In_3[4]), .A2(In_2[4]), .ZN(n14) );
  CKND1 U19 ( .I(n12), .ZN(C[2]) );
  CKND2D0 U20 ( .A1(In_3[3]), .A2(In_2[3]), .ZN(n13) );
  CKND1 U21 ( .I(n11), .ZN(C[1]) );
  CKND1 U22 ( .I(n10), .ZN(C[0]) );
  CKND2D0 U23 ( .A1(In_3[2]), .A2(In_2[2]), .ZN(n12) );
  CKND2D0 U24 ( .A1(In_3[1]), .A2(In_2[1]), .ZN(n11) );
  CKND2D0 U25 ( .A1(In_3[0]), .A2(In_2[0]), .ZN(n10) );
endmodule


module CSA3_2_Array_WIDTH9_5 ( In_1, In_2, In_3, S, C );
  input [8:0] In_1;
  input [8:0] In_2;
  input [8:0] In_3;
  output [8:0] S;
  output [8:0] C;
  wire   n10, n11, n12, n13, n14, n15, n16, n17;

  CKXOR2D1 U8 ( .A1(In_3[1]), .A2(n11), .Z(S[1]) );
  CKXOR2D1 U9 ( .A1(In_3[0]), .A2(n10), .Z(S[0]) );
  CKXOR2D1 U13 ( .A1(In_2[7]), .A2(In_1[7]), .Z(n17) );
  CKXOR2D1 U15 ( .A1(In_2[6]), .A2(In_1[6]), .Z(n16) );
  CKXOR2D1 U17 ( .A1(In_2[5]), .A2(In_1[5]), .Z(n15) );
  CKXOR2D1 U19 ( .A1(In_2[4]), .A2(In_1[4]), .Z(n14) );
  CKXOR2D1 U21 ( .A1(In_2[3]), .A2(In_1[3]), .Z(n13) );
  CKXOR2D1 U23 ( .A1(In_2[2]), .A2(In_1[2]), .Z(n12) );
  CKXOR2D1 U25 ( .A1(In_2[1]), .A2(In_1[1]), .Z(n11) );
  CKXOR2D1 U27 ( .A1(In_2[0]), .A2(In_1[0]), .Z(n10) );
  CKXOR2D0 U1 ( .A1(In_3[2]), .A2(n12), .Z(S[2]) );
  CKXOR2D0 U2 ( .A1(In_3[3]), .A2(n13), .Z(S[3]) );
  CKXOR2D0 U3 ( .A1(In_3[4]), .A2(n14), .Z(S[4]) );
  CKXOR2D0 U4 ( .A1(In_3[5]), .A2(n15), .Z(S[5]) );
  CKXOR2D0 U5 ( .A1(In_3[6]), .A2(n16), .Z(S[6]) );
  CKXOR2D0 U6 ( .A1(In_3[7]), .A2(n17), .Z(S[7]) );
  AO22D0 U10 ( .A1(In_2[2]), .A2(In_1[2]), .B1(n12), .B2(In_3[2]), .Z(C[2]) );
  AO22D0 U12 ( .A1(In_2[3]), .A2(In_1[3]), .B1(n13), .B2(In_3[3]), .Z(C[3]) );
  AO22D0 U14 ( .A1(In_2[4]), .A2(In_1[4]), .B1(n14), .B2(In_3[4]), .Z(C[4]) );
  AO22D0 U16 ( .A1(In_2[5]), .A2(In_1[5]), .B1(n15), .B2(In_3[5]), .Z(C[5]) );
  AO22D0 U18 ( .A1(In_2[6]), .A2(In_1[6]), .B1(n16), .B2(In_3[6]), .Z(C[6]) );
  AO22D0 U20 ( .A1(In_2[7]), .A2(In_1[7]), .B1(n17), .B2(In_3[7]), .Z(C[7]) );
  AO22D0 U22 ( .A1(In_2[1]), .A2(In_1[1]), .B1(n11), .B2(In_3[1]), .Z(C[1]) );
  AO22D0 U24 ( .A1(In_2[0]), .A2(In_1[0]), .B1(n10), .B2(In_3[0]), .Z(C[0]) );
  XOR3D0 U7 ( .A1(In_3[8]), .A2(In_1[8]), .A3(In_2[8]), .Z(S[8]) );
endmodule


module CSA3_2_Array_WIDTH9_4 ( In_1, In_2, In_3, S, C );
  input [8:0] In_1;
  input [8:0] In_2;
  input [8:0] In_3;
  output [8:0] S;
  output [8:0] C;
  wire   n11, n12, n13, n14, n15, n16, n17, n19;

  CKXOR2D1 U2 ( .A1(In_3[7]), .A2(n17), .Z(S[7]) );
  CKXOR2D1 U3 ( .A1(In_3[6]), .A2(n16), .Z(S[6]) );
  CKXOR2D1 U4 ( .A1(In_3[5]), .A2(n15), .Z(S[5]) );
  CKXOR2D1 U5 ( .A1(In_3[4]), .A2(n14), .Z(S[4]) );
  CKXOR2D1 U6 ( .A1(In_3[3]), .A2(n13), .Z(S[3]) );
  CKXOR2D1 U7 ( .A1(In_3[2]), .A2(n12), .Z(S[2]) );
  CKXOR2D1 U8 ( .A1(In_3[1]), .A2(n11), .Z(S[1]) );
  CKXOR2D1 U9 ( .A1(In_3[0]), .A2(In_1[0]), .Z(S[0]) );
  CKXOR2D1 U13 ( .A1(In_2[7]), .A2(In_1[7]), .Z(n17) );
  CKXOR2D1 U15 ( .A1(In_2[6]), .A2(In_1[6]), .Z(n16) );
  CKXOR2D1 U17 ( .A1(In_2[5]), .A2(In_1[5]), .Z(n15) );
  CKXOR2D1 U19 ( .A1(In_2[4]), .A2(In_1[4]), .Z(n14) );
  CKXOR2D1 U21 ( .A1(In_2[3]), .A2(In_1[3]), .Z(n13) );
  CKXOR2D1 U23 ( .A1(In_2[2]), .A2(In_1[2]), .Z(n12) );
  CKXOR2D1 U25 ( .A1(In_2[1]), .A2(In_1[1]), .Z(n11) );
  AO22D0 U10 ( .A1(In_2[2]), .A2(In_1[2]), .B1(n12), .B2(In_3[2]), .Z(C[2]) );
  AO22D0 U12 ( .A1(In_2[3]), .A2(In_1[3]), .B1(n13), .B2(In_3[3]), .Z(C[3]) );
  AO22D0 U14 ( .A1(In_2[4]), .A2(In_1[4]), .B1(n14), .B2(In_3[4]), .Z(C[4]) );
  AO22D0 U16 ( .A1(In_2[5]), .A2(In_1[5]), .B1(n15), .B2(In_3[5]), .Z(C[5]) );
  AO22D0 U18 ( .A1(In_2[6]), .A2(In_1[6]), .B1(n16), .B2(In_3[6]), .Z(C[6]) );
  AO22D0 U20 ( .A1(In_2[7]), .A2(In_1[7]), .B1(n17), .B2(In_3[7]), .Z(C[7]) );
  AO22D0 U22 ( .A1(In_2[1]), .A2(In_1[1]), .B1(n11), .B2(In_3[1]), .Z(C[1]) );
  XOR3D0 U1 ( .A1(In_3[8]), .A2(In_1[8]), .A3(In_2[8]), .Z(S[8]) );
  CKND1 U11 ( .I(n19), .ZN(C[0]) );
  CKND2D0 U24 ( .A1(In_3[0]), .A2(In_1[0]), .ZN(n19) );
endmodule


module CSA3_2_Array_WIDTH9_3 ( In_1, In_2, In_3, S, C );
  input [8:0] In_1;
  input [8:0] In_2;
  input [8:0] In_3;
  output [8:0] S;
  output [8:0] C;
  wire   n11, n12, n13, n14, n15, n16, n17, n19;

  CKXOR2D1 U2 ( .A1(In_3[7]), .A2(n17), .Z(S[7]) );
  CKXOR2D1 U3 ( .A1(In_3[6]), .A2(n16), .Z(S[6]) );
  CKXOR2D1 U4 ( .A1(In_3[5]), .A2(n15), .Z(S[5]) );
  CKXOR2D1 U5 ( .A1(In_3[4]), .A2(n14), .Z(S[4]) );
  CKXOR2D1 U6 ( .A1(In_3[3]), .A2(n13), .Z(S[3]) );
  CKXOR2D1 U7 ( .A1(In_3[2]), .A2(n12), .Z(S[2]) );
  CKXOR2D1 U8 ( .A1(In_3[1]), .A2(n11), .Z(S[1]) );
  CKXOR2D1 U9 ( .A1(In_3[0]), .A2(In_2[0]), .Z(S[0]) );
  CKXOR2D1 U13 ( .A1(In_2[7]), .A2(In_1[7]), .Z(n17) );
  CKXOR2D1 U15 ( .A1(In_2[6]), .A2(In_1[6]), .Z(n16) );
  CKXOR2D1 U17 ( .A1(In_2[5]), .A2(In_1[5]), .Z(n15) );
  CKXOR2D1 U19 ( .A1(In_2[4]), .A2(In_1[4]), .Z(n14) );
  CKXOR2D1 U21 ( .A1(In_2[3]), .A2(In_1[3]), .Z(n13) );
  CKXOR2D1 U23 ( .A1(In_2[2]), .A2(In_1[2]), .Z(n12) );
  CKXOR2D1 U25 ( .A1(In_2[1]), .A2(In_1[1]), .Z(n11) );
  AO22D0 U10 ( .A1(In_2[3]), .A2(In_1[3]), .B1(n13), .B2(In_3[3]), .Z(C[3]) );
  AO22D0 U12 ( .A1(In_2[4]), .A2(In_1[4]), .B1(n14), .B2(In_3[4]), .Z(C[4]) );
  AO22D0 U14 ( .A1(In_2[5]), .A2(In_1[5]), .B1(n15), .B2(In_3[5]), .Z(C[5]) );
  AO22D0 U16 ( .A1(In_2[6]), .A2(In_1[6]), .B1(n16), .B2(In_3[6]), .Z(C[6]) );
  AO22D0 U18 ( .A1(In_2[7]), .A2(In_1[7]), .B1(n17), .B2(In_3[7]), .Z(C[7]) );
  AO22D0 U22 ( .A1(In_2[1]), .A2(In_1[1]), .B1(n11), .B2(In_3[1]), .Z(C[1]) );
  AO22D0 U24 ( .A1(In_2[2]), .A2(In_1[2]), .B1(n12), .B2(In_3[2]), .Z(C[2]) );
  XOR3D0 U1 ( .A1(In_1[8]), .A2(In_3[8]), .A3(In_2[8]), .Z(S[8]) );
  CKND1 U11 ( .I(n19), .ZN(C[0]) );
  CKND2D0 U20 ( .A1(In_3[0]), .A2(In_2[0]), .ZN(n19) );
endmodule


module CSA3_2_Array_WIDTH9_2 ( In_1, In_2, In_3, S, C );
  input [8:0] In_1;
  input [8:0] In_2;
  input [8:0] In_3;
  output [8:0] S;
  output [8:0] C;
  wire   n11, n12, n13, n14, n15, n16, n17, n19;

  CKXOR2D1 U2 ( .A1(In_3[7]), .A2(n17), .Z(S[7]) );
  CKXOR2D1 U3 ( .A1(In_3[6]), .A2(n16), .Z(S[6]) );
  CKXOR2D1 U4 ( .A1(In_3[5]), .A2(n15), .Z(S[5]) );
  CKXOR2D1 U5 ( .A1(In_3[4]), .A2(n14), .Z(S[4]) );
  CKXOR2D1 U6 ( .A1(In_3[3]), .A2(n13), .Z(S[3]) );
  CKXOR2D1 U7 ( .A1(In_3[2]), .A2(n12), .Z(S[2]) );
  CKXOR2D1 U8 ( .A1(In_3[1]), .A2(n11), .Z(S[1]) );
  CKXOR2D1 U9 ( .A1(In_3[0]), .A2(In_1[0]), .Z(S[0]) );
  CKXOR2D1 U13 ( .A1(In_2[7]), .A2(In_1[7]), .Z(n17) );
  CKXOR2D1 U15 ( .A1(In_2[6]), .A2(In_1[6]), .Z(n16) );
  CKXOR2D1 U17 ( .A1(In_2[5]), .A2(In_1[5]), .Z(n15) );
  CKXOR2D1 U19 ( .A1(In_2[4]), .A2(In_1[4]), .Z(n14) );
  CKXOR2D1 U21 ( .A1(In_2[3]), .A2(In_1[3]), .Z(n13) );
  CKXOR2D1 U23 ( .A1(In_2[2]), .A2(In_1[2]), .Z(n12) );
  CKXOR2D1 U25 ( .A1(In_2[1]), .A2(In_1[1]), .Z(n11) );
  AO22D0 U10 ( .A1(In_2[2]), .A2(In_1[2]), .B1(n12), .B2(In_3[2]), .Z(C[2]) );
  AO22D0 U12 ( .A1(In_2[3]), .A2(In_1[3]), .B1(n13), .B2(In_3[3]), .Z(C[3]) );
  AO22D0 U14 ( .A1(In_2[4]), .A2(In_1[4]), .B1(n14), .B2(In_3[4]), .Z(C[4]) );
  AO22D0 U16 ( .A1(In_2[5]), .A2(In_1[5]), .B1(n15), .B2(In_3[5]), .Z(C[5]) );
  AO22D0 U18 ( .A1(In_2[6]), .A2(In_1[6]), .B1(n16), .B2(In_3[6]), .Z(C[6]) );
  AO22D0 U20 ( .A1(In_2[7]), .A2(In_1[7]), .B1(n17), .B2(In_3[7]), .Z(C[7]) );
  AO22D0 U24 ( .A1(In_2[1]), .A2(In_1[1]), .B1(n11), .B2(In_3[1]), .Z(C[1]) );
  XOR3D0 U1 ( .A1(In_1[8]), .A2(In_3[8]), .A3(In_2[8]), .Z(S[8]) );
  CKND1 U11 ( .I(n19), .ZN(C[0]) );
  CKND2D0 U22 ( .A1(In_3[0]), .A2(In_1[0]), .ZN(n19) );
endmodule


module CSA3_2_Array_WIDTH9_1 ( In_1, In_2, In_3, S, C );
  input [8:0] In_1;
  input [8:0] In_2;
  input [8:0] In_3;
  output [8:0] S;
  output [8:0] C;
  wire   In_1_0_, n11, n12, n13, n14, n15, n16, n17;
  assign S[0] = In_1_0_;
  assign In_1_0_ = In_1[0];

  CKXOR2D1 U2 ( .A1(In_3[7]), .A2(n17), .Z(S[7]) );
  CKXOR2D1 U3 ( .A1(In_3[6]), .A2(n16), .Z(S[6]) );
  CKXOR2D1 U4 ( .A1(In_3[5]), .A2(n15), .Z(S[5]) );
  CKXOR2D1 U5 ( .A1(In_3[4]), .A2(n14), .Z(S[4]) );
  CKXOR2D1 U6 ( .A1(In_3[3]), .A2(n13), .Z(S[3]) );
  CKXOR2D1 U7 ( .A1(In_3[2]), .A2(n12), .Z(S[2]) );
  CKXOR2D1 U8 ( .A1(In_3[1]), .A2(n11), .Z(S[1]) );
  CKXOR2D1 U13 ( .A1(In_2[7]), .A2(In_1[7]), .Z(n17) );
  CKXOR2D1 U15 ( .A1(In_2[6]), .A2(In_1[6]), .Z(n16) );
  CKXOR2D1 U17 ( .A1(In_2[5]), .A2(In_1[5]), .Z(n15) );
  CKXOR2D1 U19 ( .A1(In_2[4]), .A2(In_1[4]), .Z(n14) );
  CKXOR2D1 U21 ( .A1(In_2[3]), .A2(In_1[3]), .Z(n13) );
  CKXOR2D1 U23 ( .A1(In_2[2]), .A2(In_1[2]), .Z(n12) );
  CKXOR2D1 U25 ( .A1(In_2[1]), .A2(In_1[1]), .Z(n11) );
  AO22D0 U10 ( .A1(In_2[7]), .A2(In_1[7]), .B1(n17), .B2(In_3[7]), .Z(C[7]) );
  AO22D0 U12 ( .A1(In_2[3]), .A2(In_1[3]), .B1(n13), .B2(In_3[3]), .Z(C[3]) );
  AO22D0 U14 ( .A1(In_2[4]), .A2(In_1[4]), .B1(n14), .B2(In_3[4]), .Z(C[4]) );
  AO22D0 U16 ( .A1(In_2[5]), .A2(In_1[5]), .B1(n15), .B2(In_3[5]), .Z(C[5]) );
  AO22D0 U18 ( .A1(In_2[6]), .A2(In_1[6]), .B1(n16), .B2(In_3[6]), .Z(C[6]) );
  AO22D0 U22 ( .A1(In_2[2]), .A2(In_1[2]), .B1(n12), .B2(In_3[2]), .Z(C[2]) );
  AO22D0 U24 ( .A1(In_2[1]), .A2(In_1[1]), .B1(n11), .B2(In_3[1]), .Z(C[1]) );
  XOR3D0 U1 ( .A1(In_1[8]), .A2(In_3[8]), .A3(In_2[8]), .Z(S[8]) );
endmodule


module Mantissa_Div_L4_Kec_MANTISSA_WIDTH7_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   A_1_;
  wire   [8:3] carry;
  assign SUM[1] = A_1_;
  assign A_1_ = A[1];

  FA1D0 U1_2 ( .A(A[2]), .B(B[2]), .CI(1'b0), .CO(carry[3]), .S(SUM[2]) );
  FA1D0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1D0 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA1D0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA1D0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1D0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  XOR3D1 U1_8 ( .A1(A[8]), .A2(B[8]), .A3(carry[8]), .Z(SUM[8]) );
endmodule


module Mantissa_Div_L4_Kec_MANTISSA_WIDTH7_DW01_sub_0_DW01_sub_1 ( A, B, CI, 
        DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [7:3] carry;

  FA1D0 U2_6 ( .A(A[6]), .B(n1), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  FA1D0 U2_4 ( .A(A[4]), .B(n3), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FA1D0 U2_5 ( .A(A[5]), .B(n2), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  FA1D0 U2_3 ( .A(A[3]), .B(n4), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  INVD1 U1 ( .I(B[3]), .ZN(n4) );
  INVD1 U2 ( .I(B[5]), .ZN(n2) );
  INVD1 U3 ( .I(B[4]), .ZN(n3) );
  INVD1 U4 ( .I(A[1]), .ZN(n5) );
  INVD1 U5 ( .I(B[6]), .ZN(n1) );
  MOAI22D0 U6 ( .A1(B[2]), .A2(n6), .B1(n7), .B2(A[2]), .ZN(carry[3]) );
  NR2D0 U7 ( .A1(A[2]), .A2(n7), .ZN(n6) );
  OAI22D0 U8 ( .A1(n8), .A2(n5), .B1(B[1]), .B2(n9), .ZN(n7) );
  AN2D0 U9 ( .A1(n8), .A2(n5), .Z(n9) );
  INR2D0 U10 ( .A1(B[0]), .B1(A[0]), .ZN(n8) );
  CKND0 U11 ( .I(carry[7]), .ZN(DIFF[7]) );
endmodule


module Mantissa_Div_L4_Kec_MANTISSA_WIDTH7_DW01_sub_1_DW01_sub_2 ( A, B, CI, 
        DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7;
  wire   [7:1] carry;

  FA1D0 U2_1 ( .A(A[1]), .B(n7), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  FA1D0 U2_6 ( .A(A[6]), .B(n2), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  FA1D0 U2_2 ( .A(A[2]), .B(n6), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  FA1D0 U2_5 ( .A(A[5]), .B(n3), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  FA1D0 U2_4 ( .A(A[4]), .B(n4), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FA1D0 U2_3 ( .A(A[3]), .B(n5), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  INVD1 U1 ( .I(B[3]), .ZN(n5) );
  INVD1 U2 ( .I(B[4]), .ZN(n4) );
  INVD1 U3 ( .I(B[5]), .ZN(n3) );
  INVD1 U4 ( .I(B[2]), .ZN(n6) );
  INVD1 U5 ( .I(B[6]), .ZN(n2) );
  INVD1 U7 ( .I(B[1]), .ZN(n7) );
  CKND0 U11 ( .I(carry[7]), .ZN(DIFF[7]) );
  CKXOR2D0 U6 ( .A1(A[0]), .A2(B[0]), .Z(DIFF[0]) );
  IND2D0 U8 ( .A1(A[0]), .B1(B[0]), .ZN(carry[1]) );
endmodule


module Mantissa_Div_L4_Kec_MANTISSA_WIDTH7 ( Mantissa_X, Mantissa_Y, 
        Mantissa_Out, Shift );
  input [6:0] Mantissa_X;
  input [6:0] Mantissa_Y;
  output [6:0] Mantissa_Out;
  output Shift;
  wire   n13, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81;
  wire   [7:0] x_sub_y;
  wire   [7:3] y_sub_x;
  wire   [8:0] L1_p2;
  wire   [8:0] L2_p;
  wire   [4:0] L3_p1;
  wire   [2:0] L3_p2;
  wire   [3:0] L4_p1;
  wire   [8:0] L4_p2;
  wire   [8:0] A11S;
  wire   [7:0] A11C;
  wire   [8:0] A12S;
  wire   [7:0] A12C;
  wire   [8:0] A21S;
  wire   [7:0] A21C;
  wire   [8:0] A22S;
  wire   [7:0] A22C;
  wire   [8:0] A31S;
  wire   [7:0] A31C;
  wire   [8:0] A41S;
  wire   [7:1] A41C;
  wire   [7:1] Res;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10;

  MOAI22D1 U9 ( .A1(n33), .A2(n70), .B1(Res[7]), .B2(Shift), .ZN(
        Mantissa_Out[6]) );
  OR2D1 U16 ( .A1(Res[7]), .A2(Shift), .Z(n34) );
  AO222D1 U32 ( .A1(y_sub_x[5]), .A2(n80), .B1(x_sub_y[5]), .B2(n46), .C1(
        x_sub_y[4]), .C2(n42), .Z(L2_p[2]) );
  AO222D1 U33 ( .A1(y_sub_x[4]), .A2(n80), .B1(x_sub_y[4]), .B2(n46), .C1(
        x_sub_y[3]), .C2(n42), .Z(L2_p[1]) );
  AO222D1 U34 ( .A1(y_sub_x[3]), .A2(n80), .B1(x_sub_y[3]), .B2(n46), .C1(
        x_sub_y[2]), .C2(n42), .Z(L2_p[0]) );
  AN2XD1 U44 ( .A1(x_sub_y[1]), .A2(n68), .Z(L1_p2[0]) );
  CSA3_2_Array_WIDTH9_0 Stage_1_1 ( .In_1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0}), .In_2({x_sub_y[7], x_sub_y}), .In_3({L1_p2[8], 
        L1_p2[8], L1_p2[8], L1_p2[5:0]}), .S(A11S), .C({
        SYNOPSYS_UNCONNECTED__0, A11C}) );
  CSA3_2_Array_WIDTH9_5 Stage_1_2 ( .In_1({L2_p[8], L2_p[8], L2_p[8], L2_p[8], 
        L2_p[4:0]}), .In_2({L3_p1[4], L3_p1[4], L3_p1[4], L3_p1[4], L3_p1}), 
        .In_3({L3_p2[2], L3_p2[2], L3_p2[2], L3_p2[2], L3_p2[2], L3_p2[2], 
        L3_p2}), .S(A12S), .C({SYNOPSYS_UNCONNECTED__1, A12C}) );
  CSA3_2_Array_WIDTH9_4 Stage_2_1 ( .In_1(A11S), .In_2({A11C, 1'b0}), .In_3(
        A12S), .S(A21S), .C({SYNOPSYS_UNCONNECTED__2, A21C}) );
  CSA3_2_Array_WIDTH9_3 Stage_2_2 ( .In_1({A12C, 1'b0}), .In_2({L4_p1[3], 
        L4_p1[3], L4_p1[3], L4_p1[3], L4_p1[3], L4_p1}), .In_3({L4_p2[8], 
        L4_p2[8], L4_p2[8], L4_p2[8], L4_p2[8], L4_p2[8], L4_p2[8], L4_p2[8], 
        L4_p2[0]}), .S(A22S), .C({SYNOPSYS_UNCONNECTED__3, A22C}) );
  CSA3_2_Array_WIDTH9_2 Stage_3_1 ( .In_1(A21S), .In_2({A21C, 1'b0}), .In_3(
        A22S), .S(A31S), .C({SYNOPSYS_UNCONNECTED__4, A31C}) );
  CSA3_2_Array_WIDTH9_1 Stage_4_1 ( .In_1(A31S), .In_2({A31C, 1'b0}), .In_3({
        A22C, 1'b0}), .S(A41S), .C({SYNOPSYS_UNCONNECTED__5, A41C, 
        SYNOPSYS_UNCONNECTED__6}) );
  Mantissa_Div_L4_Kec_MANTISSA_WIDTH7_DW01_add_0 add_205 ( .A(A41S), .B({A41C, 
        1'b0, n13}), .CI(n13), .SUM({Shift, Res, SYNOPSYS_UNCONNECTED__7}) );
  Mantissa_Div_L4_Kec_MANTISSA_WIDTH7_DW01_sub_0_DW01_sub_1 sub_18 ( .A({n13, 
        Mantissa_Y}), .B({n13, Mantissa_X}), .CI(n13), .DIFF({y_sub_x, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10}) );
  Mantissa_Div_L4_Kec_MANTISSA_WIDTH7_DW01_sub_1_DW01_sub_2 sub_17 ( .A({n13, 
        Mantissa_X}), .B({n13, Mantissa_Y}), .CI(n13), .DIFF(x_sub_y) );
  INVD1 U3 ( .I(n30), .ZN(n62) );
  OAI32D1 U4 ( .A1(n64), .A2(n62), .A3(n31), .B1(n77), .B2(n30), .ZN(L3_p2[2])
         );
  OAI21D1 U5 ( .A1(n23), .A2(n22), .B(n21), .ZN(L4_p1[3]) );
  OAI222D0 U7 ( .A1(n33), .A2(n72), .B1(n70), .B2(n34), .C1(n69), .C2(n71), 
        .ZN(Mantissa_Out[4]) );
  OAI22D1 U8 ( .A1(n69), .A2(n70), .B1(n33), .B2(n71), .ZN(Mantissa_Out[5]) );
  ND2D1 U10 ( .A1(Res[7]), .A2(n69), .ZN(n33) );
  INVD1 U11 ( .I(Shift), .ZN(n69) );
  OAI222D0 U12 ( .A1(n33), .A2(n73), .B1(n71), .B2(n34), .C1(n69), .C2(n72), 
        .ZN(Mantissa_Out[3]) );
  INVD1 U13 ( .I(Res[6]), .ZN(n70) );
  INVD1 U14 ( .I(Res[5]), .ZN(n71) );
  INVD1 U15 ( .I(Res[4]), .ZN(n72) );
  INVD1 U17 ( .I(n57), .ZN(n63) );
  INVD1 U18 ( .I(y_sub_x[7]), .ZN(n64) );
  OAI222D0 U19 ( .A1(n33), .A2(n74), .B1(n34), .B2(n72), .C1(n69), .C2(n73), 
        .ZN(Mantissa_Out[2]) );
  OAI21D1 U20 ( .A1(n81), .A2(n25), .B(n45), .ZN(L2_p[4]) );
  OAI21D1 U21 ( .A1(n81), .A2(n77), .B(n45), .ZN(L2_p[8]) );
  INVD1 U22 ( .I(x_sub_y[7]), .ZN(n77) );
  INVD1 U23 ( .I(Res[3]), .ZN(n73) );
  INVD1 U24 ( .I(n23), .ZN(n26) );
  OAI222D0 U25 ( .A1(n33), .A2(n75), .B1(n34), .B2(n73), .C1(n69), .C2(n74), 
        .ZN(Mantissa_Out[1]) );
  INVD1 U26 ( .I(n55), .ZN(n61) );
  OAI222D0 U27 ( .A1(n44), .A2(n78), .B1(n25), .B2(n79), .C1(n81), .C2(n66), 
        .ZN(L2_p[3]) );
  INVD1 U28 ( .I(y_sub_x[6]), .ZN(n78) );
  AOI22D1 U29 ( .A1(y_sub_x[7]), .A2(n80), .B1(x_sub_y[7]), .B2(n46), .ZN(n45)
         );
  INVD1 U30 ( .I(x_sub_y[6]), .ZN(n25) );
  INVD1 U31 ( .I(x_sub_y[5]), .ZN(n66) );
  OAI221D1 U35 ( .A1(n64), .A2(n35), .B1(n77), .B2(n36), .C(n37), .ZN(L4_p2[8]) );
  INVD1 U36 ( .I(x_sub_y[4]), .ZN(n65) );
  NR2D1 U37 ( .A1(n77), .A2(Mantissa_Y[6]), .ZN(L1_p2[8]) );
  OAI221D0 U38 ( .A1(n35), .A2(n78), .B1(n36), .B2(n25), .C(n37), .ZN(L4_p2[0]) );
  INVD1 U39 ( .I(n31), .ZN(n60) );
  NR2D1 U40 ( .A1(Mantissa_Y[6]), .A2(n25), .ZN(L1_p2[5]) );
  NR2D1 U41 ( .A1(Mantissa_Y[6]), .A2(n66), .ZN(L1_p2[4]) );
  INR2D1 U42 ( .A1(x_sub_y[4]), .B1(Mantissa_Y[6]), .ZN(L1_p2[3]) );
  INR2D1 U43 ( .A1(x_sub_y[3]), .B1(Mantissa_Y[6]), .ZN(L1_p2[2]) );
  INVD1 U45 ( .I(n44), .ZN(n80) );
  INVD1 U46 ( .I(n42), .ZN(n81) );
  INVD1 U47 ( .I(Res[2]), .ZN(n74) );
  INR2D1 U48 ( .A1(x_sub_y[2]), .B1(Mantissa_Y[6]), .ZN(L1_p2[1]) );
  INVD1 U49 ( .I(n46), .ZN(n79) );
  ND2D1 U50 ( .A1(n44), .A2(n79), .ZN(n41) );
  ND3D1 U51 ( .A1(n24), .A2(n58), .A3(n80), .ZN(n35) );
  INVD1 U52 ( .I(Mantissa_Y[5]), .ZN(n59) );
  OA22D0 U53 ( .A1(n38), .A2(n64), .B1(n39), .B2(n77), .Z(n37) );
  AOI22D1 U54 ( .A1(n43), .A2(n41), .B1(n42), .B2(n40), .ZN(n38) );
  AOI22D1 U55 ( .A1(n40), .A2(n41), .B1(n42), .B2(n43), .ZN(n39) );
  NR2D1 U56 ( .A1(n58), .A2(Mantissa_Y[3]), .ZN(n40) );
  NR2D1 U57 ( .A1(Mantissa_Y[5]), .A2(Mantissa_Y[6]), .ZN(n42) );
  INVD1 U58 ( .I(Mantissa_Y[4]), .ZN(n58) );
  INVD1 U59 ( .I(Mantissa_Y[3]), .ZN(n24) );
  NR2D1 U60 ( .A1(n68), .A2(Mantissa_Y[5]), .ZN(n46) );
  ND2D1 U61 ( .A1(Mantissa_Y[5]), .A2(n68), .ZN(n44) );
  ND3D1 U62 ( .A1(Mantissa_Y[3]), .A2(Mantissa_Y[4]), .A3(n42), .ZN(n36) );
  NR2D1 U63 ( .A1(n24), .A2(Mantissa_Y[4]), .ZN(n43) );
  INVD1 U64 ( .I(Res[1]), .ZN(n75) );
  OAI222D0 U66 ( .A1(n76), .A2(n33), .B1(n74), .B2(n34), .C1(n75), .C2(n69), 
        .ZN(Mantissa_Out[0]) );
  INVD1 U67 ( .I(A41S[0]), .ZN(n76) );
  TIEL U69 ( .ZN(n13) );
  NR2D0 U70 ( .A1(n24), .A2(Mantissa_Y[6]), .ZN(n16) );
  AO32D0 U71 ( .A1(x_sub_y[6]), .A2(n24), .A3(Mantissa_Y[4]), .B1(
        Mantissa_Y[3]), .B2(y_sub_x[6]), .Z(n10) );
  AOI22D0 U72 ( .A1(y_sub_x[4]), .A2(n16), .B1(n10), .B2(Mantissa_Y[6]), .ZN(
        n6) );
  AOI22D0 U73 ( .A1(x_sub_y[5]), .A2(n68), .B1(Mantissa_Y[6]), .B2(x_sub_y[7]), 
        .ZN(n1) );
  OAI32D0 U74 ( .A1(n25), .A2(Mantissa_Y[4]), .A3(n68), .B1(n58), .B2(n1), 
        .ZN(n2) );
  AN2D0 U75 ( .A1(y_sub_x[5]), .A2(n16), .Z(n8) );
  AOI21D0 U76 ( .A1(n2), .A2(n24), .B(n8), .ZN(n5) );
  CKND2D0 U77 ( .A1(Mantissa_Y[4]), .A2(Mantissa_Y[5]), .ZN(n11) );
  NR2D0 U78 ( .A1(Mantissa_Y[6]), .A2(Mantissa_Y[3]), .ZN(n15) );
  AO33D0 U79 ( .A1(y_sub_x[7]), .A2(Mantissa_Y[3]), .A3(Mantissa_Y[5]), .B1(
        x_sub_y[5]), .B2(n24), .B3(n59), .Z(n3) );
  AOI33D0 U80 ( .A1(n11), .A2(n15), .A3(x_sub_y[4]), .B1(Mantissa_Y[6]), .B2(
        n58), .B3(n3), .ZN(n4) );
  OAI221D0 U81 ( .A1(Mantissa_Y[5]), .A2(n6), .B1(n59), .B2(n5), .C(n4), .ZN(
        L4_p1[0]) );
  OAI22D0 U82 ( .A1(y_sub_x[7]), .A2(n24), .B1(x_sub_y[7]), .B2(Mantissa_Y[3]), 
        .ZN(n23) );
  MAOI22D0 U83 ( .A1(n24), .A2(n25), .B1(n24), .B2(y_sub_x[7]), .ZN(n7) );
  OA22D0 U84 ( .A1(n26), .A2(n58), .B1(Mantissa_Y[4]), .B2(n7), .Z(n18) );
  AOI21D0 U85 ( .A1(Mantissa_Y[6]), .A2(n18), .B(n8), .ZN(n14) );
  AO21D0 U86 ( .A1(n24), .A2(x_sub_y[7]), .B(n58), .Z(n9) );
  CKND2D0 U87 ( .A1(n26), .A2(n9), .ZN(n21) );
  IND3D0 U88 ( .A1(n21), .B1(Mantissa_Y[6]), .B2(Mantissa_Y[5]), .ZN(n19) );
  AOI33D0 U89 ( .A1(n11), .A2(n15), .A3(x_sub_y[5]), .B1(Mantissa_Y[5]), .B2(
        n68), .B3(n10), .ZN(n12) );
  OAI211D0 U90 ( .A1(Mantissa_Y[5]), .A2(n14), .B(n19), .C(n12), .ZN(L4_p1[1])
         );
  AO222D0 U91 ( .A1(n16), .A2(y_sub_x[6]), .B1(n15), .B2(x_sub_y[6]), .C1(n26), 
        .C2(Mantissa_Y[6]), .Z(n17) );
  AOI32D0 U92 ( .A1(n18), .A2(n68), .A3(Mantissa_Y[5]), .B1(n17), .B2(n59), 
        .ZN(n20) );
  CKND2D0 U93 ( .A1(n20), .A2(n19), .ZN(L4_p1[2]) );
  NR2D0 U94 ( .A1(n68), .A2(n59), .ZN(n22) );
  CKND2D0 U95 ( .A1(Mantissa_Y[4]), .A2(n59), .ZN(n31) );
  CKND2D0 U96 ( .A1(n60), .A2(n68), .ZN(n57) );
  NR2D0 U97 ( .A1(n59), .A2(Mantissa_Y[4]), .ZN(n32) );
  NR2D0 U98 ( .A1(n63), .A2(n32), .ZN(n29) );
  NR2D0 U99 ( .A1(Mantissa_Y[5]), .A2(Mantissa_Y[4]), .ZN(n54) );
  AOI33D0 U100 ( .A1(Mantissa_Y[6]), .A2(n60), .A3(y_sub_x[5]), .B1(n54), .B2(
        n68), .B3(x_sub_y[6]), .ZN(n27) );
  OAI21D0 U101 ( .A1(n66), .A2(n29), .B(n27), .ZN(L3_p2[0]) );
  AOI33D0 U102 ( .A1(Mantissa_Y[6]), .A2(n60), .A3(y_sub_x[6]), .B1(n54), .B2(
        n68), .B3(x_sub_y[7]), .ZN(n28) );
  OAI21D0 U103 ( .A1(n25), .A2(n29), .B(n28), .ZN(L3_p2[1]) );
  AOI21D0 U104 ( .A1(n59), .A2(n68), .B(n32), .ZN(n30) );
  CKND2D0 U105 ( .A1(Mantissa_Y[5]), .A2(Mantissa_Y[6]), .ZN(n48) );
  CKND2D0 U106 ( .A1(n48), .A2(n58), .ZN(n55) );
  OAI21D0 U107 ( .A1(n60), .A2(n32), .B(Mantissa_Y[6]), .ZN(n52) );
  OAI32D0 U108 ( .A1(n25), .A2(n48), .A3(n58), .B1(n52), .B2(n65), .ZN(n47) );
  AO221D0 U109 ( .A1(x_sub_y[3]), .A2(n61), .B1(y_sub_x[4]), .B2(n63), .C(n47), 
        .Z(L3_p1[0]) );
  NR3D0 U110 ( .A1(n58), .A2(n48), .A3(n77), .ZN(n50) );
  AOI21D0 U111 ( .A1(y_sub_x[5]), .A2(n63), .B(n50), .ZN(n49) );
  OAI221D0 U112 ( .A1(n52), .A2(n66), .B1(n55), .B2(n65), .C(n49), .ZN(
        L3_p1[1]) );
  AOI21D0 U113 ( .A1(y_sub_x[6]), .A2(n63), .B(n50), .ZN(n51) );
  OAI221D0 U114 ( .A1(n25), .A2(n52), .B1(n55), .B2(n66), .C(n51), .ZN(
        L3_p1[2]) );
  CKND2D0 U115 ( .A1(x_sub_y[7]), .A2(Mantissa_Y[6]), .ZN(n53) );
  OAI222D0 U116 ( .A1(n55), .A2(n25), .B1(n54), .B2(n53), .C1(n57), .C2(n64), 
        .ZN(L3_p1[3]) );
  NR2D0 U117 ( .A1(n58), .A2(Mantissa_Y[6]), .ZN(n56) );
  OAI22D0 U118 ( .A1(n57), .A2(n64), .B1(n56), .B2(n77), .ZN(L3_p1[4]) );
  CKND0 U6 ( .I(Mantissa_Y[6]), .ZN(n68) );
endmodule


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
  FA1D0 U37 ( .A(N4), .B(exponent_adjust[1]), .CI(n1), .CO(
        add_0_root_add_0_root_add_22_2_carry[2]), .S(result[24]) );
  FA1D0 U38 ( .A(N5), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[2]), .CO(
        add_0_root_add_0_root_add_22_2_carry[3]), .S(result[25]) );
  FA1D0 U39 ( .A(N6), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[3]), .CO(
        add_0_root_add_0_root_add_22_2_carry[4]), .S(result[26]) );
  FA1D0 U40 ( .A(N7), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[4]), .CO(
        add_0_root_add_0_root_add_22_2_carry[5]), .S(result[27]) );
  FA1D0 U41 ( .A(N8), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[5]), .CO(
        add_0_root_add_0_root_add_22_2_carry[6]), .S(result[28]) );
  FA1D0 U42 ( .A(N9), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[6]), .CO(
        add_0_root_add_0_root_add_22_2_carry[7]), .S(result[29]) );
  XOR3D1 U51 ( .A1(N10), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_22_2_carry[7]), .Z(result[30]) );
  CKBD1 U54 ( .I(y[19]), .Z(fraction_y[19]) );
  CKBD1 U56 ( .I(y[20]), .Z(fraction_y[20]) );
  CKBD1 U58 ( .I(y[22]), .Z(fraction_y[22]) );
  CKBD1 U59 ( .I(y[21]), .Z(fraction_y[21]) );
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
  CKBD1 U92 ( .I(x[17]), .Z(fraction_x[17]) );
  CKBD1 U93 ( .I(x[16]), .Z(fraction_x[16]) );
  CKBD1 U94 ( .I(y[18]), .Z(fraction_y[18]) );
  CKBD1 U95 ( .I(y[17]), .Z(fraction_y[17]) );
  CKBD1 U96 ( .I(y[16]), .Z(fraction_y[16]) );
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


module FP_DIV_WRAPPER_32_width_trunc16 ( x, y, out0, mantissa_x, mantissa_y, 
        mantissa_out, shift );
  input [31:0] x;
  input [31:0] y;
  output [31:0] out0;
  output [6:0] mantissa_x;
  output [6:0] mantissa_y;
  input [6:0] mantissa_out;
  input [0:0] shift;

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
        SYNOPSYS_UNCONNECTED__46, SYNOPSYS_UNCONNECTED__47;

  fp32_normal_finite_wrapper shared_wrapper ( .x({x[31:16], 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .y({y[31:16], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .divide_mode(1'b0), 
        .fraction_x({mantissa_x, SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15}), .fraction_y({mantissa_y, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31}), 
        .result_fraction({mantissa_out, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .exponent_adjust({shift[0], shift[0], shift[0]}), .result({out0[31:16], 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, 
        SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39, 
        SYNOPSYS_UNCONNECTED__40, SYNOPSYS_UNCONNECTED__41, 
        SYNOPSYS_UNCONNECTED__42, SYNOPSYS_UNCONNECTED__43, 
        SYNOPSYS_UNCONNECTED__44, SYNOPSYS_UNCONNECTED__45, 
        SYNOPSYS_UNCONNECTED__46, SYNOPSYS_UNCONNECTED__47}) );
endmodule


module fig8_pace_l4_d16 ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   shift, n1;
  wire   [6:0] mx;
  wire   [6:0] my;
  wire   [6:0] mz;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15;
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

  Mantissa_Div_L4_Kec_MANTISSA_WIDTH7 core ( .Mantissa_X(mx), .Mantissa_Y(my), 
        .Mantissa_Out(mz), .Shift(shift) );
  FP_DIV_WRAPPER_32_width_trunc16 shell ( .x({x[31:16], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y({y[31:16], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .out0({result[31:16], 
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15}), .mantissa_x(mx), 
        .mantissa_y(my), .mantissa_out(mz), .shift(n1) );
  INVD1 U2 ( .I(shift), .ZN(n1) );
endmodule

