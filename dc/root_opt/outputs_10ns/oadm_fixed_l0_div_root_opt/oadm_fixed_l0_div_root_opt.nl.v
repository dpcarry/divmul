/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Thu Sep  3 02:36:37 2026
/////////////////////////////////////////////////////////////


module oadm_fixed_l0_div_root_opt ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   intadd_0_A_6_, intadd_0_A_5_, intadd_0_A_4_, intadd_0_A_3_,
         intadd_0_A_2_, intadd_0_A_1_, intadd_0_B_6_, intadd_0_B_5_,
         intadd_0_B_4_, intadd_0_B_3_, intadd_0_B_2_, intadd_0_B_1_,
         intadd_0_B_0_, intadd_0_CI, intadd_0_SUM_6_, intadd_0_SUM_5_,
         intadd_0_SUM_4_, intadd_0_SUM_3_, intadd_0_SUM_2_, intadd_0_SUM_1_,
         intadd_0_SUM_0_, intadd_0_n7, intadd_0_n6, intadd_0_n5, intadd_0_n4,
         intadd_0_n3, intadd_0_n2, intadd_0_n1, intadd_1_A_2_, intadd_1_A_1_,
         intadd_1_A_0_, intadd_1_B_2_, intadd_1_B_1_, intadd_1_B_0_,
         intadd_1_CI, intadd_1_SUM_2_, intadd_1_SUM_1_, intadd_1_SUM_0_,
         intadd_1_n3, intadd_1_n2, intadd_1_n1, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144;

  FA1D0 intadd_0_U7 ( .A(intadd_0_A_1_), .B(intadd_0_B_1_), .CI(intadd_0_n7), 
        .CO(intadd_0_n6), .S(intadd_0_SUM_1_) );
  FA1D0 intadd_1_U4 ( .A(intadd_1_A_0_), .B(intadd_1_B_0_), .CI(intadd_1_CI), 
        .CO(intadd_1_n3), .S(intadd_1_SUM_0_) );
  FA1D0 intadd_0_U8 ( .A(y[23]), .B(intadd_0_B_0_), .CI(intadd_0_CI), .CO(
        intadd_0_n7), .S(intadd_0_SUM_0_) );
  FA1D0 intadd_1_U3 ( .A(intadd_1_A_1_), .B(intadd_1_B_1_), .CI(intadd_1_n3), 
        .CO(intadd_1_n2), .S(intadd_1_SUM_1_) );
  FA1D0 intadd_1_U2 ( .A(intadd_1_A_2_), .B(intadd_1_B_2_), .CI(intadd_1_n2), 
        .CO(intadd_1_n1), .S(intadd_1_SUM_2_) );
  FA1D0 intadd_0_U6 ( .A(intadd_0_A_2_), .B(intadd_0_B_2_), .CI(intadd_0_n6), 
        .CO(intadd_0_n5), .S(intadd_0_SUM_2_) );
  FA1D0 intadd_0_U5 ( .A(intadd_0_A_3_), .B(intadd_0_B_3_), .CI(intadd_0_n5), 
        .CO(intadd_0_n4), .S(intadd_0_SUM_3_) );
  FA1D0 intadd_0_U4 ( .A(intadd_0_A_4_), .B(intadd_0_B_4_), .CI(intadd_0_n4), 
        .CO(intadd_0_n3), .S(intadd_0_SUM_4_) );
  FA1D0 intadd_0_U3 ( .A(intadd_0_A_5_), .B(intadd_0_B_5_), .CI(intadd_0_n3), 
        .CO(intadd_0_n2), .S(intadd_0_SUM_5_) );
  FA1D0 intadd_0_U2 ( .A(intadd_0_A_6_), .B(intadd_0_B_6_), .CI(intadd_0_n2), 
        .CO(intadd_0_n1), .S(intadd_0_SUM_6_) );
  FA1D0 U23 ( .A(n79), .B(n78), .CI(n77), .CO(n80), .S(intadd_1_A_0_) );
  FA1D0 U24 ( .A(n91), .B(n90), .CI(n89), .CO(n58), .S(n133) );
  FA1D0 U25 ( .A(n81), .B(y[21]), .CI(n72), .CO(n69), .S(n73) );
  FA1D0 U26 ( .A(x[20]), .B(x[21]), .CI(n67), .CO(n74), .S(n66) );
  FA1D0 U27 ( .A(n83), .B(x[21]), .CI(n74), .CO(n71), .S(n76) );
  FA1D0 U28 ( .A(y[20]), .B(y[21]), .CI(n68), .CO(n72), .S(n78) );
  FA1D0 U29 ( .A(n85), .B(n84), .CI(n92), .CO(n87), .S(n98) );
  FA1D0 U30 ( .A(n97), .B(n96), .CI(n95), .CO(n90), .S(n122) );
  FA1D0 U31 ( .A(n88), .B(n87), .CI(n86), .CO(n82), .S(n105) );
  FA1D0 U32 ( .A(n116), .B(n115), .CI(n114), .CO(n102), .S(n120) );
  XNR4D0 U33 ( .A1(n131), .A2(x[30]), .A3(y[30]), .A4(intadd_0_n1), .ZN(
        result[30]) );
  INVD0 U34 ( .I(intadd_0_SUM_6_), .ZN(result[29]) );
  INVD0 U35 ( .I(intadd_0_SUM_5_), .ZN(result[28]) );
  INVD0 U36 ( .I(intadd_0_SUM_4_), .ZN(result[27]) );
  INVD0 U37 ( .I(intadd_0_SUM_3_), .ZN(result[26]) );
  INVD0 U38 ( .I(intadd_0_SUM_2_), .ZN(result[25]) );
  INVD0 U39 ( .I(intadd_0_SUM_1_), .ZN(result[24]) );
  INVD0 U40 ( .I(intadd_0_SUM_0_), .ZN(result[23]) );
  OAI211D0 U41 ( .A1(n106), .A2(n105), .B(intadd_0_A_1_), .C(n104), .ZN(n141)
         );
  CKND2D0 U42 ( .A1(n110), .A2(intadd_0_A_1_), .ZN(intadd_0_CI) );
  CKND2D0 U43 ( .A1(n101), .A2(n104), .ZN(intadd_0_A_1_) );
  CKND2D0 U44 ( .A1(n106), .A2(n105), .ZN(n104) );
  NR2D0 U45 ( .A1(n123), .A2(n107), .ZN(n106) );
  OAI21D0 U46 ( .A1(n103), .A2(n102), .B(n100), .ZN(n107) );
  AO21D0 U47 ( .A1(n111), .A2(n112), .B(n113), .Z(n114) );
  OAI21D0 U48 ( .A1(n124), .A2(intadd_1_n1), .B(n119), .ZN(n111) );
  XNR3D0 U49 ( .A1(n119), .A2(intadd_1_n1), .A3(n124), .ZN(n144) );
  INVD0 U50 ( .I(intadd_1_SUM_2_), .ZN(n142) );
  INVD0 U51 ( .I(intadd_1_SUM_1_), .ZN(n140) );
  INVD0 U52 ( .I(n99), .ZN(n112) );
  AOI21D0 U53 ( .A1(n108), .A2(n135), .B(n103), .ZN(n116) );
  INVD0 U54 ( .I(intadd_1_SUM_0_), .ZN(n139) );
  NR2D0 U55 ( .A1(n135), .A2(n108), .ZN(n103) );
  AOI21D0 U56 ( .A1(n133), .A2(n105), .B(n115), .ZN(n113) );
  NR2D0 U57 ( .A1(n125), .A2(n126), .ZN(n124) );
  AOI21D0 U58 ( .A1(n133), .A2(n126), .B(intadd_1_B_1_), .ZN(intadd_1_B_0_) );
  INVD0 U59 ( .I(n101), .ZN(n108) );
  OAI21D0 U60 ( .A1(y[22]), .A2(n83), .B(n82), .ZN(n101) );
  INVD0 U61 ( .I(n105), .ZN(n125) );
  NR2D0 U62 ( .A1(n105), .A2(n133), .ZN(n115) );
  NR2D0 U63 ( .A1(n126), .A2(n133), .ZN(intadd_1_B_1_) );
  INVD0 U64 ( .I(n98), .ZN(n123) );
  OAI21D0 U65 ( .A1(n94), .A2(n93), .B(n92), .ZN(n100) );
  CKND2D0 U66 ( .A1(n93), .A2(n94), .ZN(n92) );
  INVD0 U67 ( .I(intadd_1_A_0_), .ZN(n135) );
  INVD0 U68 ( .I(n80), .ZN(n94) );
  OAI21D0 U69 ( .A1(n71), .A2(n70), .B(n88), .ZN(n85) );
  NR2D0 U70 ( .A1(n59), .A2(n58), .ZN(n79) );
  AO21D0 U71 ( .A1(n76), .A2(n75), .B(n84), .Z(n93) );
  CKND2D0 U72 ( .A1(n71), .A2(n70), .ZN(n88) );
  NR2D0 U73 ( .A1(n75), .A2(n76), .ZN(n84) );
  INVD0 U74 ( .I(n122), .ZN(n136) );
  INVD0 U75 ( .I(n69), .ZN(n70) );
  INVD0 U76 ( .I(n73), .ZN(n75) );
  NR2D0 U77 ( .A1(n56), .A2(n57), .ZN(n59) );
  INVD0 U78 ( .I(n66), .ZN(n77) );
  AOI21D0 U79 ( .A1(x[25]), .A2(n127), .B(intadd_0_B_3_), .ZN(intadd_0_A_2_)
         );
  AOI21D0 U80 ( .A1(x[27]), .A2(n129), .B(intadd_0_B_5_), .ZN(intadd_0_A_4_)
         );
  AOI21D0 U81 ( .A1(x[29]), .A2(n132), .B(n131), .ZN(intadd_0_A_6_) );
  AOI21D0 U82 ( .A1(x[28]), .A2(n130), .B(intadd_0_B_6_), .ZN(intadd_0_A_5_)
         );
  CKND2D0 U83 ( .A1(n55), .A2(n62), .ZN(n57) );
  AOI21D0 U84 ( .A1(x[26]), .A2(n128), .B(intadd_0_B_4_), .ZN(intadd_0_A_3_)
         );
  AOI21D0 U85 ( .A1(x[24]), .A2(n121), .B(intadd_0_B_2_), .ZN(intadd_0_B_1_)
         );
  AOI22D0 U86 ( .A1(x[19]), .A2(x[18]), .B1(n65), .B2(n63), .ZN(n55) );
  AOI22D0 U87 ( .A1(y[22]), .A2(x[22]), .B1(n83), .B2(n81), .ZN(n86) );
  AOI21D0 U88 ( .A1(n65), .A2(n64), .B(n63), .ZN(n67) );
  AOI21D0 U89 ( .A1(n62), .A2(n61), .B(n60), .ZN(n68) );
  NR2D0 U90 ( .A1(n63), .A2(x[18]), .ZN(n53) );
  NR2D0 U91 ( .A1(n65), .A2(n62), .ZN(n96) );
  NR2D0 U92 ( .A1(n132), .A2(x[29]), .ZN(n131) );
  NR2D0 U93 ( .A1(n127), .A2(x[25]), .ZN(intadd_0_B_3_) );
  NR2D0 U94 ( .A1(n130), .A2(x[28]), .ZN(intadd_0_B_6_) );
  NR2D0 U95 ( .A1(n129), .A2(x[27]), .ZN(intadd_0_B_5_) );
  NR2D0 U96 ( .A1(n128), .A2(x[26]), .ZN(intadd_0_B_4_) );
  NR2D0 U97 ( .A1(n121), .A2(x[24]), .ZN(intadd_0_B_2_) );
  INVD0 U98 ( .I(y[29]), .ZN(n132) );
  XOR2D0 U99 ( .A1(y[31]), .A2(x[31]), .Z(result[31]) );
  INVD0 U100 ( .I(y[25]), .ZN(n127) );
  INVD0 U101 ( .I(y[28]), .ZN(n130) );
  INVD0 U102 ( .I(x[23]), .ZN(intadd_0_B_0_) );
  INVD0 U103 ( .I(y[26]), .ZN(n128) );
  INVD0 U104 ( .I(y[22]), .ZN(n81) );
  INVD0 U105 ( .I(x[22]), .ZN(n83) );
  INVD0 U106 ( .I(x[18]), .ZN(n65) );
  INVD0 U107 ( .I(y[19]), .ZN(n60) );
  INVD0 U108 ( .I(y[18]), .ZN(n62) );
  INVD0 U109 ( .I(x[19]), .ZN(n63) );
  INVD0 U110 ( .I(y[24]), .ZN(n121) );
  INVD0 U111 ( .I(y[27]), .ZN(n129) );
  INVD0 U112 ( .I(n52), .ZN(result[10]) );
  INVD0 U113 ( .I(n52), .ZN(result[9]) );
  INVD0 U114 ( .I(n52), .ZN(result[8]) );
  INVD0 U115 ( .I(n52), .ZN(result[7]) );
  INVD0 U116 ( .I(n52), .ZN(result[6]) );
  INVD0 U117 ( .I(n52), .ZN(result[0]) );
  INVD0 U118 ( .I(n52), .ZN(result[1]) );
  INVD0 U119 ( .I(n52), .ZN(result[3]) );
  INVD0 U120 ( .I(n52), .ZN(result[5]) );
  INVD0 U121 ( .I(n52), .ZN(result[2]) );
  INVD0 U122 ( .I(n52), .ZN(result[4]) );
  TIEH U123 ( .Z(n52) );
  INVD0 U124 ( .I(x[20]), .ZN(n64) );
  MUX2ND0 U125 ( .I0(x[20]), .I1(n64), .S(n53), .ZN(n56) );
  INVD0 U126 ( .I(y[20]), .ZN(n61) );
  CKND2D0 U127 ( .A1(y[19]), .A2(n62), .ZN(n54) );
  MUX2ND0 U128 ( .I0(n61), .I1(y[20]), .S(n54), .ZN(n91) );
  AOI22D0 U129 ( .A1(y[18]), .A2(n60), .B1(y[19]), .B2(n62), .ZN(n97) );
  OA21D0 U130 ( .A1(n55), .A2(n62), .B(n57), .Z(n95) );
  AOI21D0 U131 ( .A1(n57), .A2(n56), .B(n59), .ZN(n89) );
  INVD0 U132 ( .I(n100), .ZN(n126) );
  FA1D0 U133 ( .A(n98), .B(n108), .CI(n122), .CO(n99), .S(n119) );
  NR2D0 U134 ( .A1(n136), .A2(intadd_0_A_1_), .ZN(result[11]) );
  MUX2ND0 U135 ( .I0(n105), .I1(n125), .S(n106), .ZN(n110) );
  MAOI22D0 U136 ( .A1(n133), .A2(n136), .B1(n136), .B2(n133), .ZN(n137) );
  OAI22D0 U137 ( .A1(intadd_0_A_1_), .A2(n137), .B1(n136), .B2(intadd_0_CI), 
        .ZN(result[12]) );
  XNR3D0 U138 ( .A1(n103), .A2(n102), .A3(n126), .ZN(n118) );
  AOI21D0 U139 ( .A1(n107), .A2(n123), .B(n106), .ZN(n117) );
  CKND2D0 U140 ( .A1(n108), .A2(n117), .ZN(n109) );
  MOAI22D0 U141 ( .A1(n118), .A2(n141), .B1(n110), .B2(n109), .ZN(result[22])
         );
  NR2D0 U142 ( .A1(n123), .A2(n135), .ZN(intadd_1_B_2_) );
  XOR3D0 U143 ( .A1(n113), .A2(n112), .A3(n111), .Z(n143) );
  OAI222D0 U144 ( .A1(n143), .A2(n141), .B1(intadd_0_CI), .B2(n120), .C1(
        intadd_0_A_1_), .C2(n118), .ZN(result[20]) );
  OAI222D0 U145 ( .A1(n118), .A2(intadd_0_CI), .B1(intadd_0_A_1_), .B2(n117), 
        .C1(n141), .C2(n120), .ZN(result[21]) );
  OAI222D0 U146 ( .A1(n143), .A2(intadd_0_CI), .B1(intadd_0_A_1_), .B2(n120), 
        .C1(n141), .C2(n144), .ZN(result[19]) );
  AOI21D0 U147 ( .A1(intadd_1_A_0_), .A2(n133), .B(n122), .ZN(intadd_1_CI) );
  AOI21D0 U148 ( .A1(n135), .A2(n123), .B(intadd_1_B_2_), .ZN(intadd_1_A_1_)
         );
  AOI21D0 U149 ( .A1(n126), .A2(n125), .B(n124), .ZN(intadd_1_A_2_) );
  CKND2D0 U150 ( .A1(n133), .A2(n136), .ZN(n134) );
  MUX2ND0 U151 ( .I0(intadd_1_A_0_), .I1(n135), .S(n134), .ZN(n138) );
  OAI222D0 U152 ( .A1(intadd_0_CI), .A2(n137), .B1(intadd_0_A_1_), .B2(n138), 
        .C1(n141), .C2(n136), .ZN(result[13]) );
  OAI222D0 U153 ( .A1(n137), .A2(n141), .B1(intadd_0_CI), .B2(n138), .C1(
        intadd_0_A_1_), .C2(n139), .ZN(result[14]) );
  OAI222D0 U154 ( .A1(n139), .A2(intadd_0_CI), .B1(n141), .B2(n138), .C1(
        intadd_0_A_1_), .C2(n140), .ZN(result[15]) );
  OAI222D0 U155 ( .A1(n140), .A2(intadd_0_CI), .B1(n142), .B2(intadd_0_A_1_), 
        .C1(n139), .C2(n141), .ZN(result[16]) );
  OAI222D0 U156 ( .A1(n142), .A2(intadd_0_CI), .B1(n144), .B2(intadd_0_A_1_), 
        .C1(n140), .C2(n141), .ZN(result[17]) );
  OAI222D0 U157 ( .A1(n144), .A2(intadd_0_CI), .B1(n143), .B2(intadd_0_A_1_), 
        .C1(n142), .C2(n141), .ZN(result[18]) );
endmodule

