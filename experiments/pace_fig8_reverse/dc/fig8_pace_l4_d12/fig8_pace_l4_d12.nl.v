/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Sat Sep  5 13:13:48 2026
/////////////////////////////////////////////////////////////


module CSA3_2_Array_WIDTH13_0 ( In_1, In_2, In_3, S, C );
  input [12:0] In_1;
  input [12:0] In_2;
  input [12:0] In_3;
  output [12:0] S;
  output [12:0] C;
  wire   n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25;

  CKXOR2D1 U1 ( .A1(In_3[9]), .A2(In_2[9]), .Z(S[9]) );
  CKXOR2D1 U2 ( .A1(In_3[8]), .A2(In_2[8]), .Z(S[8]) );
  CKXOR2D1 U3 ( .A1(In_3[7]), .A2(In_2[7]), .Z(S[7]) );
  CKXOR2D1 U4 ( .A1(In_3[6]), .A2(In_2[6]), .Z(S[6]) );
  CKXOR2D1 U5 ( .A1(In_3[5]), .A2(In_2[5]), .Z(S[5]) );
  CKXOR2D1 U6 ( .A1(In_3[4]), .A2(In_2[4]), .Z(S[4]) );
  CKXOR2D1 U7 ( .A1(In_3[3]), .A2(In_2[3]), .Z(S[3]) );
  CKXOR2D1 U8 ( .A1(In_3[2]), .A2(In_2[2]), .Z(S[2]) );
  CKXOR2D1 U9 ( .A1(In_3[1]), .A2(In_2[1]), .Z(S[1]) );
  CKXOR2D1 U11 ( .A1(In_3[11]), .A2(In_2[11]), .Z(S[11]) );
  CKXOR2D1 U12 ( .A1(In_3[10]), .A2(In_2[10]), .Z(S[10]) );
  CKXOR2D1 U13 ( .A1(In_3[0]), .A2(In_2[0]), .Z(S[0]) );
  XNR2D0 U10 ( .A1(In_3[12]), .A2(In_2[12]), .ZN(S[12]) );
  CKND0 U14 ( .I(n25), .ZN(C[11]) );
  CKND1 U15 ( .I(n24), .ZN(C[10]) );
  CKND2D0 U16 ( .A1(In_3[11]), .A2(In_2[11]), .ZN(n25) );
  CKND1 U17 ( .I(n23), .ZN(C[9]) );
  CKND2D0 U18 ( .A1(In_3[10]), .A2(In_2[10]), .ZN(n24) );
  CKND1 U19 ( .I(n22), .ZN(C[8]) );
  CKND2D0 U20 ( .A1(In_3[9]), .A2(In_2[9]), .ZN(n23) );
  CKND1 U21 ( .I(n21), .ZN(C[7]) );
  CKND2D0 U22 ( .A1(In_3[8]), .A2(In_2[8]), .ZN(n22) );
  CKND1 U23 ( .I(n20), .ZN(C[6]) );
  CKND2D0 U24 ( .A1(In_3[7]), .A2(In_2[7]), .ZN(n21) );
  CKND1 U25 ( .I(n19), .ZN(C[5]) );
  CKND2D0 U26 ( .A1(In_3[6]), .A2(In_2[6]), .ZN(n20) );
  CKND1 U27 ( .I(n18), .ZN(C[4]) );
  CKND2D0 U28 ( .A1(In_3[5]), .A2(In_2[5]), .ZN(n19) );
  CKND1 U29 ( .I(n17), .ZN(C[3]) );
  CKND2D0 U30 ( .A1(In_3[4]), .A2(In_2[4]), .ZN(n18) );
  CKND1 U31 ( .I(n16), .ZN(C[2]) );
  CKND2D0 U32 ( .A1(In_3[3]), .A2(In_2[3]), .ZN(n17) );
  CKND1 U33 ( .I(n15), .ZN(C[1]) );
  CKND1 U34 ( .I(n14), .ZN(C[0]) );
  CKND2D0 U35 ( .A1(In_3[2]), .A2(In_2[2]), .ZN(n16) );
  CKND2D0 U36 ( .A1(In_3[1]), .A2(In_2[1]), .ZN(n15) );
  CKND2D0 U37 ( .A1(In_3[0]), .A2(In_2[0]), .ZN(n14) );
endmodule


module CSA3_2_Array_WIDTH13_5 ( In_1, In_2, In_3, S, C );
  input [12:0] In_1;
  input [12:0] In_2;
  input [12:0] In_3;
  output [12:0] S;
  output [12:0] C;
  wire   n14, n15, n16, n18, n19, n20, n21, n22, n23, n24, n25, n26;

  CKXOR2D1 U1 ( .A1(In_3[9]), .A2(n26), .Z(S[9]) );
  CKXOR2D1 U2 ( .A1(In_3[8]), .A2(n25), .Z(S[8]) );
  CKXOR2D1 U3 ( .A1(In_3[7]), .A2(n24), .Z(S[7]) );
  CKXOR2D1 U4 ( .A1(In_3[6]), .A2(n23), .Z(S[6]) );
  CKXOR2D1 U5 ( .A1(In_3[5]), .A2(n22), .Z(S[5]) );
  CKXOR2D1 U6 ( .A1(In_3[4]), .A2(n21), .Z(S[4]) );
  CKXOR2D1 U7 ( .A1(In_3[3]), .A2(n20), .Z(S[3]) );
  CKXOR2D1 U8 ( .A1(In_3[2]), .A2(n19), .Z(S[2]) );
  CKXOR2D1 U9 ( .A1(In_3[1]), .A2(n18), .Z(S[1]) );
  CKXOR2D1 U11 ( .A1(In_3[11]), .A2(n16), .Z(S[11]) );
  CKXOR2D1 U12 ( .A1(In_3[10]), .A2(n15), .Z(S[10]) );
  CKXOR2D1 U13 ( .A1(In_3[0]), .A2(n14), .Z(S[0]) );
  CKXOR2D1 U15 ( .A1(In_2[9]), .A2(In_1[9]), .Z(n26) );
  CKXOR2D1 U17 ( .A1(In_2[8]), .A2(In_1[8]), .Z(n25) );
  CKXOR2D1 U19 ( .A1(In_2[7]), .A2(In_1[7]), .Z(n24) );
  CKXOR2D1 U21 ( .A1(In_2[6]), .A2(In_1[6]), .Z(n23) );
  CKXOR2D1 U23 ( .A1(In_2[5]), .A2(In_1[5]), .Z(n22) );
  CKXOR2D1 U25 ( .A1(In_2[4]), .A2(In_1[4]), .Z(n21) );
  CKXOR2D1 U27 ( .A1(In_2[3]), .A2(In_1[3]), .Z(n20) );
  CKXOR2D1 U29 ( .A1(In_2[2]), .A2(In_1[2]), .Z(n19) );
  CKXOR2D1 U31 ( .A1(In_2[1]), .A2(In_1[1]), .Z(n18) );
  CKXOR2D1 U35 ( .A1(In_2[11]), .A2(In_1[11]), .Z(n16) );
  CKXOR2D1 U37 ( .A1(In_2[10]), .A2(In_1[10]), .Z(n15) );
  CKXOR2D1 U39 ( .A1(In_2[0]), .A2(In_1[0]), .Z(n14) );
  AO22D0 U14 ( .A1(In_2[6]), .A2(In_1[6]), .B1(n23), .B2(In_3[6]), .Z(C[6]) );
  AO22D0 U16 ( .A1(In_2[2]), .A2(In_1[2]), .B1(n19), .B2(In_3[2]), .Z(C[2]) );
  AO22D0 U18 ( .A1(In_2[3]), .A2(In_1[3]), .B1(n20), .B2(In_3[3]), .Z(C[3]) );
  AO22D0 U20 ( .A1(In_2[1]), .A2(In_1[1]), .B1(n18), .B2(In_3[1]), .Z(C[1]) );
  AO22D0 U22 ( .A1(In_2[4]), .A2(In_1[4]), .B1(n21), .B2(In_3[4]), .Z(C[4]) );
  AO22D0 U24 ( .A1(In_2[5]), .A2(In_1[5]), .B1(n22), .B2(In_3[5]), .Z(C[5]) );
  AO22D0 U26 ( .A1(In_2[0]), .A2(In_1[0]), .B1(n14), .B2(In_3[0]), .Z(C[0]) );
  AO22D0 U28 ( .A1(In_2[7]), .A2(In_1[7]), .B1(n24), .B2(In_3[7]), .Z(C[7]) );
  AO22D0 U30 ( .A1(In_2[8]), .A2(In_1[8]), .B1(n25), .B2(In_3[8]), .Z(C[8]) );
  AO22D0 U32 ( .A1(In_2[9]), .A2(In_1[9]), .B1(n26), .B2(In_3[9]), .Z(C[9]) );
  AO22D0 U34 ( .A1(In_2[10]), .A2(In_1[10]), .B1(n15), .B2(In_3[10]), .Z(C[10]) );
  AO22D0 U36 ( .A1(In_2[11]), .A2(In_1[11]), .B1(n16), .B2(In_3[11]), .Z(C[11]) );
  XOR3D0 U10 ( .A1(In_2[12]), .A2(In_3[12]), .A3(In_1[12]), .Z(S[12]) );
