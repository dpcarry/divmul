/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Sat Aug 22 17:30:45 2026
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
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94;

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
  CKND2D0 U3 ( .A1(n86), .A2(n85), .ZN(result[22]) );
  AO22D0 U4 ( .A1(mantissa_q[18]), .A2(n7), .B1(mantissa_q[19]), .B2(n9), .Z(
        result[19]) );
  AO22D0 U5 ( .A1(mantissa_q[18]), .A2(n9), .B1(mantissa_q[17]), .B2(n7), .Z(
        result[18]) );
  AO22D0 U6 ( .A1(mantissa_q[15]), .A2(n7), .B1(mantissa_q[16]), .B2(n10), .Z(
        result[16]) );
  AO22D0 U7 ( .A1(mantissa_q[21]), .A2(n10), .B1(mantissa_q[20]), .B2(n7), .Z(
        result[21]) );
  AO22D0 U8 ( .A1(mantissa_q[15]), .A2(n11), .B1(mantissa_q[14]), .B2(n6), .Z(
        result[15]) );
  AO22D0 U9 ( .A1(mantissa_q[20]), .A2(n10), .B1(mantissa_q[19]), .B2(n6), .Z(
        result[20]) );
  AO22D0 U10 ( .A1(mantissa_q[16]), .A2(n6), .B1(mantissa_q[17]), .B2(n11), 
        .Z(result[17]) );
  AOI22D0 U11 ( .A1(mantissa_q[22]), .A2(n9), .B1(mantissa_q[21]), .B2(n6), 
        .ZN(n85) );
  INVD0 U12 ( .I(n93), .ZN(n7) );
  INVD0 U13 ( .I(n93), .ZN(n6) );
  CKAN2D0 U14 ( .A1(mantissa_q[14]), .A2(n11), .Z(result[14]) );
  IOA21D0 U15 ( .A1(n92), .A2(n91), .B(n90), .ZN(result[28]) );
  INVD0 U16 ( .I(n94), .ZN(n11) );
  IOA21D0 U17 ( .A1(n92), .A2(n89), .B(n8), .ZN(result[25]) );
  CKND2D0 U18 ( .A1(n2), .A2(n92), .ZN(n93) );
  IOA21D0 U19 ( .A1(n88), .A2(n92), .B(n8), .ZN(result[30]) );
  INVD0 U20 ( .I(n94), .ZN(n9) );
  INVD0 U21 ( .I(n94), .ZN(n10) );
  OR2D0 U22 ( .A1(n5), .A2(n3), .Z(n94) );
  OAI21D0 U23 ( .A1(n70), .A2(n4), .B(n90), .ZN(result[23]) );
  INVD0 U24 ( .I(n4), .ZN(n92) );
  INVD0 U25 ( .I(n84), .ZN(n5) );
  INVD0 U26 ( .I(n84), .ZN(n4) );
  AOI211D0 U27 ( .A1(n65), .A2(n64), .B(n63), .C(n62), .ZN(n90) );
  AOI211D0 U28 ( .A1(n65), .A2(n64), .B(n63), .C(n62), .ZN(n8) );
  CKAN2D0 U29 ( .A1(n65), .A2(n54), .Z(n84) );
  INR4D0 U30 ( .A1(n83), .B1(n46), .B2(n62), .B3(n45), .ZN(n65) );
  NR2D0 U31 ( .A1(n53), .A2(n52), .ZN(n54) );
  NR2D0 U32 ( .A1(n51), .A2(n50), .ZN(n52) );
  IIND4D0 U33 ( .A1(n66), .A2(n67), .B1(n49), .B2(n89), .ZN(n50) );
  CKND2D0 U34 ( .A1(n48), .A2(n47), .ZN(n89) );
  IIND4D0 U35 ( .A1(n68), .A2(n69), .B1(n88), .B2(n91), .ZN(n51) );
  OAI211D0 U36 ( .A1(y[30]), .A2(\intadd_0/n1 ), .B(n70), .C(n69), .ZN(n28) );
  NR2D0 U37 ( .A1(\intadd_0/SUM[6] ), .A2(n15), .ZN(n88) );
  OAI21D0 U38 ( .A1(\intadd_0/SUM[4] ), .A2(n17), .B(n24), .ZN(n91) );
  CKND2D0 U39 ( .A1(\intadd_0/SUM[1] ), .A2(n26), .ZN(n48) );
  NR2D0 U40 ( .A1(n24), .A2(n25), .ZN(n15) );
  NR2D0 U41 ( .A1(n20), .A2(n19), .ZN(n26) );
  CKND2D0 U42 ( .A1(n16), .A2(n3), .ZN(n22) );
  IND2D0 U43 ( .A1(n44), .B1(n2), .ZN(n24) );
  CKND2D0 U44 ( .A1(n2), .A2(n18), .ZN(n20) );
  INVD0 U45 ( .I(mantissa_q[23]), .ZN(n3) );
  OAI211D0 U46 ( .A1(n44), .A2(n43), .B(n42), .C(n41), .ZN(n45) );
  INVD0 U47 ( .I(mantissa_q[23]), .ZN(n2) );
  OAI22D0 U48 ( .A1(n40), .A2(n79), .B1(n39), .B2(n79), .ZN(n41) );
  NR2D0 U49 ( .A1(n38), .A2(n37), .ZN(n39) );
  OR4D0 U50 ( .A1(mantissa_q[22]), .A2(mantissa_q[20]), .A3(mantissa_q[15]), 
        .A4(mantissa_q[16]), .Z(n38) );
  CKND2D0 U51 ( .A1(n36), .A2(n35), .ZN(n37) );
  INVD0 U52 ( .I(mantissa_q[17]), .ZN(n36) );
  CKND2D0 U53 ( .A1(n1), .A2(\intadd_0/n1 ), .ZN(n42) );
  NR2D0 U54 ( .A1(n1), .A2(\intadd_0/n1 ), .ZN(n53) );
  INVD0 U55 ( .I(\intadd_0/SUM[5] ), .ZN(n25) );
  ND3D0 U56 ( .A1(n16), .A2(\intadd_0/SUM[3] ), .A3(\intadd_0/SUM[4] ), .ZN(
        n44) );
  AOI21D0 U57 ( .A1(x[31]), .A2(y[31]), .B(n87), .ZN(result[31]) );
  OAI21D0 U58 ( .A1(x[31]), .A2(y[31]), .B(n86), .ZN(n87) );
  INVD0 U59 ( .I(\intadd_0/SUM[2] ), .ZN(n21) );
  AN4D0 U60 ( .A1(\intadd_0/SUM[0] ), .A2(\intadd_0/SUM[1] ), .A3(
        \intadd_0/SUM[2] ), .A4(n18), .Z(n16) );
  INVD0 U61 ( .I(n80), .ZN(n63) );
  OAI21D0 U62 ( .A1(n61), .A2(n60), .B(n79), .ZN(n80) );
  IND2D0 U63 ( .A1(n76), .B1(n82), .ZN(n62) );
  INVD0 U64 ( .I(\intadd_0/SUM[0] ), .ZN(n19) );
  ND4D0 U65 ( .A1(n59), .A2(n58), .A3(n57), .A4(n56), .ZN(n60) );
  CKND2D0 U66 ( .A1(n32), .A2(n31), .ZN(n82) );
  INVD0 U67 ( .I(\intadd_0/B[6] ), .ZN(n1) );
  NR2D0 U68 ( .A1(n34), .A2(n33), .ZN(n79) );
  OAI21D0 U69 ( .A1(x[23]), .A2(n14), .B(\intadd_0/CI ), .ZN(n18) );
  OR4D0 U70 ( .A1(x[3]), .A2(x[19]), .A3(x[17]), .A4(n71), .Z(n78) );
  CKND2D0 U71 ( .A1(x[23]), .A2(n14), .ZN(\intadd_0/CI ) );
  CKND2D0 U72 ( .A1(n13), .A2(n12), .ZN(n83) );
  NR2D0 U73 ( .A1(n30), .A2(n29), .ZN(n76) );
  ND4D0 U74 ( .A1(y[30]), .A2(y[24]), .A3(y[23]), .A4(y[26]), .ZN(n34) );
  ND4D0 U75 ( .A1(n75), .A2(n74), .A3(n73), .A4(n72), .ZN(n77) );
  INVD0 U76 ( .I(y[30]), .ZN(\intadd_0/B[6] ) );
  NR4D0 U77 ( .A1(y[13]), .A2(y[18]), .A3(y[3]), .A4(n55), .ZN(n58) );
  NR4D0 U78 ( .A1(y[6]), .A2(y[16]), .A3(y[1]), .A4(y[9]), .ZN(n57) );
  NR4D0 U79 ( .A1(x[18]), .A2(x[11]), .A3(x[8]), .A4(x[13]), .ZN(n72) );
  OR4D0 U80 ( .A1(y[2]), .A2(y[21]), .A3(y[4]), .A4(y[17]), .Z(n55) );
  OR4D0 U81 ( .A1(x[21]), .A2(x[22]), .A3(x[20]), .A4(x[0]), .Z(n71) );
  INVD0 U82 ( .I(x[28]), .ZN(\intadd_0/B[4] ) );
  NR4D0 U83 ( .A1(y[25]), .A2(y[28]), .A3(y[27]), .A4(y[29]), .ZN(n32) );
  ND4D0 U84 ( .A1(y[25]), .A2(y[28]), .A3(y[27]), .A4(y[29]), .ZN(n33) );
  NR4D0 U85 ( .A1(x[14]), .A2(x[12]), .A3(x[16]), .A4(x[15]), .ZN(n73) );
  INVD0 U86 ( .I(x[27]), .ZN(\intadd_0/B[3] ) );
  NR4D0 U87 ( .A1(x[1]), .A2(x[10]), .A3(x[4]), .A4(x[2]), .ZN(n74) );
  ND4D0 U88 ( .A1(x[28]), .A2(x[29]), .A3(x[30]), .A4(x[23]), .ZN(n29) );
  INVD0 U89 ( .I(x[25]), .ZN(\intadd_0/B[1] ) );
  NR4D0 U90 ( .A1(x[24]), .A2(x[25]), .A3(x[26]), .A4(x[27]), .ZN(n12) );
  NR4D0 U91 ( .A1(x[6]), .A2(x[7]), .A3(x[5]), .A4(x[9]), .ZN(n75) );
  INVD0 U92 ( .I(x[29]), .ZN(\intadd_0/B[5] ) );
  INVD0 U93 ( .I(y[23]), .ZN(n14) );
  NR4D0 U94 ( .A1(y[14]), .A2(y[19]), .A3(y[20]), .A4(y[5]), .ZN(n56) );
  NR4D0 U95 ( .A1(x[28]), .A2(x[29]), .A3(x[30]), .A4(x[23]), .ZN(n13) );
  OR4D0 U96 ( .A1(y[7]), .A2(y[8]), .A3(y[0]), .A4(y[22]), .Z(n61) );
  ND4D0 U97 ( .A1(x[24]), .A2(x[25]), .A3(x[26]), .A4(x[27]), .ZN(n30) );
  INVD0 U98 ( .I(x[24]), .ZN(\intadd_0/B[0] ) );
  INVD0 U99 ( .I(x[26]), .ZN(\intadd_0/B[2] ) );
  NR4D0 U100 ( .A1(y[11]), .A2(y[12]), .A3(y[10]), .A4(y[15]), .ZN(n59) );
  INVD0 U101 ( .I(x[30]), .ZN(\intadd_0/A[6] ) );
  INVD0 U102 ( .I(\intadd_0/SUM[3] ), .ZN(n23) );
  NR2D0 U103 ( .A1(n22), .A2(n23), .ZN(n17) );
  OAI21D0 U104 ( .A1(n18), .A2(n3), .B(n20), .ZN(n49) );
  INVD0 U105 ( .I(n49), .ZN(n70) );
  MUX2ND0 U106 ( .I0(\intadd_0/SUM[0] ), .I1(n19), .S(n20), .ZN(n69) );
  MUX2ND0 U107 ( .I0(\intadd_0/SUM[2] ), .I1(n21), .S(n48), .ZN(n67) );
  MUX2ND0 U108 ( .I0(\intadd_0/SUM[3] ), .I1(n23), .S(n22), .ZN(n66) );
  MUX2ND0 U109 ( .I0(\intadd_0/SUM[5] ), .I1(n25), .S(n24), .ZN(n68) );
  OR2D0 U110 ( .A1(n26), .A2(\intadd_0/SUM[1] ), .Z(n47) );
  ND4D0 U111 ( .A1(n67), .A2(n66), .A3(n68), .A4(n47), .ZN(n27) );
  NR4D0 U112 ( .A1(n88), .A2(n91), .A3(n28), .A4(n27), .ZN(n46) );
  NR4D0 U113 ( .A1(y[30]), .A2(y[24]), .A3(y[23]), .A4(y[26]), .ZN(n31) );
  OAI211D0 U114 ( .A1(n1), .A2(\intadd_0/n1 ), .B(\intadd_0/SUM[5] ), .C(
        \intadd_0/SUM[6] ), .ZN(n43) );
  NR2D0 U115 ( .A1(mantissa_q[21]), .A2(mantissa_q[23]), .ZN(n40) );
  NR3D0 U116 ( .A1(mantissa_q[19]), .A2(mantissa_q[14]), .A3(mantissa_q[18]), 
        .ZN(n35) );
  INVD0 U117 ( .I(n54), .ZN(n64) );
  OAI21D0 U118 ( .A1(n66), .A2(n4), .B(n90), .ZN(result[27]) );
  OAI21D0 U119 ( .A1(n67), .A2(n5), .B(n8), .ZN(result[26]) );
  OAI21D0 U120 ( .A1(n68), .A2(n4), .B(n90), .ZN(result[29]) );
  OAI21D0 U121 ( .A1(n69), .A2(n5), .B(n8), .ZN(result[24]) );
  OAI31D0 U122 ( .A1(n79), .A2(n78), .A3(n77), .B(n76), .ZN(n81) );
  OA211D0 U123 ( .A1(n83), .A2(n82), .B(n81), .C(n80), .Z(n86) );
