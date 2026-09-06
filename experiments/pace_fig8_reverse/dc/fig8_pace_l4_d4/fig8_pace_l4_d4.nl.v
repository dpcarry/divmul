/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Sat Sep  5 13:11:54 2026
/////////////////////////////////////////////////////////////


module CSA3_2_Array_WIDTH21_0 ( In_1, In_2, In_3, S, C );
  input [20:0] In_1;
  input [20:0] In_2;
  input [20:0] In_3;
  output [20:0] S;
  output [20:0] C;
  wire   n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41;

  CKXOR2D1 U1 ( .A1(In_3[9]), .A2(In_2[9]), .Z(S[9]) );
  CKXOR2D1 U2 ( .A1(In_3[8]), .A2(In_2[8]), .Z(S[8]) );
  CKXOR2D1 U3 ( .A1(In_3[7]), .A2(In_2[7]), .Z(S[7]) );
  CKXOR2D1 U4 ( .A1(In_3[6]), .A2(In_2[6]), .Z(S[6]) );
  CKXOR2D1 U5 ( .A1(In_3[5]), .A2(In_2[5]), .Z(S[5]) );
  CKXOR2D1 U6 ( .A1(In_3[4]), .A2(In_2[4]), .Z(S[4]) );
  CKXOR2D1 U7 ( .A1(In_3[3]), .A2(In_2[3]), .Z(S[3]) );
  CKXOR2D1 U8 ( .A1(In_3[2]), .A2(In_2[2]), .Z(S[2]) );
  CKXOR2D1 U10 ( .A1(In_3[1]), .A2(In_2[1]), .Z(S[1]) );
  CKXOR2D1 U11 ( .A1(In_3[19]), .A2(In_2[19]), .Z(S[19]) );
  CKXOR2D1 U12 ( .A1(In_3[18]), .A2(In_2[18]), .Z(S[18]) );
  CKXOR2D1 U13 ( .A1(In_3[17]), .A2(In_2[17]), .Z(S[17]) );
  CKXOR2D1 U14 ( .A1(In_3[16]), .A2(In_2[16]), .Z(S[16]) );
  CKXOR2D1 U15 ( .A1(In_3[15]), .A2(In_2[15]), .Z(S[15]) );
  CKXOR2D1 U16 ( .A1(In_3[14]), .A2(In_2[14]), .Z(S[14]) );
  CKXOR2D1 U17 ( .A1(In_3[13]), .A2(In_2[13]), .Z(S[13]) );
  CKXOR2D1 U18 ( .A1(In_3[12]), .A2(In_2[12]), .Z(S[12]) );
  CKXOR2D1 U19 ( .A1(In_3[11]), .A2(In_2[11]), .Z(S[11]) );
  CKXOR2D1 U20 ( .A1(In_3[10]), .A2(In_2[10]), .Z(S[10]) );
  CKXOR2D1 U21 ( .A1(In_3[0]), .A2(In_2[0]), .Z(S[0]) );
  XNR2D0 U9 ( .A1(In_3[20]), .A2(In_2[20]), .ZN(S[20]) );
  CKND0 U22 ( .I(n41), .ZN(C[19]) );
  CKND1 U23 ( .I(n40), .ZN(C[18]) );
  CKND2D0 U24 ( .A1(In_3[19]), .A2(In_2[19]), .ZN(n41) );
  CKND1 U25 ( .I(n39), .ZN(C[17]) );
  CKND2D0 U26 ( .A1(In_3[18]), .A2(In_2[18]), .ZN(n40) );
  CKND1 U27 ( .I(n38), .ZN(C[16]) );
  CKND2D0 U28 ( .A1(In_3[17]), .A2(In_2[17]), .ZN(n39) );
  CKND1 U29 ( .I(n37), .ZN(C[15]) );
  CKND2D0 U30 ( .A1(In_3[16]), .A2(In_2[16]), .ZN(n38) );
  CKND1 U31 ( .I(n36), .ZN(C[14]) );
  CKND2D0 U32 ( .A1(In_3[15]), .A2(In_2[15]), .ZN(n37) );
  CKND1 U33 ( .I(n35), .ZN(C[13]) );
  CKND2D0 U34 ( .A1(In_3[14]), .A2(In_2[14]), .ZN(n36) );
  CKND1 U35 ( .I(n34), .ZN(C[12]) );
  CKND2D0 U36 ( .A1(In_3[13]), .A2(In_2[13]), .ZN(n35) );
  CKND1 U37 ( .I(n33), .ZN(C[11]) );
  CKND2D0 U38 ( .A1(In_3[12]), .A2(In_2[12]), .ZN(n34) );
  CKND1 U39 ( .I(n32), .ZN(C[10]) );
  CKND2D0 U40 ( .A1(In_3[11]), .A2(In_2[11]), .ZN(n33) );
  CKND1 U41 ( .I(n31), .ZN(C[9]) );
  CKND2D0 U42 ( .A1(In_3[10]), .A2(In_2[10]), .ZN(n32) );
  CKND1 U43 ( .I(n30), .ZN(C[8]) );
  CKND2D0 U44 ( .A1(In_3[9]), .A2(In_2[9]), .ZN(n31) );
  CKND1 U45 ( .I(n29), .ZN(C[7]) );
  CKND2D0 U46 ( .A1(In_3[8]), .A2(In_2[8]), .ZN(n30) );
  CKND1 U47 ( .I(n28), .ZN(C[6]) );
  CKND2D0 U48 ( .A1(In_3[7]), .A2(In_2[7]), .ZN(n29) );
  CKND1 U49 ( .I(n27), .ZN(C[5]) );
  CKND2D0 U50 ( .A1(In_3[6]), .A2(In_2[6]), .ZN(n28) );
  CKND1 U51 ( .I(n26), .ZN(C[4]) );
  CKND2D0 U52 ( .A1(In_3[5]), .A2(In_2[5]), .ZN(n27) );
  CKND1 U53 ( .I(n25), .ZN(C[3]) );
  CKND2D0 U54 ( .A1(In_3[4]), .A2(In_2[4]), .ZN(n26) );
  CKND1 U55 ( .I(n24), .ZN(C[2]) );
  CKND2D0 U56 ( .A1(In_3[3]), .A2(In_2[3]), .ZN(n25) );
  CKND1 U57 ( .I(n23), .ZN(C[1]) );
  CKND1 U58 ( .I(n22), .ZN(C[0]) );
  CKND2D0 U59 ( .A1(In_3[2]), .A2(In_2[2]), .ZN(n24) );
  CKND2D0 U60 ( .A1(In_3[1]), .A2(In_2[1]), .ZN(n23) );
  CKND2D0 U61 ( .A1(In_3[0]), .A2(In_2[0]), .ZN(n22) );
endmodule


module CSA3_2_Array_WIDTH21_5 ( In_1, In_2, In_3, S, C );
  input [20:0] In_1;
  input [20:0] In_2;
  input [20:0] In_3;
  output [20:0] S;
  output [20:0] C;
  wire   n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n35, n36,
         n37, n38, n39, n40, n41, n42;

  CKXOR2D1 U1 ( .A1(In_3[9]), .A2(n42), .Z(S[9]) );
  CKXOR2D1 U2 ( .A1(In_3[8]), .A2(n41), .Z(S[8]) );
  CKXOR2D1 U3 ( .A1(In_3[7]), .A2(n40), .Z(S[7]) );
  CKXOR2D1 U4 ( .A1(In_3[6]), .A2(n39), .Z(S[6]) );
  CKXOR2D1 U5 ( .A1(In_3[5]), .A2(n38), .Z(S[5]) );
  CKXOR2D1 U6 ( .A1(In_3[4]), .A2(n37), .Z(S[4]) );
  CKXOR2D1 U7 ( .A1(In_3[3]), .A2(n36), .Z(S[3]) );
  CKXOR2D1 U8 ( .A1(In_3[2]), .A2(n35), .Z(S[2]) );
  CKXOR2D1 U10 ( .A1(In_3[1]), .A2(n33), .Z(S[1]) );
  CKXOR2D1 U17 ( .A1(In_3[13]), .A2(n26), .Z(S[13]) );
  CKXOR2D1 U18 ( .A1(In_3[12]), .A2(n25), .Z(S[12]) );
  CKXOR2D1 U19 ( .A1(In_3[11]), .A2(n24), .Z(S[11]) );
  CKXOR2D1 U20 ( .A1(In_3[10]), .A2(n23), .Z(S[10]) );
  CKXOR2D1 U21 ( .A1(In_3[0]), .A2(n22), .Z(S[0]) );
  CKXOR2D1 U23 ( .A1(In_2[9]), .A2(In_1[9]), .Z(n42) );
  CKXOR2D1 U25 ( .A1(In_2[8]), .A2(In_1[8]), .Z(n41) );
  CKXOR2D1 U27 ( .A1(In_2[7]), .A2(In_1[7]), .Z(n40) );
  CKXOR2D1 U29 ( .A1(In_2[6]), .A2(In_1[6]), .Z(n39) );
  CKXOR2D1 U31 ( .A1(In_2[5]), .A2(In_1[5]), .Z(n38) );
  CKXOR2D1 U33 ( .A1(In_2[4]), .A2(In_1[4]), .Z(n37) );
  CKXOR2D1 U35 ( .A1(In_2[3]), .A2(In_1[3]), .Z(n36) );
  CKXOR2D1 U37 ( .A1(In_2[2]), .A2(In_1[2]), .Z(n35) );
  CKXOR2D1 U41 ( .A1(In_2[1]), .A2(In_1[1]), .Z(n33) );
  CKXOR2D1 U43 ( .A1(In_2[19]), .A2(In_1[19]), .Z(n32) );
  CKXOR2D1 U45 ( .A1(In_2[18]), .A2(In_1[18]), .Z(n31) );
  CKXOR2D1 U47 ( .A1(In_2[17]), .A2(In_1[17]), .Z(n30) );
  CKXOR2D1 U49 ( .A1(In_2[16]), .A2(In_1[16]), .Z(n29) );
  CKXOR2D1 U51 ( .A1(In_2[15]), .A2(In_1[15]), .Z(n28) );
  CKXOR2D1 U53 ( .A1(In_2[14]), .A2(In_1[14]), .Z(n27) );
  CKXOR2D1 U55 ( .A1(In_2[13]), .A2(In_1[13]), .Z(n26) );
  CKXOR2D1 U57 ( .A1(In_2[12]), .A2(In_1[12]), .Z(n25) );
  CKXOR2D1 U59 ( .A1(In_2[11]), .A2(In_1[11]), .Z(n24) );
  CKXOR2D1 U61 ( .A1(In_2[10]), .A2(In_1[10]), .Z(n23) );
  CKXOR2D1 U63 ( .A1(In_2[0]), .A2(In_1[0]), .Z(n22) );
  CKXOR2D0 U9 ( .A1(In_3[14]), .A2(n27), .Z(S[14]) );
  CKXOR2D0 U11 ( .A1(In_3[15]), .A2(n28), .Z(S[15]) );
  CKXOR2D0 U12 ( .A1(In_3[16]), .A2(n29), .Z(S[16]) );
  CKXOR2D0 U13 ( .A1(In_3[17]), .A2(n30), .Z(S[17]) );
  CKXOR2D0 U14 ( .A1(In_3[18]), .A2(n31), .Z(S[18]) );
  CKXOR2D0 U15 ( .A1(In_3[19]), .A2(n32), .Z(S[19]) );
  AO22D0 U22 ( .A1(In_2[14]), .A2(In_1[14]), .B1(n27), .B2(In_3[14]), .Z(C[14]) );
  AO22D0 U24 ( .A1(In_2[16]), .A2(In_1[16]), .B1(n29), .B2(In_3[16]), .Z(C[16]) );
  AO22D0 U26 ( .A1(In_2[17]), .A2(In_1[17]), .B1(n30), .B2(In_3[17]), .Z(C[17]) );
  AO22D0 U28 ( .A1(In_2[18]), .A2(In_1[18]), .B1(n31), .B2(In_3[18]), .Z(C[18]) );
  AO22D0 U30 ( .A1(In_2[19]), .A2(In_1[19]), .B1(n32), .B2(In_3[19]), .Z(C[19]) );
  AO22D0 U32 ( .A1(In_2[13]), .A2(In_1[13]), .B1(n26), .B2(In_3[13]), .Z(C[13]) );
  AO22D0 U34 ( .A1(In_2[6]), .A2(In_1[6]), .B1(n39), .B2(In_3[6]), .Z(C[6]) );
  AO22D0 U36 ( .A1(In_2[10]), .A2(In_1[10]), .B1(n23), .B2(In_3[10]), .Z(C[10]) );
  AO22D0 U38 ( .A1(In_2[8]), .A2(In_1[8]), .B1(n41), .B2(In_3[8]), .Z(C[8]) );
  AO22D0 U40 ( .A1(In_2[7]), .A2(In_1[7]), .B1(n40), .B2(In_3[7]), .Z(C[7]) );
  AO22D0 U42 ( .A1(In_2[9]), .A2(In_1[9]), .B1(n42), .B2(In_3[9]), .Z(C[9]) );
  AO22D0 U44 ( .A1(In_2[11]), .A2(In_1[11]), .B1(n24), .B2(In_3[11]), .Z(C[11]) );
  AO22D0 U46 ( .A1(In_2[12]), .A2(In_1[12]), .B1(n25), .B2(In_3[12]), .Z(C[12]) );
  AO22D0 U48 ( .A1(In_2[4]), .A2(In_1[4]), .B1(n37), .B2(In_3[4]), .Z(C[4]) );
  AO22D0 U50 ( .A1(In_2[5]), .A2(In_1[5]), .B1(n38), .B2(In_3[5]), .Z(C[5]) );
  AO22D0 U52 ( .A1(In_2[2]), .A2(In_1[2]), .B1(n35), .B2(In_3[2]), .Z(C[2]) );
  AO22D0 U54 ( .A1(In_2[3]), .A2(In_1[3]), .B1(n36), .B2(In_3[3]), .Z(C[3]) );
  AO22D0 U56 ( .A1(In_2[1]), .A2(In_1[1]), .B1(n33), .B2(In_3[1]), .Z(C[1]) );
  AO22D0 U58 ( .A1(In_2[0]), .A2(In_1[0]), .B1(n22), .B2(In_3[0]), .Z(C[0]) );
  AO22D0 U62 ( .A1(In_2[15]), .A2(In_1[15]), .B1(n28), .B2(In_3[15]), .Z(C[15]) );
  XOR3D0 U16 ( .A1(In_3[20]), .A2(In_1[20]), .A3(In_2[20]), .Z(S[20]) );
