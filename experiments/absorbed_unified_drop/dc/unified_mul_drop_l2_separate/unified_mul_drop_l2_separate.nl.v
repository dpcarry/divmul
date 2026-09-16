/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Wed Sep 16 00:46:32 2026
/////////////////////////////////////////////////////////////


module unified_mul_drop_l2_separate_div_DW_mult_tc_1_DW_mult_tc_3 ( a, b, 
        product );
  input [8:0] a;
  input [6:0] b;
  output [15:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n174, n175,
         n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186,
         n187, n188;

  FA1D0 U4 ( .A(n15), .B(n69), .CI(n3), .CO(n2), .S(product[13]) );
  FA1D0 U5 ( .A(n18), .B(n16), .CI(n4), .CO(n3), .S(product[12]) );
  FA1D0 U6 ( .A(n21), .B(n19), .CI(n5), .CO(n4), .S(product[11]) );
  FA1D0 U7 ( .A(n26), .B(n22), .CI(n6), .CO(n5), .S(product[10]) );
  FA1D0 U8 ( .A(n27), .B(n32), .CI(n7), .CO(n6), .S(product[9]) );
  FA1D0 U9 ( .A(n33), .B(n40), .CI(n8), .CO(n7), .S(product[8]) );
  FA1D0 U10 ( .A(n41), .B(n46), .CI(n9), .CO(n8), .S(product[7]) );
  FA1D0 U11 ( .A(n47), .B(n52), .CI(n10), .CO(n9), .S(product[6]) );
  FA1D0 U12 ( .A(n53), .B(n59), .CI(n11), .CO(n10), .S(product[5]) );
  FA1D0 U13 ( .A(n60), .B(n63), .CI(n12), .CO(n11), .S(product[4]) );
  FA1D0 U14 ( .A(n64), .B(n66), .CI(n13), .CO(n12), .S(product[3]) );
  FA1D0 U15 ( .A(n14), .B(n103), .CI(n68), .CO(n13), .S(product[2]) );
  HA1D0 U16 ( .A(n120), .B(n112), .CO(n14), .S(product[1]) );
  FA1D0 U17 ( .A(n78), .B(n70), .CI(n17), .CO(n15), .S(n16) );
  CMPE42D1 U18 ( .A(n71), .B(n79), .C(n86), .CIX(n20), .D(n23), .CO(n18), 
        .COX(n17), .S(n19) );
  CMPE42D1 U19 ( .A(n28), .B(n80), .C(n24), .CIX(n25), .D(n29), .CO(n21), 
        .COX(n20), .S(n22) );
  FA1D0 U20 ( .A(n72), .B(n87), .CI(n95), .CO(n23), .S(n24) );
  CMPE42D1 U21 ( .A(n178), .B(n81), .C(n30), .CIX(n31), .D(n35), .CO(n26), 
        .COX(n25), .S(n27) );
  CMPE42D1 U22 ( .A(n96), .B(n73), .C(n88), .CIX(n34), .D(n104), .CO(n29), 
        .COX(n28), .S(n30) );
  CMPE42D1 U23 ( .A(n89), .B(n105), .C(n39), .CIX(n43), .D(n36), .CO(n32), 
        .COX(n31), .S(n33) );
  CMPE42D1 U24 ( .A(n74), .B(n97), .C(n113), .CIX(n42), .D(n38), .CO(n35), 
        .COX(n34), .S(n36) );
  CMPE42D1 U26 ( .A(n106), .B(n114), .C(n48), .CIX(n49), .D(n44), .CO(n40), 
        .COX(n39), .S(n41) );
  CMPE42D1 U27 ( .A(n75), .B(n82), .C(n90), .CIX(n45), .D(n98), .CO(n43), 
        .COX(n42), .S(n44) );
  CMPE42D1 U28 ( .A(n107), .B(n115), .C(n56), .CIX(n50), .D(n51), .CO(n46), 
        .COX(n45), .S(n47) );
  CMPE42D1 U29 ( .A(n76), .B(n83), .C(n91), .CIX(n54), .D(n99), .CO(n49), 
        .COX(n48), .S(n50) );
  CMPE42D1 U30 ( .A(n61), .B(n108), .C(n57), .CIX(n55), .D(n58), .CO(n52), 
        .COX(n51), .S(n53) );
  FA1D0 U31 ( .A(n92), .B(n116), .CI(n100), .CO(n54), .S(n55) );
  HA1D0 U32 ( .A(n77), .B(n84), .CO(n56), .S(n57) );
  CMPE42D1 U33 ( .A(n101), .B(n117), .C(n109), .CIX(n62), .D(n65), .CO(n59), 
        .COX(n58), .S(n60) );
  HA1D0 U34 ( .A(n85), .B(n93), .CO(n61), .S(n62) );
  FA1D0 U35 ( .A(n110), .B(n118), .CI(n67), .CO(n63), .S(n64) );
  HA1D0 U36 ( .A(n94), .B(n102), .CO(n65), .S(n66) );
  HA1D0 U37 ( .A(n111), .B(n119), .CO(n67), .S(n68) );
  INVD1 U110 ( .I(b[1]), .ZN(n180) );
  INVD1 U111 ( .I(b[2]), .ZN(n179) );
  INVD1 U112 ( .I(b[4]), .ZN(n177) );
  INVD1 U113 ( .I(b[0]), .ZN(n175) );
  INVD1 U114 ( .I(b[3]), .ZN(n176) );
  INVD1 U115 ( .I(b[5]), .ZN(n174) );
  CKBD1 U116 ( .I(product[15]), .Z(product[14]) );
  INVD1 U117 ( .I(n38), .ZN(n178) );
  INVD1 U118 ( .I(a[1]), .ZN(n187) );
  INVD1 U119 ( .I(a[2]), .ZN(n186) );
  INVD1 U120 ( .I(a[4]), .ZN(n184) );
  INVD1 U121 ( .I(a[0]), .ZN(n188) );
  INVD1 U122 ( .I(a[3]), .ZN(n185) );
  INVD1 U123 ( .I(a[5]), .ZN(n183) );
  INVD1 U124 ( .I(a[6]), .ZN(n182) );
  INVD1 U125 ( .I(a[7]), .ZN(n181) );
  CKND0 U126 ( .I(n2), .ZN(product[15]) );
  NR2D0 U127 ( .A1(n188), .A2(n175), .ZN(product[0]) );
  NR2D0 U128 ( .A1(n184), .A2(n179), .ZN(n99) );
  NR2D0 U129 ( .A1(n179), .A2(n183), .ZN(n98) );
  NR2D0 U130 ( .A1(n179), .A2(n182), .ZN(n97) );
  NR2D0 U131 ( .A1(n179), .A2(n181), .ZN(n96) );
  CKND2D0 U132 ( .A1(a[8]), .A2(b[2]), .ZN(n95) );
  NR2D0 U133 ( .A1(n188), .A2(n176), .ZN(n94) );
  NR2D0 U134 ( .A1(n176), .A2(n187), .ZN(n93) );
  NR2D0 U135 ( .A1(n176), .A2(n186), .ZN(n92) );
  NR2D0 U136 ( .A1(n176), .A2(n185), .ZN(n91) );
  NR2D0 U137 ( .A1(n184), .A2(n176), .ZN(n90) );
  NR2D0 U138 ( .A1(n183), .A2(n176), .ZN(n89) );
  NR2D0 U139 ( .A1(n182), .A2(n176), .ZN(n88) );
  NR2D0 U140 ( .A1(n181), .A2(n176), .ZN(n87) );
  CKND2D0 U141 ( .A1(b[3]), .A2(a[8]), .ZN(n86) );
  NR2D0 U142 ( .A1(n188), .A2(n177), .ZN(n85) );
  NR2D0 U143 ( .A1(n187), .A2(n177), .ZN(n84) );
  NR2D0 U144 ( .A1(n186), .A2(n177), .ZN(n83) );
  NR2D0 U145 ( .A1(n185), .A2(n177), .ZN(n82) );
  NR2D0 U146 ( .A1(n183), .A2(n177), .ZN(n81) );
  NR2D0 U147 ( .A1(n182), .A2(n177), .ZN(n80) );
  NR2D0 U148 ( .A1(n181), .A2(n177), .ZN(n79) );
  CKND2D0 U149 ( .A1(b[4]), .A2(a[8]), .ZN(n78) );
  NR2D0 U150 ( .A1(n188), .A2(n174), .ZN(n77) );
  NR2D0 U151 ( .A1(n187), .A2(n174), .ZN(n76) );
  NR2D0 U152 ( .A1(n186), .A2(n174), .ZN(n75) );
  NR2D0 U153 ( .A1(n185), .A2(n174), .ZN(n74) );
  NR2D0 U154 ( .A1(n184), .A2(n174), .ZN(n73) );
  NR2D0 U155 ( .A1(n183), .A2(n174), .ZN(n72) );
  NR2D0 U156 ( .A1(n182), .A2(n174), .ZN(n71) );
  NR2D0 U157 ( .A1(n181), .A2(n174), .ZN(n70) );
  CKND2D0 U158 ( .A1(b[5]), .A2(a[8]), .ZN(n69) );
  CKND2D0 U159 ( .A1(b[4]), .A2(a[4]), .ZN(n38) );
  NR2D0 U160 ( .A1(n175), .A2(n187), .ZN(n120) );
  NR2D0 U161 ( .A1(n175), .A2(n186), .ZN(n119) );
  NR2D0 U162 ( .A1(n175), .A2(n185), .ZN(n118) );
  NR2D0 U163 ( .A1(n175), .A2(n184), .ZN(n117) );
  NR2D0 U164 ( .A1(n175), .A2(n183), .ZN(n116) );
  NR2D0 U165 ( .A1(n175), .A2(n182), .ZN(n115) );
  NR2D0 U166 ( .A1(n175), .A2(n181), .ZN(n114) );
  CKND2D0 U167 ( .A1(a[8]), .A2(b[0]), .ZN(n113) );
  NR2D0 U168 ( .A1(n188), .A2(n180), .ZN(n112) );
  NR2D0 U169 ( .A1(n187), .A2(n180), .ZN(n111) );
  NR2D0 U170 ( .A1(n186), .A2(n180), .ZN(n110) );
  NR2D0 U171 ( .A1(n185), .A2(n180), .ZN(n109) );
  NR2D0 U172 ( .A1(n184), .A2(n180), .ZN(n108) );
  NR2D0 U173 ( .A1(n183), .A2(n180), .ZN(n107) );
  NR2D0 U174 ( .A1(n182), .A2(n180), .ZN(n106) );
  NR2D0 U175 ( .A1(n181), .A2(n180), .ZN(n105) );
  CKND2D0 U176 ( .A1(b[1]), .A2(a[8]), .ZN(n104) );
  NR2D0 U177 ( .A1(n188), .A2(n179), .ZN(n103) );
  NR2D0 U178 ( .A1(n179), .A2(n187), .ZN(n102) );
  NR2D0 U179 ( .A1(n179), .A2(n186), .ZN(n101) );
  NR2D0 U180 ( .A1(n179), .A2(n185), .ZN(n100) );
endmodule


module unified_mul_drop_l2_separate_div_DW_mult_tc_0_DW_mult_tc_2 ( a, b, 
        product );
  input [8:0] a;
  input [5:0] b;
  output [14:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n15, n16, n17,
         n18, n19, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n181;

  FA1D0 U2 ( .A(n150), .B(n151), .CI(n2), .CO(n1), .S(product[13]) );
  FA1D0 U3 ( .A(n16), .B(n15), .CI(n3), .CO(n2), .S(product[12]) );
  FA1D0 U4 ( .A(n18), .B(n17), .CI(n4), .CO(n3), .S(product[11]) );
  FA1D0 U5 ( .A(n22), .B(n19), .CI(n5), .CO(n4), .S(product[10]) );
  FA1D0 U6 ( .A(n25), .B(n23), .CI(n6), .CO(n5), .S(product[9]) );
  FA1D0 U7 ( .A(n27), .B(n26), .CI(n7), .CO(n6), .S(product[8]) );
  FA1D0 U8 ( .A(n29), .B(n28), .CI(n8), .CO(n7), .S(product[7]) );
  FA1D0 U9 ( .A(n31), .B(n30), .CI(n9), .CO(n8), .S(product[6]) );
  FA1D0 U10 ( .A(n33), .B(n32), .CI(n10), .CO(n9), .S(product[5]) );
  FA1D0 U11 ( .A(n34), .B(n35), .CI(n11), .CO(n10), .S(product[4]) );
  FA1D0 U12 ( .A(n36), .B(n37), .CI(n12), .CO(n11), .S(product[3]) );
  FA1D0 U13 ( .A(n64), .B(n56), .CI(n13), .CO(n12), .S(product[2]) );
  HA1D0 U14 ( .A(n65), .B(n38), .CO(n13), .S(product[1]) );
  FA1D0 U16 ( .A(n40), .B(n149), .CI(n47), .CO(n16), .S(n17) );
  FA1D0 U17 ( .A(n24), .B(n41), .CI(n48), .CO(n18), .S(n19) );
  FA1D0 U19 ( .A(n49), .B(n24), .CI(n57), .CO(n22), .S(n23) );
  FA1D0 U21 ( .A(n58), .B(n42), .CI(n50), .CO(n25), .S(n26) );
  FA1D0 U22 ( .A(n59), .B(n43), .CI(n51), .CO(n27), .S(n28) );
  FA1D0 U23 ( .A(n60), .B(n44), .CI(n52), .CO(n29), .S(n30) );
  FA1D0 U24 ( .A(n61), .B(n45), .CI(n53), .CO(n31), .S(n32) );
  FA1D0 U25 ( .A(n62), .B(n46), .CI(n54), .CO(n33), .S(n34) );
  HA1D0 U26 ( .A(n55), .B(n63), .CO(n35), .S(n36) );
  ND2D1 U110 ( .A1(b[1]), .A2(n147), .ZN(n160) );
  INVD1 U111 ( .I(b[0]), .ZN(n147) );
  INVD1 U112 ( .I(b[3]), .ZN(n148) );
  INVD1 U113 ( .I(a[8]), .ZN(n151) );
  INVD1 U114 ( .I(n15), .ZN(n150) );
  INVD1 U115 ( .I(n24), .ZN(n149) );
  INVD1 U116 ( .I(a[1]), .ZN(n158) );
  INVD1 U117 ( .I(a[0]), .ZN(n159) );
  INVD1 U118 ( .I(a[3]), .ZN(n156) );
  INVD1 U119 ( .I(a[2]), .ZN(n157) );
  INVD1 U120 ( .I(a[4]), .ZN(n155) );
  INVD1 U121 ( .I(a[5]), .ZN(n154) );
  INVD1 U122 ( .I(a[6]), .ZN(n153) );
  INVD1 U123 ( .I(a[7]), .ZN(n152) );
  CKND0 U124 ( .I(n1), .ZN(product[14]) );
  NR2D0 U125 ( .A1(n159), .A2(n147), .ZN(product[0]) );
  OAI22D0 U126 ( .A1(a[0]), .A2(n160), .B1(n161), .B2(n147), .ZN(n65) );
  OAI22D0 U127 ( .A1(n161), .A2(n160), .B1(n162), .B2(n147), .ZN(n64) );
  CKXOR2D0 U128 ( .A1(b[1]), .A2(n158), .Z(n161) );
  OAI22D0 U129 ( .A1(n162), .A2(n160), .B1(n163), .B2(n147), .ZN(n63) );
  CKXOR2D0 U130 ( .A1(b[1]), .A2(n157), .Z(n162) );
  OAI22D0 U131 ( .A1(n163), .A2(n160), .B1(n164), .B2(n147), .ZN(n62) );
  CKXOR2D0 U132 ( .A1(b[1]), .A2(n156), .Z(n163) );
  OAI22D0 U133 ( .A1(n164), .A2(n160), .B1(n165), .B2(n147), .ZN(n61) );
  CKXOR2D0 U134 ( .A1(b[1]), .A2(n155), .Z(n164) );
  OAI22D0 U135 ( .A1(n165), .A2(n160), .B1(n166), .B2(n147), .ZN(n60) );
  CKXOR2D0 U136 ( .A1(b[1]), .A2(n154), .Z(n165) );
  OAI22D0 U137 ( .A1(n166), .A2(n160), .B1(n167), .B2(n147), .ZN(n59) );
  CKXOR2D0 U138 ( .A1(b[1]), .A2(n153), .Z(n166) );
  MOAI22D0 U139 ( .A1(n167), .A2(n160), .B1(n168), .B2(b[0]), .ZN(n58) );
  CKXOR2D0 U140 ( .A1(b[1]), .A2(n152), .Z(n167) );
  IOA21D0 U141 ( .A1(n147), .A2(n160), .B(n168), .ZN(n57) );
  CKXOR2D0 U142 ( .A1(b[1]), .A2(a[8]), .Z(n168) );
  NR2D0 U143 ( .A1(n169), .A2(n159), .ZN(n56) );
  OAI22D0 U144 ( .A1(n170), .A2(n171), .B1(n169), .B2(n172), .ZN(n55) );
  CKXOR2D0 U145 ( .A1(b[3]), .A2(n159), .Z(n170) );
  OAI22D0 U146 ( .A1(n172), .A2(n171), .B1(n169), .B2(n173), .ZN(n54) );
  CKXOR2D0 U147 ( .A1(b[3]), .A2(n158), .Z(n172) );
  OAI22D0 U148 ( .A1(n173), .A2(n171), .B1(n169), .B2(n174), .ZN(n53) );
  CKXOR2D0 U149 ( .A1(b[3]), .A2(n157), .Z(n173) );
  OAI22D0 U150 ( .A1(n174), .A2(n171), .B1(n169), .B2(n175), .ZN(n52) );
  CKXOR2D0 U151 ( .A1(b[3]), .A2(n156), .Z(n174) );
  OAI22D0 U152 ( .A1(n175), .A2(n171), .B1(n169), .B2(n176), .ZN(n51) );
  CKXOR2D0 U153 ( .A1(b[3]), .A2(n155), .Z(n175) );
  OAI22D0 U154 ( .A1(n176), .A2(n171), .B1(n169), .B2(n177), .ZN(n50) );
  CKXOR2D0 U155 ( .A1(b[3]), .A2(n154), .Z(n176) );
  OAI22D0 U156 ( .A1(n177), .A2(n171), .B1(n169), .B2(n178), .ZN(n49) );
  CKXOR2D0 U157 ( .A1(b[3]), .A2(n153), .Z(n177) );
  OAI22D0 U158 ( .A1(n178), .A2(n171), .B1(n169), .B2(n179), .ZN(n48) );
  CKXOR2D0 U159 ( .A1(b[3]), .A2(n152), .Z(n178) );
  AO21D0 U160 ( .A1(n171), .A2(n169), .B(n179), .Z(n47) );
  CKXOR2D0 U161 ( .A1(n148), .A2(a[8]), .Z(n179) );
  NR2D0 U162 ( .A1(b[3]), .A2(n159), .ZN(n46) );
  MUX2ND0 U163 ( .I0(n158), .I1(n159), .S(b[3]), .ZN(n45) );
  MUX2ND0 U164 ( .I0(n157), .I1(n158), .S(b[3]), .ZN(n44) );
  MUX2ND0 U165 ( .I0(n156), .I1(n157), .S(b[3]), .ZN(n43) );
  MUX2ND0 U166 ( .I0(n155), .I1(n156), .S(b[3]), .ZN(n42) );
  MUX2ND0 U167 ( .I0(n153), .I1(n154), .S(b[3]), .ZN(n41) );
  MUX2ND0 U168 ( .I0(n152), .I1(n153), .S(b[3]), .ZN(n40) );
  IOA21D0 U169 ( .A1(n159), .A2(b[1]), .B(n160), .ZN(n38) );
  OAI32D0 U170 ( .A1(n148), .A2(a[0]), .A3(n169), .B1(n148), .B2(n171), .ZN(
        n37) );
  MUX2ND0 U172 ( .I0(a[5]), .I1(a[4]), .S(b[3]), .ZN(n24) );
  MUX2ND0 U173 ( .I0(a[8]), .I1(a[7]), .S(b[3]), .ZN(n15) );
  OAI211D0 U108 ( .A1(b[2]), .A2(b[3]), .B(n181), .C(n169), .ZN(n171) );
  XNR2D0 U109 ( .A1(b[2]), .A2(b[1]), .ZN(n169) );
  CKND2D0 U171 ( .A1(b[2]), .A2(b[3]), .ZN(n181) );
endmodule


module unified_mul_drop_l2_separate_div_DW01_add_0_DW01_add_2 ( A, B, CI, SUM, 
        CO );
  input [18:0] A;
  input [18:0] B;
  output [18:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [17:4] carry;

  FA1D0 U1_3 ( .A(A[3]), .B(B[3]), .CI(n1), .CO(carry[4]), .S(SUM[3]) );
  FA1D0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
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
  FA1D0 U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  FA1D0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1D0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA1D0 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  AN2XD1 U1 ( .A1(B[2]), .A2(A[2]), .Z(n1) );
  CKBD1 U2 ( .I(B[1]), .Z(SUM[1]) );
  CKBD1 U3 ( .I(B[0]), .Z(SUM[0]) );
  CKXOR2D1 U4 ( .A1(B[17]), .A2(carry[17]), .Z(SUM[17]) );
  CKXOR2D1 U5 ( .A1(B[2]), .A2(A[2]), .Z(SUM[2]) );
endmodule


module unified_mul_drop_l2_separate_div_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [19:0] A;
  input [19:0] B;
  output [19:0] DIFF;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15;
  wire   [17:1] carry;

  XOR3D1 U2_17 ( .A1(A[17]), .A2(n2), .A3(carry[17]), .Z(DIFF[17]) );
  FA1D0 U2_1 ( .A(A[1]), .B(n15), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  FA1D0 U2_2 ( .A(A[2]), .B(n14), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  FA1D0 U2_3 ( .A(A[3]), .B(n13), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  FA1D0 U2_13 ( .A(A[13]), .B(n3), .CI(carry[13]), .CO(carry[14]), .S(DIFF[13]) );
  FA1D0 U2_4 ( .A(A[4]), .B(n12), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FA1D0 U2_5 ( .A(A[5]), .B(n11), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  FA1D0 U2_6 ( .A(A[6]), .B(n10), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  FA1D0 U2_7 ( .A(A[7]), .B(n9), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  FA1D0 U2_8 ( .A(A[8]), .B(n8), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  FA1D0 U2_9 ( .A(A[9]), .B(n7), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9]) );
  FA1D0 U2_10 ( .A(A[10]), .B(n6), .CI(carry[10]), .CO(carry[11]), .S(DIFF[10]) );
  FA1D0 U2_11 ( .A(A[11]), .B(n5), .CI(carry[11]), .CO(carry[12]), .S(DIFF[11]) );
  FA1D0 U2_12 ( .A(A[12]), .B(n4), .CI(carry[12]), .CO(carry[13]), .S(DIFF[12]) );
  FA1D0 U2_14 ( .A(A[14]), .B(n2), .CI(carry[14]), .CO(carry[15]), .S(DIFF[14]) );
  FA1D0 U2_16 ( .A(A[16]), .B(n2), .CI(carry[16]), .CO(carry[17]), .S(DIFF[16]) );
  FA1D0 U2_15 ( .A(A[15]), .B(n2), .CI(carry[15]), .CO(carry[16]), .S(DIFF[15]) );
  INVD1 U1 ( .I(B[12]), .ZN(n4) );
  INVD1 U2 ( .I(B[11]), .ZN(n5) );
  INVD1 U3 ( .I(B[10]), .ZN(n6) );
  INVD1 U4 ( .I(B[9]), .ZN(n7) );
  INVD1 U5 ( .I(B[8]), .ZN(n8) );
  INVD1 U6 ( .I(B[7]), .ZN(n9) );
  INVD1 U7 ( .I(B[6]), .ZN(n10) );
  INVD1 U8 ( .I(B[5]), .ZN(n11) );
  INVD1 U9 ( .I(B[4]), .ZN(n12) );
  INVD1 U10 ( .I(B[19]), .ZN(n2) );
  INVD1 U11 ( .I(B[13]), .ZN(n3) );
  INVD1 U12 ( .I(B[3]), .ZN(n13) );
  INVD1 U13 ( .I(B[2]), .ZN(n14) );
  INVD1 U16 ( .I(B[1]), .ZN(n15) );
  CKXOR2D0 U14 ( .A1(A[0]), .A2(B[0]), .Z(DIFF[0]) );
  IND2D0 U15 ( .A1(A[0]), .B1(B[0]), .ZN(carry[1]) );
endmodule


module unified_mul_drop_l2_separate_div ( fx, fy, value );
  input [22:0] fx;
  input [22:0] fy;
  output [28:0] value;
  wire   rx_8_, ry_8_, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, py_9_, py_8_, py_7_, py_6_, py_5_, py_4_, py_3_, py_2_,
         py_1_, py_15_, py_14_, py_13_, py_12_, py_11_, py_10_, py_0_, px_15,
         px_9_, px_8_, px_7_, px_6_, px_5_, px_4_, px_3_, px_2_, px_1_, px_13_,
         px_12_, px_11_, px_10_, px_0_, N79, N78, N77, N76, N75, N74, N73, N72,
         N71, N70, N69, N68, N67, N66, N65, N64, N63, N62, n8, n9, n10, n52,
         n53, n54;
  wire   [3:0] a;
  wire   [5:0] b;
  wire   [16:2] t;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2;

  AN4XD1 U9 ( .A1(n23), .A2(n24), .A3(n25), .A4(n26), .Z(n17) );
  AN4XD1 U11 ( .A1(n28), .A2(n22), .A3(n16), .A4(n26), .Z(n20) );
  AN2XD1 U18 ( .A1(n35), .A2(n23), .Z(n34) );
  AN4XD1 U20 ( .A1(n36), .A2(n37), .A3(n23), .A4(n24), .Z(n21) );
  AN2XD1 U22 ( .A1(n25), .A2(n22), .Z(n38) );
  AN2XD1 U26 ( .A1(n16), .A2(n33), .Z(n39) );
  AN2XD1 U29 ( .A1(n29), .A2(n36), .Z(n32) );
  AN3XD1 U31 ( .A1(n29), .A2(n40), .A3(n24), .Z(n14) );
  AN2XD1 U33 ( .A1(n26), .A2(n12), .Z(n42) );
  AN4XD1 U34 ( .A1(n22), .A2(n25), .A3(n33), .A4(n27), .Z(n13) );
  AN2XD1 U38 ( .A1(n33), .A2(n29), .Z(n19) );
  AN4XD1 U40 ( .A1(n15), .A2(n28), .A3(n40), .A4(n26), .Z(n30) );
  AN2XD1 U42 ( .A1(n47), .A2(n25), .Z(n15) );
  AN2XD1 U45 ( .A1(n47), .A2(n35), .Z(n11) );
  AN3XD1 U49 ( .A1(n27), .A2(n12), .A3(n37), .Z(n31) );
  AN4XD1 U55 ( .A1(n24), .A2(n47), .A3(n22), .A4(n26), .Z(n18) );
  AN2XD1 U62 ( .A1(fy[22]), .A2(n52), .Z(n45) );
  AN3XD1 U63 ( .A1(n40), .A2(n16), .A3(n36), .Z(n41) );
  AN2XD1 U66 ( .A1(fy[22]), .A2(fx[21]), .Z(n43) );
  unified_mul_drop_l2_separate_div_DW_mult_tc_1_DW_mult_tc_3 mult_28_S2 ( .a({
        ry_8_, fy[19:12]}), .b({n54, b}), .product({py_15_, py_14_, py_13_, 
        py_12_, py_11_, py_10_, py_9_, py_8_, py_7_, py_6_, py_5_, py_4_, 
        py_3_, py_2_, py_1_, py_0_}) );
  unified_mul_drop_l2_separate_div_DW_mult_tc_0_DW_mult_tc_2 mult_28 ( .a({
        rx_8_, fx[19:12]}), .b({n54, n8, a}), .product({px_15, px_13_, px_12_, 
        px_11_, px_10_, px_9_, px_8_, px_7_, px_6_, px_5_, px_4_, px_3_, px_2_, 
        px_1_, px_0_}) );
  unified_mul_drop_l2_separate_div_DW01_add_0_DW01_add_2 add_1_root_sub_30 ( 
        .A({n54, n54, t, n54, n54}), .B({px_15, px_15, px_15, px_15, px_15, 
        px_13_, px_12_, px_11_, px_10_, px_9_, px_8_, px_7_, px_6_, px_5_, 
        px_4_, px_3_, px_2_, px_1_, px_0_}), .CI(n54), .SUM({
        SYNOPSYS_UNCONNECTED__0, N79, N78, N77, N76, N75, N74, N73, N72, N71, 
        N70, N69, N68, N67, N66, N65, N64, N63, N62}) );
  unified_mul_drop_l2_separate_div_DW01_sub_0 sub_0_root_sub_30 ( .A({1'b0, 
        1'b0, N79, N78, N77, N76, N75, N74, N73, N72, N71, N70, N69, N68, N67, 
        N66, N65, N64, N63, N62}), .B({py_15_, py_15_, py_15_, py_15_, py_15_, 
        py_14_, py_13_, py_12_, py_11_, py_10_, py_9_, py_8_, py_7_, py_6_, 
        py_5_, py_4_, py_3_, py_2_, py_1_, py_0_}), .CI(n54), .DIFF({
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, value[24:7]}) );
  TIEH U3 ( .Z(n8) );
  INVD1 U13 ( .I(b[5]), .ZN(n9) );
  ND2D1 U14 ( .A1(n18), .A2(n19), .ZN(t[6]) );
  IND3D1 U15 ( .A1(a[1]), .B1(n20), .B2(n21), .ZN(t[5]) );
  ND2D1 U16 ( .A1(n14), .A2(n13), .ZN(b[1]) );
  ND4D1 U17 ( .A1(n30), .A2(n19), .A3(n23), .A4(n9), .ZN(a[2]) );
  ND3D1 U19 ( .A1(n16), .A2(n9), .A3(n30), .ZN(t[16]) );
  ND2D1 U21 ( .A1(n31), .A2(n35), .ZN(b[5]) );
  ND3D1 U23 ( .A1(n19), .A2(n22), .A3(n21), .ZN(t[15]) );
  ND3D1 U24 ( .A1(n31), .A2(n15), .A3(n32), .ZN(t[13]) );
  IND4D1 U25 ( .A1(t[14]), .B1(n32), .B2(n24), .B3(n27), .ZN(t[12]) );
  ND3D1 U27 ( .A1(n40), .A2(n33), .A3(n11), .ZN(a[1]) );
  ND4D1 U28 ( .A1(n21), .A2(n11), .A3(n22), .A4(n27), .ZN(t[11]) );
  ND4D1 U30 ( .A1(n11), .A2(n36), .A3(n38), .A4(n37), .ZN(t[10]) );
  ND2D1 U32 ( .A1(n31), .A2(n26), .ZN(a[3]) );
  ND3D1 U35 ( .A1(n11), .A2(n12), .A3(n13), .ZN(t[9]) );
  ND4D1 U36 ( .A1(n41), .A2(n18), .A3(n33), .A4(n9), .ZN(a[0]) );
  ND3D1 U37 ( .A1(n14), .A2(n12), .A3(n15), .ZN(t[8]) );
  ND3D1 U39 ( .A1(n11), .A2(n16), .A3(n17), .ZN(t[7]) );
  ND3D1 U41 ( .A1(n30), .A2(n22), .A3(n32), .ZN(b[2]) );
  ND4D1 U43 ( .A1(n30), .A2(n37), .A3(n39), .A4(n23), .ZN(b[4]) );
  ND4D1 U44 ( .A1(n41), .A2(n13), .A3(n42), .A4(n23), .ZN(b[0]) );
  ND3D1 U46 ( .A1(n18), .A2(n12), .A3(n32), .ZN(b[3]) );
  ND3D1 U47 ( .A1(n29), .A2(n12), .A3(n21), .ZN(t[4]) );
  IND4D1 U48 ( .A1(t[4]), .B1(n20), .B2(n25), .B3(n27), .ZN(t[2]) );
  ND4D1 U50 ( .A1(n33), .A2(n12), .A3(n22), .A4(n34), .ZN(t[14]) );
  ND2D1 U51 ( .A1(n46), .A2(n50), .ZN(n12) );
  ND2D1 U52 ( .A1(n43), .A2(n46), .ZN(n25) );
  ND2D1 U53 ( .A1(n49), .A2(n44), .ZN(n27) );
  NR2D1 U54 ( .A1(n53), .A2(n10), .ZN(n48) );
  ND2D1 U56 ( .A1(n48), .A2(n50), .ZN(n47) );
  ND2D1 U57 ( .A1(n49), .A2(n46), .ZN(n37) );
  ND2D1 U58 ( .A1(n48), .A2(n49), .ZN(n35) );
  ND2D1 U59 ( .A1(n44), .A2(n50), .ZN(n26) );
  ND2D1 U60 ( .A1(n45), .A2(n46), .ZN(n28) );
  ND2D1 U61 ( .A1(n51), .A2(n49), .ZN(n40) );
  ND2D1 U64 ( .A1(n45), .A2(n44), .ZN(n29) );
  ND2D1 U65 ( .A1(n51), .A2(n50), .ZN(n33) );
  ND2D1 U67 ( .A1(n45), .A2(n48), .ZN(n22) );
  ND2D1 U68 ( .A1(n45), .A2(n51), .ZN(n24) );
  ND2D1 U69 ( .A1(n43), .A2(n44), .ZN(n23) );
  ND3D1 U70 ( .A1(n22), .A2(n12), .A3(n17), .ZN(t[3]) );
  ND2D1 U71 ( .A1(n48), .A2(n43), .ZN(n16) );
  ND2D1 U72 ( .A1(n43), .A2(n51), .ZN(n36) );
  NR2D1 U73 ( .A1(fy[22]), .A2(fx[21]), .ZN(n50) );
  NR2D1 U74 ( .A1(n10), .A2(fy[21]), .ZN(n46) );
  INVD1 U75 ( .I(fx[22]), .ZN(n10) );
  NR2D1 U76 ( .A1(fy[21]), .A2(fx[22]), .ZN(n44) );
  NR2D1 U77 ( .A1(n52), .A2(fy[22]), .ZN(n49) );
  INVD1 U78 ( .I(fx[21]), .ZN(n52) );
  INVD1 U79 ( .I(fy[21]), .ZN(n53) );
  NR2D1 U80 ( .A1(n53), .A2(fx[22]), .ZN(n51) );
  INVD1 U81 ( .I(fx[20]), .ZN(rx_8_) );
  INVD1 U82 ( .I(fy[20]), .ZN(ry_8_) );
  TIEL U83 ( .ZN(n54) );
endmodule


module unified_mul_drop_l2_separate_mul_DW_mult_tc_1 ( a, b, product );
  input [8:0] a;
  input [6:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n14, n15, n16, n17,
         n20, n21, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n50,
         n51, n52, n53, n54, n55, n56, n112, n113, n114, n115, n116, n117,
         n118;

  FA1D0 U2 ( .A(n14), .B(n115), .CI(n2), .CO(n1), .S(product[14]) );
  FA1D0 U3 ( .A(n15), .B(n16), .CI(n3), .CO(n2), .S(product[13]) );
  FA1D0 U4 ( .A(n17), .B(n20), .CI(n4), .CO(n3), .S(product[12]) );
  FA1D0 U5 ( .A(n21), .B(n23), .CI(n5), .CO(n4), .S(product[11]) );
  FA1D0 U6 ( .A(n24), .B(n25), .CI(n6), .CO(n5), .S(product[10]) );
  FA1D0 U7 ( .A(n26), .B(n27), .CI(n7), .CO(n6), .S(product[9]) );
  FA1D0 U8 ( .A(n28), .B(n29), .CI(n8), .CO(n7), .S(product[8]) );
  FA1D0 U9 ( .A(n30), .B(n31), .CI(n9), .CO(n8), .S(product[7]) );
  FA1D0 U10 ( .A(n32), .B(n33), .CI(n10), .CO(n9), .S(product[6]) );
  FA1D0 U11 ( .A(n34), .B(n46), .CI(n11), .CO(n10), .S(product[5]) );
  FA1D0 U12 ( .A(n47), .B(n55), .CI(n12), .CO(n11), .S(product[4]) );
  HA1D0 U13 ( .A(n56), .B(n36), .CO(n12), .S(product[3]) );
  FA1D0 U15 ( .A(a[7]), .B(a[5]), .CI(n38), .CO(n14), .S(n15) );
  FA1D0 U16 ( .A(n116), .B(a[6]), .CI(n39), .CO(n16), .S(n17) );
  FA1D0 U18 ( .A(n48), .B(n116), .CI(n40), .CO(n20), .S(n21) );
  FA1D0 U20 ( .A(n114), .B(a[4]), .CI(n41), .CO(n23), .S(n24) );
  FA1D0 U21 ( .A(n50), .B(a[3]), .CI(n42), .CO(n25), .S(n26) );
  FA1D0 U22 ( .A(n51), .B(a[2]), .CI(n43), .CO(n27), .S(n28) );
  FA1D0 U23 ( .A(n52), .B(a[1]), .CI(n44), .CO(n29), .S(n30) );
  FA1D0 U24 ( .A(n53), .B(a[0]), .CI(n45), .CO(n31), .S(n32) );
  HA1D0 U25 ( .A(n35), .B(n54), .CO(n33), .S(n34) );
  INVD1 U72 ( .I(n117), .ZN(n112) );
  INVD1 U73 ( .I(n118), .ZN(n113) );
  INVD1 U74 ( .I(a[8]), .ZN(n115) );
  INVD1 U75 ( .I(n48), .ZN(n114) );
  INVD1 U76 ( .I(a[5]), .ZN(n116) );
  CKBD1 U77 ( .I(a[0]), .Z(product[2]) );
  CKND0 U78 ( .I(n1), .ZN(product[15]) );
  CKXOR2D0 U79 ( .A1(b[3]), .A2(a[1]), .Z(n56) );
  CKXOR2D0 U80 ( .A1(b[3]), .A2(a[2]), .Z(n55) );
  CKXOR2D0 U81 ( .A1(b[3]), .A2(a[3]), .Z(n54) );
  CKXOR2D0 U82 ( .A1(b[3]), .A2(a[4]), .Z(n53) );
  CKXOR2D0 U83 ( .A1(b[3]), .A2(a[5]), .Z(n52) );
  CKXOR2D0 U84 ( .A1(b[3]), .A2(a[6]), .Z(n51) );
  CKXOR2D0 U85 ( .A1(b[3]), .A2(a[7]), .Z(n50) );
  CKXOR2D0 U86 ( .A1(b[3]), .A2(n115), .Z(n48) );
  INR2D0 U87 ( .A1(a[0]), .B1(n113), .ZN(n47) );
  OAI22D0 U88 ( .A1(a[0]), .A2(n112), .B1(a[1]), .B2(n113), .ZN(n46) );
  OAI22D0 U89 ( .A1(a[1]), .A2(n112), .B1(a[2]), .B2(n113), .ZN(n45) );
  OAI22D0 U90 ( .A1(a[2]), .A2(n112), .B1(a[3]), .B2(n113), .ZN(n44) );
  OAI22D0 U91 ( .A1(a[3]), .A2(n112), .B1(a[4]), .B2(n113), .ZN(n43) );
  OAI22D0 U92 ( .A1(a[4]), .A2(n112), .B1(a[5]), .B2(n113), .ZN(n42) );
  OAI22D0 U93 ( .A1(a[5]), .A2(n112), .B1(a[6]), .B2(n113), .ZN(n41) );
  OAI22D0 U94 ( .A1(a[6]), .A2(n112), .B1(a[7]), .B2(n113), .ZN(n40) );
  OAI22D0 U95 ( .A1(a[7]), .A2(n112), .B1(a[8]), .B2(n113), .ZN(n39) );
  OAI21D0 U96 ( .A1(n117), .A2(n118), .B(n115), .ZN(n38) );
  INR2D0 U97 ( .A1(b[3]), .B1(a[0]), .ZN(n36) );
  OAI21D0 U98 ( .A1(a[0]), .A2(n113), .B(n112), .ZN(n35) );
  NR2D0 U99 ( .A1(n118), .A2(b[4]), .ZN(n117) );
  CKXOR2D0 U100 ( .A1(b[3]), .A2(b[4]), .Z(n118) );
endmodule


module unified_mul_drop_l2_separate_mul_DW_mult_tc_0 ( a, b, product );
  input [8:0] a;
  input [6:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n14, n15, n16, n17,
         n20, n21, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n50,
         n51, n52, n53, n54, n55, n56, n112, n113, n114, n115, n116, n117,
         n118;

  FA1D0 U2 ( .A(n14), .B(n113), .CI(n2), .CO(n1), .S(product[14]) );
  FA1D0 U3 ( .A(n15), .B(n16), .CI(n3), .CO(n2), .S(product[13]) );
  FA1D0 U4 ( .A(n17), .B(n20), .CI(n4), .CO(n3), .S(product[12]) );
  FA1D0 U5 ( .A(n21), .B(n23), .CI(n5), .CO(n4), .S(product[11]) );
  FA1D0 U6 ( .A(n24), .B(n25), .CI(n6), .CO(n5), .S(product[10]) );
  FA1D0 U7 ( .A(n26), .B(n27), .CI(n7), .CO(n6), .S(product[9]) );
  FA1D0 U8 ( .A(n28), .B(n29), .CI(n8), .CO(n7), .S(product[8]) );
  FA1D0 U9 ( .A(n30), .B(n31), .CI(n9), .CO(n8), .S(product[7]) );
  FA1D0 U10 ( .A(n32), .B(n33), .CI(n10), .CO(n9), .S(product[6]) );
  FA1D0 U11 ( .A(n34), .B(n46), .CI(n11), .CO(n10), .S(product[5]) );
  FA1D0 U12 ( .A(n47), .B(n55), .CI(n12), .CO(n11), .S(product[4]) );
  HA1D0 U13 ( .A(n56), .B(n36), .CO(n12), .S(product[3]) );
  FA1D0 U15 ( .A(a[7]), .B(a[5]), .CI(n38), .CO(n14), .S(n15) );
  FA1D0 U16 ( .A(n114), .B(a[6]), .CI(n39), .CO(n16), .S(n17) );
  FA1D0 U18 ( .A(n48), .B(n114), .CI(n40), .CO(n20), .S(n21) );
  FA1D0 U20 ( .A(n112), .B(a[4]), .CI(n41), .CO(n23), .S(n24) );
  FA1D0 U21 ( .A(n50), .B(a[3]), .CI(n42), .CO(n25), .S(n26) );
  FA1D0 U22 ( .A(n51), .B(a[2]), .CI(n43), .CO(n27), .S(n28) );
  FA1D0 U23 ( .A(n52), .B(a[1]), .CI(n44), .CO(n29), .S(n30) );
  FA1D0 U24 ( .A(n53), .B(a[0]), .CI(n45), .CO(n31), .S(n32) );
  HA1D0 U25 ( .A(n35), .B(n54), .CO(n33), .S(n34) );
  INVD1 U72 ( .I(n117), .ZN(n115) );
  INVD1 U73 ( .I(n118), .ZN(n116) );
  INVD1 U74 ( .I(a[8]), .ZN(n113) );
  INVD1 U75 ( .I(n48), .ZN(n112) );
  INVD1 U76 ( .I(a[5]), .ZN(n114) );
  CKBD1 U77 ( .I(a[0]), .Z(product[2]) );
  CKND0 U78 ( .I(n1), .ZN(product[15]) );
  CKXOR2D0 U79 ( .A1(b[3]), .A2(a[1]), .Z(n56) );
  CKXOR2D0 U80 ( .A1(b[3]), .A2(a[2]), .Z(n55) );
  CKXOR2D0 U81 ( .A1(b[3]), .A2(a[3]), .Z(n54) );
  CKXOR2D0 U82 ( .A1(b[3]), .A2(a[4]), .Z(n53) );
  CKXOR2D0 U83 ( .A1(b[3]), .A2(a[5]), .Z(n52) );
  CKXOR2D0 U84 ( .A1(b[3]), .A2(a[6]), .Z(n51) );
  CKXOR2D0 U85 ( .A1(b[3]), .A2(a[7]), .Z(n50) );
  CKXOR2D0 U86 ( .A1(b[3]), .A2(n113), .Z(n48) );
  INR2D0 U87 ( .A1(a[0]), .B1(n116), .ZN(n47) );
  OAI22D0 U88 ( .A1(a[0]), .A2(n115), .B1(a[1]), .B2(n116), .ZN(n46) );
  OAI22D0 U89 ( .A1(a[1]), .A2(n115), .B1(a[2]), .B2(n116), .ZN(n45) );
  OAI22D0 U90 ( .A1(a[2]), .A2(n115), .B1(a[3]), .B2(n116), .ZN(n44) );
  OAI22D0 U91 ( .A1(a[3]), .A2(n115), .B1(a[4]), .B2(n116), .ZN(n43) );
  OAI22D0 U92 ( .A1(a[4]), .A2(n115), .B1(a[5]), .B2(n116), .ZN(n42) );
  OAI22D0 U93 ( .A1(a[5]), .A2(n115), .B1(a[6]), .B2(n116), .ZN(n41) );
  OAI22D0 U94 ( .A1(a[6]), .A2(n115), .B1(a[7]), .B2(n116), .ZN(n40) );
  OAI22D0 U95 ( .A1(a[7]), .A2(n115), .B1(a[8]), .B2(n116), .ZN(n39) );
  OAI21D0 U96 ( .A1(n117), .A2(n118), .B(n113), .ZN(n38) );
  INR2D0 U97 ( .A1(b[3]), .B1(a[0]), .ZN(n36) );
  OAI21D0 U98 ( .A1(a[0]), .A2(n116), .B(n115), .ZN(n35) );
  NR2D0 U99 ( .A1(n118), .A2(b[4]), .ZN(n117) );
  CKXOR2D0 U100 ( .A1(b[3]), .A2(b[4]), .Z(n118) );
endmodule


module unified_mul_drop_l2_separate_mul_DW01_add_0 ( A, B, CI, SUM, CO );
  input [20:0] A;
  input [20:0] B;
  output [20:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [17:4] carry;

  XOR3D1 U1_17 ( .A1(A[17]), .A2(B[17]), .A3(carry[17]), .Z(SUM[17]) );
  FA1D0 U1_3 ( .A(A[3]), .B(B[3]), .CI(n1), .CO(carry[4]), .S(SUM[3]) );
  FA1D0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1D0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1D0 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  FA1D0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
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
  FA1D0 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  FA1D0 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  FA1D0 U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  AN2XD1 U1 ( .A1(B[2]), .A2(A[2]), .Z(n1) );
  CKXOR2D1 U2 ( .A1(B[2]), .A2(A[2]), .Z(SUM[2]) );
endmodule


module unified_mul_drop_l2_separate_mul ( fx, fy, value );
  input [22:0] fx;
  input [22:0] fy;
  output [28:0] value;
  wire   rx_8_, ry_8_, t_4, t_3, t_2, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, py_9_, py_8_, py_7_, py_6_, py_5_, py_4_, py_3_, py_2_, net2137,
         py_15_, py_14_, py_13_, py_12_, py_11_, py_10_, px_9_, px_8_, px_7_,
         px_6_, px_5_, px_4_, px_3_, px_2_, px_15_, px_14_, px_13_, px_12_,
         px_11_, px_10_, N79, N78, N77, N76, N75, N74, N73, N72, N71, N70, N69,
         N68, N67, N66, N65, N64, n10, n11, n13, n23, n24, n26, n28, n29, n30,
         n31, n32;
  wire   [16:11] t;
  wire   [17:4] add_1_root_add_63_2_carry;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8;

  OA33D1 U16 ( .A1(n30), .A2(n32), .A3(n22), .B1(fx[21]), .B2(fy[21]), .B3(n15), .Z(n19) );
  XNR2D1 U19 ( .A1(n32), .A2(fx[22]), .ZN(t[12]) );
  CKXOR2D1 U20 ( .A1(fy[21]), .A2(fx[21]), .Z(t[11]) );
  unified_mul_drop_l2_separate_mul_DW_mult_tc_1 mult_61_S2 ( .a({ry_8_, 
        fy[19:12]}), .b({net2137, n10, fx[22:21], n10, net2137, net2137}), 
        .product({py_15_, py_14_, py_13_, py_12_, py_11_, py_10_, py_9_, py_8_, 
        py_7_, py_6_, py_5_, py_4_, py_3_, py_2_, SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1}) );
  unified_mul_drop_l2_separate_mul_DW_mult_tc_0 mult_61 ( .a({rx_8_, fx[19:12]}), .b({net2137, n10, fy[22:21], n10, net2137, net2137}), .product({px_15_, 
        px_14_, px_13_, px_12_, px_11_, px_10_, px_9_, px_8_, px_7_, px_6_, 
        px_5_, px_4_, px_3_, px_2_, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3}) );
  unified_mul_drop_l2_separate_mul_DW01_add_0 add_0_root_add_63_2 ( .A({py_15_, 
        py_15_, py_15_, py_15_, py_15_, py_15_, py_14_, py_13_, py_12_, py_11_, 
        py_10_, py_9_, py_8_, py_7_, py_6_, py_5_, py_4_, py_3_, py_2_, 
        net2137, net2137}), .B({net2137, net2137, net2137, N79, N78, N77, N76, 
        N75, N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, net2137, 
        net2137}), .CI(net2137), .SUM({SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, value[24:9], 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8}) );
  TIEH U3 ( .Z(n10) );
  AN2XD1 U14 ( .A1(px_2_), .A2(t_2), .Z(n11) );
  XOR3D1 U15 ( .A1(t_4), .A2(px_15_), .A3(add_1_root_add_63_2_carry[17]), .Z(
        N79) );
  AN2XD1 U18 ( .A1(n23), .A2(px_8_), .Z(n13) );
  AN2XD1 U21 ( .A1(n24), .A2(px_7_), .Z(n23) );
  AN2XD1 U22 ( .A1(add_1_root_add_63_2_carry[6]), .A2(px_6_), .Z(n24) );
  FA1D0 U23 ( .A(t[15]), .B(px_15_), .CI(add_1_root_add_63_2_carry[15]), .CO(
        add_1_root_add_63_2_carry[16]), .S(N77) );
  OAI211D1 U24 ( .A1(t[11]), .A2(n15), .B(n17), .C(n18), .ZN(t[15]) );
  AOI32D1 U25 ( .A1(n29), .A2(n15), .A3(t[11]), .B1(t[12]), .B2(t_2), .ZN(n18)
         );
  FA1D0 U26 ( .A(t[16]), .B(px_15_), .CI(add_1_root_add_63_2_carry[16]), .CO(
        add_1_root_add_63_2_carry[17]), .S(N78) );
  OAI22D1 U27 ( .A1(t[12]), .A2(n14), .B1(n31), .B2(n16), .ZN(t[16]) );
  FA1D0 U28 ( .A(t[14]), .B(px_14_), .CI(add_1_root_add_63_2_carry[14]), .CO(
        add_1_root_add_63_2_carry[15]), .S(N76) );
  AOI21D1 U29 ( .A1(n31), .A2(t[12]), .B(n16), .ZN(t[14]) );
  FA1D0 U30 ( .A(t[12]), .B(px_12_), .CI(add_1_root_add_63_2_carry[12]), .CO(
        add_1_root_add_63_2_carry[13]), .S(N74) );
  FA1D0 U31 ( .A(t[11]), .B(px_11_), .CI(add_1_root_add_63_2_carry[11]), .CO(
        add_1_root_add_63_2_carry[12]), .S(N73) );
  FA1D0 U36 ( .A(t_4), .B(px_4_), .CI(add_1_root_add_63_2_carry[4]), .CO(
        add_1_root_add_63_2_carry[5]), .S(N66) );
  NR2D1 U37 ( .A1(t[11]), .A2(n31), .ZN(n14) );
  FA1D0 U38 ( .A(t_3), .B(px_3_), .CI(n11), .CO(add_1_root_add_63_2_carry[4]), 
        .S(N65) );
  OAI32D1 U39 ( .A1(n29), .A2(n31), .A3(t[11]), .B1(t[12]), .B2(n14), .ZN(t_3)
         );
  INVD1 U40 ( .I(t[12]), .ZN(n29) );
  OAI21D1 U41 ( .A1(n14), .A2(n29), .B(n15), .ZN(t_4) );
  INVD1 U42 ( .I(n17), .ZN(n31) );
  INVD1 U43 ( .I(t[11]), .ZN(t_2) );
  ND2D1 U44 ( .A1(t_2), .A2(n15), .ZN(n16) );
  FA1D0 U45 ( .A(t[13]), .B(px_13_), .CI(add_1_root_add_63_2_carry[13]), .CO(
        add_1_root_add_63_2_carry[14]), .S(N75) );
  ND2D1 U46 ( .A1(n19), .A2(n20), .ZN(t[13]) );
  AOI33D1 U47 ( .A1(n28), .A2(n32), .A3(n31), .B1(fy[21]), .B2(fx[22]), .B3(
        n21), .ZN(n20) );
  INVD1 U48 ( .I(fy[22]), .ZN(n32) );
  ND2D1 U49 ( .A1(fy[21]), .A2(fx[21]), .ZN(n17) );
  INVD1 U50 ( .I(fx[20]), .ZN(rx_8_) );
  ND2D1 U51 ( .A1(fy[22]), .A2(fx[22]), .ZN(n15) );
  INVD1 U52 ( .I(fy[20]), .ZN(ry_8_) );
  NR2D1 U53 ( .A1(fy[22]), .A2(fx[21]), .ZN(n21) );
  INVD1 U54 ( .I(fx[22]), .ZN(n28) );
  IND2D1 U55 ( .A1(fy[21]), .B1(n28), .ZN(n22) );
  INVD1 U56 ( .I(fx[21]), .ZN(n30) );
  TIEL U57 ( .ZN(net2137) );
  XNR2D1 U58 ( .A1(add_1_root_add_63_2_carry[5]), .A2(px_5_), .ZN(N67) );
  CKXOR2D1 U60 ( .A1(px_2_), .A2(t_2), .Z(N64) );
  CKXOR2D1 U61 ( .A1(add_1_root_add_63_2_carry[6]), .A2(px_6_), .Z(N68) );
  CKXOR2D1 U62 ( .A1(n24), .A2(px_7_), .Z(N69) );
  CKXOR2D1 U63 ( .A1(n23), .A2(px_8_), .Z(N70) );
  CKXOR2D1 U64 ( .A1(n13), .A2(px_9_), .Z(N71) );
  IND2D0 U4 ( .A1(px_10_), .B1(n26), .ZN(add_1_root_add_63_2_carry[11]) );
  CKND2D0 U5 ( .A1(px_9_), .A2(n13), .ZN(n26) );
  CKXOR2D0 U6 ( .A1(px_10_), .A2(n26), .Z(N72) );
  OR2D0 U7 ( .A1(px_5_), .A2(add_1_root_add_63_2_carry[5]), .Z(
        add_1_root_add_63_2_carry[6]) );
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
  INVD1 U29 ( .I(divide_mode), .ZN(n78) );
  AO22D0 U30 ( .A1(N49), .A2(n78), .B1(N25), .B2(divide_mode), .Z(result[29])
         );
  AO22D0 U31 ( .A1(N48), .A2(n78), .B1(N24), .B2(divide_mode), .Z(result[28])
         );
  AO22D0 U32 ( .A1(N47), .A2(n78), .B1(N23), .B2(divide_mode), .Z(result[27])
         );
  AO22D0 U33 ( .A1(N46), .A2(n78), .B1(N22), .B2(divide_mode), .Z(result[26])
         );
  AO22D0 U34 ( .A1(N45), .A2(n78), .B1(N21), .B2(divide_mode), .Z(result[25])
         );
  AO22D0 U35 ( .A1(N44), .A2(n78), .B1(N20), .B2(divide_mode), .Z(result[24])
         );
  CKBD1 U36 ( .I(result_fraction[9]), .Z(result[9]) );
  CKBD1 U37 ( .I(result_fraction[10]), .Z(result[10]) );
  CKBD1 U38 ( .I(result_fraction[11]), .Z(result[11]) );
  CKBD1 U39 ( .I(result_fraction[12]), .Z(result[12]) );
  CKBD1 U40 ( .I(result_fraction[13]), .Z(result[13]) );
  CKBD1 U41 ( .I(result_fraction[14]), .Z(result[14]) );
  CKBD1 U42 ( .I(result_fraction[15]), .Z(result[15]) );
  CKBD1 U43 ( .I(result_fraction[16]), .Z(result[16]) );
  CKBD1 U44 ( .I(result_fraction[17]), .Z(result[17]) );
  CKBD1 U45 ( .I(result_fraction[18]), .Z(result[18]) );
  CKBD1 U46 ( .I(result_fraction[19]), .Z(result[19]) );
  CKBD1 U47 ( .I(result_fraction[8]), .Z(result[8]) );
  CKBD1 U48 ( .I(result_fraction[7]), .Z(result[7]) );
  CKBD1 U49 ( .I(result_fraction[6]), .Z(result[6]) );
  FA1D0 U50 ( .A(N4), .B(exponent_adjust[1]), .CI(n1), .CO(
        add_0_root_add_0_root_add_22_2_carry[2]), .S(N20) );
  FA1D0 U51 ( .A(N5), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[2]), .CO(
        add_0_root_add_0_root_add_22_2_carry[3]), .S(N21) );
  FA1D0 U52 ( .A(N6), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[3]), .CO(
        add_0_root_add_0_root_add_22_2_carry[4]), .S(N22) );
  FA1D0 U53 ( .A(N7), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[4]), .CO(
        add_0_root_add_0_root_add_22_2_carry[5]), .S(N23) );
  FA1D0 U54 ( .A(N8), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[5]), .CO(
        add_0_root_add_0_root_add_22_2_carry[6]), .S(N24) );
  FA1D0 U55 ( .A(N9), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[6]), .CO(
        add_0_root_add_0_root_add_22_2_carry[7]), .S(N25) );
  FA1D0 U56 ( .A(N28), .B(exponent_adjust[1]), .CI(n2), .CO(
        add_0_root_add_0_root_add_25_2_carry[2]), .S(N44) );
  FA1D0 U57 ( .A(N29), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[2]), .CO(
        add_0_root_add_0_root_add_25_2_carry[3]), .S(N45) );
  FA1D0 U58 ( .A(N30), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[3]), .CO(
        add_0_root_add_0_root_add_25_2_carry[4]), .S(N46) );
  FA1D0 U59 ( .A(N31), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[4]), .CO(
        add_0_root_add_0_root_add_25_2_carry[5]), .S(N47) );
  FA1D0 U60 ( .A(N32), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[5]), .CO(
        add_0_root_add_0_root_add_25_2_carry[6]), .S(N48) );
  FA1D0 U61 ( .A(N33), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[6]), .CO(
        add_0_root_add_0_root_add_25_2_carry[7]), .S(N49) );
  AO22D0 U62 ( .A1(N43), .A2(n78), .B1(N19), .B2(divide_mode), .Z(result[23])
         );
  CKBD1 U63 ( .I(x[21]), .Z(fraction_x[21]) );
  AO22D0 U64 ( .A1(N50), .A2(n78), .B1(divide_mode), .B2(N26), .Z(result[30])
         );
  XOR3D1 U65 ( .A1(N34), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_25_2_carry[7]), .Z(N50) );
  XOR3D1 U66 ( .A1(N10), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_22_2_carry[7]), .Z(N26) );
  CKBD1 U67 ( .I(x[22]), .Z(fraction_x[22]) );
  CKBD1 U68 ( .I(y[21]), .Z(fraction_y[21]) );
  CKBD1 U69 ( .I(y[22]), .Z(fraction_y[22]) );
  AN2XD1 U70 ( .A1(y[23]), .A2(y[24]), .Z(n35) );
  INVD1 U71 ( .I(y[29]), .ZN(N17) );
  INVD0 U72 ( .I(y[24]), .ZN(N12) );
  INVD1 U73 ( .I(y[25]), .ZN(N13) );
  INVD1 U74 ( .I(y[26]), .ZN(N14) );
  INVD1 U75 ( .I(y[27]), .ZN(N15) );
  INVD1 U76 ( .I(y[28]), .ZN(N16) );
  AN2XD1 U77 ( .A1(n35), .A2(y[25]), .Z(n410) );
  AN2XD1 U78 ( .A1(n410), .A2(y[26]), .Z(n51) );
  AN2XD1 U79 ( .A1(n51), .A2(y[27]), .Z(n60) );
  AN2XD1 U80 ( .A1(n60), .A2(y[28]), .Z(n70) );
  CKXOR2D1 U81 ( .A1(y[30]), .A2(n77), .Z(N42) );
  ND2D1 U82 ( .A1(n70), .A2(y[29]), .ZN(n77) );
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


