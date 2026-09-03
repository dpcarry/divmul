/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Thu Aug 20 03:19:06 2026
/////////////////////////////////////////////////////////////


module CSA3_2_Array_WIDTH25 ( In_1, In_2, In_3, S, C );
  input [24:0] In_1;
  input [24:0] In_2;
  input [24:0] In_3;
  output [24:0] S;
  output [24:0] C;
  wire   n26;

  CKAN2D0 U1 ( .A1(In_3[21]), .A2(In_2[21]), .Z(C[21]) );
  CKAN2D1 U2 ( .A1(In_3[24]), .A2(In_2[22]), .Z(C[22]) );
  AN2D0 U3 ( .A1(In_3[20]), .A2(In_2[20]), .Z(C[20]) );
  CKAN2D0 U4 ( .A1(In_3[19]), .A2(In_2[19]), .Z(C[19]) );
  AN2D0 U5 ( .A1(In_3[18]), .A2(In_2[18]), .Z(C[18]) );
  CKAN2D1 U6 ( .A1(In_3[17]), .A2(In_2[17]), .Z(C[17]) );
  CKAN2D1 U7 ( .A1(In_3[16]), .A2(In_2[16]), .Z(C[16]) );
  CKAN2D1 U8 ( .A1(In_3[15]), .A2(In_2[15]), .Z(C[15]) );
  CKAN2D1 U9 ( .A1(In_3[14]), .A2(In_2[14]), .Z(C[14]) );
  CKAN2D0 U10 ( .A1(In_3[13]), .A2(In_2[13]), .Z(C[13]) );
  AN2D1 U11 ( .A1(In_3[0]), .A2(In_2[0]), .Z(C[0]) );
  NR2XD0 U12 ( .A1(In_3[24]), .A2(In_2[24]), .ZN(n26) );
  XOR2D0 U13 ( .A1(In_3[24]), .A2(In_2[22]), .Z(S[22]) );
  XOR2D0 U14 ( .A1(In_3[21]), .A2(In_2[21]), .Z(S[21]) );
  XOR2D0 U15 ( .A1(In_3[20]), .A2(In_2[20]), .Z(S[20]) );
  XOR2D0 U16 ( .A1(In_3[19]), .A2(In_2[19]), .Z(S[19]) );
  XOR2D0 U17 ( .A1(In_3[18]), .A2(In_2[18]), .Z(S[18]) );
  XOR2D0 U18 ( .A1(In_3[17]), .A2(In_2[17]), .Z(S[17]) );
  XOR2D0 U19 ( .A1(In_3[16]), .A2(In_2[16]), .Z(S[16]) );
  XOR2D0 U20 ( .A1(In_3[15]), .A2(In_2[15]), .Z(S[15]) );
  XOR2D0 U21 ( .A1(In_3[14]), .A2(In_2[14]), .Z(S[14]) );
  XOR2D0 U22 ( .A1(In_3[13]), .A2(In_2[13]), .Z(S[13]) );
  XOR2D0 U23 ( .A1(In_3[12]), .A2(In_2[12]), .Z(S[12]) );
  XOR2D0 U24 ( .A1(In_3[11]), .A2(In_2[11]), .Z(S[11]) );
  AN2XD1 U25 ( .A1(In_3[24]), .A2(In_2[24]), .Z(C[23]) );
  NR2D1 U26 ( .A1(C[23]), .A2(n26), .ZN(S[23]) );
  INVD1 U27 ( .I(S[23]), .ZN(S[24]) );
  CKAN2D0 U28 ( .A1(In_3[1]), .A2(In_2[1]), .Z(C[1]) );
  CKAN2D0 U29 ( .A1(In_3[2]), .A2(In_2[2]), .Z(C[2]) );
  CKAN2D0 U30 ( .A1(In_3[3]), .A2(In_2[3]), .Z(C[3]) );
  CKAN2D0 U31 ( .A1(In_3[4]), .A2(In_2[4]), .Z(C[4]) );
  CKAN2D0 U32 ( .A1(In_3[5]), .A2(In_2[5]), .Z(C[5]) );
  CKAN2D0 U33 ( .A1(In_3[6]), .A2(In_2[6]), .Z(C[6]) );
  CKAN2D0 U34 ( .A1(In_3[7]), .A2(In_2[7]), .Z(C[7]) );
  CKAN2D0 U35 ( .A1(In_3[8]), .A2(In_2[8]), .Z(C[8]) );
  CKAN2D0 U36 ( .A1(In_3[9]), .A2(In_2[9]), .Z(C[9]) );
  CKAN2D0 U37 ( .A1(In_3[10]), .A2(In_2[10]), .Z(C[10]) );
  CKAN2D0 U38 ( .A1(In_3[11]), .A2(In_2[11]), .Z(C[11]) );
  CKAN2D0 U39 ( .A1(In_3[12]), .A2(In_2[12]), .Z(C[12]) );
  IAO21D0 U40 ( .A1(In_3[0]), .A2(In_2[0]), .B(C[0]), .ZN(S[0]) );
  XOR2D0 U41 ( .A1(In_3[1]), .A2(In_2[1]), .Z(S[1]) );
  XOR2D0 U42 ( .A1(In_3[2]), .A2(In_2[2]), .Z(S[2]) );
  XOR2D0 U43 ( .A1(In_3[3]), .A2(In_2[3]), .Z(S[3]) );
  XOR2D0 U44 ( .A1(In_3[4]), .A2(In_2[4]), .Z(S[4]) );
  XOR2D0 U45 ( .A1(In_3[5]), .A2(In_2[5]), .Z(S[5]) );
  XOR2D0 U46 ( .A1(In_3[6]), .A2(In_2[6]), .Z(S[6]) );
  XOR2D0 U47 ( .A1(In_3[7]), .A2(In_2[7]), .Z(S[7]) );
  XOR2D0 U48 ( .A1(In_3[8]), .A2(In_2[8]), .Z(S[8]) );
  XOR2D0 U49 ( .A1(In_3[9]), .A2(In_2[9]), .Z(S[9]) );
  XOR2D0 U50 ( .A1(In_3[10]), .A2(In_2[10]), .Z(S[10]) );
