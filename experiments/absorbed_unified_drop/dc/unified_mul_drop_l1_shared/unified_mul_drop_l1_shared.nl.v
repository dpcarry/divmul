/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Wed Sep 16 00:41:57 2026
/////////////////////////////////////////////////////////////


module unified_mul_drop_l1_shared_core_DW_mult_tc_1 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n35, n36, n37, n38, n39, n40, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75,
         n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154;

  FA1D0 U4 ( .A(n14), .B(n54), .CI(n3), .CO(n2), .S(product[13]) );
  FA1D0 U5 ( .A(n17), .B(n15), .CI(n4), .CO(n3), .S(product[12]) );
  FA1D0 U6 ( .A(n20), .B(n18), .CI(n5), .CO(n4), .S(product[11]) );
  FA1D0 U7 ( .A(n25), .B(n21), .CI(n6), .CO(n5), .S(product[10]) );
  FA1D0 U8 ( .A(n30), .B(n26), .CI(n7), .CO(n6), .S(product[9]) );
  FA1D0 U9 ( .A(n31), .B(n37), .CI(n8), .CO(n7), .S(product[8]) );
  FA1D0 U10 ( .A(n38), .B(n44), .CI(n9), .CO(n8), .S(product[7]) );
  FA1D0 U11 ( .A(n45), .B(n48), .CI(n10), .CO(n9), .S(product[6]) );
  FA1D0 U12 ( .A(n49), .B(n51), .CI(n11), .CO(n10), .S(product[5]) );
  FA1D0 U13 ( .A(n53), .B(n71), .CI(n12), .CO(n11), .S(product[4]) );
  FA1D0 U14 ( .A(n84), .B(n76), .CI(n13), .CO(n12), .S(product[3]) );
  HA1D0 U15 ( .A(n88), .B(n81), .CO(n13), .S(product[2]) );
  FA1D0 U16 ( .A(n55), .B(n59), .CI(n16), .CO(n14), .S(n15) );
  CMPE42D1 U17 ( .A(n146), .B(n63), .C(n60), .CIX(n19), .D(n56), .CO(n17), 
        .COX(n16), .S(n18) );
  CMPE42D1 U18 ( .A(n61), .B(n64), .C(n23), .CIX(n24), .D(n27), .CO(n20), 
        .COX(n19), .S(n21) );
  CMPE42D1 U20 ( .A(n68), .B(n72), .C(n32), .CIX(n29), .D(n28), .CO(n25), 
        .COX(n24), .S(n26) );
  FA1D0 U21 ( .A(n65), .B(n141), .CI(n57), .CO(n27), .S(n28) );
  CMPE42D1 U22 ( .A(n73), .B(n77), .C(n39), .CIX(n36), .D(n33), .CO(n30), 
        .COX(n29), .S(n31) );
  FA1D0 U23 ( .A(n145), .B(n69), .CI(n35), .CO(n32), .S(n33) );
  CMPE42D1 U25 ( .A(n58), .B(n78), .C(n46), .CIX(n40), .D(n43), .CO(n37), 
        .COX(n36), .S(n38) );
  FA1D0 U26 ( .A(n74), .B(n66), .CI(n42), .CO(n39), .S(n40) );
  CMPE42D1 U28 ( .A(n79), .B(n85), .C(n82), .CIX(n47), .D(n50), .CO(n44), 
        .COX(n43), .S(n45) );
  HA1D0 U29 ( .A(n62), .B(n70), .CO(n46), .S(n47) );
  FA1D0 U30 ( .A(n83), .B(n86), .CI(n52), .CO(n48), .S(n49) );
  HA1D0 U31 ( .A(n67), .B(n75), .CO(n50), .S(n51) );
  HA1D0 U32 ( .A(n80), .B(n87), .CO(n52), .S(n53) );
  INVD1 U89 ( .I(b[4]), .ZN(n147) );
  INVD1 U90 ( .I(b[6]), .ZN(n144) );
  INVD1 U91 ( .I(b[5]), .ZN(n142) );
  INVD1 U92 ( .I(b[2]), .ZN(n140) );
  CKBD1 U93 ( .I(product[14]), .Z(product[15]) );
  INVD1 U94 ( .I(b[0]), .ZN(n143) );
  INVD1 U95 ( .I(n42), .ZN(n145) );
  INVD1 U96 ( .I(n35), .ZN(n141) );
  INVD1 U97 ( .I(a[4]), .ZN(n150) );
  INVD1 U98 ( .I(a[1]), .ZN(n153) );
  INVD1 U99 ( .I(a[6]), .ZN(n148) );
  INVD1 U100 ( .I(n23), .ZN(n146) );
  INVD1 U101 ( .I(a[3]), .ZN(n151) );
  INVD1 U102 ( .I(a[0]), .ZN(n154) );
  INVD1 U103 ( .I(a[2]), .ZN(n152) );
  INVD1 U104 ( .I(a[5]), .ZN(n149) );
  NR2D0 U105 ( .A1(n153), .A2(n143), .ZN(product[1]) );
  CKND0 U106 ( .I(n2), .ZN(product[14]) );
  NR2D0 U107 ( .A1(n143), .A2(n154), .ZN(product[0]) );
  NR2D0 U108 ( .A1(n154), .A2(n140), .ZN(n88) );
  NR2D0 U109 ( .A1(n154), .A2(n147), .ZN(n87) );
  NR2D0 U110 ( .A1(n154), .A2(n142), .ZN(n86) );
  NR2D0 U111 ( .A1(n154), .A2(n144), .ZN(n85) );
  NR2D0 U112 ( .A1(n153), .A2(n140), .ZN(n84) );
  NR2D0 U113 ( .A1(n153), .A2(n147), .ZN(n83) );
  NR2D0 U114 ( .A1(n153), .A2(n142), .ZN(n82) );
  NR2D0 U115 ( .A1(n143), .A2(n152), .ZN(n81) );
  NR2D0 U116 ( .A1(n140), .A2(n152), .ZN(n80) );
  NR2D0 U117 ( .A1(n147), .A2(n152), .ZN(n79) );
  NR2D0 U118 ( .A1(n142), .A2(n152), .ZN(n78) );
  NR2D0 U119 ( .A1(n144), .A2(n152), .ZN(n77) );
  NR2D0 U120 ( .A1(n143), .A2(n151), .ZN(n76) );
  NR2D0 U121 ( .A1(n140), .A2(n151), .ZN(n75) );
  NR2D0 U122 ( .A1(n147), .A2(n151), .ZN(n74) );
  NR2D0 U123 ( .A1(n142), .A2(n151), .ZN(n73) );
  NR2D0 U124 ( .A1(n144), .A2(n151), .ZN(n72) );
  NR2D0 U125 ( .A1(n143), .A2(n150), .ZN(n71) );
  NR2D0 U126 ( .A1(n140), .A2(n150), .ZN(n70) );
  NR2D0 U127 ( .A1(n147), .A2(n150), .ZN(n69) );
  NR2D0 U128 ( .A1(n142), .A2(n150), .ZN(n68) );
  NR2D0 U129 ( .A1(n143), .A2(n149), .ZN(n67) );
  NR2D0 U130 ( .A1(n140), .A2(n149), .ZN(n66) );
  NR2D0 U131 ( .A1(n147), .A2(n149), .ZN(n65) );
  NR2D0 U132 ( .A1(n142), .A2(n149), .ZN(n64) );
  NR2D0 U133 ( .A1(n144), .A2(n149), .ZN(n63) );
  NR2D0 U134 ( .A1(n143), .A2(n148), .ZN(n62) );
  NR2D0 U135 ( .A1(n147), .A2(n148), .ZN(n61) );
  NR2D0 U136 ( .A1(n142), .A2(n148), .ZN(n60) );
  NR2D0 U137 ( .A1(n144), .A2(n148), .ZN(n59) );
  CKND2D0 U138 ( .A1(a[7]), .A2(b[0]), .ZN(n58) );
  CKND2D0 U139 ( .A1(a[7]), .A2(b[2]), .ZN(n57) );
  CKND2D0 U140 ( .A1(a[7]), .A2(b[4]), .ZN(n56) );
  CKND2D0 U141 ( .A1(a[7]), .A2(b[5]), .ZN(n55) );
  CKND2D0 U142 ( .A1(a[7]), .A2(b[6]), .ZN(n54) );
  CKND2D0 U143 ( .A1(b[6]), .A2(a[1]), .ZN(n42) );
  CKND2D0 U144 ( .A1(a[6]), .A2(b[2]), .ZN(n35) );
  CKND2D0 U145 ( .A1(a[4]), .A2(b[6]), .ZN(n23) );
