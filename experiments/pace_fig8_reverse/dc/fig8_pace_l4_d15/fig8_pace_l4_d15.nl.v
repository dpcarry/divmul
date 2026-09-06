/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Sat Sep  5 13:15:39 2026
/////////////////////////////////////////////////////////////


module CSA3_2_Array_WIDTH10_0 ( In_1, In_2, In_3, S, C );
  input [9:0] In_1;
  input [9:0] In_2;
  input [9:0] In_3;
  output [9:0] S;
  output [9:0] C;
  wire   n11, n12, n13, n14, n15, n16, n17, n18, n19;

  CKXOR2D1 U2 ( .A1(In_3[8]), .A2(In_2[8]), .Z(S[8]) );
  CKXOR2D1 U3 ( .A1(In_3[7]), .A2(In_2[7]), .Z(S[7]) );
  CKXOR2D1 U4 ( .A1(In_3[6]), .A2(In_2[6]), .Z(S[6]) );
  CKXOR2D1 U5 ( .A1(In_3[5]), .A2(In_2[5]), .Z(S[5]) );
  CKXOR2D1 U6 ( .A1(In_3[4]), .A2(In_2[4]), .Z(S[4]) );
  CKXOR2D1 U7 ( .A1(In_3[3]), .A2(In_2[3]), .Z(S[3]) );
  CKXOR2D1 U8 ( .A1(In_3[2]), .A2(In_2[2]), .Z(S[2]) );
  CKXOR2D1 U9 ( .A1(In_3[1]), .A2(In_2[1]), .Z(S[1]) );
  CKXOR2D1 U10 ( .A1(In_3[0]), .A2(In_2[0]), .Z(S[0]) );
  XNR2D0 U1 ( .A1(In_3[9]), .A2(In_2[9]), .ZN(S[9]) );
  CKND0 U11 ( .I(n19), .ZN(C[8]) );
  CKND1 U12 ( .I(n18), .ZN(C[7]) );
  CKND2D0 U13 ( .A1(In_3[8]), .A2(In_2[8]), .ZN(n19) );
  CKND1 U14 ( .I(n17), .ZN(C[6]) );
  CKND2D0 U15 ( .A1(In_3[7]), .A2(In_2[7]), .ZN(n18) );
  CKND1 U16 ( .I(n16), .ZN(C[5]) );
  CKND2D0 U17 ( .A1(In_3[6]), .A2(In_2[6]), .ZN(n17) );
  CKND1 U18 ( .I(n15), .ZN(C[4]) );
  CKND2D0 U19 ( .A1(In_3[5]), .A2(In_2[5]), .ZN(n16) );
  CKND1 U20 ( .I(n14), .ZN(C[3]) );
  CKND2D0 U21 ( .A1(In_3[4]), .A2(In_2[4]), .ZN(n15) );
  CKND1 U22 ( .I(n13), .ZN(C[2]) );
  CKND2D0 U23 ( .A1(In_3[3]), .A2(In_2[3]), .ZN(n14) );
  CKND1 U24 ( .I(n12), .ZN(C[1]) );
  CKND1 U25 ( .I(n11), .ZN(C[0]) );
  CKND2D0 U26 ( .A1(In_3[2]), .A2(In_2[2]), .ZN(n13) );
  CKND2D0 U27 ( .A1(In_3[1]), .A2(In_2[1]), .ZN(n12) );
  CKND2D0 U28 ( .A1(In_3[0]), .A2(In_2[0]), .ZN(n11) );
endmodule


module CSA3_2_Array_WIDTH10_5 ( In_1, In_2, In_3, S, C );
  input [9:0] In_1;
  input [9:0] In_2;
  input [9:0] In_3;
  output [9:0] S;
  output [9:0] C;
  wire   n11, n12, n13, n14, n15, n16, n17, n18, n19;

  CKXOR2D1 U8 ( .A1(In_3[2]), .A2(n13), .Z(S[2]) );
  CKXOR2D1 U9 ( .A1(In_3[1]), .A2(n12), .Z(S[1]) );
  CKXOR2D1 U10 ( .A1(In_3[0]), .A2(n11), .Z(S[0]) );
  CKXOR2D1 U14 ( .A1(In_2[8]), .A2(In_1[8]), .Z(n19) );
  CKXOR2D1 U16 ( .A1(In_2[7]), .A2(In_1[7]), .Z(n18) );
  CKXOR2D1 U18 ( .A1(In_2[6]), .A2(In_1[6]), .Z(n17) );
  CKXOR2D1 U20 ( .A1(In_2[5]), .A2(In_1[5]), .Z(n16) );
  CKXOR2D1 U22 ( .A1(In_2[4]), .A2(In_1[4]), .Z(n15) );
  CKXOR2D1 U24 ( .A1(In_2[3]), .A2(In_1[3]), .Z(n14) );
  CKXOR2D1 U26 ( .A1(In_2[2]), .A2(In_1[2]), .Z(n13) );
  CKXOR2D1 U28 ( .A1(In_2[1]), .A2(In_1[1]), .Z(n12) );
  CKXOR2D1 U30 ( .A1(In_2[0]), .A2(In_1[0]), .Z(n11) );
  CKXOR2D0 U1 ( .A1(In_3[3]), .A2(n14), .Z(S[3]) );
  CKXOR2D0 U2 ( .A1(In_3[4]), .A2(n15), .Z(S[4]) );
  CKXOR2D0 U3 ( .A1(In_3[5]), .A2(n16), .Z(S[5]) );
  CKXOR2D0 U4 ( .A1(In_3[6]), .A2(n17), .Z(S[6]) );
  CKXOR2D0 U5 ( .A1(In_3[7]), .A2(n18), .Z(S[7]) );
  CKXOR2D0 U6 ( .A1(In_3[8]), .A2(n19), .Z(S[8]) );
  AO22D0 U11 ( .A1(In_2[3]), .A2(In_1[3]), .B1(n14), .B2(In_3[3]), .Z(C[3]) );
  AO22D0 U13 ( .A1(In_2[5]), .A2(In_1[5]), .B1(n16), .B2(In_3[5]), .Z(C[5]) );
  AO22D0 U15 ( .A1(In_2[6]), .A2(In_1[6]), .B1(n17), .B2(In_3[6]), .Z(C[6]) );
  AO22D0 U17 ( .A1(In_2[7]), .A2(In_1[7]), .B1(n18), .B2(In_3[7]), .Z(C[7]) );
  AO22D0 U19 ( .A1(In_2[8]), .A2(In_1[8]), .B1(n19), .B2(In_3[8]), .Z(C[8]) );
  AO22D0 U21 ( .A1(In_2[2]), .A2(In_1[2]), .B1(n13), .B2(In_3[2]), .Z(C[2]) );
  AO22D0 U23 ( .A1(In_2[1]), .A2(In_1[1]), .B1(n12), .B2(In_3[1]), .Z(C[1]) );
  AO22D0 U25 ( .A1(In_2[0]), .A2(In_1[0]), .B1(n11), .B2(In_3[0]), .Z(C[0]) );
  AO22D0 U29 ( .A1(In_2[4]), .A2(In_1[4]), .B1(n15), .B2(In_3[4]), .Z(C[4]) );
  XOR3D0 U7 ( .A1(In_3[9]), .A2(In_1[9]), .A3(In_2[9]), .Z(S[9]) );
