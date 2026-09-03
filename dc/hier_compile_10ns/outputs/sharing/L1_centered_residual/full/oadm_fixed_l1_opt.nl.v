/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Thu Sep  3 12:27:00 2026
/////////////////////////////////////////////////////////////


module oadm_multilevel_rounding_lut_0 ( level, index, value_low, x_error, 
        y_error );
  input [1:0] level;
  input [2:0] index;
  input [3:0] value_low;
  output [1:0] x_error;
  output [1:0] y_error;
  wire   n103, n104, n108, n109, n1, n18, n30;

  OA21D0 U1 ( .A1(n103), .A2(n104), .B(value_low[0]), .Z(x_error[0]) );
  INR2D0 U2 ( .A1(index[2]), .B1(n30), .ZN(n109) );
  ND4D0 U3 ( .A1(index[1]), .A2(index[0]), .A3(value_low[2]), .A4(value_low[1]), .ZN(n30) );
  NR2D0 U4 ( .A1(value_low[1]), .A2(value_low[2]), .ZN(n18) );
  INR4D0 U5 ( .A1(n1), .B1(index[1]), .B2(index[0]), .B3(value_low[3]), .ZN(
        n108) );
  CKND0 U6 ( .I(index[2]), .ZN(n1) );
  AO22D0 U7 ( .A1(n109), .A2(value_low[3]), .B1(n108), .B2(n18), .Z(n104) );
  CKXOR2D0 U8 ( .A1(value_low[1]), .A2(n1), .Z(n103) );
endmodule


module oadm_multilevel_rounding_lut_1 ( level, index, value_low, x_error, 
        y_error );
  input [1:0] level;
  input [2:0] index;
  input [3:0] value_low;
  output [1:0] x_error;
  output [1:0] y_error;
  wire   n1, n16, n19, n22, n23, n28, n29, n142, n143, n147, n148, n170, n171,
         n172, n196, n201, n202, n222;

  AOI22D1 U27 ( .A1(n29), .A2(value_low[1]), .B1(n28), .B2(n170), .ZN(n201) );
  NR2D1 U28 ( .A1(n29), .A2(n1), .ZN(n170) );
  INVD1 U31 ( .I(value_low[3]), .ZN(n22) );
  INVD1 U33 ( .I(index[1]), .ZN(n16) );
  INVD1 U34 ( .I(index[0]), .ZN(n19) );
  INVD1 U77 ( .I(index[2]), .ZN(n1) );
  INVD1 U83 ( .I(value_low[0]), .ZN(n29) );
  NR2D0 U1 ( .A1(n222), .A2(n202), .ZN(n142) );
  ND3D0 U2 ( .A1(index[1]), .A2(index[2]), .A3(index[0]), .ZN(n222) );
  INR2D0 U3 ( .A1(n28), .B1(value_low[2]), .ZN(n23) );
  AN4D0 U4 ( .A1(n22), .A2(n16), .A3(n19), .A4(n1), .Z(n143) );
  CKND0 U5 ( .I(value_low[1]), .ZN(n28) );
  CKND2D0 U6 ( .A1(value_low[1]), .A2(value_low[2]), .ZN(n202) );
  IAO21D0 U7 ( .A1(n148), .A2(n147), .B(n29), .ZN(x_error[0]) );
  OAI211D0 U8 ( .A1(index[2]), .A2(n28), .B(n196), .C(n201), .ZN(y_error[0])
         );
  ND3D0 U9 ( .A1(n172), .A2(n19), .A3(n16), .ZN(n196) );
  AO22D0 U11 ( .A1(n143), .A2(n23), .B1(n142), .B2(value_low[3]), .Z(n147) );
  NR3D0 U12 ( .A1(n170), .A2(n202), .A3(n171), .ZN(n172) );
  CKXOR2D0 U13 ( .A1(value_low[1]), .A2(n1), .Z(n148) );
  CKND0 U14 ( .I(value_low[3]), .ZN(n171) );
endmodule


