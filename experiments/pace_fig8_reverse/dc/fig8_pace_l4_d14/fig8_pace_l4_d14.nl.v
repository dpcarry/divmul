/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Sat Sep  5 13:14:43 2026
/////////////////////////////////////////////////////////////


module CSA3_2_Array_WIDTH11_0 ( In_1, In_2, In_3, S, C );
  input [10:0] In_1;
  input [10:0] In_2;
  input [10:0] In_3;
  output [10:0] S;
  output [10:0] C;
  wire   n12, n13, n14, n15, n16, n17, n18, n19, n20, n21;

  CKXOR2D1 U1 ( .A1(In_3[9]), .A2(In_2[9]), .Z(S[9]) );
  CKXOR2D1 U2 ( .A1(In_3[8]), .A2(In_2[8]), .Z(S[8]) );
  CKXOR2D1 U3 ( .A1(In_3[7]), .A2(In_2[7]), .Z(S[7]) );
  CKXOR2D1 U4 ( .A1(In_3[6]), .A2(In_2[6]), .Z(S[6]) );
  CKXOR2D1 U5 ( .A1(In_3[5]), .A2(In_2[5]), .Z(S[5]) );
  CKXOR2D1 U6 ( .A1(In_3[4]), .A2(In_2[4]), .Z(S[4]) );
  CKXOR2D1 U7 ( .A1(In_3[3]), .A2(In_2[3]), .Z(S[3]) );
  CKXOR2D1 U8 ( .A1(In_3[2]), .A2(In_2[2]), .Z(S[2]) );
  CKXOR2D1 U9 ( .A1(In_3[1]), .A2(In_2[1]), .Z(S[1]) );
  CKXOR2D1 U11 ( .A1(In_3[0]), .A2(In_2[0]), .Z(S[0]) );
  XNR2D0 U10 ( .A1(In_3[10]), .A2(In_2[10]), .ZN(S[10]) );
  CKND0 U12 ( .I(n21), .ZN(C[9]) );
  CKND1 U13 ( .I(n20), .ZN(C[8]) );
  CKND2D0 U14 ( .A1(In_3[9]), .A2(In_2[9]), .ZN(n21) );
  CKND1 U15 ( .I(n19), .ZN(C[7]) );
  CKND2D0 U16 ( .A1(In_3[8]), .A2(In_2[8]), .ZN(n20) );
  CKND1 U17 ( .I(n18), .ZN(C[6]) );
  CKND2D0 U18 ( .A1(In_3[7]), .A2(In_2[7]), .ZN(n19) );
  CKND1 U19 ( .I(n17), .ZN(C[5]) );
  CKND2D0 U20 ( .A1(In_3[6]), .A2(In_2[6]), .ZN(n18) );
  CKND1 U21 ( .I(n16), .ZN(C[4]) );
  CKND2D0 U22 ( .A1(In_3[5]), .A2(In_2[5]), .ZN(n17) );
  CKND1 U23 ( .I(n15), .ZN(C[3]) );
  CKND2D0 U24 ( .A1(In_3[4]), .A2(In_2[4]), .ZN(n16) );
  CKND1 U25 ( .I(n14), .ZN(C[2]) );
  CKND2D0 U26 ( .A1(In_3[3]), .A2(In_2[3]), .ZN(n15) );
  CKND1 U27 ( .I(n13), .ZN(C[1]) );
  CKND1 U28 ( .I(n12), .ZN(C[0]) );
  CKND2D0 U29 ( .A1(In_3[2]), .A2(In_2[2]), .ZN(n14) );
  CKND2D0 U30 ( .A1(In_3[1]), .A2(In_2[1]), .ZN(n13) );
  CKND2D0 U31 ( .A1(In_3[0]), .A2(In_2[0]), .ZN(n12) );
endmodule


module CSA3_2_Array_WIDTH11_5 ( In_1, In_2, In_3, S, C );
  input [10:0] In_1;
  input [10:0] In_2;
  input [10:0] In_3;
  output [10:0] S;
  output [10:0] C;
  wire   n12, n14, n15, n16, n17, n18, n19, n20, n21, n22;

  CKXOR2D1 U7 ( .A1(In_3[3]), .A2(n16), .Z(S[3]) );
  CKXOR2D1 U8 ( .A1(In_3[2]), .A2(n15), .Z(S[2]) );
  CKXOR2D1 U9 ( .A1(In_3[1]), .A2(n14), .Z(S[1]) );
  CKXOR2D1 U11 ( .A1(In_3[0]), .A2(n12), .Z(S[0]) );
  CKXOR2D1 U13 ( .A1(In_2[9]), .A2(In_1[9]), .Z(n22) );
  CKXOR2D1 U15 ( .A1(In_2[8]), .A2(In_1[8]), .Z(n21) );
  CKXOR2D1 U17 ( .A1(In_2[7]), .A2(In_1[7]), .Z(n20) );
  CKXOR2D1 U19 ( .A1(In_2[6]), .A2(In_1[6]), .Z(n19) );
  CKXOR2D1 U21 ( .A1(In_2[5]), .A2(In_1[5]), .Z(n18) );
  CKXOR2D1 U23 ( .A1(In_2[4]), .A2(In_1[4]), .Z(n17) );
  CKXOR2D1 U25 ( .A1(In_2[3]), .A2(In_1[3]), .Z(n16) );
  CKXOR2D1 U27 ( .A1(In_2[2]), .A2(In_1[2]), .Z(n15) );
  CKXOR2D1 U29 ( .A1(In_2[1]), .A2(In_1[1]), .Z(n14) );
  CKXOR2D1 U33 ( .A1(In_2[0]), .A2(In_1[0]), .Z(n12) );
  CKXOR2D0 U1 ( .A1(In_3[4]), .A2(n17), .Z(S[4]) );
  CKXOR2D0 U2 ( .A1(In_3[5]), .A2(n18), .Z(S[5]) );
  CKXOR2D0 U3 ( .A1(In_3[6]), .A2(n19), .Z(S[6]) );
  CKXOR2D0 U4 ( .A1(In_3[7]), .A2(n20), .Z(S[7]) );
  CKXOR2D0 U5 ( .A1(In_3[8]), .A2(n21), .Z(S[8]) );
  CKXOR2D0 U6 ( .A1(In_3[9]), .A2(n22), .Z(S[9]) );
  AO22D0 U12 ( .A1(In_2[4]), .A2(In_1[4]), .B1(n17), .B2(In_3[4]), .Z(C[4]) );
  AO22D0 U14 ( .A1(In_2[6]), .A2(In_1[6]), .B1(n19), .B2(In_3[6]), .Z(C[6]) );
  AO22D0 U16 ( .A1(In_2[7]), .A2(In_1[7]), .B1(n20), .B2(In_3[7]), .Z(C[7]) );
  AO22D0 U18 ( .A1(In_2[8]), .A2(In_1[8]), .B1(n21), .B2(In_3[8]), .Z(C[8]) );
  AO22D0 U20 ( .A1(In_2[9]), .A2(In_1[9]), .B1(n22), .B2(In_3[9]), .Z(C[9]) );
  AO22D0 U22 ( .A1(In_2[1]), .A2(In_1[1]), .B1(n14), .B2(In_3[1]), .Z(C[1]) );
  AO22D0 U24 ( .A1(In_2[2]), .A2(In_1[2]), .B1(n15), .B2(In_3[2]), .Z(C[2]) );
  AO22D0 U26 ( .A1(In_2[3]), .A2(In_1[3]), .B1(n16), .B2(In_3[3]), .Z(C[3]) );
  AO22D0 U28 ( .A1(In_2[0]), .A2(In_1[0]), .B1(n12), .B2(In_3[0]), .Z(C[0]) );
  AO22D0 U32 ( .A1(In_2[5]), .A2(In_1[5]), .B1(n18), .B2(In_3[5]), .Z(C[5]) );
  XOR3D0 U10 ( .A1(In_3[10]), .A2(In_1[10]), .A3(In_2[10]), .Z(S[10]) );