endmodule


module CSA3_2_Array_WIDTH10_4 ( In_1, In_2, In_3, S, C );
  input [9:0] In_1;
  input [9:0] In_2;
  input [9:0] In_3;
  output [9:0] S;
  output [9:0] C;
  wire   n12, n13, n14, n15, n16, n17, n18, n19, n21;

  CKXOR2D1 U2 ( .A1(In_3[8]), .A2(n19), .Z(S[8]) );
  CKXOR2D1 U3 ( .A1(In_3[7]), .A2(n18), .Z(S[7]) );
  CKXOR2D1 U4 ( .A1(In_3[6]), .A2(n17), .Z(S[6]) );
  CKXOR2D1 U5 ( .A1(In_3[5]), .A2(n16), .Z(S[5]) );
  CKXOR2D1 U6 ( .A1(In_3[4]), .A2(n15), .Z(S[4]) );
  CKXOR2D1 U7 ( .A1(In_3[3]), .A2(n14), .Z(S[3]) );
  CKXOR2D1 U8 ( .A1(In_3[2]), .A2(n13), .Z(S[2]) );
  CKXOR2D1 U9 ( .A1(In_3[1]), .A2(n12), .Z(S[1]) );
  CKXOR2D1 U10 ( .A1(In_3[0]), .A2(In_1[0]), .Z(S[0]) );
  CKXOR2D1 U14 ( .A1(In_2[8]), .A2(In_1[8]), .Z(n19) );
  CKXOR2D1 U16 ( .A1(In_2[7]), .A2(In_1[7]), .Z(n18) );
  CKXOR2D1 U18 ( .A1(In_2[6]), .A2(In_1[6]), .Z(n17) );
  CKXOR2D1 U20 ( .A1(In_2[5]), .A2(In_1[5]), .Z(n16) );
  CKXOR2D1 U22 ( .A1(In_2[4]), .A2(In_1[4]), .Z(n15) );
  CKXOR2D1 U24 ( .A1(In_2[3]), .A2(In_1[3]), .Z(n14) );
  CKXOR2D1 U26 ( .A1(In_2[2]), .A2(In_1[2]), .Z(n13) );
  CKXOR2D1 U28 ( .A1(In_2[1]), .A2(In_1[1]), .Z(n12) );
  AO22D0 U11 ( .A1(In_2[3]), .A2(In_1[3]), .B1(n14), .B2(In_3[3]), .Z(C[3]) );
  AO22D0 U13 ( .A1(In_2[4]), .A2(In_1[4]), .B1(n15), .B2(In_3[4]), .Z(C[4]) );
  AO22D0 U15 ( .A1(In_2[5]), .A2(In_1[5]), .B1(n16), .B2(In_3[5]), .Z(C[5]) );
  AO22D0 U17 ( .A1(In_2[6]), .A2(In_1[6]), .B1(n17), .B2(In_3[6]), .Z(C[6]) );
  AO22D0 U19 ( .A1(In_2[7]), .A2(In_1[7]), .B1(n18), .B2(In_3[7]), .Z(C[7]) );
  AO22D0 U21 ( .A1(In_2[8]), .A2(In_1[8]), .B1(n19), .B2(In_3[8]), .Z(C[8]) );
  AO22D0 U23 ( .A1(In_2[2]), .A2(In_1[2]), .B1(n13), .B2(In_3[2]), .Z(C[2]) );
  AO22D0 U25 ( .A1(In_2[1]), .A2(In_1[1]), .B1(n12), .B2(In_3[1]), .Z(C[1]) );
  XOR3D0 U1 ( .A1(In_3[9]), .A2(In_1[9]), .A3(In_2[9]), .Z(S[9]) );
  CKND1 U12 ( .I(n21), .ZN(C[0]) );
  CKND2D0 U27 ( .A1(In_3[0]), .A2(In_1[0]), .ZN(n21) );
endmodule


module CSA3_2_Array_WIDTH10_3 ( In_1, In_2, In_3, S, C );
  input [9:0] In_1;
  input [9:0] In_2;
  input [9:0] In_3;
  output [9:0] S;
  output [9:0] C;
  wire   n12, n13, n14, n15, n16, n17, n18, n19, n21;

  CKXOR2D1 U2 ( .A1(In_3[8]), .A2(n19), .Z(S[8]) );
  CKXOR2D1 U3 ( .A1(In_3[7]), .A2(n18), .Z(S[7]) );
  CKXOR2D1 U4 ( .A1(In_3[6]), .A2(n17), .Z(S[6]) );
  CKXOR2D1 U5 ( .A1(In_3[5]), .A2(n16), .Z(S[5]) );
  CKXOR2D1 U6 ( .A1(In_3[4]), .A2(n15), .Z(S[4]) );
  CKXOR2D1 U7 ( .A1(In_3[3]), .A2(n14), .Z(S[3]) );
  CKXOR2D1 U8 ( .A1(In_3[2]), .A2(n13), .Z(S[2]) );
  CKXOR2D1 U9 ( .A1(In_3[1]), .A2(n12), .Z(S[1]) );
  CKXOR2D1 U10 ( .A1(In_3[0]), .A2(In_2[0]), .Z(S[0]) );
  CKXOR2D1 U14 ( .A1(In_2[8]), .A2(In_1[8]), .Z(n19) );
  CKXOR2D1 U16 ( .A1(In_2[7]), .A2(In_1[7]), .Z(n18) );
  CKXOR2D1 U18 ( .A1(In_2[6]), .A2(In_1[6]), .Z(n17) );
  CKXOR2D1 U20 ( .A1(In_2[5]), .A2(In_1[5]), .Z(n16) );
  CKXOR2D1 U22 ( .A1(In_2[4]), .A2(In_1[4]), .Z(n15) );
  CKXOR2D1 U24 ( .A1(In_2[3]), .A2(In_1[3]), .Z(n14) );
  CKXOR2D1 U26 ( .A1(In_2[2]), .A2(In_1[2]), .Z(n13) );
  CKXOR2D1 U28 ( .A1(In_2[1]), .A2(In_1[1]), .Z(n12) );
  AO22D0 U11 ( .A1(In_2[4]), .A2(In_1[4]), .B1(n15), .B2(In_3[4]), .Z(C[4]) );
  AO22D0 U13 ( .A1(In_2[5]), .A2(In_1[5]), .B1(n16), .B2(In_3[5]), .Z(C[5]) );
  AO22D0 U15 ( .A1(In_2[6]), .A2(In_1[6]), .B1(n17), .B2(In_3[6]), .Z(C[6]) );
  AO22D0 U17 ( .A1(In_2[7]), .A2(In_1[7]), .B1(n18), .B2(In_3[7]), .Z(C[7]) );
  AO22D0 U19 ( .A1(In_2[8]), .A2(In_1[8]), .B1(n19), .B2(In_3[8]), .Z(C[8]) );
  AO22D0 U21 ( .A1(In_2[2]), .A2(In_1[2]), .B1(n13), .B2(In_3[2]), .Z(C[2]) );
  AO22D0 U25 ( .A1(In_2[1]), .A2(In_1[1]), .B1(n12), .B2(In_3[1]), .Z(C[1]) );
  AO22D0 U27 ( .A1(In_2[3]), .A2(In_1[3]), .B1(n14), .B2(In_3[3]), .Z(C[3]) );
  XOR3D0 U1 ( .A1(In_1[9]), .A2(In_3[9]), .A3(In_2[9]), .Z(S[9]) );
  CKND1 U12 ( .I(n21), .ZN(C[0]) );
  CKND2D0 U23 ( .A1(In_3[0]), .A2(In_2[0]), .ZN(n21) );