module oadm_fixed_plane_centered_LEVEL1_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [28:0] A;
  input [28:0] B;
  output [28:0] DIFF;
  input CI;
  output CO;
  wire   n16, n27;
  wire   [26:1] carry;

  FA1D0 U2_2 ( .A(A[2]), .B(1'b1), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  FA1D0 U2_1 ( .A(A[1]), .B(n27), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  INVD1 U48 ( .I(B[1]), .ZN(n27) );
  XNR2D1 U53 ( .A1(carry[10]), .A2(A[10]), .ZN(DIFF[10]) );
  XNR2D1 U54 ( .A1(carry[11]), .A2(A[11]), .ZN(DIFF[11]) );
  XNR2D1 U55 ( .A1(carry[12]), .A2(A[12]), .ZN(DIFF[12]) );
  XNR2D1 U56 ( .A1(carry[13]), .A2(A[13]), .ZN(DIFF[13]) );
  XNR2D1 U57 ( .A1(carry[14]), .A2(A[14]), .ZN(DIFF[14]) );
  XNR2D1 U58 ( .A1(carry[15]), .A2(A[15]), .ZN(DIFF[15]) );
  XNR2D1 U59 ( .A1(carry[16]), .A2(A[16]), .ZN(DIFF[16]) );
  XNR2D1 U60 ( .A1(carry[17]), .A2(A[17]), .ZN(DIFF[17]) );
  XNR2D1 U61 ( .A1(carry[18]), .A2(A[18]), .ZN(DIFF[18]) );
  XNR2D1 U62 ( .A1(carry[19]), .A2(A[19]), .ZN(DIFF[19]) );
  XNR2D1 U63 ( .A1(carry[20]), .A2(A[20]), .ZN(DIFF[20]) );
  XNR2D1 U64 ( .A1(carry[21]), .A2(A[21]), .ZN(DIFF[21]) );
  XNR2D1 U65 ( .A1(carry[22]), .A2(A[22]), .ZN(DIFF[22]) );
  XNR2D1 U66 ( .A1(carry[23]), .A2(A[23]), .ZN(DIFF[23]) );
  XNR2D1 U67 ( .A1(carry[24]), .A2(A[24]), .ZN(DIFF[24]) );
  XNR2D1 U68 ( .A1(carry[25]), .A2(A[25]), .ZN(DIFF[25]) );
  XNR2D1 U69 ( .A1(A[26]), .A2(carry[26]), .ZN(DIFF[26]) );
  XNR2D1 U70 ( .A1(carry[3]), .A2(A[3]), .ZN(DIFF[3]) );
  XNR2D1 U71 ( .A1(carry[4]), .A2(A[4]), .ZN(DIFF[4]) );
  XNR2D1 U72 ( .A1(carry[5]), .A2(A[5]), .ZN(DIFF[5]) );
  XNR2D1 U73 ( .A1(carry[6]), .A2(A[6]), .ZN(DIFF[6]) );
  XNR2D1 U74 ( .A1(carry[7]), .A2(A[7]), .ZN(DIFF[7]) );
  XNR2D1 U75 ( .A1(carry[8]), .A2(A[8]), .ZN(DIFF[8]) );
  XNR2D1 U76 ( .A1(carry[9]), .A2(A[9]), .ZN(DIFF[9]) );
  IND2D0 U1 ( .A1(A[25]), .B1(n16), .ZN(carry[26]) );
  NR2D0 U2 ( .A1(carry[24]), .A2(A[24]), .ZN(n16) );
  CKND0 U3 ( .I(n16), .ZN(carry[25]) );
  OR2D0 U4 ( .A1(carry[23]), .A2(A[23]), .Z(carry[24]) );
  OR2D0 U5 ( .A1(carry[22]), .A2(A[22]), .Z(carry[23]) );
  OR2D0 U6 ( .A1(carry[21]), .A2(A[21]), .Z(carry[22]) );
  OR2D0 U7 ( .A1(carry[20]), .A2(A[20]), .Z(carry[21]) );
  OR2D0 U8 ( .A1(carry[19]), .A2(A[19]), .Z(carry[20]) );
  OR2D0 U9 ( .A1(carry[18]), .A2(A[18]), .Z(carry[19]) );
  OR2D0 U10 ( .A1(carry[17]), .A2(A[17]), .Z(carry[18]) );
  OR2D0 U11 ( .A1(carry[16]), .A2(A[16]), .Z(carry[17]) );
  OR2D0 U12 ( .A1(carry[15]), .A2(A[15]), .Z(carry[16]) );
  OR2D0 U13 ( .A1(carry[14]), .A2(A[14]), .Z(carry[15]) );
  OR2D0 U14 ( .A1(carry[13]), .A2(A[13]), .Z(carry[14]) );
  OR2D0 U15 ( .A1(carry[12]), .A2(A[12]), .Z(carry[13]) );
  OR2D0 U16 ( .A1(carry[11]), .A2(A[11]), .Z(carry[12]) );
  OR2D0 U17 ( .A1(carry[10]), .A2(A[10]), .Z(carry[11]) );
  OR2D0 U18 ( .A1(carry[9]), .A2(A[9]), .Z(carry[10]) );
  OR2D0 U19 ( .A1(carry[8]), .A2(A[8]), .Z(carry[9]) );
  OR2D0 U20 ( .A1(carry[7]), .A2(A[7]), .Z(carry[8]) );
  OR2D0 U21 ( .A1(carry[6]), .A2(A[6]), .Z(carry[7]) );
  OR2D0 U22 ( .A1(carry[5]), .A2(A[5]), .Z(carry[6]) );
  OR2D0 U23 ( .A1(carry[4]), .A2(A[4]), .Z(carry[5]) );
  OR2D0 U24 ( .A1(carry[3]), .A2(A[3]), .Z(carry[4]) );
  CKXOR2D0 U25 ( .A1(A[0]), .A2(B[0]), .Z(DIFF[0]) );
  IND2D0 U26 ( .A1(A[0]), .B1(B[0]), .ZN(carry[1]) );
endmodule


module oadm_fixed_plane_centered_LEVEL1_DW_mult_tc_1 ( a, b, product );
  input [21:0] a;
  input [5:0] b;
  output [27:0] product;
  wire   n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n43, n45, n46, n47,
         n48, n49, n51, n52, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n116, n300, n301, n302, n303,
         n304, n305, n306, n307, n308, n309, n310, n311, n312, n313, n314,
         n315, n316, n317, n318, n320, n321, n322, n323, n324, n325, n326,
         n327, n328, n329, n330, n331, n332, n333, n334, n335, n336, n337,
         n338, n339, n340, n341, n342, n343, n344, n345, n348;

  FA1D0 U18 ( .A(n342), .B(n43), .CI(n18), .CO(n17), .S(product[26]) );
  FA1D0 U19 ( .A(n45), .B(n322), .CI(n19), .CO(n18), .S(product[25]) );
  FA1D0 U20 ( .A(n47), .B(n46), .CI(n20), .CO(n19), .S(product[24]) );
  FA1D0 U21 ( .A(n51), .B(n48), .CI(n21), .CO(n20), .S(product[23]) );
  FA1D0 U22 ( .A(n52), .B(n54), .CI(n22), .CO(n21), .S(product[22]) );
  FA1D0 U23 ( .A(n56), .B(n55), .CI(n23), .CO(n22), .S(product[21]) );
  FA1D0 U24 ( .A(n58), .B(n57), .CI(n24), .CO(n23), .S(product[20]) );
  FA1D0 U25 ( .A(n60), .B(n59), .CI(n25), .CO(n24), .S(product[19]) );
  FA1D0 U26 ( .A(n62), .B(n61), .CI(n26), .CO(n25), .S(product[18]) );
  FA1D0 U27 ( .A(n64), .B(n63), .CI(n27), .CO(n26), .S(product[17]) );
  FA1D0 U28 ( .A(n66), .B(n65), .CI(n28), .CO(n27), .S(product[16]) );
  FA1D0 U29 ( .A(n68), .B(n67), .CI(n29), .CO(n28), .S(product[15]) );
  FA1D0 U30 ( .A(n70), .B(n69), .CI(n30), .CO(n29), .S(product[14]) );
  FA1D0 U31 ( .A(n72), .B(n71), .CI(n31), .CO(n30), .S(product[13]) );
  FA1D0 U32 ( .A(n74), .B(n73), .CI(n32), .CO(n31), .S(product[12]) );
  FA1D0 U33 ( .A(n76), .B(n75), .CI(n33), .CO(n32), .S(product[11]) );
  FA1D0 U34 ( .A(n78), .B(n77), .CI(n34), .CO(n33), .S(product[10]) );
  FA1D0 U35 ( .A(n80), .B(n79), .CI(n35), .CO(n34), .S(product[9]) );
  FA1D0 U36 ( .A(n82), .B(n81), .CI(n36), .CO(n35), .S(product[8]) );
  FA1D0 U37 ( .A(n84), .B(n83), .CI(n37), .CO(n36), .S(product[7]) );
  FA1D0 U38 ( .A(n86), .B(n85), .CI(n38), .CO(n37), .S(product[6]) );
  FA1D0 U39 ( .A(n88), .B(n87), .CI(n39), .CO(n38), .S(product[5]) );
  FA1D0 U45 ( .A(n95), .B(n49), .CI(n323), .CO(n45), .S(n46) );
  FA1D0 U46 ( .A(n116), .B(n96), .CI(n321), .CO(n47), .S(n48) );
  INVD1 U223 ( .I(n43), .ZN(n322) );
  INVD1 U224 ( .I(n49), .ZN(n321) );
  INVD1 U225 ( .I(n116), .ZN(n323) );
  CKXOR2D1 U228 ( .A1(b[3]), .A2(a[3]), .Z(n301) );
  CKXOR2D1 U229 ( .A1(b[3]), .A2(a[4]), .Z(n302) );
  INVD1 U230 ( .I(a[0]), .ZN(n345) );
  INVD1 U231 ( .I(a[1]), .ZN(n324) );
  INVD1 U232 ( .I(a[2]), .ZN(n332) );
  CKXOR2D1 U233 ( .A1(b[3]), .A2(a[5]), .Z(n303) );
  CKXOR2D1 U234 ( .A1(b[3]), .A2(a[6]), .Z(n304) );
  INVD1 U235 ( .I(a[3]), .ZN(n331) );
  CKXOR2D1 U236 ( .A1(b[3]), .A2(a[7]), .Z(n305) );
  INVD1 U237 ( .I(a[4]), .ZN(n330) );
  CKXOR2D1 U238 ( .A1(b[3]), .A2(a[8]), .Z(n306) );
  INVD1 U239 ( .I(a[5]), .ZN(n329) );
  CKXOR2D1 U240 ( .A1(b[3]), .A2(a[9]), .Z(n307) );
  INVD1 U241 ( .I(a[6]), .ZN(n328) );
  CKXOR2D1 U242 ( .A1(b[3]), .A2(a[10]), .Z(n308) );
  INVD1 U243 ( .I(a[7]), .ZN(n327) );
  CKXOR2D1 U244 ( .A1(b[3]), .A2(a[11]), .Z(n309) );
  INVD1 U245 ( .I(a[8]), .ZN(n326) );
  CKXOR2D1 U246 ( .A1(b[3]), .A2(a[12]), .Z(n310) );
  INVD1 U247 ( .I(a[9]), .ZN(n325) );
  CKXOR2D1 U248 ( .A1(b[3]), .A2(a[13]), .Z(n311) );
  INVD1 U249 ( .I(a[10]), .ZN(n341) );
  CKXOR2D1 U250 ( .A1(b[3]), .A2(a[14]), .Z(n312) );
  INVD1 U251 ( .I(a[11]), .ZN(n340) );
  CKXOR2D1 U252 ( .A1(b[3]), .A2(a[15]), .Z(n313) );
  INVD1 U253 ( .I(a[12]), .ZN(n339) );
  CKXOR2D1 U254 ( .A1(b[3]), .A2(a[16]), .Z(n314) );
  INVD1 U255 ( .I(a[13]), .ZN(n338) );
  CKXOR2D1 U256 ( .A1(b[3]), .A2(a[17]), .Z(n315) );
  INVD1 U257 ( .I(a[14]), .ZN(n337) );
  CKXOR2D1 U258 ( .A1(b[3]), .A2(a[18]), .Z(n316) );
  INVD1 U259 ( .I(a[15]), .ZN(n336) );
  CKXOR2D1 U260 ( .A1(b[3]), .A2(a[19]), .Z(n317) );
  INVD1 U261 ( .I(a[16]), .ZN(n335) );
  CKXOR2D1 U262 ( .A1(b[3]), .A2(a[20]), .Z(n318) );
  INVD1 U263 ( .I(a[17]), .ZN(n334) );
  INVD1 U264 ( .I(a[18]), .ZN(n333) );
  INVD1 U265 ( .I(a[21]), .ZN(n342) );
  INVD1 U266 ( .I(a[19]), .ZN(n344) );
  INVD1 U267 ( .I(a[20]), .ZN(n343) );
  AN2D0 U268 ( .A1(n40), .A2(n89), .Z(n39) );
  CKXOR2D0 U269 ( .A1(n40), .A2(n89), .Z(product[4]) );
  AN2D0 U272 ( .A1(n300), .A2(n114), .Z(n88) );
  CKXOR2D0 U273 ( .A1(n300), .A2(n114), .Z(n89) );
  AN2D0 U274 ( .A1(n301), .A2(n113), .Z(n86) );
  CKXOR2D0 U275 ( .A1(n301), .A2(n113), .Z(n87) );
  AN2D0 U276 ( .A1(n302), .A2(n112), .Z(n84) );
  CKXOR2D0 U277 ( .A1(n302), .A2(n112), .Z(n85) );
  AN2D0 U278 ( .A1(n303), .A2(n111), .Z(n82) );
  CKXOR2D0 U279 ( .A1(n303), .A2(n111), .Z(n83) );
  AN2D0 U280 ( .A1(n304), .A2(n110), .Z(n80) );
  CKXOR2D0 U281 ( .A1(n304), .A2(n110), .Z(n81) );
  AN2D0 U282 ( .A1(n305), .A2(n109), .Z(n78) );
  CKXOR2D0 U283 ( .A1(n305), .A2(n109), .Z(n79) );
  AN2D0 U284 ( .A1(n306), .A2(n108), .Z(n76) );
  CKXOR2D0 U285 ( .A1(n306), .A2(n108), .Z(n77) );
  AN2D0 U286 ( .A1(n307), .A2(n107), .Z(n74) );
  CKXOR2D0 U287 ( .A1(n307), .A2(n107), .Z(n75) );
  AN2D0 U288 ( .A1(n308), .A2(n106), .Z(n72) );
  CKXOR2D0 U289 ( .A1(n308), .A2(n106), .Z(n73) );
  AN2D0 U290 ( .A1(n309), .A2(n105), .Z(n70) );
  CKXOR2D0 U291 ( .A1(n309), .A2(n105), .Z(n71) );
  AN2D0 U292 ( .A1(n310), .A2(n104), .Z(n68) );
  CKXOR2D0 U293 ( .A1(n310), .A2(n104), .Z(n69) );
  AN2D0 U294 ( .A1(n311), .A2(n103), .Z(n66) );
  CKXOR2D0 U295 ( .A1(n311), .A2(n103), .Z(n67) );
  AN2D0 U296 ( .A1(n312), .A2(n102), .Z(n64) );
  CKXOR2D0 U297 ( .A1(n312), .A2(n102), .Z(n65) );
  AN2D0 U298 ( .A1(n313), .A2(n101), .Z(n62) );
  CKXOR2D0 U299 ( .A1(n313), .A2(n101), .Z(n63) );
  AN2D0 U300 ( .A1(n314), .A2(n100), .Z(n60) );
  CKXOR2D0 U301 ( .A1(n314), .A2(n100), .Z(n61) );
  AN2D0 U302 ( .A1(n315), .A2(n99), .Z(n58) );
  CKXOR2D0 U303 ( .A1(n315), .A2(n99), .Z(n59) );
  AN2D0 U304 ( .A1(n316), .A2(n98), .Z(n56) );
  CKXOR2D0 U305 ( .A1(n316), .A2(n98), .Z(n57) );
  AN2D0 U306 ( .A1(n317), .A2(n97), .Z(n54) );
  CKXOR2D0 U307 ( .A1(n317), .A2(n97), .Z(n55) );
  OR2D0 U308 ( .A1(n321), .A2(n318), .Z(n51) );
  XNR2D0 U309 ( .A1(n321), .A2(n318), .ZN(n52) );
  CKND0 U310 ( .I(n17), .ZN(product[27]) );
  OAI22D0 U311 ( .A1(n320), .A2(n337), .B1(b[3]), .B2(n336), .ZN(n99) );
  OAI22D0 U312 ( .A1(n336), .A2(n320), .B1(b[3]), .B2(n335), .ZN(n98) );
  OAI22D0 U313 ( .A1(n320), .A2(n335), .B1(b[3]), .B2(n334), .ZN(n97) );
  OAI22D0 U314 ( .A1(n320), .A2(n333), .B1(b[3]), .B2(n344), .ZN(n96) );
  OAI22D0 U315 ( .A1(n320), .A2(n344), .B1(b[3]), .B2(n343), .ZN(n95) );
  OAI22D0 U316 ( .A1(n320), .A2(n334), .B1(b[3]), .B2(n333), .ZN(n49) );
  OAI22D0 U317 ( .A1(n320), .A2(n343), .B1(b[3]), .B2(n342), .ZN(n43) );
  XNR2D0 U319 ( .A1(b[3]), .A2(n342), .ZN(n116) );
  NR2D0 U320 ( .A1(b[3]), .A2(n345), .ZN(n114) );
  OAI22D0 U321 ( .A1(n320), .A2(n345), .B1(b[3]), .B2(n324), .ZN(n113) );
  OAI22D0 U322 ( .A1(n320), .A2(n324), .B1(b[3]), .B2(n332), .ZN(n112) );
  OAI22D0 U323 ( .A1(n320), .A2(n332), .B1(b[3]), .B2(n331), .ZN(n111) );
  OAI22D0 U324 ( .A1(n320), .A2(n331), .B1(b[3]), .B2(n330), .ZN(n110) );
  OAI22D0 U325 ( .A1(n320), .A2(n330), .B1(b[3]), .B2(n329), .ZN(n109) );
  OAI22D0 U326 ( .A1(n320), .A2(n329), .B1(b[3]), .B2(n328), .ZN(n108) );
  OAI22D0 U327 ( .A1(n320), .A2(n328), .B1(b[3]), .B2(n327), .ZN(n107) );
  OAI22D0 U328 ( .A1(n320), .A2(n327), .B1(b[3]), .B2(n326), .ZN(n106) );
  OAI22D0 U329 ( .A1(n320), .A2(n326), .B1(b[3]), .B2(n325), .ZN(n105) );
  OAI22D0 U330 ( .A1(n320), .A2(n325), .B1(b[3]), .B2(n341), .ZN(n104) );
  OAI22D0 U331 ( .A1(n320), .A2(n341), .B1(b[3]), .B2(n340), .ZN(n103) );
  OAI22D0 U332 ( .A1(n320), .A2(n340), .B1(b[3]), .B2(n339), .ZN(n102) );
  OAI22D0 U333 ( .A1(n320), .A2(n339), .B1(b[3]), .B2(n338), .ZN(n101) );
  OAI22D0 U334 ( .A1(n320), .A2(n338), .B1(b[3]), .B2(n337), .ZN(n100) );
  CKND0 U222 ( .I(a[1]), .ZN(n348) );
  AN3D0 U226 ( .A1(n348), .A2(n345), .A3(b[3]), .Z(n40) );
  XNR2D0 U227 ( .A1(a[2]), .A2(n320), .ZN(n300) );
  CKND0 U270 ( .I(b[3]), .ZN(n320) );
endmodule


module oadm_fixed_plane_centered_LEVEL1_DW01_sub_3 ( A, B, CI, DIFF, CO );
  input [27:0] A;
  input [27:0] B;
  output [27:0] DIFF;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24;
  wire   [27:1] carry;

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
  FA1D0 U2_19 ( .A(A[19]), .B(n6), .CI(carry[19]), .CO(carry[20]), .S(DIFF[19]) );
  FA1D0 U2_4 ( .A(A[4]), .B(n21), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FA1D0 U2_5 ( .A(A[5]), .B(n20), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  FA1D0 U2_3 ( .A(A[3]), .B(n22), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  FA1D0 U2_22 ( .A(A[22]), .B(n3), .CI(carry[22]), .CO(carry[23]), .S(DIFF[22]) );
  FA1D0 U2_1 ( .A(A[1]), .B(n24), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  FA1D0 U2_20 ( .A(A[20]), .B(n5), .CI(carry[20]), .CO(carry[21]), .S(DIFF[20]) );
  FA1D0 U2_24 ( .A(A[24]), .B(n2), .CI(carry[24]), .CO(carry[25]), .S(DIFF[24]) );
  FA1D0 U2_21 ( .A(A[21]), .B(n4), .CI(carry[21]), .CO(carry[22]), .S(DIFF[21]) );
  FA1D0 U2_2 ( .A(A[2]), .B(n23), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  FA1D0 U2_23 ( .A(A[23]), .B(n2), .CI(carry[23]), .CO(carry[24]), .S(DIFF[23]) );
  XOR3D1 U2_27 ( .A1(A[27]), .A2(n2), .A3(carry[27]), .Z(DIFF[27]) );
  FA1D0 U2_26 ( .A(A[26]), .B(n2), .CI(carry[26]), .CO(carry[27]), .S(DIFF[26]) );
  FA1D0 U2_25 ( .A(A[25]), .B(n2), .CI(carry[25]), .CO(carry[26]), .S(DIFF[25]) );
  INVD1 U1 ( .I(B[27]), .ZN(n2) );
  INVD1 U2 ( .I(B[2]), .ZN(n23) );
  INVD1 U3 ( .I(B[21]), .ZN(n4) );
  INVD1 U4 ( .I(B[20]), .ZN(n5) );
  INVD1 U5 ( .I(B[1]), .ZN(n24) );
  INVD1 U7 ( .I(B[22]), .ZN(n3) );
  INVD1 U8 ( .I(B[3]), .ZN(n22) );
  INVD1 U10 ( .I(B[5]), .ZN(n20) );
  INVD1 U11 ( .I(B[4]), .ZN(n21) );
  INVD1 U12 ( .I(B[19]), .ZN(n6) );
  INVD1 U13 ( .I(B[6]), .ZN(n19) );
  INVD1 U14 ( .I(B[7]), .ZN(n18) );
  INVD1 U15 ( .I(B[8]), .ZN(n17) );
  INVD1 U16 ( .I(B[9]), .ZN(n16) );
  INVD1 U17 ( .I(B[10]), .ZN(n15) );
  INVD1 U18 ( .I(B[11]), .ZN(n14) );
  INVD1 U19 ( .I(B[12]), .ZN(n13) );
  INVD1 U20 ( .I(B[13]), .ZN(n12) );
  INVD1 U21 ( .I(B[14]), .ZN(n11) );
  INVD1 U22 ( .I(B[15]), .ZN(n10) );
  INVD1 U23 ( .I(B[16]), .ZN(n9) );
  INVD1 U24 ( .I(B[17]), .ZN(n8) );
  INVD1 U25 ( .I(B[18]), .ZN(n7) );
  IND2D0 U6 ( .A1(A[0]), .B1(B[0]), .ZN(carry[1]) );
  CKXOR2D0 U9 ( .A1(A[0]), .A2(B[0]), .Z(DIFF[0]) );
endmodule


module oadm_fixed_plane_centered_LEVEL1_DW01_add_5_DW01_add_7 ( A, B, CI, SUM, 
        CO );
  input [27:0] A;
  input [27:0] B;
  output [27:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [27:2] carry;

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
  FA1D0 U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  FA1D0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1D0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1D0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1D0 U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  FA1D0 U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  FA1D0 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  FA1D0 U1_24 ( .A(A[24]), .B(B[24]), .CI(carry[24]), .CO(carry[25]), .S(
        SUM[24]) );
  FA1D0 U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  FA1D0 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA1D0 U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  XOR3D1 U1_27 ( .A1(A[27]), .A2(B[27]), .A3(carry[27]), .Z(SUM[27]) );
  FA1D0 U1_25 ( .A(A[25]), .B(B[25]), .CI(carry[25]), .CO(carry[26]), .S(
        SUM[25]) );
  FA1D0 U1_26 ( .A(A[26]), .B(B[26]), .CI(carry[26]), .CO(carry[27]), .S(
        SUM[26]) );
  AN2XD1 U1 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
  CKXOR2D1 U2 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
endmodule


module oadm_fixed_plane_centered_LEVEL1_DW_mult_tc_0 ( a, b, product );
  input [21:0] a;
  input [5:0] b;
  output [27:0] product;
  wire   n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n43, n45, n46, n47,
         n48, n49, n51, n52, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n116, n300, n301, n302, n303,
         n304, n305, n306, n307, n308, n309, n310, n311, n312, n313, n314,
         n315, n316, n317, n318, n320, n321, n322, n323, n324, n325, n326,
         n327, n328, n329, n330, n331, n332, n333, n334, n335, n336, n337,
         n338, n339, n340, n341, n342, n343, n344, n345, n348;

  FA1D0 U18 ( .A(n342), .B(n43), .CI(n18), .CO(n17), .S(product[26]) );
  FA1D0 U19 ( .A(n45), .B(n341), .CI(n19), .CO(n18), .S(product[25]) );
  FA1D0 U20 ( .A(n47), .B(n46), .CI(n20), .CO(n19), .S(product[24]) );
  FA1D0 U21 ( .A(n51), .B(n48), .CI(n21), .CO(n20), .S(product[23]) );
  FA1D0 U22 ( .A(n52), .B(n54), .CI(n22), .CO(n21), .S(product[22]) );
  FA1D0 U23 ( .A(n56), .B(n55), .CI(n23), .CO(n22), .S(product[21]) );
  FA1D0 U24 ( .A(n58), .B(n57), .CI(n24), .CO(n23), .S(product[20]) );
  FA1D0 U25 ( .A(n60), .B(n59), .CI(n25), .CO(n24), .S(product[19]) );
  FA1D0 U26 ( .A(n62), .B(n61), .CI(n26), .CO(n25), .S(product[18]) );
  FA1D0 U27 ( .A(n64), .B(n63), .CI(n27), .CO(n26), .S(product[17]) );
  FA1D0 U28 ( .A(n66), .B(n65), .CI(n28), .CO(n27), .S(product[16]) );
  FA1D0 U29 ( .A(n68), .B(n67), .CI(n29), .CO(n28), .S(product[15]) );
  FA1D0 U30 ( .A(n70), .B(n69), .CI(n30), .CO(n29), .S(product[14]) );
  FA1D0 U31 ( .A(n72), .B(n71), .CI(n31), .CO(n30), .S(product[13]) );
  FA1D0 U32 ( .A(n74), .B(n73), .CI(n32), .CO(n31), .S(product[12]) );
  FA1D0 U33 ( .A(n76), .B(n75), .CI(n33), .CO(n32), .S(product[11]) );
  FA1D0 U34 ( .A(n78), .B(n77), .CI(n34), .CO(n33), .S(product[10]) );
  FA1D0 U35 ( .A(n80), .B(n79), .CI(n35), .CO(n34), .S(product[9]) );
  FA1D0 U36 ( .A(n82), .B(n81), .CI(n36), .CO(n35), .S(product[8]) );
  FA1D0 U37 ( .A(n84), .B(n83), .CI(n37), .CO(n36), .S(product[7]) );
  FA1D0 U38 ( .A(n86), .B(n85), .CI(n38), .CO(n37), .S(product[6]) );
  FA1D0 U39 ( .A(n88), .B(n87), .CI(n39), .CO(n38), .S(product[5]) );
  FA1D0 U45 ( .A(n95), .B(n49), .CI(n340), .CO(n45), .S(n46) );
  FA1D0 U46 ( .A(n116), .B(n96), .CI(n330), .CO(n47), .S(n48) );
  INVD1 U223 ( .I(n43), .ZN(n341) );
  INVD1 U225 ( .I(n49), .ZN(n330) );
  INVD1 U226 ( .I(n116), .ZN(n340) );
  CKXOR2D1 U228 ( .A1(b[3]), .A2(a[3]), .Z(n301) );
  CKXOR2D1 U229 ( .A1(b[3]), .A2(a[4]), .Z(n302) );
  CKXOR2D1 U230 ( .A1(b[3]), .A2(a[5]), .Z(n303) );
  INVD1 U231 ( .I(a[0]), .ZN(n345) );
  INVD1 U232 ( .I(a[1]), .ZN(n321) );
  CKXOR2D1 U233 ( .A1(b[3]), .A2(a[6]), .Z(n304) );
  INVD1 U234 ( .I(a[2]), .ZN(n329) );
  CKXOR2D1 U235 ( .A1(b[3]), .A2(a[7]), .Z(n305) );
  INVD1 U236 ( .I(a[3]), .ZN(n328) );
  CKXOR2D1 U237 ( .A1(b[3]), .A2(a[8]), .Z(n306) );
  CKXOR2D1 U238 ( .A1(b[3]), .A2(a[9]), .Z(n307) );
  INVD1 U239 ( .I(a[4]), .ZN(n327) );
  CKXOR2D1 U240 ( .A1(b[3]), .A2(a[10]), .Z(n308) );
  INVD1 U241 ( .I(a[5]), .ZN(n326) );
  CKXOR2D1 U242 ( .A1(b[3]), .A2(a[11]), .Z(n309) );
  INVD1 U243 ( .I(a[6]), .ZN(n325) );
  CKXOR2D1 U244 ( .A1(b[3]), .A2(a[12]), .Z(n310) );
  INVD1 U245 ( .I(a[7]), .ZN(n324) );
  CKXOR2D1 U246 ( .A1(b[3]), .A2(a[13]), .Z(n311) );
  INVD1 U247 ( .I(a[8]), .ZN(n323) );
  CKXOR2D1 U248 ( .A1(b[3]), .A2(a[14]), .Z(n312) );
  INVD1 U249 ( .I(a[9]), .ZN(n322) );
  CKXOR2D1 U250 ( .A1(b[3]), .A2(a[15]), .Z(n313) );
  INVD1 U251 ( .I(a[10]), .ZN(n339) );
  CKXOR2D1 U252 ( .A1(b[3]), .A2(a[16]), .Z(n314) );
  INVD1 U253 ( .I(a[11]), .ZN(n338) );
  CKXOR2D1 U254 ( .A1(b[3]), .A2(a[17]), .Z(n315) );
  INVD1 U255 ( .I(a[12]), .ZN(n337) );
  CKXOR2D1 U256 ( .A1(b[3]), .A2(a[18]), .Z(n316) );
  INVD1 U257 ( .I(a[13]), .ZN(n336) );
  CKXOR2D1 U258 ( .A1(b[3]), .A2(a[19]), .Z(n317) );
  INVD1 U259 ( .I(a[14]), .ZN(n335) );
  CKXOR2D1 U260 ( .A1(b[3]), .A2(a[20]), .Z(n318) );
  INVD1 U261 ( .I(a[15]), .ZN(n334) );
  INVD1 U262 ( .I(a[16]), .ZN(n333) );
  INVD1 U263 ( .I(a[17]), .ZN(n332) );
  INVD1 U264 ( .I(a[18]), .ZN(n331) );
  INVD1 U265 ( .I(a[21]), .ZN(n342) );
  INVD1 U266 ( .I(a[19]), .ZN(n344) );
  INVD1 U267 ( .I(a[20]), .ZN(n343) );
  AN2D0 U268 ( .A1(n40), .A2(n89), .Z(n39) );
  CKXOR2D0 U269 ( .A1(n40), .A2(n89), .Z(product[4]) );
  AN2D0 U272 ( .A1(n300), .A2(n114), .Z(n88) );
  CKXOR2D0 U273 ( .A1(n300), .A2(n114), .Z(n89) );
  AN2D0 U274 ( .A1(n301), .A2(n113), .Z(n86) );
  CKXOR2D0 U275 ( .A1(n301), .A2(n113), .Z(n87) );
  AN2D0 U276 ( .A1(n302), .A2(n112), .Z(n84) );
  CKXOR2D0 U277 ( .A1(n302), .A2(n112), .Z(n85) );
  AN2D0 U278 ( .A1(n303), .A2(n111), .Z(n82) );
  CKXOR2D0 U279 ( .A1(n303), .A2(n111), .Z(n83) );
  AN2D0 U280 ( .A1(n304), .A2(n110), .Z(n80) );
  CKXOR2D0 U281 ( .A1(n304), .A2(n110), .Z(n81) );
  AN2D0 U282 ( .A1(n305), .A2(n109), .Z(n78) );
  CKXOR2D0 U283 ( .A1(n305), .A2(n109), .Z(n79) );
  AN2D0 U284 ( .A1(n306), .A2(n108), .Z(n76) );
  CKXOR2D0 U285 ( .A1(n306), .A2(n108), .Z(n77) );
  AN2D0 U286 ( .A1(n307), .A2(n107), .Z(n74) );
  CKXOR2D0 U287 ( .A1(n307), .A2(n107), .Z(n75) );
  AN2D0 U288 ( .A1(n308), .A2(n106), .Z(n72) );
  CKXOR2D0 U289 ( .A1(n308), .A2(n106), .Z(n73) );
  AN2D0 U290 ( .A1(n309), .A2(n105), .Z(n70) );
  CKXOR2D0 U291 ( .A1(n309), .A2(n105), .Z(n71) );
  AN2D0 U292 ( .A1(n310), .A2(n104), .Z(n68) );
  CKXOR2D0 U293 ( .A1(n310), .A2(n104), .Z(n69) );
  AN2D0 U294 ( .A1(n311), .A2(n103), .Z(n66) );
  CKXOR2D0 U295 ( .A1(n311), .A2(n103), .Z(n67) );
  AN2D0 U296 ( .A1(n312), .A2(n102), .Z(n64) );
  CKXOR2D0 U297 ( .A1(n312), .A2(n102), .Z(n65) );
  AN2D0 U298 ( .A1(n313), .A2(n101), .Z(n62) );
  CKXOR2D0 U299 ( .A1(n313), .A2(n101), .Z(n63) );
  AN2D0 U300 ( .A1(n314), .A2(n100), .Z(n60) );
  CKXOR2D0 U301 ( .A1(n314), .A2(n100), .Z(n61) );
  AN2D0 U302 ( .A1(n315), .A2(n99), .Z(n58) );
  CKXOR2D0 U303 ( .A1(n315), .A2(n99), .Z(n59) );
  AN2D0 U304 ( .A1(n316), .A2(n98), .Z(n56) );
  CKXOR2D0 U305 ( .A1(n316), .A2(n98), .Z(n57) );
  AN2D0 U306 ( .A1(n317), .A2(n97), .Z(n54) );
  CKXOR2D0 U307 ( .A1(n317), .A2(n97), .Z(n55) );
  OR2D0 U308 ( .A1(n330), .A2(n318), .Z(n51) );
  XNR2D0 U309 ( .A1(n330), .A2(n318), .ZN(n52) );
  CKND0 U310 ( .I(n17), .ZN(product[27]) );
  OAI22D0 U311 ( .A1(n320), .A2(n335), .B1(b[3]), .B2(n334), .ZN(n99) );
  OAI22D0 U312 ( .A1(n334), .A2(n320), .B1(b[3]), .B2(n333), .ZN(n98) );
  OAI22D0 U313 ( .A1(n320), .A2(n333), .B1(b[3]), .B2(n332), .ZN(n97) );
  OAI22D0 U314 ( .A1(n320), .A2(n331), .B1(b[3]), .B2(n344), .ZN(n96) );
  OAI22D0 U315 ( .A1(n320), .A2(n344), .B1(b[3]), .B2(n343), .ZN(n95) );
  OAI22D0 U316 ( .A1(n320), .A2(n332), .B1(b[3]), .B2(n331), .ZN(n49) );
  OAI22D0 U317 ( .A1(n320), .A2(n343), .B1(b[3]), .B2(n342), .ZN(n43) );
  XNR2D0 U319 ( .A1(b[3]), .A2(n342), .ZN(n116) );
  NR2D0 U320 ( .A1(b[3]), .A2(n345), .ZN(n114) );
  OAI22D0 U321 ( .A1(n320), .A2(n345), .B1(b[3]), .B2(n321), .ZN(n113) );
  OAI22D0 U322 ( .A1(n320), .A2(n321), .B1(b[3]), .B2(n329), .ZN(n112) );
  OAI22D0 U323 ( .A1(n320), .A2(n329), .B1(b[3]), .B2(n328), .ZN(n111) );
  OAI22D0 U324 ( .A1(n320), .A2(n328), .B1(b[3]), .B2(n327), .ZN(n110) );
  OAI22D0 U325 ( .A1(n320), .A2(n327), .B1(b[3]), .B2(n326), .ZN(n109) );
  OAI22D0 U326 ( .A1(n320), .A2(n326), .B1(b[3]), .B2(n325), .ZN(n108) );
  OAI22D0 U327 ( .A1(n320), .A2(n325), .B1(b[3]), .B2(n324), .ZN(n107) );
  OAI22D0 U328 ( .A1(n320), .A2(n324), .B1(b[3]), .B2(n323), .ZN(n106) );
  OAI22D0 U329 ( .A1(n320), .A2(n323), .B1(b[3]), .B2(n322), .ZN(n105) );
  OAI22D0 U330 ( .A1(n320), .A2(n322), .B1(b[3]), .B2(n339), .ZN(n104) );
  OAI22D0 U331 ( .A1(n320), .A2(n339), .B1(b[3]), .B2(n338), .ZN(n103) );
  OAI22D0 U332 ( .A1(n320), .A2(n338), .B1(b[3]), .B2(n337), .ZN(n102) );
  OAI22D0 U333 ( .A1(n320), .A2(n337), .B1(b[3]), .B2(n336), .ZN(n101) );
  OAI22D0 U334 ( .A1(n320), .A2(n336), .B1(b[3]), .B2(n335), .ZN(n100) );
  CKND0 U222 ( .I(a[1]), .ZN(n348) );
  AN3D0 U224 ( .A1(n348), .A2(n345), .A3(b[3]), .Z(n40) );
  XNR2D0 U227 ( .A1(a[2]), .A2(n320), .ZN(n300) );
  CKND0 U270 ( .I(b[3]), .ZN(n320) );
endmodule


module oadm_fixed_plane_centered_LEVEL1 ( x_mantissa, y_mantissa, divide_mode, 
        plane_exact );
  input [23:0] x_mantissa;
  input [23:0] y_mantissa;
  output [28:0] plane_exact;
  input divide_mode;
  wire   x_residual_wide_21_, y_residual_wide_21_, x_rounding_error_0_,
         y_side_x_error_0_, y_rounding_error_0_, N22, N23, N24, N25, N26, N27,
         N28, N29, N30, N31, N32, N33, N34, N35, N36, N37, N38, N39, N40, N41,
         N42, N43, N44, N45, N46, N47, N48, N49, N50, N51, N52, N53, N54, N55,
         N56, N57, N58, N59, N60, N61, N62, N63, N64, N65, N66, N67, N68, N69,
         N70, N71, N72, N73, N74, N75, N76, N104, N105, N106, N107, N108, N109,
         N110, N111, N112, N113, N114, N115, N116, N117, N118, N119, N120,
         N121, N122, N123, N124, N125, N126, N127, N128, N129, N130, N131,
         n430, y_residual_product_9_, y_residual_product_8_,
         y_residual_product_7_, y_residual_product_6_, y_residual_product_5_,
         y_residual_product_4_, y_residual_product_27_, y_residual_product_26_,
         y_residual_product_25_, y_residual_product_24_,
         y_residual_product_23_, y_residual_product_22_,
         y_residual_product_21_, y_residual_product_20_,
         y_residual_product_19_, y_residual_product_18_,
         y_residual_product_17_, y_residual_product_16_,
         y_residual_product_15_, y_residual_product_14_,
         y_residual_product_13_, y_residual_product_12_,
         y_residual_product_11_, y_residual_product_10_,
         x_residual_product_27_, x_residual_product_26_,
         x_residual_product_25_, x_residual_product_24_,
         x_residual_product_23_, N15, add_0_root_add_0_root_add_44_2_carry_8_,
         n3, n4, n6, n7, n9, n13, n14;
  wire   [9:5] midpoint_product;
  wire   [1:0] correction;
  wire   [28:0] centered_plane;
  wire   [25:21] r432_carry;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12;

  XNR2D1 U20 ( .A1(n430), .A2(x_rounding_error_0_), .ZN(correction[0]) );
  oadm_multilevel_rounding_lut_0 x_rounding_lut ( .level({1'b0, 1'b0}), 
        .index({n9, y_mantissa[21:20]}), .value_low(x_mantissa[3:0]), 
        .x_error({SYNOPSYS_UNCONNECTED__0, x_rounding_error_0_}) );
  oadm_multilevel_rounding_lut_1 y_rounding_lut ( .level({1'b0, 1'b0}), 
        .index(x_mantissa[22:20]), .value_low(y_mantissa[3:0]), .x_error({
        SYNOPSYS_UNCONNECTED__1, y_side_x_error_0_}), .y_error({
        SYNOPSYS_UNCONNECTED__2, y_rounding_error_0_}) );
  oadm_fixed_plane_centered_LEVEL1_DW01_sub_0 sub_70 ( .A({centered_plane[28], 
        centered_plane[28], centered_plane[26:0]}), .B({n13, n13, n13, n13, 
        n13, n13, n13, n13, n13, n13, n13, n13, n13, n13, n13, n13, n13, n13, 
        n13, n13, n13, n13, n13, n13, n13, n13, 1'b0, correction}), .CI(n13), 
        .DIFF({SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        plane_exact[26:0]}) );
  oadm_fixed_plane_centered_LEVEL1_DW_mult_tc_1 mult_33 ( .a({
        y_residual_wide_21_, y_mantissa[20:0]}), .b({n13, n14, x_mantissa[22], 
        n14, n13, n13}), .product({y_residual_product_27_, 
        y_residual_product_26_, y_residual_product_25_, y_residual_product_24_, 
        y_residual_product_23_, y_residual_product_22_, y_residual_product_21_, 
        y_residual_product_20_, y_residual_product_19_, y_residual_product_18_, 
        y_residual_product_17_, y_residual_product_16_, y_residual_product_15_, 
        y_residual_product_14_, y_residual_product_13_, y_residual_product_12_, 
        y_residual_product_11_, y_residual_product_10_, y_residual_product_9_, 
        y_residual_product_8_, y_residual_product_7_, y_residual_product_6_, 
        y_residual_product_5_, y_residual_product_4_, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8}) );
  oadm_fixed_plane_centered_LEVEL1_DW01_sub_3 sub_0_root_sub_67 ( .A({N48, N48, 
        N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35, N34, 
        N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22}), .B({
        y_residual_product_27_, y_residual_product_27_, y_residual_product_27_, 
        y_residual_product_27_, y_residual_product_27_, y_residual_product_26_, 
        y_residual_product_25_, y_residual_product_24_, y_residual_product_23_, 
        y_residual_product_22_, y_residual_product_21_, y_residual_product_20_, 
        y_residual_product_19_, y_residual_product_18_, y_residual_product_17_, 
        y_residual_product_16_, y_residual_product_15_, y_residual_product_14_, 
        y_residual_product_13_, y_residual_product_12_, y_residual_product_11_, 
        y_residual_product_10_, y_residual_product_9_, y_residual_product_8_, 
        y_residual_product_7_, y_residual_product_6_, y_residual_product_5_, 
        y_residual_product_4_}), .CI(n13), .DIFF({N76, N75, N74, N73, N72, N71, 
        N70, N69, N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, 
        N56, N55, N54, N53, N52, N51, N50, N49}) );
  oadm_fixed_plane_centered_LEVEL1_DW01_add_5_DW01_add_7 add_0_root_add_67_3 ( 
        .A({y_residual_product_27_, y_residual_product_27_, 
        y_residual_product_27_, y_residual_product_27_, y_residual_product_27_, 
        y_residual_product_26_, y_residual_product_25_, y_residual_product_24_, 
        y_residual_product_23_, y_residual_product_22_, y_residual_product_21_, 
        y_residual_product_20_, y_residual_product_19_, y_residual_product_18_, 
        y_residual_product_17_, y_residual_product_16_, y_residual_product_15_, 
        y_residual_product_14_, y_residual_product_13_, y_residual_product_12_, 
        y_residual_product_11_, y_residual_product_10_, y_residual_product_9_, 
        y_residual_product_8_, y_residual_product_7_, y_residual_product_6_, 
        y_residual_product_5_, y_residual_product_4_}), .B({N48, N48, N47, N46, 
        N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35, N34, N33, N32, 
        N31, N30, N29, N28, N27, N26, N25, N24, N23, N22}), .CI(n13), .SUM({
        N131, N130, N129, N128, N127, N126, N125, N124, N123, N122, N121, N120, 
        N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, N109, N108, 
        N107, N106, N105, N104}) );
  oadm_fixed_plane_centered_LEVEL1_DW_mult_tc_0 mult_31 ( .a({
        x_residual_wide_21_, x_mantissa[20:0]}), .b({n13, n14, n9, n14, n13, 
        n13}), .product({x_residual_product_27_, x_residual_product_26_, 
        x_residual_product_25_, x_residual_product_24_, x_residual_product_23_, 
        N40, N39, N38, N37, N36, N35, N34, N33, N32, N31, N30, N29, N28, N27, 
        N26, N25, N24, N23, N22, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12}) );
  AO22D0 U4 ( .A1(N75), .A2(n6), .B1(N130), .B2(n7), .Z(centered_plane[26]) );
  AO22D0 U5 ( .A1(N74), .A2(n6), .B1(N129), .B2(n7), .Z(centered_plane[25]) );
  INVD1 U6 ( .I(n7), .ZN(n6) );
  AO22D0 U7 ( .A1(N76), .A2(n6), .B1(N131), .B2(n7), .Z(centered_plane[28]) );
  AO22D0 U8 ( .A1(N72), .A2(divide_mode), .B1(N127), .B2(n7), .Z(
        centered_plane[23]) );
  AO22D0 U9 ( .A1(N70), .A2(divide_mode), .B1(N125), .B2(n7), .Z(
        centered_plane[21]) );
  AO22D0 U10 ( .A1(N73), .A2(divide_mode), .B1(N128), .B2(n7), .Z(
        centered_plane[24]) );
  AO22D0 U11 ( .A1(N69), .A2(divide_mode), .B1(N124), .B2(n7), .Z(
        centered_plane[20]) );
  AO22D0 U12 ( .A1(N71), .A2(divide_mode), .B1(N126), .B2(n7), .Z(
        centered_plane[22]) );
  AO22D0 U13 ( .A1(N52), .A2(n6), .B1(N107), .B2(n7), .Z(centered_plane[3]) );
  AO22D0 U14 ( .A1(N54), .A2(n6), .B1(N109), .B2(n7), .Z(centered_plane[5]) );
  AO22D0 U15 ( .A1(N68), .A2(divide_mode), .B1(N123), .B2(n7), .Z(
        centered_plane[19]) );
  AO22D0 U17 ( .A1(N53), .A2(n6), .B1(N108), .B2(n7), .Z(centered_plane[4]) );
  AO22D0 U19 ( .A1(N65), .A2(n6), .B1(N120), .B2(n7), .Z(centered_plane[16])
         );
  AO22D0 U21 ( .A1(N66), .A2(n6), .B1(N121), .B2(n7), .Z(centered_plane[17])
         );
  AO22D0 U22 ( .A1(N67), .A2(n6), .B1(N122), .B2(n7), .Z(centered_plane[18])
         );
  AO22D0 U23 ( .A1(N55), .A2(n6), .B1(N110), .B2(n7), .Z(centered_plane[6]) );
  AO22D0 U24 ( .A1(N56), .A2(n6), .B1(N111), .B2(n7), .Z(centered_plane[7]) );
  AO22D0 U25 ( .A1(N57), .A2(n6), .B1(N112), .B2(n7), .Z(centered_plane[8]) );
  AO22D0 U26 ( .A1(N58), .A2(n6), .B1(N113), .B2(n7), .Z(centered_plane[9]) );
  AO22D0 U27 ( .A1(N59), .A2(n6), .B1(N114), .B2(n7), .Z(centered_plane[10])
         );
  AO22D0 U28 ( .A1(N60), .A2(n6), .B1(N115), .B2(n7), .Z(centered_plane[11])
         );
  AO22D0 U29 ( .A1(N61), .A2(n6), .B1(N116), .B2(n7), .Z(centered_plane[12])
         );
  AO22D0 U30 ( .A1(N62), .A2(n6), .B1(N117), .B2(n7), .Z(centered_plane[13])
         );
  AO22D0 U31 ( .A1(N63), .A2(n6), .B1(N118), .B2(n7), .Z(centered_plane[14])
         );
  AO22D0 U32 ( .A1(N64), .A2(n6), .B1(N119), .B2(n7), .Z(centered_plane[15])
         );
  AO22D0 U33 ( .A1(N50), .A2(n6), .B1(N105), .B2(n7), .Z(centered_plane[1]) );
  AO22D0 U36 ( .A1(N49), .A2(n6), .B1(N104), .B2(n7), .Z(centered_plane[0]) );
  INVD1 U37 ( .I(x_residual_product_23_), .ZN(N41) );
  INVD1 U39 ( .I(divide_mode), .ZN(n7) );
  FA1D0 U40 ( .A(midpoint_product[8]), .B(x_residual_product_27_), .CI(
        r432_carry[23]), .CO(r432_carry[24]), .S(N45) );
  CKBD1 U41 ( .I(y_mantissa[22]), .Z(n9) );
  AO22D0 U42 ( .A1(N51), .A2(n6), .B1(N106), .B2(n7), .Z(centered_plane[2]) );
  FA1D0 U44 ( .A(1'b0), .B(x_residual_product_25_), .CI(r432_carry[21]), .CO(
        r432_carry[22]), .S(N43) );
  FA1D0 U45 ( .A(midpoint_product[5]), .B(x_residual_product_24_), .CI(
        x_residual_product_23_), .CO(r432_carry[21]), .S(N42) );
  FA1D0 U46 ( .A(midpoint_product[9]), .B(x_residual_product_27_), .CI(
        r432_carry[24]), .CO(r432_carry[25]), .S(N46) );
  ND2D1 U47 ( .A1(n3), .A2(n4), .ZN(midpoint_product[9]) );
  FA1D0 U50 ( .A(midpoint_product[7]), .B(x_residual_product_26_), .CI(
        r432_carry[22]), .CO(r432_carry[23]), .S(N44) );
  AOI22D1 U56 ( .A1(y_rounding_error_0_), .A2(n6), .B1(y_side_x_error_0_), 
        .B2(n7), .ZN(n430) );
  INVD1 U57 ( .I(x_mantissa[21]), .ZN(x_residual_wide_21_) );
  INVD1 U58 ( .I(y_mantissa[21]), .ZN(y_residual_wide_21_) );
  TIEH U61 ( .Z(n14) );
  TIEL U62 ( .ZN(n13) );
  XNR2D1 U63 ( .A1(N15), .A2(midpoint_product[5]), .ZN(midpoint_product[7]) );
  XNR2D1 U64 ( .A1(add_0_root_add_0_root_add_44_2_carry_8_), .A2(N15), .ZN(
        midpoint_product[8]) );
  CKXOR2D1 U66 ( .A1(r432_carry[25]), .A2(x_residual_product_27_), .Z(N47) );
  CKXOR2D1 U68 ( .A1(n9), .A2(x_mantissa[22]), .Z(midpoint_product[5]) );
  INR2D0 U3 ( .A1(x_residual_product_27_), .B1(r432_carry[25]), .ZN(N48) );
  CKND0 U16 ( .I(n4), .ZN(N15) );
  CKND2D0 U18 ( .A1(x_mantissa[22]), .A2(n9), .ZN(n4) );
  CKND0 U34 ( .I(n3), .ZN(add_0_root_add_0_root_add_44_2_carry_8_) );
  NR2D0 U35 ( .A1(N15), .A2(midpoint_product[5]), .ZN(n3) );
  INR2D0 U43 ( .A1(x_rounding_error_0_), .B1(n430), .ZN(correction[1]) );
endmodule


module fp32_normal_finite_wrapper_DW01_add_3_DW01_add_11 ( A, B, CI, SUM, CO
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


module fp32_normal_finite_wrapper_DW01_add_1_DW01_add_9 ( A, B, CI, SUM, CO );
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
         N12, N11, N10, n1, n2, n35, n410, n51, n60, n70, n76, n77, n79;
  wire   [7:2] add_0_root_add_0_root_add_22_2_carry;
  wire   [7:2] add_0_root_add_0_root_add_25_2_carry;

  CKXOR2D1 U2 ( .A1(y[31]), .A2(x[31]), .Z(result[31]) );
  fp32_normal_finite_wrapper_DW01_add_3_DW01_add_11 add_1_root_add_0_root_add_25_2 ( 
        .A(x[30:23]), .B({N42, N41, N40, N39, N38, N37, N36, N11}), .CI(n79), 
        .SUM({N34, N33, N32, N31, N30, N29, N28, N27}) );
  fp32_normal_finite_wrapper_DW01_add_1_DW01_add_9 add_1_root_add_0_root_add_22_2 ( 
        .A(x[30:23]), .B({y[30], N17, N16, N15, N14, N13, N12, N11}), .CI(n79), 
        .SUM({N10, N9, N8, N7, N6, N5, N4, N3}) );
  AN2XD1 U3 ( .A1(exponent_adjust[0]), .A2(N3), .Z(n1) );
  AN2XD1 U4 ( .A1(exponent_adjust[0]), .A2(N27), .Z(n2) );
  INVD1 U5 ( .I(divide_mode), .ZN(n77) );
  CKBD1 U6 ( .I(result_fraction[22]), .Z(result[22]) );
  CKBD1 U7 ( .I(result_fraction[21]), .Z(result[21]) );
  CKBD1 U8 ( .I(result_fraction[3]), .Z(result[3]) );
  CKBD1 U9 ( .I(result_fraction[4]), .Z(result[4]) );
  CKBD1 U10 ( .I(result_fraction[5]), .Z(result[5]) );
  CKBD1 U11 ( .I(result_fraction[6]), .Z(result[6]) );
  CKBD1 U12 ( .I(result_fraction[7]), .Z(result[7]) );
  CKBD1 U13 ( .I(result_fraction[8]), .Z(result[8]) );
  CKBD1 U14 ( .I(result_fraction[9]), .Z(result[9]) );
  CKBD1 U15 ( .I(result_fraction[10]), .Z(result[10]) );
  CKBD1 U16 ( .I(result_fraction[11]), .Z(result[11]) );
  CKBD1 U17 ( .I(result_fraction[12]), .Z(result[12]) );
  CKBD1 U18 ( .I(result_fraction[13]), .Z(result[13]) );
  CKBD1 U19 ( .I(result_fraction[14]), .Z(result[14]) );
  CKBD1 U20 ( .I(result_fraction[15]), .Z(result[15]) );
  CKBD1 U21 ( .I(result_fraction[16]), .Z(result[16]) );
  CKBD1 U22 ( .I(result_fraction[17]), .Z(result[17]) );
  CKBD1 U23 ( .I(result_fraction[18]), .Z(result[18]) );
  CKBD1 U24 ( .I(result_fraction[19]), .Z(result[19]) );
  CKBD1 U25 ( .I(result_fraction[20]), .Z(result[20]) );
  CKBD1 U26 ( .I(result_fraction[2]), .Z(result[2]) );
  CKBD1 U27 ( .I(result_fraction[1]), .Z(result[1]) );
  CKBD1 U28 ( .I(result_fraction[0]), .Z(result[0]) );
  AO22D0 U29 ( .A1(N49), .A2(n77), .B1(N25), .B2(divide_mode), .Z(result[29])
         );
  AO22D0 U30 ( .A1(N48), .A2(n77), .B1(N24), .B2(divide_mode), .Z(result[28])
         );
  AO22D0 U31 ( .A1(N47), .A2(n77), .B1(N23), .B2(divide_mode), .Z(result[27])
         );
  AO22D0 U32 ( .A1(N46), .A2(n77), .B1(N22), .B2(divide_mode), .Z(result[26])
         );
  AO22D0 U33 ( .A1(N45), .A2(n77), .B1(N21), .B2(divide_mode), .Z(result[25])
         );
  AO22D0 U34 ( .A1(N44), .A2(n77), .B1(N20), .B2(divide_mode), .Z(result[24])
         );
  FA1D0 U35 ( .A(N4), .B(exponent_adjust[1]), .CI(n1), .CO(
        add_0_root_add_0_root_add_22_2_carry[2]), .S(N20) );
  FA1D0 U36 ( .A(N5), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[2]), .CO(
        add_0_root_add_0_root_add_22_2_carry[3]), .S(N21) );
  FA1D0 U37 ( .A(N6), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[3]), .CO(
        add_0_root_add_0_root_add_22_2_carry[4]), .S(N22) );
  FA1D0 U38 ( .A(N7), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[4]), .CO(
        add_0_root_add_0_root_add_22_2_carry[5]), .S(N23) );
  FA1D0 U39 ( .A(N8), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[5]), .CO(
        add_0_root_add_0_root_add_22_2_carry[6]), .S(N24) );
  FA1D0 U40 ( .A(N9), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[6]), .CO(
        add_0_root_add_0_root_add_22_2_carry[7]), .S(N25) );
  FA1D0 U41 ( .A(N28), .B(exponent_adjust[1]), .CI(n2), .CO(
        add_0_root_add_0_root_add_25_2_carry[2]), .S(N44) );
  FA1D0 U42 ( .A(N29), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[2]), .CO(
        add_0_root_add_0_root_add_25_2_carry[3]), .S(N45) );
  FA1D0 U43 ( .A(N30), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[3]), .CO(
        add_0_root_add_0_root_add_25_2_carry[4]), .S(N46) );
  FA1D0 U44 ( .A(N31), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[4]), .CO(
        add_0_root_add_0_root_add_25_2_carry[5]), .S(N47) );
  FA1D0 U45 ( .A(N32), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[5]), .CO(
        add_0_root_add_0_root_add_25_2_carry[6]), .S(N48) );
  FA1D0 U46 ( .A(N33), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[6]), .CO(
        add_0_root_add_0_root_add_25_2_carry[7]), .S(N49) );
  AO22D0 U47 ( .A1(N43), .A2(n77), .B1(N19), .B2(divide_mode), .Z(result[23])
         );
  CKBD1 U48 ( .I(y[22]), .Z(fraction_y[22]) );
  AO22D0 U49 ( .A1(N50), .A2(n77), .B1(divide_mode), .B2(N26), .Z(result[30])
         );
  XOR3D1 U50 ( .A1(N34), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_25_2_carry[7]), .Z(N50) );
  XOR3D1 U51 ( .A1(N10), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_22_2_carry[7]), .Z(N26) );
  CKBD1 U52 ( .I(x[22]), .Z(fraction_x[22]) );
  CKBD1 U53 ( .I(x[0]), .Z(fraction_x[0]) );
  CKBD1 U54 ( .I(y[1]), .Z(fraction_y[1]) );
  CKBD1 U55 ( .I(y[2]), .Z(fraction_y[2]) );
  CKBD1 U56 ( .I(y[0]), .Z(fraction_y[0]) );
  CKBD1 U57 ( .I(y[3]), .Z(fraction_y[3]) );
  CKBD1 U58 ( .I(y[4]), .Z(fraction_y[4]) );
  CKBD1 U59 ( .I(y[5]), .Z(fraction_y[5]) );
  CKBD1 U60 ( .I(y[6]), .Z(fraction_y[6]) );
  CKBD1 U61 ( .I(y[7]), .Z(fraction_y[7]) );
  CKBD1 U62 ( .I(y[8]), .Z(fraction_y[8]) );
  CKBD1 U63 ( .I(y[9]), .Z(fraction_y[9]) );
  CKBD1 U64 ( .I(y[10]), .Z(fraction_y[10]) );
  CKBD1 U65 ( .I(y[11]), .Z(fraction_y[11]) );
  CKBD1 U66 ( .I(y[12]), .Z(fraction_y[12]) );
  CKBD1 U67 ( .I(y[13]), .Z(fraction_y[13]) );
  CKBD1 U68 ( .I(y[14]), .Z(fraction_y[14]) );
  CKBD1 U69 ( .I(y[15]), .Z(fraction_y[15]) );
  CKBD1 U70 ( .I(y[16]), .Z(fraction_y[16]) );
  CKBD1 U71 ( .I(y[17]), .Z(fraction_y[17]) );
  CKBD1 U72 ( .I(y[18]), .Z(fraction_y[18]) );
  CKBD1 U73 ( .I(y[19]), .Z(fraction_y[19]) );
  AN2XD1 U74 ( .A1(y[23]), .A2(y[24]), .Z(n35) );
  INVD1 U75 ( .I(y[29]), .ZN(N17) );
  INVD0 U76 ( .I(y[24]), .ZN(N12) );
  INVD1 U77 ( .I(y[25]), .ZN(N13) );
  INVD1 U78 ( .I(y[26]), .ZN(N14) );
  INVD1 U79 ( .I(y[27]), .ZN(N15) );
  INVD1 U80 ( .I(y[28]), .ZN(N16) );
  AN2XD1 U81 ( .A1(n35), .A2(y[25]), .Z(n410) );
  AN2XD1 U82 ( .A1(n410), .A2(y[26]), .Z(n51) );
  AN2XD1 U83 ( .A1(n51), .A2(y[27]), .Z(n60) );
  AN2XD1 U84 ( .A1(n60), .A2(y[28]), .Z(n70) );
  CKXOR2D1 U85 ( .A1(y[30]), .A2(n76), .Z(N42) );
  ND2D1 U86 ( .A1(n70), .A2(y[29]), .ZN(n76) );
  CKBD1 U87 ( .I(x[21]), .Z(fraction_x[21]) );
  CKBD1 U88 ( .I(x[20]), .Z(fraction_x[20]) );
  CKBD1 U89 ( .I(x[19]), .Z(fraction_x[19]) );
  CKBD1 U90 ( .I(x[18]), .Z(fraction_x[18]) );
  CKBD1 U91 ( .I(x[17]), .Z(fraction_x[17]) );
  CKBD1 U92 ( .I(x[16]), .Z(fraction_x[16]) );
  CKBD1 U93 ( .I(x[15]), .Z(fraction_x[15]) );
  CKBD1 U94 ( .I(x[14]), .Z(fraction_x[14]) );
  CKBD1 U95 ( .I(x[13]), .Z(fraction_x[13]) );
  CKBD1 U96 ( .I(x[12]), .Z(fraction_x[12]) );
  CKBD1 U97 ( .I(x[11]), .Z(fraction_x[11]) );
  CKBD1 U98 ( .I(x[10]), .Z(fraction_x[10]) );
  CKBD1 U99 ( .I(x[9]), .Z(fraction_x[9]) );
  CKBD1 U100 ( .I(x[8]), .Z(fraction_x[8]) );
  CKBD1 U101 ( .I(x[7]), .Z(fraction_x[7]) );
  CKBD1 U102 ( .I(x[6]), .Z(fraction_x[6]) );
  CKBD1 U103 ( .I(x[5]), .Z(fraction_x[5]) );
  CKBD1 U104 ( .I(x[4]), .Z(fraction_x[4]) );
  CKBD1 U105 ( .I(x[3]), .Z(fraction_x[3]) );
  CKBD1 U106 ( .I(x[2]), .Z(fraction_x[2]) );
  CKBD1 U107 ( .I(x[1]), .Z(fraction_x[1]) );
  CKBD1 U108 ( .I(y[21]), .Z(fraction_y[21]) );
  CKBD1 U109 ( .I(y[20]), .Z(fraction_y[20]) );
  TIEL U110 ( .ZN(n79) );
  CKXOR2D1 U111 ( .A1(exponent_adjust[0]), .A2(N3), .Z(N19) );
  CKXOR2D1 U112 ( .A1(exponent_adjust[0]), .A2(N27), .Z(N43) );
  CKXOR2D1 U113 ( .A1(y[23]), .A2(y[24]), .Z(N36) );
  CKXOR2D1 U114 ( .A1(n35), .A2(y[25]), .Z(N37) );
  CKXOR2D1 U115 ( .A1(n410), .A2(y[26]), .Z(N38) );
  CKXOR2D1 U116 ( .A1(n51), .A2(y[27]), .Z(N39) );
  CKXOR2D1 U117 ( .A1(n60), .A2(y[28]), .Z(N40) );
  CKXOR2D1 U118 ( .A1(n70), .A2(y[29]), .Z(N41) );
  CKND0 U119 ( .I(y[23]), .ZN(N11) );