endmodule


module CSA3_2_Array_WIDTH13_4 ( In_1, In_2, In_3, S, C );
  input [12:0] In_1;
  input [12:0] In_2;
  input [12:0] In_3;
  output [12:0] S;
  output [12:0] C;
  wire   n15, n16, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27;

  CKXOR2D1 U1 ( .A1(In_3[9]), .A2(n26), .Z(S[9]) );
  CKXOR2D1 U2 ( .A1(In_3[8]), .A2(n25), .Z(S[8]) );
  CKXOR2D1 U3 ( .A1(In_3[7]), .A2(n24), .Z(S[7]) );
  CKXOR2D1 U4 ( .A1(In_3[6]), .A2(n23), .Z(S[6]) );
  CKXOR2D1 U5 ( .A1(In_3[5]), .A2(n22), .Z(S[5]) );
  CKXOR2D1 U6 ( .A1(In_3[4]), .A2(n21), .Z(S[4]) );
  CKXOR2D1 U7 ( .A1(In_3[3]), .A2(n20), .Z(S[3]) );
  CKXOR2D1 U8 ( .A1(In_3[2]), .A2(n19), .Z(S[2]) );
  CKXOR2D1 U9 ( .A1(In_3[1]), .A2(n18), .Z(S[1]) );
  CKXOR2D1 U11 ( .A1(In_3[11]), .A2(n16), .Z(S[11]) );
  CKXOR2D1 U12 ( .A1(In_3[10]), .A2(n15), .Z(S[10]) );
  CKXOR2D1 U13 ( .A1(In_3[0]), .A2(In_1[0]), .Z(S[0]) );
  CKXOR2D1 U15 ( .A1(In_2[9]), .A2(In_1[9]), .Z(n26) );
  CKXOR2D1 U17 ( .A1(In_2[8]), .A2(In_1[8]), .Z(n25) );
  CKXOR2D1 U19 ( .A1(In_2[7]), .A2(In_1[7]), .Z(n24) );
  CKXOR2D1 U21 ( .A1(In_2[6]), .A2(In_1[6]), .Z(n23) );
  CKXOR2D1 U23 ( .A1(In_2[5]), .A2(In_1[5]), .Z(n22) );
  CKXOR2D1 U25 ( .A1(In_2[4]), .A2(In_1[4]), .Z(n21) );
  CKXOR2D1 U27 ( .A1(In_2[3]), .A2(In_1[3]), .Z(n20) );
  CKXOR2D1 U29 ( .A1(In_2[2]), .A2(In_1[2]), .Z(n19) );
  CKXOR2D1 U31 ( .A1(In_2[1]), .A2(In_1[1]), .Z(n18) );
  CKXOR2D1 U35 ( .A1(In_2[11]), .A2(In_1[11]), .Z(n16) );
  CKXOR2D1 U37 ( .A1(In_2[10]), .A2(In_1[10]), .Z(n15) );
  AO22D0 U14 ( .A1(In_2[6]), .A2(In_1[6]), .B1(n23), .B2(In_3[6]), .Z(C[6]) );
  AO22D0 U16 ( .A1(In_2[7]), .A2(In_1[7]), .B1(n24), .B2(In_3[7]), .Z(C[7]) );
  AO22D0 U18 ( .A1(In_2[8]), .A2(In_1[8]), .B1(n25), .B2(In_3[8]), .Z(C[8]) );
  AO22D0 U20 ( .A1(In_2[9]), .A2(In_1[9]), .B1(n26), .B2(In_3[9]), .Z(C[9]) );
  AO22D0 U22 ( .A1(In_2[10]), .A2(In_1[10]), .B1(n15), .B2(In_3[10]), .Z(C[10]) );
  AO22D0 U24 ( .A1(In_2[11]), .A2(In_1[11]), .B1(n16), .B2(In_3[11]), .Z(C[11]) );
  AO22D0 U26 ( .A1(In_2[2]), .A2(In_1[2]), .B1(n19), .B2(In_3[2]), .Z(C[2]) );
  AO22D0 U28 ( .A1(In_2[3]), .A2(In_1[3]), .B1(n20), .B2(In_3[3]), .Z(C[3]) );
  AO22D0 U30 ( .A1(In_2[1]), .A2(In_1[1]), .B1(n18), .B2(In_3[1]), .Z(C[1]) );
  AO22D0 U32 ( .A1(In_2[4]), .A2(In_1[4]), .B1(n21), .B2(In_3[4]), .Z(C[4]) );
  AO22D0 U34 ( .A1(In_2[5]), .A2(In_1[5]), .B1(n22), .B2(In_3[5]), .Z(C[5]) );
  XOR3D0 U10 ( .A1(In_3[12]), .A2(In_1[12]), .A3(In_2[12]), .Z(S[12]) );
  CKND1 U33 ( .I(n27), .ZN(C[0]) );
  CKND2D0 U36 ( .A1(In_3[0]), .A2(In_1[0]), .ZN(n27) );
endmodule


module CSA3_2_Array_WIDTH13_3 ( In_1, In_2, In_3, S, C );
  input [12:0] In_1;
  input [12:0] In_2;
  input [12:0] In_3;
  output [12:0] S;
  output [12:0] C;
  wire   n15, n16, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27;

  CKXOR2D1 U1 ( .A1(In_3[9]), .A2(n26), .Z(S[9]) );
  CKXOR2D1 U2 ( .A1(In_3[8]), .A2(n25), .Z(S[8]) );
  CKXOR2D1 U3 ( .A1(In_3[7]), .A2(n24), .Z(S[7]) );
  CKXOR2D1 U4 ( .A1(In_3[6]), .A2(n23), .Z(S[6]) );
  CKXOR2D1 U5 ( .A1(In_3[5]), .A2(n22), .Z(S[5]) );
  CKXOR2D1 U6 ( .A1(In_3[4]), .A2(n21), .Z(S[4]) );
  CKXOR2D1 U7 ( .A1(In_3[3]), .A2(n20), .Z(S[3]) );
  CKXOR2D1 U8 ( .A1(In_3[2]), .A2(n19), .Z(S[2]) );
  CKXOR2D1 U9 ( .A1(In_3[1]), .A2(n18), .Z(S[1]) );
  CKXOR2D1 U11 ( .A1(In_3[11]), .A2(n16), .Z(S[11]) );
  CKXOR2D1 U12 ( .A1(In_3[10]), .A2(n15), .Z(S[10]) );
  CKXOR2D1 U13 ( .A1(In_3[0]), .A2(In_2[0]), .Z(S[0]) );
  CKXOR2D1 U15 ( .A1(In_2[9]), .A2(In_1[9]), .Z(n26) );
  CKXOR2D1 U17 ( .A1(In_2[8]), .A2(In_1[8]), .Z(n25) );
  CKXOR2D1 U19 ( .A1(In_2[7]), .A2(In_1[7]), .Z(n24) );
  CKXOR2D1 U21 ( .A1(In_2[6]), .A2(In_1[6]), .Z(n23) );
  CKXOR2D1 U23 ( .A1(In_2[5]), .A2(In_1[5]), .Z(n22) );
  CKXOR2D1 U25 ( .A1(In_2[4]), .A2(In_1[4]), .Z(n21) );
  CKXOR2D1 U27 ( .A1(In_2[3]), .A2(In_1[3]), .Z(n20) );
  CKXOR2D1 U29 ( .A1(In_2[2]), .A2(In_1[2]), .Z(n19) );
  CKXOR2D1 U31 ( .A1(In_2[1]), .A2(In_1[1]), .Z(n18) );
  CKXOR2D1 U35 ( .A1(In_2[11]), .A2(In_1[11]), .Z(n16) );
  CKXOR2D1 U37 ( .A1(In_2[10]), .A2(In_1[10]), .Z(n15) );
  AO22D0 U14 ( .A1(In_2[7]), .A2(In_1[7]), .B1(n24), .B2(In_3[7]), .Z(C[7]) );
  AO22D0 U16 ( .A1(In_2[8]), .A2(In_1[8]), .B1(n25), .B2(In_3[8]), .Z(C[8]) );
  AO22D0 U18 ( .A1(In_2[9]), .A2(In_1[9]), .B1(n26), .B2(In_3[9]), .Z(C[9]) );
  AO22D0 U20 ( .A1(In_2[10]), .A2(In_1[10]), .B1(n15), .B2(In_3[10]), .Z(C[10]) );
  AO22D0 U22 ( .A1(In_2[2]), .A2(In_1[2]), .B1(n19), .B2(In_3[2]), .Z(C[2]) );
  AO22D0 U24 ( .A1(In_2[5]), .A2(In_1[5]), .B1(n22), .B2(In_3[5]), .Z(C[5]) );
  AO22D0 U26 ( .A1(In_2[11]), .A2(In_1[11]), .B1(n16), .B2(In_3[11]), .Z(C[11]) );
  AO22D0 U28 ( .A1(In_2[3]), .A2(In_1[3]), .B1(n20), .B2(In_3[3]), .Z(C[3]) );
  AO22D0 U30 ( .A1(In_2[4]), .A2(In_1[4]), .B1(n21), .B2(In_3[4]), .Z(C[4]) );
  AO22D0 U32 ( .A1(In_2[6]), .A2(In_1[6]), .B1(n23), .B2(In_3[6]), .Z(C[6]) );
  AO22D0 U36 ( .A1(In_2[1]), .A2(In_1[1]), .B1(n18), .B2(In_3[1]), .Z(C[1]) );
  XOR3D0 U10 ( .A1(In_1[12]), .A2(In_3[12]), .A3(In_2[12]), .Z(S[12]) );
  CKND1 U33 ( .I(n27), .ZN(C[0]) );
  CKND2D0 U34 ( .A1(In_3[0]), .A2(In_2[0]), .ZN(n27) );
