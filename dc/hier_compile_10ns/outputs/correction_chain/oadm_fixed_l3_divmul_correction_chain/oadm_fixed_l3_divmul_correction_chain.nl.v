/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Thu Sep  3 21:18:36 2026
/////////////////////////////////////////////////////////////


module csa3_WIDTH29_0 ( input_a, input_b, input_c, sum, carry );
  input [28:0] input_a;
  input [28:0] input_b;
  input [28:0] input_c;
  output [28:0] sum;
  output [28:0] carry;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28;

  CKXOR2D1 U2 ( .A1(input_c[9]), .A2(n1), .Z(sum[9]) );
  CKXOR2D1 U3 ( .A1(input_c[8]), .A2(n2), .Z(sum[8]) );
  CKXOR2D1 U4 ( .A1(input_c[7]), .A2(n3), .Z(sum[7]) );
  CKXOR2D1 U5 ( .A1(input_c[6]), .A2(n4), .Z(sum[6]) );
  CKXOR2D1 U6 ( .A1(input_c[5]), .A2(n5), .Z(sum[5]) );
  CKXOR2D1 U7 ( .A1(input_c[4]), .A2(n6), .Z(sum[4]) );
  CKXOR2D1 U8 ( .A1(input_c[3]), .A2(n7), .Z(sum[3]) );
  CKXOR2D1 U9 ( .A1(input_c[2]), .A2(n8), .Z(sum[2]) );
  CKXOR2D1 U11 ( .A1(input_c[27]), .A2(n9), .Z(sum[27]) );
  CKXOR2D1 U12 ( .A1(input_c[26]), .A2(n10), .Z(sum[26]) );
  CKXOR2D1 U13 ( .A1(input_c[25]), .A2(n11), .Z(sum[25]) );
  CKXOR2D1 U14 ( .A1(input_c[24]), .A2(n12), .Z(sum[24]) );
  CKXOR2D1 U15 ( .A1(input_c[23]), .A2(n13), .Z(sum[23]) );
  CKXOR2D1 U16 ( .A1(input_c[22]), .A2(n14), .Z(sum[22]) );
  CKXOR2D1 U17 ( .A1(input_c[21]), .A2(n15), .Z(sum[21]) );
  CKXOR2D1 U18 ( .A1(input_c[20]), .A2(n16), .Z(sum[20]) );
  CKXOR2D1 U19 ( .A1(input_c[1]), .A2(n17), .Z(sum[1]) );
  CKXOR2D1 U20 ( .A1(input_c[19]), .A2(n18), .Z(sum[19]) );
  CKXOR2D1 U21 ( .A1(input_c[18]), .A2(n19), .Z(sum[18]) );
  CKXOR2D1 U22 ( .A1(input_c[17]), .A2(n20), .Z(sum[17]) );
  CKXOR2D1 U23 ( .A1(input_c[16]), .A2(n21), .Z(sum[16]) );
  CKXOR2D1 U24 ( .A1(input_c[15]), .A2(n22), .Z(sum[15]) );
  CKXOR2D1 U25 ( .A1(input_c[14]), .A2(n23), .Z(sum[14]) );
  CKXOR2D1 U26 ( .A1(input_c[13]), .A2(n24), .Z(sum[13]) );
  CKXOR2D1 U27 ( .A1(input_c[12]), .A2(n25), .Z(sum[12]) );
  CKXOR2D1 U28 ( .A1(input_c[11]), .A2(n26), .Z(sum[11]) );
  CKXOR2D1 U29 ( .A1(input_c[10]), .A2(n27), .Z(sum[10]) );
  CKXOR2D1 U30 ( .A1(input_c[0]), .A2(n28), .Z(sum[0]) );
  CKXOR2D1 U32 ( .A1(input_b[8]), .A2(input_a[8]), .Z(n2) );
  CKXOR2D1 U34 ( .A1(input_b[7]), .A2(input_a[7]), .Z(n3) );
  CKXOR2D1 U36 ( .A1(input_b[6]), .A2(input_a[6]), .Z(n4) );
  CKXOR2D1 U38 ( .A1(input_b[5]), .A2(input_a[5]), .Z(n5) );
  CKXOR2D1 U40 ( .A1(input_b[4]), .A2(input_a[4]), .Z(n6) );
  CKXOR2D1 U42 ( .A1(input_b[3]), .A2(input_a[3]), .Z(n7) );
  CKXOR2D1 U44 ( .A1(input_b[2]), .A2(input_a[2]), .Z(n8) );
  CKXOR2D1 U46 ( .A1(input_b[1]), .A2(input_a[1]), .Z(n17) );
  CKXOR2D1 U48 ( .A1(input_b[27]), .A2(input_a[27]), .Z(n9) );
  CKXOR2D1 U50 ( .A1(input_b[26]), .A2(input_a[26]), .Z(n10) );
  CKXOR2D1 U52 ( .A1(input_b[25]), .A2(input_a[25]), .Z(n11) );
  CKXOR2D1 U54 ( .A1(input_b[24]), .A2(input_a[24]), .Z(n12) );
  CKXOR2D1 U56 ( .A1(input_b[23]), .A2(input_a[23]), .Z(n13) );
  CKXOR2D1 U58 ( .A1(input_b[22]), .A2(input_a[22]), .Z(n14) );
  CKXOR2D1 U60 ( .A1(input_b[21]), .A2(input_a[21]), .Z(n15) );
  CKXOR2D1 U62 ( .A1(input_b[20]), .A2(input_a[20]), .Z(n16) );
  CKXOR2D1 U64 ( .A1(input_b[19]), .A2(input_a[19]), .Z(n18) );
  CKXOR2D1 U66 ( .A1(input_b[0]), .A2(input_a[0]), .Z(n28) );
  CKXOR2D1 U68 ( .A1(input_b[18]), .A2(input_a[18]), .Z(n19) );
  CKXOR2D1 U70 ( .A1(input_b[17]), .A2(input_a[17]), .Z(n20) );
  CKXOR2D1 U72 ( .A1(input_b[16]), .A2(input_a[16]), .Z(n21) );
  CKXOR2D1 U74 ( .A1(input_b[15]), .A2(input_a[15]), .Z(n22) );
  CKXOR2D1 U76 ( .A1(input_b[14]), .A2(input_a[14]), .Z(n23) );
  CKXOR2D1 U78 ( .A1(input_b[13]), .A2(input_a[13]), .Z(n24) );
  CKXOR2D1 U80 ( .A1(input_b[12]), .A2(input_a[12]), .Z(n25) );
  CKXOR2D1 U82 ( .A1(input_b[11]), .A2(input_a[11]), .Z(n26) );
  CKXOR2D1 U84 ( .A1(input_b[10]), .A2(input_a[10]), .Z(n27) );
  CKXOR2D1 U86 ( .A1(input_b[9]), .A2(input_a[9]), .Z(n1) );
  AO22D0 U33 ( .A1(input_b[21]), .A2(input_a[21]), .B1(n15), .B2(input_c[21]), 
        .Z(carry[22]) );
  AO22D0 U35 ( .A1(input_b[20]), .A2(input_a[20]), .B1(n16), .B2(input_c[20]), 
        .Z(carry[21]) );
  AO22D0 U37 ( .A1(input_b[22]), .A2(input_a[22]), .B1(n14), .B2(input_c[22]), 
        .Z(carry[23]) );
  AO22D0 U39 ( .A1(input_b[23]), .A2(input_a[23]), .B1(n13), .B2(input_c[23]), 
        .Z(carry[24]) );
  AO22D0 U41 ( .A1(input_b[19]), .A2(input_a[19]), .B1(n18), .B2(input_c[19]), 
        .Z(carry[20]) );
  AO22D0 U43 ( .A1(input_b[24]), .A2(input_a[24]), .B1(n12), .B2(input_c[24]), 
        .Z(carry[25]) );
  AO22D0 U45 ( .A1(input_b[25]), .A2(input_a[25]), .B1(n11), .B2(input_c[25]), 
        .Z(carry[26]) );
  AO22D0 U47 ( .A1(input_b[26]), .A2(input_a[26]), .B1(n10), .B2(input_c[26]), 
        .Z(carry[27]) );
  AO22D0 U49 ( .A1(input_b[27]), .A2(input_a[27]), .B1(n9), .B2(input_c[27]), 
        .Z(carry[28]) );
  AO22D0 U51 ( .A1(input_b[2]), .A2(input_a[2]), .B1(n8), .B2(input_c[2]), .Z(
        carry[3]) );
  AO22D0 U53 ( .A1(input_b[3]), .A2(input_a[3]), .B1(n7), .B2(input_c[3]), .Z(
        carry[4]) );
  AO22D0 U55 ( .A1(input_b[1]), .A2(input_a[1]), .B1(n17), .B2(input_c[1]), 
        .Z(carry[2]) );
  AO22D0 U57 ( .A1(input_b[4]), .A2(input_a[4]), .B1(n6), .B2(input_c[4]), .Z(
        carry[5]) );
  AO22D0 U59 ( .A1(input_b[5]), .A2(input_a[5]), .B1(n5), .B2(input_c[5]), .Z(
        carry[6]) );
  AO22D0 U61 ( .A1(input_b[0]), .A2(input_a[0]), .B1(n28), .B2(input_c[0]), 
        .Z(carry[1]) );
  AO22D0 U63 ( .A1(input_b[6]), .A2(input_a[6]), .B1(n4), .B2(input_c[6]), .Z(
        carry[7]) );
  AO22D0 U65 ( .A1(input_b[7]), .A2(input_a[7]), .B1(n3), .B2(input_c[7]), .Z(
        carry[8]) );
  AO22D0 U67 ( .A1(input_b[8]), .A2(input_a[8]), .B1(n2), .B2(input_c[8]), .Z(
        carry[9]) );
  AO22D0 U69 ( .A1(input_b[9]), .A2(input_a[9]), .B1(n1), .B2(input_c[9]), .Z(
        carry[10]) );
  AO22D0 U71 ( .A1(input_b[10]), .A2(input_a[10]), .B1(n27), .B2(input_c[10]), 
        .Z(carry[11]) );
  AO22D0 U73 ( .A1(input_b[11]), .A2(input_a[11]), .B1(n26), .B2(input_c[11]), 
        .Z(carry[12]) );
  AO22D0 U75 ( .A1(input_b[12]), .A2(input_a[12]), .B1(n25), .B2(input_c[12]), 
        .Z(carry[13]) );
  AO22D0 U77 ( .A1(input_b[13]), .A2(input_a[13]), .B1(n24), .B2(input_c[13]), 
        .Z(carry[14]) );
  AO22D0 U79 ( .A1(input_b[14]), .A2(input_a[14]), .B1(n23), .B2(input_c[14]), 
        .Z(carry[15]) );
  AO22D0 U81 ( .A1(input_b[18]), .A2(input_a[18]), .B1(n19), .B2(input_c[18]), 
        .Z(carry[19]) );
  AO22D0 U83 ( .A1(input_b[15]), .A2(input_a[15]), .B1(n22), .B2(input_c[15]), 
        .Z(carry[16]) );
  AO22D0 U85 ( .A1(input_b[16]), .A2(input_a[16]), .B1(n21), .B2(input_c[16]), 
        .Z(carry[17]) );
  AO22D0 U87 ( .A1(input_b[17]), .A2(input_a[17]), .B1(n20), .B2(input_c[17]), 
        .Z(carry[18]) );
  XOR3D1 U88 ( .A1(input_c[28]), .A2(input_b[28]), .A3(input_a[28]), .Z(
        sum[28]) );
endmodule


module csa3_WIDTH29_1 ( input_a, input_b, input_c, sum, carry );
  input [28:0] input_a;
  input [28:0] input_b;
  input [28:0] input_c;
  output [28:0] sum;
  output [28:0] carry;
  wire   n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59;

  CKXOR2D1 U2 ( .A1(input_c[9]), .A2(n58), .Z(sum[9]) );
  CKXOR2D1 U3 ( .A1(input_c[8]), .A2(n57), .Z(sum[8]) );
  CKXOR2D1 U4 ( .A1(input_c[7]), .A2(n56), .Z(sum[7]) );
  CKXOR2D1 U5 ( .A1(input_c[6]), .A2(n55), .Z(sum[6]) );
  CKXOR2D1 U6 ( .A1(input_c[5]), .A2(n54), .Z(sum[5]) );
  CKXOR2D1 U7 ( .A1(input_c[4]), .A2(n53), .Z(sum[4]) );
  CKXOR2D1 U8 ( .A1(input_c[3]), .A2(n52), .Z(sum[3]) );
  CKXOR2D1 U9 ( .A1(input_c[2]), .A2(n51), .Z(sum[2]) );
  CKXOR2D1 U11 ( .A1(input_c[27]), .A2(n50), .Z(sum[27]) );
  CKXOR2D1 U12 ( .A1(input_c[26]), .A2(n49), .Z(sum[26]) );
  CKXOR2D1 U13 ( .A1(input_c[25]), .A2(n48), .Z(sum[25]) );
  CKXOR2D1 U14 ( .A1(input_c[24]), .A2(n47), .Z(sum[24]) );
  CKXOR2D1 U15 ( .A1(input_c[23]), .A2(n46), .Z(sum[23]) );
  CKXOR2D1 U16 ( .A1(input_c[22]), .A2(n45), .Z(sum[22]) );
  CKXOR2D1 U17 ( .A1(input_c[21]), .A2(n44), .Z(sum[21]) );
  CKXOR2D1 U18 ( .A1(input_c[20]), .A2(n43), .Z(sum[20]) );
  CKXOR2D1 U19 ( .A1(input_c[1]), .A2(n42), .Z(sum[1]) );
  CKXOR2D1 U20 ( .A1(input_c[19]), .A2(n41), .Z(sum[19]) );
  CKXOR2D1 U21 ( .A1(input_c[18]), .A2(n40), .Z(sum[18]) );
  CKXOR2D1 U22 ( .A1(input_c[17]), .A2(n39), .Z(sum[17]) );
  CKXOR2D1 U23 ( .A1(input_c[16]), .A2(n38), .Z(sum[16]) );
  CKXOR2D1 U24 ( .A1(input_c[15]), .A2(n37), .Z(sum[15]) );
  CKXOR2D1 U25 ( .A1(input_c[14]), .A2(n36), .Z(sum[14]) );
  CKXOR2D1 U26 ( .A1(input_c[13]), .A2(n35), .Z(sum[13]) );
  CKXOR2D1 U27 ( .A1(input_c[12]), .A2(n34), .Z(sum[12]) );
  CKXOR2D1 U28 ( .A1(input_c[11]), .A2(n33), .Z(sum[11]) );
  CKXOR2D1 U29 ( .A1(input_c[10]), .A2(n32), .Z(sum[10]) );
  CKXOR2D1 U30 ( .A1(input_c[0]), .A2(input_a[0]), .Z(sum[0]) );
  CKXOR2D1 U32 ( .A1(input_b[8]), .A2(input_a[8]), .Z(n57) );
  CKXOR2D1 U34 ( .A1(input_b[7]), .A2(input_a[7]), .Z(n56) );
  CKXOR2D1 U36 ( .A1(input_b[6]), .A2(input_a[6]), .Z(n55) );
  CKXOR2D1 U38 ( .A1(input_b[5]), .A2(input_a[5]), .Z(n54) );
  CKXOR2D1 U40 ( .A1(input_b[4]), .A2(input_a[4]), .Z(n53) );
  CKXOR2D1 U42 ( .A1(input_b[3]), .A2(input_a[3]), .Z(n52) );
  CKXOR2D1 U44 ( .A1(input_b[2]), .A2(input_a[2]), .Z(n51) );
  CKXOR2D1 U46 ( .A1(input_b[1]), .A2(input_a[1]), .Z(n42) );
  CKXOR2D1 U48 ( .A1(input_b[27]), .A2(input_a[27]), .Z(n50) );
  CKXOR2D1 U50 ( .A1(input_b[26]), .A2(input_a[26]), .Z(n49) );
  CKXOR2D1 U52 ( .A1(input_b[25]), .A2(input_a[25]), .Z(n48) );
  CKXOR2D1 U54 ( .A1(input_b[24]), .A2(input_a[24]), .Z(n47) );
  CKXOR2D1 U56 ( .A1(input_b[23]), .A2(input_a[23]), .Z(n46) );
  CKXOR2D1 U58 ( .A1(input_b[22]), .A2(input_a[22]), .Z(n45) );
  CKXOR2D1 U60 ( .A1(input_b[21]), .A2(input_a[21]), .Z(n44) );
  CKXOR2D1 U62 ( .A1(input_b[20]), .A2(input_a[20]), .Z(n43) );
  CKXOR2D1 U64 ( .A1(input_b[19]), .A2(input_a[19]), .Z(n41) );
  CKXOR2D1 U68 ( .A1(input_b[18]), .A2(input_a[18]), .Z(n40) );
  CKXOR2D1 U70 ( .A1(input_b[17]), .A2(input_a[17]), .Z(n39) );
  CKXOR2D1 U72 ( .A1(input_b[16]), .A2(input_a[16]), .Z(n38) );
  CKXOR2D1 U74 ( .A1(input_b[15]), .A2(input_a[15]), .Z(n37) );
  CKXOR2D1 U76 ( .A1(input_b[14]), .A2(input_a[14]), .Z(n36) );
  CKXOR2D1 U78 ( .A1(input_b[13]), .A2(input_a[13]), .Z(n35) );
  CKXOR2D1 U80 ( .A1(input_b[12]), .A2(input_a[12]), .Z(n34) );
  CKXOR2D1 U82 ( .A1(input_b[11]), .A2(input_a[11]), .Z(n33) );
  CKXOR2D1 U84 ( .A1(input_b[10]), .A2(input_a[10]), .Z(n32) );
  CKXOR2D1 U86 ( .A1(input_b[9]), .A2(input_a[9]), .Z(n58) );
  AO22D0 U33 ( .A1(input_b[19]), .A2(input_a[19]), .B1(n41), .B2(input_c[19]), 
        .Z(carry[20]) );
  AO22D0 U35 ( .A1(input_b[20]), .A2(input_a[20]), .B1(n43), .B2(input_c[20]), 
        .Z(carry[21]) );
  AO22D0 U37 ( .A1(input_b[21]), .A2(input_a[21]), .B1(n44), .B2(input_c[21]), 
        .Z(carry[22]) );
  AO22D0 U39 ( .A1(input_b[22]), .A2(input_a[22]), .B1(n45), .B2(input_c[22]), 
        .Z(carry[23]) );
  AO22D0 U41 ( .A1(input_b[23]), .A2(input_a[23]), .B1(n46), .B2(input_c[23]), 
        .Z(carry[24]) );
  AO22D0 U43 ( .A1(input_b[15]), .A2(input_a[15]), .B1(n37), .B2(input_c[15]), 
        .Z(carry[16]) );
  AO22D0 U45 ( .A1(input_b[17]), .A2(input_a[17]), .B1(n39), .B2(input_c[17]), 
        .Z(carry[18]) );
  AO22D0 U47 ( .A1(input_b[16]), .A2(input_a[16]), .B1(n38), .B2(input_c[16]), 
        .Z(carry[17]) );
  AO22D0 U49 ( .A1(input_b[18]), .A2(input_a[18]), .B1(n40), .B2(input_c[18]), 
        .Z(carry[19]) );
  AO22D0 U51 ( .A1(input_b[24]), .A2(input_a[24]), .B1(n47), .B2(input_c[24]), 
        .Z(carry[25]) );
  AO22D0 U53 ( .A1(input_b[25]), .A2(input_a[25]), .B1(n48), .B2(input_c[25]), 
        .Z(carry[26]) );
  AO22D0 U55 ( .A1(input_b[26]), .A2(input_a[26]), .B1(n49), .B2(input_c[26]), 
        .Z(carry[27]) );
  AO22D0 U57 ( .A1(input_b[3]), .A2(input_a[3]), .B1(n52), .B2(input_c[3]), 
        .Z(carry[4]) );
  AO22D0 U59 ( .A1(input_b[2]), .A2(input_a[2]), .B1(n51), .B2(input_c[2]), 
        .Z(carry[3]) );
  AO22D0 U61 ( .A1(input_b[5]), .A2(input_a[5]), .B1(n54), .B2(input_c[5]), 
        .Z(carry[6]) );
  AO22D0 U63 ( .A1(input_b[4]), .A2(input_a[4]), .B1(n53), .B2(input_c[4]), 
        .Z(carry[5]) );
  AO22D0 U65 ( .A1(input_b[6]), .A2(input_a[6]), .B1(n55), .B2(input_c[6]), 
        .Z(carry[7]) );
  AO22D0 U67 ( .A1(input_b[7]), .A2(input_a[7]), .B1(n56), .B2(input_c[7]), 
        .Z(carry[8]) );
  AO22D0 U69 ( .A1(input_b[8]), .A2(input_a[8]), .B1(n57), .B2(input_c[8]), 
        .Z(carry[9]) );
  AO22D0 U71 ( .A1(input_b[9]), .A2(input_a[9]), .B1(n58), .B2(input_c[9]), 
        .Z(carry[10]) );
  AO22D0 U73 ( .A1(input_b[10]), .A2(input_a[10]), .B1(n32), .B2(input_c[10]), 
        .Z(carry[11]) );
  AO22D0 U75 ( .A1(input_b[11]), .A2(input_a[11]), .B1(n33), .B2(input_c[11]), 
        .Z(carry[12]) );
  AO22D0 U77 ( .A1(input_b[12]), .A2(input_a[12]), .B1(n34), .B2(input_c[12]), 
        .Z(carry[13]) );
  AO22D0 U79 ( .A1(input_b[13]), .A2(input_a[13]), .B1(n35), .B2(input_c[13]), 
        .Z(carry[14]) );
  AO22D0 U81 ( .A1(input_b[14]), .A2(input_a[14]), .B1(n36), .B2(input_c[14]), 
        .Z(carry[15]) );
  XOR3D1 U83 ( .A1(input_c[28]), .A2(input_b[28]), .A3(input_a[28]), .Z(
        sum[28]) );
  AO22D0 U85 ( .A1(input_b[27]), .A2(input_a[27]), .B1(n50), .B2(input_c[27]), 
        .Z(carry[28]) );
  AO22D0 U87 ( .A1(input_b[1]), .A2(input_a[1]), .B1(n42), .B2(input_c[1]), 
        .Z(carry[2]) );
  CKND1 U10 ( .I(n59), .ZN(carry[1]) );
  CKND2D0 U31 ( .A1(input_c[0]), .A2(input_a[0]), .ZN(n59) );
endmodule


module fp32_normal_finite_wrapper_DW01_add_3_DW01_add_21 ( A, B, CI, SUM, CO
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


module fp32_normal_finite_wrapper_DW01_add_1_DW01_add_19 ( A, B, CI, SUM, CO
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
         N12, N11, N10, n1, n2, n35, n410, n51, n60, n70, n72, n73, n74, n80;
  wire   [7:2] add_0_root_add_0_root_add_22_2_carry;
  wire   [7:2] add_0_root_add_0_root_add_25_2_carry;

  CKXOR2D1 U2 ( .A1(y[31]), .A2(x[31]), .Z(result[31]) );
  fp32_normal_finite_wrapper_DW01_add_3_DW01_add_21 add_1_root_add_0_root_add_25_2 ( 
        .A(x[30:23]), .B({N42, N41, N40, N39, N38, N37, N36, N11}), .CI(n80), 
        .SUM({N34, N33, N32, N31, N30, N29, N28, N27}) );
  fp32_normal_finite_wrapper_DW01_add_1_DW01_add_19 add_1_root_add_0_root_add_22_2 ( 
        .A(x[30:23]), .B({y[30], N17, N16, N15, N14, N13, N12, N11}), .CI(n80), 
        .SUM({N10, N9, N8, N7, N6, N5, N4, N3}) );
  AN2XD1 U3 ( .A1(exponent_adjust[0]), .A2(N3), .Z(n1) );
  AN2XD1 U4 ( .A1(exponent_adjust[0]), .A2(N27), .Z(n2) );
  INVD1 U5 ( .I(n73), .ZN(n74) );
  CKBD1 U6 ( .I(result_fraction[12]), .Z(result[12]) );
  CKBD1 U7 ( .I(result_fraction[13]), .Z(result[13]) );
  CKBD1 U8 ( .I(result_fraction[14]), .Z(result[14]) );
  CKBD1 U9 ( .I(result_fraction[15]), .Z(result[15]) );
  CKBD1 U10 ( .I(result_fraction[16]), .Z(result[16]) );
  CKBD1 U11 ( .I(result_fraction[17]), .Z(result[17]) );
  CKBD1 U12 ( .I(result_fraction[18]), .Z(result[18]) );
  CKBD1 U13 ( .I(result_fraction[19]), .Z(result[19]) );
  CKBD1 U14 ( .I(result_fraction[20]), .Z(result[20]) );
  CKBD1 U15 ( .I(result_fraction[21]), .Z(result[21]) );
  CKBD1 U16 ( .I(divide_mode), .Z(n73) );
  CKBD1 U17 ( .I(result_fraction[9]), .Z(result[9]) );
  CKBD1 U18 ( .I(result_fraction[10]), .Z(result[10]) );
  CKBD1 U19 ( .I(result_fraction[11]), .Z(result[11]) );
  CKBD1 U20 ( .I(result_fraction[5]), .Z(result[5]) );
  CKBD1 U21 ( .I(result_fraction[4]), .Z(result[4]) );
  CKBD1 U22 ( .I(result_fraction[6]), .Z(result[6]) );
  CKBD1 U23 ( .I(result_fraction[7]), .Z(result[7]) );
  CKBD1 U24 ( .I(result_fraction[8]), .Z(result[8]) );
  CKBD1 U25 ( .I(result_fraction[22]), .Z(result[22]) );
  CKBD1 U26 ( .I(result_fraction[2]), .Z(result[2]) );
  CKBD1 U27 ( .I(result_fraction[3]), .Z(result[3]) );
  CKBD1 U28 ( .I(result_fraction[1]), .Z(result[1]) );
  CKBD1 U29 ( .I(result_fraction[0]), .Z(result[0]) );
  AO22D0 U30 ( .A1(N49), .A2(n74), .B1(N25), .B2(n73), .Z(result[29]) );
  AO22D0 U31 ( .A1(N48), .A2(n74), .B1(N24), .B2(n73), .Z(result[28]) );
  AO22D0 U32 ( .A1(N47), .A2(n74), .B1(N23), .B2(n73), .Z(result[27]) );
  AO22D0 U33 ( .A1(N46), .A2(n74), .B1(N22), .B2(n73), .Z(result[26]) );
  AO22D0 U34 ( .A1(N45), .A2(n74), .B1(N21), .B2(n73), .Z(result[25]) );
  AO22D0 U35 ( .A1(N44), .A2(n74), .B1(N20), .B2(n73), .Z(result[24]) );
  FA1D0 U36 ( .A(N4), .B(exponent_adjust[1]), .CI(n1), .CO(
        add_0_root_add_0_root_add_22_2_carry[2]), .S(N20) );
  FA1D0 U37 ( .A(N5), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[2]), .CO(
        add_0_root_add_0_root_add_22_2_carry[3]), .S(N21) );
  FA1D0 U38 ( .A(N6), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[3]), .CO(
        add_0_root_add_0_root_add_22_2_carry[4]), .S(N22) );
  FA1D0 U39 ( .A(N7), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[4]), .CO(
        add_0_root_add_0_root_add_22_2_carry[5]), .S(N23) );
  FA1D0 U40 ( .A(N8), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[5]), .CO(
        add_0_root_add_0_root_add_22_2_carry[6]), .S(N24) );
  FA1D0 U41 ( .A(N9), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[6]), .CO(
        add_0_root_add_0_root_add_22_2_carry[7]), .S(N25) );
  FA1D0 U42 ( .A(N28), .B(exponent_adjust[1]), .CI(n2), .CO(
        add_0_root_add_0_root_add_25_2_carry[2]), .S(N44) );
  FA1D0 U43 ( .A(N29), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[2]), .CO(
        add_0_root_add_0_root_add_25_2_carry[3]), .S(N45) );
  FA1D0 U44 ( .A(N30), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[3]), .CO(
        add_0_root_add_0_root_add_25_2_carry[4]), .S(N46) );
  FA1D0 U45 ( .A(N31), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[4]), .CO(
        add_0_root_add_0_root_add_25_2_carry[5]), .S(N47) );
  FA1D0 U46 ( .A(N32), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[5]), .CO(
        add_0_root_add_0_root_add_25_2_carry[6]), .S(N48) );
  FA1D0 U47 ( .A(N33), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[6]), .CO(
        add_0_root_add_0_root_add_25_2_carry[7]), .S(N49) );
  AO22D0 U48 ( .A1(N43), .A2(n74), .B1(N19), .B2(n73), .Z(result[23]) );
  AO22D0 U49 ( .A1(N50), .A2(n74), .B1(n73), .B2(N26), .Z(result[30]) );
  XOR3D1 U50 ( .A1(N34), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_25_2_carry[7]), .Z(N50) );
  XOR3D1 U51 ( .A1(N10), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_22_2_carry[7]), .Z(N26) );
  CKBD1 U52 ( .I(y[1]), .Z(fraction_y[1]) );
  CKBD1 U53 ( .I(y[0]), .Z(fraction_y[0]) );
  CKBD1 U54 ( .I(y[2]), .Z(fraction_y[2]) );
  CKBD1 U55 ( .I(x[0]), .Z(fraction_x[0]) );
  CKBD1 U56 ( .I(y[3]), .Z(fraction_y[3]) );
  CKBD1 U57 ( .I(y[4]), .Z(fraction_y[4]) );
  CKBD1 U58 ( .I(y[5]), .Z(fraction_y[5]) );
  CKBD1 U59 ( .I(y[22]), .Z(fraction_y[22]) );
  CKBD1 U60 ( .I(x[22]), .Z(fraction_x[22]) );
  CKBD1 U61 ( .I(y[6]), .Z(fraction_y[6]) );
  CKBD1 U62 ( .I(y[21]), .Z(fraction_y[21]) );
  CKBD1 U63 ( .I(x[21]), .Z(fraction_x[21]) );
  CKBD1 U64 ( .I(y[7]), .Z(fraction_y[7]) );
  CKBD1 U65 ( .I(y[8]), .Z(fraction_y[8]) );
  CKBD1 U66 ( .I(y[20]), .Z(fraction_y[20]) );
  CKBD1 U67 ( .I(x[20]), .Z(fraction_x[20]) );
  CKBD1 U68 ( .I(y[9]), .Z(fraction_y[9]) );
  CKBD1 U69 ( .I(y[10]), .Z(fraction_y[10]) );
  CKBD1 U70 ( .I(y[11]), .Z(fraction_y[11]) );
  CKBD1 U71 ( .I(y[12]), .Z(fraction_y[12]) );
  CKBD1 U72 ( .I(y[13]), .Z(fraction_y[13]) );
  CKBD1 U73 ( .I(y[14]), .Z(fraction_y[14]) );
  CKBD1 U74 ( .I(y[15]), .Z(fraction_y[15]) );
  AN2XD1 U75 ( .A1(y[23]), .A2(y[24]), .Z(n35) );
  INVD1 U76 ( .I(y[29]), .ZN(N17) );
  INVD0 U77 ( .I(y[24]), .ZN(N12) );
  INVD1 U78 ( .I(y[25]), .ZN(N13) );
  INVD1 U79 ( .I(y[26]), .ZN(N14) );
  INVD1 U80 ( .I(y[27]), .ZN(N15) );
  INVD1 U81 ( .I(y[28]), .ZN(N16) );
  AN2XD1 U82 ( .A1(n35), .A2(y[25]), .Z(n410) );
  AN2XD1 U83 ( .A1(n410), .A2(y[26]), .Z(n51) );
  AN2XD1 U84 ( .A1(n51), .A2(y[27]), .Z(n60) );
  AN2XD1 U85 ( .A1(n60), .A2(y[28]), .Z(n70) );
  CKXOR2D1 U86 ( .A1(y[30]), .A2(n72), .Z(N42) );
  ND2D1 U87 ( .A1(n70), .A2(y[29]), .ZN(n72) );
  CKBD1 U88 ( .I(x[19]), .Z(fraction_x[19]) );
  CKBD1 U89 ( .I(x[18]), .Z(fraction_x[18]) );
  CKBD1 U90 ( .I(x[17]), .Z(fraction_x[17]) );
  CKBD1 U91 ( .I(x[16]), .Z(fraction_x[16]) );
  CKBD1 U92 ( .I(x[15]), .Z(fraction_x[15]) );
  CKBD1 U93 ( .I(x[14]), .Z(fraction_x[14]) );
  CKBD1 U94 ( .I(x[13]), .Z(fraction_x[13]) );
  CKBD1 U95 ( .I(x[12]), .Z(fraction_x[12]) );
  CKBD1 U96 ( .I(x[11]), .Z(fraction_x[11]) );
  CKBD1 U97 ( .I(x[10]), .Z(fraction_x[10]) );
  CKBD1 U98 ( .I(x[9]), .Z(fraction_x[9]) );
  CKBD1 U99 ( .I(x[8]), .Z(fraction_x[8]) );
  CKBD1 U100 ( .I(x[7]), .Z(fraction_x[7]) );
  CKBD1 U101 ( .I(x[6]), .Z(fraction_x[6]) );
  CKBD1 U102 ( .I(x[5]), .Z(fraction_x[5]) );
  CKBD1 U103 ( .I(x[4]), .Z(fraction_x[4]) );
  CKBD1 U104 ( .I(x[3]), .Z(fraction_x[3]) );
  CKBD1 U105 ( .I(x[2]), .Z(fraction_x[2]) );
  CKBD1 U106 ( .I(x[1]), .Z(fraction_x[1]) );
  CKBD1 U107 ( .I(y[19]), .Z(fraction_y[19]) );
  CKBD1 U108 ( .I(y[18]), .Z(fraction_y[18]) );
  CKBD1 U109 ( .I(y[17]), .Z(fraction_y[17]) );
  CKBD1 U110 ( .I(y[16]), .Z(fraction_y[16]) );
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


