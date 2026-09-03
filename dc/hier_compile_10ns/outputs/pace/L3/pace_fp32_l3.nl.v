/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Thu Sep  3 12:42:12 2026
/////////////////////////////////////////////////////////////


module CSA3_2_Array_WIDTH25_0 ( In_1, In_2, In_3, S, C );
  input [24:0] In_1;
  input [24:0] In_2;
  input [24:0] In_3;
  output [24:0] S;
  output [24:0] C;
  wire   n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49;

  CKXOR2D1 U1 ( .A1(In_3[9]), .A2(In_2[9]), .Z(S[9]) );
  CKXOR2D1 U2 ( .A1(In_3[8]), .A2(In_2[8]), .Z(S[8]) );
  CKXOR2D1 U3 ( .A1(In_3[7]), .A2(In_2[7]), .Z(S[7]) );
  CKXOR2D1 U4 ( .A1(In_3[6]), .A2(In_2[6]), .Z(S[6]) );
  CKXOR2D1 U5 ( .A1(In_3[5]), .A2(In_2[5]), .Z(S[5]) );
  CKXOR2D1 U6 ( .A1(In_3[4]), .A2(In_2[4]), .Z(S[4]) );
  CKXOR2D1 U7 ( .A1(In_3[3]), .A2(In_2[3]), .Z(S[3]) );
  CKXOR2D1 U8 ( .A1(In_3[2]), .A2(In_2[2]), .Z(S[2]) );
  CKXOR2D1 U10 ( .A1(In_3[23]), .A2(In_2[23]), .Z(S[23]) );
  CKXOR2D1 U11 ( .A1(In_3[22]), .A2(In_2[22]), .Z(S[22]) );
  CKXOR2D1 U12 ( .A1(In_3[21]), .A2(In_2[21]), .Z(S[21]) );
  CKXOR2D1 U13 ( .A1(In_3[20]), .A2(In_2[20]), .Z(S[20]) );
  CKXOR2D1 U14 ( .A1(In_3[1]), .A2(In_2[1]), .Z(S[1]) );
  CKXOR2D1 U15 ( .A1(In_3[19]), .A2(In_2[19]), .Z(S[19]) );
  CKXOR2D1 U16 ( .A1(In_3[18]), .A2(In_2[18]), .Z(S[18]) );
  CKXOR2D1 U17 ( .A1(In_3[17]), .A2(In_2[17]), .Z(S[17]) );
  CKXOR2D1 U18 ( .A1(In_3[16]), .A2(In_2[16]), .Z(S[16]) );
  CKXOR2D1 U19 ( .A1(In_3[15]), .A2(In_2[15]), .Z(S[15]) );
  CKXOR2D1 U20 ( .A1(In_3[14]), .A2(In_2[14]), .Z(S[14]) );
  CKXOR2D1 U21 ( .A1(In_3[13]), .A2(In_2[13]), .Z(S[13]) );
  CKXOR2D1 U22 ( .A1(In_3[12]), .A2(In_2[12]), .Z(S[12]) );
  CKXOR2D1 U23 ( .A1(In_3[11]), .A2(In_2[11]), .Z(S[11]) );
  CKXOR2D1 U24 ( .A1(In_3[10]), .A2(In_2[10]), .Z(S[10]) );
  CKXOR2D1 U25 ( .A1(In_3[0]), .A2(In_2[0]), .Z(S[0]) );
  XNR2D0 U9 ( .A1(In_3[24]), .A2(In_2[24]), .ZN(S[24]) );
  CKND0 U26 ( .I(n49), .ZN(C[23]) );
  CKND1 U27 ( .I(n48), .ZN(C[22]) );
  CKND2D0 U28 ( .A1(In_3[23]), .A2(In_2[23]), .ZN(n49) );
  CKND1 U29 ( .I(n47), .ZN(C[21]) );
  CKND2D0 U30 ( .A1(In_3[22]), .A2(In_2[22]), .ZN(n48) );
  CKND1 U31 ( .I(n46), .ZN(C[20]) );
  CKND2D0 U32 ( .A1(In_3[21]), .A2(In_2[21]), .ZN(n47) );
  CKND1 U33 ( .I(n45), .ZN(C[19]) );
  CKND2D0 U34 ( .A1(In_3[20]), .A2(In_2[20]), .ZN(n46) );
  CKND1 U35 ( .I(n44), .ZN(C[18]) );
  CKND2D0 U36 ( .A1(In_3[19]), .A2(In_2[19]), .ZN(n45) );
  CKND1 U37 ( .I(n43), .ZN(C[17]) );
  CKND2D0 U38 ( .A1(In_3[18]), .A2(In_2[18]), .ZN(n44) );
  CKND1 U39 ( .I(n42), .ZN(C[16]) );
  CKND2D0 U40 ( .A1(In_3[17]), .A2(In_2[17]), .ZN(n43) );
  CKND1 U41 ( .I(n41), .ZN(C[15]) );
  CKND2D0 U42 ( .A1(In_3[16]), .A2(In_2[16]), .ZN(n42) );
  CKND1 U43 ( .I(n40), .ZN(C[14]) );
  CKND2D0 U44 ( .A1(In_3[15]), .A2(In_2[15]), .ZN(n41) );
  CKND1 U45 ( .I(n39), .ZN(C[13]) );
  CKND2D0 U46 ( .A1(In_3[14]), .A2(In_2[14]), .ZN(n40) );
  CKND1 U47 ( .I(n38), .ZN(C[12]) );
  CKND2D0 U48 ( .A1(In_3[13]), .A2(In_2[13]), .ZN(n39) );
  CKND1 U49 ( .I(n37), .ZN(C[11]) );
  CKND2D0 U50 ( .A1(In_3[12]), .A2(In_2[12]), .ZN(n38) );
  CKND1 U51 ( .I(n36), .ZN(C[10]) );
  CKND2D0 U52 ( .A1(In_3[11]), .A2(In_2[11]), .ZN(n37) );
  CKND1 U53 ( .I(n35), .ZN(C[9]) );
  CKND2D0 U54 ( .A1(In_3[10]), .A2(In_2[10]), .ZN(n36) );
  CKND1 U55 ( .I(n34), .ZN(C[8]) );
  CKND2D0 U56 ( .A1(In_3[9]), .A2(In_2[9]), .ZN(n35) );
  CKND1 U57 ( .I(n33), .ZN(C[7]) );
  CKND2D0 U58 ( .A1(In_3[8]), .A2(In_2[8]), .ZN(n34) );
  CKND1 U59 ( .I(n32), .ZN(C[6]) );
  CKND2D0 U60 ( .A1(In_3[7]), .A2(In_2[7]), .ZN(n33) );
  CKND1 U61 ( .I(n31), .ZN(C[5]) );
  CKND2D0 U62 ( .A1(In_3[6]), .A2(In_2[6]), .ZN(n32) );
  CKND1 U63 ( .I(n30), .ZN(C[4]) );
  CKND2D0 U64 ( .A1(In_3[5]), .A2(In_2[5]), .ZN(n31) );
  CKND1 U65 ( .I(n29), .ZN(C[3]) );
  CKND2D0 U66 ( .A1(In_3[4]), .A2(In_2[4]), .ZN(n30) );
  CKND1 U67 ( .I(n28), .ZN(C[2]) );
  CKND2D0 U68 ( .A1(In_3[3]), .A2(In_2[3]), .ZN(n29) );
  CKND1 U69 ( .I(n26), .ZN(C[0]) );
  CKND1 U70 ( .I(n27), .ZN(C[1]) );
  CKND2D0 U71 ( .A1(In_3[2]), .A2(In_2[2]), .ZN(n28) );
  CKND2D0 U72 ( .A1(In_3[1]), .A2(In_2[1]), .ZN(n27) );
  CKND2D0 U73 ( .A1(In_3[0]), .A2(In_2[0]), .ZN(n26) );
endmodule