endmodule


module CSA3_2_Array_WIDTH13_2 ( In_1, In_2, In_3, S, C );
  input [12:0] In_1;
  input [12:0] In_2;
  input [12:0] In_3;
  output [12:0] S;
  output [12:0] C;
  wire   n15, n16, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27;

  CKXOR2D1 U1 ( .A1(In_3[9]), .A2(n26), .Z(S[9]) );
  CKXOR2D1 U2 ( .A1(In_3[8]), .A2(n25), .Z(S[8]) );
  CKXOR2D1 U3 ( .A1(In_3[7]), .A2(n24), .Z(S[7]) );
  CKXOR2D1 U4 ( .A1(In_3[6]), .A2(n23), .Z(S[6]) );
  CKXOR2D1 U5 ( .A1(In_3[5]), .A2(n22), .Z(S[5]) );
  CKXOR2D1 U6 ( .A1(In_3[4]), .A2(n21), .Z(S[4]) );
  CKXOR2D1 U7 ( .A1(In_3[3]), .A2(n20), .Z(S[3]) );
  CKXOR2D1 U8 ( .A1(In_3[2]), .A2(n19), .Z(S[2]) );
  CKXOR2D1 U9 ( .A1(In_3[1]), .A2(n18), .Z(S[1]) );
  CKXOR2D1 U11 ( .A1(In_3[11]), .A2(n16), .Z(S[11]) );
  CKXOR2D1 U12 ( .A1(In_3[10]), .A2(n15), .Z(S[10]) );
  CKXOR2D1 U13 ( .A1(In_3[0]), .A2(In_1[0]), .Z(S[0]) );
  CKXOR2D1 U15 ( .A1(In_2[9]), .A2(In_1[9]), .Z(n26) );
  CKXOR2D1 U17 ( .A1(In_2[8]), .A2(In_1[8]), .Z(n25) );
  CKXOR2D1 U19 ( .A1(In_2[7]), .A2(In_1[7]), .Z(n24) );
  CKXOR2D1 U21 ( .A1(In_2[6]), .A2(In_1[6]), .Z(n23) );
  CKXOR2D1 U23 ( .A1(In_2[5]), .A2(In_1[5]), .Z(n22) );
  CKXOR2D1 U25 ( .A1(In_2[4]), .A2(In_1[4]), .Z(n21) );
  CKXOR2D1 U27 ( .A1(In_2[3]), .A2(In_1[3]), .Z(n20) );
  CKXOR2D1 U29 ( .A1(In_2[2]), .A2(In_1[2]), .Z(n19) );
  CKXOR2D1 U31 ( .A1(In_2[1]), .A2(In_1[1]), .Z(n18) );
  CKXOR2D1 U35 ( .A1(In_2[11]), .A2(In_1[11]), .Z(n16) );
  CKXOR2D1 U37 ( .A1(In_2[10]), .A2(In_1[10]), .Z(n15) );
  AO22D0 U14 ( .A1(In_2[6]), .A2(In_1[6]), .B1(n23), .B2(In_3[6]), .Z(C[6]) );
  AO22D0 U16 ( .A1(In_2[7]), .A2(In_1[7]), .B1(n24), .B2(In_3[7]), .Z(C[7]) );
  AO22D0 U18 ( .A1(In_2[8]), .A2(In_1[8]), .B1(n25), .B2(In_3[8]), .Z(C[8]) );
  AO22D0 U20 ( .A1(In_2[9]), .A2(In_1[9]), .B1(n26), .B2(In_3[9]), .Z(C[9]) );
  AO22D0 U22 ( .A1(In_2[10]), .A2(In_1[10]), .B1(n15), .B2(In_3[10]), .Z(C[10]) );
  AO22D0 U24 ( .A1(In_2[2]), .A2(In_1[2]), .B1(n19), .B2(In_3[2]), .Z(C[2]) );
  AO22D0 U26 ( .A1(In_2[5]), .A2(In_1[5]), .B1(n22), .B2(In_3[5]), .Z(C[5]) );
  AO22D0 U28 ( .A1(In_2[11]), .A2(In_1[11]), .B1(n16), .B2(In_3[11]), .Z(C[11]) );
  AO22D0 U30 ( .A1(In_2[3]), .A2(In_1[3]), .B1(n20), .B2(In_3[3]), .Z(C[3]) );
  AO22D0 U32 ( .A1(In_2[4]), .A2(In_1[4]), .B1(n21), .B2(In_3[4]), .Z(C[4]) );
  AO22D0 U36 ( .A1(In_2[1]), .A2(In_1[1]), .B1(n18), .B2(In_3[1]), .Z(C[1]) );
  XOR3D0 U10 ( .A1(In_1[12]), .A2(In_3[12]), .A3(In_2[12]), .Z(S[12]) );
  CKND1 U33 ( .I(n27), .ZN(C[0]) );
  CKND2D0 U34 ( .A1(In_3[0]), .A2(In_1[0]), .ZN(n27) );
endmodule


