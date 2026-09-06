/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Thu Sep  3 19:00:46 2026
/////////////////////////////////////////////////////////////


module oadm_runtime_plane_pruned_RESIDUAL_DROP18_DW_mult_uns_0 ( a, b, product
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
  ND2D1 U76 ( .A1(n50), .A2(n122), .ZN(n154) );
  INVD1 U79 ( .I(n152), .ZN(n126) );
  INVD1 U81 ( .I(b[4]), .ZN(n135) );
  INVD1 U82 ( .I(a[4]), .ZN(n134) );
  OR2XD1 U84 ( .A1(n25), .A2(n125), .Z(n118) );
  ND2D1 U85 ( .A1(n25), .A2(n26), .ZN(n153) );
  INVD1 U86 ( .I(n26), .ZN(n125) );
  ND2D1 U87 ( .A1(n119), .A2(n25), .ZN(n152) );
  AN2XD1 U88 ( .A1(n58), .A2(n63), .Z(n119) );
  ND2D1 U91 ( .A1(n25), .A2(n23), .ZN(n150) );
  IND2D1 U92 ( .A1(n25), .B1(n23), .ZN(n151) );
  AN2XD1 U93 ( .A1(n62), .A2(n57), .Z(n120) );
  OR2XD1 U95 ( .A1(n56), .A2(n152), .Z(n121) );
  ND2D1 U96 ( .A1(n56), .A2(n126), .ZN(n144) );
  ND2D1 U97 ( .A1(n56), .A2(n18), .ZN(n142) );
  IND2D1 U98 ( .A1(n56), .B1(n18), .ZN(n143) );
  AN2XD1 U99 ( .A1(n120), .A2(n56), .Z(n122) );
  INVD1 U101 ( .I(a[3]), .ZN(n127) );
  INVD1 U102 ( .I(b[3]), .ZN(n131) );
  INVD1 U103 ( .I(a[2]), .ZN(n128) );
  INVD1 U104 ( .I(b[2]), .ZN(n132) );
  INVD1 U105 ( .I(b[1]), .ZN(n133) );
  INVD1 U106 ( .I(a[1]), .ZN(n129) );
  INVD1 U107 ( .I(b[0]), .ZN(n136) );
  CKBD1 U108 ( .I(b[0]), .Z(product[0]) );
  MUX2ND0 U110 ( .I0(n142), .I1(n143), .S(n120), .ZN(n141) );
  MUX2ND0 U114 ( .I0(n150), .I1(n151), .S(n119), .ZN(n149) );
  CKXOR2D1 U117 ( .A1(n122), .A2(n50), .Z(n13) );
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
  MUX2ND0 U78 ( .I0(n144), .I1(n121), .S(n120), .ZN(n155) );
  AO211D0 U80 ( .A1(n26), .A2(n23), .B(n149), .C(n156), .Z(n20) );
  MUX2ND0 U83 ( .I0(n153), .I1(n118), .S(n119), .ZN(n156) );
  CKND0 U89 ( .I(n152), .ZN(n157) );
  XOR4D0 U90 ( .A1(n120), .A2(n56), .A3(n18), .A4(n126), .Z(n16) );
  XOR4D0 U94 ( .A1(n23), .A2(n25), .A3(n119), .A4(n26), .Z(n21) );
endmodule


module oadm_runtime_plane_pruned_RESIDUAL_DROP18_DW_mult_tc_1 ( a, b, product
 );
  input [4:0] a;
  input [5:0] b;
  output [10:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n13, n14, n16, n17, n18,
         n19, n21, n22, n23, n24, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n39, n40, n41, n42, n43, n45, n46, n47, n48, n50, n51,
         n53, n54, n56, n57, n58, n59, n60, n63, n64, n65, n104, n105, n106,
         n107, n108, n110, n111, n114, n115, n116, n118, n119, n120, n121,
         n122, n123, n126, n127, n128, n129, n130, n131, n134, n135, n136,
         n137, n138, n139, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154;

  FA1D0 U3 ( .A(n13), .B(n11), .CI(n3), .CO(n2), .S(product[8]) );
  FA1D0 U4 ( .A(n16), .B(n14), .CI(n4), .CO(n3), .S(product[7]) );
  FA1D0 U5 ( .A(n17), .B(n21), .CI(n5), .CO(n4), .S(product[6]) );
  FA1D0 U6 ( .A(n22), .B(n28), .CI(n6), .CO(n5), .S(product[5]) );
  FA1D0 U7 ( .A(n29), .B(n32), .CI(n7), .CO(n6), .S(product[4]) );
  FA1D0 U8 ( .A(n33), .B(n35), .CI(n8), .CO(n7), .S(product[3]) );
  FA1D0 U9 ( .A(n9), .B(n54), .CI(n37), .CO(n8), .S(product[2]) );
  HA1D0 U10 ( .A(n65), .B(n60), .CO(n9), .S(product[1]) );
  FA1D0 U14 ( .A(n50), .B(n115), .CI(n41), .CO(n18), .S(n19) );
  FA1D0 U16 ( .A(n56), .B(n51), .CI(n26), .CO(n23), .S(n24) );
  CMPE42D1 U18 ( .A(n47), .B(n57), .C(n43), .CIX(n31), .D(n34), .CO(n28), 
        .COX(n27), .S(n29) );
  FA1D0 U21 ( .A(n58), .B(n63), .CI(n36), .CO(n32), .S(n33) );
  HA1D0 U22 ( .A(n48), .B(n53), .CO(n34), .S(n35) );
  HA1D0 U23 ( .A(n59), .B(n64), .CO(n36), .S(n37) );
  ND2D1 U67 ( .A1(n10), .A2(n2), .ZN(product[10]) );
  INVD1 U69 ( .I(b[4]), .ZN(n122) );
  INVD1 U70 ( .I(n134), .ZN(n107) );
  INVD1 U71 ( .I(n126), .ZN(n114) );
  CKXOR2D1 U72 ( .A1(n142), .A2(n39), .Z(n11) );
  XNR3D1 U74 ( .A1(n46), .A2(n23), .A3(n135), .ZN(n17) );
  XNR3D1 U77 ( .A1(n45), .A2(n40), .A3(n143), .ZN(n14) );
  XNR3D1 U78 ( .A1(n42), .A2(n30), .A3(n127), .ZN(n22) );
  INVD1 U79 ( .I(a[2]), .ZN(n119) );
  NR2D1 U80 ( .A1(n23), .A2(n46), .ZN(n134) );
  NR2D1 U81 ( .A1(n30), .A2(n42), .ZN(n126) );
  OR2XD1 U83 ( .A1(n30), .A2(n108), .Z(n104) );
  ND2D1 U84 ( .A1(n30), .A2(n24), .ZN(n131) );
  INVD1 U85 ( .I(n24), .ZN(n108) );
  ND2D1 U88 ( .A1(n23), .A2(n19), .ZN(n138) );
  IND2D1 U89 ( .A1(n23), .B1(n19), .ZN(n137) );
  ND2D1 U90 ( .A1(n30), .A2(n27), .ZN(n130) );
  IND2D1 U91 ( .A1(n30), .B1(n27), .ZN(n129) );
  NR2D1 U92 ( .A1(n23), .A2(n126), .ZN(n139) );
  AN2XD1 U94 ( .A1(n23), .A2(n114), .Z(n105) );
  OR2XD1 U96 ( .A1(n40), .A2(n134), .Z(n106) );
  ND2D1 U97 ( .A1(n40), .A2(n107), .ZN(n147) );
  ND2D1 U100 ( .A1(n40), .A2(n18), .ZN(n146) );
  IND2D1 U101 ( .A1(n40), .B1(n18), .ZN(n145) );
  INVD1 U105 ( .I(b[3]), .ZN(n110) );
  INVD1 U106 ( .I(a[3]), .ZN(n118) );
  INVD1 U107 ( .I(n26), .ZN(n115) );
  INVD1 U108 ( .I(b[2]), .ZN(n111) );
  INVD1 U109 ( .I(b[1]), .ZN(n116) );
  INVD1 U110 ( .I(b[0]), .ZN(n123) );
  INVD1 U111 ( .I(a[1]), .ZN(n120) );
  INVD1 U112 ( .I(a[0]), .ZN(n121) );
  MUX2ND0 U113 ( .I0(n129), .I1(n130), .S(n42), .ZN(n128) );
  CKXOR2D1 U114 ( .A1(n27), .A2(n24), .Z(n127) );
  MUX2ND0 U115 ( .I0(n137), .I1(n138), .S(n46), .ZN(n136) );
  CKXOR2D1 U116 ( .A1(n19), .A2(n114), .Z(n135) );
  MUX2ND0 U118 ( .I0(n145), .I1(n146), .S(n45), .ZN(n144) );
  CKXOR2D1 U119 ( .A1(n18), .A2(n107), .Z(n143) );
  CKXOR2D1 U120 ( .A1(n2), .A2(n10), .Z(product[9]) );
  NR2D0 U121 ( .A1(n121), .A2(n123), .ZN(product[0]) );
  NR2D0 U122 ( .A1(n121), .A2(n116), .ZN(n65) );
  NR2D0 U123 ( .A1(n121), .A2(n111), .ZN(n64) );
  NR2D0 U124 ( .A1(n121), .A2(n110), .ZN(n63) );
  NR2D0 U125 ( .A1(n123), .A2(n120), .ZN(n60) );
  NR2D0 U126 ( .A1(n116), .A2(n120), .ZN(n59) );
  NR2D0 U127 ( .A1(n111), .A2(n120), .ZN(n58) );
  NR2D0 U128 ( .A1(n110), .A2(n120), .ZN(n57) );
  NR2D0 U129 ( .A1(n120), .A2(n122), .ZN(n56) );
  NR2D0 U130 ( .A1(n123), .A2(n119), .ZN(n54) );
  NR2D0 U131 ( .A1(n116), .A2(n119), .ZN(n53) );
  NR2D0 U132 ( .A1(n110), .A2(n119), .ZN(n51) );
  NR2D0 U133 ( .A1(n122), .A2(n119), .ZN(n50) );
  NR2D0 U134 ( .A1(n123), .A2(n118), .ZN(n48) );
  NR2D0 U135 ( .A1(n116), .A2(n118), .ZN(n47) );
  NR2D0 U136 ( .A1(n110), .A2(n118), .ZN(n46) );
  NR2D0 U137 ( .A1(n122), .A2(n118), .ZN(n45) );
  CKND2D0 U138 ( .A1(a[4]), .A2(b[0]), .ZN(n43) );
  CKND2D0 U139 ( .A1(a[4]), .A2(b[1]), .ZN(n42) );
  CKND2D0 U140 ( .A1(a[4]), .A2(b[2]), .ZN(n41) );
  CKND2D0 U141 ( .A1(a[4]), .A2(b[3]), .ZN(n40) );
  CKND2D0 U142 ( .A1(a[4]), .A2(b[4]), .ZN(n39) );
  XNR2D0 U143 ( .A1(n148), .A2(n149), .ZN(n31) );
  CKND2D0 U144 ( .A1(n148), .A2(n149), .ZN(n30) );
  CKND2D0 U145 ( .A1(a[2]), .A2(b[2]), .ZN(n149) );
  CKND2D0 U146 ( .A1(b[4]), .A2(a[0]), .ZN(n148) );
  CKND2D0 U147 ( .A1(a[3]), .A2(b[2]), .ZN(n26) );
  IND2D0 U68 ( .A1(n39), .B1(n142), .ZN(n10) );
  NR2D0 U73 ( .A1(n40), .A2(n45), .ZN(n142) );
  AO211D0 U75 ( .A1(n152), .A2(n18), .B(n144), .C(n150), .Z(n13) );
  MUX2ND0 U76 ( .I0(n106), .I1(n147), .S(n45), .ZN(n150) );
  AO211D0 U82 ( .A1(n153), .A2(n19), .B(n136), .C(n151), .Z(n16) );
  MUX2D0 U86 ( .I0(n139), .I1(n105), .S(n46), .Z(n151) );
  CKND0 U87 ( .I(n134), .ZN(n152) );
  CKND0 U93 ( .I(n126), .ZN(n153) );
  AO211D0 U95 ( .A1(n24), .A2(n27), .B(n128), .C(n154), .Z(n21) );
  MUX2ND0 U98 ( .I0(n104), .I1(n131), .S(n42), .ZN(n154) );
endmodule


module oadm_runtime_plane_pruned_RESIDUAL_DROP18_DW_mult_tc_0 ( a, b, product
 );
  input [4:0] a;
  input [5:0] b;
  output [10:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n13, n14, n16, n17, n18,
         n19, n21, n22, n23, n24, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n39, n40, n41, n42, n43, n45, n46, n47, n48, n50, n51,
         n53, n54, n56, n57, n58, n59, n60, n63, n64, n65, n104, n105, n106,
         n107, n108, n110, n111, n114, n115, n116, n118, n119, n120, n121,
         n122, n123, n126, n127, n128, n129, n130, n131, n134, n135, n136,
         n137, n138, n139, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154;

  FA1D0 U3 ( .A(n13), .B(n11), .CI(n3), .CO(n2), .S(product[8]) );
  FA1D0 U4 ( .A(n16), .B(n14), .CI(n4), .CO(n3), .S(product[7]) );
  FA1D0 U5 ( .A(n17), .B(n21), .CI(n5), .CO(n4), .S(product[6]) );
  FA1D0 U6 ( .A(n22), .B(n28), .CI(n6), .CO(n5), .S(product[5]) );
  FA1D0 U7 ( .A(n29), .B(n32), .CI(n7), .CO(n6), .S(product[4]) );
  FA1D0 U8 ( .A(n33), .B(n35), .CI(n8), .CO(n7), .S(product[3]) );
  FA1D0 U9 ( .A(n9), .B(n54), .CI(n37), .CO(n8), .S(product[2]) );
  HA1D0 U10 ( .A(n65), .B(n60), .CO(n9), .S(product[1]) );
  FA1D0 U14 ( .A(n50), .B(n115), .CI(n41), .CO(n18), .S(n19) );
  FA1D0 U16 ( .A(n56), .B(n51), .CI(n26), .CO(n23), .S(n24) );
  CMPE42D1 U18 ( .A(n47), .B(n57), .C(n43), .CIX(n31), .D(n34), .CO(n28), 
        .COX(n27), .S(n29) );
  FA1D0 U21 ( .A(n58), .B(n63), .CI(n36), .CO(n32), .S(n33) );
  HA1D0 U22 ( .A(n48), .B(n53), .CO(n34), .S(n35) );
  HA1D0 U23 ( .A(n59), .B(n64), .CO(n36), .S(n37) );
  ND2D1 U67 ( .A1(n10), .A2(n2), .ZN(product[10]) );
  INVD1 U69 ( .I(b[4]), .ZN(n122) );
  INVD1 U70 ( .I(n134), .ZN(n107) );
  INVD1 U71 ( .I(n126), .ZN(n114) );
  CKXOR2D1 U72 ( .A1(n142), .A2(n39), .Z(n11) );
  XNR3D1 U73 ( .A1(n42), .A2(n30), .A3(n127), .ZN(n22) );
  XNR3D1 U75 ( .A1(n46), .A2(n23), .A3(n135), .ZN(n17) );
  XNR3D1 U78 ( .A1(n45), .A2(n40), .A3(n143), .ZN(n14) );
  INVD1 U79 ( .I(a[2]), .ZN(n119) );
  NR2D1 U80 ( .A1(n23), .A2(n46), .ZN(n134) );
  NR2D1 U81 ( .A1(n30), .A2(n42), .ZN(n126) );
  OR2XD1 U83 ( .A1(n30), .A2(n108), .Z(n104) );
  ND2D1 U84 ( .A1(n30), .A2(n24), .ZN(n131) );
  INVD1 U85 ( .I(n24), .ZN(n108) );
  ND2D1 U88 ( .A1(n23), .A2(n19), .ZN(n138) );
  IND2D1 U89 ( .A1(n23), .B1(n19), .ZN(n137) );
  ND2D1 U90 ( .A1(n30), .A2(n27), .ZN(n130) );
  IND2D1 U91 ( .A1(n30), .B1(n27), .ZN(n129) );
  NR2D1 U92 ( .A1(n23), .A2(n126), .ZN(n139) );
  OR2XD1 U94 ( .A1(n40), .A2(n134), .Z(n105) );
  ND2D1 U95 ( .A1(n40), .A2(n107), .ZN(n147) );
  AN2XD1 U97 ( .A1(n23), .A2(n114), .Z(n106) );
  ND2D1 U100 ( .A1(n40), .A2(n18), .ZN(n146) );
  IND2D1 U101 ( .A1(n40), .B1(n18), .ZN(n145) );
  INVD1 U105 ( .I(b[3]), .ZN(n110) );
  INVD1 U106 ( .I(a[3]), .ZN(n118) );
  INVD1 U107 ( .I(n26), .ZN(n115) );
  INVD1 U108 ( .I(b[2]), .ZN(n111) );
  INVD1 U109 ( .I(b[1]), .ZN(n116) );
  INVD1 U110 ( .I(b[0]), .ZN(n123) );
  INVD1 U111 ( .I(a[1]), .ZN(n120) );
  INVD1 U112 ( .I(a[0]), .ZN(n121) );
  MUX2ND0 U113 ( .I0(n129), .I1(n130), .S(n42), .ZN(n128) );
  CKXOR2D1 U114 ( .A1(n27), .A2(n24), .Z(n127) );
  MUX2ND0 U115 ( .I0(n137), .I1(n138), .S(n46), .ZN(n136) );
  CKXOR2D1 U116 ( .A1(n19), .A2(n114), .Z(n135) );
  MUX2ND0 U118 ( .I0(n145), .I1(n146), .S(n45), .ZN(n144) );
  CKXOR2D1 U119 ( .A1(n18), .A2(n107), .Z(n143) );
  CKXOR2D1 U120 ( .A1(n2), .A2(n10), .Z(product[9]) );
  NR2D0 U121 ( .A1(n121), .A2(n123), .ZN(product[0]) );
  NR2D0 U122 ( .A1(n121), .A2(n116), .ZN(n65) );
  NR2D0 U123 ( .A1(n121), .A2(n111), .ZN(n64) );
  NR2D0 U124 ( .A1(n121), .A2(n110), .ZN(n63) );
  NR2D0 U125 ( .A1(n123), .A2(n120), .ZN(n60) );
  NR2D0 U126 ( .A1(n116), .A2(n120), .ZN(n59) );
  NR2D0 U127 ( .A1(n111), .A2(n120), .ZN(n58) );
  NR2D0 U128 ( .A1(n110), .A2(n120), .ZN(n57) );
  NR2D0 U129 ( .A1(n120), .A2(n122), .ZN(n56) );
  NR2D0 U130 ( .A1(n123), .A2(n119), .ZN(n54) );
  NR2D0 U131 ( .A1(n116), .A2(n119), .ZN(n53) );
  NR2D0 U132 ( .A1(n110), .A2(n119), .ZN(n51) );
  NR2D0 U133 ( .A1(n122), .A2(n119), .ZN(n50) );
  NR2D0 U134 ( .A1(n123), .A2(n118), .ZN(n48) );
  NR2D0 U135 ( .A1(n116), .A2(n118), .ZN(n47) );
  NR2D0 U136 ( .A1(n110), .A2(n118), .ZN(n46) );
  NR2D0 U137 ( .A1(n122), .A2(n118), .ZN(n45) );
  CKND2D0 U138 ( .A1(a[4]), .A2(b[0]), .ZN(n43) );
  CKND2D0 U139 ( .A1(a[4]), .A2(b[1]), .ZN(n42) );
  CKND2D0 U140 ( .A1(a[4]), .A2(b[2]), .ZN(n41) );
  CKND2D0 U141 ( .A1(a[4]), .A2(b[3]), .ZN(n40) );
  CKND2D0 U142 ( .A1(a[4]), .A2(b[4]), .ZN(n39) );
  XNR2D0 U143 ( .A1(n148), .A2(n149), .ZN(n31) );
  CKND2D0 U144 ( .A1(n148), .A2(n149), .ZN(n30) );
  CKND2D0 U145 ( .A1(a[2]), .A2(b[2]), .ZN(n149) );
  CKND2D0 U146 ( .A1(b[4]), .A2(a[0]), .ZN(n148) );
  CKND2D0 U147 ( .A1(a[3]), .A2(b[2]), .ZN(n26) );
  IND2D0 U68 ( .A1(n39), .B1(n142), .ZN(n10) );
  NR2D0 U74 ( .A1(n40), .A2(n45), .ZN(n142) );
  AO211D0 U76 ( .A1(n152), .A2(n18), .B(n144), .C(n150), .Z(n13) );
  MUX2ND0 U77 ( .I0(n105), .I1(n147), .S(n45), .ZN(n150) );
  AO211D0 U82 ( .A1(n153), .A2(n19), .B(n136), .C(n151), .Z(n16) );
  MUX2D0 U86 ( .I0(n139), .I1(n106), .S(n46), .Z(n151) );
  CKND0 U87 ( .I(n134), .ZN(n152) );
  CKND0 U93 ( .I(n126), .ZN(n153) );
  AO211D0 U96 ( .A1(n24), .A2(n27), .B(n128), .C(n154), .Z(n21) );
  MUX2ND0 U98 ( .I0(n104), .I1(n131), .S(n42), .ZN(n154) );
endmodule


module oadm_runtime_plane_pruned_RESIDUAL_DROP18 ( x_mantissa, y_mantissa, 
        level, divide_mode, plane_exact );
  input [23:0] x_mantissa;
  input [23:0] y_mantissa;
  input [1:0] level;
  output [28:0] plane_exact;
  input divide_mode;
  wire   N100, N101, N102, N103, N104, N105, N106, N107, N108, N109, N110,
         N155, N156, N157, N158, N159, N160, N161, N162, N163, N164, N165, N83,
         N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, n49, n50, n51, n52,
         n53, n55, n57, n58, n59, n61, n16, n17, n21, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44;
  wire   [4:1] x_midpoint;
  wire   [4:0] y_midpoint;
  wire   [22:19] x_residual;
  wire   [22:19] y_residual;
  wire   [10:1] x_product;
  wire   [10:0] y_product;
  wire   [9:0] midpoint_product;
  wire   [24:16] add_0_root_add_73_3_carry;
  wire   [24:15] sub_0_root_sub_73_carry;
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
  oadm_runtime_plane_pruned_RESIDUAL_DROP18_DW_mult_uns_0 mult_69 ( .a({n44, 
        x_midpoint, y_midpoint[0]}), .b({n44, y_midpoint}), .product({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, midpoint_product})
         );
  oadm_runtime_plane_pruned_RESIDUAL_DROP18_DW_mult_tc_1 mult_60 ( .a({
        y_residual, y_mantissa[18]}), .b({n44, x_midpoint, y_midpoint[0]}), 
        .product(y_product) );
  oadm_runtime_plane_pruned_RESIDUAL_DROP18_DW_mult_tc_0 mult_58 ( .a({
        x_residual, x_mantissa[18]}), .b({n44, y_midpoint}), .product({
        x_product, N73}) );
  FA1D0 U18 ( .A(midpoint_product[9]), .B(x_product[10]), .CI(r418_carry[24]), 
        .S(N83) );
  AN2XD1 U19 ( .A1(x_product[1]), .A2(midpoint_product[0]), .Z(n16) );
  AN2XD1 U20 ( .A1(N73), .A2(y_product[0]), .Z(n17) );
  FA1D0 U21 ( .A(N83), .B(n31), .CI(sub_0_root_sub_73_carry[24]), .S(N110) );
  FA1D0 U24 ( .A(N82), .B(n32), .CI(sub_0_root_sub_73_carry[23]), .CO(
        sub_0_root_sub_73_carry[24]), .S(N109) );
  INVD1 U26 ( .I(y_product[9]), .ZN(n32) );
  FA1D0 U27 ( .A(y_product[9]), .B(N82), .CI(add_0_root_add_73_3_carry[23]), 
        .CO(add_0_root_add_73_3_carry[24]), .S(N164) );
  FA1D0 U29 ( .A(y_product[10]), .B(N83), .CI(add_0_root_add_73_3_carry[24]), 
        .S(N165) );
  INVD1 U30 ( .I(y_product[10]), .ZN(n31) );
  FA1D0 U36 ( .A(midpoint_product[8]), .B(x_product[9]), .CI(r418_carry[23]), 
        .CO(r418_carry[24]), .S(N82) );
  FA1D0 U37 ( .A(midpoint_product[7]), .B(x_product[8]), .CI(r418_carry[22]), 
        .CO(r418_carry[23]), .S(N81) );
  FA1D0 U38 ( .A(N81), .B(n30), .CI(sub_0_root_sub_73_carry[22]), .CO(
        sub_0_root_sub_73_carry[23]), .S(N108) );
  INVD1 U40 ( .I(y_product[8]), .ZN(n30) );
  FA1D0 U41 ( .A(midpoint_product[6]), .B(x_product[7]), .CI(r418_carry[21]), 
        .CO(r418_carry[22]), .S(N80) );
  FA1D0 U42 ( .A(y_product[8]), .B(N81), .CI(add_0_root_add_73_3_carry[22]), 
        .CO(add_0_root_add_73_3_carry[23]), .S(N163) );
  FA1D0 U44 ( .A(N80), .B(n29), .CI(sub_0_root_sub_73_carry[21]), .CO(
        sub_0_root_sub_73_carry[22]), .S(N107) );
  INVD1 U45 ( .I(y_product[7]), .ZN(n29) );
  FA1D0 U46 ( .A(midpoint_product[5]), .B(x_product[6]), .CI(r418_carry[20]), 
        .CO(r418_carry[21]), .S(N79) );
  FA1D0 U48 ( .A(y_product[7]), .B(N80), .CI(add_0_root_add_73_3_carry[21]), 
        .CO(add_0_root_add_73_3_carry[22]), .S(N162) );
  FA1D0 U49 ( .A(N79), .B(n28), .CI(sub_0_root_sub_73_carry[20]), .CO(
        sub_0_root_sub_73_carry[21]), .S(N106) );
  INVD1 U50 ( .I(y_product[6]), .ZN(n28) );
  FA1D0 U51 ( .A(y_product[6]), .B(N79), .CI(add_0_root_add_73_3_carry[20]), 
        .CO(add_0_root_add_73_3_carry[21]), .S(N161) );
  FA1D0 U52 ( .A(midpoint_product[4]), .B(x_product[5]), .CI(r418_carry[19]), 
        .CO(r418_carry[20]), .S(N78) );
  FA1D0 U53 ( .A(N78), .B(n27), .CI(sub_0_root_sub_73_carry[19]), .CO(
        sub_0_root_sub_73_carry[20]), .S(N105) );
  INVD1 U54 ( .I(y_product[5]), .ZN(n27) );
  FA1D0 U55 ( .A(y_product[5]), .B(N78), .CI(add_0_root_add_73_3_carry[19]), 
        .CO(add_0_root_add_73_3_carry[20]), .S(N160) );
  FA1D0 U56 ( .A(midpoint_product[3]), .B(x_product[4]), .CI(r418_carry[18]), 
        .CO(r418_carry[19]), .S(N77) );
  FA1D0 U57 ( .A(N77), .B(n26), .CI(sub_0_root_sub_73_carry[18]), .CO(
        sub_0_root_sub_73_carry[19]), .S(N104) );
  INVD1 U58 ( .I(y_product[4]), .ZN(n26) );
  FA1D0 U59 ( .A(y_product[4]), .B(N77), .CI(add_0_root_add_73_3_carry[18]), 
        .CO(add_0_root_add_73_3_carry[19]), .S(N159) );
  FA1D0 U60 ( .A(midpoint_product[2]), .B(x_product[3]), .CI(r418_carry[17]), 
        .CO(r418_carry[18]), .S(N76) );
  FA1D0 U61 ( .A(N76), .B(n25), .CI(sub_0_root_sub_73_carry[17]), .CO(
        sub_0_root_sub_73_carry[18]), .S(N103) );
  INVD1 U62 ( .I(y_product[3]), .ZN(n25) );
  FA1D0 U63 ( .A(y_product[3]), .B(N76), .CI(add_0_root_add_73_3_carry[17]), 
        .CO(add_0_root_add_73_3_carry[18]), .S(N158) );
  FA1D0 U64 ( .A(N75), .B(n24), .CI(sub_0_root_sub_73_carry[16]), .CO(
        sub_0_root_sub_73_carry[17]), .S(N102) );
  INVD1 U65 ( .I(y_product[2]), .ZN(n24) );
  FA1D0 U66 ( .A(y_product[2]), .B(N75), .CI(add_0_root_add_73_3_carry[16]), 
        .CO(add_0_root_add_73_3_carry[17]), .S(N157) );
  AO22D0 U68 ( .A1(N165), .A2(n21), .B1(N110), .B2(divide_mode), .Z(
        plane_exact[24]) );
  AO22D0 U69 ( .A1(N164), .A2(n21), .B1(N109), .B2(divide_mode), .Z(
        plane_exact[23]) );
  ND3D1 U70 ( .A1(n42), .A2(n40), .A3(n38), .ZN(y_midpoint[4]) );
  AO22D0 U73 ( .A1(N163), .A2(n21), .B1(N108), .B2(divide_mode), .Z(
        plane_exact[22]) );
  AO22D0 U74 ( .A1(N162), .A2(n21), .B1(N107), .B2(divide_mode), .Z(
        plane_exact[21]) );
  ND3D1 U75 ( .A1(n42), .A2(n40), .A3(n37), .ZN(x_midpoint[4]) );
  AO22D0 U78 ( .A1(N161), .A2(n21), .B1(N106), .B2(divide_mode), .Z(
        plane_exact[20]) );
  FA1D0 U79 ( .A(midpoint_product[1]), .B(x_product[2]), .CI(n16), .CO(
        r418_carry[17]), .S(N75) );
  FA1D0 U80 ( .A(N74), .B(n23), .CI(sub_0_root_sub_73_carry[15]), .CO(
        sub_0_root_sub_73_carry[16]), .S(N101) );
  INVD1 U82 ( .I(y_product[1]), .ZN(n23) );
  FA1D0 U84 ( .A(y_product[1]), .B(N74), .CI(n17), .CO(
        add_0_root_add_73_3_carry[16]), .S(N156) );
  AO22D0 U85 ( .A1(N160), .A2(n21), .B1(N105), .B2(divide_mode), .Z(
        plane_exact[19]) );
  AO22D0 U86 ( .A1(N159), .A2(n21), .B1(N104), .B2(divide_mode), .Z(
        plane_exact[18]) );
  INVD1 U88 ( .I(divide_mode), .ZN(n21) );
  NR2D1 U94 ( .A1(n50), .A2(n55), .ZN(n52) );
  OAI21D1 U95 ( .A1(n52), .A2(n33), .B(n59), .ZN(x_residual[20]) );
  INVD1 U96 ( .I(n55), .ZN(n41) );
  INVD1 U99 ( .I(n50), .ZN(n42) );
  OAI21D1 U100 ( .A1(n52), .A2(n35), .B(n51), .ZN(y_residual[20]) );
  INVD1 U103 ( .I(level[0]), .ZN(n43) );
  AOI22D1 U106 ( .A1(n33), .A2(n53), .B1(n34), .B2(y_midpoint[0]), .ZN(n59) );
  INVD1 U107 ( .I(x_mantissa[19]), .ZN(n34) );
  IOA21D1 U108 ( .A1(n50), .A2(x_mantissa[21]), .B(n58), .ZN(x_residual[21])
         );
  AO221D0 U109 ( .A1(y_mantissa[21]), .A2(y_midpoint[0]), .B1(y_mantissa[21]), 
        .B2(n53), .C(n55), .Z(y_midpoint[2]) );
  NR2D1 U110 ( .A1(level[0]), .A2(level[1]), .ZN(n50) );
  OAI21D1 U112 ( .A1(x_mantissa[22]), .A2(n42), .B(n58), .ZN(x_residual[22])
         );
  AOI22D1 U113 ( .A1(n35), .A2(n53), .B1(n36), .B2(y_midpoint[0]), .ZN(n51) );
  INVD1 U114 ( .I(y_mantissa[19]), .ZN(n36) );
  IOA21D1 U115 ( .A1(n50), .A2(y_mantissa[21]), .B(n49), .ZN(y_residual[21])
         );
  AO221D0 U116 ( .A1(x_mantissa[21]), .A2(y_midpoint[0]), .B1(x_mantissa[21]), 
        .B2(n53), .C(n55), .Z(x_midpoint[2]) );
  INVD1 U117 ( .I(x_mantissa[20]), .ZN(n33) );
  OAI21D1 U118 ( .A1(y_mantissa[22]), .A2(n42), .B(n49), .ZN(y_residual[22])
         );
  INVD1 U119 ( .I(y_mantissa[20]), .ZN(n35) );
  AO22D0 U120 ( .A1(N158), .A2(n21), .B1(N103), .B2(divide_mode), .Z(
        plane_exact[17]) );
  AO22D0 U121 ( .A1(N157), .A2(n21), .B1(N102), .B2(divide_mode), .Z(
        plane_exact[16]) );
  AO22D0 U122 ( .A1(N156), .A2(n21), .B1(N101), .B2(divide_mode), .Z(
        plane_exact[15]) );
  AO22D0 U123 ( .A1(N155), .A2(n21), .B1(N100), .B2(divide_mode), .Z(
        plane_exact[14]) );
  TIEL U124 ( .ZN(n44) );
  CKXOR2D1 U126 ( .A1(N73), .A2(y_product[0]), .Z(N155) );
  CKXOR2D1 U127 ( .A1(x_product[1]), .A2(midpoint_product[0]), .Z(N74) );
  AO21D1 U129 ( .A1(y_mantissa[20]), .A2(y_midpoint[0]), .B(n53), .Z(
        y_midpoint[1]) );
  AO21D1 U130 ( .A1(x_mantissa[20]), .A2(y_midpoint[0]), .B(n53), .Z(
        x_midpoint[1]) );
  CKXOR2D0 U3 ( .A1(N73), .A2(y_product[0]), .Z(N100) );
  IND2D0 U4 ( .A1(N73), .B1(y_product[0]), .ZN(sub_0_root_sub_73_carry[15]) );
  OA21D0 U5 ( .A1(n55), .A2(n53), .B(x_mantissa[22]), .Z(n61) );
  CKND0 U6 ( .I(n39), .ZN(n53) );
  NR2D0 U7 ( .A1(n43), .A2(level[1]), .ZN(n55) );
  OA21D0 U8 ( .A1(n55), .A2(n53), .B(y_mantissa[22]), .Z(n57) );
  CKND0 U9 ( .I(n40), .ZN(y_midpoint[0]) );
  CKND2D0 U10 ( .A1(level[0]), .A2(level[1]), .ZN(n40) );
  CKAN2D0 U11 ( .A1(n41), .A2(n39), .Z(n37) );
  CKAN2D0 U12 ( .A1(n41), .A2(n39), .Z(n38) );
  CKND2D0 U13 ( .A1(n43), .A2(level[1]), .ZN(n39) );
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
  INVD1 U41 ( .I(divide_mode), .ZN(n78) );
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
  FA1D0 U48 ( .A(N4), .B(exponent_adjust[1]), .CI(n1), .CO(
        add_0_root_add_0_root_add_22_2_carry[2]), .S(N20) );
  FA1D0 U49 ( .A(N5), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[2]), .CO(
        add_0_root_add_0_root_add_22_2_carry[3]), .S(N21) );
  FA1D0 U50 ( .A(N6), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[3]), .CO(
        add_0_root_add_0_root_add_22_2_carry[4]), .S(N22) );
  FA1D0 U51 ( .A(N7), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[4]), .CO(
        add_0_root_add_0_root_add_22_2_carry[5]), .S(N23) );
  FA1D0 U52 ( .A(N8), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[5]), .CO(
        add_0_root_add_0_root_add_22_2_carry[6]), .S(N24) );
  FA1D0 U53 ( .A(N9), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[6]), .CO(
        add_0_root_add_0_root_add_22_2_carry[7]), .S(N25) );
  FA1D0 U54 ( .A(N28), .B(exponent_adjust[1]), .CI(n2), .CO(
        add_0_root_add_0_root_add_25_2_carry[2]), .S(N44) );
  FA1D0 U55 ( .A(N29), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[2]), .CO(
        add_0_root_add_0_root_add_25_2_carry[3]), .S(N45) );
  FA1D0 U56 ( .A(N30), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[3]), .CO(
        add_0_root_add_0_root_add_25_2_carry[4]), .S(N46) );
  FA1D0 U57 ( .A(N31), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[4]), .CO(
        add_0_root_add_0_root_add_25_2_carry[5]), .S(N47) );
  FA1D0 U58 ( .A(N32), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[5]), .CO(
        add_0_root_add_0_root_add_25_2_carry[6]), .S(N48) );
  FA1D0 U59 ( .A(N33), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[6]), .CO(
        add_0_root_add_0_root_add_25_2_carry[7]), .S(N49) );
  AO22D0 U60 ( .A1(N43), .A2(n78), .B1(N19), .B2(divide_mode), .Z(result[23])
         );
  AO22D0 U61 ( .A1(N50), .A2(n78), .B1(divide_mode), .B2(N26), .Z(result[30])
         );
  XOR3D1 U62 ( .A1(N34), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_25_2_carry[7]), .Z(N50) );
  XOR3D1 U63 ( .A1(N10), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_22_2_carry[7]), .Z(N26) );
  CKBD1 U64 ( .I(y[22]), .Z(fraction_y[22]) );
  CKBD1 U65 ( .I(y[21]), .Z(fraction_y[21]) );
  AN2XD1 U66 ( .A1(y[23]), .A2(y[24]), .Z(n35) );
  INVD1 U67 ( .I(y[29]), .ZN(N17) );
  INVD0 U68 ( .I(y[24]), .ZN(N12) );
  INVD1 U69 ( .I(y[25]), .ZN(N13) );
  INVD1 U70 ( .I(y[26]), .ZN(N14) );
  INVD1 U71 ( .I(y[27]), .ZN(N15) );
  INVD1 U72 ( .I(y[28]), .ZN(N16) );
  AN2XD1 U73 ( .A1(n35), .A2(y[25]), .Z(n410) );
  AN2XD1 U74 ( .A1(n410), .A2(y[26]), .Z(n51) );
  AN2XD1 U75 ( .A1(n51), .A2(y[27]), .Z(n60) );
  AN2XD1 U76 ( .A1(n60), .A2(y[28]), .Z(n70) );
  CKXOR2D1 U77 ( .A1(y[30]), .A2(n77), .Z(N42) );
  ND2D1 U78 ( .A1(n70), .A2(y[29]), .ZN(n77) );
  CKBD1 U87 ( .I(x[22]), .Z(fraction_x[22]) );
  CKBD1 U88 ( .I(x[21]), .Z(fraction_x[21]) );
  CKBD1 U89 ( .I(x[20]), .Z(fraction_x[20]) );
  CKBD1 U90 ( .I(x[19]), .Z(fraction_x[19]) );
  CKBD1 U91 ( .I(x[18]), .Z(fraction_x[18]) );
  CKBD1 U92 ( .I(y[20]), .Z(fraction_y[20]) );
  CKBD1 U93 ( .I(y[19]), .Z(fraction_y[19]) );
  CKBD1 U94 ( .I(y[18]), .Z(fraction_y[18]) );
  CKBD1 U95 ( .I(result_fraction[22]), .Z(result[22]) );
  CKBD1 U96 ( .I(result_fraction[21]), .Z(result[21]) );
  CKBD1 U97 ( .I(result_fraction[20]), .Z(result[20]) );
  CKBD1 U98 ( .I(result_fraction[19]), .Z(result[19]) );
  CKBD1 U99 ( .I(result_fraction[18]), .Z(result[18]) );
  CKBD1 U100 ( .I(result_fraction[17]), .Z(result[17]) );
  CKBD1 U101 ( .I(result_fraction[16]), .Z(result[16]) );
  CKBD1 U102 ( .I(result_fraction[15]), .Z(result[15]) );
  CKBD1 U103 ( .I(result_fraction[14]), .Z(result[14]) );
  CKBD1 U104 ( .I(result_fraction[13]), .Z(result[13]) );
  CKBD1 U105 ( .I(result_fraction[12]), .Z(result[12]) );
  CKBD1 U106 ( .I(result_fraction[11]), .Z(result[11]) );
  CKBD1 U107 ( .I(result_fraction[10]), .Z(result[10]) );
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



    module oadm_runtime_drop_sweep_RESIDUAL_DROP18_SCALE_DROP18_DW_mult_uns_0_DW_mult_uns_1 ( 
        a, b, product );
  input [6:0] a;
  input [6:0] b;
  output [13:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170;

  FA1D0 U2 ( .A(n13), .B(n63), .CI(n2), .CO(product[13]), .S(product[12]) );
  FA1D0 U3 ( .A(n16), .B(n14), .CI(n3), .CO(n2), .S(product[11]) );
  FA1D0 U4 ( .A(n19), .B(n17), .CI(n4), .CO(n3), .S(product[10]) );
  FA1D0 U5 ( .A(n24), .B(n20), .CI(n5), .CO(n4), .S(product[9]) );
  FA1D0 U6 ( .A(n25), .B(n30), .CI(n6), .CO(n5), .S(product[8]) );
  FA1D0 U7 ( .A(n31), .B(n38), .CI(n7), .CO(n6), .S(product[7]) );
  FA1D0 U8 ( .A(n39), .B(n46), .CI(n8), .CO(n7), .S(product[6]) );
  FA1D0 U9 ( .A(n47), .B(n53), .CI(n9), .CO(n8), .S(product[5]) );
  FA1D0 U10 ( .A(n54), .B(n57), .CI(n10), .CO(n9), .S(product[4]) );
  FA1D0 U11 ( .A(n58), .B(n60), .CI(n11), .CO(n10), .S(product[3]) );
  FA1D0 U12 ( .A(n12), .B(n97), .CI(n62), .CO(n11), .S(product[2]) );
  HA1D0 U13 ( .A(n110), .B(n104), .CO(n12), .S(product[1]) );
  FA1D0 U14 ( .A(n64), .B(n70), .CI(n15), .CO(n13), .S(n14) );
  CMPE42D1 U15 ( .A(n65), .B(n77), .C(n71), .CIX(n18), .D(n21), .CO(n16), 
        .COX(n15), .S(n17) );
  CMPE42D1 U16 ( .A(n26), .B(n72), .C(n22), .CIX(n23), .D(n27), .CO(n19), 
        .COX(n18), .S(n20) );
  FA1D0 U17 ( .A(n78), .B(n84), .CI(n66), .CO(n21), .S(n22) );
  CMPE42D1 U18 ( .A(n35), .B(n79), .C(n28), .CIX(n29), .D(n33), .CO(n24), 
        .COX(n23), .S(n25) );
  CMPE42D1 U19 ( .A(n67), .B(n91), .C(n73), .CIX(n32), .D(n85), .CO(n27), 
        .COX(n26), .S(n28) );
  CMPE42D1 U20 ( .A(n36), .B(n43), .C(n37), .CIX(n41), .D(n34), .CO(n30), 
        .COX(n29), .S(n31) );
  CMPE42D1 U21 ( .A(n98), .B(n86), .C(n92), .CIX(n40), .D(n80), .CO(n33), 
        .COX(n32), .S(n34) );
  HA1D0 U22 ( .A(n68), .B(n74), .CO(n35), .S(n36) );
  CMPE42D1 U23 ( .A(n50), .B(n93), .C(n44), .CIX(n42), .D(n45), .CO(n38), 
        .COX(n37), .S(n39) );
  CMPE42D1 U24 ( .A(n81), .B(n105), .C(n99), .CIX(n48), .D(n87), .CO(n41), 
        .COX(n40), .S(n42) );
  HA1D0 U25 ( .A(n69), .B(n75), .CO(n43), .S(n44) );
  CMPE42D1 U26 ( .A(n55), .B(n100), .C(n51), .CIX(n49), .D(n52), .CO(n46), 
        .COX(n45), .S(n47) );
  FA1D0 U27 ( .A(n88), .B(n106), .CI(n94), .CO(n48), .S(n49) );
  HA1D0 U28 ( .A(n76), .B(n82), .CO(n50), .S(n51) );
  CMPE42D1 U29 ( .A(n95), .B(n107), .C(n101), .CIX(n56), .D(n59), .CO(n53), 
        .COX(n52), .S(n54) );
  HA1D0 U30 ( .A(n83), .B(n89), .CO(n55), .S(n56) );
  FA1D0 U31 ( .A(n102), .B(n108), .CI(n61), .CO(n57), .S(n58) );
  HA1D0 U32 ( .A(n90), .B(n96), .CO(n59), .S(n60) );
  HA1D0 U33 ( .A(n103), .B(n109), .CO(n61), .S(n62) );
  INVD1 U99 ( .I(a[6]), .ZN(n157) );
  INVD1 U100 ( .I(a[5]), .ZN(n158) );
  INVD1 U101 ( .I(a[4]), .ZN(n159) );
  INVD1 U102 ( .I(a[3]), .ZN(n160) );
  INVD1 U103 ( .I(a[2]), .ZN(n161) );
  INVD1 U104 ( .I(a[1]), .ZN(n162) );
  INVD1 U105 ( .I(a[0]), .ZN(n163) );
  INVD1 U106 ( .I(b[0]), .ZN(n167) );
  INVD1 U107 ( .I(b[1]), .ZN(n165) );
  INVD1 U108 ( .I(b[2]), .ZN(n170) );
  INVD1 U109 ( .I(b[4]), .ZN(n168) );
  INVD1 U110 ( .I(b[3]), .ZN(n164) );
  INVD1 U111 ( .I(b[5]), .ZN(n169) );
  INVD1 U112 ( .I(b[6]), .ZN(n166) );
  NR2D0 U113 ( .A1(n163), .A2(n167), .ZN(product[0]) );
  NR2D0 U114 ( .A1(n162), .A2(n169), .ZN(n99) );
  NR2D0 U115 ( .A1(n162), .A2(n166), .ZN(n98) );
  NR2D0 U116 ( .A1(n167), .A2(n161), .ZN(n97) );
  NR2D0 U117 ( .A1(n161), .A2(n165), .ZN(n96) );
  NR2D0 U118 ( .A1(n161), .A2(n170), .ZN(n95) );
  NR2D0 U119 ( .A1(n161), .A2(n164), .ZN(n94) );
  NR2D0 U120 ( .A1(n161), .A2(n168), .ZN(n93) );
  NR2D0 U121 ( .A1(n169), .A2(n161), .ZN(n92) );
  NR2D0 U122 ( .A1(n166), .A2(n161), .ZN(n91) );
  NR2D0 U123 ( .A1(n167), .A2(n160), .ZN(n90) );
  NR2D0 U124 ( .A1(n165), .A2(n160), .ZN(n89) );
  NR2D0 U125 ( .A1(n170), .A2(n160), .ZN(n88) );
  NR2D0 U126 ( .A1(n164), .A2(n160), .ZN(n87) );
  NR2D0 U127 ( .A1(n168), .A2(n160), .ZN(n86) );
  NR2D0 U128 ( .A1(n169), .A2(n160), .ZN(n85) );
  NR2D0 U129 ( .A1(n166), .A2(n160), .ZN(n84) );
  NR2D0 U130 ( .A1(n167), .A2(n159), .ZN(n83) );
  NR2D0 U131 ( .A1(n165), .A2(n159), .ZN(n82) );
  NR2D0 U132 ( .A1(n170), .A2(n159), .ZN(n81) );
  NR2D0 U133 ( .A1(n164), .A2(n159), .ZN(n80) );
  NR2D0 U134 ( .A1(n168), .A2(n159), .ZN(n79) );
  NR2D0 U135 ( .A1(n169), .A2(n159), .ZN(n78) );
  NR2D0 U136 ( .A1(n166), .A2(n159), .ZN(n77) );
  NR2D0 U137 ( .A1(n167), .A2(n158), .ZN(n76) );
  NR2D0 U138 ( .A1(n165), .A2(n158), .ZN(n75) );
  NR2D0 U139 ( .A1(n170), .A2(n158), .ZN(n74) );
  NR2D0 U140 ( .A1(n164), .A2(n158), .ZN(n73) );
  NR2D0 U141 ( .A1(n168), .A2(n158), .ZN(n72) );
  NR2D0 U142 ( .A1(n169), .A2(n158), .ZN(n71) );
  NR2D0 U143 ( .A1(n166), .A2(n158), .ZN(n70) );
  NR2D0 U144 ( .A1(n167), .A2(n157), .ZN(n69) );
  NR2D0 U145 ( .A1(n165), .A2(n157), .ZN(n68) );
  NR2D0 U146 ( .A1(n170), .A2(n157), .ZN(n67) );
  NR2D0 U147 ( .A1(n164), .A2(n157), .ZN(n66) );
  NR2D0 U148 ( .A1(n168), .A2(n157), .ZN(n65) );
  NR2D0 U149 ( .A1(n169), .A2(n157), .ZN(n64) );
  NR2D0 U150 ( .A1(n166), .A2(n157), .ZN(n63) );
  NR2D0 U151 ( .A1(n163), .A2(n165), .ZN(n110) );
  NR2D0 U152 ( .A1(n163), .A2(n170), .ZN(n109) );
  NR2D0 U153 ( .A1(n163), .A2(n164), .ZN(n108) );
  NR2D0 U154 ( .A1(n163), .A2(n168), .ZN(n107) );
  NR2D0 U155 ( .A1(n163), .A2(n169), .ZN(n106) );
  NR2D0 U156 ( .A1(n163), .A2(n166), .ZN(n105) );
  NR2D0 U157 ( .A1(n167), .A2(n162), .ZN(n104) );
  NR2D0 U158 ( .A1(n162), .A2(n165), .ZN(n103) );
  NR2D0 U159 ( .A1(n162), .A2(n170), .ZN(n102) );
  NR2D0 U160 ( .A1(n162), .A2(n164), .ZN(n101) );
  NR2D0 U161 ( .A1(n162), .A2(n168), .ZN(n100) );
endmodule


module oadm_runtime_drop_sweep_RESIDUAL_DROP18_SCALE_DROP18 ( x, y, level, 
        divide_mode, result );
  input [31:0] x;
  input [31:0] y;
  input [1:0] level;
  output [31:0] result;
  input divide_mode;
  wire   n15, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n1, n2, n3, n5, n6, n8, n9, n10, n11,
         n12, n13, n14, n16;
  wire   [22:18] x_mantissa;
  wire   [22:18] y_mantissa;
  wire   [24:14] plane_full;
  wire   [6:0] coefficient;
  wire   [13:0] reduced_scale_product;
  wire   [22:10] normalized_fraction;
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
        SYNOPSYS_UNCONNECTED__62, SYNOPSYS_UNCONNECTED__63;

  AO21D1 U82 ( .A1(n12), .A2(n72), .B(n75), .Z(n73) );
  AO31D1 U92 ( .A1(y_mantissa[21]), .A2(n10), .A3(n12), .B(n75), .Z(n80) );
  oadm_runtime_plane_pruned_RESIDUAL_DROP18 plane ( .x_mantissa({1'b0, 
        x_mantissa, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y_mantissa({1'b0, 
        y_mantissa, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .level(level), 
        .divide_mode(n2), .plane_exact({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, plane_full, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15, SYNOPSYS_UNCONNECTED__16, 
        SYNOPSYS_UNCONNECTED__17}) );
  fp32_normal_finite_wrapper fp_wrapper ( .x({x[31:18], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .y({y[31:18], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .divide_mode(n2), .fraction_x({x_mantissa, SYNOPSYS_UNCONNECTED__18, 
        SYNOPSYS_UNCONNECTED__19, SYNOPSYS_UNCONNECTED__20, 
        SYNOPSYS_UNCONNECTED__21, SYNOPSYS_UNCONNECTED__22, 
        SYNOPSYS_UNCONNECTED__23, SYNOPSYS_UNCONNECTED__24, 
        SYNOPSYS_UNCONNECTED__25, SYNOPSYS_UNCONNECTED__26, 
        SYNOPSYS_UNCONNECTED__27, SYNOPSYS_UNCONNECTED__28, 
        SYNOPSYS_UNCONNECTED__29, SYNOPSYS_UNCONNECTED__30, 
        SYNOPSYS_UNCONNECTED__31, SYNOPSYS_UNCONNECTED__32, 
        SYNOPSYS_UNCONNECTED__33, SYNOPSYS_UNCONNECTED__34, 
        SYNOPSYS_UNCONNECTED__35}), .fraction_y({y_mantissa, 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, 
        SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39, 
        SYNOPSYS_UNCONNECTED__40, SYNOPSYS_UNCONNECTED__41, 
        SYNOPSYS_UNCONNECTED__42, SYNOPSYS_UNCONNECTED__43, 
        SYNOPSYS_UNCONNECTED__44, SYNOPSYS_UNCONNECTED__45, 
        SYNOPSYS_UNCONNECTED__46, SYNOPSYS_UNCONNECTED__47, 
        SYNOPSYS_UNCONNECTED__48, SYNOPSYS_UNCONNECTED__49, 
        SYNOPSYS_UNCONNECTED__50, SYNOPSYS_UNCONNECTED__51, 
        SYNOPSYS_UNCONNECTED__52, SYNOPSYS_UNCONNECTED__53}), 
        .result_fraction({normalized_fraction, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .exponent_adjust({exponent_adjust[2], 
        exponent_adjust[2], exponent_adjust[0]}), .result({result[31:10], 
        SYNOPSYS_UNCONNECTED__54, SYNOPSYS_UNCONNECTED__55, 
        SYNOPSYS_UNCONNECTED__56, SYNOPSYS_UNCONNECTED__57, 
        SYNOPSYS_UNCONNECTED__58, SYNOPSYS_UNCONNECTED__59, 
        SYNOPSYS_UNCONNECTED__60, SYNOPSYS_UNCONNECTED__61, 
        SYNOPSYS_UNCONNECTED__62, SYNOPSYS_UNCONNECTED__63}) );
  oadm_runtime_drop_sweep_RESIDUAL_DROP18_SCALE_DROP18_DW_mult_uns_0_DW_mult_uns_1 mult_56 ( 
        .a(plane_full[24:18]), .b(coefficient), .product(reduced_scale_product) );
  ND2D1 U3 ( .A1(n5), .A2(n36), .ZN(exponent_adjust[2]) );
  INVD1 U4 ( .I(n15), .ZN(n5) );
  INVD1 U5 ( .I(n58), .ZN(n8) );
  INR3D0 U6 ( .A1(n34), .B1(n32), .B2(n6), .ZN(n15) );
  INVD1 U7 ( .I(n33), .ZN(n6) );
  ND3D1 U8 ( .A1(n34), .A2(n32), .A3(n33), .ZN(n36) );
  ND2D1 U9 ( .A1(n33), .A2(n5), .ZN(exponent_adjust[0]) );
  OAI221D0 U10 ( .A1(n38), .A2(n1), .B1(n33), .B2(n32), .C(n39), .ZN(
        normalized_fraction[21]) );
  OA22D0 U11 ( .A1(n36), .A2(n40), .B1(n5), .B2(n37), .Z(n39) );
  OAI221D0 U12 ( .A1(n32), .A2(n1), .B1(n33), .B2(n34), .C(n35), .ZN(
        normalized_fraction[22]) );
  OA22D0 U13 ( .A1(n36), .A2(n37), .B1(n5), .B2(n38), .Z(n35) );
  OAI221D0 U14 ( .A1(n51), .A2(n1), .B1(n33), .B2(n49), .C(n54), .ZN(
        normalized_fraction[14]) );
  OA22D0 U15 ( .A1(n36), .A2(n55), .B1(n5), .B2(n53), .Z(n54) );
  OAI221D0 U16 ( .A1(n49), .A2(n1), .B1(n33), .B2(n47), .C(n52), .ZN(
        normalized_fraction[15]) );
  OA22D0 U17 ( .A1(n36), .A2(n53), .B1(n5), .B2(n51), .Z(n52) );
  OAI221D0 U18 ( .A1(n47), .A2(n1), .B1(n33), .B2(n45), .C(n50), .ZN(
        normalized_fraction[16]) );
  OA22D0 U19 ( .A1(n36), .A2(n51), .B1(n5), .B2(n49), .Z(n50) );
  OAI221D0 U20 ( .A1(n45), .A2(n1), .B1(n33), .B2(n42), .C(n48), .ZN(
        normalized_fraction[17]) );
  OA22D0 U21 ( .A1(n36), .A2(n49), .B1(n5), .B2(n47), .Z(n48) );
  OAI221D0 U22 ( .A1(n42), .A2(n1), .B1(n33), .B2(n40), .C(n46), .ZN(
        normalized_fraction[18]) );
  OA22D0 U23 ( .A1(n36), .A2(n47), .B1(n5), .B2(n45), .Z(n46) );
  OAI221D0 U24 ( .A1(n40), .A2(n1), .B1(n33), .B2(n37), .C(n44), .ZN(
        normalized_fraction[19]) );
  OA22D0 U25 ( .A1(n36), .A2(n45), .B1(n5), .B2(n42), .Z(n44) );
  OAI221D0 U26 ( .A1(n37), .A2(n1), .B1(n33), .B2(n38), .C(n41), .ZN(
        normalized_fraction[20]) );
  OA22D0 U27 ( .A1(n36), .A2(n42), .B1(n5), .B2(n40), .Z(n41) );
  OAI221D0 U28 ( .A1(n53), .A2(n1), .B1(n33), .B2(n51), .C(n56), .ZN(
        normalized_fraction[13]) );
  OAI221D0 U30 ( .A1(n55), .A2(n1), .B1(n33), .B2(n53), .C(n57), .ZN(
        normalized_fraction[12]) );
  ND2D1 U31 ( .A1(n15), .A2(n8), .ZN(n57) );
  OR2D1 U32 ( .A1(n6), .A2(n34), .Z(n1) );
  OAI22D1 U33 ( .A1(n58), .A2(n1), .B1(n33), .B2(n55), .ZN(
        normalized_fraction[11]) );
  NR2D1 U34 ( .A1(n33), .A2(n58), .ZN(normalized_fraction[10]) );
  INR2D1 U35 ( .A1(n72), .B1(n12), .ZN(n77) );
  INR2D1 U36 ( .A1(n78), .B1(n63), .ZN(n74) );
  ND3D1 U37 ( .A1(n11), .A2(n10), .A3(n12), .ZN(n64) );
  OAI211D1 U38 ( .A1(n13), .A2(n81), .B(n82), .C(n68), .ZN(coefficient[0]) );
  ND2D1 U39 ( .A1(n11), .A2(n10), .ZN(n81) );
  OAI31D1 U40 ( .A1(n79), .A2(n75), .A3(n77), .B(n16), .ZN(n82) );
  OAI211D1 U41 ( .A1(n11), .A2(n63), .B(n65), .C(n66), .ZN(coefficient[1]) );
  NR3D0 U42 ( .A1(n72), .A2(n78), .A3(n79), .ZN(n70) );
  OAI22D1 U43 ( .A1(n70), .A2(n63), .B1(n72), .B2(n13), .ZN(coefficient[2]) );
  INVD1 U44 ( .I(n63), .ZN(n16) );
  INVD1 U45 ( .I(n67), .ZN(n13) );
  ND2D1 U46 ( .A1(reduced_scale_product[2]), .A2(n2), .ZN(n53) );
  ND2D1 U47 ( .A1(reduced_scale_product[1]), .A2(n2), .ZN(n55) );
  ND2D1 U48 ( .A1(reduced_scale_product[0]), .A2(n2), .ZN(n58) );
  AOI22D1 U49 ( .A1(reduced_scale_product[12]), .A2(n2), .B1(plane_full[23]), 
        .B2(n3), .ZN(n34) );
  AOI22D1 U50 ( .A1(reduced_scale_product[13]), .A2(n2), .B1(plane_full[24]), 
        .B2(n3), .ZN(n33) );
  AOI22D1 U51 ( .A1(reduced_scale_product[11]), .A2(n2), .B1(plane_full[22]), 
        .B2(n3), .ZN(n32) );
  AOI22D1 U52 ( .A1(reduced_scale_product[10]), .A2(n2), .B1(plane_full[21]), 
        .B2(n3), .ZN(n38) );
  AOI22D1 U53 ( .A1(reduced_scale_product[9]), .A2(n2), .B1(plane_full[20]), 
        .B2(n3), .ZN(n37) );
  AOI22D1 U54 ( .A1(reduced_scale_product[8]), .A2(n2), .B1(plane_full[19]), 
        .B2(n3), .ZN(n40) );
  AOI22D1 U56 ( .A1(reduced_scale_product[7]), .A2(n2), .B1(plane_full[18]), 
        .B2(n3), .ZN(n42) );
  AOI22D1 U57 ( .A1(reduced_scale_product[6]), .A2(n2), .B1(plane_full[17]), 
        .B2(n3), .ZN(n45) );
  NR2D1 U58 ( .A1(n10), .A2(y_mantissa[21]), .ZN(n72) );
  OAI211D1 U59 ( .A1(y_mantissa[22]), .A2(n66), .B(n68), .C(n71), .ZN(
        coefficient[4]) );
  AOI221D0 U60 ( .A1(n72), .A2(n67), .B1(n16), .B2(n73), .C(n74), .ZN(n71) );
  INVD1 U61 ( .I(y_mantissa[22]), .ZN(n10) );
  OAI221D0 U62 ( .A1(n10), .A2(n66), .B1(level[1]), .B2(level[0]), .C(n76), 
        .ZN(coefficient[3]) );
  AOI211XD0 U63 ( .A1(n77), .A2(n16), .B(n9), .C(n74), .ZN(n76) );
  INVD1 U64 ( .I(n65), .ZN(n9) );
  NR3D0 U65 ( .A1(y_mantissa[21]), .A2(y_mantissa[22]), .A3(n12), .ZN(n75) );
  INVD1 U66 ( .I(y_mantissa[20]), .ZN(n12) );
  ND2D1 U67 ( .A1(n16), .A2(n80), .ZN(n65) );
  NR3D0 U68 ( .A1(n11), .A2(y_mantissa[22]), .A3(n12), .ZN(n78) );
  INVD1 U69 ( .I(y_mantissa[21]), .ZN(n11) );
  OA22D0 U70 ( .A1(level[1]), .A2(level[0]), .B1(n63), .B2(n64), .Z(n68) );
  NR3D0 U71 ( .A1(n11), .A2(y_mantissa[20]), .A3(n10), .ZN(n79) );
  ND2D1 U72 ( .A1(level[1]), .A2(level[0]), .ZN(n63) );
  AOI22D1 U73 ( .A1(reduced_scale_product[5]), .A2(n2), .B1(plane_full[16]), 
        .B2(n3), .ZN(n47) );
  INVD1 U74 ( .I(n3), .ZN(n2) );
  OAI211D1 U75 ( .A1(y_mantissa[21]), .A2(n13), .B(n68), .C(n69), .ZN(
        coefficient[5]) );
  IAO21D1 U76 ( .A1(n63), .A2(n70), .B(y_mantissa[22]), .ZN(n69) );
  NR2D1 U77 ( .A1(n14), .A2(level[0]), .ZN(n67) );
  INVD1 U78 ( .I(level[1]), .ZN(n14) );
  OAI221D0 U79 ( .A1(y_mantissa[22]), .A2(n62), .B1(n63), .B2(n64), .C(n65), 
        .ZN(coefficient[6]) );
  INR2D1 U80 ( .A1(n66), .B1(n67), .ZN(n62) );
  ND2D1 U81 ( .A1(level[0]), .A2(n14), .ZN(n66) );
  AOI22D1 U83 ( .A1(reduced_scale_product[4]), .A2(n2), .B1(plane_full[15]), 
        .B2(n3), .ZN(n49) );
  AOI22D1 U84 ( .A1(reduced_scale_product[3]), .A2(n2), .B1(plane_full[14]), 
        .B2(n3), .ZN(n51) );
  INVD1 U85 ( .I(divide_mode), .ZN(n3) );
  OA22D1 U29 ( .A1(n36), .A2(n58), .B1(n5), .B2(n55), .Z(n56) );
endmodule


module oadm_runtime_drop_r18_s18 ( x, y, level, divide_mode, result );
  input [31:0] x;
  input [31:0] y;
  input [1:0] level;
  output [31:0] result;
  input divide_mode;
  wire   n1, n2;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9;
  assign result[1] = 1'b0;
  assign result[2] = 1'b0;
  assign result[3] = 1'b0;
  assign result[4] = 1'b0;
  assign result[5] = 1'b0;
  assign result[6] = 1'b0;
  assign result[7] = 1'b0;
  assign result[8] = 1'b0;
  assign result[9] = 1'b0;
  assign result[0] = 1'b0;

  oadm_runtime_drop_sweep_RESIDUAL_DROP18_SCALE_DROP18 implementation ( .x({
        x[31:18], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y({y[31:18], 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .level({n2, n1}), .divide_mode(
        divide_mode), .result({result[31:10], SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9}) );
  CKBD1 U1 ( .I(level[0]), .Z(n1) );
  CKBD1 U2 ( .I(level[1]), .Z(n2) );
endmodule

