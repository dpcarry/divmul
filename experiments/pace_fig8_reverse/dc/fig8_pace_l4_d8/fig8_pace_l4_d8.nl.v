/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Sat Sep  5 13:12:51 2026
/////////////////////////////////////////////////////////////


module CSA3_2_Array_WIDTH17_0 ( In_1, In_2, In_3, S, C );
  input [16:0] In_1;
  input [16:0] In_2;
  input [16:0] In_3;
  output [16:0] S;
  output [16:0] C;
  wire   n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33;

  CKXOR2D1 U1 ( .A1(In_3[9]), .A2(In_2[9]), .Z(S[9]) );
  CKXOR2D1 U2 ( .A1(In_3[8]), .A2(In_2[8]), .Z(S[8]) );
  CKXOR2D1 U3 ( .A1(In_3[7]), .A2(In_2[7]), .Z(S[7]) );
  CKXOR2D1 U4 ( .A1(In_3[6]), .A2(In_2[6]), .Z(S[6]) );
  CKXOR2D1 U5 ( .A1(In_3[5]), .A2(In_2[5]), .Z(S[5]) );
  CKXOR2D1 U6 ( .A1(In_3[4]), .A2(In_2[4]), .Z(S[4]) );
  CKXOR2D1 U7 ( .A1(In_3[3]), .A2(In_2[3]), .Z(S[3]) );
  CKXOR2D1 U8 ( .A1(In_3[2]), .A2(In_2[2]), .Z(S[2]) );
  CKXOR2D1 U9 ( .A1(In_3[1]), .A2(In_2[1]), .Z(S[1]) );
  CKXOR2D1 U11 ( .A1(In_3[15]), .A2(In_2[15]), .Z(S[15]) );
  CKXOR2D1 U12 ( .A1(In_3[14]), .A2(In_2[14]), .Z(S[14]) );
  CKXOR2D1 U13 ( .A1(In_3[13]), .A2(In_2[13]), .Z(S[13]) );
  CKXOR2D1 U14 ( .A1(In_3[12]), .A2(In_2[12]), .Z(S[12]) );
  CKXOR2D1 U15 ( .A1(In_3[11]), .A2(In_2[11]), .Z(S[11]) );
  CKXOR2D1 U16 ( .A1(In_3[10]), .A2(In_2[10]), .Z(S[10]) );
  CKXOR2D1 U17 ( .A1(In_3[0]), .A2(In_2[0]), .Z(S[0]) );
  XNR2D0 U10 ( .A1(In_3[16]), .A2(In_2[16]), .ZN(S[16]) );
  CKND0 U18 ( .I(n33), .ZN(C[15]) );
  CKND1 U19 ( .I(n32), .ZN(C[14]) );
  CKND2D0 U20 ( .A1(In_3[15]), .A2(In_2[15]), .ZN(n33) );
  CKND1 U21 ( .I(n31), .ZN(C[13]) );
  CKND2D0 U22 ( .A1(In_3[14]), .A2(In_2[14]), .ZN(n32) );
  CKND1 U23 ( .I(n30), .ZN(C[12]) );
  CKND2D0 U24 ( .A1(In_3[13]), .A2(In_2[13]), .ZN(n31) );
  CKND1 U25 ( .I(n29), .ZN(C[11]) );
  CKND2D0 U26 ( .A1(In_3[12]), .A2(In_2[12]), .ZN(n30) );
  CKND1 U27 ( .I(n28), .ZN(C[10]) );
  CKND2D0 U28 ( .A1(In_3[11]), .A2(In_2[11]), .ZN(n29) );
  CKND1 U29 ( .I(n27), .ZN(C[9]) );
  CKND2D0 U30 ( .A1(In_3[10]), .A2(In_2[10]), .ZN(n28) );
  CKND1 U31 ( .I(n26), .ZN(C[8]) );
  CKND2D0 U32 ( .A1(In_3[9]), .A2(In_2[9]), .ZN(n27) );
  CKND1 U33 ( .I(n25), .ZN(C[7]) );
  CKND2D0 U34 ( .A1(In_3[8]), .A2(In_2[8]), .ZN(n26) );
  CKND1 U35 ( .I(n24), .ZN(C[6]) );
  CKND2D0 U36 ( .A1(In_3[7]), .A2(In_2[7]), .ZN(n25) );
  CKND1 U37 ( .I(n23), .ZN(C[5]) );
  CKND2D0 U38 ( .A1(In_3[6]), .A2(In_2[6]), .ZN(n24) );
  CKND1 U39 ( .I(n22), .ZN(C[4]) );
  CKND2D0 U40 ( .A1(In_3[5]), .A2(In_2[5]), .ZN(n23) );
  CKND1 U41 ( .I(n21), .ZN(C[3]) );
  CKND2D0 U42 ( .A1(In_3[4]), .A2(In_2[4]), .ZN(n22) );
  CKND1 U43 ( .I(n20), .ZN(C[2]) );
  CKND2D0 U44 ( .A1(In_3[3]), .A2(In_2[3]), .ZN(n21) );
  CKND1 U45 ( .I(n19), .ZN(C[1]) );
  CKND1 U46 ( .I(n18), .ZN(C[0]) );
  CKND2D0 U47 ( .A1(In_3[2]), .A2(In_2[2]), .ZN(n20) );
  CKND2D0 U48 ( .A1(In_3[1]), .A2(In_2[1]), .ZN(n19) );
  CKND2D0 U49 ( .A1(In_3[0]), .A2(In_2[0]), .ZN(n18) );
endmodule


module CSA3_2_Array_WIDTH17_5 ( In_1, In_2, In_3, S, C );
  input [16:0] In_1;
  input [16:0] In_2;
  input [16:0] In_3;
  output [16:0] S;
  output [16:0] C;
  wire   n18, n19, n20, n21, n22, n23, n24, n26, n27, n28, n29, n30, n31, n32,
         n33, n34;

  CKXOR2D1 U1 ( .A1(In_3[9]), .A2(n34), .Z(S[9]) );
  CKXOR2D1 U2 ( .A1(In_3[8]), .A2(n33), .Z(S[8]) );
  CKXOR2D1 U3 ( .A1(In_3[7]), .A2(n32), .Z(S[7]) );
  CKXOR2D1 U4 ( .A1(In_3[6]), .A2(n31), .Z(S[6]) );
  CKXOR2D1 U5 ( .A1(In_3[5]), .A2(n30), .Z(S[5]) );
  CKXOR2D1 U6 ( .A1(In_3[4]), .A2(n29), .Z(S[4]) );
  CKXOR2D1 U7 ( .A1(In_3[3]), .A2(n28), .Z(S[3]) );
  CKXOR2D1 U8 ( .A1(In_3[2]), .A2(n27), .Z(S[2]) );
  CKXOR2D1 U9 ( .A1(In_3[1]), .A2(n26), .Z(S[1]) );
  CKXOR2D1 U17 ( .A1(In_3[0]), .A2(n18), .Z(S[0]) );
  CKXOR2D1 U19 ( .A1(In_2[9]), .A2(In_1[9]), .Z(n34) );
  CKXOR2D1 U21 ( .A1(In_2[8]), .A2(In_1[8]), .Z(n33) );
  CKXOR2D1 U23 ( .A1(In_2[7]), .A2(In_1[7]), .Z(n32) );
  CKXOR2D1 U25 ( .A1(In_2[6]), .A2(In_1[6]), .Z(n31) );
  CKXOR2D1 U27 ( .A1(In_2[5]), .A2(In_1[5]), .Z(n30) );
  CKXOR2D1 U29 ( .A1(In_2[4]), .A2(In_1[4]), .Z(n29) );
  CKXOR2D1 U31 ( .A1(In_2[3]), .A2(In_1[3]), .Z(n28) );
  CKXOR2D1 U33 ( .A1(In_2[2]), .A2(In_1[2]), .Z(n27) );
  CKXOR2D1 U35 ( .A1(In_2[1]), .A2(In_1[1]), .Z(n26) );
  CKXOR2D1 U39 ( .A1(In_2[15]), .A2(In_1[15]), .Z(n24) );
  CKXOR2D1 U41 ( .A1(In_2[14]), .A2(In_1[14]), .Z(n23) );
  CKXOR2D1 U43 ( .A1(In_2[13]), .A2(In_1[13]), .Z(n22) );
  CKXOR2D1 U45 ( .A1(In_2[12]), .A2(In_1[12]), .Z(n21) );
  CKXOR2D1 U47 ( .A1(In_2[11]), .A2(In_1[11]), .Z(n20) );
  CKXOR2D1 U49 ( .A1(In_2[10]), .A2(In_1[10]), .Z(n19) );
  CKXOR2D1 U51 ( .A1(In_2[0]), .A2(In_1[0]), .Z(n18) );
  CKXOR2D0 U10 ( .A1(In_3[10]), .A2(n19), .Z(S[10]) );
  CKXOR2D0 U11 ( .A1(In_3[11]), .A2(n20), .Z(S[11]) );
  CKXOR2D0 U12 ( .A1(In_3[12]), .A2(n21), .Z(S[12]) );
  CKXOR2D0 U13 ( .A1(In_3[13]), .A2(n22), .Z(S[13]) );
  CKXOR2D0 U14 ( .A1(In_3[14]), .A2(n23), .Z(S[14]) );
  CKXOR2D0 U15 ( .A1(In_3[15]), .A2(n24), .Z(S[15]) );
  AO22D0 U18 ( .A1(In_2[10]), .A2(In_1[10]), .B1(n19), .B2(In_3[10]), .Z(C[10]) );
  AO22D0 U20 ( .A1(In_2[12]), .A2(In_1[12]), .B1(n21), .B2(In_3[12]), .Z(C[12]) );
  AO22D0 U22 ( .A1(In_2[13]), .A2(In_1[13]), .B1(n22), .B2(In_3[13]), .Z(C[13]) );
  AO22D0 U24 ( .A1(In_2[14]), .A2(In_1[14]), .B1(n23), .B2(In_3[14]), .Z(C[14]) );
  AO22D0 U26 ( .A1(In_2[15]), .A2(In_1[15]), .B1(n24), .B2(In_3[15]), .Z(C[15]) );
  AO22D0 U28 ( .A1(In_2[7]), .A2(In_1[7]), .B1(n32), .B2(In_3[7]), .Z(C[7]) );
  AO22D0 U30 ( .A1(In_2[6]), .A2(In_1[6]), .B1(n31), .B2(In_3[6]), .Z(C[6]) );
  AO22D0 U32 ( .A1(In_2[2]), .A2(In_1[2]), .B1(n27), .B2(In_3[2]), .Z(C[2]) );
  AO22D0 U34 ( .A1(In_2[3]), .A2(In_1[3]), .B1(n28), .B2(In_3[3]), .Z(C[3]) );
  AO22D0 U36 ( .A1(In_2[4]), .A2(In_1[4]), .B1(n29), .B2(In_3[4]), .Z(C[4]) );
  AO22D0 U38 ( .A1(In_2[5]), .A2(In_1[5]), .B1(n30), .B2(In_3[5]), .Z(C[5]) );
  AO22D0 U40 ( .A1(In_2[8]), .A2(In_1[8]), .B1(n33), .B2(In_3[8]), .Z(C[8]) );
  AO22D0 U42 ( .A1(In_2[9]), .A2(In_1[9]), .B1(n34), .B2(In_3[9]), .Z(C[9]) );
  AO22D0 U44 ( .A1(In_2[1]), .A2(In_1[1]), .B1(n26), .B2(In_3[1]), .Z(C[1]) );
  AO22D0 U46 ( .A1(In_2[0]), .A2(In_1[0]), .B1(n18), .B2(In_3[0]), .Z(C[0]) );
  AO22D0 U50 ( .A1(In_2[11]), .A2(In_1[11]), .B1(n20), .B2(In_3[11]), .Z(C[11]) );
  XOR3D0 U16 ( .A1(In_3[16]), .A2(In_1[16]), .A3(In_2[16]), .Z(S[16]) );
