/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Sat Sep  5 13:04:29 2026
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
  CKND1 U57 ( .I(n22), .ZN(C[0]) );
  CKND1 U58 ( .I(n23), .ZN(C[1]) );
  CKND2D0 U59 ( .A1(In_3[2]), .A2(In_2[2]), .ZN(n24) );
  CKND2D0 U60 ( .A1(In_3[1]), .A2(In_2[1]), .ZN(n23) );
  CKND2D0 U61 ( .A1(In_3[0]), .A2(In_2[0]), .ZN(n22) );
endmodule


module CSA3_2_Array_WIDTH21_3 ( In_1, In_2, In_3, S, C );
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
  AO22D0 U34 ( .A1(In_2[1]), .A2(In_1[1]), .B1(n33), .B2(In_3[1]), .Z(C[1]) );
  AO22D0 U36 ( .A1(In_2[12]), .A2(In_1[12]), .B1(n25), .B2(In_3[12]), .Z(C[12]) );
  AO22D0 U38 ( .A1(In_2[2]), .A2(In_1[2]), .B1(n35), .B2(In_3[2]), .Z(C[2]) );
  AO22D0 U40 ( .A1(In_2[3]), .A2(In_1[3]), .B1(n36), .B2(In_3[3]), .Z(C[3]) );
  AO22D0 U42 ( .A1(In_2[4]), .A2(In_1[4]), .B1(n37), .B2(In_3[4]), .Z(C[4]) );
  AO22D0 U44 ( .A1(In_2[5]), .A2(In_1[5]), .B1(n38), .B2(In_3[5]), .Z(C[5]) );
  AO22D0 U46 ( .A1(In_2[6]), .A2(In_1[6]), .B1(n39), .B2(In_3[6]), .Z(C[6]) );
  AO22D0 U48 ( .A1(In_2[7]), .A2(In_1[7]), .B1(n40), .B2(In_3[7]), .Z(C[7]) );
  AO22D0 U50 ( .A1(In_2[8]), .A2(In_1[8]), .B1(n41), .B2(In_3[8]), .Z(C[8]) );
  AO22D0 U52 ( .A1(In_2[9]), .A2(In_1[9]), .B1(n42), .B2(In_3[9]), .Z(C[9]) );
  AO22D0 U54 ( .A1(In_2[10]), .A2(In_1[10]), .B1(n23), .B2(In_3[10]), .Z(C[10]) );
  AO22D0 U56 ( .A1(In_2[11]), .A2(In_1[11]), .B1(n24), .B2(In_3[11]), .Z(C[11]) );
  AO22D0 U58 ( .A1(In_2[0]), .A2(In_1[0]), .B1(n22), .B2(In_3[0]), .Z(C[0]) );
  AO22D0 U62 ( .A1(In_2[15]), .A2(In_1[15]), .B1(n28), .B2(In_3[15]), .Z(C[15]) );
  XOR3D0 U16 ( .A1(In_1[20]), .A2(In_3[20]), .A3(In_2[20]), .Z(S[20]) );
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
  AO22D0 U38 ( .A1(In_2[1]), .A2(In_1[1]), .B1(n33), .B2(In_3[1]), .Z(C[1]) );
  AO22D0 U40 ( .A1(In_2[12]), .A2(In_1[12]), .B1(n25), .B2(In_3[12]), .Z(C[12]) );
  AO22D0 U42 ( .A1(In_2[2]), .A2(In_1[2]), .B1(n35), .B2(In_3[2]), .Z(C[2]) );
  AO22D0 U44 ( .A1(In_2[3]), .A2(In_1[3]), .B1(n36), .B2(In_3[3]), .Z(C[3]) );
  AO22D0 U46 ( .A1(In_2[4]), .A2(In_1[4]), .B1(n37), .B2(In_3[4]), .Z(C[4]) );
  AO22D0 U48 ( .A1(In_2[5]), .A2(In_1[5]), .B1(n38), .B2(In_3[5]), .Z(C[5]) );
  AO22D0 U50 ( .A1(In_2[6]), .A2(In_1[6]), .B1(n39), .B2(In_3[6]), .Z(C[6]) );
  AO22D0 U52 ( .A1(In_2[7]), .A2(In_1[7]), .B1(n40), .B2(In_3[7]), .Z(C[7]) );
  AO22D0 U54 ( .A1(In_2[8]), .A2(In_1[8]), .B1(n41), .B2(In_3[8]), .Z(C[8]) );
  AO22D0 U56 ( .A1(In_2[9]), .A2(In_1[9]), .B1(n42), .B2(In_3[9]), .Z(C[9]) );
  AO22D0 U58 ( .A1(In_2[10]), .A2(In_1[10]), .B1(n23), .B2(In_3[10]), .Z(C[10]) );
  AO22D0 U60 ( .A1(In_2[11]), .A2(In_1[11]), .B1(n24), .B2(In_3[11]), .Z(C[11]) );
  XOR3D0 U9 ( .A1(In_3[20]), .A2(In_1[20]), .A3(In_2[20]), .Z(S[20]) );
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
  AO22D0 U40 ( .A1(In_2[11]), .A2(In_1[11]), .B1(n24), .B2(In_3[11]), .Z(C[11]) );
  AO22D0 U42 ( .A1(In_2[2]), .A2(In_1[2]), .B1(n35), .B2(In_3[2]), .Z(C[2]) );
  AO22D0 U44 ( .A1(In_2[3]), .A2(In_1[3]), .B1(n36), .B2(In_3[3]), .Z(C[3]) );
  AO22D0 U46 ( .A1(In_2[4]), .A2(In_1[4]), .B1(n37), .B2(In_3[4]), .Z(C[4]) );
  AO22D0 U48 ( .A1(In_2[5]), .A2(In_1[5]), .B1(n38), .B2(In_3[5]), .Z(C[5]) );
  AO22D0 U50 ( .A1(In_2[6]), .A2(In_1[6]), .B1(n39), .B2(In_3[6]), .Z(C[6]) );
  AO22D0 U52 ( .A1(In_2[7]), .A2(In_1[7]), .B1(n40), .B2(In_3[7]), .Z(C[7]) );
  AO22D0 U54 ( .A1(In_2[8]), .A2(In_1[8]), .B1(n41), .B2(In_3[8]), .Z(C[8]) );
  AO22D0 U56 ( .A1(In_2[9]), .A2(In_1[9]), .B1(n42), .B2(In_3[9]), .Z(C[9]) );
  AO22D0 U58 ( .A1(In_2[10]), .A2(In_1[10]), .B1(n23), .B2(In_3[10]), .Z(C[10]) );
  AO22D0 U62 ( .A1(In_2[1]), .A2(In_1[1]), .B1(n33), .B2(In_3[1]), .Z(C[1]) );
  XOR3D0 U9 ( .A1(In_1[20]), .A2(In_3[20]), .A3(In_2[20]), .Z(S[20]) );