module oadm_fixed_divmul_correction_chain_LEVEL3_DW01_add_0 ( A, B, CI, SUM, 
        CO );
  input [28:0] A;
  input [28:0] B;
  output [28:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [28:3] carry;

  FA1D0 U1_2 ( .A(A[2]), .B(B[2]), .CI(n1), .CO(carry[3]), .S(SUM[2]) );
  XOR3D1 U1_28 ( .A1(A[28]), .A2(B[28]), .A3(carry[28]), .Z(SUM[28]) );
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
  FA1D0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1D0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA1D0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1D0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1D0 U1_27 ( .A(A[27]), .B(B[27]), .CI(carry[27]), .CO(carry[28]), .S(
        SUM[27]) );
  FA1D0 U1_26 ( .A(A[26]), .B(B[26]), .CI(carry[26]), .CO(carry[27]), .S(
        SUM[26]) );
  FA1D0 U1_25 ( .A(A[25]), .B(B[25]), .CI(carry[25]), .CO(carry[26]), .S(
        SUM[25]) );
  FA1D0 U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  FA1D0 U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  FA1D0 U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  FA1D0 U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  FA1D0 U1_24 ( .A(A[24]), .B(B[24]), .CI(carry[24]), .CO(carry[25]), .S(
        SUM[24]) );
  FA1D0 U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  FA1D0 U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  FA1D0 U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  FA1D0 U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  AN2XD1 U1 ( .A1(B[1]), .A2(A[1]), .Z(n1) );
  CKBD1 U2 ( .I(A[0]), .Z(SUM[0]) );
  CKXOR2D1 U3 ( .A1(B[1]), .A2(A[1]), .Z(SUM[1]) );
endmodule


module oadm_fixed_divmul_correction_chain_LEVEL3_DW01_sub_0 ( A, B, CI, DIFF, 
        CO );
  input [28:0] A;
  input [28:0] B;
  output [28:0] DIFF;
  input CI;
  output CO;
  wire   carry_4_, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48;

  AN2XD1 U1 ( .A1(n5), .A2(n29), .Z(n1) );
  AN2XD1 U2 ( .A1(n1), .A2(n28), .Z(n2) );
  AN2XD1 U3 ( .A1(n2), .A2(n27), .Z(n3) );
  AN2XD1 U4 ( .A1(n3), .A2(n26), .Z(n4) );
  ND2D1 U5 ( .A1(n4), .A2(n25), .ZN(n24) );
  AN2XD1 U6 ( .A1(n7), .A2(n30), .Z(n5) );
  INVD1 U7 ( .I(B[23]), .ZN(n29) );
  INVD1 U8 ( .I(B[24]), .ZN(n28) );
  INVD1 U9 ( .I(B[25]), .ZN(n27) );
  INVD1 U10 ( .I(B[26]), .ZN(n26) );
  INVD1 U11 ( .I(B[27]), .ZN(n25) );
  AN2XD1 U12 ( .A1(n22), .A2(n32), .Z(n6) );
  AN2XD1 U13 ( .A1(n6), .A2(n31), .Z(n7) );
  INVD1 U14 ( .I(B[22]), .ZN(n30) );
  AN2XD1 U15 ( .A1(n23), .A2(n47), .Z(n8) );
  AN2XD1 U16 ( .A1(n8), .A2(n46), .Z(n9) );
  AN2XD1 U17 ( .A1(n9), .A2(n45), .Z(n10) );
  AN2XD1 U18 ( .A1(n10), .A2(n44), .Z(n11) );
  AN2XD1 U19 ( .A1(n11), .A2(n43), .Z(n12) );
  AN2XD1 U20 ( .A1(n12), .A2(n42), .Z(n13) );
  AN2XD1 U21 ( .A1(n13), .A2(n41), .Z(n14) );
  AN2XD1 U22 ( .A1(n14), .A2(n40), .Z(n15) );
  AN2XD1 U23 ( .A1(n15), .A2(n39), .Z(n16) );
  AN2XD1 U24 ( .A1(n16), .A2(n38), .Z(n17) );
  AN2XD1 U25 ( .A1(n17), .A2(n37), .Z(n18) );
  AN2XD1 U26 ( .A1(n18), .A2(n36), .Z(n19) );
  AN2XD1 U27 ( .A1(n19), .A2(n35), .Z(n20) );
  AN2XD1 U28 ( .A1(n20), .A2(n34), .Z(n21) );
  AN2XD1 U29 ( .A1(n21), .A2(n33), .Z(n22) );
  INVD1 U30 ( .I(B[20]), .ZN(n32) );
  INVD1 U31 ( .I(B[21]), .ZN(n31) );
  AN2XD1 U32 ( .A1(carry_4_), .A2(n48), .Z(n23) );
  INVD1 U33 ( .I(B[5]), .ZN(n47) );
  INVD1 U34 ( .I(B[4]), .ZN(n48) );
  INVD1 U35 ( .I(B[6]), .ZN(n46) );
  INVD1 U36 ( .I(B[7]), .ZN(n45) );
  INVD1 U37 ( .I(B[8]), .ZN(n44) );
  INVD1 U38 ( .I(B[9]), .ZN(n43) );
  INVD1 U39 ( .I(B[10]), .ZN(n42) );
  INVD1 U40 ( .I(B[11]), .ZN(n41) );
  INVD1 U41 ( .I(B[12]), .ZN(n40) );
  INVD1 U42 ( .I(B[13]), .ZN(n39) );
  INVD1 U43 ( .I(B[14]), .ZN(n38) );
  INVD1 U44 ( .I(B[15]), .ZN(n37) );
  INVD1 U45 ( .I(B[16]), .ZN(n36) );
  INVD1 U46 ( .I(B[17]), .ZN(n35) );
  INVD1 U47 ( .I(B[18]), .ZN(n34) );
  INVD1 U48 ( .I(B[19]), .ZN(n33) );
  CKXOR2D1 U49 ( .A1(B[28]), .A2(n24), .Z(DIFF[28]) );
  CKXOR2D1 U50 ( .A1(n4), .A2(n25), .Z(DIFF[27]) );
  CKXOR2D1 U51 ( .A1(n3), .A2(n26), .Z(DIFF[26]) );
  CKXOR2D1 U52 ( .A1(n2), .A2(n27), .Z(DIFF[25]) );
  CKXOR2D1 U53 ( .A1(n1), .A2(n28), .Z(DIFF[24]) );
  CKXOR2D1 U54 ( .A1(n5), .A2(n29), .Z(DIFF[23]) );
  CKXOR2D1 U55 ( .A1(n7), .A2(n30), .Z(DIFF[22]) );
  CKXOR2D1 U56 ( .A1(n6), .A2(n31), .Z(DIFF[21]) );
  CKXOR2D1 U57 ( .A1(n22), .A2(n32), .Z(DIFF[20]) );
  CKXOR2D1 U58 ( .A1(n21), .A2(n33), .Z(DIFF[19]) );
  CKXOR2D1 U59 ( .A1(n20), .A2(n34), .Z(DIFF[18]) );
  CKXOR2D1 U60 ( .A1(n19), .A2(n35), .Z(DIFF[17]) );
  CKXOR2D1 U61 ( .A1(n18), .A2(n36), .Z(DIFF[16]) );
  CKXOR2D1 U62 ( .A1(n17), .A2(n37), .Z(DIFF[15]) );
  CKXOR2D1 U63 ( .A1(n16), .A2(n38), .Z(DIFF[14]) );
  CKXOR2D1 U64 ( .A1(n15), .A2(n39), .Z(DIFF[13]) );
  CKXOR2D1 U65 ( .A1(n14), .A2(n40), .Z(DIFF[12]) );
  CKXOR2D1 U66 ( .A1(n13), .A2(n41), .Z(DIFF[11]) );
  CKXOR2D1 U67 ( .A1(n12), .A2(n42), .Z(DIFF[10]) );
  CKXOR2D1 U68 ( .A1(n11), .A2(n43), .Z(DIFF[9]) );
  CKXOR2D1 U69 ( .A1(n10), .A2(n44), .Z(DIFF[8]) );
  CKXOR2D1 U70 ( .A1(n9), .A2(n45), .Z(DIFF[7]) );
  CKXOR2D1 U71 ( .A1(n8), .A2(n46), .Z(DIFF[6]) );
  CKXOR2D1 U72 ( .A1(n23), .A2(n47), .Z(DIFF[5]) );
  CKXOR2D1 U73 ( .A1(carry_4_), .A2(n48), .Z(DIFF[4]) );
  NR4D0 U74 ( .A1(B[3]), .A2(B[2]), .A3(B[1]), .A4(B[0]), .ZN(carry_4_) );
endmodule


module oadm_fixed_divmul_correction_chain_LEVEL3_DW01_sub_1 ( A, B, CI, DIFF, 
        CO );
  input [28:0] A;
  input [28:0] B;
  output [28:0] DIFF;
  input CI;
  output CO;
  wire   carry_4_, n1, n2, n3, n4, n5, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49;

  AN2XD1 U1 ( .A1(n3), .A2(n25), .Z(n1) );
  AN2XD1 U2 ( .A1(n1), .A2(n30), .Z(n2) );
  AN2XD1 U3 ( .A1(n8), .A2(n26), .Z(n3) );
  AN2XD1 U4 ( .A1(n2), .A2(n29), .Z(n4) );
  AN2XD1 U5 ( .A1(n4), .A2(n28), .Z(n5) );
  INVD1 U7 ( .I(B[23]), .ZN(n25) );
  INVD1 U8 ( .I(B[24]), .ZN(n30) );
  AN2XD1 U9 ( .A1(n23), .A2(n32), .Z(n7) );
  AN2XD1 U10 ( .A1(n7), .A2(n31), .Z(n8) );
  INVD1 U11 ( .I(B[22]), .ZN(n26) );
  INVD1 U12 ( .I(B[25]), .ZN(n29) );
  INVD1 U13 ( .I(B[26]), .ZN(n28) );
  INVD1 U14 ( .I(B[27]), .ZN(n27) );
  AN2XD1 U15 ( .A1(n24), .A2(n47), .Z(n9) );
  AN2XD1 U16 ( .A1(n9), .A2(n46), .Z(n10) );
  AN2XD1 U17 ( .A1(n10), .A2(n45), .Z(n11) );
  AN2XD1 U18 ( .A1(n11), .A2(n44), .Z(n12) );
  AN2XD1 U19 ( .A1(n12), .A2(n43), .Z(n13) );
  AN2XD1 U20 ( .A1(n13), .A2(n42), .Z(n14) );
  AN2XD1 U21 ( .A1(n14), .A2(n41), .Z(n15) );
  AN2XD1 U22 ( .A1(n15), .A2(n40), .Z(n16) );
  AN2XD1 U23 ( .A1(n16), .A2(n39), .Z(n17) );
  AN2XD1 U24 ( .A1(n17), .A2(n38), .Z(n18) );
  AN2XD1 U25 ( .A1(n18), .A2(n37), .Z(n19) );
  AN2XD1 U26 ( .A1(n19), .A2(n36), .Z(n20) );
  AN2XD1 U27 ( .A1(n20), .A2(n35), .Z(n21) );
  AN2XD1 U28 ( .A1(n21), .A2(n34), .Z(n22) );
  AN2XD1 U29 ( .A1(n22), .A2(n33), .Z(n23) );
  INVD1 U30 ( .I(B[20]), .ZN(n32) );
  INVD1 U31 ( .I(B[21]), .ZN(n31) );
  AN2XD1 U32 ( .A1(carry_4_), .A2(n48), .Z(n24) );
  INVD1 U33 ( .I(B[4]), .ZN(n48) );
  INVD1 U34 ( .I(B[5]), .ZN(n47) );
  INVD1 U35 ( .I(B[6]), .ZN(n46) );
  INVD1 U36 ( .I(B[7]), .ZN(n45) );
  INVD1 U37 ( .I(B[8]), .ZN(n44) );
  INVD1 U38 ( .I(B[9]), .ZN(n43) );
  INVD1 U39 ( .I(B[10]), .ZN(n42) );
  INVD1 U40 ( .I(B[11]), .ZN(n41) );
  INVD1 U41 ( .I(B[12]), .ZN(n40) );
  INVD1 U43 ( .I(B[13]), .ZN(n39) );
  INVD1 U44 ( .I(B[14]), .ZN(n38) );
  INVD1 U45 ( .I(B[15]), .ZN(n37) );
  INVD1 U46 ( .I(B[16]), .ZN(n36) );
  INVD1 U47 ( .I(B[17]), .ZN(n35) );
  INVD1 U48 ( .I(B[18]), .ZN(n34) );
  INVD1 U49 ( .I(B[19]), .ZN(n33) );
  CKXOR2D1 U50 ( .A1(n5), .A2(n27), .Z(DIFF[27]) );
  CKXOR2D1 U51 ( .A1(n4), .A2(n28), .Z(DIFF[26]) );
  CKXOR2D1 U52 ( .A1(n2), .A2(n29), .Z(DIFF[25]) );
  CKXOR2D1 U53 ( .A1(n1), .A2(n30), .Z(DIFF[24]) );
  CKXOR2D1 U54 ( .A1(n3), .A2(n25), .Z(DIFF[23]) );
  CKXOR2D1 U55 ( .A1(n8), .A2(n26), .Z(DIFF[22]) );
  CKXOR2D1 U56 ( .A1(n7), .A2(n31), .Z(DIFF[21]) );
  CKXOR2D1 U57 ( .A1(n23), .A2(n32), .Z(DIFF[20]) );
  CKXOR2D1 U58 ( .A1(n22), .A2(n33), .Z(DIFF[19]) );
  CKXOR2D1 U59 ( .A1(n21), .A2(n34), .Z(DIFF[18]) );
  CKXOR2D1 U60 ( .A1(n20), .A2(n35), .Z(DIFF[17]) );
  CKXOR2D1 U61 ( .A1(n19), .A2(n36), .Z(DIFF[16]) );
  CKXOR2D1 U62 ( .A1(n18), .A2(n37), .Z(DIFF[15]) );
  CKXOR2D1 U63 ( .A1(n17), .A2(n38), .Z(DIFF[14]) );
  CKXOR2D1 U64 ( .A1(n16), .A2(n39), .Z(DIFF[13]) );
  CKXOR2D1 U65 ( .A1(n15), .A2(n40), .Z(DIFF[12]) );
  CKXOR2D1 U66 ( .A1(n14), .A2(n41), .Z(DIFF[11]) );
  CKXOR2D1 U67 ( .A1(n13), .A2(n42), .Z(DIFF[10]) );
  CKXOR2D1 U68 ( .A1(n12), .A2(n43), .Z(DIFF[9]) );
  CKXOR2D1 U69 ( .A1(n11), .A2(n44), .Z(DIFF[8]) );
  CKXOR2D1 U70 ( .A1(n10), .A2(n45), .Z(DIFF[7]) );
  CKXOR2D1 U71 ( .A1(n9), .A2(n46), .Z(DIFF[6]) );
  CKXOR2D1 U72 ( .A1(n24), .A2(n47), .Z(DIFF[5]) );
  CKXOR2D1 U73 ( .A1(carry_4_), .A2(n48), .Z(DIFF[4]) );
  NR4D0 U74 ( .A1(B[3]), .A2(B[2]), .A3(B[1]), .A4(B[0]), .ZN(carry_4_) );
  CKXOR2D0 U6 ( .A1(B[28]), .A2(n49), .Z(DIFF[28]) );
  CKND2D0 U42 ( .A1(n27), .A2(n5), .ZN(n49) );
endmodule


module oadm_fixed_divmul_correction_chain_LEVEL3_DW01_sub_4 ( A, B, CI, DIFF, 
        CO );
  input [28:0] A;
  input [28:0] B;
  output [28:0] DIFF;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n28, n29, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49;
  wire   [23:21] carry;

  FA1D0 U2_21 ( .A(B[21]), .B(n28), .CI(carry[21]), .CO(carry[22]) );
  FA1D0 U2_22 ( .A(A[22]), .B(n29), .CI(carry[22]), .CO(carry[23]), .S(
        DIFF[22]) );
  INVD1 U1 ( .I(carry[23]), .ZN(DIFF[23]) );
  INVD1 U2 ( .I(carry[23]), .ZN(DIFF[24]) );
  INVD1 U3 ( .I(carry[23]), .ZN(DIFF[25]) );
  INVD1 U4 ( .I(carry[23]), .ZN(DIFF[26]) );
  INVD1 U5 ( .I(carry[23]), .ZN(DIFF[27]) );
  INVD1 U6 ( .I(carry[23]), .ZN(DIFF[28]) );
  IND2D1 U7 ( .A1(n20), .B1(B[20]), .ZN(carry[21]) );
  INVD1 U8 ( .I(B[22]), .ZN(n29) );
  INVD1 U10 ( .I(A[21]), .ZN(n28) );
  AN2XD1 U12 ( .A1(n2), .A2(n49), .Z(n3) );
  AN2XD1 U13 ( .A1(n3), .A2(n48), .Z(n4) );
  AN2XD1 U14 ( .A1(n4), .A2(n47), .Z(n5) );
  AN2XD1 U15 ( .A1(n5), .A2(n46), .Z(n6) );
  AN2XD1 U16 ( .A1(n6), .A2(n45), .Z(n7) );
  AN2XD1 U17 ( .A1(n7), .A2(n44), .Z(n8) );
  AN2XD1 U18 ( .A1(n8), .A2(n43), .Z(n9) );
  AN2XD1 U19 ( .A1(n9), .A2(n42), .Z(n10) );
  AN2XD1 U20 ( .A1(n10), .A2(n41), .Z(n11) );
  AN2XD1 U21 ( .A1(n11), .A2(n40), .Z(n12) );
  AN2XD1 U22 ( .A1(n12), .A2(n39), .Z(n13) );
  AN2XD1 U23 ( .A1(n13), .A2(n38), .Z(n14) );
  AN2XD1 U24 ( .A1(n14), .A2(n37), .Z(n15) );
  AN2XD1 U25 ( .A1(n15), .A2(n36), .Z(n16) );
  AN2XD1 U26 ( .A1(n16), .A2(n35), .Z(n17) );
  AN2XD1 U27 ( .A1(n17), .A2(n34), .Z(n18) );
  AN2XD1 U28 ( .A1(n18), .A2(n33), .Z(n19) );
  INVD1 U30 ( .I(carry[21]), .ZN(DIFF[21]) );
  CKBD1 U31 ( .I(B[0]), .Z(DIFF[0]) );
  INVD1 U34 ( .I(B[2]), .ZN(n49) );
  INVD1 U35 ( .I(B[3]), .ZN(n48) );
  INVD1 U36 ( .I(B[4]), .ZN(n47) );
  INVD1 U37 ( .I(B[5]), .ZN(n46) );
  INVD1 U38 ( .I(B[6]), .ZN(n45) );
  INVD1 U39 ( .I(B[7]), .ZN(n44) );
  INVD1 U40 ( .I(B[8]), .ZN(n43) );
  INVD1 U41 ( .I(B[9]), .ZN(n42) );
  INVD1 U42 ( .I(B[10]), .ZN(n41) );
  INVD1 U43 ( .I(B[11]), .ZN(n40) );
  INVD1 U44 ( .I(B[12]), .ZN(n39) );
  INVD1 U45 ( .I(B[13]), .ZN(n38) );
  INVD1 U46 ( .I(B[14]), .ZN(n37) );
  INVD1 U47 ( .I(B[15]), .ZN(n36) );
  INVD1 U48 ( .I(B[16]), .ZN(n35) );
  INVD1 U49 ( .I(B[17]), .ZN(n34) );
  INVD1 U50 ( .I(B[18]), .ZN(n33) );
  INVD1 U51 ( .I(B[19]), .ZN(n32) );
  CKXOR2D1 U53 ( .A1(n19), .A2(n32), .Z(DIFF[19]) );
  CKXOR2D1 U54 ( .A1(n18), .A2(n33), .Z(DIFF[18]) );
  CKXOR2D1 U55 ( .A1(n17), .A2(n34), .Z(DIFF[17]) );
  CKXOR2D1 U56 ( .A1(n16), .A2(n35), .Z(DIFF[16]) );
  CKXOR2D1 U57 ( .A1(n15), .A2(n36), .Z(DIFF[15]) );
  CKXOR2D1 U58 ( .A1(n14), .A2(n37), .Z(DIFF[14]) );
  CKXOR2D1 U59 ( .A1(n13), .A2(n38), .Z(DIFF[13]) );
  CKXOR2D1 U60 ( .A1(n12), .A2(n39), .Z(DIFF[12]) );
  CKXOR2D1 U61 ( .A1(n11), .A2(n40), .Z(DIFF[11]) );
  CKXOR2D1 U62 ( .A1(n10), .A2(n41), .Z(DIFF[10]) );
  CKXOR2D1 U63 ( .A1(n9), .A2(n42), .Z(DIFF[9]) );
  CKXOR2D1 U64 ( .A1(n8), .A2(n43), .Z(DIFF[8]) );
  CKXOR2D1 U65 ( .A1(n7), .A2(n44), .Z(DIFF[7]) );
  CKXOR2D1 U66 ( .A1(n6), .A2(n45), .Z(DIFF[6]) );
  CKXOR2D1 U67 ( .A1(n5), .A2(n46), .Z(DIFF[5]) );
  CKXOR2D1 U68 ( .A1(n4), .A2(n47), .Z(DIFF[4]) );
  CKXOR2D1 U69 ( .A1(n3), .A2(n48), .Z(DIFF[3]) );
  CKXOR2D1 U70 ( .A1(n2), .A2(n49), .Z(DIFF[2]) );
  CKXOR2D0 U9 ( .A1(n20), .A2(B[20]), .Z(DIFF[20]) );
  AN2D0 U11 ( .A1(n32), .A2(n19), .Z(n20) );
  CKXOR2D0 U29 ( .A1(B[0]), .A2(B[1]), .Z(DIFF[1]) );
  NR2D0 U32 ( .A1(B[0]), .A2(B[1]), .ZN(n2) );
endmodule


module oadm_fixed_divmul_correction_chain_LEVEL3_DW01_sub_7 ( A, B, CI, DIFF, 
        CO );
  input [28:0] A;
  input [28:0] B;
  output [28:0] DIFF;
  input CI;
  output CO;
  wire   carry_3_, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48;

  AN2XD1 U1 ( .A1(n7), .A2(n27), .Z(n1) );
  AN2XD1 U2 ( .A1(n1), .A2(n26), .Z(n2) );
  AN2XD1 U3 ( .A1(n2), .A2(n28), .Z(n3) );
  AN2XD1 U4 ( .A1(n3), .A2(n28), .Z(n4) );
  AN2XD1 U5 ( .A1(n23), .A2(n31), .Z(n5) );
  INVD1 U6 ( .I(B[20]), .ZN(n31) );
  AN2XD1 U7 ( .A1(n5), .A2(n30), .Z(n6) );
  INVD1 U8 ( .I(B[23]), .ZN(n27) );
  AN2XD1 U9 ( .A1(n6), .A2(n29), .Z(n7) );
  INVD1 U10 ( .I(B[24]), .ZN(n26) );
  AN2XD1 U12 ( .A1(n24), .A2(n47), .Z(n8) );
  AN2XD1 U13 ( .A1(n8), .A2(n46), .Z(n9) );
  AN2XD1 U14 ( .A1(n9), .A2(n45), .Z(n10) );
  AN2XD1 U15 ( .A1(n10), .A2(n44), .Z(n11) );
  AN2XD1 U16 ( .A1(n11), .A2(n43), .Z(n12) );
  AN2XD1 U17 ( .A1(n12), .A2(n42), .Z(n13) );
  AN2XD1 U18 ( .A1(n13), .A2(n41), .Z(n14) );
  AN2XD1 U19 ( .A1(n14), .A2(n40), .Z(n15) );
  AN2XD1 U20 ( .A1(n15), .A2(n39), .Z(n16) );
  AN2XD1 U21 ( .A1(n16), .A2(n38), .Z(n17) );
  AN2XD1 U22 ( .A1(n17), .A2(n37), .Z(n18) );
  AN2XD1 U23 ( .A1(n18), .A2(n36), .Z(n19) );
  AN2XD1 U24 ( .A1(n19), .A2(n35), .Z(n20) );
  AN2XD1 U25 ( .A1(n20), .A2(n34), .Z(n21) );
  AN2XD1 U26 ( .A1(n21), .A2(n33), .Z(n22) );
  AN2XD1 U27 ( .A1(n22), .A2(n32), .Z(n23) );
  INVD1 U28 ( .I(B[21]), .ZN(n30) );
  INVD1 U29 ( .I(B[22]), .ZN(n29) );
  AN2XD1 U30 ( .A1(carry_3_), .A2(n48), .Z(n24) );
  INVD1 U31 ( .I(B[4]), .ZN(n47) );
  INVD1 U32 ( .I(B[3]), .ZN(n48) );
  INVD1 U33 ( .I(B[5]), .ZN(n46) );
  INVD1 U34 ( .I(B[6]), .ZN(n45) );
  INVD1 U35 ( .I(B[7]), .ZN(n44) );
  INVD1 U36 ( .I(B[8]), .ZN(n43) );
  INVD1 U37 ( .I(B[9]), .ZN(n42) );
  INVD1 U38 ( .I(B[10]), .ZN(n41) );
  INVD1 U39 ( .I(B[11]), .ZN(n40) );
  INVD1 U40 ( .I(B[12]), .ZN(n39) );
  INVD1 U41 ( .I(B[13]), .ZN(n38) );
  INVD1 U42 ( .I(B[14]), .ZN(n37) );
  INVD1 U43 ( .I(B[15]), .ZN(n36) );
  INVD1 U44 ( .I(B[16]), .ZN(n35) );
  INVD1 U45 ( .I(B[17]), .ZN(n34) );
  INVD1 U46 ( .I(B[18]), .ZN(n33) );
  INVD1 U47 ( .I(B[19]), .ZN(n32) );
  CKXOR2D1 U50 ( .A1(n4), .A2(n28), .Z(DIFF[27]) );
  CKXOR2D1 U51 ( .A1(n3), .A2(n28), .Z(DIFF[26]) );
  CKXOR2D1 U52 ( .A1(n2), .A2(n28), .Z(DIFF[25]) );
  CKXOR2D1 U53 ( .A1(n1), .A2(n26), .Z(DIFF[24]) );
  CKXOR2D1 U54 ( .A1(n7), .A2(n27), .Z(DIFF[23]) );
  CKXOR2D1 U55 ( .A1(n6), .A2(n29), .Z(DIFF[22]) );
  CKXOR2D1 U56 ( .A1(n5), .A2(n30), .Z(DIFF[21]) );
  CKXOR2D1 U57 ( .A1(n23), .A2(n31), .Z(DIFF[20]) );
  CKXOR2D1 U58 ( .A1(n22), .A2(n32), .Z(DIFF[19]) );
  CKXOR2D1 U59 ( .A1(n21), .A2(n33), .Z(DIFF[18]) );
  CKXOR2D1 U60 ( .A1(n20), .A2(n34), .Z(DIFF[17]) );
  CKXOR2D1 U61 ( .A1(n19), .A2(n35), .Z(DIFF[16]) );
  CKXOR2D1 U62 ( .A1(n18), .A2(n36), .Z(DIFF[15]) );
  CKXOR2D1 U63 ( .A1(n17), .A2(n37), .Z(DIFF[14]) );
  CKXOR2D1 U64 ( .A1(n16), .A2(n38), .Z(DIFF[13]) );
  CKXOR2D1 U65 ( .A1(n15), .A2(n39), .Z(DIFF[12]) );
  CKXOR2D1 U66 ( .A1(n14), .A2(n40), .Z(DIFF[11]) );
  CKXOR2D1 U67 ( .A1(n13), .A2(n41), .Z(DIFF[10]) );
  CKXOR2D1 U68 ( .A1(n12), .A2(n42), .Z(DIFF[9]) );
  CKXOR2D1 U69 ( .A1(n11), .A2(n43), .Z(DIFF[8]) );
  CKXOR2D1 U70 ( .A1(n10), .A2(n44), .Z(DIFF[7]) );
  CKXOR2D1 U71 ( .A1(n9), .A2(n45), .Z(DIFF[6]) );
  CKXOR2D1 U72 ( .A1(n8), .A2(n46), .Z(DIFF[5]) );
  CKXOR2D1 U73 ( .A1(n24), .A2(n47), .Z(DIFF[4]) );
  CKXOR2D1 U74 ( .A1(carry_3_), .A2(n48), .Z(DIFF[3]) );
  NR3D0 U75 ( .A1(B[0]), .A2(B[2]), .A3(B[1]), .ZN(carry_3_) );
  CKND0 U11 ( .I(B[28]), .ZN(n28) );
  NR2D0 U48 ( .A1(B[28]), .A2(n4), .ZN(DIFF[28]) );
endmodule


module oadm_fixed_divmul_correction_chain_LEVEL3_DW01_sub_8 ( A, B, CI, DIFF, 
        CO );
  input [28:0] A;
  input [28:0] B;
  output [28:0] DIFF;
  input CI;
  output CO;
  wire   carry_3_, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48;

  AN2XD1 U1 ( .A1(n7), .A2(n26), .Z(n1) );
  AN2XD1 U2 ( .A1(n1), .A2(n47), .Z(n2) );
  AN2XD1 U3 ( .A1(n2), .A2(n48), .Z(n3) );
  AN2XD1 U4 ( .A1(n3), .A2(n48), .Z(n4) );
  AN2XD1 U5 ( .A1(n23), .A2(n29), .Z(n5) );
  AN2XD1 U6 ( .A1(n5), .A2(n28), .Z(n6) );
  AN2XD1 U7 ( .A1(n6), .A2(n27), .Z(n7) );
  INVD1 U8 ( .I(B[20]), .ZN(n29) );
  INVD1 U9 ( .I(B[23]), .ZN(n26) );
  INVD1 U10 ( .I(B[24]), .ZN(n47) );
  AN2XD1 U12 ( .A1(n24), .A2(n45), .Z(n8) );
  AN2XD1 U13 ( .A1(n8), .A2(n44), .Z(n9) );
  AN2XD1 U14 ( .A1(n9), .A2(n43), .Z(n10) );
  AN2XD1 U15 ( .A1(n10), .A2(n42), .Z(n11) );
  AN2XD1 U16 ( .A1(n11), .A2(n41), .Z(n12) );
  AN2XD1 U17 ( .A1(n12), .A2(n40), .Z(n13) );
  AN2XD1 U18 ( .A1(n13), .A2(n39), .Z(n14) );
  AN2XD1 U19 ( .A1(n14), .A2(n38), .Z(n15) );
  AN2XD1 U20 ( .A1(n15), .A2(n37), .Z(n16) );
  AN2XD1 U21 ( .A1(n16), .A2(n36), .Z(n17) );
  AN2XD1 U22 ( .A1(n17), .A2(n35), .Z(n18) );
  AN2XD1 U23 ( .A1(n18), .A2(n34), .Z(n19) );
  AN2XD1 U24 ( .A1(n19), .A2(n33), .Z(n20) );
  AN2XD1 U25 ( .A1(n20), .A2(n32), .Z(n21) );
  AN2XD1 U26 ( .A1(n21), .A2(n31), .Z(n22) );
  AN2XD1 U27 ( .A1(n22), .A2(n30), .Z(n23) );
  INVD1 U28 ( .I(B[21]), .ZN(n28) );
  INVD1 U29 ( .I(B[22]), .ZN(n27) );
  AN2XD1 U30 ( .A1(carry_3_), .A2(n46), .Z(n24) );
  INVD1 U31 ( .I(B[3]), .ZN(n46) );
  INVD1 U32 ( .I(B[4]), .ZN(n45) );
  INVD1 U33 ( .I(B[5]), .ZN(n44) );
  INVD1 U34 ( .I(B[6]), .ZN(n43) );
  INVD1 U35 ( .I(B[7]), .ZN(n42) );
  INVD1 U36 ( .I(B[8]), .ZN(n41) );
  INVD1 U37 ( .I(B[9]), .ZN(n40) );
  INVD1 U38 ( .I(B[10]), .ZN(n39) );
  INVD1 U39 ( .I(B[11]), .ZN(n38) );
  INVD1 U40 ( .I(B[12]), .ZN(n37) );
  INVD1 U41 ( .I(B[13]), .ZN(n36) );
  INVD1 U44 ( .I(B[14]), .ZN(n35) );
  INVD1 U45 ( .I(B[15]), .ZN(n34) );
  INVD1 U46 ( .I(B[16]), .ZN(n33) );
  INVD1 U47 ( .I(B[17]), .ZN(n32) );
  INVD1 U48 ( .I(B[18]), .ZN(n31) );
  INVD1 U49 ( .I(B[19]), .ZN(n30) );
  CKXOR2D1 U50 ( .A1(n4), .A2(n48), .Z(DIFF[27]) );
  CKXOR2D1 U51 ( .A1(n3), .A2(n48), .Z(DIFF[26]) );
  CKXOR2D1 U52 ( .A1(n2), .A2(n48), .Z(DIFF[25]) );
  CKXOR2D1 U53 ( .A1(n1), .A2(n47), .Z(DIFF[24]) );
  CKXOR2D1 U54 ( .A1(n7), .A2(n26), .Z(DIFF[23]) );
  CKXOR2D1 U55 ( .A1(n6), .A2(n27), .Z(DIFF[22]) );
  CKXOR2D1 U56 ( .A1(n5), .A2(n28), .Z(DIFF[21]) );
  CKXOR2D1 U57 ( .A1(n23), .A2(n29), .Z(DIFF[20]) );
  CKXOR2D1 U58 ( .A1(n22), .A2(n30), .Z(DIFF[19]) );
  CKXOR2D1 U59 ( .A1(n21), .A2(n31), .Z(DIFF[18]) );
  CKXOR2D1 U60 ( .A1(n20), .A2(n32), .Z(DIFF[17]) );
  CKXOR2D1 U61 ( .A1(n19), .A2(n33), .Z(DIFF[16]) );
  CKXOR2D1 U62 ( .A1(n18), .A2(n34), .Z(DIFF[15]) );
  CKXOR2D1 U63 ( .A1(n17), .A2(n35), .Z(DIFF[14]) );
  CKXOR2D1 U64 ( .A1(n16), .A2(n36), .Z(DIFF[13]) );
  CKXOR2D1 U65 ( .A1(n15), .A2(n37), .Z(DIFF[12]) );
  CKXOR2D1 U66 ( .A1(n14), .A2(n38), .Z(DIFF[11]) );
  CKXOR2D1 U67 ( .A1(n13), .A2(n39), .Z(DIFF[10]) );
  CKXOR2D1 U68 ( .A1(n12), .A2(n40), .Z(DIFF[9]) );
  CKXOR2D1 U69 ( .A1(n11), .A2(n41), .Z(DIFF[8]) );
  CKXOR2D1 U70 ( .A1(n10), .A2(n42), .Z(DIFF[7]) );
  CKXOR2D1 U71 ( .A1(n9), .A2(n43), .Z(DIFF[6]) );
  CKXOR2D1 U72 ( .A1(n8), .A2(n44), .Z(DIFF[5]) );
  CKXOR2D1 U73 ( .A1(n24), .A2(n45), .Z(DIFF[4]) );
  CKXOR2D1 U74 ( .A1(carry_3_), .A2(n46), .Z(DIFF[3]) );
  NR3D0 U75 ( .A1(B[0]), .A2(B[2]), .A3(B[1]), .ZN(carry_3_) );
  CKND0 U11 ( .I(B[28]), .ZN(n48) );
  NR2D0 U42 ( .A1(B[28]), .A2(n4), .ZN(DIFF[28]) );
endmodule


module oadm_fixed_divmul_correction_chain_LEVEL3_DW01_sub_11 ( A, B, CI, DIFF, 
        CO );
  input [25:0] A;
  input [25:0] B;
  output [25:0] DIFF;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n25, n27, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46;
  wire   [23:22] carry;

  FA1D0 U2_22 ( .A(B[22]), .B(n27), .CI(carry[22]), .CO(carry[23]) );
  IND2D1 U1 ( .A1(n2), .B1(B[21]), .ZN(carry[22]) );
  INVD1 U3 ( .I(A[22]), .ZN(n27) );
  CKBD1 U4 ( .I(DIFF[23]), .Z(DIFF[24]) );
  CKBD1 U5 ( .I(DIFF[23]), .Z(DIFF[25]) );
  INVD1 U6 ( .I(B[20]), .ZN(n25) );
  AN2XD1 U9 ( .A1(n3), .A2(n46), .Z(n4) );
  AN2XD1 U10 ( .A1(n4), .A2(n45), .Z(n5) );
  AN2XD1 U11 ( .A1(n5), .A2(n44), .Z(n6) );
  AN2XD1 U12 ( .A1(n6), .A2(n43), .Z(n7) );
  AN2XD1 U13 ( .A1(n7), .A2(n42), .Z(n8) );
  AN2XD1 U14 ( .A1(n8), .A2(n41), .Z(n9) );
  AN2XD1 U15 ( .A1(n9), .A2(n40), .Z(n10) );
  AN2XD1 U16 ( .A1(n10), .A2(n39), .Z(n11) );
  AN2XD1 U17 ( .A1(n11), .A2(n38), .Z(n12) );
  AN2XD1 U18 ( .A1(n12), .A2(n37), .Z(n13) );
  AN2XD1 U19 ( .A1(n13), .A2(n36), .Z(n14) );
  AN2XD1 U20 ( .A1(n14), .A2(n35), .Z(n15) );
  AN2XD1 U21 ( .A1(n15), .A2(n34), .Z(n16) );
  AN2XD1 U22 ( .A1(n16), .A2(n33), .Z(n17) );
  AN2XD1 U23 ( .A1(n17), .A2(n32), .Z(n18) );
  AN2XD1 U24 ( .A1(n18), .A2(n31), .Z(n19) );
  AN2XD1 U25 ( .A1(n19), .A2(n30), .Z(n20) );
  AN2XD1 U26 ( .A1(n20), .A2(n29), .Z(n21) );
  INVD1 U27 ( .I(carry[22]), .ZN(DIFF[22]) );
  INVD1 U30 ( .I(B[2]), .ZN(n46) );
  INVD1 U31 ( .I(B[3]), .ZN(n45) );
  CKBD1 U32 ( .I(B[0]), .Z(DIFF[0]) );
  INVD1 U33 ( .I(B[4]), .ZN(n44) );
  INVD1 U34 ( .I(B[5]), .ZN(n43) );
  INVD1 U35 ( .I(B[6]), .ZN(n42) );
  INVD1 U36 ( .I(B[7]), .ZN(n41) );
  INVD1 U37 ( .I(B[8]), .ZN(n40) );
  INVD1 U38 ( .I(B[9]), .ZN(n39) );
  INVD1 U39 ( .I(B[10]), .ZN(n38) );
  INVD1 U40 ( .I(B[11]), .ZN(n37) );
  INVD1 U41 ( .I(B[12]), .ZN(n36) );
  INVD1 U42 ( .I(B[13]), .ZN(n35) );
  INVD1 U43 ( .I(B[14]), .ZN(n34) );
  INVD1 U44 ( .I(B[15]), .ZN(n33) );
  INVD1 U45 ( .I(B[16]), .ZN(n32) );
  INVD1 U46 ( .I(B[17]), .ZN(n31) );
  INVD1 U47 ( .I(B[18]), .ZN(n30) );
  INVD1 U48 ( .I(B[19]), .ZN(n29) );
  CKXOR2D1 U50 ( .A1(n21), .A2(n25), .Z(DIFF[20]) );
  CKXOR2D1 U51 ( .A1(n20), .A2(n29), .Z(DIFF[19]) );
  CKXOR2D1 U52 ( .A1(n19), .A2(n30), .Z(DIFF[18]) );
  CKXOR2D1 U53 ( .A1(n18), .A2(n31), .Z(DIFF[17]) );
  CKXOR2D1 U54 ( .A1(n17), .A2(n32), .Z(DIFF[16]) );
  CKXOR2D1 U55 ( .A1(n16), .A2(n33), .Z(DIFF[15]) );
  CKXOR2D1 U56 ( .A1(n15), .A2(n34), .Z(DIFF[14]) );
  CKXOR2D1 U57 ( .A1(n14), .A2(n35), .Z(DIFF[13]) );
  CKXOR2D1 U58 ( .A1(n13), .A2(n36), .Z(DIFF[12]) );
  CKXOR2D1 U59 ( .A1(n12), .A2(n37), .Z(DIFF[11]) );
  CKXOR2D1 U60 ( .A1(n11), .A2(n38), .Z(DIFF[10]) );
  CKXOR2D1 U61 ( .A1(n10), .A2(n39), .Z(DIFF[9]) );
  CKXOR2D1 U62 ( .A1(n9), .A2(n40), .Z(DIFF[8]) );
  CKXOR2D1 U63 ( .A1(n8), .A2(n41), .Z(DIFF[7]) );
  CKXOR2D1 U64 ( .A1(n7), .A2(n42), .Z(DIFF[6]) );
  CKXOR2D1 U65 ( .A1(n6), .A2(n43), .Z(DIFF[5]) );
  CKXOR2D1 U66 ( .A1(n5), .A2(n44), .Z(DIFF[4]) );
  CKXOR2D1 U67 ( .A1(n4), .A2(n45), .Z(DIFF[3]) );
  CKXOR2D1 U68 ( .A1(n3), .A2(n46), .Z(DIFF[2]) );
  CKND0 U70 ( .I(carry[23]), .ZN(DIFF[23]) );
  CKXOR2D0 U2 ( .A1(n2), .A2(B[21]), .Z(DIFF[21]) );
  AN2D0 U7 ( .A1(n25), .A2(n21), .Z(n2) );
  CKXOR2D0 U8 ( .A1(B[0]), .A2(B[1]), .Z(DIFF[1]) );
  NR2D0 U28 ( .A1(B[0]), .A2(B[1]), .ZN(n3) );
endmodule


module oadm_fixed_divmul_correction_chain_LEVEL3_DW01_sub_12 ( A, B, CI, DIFF, 
        CO );
  input [28:0] A;
  input [28:0] B;
  output [28:0] DIFF;
  input CI;
  output CO;
  wire   carry_2_, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50;

  AN2XD1 U1 ( .A1(n2), .A2(n31), .Z(n1) );
  AN2XD1 U2 ( .A1(n24), .A2(n32), .Z(n2) );
  INVD1 U3 ( .I(B[20]), .ZN(n32) );
  AN2XD1 U4 ( .A1(n1), .A2(n30), .Z(n3) );
  INVD1 U5 ( .I(B[21]), .ZN(n31) );
  AN2XD1 U6 ( .A1(n3), .A2(n28), .Z(n4) );
  AN2XD1 U7 ( .A1(n4), .A2(n27), .Z(n5) );
  AN2XD1 U8 ( .A1(n5), .A2(n29), .Z(n6) );
  AN2XD1 U9 ( .A1(n6), .A2(n29), .Z(n7) );
  AN2XD1 U10 ( .A1(n25), .A2(n49), .Z(n8) );
  AN2XD1 U11 ( .A1(n8), .A2(n48), .Z(n9) );
  AN2XD1 U12 ( .A1(n9), .A2(n47), .Z(n10) );
  AN2XD1 U13 ( .A1(n10), .A2(n46), .Z(n11) );
  AN2XD1 U14 ( .A1(n11), .A2(n45), .Z(n12) );
  AN2XD1 U15 ( .A1(n12), .A2(n44), .Z(n13) );
  AN2XD1 U16 ( .A1(n13), .A2(n43), .Z(n14) );
  AN2XD1 U17 ( .A1(n14), .A2(n42), .Z(n15) );
  AN2XD1 U18 ( .A1(n15), .A2(n41), .Z(n16) );
  AN2XD1 U19 ( .A1(n16), .A2(n40), .Z(n17) );
  AN2XD1 U20 ( .A1(n17), .A2(n39), .Z(n18) );
  AN2XD1 U21 ( .A1(n18), .A2(n38), .Z(n19) );
  AN2XD1 U22 ( .A1(n19), .A2(n37), .Z(n20) );
  AN2XD1 U23 ( .A1(n20), .A2(n36), .Z(n21) );
  AN2XD1 U24 ( .A1(n21), .A2(n35), .Z(n22) );
  AN2XD1 U25 ( .A1(n22), .A2(n34), .Z(n23) );
  AN2XD1 U26 ( .A1(n23), .A2(n33), .Z(n24) );
  INVD1 U27 ( .I(B[23]), .ZN(n28) );
  INVD1 U28 ( .I(B[22]), .ZN(n30) );
  INVD1 U29 ( .I(B[24]), .ZN(n27) );
  AN2XD1 U31 ( .A1(carry_2_), .A2(n50), .Z(n25) );
  INVD1 U32 ( .I(B[2]), .ZN(n50) );
  INVD1 U33 ( .I(B[3]), .ZN(n49) );
  INVD1 U34 ( .I(B[4]), .ZN(n48) );
  INVD1 U35 ( .I(B[5]), .ZN(n47) );
  INVD1 U36 ( .I(B[6]), .ZN(n46) );
  INVD1 U37 ( .I(B[7]), .ZN(n45) );
  INVD1 U38 ( .I(B[8]), .ZN(n44) );
  INVD1 U39 ( .I(B[9]), .ZN(n43) );
  INVD1 U40 ( .I(B[10]), .ZN(n42) );
  INVD1 U41 ( .I(B[11]), .ZN(n41) );
  INVD1 U42 ( .I(B[12]), .ZN(n40) );
  INVD1 U43 ( .I(B[13]), .ZN(n39) );
  INVD1 U44 ( .I(B[14]), .ZN(n38) );
  INVD1 U45 ( .I(B[15]), .ZN(n37) );
  INVD1 U46 ( .I(B[16]), .ZN(n36) );
  INVD1 U47 ( .I(B[17]), .ZN(n35) );
  INVD1 U48 ( .I(B[18]), .ZN(n34) );
  INVD1 U49 ( .I(B[19]), .ZN(n33) );
  CKXOR2D1 U52 ( .A1(n7), .A2(n29), .Z(DIFF[27]) );
  CKXOR2D1 U53 ( .A1(n6), .A2(n29), .Z(DIFF[26]) );
  CKXOR2D1 U54 ( .A1(n5), .A2(n29), .Z(DIFF[25]) );
  CKXOR2D1 U55 ( .A1(n4), .A2(n27), .Z(DIFF[24]) );
  CKXOR2D1 U56 ( .A1(n3), .A2(n28), .Z(DIFF[23]) );
  CKXOR2D1 U57 ( .A1(n1), .A2(n30), .Z(DIFF[22]) );
  CKXOR2D1 U58 ( .A1(n2), .A2(n31), .Z(DIFF[21]) );
  CKXOR2D1 U59 ( .A1(n24), .A2(n32), .Z(DIFF[20]) );
  CKXOR2D1 U60 ( .A1(n23), .A2(n33), .Z(DIFF[19]) );
  CKXOR2D1 U61 ( .A1(n22), .A2(n34), .Z(DIFF[18]) );
  CKXOR2D1 U62 ( .A1(n21), .A2(n35), .Z(DIFF[17]) );
  CKXOR2D1 U63 ( .A1(n20), .A2(n36), .Z(DIFF[16]) );
  CKXOR2D1 U64 ( .A1(n19), .A2(n37), .Z(DIFF[15]) );
  CKXOR2D1 U65 ( .A1(n18), .A2(n38), .Z(DIFF[14]) );
  CKXOR2D1 U66 ( .A1(n17), .A2(n39), .Z(DIFF[13]) );
  CKXOR2D1 U67 ( .A1(n16), .A2(n40), .Z(DIFF[12]) );
  CKXOR2D1 U68 ( .A1(n15), .A2(n41), .Z(DIFF[11]) );
  CKXOR2D1 U69 ( .A1(n14), .A2(n42), .Z(DIFF[10]) );
  CKXOR2D1 U70 ( .A1(n13), .A2(n43), .Z(DIFF[9]) );
  CKXOR2D1 U71 ( .A1(n12), .A2(n44), .Z(DIFF[8]) );
  CKXOR2D1 U72 ( .A1(n11), .A2(n45), .Z(DIFF[7]) );
  CKXOR2D1 U73 ( .A1(n10), .A2(n46), .Z(DIFF[6]) );
  CKXOR2D1 U74 ( .A1(n9), .A2(n47), .Z(DIFF[5]) );
  CKXOR2D1 U75 ( .A1(n8), .A2(n48), .Z(DIFF[4]) );
  CKXOR2D1 U76 ( .A1(n25), .A2(n49), .Z(DIFF[3]) );
  CKXOR2D1 U77 ( .A1(carry_2_), .A2(n50), .Z(DIFF[2]) );
  NR2D0 U78 ( .A1(B[1]), .A2(B[0]), .ZN(carry_2_) );
  CKND0 U30 ( .I(B[28]), .ZN(n29) );
  NR2D0 U50 ( .A1(B[28]), .A2(n7), .ZN(DIFF[28]) );
endmodule


module oadm_fixed_divmul_correction_chain_LEVEL3_DW01_sub_13 ( A, B, CI, DIFF, 
        CO );
  input [28:0] A;
  input [28:0] B;
  output [28:0] DIFF;
  input CI;
  output CO;
  wire   carry_2_, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50;

  AN2XD1 U1 ( .A1(n2), .A2(n29), .Z(n1) );
  AN2XD1 U2 ( .A1(n24), .A2(n30), .Z(n2) );
  AN2XD1 U3 ( .A1(n1), .A2(n28), .Z(n3) );
  AN2XD1 U4 ( .A1(n3), .A2(n27), .Z(n4) );
  AN2XD1 U5 ( .A1(n4), .A2(n49), .Z(n5) );
  AN2XD1 U6 ( .A1(n5), .A2(n50), .Z(n6) );
  AN2XD1 U7 ( .A1(n6), .A2(n50), .Z(n7) );
  INVD1 U8 ( .I(B[20]), .ZN(n30) );
  INVD1 U9 ( .I(B[21]), .ZN(n29) );
  AN2XD1 U10 ( .A1(n25), .A2(n47), .Z(n8) );
  AN2XD1 U11 ( .A1(n8), .A2(n46), .Z(n9) );
  AN2XD1 U12 ( .A1(n9), .A2(n45), .Z(n10) );
  AN2XD1 U13 ( .A1(n10), .A2(n44), .Z(n11) );
  AN2XD1 U14 ( .A1(n11), .A2(n43), .Z(n12) );
  AN2XD1 U15 ( .A1(n12), .A2(n42), .Z(n13) );
  AN2XD1 U16 ( .A1(n13), .A2(n41), .Z(n14) );
  AN2XD1 U17 ( .A1(n14), .A2(n40), .Z(n15) );
  AN2XD1 U18 ( .A1(n15), .A2(n39), .Z(n16) );
  AN2XD1 U19 ( .A1(n16), .A2(n38), .Z(n17) );
  AN2XD1 U20 ( .A1(n17), .A2(n37), .Z(n18) );
  AN2XD1 U21 ( .A1(n18), .A2(n36), .Z(n19) );
  AN2XD1 U22 ( .A1(n19), .A2(n35), .Z(n20) );
  AN2XD1 U23 ( .A1(n20), .A2(n34), .Z(n21) );
  AN2XD1 U24 ( .A1(n21), .A2(n33), .Z(n22) );
  AN2XD1 U25 ( .A1(n22), .A2(n32), .Z(n23) );
  AN2XD1 U26 ( .A1(n23), .A2(n31), .Z(n24) );
  INVD1 U27 ( .I(B[22]), .ZN(n28) );
  INVD1 U28 ( .I(B[23]), .ZN(n27) );
  INVD1 U29 ( .I(B[24]), .ZN(n49) );
  AN2XD1 U31 ( .A1(carry_2_), .A2(n48), .Z(n25) );
  INVD1 U32 ( .I(B[2]), .ZN(n48) );
  INVD1 U33 ( .I(B[3]), .ZN(n47) );
  INVD1 U34 ( .I(B[4]), .ZN(n46) );
  INVD1 U35 ( .I(B[5]), .ZN(n45) );
  INVD1 U36 ( .I(B[6]), .ZN(n44) );
  INVD1 U37 ( .I(B[7]), .ZN(n43) );
  INVD1 U38 ( .I(B[8]), .ZN(n42) );
  INVD1 U39 ( .I(B[9]), .ZN(n41) );
  INVD1 U40 ( .I(B[10]), .ZN(n40) );
  INVD1 U41 ( .I(B[11]), .ZN(n39) );
  INVD1 U42 ( .I(B[12]), .ZN(n38) );
  INVD1 U45 ( .I(B[13]), .ZN(n37) );
  INVD1 U46 ( .I(B[14]), .ZN(n36) );
  INVD1 U47 ( .I(B[15]), .ZN(n35) );
  INVD1 U48 ( .I(B[16]), .ZN(n34) );
  INVD1 U49 ( .I(B[17]), .ZN(n33) );
  INVD1 U50 ( .I(B[18]), .ZN(n32) );
  INVD1 U51 ( .I(B[19]), .ZN(n31) );
  CKXOR2D1 U52 ( .A1(n7), .A2(n50), .Z(DIFF[27]) );
  CKXOR2D1 U53 ( .A1(n6), .A2(n50), .Z(DIFF[26]) );
  CKXOR2D1 U54 ( .A1(n5), .A2(n50), .Z(DIFF[25]) );
  CKXOR2D1 U55 ( .A1(n4), .A2(n49), .Z(DIFF[24]) );
  CKXOR2D1 U56 ( .A1(n3), .A2(n27), .Z(DIFF[23]) );
  CKXOR2D1 U57 ( .A1(n1), .A2(n28), .Z(DIFF[22]) );
  CKXOR2D1 U58 ( .A1(n2), .A2(n29), .Z(DIFF[21]) );
  CKXOR2D1 U59 ( .A1(n24), .A2(n30), .Z(DIFF[20]) );
  CKXOR2D1 U60 ( .A1(n23), .A2(n31), .Z(DIFF[19]) );
  CKXOR2D1 U61 ( .A1(n22), .A2(n32), .Z(DIFF[18]) );
  CKXOR2D1 U62 ( .A1(n21), .A2(n33), .Z(DIFF[17]) );
  CKXOR2D1 U63 ( .A1(n20), .A2(n34), .Z(DIFF[16]) );
  CKXOR2D1 U64 ( .A1(n19), .A2(n35), .Z(DIFF[15]) );
  CKXOR2D1 U65 ( .A1(n18), .A2(n36), .Z(DIFF[14]) );
  CKXOR2D1 U66 ( .A1(n17), .A2(n37), .Z(DIFF[13]) );
  CKXOR2D1 U67 ( .A1(n16), .A2(n38), .Z(DIFF[12]) );
  CKXOR2D1 U68 ( .A1(n15), .A2(n39), .Z(DIFF[11]) );
  CKXOR2D1 U69 ( .A1(n14), .A2(n40), .Z(DIFF[10]) );
  CKXOR2D1 U70 ( .A1(n13), .A2(n41), .Z(DIFF[9]) );
  CKXOR2D1 U71 ( .A1(n12), .A2(n42), .Z(DIFF[8]) );
  CKXOR2D1 U72 ( .A1(n11), .A2(n43), .Z(DIFF[7]) );
  CKXOR2D1 U73 ( .A1(n10), .A2(n44), .Z(DIFF[6]) );
  CKXOR2D1 U74 ( .A1(n9), .A2(n45), .Z(DIFF[5]) );
  CKXOR2D1 U75 ( .A1(n8), .A2(n46), .Z(DIFF[4]) );
  CKXOR2D1 U76 ( .A1(n25), .A2(n47), .Z(DIFF[3]) );
  CKXOR2D1 U77 ( .A1(carry_2_), .A2(n48), .Z(DIFF[2]) );
  NR2D0 U78 ( .A1(B[1]), .A2(B[0]), .ZN(carry_2_) );
  CKND0 U30 ( .I(B[28]), .ZN(n50) );
  NR2D0 U43 ( .A1(B[28]), .A2(n7), .ZN(DIFF[28]) );
endmodule


module oadm_fixed_divmul_correction_chain_LEVEL3_DW01_sub_16 ( A, B, CI, DIFF, 
        CO );
  input [25:0] A;
  input [25:0] B;
  output [25:0] DIFF;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46;

  NR2D1 U1 ( .A1(n2), .A2(n28), .ZN(DIFF[23]) );
  AN2XD1 U2 ( .A1(n3), .A2(n27), .Z(n2) );
  AN2XD1 U3 ( .A1(n22), .A2(n26), .Z(n3) );
  INVD1 U4 ( .I(B[20]), .ZN(n26) );
  INVD1 U5 ( .I(B[21]), .ZN(n27) );
  INVD1 U6 ( .I(B[22]), .ZN(n28) );
  AN2XD1 U8 ( .A1(n4), .A2(n46), .Z(n5) );
  AN2XD1 U9 ( .A1(n5), .A2(n45), .Z(n6) );
  AN2XD1 U10 ( .A1(n6), .A2(n44), .Z(n7) );
  AN2XD1 U11 ( .A1(n7), .A2(n43), .Z(n8) );
  AN2XD1 U12 ( .A1(n8), .A2(n42), .Z(n9) );
  AN2XD1 U13 ( .A1(n9), .A2(n41), .Z(n10) );
  AN2XD1 U14 ( .A1(n10), .A2(n40), .Z(n11) );
  AN2XD1 U15 ( .A1(n11), .A2(n39), .Z(n12) );
  AN2XD1 U16 ( .A1(n12), .A2(n38), .Z(n13) );
  AN2XD1 U17 ( .A1(n13), .A2(n37), .Z(n14) );
  AN2XD1 U18 ( .A1(n14), .A2(n36), .Z(n15) );
  AN2XD1 U19 ( .A1(n15), .A2(n35), .Z(n16) );
  AN2XD1 U20 ( .A1(n16), .A2(n34), .Z(n17) );
  AN2XD1 U21 ( .A1(n17), .A2(n33), .Z(n18) );
  AN2XD1 U22 ( .A1(n18), .A2(n32), .Z(n19) );
  AN2XD1 U23 ( .A1(n19), .A2(n31), .Z(n20) );
  AN2XD1 U24 ( .A1(n20), .A2(n30), .Z(n21) );
  AN2XD1 U25 ( .A1(n21), .A2(n29), .Z(n22) );
  CKBD1 U26 ( .I(DIFF[23]), .Z(DIFF[24]) );
  CKBD1 U27 ( .I(DIFF[23]), .Z(DIFF[25]) );
  CKBD1 U30 ( .I(B[0]), .Z(DIFF[0]) );
  INVD1 U31 ( .I(B[2]), .ZN(n46) );
  INVD1 U32 ( .I(B[3]), .ZN(n45) );
  INVD1 U33 ( .I(B[4]), .ZN(n44) );
  INVD1 U34 ( .I(B[5]), .ZN(n43) );
  INVD1 U35 ( .I(B[6]), .ZN(n42) );
  INVD1 U36 ( .I(B[7]), .ZN(n41) );
  INVD1 U37 ( .I(B[8]), .ZN(n40) );
  INVD1 U38 ( .I(B[9]), .ZN(n39) );
  INVD1 U39 ( .I(B[10]), .ZN(n38) );
  INVD1 U40 ( .I(B[11]), .ZN(n37) );
  INVD1 U41 ( .I(B[12]), .ZN(n36) );
  INVD1 U42 ( .I(B[13]), .ZN(n35) );
  INVD1 U43 ( .I(B[14]), .ZN(n34) );
  INVD1 U44 ( .I(B[15]), .ZN(n33) );
  INVD1 U45 ( .I(B[16]), .ZN(n32) );
  INVD1 U46 ( .I(B[17]), .ZN(n31) );
  INVD1 U47 ( .I(B[18]), .ZN(n30) );
  INVD1 U48 ( .I(B[19]), .ZN(n29) );
  XNR2D1 U49 ( .A1(n2), .A2(n28), .ZN(DIFF[22]) );
  CKXOR2D1 U50 ( .A1(n3), .A2(n27), .Z(DIFF[21]) );
  CKXOR2D1 U51 ( .A1(n22), .A2(n26), .Z(DIFF[20]) );
  CKXOR2D1 U52 ( .A1(n21), .A2(n29), .Z(DIFF[19]) );
  CKXOR2D1 U53 ( .A1(n20), .A2(n30), .Z(DIFF[18]) );
  CKXOR2D1 U54 ( .A1(n19), .A2(n31), .Z(DIFF[17]) );
  CKXOR2D1 U55 ( .A1(n18), .A2(n32), .Z(DIFF[16]) );
  CKXOR2D1 U56 ( .A1(n17), .A2(n33), .Z(DIFF[15]) );
  CKXOR2D1 U57 ( .A1(n16), .A2(n34), .Z(DIFF[14]) );
  CKXOR2D1 U58 ( .A1(n15), .A2(n35), .Z(DIFF[13]) );
  CKXOR2D1 U59 ( .A1(n14), .A2(n36), .Z(DIFF[12]) );
  CKXOR2D1 U60 ( .A1(n13), .A2(n37), .Z(DIFF[11]) );
  CKXOR2D1 U61 ( .A1(n12), .A2(n38), .Z(DIFF[10]) );
  CKXOR2D1 U62 ( .A1(n11), .A2(n39), .Z(DIFF[9]) );
  CKXOR2D1 U63 ( .A1(n10), .A2(n40), .Z(DIFF[8]) );
  CKXOR2D1 U64 ( .A1(n9), .A2(n41), .Z(DIFF[7]) );
  CKXOR2D1 U65 ( .A1(n8), .A2(n42), .Z(DIFF[6]) );
  CKXOR2D1 U66 ( .A1(n7), .A2(n43), .Z(DIFF[5]) );
  CKXOR2D1 U67 ( .A1(n6), .A2(n44), .Z(DIFF[4]) );
  CKXOR2D1 U68 ( .A1(n5), .A2(n45), .Z(DIFF[3]) );
  CKXOR2D1 U69 ( .A1(n4), .A2(n46), .Z(DIFF[2]) );
  CKXOR2D0 U7 ( .A1(B[0]), .A2(B[1]), .Z(DIFF[1]) );
  NR2D0 U28 ( .A1(B[0]), .A2(B[1]), .ZN(n4) );
endmodule


module oadm_fixed_divmul_correction_chain_LEVEL3_DW_mult_uns_0 ( a, b, product
 );
  input [28:0] a;
  input [6:0] b;
  output [35:0] product;
  wire   n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n59, n60, n61,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n173,
         n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n201, n202, n203, n204, n205, n206, n207,
         n208, n209, n210, n211, n212, n213, n214, n215, n216, n217, n218,
         n219, n220, n221, n222, n223, n224, n225, n226, n227, n228, n231,
         n232, n233, n234, n235, n236, n237, n238, n239, n240, n241, n242,
         n243, n244, n245, n246, n247, n248, n249, n250, n251, n252, n253,
         n254, n255, n256, n257, n466, n468, n469, n470, n471, n472, n473,
         n474, n475, n476, n477, n478, n479, n480, n481, n482, n483, n484,
         n485, n486, n487, n488, n489, n490, n491, n493, n494, n495, n496,
         n497, n498, n499, n500, n501, n502, n503, n504, n505, n506, n507,
         n508, n509, n510, n511, n512, n513, n514, n515, n517, n518, n519,
         n520, n521, n522, n523, n524, n525, n526, n527, n528, n529, n530,
         n531, n532, n533, n534, n535, n536, n537, n538, n539, n540, n541,
         n542, n543, n544, n545, n546, n547, n548, n549, n550, n551, n552,
         n553, n554, n555, n556, n557, n558, n559, n560, n561, n562, n563,
         n564, n565, n566, n567, n568, n569, n570, n571, n572, n573, n574,
         n575, n576, n577, n578, n579, n580, n581, n582, n583, n584, n585,
         n586, n587, n588, n589, n590, n591, n592, n593, n594, n595, n596,
         n597, n598, n599, n600, n601, n602, n603, n604, n605, n606;

  FA1D0 U25 ( .A(n65), .B(n61), .CI(n25), .CO(n24), .S(product[30]) );
  FA1D0 U26 ( .A(n68), .B(n66), .CI(n26), .CO(n25), .S(product[29]) );
  FA1D0 U27 ( .A(n71), .B(n69), .CI(n27), .CO(n26), .S(product[28]) );
  FA1D0 U28 ( .A(n74), .B(n72), .CI(n28), .CO(n27), .S(product[27]) );
  FA1D0 U29 ( .A(n77), .B(n75), .CI(n29), .CO(n28), .S(product[26]) );
  FA1D0 U30 ( .A(n80), .B(n78), .CI(n30), .CO(n29), .S(product[25]) );
  FA1D0 U31 ( .A(n83), .B(n81), .CI(n31), .CO(n30), .S(product[24]) );
  FA1D0 U32 ( .A(n86), .B(n84), .CI(n32), .CO(n31), .S(product[23]) );
  FA1D0 U33 ( .A(n89), .B(n87), .CI(n33), .CO(n32), .S(product[22]) );
  FA1D0 U34 ( .A(n92), .B(n90), .CI(n34), .CO(n33), .S(product[21]) );
  FA1D0 U35 ( .A(n95), .B(n93), .CI(n35), .CO(n34), .S(product[20]) );
  FA1D0 U36 ( .A(n98), .B(n96), .CI(n36), .CO(n35), .S(product[19]) );
  FA1D0 U37 ( .A(n101), .B(n99), .CI(n37), .CO(n36), .S(product[18]) );
  FA1D0 U38 ( .A(n104), .B(n102), .CI(n38), .CO(n37), .S(product[17]) );
  FA1D0 U39 ( .A(n107), .B(n105), .CI(n39), .CO(n38), .S(product[16]) );
  FA1D0 U40 ( .A(n110), .B(n108), .CI(n40), .CO(n39), .S(product[15]) );
  FA1D0 U41 ( .A(n113), .B(n111), .CI(n41), .CO(n40), .S(product[14]) );
  FA1D0 U42 ( .A(n116), .B(n114), .CI(n42), .CO(n41), .S(product[13]) );
  FA1D0 U43 ( .A(n119), .B(n117), .CI(n43), .CO(n42), .S(product[12]) );
  FA1D0 U44 ( .A(n122), .B(n120), .CI(n44), .CO(n43), .S(product[11]) );
  FA1D0 U45 ( .A(n125), .B(n123), .CI(n45), .CO(n44), .S(product[10]) );
  FA1D0 U46 ( .A(n128), .B(n126), .CI(n46), .CO(n45), .S(product[9]) );
  FA1D0 U47 ( .A(n131), .B(n129), .CI(n47), .CO(n46), .S(product[8]) );
  FA1D0 U48 ( .A(n134), .B(n132), .CI(n48), .CO(n47), .S(product[7]) );
  CMPE42D1 U60 ( .A(n173), .B(n201), .C(n500), .CIX(n64), .D(n63), .CO(n60), 
        .COX(n59), .S(n61) );
  CMPE42D1 U62 ( .A(n231), .B(n148), .C(n174), .CIX(n67), .D(n202), .CO(n65), 
        .COX(n64), .S(n66) );
  CMPE42D1 U63 ( .A(n232), .B(n149), .C(n175), .CIX(n70), .D(n203), .CO(n68), 
        .COX(n67), .S(n69) );
  CMPE42D1 U64 ( .A(n233), .B(n150), .C(n176), .CIX(n73), .D(n204), .CO(n71), 
        .COX(n70), .S(n72) );
  CMPE42D1 U65 ( .A(n234), .B(n151), .C(n177), .CIX(n76), .D(n205), .CO(n74), 
        .COX(n73), .S(n75) );
  CMPE42D1 U66 ( .A(n235), .B(n152), .C(n178), .CIX(n79), .D(n206), .CO(n77), 
        .COX(n76), .S(n78) );
  CMPE42D1 U67 ( .A(n236), .B(n153), .C(n179), .CIX(n82), .D(n207), .CO(n80), 
        .COX(n79), .S(n81) );
  CMPE42D1 U68 ( .A(n237), .B(n154), .C(n180), .CIX(n85), .D(n208), .CO(n83), 
        .COX(n82), .S(n84) );
  CMPE42D1 U69 ( .A(n238), .B(n155), .C(n181), .CIX(n88), .D(n209), .CO(n86), 
        .COX(n85), .S(n87) );
  CMPE42D1 U70 ( .A(n239), .B(n156), .C(n182), .CIX(n91), .D(n210), .CO(n89), 
        .COX(n88), .S(n90) );
  CMPE42D1 U71 ( .A(n240), .B(n157), .C(n183), .CIX(n94), .D(n211), .CO(n92), 
        .COX(n91), .S(n93) );
  CMPE42D1 U72 ( .A(n241), .B(n158), .C(n184), .CIX(n97), .D(n212), .CO(n95), 
        .COX(n94), .S(n96) );
  CMPE42D1 U73 ( .A(n242), .B(n159), .C(n185), .CIX(n100), .D(n213), .CO(n98), 
        .COX(n97), .S(n99) );
  CMPE42D1 U74 ( .A(n243), .B(n160), .C(n186), .CIX(n103), .D(n214), .CO(n101), 
        .COX(n100), .S(n102) );
  CMPE42D1 U75 ( .A(n244), .B(n161), .C(n187), .CIX(n106), .D(n215), .CO(n104), 
        .COX(n103), .S(n105) );
  CMPE42D1 U76 ( .A(n245), .B(n162), .C(n188), .CIX(n109), .D(n216), .CO(n107), 
        .COX(n106), .S(n108) );
  CMPE42D1 U77 ( .A(n246), .B(n163), .C(n189), .CIX(n112), .D(n217), .CO(n110), 
        .COX(n109), .S(n111) );
  CMPE42D1 U78 ( .A(n247), .B(n164), .C(n190), .CIX(n115), .D(n218), .CO(n113), 
        .COX(n112), .S(n114) );
  CMPE42D1 U79 ( .A(n248), .B(n165), .C(n191), .CIX(n118), .D(n219), .CO(n116), 
        .COX(n115), .S(n117) );
  CMPE42D1 U80 ( .A(n249), .B(n166), .C(n192), .CIX(n121), .D(n220), .CO(n119), 
        .COX(n118), .S(n120) );
  CMPE42D1 U81 ( .A(n250), .B(n167), .C(n193), .CIX(n124), .D(n221), .CO(n122), 
        .COX(n121), .S(n123) );
  CMPE42D1 U82 ( .A(n251), .B(n168), .C(n194), .CIX(n127), .D(n222), .CO(n125), 
        .COX(n124), .S(n126) );
  CMPE42D1 U83 ( .A(n252), .B(n169), .C(n195), .CIX(n130), .D(n223), .CO(n128), 
        .COX(n127), .S(n129) );
  CMPE42D1 U84 ( .A(n253), .B(n170), .C(n196), .CIX(n133), .D(n224), .CO(n131), 
        .COX(n130), .S(n132) );
  CMPE42D1 U85 ( .A(n254), .B(n171), .C(n197), .CIX(n138), .D(n225), .CO(n134), 
        .COX(n133), .S(n135) );
  FA1D0 U86 ( .A(n226), .B(n255), .CI(n139), .CO(n136), .S(n137) );
  HA1D0 U87 ( .A(n144), .B(n198), .CO(n138), .S(n139) );
  FA1D0 U88 ( .A(n256), .B(n199), .CI(n227), .CO(n140), .S(n141) );
  HA1D0 U89 ( .A(n228), .B(n257), .CO(n142), .S(n143) );
  ND2D1 U340 ( .A1(n510), .A2(n577), .ZN(n511) );
  CKXOR2D1 U341 ( .A1(n497), .A2(b[6]), .Z(n466) );
  INVD1 U342 ( .I(a[20]), .ZN(n475) );
  INVD1 U343 ( .I(a[21]), .ZN(n474) );
  INVD1 U344 ( .I(a[22]), .ZN(n473) );
  INVD1 U345 ( .I(a[23]), .ZN(n472) );
  INVD1 U346 ( .I(a[24]), .ZN(n471) );
  INVD1 U347 ( .I(a[16]), .ZN(n479) );
  INVD1 U348 ( .I(a[18]), .ZN(n477) );
  INVD1 U349 ( .I(a[17]), .ZN(n478) );
  INVD1 U350 ( .I(a[19]), .ZN(n476) );
  INVD1 U351 ( .I(a[25]), .ZN(n470) );
  INVD1 U352 ( .I(a[26]), .ZN(n469) );
  INVD1 U353 ( .I(a[27]), .ZN(n468) );
  INVD1 U354 ( .I(a[4]), .ZN(n491) );
  INVD1 U355 ( .I(a[3]), .ZN(n493) );
  INVD1 U357 ( .I(a[6]), .ZN(n489) );
  INVD1 U358 ( .I(a[5]), .ZN(n490) );
  INVD1 U359 ( .I(a[7]), .ZN(n488) );
  INVD1 U360 ( .I(a[8]), .ZN(n487) );
  INVD1 U361 ( .I(a[9]), .ZN(n486) );
  INVD1 U362 ( .I(a[10]), .ZN(n485) );
  INVD1 U363 ( .I(a[11]), .ZN(n484) );
  INVD1 U364 ( .I(a[12]), .ZN(n483) );
  INVD1 U365 ( .I(a[13]), .ZN(n482) );
  INVD1 U366 ( .I(a[14]), .ZN(n481) );
  INVD1 U367 ( .I(a[15]), .ZN(n480) );
  INVD1 U368 ( .I(b[3]), .ZN(n498) );
  INVD1 U369 ( .I(b[1]), .ZN(n500) );
  INVD1 U371 ( .I(a[2]), .ZN(n494) );
  INVD1 U373 ( .I(b[0]), .ZN(n499) );
  INVD1 U374 ( .I(a[1]), .ZN(n495) );
  INVD1 U375 ( .I(a[0]), .ZN(n496) );
  XOR4D0 U376 ( .A1(n501), .A2(n502), .A3(n503), .A4(n63), .Z(product[31]) );
  XOR4D0 U377 ( .A1(n60), .A2(n59), .A3(n504), .A4(n24), .Z(n503) );
  OAI22D0 U378 ( .A1(n505), .A2(n506), .B1(n507), .B2(n508), .ZN(n504) );
  XNR2D0 U379 ( .A1(n497), .A2(n468), .ZN(n508) );
  OA22D0 U380 ( .A1(n470), .A2(n466), .B1(n509), .B2(n471), .Z(n502) );
  OA22D0 U381 ( .A1(n498), .A2(n510), .B1(n511), .B2(n512), .Z(n501) );
  OA22D0 U382 ( .A1(n466), .A2(n471), .B1(n509), .B2(n472), .Z(n63) );
  AO222D0 U383 ( .A1(n513), .A2(n135), .B1(n513), .B2(n136), .C1(n136), .C2(
        n135), .Z(n48) );
  AO222D0 U384 ( .A1(n514), .A2(n137), .B1(n514), .B2(n140), .C1(n140), .C2(
        n137), .Z(n513) );
  AO222D0 U385 ( .A1(n515), .A2(n141), .B1(n515), .B2(n142), .C1(n142), .C2(
        n141), .Z(n514) );
  OA32D0 U387 ( .A1(n498), .A2(a[0]), .A3(n510), .B1(n498), .B2(n511), .Z(n517) );
  NR3D0 U389 ( .A1(n500), .A2(a[1]), .A3(n520), .ZN(n519) );
  NR2D0 U390 ( .A1(n520), .A2(n510), .ZN(n518) );
  OA22D0 U391 ( .A1(a[1]), .A2(n521), .B1(n522), .B2(n499), .Z(n520) );
  OAI22D0 U392 ( .A1(n522), .A2(n521), .B1(n523), .B2(n499), .ZN(n257) );
  XNR2D0 U393 ( .A1(n500), .A2(n494), .ZN(n522) );
  OAI22D0 U394 ( .A1(n523), .A2(n521), .B1(n524), .B2(n499), .ZN(n256) );
  XNR2D0 U395 ( .A1(n500), .A2(n493), .ZN(n523) );
  OAI22D0 U396 ( .A1(n524), .A2(n521), .B1(n525), .B2(n499), .ZN(n255) );
  XNR2D0 U397 ( .A1(n500), .A2(n491), .ZN(n524) );
  OAI22D0 U398 ( .A1(n525), .A2(n521), .B1(n526), .B2(n499), .ZN(n254) );
  XNR2D0 U399 ( .A1(n500), .A2(n490), .ZN(n525) );
  OAI22D0 U400 ( .A1(n526), .A2(n521), .B1(n527), .B2(n499), .ZN(n253) );
  XNR2D0 U401 ( .A1(n500), .A2(n489), .ZN(n526) );
  OAI22D0 U402 ( .A1(n527), .A2(n521), .B1(n528), .B2(n499), .ZN(n252) );
  XNR2D0 U403 ( .A1(n500), .A2(n488), .ZN(n527) );
  OAI22D0 U404 ( .A1(n528), .A2(n521), .B1(n529), .B2(n499), .ZN(n251) );
  XNR2D0 U405 ( .A1(n500), .A2(n487), .ZN(n528) );
  OAI22D0 U406 ( .A1(n529), .A2(n521), .B1(n530), .B2(n499), .ZN(n250) );
  XNR2D0 U407 ( .A1(n500), .A2(n486), .ZN(n529) );
  OAI22D0 U408 ( .A1(n530), .A2(n521), .B1(n531), .B2(n499), .ZN(n249) );
  XNR2D0 U409 ( .A1(n500), .A2(n485), .ZN(n530) );
  OAI22D0 U410 ( .A1(n531), .A2(n521), .B1(n532), .B2(n499), .ZN(n248) );
  XNR2D0 U411 ( .A1(n500), .A2(n484), .ZN(n531) );
  OAI22D0 U412 ( .A1(n532), .A2(n521), .B1(n533), .B2(n499), .ZN(n247) );
  XNR2D0 U413 ( .A1(n500), .A2(n483), .ZN(n532) );
  OAI22D0 U414 ( .A1(n533), .A2(n521), .B1(n534), .B2(n499), .ZN(n246) );
  XNR2D0 U415 ( .A1(n500), .A2(n482), .ZN(n533) );
  OAI22D0 U416 ( .A1(n534), .A2(n521), .B1(n535), .B2(n499), .ZN(n245) );
  XNR2D0 U417 ( .A1(n500), .A2(n481), .ZN(n534) );
  OAI22D0 U418 ( .A1(n535), .A2(n521), .B1(n536), .B2(n499), .ZN(n244) );
  XNR2D0 U419 ( .A1(n500), .A2(n480), .ZN(n535) );
  OAI22D0 U420 ( .A1(n536), .A2(n521), .B1(n537), .B2(n499), .ZN(n243) );
  XNR2D0 U421 ( .A1(n500), .A2(n479), .ZN(n536) );
  OAI22D0 U422 ( .A1(n537), .A2(n521), .B1(n538), .B2(n499), .ZN(n242) );
  XNR2D0 U423 ( .A1(n500), .A2(n478), .ZN(n537) );
  OAI22D0 U424 ( .A1(n538), .A2(n521), .B1(n539), .B2(n499), .ZN(n241) );
  XNR2D0 U425 ( .A1(n500), .A2(n477), .ZN(n538) );
  OAI22D0 U426 ( .A1(n539), .A2(n521), .B1(n540), .B2(n499), .ZN(n240) );
  XNR2D0 U427 ( .A1(n500), .A2(n476), .ZN(n539) );
  OAI22D0 U428 ( .A1(n540), .A2(n521), .B1(n541), .B2(n499), .ZN(n239) );
  XNR2D0 U429 ( .A1(n500), .A2(n475), .ZN(n540) );
  OAI22D0 U430 ( .A1(n541), .A2(n521), .B1(n542), .B2(n499), .ZN(n238) );
  XNR2D0 U431 ( .A1(n500), .A2(n474), .ZN(n541) );
  OAI22D0 U432 ( .A1(n542), .A2(n521), .B1(n543), .B2(n499), .ZN(n237) );
  XNR2D0 U433 ( .A1(n500), .A2(n473), .ZN(n542) );
  OAI22D0 U434 ( .A1(n543), .A2(n521), .B1(n544), .B2(n499), .ZN(n236) );
  XNR2D0 U435 ( .A1(n500), .A2(n472), .ZN(n543) );
  OAI22D0 U436 ( .A1(n544), .A2(n521), .B1(n545), .B2(n499), .ZN(n235) );
  XNR2D0 U437 ( .A1(n500), .A2(n471), .ZN(n544) );
  OAI22D0 U438 ( .A1(n545), .A2(n521), .B1(n546), .B2(n499), .ZN(n234) );
  XNR2D0 U439 ( .A1(n500), .A2(n470), .ZN(n545) );
  OAI22D0 U440 ( .A1(n546), .A2(n521), .B1(n547), .B2(n499), .ZN(n233) );
  XNR2D0 U441 ( .A1(n500), .A2(n469), .ZN(n546) );
  OAI22D0 U442 ( .A1(n547), .A2(n521), .B1(n548), .B2(n499), .ZN(n232) );
  XNR2D0 U443 ( .A1(n500), .A2(n468), .ZN(n547) );
  OAI22D0 U444 ( .A1(n548), .A2(n521), .B1(n500), .B2(n499), .ZN(n231) );
  CKND2D0 U445 ( .A1(b[1]), .A2(n499), .ZN(n521) );
  XNR2D0 U446 ( .A1(b[1]), .A2(a[28]), .ZN(n548) );
  OAI22D0 U447 ( .A1(n549), .A2(n511), .B1(n510), .B2(n550), .ZN(n228) );
  XNR2D0 U448 ( .A1(n498), .A2(n496), .ZN(n549) );
  OAI22D0 U449 ( .A1(n550), .A2(n511), .B1(n510), .B2(n551), .ZN(n227) );
  XNR2D0 U450 ( .A1(n498), .A2(n495), .ZN(n550) );
  OAI22D0 U451 ( .A1(n551), .A2(n511), .B1(n510), .B2(n552), .ZN(n226) );
  XNR2D0 U452 ( .A1(n498), .A2(n494), .ZN(n551) );
  OAI22D0 U453 ( .A1(n552), .A2(n511), .B1(n510), .B2(n553), .ZN(n225) );
  XNR2D0 U454 ( .A1(n498), .A2(n493), .ZN(n552) );
  OAI22D0 U455 ( .A1(n553), .A2(n511), .B1(n510), .B2(n554), .ZN(n224) );
  XNR2D0 U456 ( .A1(n498), .A2(n491), .ZN(n553) );
  OAI22D0 U457 ( .A1(n554), .A2(n511), .B1(n510), .B2(n555), .ZN(n223) );
  XNR2D0 U458 ( .A1(n498), .A2(n490), .ZN(n554) );
  OAI22D0 U459 ( .A1(n555), .A2(n511), .B1(n510), .B2(n556), .ZN(n222) );
  XNR2D0 U460 ( .A1(n498), .A2(n489), .ZN(n555) );
  OAI22D0 U461 ( .A1(n556), .A2(n511), .B1(n510), .B2(n557), .ZN(n221) );
  XNR2D0 U462 ( .A1(n498), .A2(n488), .ZN(n556) );
  OAI22D0 U463 ( .A1(n557), .A2(n511), .B1(n510), .B2(n558), .ZN(n220) );
  XNR2D0 U464 ( .A1(n498), .A2(n487), .ZN(n557) );
  OAI22D0 U465 ( .A1(n558), .A2(n511), .B1(n510), .B2(n559), .ZN(n219) );
  XNR2D0 U466 ( .A1(n498), .A2(n486), .ZN(n558) );
  OAI22D0 U467 ( .A1(n559), .A2(n511), .B1(n510), .B2(n560), .ZN(n218) );
  XNR2D0 U468 ( .A1(n498), .A2(n485), .ZN(n559) );
  OAI22D0 U469 ( .A1(n560), .A2(n511), .B1(n510), .B2(n561), .ZN(n217) );
  XNR2D0 U470 ( .A1(n498), .A2(n484), .ZN(n560) );
  OAI22D0 U471 ( .A1(n561), .A2(n511), .B1(n510), .B2(n562), .ZN(n216) );
  XNR2D0 U472 ( .A1(n498), .A2(n483), .ZN(n561) );
  OAI22D0 U473 ( .A1(n562), .A2(n511), .B1(n510), .B2(n563), .ZN(n215) );
  XNR2D0 U474 ( .A1(n498), .A2(n482), .ZN(n562) );
  OAI22D0 U475 ( .A1(n563), .A2(n511), .B1(n510), .B2(n564), .ZN(n214) );
  XNR2D0 U476 ( .A1(n498), .A2(n481), .ZN(n563) );
  OAI22D0 U477 ( .A1(n564), .A2(n511), .B1(n510), .B2(n565), .ZN(n213) );
  XNR2D0 U478 ( .A1(n498), .A2(n480), .ZN(n564) );
  OAI22D0 U479 ( .A1(n565), .A2(n511), .B1(n510), .B2(n566), .ZN(n212) );
  XNR2D0 U480 ( .A1(n498), .A2(n479), .ZN(n565) );
  OAI22D0 U481 ( .A1(n566), .A2(n511), .B1(n510), .B2(n567), .ZN(n211) );
  XNR2D0 U482 ( .A1(n498), .A2(n478), .ZN(n566) );
  OAI22D0 U483 ( .A1(n567), .A2(n511), .B1(n510), .B2(n568), .ZN(n210) );
  XNR2D0 U484 ( .A1(n498), .A2(n477), .ZN(n567) );
  OAI22D0 U485 ( .A1(n568), .A2(n511), .B1(n510), .B2(n569), .ZN(n209) );
  XNR2D0 U486 ( .A1(n498), .A2(n476), .ZN(n568) );
  OAI22D0 U487 ( .A1(n569), .A2(n511), .B1(n510), .B2(n570), .ZN(n208) );
  XNR2D0 U488 ( .A1(n498), .A2(n475), .ZN(n569) );
  OAI22D0 U489 ( .A1(n570), .A2(n511), .B1(n510), .B2(n571), .ZN(n207) );
  XNR2D0 U490 ( .A1(n498), .A2(n474), .ZN(n570) );
  OAI22D0 U491 ( .A1(n571), .A2(n511), .B1(n510), .B2(n572), .ZN(n206) );
  XNR2D0 U492 ( .A1(n498), .A2(n473), .ZN(n571) );
  OAI22D0 U493 ( .A1(n572), .A2(n511), .B1(n510), .B2(n573), .ZN(n205) );
  XNR2D0 U494 ( .A1(n498), .A2(n472), .ZN(n572) );
  OAI22D0 U495 ( .A1(n573), .A2(n511), .B1(n510), .B2(n574), .ZN(n204) );
  XNR2D0 U496 ( .A1(n498), .A2(n471), .ZN(n573) );
  OAI22D0 U497 ( .A1(n574), .A2(n511), .B1(n510), .B2(n575), .ZN(n203) );
  XNR2D0 U498 ( .A1(n498), .A2(n470), .ZN(n574) );
  OAI22D0 U499 ( .A1(n575), .A2(n511), .B1(n510), .B2(n576), .ZN(n202) );
  XNR2D0 U500 ( .A1(n498), .A2(n469), .ZN(n575) );
  OAI22D0 U501 ( .A1(n576), .A2(n511), .B1(n510), .B2(n512), .ZN(n201) );
  XNR2D0 U502 ( .A1(b[3]), .A2(a[28]), .ZN(n512) );
  XNR2D0 U503 ( .A1(n498), .A2(b[2]), .ZN(n577) );
  XNR2D0 U504 ( .A1(b[1]), .A2(b[2]), .ZN(n510) );
  XNR2D0 U505 ( .A1(n498), .A2(n468), .ZN(n576) );
  NR2D0 U506 ( .A1(n507), .A2(n496), .ZN(n199) );
  OAI22D0 U507 ( .A1(n578), .A2(n506), .B1(n507), .B2(n579), .ZN(n198) );
  XNR2D0 U508 ( .A1(n497), .A2(n496), .ZN(n578) );
  OAI22D0 U509 ( .A1(n579), .A2(n506), .B1(n507), .B2(n580), .ZN(n197) );
  XNR2D0 U510 ( .A1(n497), .A2(n495), .ZN(n579) );
  OAI22D0 U511 ( .A1(n580), .A2(n506), .B1(n507), .B2(n581), .ZN(n196) );
  XNR2D0 U512 ( .A1(n497), .A2(n494), .ZN(n580) );
  OAI22D0 U513 ( .A1(n581), .A2(n506), .B1(n507), .B2(n582), .ZN(n195) );
  XNR2D0 U514 ( .A1(n497), .A2(n493), .ZN(n581) );
  OAI22D0 U515 ( .A1(n582), .A2(n506), .B1(n507), .B2(n583), .ZN(n194) );
  XNR2D0 U516 ( .A1(n497), .A2(n491), .ZN(n582) );
  OAI22D0 U517 ( .A1(n583), .A2(n506), .B1(n507), .B2(n584), .ZN(n193) );
  XNR2D0 U518 ( .A1(n497), .A2(n490), .ZN(n583) );
  OAI22D0 U519 ( .A1(n584), .A2(n506), .B1(n507), .B2(n585), .ZN(n192) );
  XNR2D0 U520 ( .A1(n497), .A2(n489), .ZN(n584) );
  OAI22D0 U521 ( .A1(n585), .A2(n506), .B1(n507), .B2(n586), .ZN(n191) );
  XNR2D0 U522 ( .A1(n497), .A2(n488), .ZN(n585) );
  OAI22D0 U523 ( .A1(n586), .A2(n506), .B1(n507), .B2(n587), .ZN(n190) );
  XNR2D0 U524 ( .A1(n497), .A2(n487), .ZN(n586) );
  OAI22D0 U525 ( .A1(n587), .A2(n506), .B1(n507), .B2(n588), .ZN(n189) );
  XNR2D0 U526 ( .A1(n497), .A2(n486), .ZN(n587) );
  OAI22D0 U527 ( .A1(n588), .A2(n506), .B1(n507), .B2(n589), .ZN(n188) );
  XNR2D0 U528 ( .A1(n497), .A2(n485), .ZN(n588) );
  OAI22D0 U529 ( .A1(n589), .A2(n506), .B1(n507), .B2(n590), .ZN(n187) );
  XNR2D0 U530 ( .A1(n497), .A2(n484), .ZN(n589) );
  OAI22D0 U531 ( .A1(n590), .A2(n506), .B1(n507), .B2(n591), .ZN(n186) );
  XNR2D0 U532 ( .A1(n497), .A2(n483), .ZN(n590) );
  OAI22D0 U533 ( .A1(n591), .A2(n506), .B1(n507), .B2(n592), .ZN(n185) );
  XNR2D0 U534 ( .A1(n497), .A2(n482), .ZN(n591) );
  OAI22D0 U535 ( .A1(n592), .A2(n506), .B1(n507), .B2(n593), .ZN(n184) );
  XNR2D0 U536 ( .A1(n497), .A2(n481), .ZN(n592) );
  OAI22D0 U537 ( .A1(n593), .A2(n506), .B1(n507), .B2(n594), .ZN(n183) );
  XNR2D0 U538 ( .A1(n497), .A2(n480), .ZN(n593) );
  OAI22D0 U539 ( .A1(n594), .A2(n506), .B1(n507), .B2(n595), .ZN(n182) );
  XNR2D0 U540 ( .A1(n497), .A2(n479), .ZN(n594) );
  OAI22D0 U541 ( .A1(n595), .A2(n506), .B1(n507), .B2(n596), .ZN(n181) );
  XNR2D0 U542 ( .A1(n497), .A2(n478), .ZN(n595) );
  OAI22D0 U543 ( .A1(n596), .A2(n506), .B1(n507), .B2(n597), .ZN(n180) );
  XNR2D0 U544 ( .A1(n497), .A2(n477), .ZN(n596) );
  OAI22D0 U545 ( .A1(n597), .A2(n506), .B1(n507), .B2(n598), .ZN(n179) );
  XNR2D0 U546 ( .A1(n497), .A2(n476), .ZN(n597) );
  OAI22D0 U547 ( .A1(n598), .A2(n506), .B1(n507), .B2(n599), .ZN(n178) );
  XNR2D0 U548 ( .A1(n497), .A2(n475), .ZN(n598) );
  OAI22D0 U549 ( .A1(n599), .A2(n506), .B1(n507), .B2(n600), .ZN(n177) );
  XNR2D0 U550 ( .A1(n497), .A2(n474), .ZN(n599) );
  OAI22D0 U551 ( .A1(n600), .A2(n506), .B1(n507), .B2(n601), .ZN(n176) );
  XNR2D0 U552 ( .A1(n497), .A2(n473), .ZN(n600) );
  OAI22D0 U553 ( .A1(n601), .A2(n506), .B1(n507), .B2(n602), .ZN(n175) );
  XNR2D0 U554 ( .A1(n497), .A2(n472), .ZN(n601) );
  OAI22D0 U555 ( .A1(n602), .A2(n506), .B1(n507), .B2(n603), .ZN(n174) );
  XNR2D0 U556 ( .A1(n497), .A2(n471), .ZN(n602) );
  OAI22D0 U557 ( .A1(n603), .A2(n506), .B1(n507), .B2(n505), .ZN(n173) );
  XNR2D0 U558 ( .A1(n497), .A2(n469), .ZN(n505) );
  XNR2D0 U559 ( .A1(n497), .A2(n470), .ZN(n603) );
  NR2D0 U560 ( .A1(n466), .A2(n496), .ZN(n171) );
  OAI22D0 U561 ( .A1(n509), .A2(n496), .B1(n466), .B2(n495), .ZN(n170) );
  OAI22D0 U562 ( .A1(n509), .A2(n495), .B1(n466), .B2(n494), .ZN(n169) );
  OAI22D0 U563 ( .A1(n509), .A2(n494), .B1(n466), .B2(n493), .ZN(n168) );
  OAI22D0 U564 ( .A1(n509), .A2(n493), .B1(n466), .B2(n491), .ZN(n167) );
  OAI22D0 U565 ( .A1(n509), .A2(n491), .B1(n466), .B2(n490), .ZN(n166) );
  OAI22D0 U566 ( .A1(n509), .A2(n490), .B1(n466), .B2(n489), .ZN(n165) );
  OAI22D0 U567 ( .A1(n509), .A2(n489), .B1(n466), .B2(n488), .ZN(n164) );
  OAI22D0 U568 ( .A1(n509), .A2(n488), .B1(n466), .B2(n487), .ZN(n163) );
  OAI22D0 U569 ( .A1(n509), .A2(n487), .B1(n466), .B2(n486), .ZN(n162) );
  OAI22D0 U570 ( .A1(n509), .A2(n486), .B1(n466), .B2(n485), .ZN(n161) );
  OAI22D0 U571 ( .A1(n509), .A2(n485), .B1(n466), .B2(n484), .ZN(n160) );
  OAI22D0 U572 ( .A1(n509), .A2(n484), .B1(n466), .B2(n483), .ZN(n159) );
  OAI22D0 U573 ( .A1(n509), .A2(n483), .B1(n466), .B2(n482), .ZN(n158) );
  OAI22D0 U574 ( .A1(n509), .A2(n482), .B1(n466), .B2(n481), .ZN(n157) );
  OAI22D0 U575 ( .A1(n509), .A2(n481), .B1(n466), .B2(n480), .ZN(n156) );
  OAI22D0 U576 ( .A1(n509), .A2(n480), .B1(n466), .B2(n479), .ZN(n155) );
  OAI22D0 U577 ( .A1(n509), .A2(n479), .B1(n466), .B2(n478), .ZN(n154) );
  OAI22D0 U578 ( .A1(n509), .A2(n478), .B1(n466), .B2(n477), .ZN(n153) );
  OAI22D0 U579 ( .A1(n509), .A2(n477), .B1(n466), .B2(n476), .ZN(n152) );
  OAI22D0 U580 ( .A1(n509), .A2(n476), .B1(n466), .B2(n475), .ZN(n151) );
  OAI22D0 U581 ( .A1(n509), .A2(n475), .B1(n466), .B2(n474), .ZN(n150) );
  OAI22D0 U582 ( .A1(n509), .A2(n474), .B1(n466), .B2(n473), .ZN(n149) );
  OAI22D0 U583 ( .A1(n509), .A2(n473), .B1(n466), .B2(n472), .ZN(n148) );
  CKND2D0 U584 ( .A1(n466), .A2(b[6]), .ZN(n509) );
  OAI32D0 U585 ( .A1(n497), .A2(a[0]), .A3(n507), .B1(n497), .B2(n506), .ZN(
        n144) );
  CKND2D0 U586 ( .A1(n507), .A2(n604), .ZN(n506) );
  XNR2D0 U587 ( .A1(n497), .A2(b[4]), .ZN(n604) );
  XNR2D0 U588 ( .A1(b[3]), .A2(b[4]), .ZN(n507) );
  MAOI222D0 U356 ( .A(n517), .B(n606), .C(n605), .ZN(n515) );
  CKND0 U370 ( .I(n143), .ZN(n605) );
  MUX2ND0 U372 ( .I0(n518), .I1(n519), .S(n496), .ZN(n606) );
  CKND2 U386 ( .I(b[5]), .ZN(n497) );
endmodule


module oadm_fixed_divmul_correction_chain_LEVEL3_DW01_add_17 ( A, B, CI, SUM, 
        CO );
  input [25:0] A;
  input [25:0] B;
  output [25:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [25:2] carry;

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
  FA1D0 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  FA1D0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1D0 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA1D0 U1_24 ( .A(A[24]), .B(B[24]), .CI(carry[24]), .CO(carry[25]), .S(
        SUM[24]) );
  XOR3D1 U1_25 ( .A1(A[25]), .A2(B[25]), .A3(carry[25]), .Z(SUM[25]) );
  AN2XD1 U1 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
  CKXOR2D1 U2 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
endmodule


module oadm_fixed_divmul_correction_chain_LEVEL3_DW01_add_13 ( A, B, CI, SUM, 
        CO );
  input [27:0] A;
  input [27:0] B;
  output [27:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [27:2] carry;

  FA1D0 U1_25 ( .A(A[25]), .B(B[25]), .CI(carry[25]), .CO(carry[26]), .S(
        SUM[25]) );
  FA1D0 U1_24 ( .A(A[24]), .B(B[24]), .CI(carry[24]), .CO(carry[25]), .S(
        SUM[24]) );
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
  FA1D0 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  FA1D0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1D0 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA1D0 U1_26 ( .A(A[26]), .B(B[26]), .CI(carry[26]), .CO(carry[27]), .S(
        SUM[26]) );
  XOR3D1 U1_27 ( .A1(A[27]), .A2(B[27]), .A3(carry[27]), .Z(SUM[27]) );
  AN2XD1 U1 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
  CKXOR2D1 U2 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
endmodule


module oadm_fixed_divmul_correction_chain_LEVEL3_DW01_add_15 ( A, B, CI, SUM, 
        CO );
  input [26:0] A;
  input [26:0] B;
  output [26:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [26:2] carry;

  FA1D0 U1_24 ( .A(A[24]), .B(B[24]), .CI(carry[24]), .CO(carry[25]), .S(
        SUM[24]) );
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
  FA1D0 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  FA1D0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1D0 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA1D0 U1_25 ( .A(A[25]), .B(B[25]), .CI(carry[25]), .CO(carry[26]), .S(
        SUM[25]) );
  XOR3D1 U1_26 ( .A1(A[26]), .A2(B[26]), .A3(carry[26]), .Z(SUM[26]) );
  AN2XD1 U1 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
  CKXOR2D1 U2 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
endmodule


module oadm_fixed_divmul_correction_chain_LEVEL3_DW01_add_10 ( A, B, CI, SUM, 
        CO );
  input [27:0] A;
  input [27:0] B;
  output [27:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [22:2] carry;

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
  FA1D0 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  FA1D0 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA1D0 U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  FA1D0 U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  AN2XD1 U2 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
  XNR2D1 U4 ( .A1(carry[22]), .A2(B[22]), .ZN(SUM[22]) );
  CKXOR2D1 U5 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
  CKND0 U6 ( .I(SUM[24]), .ZN(SUM[23]) );
  OR2D0 U1 ( .A1(B[22]), .A2(carry[22]), .Z(SUM[24]) );
endmodule


module oadm_fixed_divmul_correction_chain_LEVEL3_DW01_add_9 ( A, B, CI, SUM, 
        CO );
  input [28:0] A;
  input [28:0] B;
  output [28:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [23:2] carry;

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
  FA1D0 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA1D0 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  FA1D0 U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  FA1D0 U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  AN2XD1 U2 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
  INVD1 U3 ( .I(n2), .ZN(SUM[24]) );
  INVD1 U4 ( .I(n2), .ZN(SUM[25]) );
  INVD1 U5 ( .I(n2), .ZN(SUM[26]) );
  INVD1 U6 ( .I(n2), .ZN(SUM[27]) );
  INVD1 U7 ( .I(n2), .ZN(SUM[28]) );
  AN2XD1 U8 ( .A1(carry[23]), .A2(B[23]), .Z(n2) );
  XNR2D1 U10 ( .A1(carry[22]), .A2(B[22]), .ZN(SUM[22]) );
  CKXOR2D1 U11 ( .A1(carry[23]), .A2(B[23]), .Z(SUM[23]) );
  CKXOR2D1 U12 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
  OR2D0 U1 ( .A1(B[22]), .A2(carry[22]), .Z(carry[23]) );
endmodule


module oadm_fixed_divmul_correction_chain_LEVEL3_DW01_add_8 ( A, B, CI, SUM, 
        CO );
  input [28:0] A;
  input [28:0] B;
  output [28:0] SUM;
  input CI;
  output CO;
  wire   n1, n3, n4, n5;
  wire   [25:2] carry;

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
  FA1D0 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  FA1D0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1D0 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA1D0 U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  FA1D0 U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  FA1D0 U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  FA1D0 U1_24 ( .A(A[24]), .B(B[24]), .CI(carry[24]), .CO(carry[25]), .S(
        SUM[24]) );
  FA1D0 U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  AN2XD1 U1 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
  AN2XD1 U3 ( .A1(n4), .A2(B[26]), .Z(n3) );
  AN2XD1 U4 ( .A1(carry[25]), .A2(B[25]), .Z(n4) );
  CKXOR2D1 U5 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
  CKXOR2D1 U6 ( .A1(n3), .A2(B[27]), .Z(SUM[27]) );
  CKXOR2D1 U7 ( .A1(n4), .A2(B[26]), .Z(SUM[26]) );
  CKXOR2D1 U8 ( .A1(carry[25]), .A2(B[25]), .Z(SUM[25]) );
  XNR2D0 U2 ( .A1(B[28]), .A2(n5), .ZN(SUM[28]) );
  CKND2D0 U9 ( .A1(B[27]), .A2(n3), .ZN(n5) );
endmodule


module oadm_fixed_divmul_correction_chain_LEVEL3_DW01_sub_18 ( A, B, CI, DIFF, 
        CO );
  input [27:0] A;
  input [27:0] B;
  output [27:0] DIFF;
  input CI;
  output CO;
  wire   n3, n4, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n24;
  wire   [22:1] carry;

  FA1D0 U2_19 ( .A(A[19]), .B(n6), .CI(carry[19]), .CO(carry[20]), .S(DIFF[19]) );
  FA1D0 U2_18 ( .A(A[18]), .B(n7), .CI(carry[18]), .CO(carry[19]), .S(DIFF[18]) );
  FA1D0 U2_17 ( .A(A[17]), .B(n8), .CI(carry[17]), .CO(carry[18]), .S(DIFF[17]) );
  FA1D0 U2_16 ( .A(A[16]), .B(n9), .CI(carry[16]), .CO(carry[17]), .S(DIFF[16]) );
  FA1D0 U2_15 ( .A(A[15]), .B(n10), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  FA1D0 U2_14 ( .A(A[14]), .B(n11), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  FA1D0 U2_13 ( .A(A[13]), .B(n12), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  FA1D0 U2_12 ( .A(A[12]), .B(n13), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  FA1D0 U2_11 ( .A(A[11]), .B(n14), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  FA1D0 U2_10 ( .A(A[10]), .B(n15), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  FA1D0 U2_9 ( .A(A[9]), .B(n16), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  FA1D0 U2_8 ( .A(A[8]), .B(n17), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  FA1D0 U2_7 ( .A(A[7]), .B(n18), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  FA1D0 U2_6 ( .A(A[6]), .B(n19), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  FA1D0 U2_5 ( .A(A[5]), .B(n20), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  FA1D0 U2_4 ( .A(A[4]), .B(n21), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FA1D0 U2_3 ( .A(A[3]), .B(n22), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  FA1D0 U2_1 ( .A(A[1]), .B(n24), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  FA1D0 U2_2 ( .A(A[2]), .B(n23), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  FA1D0 U2_20 ( .A(A[20]), .B(n3), .CI(carry[20]), .CO(carry[21]), .S(DIFF[20]) );
  FA1D0 U2_21 ( .A(A[21]), .B(n4), .CI(carry[21]), .CO(carry[22]), .S(DIFF[21]) );
  INVD1 U3 ( .I(B[21]), .ZN(n4) );
  INVD1 U5 ( .I(B[20]), .ZN(n3) );
  INVD1 U6 ( .I(B[2]), .ZN(n23) );
  INVD1 U8 ( .I(B[1]), .ZN(n24) );
  INVD1 U11 ( .I(B[3]), .ZN(n22) );
  INVD1 U12 ( .I(B[4]), .ZN(n21) );
  INVD1 U13 ( .I(B[5]), .ZN(n20) );
  INVD1 U14 ( .I(B[6]), .ZN(n19) );
  INVD1 U15 ( .I(B[7]), .ZN(n18) );
  INVD1 U16 ( .I(B[8]), .ZN(n17) );
  INVD1 U17 ( .I(B[9]), .ZN(n16) );
  INVD1 U18 ( .I(B[10]), .ZN(n15) );
  INVD1 U19 ( .I(B[11]), .ZN(n14) );
  INVD1 U20 ( .I(B[12]), .ZN(n13) );
  INVD1 U21 ( .I(B[13]), .ZN(n12) );
  INVD1 U22 ( .I(B[14]), .ZN(n11) );
  INVD1 U23 ( .I(B[15]), .ZN(n10) );
  INVD1 U24 ( .I(B[16]), .ZN(n9) );
  INVD1 U25 ( .I(B[17]), .ZN(n8) );
  INVD1 U26 ( .I(B[18]), .ZN(n7) );
  INVD1 U27 ( .I(B[19]), .ZN(n6) );
  IND2D0 U1 ( .A1(carry[22]), .B1(B[22]), .ZN(DIFF[23]) );
  CKXOR2D0 U2 ( .A1(carry[22]), .A2(B[22]), .Z(DIFF[22]) );
  IND2D0 U4 ( .A1(A[0]), .B1(B[0]), .ZN(carry[1]) );
  CKXOR2D0 U7 ( .A1(A[0]), .A2(B[0]), .Z(DIFF[0]) );
endmodule


module oadm_fixed_divmul_correction_chain_LEVEL3_DW01_sub_17 ( A, B, CI, DIFF, 
        CO );
  input [28:0] A;
  input [28:0] B;
  output [28:0] DIFF;
  input CI;
  output CO;
  wire   n2, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26;
  wire   [25:1] carry;

  FA1D0 U2_19 ( .A(A[19]), .B(n6), .CI(carry[19]), .CO(carry[20]), .S(DIFF[19]) );
  FA1D0 U2_18 ( .A(A[18]), .B(n9), .CI(carry[18]), .CO(carry[19]), .S(DIFF[18]) );
  FA1D0 U2_17 ( .A(A[17]), .B(n10), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  FA1D0 U2_16 ( .A(A[16]), .B(n11), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  FA1D0 U2_15 ( .A(A[15]), .B(n12), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  FA1D0 U2_14 ( .A(A[14]), .B(n13), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  FA1D0 U2_13 ( .A(A[13]), .B(n14), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  FA1D0 U2_12 ( .A(A[12]), .B(n15), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  FA1D0 U2_11 ( .A(A[11]), .B(n16), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  FA1D0 U2_10 ( .A(A[10]), .B(n17), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  FA1D0 U2_9 ( .A(A[9]), .B(n18), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  FA1D0 U2_8 ( .A(A[8]), .B(n19), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  FA1D0 U2_7 ( .A(A[7]), .B(n20), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  FA1D0 U2_6 ( .A(A[6]), .B(n21), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  FA1D0 U2_5 ( .A(A[5]), .B(n22), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  FA1D0 U2_4 ( .A(A[4]), .B(n23), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FA1D0 U2_3 ( .A(A[3]), .B(n24), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  FA1D0 U2_2 ( .A(A[2]), .B(n25), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  FA1D0 U2_1 ( .A(A[1]), .B(n26), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  FA1D0 U2_21 ( .A(A[21]), .B(n8), .CI(carry[21]), .CO(carry[22]), .S(DIFF[21]) );
  FA1D0 U2_20 ( .A(A[20]), .B(n7), .CI(carry[20]), .CO(carry[21]), .S(DIFF[20]) );
  IND2D1 U1 ( .A1(carry[24]), .B1(A[25]), .ZN(carry[25]) );
  CKBD1 U2 ( .I(DIFF[26]), .Z(DIFF[27]) );
  CKBD1 U3 ( .I(DIFF[26]), .Z(DIFF[28]) );
  IND2D1 U4 ( .A1(n2), .B1(A[25]), .ZN(carry[24]) );
  NR2D1 U5 ( .A1(carry[25]), .A2(A[25]), .ZN(DIFF[26]) );
  AN2XD1 U6 ( .A1(carry[22]), .A2(A[22]), .Z(n2) );
  INVD1 U7 ( .I(B[20]), .ZN(n7) );
  INVD1 U8 ( .I(B[21]), .ZN(n8) );
  INVD1 U10 ( .I(B[1]), .ZN(n26) );
  INVD1 U12 ( .I(B[2]), .ZN(n25) );
  INVD1 U13 ( .I(B[3]), .ZN(n24) );
  INVD1 U15 ( .I(B[4]), .ZN(n23) );
  INVD1 U16 ( .I(B[5]), .ZN(n22) );
  INVD1 U17 ( .I(B[6]), .ZN(n21) );
  INVD1 U18 ( .I(B[7]), .ZN(n20) );
  INVD1 U19 ( .I(B[8]), .ZN(n19) );
  INVD1 U20 ( .I(B[9]), .ZN(n18) );
  INVD1 U21 ( .I(B[10]), .ZN(n17) );
  INVD1 U22 ( .I(B[11]), .ZN(n16) );
  INVD1 U23 ( .I(B[12]), .ZN(n15) );
  INVD1 U24 ( .I(B[13]), .ZN(n14) );
  INVD1 U25 ( .I(B[14]), .ZN(n13) );
  INVD1 U26 ( .I(B[15]), .ZN(n12) );
  INVD1 U27 ( .I(B[16]), .ZN(n11) );
  INVD1 U28 ( .I(B[17]), .ZN(n10) );
  INVD1 U29 ( .I(B[18]), .ZN(n9) );
  INVD1 U30 ( .I(B[19]), .ZN(n6) );
  XNR2D1 U31 ( .A1(n2), .A2(A[23]), .ZN(DIFF[23]) );
  XNR2D1 U32 ( .A1(carry[24]), .A2(A[24]), .ZN(DIFF[24]) );
  XNR2D1 U33 ( .A1(carry[25]), .A2(A[25]), .ZN(DIFF[25]) );
  CKXOR2D1 U35 ( .A1(carry[22]), .A2(A[22]), .Z(DIFF[22]) );
  IND2D0 U9 ( .A1(A[0]), .B1(B[0]), .ZN(carry[1]) );
  CKXOR2D0 U11 ( .A1(A[0]), .A2(B[0]), .Z(DIFF[0]) );
endmodule


module oadm_fixed_divmul_correction_chain_LEVEL3_DW01_add_6 ( A, B, CI, SUM, 
        CO );
  input [28:0] A;
  input [28:0] B;
  output [28:0] SUM;
  input CI;
  output CO;
  wire   n1, n3;
  wire   [28:2] carry;

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
  FA1D0 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  FA1D0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1D0 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA1D0 U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  FA1D0 U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  FA1D0 U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  FA1D0 U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  AN2XD1 U3 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
  INVD1 U4 ( .I(B[26]), .ZN(n3) );
  IND2D1 U8 ( .A1(carry[26]), .B1(n3), .ZN(carry[27]) );
  XNR2D1 U10 ( .A1(carry[27]), .A2(B[27]), .ZN(SUM[27]) );
  XNR2D1 U11 ( .A1(carry[26]), .A2(B[26]), .ZN(SUM[26]) );
  XNR2D1 U12 ( .A1(carry[25]), .A2(B[25]), .ZN(SUM[25]) );
  XNR2D1 U13 ( .A1(carry[24]), .A2(B[24]), .ZN(SUM[24]) );
  XNR2D1 U14 ( .A1(B[28]), .A2(carry[28]), .ZN(SUM[28]) );
  CKXOR2D1 U15 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
  IND2D0 U1 ( .A1(carry[27]), .B1(n3), .ZN(carry[28]) );
  OR2D0 U2 ( .A1(B[25]), .A2(carry[25]), .Z(carry[26]) );
  OR2D0 U5 ( .A1(carry[24]), .A2(B[24]), .Z(carry[25]) );
endmodule


module oadm_fixed_divmul_correction_chain_LEVEL3 ( x, y, divide_mode, result
 );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  input divide_mode;
  wire   N112, N113, N114, N115, N116, N117, N118, N119, N120, N121, N122,
         N123, N124, N125, N126, N127, N128, N129, N130, N131, N132, N133,
         N134, N135, N136, N137, N138, N139, N140, N162, N164, N167, N168,
         N169, N170, N171, N172, N173, N174, N175, N176, N177, N178, N179,
         N180, N181, N182, N183, N184, N185, N186, N187, N188, N189, N190,
         N191, N192, N279, N280, N281, N282, N283, N284, N285, N286, N287,
         N288, N289, N290, N291, N292, N293, N294, N295, N296, N297, N298,
         N299, N300, N301, N302, N303, N304, N305, N306, N307, N334, N335,
         N336, N337, N338, N339, N340, N341, N342, N343, N344, N345, N346,
         N347, N348, N349, N350, N351, N352, N353, N354, N355, N362, N363,
         N364, N365, N366, N367, N369, N370, N372, N373, N375, N376, N378,
         N379, N381, N382, N384, N385, N386, N390, N391, N392, N393, N394,
         N395, N396, N397, N398, N399, N400, N401, N402, N403, N404, N405,
         N406, N407, N408, N409, N410, N411, N412, N413, N414, N415, N419,
         N428, N430, N431, N432, N433, N434, N435, N436, N437, N438, N439,
         N440, N441, N442, N443, N444, N445, N446, N447, N448, N449, N450,
         N451, N452, N453, N454, N455, N456, N457, N458, N459, N460, N461,
         N462, N463, N464, N465, N466, N467, N468, N469, N470, N471, N472,
         N473, N474, N475, N476, N477, N478, N479, N480, N481, N482, N483,
         term_1_28, N485, N486, N487, N488, N489, N490, N491, N492, N493, N494,
         N495, N496, N497, N498, N499, N500, N501, N502, N503, N504, N505,
         N506, N507, N508, N509, N510, N511, N512, N513, N514, N515, N516,
         N517, N518, N519, N520, N521, N522, N523, N524, N525, N526, N527,
         N528, N529, N530, N531, N532, N533, N534, N535, N536, N537, N538,
         term_2_28, N595, N596, N597, N598, N599, N600, N601, N602, N603, N604,
         N605, N606, N607, N608, N609, N610, N611, N612, N613, N614, N615,
         N616, N617, N618, N619, N620, N648, N674, N677, N678, N679, N680,
         N682, N683, N685, N686, N688, N689, N691, N692, N694, N695, N697,
         N698, N699, N700, N701, N705, N706, N707, N708, N709, N710, N711,
         N712, N713, N714, N715, N716, N717, N718, N719, N720, N721, N722,
         N723, N724, N725, N726, N727, N728, N729, N730, N734, N745, N747,
         N748, N749, N750, N751, N752, N753, N754, N755, N756, N757, N758,
         N759, N760, N761, N762, N763, N764, N765, N766, N767, N768, N769,
         N770, N771, N772, N773, N774, N775, N776, N777, N778, N779, N780,
         N781, N782, N783, N784, N785, N786, N787, N788, N789, N790, N791,
         N792, N793, N794, N795, N796, N797, N798, N800, N801, N802, N803,
         N804, N805, N806, N807, N808, N809, N810, N811, N812, N813, N814,
         N815, N816, N817, N818, N819, N820, N821, N822, N823, N824, N825,
         N826, N827, N828, N829, N830, N831, N832, N833, N834, N835, N836,
         N837, N838, N839, N840, N841, N842, N843, N844, N845, N846, N847,
         N848, N849, N850, N851, N953, N1007, N1008, N1014, N1015, N1016,
         N1017, N1018, N1019, N1020, N1021, N1022, N1023, N1024, N1025, N1026,
         N1027, N1028, N1029, N1030, N1031, N1032, N1033, N1034, N1035, N1036,
         N1037, N1038, N1039, N1040, N1041, N1042, N1067, N1073, N1096, N1102,
         N1106, N1107, N1108, N1109, N1110, N1111, N1112, N1113, N1114, N1115,
         N1116, N1117, N1118, N1119, N1120, N1121, N1122, N1123, N1124, N1125,
         N1126, N1127, N1128, N1129, N1130, N1132, N1133, N1134, N1135, N1136,
         N1137, N1138, N1139, N1140, N1141, N1142, N1143, N1144, N1145, N1146,
         N1147, N1148, N1149, N1150, N1151, N1152, N1153, N1154, N1155, N1156,
         n1690, n1700, n1710, n1720, n1730, n1740, n1750, n1760, n1770, n1780,
         n1790, n1800, n1810, n1820, n1830, n1840, n1850, n1860, n1870, n1880,
         n1890, n1900, n1910, n1920, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, N1182, N1181, N1180,
         N1179, N1178, N1177, N1176, N1175, N1174, N1173, N1172, N566, N565,
         N564, N563, N562, N561, N560, N559, N558, N878, N877, N876, N875,
         N874, N873, N872, N871, N870, N869, N278, N277, N276, N275, N274,
         N273, N272, N271, N270, N269, N268, N267, N266, N265, N264, N263,
         N262, N261, N260, N259, N258, N257, N256, N255, N254, N253, N252,
         N251, N250, net9927, N246, N245, N244, N243, N242, N241, N240, N239,
         N238, N237, N236, N235, N234, N233, N232, N231, N230, N2290, N2280,
         N2270, N2260, N2250, N2240, N2230, N2220, net9929, N2180, N2170,
         N2150, N2140, N2130, N2120, N2110, N2100, N2090, N2080, N2070, N2060,
         N2050, N2040, N2030, N2020, N2010, N2000, N1990, N1980, N1970, N1960,
         N1950, N99, N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88,
         N87, N86, N85, N84, N83, N78, N77, N76, N75, N74, N73, N72, N71, N70,
         N69, N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56,
         N55, N52, N50, N111, N110, N109, N108, N107, N106, N105, N104, N103,
         N102, N101, N100, sub_91_carry_23_, sub_90_carry_23_, n1, n2, n3, n42,
         n43, n47, n48, n49, n5010, n5210, n53, n54, n550, n567, n570, n580,
         n590, n6010, n6110, n621, n630, n640, n650, n660, n670, n681, n690,
         n702, n7110, n7210, n731, n740, n7510, n7610, n7710;
  wire   [28:0] base_plane;
  wire   [24:1] raw_1;
  wire   [28:0] raw_2;
  wire   [23:0] term_1;
  wire   [23:0] term_2;
  wire   [28:0] delta_1;
  wire   [28:0] delta_2;
  wire   [28:0] delta_3;
  wire   [28:0] level_3_accumulator_sum_0;
  wire   [28:1] level_3_accumulator_carry_0;
  wire   [28:0] level_3_accumulator_sum_1;
  wire   [28:1] level_3_accumulator_carry_1;
  wire   [28:0] selected_plane;
  wire   [6:0] coefficient;
  wire   [31:7] scaled_product;
  wire   [22:0] normalized_fraction;
  wire   [2:0] exponent_adjust;
  wire   [28:21] add_0_root_add_55_2_carry;
  wire   [28:19] add_0_root_add_76_2_carry;
  wire   [28:17] add_0_root_add_97_2_carry;
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
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37;

  MAOI22D1 U182 ( .A1(n1740), .A2(n590), .B1(n194), .B2(n1880), .ZN(n193) );
  OA31D1 U291 ( .A1(n5010), .A2(N355), .A3(N354), .B(n223), .Z(n222) );
  OA31D1 U294 ( .A1(n49), .A2(N953), .A3(N354), .B(n221), .Z(n218) );
  csa3_WIDTH29_0 level_3_accumulator_correction_csa_0 ( .input_a(base_plane), 
        .input_b(delta_1), .input_c(delta_2), .sum(level_3_accumulator_sum_0), 
        .carry({level_3_accumulator_carry_0, SYNOPSYS_UNCONNECTED__0}) );
  csa3_WIDTH29_1 level_3_accumulator_correction_csa_1 ( .input_a(
        level_3_accumulator_sum_0), .input_b({level_3_accumulator_carry_0, 
        1'b0}), .input_c(delta_3), .sum(level_3_accumulator_sum_1), .carry({
        level_3_accumulator_carry_1, SYNOPSYS_UNCONNECTED__1}) );
  fp32_normal_finite_wrapper fp_wrapper ( .x(x), .y(y), .divide_mode(n42), 
        .fraction_x({N164, N162, N2150, N2140, N2130, N2120, N2110, N2100, 
        N2090, N2080, N2070, N2060, N2050, N2040, N2030, N2020, N2010, N2000, 
        N1990, N1980, N1970, N1960, N1950}), .fraction_y({N953, N355, N354, 
        N353, N352, N351, N350, N349, N348, N347, N346, N345, N344, N343, N342, 
        N341, N340, N339, N338, N337, N336, N335, N334}), .result_fraction(
        normalized_fraction), .exponent_adjust({exponent_adjust[2], 
        exponent_adjust[2], exponent_adjust[0]}), .result(result) );
  oadm_fixed_divmul_correction_chain_LEVEL3_DW01_add_0 add_127 ( .A(
        level_3_accumulator_sum_1), .B({level_3_accumulator_carry_1, net9927}), 
        .CI(net9927), .SUM(selected_plane) );
  oadm_fixed_divmul_correction_chain_LEVEL3_DW01_sub_0 sub_96 ( .A({net9927, 
        net9927, net9927, net9927, net9927, net9927, net9927, net9927, net9927, 
        net9927, net9927, net9927, net9927, net9927, net9927, net9927, net9927, 
        net9927, net9927, net9927, net9927, net9927, net9927, net9927, net9927, 
        net9927, net9927, net9927, net9927}), .B(raw_2), .CI(net9927), .DIFF({
        N1156, N1155, N1154, N1153, N1152, N1151, N1150, N1149, N1148, N1147, 
        N1146, N1145, N1144, N1143, N1142, N1141, N1140, N1139, N1138, N1137, 
        N1136, N1135, N1134, N1133, N1132, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5}) );
  oadm_fixed_divmul_correction_chain_LEVEL3_DW01_sub_1 sub_95 ( .A({net9927, 
        net9927, net9927, net9927, net9927, net9927, net9927, net9927, net9927, 
        net9927, net9927, net9927, net9927, net9927, net9927, net9927, net9927, 
        net9927, net9927, net9927, net9927, net9927, net9927, net9927, net9927, 
        net9927, net9927, net9927, net9927}), .B({n1, n1, n1, n1, raw_1[24:20], 
        N2140, raw_1[18:17], N2110, raw_1[15], N2090, raw_1[13:12], N2060, 
        N2050, raw_1[9:6], N2000, N1990, raw_1[3:1], N1950}), .CI(net9927), 
        .DIFF({N1130, N1129, N1128, N1127, N1126, N1125, N1124, N1123, N1122, 
        N1121, N1120, N1119, N1118, N1117, N1116, N1115, N1114, N1113, N1112, 
        N1111, N1110, N1109, N1108, N1107, N1106, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9}) );
  oadm_fixed_divmul_correction_chain_LEVEL3_DW01_sub_4 sub_86 ( .A({net9927, 
        net9927, net9927, net9927, net9927, net9929, N953, N355, net9929, 
        net9927, net9927, net9927, net9927, net9927, net9927, net9927, net9927, 
        net9927, net9927, net9927, net9927, net9927, net9927, net9927, net9927, 
        net9927, net9927, net9927, net9927}), .B({net9927, net9927, net9927, 
        net9927, net9927, net9929, N953, N355, N354, N353, N352, N351, N350, 
        N349, N348, N347, N346, N345, N344, N343, N342, N341, N340, N339, N338, 
        N337, N336, N335, N334}), .CI(net9927), .DIFF({N1042, N1041, N1040, 
        N1039, N1038, N1037, N1036, N1035, N1034, N1033, N1032, N1031, N1030, 
        N1029, N1028, N1027, N1026, N1025, N1024, N1023, N1022, N1021, N1020, 
        N1019, N1018, N1017, N1016, N1015, N1014}) );
  oadm_fixed_divmul_correction_chain_LEVEL3_DW01_sub_7 sub_75 ( .A({net9927, 
        net9927, net9927, net9927, net9927, net9927, net9927, net9927, net9927, 
        net9927, net9927, net9927, net9927, net9927, net9927, net9927, net9927, 
        net9927, net9927, net9927, net9927, net9927, net9927, net9927, net9927, 
        net9927, net9927, net9927, net9927}), .B({N734, N734, N734, N734, N730, 
        N729, N728, N727, N726, N725, N724, N723, N722, N721, N720, N719, N718, 
        N717, N716, N715, N714, N713, N712, N711, N710, N709, N708, N707, N706}), .CI(net9927), .DIFF({N825, N824, N823, N822, N821, N820, N819, N818, N817, 
        N816, N815, N814, N813, N812, N811, N810, N809, N808, N807, N806, N805, 
        N804, N803, N802, N801, N800, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12}) );
  oadm_fixed_divmul_correction_chain_LEVEL3_DW01_sub_8 sub_74 ( .A({net9927, 
        net9927, net9927, net9927, net9927, net9927, net9927, net9927, net9927, 
        net9927, net9927, net9927, net9927, net9927, net9927, net9927, net9927, 
        net9927, net9927, net9927, net9927, net9927, net9927, net9927, net9927, 
        net9927, net9927, net9927, net9927}), .B({N705, N705, N705, N705, N701, 
        N700, N699, N698, N697, N2140, N695, N694, N2110, N692, N691, N2080, 
        N689, N688, N2050, N686, N685, N2020, N683, N682, N1990, N680, N679, 
        N678, N677}), .CI(net9927), .DIFF({N772, N771, N770, N769, N768, N767, 
        N766, N765, N764, N763, N762, N761, N760, N759, N758, N757, N756, N755, 
        N754, N753, N752, N751, N750, N749, N748, N747, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15}) );
  oadm_fixed_divmul_correction_chain_LEVEL3_DW01_sub_11 sub_65 ( .A({net9927, 
        net9927, net9929, N953, net9929, net9927, net9927, net9927, net9927, 
        net9927, net9927, net9927, net9927, net9927, net9927, net9927, net9927, 
        net9927, net9927, net9927, net9927, net9927, net9927, net9927, net9927, 
        net9927}), .B({net9927, net9927, net9929, N953, N355, N354, N353, N352, 
        N351, N350, N349, N348, N347, N346, N345, N344, N343, N342, N341, N340, 
        N339, N338, N337, N336, N335, N334}), .CI(net9927), .DIFF({N620, N619, 
        N618, N617, N616, N615, N614, N613, N612, N611, N610, N609, N608, N607, 
        N606, N605, N604, N603, N602, N601, N600, N599, N598, N597, N596, N595}) );
  oadm_fixed_divmul_correction_chain_LEVEL3_DW01_sub_12 sub_54 ( .A({net9927, 
        net9927, net9927, net9927, net9927, net9927, net9927, net9927, net9927, 
        net9927, net9927, net9927, net9927, net9927, net9927, net9927, net9927, 
        net9927, net9927, net9927, net9927, net9927, net9927, net9927, net9927, 
        net9927, net9927, net9927, net9927}), .B({N419, N419, N419, N419, N415, 
        N414, N413, N412, N411, N410, N409, N408, N407, N406, N405, N404, N403, 
        N402, N401, N400, N399, N398, N397, N396, N395, N394, N393, N392, N391}), .CI(net9927), .DIFF({N511, N510, N509, N508, N507, N506, N505, N504, N503, 
        N502, N501, N500, N499, N498, N497, N496, N495, N494, N493, N492, N491, 
        N490, N489, N488, N487, N486, N485, SYNOPSYS_UNCONNECTED__16, 
        SYNOPSYS_UNCONNECTED__17}) );
  oadm_fixed_divmul_correction_chain_LEVEL3_DW01_sub_13 sub_53 ( .A({net9927, 
        net9927, net9927, net9927, net9927, net9927, net9927, net9927, net9927, 
        net9927, net9927, net9927, net9927, net9927, net9927, net9927, net9927, 
        net9927, net9927, net9927, net9927, net9927, net9927, net9927, net9927, 
        net9927, net9927, net9927, net9927}), .B({N390, N390, N390, N390, N386, 
        N385, N384, N162, N382, N381, N2130, N379, N378, N2100, N376, N375, 
        N2070, N373, N372, N2040, N370, N369, N2010, N367, N366, N365, N364, 
        N363, N362}), .CI(net9927), .DIFF({N456, N455, N454, N453, N452, N451, 
        N450, N449, N448, N447, N446, N445, N444, N443, N442, N441, N440, N439, 
        N438, N437, N436, N435, N434, N433, N432, N431, N430, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19}) );
  oadm_fixed_divmul_correction_chain_LEVEL3_DW01_sub_16 sub_42 ( .A({net9927, 
        net9927, net9929, net9929, net9927, net9927, net9927, net9927, net9927, 
        net9927, net9927, net9927, net9927, net9927, net9927, net9927, net9927, 
        net9927, net9927, net9927, net9927, net9927, net9927, net9927, net9927, 
        net9927}), .B({net9927, net9927, net9929, N953, N355, N354, N353, N352, 
        N351, N350, N349, N348, N347, N346, N345, N344, N343, N342, N341, N340, 
        N339, N338, N337, N336, N335, N334}), .CI(net9927), .DIFF({N192, N191, 
        N190, N189, N188, N187, N186, N185, N184, N183, N182, N181, N180, N179, 
        N178, N177, N176, N175, N174, N173, N172, N171, N170, N169, N168, N167}) );
  oadm_fixed_divmul_correction_chain_LEVEL3_DW_mult_uns_0 mult_158 ( .a(
        selected_plane), .b(coefficient), .product({SYNOPSYS_UNCONNECTED__20, 
        SYNOPSYS_UNCONNECTED__21, SYNOPSYS_UNCONNECTED__22, 
        SYNOPSYS_UNCONNECTED__23, scaled_product, SYNOPSYS_UNCONNECTED__24, 
        SYNOPSYS_UNCONNECTED__25, SYNOPSYS_UNCONNECTED__26, 
        SYNOPSYS_UNCONNECTED__27, SYNOPSYS_UNCONNECTED__28, 
        SYNOPSYS_UNCONNECTED__29, SYNOPSYS_UNCONNECTED__30}) );
  oadm_fixed_divmul_correction_chain_LEVEL3_DW01_add_17 add_1_root_add_97_2 ( 
        .A({term_1_28, term_1_28, term_1}), .B({term_2_28, term_2_28, term_2}), 
        .CI(net9927), .SUM({N1182, N1181, N1180, N1179, N1178, N1177, N1176, 
        N1175, N1174, N1173, N1172, delta_3[14:0]}) );
  oadm_fixed_divmul_correction_chain_LEVEL3_DW01_add_13 add_1_root_add_55_2 ( 
        .A({N483, N483, N482, N481, N480, N479, N478, N477, N476, N475, N474, 
        N473, N472, N471, N470, N469, N468, N467, N466, N465, N464, N463, N462, 
        N461, N460, N459, N458, N457}), .B({N538, N538, N537, N536, N535, N534, 
        N533, N532, N531, N530, N529, N528, N527, N526, N525, N524, N523, N522, 
        N521, N520, N519, N518, N517, N516, N515, N514, N513, N512}), .CI(
        net9927), .SUM({N566, N565, N564, N563, N562, N561, N560, N559, N558, 
        delta_1[18:0]}) );
  oadm_fixed_divmul_correction_chain_LEVEL3_DW01_add_15 add_1_root_add_76_2 ( 
        .A({N798, N798, N797, N796, N795, N794, N793, N792, N791, N790, N789, 
        N788, N787, N786, N785, N784, N783, N782, N781, N780, N779, N778, N777, 
        N776, N775, N774, N773}), .B({N851, N851, N850, N849, N848, N847, N846, 
        N845, N844, N843, N842, N841, N840, N839, N838, N837, N836, N835, N834, 
        N833, N832, N831, N830, N829, N828, N827, N826}), .CI(net9927), .SUM({
        N878, N877, N876, N875, N874, N873, N872, N871, N870, N869, 
        delta_2[16:0]}) );
  oadm_fixed_divmul_correction_chain_LEVEL3_DW01_add_10 add_2_root_add_46_4 ( 
        .A({net9927, net9927, net9927, net9927, net9927, net9929, N164, N162, 
        N2150, N2140, N2130, N2120, N2110, N2100, N2090, N2080, N2070, N2060, 
        N2050, N2040, N2030, N2020, N2010, N2000, N1990, N1980, N1970, N1960}), 
        .B({net9927, net9927, net9927, net9927, net9929, N953, N355, N354, 
        N353, N352, N351, N350, N349, N348, N347, N346, N345, N344, N343, N342, 
        N341, N340, N339, N338, N337, N336, N335, N334}), .CI(net9927), .SUM({
        SYNOPSYS_UNCONNECTED__31, SYNOPSYS_UNCONNECTED__32, 
        SYNOPSYS_UNCONNECTED__33, N246, N245, N244, N243, N242, N241, N240, 
        N239, N238, N237, N236, N235, N234, N233, N232, N231, N230, N2290, 
        N2280, N2270, N2260, N2250, N2240, N2230, N2220}) );
  oadm_fixed_divmul_correction_chain_LEVEL3_DW01_add_9 add_1_root_add_0_root_add_46_4 ( 
        .A({net9927, net9927, net9927, net9927, net9927, net9927, net9929, 
        N953, N355, N354, N353, N352, N351, N350, N349, N348, N347, N346, N345, 
        N344, N343, N342, N341, N340, N339, N338, N337, N336, N335}), .B({
        net9929, net9929, net9929, net9929, net9929, N2180, N2170, n53, N2150, 
        N2140, N2130, N2120, N2110, N2100, N2090, N2080, N2070, N2060, N2050, 
        N2040, N2030, N2020, N2010, N2000, N1990, N1980, N1970, N1960, N1950}), 
        .CI(net9927), .SUM({N278, N277, N276, N275, N274, N273, N272, N271, 
        N270, N269, N268, N267, N266, N265, N264, N263, N262, N261, N260, N259, 
        N258, N257, N256, N255, N254, N253, N252, N251, N250}) );
  oadm_fixed_divmul_correction_chain_LEVEL3_DW01_add_8 add_0_root_add_0_root_add_46_4 ( 
        .A({net9927, net9927, net9927, net9927, N246, N245, N244, N243, N242, 
        N241, N240, N239, N238, N237, N236, N235, N234, N233, N232, N231, N230, 
        N2290, N2280, N2270, N2260, N2250, N2240, N2230, N2220}), .B({N278, 
        N277, N276, N275, N274, N273, N272, N271, N270, N269, N268, N267, N266, 
        N265, N264, N263, N262, N261, N260, N259, N258, N257, N256, N255, N254, 
        N253, N252, N251, N250}), .CI(net9927), .SUM({N307, N306, N305, N304, 
        N303, N302, N301, N300, N299, N298, N297, N296, N295, N294, N293, N292, 
        N291, N290, N289, N288, N287, N286, N285, N284, N283, N282, N281, N280, 
        N279}) );
  oadm_fixed_divmul_correction_chain_LEVEL3_DW01_sub_18 sub_2_root_sub_39_2 ( 
        .A({net9927, net9927, net9927, net9927, net9927, net9929, N164, N162, 
        N2150, N2140, N2130, N2120, N2110, N2100, N2090, N2080, N2070, N2060, 
        N2050, N2040, N2030, N2020, N2010, N2000, N1990, N1980, N1970, N1960}), 
        .B({net9927, net9927, net9927, net9927, net9929, N953, N355, N354, 
        N353, N352, N351, N350, N349, N348, N347, N346, N345, N344, N343, N342, 
        N341, N340, N339, N338, N337, N336, N335, N334}), .CI(net9927), .DIFF(
        {SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, N78, N77, N76, N75, 
        N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, N62, N61, 
        N60, N59, N58, N57, N56, N55}) );
  oadm_fixed_divmul_correction_chain_LEVEL3_DW01_sub_17 sub_1_root_sub_0_root_sub_39_2 ( 
        .A({net9927, net9927, net9927, n3, N52, N52, N50, n53, N2150, N2140, 
        N2130, N2120, N2110, N2100, N2090, N2080, N2070, N2060, N2050, N2040, 
        N2030, N2020, N2010, N2000, N1990, N1980, N1970, N1960, N1950}), .B({
        net9927, net9927, net9927, net9927, net9927, net9927, net9929, N953, 
        N355, N354, N353, N352, N351, N350, N349, N348, N347, N346, N345, N344, 
        N343, N342, N341, N340, N339, N338, N337, N336, N335}), .CI(net9927), 
        .DIFF({N111, N110, N109, N108, N107, N106, N105, N104, N103, N102, 
        N101, N100, N99, N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, 
        N87, N86, N85, N84, N83}) );
  oadm_fixed_divmul_correction_chain_LEVEL3_DW01_add_6 add_0_root_sub_0_root_sub_39_2 ( 
        .A({net9929, net9929, net9929, net9929, net9929, N78, N77, N76, N75, 
        N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, N62, N61, 
        N60, N59, N58, N57, N56, N55}), .B({N111, N110, N109, N108, N107, N106, 
        N105, N104, N103, N102, N101, N100, N99, N98, N97, N96, N95, N94, N93, 
        N92, N91, N90, N89, N88, N87, N86, N85, N84, N83}), .CI(net9927), 
        .SUM({N140, N139, N138, N137, N136, N135, N134, N133, N132, N131, N130, 
        N129, N128, N127, N126, N125, N124, N123, N122, N121, N120, N119, N118, 
        N117, N116, N115, N114, N113, N112}) );
  TIEL U3 ( .ZN(net9927) );
  AN2XD1 U4 ( .A1(N1073), .A2(n47), .Z(n1) );
  IOA21D1 U7 ( .A1(N772), .A2(n49), .B(n227), .ZN(N798) );
  IOA21D1 U8 ( .A1(N825), .A2(n53), .B(n226), .ZN(N851) );
  IOA21D1 U9 ( .A1(N456), .A2(n5010), .B(n229), .ZN(N483) );
  IOA21D1 U10 ( .A1(N511), .A2(n54), .B(n228), .ZN(N538) );
  AO22D0 U11 ( .A1(N1130), .A2(n48), .B1(N354), .B2(n1), .Z(term_1_28) );
  AO22D0 U12 ( .A1(N1156), .A2(n5210), .B1(N2150), .B2(raw_2[28]), .Z(
        term_2_28) );
  XOR3D1 U13 ( .A1(N354), .A2(n43), .A3(n5210), .Z(n2) );
  CKBD1 U14 ( .I(divide_mode), .Z(n42) );
  AOI22D1 U15 ( .A1(scaled_product[31]), .A2(divide_mode), .B1(
        selected_plane[24]), .B2(n47), .ZN(n1880) );
  ND2D1 U16 ( .A1(n1720), .A2(n1700), .ZN(exponent_adjust[2]) );
  INVD1 U17 ( .I(n1740), .ZN(n570) );
  NR2D1 U18 ( .A1(n580), .A2(n194), .ZN(n1740) );
  OAI221D0 U19 ( .A1(n213), .A2(n1700), .B1(n211), .B2(n1720), .C(n214), .ZN(
        normalized_fraction[12]) );
  AOI22D1 U20 ( .A1(n1740), .A2(n690), .B1(n681), .B2(n580), .ZN(n214) );
  OAI221D0 U21 ( .A1(n211), .A2(n1700), .B1(n209), .B2(n1720), .C(n212), .ZN(
        normalized_fraction[13]) );
  AOI22D1 U22 ( .A1(n1740), .A2(n681), .B1(n670), .B2(n580), .ZN(n212) );
  OAI221D0 U23 ( .A1(n209), .A2(n1700), .B1(n207), .B2(n1720), .C(n210), .ZN(
        normalized_fraction[14]) );
  AOI22D1 U24 ( .A1(n1740), .A2(n670), .B1(n660), .B2(n580), .ZN(n210) );
  OAI221D0 U25 ( .A1(n207), .A2(n1700), .B1(n205), .B2(n1720), .C(n208), .ZN(
        normalized_fraction[15]) );
  AOI22D1 U26 ( .A1(n1740), .A2(n660), .B1(n650), .B2(n580), .ZN(n208) );
  OAI221D0 U27 ( .A1(n205), .A2(n1700), .B1(n203), .B2(n1720), .C(n206), .ZN(
        normalized_fraction[16]) );
  AOI22D1 U28 ( .A1(n1740), .A2(n650), .B1(n640), .B2(n580), .ZN(n206) );
  OAI221D0 U29 ( .A1(n203), .A2(n1700), .B1(n201), .B2(n1720), .C(n204), .ZN(
        normalized_fraction[17]) );
  AOI22D1 U30 ( .A1(n1740), .A2(n640), .B1(n630), .B2(n580), .ZN(n204) );
  OAI221D0 U31 ( .A1(n201), .A2(n1700), .B1(n199), .B2(n1720), .C(n202), .ZN(
        normalized_fraction[18]) );
  AOI22D1 U32 ( .A1(n1740), .A2(n630), .B1(n621), .B2(n580), .ZN(n202) );
  OAI221D0 U33 ( .A1(n199), .A2(n1700), .B1(n197), .B2(n1720), .C(n200), .ZN(
        normalized_fraction[19]) );
  AOI22D1 U34 ( .A1(n1740), .A2(n621), .B1(n6110), .B2(n580), .ZN(n200) );
  OAI221D0 U35 ( .A1(n197), .A2(n1700), .B1(n195), .B2(n1720), .C(n198), .ZN(
        normalized_fraction[20]) );
  AOI22D1 U36 ( .A1(n1740), .A2(n6110), .B1(n6010), .B2(n580), .ZN(n198) );
  OAI221D0 U37 ( .A1(n195), .A2(n1700), .B1(n1910), .B2(n1720), .C(n196), .ZN(
        normalized_fraction[21]) );
  AOI22D1 U38 ( .A1(n1740), .A2(n6010), .B1(n590), .B2(n580), .ZN(n196) );
  INVD1 U39 ( .I(n1920), .ZN(n6010) );
  INVD1 U40 ( .I(n1910), .ZN(n6110) );
  INVD1 U41 ( .I(n195), .ZN(n621) );
  INVD1 U42 ( .I(n197), .ZN(n630) );
  INVD1 U43 ( .I(n199), .ZN(n640) );
  INVD1 U44 ( .I(n201), .ZN(n650) );
  INVD1 U45 ( .I(n203), .ZN(n660) );
  INVD1 U46 ( .I(n205), .ZN(n670) );
  INVD1 U47 ( .I(n207), .ZN(n681) );
  INVD1 U48 ( .I(n209), .ZN(n690) );
  INVD1 U49 ( .I(n211), .ZN(n702) );
  INVD1 U50 ( .I(n213), .ZN(n7110) );
  INVD1 U51 ( .I(n1710), .ZN(n731) );
  INVD1 U52 ( .I(n1780), .ZN(n7610) );
  ND3D1 U53 ( .A1(n194), .A2(n590), .A3(n1880), .ZN(n1720) );
  CKBD1 U54 ( .I(divide_mode), .Z(n43) );
  ND3D1 U55 ( .A1(n194), .A2(n217), .A3(n1880), .ZN(n1700) );
  ND2D1 U56 ( .A1(n1880), .A2(n1720), .ZN(exponent_adjust[0]) );
  AOI22D1 U57 ( .A1(scaled_product[30]), .A2(n42), .B1(selected_plane[23]), 
        .B2(n47), .ZN(n194) );
  INVD1 U58 ( .I(n217), .ZN(n590) );
  INVD1 U59 ( .I(n1880), .ZN(n580) );
  OAI221D0 U60 ( .A1(n1690), .A2(n1700), .B1(n1710), .B2(n1720), .C(n1730), 
        .ZN(normalized_fraction[9]) );
  AOI22D1 U61 ( .A1(n1740), .A2(n7210), .B1(n7110), .B2(n580), .ZN(n1730) );
  OAI221D0 U62 ( .A1(n1710), .A2(n1700), .B1(n1770), .B2(n1720), .C(n216), 
        .ZN(normalized_fraction[10]) );
  AOI22D1 U63 ( .A1(n1740), .A2(n7110), .B1(n702), .B2(n580), .ZN(n216) );
  OAI221D0 U64 ( .A1(n1770), .A2(n1700), .B1(n213), .B2(n1720), .C(n215), .ZN(
        normalized_fraction[11]) );
  AOI22D1 U65 ( .A1(n1740), .A2(n702), .B1(n690), .B2(n580), .ZN(n215) );
  OAI221D0 U66 ( .A1(n1820), .A2(n1700), .B1(n1800), .B2(n1720), .C(n1830), 
        .ZN(normalized_fraction[5]) );
  AOI22D1 U67 ( .A1(n1740), .A2(n7610), .B1(n7510), .B2(n580), .ZN(n1830) );
  OAI221D0 U68 ( .A1(n1840), .A2(n1700), .B1(n1820), .B2(n1720), .C(n1850), 
        .ZN(normalized_fraction[4]) );
  AOI22D1 U69 ( .A1(n1740), .A2(n7710), .B1(n7610), .B2(n580), .ZN(n1850) );
  INVD1 U70 ( .I(n1800), .ZN(n7710) );
  OAI221D0 U71 ( .A1(n1800), .A2(n1700), .B1(n1780), .B2(n1720), .C(n1810), 
        .ZN(normalized_fraction[6]) );
  AOI22D1 U72 ( .A1(n1740), .A2(n7510), .B1(n740), .B2(n580), .ZN(n1810) );
  OAI221D0 U73 ( .A1(n1780), .A2(n1700), .B1(n1750), .B2(n1720), .C(n1790), 
        .ZN(normalized_fraction[7]) );
  AOI22D1 U74 ( .A1(n1740), .A2(n740), .B1(n731), .B2(n580), .ZN(n1790) );
  OAI221D0 U75 ( .A1(n1750), .A2(n1700), .B1(n1690), .B2(n1720), .C(n1760), 
        .ZN(normalized_fraction[8]) );
  AOI22D1 U76 ( .A1(n1740), .A2(n731), .B1(n7210), .B2(n580), .ZN(n1760) );
  OAI221D0 U77 ( .A1(n1910), .A2(n1700), .B1(n1920), .B2(n1720), .C(n193), 
        .ZN(normalized_fraction[22]) );
  AO22D0 U78 ( .A1(N299), .A2(n47), .B1(N132), .B2(divide_mode), .Z(
        base_plane[20]) );
  AO22D0 U79 ( .A1(N300), .A2(n47), .B1(N133), .B2(n42), .Z(base_plane[21]) );
  AO22D0 U80 ( .A1(N301), .A2(n47), .B1(N134), .B2(n42), .Z(base_plane[22]) );
  AO22D0 U81 ( .A1(N302), .A2(n47), .B1(N135), .B2(n43), .Z(base_plane[23]) );
  AO22D0 U82 ( .A1(N303), .A2(n47), .B1(N136), .B2(divide_mode), .Z(
        base_plane[24]) );
  AO22D0 U83 ( .A1(N304), .A2(n47), .B1(N137), .B2(n43), .Z(base_plane[25]) );
  AO22D0 U84 ( .A1(N305), .A2(n47), .B1(N138), .B2(n42), .Z(base_plane[26]) );
  AO22D0 U85 ( .A1(N306), .A2(n47), .B1(N139), .B2(divide_mode), .Z(
        base_plane[27]) );
  AO22D0 U86 ( .A1(N1102), .A2(n47), .B1(N1037), .B2(n43), .Z(raw_2[23]) );
  AO22D0 U87 ( .A1(N1102), .A2(n47), .B1(N1038), .B2(divide_mode), .Z(
        raw_2[24]) );
  AO22D0 U88 ( .A1(N1102), .A2(n47), .B1(N1039), .B2(n42), .Z(raw_2[25]) );
  AO22D0 U89 ( .A1(N1102), .A2(n47), .B1(N1040), .B2(n43), .Z(raw_2[26]) );
  AO22D0 U90 ( .A1(N1102), .A2(n47), .B1(N1041), .B2(divide_mode), .Z(
        raw_2[27]) );
  AOI22D1 U91 ( .A1(scaled_product[28]), .A2(divide_mode), .B1(
        selected_plane[21]), .B2(n47), .ZN(n1920) );
  AO22D0 U92 ( .A1(N1102), .A2(n47), .B1(N1042), .B2(n42), .Z(raw_2[28]) );
  AOI22D1 U93 ( .A1(scaled_product[27]), .A2(n43), .B1(selected_plane[20]), 
        .B2(n47), .ZN(n1910) );
  AOI22D1 U94 ( .A1(scaled_product[26]), .A2(divide_mode), .B1(
        selected_plane[19]), .B2(n47), .ZN(n195) );
  AOI22D1 U95 ( .A1(scaled_product[25]), .A2(n43), .B1(selected_plane[18]), 
        .B2(n47), .ZN(n197) );
  AOI22D1 U96 ( .A1(scaled_product[24]), .A2(divide_mode), .B1(
        selected_plane[17]), .B2(n47), .ZN(n199) );
  AO22D0 U97 ( .A1(N1073), .A2(n47), .B1(N1008), .B2(n42), .Z(raw_1[23]) );
  AOI22D1 U98 ( .A1(scaled_product[23]), .A2(n42), .B1(selected_plane[16]), 
        .B2(n47), .ZN(n201) );
  AOI22D1 U99 ( .A1(scaled_product[22]), .A2(n42), .B1(selected_plane[15]), 
        .B2(n47), .ZN(n203) );
  ND2D1 U100 ( .A1(n47), .A2(sub_90_carry_23_), .ZN(raw_1[24]) );
  AOI22D1 U101 ( .A1(scaled_product[21]), .A2(divide_mode), .B1(
        selected_plane[14]), .B2(n47), .ZN(n205) );
  AOI22D1 U102 ( .A1(scaled_product[20]), .A2(n43), .B1(selected_plane[13]), 
        .B2(n47), .ZN(n207) );
  AOI22D1 U103 ( .A1(scaled_product[19]), .A2(n43), .B1(selected_plane[12]), 
        .B2(n47), .ZN(n209) );
  AOI22D1 U104 ( .A1(scaled_product[18]), .A2(divide_mode), .B1(
        selected_plane[11]), .B2(n47), .ZN(n211) );
  AOI22D1 U105 ( .A1(scaled_product[17]), .A2(n43), .B1(selected_plane[10]), 
        .B2(n47), .ZN(n213) );
  INVD1 U106 ( .I(n1770), .ZN(n7210) );
  AOI22D1 U107 ( .A1(scaled_product[15]), .A2(divide_mode), .B1(
        selected_plane[8]), .B2(n47), .ZN(n1710) );
  INVD1 U108 ( .I(n1690), .ZN(n740) );
  INVD1 U109 ( .I(n1750), .ZN(n7510) );
  AOI22D1 U110 ( .A1(scaled_product[12]), .A2(divide_mode), .B1(
        selected_plane[5]), .B2(n47), .ZN(n1780) );
  AOI22D1 U111 ( .A1(scaled_product[10]), .A2(n42), .B1(selected_plane[3]), 
        .B2(n47), .ZN(n1820) );
  FA1D0 U113 ( .A(N428), .B(N559), .CI(N558), .CO(
        add_0_root_add_55_2_carry[21]), .S(delta_1[20]) );
  FA1D0 U114 ( .A(N428), .B(N560), .CI(add_0_root_add_55_2_carry[21]), .CO(
        add_0_root_add_55_2_carry[22]), .S(delta_1[21]) );
  FA1D0 U115 ( .A(N428), .B(N561), .CI(add_0_root_add_55_2_carry[22]), .CO(
        add_0_root_add_55_2_carry[23]), .S(delta_1[22]) );
  FA1D0 U116 ( .A(N428), .B(N562), .CI(add_0_root_add_55_2_carry[23]), .CO(
        add_0_root_add_55_2_carry[24]), .S(delta_1[23]) );
  FA1D0 U117 ( .A(N428), .B(N563), .CI(add_0_root_add_55_2_carry[24]), .CO(
        add_0_root_add_55_2_carry[25]), .S(delta_1[24]) );
  FA1D0 U118 ( .A(N745), .B(N870), .CI(N869), .CO(
        add_0_root_add_76_2_carry[19]), .S(delta_2[18]) );
  FA1D0 U119 ( .A(N745), .B(N871), .CI(add_0_root_add_76_2_carry[19]), .CO(
        add_0_root_add_76_2_carry[20]), .S(delta_2[19]) );
  FA1D0 U120 ( .A(N428), .B(N564), .CI(add_0_root_add_55_2_carry[25]), .CO(
        add_0_root_add_55_2_carry[26]), .S(delta_1[25]) );
  FA1D0 U121 ( .A(N745), .B(N872), .CI(add_0_root_add_76_2_carry[20]), .CO(
        add_0_root_add_76_2_carry[21]), .S(delta_2[20]) );
  AO22D0 U122 ( .A1(N282), .A2(n47), .B1(N115), .B2(n43), .Z(base_plane[3]) );
  INVD1 U123 ( .I(N558), .ZN(delta_1[19]) );
  AO22D0 U124 ( .A1(N281), .A2(n47), .B1(N114), .B2(n42), .Z(base_plane[2]) );
  AO22D0 U125 ( .A1(N283), .A2(n47), .B1(N116), .B2(n43), .Z(base_plane[4]) );
  FA1D0 U126 ( .A(N745), .B(N873), .CI(add_0_root_add_76_2_carry[21]), .CO(
        add_0_root_add_76_2_carry[22]), .S(delta_2[21]) );
  FA1D0 U127 ( .A(N428), .B(N565), .CI(add_0_root_add_55_2_carry[26]), .CO(
        add_0_root_add_55_2_carry[27]), .S(delta_1[26]) );
  FA1D0 U128 ( .A(N428), .B(N566), .CI(add_0_root_add_55_2_carry[27]), .CO(
        add_0_root_add_55_2_carry[28]), .S(delta_1[27]) );
  FA1D0 U129 ( .A(N745), .B(N874), .CI(add_0_root_add_76_2_carry[22]), .CO(
        add_0_root_add_76_2_carry[23]), .S(delta_2[22]) );
  FA1D0 U130 ( .A(N745), .B(N875), .CI(add_0_root_add_76_2_carry[23]), .CO(
        add_0_root_add_76_2_carry[24]), .S(delta_2[23]) );
  XOR3D1 U131 ( .A1(n2), .A2(N1182), .A3(add_0_root_add_97_2_carry[28]), .Z(
        delta_3[28]) );
  AO22D0 U132 ( .A1(N284), .A2(n47), .B1(N117), .B2(divide_mode), .Z(
        base_plane[5]) );
  FA1D0 U133 ( .A(N745), .B(N876), .CI(add_0_root_add_76_2_carry[24]), .CO(
        add_0_root_add_76_2_carry[25]), .S(delta_2[24]) );
  AO22D0 U134 ( .A1(N285), .A2(n47), .B1(N118), .B2(divide_mode), .Z(
        base_plane[6]) );
  INVD1 U135 ( .I(N869), .ZN(delta_2[17]) );
  FA1D0 U136 ( .A(N745), .B(N878), .CI(add_0_root_add_76_2_carry[26]), .CO(
        add_0_root_add_76_2_carry[27]), .S(delta_2[26]) );
  FA1D0 U137 ( .A(N745), .B(N877), .CI(add_0_root_add_76_2_carry[25]), .CO(
        add_0_root_add_76_2_carry[26]), .S(delta_2[25]) );
  FA1D0 U138 ( .A(N745), .B(N878), .CI(add_0_root_add_76_2_carry[27]), .CO(
        add_0_root_add_76_2_carry[28]), .S(delta_2[27]) );
  AO22D0 U139 ( .A1(N280), .A2(n47), .B1(N113), .B2(divide_mode), .Z(
        base_plane[1]) );
  FA1D0 U140 ( .A(n2), .B(N1173), .CI(N1172), .CO(
        add_0_root_add_97_2_carry[17]), .S(delta_3[16]) );
  FA1D0 U141 ( .A(n2), .B(N1174), .CI(add_0_root_add_97_2_carry[17]), .CO(
        add_0_root_add_97_2_carry[18]), .S(delta_3[17]) );
  FA1D0 U142 ( .A(n2), .B(N1175), .CI(add_0_root_add_97_2_carry[18]), .CO(
        add_0_root_add_97_2_carry[19]), .S(delta_3[18]) );
  AO22D0 U143 ( .A1(N286), .A2(n47), .B1(N119), .B2(n42), .Z(base_plane[7]) );
  FA1D0 U144 ( .A(n2), .B(N1176), .CI(add_0_root_add_97_2_carry[19]), .CO(
        add_0_root_add_97_2_carry[20]), .S(delta_3[19]) );
  AO22D0 U145 ( .A1(N287), .A2(n47), .B1(N120), .B2(divide_mode), .Z(
        base_plane[8]) );
  AOI22D1 U146 ( .A1(scaled_product[29]), .A2(n42), .B1(selected_plane[22]), 
        .B2(n47), .ZN(n217) );
  FA1D0 U147 ( .A(n2), .B(N1177), .CI(add_0_root_add_97_2_carry[20]), .CO(
        add_0_root_add_97_2_carry[21]), .S(delta_3[20]) );
  AO22D0 U148 ( .A1(N288), .A2(n47), .B1(N121), .B2(n43), .Z(base_plane[9]) );
  AO22D0 U149 ( .A1(N307), .A2(n47), .B1(N140), .B2(n43), .Z(base_plane[28])
         );
  XOR3D1 U150 ( .A1(N428), .A2(N566), .A3(add_0_root_add_55_2_carry[28]), .Z(
        delta_1[28]) );
  XOR3D1 U151 ( .A1(N745), .A2(N878), .A3(add_0_root_add_76_2_carry[28]), .Z(
        delta_2[28]) );
  FA1D0 U152 ( .A(n2), .B(N1178), .CI(add_0_root_add_97_2_carry[21]), .CO(
        add_0_root_add_97_2_carry[22]), .S(delta_3[21]) );
  AO22D0 U153 ( .A1(N289), .A2(n47), .B1(N122), .B2(n43), .Z(base_plane[10])
         );
  FA1D0 U154 ( .A(n2), .B(N1179), .CI(add_0_root_add_97_2_carry[22]), .CO(
        add_0_root_add_97_2_carry[23]), .S(delta_3[22]) );
  AO22D0 U155 ( .A1(N290), .A2(n47), .B1(N123), .B2(divide_mode), .Z(
        base_plane[11]) );
  INVD1 U156 ( .I(N1172), .ZN(delta_3[15]) );
  FA1D0 U157 ( .A(n2), .B(N1180), .CI(add_0_root_add_97_2_carry[23]), .CO(
        add_0_root_add_97_2_carry[24]), .S(delta_3[23]) );
  AO22D0 U158 ( .A1(N291), .A2(n47), .B1(N124), .B2(n42), .Z(base_plane[12])
         );
  FA1D0 U159 ( .A(n2), .B(N1181), .CI(add_0_root_add_97_2_carry[24]), .CO(
        add_0_root_add_97_2_carry[25]), .S(delta_3[24]) );
  FA1D0 U160 ( .A(n2), .B(N1182), .CI(add_0_root_add_97_2_carry[25]), .CO(
        add_0_root_add_97_2_carry[26]), .S(delta_3[25]) );
  FA1D0 U161 ( .A(n2), .B(N1182), .CI(add_0_root_add_97_2_carry[26]), .CO(
        add_0_root_add_97_2_carry[27]), .S(delta_3[26]) );
  FA1D0 U162 ( .A(n2), .B(N1182), .CI(add_0_root_add_97_2_carry[27]), .CO(
        add_0_root_add_97_2_carry[28]), .S(delta_3[27]) );
  AO22D0 U163 ( .A1(N292), .A2(n47), .B1(N125), .B2(n43), .Z(base_plane[13])
         );
  AO22D0 U164 ( .A1(N293), .A2(n47), .B1(N126), .B2(n42), .Z(base_plane[14])
         );
  AO22D0 U165 ( .A1(N294), .A2(n47), .B1(N127), .B2(n42), .Z(base_plane[15])
         );
  OAI221D0 U166 ( .A1(n1890), .A2(n1700), .B1(n1860), .B2(n1720), .C(n1900), 
        .ZN(normalized_fraction[2]) );
  OA22D0 U167 ( .A1(n1820), .A2(n1880), .B1(n570), .B2(n1840), .Z(n1900) );
  OAI221D0 U168 ( .A1(n1860), .A2(n1700), .B1(n1840), .B2(n1720), .C(n1870), 
        .ZN(normalized_fraction[3]) );
  OA22D0 U169 ( .A1(n1800), .A2(n1880), .B1(n570), .B2(n1820), .Z(n1870) );
  AO22D0 U170 ( .A1(N295), .A2(n47), .B1(N128), .B2(n43), .Z(base_plane[16])
         );
  OAI222D0 U171 ( .A1(n1860), .A2(n570), .B1(n1890), .B2(n1720), .C1(n1880), 
        .C2(n1840), .ZN(normalized_fraction[1]) );
  AO22D0 U172 ( .A1(N296), .A2(n47), .B1(N129), .B2(n42), .Z(base_plane[17])
         );
  AO22D0 U173 ( .A1(N297), .A2(n47), .B1(N130), .B2(n43), .Z(base_plane[18])
         );
  OAI22D1 U174 ( .A1(n1880), .A2(n1860), .B1(n1890), .B2(n570), .ZN(
        normalized_fraction[0]) );
  AO22D0 U175 ( .A1(N298), .A2(n47), .B1(N131), .B2(divide_mode), .Z(
        base_plane[19]) );
  ND3D1 U176 ( .A1(n225), .A2(n220), .A3(n218), .ZN(coefficient[1]) );
  ND3D1 U177 ( .A1(n225), .A2(n224), .A3(n222), .ZN(coefficient[2]) );
  AO22D0 U178 ( .A1(N354), .A2(n47), .B1(N615), .B2(n42), .Z(N726) );
  AO22D0 U179 ( .A1(N354), .A2(n47), .B1(N187), .B2(n43), .Z(N411) );
  ND3D1 U180 ( .A1(n223), .A2(n224), .A3(n218), .ZN(coefficient[3]) );
  AO22D0 U181 ( .A1(N355), .A2(n47), .B1(N188), .B2(divide_mode), .Z(N412) );
  ND3D1 U183 ( .A1(n221), .A2(n219), .A3(n222), .ZN(coefficient[4]) );
  AO22D0 U184 ( .A1(N674), .A2(n47), .B1(N618), .B2(n42), .Z(N729) );
  ND2D1 U185 ( .A1(N355), .A2(N354), .ZN(n220) );
  IND3D1 U186 ( .A1(coefficient[2]), .B1(n219), .B2(n220), .ZN(coefficient[5])
         );
  AO22D0 U187 ( .A1(N674), .A2(n47), .B1(N619), .B2(n43), .Z(N730) );
  AO22D0 U188 ( .A1(N674), .A2(n47), .B1(N620), .B2(divide_mode), .Z(N734) );
  AO22D0 U189 ( .A1(N1096), .A2(n47), .B1(N1036), .B2(n42), .Z(raw_2[22]) );
  ND4D1 U190 ( .A1(n225), .A2(n224), .A3(n221), .A4(n219), .ZN(coefficient[0])
         );
  ND2D1 U191 ( .A1(N162), .A2(N734), .ZN(n226) );
  ND2D1 U192 ( .A1(N164), .A2(N419), .ZN(n228) );
  ND2D1 U193 ( .A1(n218), .A2(n219), .ZN(coefficient[6]) );
  AO22D0 U194 ( .A1(N2150), .A2(n47), .B1(N2150), .B2(n42), .Z(N697) );
  AO22D0 U195 ( .A1(N2150), .A2(n47), .B1(N2150), .B2(n43), .Z(N382) );
  AO22D0 U197 ( .A1(N1067), .A2(n47), .B1(N1007), .B2(divide_mode), .Z(
        raw_1[22]) );
  FA1D0 U198 ( .A(N164), .B(N164), .CI(N162), .CO(N1008), .S(N1007) );
  AO22D0 U199 ( .A1(N648), .A2(n47), .B1(N164), .B2(n42), .Z(N700) );
  INVD1 U200 ( .I(sub_91_carry_23_), .ZN(N1102) );
  INVD1 U201 ( .I(sub_90_carry_23_), .ZN(N1073) );
  ND2D1 U203 ( .A1(N355), .A2(N705), .ZN(n227) );
  ND2D1 U205 ( .A1(N953), .A2(N390), .ZN(n229) );
  IND2D1 U206 ( .A1(N162), .B1(n54), .ZN(N2180) );
  AOI22D1 U207 ( .A1(scaled_product[16]), .A2(n42), .B1(selected_plane[9]), 
        .B2(n47), .ZN(n1770) );
  AOI22D1 U208 ( .A1(scaled_product[14]), .A2(n42), .B1(selected_plane[7]), 
        .B2(n47), .ZN(n1690) );
  AOI22D1 U209 ( .A1(scaled_product[13]), .A2(n43), .B1(selected_plane[6]), 
        .B2(n47), .ZN(n1750) );
  AOI22D1 U210 ( .A1(scaled_product[11]), .A2(divide_mode), .B1(
        selected_plane[4]), .B2(n47), .ZN(n1800) );
  AOI22D1 U211 ( .A1(scaled_product[9]), .A2(n43), .B1(selected_plane[2]), 
        .B2(n47), .ZN(n1840) );
  AO22D0 U212 ( .A1(N487), .A2(n54), .B1(N164), .B2(N395), .Z(N514) );
  AO22D0 U213 ( .A1(N432), .A2(n5010), .B1(N953), .B2(N366), .Z(N459) );
  AO22D0 U214 ( .A1(N488), .A2(n54), .B1(N164), .B2(N396), .Z(N515) );
  AO22D0 U215 ( .A1(N433), .A2(n5010), .B1(N953), .B2(N367), .Z(N460) );
  AO22D0 U217 ( .A1(N486), .A2(n54), .B1(N164), .B2(N394), .Z(N513) );
  AO22D0 U218 ( .A1(N431), .A2(n5010), .B1(N953), .B2(N365), .Z(N458) );
  AO22D0 U219 ( .A1(N489), .A2(n54), .B1(N164), .B2(N397), .Z(N516) );
  AO22D0 U220 ( .A1(N434), .A2(n5010), .B1(N953), .B2(N2010), .Z(N461) );
  AO22D0 U221 ( .A1(N490), .A2(n54), .B1(N164), .B2(N398), .Z(N517) );
  AO22D0 U222 ( .A1(N435), .A2(n5010), .B1(N953), .B2(N369), .Z(N462) );
  AO22D0 U223 ( .A1(N430), .A2(n5010), .B1(N953), .B2(N364), .Z(N457) );
  AO22D0 U224 ( .A1(N491), .A2(n54), .B1(N164), .B2(N399), .Z(N518) );
  AO22D0 U225 ( .A1(N436), .A2(n5010), .B1(N953), .B2(N370), .Z(N463) );
  AO22D0 U226 ( .A1(N485), .A2(n54), .B1(N164), .B2(N393), .Z(N512) );
  AO22D0 U227 ( .A1(N802), .A2(n53), .B1(N162), .B2(N711), .Z(N828) );
  AO22D0 U228 ( .A1(N749), .A2(n49), .B1(N355), .B2(N682), .Z(N775) );
  AO22D0 U229 ( .A1(N803), .A2(n53), .B1(N162), .B2(N712), .Z(N829) );
  AO22D0 U230 ( .A1(N750), .A2(n49), .B1(N355), .B2(N683), .Z(N776) );
  AO22D0 U231 ( .A1(N801), .A2(n53), .B1(N162), .B2(N710), .Z(N827) );
  AO22D0 U232 ( .A1(N748), .A2(n49), .B1(N355), .B2(N1990), .Z(N774) );
  AO22D0 U233 ( .A1(N804), .A2(n53), .B1(N162), .B2(N713), .Z(N830) );
  AO22D0 U234 ( .A1(N751), .A2(n49), .B1(N355), .B2(N2020), .Z(N777) );
  AO22D0 U235 ( .A1(N492), .A2(n54), .B1(N164), .B2(N400), .Z(N519) );
  AO22D0 U236 ( .A1(N437), .A2(n5010), .B1(N953), .B2(N2040), .Z(N464) );
  AO22D0 U237 ( .A1(N493), .A2(n54), .B1(N164), .B2(N401), .Z(N520) );
  AO22D0 U238 ( .A1(N438), .A2(n5010), .B1(N953), .B2(N372), .Z(N465) );
  AO22D0 U239 ( .A1(N805), .A2(n53), .B1(N162), .B2(N714), .Z(N831) );
  AO22D0 U240 ( .A1(N752), .A2(n49), .B1(N355), .B2(N685), .Z(N778) );
  AO22D0 U241 ( .A1(N747), .A2(n49), .B1(N355), .B2(N680), .Z(N773) );
  AO22D0 U242 ( .A1(N806), .A2(n53), .B1(N162), .B2(N715), .Z(N832) );
  AO22D0 U243 ( .A1(N753), .A2(n49), .B1(N355), .B2(N686), .Z(N779) );
  AO22D0 U244 ( .A1(N800), .A2(n53), .B1(N162), .B2(N709), .Z(N826) );
  AO22D0 U245 ( .A1(N494), .A2(n54), .B1(N164), .B2(N402), .Z(N521) );
  AO22D0 U246 ( .A1(N439), .A2(n5010), .B1(N953), .B2(N373), .Z(N466) );
  AO22D0 U247 ( .A1(N495), .A2(n54), .B1(N164), .B2(N403), .Z(N522) );
  AO22D0 U248 ( .A1(N440), .A2(n5010), .B1(N953), .B2(N2070), .Z(N467) );
  AO22D0 U249 ( .A1(N496), .A2(n54), .B1(N164), .B2(N404), .Z(N523) );
  AO22D0 U250 ( .A1(N441), .A2(n5010), .B1(N953), .B2(N375), .Z(N468) );
  AO22D0 U251 ( .A1(N497), .A2(n54), .B1(N164), .B2(N405), .Z(N524) );
  AO22D0 U252 ( .A1(N442), .A2(n5010), .B1(N953), .B2(N376), .Z(N469) );
  AO22D0 U253 ( .A1(N498), .A2(n54), .B1(N164), .B2(N406), .Z(N525) );
  AO22D0 U254 ( .A1(N443), .A2(n5010), .B1(N953), .B2(N2100), .Z(N470) );
  AO22D0 U255 ( .A1(N499), .A2(n54), .B1(N164), .B2(N407), .Z(N526) );
  AO22D0 U256 ( .A1(N444), .A2(n5010), .B1(N953), .B2(N378), .Z(N471) );
  AO22D0 U257 ( .A1(N500), .A2(n54), .B1(N164), .B2(N408), .Z(N527) );
  AO22D0 U258 ( .A1(N445), .A2(n5010), .B1(N953), .B2(N379), .Z(N472) );
  AO22D0 U259 ( .A1(N501), .A2(n54), .B1(N164), .B2(N409), .Z(N528) );
  AO22D0 U260 ( .A1(N446), .A2(n5010), .B1(N953), .B2(N2130), .Z(N473) );
  AO22D0 U261 ( .A1(N502), .A2(n54), .B1(N164), .B2(N410), .Z(N529) );
  AO22D0 U262 ( .A1(N447), .A2(n5010), .B1(N953), .B2(N381), .Z(N474) );
  AO22D0 U263 ( .A1(N503), .A2(n54), .B1(N164), .B2(N411), .Z(N530) );
  AO22D0 U264 ( .A1(N448), .A2(n5010), .B1(N953), .B2(N382), .Z(N475) );
  AO22D0 U265 ( .A1(N504), .A2(n54), .B1(N164), .B2(N412), .Z(N531) );
  AO22D0 U266 ( .A1(N449), .A2(n5010), .B1(N953), .B2(N162), .Z(N476) );
  AO22D0 U267 ( .A1(N505), .A2(n54), .B1(N164), .B2(N413), .Z(N532) );
  AO22D0 U268 ( .A1(N450), .A2(n5010), .B1(N953), .B2(N384), .Z(N477) );
  AO22D0 U269 ( .A1(N807), .A2(n53), .B1(N162), .B2(N716), .Z(N833) );
  AO22D0 U270 ( .A1(N754), .A2(n49), .B1(N355), .B2(N2050), .Z(N780) );
  AO22D0 U271 ( .A1(N506), .A2(n54), .B1(N164), .B2(N414), .Z(N533) );
  AO22D0 U272 ( .A1(N451), .A2(n5010), .B1(N953), .B2(N385), .Z(N478) );
  AO22D0 U273 ( .A1(N507), .A2(n54), .B1(N164), .B2(N415), .Z(N534) );
  AO22D0 U274 ( .A1(N452), .A2(n5010), .B1(N953), .B2(N386), .Z(N479) );
  AO22D0 U275 ( .A1(N808), .A2(n53), .B1(N162), .B2(N717), .Z(N834) );
  AO22D0 U276 ( .A1(N755), .A2(n49), .B1(N355), .B2(N688), .Z(N781) );
  IOA21D1 U277 ( .A1(N508), .A2(n54), .B(n228), .ZN(N535) );
  IOA21D1 U278 ( .A1(N453), .A2(n5010), .B(n229), .ZN(N480) );
  AO22D0 U279 ( .A1(N1134), .A2(n5210), .B1(N2150), .B2(raw_2[6]), .Z(
        term_2[2]) );
  AO22D0 U280 ( .A1(N1108), .A2(n48), .B1(N354), .B2(raw_1[6]), .Z(term_1[2])
         );
  AO22D0 U281 ( .A1(N1135), .A2(n5210), .B1(N2150), .B2(raw_2[7]), .Z(
        term_2[3]) );
  AO22D0 U282 ( .A1(N1109), .A2(n48), .B1(N354), .B2(raw_1[7]), .Z(term_1[3])
         );
  AO22D0 U283 ( .A1(N1133), .A2(n5210), .B1(N2150), .B2(raw_2[5]), .Z(
        term_2[1]) );
  AO22D0 U284 ( .A1(N1107), .A2(n48), .B1(N354), .B2(N2000), .Z(term_1[1]) );
  AO22D0 U285 ( .A1(N809), .A2(n53), .B1(N162), .B2(N718), .Z(N835) );
  AO22D0 U286 ( .A1(N756), .A2(n49), .B1(N355), .B2(N689), .Z(N782) );
  IOA21D1 U287 ( .A1(N509), .A2(n54), .B(n228), .ZN(N536) );
  IOA21D1 U288 ( .A1(N454), .A2(n5010), .B(n229), .ZN(N481) );
  AO22D0 U289 ( .A1(N1110), .A2(n48), .B1(N354), .B2(raw_1[8]), .Z(term_1[4])
         );
  AO22D0 U290 ( .A1(N1136), .A2(n5210), .B1(N2150), .B2(raw_2[8]), .Z(
        term_2[4]) );
  AO22D0 U292 ( .A1(N810), .A2(n53), .B1(N162), .B2(N719), .Z(N836) );
  AO22D0 U293 ( .A1(N757), .A2(n49), .B1(N355), .B2(N2080), .Z(N783) );
  AO22D0 U295 ( .A1(N811), .A2(n53), .B1(N162), .B2(N720), .Z(N837) );
  AO22D0 U296 ( .A1(N758), .A2(n49), .B1(N355), .B2(N691), .Z(N784) );
  AO22D0 U297 ( .A1(N812), .A2(n53), .B1(N162), .B2(N721), .Z(N838) );
  AO22D0 U298 ( .A1(N759), .A2(n49), .B1(N355), .B2(N692), .Z(N785) );
  AO22D0 U299 ( .A1(N813), .A2(n53), .B1(N162), .B2(N722), .Z(N839) );
  AO22D0 U300 ( .A1(N760), .A2(n49), .B1(N355), .B2(N2110), .Z(N786) );
  AO22D0 U301 ( .A1(N814), .A2(n53), .B1(N162), .B2(N723), .Z(N840) );
  AO22D0 U302 ( .A1(N761), .A2(n49), .B1(N355), .B2(N694), .Z(N787) );
  AO22D0 U303 ( .A1(N815), .A2(n53), .B1(N162), .B2(N724), .Z(N841) );
  AO22D0 U304 ( .A1(N762), .A2(n49), .B1(N355), .B2(N695), .Z(N788) );
  AO22D0 U305 ( .A1(N816), .A2(n53), .B1(N162), .B2(N725), .Z(N842) );
  AO22D0 U306 ( .A1(N763), .A2(n49), .B1(N355), .B2(N2140), .Z(N789) );
  AO22D0 U307 ( .A1(N817), .A2(n53), .B1(N162), .B2(N726), .Z(N843) );
  AO22D0 U308 ( .A1(N764), .A2(n49), .B1(N355), .B2(N697), .Z(N790) );
  AO22D0 U309 ( .A1(N818), .A2(n53), .B1(N162), .B2(N727), .Z(N844) );
  AO22D0 U310 ( .A1(N765), .A2(n49), .B1(N355), .B2(N698), .Z(N791) );
  AO22D0 U311 ( .A1(N819), .A2(n53), .B1(N162), .B2(N728), .Z(N845) );
  AO22D0 U312 ( .A1(N766), .A2(n49), .B1(N355), .B2(N699), .Z(N792) );
  AO22D0 U313 ( .A1(N1137), .A2(n5210), .B1(N2150), .B2(raw_2[9]), .Z(
        term_2[5]) );
  AO22D0 U314 ( .A1(N1111), .A2(n48), .B1(N354), .B2(raw_1[9]), .Z(term_1[5])
         );
  AO22D0 U315 ( .A1(N1132), .A2(n5210), .B1(N2150), .B2(raw_2[4]), .Z(
        term_2[0]) );
  IOA21D1 U316 ( .A1(N510), .A2(n54), .B(n228), .ZN(N537) );
  IOA21D1 U317 ( .A1(N455), .A2(n5010), .B(n229), .ZN(N482) );
  AO22D0 U318 ( .A1(N767), .A2(n49), .B1(N355), .B2(N700), .Z(N793) );
  AO22D0 U319 ( .A1(N820), .A2(n53), .B1(N162), .B2(N729), .Z(N846) );
  AO22D0 U320 ( .A1(N1106), .A2(n48), .B1(N354), .B2(N1990), .Z(term_1[0]) );
  AO22D0 U321 ( .A1(N1112), .A2(n48), .B1(N354), .B2(N2050), .Z(term_1[6]) );
  AO22D0 U322 ( .A1(N1138), .A2(n5210), .B1(N2150), .B2(raw_2[10]), .Z(
        term_2[6]) );
  AO22D0 U323 ( .A1(N768), .A2(n49), .B1(N355), .B2(N701), .Z(N794) );
  AO22D0 U324 ( .A1(N821), .A2(n53), .B1(N162), .B2(N730), .Z(N847) );
  IOA21D1 U325 ( .A1(N769), .A2(n49), .B(n227), .ZN(N795) );
  IOA21D1 U326 ( .A1(N822), .A2(n53), .B(n226), .ZN(N848) );
  IOA21D1 U327 ( .A1(N823), .A2(n53), .B(n226), .ZN(N849) );
  IOA21D1 U328 ( .A1(N770), .A2(n49), .B(n227), .ZN(N796) );
  IOA21D1 U329 ( .A1(N824), .A2(n53), .B(n226), .ZN(N850) );
  IOA21D1 U330 ( .A1(N771), .A2(n49), .B(n227), .ZN(N797) );
  AO22D0 U332 ( .A1(N1139), .A2(n5210), .B1(N2150), .B2(raw_2[11]), .Z(
        term_2[7]) );
  AO22D0 U333 ( .A1(N1113), .A2(n48), .B1(N354), .B2(N2060), .Z(term_1[7]) );
  AO22D0 U334 ( .A1(N1140), .A2(n5210), .B1(N2150), .B2(raw_2[12]), .Z(
        term_2[8]) );
  AO22D0 U335 ( .A1(N1114), .A2(n48), .B1(N354), .B2(raw_1[12]), .Z(term_1[8])
         );
  AO22D0 U336 ( .A1(N1141), .A2(n5210), .B1(N2150), .B2(raw_2[13]), .Z(
        term_2[9]) );
  AO22D0 U337 ( .A1(N1115), .A2(n48), .B1(N354), .B2(raw_1[13]), .Z(term_1[9])
         );
  AO22D0 U338 ( .A1(N1142), .A2(n5210), .B1(N2150), .B2(raw_2[14]), .Z(
        term_2[10]) );
  AO22D0 U339 ( .A1(N1116), .A2(n48), .B1(N354), .B2(N2090), .Z(term_1[10]) );
  AO22D0 U340 ( .A1(N1143), .A2(n5210), .B1(N2150), .B2(raw_2[15]), .Z(
        term_2[11]) );
  AO22D0 U341 ( .A1(N1117), .A2(n48), .B1(N354), .B2(raw_1[15]), .Z(term_1[11]) );
  AO22D0 U342 ( .A1(N1144), .A2(n5210), .B1(N2150), .B2(raw_2[16]), .Z(
        term_2[12]) );
  AO22D0 U343 ( .A1(N1118), .A2(n48), .B1(N354), .B2(N2110), .Z(term_1[12]) );
  AO22D0 U344 ( .A1(N1145), .A2(n5210), .B1(N2150), .B2(raw_2[17]), .Z(
        term_2[13]) );
  AO22D0 U345 ( .A1(N1119), .A2(n48), .B1(N354), .B2(raw_1[17]), .Z(term_1[13]) );
  AO22D0 U346 ( .A1(N1146), .A2(n5210), .B1(N2150), .B2(raw_2[18]), .Z(
        term_2[14]) );
  AO22D0 U347 ( .A1(N1120), .A2(n48), .B1(N354), .B2(raw_1[18]), .Z(term_1[14]) );
  AO22D0 U348 ( .A1(N1147), .A2(n5210), .B1(N2150), .B2(raw_2[19]), .Z(
        term_2[15]) );
  AO22D0 U349 ( .A1(N1121), .A2(n48), .B1(N354), .B2(N2140), .Z(term_1[15]) );
  AO22D0 U350 ( .A1(N1122), .A2(n48), .B1(N354), .B2(raw_1[20]), .Z(term_1[16]) );
  AO22D0 U351 ( .A1(N1148), .A2(n5210), .B1(N2150), .B2(raw_2[20]), .Z(
        term_2[16]) );
  AO22D0 U352 ( .A1(N1123), .A2(n48), .B1(N354), .B2(raw_1[21]), .Z(term_1[17]) );
  AO22D0 U353 ( .A1(N1149), .A2(n5210), .B1(N2150), .B2(raw_2[21]), .Z(
        term_2[17]) );
  AO22D0 U354 ( .A1(N1124), .A2(n48), .B1(N354), .B2(raw_1[22]), .Z(term_1[18]) );
  AO22D0 U355 ( .A1(N1150), .A2(n5210), .B1(N2150), .B2(raw_2[22]), .Z(
        term_2[18]) );
  AO22D0 U356 ( .A1(N1125), .A2(n48), .B1(N354), .B2(raw_1[23]), .Z(term_1[19]) );
  AO22D0 U357 ( .A1(N1151), .A2(n5210), .B1(N2150), .B2(raw_2[23]), .Z(
        term_2[19]) );
  AO22D0 U358 ( .A1(N1126), .A2(n48), .B1(N354), .B2(raw_1[24]), .Z(term_1[20]) );
  AO22D0 U359 ( .A1(N1152), .A2(n5210), .B1(N2150), .B2(raw_2[24]), .Z(
        term_2[20]) );
  AO22D0 U360 ( .A1(N1153), .A2(n5210), .B1(N2150), .B2(raw_2[25]), .Z(
        term_2[21]) );
  AO22D0 U361 ( .A1(N1127), .A2(n48), .B1(N354), .B2(n1), .Z(term_1[21]) );
  AO22D0 U362 ( .A1(N1128), .A2(n48), .B1(N354), .B2(n1), .Z(term_1[22]) );
  AO22D0 U363 ( .A1(N1154), .A2(n5210), .B1(N2150), .B2(raw_2[26]), .Z(
        term_2[22]) );
  AO22D0 U364 ( .A1(N279), .A2(n47), .B1(N112), .B2(n42), .Z(base_plane[0]) );
  AO22D0 U365 ( .A1(N1155), .A2(n5210), .B1(N2150), .B2(raw_2[27]), .Z(
        term_2[23]) );
  AO22D0 U366 ( .A1(N1129), .A2(n48), .B1(N354), .B2(n1), .Z(term_1[23]) );
  ND3D1 U368 ( .A1(n49), .A2(n5010), .A3(N354), .ZN(n221) );
  ND3D1 U369 ( .A1(N354), .A2(n5010), .A3(N355), .ZN(n223) );
  AO22D0 U370 ( .A1(n49), .A2(n47), .B1(N616), .B2(n43), .Z(N727) );
  ND3D1 U371 ( .A1(N354), .A2(n49), .A3(N953), .ZN(n224) );
  ND3D1 U372 ( .A1(N355), .A2(n48), .A3(N953), .ZN(n225) );
  AO22D0 U373 ( .A1(n5010), .A2(n47), .B1(N190), .B2(n43), .Z(N414) );
  AO22D0 U374 ( .A1(n5010), .A2(n47), .B1(N189), .B2(n42), .Z(N413) );
  AO22D0 U375 ( .A1(n5010), .A2(n47), .B1(N191), .B2(divide_mode), .Z(N415) );
  AO22D0 U376 ( .A1(n48), .A2(n47), .B1(N1034), .B2(n43), .Z(raw_2[20]) );
  AO22D0 U377 ( .A1(n49), .A2(n47), .B1(N617), .B2(divide_mode), .Z(N728) );
  ND3D1 U378 ( .A1(n49), .A2(n5010), .A3(n48), .ZN(n219) );
  AO22D0 U380 ( .A1(n5010), .A2(n47), .B1(N192), .B2(n42), .Z(N419) );
  AO22D0 U381 ( .A1(n48), .A2(n47), .B1(N1035), .B2(divide_mode), .Z(raw_2[21]) );
  AO22D0 U382 ( .A1(n53), .A2(n47), .B1(n53), .B2(n43), .Z(N698) );
  FA1D0 U384 ( .A(N953), .B(n567), .CI(N354), .CO(sub_91_carry_23_), .S(N1096)
         );
  INVD1 U386 ( .I(N953), .ZN(n567) );
  AO22D0 U387 ( .A1(n5210), .A2(n47), .B1(n5210), .B2(n42), .Z(raw_1[20]) );
  FA1D0 U390 ( .A(N164), .B(n550), .CI(N2150), .CO(sub_90_carry_23_), .S(N1067) );
  INVD1 U392 ( .I(N164), .ZN(n550) );
  AO22D0 U393 ( .A1(n54), .A2(n47), .B1(n54), .B2(n42), .Z(N384) );
  AO22D0 U395 ( .A1(n53), .A2(n47), .B1(N162), .B2(divide_mode), .Z(N699) );
  AO22D0 U396 ( .A1(n5210), .A2(n47), .B1(N2150), .B2(n43), .Z(raw_1[21]) );
  AO22D0 U397 ( .A1(n54), .A2(n47), .B1(N164), .B2(n43), .Z(N385) );
  XOR3D1 U398 ( .A1(N355), .A2(n43), .A3(n53), .Z(N745) );
  XOR3D1 U399 ( .A1(N953), .A2(n42), .A3(n54), .Z(N428) );
  AOI22D1 U401 ( .A1(scaled_product[8]), .A2(n43), .B1(selected_plane[1]), 
        .B2(n47), .ZN(n1860) );
  AOI22D1 U402 ( .A1(scaled_product[7]), .A2(n43), .B1(selected_plane[0]), 
        .B2(n47), .ZN(n1890) );
  AO22D0 U403 ( .A1(N1960), .A2(n47), .B1(N1960), .B2(n43), .Z(N363) );
  AO22D0 U404 ( .A1(N1950), .A2(n47), .B1(N1950), .B2(n42), .Z(N362) );
  AO22D0 U405 ( .A1(N335), .A2(n47), .B1(N168), .B2(n42), .Z(N392) );
  AO22D0 U406 ( .A1(N334), .A2(n47), .B1(N167), .B2(n42), .Z(N391) );
  AO22D0 U407 ( .A1(N1970), .A2(n47), .B1(N1970), .B2(n43), .Z(N364) );
  AO22D0 U408 ( .A1(N336), .A2(n47), .B1(N169), .B2(n43), .Z(N393) );
  AO22D0 U409 ( .A1(N1950), .A2(n47), .B1(N1950), .B2(n42), .Z(N677) );
  AO22D0 U410 ( .A1(N1970), .A2(n47), .B1(N1970), .B2(n42), .Z(N679) );
  AO22D0 U411 ( .A1(N1960), .A2(n47), .B1(N1960), .B2(n43), .Z(N678) );
  AO22D0 U412 ( .A1(N1980), .A2(n47), .B1(N1980), .B2(n42), .Z(N365) );
  AO22D0 U413 ( .A1(N337), .A2(n47), .B1(N170), .B2(divide_mode), .Z(N394) );
  AO22D0 U414 ( .A1(N334), .A2(n47), .B1(N595), .B2(n43), .Z(N706) );
  AO22D0 U415 ( .A1(N336), .A2(n47), .B1(N597), .B2(n42), .Z(N708) );
  AO22D0 U416 ( .A1(N335), .A2(n47), .B1(N596), .B2(divide_mode), .Z(N707) );
  AO22D0 U417 ( .A1(N338), .A2(n47), .B1(N171), .B2(n42), .Z(N395) );
  AO22D0 U418 ( .A1(N338), .A2(n47), .B1(N599), .B2(divide_mode), .Z(N710) );
  AO22D0 U419 ( .A1(N339), .A2(n47), .B1(N172), .B2(n43), .Z(N396) );
  AO22D0 U420 ( .A1(N1980), .A2(n47), .B1(N1980), .B2(n42), .Z(N680) );
  AO22D0 U421 ( .A1(N1990), .A2(n47), .B1(N1990), .B2(n42), .Z(N366) );
  AO22D0 U422 ( .A1(N337), .A2(n47), .B1(N598), .B2(n43), .Z(N709) );
  AO22D0 U423 ( .A1(N339), .A2(n47), .B1(N600), .B2(n42), .Z(N711) );
  AO22D0 U425 ( .A1(N340), .A2(n47), .B1(N173), .B2(divide_mode), .Z(N397) );
  AO22D0 U426 ( .A1(N340), .A2(n47), .B1(N601), .B2(n43), .Z(N712) );
  AO22D0 U427 ( .A1(N2000), .A2(n47), .B1(N2000), .B2(n43), .Z(N367) );
  AO22D0 U428 ( .A1(N1980), .A2(n42), .B1(N1980), .B2(n47), .Z(raw_1[3]) );
  AO22D0 U429 ( .A1(N1970), .A2(n43), .B1(N1970), .B2(n47), .Z(raw_1[2]) );
  AO22D0 U430 ( .A1(N1960), .A2(n43), .B1(N1960), .B2(n47), .Z(raw_1[1]) );
  AO22D0 U432 ( .A1(N337), .A2(n47), .B1(N1017), .B2(divide_mode), .Z(raw_2[3]) );
  AO22D0 U433 ( .A1(N336), .A2(n47), .B1(N1016), .B2(n43), .Z(raw_2[2]) );
  AO22D0 U434 ( .A1(N335), .A2(n47), .B1(N1015), .B2(n42), .Z(raw_2[1]) );
  AO22D0 U435 ( .A1(N334), .A2(n47), .B1(N1014), .B2(n43), .Z(raw_2[0]) );
  AO22D0 U436 ( .A1(N341), .A2(n47), .B1(N602), .B2(divide_mode), .Z(N713) );
  AO22D0 U437 ( .A1(N341), .A2(n47), .B1(N174), .B2(n42), .Z(N398) );
  AO22D0 U438 ( .A1(N2000), .A2(n47), .B1(N2000), .B2(n42), .Z(N682) );
  AO22D0 U439 ( .A1(N342), .A2(n47), .B1(N175), .B2(n43), .Z(N399) );
  AO22D0 U440 ( .A1(N339), .A2(n47), .B1(N1019), .B2(n43), .Z(raw_2[5]) );
  AO22D0 U441 ( .A1(N338), .A2(n47), .B1(N1018), .B2(n42), .Z(raw_2[4]) );
  AO22D0 U442 ( .A1(N342), .A2(n47), .B1(N603), .B2(n42), .Z(N714) );
  AO22D0 U443 ( .A1(N340), .A2(n47), .B1(N1020), .B2(divide_mode), .Z(raw_2[6]) );
  AO22D0 U445 ( .A1(N2010), .A2(n47), .B1(N2010), .B2(n43), .Z(N683) );
  AO22D0 U446 ( .A1(N343), .A2(n47), .B1(N604), .B2(n43), .Z(N715) );
  AO22D0 U448 ( .A1(N341), .A2(n47), .B1(N1021), .B2(n42), .Z(raw_2[7]) );
  AO22D0 U449 ( .A1(N343), .A2(n47), .B1(N176), .B2(divide_mode), .Z(N400) );
  AO22D0 U451 ( .A1(N342), .A2(n47), .B1(N1022), .B2(n43), .Z(raw_2[8]) );
  AO22D0 U452 ( .A1(N2020), .A2(n47), .B1(N2020), .B2(n42), .Z(N369) );
  AO22D0 U454 ( .A1(N344), .A2(n47), .B1(N177), .B2(n42), .Z(N401) );
  AO22D0 U455 ( .A1(N344), .A2(n47), .B1(N605), .B2(divide_mode), .Z(N716) );
  AO22D0 U456 ( .A1(N2010), .A2(n42), .B1(N2010), .B2(n47), .Z(raw_1[6]) );
  AO22D0 U457 ( .A1(N343), .A2(n47), .B1(N1023), .B2(divide_mode), .Z(raw_2[9]) );
  AO22D0 U458 ( .A1(N345), .A2(n47), .B1(N178), .B2(n43), .Z(N402) );
  AO22D0 U459 ( .A1(N345), .A2(n47), .B1(N606), .B2(n42), .Z(N717) );
  AO22D0 U460 ( .A1(N344), .A2(n47), .B1(N1024), .B2(divide_mode), .Z(
        raw_2[10]) );
  AO22D0 U461 ( .A1(N2030), .A2(n47), .B1(N2030), .B2(n43), .Z(N370) );
  AO22D0 U462 ( .A1(N346), .A2(n47), .B1(N179), .B2(divide_mode), .Z(N403) );
  AO22D0 U463 ( .A1(N2030), .A2(n47), .B1(N2030), .B2(n42), .Z(N685) );
  AO22D0 U464 ( .A1(N346), .A2(n47), .B1(N607), .B2(n43), .Z(N718) );
  AO22D0 U465 ( .A1(N2020), .A2(n43), .B1(N2020), .B2(n47), .Z(raw_1[7]) );
  AO22D0 U466 ( .A1(N347), .A2(n47), .B1(N180), .B2(n42), .Z(N404) );
  AO22D0 U467 ( .A1(N347), .A2(n47), .B1(N608), .B2(divide_mode), .Z(N719) );
  AO22D0 U468 ( .A1(N348), .A2(n47), .B1(N609), .B2(n42), .Z(N720) );
  AO22D0 U469 ( .A1(N348), .A2(n47), .B1(N181), .B2(n43), .Z(N405) );
  AO22D0 U470 ( .A1(N345), .A2(n47), .B1(N1025), .B2(n42), .Z(raw_2[11]) );
  AO22D0 U471 ( .A1(N349), .A2(n47), .B1(N610), .B2(n43), .Z(N721) );
  AO22D0 U472 ( .A1(N349), .A2(n47), .B1(N182), .B2(divide_mode), .Z(N406) );
  AO22D0 U473 ( .A1(N2040), .A2(n47), .B1(N2040), .B2(n43), .Z(N686) );
  INVD1 U474 ( .I(N354), .ZN(n48) );
  AO22D0 U475 ( .A1(N346), .A2(n47), .B1(N1026), .B2(n43), .Z(raw_2[12]) );
  AO22D0 U476 ( .A1(N350), .A2(n47), .B1(N611), .B2(divide_mode), .Z(N722) );
  AO22D0 U477 ( .A1(N2030), .A2(n43), .B1(N2030), .B2(n47), .Z(raw_1[8]) );
  AO22D0 U478 ( .A1(N350), .A2(n47), .B1(N183), .B2(n42), .Z(N407) );
  AO22D0 U480 ( .A1(N347), .A2(n47), .B1(N1027), .B2(divide_mode), .Z(
        raw_2[13]) );
  AO22D0 U481 ( .A1(N351), .A2(n47), .B1(N612), .B2(n42), .Z(N723) );
  AO22D0 U482 ( .A1(N351), .A2(n47), .B1(N184), .B2(n43), .Z(N408) );
  AO22D0 U483 ( .A1(N348), .A2(n47), .B1(N1028), .B2(n42), .Z(raw_2[14]) );
  AO22D0 U484 ( .A1(N352), .A2(n47), .B1(N613), .B2(n43), .Z(N724) );
  AO22D0 U485 ( .A1(N352), .A2(n47), .B1(N185), .B2(divide_mode), .Z(N409) );
  AO22D0 U486 ( .A1(N349), .A2(n47), .B1(N1029), .B2(n43), .Z(raw_2[15]) );
  AO22D0 U487 ( .A1(N353), .A2(n47), .B1(N614), .B2(divide_mode), .Z(N725) );
  AO22D0 U488 ( .A1(N353), .A2(n47), .B1(N186), .B2(n42), .Z(N410) );
  AO22D0 U489 ( .A1(N2040), .A2(n42), .B1(N2040), .B2(n47), .Z(raw_1[9]) );
  AO22D0 U490 ( .A1(N2050), .A2(n47), .B1(N2050), .B2(n42), .Z(N372) );
  AO22D0 U491 ( .A1(N350), .A2(n47), .B1(N1030), .B2(divide_mode), .Z(
        raw_2[16]) );
  AO22D0 U493 ( .A1(N351), .A2(n47), .B1(N1031), .B2(n42), .Z(raw_2[17]) );
  AO22D0 U494 ( .A1(N352), .A2(n47), .B1(N1032), .B2(n43), .Z(raw_2[18]) );
  AO22D0 U495 ( .A1(N353), .A2(n47), .B1(N1033), .B2(divide_mode), .Z(
        raw_2[19]) );
  AO22D0 U496 ( .A1(N2060), .A2(n47), .B1(N2060), .B2(n43), .Z(N373) );
  AO22D0 U498 ( .A1(N2060), .A2(n47), .B1(N2060), .B2(n42), .Z(N688) );
  AO22D0 U500 ( .A1(N2070), .A2(n47), .B1(N2070), .B2(n43), .Z(N689) );
  AO22D0 U502 ( .A1(N2080), .A2(n47), .B1(N2080), .B2(n42), .Z(N375) );
  AO22D0 U504 ( .A1(N2070), .A2(n42), .B1(N2070), .B2(n47), .Z(raw_1[12]) );
  AO22D0 U505 ( .A1(N2090), .A2(n47), .B1(N2090), .B2(n42), .Z(N691) );
  AO22D0 U506 ( .A1(N2090), .A2(n47), .B1(N2090), .B2(n43), .Z(N376) );
  AO22D0 U507 ( .A1(N2080), .A2(n42), .B1(N2080), .B2(n47), .Z(raw_1[13]) );
  AO22D0 U508 ( .A1(N2100), .A2(n47), .B1(N2100), .B2(n43), .Z(N692) );
  AO22D0 U512 ( .A1(N2110), .A2(n47), .B1(N2110), .B2(n42), .Z(N378) );
  AO22D0 U513 ( .A1(N2100), .A2(n47), .B1(N2100), .B2(n43), .Z(raw_1[15]) );
  AO22D0 U514 ( .A1(N2120), .A2(n47), .B1(N2120), .B2(n42), .Z(N694) );
  AO22D0 U515 ( .A1(N2120), .A2(n47), .B1(N2120), .B2(n43), .Z(N379) );
  AO22D0 U517 ( .A1(N2130), .A2(n47), .B1(N2130), .B2(n43), .Z(N695) );
  AO22D0 U519 ( .A1(N2120), .A2(n47), .B1(N2120), .B2(n42), .Z(raw_1[17]) );
  AO22D0 U521 ( .A1(N2140), .A2(n47), .B1(N2140), .B2(n42), .Z(N381) );
  AO22D0 U522 ( .A1(N2130), .A2(n47), .B1(N2130), .B2(n43), .Z(raw_1[18]) );
  TIEH U567 ( .Z(net9929) );
  XNR2D1 U568 ( .A1(N162), .A2(N164), .ZN(N2170) );
  CKXOR2D1 U569 ( .A1(N162), .A2(N164), .Z(N50) );
  CKND0 U571 ( .I(N162), .ZN(N648) );
  CKND0 U572 ( .I(N355), .ZN(N674) );
  AN2XD1 U573 ( .A1(N648), .A2(n47), .Z(N705) );
  AN2XD1 U574 ( .A1(n54), .A2(n47), .Z(N390) );
  CKND0 U5 ( .I(N52), .ZN(n3) );
  CKND2D0 U6 ( .A1(N164), .A2(N162), .ZN(N52) );
  ND2D1 U112 ( .A1(N164), .A2(n47), .ZN(N386) );
  ND2D1 U196 ( .A1(N162), .A2(n47), .ZN(N701) );
  CKND4 U202 ( .I(divide_mode), .ZN(n47) );
  CKND1 U204 ( .I(N162), .ZN(n53) );
  CKND1 U216 ( .I(N953), .ZN(n5010) );
  CKND1 U331 ( .I(N355), .ZN(n49) );
  CKND1 U367 ( .I(N164), .ZN(n54) );
  CKND0 U379 ( .I(N2150), .ZN(n5210) );
endmodule


module oadm_fixed_l3_divmul_correction_chain ( x, y, divide_mode, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  input divide_mode;
  wire   n3;

  oadm_fixed_divmul_correction_chain_LEVEL3 impl ( .x(x), .y(y), .divide_mode(
        n3), .result(result) );
  CKBD1 U1 ( .I(divide_mode), .Z(n3) );
endmodule

