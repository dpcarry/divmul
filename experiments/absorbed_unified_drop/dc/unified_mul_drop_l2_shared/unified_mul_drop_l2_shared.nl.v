/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Wed Sep 16 00:47:52 2026
/////////////////////////////////////////////////////////////


module unified_mul_drop_l2_shared_core_DW_mult_tc_1 ( a, b, product );
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
  CMPE42D1 U21 ( .A(n176), .B(n81), .C(n30), .CIX(n31), .D(n35), .CO(n26), 
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
  INVD1 U110 ( .I(b[5]), .ZN(n179) );
  INVD1 U111 ( .I(b[2]), .ZN(n177) );
  INVD1 U112 ( .I(b[3]), .ZN(n178) );
  INVD1 U113 ( .I(b[4]), .ZN(n175) );
  INVD1 U114 ( .I(b[0]), .ZN(n174) );
  INVD1 U115 ( .I(b[1]), .ZN(n180) );
  CKBD1 U116 ( .I(product[14]), .Z(product[15]) );
  INVD1 U117 ( .I(n38), .ZN(n176) );
  INVD1 U118 ( .I(a[4]), .ZN(n184) );
  INVD1 U119 ( .I(a[1]), .ZN(n187) );
  INVD1 U120 ( .I(a[2]), .ZN(n186) );
  INVD1 U121 ( .I(a[0]), .ZN(n188) );
  INVD1 U122 ( .I(a[3]), .ZN(n185) );
  INVD1 U123 ( .I(a[5]), .ZN(n183) );
  INVD1 U124 ( .I(a[6]), .ZN(n182) );
  INVD1 U125 ( .I(a[7]), .ZN(n181) );
  CKND0 U126 ( .I(n2), .ZN(product[14]) );
  NR2D0 U127 ( .A1(n188), .A2(n174), .ZN(product[0]) );
  NR2D0 U128 ( .A1(n184), .A2(n177), .ZN(n99) );
  NR2D0 U129 ( .A1(n177), .A2(n183), .ZN(n98) );
  NR2D0 U130 ( .A1(n177), .A2(n182), .ZN(n97) );
  NR2D0 U131 ( .A1(n177), .A2(n181), .ZN(n96) );
  CKND2D0 U132 ( .A1(a[8]), .A2(b[2]), .ZN(n95) );
  NR2D0 U133 ( .A1(n188), .A2(n178), .ZN(n94) );
  NR2D0 U134 ( .A1(n178), .A2(n187), .ZN(n93) );
  NR2D0 U135 ( .A1(n178), .A2(n186), .ZN(n92) );
  NR2D0 U136 ( .A1(n178), .A2(n185), .ZN(n91) );
  NR2D0 U137 ( .A1(n184), .A2(n178), .ZN(n90) );
  NR2D0 U138 ( .A1(n183), .A2(n178), .ZN(n89) );
  NR2D0 U139 ( .A1(n182), .A2(n178), .ZN(n88) );
  NR2D0 U140 ( .A1(n181), .A2(n178), .ZN(n87) );
  CKND2D0 U141 ( .A1(b[3]), .A2(a[8]), .ZN(n86) );
  NR2D0 U142 ( .A1(n188), .A2(n175), .ZN(n85) );
  NR2D0 U143 ( .A1(n187), .A2(n175), .ZN(n84) );
  NR2D0 U144 ( .A1(n186), .A2(n175), .ZN(n83) );
  NR2D0 U145 ( .A1(n185), .A2(n175), .ZN(n82) );
  NR2D0 U146 ( .A1(n183), .A2(n175), .ZN(n81) );
  NR2D0 U147 ( .A1(n182), .A2(n175), .ZN(n80) );
  NR2D0 U148 ( .A1(n181), .A2(n175), .ZN(n79) );
  CKND2D0 U149 ( .A1(b[4]), .A2(a[8]), .ZN(n78) );
  NR2D0 U150 ( .A1(n188), .A2(n179), .ZN(n77) );
  NR2D0 U151 ( .A1(n187), .A2(n179), .ZN(n76) );
  NR2D0 U152 ( .A1(n186), .A2(n179), .ZN(n75) );
  NR2D0 U153 ( .A1(n185), .A2(n179), .ZN(n74) );
  NR2D0 U154 ( .A1(n184), .A2(n179), .ZN(n73) );
  NR2D0 U155 ( .A1(n183), .A2(n179), .ZN(n72) );
  NR2D0 U156 ( .A1(n182), .A2(n179), .ZN(n71) );
  NR2D0 U157 ( .A1(n181), .A2(n179), .ZN(n70) );
  CKND2D0 U158 ( .A1(b[5]), .A2(a[8]), .ZN(n69) );
  CKND2D0 U159 ( .A1(b[4]), .A2(a[4]), .ZN(n38) );
  NR2D0 U160 ( .A1(n174), .A2(n187), .ZN(n120) );
  NR2D0 U161 ( .A1(n174), .A2(n186), .ZN(n119) );
  NR2D0 U162 ( .A1(n174), .A2(n185), .ZN(n118) );
  NR2D0 U163 ( .A1(n174), .A2(n184), .ZN(n117) );
  NR2D0 U164 ( .A1(n174), .A2(n183), .ZN(n116) );
  NR2D0 U165 ( .A1(n174), .A2(n182), .ZN(n115) );
  NR2D0 U166 ( .A1(n174), .A2(n181), .ZN(n114) );
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
  NR2D0 U177 ( .A1(n188), .A2(n177), .ZN(n103) );
  NR2D0 U178 ( .A1(n177), .A2(n187), .ZN(n102) );
  NR2D0 U179 ( .A1(n177), .A2(n186), .ZN(n101) );
  NR2D0 U180 ( .A1(n177), .A2(n185), .ZN(n100) );
endmodule


module unified_mul_drop_l2_shared_core_DW01_add_1 ( A, B, CI, SUM, CO );
  input [19:0] A;
  input [19:0] B;
  output [19:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [17:4] carry;

  FA1D0 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  FA1D0 U1_3 ( .A(A[3]), .B(B[3]), .CI(n1), .CO(carry[4]), .S(SUM[3]) );
  FA1D0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1D0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
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
  FA1D0 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  FA1D0 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  XOR3D1 U1_17 ( .A1(A[17]), .A2(B[17]), .A3(carry[17]), .Z(SUM[17]) );
  FA1D0 U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  AN2XD1 U1 ( .A1(B[2]), .A2(A[2]), .Z(n1) );
  CKBD1 U2 ( .I(B[1]), .Z(SUM[1]) );
  CKBD1 U3 ( .I(B[0]), .Z(SUM[0]) );
  CKXOR2D1 U4 ( .A1(B[2]), .A2(A[2]), .Z(SUM[2]) );
endmodule


module unified_mul_drop_l2_shared_core_DW01_add_0 ( A, B, CI, SUM, CO );
  input [20:0] A;
  input [20:0] B;
  output [20:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [17:2] carry;

  FA1D0 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  FA1D0 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA1D0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1D0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1D0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
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
  FA1D0 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  FA1D0 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  FA1D0 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  FA1D0 U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  XOR3D1 U1_17 ( .A1(A[17]), .A2(B[17]), .A3(carry[17]), .Z(SUM[17]) );
  AN2XD1 U1 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
  CKXOR2D1 U2 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
endmodule


module unified_mul_drop_l2_shared_core_DW_mult_tc_0 ( a, b, product );
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
  CMPE42D1 U21 ( .A(n176), .B(n81), .C(n30), .CIX(n31), .D(n35), .CO(n26), 
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
  INVD1 U110 ( .I(b[5]), .ZN(n174) );
  INVD1 U111 ( .I(b[2]), .ZN(n179) );
  INVD1 U112 ( .I(b[3]), .ZN(n178) );
  INVD1 U113 ( .I(b[4]), .ZN(n175) );
  INVD1 U114 ( .I(b[0]), .ZN(n177) );
  INVD1 U115 ( .I(b[1]), .ZN(n180) );
  CKBD1 U116 ( .I(product[15]), .Z(product[14]) );
  INVD1 U117 ( .I(n38), .ZN(n176) );
  INVD1 U118 ( .I(a[4]), .ZN(n184) );
  INVD1 U119 ( .I(a[1]), .ZN(n187) );
  INVD1 U120 ( .I(a[2]), .ZN(n186) );
  INVD1 U121 ( .I(a[0]), .ZN(n188) );
  INVD1 U122 ( .I(a[3]), .ZN(n185) );
  INVD1 U123 ( .I(a[5]), .ZN(n183) );
  INVD1 U124 ( .I(a[6]), .ZN(n182) );
  INVD1 U125 ( .I(a[7]), .ZN(n181) );
  CKND0 U126 ( .I(n2), .ZN(product[15]) );
  NR2D0 U127 ( .A1(n188), .A2(n177), .ZN(product[0]) );
  NR2D0 U128 ( .A1(n184), .A2(n179), .ZN(n99) );
  NR2D0 U129 ( .A1(n179), .A2(n183), .ZN(n98) );
  NR2D0 U130 ( .A1(n179), .A2(n182), .ZN(n97) );
  NR2D0 U131 ( .A1(n179), .A2(n181), .ZN(n96) );
  CKND2D0 U132 ( .A1(a[8]), .A2(b[2]), .ZN(n95) );
  NR2D0 U133 ( .A1(n188), .A2(n178), .ZN(n94) );
  NR2D0 U134 ( .A1(n178), .A2(n187), .ZN(n93) );
  NR2D0 U135 ( .A1(n178), .A2(n186), .ZN(n92) );
  NR2D0 U136 ( .A1(n178), .A2(n185), .ZN(n91) );
  NR2D0 U137 ( .A1(n184), .A2(n178), .ZN(n90) );
  NR2D0 U138 ( .A1(n183), .A2(n178), .ZN(n89) );
  NR2D0 U139 ( .A1(n182), .A2(n178), .ZN(n88) );
  NR2D0 U140 ( .A1(n181), .A2(n178), .ZN(n87) );
  CKND2D0 U141 ( .A1(b[3]), .A2(a[8]), .ZN(n86) );
  NR2D0 U142 ( .A1(n188), .A2(n175), .ZN(n85) );
  NR2D0 U143 ( .A1(n187), .A2(n175), .ZN(n84) );
  NR2D0 U144 ( .A1(n186), .A2(n175), .ZN(n83) );
  NR2D0 U145 ( .A1(n185), .A2(n175), .ZN(n82) );
  NR2D0 U146 ( .A1(n183), .A2(n175), .ZN(n81) );
  NR2D0 U147 ( .A1(n182), .A2(n175), .ZN(n80) );
  NR2D0 U148 ( .A1(n181), .A2(n175), .ZN(n79) );
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
  NR2D0 U160 ( .A1(n177), .A2(n187), .ZN(n120) );
  NR2D0 U161 ( .A1(n177), .A2(n186), .ZN(n119) );
  NR2D0 U162 ( .A1(n177), .A2(n185), .ZN(n118) );
  NR2D0 U163 ( .A1(n177), .A2(n184), .ZN(n117) );
  NR2D0 U164 ( .A1(n177), .A2(n183), .ZN(n116) );
  NR2D0 U165 ( .A1(n177), .A2(n182), .ZN(n115) );
  NR2D0 U166 ( .A1(n177), .A2(n181), .ZN(n114) );
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


module unified_mul_drop_l2_shared_core ( fx, fy, divide_mode, value );
  input [22:0] fx;
  input [22:0] fy;
  output [28:0] value;
  input divide_mode;
  wire   rx_8_, ry_8_, N131, N132, N133, N134, N135, N136, N137, N138, N139,
         N140, N141, N142, N143, N144, N145, N146, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, px_9_, px_8_, px_7_,
         px_6_, px_5_, px_4_, px_3_, px_2_, px_1_, px_15_, px_14_, px_13_,
         px_12_, px_11_, px_10_, px_0_, N165, N164, N163, N162, N161, N160,
         N159, N158, N157, N156, N155, N154, N153, N152, N151, N150, N149,
         N148, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n24, n25, n26, n27, n28, n29, n30, n31, n32, n126, n127, n128,
         n129, n130, n1310, n1320, n1330, n1340, n1350, n1360, n1370, n1380,
         n1390, n1400, n1410, n1420, n1430, n1440, n1450, n1460, n147, n1480,
         n1490, n1500, n1510, n1520, n1530, n1540;
  wire   [4:0] a;
  wire   [5:0] b;
  wire   [17:2] t;
  wire   [15:1] py;
  wire   [20:1] signed_y;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4;

  OR4D1 U7 ( .A1(n36), .A2(n37), .A3(n1430), .A4(n1340), .Z(t[8]) );
  AN3XD1 U12 ( .A1(n1400), .A2(n46), .A3(n38), .Z(n45) );
  AN4XD1 U30 ( .A1(n49), .A2(n1400), .A3(n1410), .A4(n76), .Z(n57) );
  AN3XD1 U31 ( .A1(n77), .A2(n78), .A3(n79), .Z(n49) );
  AN3XD1 U32 ( .A1(n80), .A2(n40), .A3(n34), .Z(n65) );
  AN4XD1 U57 ( .A1(n44), .A2(n38), .A3(n88), .A4(n60), .Z(n87) );
  AN3XD1 U58 ( .A1(n70), .A2(n40), .A3(n89), .Z(n86) );
  AN4XD1 U60 ( .A1(n92), .A2(n89), .A3(n69), .A4(n93), .Z(n91) );
  AN4XD1 U68 ( .A1(n39), .A2(n54), .A3(n40), .A4(n75), .Z(n35) );
  AN2XD1 U73 ( .A1(n104), .A2(n105), .Z(n102) );
  AN2XD1 U75 ( .A1(n83), .A2(n51), .Z(n56) );
  AN2XD1 U93 ( .A1(n115), .A2(n116), .Z(n108) );
  AN2XD1 U94 ( .A1(n115), .A2(n113), .Z(n59) );
  AN2XD1 U95 ( .A1(n114), .A2(n116), .Z(n64) );
  AN4XD1 U99 ( .A1(n105), .A2(n69), .A3(n70), .A4(n89), .Z(n74) );
  AN2XD1 U112 ( .A1(n93), .A2(n107), .Z(n50) );
  AN2XD1 U121 ( .A1(n75), .A2(n44), .Z(n83) );
  unified_mul_drop_l2_shared_core_DW_mult_tc_1 mult_44 ( .a({rx_8_, fx[19:12]}), .b({n1520, n1350, a}), .product({px_15_, px_14_, px_13_, px_12_, px_11_, 
        px_10_, px_9_, px_8_, px_7_, px_6_, px_5_, px_4_, px_3_, px_2_, px_1_, 
        px_0_}) );
  unified_mul_drop_l2_shared_core_DW01_add_1 add_1_root_add_47_2 ( .A({n1520, 
        n1520, t, n1520, n1520}), .B({px_15_, px_15_, px_15_, px_15_, px_15_, 
        px_14_, px_13_, px_12_, px_11_, px_10_, px_9_, px_8_, px_7_, px_6_, 
        px_5_, px_4_, px_3_, px_2_, px_1_, px_0_}), .CI(n1520), .SUM({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, N165, N164, N163, 
        N162, N161, N160, N159, N158, N157, N156, N155, N154, N153, N152, N151, 
        N150, N149, N148}) );
  unified_mul_drop_l2_shared_core_DW01_add_0 add_0_root_add_47_2 ( .A({
        signed_y[20], signed_y[20], signed_y[20], signed_y[20], signed_y[20], 
        signed_y[15:1], N131}), .B({1'b0, 1'b0, 1'b0, N165, N164, N163, N162, 
        N161, N160, N159, N158, N157, N156, N155, N154, N153, N152, N151, N150, 
        N149, N148}), .CI(n1520), .SUM({SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, value[24:7]}) );
  unified_mul_drop_l2_shared_core_DW_mult_tc_0 mult_44_S2 ( .a({ry_8_, 
        fy[19:12]}), .b({n1520, b}), .product({py, N131}) );
  INR4D0 U14 ( .A1(n50), .B1(n62), .B2(n1450), .B3(t[17]), .ZN(n43) );
  NR3D0 U15 ( .A1(n1390), .A2(n1350), .A3(n1440), .ZN(n84) );
  INVD1 U16 ( .I(n43), .ZN(n1350) );
  ND3D1 U17 ( .A1(n74), .A2(n1410), .A3(n88), .ZN(t[17]) );
  AN2XD1 U18 ( .A1(n20), .A2(n1320), .Z(n9) );
  INVD1 U19 ( .I(n94), .ZN(n1410) );
  IND3D1 U20 ( .A1(n73), .B1(n80), .B2(n43), .ZN(b[5]) );
  ND4D1 U21 ( .A1(n60), .A2(n1330), .A3(n61), .A4(n51), .ZN(t[16]) );
  NR2D1 U22 ( .A1(n1360), .A2(n62), .ZN(n61) );
  AN2XD1 U23 ( .A1(n11), .A2(n130), .Z(n10) );
  AN2XD1 U24 ( .A1(n12), .A2(n129), .Z(n11) );
  AN2XD1 U25 ( .A1(n13), .A2(n128), .Z(n12) );
  AN2XD1 U26 ( .A1(n14), .A2(n127), .Z(n13) );
  NR4D0 U27 ( .A1(n1450), .A2(n64), .A3(n1460), .A4(n1340), .ZN(n51) );
  AN2XD1 U28 ( .A1(n15), .A2(n126), .Z(n14) );
  NR3D0 U29 ( .A1(n1460), .A2(n1360), .A3(n1480), .ZN(n38) );
  NR3D0 U33 ( .A1(n1430), .A2(n1380), .A3(n55), .ZN(n60) );
  AN2XD1 U34 ( .A1(n16), .A2(n32), .Z(n15) );
  AN2XD1 U35 ( .A1(n17), .A2(n31), .Z(n16) );
  AN2XD1 U36 ( .A1(n18), .A2(n30), .Z(n17) );
  INVD1 U37 ( .I(n101), .ZN(n1360) );
  INR2D1 U38 ( .A1(n80), .B1(n1380), .ZN(n33) );
  INVD1 U39 ( .I(a[1]), .ZN(n1370) );
  INVD1 U40 ( .I(n96), .ZN(n1400) );
  INVD1 U41 ( .I(n39), .ZN(n1390) );
  AN2XD1 U42 ( .A1(n19), .A2(n29), .Z(n18) );
  AN2XD1 U43 ( .A1(n21), .A2(n28), .Z(n19) );
  NR3D0 U46 ( .A1(n64), .A2(n59), .A3(n53), .ZN(n88) );
  ND4D1 U48 ( .A1(n84), .A2(n60), .A3(n97), .A4(n76), .ZN(b[2]) );
  IND2D1 U49 ( .A1(n108), .B1(n92), .ZN(n53) );
  INVD1 U50 ( .I(py[12]), .ZN(n130) );
  INVD1 U51 ( .I(py[11]), .ZN(n129) );
  AN2XD1 U52 ( .A1(n10), .A2(n1310), .Z(n20) );
  ND2D1 U53 ( .A1(n85), .A2(n104), .ZN(n94) );
  INVD1 U54 ( .I(py[10]), .ZN(n128) );
  IND4D1 U55 ( .A1(b[5]), .B1(n40), .B2(n97), .B3(n109), .ZN(a[2]) );
  INR2D1 U56 ( .A1(n60), .B1(n48), .ZN(n109) );
  ND4D1 U59 ( .A1(n65), .A2(n49), .A3(n66), .A4(n67), .ZN(t[14]) );
  NR2D1 U61 ( .A1(n147), .A2(n1390), .ZN(n66) );
  ND4D1 U62 ( .A1(n50), .A2(n44), .A3(n57), .A4(n63), .ZN(t[15]) );
  INR4D0 U63 ( .A1(n40), .B1(n59), .B2(n64), .B3(n1450), .ZN(n63) );
  INVD1 U64 ( .I(py[9]), .ZN(n127) );
  INVD1 U65 ( .I(py[8]), .ZN(n126) );
  ND4D1 U66 ( .A1(n65), .A2(n57), .A3(n74), .A4(n75), .ZN(t[12]) );
  INVD1 U67 ( .I(py[7]), .ZN(n32) );
  ND4D1 U69 ( .A1(n1330), .A2(n1400), .A3(n81), .A4(n74), .ZN(t[11]) );
  NR2D1 U70 ( .A1(n1380), .A2(n1480), .ZN(n81) );
  ND3D1 U71 ( .A1(n77), .A2(n68), .A3(n79), .ZN(n62) );
  ND4D1 U72 ( .A1(n51), .A2(n1400), .A3(n90), .A4(n91), .ZN(b[3]) );
  NR2D1 U74 ( .A1(n36), .A2(n94), .ZN(n90) );
  INVD1 U76 ( .I(n34), .ZN(n1340) );
  ND2D1 U77 ( .A1(n118), .A2(n116), .ZN(n85) );
  INVD1 U78 ( .I(n97), .ZN(n1460) );
  INVD1 U79 ( .I(py[6]), .ZN(n31) );
  ND4D1 U80 ( .A1(n84), .A2(n33), .A3(n44), .A4(n54), .ZN(t[10]) );
  ND4D1 U81 ( .A1(n77), .A2(n85), .A3(n86), .A4(n87), .ZN(b[4]) );
  IND4D1 U82 ( .A1(n106), .B1(n1410), .B2(n107), .B3(n56), .ZN(a[3]) );
  IND3D1 U83 ( .A1(n108), .B1(n70), .B2(n105), .ZN(n106) );
  INVD1 U84 ( .I(py[5]), .ZN(n30) );
  ND3D1 U85 ( .A1(n33), .A2(n34), .A3(n35), .ZN(t[9]) );
  ND2D1 U86 ( .A1(n46), .A2(n54), .ZN(n55) );
  INVD1 U87 ( .I(n95), .ZN(n1380) );
  ND4D1 U88 ( .A1(n38), .A2(n35), .A3(n100), .A4(n98), .ZN(b[0]) );
  NR2D1 U89 ( .A1(n1340), .A2(n1430), .ZN(n100) );
  INVD1 U90 ( .I(py[4]), .ZN(n29) );
  IND3D1 U91 ( .A1(n37), .B1(n33), .B2(n38), .ZN(t[7]) );
  INVD1 U92 ( .I(n78), .ZN(n1480) );
  ND2D1 U96 ( .A1(n116), .A2(n110), .ZN(n101) );
  ND4D1 U97 ( .A1(n101), .A2(n1370), .A3(n97), .A4(n122), .ZN(a[0]) );
  NR2D1 U98 ( .A1(n96), .A2(n73), .ZN(n122) );
  ND3D1 U100 ( .A1(n99), .A2(n40), .A3(n33), .ZN(a[1]) );
  IND4D1 U101 ( .A1(a[0]), .B1(n69), .B2(n102), .B3(n103), .ZN(a[4]) );
  IINR4D0 U102 ( .A1(n79), .A2(n88), .B1(n48), .B2(n55), .ZN(n103) );
  ND3D1 U103 ( .A1(n41), .A2(n39), .A3(n98), .ZN(n96) );
  ND4D1 U104 ( .A1(n39), .A2(n40), .A3(n41), .A4(n42), .ZN(t[6]) );
  NR2D1 U105 ( .A1(n1460), .A2(n36), .ZN(n42) );
  INVD1 U106 ( .I(n67), .ZN(n1450) );
  ND2D1 U107 ( .A1(n95), .A2(n76), .ZN(n36) );
  ND4D1 U108 ( .A1(n35), .A2(n41), .A3(n76), .A4(n99), .ZN(b[1]) );
  ND2D1 U109 ( .A1(n116), .A2(n112), .ZN(n39) );
  ND4D1 U110 ( .A1(n1370), .A2(n43), .A3(n44), .A4(n45), .ZN(t[5]) );
  INVD1 U111 ( .I(n99), .ZN(n1430) );
  INVD1 U113 ( .I(n98), .ZN(n1440) );
  ND2D1 U114 ( .A1(n83), .A2(n34), .ZN(n73) );
  ND2D1 U115 ( .A1(n116), .A2(n124), .ZN(n80) );
  IND4D1 U116 ( .A1(t[17]), .B1(n34), .B2(n41), .B3(n47), .ZN(t[4]) );
  INR3D0 U117 ( .A1(n44), .B1(n48), .B2(n1440), .ZN(n47) );
  ND2D1 U118 ( .A1(n76), .A2(n78), .ZN(n48) );
  INVD1 U119 ( .I(py[3]), .ZN(n28) );
  AN2XD1 U120 ( .A1(n22), .A2(n27), .Z(n21) );
  ND4D1 U122 ( .A1(n49), .A2(n50), .A3(n51), .A4(n52), .ZN(t[3]) );
  NR3D0 U123 ( .A1(n53), .A2(n1390), .A3(n37), .ZN(n52) );
  IND4D1 U125 ( .A1(n55), .B1(n56), .B2(n57), .B3(n58), .ZN(t[2]) );
  NR3D0 U126 ( .A1(n59), .A2(n147), .A3(n1360), .ZN(n58) );
  ND2D1 U127 ( .A1(n54), .A2(n41), .ZN(n37) );
  INVD1 U128 ( .I(n68), .ZN(n147) );
  NR2D1 U129 ( .A1(n1500), .A2(divide_mode), .ZN(n120) );
  AO22D0 U130 ( .A1(n24), .A2(py[15]), .B1(N146), .B2(divide_mode), .Z(
        signed_y[15]) );
  AO22D0 U131 ( .A1(py[14]), .A2(n24), .B1(N145), .B2(divide_mode), .Z(
        signed_y[14]) );
  INR2D1 U132 ( .A1(n120), .B1(n1490), .ZN(n114) );
  ND2D1 U133 ( .A1(n114), .A2(n111), .ZN(n69) );
  ND2D1 U134 ( .A1(n114), .A2(n113), .ZN(n92) );
  AO22D0 U135 ( .A1(py[13]), .A2(n24), .B1(N144), .B2(divide_mode), .Z(
        signed_y[13]) );
  INVD1 U136 ( .I(py[13]), .ZN(n1310) );
  ND2D1 U139 ( .A1(n115), .A2(n117), .ZN(n105) );
  AO22D0 U140 ( .A1(py[12]), .A2(n24), .B1(N143), .B2(divide_mode), .Z(
        signed_y[12]) );
  ND2D1 U141 ( .A1(n119), .A2(n116), .ZN(n70) );
  AO22D0 U142 ( .A1(py[11]), .A2(n24), .B1(N142), .B2(divide_mode), .Z(
        signed_y[11]) );
  ND2D1 U143 ( .A1(n114), .A2(n117), .ZN(n104) );
  NR2D1 U144 ( .A1(n1510), .A2(n1420), .ZN(n116) );
  AO22D0 U145 ( .A1(py[10]), .A2(n24), .B1(N141), .B2(divide_mode), .Z(
        signed_y[10]) );
  INR2D1 U146 ( .A1(n121), .B1(divide_mode), .ZN(n118) );
  ND2D1 U147 ( .A1(n118), .A2(n113), .ZN(n89) );
  AO22D0 U148 ( .A1(py[9]), .A2(n24), .B1(N140), .B2(divide_mode), .Z(
        signed_y[9]) );
  ND2D1 U149 ( .A1(n119), .A2(n117), .ZN(n107) );
  ND4D1 U150 ( .A1(n69), .A2(n70), .A3(n71), .A4(n72), .ZN(t[13]) );
  INR2D1 U151 ( .A1(n54), .B1(n59), .ZN(n71) );
  NR4D0 U152 ( .A1(n1450), .A2(n1440), .A3(n36), .A4(n73), .ZN(n72) );
  AO22D0 U153 ( .A1(py[8]), .A2(n24), .B1(N139), .B2(divide_mode), .Z(
        signed_y[8]) );
  ND2D1 U154 ( .A1(n118), .A2(n111), .ZN(n93) );
  AO22D0 U155 ( .A1(py[7]), .A2(n24), .B1(N138), .B2(divide_mode), .Z(
        signed_y[7]) );
  ND2D1 U156 ( .A1(n115), .A2(n111), .ZN(n79) );
  ND2D1 U157 ( .A1(n113), .A2(n123), .ZN(n34) );
  ND2D1 U159 ( .A1(n111), .A2(n123), .ZN(n97) );
  AO22D0 U160 ( .A1(py[6]), .A2(n24), .B1(N137), .B2(divide_mode), .Z(
        signed_y[6]) );
  AO22D0 U161 ( .A1(py[5]), .A2(n24), .B1(N136), .B2(divide_mode), .Z(
        signed_y[5]) );
  INR2D1 U162 ( .A1(n125), .B1(n1500), .ZN(n112) );
  ND2D1 U163 ( .A1(n112), .A2(n113), .ZN(n46) );
  NR3D0 U164 ( .A1(n1490), .A2(n24), .A3(n1500), .ZN(n110) );
  ND2D1 U165 ( .A1(n110), .A2(n113), .ZN(n54) );
  ND2D1 U166 ( .A1(n116), .A2(n123), .ZN(n95) );
  ND2D1 U167 ( .A1(n119), .A2(n111), .ZN(n68) );
  ND2D1 U168 ( .A1(n119), .A2(n113), .ZN(n77) );
  ND2D1 U169 ( .A1(n117), .A2(n123), .ZN(n40) );
  AO22D0 U170 ( .A1(py[4]), .A2(n24), .B1(N135), .B2(divide_mode), .Z(
        signed_y[4]) );
  ND2D1 U171 ( .A1(n110), .A2(n111), .ZN(n78) );
  ND2D1 U172 ( .A1(n112), .A2(n117), .ZN(n41) );
  ND2D1 U173 ( .A1(n112), .A2(n111), .ZN(n76) );
  ND2D1 U174 ( .A1(n118), .A2(n117), .ZN(n67) );
  INR2D1 U175 ( .A1(n121), .B1(n24), .ZN(n124) );
  ND2D1 U176 ( .A1(n117), .A2(n124), .ZN(n99) );
  ND2D1 U177 ( .A1(n110), .A2(n117), .ZN(n98) );
  ND2D1 U178 ( .A1(n124), .A2(n113), .ZN(n44) );
  ND2D1 U179 ( .A1(n111), .A2(n124), .ZN(n75) );
  AO22D0 U180 ( .A1(py[3]), .A2(n24), .B1(N134), .B2(divide_mode), .Z(
        signed_y[3]) );
  AO22D0 U181 ( .A1(py[2]), .A2(n24), .B1(N133), .B2(divide_mode), .Z(
        signed_y[2]) );
  INVD1 U182 ( .I(py[2]), .ZN(n27) );
  AO22D0 U183 ( .A1(py[1]), .A2(n24), .B1(N132), .B2(divide_mode), .Z(
        signed_y[1]) );
  INR2D1 U187 ( .A1(n120), .B1(fx[21]), .ZN(n115) );
  INVD1 U188 ( .I(fy[22]), .ZN(n1500) );
  NR3D0 U189 ( .A1(fx[21]), .A2(fy[22]), .A3(divide_mode), .ZN(n119) );
  INVD1 U190 ( .I(fx[22]), .ZN(n1420) );
  INVD1 U191 ( .I(fy[21]), .ZN(n1510) );
  NR2D1 U192 ( .A1(n1490), .A2(fy[22]), .ZN(n121) );
  INVD1 U193 ( .I(fx[21]), .ZN(n1490) );
  NR2D1 U194 ( .A1(fy[21]), .A2(fx[22]), .ZN(n111) );
  NR2D1 U195 ( .A1(n1420), .A2(fy[21]), .ZN(n113) );
  NR2D1 U196 ( .A1(n1510), .A2(fx[22]), .ZN(n117) );
  INR2D1 U197 ( .A1(n125), .B1(fy[22]), .ZN(n123) );
  NR2D1 U198 ( .A1(n24), .A2(fx[21]), .ZN(n125) );
  INVD1 U199 ( .I(fy[20]), .ZN(ry_8_) );
  INVD1 U200 ( .I(fx[20]), .ZN(rx_8_) );
  TIEL U201 ( .ZN(n1520) );
  CKXOR2D1 U202 ( .A1(n25), .A2(n26), .Z(N132) );
  CKXOR2D1 U203 ( .A1(n22), .A2(n27), .Z(N133) );
  CKXOR2D1 U204 ( .A1(n21), .A2(n28), .Z(N134) );
  CKXOR2D1 U205 ( .A1(n19), .A2(n29), .Z(N135) );
  CKXOR2D1 U206 ( .A1(n18), .A2(n30), .Z(N136) );
  CKXOR2D1 U207 ( .A1(n17), .A2(n31), .Z(N137) );
  CKXOR2D1 U208 ( .A1(n16), .A2(n32), .Z(N138) );
  CKXOR2D1 U209 ( .A1(n15), .A2(n126), .Z(N139) );
  CKXOR2D1 U210 ( .A1(n14), .A2(n127), .Z(N140) );
  CKXOR2D1 U211 ( .A1(n13), .A2(n128), .Z(N141) );
  CKXOR2D1 U212 ( .A1(n12), .A2(n129), .Z(N142) );
  CKXOR2D1 U213 ( .A1(n11), .A2(n130), .Z(N143) );
  CKXOR2D1 U214 ( .A1(n10), .A2(n1310), .Z(N144) );
  CKXOR2D1 U215 ( .A1(n20), .A2(n1320), .Z(N145) );
  CKXOR2D1 U216 ( .A1(n9), .A2(n1320), .Z(N146) );
  OAI31D0 U3 ( .A1(py[15]), .A2(n9), .A3(n24), .B(n1530), .ZN(signed_y[20]) );
  CKND2D0 U4 ( .A1(py[15]), .A2(n24), .ZN(n1530) );
  CKND0 U5 ( .I(divide_mode), .ZN(n24) );
  CKND0 U6 ( .I(py[15]), .ZN(n1320) );
  NR2D0 U8 ( .A1(n1540), .A2(n53), .ZN(n1330) );
  ND3D0 U9 ( .A1(n83), .A2(n80), .A3(n50), .ZN(n1540) );
  CKND0 U10 ( .I(N131), .ZN(n25) );
  CKND0 U11 ( .I(py[1]), .ZN(n26) );
  NR2D0 U13 ( .A1(N131), .A2(py[1]), .ZN(n22) );
endmodule


module fp32_normal_finite_wrapper_DW01_add_3_DW01_add_5 ( A, B, CI, SUM, CO );
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


module fp32_normal_finite_wrapper_DW01_add_1_DW01_add_3 ( A, B, CI, SUM, CO );
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
  fp32_normal_finite_wrapper_DW01_add_3_DW01_add_5 add_1_root_add_0_root_add_25_2 ( 
        .A(x[30:23]), .B({N42, N41, N40, N39, N38, N37, N36, N11}), .CI(n79), 
        .SUM({N34, N33, N32, N31, N30, N29, N28, N27}) );
  fp32_normal_finite_wrapper_DW01_add_1_DW01_add_3 add_1_root_add_0_root_add_22_2 ( 
        .A(x[30:23]), .B({y[30], N17, N16, N15, N14, N13, N12, N11}), .CI(n79), 
        .SUM({N10, N9, N8, N7, N6, N5, N4, N3}) );
  AN2XD1 U3 ( .A1(exponent_adjust[0]), .A2(N3), .Z(n1) );
  AN2XD1 U4 ( .A1(exponent_adjust[0]), .A2(N27), .Z(n2) );
  CKBD1 U29 ( .I(result_fraction[7]), .Z(result[7]) );
  CKBD1 U30 ( .I(result_fraction[6]), .Z(result[6]) );
  CKBD1 U31 ( .I(result_fraction[8]), .Z(result[8]) );
  CKBD1 U32 ( .I(result_fraction[9]), .Z(result[9]) );
  CKBD1 U33 ( .I(result_fraction[21]), .Z(result[21]) );
  CKBD1 U34 ( .I(result_fraction[10]), .Z(result[10]) );
  CKBD1 U35 ( .I(result_fraction[11]), .Z(result[11]) );
  CKBD1 U36 ( .I(result_fraction[12]), .Z(result[12]) );
  CKBD1 U37 ( .I(result_fraction[13]), .Z(result[13]) );
  CKBD1 U38 ( .I(result_fraction[14]), .Z(result[14]) );
  CKBD1 U39 ( .I(result_fraction[15]), .Z(result[15]) );
  CKBD1 U40 ( .I(result_fraction[16]), .Z(result[16]) );
  CKBD1 U41 ( .I(result_fraction[17]), .Z(result[17]) );
  CKBD1 U42 ( .I(result_fraction[18]), .Z(result[18]) );
  CKBD1 U43 ( .I(result_fraction[19]), .Z(result[19]) );
  CKBD1 U44 ( .I(result_fraction[20]), .Z(result[20]) );
  AO22D0 U45 ( .A1(N49), .A2(n78), .B1(N25), .B2(divide_mode), .Z(result[29])
         );
  AO22D0 U46 ( .A1(N48), .A2(n78), .B1(N24), .B2(divide_mode), .Z(result[28])
         );
  AO22D0 U47 ( .A1(N47), .A2(n78), .B1(N23), .B2(divide_mode), .Z(result[27])
         );
  AO22D0 U48 ( .A1(N46), .A2(n78), .B1(N22), .B2(divide_mode), .Z(result[26])
         );
  AO22D0 U49 ( .A1(N45), .A2(n78), .B1(N21), .B2(divide_mode), .Z(result[25])
         );
  AO22D0 U50 ( .A1(N44), .A2(n78), .B1(N20), .B2(divide_mode), .Z(result[24])
         );
  INVD1 U51 ( .I(divide_mode), .ZN(n78) );
  FA1D0 U52 ( .A(N4), .B(exponent_adjust[1]), .CI(n1), .CO(
        add_0_root_add_0_root_add_22_2_carry[2]), .S(N20) );
  FA1D0 U53 ( .A(N5), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[2]), .CO(
        add_0_root_add_0_root_add_22_2_carry[3]), .S(N21) );
  FA1D0 U54 ( .A(N6), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[3]), .CO(
        add_0_root_add_0_root_add_22_2_carry[4]), .S(N22) );
  FA1D0 U55 ( .A(N7), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[4]), .CO(
        add_0_root_add_0_root_add_22_2_carry[5]), .S(N23) );
  FA1D0 U56 ( .A(N8), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[5]), .CO(
        add_0_root_add_0_root_add_22_2_carry[6]), .S(N24) );
  FA1D0 U57 ( .A(N9), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[6]), .CO(
        add_0_root_add_0_root_add_22_2_carry[7]), .S(N25) );
  FA1D0 U58 ( .A(N28), .B(exponent_adjust[1]), .CI(n2), .CO(
        add_0_root_add_0_root_add_25_2_carry[2]), .S(N44) );
  FA1D0 U59 ( .A(N29), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[2]), .CO(
        add_0_root_add_0_root_add_25_2_carry[3]), .S(N45) );
  FA1D0 U60 ( .A(N30), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[3]), .CO(
        add_0_root_add_0_root_add_25_2_carry[4]), .S(N46) );
  FA1D0 U61 ( .A(N31), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[4]), .CO(
        add_0_root_add_0_root_add_25_2_carry[5]), .S(N47) );
  FA1D0 U62 ( .A(N32), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[5]), .CO(
        add_0_root_add_0_root_add_25_2_carry[6]), .S(N48) );
  FA1D0 U63 ( .A(N33), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[6]), .CO(
        add_0_root_add_0_root_add_25_2_carry[7]), .S(N49) );
  AO22D0 U64 ( .A1(N43), .A2(n78), .B1(N19), .B2(divide_mode), .Z(result[23])
         );
  AO22D0 U65 ( .A1(N50), .A2(n78), .B1(divide_mode), .B2(N26), .Z(result[30])
         );
  XOR3D1 U66 ( .A1(N34), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_25_2_carry[7]), .Z(N50) );
  XOR3D1 U67 ( .A1(N10), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_22_2_carry[7]), .Z(N26) );
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
  CKBD1 U98 ( .I(y[22]), .Z(fraction_y[22]) );
  CKBD1 U99 ( .I(y[21]), .Z(fraction_y[21]) );
  CKBD1 U100 ( .I(y[20]), .Z(fraction_y[20]) );
  CKBD1 U101 ( .I(y[19]), .Z(fraction_y[19]) );
  CKBD1 U102 ( .I(y[18]), .Z(fraction_y[18]) );
  CKBD1 U103 ( .I(y[17]), .Z(fraction_y[17]) );
  CKBD1 U104 ( .I(y[16]), .Z(fraction_y[16]) );
  CKBD1 U105 ( .I(y[15]), .Z(fraction_y[15]) );
  CKBD1 U106 ( .I(y[14]), .Z(fraction_y[14]) );
  CKBD1 U107 ( .I(y[13]), .Z(fraction_y[13]) );
  CKBD1 U108 ( .I(y[12]), .Z(fraction_y[12]) );
  CKBD1 U109 ( .I(result_fraction[22]), .Z(result[22]) );
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