endmodule


module CSA3_2_Array_WIDTH21_4 ( In_1, In_2, In_3, S, C );
  input [20:0] In_1;
  input [20:0] In_2;
  input [20:0] In_3;
  output [20:0] S;
  output [20:0] C;
  wire   n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n35, n36, n37,
         n38, n39, n40, n41, n42, n43;

  CKXOR2D1 U1 ( .A1(In_3[9]), .A2(n42), .Z(S[9]) );
  CKXOR2D1 U2 ( .A1(In_3[8]), .A2(n41), .Z(S[8]) );
  CKXOR2D1 U3 ( .A1(In_3[7]), .A2(n40), .Z(S[7]) );
  CKXOR2D1 U4 ( .A1(In_3[6]), .A2(n39), .Z(S[6]) );
  CKXOR2D1 U5 ( .A1(In_3[5]), .A2(n38), .Z(S[5]) );
  CKXOR2D1 U6 ( .A1(In_3[4]), .A2(n37), .Z(S[4]) );
  CKXOR2D1 U7 ( .A1(In_3[3]), .A2(n36), .Z(S[3]) );
  CKXOR2D1 U8 ( .A1(In_3[2]), .A2(n35), .Z(S[2]) );
  CKXOR2D1 U10 ( .A1(In_3[1]), .A2(n33), .Z(S[1]) );
  CKXOR2D1 U11 ( .A1(In_3[19]), .A2(n32), .Z(S[19]) );
  CKXOR2D1 U12 ( .A1(In_3[18]), .A2(n31), .Z(S[18]) );
  CKXOR2D1 U13 ( .A1(In_3[17]), .A2(n30), .Z(S[17]) );
  CKXOR2D1 U14 ( .A1(In_3[16]), .A2(n29), .Z(S[16]) );
  CKXOR2D1 U15 ( .A1(In_3[15]), .A2(n28), .Z(S[15]) );
  CKXOR2D1 U16 ( .A1(In_3[14]), .A2(n27), .Z(S[14]) );
  CKXOR2D1 U17 ( .A1(In_3[13]), .A2(n26), .Z(S[13]) );
  CKXOR2D1 U18 ( .A1(In_3[12]), .A2(n25), .Z(S[12]) );
  CKXOR2D1 U19 ( .A1(In_3[11]), .A2(n24), .Z(S[11]) );
  CKXOR2D1 U20 ( .A1(In_3[10]), .A2(n23), .Z(S[10]) );
  CKXOR2D1 U21 ( .A1(In_3[0]), .A2(In_1[0]), .Z(S[0]) );
  CKXOR2D1 U23 ( .A1(In_2[9]), .A2(In_1[9]), .Z(n42) );
  CKXOR2D1 U25 ( .A1(In_2[8]), .A2(In_1[8]), .Z(n41) );
  CKXOR2D1 U27 ( .A1(In_2[7]), .A2(In_1[7]), .Z(n40) );
  CKXOR2D1 U29 ( .A1(In_2[6]), .A2(In_1[6]), .Z(n39) );
  CKXOR2D1 U31 ( .A1(In_2[5]), .A2(In_1[5]), .Z(n38) );
  CKXOR2D1 U33 ( .A1(In_2[4]), .A2(In_1[4]), .Z(n37) );
  CKXOR2D1 U35 ( .A1(In_2[3]), .A2(In_1[3]), .Z(n36) );
  CKXOR2D1 U37 ( .A1(In_2[2]), .A2(In_1[2]), .Z(n35) );
  CKXOR2D1 U41 ( .A1(In_2[1]), .A2(In_1[1]), .Z(n33) );
  CKXOR2D1 U43 ( .A1(In_2[19]), .A2(In_1[19]), .Z(n32) );
  CKXOR2D1 U45 ( .A1(In_2[18]), .A2(In_1[18]), .Z(n31) );
  CKXOR2D1 U47 ( .A1(In_2[17]), .A2(In_1[17]), .Z(n30) );
  CKXOR2D1 U49 ( .A1(In_2[16]), .A2(In_1[16]), .Z(n29) );
  CKXOR2D1 U51 ( .A1(In_2[15]), .A2(In_1[15]), .Z(n28) );
  CKXOR2D1 U53 ( .A1(In_2[14]), .A2(In_1[14]), .Z(n27) );
  CKXOR2D1 U55 ( .A1(In_2[13]), .A2(In_1[13]), .Z(n26) );
  CKXOR2D1 U57 ( .A1(In_2[12]), .A2(In_1[12]), .Z(n25) );
  CKXOR2D1 U59 ( .A1(In_2[11]), .A2(In_1[11]), .Z(n24) );
  CKXOR2D1 U61 ( .A1(In_2[10]), .A2(In_1[10]), .Z(n23) );
  AO22D0 U24 ( .A1(In_2[14]), .A2(In_1[14]), .B1(n27), .B2(In_3[14]), .Z(C[14]) );
  AO22D0 U26 ( .A1(In_2[15]), .A2(In_1[15]), .B1(n28), .B2(In_3[15]), .Z(C[15]) );
  AO22D0 U28 ( .A1(In_2[16]), .A2(In_1[16]), .B1(n29), .B2(In_3[16]), .Z(C[16]) );
  AO22D0 U30 ( .A1(In_2[17]), .A2(In_1[17]), .B1(n30), .B2(In_3[17]), .Z(C[17]) );
  AO22D0 U32 ( .A1(In_2[18]), .A2(In_1[18]), .B1(n31), .B2(In_3[18]), .Z(C[18]) );
  AO22D0 U34 ( .A1(In_2[19]), .A2(In_1[19]), .B1(n32), .B2(In_3[19]), .Z(C[19]) );
  AO22D0 U36 ( .A1(In_2[13]), .A2(In_1[13]), .B1(n26), .B2(In_3[13]), .Z(C[13]) );
  AO22D0 U38 ( .A1(In_2[6]), .A2(In_1[6]), .B1(n39), .B2(In_3[6]), .Z(C[6]) );
  AO22D0 U40 ( .A1(In_2[10]), .A2(In_1[10]), .B1(n23), .B2(In_3[10]), .Z(C[10]) );
  AO22D0 U42 ( .A1(In_2[7]), .A2(In_1[7]), .B1(n40), .B2(In_3[7]), .Z(C[7]) );
  AO22D0 U44 ( .A1(In_2[8]), .A2(In_1[8]), .B1(n41), .B2(In_3[8]), .Z(C[8]) );
  AO22D0 U46 ( .A1(In_2[9]), .A2(In_1[9]), .B1(n42), .B2(In_3[9]), .Z(C[9]) );
  AO22D0 U48 ( .A1(In_2[11]), .A2(In_1[11]), .B1(n24), .B2(In_3[11]), .Z(C[11]) );
  AO22D0 U50 ( .A1(In_2[4]), .A2(In_1[4]), .B1(n37), .B2(In_3[4]), .Z(C[4]) );
  AO22D0 U52 ( .A1(In_2[5]), .A2(In_1[5]), .B1(n38), .B2(In_3[5]), .Z(C[5]) );
  AO22D0 U54 ( .A1(In_2[2]), .A2(In_1[2]), .B1(n35), .B2(In_3[2]), .Z(C[2]) );
  AO22D0 U56 ( .A1(In_2[3]), .A2(In_1[3]), .B1(n36), .B2(In_3[3]), .Z(C[3]) );
  AO22D0 U58 ( .A1(In_2[12]), .A2(In_1[12]), .B1(n25), .B2(In_3[12]), .Z(C[12]) );
  AO22D0 U60 ( .A1(In_2[1]), .A2(In_1[1]), .B1(n33), .B2(In_3[1]), .Z(C[1]) );
  XOR3D0 U9 ( .A1(In_3[20]), .A2(In_1[20]), .A3(In_2[20]), .Z(S[20]) );
  CKND1 U22 ( .I(n43), .ZN(C[0]) );
  CKND2D0 U39 ( .A1(In_3[0]), .A2(In_1[0]), .ZN(n43) );
endmodule


module CSA3_2_Array_WIDTH21_3 ( In_1, In_2, In_3, S, C );
  input [20:0] In_1;
  input [20:0] In_2;
  input [20:0] In_3;
  output [20:0] S;
  output [20:0] C;
  wire   n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n35, n36, n37,
         n38, n39, n40, n41, n42, n43;

  CKXOR2D1 U1 ( .A1(In_3[9]), .A2(n42), .Z(S[9]) );
  CKXOR2D1 U2 ( .A1(In_3[8]), .A2(n41), .Z(S[8]) );
  CKXOR2D1 U3 ( .A1(In_3[7]), .A2(n40), .Z(S[7]) );
  CKXOR2D1 U4 ( .A1(In_3[6]), .A2(n39), .Z(S[6]) );
  CKXOR2D1 U5 ( .A1(In_3[5]), .A2(n38), .Z(S[5]) );
  CKXOR2D1 U6 ( .A1(In_3[4]), .A2(n37), .Z(S[4]) );
  CKXOR2D1 U7 ( .A1(In_3[3]), .A2(n36), .Z(S[3]) );
  CKXOR2D1 U8 ( .A1(In_3[2]), .A2(n35), .Z(S[2]) );
  CKXOR2D1 U10 ( .A1(In_3[1]), .A2(n33), .Z(S[1]) );
  CKXOR2D1 U11 ( .A1(In_3[19]), .A2(n32), .Z(S[19]) );
  CKXOR2D1 U12 ( .A1(In_3[18]), .A2(n31), .Z(S[18]) );
  CKXOR2D1 U13 ( .A1(In_3[17]), .A2(n30), .Z(S[17]) );
  CKXOR2D1 U14 ( .A1(In_3[16]), .A2(n29), .Z(S[16]) );
  CKXOR2D1 U15 ( .A1(In_3[15]), .A2(n28), .Z(S[15]) );
  CKXOR2D1 U16 ( .A1(In_3[14]), .A2(n27), .Z(S[14]) );
  CKXOR2D1 U17 ( .A1(In_3[13]), .A2(n26), .Z(S[13]) );
  CKXOR2D1 U18 ( .A1(In_3[12]), .A2(n25), .Z(S[12]) );
  CKXOR2D1 U19 ( .A1(In_3[11]), .A2(n24), .Z(S[11]) );
  CKXOR2D1 U20 ( .A1(In_3[10]), .A2(n23), .Z(S[10]) );
  CKXOR2D1 U21 ( .A1(In_3[0]), .A2(In_2[0]), .Z(S[0]) );
  CKXOR2D1 U23 ( .A1(In_2[9]), .A2(In_1[9]), .Z(n42) );
  CKXOR2D1 U25 ( .A1(In_2[8]), .A2(In_1[8]), .Z(n41) );
  CKXOR2D1 U27 ( .A1(In_2[7]), .A2(In_1[7]), .Z(n40) );
  CKXOR2D1 U29 ( .A1(In_2[6]), .A2(In_1[6]), .Z(n39) );
  CKXOR2D1 U31 ( .A1(In_2[5]), .A2(In_1[5]), .Z(n38) );
  CKXOR2D1 U33 ( .A1(In_2[4]), .A2(In_1[4]), .Z(n37) );
  CKXOR2D1 U35 ( .A1(In_2[3]), .A2(In_1[3]), .Z(n36) );
  CKXOR2D1 U37 ( .A1(In_2[2]), .A2(In_1[2]), .Z(n35) );
  CKXOR2D1 U41 ( .A1(In_2[1]), .A2(In_1[1]), .Z(n33) );
  CKXOR2D1 U43 ( .A1(In_2[19]), .A2(In_1[19]), .Z(n32) );
  CKXOR2D1 U45 ( .A1(In_2[18]), .A2(In_1[18]), .Z(n31) );
  CKXOR2D1 U47 ( .A1(In_2[17]), .A2(In_1[17]), .Z(n30) );
  CKXOR2D1 U49 ( .A1(In_2[16]), .A2(In_1[16]), .Z(n29) );
  CKXOR2D1 U51 ( .A1(In_2[15]), .A2(In_1[15]), .Z(n28) );
  CKXOR2D1 U53 ( .A1(In_2[14]), .A2(In_1[14]), .Z(n27) );
  CKXOR2D1 U55 ( .A1(In_2[13]), .A2(In_1[13]), .Z(n26) );
  CKXOR2D1 U57 ( .A1(In_2[12]), .A2(In_1[12]), .Z(n25) );
  CKXOR2D1 U59 ( .A1(In_2[11]), .A2(In_1[11]), .Z(n24) );
  CKXOR2D1 U61 ( .A1(In_2[10]), .A2(In_1[10]), .Z(n23) );
  AO22D0 U24 ( .A1(In_2[15]), .A2(In_1[15]), .B1(n28), .B2(In_3[15]), .Z(C[15]) );
  AO22D0 U26 ( .A1(In_2[16]), .A2(In_1[16]), .B1(n29), .B2(In_3[16]), .Z(C[16]) );
  AO22D0 U28 ( .A1(In_2[17]), .A2(In_1[17]), .B1(n30), .B2(In_3[17]), .Z(C[17]) );
  AO22D0 U30 ( .A1(In_2[18]), .A2(In_1[18]), .B1(n31), .B2(In_3[18]), .Z(C[18]) );
  AO22D0 U32 ( .A1(In_2[13]), .A2(In_1[13]), .B1(n26), .B2(In_3[13]), .Z(C[13]) );
  AO22D0 U34 ( .A1(In_2[19]), .A2(In_1[19]), .B1(n32), .B2(In_3[19]), .Z(C[19]) );
  AO22D0 U36 ( .A1(In_2[2]), .A2(In_1[2]), .B1(n35), .B2(In_3[2]), .Z(C[2]) );
  AO22D0 U38 ( .A1(In_2[1]), .A2(In_1[1]), .B1(n33), .B2(In_3[1]), .Z(C[1]) );
  AO22D0 U40 ( .A1(In_2[5]), .A2(In_1[5]), .B1(n38), .B2(In_3[5]), .Z(C[5]) );
  AO22D0 U42 ( .A1(In_2[3]), .A2(In_1[3]), .B1(n36), .B2(In_3[3]), .Z(C[3]) );
  AO22D0 U44 ( .A1(In_2[4]), .A2(In_1[4]), .B1(n37), .B2(In_3[4]), .Z(C[4]) );
  AO22D0 U46 ( .A1(In_2[12]), .A2(In_1[12]), .B1(n25), .B2(In_3[12]), .Z(C[12]) );
  AO22D0 U48 ( .A1(In_2[10]), .A2(In_1[10]), .B1(n23), .B2(In_3[10]), .Z(C[10]) );
  AO22D0 U50 ( .A1(In_2[9]), .A2(In_1[9]), .B1(n42), .B2(In_3[9]), .Z(C[9]) );
  AO22D0 U52 ( .A1(In_2[11]), .A2(In_1[11]), .B1(n24), .B2(In_3[11]), .Z(C[11]) );
  AO22D0 U54 ( .A1(In_2[6]), .A2(In_1[6]), .B1(n39), .B2(In_3[6]), .Z(C[6]) );
  AO22D0 U56 ( .A1(In_2[7]), .A2(In_1[7]), .B1(n40), .B2(In_3[7]), .Z(C[7]) );
  AO22D0 U58 ( .A1(In_2[8]), .A2(In_1[8]), .B1(n41), .B2(In_3[8]), .Z(C[8]) );
  AO22D0 U60 ( .A1(In_2[14]), .A2(In_1[14]), .B1(n27), .B2(In_3[14]), .Z(C[14]) );
  XOR3D0 U9 ( .A1(In_1[20]), .A2(In_3[20]), .A3(In_2[20]), .Z(S[20]) );
  CKND1 U22 ( .I(n43), .ZN(C[0]) );
  CKND2D0 U39 ( .A1(In_3[0]), .A2(In_2[0]), .ZN(n43) );