module CSA3_2_Array_WIDTH13_1 ( In_1, In_2, In_3, S, C );
  input [12:0] In_1;
  input [12:0] In_2;
  input [12:0] In_3;
  output [12:0] S;
  output [12:0] C;
  wire   In_1_0_, n15, n16, n18, n19, n20, n21, n22, n23, n24, n25, n26;
  assign S[0] = In_1_0_;
  assign In_1_0_ = In_1[0];

  CKXOR2D1 U1 ( .A1(In_3[9]), .A2(n26), .Z(S[9]) );
  CKXOR2D1 U2 ( .A1(In_3[8]), .A2(n25), .Z(S[8]) );
  CKXOR2D1 U3 ( .A1(In_3[7]), .A2(n24), .Z(S[7]) );
  CKXOR2D1 U4 ( .A1(In_3[6]), .A2(n23), .Z(S[6]) );
  CKXOR2D1 U5 ( .A1(In_3[5]), .A2(n22), .Z(S[5]) );
  CKXOR2D1 U6 ( .A1(In_3[4]), .A2(n21), .Z(S[4]) );
  CKXOR2D1 U7 ( .A1(In_3[3]), .A2(n20), .Z(S[3]) );
  CKXOR2D1 U8 ( .A1(In_3[2]), .A2(n19), .Z(S[2]) );
  CKXOR2D1 U9 ( .A1(In_3[1]), .A2(n18), .Z(S[1]) );
  CKXOR2D1 U11 ( .A1(In_3[11]), .A2(n16), .Z(S[11]) );
  CKXOR2D1 U12 ( .A1(In_3[10]), .A2(n15), .Z(S[10]) );
  CKXOR2D1 U15 ( .A1(In_2[9]), .A2(In_1[9]), .Z(n26) );
  CKXOR2D1 U17 ( .A1(In_2[8]), .A2(In_1[8]), .Z(n25) );
  CKXOR2D1 U19 ( .A1(In_2[7]), .A2(In_1[7]), .Z(n24) );
  CKXOR2D1 U21 ( .A1(In_2[6]), .A2(In_1[6]), .Z(n23) );
  CKXOR2D1 U23 ( .A1(In_2[5]), .A2(In_1[5]), .Z(n22) );
  CKXOR2D1 U25 ( .A1(In_2[4]), .A2(In_1[4]), .Z(n21) );
  CKXOR2D1 U27 ( .A1(In_2[3]), .A2(In_1[3]), .Z(n20) );
  CKXOR2D1 U29 ( .A1(In_2[2]), .A2(In_1[2]), .Z(n19) );
  CKXOR2D1 U31 ( .A1(In_2[1]), .A2(In_1[1]), .Z(n18) );
  CKXOR2D1 U35 ( .A1(In_2[11]), .A2(In_1[11]), .Z(n16) );
  CKXOR2D1 U37 ( .A1(In_2[10]), .A2(In_1[10]), .Z(n15) );
  AO22D0 U14 ( .A1(In_2[11]), .A2(In_1[11]), .B1(n16), .B2(In_3[11]), .Z(C[11]) );
  AO22D0 U16 ( .A1(In_2[5]), .A2(In_1[5]), .B1(n22), .B2(In_3[5]), .Z(C[5]) );
  AO22D0 U18 ( .A1(In_2[6]), .A2(In_1[6]), .B1(n23), .B2(In_3[6]), .Z(C[6]) );
  AO22D0 U20 ( .A1(In_2[7]), .A2(In_1[7]), .B1(n24), .B2(In_3[7]), .Z(C[7]) );
  AO22D0 U22 ( .A1(In_2[8]), .A2(In_1[8]), .B1(n25), .B2(In_3[8]), .Z(C[8]) );
  AO22D0 U24 ( .A1(In_2[9]), .A2(In_1[9]), .B1(n26), .B2(In_3[9]), .Z(C[9]) );
  AO22D0 U26 ( .A1(In_2[10]), .A2(In_1[10]), .B1(n15), .B2(In_3[10]), .Z(C[10]) );
  AO22D0 U28 ( .A1(In_2[3]), .A2(In_1[3]), .B1(n20), .B2(In_3[3]), .Z(C[3]) );
  AO22D0 U30 ( .A1(In_2[4]), .A2(In_1[4]), .B1(n21), .B2(In_3[4]), .Z(C[4]) );
  AO22D0 U34 ( .A1(In_2[2]), .A2(In_1[2]), .B1(n19), .B2(In_3[2]), .Z(C[2]) );
  AO22D0 U36 ( .A1(In_2[1]), .A2(In_1[1]), .B1(n18), .B2(In_3[1]), .Z(C[1]) );
  XOR3D0 U10 ( .A1(In_1[12]), .A2(In_3[12]), .A3(In_2[12]), .Z(S[12]) );
endmodule