module unified_mul_drop_l2_shared ( x, y, divide_mode, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  input divide_mode;
  wire   n27, n28, n29, n30, n31, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71;
  wire   [22:12] fx;
  wire   [22:12] fy;
  wire   [24:7] core_value;
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
        SYNOPSYS_UNCONNECTED__40;
  assign result[0] = 1'b0;
  assign result[1] = 1'b0;
  assign result[2] = 1'b0;
  assign result[3] = 1'b0;
  assign result[4] = 1'b0;
  assign result[5] = 1'b0;

  unified_mul_drop_l2_shared_core shared_core ( .fx({fx, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .fy({fy, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .divide_mode(n51), .value({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, core_value, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10}) );
  fp32_normal_finite_wrapper wrapper ( .x({x[31:12], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y({y[31:12], 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .divide_mode(n51), .fraction_x({fx, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22}), .fraction_y({fy, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31, 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34}), .result_fraction({normalized_fraction, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .exponent_adjust({
        exponent_adjust[2], exponent_adjust[2], exponent_adjust[0]}), .result(
        {result[31:6], SYNOPSYS_UNCONNECTED__35, SYNOPSYS_UNCONNECTED__36, 
        SYNOPSYS_UNCONNECTED__37, SYNOPSYS_UNCONNECTED__38, 
        SYNOPSYS_UNCONNECTED__39, SYNOPSYS_UNCONNECTED__40}) );
  NR3D0 U78 ( .A1(core_value[23]), .A2(core_value[24]), .A3(n56), .ZN(n30) );
  INVD1 U79 ( .I(n30), .ZN(n54) );
  ND2D1 U80 ( .A1(n53), .A2(n54), .ZN(exponent_adjust[0]) );
  IND2D1 U81 ( .A1(n29), .B1(n54), .ZN(exponent_adjust[2]) );
  INVD1 U82 ( .I(core_value[24]), .ZN(n53) );
  ND2D1 U83 ( .A1(core_value[23]), .A2(n53), .ZN(n27) );
  OAI22D1 U84 ( .A1(n71), .A2(n27), .B1(n70), .B2(n53), .ZN(
        normalized_fraction[7]) );
  NR2D1 U85 ( .A1(n71), .A2(n53), .ZN(normalized_fraction[6]) );
  NR3D0 U86 ( .A1(core_value[23]), .A2(core_value[24]), .A3(core_value[22]), 
        .ZN(n29) );
  INVD1 U87 ( .I(core_value[22]), .ZN(n56) );
  OAI221D0 U88 ( .A1(n70), .A2(n27), .B1(n69), .B2(n53), .C(n31), .ZN(
        normalized_fraction[8]) );
  ND2D1 U89 ( .A1(n30), .A2(core_value[7]), .ZN(n31) );
  OAI221D0 U90 ( .A1(n27), .A2(n69), .B1(n68), .B2(n53), .C(n28), .ZN(
        normalized_fraction[9]) );
  AOI22D1 U91 ( .A1(core_value[7]), .A2(n29), .B1(core_value[8]), .B2(n30), 
        .ZN(n28) );
  OAI221D0 U92 ( .A1(n27), .A2(n57), .B1(n56), .B2(n53), .C(n39), .ZN(
        normalized_fraction[21]) );
  AOI22D1 U93 ( .A1(core_value[19]), .A2(n29), .B1(core_value[20]), .B2(n30), 
        .ZN(n39) );
  OAI221D0 U94 ( .A1(n27), .A2(n68), .B1(n53), .B2(n67), .C(n50), .ZN(
        normalized_fraction[10]) );
  AOI22D1 U95 ( .A1(core_value[8]), .A2(n29), .B1(core_value[9]), .B2(n30), 
        .ZN(n50) );
  OAI221D0 U96 ( .A1(n27), .A2(n67), .B1(n53), .B2(n66), .C(n49), .ZN(
        normalized_fraction[11]) );
  AOI22D1 U97 ( .A1(core_value[9]), .A2(n29), .B1(core_value[10]), .B2(n30), 
        .ZN(n49) );
  OAI221D0 U98 ( .A1(n27), .A2(n66), .B1(n53), .B2(n65), .C(n48), .ZN(
        normalized_fraction[12]) );
  AOI22D1 U99 ( .A1(core_value[10]), .A2(n29), .B1(core_value[11]), .B2(n30), 
        .ZN(n48) );
  OAI221D0 U100 ( .A1(n27), .A2(n65), .B1(n53), .B2(n64), .C(n47), .ZN(
        normalized_fraction[13]) );
  AOI22D1 U101 ( .A1(core_value[11]), .A2(n29), .B1(core_value[12]), .B2(n30), 
        .ZN(n47) );
  OAI221D0 U102 ( .A1(n27), .A2(n64), .B1(n53), .B2(n63), .C(n46), .ZN(
        normalized_fraction[14]) );
  AOI22D1 U103 ( .A1(core_value[12]), .A2(n29), .B1(core_value[13]), .B2(n30), 
        .ZN(n46) );
  OAI221D0 U104 ( .A1(n27), .A2(n63), .B1(n53), .B2(n62), .C(n45), .ZN(
        normalized_fraction[15]) );
  AOI22D1 U105 ( .A1(core_value[13]), .A2(n29), .B1(core_value[14]), .B2(n30), 
        .ZN(n45) );
  OAI221D0 U106 ( .A1(n27), .A2(n62), .B1(n53), .B2(n61), .C(n44), .ZN(
        normalized_fraction[16]) );
  AOI22D1 U107 ( .A1(core_value[14]), .A2(n29), .B1(core_value[15]), .B2(n30), 
        .ZN(n44) );
  OAI221D0 U108 ( .A1(n27), .A2(n61), .B1(n53), .B2(n60), .C(n43), .ZN(
        normalized_fraction[17]) );
  AOI22D1 U109 ( .A1(core_value[15]), .A2(n29), .B1(core_value[16]), .B2(n30), 
        .ZN(n43) );
  OAI221D0 U110 ( .A1(n27), .A2(n60), .B1(n53), .B2(n59), .C(n42), .ZN(
        normalized_fraction[18]) );
  AOI22D1 U111 ( .A1(core_value[16]), .A2(n29), .B1(core_value[17]), .B2(n30), 
        .ZN(n42) );
  OAI221D0 U112 ( .A1(n27), .A2(n59), .B1(n53), .B2(n58), .C(n41), .ZN(
        normalized_fraction[19]) );
  AOI22D1 U113 ( .A1(core_value[17]), .A2(n29), .B1(core_value[18]), .B2(n30), 
        .ZN(n41) );
  OAI221D0 U114 ( .A1(n27), .A2(n58), .B1(n53), .B2(n57), .C(n40), .ZN(
        normalized_fraction[20]) );
  AOI22D1 U115 ( .A1(core_value[18]), .A2(n29), .B1(core_value[19]), .B2(n30), 
        .ZN(n40) );
  OAI221D0 U116 ( .A1(n56), .A2(n27), .B1(n55), .B2(n53), .C(n38), .ZN(
        normalized_fraction[22]) );
  INVD1 U117 ( .I(core_value[23]), .ZN(n55) );
  AOI22D1 U118 ( .A1(core_value[20]), .A2(n29), .B1(core_value[21]), .B2(n30), 
        .ZN(n38) );
  INVD1 U119 ( .I(core_value[21]), .ZN(n57) );
  INVD1 U120 ( .I(core_value[20]), .ZN(n58) );
  INVD1 U121 ( .I(core_value[19]), .ZN(n59) );
  INVD1 U122 ( .I(core_value[18]), .ZN(n60) );
  INVD1 U123 ( .I(core_value[17]), .ZN(n61) );
  INVD1 U124 ( .I(core_value[16]), .ZN(n62) );
  INVD1 U125 ( .I(core_value[15]), .ZN(n63) );
  INVD1 U126 ( .I(core_value[14]), .ZN(n64) );
  INVD1 U127 ( .I(core_value[13]), .ZN(n65) );
  INVD1 U128 ( .I(core_value[12]), .ZN(n66) );
  INVD1 U129 ( .I(core_value[11]), .ZN(n67) );
  INVD1 U130 ( .I(core_value[10]), .ZN(n68) );
  INVD1 U131 ( .I(core_value[9]), .ZN(n69) );
  INVD1 U132 ( .I(core_value[8]), .ZN(n70) );
  INVD1 U133 ( .I(core_value[7]), .ZN(n71) );
  CKBD1 U134 ( .I(divide_mode), .Z(n51) );
endmodule