endmodule


module CSA3_2_Array_WIDTH21_2 ( In_1, In_2, In_3, S, C );
  input [20:0] In_1;
  input [20:0] In_2;
  input [20:0] In_3;
  output [20:0] S;
  output [20:0] C;
  wire   n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n35, n36, n37,
         n38, n39, n40, n41, n42, n43;

  CKXOR2D1 U1 ( .A1(In_3[9]), .A2(n42), .Z(S[9]) );
  CKXOR2D1 U2 ( .A1(In_3[8]), .A2(n41), .Z(S[8]) );
  CKXOR2D1 U3 ( .A1(In_3[7]), .A2(n40), .Z(S[7]) );
  CKXOR2D1 U4 ( .A1(In_3[6]), .A2(n39), .Z(S[6]) );
  CKXOR2D1 U5 ( .A1(In_3[5]), .A2(n38), .Z(S[5]) );
  CKXOR2D1 U6 ( .A1(In_3[4]), .A2(n37), .Z(S[4]) );
  CKXOR2D1 U7 ( .A1(In_3[3]), .A2(n36), .Z(S[3]) );
  CKXOR2D1 U8 ( .A1(In_3[2]), .A2(n35), .Z(S[2]) );
  CKXOR2D1 U10 ( .A1(In_3[1]), .A2(n33), .Z(S[1]) );
  CKXOR2D1 U11 ( .A1(In_3[19]), .A2(n32), .Z(S[19]) );
  CKXOR2D1 U12 ( .A1(In_3[18]), .A2(n31), .Z(S[18]) );
  CKXOR2D1 U13 ( .A1(In_3[17]), .A2(n30), .Z(S[17]) );
  CKXOR2D1 U14 ( .A1(In_3[16]), .A2(n29), .Z(S[16]) );
  CKXOR2D1 U15 ( .A1(In_3[15]), .A2(n28), .Z(S[15]) );
  CKXOR2D1 U16 ( .A1(In_3[14]), .A2(n27), .Z(S[14]) );
  CKXOR2D1 U17 ( .A1(In_3[13]), .A2(n26), .Z(S[13]) );
  CKXOR2D1 U18 ( .A1(In_3[12]), .A2(n25), .Z(S[12]) );
  CKXOR2D1 U19 ( .A1(In_3[11]), .A2(n24), .Z(S[11]) );
  CKXOR2D1 U20 ( .A1(In_3[10]), .A2(n23), .Z(S[10]) );
  CKXOR2D1 U21 ( .A1(In_3[0]), .A2(In_1[0]), .Z(S[0]) );
  CKXOR2D1 U23 ( .A1(In_2[9]), .A2(In_1[9]), .Z(n42) );
  CKXOR2D1 U25 ( .A1(In_2[8]), .A2(In_1[8]), .Z(n41) );
  CKXOR2D1 U27 ( .A1(In_2[7]), .A2(In_1[7]), .Z(n40) );
  CKXOR2D1 U29 ( .A1(In_2[6]), .A2(In_1[6]), .Z(n39) );
  CKXOR2D1 U31 ( .A1(In_2[5]), .A2(In_1[5]), .Z(n38) );
  CKXOR2D1 U33 ( .A1(In_2[4]), .A2(In_1[4]), .Z(n37) );
  CKXOR2D1 U35 ( .A1(In_2[3]), .A2(In_1[3]), .Z(n36) );
  CKXOR2D1 U37 ( .A1(In_2[2]), .A2(In_1[2]), .Z(n35) );
  CKXOR2D1 U41 ( .A1(In_2[1]), .A2(In_1[1]), .Z(n33) );
  CKXOR2D1 U43 ( .A1(In_2[19]), .A2(In_1[19]), .Z(n32) );
  CKXOR2D1 U45 ( .A1(In_2[18]), .A2(In_1[18]), .Z(n31) );
  CKXOR2D1 U47 ( .A1(In_2[17]), .A2(In_1[17]), .Z(n30) );
  CKXOR2D1 U49 ( .A1(In_2[16]), .A2(In_1[16]), .Z(n29) );
  CKXOR2D1 U51 ( .A1(In_2[15]), .A2(In_1[15]), .Z(n28) );
  CKXOR2D1 U53 ( .A1(In_2[14]), .A2(In_1[14]), .Z(n27) );
  CKXOR2D1 U55 ( .A1(In_2[13]), .A2(In_1[13]), .Z(n26) );
  CKXOR2D1 U57 ( .A1(In_2[12]), .A2(In_1[12]), .Z(n25) );
  CKXOR2D1 U59 ( .A1(In_2[11]), .A2(In_1[11]), .Z(n24) );
  CKXOR2D1 U61 ( .A1(In_2[10]), .A2(In_1[10]), .Z(n23) );
  AO22D0 U24 ( .A1(In_2[14]), .A2(In_1[14]), .B1(n27), .B2(In_3[14]), .Z(C[14]) );
  AO22D0 U26 ( .A1(In_2[15]), .A2(In_1[15]), .B1(n28), .B2(In_3[15]), .Z(C[15]) );
  AO22D0 U28 ( .A1(In_2[16]), .A2(In_1[16]), .B1(n29), .B2(In_3[16]), .Z(C[16]) );
  AO22D0 U30 ( .A1(In_2[17]), .A2(In_1[17]), .B1(n30), .B2(In_3[17]), .Z(C[17]) );
  AO22D0 U32 ( .A1(In_2[18]), .A2(In_1[18]), .B1(n31), .B2(In_3[18]), .Z(C[18]) );
  AO22D0 U34 ( .A1(In_2[19]), .A2(In_1[19]), .B1(n32), .B2(In_3[19]), .Z(C[19]) );
  AO22D0 U36 ( .A1(In_2[13]), .A2(In_1[13]), .B1(n26), .B2(In_3[13]), .Z(C[13]) );
  AO22D0 U38 ( .A1(In_2[2]), .A2(In_1[2]), .B1(n35), .B2(In_3[2]), .Z(C[2]) );
  AO22D0 U40 ( .A1(In_2[5]), .A2(In_1[5]), .B1(n38), .B2(In_3[5]), .Z(C[5]) );
  AO22D0 U42 ( .A1(In_2[3]), .A2(In_1[3]), .B1(n36), .B2(In_3[3]), .Z(C[3]) );
  AO22D0 U44 ( .A1(In_2[4]), .A2(In_1[4]), .B1(n37), .B2(In_3[4]), .Z(C[4]) );
  AO22D0 U46 ( .A1(In_2[12]), .A2(In_1[12]), .B1(n25), .B2(In_3[12]), .Z(C[12]) );
  AO22D0 U48 ( .A1(In_2[10]), .A2(In_1[10]), .B1(n23), .B2(In_3[10]), .Z(C[10]) );
  AO22D0 U50 ( .A1(In_2[6]), .A2(In_1[6]), .B1(n39), .B2(In_3[6]), .Z(C[6]) );
  AO22D0 U52 ( .A1(In_2[7]), .A2(In_1[7]), .B1(n40), .B2(In_3[7]), .Z(C[7]) );
  AO22D0 U54 ( .A1(In_2[8]), .A2(In_1[8]), .B1(n41), .B2(In_3[8]), .Z(C[8]) );
  AO22D0 U56 ( .A1(In_2[9]), .A2(In_1[9]), .B1(n42), .B2(In_3[9]), .Z(C[9]) );
  AO22D0 U58 ( .A1(In_2[11]), .A2(In_1[11]), .B1(n24), .B2(In_3[11]), .Z(C[11]) );
  AO22D0 U62 ( .A1(In_2[1]), .A2(In_1[1]), .B1(n33), .B2(In_3[1]), .Z(C[1]) );
  XOR3D0 U9 ( .A1(In_1[20]), .A2(In_3[20]), .A3(In_2[20]), .Z(S[20]) );
  CKND1 U22 ( .I(n43), .ZN(C[0]) );
  CKND2D0 U39 ( .A1(In_3[0]), .A2(In_1[0]), .ZN(n43) );
endmodule