endmodule


module fanzed_fp32_div_TRUNCATE_BITS15 ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   \DP_OP_22J1_123_9225/n96 , \DP_OP_22J1_123_9225/n74 ,
         \DP_OP_22J1_123_9225/n73 , \DP_OP_22J1_123_9225/n72 ,
         \DP_OP_22J1_123_9225/n71 , \DP_OP_22J1_123_9225/n70 ,
         \DP_OP_22J1_123_9225/n69 , \DP_OP_22J1_123_9225/n68 ,
         \DP_OP_22J1_123_9225/n52 , \DP_OP_22J1_123_9225/n51 ,
         \DP_OP_22J1_123_9225/n50 , \DP_OP_22J1_123_9225/n49 ,
         \DP_OP_22J1_123_9225/n48 , \DP_OP_22J1_123_9225/n47 ,
         \DP_OP_22J1_123_9225/n46 , \DP_OP_22J1_123_9225/n45 ,
         \DP_OP_22J1_123_9225/n40 , \DP_OP_22J1_123_9225/n39 ,
         \DP_OP_22J1_123_9225/n38 , \DP_OP_22J1_123_9225/n37 ,
         \DP_OP_22J1_123_9225/n36 , \DP_OP_22J1_123_9225/n35 ,
         \DP_OP_22J1_123_9225/n34 , \DP_OP_22J1_123_9225/n10 ,
         \DP_OP_22J1_123_9225/n9 , n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20;
  wire   [27:0] q;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13;

  paper_fp32_div_pack pack ( .x(x), .y(y), .mantissa_q({1'b0, 1'b0, 1'b0, 1'b0, 
        q[23:15], n20, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .result({result[31:14], 
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13}) );
  HA1D0 \DP_OP_22J1_123_9225/U17  ( .A(\DP_OP_22J1_123_9225/n96 ), .B(
        \DP_OP_22J1_123_9225/n10 ), .CO(\DP_OP_22J1_123_9225/n9 ), .S(q[18])
         );
  FA1D0 \DP_OP_22J1_123_9225/U57  ( .A(\DP_OP_22J1_123_9225/n68 ), .B(x[22]), 
        .CI(\DP_OP_22J1_123_9225/n46 ), .CO(\DP_OP_22J1_123_9225/n45 ), .S(
        \DP_OP_22J1_123_9225/n40 ) );
  FA1D0 \DP_OP_22J1_123_9225/U62  ( .A(\DP_OP_22J1_123_9225/n73 ), .B(x[17]), 
        .CI(\DP_OP_22J1_123_9225/n51 ), .CO(\DP_OP_22J1_123_9225/n50 ), .S(
        \DP_OP_22J1_123_9225/n35 ) );
  FA1D0 \DP_OP_22J1_123_9225/U63  ( .A(\DP_OP_22J1_123_9225/n74 ), .B(x[16]), 
        .CI(\DP_OP_22J1_123_9225/n52 ), .CO(\DP_OP_22J1_123_9225/n51 ), .S(
        \DP_OP_22J1_123_9225/n34 ) );
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
  XNR2D0 U4 ( .A1(\DP_OP_22J1_123_9225/n45 ), .A2(n16), .ZN(q[23]) );
  OR2D0 U5 ( .A1(n17), .A2(n18), .Z(n16) );
  OR2D0 U6 ( .A1(n14), .A2(n13), .Z(n17) );
  OR2D0 U7 ( .A1(n10), .A2(n9), .Z(n13) );
  OR2D0 U8 ( .A1(n8), .A2(\DP_OP_22J1_123_9225/n9 ), .Z(n9) );
  XNR2D0 U9 ( .A1(n7), .A2(n6), .ZN(q[17]) );
  OR2D0 U10 ( .A1(n6), .A2(n7), .Z(\DP_OP_22J1_123_9225/n10 ) );
  INVD0 U11 ( .I(n7), .ZN(q[16]) );
  AO22D0 U12 ( .A1(\DP_OP_22J1_123_9225/n40 ), .A2(n12), .B1(n11), .B2(
        \DP_OP_22J1_123_9225/n39 ), .Z(n14) );
  AO22D0 U13 ( .A1(\DP_OP_22J1_123_9225/n39 ), .A2(n3), .B1(n11), .B2(
        \DP_OP_22J1_123_9225/n38 ), .Z(n10) );
  AO22D0 U14 ( .A1(\DP_OP_22J1_123_9225/n36 ), .A2(n12), .B1(n11), .B2(
        \DP_OP_22J1_123_9225/n35 ), .Z(n6) );
  AO22D0 U15 ( .A1(\DP_OP_22J1_123_9225/n35 ), .A2(n12), .B1(n11), .B2(
        \DP_OP_22J1_123_9225/n34 ), .Z(n7) );
  INVD0 U16 ( .I(n12), .ZN(n11) );
  OR2D0 U17 ( .A1(\DP_OP_22J1_123_9225/n40 ), .A2(n15), .Z(n18) );
  AO22D0 U18 ( .A1(\DP_OP_22J1_123_9225/n37 ), .A2(n15), .B1(n4), .B2(
        \DP_OP_22J1_123_9225/n36 ), .Z(\DP_OP_22J1_123_9225/n96 ) );
  AO22D0 U19 ( .A1(\DP_OP_22J1_123_9225/n38 ), .A2(n15), .B1(
        \DP_OP_22J1_123_9225/n45 ), .B2(\DP_OP_22J1_123_9225/n37 ), .Z(n8) );
  BUFFD0 U20 ( .I(n15), .Z(n12) );
  INVD0 U21 ( .I(n4), .ZN(n15) );
  CKAN2D0 U22 ( .A1(n19), .A2(n3), .Z(n20) );
  INVD0 U23 ( .I(n3), .ZN(n4) );
  INVD0 U24 ( .I(\DP_OP_22J1_123_9225/n45 ), .ZN(n3) );
  CKND2D0 U25 ( .A1(n5), .A2(y[15]), .ZN(\DP_OP_22J1_123_9225/n52 ) );
  XNR2D0 U26 ( .A1(x[15]), .A2(n2), .ZN(n19) );
  INVD0 U27 ( .I(y[20]), .ZN(\DP_OP_22J1_123_9225/n70 ) );
  INVD0 U28 ( .I(y[22]), .ZN(\DP_OP_22J1_123_9225/n68 ) );
  INVD0 U29 ( .I(y[18]), .ZN(\DP_OP_22J1_123_9225/n72 ) );
  INVD0 U30 ( .I(y[21]), .ZN(\DP_OP_22J1_123_9225/n69 ) );
  INVD0 U31 ( .I(y[16]), .ZN(\DP_OP_22J1_123_9225/n74 ) );
  INVD0 U32 ( .I(y[15]), .ZN(n2) );
  INVD0 U33 ( .I(x[15]), .ZN(n5) );
  INVD0 U34 ( .I(y[17]), .ZN(\DP_OP_22J1_123_9225/n73 ) );
  INVD0 U35 ( .I(y[19]), .ZN(\DP_OP_22J1_123_9225/n71 ) );
  XNR2D0 U36 ( .A1(\DP_OP_22J1_123_9225/n9 ), .A2(n8), .ZN(q[19]) );
  XNR2D0 U37 ( .A1(n9), .A2(n10), .ZN(q[20]) );
  XNR2D0 U38 ( .A1(n13), .A2(n14), .ZN(q[21]) );
  XNR2D0 U39 ( .A1(n18), .A2(n17), .ZN(q[22]) );
  AO22D0 U40 ( .A1(\DP_OP_22J1_123_9225/n34 ), .A2(n3), .B1(
        \DP_OP_22J1_123_9225/n45 ), .B2(n19), .Z(q[15]) );
endmodule


module fanzed_fp32_div_t15 ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   n15, n16;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13;

  fanzed_fp32_div_TRUNCATE_BITS15 impl ( .x(x), .y({y[31], n16, y[29:0]}), 
        .result({result[31:14], SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13}) );
  BUFFD0 U1 ( .I(y[30]), .Z(n16) );
  INVD0 U2 ( .I(n15), .ZN(result[5]) );
  INVD0 U3 ( .I(n15), .ZN(result[13]) );
  INVD0 U4 ( .I(n15), .ZN(result[3]) );
  INVD0 U5 ( .I(n15), .ZN(result[12]) );
  INVD0 U6 ( .I(n15), .ZN(result[4]) );
  INVD0 U7 ( .I(n15), .ZN(result[11]) );
  INVD0 U8 ( .I(n15), .ZN(result[10]) );
  INVD0 U9 ( .I(n15), .ZN(result[7]) );
  INVD0 U10 ( .I(n15), .ZN(result[0]) );
  INVD0 U11 ( .I(n15), .ZN(result[8]) );
  INVD0 U12 ( .I(n15), .ZN(result[9]) );
  INVD0 U13 ( .I(n15), .ZN(result[1]) );
  INVD0 U14 ( .I(n15), .ZN(result[2]) );
  INVD0 U15 ( .I(n15), .ZN(result[6]) );
  TIEH U16 ( .Z(n15) );
endmodule