endmodule


module CSA3_2_Array_WIDTH11_4 ( In_1, In_2, In_3, S, C );
  input [10:0] In_1;
  input [10:0] In_2;
  input [10:0] In_3;
  output [10:0] S;
  output [10:0] C;
  wire   n14, n15, n16, n17, n18, n19, n20, n21, n22, n23;

  CKXOR2D1 U1 ( .A1(In_3[9]), .A2(n22), .Z(S[9]) );
  CKXOR2D1 U2 ( .A1(In_3[8]), .A2(n21), .Z(S[8]) );
  CKXOR2D1 U3 ( .A1(In_3[7]), .A2(n20), .Z(S[7]) );
  CKXOR2D1 U4 ( .A1(In_3[6]), .A2(n19), .Z(S[6]) );
  CKXOR2D1 U5 ( .A1(In_3[5]), .A2(n18), .Z(S[5]) );
  CKXOR2D1 U6 ( .A1(In_3[4]), .A2(n17), .Z(S[4]) );
  CKXOR2D1 U7 ( .A1(In_3[3]), .A2(n16), .Z(S[3]) );
  CKXOR2D1 U8 ( .A1(In_3[2]), .A2(n15), .Z(S[2]) );
  CKXOR2D1 U9 ( .A1(In_3[1]), .A2(n14), .Z(S[1]) );
  CKXOR2D1 U11 ( .A1(In_3[0]), .A2(In_1[0]), .Z(S[0]) );
  CKXOR2D1 U13 ( .A1(In_2[9]), .A2(In_1[9]), .Z(n22) );
  CKXOR2D1 U15 ( .A1(In_2[8]), .A2(In_1[8]), .Z(n21) );
  CKXOR2D1 U17 ( .A1(In_2[7]), .A2(In_1[7]), .Z(n20) );
  CKXOR2D1 U19 ( .A1(In_2[6]), .A2(In_1[6]), .Z(n19) );
  CKXOR2D1 U21 ( .A1(In_2[5]), .A2(In_1[5]), .Z(n18) );
  CKXOR2D1 U23 ( .A1(In_2[4]), .A2(In_1[4]), .Z(n17) );
  CKXOR2D1 U25 ( .A1(In_2[3]), .A2(In_1[3]), .Z(n16) );
  CKXOR2D1 U27 ( .A1(In_2[2]), .A2(In_1[2]), .Z(n15) );
  CKXOR2D1 U29 ( .A1(In_2[1]), .A2(In_1[1]), .Z(n14) );
  AO22D0 U14 ( .A1(In_2[4]), .A2(In_1[4]), .B1(n17), .B2(In_3[4]), .Z(C[4]) );
  AO22D0 U16 ( .A1(In_2[5]), .A2(In_1[5]), .B1(n18), .B2(In_3[5]), .Z(C[5]) );
  AO22D0 U18 ( .A1(In_2[6]), .A2(In_1[6]), .B1(n19), .B2(In_3[6]), .Z(C[6]) );
  AO22D0 U20 ( .A1(In_2[7]), .A2(In_1[7]), .B1(n20), .B2(In_3[7]), .Z(C[7]) );
  AO22D0 U22 ( .A1(In_2[8]), .A2(In_1[8]), .B1(n21), .B2(In_3[8]), .Z(C[8]) );
  AO22D0 U24 ( .A1(In_2[9]), .A2(In_1[9]), .B1(n22), .B2(In_3[9]), .Z(C[9]) );
  AO22D0 U26 ( .A1(In_2[1]), .A2(In_1[1]), .B1(n14), .B2(In_3[1]), .Z(C[1]) );
  AO22D0 U28 ( .A1(In_2[2]), .A2(In_1[2]), .B1(n15), .B2(In_3[2]), .Z(C[2]) );
  AO22D0 U30 ( .A1(In_2[3]), .A2(In_1[3]), .B1(n16), .B2(In_3[3]), .Z(C[3]) );
  XOR3D0 U10 ( .A1(In_3[10]), .A2(In_1[10]), .A3(In_2[10]), .Z(S[10]) );
  CKND1 U12 ( .I(n23), .ZN(C[0]) );
  CKND2D0 U31 ( .A1(In_3[0]), .A2(In_1[0]), .ZN(n23) );
endmodule


module CSA3_2_Array_WIDTH11_3 ( In_1, In_2, In_3, S, C );
  input [10:0] In_1;
  input [10:0] In_2;
  input [10:0] In_3;
  output [10:0] S;
  output [10:0] C;
  wire   n14, n15, n16, n17, n18, n19, n20, n21, n22, n23;

  CKXOR2D1 U1 ( .A1(In_3[9]), .A2(n22), .Z(S[9]) );
  CKXOR2D1 U2 ( .A1(In_3[8]), .A2(n21), .Z(S[8]) );
  CKXOR2D1 U3 ( .A1(In_3[7]), .A2(n20), .Z(S[7]) );
  CKXOR2D1 U4 ( .A1(In_3[6]), .A2(n19), .Z(S[6]) );
  CKXOR2D1 U5 ( .A1(In_3[5]), .A2(n18), .Z(S[5]) );
  CKXOR2D1 U6 ( .A1(In_3[4]), .A2(n17), .Z(S[4]) );
  CKXOR2D1 U7 ( .A1(In_3[3]), .A2(n16), .Z(S[3]) );
  CKXOR2D1 U8 ( .A1(In_3[2]), .A2(n15), .Z(S[2]) );
  CKXOR2D1 U9 ( .A1(In_3[1]), .A2(n14), .Z(S[1]) );
  CKXOR2D1 U11 ( .A1(In_3[0]), .A2(In_2[0]), .Z(S[0]) );
  CKXOR2D1 U13 ( .A1(In_2[9]), .A2(In_1[9]), .Z(n22) );
  CKXOR2D1 U15 ( .A1(In_2[8]), .A2(In_1[8]), .Z(n21) );
  CKXOR2D1 U17 ( .A1(In_2[7]), .A2(In_1[7]), .Z(n20) );
  CKXOR2D1 U19 ( .A1(In_2[6]), .A2(In_1[6]), .Z(n19) );
  CKXOR2D1 U21 ( .A1(In_2[5]), .A2(In_1[5]), .Z(n18) );
  CKXOR2D1 U23 ( .A1(In_2[4]), .A2(In_1[4]), .Z(n17) );
  CKXOR2D1 U25 ( .A1(In_2[3]), .A2(In_1[3]), .Z(n16) );
  CKXOR2D1 U27 ( .A1(In_2[2]), .A2(In_1[2]), .Z(n15) );
  CKXOR2D1 U29 ( .A1(In_2[1]), .A2(In_1[1]), .Z(n14) );
  AO22D0 U12 ( .A1(In_2[5]), .A2(In_1[5]), .B1(n18), .B2(In_3[5]), .Z(C[5]) );
  AO22D0 U14 ( .A1(In_2[6]), .A2(In_1[6]), .B1(n19), .B2(In_3[6]), .Z(C[6]) );
  AO22D0 U16 ( .A1(In_2[7]), .A2(In_1[7]), .B1(n20), .B2(In_3[7]), .Z(C[7]) );
  AO22D0 U18 ( .A1(In_2[8]), .A2(In_1[8]), .B1(n21), .B2(In_3[8]), .Z(C[8]) );
  AO22D0 U20 ( .A1(In_2[1]), .A2(In_1[1]), .B1(n14), .B2(In_3[1]), .Z(C[1]) );
  AO22D0 U22 ( .A1(In_2[9]), .A2(In_1[9]), .B1(n22), .B2(In_3[9]), .Z(C[9]) );
  AO22D0 U26 ( .A1(In_2[3]), .A2(In_1[3]), .B1(n16), .B2(In_3[3]), .Z(C[3]) );
  AO22D0 U28 ( .A1(In_2[2]), .A2(In_1[2]), .B1(n15), .B2(In_3[2]), .Z(C[2]) );
  AO22D0 U30 ( .A1(In_2[4]), .A2(In_1[4]), .B1(n17), .B2(In_3[4]), .Z(C[4]) );
  XOR3D0 U10 ( .A1(In_1[10]), .A2(In_3[10]), .A3(In_2[10]), .Z(S[10]) );
  CKND1 U24 ( .I(n23), .ZN(C[0]) );
  CKND2D0 U31 ( .A1(In_3[0]), .A2(In_2[0]), .ZN(n23) );