module CSA3_2_Array_WIDTH21_1 ( In_1, In_2, In_3, S, C );
  input [20:0] In_1;
  input [20:0] In_2;
  input [20:0] In_3;
  output [20:0] S;
  output [20:0] C;
  wire   In_1_0_, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n35,
         n36, n37, n38, n39, n40, n41, n42;
  assign S[0] = In_1_0_;
  assign In_1_0_ = In_1[0];

  CKXOR2D1 U1 ( .A1(In_3[9]), .A2(n42), .Z(S[9]) );
  CKXOR2D1 U2 ( .A1(In_3[8]), .A2(n41), .Z(S[8]) );
  CKXOR2D1 U3 ( .A1(In_3[7]), .A2(n40), .Z(S[7]) );
  CKXOR2D1 U4 ( .A1(In_3[6]), .A2(n39), .Z(S[6]) );
  CKXOR2D1 U5 ( .A1(In_3[5]), .A2(n38), .Z(S[5]) );
  CKXOR2D1 U6 ( .A1(In_3[4]), .A2(n37), .Z(S[4]) );
  CKXOR2D1 U7 ( .A1(In_3[3]), .A2(n36), .Z(S[3]) );
  CKXOR2D1 U8 ( .A1(In_3[2]), .A2(n35), .Z(S[2]) );
  CKXOR2D1 U10 ( .A1(In_3[1]), .A2(n33), .Z(S[1]) );
  CKXOR2D1 U11 ( .A1(In_3[19]), .A2(n32), .Z(S[19]) );
  CKXOR2D1 U12 ( .A1(In_3[18]), .A2(n31), .Z(S[18]) );
  CKXOR2D1 U13 ( .A1(In_3[17]), .A2(n30), .Z(S[17]) );
  CKXOR2D1 U14 ( .A1(In_3[16]), .A2(n29), .Z(S[16]) );
  CKXOR2D1 U15 ( .A1(In_3[15]), .A2(n28), .Z(S[15]) );
  CKXOR2D1 U16 ( .A1(In_3[14]), .A2(n27), .Z(S[14]) );
  CKXOR2D1 U17 ( .A1(In_3[13]), .A2(n26), .Z(S[13]) );
  CKXOR2D1 U18 ( .A1(In_3[12]), .A2(n25), .Z(S[12]) );
  CKXOR2D1 U19 ( .A1(In_3[11]), .A2(n24), .Z(S[11]) );
  CKXOR2D1 U20 ( .A1(In_3[10]), .A2(n23), .Z(S[10]) );
  CKXOR2D1 U23 ( .A1(In_2[9]), .A2(In_1[9]), .Z(n42) );
  CKXOR2D1 U25 ( .A1(In_2[8]), .A2(In_1[8]), .Z(n41) );
  CKXOR2D1 U27 ( .A1(In_2[7]), .A2(In_1[7]), .Z(n40) );
  CKXOR2D1 U29 ( .A1(In_2[6]), .A2(In_1[6]), .Z(n39) );
  CKXOR2D1 U31 ( .A1(In_2[5]), .A2(In_1[5]), .Z(n38) );
  CKXOR2D1 U33 ( .A1(In_2[4]), .A2(In_1[4]), .Z(n37) );
  CKXOR2D1 U35 ( .A1(In_2[3]), .A2(In_1[3]), .Z(n36) );
  CKXOR2D1 U37 ( .A1(In_2[2]), .A2(In_1[2]), .Z(n35) );
  CKXOR2D1 U41 ( .A1(In_2[1]), .A2(In_1[1]), .Z(n33) );
  CKXOR2D1 U43 ( .A1(In_2[19]), .A2(In_1[19]), .Z(n32) );
  CKXOR2D1 U45 ( .A1(In_2[18]), .A2(In_1[18]), .Z(n31) );
  CKXOR2D1 U47 ( .A1(In_2[17]), .A2(In_1[17]), .Z(n30) );
  CKXOR2D1 U49 ( .A1(In_2[16]), .A2(In_1[16]), .Z(n29) );
  CKXOR2D1 U51 ( .A1(In_2[15]), .A2(In_1[15]), .Z(n28) );
  CKXOR2D1 U53 ( .A1(In_2[14]), .A2(In_1[14]), .Z(n27) );
  CKXOR2D1 U55 ( .A1(In_2[13]), .A2(In_1[13]), .Z(n26) );
  CKXOR2D1 U57 ( .A1(In_2[12]), .A2(In_1[12]), .Z(n25) );
  CKXOR2D1 U59 ( .A1(In_2[11]), .A2(In_1[11]), .Z(n24) );
  CKXOR2D1 U61 ( .A1(In_2[10]), .A2(In_1[10]), .Z(n23) );
  AO22D0 U24 ( .A1(In_2[19]), .A2(In_1[19]), .B1(n32), .B2(In_3[19]), .Z(C[19]) );
  AO22D0 U26 ( .A1(In_2[13]), .A2(In_1[13]), .B1(n26), .B2(In_3[13]), .Z(C[13]) );
  AO22D0 U28 ( .A1(In_2[14]), .A2(In_1[14]), .B1(n27), .B2(In_3[14]), .Z(C[14]) );
  AO22D0 U30 ( .A1(In_2[15]), .A2(In_1[15]), .B1(n28), .B2(In_3[15]), .Z(C[15]) );
  AO22D0 U32 ( .A1(In_2[16]), .A2(In_1[16]), .B1(n29), .B2(In_3[16]), .Z(C[16]) );
  AO22D0 U34 ( .A1(In_2[17]), .A2(In_1[17]), .B1(n30), .B2(In_3[17]), .Z(C[17]) );
  AO22D0 U36 ( .A1(In_2[18]), .A2(In_1[18]), .B1(n31), .B2(In_3[18]), .Z(C[18]) );
  AO22D0 U38 ( .A1(In_2[12]), .A2(In_1[12]), .B1(n25), .B2(In_3[12]), .Z(C[12]) );
  AO22D0 U40 ( .A1(In_2[3]), .A2(In_1[3]), .B1(n36), .B2(In_3[3]), .Z(C[3]) );
  AO22D0 U42 ( .A1(In_2[4]), .A2(In_1[4]), .B1(n37), .B2(In_3[4]), .Z(C[4]) );
  AO22D0 U44 ( .A1(In_2[5]), .A2(In_1[5]), .B1(n38), .B2(In_3[5]), .Z(C[5]) );
  AO22D0 U46 ( .A1(In_2[6]), .A2(In_1[6]), .B1(n39), .B2(In_3[6]), .Z(C[6]) );
  AO22D0 U48 ( .A1(In_2[7]), .A2(In_1[7]), .B1(n40), .B2(In_3[7]), .Z(C[7]) );
  AO22D0 U50 ( .A1(In_2[8]), .A2(In_1[8]), .B1(n41), .B2(In_3[8]), .Z(C[8]) );
  AO22D0 U52 ( .A1(In_2[9]), .A2(In_1[9]), .B1(n42), .B2(In_3[9]), .Z(C[9]) );
  AO22D0 U54 ( .A1(In_2[10]), .A2(In_1[10]), .B1(n23), .B2(In_3[10]), .Z(C[10]) );
  AO22D0 U56 ( .A1(In_2[11]), .A2(In_1[11]), .B1(n24), .B2(In_3[11]), .Z(C[11]) );
  AO22D0 U60 ( .A1(In_2[2]), .A2(In_1[2]), .B1(n35), .B2(In_3[2]), .Z(C[2]) );
  AO22D0 U62 ( .A1(In_2[1]), .A2(In_1[1]), .B1(n33), .B2(In_3[1]), .Z(C[1]) );
  XOR3D0 U9 ( .A1(In_1[20]), .A2(In_3[20]), .A3(In_2[20]), .Z(S[20]) );
endmodule