endmodule


module CSA3_2_Array_WIDTH10_2 ( In_1, In_2, In_3, S, C );
  input [9:0] In_1;
  input [9:0] In_2;
  input [9:0] In_3;
  output [9:0] S;
  output [9:0] C;
  wire   n12, n13, n14, n15, n16, n17, n18, n19, n21;

  CKXOR2D1 U2 ( .A1(In_3[8]), .A2(n19), .Z(S[8]) );
  CKXOR2D1 U3 ( .A1(In_3[7]), .A2(n18), .Z(S[7]) );
  CKXOR2D1 U4 ( .A1(In_3[6]), .A2(n17), .Z(S[6]) );
  CKXOR2D1 U5 ( .A1(In_3[5]), .A2(n16), .Z(S[5]) );
  CKXOR2D1 U6 ( .A1(In_3[4]), .A2(n15), .Z(S[4]) );
  CKXOR2D1 U7 ( .A1(In_3[3]), .A2(n14), .Z(S[3]) );
  CKXOR2D1 U8 ( .A1(In_3[2]), .A2(n13), .Z(S[2]) );
  CKXOR2D1 U9 ( .A1(In_3[1]), .A2(n12), .Z(S[1]) );
  CKXOR2D1 U10 ( .A1(In_3[0]), .A2(In_1[0]), .Z(S[0]) );
  CKXOR2D1 U14 ( .A1(In_2[8]), .A2(In_1[8]), .Z(n19) );
  CKXOR2D1 U16 ( .A1(In_2[7]), .A2(In_1[7]), .Z(n18) );
  CKXOR2D1 U18 ( .A1(In_2[6]), .A2(In_1[6]), .Z(n17) );
  CKXOR2D1 U20 ( .A1(In_2[5]), .A2(In_1[5]), .Z(n16) );
  CKXOR2D1 U22 ( .A1(In_2[4]), .A2(In_1[4]), .Z(n15) );
  CKXOR2D1 U24 ( .A1(In_2[3]), .A2(In_1[3]), .Z(n14) );
  CKXOR2D1 U26 ( .A1(In_2[2]), .A2(In_1[2]), .Z(n13) );
  CKXOR2D1 U28 ( .A1(In_2[1]), .A2(In_1[1]), .Z(n12) );
  AO22D0 U11 ( .A1(In_2[3]), .A2(In_1[3]), .B1(n14), .B2(In_3[3]), .Z(C[3]) );
  AO22D0 U13 ( .A1(In_2[4]), .A2(In_1[4]), .B1(n15), .B2(In_3[4]), .Z(C[4]) );
  AO22D0 U15 ( .A1(In_2[5]), .A2(In_1[5]), .B1(n16), .B2(In_3[5]), .Z(C[5]) );
  AO22D0 U17 ( .A1(In_2[6]), .A2(In_1[6]), .B1(n17), .B2(In_3[6]), .Z(C[6]) );
  AO22D0 U19 ( .A1(In_2[7]), .A2(In_1[7]), .B1(n18), .B2(In_3[7]), .Z(C[7]) );
  AO22D0 U21 ( .A1(In_2[8]), .A2(In_1[8]), .B1(n19), .B2(In_3[8]), .Z(C[8]) );
  AO22D0 U23 ( .A1(In_2[2]), .A2(In_1[2]), .B1(n13), .B2(In_3[2]), .Z(C[2]) );
  AO22D0 U27 ( .A1(In_2[1]), .A2(In_1[1]), .B1(n12), .B2(In_3[1]), .Z(C[1]) );
  XOR3D0 U1 ( .A1(In_1[9]), .A2(In_3[9]), .A3(In_2[9]), .Z(S[9]) );
  CKND1 U12 ( .I(n21), .ZN(C[0]) );
  CKND2D0 U25 ( .A1(In_3[0]), .A2(In_1[0]), .ZN(n21) );
endmodule