endmodule


module unified_mul_drop_l1_shared_core_DW01_add_1 ( A, B, CI, SUM, CO );
  input [18:0] A;
  input [18:0] B;
  output [18:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [16:6] carry;

  FA1D0 U1_5 ( .A(A[5]), .B(B[5]), .CI(n1), .CO(carry[6]), .S(SUM[5]) );
  FA1D0 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  FA1D0 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  FA1D0 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  FA1D0 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  XOR3D1 U1_16 ( .A1(A[16]), .A2(B[16]), .A3(carry[16]), .Z(SUM[16]) );
  FA1D0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA1D0 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA1D0 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FA1D0 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  FA1D0 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FA1D0 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  AN2XD1 U1 ( .A1(B[4]), .A2(A[4]), .Z(n1) );
  CKBD1 U2 ( .I(B[3]), .Z(SUM[3]) );
  CKBD1 U3 ( .I(B[1]), .Z(SUM[1]) );
  CKBD1 U4 ( .I(B[2]), .Z(SUM[2]) );
  CKBD1 U5 ( .I(B[0]), .Z(SUM[0]) );
  CKXOR2D1 U6 ( .A1(B[4]), .A2(A[4]), .Z(SUM[4]) );
endmodule


module unified_mul_drop_l1_shared_core_DW01_add_0 ( A, B, CI, SUM, CO );
  input [19:0] A;
  input [19:0] B;
  output [19:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [16:2] carry;

  FA1D0 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA1D0 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
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
  FA1D0 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  FA1D0 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  XOR3D1 U1_16 ( .A1(A[16]), .A2(B[16]), .A3(carry[16]), .Z(SUM[16]) );
  AN2XD1 U1 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
  CKXOR2D1 U2 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
endmodule


module unified_mul_drop_l1_shared_core_DW_mult_tc_0 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n17,
         n18, n19, n20, n21, n23, n24, n25, n26, n27, n28, n29, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n74, n75, n76, n77,
         n78, n79, n81, n82, n83, n84, n85, n86, n87, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237,
         n238, n239, n240, n244, n245, n246;

  FA1D0 U2 ( .A(n56), .B(n15), .CI(n2), .CO(n1), .S(product[14]) );
  FA1D0 U3 ( .A(n17), .B(n193), .CI(n3), .CO(n2), .S(product[13]) );
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
  FA1D0 U18 ( .A(n194), .B(n58), .CI(n23), .CO(n19), .S(n20) );
  CMPE42D1 U20 ( .A(n65), .B(n29), .C(n59), .CIX(n26), .D(n72), .CO(n24), 
        .COX(n23), .S(n25) );
  CMPE42D1 U21 ( .A(n60), .B(n66), .C(n195), .CIX(n31), .D(n34), .CO(n27), 
        .COX(n26), .S(n28) );
  CMPE42D1 U23 ( .A(n203), .B(n67), .C(n39), .CIX(n36), .D(n35), .CO(n32), 
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
  INVD1 U141 ( .I(n15), .ZN(n193) );
  INVD1 U142 ( .I(b[4]), .ZN(n190) );
  INVD1 U143 ( .I(b[6]), .ZN(n196) );
  INVD1 U144 ( .I(b[3]), .ZN(n191) );
  INVD1 U145 ( .I(b[1]), .ZN(n192) );
  INVD1 U146 ( .I(b[2]), .ZN(n197) );
  INVD1 U147 ( .I(b[5]), .ZN(n198) );
  INVD1 U148 ( .I(b[0]), .ZN(n199) );
  INVD1 U149 ( .I(n29), .ZN(n195) );
  INVD1 U150 ( .I(n21), .ZN(n194) );
  INVD1 U153 ( .I(a[1]), .ZN(n203) );
  INVD1 U156 ( .I(a[3]), .ZN(n202) );
  INVD1 U157 ( .I(a[5]), .ZN(n201) );
  INVD1 U160 ( .I(a[7]), .ZN(n200) );
  INVD1 U161 ( .I(a[0]), .ZN(n204) );
  CKND0 U162 ( .I(n1), .ZN(product[15]) );
  NR2D0 U163 ( .A1(n204), .A2(n199), .ZN(product[0]) );
  OAI22D0 U164 ( .A1(b[0]), .A2(n205), .B1(n206), .B2(n204), .ZN(n87) );
  OAI22D0 U165 ( .A1(n206), .A2(n205), .B1(n207), .B2(n204), .ZN(n86) );
  CKXOR2D0 U166 ( .A1(a[1]), .A2(n192), .Z(n206) );
  OAI22D0 U167 ( .A1(n207), .A2(n205), .B1(n208), .B2(n204), .ZN(n85) );
  CKXOR2D0 U168 ( .A1(a[1]), .A2(n197), .Z(n207) );
  OAI22D0 U169 ( .A1(n208), .A2(n205), .B1(n209), .B2(n204), .ZN(n84) );
  CKXOR2D0 U170 ( .A1(a[1]), .A2(n191), .Z(n208) );
  OAI22D0 U171 ( .A1(n209), .A2(n205), .B1(n210), .B2(n204), .ZN(n83) );
  CKXOR2D0 U172 ( .A1(a[1]), .A2(n190), .Z(n209) );
  OAI22D0 U173 ( .A1(n210), .A2(n205), .B1(n211), .B2(n204), .ZN(n82) );
  CKXOR2D0 U174 ( .A1(a[1]), .A2(n198), .Z(n210) );
  OAI22D0 U175 ( .A1(n211), .A2(n205), .B1(n203), .B2(n204), .ZN(n81) );
  CKXOR2D0 U176 ( .A1(a[1]), .A2(n196), .Z(n211) );
  NR2D0 U177 ( .A1(n212), .A2(n199), .ZN(n79) );
  OAI22D0 U178 ( .A1(n213), .A2(n214), .B1(n212), .B2(n215), .ZN(n78) );
  CKXOR2D0 U179 ( .A1(b[0]), .A2(n202), .Z(n213) );
  OAI22D0 U180 ( .A1(n215), .A2(n214), .B1(n212), .B2(n216), .ZN(n77) );
  CKXOR2D0 U181 ( .A1(a[3]), .A2(n192), .Z(n215) );
  OAI22D0 U182 ( .A1(n216), .A2(n214), .B1(n212), .B2(n217), .ZN(n76) );
  CKXOR2D0 U183 ( .A1(a[3]), .A2(n197), .Z(n216) );
  OAI22D0 U184 ( .A1(n217), .A2(n214), .B1(n212), .B2(n218), .ZN(n75) );
  CKXOR2D0 U185 ( .A1(a[3]), .A2(n191), .Z(n217) );
  OAI22D0 U186 ( .A1(n218), .A2(n214), .B1(n212), .B2(n219), .ZN(n74) );
  CKXOR2D0 U187 ( .A1(a[3]), .A2(n190), .Z(n218) );
  AO21D0 U188 ( .A1(n214), .A2(n212), .B(n202), .Z(n72) );
  NR2D0 U189 ( .A1(n220), .A2(n199), .ZN(n71) );
  OAI22D0 U190 ( .A1(n221), .A2(n222), .B1(n220), .B2(n223), .ZN(n70) );
  CKXOR2D0 U191 ( .A1(b[0]), .A2(n201), .Z(n221) );
  OAI22D0 U192 ( .A1(n223), .A2(n222), .B1(n220), .B2(n224), .ZN(n69) );
  CKXOR2D0 U193 ( .A1(a[5]), .A2(n192), .Z(n223) );
  OAI22D0 U194 ( .A1(n224), .A2(n222), .B1(n220), .B2(n225), .ZN(n68) );
  CKXOR2D0 U195 ( .A1(a[5]), .A2(n197), .Z(n224) );
  OAI22D0 U196 ( .A1(n225), .A2(n222), .B1(n220), .B2(n226), .ZN(n67) );
  CKXOR2D0 U197 ( .A1(a[5]), .A2(n191), .Z(n225) );
  OAI22D0 U198 ( .A1(n226), .A2(n222), .B1(n220), .B2(n227), .ZN(n66) );
  CKXOR2D0 U199 ( .A1(a[5]), .A2(n190), .Z(n226) );
  OAI22D0 U200 ( .A1(n227), .A2(n222), .B1(n220), .B2(n228), .ZN(n65) );
  CKXOR2D0 U201 ( .A1(a[5]), .A2(n198), .Z(n227) );
  AO21D0 U202 ( .A1(n222), .A2(n220), .B(n201), .Z(n64) );
  NR2D0 U203 ( .A1(n229), .A2(n199), .ZN(n63) );
  OAI22D0 U204 ( .A1(n230), .A2(n231), .B1(n229), .B2(n232), .ZN(n62) );
  CKXOR2D0 U205 ( .A1(b[0]), .A2(n200), .Z(n230) );
  OAI22D0 U206 ( .A1(n233), .A2(n231), .B1(n229), .B2(n234), .ZN(n60) );
  OAI22D0 U207 ( .A1(n234), .A2(n231), .B1(n229), .B2(n235), .ZN(n59) );
  CKXOR2D0 U208 ( .A1(a[7]), .A2(n191), .Z(n234) );
  OAI22D0 U209 ( .A1(n235), .A2(n231), .B1(n229), .B2(n236), .ZN(n58) );
  CKXOR2D0 U210 ( .A1(a[7]), .A2(n190), .Z(n235) );
  OAI22D0 U211 ( .A1(n236), .A2(n231), .B1(n229), .B2(n237), .ZN(n57) );
  CKXOR2D0 U212 ( .A1(a[7]), .A2(n198), .Z(n236) );
  AO21D0 U213 ( .A1(n231), .A2(n229), .B(n200), .Z(n56) );
  OAI21D0 U214 ( .A1(b[0]), .A2(n203), .B(n205), .ZN(n55) );
  CKND2D0 U215 ( .A1(a[1]), .A2(n204), .ZN(n205) );
  OAI32D0 U216 ( .A1(n202), .A2(b[0]), .A3(n212), .B1(n202), .B2(n214), .ZN(
        n54) );
  OAI32D0 U217 ( .A1(n201), .A2(b[0]), .A3(n220), .B1(n201), .B2(n222), .ZN(
        n53) );
  OAI32D0 U218 ( .A1(n200), .A2(b[0]), .A3(n229), .B1(n200), .B2(n231), .ZN(
        n52) );
  XNR2D0 U219 ( .A1(n238), .A2(n239), .ZN(n35) );
  CKND2D0 U220 ( .A1(n239), .A2(n238), .ZN(n34) );
  OA22D0 U221 ( .A1(n232), .A2(n231), .B1(n229), .B2(n233), .Z(n238) );
  CKXOR2D0 U222 ( .A1(a[7]), .A2(n197), .Z(n233) );
  CKXOR2D0 U223 ( .A1(a[7]), .A2(n192), .Z(n232) );
  OA22D0 U224 ( .A1(n219), .A2(n214), .B1(n212), .B2(n240), .Z(n239) );
  CKXOR2D0 U225 ( .A1(a[3]), .A2(n198), .Z(n219) );
  OAI22D0 U226 ( .A1(n240), .A2(n214), .B1(n212), .B2(n202), .ZN(n29) );
  CKXOR2D0 U228 ( .A1(a[3]), .A2(n196), .Z(n240) );
  OAI22D0 U229 ( .A1(n228), .A2(n222), .B1(n220), .B2(n201), .ZN(n21) );
  CKXOR2D0 U231 ( .A1(a[5]), .A2(n196), .Z(n228) );
  OAI22D0 U232 ( .A1(n237), .A2(n231), .B1(n229), .B2(n200), .ZN(n15) );
  CKXOR2D0 U234 ( .A1(a[7]), .A2(n196), .Z(n237) );
  OAI211D0 U151 ( .A1(a[6]), .A2(a[7]), .B(n229), .C(n244), .ZN(n231) );
  CKND2D0 U152 ( .A1(a[6]), .A2(a[7]), .ZN(n244) );
  CKXOR2D0 U154 ( .A1(a[6]), .A2(n201), .Z(n229) );
  OAI211D0 U155 ( .A1(a[4]), .A2(a[5]), .B(n220), .C(n245), .ZN(n222) );
  CKND2D0 U158 ( .A1(a[4]), .A2(a[5]), .ZN(n245) );
  CKXOR2D0 U159 ( .A1(a[4]), .A2(n202), .Z(n220) );
  OAI211D0 U227 ( .A1(a[2]), .A2(a[3]), .B(n212), .C(n246), .ZN(n214) );
  CKND2D0 U230 ( .A1(a[2]), .A2(a[3]), .ZN(n246) );
  CKXOR2D0 U233 ( .A1(a[2]), .A2(n203), .Z(n212) );
endmodule


module unified_mul_drop_l1_shared_core ( fx, fy, divide_mode, value );
  input [22:0] fx;
  input [22:0] fy;
  output [28:0] value;
  input divide_mode;
  wire   rx_7_, ry_7_, a_0, N33, N34, N35, N36, N37, N38, N39, N40, N41, N42,
         N43, N44, N45, N46, N47, N48, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, px_9_, px_8_, px_7_, px_6_, px_5_, px_4_, px_3_, px_2_,
         px_1_, px_15_, px_14_, px_13_, px_12_, px_11_, px_10_, px_0_, N66,
         N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52,
         N51, N50, n10, n11, n13, n14, n15, n16, n17, n18, n19, n20, n21, n32,
         n330, n340, n350, n360, n370, n380, n390, n400, n410, n420, n430,
         n440, n450, n460, n470, n480, n49, n500, n510, n520, n530, n540, n550,
         n560;
  wire   [6:4] a;
  wire   [6:0] b;
  wire   [16:4] t;
  wire   [15:1] py;
  wire   [19:1] signed_y;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4;

  unified_mul_drop_l1_shared_core_DW_mult_tc_1 mult_20 ( .a({rx_7_, fx[20:14]}), .b({n550, a, n550, t[7], n550, a_0}), .product({px_15_, px_14_, px_13_, 
        px_12_, px_11_, px_10_, px_9_, px_8_, px_7_, px_6_, px_5_, px_4_, 
        px_3_, px_2_, px_1_, px_0_}) );
  unified_mul_drop_l1_shared_core_DW01_add_1 add_1_root_add_23_2 ( .A({n550, 
        n550, t[16:12], t[6], t[13], t[9:4], n550, n550, n550, n550}), .B({
        px_15_, px_15_, px_15_, px_15_, px_14_, px_13_, px_12_, px_11_, px_10_, 
        px_9_, px_8_, px_7_, px_6_, px_5_, px_4_, px_3_, px_2_, px_1_, px_0_}), 
        .CI(n550), .SUM({SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, N66, 
        N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, 
        N51, N50}) );
  unified_mul_drop_l1_shared_core_DW01_add_0 add_0_root_add_23_2 ( .A({
        signed_y[19], signed_y[19], signed_y[19], signed_y[19], signed_y[15:1], 
        N33}), .B({1'b0, 1'b0, 1'b0, N66, N65, N64, N63, N62, N61, N60, N59, 
        N58, N57, N56, N55, N54, N53, N52, N51, N50}), .CI(n550), .SUM({
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, value[24:8]}) );
  unified_mul_drop_l1_shared_core_DW_mult_tc_0 mult_20_S2 ( .a({ry_7_, 
        fy[20:14]}), .b({n550, b[6:2], t[9], b[0]}), .product({py, N33}) );
  AN2XD1 U12 ( .A1(n11), .A2(n49), .Z(n10) );
  AN2XD1 U13 ( .A1(n13), .A2(n480), .Z(n11) );
  AN2XD1 U15 ( .A1(n14), .A2(n470), .Z(n13) );
  AN2XD1 U16 ( .A1(n15), .A2(n460), .Z(n14) );
  AN2XD1 U17 ( .A1(n17), .A2(n450), .Z(n15) );
  INVD1 U18 ( .I(py[13]), .ZN(n49) );
  INVD1 U19 ( .I(py[12]), .ZN(n480) );
  AN2XD1 U20 ( .A1(n10), .A2(n500), .Z(n16) );
  INVD1 U22 ( .I(py[11]), .ZN(n470) );
  INVD1 U23 ( .I(py[10]), .ZN(n460) );
  INVD1 U24 ( .I(py[9]), .ZN(n450) );
  AN2XD1 U25 ( .A1(n18), .A2(n440), .Z(n17) );
  AN2XD1 U26 ( .A1(n19), .A2(n430), .Z(n18) );
  AN2XD1 U27 ( .A1(n20), .A2(n420), .Z(n19) );
  AN2XD1 U28 ( .A1(n21), .A2(n410), .Z(n20) );
  AN2XD1 U29 ( .A1(n32), .A2(n400), .Z(n21) );
  AN2XD1 U30 ( .A1(n340), .A2(n390), .Z(n32) );
  IND2D1 U31 ( .A1(t[16]), .B1(n28), .ZN(a[6]) );
  INVD1 U32 ( .I(py[14]), .ZN(n500) );
  ND2D1 U33 ( .A1(n26), .A2(n30), .ZN(b[4]) );
  INVD1 U34 ( .I(n31), .ZN(b[6]) );
  INVD1 U35 ( .I(py[8]), .ZN(n440) );
  INVD1 U36 ( .I(py[7]), .ZN(n430) );
  INVD1 U37 ( .I(py[6]), .ZN(n420) );
  INVD1 U38 ( .I(py[5]), .ZN(n410) );
  INVD1 U39 ( .I(py[4]), .ZN(n400) );
  ND2D1 U40 ( .A1(n26), .A2(n520), .ZN(t[8]) );
  INVD1 U41 ( .I(b[3]), .ZN(n520) );
  ND2D1 U42 ( .A1(n26), .A2(n31), .ZN(a[4]) );
  INVD1 U43 ( .I(py[3]), .ZN(n390) );
  AN2XD1 U45 ( .A1(n330), .A2(n380), .Z(n340) );
  INVD1 U46 ( .I(n30), .ZN(t[6]) );
  INR2D1 U48 ( .A1(n22), .B1(a[6]), .ZN(n30) );
  ND3D1 U49 ( .A1(n23), .A2(n29), .A3(n25), .ZN(t[16]) );
  AO22D0 U50 ( .A1(py[14]), .A2(n350), .B1(N47), .B2(divide_mode), .Z(
        signed_y[14]) );
  AO22D0 U51 ( .A1(n350), .A2(py[15]), .B1(N48), .B2(divide_mode), .Z(
        signed_y[15]) );
  AO22D0 U53 ( .A1(py[13]), .A2(n350), .B1(N46), .B2(divide_mode), .Z(
        signed_y[13]) );
  AO22D0 U54 ( .A1(py[12]), .A2(n350), .B1(N45), .B2(divide_mode), .Z(
        signed_y[12]) );
  INR2D1 U55 ( .A1(n27), .B1(a[6]), .ZN(n31) );
  AO22D0 U56 ( .A1(py[11]), .A2(n350), .B1(N44), .B2(divide_mode), .Z(
        signed_y[11]) );
  AO22D0 U57 ( .A1(py[10]), .A2(n350), .B1(N43), .B2(divide_mode), .Z(
        signed_y[10]) );
  ND3D1 U58 ( .A1(n530), .A2(n540), .A3(n350), .ZN(n28) );
  AO22D0 U59 ( .A1(py[9]), .A2(n350), .B1(N42), .B2(divide_mode), .Z(
        signed_y[9]) );
  AO22D0 U60 ( .A1(py[8]), .A2(n350), .B1(N41), .B2(divide_mode), .Z(
        signed_y[8]) );
  ND2D1 U61 ( .A1(n27), .A2(n22), .ZN(b[3]) );
  INVD1 U62 ( .I(n22), .ZN(t[9]) );
  AO22D0 U63 ( .A1(py[7]), .A2(n350), .B1(N40), .B2(divide_mode), .Z(
        signed_y[7]) );
  AO22D0 U64 ( .A1(py[6]), .A2(n350), .B1(N39), .B2(divide_mode), .Z(
        signed_y[6]) );
  ND2D1 U65 ( .A1(n26), .A2(n24), .ZN(b[2]) );
  ND3D1 U66 ( .A1(n530), .A2(n540), .A3(divide_mode), .ZN(n26) );
  IND3D1 U67 ( .A1(b[2]), .B1(n29), .B2(n25), .ZN(b[5]) );
  ND2D1 U68 ( .A1(n27), .A2(n24), .ZN(b[0]) );
  AO22D0 U69 ( .A1(py[5]), .A2(n350), .B1(N38), .B2(divide_mode), .Z(
        signed_y[5]) );
  AO22D0 U70 ( .A1(py[4]), .A2(n350), .B1(N37), .B2(divide_mode), .Z(
        signed_y[4]) );
  IND2D1 U71 ( .A1(t[8]), .B1(n24), .ZN(t[7]) );
  IND3D1 U72 ( .A1(t[7]), .B1(n23), .B2(n25), .ZN(a[5]) );
  ND2D1 U73 ( .A1(n28), .A2(n22), .ZN(t[14]) );
  IND2D1 U74 ( .A1(t[4]), .B1(n24), .ZN(t[15]) );
  ND3D1 U75 ( .A1(n29), .A2(n520), .A3(n23), .ZN(t[12]) );
  AO22D0 U76 ( .A1(py[3]), .A2(n350), .B1(N36), .B2(divide_mode), .Z(
        signed_y[3]) );
  AO22D0 U77 ( .A1(py[1]), .A2(n350), .B1(N34), .B2(divide_mode), .Z(
        signed_y[1]) );
  AO22D0 U78 ( .A1(py[2]), .A2(n350), .B1(N35), .B2(divide_mode), .Z(
        signed_y[2]) );
  INVD1 U80 ( .I(py[2]), .ZN(n380) );
  IND3D1 U81 ( .A1(b[5]), .B1(n22), .B2(n23), .ZN(t[5]) );
  ND2D1 U82 ( .A1(n22), .A2(n24), .ZN(a_0) );
  ND4D1 U85 ( .A1(n25), .A2(n26), .A3(n27), .A4(n28), .ZN(t[4]) );
  INVD1 U86 ( .I(n27), .ZN(t[13]) );
  ND3D1 U87 ( .A1(fy[22]), .A2(n350), .A3(fx[22]), .ZN(n25) );
  ND3D1 U88 ( .A1(n350), .A2(n530), .A3(fy[22]), .ZN(n23) );
  INVD1 U89 ( .I(fx[22]), .ZN(n530) );
  ND3D1 U90 ( .A1(n350), .A2(n540), .A3(fx[22]), .ZN(n29) );
  INVD1 U91 ( .I(fy[22]), .ZN(n540) );
  ND3D1 U92 ( .A1(divide_mode), .A2(n530), .A3(fy[22]), .ZN(n22) );
  ND3D1 U93 ( .A1(fy[22]), .A2(divide_mode), .A3(fx[22]), .ZN(n24) );
  ND3D1 U94 ( .A1(divide_mode), .A2(n540), .A3(fx[22]), .ZN(n27) );
  INVD1 U95 ( .I(fy[21]), .ZN(ry_7_) );
  INVD1 U96 ( .I(fx[21]), .ZN(rx_7_) );
  TIEL U97 ( .ZN(n550) );
  CKXOR2D1 U98 ( .A1(n360), .A2(n370), .Z(N34) );
  CKXOR2D1 U99 ( .A1(n330), .A2(n380), .Z(N35) );
  CKXOR2D1 U100 ( .A1(n340), .A2(n390), .Z(N36) );
  CKXOR2D1 U101 ( .A1(n32), .A2(n400), .Z(N37) );
  CKXOR2D1 U102 ( .A1(n21), .A2(n410), .Z(N38) );
  CKXOR2D1 U103 ( .A1(n20), .A2(n420), .Z(N39) );
  CKXOR2D1 U104 ( .A1(n19), .A2(n430), .Z(N40) );
  CKXOR2D1 U105 ( .A1(n18), .A2(n440), .Z(N41) );
  CKXOR2D1 U106 ( .A1(n17), .A2(n450), .Z(N42) );
  CKXOR2D1 U107 ( .A1(n15), .A2(n460), .Z(N43) );
  CKXOR2D1 U108 ( .A1(n14), .A2(n470), .Z(N44) );
  CKXOR2D1 U109 ( .A1(n13), .A2(n480), .Z(N45) );
  CKXOR2D1 U110 ( .A1(n11), .A2(n49), .Z(N46) );
  CKXOR2D1 U111 ( .A1(n10), .A2(n500), .Z(N47) );
  CKXOR2D1 U112 ( .A1(n16), .A2(n510), .Z(N48) );
  OAI31D0 U3 ( .A1(py[15]), .A2(n16), .A3(n350), .B(n560), .ZN(signed_y[19])
         );
  CKND2D0 U4 ( .A1(py[15]), .A2(n350), .ZN(n560) );
  CKND0 U5 ( .I(divide_mode), .ZN(n350) );
  CKND0 U6 ( .I(py[15]), .ZN(n510) );
  CKND0 U7 ( .I(N33), .ZN(n360) );
  CKND0 U8 ( .I(py[1]), .ZN(n370) );
  NR2D0 U9 ( .A1(N33), .A2(py[1]), .ZN(n330) );
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
  CKBD1 U33 ( .I(result_fraction[8]), .Z(result[8]) );
  CKBD1 U34 ( .I(result_fraction[7]), .Z(result[7]) );
  CKBD1 U35 ( .I(result_fraction[9]), .Z(result[9]) );
  CKBD1 U36 ( .I(result_fraction[10]), .Z(result[10]) );
  CKBD1 U37 ( .I(result_fraction[11]), .Z(result[11]) );
  CKBD1 U38 ( .I(result_fraction[12]), .Z(result[12]) );
  CKBD1 U39 ( .I(result_fraction[13]), .Z(result[13]) );
  AO22D0 U40 ( .A1(N49), .A2(n78), .B1(N25), .B2(divide_mode), .Z(result[29])
         );
  AO22D0 U41 ( .A1(N48), .A2(n78), .B1(N24), .B2(divide_mode), .Z(result[28])
         );
  AO22D0 U42 ( .A1(N47), .A2(n78), .B1(N23), .B2(divide_mode), .Z(result[27])
         );
  AO22D0 U43 ( .A1(N46), .A2(n78), .B1(N22), .B2(divide_mode), .Z(result[26])
         );
  AO22D0 U44 ( .A1(N45), .A2(n78), .B1(N21), .B2(divide_mode), .Z(result[25])
         );
  AO22D0 U45 ( .A1(N44), .A2(n78), .B1(N20), .B2(divide_mode), .Z(result[24])
         );
  INVD1 U46 ( .I(divide_mode), .ZN(n78) );
  FA1D0 U47 ( .A(N4), .B(exponent_adjust[1]), .CI(n1), .CO(
        add_0_root_add_0_root_add_22_2_carry[2]), .S(N20) );
  FA1D0 U48 ( .A(N5), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[2]), .CO(
        add_0_root_add_0_root_add_22_2_carry[3]), .S(N21) );
  FA1D0 U49 ( .A(N6), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[3]), .CO(
        add_0_root_add_0_root_add_22_2_carry[4]), .S(N22) );
  FA1D0 U50 ( .A(N7), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[4]), .CO(
        add_0_root_add_0_root_add_22_2_carry[5]), .S(N23) );
  FA1D0 U51 ( .A(N8), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[5]), .CO(
        add_0_root_add_0_root_add_22_2_carry[6]), .S(N24) );
  FA1D0 U52 ( .A(N9), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[6]), .CO(
        add_0_root_add_0_root_add_22_2_carry[7]), .S(N25) );
  FA1D0 U53 ( .A(N28), .B(exponent_adjust[1]), .CI(n2), .CO(
        add_0_root_add_0_root_add_25_2_carry[2]), .S(N44) );
  FA1D0 U54 ( .A(N29), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[2]), .CO(
        add_0_root_add_0_root_add_25_2_carry[3]), .S(N45) );
  FA1D0 U55 ( .A(N30), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[3]), .CO(
        add_0_root_add_0_root_add_25_2_carry[4]), .S(N46) );
  FA1D0 U56 ( .A(N31), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[4]), .CO(
        add_0_root_add_0_root_add_25_2_carry[5]), .S(N47) );
  FA1D0 U57 ( .A(N32), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[5]), .CO(
        add_0_root_add_0_root_add_25_2_carry[6]), .S(N48) );
  FA1D0 U58 ( .A(N33), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[6]), .CO(
        add_0_root_add_0_root_add_25_2_carry[7]), .S(N49) );
  AO22D0 U59 ( .A1(N43), .A2(n78), .B1(N19), .B2(divide_mode), .Z(result[23])
         );
  AO22D0 U60 ( .A1(N50), .A2(n78), .B1(divide_mode), .B2(N26), .Z(result[30])
         );
  XOR3D1 U61 ( .A1(N34), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_25_2_carry[7]), .Z(N50) );
  XOR3D1 U62 ( .A1(N10), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_22_2_carry[7]), .Z(N26) );
  CKBD1 U63 ( .I(x[22]), .Z(fraction_x[22]) );
  CKBD1 U64 ( .I(y[15]), .Z(fraction_y[15]) );
  CKBD1 U65 ( .I(y[17]), .Z(fraction_y[17]) );
  CKBD1 U66 ( .I(y[19]), .Z(fraction_y[19]) );
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
  CKBD1 U87 ( .I(x[21]), .Z(fraction_x[21]) );
  CKBD1 U88 ( .I(x[20]), .Z(fraction_x[20]) );
  CKBD1 U89 ( .I(x[19]), .Z(fraction_x[19]) );
  CKBD1 U90 ( .I(x[18]), .Z(fraction_x[18]) );
  CKBD1 U91 ( .I(x[17]), .Z(fraction_x[17]) );
  CKBD1 U92 ( .I(x[16]), .Z(fraction_x[16]) );
  CKBD1 U93 ( .I(x[15]), .Z(fraction_x[15]) );
  CKBD1 U94 ( .I(x[14]), .Z(fraction_x[14]) );
  CKBD1 U95 ( .I(y[22]), .Z(fraction_y[22]) );
  CKBD1 U96 ( .I(y[21]), .Z(fraction_y[21]) );
  CKBD1 U97 ( .I(y[20]), .Z(fraction_y[20]) );
  CKBD1 U98 ( .I(y[18]), .Z(fraction_y[18]) );
  CKBD1 U99 ( .I(y[16]), .Z(fraction_y[16]) );
  CKBD1 U100 ( .I(y[14]), .Z(fraction_y[14]) );
  CKBD1 U101 ( .I(result_fraction[22]), .Z(result[22]) );
  CKBD1 U102 ( .I(result_fraction[21]), .Z(result[21]) );
  CKBD1 U103 ( .I(result_fraction[20]), .Z(result[20]) );
  CKBD1 U104 ( .I(result_fraction[19]), .Z(result[19]) );
  CKBD1 U105 ( .I(result_fraction[18]), .Z(result[18]) );
  CKBD1 U106 ( .I(result_fraction[17]), .Z(result[17]) );
  CKBD1 U107 ( .I(result_fraction[16]), .Z(result[16]) );
  CKBD1 U108 ( .I(result_fraction[15]), .Z(result[15]) );
  CKBD1 U109 ( .I(result_fraction[14]), .Z(result[14]) );
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