module CSA3_2_Array_WIDTH25_3 ( In_1, In_2, In_3, S, C );
  input [24:0] In_1;
  input [24:0] In_2;
  input [24:0] In_3;
  output [24:0] S;
  output [24:0] C;
  wire   n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n43, n44, n45, n46, n47, n48, n49, n50;

  CKXOR2D1 U1 ( .A1(In_3[9]), .A2(n50), .Z(S[9]) );
  CKXOR2D1 U2 ( .A1(In_3[8]), .A2(n49), .Z(S[8]) );
  CKXOR2D1 U3 ( .A1(In_3[7]), .A2(n48), .Z(S[7]) );
  CKXOR2D1 U4 ( .A1(In_3[6]), .A2(n47), .Z(S[6]) );
  CKXOR2D1 U5 ( .A1(In_3[5]), .A2(n46), .Z(S[5]) );
  CKXOR2D1 U6 ( .A1(In_3[4]), .A2(n45), .Z(S[4]) );
  CKXOR2D1 U7 ( .A1(In_3[3]), .A2(n44), .Z(S[3]) );
  CKXOR2D1 U8 ( .A1(In_3[2]), .A2(n43), .Z(S[2]) );
  CKXOR2D1 U14 ( .A1(In_3[1]), .A2(n37), .Z(S[1]) );
  CKXOR2D1 U17 ( .A1(In_3[17]), .A2(n34), .Z(S[17]) );
  CKXOR2D1 U18 ( .A1(In_3[16]), .A2(n33), .Z(S[16]) );
  CKXOR2D1 U19 ( .A1(In_3[15]), .A2(n32), .Z(S[15]) );
  CKXOR2D1 U20 ( .A1(In_3[14]), .A2(n31), .Z(S[14]) );
  CKXOR2D1 U21 ( .A1(In_3[13]), .A2(n30), .Z(S[13]) );
  CKXOR2D1 U22 ( .A1(In_3[12]), .A2(n29), .Z(S[12]) );
  CKXOR2D1 U23 ( .A1(In_3[11]), .A2(n28), .Z(S[11]) );
  CKXOR2D1 U24 ( .A1(In_3[10]), .A2(n27), .Z(S[10]) );
  CKXOR2D1 U25 ( .A1(In_3[0]), .A2(n26), .Z(S[0]) );
  CKXOR2D1 U27 ( .A1(In_2[9]), .A2(In_1[9]), .Z(n50) );
  CKXOR2D1 U29 ( .A1(In_2[8]), .A2(In_1[8]), .Z(n49) );
  CKXOR2D1 U31 ( .A1(In_2[7]), .A2(In_1[7]), .Z(n48) );
  CKXOR2D1 U33 ( .A1(In_2[6]), .A2(In_1[6]), .Z(n47) );
  CKXOR2D1 U35 ( .A1(In_2[5]), .A2(In_1[5]), .Z(n46) );
  CKXOR2D1 U37 ( .A1(In_2[4]), .A2(In_1[4]), .Z(n45) );
  CKXOR2D1 U39 ( .A1(In_2[3]), .A2(In_1[3]), .Z(n44) );
  CKXOR2D1 U41 ( .A1(In_2[2]), .A2(In_1[2]), .Z(n43) );
  CKXOR2D1 U45 ( .A1(In_2[23]), .A2(In_1[23]), .Z(n41) );
  CKXOR2D1 U47 ( .A1(In_2[22]), .A2(In_1[22]), .Z(n40) );
  CKXOR2D1 U49 ( .A1(In_2[21]), .A2(In_1[21]), .Z(n39) );
  CKXOR2D1 U51 ( .A1(In_2[20]), .A2(In_1[20]), .Z(n38) );
  CKXOR2D1 U53 ( .A1(In_2[1]), .A2(In_1[1]), .Z(n37) );
  CKXOR2D1 U55 ( .A1(In_2[19]), .A2(In_1[19]), .Z(n36) );
  CKXOR2D1 U57 ( .A1(In_2[18]), .A2(In_1[18]), .Z(n35) );
  CKXOR2D1 U59 ( .A1(In_2[17]), .A2(In_1[17]), .Z(n34) );
  CKXOR2D1 U61 ( .A1(In_2[16]), .A2(In_1[16]), .Z(n33) );
  CKXOR2D1 U63 ( .A1(In_2[15]), .A2(In_1[15]), .Z(n32) );
  CKXOR2D1 U65 ( .A1(In_2[14]), .A2(In_1[14]), .Z(n31) );
  CKXOR2D1 U67 ( .A1(In_2[13]), .A2(In_1[13]), .Z(n30) );
  CKXOR2D1 U69 ( .A1(In_2[12]), .A2(In_1[12]), .Z(n29) );
  CKXOR2D1 U71 ( .A1(In_2[11]), .A2(In_1[11]), .Z(n28) );
  CKXOR2D1 U73 ( .A1(In_2[10]), .A2(In_1[10]), .Z(n27) );
  CKXOR2D1 U75 ( .A1(In_2[0]), .A2(In_1[0]), .Z(n26) );
  CKXOR2D0 U9 ( .A1(In_3[18]), .A2(n35), .Z(S[18]) );
  CKXOR2D0 U10 ( .A1(In_3[19]), .A2(n36), .Z(S[19]) );
  CKXOR2D0 U11 ( .A1(In_3[20]), .A2(n38), .Z(S[20]) );
  CKXOR2D0 U12 ( .A1(In_3[21]), .A2(n39), .Z(S[21]) );
  CKXOR2D0 U13 ( .A1(In_3[22]), .A2(n40), .Z(S[22]) );
  CKXOR2D0 U15 ( .A1(In_3[23]), .A2(n41), .Z(S[23]) );
  AO22D0 U26 ( .A1(In_2[18]), .A2(In_1[18]), .B1(n35), .B2(In_3[18]), .Z(C[18]) );
  AO22D0 U28 ( .A1(In_2[20]), .A2(In_1[20]), .B1(n38), .B2(In_3[20]), .Z(C[20]) );
  AO22D0 U30 ( .A1(In_2[21]), .A2(In_1[21]), .B1(n39), .B2(In_3[21]), .Z(C[21]) );
  AO22D0 U32 ( .A1(In_2[22]), .A2(In_1[22]), .B1(n40), .B2(In_3[22]), .Z(C[22]) );
  AO22D0 U34 ( .A1(In_2[23]), .A2(In_1[23]), .B1(n41), .B2(In_3[23]), .Z(C[23]) );
  AO22D0 U36 ( .A1(In_2[17]), .A2(In_1[17]), .B1(n34), .B2(In_3[17]), .Z(C[17]) );
  AO22D0 U38 ( .A1(In_2[16]), .A2(In_1[16]), .B1(n33), .B2(In_3[16]), .Z(C[16]) );
  AO22D0 U40 ( .A1(In_2[6]), .A2(In_1[6]), .B1(n47), .B2(In_3[6]), .Z(C[6]) );
  AO22D0 U42 ( .A1(In_2[1]), .A2(In_1[1]), .B1(n37), .B2(In_3[1]), .Z(C[1]) );
  AO22D0 U44 ( .A1(In_2[2]), .A2(In_1[2]), .B1(n43), .B2(In_3[2]), .Z(C[2]) );
  AO22D0 U46 ( .A1(In_2[3]), .A2(In_1[3]), .B1(n44), .B2(In_3[3]), .Z(C[3]) );
  AO22D0 U48 ( .A1(In_2[4]), .A2(In_1[4]), .B1(n45), .B2(In_3[4]), .Z(C[4]) );
  AO22D0 U50 ( .A1(In_2[5]), .A2(In_1[5]), .B1(n46), .B2(In_3[5]), .Z(C[5]) );
  AO22D0 U52 ( .A1(In_2[7]), .A2(In_1[7]), .B1(n48), .B2(In_3[7]), .Z(C[7]) );
  AO22D0 U54 ( .A1(In_2[8]), .A2(In_1[8]), .B1(n49), .B2(In_3[8]), .Z(C[8]) );
  AO22D0 U56 ( .A1(In_2[9]), .A2(In_1[9]), .B1(n50), .B2(In_3[9]), .Z(C[9]) );
  AO22D0 U58 ( .A1(In_2[10]), .A2(In_1[10]), .B1(n27), .B2(In_3[10]), .Z(C[10]) );
  AO22D0 U60 ( .A1(In_2[11]), .A2(In_1[11]), .B1(n28), .B2(In_3[11]), .Z(C[11]) );
  AO22D0 U62 ( .A1(In_2[12]), .A2(In_1[12]), .B1(n29), .B2(In_3[12]), .Z(C[12]) );
  AO22D0 U64 ( .A1(In_2[13]), .A2(In_1[13]), .B1(n30), .B2(In_3[13]), .Z(C[13]) );
  AO22D0 U66 ( .A1(In_2[14]), .A2(In_1[14]), .B1(n31), .B2(In_3[14]), .Z(C[14]) );
  AO22D0 U68 ( .A1(In_2[15]), .A2(In_1[15]), .B1(n32), .B2(In_3[15]), .Z(C[15]) );
  AO22D0 U70 ( .A1(In_2[0]), .A2(In_1[0]), .B1(n26), .B2(In_3[0]), .Z(C[0]) );
  AO22D0 U74 ( .A1(In_2[19]), .A2(In_1[19]), .B1(n36), .B2(In_3[19]), .Z(C[19]) );
  XOR3D0 U16 ( .A1(In_1[24]), .A2(In_3[24]), .A3(In_2[24]), .Z(S[24]) );
endmodule


