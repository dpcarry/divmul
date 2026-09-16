/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Tue Sep 15 21:53:13 2026
/////////////////////////////////////////////////////////////


module fp32_normal_finite_wrapper_DW01_add_1_DW01_add_2 ( A, B, CI, SUM, CO );
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
  wire   N9, N8, N7, N6, N5, N4, N3, N17, N16, N15, N14, N13, N12, N11, N10,
         n1, n79;
  wire   [7:2] add_0_root_add_0_root_add_22_2_carry;

  CKXOR2D1 U2 ( .A1(y[31]), .A2(x[31]), .Z(result[31]) );
  fp32_normal_finite_wrapper_DW01_add_1_DW01_add_2 add_1_root_add_0_root_add_22_2 ( 
        .A(x[30:23]), .B({y[30], N17, N16, N15, N14, N13, N12, N11}), .CI(n79), 
        .SUM({N10, N9, N8, N7, N6, N5, N4, N3}) );
  AN2XD1 U3 ( .A1(exponent_adjust[0]), .A2(N3), .Z(n1) );
  CKBD1 U37 ( .I(result_fraction[10]), .Z(result[10]) );
  CKBD1 U38 ( .I(result_fraction[11]), .Z(result[11]) );
  CKBD1 U39 ( .I(result_fraction[12]), .Z(result[12]) );
  CKBD1 U40 ( .I(result_fraction[13]), .Z(result[13]) );
  CKBD1 U41 ( .I(result_fraction[14]), .Z(result[14]) );
  CKBD1 U42 ( .I(result_fraction[15]), .Z(result[15]) );
  CKBD1 U43 ( .I(result_fraction[16]), .Z(result[16]) );
  CKBD1 U44 ( .I(result_fraction[17]), .Z(result[17]) );
  CKBD1 U45 ( .I(result_fraction[9]), .Z(result[9]) );
  CKBD1 U46 ( .I(result_fraction[8]), .Z(result[8]) );
  CKBD1 U47 ( .I(result_fraction[7]), .Z(result[7]) );
  FA1D0 U48 ( .A(N4), .B(exponent_adjust[1]), .CI(n1), .CO(
        add_0_root_add_0_root_add_22_2_carry[2]), .S(result[24]) );
  FA1D0 U49 ( .A(N5), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[2]), .CO(
        add_0_root_add_0_root_add_22_2_carry[3]), .S(result[25]) );
  FA1D0 U50 ( .A(N6), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[3]), .CO(
        add_0_root_add_0_root_add_22_2_carry[4]), .S(result[26]) );
  FA1D0 U51 ( .A(N7), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[4]), .CO(
        add_0_root_add_0_root_add_22_2_carry[5]), .S(result[27]) );
  FA1D0 U52 ( .A(N8), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[5]), .CO(
        add_0_root_add_0_root_add_22_2_carry[6]), .S(result[28]) );
  FA1D0 U53 ( .A(N9), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[6]), .CO(
        add_0_root_add_0_root_add_22_2_carry[7]), .S(result[29]) );
  XOR3D1 U62 ( .A1(N10), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_22_2_carry[7]), .Z(result[30]) );
  CKBD1 U65 ( .I(x[16]), .Z(fraction_x[16]) );
  INVD1 U71 ( .I(y[29]), .ZN(N17) );
  INVD1 U72 ( .I(y[24]), .ZN(N12) );
  INVD1 U73 ( .I(y[25]), .ZN(N13) );
  INVD1 U74 ( .I(y[26]), .ZN(N14) );
  INVD1 U75 ( .I(y[27]), .ZN(N15) );
  INVD1 U76 ( .I(y[28]), .ZN(N16) );
  CKBD1 U92 ( .I(x[22]), .Z(fraction_x[22]) );
  CKBD1 U93 ( .I(x[21]), .Z(fraction_x[21]) );
  CKBD1 U94 ( .I(x[20]), .Z(fraction_x[20]) );
  CKBD1 U95 ( .I(x[19]), .Z(fraction_x[19]) );
  CKBD1 U96 ( .I(x[18]), .Z(fraction_x[18]) );
  CKBD1 U97 ( .I(x[17]), .Z(fraction_x[17]) );
  CKBD1 U98 ( .I(y[22]), .Z(fraction_y[22]) );
  CKBD1 U99 ( .I(y[21]), .Z(fraction_y[21]) );
  CKBD1 U100 ( .I(y[20]), .Z(fraction_y[20]) );
  CKBD1 U101 ( .I(y[19]), .Z(fraction_y[19]) );
  CKBD1 U102 ( .I(y[18]), .Z(fraction_y[18]) );
  CKBD1 U103 ( .I(y[17]), .Z(fraction_y[17]) );
  CKBD1 U104 ( .I(y[16]), .Z(fraction_y[16]) );
  CKBD1 U105 ( .I(result_fraction[22]), .Z(result[22]) );
  CKBD1 U106 ( .I(result_fraction[21]), .Z(result[21]) );
  CKBD1 U107 ( .I(result_fraction[20]), .Z(result[20]) );
  CKBD1 U108 ( .I(result_fraction[19]), .Z(result[19]) );
  CKBD1 U109 ( .I(result_fraction[18]), .Z(result[18]) );
  TIEL U110 ( .ZN(n79) );
  CKXOR2D1 U111 ( .A1(exponent_adjust[0]), .A2(N3), .Z(result[23]) );
  CKND0 U119 ( .I(y[23]), .ZN(N11) );