endmodule


module CSA3_2_Array_WIDTH17_4 ( In_1, In_2, In_3, S, C );
  input [16:0] In_1;
  input [16:0] In_2;
  input [16:0] In_3;
  output [16:0] S;
  output [16:0] C;
  wire   n19, n20, n21, n22, n23, n24, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35;

  CKXOR2D1 U1 ( .A1(In_3[9]), .A2(n34), .Z(S[9]) );
  CKXOR2D1 U2 ( .A1(In_3[8]), .A2(n33), .Z(S[8]) );
  CKXOR2D1 U3 ( .A1(In_3[7]), .A2(n32), .Z(S[7]) );
  CKXOR2D1 U4 ( .A1(In_3[6]), .A2(n31), .Z(S[6]) );
  CKXOR2D1 U5 ( .A1(In_3[5]), .A2(n30), .Z(S[5]) );
  CKXOR2D1 U6 ( .A1(In_3[4]), .A2(n29), .Z(S[4]) );
  CKXOR2D1 U7 ( .A1(In_3[3]), .A2(n28), .Z(S[3]) );
  CKXOR2D1 U8 ( .A1(In_3[2]), .A2(n27), .Z(S[2]) );
  CKXOR2D1 U9 ( .A1(In_3[1]), .A2(n26), .Z(S[1]) );
  CKXOR2D1 U11 ( .A1(In_3[15]), .A2(n24), .Z(S[15]) );
  CKXOR2D1 U12 ( .A1(In_3[14]), .A2(n23), .Z(S[14]) );
  CKXOR2D1 U13 ( .A1(In_3[13]), .A2(n22), .Z(S[13]) );
  CKXOR2D1 U14 ( .A1(In_3[12]), .A2(n21), .Z(S[12]) );
  CKXOR2D1 U15 ( .A1(In_3[11]), .A2(n20), .Z(S[11]) );
  CKXOR2D1 U16 ( .A1(In_3[10]), .A2(n19), .Z(S[10]) );
  CKXOR2D1 U17 ( .A1(In_3[0]), .A2(In_1[0]), .Z(S[0]) );
  CKXOR2D1 U19 ( .A1(In_2[9]), .A2(In_1[9]), .Z(n34) );
  CKXOR2D1 U21 ( .A1(In_2[8]), .A2(In_1[8]), .Z(n33) );
  CKXOR2D1 U23 ( .A1(In_2[7]), .A2(In_1[7]), .Z(n32) );
  CKXOR2D1 U25 ( .A1(In_2[6]), .A2(In_1[6]), .Z(n31) );
  CKXOR2D1 U27 ( .A1(In_2[5]), .A2(In_1[5]), .Z(n30) );
  CKXOR2D1 U29 ( .A1(In_2[4]), .A2(In_1[4]), .Z(n29) );
  CKXOR2D1 U31 ( .A1(In_2[3]), .A2(In_1[3]), .Z(n28) );
  CKXOR2D1 U33 ( .A1(In_2[2]), .A2(In_1[2]), .Z(n27) );
  CKXOR2D1 U35 ( .A1(In_2[1]), .A2(In_1[1]), .Z(n26) );
  CKXOR2D1 U39 ( .A1(In_2[15]), .A2(In_1[15]), .Z(n24) );
  CKXOR2D1 U41 ( .A1(In_2[14]), .A2(In_1[14]), .Z(n23) );
  CKXOR2D1 U43 ( .A1(In_2[13]), .A2(In_1[13]), .Z(n22) );
  CKXOR2D1 U45 ( .A1(In_2[12]), .A2(In_1[12]), .Z(n21) );
  CKXOR2D1 U47 ( .A1(In_2[11]), .A2(In_1[11]), .Z(n20) );
  CKXOR2D1 U49 ( .A1(In_2[10]), .A2(In_1[10]), .Z(n19) );
  AO22D0 U20 ( .A1(In_2[10]), .A2(In_1[10]), .B1(n19), .B2(In_3[10]), .Z(C[10]) );
  AO22D0 U22 ( .A1(In_2[11]), .A2(In_1[11]), .B1(n20), .B2(In_3[11]), .Z(C[11]) );
  AO22D0 U24 ( .A1(In_2[12]), .A2(In_1[12]), .B1(n21), .B2(In_3[12]), .Z(C[12]) );
  AO22D0 U26 ( .A1(In_2[13]), .A2(In_1[13]), .B1(n22), .B2(In_3[13]), .Z(C[13]) );
  AO22D0 U28 ( .A1(In_2[14]), .A2(In_1[14]), .B1(n23), .B2(In_3[14]), .Z(C[14]) );
  AO22D0 U30 ( .A1(In_2[15]), .A2(In_1[15]), .B1(n24), .B2(In_3[15]), .Z(C[15]) );
  AO22D0 U32 ( .A1(In_2[6]), .A2(In_1[6]), .B1(n31), .B2(In_3[6]), .Z(C[6]) );
  AO22D0 U34 ( .A1(In_2[7]), .A2(In_1[7]), .B1(n32), .B2(In_3[7]), .Z(C[7]) );
  AO22D0 U36 ( .A1(In_2[2]), .A2(In_1[2]), .B1(n27), .B2(In_3[2]), .Z(C[2]) );
  AO22D0 U38 ( .A1(In_2[3]), .A2(In_1[3]), .B1(n28), .B2(In_3[3]), .Z(C[3]) );
  AO22D0 U40 ( .A1(In_2[4]), .A2(In_1[4]), .B1(n29), .B2(In_3[4]), .Z(C[4]) );
  AO22D0 U42 ( .A1(In_2[5]), .A2(In_1[5]), .B1(n30), .B2(In_3[5]), .Z(C[5]) );
  AO22D0 U44 ( .A1(In_2[1]), .A2(In_1[1]), .B1(n26), .B2(In_3[1]), .Z(C[1]) );
  AO22D0 U46 ( .A1(In_2[8]), .A2(In_1[8]), .B1(n33), .B2(In_3[8]), .Z(C[8]) );
  AO22D0 U48 ( .A1(In_2[9]), .A2(In_1[9]), .B1(n34), .B2(In_3[9]), .Z(C[9]) );
  XOR3D0 U10 ( .A1(In_3[16]), .A2(In_1[16]), .A3(In_2[16]), .Z(S[16]) );
  CKND1 U18 ( .I(n35), .ZN(C[0]) );
  CKND2D0 U37 ( .A1(In_3[0]), .A2(In_1[0]), .ZN(n35) );
endmodule


module CSA3_2_Array_WIDTH17_3 ( In_1, In_2, In_3, S, C );
  input [16:0] In_1;
  input [16:0] In_2;
  input [16:0] In_3;
  output [16:0] S;
  output [16:0] C;
  wire   n19, n20, n21, n22, n23, n24, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35;

  CKXOR2D1 U1 ( .A1(In_3[9]), .A2(n34), .Z(S[9]) );
  CKXOR2D1 U2 ( .A1(In_3[8]), .A2(n33), .Z(S[8]) );
  CKXOR2D1 U3 ( .A1(In_3[7]), .A2(n32), .Z(S[7]) );
  CKXOR2D1 U4 ( .A1(In_3[6]), .A2(n31), .Z(S[6]) );
  CKXOR2D1 U5 ( .A1(In_3[5]), .A2(n30), .Z(S[5]) );
  CKXOR2D1 U6 ( .A1(In_3[4]), .A2(n29), .Z(S[4]) );
  CKXOR2D1 U7 ( .A1(In_3[3]), .A2(n28), .Z(S[3]) );
  CKXOR2D1 U8 ( .A1(In_3[2]), .A2(n27), .Z(S[2]) );
  CKXOR2D1 U9 ( .A1(In_3[1]), .A2(n26), .Z(S[1]) );
  CKXOR2D1 U11 ( .A1(In_3[15]), .A2(n24), .Z(S[15]) );
  CKXOR2D1 U12 ( .A1(In_3[14]), .A2(n23), .Z(S[14]) );
  CKXOR2D1 U13 ( .A1(In_3[13]), .A2(n22), .Z(S[13]) );
  CKXOR2D1 U14 ( .A1(In_3[12]), .A2(n21), .Z(S[12]) );
  CKXOR2D1 U15 ( .A1(In_3[11]), .A2(n20), .Z(S[11]) );
  CKXOR2D1 U16 ( .A1(In_3[10]), .A2(n19), .Z(S[10]) );
  CKXOR2D1 U17 ( .A1(In_3[0]), .A2(In_2[0]), .Z(S[0]) );
  CKXOR2D1 U19 ( .A1(In_2[9]), .A2(In_1[9]), .Z(n34) );
  CKXOR2D1 U21 ( .A1(In_2[8]), .A2(In_1[8]), .Z(n33) );
  CKXOR2D1 U23 ( .A1(In_2[7]), .A2(In_1[7]), .Z(n32) );
  CKXOR2D1 U25 ( .A1(In_2[6]), .A2(In_1[6]), .Z(n31) );
  CKXOR2D1 U27 ( .A1(In_2[5]), .A2(In_1[5]), .Z(n30) );
  CKXOR2D1 U29 ( .A1(In_2[4]), .A2(In_1[4]), .Z(n29) );
  CKXOR2D1 U31 ( .A1(In_2[3]), .A2(In_1[3]), .Z(n28) );
  CKXOR2D1 U33 ( .A1(In_2[2]), .A2(In_1[2]), .Z(n27) );
  CKXOR2D1 U35 ( .A1(In_2[1]), .A2(In_1[1]), .Z(n26) );
  CKXOR2D1 U39 ( .A1(In_2[15]), .A2(In_1[15]), .Z(n24) );
  CKXOR2D1 U41 ( .A1(In_2[14]), .A2(In_1[14]), .Z(n23) );
  CKXOR2D1 U43 ( .A1(In_2[13]), .A2(In_1[13]), .Z(n22) );
  CKXOR2D1 U45 ( .A1(In_2[12]), .A2(In_1[12]), .Z(n21) );
  CKXOR2D1 U47 ( .A1(In_2[11]), .A2(In_1[11]), .Z(n20) );
  CKXOR2D1 U49 ( .A1(In_2[10]), .A2(In_1[10]), .Z(n19) );
  AO22D0 U20 ( .A1(In_2[11]), .A2(In_1[11]), .B1(n20), .B2(In_3[11]), .Z(C[11]) );
  AO22D0 U22 ( .A1(In_2[12]), .A2(In_1[12]), .B1(n21), .B2(In_3[12]), .Z(C[12]) );
  AO22D0 U24 ( .A1(In_2[13]), .A2(In_1[13]), .B1(n22), .B2(In_3[13]), .Z(C[13]) );
  AO22D0 U26 ( .A1(In_2[14]), .A2(In_1[14]), .B1(n23), .B2(In_3[14]), .Z(C[14]) );
  AO22D0 U28 ( .A1(In_2[9]), .A2(In_1[9]), .B1(n34), .B2(In_3[9]), .Z(C[9]) );
  AO22D0 U30 ( .A1(In_2[2]), .A2(In_1[2]), .B1(n27), .B2(In_3[2]), .Z(C[2]) );
  AO22D0 U32 ( .A1(In_2[15]), .A2(In_1[15]), .B1(n24), .B2(In_3[15]), .Z(C[15]) );
  AO22D0 U34 ( .A1(In_2[5]), .A2(In_1[5]), .B1(n30), .B2(In_3[5]), .Z(C[5]) );
  AO22D0 U36 ( .A1(In_2[6]), .A2(In_1[6]), .B1(n31), .B2(In_3[6]), .Z(C[6]) );
  AO22D0 U38 ( .A1(In_2[3]), .A2(In_1[3]), .B1(n28), .B2(In_3[3]), .Z(C[3]) );
  AO22D0 U40 ( .A1(In_2[4]), .A2(In_1[4]), .B1(n29), .B2(In_3[4]), .Z(C[4]) );
  AO22D0 U42 ( .A1(In_2[7]), .A2(In_1[7]), .B1(n32), .B2(In_3[7]), .Z(C[7]) );
  AO22D0 U44 ( .A1(In_2[8]), .A2(In_1[8]), .B1(n33), .B2(In_3[8]), .Z(C[8]) );
  AO22D0 U46 ( .A1(In_2[10]), .A2(In_1[10]), .B1(n19), .B2(In_3[10]), .Z(C[10]) );
  AO22D0 U50 ( .A1(In_2[1]), .A2(In_1[1]), .B1(n26), .B2(In_3[1]), .Z(C[1]) );
  XOR3D0 U10 ( .A1(In_1[16]), .A2(In_3[16]), .A3(In_2[16]), .Z(S[16]) );
  CKND1 U18 ( .I(n35), .ZN(C[0]) );
  CKND2D0 U37 ( .A1(In_3[0]), .A2(In_2[0]), .ZN(n35) );