endmodule


module Mantissa_Div_L3_MANTISSA_WIDTH19_DW01_add_0 ( A, B, CI, SUM, CO );
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
  FA1D0 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
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


module Mantissa_Div_L3_MANTISSA_WIDTH19_DW01_sub_0_DW01_sub_1 ( A, B, CI, DIFF, 
        CO );
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
  FA1D0 U2_14 ( .A(A[14]), .B(n5), .CI(carry[14]), .CO(carry[15]), .S(DIFF[14]) );
  FA1D0 U2_13 ( .A(A[13]), .B(n6), .CI(carry[13]), .CO(carry[14]), .S(DIFF[13]) );
  FA1D0 U2_17 ( .A(A[17]), .B(n2), .CI(carry[17]), .CO(carry[18]), .S(DIFF[17]) );
  FA1D0 U2_16 ( .A(A[16]), .B(n3), .CI(carry[16]), .CO(carry[17]), .S(DIFF[16]) );
  FA1D0 U2_12 ( .A(A[12]), .B(n7), .CI(carry[12]), .CO(carry[13]), .S(DIFF[12]) );
  FA1D0 U2_11 ( .A(A[11]), .B(n8), .CI(carry[11]), .CO(carry[12]), .S(DIFF[11]) );
  FA1D0 U2_10 ( .A(A[10]), .B(n9), .CI(carry[10]), .CO(carry[11]), .S(DIFF[10]) );
  FA1D0 U2_9 ( .A(A[9]), .B(n10), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  FA1D0 U2_8 ( .A(A[8]), .B(n11), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  FA1D0 U2_7 ( .A(A[7]), .B(n12), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  FA1D0 U2_6 ( .A(A[6]), .B(n13), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  FA1D0 U2_5 ( .A(A[5]), .B(n14), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  FA1D0 U2_4 ( .A(A[4]), .B(n15), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FA1D0 U2_3 ( .A(A[3]), .B(n16), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  INVD1 U1 ( .I(B[3]), .ZN(n16) );
  INVD1 U2 ( .I(B[4]), .ZN(n15) );
  INVD1 U3 ( .I(B[5]), .ZN(n14) );
  INVD1 U4 ( .I(B[6]), .ZN(n13) );
  INVD1 U5 ( .I(B[7]), .ZN(n12) );
  INVD1 U6 ( .I(B[8]), .ZN(n11) );
  INVD1 U7 ( .I(B[9]), .ZN(n10) );
  INVD1 U8 ( .I(B[10]), .ZN(n9) );
  INVD1 U9 ( .I(B[11]), .ZN(n8) );
  INVD1 U10 ( .I(B[12]), .ZN(n7) );
  INVD1 U11 ( .I(B[16]), .ZN(n3) );
  INVD1 U12 ( .I(B[17]), .ZN(n2) );
  INVD1 U13 ( .I(B[13]), .ZN(n6) );
  INVD1 U14 ( .I(B[14]), .ZN(n5) );
  INVD1 U15 ( .I(B[15]), .ZN(n4) );
  INVD1 U16 ( .I(A[1]), .ZN(n17) );
  INVD1 U17 ( .I(B[18]), .ZN(n1) );
  MOAI22D0 U18 ( .A1(B[2]), .A2(n18), .B1(n19), .B2(A[2]), .ZN(carry[3]) );
  NR2D0 U19 ( .A1(A[2]), .A2(n19), .ZN(n18) );
  OAI22D0 U20 ( .A1(n20), .A2(n17), .B1(B[1]), .B2(n21), .ZN(n19) );
  AN2D0 U21 ( .A1(n20), .A2(n17), .Z(n21) );
  INR2D0 U22 ( .A1(B[0]), .B1(A[0]), .ZN(n20) );
  CKND0 U23 ( .I(carry[19]), .ZN(DIFF[19]) );
endmodule


module Mantissa_Div_L3_MANTISSA_WIDTH19_DW01_sub_1_DW01_sub_2 ( A, B, CI, DIFF, 
        CO );
  input [19:0] A;
  input [19:0] B;
  output [19:0] DIFF;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19;
  wire   [19:1] carry;

  FA1D0 U2_18 ( .A(A[18]), .B(n2), .CI(carry[18]), .CO(carry[19]), .S(DIFF[18]) );
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
  FA1D0 U2_2 ( .A(A[2]), .B(n18), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  FA1D0 U2_1 ( .A(A[1]), .B(n19), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  INVD1 U2 ( .I(B[1]), .ZN(n19) );
  INVD1 U3 ( .I(B[2]), .ZN(n18) );
  INVD1 U4 ( .I(B[3]), .ZN(n17) );
  INVD1 U5 ( .I(B[4]), .ZN(n16) );
  INVD1 U6 ( .I(B[5]), .ZN(n15) );
  INVD1 U7 ( .I(B[6]), .ZN(n14) );
  INVD1 U8 ( .I(B[7]), .ZN(n13) );
  INVD1 U9 ( .I(B[8]), .ZN(n12) );
  INVD1 U10 ( .I(B[9]), .ZN(n11) );
  INVD1 U11 ( .I(B[10]), .ZN(n10) );
  INVD1 U12 ( .I(B[11]), .ZN(n9) );
  INVD1 U13 ( .I(B[12]), .ZN(n8) );
  INVD1 U14 ( .I(B[13]), .ZN(n7) );
  INVD1 U15 ( .I(B[14]), .ZN(n6) );
  INVD1 U16 ( .I(B[15]), .ZN(n5) );
  INVD1 U17 ( .I(B[16]), .ZN(n4) );
  INVD1 U18 ( .I(B[17]), .ZN(n3) );
  INVD1 U19 ( .I(B[18]), .ZN(n2) );
  CKND0 U23 ( .I(carry[19]), .ZN(DIFF[19]) );
  CKXOR2D0 U1 ( .A1(A[0]), .A2(B[0]), .Z(DIFF[0]) );
  IND2D0 U20 ( .A1(A[0]), .B1(B[0]), .ZN(carry[1]) );
endmodule


module Mantissa_Div_L3_MANTISSA_WIDTH19 ( Mantissa_X, Mantissa_Y, Mantissa_Out, 
        Shift );
  input [18:0] Mantissa_X;
  input [18:0] Mantissa_Y;
  output [18:0] Mantissa_Out;
  output Shift;
  wire   n13, n35, n36, n37, n38, n39, n40, n1, n2, n3, n4, n5, n6, n7, n8, n9,
         n10, n11, n12, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n34, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98;
  wire   [19:0] x_sub_y;
  wire   [19:3] y_sub_x;
  wire   [20:0] L1_p2;
  wire   [20:0] L2_p;
  wire   [16:0] L3_p1;
  wire   [14:0] L3_p2;
  wire   [20:0] A11S;
  wire   [19:0] A11C;
  wire   [20:0] A12S;
  wire   [19:0] A12C;
  wire   [20:0] A21S;
  wire   [19:0] A21C;
  wire   [20:0] A31S;
  wire   [19:1] A31C;
  wire   [19:1] Res;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8;

  AO222D1 U29 ( .A1(y_sub_x[12]), .A2(n37), .B1(x_sub_y[12]), .B2(n38), .C1(
        x_sub_y[11]), .C2(n39), .Z(L2_p[9]) );
  AO222D1 U30 ( .A1(y_sub_x[11]), .A2(n37), .B1(x_sub_y[11]), .B2(n38), .C1(
        x_sub_y[10]), .C2(n39), .Z(L2_p[8]) );
  AO222D1 U31 ( .A1(y_sub_x[10]), .A2(n37), .B1(x_sub_y[10]), .B2(n38), .C1(
        x_sub_y[9]), .C2(n39), .Z(L2_p[7]) );
  AO222D1 U32 ( .A1(y_sub_x[9]), .A2(n37), .B1(x_sub_y[9]), .B2(n38), .C1(
        x_sub_y[8]), .C2(n39), .Z(L2_p[6]) );
  AO222D1 U33 ( .A1(y_sub_x[8]), .A2(n37), .B1(x_sub_y[8]), .B2(n38), .C1(
        x_sub_y[7]), .C2(n39), .Z(L2_p[5]) );
  AO222D1 U34 ( .A1(y_sub_x[7]), .A2(n37), .B1(x_sub_y[7]), .B2(n38), .C1(
        x_sub_y[6]), .C2(n39), .Z(L2_p[4]) );
  AO222D1 U35 ( .A1(y_sub_x[6]), .A2(n37), .B1(x_sub_y[6]), .B2(n38), .C1(
        x_sub_y[5]), .C2(n39), .Z(L2_p[3]) );
  AO222D1 U36 ( .A1(y_sub_x[5]), .A2(n37), .B1(x_sub_y[5]), .B2(n38), .C1(
        x_sub_y[4]), .C2(n39), .Z(L2_p[2]) );
  AO222D1 U37 ( .A1(y_sub_x[4]), .A2(n37), .B1(x_sub_y[4]), .B2(n38), .C1(
        x_sub_y[3]), .C2(n39), .Z(L2_p[1]) );
  AO222D1 U41 ( .A1(y_sub_x[18]), .A2(n37), .B1(x_sub_y[18]), .B2(n38), .C1(
        x_sub_y[17]), .C2(n39), .Z(L2_p[15]) );
  AO222D1 U42 ( .A1(y_sub_x[17]), .A2(n37), .B1(x_sub_y[17]), .B2(n38), .C1(
        x_sub_y[16]), .C2(n39), .Z(L2_p[14]) );
  AO222D1 U43 ( .A1(y_sub_x[16]), .A2(n37), .B1(x_sub_y[16]), .B2(n38), .C1(
        x_sub_y[15]), .C2(n39), .Z(L2_p[13]) );
  AO222D1 U44 ( .A1(y_sub_x[15]), .A2(n37), .B1(x_sub_y[15]), .B2(n38), .C1(
        x_sub_y[14]), .C2(n39), .Z(L2_p[12]) );
  AO222D1 U45 ( .A1(y_sub_x[14]), .A2(n37), .B1(x_sub_y[14]), .B2(n38), .C1(
        x_sub_y[13]), .C2(n39), .Z(L2_p[11]) );
  AO222D1 U46 ( .A1(y_sub_x[13]), .A2(n37), .B1(x_sub_y[13]), .B2(n38), .C1(
        n39), .C2(x_sub_y[12]), .Z(L2_p[10]) );
  AO222D1 U47 ( .A1(y_sub_x[3]), .A2(n37), .B1(x_sub_y[3]), .B2(n38), .C1(
        x_sub_y[2]), .C2(n39), .Z(L2_p[0]) );
  CSA3_2_Array_WIDTH21_0 Stage_1_1 ( .In_1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0}), .In_2({x_sub_y[19], x_sub_y}), .In_3({L1_p2[20], 
        L1_p2[20], L1_p2[20], L1_p2[17:0]}), .S(A11S), .C({
        SYNOPSYS_UNCONNECTED__0, A11C}) );
  CSA3_2_Array_WIDTH21_3 Stage_1_2 ( .In_1({L2_p[20], L2_p[20], L2_p[20], 
        L2_p[20], L2_p[16:0]}), .In_2({L3_p1[16], L3_p1[16], L3_p1[16], 
        L3_p1[16], L3_p1}), .In_3({L3_p2[14], L3_p2[14], L3_p2[14], L3_p2[14], 
        L3_p2[14], L3_p2[14], L3_p2}), .S(A12S), .C({SYNOPSYS_UNCONNECTED__1, 
        A12C}) );
  CSA3_2_Array_WIDTH21_2 Stage_2_1 ( .In_1(A11S), .In_2({A11C, 1'b0}), .In_3(
        A12S), .S(A21S), .C({SYNOPSYS_UNCONNECTED__2, A21C}) );
  CSA3_2_Array_WIDTH21_1 Stage_3_1 ( .In_1(A21S), .In_2({A21C, 1'b0}), .In_3({
        A12C, 1'b0}), .S(A31S), .C({SYNOPSYS_UNCONNECTED__3, A31C, 
        SYNOPSYS_UNCONNECTED__4}) );
  Mantissa_Div_L3_MANTISSA_WIDTH19_DW01_add_0 add_128 ( .A(A31S), .B({A31C, 
        1'b0, n13}), .CI(n13), .SUM({Shift, Res, SYNOPSYS_UNCONNECTED__5}) );
  Mantissa_Div_L3_MANTISSA_WIDTH19_DW01_sub_0_DW01_sub_1 sub_18 ( .A({n13, 
        Mantissa_Y}), .B({n13, Mantissa_X}), .CI(n13), .DIFF({y_sub_x, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8}) );
  Mantissa_Div_L3_MANTISSA_WIDTH19_DW01_sub_1_DW01_sub_2 sub_17 ( .A({n13, 
        Mantissa_X}), .B({n13, Mantissa_Y}), .CI(n13), .DIFF(x_sub_y) );
  INVD1 U3 ( .I(n5), .ZN(n44) );
  OAI32D1 U4 ( .A1(n59), .A2(n44), .A3(n31), .B1(n75), .B2(n5), .ZN(L3_p2[14])
         );
  ND2D1 U6 ( .A1(n79), .A2(n78), .ZN(n36) );
  OAI222D0 U7 ( .A1(n35), .A2(n90), .B1(n36), .B2(n88), .C1(n89), .C2(n78), 
        .ZN(Mantissa_Out[8]) );
  OAI222D0 U8 ( .A1(n35), .A2(n95), .B1(n36), .B2(n93), .C1(n78), .C2(n94), 
        .ZN(Mantissa_Out[3]) );
  OAI222D0 U9 ( .A1(n35), .A2(n94), .B1(n36), .B2(n92), .C1(n78), .C2(n93), 
        .ZN(Mantissa_Out[4]) );
  OAI222D0 U10 ( .A1(n35), .A2(n93), .B1(n36), .B2(n91), .C1(n78), .C2(n92), 
        .ZN(Mantissa_Out[5]) );
  OAI222D0 U11 ( .A1(n35), .A2(n92), .B1(n36), .B2(n90), .C1(n78), .C2(n91), 
        .ZN(Mantissa_Out[6]) );
  OAI222D0 U12 ( .A1(n35), .A2(n91), .B1(n36), .B2(n89), .C1(n78), .C2(n90), 
        .ZN(Mantissa_Out[7]) );
  OAI222D0 U13 ( .A1(n87), .A2(n35), .B1(n36), .B2(n85), .C1(n78), .C2(n86), 
        .ZN(Mantissa_Out[11]) );
  OAI222D0 U14 ( .A1(n35), .A2(n89), .B1(n36), .B2(n87), .C1(n88), .C2(n78), 
        .ZN(Mantissa_Out[9]) );
  OAI222D0 U15 ( .A1(n35), .A2(n88), .B1(n36), .B2(n86), .C1(n87), .C2(n78), 
        .ZN(Mantissa_Out[10]) );
  OAI222D0 U16 ( .A1(n35), .A2(n86), .B1(n36), .B2(n84), .C1(n78), .C2(n85), 
        .ZN(Mantissa_Out[12]) );
  OAI222D0 U17 ( .A1(n35), .A2(n85), .B1(n36), .B2(n83), .C1(n78), .C2(n84), 
        .ZN(Mantissa_Out[13]) );
  OAI222D0 U18 ( .A1(n35), .A2(n84), .B1(n36), .B2(n82), .C1(n78), .C2(n83), 
        .ZN(Mantissa_Out[14]) );
  OAI222D0 U19 ( .A1(n35), .A2(n83), .B1(n36), .B2(n81), .C1(n78), .C2(n82), 
        .ZN(Mantissa_Out[15]) );
  OAI222D0 U20 ( .A1(n35), .A2(n82), .B1(n36), .B2(n80), .C1(n78), .C2(n81), 
        .ZN(Mantissa_Out[16]) );
  OAI22D1 U21 ( .A1(n78), .A2(n80), .B1(n35), .B2(n81), .ZN(Mantissa_Out[17])
         );
  OAI22D1 U22 ( .A1(n35), .A2(n80), .B1(n79), .B2(n78), .ZN(Mantissa_Out[18])
         );
  INVD1 U23 ( .I(y_sub_x[19]), .ZN(n59) );
  INVD1 U24 ( .I(x_sub_y[19]), .ZN(n75) );
  INVD1 U25 ( .I(Shift), .ZN(n78) );
  OAI222D0 U26 ( .A1(n35), .A2(n96), .B1(n36), .B2(n94), .C1(n78), .C2(n95), 
        .ZN(Mantissa_Out[2]) );
  ND2D1 U27 ( .A1(Res[19]), .A2(n78), .ZN(n35) );
  INVD1 U28 ( .I(Res[19]), .ZN(n79) );
  INVD1 U38 ( .I(Res[18]), .ZN(n80) );
  INVD1 U39 ( .I(n9), .ZN(n34) );
  INVD1 U40 ( .I(Res[17]), .ZN(n81) );
  INVD1 U48 ( .I(Res[16]), .ZN(n82) );
  INVD1 U49 ( .I(Res[15]), .ZN(n83) );
  INVD1 U50 ( .I(Res[14]), .ZN(n84) );
  INVD1 U51 ( .I(Res[13]), .ZN(n85) );
  INVD1 U52 ( .I(Res[12]), .ZN(n86) );
  INVD1 U53 ( .I(Res[11]), .ZN(n87) );
  INVD1 U54 ( .I(Res[10]), .ZN(n88) );
  INVD1 U55 ( .I(Res[9]), .ZN(n89) );
  INVD1 U56 ( .I(Res[8]), .ZN(n90) );
  INVD1 U57 ( .I(Res[7]), .ZN(n91) );
  INVD1 U58 ( .I(Res[6]), .ZN(n92) );
  INVD1 U59 ( .I(Res[5]), .ZN(n93) );
  INVD1 U60 ( .I(Res[4]), .ZN(n94) );
  INVD1 U61 ( .I(Res[3]), .ZN(n95) );
  OAI222D0 U62 ( .A1(n35), .A2(n97), .B1(n36), .B2(n95), .C1(n78), .C2(n96), 
        .ZN(Mantissa_Out[1]) );
  INVD1 U63 ( .I(y_sub_x[18]), .ZN(n58) );
  INVD1 U64 ( .I(y_sub_x[6]), .ZN(n46) );
  INVD1 U65 ( .I(y_sub_x[7]), .ZN(n47) );
  INVD1 U66 ( .I(y_sub_x[8]), .ZN(n48) );
  INVD1 U67 ( .I(y_sub_x[9]), .ZN(n49) );
  INVD1 U68 ( .I(y_sub_x[10]), .ZN(n50) );
  INVD1 U69 ( .I(y_sub_x[11]), .ZN(n51) );
  INVD1 U70 ( .I(y_sub_x[12]), .ZN(n52) );
  INVD1 U71 ( .I(y_sub_x[13]), .ZN(n53) );
  INVD1 U72 ( .I(y_sub_x[14]), .ZN(n54) );
  INVD1 U73 ( .I(y_sub_x[15]), .ZN(n55) );
  INVD1 U74 ( .I(y_sub_x[16]), .ZN(n56) );
  INVD1 U75 ( .I(y_sub_x[17]), .ZN(n57) );
  INVD1 U76 ( .I(x_sub_y[18]), .ZN(n74) );
  INVD1 U77 ( .I(x_sub_y[12]), .ZN(n68) );
  INVD1 U78 ( .I(x_sub_y[8]), .ZN(n64) );
  INVD1 U79 ( .I(x_sub_y[9]), .ZN(n65) );
  INVD1 U80 ( .I(x_sub_y[10]), .ZN(n66) );
  INVD1 U81 ( .I(x_sub_y[11]), .ZN(n67) );
  INVD1 U82 ( .I(x_sub_y[13]), .ZN(n69) );
  INVD1 U83 ( .I(x_sub_y[14]), .ZN(n70) );
  INVD1 U84 ( .I(x_sub_y[15]), .ZN(n71) );
  INVD1 U85 ( .I(x_sub_y[16]), .ZN(n72) );
  INVD1 U86 ( .I(x_sub_y[17]), .ZN(n73) );
  INVD1 U87 ( .I(y_sub_x[5]), .ZN(n45) );
  INVD1 U88 ( .I(x_sub_y[7]), .ZN(n63) );
  INVD1 U90 ( .I(x_sub_y[6]), .ZN(n62) );
  AOI22D1 U91 ( .A1(n38), .A2(x_sub_y[19]), .B1(y_sub_x[19]), .B2(n37), .ZN(
        n40) );
  IOA21D1 U92 ( .A1(n39), .A2(x_sub_y[18]), .B(n40), .ZN(L2_p[16]) );
  INVD1 U93 ( .I(x_sub_y[5]), .ZN(n61) );
  IOA21D1 U94 ( .A1(n39), .A2(x_sub_y[19]), .B(n40), .ZN(L2_p[20]) );
  INVD1 U95 ( .I(n1), .ZN(n31) );
  INVD1 U96 ( .I(x_sub_y[4]), .ZN(n60) );
  INVD1 U97 ( .I(n10), .ZN(n43) );
  INVD1 U98 ( .I(Mantissa_Y[18]), .ZN(n76) );
  INVD1 U99 ( .I(n8), .ZN(n42) );
  ND2D1 U102 ( .A1(Mantissa_Y[18]), .A2(n1), .ZN(n4) );
  ND3D1 U103 ( .A1(n76), .A2(n32), .A3(n30), .ZN(n3) );
  INVD1 U104 ( .I(Res[2]), .ZN(n96) );
  INVD1 U105 ( .I(Mantissa_Y[16]), .ZN(n30) );
  INR2D1 U106 ( .A1(x_sub_y[19]), .B1(Mantissa_Y[18]), .ZN(L1_p2[20]) );
  INVD1 U107 ( .I(Mantissa_Y[17]), .ZN(n32) );
  INR2D1 U108 ( .A1(x_sub_y[18]), .B1(Mantissa_Y[18]), .ZN(L1_p2[17]) );
  INR2D1 U109 ( .A1(x_sub_y[12]), .B1(Mantissa_Y[18]), .ZN(L1_p2[11]) );
  INR2D1 U110 ( .A1(x_sub_y[7]), .B1(Mantissa_Y[18]), .ZN(L1_p2[6]) );
  INR2D1 U111 ( .A1(x_sub_y[8]), .B1(Mantissa_Y[18]), .ZN(L1_p2[7]) );
  INR2D1 U112 ( .A1(x_sub_y[9]), .B1(Mantissa_Y[18]), .ZN(L1_p2[8]) );
  INR2D1 U113 ( .A1(x_sub_y[10]), .B1(Mantissa_Y[18]), .ZN(L1_p2[9]) );
  INR2D1 U114 ( .A1(x_sub_y[11]), .B1(Mantissa_Y[18]), .ZN(L1_p2[10]) );
  INR2D1 U115 ( .A1(x_sub_y[13]), .B1(Mantissa_Y[18]), .ZN(L1_p2[12]) );
  INR2D1 U116 ( .A1(x_sub_y[14]), .B1(Mantissa_Y[18]), .ZN(L1_p2[13]) );
  INR2D1 U117 ( .A1(x_sub_y[15]), .B1(Mantissa_Y[18]), .ZN(L1_p2[14]) );
  INR2D1 U118 ( .A1(x_sub_y[16]), .B1(Mantissa_Y[18]), .ZN(L1_p2[15]) );
  INR2D1 U119 ( .A1(x_sub_y[17]), .B1(Mantissa_Y[18]), .ZN(L1_p2[16]) );
  INR2D1 U120 ( .A1(x_sub_y[4]), .B1(Mantissa_Y[18]), .ZN(L1_p2[3]) );
  INR2D1 U121 ( .A1(x_sub_y[5]), .B1(Mantissa_Y[18]), .ZN(L1_p2[4]) );
  INR2D1 U122 ( .A1(x_sub_y[6]), .B1(Mantissa_Y[18]), .ZN(L1_p2[5]) );
  INR2D1 U123 ( .A1(x_sub_y[3]), .B1(Mantissa_Y[18]), .ZN(L1_p2[2]) );
  NR2D1 U124 ( .A1(Mantissa_Y[17]), .A2(Mantissa_Y[18]), .ZN(n39) );
  INR2D1 U125 ( .A1(Mantissa_Y[18]), .B1(Mantissa_Y[17]), .ZN(n38) );
  INR2D1 U126 ( .A1(x_sub_y[2]), .B1(Mantissa_Y[18]), .ZN(L1_p2[1]) );
  INR2D1 U127 ( .A1(Mantissa_Y[17]), .B1(Mantissa_Y[18]), .ZN(n37) );
  INR2D1 U128 ( .A1(x_sub_y[1]), .B1(Mantissa_Y[18]), .ZN(L1_p2[0]) );
  INVD1 U129 ( .I(Res[1]), .ZN(n97) );
  OAI222D0 U130 ( .A1(n98), .A2(n35), .B1(n96), .B2(n36), .C1(n97), .C2(n78), 
        .ZN(Mantissa_Out[0]) );
  INVD1 U131 ( .I(A31S[0]), .ZN(n98) );
  TIEL U133 ( .ZN(n13) );
  NR2D0 U134 ( .A1(n30), .A2(Mantissa_Y[17]), .ZN(n1) );
  NR2D0 U135 ( .A1(n31), .A2(Mantissa_Y[18]), .ZN(n9) );
  NR2D0 U136 ( .A1(n32), .A2(Mantissa_Y[16]), .ZN(n6) );
  OAI222D0 U137 ( .A1(n45), .A2(n4), .B1(n62), .B2(n3), .C1(n61), .C2(n2), 
        .ZN(L3_p2[0]) );
  OAI222D0 U138 ( .A1(n46), .A2(n4), .B1(n63), .B2(n3), .C1(n62), .C2(n2), 
        .ZN(L3_p2[1]) );
  OAI222D0 U139 ( .A1(n47), .A2(n4), .B1(n64), .B2(n3), .C1(n63), .C2(n2), 
        .ZN(L3_p2[2]) );
  OAI222D0 U140 ( .A1(n48), .A2(n4), .B1(n65), .B2(n3), .C1(n64), .C2(n2), 
        .ZN(L3_p2[3]) );
  OAI222D0 U141 ( .A1(n49), .A2(n4), .B1(n66), .B2(n3), .C1(n65), .C2(n2), 
        .ZN(L3_p2[4]) );
  OAI222D0 U142 ( .A1(n50), .A2(n4), .B1(n67), .B2(n3), .C1(n66), .C2(n2), 
        .ZN(L3_p2[5]) );
  OAI222D0 U143 ( .A1(n51), .A2(n4), .B1(n68), .B2(n3), .C1(n67), .C2(n2), 
        .ZN(L3_p2[6]) );
  OAI222D0 U144 ( .A1(n52), .A2(n4), .B1(n69), .B2(n3), .C1(n68), .C2(n2), 
        .ZN(L3_p2[7]) );
  OAI222D0 U145 ( .A1(n53), .A2(n4), .B1(n70), .B2(n3), .C1(n69), .C2(n2), 
        .ZN(L3_p2[8]) );
  OAI222D0 U146 ( .A1(n54), .A2(n4), .B1(n71), .B2(n3), .C1(n70), .C2(n2), 
        .ZN(L3_p2[9]) );
  OAI222D0 U147 ( .A1(n55), .A2(n4), .B1(n72), .B2(n3), .C1(n71), .C2(n2), 
        .ZN(L3_p2[10]) );
  OAI222D0 U148 ( .A1(n56), .A2(n4), .B1(n73), .B2(n3), .C1(n72), .C2(n2), 
        .ZN(L3_p2[11]) );
  OAI222D0 U149 ( .A1(n57), .A2(n4), .B1(n74), .B2(n3), .C1(n73), .C2(n2), 
        .ZN(L3_p2[12]) );
  OAI222D0 U150 ( .A1(n58), .A2(n4), .B1(n75), .B2(n3), .C1(n74), .C2(n2), 
        .ZN(L3_p2[13]) );
  AOI21D0 U151 ( .A1(n32), .A2(n76), .B(n6), .ZN(n5) );
  NR2D0 U152 ( .A1(n32), .A2(n76), .ZN(n27) );
  CKND2D0 U153 ( .A1(Mantissa_Y[16]), .A2(n27), .ZN(n10) );
  NR2D0 U154 ( .A1(n27), .A2(Mantissa_Y[16]), .ZN(n8) );
  AOI22D0 U155 ( .A1(x_sub_y[3]), .A2(n8), .B1(y_sub_x[4]), .B2(n9), .ZN(n7)
         );
  OAI221D0 U156 ( .A1(n10), .A2(n62), .B1(n41), .B2(n60), .C(n7), .ZN(L3_p1[0]) );
  AOI22D0 U157 ( .A1(x_sub_y[7]), .A2(n43), .B1(x_sub_y[5]), .B2(n25), .ZN(n11) );
  OAI221D0 U158 ( .A1(n42), .A2(n60), .B1(n34), .B2(n45), .C(n11), .ZN(
        L3_p1[1]) );
  AOI22D0 U159 ( .A1(x_sub_y[8]), .A2(n43), .B1(x_sub_y[6]), .B2(n25), .ZN(n12) );
  OAI221D0 U160 ( .A1(n42), .A2(n61), .B1(n34), .B2(n46), .C(n12), .ZN(
        L3_p1[2]) );
  AOI22D0 U161 ( .A1(x_sub_y[9]), .A2(n43), .B1(x_sub_y[7]), .B2(n25), .ZN(n14) );
  OAI221D0 U162 ( .A1(n42), .A2(n62), .B1(n34), .B2(n47), .C(n14), .ZN(
        L3_p1[3]) );
  AOI22D0 U163 ( .A1(x_sub_y[10]), .A2(n43), .B1(x_sub_y[8]), .B2(n25), .ZN(
        n15) );
  OAI221D0 U164 ( .A1(n42), .A2(n63), .B1(n34), .B2(n48), .C(n15), .ZN(
        L3_p1[4]) );
  AOI22D0 U165 ( .A1(x_sub_y[11]), .A2(n43), .B1(x_sub_y[9]), .B2(n25), .ZN(
        n16) );
  OAI221D0 U166 ( .A1(n42), .A2(n64), .B1(n34), .B2(n49), .C(n16), .ZN(
        L3_p1[5]) );
  AOI22D0 U167 ( .A1(x_sub_y[12]), .A2(n43), .B1(x_sub_y[10]), .B2(n25), .ZN(
        n17) );
  OAI221D0 U168 ( .A1(n42), .A2(n65), .B1(n34), .B2(n50), .C(n17), .ZN(
        L3_p1[6]) );
  AOI22D0 U169 ( .A1(x_sub_y[13]), .A2(n43), .B1(x_sub_y[11]), .B2(n25), .ZN(
        n18) );
  OAI221D0 U170 ( .A1(n42), .A2(n66), .B1(n34), .B2(n51), .C(n18), .ZN(
        L3_p1[7]) );
  AOI22D0 U171 ( .A1(x_sub_y[14]), .A2(n43), .B1(x_sub_y[12]), .B2(n25), .ZN(
        n19) );
  OAI221D0 U172 ( .A1(n42), .A2(n67), .B1(n34), .B2(n52), .C(n19), .ZN(
        L3_p1[8]) );
  AOI22D0 U173 ( .A1(x_sub_y[15]), .A2(n43), .B1(x_sub_y[13]), .B2(n25), .ZN(
        n20) );
  OAI221D0 U174 ( .A1(n42), .A2(n68), .B1(n34), .B2(n53), .C(n20), .ZN(
        L3_p1[9]) );
  AOI22D0 U175 ( .A1(x_sub_y[16]), .A2(n43), .B1(x_sub_y[14]), .B2(n25), .ZN(
        n21) );
  OAI221D0 U176 ( .A1(n42), .A2(n69), .B1(n34), .B2(n54), .C(n21), .ZN(
        L3_p1[10]) );
  AOI22D0 U177 ( .A1(x_sub_y[17]), .A2(n43), .B1(x_sub_y[15]), .B2(n25), .ZN(
        n22) );
  OAI221D0 U178 ( .A1(n42), .A2(n70), .B1(n34), .B2(n55), .C(n22), .ZN(
        L3_p1[11]) );
  AOI22D0 U179 ( .A1(n43), .A2(x_sub_y[18]), .B1(x_sub_y[16]), .B2(n25), .ZN(
        n23) );
  OAI221D0 U180 ( .A1(n42), .A2(n71), .B1(n34), .B2(n56), .C(n23), .ZN(
        L3_p1[12]) );
  AOI22D0 U181 ( .A1(n43), .A2(x_sub_y[19]), .B1(x_sub_y[17]), .B2(n25), .ZN(
        n24) );
  OAI221D0 U182 ( .A1(n42), .A2(n72), .B1(n34), .B2(n57), .C(n24), .ZN(
        L3_p1[13]) );
  AOI22D0 U183 ( .A1(n43), .A2(x_sub_y[19]), .B1(n25), .B2(x_sub_y[18]), .ZN(
        n26) );
  OAI221D0 U184 ( .A1(n42), .A2(n73), .B1(n34), .B2(n58), .C(n26), .ZN(
        L3_p1[14]) );
  AOI21D0 U185 ( .A1(Mantissa_Y[18]), .A2(Mantissa_Y[16]), .B(n27), .ZN(n28)
         );
  OAI222D0 U186 ( .A1(n42), .A2(n74), .B1(n75), .B2(n28), .C1(n34), .C2(n59), 
        .ZN(L3_p1[15]) );
  NR2D0 U187 ( .A1(n30), .A2(Mantissa_Y[18]), .ZN(n29) );
  OAI22D0 U188 ( .A1(n34), .A2(n59), .B1(n29), .B2(n75), .ZN(L3_p1[16]) );
  NR2D1 U189 ( .A1(n9), .A2(n6), .ZN(n2) );
  CKND0 U5 ( .I(n41), .ZN(n25) );
  OAI21D0 U89 ( .A1(n6), .A2(n1), .B(Mantissa_Y[18]), .ZN(n41) );
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
  CKBD1 U13 ( .I(result_fraction[12]), .Z(result[12]) );
  CKBD1 U14 ( .I(result_fraction[7]), .Z(result[7]) );
  CKBD1 U15 ( .I(result_fraction[8]), .Z(result[8]) );
  CKBD1 U16 ( .I(result_fraction[9]), .Z(result[9]) );
  CKBD1 U17 ( .I(result_fraction[10]), .Z(result[10]) );
  CKBD1 U18 ( .I(result_fraction[11]), .Z(result[11]) );
  CKBD1 U19 ( .I(result_fraction[6]), .Z(result[6]) );
  CKBD1 U20 ( .I(result_fraction[5]), .Z(result[5]) );
  FA1D0 U21 ( .A(N4), .B(exponent_adjust[1]), .CI(n1), .CO(
        add_0_root_add_0_root_add_22_2_carry[2]), .S(result[24]) );
  FA1D0 U22 ( .A(N5), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[2]), .CO(
        add_0_root_add_0_root_add_22_2_carry[3]), .S(result[25]) );
  FA1D0 U23 ( .A(N6), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[3]), .CO(
        add_0_root_add_0_root_add_22_2_carry[4]), .S(result[26]) );
  FA1D0 U24 ( .A(N7), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[4]), .CO(
        add_0_root_add_0_root_add_22_2_carry[5]), .S(result[27]) );
  FA1D0 U25 ( .A(N8), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[5]), .CO(
        add_0_root_add_0_root_add_22_2_carry[6]), .S(result[28]) );
  FA1D0 U26 ( .A(N9), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[6]), .CO(
        add_0_root_add_0_root_add_22_2_carry[7]), .S(result[29]) );
  XOR3D1 U35 ( .A1(N10), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_22_2_carry[7]), .Z(result[30]) );
  CKBD1 U36 ( .I(x[4]), .Z(fraction_x[4]) );
  CKBD1 U39 ( .I(x[5]), .Z(fraction_x[5]) );
  CKBD1 U41 ( .I(x[7]), .Z(fraction_x[7]) );
  CKBD1 U42 ( .I(x[6]), .Z(fraction_x[6]) );
  CKBD1 U44 ( .I(x[8]), .Z(fraction_x[8]) );
  CKBD1 U46 ( .I(x[9]), .Z(fraction_x[9]) );
  CKBD1 U48 ( .I(x[10]), .Z(fraction_x[10]) );
  CKBD1 U50 ( .I(result_fraction[4]), .Z(result[4]) );
  CKBD1 U51 ( .I(x[11]), .Z(fraction_x[11]) );
  CKBD1 U52 ( .I(x[12]), .Z(fraction_x[12]) );
  CKBD1 U53 ( .I(x[13]), .Z(fraction_x[13]) );
  CKBD1 U54 ( .I(x[14]), .Z(fraction_x[14]) );
  CKBD1 U55 ( .I(y[20]), .Z(fraction_y[20]) );
  CKBD1 U56 ( .I(x[15]), .Z(fraction_x[15]) );
  CKBD1 U57 ( .I(y[21]), .Z(fraction_y[21]) );
  CKBD1 U58 ( .I(y[22]), .Z(fraction_y[22]) );
  CKBD1 U59 ( .I(x[16]), .Z(fraction_x[16]) );
  CKBD1 U60 ( .I(x[17]), .Z(fraction_x[17]) );
  CKBD1 U61 ( .I(y[17]), .Z(fraction_y[17]) );
  CKBD1 U62 ( .I(x[18]), .Z(fraction_x[18]) );
  CKBD1 U63 ( .I(y[18]), .Z(fraction_y[18]) );
  CKBD1 U64 ( .I(x[19]), .Z(fraction_x[19]) );
  CKBD1 U65 ( .I(y[19]), .Z(fraction_y[19]) );
  CKBD1 U66 ( .I(x[20]), .Z(fraction_x[20]) );
  CKBD1 U67 ( .I(x[21]), .Z(fraction_x[21]) );
  CKBD1 U68 ( .I(x[22]), .Z(fraction_x[22]) );
  INVD1 U69 ( .I(y[29]), .ZN(N17) );
  INVD1 U70 ( .I(y[24]), .ZN(N12) );
  INVD1 U71 ( .I(y[25]), .ZN(N13) );
  INVD1 U72 ( .I(y[26]), .ZN(N14) );
  INVD1 U73 ( .I(y[27]), .ZN(N15) );
  INVD1 U74 ( .I(y[28]), .ZN(N16) );
  CKBD1 U87 ( .I(y[16]), .Z(fraction_y[16]) );
  CKBD1 U88 ( .I(y[15]), .Z(fraction_y[15]) );
  CKBD1 U89 ( .I(y[14]), .Z(fraction_y[14]) );
  CKBD1 U90 ( .I(y[13]), .Z(fraction_y[13]) );
  CKBD1 U91 ( .I(y[12]), .Z(fraction_y[12]) );
  CKBD1 U92 ( .I(y[11]), .Z(fraction_y[11]) );
  CKBD1 U93 ( .I(y[10]), .Z(fraction_y[10]) );
  CKBD1 U94 ( .I(y[9]), .Z(fraction_y[9]) );
  CKBD1 U95 ( .I(y[8]), .Z(fraction_y[8]) );
  CKBD1 U96 ( .I(y[7]), .Z(fraction_y[7]) );
  CKBD1 U97 ( .I(y[6]), .Z(fraction_y[6]) );
  CKBD1 U98 ( .I(y[5]), .Z(fraction_y[5]) );
  CKBD1 U99 ( .I(y[4]), .Z(fraction_y[4]) );
  CKBD1 U100 ( .I(result_fraction[22]), .Z(result[22]) );
  CKBD1 U101 ( .I(result_fraction[21]), .Z(result[21]) );
  CKBD1 U102 ( .I(result_fraction[20]), .Z(result[20]) );
  CKBD1 U103 ( .I(result_fraction[19]), .Z(result[19]) );
  CKBD1 U104 ( .I(result_fraction[18]), .Z(result[18]) );
  CKBD1 U105 ( .I(result_fraction[17]), .Z(result[17]) );
  CKBD1 U106 ( .I(result_fraction[16]), .Z(result[16]) );
  CKBD1 U107 ( .I(result_fraction[15]), .Z(result[15]) );
  CKBD1 U108 ( .I(result_fraction[14]), .Z(result[14]) );
  CKBD1 U109 ( .I(result_fraction[13]), .Z(result[13]) );
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


module fig8_pace_l3_d4 ( x, y, result );
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

  Mantissa_Div_L3_MANTISSA_WIDTH19 core ( .Mantissa_X(mx), .Mantissa_Y(my), 
        .Mantissa_Out(mz), .Shift(shift) );
  FP_DIV_WRAPPER_32_width_trunc4 shell ( .x({x[31:4], 1'b0, 1'b0, 1'b0, 1'b0}), 
        .y({y[31:4], 1'b0, 1'b0, 1'b0, 1'b0}), .out0({result[31:4], 
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3}), .mantissa_x(mx), 
        .mantissa_y(my), .mantissa_out(mz), .shift(n1) );
  INVD1 U2 ( .I(shift), .ZN(n1) );
endmodule