module unified_mul_drop_l1_shared ( x, y, divide_mode, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  input divide_mode;
  wire   n27, n28, n29, n30, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n55, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74;
  wire   [22:14] fx;
  wire   [22:14] fy;
  wire   [24:8] core_value;
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
        SYNOPSYS_UNCONNECTED__46;
  assign result[0] = 1'b0;
  assign result[1] = 1'b0;
  assign result[2] = 1'b0;
  assign result[3] = 1'b0;
  assign result[4] = 1'b0;
  assign result[5] = 1'b0;
  assign result[6] = 1'b0;

  unified_mul_drop_l1_shared_core shared_core ( .fx({fx, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .fy({fy, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .divide_mode(n55), .value({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, core_value, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11}) );
  fp32_normal_finite_wrapper wrapper ( .x({x[31:14], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y({
        y[31:14], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .divide_mode(n55), .fraction_x({fx, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25}), .fraction_y({fy, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31, 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, 
        SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39}), 
        .result_fraction({normalized_fraction, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .exponent_adjust({exponent_adjust[2], exponent_adjust[2], 
        exponent_adjust[0]}), .result({result[31:7], SYNOPSYS_UNCONNECTED__40, 
        SYNOPSYS_UNCONNECTED__41, SYNOPSYS_UNCONNECTED__42, 
        SYNOPSYS_UNCONNECTED__43, SYNOPSYS_UNCONNECTED__44, 
        SYNOPSYS_UNCONNECTED__45, SYNOPSYS_UNCONNECTED__46}) );
  IND2D1 U78 ( .A1(n29), .B1(n58), .ZN(exponent_adjust[2]) );
  INVD1 U79 ( .I(n30), .ZN(n58) );
  ND2D1 U80 ( .A1(n57), .A2(n58), .ZN(exponent_adjust[0]) );
  OAI22D1 U81 ( .A1(n74), .A2(n27), .B1(n73), .B2(n57), .ZN(
        normalized_fraction[8]) );
  NR2D1 U82 ( .A1(n74), .A2(n57), .ZN(normalized_fraction[7]) );
  NR3D0 U83 ( .A1(core_value[23]), .A2(core_value[24]), .A3(core_value[22]), 
        .ZN(n29) );
  NR3D0 U84 ( .A1(core_value[23]), .A2(core_value[24]), .A3(n60), .ZN(n30) );
  INVD1 U85 ( .I(core_value[24]), .ZN(n57) );
  INVD1 U86 ( .I(core_value[22]), .ZN(n60) );
  ND2D1 U87 ( .A1(core_value[23]), .A2(n57), .ZN(n27) );
  OAI221D0 U88 ( .A1(n27), .A2(n73), .B1(n72), .B2(n57), .C(n28), .ZN(
        normalized_fraction[9]) );
  ND2D1 U89 ( .A1(core_value[8]), .A2(n30), .ZN(n28) );
  OAI221D0 U90 ( .A1(n27), .A2(n72), .B1(n57), .B2(n71), .C(n50), .ZN(
        normalized_fraction[10]) );
  AOI22D1 U91 ( .A1(core_value[8]), .A2(n29), .B1(core_value[9]), .B2(n30), 
        .ZN(n50) );
  OAI221D0 U92 ( .A1(n27), .A2(n71), .B1(n57), .B2(n70), .C(n49), .ZN(
        normalized_fraction[11]) );
  AOI22D1 U93 ( .A1(core_value[9]), .A2(n29), .B1(core_value[10]), .B2(n30), 
        .ZN(n49) );
  OAI221D0 U94 ( .A1(n27), .A2(n70), .B1(n57), .B2(n69), .C(n48), .ZN(
        normalized_fraction[12]) );
  AOI22D1 U95 ( .A1(core_value[10]), .A2(n29), .B1(core_value[11]), .B2(n30), 
        .ZN(n48) );
  OAI221D0 U96 ( .A1(n27), .A2(n69), .B1(n57), .B2(n68), .C(n47), .ZN(
        normalized_fraction[13]) );
  AOI22D1 U97 ( .A1(core_value[11]), .A2(n29), .B1(core_value[12]), .B2(n30), 
        .ZN(n47) );
  OAI221D0 U98 ( .A1(n60), .A2(n27), .B1(n59), .B2(n57), .C(n38), .ZN(
        normalized_fraction[22]) );
  INVD1 U99 ( .I(core_value[23]), .ZN(n59) );
  AOI22D1 U100 ( .A1(core_value[20]), .A2(n29), .B1(core_value[21]), .B2(n30), 
        .ZN(n38) );
  OAI221D0 U101 ( .A1(n27), .A2(n68), .B1(n57), .B2(n67), .C(n46), .ZN(
        normalized_fraction[14]) );
  AOI22D1 U102 ( .A1(core_value[12]), .A2(n29), .B1(core_value[13]), .B2(n30), 
        .ZN(n46) );
  OAI221D0 U103 ( .A1(n27), .A2(n67), .B1(n57), .B2(n66), .C(n45), .ZN(
        normalized_fraction[15]) );
  AOI22D1 U104 ( .A1(core_value[13]), .A2(n29), .B1(core_value[14]), .B2(n30), 
        .ZN(n45) );
  OAI221D0 U105 ( .A1(n27), .A2(n66), .B1(n57), .B2(n65), .C(n44), .ZN(
        normalized_fraction[16]) );
  AOI22D1 U106 ( .A1(core_value[14]), .A2(n29), .B1(core_value[15]), .B2(n30), 
        .ZN(n44) );
  OAI221D0 U107 ( .A1(n27), .A2(n65), .B1(n57), .B2(n64), .C(n43), .ZN(
        normalized_fraction[17]) );
  AOI22D1 U108 ( .A1(core_value[15]), .A2(n29), .B1(core_value[16]), .B2(n30), 
        .ZN(n43) );
  OAI221D0 U109 ( .A1(n27), .A2(n64), .B1(n57), .B2(n63), .C(n42), .ZN(
        normalized_fraction[18]) );
  AOI22D1 U110 ( .A1(core_value[16]), .A2(n29), .B1(core_value[17]), .B2(n30), 
        .ZN(n42) );
  OAI221D0 U111 ( .A1(n27), .A2(n63), .B1(n57), .B2(n62), .C(n41), .ZN(
        normalized_fraction[19]) );
  AOI22D1 U112 ( .A1(core_value[17]), .A2(n29), .B1(core_value[18]), .B2(n30), 
        .ZN(n41) );
  OAI221D0 U113 ( .A1(n27), .A2(n62), .B1(n57), .B2(n61), .C(n40), .ZN(
        normalized_fraction[20]) );
  AOI22D1 U114 ( .A1(core_value[18]), .A2(n29), .B1(core_value[19]), .B2(n30), 
        .ZN(n40) );
  OAI221D0 U115 ( .A1(n27), .A2(n61), .B1(n60), .B2(n57), .C(n39), .ZN(
        normalized_fraction[21]) );
  AOI22D1 U116 ( .A1(core_value[19]), .A2(n29), .B1(core_value[20]), .B2(n30), 
        .ZN(n39) );
  INVD1 U117 ( .I(core_value[21]), .ZN(n61) );
  INVD1 U118 ( .I(core_value[20]), .ZN(n62) );
  INVD1 U119 ( .I(core_value[19]), .ZN(n63) );
  INVD1 U120 ( .I(core_value[18]), .ZN(n64) );
  INVD1 U121 ( .I(core_value[17]), .ZN(n65) );
  INVD1 U122 ( .I(core_value[16]), .ZN(n66) );
  INVD1 U123 ( .I(core_value[15]), .ZN(n67) );
  INVD1 U124 ( .I(core_value[14]), .ZN(n68) );
  INVD1 U125 ( .I(core_value[13]), .ZN(n69) );
  INVD1 U126 ( .I(core_value[12]), .ZN(n70) );
  INVD1 U127 ( .I(core_value[11]), .ZN(n71) );
  INVD1 U128 ( .I(core_value[10]), .ZN(n72) );
  INVD1 U129 ( .I(core_value[9]), .ZN(n73) );
  INVD1 U130 ( .I(core_value[8]), .ZN(n74) );
  CKBD1 U131 ( .I(divide_mode), .Z(n55) );
endmodule