endmodule


module CSA3_2_Array_WIDTH17_2 ( In_1, In_2, In_3, S, C );
  input [16:0] In_1;
  input [16:0] In_2;
  input [16:0] In_3;
  output [16:0] S;
  output [16:0] C;
  wire   n19, n20, n21, n22, n23, n24, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35;

  CKXOR2D1 U1 ( .A1(In_3[9]), .A2(n34), .Z(S[9]) );
  CKXOR2D1 U2 ( .A1(In_3[8]), .A2(n33), .Z(S[8]) );
  CKXOR2D1 U3 ( .A1(In_3[7]), .A2(n32), .Z(S[7]) );
  CKXOR2D1 U4 ( .A1(In_3[6]), .A2(n31), .Z(S[6]) );
  CKXOR2D1 U5 ( .A1(In_3[5]), .A2(n30), .Z(S[5]) );
  CKXOR2D1 U6 ( .A1(In_3[4]), .A2(n29), .Z(S[4]) );
  CKXOR2D1 U7 ( .A1(In_3[3]), .A2(n28), .Z(S[3]) );
  CKXOR2D1 U8 ( .A1(In_3[2]), .A2(n27), .Z(S[2]) );
  CKXOR2D1 U9 ( .A1(In_3[1]), .A2(n26), .Z(S[1]) );
  CKXOR2D1 U11 ( .A1(In_3[15]), .A2(n24), .Z(S[15]) );
  CKXOR2D1 U12 ( .A1(In_3[14]), .A2(n23), .Z(S[14]) );
  CKXOR2D1 U13 ( .A1(In_3[13]), .A2(n22), .Z(S[13]) );
  CKXOR2D1 U14 ( .A1(In_3[12]), .A2(n21), .Z(S[12]) );
  CKXOR2D1 U15 ( .A1(In_3[11]), .A2(n20), .Z(S[11]) );
  CKXOR2D1 U16 ( .A1(In_3[10]), .A2(n19), .Z(S[10]) );
  CKXOR2D1 U17 ( .A1(In_3[0]), .A2(In_1[0]), .Z(S[0]) );
  CKXOR2D1 U19 ( .A1(In_2[9]), .A2(In_1[9]), .Z(n34) );
  CKXOR2D1 U21 ( .A1(In_2[8]), .A2(In_1[8]), .Z(n33) );
  CKXOR2D1 U23 ( .A1(In_2[7]), .A2(In_1[7]), .Z(n32) );
  CKXOR2D1 U25 ( .A1(In_2[6]), .A2(In_1[6]), .Z(n31) );
  CKXOR2D1 U27 ( .A1(In_2[5]), .A2(In_1[5]), .Z(n30) );
  CKXOR2D1 U29 ( .A1(In_2[4]), .A2(In_1[4]), .Z(n29) );
  CKXOR2D1 U31 ( .A1(In_2[3]), .A2(In_1[3]), .Z(n28) );
  CKXOR2D1 U33 ( .A1(In_2[2]), .A2(In_1[2]), .Z(n27) );
  CKXOR2D1 U35 ( .A1(In_2[1]), .A2(In_1[1]), .Z(n26) );
  CKXOR2D1 U39 ( .A1(In_2[15]), .A2(In_1[15]), .Z(n24) );
  CKXOR2D1 U41 ( .A1(In_2[14]), .A2(In_1[14]), .Z(n23) );
  CKXOR2D1 U43 ( .A1(In_2[13]), .A2(In_1[13]), .Z(n22) );
  CKXOR2D1 U45 ( .A1(In_2[12]), .A2(In_1[12]), .Z(n21) );
  CKXOR2D1 U47 ( .A1(In_2[11]), .A2(In_1[11]), .Z(n20) );
  CKXOR2D1 U49 ( .A1(In_2[10]), .A2(In_1[10]), .Z(n19) );
  AO22D0 U20 ( .A1(In_2[10]), .A2(In_1[10]), .B1(n19), .B2(In_3[10]), .Z(C[10]) );
  AO22D0 U22 ( .A1(In_2[11]), .A2(In_1[11]), .B1(n20), .B2(In_3[11]), .Z(C[11]) );
  AO22D0 U24 ( .A1(In_2[12]), .A2(In_1[12]), .B1(n21), .B2(In_3[12]), .Z(C[12]) );
  AO22D0 U26 ( .A1(In_2[13]), .A2(In_1[13]), .B1(n22), .B2(In_3[13]), .Z(C[13]) );
  AO22D0 U28 ( .A1(In_2[14]), .A2(In_1[14]), .B1(n23), .B2(In_3[14]), .Z(C[14]) );
  AO22D0 U30 ( .A1(In_2[9]), .A2(In_1[9]), .B1(n34), .B2(In_3[9]), .Z(C[9]) );
  AO22D0 U32 ( .A1(In_2[2]), .A2(In_1[2]), .B1(n27), .B2(In_3[2]), .Z(C[2]) );
  AO22D0 U34 ( .A1(In_2[15]), .A2(In_1[15]), .B1(n24), .B2(In_3[15]), .Z(C[15]) );
  AO22D0 U36 ( .A1(In_2[5]), .A2(In_1[5]), .B1(n30), .B2(In_3[5]), .Z(C[5]) );
  AO22D0 U38 ( .A1(In_2[6]), .A2(In_1[6]), .B1(n31), .B2(In_3[6]), .Z(C[6]) );
  AO22D0 U40 ( .A1(In_2[3]), .A2(In_1[3]), .B1(n28), .B2(In_3[3]), .Z(C[3]) );
  AO22D0 U42 ( .A1(In_2[4]), .A2(In_1[4]), .B1(n29), .B2(In_3[4]), .Z(C[4]) );
  AO22D0 U44 ( .A1(In_2[7]), .A2(In_1[7]), .B1(n32), .B2(In_3[7]), .Z(C[7]) );
  AO22D0 U46 ( .A1(In_2[8]), .A2(In_1[8]), .B1(n33), .B2(In_3[8]), .Z(C[8]) );
  AO22D0 U50 ( .A1(In_2[1]), .A2(In_1[1]), .B1(n26), .B2(In_3[1]), .Z(C[1]) );
  XOR3D0 U10 ( .A1(In_1[16]), .A2(In_3[16]), .A3(In_2[16]), .Z(S[16]) );
  CKND1 U18 ( .I(n35), .ZN(C[0]) );
  CKND2D0 U37 ( .A1(In_3[0]), .A2(In_1[0]), .ZN(n35) );
endmodule