module CSA3_2_Array_WIDTH10_1 ( In_1, In_2, In_3, S, C );
  input [9:0] In_1;
  input [9:0] In_2;
  input [9:0] In_3;
  output [9:0] S;
  output [9:0] C;
  wire   In_1_0_, n12, n13, n14, n15, n16, n17, n18, n19;
  assign S[0] = In_1_0_;
  assign In_1_0_ = In_1[0];

  CKXOR2D1 U2 ( .A1(In_3[8]), .A2(n19), .Z(S[8]) );
  CKXOR2D1 U3 ( .A1(In_3[7]), .A2(n18), .Z(S[7]) );
  CKXOR2D1 U4 ( .A1(In_3[6]), .A2(n17), .Z(S[6]) );
  CKXOR2D1 U5 ( .A1(In_3[5]), .A2(n16), .Z(S[5]) );
  CKXOR2D1 U6 ( .A1(In_3[4]), .A2(n15), .Z(S[4]) );
  CKXOR2D1 U7 ( .A1(In_3[3]), .A2(n14), .Z(S[3]) );
  CKXOR2D1 U8 ( .A1(In_3[2]), .A2(n13), .Z(S[2]) );
  CKXOR2D1 U9 ( .A1(In_3[1]), .A2(n12), .Z(S[1]) );
  CKXOR2D1 U14 ( .A1(In_2[8]), .A2(In_1[8]), .Z(n19) );
  CKXOR2D1 U16 ( .A1(In_2[7]), .A2(In_1[7]), .Z(n18) );
  CKXOR2D1 U18 ( .A1(In_2[6]), .A2(In_1[6]), .Z(n17) );
  CKXOR2D1 U20 ( .A1(In_2[5]), .A2(In_1[5]), .Z(n16) );
  CKXOR2D1 U22 ( .A1(In_2[4]), .A2(In_1[4]), .Z(n15) );
  CKXOR2D1 U24 ( .A1(In_2[3]), .A2(In_1[3]), .Z(n14) );
  CKXOR2D1 U26 ( .A1(In_2[2]), .A2(In_1[2]), .Z(n13) );
  CKXOR2D1 U28 ( .A1(In_2[1]), .A2(In_1[1]), .Z(n12) );
  AO22D0 U11 ( .A1(In_2[8]), .A2(In_1[8]), .B1(n19), .B2(In_3[8]), .Z(C[8]) );
  AO22D0 U13 ( .A1(In_2[3]), .A2(In_1[3]), .B1(n14), .B2(In_3[3]), .Z(C[3]) );
  AO22D0 U15 ( .A1(In_2[4]), .A2(In_1[4]), .B1(n15), .B2(In_3[4]), .Z(C[4]) );
  AO22D0 U17 ( .A1(In_2[5]), .A2(In_1[5]), .B1(n16), .B2(In_3[5]), .Z(C[5]) );
  AO22D0 U19 ( .A1(In_2[6]), .A2(In_1[6]), .B1(n17), .B2(In_3[6]), .Z(C[6]) );
  AO22D0 U21 ( .A1(In_2[7]), .A2(In_1[7]), .B1(n18), .B2(In_3[7]), .Z(C[7]) );
  AO22D0 U25 ( .A1(In_2[2]), .A2(In_1[2]), .B1(n13), .B2(In_3[2]), .Z(C[2]) );
  AO22D0 U27 ( .A1(In_2[1]), .A2(In_1[1]), .B1(n12), .B2(In_3[1]), .Z(C[1]) );
  XOR3D0 U1 ( .A1(In_1[9]), .A2(In_3[9]), .A3(In_2[9]), .Z(S[9]) );
endmodule