endmodule


module Mantissa_Div_L1_MANTISSA_WIDTH23 ( Mantissa_X, Mantissa_Y, Mantissa_Out, 
        Shift );
  input [22:0] Mantissa_X;
  input [22:0] Mantissa_Y;
  output [22:0] Mantissa_Out;
  output Shift;
  wire   Res_0_, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176;
  wire   [23:0] x_sub_y;
  wire   [24:1] A11S;
  wire   [23:0] A11C;
  wire   SYNOPSYS_UNCONNECTED__0;

  CSA3_2_Array_WIDTH25 Stage_0_0 ( .In_1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .In_2({x_sub_y[23], 1'b0, 
        x_sub_y[22:0]}), .In_3({n176, 1'b0, 1'b0, n162, n167, n169, n175, n174, 
        n171, n170, n172, n173, n168, n166, n158, n159, n161, n160, n165, n163, 
        n164, n155, n156, n154, n157}), .S({A11S, Res_0_}), .C({
        SYNOPSYS_UNCONNECTED__0, A11C}) );
  CKXOR2D1 U3 ( .A1(n22), .A2(n21), .Z(n95) );
  OAI21D0 U5 ( .A1(n31), .A2(n127), .B(n30), .ZN(n141) );
  CKND2D0 U6 ( .A1(n50), .A2(Mantissa_X[12]), .ZN(n148) );
  OAI21D0 U7 ( .A1(n51), .A2(n147), .B(n148), .ZN(n52) );
  INVD0 U8 ( .I(n15), .ZN(n4) );
  INVD0 U9 ( .I(n121), .ZN(n15) );
  CKBD1 U10 ( .I(Mantissa_Y[22]), .Z(n152) );
  AO222D0 U11 ( .A1(n8), .A2(n119), .B1(n13), .B2(n115), .C1(n118), .C2(n117), 
        .Z(Mantissa_Out[3]) );
  AO222D0 U12 ( .A1(n17), .A2(n122), .B1(n123), .B2(n120), .C1(n5), .C2(n119), 
        .Z(Mantissa_Out[1]) );
  INVD0 U13 ( .I(n124), .ZN(n19) );
  INVD0 U14 ( .I(n124), .ZN(n18) );
  INVD0 U15 ( .I(n121), .ZN(n12) );
  INVD0 U16 ( .I(n121), .ZN(n14) );
  INVD0 U17 ( .I(n124), .ZN(n17) );
  BUFFD1 U18 ( .I(n95), .Z(n123) );
  BUFFD1 U19 ( .I(n95), .Z(n110) );
  CKAN2D1 U20 ( .A1(x_sub_y[22]), .A2(n10), .Z(n162) );
  CKAN2D1 U21 ( .A1(x_sub_y[21]), .A2(n2), .Z(n167) );
  CKAN2D1 U22 ( .A1(x_sub_y[20]), .A2(n20), .Z(n169) );
  CKAN2D1 U23 ( .A1(x_sub_y[19]), .A2(n10), .Z(n175) );
  CKAN2D1 U24 ( .A1(x_sub_y[18]), .A2(n2), .Z(n174) );
  CKAN2D1 U25 ( .A1(x_sub_y[17]), .A2(n71), .Z(n171) );
  CKAN2D1 U26 ( .A1(x_sub_y[16]), .A2(n3), .Z(n170) );
  CKAN2D1 U27 ( .A1(x_sub_y[15]), .A2(n11), .Z(n172) );
  CKAN2D0 U28 ( .A1(x_sub_y[14]), .A2(n20), .Z(n173) );
  CKAN2D0 U29 ( .A1(x_sub_y[13]), .A2(n3), .Z(n168) );
  CKAN2D0 U30 ( .A1(x_sub_y[12]), .A2(n71), .Z(n166) );
  CKAN2D0 U31 ( .A1(x_sub_y[11]), .A2(n10), .Z(n158) );
  INVD0 U32 ( .I(Mantissa_Y[22]), .ZN(n10) );
  INVD0 U33 ( .I(n152), .ZN(n2) );
  OR2D0 U34 ( .A1(n135), .A2(n142), .Z(n35) );
  ND2D0 U35 ( .A1(n130), .A2(n132), .ZN(n31) );
  CKND2D1 U36 ( .A1(n27), .A2(Mantissa_X[1]), .ZN(n125) );
  CKND2D1 U37 ( .A1(n28), .A2(Mantissa_X[2]), .ZN(n131) );
  NR2D0 U38 ( .A1(n50), .A2(Mantissa_X[12]), .ZN(n147) );
  NR2XD0 U39 ( .A1(n32), .A2(Mantissa_X[3]), .ZN(n135) );
  NR2XD0 U40 ( .A1(n33), .A2(Mantissa_X[4]), .ZN(n142) );
  CKND2D0 U41 ( .A1(n33), .A2(Mantissa_X[4]), .ZN(n143) );
  INVD1 U42 ( .I(Mantissa_Y[14]), .ZN(n55) );
  AO222D0 U43 ( .A1(n19), .A2(n113), .B1(n6), .B2(n108), .C1(n111), .C2(n110), 
        .Z(Mantissa_Out[6]) );
  AO222D0 U44 ( .A1(n16), .A2(n98), .B1(n6), .B2(n89), .C1(n91), .C2(n97), .Z(
        Mantissa_Out[14]) );
  AO222D0 U45 ( .A1(n18), .A2(n104), .B1(n5), .B2(n100), .C1(n101), .C2(n102), 
        .Z(Mantissa_Out[11]) );
  AO222D0 U46 ( .A1(n19), .A2(n120), .B1(n6), .B2(n118), .C1(n119), .C2(n117), 
        .Z(Mantissa_Out[2]) );
  AO222D0 U47 ( .A1(n17), .A2(n84), .B1(n5), .B2(n78), .C1(n82), .C2(n81), .Z(
        Mantissa_Out[18]) );
  AO222D0 U48 ( .A1(n9), .A2(n118), .B1(n14), .B2(n113), .C1(n115), .C2(n117), 
        .Z(Mantissa_Out[4]) );
  AO222D0 U49 ( .A1(n8), .A2(n106), .B1(n15), .B2(n104), .C1(n103), .C2(n102), 
        .Z(Mantissa_Out[9]) );
  AO222D0 U50 ( .A1(n9), .A2(Res_0_), .B1(n123), .B2(n122), .C1(n12), .C2(n120), .Z(Mantissa_Out[0]) );
  AO222D0 U51 ( .A1(n8), .A2(n89), .B1(n13), .B2(n84), .C1(n87), .C2(n102), 
        .Z(Mantissa_Out[16]) );
  AO222D0 U52 ( .A1(n9), .A2(n108), .B1(n12), .B2(n103), .C1(n106), .C2(n110), 
        .Z(Mantissa_Out[8]) );
  AO222D0 U53 ( .A1(n19), .A2(n103), .B1(n14), .B2(n101), .C1(n104), .C2(n102), 
        .Z(Mantissa_Out[10]) );
  AO222D0 U54 ( .A1(n18), .A2(n101), .B1(n14), .B2(n98), .C1(n100), .C2(n97), 
        .Z(Mantissa_Out[12]) );
  AO222D0 U55 ( .A1(n18), .A2(n100), .B1(n15), .B2(n91), .C1(n98), .C2(n97), 
        .Z(Mantissa_Out[13]) );
  AO222D0 U56 ( .A1(n16), .A2(n91), .B1(n15), .B2(n87), .C1(n89), .C2(n97), 
        .Z(Mantissa_Out[15]) );
  AO222D0 U57 ( .A1(n16), .A2(n82), .B1(n12), .B2(n79), .C1(n78), .C2(n81), 
        .Z(Mantissa_Out[19]) );
  AO222D0 U58 ( .A1(n18), .A2(n87), .B1(n14), .B2(n82), .C1(n84), .C2(n81), 
        .Z(Mantissa_Out[17]) );
  AO222D0 U59 ( .A1(n17), .A2(n115), .B1(n13), .B2(n111), .C1(n113), .C2(n110), 
        .Z(Mantissa_Out[5]) );
  AO222D0 U60 ( .A1(n17), .A2(n78), .B1(n12), .B2(n75), .C1(n79), .C2(n81), 
        .Z(Mantissa_Out[20]) );
  AO222D0 U61 ( .A1(n19), .A2(n111), .B1(n13), .B2(n106), .C1(n108), .C2(n110), 
        .Z(Mantissa_Out[7]) );
  OA21D0 U62 ( .A1(n117), .A2(n75), .B(n74), .Z(Mantissa_Out[22]) );
  OR2XD1 U63 ( .A1(Shift), .A2(n74), .Z(n121) );
  BUFFD1 U64 ( .I(n123), .Z(n117) );
  BUFFD1 U65 ( .I(n86), .Z(n81) );
  BUFFD1 U66 ( .I(n86), .Z(n97) );
  BUFFD1 U67 ( .I(n86), .Z(n102) );
  BUFFD2 U68 ( .I(n86), .Z(Shift) );
  INVD0 U69 ( .I(n151), .ZN(n51) );
  XNR2D0 U70 ( .A1(n151), .A2(n150), .ZN(x_sub_y[12]) );
  OA21D0 U71 ( .A1(n142), .A2(n138), .B(n143), .Z(n34) );
  INVD0 U72 ( .I(n131), .ZN(n29) );
  CKND2D1 U73 ( .A1(n32), .A2(Mantissa_X[3]), .ZN(n138) );
  INVD0 U74 ( .I(n152), .ZN(n20) );
  INVD0 U75 ( .I(Mantissa_Y[6]), .ZN(n39) );
  INVD0 U76 ( .I(Mantissa_Y[8]), .ZN(n43) );
  INVD0 U77 ( .I(Mantissa_Y[7]), .ZN(n41) );
  INVD0 U78 ( .I(Mantissa_Y[5]), .ZN(n37) );
  INVD0 U79 ( .I(Mantissa_Y[10]), .ZN(n47) );
  INVD0 U80 ( .I(Mantissa_Y[9]), .ZN(n45) );
  INVD0 U81 ( .I(Mantissa_Y[4]), .ZN(n33) );
  INVD0 U82 ( .I(Mantissa_Y[3]), .ZN(n32) );
  INVD0 U83 ( .I(Mantissa_Y[13]), .ZN(n53) );
  INVD0 U84 ( .I(Mantissa_Y[11]), .ZN(n49) );
  INVD0 U85 ( .I(Mantissa_Y[12]), .ZN(n50) );
  INVD0 U86 ( .I(n152), .ZN(n3) );
  INVD1 U87 ( .I(n4), .ZN(n5) );
  INVD1 U88 ( .I(n4), .ZN(n6) );
  INVD1 U89 ( .I(n16), .ZN(n7) );
  INVD1 U90 ( .I(n7), .ZN(n8) );
  INVD1 U91 ( .I(n7), .ZN(n9) );
  INVD1 U92 ( .I(Mantissa_Y[22]), .ZN(n11) );
  INVD1 U93 ( .I(n121), .ZN(n13) );
  OR2XD1 U94 ( .A1(n24), .A2(Shift), .Z(n124) );
  INVD1 U95 ( .I(n124), .ZN(n16) );
  AO22D0 U96 ( .A1(n9), .A2(n79), .B1(n123), .B2(n75), .Z(Mantissa_Out[21]) );
  CKXOR2D1 U97 ( .A1(A11S[24]), .A2(A11C[23]), .Z(n21) );
  BUFFD2 U98 ( .I(n95), .Z(n86) );
  FA1D0 U99 ( .A(A11C[22]), .B(A11S[23]), .CI(n23), .CO(n22), .S(n74) );
  INVD1 U100 ( .I(n74), .ZN(n24) );
  FA1D0 U101 ( .A(A11C[20]), .B(A11S[21]), .CI(n25), .CO(n26), .S(n79) );
  FA1D0 U102 ( .A(A11C[21]), .B(A11S[22]), .CI(n26), .CO(n23), .S(n75) );
  INVD1 U103 ( .I(Mantissa_Y[1]), .ZN(n27) );
  OR2XD1 U104 ( .A1(n27), .A2(Mantissa_X[1]), .Z(n130) );
  INVD1 U105 ( .I(Mantissa_Y[2]), .ZN(n28) );
  OR2XD1 U106 ( .A1(n28), .A2(Mantissa_X[2]), .Z(n132) );
  INVD1 U107 ( .I(Mantissa_Y[0]), .ZN(n153) );
  NR2D1 U108 ( .A1(n153), .A2(Mantissa_X[0]), .ZN(n127) );
  INVD1 U109 ( .I(n125), .ZN(n128) );
  AOI21D1 U110 ( .A1(n132), .A2(n128), .B(n29), .ZN(n30) );
  INVD1 U111 ( .I(n141), .ZN(n137) );
  OAI21D1 U112 ( .A1(n137), .A2(n35), .B(n34), .ZN(n36) );
  FA1D0 U113 ( .A(Mantissa_X[5]), .B(n37), .CI(n36), .CO(n38), .S(x_sub_y[5])
         );
  FA1D0 U114 ( .A(Mantissa_X[6]), .B(n39), .CI(n38), .CO(n40), .S(x_sub_y[6])
         );
  FA1D0 U115 ( .A(Mantissa_X[7]), .B(n41), .CI(n40), .CO(n42), .S(x_sub_y[7])
         );
  FA1D0 U116 ( .A(Mantissa_X[8]), .B(n43), .CI(n42), .CO(n44), .S(x_sub_y[8])
         );
  FA1D0 U117 ( .A(Mantissa_X[9]), .B(n45), .CI(n44), .CO(n46), .S(x_sub_y[9])
         );
  FA1D0 U118 ( .A(Mantissa_X[10]), .B(n47), .CI(n46), .CO(n48), .S(x_sub_y[10]) );
  FA1D0 U119 ( .A(Mantissa_X[11]), .B(n49), .CI(n48), .CO(n151), .S(
        x_sub_y[11]) );
  FA1D0 U120 ( .A(Mantissa_X[13]), .B(n53), .CI(n52), .CO(n54), .S(x_sub_y[13]) );
  INVD1 U121 ( .I(Mantissa_Y[15]), .ZN(n57) );
  FA1D0 U122 ( .A(Mantissa_X[14]), .B(n55), .CI(n54), .CO(n56), .S(x_sub_y[14]) );
  INVD1 U123 ( .I(Mantissa_Y[16]), .ZN(n59) );
  FA1D0 U124 ( .A(Mantissa_X[15]), .B(n57), .CI(n56), .CO(n58), .S(x_sub_y[15]) );
  INVD1 U125 ( .I(Mantissa_Y[17]), .ZN(n61) );
  FA1D0 U126 ( .A(Mantissa_X[16]), .B(n59), .CI(n58), .CO(n60), .S(x_sub_y[16]) );
  INVD1 U127 ( .I(Mantissa_Y[18]), .ZN(n63) );
  FA1D0 U128 ( .A(Mantissa_X[17]), .B(n61), .CI(n60), .CO(n62), .S(x_sub_y[17]) );
  INVD1 U129 ( .I(Mantissa_Y[19]), .ZN(n65) );
  FA1D0 U130 ( .A(Mantissa_X[18]), .B(n63), .CI(n62), .CO(n64), .S(x_sub_y[18]) );
  INVD1 U131 ( .I(Mantissa_Y[20]), .ZN(n67) );
  FA1D0 U132 ( .A(Mantissa_X[19]), .B(n65), .CI(n64), .CO(n66), .S(x_sub_y[19]) );
  INVD1 U133 ( .I(Mantissa_Y[21]), .ZN(n69) );
  FA1D0 U134 ( .A(Mantissa_X[20]), .B(n67), .CI(n66), .CO(n68), .S(x_sub_y[20]) );
  INVD1 U135 ( .I(Mantissa_Y[22]), .ZN(n71) );
  FA1D0 U136 ( .A(Mantissa_X[21]), .B(n69), .CI(n68), .CO(n70), .S(x_sub_y[21]) );
  FA1D0 U137 ( .A(Mantissa_X[22]), .B(n71), .CI(n70), .CO(n72), .S(x_sub_y[22]) );
  INVD1 U138 ( .I(n72), .ZN(x_sub_y[23]) );
  FA1D0 U139 ( .A(A11C[19]), .B(A11S[20]), .CI(n73), .CO(n25), .S(n78) );
  FA1D0 U140 ( .A(A11C[17]), .B(A11S[18]), .CI(n76), .CO(n77), .S(n84) );
  FA1D0 U141 ( .A(A11C[18]), .B(A11S[19]), .CI(n77), .CO(n73), .S(n82) );
  FA1D0 U142 ( .A(A11C[16]), .B(A11S[17]), .CI(n80), .CO(n76), .S(n87) );
  FA1D0 U143 ( .A(A11C[15]), .B(A11S[16]), .CI(n83), .CO(n80), .S(n89) );
  FA1D0 U144 ( .A(A11C[14]), .B(A11S[15]), .CI(n85), .CO(n83), .S(n91) );
  FA1D0 U145 ( .A(A11C[13]), .B(A11S[14]), .CI(n88), .CO(n85), .S(n98) );
  FA1D0 U146 ( .A(A11C[12]), .B(A11S[13]), .CI(n90), .CO(n88), .S(n100) );
  FA1D0 U147 ( .A(A11C[7]), .B(A11S[8]), .CI(n92), .CO(n94), .S(n108) );
  FA1D0 U148 ( .A(A11C[9]), .B(A11S[10]), .CI(n93), .CO(n99), .S(n103) );
  FA1D0 U149 ( .A(A11C[8]), .B(A11S[9]), .CI(n94), .CO(n93), .S(n106) );
  FA1D0 U150 ( .A(A11C[11]), .B(A11S[12]), .CI(n96), .CO(n90), .S(n101) );
  FA1D0 U151 ( .A(A11C[10]), .B(A11S[11]), .CI(n99), .CO(n96), .S(n104) );
  FA1D0 U152 ( .A(A11C[6]), .B(A11S[7]), .CI(n105), .CO(n92), .S(n111) );
  FA1D0 U153 ( .A(A11C[5]), .B(A11S[6]), .CI(n107), .CO(n105), .S(n113) );
  FA1D0 U154 ( .A(A11C[4]), .B(A11S[5]), .CI(n109), .CO(n107), .S(n115) );
  FA1D0 U155 ( .A(A11C[3]), .B(A11S[4]), .CI(n112), .CO(n109), .S(n118) );
  FA1D0 U156 ( .A(A11C[2]), .B(A11S[3]), .CI(n114), .CO(n112), .S(n119) );
  FA1D0 U157 ( .A(A11C[1]), .B(n116), .CI(A11S[2]), .CO(n114), .S(n120) );
  HA1D0 U158 ( .A(A11S[1]), .B(A11C[0]), .CO(n116), .S(n122) );
  CKND2D0 U159 ( .A1(n130), .A2(n125), .ZN(n126) );
  XOR2D0 U160 ( .A1(n126), .A2(n127), .Z(x_sub_y[1]) );
  CKAN2D0 U161 ( .A1(x_sub_y[1]), .A2(n71), .Z(n157) );
  INVD0 U162 ( .I(n127), .ZN(n129) );
  AOI21D1 U163 ( .A1(n130), .A2(n129), .B(n128), .ZN(n134) );
  CKND2D0 U164 ( .A1(n132), .A2(n131), .ZN(n133) );
  CKXOR2D1 U165 ( .A1(n134), .A2(n133), .Z(x_sub_y[2]) );
  CKAN2D0 U166 ( .A1(x_sub_y[2]), .A2(n2), .Z(n154) );
  INVD0 U167 ( .I(n135), .ZN(n140) );
  CKND2D0 U168 ( .A1(n140), .A2(n138), .ZN(n136) );
  XOR2D0 U169 ( .A1(n137), .A2(n136), .Z(x_sub_y[3]) );
  CKAN2D0 U170 ( .A1(x_sub_y[3]), .A2(n10), .Z(n156) );
  INVD0 U171 ( .I(n138), .ZN(n139) );
  AOI21D0 U172 ( .A1(n141), .A2(n140), .B(n139), .ZN(n146) );
  INVD0 U173 ( .I(n142), .ZN(n144) );
  CKND2D0 U174 ( .A1(n144), .A2(n143), .ZN(n145) );
  XOR2D0 U175 ( .A1(n146), .A2(n145), .Z(x_sub_y[4]) );
  CKAN2D0 U176 ( .A1(x_sub_y[4]), .A2(n20), .Z(n155) );
  CKAN2D0 U177 ( .A1(x_sub_y[5]), .A2(n3), .Z(n164) );
  CKAN2D0 U178 ( .A1(x_sub_y[6]), .A2(n11), .Z(n163) );
  CKAN2D0 U179 ( .A1(x_sub_y[7]), .A2(n11), .Z(n165) );
  CKAN2D0 U180 ( .A1(x_sub_y[8]), .A2(n3), .Z(n160) );
  CKAN2D0 U181 ( .A1(x_sub_y[9]), .A2(n20), .Z(n161) );
  CKAN2D0 U182 ( .A1(x_sub_y[10]), .A2(n2), .Z(n159) );
  INVD0 U183 ( .I(n147), .ZN(n149) );
  CKND2D0 U184 ( .A1(n149), .A2(n148), .ZN(n150) );
  AN2XD1 U185 ( .A1(x_sub_y[23]), .A2(n11), .Z(n176) );
  XNR2D0 U186 ( .A1(n153), .A2(Mantissa_X[0]), .ZN(x_sub_y[0]) );
