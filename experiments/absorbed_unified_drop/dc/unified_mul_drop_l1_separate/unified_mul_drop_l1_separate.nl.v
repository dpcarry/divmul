/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Wed Sep 16 00:40:46 2026
/////////////////////////////////////////////////////////////


module unified_mul_drop_l1_separate_div_DW_mult_tc_1_DW_mult_tc_3 ( a, b, 
        product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n17,
         n18, n19, n20, n21, n23, n24, n25, n26, n27, n28, n29, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n74, n75, n76, n77,
         n78, n79, n81, n82, n83, n84, n85, n86, n87, n192, n193, n194, n195,
         n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206,
         n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217,
         n218, n219, n220, n221, n222, n223, n224, n225, n226, n227, n228,
         n229, n230, n231, n232, n233, n234, n235, n236, n237, n238, n239,
         n243, n244, n245;

  FA1D0 U2 ( .A(n56), .B(n15), .CI(n2), .CO(n1), .S(product[14]) );
  FA1D0 U3 ( .A(n17), .B(n194), .CI(n3), .CO(n2), .S(product[13]) );
  FA1D0 U4 ( .A(n19), .B(n18), .CI(n4), .CO(n3), .S(product[12]) );
  FA1D0 U5 ( .A(n24), .B(n20), .CI(n5), .CO(n4), .S(product[11]) );
  FA1D0 U6 ( .A(n27), .B(n25), .CI(n6), .CO(n5), .S(product[10]) );
  FA1D0 U7 ( .A(n32), .B(n28), .CI(n7), .CO(n6), .S(product[9]) );
  FA1D0 U8 ( .A(n33), .B(n37), .CI(n8), .CO(n7), .S(product[8]) );
  FA1D0 U9 ( .A(n38), .B(n42), .CI(n9), .CO(n8), .S(product[7]) );
  FA1D0 U10 ( .A(n43), .B(n44), .CI(n10), .CO(n9), .S(product[6]) );
  FA1D0 U11 ( .A(n45), .B(n48), .CI(n11), .CO(n10), .S(product[5]) );
  FA1D0 U12 ( .A(n49), .B(n50), .CI(n12), .CO(n11), .S(product[4]) );
  FA1D0 U13 ( .A(n51), .B(n54), .CI(n13), .CO(n12), .S(product[3]) );
  FA1D0 U14 ( .A(n86), .B(n79), .CI(n14), .CO(n13), .S(product[2]) );
  HA1D0 U15 ( .A(n87), .B(n55), .CO(n14), .S(product[1]) );
  FA1D0 U17 ( .A(n57), .B(n21), .CI(n64), .CO(n17), .S(n18) );
  FA1D0 U18 ( .A(n195), .B(n58), .CI(n23), .CO(n19), .S(n20) );
  CMPE42D1 U20 ( .A(n65), .B(n29), .C(n59), .CIX(n26), .D(n72), .CO(n24), 
        .COX(n23), .S(n25) );
  CMPE42D1 U21 ( .A(n60), .B(n66), .C(n196), .CIX(n31), .D(n34), .CO(n27), 
        .COX(n26), .S(n28) );
  CMPE42D1 U23 ( .A(n202), .B(n67), .C(n39), .CIX(n36), .D(n35), .CO(n32), 
        .COX(n31), .S(n33) );
  CMPE42D1 U26 ( .A(n68), .B(n81), .C(n74), .CIX(n41), .D(n40), .CO(n37), 
        .COX(n36), .S(n38) );
  HA1D0 U27 ( .A(n52), .B(n62), .CO(n39), .S(n40) );
  CMPE42D1 U28 ( .A(n82), .B(n63), .C(n69), .CIX(n46), .D(n75), .CO(n42), 
        .COX(n41), .S(n43) );
  FA1D0 U29 ( .A(n76), .B(n83), .CI(n47), .CO(n44), .S(n45) );
  HA1D0 U30 ( .A(n53), .B(n70), .CO(n46), .S(n47) );
  FA1D0 U31 ( .A(n84), .B(n71), .CI(n77), .CO(n48), .S(n49) );
  HA1D0 U32 ( .A(n78), .B(n85), .CO(n50), .S(n51) );
  INVD1 U141 ( .I(n15), .ZN(n194) );
  INVD1 U142 ( .I(b[6]), .ZN(n197) );
  INVD1 U143 ( .I(b[0]), .ZN(n193) );
  INVD1 U144 ( .I(b[4]), .ZN(n192) );
  INVD1 U145 ( .I(b[1]), .ZN(n198) );
  INVD1 U146 ( .I(n29), .ZN(n196) );
  INVD1 U147 ( .I(a[7]), .ZN(n199) );
  INVD1 U148 ( .I(n21), .ZN(n195) );
  INVD1 U151 ( .I(a[1]), .ZN(n202) );
  INVD1 U154 ( .I(a[3]), .ZN(n201) );
  INVD1 U155 ( .I(a[0]), .ZN(n203) );
  INVD1 U156 ( .I(a[5]), .ZN(n200) );
  CKND0 U159 ( .I(n1), .ZN(product[15]) );
  NR2D0 U160 ( .A1(n203), .A2(n193), .ZN(product[0]) );
  OAI22D0 U161 ( .A1(b[0]), .A2(n204), .B1(n205), .B2(n203), .ZN(n87) );
  OAI22D0 U162 ( .A1(n205), .A2(n204), .B1(n206), .B2(n203), .ZN(n86) );
  CKXOR2D0 U163 ( .A1(a[1]), .A2(n198), .Z(n205) );
  OAI22D0 U164 ( .A1(n206), .A2(n204), .B1(n207), .B2(n203), .ZN(n85) );
  CKXOR2D0 U165 ( .A1(a[1]), .A2(b[3]), .Z(n206) );
  OAI22D0 U166 ( .A1(n207), .A2(n204), .B1(n208), .B2(n203), .ZN(n84) );
  CKXOR2D0 U167 ( .A1(a[1]), .A2(b[5]), .Z(n207) );
  OAI22D0 U168 ( .A1(n208), .A2(n204), .B1(n209), .B2(n203), .ZN(n83) );
  CKXOR2D0 U169 ( .A1(a[1]), .A2(n192), .Z(n208) );
  OAI22D0 U170 ( .A1(n209), .A2(n204), .B1(n210), .B2(n203), .ZN(n82) );
  CKXOR2D0 U171 ( .A1(a[1]), .A2(b[3]), .Z(n209) );
  OAI22D0 U172 ( .A1(n210), .A2(n204), .B1(n202), .B2(n203), .ZN(n81) );
  CKXOR2D0 U173 ( .A1(a[1]), .A2(n197), .Z(n210) );
  NR2D0 U174 ( .A1(n211), .A2(n193), .ZN(n79) );
  OAI22D0 U175 ( .A1(n212), .A2(n213), .B1(n211), .B2(n214), .ZN(n78) );
  CKXOR2D0 U176 ( .A1(b[0]), .A2(n201), .Z(n212) );
  OAI22D0 U177 ( .A1(n214), .A2(n213), .B1(n211), .B2(n215), .ZN(n77) );
  CKXOR2D0 U178 ( .A1(a[3]), .A2(n198), .Z(n214) );
  OAI22D0 U179 ( .A1(n215), .A2(n213), .B1(n211), .B2(n216), .ZN(n76) );
  CKXOR2D0 U180 ( .A1(a[3]), .A2(b[3]), .Z(n215) );
  OAI22D0 U181 ( .A1(n216), .A2(n213), .B1(n211), .B2(n217), .ZN(n75) );
  CKXOR2D0 U182 ( .A1(a[3]), .A2(b[2]), .Z(n216) );
  OAI22D0 U183 ( .A1(n217), .A2(n213), .B1(n211), .B2(n218), .ZN(n74) );
  CKXOR2D0 U184 ( .A1(a[3]), .A2(n192), .Z(n217) );
  AO21D0 U185 ( .A1(n213), .A2(n211), .B(n201), .Z(n72) );
  NR2D0 U186 ( .A1(n219), .A2(n193), .ZN(n71) );
  OAI22D0 U187 ( .A1(n220), .A2(n221), .B1(n219), .B2(n222), .ZN(n70) );
  CKXOR2D0 U188 ( .A1(b[0]), .A2(n200), .Z(n220) );
  OAI22D0 U189 ( .A1(n222), .A2(n221), .B1(n219), .B2(n223), .ZN(n69) );
  CKXOR2D0 U190 ( .A1(a[5]), .A2(n198), .Z(n222) );
  OAI22D0 U191 ( .A1(n223), .A2(n221), .B1(n219), .B2(n224), .ZN(n68) );
  CKXOR2D0 U192 ( .A1(a[5]), .A2(b[3]), .Z(n223) );
  OAI22D0 U193 ( .A1(n224), .A2(n221), .B1(n219), .B2(n225), .ZN(n67) );
  CKXOR2D0 U194 ( .A1(a[5]), .A2(b[2]), .Z(n224) );
  OAI22D0 U195 ( .A1(n225), .A2(n221), .B1(n219), .B2(n226), .ZN(n66) );
  CKXOR2D0 U196 ( .A1(a[5]), .A2(n192), .Z(n225) );
  OAI22D0 U197 ( .A1(n226), .A2(n221), .B1(n219), .B2(n227), .ZN(n65) );
  CKXOR2D0 U198 ( .A1(a[5]), .A2(b[3]), .Z(n226) );
  AO21D0 U199 ( .A1(n221), .A2(n219), .B(n200), .Z(n64) );
  NR2D0 U200 ( .A1(n228), .A2(n193), .ZN(n63) );
  OAI22D0 U201 ( .A1(n229), .A2(n230), .B1(n228), .B2(n231), .ZN(n62) );
  CKXOR2D0 U202 ( .A1(b[0]), .A2(n199), .Z(n229) );
  OAI22D0 U203 ( .A1(n232), .A2(n230), .B1(n228), .B2(n233), .ZN(n60) );
  OAI22D0 U204 ( .A1(n233), .A2(n230), .B1(n228), .B2(n234), .ZN(n59) );
  CKXOR2D0 U205 ( .A1(a[7]), .A2(b[2]), .Z(n233) );
  OAI22D0 U206 ( .A1(n234), .A2(n230), .B1(n228), .B2(n235), .ZN(n58) );
  CKXOR2D0 U207 ( .A1(a[7]), .A2(n192), .Z(n234) );
  OAI22D0 U208 ( .A1(n235), .A2(n230), .B1(n228), .B2(n236), .ZN(n57) );
  CKXOR2D0 U209 ( .A1(a[7]), .A2(b[3]), .Z(n235) );
  AO21D0 U210 ( .A1(n230), .A2(n228), .B(n199), .Z(n56) );
  OAI21D0 U211 ( .A1(b[0]), .A2(n202), .B(n204), .ZN(n55) );
  CKND2D0 U212 ( .A1(a[1]), .A2(n203), .ZN(n204) );
  OAI32D0 U213 ( .A1(n201), .A2(b[0]), .A3(n211), .B1(n201), .B2(n213), .ZN(
        n54) );
  OAI32D0 U214 ( .A1(n200), .A2(b[0]), .A3(n219), .B1(n200), .B2(n221), .ZN(
        n53) );
  OAI32D0 U215 ( .A1(n199), .A2(b[0]), .A3(n228), .B1(n199), .B2(n230), .ZN(
        n52) );
  XNR2D0 U216 ( .A1(n237), .A2(n238), .ZN(n35) );
  CKND2D0 U217 ( .A1(n238), .A2(n237), .ZN(n34) );
  OA22D0 U218 ( .A1(n231), .A2(n230), .B1(n228), .B2(n232), .Z(n237) );
  CKXOR2D0 U219 ( .A1(a[7]), .A2(b[3]), .Z(n232) );
  CKXOR2D0 U220 ( .A1(a[7]), .A2(n198), .Z(n231) );
  OA22D0 U221 ( .A1(n218), .A2(n213), .B1(n211), .B2(n239), .Z(n238) );
  CKXOR2D0 U222 ( .A1(a[3]), .A2(b[3]), .Z(n218) );
  OAI22D0 U223 ( .A1(n239), .A2(n213), .B1(n211), .B2(n201), .ZN(n29) );
  CKXOR2D0 U225 ( .A1(a[3]), .A2(n197), .Z(n239) );
  OAI22D0 U226 ( .A1(n227), .A2(n221), .B1(n219), .B2(n200), .ZN(n21) );
  CKXOR2D0 U228 ( .A1(a[5]), .A2(n197), .Z(n227) );
  OAI22D0 U229 ( .A1(n236), .A2(n230), .B1(n228), .B2(n199), .ZN(n15) );
  CKXOR2D0 U231 ( .A1(a[7]), .A2(n197), .Z(n236) );
  OAI211D0 U149 ( .A1(a[6]), .A2(a[7]), .B(n228), .C(n243), .ZN(n230) );
  CKND2D0 U150 ( .A1(a[6]), .A2(a[7]), .ZN(n243) );
  CKXOR2D0 U152 ( .A1(a[6]), .A2(n200), .Z(n228) );
  OAI211D0 U153 ( .A1(a[4]), .A2(a[5]), .B(n219), .C(n244), .ZN(n221) );
  CKND2D0 U157 ( .A1(a[4]), .A2(a[5]), .ZN(n244) );
  CKXOR2D0 U158 ( .A1(a[4]), .A2(n201), .Z(n219) );
  OAI211D0 U224 ( .A1(a[2]), .A2(a[3]), .B(n211), .C(n245), .ZN(n213) );
  CKND2D0 U227 ( .A1(a[2]), .A2(a[3]), .ZN(n245) );
  CKXOR2D0 U230 ( .A1(a[2]), .A2(n202), .Z(n211) );
endmodule


module unified_mul_drop_l1_separate_div_DW_mult_tc_0_DW_mult_tc_2 ( a, b, 
        product );
  input [7:0] a;
  input [6:0] b;
  output [14:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n19, n20, n21, n22, n23, n24, n27, n28, n29, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n46, n47, n48, n49, n50, n51, n52, n53, n61, n62,
         n63, n64, n65, n66, n113, n114, n115, n116, n117, n118, n119, n120,
         n121, n122;

  FA1D0 U4 ( .A(n13), .B(n115), .CI(n3), .CO(n2), .S(product[12]) );
  FA1D0 U5 ( .A(n15), .B(n14), .CI(n4), .CO(n3), .S(product[11]) );
  FA1D0 U6 ( .A(n20), .B(n16), .CI(n5), .CO(n4), .S(product[10]) );
  FA1D0 U7 ( .A(n23), .B(n21), .CI(n6), .CO(n5), .S(product[9]) );
  FA1D0 U8 ( .A(n28), .B(n24), .CI(n7), .CO(n6), .S(product[8]) );
  FA1D0 U9 ( .A(n29), .B(n33), .CI(n8), .CO(n7), .S(product[7]) );
  FA1D0 U10 ( .A(n34), .B(n35), .CI(n9), .CO(n8), .S(product[6]) );
  FA1D0 U11 ( .A(n36), .B(n38), .CI(n10), .CO(n9), .S(product[5]) );
  FA1D0 U12 ( .A(n40), .B(n53), .CI(n11), .CO(n10), .S(product[4]) );
  FA1D0 U13 ( .A(n65), .B(a[1]), .CI(n12), .CO(n11), .S(product[3]) );
  HA1D0 U14 ( .A(n66), .B(a[0]), .CO(n12), .S(product[2]) );
  FA1D0 U15 ( .A(a[6]), .B(a[5]), .CI(n46), .CO(n13), .S(n14) );
  FA1D0 U16 ( .A(n117), .B(n47), .CI(n19), .CO(n15), .S(n16) );
  CMPE42D1 U18 ( .A(a[3]), .B(n115), .C(a[4]), .CIX(n22), .D(n48), .CO(n20), 
        .COX(n19), .S(n21) );
  CMPE42D1 U19 ( .A(a[2]), .B(a[6]), .C(n49), .CIX(n27), .D(n119), .CO(n23), 
        .COX(n22), .S(n24) );
  CMPE42D1 U21 ( .A(n50), .B(a[5]), .C(n120), .CIX(n32), .D(n61), .CO(n28), 
        .COX(n27), .S(n29) );
  CMPE42D1 U23 ( .A(a[4]), .B(a[1]), .C(n51), .CIX(n37), .D(n62), .CO(n33), 
        .COX(n32), .S(n34) );
  FA1D0 U24 ( .A(n52), .B(n63), .CI(n39), .CO(n35), .S(n36) );
  HA1D0 U25 ( .A(a[3]), .B(a[0]), .CO(n37), .S(n38) );
  HA1D0 U26 ( .A(n64), .B(a[2]), .CO(n39), .S(n40) );
  CKBD1 U71 ( .I(product[13]), .Z(product[14]) );
  INVD1 U72 ( .I(b[0]), .ZN(n114) );
  INVD1 U73 ( .I(b[4]), .ZN(n113) );
  INVD1 U74 ( .I(a[7]), .ZN(n115) );
  INVD1 U75 ( .I(a[4]), .ZN(n118) );
  INVD1 U76 ( .I(a[1]), .ZN(n121) );
  INVD1 U77 ( .I(a[5]), .ZN(n117) );
  INVD1 U78 ( .I(a[2]), .ZN(n120) );
  INVD1 U79 ( .I(a[3]), .ZN(n119) );
  INVD1 U80 ( .I(a[6]), .ZN(n116) );
  INVD1 U81 ( .I(a[0]), .ZN(n122) );
  NR2D0 U82 ( .A1(n121), .A2(n114), .ZN(product[1]) );
  CKND0 U83 ( .I(n2), .ZN(product[13]) );
  NR2D0 U84 ( .A1(n114), .A2(n122), .ZN(product[0]) );
  NR2D0 U85 ( .A1(n120), .A2(n114), .ZN(n66) );
  NR2D0 U86 ( .A1(n119), .A2(n114), .ZN(n65) );
  NR2D0 U87 ( .A1(n114), .A2(n118), .ZN(n64) );
  NR2D0 U88 ( .A1(n117), .A2(n114), .ZN(n63) );
  NR2D0 U89 ( .A1(n114), .A2(n116), .ZN(n62) );
  CKND2D0 U90 ( .A1(b[0]), .A2(a[7]), .ZN(n61) );
  NR2D0 U91 ( .A1(n122), .A2(n113), .ZN(n53) );
  NR2D0 U92 ( .A1(n121), .A2(n113), .ZN(n52) );
  NR2D0 U93 ( .A1(n120), .A2(n113), .ZN(n51) );
  NR2D0 U94 ( .A1(n119), .A2(n113), .ZN(n50) );
  NR2D0 U95 ( .A1(n118), .A2(n113), .ZN(n49) );
  NR2D0 U96 ( .A1(n117), .A2(n113), .ZN(n48) );
  NR2D0 U97 ( .A1(n116), .A2(n113), .ZN(n47) );
  CKND2D0 U98 ( .A1(b[4]), .A2(a[7]), .ZN(n46) );
endmodule


module unified_mul_drop_l1_separate_div_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [18:0] A;
  input [18:0] B;
  output [18:0] DIFF;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16;
  wire   [16:1] carry;

  XOR3D1 U2_16 ( .A1(A[16]), .A2(n2), .A3(carry[16]), .Z(DIFF[16]) );
  FA1D0 U2_1 ( .A(A[1]), .B(n16), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  FA1D0 U2_2 ( .A(A[2]), .B(n15), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  FA1D0 U2_3 ( .A(A[3]), .B(n14), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  FA1D0 U2_4 ( .A(A[4]), .B(n13), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FA1D0 U2_5 ( .A(A[5]), .B(n12), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  FA1D0 U2_6 ( .A(A[6]), .B(n11), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  FA1D0 U2_7 ( .A(A[7]), .B(n10), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  FA1D0 U2_8 ( .A(A[8]), .B(n9), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  FA1D0 U2_9 ( .A(A[9]), .B(n8), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9]) );
  FA1D0 U2_11 ( .A(A[11]), .B(n6), .CI(carry[11]), .CO(carry[12]), .S(DIFF[11]) );
  FA1D0 U2_15 ( .A(A[15]), .B(n2), .CI(carry[15]), .CO(carry[16]), .S(DIFF[15]) );
  FA1D0 U2_14 ( .A(A[14]), .B(n3), .CI(carry[14]), .CO(carry[15]), .S(DIFF[14]) );
  FA1D0 U2_10 ( .A(A[10]), .B(n7), .CI(carry[10]), .CO(carry[11]), .S(DIFF[10]) );
  FA1D0 U2_12 ( .A(A[12]), .B(n5), .CI(carry[12]), .CO(carry[13]), .S(DIFF[12]) );
  FA1D0 U2_13 ( .A(A[13]), .B(n4), .CI(carry[13]), .CO(carry[14]), .S(DIFF[13]) );
  INVD1 U1 ( .I(B[13]), .ZN(n4) );
  INVD1 U2 ( .I(B[12]), .ZN(n5) );
  INVD1 U3 ( .I(B[10]), .ZN(n7) );
  INVD1 U4 ( .I(B[14]), .ZN(n3) );
  INVD1 U5 ( .I(B[11]), .ZN(n6) );
  INVD1 U6 ( .I(B[18]), .ZN(n2) );
  INVD1 U7 ( .I(B[9]), .ZN(n8) );
  INVD1 U8 ( .I(B[8]), .ZN(n9) );
  INVD1 U9 ( .I(B[7]), .ZN(n10) );
  INVD1 U10 ( .I(B[6]), .ZN(n11) );
  INVD1 U11 ( .I(B[5]), .ZN(n12) );
  INVD1 U12 ( .I(B[4]), .ZN(n13) );
  INVD1 U14 ( .I(B[3]), .ZN(n14) );
  INVD1 U15 ( .I(B[2]), .ZN(n15) );
  INVD1 U17 ( .I(B[1]), .ZN(n16) );
  CKXOR2D0 U13 ( .A1(A[0]), .A2(B[0]), .Z(DIFF[0]) );
  IND2D0 U16 ( .A1(A[0]), .B1(B[0]), .ZN(carry[1]) );
endmodule


module unified_mul_drop_l1_separate_div ( fx, fy, value );
  input [22:0] fx;
  input [22:0] fy;
  output [28:0] value;
  wire   rx_7_, ry_7_, a_0, t_6, t_5, t_4, n12, n13, py_9_, py_8_, py_7_,
         py_6_, py_5_, py_4_, py_3_, py_2_, py_1_, py_15_, py_14_, py_13_,
         py_12_, py_11_, py_10_, py_0_, px_15, px_9_, px_8_, px_7_, px_6_,
         px_5_, px_4_, px_13_, px_12_, px_11_, px_10_, N28, N27, N26, N25, N24,
         N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N130, N120, n9, n10,
         n11, n160, n170, n180;
  wire   [5:0] b;
  wire   [15:8] t;
  wire   [16:6] add_1_root_sub_18_carry;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1;

  unified_mul_drop_l1_separate_div_DW_mult_tc_1_DW_mult_tc_3 mult_16_S2 ( .a({
        ry_7_, fy[20:14]}), .b({n180, t[13], b[5:4], n11, b[5], t_6, b[0]}), 
        .product({py_15_, py_14_, py_13_, py_12_, py_11_, py_10_, py_9_, py_8_, 
        py_7_, py_6_, py_5_, py_4_, py_3_, py_2_, py_1_, py_0_}) );
  unified_mul_drop_l1_separate_div_DW_mult_tc_0_DW_mult_tc_2 mult_16 ( .a({
        rx_7_, fx[20:14]}), .b({n180, n9, t_4, n180, n9, n180, a_0}), 
        .product({px_15, px_13_, px_12_, px_11_, px_10_, px_9_, px_8_, px_7_, 
        px_6_, px_5_, px_4_, N15, N14, N130, N120}) );
  unified_mul_drop_l1_separate_div_DW01_sub_0 sub_0_root_sub_18 ( .A({n180, 
        n180, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, 
        N15, N14, N130, N120}), .B({py_15_, py_15_, py_15_, py_15_, py_14_, 
        py_13_, py_12_, py_11_, py_10_, py_9_, py_8_, py_7_, py_6_, py_5_, 
        py_4_, py_3_, py_2_, py_1_, py_0_}), .CI(n180), .DIFF({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, value[24:8]}) );
  TIEH U3 ( .Z(n9) );
  AN2XD1 U12 ( .A1(px_4_), .A2(t_4), .Z(n10) );
  FA1D0 U13 ( .A(t[13]), .B(px_13_), .CI(add_1_root_sub_18_carry[13]), .CO(
        add_1_root_sub_18_carry[14]), .S(N25) );
  FA1D0 U14 ( .A(n11), .B(px_12_), .CI(add_1_root_sub_18_carry[12]), .CO(
        add_1_root_sub_18_carry[13]), .S(N24) );
  FA1D0 U15 ( .A(t[13]), .B(px_10_), .CI(add_1_root_sub_18_carry[10]), .CO(
        add_1_root_sub_18_carry[11]), .S(N22) );
  IND2D1 U16 ( .A1(t_6), .B1(n13), .ZN(n11) );
  INVD1 U17 ( .I(n11), .ZN(b[5]) );
  INVD1 U18 ( .I(t_6), .ZN(n160) );
  ND2D1 U19 ( .A1(n160), .A2(n12), .ZN(b[4]) );
  FA1D0 U20 ( .A(t_6), .B(px_15), .CI(add_1_root_sub_18_carry[14]), .CO(
        add_1_root_sub_18_carry[15]), .S(N26) );
  FA1D0 U21 ( .A(t[15]), .B(px_15), .CI(add_1_root_sub_18_carry[15]), .CO(
        add_1_root_sub_18_carry[16]), .S(N27) );
  IND2D1 U22 ( .A1(b[0]), .B1(n12), .ZN(t[15]) );
  ND2D1 U23 ( .A1(n160), .A2(t[8]), .ZN(a_0) );
  FA1D0 U24 ( .A(t_6), .B(px_11_), .CI(add_1_root_sub_18_carry[11]), .CO(
        add_1_root_sub_18_carry[12]), .S(N23) );
  ND2D1 U25 ( .A1(n13), .A2(t[8]), .ZN(b[0]) );
  INVD1 U26 ( .I(n13), .ZN(t[13]) );
  FA1D0 U27 ( .A(t_6), .B(px_9_), .CI(add_1_root_sub_18_carry[9]), .CO(
        add_1_root_sub_18_carry[10]), .S(N21) );
  FA1D0 U28 ( .A(t[8]), .B(px_8_), .CI(add_1_root_sub_18_carry[8]), .CO(
        add_1_root_sub_18_carry[9]), .S(N20) );
  ND2D1 U32 ( .A1(n12), .A2(n13), .ZN(t_4) );
  FA1D0 U33 ( .A(t_6), .B(px_6_), .CI(add_1_root_sub_18_carry[6]), .CO(
        add_1_root_sub_18_carry[7]), .S(N18) );
  FA1D0 U34 ( .A(t_5), .B(px_5_), .CI(n10), .CO(add_1_root_sub_18_carry[6]), 
        .S(N17) );
  IND2D1 U35 ( .A1(a_0), .B1(n12), .ZN(t_5) );
  NR2D1 U36 ( .A1(n170), .A2(fx[22]), .ZN(t_6) );
  INVD1 U37 ( .I(fy[22]), .ZN(n170) );
  ND2D1 U38 ( .A1(fx[22]), .A2(n170), .ZN(n13) );
  IND2D1 U39 ( .A1(fx[22]), .B1(n170), .ZN(n12) );
  ND2D1 U40 ( .A1(fx[22]), .A2(fy[22]), .ZN(t[8]) );
  INVD1 U41 ( .I(fy[21]), .ZN(ry_7_) );
  INVD1 U42 ( .I(fx[21]), .ZN(rx_7_) );
  TIEL U43 ( .ZN(n180) );
  XNR2D1 U44 ( .A1(add_1_root_sub_18_carry[7]), .A2(px_7_), .ZN(N19) );
  CKXOR2D1 U45 ( .A1(px_4_), .A2(t_4), .Z(N16) );
  CKXOR2D1 U46 ( .A1(px_15), .A2(add_1_root_sub_18_carry[16]), .Z(N28) );
  OR2D0 U4 ( .A1(px_7_), .A2(add_1_root_sub_18_carry[7]), .Z(
        add_1_root_sub_18_carry[8]) );
endmodule


module unified_mul_drop_l1_separate_mul_DW_mult_tc_1 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n29, n32, n35, n38, n41,
         n44, n47, n91;

  FA1D0 U3 ( .A(n11), .B(n91), .CI(n3), .CO(n2), .S(product[13]) );
  FA1D0 U4 ( .A(n13), .B(n12), .CI(n4), .CO(n3), .S(product[12]) );
  FA1D0 U5 ( .A(n14), .B(n17), .CI(n5), .CO(n4), .S(product[11]) );
  FA1D0 U6 ( .A(n18), .B(n19), .CI(n6), .CO(n5), .S(product[10]) );
  FA1D0 U7 ( .A(n20), .B(n21), .CI(n7), .CO(n6), .S(product[9]) );
  FA1D0 U8 ( .A(n22), .B(n23), .CI(n8), .CO(n7), .S(product[8]) );
  FA1D0 U9 ( .A(n24), .B(n25), .CI(n9), .CO(n8), .S(product[7]) );
  FA1D0 U10 ( .A(n10), .B(n44), .CI(n26), .CO(n9), .S(product[6]) );
  HA1D0 U11 ( .A(n47), .B(a[1]), .CO(n10), .S(product[5]) );
  FA1D0 U12 ( .A(a[6]), .B(n91), .CI(n27), .CO(n11), .S(n12) );
  FA1D0 U13 ( .A(a[7]), .B(a[5]), .CI(n29), .CO(n13), .S(n14) );
  FA1D0 U15 ( .A(a[6]), .B(a[4]), .CI(n32), .CO(n17), .S(n18) );
  FA1D0 U16 ( .A(a[5]), .B(a[3]), .CI(n35), .CO(n19), .S(n20) );
  FA1D0 U17 ( .A(a[4]), .B(a[2]), .CI(n38), .CO(n21), .S(n22) );
  FA1D0 U18 ( .A(a[3]), .B(a[1]), .CI(n41), .CO(n23), .S(n24) );
  HA1D0 U19 ( .A(a[2]), .B(a[0]), .CO(n25), .S(n26) );
  CKBD1 U55 ( .I(product[14]), .Z(product[15]) );
  INVD1 U56 ( .I(a[7]), .ZN(n91) );
  CKBD1 U57 ( .I(a[0]), .Z(product[4]) );
  CKND0 U58 ( .I(n2), .ZN(product[14]) );
  AN2D0 U59 ( .A1(a[0]), .A2(b[5]), .Z(n47) );
  AN2D0 U60 ( .A1(b[5]), .A2(a[1]), .Z(n44) );
  AN2D0 U61 ( .A1(b[5]), .A2(a[2]), .Z(n41) );
  AN2D0 U62 ( .A1(b[5]), .A2(a[3]), .Z(n38) );
  AN2D0 U63 ( .A1(b[5]), .A2(a[4]), .Z(n35) );
  AN2D0 U64 ( .A1(b[5]), .A2(a[5]), .Z(n32) );
  AN2D0 U65 ( .A1(b[5]), .A2(a[6]), .Z(n29) );
  CKND2D0 U66 ( .A1(b[5]), .A2(a[7]), .ZN(n27) );
endmodule


module unified_mul_drop_l1_separate_mul_DW_mult_tc_0 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n29, n32, n35, n38, n41,
         n44, n47, n91;

  FA1D0 U3 ( .A(n11), .B(n91), .CI(n3), .CO(n2), .S(product[13]) );
  FA1D0 U4 ( .A(n13), .B(n12), .CI(n4), .CO(n3), .S(product[12]) );
  FA1D0 U5 ( .A(n14), .B(n17), .CI(n5), .CO(n4), .S(product[11]) );
  FA1D0 U6 ( .A(n18), .B(n19), .CI(n6), .CO(n5), .S(product[10]) );
  FA1D0 U7 ( .A(n20), .B(n21), .CI(n7), .CO(n6), .S(product[9]) );
  FA1D0 U8 ( .A(n22), .B(n23), .CI(n8), .CO(n7), .S(product[8]) );
  FA1D0 U9 ( .A(n24), .B(n25), .CI(n9), .CO(n8), .S(product[7]) );
  FA1D0 U10 ( .A(n10), .B(n44), .CI(n26), .CO(n9), .S(product[6]) );
  HA1D0 U11 ( .A(n47), .B(a[1]), .CO(n10), .S(product[5]) );
  FA1D0 U12 ( .A(a[6]), .B(n91), .CI(n27), .CO(n11), .S(n12) );
  FA1D0 U13 ( .A(a[7]), .B(a[5]), .CI(n29), .CO(n13), .S(n14) );
  FA1D0 U15 ( .A(a[6]), .B(a[4]), .CI(n32), .CO(n17), .S(n18) );
  FA1D0 U16 ( .A(a[5]), .B(a[3]), .CI(n35), .CO(n19), .S(n20) );
  FA1D0 U17 ( .A(a[4]), .B(a[2]), .CI(n38), .CO(n21), .S(n22) );
  FA1D0 U18 ( .A(a[3]), .B(a[1]), .CI(n41), .CO(n23), .S(n24) );
  HA1D0 U19 ( .A(a[2]), .B(a[0]), .CO(n25), .S(n26) );
  CKBD1 U55 ( .I(product[14]), .Z(product[15]) );
  INVD1 U56 ( .I(a[7]), .ZN(n91) );
  CKBD1 U57 ( .I(a[0]), .Z(product[4]) );
  CKND0 U58 ( .I(n2), .ZN(product[14]) );
  AN2D0 U59 ( .A1(a[0]), .A2(b[5]), .Z(n47) );
  AN2D0 U60 ( .A1(b[5]), .A2(a[1]), .Z(n44) );
  AN2D0 U61 ( .A1(b[5]), .A2(a[2]), .Z(n41) );
  AN2D0 U62 ( .A1(b[5]), .A2(a[3]), .Z(n38) );
  AN2D0 U63 ( .A1(b[5]), .A2(a[4]), .Z(n35) );
  AN2D0 U64 ( .A1(b[5]), .A2(a[5]), .Z(n32) );
  AN2D0 U65 ( .A1(b[5]), .A2(a[6]), .Z(n29) );
  CKND2D0 U66 ( .A1(b[5]), .A2(a[7]), .ZN(n27) );
endmodule


module unified_mul_drop_l1_separate_mul_DW01_add_0 ( A, B, CI, SUM, CO );
  input [19:0] A;
  input [19:0] B;
  output [19:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [16:6] carry;

  XOR3D1 U1_16 ( .A1(A[16]), .A2(B[16]), .A3(carry[16]), .Z(SUM[16]) );
  FA1D0 U1_5 ( .A(A[5]), .B(B[5]), .CI(n1), .CO(carry[6]), .S(SUM[5]) );
  FA1D0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA1D0 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  FA1D0 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA1D0 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FA1D0 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  FA1D0 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FA1D0 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FA1D0 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  FA1D0 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  FA1D0 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  AN2XD1 U1 ( .A1(B[4]), .A2(A[4]), .Z(n1) );
  CKXOR2D1 U2 ( .A1(B[4]), .A2(A[4]), .Z(SUM[4]) );
endmodule


module unified_mul_drop_l1_separate_mul ( fx, fy, value );
  input [22:0] fx;
  input [22:0] fy;
  output [28:0] value;
  wire   rx_7_, ry_7_, t_14_, t_12, t_5, t_4, py_9_, py_8_, py_7_, py_6_,
         py_5_, py_4_, net1866, py_15_, py_14_, py_13_, py_12_, py_11_, py_10_,
         px_9_, px_8_, px_7_, px_6_, px_5_, px_4_, px_15_, px_14_, px_13_,
         px_12_, px_11_, px_10_, N28, N27, N26, N25, N24, N23, N22, N21, N20,
         N19, N18, N17, N16, n13, n14, n15, n170, n180, n190, n210;
  wire   [16:6] add_1_root_add_39_2_carry;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14;

  CKXOR2D1 U6 ( .A1(fx[22]), .A2(fy[22]), .Z(t_12) );
  unified_mul_drop_l1_separate_mul_DW_mult_tc_1 mult_37_S2 ( .a({ry_7_, 
        fy[20:14]}), .b({net1866, n13, fx[22], n13, net1866, net1866, net1866, 
        net1866}), .product({py_15_, py_14_, py_13_, py_12_, py_11_, py_10_, 
        py_9_, py_8_, py_7_, py_6_, py_5_, py_4_, SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3}) );
  unified_mul_drop_l1_separate_mul_DW_mult_tc_0 mult_37 ( .a({rx_7_, fx[20:14]}), .b({net1866, n13, fy[22], n13, net1866, net1866, net1866, net1866}), 
        .product({px_15_, px_14_, px_13_, px_12_, px_11_, px_10_, px_9_, px_8_, 
        px_7_, px_6_, px_5_, px_4_, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7}) );
  unified_mul_drop_l1_separate_mul_DW01_add_0 add_0_root_add_39_2 ( .A({py_15_, 
        py_15_, py_15_, py_15_, py_15_, py_14_, py_13_, py_12_, py_11_, py_10_, 
        py_9_, py_8_, py_7_, py_6_, py_5_, py_4_, net1866, net1866, net1866, 
        net1866}), .B({net1866, net1866, net1866, N28, N27, N26, N25, N24, N23, 
        N22, N21, N20, N19, N18, N17, N16, net1866, net1866, net1866, net1866}), .CI(net1866), .SUM({SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, value[24:12], SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14}) );
  TIEH U3 ( .Z(n13) );
  AN2XD1 U18 ( .A1(add_1_root_add_39_2_carry[13]), .A2(px_13_), .Z(n14) );
  AN2XD1 U19 ( .A1(px_4_), .A2(t_4), .Z(n15) );
  AN2XD1 U21 ( .A1(n180), .A2(px_9_), .Z(n170) );
  AN2XD1 U22 ( .A1(n190), .A2(px_8_), .Z(n180) );
  AN2XD1 U23 ( .A1(add_1_root_add_39_2_carry[7]), .A2(px_7_), .Z(n190) );
  FA1D0 U24 ( .A(t_4), .B(px_15_), .CI(add_1_root_add_39_2_carry[15]), .CO(
        add_1_root_add_39_2_carry[16]), .S(N27) );
  XOR3D1 U25 ( .A1(t_5), .A2(px_15_), .A3(add_1_root_add_39_2_carry[16]), .Z(
        N28) );
  FA1D0 U26 ( .A(t_12), .B(px_12_), .CI(add_1_root_add_39_2_carry[12]), .CO(
        add_1_root_add_39_2_carry[13]), .S(N24) );
  FA1D0 U30 ( .A(t_5), .B(px_5_), .CI(n15), .CO(add_1_root_add_39_2_carry[6]), 
        .S(N17) );
  INVD1 U32 ( .I(t_12), .ZN(t_4) );
  FA1D0 U33 ( .A(t_14_), .B(px_14_), .CI(n14), .CO(
        add_1_root_add_39_2_carry[15]), .S(N26) );
  NR2D1 U34 ( .A1(fx[22]), .A2(t_12), .ZN(t_14_) );
  OR2D1 U35 ( .A1(fx[22]), .A2(t_12), .Z(t_5) );
  INVD1 U36 ( .I(fx[21]), .ZN(rx_7_) );
  INVD1 U37 ( .I(fy[21]), .ZN(ry_7_) );
  TIEL U38 ( .ZN(net1866) );
  XNR2D1 U39 ( .A1(add_1_root_add_39_2_carry[6]), .A2(px_6_), .ZN(N18) );
  CKXOR2D1 U41 ( .A1(px_4_), .A2(t_4), .Z(N16) );
  CKXOR2D1 U42 ( .A1(add_1_root_add_39_2_carry[7]), .A2(px_7_), .Z(N19) );
  CKXOR2D1 U43 ( .A1(n190), .A2(px_8_), .Z(N20) );
  CKXOR2D1 U44 ( .A1(n180), .A2(px_9_), .Z(N21) );
  CKXOR2D1 U45 ( .A1(n170), .A2(px_10_), .Z(N22) );
  CKXOR2D1 U46 ( .A1(add_1_root_add_39_2_carry[13]), .A2(px_13_), .Z(N25) );
  IND2D0 U4 ( .A1(px_11_), .B1(n210), .ZN(add_1_root_add_39_2_carry[12]) );
  CKND2D0 U5 ( .A1(px_10_), .A2(n170), .ZN(n210) );
  CKXOR2D0 U7 ( .A1(px_11_), .A2(n210), .Z(N23) );
  OR2D0 U8 ( .A1(px_6_), .A2(add_1_root_add_39_2_carry[6]), .Z(
        add_1_root_add_39_2_carry[7]) );
endmodule


module fp32_normal_finite_wrapper_DW01_add_3_DW01_add_6 ( A, B, CI, SUM, CO );
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


module fp32_normal_finite_wrapper_DW01_add_1_DW01_add_4 ( A, B, CI, SUM, CO );
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
         N12, N11, N10, n1, n2, n35, n410, n51, n60, n70, n77, n78, n79;
  wire   [7:2] add_0_root_add_0_root_add_22_2_carry;
  wire   [7:2] add_0_root_add_0_root_add_25_2_carry;

  CKXOR2D1 U2 ( .A1(y[31]), .A2(x[31]), .Z(result[31]) );
  fp32_normal_finite_wrapper_DW01_add_3_DW01_add_6 add_1_root_add_0_root_add_25_2 ( 
        .A(x[30:23]), .B({N42, N41, N40, N39, N38, N37, N36, N11}), .CI(n79), 
        .SUM({N34, N33, N32, N31, N30, N29, N28, N27}) );
  fp32_normal_finite_wrapper_DW01_add_1_DW01_add_4 add_1_root_add_0_root_add_22_2 ( 
        .A(x[30:23]), .B({y[30], N17, N16, N15, N14, N13, N12, N11}), .CI(n79), 
        .SUM({N10, N9, N8, N7, N6, N5, N4, N3}) );
  AN2XD1 U3 ( .A1(exponent_adjust[0]), .A2(N3), .Z(n1) );
  AN2XD1 U4 ( .A1(exponent_adjust[0]), .A2(N27), .Z(n2) );
  INVD1 U33 ( .I(divide_mode), .ZN(n78) );
  AO22D0 U34 ( .A1(N49), .A2(n78), .B1(N25), .B2(divide_mode), .Z(result[29])
         );
  AO22D0 U35 ( .A1(N48), .A2(n78), .B1(N24), .B2(divide_mode), .Z(result[28])
         );
  AO22D0 U36 ( .A1(N47), .A2(n78), .B1(N23), .B2(divide_mode), .Z(result[27])
         );
  AO22D0 U37 ( .A1(N46), .A2(n78), .B1(N22), .B2(divide_mode), .Z(result[26])
         );
  AO22D0 U38 ( .A1(N45), .A2(n78), .B1(N21), .B2(divide_mode), .Z(result[25])
         );
  AO22D0 U39 ( .A1(N44), .A2(n78), .B1(N20), .B2(divide_mode), .Z(result[24])
         );
  CKBD1 U40 ( .I(result_fraction[10]), .Z(result[10]) );
  CKBD1 U41 ( .I(result_fraction[9]), .Z(result[9]) );
  CKBD1 U42 ( .I(result_fraction[8]), .Z(result[8]) );
  CKBD1 U43 ( .I(result_fraction[7]), .Z(result[7]) );
  FA1D0 U44 ( .A(N4), .B(exponent_adjust[1]), .CI(n1), .CO(
        add_0_root_add_0_root_add_22_2_carry[2]), .S(N20) );
  FA1D0 U45 ( .A(N5), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[2]), .CO(
        add_0_root_add_0_root_add_22_2_carry[3]), .S(N21) );
  FA1D0 U46 ( .A(N6), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[3]), .CO(
        add_0_root_add_0_root_add_22_2_carry[4]), .S(N22) );
  FA1D0 U47 ( .A(N7), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[4]), .CO(
        add_0_root_add_0_root_add_22_2_carry[5]), .S(N23) );
  FA1D0 U48 ( .A(N8), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[5]), .CO(
        add_0_root_add_0_root_add_22_2_carry[6]), .S(N24) );
  FA1D0 U49 ( .A(N9), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[6]), .CO(
        add_0_root_add_0_root_add_22_2_carry[7]), .S(N25) );
  FA1D0 U50 ( .A(N28), .B(exponent_adjust[1]), .CI(n2), .CO(
        add_0_root_add_0_root_add_25_2_carry[2]), .S(N44) );
  FA1D0 U51 ( .A(N29), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[2]), .CO(
        add_0_root_add_0_root_add_25_2_carry[3]), .S(N45) );
  FA1D0 U52 ( .A(N30), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[3]), .CO(
        add_0_root_add_0_root_add_25_2_carry[4]), .S(N46) );
  FA1D0 U53 ( .A(N31), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[4]), .CO(
        add_0_root_add_0_root_add_25_2_carry[5]), .S(N47) );
  FA1D0 U54 ( .A(N32), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[5]), .CO(
        add_0_root_add_0_root_add_25_2_carry[6]), .S(N48) );
  FA1D0 U55 ( .A(N33), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[6]), .CO(
        add_0_root_add_0_root_add_25_2_carry[7]), .S(N49) );
  AO22D0 U56 ( .A1(N43), .A2(n78), .B1(N19), .B2(divide_mode), .Z(result[23])
         );
  CKBD1 U57 ( .I(y[22]), .Z(fraction_y[22]) );
  AO22D0 U58 ( .A1(N50), .A2(n78), .B1(divide_mode), .B2(N26), .Z(result[30])
         );
  XOR3D1 U59 ( .A1(N34), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_25_2_carry[7]), .Z(N50) );
  XOR3D1 U60 ( .A1(N10), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_22_2_carry[7]), .Z(N26) );
  CKBD1 U61 ( .I(x[22]), .Z(fraction_x[22]) );
  CKBD1 U62 ( .I(y[15]), .Z(fraction_y[15]) );
  CKBD1 U63 ( .I(y[17]), .Z(fraction_y[17]) );
  CKBD1 U64 ( .I(y[19]), .Z(fraction_y[19]) );
  CKBD1 U65 ( .I(x[15]), .Z(fraction_x[15]) );
  CKBD1 U66 ( .I(x[16]), .Z(fraction_x[16]) );
  CKBD1 U67 ( .I(x[14]), .Z(fraction_x[14]) );
  AN2XD1 U68 ( .A1(y[23]), .A2(y[24]), .Z(n35) );
  INVD1 U69 ( .I(y[29]), .ZN(N17) );
  INVD0 U70 ( .I(y[24]), .ZN(N12) );
  INVD1 U71 ( .I(y[25]), .ZN(N13) );
  INVD1 U72 ( .I(y[26]), .ZN(N14) );
  INVD1 U73 ( .I(y[27]), .ZN(N15) );
  INVD1 U74 ( .I(y[28]), .ZN(N16) );
  AN2XD1 U75 ( .A1(n35), .A2(y[25]), .Z(n410) );
  AN2XD1 U76 ( .A1(n410), .A2(y[26]), .Z(n51) );
  AN2XD1 U77 ( .A1(n51), .A2(y[27]), .Z(n60) );
  AN2XD1 U78 ( .A1(n60), .A2(y[28]), .Z(n70) );
  CKXOR2D1 U79 ( .A1(y[30]), .A2(n77), .Z(N42) );
  ND2D1 U80 ( .A1(n70), .A2(y[29]), .ZN(n77) );
  CKBD1 U88 ( .I(x[21]), .Z(fraction_x[21]) );
  CKBD1 U89 ( .I(x[20]), .Z(fraction_x[20]) );
  CKBD1 U90 ( .I(x[19]), .Z(fraction_x[19]) );
  CKBD1 U91 ( .I(x[18]), .Z(fraction_x[18]) );
  CKBD1 U92 ( .I(x[17]), .Z(fraction_x[17]) );
  CKBD1 U93 ( .I(y[21]), .Z(fraction_y[21]) );
  CKBD1 U94 ( .I(y[20]), .Z(fraction_y[20]) );
  CKBD1 U95 ( .I(y[18]), .Z(fraction_y[18]) );
  CKBD1 U96 ( .I(y[16]), .Z(fraction_y[16]) );
  CKBD1 U97 ( .I(y[14]), .Z(fraction_y[14]) );
  CKBD1 U98 ( .I(result_fraction[22]), .Z(result[22]) );
  CKBD1 U99 ( .I(result_fraction[21]), .Z(result[21]) );
  CKBD1 U100 ( .I(result_fraction[20]), .Z(result[20]) );
  CKBD1 U101 ( .I(result_fraction[19]), .Z(result[19]) );
  CKBD1 U102 ( .I(result_fraction[18]), .Z(result[18]) );
  CKBD1 U103 ( .I(result_fraction[17]), .Z(result[17]) );
  CKBD1 U104 ( .I(result_fraction[16]), .Z(result[16]) );
  CKBD1 U105 ( .I(result_fraction[15]), .Z(result[15]) );
  CKBD1 U106 ( .I(result_fraction[14]), .Z(result[14]) );
  CKBD1 U107 ( .I(result_fraction[13]), .Z(result[13]) );
  CKBD1 U108 ( .I(result_fraction[12]), .Z(result[12]) );
  CKBD1 U109 ( .I(result_fraction[11]), .Z(result[11]) );
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


