/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Thu Sep  3 02:48:09 2026
/////////////////////////////////////////////////////////////


module pace_fp32_l1 ( x, y, out0 );
  input [31:0] x;
  input [31:0] y;
  output [31:0] out0;
  wire   intadd_0_B_20_, intadd_0_B_19_, intadd_0_B_18_, intadd_0_B_17_,
         intadd_0_B_16_, intadd_0_B_15_, intadd_0_B_14_, intadd_0_B_13_,
         intadd_0_B_12_, intadd_0_B_11_, intadd_0_B_10_, intadd_0_B_9_,
         intadd_0_B_8_, intadd_0_B_7_, intadd_0_B_6_, intadd_0_B_5_,
         intadd_0_B_4_, intadd_0_B_3_, intadd_0_B_2_, intadd_0_B_1_,
         intadd_0_B_0_, intadd_0_CI, intadd_0_SUM_20_, intadd_0_SUM_19_,
         intadd_0_SUM_18_, intadd_0_SUM_17_, intadd_0_SUM_16_,
         intadd_0_SUM_15_, intadd_0_SUM_14_, intadd_0_SUM_13_,
         intadd_0_SUM_12_, intadd_0_SUM_11_, intadd_0_SUM_10_, intadd_0_SUM_9_,
         intadd_0_SUM_8_, intadd_0_SUM_7_, intadd_0_SUM_6_, intadd_0_SUM_5_,
         intadd_0_SUM_4_, intadd_0_SUM_3_, intadd_0_SUM_2_, intadd_0_SUM_1_,
         intadd_0_SUM_0_, intadd_0_n21, intadd_0_n20, intadd_0_n19,
         intadd_0_n18, intadd_0_n17, intadd_0_n16, intadd_0_n15, intadd_0_n14,
         intadd_0_n13, intadd_0_n12, intadd_0_n11, intadd_0_n10, intadd_0_n9,
         intadd_0_n8, intadd_0_n7, intadd_0_n6, intadd_0_n5, intadd_0_n4,
         intadd_0_n3, intadd_0_n2, intadd_0_n1, intadd_1_A_6_, intadd_1_A_5_,
         intadd_1_A_4_, intadd_1_A_3_, intadd_1_A_2_, intadd_1_A_1_,
         intadd_1_B_6_, intadd_1_B_5_, intadd_1_B_4_, intadd_1_B_3_,
         intadd_1_B_2_, intadd_1_B_1_, intadd_1_n7, intadd_1_n6, intadd_1_n5,
         intadd_1_n4, intadd_1_n3, intadd_1_n2, intadd_1_n1, n41, n42, n43,
         n44, n45, n46, n47, n49, n50, n51, n53, n54, n56, n57, n58, n60, n61,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104,
         n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115,
         n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, n126,
         n127, n128, n129, n130, n131, n132, n133, n134, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n157, n158, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186,
         n187, n188, n189, n190, n191;

  FA1D0 intadd_0_U22 ( .A(y[1]), .B(intadd_0_B_0_), .CI(intadd_0_CI), .CO(
        intadd_0_n21), .S(intadd_0_SUM_0_) );
  FA1D0 intadd_0_U21 ( .A(y[2]), .B(intadd_0_B_1_), .CI(intadd_0_n21), .CO(
        intadd_0_n20), .S(intadd_0_SUM_1_) );
  FA1D0 intadd_0_U20 ( .A(y[3]), .B(intadd_0_B_2_), .CI(intadd_0_n20), .CO(
        intadd_0_n19), .S(intadd_0_SUM_2_) );
  FA1D0 intadd_0_U19 ( .A(y[4]), .B(intadd_0_B_3_), .CI(intadd_0_n19), .CO(
        intadd_0_n18), .S(intadd_0_SUM_3_) );
  FA1D0 intadd_0_U18 ( .A(y[5]), .B(intadd_0_B_4_), .CI(intadd_0_n18), .CO(
        intadd_0_n17), .S(intadd_0_SUM_4_) );
  FA1D0 intadd_0_U17 ( .A(y[6]), .B(intadd_0_B_5_), .CI(intadd_0_n17), .CO(
        intadd_0_n16), .S(intadd_0_SUM_5_) );
  FA1D0 intadd_0_U16 ( .A(y[7]), .B(intadd_0_B_6_), .CI(intadd_0_n16), .CO(
        intadd_0_n15), .S(intadd_0_SUM_6_) );
  FA1D0 intadd_0_U15 ( .A(y[8]), .B(intadd_0_B_7_), .CI(intadd_0_n15), .CO(
        intadd_0_n14), .S(intadd_0_SUM_7_) );
  FA1D0 intadd_0_U14 ( .A(y[9]), .B(intadd_0_B_8_), .CI(intadd_0_n14), .CO(
        intadd_0_n13), .S(intadd_0_SUM_8_) );
  FA1D0 intadd_0_U13 ( .A(y[10]), .B(intadd_0_B_9_), .CI(intadd_0_n13), .CO(
        intadd_0_n12), .S(intadd_0_SUM_9_) );
  FA1D0 intadd_0_U12 ( .A(y[11]), .B(intadd_0_B_10_), .CI(intadd_0_n12), .CO(
        intadd_0_n11), .S(intadd_0_SUM_10_) );
  FA1D0 intadd_0_U11 ( .A(y[12]), .B(intadd_0_B_11_), .CI(intadd_0_n11), .CO(
        intadd_0_n10), .S(intadd_0_SUM_11_) );
  FA1D0 intadd_0_U10 ( .A(y[13]), .B(intadd_0_B_12_), .CI(intadd_0_n10), .CO(
        intadd_0_n9), .S(intadd_0_SUM_12_) );
  FA1D0 intadd_0_U9 ( .A(y[14]), .B(intadd_0_B_13_), .CI(intadd_0_n9), .CO(
        intadd_0_n8), .S(intadd_0_SUM_13_) );
  FA1D0 intadd_0_U8 ( .A(y[15]), .B(intadd_0_B_14_), .CI(intadd_0_n8), .CO(
        intadd_0_n7), .S(intadd_0_SUM_14_) );
  FA1D0 intadd_0_U7 ( .A(y[16]), .B(intadd_0_B_15_), .CI(intadd_0_n7), .CO(
        intadd_0_n6), .S(intadd_0_SUM_15_) );
  FA1D0 intadd_0_U6 ( .A(y[17]), .B(intadd_0_B_16_), .CI(intadd_0_n6), .CO(
        intadd_0_n5), .S(intadd_0_SUM_16_) );
  FA1D0 intadd_0_U5 ( .A(y[18]), .B(intadd_0_B_17_), .CI(intadd_0_n5), .CO(
        intadd_0_n4), .S(intadd_0_SUM_17_) );
  FA1D0 intadd_0_U4 ( .A(y[19]), .B(intadd_0_B_18_), .CI(intadd_0_n4), .CO(
        intadd_0_n3), .S(intadd_0_SUM_18_) );
  FA1D0 intadd_0_U3 ( .A(y[20]), .B(intadd_0_B_19_), .CI(intadd_0_n3), .CO(
        intadd_0_n2), .S(intadd_0_SUM_19_) );
  FA1D0 intadd_1_U8 ( .A(x[23]), .B(y[23]), .CI(n41), .CO(intadd_1_n7), .S(
        out0[23]) );
  FA1D0 intadd_1_U7 ( .A(intadd_1_A_1_), .B(intadd_1_B_1_), .CI(intadd_1_n7), 
        .CO(intadd_1_n6), .S(out0[24]) );
  FA1D0 intadd_1_U6 ( .A(intadd_1_A_2_), .B(intadd_1_B_2_), .CI(intadd_1_n6), 
        .CO(intadd_1_n5), .S(out0[25]) );
  FA1D0 intadd_1_U5 ( .A(intadd_1_A_3_), .B(intadd_1_B_3_), .CI(intadd_1_n5), 
        .CO(intadd_1_n4), .S(out0[26]) );
  FA1D0 intadd_1_U4 ( .A(intadd_1_A_4_), .B(intadd_1_B_4_), .CI(intadd_1_n4), 
        .CO(intadd_1_n3), .S(out0[27]) );
  FA1D0 intadd_1_U3 ( .A(intadd_1_A_5_), .B(intadd_1_B_5_), .CI(intadd_1_n3), 
        .CO(intadd_1_n2), .S(out0[28]) );
  FA1D0 intadd_1_U2 ( .A(intadd_1_A_6_), .B(intadd_1_B_6_), .CI(intadd_1_n2), 
        .CO(intadd_1_n1), .S(out0[29]) );
  FA1D0 intadd_0_U2 ( .A(y[21]), .B(intadd_0_B_20_), .CI(intadd_0_n2), .CO(
        intadd_0_n1), .S(intadd_0_SUM_20_) );
  INVD0 U114 ( .I(n154), .ZN(n153) );
  CKND2D0 U115 ( .A1(y[24]), .A2(n162), .ZN(intadd_1_B_2_) );
  INVD0 U116 ( .I(n41), .ZN(n180) );
  AOI32D0 U117 ( .A1(n124), .A2(n122), .A3(n125), .B1(n121), .B2(n122), .ZN(
        n126) );
  OAI21D0 U118 ( .A1(y[26]), .A2(n164), .B(intadd_1_B_4_), .ZN(intadd_1_A_3_)
         );
  OAI21D0 U119 ( .A1(y[25]), .A2(n163), .B(intadd_1_B_3_), .ZN(intadd_1_A_2_)
         );
  OAI21D0 U120 ( .A1(y[24]), .A2(n162), .B(intadd_1_B_2_), .ZN(intadd_1_B_1_)
         );
  OAI21D0 U121 ( .A1(y[29]), .A2(n168), .B(n167), .ZN(intadd_1_A_6_) );
  OAI21D0 U122 ( .A1(y[28]), .A2(n166), .B(intadd_1_B_6_), .ZN(intadd_1_A_5_)
         );
  OAI21D0 U123 ( .A1(y[27]), .A2(n165), .B(intadd_1_B_5_), .ZN(intadd_1_A_4_)
         );
  CKND2D1 U124 ( .A1(y[27]), .A2(n165), .ZN(intadd_1_B_5_) );
  CKND2D1 U125 ( .A1(y[25]), .A2(n163), .ZN(intadd_1_B_3_) );
  CKND2D1 U126 ( .A1(y[26]), .A2(n164), .ZN(intadd_1_B_4_) );
  CKND2D1 U127 ( .A1(y[28]), .A2(n166), .ZN(intadd_1_B_6_) );
  CKND2D1 U128 ( .A1(y[29]), .A2(n168), .ZN(n167) );
  NR2XD0 U129 ( .A1(n42), .A2(x[0]), .ZN(intadd_0_CI) );
  INVD0 U130 ( .I(x[2]), .ZN(intadd_0_B_1_) );
  INVD0 U131 ( .I(x[14]), .ZN(intadd_0_B_13_) );
  INVD0 U132 ( .I(x[15]), .ZN(intadd_0_B_14_) );
  INVD0 U133 ( .I(x[29]), .ZN(n168) );
  INVD0 U134 ( .I(x[19]), .ZN(intadd_0_B_18_) );
  INVD0 U135 ( .I(x[17]), .ZN(intadd_0_B_16_) );
  INVD0 U136 ( .I(x[3]), .ZN(intadd_0_B_2_) );
  INVD0 U137 ( .I(x[16]), .ZN(intadd_0_B_15_) );
  INVD0 U138 ( .I(x[18]), .ZN(intadd_0_B_17_) );
  INVD0 U139 ( .I(y[0]), .ZN(n42) );
  INVD0 U140 ( .I(x[20]), .ZN(intadd_0_B_19_) );
  INVD0 U141 ( .I(x[1]), .ZN(intadd_0_B_0_) );
  INVD0 U142 ( .I(x[5]), .ZN(intadd_0_B_4_) );
  INVD0 U143 ( .I(x[21]), .ZN(intadd_0_B_20_) );
  INVD0 U144 ( .I(x[25]), .ZN(n163) );
  INVD0 U145 ( .I(x[13]), .ZN(intadd_0_B_12_) );
  INVD0 U146 ( .I(x[26]), .ZN(n164) );
  INVD0 U147 ( .I(x[11]), .ZN(intadd_0_B_10_) );
  INVD0 U148 ( .I(x[27]), .ZN(n165) );
  INVD0 U149 ( .I(x[22]), .ZN(n169) );
  INVD0 U150 ( .I(x[8]), .ZN(intadd_0_B_7_) );
  INVD0 U151 ( .I(x[10]), .ZN(intadd_0_B_9_) );
  INVD0 U152 ( .I(x[12]), .ZN(intadd_0_B_11_) );
  INVD0 U153 ( .I(y[23]), .ZN(intadd_1_A_1_) );
  INVD0 U154 ( .I(x[7]), .ZN(intadd_0_B_6_) );
  INVD0 U155 ( .I(x[4]), .ZN(intadd_0_B_3_) );
  INVD0 U156 ( .I(x[28]), .ZN(n166) );
  INVD0 U157 ( .I(x[9]), .ZN(intadd_0_B_8_) );
  INVD0 U158 ( .I(x[6]), .ZN(intadd_0_B_5_) );
  INVD0 U159 ( .I(x[24]), .ZN(n162) );
  INVD0 U160 ( .I(y[22]), .ZN(n154) );
  MAOI222D1 U161 ( .A(intadd_0_n1), .B(n153), .C(n169), .ZN(n41) );
  XNR4D0 U162 ( .A1(y[30]), .A2(x[30]), .A3(intadd_1_n1), .A4(n167), .ZN(
        out0[30]) );
  NR2D0 U163 ( .A1(n153), .A2(intadd_0_SUM_14_), .ZN(n133) );
  NR2D0 U164 ( .A1(n153), .A2(intadd_0_SUM_10_), .ZN(n85) );
  INVD0 U166 ( .I(intadd_0_SUM_9_), .ZN(n83) );
  INVD0 U167 ( .I(intadd_0_SUM_8_), .ZN(n58) );
  CKND2D0 U168 ( .A1(n154), .A2(n58), .ZN(n93) );
  NR2D0 U170 ( .A1(n153), .A2(intadd_0_SUM_6_), .ZN(n101) );
  INVD0 U172 ( .I(intadd_0_SUM_5_), .ZN(n99) );
  INVD0 U173 ( .I(intadd_0_SUM_4_), .ZN(n51) );
  CKND2D0 U174 ( .A1(n154), .A2(n51), .ZN(n108) );
  NR2D0 U176 ( .A1(n153), .A2(intadd_0_SUM_2_), .ZN(n46) );
  INVD0 U177 ( .I(n46), .ZN(n115) );
  INVD0 U179 ( .I(intadd_0_SUM_1_), .ZN(n45) );
  INVD0 U180 ( .I(intadd_0_SUM_0_), .ZN(n120) );
  AO21D0 U181 ( .A1(x[0]), .A2(n42), .B(intadd_0_CI), .Z(n125) );
  ND4D0 U182 ( .A1(n120), .A2(intadd_0_SUM_1_), .A3(n154), .A4(n125), .ZN(n122) );
  NR2D0 U183 ( .A1(n153), .A2(intadd_0_SUM_0_), .ZN(n124) );
  CKND2D0 U184 ( .A1(n124), .A2(n45), .ZN(n43) );
  CKND2D0 U185 ( .A1(n122), .A2(n43), .ZN(n44) );
  MAOI222D0 U186 ( .A(n46), .B(n45), .C(n44), .ZN(n111) );
  OAI21D0 U187 ( .A1(n153), .A2(intadd_0_SUM_3_), .B(intadd_0_SUM_2_), .ZN(n47) );
  OAI31D0 U188 ( .A1(n153), .A2(intadd_0_SUM_2_), .A3(intadd_0_SUM_3_), .B(n47), .ZN(n112) );
  MAOI222D0 U191 ( .A(intadd_0_SUM_3_), .B(n49), .C(n108), .ZN(n104) );
  NR2D0 U192 ( .A1(n153), .A2(intadd_0_SUM_5_), .ZN(n50) );
  MUX2ND0 U193 ( .I0(intadd_0_SUM_4_), .I1(n51), .S(n50), .ZN(n105) );
  MAOI222D0 U196 ( .A(n101), .B(n99), .C(n53), .ZN(n96) );
  OAI21D0 U197 ( .A1(n153), .A2(intadd_0_SUM_7_), .B(intadd_0_SUM_6_), .ZN(n54) );
  OAI31D0 U198 ( .A1(n153), .A2(intadd_0_SUM_6_), .A3(intadd_0_SUM_7_), .B(n54), .ZN(n97) );
  MAOI222D0 U201 ( .A(intadd_0_SUM_7_), .B(n56), .C(n93), .ZN(n87) );
  NR2D0 U202 ( .A1(n153), .A2(intadd_0_SUM_9_), .ZN(n57) );
  MUX2ND0 U203 ( .I0(intadd_0_SUM_8_), .I1(n58), .S(n57), .ZN(n88) );
  MAOI222D0 U206 ( .A(n85), .B(n83), .C(n60), .ZN(n81) );
  OAI21D0 U207 ( .A1(n153), .A2(intadd_0_SUM_11_), .B(intadd_0_SUM_10_), .ZN(
        n61) );
  OAI31D0 U208 ( .A1(n153), .A2(intadd_0_SUM_10_), .A3(intadd_0_SUM_11_), .B(
        n61), .ZN(n82) );
  INVD0 U211 ( .I(intadd_0_SUM_12_), .ZN(n65) );
  CKND2D0 U212 ( .A1(n154), .A2(n65), .ZN(n72) );
  MAOI222D0 U213 ( .A(intadd_0_SUM_11_), .B(n63), .C(n72), .ZN(n67) );
  NR2D0 U214 ( .A1(n153), .A2(intadd_0_SUM_13_), .ZN(n64) );
  MUX2ND0 U215 ( .I0(intadd_0_SUM_12_), .I1(n65), .S(n64), .ZN(n68) );
  INVD0 U217 ( .I(intadd_0_SUM_13_), .ZN(n76) );
  CKND2D0 U218 ( .A1(n72), .A2(n76), .ZN(n66) );
  XNR3D0 U219 ( .A1(n133), .A2(n73), .A3(n66), .ZN(n79) );
  OAI21D0 U220 ( .A1(n68), .A2(n67), .B(n73), .ZN(n70) );
  AOI22D0 U221 ( .A1(n41), .A2(n79), .B1(n70), .B2(n180), .ZN(out0[13]) );
  OR2D0 U222 ( .A1(intadd_0_SUM_11_), .A2(n85), .Z(n69) );
  XNR3D0 U223 ( .A1(n72), .A2(n80), .A3(n69), .ZN(n91) );
  AOI22D0 U224 ( .A1(n41), .A2(n70), .B1(n91), .B2(n180), .ZN(out0[12]) );
  OAI21D0 U225 ( .A1(n153), .A2(intadd_0_SUM_15_), .B(intadd_0_SUM_14_), .ZN(
        n71) );
  OAI31D0 U226 ( .A1(n153), .A2(intadd_0_SUM_14_), .A3(intadd_0_SUM_15_), .B(
        n71), .ZN(n78) );
  MAOI222D0 U229 ( .A(n133), .B(n76), .C(n75), .ZN(n77) );
  AO21D0 U231 ( .A1(n78), .A2(n77), .B(n134), .Z(n130) );
  AOI22D0 U232 ( .A1(n41), .A2(n130), .B1(n79), .B2(n180), .ZN(out0[14]) );
  AO21D0 U233 ( .A1(n82), .A2(n81), .B(n80), .Z(n90) );
  CKND2D0 U234 ( .A1(n93), .A2(n83), .ZN(n84) );
  XNR3D0 U235 ( .A1(n85), .A2(n86), .A3(n84), .ZN(n89) );
  AOI22D0 U236 ( .A1(n41), .A2(n90), .B1(n89), .B2(n180), .ZN(out0[10]) );
  OAI21D0 U237 ( .A1(n88), .A2(n87), .B(n86), .ZN(n94) );
  AOI22D0 U238 ( .A1(n41), .A2(n89), .B1(n94), .B2(n180), .ZN(out0[9]) );
  AOI22D0 U239 ( .A1(n41), .A2(n91), .B1(n90), .B2(n180), .ZN(out0[11]) );
  OR2D0 U240 ( .A1(intadd_0_SUM_7_), .A2(n101), .Z(n92) );
  XNR3D0 U241 ( .A1(n93), .A2(n95), .A3(n92), .ZN(n98) );
  AOI22D0 U242 ( .A1(n41), .A2(n94), .B1(n98), .B2(n180), .ZN(out0[8]) );
  AO21D0 U243 ( .A1(n97), .A2(n96), .B(n95), .Z(n102) );
  AOI22D0 U244 ( .A1(n41), .A2(n98), .B1(n102), .B2(n180), .ZN(out0[7]) );
  CKND2D0 U245 ( .A1(n108), .A2(n99), .ZN(n100) );
  XNR3D0 U246 ( .A1(n101), .A2(n103), .A3(n100), .ZN(n106) );
  AOI22D0 U247 ( .A1(n41), .A2(n102), .B1(n106), .B2(n180), .ZN(out0[6]) );
  OAI21D0 U248 ( .A1(n105), .A2(n104), .B(n103), .ZN(n109) );
  AOI22D0 U249 ( .A1(n41), .A2(n106), .B1(n109), .B2(n180), .ZN(out0[5]) );
  IND2D0 U250 ( .A1(intadd_0_SUM_3_), .B1(n115), .ZN(n107) );
  XNR3D0 U251 ( .A1(n108), .A2(n110), .A3(n107), .ZN(n113) );
  AOI22D0 U252 ( .A1(n41), .A2(n109), .B1(n113), .B2(n180), .ZN(out0[4]) );
  AO21D0 U253 ( .A1(n112), .A2(n111), .B(n110), .Z(n118) );
  AOI22D0 U254 ( .A1(n41), .A2(n113), .B1(n118), .B2(n180), .ZN(out0[3]) );
  INVD0 U255 ( .I(n122), .ZN(n117) );
  OAI21D0 U256 ( .A1(intadd_0_SUM_1_), .A2(n124), .B(n115), .ZN(n114) );
  OAI31D0 U257 ( .A1(intadd_0_SUM_1_), .A2(n124), .A3(n115), .B(n114), .ZN(
        n116) );
  MUX2ND0 U258 ( .I0(n122), .I1(n117), .S(n116), .ZN(n123) );
  AOI22D0 U259 ( .A1(n41), .A2(n118), .B1(n123), .B2(n180), .ZN(out0[2]) );
  NR2D0 U260 ( .A1(n153), .A2(intadd_0_SUM_1_), .ZN(n119) );
  MUX2ND0 U261 ( .I0(intadd_0_SUM_0_), .I1(n120), .S(n119), .ZN(n121) );
  AOI22D0 U262 ( .A1(n41), .A2(n123), .B1(n126), .B2(n180), .ZN(out0[1]) );
  CKAN2D0 U263 ( .A1(n124), .A2(n125), .Z(n128) );
  NR2D0 U264 ( .A1(n125), .A2(n124), .ZN(n127) );
  OAI32D0 U265 ( .A1(n41), .A2(n128), .A3(n127), .B1(n126), .B2(n180), .ZN(
        out0[0]) );
  INVD0 U266 ( .I(intadd_0_SUM_16_), .ZN(n132) );
  CKND2D0 U267 ( .A1(n154), .A2(n132), .ZN(n143) );
  OR2D0 U268 ( .A1(intadd_0_SUM_15_), .A2(n133), .Z(n129) );
  XNR3D0 U269 ( .A1(n143), .A2(n134), .A3(n129), .ZN(n139) );
  AOI22D0 U270 ( .A1(n41), .A2(n139), .B1(n130), .B2(n180), .ZN(out0[15]) );
  NR2D0 U271 ( .A1(n153), .A2(intadd_0_SUM_17_), .ZN(n131) );
  MUX2ND0 U272 ( .I0(intadd_0_SUM_16_), .I1(n132), .S(n131), .ZN(n138) );
  MAOI222D0 U275 ( .A(intadd_0_SUM_15_), .B(n136), .C(n143), .ZN(n137) );
  OAI21D0 U277 ( .A1(n138), .A2(n137), .B(n144), .ZN(n141) );
  AOI22D0 U278 ( .A1(n41), .A2(n141), .B1(n139), .B2(n180), .ZN(out0[16]) );
  NR2D0 U279 ( .A1(n153), .A2(intadd_0_SUM_18_), .ZN(n157) );
  INVD0 U280 ( .I(intadd_0_SUM_17_), .ZN(n147) );
  CKND2D0 U281 ( .A1(n143), .A2(n147), .ZN(n140) );
  XNR3D0 U282 ( .A1(n157), .A2(n144), .A3(n140), .ZN(n150) );
  AOI22D0 U283 ( .A1(n41), .A2(n150), .B1(n141), .B2(n180), .ZN(out0[17]) );
  OAI21D0 U284 ( .A1(n153), .A2(intadd_0_SUM_19_), .B(intadd_0_SUM_18_), .ZN(
        n142) );
  OAI31D0 U285 ( .A1(n153), .A2(intadd_0_SUM_18_), .A3(intadd_0_SUM_19_), .B(
        n142), .ZN(n149) );
  MAOI222D0 U288 ( .A(n157), .B(n147), .C(n146), .ZN(n148) );
  AO21D0 U290 ( .A1(n149), .A2(n148), .B(n158), .Z(n152) );
  AOI22D0 U291 ( .A1(n41), .A2(n152), .B1(n150), .B2(n180), .ZN(out0[18]) );
  NR2D0 U292 ( .A1(n153), .A2(intadd_0_SUM_20_), .ZN(n179) );
  OR2D0 U293 ( .A1(intadd_0_SUM_19_), .A2(n157), .Z(n151) );
  XOR3D0 U294 ( .A1(n179), .A2(n158), .A3(n151), .Z(n161) );
  AOI22D0 U295 ( .A1(n41), .A2(n161), .B1(n152), .B2(n180), .ZN(out0[19]) );
  OAI31D0 U297 ( .A1(intadd_0_n1), .A2(n153), .A3(n169), .B(n41), .ZN(n177) );
  INVD0 U302 ( .I(n179), .ZN(n171) );
  MAOI222D0 U303 ( .A(intadd_0_SUM_19_), .B(n160), .C(n171), .ZN(n174) );
  XOR2D0 U304 ( .A1(n173), .A2(n174), .Z(n176) );
  AOI22D0 U305 ( .A1(n41), .A2(n176), .B1(n161), .B2(n180), .ZN(out0[20]) );
  CKND2D0 U306 ( .A1(intadd_0_n1), .A2(n169), .ZN(n172) );
  INVD0 U307 ( .I(n172), .ZN(n170) );
  AOI32D0 U308 ( .A1(n172), .A2(n171), .A3(n177), .B1(n170), .B2(n179), .ZN(
        n175) );
  INR2D0 U309 ( .A1(n174), .B1(n173), .ZN(n178) );
  XOR2D0 U310 ( .A1(n175), .A2(n178), .Z(n181) );
  AOI22D0 U311 ( .A1(n41), .A2(n181), .B1(n176), .B2(n180), .ZN(out0[21]) );
  OAI21D0 U312 ( .A1(n179), .A2(n178), .B(n177), .ZN(n182) );
  AOI22D0 U313 ( .A1(n41), .A2(n182), .B1(n181), .B2(n180), .ZN(out0[22]) );
  XOR2D0 U314 ( .A1(y[31]), .A2(x[31]), .Z(out0[31]) );
  XNR2D0 U165 ( .A1(intadd_0_SUM_20_), .A2(n183), .ZN(n173) );
  CKND2D0 U169 ( .A1(n177), .A2(n154), .ZN(n183) );
  AOI21D0 U171 ( .A1(n157), .A2(n184), .B(n158), .ZN(n160) );
  NR2D0 U175 ( .A1(n148), .A2(n149), .ZN(n158) );
  CKND0 U178 ( .I(intadd_0_SUM_19_), .ZN(n184) );
  OAI21D0 U189 ( .A1(n143), .A2(n185), .B(n144), .ZN(n146) );
  CKND2D0 U190 ( .A1(n138), .A2(n137), .ZN(n144) );
  CKND0 U194 ( .I(n147), .ZN(n185) );
  AOI21D0 U195 ( .A1(n133), .A2(n186), .B(n134), .ZN(n136) );
  NR2D0 U199 ( .A1(n77), .A2(n78), .ZN(n134) );
  CKND0 U200 ( .I(intadd_0_SUM_15_), .ZN(n186) );
  OAI21D0 U204 ( .A1(n72), .A2(n187), .B(n73), .ZN(n75) );
  CKND2D0 U205 ( .A1(n68), .A2(n67), .ZN(n73) );
  CKND0 U209 ( .I(n76), .ZN(n187) );
  AOI21D0 U210 ( .A1(n85), .A2(n188), .B(n80), .ZN(n63) );
  NR2D0 U216 ( .A1(n81), .A2(n82), .ZN(n80) );
  CKND0 U227 ( .I(intadd_0_SUM_11_), .ZN(n188) );
  OAI21D0 U228 ( .A1(n93), .A2(n189), .B(n86), .ZN(n60) );
  CKND2D0 U230 ( .A1(n88), .A2(n87), .ZN(n86) );
  CKND0 U273 ( .I(n83), .ZN(n189) );
  AOI21D0 U274 ( .A1(n101), .A2(n190), .B(n95), .ZN(n56) );
  NR2D0 U276 ( .A1(n96), .A2(n97), .ZN(n95) );
  CKND0 U286 ( .I(intadd_0_SUM_7_), .ZN(n190) );
  OAI21D0 U287 ( .A1(n108), .A2(n191), .B(n103), .ZN(n53) );
  CKND2D0 U289 ( .A1(n105), .A2(n104), .ZN(n103) );
  CKND0 U296 ( .I(n99), .ZN(n191) );
  IAO21D0 U298 ( .A1(n115), .A2(intadd_0_SUM_3_), .B(n110), .ZN(n49) );
  NR2D0 U299 ( .A1(n111), .A2(n112), .ZN(n110) );
endmodule