module Mantissa_Div_L4_Kec_MANTISSA_WIDTH8_DW01_add_0 ( A, B, CI, SUM, CO );
  input [9:0] A;
  input [9:0] B;
  output [9:0] SUM;
  input CI;
  output CO;
  wire   A_1_;
  wire   [9:3] carry;
  assign SUM[1] = A_1_;
  assign A_1_ = A[1];

  FA1D0 U1_2 ( .A(A[2]), .B(B[2]), .CI(1'b0), .CO(carry[3]), .S(SUM[2]) );
  FA1D0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1D0 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FA1D0 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA1D0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA1D0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1D0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  XOR3D1 U1_9 ( .A1(A[9]), .A2(B[9]), .A3(carry[9]), .Z(SUM[9]) );
endmodule


module Mantissa_Div_L4_Kec_MANTISSA_WIDTH8_DW01_sub_0_DW01_sub_1 ( A, B, CI, 
        DIFF, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10;
  wire   [8:3] carry;

  FA1D0 U2_7 ( .A(A[7]), .B(n1), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  FA1D0 U2_5 ( .A(A[5]), .B(n3), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  FA1D0 U2_6 ( .A(A[6]), .B(n2), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  FA1D0 U2_4 ( .A(A[4]), .B(n4), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FA1D0 U2_3 ( .A(A[3]), .B(n5), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  INVD1 U1 ( .I(B[3]), .ZN(n5) );
  INVD1 U2 ( .I(B[4]), .ZN(n4) );
  INVD1 U3 ( .I(B[6]), .ZN(n2) );
  INVD1 U4 ( .I(B[5]), .ZN(n3) );
  INVD1 U5 ( .I(A[1]), .ZN(n6) );
  INVD1 U6 ( .I(B[7]), .ZN(n1) );
  MOAI22D0 U7 ( .A1(B[2]), .A2(n7), .B1(n8), .B2(A[2]), .ZN(carry[3]) );
  NR2D0 U8 ( .A1(A[2]), .A2(n8), .ZN(n7) );
  OAI22D0 U9 ( .A1(n9), .A2(n6), .B1(B[1]), .B2(n10), .ZN(n8) );
  AN2D0 U10 ( .A1(n9), .A2(n6), .Z(n10) );
  INR2D0 U11 ( .A1(B[0]), .B1(A[0]), .ZN(n9) );
  CKND0 U12 ( .I(carry[8]), .ZN(DIFF[8]) );
endmodule


module Mantissa_Div_L4_Kec_MANTISSA_WIDTH8_DW01_sub_1_DW01_sub_2 ( A, B, CI, 
        DIFF, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] DIFF;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8;
  wire   [8:1] carry;

  FA1D0 U2_1 ( .A(A[1]), .B(n8), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  FA1D0 U2_7 ( .A(A[7]), .B(n2), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  FA1D0 U2_2 ( .A(A[2]), .B(n7), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  FA1D0 U2_6 ( .A(A[6]), .B(n3), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  FA1D0 U2_5 ( .A(A[5]), .B(n4), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  FA1D0 U2_4 ( .A(A[4]), .B(n5), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FA1D0 U2_3 ( .A(A[3]), .B(n6), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  INVD1 U1 ( .I(B[3]), .ZN(n6) );
  INVD1 U2 ( .I(B[4]), .ZN(n5) );
  INVD1 U3 ( .I(B[5]), .ZN(n4) );
  INVD1 U4 ( .I(B[6]), .ZN(n3) );
  INVD1 U5 ( .I(B[2]), .ZN(n7) );
  INVD1 U6 ( .I(B[7]), .ZN(n2) );
  INVD1 U8 ( .I(B[1]), .ZN(n8) );
  CKND0 U12 ( .I(carry[8]), .ZN(DIFF[8]) );
  CKXOR2D0 U7 ( .A1(A[0]), .A2(B[0]), .Z(DIFF[0]) );
  IND2D0 U9 ( .A1(A[0]), .B1(B[0]), .ZN(carry[1]) );
endmodule


module Mantissa_Div_L4_Kec_MANTISSA_WIDTH8 ( Mantissa_X, Mantissa_Y, 
        Mantissa_Out, Shift );
  input [7:0] Mantissa_X;
  input [7:0] Mantissa_Y;
  output [7:0] Mantissa_Out;
  output Shift;
  wire   n13, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n73,
         n74, n75, n76, n77, n78, n79, n80, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102;
  wire   [8:0] x_sub_y;
  wire   [8:3] y_sub_x;
  wire   [9:0] L1_p2;
  wire   [9:0] L2_p;
  wire   [5:0] L3_p1;
  wire   [3:0] L3_p2;
  wire   [4:0] L4_p1;
  wire   [9:0] L4_p2;
  wire   [9:0] A11S;
  wire   [8:0] A11C;
  wire   [9:0] A12S;
  wire   [8:0] A12C;
  wire   [9:0] A21S;
  wire   [8:0] A21C;
  wire   [9:0] A22S;
  wire   [8:0] A22C;
  wire   [9:0] A31S;
  wire   [8:0] A31C;
  wire   [9:0] A41S;
  wire   [8:1] A41C;
  wire   [8:1] Res;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10;

  MOAI22D1 U9 ( .A1(n41), .A2(n84), .B1(Res[8]), .B2(Shift), .ZN(
        Mantissa_Out[7]) );
  OR2D1 U17 ( .A1(Res[8]), .A2(Shift), .Z(n42) );
  OR3D1 U25 ( .A1(n49), .A2(n102), .A3(n69), .Z(n44) );
  AN2XD1 U49 ( .A1(x_sub_y[1]), .A2(n82), .Z(L1_p2[0]) );
  CSA3_2_Array_WIDTH10_0 Stage_1_1 ( .In_1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .In_2({x_sub_y[8], x_sub_y}), .In_3({
        L1_p2[9], L1_p2[9], L1_p2[9], L1_p2[6:0]}), .S(A11S), .C({
        SYNOPSYS_UNCONNECTED__0, A11C}) );
  CSA3_2_Array_WIDTH10_5 Stage_1_2 ( .In_1({L2_p[9], L2_p[9], L2_p[9], L2_p[9], 
        L2_p[5:0]}), .In_2({L3_p1[5], L3_p1[5], L3_p1[5], L3_p1[5], L3_p1}), 
        .In_3({L3_p2[3], L3_p2[3], L3_p2[3], L3_p2[3], L3_p2[3], L3_p2[3], 
        L3_p2}), .S(A12S), .C({SYNOPSYS_UNCONNECTED__1, A12C}) );
  CSA3_2_Array_WIDTH10_4 Stage_2_1 ( .In_1(A11S), .In_2({A11C, 1'b0}), .In_3(
        A12S), .S(A21S), .C({SYNOPSYS_UNCONNECTED__2, A21C}) );
  CSA3_2_Array_WIDTH10_3 Stage_2_2 ( .In_1({A12C, 1'b0}), .In_2({L4_p1[4], 
        L4_p1[4], L4_p1[4], L4_p1[4], L4_p1[4], L4_p1}), .In_3({L4_p2[9], 
        L4_p2[9], L4_p2[9], L4_p2[9], L4_p2[9], L4_p2[9], L4_p2[9], L4_p2[9], 
        L4_p2[1:0]}), .S(A22S), .C({SYNOPSYS_UNCONNECTED__3, A22C}) );
  CSA3_2_Array_WIDTH10_2 Stage_3_1 ( .In_1(A21S), .In_2({A21C, 1'b0}), .In_3(
        A22S), .S(A31S), .C({SYNOPSYS_UNCONNECTED__4, A31C}) );
  CSA3_2_Array_WIDTH10_1 Stage_4_1 ( .In_1(A31S), .In_2({A31C, 1'b0}), .In_3({
        A22C, 1'b0}), .S(A41S), .C({SYNOPSYS_UNCONNECTED__5, A41C, 
        SYNOPSYS_UNCONNECTED__6}) );
  Mantissa_Div_L4_Kec_MANTISSA_WIDTH8_DW01_add_0 add_205 ( .A(A41S), .B({A41C, 
        1'b0, n13}), .CI(n13), .SUM({Shift, Res, SYNOPSYS_UNCONNECTED__7}) );
  Mantissa_Div_L4_Kec_MANTISSA_WIDTH8_DW01_sub_0_DW01_sub_1 sub_18 ( .A({n13, 
        Mantissa_Y}), .B({n13, Mantissa_X}), .CI(n13), .DIFF({y_sub_x, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10}) );
  Mantissa_Div_L4_Kec_MANTISSA_WIDTH8_DW01_sub_1_DW01_sub_2 sub_17 ( .A({n13, 
        Mantissa_X}), .B({n13, Mantissa_Y}), .CI(n13), .DIFF(x_sub_y) );
  INVD1 U3 ( .I(n40), .ZN(n76) );
  OAI32D1 U4 ( .A1(n77), .A2(n76), .A3(n70), .B1(n80), .B2(n40), .ZN(L3_p2[3])
         );
  OAI21D1 U5 ( .A1(n31), .A2(n30), .B(n29), .ZN(L4_p1[4]) );
  OAI222D0 U7 ( .A1(n41), .A2(n87), .B1(n85), .B2(n42), .C1(n83), .C2(n86), 
        .ZN(Mantissa_Out[4]) );
  OAI222D0 U8 ( .A1(n41), .A2(n86), .B1(n84), .B2(n42), .C1(n83), .C2(n85), 
        .ZN(Mantissa_Out[5]) );
  OAI22D1 U10 ( .A1(n83), .A2(n84), .B1(n41), .B2(n85), .ZN(Mantissa_Out[6])
         );
  ND2D1 U11 ( .A1(Res[8]), .A2(n83), .ZN(n41) );
  INVD1 U12 ( .I(Shift), .ZN(n83) );
  OAI222D0 U13 ( .A1(n41), .A2(n88), .B1(n42), .B2(n86), .C1(n83), .C2(n87), 
        .ZN(Mantissa_Out[3]) );
  INVD1 U14 ( .I(Res[7]), .ZN(n84) );
  INVD1 U15 ( .I(n59), .ZN(n73) );
  INVD1 U16 ( .I(Res[6]), .ZN(n85) );
  INVD1 U18 ( .I(Res[5]), .ZN(n86) );
  INVD1 U19 ( .I(Res[4]), .ZN(n87) );
  INVD1 U20 ( .I(y_sub_x[8]), .ZN(n77) );
  INVD1 U21 ( .I(x_sub_y[8]), .ZN(n80) );
  OAI222D0 U22 ( .A1(n41), .A2(n89), .B1(n42), .B2(n87), .C1(n83), .C2(n88), 
        .ZN(Mantissa_Out[2]) );
  OAI221D1 U23 ( .A1(n77), .A2(n43), .B1(n80), .B2(n44), .C(n45), .ZN(L4_p2[9]) );
  OA22D0 U24 ( .A1(n46), .A2(n77), .B1(n47), .B2(n80), .Z(n45) );
  OAI221D0 U26 ( .A1(n43), .A2(n95), .B1(n44), .B2(n79), .C(n45), .ZN(L4_p2[1]) );
  OAI221D0 U28 ( .A1(n47), .A2(n79), .B1(n46), .B2(n95), .C(n48), .ZN(L4_p2[0]) );
  OA22D0 U29 ( .A1(n33), .A2(n44), .B1(n96), .B2(n43), .Z(n48) );
  INVD1 U30 ( .I(Res[3]), .ZN(n88) );
  INVD1 U31 ( .I(n18), .ZN(n32) );
  INVD1 U32 ( .I(n31), .ZN(n35) );
  OAI222D0 U33 ( .A1(n41), .A2(n90), .B1(n42), .B2(n88), .C1(n83), .C2(n89), 
        .ZN(Mantissa_Out[1]) );
  INVD1 U34 ( .I(n36), .ZN(n70) );
  INVD1 U35 ( .I(x_sub_y[7]), .ZN(n79) );
  INVD1 U36 ( .I(x_sub_y[6]), .ZN(n33) );
  OAI222D0 U37 ( .A1(n55), .A2(n95), .B1(n79), .B2(n100), .C1(n49), .C2(n33), 
        .ZN(L2_p[4]) );
  INVD1 U38 ( .I(y_sub_x[7]), .ZN(n95) );
  OAI222D0 U39 ( .A1(n55), .A2(n96), .B1(n33), .B2(n100), .C1(n49), .C2(n78), 
        .ZN(L2_p[3]) );
  INVD1 U40 ( .I(y_sub_x[6]), .ZN(n96) );
  OAI222D0 U41 ( .A1(n97), .A2(n55), .B1(n78), .B2(n100), .C1(n92), .C2(n49), 
        .ZN(L2_p[2]) );
  INVD1 U42 ( .I(y_sub_x[5]), .ZN(n97) );
  AOI22D1 U43 ( .A1(y_sub_x[8]), .A2(n101), .B1(x_sub_y[8]), .B2(n53), .ZN(n54) );
  OAI21D1 U44 ( .A1(n49), .A2(n79), .B(n54), .ZN(L2_p[5]) );
  OAI21D1 U45 ( .A1(n49), .A2(n80), .B(n54), .ZN(L2_p[9]) );
  INVD1 U46 ( .I(x_sub_y[5]), .ZN(n78) );
  OAI222D0 U47 ( .A1(n98), .A2(n55), .B1(n92), .B2(n100), .C1(n93), .C2(n49), 
        .ZN(L2_p[1]) );
  INVD1 U48 ( .I(y_sub_x[4]), .ZN(n98) );
  INVD1 U50 ( .I(x_sub_y[4]), .ZN(n92) );
  NR2D1 U51 ( .A1(n80), .A2(Mantissa_Y[7]), .ZN(L1_p2[9]) );
  OAI222D0 U53 ( .A1(n99), .A2(n55), .B1(n93), .B2(n100), .C1(n94), .C2(n49), 
        .ZN(L2_p[0]) );
  INVD1 U54 ( .I(y_sub_x[3]), .ZN(n99) );
  NR2D1 U55 ( .A1(Mantissa_Y[7]), .A2(n79), .ZN(L1_p2[6]) );
  INVD1 U56 ( .I(x_sub_y[3]), .ZN(n93) );
  NR2D1 U57 ( .A1(Mantissa_Y[7]), .A2(n33), .ZN(L1_p2[5]) );
  NR2D1 U58 ( .A1(Mantissa_Y[7]), .A2(n78), .ZN(L1_p2[4]) );
  NR2D1 U59 ( .A1(Mantissa_Y[7]), .A2(n92), .ZN(L1_p2[3]) );
  NR2D1 U60 ( .A1(Mantissa_Y[7]), .A2(n93), .ZN(L1_p2[2]) );
  INVD1 U61 ( .I(x_sub_y[2]), .ZN(n94) );
  INVD1 U62 ( .I(n53), .ZN(n100) );
  NR2D1 U63 ( .A1(Mantissa_Y[7]), .A2(n94), .ZN(L1_p2[1]) );
  INVD1 U64 ( .I(n55), .ZN(n101) );
  OA22D0 U65 ( .A1(n52), .A2(n49), .B1(n51), .B2(n50), .Z(n47) );
  NR2D1 U66 ( .A1(n53), .A2(n101), .ZN(n51) );
  OA22D0 U67 ( .A1(n50), .A2(n49), .B1(n51), .B2(n52), .Z(n46) );
  ND3D1 U68 ( .A1(n102), .A2(n69), .A3(n101), .ZN(n43) );
  INVD1 U69 ( .I(Res[2]), .ZN(n89) );
  INVD1 U70 ( .I(n23), .ZN(n34) );
  INVD1 U71 ( .I(Mantissa_Y[6]), .ZN(n71) );
  INVD1 U72 ( .I(n65), .ZN(n75) );
  INVD1 U73 ( .I(Mantissa_Y[5]), .ZN(n69) );
  OR2XD1 U74 ( .A1(Mantissa_Y[6]), .A2(Mantissa_Y[7]), .Z(n49) );
  NR2D1 U75 ( .A1(n82), .A2(Mantissa_Y[6]), .ZN(n53) );
  ND2D1 U76 ( .A1(Mantissa_Y[6]), .A2(n82), .ZN(n55) );
  INVD1 U77 ( .I(Mantissa_Y[4]), .ZN(n102) );
  ND2D1 U78 ( .A1(Mantissa_Y[5]), .A2(n102), .ZN(n50) );
  ND2D1 U79 ( .A1(Mantissa_Y[4]), .A2(n69), .ZN(n52) );
  INVD1 U80 ( .I(Res[1]), .ZN(n90) );
  OAI222D0 U82 ( .A1(n91), .A2(n41), .B1(n89), .B2(n42), .C1(n90), .C2(n83), 
        .ZN(Mantissa_Out[0]) );
  INVD1 U83 ( .I(A41S[0]), .ZN(n91) );
  TIEL U85 ( .ZN(n13) );
  CKXOR2D0 U86 ( .A1(Mantissa_Y[6]), .A2(n69), .Z(n2) );
  CKND2D0 U87 ( .A1(n71), .A2(n69), .ZN(n1) );
  CKND2D0 U88 ( .A1(Mantissa_Y[5]), .A2(Mantissa_Y[6]), .ZN(n14) );
  OAI222D0 U89 ( .A1(n2), .A2(n33), .B1(n78), .B2(n1), .C1(n14), .C2(n79), 
        .ZN(n4) );
  MAOI22D0 U90 ( .A1(x_sub_y[4]), .A2(n14), .B1(n78), .B2(n14), .ZN(n3) );
  MAOI22D0 U91 ( .A1(n4), .A2(Mantissa_Y[7]), .B1(Mantissa_Y[7]), .B2(n3), 
        .ZN(n8) );
  CKND2D0 U92 ( .A1(Mantissa_Y[7]), .A2(n71), .ZN(n18) );
  CKND2D0 U93 ( .A1(Mantissa_Y[6]), .A2(n82), .ZN(n28) );
  INR2D0 U94 ( .A1(y_sub_x[7]), .B1(n71), .ZN(n5) );
  AOI33D0 U95 ( .A1(Mantissa_Y[7]), .A2(n69), .A3(n5), .B1(n82), .B2(n71), 
        .B3(y_sub_x[4]), .ZN(n6) );
  OAI221D0 U96 ( .A1(n18), .A2(n96), .B1(n28), .B2(n97), .C(n6), .ZN(n7) );
  MOAI22D0 U97 ( .A1(Mantissa_Y[4]), .A2(n8), .B1(n7), .B2(Mantissa_Y[4]), 
        .ZN(L4_p1[0]) );
  AOI22D0 U98 ( .A1(n69), .A2(n33), .B1(Mantissa_Y[5]), .B2(n79), .ZN(n9) );
  OAI22D0 U99 ( .A1(y_sub_x[7]), .A2(n102), .B1(Mantissa_Y[4]), .B2(n9), .ZN(
        n22) );
  OAI22D0 U100 ( .A1(y_sub_x[8]), .A2(n102), .B1(x_sub_y[7]), .B2(
        Mantissa_Y[4]), .ZN(n19) );
  NR2D0 U101 ( .A1(n102), .A2(Mantissa_Y[7]), .ZN(n25) );
  MOAI22D0 U102 ( .A1(n19), .A2(n82), .B1(n25), .B2(y_sub_x[6]), .ZN(n11) );
  AOI22D0 U103 ( .A1(n96), .A2(Mantissa_Y[4]), .B1(n33), .B2(n102), .ZN(n20)
         );
  AOI32D0 U104 ( .A1(Mantissa_Y[7]), .A2(n102), .A3(x_sub_y[8]), .B1(n82), 
        .B2(n20), .ZN(n10) );
  MAOI22D0 U105 ( .A1(n11), .A2(n69), .B1(n10), .B2(n69), .ZN(n16) );
  NR2D0 U106 ( .A1(Mantissa_Y[4]), .A2(Mantissa_Y[7]), .ZN(n12) );
  AOI33D0 U107 ( .A1(x_sub_y[5]), .A2(n14), .A3(n12), .B1(n25), .B2(n71), .B3(
        y_sub_x[5]), .ZN(n15) );
  OAI221D0 U108 ( .A1(n22), .A2(n18), .B1(n71), .B2(n16), .C(n15), .ZN(
        L4_p1[1]) );
  OAI22D0 U109 ( .A1(y_sub_x[8]), .A2(n102), .B1(x_sub_y[8]), .B2(
        Mantissa_Y[4]), .ZN(n31) );
  IOA21D0 U110 ( .A1(n102), .A2(x_sub_y[8]), .B(Mantissa_Y[5]), .ZN(n17) );
  CKND2D0 U111 ( .A1(n35), .A2(n17), .ZN(n29) );
  OR3D0 U112 ( .A1(n29), .A2(n82), .A3(n71), .Z(n26) );
  AOI22D0 U113 ( .A1(n69), .A2(n19), .B1(n31), .B2(Mantissa_Y[5]), .ZN(n23) );
  AOI32D0 U114 ( .A1(n82), .A2(n71), .A3(n20), .B1(n32), .B2(n23), .ZN(n21) );
  OAI211D0 U115 ( .A1(n22), .A2(n28), .B(n26), .C(n21), .ZN(L4_p1[2]) );
  NR3D0 U116 ( .A1(n79), .A2(Mantissa_Y[4]), .A3(Mantissa_Y[7]), .ZN(n24) );
  AOI221D0 U117 ( .A1(Mantissa_Y[7]), .A2(n35), .B1(y_sub_x[7]), .B2(n25), .C(
        n24), .ZN(n27) );
  OAI221D0 U118 ( .A1(n34), .A2(n28), .B1(Mantissa_Y[6]), .B2(n27), .C(n26), 
        .ZN(L4_p1[3]) );
  NR2D0 U119 ( .A1(n82), .A2(n71), .ZN(n30) );
  ND3D0 U120 ( .A1(n82), .A2(n71), .A3(n69), .ZN(n39) );
  NR2D0 U121 ( .A1(n69), .A2(Mantissa_Y[6]), .ZN(n36) );
  CKND2D0 U122 ( .A1(Mantissa_Y[7]), .A2(n36), .ZN(n38) );
  NR2D0 U123 ( .A1(n70), .A2(Mantissa_Y[7]), .ZN(n59) );
  NR2D0 U124 ( .A1(n71), .A2(Mantissa_Y[5]), .ZN(n56) );
  NR2D0 U125 ( .A1(n59), .A2(n56), .ZN(n37) );
  OAI222D0 U126 ( .A1(n33), .A2(n39), .B1(n97), .B2(n38), .C1(n78), .C2(n37), 
        .ZN(L3_p2[0]) );
  OAI222D0 U127 ( .A1(n79), .A2(n39), .B1(n96), .B2(n38), .C1(n33), .C2(n37), 
        .ZN(L3_p2[1]) );
  OAI222D0 U128 ( .A1(n80), .A2(n39), .B1(n95), .B2(n38), .C1(n79), .C2(n37), 
        .ZN(L3_p2[2]) );
  AOI21D0 U129 ( .A1(n71), .A2(n82), .B(n56), .ZN(n40) );
  NR2D0 U130 ( .A1(n71), .A2(n82), .ZN(n66) );
  CKND2D0 U131 ( .A1(Mantissa_Y[5]), .A2(n66), .ZN(n60) );
  NR2D0 U133 ( .A1(n66), .A2(Mantissa_Y[5]), .ZN(n65) );
  AOI22D0 U134 ( .A1(x_sub_y[3]), .A2(n65), .B1(y_sub_x[4]), .B2(n59), .ZN(n57) );
  OAI221D0 U135 ( .A1(n60), .A2(n33), .B1(n74), .B2(n92), .C(n57), .ZN(
        L3_p1[0]) );
  AOI22D0 U136 ( .A1(x_sub_y[4]), .A2(n65), .B1(y_sub_x[5]), .B2(n59), .ZN(n58) );
  OAI221D0 U137 ( .A1(n79), .A2(n60), .B1(n74), .B2(n78), .C(n58), .ZN(
        L3_p1[1]) );
  IND2D0 U138 ( .A1(n60), .B1(x_sub_y[8]), .ZN(n64) );
  AOI22D0 U139 ( .A1(x_sub_y[6]), .A2(n62), .B1(x_sub_y[5]), .B2(n65), .ZN(n61) );
  OAI211D0 U140 ( .A1(n73), .A2(n96), .B(n64), .C(n61), .ZN(L3_p1[2]) );
  AOI22D0 U141 ( .A1(n62), .A2(x_sub_y[7]), .B1(x_sub_y[6]), .B2(n65), .ZN(n63) );
  OAI211D0 U142 ( .A1(n73), .A2(n95), .B(n64), .C(n63), .ZN(L3_p1[3]) );
  AOI21D0 U143 ( .A1(Mantissa_Y[7]), .A2(Mantissa_Y[5]), .B(n66), .ZN(n67) );
  OAI222D0 U144 ( .A1(n75), .A2(n79), .B1(n80), .B2(n67), .C1(n73), .C2(n77), 
        .ZN(L3_p1[4]) );
  NR2D0 U145 ( .A1(n69), .A2(Mantissa_Y[7]), .ZN(n68) );
  OAI22D0 U146 ( .A1(n73), .A2(n77), .B1(n68), .B2(n80), .ZN(L3_p1[5]) );
  CKND0 U6 ( .I(n74), .ZN(n62) );
  OAI21D0 U27 ( .A1(n56), .A2(n36), .B(Mantissa_Y[7]), .ZN(n74) );
  CKND0 U52 ( .I(Mantissa_Y[7]), .ZN(n82) );
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
  FA1D0 U35 ( .A(N4), .B(exponent_adjust[1]), .CI(n1), .CO(
        add_0_root_add_0_root_add_22_2_carry[2]), .S(result[24]) );
  FA1D0 U36 ( .A(N5), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[2]), .CO(
        add_0_root_add_0_root_add_22_2_carry[3]), .S(result[25]) );
  FA1D0 U37 ( .A(N6), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[3]), .CO(
        add_0_root_add_0_root_add_22_2_carry[4]), .S(result[26]) );
  FA1D0 U38 ( .A(N7), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[4]), .CO(
        add_0_root_add_0_root_add_22_2_carry[5]), .S(result[27]) );
  FA1D0 U39 ( .A(N8), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[5]), .CO(
        add_0_root_add_0_root_add_22_2_carry[6]), .S(result[28]) );
  FA1D0 U40 ( .A(N9), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[6]), .CO(
        add_0_root_add_0_root_add_22_2_carry[7]), .S(result[29]) );
  XOR3D1 U49 ( .A1(N10), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_22_2_carry[7]), .Z(result[30]) );
  CKBD1 U53 ( .I(y[19]), .Z(fraction_y[19]) );
  CKBD1 U55 ( .I(y[20]), .Z(fraction_y[20]) );
  CKBD1 U57 ( .I(y[22]), .Z(fraction_y[22]) );
  CKBD1 U58 ( .I(y[21]), .Z(fraction_y[21]) );
  INVD1 U61 ( .I(y[29]), .ZN(N17) );
  INVD1 U62 ( .I(y[24]), .ZN(N12) );
  INVD1 U63 ( .I(y[25]), .ZN(N13) );
  INVD1 U64 ( .I(y[26]), .ZN(N14) );
  INVD1 U65 ( .I(y[27]), .ZN(N15) );
  INVD1 U66 ( .I(y[28]), .ZN(N16) );
  CKBD1 U87 ( .I(x[22]), .Z(fraction_x[22]) );
  CKBD1 U88 ( .I(x[21]), .Z(fraction_x[21]) );
  CKBD1 U89 ( .I(x[20]), .Z(fraction_x[20]) );
  CKBD1 U90 ( .I(x[19]), .Z(fraction_x[19]) );
  CKBD1 U91 ( .I(x[18]), .Z(fraction_x[18]) );
  CKBD1 U92 ( .I(x[17]), .Z(fraction_x[17]) );
  CKBD1 U93 ( .I(x[16]), .Z(fraction_x[16]) );
  CKBD1 U94 ( .I(x[15]), .Z(fraction_x[15]) );
  CKBD1 U95 ( .I(y[18]), .Z(fraction_y[18]) );
  CKBD1 U96 ( .I(y[17]), .Z(fraction_y[17]) );
  CKBD1 U97 ( .I(y[16]), .Z(fraction_y[16]) );
  CKBD1 U98 ( .I(y[15]), .Z(fraction_y[15]) );
  CKBD1 U99 ( .I(result_fraction[22]), .Z(result[22]) );
  CKBD1 U100 ( .I(result_fraction[21]), .Z(result[21]) );
  CKBD1 U101 ( .I(result_fraction[20]), .Z(result[20]) );
  CKBD1 U102 ( .I(result_fraction[19]), .Z(result[19]) );
  CKBD1 U103 ( .I(result_fraction[18]), .Z(result[18]) );
  CKBD1 U104 ( .I(result_fraction[17]), .Z(result[17]) );
  CKBD1 U105 ( .I(result_fraction[16]), .Z(result[16]) );
  CKBD1 U106 ( .I(result_fraction[15]), .Z(result[15]) );
  TIEL U110 ( .ZN(n79) );
  CKXOR2D1 U111 ( .A1(exponent_adjust[0]), .A2(N3), .Z(result[23]) );
  CKND0 U119 ( .I(y[23]), .ZN(N11) );
endmodule


module FP_DIV_WRAPPER_32_width_trunc15 ( x, y, out0, mantissa_x, mantissa_y, 
        mantissa_out, shift );
  input [31:0] x;
  input [31:0] y;
  output [31:0] out0;
  output [7:0] mantissa_x;
  output [7:0] mantissa_y;
  input [7:0] mantissa_out;
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
        SYNOPSYS_UNCONNECTED__44;

  fp32_normal_finite_wrapper shared_wrapper ( .x({x[31:15], 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y({y[31:15], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .divide_mode(1'b0), .fraction_x({
        mantissa_x, SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14}), .fraction_y({mantissa_y, 
        SYNOPSYS_UNCONNECTED__15, SYNOPSYS_UNCONNECTED__16, 
        SYNOPSYS_UNCONNECTED__17, SYNOPSYS_UNCONNECTED__18, 
        SYNOPSYS_UNCONNECTED__19, SYNOPSYS_UNCONNECTED__20, 
        SYNOPSYS_UNCONNECTED__21, SYNOPSYS_UNCONNECTED__22, 
        SYNOPSYS_UNCONNECTED__23, SYNOPSYS_UNCONNECTED__24, 
        SYNOPSYS_UNCONNECTED__25, SYNOPSYS_UNCONNECTED__26, 
        SYNOPSYS_UNCONNECTED__27, SYNOPSYS_UNCONNECTED__28, 
        SYNOPSYS_UNCONNECTED__29}), .result_fraction({mantissa_out, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .exponent_adjust({shift[0], shift[0], shift[0]}), .result({
        out0[31:15], SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31, 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, 
        SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39, 
        SYNOPSYS_UNCONNECTED__40, SYNOPSYS_UNCONNECTED__41, 
        SYNOPSYS_UNCONNECTED__42, SYNOPSYS_UNCONNECTED__43, 
        SYNOPSYS_UNCONNECTED__44}) );
endmodule


module fig8_pace_l4_d15 ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   shift, n1;
  wire   [7:0] mx;
  wire   [7:0] my;
  wire   [7:0] mz;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14;
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

  Mantissa_Div_L4_Kec_MANTISSA_WIDTH8 core ( .Mantissa_X(mx), .Mantissa_Y(my), 
        .Mantissa_Out(mz), .Shift(shift) );
  FP_DIV_WRAPPER_32_width_trunc15 shell ( .x({x[31:15], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .y({y[31:15], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .out0({result[31:15], 
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14}), .mantissa_x(mx), .mantissa_y(my), 
        .mantissa_out(mz), .shift(n1) );
  INVD1 U2 ( .I(shift), .ZN(n1) );
endmodule