module unified_mul_drop_l1_separate ( x, y, divide_mode, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  input divide_mode;
  wire   n2, n5, n6, n7, n9, n10, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n59, n60, n61, n62;
  wire   [22:14] fx;
  wire   [22:14] fy;
  wire   [24:8] div_value;
  wire   [24:12] mul_value;
  wire   [22:7] normalized_fraction;
  wire   [2:0] exponent_adjust;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31, 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, 
        SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39, 
        SYNOPSYS_UNCONNECTED__40, SYNOPSYS_UNCONNECTED__41, 
        SYNOPSYS_UNCONNECTED__42, SYNOPSYS_UNCONNECTED__43, 
        SYNOPSYS_UNCONNECTED__44, SYNOPSYS_UNCONNECTED__45, 
        SYNOPSYS_UNCONNECTED__46, SYNOPSYS_UNCONNECTED__47, 
        SYNOPSYS_UNCONNECTED__48, SYNOPSYS_UNCONNECTED__49, 
        SYNOPSYS_UNCONNECTED__50, SYNOPSYS_UNCONNECTED__51, 
        SYNOPSYS_UNCONNECTED__52, SYNOPSYS_UNCONNECTED__53, 
        SYNOPSYS_UNCONNECTED__54, SYNOPSYS_UNCONNECTED__55, 
        SYNOPSYS_UNCONNECTED__56, SYNOPSYS_UNCONNECTED__57, 
        SYNOPSYS_UNCONNECTED__58, SYNOPSYS_UNCONNECTED__59, 
        SYNOPSYS_UNCONNECTED__60, SYNOPSYS_UNCONNECTED__61, 
        SYNOPSYS_UNCONNECTED__62;
  assign result[1] = 1'b0;
  assign result[2] = 1'b0;
  assign result[3] = 1'b0;
  assign result[4] = 1'b0;
  assign result[5] = 1'b0;
  assign result[6] = 1'b0;
  assign result[0] = 1'b0;

  unified_mul_drop_l1_separate_div div_core ( .fx({fx, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .fy({fy, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .value({SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, div_value, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11}) );
  unified_mul_drop_l1_separate_mul mul_core ( .fx({fx, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .fy({fy, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .value({SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15, mul_value, SYNOPSYS_UNCONNECTED__16, 
        SYNOPSYS_UNCONNECTED__17, SYNOPSYS_UNCONNECTED__18, 
        SYNOPSYS_UNCONNECTED__19, SYNOPSYS_UNCONNECTED__20, 
        SYNOPSYS_UNCONNECTED__21, SYNOPSYS_UNCONNECTED__22, 
        SYNOPSYS_UNCONNECTED__23, SYNOPSYS_UNCONNECTED__24, 
        SYNOPSYS_UNCONNECTED__25, SYNOPSYS_UNCONNECTED__26, 
        SYNOPSYS_UNCONNECTED__27}) );
  fp32_normal_finite_wrapper wrapper ( .x({x[31:14], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y({
        y[31:14], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .divide_mode(n61), .fraction_x({fx, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31, 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, 
        SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39, 
        SYNOPSYS_UNCONNECTED__40, SYNOPSYS_UNCONNECTED__41}), .fraction_y({fy, 
        SYNOPSYS_UNCONNECTED__42, SYNOPSYS_UNCONNECTED__43, 
        SYNOPSYS_UNCONNECTED__44, SYNOPSYS_UNCONNECTED__45, 
        SYNOPSYS_UNCONNECTED__46, SYNOPSYS_UNCONNECTED__47, 
        SYNOPSYS_UNCONNECTED__48, SYNOPSYS_UNCONNECTED__49, 
        SYNOPSYS_UNCONNECTED__50, SYNOPSYS_UNCONNECTED__51, 
        SYNOPSYS_UNCONNECTED__52, SYNOPSYS_UNCONNECTED__53, 
        SYNOPSYS_UNCONNECTED__54, SYNOPSYS_UNCONNECTED__55}), 
        .result_fraction({normalized_fraction, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .exponent_adjust({exponent_adjust[2], exponent_adjust[2], 
        exponent_adjust[0]}), .result({result[31:7], SYNOPSYS_UNCONNECTED__56, 
        SYNOPSYS_UNCONNECTED__57, SYNOPSYS_UNCONNECTED__58, 
        SYNOPSYS_UNCONNECTED__59, SYNOPSYS_UNCONNECTED__60, 
        SYNOPSYS_UNCONNECTED__61, SYNOPSYS_UNCONNECTED__62}) );
  ND2D1 U78 ( .A1(n9), .A2(n7), .ZN(exponent_adjust[2]) );
  IND3D1 U80 ( .A1(n25), .B1(n26), .B2(n59), .ZN(n9) );
  ND3D1 U81 ( .A1(n26), .A2(n25), .A3(n59), .ZN(n7) );
  ND2D1 U82 ( .A1(n59), .A2(n9), .ZN(exponent_adjust[0]) );
  OAI221D0 U83 ( .A1(n5), .A2(n60), .B1(n59), .B2(n47), .C(n50), .ZN(
        normalized_fraction[10]) );
  OA22D0 U84 ( .A1(n7), .A2(n10), .B1(n9), .B2(n2), .Z(n50) );
  OAI221D0 U85 ( .A1(n25), .A2(n60), .B1(n59), .B2(n26), .C(n27), .ZN(
        normalized_fraction[22]) );
  OA22D0 U86 ( .A1(n7), .A2(n28), .B1(n9), .B2(n29), .Z(n27) );
  OAI221D0 U87 ( .A1(n29), .A2(n60), .B1(n59), .B2(n25), .C(n30), .ZN(
        normalized_fraction[21]) );
  OA22D0 U88 ( .A1(n7), .A2(n31), .B1(n9), .B2(n28), .Z(n30) );
  OAI221D0 U89 ( .A1(n47), .A2(n60), .B1(n59), .B2(n45), .C(n49), .ZN(
        normalized_fraction[11]) );
  OA22D0 U90 ( .A1(n7), .A2(n2), .B1(n9), .B2(n5), .Z(n49) );
  OAI221D0 U91 ( .A1(n45), .A2(n60), .B1(n59), .B2(n43), .C(n48), .ZN(
        normalized_fraction[12]) );
  OA22D0 U92 ( .A1(n7), .A2(n5), .B1(n9), .B2(n47), .Z(n48) );
  OAI221D0 U93 ( .A1(n43), .A2(n60), .B1(n59), .B2(n41), .C(n46), .ZN(
        normalized_fraction[13]) );
  OA22D0 U94 ( .A1(n7), .A2(n47), .B1(n9), .B2(n45), .Z(n46) );
  OAI221D0 U95 ( .A1(n41), .A2(n60), .B1(n59), .B2(n39), .C(n44), .ZN(
        normalized_fraction[14]) );
  OA22D0 U96 ( .A1(n7), .A2(n45), .B1(n9), .B2(n43), .Z(n44) );
  OAI221D0 U97 ( .A1(n39), .A2(n60), .B1(n59), .B2(n37), .C(n42), .ZN(
        normalized_fraction[15]) );
  OA22D0 U98 ( .A1(n7), .A2(n43), .B1(n9), .B2(n41), .Z(n42) );
  OAI221D0 U99 ( .A1(n37), .A2(n60), .B1(n59), .B2(n35), .C(n40), .ZN(
        normalized_fraction[16]) );
  OA22D0 U100 ( .A1(n7), .A2(n41), .B1(n9), .B2(n39), .Z(n40) );
  OAI221D0 U101 ( .A1(n35), .A2(n60), .B1(n59), .B2(n33), .C(n38), .ZN(
        normalized_fraction[17]) );
  OA22D0 U102 ( .A1(n7), .A2(n39), .B1(n9), .B2(n37), .Z(n38) );
  OAI221D0 U103 ( .A1(n33), .A2(n60), .B1(n59), .B2(n31), .C(n36), .ZN(
        normalized_fraction[18]) );
  OA22D0 U104 ( .A1(n7), .A2(n37), .B1(n9), .B2(n35), .Z(n36) );
  OAI221D0 U105 ( .A1(n31), .A2(n60), .B1(n59), .B2(n28), .C(n34), .ZN(
        normalized_fraction[19]) );
  OA22D0 U106 ( .A1(n7), .A2(n35), .B1(n9), .B2(n33), .Z(n34) );
  OAI221D0 U107 ( .A1(n28), .A2(n60), .B1(n59), .B2(n29), .C(n32), .ZN(
        normalized_fraction[20]) );
  OA22D0 U108 ( .A1(n7), .A2(n33), .B1(n9), .B2(n31), .Z(n32) );
  OAI221D0 U109 ( .A1(n2), .A2(n60), .B1(n59), .B2(n5), .C(n6), .ZN(
        normalized_fraction[9]) );
  OAI22D1 U114 ( .A1(n10), .A2(n60), .B1(n59), .B2(n2), .ZN(
        normalized_fraction[8]) );
  NR2D1 U115 ( .A1(n59), .A2(n10), .ZN(normalized_fraction[7]) );
  ND2D1 U116 ( .A1(div_value[11]), .A2(n61), .ZN(n47) );
  ND2D1 U117 ( .A1(div_value[10]), .A2(n61), .ZN(n5) );
  ND2D1 U118 ( .A1(div_value[9]), .A2(n61), .ZN(n2) );
  ND2D1 U119 ( .A1(div_value[8]), .A2(n61), .ZN(n10) );
  AOI22D1 U122 ( .A1(mul_value[23]), .A2(n62), .B1(div_value[23]), .B2(n61), 
        .ZN(n26) );
  AOI22D1 U123 ( .A1(mul_value[22]), .A2(n62), .B1(div_value[22]), .B2(n61), 
        .ZN(n25) );
  AOI22D1 U124 ( .A1(mul_value[21]), .A2(n62), .B1(div_value[21]), .B2(n61), 
        .ZN(n29) );
  AOI22D1 U125 ( .A1(mul_value[20]), .A2(n62), .B1(div_value[20]), .B2(n61), 
        .ZN(n28) );
  AOI22D1 U126 ( .A1(mul_value[19]), .A2(n62), .B1(div_value[19]), .B2(n61), 
        .ZN(n31) );
  AOI22D1 U127 ( .A1(mul_value[18]), .A2(n62), .B1(div_value[18]), .B2(n61), 
        .ZN(n33) );
  AOI22D1 U128 ( .A1(mul_value[17]), .A2(n62), .B1(div_value[17]), .B2(n61), 
        .ZN(n35) );
  AOI22D1 U129 ( .A1(mul_value[16]), .A2(n62), .B1(div_value[16]), .B2(n61), 
        .ZN(n37) );
  AOI22D1 U130 ( .A1(mul_value[15]), .A2(n62), .B1(div_value[15]), .B2(n61), 
        .ZN(n39) );
  AOI22D1 U131 ( .A1(mul_value[14]), .A2(n62), .B1(div_value[14]), .B2(n61), 
        .ZN(n41) );
  AOI22D1 U132 ( .A1(mul_value[13]), .A2(n62), .B1(div_value[13]), .B2(n61), 
        .ZN(n43) );
  AOI22D1 U133 ( .A1(mul_value[12]), .A2(n62), .B1(div_value[12]), .B2(n61), 
        .ZN(n45) );
  INVD1 U134 ( .I(n62), .ZN(n61) );
  INVD1 U143 ( .I(divide_mode), .ZN(n62) );
  IND2D0 U79 ( .A1(n26), .B1(n59), .ZN(n60) );
  OR2D1 U110 ( .A1(n9), .A2(n10), .Z(n6) );
  AOI22D1 U111 ( .A1(n62), .A2(mul_value[24]), .B1(div_value[24]), .B2(n61), 
        .ZN(n59) );
endmodule

