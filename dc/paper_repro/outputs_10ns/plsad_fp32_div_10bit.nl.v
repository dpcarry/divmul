/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Sat Aug 22 17:06:38 2026
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
         n98, n99, n100;

  FA1D0 \intadd_0/U7  ( .A(y[25]), .B(\intadd_0/B[1] ), .CI(\intadd_0/n7 ), 
        .CO(\intadd_0/n6 ), .S(\intadd_0/SUM[1] ) );
  FA1D0 \intadd_0/U5  ( .A(y[27]), .B(\intadd_0/B[3] ), .CI(\intadd_0/n5 ), 
        .CO(\intadd_0/n4 ), .S(\intadd_0/SUM[3] ) );
  FA1D0 \intadd_0/U4  ( .A(y[28]), .B(\intadd_0/B[4] ), .CI(\intadd_0/n4 ), 
        .CO(\intadd_0/n3 ), .S(\intadd_0/SUM[4] ) );
  FA1D0 \intadd_0/U3  ( .A(y[29]), .B(\intadd_0/B[5] ), .CI(\intadd_0/n3 ), 
        .CO(\intadd_0/n2 ), .S(\intadd_0/SUM[5] ) );
  FA1D0 \intadd_0/U2  ( .A(\intadd_0/A[6] ), .B(\intadd_0/B[6] ), .CI(
        \intadd_0/n2 ), .CO(\intadd_0/n1 ), .S(\intadd_0/SUM[6] ) );
  FA1D0 \intadd_0/U8  ( .A(y[24]), .B(\intadd_0/B[0] ), .CI(\intadd_0/CI ), 
        .CO(\intadd_0/n7 ), .S(\intadd_0/SUM[0] ) );
  FA1D0 \intadd_0/U6  ( .A(y[26]), .B(\intadd_0/B[2] ), .CI(\intadd_0/n6 ), 
        .CO(\intadd_0/n5 ), .S(\intadd_0/SUM[2] ) );
  CKND2D0 U3 ( .A1(n94), .A2(n93), .ZN(result[22]) );
  AO22D0 U4 ( .A1(mantissa_q[21]), .A2(n12), .B1(mantissa_q[20]), .B2(n9), .Z(
        result[21]) );
  AOI22D0 U5 ( .A1(mantissa_q[22]), .A2(n11), .B1(mantissa_q[21]), .B2(n8), 
        .ZN(n93) );
  AO22D0 U6 ( .A1(mantissa_q[18]), .A2(n9), .B1(mantissa_q[19]), .B2(n11), .Z(
        result[19]) );
  AO22D0 U7 ( .A1(mantissa_q[20]), .A2(n14), .B1(mantissa_q[19]), .B2(n7), .Z(
        result[20]) );
  AO22D0 U8 ( .A1(mantissa_q[10]), .A2(n13), .B1(mantissa_q[9]), .B2(n6), .Z(
        result[10]) );
  AO22D0 U9 ( .A1(mantissa_q[10]), .A2(n6), .B1(mantissa_q[11]), .B2(n12), .Z(
        result[11]) );
  AO22D0 U10 ( .A1(mantissa_q[15]), .A2(n13), .B1(mantissa_q[14]), .B2(n6), 
        .Z(result[15]) );
  AO22D0 U11 ( .A1(mantissa_q[16]), .A2(n6), .B1(mantissa_q[17]), .B2(n12), 
        .Z(result[17]) );
  AO22D0 U12 ( .A1(mantissa_q[12]), .A2(n9), .B1(mantissa_q[13]), .B2(n11), 
        .Z(result[13]) );
  AO22D0 U13 ( .A1(mantissa_q[18]), .A2(n14), .B1(mantissa_q[17]), .B2(n7), 
        .Z(result[18]) );
  AO22D0 U14 ( .A1(mantissa_q[15]), .A2(n7), .B1(mantissa_q[16]), .B2(n13), 
        .Z(result[16]) );
  AO22D0 U15 ( .A1(mantissa_q[12]), .A2(n11), .B1(mantissa_q[11]), .B2(n8), 
        .Z(result[12]) );
  AO22D0 U16 ( .A1(mantissa_q[13]), .A2(n8), .B1(mantissa_q[14]), .B2(n14), 
        .Z(result[14]) );
  CKAN2D0 U17 ( .A1(mantissa_q[9]), .A2(n12), .Z(result[9]) );
  IOA21D0 U18 ( .A1(n100), .A2(n99), .B(n10), .ZN(result[25]) );
  INVD0 U19 ( .I(n92), .ZN(n12) );
  CKND2D0 U20 ( .A1(n3), .A2(n100), .ZN(n91) );
  INVD0 U21 ( .I(n92), .ZN(n13) );
  INVD0 U22 ( .I(n92), .ZN(n14) );
  INVD0 U23 ( .I(n92), .ZN(n11) );
  IOA21D0 U24 ( .A1(n100), .A2(n97), .B(n98), .ZN(result[28]) );
  IOA21D0 U25 ( .A1(n96), .A2(n100), .B(n10), .ZN(result[30]) );
  INVD0 U26 ( .I(n4), .ZN(n100) );
  OR2D0 U27 ( .A1(n5), .A2(n59), .Z(n92) );
  INVD0 U28 ( .I(n76), .ZN(n4) );
  INVD0 U29 ( .I(n76), .ZN(n5) );
  AOI211D0 U30 ( .A1(n71), .A2(n70), .B(n69), .C(n68), .ZN(n10) );
  AOI211D0 U31 ( .A1(n71), .A2(n70), .B(n69), .C(n68), .ZN(n98) );
  CKAN2D0 U32 ( .A1(n71), .A2(n60), .Z(n76) );
  AOI211D0 U33 ( .A1(mantissa_q[23]), .A2(mantissa_q[27]), .B(n58), .C(n57), 
        .ZN(n60) );
  INR4D0 U34 ( .A1(n90), .B1(n50), .B2(n68), .B3(n49), .ZN(n71) );
  OAI21D0 U35 ( .A1(n56), .A2(n55), .B(n54), .ZN(n57) );
  IIND4D0 U36 ( .A1(n73), .A2(n74), .B1(n53), .B2(n99), .ZN(n55) );
  ND4D0 U37 ( .A1(n74), .A2(n73), .A3(n72), .A4(n51), .ZN(n30) );
  CKND2D0 U38 ( .A1(n52), .A2(n51), .ZN(n99) );
  OAI211D0 U39 ( .A1(y[30]), .A2(\intadd_0/n1 ), .B(n77), .C(n75), .ZN(n31) );
  IIND4D0 U40 ( .A1(n72), .A2(n75), .B1(n96), .B2(n97), .ZN(n56) );
  OAI21D0 U41 ( .A1(\intadd_0/SUM[4] ), .A2(n20), .B(n27), .ZN(n97) );
  NR2D0 U42 ( .A1(\intadd_0/SUM[6] ), .A2(n18), .ZN(n96) );
  CKND2D0 U43 ( .A1(\intadd_0/SUM[1] ), .A2(n29), .ZN(n52) );
  INVD0 U44 ( .I(n53), .ZN(n77) );
  NR2D0 U45 ( .A1(n27), .A2(n28), .ZN(n18) );
  NR2D0 U46 ( .A1(n23), .A2(n22), .ZN(n29) );
  NR2D0 U47 ( .A1(n25), .A2(n26), .ZN(n20) );
  CKND2D0 U48 ( .A1(n3), .A2(n21), .ZN(n23) );
  CKND2D0 U49 ( .A1(n19), .A2(n3), .ZN(n25) );
  IND2D0 U50 ( .A1(n48), .B1(n3), .ZN(n27) );
  INVD0 U51 ( .I(n2), .ZN(n3) );
  OAI211D0 U52 ( .A1(n48), .A2(n47), .B(n46), .C(n45), .ZN(n49) );
  OAI22D0 U53 ( .A1(n44), .A2(n86), .B1(n43), .B2(n86), .ZN(n45) );
  INVD0 U54 ( .I(n59), .ZN(n2) );
  IND2D0 U55 ( .A1(mantissa_q[27]), .B1(n36), .ZN(n59) );
  OR4D0 U56 ( .A1(mantissa_q[26]), .A2(mantissa_q[24]), .A3(mantissa_q[25]), 
        .A4(mantissa_q[23]), .Z(n36) );
  AN4D0 U57 ( .A1(n42), .A2(n41), .A3(n40), .A4(n39), .Z(n43) );
  NR4D0 U58 ( .A1(mantissa_q[17]), .A2(mantissa_q[10]), .A3(mantissa_q[11]), 
        .A4(mantissa_q[9]), .ZN(n40) );
  INVD0 U59 ( .I(mantissa_q[12]), .ZN(n41) );
  NR2D0 U60 ( .A1(n1), .A2(\intadd_0/n1 ), .ZN(n58) );
  INVD0 U61 ( .I(\intadd_0/SUM[5] ), .ZN(n28) );
  AOI21D0 U62 ( .A1(x[31]), .A2(y[31]), .B(n95), .ZN(result[31]) );
  OAI21D0 U63 ( .A1(x[31]), .A2(y[31]), .B(n94), .ZN(n95) );
  ND3D0 U64 ( .A1(n19), .A2(\intadd_0/SUM[3] ), .A3(\intadd_0/SUM[4] ), .ZN(
        n48) );
  INVD0 U65 ( .I(n87), .ZN(n69) );
  INVD0 U66 ( .I(\intadd_0/SUM[3] ), .ZN(n26) );
  OAI21D0 U67 ( .A1(n67), .A2(n66), .B(n86), .ZN(n87) );
  INVD0 U68 ( .I(\intadd_0/SUM[2] ), .ZN(n24) );
  AN4D0 U69 ( .A1(\intadd_0/SUM[0] ), .A2(\intadd_0/SUM[1] ), .A3(
        \intadd_0/SUM[2] ), .A4(n21), .Z(n19) );
  ND4D0 U70 ( .A1(n65), .A2(n64), .A3(n63), .A4(n62), .ZN(n66) );
  ND4D0 U71 ( .A1(n82), .A2(n81), .A3(n80), .A4(n79), .ZN(n84) );
  NR4D0 U72 ( .A1(y[6]), .A2(y[16]), .A3(y[1]), .A4(y[9]), .ZN(n63) );
  OR4D0 U73 ( .A1(y[7]), .A2(y[8]), .A3(y[0]), .A4(y[22]), .Z(n67) );
  IND2D0 U74 ( .A1(n83), .B1(n89), .ZN(n68) );
  INVD0 U75 ( .I(\intadd_0/SUM[0] ), .ZN(n22) );
  CKND2D0 U76 ( .A1(n35), .A2(n34), .ZN(n89) );
  NR2D0 U77 ( .A1(n38), .A2(n37), .ZN(n86) );
  NR4D0 U78 ( .A1(y[11]), .A2(y[12]), .A3(y[10]), .A4(y[15]), .ZN(n65) );
  INVD0 U79 ( .I(\intadd_0/B[6] ), .ZN(n1) );
  OAI21D0 U80 ( .A1(x[23]), .A2(n17), .B(\intadd_0/CI ), .ZN(n21) );
  CKND2D0 U81 ( .A1(x[23]), .A2(n17), .ZN(\intadd_0/CI ) );
  CKND2D0 U82 ( .A1(n16), .A2(n15), .ZN(n90) );
  NR2D0 U83 ( .A1(n33), .A2(n32), .ZN(n83) );
  INVD0 U84 ( .I(y[30]), .ZN(\intadd_0/B[6] ) );
  ND4D0 U85 ( .A1(y[30]), .A2(y[24]), .A3(y[23]), .A4(y[26]), .ZN(n38) );
  ND4D0 U86 ( .A1(x[28]), .A2(x[29]), .A3(x[30]), .A4(x[23]), .ZN(n32) );
  INVD0 U87 ( .I(x[26]), .ZN(\intadd_0/B[2] ) );
  ND4D0 U88 ( .A1(y[25]), .A2(y[28]), .A3(y[27]), .A4(y[29]), .ZN(n37) );
  ND4D0 U89 ( .A1(x[24]), .A2(x[25]), .A3(x[26]), .A4(x[27]), .ZN(n33) );
  INVD0 U90 ( .I(x[25]), .ZN(\intadd_0/B[1] ) );
  INVD0 U91 ( .I(x[30]), .ZN(\intadd_0/A[6] ) );
  INVD0 U92 ( .I(x[24]), .ZN(\intadd_0/B[0] ) );
  NR4D0 U93 ( .A1(x[24]), .A2(x[25]), .A3(x[26]), .A4(x[27]), .ZN(n15) );
  NR4D0 U94 ( .A1(x[1]), .A2(x[10]), .A3(x[4]), .A4(x[2]), .ZN(n81) );
  NR4D0 U95 ( .A1(x[6]), .A2(x[7]), .A3(x[5]), .A4(x[9]), .ZN(n82) );
  NR4D0 U96 ( .A1(x[28]), .A2(x[29]), .A3(x[30]), .A4(x[23]), .ZN(n16) );
  INVD0 U97 ( .I(y[23]), .ZN(n17) );
  INVD0 U98 ( .I(x[27]), .ZN(\intadd_0/B[3] ) );
  INVD0 U99 ( .I(x[29]), .ZN(\intadd_0/B[5] ) );
  NR4D0 U100 ( .A1(y[25]), .A2(y[28]), .A3(y[27]), .A4(y[29]), .ZN(n35) );
  INVD0 U101 ( .I(x[28]), .ZN(\intadd_0/B[4] ) );
  INVD0 U102 ( .I(n91), .ZN(n6) );
  INVD0 U103 ( .I(n91), .ZN(n7) );
  INVD0 U104 ( .I(n91), .ZN(n8) );
  INVD0 U105 ( .I(n91), .ZN(n9) );
  OAI21D0 U106 ( .A1(n21), .A2(n59), .B(n23), .ZN(n53) );
  MUX2ND0 U107 ( .I0(\intadd_0/SUM[0] ), .I1(n22), .S(n23), .ZN(n75) );
  MUX2ND0 U108 ( .I0(\intadd_0/SUM[2] ), .I1(n24), .S(n52), .ZN(n74) );
  MUX2ND0 U109 ( .I0(\intadd_0/SUM[3] ), .I1(n26), .S(n25), .ZN(n73) );
  MUX2ND0 U110 ( .I0(\intadd_0/SUM[5] ), .I1(n28), .S(n27), .ZN(n72) );
  OR2D0 U111 ( .A1(n29), .A2(\intadd_0/SUM[1] ), .Z(n51) );
  NR4D0 U112 ( .A1(n96), .A2(n97), .A3(n31), .A4(n30), .ZN(n50) );
  NR4D0 U113 ( .A1(y[30]), .A2(y[24]), .A3(y[23]), .A4(y[26]), .ZN(n34) );
  OAI211D0 U114 ( .A1(n1), .A2(\intadd_0/n1 ), .B(\intadd_0/SUM[5] ), .C(
        \intadd_0/SUM[6] ), .ZN(n47) );
  AOI22D0 U115 ( .A1(n1), .A2(\intadd_0/n1 ), .B1(mantissa_q[27]), .B2(
        mantissa_q[26]), .ZN(n46) );
  NR2D0 U116 ( .A1(mantissa_q[21]), .A2(n36), .ZN(n44) );
  NR4D0 U117 ( .A1(mantissa_q[22]), .A2(mantissa_q[20]), .A3(mantissa_q[15]), 
        .A4(mantissa_q[16]), .ZN(n42) );
  NR4D0 U118 ( .A1(mantissa_q[13]), .A2(mantissa_q[14]), .A3(mantissa_q[18]), 
        .A4(mantissa_q[19]), .ZN(n39) );
  NR3D0 U119 ( .A1(mantissa_q[26]), .A2(mantissa_q[24]), .A3(mantissa_q[25]), 
        .ZN(n54) );
  INVD0 U120 ( .I(n60), .ZN(n70) );
  OR4D0 U121 ( .A1(y[2]), .A2(y[21]), .A3(y[4]), .A4(y[17]), .Z(n61) );
  NR4D0 U122 ( .A1(y[13]), .A2(y[18]), .A3(y[3]), .A4(n61), .ZN(n64) );
  NR4D0 U123 ( .A1(y[14]), .A2(y[19]), .A3(y[20]), .A4(y[5]), .ZN(n62) );
  OAI21D0 U124 ( .A1(n72), .A2(n4), .B(n98), .ZN(result[29]) );
  OAI21D0 U125 ( .A1(n73), .A2(n5), .B(n10), .ZN(result[27]) );
  OAI21D0 U126 ( .A1(n74), .A2(n4), .B(n98), .ZN(result[26]) );
  OAI21D0 U127 ( .A1(n75), .A2(n5), .B(n10), .ZN(result[24]) );
  OAI21D0 U128 ( .A1(n77), .A2(n4), .B(n98), .ZN(result[23]) );
  OR4D0 U129 ( .A1(x[21]), .A2(x[22]), .A3(x[20]), .A4(x[0]), .Z(n78) );
  OR4D0 U130 ( .A1(x[3]), .A2(x[19]), .A3(x[17]), .A4(n78), .Z(n85) );
  NR4D0 U131 ( .A1(x[14]), .A2(x[12]), .A3(x[16]), .A4(x[15]), .ZN(n80) );
  NR4D0 U132 ( .A1(x[18]), .A2(x[11]), .A3(x[8]), .A4(x[13]), .ZN(n79) );
  OAI31D0 U133 ( .A1(n86), .A2(n85), .A3(n84), .B(n83), .ZN(n88) );
  OA211D0 U134 ( .A1(n90), .A2(n89), .B(n88), .C(n87), .Z(n94) );