endmodule


module CSA3_2_Array_WIDTH11_2 ( In_1, In_2, In_3, S, C );
  input [10:0] In_1;
  input [10:0] In_2;
  input [10:0] In_3;
  output [10:0] S;
  output [10:0] C;
  wire   n14, n15, n16, n17, n18, n19, n20, n21, n22, n23;

  CKXOR2D1 U1 ( .A1(In_3[9]), .A2(n22), .Z(S[9]) );
  CKXOR2D1 U2 ( .A1(In_3[8]), .A2(n21), .Z(S[8]) );
  CKXOR2D1 U3 ( .A1(In_3[7]), .A2(n20), .Z(S[7]) );
  CKXOR2D1 U4 ( .A1(In_3[6]), .A2(n19), .Z(S[6]) );
  CKXOR2D1 U5 ( .A1(In_3[5]), .A2(n18), .Z(S[5]) );
  CKXOR2D1 U6 ( .A1(In_3[4]), .A2(n17), .Z(S[4]) );
  CKXOR2D1 U7 ( .A1(In_3[3]), .A2(n16), .Z(S[3]) );
  CKXOR2D1 U8 ( .A1(In_3[2]), .A2(n15), .Z(S[2]) );
  CKXOR2D1 U9 ( .A1(In_3[1]), .A2(n14), .Z(S[1]) );
  CKXOR2D1 U11 ( .A1(In_3[0]), .A2(In_1[0]), .Z(S[0]) );
  CKXOR2D1 U13 ( .A1(In_2[9]), .A2(In_1[9]), .Z(n22) );
  CKXOR2D1 U15 ( .A1(In_2[8]), .A2(In_1[8]), .Z(n21) );
  CKXOR2D1 U17 ( .A1(In_2[7]), .A2(In_1[7]), .Z(n20) );
  CKXOR2D1 U19 ( .A1(In_2[6]), .A2(In_1[6]), .Z(n19) );
  CKXOR2D1 U21 ( .A1(In_2[5]), .A2(In_1[5]), .Z(n18) );
  CKXOR2D1 U23 ( .A1(In_2[4]), .A2(In_1[4]), .Z(n17) );
  CKXOR2D1 U25 ( .A1(In_2[3]), .A2(In_1[3]), .Z(n16) );
  CKXOR2D1 U27 ( .A1(In_2[2]), .A2(In_1[2]), .Z(n15) );
  CKXOR2D1 U29 ( .A1(In_2[1]), .A2(In_1[1]), .Z(n14) );
  AO22D0 U12 ( .A1(In_2[4]), .A2(In_1[4]), .B1(n17), .B2(In_3[4]), .Z(C[4]) );
  AO22D0 U14 ( .A1(In_2[5]), .A2(In_1[5]), .B1(n18), .B2(In_3[5]), .Z(C[5]) );
  AO22D0 U16 ( .A1(In_2[6]), .A2(In_1[6]), .B1(n19), .B2(In_3[6]), .Z(C[6]) );
  AO22D0 U18 ( .A1(In_2[7]), .A2(In_1[7]), .B1(n20), .B2(In_3[7]), .Z(C[7]) );
  AO22D0 U20 ( .A1(In_2[8]), .A2(In_1[8]), .B1(n21), .B2(In_3[8]), .Z(C[8]) );
  AO22D0 U22 ( .A1(In_2[3]), .A2(In_1[3]), .B1(n16), .B2(In_3[3]), .Z(C[3]) );
  AO22D0 U24 ( .A1(In_2[2]), .A2(In_1[2]), .B1(n15), .B2(In_3[2]), .Z(C[2]) );
  AO22D0 U26 ( .A1(In_2[9]), .A2(In_1[9]), .B1(n22), .B2(In_3[9]), .Z(C[9]) );
  AO22D0 U30 ( .A1(In_2[1]), .A2(In_1[1]), .B1(n14), .B2(In_3[1]), .Z(C[1]) );
  XOR3D0 U10 ( .A1(In_1[10]), .A2(In_3[10]), .A3(In_2[10]), .Z(S[10]) );
  CKND1 U28 ( .I(n23), .ZN(C[0]) );
  CKND2D0 U31 ( .A1(In_3[0]), .A2(In_1[0]), .ZN(n23) );
endmodule


