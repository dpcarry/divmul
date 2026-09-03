/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Sat Aug 22 17:27:00 2026
/////////////////////////////////////////////////////////////


module paper_fp32_div_pack ( x, y, mantissa_q, result );
  input [31:0] x;
  input [31:0] y;
  input [27:0] mantissa_q;
  output [31:0] result;
  wire   \intadd_0/A[6] , \intadd_0/B[6] , \intadd_0/B[5] , \intadd_0/B[4] ,
         \intadd_0/B[3] , \intadd_0/B[2] , \intadd_0/B[1] , \intadd_0/B[0] ,
         \intadd_0/CI , \intadd_0/SUM[6] , \intadd_0/SUM[5] ,
         \intadd_0/SUM[4] , \intadd_0/SUM[3] , \intadd_0/SUM[2] ,
         \intadd_0/SUM[1] , \intadd_0/SUM[0] , \intadd_0/n7 , \intadd_0/n6 ,
         \intadd_0/n5 , \intadd_0/n4 , \intadd_0/n3 , \intadd_0/n2 ,
         \intadd_0/n1 , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104;

  FA1D0 \intadd_0/U8  ( .A(y[24]), .B(\intadd_0/B[0] ), .CI(\intadd_0/CI ), 
        .CO(\intadd_0/n7 ), .S(\intadd_0/SUM[0] ) );
  FA1D0 \intadd_0/U7  ( .A(y[25]), .B(\intadd_0/B[1] ), .CI(\intadd_0/n7 ), 
        .CO(\intadd_0/n6 ), .S(\intadd_0/SUM[1] ) );
  FA1D0 \intadd_0/U6  ( .A(y[26]), .B(\intadd_0/B[2] ), .CI(\intadd_0/n6 ), 
        .CO(\intadd_0/n5 ), .S(\intadd_0/SUM[2] ) );
  FA1D0 \intadd_0/U5  ( .A(y[27]), .B(\intadd_0/B[3] ), .CI(\intadd_0/n5 ), 
        .CO(\intadd_0/n4 ), .S(\intadd_0/SUM[3] ) );
  FA1D0 \intadd_0/U4  ( .A(y[28]), .B(\intadd_0/B[4] ), .CI(\intadd_0/n4 ), 
        .CO(\intadd_0/n3 ), .S(\intadd_0/SUM[4] ) );
  FA1D0 \intadd_0/U3  ( .A(y[29]), .B(\intadd_0/B[5] ), .CI(\intadd_0/n3 ), 
        .CO(\intadd_0/n2 ), .S(\intadd_0/SUM[5] ) );
  FA1D0 \intadd_0/U2  ( .A(\intadd_0/A[6] ), .B(\intadd_0/B[6] ), .CI(
        \intadd_0/n2 ), .CO(\intadd_0/n1 ), .S(\intadd_0/SUM[6] ) );
  INVD0 U3 ( .I(\intadd_0/B[6] ), .ZN(n1) );
  INVD0 U4 ( .I(n19), .ZN(n2) );
  INVD0 U5 ( .I(n2), .ZN(n3) );
  INVD0 U6 ( .I(n103), .ZN(n4) );
  INVD0 U7 ( .I(n4), .ZN(n5) );
  INVD0 U8 ( .I(n2), .ZN(n6) );
  INVD0 U9 ( .I(n104), .ZN(n7) );
  INVD0 U10 ( .I(mantissa_q[23]), .ZN(n8) );
  INVD0 U11 ( .I(n80), .ZN(n9) );
  INVD0 U12 ( .I(n9), .ZN(n10) );
  INVD0 U13 ( .I(n103), .ZN(n11) );
  INVD0 U14 ( .I(n11), .ZN(n12) );
  INVD0 U15 ( .I(n11), .ZN(n13) );
  INVD0 U16 ( .I(n11), .ZN(n14) );
  INVD0 U17 ( .I(n11), .ZN(n15) );
  AOI211D0 U18 ( .A1(n75), .A2(n74), .B(n73), .C(n72), .ZN(n16) );
  OR2D0 U19 ( .A1(n10), .A2(n8), .Z(n104) );
  INVD0 U20 ( .I(n104), .ZN(n17) );
  INVD0 U21 ( .I(n104), .ZN(n18) );
  INVD0 U22 ( .I(n104), .ZN(n19) );
  CKND2D0 U23 ( .A1(n1), .A2(\intadd_0/n1 ), .ZN(n51) );
  NR2D0 U24 ( .A1(n60), .A2(n59), .ZN(n61) );
  INVD0 U25 ( .I(mantissa_q[23]), .ZN(n63) );
  NR2D0 U26 ( .A1(n62), .A2(n61), .ZN(n64) );
  INVD0 U27 ( .I(y[23]), .ZN(n22) );
  CKND2D0 U28 ( .A1(x[23]), .A2(n22), .ZN(\intadd_0/CI ) );
  NR4D0 U29 ( .A1(x[28]), .A2(x[29]), .A3(x[30]), .A4(x[23]), .ZN(n21) );
  NR4D0 U30 ( .A1(x[24]), .A2(x[25]), .A3(x[26]), .A4(x[27]), .ZN(n20) );
  CKND2D0 U31 ( .A1(n21), .A2(n20), .ZN(n94) );
  OAI21D0 U32 ( .A1(x[23]), .A2(n22), .B(\intadd_0/CI ), .ZN(n26) );
  AN4D0 U33 ( .A1(\intadd_0/SUM[0] ), .A2(\intadd_0/SUM[1] ), .A3(
        \intadd_0/SUM[2] ), .A4(n26), .Z(n24) );
  ND3D0 U34 ( .A1(n24), .A2(\intadd_0/SUM[3] ), .A3(\intadd_0/SUM[4] ), .ZN(
        n53) );
  IND2D0 U35 ( .A1(n53), .B1(n8), .ZN(n32) );
  INVD0 U36 ( .I(\intadd_0/SUM[5] ), .ZN(n33) );
  NR2D0 U37 ( .A1(n32), .A2(n33), .ZN(n23) );
  NR2D0 U38 ( .A1(\intadd_0/SUM[6] ), .A2(n23), .ZN(n98) );
  CKND2D0 U39 ( .A1(n24), .A2(n8), .ZN(n30) );
  INVD0 U40 ( .I(\intadd_0/SUM[3] ), .ZN(n31) );
  NR2D0 U41 ( .A1(n30), .A2(n31), .ZN(n25) );
  OAI21D0 U42 ( .A1(\intadd_0/SUM[4] ), .A2(n25), .B(n32), .ZN(n101) );
  CKND2D0 U43 ( .A1(n63), .A2(n26), .ZN(n28) );
  OAI21D0 U44 ( .A1(n26), .A2(n8), .B(n28), .ZN(n58) );
  INVD0 U45 ( .I(n58), .ZN(n81) );
  INVD0 U46 ( .I(\intadd_0/SUM[0] ), .ZN(n27) );
  MUX2ND0 U47 ( .I0(\intadd_0/SUM[0] ), .I1(n27), .S(n28), .ZN(n77) );
  OAI211D0 U48 ( .A1(y[30]), .A2(\intadd_0/n1 ), .B(n81), .C(n77), .ZN(n36) );
  INVD0 U49 ( .I(\intadd_0/SUM[2] ), .ZN(n29) );
  NR2D0 U50 ( .A1(n28), .A2(n27), .ZN(n34) );
  CKND2D0 U51 ( .A1(\intadd_0/SUM[1] ), .A2(n34), .ZN(n57) );
  MUX2ND0 U52 ( .I0(\intadd_0/SUM[2] ), .I1(n29), .S(n57), .ZN(n76) );
  MUX2ND0 U53 ( .I0(\intadd_0/SUM[3] ), .I1(n31), .S(n30), .ZN(n79) );
  MUX2ND0 U54 ( .I0(\intadd_0/SUM[5] ), .I1(n33), .S(n32), .ZN(n78) );
  OR2D0 U55 ( .A1(n34), .A2(\intadd_0/SUM[1] ), .Z(n56) );
  ND4D0 U56 ( .A1(n76), .A2(n79), .A3(n78), .A4(n56), .ZN(n35) );
  NR4D0 U57 ( .A1(n98), .A2(n101), .A3(n36), .A4(n35), .ZN(n55) );
  ND4D0 U58 ( .A1(x[24]), .A2(x[25]), .A3(x[26]), .A4(x[27]), .ZN(n38) );
  ND4D0 U59 ( .A1(x[28]), .A2(x[29]), .A3(x[30]), .A4(x[23]), .ZN(n37) );
  NR2D0 U60 ( .A1(n38), .A2(n37), .ZN(n87) );
  NR4D0 U61 ( .A1(y[25]), .A2(y[28]), .A3(y[27]), .A4(y[29]), .ZN(n40) );
  NR4D0 U62 ( .A1(y[30]), .A2(y[24]), .A3(y[23]), .A4(y[26]), .ZN(n39) );
  CKND2D0 U63 ( .A1(n40), .A2(n39), .ZN(n93) );
  IND2D0 U64 ( .A1(n87), .B1(n93), .ZN(n72) );
  OAI211D0 U65 ( .A1(n1), .A2(\intadd_0/n1 ), .B(\intadd_0/SUM[5] ), .C(
        \intadd_0/SUM[6] ), .ZN(n52) );
  NR4D0 U66 ( .A1(mantissa_q[6]), .A2(mantissa_q[8]), .A3(mantissa_q[7]), .A4(
        mantissa_q[4]), .ZN(n49) );
  NR4D0 U67 ( .A1(mantissa_q[2]), .A2(mantissa_q[21]), .A3(mantissa_q[5]), 
        .A4(mantissa_q[23]), .ZN(n48) );
  NR4D0 U68 ( .A1(mantissa_q[22]), .A2(mantissa_q[20]), .A3(mantissa_q[15]), 
        .A4(mantissa_q[16]), .ZN(n44) );
  NR4D0 U69 ( .A1(mantissa_q[3]), .A2(mantissa_q[12]), .A3(mantissa_q[0]), 
        .A4(mantissa_q[1]), .ZN(n43) );
  NR4D0 U70 ( .A1(mantissa_q[17]), .A2(mantissa_q[10]), .A3(mantissa_q[11]), 
        .A4(mantissa_q[9]), .ZN(n42) );
  NR4D0 U71 ( .A1(mantissa_q[13]), .A2(mantissa_q[14]), .A3(mantissa_q[18]), 
        .A4(mantissa_q[19]), .ZN(n41) );
  AN4D0 U72 ( .A1(n44), .A2(n43), .A3(n42), .A4(n41), .Z(n47) );
  ND4D0 U73 ( .A1(y[30]), .A2(y[24]), .A3(y[23]), .A4(y[26]), .ZN(n46) );
  ND4D0 U74 ( .A1(y[25]), .A2(y[28]), .A3(y[27]), .A4(y[29]), .ZN(n45) );
  NR2D0 U75 ( .A1(n46), .A2(n45), .ZN(n90) );
  AOI31D0 U76 ( .A1(n49), .A2(n48), .A3(n47), .B(n90), .ZN(n50) );
  OAI211D0 U77 ( .A1(n53), .A2(n52), .B(n51), .C(n50), .ZN(n54) );
  INR4D0 U78 ( .A1(n94), .B1(n55), .B2(n72), .B3(n54), .ZN(n75) );
  NR2D0 U79 ( .A1(n1), .A2(\intadd_0/n1 ), .ZN(n62) );
  IIND4D0 U80 ( .A1(n78), .A2(n77), .B1(n98), .B2(n101), .ZN(n60) );
  CKND2D0 U81 ( .A1(n57), .A2(n56), .ZN(n99) );
  IIND4D0 U82 ( .A1(n79), .A2(n76), .B1(n58), .B2(n99), .ZN(n59) );
  CKND2D0 U83 ( .A1(n75), .A2(n64), .ZN(n80) );
  INVD0 U84 ( .I(n10), .ZN(n102) );
  CKAN2D0 U85 ( .A1(n63), .A2(n102), .Z(n103) );
  AO22D0 U86 ( .A1(mantissa_q[8]), .A2(n14), .B1(mantissa_q[9]), .B2(n17), .Z(
        result[9]) );
  AO22D0 U87 ( .A1(mantissa_q[2]), .A2(n15), .B1(mantissa_q[3]), .B2(n3), .Z(
        result[3]) );
  CKAN2D0 U88 ( .A1(n7), .A2(mantissa_q[0]), .Z(result[0]) );
  INVD0 U89 ( .I(n64), .ZN(n74) );
  OR4D0 U90 ( .A1(y[7]), .A2(y[8]), .A3(y[0]), .A4(y[22]), .Z(n71) );
  NR4D0 U91 ( .A1(y[11]), .A2(y[12]), .A3(y[10]), .A4(y[15]), .ZN(n69) );
  OR4D0 U92 ( .A1(y[2]), .A2(y[21]), .A3(y[4]), .A4(y[17]), .Z(n65) );
  NR4D0 U93 ( .A1(y[13]), .A2(y[18]), .A3(y[3]), .A4(n65), .ZN(n68) );
  NR4D0 U94 ( .A1(y[6]), .A2(y[16]), .A3(y[1]), .A4(y[9]), .ZN(n67) );
  NR4D0 U95 ( .A1(y[14]), .A2(y[19]), .A3(y[20]), .A4(y[5]), .ZN(n66) );
  ND4D0 U96 ( .A1(n69), .A2(n68), .A3(n67), .A4(n66), .ZN(n70) );
  OAI21D0 U97 ( .A1(n71), .A2(n70), .B(n90), .ZN(n91) );
  INVD0 U98 ( .I(n91), .ZN(n73) );
  AOI211D0 U99 ( .A1(n75), .A2(n74), .B(n73), .C(n72), .ZN(n100) );
  OAI21D0 U100 ( .A1(n76), .A2(n80), .B(n100), .ZN(result[26]) );
  OAI21D0 U101 ( .A1(n77), .A2(n10), .B(n16), .ZN(result[24]) );
  OAI21D0 U102 ( .A1(n78), .A2(n80), .B(n100), .ZN(result[29]) );
  OAI21D0 U103 ( .A1(n79), .A2(n10), .B(n16), .ZN(result[27]) );
  OAI21D0 U104 ( .A1(n81), .A2(n80), .B(n100), .ZN(result[23]) );
  OR4D0 U105 ( .A1(x[21]), .A2(x[22]), .A3(x[20]), .A4(x[0]), .Z(n82) );
  OR4D0 U106 ( .A1(x[3]), .A2(x[19]), .A3(x[17]), .A4(n82), .Z(n89) );
  NR4D0 U107 ( .A1(x[6]), .A2(x[7]), .A3(x[5]), .A4(x[9]), .ZN(n86) );
  NR4D0 U108 ( .A1(x[1]), .A2(x[10]), .A3(x[4]), .A4(x[2]), .ZN(n85) );
  NR4D0 U109 ( .A1(x[14]), .A2(x[12]), .A3(x[16]), .A4(x[15]), .ZN(n84) );
  NR4D0 U110 ( .A1(x[18]), .A2(x[11]), .A3(x[8]), .A4(x[13]), .ZN(n83) );
  ND4D0 U111 ( .A1(n86), .A2(n85), .A3(n84), .A4(n83), .ZN(n88) );
  OAI31D0 U112 ( .A1(n90), .A2(n89), .A3(n88), .B(n87), .ZN(n92) );
  OA211D0 U113 ( .A1(n94), .A2(n93), .B(n92), .C(n91), .Z(n96) );
  AOI22D0 U114 ( .A1(mantissa_q[22]), .A2(n7), .B1(mantissa_q[21]), .B2(n5), 
        .ZN(n95) );
  CKND2D0 U115 ( .A1(n96), .A2(n95), .ZN(result[22]) );
  INVD0 U116 ( .I(x[24]), .ZN(\intadd_0/B[0] ) );
  INVD0 U117 ( .I(x[25]), .ZN(\intadd_0/B[1] ) );
  INVD0 U118 ( .I(x[26]), .ZN(\intadd_0/B[2] ) );
  INVD0 U119 ( .I(x[27]), .ZN(\intadd_0/B[3] ) );
  INVD0 U120 ( .I(x[28]), .ZN(\intadd_0/B[4] ) );
  INVD0 U121 ( .I(x[29]), .ZN(\intadd_0/B[5] ) );
  INVD0 U122 ( .I(y[30]), .ZN(\intadd_0/B[6] ) );
  INVD0 U123 ( .I(x[30]), .ZN(\intadd_0/A[6] ) );
  OAI21D0 U124 ( .A1(x[31]), .A2(y[31]), .B(n96), .ZN(n97) );
  AOI21D0 U125 ( .A1(x[31]), .A2(y[31]), .B(n97), .ZN(result[31]) );
  IOA21D0 U126 ( .A1(n98), .A2(n102), .B(n16), .ZN(result[30]) );
  IOA21D0 U127 ( .A1(n102), .A2(n99), .B(n100), .ZN(result[25]) );
  IOA21D0 U128 ( .A1(n102), .A2(n101), .B(n16), .ZN(result[28]) );
  AO22D0 U129 ( .A1(mantissa_q[0]), .A2(n13), .B1(mantissa_q[1]), .B2(n6), .Z(
        result[1]) );
  AO22D0 U130 ( .A1(mantissa_q[2]), .A2(n6), .B1(mantissa_q[1]), .B2(n15), .Z(
        result[2]) );
  AO22D0 U131 ( .A1(mantissa_q[4]), .A2(n19), .B1(mantissa_q[3]), .B2(n5), .Z(
        result[4]) );
  AO22D0 U132 ( .A1(mantissa_q[4]), .A2(n103), .B1(mantissa_q[5]), .B2(n18), 
        .Z(result[5]) );
  AO22D0 U133 ( .A1(mantissa_q[6]), .A2(n17), .B1(mantissa_q[5]), .B2(n13), 
        .Z(result[6]) );
  AO22D0 U134 ( .A1(mantissa_q[6]), .A2(n12), .B1(mantissa_q[7]), .B2(n18), 
        .Z(result[7]) );
  AO22D0 U135 ( .A1(mantissa_q[8]), .A2(n6), .B1(mantissa_q[7]), .B2(n14), .Z(
        result[8]) );
  AO22D0 U136 ( .A1(mantissa_q[10]), .A2(n19), .B1(mantissa_q[9]), .B2(n14), 
        .Z(result[10]) );
  AO22D0 U137 ( .A1(mantissa_q[10]), .A2(n14), .B1(mantissa_q[11]), .B2(n17), 
        .Z(result[11]) );
  AO22D0 U138 ( .A1(mantissa_q[12]), .A2(n18), .B1(mantissa_q[11]), .B2(n5), 
        .Z(result[12]) );
  AO22D0 U139 ( .A1(mantissa_q[12]), .A2(n15), .B1(mantissa_q[13]), .B2(n7), 
        .Z(result[13]) );
  AO22D0 U140 ( .A1(mantissa_q[13]), .A2(n5), .B1(mantissa_q[14]), .B2(n3), 
        .Z(result[14]) );
  AO22D0 U141 ( .A1(mantissa_q[15]), .A2(n3), .B1(mantissa_q[14]), .B2(n12), 
        .Z(result[15]) );
  AO22D0 U142 ( .A1(mantissa_q[15]), .A2(n13), .B1(mantissa_q[16]), .B2(n18), 
        .Z(result[16]) );
  AO22D0 U143 ( .A1(mantissa_q[16]), .A2(n12), .B1(mantissa_q[17]), .B2(n3), 
        .Z(result[17]) );
  AO22D0 U144 ( .A1(mantissa_q[18]), .A2(n7), .B1(mantissa_q[17]), .B2(n15), 
        .Z(result[18]) );
  AO22D0 U145 ( .A1(mantissa_q[18]), .A2(n12), .B1(mantissa_q[19]), .B2(n6), 
        .Z(result[19]) );
  AO22D0 U146 ( .A1(mantissa_q[20]), .A2(n17), .B1(mantissa_q[19]), .B2(n13), 
        .Z(result[20]) );
  AO22D0 U147 ( .A1(mantissa_q[21]), .A2(n19), .B1(mantissa_q[20]), .B2(n103), 
        .Z(result[21]) );