endmodule


module oadm_multilevel_opt_FIXED_LEVEL1_DW_mult_uns_0_DW_mult_uns_2 ( a, b, 
        product );
  input [31:0] a;
  input [6:0] b;
  output [38:0] product;
  wire   n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n55, n56, n59,
         n60, n61, n62, n63, n64, n67, n68, n69, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n198, n455, n456, n457, n458,
         n459, n460, n461, n462, n463, n464, n465, n466, n467, n468, n469,
         n470, n471, n472, n473, n474, n475, n476, n477, n478, n479, n480,
         n481, n482, n483, n484, n485, n486, n487, n488, n489, n490, n491,
         n492, n493, n494, n495, n496, n497, n498, n499, n500, n501, n502,
         n503, n504, n505, n506, n507, n508, n509, n510, n511, n512, n513,
         n514, n515, n516, n517, n518, n519, n520, n521, n522, n523, n524,
         n525, n526, n527, n529, n530, n531, n532, n533, n534, n535, n536,
         n544, n545;

  FA1D0 U25 ( .A(n60), .B(n56), .CI(n25), .CO(n24), .S(product[30]) );
  FA1D0 U26 ( .A(n63), .B(n61), .CI(n26), .CO(n25), .S(product[29]) );
  FA1D0 U27 ( .A(n68), .B(n64), .CI(n27), .CO(n26), .S(product[28]) );
  FA1D0 U28 ( .A(n72), .B(n69), .CI(n28), .CO(n27), .S(product[27]) );
  FA1D0 U29 ( .A(n75), .B(n73), .CI(n29), .CO(n28), .S(product[26]) );
  FA1D0 U30 ( .A(n78), .B(n76), .CI(n30), .CO(n29), .S(product[25]) );
  FA1D0 U31 ( .A(n81), .B(n79), .CI(n31), .CO(n30), .S(product[24]) );
  FA1D0 U32 ( .A(n84), .B(n82), .CI(n32), .CO(n31), .S(product[23]) );
  FA1D0 U33 ( .A(n87), .B(n85), .CI(n33), .CO(n32), .S(product[22]) );
  FA1D0 U34 ( .A(n90), .B(n88), .CI(n34), .CO(n33), .S(product[21]) );
  FA1D0 U35 ( .A(n93), .B(n91), .CI(n35), .CO(n34), .S(product[20]) );
  FA1D0 U36 ( .A(n96), .B(n94), .CI(n36), .CO(n35), .S(product[19]) );
  FA1D0 U37 ( .A(n99), .B(n97), .CI(n37), .CO(n36), .S(product[18]) );
  FA1D0 U38 ( .A(n102), .B(n100), .CI(n38), .CO(n37), .S(product[17]) );
  FA1D0 U39 ( .A(n105), .B(n103), .CI(n39), .CO(n38), .S(product[16]) );
  FA1D0 U40 ( .A(n108), .B(n106), .CI(n40), .CO(n39), .S(product[15]) );
  FA1D0 U41 ( .A(n111), .B(n109), .CI(n41), .CO(n40), .S(product[14]) );
  FA1D0 U42 ( .A(n114), .B(n112), .CI(n42), .CO(n41), .S(product[13]) );
  FA1D0 U43 ( .A(n117), .B(n115), .CI(n43), .CO(n42), .S(product[12]) );
  FA1D0 U44 ( .A(n120), .B(n118), .CI(n44), .CO(n43), .S(product[11]) );
  FA1D0 U45 ( .A(n123), .B(n121), .CI(n45), .CO(n44), .S(product[10]) );
  FA1D0 U46 ( .A(n126), .B(n124), .CI(n46), .CO(n45), .S(product[9]) );
  FA1D0 U47 ( .A(n129), .B(n127), .CI(n47), .CO(n46), .S(product[8]) );
  FA1D0 U48 ( .A(n132), .B(n130), .CI(n48), .CO(n47), .S(product[7]) );
  FA1D0 U56 ( .A(n506), .B(n198), .CI(n59), .CO(n55), .S(n56) );
  CMPE42D1 U58 ( .A(a[23]), .B(a[21]), .C(n490), .CIX(n62), .D(n533), .CO(n60), 
        .COX(n59), .S(n61) );
  CMPE42D1 U59 ( .A(n198), .B(a[22]), .C(n483), .CIX(n67), .D(n509), .CO(n63), 
        .COX(n62), .S(n64) );
  CMPE42D1 U61 ( .A(n486), .B(n455), .C(a[26]), .CIX(n71), .D(n509), .CO(n68), 
        .COX(n67), .S(n69) );
  CMPE42D1 U63 ( .A(n505), .B(a[20]), .C(n487), .CIX(n74), .D(n459), .CO(n72), 
        .COX(n71), .S(n73) );
  CMPE42D1 U64 ( .A(n506), .B(a[19]), .C(n482), .CIX(n77), .D(n456), .CO(n75), 
        .COX(n74), .S(n76) );
  CMPE42D1 U65 ( .A(n507), .B(a[18]), .C(n480), .CIX(n80), .D(n458), .CO(n78), 
        .COX(n77), .S(n79) );
  CMPE42D1 U66 ( .A(n508), .B(a[17]), .C(n485), .CIX(n83), .D(n457), .CO(n81), 
        .COX(n80), .S(n82) );
  CMPE42D1 U67 ( .A(n509), .B(a[16]), .C(n481), .CIX(n86), .D(n460), .CO(n84), 
        .COX(n83), .S(n85) );
  CMPE42D1 U68 ( .A(n510), .B(a[15]), .C(n484), .CIX(n89), .D(n464), .CO(n87), 
        .COX(n86), .S(n88) );
  CMPE42D1 U69 ( .A(n511), .B(a[14]), .C(n489), .CIX(n92), .D(n476), .CO(n90), 
        .COX(n89), .S(n91) );
  CMPE42D1 U70 ( .A(n512), .B(a[13]), .C(n503), .CIX(n95), .D(n475), .CO(n93), 
        .COX(n92), .S(n94) );
  CMPE42D1 U71 ( .A(n513), .B(a[12]), .C(n502), .CIX(n98), .D(n474), .CO(n96), 
        .COX(n95), .S(n97) );
  CMPE42D1 U72 ( .A(n514), .B(a[11]), .C(n501), .CIX(n101), .D(n473), .CO(n99), 
        .COX(n98), .S(n100) );
  CMPE42D1 U73 ( .A(n515), .B(a[10]), .C(n500), .CIX(n104), .D(n472), .CO(n102), .COX(n101), .S(n103) );
  CMPE42D1 U74 ( .A(n516), .B(a[9]), .C(n499), .CIX(n107), .D(n471), .CO(n105), 
        .COX(n104), .S(n106) );
  CMPE42D1 U75 ( .A(n517), .B(a[8]), .C(n498), .CIX(n110), .D(n470), .CO(n108), 
        .COX(n107), .S(n109) );
  CMPE42D1 U76 ( .A(n518), .B(a[7]), .C(n497), .CIX(n113), .D(n469), .CO(n111), 
        .COX(n110), .S(n112) );
  CMPE42D1 U77 ( .A(n519), .B(a[6]), .C(n496), .CIX(n116), .D(n468), .CO(n114), 
        .COX(n113), .S(n115) );
  CMPE42D1 U78 ( .A(n520), .B(a[5]), .C(n495), .CIX(n119), .D(n467), .CO(n117), 
        .COX(n116), .S(n118) );
  CMPE42D1 U79 ( .A(n521), .B(a[4]), .C(n494), .CIX(n122), .D(n466), .CO(n120), 
        .COX(n119), .S(n121) );
  CMPE42D1 U80 ( .A(n522), .B(a[3]), .C(n493), .CIX(n125), .D(n465), .CO(n123), 
        .COX(n122), .S(n124) );
  CMPE42D1 U81 ( .A(n523), .B(a[2]), .C(n492), .CIX(n128), .D(n463), .CO(n126), 
        .COX(n125), .S(n127) );
  CMPE42D1 U82 ( .A(n524), .B(a[1]), .C(n491), .CIX(n131), .D(n462), .CO(n129), 
        .COX(n128), .S(n130) );
  CMPE42D1 U83 ( .A(n525), .B(a[0]), .C(n488), .CIX(n136), .D(n461), .CO(n132), 
        .COX(n131), .S(n133) );
  FA1D0 U84 ( .A(n479), .B(n526), .CI(n137), .CO(n134), .S(n135) );
  HA1D0 U85 ( .A(n142), .B(n504), .CO(n136), .S(n137) );
  FA1D0 U86 ( .A(n527), .B(a[0]), .CI(n477), .CO(n138), .S(n139) );
  HA1D0 U87 ( .A(n478), .B(n529), .CO(n140), .S(n141) );
  CKXOR2D1 U328 ( .A1(b[5]), .A2(a[25]), .Z(n455) );
  CKXOR2D1 U329 ( .A1(b[5]), .A2(a[23]), .Z(n456) );
  CKXOR2D1 U330 ( .A1(b[5]), .A2(a[21]), .Z(n457) );
  CKXOR2D1 U331 ( .A1(b[5]), .A2(a[22]), .Z(n458) );
  CKXOR2D1 U332 ( .A1(b[5]), .A2(a[24]), .Z(n459) );
  CKXOR2D1 U333 ( .A1(b[5]), .A2(a[20]), .Z(n460) );
  CKXOR2D1 U334 ( .A1(b[5]), .A2(a[4]), .Z(n461) );
  CKXOR2D1 U335 ( .A1(b[5]), .A2(a[5]), .Z(n462) );
  CKXOR2D1 U336 ( .A1(b[5]), .A2(a[6]), .Z(n463) );
  CKXOR2D1 U337 ( .A1(b[5]), .A2(a[19]), .Z(n464) );
  CKXOR2D1 U338 ( .A1(b[5]), .A2(a[7]), .Z(n465) );
  CKXOR2D1 U339 ( .A1(b[5]), .A2(a[8]), .Z(n466) );
  CKXOR2D1 U340 ( .A1(b[5]), .A2(a[9]), .Z(n467) );
  CKXOR2D1 U341 ( .A1(b[5]), .A2(a[10]), .Z(n468) );
  CKXOR2D1 U342 ( .A1(b[5]), .A2(a[11]), .Z(n469) );
  CKXOR2D1 U343 ( .A1(b[5]), .A2(a[12]), .Z(n470) );
  CKXOR2D1 U344 ( .A1(b[5]), .A2(a[13]), .Z(n471) );
  CKXOR2D1 U345 ( .A1(b[5]), .A2(a[14]), .Z(n472) );
  CKXOR2D1 U346 ( .A1(b[5]), .A2(a[15]), .Z(n473) );
  CKXOR2D1 U347 ( .A1(b[5]), .A2(a[16]), .Z(n474) );
  CKXOR2D1 U348 ( .A1(b[5]), .A2(a[17]), .Z(n475) );
  CKXOR2D1 U349 ( .A1(b[5]), .A2(a[18]), .Z(n476) );
  NR2D1 U350 ( .A1(b[6]), .A2(a[0]), .ZN(n142) );
  INVD1 U351 ( .I(a[25]), .ZN(n505) );
  INVD1 U352 ( .I(a[23]), .ZN(n507) );
  INVD1 U353 ( .I(a[21]), .ZN(n509) );
  INVD1 U354 ( .I(a[24]), .ZN(n506) );
  INVD1 U355 ( .I(a[20]), .ZN(n510) );
  INVD1 U356 ( .I(a[22]), .ZN(n508) );
  INVD1 U357 ( .I(a[5]), .ZN(n525) );
  INVD1 U358 ( .I(a[19]), .ZN(n511) );
  INVD1 U359 ( .I(a[6]), .ZN(n524) );
  INVD1 U360 ( .I(a[7]), .ZN(n523) );
  INVD1 U361 ( .I(a[8]), .ZN(n522) );
  INVD1 U362 ( .I(a[9]), .ZN(n521) );
  INVD1 U363 ( .I(a[10]), .ZN(n520) );
  INVD1 U364 ( .I(a[11]), .ZN(n519) );
  INVD1 U365 ( .I(a[12]), .ZN(n518) );
  INVD1 U366 ( .I(a[13]), .ZN(n517) );
  INVD1 U367 ( .I(a[14]), .ZN(n516) );
  INVD1 U368 ( .I(a[15]), .ZN(n515) );
  INVD1 U369 ( .I(a[16]), .ZN(n514) );
  INVD1 U370 ( .I(a[17]), .ZN(n513) );
  INVD1 U371 ( .I(a[18]), .ZN(n512) );
  INVD1 U372 ( .I(a[4]), .ZN(n526) );
  INVD1 U373 ( .I(a[3]), .ZN(n527) );
  CKXOR2D1 U377 ( .A1(b[5]), .A2(a[2]), .Z(n477) );
  CKXOR2D1 U378 ( .A1(b[3]), .A2(a[1]), .Z(n478) );
  CKXOR2D1 U379 ( .A1(b[5]), .A2(a[3]), .Z(n479) );
  INVD1 U380 ( .I(a[2]), .ZN(n529) );
  CKXOR2D1 U381 ( .A1(b[6]), .A2(n510), .Z(n480) );
  CKXOR2D1 U382 ( .A1(b[6]), .A2(n512), .Z(n481) );
  CKXOR2D1 U383 ( .A1(b[6]), .A2(n509), .Z(n482) );
  CKXOR2D1 U384 ( .A1(b[6]), .A2(n506), .Z(n483) );
  CKXOR2D1 U385 ( .A1(b[6]), .A2(n513), .Z(n484) );
  CKXOR2D1 U386 ( .A1(b[6]), .A2(n511), .Z(n485) );
  CKXOR2D1 U387 ( .A1(b[6]), .A2(n507), .Z(n486) );
  CKXOR2D1 U388 ( .A1(b[6]), .A2(n508), .Z(n487) );
  CKXOR2D1 U389 ( .A1(b[4]), .A2(n529), .Z(n488) );
  CKXOR2D1 U390 ( .A1(b[6]), .A2(n514), .Z(n489) );
  CKXOR2D1 U391 ( .A1(b[6]), .A2(n505), .Z(n490) );
  CKXOR2D1 U392 ( .A1(b[4]), .A2(n527), .Z(n491) );
  CKXOR2D1 U393 ( .A1(b[4]), .A2(n526), .Z(n492) );
  CKXOR2D1 U394 ( .A1(b[4]), .A2(n525), .Z(n493) );
  CKXOR2D1 U395 ( .A1(b[4]), .A2(n524), .Z(n494) );
  CKXOR2D1 U396 ( .A1(b[4]), .A2(n523), .Z(n495) );
  CKXOR2D1 U397 ( .A1(b[4]), .A2(n522), .Z(n496) );
  CKXOR2D1 U398 ( .A1(b[4]), .A2(n521), .Z(n497) );
  CKXOR2D1 U399 ( .A1(b[4]), .A2(n520), .Z(n498) );
  CKXOR2D1 U400 ( .A1(b[4]), .A2(n519), .Z(n499) );
  CKXOR2D1 U401 ( .A1(b[4]), .A2(n518), .Z(n500) );
  CKXOR2D1 U402 ( .A1(b[4]), .A2(n517), .Z(n501) );
  CKXOR2D1 U403 ( .A1(b[6]), .A2(n516), .Z(n502) );
  CKXOR2D1 U404 ( .A1(b[6]), .A2(n515), .Z(n503) );
  CKXOR2D1 U405 ( .A1(b[6]), .A2(n530), .Z(n504) );
  XOR3D0 U407 ( .A1(n506), .A2(n505), .A3(n532), .Z(product[31]) );
  XOR3D0 U408 ( .A1(n55), .A2(n24), .A3(n533), .Z(n532) );
  AO222D0 U409 ( .A1(n534), .A2(n133), .B1(n534), .B2(n134), .C1(n134), .C2(
        n133), .Z(n48) );
  AO222D0 U410 ( .A1(n535), .A2(n135), .B1(n535), .B2(n138), .C1(n138), .C2(
        n135), .Z(n534) );
  AO222D0 U411 ( .A1(n536), .A2(n139), .B1(n536), .B2(n140), .C1(n140), .C2(
        n139), .Z(n535) );
  CKXOR2D0 U414 ( .A1(b[5]), .A2(a[27]), .Z(n198) );
  XNR2D0 U415 ( .A1(b[5]), .A2(a[27]), .ZN(n533) );
  MAOI222D0 U374 ( .A(a[1]), .B(n545), .C(n544), .ZN(n536) );
  CKND2D0 U375 ( .A1(n531), .A2(b[5]), .ZN(n544) );
  CKND0 U376 ( .I(n141), .ZN(n545) );
  CKND0 U406 ( .I(a[0]), .ZN(n531) );
  CKND0 U412 ( .I(a[1]), .ZN(n530) );
