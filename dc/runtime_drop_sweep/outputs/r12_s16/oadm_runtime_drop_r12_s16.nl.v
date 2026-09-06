/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Thu Sep  3 18:51:47 2026
/////////////////////////////////////////////////////////////


module oadm_runtime_plane_pruned_RESIDUAL_DROP12_DW_mult_uns_0 ( a, b, product
 );
  input [5:0] a;
  input [5:0] b;
  output [11:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n13, n15, n16, n18, n20, n21, n23,
         n25, n26, n27, n28, n30, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n50, n54, n56, n57, n58, n59, n60, n62, n63, n64, n65,
         n66, n68, n69, n70, n71, n72, n74, n75, n76, n77, n118, n119, n120,
         n121, n122, n125, n126, n127, n128, n129, n131, n132, n133, n134,
         n135, n136, n141, n142, n143, n144, n149, n150, n151, n152, n153,
         n154, n155, n156, n157;

  FA1D0 U3 ( .A(n15), .B(n13), .CI(n3), .CO(n2), .S(product[8]) );
  FA1D0 U4 ( .A(n20), .B(n16), .CI(n4), .CO(n3), .S(product[7]) );
  FA1D0 U5 ( .A(n21), .B(n27), .CI(n5), .CO(n4), .S(product[6]) );
  FA1D0 U6 ( .A(n28), .B(n34), .CI(n6), .CO(n5), .S(product[5]) );
  FA1D0 U7 ( .A(n35), .B(n38), .CI(n7), .CO(n6), .S(product[4]) );
  FA1D0 U8 ( .A(n39), .B(n41), .CI(n8), .CO(n7), .S(product[3]) );
  FA1D0 U9 ( .A(n9), .B(n66), .CI(n43), .CO(n8), .S(product[2]) );
  HA1D0 U10 ( .A(n77), .B(n72), .CO(n9), .S(product[1]) );
  CMPE42D1 U18 ( .A(n36), .B(n68), .C(n32), .CIX(n30), .D(n33), .CO(n27), 
        .COX(n26), .S(n28) );
  CMPE42D1 U21 ( .A(n64), .B(n74), .C(n69), .CIX(n37), .D(n40), .CO(n34), 
        .COX(n33), .S(n35) );
  HA1D0 U22 ( .A(n54), .B(n59), .CO(n36), .S(n37) );
  FA1D0 U23 ( .A(n70), .B(n75), .CI(n42), .CO(n38), .S(n39) );
  HA1D0 U24 ( .A(n60), .B(n65), .CO(n40), .S(n41) );
  HA1D0 U25 ( .A(n71), .B(n76), .CO(n42), .S(n43) );
  XNR2D1 U75 ( .A1(n154), .A2(n2), .ZN(product[9]) );
  ND2D1 U76 ( .A1(n50), .A2(n121), .ZN(n154) );
  INVD1 U80 ( .I(n152), .ZN(n126) );
  INVD1 U82 ( .I(b[4]), .ZN(n135) );
  INVD1 U83 ( .I(a[4]), .ZN(n134) );
  OR2XD1 U85 ( .A1(n25), .A2(n125), .Z(n118) );
  ND2D1 U86 ( .A1(n25), .A2(n26), .ZN(n153) );
  INVD1 U87 ( .I(n26), .ZN(n125) );
  AN2XD1 U88 ( .A1(n58), .A2(n63), .Z(n119) );
  ND2D1 U89 ( .A1(n119), .A2(n25), .ZN(n152) );
  IND2D1 U90 ( .A1(n25), .B1(n23), .ZN(n151) );
  ND2D1 U91 ( .A1(n25), .A2(n23), .ZN(n150) );
  AN2XD1 U92 ( .A1(n62), .A2(n57), .Z(n120) );
  IND2D1 U93 ( .A1(n56), .B1(n18), .ZN(n143) );
  ND2D1 U96 ( .A1(n56), .A2(n18), .ZN(n142) );
  AN2XD1 U97 ( .A1(n120), .A2(n56), .Z(n121) );
  NR2D1 U98 ( .A1(n56), .A2(n152), .ZN(n144) );
  AN2XD1 U99 ( .A1(n56), .A2(n126), .Z(n122) );
  INVD1 U100 ( .I(a[3]), .ZN(n127) );
  INVD1 U101 ( .I(b[1]), .ZN(n133) );
  INVD1 U102 ( .I(b[3]), .ZN(n131) );
  INVD1 U103 ( .I(a[1]), .ZN(n129) );
  INVD1 U104 ( .I(a[2]), .ZN(n128) );
  INVD1 U105 ( .I(b[2]), .ZN(n132) );
  INVD1 U106 ( .I(b[0]), .ZN(n136) );
  CKBD1 U107 ( .I(b[0]), .Z(product[0]) );
  MUX2ND0 U109 ( .I0(n142), .I1(n143), .S(n120), .ZN(n141) );
  MUX2ND0 U114 ( .I0(n150), .I1(n151), .S(n119), .ZN(n149) );
  CKXOR2D1 U117 ( .A1(n121), .A2(n50), .Z(n13) );
  CKXOR2D1 U118 ( .A1(n57), .A2(n62), .Z(n23) );
  CKXOR2D1 U119 ( .A1(n63), .A2(n58), .Z(n30) );
  NR2D0 U120 ( .A1(n136), .A2(n133), .ZN(n77) );
  NR2D0 U121 ( .A1(n136), .A2(n132), .ZN(n76) );
  NR2D0 U122 ( .A1(n136), .A2(n131), .ZN(n75) );
  NR2D0 U123 ( .A1(n135), .A2(n136), .ZN(n74) );
  NR2D0 U124 ( .A1(n136), .A2(n129), .ZN(n72) );
  NR2D0 U125 ( .A1(n133), .A2(n129), .ZN(n71) );
  NR2D0 U126 ( .A1(n132), .A2(n129), .ZN(n70) );
  NR2D0 U127 ( .A1(n131), .A2(n129), .ZN(n69) );
  NR2D0 U128 ( .A1(n135), .A2(n129), .ZN(n68) );
  NR2D0 U129 ( .A1(n136), .A2(n128), .ZN(n66) );
  NR2D0 U130 ( .A1(n133), .A2(n128), .ZN(n65) );
  NR2D0 U131 ( .A1(n132), .A2(n128), .ZN(n64) );
  NR2D0 U132 ( .A1(n131), .A2(n128), .ZN(n63) );
  NR2D0 U133 ( .A1(n135), .A2(n128), .ZN(n62) );
  NR2D0 U134 ( .A1(n136), .A2(n127), .ZN(n60) );
  NR2D0 U135 ( .A1(n133), .A2(n127), .ZN(n59) );
  NR2D0 U136 ( .A1(n132), .A2(n127), .ZN(n58) );
  NR2D0 U137 ( .A1(n131), .A2(n127), .ZN(n57) );
  NR2D0 U138 ( .A1(n135), .A2(n127), .ZN(n56) );
  NR2D0 U139 ( .A1(n134), .A2(n136), .ZN(n54) );
  NR2D0 U140 ( .A1(n134), .A2(n133), .ZN(n32) );
  NR2D0 U141 ( .A1(n134), .A2(n132), .ZN(n25) );
  NR2D0 U142 ( .A1(n134), .A2(n131), .ZN(n18) );
  NR2D0 U143 ( .A1(n134), .A2(n135), .ZN(n50) );
  AO211D0 U77 ( .A1(n157), .A2(n18), .B(n141), .C(n155), .Z(n15) );
  MUX2D0 U78 ( .I0(n122), .I1(n144), .S(n120), .Z(n155) );
  AO211D0 U79 ( .A1(n26), .A2(n23), .B(n149), .C(n156), .Z(n20) );
  MUX2ND0 U81 ( .I0(n153), .I1(n118), .S(n119), .ZN(n156) );
  CKND0 U84 ( .I(n152), .ZN(n157) );
  XOR4D0 U94 ( .A1(n120), .A2(n56), .A3(n18), .A4(n126), .Z(n16) );
  XOR4D0 U95 ( .A1(n23), .A2(n25), .A3(n119), .A4(n26), .Z(n21) );
endmodule


module oadm_runtime_plane_pruned_RESIDUAL_DROP12_DW_mult_tc_1 ( a, b, product
 );
  input [10:0] a;
  input [5:0] b;
  output [16:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n18, n19, n20, n21, n22, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n45, n46, n47,
         n48, n49, n51, n52, n53, n54, n55, n57, n58, n59, n60, n61, n63, n64,
         n65, n66, n67, n69, n70, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224, n225, n226, n227, n228, n229, n230, n231, n233;

  FA1D0 U2 ( .A(n59), .B(n16), .CI(n2), .CO(n1), .S(product[15]) );
  FA1D0 U3 ( .A(n18), .B(n191), .CI(n3), .CO(n2), .S(product[14]) );
  FA1D0 U4 ( .A(n20), .B(n19), .CI(n4), .CO(n3), .S(product[13]) );
  FA1D0 U5 ( .A(n24), .B(n21), .CI(n5), .CO(n4), .S(product[12]) );
  FA1D0 U6 ( .A(n28), .B(n25), .CI(n6), .CO(n5), .S(product[11]) );
  FA1D0 U7 ( .A(n32), .B(n29), .CI(n7), .CO(n6), .S(product[10]) );
  FA1D0 U8 ( .A(n36), .B(n33), .CI(n8), .CO(n7), .S(product[9]) );
  FA1D0 U9 ( .A(n40), .B(n37), .CI(n9), .CO(n8), .S(product[8]) );
  FA1D0 U10 ( .A(n188), .B(n41), .CI(n10), .CO(n9), .S(product[7]) );
  FA1D0 U11 ( .A(n45), .B(n48), .CI(n11), .CO(n10), .S(product[6]) );
  FA1D0 U12 ( .A(n49), .B(n52), .CI(n12), .CO(n11), .S(product[5]) );
  FA1D0 U13 ( .A(n53), .B(n54), .CI(n13), .CO(n12), .S(product[4]) );
  FA1D0 U14 ( .A(n55), .B(n57), .CI(n14), .CO(n13), .S(product[3]) );
  FA1D0 U15 ( .A(n90), .B(n80), .CI(n15), .CO(n14), .S(product[2]) );
  HA1D0 U16 ( .A(n91), .B(n58), .CO(n15), .S(product[1]) );
  FA1D0 U18 ( .A(n60), .B(n22), .CI(n70), .CO(n18), .S(n19) );
  FA1D0 U19 ( .A(n189), .B(n61), .CI(n26), .CO(n20), .S(n21) );
  FA1D0 U21 ( .A(n30), .B(n81), .CI(n27), .CO(n24), .S(n25) );
  FA1D0 U24 ( .A(n34), .B(n72), .CI(n31), .CO(n28), .S(n29) );
  HA1D0 U25 ( .A(n63), .B(n82), .CO(n30), .S(n31) );
  FA1D0 U26 ( .A(n38), .B(n73), .CI(n35), .CO(n32), .S(n33) );
  HA1D0 U27 ( .A(n64), .B(n83), .CO(n34), .S(n35) );
  FA1D0 U28 ( .A(n42), .B(n74), .CI(n39), .CO(n36), .S(n37) );
  HA1D0 U29 ( .A(n65), .B(n84), .CO(n38), .S(n39) );
  FA1D0 U30 ( .A(n46), .B(n75), .CI(n43), .CO(n40), .S(n41) );
  HA1D0 U31 ( .A(n66), .B(n85), .CO(n42), .S(n43) );
  HA1D0 U33 ( .A(n67), .B(n86), .CO(n46), .S(n47) );
  FA1D0 U34 ( .A(n77), .B(n87), .CI(n51), .CO(n48), .S(n49) );
  FA1D0 U36 ( .A(n88), .B(n69), .CI(n78), .CO(n52), .S(n53) );
  HA1D0 U37 ( .A(n79), .B(n89), .CO(n54), .S(n55) );
  INVD1 U137 ( .I(n16), .ZN(n191) );
  AN2XD1 U139 ( .A1(n76), .A2(n47), .Z(n188) );
  XNR2D1 U140 ( .A1(b[3]), .A2(b[4]), .ZN(n227) );
  ND2D1 U142 ( .A1(b[1]), .A2(n203), .ZN(n204) );
  INVD1 U143 ( .I(b[3]), .ZN(n190) );
  INVD1 U144 ( .I(b[0]), .ZN(n203) );
  INVD1 U145 ( .I(a[8]), .ZN(n194) );
  INVD1 U146 ( .I(n22), .ZN(n189) );
  INVD1 U147 ( .I(a[10]), .ZN(n192) );
  INVD1 U148 ( .I(a[7]), .ZN(n195) );
  INVD1 U149 ( .I(a[0]), .ZN(n202) );
  INVD1 U150 ( .I(a[9]), .ZN(n193) );
  INVD1 U151 ( .I(a[1]), .ZN(n201) );
  INVD1 U152 ( .I(a[3]), .ZN(n199) );
  INVD1 U153 ( .I(a[2]), .ZN(n200) );
  INVD1 U154 ( .I(a[4]), .ZN(n198) );
  INVD1 U155 ( .I(a[5]), .ZN(n197) );
  INVD1 U156 ( .I(a[6]), .ZN(n196) );
  CKXOR2D1 U157 ( .A1(n47), .A2(n76), .Z(n45) );
  CKND0 U158 ( .I(n1), .ZN(product[16]) );
  NR2D0 U159 ( .A1(n202), .A2(n203), .ZN(product[0]) );
  OAI22D0 U160 ( .A1(a[0]), .A2(n204), .B1(n205), .B2(n203), .ZN(n91) );
  OAI22D0 U161 ( .A1(n205), .A2(n204), .B1(n206), .B2(n203), .ZN(n90) );
  CKXOR2D0 U162 ( .A1(b[1]), .A2(n201), .Z(n205) );
  OAI22D0 U163 ( .A1(n206), .A2(n204), .B1(n207), .B2(n203), .ZN(n89) );
  CKXOR2D0 U164 ( .A1(b[1]), .A2(n200), .Z(n206) );
  OAI22D0 U165 ( .A1(n207), .A2(n204), .B1(n208), .B2(n203), .ZN(n88) );
  CKXOR2D0 U166 ( .A1(b[1]), .A2(n199), .Z(n207) );
  OAI22D0 U167 ( .A1(n208), .A2(n204), .B1(n209), .B2(n203), .ZN(n87) );
  CKXOR2D0 U168 ( .A1(b[1]), .A2(n198), .Z(n208) );
  OAI22D0 U169 ( .A1(n209), .A2(n204), .B1(n210), .B2(n203), .ZN(n86) );
  CKXOR2D0 U170 ( .A1(b[1]), .A2(n197), .Z(n209) );
  OAI22D0 U171 ( .A1(n210), .A2(n204), .B1(n211), .B2(n203), .ZN(n85) );
  CKXOR2D0 U172 ( .A1(b[1]), .A2(n196), .Z(n210) );
  OAI22D0 U173 ( .A1(n211), .A2(n204), .B1(n212), .B2(n203), .ZN(n84) );
  CKXOR2D0 U174 ( .A1(b[1]), .A2(n195), .Z(n211) );
  OAI22D0 U175 ( .A1(n212), .A2(n204), .B1(n213), .B2(n203), .ZN(n83) );
  CKXOR2D0 U176 ( .A1(b[1]), .A2(n194), .Z(n212) );
  MOAI22D0 U177 ( .A1(n213), .A2(n204), .B1(n214), .B2(b[0]), .ZN(n82) );
  CKXOR2D0 U178 ( .A1(b[1]), .A2(n193), .Z(n213) );
  IOA21D0 U179 ( .A1(n203), .A2(n204), .B(n214), .ZN(n81) );
  CKXOR2D0 U180 ( .A1(b[1]), .A2(a[10]), .Z(n214) );
  NR2D0 U181 ( .A1(n215), .A2(n202), .ZN(n80) );
  OAI22D0 U182 ( .A1(n216), .A2(n217), .B1(n215), .B2(n218), .ZN(n79) );
  CKXOR2D0 U183 ( .A1(b[3]), .A2(n202), .Z(n216) );
  OAI22D0 U184 ( .A1(n218), .A2(n217), .B1(n215), .B2(n219), .ZN(n78) );
  CKXOR2D0 U185 ( .A1(b[3]), .A2(n201), .Z(n218) );
  OAI22D0 U186 ( .A1(n219), .A2(n217), .B1(n215), .B2(n220), .ZN(n77) );
  CKXOR2D0 U187 ( .A1(b[3]), .A2(n200), .Z(n219) );
  OAI22D0 U188 ( .A1(n220), .A2(n217), .B1(n215), .B2(n221), .ZN(n76) );
  CKXOR2D0 U189 ( .A1(b[3]), .A2(n199), .Z(n220) );
  OAI22D0 U190 ( .A1(n221), .A2(n217), .B1(n215), .B2(n222), .ZN(n75) );
  CKXOR2D0 U191 ( .A1(b[3]), .A2(n198), .Z(n221) );
  OAI22D0 U192 ( .A1(n222), .A2(n217), .B1(n215), .B2(n223), .ZN(n74) );
  CKXOR2D0 U193 ( .A1(b[3]), .A2(n197), .Z(n222) );
  OAI22D0 U194 ( .A1(n223), .A2(n217), .B1(n215), .B2(n224), .ZN(n73) );
  CKXOR2D0 U195 ( .A1(b[3]), .A2(n196), .Z(n223) );
  OAI22D0 U196 ( .A1(n224), .A2(n217), .B1(n215), .B2(n225), .ZN(n72) );
  CKXOR2D0 U197 ( .A1(b[3]), .A2(n195), .Z(n224) );
  AO21D0 U198 ( .A1(n217), .A2(n215), .B(n226), .Z(n70) );
  NR2D0 U199 ( .A1(n227), .A2(n202), .ZN(n69) );
  OAI22D0 U200 ( .A1(n202), .A2(n228), .B1(n227), .B2(n201), .ZN(n51) );
  OAI22D0 U201 ( .A1(n201), .A2(n228), .B1(n227), .B2(n200), .ZN(n67) );
  OAI22D0 U202 ( .A1(n200), .A2(n228), .B1(n227), .B2(n199), .ZN(n66) );
  OAI22D0 U203 ( .A1(n199), .A2(n228), .B1(n227), .B2(n198), .ZN(n65) );
  OAI22D0 U204 ( .A1(n198), .A2(n228), .B1(n227), .B2(n197), .ZN(n64) );
  OAI22D0 U205 ( .A1(n197), .A2(n228), .B1(n227), .B2(n196), .ZN(n63) );
  OAI22D0 U206 ( .A1(n195), .A2(n228), .B1(n227), .B2(n194), .ZN(n61) );
  OAI22D0 U207 ( .A1(n194), .A2(n228), .B1(n227), .B2(n193), .ZN(n60) );
  AO21D0 U208 ( .A1(n228), .A2(n227), .B(n192), .Z(n59) );
  IOA21D0 U209 ( .A1(n202), .A2(b[1]), .B(n204), .ZN(n58) );
  OAI32D0 U210 ( .A1(n190), .A2(a[0]), .A3(n215), .B1(n190), .B2(n217), .ZN(
        n57) );
  XNR2D0 U211 ( .A1(n229), .A2(n230), .ZN(n27) );
  CKND2D0 U212 ( .A1(n230), .A2(n229), .ZN(n26) );
  OA22D0 U213 ( .A1(n196), .A2(n228), .B1(n227), .B2(n195), .Z(n229) );
  OA22D0 U214 ( .A1(n225), .A2(n217), .B1(n215), .B2(n231), .Z(n230) );
  CKXOR2D0 U215 ( .A1(b[3]), .A2(n194), .Z(n225) );
  OAI22D0 U216 ( .A1(n215), .A2(n226), .B1(n231), .B2(n217), .ZN(n22) );
  CKXOR2D0 U218 ( .A1(b[3]), .A2(n193), .Z(n231) );
  CKXOR2D0 U219 ( .A1(n190), .A2(a[10]), .Z(n226) );
  OAI22D0 U220 ( .A1(n227), .A2(n192), .B1(n193), .B2(n228), .ZN(n16) );
  CKND2D0 U221 ( .A1(n227), .A2(b[4]), .ZN(n228) );
  OAI211D0 U138 ( .A1(b[2]), .A2(b[3]), .B(n233), .C(n215), .ZN(n217) );
  XNR2D0 U141 ( .A1(b[2]), .A2(b[1]), .ZN(n215) );
  CKND2D0 U217 ( .A1(b[2]), .A2(b[3]), .ZN(n233) );
endmodule


module oadm_runtime_plane_pruned_RESIDUAL_DROP12_DW_mult_tc_0 ( a, b, product
 );
  input [10:0] a;
  input [5:0] b;
  output [16:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n18, n19, n20, n21, n22, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n45, n46, n47,
         n48, n49, n51, n52, n53, n54, n55, n57, n58, n59, n60, n61, n63, n64,
         n65, n66, n67, n69, n70, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224, n225, n226, n227, n228, n229, n230, n231, n233;

  FA1D0 U2 ( .A(n59), .B(n16), .CI(n2), .CO(n1), .S(product[15]) );
  FA1D0 U3 ( .A(n18), .B(n191), .CI(n3), .CO(n2), .S(product[14]) );
  FA1D0 U4 ( .A(n20), .B(n19), .CI(n4), .CO(n3), .S(product[13]) );
  FA1D0 U5 ( .A(n24), .B(n21), .CI(n5), .CO(n4), .S(product[12]) );
  FA1D0 U6 ( .A(n28), .B(n25), .CI(n6), .CO(n5), .S(product[11]) );
  FA1D0 U7 ( .A(n32), .B(n29), .CI(n7), .CO(n6), .S(product[10]) );
  FA1D0 U8 ( .A(n36), .B(n33), .CI(n8), .CO(n7), .S(product[9]) );
  FA1D0 U9 ( .A(n40), .B(n37), .CI(n9), .CO(n8), .S(product[8]) );
  FA1D0 U10 ( .A(n188), .B(n41), .CI(n10), .CO(n9), .S(product[7]) );
  FA1D0 U11 ( .A(n45), .B(n48), .CI(n11), .CO(n10), .S(product[6]) );
  FA1D0 U12 ( .A(n49), .B(n52), .CI(n12), .CO(n11), .S(product[5]) );
  FA1D0 U13 ( .A(n53), .B(n54), .CI(n13), .CO(n12), .S(product[4]) );
  FA1D0 U14 ( .A(n55), .B(n57), .CI(n14), .CO(n13), .S(product[3]) );
  FA1D0 U15 ( .A(n90), .B(n80), .CI(n15), .CO(n14), .S(product[2]) );
  HA1D0 U16 ( .A(n91), .B(n58), .CO(n15), .S(product[1]) );
  FA1D0 U18 ( .A(n60), .B(n22), .CI(n70), .CO(n18), .S(n19) );
  FA1D0 U19 ( .A(n189), .B(n61), .CI(n26), .CO(n20), .S(n21) );
  FA1D0 U21 ( .A(n30), .B(n81), .CI(n27), .CO(n24), .S(n25) );
  FA1D0 U24 ( .A(n34), .B(n72), .CI(n31), .CO(n28), .S(n29) );
  HA1D0 U25 ( .A(n63), .B(n82), .CO(n30), .S(n31) );
  FA1D0 U26 ( .A(n38), .B(n73), .CI(n35), .CO(n32), .S(n33) );
  HA1D0 U27 ( .A(n64), .B(n83), .CO(n34), .S(n35) );
  FA1D0 U28 ( .A(n42), .B(n74), .CI(n39), .CO(n36), .S(n37) );
  HA1D0 U29 ( .A(n65), .B(n84), .CO(n38), .S(n39) );
  FA1D0 U30 ( .A(n46), .B(n75), .CI(n43), .CO(n40), .S(n41) );
  HA1D0 U31 ( .A(n66), .B(n85), .CO(n42), .S(n43) );
  HA1D0 U33 ( .A(n67), .B(n86), .CO(n46), .S(n47) );
  FA1D0 U34 ( .A(n77), .B(n87), .CI(n51), .CO(n48), .S(n49) );
  FA1D0 U36 ( .A(n88), .B(n69), .CI(n78), .CO(n52), .S(n53) );
  HA1D0 U37 ( .A(n79), .B(n89), .CO(n54), .S(n55) );
  INVD1 U137 ( .I(n16), .ZN(n191) );
  AN2XD1 U139 ( .A1(n76), .A2(n47), .Z(n188) );
  XNR2D1 U140 ( .A1(b[3]), .A2(b[4]), .ZN(n227) );
  ND2D1 U142 ( .A1(b[1]), .A2(n203), .ZN(n204) );
  INVD1 U143 ( .I(b[3]), .ZN(n190) );
  INVD1 U144 ( .I(b[0]), .ZN(n203) );
  INVD1 U145 ( .I(a[8]), .ZN(n194) );
  INVD1 U146 ( .I(n22), .ZN(n189) );
  INVD1 U147 ( .I(a[10]), .ZN(n192) );
  INVD1 U148 ( .I(a[7]), .ZN(n195) );
  INVD1 U149 ( .I(a[0]), .ZN(n202) );
  INVD1 U150 ( .I(a[9]), .ZN(n193) );
  INVD1 U151 ( .I(a[1]), .ZN(n201) );
  INVD1 U152 ( .I(a[3]), .ZN(n199) );
  INVD1 U153 ( .I(a[2]), .ZN(n200) );
  INVD1 U154 ( .I(a[4]), .ZN(n198) );
  INVD1 U155 ( .I(a[5]), .ZN(n197) );
  INVD1 U156 ( .I(a[6]), .ZN(n196) );
  CKXOR2D1 U157 ( .A1(n47), .A2(n76), .Z(n45) );
  CKND0 U158 ( .I(n1), .ZN(product[16]) );
  NR2D0 U159 ( .A1(n202), .A2(n203), .ZN(product[0]) );
  OAI22D0 U160 ( .A1(a[0]), .A2(n204), .B1(n205), .B2(n203), .ZN(n91) );
  OAI22D0 U161 ( .A1(n205), .A2(n204), .B1(n206), .B2(n203), .ZN(n90) );
  CKXOR2D0 U162 ( .A1(b[1]), .A2(n201), .Z(n205) );
  OAI22D0 U163 ( .A1(n206), .A2(n204), .B1(n207), .B2(n203), .ZN(n89) );
  CKXOR2D0 U164 ( .A1(b[1]), .A2(n200), .Z(n206) );
  OAI22D0 U165 ( .A1(n207), .A2(n204), .B1(n208), .B2(n203), .ZN(n88) );
  CKXOR2D0 U166 ( .A1(b[1]), .A2(n199), .Z(n207) );
  OAI22D0 U167 ( .A1(n208), .A2(n204), .B1(n209), .B2(n203), .ZN(n87) );
  CKXOR2D0 U168 ( .A1(b[1]), .A2(n198), .Z(n208) );
  OAI22D0 U169 ( .A1(n209), .A2(n204), .B1(n210), .B2(n203), .ZN(n86) );
  CKXOR2D0 U170 ( .A1(b[1]), .A2(n197), .Z(n209) );
  OAI22D0 U171 ( .A1(n210), .A2(n204), .B1(n211), .B2(n203), .ZN(n85) );
  CKXOR2D0 U172 ( .A1(b[1]), .A2(n196), .Z(n210) );
  OAI22D0 U173 ( .A1(n211), .A2(n204), .B1(n212), .B2(n203), .ZN(n84) );
  CKXOR2D0 U174 ( .A1(b[1]), .A2(n195), .Z(n211) );
  OAI22D0 U175 ( .A1(n212), .A2(n204), .B1(n213), .B2(n203), .ZN(n83) );
  CKXOR2D0 U176 ( .A1(b[1]), .A2(n194), .Z(n212) );
  MOAI22D0 U177 ( .A1(n213), .A2(n204), .B1(n214), .B2(b[0]), .ZN(n82) );
  CKXOR2D0 U178 ( .A1(b[1]), .A2(n193), .Z(n213) );
  IOA21D0 U179 ( .A1(n203), .A2(n204), .B(n214), .ZN(n81) );
  CKXOR2D0 U180 ( .A1(b[1]), .A2(a[10]), .Z(n214) );
  NR2D0 U181 ( .A1(n215), .A2(n202), .ZN(n80) );
  OAI22D0 U182 ( .A1(n216), .A2(n217), .B1(n215), .B2(n218), .ZN(n79) );
  CKXOR2D0 U183 ( .A1(b[3]), .A2(n202), .Z(n216) );
  OAI22D0 U184 ( .A1(n218), .A2(n217), .B1(n215), .B2(n219), .ZN(n78) );
  CKXOR2D0 U185 ( .A1(b[3]), .A2(n201), .Z(n218) );
  OAI22D0 U186 ( .A1(n219), .A2(n217), .B1(n215), .B2(n220), .ZN(n77) );
  CKXOR2D0 U187 ( .A1(b[3]), .A2(n200), .Z(n219) );
  OAI22D0 U188 ( .A1(n220), .A2(n217), .B1(n215), .B2(n221), .ZN(n76) );
  CKXOR2D0 U189 ( .A1(b[3]), .A2(n199), .Z(n220) );
  OAI22D0 U190 ( .A1(n221), .A2(n217), .B1(n215), .B2(n222), .ZN(n75) );
  CKXOR2D0 U191 ( .A1(b[3]), .A2(n198), .Z(n221) );
  OAI22D0 U192 ( .A1(n222), .A2(n217), .B1(n215), .B2(n223), .ZN(n74) );
  CKXOR2D0 U193 ( .A1(b[3]), .A2(n197), .Z(n222) );
  OAI22D0 U194 ( .A1(n223), .A2(n217), .B1(n215), .B2(n224), .ZN(n73) );
  CKXOR2D0 U195 ( .A1(b[3]), .A2(n196), .Z(n223) );
  OAI22D0 U196 ( .A1(n224), .A2(n217), .B1(n215), .B2(n225), .ZN(n72) );
  CKXOR2D0 U197 ( .A1(b[3]), .A2(n195), .Z(n224) );
  AO21D0 U198 ( .A1(n217), .A2(n215), .B(n226), .Z(n70) );
  NR2D0 U199 ( .A1(n227), .A2(n202), .ZN(n69) );
  OAI22D0 U200 ( .A1(n202), .A2(n228), .B1(n227), .B2(n201), .ZN(n51) );
  OAI22D0 U201 ( .A1(n201), .A2(n228), .B1(n227), .B2(n200), .ZN(n67) );
  OAI22D0 U202 ( .A1(n200), .A2(n228), .B1(n227), .B2(n199), .ZN(n66) );
  OAI22D0 U203 ( .A1(n199), .A2(n228), .B1(n227), .B2(n198), .ZN(n65) );
  OAI22D0 U204 ( .A1(n198), .A2(n228), .B1(n227), .B2(n197), .ZN(n64) );
  OAI22D0 U205 ( .A1(n197), .A2(n228), .B1(n227), .B2(n196), .ZN(n63) );
  OAI22D0 U206 ( .A1(n195), .A2(n228), .B1(n227), .B2(n194), .ZN(n61) );
  OAI22D0 U207 ( .A1(n194), .A2(n228), .B1(n227), .B2(n193), .ZN(n60) );
  AO21D0 U208 ( .A1(n228), .A2(n227), .B(n192), .Z(n59) );
  IOA21D0 U209 ( .A1(n202), .A2(b[1]), .B(n204), .ZN(n58) );
  OAI32D0 U210 ( .A1(n190), .A2(a[0]), .A3(n215), .B1(n190), .B2(n217), .ZN(
        n57) );
  XNR2D0 U211 ( .A1(n229), .A2(n230), .ZN(n27) );
  CKND2D0 U212 ( .A1(n230), .A2(n229), .ZN(n26) );
  OA22D0 U213 ( .A1(n196), .A2(n228), .B1(n227), .B2(n195), .Z(n229) );
  OA22D0 U214 ( .A1(n225), .A2(n217), .B1(n215), .B2(n231), .Z(n230) );
  CKXOR2D0 U215 ( .A1(b[3]), .A2(n194), .Z(n225) );
  OAI22D0 U216 ( .A1(n215), .A2(n226), .B1(n231), .B2(n217), .ZN(n22) );
  CKXOR2D0 U218 ( .A1(b[3]), .A2(n193), .Z(n231) );
  CKXOR2D0 U219 ( .A1(n190), .A2(a[10]), .Z(n226) );
  OAI22D0 U220 ( .A1(n227), .A2(n192), .B1(n193), .B2(n228), .ZN(n16) );
  CKND2D0 U221 ( .A1(n227), .A2(b[4]), .ZN(n228) );
  OAI211D0 U138 ( .A1(b[2]), .A2(b[3]), .B(n233), .C(n215), .ZN(n217) );
  XNR2D0 U141 ( .A1(b[2]), .A2(b[1]), .ZN(n215) );
  CKND2D0 U217 ( .A1(b[2]), .A2(b[3]), .ZN(n233) );
endmodule


module oadm_runtime_plane_pruned_RESIDUAL_DROP12 ( x_mantissa, y_mantissa, 
        level, divide_mode, plane_exact );
  input [23:0] x_mantissa;
  input [23:0] y_mantissa;
  input [1:0] level;
  output [28:0] plane_exact;
  input divide_mode;
  wire   N94, N95, N96, N97, N98, N99, N100, N101, N102, N103, N104, N105,
         N106, N107, N108, N109, N110, N149, N150, N151, N152, N153, N154,
         N155, N156, N157, N158, N159, N160, N161, N162, N163, N164, N165, N83,
         N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, N72, N71, N70, N69,
         N68, N67, n49, n50, n51, n52, n53, n55, n57, n58, n59, n61, n10, n11,
         n15, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n35, n37, n38, n39, n40, n41, n42, n43, n44;
  wire   [4:1] x_midpoint;
  wire   [4:0] y_midpoint;
  wire   [22:19] x_residual;
  wire   [22:19] y_residual;
  wire   [16:7] x_product;
  wire   [16:0] y_product;
  wire   [9:0] midpoint_product;
  wire   [24:10] add_0_root_add_73_3_carry;
  wire   [24:9] sub_0_root_sub_73_carry;
  wire   [24:17] r418_carry;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1;

  OA21D1 U25 ( .A1(y_mantissa[21]), .A2(n41), .B(n51), .Z(n49) );
  CKXOR2D1 U28 ( .A1(y_midpoint[0]), .A2(y_mantissa[19]), .Z(y_residual[19])
         );
  AO211D1 U32 ( .A1(y_mantissa[22]), .A2(y_midpoint[0]), .B(n50), .C(n57), .Z(
        y_midpoint[3]) );
  OA21D1 U39 ( .A1(x_mantissa[21]), .A2(n41), .B(n59), .Z(n58) );
  CKXOR2D1 U43 ( .A1(y_midpoint[0]), .A2(x_mantissa[19]), .Z(x_residual[19])
         );
  AO211D1 U47 ( .A1(x_mantissa[22]), .A2(y_midpoint[0]), .B(n50), .C(n61), .Z(
        x_midpoint[3]) );
  oadm_runtime_plane_pruned_RESIDUAL_DROP12_DW_mult_uns_0 mult_69 ( .a({n44, 
        x_midpoint, y_midpoint[0]}), .b({n44, y_midpoint}), .product({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, midpoint_product})
         );
  oadm_runtime_plane_pruned_RESIDUAL_DROP12_DW_mult_tc_1 mult_60 ( .a({
        y_residual, y_mantissa[18:12]}), .b({n44, x_midpoint, y_midpoint[0]}), 
        .product(y_product) );
  oadm_runtime_plane_pruned_RESIDUAL_DROP12_DW_mult_tc_0 mult_58 ( .a({
        x_residual, x_mantissa[18:12]}), .b({n44, y_midpoint}), .product({
        x_product, N73, N72, N71, N70, N69, N68, N67}) );
  FA1D0 U12 ( .A(midpoint_product[9]), .B(x_product[16]), .CI(r418_carry[24]), 
        .S(N83) );
  AN2XD1 U13 ( .A1(x_product[7]), .A2(midpoint_product[0]), .Z(n10) );
  AN2XD1 U14 ( .A1(N67), .A2(y_product[0]), .Z(n11) );
  FA1D0 U17 ( .A(N83), .B(n32), .CI(sub_0_root_sub_73_carry[24]), .S(N110) );
  FA1D0 U18 ( .A(y_product[16]), .B(N83), .CI(add_0_root_add_73_3_carry[24]), 
        .S(N165) );
  INVD1 U19 ( .I(y_product[16]), .ZN(n32) );
  FA1D0 U26 ( .A(midpoint_product[7]), .B(x_product[14]), .CI(r418_carry[22]), 
        .CO(r418_carry[23]), .S(N81) );
  AO22D0 U27 ( .A1(N163), .A2(n15), .B1(N108), .B2(divide_mode), .Z(
        plane_exact[22]) );
  FA1D0 U29 ( .A(N81), .B(n30), .CI(sub_0_root_sub_73_carry[22]), .CO(
        sub_0_root_sub_73_carry[23]), .S(N108) );
  INVD1 U30 ( .I(y_product[14]), .ZN(n30) );
  FA1D0 U31 ( .A(midpoint_product[6]), .B(x_product[13]), .CI(r418_carry[21]), 
        .CO(r418_carry[22]), .S(N80) );
  FA1D0 U33 ( .A(y_product[14]), .B(N81), .CI(add_0_root_add_73_3_carry[22]), 
        .CO(add_0_root_add_73_3_carry[23]), .S(N163) );
  FA1D0 U34 ( .A(N80), .B(n29), .CI(sub_0_root_sub_73_carry[21]), .CO(
        sub_0_root_sub_73_carry[22]), .S(N107) );
  INVD1 U35 ( .I(y_product[13]), .ZN(n29) );
  FA1D0 U36 ( .A(midpoint_product[5]), .B(x_product[12]), .CI(r418_carry[20]), 
        .CO(r418_carry[21]), .S(N79) );
  FA1D0 U37 ( .A(y_product[13]), .B(N80), .CI(add_0_root_add_73_3_carry[21]), 
        .CO(add_0_root_add_73_3_carry[22]), .S(N162) );
  AO22D0 U38 ( .A1(N164), .A2(n15), .B1(N109), .B2(divide_mode), .Z(
        plane_exact[23]) );
  AO22D0 U40 ( .A1(N165), .A2(n15), .B1(N110), .B2(divide_mode), .Z(
        plane_exact[24]) );
  FA1D0 U41 ( .A(midpoint_product[8]), .B(x_product[15]), .CI(r418_carry[23]), 
        .CO(r418_carry[24]), .S(N82) );
  FA1D0 U42 ( .A(N82), .B(n31), .CI(sub_0_root_sub_73_carry[23]), .CO(
        sub_0_root_sub_73_carry[24]), .S(N109) );
  INVD1 U44 ( .I(y_product[15]), .ZN(n31) );
  FA1D0 U45 ( .A(N79), .B(n28), .CI(sub_0_root_sub_73_carry[20]), .CO(
        sub_0_root_sub_73_carry[21]), .S(N106) );
  INVD1 U46 ( .I(y_product[12]), .ZN(n28) );
  FA1D0 U48 ( .A(midpoint_product[4]), .B(x_product[11]), .CI(r418_carry[19]), 
        .CO(r418_carry[20]), .S(N78) );
  FA1D0 U49 ( .A(y_product[15]), .B(N82), .CI(add_0_root_add_73_3_carry[23]), 
        .CO(add_0_root_add_73_3_carry[24]), .S(N164) );
  FA1D0 U50 ( .A(y_product[12]), .B(N79), .CI(add_0_root_add_73_3_carry[20]), 
        .CO(add_0_root_add_73_3_carry[21]), .S(N161) );
  FA1D0 U51 ( .A(N78), .B(n27), .CI(sub_0_root_sub_73_carry[19]), .CO(
        sub_0_root_sub_73_carry[20]), .S(N105) );
  INVD1 U52 ( .I(y_product[11]), .ZN(n27) );
  FA1D0 U53 ( .A(midpoint_product[3]), .B(x_product[10]), .CI(r418_carry[18]), 
        .CO(r418_carry[19]), .S(N77) );
  FA1D0 U54 ( .A(N77), .B(n26), .CI(sub_0_root_sub_73_carry[18]), .CO(
        sub_0_root_sub_73_carry[19]), .S(N104) );
  INVD1 U55 ( .I(y_product[10]), .ZN(n26) );
  FA1D0 U56 ( .A(y_product[11]), .B(N78), .CI(add_0_root_add_73_3_carry[19]), 
        .CO(add_0_root_add_73_3_carry[20]), .S(N160) );
  FA1D0 U57 ( .A(midpoint_product[2]), .B(x_product[9]), .CI(r418_carry[17]), 
        .CO(r418_carry[18]), .S(N76) );
  FA1D0 U58 ( .A(N76), .B(n25), .CI(sub_0_root_sub_73_carry[17]), .CO(
        sub_0_root_sub_73_carry[18]), .S(N103) );
  INVD1 U59 ( .I(y_product[9]), .ZN(n25) );
  FA1D0 U60 ( .A(y_product[10]), .B(N77), .CI(add_0_root_add_73_3_carry[18]), 
        .CO(add_0_root_add_73_3_carry[19]), .S(N159) );
  FA1D0 U61 ( .A(N75), .B(n24), .CI(sub_0_root_sub_73_carry[16]), .CO(
        sub_0_root_sub_73_carry[17]), .S(N102) );
  INVD1 U62 ( .I(y_product[8]), .ZN(n24) );
  FA1D0 U63 ( .A(y_product[9]), .B(N76), .CI(add_0_root_add_73_3_carry[17]), 
        .CO(add_0_root_add_73_3_carry[18]), .S(N158) );
  AO22D0 U64 ( .A1(N162), .A2(n15), .B1(N107), .B2(divide_mode), .Z(
        plane_exact[21]) );
  FA1D0 U65 ( .A(y_product[8]), .B(N75), .CI(add_0_root_add_73_3_carry[16]), 
        .CO(add_0_root_add_73_3_carry[17]), .S(N157) );
  AO22D0 U66 ( .A1(N161), .A2(n15), .B1(N106), .B2(divide_mode), .Z(
        plane_exact[20]) );
  AO22D0 U67 ( .A1(N160), .A2(n15), .B1(N105), .B2(divide_mode), .Z(
        plane_exact[19]) );
  AO22D0 U68 ( .A1(N159), .A2(n15), .B1(N104), .B2(divide_mode), .Z(
        plane_exact[18]) );
  AO22D0 U69 ( .A1(N158), .A2(n15), .B1(N103), .B2(divide_mode), .Z(
        plane_exact[17]) );
  AO22D0 U70 ( .A1(N157), .A2(n15), .B1(N102), .B2(divide_mode), .Z(
        plane_exact[16]) );
  INVD1 U71 ( .I(divide_mode), .ZN(n15) );
  FA1D0 U77 ( .A(midpoint_product[1]), .B(x_product[8]), .CI(n10), .CO(
        r418_carry[17]), .S(N75) );
  FA1D0 U78 ( .A(N74), .B(n23), .CI(sub_0_root_sub_73_carry[15]), .CO(
        sub_0_root_sub_73_carry[16]), .S(N101) );
  INVD1 U79 ( .I(y_product[7]), .ZN(n23) );
  FA1D0 U80 ( .A(y_product[7]), .B(N74), .CI(add_0_root_add_73_3_carry[15]), 
        .CO(add_0_root_add_73_3_carry[16]), .S(N156) );
  ND3D1 U81 ( .A1(n42), .A2(n40), .A3(n38), .ZN(y_midpoint[4]) );
  FA1D0 U84 ( .A(N73), .B(n22), .CI(sub_0_root_sub_73_carry[14]), .CO(
        sub_0_root_sub_73_carry[15]), .S(N100) );
  INVD1 U85 ( .I(y_product[6]), .ZN(n22) );
  FA1D0 U86 ( .A(N72), .B(n21), .CI(sub_0_root_sub_73_carry[13]), .CO(
        sub_0_root_sub_73_carry[14]), .S(N99) );
  INVD1 U87 ( .I(y_product[5]), .ZN(n21) );
  FA1D0 U88 ( .A(N71), .B(n20), .CI(sub_0_root_sub_73_carry[12]), .CO(
        sub_0_root_sub_73_carry[13]), .S(N98) );
  INVD1 U89 ( .I(y_product[4]), .ZN(n20) );
  FA1D0 U90 ( .A(y_product[6]), .B(N73), .CI(add_0_root_add_73_3_carry[14]), 
        .CO(add_0_root_add_73_3_carry[15]), .S(N155) );
  ND3D1 U91 ( .A1(n42), .A2(n40), .A3(n37), .ZN(x_midpoint[4]) );
  FA1D0 U94 ( .A(y_product[5]), .B(N72), .CI(add_0_root_add_73_3_carry[13]), 
        .CO(add_0_root_add_73_3_carry[14]), .S(N154) );
  FA1D0 U95 ( .A(y_product[4]), .B(N71), .CI(add_0_root_add_73_3_carry[12]), 
        .CO(add_0_root_add_73_3_carry[13]), .S(N153) );
  FA1D0 U96 ( .A(N69), .B(n18), .CI(sub_0_root_sub_73_carry[10]), .CO(
        sub_0_root_sub_73_carry[11]), .S(N96) );
  INVD1 U97 ( .I(y_product[2]), .ZN(n18) );
  FA1D0 U98 ( .A(y_product[2]), .B(N69), .CI(add_0_root_add_73_3_carry[10]), 
        .CO(add_0_root_add_73_3_carry[11]), .S(N151) );
  AO22D0 U100 ( .A1(N94), .A2(divide_mode), .B1(N149), .B2(n15), .Z(
        plane_exact[8]) );
  INVD1 U102 ( .I(n55), .ZN(n41) );
  INVD1 U104 ( .I(n50), .ZN(n42) );
  FA1D0 U105 ( .A(N70), .B(n19), .CI(sub_0_root_sub_73_carry[11]), .CO(
        sub_0_root_sub_73_carry[12]), .S(N97) );
  INVD1 U106 ( .I(y_product[3]), .ZN(n19) );
  FA1D0 U107 ( .A(y_product[3]), .B(N70), .CI(add_0_root_add_73_3_carry[11]), 
        .CO(add_0_root_add_73_3_carry[12]), .S(N152) );
  FA1D0 U108 ( .A(N68), .B(n17), .CI(sub_0_root_sub_73_carry[9]), .CO(
        sub_0_root_sub_73_carry[10]), .S(N95) );
  INVD1 U110 ( .I(y_product[1]), .ZN(n17) );
  FA1D0 U112 ( .A(y_product[1]), .B(N68), .CI(n11), .CO(
        add_0_root_add_73_3_carry[10]), .S(N150) );
  OAI21D1 U113 ( .A1(n52), .A2(n33), .B(n59), .ZN(x_residual[20]) );
  NR2D1 U114 ( .A1(n50), .A2(n55), .ZN(n52) );
  OAI21D1 U115 ( .A1(n52), .A2(n35), .B(n51), .ZN(y_residual[20]) );
  AO22D0 U116 ( .A1(N156), .A2(n15), .B1(N101), .B2(divide_mode), .Z(
        plane_exact[15]) );
  AO22D0 U117 ( .A1(N155), .A2(n15), .B1(N100), .B2(divide_mode), .Z(
        plane_exact[14]) );
  AO22D0 U118 ( .A1(N99), .A2(divide_mode), .B1(N154), .B2(n15), .Z(
        plane_exact[13]) );
  AO22D0 U119 ( .A1(N98), .A2(divide_mode), .B1(N153), .B2(n15), .Z(
        plane_exact[12]) );
  AO22D0 U120 ( .A1(N97), .A2(divide_mode), .B1(N152), .B2(n15), .Z(
        plane_exact[11]) );
  AO22D0 U121 ( .A1(N96), .A2(divide_mode), .B1(N151), .B2(n15), .Z(
        plane_exact[10]) );
  AO22D0 U122 ( .A1(divide_mode), .A2(N95), .B1(N150), .B2(n15), .Z(
        plane_exact[9]) );
  INVD1 U125 ( .I(level[0]), .ZN(n43) );
  NR2D1 U129 ( .A1(level[0]), .A2(level[1]), .ZN(n50) );
  AO221D0 U130 ( .A1(y_mantissa[21]), .A2(y_midpoint[0]), .B1(y_mantissa[21]), 
        .B2(n53), .C(n55), .Z(y_midpoint[2]) );
  AO221D0 U131 ( .A1(x_mantissa[21]), .A2(y_midpoint[0]), .B1(x_mantissa[21]), 
        .B2(n53), .C(n55), .Z(x_midpoint[2]) );
  IOA21D1 U134 ( .A1(n50), .A2(x_mantissa[21]), .B(n58), .ZN(x_residual[21])
         );
  INVD1 U137 ( .I(x_mantissa[20]), .ZN(n33) );
  IOA21D1 U138 ( .A1(n50), .A2(y_mantissa[21]), .B(n49), .ZN(y_residual[21])
         );
  OAI21D1 U139 ( .A1(x_mantissa[22]), .A2(n42), .B(n58), .ZN(x_residual[22])
         );
  INVD1 U140 ( .I(y_mantissa[20]), .ZN(n35) );
  OAI21D1 U141 ( .A1(y_mantissa[22]), .A2(n42), .B(n49), .ZN(y_residual[22])
         );
  TIEL U142 ( .ZN(n44) );
  CKXOR2D1 U144 ( .A1(N67), .A2(y_product[0]), .Z(N149) );
  CKXOR2D1 U145 ( .A1(x_product[7]), .A2(midpoint_product[0]), .Z(N74) );
  AO21D1 U147 ( .A1(y_mantissa[20]), .A2(y_midpoint[0]), .B(n53), .Z(
        y_midpoint[1]) );
  AO21D1 U148 ( .A1(x_mantissa[20]), .A2(y_midpoint[0]), .B(n53), .Z(
        x_midpoint[1]) );
  CKXOR2D0 U3 ( .A1(N67), .A2(y_product[0]), .Z(N94) );
  IND2D0 U4 ( .A1(N67), .B1(y_product[0]), .ZN(sub_0_root_sub_73_carry[9]) );
  MAOI22D0 U5 ( .A1(n35), .A2(n53), .B1(y_mantissa[19]), .B2(n40), .ZN(n51) );
  MAOI22D0 U6 ( .A1(n33), .A2(n53), .B1(x_mantissa[19]), .B2(n40), .ZN(n59) );
  CKND0 U7 ( .I(n40), .ZN(y_midpoint[0]) );
  CKND2D0 U8 ( .A1(level[0]), .A2(level[1]), .ZN(n40) );
  CKAN2D0 U9 ( .A1(n41), .A2(n39), .Z(n37) );
  CKAN2D0 U10 ( .A1(n41), .A2(n39), .Z(n38) );
  OA21D0 U11 ( .A1(n55), .A2(n53), .B(x_mantissa[22]), .Z(n61) );
  CKND0 U15 ( .I(n39), .ZN(n53) );
  NR2D0 U16 ( .A1(n43), .A2(level[1]), .ZN(n55) );
  OA21D0 U20 ( .A1(n55), .A2(n53), .B(y_mantissa[22]), .Z(n57) );
  CKND2D0 U21 ( .A1(n43), .A2(level[1]), .ZN(n39) );
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
         N12, N11, N10, n1, n2, n35, n410, n51, n60, n70, n77, n78, n79;
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
  INVD1 U29 ( .I(divide_mode), .ZN(n78) );
  CKBD1 U30 ( .I(result_fraction[15]), .Z(result[15]) );
  CKBD1 U31 ( .I(result_fraction[16]), .Z(result[16]) );
  CKBD1 U32 ( .I(result_fraction[17]), .Z(result[17]) );
  CKBD1 U33 ( .I(result_fraction[18]), .Z(result[18]) );
  CKBD1 U34 ( .I(result_fraction[19]), .Z(result[19]) );
  CKBD1 U35 ( .I(result_fraction[11]), .Z(result[11]) );
  CKBD1 U36 ( .I(result_fraction[12]), .Z(result[12]) );
  CKBD1 U37 ( .I(result_fraction[13]), .Z(result[13]) );
  CKBD1 U38 ( .I(result_fraction[14]), .Z(result[14]) );
  CKBD1 U39 ( .I(result_fraction[9]), .Z(result[9]) );
  CKBD1 U40 ( .I(result_fraction[8]), .Z(result[8]) );
  CKBD1 U41 ( .I(result_fraction[7]), .Z(result[7]) );
  AO22D0 U42 ( .A1(N49), .A2(n78), .B1(N25), .B2(divide_mode), .Z(result[29])
         );
  AO22D0 U43 ( .A1(N48), .A2(n78), .B1(N24), .B2(divide_mode), .Z(result[28])
         );
  AO22D0 U44 ( .A1(N47), .A2(n78), .B1(N23), .B2(divide_mode), .Z(result[27])
         );
  AO22D0 U45 ( .A1(N46), .A2(n78), .B1(N22), .B2(divide_mode), .Z(result[26])
         );
  AO22D0 U46 ( .A1(N45), .A2(n78), .B1(N21), .B2(divide_mode), .Z(result[25])
         );
  AO22D0 U47 ( .A1(N44), .A2(n78), .B1(N20), .B2(divide_mode), .Z(result[24])
         );
  CKBD1 U48 ( .I(result_fraction[10]), .Z(result[10]) );
  FA1D0 U49 ( .A(N4), .B(exponent_adjust[1]), .CI(n1), .CO(
        add_0_root_add_0_root_add_22_2_carry[2]), .S(N20) );
  FA1D0 U50 ( .A(N5), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[2]), .CO(
        add_0_root_add_0_root_add_22_2_carry[3]), .S(N21) );
  FA1D0 U51 ( .A(N6), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[3]), .CO(
        add_0_root_add_0_root_add_22_2_carry[4]), .S(N22) );
  FA1D0 U52 ( .A(N7), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[4]), .CO(
        add_0_root_add_0_root_add_22_2_carry[5]), .S(N23) );
  FA1D0 U53 ( .A(N8), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[5]), .CO(
        add_0_root_add_0_root_add_22_2_carry[6]), .S(N24) );
  FA1D0 U54 ( .A(N9), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[6]), .CO(
        add_0_root_add_0_root_add_22_2_carry[7]), .S(N25) );
  FA1D0 U55 ( .A(N28), .B(exponent_adjust[1]), .CI(n2), .CO(
        add_0_root_add_0_root_add_25_2_carry[2]), .S(N44) );
  FA1D0 U56 ( .A(N29), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[2]), .CO(
        add_0_root_add_0_root_add_25_2_carry[3]), .S(N45) );
  FA1D0 U57 ( .A(N30), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[3]), .CO(
        add_0_root_add_0_root_add_25_2_carry[4]), .S(N46) );
  FA1D0 U58 ( .A(N31), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[4]), .CO(
        add_0_root_add_0_root_add_25_2_carry[5]), .S(N47) );
  FA1D0 U59 ( .A(N32), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[5]), .CO(
        add_0_root_add_0_root_add_25_2_carry[6]), .S(N48) );
  FA1D0 U60 ( .A(N33), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[6]), .CO(
        add_0_root_add_0_root_add_25_2_carry[7]), .S(N49) );
  AO22D0 U61 ( .A1(N43), .A2(n78), .B1(N19), .B2(divide_mode), .Z(result[23])
         );
  AO22D0 U62 ( .A1(N50), .A2(n78), .B1(divide_mode), .B2(N26), .Z(result[30])
         );
  XOR3D1 U63 ( .A1(N34), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_25_2_carry[7]), .Z(N50) );
  XOR3D1 U64 ( .A1(N10), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_22_2_carry[7]), .Z(N26) );
  CKBD1 U65 ( .I(y[22]), .Z(fraction_y[22]) );
  CKBD1 U66 ( .I(y[21]), .Z(fraction_y[21]) );
  AN2XD1 U67 ( .A1(y[23]), .A2(y[24]), .Z(n35) );
  INVD1 U68 ( .I(y[29]), .ZN(N17) );
  INVD0 U69 ( .I(y[24]), .ZN(N12) );
  INVD1 U70 ( .I(y[25]), .ZN(N13) );
  INVD1 U71 ( .I(y[26]), .ZN(N14) );
  INVD1 U72 ( .I(y[27]), .ZN(N15) );
  INVD1 U73 ( .I(y[28]), .ZN(N16) );
  AN2XD1 U74 ( .A1(n35), .A2(y[25]), .Z(n410) );
  AN2XD1 U75 ( .A1(n410), .A2(y[26]), .Z(n51) );
  AN2XD1 U76 ( .A1(n51), .A2(y[27]), .Z(n60) );
  AN2XD1 U77 ( .A1(n60), .A2(y[28]), .Z(n70) );
  CKXOR2D1 U78 ( .A1(y[30]), .A2(n77), .Z(N42) );
  ND2D1 U79 ( .A1(n70), .A2(y[29]), .ZN(n77) );
  CKBD1 U87 ( .I(x[22]), .Z(fraction_x[22]) );
  CKBD1 U88 ( .I(x[21]), .Z(fraction_x[21]) );
  CKBD1 U89 ( .I(x[20]), .Z(fraction_x[20]) );
  CKBD1 U90 ( .I(x[19]), .Z(fraction_x[19]) );
  CKBD1 U91 ( .I(x[18]), .Z(fraction_x[18]) );
  CKBD1 U92 ( .I(x[17]), .Z(fraction_x[17]) );
  CKBD1 U93 ( .I(x[16]), .Z(fraction_x[16]) );
  CKBD1 U94 ( .I(x[15]), .Z(fraction_x[15]) );
  CKBD1 U95 ( .I(x[14]), .Z(fraction_x[14]) );
  CKBD1 U96 ( .I(x[13]), .Z(fraction_x[13]) );
  CKBD1 U97 ( .I(x[12]), .Z(fraction_x[12]) );
  CKBD1 U98 ( .I(y[20]), .Z(fraction_y[20]) );
  CKBD1 U99 ( .I(y[19]), .Z(fraction_y[19]) );
  CKBD1 U100 ( .I(y[18]), .Z(fraction_y[18]) );
  CKBD1 U101 ( .I(y[17]), .Z(fraction_y[17]) );
  CKBD1 U102 ( .I(y[16]), .Z(fraction_y[16]) );
  CKBD1 U103 ( .I(y[15]), .Z(fraction_y[15]) );
  CKBD1 U104 ( .I(y[14]), .Z(fraction_y[14]) );
  CKBD1 U105 ( .I(y[13]), .Z(fraction_y[13]) );
  CKBD1 U106 ( .I(y[12]), .Z(fraction_y[12]) );
  CKBD1 U107 ( .I(result_fraction[22]), .Z(result[22]) );
  CKBD1 U108 ( .I(result_fraction[21]), .Z(result[21]) );
  CKBD1 U109 ( .I(result_fraction[20]), .Z(result[20]) );
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



    module oadm_runtime_drop_sweep_RESIDUAL_DROP12_SCALE_DROP16_DW_mult_uns_0_DW_mult_uns_1 ( 
        a, b, product );
  input [8:0] a;
  input [6:0] b;
  output [15:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n17,
         n18, n19, n20, n21, n23, n24, n25, n26, n27, n28, n29, n31, n32, n33,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n199, n200, n201, n202, n203, n204, n205,
         n206, n207, n208, n209, n210, n211, n212, n213, n214, n216, n217,
         n218, n219, n220, n221, n222, n223, n224, n225, n226, n227, n228,
         n229, n230, n231, n232, n233, n234, n235, n236, n237, n238, n239,
         n240, n241, n242, n243, n244, n245, n246, n247, n248, n251, n252,
         n253;

  FA1D0 U3 ( .A(n19), .B(n18), .CI(n3), .CO(n2), .S(product[14]) );
  FA1D0 U4 ( .A(n24), .B(n20), .CI(n4), .CO(n3), .S(product[13]) );
  FA1D0 U5 ( .A(n27), .B(n25), .CI(n5), .CO(n4), .S(product[12]) );
  FA1D0 U6 ( .A(n32), .B(n28), .CI(n6), .CO(n5), .S(product[11]) );
  FA1D0 U7 ( .A(n36), .B(n33), .CI(n7), .CO(n6), .S(product[10]) );
  FA1D0 U8 ( .A(n39), .B(n37), .CI(n8), .CO(n7), .S(product[9]) );
  FA1D0 U9 ( .A(n42), .B(n40), .CI(n9), .CO(n8), .S(product[8]) );
  FA1D0 U10 ( .A(n45), .B(n43), .CI(n10), .CO(n9), .S(product[7]) );
  FA1D0 U11 ( .A(n46), .B(n47), .CI(n11), .CO(n10), .S(product[6]) );
  FA1D0 U12 ( .A(n48), .B(n51), .CI(n12), .CO(n11), .S(product[5]) );
  FA1D0 U13 ( .A(n52), .B(n53), .CI(n13), .CO(n12), .S(product[4]) );
  FA1D0 U14 ( .A(n54), .B(n56), .CI(n14), .CO(n13), .S(product[3]) );
  FA1D0 U15 ( .A(n96), .B(n87), .CI(n15), .CO(n14), .S(product[2]) );
  HA1D0 U16 ( .A(n97), .B(n57), .CO(n15), .S(product[1]) );
  FA1D0 U18 ( .A(n59), .B(n21), .CI(n66), .CO(n17), .S(n18) );
  FA1D0 U19 ( .A(n201), .B(n67), .CI(n23), .CO(n19), .S(n20) );
  CMPE42D1 U21 ( .A(n60), .B(n29), .C(n68), .CIX(n26), .D(n77), .CO(n24), 
        .COX(n23), .S(n25) );
  CMPE42D1 U22 ( .A(n78), .B(n61), .C(n69), .CIX(n31), .D(n205), .CO(n27), 
        .COX(n26), .S(n28) );
  CMPE42D1 U24 ( .A(n70), .B(n79), .C(n213), .CIX(n35), .D(n205), .CO(n32), 
        .COX(n31), .S(n33) );
  CMPE42D1 U26 ( .A(n89), .B(n62), .C(n71), .CIX(n38), .D(n80), .CO(n36), 
        .COX(n35), .S(n37) );
  CMPE42D1 U27 ( .A(n90), .B(n63), .C(n72), .CIX(n41), .D(n81), .CO(n39), 
        .COX(n38), .S(n40) );
  CMPE42D1 U28 ( .A(n91), .B(n64), .C(n73), .CIX(n44), .D(n82), .CO(n42), 
        .COX(n41), .S(n43) );
  CMPE42D1 U29 ( .A(n92), .B(n65), .C(n74), .CIX(n49), .D(n83), .CO(n45), 
        .COX(n44), .S(n46) );
  FA1D0 U30 ( .A(n84), .B(n93), .CI(n50), .CO(n47), .S(n48) );
  HA1D0 U31 ( .A(n55), .B(n75), .CO(n49), .S(n50) );
  FA1D0 U32 ( .A(n94), .B(n76), .CI(n85), .CO(n51), .S(n52) );
  HA1D0 U33 ( .A(n86), .B(n95), .CO(n53), .S(n54) );
  INVD1 U147 ( .I(a[6]), .ZN(n203) );
  INVD1 U148 ( .I(a[8]), .ZN(n200) );
  INVD1 U149 ( .I(a[7]), .ZN(n202) );
  INVD1 U150 ( .I(a[5]), .ZN(n204) );
  INVD1 U151 ( .I(a[4]), .ZN(n206) );
  INVD1 U152 ( .I(a[3]), .ZN(n207) );
  INVD1 U153 ( .I(a[2]), .ZN(n208) );
  INVD1 U154 ( .I(a[1]), .ZN(n209) );
  INVD1 U155 ( .I(a[0]), .ZN(n210) );
  INVD1 U156 ( .I(n29), .ZN(n205) );
  INVD1 U157 ( .I(n21), .ZN(n201) );
  INVD1 U159 ( .I(b[1]), .ZN(n213) );
  ND2D1 U160 ( .A1(b[1]), .A2(n214), .ZN(n217) );
  INVD1 U164 ( .I(n199), .ZN(n212) );
  INVD1 U165 ( .I(b[5]), .ZN(n211) );
  CKXOR2D1 U166 ( .A1(n211), .A2(b[6]), .Z(n248) );
  INVD1 U167 ( .I(b[0]), .ZN(n214) );
  CKBD1 U168 ( .I(b[3]), .Z(n199) );
  NR2D0 U171 ( .A1(n210), .A2(n214), .ZN(product[0]) );
  OAI22D0 U172 ( .A1(a[0]), .A2(n217), .B1(n218), .B2(n214), .ZN(n97) );
  OAI22D0 U173 ( .A1(n218), .A2(n217), .B1(n219), .B2(n214), .ZN(n96) );
  CKXOR2D0 U174 ( .A1(b[1]), .A2(n209), .Z(n218) );
  OAI22D0 U175 ( .A1(n219), .A2(n217), .B1(n220), .B2(n214), .ZN(n95) );
  CKXOR2D0 U176 ( .A1(b[1]), .A2(n208), .Z(n219) );
  OAI22D0 U177 ( .A1(n220), .A2(n217), .B1(n221), .B2(n214), .ZN(n94) );
  CKXOR2D0 U178 ( .A1(b[1]), .A2(n207), .Z(n220) );
  OAI22D0 U179 ( .A1(n221), .A2(n217), .B1(n222), .B2(n214), .ZN(n93) );
  CKXOR2D0 U180 ( .A1(b[1]), .A2(n206), .Z(n221) );
  OAI22D0 U181 ( .A1(n222), .A2(n217), .B1(n223), .B2(n214), .ZN(n92) );
  CKXOR2D0 U182 ( .A1(b[1]), .A2(n204), .Z(n222) );
  OAI22D0 U183 ( .A1(n223), .A2(n217), .B1(n224), .B2(n214), .ZN(n91) );
  CKXOR2D0 U184 ( .A1(b[1]), .A2(n203), .Z(n223) );
  OAI22D0 U185 ( .A1(n224), .A2(n217), .B1(n225), .B2(n214), .ZN(n90) );
  CKXOR2D0 U186 ( .A1(b[1]), .A2(n202), .Z(n224) );
  OAI22D0 U187 ( .A1(n225), .A2(n217), .B1(n213), .B2(n214), .ZN(n89) );
  CKXOR2D0 U188 ( .A1(b[1]), .A2(n200), .Z(n225) );
  NR2D0 U189 ( .A1(n226), .A2(n210), .ZN(n87) );
  OAI22D0 U190 ( .A1(n227), .A2(n228), .B1(n226), .B2(n229), .ZN(n86) );
  CKXOR2D0 U191 ( .A1(n199), .A2(n210), .Z(n227) );
  OAI22D0 U192 ( .A1(n229), .A2(n228), .B1(n226), .B2(n230), .ZN(n85) );
  CKXOR2D0 U193 ( .A1(n199), .A2(n209), .Z(n229) );
  OAI22D0 U194 ( .A1(n230), .A2(n228), .B1(n226), .B2(n231), .ZN(n84) );
  CKXOR2D0 U195 ( .A1(n199), .A2(n208), .Z(n230) );
  OAI22D0 U196 ( .A1(n231), .A2(n228), .B1(n226), .B2(n232), .ZN(n83) );
  CKXOR2D0 U197 ( .A1(n199), .A2(n207), .Z(n231) );
  OAI22D0 U198 ( .A1(n232), .A2(n228), .B1(n226), .B2(n233), .ZN(n82) );
  CKXOR2D0 U199 ( .A1(n199), .A2(n206), .Z(n232) );
  OAI22D0 U200 ( .A1(n233), .A2(n228), .B1(n226), .B2(n234), .ZN(n81) );
  CKXOR2D0 U201 ( .A1(n199), .A2(n204), .Z(n233) );
  OAI22D0 U202 ( .A1(n234), .A2(n228), .B1(n226), .B2(n235), .ZN(n80) );
  CKXOR2D0 U203 ( .A1(n199), .A2(n203), .Z(n234) );
  OAI22D0 U204 ( .A1(n235), .A2(n228), .B1(n226), .B2(n236), .ZN(n79) );
  CKXOR2D0 U205 ( .A1(n199), .A2(n202), .Z(n235) );
  OAI22D0 U206 ( .A1(n236), .A2(n228), .B1(n226), .B2(n212), .ZN(n78) );
  CKXOR2D0 U207 ( .A1(n199), .A2(n200), .Z(n236) );
  AO21D0 U208 ( .A1(n228), .A2(n226), .B(n212), .Z(n77) );
  NR2D0 U209 ( .A1(n237), .A2(n210), .ZN(n76) );
  OAI22D0 U210 ( .A1(n238), .A2(n239), .B1(n237), .B2(n240), .ZN(n75) );
  CKXOR2D0 U211 ( .A1(b[5]), .A2(n210), .Z(n238) );
  OAI22D0 U212 ( .A1(n240), .A2(n239), .B1(n237), .B2(n241), .ZN(n74) );
  CKXOR2D0 U213 ( .A1(b[5]), .A2(n209), .Z(n240) );
  OAI22D0 U214 ( .A1(n241), .A2(n239), .B1(n237), .B2(n242), .ZN(n73) );
  CKXOR2D0 U215 ( .A1(b[5]), .A2(n208), .Z(n241) );
  OAI22D0 U216 ( .A1(n242), .A2(n239), .B1(n237), .B2(n243), .ZN(n72) );
  CKXOR2D0 U217 ( .A1(b[5]), .A2(n207), .Z(n242) );
  OAI22D0 U218 ( .A1(n243), .A2(n239), .B1(n237), .B2(n244), .ZN(n71) );
  CKXOR2D0 U219 ( .A1(b[5]), .A2(n206), .Z(n243) );
  OAI22D0 U220 ( .A1(n244), .A2(n239), .B1(n237), .B2(n245), .ZN(n70) );
  CKXOR2D0 U221 ( .A1(b[5]), .A2(n204), .Z(n244) );
  OAI22D0 U222 ( .A1(n245), .A2(n239), .B1(n237), .B2(n246), .ZN(n69) );
  CKXOR2D0 U223 ( .A1(b[5]), .A2(n203), .Z(n245) );
  OAI22D0 U224 ( .A1(n246), .A2(n239), .B1(n237), .B2(n247), .ZN(n68) );
  CKXOR2D0 U225 ( .A1(b[5]), .A2(n202), .Z(n246) );
  OAI22D0 U226 ( .A1(n247), .A2(n239), .B1(n237), .B2(n211), .ZN(n67) );
  CKXOR2D0 U227 ( .A1(b[5]), .A2(n200), .Z(n247) );
  AO21D0 U228 ( .A1(n239), .A2(n237), .B(n211), .Z(n66) );
  NR2D0 U229 ( .A1(n248), .A2(n210), .ZN(n65) );
  OAI22D0 U230 ( .A1(n216), .A2(n210), .B1(n248), .B2(n209), .ZN(n64) );
  OAI22D0 U231 ( .A1(n216), .A2(n209), .B1(n248), .B2(n208), .ZN(n63) );
  OAI22D0 U232 ( .A1(n216), .A2(n208), .B1(n248), .B2(n207), .ZN(n62) );
  OAI22D0 U233 ( .A1(n216), .A2(n206), .B1(n248), .B2(n204), .ZN(n61) );
  OAI22D0 U234 ( .A1(n216), .A2(n204), .B1(n248), .B2(n203), .ZN(n60) );
  OAI22D0 U235 ( .A1(n216), .A2(n202), .B1(n248), .B2(n200), .ZN(n59) );
  OAI21D0 U236 ( .A1(a[0]), .A2(n213), .B(n217), .ZN(n57) );
  OAI32D0 U237 ( .A1(n212), .A2(a[0]), .A3(n226), .B1(n212), .B2(n228), .ZN(
        n56) );
  OAI32D0 U239 ( .A1(n211), .A2(a[0]), .A3(n237), .B1(n211), .B2(n239), .ZN(
        n55) );
  OAI22D0 U241 ( .A1(n216), .A2(n207), .B1(n248), .B2(n206), .ZN(n29) );
  OAI22D0 U242 ( .A1(n216), .A2(n203), .B1(n248), .B2(n202), .ZN(n21) );
  CKND2D0 U243 ( .A1(n248), .A2(b[6]), .ZN(n216) );
  XNR3D0 U158 ( .A1(n2), .A2(n251), .A3(n17), .ZN(product[15]) );
  NR2D0 U161 ( .A1(n200), .A2(n216), .ZN(n251) );
  OAI211D0 U162 ( .A1(b[4]), .A2(b[5]), .B(n237), .C(n252), .ZN(n239) );
  CKND2D0 U163 ( .A1(b[4]), .A2(b[5]), .ZN(n252) );
  CKXOR2D0 U169 ( .A1(b[4]), .A2(n212), .Z(n237) );
  OAI211D0 U170 ( .A1(b[2]), .A2(n199), .B(n226), .C(n253), .ZN(n228) );
  CKND2D0 U238 ( .A1(b[2]), .A2(n199), .ZN(n253) );
  CKXOR2D0 U240 ( .A1(b[2]), .A2(n213), .Z(n226) );
endmodule


module oadm_runtime_drop_sweep_RESIDUAL_DROP12_SCALE_DROP16 ( x, y, level, 
        divide_mode, result );
  input [31:0] x;
  input [31:0] y;
  input [1:0] level;
  output [31:0] result;
  input divide_mode;
  wire   n14, n15, n16, n17, n18, n19, n20, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n1,
         n2, n3, n5, n6, n7, n8, n9, n10, n11, n12, n13, n21, n22, n23;
  wire   [22:12] x_mantissa;
  wire   [22:12] y_mantissa;
  wire   [24:8] plane_full;
  wire   [6:0] coefficient;
  wire   [15:0] reduced_scale_product;
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
        SYNOPSYS_UNCONNECTED__42;

  AN2XD1 U77 ( .A1(n66), .A2(n21), .Z(n62) );
  OA21D1 U79 ( .A1(n63), .A2(n69), .B(n11), .Z(n68) );
  AO21D1 U82 ( .A1(n13), .A2(n71), .B(n75), .Z(n73) );
  AN2XD1 U85 ( .A1(n78), .A2(n23), .Z(n74) );
  AO31D1 U92 ( .A1(y_mantissa[21]), .A2(n11), .A3(n13), .B(n75), .Z(n80) );
  AN2XD1 U98 ( .A1(n71), .A2(y_mantissa[20]), .Z(n77) );
  oadm_runtime_plane_pruned_RESIDUAL_DROP12 plane ( .x_mantissa({1'b0, 
        x_mantissa, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .y_mantissa({1'b0, y_mantissa, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .level(level), 
        .divide_mode(n1), .plane_exact({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, plane_full, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11}) );
  fp32_normal_finite_wrapper fp_wrapper ( .x({x[31:12], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y({y[31:12], 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .divide_mode(n1), .fraction_x({x_mantissa, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15, SYNOPSYS_UNCONNECTED__16, 
        SYNOPSYS_UNCONNECTED__17, SYNOPSYS_UNCONNECTED__18, 
        SYNOPSYS_UNCONNECTED__19, SYNOPSYS_UNCONNECTED__20, 
        SYNOPSYS_UNCONNECTED__21, SYNOPSYS_UNCONNECTED__22, 
        SYNOPSYS_UNCONNECTED__23}), .fraction_y({y_mantissa, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31, 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35}), 
        .result_fraction({normalized_fraction, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .exponent_adjust({exponent_adjust[2], exponent_adjust[2], 
        exponent_adjust[0]}), .result({result[31:7], SYNOPSYS_UNCONNECTED__36, 
        SYNOPSYS_UNCONNECTED__37, SYNOPSYS_UNCONNECTED__38, 
        SYNOPSYS_UNCONNECTED__39, SYNOPSYS_UNCONNECTED__40, 
        SYNOPSYS_UNCONNECTED__41, SYNOPSYS_UNCONNECTED__42}) );
  oadm_runtime_drop_sweep_RESIDUAL_DROP12_SCALE_DROP16_DW_mult_uns_0_DW_mult_uns_1 mult_56 ( 
        .a(plane_full[24:16]), .b(coefficient), .product(reduced_scale_product) );
  ND2D1 U3 ( .A1(n6), .A2(n36), .ZN(exponent_adjust[2]) );
  INVD1 U4 ( .I(n18), .ZN(n6) );
  INVD1 U5 ( .I(n20), .ZN(n5) );
  INVD1 U6 ( .I(n36), .ZN(n8) );
  ND2D1 U7 ( .A1(n7), .A2(plane_full[8]), .ZN(n3) );
  INR3D0 U8 ( .A1(n34), .B1(n33), .B2(n7), .ZN(n18) );
  INVD1 U9 ( .I(n16), .ZN(n7) );
  ND3D1 U10 ( .A1(n34), .A2(n33), .A3(n16), .ZN(n36) );
  ND2D1 U11 ( .A1(n16), .A2(n6), .ZN(exponent_adjust[0]) );
  OAI221D0 U12 ( .A1(n49), .A2(n5), .B1(n16), .B2(n47), .C(n52), .ZN(
        normalized_fraction[15]) );
  OA22D0 U13 ( .A1(n36), .A2(n53), .B1(n6), .B2(n51), .Z(n52) );
  OAI221D0 U14 ( .A1(n47), .A2(n5), .B1(n16), .B2(n45), .C(n50), .ZN(
        normalized_fraction[16]) );
  OA22D0 U15 ( .A1(n36), .A2(n51), .B1(n6), .B2(n49), .Z(n50) );
  OAI221D0 U16 ( .A1(n45), .A2(n5), .B1(n16), .B2(n42), .C(n48), .ZN(
        normalized_fraction[17]) );
  OA22D0 U17 ( .A1(n36), .A2(n49), .B1(n6), .B2(n47), .Z(n48) );
  OAI221D0 U18 ( .A1(n42), .A2(n5), .B1(n16), .B2(n40), .C(n46), .ZN(
        normalized_fraction[18]) );
  OA22D0 U19 ( .A1(n36), .A2(n47), .B1(n6), .B2(n45), .Z(n46) );
  OAI221D0 U20 ( .A1(n40), .A2(n5), .B1(n16), .B2(n37), .C(n44), .ZN(
        normalized_fraction[19]) );
  OA22D0 U21 ( .A1(n36), .A2(n45), .B1(n6), .B2(n42), .Z(n44) );
  OAI221D0 U22 ( .A1(n57), .A2(n5), .B1(n16), .B2(n55), .C(n59), .ZN(
        normalized_fraction[11]) );
  OA22D0 U23 ( .A1(n36), .A2(n14), .B1(n6), .B2(n17), .Z(n59) );
  OAI221D0 U24 ( .A1(n55), .A2(n5), .B1(n16), .B2(n53), .C(n58), .ZN(
        normalized_fraction[12]) );
  OA22D0 U25 ( .A1(n36), .A2(n17), .B1(n6), .B2(n57), .Z(n58) );
  OAI221D0 U26 ( .A1(n53), .A2(n5), .B1(n16), .B2(n51), .C(n56), .ZN(
        normalized_fraction[13]) );
  OA22D0 U27 ( .A1(n36), .A2(n57), .B1(n6), .B2(n55), .Z(n56) );
  OAI221D0 U28 ( .A1(n51), .A2(n5), .B1(n16), .B2(n49), .C(n54), .ZN(
        normalized_fraction[14]) );
  OA22D0 U29 ( .A1(n36), .A2(n55), .B1(n6), .B2(n53), .Z(n54) );
  OAI221D0 U30 ( .A1(n38), .A2(n5), .B1(n16), .B2(n33), .C(n39), .ZN(
        normalized_fraction[21]) );
  OA22D0 U31 ( .A1(n36), .A2(n40), .B1(n6), .B2(n37), .Z(n39) );
  OAI221D0 U32 ( .A1(n33), .A2(n5), .B1(n16), .B2(n34), .C(n35), .ZN(
        normalized_fraction[22]) );
  OA22D0 U33 ( .A1(n36), .A2(n37), .B1(n6), .B2(n38), .Z(n35) );
  OAI221D0 U34 ( .A1(n37), .A2(n5), .B1(n16), .B2(n38), .C(n41), .ZN(
        normalized_fraction[20]) );
  OA22D0 U35 ( .A1(n36), .A2(n42), .B1(n6), .B2(n40), .Z(n41) );
  OAI222D0 U36 ( .A1(n14), .A2(n5), .B1(n1), .B2(n15), .C1(n16), .C2(n17), 
        .ZN(normalized_fraction[9]) );
  ND2D1 U37 ( .A1(plane_full[8]), .A2(n18), .ZN(n15) );
  NR2D1 U38 ( .A1(n7), .A2(n34), .ZN(n20) );
  OAI22D1 U39 ( .A1(n16), .A2(n14), .B1(n1), .B2(n19), .ZN(
        normalized_fraction[8]) );
  ND2D1 U40 ( .A1(n20), .A2(plane_full[8]), .ZN(n19) );
  NR2D1 U41 ( .A1(n1), .A2(n3), .ZN(normalized_fraction[7]) );
  AOI22D1 U42 ( .A1(reduced_scale_product[15]), .A2(n1), .B1(plane_full[24]), 
        .B2(n2), .ZN(n16) );
  AOI22D1 U43 ( .A1(reduced_scale_product[14]), .A2(n1), .B1(plane_full[23]), 
        .B2(n2), .ZN(n34) );
  AOI22D1 U44 ( .A1(reduced_scale_product[13]), .A2(n1), .B1(plane_full[22]), 
        .B2(n2), .ZN(n33) );
  OAI221D0 U45 ( .A1(n17), .A2(n5), .B1(n16), .B2(n57), .C(n60), .ZN(
        normalized_fraction[10]) );
  AOI32D1 U46 ( .A1(n8), .A2(n2), .A3(plane_full[8]), .B1(n18), .B2(n9), .ZN(
        n60) );
  INVD1 U47 ( .I(n14), .ZN(n9) );
  AOI22D1 U48 ( .A1(reduced_scale_product[12]), .A2(n1), .B1(plane_full[21]), 
        .B2(n2), .ZN(n38) );
  AOI22D1 U49 ( .A1(reduced_scale_product[11]), .A2(n1), .B1(plane_full[20]), 
        .B2(n2), .ZN(n37) );
  AOI22D1 U50 ( .A1(reduced_scale_product[10]), .A2(n1), .B1(plane_full[19]), 
        .B2(n2), .ZN(n40) );
  AOI22D1 U51 ( .A1(reduced_scale_product[9]), .A2(n1), .B1(plane_full[18]), 
        .B2(n2), .ZN(n42) );
  AOI22D1 U52 ( .A1(reduced_scale_product[8]), .A2(n1), .B1(plane_full[17]), 
        .B2(n2), .ZN(n45) );
  AOI22D1 U53 ( .A1(reduced_scale_product[7]), .A2(n1), .B1(plane_full[16]), 
        .B2(n2), .ZN(n47) );
  AOI22D1 U54 ( .A1(reduced_scale_product[6]), .A2(n1), .B1(plane_full[15]), 
        .B2(n2), .ZN(n49) );
  OAI211D1 U55 ( .A1(n12), .A2(n63), .B(n65), .C(n66), .ZN(coefficient[1]) );
  AOI22D1 U56 ( .A1(reduced_scale_product[5]), .A2(n1), .B1(plane_full[14]), 
        .B2(n2), .ZN(n51) );
  NR3D0 U57 ( .A1(n71), .A2(n78), .A3(n79), .ZN(n69) );
  INVD1 U58 ( .I(n63), .ZN(n23) );
  ND3D1 U59 ( .A1(n12), .A2(n11), .A3(n13), .ZN(n64) );
  OAI22D1 U60 ( .A1(n69), .A2(n63), .B1(n71), .B2(n21), .ZN(coefficient[2]) );
  INVD1 U61 ( .I(n2), .ZN(n1) );
  AOI22D1 U62 ( .A1(reduced_scale_product[4]), .A2(n1), .B1(plane_full[13]), 
        .B2(n2), .ZN(n53) );
  OAI211D1 U63 ( .A1(n21), .A2(n81), .B(n82), .C(n67), .ZN(coefficient[0]) );
  ND2D1 U64 ( .A1(n12), .A2(n11), .ZN(n81) );
  OAI31D1 U65 ( .A1(n79), .A2(n75), .A3(n77), .B(n23), .ZN(n82) );
  INVD1 U66 ( .I(n72), .ZN(n21) );
  AOI22D1 U67 ( .A1(reduced_scale_product[3]), .A2(n1), .B1(plane_full[12]), 
        .B2(n2), .ZN(n55) );
  AOI22D1 U68 ( .A1(reduced_scale_product[2]), .A2(n1), .B1(plane_full[11]), 
        .B2(n2), .ZN(n57) );
  AOI22D1 U69 ( .A1(reduced_scale_product[1]), .A2(n1), .B1(plane_full[10]), 
        .B2(n2), .ZN(n17) );
  AOI22D1 U70 ( .A1(reduced_scale_product[0]), .A2(n1), .B1(plane_full[9]), 
        .B2(n2), .ZN(n14) );
  OAI221D0 U71 ( .A1(n11), .A2(n66), .B1(level[1]), .B2(level[0]), .C(n76), 
        .ZN(coefficient[3]) );
  AOI211XD0 U72 ( .A1(n77), .A2(n23), .B(n10), .C(n74), .ZN(n76) );
  INVD1 U73 ( .I(n65), .ZN(n10) );
  NR3D0 U74 ( .A1(y_mantissa[21]), .A2(y_mantissa[22]), .A3(n13), .ZN(n75) );
  ND2D1 U75 ( .A1(n23), .A2(n80), .ZN(n65) );
  INVD1 U76 ( .I(y_mantissa[20]), .ZN(n13) );
  INVD1 U78 ( .I(y_mantissa[22]), .ZN(n11) );
  NR2D1 U80 ( .A1(n11), .A2(y_mantissa[21]), .ZN(n71) );
  NR3D0 U81 ( .A1(n12), .A2(y_mantissa[22]), .A3(n13), .ZN(n78) );
  INVD1 U83 ( .I(y_mantissa[21]), .ZN(n12) );
  NR3D0 U84 ( .A1(n12), .A2(y_mantissa[20]), .A3(n11), .ZN(n79) );
  OAI211D1 U86 ( .A1(y_mantissa[21]), .A2(n21), .B(n67), .C(n68), .ZN(
        coefficient[5]) );
  ND2D1 U87 ( .A1(level[1]), .A2(level[0]), .ZN(n63) );
  OAI211D1 U88 ( .A1(y_mantissa[22]), .A2(n66), .B(n67), .C(n70), .ZN(
        coefficient[4]) );
  AOI221D0 U89 ( .A1(n71), .A2(n72), .B1(n23), .B2(n73), .C(n74), .ZN(n70) );
  OA22D0 U90 ( .A1(level[1]), .A2(level[0]), .B1(n63), .B2(n64), .Z(n67) );
  INVD1 U91 ( .I(divide_mode), .ZN(n2) );
  ND2D1 U93 ( .A1(level[0]), .A2(n22), .ZN(n66) );
  INVD1 U94 ( .I(level[1]), .ZN(n22) );
  NR2D1 U95 ( .A1(n22), .A2(level[0]), .ZN(n72) );
  OAI221D0 U96 ( .A1(y_mantissa[22]), .A2(n62), .B1(n63), .B2(n64), .C(n65), 
        .ZN(coefficient[6]) );
endmodule


module oadm_runtime_drop_r12_s16 ( x, y, level, divide_mode, result );
  input [31:0] x;
  input [31:0] y;
  input [1:0] level;
  output [31:0] result;
  input divide_mode;
  wire   n1, n2;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6;
  assign result[1] = 1'b0;
  assign result[2] = 1'b0;
  assign result[3] = 1'b0;
  assign result[4] = 1'b0;
  assign result[5] = 1'b0;
  assign result[6] = 1'b0;
  assign result[0] = 1'b0;

  oadm_runtime_drop_sweep_RESIDUAL_DROP12_SCALE_DROP16 implementation ( .x({
        x[31:12], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .y({y[31:12], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .level({n2, n1}), .divide_mode(
        divide_mode), .result({result[31:7], SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6}) );
  CKBD1 U1 ( .I(level[0]), .Z(n1) );
  CKBD1 U2 ( .I(level[1]), .Z(n2) );
endmodule