endmodule


module abs_l1_exact_DW_mult_tc_1 ( a, b, product );
  input [5:0] a;
  input [12:0] b;
  output [18:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n18, n19, n20, n21, n22, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n63, n64, n65, n66, n67, n68, n69, n70, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201,
         n202, n203, n204, n205, n206, n207, n208, n209, n210, n211, n212,
         n213, n214, n215, n216, n217, n218, n219, n220, n221, n222, n223,
         n224, n225, n226, n227, n228, n229, n230, n231, n232, n233, n234,
         n235, n236, n237, n238, n239, n240, n241, n244, n245;

  FA1D0 U2 ( .A(n59), .B(n16), .CI(n2), .CO(n1), .S(product[17]) );
  FA1D0 U3 ( .A(n18), .B(n194), .CI(n3), .CO(n2), .S(product[16]) );
  FA1D0 U4 ( .A(n20), .B(n19), .CI(n4), .CO(n3), .S(product[15]) );
  FA1D0 U5 ( .A(n24), .B(n21), .CI(n5), .CO(n4), .S(product[14]) );
  FA1D0 U6 ( .A(n28), .B(n25), .CI(n6), .CO(n5), .S(product[13]) );
  FA1D0 U7 ( .A(n32), .B(n29), .CI(n7), .CO(n6), .S(product[12]) );
  FA1D0 U8 ( .A(n36), .B(n33), .CI(n8), .CO(n7), .S(product[11]) );
  FA1D0 U9 ( .A(n40), .B(n37), .CI(n9), .CO(n8), .S(product[10]) );
  FA1D0 U10 ( .A(n44), .B(n41), .CI(n10), .CO(n9), .S(product[9]) );
  FA1D0 U11 ( .A(n45), .B(n48), .CI(n11), .CO(n10), .S(product[8]) );
  FA1D0 U12 ( .A(n49), .B(n52), .CI(n12), .CO(n11), .S(product[7]) );
  FA1D0 U13 ( .A(n53), .B(n54), .CI(n13), .CO(n12), .S(product[6]) );
  FA1D0 U14 ( .A(n55), .B(n57), .CI(n14), .CO(n13), .S(product[5]) );
  FA1D0 U15 ( .A(n90), .B(n80), .CI(n15), .CO(n14), .S(product[4]) );
  HA1D0 U16 ( .A(n91), .B(n58), .CO(n15), .S(product[3]) );
  FA1D0 U18 ( .A(n60), .B(n22), .CI(n70), .CO(n18), .S(n19) );
  FA1D0 U19 ( .A(n195), .B(n61), .CI(n26), .CO(n20), .S(n21) );
  FA1D0 U21 ( .A(n30), .B(n204), .CI(n27), .CO(n24), .S(n25) );
  FA1D0 U24 ( .A(n34), .B(n72), .CI(n31), .CO(n28), .S(n29) );
  HA1D0 U25 ( .A(n63), .B(n82), .CO(n30), .S(n31) );
  FA1D0 U26 ( .A(n38), .B(n73), .CI(n35), .CO(n32), .S(n33) );
  HA1D0 U27 ( .A(n64), .B(n83), .CO(n34), .S(n35) );
  FA1D0 U28 ( .A(n42), .B(n74), .CI(n39), .CO(n36), .S(n37) );
  HA1D0 U29 ( .A(n65), .B(n84), .CO(n38), .S(n39) );
  FA1D0 U30 ( .A(n46), .B(n75), .CI(n43), .CO(n40), .S(n41) );
  HA1D0 U31 ( .A(n66), .B(n85), .CO(n42), .S(n43) );
  FA1D0 U32 ( .A(n50), .B(n76), .CI(n47), .CO(n44), .S(n45) );
  HA1D0 U33 ( .A(n67), .B(n86), .CO(n46), .S(n47) );
  FA1D0 U34 ( .A(n77), .B(n87), .CI(n51), .CO(n48), .S(n49) );
  HA1D0 U35 ( .A(n56), .B(n68), .CO(n50), .S(n51) );
  FA1D0 U36 ( .A(n88), .B(n69), .CI(n78), .CO(n52), .S(n53) );
  HA1D0 U37 ( .A(n79), .B(n89), .CO(n54), .S(n55) );
  INVD1 U138 ( .I(b[10]), .ZN(n200) );
  INVD1 U139 ( .I(b[2]), .ZN(n197) );
  INVD1 U140 ( .I(n16), .ZN(n194) );
  INVD1 U141 ( .I(b[3]), .ZN(n192) );
  INVD1 U142 ( .I(b[4]), .ZN(n198) );
  INVD1 U143 ( .I(b[6]), .ZN(n193) );
  INVD1 U144 ( .I(b[8]), .ZN(n191) );
  INVD1 U145 ( .I(b[5]), .ZN(n199) );
  INVD1 U146 ( .I(b[7]), .ZN(n201) );
  INVD1 U147 ( .I(b[11]), .ZN(n196) );
  INVD1 U148 ( .I(n22), .ZN(n195) );
  INVD1 U151 ( .I(a[1]), .ZN(n204) );
  INVD1 U154 ( .I(a[3]), .ZN(n203) );
  ND2D1 U155 ( .A1(a[1]), .A2(n205), .ZN(n206) );
  INVD1 U156 ( .I(a[5]), .ZN(n202) );
  INVD1 U157 ( .I(a[0]), .ZN(n205) );
  NR2D0 U158 ( .A1(n205), .A2(n197), .ZN(product[2]) );
  CKND0 U159 ( .I(n1), .ZN(product[18]) );
  OAI22D0 U160 ( .A1(b[2]), .A2(n206), .B1(n207), .B2(n205), .ZN(n91) );
  OAI22D0 U161 ( .A1(n207), .A2(n206), .B1(n208), .B2(n205), .ZN(n90) );
  CKXOR2D0 U162 ( .A1(a[1]), .A2(n192), .Z(n207) );
  OAI22D0 U163 ( .A1(n208), .A2(n206), .B1(n209), .B2(n205), .ZN(n89) );
  CKXOR2D0 U164 ( .A1(a[1]), .A2(n198), .Z(n208) );
  OAI22D0 U165 ( .A1(n209), .A2(n206), .B1(n210), .B2(n205), .ZN(n88) );
  CKXOR2D0 U166 ( .A1(a[1]), .A2(n199), .Z(n209) );
  OAI22D0 U167 ( .A1(n210), .A2(n206), .B1(n211), .B2(n205), .ZN(n87) );
  CKXOR2D0 U168 ( .A1(a[1]), .A2(n193), .Z(n210) );
  OAI22D0 U169 ( .A1(n211), .A2(n206), .B1(n212), .B2(n205), .ZN(n86) );
  CKXOR2D0 U170 ( .A1(a[1]), .A2(n201), .Z(n211) );
  OAI22D0 U171 ( .A1(n212), .A2(n206), .B1(n213), .B2(n205), .ZN(n85) );
  CKXOR2D0 U172 ( .A1(a[1]), .A2(n191), .Z(n212) );
  OAI22D0 U173 ( .A1(n213), .A2(n206), .B1(n214), .B2(n205), .ZN(n84) );
  CKXOR2D0 U174 ( .A1(a[1]), .A2(n193), .Z(n213) );
  OAI22D0 U175 ( .A1(n214), .A2(n206), .B1(n215), .B2(n205), .ZN(n83) );
  CKXOR2D0 U176 ( .A1(a[1]), .A2(n200), .Z(n214) );
  OAI22D0 U177 ( .A1(n215), .A2(n206), .B1(n204), .B2(n205), .ZN(n82) );
  CKXOR2D0 U178 ( .A1(a[1]), .A2(n196), .Z(n215) );
  NR2D0 U179 ( .A1(n216), .A2(n197), .ZN(n80) );
  OAI22D0 U180 ( .A1(n217), .A2(n218), .B1(n216), .B2(n219), .ZN(n79) );
  CKXOR2D0 U181 ( .A1(a[3]), .A2(n197), .Z(n217) );
  OAI22D0 U182 ( .A1(n219), .A2(n218), .B1(n216), .B2(n220), .ZN(n78) );
  CKXOR2D0 U183 ( .A1(a[3]), .A2(n192), .Z(n219) );
  OAI22D0 U184 ( .A1(n220), .A2(n218), .B1(n216), .B2(n221), .ZN(n77) );
  CKXOR2D0 U185 ( .A1(a[3]), .A2(n198), .Z(n220) );
  OAI22D0 U186 ( .A1(n221), .A2(n218), .B1(n216), .B2(n222), .ZN(n76) );
  CKXOR2D0 U187 ( .A1(a[3]), .A2(n199), .Z(n221) );
  OAI22D0 U188 ( .A1(n222), .A2(n218), .B1(n216), .B2(n223), .ZN(n75) );
  CKXOR2D0 U189 ( .A1(a[3]), .A2(n193), .Z(n222) );
  OAI22D0 U190 ( .A1(n223), .A2(n218), .B1(n216), .B2(n224), .ZN(n74) );
  CKXOR2D0 U191 ( .A1(a[3]), .A2(n201), .Z(n223) );
  OAI22D0 U192 ( .A1(n224), .A2(n218), .B1(n216), .B2(n225), .ZN(n73) );
  CKXOR2D0 U193 ( .A1(a[3]), .A2(n191), .Z(n224) );
  OAI22D0 U194 ( .A1(n225), .A2(n218), .B1(n216), .B2(n226), .ZN(n72) );
  CKXOR2D0 U195 ( .A1(a[3]), .A2(n193), .Z(n225) );
  AO21D0 U196 ( .A1(n218), .A2(n216), .B(n203), .Z(n70) );
  NR2D0 U197 ( .A1(n227), .A2(n197), .ZN(n69) );
  OAI22D0 U198 ( .A1(n228), .A2(n229), .B1(n227), .B2(n230), .ZN(n68) );
  CKXOR2D0 U199 ( .A1(a[5]), .A2(n197), .Z(n228) );
  OAI22D0 U200 ( .A1(n230), .A2(n229), .B1(n227), .B2(n231), .ZN(n67) );
  CKXOR2D0 U201 ( .A1(a[5]), .A2(n192), .Z(n230) );
  OAI22D0 U202 ( .A1(n231), .A2(n229), .B1(n227), .B2(n232), .ZN(n66) );
  CKXOR2D0 U203 ( .A1(a[5]), .A2(n198), .Z(n231) );
  OAI22D0 U204 ( .A1(n232), .A2(n229), .B1(n227), .B2(n233), .ZN(n65) );
  CKXOR2D0 U205 ( .A1(a[5]), .A2(n199), .Z(n232) );
  OAI22D0 U206 ( .A1(n233), .A2(n229), .B1(n227), .B2(n234), .ZN(n64) );
  CKXOR2D0 U207 ( .A1(a[5]), .A2(n193), .Z(n233) );
  OAI22D0 U208 ( .A1(n234), .A2(n229), .B1(n227), .B2(n235), .ZN(n63) );
  CKXOR2D0 U209 ( .A1(a[5]), .A2(n201), .Z(n234) );
  OAI22D0 U210 ( .A1(n236), .A2(n229), .B1(n227), .B2(n237), .ZN(n61) );
  OAI22D0 U211 ( .A1(n237), .A2(n229), .B1(n227), .B2(n238), .ZN(n60) );
  CKXOR2D0 U212 ( .A1(a[5]), .A2(n200), .Z(n237) );
  AO21D0 U213 ( .A1(n229), .A2(n227), .B(n202), .Z(n59) );
  OAI21D0 U214 ( .A1(b[2]), .A2(n204), .B(n206), .ZN(n58) );
  OAI32D0 U215 ( .A1(n203), .A2(b[2]), .A3(n216), .B1(n203), .B2(n218), .ZN(
        n57) );
  OAI32D0 U216 ( .A1(n202), .A2(b[2]), .A3(n227), .B1(n202), .B2(n229), .ZN(
        n56) );
  XNR2D0 U217 ( .A1(n239), .A2(n240), .ZN(n27) );
  CKND2D0 U218 ( .A1(n240), .A2(n239), .ZN(n26) );
  OA22D0 U219 ( .A1(n235), .A2(n229), .B1(n227), .B2(n236), .Z(n239) );
  CKXOR2D0 U220 ( .A1(a[5]), .A2(n193), .Z(n236) );
  CKXOR2D0 U221 ( .A1(a[5]), .A2(n191), .Z(n235) );
  OA22D0 U222 ( .A1(n226), .A2(n218), .B1(n216), .B2(n241), .Z(n240) );
  CKXOR2D0 U223 ( .A1(a[3]), .A2(n200), .Z(n226) );
  OAI22D0 U224 ( .A1(n241), .A2(n218), .B1(n216), .B2(n203), .ZN(n22) );
  CKXOR2D0 U226 ( .A1(a[3]), .A2(n196), .Z(n241) );
  OAI22D0 U227 ( .A1(n238), .A2(n229), .B1(n227), .B2(n202), .ZN(n16) );
  CKXOR2D0 U229 ( .A1(a[5]), .A2(n196), .Z(n238) );
  OAI211D0 U149 ( .A1(a[4]), .A2(a[5]), .B(n227), .C(n244), .ZN(n229) );
  CKND2D0 U150 ( .A1(a[4]), .A2(a[5]), .ZN(n244) );
  CKXOR2D0 U152 ( .A1(a[4]), .A2(n203), .Z(n227) );
  OAI211D0 U153 ( .A1(a[2]), .A2(a[3]), .B(n216), .C(n245), .ZN(n218) );
  CKND2D0 U225 ( .A1(a[2]), .A2(a[3]), .ZN(n245) );
  CKXOR2D0 U228 ( .A1(a[2]), .A2(n204), .Z(n216) );
endmodule


module abs_l1_exact_DW_mult_tc_0 ( a, b, product );
  input [5:0] a;
  input [11:0] b;
  output [17:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n69, n70, n71, n72, n75, n77, n78,
         n79, n80, n83, n84, n85, n86, n87, n90, n92, n93, n94, n95, n98, n100,
         n101, n102, n103, n106, n108, n109, n110, n111, n166, n167, n168,
         n169, n170, n171, n172, n173;

  FA1D0 U4 ( .A(n15), .B(n168), .CI(n3), .CO(n2), .S(product[15]) );
  FA1D0 U5 ( .A(n17), .B(n16), .CI(n4), .CO(n3), .S(product[14]) );
  FA1D0 U6 ( .A(n22), .B(n18), .CI(n5), .CO(n4), .S(product[13]) );
  FA1D0 U7 ( .A(n25), .B(n23), .CI(n6), .CO(n5), .S(product[12]) );
  FA1D0 U8 ( .A(n30), .B(n26), .CI(n7), .CO(n6), .S(product[11]) );
  FA1D0 U9 ( .A(n37), .B(n31), .CI(n8), .CO(n7), .S(product[10]) );
  FA1D0 U10 ( .A(n44), .B(n38), .CI(n9), .CO(n8), .S(product[9]) );
  FA1D0 U11 ( .A(n45), .B(n51), .CI(n10), .CO(n9), .S(product[8]) );
  FA1D0 U12 ( .A(n52), .B(n58), .CI(n11), .CO(n10), .S(product[7]) );
  FA1D0 U13 ( .A(n59), .B(n62), .CI(n12), .CO(n11), .S(product[6]) );
  FA1D0 U14 ( .A(n63), .B(n65), .CI(n13), .CO(n12), .S(product[5]) );
  FA1D0 U15 ( .A(n14), .B(n98), .CI(n67), .CO(n13), .S(product[4]) );
  HA1D0 U16 ( .A(n106), .B(a[0]), .CO(n14), .S(product[3]) );
  FA1D0 U17 ( .A(a[3]), .B(a[4]), .CI(n69), .CO(n15), .S(n16) );
  FA1D0 U18 ( .A(n170), .B(n77), .CI(n21), .CO(n17), .S(n18) );
  CMPE42D1 U20 ( .A(n84), .B(a[2]), .C(n70), .CIX(n24), .D(n27), .CO(n22), 
        .COX(n21), .S(n23) );
  CMPE42D1 U21 ( .A(n34), .B(n78), .C(n28), .CIX(n29), .D(n32), .CO(n25), 
        .COX(n24), .S(n26) );
  FA1D0 U22 ( .A(n92), .B(a[1]), .CI(n71), .CO(n27), .S(n28) );
  CMPE42D1 U23 ( .A(n35), .B(n41), .C(n39), .CIX(n36), .D(n33), .CO(n30), 
        .COX(n29), .S(n31) );
  FA1D0 U24 ( .A(n79), .B(n85), .CI(n72), .CO(n32), .S(n33) );
  HA1D0 U25 ( .A(n100), .B(a[0]), .CO(n34), .S(n35) );
  CMPE42D1 U26 ( .A(n42), .B(n48), .C(n46), .CIX(n43), .D(n40), .CO(n37), 
        .COX(n36), .S(n38) );
  FA1D0 U27 ( .A(n86), .B(n80), .CI(n93), .CO(n39), .S(n40) );
  HA1D0 U28 ( .A(n108), .B(n168), .CO(n41), .S(n42) );
  CMPE42D1 U29 ( .A(n49), .B(n101), .C(n53), .CIX(n50), .D(n47), .CO(n44), 
        .COX(n43), .S(n45) );
  FA1D0 U30 ( .A(n94), .B(n87), .CI(n55), .CO(n46), .S(n47) );
  HA1D0 U31 ( .A(a[4]), .B(n168), .CO(n48), .S(n49) );
  CMPE42D1 U32 ( .A(n60), .B(n102), .C(n56), .CIX(n54), .D(n57), .CO(n51), 
        .COX(n50), .S(n52) );
  FA1D0 U33 ( .A(n95), .B(n109), .CI(n75), .CO(n53), .S(n54) );
  CMPE42D1 U36 ( .A(n83), .B(n110), .C(n103), .CIX(n61), .D(n64), .CO(n58), 
        .COX(n57), .S(n59) );
  HA1D0 U37 ( .A(a[2]), .B(a[3]), .CO(n60), .S(n61) );
  FA1D0 U38 ( .A(n90), .B(n111), .CI(n66), .CO(n62), .S(n63) );
  HA1D0 U39 ( .A(a[1]), .B(a[2]), .CO(n64), .S(n65) );
  HA1D0 U40 ( .A(a[1]), .B(a[0]), .CO(n66), .S(n67) );
  INVD1 U104 ( .I(b[5]), .ZN(n167) );
  CKBD1 U105 ( .I(product[16]), .Z(product[17]) );
  INVD1 U106 ( .I(b[7]), .ZN(n166) );
  INVD1 U107 ( .I(a[0]), .ZN(n173) );
  INVD1 U108 ( .I(a[4]), .ZN(n169) );
  INVD1 U109 ( .I(a[3]), .ZN(n170) );
  INVD1 U110 ( .I(a[1]), .ZN(n172) );
  INVD1 U111 ( .I(a[2]), .ZN(n171) );
  INVD1 U112 ( .I(a[5]), .ZN(n168) );
  NR2D0 U113 ( .A1(n173), .A2(n167), .ZN(product[2]) );
  CKND0 U114 ( .I(n2), .ZN(product[16]) );
  NR2D0 U115 ( .A1(n167), .A2(n171), .ZN(n98) );
  NR2D0 U116 ( .A1(n171), .A2(n167), .ZN(n95) );
  NR2D0 U117 ( .A1(n171), .A2(n167), .ZN(n94) );
  NR2D0 U118 ( .A1(n171), .A2(n166), .ZN(n93) );
  NR2D0 U119 ( .A1(n171), .A2(n167), .ZN(n92) );
  NR2D0 U120 ( .A1(n170), .A2(n167), .ZN(n90) );
  NR2D0 U121 ( .A1(n170), .A2(n167), .ZN(n87) );
  NR2D0 U122 ( .A1(n170), .A2(n167), .ZN(n86) );
  NR2D0 U123 ( .A1(n170), .A2(n166), .ZN(n85) );
  NR2D0 U124 ( .A1(n170), .A2(n167), .ZN(n84) );
  NR2D0 U125 ( .A1(n167), .A2(n169), .ZN(n83) );
  NR2D0 U126 ( .A1(n167), .A2(n169), .ZN(n80) );
  NR2D0 U127 ( .A1(n167), .A2(n169), .ZN(n79) );
  NR2D0 U128 ( .A1(n166), .A2(n169), .ZN(n78) );
  NR2D0 U129 ( .A1(n167), .A2(n169), .ZN(n77) );
  CKND2D0 U130 ( .A1(b[2]), .A2(a[5]), .ZN(n75) );
  CKND2D0 U131 ( .A1(b[5]), .A2(a[5]), .ZN(n72) );
  CKND2D0 U132 ( .A1(b[6]), .A2(a[5]), .ZN(n71) );
  CKND2D0 U133 ( .A1(b[7]), .A2(a[5]), .ZN(n70) );
  CKND2D0 U134 ( .A1(b[9]), .A2(a[5]), .ZN(n69) );
  CKXOR2D0 U135 ( .A1(a[3]), .A2(n169), .Z(n56) );
  CKND2D0 U136 ( .A1(n170), .A2(n169), .ZN(n55) );
  NR2D0 U137 ( .A1(n173), .A2(n167), .ZN(n111) );
  NR2D0 U138 ( .A1(n173), .A2(n167), .ZN(n110) );
  NR2D0 U139 ( .A1(n173), .A2(n166), .ZN(n109) );
  NR2D0 U140 ( .A1(n173), .A2(n167), .ZN(n108) );
  NR2D0 U141 ( .A1(n167), .A2(n172), .ZN(n106) );
  NR2D0 U142 ( .A1(n167), .A2(n172), .ZN(n103) );
  NR2D0 U143 ( .A1(n167), .A2(n172), .ZN(n102) );
  NR2D0 U144 ( .A1(n166), .A2(n172), .ZN(n101) );
  NR2D0 U145 ( .A1(n167), .A2(n172), .ZN(n100) );
endmodule


module abs_l1_exact_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [18:0] A;
  input [18:0] B;
  output [18:0] DIFF;
  input CI;
  output CO;
  wire   n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17;
  wire   [18:3] carry;

  FA1D0 U2_3 ( .A(A[3]), .B(n17), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  FA1D0 U2_4 ( .A(A[4]), .B(n16), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FA1D0 U2_5 ( .A(A[5]), .B(n15), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  FA1D0 U2_6 ( .A(A[6]), .B(n14), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  FA1D0 U2_7 ( .A(A[7]), .B(n13), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  FA1D0 U2_8 ( .A(A[8]), .B(n12), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  FA1D0 U2_11 ( .A(A[11]), .B(n9), .CI(carry[11]), .CO(carry[12]), .S(DIFF[11]) );
  FA1D0 U2_13 ( .A(A[13]), .B(n7), .CI(carry[13]), .CO(carry[14]), .S(DIFF[13]) );
  FA1D0 U2_16 ( .A(A[16]), .B(n4), .CI(carry[16]), .CO(carry[17]), .S(DIFF[16]) );
  FA1D0 U2_17 ( .A(A[17]), .B(n3), .CI(carry[17]), .CO(carry[18]), .S(DIFF[17]) );
  FA1D0 U2_9 ( .A(A[9]), .B(n11), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  FA1D0 U2_10 ( .A(A[10]), .B(n10), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  FA1D0 U2_12 ( .A(A[12]), .B(n8), .CI(carry[12]), .CO(carry[13]), .S(DIFF[12]) );
  FA1D0 U2_14 ( .A(A[14]), .B(n6), .CI(carry[14]), .CO(carry[15]), .S(DIFF[14]) );
  FA1D0 U2_15 ( .A(A[15]), .B(n5), .CI(carry[15]), .CO(carry[16]), .S(DIFF[15]) );
  INVD1 U1 ( .I(B[15]), .ZN(n5) );
  INVD1 U2 ( .I(B[14]), .ZN(n6) );
  INVD1 U3 ( .I(B[12]), .ZN(n8) );
  INVD1 U4 ( .I(B[10]), .ZN(n10) );
  INVD1 U5 ( .I(B[9]), .ZN(n11) );
  INVD1 U7 ( .I(B[17]), .ZN(n3) );
  INVD1 U8 ( .I(B[16]), .ZN(n4) );
  INVD1 U9 ( .I(B[13]), .ZN(n7) );
  INVD1 U10 ( .I(B[11]), .ZN(n9) );
  INVD1 U11 ( .I(B[8]), .ZN(n12) );
  INVD1 U12 ( .I(B[7]), .ZN(n13) );
  INVD1 U13 ( .I(B[6]), .ZN(n14) );
  INVD1 U14 ( .I(B[5]), .ZN(n15) );
  INVD1 U15 ( .I(B[4]), .ZN(n16) );
  INVD1 U17 ( .I(B[3]), .ZN(n17) );
  CKXOR2D0 U6 ( .A1(A[2]), .A2(B[2]), .Z(DIFF[2]) );
  XNR3D0 U16 ( .A1(carry[18]), .A2(A[18]), .A3(B[18]), .ZN(DIFF[18]) );
  IND2D0 U18 ( .A1(A[2]), .B1(B[2]), .ZN(carry[3]) );
endmodule


module abs_l1_exact ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   fx_22, fx_21, fy_22, fy_21, a_7_, c_8, c_7, adjust_2_, n11, n34, n35,
         n36, n37, n38, n39, py_9_, py_8_, py_7_, py_6_, py_5_, py_4_, py_3_,
         py_2_, py_18_, py_17_, py_16_, py_15_, py_14_, py_13_, py_12_, py_11_,
         py_10_, px_18, px_9_, px_8_, px_7_, px_16_, px_15_, px_14_, px_13_,
         px_12_, px_11_, px_10_, N31, N30, N29, N28, N27, N26, N25, N24, N23,
         N22, N21, N20, N19, N18, N17, N16, N15, n40, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64;
  wire   [5:0] rx;
  wire   [5:0] ry;
  wire   [10:5] b;
  wire   [18:11] c;
  wire   [18:2] p;
  wire   [22:7] frac;
  wire   [18:9] add_1_root_sub_0_root_sub_18_carry;
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
        SYNOPSYS_UNCONNECTED__44;
  assign result[5] = 1'b0;
  assign result[6] = 1'b0;
  assign result[0] = 1'b0;
  assign result[1] = 1'b0;
  assign result[2] = 1'b0;
  assign result[3] = 1'b0;
  assign result[4] = 1'b0;

  OR2D1 U24 ( .A1(c[16]), .A2(n61), .Z(c[15]) );
  fp32_normal_finite_wrapper wrapper ( .x({x[31:16], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y({y[31:16], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .divide_mode(1'b0), .fraction_x(
        {fx_22, fx_21, rx[4:0], SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15}), .fraction_y({fy_22, fy_21, ry[4:0], 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31}), 
        .result_fraction({frac, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .exponent_adjust({adjust_2_, adjust_2_, n11}), .result({result[31:7], 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, 
        SYNOPSYS_UNCONNECTED__38}) );
  abs_l1_exact_DW_mult_tc_1 mult_16_S2 ( .a(ry), .b({n63, c[16], b[10:9], 
        c[15], b[7], b[9], b[5], c[18], c_8, c_7, n63, n63}), .product({py_18_, 
        py_17_, py_16_, py_15_, py_14_, py_13_, py_12_, py_11_, py_10_, py_9_, 
        py_8_, py_7_, py_6_, py_5_, py_4_, py_3_, py_2_, 
        SYNOPSYS_UNCONNECTED__39, SYNOPSYS_UNCONNECTED__40}) );
  abs_l1_exact_DW_mult_tc_0 mult_16 ( .a(rx), .b({n63, n64, c_7, n63, a_7_, 
        c_7, c_7, n64, n64, c_7, n63, n63}), .product({px_18, px_16_, px_15_, 
        px_14_, px_13_, px_12_, px_11_, px_10_, px_9_, px_8_, px_7_, N19, N18, 
        N17, N16, N15, SYNOPSYS_UNCONNECTED__41, SYNOPSYS_UNCONNECTED__42}) );
  abs_l1_exact_DW01_sub_0 sub_0_root_sub_0_root_sub_18 ( .A({N31, N30, N29, 
        N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, 
        n63, n63}), .B({py_18_, py_17_, py_16_, py_15_, py_14_, py_13_, py_12_, 
        py_11_, py_10_, py_9_, py_8_, py_7_, py_6_, py_5_, py_4_, py_3_, py_2_, 
        n63, n63}), .CI(n63), .DIFF({p, SYNOPSYS_UNCONNECTED__43, 
        SYNOPSYS_UNCONNECTED__44}) );
  AN2XD1 U65 ( .A1(px_7_), .A2(c_7), .Z(n40) );
  ND2D1 U66 ( .A1(n34), .A2(n35), .ZN(adjust_2_) );
  INVD1 U67 ( .I(n34), .ZN(n11) );
  INVD1 U68 ( .I(p[15]), .ZN(n47) );
  INVD1 U69 ( .I(p[14]), .ZN(n48) );
  INVD1 U70 ( .I(p[12]), .ZN(n50) );
  INVD1 U71 ( .I(p[10]), .ZN(n52) );
  INVD1 U72 ( .I(p[9]), .ZN(n53) );
  ND2D1 U73 ( .A1(p[17]), .A2(n44), .ZN(n34) );
  ND2D1 U74 ( .A1(n45), .A2(n44), .ZN(n35) );
  INVD1 U75 ( .I(p[17]), .ZN(n45) );
  OAI222D0 U77 ( .A1(n34), .A2(n58), .B1(n35), .B2(n59), .C1(n44), .C2(n57), 
        .ZN(frac[10]) );
  OAI222D0 U78 ( .A1(n34), .A2(n57), .B1(n35), .B2(n58), .C1(n44), .C2(n56), 
        .ZN(frac[11]) );
  OAI222D0 U79 ( .A1(n34), .A2(n56), .B1(n35), .B2(n57), .C1(n44), .C2(n55), 
        .ZN(frac[12]) );
  OAI222D0 U80 ( .A1(n34), .A2(n55), .B1(n35), .B2(n56), .C1(n44), .C2(n54), 
        .ZN(frac[13]) );
  OAI222D0 U81 ( .A1(n34), .A2(n54), .B1(n35), .B2(n55), .C1(n44), .C2(n53), 
        .ZN(frac[14]) );
  OAI222D0 U82 ( .A1(n34), .A2(n53), .B1(n35), .B2(n54), .C1(n44), .C2(n52), 
        .ZN(frac[15]) );
  OAI222D0 U83 ( .A1(n34), .A2(n52), .B1(n35), .B2(n53), .C1(n44), .C2(n51), 
        .ZN(frac[16]) );
  OAI222D0 U84 ( .A1(n34), .A2(n51), .B1(n35), .B2(n52), .C1(n44), .C2(n50), 
        .ZN(frac[17]) );
  OAI222D0 U85 ( .A1(n34), .A2(n46), .B1(n35), .B2(n47), .C1(n45), .C2(n44), 
        .ZN(frac[22]) );
  OAI222D0 U86 ( .A1(n34), .A2(n50), .B1(n35), .B2(n51), .C1(n44), .C2(n49), 
        .ZN(frac[18]) );
  OAI222D0 U87 ( .A1(n34), .A2(n49), .B1(n35), .B2(n50), .C1(n44), .C2(n48), 
        .ZN(frac[19]) );
  OAI222D0 U88 ( .A1(n34), .A2(n48), .B1(n35), .B2(n49), .C1(n44), .C2(n47), 
        .ZN(frac[20]) );
  OAI222D0 U89 ( .A1(n34), .A2(n47), .B1(n35), .B2(n48), .C1(n44), .C2(n46), 
        .ZN(frac[21]) );
  INVD1 U90 ( .I(p[16]), .ZN(n46) );
  INVD1 U91 ( .I(p[13]), .ZN(n49) );
  INVD1 U92 ( .I(p[11]), .ZN(n51) );
  INVD1 U93 ( .I(p[8]), .ZN(n54) );
  INVD1 U94 ( .I(p[7]), .ZN(n55) );
  INVD1 U95 ( .I(p[6]), .ZN(n56) );
  INVD1 U96 ( .I(p[5]), .ZN(n57) );
  INVD1 U97 ( .I(n37), .ZN(c_7) );
  INVD1 U98 ( .I(p[18]), .ZN(n44) );
  XOR3D1 U99 ( .A1(c[18]), .A2(px_18), .A3(
        add_1_root_sub_0_root_sub_18_carry[18]), .Z(N31) );
  FA1D0 U100 ( .A(n61), .B(px_18), .CI(add_1_root_sub_0_root_sub_18_carry[17]), 
        .CO(add_1_root_sub_0_root_sub_18_carry[18]), .S(N30) );
  FA1D0 U101 ( .A(c[15]), .B(px_15_), .CI(
        add_1_root_sub_0_root_sub_18_carry[15]), .CO(
        add_1_root_sub_0_root_sub_18_carry[16]), .S(N28) );
  FA1D0 U102 ( .A(n61), .B(px_14_), .CI(add_1_root_sub_0_root_sub_18_carry[14]), .CO(add_1_root_sub_0_root_sub_18_carry[15]), .S(N27) );
  FA1D0 U103 ( .A(n61), .B(px_12_), .CI(add_1_root_sub_0_root_sub_18_carry[12]), .CO(add_1_root_sub_0_root_sub_18_carry[13]), .S(N25) );
  FA1D0 U104 ( .A(n61), .B(px_9_), .CI(add_1_root_sub_0_root_sub_18_carry[9]), 
        .CO(add_1_root_sub_0_root_sub_18_carry[10]), .S(N22) );
  FA1D0 U105 ( .A(c_8), .B(px_8_), .CI(n40), .CO(
        add_1_root_sub_0_root_sub_18_carry[9]), .S(N21) );
  INVD1 U106 ( .I(n38), .ZN(b[9]) );
  OAI222D0 U107 ( .A1(n34), .A2(n59), .B1(n35), .B2(n60), .C1(n44), .C2(n58), 
        .ZN(frac[9]) );
  OAI22D1 U108 ( .A1(n60), .A2(n34), .B1(n59), .B2(n44), .ZN(frac[8]) );
  NR2D1 U109 ( .A1(n60), .A2(n44), .ZN(frac[7]) );
  INVD1 U110 ( .I(p[4]), .ZN(n58) );
  INVD1 U111 ( .I(p[3]), .ZN(n59) );
  NR2D1 U112 ( .A1(b[5]), .A2(c[16]), .ZN(n37) );
  FA1D0 U113 ( .A(c[16]), .B(px_16_), .CI(
        add_1_root_sub_0_root_sub_18_carry[16]), .CO(
        add_1_root_sub_0_root_sub_18_carry[17]), .S(N29) );
  FA1D0 U114 ( .A(c[16]), .B(px_13_), .CI(
        add_1_root_sub_0_root_sub_18_carry[13]), .CO(
        add_1_root_sub_0_root_sub_18_carry[14]), .S(N26) );
  FA1D0 U115 ( .A(c[11]), .B(px_11_), .CI(
        add_1_root_sub_0_root_sub_18_carry[11]), .CO(
        add_1_root_sub_0_root_sub_18_carry[12]), .S(N24) );
  ND2D1 U116 ( .A1(n36), .A2(n37), .ZN(c[11]) );
  NR2D1 U119 ( .A1(b[5]), .A2(n61), .ZN(n38) );
  ND2D1 U120 ( .A1(n39), .A2(n38), .ZN(c_8) );
  INVD1 U121 ( .I(n36), .ZN(n61) );
  ND2D1 U122 ( .A1(n39), .A2(n37), .ZN(c[18]) );
  ND2D1 U123 ( .A1(n36), .A2(n39), .ZN(a_7_) );
  INVD1 U124 ( .I(n39), .ZN(b[7]) );
  IND2D1 U125 ( .A1(b[5]), .B1(n39), .ZN(b[10]) );
  INVD1 U126 ( .I(p[2]), .ZN(n60) );
  NR2D1 U127 ( .A1(n62), .A2(fy_22), .ZN(c[16]) );
  INVD1 U128 ( .I(fx_22), .ZN(n62) );
  NR2D1 U129 ( .A1(fx_22), .A2(fy_22), .ZN(b[5]) );
  ND2D1 U130 ( .A1(fy_22), .A2(n62), .ZN(n36) );
  ND2D1 U131 ( .A1(fx_22), .A2(fy_22), .ZN(n39) );
  INVD1 U133 ( .I(fy_21), .ZN(ry[5]) );
  INVD1 U134 ( .I(fx_21), .ZN(rx[5]) );
  TIEH U135 ( .Z(n64) );
  TIEL U136 ( .ZN(n63) );
  XNR2D1 U137 ( .A1(add_1_root_sub_0_root_sub_18_carry[10]), .A2(px_10_), .ZN(
        N23) );
  CKXOR2D1 U138 ( .A1(px_7_), .A2(c_7), .Z(N20) );
  OR2D0 U76 ( .A1(px_10_), .A2(add_1_root_sub_0_root_sub_18_carry[10]), .Z(
        add_1_root_sub_0_root_sub_18_carry[11]) );
endmodule