module CSA3_2_Array_WIDTH25_2 ( In_1, In_2, In_3, S, C );
  input [24:0] In_1;
  input [24:0] In_2;
  input [24:0] In_3;
  output [24:0] S;
  output [24:0] C;
  wire   n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n43, n44, n45, n46, n47, n48, n49, n50, n51;

  CKXOR2D1 U1 ( .A1(In_3[9]), .A2(n50), .Z(S[9]) );
  CKXOR2D1 U2 ( .A1(In_3[8]), .A2(n49), .Z(S[8]) );
  CKXOR2D1 U3 ( .A1(In_3[7]), .A2(n48), .Z(S[7]) );
  CKXOR2D1 U4 ( .A1(In_3[6]), .A2(n47), .Z(S[6]) );
  CKXOR2D1 U5 ( .A1(In_3[5]), .A2(n46), .Z(S[5]) );
  CKXOR2D1 U6 ( .A1(In_3[4]), .A2(n45), .Z(S[4]) );
  CKXOR2D1 U7 ( .A1(In_3[3]), .A2(n44), .Z(S[3]) );
  CKXOR2D1 U8 ( .A1(In_3[2]), .A2(n43), .Z(S[2]) );
  CKXOR2D1 U10 ( .A1(In_3[23]), .A2(n41), .Z(S[23]) );
  CKXOR2D1 U11 ( .A1(In_3[22]), .A2(n40), .Z(S[22]) );
  CKXOR2D1 U12 ( .A1(In_3[21]), .A2(n39), .Z(S[21]) );
  CKXOR2D1 U13 ( .A1(In_3[20]), .A2(n38), .Z(S[20]) );
  CKXOR2D1 U14 ( .A1(In_3[1]), .A2(n37), .Z(S[1]) );
  CKXOR2D1 U15 ( .A1(In_3[19]), .A2(n36), .Z(S[19]) );
  CKXOR2D1 U16 ( .A1(In_3[18]), .A2(n35), .Z(S[18]) );
  CKXOR2D1 U17 ( .A1(In_3[17]), .A2(n34), .Z(S[17]) );
  CKXOR2D1 U18 ( .A1(In_3[16]), .A2(n33), .Z(S[16]) );
  CKXOR2D1 U19 ( .A1(In_3[15]), .A2(n32), .Z(S[15]) );
  CKXOR2D1 U20 ( .A1(In_3[14]), .A2(n31), .Z(S[14]) );
  CKXOR2D1 U21 ( .A1(In_3[13]), .A2(n30), .Z(S[13]) );
  CKXOR2D1 U22 ( .A1(In_3[12]), .A2(n29), .Z(S[12]) );
  CKXOR2D1 U23 ( .A1(In_3[11]), .A2(n28), .Z(S[11]) );
  CKXOR2D1 U24 ( .A1(In_3[10]), .A2(n27), .Z(S[10]) );
  CKXOR2D1 U25 ( .A1(In_3[0]), .A2(In_1[0]), .Z(S[0]) );
  CKXOR2D1 U27 ( .A1(In_2[9]), .A2(In_1[9]), .Z(n50) );
  CKXOR2D1 U29 ( .A1(In_2[8]), .A2(In_1[8]), .Z(n49) );
  CKXOR2D1 U31 ( .A1(In_2[7]), .A2(In_1[7]), .Z(n48) );
  CKXOR2D1 U33 ( .A1(In_2[6]), .A2(In_1[6]), .Z(n47) );
  CKXOR2D1 U35 ( .A1(In_2[5]), .A2(In_1[5]), .Z(n46) );
  CKXOR2D1 U37 ( .A1(In_2[4]), .A2(In_1[4]), .Z(n45) );
  CKXOR2D1 U39 ( .A1(In_2[3]), .A2(In_1[3]), .Z(n44) );
  CKXOR2D1 U41 ( .A1(In_2[2]), .A2(In_1[2]), .Z(n43) );
  CKXOR2D1 U45 ( .A1(In_2[23]), .A2(In_1[23]), .Z(n41) );
  CKXOR2D1 U47 ( .A1(In_2[22]), .A2(In_1[22]), .Z(n40) );
  CKXOR2D1 U49 ( .A1(In_2[21]), .A2(In_1[21]), .Z(n39) );
  CKXOR2D1 U51 ( .A1(In_2[20]), .A2(In_1[20]), .Z(n38) );
  CKXOR2D1 U53 ( .A1(In_2[1]), .A2(In_1[1]), .Z(n37) );
  CKXOR2D1 U55 ( .A1(In_2[19]), .A2(In_1[19]), .Z(n36) );
  CKXOR2D1 U57 ( .A1(In_2[18]), .A2(In_1[18]), .Z(n35) );
  CKXOR2D1 U59 ( .A1(In_2[17]), .A2(In_1[17]), .Z(n34) );
  CKXOR2D1 U61 ( .A1(In_2[16]), .A2(In_1[16]), .Z(n33) );
  CKXOR2D1 U63 ( .A1(In_2[15]), .A2(In_1[15]), .Z(n32) );
  CKXOR2D1 U65 ( .A1(In_2[14]), .A2(In_1[14]), .Z(n31) );
  CKXOR2D1 U67 ( .A1(In_2[13]), .A2(In_1[13]), .Z(n30) );
  CKXOR2D1 U69 ( .A1(In_2[12]), .A2(In_1[12]), .Z(n29) );
  CKXOR2D1 U71 ( .A1(In_2[11]), .A2(In_1[11]), .Z(n28) );
  CKXOR2D1 U73 ( .A1(In_2[10]), .A2(In_1[10]), .Z(n27) );
  AO22D0 U28 ( .A1(In_2[18]), .A2(In_1[18]), .B1(n35), .B2(In_3[18]), .Z(C[18]) );
  AO22D0 U30 ( .A1(In_2[19]), .A2(In_1[19]), .B1(n36), .B2(In_3[19]), .Z(C[19]) );
  AO22D0 U32 ( .A1(In_2[20]), .A2(In_1[20]), .B1(n38), .B2(In_3[20]), .Z(C[20]) );
  AO22D0 U34 ( .A1(In_2[21]), .A2(In_1[21]), .B1(n39), .B2(In_3[21]), .Z(C[21]) );
  AO22D0 U36 ( .A1(In_2[22]), .A2(In_1[22]), .B1(n40), .B2(In_3[22]), .Z(C[22]) );
  AO22D0 U38 ( .A1(In_2[23]), .A2(In_1[23]), .B1(n41), .B2(In_3[23]), .Z(C[23]) );
  AO22D0 U40 ( .A1(In_2[17]), .A2(In_1[17]), .B1(n34), .B2(In_3[17]), .Z(C[17]) );
  AO22D0 U42 ( .A1(In_2[16]), .A2(In_1[16]), .B1(n33), .B2(In_3[16]), .Z(C[16]) );
  AO22D0 U44 ( .A1(In_2[6]), .A2(In_1[6]), .B1(n47), .B2(In_3[6]), .Z(C[6]) );
  AO22D0 U46 ( .A1(In_2[1]), .A2(In_1[1]), .B1(n37), .B2(In_3[1]), .Z(C[1]) );
  AO22D0 U48 ( .A1(In_2[2]), .A2(In_1[2]), .B1(n43), .B2(In_3[2]), .Z(C[2]) );
  AO22D0 U50 ( .A1(In_2[3]), .A2(In_1[3]), .B1(n44), .B2(In_3[3]), .Z(C[3]) );
  AO22D0 U52 ( .A1(In_2[4]), .A2(In_1[4]), .B1(n45), .B2(In_3[4]), .Z(C[4]) );
  AO22D0 U54 ( .A1(In_2[5]), .A2(In_1[5]), .B1(n46), .B2(In_3[5]), .Z(C[5]) );
  AO22D0 U56 ( .A1(In_2[7]), .A2(In_1[7]), .B1(n48), .B2(In_3[7]), .Z(C[7]) );
  AO22D0 U58 ( .A1(In_2[8]), .A2(In_1[8]), .B1(n49), .B2(In_3[8]), .Z(C[8]) );
  AO22D0 U60 ( .A1(In_2[9]), .A2(In_1[9]), .B1(n50), .B2(In_3[9]), .Z(C[9]) );
  AO22D0 U62 ( .A1(In_2[10]), .A2(In_1[10]), .B1(n27), .B2(In_3[10]), .Z(C[10]) );
  AO22D0 U64 ( .A1(In_2[11]), .A2(In_1[11]), .B1(n28), .B2(In_3[11]), .Z(C[11]) );
  AO22D0 U66 ( .A1(In_2[12]), .A2(In_1[12]), .B1(n29), .B2(In_3[12]), .Z(C[12]) );
  AO22D0 U68 ( .A1(In_2[13]), .A2(In_1[13]), .B1(n30), .B2(In_3[13]), .Z(C[13]) );
  AO22D0 U70 ( .A1(In_2[14]), .A2(In_1[14]), .B1(n31), .B2(In_3[14]), .Z(C[14]) );
  AO22D0 U72 ( .A1(In_2[15]), .A2(In_1[15]), .B1(n32), .B2(In_3[15]), .Z(C[15]) );
  XOR3D0 U9 ( .A1(In_3[24]), .A2(In_1[24]), .A3(In_2[24]), .Z(S[24]) );
  CKND1 U26 ( .I(n51), .ZN(C[0]) );
  CKND2D0 U43 ( .A1(In_3[0]), .A2(In_1[0]), .ZN(n51) );
endmodule


module CSA3_2_Array_WIDTH25_1 ( In_1, In_2, In_3, S, C );
  input [24:0] In_1;
  input [24:0] In_2;
  input [24:0] In_3;
  output [24:0] S;
  output [24:0] C;
  wire   In_1_0_, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n43, n44, n45, n46, n47, n48, n49, n50;
  assign S[0] = In_1_0_;
  assign In_1_0_ = In_1[0];

  CKXOR2D1 U1 ( .A1(In_3[9]), .A2(n50), .Z(S[9]) );
  CKXOR2D1 U2 ( .A1(In_3[8]), .A2(n49), .Z(S[8]) );
  CKXOR2D1 U3 ( .A1(In_3[7]), .A2(n48), .Z(S[7]) );
  CKXOR2D1 U4 ( .A1(In_3[6]), .A2(n47), .Z(S[6]) );
  CKXOR2D1 U5 ( .A1(In_3[5]), .A2(n46), .Z(S[5]) );
  CKXOR2D1 U6 ( .A1(In_3[4]), .A2(n45), .Z(S[4]) );
  CKXOR2D1 U7 ( .A1(In_3[3]), .A2(n44), .Z(S[3]) );
  CKXOR2D1 U8 ( .A1(In_3[2]), .A2(n43), .Z(S[2]) );
  CKXOR2D1 U10 ( .A1(In_3[23]), .A2(n41), .Z(S[23]) );
  CKXOR2D1 U11 ( .A1(In_3[22]), .A2(n40), .Z(S[22]) );
  CKXOR2D1 U12 ( .A1(In_3[21]), .A2(n39), .Z(S[21]) );
  CKXOR2D1 U13 ( .A1(In_3[20]), .A2(n38), .Z(S[20]) );
  CKXOR2D1 U14 ( .A1(In_3[1]), .A2(n37), .Z(S[1]) );
  CKXOR2D1 U15 ( .A1(In_3[19]), .A2(n36), .Z(S[19]) );
  CKXOR2D1 U16 ( .A1(In_3[18]), .A2(n35), .Z(S[18]) );
  CKXOR2D1 U17 ( .A1(In_3[17]), .A2(n34), .Z(S[17]) );
  CKXOR2D1 U18 ( .A1(In_3[16]), .A2(n33), .Z(S[16]) );
  CKXOR2D1 U19 ( .A1(In_3[15]), .A2(n32), .Z(S[15]) );
  CKXOR2D1 U20 ( .A1(In_3[14]), .A2(n31), .Z(S[14]) );
  CKXOR2D1 U21 ( .A1(In_3[13]), .A2(n30), .Z(S[13]) );
  CKXOR2D1 U22 ( .A1(In_3[12]), .A2(n29), .Z(S[12]) );
  CKXOR2D1 U23 ( .A1(In_3[11]), .A2(n28), .Z(S[11]) );
  CKXOR2D1 U24 ( .A1(In_3[10]), .A2(n27), .Z(S[10]) );
  CKXOR2D1 U27 ( .A1(In_2[9]), .A2(In_1[9]), .Z(n50) );
  CKXOR2D1 U29 ( .A1(In_2[8]), .A2(In_1[8]), .Z(n49) );
  CKXOR2D1 U31 ( .A1(In_2[7]), .A2(In_1[7]), .Z(n48) );
  CKXOR2D1 U33 ( .A1(In_2[6]), .A2(In_1[6]), .Z(n47) );
  CKXOR2D1 U35 ( .A1(In_2[5]), .A2(In_1[5]), .Z(n46) );
  CKXOR2D1 U37 ( .A1(In_2[4]), .A2(In_1[4]), .Z(n45) );
  CKXOR2D1 U39 ( .A1(In_2[3]), .A2(In_1[3]), .Z(n44) );
  CKXOR2D1 U41 ( .A1(In_2[2]), .A2(In_1[2]), .Z(n43) );
  CKXOR2D1 U45 ( .A1(In_2[23]), .A2(In_1[23]), .Z(n41) );
  CKXOR2D1 U47 ( .A1(In_2[22]), .A2(In_1[22]), .Z(n40) );
  CKXOR2D1 U49 ( .A1(In_2[21]), .A2(In_1[21]), .Z(n39) );
  CKXOR2D1 U51 ( .A1(In_2[20]), .A2(In_1[20]), .Z(n38) );
  CKXOR2D1 U53 ( .A1(In_2[1]), .A2(In_1[1]), .Z(n37) );
  CKXOR2D1 U55 ( .A1(In_2[19]), .A2(In_1[19]), .Z(n36) );
  CKXOR2D1 U57 ( .A1(In_2[18]), .A2(In_1[18]), .Z(n35) );
  CKXOR2D1 U59 ( .A1(In_2[17]), .A2(In_1[17]), .Z(n34) );
  CKXOR2D1 U61 ( .A1(In_2[16]), .A2(In_1[16]), .Z(n33) );
  CKXOR2D1 U63 ( .A1(In_2[15]), .A2(In_1[15]), .Z(n32) );
  CKXOR2D1 U65 ( .A1(In_2[14]), .A2(In_1[14]), .Z(n31) );
  CKXOR2D1 U67 ( .A1(In_2[13]), .A2(In_1[13]), .Z(n30) );
  CKXOR2D1 U69 ( .A1(In_2[12]), .A2(In_1[12]), .Z(n29) );
  CKXOR2D1 U71 ( .A1(In_2[11]), .A2(In_1[11]), .Z(n28) );
  CKXOR2D1 U73 ( .A1(In_2[10]), .A2(In_1[10]), .Z(n27) );
  AO22D0 U28 ( .A1(In_2[23]), .A2(In_1[23]), .B1(n41), .B2(In_3[23]), .Z(C[23]) );
  AO22D0 U30 ( .A1(In_2[17]), .A2(In_1[17]), .B1(n34), .B2(In_3[17]), .Z(C[17]) );
  AO22D0 U32 ( .A1(In_2[18]), .A2(In_1[18]), .B1(n35), .B2(In_3[18]), .Z(C[18]) );
  AO22D0 U34 ( .A1(In_2[19]), .A2(In_1[19]), .B1(n36), .B2(In_3[19]), .Z(C[19]) );
  AO22D0 U36 ( .A1(In_2[20]), .A2(In_1[20]), .B1(n38), .B2(In_3[20]), .Z(C[20]) );
  AO22D0 U38 ( .A1(In_2[21]), .A2(In_1[21]), .B1(n39), .B2(In_3[21]), .Z(C[21]) );
  AO22D0 U40 ( .A1(In_2[22]), .A2(In_1[22]), .B1(n40), .B2(In_3[22]), .Z(C[22]) );
  AO22D0 U42 ( .A1(In_2[16]), .A2(In_1[16]), .B1(n33), .B2(In_3[16]), .Z(C[16]) );
  AO22D0 U44 ( .A1(In_2[15]), .A2(In_1[15]), .B1(n32), .B2(In_3[15]), .Z(C[15]) );
  AO22D0 U46 ( .A1(In_2[5]), .A2(In_1[5]), .B1(n46), .B2(In_3[5]), .Z(C[5]) );
  AO22D0 U48 ( .A1(In_2[6]), .A2(In_1[6]), .B1(n47), .B2(In_3[6]), .Z(C[6]) );
  AO22D0 U50 ( .A1(In_2[7]), .A2(In_1[7]), .B1(n48), .B2(In_3[7]), .Z(C[7]) );
  AO22D0 U52 ( .A1(In_2[8]), .A2(In_1[8]), .B1(n49), .B2(In_3[8]), .Z(C[8]) );
  AO22D0 U54 ( .A1(In_2[9]), .A2(In_1[9]), .B1(n50), .B2(In_3[9]), .Z(C[9]) );
  AO22D0 U56 ( .A1(In_2[10]), .A2(In_1[10]), .B1(n27), .B2(In_3[10]), .Z(C[10]) );
  AO22D0 U58 ( .A1(In_2[11]), .A2(In_1[11]), .B1(n28), .B2(In_3[11]), .Z(C[11]) );
  AO22D0 U60 ( .A1(In_2[12]), .A2(In_1[12]), .B1(n29), .B2(In_3[12]), .Z(C[12]) );
  AO22D0 U62 ( .A1(In_2[13]), .A2(In_1[13]), .B1(n30), .B2(In_3[13]), .Z(C[13]) );
  AO22D0 U64 ( .A1(In_2[14]), .A2(In_1[14]), .B1(n31), .B2(In_3[14]), .Z(C[14]) );
  AO22D0 U66 ( .A1(In_2[2]), .A2(In_1[2]), .B1(n43), .B2(In_3[2]), .Z(C[2]) );
  AO22D0 U68 ( .A1(In_2[3]), .A2(In_1[3]), .B1(n44), .B2(In_3[3]), .Z(C[3]) );
  AO22D0 U70 ( .A1(In_2[4]), .A2(In_1[4]), .B1(n45), .B2(In_3[4]), .Z(C[4]) );
  AO22D0 U74 ( .A1(In_2[1]), .A2(In_1[1]), .B1(n37), .B2(In_3[1]), .Z(C[1]) );
  XOR3D0 U9 ( .A1(In_1[24]), .A2(In_3[24]), .A3(In_2[24]), .Z(S[24]) );