endmodule


module oadm_multilevel_opt_FIXED_LEVEL1 ( x, y, level, divide_mode, result );
  input [31:0] x;
  input [31:0] y;
  input [1:0] level;
  output [31:0] result;
  input divide_mode;
  wire   n4, coefficient_5_, n3, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n1, n2, n54,
         n55, n56, n57, n59;
  wire   [22:0] x_mantissa;
  wire   [21:0] y_mantissa;
  wire   [26:0] plane_full;
  wire   [31:7] scaled_product;
  wire   [22:0] normalized_fraction;
  wire   [2:0] exponent_adjust;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15;

  oadm_fixed_plane_centered_LEVEL1 fixed_centered_plane_plane ( .x_mantissa({
        1'b0, x_mantissa}), .y_mantissa({1'b0, coefficient_5_, y_mantissa}), 
        .divide_mode(divide_mode), .plane_exact({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, plane_full}) );
  fp32_normal_finite_wrapper fp_wrapper ( .x(x), .y(y), .divide_mode(
        divide_mode), .fraction_x(x_mantissa), .fraction_y({coefficient_5_, 
        y_mantissa}), .result_fraction(normalized_fraction), .exponent_adjust(
        {exponent_adjust[2], exponent_adjust[2], exponent_adjust[0]}), 
        .result(result) );
  oadm_multilevel_opt_FIXED_LEVEL1_DW_mult_uns_0_DW_mult_uns_2 mult_67 ( .a({
        plane_full[26], plane_full[26], plane_full[26], plane_full[26], 
        plane_full[26], plane_full}), .b({n59, coefficient_5_, n59, 
        coefficient_5_, n3, n4, n3}), .product({SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, scaled_product, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15}) );
  ND2D1 U3 ( .A1(n12), .A2(n1), .ZN(exponent_adjust[2]) );
  ND2D1 U4 ( .A1(n56), .A2(n12), .ZN(exponent_adjust[0]) );
  CKBD1 U5 ( .I(n7), .Z(n56) );
  IND3D1 U6 ( .A1(n28), .B1(n29), .B2(n56), .ZN(n12) );
  ND3D1 U7 ( .A1(n29), .A2(n28), .A3(n56), .ZN(n1) );
  OAI221D0 U8 ( .A1(n28), .A2(n54), .B1(n56), .B2(n29), .C(n30), .ZN(
        normalized_fraction[22]) );
  OA22D0 U9 ( .A1(n2), .A2(n31), .B1(n12), .B2(n32), .Z(n30) );
  OAI221D0 U10 ( .A1(n32), .A2(n6), .B1(n56), .B2(n28), .C(n33), .ZN(
        normalized_fraction[21]) );
  OA22D0 U11 ( .A1(n1), .A2(n34), .B1(n12), .B2(n31), .Z(n33) );
  OAI221D0 U12 ( .A1(n21), .A2(n6), .B1(n56), .B2(n19), .C(n24), .ZN(
        normalized_fraction[3]) );
  OA22D0 U13 ( .A1(n10), .A2(n25), .B1(n12), .B2(n23), .Z(n24) );
  OAI221D0 U14 ( .A1(n19), .A2(n54), .B1(n56), .B2(n17), .C(n22), .ZN(
        normalized_fraction[4]) );
  OA22D0 U15 ( .A1(n1), .A2(n23), .B1(n12), .B2(n21), .Z(n22) );
  OAI221D0 U16 ( .A1(n17), .A2(n55), .B1(n56), .B2(n15), .C(n20), .ZN(
        normalized_fraction[5]) );
  OA22D0 U17 ( .A1(n2), .A2(n21), .B1(n12), .B2(n19), .Z(n20) );
  OAI221D0 U18 ( .A1(n15), .A2(n6), .B1(n56), .B2(n11), .C(n18), .ZN(
        normalized_fraction[6]) );
  OA22D0 U19 ( .A1(n10), .A2(n19), .B1(n12), .B2(n17), .Z(n18) );
  OAI221D0 U20 ( .A1(n11), .A2(n54), .B1(n56), .B2(n13), .C(n16), .ZN(
        normalized_fraction[7]) );
  OA22D0 U21 ( .A1(n1), .A2(n17), .B1(n12), .B2(n15), .Z(n16) );
  OAI221D0 U22 ( .A1(n13), .A2(n55), .B1(n56), .B2(n5), .C(n14), .ZN(
        normalized_fraction[8]) );
  OA22D0 U23 ( .A1(n2), .A2(n15), .B1(n12), .B2(n11), .Z(n14) );
  OAI221D0 U24 ( .A1(n5), .A2(n6), .B1(n56), .B2(n8), .C(n9), .ZN(
        normalized_fraction[9]) );
  OA22D0 U25 ( .A1(n10), .A2(n11), .B1(n12), .B2(n13), .Z(n9) );
  OAI221D0 U26 ( .A1(n8), .A2(n54), .B1(n56), .B2(n50), .C(n53), .ZN(
        normalized_fraction[10]) );
  OA22D0 U27 ( .A1(n2), .A2(n13), .B1(n12), .B2(n5), .Z(n53) );
  OAI221D0 U28 ( .A1(n50), .A2(n6), .B1(n7), .B2(n48), .C(n52), .ZN(
        normalized_fraction[11]) );
  OA22D0 U29 ( .A1(n10), .A2(n5), .B1(n12), .B2(n8), .Z(n52) );
  OAI221D0 U30 ( .A1(n48), .A2(n6), .B1(n7), .B2(n46), .C(n51), .ZN(
        normalized_fraction[12]) );
  OA22D0 U31 ( .A1(n10), .A2(n8), .B1(n12), .B2(n50), .Z(n51) );
  OAI221D0 U32 ( .A1(n46), .A2(n54), .B1(n7), .B2(n44), .C(n49), .ZN(
        normalized_fraction[13]) );
  OA22D0 U33 ( .A1(n2), .A2(n50), .B1(n12), .B2(n48), .Z(n49) );
  OAI221D0 U34 ( .A1(n44), .A2(n55), .B1(n7), .B2(n42), .C(n47), .ZN(
        normalized_fraction[14]) );
  OA22D0 U35 ( .A1(n10), .A2(n48), .B1(n12), .B2(n46), .Z(n47) );
  OAI221D0 U36 ( .A1(n42), .A2(n6), .B1(n7), .B2(n40), .C(n45), .ZN(
        normalized_fraction[15]) );
  OA22D0 U37 ( .A1(n1), .A2(n46), .B1(n12), .B2(n44), .Z(n45) );
  OAI221D0 U38 ( .A1(n40), .A2(n54), .B1(n7), .B2(n38), .C(n43), .ZN(
        normalized_fraction[16]) );
  OA22D0 U39 ( .A1(n2), .A2(n44), .B1(n12), .B2(n42), .Z(n43) );
  OAI221D0 U40 ( .A1(n38), .A2(n55), .B1(n7), .B2(n36), .C(n41), .ZN(
        normalized_fraction[17]) );
  OA22D0 U41 ( .A1(n10), .A2(n42), .B1(n12), .B2(n40), .Z(n41) );
  OAI221D0 U42 ( .A1(n36), .A2(n6), .B1(n7), .B2(n34), .C(n39), .ZN(
        normalized_fraction[18]) );
  OA22D0 U43 ( .A1(n1), .A2(n40), .B1(n12), .B2(n38), .Z(n39) );
  OAI221D0 U44 ( .A1(n34), .A2(n54), .B1(n7), .B2(n31), .C(n37), .ZN(
        normalized_fraction[19]) );
  OA22D0 U45 ( .A1(n2), .A2(n38), .B1(n12), .B2(n36), .Z(n37) );
  OAI221D0 U46 ( .A1(n31), .A2(n55), .B1(n7), .B2(n32), .C(n35), .ZN(
        normalized_fraction[20]) );
  OA22D0 U47 ( .A1(n10), .A2(n36), .B1(n12), .B2(n34), .Z(n35) );
  OAI221D0 U48 ( .A1(n23), .A2(n55), .B1(n56), .B2(n21), .C(n26), .ZN(
        normalized_fraction[2]) );
  OA22D0 U49 ( .A1(n12), .A2(n25), .B1(n2), .B2(n27), .Z(n26) );
  ND3D1 U50 ( .A1(n29), .A2(n28), .A3(n56), .ZN(n2) );
  ND3D1 U51 ( .A1(n29), .A2(n28), .A3(n56), .ZN(n10) );
  OAI222D0 U52 ( .A1(n25), .A2(n54), .B1(n27), .B2(n12), .C1(n56), .C2(n23), 
        .ZN(normalized_fraction[1]) );
  IND2D1 U53 ( .A1(n29), .B1(n56), .ZN(n54) );
  IND2D1 U54 ( .A1(n29), .B1(n56), .ZN(n6) );
  IND2D1 U55 ( .A1(n29), .B1(n56), .ZN(n55) );
  OAI22D1 U56 ( .A1(n56), .A2(n25), .B1(n27), .B2(n55), .ZN(
        normalized_fraction[0]) );
  AOI22D1 U57 ( .A1(scaled_product[31]), .A2(divide_mode), .B1(plane_full[24]), 
        .B2(n57), .ZN(n7) );
  AOI22D1 U58 ( .A1(scaled_product[30]), .A2(divide_mode), .B1(plane_full[23]), 
        .B2(n57), .ZN(n29) );
  AOI22D1 U59 ( .A1(scaled_product[29]), .A2(divide_mode), .B1(plane_full[22]), 
        .B2(n57), .ZN(n28) );
  AOI22D1 U60 ( .A1(scaled_product[28]), .A2(divide_mode), .B1(plane_full[21]), 
        .B2(n57), .ZN(n32) );
  AOI22D1 U61 ( .A1(scaled_product[27]), .A2(divide_mode), .B1(plane_full[20]), 
        .B2(n57), .ZN(n31) );
  AOI22D1 U62 ( .A1(scaled_product[26]), .A2(divide_mode), .B1(plane_full[19]), 
        .B2(n57), .ZN(n34) );
  AOI22D1 U63 ( .A1(scaled_product[25]), .A2(divide_mode), .B1(plane_full[18]), 
        .B2(n57), .ZN(n36) );
  AOI22D1 U64 ( .A1(scaled_product[24]), .A2(divide_mode), .B1(plane_full[17]), 
        .B2(n57), .ZN(n38) );
  AOI22D1 U65 ( .A1(scaled_product[23]), .A2(divide_mode), .B1(plane_full[16]), 
        .B2(n57), .ZN(n40) );
  AOI22D1 U66 ( .A1(scaled_product[22]), .A2(divide_mode), .B1(plane_full[15]), 
        .B2(n57), .ZN(n42) );
  AOI22D1 U67 ( .A1(scaled_product[21]), .A2(divide_mode), .B1(plane_full[14]), 
        .B2(n57), .ZN(n44) );
  AOI22D1 U68 ( .A1(scaled_product[20]), .A2(divide_mode), .B1(plane_full[13]), 
        .B2(n57), .ZN(n46) );
  AOI22D1 U69 ( .A1(scaled_product[19]), .A2(divide_mode), .B1(plane_full[12]), 
        .B2(n57), .ZN(n48) );
  AOI22D1 U70 ( .A1(scaled_product[18]), .A2(divide_mode), .B1(plane_full[11]), 
        .B2(n57), .ZN(n50) );
  AOI22D1 U71 ( .A1(scaled_product[17]), .A2(divide_mode), .B1(plane_full[10]), 
        .B2(n57), .ZN(n8) );
  AOI22D1 U72 ( .A1(scaled_product[16]), .A2(divide_mode), .B1(plane_full[9]), 
        .B2(n57), .ZN(n5) );
  AOI22D1 U73 ( .A1(scaled_product[15]), .A2(divide_mode), .B1(plane_full[8]), 
        .B2(n57), .ZN(n13) );
  AOI22D1 U74 ( .A1(scaled_product[14]), .A2(divide_mode), .B1(plane_full[7]), 
        .B2(n57), .ZN(n11) );
  AOI22D1 U75 ( .A1(scaled_product[13]), .A2(divide_mode), .B1(plane_full[6]), 
        .B2(n57), .ZN(n15) );
  AOI22D1 U76 ( .A1(scaled_product[12]), .A2(divide_mode), .B1(plane_full[5]), 
        .B2(n57), .ZN(n17) );
  AOI22D1 U77 ( .A1(scaled_product[11]), .A2(divide_mode), .B1(plane_full[4]), 
        .B2(n57), .ZN(n19) );
  AOI22D1 U78 ( .A1(scaled_product[10]), .A2(divide_mode), .B1(plane_full[3]), 
        .B2(n57), .ZN(n21) );
  AOI22D1 U79 ( .A1(scaled_product[9]), .A2(divide_mode), .B1(plane_full[2]), 
        .B2(n57), .ZN(n23) );
  AOI22D1 U80 ( .A1(scaled_product[8]), .A2(divide_mode), .B1(plane_full[1]), 
        .B2(n57), .ZN(n25) );
  AOI22D1 U81 ( .A1(scaled_product[7]), .A2(divide_mode), .B1(plane_full[0]), 
        .B2(n57), .ZN(n27) );
  INVD1 U84 ( .I(divide_mode), .ZN(n57) );
  TIEH U85 ( .Z(n4) );
  TIEL U86 ( .ZN(n3) );
  INVD1 U82 ( .I(coefficient_5_), .ZN(n59) );
endmodule


module oadm_fixed_l1_opt ( x, y, divide_mode, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  input divide_mode;
  wire   n3;

  oadm_multilevel_opt_FIXED_LEVEL1 impl ( .x(x), .y(y), .level({1'b0, 1'b0}), 
        .divide_mode(n3), .result(result) );
  CKBD1 U7 ( .I(divide_mode), .Z(n3) );
endmodule

