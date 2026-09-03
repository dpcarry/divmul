/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Thu Sep  3 12:58:01 2026
/////////////////////////////////////////////////////////////


module oadm_fixed_mul_plane_root_opt_LEVEL2_RESIDUAL_DROP8_DW01_add_3 ( A, B, 
        CI, SUM, CO );
  input [28:0] A;
  input [28:0] B;
  output [28:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [24:7] carry;

  FA1D0 U1_6 ( .A(A[6]), .B(B[6]), .CI(n1), .CO(carry[7]), .S(SUM[6]) );
  FA1D0 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA1D0 U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
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
  FA1D0 U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  FA1D0 U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  FA1D0 U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  FA1D0 U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  FA1D0 U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  FA1D0 U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  XOR3D1 U1_24 ( .A1(A[24]), .A2(B[24]), .A3(carry[24]), .Z(SUM[24]) );
  AN2XD1 U1 ( .A1(B[5]), .A2(A[5]), .Z(n1) );
  CKXOR2D1 U2 ( .A1(B[5]), .A2(A[5]), .Z(SUM[5]) );
endmodule


module oadm_fixed_mul_plane_root_opt_LEVEL2_RESIDUAL_DROP8_DW_mult_tc_1 ( a, b, 
        product );
  input [12:0] a;
  input [5:0] b;
  output [18:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n18, n20, n21, n22, n23, n24, n26, n27, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222;

  FA1D0 U2 ( .A(n196), .B(n18), .CI(n2), .CO(n1), .S(product[17]) );
  FA1D0 U3 ( .A(n20), .B(n195), .CI(n3), .CO(n2), .S(product[16]) );
  FA1D0 U4 ( .A(n22), .B(n21), .CI(n4), .CO(n3), .S(product[15]) );
  FA1D0 U5 ( .A(n26), .B(n23), .CI(n5), .CO(n4), .S(product[14]) );
  FA1D0 U6 ( .A(n27), .B(n29), .CI(n6), .CO(n5), .S(product[13]) );
  FA1D0 U7 ( .A(n31), .B(n30), .CI(n7), .CO(n6), .S(product[12]) );
  FA1D0 U8 ( .A(n33), .B(n32), .CI(n8), .CO(n7), .S(product[11]) );
  FA1D0 U9 ( .A(n35), .B(n34), .CI(n9), .CO(n8), .S(product[10]) );
  FA1D0 U10 ( .A(n37), .B(n36), .CI(n10), .CO(n9), .S(product[9]) );
  FA1D0 U11 ( .A(n39), .B(n38), .CI(n11), .CO(n10), .S(product[8]) );
  FA1D0 U12 ( .A(n41), .B(n40), .CI(n12), .CO(n11), .S(product[7]) );
  FA1D0 U13 ( .A(n43), .B(n42), .CI(n13), .CO(n12), .S(product[6]) );
  FA1D0 U14 ( .A(n45), .B(n44), .CI(n14), .CO(n13), .S(product[5]) );
  FA1D0 U15 ( .A(n46), .B(n47), .CI(n15), .CO(n14), .S(product[4]) );
  FA1D0 U16 ( .A(n48), .B(n49), .CI(n16), .CO(n15), .S(product[3]) );
  FA1D0 U17 ( .A(n207), .B(n76), .CI(n208), .CO(n16), .S(product[2]) );
  FA1D0 U20 ( .A(n52), .B(n24), .CI(n63), .CO(n20), .S(n21) );
  FA1D0 U21 ( .A(n64), .B(n53), .CI(n194), .CO(n22), .S(n23) );
  FA1D0 U23 ( .A(a[12]), .B(n65), .CI(n194), .CO(n26), .S(n27) );
  FA1D0 U25 ( .A(n197), .B(n54), .CI(n66), .CO(n29), .S(n30) );
  FA1D0 U26 ( .A(n198), .B(n55), .CI(n67), .CO(n31), .S(n32) );
  FA1D0 U27 ( .A(n199), .B(n56), .CI(n68), .CO(n33), .S(n34) );
  FA1D0 U28 ( .A(n200), .B(n57), .CI(n69), .CO(n35), .S(n36) );
  FA1D0 U29 ( .A(n201), .B(n58), .CI(n70), .CO(n37), .S(n38) );
  FA1D0 U30 ( .A(n202), .B(n59), .CI(n71), .CO(n39), .S(n40) );
  FA1D0 U31 ( .A(n203), .B(n60), .CI(n72), .CO(n41), .S(n42) );
  FA1D0 U32 ( .A(n204), .B(n61), .CI(n73), .CO(n43), .S(n44) );
  FA1D0 U33 ( .A(n205), .B(n62), .CI(n74), .CO(n45), .S(n46) );
  HA1D0 U34 ( .A(n75), .B(n206), .CO(n47), .S(n48) );
  INVD1 U142 ( .I(n18), .ZN(n195) );
  INVD1 U143 ( .I(n24), .ZN(n194) );
  INVD1 U144 ( .I(b[3]), .ZN(n193) );
  INVD1 U145 ( .I(a[0]), .ZN(n208) );
  INVD1 U146 ( .I(a[12]), .ZN(n196) );
  INVD1 U147 ( .I(a[1]), .ZN(n207) );
  INVD1 U148 ( .I(a[2]), .ZN(n206) );
  INVD1 U149 ( .I(a[3]), .ZN(n205) );
  INVD1 U150 ( .I(a[4]), .ZN(n204) );
  INVD1 U151 ( .I(a[5]), .ZN(n203) );
  INVD1 U152 ( .I(a[6]), .ZN(n202) );
  INVD1 U153 ( .I(a[7]), .ZN(n201) );
  INVD1 U154 ( .I(a[8]), .ZN(n200) );
  INVD1 U155 ( .I(a[9]), .ZN(n199) );
  INVD1 U156 ( .I(a[11]), .ZN(n197) );
  INVD1 U157 ( .I(a[10]), .ZN(n198) );
  CKND0 U158 ( .I(n208), .ZN(product[1]) );
  CKND0 U159 ( .I(n1), .ZN(product[18]) );
  NR2D0 U160 ( .A1(b[2]), .A2(n208), .ZN(n76) );
  OAI22D0 U161 ( .A1(n209), .A2(n210), .B1(b[2]), .B2(n211), .ZN(n75) );
  CKXOR2D0 U162 ( .A1(b[3]), .A2(n208), .Z(n209) );
  OAI22D0 U163 ( .A1(n211), .A2(n210), .B1(b[2]), .B2(n212), .ZN(n74) );
  CKXOR2D0 U164 ( .A1(b[3]), .A2(n207), .Z(n211) );
  OAI22D0 U165 ( .A1(n212), .A2(n210), .B1(b[2]), .B2(n213), .ZN(n73) );
  CKXOR2D0 U166 ( .A1(b[3]), .A2(n206), .Z(n212) );
  OAI22D0 U167 ( .A1(n213), .A2(n210), .B1(b[2]), .B2(n214), .ZN(n72) );
  CKXOR2D0 U168 ( .A1(b[3]), .A2(n205), .Z(n213) );
  OAI22D0 U169 ( .A1(n214), .A2(n210), .B1(b[2]), .B2(n215), .ZN(n71) );
  CKXOR2D0 U170 ( .A1(b[3]), .A2(n204), .Z(n214) );
  OAI22D0 U171 ( .A1(n215), .A2(n210), .B1(b[2]), .B2(n216), .ZN(n70) );
  CKXOR2D0 U172 ( .A1(b[3]), .A2(n203), .Z(n215) );
  OAI22D0 U173 ( .A1(n216), .A2(n210), .B1(b[2]), .B2(n217), .ZN(n69) );
  CKXOR2D0 U174 ( .A1(b[3]), .A2(n202), .Z(n216) );
  OAI22D0 U175 ( .A1(n217), .A2(n210), .B1(b[2]), .B2(n218), .ZN(n68) );
  CKXOR2D0 U176 ( .A1(b[3]), .A2(n201), .Z(n217) );
  OAI22D0 U177 ( .A1(n218), .A2(n210), .B1(b[2]), .B2(n219), .ZN(n67) );
  CKXOR2D0 U178 ( .A1(b[3]), .A2(n200), .Z(n218) );
  OAI22D0 U179 ( .A1(n219), .A2(n210), .B1(b[2]), .B2(n220), .ZN(n66) );
  CKXOR2D0 U180 ( .A1(b[3]), .A2(n199), .Z(n219) );
  OAI22D0 U181 ( .A1(n220), .A2(n210), .B1(b[2]), .B2(n221), .ZN(n65) );
  CKXOR2D0 U182 ( .A1(b[3]), .A2(n198), .Z(n220) );
  OAI22D0 U183 ( .A1(n221), .A2(n210), .B1(b[2]), .B2(n222), .ZN(n64) );
  CKXOR2D0 U184 ( .A1(b[3]), .A2(n197), .Z(n221) );
  AO21D0 U185 ( .A1(n210), .A2(b[2]), .B(n222), .Z(n63) );
  CKXOR2D0 U186 ( .A1(n193), .A2(a[12]), .Z(n222) );
  NR2D0 U187 ( .A1(b[3]), .A2(n208), .ZN(n62) );
  OAI22D0 U188 ( .A1(n208), .A2(n193), .B1(b[3]), .B2(n207), .ZN(n61) );
  OAI22D0 U189 ( .A1(n207), .A2(n193), .B1(b[3]), .B2(n206), .ZN(n60) );
  OAI22D0 U190 ( .A1(n206), .A2(n193), .B1(b[3]), .B2(n205), .ZN(n59) );
  OAI22D0 U191 ( .A1(n205), .A2(n193), .B1(b[3]), .B2(n204), .ZN(n58) );
  OAI22D0 U192 ( .A1(n204), .A2(n193), .B1(b[3]), .B2(n203), .ZN(n57) );
  OAI22D0 U193 ( .A1(n203), .A2(n193), .B1(b[3]), .B2(n202), .ZN(n56) );
  OAI22D0 U194 ( .A1(n202), .A2(n193), .B1(b[3]), .B2(n201), .ZN(n55) );
  OAI22D0 U195 ( .A1(n201), .A2(n193), .B1(b[3]), .B2(n200), .ZN(n54) );
  OAI22D0 U196 ( .A1(n199), .A2(n193), .B1(b[3]), .B2(n198), .ZN(n53) );
  OAI22D0 U197 ( .A1(n198), .A2(n193), .B1(b[3]), .B2(n197), .ZN(n52) );
  OAI32D0 U198 ( .A1(n193), .A2(a[0]), .A3(b[2]), .B1(n193), .B2(n210), .ZN(
        n49) );
  OAI22D0 U201 ( .A1(n200), .A2(n193), .B1(b[3]), .B2(n199), .ZN(n24) );
  OAI22D0 U202 ( .A1(b[3]), .A2(n196), .B1(n197), .B2(n193), .ZN(n18) );
  IND2D0 U199 ( .A1(b[3]), .B1(b[2]), .ZN(n210) );
endmodule


module oadm_fixed_mul_plane_root_opt_LEVEL2_RESIDUAL_DROP8_DW_mult_tc_0 ( a, b, 
        product );
  input [12:0] a;
  input [5:0] b;
  output [18:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n18, n20, n21, n22, n23, n24, n26, n27, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222;

  FA1D0 U2 ( .A(n196), .B(n18), .CI(n2), .CO(n1), .S(product[17]) );
  FA1D0 U3 ( .A(n20), .B(n195), .CI(n3), .CO(n2), .S(product[16]) );
  FA1D0 U4 ( .A(n22), .B(n21), .CI(n4), .CO(n3), .S(product[15]) );
  FA1D0 U5 ( .A(n26), .B(n23), .CI(n5), .CO(n4), .S(product[14]) );
  FA1D0 U6 ( .A(n27), .B(n29), .CI(n6), .CO(n5), .S(product[13]) );
  FA1D0 U7 ( .A(n31), .B(n30), .CI(n7), .CO(n6), .S(product[12]) );
  FA1D0 U8 ( .A(n33), .B(n32), .CI(n8), .CO(n7), .S(product[11]) );
  FA1D0 U9 ( .A(n35), .B(n34), .CI(n9), .CO(n8), .S(product[10]) );
  FA1D0 U10 ( .A(n37), .B(n36), .CI(n10), .CO(n9), .S(product[9]) );
  FA1D0 U11 ( .A(n39), .B(n38), .CI(n11), .CO(n10), .S(product[8]) );
  FA1D0 U12 ( .A(n41), .B(n40), .CI(n12), .CO(n11), .S(product[7]) );
  FA1D0 U13 ( .A(n43), .B(n42), .CI(n13), .CO(n12), .S(product[6]) );
  FA1D0 U14 ( .A(n45), .B(n44), .CI(n14), .CO(n13), .S(product[5]) );
  FA1D0 U15 ( .A(n46), .B(n47), .CI(n15), .CO(n14), .S(product[4]) );
  FA1D0 U16 ( .A(n48), .B(n49), .CI(n16), .CO(n15), .S(product[3]) );
  FA1D0 U17 ( .A(n207), .B(n76), .CI(n208), .CO(n16), .S(product[2]) );
  FA1D0 U20 ( .A(n52), .B(n24), .CI(n63), .CO(n20), .S(n21) );
  FA1D0 U21 ( .A(n64), .B(n53), .CI(n194), .CO(n22), .S(n23) );
  FA1D0 U23 ( .A(a[12]), .B(n65), .CI(n194), .CO(n26), .S(n27) );
  FA1D0 U25 ( .A(n197), .B(n54), .CI(n66), .CO(n29), .S(n30) );
  FA1D0 U26 ( .A(n198), .B(n55), .CI(n67), .CO(n31), .S(n32) );
  FA1D0 U27 ( .A(n199), .B(n56), .CI(n68), .CO(n33), .S(n34) );
  FA1D0 U28 ( .A(n200), .B(n57), .CI(n69), .CO(n35), .S(n36) );
  FA1D0 U29 ( .A(n201), .B(n58), .CI(n70), .CO(n37), .S(n38) );
  FA1D0 U30 ( .A(n202), .B(n59), .CI(n71), .CO(n39), .S(n40) );
  FA1D0 U31 ( .A(n203), .B(n60), .CI(n72), .CO(n41), .S(n42) );
  FA1D0 U32 ( .A(n204), .B(n61), .CI(n73), .CO(n43), .S(n44) );
  FA1D0 U33 ( .A(n205), .B(n62), .CI(n74), .CO(n45), .S(n46) );
  HA1D0 U34 ( .A(n75), .B(n206), .CO(n47), .S(n48) );
  INVD1 U142 ( .I(n18), .ZN(n195) );
  INVD1 U143 ( .I(n24), .ZN(n194) );
  INVD1 U144 ( .I(b[3]), .ZN(n193) );
  INVD1 U145 ( .I(a[0]), .ZN(n208) );
  INVD1 U146 ( .I(a[12]), .ZN(n196) );
  INVD1 U147 ( .I(a[1]), .ZN(n207) );
  INVD1 U148 ( .I(a[2]), .ZN(n206) );
  INVD1 U149 ( .I(a[3]), .ZN(n205) );
  INVD1 U150 ( .I(a[4]), .ZN(n204) );
  INVD1 U151 ( .I(a[5]), .ZN(n203) );
  INVD1 U152 ( .I(a[6]), .ZN(n202) );
  INVD1 U153 ( .I(a[7]), .ZN(n201) );
  INVD1 U154 ( .I(a[8]), .ZN(n200) );
  INVD1 U155 ( .I(a[9]), .ZN(n199) );
  INVD1 U156 ( .I(a[11]), .ZN(n197) );
  INVD1 U157 ( .I(a[10]), .ZN(n198) );
  CKND0 U158 ( .I(n208), .ZN(product[1]) );
  CKND0 U159 ( .I(n1), .ZN(product[18]) );
  NR2D0 U160 ( .A1(b[2]), .A2(n208), .ZN(n76) );
  OAI22D0 U161 ( .A1(n209), .A2(n210), .B1(b[2]), .B2(n211), .ZN(n75) );
  CKXOR2D0 U162 ( .A1(b[3]), .A2(n208), .Z(n209) );
  OAI22D0 U163 ( .A1(n211), .A2(n210), .B1(b[2]), .B2(n212), .ZN(n74) );
  CKXOR2D0 U164 ( .A1(b[3]), .A2(n207), .Z(n211) );
  OAI22D0 U165 ( .A1(n212), .A2(n210), .B1(b[2]), .B2(n213), .ZN(n73) );
  CKXOR2D0 U166 ( .A1(b[3]), .A2(n206), .Z(n212) );
  OAI22D0 U167 ( .A1(n213), .A2(n210), .B1(b[2]), .B2(n214), .ZN(n72) );
  CKXOR2D0 U168 ( .A1(b[3]), .A2(n205), .Z(n213) );
  OAI22D0 U169 ( .A1(n214), .A2(n210), .B1(b[2]), .B2(n215), .ZN(n71) );
  CKXOR2D0 U170 ( .A1(b[3]), .A2(n204), .Z(n214) );
  OAI22D0 U171 ( .A1(n215), .A2(n210), .B1(b[2]), .B2(n216), .ZN(n70) );
  CKXOR2D0 U172 ( .A1(b[3]), .A2(n203), .Z(n215) );
  OAI22D0 U173 ( .A1(n216), .A2(n210), .B1(b[2]), .B2(n217), .ZN(n69) );
  CKXOR2D0 U174 ( .A1(b[3]), .A2(n202), .Z(n216) );
  OAI22D0 U175 ( .A1(n217), .A2(n210), .B1(b[2]), .B2(n218), .ZN(n68) );
  CKXOR2D0 U176 ( .A1(b[3]), .A2(n201), .Z(n217) );
  OAI22D0 U177 ( .A1(n218), .A2(n210), .B1(b[2]), .B2(n219), .ZN(n67) );
  CKXOR2D0 U178 ( .A1(b[3]), .A2(n200), .Z(n218) );
  OAI22D0 U179 ( .A1(n219), .A2(n210), .B1(b[2]), .B2(n220), .ZN(n66) );
  CKXOR2D0 U180 ( .A1(b[3]), .A2(n199), .Z(n219) );
  OAI22D0 U181 ( .A1(n220), .A2(n210), .B1(b[2]), .B2(n221), .ZN(n65) );
  CKXOR2D0 U182 ( .A1(b[3]), .A2(n198), .Z(n220) );
  OAI22D0 U183 ( .A1(n221), .A2(n210), .B1(b[2]), .B2(n222), .ZN(n64) );
  CKXOR2D0 U184 ( .A1(b[3]), .A2(n197), .Z(n221) );
  AO21D0 U185 ( .A1(n210), .A2(b[2]), .B(n222), .Z(n63) );
  CKXOR2D0 U186 ( .A1(n193), .A2(a[12]), .Z(n222) );
  NR2D0 U187 ( .A1(b[3]), .A2(n208), .ZN(n62) );
  OAI22D0 U188 ( .A1(n208), .A2(n193), .B1(b[3]), .B2(n207), .ZN(n61) );
  OAI22D0 U189 ( .A1(n207), .A2(n193), .B1(b[3]), .B2(n206), .ZN(n60) );
  OAI22D0 U190 ( .A1(n206), .A2(n193), .B1(b[3]), .B2(n205), .ZN(n59) );
  OAI22D0 U191 ( .A1(n205), .A2(n193), .B1(b[3]), .B2(n204), .ZN(n58) );
  OAI22D0 U192 ( .A1(n204), .A2(n193), .B1(b[3]), .B2(n203), .ZN(n57) );
  OAI22D0 U193 ( .A1(n203), .A2(n193), .B1(b[3]), .B2(n202), .ZN(n56) );
  OAI22D0 U194 ( .A1(n202), .A2(n193), .B1(b[3]), .B2(n201), .ZN(n55) );
  OAI22D0 U195 ( .A1(n201), .A2(n193), .B1(b[3]), .B2(n200), .ZN(n54) );
  OAI22D0 U196 ( .A1(n199), .A2(n193), .B1(b[3]), .B2(n198), .ZN(n53) );
  OAI22D0 U197 ( .A1(n198), .A2(n193), .B1(b[3]), .B2(n197), .ZN(n52) );
  OAI32D0 U198 ( .A1(n193), .A2(a[0]), .A3(b[2]), .B1(n193), .B2(n210), .ZN(
        n49) );
  OAI22D0 U201 ( .A1(n200), .A2(n193), .B1(b[3]), .B2(n199), .ZN(n24) );
  OAI22D0 U202 ( .A1(b[3]), .A2(n196), .B1(n197), .B2(n193), .ZN(n18) );
  IND2D0 U199 ( .A1(b[3]), .B1(b[2]), .ZN(n210) );
endmodule


module oadm_fixed_mul_plane_root_opt_LEVEL2_RESIDUAL_DROP8_DW_mult_uns_0 ( a, 
        b, product );
  input [4:0] a;
  input [4:0] b;
  output [9:0] product;
  wire   n2, n3, n4, n5, n6, n9, n10, n11, n12, n13, n14, n15, n16, n17, n19,
         n20, n21, n36, n42, n88, n89, n92, n93, n94, n95, n96, n97, n98, n99,
         n100;

  FA1D0 U3 ( .A(n12), .B(n10), .CI(n3), .CO(n2), .S(product[7]) );
  FA1D0 U4 ( .A(n15), .B(n13), .CI(n4), .CO(n3), .S(product[6]) );
  FA1D0 U5 ( .A(n16), .B(n20), .CI(n5), .CO(n4), .S(product[5]) );
  FA1D0 U10 ( .A(b[3]), .B(a[3]), .CI(n11), .CO(n9), .S(n10) );
  CMPE42D1 U11 ( .A(b[2]), .B(a[2]), .C(n36), .CIX(n14), .D(n17), .CO(n12), 
        .COX(n11), .S(n13) );
  INVD1 U57 ( .I(n19), .ZN(n93) );
  INVD1 U58 ( .I(n42), .ZN(n94) );
  INVD1 U59 ( .I(n14), .ZN(n92) );
  ND2D1 U63 ( .A1(n19), .A2(n92), .ZN(n98) );
  XNR3D1 U64 ( .A1(n14), .A2(n17), .A3(n93), .ZN(n16) );
  INVD1 U65 ( .I(a[3]), .ZN(n89) );
  INVD1 U66 ( .I(b[3]), .ZN(n88) );
  INVD1 U67 ( .I(b[2]), .ZN(n96) );
  INVD1 U68 ( .I(a[2]), .ZN(n95) );
  XNR2D1 U69 ( .A1(n2), .A2(n9), .ZN(product[8]) );
  AN2D0 U70 ( .A1(n6), .A2(n21), .Z(n5) );
  CKXOR2D0 U71 ( .A1(n6), .A2(n21), .Z(product[4]) );
  AN2D0 U72 ( .A1(a[2]), .A2(b[2]), .Z(n6) );
  CKXOR2D0 U73 ( .A1(a[2]), .A2(b[2]), .Z(product[3]) );
  OAI211D0 U74 ( .A1(n17), .A2(n93), .B(n97), .C(n98), .ZN(n15) );
  INR2D0 U75 ( .A1(b[3]), .B1(n94), .ZN(n19) );
  XNR3D0 U76 ( .A1(a[3]), .A2(n94), .A3(b[3]), .ZN(n21) );
  MUX2ND0 U77 ( .I0(n99), .I1(n100), .S(b[3]), .ZN(n20) );
  CKND2D0 U78 ( .A1(a[3]), .A2(n94), .ZN(n100) );
  CKND2D0 U79 ( .A1(n42), .A2(a[3]), .ZN(n99) );
  NR2D0 U80 ( .A1(n96), .A2(n95), .ZN(n42) );
  NR2D0 U81 ( .A1(n88), .A2(n95), .ZN(n14) );
  NR2D0 U82 ( .A1(n96), .A2(n89), .ZN(n17) );
  NR2D0 U83 ( .A1(n88), .A2(n89), .ZN(n36) );
  OR2D0 U56 ( .A1(n9), .A2(n2), .Z(product[9]) );
  IND2D0 U60 ( .A1(n17), .B1(n92), .ZN(n97) );
endmodule


module oadm_fixed_mul_plane_root_opt_LEVEL2_RESIDUAL_DROP8 ( x_mantissa, 
        y_mantissa, plane_value );
  input [23:0] x_mantissa;
  input [23:0] y_mantissa;
  output [28:0] plane_value;
  wire   x_residual_20_, y_residual_20_, N9, N8, N7, N6, N51, N50, N5, N49,
         N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35,
         N34, N33, N32, net2670, N24, N23, N22, N21, N20, N19, N18, N17, N16,
         N15, N14, N13, N12, N11, N10, add_52_carry_3_, n60, n80, n90, n100,
         n110, n120, n130, n140, n150, n160, n170, n180, n190, n200, n210,
         n220;
  wire   [18:13] x_product;
  wire   [18:1] y_product;
  wire   [9:3] midpoint_product;
  wire   [4:2] midpoint_sum;
  wire   [24:19] add_2_root_add_56_3_carry;
  wire   [9:7] add_1_root_add_56_3_carry;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13;

  oadm_fixed_mul_plane_root_opt_LEVEL2_RESIDUAL_DROP8_DW01_add_3 add_0_root_add_56_3 ( 
        .A({net2670, net2670, net2670, net2670, N24, N23, N22, N21, N20, N19, 
        N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, 
        net2670, net2670, net2670, net2670, net2670}), .B({net2670, net2670, 
        net2670, net2670, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, 
        N41, N40, N39, N38, N37, N36, N35, N34, N33, N32, net2670, net2670, 
        net2670, net2670, net2670}), .CI(net2670), .SUM({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, plane_value[24:5], 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8}) );
  oadm_fixed_mul_plane_root_opt_LEVEL2_RESIDUAL_DROP8_DW_mult_tc_1 mult_33 ( 
        .a({x_residual_20_, x_mantissa[19:8]}), .b({net2670, n60, 
        y_mantissa[22:21], n60, net2670}), .product({x_product, N16, N15, N14, 
        N13, N12, N11, N10, N9, N8, N7, N6, N5, SYNOPSYS_UNCONNECTED__9}) );
  oadm_fixed_mul_plane_root_opt_LEVEL2_RESIDUAL_DROP8_DW_mult_tc_0 mult_35 ( 
        .a({y_residual_20_, y_mantissa[19:8]}), .b({net2670, n60, 
        x_mantissa[22:21], n60, net2670}), .product({y_product, 
        SYNOPSYS_UNCONNECTED__10}) );
  oadm_fixed_mul_plane_root_opt_LEVEL2_RESIDUAL_DROP8_DW_mult_uns_0 mult_46 ( 
        .a({n60, x_mantissa[22:21], n60, net2670}), .b({n60, y_mantissa[22:21], 
        n60, net2670}), .product({midpoint_product, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13}) );
  TIEL U3 ( .ZN(net2670) );
  TIEH U4 ( .Z(n60) );
  AN2XD1 U12 ( .A1(midpoint_sum[2]), .A2(y_product[1]), .Z(n80) );
  XOR3D1 U13 ( .A1(midpoint_product[9]), .A2(x_product[18]), .A3(
        add_2_root_add_56_3_carry[24]), .Z(N24) );
  AN2XD1 U14 ( .A1(n100), .A2(y_product[18]), .Z(n90) );
  FA1D0 U15 ( .A(midpoint_product[8]), .B(x_product[18]), .CI(
        add_2_root_add_56_3_carry[23]), .CO(add_2_root_add_56_3_carry[24]), 
        .S(N23) );
  FA1D0 U16 ( .A(midpoint_product[7]), .B(x_product[18]), .CI(
        add_2_root_add_56_3_carry[22]), .CO(add_2_root_add_56_3_carry[23]), 
        .S(N22) );
  FA1D0 U17 ( .A(midpoint_product[6]), .B(x_product[17]), .CI(
        add_2_root_add_56_3_carry[21]), .CO(add_2_root_add_56_3_carry[22]), 
        .S(N21) );
  FA1D0 U18 ( .A(midpoint_product[5]), .B(x_product[16]), .CI(
        add_2_root_add_56_3_carry[20]), .CO(add_2_root_add_56_3_carry[21]), 
        .S(N20) );
  AN2XD1 U19 ( .A1(n110), .A2(y_product[17]), .Z(n100) );
  AN2XD1 U20 ( .A1(n120), .A2(y_product[16]), .Z(n110) );
  INVD1 U21 ( .I(x_product[13]), .ZN(N17) );
  AN2XD1 U22 ( .A1(n130), .A2(y_product[15]), .Z(n120) );
  AN2XD1 U23 ( .A1(n140), .A2(y_product[14]), .Z(n130) );
  AN2XD1 U24 ( .A1(n150), .A2(y_product[13]), .Z(n140) );
  AN2XD1 U25 ( .A1(n160), .A2(y_product[12]), .Z(n150) );
  AN2XD1 U26 ( .A1(n170), .A2(y_product[11]), .Z(n160) );
  AN2XD1 U27 ( .A1(n180), .A2(y_product[10]), .Z(n170) );
  AN2XD1 U28 ( .A1(n190), .A2(y_product[9]), .Z(n180) );
  AN2XD1 U29 ( .A1(n200), .A2(y_product[8]), .Z(n190) );
  AN2XD1 U30 ( .A1(n210), .A2(y_product[7]), .Z(n200) );
  AN2XD1 U31 ( .A1(n220), .A2(y_product[6]), .Z(n210) );
  AN2XD1 U32 ( .A1(add_1_root_add_56_3_carry[9]), .A2(y_product[5]), .Z(n220)
         );
  FA1D0 U34 ( .A(midpoint_product[4]), .B(x_product[15]), .CI(
        add_2_root_add_56_3_carry[19]), .CO(add_2_root_add_56_3_carry[20]), 
        .S(N19) );
  FA1D0 U35 ( .A(y_product[3]), .B(midpoint_sum[4]), .CI(
        add_1_root_add_56_3_carry[7]), .CO(add_1_root_add_56_3_carry[8]), .S(
        N34) );
  FA1D0 U36 ( .A(y_product[2]), .B(midpoint_sum[3]), .CI(n80), .CO(
        add_1_root_add_56_3_carry[7]), .S(N33) );
  FA1D0 U37 ( .A(midpoint_product[3]), .B(x_product[14]), .CI(x_product[13]), 
        .CO(add_2_root_add_56_3_carry[19]), .S(N18) );
  FA1D0 U38 ( .A(x_mantissa[22]), .B(y_mantissa[22]), .CI(add_52_carry_3_), 
        .CO(midpoint_sum[4]), .S(midpoint_sum[3]) );
  INVD1 U43 ( .I(x_mantissa[20]), .ZN(x_residual_20_) );
  INVD1 U44 ( .I(y_mantissa[20]), .ZN(y_residual_20_) );
  XNR2D1 U45 ( .A1(y_mantissa[21]), .A2(x_mantissa[21]), .ZN(midpoint_sum[2])
         );
  XNR2D1 U46 ( .A1(add_1_root_add_56_3_carry[8]), .A2(y_product[4]), .ZN(N35)
         );
  CKXOR2D1 U47 ( .A1(midpoint_sum[2]), .A2(y_product[1]), .Z(N32) );
  CKXOR2D1 U48 ( .A1(add_1_root_add_56_3_carry[9]), .A2(y_product[5]), .Z(N36)
         );
  CKXOR2D1 U49 ( .A1(n220), .A2(y_product[6]), .Z(N37) );
  CKXOR2D1 U50 ( .A1(n210), .A2(y_product[7]), .Z(N38) );
  CKXOR2D1 U51 ( .A1(n200), .A2(y_product[8]), .Z(N39) );
  CKXOR2D1 U52 ( .A1(n190), .A2(y_product[9]), .Z(N40) );
  CKXOR2D1 U53 ( .A1(n180), .A2(y_product[10]), .Z(N41) );
  CKXOR2D1 U54 ( .A1(n170), .A2(y_product[11]), .Z(N42) );
  CKXOR2D1 U55 ( .A1(n160), .A2(y_product[12]), .Z(N43) );
  CKXOR2D1 U56 ( .A1(n150), .A2(y_product[13]), .Z(N44) );
  CKXOR2D1 U57 ( .A1(n140), .A2(y_product[14]), .Z(N45) );
  CKXOR2D1 U58 ( .A1(n130), .A2(y_product[15]), .Z(N46) );
  CKXOR2D1 U59 ( .A1(n120), .A2(y_product[16]), .Z(N47) );
  CKXOR2D1 U60 ( .A1(n110), .A2(y_product[17]), .Z(N48) );
  CKXOR2D1 U61 ( .A1(n100), .A2(y_product[18]), .Z(N49) );
  CKXOR2D1 U62 ( .A1(n90), .A2(y_product[18]), .Z(N50) );
  INR2D0 U5 ( .A1(y_product[18]), .B1(n90), .ZN(N51) );
  OR2D0 U6 ( .A1(y_product[4]), .A2(add_1_root_add_56_3_carry[8]), .Z(
        add_1_root_add_56_3_carry[9]) );
  OR2D0 U7 ( .A1(x_mantissa[21]), .A2(y_mantissa[21]), .Z(add_52_carry_3_) );
endmodule


module fp32_normal_finite_wrapper_DW01_add_3_DW01_add_9 ( A, B, CI, SUM, CO );
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
  AN2D1 U1 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
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
  wire   N42, N41, N40, N39, N38, N37, N36, N35, N34, N33, N32, N31, N30, N29,
         N28, N27, n1, n4, n5, n6, n7, n8, n79, n80;
  wire   [7:2] add_0_root_add_0_root_add_25_2_carry;

  CKXOR2D1 U2 ( .A1(y[31]), .A2(x[31]), .Z(result[31]) );
  fp32_normal_finite_wrapper_DW01_add_3_DW01_add_9 add_1_root_add_0_root_add_25_2 ( 
        .A(x[30:23]), .B({N42, N41, N40, N39, N38, N37, N36, N35}), .CI(n79), 
        .SUM({N34, N33, N32, N31, N30, N29, N28, N27}) );
  AN2XD1 U3 ( .A1(exponent_adjust[0]), .A2(N27), .Z(n1) );
  CKBD1 U22 ( .I(result_fraction[4]), .Z(result[4]) );
  CKBD1 U23 ( .I(result_fraction[22]), .Z(result[22]) );
  CKBD1 U24 ( .I(result_fraction[10]), .Z(result[10]) );
  CKBD1 U25 ( .I(result_fraction[11]), .Z(result[11]) );
  CKBD1 U26 ( .I(result_fraction[12]), .Z(result[12]) );
  CKBD1 U27 ( .I(result_fraction[13]), .Z(result[13]) );
  CKBD1 U28 ( .I(result_fraction[14]), .Z(result[14]) );
  CKBD1 U29 ( .I(result_fraction[15]), .Z(result[15]) );
  CKBD1 U30 ( .I(result_fraction[16]), .Z(result[16]) );
  CKBD1 U31 ( .I(result_fraction[17]), .Z(result[17]) );
  CKBD1 U32 ( .I(result_fraction[18]), .Z(result[18]) );
  CKBD1 U33 ( .I(result_fraction[21]), .Z(result[21]) );
  CKBD1 U34 ( .I(result_fraction[6]), .Z(result[6]) );
  CKBD1 U35 ( .I(result_fraction[5]), .Z(result[5]) );
  CKBD1 U36 ( .I(result_fraction[7]), .Z(result[7]) );
  CKBD1 U37 ( .I(result_fraction[19]), .Z(result[19]) );
  CKBD1 U38 ( .I(result_fraction[20]), .Z(result[20]) );
  CKBD1 U39 ( .I(result_fraction[9]), .Z(result[9]) );
  CKBD1 U40 ( .I(result_fraction[8]), .Z(result[8]) );
  FA1D0 U41 ( .A(N28), .B(exponent_adjust[1]), .CI(n1), .CO(
        add_0_root_add_0_root_add_25_2_carry[2]), .S(result[24]) );
  FA1D0 U42 ( .A(N29), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[2]), .CO(
        add_0_root_add_0_root_add_25_2_carry[3]), .S(result[25]) );
  FA1D0 U43 ( .A(N30), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[3]), .CO(
        add_0_root_add_0_root_add_25_2_carry[4]), .S(result[26]) );
  FA1D0 U44 ( .A(N31), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[4]), .CO(
        add_0_root_add_0_root_add_25_2_carry[5]), .S(result[27]) );
  FA1D0 U45 ( .A(N32), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[5]), .CO(
        add_0_root_add_0_root_add_25_2_carry[6]), .S(result[28]) );
  FA1D0 U46 ( .A(N33), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[6]), .CO(
        add_0_root_add_0_root_add_25_2_carry[7]), .S(result[29]) );
  XOR3D1 U55 ( .A1(N34), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_25_2_carry[7]), .Z(result[30]) );
  CKBD1 U56 ( .I(y[22]), .Z(fraction_y[22]) );
  CKBD1 U57 ( .I(x[22]), .Z(fraction_x[22]) );
  CKBD1 U58 ( .I(y[21]), .Z(fraction_y[21]) );
  CKBD1 U60 ( .I(x[21]), .Z(fraction_x[21]) );
  CKBD1 U64 ( .I(y[9]), .Z(fraction_y[9]) );
  CKBD1 U65 ( .I(y[8]), .Z(fraction_y[8]) );
  CKBD1 U67 ( .I(y[10]), .Z(fraction_y[10]) );
  AN2XD1 U70 ( .A1(y[23]), .A2(y[24]), .Z(n4) );
  AN2XD1 U71 ( .A1(n4), .A2(y[25]), .Z(n5) );
  AN2XD1 U72 ( .A1(n5), .A2(y[26]), .Z(n6) );
  AN2XD1 U73 ( .A1(n6), .A2(y[27]), .Z(n7) );
  AN2XD1 U74 ( .A1(n7), .A2(y[28]), .Z(n8) );
  CKBD1 U86 ( .I(x[20]), .Z(fraction_x[20]) );
  CKBD1 U87 ( .I(x[19]), .Z(fraction_x[19]) );
  CKBD1 U88 ( .I(x[18]), .Z(fraction_x[18]) );
  CKBD1 U89 ( .I(x[17]), .Z(fraction_x[17]) );
  CKBD1 U90 ( .I(x[16]), .Z(fraction_x[16]) );
  CKBD1 U91 ( .I(x[15]), .Z(fraction_x[15]) );
  CKBD1 U92 ( .I(x[14]), .Z(fraction_x[14]) );
  CKBD1 U93 ( .I(x[13]), .Z(fraction_x[13]) );
  CKBD1 U94 ( .I(x[12]), .Z(fraction_x[12]) );
  CKBD1 U95 ( .I(x[11]), .Z(fraction_x[11]) );
  CKBD1 U96 ( .I(x[10]), .Z(fraction_x[10]) );
  CKBD1 U97 ( .I(x[9]), .Z(fraction_x[9]) );
  CKBD1 U98 ( .I(x[8]), .Z(fraction_x[8]) );
  CKBD1 U99 ( .I(y[20]), .Z(fraction_y[20]) );
  CKBD1 U100 ( .I(y[19]), .Z(fraction_y[19]) );
  CKBD1 U101 ( .I(y[18]), .Z(fraction_y[18]) );
  CKBD1 U102 ( .I(y[17]), .Z(fraction_y[17]) );
  CKBD1 U103 ( .I(y[16]), .Z(fraction_y[16]) );
  CKBD1 U104 ( .I(y[15]), .Z(fraction_y[15]) );
  CKBD1 U105 ( .I(y[14]), .Z(fraction_y[14]) );
  CKBD1 U106 ( .I(y[13]), .Z(fraction_y[13]) );
  CKBD1 U107 ( .I(y[12]), .Z(fraction_y[12]) );
  CKBD1 U108 ( .I(y[11]), .Z(fraction_y[11]) );
  TIEL U109 ( .ZN(n79) );
  CKXOR2D1 U112 ( .A1(exponent_adjust[0]), .A2(N27), .Z(result[23]) );
  CKXOR2D1 U113 ( .A1(y[23]), .A2(y[24]), .Z(N36) );
  CKXOR2D1 U114 ( .A1(n4), .A2(y[25]), .Z(N37) );
  CKXOR2D1 U115 ( .A1(n5), .A2(y[26]), .Z(N38) );
  CKXOR2D1 U116 ( .A1(n6), .A2(y[27]), .Z(N39) );
  CKXOR2D1 U117 ( .A1(n7), .A2(y[28]), .Z(N40) );
  CKXOR2D1 U118 ( .A1(n8), .A2(y[29]), .Z(N41) );
  CKND0 U119 ( .I(y[23]), .ZN(N35) );
  CKXOR2D0 U4 ( .A1(y[30]), .A2(n80), .Z(N42) );
  CKND2D0 U5 ( .A1(y[29]), .A2(n8), .ZN(n80) );