module CSA3_2_Array_WIDTH17_1 ( In_1, In_2, In_3, S, C );
  input [16:0] In_1;
  input [16:0] In_2;
  input [16:0] In_3;
  output [16:0] S;
  output [16:0] C;
  wire   In_1_0_, n19, n20, n21, n22, n23, n24, n26, n27, n28, n29, n30, n31,
         n32, n33, n34;
  assign S[0] = In_1_0_;
  assign In_1_0_ = In_1[0];

  CKXOR2D1 U1 ( .A1(In_3[9]), .A2(n34), .Z(S[9]) );
  CKXOR2D1 U2 ( .A1(In_3[8]), .A2(n33), .Z(S[8]) );
  CKXOR2D1 U3 ( .A1(In_3[7]), .A2(n32), .Z(S[7]) );
  CKXOR2D1 U4 ( .A1(In_3[6]), .A2(n31), .Z(S[6]) );
  CKXOR2D1 U5 ( .A1(In_3[5]), .A2(n30), .Z(S[5]) );
  CKXOR2D1 U6 ( .A1(In_3[4]), .A2(n29), .Z(S[4]) );
  CKXOR2D1 U7 ( .A1(In_3[3]), .A2(n28), .Z(S[3]) );
  CKXOR2D1 U8 ( .A1(In_3[2]), .A2(n27), .Z(S[2]) );
  CKXOR2D1 U9 ( .A1(In_3[1]), .A2(n26), .Z(S[1]) );
  CKXOR2D1 U11 ( .A1(In_3[15]), .A2(n24), .Z(S[15]) );
  CKXOR2D1 U12 ( .A1(In_3[14]), .A2(n23), .Z(S[14]) );
  CKXOR2D1 U13 ( .A1(In_3[13]), .A2(n22), .Z(S[13]) );
  CKXOR2D1 U14 ( .A1(In_3[12]), .A2(n21), .Z(S[12]) );
  CKXOR2D1 U15 ( .A1(In_3[11]), .A2(n20), .Z(S[11]) );
  CKXOR2D1 U16 ( .A1(In_3[10]), .A2(n19), .Z(S[10]) );
  CKXOR2D1 U19 ( .A1(In_2[9]), .A2(In_1[9]), .Z(n34) );
  CKXOR2D1 U21 ( .A1(In_2[8]), .A2(In_1[8]), .Z(n33) );
  CKXOR2D1 U23 ( .A1(In_2[7]), .A2(In_1[7]), .Z(n32) );
  CKXOR2D1 U25 ( .A1(In_2[6]), .A2(In_1[6]), .Z(n31) );
  CKXOR2D1 U27 ( .A1(In_2[5]), .A2(In_1[5]), .Z(n30) );
  CKXOR2D1 U29 ( .A1(In_2[4]), .A2(In_1[4]), .Z(n29) );
  CKXOR2D1 U31 ( .A1(In_2[3]), .A2(In_1[3]), .Z(n28) );
  CKXOR2D1 U33 ( .A1(In_2[2]), .A2(In_1[2]), .Z(n27) );
  CKXOR2D1 U35 ( .A1(In_2[1]), .A2(In_1[1]), .Z(n26) );
  CKXOR2D1 U39 ( .A1(In_2[15]), .A2(In_1[15]), .Z(n24) );
  CKXOR2D1 U41 ( .A1(In_2[14]), .A2(In_1[14]), .Z(n23) );
  CKXOR2D1 U43 ( .A1(In_2[13]), .A2(In_1[13]), .Z(n22) );
  CKXOR2D1 U45 ( .A1(In_2[12]), .A2(In_1[12]), .Z(n21) );
  CKXOR2D1 U47 ( .A1(In_2[11]), .A2(In_1[11]), .Z(n20) );
  CKXOR2D1 U49 ( .A1(In_2[10]), .A2(In_1[10]), .Z(n19) );
  AO22D0 U20 ( .A1(In_2[15]), .A2(In_1[15]), .B1(n24), .B2(In_3[15]), .Z(C[15]) );
  AO22D0 U22 ( .A1(In_2[9]), .A2(In_1[9]), .B1(n34), .B2(In_3[9]), .Z(C[9]) );
  AO22D0 U24 ( .A1(In_2[10]), .A2(In_1[10]), .B1(n19), .B2(In_3[10]), .Z(C[10]) );
  AO22D0 U26 ( .A1(In_2[11]), .A2(In_1[11]), .B1(n20), .B2(In_3[11]), .Z(C[11]) );
  AO22D0 U28 ( .A1(In_2[12]), .A2(In_1[12]), .B1(n21), .B2(In_3[12]), .Z(C[12]) );
  AO22D0 U30 ( .A1(In_2[13]), .A2(In_1[13]), .B1(n22), .B2(In_3[13]), .Z(C[13]) );
  AO22D0 U32 ( .A1(In_2[14]), .A2(In_1[14]), .B1(n23), .B2(In_3[14]), .Z(C[14]) );
  AO22D0 U34 ( .A1(In_2[8]), .A2(In_1[8]), .B1(n33), .B2(In_3[8]), .Z(C[8]) );
  AO22D0 U36 ( .A1(In_2[3]), .A2(In_1[3]), .B1(n28), .B2(In_3[3]), .Z(C[3]) );
  AO22D0 U38 ( .A1(In_2[4]), .A2(In_1[4]), .B1(n29), .B2(In_3[4]), .Z(C[4]) );
  AO22D0 U40 ( .A1(In_2[5]), .A2(In_1[5]), .B1(n30), .B2(In_3[5]), .Z(C[5]) );
  AO22D0 U42 ( .A1(In_2[6]), .A2(In_1[6]), .B1(n31), .B2(In_3[6]), .Z(C[6]) );
  AO22D0 U44 ( .A1(In_2[7]), .A2(In_1[7]), .B1(n32), .B2(In_3[7]), .Z(C[7]) );
  AO22D0 U48 ( .A1(In_2[2]), .A2(In_1[2]), .B1(n27), .B2(In_3[2]), .Z(C[2]) );
  AO22D0 U50 ( .A1(In_2[1]), .A2(In_1[1]), .B1(n26), .B2(In_3[1]), .Z(C[1]) );
  XOR3D0 U10 ( .A1(In_1[16]), .A2(In_3[16]), .A3(In_2[16]), .Z(S[16]) );
endmodule