module Mantissa_Div_L4_Kec_MANTISSA_WIDTH11_DW01_add_0 ( A, B, CI, SUM, CO );
  input [12:0] A;
  input [12:0] B;
  output [12:0] SUM;
  input CI;
  output CO;
  wire   A_1_;
  wire   [12:3] carry;
  assign SUM[1] = A_1_;
  assign A_1_ = A[1];

  FA1D0 U1_2 ( .A(A[2]), .B(B[2]), .CI(1'b0), .CO(carry[3]), .S(SUM[2]) );
  FA1D0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1D0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1D0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1D0 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FA1D0 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FA1D0 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  FA1D0 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FA1D0 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA1D0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  XOR3D1 U1_12 ( .A1(A[12]), .A2(B[12]), .A3(carry[12]), .Z(SUM[12]) );
endmodule


module Mantissa_Div_L4_Kec_MANTISSA_WIDTH11_DW01_sub_0_DW01_sub_1 ( A, B, CI, 
        DIFF, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13;
  wire   [11:3] carry;

  FA1D0 U2_10 ( .A(A[10]), .B(n1), .CI(carry[10]), .CO(carry[11]), .S(DIFF[10]) );
  FA1D0 U2_8 ( .A(A[8]), .B(n3), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  FA1D0 U2_7 ( .A(A[7]), .B(n4), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  FA1D0 U2_9 ( .A(A[9]), .B(n2), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9]) );
  FA1D0 U2_6 ( .A(A[6]), .B(n5), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  FA1D0 U2_5 ( .A(A[5]), .B(n6), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  FA1D0 U2_4 ( .A(A[4]), .B(n7), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FA1D0 U2_3 ( .A(A[3]), .B(n8), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  INVD1 U1 ( .I(B[3]), .ZN(n8) );
  INVD1 U2 ( .I(B[4]), .ZN(n7) );
  INVD1 U3 ( .I(B[5]), .ZN(n6) );
  INVD1 U4 ( .I(B[6]), .ZN(n5) );
  INVD1 U5 ( .I(B[9]), .ZN(n2) );
  INVD1 U6 ( .I(B[7]), .ZN(n4) );
  INVD1 U7 ( .I(B[8]), .ZN(n3) );
  INVD1 U8 ( .I(A[1]), .ZN(n9) );
  INVD1 U9 ( .I(B[10]), .ZN(n1) );
  MOAI22D0 U10 ( .A1(B[2]), .A2(n10), .B1(n11), .B2(A[2]), .ZN(carry[3]) );
  NR2D0 U11 ( .A1(A[2]), .A2(n11), .ZN(n10) );
  OAI22D0 U12 ( .A1(n12), .A2(n9), .B1(B[1]), .B2(n13), .ZN(n11) );
  AN2D0 U13 ( .A1(n12), .A2(n9), .Z(n13) );
  INR2D0 U14 ( .A1(B[0]), .B1(A[0]), .ZN(n12) );
  CKND0 U15 ( .I(carry[11]), .ZN(DIFF[11]) );
endmodule


module Mantissa_Div_L4_Kec_MANTISSA_WIDTH11_DW01_sub_1_DW01_sub_2 ( A, B, CI, 
        DIFF, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] DIFF;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  wire   [11:1] carry;

  FA1D0 U2_1 ( .A(A[1]), .B(n11), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  FA1D0 U2_10 ( .A(A[10]), .B(n2), .CI(carry[10]), .CO(carry[11]), .S(DIFF[10]) );
  FA1D0 U2_2 ( .A(A[2]), .B(n10), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  FA1D0 U2_9 ( .A(A[9]), .B(n3), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9]) );
  FA1D0 U2_8 ( .A(A[8]), .B(n4), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  FA1D0 U2_7 ( .A(A[7]), .B(n5), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  FA1D0 U2_6 ( .A(A[6]), .B(n6), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  FA1D0 U2_5 ( .A(A[5]), .B(n7), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  FA1D0 U2_4 ( .A(A[4]), .B(n8), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FA1D0 U2_3 ( .A(A[3]), .B(n9), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  INVD1 U1 ( .I(B[3]), .ZN(n9) );
  INVD1 U2 ( .I(B[4]), .ZN(n8) );
  INVD1 U3 ( .I(B[5]), .ZN(n7) );
  INVD1 U4 ( .I(B[6]), .ZN(n6) );
  INVD1 U5 ( .I(B[7]), .ZN(n5) );
  INVD1 U6 ( .I(B[8]), .ZN(n4) );
  INVD1 U7 ( .I(B[9]), .ZN(n3) );
  INVD1 U8 ( .I(B[2]), .ZN(n10) );
  INVD1 U9 ( .I(B[10]), .ZN(n2) );
  INVD1 U11 ( .I(B[1]), .ZN(n11) );
  CKND0 U15 ( .I(carry[11]), .ZN(DIFF[11]) );
  CKXOR2D0 U10 ( .A1(A[0]), .A2(B[0]), .Z(DIFF[0]) );
  IND2D0 U12 ( .A1(A[0]), .B1(B[0]), .ZN(carry[1]) );
endmodule


module Mantissa_Div_L4_Kec_MANTISSA_WIDTH11 ( Mantissa_X, Mantissa_Y, 
        Mantissa_Out, Shift );
  input [10:0] Mantissa_X;
  input [10:0] Mantissa_Y;
  output [10:0] Mantissa_Out;
  output Shift;
  wire   n13, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n99, n100,
         n101, n102, n103, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142;
  wire   [11:0] x_sub_y;
  wire   [11:3] y_sub_x;
  wire   [12:0] L1_p2;
  wire   [9:0] L2_p;
  wire   [8:0] L3_p1;
  wire   [6:0] L3_p2;
  wire   [7:0] L4_p1;
  wire   [9:0] L4_p2;
  wire   [12:0] A11S;
  wire   [11:0] A11C;
  wire   [12:0] A12S;
  wire   [11:0] A12C;
  wire   [12:0] A21S;
  wire   [11:0] A21C;
  wire   [12:0] A22S;
  wire   [11:0] A22C;
  wire   [12:0] A31S;
  wire   [11:0] A31C;
  wire   [12:0] A41S;
  wire   [11:1] A41C;
  wire   [11:1] Res;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10;

  CSA3_2_Array_WIDTH13_0 Stage_1_1 ( .In_1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .In_2({x_sub_y[11], 
        x_sub_y}), .In_3({L1_p2[12], L1_p2[12], L1_p2[12], L1_p2[9:0]}), .S(
        A11S), .C({SYNOPSYS_UNCONNECTED__0, A11C}) );
  CSA3_2_Array_WIDTH13_5 Stage_1_2 ( .In_1({L2_p[9], L2_p[9], L2_p[9], L2_p}), 
        .In_2({L3_p1[8], L3_p1[8], L3_p1[8], L3_p1[8], L3_p1}), .In_3({
        L3_p2[6], L3_p2[6], L3_p2[6], L3_p2[6], L3_p2[6], L3_p2[6], L3_p2}), 
        .S(A12S), .C({SYNOPSYS_UNCONNECTED__1, A12C}) );
  CSA3_2_Array_WIDTH13_4 Stage_2_1 ( .In_1(A11S), .In_2({A11C, 1'b0}), .In_3(
        A12S), .S(A21S), .C({SYNOPSYS_UNCONNECTED__2, A21C}) );
  CSA3_2_Array_WIDTH13_3 Stage_2_2 ( .In_1({A12C, 1'b0}), .In_2({L4_p1[7], 
        L4_p1[7], L4_p1[7], L4_p1[7], L4_p1[7], L4_p1}), .In_3({L4_p2[9], 
        L4_p2[9], L4_p2[9], L4_p2[9], L4_p2[9], L4_p2[9], L4_p2[9], L4_p2[9], 
        L4_p2[4:0]}), .S(A22S), .C({SYNOPSYS_UNCONNECTED__3, A22C}) );
  CSA3_2_Array_WIDTH13_2 Stage_3_1 ( .In_1(A21S), .In_2({A21C, 1'b0}), .In_3(
        A22S), .S(A31S), .C({SYNOPSYS_UNCONNECTED__4, A31C}) );
  CSA3_2_Array_WIDTH13_1 Stage_4_1 ( .In_1(A31S), .In_2({A31C, 1'b0}), .In_3({
        A22C, 1'b0}), .S(A41S), .C({SYNOPSYS_UNCONNECTED__5, A41C, 
        SYNOPSYS_UNCONNECTED__6}) );
  Mantissa_Div_L4_Kec_MANTISSA_WIDTH11_DW01_add_0 add_205 ( .A(A41S), .B({A41C, 
        1'b0, n13}), .CI(n13), .SUM({Shift, Res, SYNOPSYS_UNCONNECTED__7}) );
  Mantissa_Div_L4_Kec_MANTISSA_WIDTH11_DW01_sub_0_DW01_sub_1 sub_18 ( .A({n13, 
        Mantissa_Y}), .B({n13, Mantissa_X}), .CI(n13), .DIFF({y_sub_x, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10}) );
  Mantissa_Div_L4_Kec_MANTISSA_WIDTH11_DW01_sub_1_DW01_sub_2 sub_17 ( .A({n13, 
        Mantissa_X}), .B({n13, Mantissa_Y}), .CI(n13), .DIFF(x_sub_y) );
  OAI21D1 U4 ( .A1(n46), .A2(n45), .B(n44), .ZN(L4_p1[7]) );
  OAI222D0 U6 ( .A1(n53), .A2(n124), .B1(n54), .B2(n122), .C1(n116), .C2(n123), 
        .ZN(Mantissa_Out[4]) );
  OAI222D0 U7 ( .A1(n53), .A2(n123), .B1(n54), .B2(n121), .C1(n116), .C2(n122), 
        .ZN(Mantissa_Out[5]) );
  OAI222D0 U8 ( .A1(n53), .A2(n122), .B1(n54), .B2(n120), .C1(n116), .C2(n121), 
        .ZN(Mantissa_Out[6]) );
  OAI222D0 U9 ( .A1(n53), .A2(n120), .B1(n118), .B2(n54), .C1(n119), .C2(n116), 
        .ZN(Mantissa_Out[8]) );
  OAI222D0 U10 ( .A1(n53), .A2(n121), .B1(n119), .B2(n54), .C1(n116), .C2(n120), .ZN(Mantissa_Out[7]) );
  ND2D1 U11 ( .A1(n117), .A2(n116), .ZN(n54) );
  OAI22D1 U12 ( .A1(n118), .A2(n116), .B1(n53), .B2(n119), .ZN(Mantissa_Out[9]) );
  OAI22D1 U13 ( .A1(n53), .A2(n118), .B1(n117), .B2(n116), .ZN(
        Mantissa_Out[10]) );
  ND2D1 U14 ( .A1(Res[11]), .A2(n116), .ZN(n53) );
  INVD1 U15 ( .I(Shift), .ZN(n116) );
  OAI222D0 U16 ( .A1(n53), .A2(n125), .B1(n54), .B2(n123), .C1(n116), .C2(n124), .ZN(Mantissa_Out[3]) );
  INVD1 U17 ( .I(Res[11]), .ZN(n117) );
  INVD1 U18 ( .I(Res[10]), .ZN(n118) );
  INVD1 U19 ( .I(Res[9]), .ZN(n119) );
  INVD1 U20 ( .I(Res[8]), .ZN(n120) );
  INVD1 U21 ( .I(Res[7]), .ZN(n121) );
  INVD1 U22 ( .I(Res[6]), .ZN(n122) );
  INVD1 U23 ( .I(Res[5]), .ZN(n123) );
  INVD1 U24 ( .I(Res[4]), .ZN(n124) );
  INVD1 U25 ( .I(y_sub_x[11]), .ZN(n110) );
  INVD1 U26 ( .I(x_sub_y[11]), .ZN(n114) );
  INVD1 U27 ( .I(n32), .ZN(n72) );
  INVD1 U28 ( .I(n36), .ZN(n73) );
  OAI222D0 U29 ( .A1(n53), .A2(n126), .B1(n54), .B2(n124), .C1(n116), .C2(n125), .ZN(Mantissa_Out[2]) );
  OAI221D1 U30 ( .A1(n110), .A2(n55), .B1(n114), .B2(n138), .C(n56), .ZN(
        L4_p2[9]) );
  OA22D0 U31 ( .A1(n58), .A2(n110), .B1(n57), .B2(n114), .Z(n56) );
  OAI221D0 U32 ( .A1(n55), .A2(n135), .B1(n138), .B2(n113), .C(n56), .ZN(
        L4_p2[4]) );
  INVD1 U33 ( .I(n17), .ZN(n52) );
  INVD1 U34 ( .I(n55), .ZN(n140) );
  INVD1 U35 ( .I(n60), .ZN(n138) );
  INVD1 U36 ( .I(Res[3]), .ZN(n125) );
  INVD1 U37 ( .I(n25), .ZN(n71) );
  INVD1 U38 ( .I(n43), .ZN(n75) );
  INVD1 U39 ( .I(n46), .ZN(n74) );
  OAI222D0 U40 ( .A1(n53), .A2(n128), .B1(n54), .B2(n125), .C1(n116), .C2(n126), .ZN(Mantissa_Out[1]) );
  INVD1 U41 ( .I(y_sub_x[8]), .ZN(n108) );
  INVD1 U42 ( .I(y_sub_x[7]), .ZN(n107) );
  INVD1 U43 ( .I(y_sub_x[6]), .ZN(n106) );
  INVD1 U44 ( .I(y_sub_x[9]), .ZN(n109) );
  INVD1 U45 ( .I(x_sub_y[8]), .ZN(n112) );
  INVD1 U46 ( .I(x_sub_y[10]), .ZN(n113) );
  INVD1 U47 ( .I(y_sub_x[5]), .ZN(n105) );
  OAI222D0 U48 ( .A1(n70), .A2(n109), .B1(n127), .B2(n139), .C1(n64), .C2(n112), .ZN(L2_p[6]) );
  OAI222D0 U49 ( .A1(n70), .A2(n135), .B1(n113), .B2(n139), .C1(n64), .C2(n127), .ZN(L2_p[7]) );
  INVD1 U50 ( .I(y_sub_x[10]), .ZN(n135) );
  OAI222D0 U51 ( .A1(n70), .A2(n108), .B1(n112), .B2(n139), .C1(n64), .C2(n130), .ZN(L2_p[5]) );
  OAI222D0 U52 ( .A1(n70), .A2(n107), .B1(n130), .B2(n139), .C1(n64), .C2(n111), .ZN(L2_p[4]) );
  INVD1 U54 ( .I(x_sub_y[6]), .ZN(n111) );
  OAI222D0 U55 ( .A1(n70), .A2(n106), .B1(n111), .B2(n139), .C1(n64), .C2(n131), .ZN(L2_p[3]) );
  AOI22D1 U56 ( .A1(y_sub_x[11]), .A2(n51), .B1(x_sub_y[11]), .B2(n68), .ZN(
        n69) );
  OAI21D1 U57 ( .A1(n64), .A2(n113), .B(n69), .ZN(L2_p[8]) );
  OAI222D0 U58 ( .A1(n105), .A2(n70), .B1(n131), .B2(n139), .C1(n132), .C2(n64), .ZN(L2_p[2]) );
  INVD1 U59 ( .I(x_sub_y[9]), .ZN(n127) );
  OAI221D0 U60 ( .A1(n57), .A2(n127), .B1(n58), .B2(n109), .C(n61), .ZN(
        L4_p2[2]) );
  AOI22D1 U61 ( .A1(y_sub_x[8]), .A2(n140), .B1(x_sub_y[8]), .B2(n60), .ZN(n61) );
  OAI221D0 U62 ( .A1(n57), .A2(n113), .B1(n58), .B2(n135), .C(n59), .ZN(
        L4_p2[3]) );
  AOI22D1 U63 ( .A1(y_sub_x[9]), .A2(n140), .B1(x_sub_y[9]), .B2(n60), .ZN(n59) );
  OAI21D1 U64 ( .A1(n64), .A2(n114), .B(n69), .ZN(L2_p[9]) );
  INVD1 U65 ( .I(x_sub_y[7]), .ZN(n130) );
  INVD1 U66 ( .I(x_sub_y[5]), .ZN(n131) );
  OAI221D0 U67 ( .A1(n57), .A2(n112), .B1(n58), .B2(n108), .C(n62), .ZN(
        L4_p2[1]) );
  AOI22D1 U68 ( .A1(y_sub_x[7]), .A2(n140), .B1(x_sub_y[7]), .B2(n60), .ZN(n62) );
  OAI222D0 U69 ( .A1(n136), .A2(n70), .B1(n132), .B2(n139), .C1(n133), .C2(n64), .ZN(L2_p[1]) );
  INVD1 U70 ( .I(y_sub_x[4]), .ZN(n136) );
  INVD1 U71 ( .I(n76), .ZN(n97) );
  INVD1 U73 ( .I(x_sub_y[4]), .ZN(n132) );
  INVD1 U74 ( .I(n83), .ZN(n99) );
  OAI221D0 U75 ( .A1(n57), .A2(n130), .B1(n58), .B2(n107), .C(n63), .ZN(
        L4_p2[0]) );
  AOI22D1 U76 ( .A1(y_sub_x[6]), .A2(n140), .B1(x_sub_y[6]), .B2(n60), .ZN(n63) );
  OAI222D0 U77 ( .A1(n137), .A2(n70), .B1(n133), .B2(n139), .C1(n134), .C2(n64), .ZN(L2_p[0]) );
  INVD1 U78 ( .I(y_sub_x[3]), .ZN(n137) );
  INVD1 U79 ( .I(x_sub_y[3]), .ZN(n133) );
  INVD1 U80 ( .I(n84), .ZN(n103) );
  INVD1 U81 ( .I(n90), .ZN(n102) );
  INVD1 U82 ( .I(x_sub_y[2]), .ZN(n134) );
  INVD1 U83 ( .I(n26), .ZN(n48) );
  INVD1 U84 ( .I(n68), .ZN(n139) );
  INVD1 U85 ( .I(n42), .ZN(n51) );
  INVD1 U86 ( .I(n7), .ZN(n49) );
  OA22D0 U87 ( .A1(n65), .A2(n64), .B1(n66), .B2(n67), .Z(n58) );
  NR2D1 U88 ( .A1(n68), .A2(n51), .ZN(n66) );
  OA22D0 U89 ( .A1(n67), .A2(n64), .B1(n66), .B2(n65), .Z(n57) );
  NR3D0 U90 ( .A1(n47), .A2(n141), .A3(n64), .ZN(n60) );
  ND3D1 U91 ( .A1(n47), .A2(n141), .A3(n51), .ZN(n55) );
  INVD1 U92 ( .I(Res[2]), .ZN(n126) );
  INVD1 U93 ( .I(Mantissa_Y[10]), .ZN(n100) );
  NR2D1 U94 ( .A1(n114), .A2(Mantissa_Y[10]), .ZN(L1_p2[12]) );
  NR2D1 U95 ( .A1(Mantissa_Y[10]), .A2(n112), .ZN(L1_p2[7]) );
  NR2D1 U96 ( .A1(Mantissa_Y[10]), .A2(n127), .ZN(L1_p2[8]) );
  NR2D1 U97 ( .A1(Mantissa_Y[10]), .A2(n113), .ZN(L1_p2[9]) );
  NR2D1 U98 ( .A1(Mantissa_Y[10]), .A2(n130), .ZN(L1_p2[6]) );
  NR2D1 U99 ( .A1(Mantissa_Y[10]), .A2(n111), .ZN(L1_p2[5]) );
  NR2D1 U100 ( .A1(Mantissa_Y[10]), .A2(n131), .ZN(L1_p2[4]) );
  NR2D1 U101 ( .A1(Mantissa_Y[10]), .A2(n132), .ZN(L1_p2[3]) );
  INVD1 U102 ( .I(Mantissa_Y[9]), .ZN(n50) );
  NR2D1 U103 ( .A1(Mantissa_Y[10]), .A2(n133), .ZN(L1_p2[2]) );
  INVD1 U104 ( .I(Mantissa_Y[7]), .ZN(n47) );
  NR2D1 U105 ( .A1(n100), .A2(Mantissa_Y[9]), .ZN(n68) );
  NR2D1 U106 ( .A1(Mantissa_Y[10]), .A2(n134), .ZN(L1_p2[1]) );
  IND2D1 U107 ( .A1(Mantissa_Y[9]), .B1(n100), .ZN(n64) );
  ND2D1 U108 ( .A1(Mantissa_Y[9]), .A2(n100), .ZN(n70) );
  INR2D1 U109 ( .A1(x_sub_y[1]), .B1(Mantissa_Y[10]), .ZN(L1_p2[0]) );
  INVD1 U110 ( .I(Mantissa_Y[8]), .ZN(n141) );
  ND2D1 U111 ( .A1(Mantissa_Y[7]), .A2(n141), .ZN(n67) );
  ND2D1 U112 ( .A1(Mantissa_Y[8]), .A2(n47), .ZN(n65) );
  INVD1 U113 ( .I(Res[1]), .ZN(n128) );
  OAI222D0 U114 ( .A1(n129), .A2(n53), .B1(n126), .B2(n54), .C1(n128), .C2(
        n116), .ZN(Mantissa_Out[0]) );
  INVD1 U115 ( .I(A41S[0]), .ZN(n129) );
  TIEL U118 ( .ZN(n13) );
  NR2D0 U119 ( .A1(n50), .A2(n100), .ZN(n45) );
  INR2D0 U120 ( .A1(n45), .B1(Mantissa_Y[7]), .ZN(n2) );
  CKND2D0 U121 ( .A1(n2), .A2(n141), .ZN(n17) );
  CKND2D0 U122 ( .A1(Mantissa_Y[8]), .A2(n47), .ZN(n26) );
  CKND2D0 U123 ( .A1(Mantissa_Y[9]), .A2(n100), .ZN(n42) );
  CKND2D0 U124 ( .A1(n100), .A2(n50), .ZN(n21) );
  OAI21D0 U125 ( .A1(Mantissa_Y[8]), .A2(Mantissa_Y[10]), .B(n21), .ZN(n10) );
  AOI33D0 U126 ( .A1(n48), .A2(n51), .A3(x_sub_y[5]), .B1(n10), .B2(n47), .B3(
        x_sub_y[4]), .ZN(n6) );
  AOI32D0 U127 ( .A1(n45), .A2(n141), .A3(y_sub_x[7]), .B1(y_sub_x[5]), .B2(
        n51), .ZN(n1) );
  OAI21D0 U128 ( .A1(n136), .A2(n21), .B(n1), .ZN(n4) );
  INR2D0 U129 ( .A1(n2), .B1(n141), .ZN(n28) );
  NR2D0 U130 ( .A1(Mantissa_Y[8]), .A2(Mantissa_Y[7]), .ZN(n7) );
  AO222D0 U131 ( .A1(n48), .A2(x_sub_y[6]), .B1(n7), .B2(x_sub_y[5]), .C1(
        Mantissa_Y[7]), .C2(y_sub_x[6]), .Z(n3) );
  NR2D0 U132 ( .A1(n100), .A2(Mantissa_Y[9]), .ZN(n39) );
  AOI222D0 U133 ( .A1(n4), .A2(Mantissa_Y[7]), .B1(x_sub_y[7]), .B2(n28), .C1(
        n3), .C2(n39), .ZN(n5) );
  OAI211D0 U134 ( .A1(n17), .A2(n111), .B(n6), .C(n5), .ZN(L4_p1[0]) );
  OA222D0 U135 ( .A1(x_sub_y[7]), .A2(n26), .B1(x_sub_y[6]), .B2(n49), .C1(
        y_sub_x[7]), .C2(n47), .Z(n14) );
  NR2D0 U136 ( .A1(n21), .A2(n47), .ZN(n37) );
  AOI222D0 U137 ( .A1(n39), .A2(n14), .B1(n28), .B2(x_sub_y[8]), .C1(
        y_sub_x[5]), .C2(n37), .ZN(n12) );
  OA22D0 U138 ( .A1(y_sub_x[8]), .A2(n47), .B1(x_sub_y[7]), .B2(Mantissa_Y[7]), 
        .Z(n15) );
  AOI32D0 U139 ( .A1(Mantissa_Y[7]), .A2(n100), .A3(y_sub_x[6]), .B1(
        Mantissa_Y[10]), .B2(n15), .ZN(n8) );
  OAI22D0 U140 ( .A1(y_sub_x[6]), .A2(n47), .B1(x_sub_y[6]), .B2(Mantissa_Y[7]), .ZN(n20) );
  OAI33D0 U141 ( .A1(n8), .A2(Mantissa_Y[8]), .A3(n50), .B1(n42), .B2(n20), 
        .B3(n141), .ZN(n9) );
  AOI31D0 U142 ( .A1(n10), .A2(n47), .A3(x_sub_y[5]), .B(n9), .ZN(n11) );
  CKND2D0 U143 ( .A1(n12), .A2(n11), .ZN(L4_p1[1]) );
  INR3D0 U144 ( .A1(n45), .B1(n47), .B2(Mantissa_Y[8]), .ZN(n27) );
  AOI22D0 U145 ( .A1(n27), .A2(y_sub_x[9]), .B1(n51), .B2(n14), .ZN(n19) );
  IND2D0 U146 ( .A1(y_sub_x[8]), .B1(Mantissa_Y[7]), .ZN(n16) );
  OAI222D0 U147 ( .A1(x_sub_y[8]), .A2(n26), .B1(n141), .B2(n16), .C1(
        Mantissa_Y[8]), .C2(n15), .ZN(n25) );
  AOI222D0 U148 ( .A1(n39), .A2(n71), .B1(x_sub_y[8]), .B2(n52), .C1(n28), 
        .C2(x_sub_y[9]), .ZN(n18) );
  OAI211D0 U149 ( .A1(n20), .A2(n21), .B(n19), .C(n18), .ZN(L4_p1[2]) );
  OAI222D0 U150 ( .A1(x_sub_y[9]), .A2(n26), .B1(x_sub_y[8]), .B2(n49), .C1(
        y_sub_x[9]), .C2(n47), .ZN(n32) );
  AOI22D0 U151 ( .A1(n39), .A2(n72), .B1(n27), .B2(y_sub_x[10]), .ZN(n24) );
  NR2D0 U152 ( .A1(n21), .A2(Mantissa_Y[7]), .ZN(n38) );
  AO22D0 U153 ( .A1(n37), .A2(y_sub_x[7]), .B1(x_sub_y[10]), .B2(n28), .Z(n22)
         );
  AOI221D0 U154 ( .A1(n52), .A2(x_sub_y[9]), .B1(x_sub_y[7]), .B2(n38), .C(n22), .ZN(n23) );
  OAI211D0 U155 ( .A1(n25), .A2(n42), .B(n24), .C(n23), .ZN(L4_p1[3]) );
  OAI222D0 U156 ( .A1(x_sub_y[10]), .A2(n26), .B1(x_sub_y[9]), .B2(n49), .C1(
        y_sub_x[10]), .C2(n47), .ZN(n36) );
  AOI22D0 U157 ( .A1(n39), .A2(n73), .B1(y_sub_x[11]), .B2(n27), .ZN(n31) );
  AO22D0 U158 ( .A1(x_sub_y[11]), .A2(n28), .B1(n37), .B2(y_sub_x[8]), .Z(n29)
         );
  AOI221D0 U159 ( .A1(n52), .A2(x_sub_y[10]), .B1(x_sub_y[8]), .B2(n38), .C(
        n29), .ZN(n30) );
  OAI211D0 U160 ( .A1(n32), .A2(n42), .B(n31), .C(n30), .ZN(L4_p1[4]) );
  OAI22D0 U161 ( .A1(y_sub_x[11]), .A2(n47), .B1(x_sub_y[11]), .B2(
        Mantissa_Y[7]), .ZN(n46) );
  AO21D0 U162 ( .A1(n47), .A2(x_sub_y[11]), .B(n141), .Z(n33) );
  CKND2D0 U163 ( .A1(n74), .A2(n33), .ZN(n44) );
  IND2D0 U164 ( .A1(n44), .B1(n45), .ZN(n41) );
  IND2D0 U165 ( .A1(y_sub_x[11]), .B1(n141), .ZN(n34) );
  OAI222D0 U166 ( .A1(x_sub_y[10]), .A2(n49), .B1(n47), .B2(n34), .C1(n74), 
        .C2(n141), .ZN(n43) );
  AOI222D0 U167 ( .A1(n39), .A2(n75), .B1(x_sub_y[9]), .B2(n38), .C1(
        y_sub_x[9]), .C2(n37), .ZN(n35) );
  OAI211D0 U168 ( .A1(n36), .A2(n42), .B(n41), .C(n35), .ZN(L4_p1[5]) );
  AOI222D0 U169 ( .A1(n39), .A2(n74), .B1(x_sub_y[10]), .B2(n38), .C1(
        y_sub_x[10]), .C2(n37), .ZN(n40) );
  OAI211D0 U170 ( .A1(n43), .A2(n42), .B(n41), .C(n40), .ZN(L4_p1[6]) );
  NR2D0 U171 ( .A1(n141), .A2(Mantissa_Y[9]), .ZN(n76) );
  CKND2D0 U172 ( .A1(Mantissa_Y[10]), .A2(n76), .ZN(n79) );
  ND3D0 U173 ( .A1(n100), .A2(n50), .A3(n141), .ZN(n78) );
  NR2D0 U174 ( .A1(n97), .A2(Mantissa_Y[10]), .ZN(n83) );
  NR2D0 U175 ( .A1(n50), .A2(Mantissa_Y[8]), .ZN(n81) );
  NR2D0 U176 ( .A1(n83), .A2(n81), .ZN(n77) );
  OAI222D0 U177 ( .A1(n105), .A2(n79), .B1(n111), .B2(n78), .C1(n131), .C2(n77), .ZN(L3_p2[0]) );
  OAI222D0 U178 ( .A1(n106), .A2(n79), .B1(n130), .B2(n78), .C1(n111), .C2(n77), .ZN(L3_p2[1]) );
  OAI222D0 U179 ( .A1(n107), .A2(n79), .B1(n112), .B2(n78), .C1(n130), .C2(n77), .ZN(L3_p2[2]) );
  OAI222D0 U180 ( .A1(n108), .A2(n79), .B1(n127), .B2(n78), .C1(n112), .C2(n77), .ZN(L3_p2[3]) );
  OAI222D0 U181 ( .A1(n109), .A2(n79), .B1(n113), .B2(n78), .C1(n127), .C2(n77), .ZN(L3_p2[4]) );
  OAI222D0 U182 ( .A1(n135), .A2(n79), .B1(n114), .B2(n78), .C1(n113), .C2(n77), .ZN(L3_p2[5]) );
  AOI21D0 U183 ( .A1(n50), .A2(n100), .B(n81), .ZN(n80) );
  NR2D0 U184 ( .A1(n50), .A2(n100), .ZN(n94) );
  CKND2D0 U185 ( .A1(Mantissa_Y[8]), .A2(n94), .ZN(n84) );
  NR2D0 U187 ( .A1(n94), .A2(Mantissa_Y[8]), .ZN(n90) );
  AOI22D0 U188 ( .A1(x_sub_y[3]), .A2(n90), .B1(y_sub_x[4]), .B2(n83), .ZN(n82) );
  OAI221D0 U189 ( .A1(n84), .A2(n111), .B1(n101), .B2(n132), .C(n82), .ZN(
        L3_p1[0]) );
  AOI22D0 U190 ( .A1(x_sub_y[7]), .A2(n103), .B1(x_sub_y[5]), .B2(n91), .ZN(
        n85) );
  OAI221D0 U191 ( .A1(n102), .A2(n132), .B1(n99), .B2(n105), .C(n85), .ZN(
        L3_p1[1]) );
  AOI22D0 U192 ( .A1(x_sub_y[8]), .A2(n103), .B1(x_sub_y[6]), .B2(n91), .ZN(
        n86) );
  OAI221D0 U193 ( .A1(n102), .A2(n131), .B1(n99), .B2(n106), .C(n86), .ZN(
        L3_p1[2]) );
  AOI22D0 U194 ( .A1(x_sub_y[9]), .A2(n103), .B1(x_sub_y[7]), .B2(n91), .ZN(
        n87) );
  OAI221D0 U195 ( .A1(n102), .A2(n111), .B1(n99), .B2(n107), .C(n87), .ZN(
        L3_p1[3]) );
  AOI22D0 U196 ( .A1(n103), .A2(x_sub_y[10]), .B1(x_sub_y[8]), .B2(n91), .ZN(
        n88) );
  OAI221D0 U197 ( .A1(n102), .A2(n130), .B1(n99), .B2(n108), .C(n88), .ZN(
        L3_p1[4]) );
  CKND2D0 U198 ( .A1(n103), .A2(x_sub_y[11]), .ZN(n93) );
  AOI22D0 U199 ( .A1(x_sub_y[9]), .A2(n91), .B1(x_sub_y[8]), .B2(n90), .ZN(n89) );
  OAI211D0 U200 ( .A1(n99), .A2(n109), .B(n93), .C(n89), .ZN(L3_p1[5]) );
  AOI22D0 U201 ( .A1(n91), .A2(x_sub_y[10]), .B1(x_sub_y[9]), .B2(n90), .ZN(
        n92) );
  OAI211D0 U202 ( .A1(n99), .A2(n135), .B(n93), .C(n92), .ZN(L3_p1[6]) );
  AOI21D0 U203 ( .A1(Mantissa_Y[10]), .A2(Mantissa_Y[8]), .B(n94), .ZN(n95) );
  OAI222D0 U204 ( .A1(n102), .A2(n113), .B1(n114), .B2(n95), .C1(n99), .C2(
        n110), .ZN(L3_p1[7]) );
  NR2D0 U205 ( .A1(n141), .A2(Mantissa_Y[10]), .ZN(n96) );
  OAI22D0 U206 ( .A1(n99), .A2(n110), .B1(n96), .B2(n114), .ZN(L3_p1[8]) );
  ND3D0 U3 ( .A1(y_sub_x[11]), .A2(n76), .A3(n80), .ZN(n142) );
  CKND0 U5 ( .I(n101), .ZN(n91) );
  OAI21D0 U53 ( .A1(n81), .A2(n76), .B(Mantissa_Y[10]), .ZN(n101) );
  OAI21D1 U72 ( .A1(n114), .A2(n80), .B(n142), .ZN(L3_p2[6]) );
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
  CKBD1 U29 ( .I(result_fraction[16]), .Z(result[16]) );
  CKBD1 U30 ( .I(result_fraction[17]), .Z(result[17]) );
  CKBD1 U31 ( .I(result_fraction[18]), .Z(result[18]) );
  CKBD1 U32 ( .I(result_fraction[15]), .Z(result[15]) );
  CKBD1 U33 ( .I(result_fraction[14]), .Z(result[14]) );
  CKBD1 U34 ( .I(result_fraction[13]), .Z(result[13]) );
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
  CKBD1 U56 ( .I(y[19]), .Z(fraction_y[19]) );
  CKBD1 U58 ( .I(result_fraction[12]), .Z(result[12]) );
  CKBD1 U59 ( .I(y[20]), .Z(fraction_y[20]) );
  CKBD1 U60 ( .I(y[21]), .Z(fraction_y[21]) );
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
  CKBD1 U95 ( .I(x[14]), .Z(fraction_x[14]) );
  CKBD1 U96 ( .I(x[13]), .Z(fraction_x[13]) );
  CKBD1 U97 ( .I(x[12]), .Z(fraction_x[12]) );
  CKBD1 U98 ( .I(y[22]), .Z(fraction_y[22]) );
  CKBD1 U99 ( .I(y[18]), .Z(fraction_y[18]) );
  CKBD1 U100 ( .I(y[17]), .Z(fraction_y[17]) );
  CKBD1 U101 ( .I(y[16]), .Z(fraction_y[16]) );
  CKBD1 U102 ( .I(y[15]), .Z(fraction_y[15]) );
  CKBD1 U103 ( .I(y[14]), .Z(fraction_y[14]) );
  CKBD1 U104 ( .I(y[13]), .Z(fraction_y[13]) );
  CKBD1 U105 ( .I(y[12]), .Z(fraction_y[12]) );
  CKBD1 U106 ( .I(result_fraction[22]), .Z(result[22]) );
  CKBD1 U107 ( .I(result_fraction[21]), .Z(result[21]) );
  CKBD1 U108 ( .I(result_fraction[20]), .Z(result[20]) );
  CKBD1 U109 ( .I(result_fraction[19]), .Z(result[19]) );
  TIEL U110 ( .ZN(n79) );
  CKXOR2D1 U111 ( .A1(exponent_adjust[0]), .A2(N3), .Z(result[23]) );
  CKND0 U119 ( .I(y[23]), .ZN(N11) );
endmodule


module FP_DIV_WRAPPER_32_width_trunc12 ( x, y, out0, mantissa_x, mantissa_y, 
        mantissa_out, shift );
  input [31:0] x;
  input [31:0] y;
  output [31:0] out0;
  output [10:0] mantissa_x;
  output [10:0] mantissa_y;
  input [10:0] mantissa_out;
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
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35;

  fp32_normal_finite_wrapper shared_wrapper ( .x({x[31:12], 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y({y[31:12], 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .divide_mode(1'b0), .fraction_x({mantissa_x, SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11}), .fraction_y({mantissa_y, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23}), 
        .result_fraction({mantissa_out, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .exponent_adjust({shift[0], 
        shift[0], shift[0]}), .result({out0[31:12], SYNOPSYS_UNCONNECTED__24, 
        SYNOPSYS_UNCONNECTED__25, SYNOPSYS_UNCONNECTED__26, 
        SYNOPSYS_UNCONNECTED__27, SYNOPSYS_UNCONNECTED__28, 
        SYNOPSYS_UNCONNECTED__29, SYNOPSYS_UNCONNECTED__30, 
        SYNOPSYS_UNCONNECTED__31, SYNOPSYS_UNCONNECTED__32, 
        SYNOPSYS_UNCONNECTED__33, SYNOPSYS_UNCONNECTED__34, 
        SYNOPSYS_UNCONNECTED__35}) );
endmodule


module fig8_pace_l4_d12 ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   shift, n1;
  wire   [10:0] mx;
  wire   [10:0] my;
  wire   [10:0] mz;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11;
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

  Mantissa_Div_L4_Kec_MANTISSA_WIDTH11 core ( .Mantissa_X(mx), .Mantissa_Y(my), 
        .Mantissa_Out(mz), .Shift(shift) );
  FP_DIV_WRAPPER_32_width_trunc12 shell ( .x({x[31:12], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y({y[31:12], 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .out0({result[31:12], SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11}), .mantissa_x(mx), 
        .mantissa_y(my), .mantissa_out(mz), .shift(n1) );
  INVD1 U2 ( .I(shift), .ZN(n1) );
endmodule

