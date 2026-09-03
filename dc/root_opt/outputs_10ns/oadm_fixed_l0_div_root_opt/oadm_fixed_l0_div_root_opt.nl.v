/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Wed Sep  2 22:00:15 2026
/////////////////////////////////////////////////////////////


module oadm_fixed_l0_div_root_opt ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   C7_DATA2_1, DP_OP_57J1_123_3112_n23, DP_OP_57J1_123_3112_n22,
         DP_OP_57J1_123_3112_n21, DP_OP_57J1_123_3112_n20,
         DP_OP_57J1_123_3112_n19, DP_OP_57J1_123_3112_n18,
         DP_OP_57J1_123_3112_n17, DP_OP_57J1_123_3112_n16,
         DP_OP_57J1_123_3112_n15, DP_OP_57J1_123_3112_n14,
         DP_OP_57J1_123_3112_n13, DP_OP_57J1_123_3112_n12,
         DP_OP_57J1_123_3112_n11, DP_OP_57J1_123_3112_n7,
         DP_OP_57J1_123_3112_n6, intadd_0_A_2_, intadd_0_A_1_, intadd_0_A_0_,
         intadd_0_B_2_, intadd_0_B_1_, intadd_0_B_0_, intadd_0_CI,
         intadd_0_SUM_2_, intadd_0_SUM_1_, intadd_0_SUM_0_, intadd_0_n3,
         intadd_0_n2, intadd_0_n1, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n135,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154;
  wire   [6:0] implementation_exponent_input;

  FA1D0 intadd_0_U4 ( .A(intadd_0_A_0_), .B(intadd_0_B_0_), .CI(intadd_0_CI), 
        .CO(intadd_0_n3), .S(intadd_0_SUM_0_) );
  FA1D0 DP_OP_57J1_123_3112_U23 ( .A(DP_OP_57J1_123_3112_n22), .B(x[25]), .CI(
        DP_OP_57J1_123_3112_n16), .CO(DP_OP_57J1_123_3112_n15), .S(
        implementation_exponent_input[2]) );
  FA1D0 intadd_0_U3 ( .A(intadd_0_A_1_), .B(intadd_0_B_1_), .CI(intadd_0_n3), 
        .CO(intadd_0_n2), .S(intadd_0_SUM_1_) );
  FA1D0 intadd_0_U2 ( .A(intadd_0_A_2_), .B(intadd_0_B_2_), .CI(intadd_0_n2), 
        .CO(intadd_0_n1), .S(intadd_0_SUM_2_) );
  FA1D0 DP_OP_57J1_123_3112_U24 ( .A(DP_OP_57J1_123_3112_n23), .B(x[24]), .CI(
        DP_OP_57J1_123_3112_n17), .CO(DP_OP_57J1_123_3112_n16), .S(
        implementation_exponent_input[1]) );
  FA1D0 DP_OP_57J1_123_3112_U12 ( .A(DP_OP_57J1_123_3112_n7), .B(n153), .CI(
        implementation_exponent_input[1]), .CO(DP_OP_57J1_123_3112_n6), .S(
        C7_DATA2_1) );
  FA1D0 DP_OP_57J1_123_3112_U22 ( .A(DP_OP_57J1_123_3112_n21), .B(x[26]), .CI(
        DP_OP_57J1_123_3112_n15), .CO(DP_OP_57J1_123_3112_n14), .S(
        implementation_exponent_input[3]) );
  FA1D0 DP_OP_57J1_123_3112_U21 ( .A(DP_OP_57J1_123_3112_n20), .B(x[27]), .CI(
        DP_OP_57J1_123_3112_n14), .CO(DP_OP_57J1_123_3112_n13), .S(
        implementation_exponent_input[4]) );
  FA1D0 DP_OP_57J1_123_3112_U20 ( .A(DP_OP_57J1_123_3112_n19), .B(x[28]), .CI(
        DP_OP_57J1_123_3112_n13), .CO(DP_OP_57J1_123_3112_n12), .S(
        implementation_exponent_input[5]) );
  FA1D0 DP_OP_57J1_123_3112_U19 ( .A(DP_OP_57J1_123_3112_n18), .B(x[29]), .CI(
        DP_OP_57J1_123_3112_n12), .CO(DP_OP_57J1_123_3112_n11), .S(
        implementation_exponent_input[6]) );
  FA1D0 U30 ( .A(n81), .B(n80), .CI(n79), .CO(n82), .S(intadd_0_A_0_) );
  FA1D0 U31 ( .A(n83), .B(y[21]), .CI(n72), .CO(n71), .S(n73) );
  FA1D0 U32 ( .A(x[20]), .B(x[21]), .CI(n69), .CO(n74), .S(n65) );
  FA1D0 U33 ( .A(y[20]), .B(y[21]), .CI(n70), .CO(n72), .S(n80) );
  FA1D0 U34 ( .A(n90), .B(n89), .CI(n88), .CO(n84), .S(n97) );
  FA1D0 U35 ( .A(n68), .B(n67), .CI(n66), .CO(n93), .S(n139) );
  FA1D0 U36 ( .A(n93), .B(n92), .CI(n91), .CO(n57), .S(n140) );
  FA1D0 U37 ( .A(n87), .B(n86), .CI(n94), .CO(n89), .S(n111) );
  FA1D0 U38 ( .A(n117), .B(n116), .CI(n115), .CO(n102), .S(n122) );
  MUX2D0 U39 ( .I0(n138), .I1(n137), .S(n149), .Z(result[30]) );
  MUX2D0 U40 ( .I0(implementation_exponent_input[6]), .I1(n133), .S(n149), .Z(
        result[29]) );
  MUX2D0 U42 ( .I0(implementation_exponent_input[5]), .I1(n131), .S(n149), .Z(
        result[28]) );
  XNR2D0 U43 ( .A1(n135), .A2(implementation_exponent_input[6]), .ZN(n133) );
  OR2D0 U45 ( .A1(implementation_exponent_input[5]), .A2(n132), .Z(n135) );
  XNR2D0 U46 ( .A1(n132), .A2(implementation_exponent_input[5]), .ZN(n131) );
  MUX2D0 U47 ( .I0(implementation_exponent_input[4]), .I1(n129), .S(n149), .Z(
        result[27]) );
  XNR2D0 U48 ( .A1(n130), .A2(implementation_exponent_input[4]), .ZN(n129) );
  MUX2D0 U49 ( .I0(implementation_exponent_input[3]), .I1(n127), .S(n149), .Z(
        result[26]) );
  OR2D0 U50 ( .A1(implementation_exponent_input[4]), .A2(n130), .Z(n132) );
  MUX2D0 U51 ( .I0(implementation_exponent_input[2]), .I1(n126), .S(n149), .Z(
        result[25]) );
  OR2D0 U52 ( .A1(n128), .A2(implementation_exponent_input[3]), .Z(n130) );
  MUX2D0 U53 ( .I0(implementation_exponent_input[1]), .I1(C7_DATA2_1), .S(n149), .Z(result[24]) );
  OR2D0 U54 ( .A1(DP_OP_57J1_123_3112_n6), .A2(
        implementation_exponent_input[2]), .Z(n128) );
  OR2D0 U55 ( .A1(implementation_exponent_input[0]), .A2(n151), .Z(
        DP_OP_57J1_123_3112_n7) );
  XNR2D0 U56 ( .A1(n151), .A2(implementation_exponent_input[0]), .ZN(
        result[23]) );
  CKND2D0 U59 ( .A1(n110), .A2(n149), .ZN(n153) );
  NR2D0 U60 ( .A1(n125), .A2(n149), .ZN(result[11]) );
  IND2D0 U61 ( .A1(n107), .B1(n99), .ZN(n149) );
  OR2D0 U63 ( .A1(n105), .A2(n144), .Z(n99) );
  CKND2D0 U64 ( .A1(n111), .A2(n106), .ZN(n105) );
  NR2D0 U65 ( .A1(n100), .A2(n145), .ZN(n106) );
  NR2D0 U66 ( .A1(n101), .A2(n102), .ZN(n100) );
  AO21D0 U67 ( .A1(n112), .A2(n98), .B(n114), .Z(n115) );
  OAI21D0 U68 ( .A1(n143), .A2(intadd_0_n1), .B(n118), .ZN(n112) );
  INVD0 U69 ( .I(intadd_0_SUM_2_), .ZN(n150) );
  XNR3D0 U70 ( .A1(n118), .A2(n143), .A3(intadd_0_n1), .ZN(n121) );
  INVD0 U71 ( .I(intadd_0_SUM_1_), .ZN(n152) );
  INVD0 U72 ( .I(intadd_0_SUM_0_), .ZN(n148) );
  INVD0 U73 ( .I(n113), .ZN(n98) );
  NR2D0 U74 ( .A1(n141), .A2(n107), .ZN(n101) );
  AOI21D0 U75 ( .A1(n140), .A2(n97), .B(n116), .ZN(n114) );
  NR2D0 U76 ( .A1(n97), .A2(n140), .ZN(n116) );
  INVD0 U77 ( .I(n97), .ZN(n144) );
  OA21D0 U78 ( .A1(y[22]), .A2(n85), .B(n84), .Z(n107) );
  NR2D0 U79 ( .A1(n141), .A2(n142), .ZN(intadd_0_B_2_) );
  INVD0 U80 ( .I(n104), .ZN(n145) );
  OAI21D0 U81 ( .A1(n96), .A2(n95), .B(n94), .ZN(n104) );
  CKND2D0 U82 ( .A1(n95), .A2(n96), .ZN(n94) );
  INVD0 U84 ( .I(intadd_0_A_0_), .ZN(n141) );
  INVD0 U85 ( .I(n82), .ZN(n96) );
  NR2D0 U86 ( .A1(n58), .A2(n57), .ZN(n81) );
  OAI21D0 U87 ( .A1(n76), .A2(n75), .B(n90), .ZN(n86) );
  AO21D0 U88 ( .A1(n78), .A2(n77), .B(n87), .Z(n95) );
  NR2D0 U89 ( .A1(n77), .A2(n78), .ZN(n87) );
  INVD0 U90 ( .I(n139), .ZN(n125) );
  CKND2D0 U91 ( .A1(n76), .A2(n75), .ZN(n90) );
  INVD0 U92 ( .I(n73), .ZN(n77) );
  INVD0 U93 ( .I(n71), .ZN(n75) );
  AOI21D0 U94 ( .A1(n55), .A2(n54), .B(n58), .ZN(n92) );
  NR2D0 U95 ( .A1(n54), .A2(n55), .ZN(n58) );
  INVD0 U96 ( .I(n65), .ZN(n79) );
  FA1D1 U97 ( .A(n85), .B(x[21]), .CI(n74), .CO(n76), .S(n78) );
  CKND2D0 U98 ( .A1(n53), .A2(n61), .ZN(n55) );
  AOI22D0 U99 ( .A1(y[22]), .A2(x[22]), .B1(n85), .B2(n83), .ZN(n88) );
  NR2D0 U100 ( .A1(n62), .A2(x[18]), .ZN(n52) );
  AOI21D0 U101 ( .A1(n61), .A2(n60), .B(n59), .ZN(n70) );
  NR2D0 U102 ( .A1(n64), .A2(n61), .ZN(n68) );
  AOI22D0 U103 ( .A1(x[19]), .A2(x[18]), .B1(n64), .B2(n62), .ZN(n53) );
  AOI21D0 U104 ( .A1(n64), .A2(n63), .B(n62), .ZN(n69) );
  INVD0 U105 ( .I(y[26]), .ZN(DP_OP_57J1_123_3112_n21) );
  INVD0 U107 ( .I(y[27]), .ZN(DP_OP_57J1_123_3112_n20) );
  INVD0 U108 ( .I(y[25]), .ZN(DP_OP_57J1_123_3112_n22) );
  INVD0 U110 ( .I(y[24]), .ZN(DP_OP_57J1_123_3112_n23) );
  INVD0 U111 ( .I(x[22]), .ZN(n85) );
  INVD0 U112 ( .I(y[18]), .ZN(n61) );
  INVD0 U113 ( .I(y[28]), .ZN(DP_OP_57J1_123_3112_n19) );
  INVD0 U114 ( .I(y[29]), .ZN(DP_OP_57J1_123_3112_n18) );
  INVD0 U115 ( .I(y[19]), .ZN(n59) );
  INVD0 U116 ( .I(x[18]), .ZN(n64) );
  XOR2D0 U117 ( .A1(y[31]), .A2(x[31]), .Z(result[31]) );
  INVD0 U118 ( .I(y[22]), .ZN(n83) );
  INVD0 U119 ( .I(x[19]), .ZN(n62) );
  INVD0 U120 ( .I(n51), .ZN(result[0]) );
  INVD0 U121 ( .I(n51), .ZN(result[6]) );
  INVD0 U122 ( .I(n51), .ZN(result[9]) );
  INVD0 U123 ( .I(n51), .ZN(result[2]) );
  INVD0 U124 ( .I(n51), .ZN(result[10]) );
  INVD0 U125 ( .I(n51), .ZN(result[1]) );
  INVD0 U126 ( .I(n51), .ZN(result[5]) );
  INVD0 U127 ( .I(n51), .ZN(result[4]) );
  INVD0 U128 ( .I(n51), .ZN(result[7]) );
  INVD0 U129 ( .I(n51), .ZN(result[8]) );
  INVD0 U130 ( .I(n51), .ZN(result[3]) );
  TIEH U131 ( .Z(n51) );
  INVD0 U132 ( .I(x[20]), .ZN(n63) );
  MUX2ND0 U133 ( .I0(x[20]), .I1(n63), .S(n52), .ZN(n54) );
  AOI22D0 U134 ( .A1(y[18]), .A2(n59), .B1(y[19]), .B2(n61), .ZN(n67) );
  OA21D0 U135 ( .A1(n53), .A2(n61), .B(n55), .Z(n66) );
  INVD0 U136 ( .I(y[20]), .ZN(n60) );
  CKND2D0 U137 ( .A1(y[19]), .A2(n61), .ZN(n56) );
  MUX2ND0 U138 ( .I0(n60), .I1(y[20]), .S(n56), .ZN(n91) );
  AOI21D0 U139 ( .A1(n107), .A2(n141), .B(n101), .ZN(n117) );
  NR2D0 U140 ( .A1(n144), .A2(n145), .ZN(n143) );
  FA1D0 U141 ( .A(n107), .B(n139), .CI(n111), .CO(n113), .S(n118) );
  AOI21D0 U142 ( .A1(n102), .A2(n101), .B(n100), .ZN(n103) );
  MUX2ND0 U143 ( .I0(n145), .I1(n104), .S(n103), .ZN(n120) );
  OA21D0 U144 ( .A1(n111), .A2(n106), .B(n105), .Z(n119) );
  CKAN2D0 U145 ( .A1(n107), .A2(n119), .Z(n108) );
  OAI22D0 U146 ( .A1(n120), .A2(n153), .B1(n110), .B2(n108), .ZN(result[22])
         );
  MAOI22D0 U147 ( .A1(n140), .A2(n125), .B1(n125), .B2(n140), .ZN(n146) );
  OAI22D0 U148 ( .A1(n149), .A2(n146), .B1(n125), .B2(n151), .ZN(result[12])
         );
  NR2D0 U149 ( .A1(n145), .A2(n140), .ZN(intadd_0_B_1_) );
  INVD0 U150 ( .I(n111), .ZN(n142) );
  XNR3D0 U151 ( .A1(n114), .A2(n113), .A3(n112), .ZN(n123) );
  OAI222D0 U152 ( .A1(n123), .A2(n153), .B1(n151), .B2(n122), .C1(n149), .C2(
        n120), .ZN(result[20]) );
  OAI222D0 U153 ( .A1(n121), .A2(n151), .B1(n123), .B2(n149), .C1(n150), .C2(
        n153), .ZN(result[18]) );
  OAI222D0 U154 ( .A1(n150), .A2(n151), .B1(n121), .B2(n149), .C1(n152), .C2(
        n153), .ZN(result[17]) );
  OAI222D0 U155 ( .A1(n120), .A2(n151), .B1(n149), .B2(n119), .C1(n153), .C2(
        n122), .ZN(result[21]) );
  OAI222D0 U156 ( .A1(n123), .A2(n151), .B1(n149), .B2(n122), .C1(n153), .C2(
        n121), .ZN(result[19]) );
  CKND2D0 U157 ( .A1(n140), .A2(n125), .ZN(n124) );
  MUX2ND0 U158 ( .I0(intadd_0_A_0_), .I1(n141), .S(n124), .ZN(n147) );
  OAI222D0 U159 ( .A1(n151), .A2(n146), .B1(n149), .B2(n147), .C1(n153), .C2(
        n125), .ZN(result[13]) );
  XNR2D0 U160 ( .A1(implementation_exponent_input[2]), .A2(
        DP_OP_57J1_123_3112_n6), .ZN(n126) );
  XNR2D0 U161 ( .A1(implementation_exponent_input[3]), .A2(n128), .ZN(n127) );
  AOI21D0 U162 ( .A1(intadd_0_A_0_), .A2(n140), .B(n139), .ZN(intadd_0_CI) );
  AOI21D0 U163 ( .A1(n140), .A2(n145), .B(intadd_0_B_1_), .ZN(intadd_0_B_0_)
         );
  AOI21D0 U164 ( .A1(n142), .A2(n141), .B(intadd_0_B_2_), .ZN(intadd_0_A_1_)
         );
  AOI21D0 U165 ( .A1(n145), .A2(n144), .B(n143), .ZN(intadd_0_A_2_) );
  OAI222D0 U166 ( .A1(n146), .A2(n153), .B1(n151), .B2(n147), .C1(n149), .C2(
        n148), .ZN(result[14]) );
  OAI222D0 U167 ( .A1(n148), .A2(n151), .B1(n153), .B2(n147), .C1(n149), .C2(
        n152), .ZN(result[15]) );
  OAI222D0 U168 ( .A1(n152), .A2(n151), .B1(n150), .B2(n149), .C1(n148), .C2(
        n153), .ZN(result[16]) );
  CKXOR2D0 U41 ( .A1(n154), .A2(n138), .Z(n137) );
  XOR3D0 U44 ( .A1(DP_OP_57J1_123_3112_n11), .A2(y[30]), .A3(x[30]), .Z(n138)
         );
  NR2D0 U57 ( .A1(n135), .A2(implementation_exponent_input[6]), .ZN(n154) );
  IND2D0 U58 ( .A1(n110), .B1(n149), .ZN(n151) );
  CKXOR2D0 U62 ( .A1(n105), .A2(n144), .Z(n110) );
  INR2D0 U83 ( .A1(x[23]), .B1(y[23]), .ZN(DP_OP_57J1_123_3112_n17) );
  XNR2D0 U106 ( .A1(y[23]), .A2(x[23]), .ZN(implementation_exponent_input[0])
         );
endmodule