endmodule


module fanzed_fp32_div_TRUNCATE_BITS0 ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   \DP_OP_22J1_123_9225/n96 , \DP_OP_22J1_123_9225/n89 ,
         \DP_OP_22J1_123_9225/n88 , \DP_OP_22J1_123_9225/n87 ,
         \DP_OP_22J1_123_9225/n86 , \DP_OP_22J1_123_9225/n85 ,
         \DP_OP_22J1_123_9225/n84 , \DP_OP_22J1_123_9225/n83 ,
         \DP_OP_22J1_123_9225/n82 , \DP_OP_22J1_123_9225/n81 ,
         \DP_OP_22J1_123_9225/n80 , \DP_OP_22J1_123_9225/n79 ,
         \DP_OP_22J1_123_9225/n78 , \DP_OP_22J1_123_9225/n77 ,
         \DP_OP_22J1_123_9225/n76 , \DP_OP_22J1_123_9225/n75 ,
         \DP_OP_22J1_123_9225/n74 , \DP_OP_22J1_123_9225/n73 ,
         \DP_OP_22J1_123_9225/n72 , \DP_OP_22J1_123_9225/n71 ,
         \DP_OP_22J1_123_9225/n70 , \DP_OP_22J1_123_9225/n69 ,
         \DP_OP_22J1_123_9225/n68 , \DP_OP_22J1_123_9225/n67 ,
         \DP_OP_22J1_123_9225/n66 , \DP_OP_22J1_123_9225/n65 ,
         \DP_OP_22J1_123_9225/n64 , \DP_OP_22J1_123_9225/n63 ,
         \DP_OP_22J1_123_9225/n62 , \DP_OP_22J1_123_9225/n61 ,
         \DP_OP_22J1_123_9225/n60 , \DP_OP_22J1_123_9225/n59 ,
         \DP_OP_22J1_123_9225/n58 , \DP_OP_22J1_123_9225/n57 ,
         \DP_OP_22J1_123_9225/n56 , \DP_OP_22J1_123_9225/n55 ,
         \DP_OP_22J1_123_9225/n54 , \DP_OP_22J1_123_9225/n53 ,
         \DP_OP_22J1_123_9225/n52 , \DP_OP_22J1_123_9225/n51 ,
         \DP_OP_22J1_123_9225/n50 , \DP_OP_22J1_123_9225/n49 ,
         \DP_OP_22J1_123_9225/n48 , \DP_OP_22J1_123_9225/n47 ,
         \DP_OP_22J1_123_9225/n46 , \DP_OP_22J1_123_9225/n45 ,
         \DP_OP_22J1_123_9225/n40 , \DP_OP_22J1_123_9225/n39 ,
         \DP_OP_22J1_123_9225/n38 , \DP_OP_22J1_123_9225/n37 ,
         \DP_OP_22J1_123_9225/n36 , \DP_OP_22J1_123_9225/n35 ,
         \DP_OP_22J1_123_9225/n34 , \DP_OP_22J1_123_9225/n33 ,
         \DP_OP_22J1_123_9225/n32 , \DP_OP_22J1_123_9225/n31 ,
         \DP_OP_22J1_123_9225/n30 , \DP_OP_22J1_123_9225/n29 ,
         \DP_OP_22J1_123_9225/n28 , \DP_OP_22J1_123_9225/n27 ,
         \DP_OP_22J1_123_9225/n26 , \DP_OP_22J1_123_9225/n25 ,
         \DP_OP_22J1_123_9225/n24 , \DP_OP_22J1_123_9225/n23 ,
         \DP_OP_22J1_123_9225/n22 , \DP_OP_22J1_123_9225/n21 ,
         \DP_OP_22J1_123_9225/n20 , \DP_OP_22J1_123_9225/n19 ,
         \DP_OP_22J1_123_9225/n10 , \DP_OP_22J1_123_9225/n9 , n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28;
  wire   [27:0] q;

  paper_fp32_div_pack pack ( .x(x), .y(y), .mantissa_q({1'b0, 1'b0, 1'b0, 1'b0, 
        q[23:0]}), .result(result) );
  FA1D0 \DP_OP_22J1_123_9225/U78  ( .A(\DP_OP_22J1_123_9225/n89 ), .B(x[1]), 
        .CI(\DP_OP_22J1_123_9225/n67 ), .CO(\DP_OP_22J1_123_9225/n66 ), .S(
        \DP_OP_22J1_123_9225/n19 ) );
  FA1D0 \DP_OP_22J1_123_9225/U77  ( .A(\DP_OP_22J1_123_9225/n88 ), .B(x[2]), 
        .CI(\DP_OP_22J1_123_9225/n66 ), .CO(\DP_OP_22J1_123_9225/n65 ), .S(
        \DP_OP_22J1_123_9225/n20 ) );
  FA1D0 \DP_OP_22J1_123_9225/U76  ( .A(\DP_OP_22J1_123_9225/n87 ), .B(x[3]), 
        .CI(\DP_OP_22J1_123_9225/n65 ), .CO(\DP_OP_22J1_123_9225/n64 ), .S(
        \DP_OP_22J1_123_9225/n21 ) );
  FA1D0 \DP_OP_22J1_123_9225/U75  ( .A(\DP_OP_22J1_123_9225/n86 ), .B(x[4]), 
        .CI(\DP_OP_22J1_123_9225/n64 ), .CO(\DP_OP_22J1_123_9225/n63 ), .S(
        \DP_OP_22J1_123_9225/n22 ) );
  FA1D0 \DP_OP_22J1_123_9225/U74  ( .A(\DP_OP_22J1_123_9225/n85 ), .B(x[5]), 
        .CI(\DP_OP_22J1_123_9225/n63 ), .CO(\DP_OP_22J1_123_9225/n62 ), .S(
        \DP_OP_22J1_123_9225/n23 ) );
  FA1D0 \DP_OP_22J1_123_9225/U73  ( .A(\DP_OP_22J1_123_9225/n84 ), .B(x[6]), 
        .CI(\DP_OP_22J1_123_9225/n62 ), .CO(\DP_OP_22J1_123_9225/n61 ), .S(
        \DP_OP_22J1_123_9225/n24 ) );
  FA1D0 \DP_OP_22J1_123_9225/U72  ( .A(\DP_OP_22J1_123_9225/n83 ), .B(x[7]), 
        .CI(\DP_OP_22J1_123_9225/n61 ), .CO(\DP_OP_22J1_123_9225/n60 ), .S(
        \DP_OP_22J1_123_9225/n25 ) );
  FA1D0 \DP_OP_22J1_123_9225/U71  ( .A(\DP_OP_22J1_123_9225/n82 ), .B(x[8]), 
        .CI(\DP_OP_22J1_123_9225/n60 ), .CO(\DP_OP_22J1_123_9225/n59 ), .S(
        \DP_OP_22J1_123_9225/n26 ) );
  FA1D0 \DP_OP_22J1_123_9225/U70  ( .A(\DP_OP_22J1_123_9225/n81 ), .B(x[9]), 
        .CI(\DP_OP_22J1_123_9225/n59 ), .CO(\DP_OP_22J1_123_9225/n58 ), .S(
        \DP_OP_22J1_123_9225/n27 ) );
  FA1D0 \DP_OP_22J1_123_9225/U69  ( .A(\DP_OP_22J1_123_9225/n80 ), .B(x[10]), 
        .CI(\DP_OP_22J1_123_9225/n58 ), .CO(\DP_OP_22J1_123_9225/n57 ), .S(
        \DP_OP_22J1_123_9225/n28 ) );
  FA1D0 \DP_OP_22J1_123_9225/U68  ( .A(\DP_OP_22J1_123_9225/n79 ), .B(x[11]), 
        .CI(\DP_OP_22J1_123_9225/n57 ), .CO(\DP_OP_22J1_123_9225/n56 ), .S(
        \DP_OP_22J1_123_9225/n29 ) );
  FA1D0 \DP_OP_22J1_123_9225/U67  ( .A(\DP_OP_22J1_123_9225/n78 ), .B(x[12]), 
        .CI(\DP_OP_22J1_123_9225/n56 ), .CO(\DP_OP_22J1_123_9225/n55 ), .S(
        \DP_OP_22J1_123_9225/n30 ) );
  FA1D0 \DP_OP_22J1_123_9225/U66  ( .A(\DP_OP_22J1_123_9225/n77 ), .B(x[13]), 
        .CI(\DP_OP_22J1_123_9225/n55 ), .CO(\DP_OP_22J1_123_9225/n54 ), .S(
        \DP_OP_22J1_123_9225/n31 ) );
  FA1D0 \DP_OP_22J1_123_9225/U65  ( .A(\DP_OP_22J1_123_9225/n76 ), .B(x[14]), 
        .CI(\DP_OP_22J1_123_9225/n54 ), .CO(\DP_OP_22J1_123_9225/n53 ), .S(
        \DP_OP_22J1_123_9225/n32 ) );
  FA1D0 \DP_OP_22J1_123_9225/U64  ( .A(\DP_OP_22J1_123_9225/n75 ), .B(x[15]), 
        .CI(\DP_OP_22J1_123_9225/n53 ), .CO(\DP_OP_22J1_123_9225/n52 ), .S(
        \DP_OP_22J1_123_9225/n33 ) );
  FA1D0 \DP_OP_22J1_123_9225/U63  ( .A(\DP_OP_22J1_123_9225/n74 ), .B(x[16]), 
        .CI(\DP_OP_22J1_123_9225/n52 ), .CO(\DP_OP_22J1_123_9225/n51 ), .S(
        \DP_OP_22J1_123_9225/n34 ) );
  FA1D0 \DP_OP_22J1_123_9225/U62  ( .A(\DP_OP_22J1_123_9225/n73 ), .B(x[17]), 
        .CI(\DP_OP_22J1_123_9225/n51 ), .CO(\DP_OP_22J1_123_9225/n50 ), .S(
        \DP_OP_22J1_123_9225/n35 ) );
  FA1D0 \DP_OP_22J1_123_9225/U61  ( .A(\DP_OP_22J1_123_9225/n72 ), .B(x[18]), 
        .CI(\DP_OP_22J1_123_9225/n50 ), .CO(\DP_OP_22J1_123_9225/n49 ), .S(
        \DP_OP_22J1_123_9225/n36 ) );
  FA1D0 \DP_OP_22J1_123_9225/U60  ( .A(\DP_OP_22J1_123_9225/n71 ), .B(x[19]), 
        .CI(\DP_OP_22J1_123_9225/n49 ), .CO(\DP_OP_22J1_123_9225/n48 ), .S(
        \DP_OP_22J1_123_9225/n37 ) );
  FA1D0 \DP_OP_22J1_123_9225/U59  ( .A(\DP_OP_22J1_123_9225/n70 ), .B(x[20]), 
        .CI(\DP_OP_22J1_123_9225/n48 ), .CO(\DP_OP_22J1_123_9225/n47 ), .S(
        \DP_OP_22J1_123_9225/n38 ) );
  FA1D0 \DP_OP_22J1_123_9225/U58  ( .A(\DP_OP_22J1_123_9225/n69 ), .B(x[21]), 
        .CI(\DP_OP_22J1_123_9225/n47 ), .CO(\DP_OP_22J1_123_9225/n46 ), .S(
        \DP_OP_22J1_123_9225/n39 ) );
  HA1D0 \DP_OP_22J1_123_9225/U17  ( .A(\DP_OP_22J1_123_9225/n96 ), .B(
        \DP_OP_22J1_123_9225/n10 ), .CO(\DP_OP_22J1_123_9225/n9 ), .S(q[18])
         );
  FA1D0 \DP_OP_22J1_123_9225/U57  ( .A(\DP_OP_22J1_123_9225/n68 ), .B(x[22]), 
        .CI(\DP_OP_22J1_123_9225/n46 ), .CO(\DP_OP_22J1_123_9225/n45 ), .S(
        \DP_OP_22J1_123_9225/n40 ) );
  INVD0 U4 ( .I(\DP_OP_22J1_123_9225/n45 ), .ZN(n2) );
  INVD0 U5 ( .I(n2), .ZN(n3) );
  INVD0 U6 ( .I(n3), .ZN(n28) );
  BUFFD0 U7 ( .I(n28), .Z(n26) );
  BUFFD0 U8 ( .I(n26), .Z(n10) );
  BUFFD0 U9 ( .I(n10), .Z(n25) );
  BUFFD0 U10 ( .I(\DP_OP_22J1_123_9225/n45 ), .Z(n11) );
  BUFFD0 U11 ( .I(n11), .Z(n5) );
  AO22D0 U12 ( .A1(\DP_OP_22J1_123_9225/n32 ), .A2(n25), .B1(n5), .B2(
        \DP_OP_22J1_123_9225/n31 ), .Z(q[13]) );
  BUFFD0 U13 ( .I(n10), .Z(n8) );
  BUFFD0 U14 ( .I(n11), .Z(n7) );
  AO22D0 U15 ( .A1(\DP_OP_22J1_123_9225/n28 ), .A2(n8), .B1(n7), .B2(
        \DP_OP_22J1_123_9225/n27 ), .Z(q[9]) );
  AO22D0 U16 ( .A1(\DP_OP_22J1_123_9225/n29 ), .A2(n8), .B1(n7), .B2(
        \DP_OP_22J1_123_9225/n28 ), .Z(q[10]) );
  BUFFD0 U17 ( .I(n28), .Z(n6) );
  AO22D0 U18 ( .A1(\DP_OP_22J1_123_9225/n20 ), .A2(n6), .B1(n5), .B2(
        \DP_OP_22J1_123_9225/n19 ), .Z(q[1]) );
  INVD0 U19 ( .I(y[0]), .ZN(n9) );
  XNR2D0 U20 ( .A1(x[0]), .A2(n9), .ZN(n4) );
  AO22D0 U21 ( .A1(\DP_OP_22J1_123_9225/n19 ), .A2(n6), .B1(n5), .B2(n4), .Z(
        q[0]) );
  BUFFD0 U22 ( .I(n11), .Z(n27) );
  AO22D0 U23 ( .A1(\DP_OP_22J1_123_9225/n22 ), .A2(n6), .B1(n27), .B2(
        \DP_OP_22J1_123_9225/n21 ), .Z(q[3]) );
  AO22D0 U24 ( .A1(\DP_OP_22J1_123_9225/n21 ), .A2(n6), .B1(n5), .B2(
        \DP_OP_22J1_123_9225/n20 ), .Z(q[2]) );
  AO22D0 U25 ( .A1(\DP_OP_22J1_123_9225/n26 ), .A2(n8), .B1(n7), .B2(
        \DP_OP_22J1_123_9225/n25 ), .Z(q[7]) );
  AO22D0 U26 ( .A1(\DP_OP_22J1_123_9225/n27 ), .A2(n8), .B1(n7), .B2(
        \DP_OP_22J1_123_9225/n26 ), .Z(q[8]) );
  BUFFD0 U27 ( .I(n10), .Z(n24) );
  BUFFD0 U28 ( .I(n3), .Z(n23) );
  AO22D0 U29 ( .A1(\DP_OP_22J1_123_9225/n37 ), .A2(n24), .B1(n23), .B2(
        \DP_OP_22J1_123_9225/n36 ), .Z(\DP_OP_22J1_123_9225/n96 ) );
  AO22D0 U30 ( .A1(\DP_OP_22J1_123_9225/n35 ), .A2(n24), .B1(n23), .B2(
        \DP_OP_22J1_123_9225/n34 ), .Z(n13) );
  INVD0 U31 ( .I(n13), .ZN(q[16]) );
  AO22D0 U32 ( .A1(\DP_OP_22J1_123_9225/n36 ), .A2(n24), .B1(n23), .B2(
        \DP_OP_22J1_123_9225/n35 ), .Z(n12) );
  OR2D0 U33 ( .A1(n12), .A2(n13), .Z(\DP_OP_22J1_123_9225/n10 ) );
  OR2D0 U34 ( .A1(n9), .A2(x[0]), .Z(\DP_OP_22J1_123_9225/n67 ) );
  INVD0 U35 ( .I(y[1]), .ZN(\DP_OP_22J1_123_9225/n89 ) );
  INVD0 U36 ( .I(y[2]), .ZN(\DP_OP_22J1_123_9225/n88 ) );
  INVD0 U37 ( .I(y[3]), .ZN(\DP_OP_22J1_123_9225/n87 ) );
  INVD0 U38 ( .I(y[4]), .ZN(\DP_OP_22J1_123_9225/n86 ) );
  INVD0 U39 ( .I(y[5]), .ZN(\DP_OP_22J1_123_9225/n85 ) );
  INVD0 U40 ( .I(y[6]), .ZN(\DP_OP_22J1_123_9225/n84 ) );
  INVD0 U41 ( .I(y[7]), .ZN(\DP_OP_22J1_123_9225/n83 ) );
  INVD0 U42 ( .I(y[8]), .ZN(\DP_OP_22J1_123_9225/n82 ) );
  INVD0 U43 ( .I(y[9]), .ZN(\DP_OP_22J1_123_9225/n81 ) );
  INVD0 U44 ( .I(y[10]), .ZN(\DP_OP_22J1_123_9225/n80 ) );
  INVD0 U45 ( .I(y[11]), .ZN(\DP_OP_22J1_123_9225/n79 ) );
  INVD0 U46 ( .I(y[12]), .ZN(\DP_OP_22J1_123_9225/n78 ) );
  INVD0 U47 ( .I(y[13]), .ZN(\DP_OP_22J1_123_9225/n77 ) );
  INVD0 U48 ( .I(y[14]), .ZN(\DP_OP_22J1_123_9225/n76 ) );
  INVD0 U49 ( .I(y[15]), .ZN(\DP_OP_22J1_123_9225/n75 ) );
  INVD0 U50 ( .I(y[16]), .ZN(\DP_OP_22J1_123_9225/n74 ) );
  INVD0 U51 ( .I(y[17]), .ZN(\DP_OP_22J1_123_9225/n73 ) );
  INVD0 U52 ( .I(y[18]), .ZN(\DP_OP_22J1_123_9225/n72 ) );
  INVD0 U53 ( .I(y[19]), .ZN(\DP_OP_22J1_123_9225/n71 ) );
  INVD0 U54 ( .I(y[20]), .ZN(\DP_OP_22J1_123_9225/n70 ) );
  INVD0 U55 ( .I(y[21]), .ZN(\DP_OP_22J1_123_9225/n69 ) );
  BUFFD0 U56 ( .I(n11), .Z(n17) );
  AO22D0 U57 ( .A1(\DP_OP_22J1_123_9225/n38 ), .A2(n26), .B1(n17), .B2(
        \DP_OP_22J1_123_9225/n37 ), .Z(n14) );
  XNR2D0 U58 ( .A1(\DP_OP_22J1_123_9225/n9 ), .A2(n14), .ZN(q[19]) );
  XNR2D0 U59 ( .A1(n13), .A2(n12), .ZN(q[17]) );
  OR2D0 U60 ( .A1(n14), .A2(\DP_OP_22J1_123_9225/n9 ), .Z(n15) );
  AO22D0 U61 ( .A1(\DP_OP_22J1_123_9225/n39 ), .A2(n2), .B1(n17), .B2(
        \DP_OP_22J1_123_9225/n38 ), .Z(n16) );
  XNR2D0 U62 ( .A1(n15), .A2(n16), .ZN(q[20]) );
  OR2D0 U63 ( .A1(n16), .A2(n15), .Z(n18) );
  AO22D0 U64 ( .A1(\DP_OP_22J1_123_9225/n40 ), .A2(n2), .B1(n17), .B2(
        \DP_OP_22J1_123_9225/n39 ), .Z(n19) );
  XNR2D0 U65 ( .A1(n18), .A2(n19), .ZN(q[21]) );
  OR2D0 U66 ( .A1(n19), .A2(n18), .Z(n21) );
  OR2D0 U67 ( .A1(\DP_OP_22J1_123_9225/n40 ), .A2(n2), .Z(n22) );
  OR2D0 U68 ( .A1(n21), .A2(n22), .Z(n20) );
  XNR2D0 U69 ( .A1(\DP_OP_22J1_123_9225/n45 ), .A2(n20), .ZN(q[23]) );
  XNR2D0 U70 ( .A1(n22), .A2(n21), .ZN(q[22]) );
  AO22D0 U71 ( .A1(\DP_OP_22J1_123_9225/n34 ), .A2(n24), .B1(n23), .B2(
        \DP_OP_22J1_123_9225/n33 ), .Z(q[15]) );
  AO22D0 U72 ( .A1(\DP_OP_22J1_123_9225/n33 ), .A2(n25), .B1(n3), .B2(
        \DP_OP_22J1_123_9225/n32 ), .Z(q[14]) );
  AO22D0 U73 ( .A1(\DP_OP_22J1_123_9225/n31 ), .A2(n25), .B1(
        \DP_OP_22J1_123_9225/n45 ), .B2(\DP_OP_22J1_123_9225/n30 ), .Z(q[12])
         );
  AO22D0 U74 ( .A1(\DP_OP_22J1_123_9225/n30 ), .A2(n25), .B1(n3), .B2(
        \DP_OP_22J1_123_9225/n29 ), .Z(q[11]) );
  AO22D0 U75 ( .A1(\DP_OP_22J1_123_9225/n25 ), .A2(n26), .B1(n27), .B2(
        \DP_OP_22J1_123_9225/n24 ), .Z(q[6]) );
  AO22D0 U76 ( .A1(\DP_OP_22J1_123_9225/n24 ), .A2(n28), .B1(n27), .B2(
        \DP_OP_22J1_123_9225/n23 ), .Z(q[5]) );
  AO22D0 U77 ( .A1(\DP_OP_22J1_123_9225/n23 ), .A2(n28), .B1(n27), .B2(
        \DP_OP_22J1_123_9225/n22 ), .Z(q[4]) );
  INVD0 U78 ( .I(y[22]), .ZN(\DP_OP_22J1_123_9225/n68 ) );
endmodule


module fanzed_fp32_div_t0 ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   n1;

  fanzed_fp32_div_TRUNCATE_BITS0 impl ( .x(x), .y({y[31], n1, y[29:0]}), 
        .result(result) );
  BUFFD0 U1 ( .I(y[30]), .Z(n1) );
endmodule

