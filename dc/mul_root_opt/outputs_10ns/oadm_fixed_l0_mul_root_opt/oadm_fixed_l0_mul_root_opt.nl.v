/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Thu Sep  3 02:42:42 2026
/////////////////////////////////////////////////////////////


module oadm_fixed_l0_mul_root_opt ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   intadd_0_A_7_, intadd_0_A_6_, intadd_0_A_5_, intadd_0_A_4_,
         intadd_0_A_3_, intadd_0_A_2_, intadd_0_A_1_, intadd_0_A_0_,
         intadd_0_B_7_, intadd_0_B_6_, intadd_0_B_5_, intadd_0_B_4_,
         intadd_0_B_3_, intadd_0_B_2_, intadd_0_B_1_, intadd_0_B_0_,
         intadd_0_CI, intadd_0_SUM_7_, intadd_0_SUM_6_, intadd_0_SUM_5_,
         intadd_0_SUM_4_, intadd_0_SUM_3_, intadd_0_SUM_2_, intadd_0_SUM_1_,
         intadd_0_SUM_0_, intadd_0_n8, intadd_0_n7, intadd_0_n6, intadd_0_n5,
         intadd_0_n4, intadd_0_n3, intadd_0_n2, intadd_0_n1, intadd_1_A_5_,
         intadd_1_A_4_, intadd_1_A_3_, intadd_1_A_2_, intadd_1_A_1_,
         intadd_1_B_5_, intadd_1_B_4_, intadd_1_B_3_, intadd_1_B_2_,
         intadd_1_B_1_, intadd_1_SUM_0_, intadd_1_n6, intadd_1_n5, intadd_1_n4,
         intadd_1_n3, intadd_1_n2, intadd_1_n1, intadd_2_A_3_, intadd_2_CI,
         intadd_2_SUM_3_, intadd_2_SUM_2_, intadd_2_SUM_1_, intadd_2_SUM_0_,
         intadd_2_n4, intadd_2_n3, intadd_2_n2, intadd_2_n1, intadd_3_A_3_,
         intadd_3_CI, intadd_3_SUM_3_, intadd_3_SUM_2_, intadd_3_SUM_1_,
         intadd_3_SUM_0_, intadd_3_n4, intadd_3_n3, intadd_3_n2, intadd_3_n1,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70;

  FA1D0 intadd_0_U9 ( .A(intadd_0_A_0_), .B(intadd_0_B_0_), .CI(intadd_0_CI), 
        .CO(intadd_0_n8), .S(intadd_0_SUM_0_) );
  FA1D0 intadd_0_U8 ( .A(intadd_0_A_1_), .B(intadd_0_B_1_), .CI(intadd_0_n8), 
        .CO(intadd_0_n7), .S(intadd_0_SUM_1_) );
  FA1D0 intadd_0_U7 ( .A(intadd_0_A_2_), .B(intadd_0_B_2_), .CI(intadd_0_n7), 
        .CO(intadd_0_n6), .S(intadd_0_SUM_2_) );
  FA1D0 intadd_0_U6 ( .A(intadd_0_A_3_), .B(intadd_0_B_3_), .CI(intadd_0_n6), 
        .CO(intadd_0_n5), .S(intadd_0_SUM_3_) );
  FA1D0 intadd_0_U5 ( .A(intadd_0_A_4_), .B(intadd_0_B_4_), .CI(intadd_0_n5), 
        .CO(intadd_0_n4), .S(intadd_0_SUM_4_) );
  FA1D0 intadd_0_U4 ( .A(intadd_0_A_5_), .B(intadd_0_B_5_), .CI(intadd_0_n4), 
        .CO(intadd_0_n3), .S(intadd_0_SUM_5_) );
  FA1D0 intadd_0_U3 ( .A(intadd_0_A_6_), .B(intadd_0_B_6_), .CI(intadd_0_n3), 
        .CO(intadd_0_n2), .S(intadd_0_SUM_6_) );
  FA1D0 intadd_0_U2 ( .A(intadd_0_A_7_), .B(intadd_0_B_7_), .CI(intadd_0_n2), 
        .CO(intadd_0_n1), .S(intadd_0_SUM_7_) );
  FA1D0 intadd_1_U7 ( .A(x[24]), .B(y[23]), .CI(y[24]), .CO(intadd_1_n6), .S(
        intadd_1_SUM_0_) );
  FA1D0 intadd_1_U6 ( .A(intadd_1_A_1_), .B(intadd_1_B_1_), .CI(intadd_1_n6), 
        .CO(intadd_1_n5), .S(result[25]) );
  FA1D0 intadd_1_U5 ( .A(intadd_1_A_2_), .B(intadd_1_B_2_), .CI(intadd_1_n5), 
        .CO(intadd_1_n4), .S(result[26]) );
  FA1D0 intadd_1_U4 ( .A(intadd_1_A_3_), .B(intadd_1_B_3_), .CI(intadd_1_n4), 
        .CO(intadd_1_n3), .S(result[27]) );
  FA1D0 intadd_1_U3 ( .A(intadd_1_A_4_), .B(intadd_1_B_4_), .CI(intadd_1_n3), 
        .CO(intadd_1_n2), .S(result[28]) );
  FA1D0 intadd_1_U2 ( .A(intadd_1_A_5_), .B(intadd_1_B_5_), .CI(intadd_1_n2), 
        .CO(intadd_1_n1), .S(result[29]) );
  FA1D0 intadd_2_U5 ( .A(y[18]), .B(y[19]), .CI(intadd_2_CI), .CO(intadd_2_n4), 
        .S(intadd_2_SUM_0_) );
  FA1D0 intadd_2_U4 ( .A(y[19]), .B(y[20]), .CI(intadd_2_n4), .CO(intadd_2_n3), 
        .S(intadd_2_SUM_1_) );
  FA1D0 intadd_2_U3 ( .A(y[21]), .B(y[20]), .CI(intadd_2_n3), .CO(intadd_2_n2), 
        .S(intadd_2_SUM_2_) );
  FA1D0 intadd_2_U2 ( .A(y[21]), .B(intadd_2_A_3_), .CI(intadd_2_n2), .CO(
        intadd_2_n1), .S(intadd_2_SUM_3_) );
  FA1D0 intadd_3_U5 ( .A(x[18]), .B(x[19]), .CI(intadd_3_CI), .CO(intadd_3_n4), 
        .S(intadd_3_SUM_0_) );
  FA1D0 intadd_3_U4 ( .A(x[19]), .B(x[20]), .CI(intadd_3_n4), .CO(intadd_3_n3), 
        .S(intadd_3_SUM_1_) );
  FA1D0 intadd_3_U3 ( .A(x[21]), .B(x[20]), .CI(intadd_3_n3), .CO(intadd_3_n2), 
        .S(intadd_3_SUM_2_) );
  FA1D0 intadd_3_U2 ( .A(x[21]), .B(intadd_3_A_3_), .CI(intadd_3_n2), .CO(
        intadd_3_n1), .S(intadd_3_SUM_3_) );
  OAI33D0 U38 ( .A1(n41), .A2(y[18]), .A3(n58), .B1(n60), .B2(n59), .B3(y[17]), 
        .ZN(n53) );
  BUFFD1 U39 ( .I(y[16]), .Z(n41) );
  INVD0 U40 ( .I(n69), .ZN(n66) );
  AOI21D0 U41 ( .A1(intadd_2_SUM_3_), .A2(intadd_3_SUM_3_), .B(intadd_0_B_6_), 
        .ZN(intadd_0_A_5_) );
  AOI21D0 U42 ( .A1(n60), .A2(n59), .B(n58), .ZN(intadd_2_CI) );
  AOI21D0 U43 ( .A1(n61), .A2(n63), .B(n57), .ZN(intadd_3_CI) );
  INVD0 U44 ( .I(x[22]), .ZN(intadd_3_A_3_) );
  INVD0 U45 ( .I(y[22]), .ZN(intadd_2_A_3_) );
  INVD0 U46 ( .I(n40), .ZN(result[13]) );
  INVD0 U47 ( .I(n40), .ZN(result[12]) );
  INVD0 U48 ( .I(n40), .ZN(result[11]) );
  INVD0 U49 ( .I(n40), .ZN(result[10]) );
  INVD0 U50 ( .I(n40), .ZN(result[4]) );
  INVD0 U51 ( .I(n40), .ZN(result[6]) );
  INVD0 U52 ( .I(n40), .ZN(result[5]) );
  INVD0 U53 ( .I(n40), .ZN(result[9]) );
  INVD0 U54 ( .I(n40), .ZN(result[0]) );
  INVD0 U55 ( .I(n40), .ZN(result[2]) );
  INVD0 U56 ( .I(n40), .ZN(result[7]) );
  INVD0 U57 ( .I(n40), .ZN(result[8]) );
  INVD0 U58 ( .I(n40), .ZN(result[1]) );
  INVD0 U59 ( .I(n40), .ZN(result[3]) );
  TIEH U60 ( .Z(n40) );
  NR2D0 U61 ( .A1(n41), .A2(x[16]), .ZN(intadd_0_B_0_) );
  OAI21D0 U62 ( .A1(intadd_3_A_3_), .A2(intadd_2_A_3_), .B(intadd_0_n1), .ZN(
        n43) );
  INVD0 U63 ( .I(n43), .ZN(n68) );
  AOI21D0 U64 ( .A1(x[16]), .A2(n41), .B(intadd_0_B_0_), .ZN(n67) );
  NR2D0 U65 ( .A1(n68), .A2(n67), .ZN(result[14]) );
  AOI22D0 U66 ( .A1(n68), .A2(intadd_0_SUM_6_), .B1(intadd_0_SUM_7_), .B2(n43), 
        .ZN(result[22]) );
  INVD0 U67 ( .I(x[23]), .ZN(n47) );
  NR2D0 U68 ( .A1(n43), .A2(intadd_0_SUM_7_), .ZN(n46) );
  INVD0 U69 ( .I(n42), .ZN(result[23]) );
  INVD0 U70 ( .I(n46), .ZN(n70) );
  OAI22D0 U71 ( .A1(n67), .A2(n70), .B1(n68), .B2(intadd_0_SUM_0_), .ZN(
        result[15]) );
  INVD0 U72 ( .I(intadd_0_SUM_4_), .ZN(n44) );
  AOI21D0 U73 ( .A1(n44), .A2(intadd_0_SUM_7_), .B(n43), .ZN(n45) );
  OAI22D0 U74 ( .A1(intadd_0_SUM_5_), .A2(n70), .B1(intadd_0_SUM_6_), .B2(n45), 
        .ZN(result[21]) );
  CKND2D0 U75 ( .A1(n68), .A2(intadd_0_SUM_7_), .ZN(n69) );
  FA1D0 U76 ( .A(y[23]), .B(n47), .CI(n46), .CO(n50), .S(n42) );
  INVD0 U77 ( .I(intadd_1_SUM_0_), .ZN(n49) );
  INVD0 U78 ( .I(n48), .ZN(result[24]) );
  FA1D0 U79 ( .A(n69), .B(n50), .CI(n49), .CO(n51), .S(n48) );
  INVD0 U80 ( .I(n51), .ZN(intadd_1_A_1_) );
  INVD0 U81 ( .I(x[17]), .ZN(n57) );
  INVD0 U82 ( .I(x[16]), .ZN(n61) );
  AOI22D0 U83 ( .A1(x[16]), .A2(n57), .B1(x[17]), .B2(n61), .ZN(intadd_0_A_0_)
         );
  INVD0 U84 ( .I(y[17]), .ZN(n58) );
  INVD0 U85 ( .I(n41), .ZN(n60) );
  AOI22D0 U86 ( .A1(n41), .A2(y[17]), .B1(n58), .B2(n60), .ZN(intadd_0_CI) );
  INVD0 U87 ( .I(y[18]), .ZN(n59) );
  INVD0 U88 ( .I(n53), .ZN(n52) );
  OAI21D0 U89 ( .A1(intadd_0_CI), .A2(y[18]), .B(n52), .ZN(intadd_0_A_1_) );
  CKND2D0 U90 ( .A1(n53), .A2(intadd_2_SUM_0_), .ZN(n55) );
  OAI21D0 U91 ( .A1(n53), .A2(intadd_2_SUM_0_), .B(n55), .ZN(intadd_0_B_2_) );
  INVD0 U92 ( .I(intadd_3_SUM_0_), .ZN(intadd_0_A_2_) );
  INVD0 U93 ( .I(intadd_2_SUM_1_), .ZN(n54) );
  NR2D0 U94 ( .A1(n54), .A2(n55), .ZN(n56) );
  AO21D0 U95 ( .A1(n55), .A2(n54), .B(n56), .Z(intadd_0_B_3_) );
  INVD0 U96 ( .I(intadd_3_SUM_1_), .ZN(intadd_0_A_3_) );
  CKND2D0 U97 ( .A1(n56), .A2(intadd_2_SUM_2_), .ZN(intadd_0_B_5_) );
  OAI21D0 U98 ( .A1(n56), .A2(intadd_2_SUM_2_), .B(intadd_0_B_5_), .ZN(
        intadd_0_B_4_) );
  INVD0 U99 ( .I(intadd_3_SUM_2_), .ZN(intadd_0_A_4_) );
  NR2D0 U100 ( .A1(intadd_3_SUM_3_), .A2(intadd_2_SUM_3_), .ZN(intadd_0_B_6_)
         );
  CKND2D0 U101 ( .A1(intadd_2_n1), .A2(intadd_3_n1), .ZN(intadd_0_A_7_) );
  OAI21D0 U102 ( .A1(intadd_2_n1), .A2(intadd_3_n1), .B(intadd_0_A_7_), .ZN(
        intadd_0_A_6_) );
  AOI22D0 U103 ( .A1(x[22]), .A2(intadd_2_A_3_), .B1(y[22]), .B2(intadd_3_A_3_), .ZN(intadd_0_B_7_) );
  INVD0 U104 ( .I(x[18]), .ZN(n63) );
  CKND2D0 U105 ( .A1(x[17]), .A2(n61), .ZN(n62) );
  MUX2ND0 U106 ( .I0(n63), .I1(x[18]), .S(n62), .ZN(intadd_0_B_1_) );
  FA1D0 U107 ( .A(x[25]), .B(y[25]), .CI(n66), .CO(intadd_1_A_2_), .S(
        intadd_1_B_1_) );
  FA1D0 U108 ( .A(x[26]), .B(y[26]), .CI(n66), .CO(intadd_1_A_3_), .S(
        intadd_1_B_2_) );
  FA1D0 U109 ( .A(x[27]), .B(y[27]), .CI(n66), .CO(intadd_1_A_4_), .S(
        intadd_1_B_3_) );
  FA1D0 U110 ( .A(x[28]), .B(y[28]), .CI(n66), .CO(intadd_1_A_5_), .S(
        intadd_1_B_4_) );
  FA1D0 U111 ( .A(x[29]), .B(y[29]), .CI(n66), .CO(n64), .S(intadd_1_B_5_) );
  XOR4D0 U112 ( .A1(x[30]), .A2(y[30]), .A3(n64), .A4(intadd_1_n1), .Z(n65) );
  MUX2ND0 U113 ( .I0(n66), .I1(n69), .S(n65), .ZN(result[30]) );
  XOR2D0 U114 ( .A1(y[31]), .A2(x[31]), .Z(result[31]) );
  OAI222D0 U115 ( .A1(n69), .A2(n67), .B1(n70), .B2(intadd_0_SUM_0_), .C1(
        intadd_0_SUM_1_), .C2(n68), .ZN(result[16]) );
  OAI222D0 U116 ( .A1(n70), .A2(intadd_0_SUM_1_), .B1(n69), .B2(
        intadd_0_SUM_0_), .C1(intadd_0_SUM_2_), .C2(n68), .ZN(result[17]) );
  OAI222D0 U117 ( .A1(n69), .A2(intadd_0_SUM_1_), .B1(n70), .B2(
        intadd_0_SUM_2_), .C1(intadd_0_SUM_3_), .C2(n68), .ZN(result[18]) );
  OAI222D0 U118 ( .A1(n70), .A2(intadd_0_SUM_3_), .B1(n69), .B2(
        intadd_0_SUM_2_), .C1(intadd_0_SUM_4_), .C2(n68), .ZN(result[19]) );
  OAI222D0 U119 ( .A1(n70), .A2(intadd_0_SUM_4_), .B1(n69), .B2(
        intadd_0_SUM_3_), .C1(intadd_0_SUM_5_), .C2(n68), .ZN(result[20]) );
endmodule