endmodule


module Mantissa_Div_L3_MANTISSA_WIDTH23_DW01_add_0 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   A_1_;
  wire   [24:3] carry;
  assign SUM[1] = A_1_;
  assign A_1_ = A[1];

  FA1D0 U1_2 ( .A(A[2]), .B(B[2]), .CI(1'b0), .CO(carry[3]), .S(SUM[2]) );
  FA1D0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1D0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1D0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
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
  FA1D0 U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  FA1D0 U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
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
  XOR3D1 U1_24 ( .A1(A[24]), .A2(B[24]), .A3(carry[24]), .Z(SUM[24]) );
endmodule


module Mantissa_Div_L3_MANTISSA_WIDTH23_DW01_sub_0_DW01_sub_1 ( A, B, CI, DIFF, 
        CO );
  input [23:0] A;
  input [23:0] B;
  output [23:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25;
  wire   [23:3] carry;

  FA1D0 U2_22 ( .A(A[22]), .B(n1), .CI(carry[22]), .CO(carry[23]), .S(DIFF[22]) );
  FA1D0 U2_21 ( .A(A[21]), .B(n2), .CI(carry[21]), .CO(carry[22]), .S(DIFF[21]) );
  FA1D0 U2_20 ( .A(A[20]), .B(n3), .CI(carry[20]), .CO(carry[21]), .S(DIFF[20]) );
  FA1D0 U2_19 ( .A(A[19]), .B(n4), .CI(carry[19]), .CO(carry[20]), .S(DIFF[19]) );
  FA1D0 U2_18 ( .A(A[18]), .B(n5), .CI(carry[18]), .CO(carry[19]), .S(DIFF[18]) );
  FA1D0 U2_17 ( .A(A[17]), .B(n6), .CI(carry[17]), .CO(carry[18]), .S(DIFF[17]) );
  FA1D0 U2_16 ( .A(A[16]), .B(n7), .CI(carry[16]), .CO(carry[17]), .S(DIFF[16]) );
  FA1D0 U2_15 ( .A(A[15]), .B(n8), .CI(carry[15]), .CO(carry[16]), .S(DIFF[15]) );
  FA1D0 U2_14 ( .A(A[14]), .B(n9), .CI(carry[14]), .CO(carry[15]), .S(DIFF[14]) );
  FA1D0 U2_13 ( .A(A[13]), .B(n10), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  FA1D0 U2_12 ( .A(A[12]), .B(n11), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  FA1D0 U2_11 ( .A(A[11]), .B(n12), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  FA1D0 U2_10 ( .A(A[10]), .B(n13), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  FA1D0 U2_9 ( .A(A[9]), .B(n14), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  FA1D0 U2_8 ( .A(A[8]), .B(n15), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  FA1D0 U2_7 ( .A(A[7]), .B(n16), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  FA1D0 U2_6 ( .A(A[6]), .B(n17), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  FA1D0 U2_5 ( .A(A[5]), .B(n18), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  FA1D0 U2_4 ( .A(A[4]), .B(n19), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FA1D0 U2_3 ( .A(A[3]), .B(n20), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  INVD1 U1 ( .I(B[3]), .ZN(n20) );
  INVD1 U2 ( .I(B[4]), .ZN(n19) );
  INVD1 U3 ( .I(B[5]), .ZN(n18) );
  INVD1 U4 ( .I(B[6]), .ZN(n17) );
  INVD1 U5 ( .I(B[7]), .ZN(n16) );
  INVD1 U6 ( .I(B[8]), .ZN(n15) );
  INVD1 U7 ( .I(B[9]), .ZN(n14) );
  INVD1 U8 ( .I(A[1]), .ZN(n21) );
  INVD1 U9 ( .I(B[10]), .ZN(n13) );
  INVD1 U10 ( .I(B[11]), .ZN(n12) );
  INVD1 U11 ( .I(B[12]), .ZN(n11) );
  INVD1 U12 ( .I(B[13]), .ZN(n10) );
  INVD1 U13 ( .I(B[14]), .ZN(n9) );
  INVD1 U14 ( .I(B[15]), .ZN(n8) );
  INVD1 U15 ( .I(B[16]), .ZN(n7) );
  INVD1 U16 ( .I(B[17]), .ZN(n6) );
  INVD1 U17 ( .I(B[18]), .ZN(n5) );
  INVD1 U18 ( .I(B[19]), .ZN(n4) );
  INVD1 U19 ( .I(B[20]), .ZN(n3) );
  INVD1 U20 ( .I(B[21]), .ZN(n2) );
  INVD1 U21 ( .I(B[22]), .ZN(n1) );
  MOAI22D0 U22 ( .A1(B[2]), .A2(n22), .B1(n23), .B2(A[2]), .ZN(carry[3]) );
  NR2D0 U23 ( .A1(A[2]), .A2(n23), .ZN(n22) );
  OAI22D0 U24 ( .A1(n24), .A2(n21), .B1(B[1]), .B2(n25), .ZN(n23) );
  AN2D0 U25 ( .A1(n24), .A2(n21), .Z(n25) );
  INR2D0 U26 ( .A1(B[0]), .B1(A[0]), .ZN(n24) );
  CKND0 U27 ( .I(carry[23]), .ZN(DIFF[23]) );
endmodule


module Mantissa_Div_L3_MANTISSA_WIDTH23_DW01_sub_1_DW01_sub_2 ( A, B, CI, DIFF, 
        CO );
  input [23:0] A;
  input [23:0] B;
  output [23:0] DIFF;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23;
  wire   [23:1] carry;

  FA1D0 U2_22 ( .A(A[22]), .B(n2), .CI(carry[22]), .CO(carry[23]), .S(DIFF[22]) );
  FA1D0 U2_2 ( .A(A[2]), .B(n22), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  FA1D0 U2_1 ( .A(A[1]), .B(n23), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  FA1D0 U2_21 ( .A(A[21]), .B(n3), .CI(carry[21]), .CO(carry[22]), .S(DIFF[21]) );
  FA1D0 U2_20 ( .A(A[20]), .B(n4), .CI(carry[20]), .CO(carry[21]), .S(DIFF[20]) );
  FA1D0 U2_19 ( .A(A[19]), .B(n5), .CI(carry[19]), .CO(carry[20]), .S(DIFF[19]) );
  FA1D0 U2_18 ( .A(A[18]), .B(n6), .CI(carry[18]), .CO(carry[19]), .S(DIFF[18]) );
  FA1D0 U2_17 ( .A(A[17]), .B(n7), .CI(carry[17]), .CO(carry[18]), .S(DIFF[17]) );
  FA1D0 U2_16 ( .A(A[16]), .B(n8), .CI(carry[16]), .CO(carry[17]), .S(DIFF[16]) );
  FA1D0 U2_15 ( .A(A[15]), .B(n9), .CI(carry[15]), .CO(carry[16]), .S(DIFF[15]) );
  FA1D0 U2_14 ( .A(A[14]), .B(n10), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  FA1D0 U2_13 ( .A(A[13]), .B(n11), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  FA1D0 U2_12 ( .A(A[12]), .B(n12), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  FA1D0 U2_11 ( .A(A[11]), .B(n13), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  FA1D0 U2_10 ( .A(A[10]), .B(n14), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  FA1D0 U2_9 ( .A(A[9]), .B(n15), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  FA1D0 U2_8 ( .A(A[8]), .B(n16), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  FA1D0 U2_7 ( .A(A[7]), .B(n17), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  FA1D0 U2_6 ( .A(A[6]), .B(n18), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  FA1D0 U2_5 ( .A(A[5]), .B(n19), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  FA1D0 U2_4 ( .A(A[4]), .B(n20), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FA1D0 U2_3 ( .A(A[3]), .B(n21), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  INVD1 U1 ( .I(B[3]), .ZN(n21) );
  INVD1 U2 ( .I(B[4]), .ZN(n20) );
  INVD1 U3 ( .I(B[5]), .ZN(n19) );
  INVD1 U4 ( .I(B[6]), .ZN(n18) );
  INVD1 U5 ( .I(B[7]), .ZN(n17) );
  INVD1 U6 ( .I(B[8]), .ZN(n16) );
  INVD1 U7 ( .I(B[9]), .ZN(n15) );
  INVD1 U8 ( .I(B[10]), .ZN(n14) );
  INVD1 U9 ( .I(B[11]), .ZN(n13) );
  INVD1 U10 ( .I(B[12]), .ZN(n12) );
  INVD1 U11 ( .I(B[13]), .ZN(n11) );
  INVD1 U12 ( .I(B[14]), .ZN(n10) );
  INVD1 U13 ( .I(B[15]), .ZN(n9) );
  INVD1 U14 ( .I(B[16]), .ZN(n8) );
  INVD1 U15 ( .I(B[17]), .ZN(n7) );
  INVD1 U16 ( .I(B[18]), .ZN(n6) );
  INVD1 U17 ( .I(B[19]), .ZN(n5) );
  INVD1 U18 ( .I(B[20]), .ZN(n4) );
  INVD1 U19 ( .I(B[21]), .ZN(n3) );
  INVD1 U21 ( .I(B[1]), .ZN(n23) );
  INVD1 U23 ( .I(B[2]), .ZN(n22) );
  INVD1 U24 ( .I(B[22]), .ZN(n2) );
  CKND0 U27 ( .I(carry[23]), .ZN(DIFF[23]) );
  CKXOR2D0 U20 ( .A1(A[0]), .A2(B[0]), .Z(DIFF[0]) );
  IND2D0 U22 ( .A1(A[0]), .B1(B[0]), .ZN(carry[1]) );
endmodule


module Mantissa_Div_L3_MANTISSA_WIDTH23 ( Mantissa_X, Mantissa_Y, Mantissa_Out, 
        Shift );
  input [22:0] Mantissa_X;
  input [22:0] Mantissa_Y;
  output [22:0] Mantissa_Out;
  output Shift;
  wire   n13, n39, n40, n41, n42, n43, n44, n1, n2, n3, n4, n5, n6, n7, n8, n9,
         n10, n11, n12, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n38, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116;
  wire   [23:0] x_sub_y;
  wire   [23:3] y_sub_x;
  wire   [24:0] L1_p2;
  wire   [24:0] L2_p;
  wire   [20:0] L3_p1;
  wire   [18:0] L3_p2;
  wire   [24:0] A11S;
  wire   [23:0] A11C;
  wire   [24:0] A12S;
  wire   [23:0] A12C;
  wire   [24:0] A21S;
  wire   [23:0] A21C;
  wire   [24:0] A31S;
  wire   [23:1] A31C;
  wire   [23:1] Res;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8;

  AO222D1 U33 ( .A1(y_sub_x[12]), .A2(n41), .B1(x_sub_y[12]), .B2(n42), .C1(
        x_sub_y[11]), .C2(n43), .Z(L2_p[9]) );
  AO222D1 U34 ( .A1(y_sub_x[11]), .A2(n41), .B1(x_sub_y[11]), .B2(n42), .C1(
        x_sub_y[10]), .C2(n43), .Z(L2_p[8]) );
  AO222D1 U35 ( .A1(y_sub_x[10]), .A2(n41), .B1(x_sub_y[10]), .B2(n42), .C1(
        x_sub_y[9]), .C2(n43), .Z(L2_p[7]) );
  AO222D1 U36 ( .A1(y_sub_x[9]), .A2(n41), .B1(x_sub_y[9]), .B2(n42), .C1(
        x_sub_y[8]), .C2(n43), .Z(L2_p[6]) );
  AO222D1 U37 ( .A1(y_sub_x[8]), .A2(n41), .B1(x_sub_y[8]), .B2(n42), .C1(
        x_sub_y[7]), .C2(n43), .Z(L2_p[5]) );
  AO222D1 U38 ( .A1(y_sub_x[7]), .A2(n41), .B1(x_sub_y[7]), .B2(n42), .C1(
        x_sub_y[6]), .C2(n43), .Z(L2_p[4]) );
  AO222D1 U39 ( .A1(y_sub_x[6]), .A2(n41), .B1(x_sub_y[6]), .B2(n42), .C1(
        x_sub_y[5]), .C2(n43), .Z(L2_p[3]) );
  AO222D1 U40 ( .A1(y_sub_x[5]), .A2(n41), .B1(x_sub_y[5]), .B2(n42), .C1(
        x_sub_y[4]), .C2(n43), .Z(L2_p[2]) );
  AO222D1 U44 ( .A1(y_sub_x[4]), .A2(n41), .B1(x_sub_y[4]), .B2(n42), .C1(
        x_sub_y[3]), .C2(n43), .Z(L2_p[1]) );
  AO222D1 U45 ( .A1(y_sub_x[22]), .A2(n41), .B1(x_sub_y[22]), .B2(n42), .C1(
        x_sub_y[21]), .C2(n43), .Z(L2_p[19]) );
  AO222D1 U46 ( .A1(y_sub_x[21]), .A2(n41), .B1(x_sub_y[21]), .B2(n42), .C1(
        x_sub_y[20]), .C2(n43), .Z(L2_p[18]) );
  AO222D1 U47 ( .A1(y_sub_x[20]), .A2(n41), .B1(x_sub_y[20]), .B2(n42), .C1(
        x_sub_y[19]), .C2(n43), .Z(L2_p[17]) );
  AO222D1 U48 ( .A1(y_sub_x[19]), .A2(n41), .B1(x_sub_y[19]), .B2(n42), .C1(
        x_sub_y[18]), .C2(n43), .Z(L2_p[16]) );
  AO222D1 U49 ( .A1(y_sub_x[18]), .A2(n41), .B1(x_sub_y[18]), .B2(n42), .C1(
        x_sub_y[17]), .C2(n43), .Z(L2_p[15]) );
  AO222D1 U50 ( .A1(y_sub_x[17]), .A2(n41), .B1(x_sub_y[17]), .B2(n42), .C1(
        x_sub_y[16]), .C2(n43), .Z(L2_p[14]) );
  AO222D1 U51 ( .A1(y_sub_x[16]), .A2(n41), .B1(x_sub_y[16]), .B2(n42), .C1(
        x_sub_y[15]), .C2(n43), .Z(L2_p[13]) );
  AO222D1 U52 ( .A1(y_sub_x[15]), .A2(n41), .B1(x_sub_y[15]), .B2(n42), .C1(
        x_sub_y[14]), .C2(n43), .Z(L2_p[12]) );
  AO222D1 U53 ( .A1(y_sub_x[14]), .A2(n41), .B1(x_sub_y[14]), .B2(n42), .C1(
        x_sub_y[13]), .C2(n43), .Z(L2_p[11]) );
  AO222D1 U54 ( .A1(y_sub_x[13]), .A2(n41), .B1(x_sub_y[13]), .B2(n42), .C1(
        n43), .C2(x_sub_y[12]), .Z(L2_p[10]) );
  AO222D1 U55 ( .A1(y_sub_x[3]), .A2(n41), .B1(x_sub_y[3]), .B2(n42), .C1(
        x_sub_y[2]), .C2(n43), .Z(L2_p[0]) );
  CSA3_2_Array_WIDTH25_0 Stage_1_1 ( .In_1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .In_2({x_sub_y[23], 
        x_sub_y}), .In_3({L1_p2[24], L1_p2[24], L1_p2[24], L1_p2[21:0]}), .S(
        A11S), .C({SYNOPSYS_UNCONNECTED__0, A11C}) );
  CSA3_2_Array_WIDTH25_3 Stage_1_2 ( .In_1({L2_p[24], L2_p[24], L2_p[24], 
        L2_p[24], L2_p[20:0]}), .In_2({L3_p1[20], L3_p1[20], L3_p1[20], 
        L3_p1[20], L3_p1}), .In_3({L3_p2[18], L3_p2[18], L3_p2[18], L3_p2[18], 
        L3_p2[18], L3_p2[18], L3_p2}), .S(A12S), .C({SYNOPSYS_UNCONNECTED__1, 
        A12C}) );
  CSA3_2_Array_WIDTH25_2 Stage_2_1 ( .In_1(A11S), .In_2({A11C, 1'b0}), .In_3(
        A12S), .S(A21S), .C({SYNOPSYS_UNCONNECTED__2, A21C}) );
  CSA3_2_Array_WIDTH25_1 Stage_3_1 ( .In_1(A21S), .In_2({A21C, 1'b0}), .In_3({
        A12C, 1'b0}), .S(A31S), .C({SYNOPSYS_UNCONNECTED__3, A31C, 
        SYNOPSYS_UNCONNECTED__4}) );
  Mantissa_Div_L3_MANTISSA_WIDTH23_DW01_add_0 add_128 ( .A(A31S), .B({A31C, 
        1'b0, n13}), .CI(n13), .SUM({Shift, Res, SYNOPSYS_UNCONNECTED__5}) );
  Mantissa_Div_L3_MANTISSA_WIDTH23_DW01_sub_0_DW01_sub_1 sub_18 ( .A({n13, 
        Mantissa_Y}), .B({n13, Mantissa_X}), .CI(n13), .DIFF({y_sub_x, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8}) );
  Mantissa_Div_L3_MANTISSA_WIDTH23_DW01_sub_1_DW01_sub_2 sub_17 ( .A({n13, 
        Mantissa_X}), .B({n13, Mantissa_Y}), .CI(n13), .DIFF(x_sub_y) );
  INVD1 U3 ( .I(n5), .ZN(n48) );
  OAI32D1 U4 ( .A1(n67), .A2(n48), .A3(n35), .B1(n87), .B2(n5), .ZN(L3_p2[18])
         );
  OAI222D0 U6 ( .A1(n105), .A2(n39), .B1(n40), .B2(n103), .C1(n92), .C2(n104), 
        .ZN(Mantissa_Out[11]) );
  OAI222D0 U7 ( .A1(n39), .A2(n113), .B1(n40), .B2(n111), .C1(n92), .C2(n112), 
        .ZN(Mantissa_Out[3]) );
  OAI222D0 U8 ( .A1(n39), .A2(n112), .B1(n89), .B2(n110), .C1(n92), .C2(n111), 
        .ZN(Mantissa_Out[4]) );
  OAI222D0 U9 ( .A1(n39), .A2(n111), .B1(n90), .B2(n109), .C1(n92), .C2(n110), 
        .ZN(Mantissa_Out[5]) );
  OAI222D0 U10 ( .A1(n39), .A2(n110), .B1(n40), .B2(n108), .C1(n92), .C2(n109), 
        .ZN(Mantissa_Out[6]) );
  OAI222D0 U11 ( .A1(n39), .A2(n109), .B1(n89), .B2(n107), .C1(n92), .C2(n108), 
        .ZN(Mantissa_Out[7]) );
  OAI222D0 U12 ( .A1(n39), .A2(n108), .B1(n90), .B2(n106), .C1(n107), .C2(n92), 
        .ZN(Mantissa_Out[8]) );
  OAI222D0 U13 ( .A1(n39), .A2(n107), .B1(n40), .B2(n105), .C1(n106), .C2(n92), 
        .ZN(Mantissa_Out[9]) );
  OAI222D0 U14 ( .A1(n39), .A2(n106), .B1(n90), .B2(n104), .C1(n105), .C2(n92), 
        .ZN(Mantissa_Out[10]) );
  OAI222D0 U15 ( .A1(n39), .A2(n104), .B1(n89), .B2(n102), .C1(n92), .C2(n103), 
        .ZN(Mantissa_Out[12]) );
  OAI222D0 U16 ( .A1(n39), .A2(n103), .B1(n90), .B2(n101), .C1(n92), .C2(n102), 
        .ZN(Mantissa_Out[13]) );
  OAI222D0 U17 ( .A1(n39), .A2(n102), .B1(n40), .B2(n100), .C1(n92), .C2(n101), 
        .ZN(Mantissa_Out[14]) );
  OAI222D0 U18 ( .A1(n39), .A2(n101), .B1(n89), .B2(n99), .C1(n92), .C2(n100), 
        .ZN(Mantissa_Out[15]) );
  OAI222D0 U19 ( .A1(n39), .A2(n100), .B1(n90), .B2(n98), .C1(n92), .C2(n99), 
        .ZN(Mantissa_Out[16]) );
  OAI222D0 U20 ( .A1(n39), .A2(n99), .B1(n40), .B2(n97), .C1(n92), .C2(n98), 
        .ZN(Mantissa_Out[17]) );
  OAI222D0 U21 ( .A1(n39), .A2(n98), .B1(n89), .B2(n96), .C1(n92), .C2(n97), 
        .ZN(Mantissa_Out[18]) );
  OAI222D0 U22 ( .A1(n39), .A2(n97), .B1(n90), .B2(n95), .C1(n92), .C2(n96), 
        .ZN(Mantissa_Out[19]) );
  OAI222D0 U23 ( .A1(n39), .A2(n96), .B1(n89), .B2(n94), .C1(n92), .C2(n95), 
        .ZN(Mantissa_Out[20]) );
  ND2D1 U24 ( .A1(n93), .A2(n92), .ZN(n40) );
  ND2D1 U25 ( .A1(n93), .A2(n92), .ZN(n90) );
  ND2D1 U26 ( .A1(n93), .A2(n92), .ZN(n89) );
  OAI22D1 U27 ( .A1(n92), .A2(n94), .B1(n39), .B2(n95), .ZN(Mantissa_Out[21])
         );
  OAI22D1 U28 ( .A1(n39), .A2(n94), .B1(n93), .B2(n92), .ZN(Mantissa_Out[22])
         );
  INVD1 U29 ( .I(y_sub_x[23]), .ZN(n67) );
  INVD1 U30 ( .I(x_sub_y[23]), .ZN(n87) );
  INVD1 U31 ( .I(Shift), .ZN(n92) );
  ND2D1 U32 ( .A1(Res[23]), .A2(n92), .ZN(n39) );
  OAI222D0 U41 ( .A1(n39), .A2(n114), .B1(n90), .B2(n112), .C1(n92), .C2(n113), 
        .ZN(Mantissa_Out[2]) );
  INVD1 U42 ( .I(Res[23]), .ZN(n93) );
  INVD1 U43 ( .I(n9), .ZN(n38) );
  INVD1 U56 ( .I(Res[22]), .ZN(n94) );
  INVD1 U57 ( .I(Res[21]), .ZN(n95) );
  INVD1 U58 ( .I(Res[20]), .ZN(n96) );
  INVD1 U59 ( .I(Res[19]), .ZN(n97) );
  INVD1 U60 ( .I(Res[18]), .ZN(n98) );
  INVD1 U61 ( .I(Res[17]), .ZN(n99) );
  INVD1 U62 ( .I(Res[16]), .ZN(n100) );
  INVD1 U63 ( .I(Res[15]), .ZN(n101) );
  INVD1 U64 ( .I(Res[14]), .ZN(n102) );
  INVD1 U65 ( .I(Res[13]), .ZN(n103) );
  INVD1 U66 ( .I(Res[12]), .ZN(n104) );
  INVD1 U67 ( .I(Res[11]), .ZN(n105) );
  INVD1 U68 ( .I(Res[10]), .ZN(n106) );
  INVD1 U69 ( .I(Res[9]), .ZN(n107) );
  INVD1 U70 ( .I(Res[8]), .ZN(n108) );
  INVD1 U71 ( .I(Res[7]), .ZN(n109) );
  INVD1 U72 ( .I(Res[6]), .ZN(n110) );
  INVD1 U73 ( .I(Res[5]), .ZN(n111) );
  INVD1 U74 ( .I(Res[4]), .ZN(n112) );
  INVD1 U75 ( .I(Res[3]), .ZN(n113) );
  OAI222D0 U76 ( .A1(n39), .A2(n115), .B1(n40), .B2(n113), .C1(n92), .C2(n114), 
        .ZN(Mantissa_Out[1]) );
  INVD1 U77 ( .I(x_sub_y[22]), .ZN(n86) );
  INVD1 U78 ( .I(x_sub_y[12]), .ZN(n76) );
  INVD1 U79 ( .I(x_sub_y[8]), .ZN(n72) );
  INVD1 U80 ( .I(x_sub_y[9]), .ZN(n73) );
  INVD1 U81 ( .I(x_sub_y[10]), .ZN(n74) );
  INVD1 U82 ( .I(x_sub_y[11]), .ZN(n75) );
  INVD1 U83 ( .I(x_sub_y[13]), .ZN(n77) );
  INVD1 U84 ( .I(x_sub_y[14]), .ZN(n78) );
  INVD1 U85 ( .I(x_sub_y[15]), .ZN(n79) );
  INVD1 U86 ( .I(x_sub_y[16]), .ZN(n80) );
  INVD1 U87 ( .I(x_sub_y[17]), .ZN(n81) );
  INVD1 U88 ( .I(x_sub_y[18]), .ZN(n82) );
  INVD1 U89 ( .I(x_sub_y[19]), .ZN(n83) );
  INVD1 U90 ( .I(x_sub_y[20]), .ZN(n84) );
  INVD1 U91 ( .I(x_sub_y[21]), .ZN(n85) );
  INVD1 U92 ( .I(y_sub_x[22]), .ZN(n66) );
  INVD1 U93 ( .I(y_sub_x[6]), .ZN(n50) );
  INVD1 U94 ( .I(y_sub_x[7]), .ZN(n51) );
  INVD1 U95 ( .I(y_sub_x[8]), .ZN(n52) );
  INVD1 U96 ( .I(y_sub_x[9]), .ZN(n53) );
  INVD1 U97 ( .I(y_sub_x[10]), .ZN(n54) );
  INVD1 U98 ( .I(y_sub_x[11]), .ZN(n55) );
  INVD1 U99 ( .I(y_sub_x[12]), .ZN(n56) );
  INVD1 U100 ( .I(y_sub_x[13]), .ZN(n57) );
  INVD1 U101 ( .I(y_sub_x[14]), .ZN(n58) );
  INVD1 U102 ( .I(y_sub_x[15]), .ZN(n59) );
  INVD1 U103 ( .I(y_sub_x[16]), .ZN(n60) );
  INVD1 U104 ( .I(y_sub_x[17]), .ZN(n61) );
  INVD1 U105 ( .I(y_sub_x[18]), .ZN(n62) );
  INVD1 U106 ( .I(y_sub_x[19]), .ZN(n63) );
  INVD1 U107 ( .I(y_sub_x[20]), .ZN(n64) );
  INVD1 U108 ( .I(y_sub_x[21]), .ZN(n65) );
  INVD1 U109 ( .I(x_sub_y[7]), .ZN(n71) );
  INVD1 U110 ( .I(y_sub_x[5]), .ZN(n49) );
  INVD1 U112 ( .I(x_sub_y[6]), .ZN(n70) );
  INVD1 U113 ( .I(x_sub_y[5]), .ZN(n69) );
  AOI22D1 U114 ( .A1(n42), .A2(x_sub_y[23]), .B1(y_sub_x[23]), .B2(n41), .ZN(
        n44) );
  IOA21D1 U115 ( .A1(n43), .A2(x_sub_y[22]), .B(n44), .ZN(L2_p[20]) );
  INVD1 U116 ( .I(n1), .ZN(n35) );
  IOA21D1 U117 ( .A1(n43), .A2(x_sub_y[23]), .B(n44), .ZN(L2_p[24]) );
  INVD1 U118 ( .I(x_sub_y[4]), .ZN(n68) );
  INVD1 U119 ( .I(n10), .ZN(n47) );
  INVD1 U120 ( .I(Mantissa_Y[22]), .ZN(n88) );
  NR2D1 U123 ( .A1(n9), .A2(n6), .ZN(n2) );
  INVD1 U124 ( .I(n8), .ZN(n46) );
  ND2D1 U125 ( .A1(Mantissa_Y[22]), .A2(n1), .ZN(n4) );
  ND3D1 U126 ( .A1(n88), .A2(n36), .A3(n34), .ZN(n3) );
  INVD1 U127 ( .I(Res[2]), .ZN(n114) );
  INVD1 U128 ( .I(Mantissa_Y[20]), .ZN(n34) );
  INVD1 U129 ( .I(Mantissa_Y[21]), .ZN(n36) );
  INR2D1 U130 ( .A1(x_sub_y[23]), .B1(Mantissa_Y[22]), .ZN(L1_p2[24]) );
  INR2D1 U131 ( .A1(x_sub_y[22]), .B1(Mantissa_Y[22]), .ZN(L1_p2[21]) );
  INR2D1 U132 ( .A1(x_sub_y[12]), .B1(Mantissa_Y[22]), .ZN(L1_p2[11]) );
  INR2D1 U133 ( .A1(x_sub_y[20]), .B1(Mantissa_Y[22]), .ZN(L1_p2[19]) );
  INR2D1 U134 ( .A1(x_sub_y[7]), .B1(Mantissa_Y[22]), .ZN(L1_p2[6]) );
  INR2D1 U135 ( .A1(x_sub_y[8]), .B1(Mantissa_Y[22]), .ZN(L1_p2[7]) );
  INR2D1 U136 ( .A1(x_sub_y[9]), .B1(Mantissa_Y[22]), .ZN(L1_p2[8]) );
  INR2D1 U137 ( .A1(x_sub_y[10]), .B1(Mantissa_Y[22]), .ZN(L1_p2[9]) );
  INR2D1 U138 ( .A1(x_sub_y[11]), .B1(Mantissa_Y[22]), .ZN(L1_p2[10]) );
  INR2D1 U139 ( .A1(x_sub_y[13]), .B1(Mantissa_Y[22]), .ZN(L1_p2[12]) );
  INR2D1 U140 ( .A1(x_sub_y[14]), .B1(Mantissa_Y[22]), .ZN(L1_p2[13]) );
  INR2D1 U141 ( .A1(x_sub_y[15]), .B1(Mantissa_Y[22]), .ZN(L1_p2[14]) );
  INR2D1 U142 ( .A1(x_sub_y[16]), .B1(Mantissa_Y[22]), .ZN(L1_p2[15]) );
  INR2D1 U143 ( .A1(x_sub_y[17]), .B1(Mantissa_Y[22]), .ZN(L1_p2[16]) );
  INR2D1 U144 ( .A1(x_sub_y[18]), .B1(Mantissa_Y[22]), .ZN(L1_p2[17]) );
  INR2D1 U145 ( .A1(x_sub_y[19]), .B1(Mantissa_Y[22]), .ZN(L1_p2[18]) );
  INR2D1 U146 ( .A1(x_sub_y[21]), .B1(Mantissa_Y[22]), .ZN(L1_p2[20]) );
  INR2D1 U147 ( .A1(x_sub_y[5]), .B1(Mantissa_Y[22]), .ZN(L1_p2[4]) );
  INR2D1 U148 ( .A1(x_sub_y[6]), .B1(Mantissa_Y[22]), .ZN(L1_p2[5]) );
  INR2D1 U149 ( .A1(x_sub_y[4]), .B1(Mantissa_Y[22]), .ZN(L1_p2[3]) );
  INR2D1 U150 ( .A1(x_sub_y[3]), .B1(Mantissa_Y[22]), .ZN(L1_p2[2]) );
  INR2D1 U151 ( .A1(Mantissa_Y[22]), .B1(Mantissa_Y[21]), .ZN(n42) );
  NR2D1 U152 ( .A1(Mantissa_Y[21]), .A2(Mantissa_Y[22]), .ZN(n43) );
  INR2D1 U153 ( .A1(x_sub_y[2]), .B1(Mantissa_Y[22]), .ZN(L1_p2[1]) );
  INR2D1 U154 ( .A1(Mantissa_Y[21]), .B1(Mantissa_Y[22]), .ZN(n41) );
  INR2D1 U155 ( .A1(x_sub_y[1]), .B1(Mantissa_Y[22]), .ZN(L1_p2[0]) );
  INVD1 U156 ( .I(Res[1]), .ZN(n115) );
  OAI222D0 U157 ( .A1(n116), .A2(n39), .B1(n114), .B2(n89), .C1(n115), .C2(n92), .ZN(Mantissa_Out[0]) );
  INVD1 U158 ( .I(A31S[0]), .ZN(n116) );
  TIEL U160 ( .ZN(n13) );
  NR2D0 U161 ( .A1(n34), .A2(Mantissa_Y[21]), .ZN(n1) );
  NR2D0 U162 ( .A1(n35), .A2(Mantissa_Y[22]), .ZN(n9) );
  NR2D0 U163 ( .A1(n36), .A2(Mantissa_Y[20]), .ZN(n6) );
  OAI222D0 U164 ( .A1(n49), .A2(n4), .B1(n70), .B2(n3), .C1(n69), .C2(n2), 
        .ZN(L3_p2[0]) );
  OAI222D0 U165 ( .A1(n50), .A2(n4), .B1(n71), .B2(n3), .C1(n70), .C2(n2), 
        .ZN(L3_p2[1]) );
  OAI222D0 U166 ( .A1(n51), .A2(n4), .B1(n72), .B2(n3), .C1(n71), .C2(n2), 
        .ZN(L3_p2[2]) );
  OAI222D0 U167 ( .A1(n52), .A2(n4), .B1(n73), .B2(n3), .C1(n72), .C2(n2), 
        .ZN(L3_p2[3]) );
  OAI222D0 U168 ( .A1(n53), .A2(n4), .B1(n74), .B2(n3), .C1(n73), .C2(n2), 
        .ZN(L3_p2[4]) );
  OAI222D0 U169 ( .A1(n54), .A2(n4), .B1(n75), .B2(n3), .C1(n74), .C2(n2), 
        .ZN(L3_p2[5]) );
  OAI222D0 U170 ( .A1(n55), .A2(n4), .B1(n76), .B2(n3), .C1(n75), .C2(n2), 
        .ZN(L3_p2[6]) );
  OAI222D0 U171 ( .A1(n56), .A2(n4), .B1(n77), .B2(n3), .C1(n76), .C2(n2), 
        .ZN(L3_p2[7]) );
  OAI222D0 U172 ( .A1(n57), .A2(n4), .B1(n78), .B2(n3), .C1(n77), .C2(n2), 
        .ZN(L3_p2[8]) );
  OAI222D0 U173 ( .A1(n58), .A2(n4), .B1(n79), .B2(n3), .C1(n78), .C2(n2), 
        .ZN(L3_p2[9]) );
  OAI222D0 U174 ( .A1(n59), .A2(n4), .B1(n80), .B2(n3), .C1(n79), .C2(n2), 
        .ZN(L3_p2[10]) );
  OAI222D0 U175 ( .A1(n60), .A2(n4), .B1(n81), .B2(n3), .C1(n80), .C2(n2), 
        .ZN(L3_p2[11]) );
  OAI222D0 U176 ( .A1(n61), .A2(n4), .B1(n82), .B2(n3), .C1(n81), .C2(n2), 
        .ZN(L3_p2[12]) );
  OAI222D0 U177 ( .A1(n62), .A2(n4), .B1(n83), .B2(n3), .C1(n82), .C2(n2), 
        .ZN(L3_p2[13]) );
  OAI222D0 U178 ( .A1(n63), .A2(n4), .B1(n84), .B2(n3), .C1(n83), .C2(n2), 
        .ZN(L3_p2[14]) );
  OAI222D0 U179 ( .A1(n64), .A2(n4), .B1(n85), .B2(n3), .C1(n84), .C2(n2), 
        .ZN(L3_p2[15]) );
  OAI222D0 U180 ( .A1(n65), .A2(n4), .B1(n86), .B2(n3), .C1(n85), .C2(n2), 
        .ZN(L3_p2[16]) );
  OAI222D0 U181 ( .A1(n66), .A2(n4), .B1(n87), .B2(n3), .C1(n86), .C2(n2), 
        .ZN(L3_p2[17]) );
  AOI21D0 U182 ( .A1(n36), .A2(n88), .B(n6), .ZN(n5) );
  NR2D0 U183 ( .A1(n36), .A2(n88), .ZN(n31) );
  CKND2D0 U184 ( .A1(Mantissa_Y[20]), .A2(n31), .ZN(n10) );
  NR2D0 U185 ( .A1(n31), .A2(Mantissa_Y[20]), .ZN(n8) );
  AOI22D0 U186 ( .A1(x_sub_y[3]), .A2(n8), .B1(y_sub_x[4]), .B2(n9), .ZN(n7)
         );
  OAI221D0 U187 ( .A1(n10), .A2(n70), .B1(n45), .B2(n68), .C(n7), .ZN(L3_p1[0]) );
  AOI22D0 U188 ( .A1(x_sub_y[7]), .A2(n47), .B1(x_sub_y[5]), .B2(n29), .ZN(n11) );
  OAI221D0 U189 ( .A1(n46), .A2(n68), .B1(n38), .B2(n49), .C(n11), .ZN(
        L3_p1[1]) );
  AOI22D0 U190 ( .A1(x_sub_y[8]), .A2(n47), .B1(x_sub_y[6]), .B2(n29), .ZN(n12) );
  OAI221D0 U191 ( .A1(n46), .A2(n69), .B1(n38), .B2(n50), .C(n12), .ZN(
        L3_p1[2]) );
  AOI22D0 U192 ( .A1(x_sub_y[9]), .A2(n47), .B1(x_sub_y[7]), .B2(n29), .ZN(n14) );
  OAI221D0 U193 ( .A1(n46), .A2(n70), .B1(n38), .B2(n51), .C(n14), .ZN(
        L3_p1[3]) );
  AOI22D0 U194 ( .A1(x_sub_y[10]), .A2(n47), .B1(x_sub_y[8]), .B2(n29), .ZN(
        n15) );
  OAI221D0 U195 ( .A1(n46), .A2(n71), .B1(n38), .B2(n52), .C(n15), .ZN(
        L3_p1[4]) );
  AOI22D0 U196 ( .A1(x_sub_y[11]), .A2(n47), .B1(x_sub_y[9]), .B2(n29), .ZN(
        n16) );
  OAI221D0 U197 ( .A1(n46), .A2(n72), .B1(n38), .B2(n53), .C(n16), .ZN(
        L3_p1[5]) );
  AOI22D0 U198 ( .A1(x_sub_y[12]), .A2(n47), .B1(x_sub_y[10]), .B2(n29), .ZN(
        n17) );
  OAI221D0 U199 ( .A1(n46), .A2(n73), .B1(n38), .B2(n54), .C(n17), .ZN(
        L3_p1[6]) );
  AOI22D0 U200 ( .A1(x_sub_y[13]), .A2(n47), .B1(x_sub_y[11]), .B2(n29), .ZN(
        n18) );
  OAI221D0 U201 ( .A1(n46), .A2(n74), .B1(n38), .B2(n55), .C(n18), .ZN(
        L3_p1[7]) );
  AOI22D0 U202 ( .A1(x_sub_y[14]), .A2(n47), .B1(x_sub_y[12]), .B2(n29), .ZN(
        n19) );
  OAI221D0 U203 ( .A1(n46), .A2(n75), .B1(n38), .B2(n56), .C(n19), .ZN(
        L3_p1[8]) );
  AOI22D0 U204 ( .A1(x_sub_y[15]), .A2(n47), .B1(x_sub_y[13]), .B2(n29), .ZN(
        n20) );
  OAI221D0 U205 ( .A1(n46), .A2(n76), .B1(n38), .B2(n57), .C(n20), .ZN(
        L3_p1[9]) );
  AOI22D0 U206 ( .A1(x_sub_y[16]), .A2(n47), .B1(x_sub_y[14]), .B2(n29), .ZN(
        n21) );
  OAI221D0 U207 ( .A1(n46), .A2(n77), .B1(n38), .B2(n58), .C(n21), .ZN(
        L3_p1[10]) );
  AOI22D0 U208 ( .A1(x_sub_y[17]), .A2(n47), .B1(x_sub_y[15]), .B2(n29), .ZN(
        n22) );
  OAI221D0 U209 ( .A1(n46), .A2(n78), .B1(n38), .B2(n59), .C(n22), .ZN(
        L3_p1[11]) );
  AOI22D0 U210 ( .A1(x_sub_y[18]), .A2(n47), .B1(x_sub_y[16]), .B2(n29), .ZN(
        n23) );
  OAI221D0 U211 ( .A1(n46), .A2(n79), .B1(n38), .B2(n60), .C(n23), .ZN(
        L3_p1[12]) );
  AOI22D0 U212 ( .A1(x_sub_y[19]), .A2(n47), .B1(x_sub_y[17]), .B2(n29), .ZN(
        n24) );
  OAI221D0 U213 ( .A1(n46), .A2(n80), .B1(n38), .B2(n61), .C(n24), .ZN(
        L3_p1[13]) );
  AOI22D0 U214 ( .A1(x_sub_y[20]), .A2(n47), .B1(x_sub_y[18]), .B2(n29), .ZN(
        n25) );
  OAI221D0 U215 ( .A1(n46), .A2(n81), .B1(n38), .B2(n62), .C(n25), .ZN(
        L3_p1[14]) );
  AOI22D0 U216 ( .A1(x_sub_y[21]), .A2(n47), .B1(x_sub_y[19]), .B2(n29), .ZN(
        n26) );
  OAI221D0 U217 ( .A1(n46), .A2(n82), .B1(n38), .B2(n63), .C(n26), .ZN(
        L3_p1[15]) );
  AOI22D0 U218 ( .A1(n47), .A2(x_sub_y[22]), .B1(x_sub_y[20]), .B2(n29), .ZN(
        n27) );
  OAI221D0 U219 ( .A1(n46), .A2(n83), .B1(n38), .B2(n64), .C(n27), .ZN(
        L3_p1[16]) );
  AOI22D0 U220 ( .A1(n47), .A2(x_sub_y[23]), .B1(x_sub_y[21]), .B2(n29), .ZN(
        n28) );
  OAI221D0 U221 ( .A1(n46), .A2(n84), .B1(n38), .B2(n65), .C(n28), .ZN(
        L3_p1[17]) );
  AOI22D0 U222 ( .A1(n47), .A2(x_sub_y[23]), .B1(n29), .B2(x_sub_y[22]), .ZN(
        n30) );
  OAI221D0 U223 ( .A1(n46), .A2(n85), .B1(n38), .B2(n66), .C(n30), .ZN(
        L3_p1[18]) );
  AOI21D0 U224 ( .A1(Mantissa_Y[22]), .A2(Mantissa_Y[20]), .B(n31), .ZN(n32)
         );
  OAI222D0 U225 ( .A1(n46), .A2(n86), .B1(n87), .B2(n32), .C1(n38), .C2(n67), 
        .ZN(L3_p1[19]) );
  NR2D0 U226 ( .A1(n34), .A2(Mantissa_Y[22]), .ZN(n33) );
  OAI22D0 U227 ( .A1(n38), .A2(n67), .B1(n33), .B2(n87), .ZN(L3_p1[20]) );
  CKND0 U5 ( .I(n45), .ZN(n29) );
  OAI21D0 U111 ( .A1(n6), .A2(n1), .B(Mantissa_Y[22]), .ZN(n45) );
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
  CKBD1 U5 ( .I(result_fraction[11]), .Z(result[11]) );
  CKBD1 U6 ( .I(result_fraction[3]), .Z(result[3]) );
  CKBD1 U7 ( .I(result_fraction[4]), .Z(result[4]) );
  CKBD1 U8 ( .I(result_fraction[5]), .Z(result[5]) );
  CKBD1 U9 ( .I(result_fraction[6]), .Z(result[6]) );
  CKBD1 U10 ( .I(result_fraction[7]), .Z(result[7]) );
  CKBD1 U11 ( .I(result_fraction[8]), .Z(result[8]) );
  CKBD1 U12 ( .I(result_fraction[9]), .Z(result[9]) );
  CKBD1 U13 ( .I(result_fraction[10]), .Z(result[10]) );
  CKBD1 U14 ( .I(result_fraction[12]), .Z(result[12]) );
  CKBD1 U15 ( .I(result_fraction[13]), .Z(result[13]) );
  CKBD1 U16 ( .I(result_fraction[14]), .Z(result[14]) );
  CKBD1 U17 ( .I(result_fraction[15]), .Z(result[15]) );
  CKBD1 U18 ( .I(result_fraction[16]), .Z(result[16]) );
  CKBD1 U19 ( .I(result_fraction[17]), .Z(result[17]) );
  CKBD1 U20 ( .I(result_fraction[18]), .Z(result[18]) );
  CKBD1 U21 ( .I(result_fraction[19]), .Z(result[19]) );
  CKBD1 U22 ( .I(result_fraction[20]), .Z(result[20]) );
  CKBD1 U23 ( .I(result_fraction[21]), .Z(result[21]) );
  CKBD1 U24 ( .I(result_fraction[22]), .Z(result[22]) );
  CKBD1 U25 ( .I(result_fraction[2]), .Z(result[2]) );
  CKBD1 U26 ( .I(result_fraction[1]), .Z(result[1]) );
  FA1D0 U27 ( .A(N4), .B(exponent_adjust[1]), .CI(n1), .CO(
        add_0_root_add_0_root_add_22_2_carry[2]), .S(result[24]) );
  FA1D0 U28 ( .A(N5), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[2]), .CO(
        add_0_root_add_0_root_add_22_2_carry[3]), .S(result[25]) );
  FA1D0 U29 ( .A(N6), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[3]), .CO(
        add_0_root_add_0_root_add_22_2_carry[4]), .S(result[26]) );
  FA1D0 U30 ( .A(N7), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[4]), .CO(
        add_0_root_add_0_root_add_22_2_carry[5]), .S(result[27]) );
  FA1D0 U31 ( .A(N8), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[5]), .CO(
        add_0_root_add_0_root_add_22_2_carry[6]), .S(result[28]) );
  FA1D0 U32 ( .A(N9), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[6]), .CO(
        add_0_root_add_0_root_add_22_2_carry[7]), .S(result[29]) );
  XOR3D1 U41 ( .A1(N10), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_22_2_carry[7]), .Z(result[30]) );
  CKBD1 U42 ( .I(y[0]), .Z(fraction_y[0]) );
  CKBD1 U43 ( .I(y[1]), .Z(fraction_y[1]) );
  CKBD1 U46 ( .I(y[2]), .Z(fraction_y[2]) );
  CKBD1 U48 ( .I(y[3]), .Z(fraction_y[3]) );
  CKBD1 U50 ( .I(y[4]), .Z(fraction_y[4]) );
  CKBD1 U52 ( .I(y[5]), .Z(fraction_y[5]) );
  CKBD1 U54 ( .I(result_fraction[0]), .Z(result[0]) );
  CKBD1 U55 ( .I(y[6]), .Z(fraction_y[6]) );
  CKBD1 U57 ( .I(y[7]), .Z(fraction_y[7]) );
  CKBD1 U58 ( .I(y[8]), .Z(fraction_y[8]) );
  CKBD1 U59 ( .I(y[9]), .Z(fraction_y[9]) );
  CKBD1 U60 ( .I(y[20]), .Z(fraction_y[20]) );
  CKBD1 U61 ( .I(y[10]), .Z(fraction_y[10]) );
  CKBD1 U62 ( .I(y[21]), .Z(fraction_y[21]) );
  CKBD1 U63 ( .I(y[22]), .Z(fraction_y[22]) );
  CKBD1 U64 ( .I(y[11]), .Z(fraction_y[11]) );
  CKBD1 U65 ( .I(y[12]), .Z(fraction_y[12]) );
  CKBD1 U66 ( .I(y[13]), .Z(fraction_y[13]) );
  CKBD1 U67 ( .I(y[14]), .Z(fraction_y[14]) );
  CKBD1 U68 ( .I(y[15]), .Z(fraction_y[15]) );
  CKBD1 U69 ( .I(y[16]), .Z(fraction_y[16]) );
  CKBD1 U70 ( .I(y[17]), .Z(fraction_y[17]) );
  CKBD1 U71 ( .I(y[18]), .Z(fraction_y[18]) );
  CKBD1 U72 ( .I(y[19]), .Z(fraction_y[19]) );
  INVD1 U73 ( .I(y[29]), .ZN(N17) );
  INVD1 U74 ( .I(y[24]), .ZN(N12) );
  INVD1 U75 ( .I(y[25]), .ZN(N13) );
  INVD1 U76 ( .I(y[26]), .ZN(N14) );
  INVD1 U77 ( .I(y[27]), .ZN(N15) );
  INVD1 U78 ( .I(y[28]), .ZN(N16) );
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
  TIEL U110 ( .ZN(n79) );
  CKXOR2D1 U111 ( .A1(exponent_adjust[0]), .A2(N3), .Z(result[23]) );
  CKND0 U119 ( .I(y[23]), .ZN(N11) );
endmodule


module FP_DIV_WRAPPER_32 ( x, y, out0, mantissa_x, mantissa_y, mantissa_out, 
        shift );
  input [31:0] x;
  input [31:0] y;
  output [31:0] out0;
  output [22:0] mantissa_x;
  output [22:0] mantissa_y;
  input [22:0] mantissa_out;
  input [0:0] shift;


  fp32_normal_finite_wrapper shared_wrapper ( .x(x), .y(y), .divide_mode(1'b0), 
        .fraction_x(mantissa_x), .fraction_y(mantissa_y), .result_fraction(
        mantissa_out), .exponent_adjust({shift[0], shift[0], shift[0]}), 
        .result(out0) );
endmodule


module pace_fp32_l3 ( x, y, out0 );
  input [31:0] x;
  input [31:0] y;
  output [31:0] out0;
  wire   shift, n1;
  wire   [22:0] mantissa_x;
  wire   [22:0] mantissa_y;
  wire   [22:0] mantissa_out;

  Mantissa_Div_L3_MANTISSA_WIDTH23 mantissa_div ( .Mantissa_X(mantissa_x), 
        .Mantissa_Y(mantissa_y), .Mantissa_Out(mantissa_out), .Shift(shift) );
  FP_DIV_WRAPPER_32 fp_wrapper ( .x(x), .y(y), .out0(out0), .mantissa_x(
        mantissa_x), .mantissa_y(mantissa_y), .mantissa_out(mantissa_out), 
        .shift(n1) );
  INVD1 U2 ( .I(shift), .ZN(n1) );
endmodule