module CSA3_2_Array_WIDTH11_1 ( In_1, In_2, In_3, S, C );
  input [10:0] In_1;
  input [10:0] In_2;
  input [10:0] In_3;
  output [10:0] S;
  output [10:0] C;
  wire   In_1_0_, n14, n15, n16, n17, n18, n19, n20, n21, n22;
  assign S[0] = In_1_0_;
  assign In_1_0_ = In_1[0];

  CKXOR2D1 U1 ( .A1(In_3[9]), .A2(n22), .Z(S[9]) );
  CKXOR2D1 U2 ( .A1(In_3[8]), .A2(n21), .Z(S[8]) );
  CKXOR2D1 U3 ( .A1(In_3[7]), .A2(n20), .Z(S[7]) );
  CKXOR2D1 U4 ( .A1(In_3[6]), .A2(n19), .Z(S[6]) );
  CKXOR2D1 U5 ( .A1(In_3[5]), .A2(n18), .Z(S[5]) );
  CKXOR2D1 U6 ( .A1(In_3[4]), .A2(n17), .Z(S[4]) );
  CKXOR2D1 U7 ( .A1(In_3[3]), .A2(n16), .Z(S[3]) );
  CKXOR2D1 U8 ( .A1(In_3[2]), .A2(n15), .Z(S[2]) );
  CKXOR2D1 U9 ( .A1(In_3[1]), .A2(n14), .Z(S[1]) );
  CKXOR2D1 U13 ( .A1(In_2[9]), .A2(In_1[9]), .Z(n22) );
  CKXOR2D1 U15 ( .A1(In_2[8]), .A2(In_1[8]), .Z(n21) );
  CKXOR2D1 U17 ( .A1(In_2[7]), .A2(In_1[7]), .Z(n20) );
  CKXOR2D1 U19 ( .A1(In_2[6]), .A2(In_1[6]), .Z(n19) );
  CKXOR2D1 U21 ( .A1(In_2[5]), .A2(In_1[5]), .Z(n18) );
  CKXOR2D1 U23 ( .A1(In_2[4]), .A2(In_1[4]), .Z(n17) );
  CKXOR2D1 U25 ( .A1(In_2[3]), .A2(In_1[3]), .Z(n16) );
  CKXOR2D1 U27 ( .A1(In_2[2]), .A2(In_1[2]), .Z(n15) );
  CKXOR2D1 U29 ( .A1(In_2[1]), .A2(In_1[1]), .Z(n14) );
  AO22D0 U14 ( .A1(In_2[9]), .A2(In_1[9]), .B1(n22), .B2(In_3[9]), .Z(C[9]) );
  AO22D0 U16 ( .A1(In_2[3]), .A2(In_1[3]), .B1(n16), .B2(In_3[3]), .Z(C[3]) );
  AO22D0 U18 ( .A1(In_2[4]), .A2(In_1[4]), .B1(n17), .B2(In_3[4]), .Z(C[4]) );
  AO22D0 U20 ( .A1(In_2[5]), .A2(In_1[5]), .B1(n18), .B2(In_3[5]), .Z(C[5]) );
  AO22D0 U22 ( .A1(In_2[6]), .A2(In_1[6]), .B1(n19), .B2(In_3[6]), .Z(C[6]) );
  AO22D0 U24 ( .A1(In_2[7]), .A2(In_1[7]), .B1(n20), .B2(In_3[7]), .Z(C[7]) );
  AO22D0 U26 ( .A1(In_2[8]), .A2(In_1[8]), .B1(n21), .B2(In_3[8]), .Z(C[8]) );
  AO22D0 U30 ( .A1(In_2[2]), .A2(In_1[2]), .B1(n15), .B2(In_3[2]), .Z(C[2]) );
  AO22D0 U32 ( .A1(In_2[1]), .A2(In_1[1]), .B1(n14), .B2(In_3[1]), .Z(C[1]) );
  XOR3D0 U10 ( .A1(In_1[10]), .A2(In_3[10]), .A3(In_2[10]), .Z(S[10]) );
endmodule