module Mantissa_Div_L4_Kec_MANTISSA_WIDTH19_DW01_add_0 ( A, B, CI, SUM, CO );
  input [20:0] A;
  input [20:0] B;
  output [20:0] SUM;
  input CI;
  output CO;
  wire   A_1_;
  wire   [20:3] carry;
  assign SUM[1] = A_1_;
  assign A_1_ = A[1];

  FA1D0 U1_2 ( .A(A[2]), .B(B[2]), .CI(1'b0), .CO(carry[3]), .S(SUM[2]) );
  FA1D0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
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
  FA1D0 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
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
  XOR3D1 U1_20 ( .A1(A[20]), .A2(B[20]), .A3(carry[20]), .Z(SUM[20]) );
endmodule


module Mantissa_Div_L4_Kec_MANTISSA_WIDTH19_DW01_sub_0_DW01_sub_1 ( A, B, CI, 
        DIFF, CO );
  input [19:0] A;
  input [19:0] B;
  output [19:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21;
  wire   [19:3] carry;

  FA1D0 U2_18 ( .A(A[18]), .B(n1), .CI(carry[18]), .CO(carry[19]), .S(DIFF[18]) );
  FA1D0 U2_15 ( .A(A[15]), .B(n4), .CI(carry[15]), .CO(carry[16]), .S(DIFF[15]) );
  FA1D0 U2_10 ( .A(A[10]), .B(n9), .CI(carry[10]), .CO(carry[11]), .S(DIFF[10]) );
  FA1D0 U2_9 ( .A(A[9]), .B(n10), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  FA1D0 U2_8 ( .A(A[8]), .B(n11), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  FA1D0 U2_7 ( .A(A[7]), .B(n12), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  FA1D0 U2_6 ( .A(A[6]), .B(n13), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  FA1D0 U2_5 ( .A(A[5]), .B(n14), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  FA1D0 U2_4 ( .A(A[4]), .B(n15), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FA1D0 U2_16 ( .A(A[16]), .B(n3), .CI(carry[16]), .CO(carry[17]), .S(DIFF[16]) );
  FA1D0 U2_17 ( .A(A[17]), .B(n2), .CI(carry[17]), .CO(carry[18]), .S(DIFF[17]) );
  FA1D0 U2_14 ( .A(A[14]), .B(n5), .CI(carry[14]), .CO(carry[15]), .S(DIFF[14]) );
  FA1D0 U2_13 ( .A(A[13]), .B(n6), .CI(carry[13]), .CO(carry[14]), .S(DIFF[13]) );
  FA1D0 U2_12 ( .A(A[12]), .B(n7), .CI(carry[12]), .CO(carry[13]), .S(DIFF[12]) );
  FA1D0 U2_11 ( .A(A[11]), .B(n8), .CI(carry[11]), .CO(carry[12]), .S(DIFF[11]) );
  FA1D0 U2_3 ( .A(A[3]), .B(n16), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  INVD1 U1 ( .I(A[1]), .ZN(n17) );
  INVD1 U2 ( .I(B[3]), .ZN(n16) );
  INVD1 U3 ( .I(B[11]), .ZN(n8) );
  INVD1 U4 ( .I(B[12]), .ZN(n7) );
  INVD1 U5 ( .I(B[13]), .ZN(n6) );
  INVD1 U6 ( .I(B[14]), .ZN(n5) );
  INVD1 U7 ( .I(B[17]), .ZN(n2) );
  INVD1 U8 ( .I(B[16]), .ZN(n3) );
  INVD1 U9 ( .I(B[4]), .ZN(n15) );
  INVD1 U10 ( .I(B[5]), .ZN(n14) );
  INVD1 U11 ( .I(B[6]), .ZN(n13) );
  INVD1 U12 ( .I(B[7]), .ZN(n12) );
  INVD1 U13 ( .I(B[8]), .ZN(n11) );
  INVD1 U14 ( .I(B[9]), .ZN(n10) );
  INVD1 U15 ( .I(B[10]), .ZN(n9) );
  INVD1 U16 ( .I(B[15]), .ZN(n4) );
  INVD1 U17 ( .I(B[18]), .ZN(n1) );
  MOAI22D0 U18 ( .A1(B[2]), .A2(n18), .B1(n19), .B2(A[2]), .ZN(carry[3]) );
  NR2D0 U19 ( .A1(A[2]), .A2(n19), .ZN(n18) );
  OAI22D0 U20 ( .A1(n20), .A2(n17), .B1(B[1]), .B2(n21), .ZN(n19) );
  AN2D0 U21 ( .A1(n20), .A2(n17), .Z(n21) );
  INR2D0 U22 ( .A1(B[0]), .B1(A[0]), .ZN(n20) );
  CKND0 U23 ( .I(carry[19]), .ZN(DIFF[19]) );
endmodule


module Mantissa_Div_L4_Kec_MANTISSA_WIDTH19_DW01_sub_1_DW01_sub_2 ( A, B, CI, 
        DIFF, CO );
  input [19:0] A;
  input [19:0] B;
  output [19:0] DIFF;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19;
  wire   [19:1] carry;

  FA1D0 U2_18 ( .A(A[18]), .B(n2), .CI(carry[18]), .CO(carry[19]), .S(DIFF[18]) );
  FA1D0 U2_2 ( .A(A[2]), .B(n18), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  FA1D0 U2_1 ( .A(A[1]), .B(n19), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  FA1D0 U2_17 ( .A(A[17]), .B(n3), .CI(carry[17]), .CO(carry[18]), .S(DIFF[17]) );
  FA1D0 U2_16 ( .A(A[16]), .B(n4), .CI(carry[16]), .CO(carry[17]), .S(DIFF[16]) );
  FA1D0 U2_15 ( .A(A[15]), .B(n5), .CI(carry[15]), .CO(carry[16]), .S(DIFF[15]) );
  FA1D0 U2_14 ( .A(A[14]), .B(n6), .CI(carry[14]), .CO(carry[15]), .S(DIFF[14]) );
  FA1D0 U2_13 ( .A(A[13]), .B(n7), .CI(carry[13]), .CO(carry[14]), .S(DIFF[13]) );
  FA1D0 U2_12 ( .A(A[12]), .B(n8), .CI(carry[12]), .CO(carry[13]), .S(DIFF[12]) );
  FA1D0 U2_11 ( .A(A[11]), .B(n9), .CI(carry[11]), .CO(carry[12]), .S(DIFF[11]) );
  FA1D0 U2_10 ( .A(A[10]), .B(n10), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  FA1D0 U2_9 ( .A(A[9]), .B(n11), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  FA1D0 U2_8 ( .A(A[8]), .B(n12), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  FA1D0 U2_7 ( .A(A[7]), .B(n13), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  FA1D0 U2_6 ( .A(A[6]), .B(n14), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  FA1D0 U2_5 ( .A(A[5]), .B(n15), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  FA1D0 U2_4 ( .A(A[4]), .B(n16), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FA1D0 U2_3 ( .A(A[3]), .B(n17), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  INVD1 U1 ( .I(B[3]), .ZN(n17) );
  INVD1 U2 ( .I(B[4]), .ZN(n16) );
  INVD1 U3 ( .I(B[5]), .ZN(n15) );
  INVD1 U4 ( .I(B[6]), .ZN(n14) );
  INVD1 U5 ( .I(B[7]), .ZN(n13) );
  INVD1 U6 ( .I(B[8]), .ZN(n12) );
  INVD1 U7 ( .I(B[9]), .ZN(n11) );
  INVD1 U8 ( .I(B[10]), .ZN(n10) );
  INVD1 U9 ( .I(B[11]), .ZN(n9) );
  INVD1 U10 ( .I(B[12]), .ZN(n8) );
  INVD1 U11 ( .I(B[13]), .ZN(n7) );
  INVD1 U12 ( .I(B[14]), .ZN(n6) );
  INVD1 U13 ( .I(B[15]), .ZN(n5) );
  INVD1 U14 ( .I(B[16]), .ZN(n4) );
  INVD1 U15 ( .I(B[17]), .ZN(n3) );
  INVD1 U17 ( .I(B[1]), .ZN(n19) );
  INVD1 U19 ( .I(B[2]), .ZN(n18) );
  INVD1 U20 ( .I(B[18]), .ZN(n2) );
  CKND0 U23 ( .I(carry[19]), .ZN(DIFF[19]) );
  CKXOR2D0 U16 ( .A1(A[0]), .A2(B[0]), .Z(DIFF[0]) );
  IND2D0 U18 ( .A1(A[0]), .B1(B[0]), .ZN(carry[1]) );
endmodule


module Mantissa_Div_L4_Kec_MANTISSA_WIDTH19 ( Mantissa_X, Mantissa_Y, 
        Mantissa_Out, Shift );
  input [18:0] Mantissa_X;
  input [18:0] Mantissa_Y;
  output [18:0] Mantissa_Out;
  output Shift;
  wire   n13, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n102, n1, n2,
         n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n101, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179,
         n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190,
         n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201,
         n202, n203, n204, n205, n206, n207, n208, n209, n210, n211;
  wire   [19:0] x_sub_y;
  wire   [19:3] y_sub_x;
  wire   [20:0] L1_p2;
  wire   [20:0] L2_p;
  wire   [16:0] L3_p1;
  wire   [14:0] L3_p2;
  wire   [15:0] L4_p1;
  wire   [20:0] L4_p2;
  wire   [20:0] A11S;
  wire   [19:0] A11C;
  wire   [20:0] A12S;
  wire   [19:0] A12C;
  wire   [20:0] A21S;
  wire   [19:0] A21C;
  wire   [20:0] A22S;
  wire   [19:0] A22C;
  wire   [20:0] A31S;
  wire   [19:0] A31C;
  wire   [20:0] A41S;
  wire   [19:1] A41C;
  wire   [19:1] Res;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10;

  CSA3_2_Array_WIDTH21_0 Stage_1_1 ( .In_1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0}), .In_2({x_sub_y[19], x_sub_y}), .In_3({L1_p2[20], 
        L1_p2[20], L1_p2[20], L1_p2[17:0]}), .S(A11S), .C({
        SYNOPSYS_UNCONNECTED__0, A11C}) );
  CSA3_2_Array_WIDTH21_5 Stage_1_2 ( .In_1({L2_p[20], L2_p[20], L2_p[20], 
        L2_p[20], L2_p[16:0]}), .In_2({L3_p1[16], L3_p1[16], L3_p1[16], 
        L3_p1[16], L3_p1}), .In_3({L3_p2[14], L3_p2[14], L3_p2[14], L3_p2[14], 
        L3_p2[14], L3_p2[14], L3_p2}), .S(A12S), .C({SYNOPSYS_UNCONNECTED__1, 
        A12C}) );
  CSA3_2_Array_WIDTH21_4 Stage_2_1 ( .In_1(A11S), .In_2({A11C, 1'b0}), .In_3(
        A12S), .S(A21S), .C({SYNOPSYS_UNCONNECTED__2, A21C}) );
  CSA3_2_Array_WIDTH21_3 Stage_2_2 ( .In_1({A12C, 1'b0}), .In_2({L4_p1[15], 
        L4_p1[15], L4_p1[15], L4_p1[15], L4_p1[15], L4_p1}), .In_3({L4_p2[20], 
        L4_p2[20], L4_p2[20], L4_p2[20], L4_p2[20], L4_p2[20], L4_p2[20], 
        L4_p2[20], L4_p2[12:0]}), .S(A22S), .C({SYNOPSYS_UNCONNECTED__3, A22C}) );
  CSA3_2_Array_WIDTH21_2 Stage_3_1 ( .In_1(A21S), .In_2({A21C, 1'b0}), .In_3(
        A22S), .S(A31S), .C({SYNOPSYS_UNCONNECTED__4, A31C}) );
  CSA3_2_Array_WIDTH21_1 Stage_4_1 ( .In_1(A31S), .In_2({A31C, 1'b0}), .In_3({
        A22C, 1'b0}), .S(A41S), .C({SYNOPSYS_UNCONNECTED__5, A41C, 
        SYNOPSYS_UNCONNECTED__6}) );
  Mantissa_Div_L4_Kec_MANTISSA_WIDTH19_DW01_add_0 add_205 ( .A(A41S), .B({A41C, 
        1'b0, n13}), .CI(n13), .SUM({Shift, Res, SYNOPSYS_UNCONNECTED__7}) );
  Mantissa_Div_L4_Kec_MANTISSA_WIDTH19_DW01_sub_0_DW01_sub_1 sub_18 ( .A({n13, 
        Mantissa_Y}), .B({n13, Mantissa_X}), .CI(n13), .DIFF({y_sub_x, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10}) );
  Mantissa_Div_L4_Kec_MANTISSA_WIDTH19_DW01_sub_1_DW01_sub_2 sub_17 ( .A({n13, 
        Mantissa_X}), .B({n13, Mantissa_Y}), .CI(n13), .DIFF(x_sub_y) );
  INVD1 U3 ( .I(n121), .ZN(n152) );
  OAI32D1 U4 ( .A1(n159), .A2(n152), .A3(n145), .B1(n116), .B2(n121), .ZN(
        L3_p2[14]) );
  OAI21D1 U5 ( .A1(n101), .A2(n76), .B(n75), .ZN(L4_p1[15]) );
  NR3D0 U6 ( .A1(n103), .A2(n211), .A3(n168), .ZN(n82) );
  ND2D1 U8 ( .A1(n172), .A2(n171), .ZN(n78) );
  OAI222D0 U9 ( .A1(n180), .A2(n77), .B1(n78), .B2(n178), .C1(n171), .C2(n179), 
        .ZN(Mantissa_Out[11]) );
  OAI222D0 U10 ( .A1(n77), .A2(n185), .B1(n78), .B2(n182), .C1(n184), .C2(n171), .ZN(Mantissa_Out[8]) );
  OAI222D0 U11 ( .A1(n77), .A2(n184), .B1(n78), .B2(n180), .C1(n182), .C2(n171), .ZN(Mantissa_Out[9]) );
  OAI222D0 U12 ( .A1(n77), .A2(n182), .B1(n78), .B2(n179), .C1(n180), .C2(n171), .ZN(Mantissa_Out[10]) );
  OAI222D0 U13 ( .A1(n77), .A2(n189), .B1(n78), .B2(n187), .C1(n171), .C2(n188), .ZN(Mantissa_Out[4]) );
  OAI222D0 U14 ( .A1(n77), .A2(n188), .B1(n78), .B2(n186), .C1(n171), .C2(n187), .ZN(Mantissa_Out[5]) );
  OAI222D0 U15 ( .A1(n77), .A2(n187), .B1(n78), .B2(n185), .C1(n171), .C2(n186), .ZN(Mantissa_Out[6]) );
  OAI222D0 U16 ( .A1(n77), .A2(n186), .B1(n78), .B2(n184), .C1(n171), .C2(n185), .ZN(Mantissa_Out[7]) );
  OAI222D0 U17 ( .A1(n77), .A2(n179), .B1(n78), .B2(n177), .C1(n171), .C2(n178), .ZN(Mantissa_Out[12]) );
  OAI222D0 U18 ( .A1(n77), .A2(n178), .B1(n78), .B2(n176), .C1(n171), .C2(n177), .ZN(Mantissa_Out[13]) );
  OAI222D0 U19 ( .A1(n77), .A2(n177), .B1(n78), .B2(n175), .C1(n171), .C2(n176), .ZN(Mantissa_Out[14]) );
  OAI222D0 U20 ( .A1(n77), .A2(n176), .B1(n78), .B2(n174), .C1(n171), .C2(n175), .ZN(Mantissa_Out[15]) );
  OAI222D0 U21 ( .A1(n77), .A2(n175), .B1(n78), .B2(n173), .C1(n171), .C2(n174), .ZN(Mantissa_Out[16]) );
  OAI22D1 U22 ( .A1(n171), .A2(n173), .B1(n77), .B2(n174), .ZN(
        Mantissa_Out[17]) );
  OAI22D1 U23 ( .A1(n77), .A2(n173), .B1(n172), .B2(n171), .ZN(
        Mantissa_Out[18]) );
  INVD1 U24 ( .I(Shift), .ZN(n171) );
  OAI222D0 U25 ( .A1(n77), .A2(n190), .B1(n78), .B2(n188), .C1(n171), .C2(n189), .ZN(Mantissa_Out[3]) );
  ND2D1 U26 ( .A1(Res[19]), .A2(n171), .ZN(n77) );
  INVD1 U27 ( .I(Res[19]), .ZN(n172) );
  INVD1 U28 ( .I(Res[18]), .ZN(n173) );
  INVD1 U29 ( .I(n125), .ZN(n148) );
  INVD1 U30 ( .I(Res[17]), .ZN(n174) );
  INVD1 U31 ( .I(Res[16]), .ZN(n175) );
  INVD1 U32 ( .I(Res[15]), .ZN(n176) );
  INVD1 U33 ( .I(Res[14]), .ZN(n177) );
  INVD1 U34 ( .I(Res[13]), .ZN(n178) );
  INVD1 U35 ( .I(Res[12]), .ZN(n179) );
  INVD1 U36 ( .I(Res[11]), .ZN(n180) );
  INVD1 U37 ( .I(Res[10]), .ZN(n182) );
  INVD1 U38 ( .I(Res[9]), .ZN(n184) );
  INVD1 U39 ( .I(Res[8]), .ZN(n185) );
  INVD1 U40 ( .I(Res[7]), .ZN(n186) );
  INVD1 U41 ( .I(Res[6]), .ZN(n187) );
  INVD1 U42 ( .I(Res[5]), .ZN(n188) );
  INVD1 U43 ( .I(Res[4]), .ZN(n189) );
  INVD1 U44 ( .I(y_sub_x[19]), .ZN(n159) );
  OAI222D0 U45 ( .A1(n77), .A2(n191), .B1(n78), .B2(n189), .C1(n171), .C2(n190), .ZN(Mantissa_Out[2]) );
  INVD1 U46 ( .I(n68), .ZN(n113) );
  INVD1 U47 ( .I(x_sub_y[19]), .ZN(n116) );
  OAI221D1 U48 ( .A1(n91), .A2(n159), .B1(n207), .B2(n116), .C(n92), .ZN(
        L4_p2[20]) );
  OA22D0 U49 ( .A1(n80), .A2(n159), .B1(n79), .B2(n116), .Z(n92) );
  OAI221D0 U50 ( .A1(n91), .A2(n158), .B1(n207), .B2(n181), .C(n92), .ZN(
        L4_p2[12]) );
  INVD1 U51 ( .I(n59), .ZN(n108) );
  INVD1 U52 ( .I(n19), .ZN(n106) );
  INVD1 U53 ( .I(n21), .ZN(n104) );
  INVD1 U54 ( .I(n91), .ZN(n209) );
  INVD1 U55 ( .I(n82), .ZN(n207) );
  INVD1 U56 ( .I(Res[3]), .ZN(n190) );
  INVD1 U57 ( .I(n101), .ZN(n114) );
  INVD1 U58 ( .I(n74), .ZN(n115) );
  OAI222D0 U59 ( .A1(n77), .A2(n192), .B1(n78), .B2(n190), .C1(n171), .C2(n191), .ZN(Mantissa_Out[1]) );
  INVD1 U60 ( .I(y_sub_x[14]), .ZN(n109) );
  INVD1 U61 ( .I(y_sub_x[15]), .ZN(n110) );
  INVD1 U62 ( .I(x_sub_y[16]), .ZN(n112) );
  INVD1 U63 ( .I(n7), .ZN(n105) );
  INVD1 U64 ( .I(x_sub_y[12]), .ZN(n164) );
  INVD1 U65 ( .I(y_sub_x[17]), .ZN(n157) );
  INVD1 U66 ( .I(x_sub_y[13]), .ZN(n165) );
  INVD1 U67 ( .I(x_sub_y[14]), .ZN(n166) );
  INVD1 U68 ( .I(x_sub_y[15]), .ZN(n167) );
  INVD1 U69 ( .I(y_sub_x[18]), .ZN(n158) );
  INVD1 U70 ( .I(x_sub_y[10]), .ZN(n162) );
  INVD1 U71 ( .I(x_sub_y[11]), .ZN(n163) );
  INVD1 U72 ( .I(x_sub_y[8]), .ZN(n160) );
  INVD1 U73 ( .I(x_sub_y[9]), .ZN(n161) );
  INVD1 U74 ( .I(y_sub_x[8]), .ZN(n156) );
  INVD1 U75 ( .I(y_sub_x[7]), .ZN(n155) );
  INVD1 U76 ( .I(y_sub_x[6]), .ZN(n154) );
  INVD1 U78 ( .I(x_sub_y[6]), .ZN(n111) );
  OAI222D0 U79 ( .A1(n73), .A2(n157), .B1(n183), .B2(n208), .C1(n96), .C2(n112), .ZN(L2_p[14]) );
  INVD1 U80 ( .I(y_sub_x[5]), .ZN(n153) );
  OAI222D0 U81 ( .A1(n73), .A2(n158), .B1(n181), .B2(n208), .C1(n168), .C2(
        n183), .ZN(L2_p[15]) );
  OAI222D0 U82 ( .A1(n73), .A2(n200), .B1(n165), .B2(n208), .C1(n96), .C2(n164), .ZN(L2_p[10]) );
  OAI222D0 U83 ( .A1(n73), .A2(n202), .B1(n163), .B2(n208), .C1(n168), .C2(
        n162), .ZN(L2_p[8]) );
  OAI222D0 U84 ( .A1(n73), .A2(n109), .B1(n166), .B2(n208), .C1(n168), .C2(
        n165), .ZN(L2_p[11]) );
  OAI222D0 U85 ( .A1(n73), .A2(n203), .B1(n162), .B2(n208), .C1(n96), .C2(n161), .ZN(L2_p[7]) );
  OAI222D0 U86 ( .A1(n73), .A2(n201), .B1(n164), .B2(n208), .C1(n96), .C2(n163), .ZN(L2_p[9]) );
  OAI222D0 U87 ( .A1(n73), .A2(n110), .B1(n167), .B2(n208), .C1(n96), .C2(n166), .ZN(L2_p[12]) );
  INVD1 U88 ( .I(y_sub_x[10]), .ZN(n203) );
  INVD1 U89 ( .I(y_sub_x[11]), .ZN(n202) );
  INVD1 U90 ( .I(y_sub_x[12]), .ZN(n201) );
  INVD1 U91 ( .I(y_sub_x[13]), .ZN(n200) );
  OAI222D0 U92 ( .A1(n199), .A2(n73), .B1(n112), .B2(n208), .C1(n168), .C2(
        n167), .ZN(L2_p[13]) );
  INVD1 U93 ( .I(y_sub_x[16]), .ZN(n199) );
  OAI222D0 U94 ( .A1(n73), .A2(n156), .B1(n160), .B2(n208), .C1(n96), .C2(n194), .ZN(L2_p[5]) );
  OAI222D0 U95 ( .A1(n73), .A2(n155), .B1(n194), .B2(n208), .C1(n168), .C2(
        n111), .ZN(L2_p[4]) );
  OAI222D0 U96 ( .A1(n73), .A2(n204), .B1(n161), .B2(n208), .C1(n168), .C2(
        n160), .ZN(L2_p[6]) );
  INVD1 U97 ( .I(y_sub_x[9]), .ZN(n204) );
  AOI22D1 U98 ( .A1(n210), .A2(y_sub_x[19]), .B1(x_sub_y[19]), .B2(n100), .ZN(
        n102) );
  OAI21D1 U99 ( .A1(n96), .A2(n181), .B(n102), .ZN(L2_p[16]) );
  INVD1 U100 ( .I(x_sub_y[17]), .ZN(n183) );
  INVD1 U101 ( .I(x_sub_y[18]), .ZN(n181) );
  OAI222D0 U102 ( .A1(n73), .A2(n154), .B1(n111), .B2(n208), .C1(n96), .C2(
        n195), .ZN(L2_p[3]) );
  INVD1 U103 ( .I(x_sub_y[7]), .ZN(n194) );
  OAI221D0 U104 ( .A1(n79), .A2(n112), .B1(n80), .B2(n199), .C(n81), .ZN(
        L4_p2[9]) );
  AOI22D1 U105 ( .A1(y_sub_x[15]), .A2(n209), .B1(x_sub_y[15]), .B2(n82), .ZN(
        n81) );
  OAI222D0 U106 ( .A1(n153), .A2(n73), .B1(n195), .B2(n208), .C1(n196), .C2(
        n96), .ZN(L2_p[2]) );
  OAI221D0 U107 ( .A1(n79), .A2(n162), .B1(n80), .B2(n203), .C(n88), .ZN(
        L4_p2[3]) );
  AOI22D1 U108 ( .A1(y_sub_x[9]), .A2(n209), .B1(x_sub_y[9]), .B2(n82), .ZN(
        n88) );
  OAI221D0 U109 ( .A1(n79), .A2(n163), .B1(n80), .B2(n202), .C(n87), .ZN(
        L4_p2[4]) );
  AOI22D1 U110 ( .A1(y_sub_x[10]), .A2(n209), .B1(x_sub_y[10]), .B2(n82), .ZN(
        n87) );
  OAI221D0 U111 ( .A1(n79), .A2(n164), .B1(n80), .B2(n201), .C(n86), .ZN(
        L4_p2[5]) );
  AOI22D1 U112 ( .A1(y_sub_x[11]), .A2(n209), .B1(x_sub_y[11]), .B2(n82), .ZN(
        n86) );
  OAI221D0 U113 ( .A1(n79), .A2(n165), .B1(n80), .B2(n200), .C(n85), .ZN(
        L4_p2[6]) );
  AOI22D1 U114 ( .A1(y_sub_x[12]), .A2(n209), .B1(x_sub_y[12]), .B2(n82), .ZN(
        n85) );
  OAI221D0 U115 ( .A1(n79), .A2(n166), .B1(n80), .B2(n109), .C(n84), .ZN(
        L4_p2[7]) );
  AOI22D1 U116 ( .A1(y_sub_x[13]), .A2(n209), .B1(x_sub_y[13]), .B2(n82), .ZN(
        n84) );
  OAI221D0 U117 ( .A1(n79), .A2(n167), .B1(n80), .B2(n110), .C(n83), .ZN(
        L4_p2[8]) );
  AOI22D1 U118 ( .A1(y_sub_x[14]), .A2(n209), .B1(x_sub_y[14]), .B2(n82), .ZN(
        n83) );
  OAI21D1 U119 ( .A1(n96), .A2(n116), .B(n102), .ZN(L2_p[20]) );
  OAI221D0 U120 ( .A1(n79), .A2(n183), .B1(n80), .B2(n157), .C(n94), .ZN(
        L4_p2[10]) );
  AOI22D1 U121 ( .A1(n209), .A2(y_sub_x[16]), .B1(n82), .B2(x_sub_y[16]), .ZN(
        n94) );
  OAI221D0 U122 ( .A1(n79), .A2(n181), .B1(n80), .B2(n158), .C(n93), .ZN(
        L4_p2[11]) );
  AOI22D1 U123 ( .A1(y_sub_x[17]), .A2(n209), .B1(x_sub_y[17]), .B2(n82), .ZN(
        n93) );
  OAI221D0 U124 ( .A1(n79), .A2(n161), .B1(n80), .B2(n204), .C(n89), .ZN(
        L4_p2[2]) );
  AOI22D1 U125 ( .A1(y_sub_x[8]), .A2(n209), .B1(x_sub_y[8]), .B2(n82), .ZN(
        n89) );
  INVD1 U126 ( .I(x_sub_y[5]), .ZN(n195) );
  INVD1 U127 ( .I(n117), .ZN(n145) );
  OAI221D0 U128 ( .A1(n79), .A2(n160), .B1(n80), .B2(n156), .C(n90), .ZN(
        L4_p2[1]) );
  AOI22D1 U129 ( .A1(y_sub_x[7]), .A2(n209), .B1(x_sub_y[7]), .B2(n82), .ZN(
        n90) );
  OAI222D0 U130 ( .A1(n205), .A2(n73), .B1(n196), .B2(n208), .C1(n197), .C2(
        n96), .ZN(L2_p[1]) );
  INVD1 U131 ( .I(y_sub_x[4]), .ZN(n205) );
  INVD1 U132 ( .I(x_sub_y[4]), .ZN(n196) );
  INVD1 U133 ( .I(n126), .ZN(n151) );
  NR2D1 U134 ( .A1(n116), .A2(Mantissa_Y[18]), .ZN(L1_p2[20]) );
  INVD1 U135 ( .I(n60), .ZN(n107) );
  INVD1 U136 ( .I(n124), .ZN(n150) );
  NR2D1 U137 ( .A1(Mantissa_Y[18]), .A2(n164), .ZN(L1_p2[11]) );
  NR2D1 U138 ( .A1(Mantissa_Y[18]), .A2(n112), .ZN(L1_p2[15]) );
  NR2D1 U139 ( .A1(Mantissa_Y[18]), .A2(n167), .ZN(L1_p2[14]) );
  NR2D1 U140 ( .A1(Mantissa_Y[18]), .A2(n165), .ZN(L1_p2[12]) );
  NR2D1 U141 ( .A1(Mantissa_Y[18]), .A2(n166), .ZN(L1_p2[13]) );
  NR2D1 U142 ( .A1(Mantissa_Y[18]), .A2(n183), .ZN(L1_p2[16]) );
  NR2D1 U143 ( .A1(Mantissa_Y[18]), .A2(n162), .ZN(L1_p2[9]) );
  NR2D1 U144 ( .A1(Mantissa_Y[18]), .A2(n163), .ZN(L1_p2[10]) );
  NR2D1 U145 ( .A1(Mantissa_Y[18]), .A2(n181), .ZN(L1_p2[17]) );
  NR2D1 U146 ( .A1(Mantissa_Y[18]), .A2(n160), .ZN(L1_p2[7]) );
  NR2D1 U147 ( .A1(Mantissa_Y[18]), .A2(n161), .ZN(L1_p2[8]) );
  NR2D1 U150 ( .A1(Mantissa_Y[18]), .A2(n194), .ZN(L1_p2[6]) );
  OAI222D0 U151 ( .A1(n206), .A2(n73), .B1(n197), .B2(n208), .C1(n198), .C2(
        n96), .ZN(L2_p[0]) );
  INVD1 U152 ( .I(y_sub_x[3]), .ZN(n206) );
  INVD1 U153 ( .I(x_sub_y[3]), .ZN(n197) );
  NR2D1 U154 ( .A1(Mantissa_Y[18]), .A2(n111), .ZN(L1_p2[5]) );
  OAI221D0 U155 ( .A1(n79), .A2(n194), .B1(n80), .B2(n155), .C(n95), .ZN(
        L4_p2[0]) );
  AOI22D1 U156 ( .A1(y_sub_x[6]), .A2(n209), .B1(x_sub_y[6]), .B2(n82), .ZN(
        n95) );
  NR2D1 U157 ( .A1(Mantissa_Y[18]), .A2(n195), .ZN(L1_p2[4]) );
  NR2D1 U158 ( .A1(Mantissa_Y[18]), .A2(n196), .ZN(L1_p2[3]) );
  NR2D1 U159 ( .A1(Mantissa_Y[18]), .A2(n197), .ZN(L1_p2[2]) );
  INR2D1 U160 ( .A1(n12), .B1(n103), .ZN(n69) );
  INVD1 U161 ( .I(x_sub_y[2]), .ZN(n198) );
  ND2D1 U162 ( .A1(Mantissa_Y[18]), .A2(n117), .ZN(n120) );
  INVD1 U163 ( .I(n100), .ZN(n208) );
  NR2D1 U164 ( .A1(Mantissa_Y[18]), .A2(n198), .ZN(L1_p2[1]) );
  ND3D1 U165 ( .A1(n170), .A2(n146), .A3(n211), .ZN(n119) );
  ND2D1 U166 ( .A1(n211), .A2(n103), .ZN(n66) );
  INR2D1 U167 ( .A1(x_sub_y[1]), .B1(Mantissa_Y[18]), .ZN(L1_p2[0]) );
  OA22D0 U168 ( .A1(n97), .A2(n96), .B1(n98), .B2(n99), .Z(n80) );
  NR2D1 U169 ( .A1(n100), .A2(n210), .ZN(n98) );
  INVD1 U170 ( .I(n73), .ZN(n210) );
  ND3D1 U171 ( .A1(n103), .A2(n211), .A3(n210), .ZN(n91) );
  OA22D0 U172 ( .A1(n99), .A2(n168), .B1(n98), .B2(n97), .Z(n79) );
  INVD1 U173 ( .I(Res[2]), .ZN(n191) );
  INVD1 U174 ( .I(Mantissa_Y[17]), .ZN(n146) );
  NR2D1 U175 ( .A1(n170), .A2(Mantissa_Y[17]), .ZN(n100) );
  INVD1 U176 ( .I(Mantissa_Y[15]), .ZN(n103) );
  IND2D1 U177 ( .A1(Mantissa_Y[17]), .B1(n170), .ZN(n96) );
  ND2D1 U178 ( .A1(Mantissa_Y[16]), .A2(n103), .ZN(n57) );
  NR2D1 U179 ( .A1(n170), .A2(Mantissa_Y[17]), .ZN(n70) );
  IND2D1 U180 ( .A1(Mantissa_Y[17]), .B1(n170), .ZN(n168) );
  INVD1 U181 ( .I(Mantissa_Y[16]), .ZN(n211) );
  ND2D1 U182 ( .A1(Mantissa_Y[15]), .A2(n211), .ZN(n99) );
  ND2D1 U183 ( .A1(Mantissa_Y[16]), .A2(n103), .ZN(n97) );
  INVD1 U184 ( .I(Res[1]), .ZN(n192) );
  OAI222D0 U185 ( .A1(n193), .A2(n77), .B1(n191), .B2(n78), .C1(n192), .C2(
        n171), .ZN(Mantissa_Out[0]) );
  INVD1 U186 ( .I(A41S[0]), .ZN(n193) );
  TIEL U189 ( .ZN(n13) );
  NR2D0 U190 ( .A1(Mantissa_Y[18]), .A2(Mantissa_Y[17]), .ZN(n12) );
  CKND2D0 U191 ( .A1(n12), .A2(n103), .ZN(n21) );
  OAI21D0 U192 ( .A1(Mantissa_Y[18]), .A2(n66), .B(n21), .ZN(n7) );
  INR2D0 U193 ( .A1(Mantissa_Y[17]), .B1(n170), .ZN(n76) );
  INR2D0 U194 ( .A1(n76), .B1(Mantissa_Y[15]), .ZN(n3) );
  CKND2D0 U195 ( .A1(n3), .A2(n211), .ZN(n59) );
  AOI22D0 U196 ( .A1(x_sub_y[4]), .A2(n7), .B1(x_sub_y[6]), .B2(n108), .ZN(n6)
         );
  MOAI22D0 U197 ( .A1(n57), .A2(n195), .B1(Mantissa_Y[15]), .B2(y_sub_x[5]), 
        .ZN(n2) );
  CKND2D0 U198 ( .A1(Mantissa_Y[17]), .A2(n170), .ZN(n73) );
  OAI222D0 U199 ( .A1(n66), .A2(n195), .B1(n57), .B2(n111), .C1(n103), .C2(
        n154), .ZN(n1) );
  AOI22D0 U200 ( .A1(n2), .A2(n210), .B1(n1), .B2(n70), .ZN(n5) );
  CKND2D0 U201 ( .A1(Mantissa_Y[15]), .A2(n211), .ZN(n65) );
  INR2D0 U202 ( .A1(n76), .B1(n65), .ZN(n19) );
  CKND2D0 U203 ( .A1(n3), .A2(Mantissa_Y[16]), .ZN(n60) );
  AOI222D0 U204 ( .A1(y_sub_x[7]), .A2(n19), .B1(x_sub_y[7]), .B2(n107), .C1(
        y_sub_x[4]), .C2(n69), .ZN(n4) );
  ND3D0 U205 ( .A1(n6), .A2(n5), .A3(n4), .ZN(L4_p1[0]) );
  OA22D0 U206 ( .A1(y_sub_x[8]), .A2(n103), .B1(x_sub_y[7]), .B2(
        Mantissa_Y[15]), .Z(n15) );
  AOI22D0 U207 ( .A1(n154), .A2(Mantissa_Y[15]), .B1(n111), .B2(n103), .ZN(n11) );
  MOAI22D0 U208 ( .A1(n65), .A2(n154), .B1(n11), .B2(Mantissa_Y[16]), .ZN(n8)
         );
  AOI32D0 U209 ( .A1(n15), .A2(n211), .A3(n76), .B1(n8), .B2(n210), .ZN(n10)
         );
  OA222D0 U210 ( .A1(x_sub_y[6]), .A2(n66), .B1(x_sub_y[7]), .B2(n57), .C1(
        y_sub_x[7]), .C2(n103), .Z(n14) );
  AOI222D0 U211 ( .A1(n70), .A2(n14), .B1(x_sub_y[8]), .B2(n107), .C1(
        y_sub_x[5]), .C2(n69), .ZN(n9) );
  OAI211D0 U212 ( .A1(n105), .A2(n195), .B(n10), .C(n9), .ZN(L4_p1[1]) );
  AOI222D0 U213 ( .A1(y_sub_x[9]), .A2(n19), .B1(n210), .B2(n14), .C1(n12), 
        .C2(n11), .ZN(n18) );
  OR2D0 U214 ( .A1(y_sub_x[8]), .A2(n103), .Z(n16) );
  OA222D0 U215 ( .A1(x_sub_y[8]), .A2(n57), .B1(n211), .B2(n16), .C1(
        Mantissa_Y[16]), .C2(n15), .Z(n20) );
  AOI222D0 U216 ( .A1(n70), .A2(n20), .B1(x_sub_y[8]), .B2(n108), .C1(
        x_sub_y[9]), .C2(n107), .ZN(n17) );
  CKND2D0 U217 ( .A1(n18), .A2(n17), .ZN(L4_p1[2]) );
  OA222D0 U218 ( .A1(x_sub_y[8]), .A2(n66), .B1(x_sub_y[9]), .B2(n57), .C1(
        y_sub_x[9]), .C2(n103), .Z(n25) );
  AOI22D0 U219 ( .A1(n70), .A2(n25), .B1(n210), .B2(n20), .ZN(n24) );
  AO22D0 U220 ( .A1(n107), .A2(x_sub_y[10]), .B1(n108), .B2(x_sub_y[9]), .Z(
        n22) );
  AOI221D0 U221 ( .A1(x_sub_y[7]), .A2(n104), .B1(y_sub_x[7]), .B2(n69), .C(
        n22), .ZN(n23) );
  OAI211D0 U222 ( .A1(n106), .A2(n203), .B(n24), .C(n23), .ZN(L4_p1[3]) );
  OA222D0 U223 ( .A1(x_sub_y[9]), .A2(n66), .B1(x_sub_y[10]), .B2(n57), .C1(
        y_sub_x[10]), .C2(n103), .Z(n29) );
  AOI22D0 U224 ( .A1(n70), .A2(n29), .B1(n210), .B2(n25), .ZN(n28) );
  AO22D0 U225 ( .A1(n107), .A2(x_sub_y[11]), .B1(n108), .B2(x_sub_y[10]), .Z(
        n26) );
  AOI221D0 U226 ( .A1(x_sub_y[8]), .A2(n104), .B1(y_sub_x[8]), .B2(n69), .C(
        n26), .ZN(n27) );
  OAI211D0 U227 ( .A1(n106), .A2(n202), .B(n28), .C(n27), .ZN(L4_p1[4]) );
  OA222D0 U228 ( .A1(x_sub_y[10]), .A2(n66), .B1(x_sub_y[11]), .B2(n57), .C1(
        y_sub_x[11]), .C2(n103), .Z(n33) );
  AOI22D0 U229 ( .A1(n70), .A2(n33), .B1(n210), .B2(n29), .ZN(n32) );
  AO22D0 U230 ( .A1(n107), .A2(x_sub_y[12]), .B1(n108), .B2(x_sub_y[11]), .Z(
        n30) );
  AOI221D0 U231 ( .A1(x_sub_y[9]), .A2(n104), .B1(y_sub_x[9]), .B2(n69), .C(
        n30), .ZN(n31) );
  OAI211D0 U232 ( .A1(n106), .A2(n201), .B(n32), .C(n31), .ZN(L4_p1[5]) );
  OA222D0 U233 ( .A1(x_sub_y[11]), .A2(n66), .B1(x_sub_y[12]), .B2(n57), .C1(
        y_sub_x[12]), .C2(n103), .Z(n37) );
  AOI22D0 U234 ( .A1(n70), .A2(n37), .B1(n210), .B2(n33), .ZN(n36) );
  OAI22D0 U235 ( .A1(n60), .A2(n165), .B1(n59), .B2(n164), .ZN(n34) );
  AOI221D0 U236 ( .A1(x_sub_y[10]), .A2(n104), .B1(y_sub_x[10]), .B2(n69), .C(
        n34), .ZN(n35) );
  OAI211D0 U237 ( .A1(n106), .A2(n200), .B(n36), .C(n35), .ZN(L4_p1[6]) );
  OA222D0 U238 ( .A1(x_sub_y[12]), .A2(n66), .B1(x_sub_y[13]), .B2(n57), .C1(
        y_sub_x[13]), .C2(n103), .Z(n41) );
  AOI22D0 U239 ( .A1(n70), .A2(n41), .B1(n210), .B2(n37), .ZN(n40) );
  OAI22D0 U240 ( .A1(n60), .A2(n166), .B1(n59), .B2(n165), .ZN(n38) );
  AOI221D0 U241 ( .A1(x_sub_y[11]), .A2(n104), .B1(y_sub_x[11]), .B2(n69), .C(
        n38), .ZN(n39) );
  OAI211D0 U242 ( .A1(n106), .A2(n109), .B(n40), .C(n39), .ZN(L4_p1[7]) );
  OA222D0 U243 ( .A1(x_sub_y[13]), .A2(n66), .B1(x_sub_y[14]), .B2(n57), .C1(
        y_sub_x[14]), .C2(n103), .Z(n45) );
  AOI22D0 U244 ( .A1(n70), .A2(n45), .B1(n210), .B2(n41), .ZN(n44) );
  OAI22D0 U245 ( .A1(n60), .A2(n167), .B1(n59), .B2(n166), .ZN(n42) );
  AOI221D0 U246 ( .A1(x_sub_y[12]), .A2(n104), .B1(y_sub_x[12]), .B2(n69), .C(
        n42), .ZN(n43) );
  OAI211D0 U247 ( .A1(n106), .A2(n110), .B(n44), .C(n43), .ZN(L4_p1[8]) );
  OA222D0 U248 ( .A1(x_sub_y[14]), .A2(n66), .B1(x_sub_y[15]), .B2(n57), .C1(
        y_sub_x[15]), .C2(n103), .Z(n49) );
  AOI22D0 U249 ( .A1(n70), .A2(n49), .B1(n210), .B2(n45), .ZN(n48) );
  OAI22D0 U250 ( .A1(n60), .A2(n112), .B1(n59), .B2(n167), .ZN(n46) );
  AOI221D0 U251 ( .A1(x_sub_y[13]), .A2(n104), .B1(y_sub_x[13]), .B2(n69), .C(
        n46), .ZN(n47) );
  OAI211D0 U252 ( .A1(n199), .A2(n106), .B(n48), .C(n47), .ZN(L4_p1[9]) );
  OA222D0 U253 ( .A1(x_sub_y[15]), .A2(n66), .B1(x_sub_y[16]), .B2(n57), .C1(
        y_sub_x[16]), .C2(n103), .Z(n53) );
  AOI22D0 U254 ( .A1(n70), .A2(n53), .B1(n210), .B2(n49), .ZN(n52) );
  OAI22D0 U255 ( .A1(n183), .A2(n60), .B1(n59), .B2(n112), .ZN(n50) );
  AOI221D0 U256 ( .A1(x_sub_y[14]), .A2(n104), .B1(y_sub_x[14]), .B2(n69), .C(
        n50), .ZN(n51) );
  OAI211D0 U257 ( .A1(n157), .A2(n106), .B(n52), .C(n51), .ZN(L4_p1[10]) );
  OA222D0 U258 ( .A1(x_sub_y[16]), .A2(n66), .B1(x_sub_y[17]), .B2(n57), .C1(
        y_sub_x[17]), .C2(n103), .Z(n58) );
  AOI22D0 U259 ( .A1(n70), .A2(n58), .B1(n210), .B2(n53), .ZN(n56) );
  OAI22D0 U260 ( .A1(n181), .A2(n60), .B1(n183), .B2(n59), .ZN(n54) );
  AOI221D0 U261 ( .A1(x_sub_y[15]), .A2(n104), .B1(y_sub_x[15]), .B2(n69), .C(
        n54), .ZN(n55) );
  OAI211D0 U262 ( .A1(n158), .A2(n106), .B(n56), .C(n55), .ZN(L4_p1[11]) );
  OAI222D0 U263 ( .A1(x_sub_y[17]), .A2(n66), .B1(x_sub_y[18]), .B2(n57), .C1(
        y_sub_x[18]), .C2(n103), .ZN(n68) );
  AOI22D0 U264 ( .A1(n70), .A2(n113), .B1(n210), .B2(n58), .ZN(n63) );
  OAI22D0 U265 ( .A1(n116), .A2(n60), .B1(n181), .B2(n59), .ZN(n61) );
  AOI221D0 U266 ( .A1(x_sub_y[16]), .A2(n104), .B1(y_sub_x[16]), .B2(n69), .C(
        n61), .ZN(n62) );
  OAI211D0 U267 ( .A1(n106), .A2(n159), .B(n63), .C(n62), .ZN(L4_p1[12]) );
  OAI22D0 U268 ( .A1(y_sub_x[19]), .A2(n103), .B1(x_sub_y[19]), .B2(
        Mantissa_Y[15]), .ZN(n101) );
  OAI21D0 U269 ( .A1(Mantissa_Y[15]), .A2(n116), .B(Mantissa_Y[16]), .ZN(n64)
         );
  CKND2D0 U270 ( .A1(n114), .A2(n64), .ZN(n75) );
  IND2D0 U271 ( .A1(n75), .B1(n76), .ZN(n72) );
  OAI222D0 U272 ( .A1(x_sub_y[18]), .A2(n66), .B1(y_sub_x[19]), .B2(n65), .C1(
        n114), .C2(n211), .ZN(n74) );
  AOI222D0 U273 ( .A1(n70), .A2(n115), .B1(x_sub_y[17]), .B2(n104), .C1(
        y_sub_x[17]), .C2(n69), .ZN(n67) );
  OAI211D0 U274 ( .A1(n68), .A2(n73), .B(n72), .C(n67), .ZN(L4_p1[13]) );
  AOI222D0 U275 ( .A1(n70), .A2(n114), .B1(x_sub_y[18]), .B2(n104), .C1(
        y_sub_x[18]), .C2(n69), .ZN(n71) );
  OAI211D0 U276 ( .A1(n74), .A2(n73), .B(n72), .C(n71), .ZN(L4_p1[14]) );
  NR2D0 U277 ( .A1(n211), .A2(Mantissa_Y[17]), .ZN(n117) );
  NR2D0 U278 ( .A1(n145), .A2(Mantissa_Y[18]), .ZN(n125) );
  NR2D0 U279 ( .A1(n146), .A2(Mantissa_Y[16]), .ZN(n122) );
  OAI222D0 U280 ( .A1(n153), .A2(n120), .B1(n111), .B2(n119), .C1(n195), .C2(
        n118), .ZN(L3_p2[0]) );
  OAI222D0 U281 ( .A1(n154), .A2(n120), .B1(n194), .B2(n119), .C1(n111), .C2(
        n118), .ZN(L3_p2[1]) );
  OAI222D0 U282 ( .A1(n155), .A2(n120), .B1(n160), .B2(n119), .C1(n194), .C2(
        n118), .ZN(L3_p2[2]) );
  OAI222D0 U283 ( .A1(n156), .A2(n120), .B1(n161), .B2(n119), .C1(n160), .C2(
        n118), .ZN(L3_p2[3]) );
  OAI222D0 U284 ( .A1(n204), .A2(n120), .B1(n162), .B2(n119), .C1(n161), .C2(
        n118), .ZN(L3_p2[4]) );
  OAI222D0 U285 ( .A1(n203), .A2(n120), .B1(n163), .B2(n119), .C1(n162), .C2(
        n118), .ZN(L3_p2[5]) );
  OAI222D0 U286 ( .A1(n202), .A2(n120), .B1(n164), .B2(n119), .C1(n163), .C2(
        n118), .ZN(L3_p2[6]) );
  OAI222D0 U287 ( .A1(n201), .A2(n120), .B1(n165), .B2(n119), .C1(n164), .C2(
        n118), .ZN(L3_p2[7]) );
  OAI222D0 U288 ( .A1(n200), .A2(n120), .B1(n166), .B2(n119), .C1(n165), .C2(
        n118), .ZN(L3_p2[8]) );
  OAI222D0 U289 ( .A1(n109), .A2(n120), .B1(n167), .B2(n119), .C1(n166), .C2(
        n118), .ZN(L3_p2[9]) );
  OAI222D0 U290 ( .A1(n110), .A2(n120), .B1(n112), .B2(n119), .C1(n167), .C2(
        n118), .ZN(L3_p2[10]) );
  OAI222D0 U291 ( .A1(n199), .A2(n120), .B1(n183), .B2(n119), .C1(n112), .C2(
        n118), .ZN(L3_p2[11]) );
  OAI222D0 U292 ( .A1(n157), .A2(n120), .B1(n181), .B2(n119), .C1(n183), .C2(
        n118), .ZN(L3_p2[12]) );
  OAI222D0 U293 ( .A1(n158), .A2(n120), .B1(n116), .B2(n119), .C1(n181), .C2(
        n118), .ZN(L3_p2[13]) );
  AOI21D0 U294 ( .A1(n146), .A2(n170), .B(n122), .ZN(n121) );
  NR2D0 U295 ( .A1(n146), .A2(n170), .ZN(n142) );
  CKND2D0 U296 ( .A1(Mantissa_Y[16]), .A2(n142), .ZN(n126) );
  NR2D0 U297 ( .A1(n142), .A2(Mantissa_Y[16]), .ZN(n124) );
  AOI22D0 U298 ( .A1(x_sub_y[3]), .A2(n124), .B1(y_sub_x[4]), .B2(n125), .ZN(
        n123) );
  OAI221D0 U299 ( .A1(n126), .A2(n111), .B1(n149), .B2(n196), .C(n123), .ZN(
        L3_p1[0]) );
  AOI22D0 U300 ( .A1(x_sub_y[7]), .A2(n151), .B1(x_sub_y[5]), .B2(n140), .ZN(
        n127) );
  OAI221D0 U301 ( .A1(n150), .A2(n196), .B1(n148), .B2(n153), .C(n127), .ZN(
        L3_p1[1]) );
  AOI22D0 U302 ( .A1(x_sub_y[8]), .A2(n151), .B1(x_sub_y[6]), .B2(n140), .ZN(
        n128) );
  OAI221D0 U303 ( .A1(n150), .A2(n195), .B1(n148), .B2(n154), .C(n128), .ZN(
        L3_p1[2]) );
  AOI22D0 U304 ( .A1(x_sub_y[9]), .A2(n151), .B1(x_sub_y[7]), .B2(n140), .ZN(
        n129) );
  OAI221D0 U305 ( .A1(n150), .A2(n111), .B1(n148), .B2(n155), .C(n129), .ZN(
        L3_p1[3]) );
  AOI22D0 U306 ( .A1(x_sub_y[10]), .A2(n151), .B1(x_sub_y[8]), .B2(n140), .ZN(
        n130) );
  OAI221D0 U307 ( .A1(n150), .A2(n194), .B1(n148), .B2(n156), .C(n130), .ZN(
        L3_p1[4]) );
  AOI22D0 U308 ( .A1(x_sub_y[11]), .A2(n151), .B1(x_sub_y[9]), .B2(n140), .ZN(
        n131) );
  OAI221D0 U309 ( .A1(n150), .A2(n160), .B1(n148), .B2(n204), .C(n131), .ZN(
        L3_p1[5]) );
  AOI22D0 U310 ( .A1(x_sub_y[12]), .A2(n151), .B1(x_sub_y[10]), .B2(n140), 
        .ZN(n132) );
  OAI221D0 U311 ( .A1(n150), .A2(n161), .B1(n148), .B2(n203), .C(n132), .ZN(
        L3_p1[6]) );
  AOI22D0 U312 ( .A1(x_sub_y[13]), .A2(n151), .B1(x_sub_y[11]), .B2(n140), 
        .ZN(n133) );
  OAI221D0 U313 ( .A1(n150), .A2(n162), .B1(n148), .B2(n202), .C(n133), .ZN(
        L3_p1[7]) );
  AOI22D0 U314 ( .A1(x_sub_y[14]), .A2(n151), .B1(x_sub_y[12]), .B2(n140), 
        .ZN(n134) );
  OAI221D0 U315 ( .A1(n150), .A2(n163), .B1(n148), .B2(n201), .C(n134), .ZN(
        L3_p1[8]) );
  AOI22D0 U316 ( .A1(x_sub_y[15]), .A2(n151), .B1(x_sub_y[13]), .B2(n140), 
        .ZN(n135) );
  OAI221D0 U317 ( .A1(n150), .A2(n164), .B1(n148), .B2(n200), .C(n135), .ZN(
        L3_p1[9]) );
  AOI22D0 U318 ( .A1(x_sub_y[16]), .A2(n151), .B1(x_sub_y[14]), .B2(n140), 
        .ZN(n136) );
  OAI221D0 U319 ( .A1(n150), .A2(n165), .B1(n148), .B2(n109), .C(n136), .ZN(
        L3_p1[10]) );
  AOI22D0 U320 ( .A1(x_sub_y[17]), .A2(n151), .B1(x_sub_y[15]), .B2(n140), 
        .ZN(n137) );
  OAI221D0 U321 ( .A1(n150), .A2(n166), .B1(n148), .B2(n110), .C(n137), .ZN(
        L3_p1[11]) );
  AOI22D0 U322 ( .A1(n151), .A2(x_sub_y[18]), .B1(x_sub_y[16]), .B2(n140), 
        .ZN(n138) );
  OAI221D0 U323 ( .A1(n150), .A2(n167), .B1(n148), .B2(n199), .C(n138), .ZN(
        L3_p1[12]) );
  AOI22D0 U324 ( .A1(n151), .A2(x_sub_y[19]), .B1(x_sub_y[17]), .B2(n140), 
        .ZN(n139) );
  OAI221D0 U325 ( .A1(n150), .A2(n112), .B1(n148), .B2(n157), .C(n139), .ZN(
        L3_p1[13]) );
  AOI22D0 U326 ( .A1(n151), .A2(x_sub_y[19]), .B1(n140), .B2(x_sub_y[18]), 
        .ZN(n141) );
  OAI221D0 U327 ( .A1(n150), .A2(n183), .B1(n148), .B2(n158), .C(n141), .ZN(
        L3_p1[14]) );
  AOI21D0 U328 ( .A1(Mantissa_Y[18]), .A2(Mantissa_Y[16]), .B(n142), .ZN(n143)
         );
  OAI222D0 U329 ( .A1(n150), .A2(n181), .B1(n116), .B2(n143), .C1(n148), .C2(
        n159), .ZN(L3_p1[15]) );
  NR2D0 U330 ( .A1(n211), .A2(Mantissa_Y[18]), .ZN(n144) );
  OAI22D0 U331 ( .A1(n148), .A2(n159), .B1(n144), .B2(n116), .ZN(L3_p1[16]) );
  NR2D1 U332 ( .A1(n125), .A2(n122), .ZN(n118) );
  CKND0 U7 ( .I(n149), .ZN(n140) );
  OAI21D0 U77 ( .A1(n122), .A2(n117), .B(Mantissa_Y[18]), .ZN(n149) );
  CKND0 U148 ( .I(Mantissa_Y[18]), .ZN(n170) );
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
  CKBD1 U13 ( .I(result_fraction[15]), .Z(result[15]) );
  CKBD1 U14 ( .I(result_fraction[12]), .Z(result[12]) );
  CKBD1 U15 ( .I(result_fraction[13]), .Z(result[13]) );
  CKBD1 U16 ( .I(result_fraction[14]), .Z(result[14]) );
  CKBD1 U17 ( .I(result_fraction[8]), .Z(result[8]) );
  CKBD1 U18 ( .I(result_fraction[9]), .Z(result[9]) );
  CKBD1 U19 ( .I(result_fraction[10]), .Z(result[10]) );
  CKBD1 U20 ( .I(result_fraction[11]), .Z(result[11]) );
  CKBD1 U21 ( .I(result_fraction[16]), .Z(result[16]) );
  CKBD1 U22 ( .I(result_fraction[17]), .Z(result[17]) );
  CKBD1 U23 ( .I(result_fraction[18]), .Z(result[18]) );
  CKBD1 U24 ( .I(result_fraction[19]), .Z(result[19]) );
  CKBD1 U25 ( .I(result_fraction[20]), .Z(result[20]) );
  CKBD1 U26 ( .I(result_fraction[21]), .Z(result[21]) );
  CKBD1 U27 ( .I(result_fraction[22]), .Z(result[22]) );
  CKBD1 U28 ( .I(result_fraction[7]), .Z(result[7]) );
  CKBD1 U29 ( .I(result_fraction[6]), .Z(result[6]) );
  CKBD1 U30 ( .I(result_fraction[5]), .Z(result[5]) );
  FA1D0 U31 ( .A(N4), .B(exponent_adjust[1]), .CI(n1), .CO(
        add_0_root_add_0_root_add_22_2_carry[2]), .S(result[24]) );
  FA1D0 U32 ( .A(N5), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[2]), .CO(
        add_0_root_add_0_root_add_22_2_carry[3]), .S(result[25]) );
  FA1D0 U33 ( .A(N6), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[3]), .CO(
        add_0_root_add_0_root_add_22_2_carry[4]), .S(result[26]) );
  FA1D0 U34 ( .A(N7), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[4]), .CO(
        add_0_root_add_0_root_add_22_2_carry[5]), .S(result[27]) );
  FA1D0 U35 ( .A(N8), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[5]), .CO(
        add_0_root_add_0_root_add_22_2_carry[6]), .S(result[28]) );
  FA1D0 U36 ( .A(N9), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[6]), .CO(
        add_0_root_add_0_root_add_22_2_carry[7]), .S(result[29]) );
  XOR3D1 U45 ( .A1(N10), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_22_2_carry[7]), .Z(result[30]) );
  CKBD1 U46 ( .I(y[4]), .Z(fraction_y[4]) );
  CKBD1 U47 ( .I(y[5]), .Z(fraction_y[5]) );
  CKBD1 U50 ( .I(y[6]), .Z(fraction_y[6]) );
  CKBD1 U52 ( .I(y[7]), .Z(fraction_y[7]) );
  CKBD1 U54 ( .I(y[8]), .Z(fraction_y[8]) );
  CKBD1 U56 ( .I(y[9]), .Z(fraction_y[9]) );
  CKBD1 U58 ( .I(y[10]), .Z(fraction_y[10]) );
  CKBD1 U60 ( .I(result_fraction[4]), .Z(result[4]) );
  CKBD1 U61 ( .I(y[11]), .Z(fraction_y[11]) );
  CKBD1 U62 ( .I(y[12]), .Z(fraction_y[12]) );
  CKBD1 U63 ( .I(y[13]), .Z(fraction_y[13]) );
  CKBD1 U64 ( .I(y[14]), .Z(fraction_y[14]) );
  CKBD1 U65 ( .I(y[20]), .Z(fraction_y[20]) );
  CKBD1 U66 ( .I(y[22]), .Z(fraction_y[22]) );
  CKBD1 U67 ( .I(y[21]), .Z(fraction_y[21]) );
  CKBD1 U68 ( .I(y[19]), .Z(fraction_y[19]) );
  INVD1 U69 ( .I(y[29]), .ZN(N17) );
  INVD1 U70 ( .I(y[24]), .ZN(N12) );
  INVD1 U71 ( .I(y[25]), .ZN(N13) );
  INVD1 U72 ( .I(y[26]), .ZN(N14) );
  INVD1 U73 ( .I(y[27]), .ZN(N15) );
  INVD1 U74 ( .I(y[28]), .ZN(N16) );
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
  CKBD1 U106 ( .I(y[18]), .Z(fraction_y[18]) );
  CKBD1 U107 ( .I(y[17]), .Z(fraction_y[17]) );
  CKBD1 U108 ( .I(y[16]), .Z(fraction_y[16]) );
  CKBD1 U109 ( .I(y[15]), .Z(fraction_y[15]) );
  TIEL U110 ( .ZN(n79) );
  CKXOR2D1 U111 ( .A1(exponent_adjust[0]), .A2(N3), .Z(result[23]) );
  CKND0 U119 ( .I(y[23]), .ZN(N11) );
endmodule


module FP_DIV_WRAPPER_32_width_trunc4 ( x, y, out0, mantissa_x, mantissa_y, 
        mantissa_out, shift );
  input [31:0] x;
  input [31:0] y;
  output [31:0] out0;
  output [18:0] mantissa_x;
  output [18:0] mantissa_y;
  input [18:0] mantissa_out;
  input [0:0] shift;

  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11;

  fp32_normal_finite_wrapper shared_wrapper ( .x({x[31:4], 1'b0, 1'b0, 1'b0, 
        1'b0}), .y({y[31:4], 1'b0, 1'b0, 1'b0, 1'b0}), .divide_mode(1'b0), 
        .fraction_x({mantissa_x, SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3}), .fraction_y({mantissa_y, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7}), .result_fraction({
        mantissa_out, 1'b0, 1'b0, 1'b0, 1'b0}), .exponent_adjust({shift[0], 
        shift[0], shift[0]}), .result({out0[31:4], SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11}) );
endmodule


module fig8_pace_l4_d4 ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   shift, n1;
  wire   [18:0] mx;
  wire   [18:0] my;
  wire   [18:0] mz;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3;
  assign result[0] = 1'b0;
  assign result[1] = 1'b0;
  assign result[2] = 1'b0;
  assign result[3] = 1'b0;

  Mantissa_Div_L4_Kec_MANTISSA_WIDTH19 core ( .Mantissa_X(mx), .Mantissa_Y(my), 
        .Mantissa_Out(mz), .Shift(shift) );
  FP_DIV_WRAPPER_32_width_trunc4 shell ( .x({x[31:4], 1'b0, 1'b0, 1'b0, 1'b0}), 
        .y({y[31:4], 1'b0, 1'b0, 1'b0, 1'b0}), .out0({result[31:4], 
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3}), .mantissa_x(mx), 
        .mantissa_y(my), .mantissa_out(mz), .shift(n1) );
  INVD1 U2 ( .I(shift), .ZN(n1) );
endmodule