endmodule


module plsad_fp32_div_MANTISSA_BITS10 ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   \C5/Z_24 , \C5/Z_23 , \C5/Z_22 , \C5/Z_21 , \C5/Z_20 , \C5/Z_19 ,
         \C5/Z_18 , \C5/Z_17 , \C5/Z_16 , \C5/Z_15 , \C5/Z_14 , \C5/Z_13 ,
         \C5/Z_12 , \C7/Z_22 , \C7/Z_21 , \C7/Z_20 , \C7/Z_19 , \C7/Z_18 ,
         \C7/Z_17 , \C7/Z_16 , \C7/Z_15 , \C7/Z_14 , \C7/Z_13 ,
         \U37/RSOP_64/C9/DATA1_23 , \U37/RSOP_64/C9/DATA1_22 ,
         \U37/RSOP_64/C9/DATA1_21 , \U37/RSOP_64/C9/DATA1_20 ,
         \U37/RSOP_64/C9/DATA1_19 , \U37/RSOP_64/C9/DATA1_18 ,
         \U37/RSOP_64/C9/DATA1_17 , \U37/RSOP_64/C9/DATA1_16 ,
         \U37/RSOP_64/C9/DATA1_15 , \U37/RSOP_64/C9/DATA1_14 ,
         \U37/RSOP_64/C9/DATA1_13 , \U37/RSOP_64/C9/DATA2_24 ,
         \U37/RSOP_64/C8/Z_22 , \U37/RSOP_64/C8/Z_21 , \U37/RSOP_64/C8/Z_20 ,
         \U37/RSOP_64/C8/Z_19 , \U37/RSOP_64/C8/Z_18 , \U37/RSOP_64/C8/Z_17 ,
         \U37/RSOP_64/C8/Z_16 , \U37/RSOP_64/C8/Z_15 , \U37/RSOP_64/C8/Z_14 ,
         \U37/RSOP_64/C8/Z_13 , \DP_OP_187J1_123_5310/n261 ,
         \DP_OP_187J1_123_5310/n260 , \DP_OP_187J1_123_5310/n259 ,
         \DP_OP_187J1_123_5310/n258 , \DP_OP_187J1_123_5310/n257 ,
         \DP_OP_187J1_123_5310/n256 , \DP_OP_187J1_123_5310/n255 ,
         \DP_OP_187J1_123_5310/n254 , \DP_OP_187J1_123_5310/n253 ,
         \DP_OP_187J1_123_5310/n252 , \DP_OP_187J1_123_5310/n251 ,
         \DP_OP_187J1_123_5310/n250 , \DP_OP_187J1_123_5310/n249 ,
         \DP_OP_187J1_123_5310/n248 , \DP_OP_187J1_123_5310/n247 ,
         \DP_OP_187J1_123_5310/n246 , \DP_OP_187J1_123_5310/n245 ,
         \DP_OP_187J1_123_5310/n204 , \DP_OP_187J1_123_5310/n203 ,
         \DP_OP_187J1_123_5310/n202 , \DP_OP_187J1_123_5310/n201 ,
         \DP_OP_187J1_123_5310/n200 , \DP_OP_187J1_123_5310/n199 ,
         \DP_OP_187J1_123_5310/n198 , \DP_OP_187J1_123_5310/n115 ,
         \DP_OP_187J1_123_5310/n114 , \DP_OP_187J1_123_5310/n113 ,
         \DP_OP_187J1_123_5310/n112 , \DP_OP_187J1_123_5310/n111 ,
         \DP_OP_187J1_123_5310/n110 , \DP_OP_187J1_123_5310/n109 ,
         \DP_OP_187J1_123_5310/n96 , \DP_OP_187J1_123_5310/n95 ,
         \DP_OP_187J1_123_5310/n94 , \DP_OP_187J1_123_5310/n93 ,
         \DP_OP_187J1_123_5310/n92 , \DP_OP_187J1_123_5310/n91 ,
         \DP_OP_187J1_123_5310/n90 , \DP_OP_187J1_123_5310/n89 ,
         \DP_OP_187J1_123_5310/n88 , \DP_OP_187J1_123_5310/n87 ,
         \DP_OP_187J1_123_5310/n86 , \DP_OP_187J1_123_5310/n85 ,
         \DP_OP_187J1_123_5310/n84 , \DP_OP_187J1_123_5310/n83 ,
         \DP_OP_187J1_123_5310/n68 , \DP_OP_187J1_123_5310/n67 ,
         \DP_OP_187J1_123_5310/n66 , \DP_OP_187J1_123_5310/n65 ,
         \DP_OP_187J1_123_5310/n64 , \DP_OP_187J1_123_5310/n63 ,
         \DP_OP_187J1_123_5310/n62 , \DP_OP_187J1_123_5310/n61 ,
         \DP_OP_187J1_123_5310/n60 , \DP_OP_187J1_123_5310/n59 ,
         \DP_OP_187J1_123_5310/n58 , \DP_OP_187J1_123_5310/n57 ,
         \DP_OP_187J1_123_5310/n56 , \DP_OP_187J1_123_5310/n55 ,
         \DP_OP_187J1_123_5310/n54 , \DP_OP_187J1_123_5310/n53 ,
         \DP_OP_187J1_123_5310/n52 , \DP_OP_187J1_123_5310/n51 ,
         \DP_OP_187J1_123_5310/n14 , \DP_OP_187J1_123_5310/n13 ,
         \DP_OP_187J1_123_5310/n12 , \DP_OP_187J1_123_5310/n11 ,
         \DP_OP_187J1_123_5310/n10 , \DP_OP_187J1_123_5310/n9 ,
         \DP_OP_187J1_123_5310/n8 , \DP_OP_187J1_123_5310/n7 ,
         \DP_OP_187J1_123_5310/n6 , \DP_OP_187J1_123_5310/n5 ,
         \DP_OP_187J1_123_5310/n4 , \DP_OP_186J1_122_6533/n80 ,
         \DP_OP_186J1_122_6533/n12 , \DP_OP_186J1_122_6533/n11 ,
         \DP_OP_186J1_122_6533/n10 , \DP_OP_186J1_122_6533/n9 ,
         \DP_OP_186J1_122_6533/n8 , \DP_OP_186J1_122_6533/n7 ,
         \DP_OP_186J1_122_6533/n6 , \DP_OP_186J1_122_6533/n5 ,
         \DP_OP_186J1_122_6533/n4 , \DP_OP_186J1_122_6533/n3 , n3, n4, n5, n6,
         n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174;
  wire   [27:0] q;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8;

  paper_fp32_div_pack pack ( .x({x[31:23], n20, n19, n16, n15, n18, n14, n13, 
        n17, n12, n11, x[12:0]}), .y({y[31:23], n10, n23, n21, n9, n8, n7, n6, 
        n5, n4, n3, y[12:0]}), .mantissa_q({n28, n27, q[25:12], 
        \DP_OP_187J1_123_5310/n247 , \DP_OP_187J1_123_5310/n246 , 
        \DP_OP_187J1_123_5310/n245 , 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .result({result[31:9], SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8}) );
  FA1D0 \DP_OP_187J1_123_5310/U174  ( .A(x[16]), .B(n12), .CI(n165), .CO(
        \DP_OP_187J1_123_5310/n115 ), .S(\DP_OP_187J1_123_5310/n198 ) );
  FA1D0 \DP_OP_187J1_123_5310/U173  ( .A(x[17]), .B(n17), .CI(
        \DP_OP_187J1_123_5310/n115 ), .CO(\DP_OP_187J1_123_5310/n114 ), .S(
        \DP_OP_187J1_123_5310/n199 ) );
  FA1D0 \DP_OP_187J1_123_5310/U172  ( .A(x[18]), .B(n13), .CI(
        \DP_OP_187J1_123_5310/n114 ), .CO(\DP_OP_187J1_123_5310/n113 ), .S(
        \DP_OP_187J1_123_5310/n200 ) );
  FA1D0 \DP_OP_187J1_123_5310/U171  ( .A(x[19]), .B(n14), .CI(
        \DP_OP_187J1_123_5310/n113 ), .CO(\DP_OP_187J1_123_5310/n112 ), .S(
        \DP_OP_187J1_123_5310/n201 ) );
  FA1D0 \DP_OP_187J1_123_5310/U170  ( .A(x[20]), .B(n18), .CI(
        \DP_OP_187J1_123_5310/n112 ), .CO(\DP_OP_187J1_123_5310/n111 ), .S(
        \DP_OP_187J1_123_5310/n202 ) );
  FA1D0 \DP_OP_187J1_123_5310/U169  ( .A(x[21]), .B(n15), .CI(
        \DP_OP_187J1_123_5310/n111 ), .CO(\DP_OP_187J1_123_5310/n110 ), .S(
        \DP_OP_187J1_123_5310/n203 ) );
  FA1D0 \DP_OP_187J1_123_5310/U168  ( .A(x[22]), .B(n16), .CI(
        \DP_OP_187J1_123_5310/n110 ), .CO(\DP_OP_187J1_123_5310/n109 ), .S(
        \DP_OP_187J1_123_5310/n204 ) );
  FA1D0 \DP_OP_187J1_123_5310/U100  ( .A(\DP_OP_187J1_123_5310/n96 ), .B(n163), 
        .CI(\DP_OP_187J1_123_5310/n68 ), .CO(\DP_OP_187J1_123_5310/n67 ), .S(
        \DP_OP_187J1_123_5310/n245 ) );
  FA1D0 \DP_OP_186J1_122_6533/U14  ( .A(\U37/RSOP_64/C8/Z_13 ), .B(\C7/Z_13 ), 
        .CI(n162), .CO(\DP_OP_186J1_122_6533/n12 ), .S(
        \U37/RSOP_64/C9/DATA1_13 ) );
  FA1D0 \DP_OP_187J1_123_5310/U14  ( .A(\DP_OP_187J1_123_5310/n252 ), .B(n169), 
        .CI(\DP_OP_187J1_123_5310/n11 ), .CO(\DP_OP_187J1_123_5310/n10 ), .S(
        q[16]) );
  FA1D0 \DP_OP_187J1_123_5310/U99  ( .A(\DP_OP_187J1_123_5310/n95 ), .B(n173), 
        .CI(\DP_OP_187J1_123_5310/n67 ), .CO(\DP_OP_187J1_123_5310/n66 ), .S(
        \DP_OP_187J1_123_5310/n246 ) );
  FA1D0 \DP_OP_187J1_123_5310/U88  ( .A(\DP_OP_187J1_123_5310/n84 ), .B(
        \C5/Z_21 ), .CI(\DP_OP_187J1_123_5310/n56 ), .CO(
        \DP_OP_187J1_123_5310/n55 ), .S(\DP_OP_187J1_123_5310/n257 ) );
  FA1D0 \DP_OP_187J1_123_5310/U95  ( .A(\DP_OP_187J1_123_5310/n91 ), .B(
        \C5/Z_14 ), .CI(\DP_OP_187J1_123_5310/n63 ), .CO(
        \DP_OP_187J1_123_5310/n62 ), .S(\DP_OP_187J1_123_5310/n250 ) );
  FA1D0 \DP_OP_187J1_123_5310/U97  ( .A(\DP_OP_187J1_123_5310/n93 ), .B(
        \C5/Z_12 ), .CI(\DP_OP_187J1_123_5310/n65 ), .CO(
        \DP_OP_187J1_123_5310/n64 ), .S(\DP_OP_187J1_123_5310/n248 ) );
  FA1D0 \DP_OP_187J1_123_5310/U87  ( .A(\DP_OP_187J1_123_5310/n83 ), .B(
        \C5/Z_22 ), .CI(\DP_OP_187J1_123_5310/n55 ), .CO(
        \DP_OP_187J1_123_5310/n54 ), .S(\DP_OP_187J1_123_5310/n258 ) );
  FA1D0 \DP_OP_186J1_122_6533/U7  ( .A(\U37/RSOP_64/C8/Z_20 ), .B(\C7/Z_20 ), 
        .CI(\DP_OP_186J1_122_6533/n6 ), .CO(\DP_OP_186J1_122_6533/n5 ), .S(
        \U37/RSOP_64/C9/DATA1_20 ) );
  FA1D0 \DP_OP_186J1_122_6533/U12  ( .A(\U37/RSOP_64/C8/Z_15 ), .B(\C7/Z_15 ), 
        .CI(\DP_OP_186J1_122_6533/n11 ), .CO(\DP_OP_186J1_122_6533/n10 ), .S(
        \U37/RSOP_64/C9/DATA1_15 ) );
  FA1D0 \DP_OP_186J1_122_6533/U13  ( .A(\U37/RSOP_64/C8/Z_14 ), .B(\C7/Z_14 ), 
        .CI(\DP_OP_186J1_122_6533/n12 ), .CO(\DP_OP_186J1_122_6533/n11 ), .S(
        \U37/RSOP_64/C9/DATA1_14 ) );
  FA1D0 \DP_OP_187J1_123_5310/U86  ( .A(n25), .B(\C5/Z_23 ), .CI(
        \DP_OP_187J1_123_5310/n54 ), .CO(\DP_OP_187J1_123_5310/n53 ), .S(
        \DP_OP_187J1_123_5310/n259 ) );
  FA1D0 \DP_OP_186J1_122_6533/U5  ( .A(\U37/RSOP_64/C8/Z_22 ), .B(\C7/Z_22 ), 
        .CI(\DP_OP_186J1_122_6533/n4 ), .CO(\DP_OP_186J1_122_6533/n3 ), .S(
        \U37/RSOP_64/C9/DATA1_22 ) );
  FA1D0 \DP_OP_186J1_122_6533/U11  ( .A(\U37/RSOP_64/C8/Z_16 ), .B(\C7/Z_16 ), 
        .CI(\DP_OP_186J1_122_6533/n10 ), .CO(\DP_OP_186J1_122_6533/n9 ), .S(
        \U37/RSOP_64/C9/DATA1_16 ) );
  FA1D0 \DP_OP_187J1_123_5310/U84  ( .A(n25), .B(n164), .CI(
        \DP_OP_187J1_123_5310/n52 ), .CO(\DP_OP_187J1_123_5310/n51 ), .S(
        \DP_OP_187J1_123_5310/n261 ) );
  HA1D0 \DP_OP_186J1_122_6533/U4  ( .A(\DP_OP_186J1_122_6533/n3 ), .B(
        \DP_OP_186J1_122_6533/n80 ), .CO(\U37/RSOP_64/C9/DATA2_24 ), .S(
        \U37/RSOP_64/C9/DATA1_23 ) );
  FA1D0 \DP_OP_187J1_123_5310/U98  ( .A(\DP_OP_187J1_123_5310/n94 ), .B(n174), 
        .CI(\DP_OP_187J1_123_5310/n66 ), .CO(\DP_OP_187J1_123_5310/n65 ), .S(
        \DP_OP_187J1_123_5310/n247 ) );
  FA1D0 \DP_OP_187J1_123_5310/U96  ( .A(\DP_OP_187J1_123_5310/n92 ), .B(
        \C5/Z_13 ), .CI(\DP_OP_187J1_123_5310/n64 ), .CO(
        \DP_OP_187J1_123_5310/n63 ), .S(\DP_OP_187J1_123_5310/n249 ) );
  FA1D0 \DP_OP_187J1_123_5310/U17  ( .A(\DP_OP_187J1_123_5310/n249 ), .B(n166), 
        .CI(\DP_OP_187J1_123_5310/n14 ), .CO(\DP_OP_187J1_123_5310/n13 ), .S(
        q[13]) );
  FA1D0 \DP_OP_186J1_122_6533/U10  ( .A(\U37/RSOP_64/C8/Z_17 ), .B(\C7/Z_17 ), 
        .CI(\DP_OP_186J1_122_6533/n9 ), .CO(\DP_OP_186J1_122_6533/n8 ), .S(
        \U37/RSOP_64/C9/DATA1_17 ) );
  FA1D0 \DP_OP_187J1_123_5310/U94  ( .A(\DP_OP_187J1_123_5310/n90 ), .B(
        \C5/Z_15 ), .CI(\DP_OP_187J1_123_5310/n62 ), .CO(
        \DP_OP_187J1_123_5310/n61 ), .S(\DP_OP_187J1_123_5310/n251 ) );
  FA1D0 \DP_OP_187J1_123_5310/U16  ( .A(\DP_OP_187J1_123_5310/n250 ), .B(n167), 
        .CI(\DP_OP_187J1_123_5310/n13 ), .CO(\DP_OP_187J1_123_5310/n12 ), .S(
        q[14]) );
  FA1D0 \DP_OP_186J1_122_6533/U9  ( .A(\U37/RSOP_64/C8/Z_18 ), .B(\C7/Z_18 ), 
        .CI(\DP_OP_186J1_122_6533/n8 ), .CO(\DP_OP_186J1_122_6533/n7 ), .S(
        \U37/RSOP_64/C9/DATA1_18 ) );
  FA1D0 \DP_OP_187J1_123_5310/U15  ( .A(\DP_OP_187J1_123_5310/n251 ), .B(n168), 
        .CI(\DP_OP_187J1_123_5310/n12 ), .CO(\DP_OP_187J1_123_5310/n11 ), .S(
        q[15]) );
  FA1D0 \DP_OP_187J1_123_5310/U93  ( .A(\DP_OP_187J1_123_5310/n89 ), .B(
        \C5/Z_16 ), .CI(\DP_OP_187J1_123_5310/n61 ), .CO(
        \DP_OP_187J1_123_5310/n60 ), .S(\DP_OP_187J1_123_5310/n252 ) );
  FA1D0 \DP_OP_186J1_122_6533/U8  ( .A(\U37/RSOP_64/C8/Z_19 ), .B(\C7/Z_19 ), 
        .CI(\DP_OP_186J1_122_6533/n7 ), .CO(\DP_OP_186J1_122_6533/n6 ), .S(
        \U37/RSOP_64/C9/DATA1_19 ) );
  FA1D0 \DP_OP_187J1_123_5310/U92  ( .A(\DP_OP_187J1_123_5310/n88 ), .B(
        \C5/Z_17 ), .CI(\DP_OP_187J1_123_5310/n60 ), .CO(
        \DP_OP_187J1_123_5310/n59 ), .S(\DP_OP_187J1_123_5310/n253 ) );
  FA1D0 \DP_OP_187J1_123_5310/U91  ( .A(\DP_OP_187J1_123_5310/n87 ), .B(
        \C5/Z_18 ), .CI(\DP_OP_187J1_123_5310/n59 ), .CO(
        \DP_OP_187J1_123_5310/n58 ), .S(\DP_OP_187J1_123_5310/n254 ) );
  FA1D0 \DP_OP_187J1_123_5310/U13  ( .A(\DP_OP_187J1_123_5310/n253 ), .B(n170), 
        .CI(\DP_OP_187J1_123_5310/n10 ), .CO(\DP_OP_187J1_123_5310/n9 ), .S(
        q[17]) );
  FA1D0 \DP_OP_186J1_122_6533/U6  ( .A(\U37/RSOP_64/C8/Z_21 ), .B(\C7/Z_21 ), 
        .CI(\DP_OP_186J1_122_6533/n5 ), .CO(\DP_OP_186J1_122_6533/n4 ), .S(
        \U37/RSOP_64/C9/DATA1_21 ) );
  FA1D0 \DP_OP_187J1_123_5310/U90  ( .A(\DP_OP_187J1_123_5310/n86 ), .B(
        \C5/Z_19 ), .CI(\DP_OP_187J1_123_5310/n58 ), .CO(
        \DP_OP_187J1_123_5310/n57 ), .S(\DP_OP_187J1_123_5310/n255 ) );
  FA1D0 \DP_OP_187J1_123_5310/U12  ( .A(\DP_OP_187J1_123_5310/n254 ), .B(n171), 
        .CI(\DP_OP_187J1_123_5310/n9 ), .CO(\DP_OP_187J1_123_5310/n8 ), .S(
        q[18]) );
  FA1D0 \DP_OP_187J1_123_5310/U89  ( .A(\DP_OP_187J1_123_5310/n85 ), .B(
        \C5/Z_20 ), .CI(\DP_OP_187J1_123_5310/n57 ), .CO(
        \DP_OP_187J1_123_5310/n56 ), .S(\DP_OP_187J1_123_5310/n256 ) );
  FA1D0 \DP_OP_187J1_123_5310/U11  ( .A(\DP_OP_187J1_123_5310/n255 ), .B(n47), 
        .CI(\DP_OP_187J1_123_5310/n8 ), .CO(\DP_OP_187J1_123_5310/n7 ), .S(
        q[19]) );
  FA1D0 \DP_OP_187J1_123_5310/U10  ( .A(\DP_OP_187J1_123_5310/n256 ), .B(n172), 
        .CI(\DP_OP_187J1_123_5310/n7 ), .CO(\DP_OP_187J1_123_5310/n6 ), .S(
        q[20]) );
  FA1D0 \DP_OP_187J1_123_5310/U9  ( .A(\DP_OP_187J1_123_5310/n257 ), .B(n48), 
        .CI(\DP_OP_187J1_123_5310/n6 ), .CO(\DP_OP_187J1_123_5310/n5 ), .S(
        q[21]) );
  FA1D0 \DP_OP_187J1_123_5310/U85  ( .A(n26), .B(\C5/Z_24 ), .CI(
        \DP_OP_187J1_123_5310/n53 ), .CO(\DP_OP_187J1_123_5310/n52 ), .S(
        \DP_OP_187J1_123_5310/n260 ) );
  INVD0 U4 ( .I(q[27]), .ZN(n28) );
  AOI22D0 U5 ( .A1(n55), .A2(n88), .B1(q[25]), .B2(n83), .ZN(q[27]) );
  XNR2D0 U6 ( .A1(n54), .A2(n53), .ZN(n55) );
  XNR2D0 U7 ( .A1(\DP_OP_187J1_123_5310/n261 ), .A2(n52), .ZN(q[25]) );
  OR2D0 U8 ( .A1(n52), .A2(\DP_OP_187J1_123_5310/n261 ), .Z(n53) );
  XNR2D0 U9 ( .A1(\DP_OP_187J1_123_5310/n260 ), .A2(n87), .ZN(q[24]) );
  OR2D0 U10 ( .A1(n87), .A2(\DP_OP_187J1_123_5310/n260 ), .Z(n52) );
  INVD0 U11 ( .I(\DP_OP_187J1_123_5310/n51 ), .ZN(n54) );
  OR2D0 U12 ( .A1(\DP_OP_187J1_123_5310/n4 ), .A2(\DP_OP_187J1_123_5310/n259 ), 
        .Z(n87) );
  XNR2D0 U13 ( .A1(\DP_OP_187J1_123_5310/n259 ), .A2(\DP_OP_187J1_123_5310/n4 ), .ZN(q[23]) );
  CKND2D0 U14 ( .A1(n49), .A2(n50), .ZN(\DP_OP_187J1_123_5310/n4 ) );
  INVD0 U15 ( .I(\DP_OP_187J1_123_5310/n5 ), .ZN(n49) );
  INVD0 U16 ( .I(\DP_OP_187J1_123_5310/n258 ), .ZN(n50) );
  NR2D0 U17 ( .A1(n58), .A2(n67), .ZN(\C5/Z_24 ) );
  INVD0 U18 ( .I(\U37/RSOP_64/C9/DATA2_24 ), .ZN(n58) );
  CKAN2D0 U19 ( .A1(\U37/RSOP_64/C9/DATA1_23 ), .A2(n63), .Z(\C5/Z_23 ) );
  CKAN2D0 U20 ( .A1(\U37/RSOP_64/C9/DATA2_24 ), .A2(n129), .Z(n164) );
  IND2D0 U21 ( .A1(\U37/RSOP_64/C9/DATA1_22 ), .B1(n57), .ZN(\C5/Z_22 ) );
  IND2D0 U22 ( .A1(\U37/RSOP_64/C9/DATA1_21 ), .B1(n57), .ZN(\C5/Z_21 ) );
  IND2D0 U23 ( .A1(\U37/RSOP_64/C9/DATA1_20 ), .B1(n161), .ZN(\C5/Z_20 ) );
  CKAN2D0 U24 ( .A1(\U37/RSOP_64/C9/DATA1_19 ), .A2(n161), .Z(\C5/Z_19 ) );
  IND2D0 U25 ( .A1(\U37/RSOP_64/C9/DATA1_18 ), .B1(n161), .ZN(\C5/Z_18 ) );
  IND2D0 U26 ( .A1(\U37/RSOP_64/C9/DATA1_17 ), .B1(n161), .ZN(\C5/Z_17 ) );
  CKND2D0 U27 ( .A1(n61), .A2(n60), .ZN(\DP_OP_187J1_123_5310/n14 ) );
  XOR2D0 U28 ( .A1(n93), .A2(n25), .Z(\DP_OP_187J1_123_5310/n84 ) );
  XOR2D0 U29 ( .A1(n90), .A2(n26), .Z(\DP_OP_187J1_123_5310/n83 ) );
  XNR2D0 U30 ( .A1(n86), .A2(\DP_OP_187J1_123_5310/n248 ), .ZN(q[12]) );
  CKAN2D0 U31 ( .A1(\U37/RSOP_64/C9/DATA1_15 ), .A2(n63), .Z(\C5/Z_15 ) );
  AO21D0 U32 ( .A1(n92), .A2(n64), .B(n40), .Z(n93) );
  AO21D0 U33 ( .A1(n89), .A2(n56), .B(n37), .Z(n90) );
  XOR2D0 U34 ( .A1(n100), .A2(n99), .Z(\DP_OP_187J1_123_5310/n85 ) );
  XOR2D0 U35 ( .A1(n104), .A2(n26), .Z(\DP_OP_187J1_123_5310/n86 ) );
  CKAN2D0 U36 ( .A1(n20), .A2(n91), .Z(n89) );
  CKAN2D0 U37 ( .A1(\U37/RSOP_64/C9/DATA1_14 ), .A2(n63), .Z(\C5/Z_14 ) );
  AO21D0 U38 ( .A1(n98), .A2(n64), .B(n97), .Z(n100) );
  XOR2D0 U39 ( .A1(n91), .A2(n20), .Z(n92) );
  AO21D0 U40 ( .A1(\DP_OP_187J1_123_5310/n204 ), .A2(n121), .B(n103), .Z(n104)
         );
  XOR2D0 U41 ( .A1(n154), .A2(\DP_OP_187J1_123_5310/n96 ), .Z(
        \DP_OP_187J1_123_5310/n94 ) );
  XOR2D0 U42 ( .A1(n134), .A2(n139), .Z(\DP_OP_187J1_123_5310/n91 ) );
  XOR2D0 U43 ( .A1(n122), .A2(n139), .Z(\DP_OP_187J1_123_5310/n89 ) );
  AOI22D0 U44 ( .A1(n42), .A2(n4), .B1(n33), .B2(y[15]), .ZN(n167) );
  AOI22D0 U45 ( .A1(n41), .A2(n6), .B1(n32), .B2(y[17]), .ZN(n169) );
  CKAN2D0 U46 ( .A1(n19), .A2(\DP_OP_187J1_123_5310/n109 ), .Z(n91) );
  XOR2D0 U47 ( .A1(n140), .A2(n139), .Z(\DP_OP_187J1_123_5310/n92 ) );
  XOR2D0 U48 ( .A1(\DP_OP_187J1_123_5310/n109 ), .A2(n19), .Z(n98) );
  CKND2D0 U49 ( .A1(n32), .A2(y[13]), .ZN(n86) );
  XOR2D0 U50 ( .A1(n146), .A2(\DP_OP_187J1_123_5310/n96 ), .Z(
        \DP_OP_187J1_123_5310/n93 ) );
  AOI22D0 U51 ( .A1(n42), .A2(n7), .B1(n33), .B2(y[18]), .ZN(n170) );
  XOR2D0 U52 ( .A1(n128), .A2(n139), .Z(\DP_OP_187J1_123_5310/n90 ) );
  AOI22D0 U53 ( .A1(n41), .A2(y[13]), .B1(n33), .B2(y[14]), .ZN(n166) );
  CKAN2D0 U54 ( .A1(\U37/RSOP_64/C9/DATA1_13 ), .A2(n63), .Z(\C5/Z_13 ) );
  AOI22D0 U55 ( .A1(n41), .A2(n9), .B1(n32), .B2(n21), .ZN(n47) );
  XOR2D0 U56 ( .A1(n109), .A2(n25), .Z(\DP_OP_187J1_123_5310/n87 ) );
  OAI211D0 U57 ( .A1(n102), .A2(n83), .B(n82), .C(n84), .ZN(
        \U37/RSOP_64/C8/Z_21 ) );
  OAI211D0 U58 ( .A1(n107), .A2(n83), .B(n80), .C(n105), .ZN(
        \U37/RSOP_64/C8/Z_20 ) );
  AO21D0 U59 ( .A1(\DP_OP_187J1_123_5310/n201 ), .A2(n121), .B(n120), .Z(n122)
         );
  AO21D0 U60 ( .A1(\DP_OP_187J1_123_5310/n203 ), .A2(n121), .B(n108), .Z(n109)
         );
  AO21D0 U61 ( .A1(\DP_OP_187J1_123_5310/n202 ), .A2(n121), .B(n115), .Z(n116)
         );
  INVD0 U62 ( .I(n31), .ZN(n33) );
  INVD0 U63 ( .I(n31), .ZN(n32) );
  OAI21D0 U64 ( .A1(n85), .A2(n132), .B(n73), .ZN(\U37/RSOP_64/C8/Z_16 ) );
  OAI21D0 U65 ( .A1(n85), .A2(n96), .B(n84), .ZN(\U37/RSOP_64/C8/Z_22 ) );
  OAI21D0 U66 ( .A1(n85), .A2(n137), .B(n72), .ZN(\U37/RSOP_64/C8/Z_15 ) );
  AO21D0 U67 ( .A1(n145), .A2(n64), .B(n144), .Z(n146) );
  INVD0 U68 ( .I(n24), .ZN(n26) );
  BUFFD0 U69 ( .I(\DP_OP_187J1_123_5310/n68 ), .Z(n139) );
  OAI21D0 U70 ( .A1(n79), .A2(n119), .B(n76), .ZN(\U37/RSOP_64/C8/Z_18 ) );
  CKAN2D0 U71 ( .A1(n163), .A2(n68), .Z(n162) );
  INVD0 U72 ( .I(\DP_OP_187J1_123_5310/n68 ), .ZN(n83) );
  OAI21D0 U73 ( .A1(n79), .A2(n114), .B(n78), .ZN(\U37/RSOP_64/C8/Z_19 ) );
  INVD0 U74 ( .I(\DP_OP_187J1_123_5310/n68 ), .ZN(n85) );
  INVD0 U75 ( .I(n62), .ZN(n31) );
  OAI21D0 U76 ( .A1(n79), .A2(n126), .B(n75), .ZN(\U37/RSOP_64/C8/Z_17 ) );
  XOR2D0 U77 ( .A1(n68), .A2(n163), .Z(\C5/Z_12 ) );
  OAI211D0 U78 ( .A1(n45), .A2(n126), .B(n125), .C(n124), .ZN(n127) );
  OAI211D0 U79 ( .A1(n45), .A2(n143), .B(n142), .C(n141), .ZN(n144) );
  XOR2D0 U80 ( .A1(n160), .A2(\DP_OP_187J1_123_5310/n96 ), .Z(
        \DP_OP_187J1_123_5310/n95 ) );
  INVD0 U81 ( .I(n24), .ZN(n25) );
  OAI21D0 U82 ( .A1(n59), .A2(n114), .B(n82), .ZN(\C7/Z_18 ) );
  BUFFD0 U83 ( .I(n99), .Z(\DP_OP_187J1_123_5310/n96 ) );
  BUFFD0 U84 ( .I(n99), .Z(\DP_OP_187J1_123_5310/n68 ) );
  INVD0 U85 ( .I(n69), .ZN(n173) );
  OAI21D0 U86 ( .A1(n105), .A2(n102), .B(n81), .ZN(\C7/Z_20 ) );
  INVD0 U87 ( .I(n88), .ZN(n24) );
  INVD0 U88 ( .I(n70), .ZN(n174) );
  OAI21D0 U89 ( .A1(n158), .A2(n96), .B(n81), .ZN(\C7/Z_21 ) );
  CKND2D0 U90 ( .A1(n149), .A2(n18), .ZN(n74) );
  CKND2D0 U91 ( .A1(n40), .A2(x[20]), .ZN(n78) );
  BUFFD0 U92 ( .I(n123), .Z(n121) );
  BUFFD0 U93 ( .I(n88), .Z(n99) );
  INVD0 U94 ( .I(n71), .ZN(n129) );
  CKAN2D0 U95 ( .A1(n37), .A2(x[13]), .Z(n163) );
  CKND2D0 U96 ( .A1(n39), .A2(x[19]), .ZN(n76) );
  CKND2D0 U97 ( .A1(n37), .A2(x[21]), .ZN(n80) );
  CKND2D0 U98 ( .A1(n38), .A2(x[18]), .ZN(n75) );
  INVD0 U99 ( .I(n147), .ZN(n35) );
  CKND2D0 U100 ( .A1(n51), .A2(n77), .ZN(\DP_OP_186J1_122_6533/n80 ) );
  INVD0 U101 ( .I(n158), .ZN(n149) );
  BUFFD0 U102 ( .I(n123), .Z(n64) );
  INVD0 U103 ( .I(n147), .ZN(n36) );
  CKND2D0 U104 ( .A1(n38), .A2(x[22]), .ZN(n82) );
  OAI21D0 U105 ( .A1(n59), .A2(n107), .B(n77), .ZN(\C7/Z_19 ) );
  INVD0 U106 ( .I(\C7/Z_22 ), .ZN(n81) );
  INVD0 U107 ( .I(n29), .ZN(n30) );
  BUFFD0 U108 ( .I(n67), .Z(n123) );
  NR2D0 U109 ( .A1(n46), .A2(n110), .ZN(\C7/Z_22 ) );
  BUFFD0 U110 ( .I(n105), .Z(n158) );
  BUFFD0 U111 ( .I(n59), .Z(n71) );
  OR2D0 U112 ( .A1(n44), .A2(y[20]), .Z(n77) );
  INVD0 U113 ( .I(n67), .ZN(n161) );
  INVD0 U114 ( .I(n94), .ZN(n37) );
  INVD0 U115 ( .I(n67), .ZN(n63) );
  BUFFD0 U116 ( .I(n156), .Z(n147) );
  BUFFD0 U117 ( .I(n84), .Z(n59) );
  BUFFD0 U118 ( .I(n84), .Z(n105) );
  INVD0 U119 ( .I(n148), .ZN(n29) );
  INVD0 U120 ( .I(n57), .ZN(n67) );
  INVD0 U121 ( .I(n152), .ZN(n46) );
  INVD0 U122 ( .I(n152), .ZN(n43) );
  OR2D0 U123 ( .A1(n112), .A2(y[20]), .Z(n94) );
  INVD0 U124 ( .I(n111), .ZN(n51) );
  INVD0 U125 ( .I(n56), .ZN(n57) );
  OR2D0 U126 ( .A1(n112), .A2(n110), .Z(n84) );
  BUFFD0 U127 ( .I(y[16]), .Z(n6) );
  INVD0 U128 ( .I(n96), .ZN(n20) );
  INVD0 U129 ( .I(n143), .ZN(n12) );
  INVD0 U130 ( .I(n114), .ZN(n15) );
  INVD0 U131 ( .I(n119), .ZN(n18) );
  INVD0 U132 ( .I(n102), .ZN(n19) );
  INVD0 U133 ( .I(n107), .ZN(n16) );
  NR2D0 U134 ( .A1(n66), .A2(n22), .ZN(n56) );
  INVD0 U135 ( .I(n132), .ZN(n13) );
  INVD0 U136 ( .I(n137), .ZN(n17) );
  CKAN2D0 U137 ( .A1(n66), .A2(n23), .Z(n152) );
  NR2D0 U138 ( .A1(y[22]), .A2(n23), .ZN(n111) );
  CKND2D0 U139 ( .A1(n22), .A2(y[22]), .ZN(n112) );
  CKAN2D0 U140 ( .A1(x[15]), .A2(n11), .Z(n165) );
  INVD0 U141 ( .I(n126), .ZN(n14) );
  BUFFD0 U142 ( .I(y[17]), .Z(n7) );
  INVD0 U143 ( .I(x[20]), .ZN(n107) );
  BUFFD0 U144 ( .I(y[18]), .Z(n8) );
  INVD0 U145 ( .I(x[22]), .ZN(n96) );
  BUFFD0 U146 ( .I(y[15]), .Z(n5) );
  INVD0 U147 ( .I(x[17]), .ZN(n126) );
  INVD0 U148 ( .I(x[14]), .ZN(n143) );
  INVD0 U149 ( .I(x[15]), .ZN(n137) );
  INVD0 U150 ( .I(x[19]), .ZN(n114) );
  INVD0 U151 ( .I(y[22]), .ZN(n66) );
  INVD0 U152 ( .I(x[18]), .ZN(n119) );
  BUFFD0 U153 ( .I(y[21]), .Z(n23) );
  INVD0 U154 ( .I(x[16]), .ZN(n132) );
  BUFFD0 U155 ( .I(x[13]), .Z(n11) );
  INVD0 U156 ( .I(x[21]), .ZN(n102) );
  BUFFD0 U157 ( .I(y[21]), .Z(n22) );
  BUFFD0 U158 ( .I(y[14]), .Z(n4) );
  INVD0 U159 ( .I(x[13]), .ZN(n155) );
  BUFFD0 U160 ( .I(y[19]), .Z(n9) );
  INVD0 U161 ( .I(y[20]), .ZN(n110) );
  INVD0 U162 ( .I(n157), .ZN(n3) );
  INVD0 U163 ( .I(n66), .ZN(n10) );
  INVD0 U164 ( .I(n110), .ZN(n21) );
  INVD0 U165 ( .I(q[27]), .ZN(n27) );
  INVD0 U166 ( .I(n147), .ZN(n34) );
  INVD0 U167 ( .I(n94), .ZN(n38) );
  INVD0 U168 ( .I(n94), .ZN(n39) );
  INVD0 U169 ( .I(n94), .ZN(n40) );
  CKND2D0 U170 ( .A1(n51), .A2(n77), .ZN(n41) );
  CKND2D0 U171 ( .A1(n51), .A2(n77), .ZN(n42) );
  AOI22D0 U172 ( .A1(n42), .A2(n21), .B1(n33), .B2(n23), .ZN(n172) );
  AOI22D0 U173 ( .A1(\DP_OP_186J1_122_6533/n80 ), .A2(n8), .B1(n62), .B2(y[19]), .ZN(n171) );
  AOI22D0 U174 ( .A1(\DP_OP_186J1_122_6533/n80 ), .A2(n5), .B1(n32), .B2(y[16]), .ZN(n168) );
  INVD0 U175 ( .I(n152), .ZN(n44) );
  INVD0 U176 ( .I(n152), .ZN(n45) );
  AOI21D0 U177 ( .A1(n41), .A2(n22), .B(y[22]), .ZN(n48) );
  XNR2D0 U178 ( .A1(\DP_OP_187J1_123_5310/n5 ), .A2(
        \DP_OP_187J1_123_5310/n258 ), .ZN(q[22]) );
  CKND2D0 U179 ( .A1(n43), .A2(n51), .ZN(n88) );
  INVD0 U180 ( .I(\DP_OP_186J1_122_6533/n80 ), .ZN(n62) );
  INVD0 U181 ( .I(n86), .ZN(n61) );
  INVD0 U182 ( .I(\DP_OP_187J1_123_5310/n248 ), .ZN(n60) );
  CKND2D0 U183 ( .A1(n38), .A2(x[14]), .ZN(n69) );
  CKND2D0 U184 ( .A1(n37), .A2(n17), .ZN(n70) );
  CKND2D0 U185 ( .A1(n39), .A2(x[16]), .ZN(n72) );
  OAI21D0 U186 ( .A1(n105), .A2(n155), .B(n72), .ZN(n68) );
  CKND2D0 U187 ( .A1(\U37/RSOP_64/C9/DATA1_16 ), .A2(n57), .ZN(n65) );
  OAI31D0 U188 ( .A1(n21), .A2(n22), .A3(n66), .B(n65), .ZN(\C5/Z_16 ) );
  CKND2D0 U189 ( .A1(n40), .A2(x[17]), .ZN(n73) );
  OAI21D0 U190 ( .A1(n71), .A2(n143), .B(n73), .ZN(\C7/Z_13 ) );
  INVD0 U191 ( .I(n99), .ZN(n79) );
  OAI21D0 U192 ( .A1(n79), .A2(n155), .B(n69), .ZN(\U37/RSOP_64/C8/Z_13 ) );
  OAI21D0 U193 ( .A1(n71), .A2(n137), .B(n75), .ZN(\C7/Z_14 ) );
  OAI21D0 U194 ( .A1(n85), .A2(n143), .B(n70), .ZN(\U37/RSOP_64/C8/Z_14 ) );
  OAI21D0 U195 ( .A1(n71), .A2(n132), .B(n76), .ZN(\C7/Z_15 ) );
  OAI21D0 U196 ( .A1(n59), .A2(n126), .B(n78), .ZN(\C7/Z_16 ) );
  CKND2D0 U197 ( .A1(n111), .A2(y[20]), .ZN(n156) );
  ND4D0 U198 ( .A1(n43), .A2(n80), .A3(n156), .A4(n74), .ZN(\C7/Z_17 ) );
  INVD0 U199 ( .I(n39), .ZN(n95) );
  OAI21D0 U200 ( .A1(n44), .A2(n96), .B(n95), .ZN(n97) );
  CKND2D0 U201 ( .A1(n36), .A2(x[22]), .ZN(n101) );
  OAI211D0 U202 ( .A1(n102), .A2(n43), .B(n112), .C(n101), .ZN(n103) );
  CKND2D0 U203 ( .A1(n35), .A2(x[21]), .ZN(n106) );
  OAI211D0 U204 ( .A1(n107), .A2(n45), .B(n106), .C(n158), .ZN(n108) );
  CKAN2D0 U205 ( .A1(n111), .A2(n110), .Z(n148) );
  AOI22D0 U206 ( .A1(n30), .A2(y[19]), .B1(n34), .B2(x[20]), .ZN(n113) );
  OAI211D0 U207 ( .A1(n44), .A2(n114), .B(n113), .C(n112), .ZN(n115) );
  XOR2D0 U208 ( .A1(n116), .A2(n26), .Z(\DP_OP_187J1_123_5310/n88 ) );
  AOI22D0 U209 ( .A1(n148), .A2(y[18]), .B1(n36), .B2(x[19]), .ZN(n118) );
  CKND2D0 U210 ( .A1(n129), .A2(y[19]), .ZN(n117) );
  OAI211D0 U211 ( .A1(n46), .A2(n119), .B(n118), .C(n117), .ZN(n120) );
  AOI22D0 U212 ( .A1(n30), .A2(y[17]), .B1(n35), .B2(x[18]), .ZN(n125) );
  CKND2D0 U213 ( .A1(n129), .A2(y[18]), .ZN(n124) );
  AO21D0 U214 ( .A1(\DP_OP_187J1_123_5310/n200 ), .A2(n56), .B(n127), .Z(n128)
         );
  AOI22D0 U215 ( .A1(n148), .A2(y[16]), .B1(n34), .B2(x[17]), .ZN(n131) );
  CKND2D0 U216 ( .A1(n129), .A2(y[17]), .ZN(n130) );
  OAI211D0 U217 ( .A1(n43), .A2(n132), .B(n131), .C(n130), .ZN(n133) );
  AO21D0 U218 ( .A1(\DP_OP_187J1_123_5310/n199 ), .A2(n123), .B(n133), .Z(n134) );
  AOI22D0 U219 ( .A1(n30), .A2(y[15]), .B1(n36), .B2(x[16]), .ZN(n136) );
  CKND2D0 U220 ( .A1(n149), .A2(y[16]), .ZN(n135) );
  OAI211D0 U221 ( .A1(n46), .A2(n137), .B(n136), .C(n135), .ZN(n138) );
  AO21D0 U222 ( .A1(\DP_OP_187J1_123_5310/n198 ), .A2(n123), .B(n138), .Z(n140) );
  XOR2D0 U223 ( .A1(n11), .A2(x[15]), .Z(n145) );
  AOI22D0 U224 ( .A1(n148), .A2(y[14]), .B1(n35), .B2(x[15]), .ZN(n142) );
  CKND2D0 U225 ( .A1(n149), .A2(y[15]), .ZN(n141) );
  AOI22D0 U226 ( .A1(n30), .A2(y[13]), .B1(n34), .B2(x[14]), .ZN(n151) );
  CKND2D0 U227 ( .A1(n149), .A2(y[14]), .ZN(n150) );
  OAI211D0 U228 ( .A1(n44), .A2(n155), .B(n151), .C(n150), .ZN(n153) );
  AO21D0 U229 ( .A1(x[14]), .A2(n64), .B(n153), .Z(n154) );
  INVD0 U230 ( .I(y[13]), .ZN(n157) );
  OAI22D0 U231 ( .A1(n158), .A2(n157), .B1(n156), .B2(n155), .ZN(n159) );
  AO21D0 U232 ( .A1(x[13]), .A2(n56), .B(n159), .Z(n160) );
endmodule


module plsad_fp32_div_10bit ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8;

  plsad_fp32_div_MANTISSA_BITS10 impl ( .x({x[31:23], n25, n26, n22, n23, n27, 
        n21, n20, n28, n19, n18, x[12:0]}), .y({y[31], n24, y[29:23], n17, n29, 
        n30, n12, n11, n15, n31, n14, n13, n16, y[12:0]}), .result({
        result[31:9], SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8}) );
  BUFFD0 U1 ( .I(y[13]), .Z(n16) );
  BUFFD0 U2 ( .I(x[13]), .Z(n18) );
  BUFFD0 U3 ( .I(y[22]), .Z(n17) );
  BUFFD0 U4 ( .I(x[16]), .Z(n20) );
  BUFFD0 U5 ( .I(x[15]), .Z(n28) );
  BUFFD0 U6 ( .I(x[14]), .Z(n19) );
  BUFFD0 U7 ( .I(x[18]), .Z(n27) );
  BUFFD0 U8 ( .I(y[14]), .Z(n13) );
  BUFFD0 U9 ( .I(y[17]), .Z(n15) );
  BUFFD0 U10 ( .I(y[30]), .Z(n24) );
  BUFFD0 U11 ( .I(y[16]), .Z(n31) );
  BUFFD0 U12 ( .I(x[22]), .Z(n25) );
  BUFFD0 U13 ( .I(y[21]), .Z(n29) );
  BUFFD0 U14 ( .I(y[19]), .Z(n12) );
  BUFFD0 U15 ( .I(x[21]), .Z(n26) );
  BUFFD0 U16 ( .I(x[20]), .Z(n22) );
  BUFFD0 U17 ( .I(y[20]), .Z(n30) );
  BUFFD0 U18 ( .I(x[19]), .Z(n23) );
  BUFFD0 U19 ( .I(y[15]), .Z(n14) );
  BUFFD0 U20 ( .I(x[17]), .Z(n21) );
  BUFFD0 U21 ( .I(y[18]), .Z(n11) );
  INVD0 U22 ( .I(n10), .ZN(result[8]) );
  INVD0 U23 ( .I(n10), .ZN(result[7]) );
  INVD0 U24 ( .I(n10), .ZN(result[6]) );
  INVD0 U25 ( .I(n10), .ZN(result[5]) );
  INVD0 U26 ( .I(n10), .ZN(result[4]) );
  INVD0 U27 ( .I(n10), .ZN(result[3]) );
  INVD0 U28 ( .I(n10), .ZN(result[2]) );
  INVD0 U29 ( .I(n10), .ZN(result[1]) );
  INVD0 U30 ( .I(n10), .ZN(result[0]) );
  TIEH U31 ( .Z(n10) );
endmodule