module Mantissa_Div_L4_Kec_MANTISSA_WIDTH9_DW01_add_0 ( A, B, CI, SUM, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] SUM;
  input CI;
  output CO;
  wire   A_1_;
  wire   [10:3] carry;
  assign SUM[1] = A_1_;
  assign A_1_ = A[1];

  FA1D0 U1_2 ( .A(A[2]), .B(B[2]), .CI(1'b0), .CO(carry[3]), .S(SUM[2]) );
  FA1D0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1D0 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  FA1D0 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FA1D0 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA1D0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA1D0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1D0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  XOR3D1 U1_10 ( .A1(A[10]), .A2(B[10]), .A3(carry[10]), .Z(SUM[10]) );
endmodule


module Mantissa_Div_L4_Kec_MANTISSA_WIDTH9_DW01_sub_0_DW01_sub_1 ( A, B, CI, 
        DIFF, CO );
  input [9:0] A;
  input [9:0] B;
  output [9:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  wire   [9:3] carry;

  FA1D0 U2_8 ( .A(A[8]), .B(n1), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  FA1D0 U2_7 ( .A(A[7]), .B(n2), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  FA1D0 U2_5 ( .A(A[5]), .B(n4), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  FA1D0 U2_6 ( .A(A[6]), .B(n3), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  FA1D0 U2_4 ( .A(A[4]), .B(n5), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FA1D0 U2_3 ( .A(A[3]), .B(n6), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  INVD1 U1 ( .I(B[3]), .ZN(n6) );
  INVD1 U2 ( .I(B[4]), .ZN(n5) );
  INVD1 U3 ( .I(B[6]), .ZN(n3) );
  INVD1 U4 ( .I(B[5]), .ZN(n4) );
  INVD1 U5 ( .I(B[7]), .ZN(n2) );
  INVD1 U6 ( .I(A[1]), .ZN(n7) );
  INVD1 U7 ( .I(B[8]), .ZN(n1) );
  MOAI22D0 U8 ( .A1(B[2]), .A2(n8), .B1(n9), .B2(A[2]), .ZN(carry[3]) );
  NR2D0 U9 ( .A1(A[2]), .A2(n9), .ZN(n8) );
  OAI22D0 U10 ( .A1(n10), .A2(n7), .B1(B[1]), .B2(n11), .ZN(n9) );
  AN2D0 U11 ( .A1(n10), .A2(n7), .Z(n11) );
  INR2D0 U12 ( .A1(B[0]), .B1(A[0]), .ZN(n10) );
  CKND0 U13 ( .I(carry[9]), .ZN(DIFF[9]) );
endmodule


module Mantissa_Div_L4_Kec_MANTISSA_WIDTH9_DW01_sub_1_DW01_sub_2 ( A, B, CI, 
        DIFF, CO );
  input [9:0] A;
  input [9:0] B;
  output [9:0] DIFF;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [9:1] carry;

  FA1D0 U2_1 ( .A(A[1]), .B(n9), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  FA1D0 U2_8 ( .A(A[8]), .B(n2), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  FA1D0 U2_2 ( .A(A[2]), .B(n8), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  FA1D0 U2_7 ( .A(A[7]), .B(n3), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  FA1D0 U2_6 ( .A(A[6]), .B(n4), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  FA1D0 U2_5 ( .A(A[5]), .B(n5), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  FA1D0 U2_4 ( .A(A[4]), .B(n6), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FA1D0 U2_3 ( .A(A[3]), .B(n7), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  INVD1 U1 ( .I(B[3]), .ZN(n7) );
  INVD1 U2 ( .I(B[4]), .ZN(n6) );
  INVD1 U3 ( .I(B[5]), .ZN(n5) );
  INVD1 U4 ( .I(B[6]), .ZN(n4) );
  INVD1 U5 ( .I(B[7]), .ZN(n3) );
  INVD1 U6 ( .I(B[2]), .ZN(n8) );
  INVD1 U7 ( .I(B[8]), .ZN(n2) );
  INVD1 U9 ( .I(B[1]), .ZN(n9) );
  CKND0 U13 ( .I(carry[9]), .ZN(DIFF[9]) );
  CKXOR2D0 U8 ( .A1(A[0]), .A2(B[0]), .Z(DIFF[0]) );
  IND2D0 U10 ( .A1(A[0]), .B1(B[0]), .ZN(carry[1]) );
endmodule


module Mantissa_Div_L4_Kec_MANTISSA_WIDTH9 ( Mantissa_X, Mantissa_Y, 
        Mantissa_Out, Shift );
  input [8:0] Mantissa_X;
  input [8:0] Mantissa_Y;
  output [8:0] Mantissa_Out;
  output Shift;
  wire   n13, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114;
  wire   [9:0] x_sub_y;
  wire   [9:3] y_sub_x;
  wire   [9:0] L1_p2;
  wire   [9:0] L2_p;
  wire   [6:0] L3_p1;
  wire   [4:0] L3_p2;
  wire   [5:0] L4_p1;
  wire   [9:0] L4_p2;
  wire   [10:0] A11S;
  wire   [9:0] A11C;
  wire   [10:0] A12S;
  wire   [9:0] A12C;
  wire   [10:0] A21S;
  wire   [9:0] A21C;
  wire   [10:0] A22S;
  wire   [9:0] A22C;
  wire   [10:0] A31S;
  wire   [9:0] A31C;
  wire   [10:0] A41S;
  wire   [9:1] A41C;
  wire   [9:1] Res;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10;

  MOAI22D1 U9 ( .A1(n46), .A2(n95), .B1(Res[9]), .B2(Shift), .ZN(
        Mantissa_Out[8]) );
  CSA3_2_Array_WIDTH11_0 Stage_1_1 ( .In_1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .In_2({x_sub_y[9], x_sub_y}), .In_3({
        L1_p2[9], L1_p2[9], L1_p2[9], L1_p2[7:0]}), .S(A11S), .C({
        SYNOPSYS_UNCONNECTED__0, A11C}) );
  CSA3_2_Array_WIDTH11_5 Stage_1_2 ( .In_1({L2_p[9], L2_p[9], L2_p[9], L2_p[9], 
        L2_p[6:0]}), .In_2({L3_p1[6], L3_p1[6], L3_p1[6], L3_p1[6], L3_p1}), 
        .In_3({L3_p2[4], L3_p2[4], L3_p2[4], L3_p2[4], L3_p2[4], L3_p2[4], 
        L3_p2}), .S(A12S), .C({SYNOPSYS_UNCONNECTED__1, A12C}) );
  CSA3_2_Array_WIDTH11_4 Stage_2_1 ( .In_1(A11S), .In_2({A11C, 1'b0}), .In_3(
        A12S), .S(A21S), .C({SYNOPSYS_UNCONNECTED__2, A21C}) );
  CSA3_2_Array_WIDTH11_3 Stage_2_2 ( .In_1({A12C, 1'b0}), .In_2({L4_p1[5], 
        L4_p1[5], L4_p1[5], L4_p1[5], L4_p1[5], L4_p1}), .In_3({L4_p2[9], 
        L4_p2[9], L4_p2[9], L4_p2[9], L4_p2[9], L4_p2[9], L4_p2[9], L4_p2[9], 
        L4_p2[2:0]}), .S(A22S), .C({SYNOPSYS_UNCONNECTED__3, A22C}) );
  CSA3_2_Array_WIDTH11_2 Stage_3_1 ( .In_1(A21S), .In_2({A21C, 1'b0}), .In_3(
        A22S), .S(A31S), .C({SYNOPSYS_UNCONNECTED__4, A31C}) );
  CSA3_2_Array_WIDTH11_1 Stage_4_1 ( .In_1(A31S), .In_2({A31C, 1'b0}), .In_3({
        A22C, 1'b0}), .S(A41S), .C({SYNOPSYS_UNCONNECTED__5, A41C, 
        SYNOPSYS_UNCONNECTED__6}) );
  Mantissa_Div_L4_Kec_MANTISSA_WIDTH9_DW01_add_0 add_205 ( .A(A41S), .B({A41C, 
        1'b0, n13}), .CI(n13), .SUM({Shift, Res, SYNOPSYS_UNCONNECTED__7}) );
  Mantissa_Div_L4_Kec_MANTISSA_WIDTH9_DW01_sub_0_DW01_sub_1 sub_18 ( .A({n13, 
        Mantissa_Y}), .B({n13, Mantissa_X}), .CI(n13), .DIFF({y_sub_x, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10}) );
  Mantissa_Div_L4_Kec_MANTISSA_WIDTH9_DW01_sub_1_DW01_sub_2 sub_17 ( .A({n13, 
        Mantissa_X}), .B({n13, Mantissa_Y}), .CI(n13), .DIFF(x_sub_y) );
  INVD1 U3 ( .I(n64), .ZN(n86) );
  OAI32D1 U4 ( .A1(n40), .A2(n86), .A3(n79), .B1(n42), .B2(n64), .ZN(L3_p2[4])
         );
  OAI222D0 U6 ( .A1(n46), .A2(n99), .B1(n47), .B2(n97), .C1(n94), .C2(n98), 
        .ZN(Mantissa_Out[4]) );
  OAI222D0 U7 ( .A1(n46), .A2(n98), .B1(n96), .B2(n47), .C1(n94), .C2(n97), 
        .ZN(Mantissa_Out[5]) );
  OAI222D0 U8 ( .A1(n46), .A2(n97), .B1(n95), .B2(n47), .C1(n94), .C2(n96), 
        .ZN(Mantissa_Out[6]) );
  OAI22D1 U10 ( .A1(n94), .A2(n95), .B1(n46), .B2(n96), .ZN(Mantissa_Out[7])
         );
  IND2D1 U11 ( .A1(Res[9]), .B1(n94), .ZN(n47) );
  INVD1 U12 ( .I(Shift), .ZN(n94) );
  OAI222D0 U13 ( .A1(n46), .A2(n100), .B1(n47), .B2(n98), .C1(n94), .C2(n99), 
        .ZN(Mantissa_Out[3]) );
  ND2D1 U14 ( .A1(Res[9]), .A2(n94), .ZN(n46) );
  INVD1 U15 ( .I(Res[8]), .ZN(n95) );
  INVD1 U16 ( .I(Res[7]), .ZN(n96) );
  INVD1 U17 ( .I(n67), .ZN(n82) );
  INVD1 U18 ( .I(Res[6]), .ZN(n97) );
  INVD1 U19 ( .I(Res[5]), .ZN(n98) );
  INVD1 U20 ( .I(Res[4]), .ZN(n99) );
  INVD1 U21 ( .I(y_sub_x[9]), .ZN(n40) );
  INVD1 U22 ( .I(x_sub_y[9]), .ZN(n42) );
  OAI222D0 U23 ( .A1(n46), .A2(n101), .B1(n47), .B2(n99), .C1(n94), .C2(n100), 
        .ZN(Mantissa_Out[2]) );
  OAI221D1 U24 ( .A1(n40), .A2(n48), .B1(n42), .B2(n110), .C(n49), .ZN(
        L4_p2[9]) );
  OA22D0 U25 ( .A1(n51), .A2(n40), .B1(n50), .B2(n42), .Z(n49) );
  OAI221D0 U26 ( .A1(n48), .A2(n88), .B1(n110), .B2(n91), .C(n49), .ZN(
        L4_p2[2]) );
  INVD1 U27 ( .I(n53), .ZN(n110) );
  INVD1 U28 ( .I(n48), .ZN(n112) );
  INVD1 U29 ( .I(Res[3]), .ZN(n100) );
  OAI222D0 U30 ( .A1(n46), .A2(n102), .B1(n47), .B2(n100), .C1(n94), .C2(n101), 
        .ZN(Mantissa_Out[1]) );
  INVD1 U31 ( .I(y_sub_x[7]), .ZN(n87) );
  INVD1 U32 ( .I(y_sub_x[8]), .ZN(n88) );
  INVD1 U33 ( .I(x_sub_y[8]), .ZN(n91) );
  INVD1 U34 ( .I(n44), .ZN(n79) );
  INVD1 U35 ( .I(n35), .ZN(n38) );
  OAI222D0 U36 ( .A1(n61), .A2(n87), .B1(n41), .B2(n111), .C1(n55), .C2(n90), 
        .ZN(L2_p[4]) );
  OAI222D0 U37 ( .A1(n61), .A2(n88), .B1(n91), .B2(n111), .C1(n55), .C2(n41), 
        .ZN(L2_p[5]) );
  OAI222D0 U38 ( .A1(n61), .A2(n39), .B1(n90), .B2(n111), .C1(n55), .C2(n89), 
        .ZN(L2_p[3]) );
  INVD1 U40 ( .I(x_sub_y[6]), .ZN(n90) );
  OAI222D0 U41 ( .A1(n107), .A2(n61), .B1(n89), .B2(n111), .C1(n104), .C2(n55), 
        .ZN(L2_p[2]) );
  INVD1 U42 ( .I(y_sub_x[5]), .ZN(n107) );
  AOI22D1 U43 ( .A1(y_sub_x[9]), .A2(n113), .B1(x_sub_y[9]), .B2(n59), .ZN(n60) );
  OAI21D1 U44 ( .A1(n55), .A2(n91), .B(n60), .ZN(L2_p[6]) );
  INVD1 U45 ( .I(x_sub_y[7]), .ZN(n41) );
  OAI21D1 U46 ( .A1(n55), .A2(n42), .B(n60), .ZN(L2_p[9]) );
  INVD1 U47 ( .I(x_sub_y[5]), .ZN(n89) );
  INVD1 U48 ( .I(y_sub_x[6]), .ZN(n39) );
  OAI221D0 U49 ( .A1(n50), .A2(n91), .B1(n51), .B2(n88), .C(n52), .ZN(L4_p2[1]) );
  AOI22D1 U50 ( .A1(y_sub_x[7]), .A2(n112), .B1(x_sub_y[7]), .B2(n53), .ZN(n52) );
  OAI222D0 U51 ( .A1(n108), .A2(n61), .B1(n104), .B2(n111), .C1(n105), .C2(n55), .ZN(L2_p[1]) );
  INVD1 U52 ( .I(y_sub_x[4]), .ZN(n108) );
  INVD1 U53 ( .I(x_sub_y[4]), .ZN(n104) );
  INVD1 U55 ( .I(n68), .ZN(n85) );
  INVD1 U56 ( .I(n72), .ZN(n84) );
  NR2D1 U57 ( .A1(n42), .A2(Mantissa_Y[8]), .ZN(L1_p2[9]) );
  OAI221D0 U58 ( .A1(n50), .A2(n41), .B1(n51), .B2(n87), .C(n54), .ZN(L4_p2[0]) );
  AOI22D1 U59 ( .A1(y_sub_x[6]), .A2(n112), .B1(x_sub_y[6]), .B2(n53), .ZN(n54) );
  OAI222D0 U60 ( .A1(n109), .A2(n61), .B1(n105), .B2(n111), .C1(n106), .C2(n55), .ZN(L2_p[0]) );
  INVD1 U61 ( .I(y_sub_x[3]), .ZN(n109) );
  NR2D1 U62 ( .A1(Mantissa_Y[8]), .A2(n41), .ZN(L1_p2[6]) );
  NR2D1 U63 ( .A1(Mantissa_Y[8]), .A2(n91), .ZN(L1_p2[7]) );
  NR2D1 U64 ( .A1(Mantissa_Y[8]), .A2(n90), .ZN(L1_p2[5]) );
  INVD1 U65 ( .I(x_sub_y[3]), .ZN(n105) );
  NR2D1 U66 ( .A1(Mantissa_Y[8]), .A2(n89), .ZN(L1_p2[4]) );
  NR2D1 U67 ( .A1(Mantissa_Y[8]), .A2(n104), .ZN(L1_p2[3]) );
  NR2D1 U68 ( .A1(Mantissa_Y[8]), .A2(n105), .ZN(L1_p2[2]) );
  INVD1 U69 ( .I(x_sub_y[2]), .ZN(n106) );
  INVD1 U70 ( .I(n59), .ZN(n111) );
  NR2D1 U71 ( .A1(Mantissa_Y[8]), .A2(n106), .ZN(L1_p2[1]) );
  OA22D0 U72 ( .A1(n58), .A2(n55), .B1(n57), .B2(n56), .Z(n50) );
  INVD1 U73 ( .I(n61), .ZN(n113) );
  NR2D1 U74 ( .A1(n59), .A2(n113), .ZN(n57) );
  OA22D0 U75 ( .A1(n56), .A2(n55), .B1(n57), .B2(n58), .Z(n51) );
  INR2D1 U76 ( .A1(x_sub_y[1]), .B1(Mantissa_Y[8]), .ZN(L1_p2[0]) );
  NR3D0 U77 ( .A1(n37), .A2(n114), .A3(n55), .ZN(n53) );
  ND3D1 U78 ( .A1(n37), .A2(n114), .A3(n113), .ZN(n48) );
  INVD1 U79 ( .I(Res[2]), .ZN(n101) );
  INVD1 U80 ( .I(n33), .ZN(n43) );
  INVD1 U81 ( .I(Mantissa_Y[7]), .ZN(n80) );
  INVD1 U82 ( .I(Mantissa_Y[5]), .ZN(n37) );
  NR2D1 U83 ( .A1(n93), .A2(Mantissa_Y[7]), .ZN(n59) );
  IND2D1 U84 ( .A1(Mantissa_Y[7]), .B1(n93), .ZN(n55) );
  ND2D1 U85 ( .A1(Mantissa_Y[7]), .A2(n93), .ZN(n61) );
  ND2D1 U86 ( .A1(Mantissa_Y[6]), .A2(n37), .ZN(n56) );
  INVD1 U87 ( .I(Mantissa_Y[6]), .ZN(n114) );
  ND2D1 U88 ( .A1(Mantissa_Y[5]), .A2(n114), .ZN(n58) );
  INVD1 U89 ( .I(Res[1]), .ZN(n102) );
  OAI222D0 U91 ( .A1(n103), .A2(n46), .B1(n101), .B2(n47), .C1(n102), .C2(n94), 
        .ZN(Mantissa_Out[0]) );
  INVD1 U92 ( .I(A41S[0]), .ZN(n103) );
  TIEL U94 ( .ZN(n13) );
  CKXOR2D0 U95 ( .A1(Mantissa_Y[6]), .A2(n80), .Z(n2) );
  CKND2D0 U96 ( .A1(n80), .A2(n114), .ZN(n1) );
  CKND2D0 U97 ( .A1(Mantissa_Y[6]), .A2(Mantissa_Y[7]), .ZN(n10) );
  OAI222D0 U98 ( .A1(n2), .A2(n90), .B1(n89), .B2(n1), .C1(n10), .C2(n41), 
        .ZN(n4) );
  MAOI22D0 U99 ( .A1(x_sub_y[4]), .A2(n10), .B1(n89), .B2(n10), .ZN(n3) );
  MAOI22D0 U100 ( .A1(n4), .A2(Mantissa_Y[8]), .B1(Mantissa_Y[8]), .B2(n3), 
        .ZN(n7) );
  CKND2D0 U101 ( .A1(Mantissa_Y[8]), .A2(n80), .ZN(n18) );
  CKND2D0 U102 ( .A1(Mantissa_Y[7]), .A2(n93), .ZN(n32) );
  CKND2D0 U103 ( .A1(Mantissa_Y[7]), .A2(Mantissa_Y[8]), .ZN(n35) );
  AOI33D0 U104 ( .A1(n38), .A2(n114), .A3(y_sub_x[7]), .B1(n93), .B2(n80), 
        .B3(y_sub_x[4]), .ZN(n5) );
  OAI221D0 U105 ( .A1(n18), .A2(n39), .B1(n32), .B2(n107), .C(n5), .ZN(n6) );
  MOAI22D0 U106 ( .A1(Mantissa_Y[5]), .A2(n7), .B1(n6), .B2(Mantissa_Y[5]), 
        .ZN(L4_p1[0]) );
  CKND2D0 U107 ( .A1(Mantissa_Y[6]), .A2(n37), .ZN(n17) );
  CKND2D0 U108 ( .A1(n114), .A2(n37), .ZN(n24) );
  OAI222D0 U109 ( .A1(x_sub_y[7]), .A2(n17), .B1(x_sub_y[6]), .B2(n24), .C1(
        y_sub_x[7]), .C2(n37), .ZN(n21) );
  OA22D0 U110 ( .A1(x_sub_y[7]), .A2(Mantissa_Y[5]), .B1(y_sub_x[8]), .B2(n37), 
        .Z(n15) );
  NR2D0 U111 ( .A1(n37), .A2(Mantissa_Y[8]), .ZN(n28) );
  AO22D0 U112 ( .A1(n15), .A2(Mantissa_Y[8]), .B1(n28), .B2(y_sub_x[6]), .Z(n9) );
  OAI22D0 U113 ( .A1(y_sub_x[6]), .A2(n37), .B1(x_sub_y[6]), .B2(Mantissa_Y[5]), .ZN(n19) );
  OAI33D0 U114 ( .A1(n114), .A2(Mantissa_Y[8]), .A3(n19), .B1(n17), .B2(n93), 
        .B3(n91), .ZN(n8) );
  AOI21D0 U115 ( .A1(n9), .A2(n114), .B(n8), .ZN(n12) );
  NR2D0 U116 ( .A1(Mantissa_Y[8]), .A2(Mantissa_Y[5]), .ZN(n29) );
  AOI33D0 U117 ( .A1(n10), .A2(n29), .A3(x_sub_y[5]), .B1(n28), .B2(n80), .B3(
        y_sub_x[5]), .ZN(n11) );
  OAI221D0 U118 ( .A1(n21), .A2(n18), .B1(n80), .B2(n12), .C(n11), .ZN(
        L4_p1[1]) );
  CKND2D0 U119 ( .A1(n114), .A2(Mantissa_Y[5]), .ZN(n14) );
  OA222D0 U120 ( .A1(n17), .A2(n42), .B1(n14), .B2(n40), .C1(n91), .C2(n24), 
        .Z(n22) );
  OR2D0 U121 ( .A1(y_sub_x[8]), .A2(n37), .Z(n16) );
  OAI222D0 U122 ( .A1(x_sub_y[8]), .A2(n17), .B1(n114), .B2(n16), .C1(
        Mantissa_Y[6]), .C2(n15), .ZN(n27) );
  OA32D0 U123 ( .A1(Mantissa_Y[8]), .A2(Mantissa_Y[7]), .A3(n19), .B1(n18), 
        .B2(n27), .Z(n20) );
  OAI221D0 U124 ( .A1(n35), .A2(n22), .B1(n21), .B2(n32), .C(n20), .ZN(
        L4_p1[2]) );
  CKND2D0 U125 ( .A1(n114), .A2(n40), .ZN(n23) );
  AOI22D0 U126 ( .A1(n40), .A2(Mantissa_Y[5]), .B1(n42), .B2(n37), .ZN(n36) );
  OAI222D0 U127 ( .A1(x_sub_y[8]), .A2(n24), .B1(n37), .B2(n23), .C1(n36), 
        .C2(n114), .ZN(n33) );
  AOI222D0 U128 ( .A1(Mantissa_Y[8]), .A2(n43), .B1(x_sub_y[7]), .B2(n29), 
        .C1(y_sub_x[7]), .C2(n28), .ZN(n26) );
  OAI21D0 U129 ( .A1(Mantissa_Y[5]), .A2(n42), .B(Mantissa_Y[6]), .ZN(n25) );
  CKND2D0 U130 ( .A1(n36), .A2(n25), .ZN(n34) );
  OR2D0 U131 ( .A1(n34), .A2(n35), .Z(n30) );
  OAI221D0 U132 ( .A1(n27), .A2(n32), .B1(Mantissa_Y[7]), .B2(n26), .C(n30), 
        .ZN(L4_p1[3]) );
  AOI222D0 U133 ( .A1(Mantissa_Y[8]), .A2(n36), .B1(x_sub_y[8]), .B2(n29), 
        .C1(y_sub_x[8]), .C2(n28), .ZN(n31) );
  OAI221D0 U134 ( .A1(n33), .A2(n32), .B1(Mantissa_Y[7]), .B2(n31), .C(n30), 
        .ZN(L4_p1[4]) );
  IOA21D0 U135 ( .A1(n36), .A2(n35), .B(n34), .ZN(L4_p1[5]) );
  NR2D0 U136 ( .A1(n114), .A2(Mantissa_Y[7]), .ZN(n44) );
  CKND2D0 U137 ( .A1(Mantissa_Y[8]), .A2(n44), .ZN(n63) );
  ND3D0 U138 ( .A1(n93), .A2(n80), .A3(n114), .ZN(n62) );
  NR2D0 U139 ( .A1(n79), .A2(Mantissa_Y[8]), .ZN(n67) );
  NR2D0 U140 ( .A1(n80), .A2(Mantissa_Y[6]), .ZN(n65) );
  NR2D0 U141 ( .A1(n67), .A2(n65), .ZN(n45) );
  OAI222D0 U142 ( .A1(n107), .A2(n63), .B1(n90), .B2(n62), .C1(n89), .C2(n45), 
        .ZN(L3_p2[0]) );
  OAI222D0 U143 ( .A1(n39), .A2(n63), .B1(n41), .B2(n62), .C1(n90), .C2(n45), 
        .ZN(L3_p2[1]) );
  OAI222D0 U144 ( .A1(n87), .A2(n63), .B1(n91), .B2(n62), .C1(n41), .C2(n45), 
        .ZN(L3_p2[2]) );
  OAI222D0 U145 ( .A1(n88), .A2(n63), .B1(n42), .B2(n62), .C1(n91), .C2(n45), 
        .ZN(L3_p2[3]) );
  AOI21D0 U146 ( .A1(n80), .A2(n93), .B(n65), .ZN(n64) );
  NR2D0 U147 ( .A1(n80), .A2(n93), .ZN(n76) );
  CKND2D0 U148 ( .A1(Mantissa_Y[6]), .A2(n76), .ZN(n68) );
  NR2D0 U150 ( .A1(n76), .A2(Mantissa_Y[6]), .ZN(n72) );
  AOI22D0 U151 ( .A1(x_sub_y[3]), .A2(n72), .B1(y_sub_x[4]), .B2(n67), .ZN(n66) );
  OAI221D0 U152 ( .A1(n68), .A2(n90), .B1(n83), .B2(n104), .C(n66), .ZN(
        L3_p1[0]) );
  AOI22D0 U153 ( .A1(x_sub_y[7]), .A2(n85), .B1(x_sub_y[5]), .B2(n73), .ZN(n69) );
  OAI221D0 U154 ( .A1(n84), .A2(n104), .B1(n82), .B2(n107), .C(n69), .ZN(
        L3_p1[1]) );
  AOI22D0 U155 ( .A1(n85), .A2(x_sub_y[8]), .B1(x_sub_y[6]), .B2(n73), .ZN(n70) );
  OAI221D0 U156 ( .A1(n84), .A2(n89), .B1(n82), .B2(n39), .C(n70), .ZN(
        L3_p1[2]) );
  CKND2D0 U157 ( .A1(n85), .A2(x_sub_y[9]), .ZN(n75) );
  AOI22D0 U158 ( .A1(x_sub_y[7]), .A2(n73), .B1(x_sub_y[6]), .B2(n72), .ZN(n71) );
  OAI211D0 U159 ( .A1(n82), .A2(n87), .B(n75), .C(n71), .ZN(L3_p1[3]) );
  AOI22D0 U160 ( .A1(n73), .A2(x_sub_y[8]), .B1(x_sub_y[7]), .B2(n72), .ZN(n74) );
  OAI211D0 U161 ( .A1(n82), .A2(n88), .B(n75), .C(n74), .ZN(L3_p1[4]) );
  AOI21D0 U162 ( .A1(Mantissa_Y[8]), .A2(Mantissa_Y[6]), .B(n76), .ZN(n77) );
  OAI222D0 U163 ( .A1(n84), .A2(n91), .B1(n42), .B2(n77), .C1(n82), .C2(n40), 
        .ZN(L3_p1[5]) );
  NR2D0 U164 ( .A1(n114), .A2(Mantissa_Y[8]), .ZN(n78) );
  OAI22D0 U165 ( .A1(n82), .A2(n40), .B1(n78), .B2(n42), .ZN(L3_p1[6]) );
  CKND0 U5 ( .I(n83), .ZN(n73) );
  OAI21D0 U39 ( .A1(n65), .A2(n44), .B(Mantissa_Y[8]), .ZN(n83) );
  CKND0 U54 ( .I(Mantissa_Y[8]), .ZN(n93) );
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
  FA1D0 U33 ( .A(N4), .B(exponent_adjust[1]), .CI(n1), .CO(
        add_0_root_add_0_root_add_22_2_carry[2]), .S(result[24]) );
  FA1D0 U34 ( .A(N5), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[2]), .CO(
        add_0_root_add_0_root_add_22_2_carry[3]), .S(result[25]) );
  FA1D0 U35 ( .A(N6), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[3]), .CO(
        add_0_root_add_0_root_add_22_2_carry[4]), .S(result[26]) );
  FA1D0 U36 ( .A(N7), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[4]), .CO(
        add_0_root_add_0_root_add_22_2_carry[5]), .S(result[27]) );
  FA1D0 U37 ( .A(N8), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[5]), .CO(
        add_0_root_add_0_root_add_22_2_carry[6]), .S(result[28]) );
  FA1D0 U38 ( .A(N9), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[6]), .CO(
        add_0_root_add_0_root_add_22_2_carry[7]), .S(result[29]) );
  XOR3D1 U47 ( .A1(N10), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_22_2_carry[7]), .Z(result[30]) );
  CKBD1 U52 ( .I(y[19]), .Z(fraction_y[19]) );
  CKBD1 U54 ( .I(y[20]), .Z(fraction_y[20]) );
  CKBD1 U56 ( .I(y[22]), .Z(fraction_y[22]) );
  CKBD1 U57 ( .I(y[21]), .Z(fraction_y[21]) );
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
  CKBD1 U94 ( .I(x[15]), .Z(fraction_x[15]) );
  CKBD1 U95 ( .I(x[14]), .Z(fraction_x[14]) );
  CKBD1 U96 ( .I(y[18]), .Z(fraction_y[18]) );
  CKBD1 U97 ( .I(y[17]), .Z(fraction_y[17]) );
  CKBD1 U98 ( .I(y[16]), .Z(fraction_y[16]) );
  CKBD1 U99 ( .I(y[15]), .Z(fraction_y[15]) );
  CKBD1 U100 ( .I(y[14]), .Z(fraction_y[14]) );
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


module FP_DIV_WRAPPER_32_width_trunc14 ( x, y, out0, mantissa_x, mantissa_y, 
        mantissa_out, shift );
  input [31:0] x;
  input [31:0] y;
  output [31:0] out0;
  output [8:0] mantissa_x;
  output [8:0] mantissa_y;
  input [8:0] mantissa_out;
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
        SYNOPSYS_UNCONNECTED__40, SYNOPSYS_UNCONNECTED__41;

  fp32_normal_finite_wrapper shared_wrapper ( .x({x[31:14], 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .y({y[31:14], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .divide_mode(1'b0), .fraction_x({
        mantissa_x, SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13}), .fraction_y({
        mantissa_y, SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27}), 
        .result_fraction({mantissa_out, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .exponent_adjust({
        shift[0], shift[0], shift[0]}), .result({out0[31:14], 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31, 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, 
        SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39, 
        SYNOPSYS_UNCONNECTED__40, SYNOPSYS_UNCONNECTED__41}) );
endmodule


module fig8_pace_l4_d14 ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   shift, n1;
  wire   [8:0] mx;
  wire   [8:0] my;
  wire   [8:0] mz;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13;
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

  Mantissa_Div_L4_Kec_MANTISSA_WIDTH9 core ( .Mantissa_X(mx), .Mantissa_Y(my), 
        .Mantissa_Out(mz), .Shift(shift) );
  FP_DIV_WRAPPER_32_width_trunc14 shell ( .x({x[31:14], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y({
        y[31:14], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .out0({result[31:14], 
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13}), .mantissa_x(mx), 
        .mantissa_y(my), .mantissa_out(mz), .shift(n1) );
  INVD1 U2 ( .I(shift), .ZN(n1) );
endmodule