module unified_mul_drop_l2_separate ( x, y, divide_mode, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  input divide_mode;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n55, n56;
  wire   [22:12] fx;
  wire   [22:12] fy;
  wire   [24:7] div_value;
  wire   [24:9] mul_value;
  wire   [22:6] normalized_fraction;
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
        SYNOPSYS_UNCONNECTED__52, SYNOPSYS_UNCONNECTED__53;
  assign result[1] = 1'b0;
  assign result[2] = 1'b0;
  assign result[3] = 1'b0;
  assign result[4] = 1'b0;
  assign result[5] = 1'b0;
  assign result[0] = 1'b0;

  unified_mul_drop_l2_separate_div div_core ( .fx({fx, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .fy({fy, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .value({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, div_value, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10}) );
  unified_mul_drop_l2_separate_mul mul_core ( .fx({fx, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .fy({fy, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .value({
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, mul_value, 
        SYNOPSYS_UNCONNECTED__15, SYNOPSYS_UNCONNECTED__16, 
        SYNOPSYS_UNCONNECTED__17, SYNOPSYS_UNCONNECTED__18, 
        SYNOPSYS_UNCONNECTED__19, SYNOPSYS_UNCONNECTED__20, 
        SYNOPSYS_UNCONNECTED__21, SYNOPSYS_UNCONNECTED__22, 
        SYNOPSYS_UNCONNECTED__23}) );
  fp32_normal_finite_wrapper wrapper ( .x({x[31:12], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y({y[31:12], 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .divide_mode(n55), .fraction_x({fx, SYNOPSYS_UNCONNECTED__24, 
        SYNOPSYS_UNCONNECTED__25, SYNOPSYS_UNCONNECTED__26, 
        SYNOPSYS_UNCONNECTED__27, SYNOPSYS_UNCONNECTED__28, 
        SYNOPSYS_UNCONNECTED__29, SYNOPSYS_UNCONNECTED__30, 
        SYNOPSYS_UNCONNECTED__31, SYNOPSYS_UNCONNECTED__32, 
        SYNOPSYS_UNCONNECTED__33, SYNOPSYS_UNCONNECTED__34, 
        SYNOPSYS_UNCONNECTED__35}), .fraction_y({fy, SYNOPSYS_UNCONNECTED__36, 
        SYNOPSYS_UNCONNECTED__37, SYNOPSYS_UNCONNECTED__38, 
        SYNOPSYS_UNCONNECTED__39, SYNOPSYS_UNCONNECTED__40, 
        SYNOPSYS_UNCONNECTED__41, SYNOPSYS_UNCONNECTED__42, 
        SYNOPSYS_UNCONNECTED__43, SYNOPSYS_UNCONNECTED__44, 
        SYNOPSYS_UNCONNECTED__45, SYNOPSYS_UNCONNECTED__46, 
        SYNOPSYS_UNCONNECTED__47}), .result_fraction({normalized_fraction, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .exponent_adjust({
        exponent_adjust[2], exponent_adjust[2], exponent_adjust[0]}), .result(
        {result[31:6], SYNOPSYS_UNCONNECTED__48, SYNOPSYS_UNCONNECTED__49, 
        SYNOPSYS_UNCONNECTED__50, SYNOPSYS_UNCONNECTED__51, 
        SYNOPSYS_UNCONNECTED__52, SYNOPSYS_UNCONNECTED__53}) );
  ND2D1 U78 ( .A1(n9), .A2(n7), .ZN(exponent_adjust[2]) );
  IND3D1 U80 ( .A1(n25), .B1(n26), .B2(n4), .ZN(n9) );
  ND3D1 U81 ( .A1(n26), .A2(n25), .A3(n4), .ZN(n7) );
  ND2D1 U82 ( .A1(n4), .A2(n9), .ZN(exponent_adjust[0]) );
  OAI221D0 U83 ( .A1(n2), .A2(n3), .B1(n4), .B2(n5), .C(n6), .ZN(
        normalized_fraction[9]) );
  OA22D0 U84 ( .A1(n7), .A2(n8), .B1(n9), .B2(n10), .Z(n6) );
  OAI221D0 U85 ( .A1(n5), .A2(n3), .B1(n4), .B2(n47), .C(n50), .ZN(
        normalized_fraction[10]) );
  OA22D0 U86 ( .A1(n7), .A2(n10), .B1(n9), .B2(n2), .Z(n50) );
  OAI221D0 U87 ( .A1(n47), .A2(n3), .B1(n4), .B2(n45), .C(n49), .ZN(
        normalized_fraction[11]) );
  OA22D0 U88 ( .A1(n7), .A2(n2), .B1(n9), .B2(n5), .Z(n49) );
  OAI221D0 U89 ( .A1(n45), .A2(n3), .B1(n4), .B2(n43), .C(n48), .ZN(
        normalized_fraction[12]) );
  OA22D0 U90 ( .A1(n7), .A2(n5), .B1(n9), .B2(n47), .Z(n48) );
  OAI221D0 U91 ( .A1(n43), .A2(n3), .B1(n4), .B2(n41), .C(n46), .ZN(
        normalized_fraction[13]) );
  OA22D0 U92 ( .A1(n7), .A2(n47), .B1(n9), .B2(n45), .Z(n46) );
  OAI221D0 U93 ( .A1(n41), .A2(n3), .B1(n4), .B2(n39), .C(n44), .ZN(
        normalized_fraction[14]) );
  OA22D0 U94 ( .A1(n7), .A2(n45), .B1(n9), .B2(n43), .Z(n44) );
  OAI221D0 U95 ( .A1(n39), .A2(n3), .B1(n4), .B2(n37), .C(n42), .ZN(
        normalized_fraction[15]) );
  OA22D0 U96 ( .A1(n7), .A2(n43), .B1(n9), .B2(n41), .Z(n42) );
  OAI221D0 U97 ( .A1(n37), .A2(n3), .B1(n4), .B2(n35), .C(n40), .ZN(
        normalized_fraction[16]) );
  OA22D0 U98 ( .A1(n7), .A2(n41), .B1(n9), .B2(n39), .Z(n40) );
  OAI221D0 U99 ( .A1(n35), .A2(n3), .B1(n4), .B2(n33), .C(n38), .ZN(
        normalized_fraction[17]) );
  OA22D0 U100 ( .A1(n7), .A2(n39), .B1(n9), .B2(n37), .Z(n38) );
  OAI221D0 U101 ( .A1(n33), .A2(n3), .B1(n4), .B2(n31), .C(n36), .ZN(
        normalized_fraction[18]) );
  OA22D0 U102 ( .A1(n7), .A2(n37), .B1(n9), .B2(n35), .Z(n36) );
  OAI221D0 U103 ( .A1(n31), .A2(n3), .B1(n4), .B2(n28), .C(n34), .ZN(
        normalized_fraction[19]) );
  OA22D0 U104 ( .A1(n7), .A2(n35), .B1(n9), .B2(n33), .Z(n34) );
  OAI221D0 U105 ( .A1(n25), .A2(n3), .B1(n4), .B2(n26), .C(n27), .ZN(
        normalized_fraction[22]) );
  OA22D0 U106 ( .A1(n7), .A2(n28), .B1(n9), .B2(n29), .Z(n27) );
  OAI221D0 U107 ( .A1(n29), .A2(n3), .B1(n4), .B2(n25), .C(n30), .ZN(
        normalized_fraction[21]) );
  OA22D0 U108 ( .A1(n7), .A2(n31), .B1(n9), .B2(n28), .Z(n30) );
  OAI221D0 U109 ( .A1(n28), .A2(n3), .B1(n4), .B2(n29), .C(n32), .ZN(
        normalized_fraction[20]) );
  OA22D0 U110 ( .A1(n7), .A2(n33), .B1(n9), .B2(n31), .Z(n32) );
  OAI221D0 U111 ( .A1(n10), .A2(n3), .B1(n4), .B2(n2), .C(n11), .ZN(
        normalized_fraction[8]) );
  IND2D1 U114 ( .A1(n26), .B1(n4), .ZN(n3) );
  OAI22D1 U115 ( .A1(n8), .A2(n3), .B1(n4), .B2(n10), .ZN(
        normalized_fraction[7]) );
  NR2D1 U116 ( .A1(n4), .A2(n8), .ZN(normalized_fraction[6]) );
  ND2D1 U117 ( .A1(div_value[8]), .A2(n55), .ZN(n10) );
  ND2D1 U118 ( .A1(div_value[7]), .A2(n55), .ZN(n8) );
  AOI22D1 U119 ( .A1(mul_value[24]), .A2(n56), .B1(n55), .B2(div_value[24]), 
        .ZN(n4) );
  AOI22D1 U120 ( .A1(mul_value[23]), .A2(n56), .B1(div_value[23]), .B2(n55), 
        .ZN(n26) );
  AOI22D1 U121 ( .A1(mul_value[22]), .A2(n56), .B1(div_value[22]), .B2(n55), 
        .ZN(n25) );
  AOI22D1 U122 ( .A1(mul_value[21]), .A2(n56), .B1(div_value[21]), .B2(n55), 
        .ZN(n29) );
  AOI22D1 U123 ( .A1(mul_value[20]), .A2(n56), .B1(div_value[20]), .B2(n55), 
        .ZN(n28) );
  AOI22D1 U124 ( .A1(mul_value[19]), .A2(n56), .B1(div_value[19]), .B2(n55), 
        .ZN(n31) );
  AOI22D1 U125 ( .A1(mul_value[18]), .A2(n56), .B1(div_value[18]), .B2(n55), 
        .ZN(n33) );
  AOI22D1 U126 ( .A1(mul_value[17]), .A2(n56), .B1(div_value[17]), .B2(n55), 
        .ZN(n35) );
  AOI22D1 U127 ( .A1(mul_value[16]), .A2(n56), .B1(div_value[16]), .B2(n55), 
        .ZN(n37) );
  AOI22D1 U128 ( .A1(mul_value[15]), .A2(n56), .B1(div_value[15]), .B2(n55), 
        .ZN(n39) );
  AOI22D1 U129 ( .A1(mul_value[14]), .A2(n56), .B1(div_value[14]), .B2(n55), 
        .ZN(n41) );
  AOI22D1 U130 ( .A1(mul_value[13]), .A2(n56), .B1(div_value[13]), .B2(n55), 
        .ZN(n43) );
  AOI22D1 U131 ( .A1(mul_value[12]), .A2(n56), .B1(div_value[12]), .B2(n55), 
        .ZN(n45) );
  AOI22D1 U132 ( .A1(mul_value[11]), .A2(n56), .B1(div_value[11]), .B2(n55), 
        .ZN(n47) );
  AOI22D1 U133 ( .A1(mul_value[10]), .A2(n56), .B1(div_value[10]), .B2(n55), 
        .ZN(n5) );
  AOI22D1 U134 ( .A1(mul_value[9]), .A2(n56), .B1(div_value[9]), .B2(n55), 
        .ZN(n2) );
  INVD1 U135 ( .I(n56), .ZN(n55) );
  INVD1 U140 ( .I(divide_mode), .ZN(n56) );
  OR2D1 U79 ( .A1(n9), .A2(n8), .Z(n11) );
endmodule