endmodule


module FP_DIV_WRAPPER_32 ( x, y, out0, mantissa_x, mantissa_y, mantissa_out, 
        shift_0__BAR );
  input [31:0] x;
  input [31:0] y;
  output [31:0] out0;
  output [22:0] mantissa_x;
  output [22:0] mantissa_y;
  input [22:0] mantissa_out;
  input shift_0__BAR;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46;

  CKND2D0 U2 ( .A1(n8), .A2(n7), .ZN(n26) );
  ND2D0 U3 ( .A1(n15), .A2(n14), .ZN(n30) );
  NR2D0 U4 ( .A1(n12), .A2(n11), .ZN(n37) );
  ND2D0 U5 ( .A1(n5), .A2(n4), .ZN(n43) );
  ND2D0 U6 ( .A1(n12), .A2(n11), .ZN(n38) );
  NR2D0 U7 ( .A1(n5), .A2(n4), .ZN(n42) );
  ND2D0 U8 ( .A1(n17), .A2(y[29]), .ZN(n22) );
  ND2D0 U9 ( .A1(n13), .A2(y[27]), .ZN(n20) );
  ND2D0 U10 ( .A1(n3), .A2(y[24]), .ZN(n7) );
  ND2D0 U11 ( .A1(n10), .A2(y[26]), .ZN(n14) );
  ND2D0 U12 ( .A1(n1), .A2(y[28]), .ZN(n36) );
  ND2D0 U13 ( .A1(n6), .A2(y[25]), .ZN(n11) );
  BUFFD0 U14 ( .I(y[10]), .Z(mantissa_y[10]) );
  BUFFD0 U15 ( .I(y[15]), .Z(mantissa_y[15]) );
  BUFFD0 U16 ( .I(y[11]), .Z(mantissa_y[11]) );
  CKND2D0 U17 ( .A1(y[23]), .A2(x[23]), .ZN(n23) );
  BUFFD0 U18 ( .I(y[12]), .Z(mantissa_y[12]) );
  BUFFD1 U19 ( .I(x[3]), .Z(mantissa_x[3]) );
  BUFFD0 U20 ( .I(x[8]), .Z(mantissa_x[8]) );
  BUFFD0 U21 ( .I(x[12]), .Z(mantissa_x[12]) );
  BUFFD0 U22 ( .I(x[11]), .Z(mantissa_x[11]) );
  BUFFD1 U23 ( .I(x[22]), .Z(mantissa_x[22]) );
  BUFFD0 U24 ( .I(y[8]), .Z(mantissa_y[8]) );
  BUFFD1 U25 ( .I(x[21]), .Z(mantissa_x[21]) );
  CKBD1 U26 ( .I(x[4]), .Z(mantissa_x[4]) );
  BUFFD0 U27 ( .I(y[13]), .Z(mantissa_y[13]) );
  BUFFD1 U28 ( .I(y[21]), .Z(mantissa_y[21]) );
  BUFFD0 U29 ( .I(y[3]), .Z(mantissa_y[3]) );
  BUFFD0 U30 ( .I(y[4]), .Z(mantissa_y[4]) );
  BUFFD0 U31 ( .I(y[9]), .Z(mantissa_y[9]) );
  BUFFD0 U32 ( .I(x[9]), .Z(mantissa_x[9]) );
  BUFFD1 U33 ( .I(x[7]), .Z(mantissa_x[7]) );
  BUFFD0 U34 ( .I(x[10]), .Z(mantissa_x[10]) );
  BUFFD1 U35 ( .I(y[20]), .Z(mantissa_y[20]) );
  BUFFD1 U36 ( .I(x[2]), .Z(mantissa_x[2]) );
  BUFFD0 U37 ( .I(y[14]), .Z(mantissa_y[14]) );
  BUFFD0 U38 ( .I(y[7]), .Z(mantissa_y[7]) );
  BUFFD0 U39 ( .I(x[13]), .Z(mantissa_x[13]) );
  BUFFD1 U40 ( .I(y[2]), .Z(mantissa_y[2]) );
  BUFFD0 U41 ( .I(y[1]), .Z(mantissa_y[1]) );
  BUFFD0 U42 ( .I(y[6]), .Z(mantissa_y[6]) );
  BUFFD1 U43 ( .I(x[6]), .Z(mantissa_x[6]) );
  BUFFD0 U44 ( .I(y[17]), .Z(mantissa_y[17]) );
  BUFFD1 U45 ( .I(x[16]), .Z(mantissa_x[16]) );
  BUFFD0 U46 ( .I(y[5]), .Z(mantissa_y[5]) );
  BUFFD1 U47 ( .I(x[17]), .Z(mantissa_x[17]) );
  BUFFD0 U48 ( .I(x[5]), .Z(mantissa_x[5]) );
  BUFFD0 U49 ( .I(x[0]), .Z(mantissa_x[0]) );
  BUFFD0 U50 ( .I(y[16]), .Z(mantissa_y[16]) );
  BUFFD1 U51 ( .I(x[15]), .Z(mantissa_x[15]) );
  BUFFD0 U52 ( .I(x[14]), .Z(mantissa_x[14]) );
  BUFFD0 U53 ( .I(mantissa_out[1]), .Z(out0[1]) );
  BUFFD0 U54 ( .I(mantissa_out[11]), .Z(out0[11]) );
  BUFFD0 U55 ( .I(mantissa_out[6]), .Z(out0[6]) );
  BUFFD0 U56 ( .I(mantissa_out[18]), .Z(out0[18]) );
  BUFFD0 U57 ( .I(mantissa_out[2]), .Z(out0[2]) );
  BUFFD0 U58 ( .I(mantissa_out[14]), .Z(out0[14]) );
  BUFFD0 U59 ( .I(mantissa_out[3]), .Z(out0[3]) );
  BUFFD0 U60 ( .I(mantissa_out[16]), .Z(out0[16]) );
  BUFFD0 U61 ( .I(mantissa_out[8]), .Z(out0[8]) );
  BUFFD0 U62 ( .I(mantissa_out[4]), .Z(out0[4]) );
  BUFFD0 U63 ( .I(mantissa_out[9]), .Z(out0[9]) );
  BUFFD0 U64 ( .I(mantissa_out[0]), .Z(out0[0]) );
  BUFFD0 U65 ( .I(mantissa_out[21]), .Z(out0[21]) );
  BUFFD0 U66 ( .I(mantissa_out[19]), .Z(out0[19]) );
  BUFFD0 U67 ( .I(mantissa_out[15]), .Z(out0[15]) );
  BUFFD0 U68 ( .I(mantissa_out[10]), .Z(out0[10]) );
  BUFFD0 U69 ( .I(mantissa_out[12]), .Z(out0[12]) );
  BUFFD0 U70 ( .I(mantissa_out[17]), .Z(out0[17]) );
  BUFFD0 U71 ( .I(mantissa_out[20]), .Z(out0[20]) );
  BUFFD0 U72 ( .I(mantissa_out[13]), .Z(out0[13]) );
  BUFFD0 U73 ( .I(mantissa_out[7]), .Z(out0[7]) );
  BUFFD0 U74 ( .I(mantissa_out[5]), .Z(out0[5]) );
  BUFFD0 U75 ( .I(mantissa_out[22]), .Z(out0[22]) );
  INVD0 U76 ( .I(n26), .ZN(n9) );
  INVD0 U77 ( .I(n30), .ZN(n16) );
  OR2D0 U78 ( .A1(n8), .A2(n7), .Z(n27) );
  OR2D0 U79 ( .A1(n15), .A2(n14), .Z(n31) );
  OAI21D0 U80 ( .A1(y[29]), .A2(n17), .B(n22), .ZN(n35) );
  OAI21D0 U81 ( .A1(y[24]), .A2(n3), .B(n7), .ZN(n5) );
  OAI21D0 U82 ( .A1(y[28]), .A2(n1), .B(n36), .ZN(n19) );
  OAI21D0 U83 ( .A1(y[27]), .A2(n13), .B(n20), .ZN(n15) );
  OAI21D0 U84 ( .A1(y[25]), .A2(n6), .B(n11), .ZN(n8) );
  OAI21D0 U85 ( .A1(y[26]), .A2(n10), .B(n14), .ZN(n12) );
  INVD0 U86 ( .I(n23), .ZN(n2) );
  INVD0 U87 ( .I(y[23]), .ZN(n4) );
  INVD0 U88 ( .I(x[26]), .ZN(n10) );
  OR2D0 U89 ( .A1(y[23]), .A2(x[23]), .Z(n24) );
  INVD0 U90 ( .I(x[25]), .ZN(n6) );
  INVD0 U91 ( .I(x[27]), .ZN(n13) );
  INVD0 U92 ( .I(x[24]), .ZN(n3) );
  BUFFD1 U93 ( .I(x[18]), .Z(mantissa_x[18]) );
  INVD0 U94 ( .I(x[29]), .ZN(n17) );
  INVD0 U95 ( .I(x[28]), .ZN(n1) );
  BUFFD1 U96 ( .I(y[19]), .Z(mantissa_y[19]) );
  BUFFD1 U97 ( .I(y[18]), .Z(mantissa_y[18]) );
  CKBD1 U98 ( .I(x[20]), .Z(mantissa_x[20]) );
  CKBD1 U99 ( .I(x[19]), .Z(mantissa_x[19]) );
  CKBD1 U100 ( .I(y[22]), .Z(mantissa_y[22]) );
  BUFFD1 U101 ( .I(y[0]), .Z(mantissa_y[0]) );
  BUFFD1 U102 ( .I(x[1]), .Z(mantissa_x[1]) );
  AOI21D1 U103 ( .A1(shift_0__BAR), .A2(n24), .B(n2), .ZN(n46) );
  OAI21D1 U104 ( .A1(n46), .A2(n42), .B(n43), .ZN(n29) );
  AOI21D1 U105 ( .A1(n29), .A2(n27), .B(n9), .ZN(n41) );
  OAI21D1 U106 ( .A1(n41), .A2(n37), .B(n38), .ZN(n33) );
  AO21D1 U107 ( .A1(n33), .A2(n31), .B(n16), .Z(n18) );
  FA1D0 U108 ( .A(n20), .B(n19), .CI(n18), .CO(n34), .S(out0[28]) );
  XNR4D0 U109 ( .A1(x[30]), .A2(y[30]), .A3(n22), .A4(n21), .ZN(out0[30]) );
  CKND2D0 U110 ( .A1(n24), .A2(n23), .ZN(n25) );
  XNR2D0 U111 ( .A1(shift_0__BAR), .A2(n25), .ZN(out0[23]) );
  CKND2D0 U112 ( .A1(n27), .A2(n26), .ZN(n28) );
  XNR2D0 U113 ( .A1(n29), .A2(n28), .ZN(out0[25]) );
  CKND2D0 U114 ( .A1(n31), .A2(n30), .ZN(n32) );
  XNR2D0 U115 ( .A1(n33), .A2(n32), .ZN(out0[27]) );
  FA1D0 U116 ( .A(n36), .B(n35), .CI(n34), .CO(n21), .S(out0[29]) );
  INVD0 U117 ( .I(n37), .ZN(n39) );
  CKND2D0 U118 ( .A1(n39), .A2(n38), .ZN(n40) );
  XOR2D0 U119 ( .A1(n41), .A2(n40), .Z(out0[26]) );
  INVD0 U120 ( .I(n42), .ZN(n44) );
  CKND2D0 U121 ( .A1(n44), .A2(n43), .ZN(n45) );
  XOR2D0 U122 ( .A1(n46), .A2(n45), .Z(out0[24]) );
  XOR2D0 U123 ( .A1(y[31]), .A2(x[31]), .Z(out0[31]) );
endmodule


module pace_fp32_l1 ( x, y, out0 );
  input [31:0] x;
  input [31:0] y;
  output [31:0] out0;
  wire   shift;
  wire   [22:0] mantissa_x;
  wire   [22:0] mantissa_y;
  wire   [22:0] mantissa_out;

  Mantissa_Div_L1_MANTISSA_WIDTH23 mantissa_div ( .Mantissa_X(mantissa_x), 
        .Mantissa_Y(mantissa_y), .Mantissa_Out(mantissa_out), .Shift(shift) );
  FP_DIV_WRAPPER_32 fp_wrapper ( .x(x), .y(y), .out0(out0), .mantissa_x(
        mantissa_x), .mantissa_y(mantissa_y), .mantissa_out(mantissa_out), 
        .shift_0__BAR(shift) );
endmodule