endmodule


module oadm_fixed_mul_root_opt_LEVEL2_RESIDUAL_DROP8 ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   n27, n28, n31, n32, n33, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23;
  wire   [22:8] x_mantissa;
  wire   [22:8] y_mantissa;
  wire   [24:5] core_value;
  wire   [22:4] normalized_fraction;
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
        SYNOPSYS_UNCONNECTED__28;

  oadm_fixed_mul_plane_root_opt_LEVEL2_RESIDUAL_DROP8 plane ( .x_mantissa({
        1'b0, x_mantissa, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .y_mantissa({1'b0, y_mantissa, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .plane_value({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, core_value, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8}) );
  fp32_normal_finite_wrapper fp_wrapper ( .x({x[31:8], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .y({y[31:8], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0}), .divide_mode(1'b0), .fraction_x({x_mantissa, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15, SYNOPSYS_UNCONNECTED__16}), .fraction_y({
        y_mantissa, SYNOPSYS_UNCONNECTED__17, SYNOPSYS_UNCONNECTED__18, 
        SYNOPSYS_UNCONNECTED__19, SYNOPSYS_UNCONNECTED__20, 
        SYNOPSYS_UNCONNECTED__21, SYNOPSYS_UNCONNECTED__22, 
        SYNOPSYS_UNCONNECTED__23, SYNOPSYS_UNCONNECTED__24}), 
        .result_fraction({normalized_fraction, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .exponent_adjust({exponent_adjust[2], exponent_adjust[2], 
        exponent_adjust[0]}), .result({result[31:4], SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28}) );
  IND2D1 U3 ( .A1(n2), .B1(n4), .ZN(exponent_adjust[2]) );
  INVD1 U4 ( .I(n1), .ZN(n4) );
  ND2D1 U5 ( .A1(n3), .A2(n4), .ZN(exponent_adjust[0]) );
  INVD1 U10 ( .I(core_value[22]), .ZN(n6) );
  INVD1 U11 ( .I(core_value[24]), .ZN(n3) );
  ND2D1 U12 ( .A1(core_value[23]), .A2(n3), .ZN(n27) );
  NR2D1 U13 ( .A1(n3), .A2(n23), .ZN(normalized_fraction[4]) );
  OAI221D0 U14 ( .A1(n6), .A2(n27), .B1(n5), .B2(n3), .C(n38), .ZN(
        normalized_fraction[22]) );
  INVD1 U15 ( .I(core_value[23]), .ZN(n5) );
  AOI22D1 U16 ( .A1(core_value[20]), .A2(n2), .B1(core_value[21]), .B2(n1), 
        .ZN(n38) );
  OAI221D0 U17 ( .A1(n27), .A2(n18), .B1(n3), .B2(n17), .C(n50), .ZN(
        normalized_fraction[10]) );
  AOI22D1 U18 ( .A1(core_value[8]), .A2(n2), .B1(core_value[9]), .B2(n1), .ZN(
        n50) );
  OAI221D0 U19 ( .A1(n27), .A2(n17), .B1(n3), .B2(n16), .C(n49), .ZN(
        normalized_fraction[11]) );
  AOI22D1 U20 ( .A1(core_value[9]), .A2(n2), .B1(core_value[10]), .B2(n1), 
        .ZN(n49) );
  OAI221D0 U21 ( .A1(n27), .A2(n16), .B1(n3), .B2(n15), .C(n48), .ZN(
        normalized_fraction[12]) );
  AOI22D1 U22 ( .A1(core_value[10]), .A2(n2), .B1(core_value[11]), .B2(n1), 
        .ZN(n48) );
  OAI221D0 U23 ( .A1(n27), .A2(n15), .B1(n3), .B2(n14), .C(n47), .ZN(
        normalized_fraction[13]) );
  AOI22D1 U24 ( .A1(core_value[11]), .A2(n2), .B1(core_value[12]), .B2(n1), 
        .ZN(n47) );
  OAI221D0 U25 ( .A1(n27), .A2(n14), .B1(n3), .B2(n13), .C(n46), .ZN(
        normalized_fraction[14]) );
  AOI22D1 U26 ( .A1(core_value[12]), .A2(n2), .B1(core_value[13]), .B2(n1), 
        .ZN(n46) );
  OAI221D0 U27 ( .A1(n27), .A2(n13), .B1(n3), .B2(n12), .C(n45), .ZN(
        normalized_fraction[15]) );
  AOI22D1 U28 ( .A1(core_value[13]), .A2(n2), .B1(core_value[14]), .B2(n1), 
        .ZN(n45) );
  OAI221D0 U29 ( .A1(n27), .A2(n12), .B1(n3), .B2(n11), .C(n44), .ZN(
        normalized_fraction[16]) );
  AOI22D1 U30 ( .A1(core_value[14]), .A2(n2), .B1(core_value[15]), .B2(n1), 
        .ZN(n44) );
  OAI221D0 U31 ( .A1(n27), .A2(n11), .B1(n3), .B2(n10), .C(n43), .ZN(
        normalized_fraction[17]) );
  AOI22D1 U32 ( .A1(core_value[15]), .A2(n2), .B1(core_value[16]), .B2(n1), 
        .ZN(n43) );
  OAI221D0 U33 ( .A1(n27), .A2(n10), .B1(n3), .B2(n9), .C(n42), .ZN(
        normalized_fraction[18]) );
  AOI22D1 U34 ( .A1(core_value[16]), .A2(n2), .B1(core_value[17]), .B2(n1), 
        .ZN(n42) );
  OAI221D0 U35 ( .A1(n27), .A2(n7), .B1(n6), .B2(n3), .C(n39), .ZN(
        normalized_fraction[21]) );
  AOI22D1 U36 ( .A1(core_value[19]), .A2(n2), .B1(core_value[20]), .B2(n1), 
        .ZN(n39) );
  OAI221D0 U37 ( .A1(n27), .A2(n22), .B1(n21), .B2(n3), .C(n33), .ZN(
        normalized_fraction[6]) );
  ND2D1 U38 ( .A1(core_value[5]), .A2(n1), .ZN(n33) );
  OAI22D1 U39 ( .A1(n27), .A2(n23), .B1(n3), .B2(n22), .ZN(
        normalized_fraction[5]) );
  INVD1 U40 ( .I(core_value[21]), .ZN(n7) );
  INVD1 U41 ( .I(core_value[20]), .ZN(n8) );
  INVD1 U42 ( .I(core_value[19]), .ZN(n9) );
  INVD1 U43 ( .I(core_value[17]), .ZN(n11) );
  INVD1 U44 ( .I(core_value[16]), .ZN(n12) );
  INVD1 U45 ( .I(core_value[15]), .ZN(n13) );
  INVD1 U46 ( .I(core_value[14]), .ZN(n14) );
  INVD1 U47 ( .I(core_value[13]), .ZN(n15) );
  INVD1 U48 ( .I(core_value[12]), .ZN(n16) );
  INVD1 U49 ( .I(core_value[11]), .ZN(n17) );
  INVD1 U50 ( .I(core_value[10]), .ZN(n18) );
  INVD1 U51 ( .I(core_value[9]), .ZN(n19) );
  INVD1 U52 ( .I(core_value[8]), .ZN(n20) );
  INVD1 U53 ( .I(core_value[5]), .ZN(n23) );
  OAI221D0 U54 ( .A1(n21), .A2(n27), .B1(n20), .B2(n3), .C(n32), .ZN(
        normalized_fraction[7]) );
  AOI22D1 U55 ( .A1(core_value[5]), .A2(n2), .B1(core_value[6]), .B2(n1), .ZN(
        n32) );
  OAI221D0 U56 ( .A1(n27), .A2(n9), .B1(n3), .B2(n8), .C(n41), .ZN(
        normalized_fraction[19]) );
  AOI22D1 U57 ( .A1(core_value[17]), .A2(n2), .B1(core_value[18]), .B2(n1), 
        .ZN(n41) );
  OAI221D0 U58 ( .A1(n27), .A2(n8), .B1(n3), .B2(n7), .C(n40), .ZN(
        normalized_fraction[20]) );
  AOI22D1 U59 ( .A1(core_value[18]), .A2(n2), .B1(core_value[19]), .B2(n1), 
        .ZN(n40) );
  OAI221D0 U60 ( .A1(n27), .A2(n19), .B1(n18), .B2(n3), .C(n28), .ZN(
        normalized_fraction[9]) );
  AOI22D1 U61 ( .A1(core_value[7]), .A2(n2), .B1(core_value[8]), .B2(n1), .ZN(
        n28) );
  OAI221D0 U62 ( .A1(n20), .A2(n27), .B1(n19), .B2(n3), .C(n31), .ZN(
        normalized_fraction[8]) );
  AOI22D1 U63 ( .A1(core_value[6]), .A2(n2), .B1(n1), .B2(core_value[7]), .ZN(
        n31) );
  INVD1 U64 ( .I(core_value[18]), .ZN(n10) );
  INVD1 U65 ( .I(core_value[7]), .ZN(n21) );
  INVD1 U66 ( .I(core_value[6]), .ZN(n22) );
  NR3D1 U6 ( .A1(core_value[24]), .A2(core_value[23]), .A3(core_value[22]), 
        .ZN(n2) );
  NR3D1 U7 ( .A1(core_value[24]), .A2(core_value[23]), .A3(n6), .ZN(n1) );
endmodule


module oadm_fixed_l2_mul_root_opt_accuracy ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;

  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3;
  assign result[3] = 1'b0;
  assign result[2] = 1'b0;
  assign result[1] = 1'b0;
  assign result[0] = 1'b0;

  oadm_fixed_mul_root_opt_LEVEL2_RESIDUAL_DROP8 impl ( .x({x[31:8], 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y({y[31:8], 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .result({result[31:4], 
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3}) );
endmodule

