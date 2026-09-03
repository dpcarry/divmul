/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Thu Sep  3 02:43:45 2026
/////////////////////////////////////////////////////////////


module oadm_fixed_l0_mul_root_opt_aggressive ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   intadd_0_A_5_, intadd_0_A_4_, intadd_0_A_3_, intadd_0_A_2_,
         intadd_0_A_1_, intadd_0_A_0_, intadd_0_B_5_, intadd_0_B_4_,
         intadd_0_B_3_, intadd_0_B_2_, intadd_0_B_1_, intadd_0_B_0_,
         intadd_0_CI, intadd_0_SUM_5_, intadd_0_SUM_4_, intadd_0_SUM_3_,
         intadd_0_SUM_2_, intadd_0_SUM_1_, intadd_0_SUM_0_, intadd_0_n6,
         intadd_0_n5, intadd_0_n4, intadd_0_n3, intadd_0_n2, intadd_0_n1,
         intadd_1_A_5_, intadd_1_A_4_, intadd_1_A_3_, intadd_1_A_2_,
         intadd_1_A_1_, intadd_1_B_5_, intadd_1_B_4_, intadd_1_B_3_,
         intadd_1_B_2_, intadd_1_B_1_, intadd_1_SUM_0_, intadd_1_n6,
         intadd_1_n5, intadd_1_n4, intadd_1_n3, intadd_1_n2, intadd_1_n1, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77;

  FA1D0 intadd_0_U7 ( .A(intadd_0_A_0_), .B(intadd_0_B_0_), .CI(intadd_0_CI), 
        .CO(intadd_0_n6), .S(intadd_0_SUM_0_) );
  FA1D0 intadd_0_U6 ( .A(intadd_0_A_1_), .B(intadd_0_B_1_), .CI(intadd_0_n6), 
        .CO(intadd_0_n5), .S(intadd_0_SUM_1_) );
  FA1D0 intadd_0_U5 ( .A(intadd_0_A_2_), .B(intadd_0_B_2_), .CI(intadd_0_n5), 
        .CO(intadd_0_n4), .S(intadd_0_SUM_2_) );
  FA1D0 intadd_0_U4 ( .A(intadd_0_A_3_), .B(intadd_0_B_3_), .CI(intadd_0_n4), 
        .CO(intadd_0_n3), .S(intadd_0_SUM_3_) );
  FA1D0 intadd_0_U3 ( .A(intadd_0_A_4_), .B(intadd_0_B_4_), .CI(intadd_0_n3), 
        .CO(intadd_0_n2), .S(intadd_0_SUM_4_) );
  FA1D0 intadd_0_U2 ( .A(intadd_0_A_5_), .B(intadd_0_B_5_), .CI(intadd_0_n2), 
        .CO(intadd_0_n1), .S(intadd_0_SUM_5_) );
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
  CKND2D0 U31 ( .A1(n75), .A2(intadd_0_SUM_5_), .ZN(n77) );
  BUFFD1 U32 ( .I(y[18]), .Z(n38) );
  AOI21D0 U33 ( .A1(n67), .A2(n66), .B(intadd_0_B_4_), .ZN(intadd_0_A_3_) );
  AOI21D0 U34 ( .A1(n51), .A2(n50), .B(n49), .ZN(n59) );
  AOI21D0 U35 ( .A1(n68), .A2(n70), .B(n55), .ZN(n57) );
  INVD0 U36 ( .I(y[22]), .ZN(n65) );
  INVD0 U37 ( .I(x[22]), .ZN(n64) );
  INVD0 U38 ( .I(n37), .ZN(result[14]) );
  INVD0 U39 ( .I(n37), .ZN(result[3]) );
  INVD0 U40 ( .I(n37), .ZN(result[4]) );
  INVD0 U41 ( .I(n37), .ZN(result[15]) );
  INVD0 U42 ( .I(n37), .ZN(result[2]) );
  INVD0 U43 ( .I(n37), .ZN(result[12]) );
  INVD0 U44 ( .I(n37), .ZN(result[6]) );
  INVD0 U45 ( .I(n37), .ZN(result[1]) );
  INVD0 U46 ( .I(n37), .ZN(result[11]) );
  INVD0 U47 ( .I(n37), .ZN(result[13]) );
  INVD0 U48 ( .I(n37), .ZN(result[0]) );
  INVD0 U49 ( .I(n37), .ZN(result[10]) );
  INVD0 U50 ( .I(n37), .ZN(result[7]) );
  INVD0 U51 ( .I(n37), .ZN(result[9]) );
  INVD0 U52 ( .I(n37), .ZN(result[5]) );
  INVD0 U53 ( .I(n37), .ZN(result[8]) );
  TIEH U54 ( .Z(n37) );
  NR2D0 U55 ( .A1(n38), .A2(x[18]), .ZN(intadd_0_CI) );
  OAI21D0 U56 ( .A1(n64), .A2(n65), .B(intadd_0_n1), .ZN(n40) );
  INVD0 U57 ( .I(n40), .ZN(n75) );
  AOI21D0 U58 ( .A1(x[18]), .A2(n38), .B(intadd_0_CI), .ZN(n74) );
  NR2D0 U59 ( .A1(n75), .A2(n74), .ZN(result[16]) );
  AOI22D0 U60 ( .A1(n75), .A2(intadd_0_SUM_4_), .B1(intadd_0_SUM_5_), .B2(n40), 
        .ZN(result[22]) );
  INVD0 U61 ( .I(x[23]), .ZN(n44) );
  NR2D0 U62 ( .A1(n40), .A2(intadd_0_SUM_5_), .ZN(n43) );
  INVD0 U63 ( .I(n39), .ZN(result[23]) );
  INVD0 U64 ( .I(n43), .ZN(n76) );
  OAI22D0 U65 ( .A1(n74), .A2(n76), .B1(n75), .B2(intadd_0_SUM_0_), .ZN(
        result[17]) );
  INVD0 U66 ( .I(intadd_0_SUM_2_), .ZN(n41) );
  AOI21D0 U67 ( .A1(n41), .A2(intadd_0_SUM_5_), .B(n40), .ZN(n42) );
  OAI22D0 U68 ( .A1(intadd_0_SUM_3_), .A2(n76), .B1(intadd_0_SUM_4_), .B2(n42), 
        .ZN(result[21]) );
  FA1D0 U69 ( .A(y[23]), .B(n44), .CI(n43), .CO(n47), .S(n39) );
  INVD0 U70 ( .I(intadd_1_SUM_0_), .ZN(n46) );
  INVD0 U71 ( .I(n45), .ZN(result[24]) );
  FA1D0 U72 ( .A(n77), .B(n47), .CI(n46), .CO(n48), .S(n45) );
  INVD0 U73 ( .I(n48), .ZN(intadd_1_A_1_) );
  INVD0 U74 ( .I(x[19]), .ZN(n55) );
  INVD0 U75 ( .I(x[18]), .ZN(n68) );
  AOI22D0 U76 ( .A1(x[18]), .A2(n55), .B1(x[19]), .B2(n68), .ZN(intadd_0_B_0_)
         );
  INVD0 U77 ( .I(y[19]), .ZN(n49) );
  INVD0 U78 ( .I(n38), .ZN(n51) );
  AOI22D0 U79 ( .A1(n38), .A2(y[19]), .B1(n49), .B2(n51), .ZN(intadd_0_A_0_)
         );
  INVD0 U80 ( .I(y[20]), .ZN(n50) );
  AOI33D0 U81 ( .A1(n38), .A2(y[20]), .A3(n49), .B1(y[19]), .B2(n50), .B3(n51), 
        .ZN(n54) );
  OAI21D0 U82 ( .A1(intadd_0_A_0_), .A2(y[20]), .B(n54), .ZN(intadd_0_A_1_) );
  INVD0 U83 ( .I(n52), .ZN(n53) );
  NR2D0 U84 ( .A1(n53), .A2(n54), .ZN(n66) );
  AO21D0 U85 ( .A1(n54), .A2(n53), .B(n66), .Z(intadd_0_B_2_) );
  INVD0 U86 ( .I(x[20]), .ZN(n70) );
  INVD0 U87 ( .I(n56), .ZN(intadd_0_A_2_) );
  FA1D0 U88 ( .A(x[20]), .B(x[21]), .CI(n57), .CO(n61), .S(n56) );
  INVD0 U89 ( .I(n58), .ZN(intadd_0_B_3_) );
  FA1D0 U90 ( .A(y[20]), .B(y[21]), .CI(n59), .CO(n60), .S(n52) );
  NR2D0 U91 ( .A1(n66), .A2(n67), .ZN(intadd_0_B_4_) );
  FA1D0 U92 ( .A(n65), .B(y[21]), .CI(n60), .CO(n63), .S(n67) );
  FA1D0 U93 ( .A(n64), .B(x[21]), .CI(n61), .CO(n62), .S(n58) );
  CKND2D0 U94 ( .A1(n63), .A2(n62), .ZN(intadd_0_A_5_) );
  OAI21D0 U95 ( .A1(n63), .A2(n62), .B(intadd_0_A_5_), .ZN(intadd_0_A_4_) );
  AOI22D0 U96 ( .A1(x[22]), .A2(n65), .B1(y[22]), .B2(n64), .ZN(intadd_0_B_5_)
         );
  OAI222D0 U97 ( .A1(n76), .A2(intadd_0_SUM_1_), .B1(n77), .B2(intadd_0_SUM_0_), .C1(intadd_0_SUM_2_), .C2(n75), .ZN(result[19]) );
  CKND2D0 U98 ( .A1(x[19]), .A2(n68), .ZN(n69) );
  MUX2ND0 U99 ( .I0(n70), .I1(x[20]), .S(n69), .ZN(intadd_0_B_1_) );
  INVD1 U100 ( .I(n77), .ZN(n73) );
  FA1D0 U101 ( .A(x[25]), .B(y[25]), .CI(n73), .CO(intadd_1_A_2_), .S(
        intadd_1_B_1_) );
  FA1D0 U102 ( .A(x[26]), .B(y[26]), .CI(n73), .CO(intadd_1_A_3_), .S(
        intadd_1_B_2_) );
  FA1D0 U103 ( .A(x[27]), .B(y[27]), .CI(n73), .CO(intadd_1_A_4_), .S(
        intadd_1_B_3_) );
  FA1D0 U104 ( .A(x[28]), .B(y[28]), .CI(n73), .CO(intadd_1_A_5_), .S(
        intadd_1_B_4_) );
  FA1D0 U105 ( .A(x[29]), .B(y[29]), .CI(n73), .CO(n71), .S(intadd_1_B_5_) );
  XOR4D0 U106 ( .A1(x[30]), .A2(y[30]), .A3(n71), .A4(intadd_1_n1), .Z(n72) );
  MUX2ND0 U107 ( .I0(n73), .I1(n77), .S(n72), .ZN(result[30]) );
  XOR2D0 U108 ( .A1(y[31]), .A2(x[31]), .Z(result[31]) );
  OAI222D0 U109 ( .A1(n77), .A2(n74), .B1(n76), .B2(intadd_0_SUM_0_), .C1(
        intadd_0_SUM_1_), .C2(n75), .ZN(result[18]) );
  OAI222D0 U110 ( .A1(n77), .A2(intadd_0_SUM_1_), .B1(n76), .B2(
        intadd_0_SUM_2_), .C1(intadd_0_SUM_3_), .C2(n75), .ZN(result[20]) );
endmodule