module Mantissa_Div_L4_Kec_MANTISSA_WIDTH15_DW01_add_0 ( A, B, CI, SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   A_1_;
  wire   [16:3] carry;
  assign SUM[1] = A_1_;
  assign A_1_ = A[1];

  FA1D0 U1_2 ( .A(A[2]), .B(B[2]), .CI(1'b0), .CO(carry[3]), .S(SUM[2]) );
  FA1D0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1D0 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FA1D0 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA1D0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA1D0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1D0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1D0 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
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
  XOR3D1 U1_16 ( .A1(A[16]), .A2(B[16]), .A3(carry[16]), .Z(SUM[16]) );
endmodule


module Mantissa_Div_L4_Kec_MANTISSA_WIDTH15_DW01_sub_0_DW01_sub_1 ( A, B, CI, 
        DIFF, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17;
  wire   [15:3] carry;

  FA1D0 U2_14 ( .A(A[14]), .B(n1), .CI(carry[14]), .CO(carry[15]), .S(DIFF[14]) );
  FA1D0 U2_13 ( .A(A[13]), .B(n2), .CI(carry[13]), .CO(carry[14]), .S(DIFF[13]) );
  FA1D0 U2_11 ( .A(A[11]), .B(n4), .CI(carry[11]), .CO(carry[12]), .S(DIFF[11]) );
  FA1D0 U2_12 ( .A(A[12]), .B(n3), .CI(carry[12]), .CO(carry[13]), .S(DIFF[12]) );
  FA1D0 U2_10 ( .A(A[10]), .B(n5), .CI(carry[10]), .CO(carry[11]), .S(DIFF[10]) );
  FA1D0 U2_9 ( .A(A[9]), .B(n6), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9]) );
  FA1D0 U2_6 ( .A(A[6]), .B(n9), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  FA1D0 U2_5 ( .A(A[5]), .B(n10), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  FA1D0 U2_8 ( .A(A[8]), .B(n7), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  FA1D0 U2_7 ( .A(A[7]), .B(n8), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  FA1D0 U2_4 ( .A(A[4]), .B(n11), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FA1D0 U2_3 ( .A(A[3]), .B(n12), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  INVD1 U1 ( .I(B[3]), .ZN(n12) );
  INVD1 U2 ( .I(B[4]), .ZN(n11) );
  INVD1 U3 ( .I(B[7]), .ZN(n8) );
  INVD1 U4 ( .I(B[8]), .ZN(n7) );
  INVD1 U5 ( .I(B[5]), .ZN(n10) );
  INVD1 U6 ( .I(B[6]), .ZN(n9) );
  INVD1 U7 ( .I(B[9]), .ZN(n6) );
  INVD1 U8 ( .I(B[10]), .ZN(n5) );
  INVD1 U9 ( .I(B[12]), .ZN(n3) );
  INVD1 U10 ( .I(B[11]), .ZN(n4) );
  INVD1 U11 ( .I(B[13]), .ZN(n2) );
  INVD1 U12 ( .I(A[1]), .ZN(n13) );
  INVD1 U13 ( .I(B[14]), .ZN(n1) );
  MOAI22D0 U14 ( .A1(B[2]), .A2(n14), .B1(n15), .B2(A[2]), .ZN(carry[3]) );
  NR2D0 U15 ( .A1(A[2]), .A2(n15), .ZN(n14) );
  OAI22D0 U16 ( .A1(n16), .A2(n13), .B1(B[1]), .B2(n17), .ZN(n15) );
  AN2D0 U17 ( .A1(n16), .A2(n13), .Z(n17) );
  INR2D0 U18 ( .A1(B[0]), .B1(A[0]), .ZN(n16) );
  CKND0 U19 ( .I(carry[15]), .ZN(DIFF[15]) );
endmodule


module Mantissa_Div_L4_Kec_MANTISSA_WIDTH15_DW01_sub_1_DW01_sub_2 ( A, B, CI, 
        DIFF, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] DIFF;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15;
  wire   [15:1] carry;

  FA1D0 U2_14 ( .A(A[14]), .B(n2), .CI(carry[14]), .CO(carry[15]), .S(DIFF[14]) );
  FA1D0 U2_2 ( .A(A[2]), .B(n14), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  FA1D0 U2_1 ( .A(A[1]), .B(n15), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  FA1D0 U2_13 ( .A(A[13]), .B(n3), .CI(carry[13]), .CO(carry[14]), .S(DIFF[13]) );
  FA1D0 U2_12 ( .A(A[12]), .B(n4), .CI(carry[12]), .CO(carry[13]), .S(DIFF[12]) );
  FA1D0 U2_11 ( .A(A[11]), .B(n5), .CI(carry[11]), .CO(carry[12]), .S(DIFF[11]) );
  FA1D0 U2_10 ( .A(A[10]), .B(n6), .CI(carry[10]), .CO(carry[11]), .S(DIFF[10]) );
  FA1D0 U2_9 ( .A(A[9]), .B(n7), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9]) );
  FA1D0 U2_8 ( .A(A[8]), .B(n8), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  FA1D0 U2_7 ( .A(A[7]), .B(n9), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  FA1D0 U2_6 ( .A(A[6]), .B(n10), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  FA1D0 U2_5 ( .A(A[5]), .B(n11), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  FA1D0 U2_4 ( .A(A[4]), .B(n12), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FA1D0 U2_3 ( .A(A[3]), .B(n13), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  INVD1 U1 ( .I(B[3]), .ZN(n13) );
  INVD1 U2 ( .I(B[4]), .ZN(n12) );
  INVD1 U3 ( .I(B[5]), .ZN(n11) );
  INVD1 U4 ( .I(B[6]), .ZN(n10) );
  INVD1 U5 ( .I(B[7]), .ZN(n9) );
  INVD1 U6 ( .I(B[8]), .ZN(n8) );
  INVD1 U7 ( .I(B[9]), .ZN(n7) );
  INVD1 U8 ( .I(B[10]), .ZN(n6) );
  INVD1 U9 ( .I(B[11]), .ZN(n5) );
  INVD1 U10 ( .I(B[12]), .ZN(n4) );
  INVD1 U11 ( .I(B[13]), .ZN(n3) );
  INVD1 U13 ( .I(B[1]), .ZN(n15) );
  INVD1 U15 ( .I(B[2]), .ZN(n14) );
  INVD1 U16 ( .I(B[14]), .ZN(n2) );
  CKND0 U19 ( .I(carry[15]), .ZN(DIFF[15]) );
  CKXOR2D0 U12 ( .A1(A[0]), .A2(B[0]), .Z(DIFF[0]) );
  IND2D0 U14 ( .A1(A[0]), .B1(B[0]), .ZN(carry[1]) );
endmodule


module Mantissa_Div_L4_Kec_MANTISSA_WIDTH15 ( Mantissa_X, Mantissa_Y, 
        Mantissa_Out, Shift );
  input [14:0] Mantissa_X;
  input [14:0] Mantissa_Y;
  output [14:0] Mantissa_Out;
  output Shift;
  wire   n13, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n81, n82, n83, n84, n85, n86, n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174;
  wire   [15:0] x_sub_y;
  wire   [15:3] y_sub_x;
  wire   [16:0] L1_p2;
  wire   [16:0] L2_p;
  wire   [12:0] L3_p1;
  wire   [10:0] L3_p2;
  wire   [11:0] L4_p1;
  wire   [9:0] L4_p2;
  wire   [16:0] A11S;
  wire   [15:0] A11C;
  wire   [16:0] A12S;
  wire   [15:0] A12C;
  wire   [16:0] A21S;
  wire   [15:0] A21C;
  wire   [16:0] A22S;
  wire   [15:0] A22C;
  wire   [16:0] A31S;
  wire   [15:0] A31C;
  wire   [16:0] A41S;
  wire   [15:1] A41C;
  wire   [15:1] Res;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10;

  CSA3_2_Array_WIDTH17_0 Stage_1_1 ( .In_1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .In_2({x_sub_y[15], x_sub_y}), .In_3({L1_p2[16], L1_p2[16], L1_p2[16], 
        L1_p2[13:0]}), .S(A11S), .C({SYNOPSYS_UNCONNECTED__0, A11C}) );
  CSA3_2_Array_WIDTH17_5 Stage_1_2 ( .In_1({L2_p[16], L2_p[16], L2_p[16], 
        L2_p[16], L2_p[12:0]}), .In_2({L3_p1[12], L3_p1[12], L3_p1[12], 
        L3_p1[12], L3_p1}), .In_3({L3_p2[10], L3_p2[10], L3_p2[10], L3_p2[10], 
        L3_p2[10], L3_p2[10], L3_p2}), .S(A12S), .C({SYNOPSYS_UNCONNECTED__1, 
        A12C}) );
  CSA3_2_Array_WIDTH17_4 Stage_2_1 ( .In_1(A11S), .In_2({A11C, 1'b0}), .In_3(
        A12S), .S(A21S), .C({SYNOPSYS_UNCONNECTED__2, A21C}) );
  CSA3_2_Array_WIDTH17_3 Stage_2_2 ( .In_1({A12C, 1'b0}), .In_2({L4_p1[11], 
        L4_p1[11], L4_p1[11], L4_p1[11], L4_p1[11], L4_p1}), .In_3({L4_p2[9], 
        L4_p2[9], L4_p2[9], L4_p2[9], L4_p2[9], L4_p2[9], L4_p2[9], L4_p2}), 
        .S(A22S), .C({SYNOPSYS_UNCONNECTED__3, A22C}) );
  CSA3_2_Array_WIDTH17_2 Stage_3_1 ( .In_1(A21S), .In_2({A21C, 1'b0}), .In_3(
        A22S), .S(A31S), .C({SYNOPSYS_UNCONNECTED__4, A31C}) );
  CSA3_2_Array_WIDTH17_1 Stage_4_1 ( .In_1(A31S), .In_2({A31C, 1'b0}), .In_3({
        A22C, 1'b0}), .S(A41S), .C({SYNOPSYS_UNCONNECTED__5, A41C, 
        SYNOPSYS_UNCONNECTED__6}) );
  Mantissa_Div_L4_Kec_MANTISSA_WIDTH15_DW01_add_0 add_205 ( .A(A41S), .B({A41C, 
        1'b0, n13}), .CI(n13), .SUM({Shift, Res, SYNOPSYS_UNCONNECTED__7}) );
  Mantissa_Div_L4_Kec_MANTISSA_WIDTH15_DW01_sub_0_DW01_sub_1 sub_18 ( .A({n13, 
        Mantissa_Y}), .B({n13, Mantissa_X}), .CI(n13), .DIFF({y_sub_x, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10}) );
  Mantissa_Div_L4_Kec_MANTISSA_WIDTH15_DW01_sub_1_DW01_sub_2 sub_17 ( .A({n13, 
        Mantissa_X}), .B({n13, Mantissa_Y}), .CI(n13), .DIFF(x_sub_y) );
  INVD1 U3 ( .I(n95), .ZN(n124) );
  OAI32D1 U4 ( .A1(n129), .A2(n124), .A3(n117), .B1(n136), .B2(n95), .ZN(
        L3_p2[10]) );
  OAI21D1 U5 ( .A1(n61), .A2(n60), .B(n59), .ZN(L4_p1[11]) );
  NR3D0 U6 ( .A1(n62), .A2(n116), .A3(n137), .ZN(n72) );
  OAI222D0 U8 ( .A1(n145), .A2(n65), .B1(n66), .B2(n143), .C1(n140), .C2(n144), 
        .ZN(Mantissa_Out[11]) );
  OAI222D0 U9 ( .A1(n65), .A2(n148), .B1(n66), .B2(n146), .C1(n147), .C2(n140), 
        .ZN(Mantissa_Out[8]) );
  OAI222D0 U10 ( .A1(n65), .A2(n147), .B1(n66), .B2(n145), .C1(n146), .C2(n140), .ZN(Mantissa_Out[9]) );
  OAI222D0 U11 ( .A1(n65), .A2(n146), .B1(n66), .B2(n144), .C1(n145), .C2(n140), .ZN(Mantissa_Out[10]) );
  OAI222D0 U12 ( .A1(n65), .A2(n154), .B1(n66), .B2(n151), .C1(n140), .C2(n153), .ZN(Mantissa_Out[4]) );
  OAI222D0 U13 ( .A1(n65), .A2(n153), .B1(n66), .B2(n149), .C1(n140), .C2(n151), .ZN(Mantissa_Out[5]) );
  OAI222D0 U14 ( .A1(n65), .A2(n151), .B1(n66), .B2(n148), .C1(n140), .C2(n149), .ZN(Mantissa_Out[6]) );
  OAI222D0 U15 ( .A1(n65), .A2(n149), .B1(n66), .B2(n147), .C1(n140), .C2(n148), .ZN(Mantissa_Out[7]) );
  OAI222D0 U16 ( .A1(n65), .A2(n144), .B1(n66), .B2(n142), .C1(n140), .C2(n143), .ZN(Mantissa_Out[12]) );
  ND2D1 U17 ( .A1(n141), .A2(n140), .ZN(n66) );
  OAI22D1 U18 ( .A1(n140), .A2(n142), .B1(n65), .B2(n143), .ZN(
        Mantissa_Out[13]) );
  OAI22D1 U19 ( .A1(n65), .A2(n142), .B1(n141), .B2(n140), .ZN(
        Mantissa_Out[14]) );
  ND2D1 U20 ( .A1(Res[15]), .A2(n140), .ZN(n65) );
  INVD1 U21 ( .I(Shift), .ZN(n140) );
  OAI222D0 U22 ( .A1(n65), .A2(n155), .B1(n66), .B2(n153), .C1(n140), .C2(n154), .ZN(Mantissa_Out[3]) );
  INVD1 U23 ( .I(Res[15]), .ZN(n141) );
  INVD1 U24 ( .I(Res[14]), .ZN(n142) );
  INVD1 U25 ( .I(n98), .ZN(n120) );
  INVD1 U26 ( .I(Res[13]), .ZN(n143) );
  INVD1 U27 ( .I(Res[12]), .ZN(n144) );
  INVD1 U28 ( .I(Res[11]), .ZN(n145) );
  INVD1 U29 ( .I(Res[10]), .ZN(n146) );
  INVD1 U30 ( .I(Res[9]), .ZN(n147) );
  INVD1 U31 ( .I(Res[8]), .ZN(n148) );
  INVD1 U32 ( .I(Res[7]), .ZN(n149) );
  INVD1 U33 ( .I(Res[6]), .ZN(n151) );
  INVD1 U34 ( .I(Res[5]), .ZN(n153) );
  INVD1 U35 ( .I(Res[4]), .ZN(n154) );
  INVD1 U36 ( .I(y_sub_x[15]), .ZN(n129) );
  INVD1 U37 ( .I(x_sub_y[15]), .ZN(n136) );
  OAI222D0 U38 ( .A1(n65), .A2(n156), .B1(n66), .B2(n154), .C1(n140), .C2(n155), .ZN(Mantissa_Out[2]) );
  OAI221D1 U39 ( .A1(n129), .A2(n67), .B1(n136), .B2(n171), .C(n68), .ZN(
        L4_p2[9]) );
  OA22D0 U40 ( .A1(n70), .A2(n129), .B1(n69), .B2(n136), .Z(n68) );
  OAI221D0 U41 ( .A1(n67), .A2(n88), .B1(n171), .B2(n150), .C(n68), .ZN(
        L4_p2[8]) );
  INVD1 U42 ( .I(n40), .ZN(n64) );
  INVD1 U43 ( .I(n19), .ZN(n87) );
  INVD1 U44 ( .I(n67), .ZN(n173) );
  INVD1 U45 ( .I(n72), .ZN(n171) );
  INVD1 U46 ( .I(Res[3]), .ZN(n155) );
  INVD1 U47 ( .I(n61), .ZN(n89) );
  INVD1 U48 ( .I(n58), .ZN(n90) );
  OAI222D0 U49 ( .A1(n65), .A2(n157), .B1(n66), .B2(n155), .C1(n140), .C2(n156), .ZN(Mantissa_Out[1]) );
  INVD1 U50 ( .I(y_sub_x[14]), .ZN(n88) );
  INVD1 U51 ( .I(x_sub_y[8]), .ZN(n131) );
  INVD1 U52 ( .I(x_sub_y[10]), .ZN(n133) );
  INVD1 U53 ( .I(x_sub_y[11]), .ZN(n134) );
  INVD1 U54 ( .I(x_sub_y[9]), .ZN(n132) );
  INVD1 U55 ( .I(x_sub_y[12]), .ZN(n135) );
  INVD1 U56 ( .I(y_sub_x[8]), .ZN(n127) );
  INVD1 U57 ( .I(y_sub_x[6]), .ZN(n126) );
  INVD1 U58 ( .I(y_sub_x[13]), .ZN(n128) );
  INVD1 U60 ( .I(x_sub_y[6]), .ZN(n130) );
  OAI222D0 U61 ( .A1(n85), .A2(n128), .B1(n152), .B2(n172), .C1(n137), .C2(
        n135), .ZN(L2_p[10]) );
  INVD1 U62 ( .I(y_sub_x[5]), .ZN(n125) );
  OAI222D0 U63 ( .A1(n85), .A2(n88), .B1(n150), .B2(n172), .C1(n137), .C2(n152), .ZN(L2_p[11]) );
  OAI222D0 U64 ( .A1(n85), .A2(n167), .B1(n132), .B2(n172), .C1(n137), .C2(
        n131), .ZN(L2_p[6]) );
  OAI222D0 U65 ( .A1(n85), .A2(n166), .B1(n133), .B2(n172), .C1(n137), .C2(
        n132), .ZN(L2_p[7]) );
  OAI222D0 U66 ( .A1(n85), .A2(n165), .B1(n134), .B2(n172), .C1(n137), .C2(
        n133), .ZN(L2_p[8]) );
  OAI222D0 U67 ( .A1(n85), .A2(n168), .B1(n159), .B2(n172), .C1(n137), .C2(
        n130), .ZN(L2_p[4]) );
  INVD1 U68 ( .I(y_sub_x[7]), .ZN(n168) );
  INVD1 U69 ( .I(y_sub_x[9]), .ZN(n167) );
  INVD1 U70 ( .I(y_sub_x[10]), .ZN(n166) );
  INVD1 U71 ( .I(y_sub_x[11]), .ZN(n165) );
  OAI222D0 U72 ( .A1(n85), .A2(n164), .B1(n135), .B2(n172), .C1(n137), .C2(
        n134), .ZN(L2_p[9]) );
  INVD1 U73 ( .I(y_sub_x[12]), .ZN(n164) );
  OAI222D0 U74 ( .A1(n85), .A2(n127), .B1(n131), .B2(n172), .C1(n137), .C2(
        n159), .ZN(L2_p[5]) );
  INVD1 U75 ( .I(x_sub_y[13]), .ZN(n152) );
  AOI22D1 U76 ( .A1(y_sub_x[15]), .A2(n174), .B1(x_sub_y[15]), .B2(n84), .ZN(
        n86) );
  OAI21D1 U77 ( .A1(n137), .A2(n150), .B(n86), .ZN(L2_p[12]) );
  OAI222D0 U78 ( .A1(n85), .A2(n126), .B1(n130), .B2(n172), .C1(n137), .C2(
        n160), .ZN(L2_p[3]) );
  INVD1 U79 ( .I(x_sub_y[14]), .ZN(n150) );
  INVD1 U80 ( .I(x_sub_y[7]), .ZN(n159) );
  OAI221D0 U81 ( .A1(n69), .A2(n132), .B1(n70), .B2(n167), .C(n77), .ZN(
        L4_p2[2]) );
  AOI22D1 U82 ( .A1(y_sub_x[8]), .A2(n173), .B1(x_sub_y[8]), .B2(n72), .ZN(n77) );
  OAI221D0 U83 ( .A1(n69), .A2(n133), .B1(n70), .B2(n166), .C(n76), .ZN(
        L4_p2[3]) );
  AOI22D1 U84 ( .A1(y_sub_x[9]), .A2(n173), .B1(x_sub_y[9]), .B2(n72), .ZN(n76) );
  OAI221D0 U85 ( .A1(n69), .A2(n134), .B1(n70), .B2(n165), .C(n75), .ZN(
        L4_p2[4]) );
  AOI22D1 U86 ( .A1(y_sub_x[10]), .A2(n173), .B1(x_sub_y[10]), .B2(n72), .ZN(
        n75) );
  OAI221D0 U87 ( .A1(n69), .A2(n135), .B1(n70), .B2(n164), .C(n74), .ZN(
        L4_p2[5]) );
  AOI22D1 U88 ( .A1(y_sub_x[11]), .A2(n173), .B1(x_sub_y[11]), .B2(n72), .ZN(
        n74) );
  OAI221D0 U89 ( .A1(n69), .A2(n152), .B1(n70), .B2(n128), .C(n73), .ZN(
        L4_p2[6]) );
  AOI22D1 U90 ( .A1(y_sub_x[12]), .A2(n173), .B1(x_sub_y[12]), .B2(n72), .ZN(
        n73) );
  OAI222D0 U91 ( .A1(n125), .A2(n85), .B1(n160), .B2(n172), .C1(n161), .C2(
        n137), .ZN(L2_p[2]) );
  OAI221D0 U92 ( .A1(n69), .A2(n150), .B1(n70), .B2(n88), .C(n71), .ZN(
        L4_p2[7]) );
  AOI22D1 U93 ( .A1(y_sub_x[13]), .A2(n173), .B1(x_sub_y[13]), .B2(n72), .ZN(
        n71) );
  OAI21D1 U94 ( .A1(n137), .A2(n136), .B(n86), .ZN(L2_p[16]) );
  INVD1 U95 ( .I(x_sub_y[5]), .ZN(n160) );
  OAI221D0 U96 ( .A1(n69), .A2(n131), .B1(n70), .B2(n127), .C(n78), .ZN(
        L4_p2[1]) );
  AOI22D1 U97 ( .A1(y_sub_x[7]), .A2(n173), .B1(x_sub_y[7]), .B2(n72), .ZN(n78) );
  INVD1 U98 ( .I(n91), .ZN(n117) );
  OAI222D0 U99 ( .A1(n169), .A2(n85), .B1(n161), .B2(n172), .C1(n162), .C2(
        n137), .ZN(L2_p[1]) );
  INVD1 U100 ( .I(y_sub_x[4]), .ZN(n169) );
  INVD1 U101 ( .I(x_sub_y[4]), .ZN(n161) );
  INVD1 U102 ( .I(n99), .ZN(n123) );
  NR2D1 U103 ( .A1(n136), .A2(Mantissa_Y[14]), .ZN(L1_p2[16]) );
  INVD1 U104 ( .I(n109), .ZN(n122) );
  NR2D1 U105 ( .A1(Mantissa_Y[14]), .A2(n152), .ZN(L1_p2[12]) );
  NR2D1 U106 ( .A1(Mantissa_Y[14]), .A2(n135), .ZN(L1_p2[11]) );
  NR2D1 U107 ( .A1(Mantissa_Y[14]), .A2(n131), .ZN(L1_p2[7]) );
  NR2D1 U108 ( .A1(Mantissa_Y[14]), .A2(n134), .ZN(L1_p2[10]) );
  NR2D1 U109 ( .A1(Mantissa_Y[14]), .A2(n132), .ZN(L1_p2[8]) );
  NR2D1 U110 ( .A1(Mantissa_Y[14]), .A2(n133), .ZN(L1_p2[9]) );
  NR2D1 U111 ( .A1(Mantissa_Y[14]), .A2(n150), .ZN(L1_p2[13]) );
  NR2D1 U112 ( .A1(Mantissa_Y[14]), .A2(n159), .ZN(L1_p2[6]) );
  OAI221D0 U113 ( .A1(n69), .A2(n159), .B1(n70), .B2(n168), .C(n79), .ZN(
        L4_p2[0]) );
  AOI22D1 U114 ( .A1(y_sub_x[6]), .A2(n173), .B1(x_sub_y[6]), .B2(n72), .ZN(
        n79) );
  OAI222D0 U115 ( .A1(n170), .A2(n85), .B1(n162), .B2(n172), .C1(n163), .C2(
        n137), .ZN(L2_p[0]) );
  INVD1 U116 ( .I(y_sub_x[3]), .ZN(n170) );
  INVD1 U117 ( .I(x_sub_y[3]), .ZN(n162) );
  NR2D1 U118 ( .A1(Mantissa_Y[14]), .A2(n130), .ZN(L1_p2[5]) );
  INR2D1 U121 ( .A1(n3), .B1(n116), .ZN(n42) );
  NR2D1 U122 ( .A1(Mantissa_Y[14]), .A2(n160), .ZN(L1_p2[4]) );
  NR2D1 U123 ( .A1(Mantissa_Y[14]), .A2(n161), .ZN(L1_p2[3]) );
  NR2D1 U124 ( .A1(n19), .A2(n62), .ZN(n53) );
  NR2D1 U125 ( .A1(Mantissa_Y[14]), .A2(n162), .ZN(L1_p2[2]) );
  INVD1 U126 ( .I(x_sub_y[2]), .ZN(n163) );
  NR2D1 U127 ( .A1(Mantissa_Y[14]), .A2(n163), .ZN(L1_p2[1]) );
  INVD1 U128 ( .I(n84), .ZN(n172) );
  ND2D1 U129 ( .A1(Mantissa_Y[14]), .A2(n91), .ZN(n94) );
  ND3D1 U130 ( .A1(n139), .A2(n118), .A3(n116), .ZN(n93) );
  INR2D1 U131 ( .A1(x_sub_y[1]), .B1(Mantissa_Y[14]), .ZN(L1_p2[0]) );
  INVD1 U132 ( .I(n49), .ZN(n63) );
  ND3D1 U133 ( .A1(n62), .A2(n116), .A3(n174), .ZN(n67) );
  INVD1 U134 ( .I(n85), .ZN(n174) );
  NR2D1 U135 ( .A1(n84), .A2(n174), .ZN(n82) );
  OA22D0 U136 ( .A1(n81), .A2(n137), .B1(n82), .B2(n83), .Z(n70) );
  OA22D0 U137 ( .A1(n83), .A2(n137), .B1(n82), .B2(n81), .Z(n69) );
  INVD1 U138 ( .I(Res[2]), .ZN(n156) );
  INVD1 U139 ( .I(Mantissa_Y[12]), .ZN(n116) );
  INVD1 U140 ( .I(Mantissa_Y[13]), .ZN(n118) );
  ND2D1 U141 ( .A1(Mantissa_Y[13]), .A2(n139), .ZN(n57) );
  INVD1 U142 ( .I(Mantissa_Y[11]), .ZN(n62) );
  NR2D1 U143 ( .A1(n139), .A2(Mantissa_Y[13]), .ZN(n84) );
  ND2D1 U146 ( .A1(Mantissa_Y[13]), .A2(n139), .ZN(n85) );
  ND2D1 U147 ( .A1(Mantissa_Y[11]), .A2(n116), .ZN(n83) );
  ND2D1 U148 ( .A1(Mantissa_Y[12]), .A2(n62), .ZN(n81) );
  INVD1 U149 ( .I(Res[1]), .ZN(n157) );
  OAI222D0 U150 ( .A1(n158), .A2(n65), .B1(n156), .B2(n66), .C1(n157), .C2(
        n140), .ZN(Mantissa_Out[0]) );
  INVD1 U151 ( .I(A41S[0]), .ZN(n158) );
  TIEL U154 ( .ZN(n13) );
  CKND2D0 U155 ( .A1(n139), .A2(n118), .ZN(n19) );
  CKND2D0 U156 ( .A1(Mantissa_Y[14]), .A2(n118), .ZN(n40) );
  AOI222D0 U157 ( .A1(y_sub_x[4]), .A2(n87), .B1(y_sub_x[6]), .B2(n64), .C1(
        y_sub_x[5]), .C2(n174), .ZN(n6) );
  NR2D0 U158 ( .A1(n118), .A2(n139), .ZN(n60) );
  CKND2D0 U159 ( .A1(Mantissa_Y[11]), .A2(n116), .ZN(n49) );
  CKND2D0 U160 ( .A1(n60), .A2(n63), .ZN(n47) );
  OAI21D0 U161 ( .A1(Mantissa_Y[12]), .A2(Mantissa_Y[14]), .B(n19), .ZN(n7) );
  OAI22D0 U162 ( .A1(n116), .A2(n57), .B1(Mantissa_Y[12]), .B2(n40), .ZN(n1)
         );
  AOI32D0 U163 ( .A1(n64), .A2(Mantissa_Y[12]), .A3(x_sub_y[6]), .B1(n1), .B2(
        x_sub_y[5]), .ZN(n2) );
  IOA21D0 U164 ( .A1(x_sub_y[4]), .A2(n7), .B(n2), .ZN(n4) );
  INR2D0 U165 ( .A1(n60), .B1(Mantissa_Y[11]), .ZN(n3) );
  INR2D0 U166 ( .A1(n3), .B1(Mantissa_Y[12]), .ZN(n44) );
  AOI222D0 U167 ( .A1(n4), .A2(n62), .B1(x_sub_y[6]), .B2(n44), .C1(x_sub_y[7]), .C2(n42), .ZN(n5) );
  OAI221D0 U168 ( .A1(n62), .A2(n6), .B1(n47), .B2(n168), .C(n5), .ZN(L4_p1[0]) );
  OA22D0 U169 ( .A1(y_sub_x[6]), .A2(n62), .B1(x_sub_y[6]), .B2(Mantissa_Y[11]), .Z(n11) );
  AOI22D0 U170 ( .A1(y_sub_x[6]), .A2(n63), .B1(Mantissa_Y[12]), .B2(n11), 
        .ZN(n10) );
  OA22D0 U171 ( .A1(y_sub_x[8]), .A2(n62), .B1(x_sub_y[7]), .B2(Mantissa_Y[11]), .Z(n14) );
  AOI33D0 U172 ( .A1(n14), .A2(n116), .A3(n60), .B1(n7), .B2(n62), .B3(
        x_sub_y[5]), .ZN(n9) );
  CKND2D0 U173 ( .A1(Mantissa_Y[12]), .A2(n62), .ZN(n39) );
  CKND2D0 U174 ( .A1(n116), .A2(n62), .ZN(n50) );
  OA222D0 U175 ( .A1(x_sub_y[7]), .A2(n39), .B1(x_sub_y[6]), .B2(n50), .C1(
        y_sub_x[7]), .C2(n62), .Z(n12) );
  AOI222D0 U176 ( .A1(n64), .A2(n12), .B1(x_sub_y[8]), .B2(n42), .C1(
        y_sub_x[5]), .C2(n53), .ZN(n8) );
  OAI211D0 U177 ( .A1(n57), .A2(n10), .B(n9), .C(n8), .ZN(L4_p1[1]) );
  AOI22D0 U178 ( .A1(n174), .A2(n12), .B1(n87), .B2(n11), .ZN(n17) );
  IND2D0 U179 ( .A1(y_sub_x[8]), .B1(Mantissa_Y[11]), .ZN(n15) );
  OA222D0 U180 ( .A1(x_sub_y[8]), .A2(n39), .B1(n116), .B2(n15), .C1(
        Mantissa_Y[12]), .C2(n14), .Z(n18) );
  AOI222D0 U181 ( .A1(n64), .A2(n18), .B1(x_sub_y[8]), .B2(n44), .C1(
        x_sub_y[9]), .C2(n42), .ZN(n16) );
  OAI211D0 U182 ( .A1(n47), .A2(n167), .B(n17), .C(n16), .ZN(L4_p1[2]) );
  OAI222D0 U183 ( .A1(x_sub_y[9]), .A2(n39), .B1(x_sub_y[8]), .B2(n50), .C1(
        y_sub_x[9]), .C2(n62), .ZN(n23) );
  MAOI22D0 U184 ( .A1(n174), .A2(n18), .B1(n40), .B2(n23), .ZN(n22) );
  NR2D0 U185 ( .A1(n19), .A2(Mantissa_Y[11]), .ZN(n54) );
  AO22D0 U186 ( .A1(n53), .A2(y_sub_x[7]), .B1(n42), .B2(x_sub_y[10]), .Z(n20)
         );
  AOI221D0 U187 ( .A1(x_sub_y[9]), .A2(n44), .B1(x_sub_y[7]), .B2(n54), .C(n20), .ZN(n21) );
  OAI211D0 U188 ( .A1(n47), .A2(n166), .B(n22), .C(n21), .ZN(L4_p1[3]) );
  OAI222D0 U189 ( .A1(x_sub_y[10]), .A2(n39), .B1(x_sub_y[9]), .B2(n50), .C1(
        y_sub_x[10]), .C2(n62), .ZN(n27) );
  OA22D0 U190 ( .A1(n57), .A2(n23), .B1(n40), .B2(n27), .Z(n26) );
  AO22D0 U191 ( .A1(n53), .A2(y_sub_x[8]), .B1(n42), .B2(x_sub_y[11]), .Z(n24)
         );
  AOI221D0 U192 ( .A1(x_sub_y[10]), .A2(n44), .B1(x_sub_y[8]), .B2(n54), .C(
        n24), .ZN(n25) );
  OAI211D0 U193 ( .A1(n47), .A2(n165), .B(n26), .C(n25), .ZN(L4_p1[4]) );
  OAI222D0 U194 ( .A1(x_sub_y[11]), .A2(n39), .B1(x_sub_y[10]), .B2(n50), .C1(
        y_sub_x[11]), .C2(n62), .ZN(n31) );
  OA22D0 U195 ( .A1(n57), .A2(n27), .B1(n40), .B2(n31), .Z(n30) );
  AO22D0 U196 ( .A1(n53), .A2(y_sub_x[9]), .B1(x_sub_y[12]), .B2(n42), .Z(n28)
         );
  AOI221D0 U197 ( .A1(x_sub_y[11]), .A2(n44), .B1(x_sub_y[9]), .B2(n54), .C(
        n28), .ZN(n29) );
  OAI211D0 U198 ( .A1(n164), .A2(n47), .B(n30), .C(n29), .ZN(L4_p1[5]) );
  OAI222D0 U199 ( .A1(x_sub_y[12]), .A2(n39), .B1(x_sub_y[11]), .B2(n50), .C1(
        y_sub_x[12]), .C2(n62), .ZN(n35) );
  OA22D0 U200 ( .A1(n57), .A2(n31), .B1(n40), .B2(n35), .Z(n34) );
  AO22D0 U201 ( .A1(n53), .A2(y_sub_x[10]), .B1(x_sub_y[13]), .B2(n42), .Z(n32) );
  AOI221D0 U202 ( .A1(x_sub_y[12]), .A2(n44), .B1(x_sub_y[10]), .B2(n54), .C(
        n32), .ZN(n33) );
  OAI211D0 U203 ( .A1(n128), .A2(n47), .B(n34), .C(n33), .ZN(L4_p1[6]) );
  OAI222D0 U204 ( .A1(x_sub_y[13]), .A2(n39), .B1(x_sub_y[12]), .B2(n50), .C1(
        y_sub_x[13]), .C2(n62), .ZN(n41) );
  OA22D0 U205 ( .A1(n57), .A2(n35), .B1(n40), .B2(n41), .Z(n38) );
  AO22D0 U206 ( .A1(n53), .A2(y_sub_x[11]), .B1(x_sub_y[14]), .B2(n42), .Z(n36) );
  AOI221D0 U207 ( .A1(n44), .A2(x_sub_y[13]), .B1(x_sub_y[11]), .B2(n54), .C(
        n36), .ZN(n37) );
  OAI211D0 U208 ( .A1(n88), .A2(n47), .B(n38), .C(n37), .ZN(L4_p1[7]) );
  OAI222D0 U209 ( .A1(x_sub_y[14]), .A2(n39), .B1(x_sub_y[13]), .B2(n50), .C1(
        y_sub_x[14]), .C2(n62), .ZN(n52) );
  OA22D0 U210 ( .A1(n57), .A2(n41), .B1(n40), .B2(n52), .Z(n46) );
  AO22D0 U211 ( .A1(x_sub_y[15]), .A2(n42), .B1(n53), .B2(y_sub_x[12]), .Z(n43) );
  AOI221D0 U212 ( .A1(n44), .A2(x_sub_y[14]), .B1(x_sub_y[12]), .B2(n54), .C(
        n43), .ZN(n45) );
  OAI211D0 U213 ( .A1(n47), .A2(n129), .B(n46), .C(n45), .ZN(L4_p1[8]) );
  OAI22D0 U214 ( .A1(y_sub_x[15]), .A2(n62), .B1(x_sub_y[15]), .B2(
        Mantissa_Y[11]), .ZN(n61) );
  IOA21D0 U215 ( .A1(n62), .A2(x_sub_y[15]), .B(Mantissa_Y[12]), .ZN(n48) );
  CKND2D0 U216 ( .A1(n89), .A2(n48), .ZN(n59) );
  IND2D0 U217 ( .A1(n59), .B1(n60), .ZN(n56) );
  OAI222D0 U218 ( .A1(x_sub_y[14]), .A2(n50), .B1(y_sub_x[15]), .B2(n49), .C1(
        n89), .C2(n116), .ZN(n58) );
  AOI222D0 U219 ( .A1(n64), .A2(n90), .B1(x_sub_y[13]), .B2(n54), .C1(
        y_sub_x[13]), .C2(n53), .ZN(n51) );
  OAI211D0 U220 ( .A1(n52), .A2(n57), .B(n56), .C(n51), .ZN(L4_p1[9]) );
  AOI222D0 U221 ( .A1(n64), .A2(n89), .B1(x_sub_y[14]), .B2(n54), .C1(
        y_sub_x[14]), .C2(n53), .ZN(n55) );
  OAI211D0 U222 ( .A1(n58), .A2(n57), .B(n56), .C(n55), .ZN(L4_p1[10]) );
  NR2D0 U223 ( .A1(n116), .A2(Mantissa_Y[13]), .ZN(n91) );
  NR2D0 U224 ( .A1(n117), .A2(Mantissa_Y[14]), .ZN(n98) );
  NR2D0 U225 ( .A1(n118), .A2(Mantissa_Y[12]), .ZN(n96) );
  OAI222D0 U226 ( .A1(n125), .A2(n94), .B1(n130), .B2(n93), .C1(n160), .C2(n92), .ZN(L3_p2[0]) );
  OAI222D0 U227 ( .A1(n126), .A2(n94), .B1(n159), .B2(n93), .C1(n130), .C2(n92), .ZN(L3_p2[1]) );
  OAI222D0 U228 ( .A1(n168), .A2(n94), .B1(n131), .B2(n93), .C1(n159), .C2(n92), .ZN(L3_p2[2]) );
  OAI222D0 U229 ( .A1(n127), .A2(n94), .B1(n132), .B2(n93), .C1(n131), .C2(n92), .ZN(L3_p2[3]) );
  OAI222D0 U230 ( .A1(n167), .A2(n94), .B1(n133), .B2(n93), .C1(n132), .C2(n92), .ZN(L3_p2[4]) );
  OAI222D0 U231 ( .A1(n166), .A2(n94), .B1(n134), .B2(n93), .C1(n133), .C2(n92), .ZN(L3_p2[5]) );
  OAI222D0 U232 ( .A1(n165), .A2(n94), .B1(n135), .B2(n93), .C1(n134), .C2(n92), .ZN(L3_p2[6]) );
  OAI222D0 U233 ( .A1(n164), .A2(n94), .B1(n152), .B2(n93), .C1(n135), .C2(n92), .ZN(L3_p2[7]) );
  OAI222D0 U234 ( .A1(n128), .A2(n94), .B1(n150), .B2(n93), .C1(n152), .C2(n92), .ZN(L3_p2[8]) );
  OAI222D0 U235 ( .A1(n88), .A2(n94), .B1(n136), .B2(n93), .C1(n150), .C2(n92), 
        .ZN(L3_p2[9]) );
  AOI21D0 U236 ( .A1(n118), .A2(n139), .B(n96), .ZN(n95) );
  NR2D0 U237 ( .A1(n118), .A2(n139), .ZN(n113) );
  CKND2D0 U238 ( .A1(Mantissa_Y[12]), .A2(n113), .ZN(n99) );
  NR2D0 U239 ( .A1(n113), .A2(Mantissa_Y[12]), .ZN(n109) );
  AOI22D0 U240 ( .A1(x_sub_y[3]), .A2(n109), .B1(y_sub_x[4]), .B2(n98), .ZN(
        n97) );
  OAI221D0 U241 ( .A1(n99), .A2(n130), .B1(n121), .B2(n161), .C(n97), .ZN(
        L3_p1[0]) );
  AOI22D0 U242 ( .A1(x_sub_y[7]), .A2(n123), .B1(x_sub_y[5]), .B2(n110), .ZN(
        n100) );
  OAI221D0 U243 ( .A1(n122), .A2(n161), .B1(n120), .B2(n125), .C(n100), .ZN(
        L3_p1[1]) );
  AOI22D0 U244 ( .A1(x_sub_y[8]), .A2(n123), .B1(x_sub_y[6]), .B2(n110), .ZN(
        n101) );
  OAI221D0 U245 ( .A1(n122), .A2(n160), .B1(n120), .B2(n126), .C(n101), .ZN(
        L3_p1[2]) );
  AOI22D0 U246 ( .A1(x_sub_y[9]), .A2(n123), .B1(x_sub_y[7]), .B2(n110), .ZN(
        n102) );
  OAI221D0 U247 ( .A1(n122), .A2(n130), .B1(n120), .B2(n168), .C(n102), .ZN(
        L3_p1[3]) );
  AOI22D0 U248 ( .A1(x_sub_y[10]), .A2(n123), .B1(x_sub_y[8]), .B2(n110), .ZN(
        n103) );
  OAI221D0 U249 ( .A1(n122), .A2(n159), .B1(n120), .B2(n127), .C(n103), .ZN(
        L3_p1[4]) );
  AOI22D0 U250 ( .A1(x_sub_y[11]), .A2(n123), .B1(x_sub_y[9]), .B2(n110), .ZN(
        n104) );
  OAI221D0 U251 ( .A1(n122), .A2(n131), .B1(n120), .B2(n167), .C(n104), .ZN(
        L3_p1[5]) );
  AOI22D0 U252 ( .A1(x_sub_y[12]), .A2(n123), .B1(x_sub_y[10]), .B2(n110), 
        .ZN(n105) );
  OAI221D0 U253 ( .A1(n122), .A2(n132), .B1(n120), .B2(n166), .C(n105), .ZN(
        L3_p1[6]) );
  AOI22D0 U254 ( .A1(x_sub_y[13]), .A2(n123), .B1(x_sub_y[11]), .B2(n110), 
        .ZN(n106) );
  OAI221D0 U255 ( .A1(n122), .A2(n133), .B1(n120), .B2(n165), .C(n106), .ZN(
        L3_p1[7]) );
  AOI22D0 U256 ( .A1(n123), .A2(x_sub_y[14]), .B1(x_sub_y[12]), .B2(n110), 
        .ZN(n107) );
  OAI221D0 U257 ( .A1(n122), .A2(n134), .B1(n120), .B2(n164), .C(n107), .ZN(
        L3_p1[8]) );
  CKND2D0 U258 ( .A1(n123), .A2(x_sub_y[15]), .ZN(n112) );
  AOI22D0 U259 ( .A1(x_sub_y[13]), .A2(n110), .B1(x_sub_y[12]), .B2(n109), 
        .ZN(n108) );
  OAI211D0 U260 ( .A1(n120), .A2(n128), .B(n112), .C(n108), .ZN(L3_p1[9]) );
  AOI22D0 U261 ( .A1(n110), .A2(x_sub_y[14]), .B1(x_sub_y[13]), .B2(n109), 
        .ZN(n111) );
  OAI211D0 U262 ( .A1(n120), .A2(n88), .B(n112), .C(n111), .ZN(L3_p1[10]) );
  AOI21D0 U263 ( .A1(Mantissa_Y[14]), .A2(Mantissa_Y[12]), .B(n113), .ZN(n114)
         );
  OAI222D0 U264 ( .A1(n122), .A2(n150), .B1(n136), .B2(n114), .C1(n120), .C2(
        n129), .ZN(L3_p1[11]) );
  NR2D0 U265 ( .A1(n116), .A2(Mantissa_Y[14]), .ZN(n115) );
  OAI22D0 U266 ( .A1(n120), .A2(n129), .B1(n115), .B2(n136), .ZN(L3_p1[12]) );
  NR2D1 U267 ( .A1(n98), .A2(n96), .ZN(n92) );
  CKND0 U7 ( .I(n121), .ZN(n110) );
  OAI21D0 U59 ( .A1(n96), .A2(n91), .B(Mantissa_Y[14]), .ZN(n121) );
  IND2D0 U119 ( .A1(Mantissa_Y[13]), .B1(n139), .ZN(n137) );
  CKND0 U120 ( .I(Mantissa_Y[14]), .ZN(n139) );
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
  CKBD1 U21 ( .I(result_fraction[19]), .Z(result[19]) );
  CKBD1 U22 ( .I(result_fraction[16]), .Z(result[16]) );
  CKBD1 U23 ( .I(result_fraction[17]), .Z(result[17]) );
  CKBD1 U24 ( .I(result_fraction[18]), .Z(result[18]) );
  CKBD1 U25 ( .I(result_fraction[12]), .Z(result[12]) );
  CKBD1 U26 ( .I(result_fraction[13]), .Z(result[13]) );
  CKBD1 U27 ( .I(result_fraction[14]), .Z(result[14]) );
  CKBD1 U28 ( .I(result_fraction[15]), .Z(result[15]) );
  CKBD1 U29 ( .I(result_fraction[20]), .Z(result[20]) );
  CKBD1 U30 ( .I(result_fraction[21]), .Z(result[21]) );
  CKBD1 U31 ( .I(result_fraction[22]), .Z(result[22]) );
  CKBD1 U32 ( .I(result_fraction[11]), .Z(result[11]) );
  CKBD1 U33 ( .I(result_fraction[10]), .Z(result[10]) );
  CKBD1 U34 ( .I(result_fraction[9]), .Z(result[9]) );
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
  CKBD1 U50 ( .I(y[8]), .Z(fraction_y[8]) );
  CKBD1 U51 ( .I(y[9]), .Z(fraction_y[9]) );
  CKBD1 U54 ( .I(y[10]), .Z(fraction_y[10]) );
  CKBD1 U60 ( .I(result_fraction[8]), .Z(result[8]) );
  CKBD1 U61 ( .I(y[19]), .Z(fraction_y[19]) );
  CKBD1 U62 ( .I(y[22]), .Z(fraction_y[22]) );
  CKBD1 U63 ( .I(y[20]), .Z(fraction_y[20]) );
  CKBD1 U64 ( .I(y[21]), .Z(fraction_y[21]) );
  INVD1 U65 ( .I(y[29]), .ZN(N17) );
  INVD1 U66 ( .I(y[24]), .ZN(N12) );
  INVD1 U67 ( .I(y[25]), .ZN(N13) );
  INVD1 U68 ( .I(y[26]), .ZN(N14) );
  INVD1 U69 ( .I(y[27]), .ZN(N15) );
  INVD1 U70 ( .I(y[28]), .ZN(N16) );
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
  CKBD1 U102 ( .I(y[18]), .Z(fraction_y[18]) );
  CKBD1 U103 ( .I(y[17]), .Z(fraction_y[17]) );
  CKBD1 U104 ( .I(y[16]), .Z(fraction_y[16]) );
  CKBD1 U105 ( .I(y[15]), .Z(fraction_y[15]) );
  CKBD1 U106 ( .I(y[14]), .Z(fraction_y[14]) );
  CKBD1 U107 ( .I(y[13]), .Z(fraction_y[13]) );
  CKBD1 U108 ( .I(y[12]), .Z(fraction_y[12]) );
  CKBD1 U109 ( .I(y[11]), .Z(fraction_y[11]) );
  TIEL U110 ( .ZN(n79) );
  CKXOR2D1 U111 ( .A1(exponent_adjust[0]), .A2(N3), .Z(result[23]) );
  CKND0 U119 ( .I(y[23]), .ZN(N11) );
endmodule


module FP_DIV_WRAPPER_32_width_trunc8 ( x, y, out0, mantissa_x, mantissa_y, 
        mantissa_out, shift );
  input [31:0] x;
  input [31:0] y;
  output [31:0] out0;
  output [14:0] mantissa_x;
  output [14:0] mantissa_y;
  input [14:0] mantissa_out;
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
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23;

  fp32_normal_finite_wrapper shared_wrapper ( .x({x[31:8], 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y({y[31:8], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .divide_mode(1'b0), .fraction_x({mantissa_x, 
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7}), .fraction_y({
        mantissa_y, SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15}), 
        .result_fraction({mantissa_out, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .exponent_adjust({shift[0], shift[0], shift[0]}), 
        .result({out0[31:8], SYNOPSYS_UNCONNECTED__16, 
        SYNOPSYS_UNCONNECTED__17, SYNOPSYS_UNCONNECTED__18, 
        SYNOPSYS_UNCONNECTED__19, SYNOPSYS_UNCONNECTED__20, 
        SYNOPSYS_UNCONNECTED__21, SYNOPSYS_UNCONNECTED__22, 
        SYNOPSYS_UNCONNECTED__23}) );
endmodule


module fig8_pace_l4_d8 ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   shift, n1;
  wire   [14:0] mx;
  wire   [14:0] my;
  wire   [14:0] mz;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7;
  assign result[0] = 1'b0;
  assign result[1] = 1'b0;
  assign result[2] = 1'b0;
  assign result[3] = 1'b0;
  assign result[4] = 1'b0;
  assign result[5] = 1'b0;
  assign result[6] = 1'b0;
  assign result[7] = 1'b0;

  Mantissa_Div_L4_Kec_MANTISSA_WIDTH15 core ( .Mantissa_X(mx), .Mantissa_Y(my), 
        .Mantissa_Out(mz), .Shift(shift) );
  FP_DIV_WRAPPER_32_width_trunc8 shell ( .x({x[31:8], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .y({y[31:8], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0}), .out0({result[31:8], SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7}), .mantissa_x(mx), .mantissa_y(my), 
        .mantissa_out(mz), .shift(n1) );
  INVD1 U2 ( .I(shift), .ZN(n1) );
endmodule

