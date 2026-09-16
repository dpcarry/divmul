/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Tue Sep 15 21:57:57 2026
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
  CKBD1 U37 ( .I(result_fraction[9]), .Z(result[9]) );
  CKBD1 U38 ( .I(result_fraction[10]), .Z(result[10]) );
  CKBD1 U39 ( .I(result_fraction[11]), .Z(result[11]) );
  CKBD1 U40 ( .I(result_fraction[12]), .Z(result[12]) );
  CKBD1 U41 ( .I(result_fraction[13]), .Z(result[13]) );
  CKBD1 U42 ( .I(result_fraction[14]), .Z(result[14]) );
  CKBD1 U43 ( .I(result_fraction[15]), .Z(result[15]) );
  CKBD1 U44 ( .I(result_fraction[16]), .Z(result[16]) );
  CKBD1 U45 ( .I(result_fraction[17]), .Z(result[17]) );
  CKBD1 U46 ( .I(result_fraction[8]), .Z(result[8]) );
  CKBD1 U47 ( .I(result_fraction[7]), .Z(result[7]) );
  CKBD1 U48 ( .I(result_fraction[6]), .Z(result[6]) );
  CKBD1 U49 ( .I(result_fraction[5]), .Z(result[5]) );
  FA1D0 U50 ( .A(N4), .B(exponent_adjust[1]), .CI(n1), .CO(
        add_0_root_add_0_root_add_22_2_carry[2]), .S(result[24]) );
  FA1D0 U51 ( .A(N5), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[2]), .CO(
        add_0_root_add_0_root_add_22_2_carry[3]), .S(result[25]) );
  FA1D0 U52 ( .A(N6), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[3]), .CO(
        add_0_root_add_0_root_add_22_2_carry[4]), .S(result[26]) );
  FA1D0 U53 ( .A(N7), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[4]), .CO(
        add_0_root_add_0_root_add_22_2_carry[5]), .S(result[27]) );
  FA1D0 U54 ( .A(N8), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[5]), .CO(
        add_0_root_add_0_root_add_22_2_carry[6]), .S(result[28]) );
  FA1D0 U55 ( .A(N9), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[6]), .CO(
        add_0_root_add_0_root_add_22_2_carry[7]), .S(result[29]) );
  XOR3D1 U64 ( .A1(N10), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_22_2_carry[7]), .Z(result[30]) );
  INVD1 U72 ( .I(y[29]), .ZN(N17) );
  INVD1 U73 ( .I(y[24]), .ZN(N12) );
  INVD1 U74 ( .I(y[25]), .ZN(N13) );
  INVD1 U75 ( .I(y[26]), .ZN(N14) );
  INVD1 U76 ( .I(y[27]), .ZN(N15) );
  INVD1 U77 ( .I(y[28]), .ZN(N16) );
  CKBD1 U91 ( .I(x[22]), .Z(fraction_x[22]) );
  CKBD1 U92 ( .I(x[21]), .Z(fraction_x[21]) );
  CKBD1 U93 ( .I(x[20]), .Z(fraction_x[20]) );
  CKBD1 U94 ( .I(x[19]), .Z(fraction_x[19]) );
  CKBD1 U95 ( .I(x[18]), .Z(fraction_x[18]) );
  CKBD1 U96 ( .I(x[17]), .Z(fraction_x[17]) );
  CKBD1 U97 ( .I(x[16]), .Z(fraction_x[16]) );
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


module abs_l2_exact_DW_mult_tc_1 ( a, b, product );
  input [4:0] a;
  input [13:0] b;
  output [18:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n129, n130, n131, n192, n193, n194, n195,
         n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206,
         n207, n208, n209;

  FA1D0 U4 ( .A(n17), .B(n73), .CI(n3), .CO(n2), .S(product[16]) );
  FA1D0 U5 ( .A(n20), .B(n18), .CI(n4), .CO(n3), .S(product[15]) );
  FA1D0 U6 ( .A(n23), .B(n21), .CI(n5), .CO(n4), .S(product[14]) );
  FA1D0 U7 ( .A(n28), .B(n24), .CI(n6), .CO(n5), .S(product[13]) );
  FA1D0 U8 ( .A(n33), .B(n29), .CI(n7), .CO(n6), .S(product[12]) );
  FA1D0 U9 ( .A(n38), .B(n34), .CI(n8), .CO(n7), .S(product[11]) );
  FA1D0 U10 ( .A(n43), .B(n39), .CI(n9), .CO(n8), .S(product[10]) );
  FA1D0 U11 ( .A(n48), .B(n44), .CI(n10), .CO(n9), .S(product[9]) );
  FA1D0 U12 ( .A(n49), .B(n53), .CI(n11), .CO(n10), .S(product[8]) );
  FA1D0 U13 ( .A(n54), .B(n58), .CI(n12), .CO(n11), .S(product[7]) );
  FA1D0 U14 ( .A(n59), .B(n63), .CI(n13), .CO(n12), .S(product[6]) );
  FA1D0 U15 ( .A(n64), .B(n67), .CI(n14), .CO(n13), .S(product[5]) );
  FA1D0 U16 ( .A(n68), .B(n70), .CI(n15), .CO(n14), .S(product[4]) );
  FA1D0 U17 ( .A(n16), .B(n108), .CI(n72), .CO(n15), .S(product[3]) );
  HA1D0 U18 ( .A(n131), .B(n120), .CO(n16), .S(product[2]) );
  FA1D0 U19 ( .A(n74), .B(n85), .CI(n19), .CO(n17), .S(n18) );
  CMPE42D1 U20 ( .A(n86), .B(n97), .C(n75), .CIX(n22), .D(n25), .CO(n20), 
        .COX(n19), .S(n21) );
  CMPE42D1 U21 ( .A(n76), .B(n98), .C(n26), .CIX(n27), .D(n30), .CO(n23), 
        .COX(n22), .S(n24) );
  HA1D0 U22 ( .A(n87), .B(n109), .CO(n25), .S(n26) );
  CMPE42D1 U23 ( .A(n99), .B(n110), .C(n35), .CIX(n32), .D(n31), .CO(n28), 
        .COX(n27), .S(n29) );
  FA1D0 U24 ( .A(n88), .B(n121), .CI(n77), .CO(n30), .S(n31) );
  CMPE42D1 U25 ( .A(n100), .B(n111), .C(n40), .CIX(n37), .D(n36), .CO(n33), 
        .COX(n32), .S(n34) );
  FA1D0 U26 ( .A(n89), .B(n122), .CI(n78), .CO(n35), .S(n36) );
  CMPE42D1 U27 ( .A(n101), .B(n112), .C(n45), .CIX(n42), .D(n41), .CO(n38), 
        .COX(n37), .S(n39) );
  FA1D0 U28 ( .A(n90), .B(n123), .CI(n79), .CO(n40), .S(n41) );
  CMPE42D1 U29 ( .A(n102), .B(n113), .C(n50), .CIX(n47), .D(n46), .CO(n43), 
        .COX(n42), .S(n44) );
  FA1D0 U30 ( .A(n91), .B(n124), .CI(n80), .CO(n45), .S(n46) );
  CMPE42D1 U31 ( .A(n103), .B(n114), .C(n55), .CIX(n52), .D(n51), .CO(n48), 
        .COX(n47), .S(n49) );
  FA1D0 U32 ( .A(n92), .B(n125), .CI(n81), .CO(n50), .S(n51) );
  CMPE42D1 U33 ( .A(n104), .B(n115), .C(n57), .CIX(n56), .D(n60), .CO(n53), 
        .COX(n52), .S(n54) );
  FA1D0 U34 ( .A(n93), .B(n126), .CI(n82), .CO(n55), .S(n56) );
  CMPE42D1 U35 ( .A(n105), .B(n116), .C(n65), .CIX(n61), .D(n62), .CO(n58), 
        .COX(n57), .S(n59) );
  FA1D0 U36 ( .A(n94), .B(n127), .CI(n83), .CO(n60), .S(n61) );
  CMPE42D1 U37 ( .A(n95), .B(n117), .C(n84), .CIX(n66), .D(n69), .CO(n63), 
        .COX(n62), .S(n64) );
  FA1D0 U40 ( .A(n118), .B(n129), .CI(n71), .CO(n67), .S(n68) );
  HA1D0 U41 ( .A(n96), .B(n107), .CO(n69), .S(n70) );
  HA1D0 U42 ( .A(n119), .B(n130), .CO(n71), .S(n72) );
  INVD1 U123 ( .I(b[1]), .ZN(n192) );
  INVD1 U124 ( .I(b[4]), .ZN(n199) );
  INVD1 U125 ( .I(b[2]), .ZN(n195) );
  INVD1 U126 ( .I(b[3]), .ZN(n203) );
  INVD1 U127 ( .I(b[6]), .ZN(n196) );
  INVD1 U128 ( .I(b[5]), .ZN(n200) );
  INVD1 U129 ( .I(b[7]), .ZN(n202) );
  INVD1 U130 ( .I(b[8]), .ZN(n201) );
  INVD1 U131 ( .I(b[10]), .ZN(n193) );
  INVD1 U132 ( .I(b[9]), .ZN(n197) );
  INVD1 U133 ( .I(b[11]), .ZN(n194) );
  INVD1 U134 ( .I(b[12]), .ZN(n198) );
  CKBD1 U135 ( .I(product[18]), .Z(product[17]) );
  INVD1 U136 ( .I(a[2]), .ZN(n205) );
  INVD1 U137 ( .I(a[0]), .ZN(n207) );
  INVD1 U138 ( .I(a[1]), .ZN(n206) );
  INVD1 U139 ( .I(a[3]), .ZN(n204) );
  NR2D0 U140 ( .A1(n207), .A2(n192), .ZN(product[1]) );
  CKND0 U141 ( .I(n2), .ZN(product[18]) );
  NR2D0 U142 ( .A1(n205), .A2(n193), .ZN(n99) );
  NR2D0 U143 ( .A1(n205), .A2(n194), .ZN(n98) );
  NR2D0 U144 ( .A1(n205), .A2(n198), .ZN(n97) );
  NR2D0 U145 ( .A1(n192), .A2(n204), .ZN(n96) );
  NR2D0 U146 ( .A1(n204), .A2(n195), .ZN(n95) );
  NR2D0 U147 ( .A1(n204), .A2(n203), .ZN(n94) );
  NR2D0 U148 ( .A1(n204), .A2(n199), .ZN(n93) );
  NR2D0 U149 ( .A1(n204), .A2(n200), .ZN(n92) );
  NR2D0 U150 ( .A1(n204), .A2(n196), .ZN(n91) );
  NR2D0 U151 ( .A1(n204), .A2(n202), .ZN(n90) );
  NR2D0 U152 ( .A1(n204), .A2(n201), .ZN(n89) );
  NR2D0 U153 ( .A1(n204), .A2(n197), .ZN(n88) );
  NR2D0 U154 ( .A1(n193), .A2(n204), .ZN(n87) );
  NR2D0 U155 ( .A1(n194), .A2(n204), .ZN(n86) );
  NR2D0 U156 ( .A1(n198), .A2(n204), .ZN(n85) );
  CKND2D0 U157 ( .A1(a[4]), .A2(b[1]), .ZN(n84) );
  CKND2D0 U158 ( .A1(a[4]), .A2(b[2]), .ZN(n83) );
  CKND2D0 U159 ( .A1(a[4]), .A2(b[3]), .ZN(n82) );
  CKND2D0 U160 ( .A1(a[4]), .A2(b[4]), .ZN(n81) );
  CKND2D0 U161 ( .A1(a[4]), .A2(b[5]), .ZN(n80) );
  CKND2D0 U162 ( .A1(a[4]), .A2(b[6]), .ZN(n79) );
  CKND2D0 U163 ( .A1(a[4]), .A2(b[7]), .ZN(n78) );
  CKND2D0 U164 ( .A1(a[4]), .A2(b[8]), .ZN(n77) );
  CKND2D0 U165 ( .A1(a[4]), .A2(b[9]), .ZN(n76) );
  CKND2D0 U166 ( .A1(a[4]), .A2(b[10]), .ZN(n75) );
  CKND2D0 U167 ( .A1(a[4]), .A2(b[11]), .ZN(n74) );
  CKND2D0 U168 ( .A1(a[4]), .A2(b[12]), .ZN(n73) );
  XNR2D0 U169 ( .A1(n208), .A2(n209), .ZN(n66) );
  CKND2D0 U170 ( .A1(n208), .A2(n209), .ZN(n65) );
  CKND2D0 U171 ( .A1(b[3]), .A2(a[2]), .ZN(n209) );
  CKND2D0 U172 ( .A1(b[5]), .A2(a[0]), .ZN(n208) );
  NR2D0 U173 ( .A1(n207), .A2(n195), .ZN(n131) );
  NR2D0 U174 ( .A1(n207), .A2(n203), .ZN(n130) );
  NR2D0 U175 ( .A1(n207), .A2(n199), .ZN(n129) );
  NR2D0 U176 ( .A1(n207), .A2(n196), .ZN(n127) );
  NR2D0 U177 ( .A1(n207), .A2(n202), .ZN(n126) );
  NR2D0 U178 ( .A1(n207), .A2(n201), .ZN(n125) );
  NR2D0 U179 ( .A1(n207), .A2(n197), .ZN(n124) );
  NR2D0 U180 ( .A1(n207), .A2(n193), .ZN(n123) );
  NR2D0 U181 ( .A1(n207), .A2(n194), .ZN(n122) );
  NR2D0 U182 ( .A1(n207), .A2(n198), .ZN(n121) );
  NR2D0 U183 ( .A1(n192), .A2(n206), .ZN(n120) );
  NR2D0 U184 ( .A1(n195), .A2(n206), .ZN(n119) );
  NR2D0 U185 ( .A1(n203), .A2(n206), .ZN(n118) );
  NR2D0 U186 ( .A1(n199), .A2(n206), .ZN(n117) );
  NR2D0 U187 ( .A1(n200), .A2(n206), .ZN(n116) );
  NR2D0 U188 ( .A1(n196), .A2(n206), .ZN(n115) );
  NR2D0 U189 ( .A1(n202), .A2(n206), .ZN(n114) );
  NR2D0 U190 ( .A1(n201), .A2(n206), .ZN(n113) );
  NR2D0 U191 ( .A1(n197), .A2(n206), .ZN(n112) );
  NR2D0 U192 ( .A1(n193), .A2(n206), .ZN(n111) );
  NR2D0 U193 ( .A1(n194), .A2(n206), .ZN(n110) );
  NR2D0 U194 ( .A1(n198), .A2(n206), .ZN(n109) );
  NR2D0 U195 ( .A1(n192), .A2(n205), .ZN(n108) );
  NR2D0 U196 ( .A1(n205), .A2(n195), .ZN(n107) );
  NR2D0 U197 ( .A1(n205), .A2(n199), .ZN(n105) );
  NR2D0 U198 ( .A1(n205), .A2(n200), .ZN(n104) );
  NR2D0 U199 ( .A1(n205), .A2(n196), .ZN(n103) );
  NR2D0 U200 ( .A1(n205), .A2(n202), .ZN(n102) );
  NR2D0 U201 ( .A1(n205), .A2(n201), .ZN(n101) );
  NR2D0 U202 ( .A1(n205), .A2(n197), .ZN(n100) );
endmodule


module abs_l2_exact_DW_mult_tc_0 ( a, b, product );
  input [4:0] a;
  input [12:0] b;
  output [17:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n90, n91, n92, n93, n94, n95, n96, n98, n99, n101, n102, n103, n104,
         n105, n106, n107, n108, n109, n110, n112, n113, n114, n115, n116,
         n118, n119, n120, n177, n178, n179, n180, n181, n182, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192;

  FA1D0 U3 ( .A(n16), .B(n186), .CI(n3), .CO(n2), .S(product[15]) );
  FA1D0 U4 ( .A(n19), .B(n17), .CI(n4), .CO(n3), .S(product[14]) );
  FA1D0 U5 ( .A(n22), .B(n20), .CI(n5), .CO(n4), .S(product[13]) );
  FA1D0 U6 ( .A(n27), .B(n23), .CI(n6), .CO(n5), .S(product[12]) );
  FA1D0 U7 ( .A(n32), .B(n28), .CI(n7), .CO(n6), .S(product[11]) );
  FA1D0 U8 ( .A(n37), .B(n33), .CI(n8), .CO(n7), .S(product[10]) );
  FA1D0 U9 ( .A(n42), .B(n38), .CI(n9), .CO(n8), .S(product[9]) );
  FA1D0 U10 ( .A(n43), .B(n47), .CI(n10), .CO(n9), .S(product[8]) );
  FA1D0 U11 ( .A(n48), .B(n52), .CI(n11), .CO(n10), .S(product[7]) );
  FA1D0 U12 ( .A(n53), .B(n57), .CI(n12), .CO(n11), .S(product[6]) );
  FA1D0 U13 ( .A(n58), .B(n61), .CI(n13), .CO(n12), .S(product[5]) );
  FA1D0 U14 ( .A(n62), .B(n64), .CI(n14), .CO(n13), .S(product[4]) );
  FA1D0 U15 ( .A(n15), .B(n99), .CI(n66), .CO(n14), .S(product[3]) );
  HA1D0 U16 ( .A(n120), .B(n110), .CO(n15), .S(product[2]) );
  FA1D0 U17 ( .A(n68), .B(a[3]), .CI(n18), .CO(n16), .S(n17) );
  CMPE42D1 U18 ( .A(n79), .B(a[2]), .C(n69), .CIX(n21), .D(n24), .CO(n19), 
        .COX(n18), .S(n20) );
  CMPE42D1 U19 ( .A(n70), .B(n80), .C(n25), .CIX(n26), .D(n29), .CO(n22), 
        .COX(n21), .S(n23) );
  HA1D0 U20 ( .A(n90), .B(a[1]), .CO(n24), .S(n25) );
  CMPE42D1 U21 ( .A(n81), .B(n91), .C(n30), .CIX(n31), .D(n34), .CO(n27), 
        .COX(n26), .S(n28) );
  FA1D0 U22 ( .A(n101), .B(a[0]), .CI(n71), .CO(n29), .S(n30) );
  CMPE42D1 U23 ( .A(n92), .B(n102), .C(n39), .CIX(n36), .D(n35), .CO(n32), 
        .COX(n31), .S(n33) );
  FA1D0 U24 ( .A(n82), .B(n112), .CI(n72), .CO(n34), .S(n35) );
  CMPE42D1 U25 ( .A(n93), .B(n103), .C(n44), .CIX(n41), .D(n40), .CO(n37), 
        .COX(n36), .S(n38) );
  FA1D0 U26 ( .A(n83), .B(n113), .CI(n73), .CO(n39), .S(n40) );
  CMPE42D1 U27 ( .A(n94), .B(n104), .C(n49), .CIX(n46), .D(n45), .CO(n42), 
        .COX(n41), .S(n43) );
  FA1D0 U28 ( .A(n84), .B(n114), .CI(n74), .CO(n44), .S(n45) );
  CMPE42D1 U29 ( .A(n95), .B(n105), .C(n51), .CIX(n50), .D(n54), .CO(n47), 
        .COX(n46), .S(n48) );
  FA1D0 U30 ( .A(n85), .B(n115), .CI(n75), .CO(n49), .S(n50) );
  CMPE42D1 U31 ( .A(n96), .B(n106), .C(n59), .CIX(n55), .D(n56), .CO(n52), 
        .COX(n51), .S(n53) );
  FA1D0 U32 ( .A(n86), .B(n116), .CI(n76), .CO(n54), .S(n55) );
  CMPE42D1 U33 ( .A(n87), .B(n107), .C(n77), .CIX(n60), .D(n63), .CO(n57), 
        .COX(n56), .S(n58) );
  FA1D0 U36 ( .A(n108), .B(n118), .CI(n65), .CO(n61), .S(n62) );
  HA1D0 U37 ( .A(n88), .B(n98), .CO(n63), .S(n64) );
  HA1D0 U38 ( .A(n109), .B(n119), .CO(n65), .S(n66) );
  INVD1 U113 ( .I(b[1]), .ZN(n179) );
  INVD1 U114 ( .I(b[2]), .ZN(n180) );
  INVD1 U115 ( .I(b[3]), .ZN(n182) );
  INVD1 U116 ( .I(b[4]), .ZN(n183) );
  INVD1 U117 ( .I(b[6]), .ZN(n178) );
  INVD1 U118 ( .I(b[7]), .ZN(n184) );
  INVD1 U119 ( .I(b[9]), .ZN(n181) );
  INVD1 U120 ( .I(b[10]), .ZN(n177) );
  INVD1 U121 ( .I(b[5]), .ZN(n185) );
  CKBD1 U122 ( .I(product[16]), .Z(product[17]) );
  INVD1 U123 ( .I(a[4]), .ZN(n186) );
  INVD1 U124 ( .I(a[2]), .ZN(n188) );
  INVD1 U125 ( .I(a[1]), .ZN(n189) );
  INVD1 U126 ( .I(a[0]), .ZN(n190) );
  INVD1 U127 ( .I(a[3]), .ZN(n187) );
  NR2D0 U128 ( .A1(n190), .A2(n179), .ZN(product[1]) );
  CKND0 U129 ( .I(n2), .ZN(product[16]) );
  NR2D0 U130 ( .A1(n179), .A2(n188), .ZN(n99) );
  NR2D0 U131 ( .A1(n188), .A2(n180), .ZN(n98) );
  NR2D0 U132 ( .A1(n188), .A2(n183), .ZN(n96) );
  NR2D0 U133 ( .A1(n188), .A2(n185), .ZN(n95) );
  NR2D0 U134 ( .A1(n188), .A2(n178), .ZN(n94) );
  NR2D0 U135 ( .A1(n188), .A2(n184), .ZN(n93) );
  NR2D0 U136 ( .A1(n188), .A2(n183), .ZN(n92) );
  NR2D0 U137 ( .A1(n188), .A2(n181), .ZN(n91) );
  NR2D0 U138 ( .A1(n188), .A2(n177), .ZN(n90) );
  NR2D0 U139 ( .A1(n179), .A2(n187), .ZN(n88) );
  NR2D0 U140 ( .A1(n180), .A2(n187), .ZN(n87) );
  NR2D0 U141 ( .A1(n187), .A2(n182), .ZN(n86) );
  NR2D0 U142 ( .A1(n183), .A2(n187), .ZN(n85) );
  NR2D0 U143 ( .A1(n185), .A2(n187), .ZN(n84) );
  NR2D0 U144 ( .A1(n178), .A2(n187), .ZN(n83) );
  NR2D0 U145 ( .A1(n184), .A2(n187), .ZN(n82) );
  NR2D0 U146 ( .A1(n183), .A2(n187), .ZN(n81) );
  NR2D0 U147 ( .A1(n181), .A2(n187), .ZN(n80) );
  NR2D0 U148 ( .A1(n177), .A2(n187), .ZN(n79) );
  CKND2D0 U149 ( .A1(b[1]), .A2(a[4]), .ZN(n77) );
  CKND2D0 U150 ( .A1(b[2]), .A2(a[4]), .ZN(n76) );
  CKND2D0 U151 ( .A1(b[3]), .A2(a[4]), .ZN(n75) );
  CKND2D0 U152 ( .A1(b[4]), .A2(a[4]), .ZN(n74) );
  CKND2D0 U153 ( .A1(b[5]), .A2(a[4]), .ZN(n73) );
  CKND2D0 U154 ( .A1(b[6]), .A2(a[4]), .ZN(n72) );
  CKND2D0 U155 ( .A1(b[7]), .A2(a[4]), .ZN(n71) );
  CKND2D0 U156 ( .A1(b[8]), .A2(a[4]), .ZN(n70) );
  CKND2D0 U157 ( .A1(b[9]), .A2(a[4]), .ZN(n69) );
  CKND2D0 U158 ( .A1(b[10]), .A2(a[4]), .ZN(n68) );
  XNR2D0 U159 ( .A1(n191), .A2(n192), .ZN(n60) );
  CKND2D0 U160 ( .A1(n191), .A2(n192), .ZN(n59) );
  CKND2D0 U161 ( .A1(b[3]), .A2(a[2]), .ZN(n192) );
  CKND2D0 U162 ( .A1(b[5]), .A2(a[0]), .ZN(n191) );
  NR2D0 U163 ( .A1(n190), .A2(n180), .ZN(n120) );
  NR2D0 U164 ( .A1(n190), .A2(n182), .ZN(n119) );
  NR2D0 U165 ( .A1(n190), .A2(n183), .ZN(n118) );
  NR2D0 U166 ( .A1(n190), .A2(n178), .ZN(n116) );
  NR2D0 U167 ( .A1(n190), .A2(n184), .ZN(n115) );
  NR2D0 U168 ( .A1(n190), .A2(n183), .ZN(n114) );
  NR2D0 U169 ( .A1(n190), .A2(n181), .ZN(n113) );
  NR2D0 U170 ( .A1(n190), .A2(n177), .ZN(n112) );
  NR2D0 U171 ( .A1(n179), .A2(n189), .ZN(n110) );
  NR2D0 U172 ( .A1(n180), .A2(n189), .ZN(n109) );
  NR2D0 U173 ( .A1(n182), .A2(n189), .ZN(n108) );
  NR2D0 U174 ( .A1(n183), .A2(n189), .ZN(n107) );
  NR2D0 U175 ( .A1(n185), .A2(n189), .ZN(n106) );
  NR2D0 U176 ( .A1(n178), .A2(n189), .ZN(n105) );
  NR2D0 U177 ( .A1(n184), .A2(n189), .ZN(n104) );
  NR2D0 U178 ( .A1(n183), .A2(n189), .ZN(n103) );
  NR2D0 U179 ( .A1(n181), .A2(n189), .ZN(n102) );
  NR2D0 U180 ( .A1(n177), .A2(n189), .ZN(n101) );
endmodule


module abs_l2_exact_DW01_add_0 ( A, B, CI, SUM, CO );
  input [19:0] A;
  input [19:0] B;
  output [19:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [19:7] carry;

  FA1D0 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  FA1D0 U1_6 ( .A(A[6]), .B(B[6]), .CI(n1), .CO(carry[7]), .S(SUM[6]) );
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
  FA1D0 U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  FA1D0 U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  FA1D0 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA1D0 U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  XOR3D1 U1_19 ( .A1(A[19]), .A2(B[19]), .A3(carry[19]), .Z(SUM[19]) );
  AN2XD1 U1 ( .A1(B[5]), .A2(A[5]), .Z(n1) );
  CKBD1 U2 ( .I(B[4]), .Z(SUM[4]) );
  CKBD1 U3 ( .I(B[3]), .Z(SUM[3]) );
  CKBD1 U4 ( .I(B[2]), .Z(SUM[2]) );
  CKBD1 U5 ( .I(B[1]), .Z(SUM[1]) );
  CKXOR2D1 U6 ( .A1(B[5]), .A2(A[5]), .Z(SUM[5]) );
endmodule


module abs_l2_exact_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [19:0] A;
  input [19:0] B;
  output [19:0] DIFF;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17;
  wire   [19:2] carry;

  FA1D0 U2_2 ( .A(A[2]), .B(n17), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  FA1D0 U2_16 ( .A(A[16]), .B(n3), .CI(carry[16]), .CO(carry[17]), .S(DIFF[16]) );
  FA1D0 U2_3 ( .A(A[3]), .B(n16), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  FA1D0 U2_4 ( .A(A[4]), .B(n15), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FA1D0 U2_5 ( .A(A[5]), .B(n14), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  FA1D0 U2_6 ( .A(A[6]), .B(n13), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  FA1D0 U2_7 ( .A(A[7]), .B(n12), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  FA1D0 U2_8 ( .A(A[8]), .B(n11), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  FA1D0 U2_9 ( .A(A[9]), .B(n10), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  FA1D0 U2_10 ( .A(A[10]), .B(n9), .CI(carry[10]), .CO(carry[11]), .S(DIFF[10]) );
  FA1D0 U2_11 ( .A(A[11]), .B(n8), .CI(carry[11]), .CO(carry[12]), .S(DIFF[11]) );
  FA1D0 U2_12 ( .A(A[12]), .B(n7), .CI(carry[12]), .CO(carry[13]), .S(DIFF[12]) );
  FA1D0 U2_13 ( .A(A[13]), .B(n6), .CI(carry[13]), .CO(carry[14]), .S(DIFF[13]) );
  FA1D0 U2_14 ( .A(A[14]), .B(n5), .CI(carry[14]), .CO(carry[15]), .S(DIFF[14]) );
  FA1D0 U2_15 ( .A(A[15]), .B(n4), .CI(carry[15]), .CO(carry[16]), .S(DIFF[15]) );
  FA1D0 U2_17 ( .A(A[17]), .B(n2), .CI(carry[17]), .CO(carry[18]), .S(DIFF[17]) );
  XOR3D1 U2_19 ( .A1(A[19]), .A2(n2), .A3(carry[19]), .Z(DIFF[19]) );
  FA1D0 U2_18 ( .A(A[18]), .B(n2), .CI(carry[18]), .CO(carry[19]), .S(DIFF[18]) );
  INVD1 U1 ( .I(B[15]), .ZN(n4) );
  INVD1 U2 ( .I(B[14]), .ZN(n5) );
  INVD1 U3 ( .I(B[13]), .ZN(n6) );
  INVD1 U4 ( .I(B[12]), .ZN(n7) );
  INVD1 U5 ( .I(B[11]), .ZN(n8) );
  INVD1 U6 ( .I(B[10]), .ZN(n9) );
  INVD1 U7 ( .I(B[19]), .ZN(n2) );
  INVD1 U8 ( .I(B[9]), .ZN(n10) );
  INVD1 U9 ( .I(B[8]), .ZN(n11) );
  INVD1 U10 ( .I(B[7]), .ZN(n12) );
  INVD1 U11 ( .I(B[6]), .ZN(n13) );
  INVD1 U12 ( .I(B[5]), .ZN(n14) );
  INVD1 U13 ( .I(B[4]), .ZN(n15) );
  INVD1 U14 ( .I(B[3]), .ZN(n16) );
  INVD1 U16 ( .I(B[16]), .ZN(n3) );
  INVD1 U18 ( .I(B[2]), .ZN(n17) );
  CKXOR2D0 U15 ( .A1(A[1]), .A2(B[1]), .Z(DIFF[1]) );
  IND2D0 U17 ( .A1(A[1]), .B1(B[1]), .ZN(carry[2]) );
endmodule


module abs_l2_exact ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   fx_22, fx_21, fx_20, fy_22, fy_21, fy_20, adjust_2_, n8, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, py_9_, py_8_, py_7_, py_6_, py_5_, py_4_, py_3_, py_2_,
         py_1_, py_18_, py_17_, py_16_, py_15_, py_14_, py_13_, py_12_, py_11_,
         py_10_, px_18, px_9_, px_8_, px_7_, px_6_, px_5_, px_4_, px_3_, px_2_,
         px_1_, px_16_, px_15_, px_14_, px_13_, px_12_, px_11_, px_10_, N99,
         N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85,
         N84, N102, N101, N100, n82, n83, n840, n850, n860, n870, n880, n890,
         n900, n910, n920, n930, n940, n950, n960, n970, n980, n990, n1000,
         n1010, n103, n104, n105, n106, n107, n108, n109;
  wire   [4:0] rx;
  wire   [4:0] ry;
  wire   [10:2] a;
  wire   [12:2] b;
  wire   [19:5] c;
  wire   [19:1] p;
  wire   [22:5] frac;
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
  assign result[4] = 1'b0;
  assign result[0] = 1'b0;
  assign result[1] = 1'b0;
  assign result[2] = 1'b0;
  assign result[3] = 1'b0;

  AN3XD1 U28 ( .A1(n50), .A2(n51), .A3(n52), .Z(n38) );
  AN2XD1 U35 ( .A1(n63), .A2(n59), .Z(n46) );
  AN2XD1 U39 ( .A1(n50), .A2(n39), .Z(n66) );
  AN3XD1 U42 ( .A1(n55), .A2(n51), .A3(n60), .Z(n67) );
  AN2XD1 U50 ( .A1(n57), .A2(n52), .Z(n62) );
  AN3XD1 U53 ( .A1(n45), .A2(n53), .A3(n52), .Z(n71) );
  AN3XD1 U56 ( .A1(n53), .A2(n51), .A3(n59), .Z(n43) );
  AN2XD1 U59 ( .A1(n45), .A2(n39), .Z(n48) );
  AN3XD1 U60 ( .A1(n57), .A2(n40), .A3(n42), .Z(n64) );
  AN2XD1 U75 ( .A1(n42), .A2(n53), .Z(n72) );
  AN2XD1 U77 ( .A1(n47), .A2(n52), .Z(n42) );
  AN2XD1 U80 ( .A1(n50), .A2(n60), .Z(n47) );
  AN2XD1 U85 ( .A1(n69), .A2(n49), .Z(n73) );
  AN2XD1 U97 ( .A1(n61), .A2(n63), .Z(n65) );
  fp32_normal_finite_wrapper wrapper ( .x({x[31:16], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y({y[31:16], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .divide_mode(1'b0), .fraction_x(
        {fx_22, fx_21, fx_20, rx[3:0], SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15}), .fraction_y({fy_22, fy_21, fy_20, ry[3:0], 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31}), 
        .result_fraction({frac, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .exponent_adjust({adjust_2_, adjust_2_, n8}), .result({result[31:5], 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, 
        SYNOPSYS_UNCONNECTED__36}) );
  abs_l2_exact_DW_mult_tc_1 mult_28_S2 ( .a(ry), .b({n108, b, c[5], n108}), 
        .product({py_18_, py_17_, py_16_, py_15_, py_14_, py_13_, py_12_, 
        py_11_, py_10_, py_9_, py_8_, py_7_, py_6_, py_5_, py_4_, py_3_, py_2_, 
        py_1_, SYNOPSYS_UNCONNECTED__37}) );
  abs_l2_exact_DW_mult_tc_0 mult_28 ( .a(rx), .b({n108, n109, a[10:5], a[8], 
        a[3:2], c[5], n108}), .product({px_18, px_16_, px_15_, px_14_, px_13_, 
        px_12_, px_11_, px_10_, px_9_, px_8_, px_7_, px_6_, px_5_, px_4_, 
        px_3_, px_2_, px_1_, SYNOPSYS_UNCONNECTED__38}) );
  abs_l2_exact_DW01_add_0 add_1_root_sub_0_root_sub_30 ( .A({c, n108, n108, 
        n108, n108, n108}), .B({px_18, px_18, px_18, px_16_, px_15_, px_14_, 
        px_13_, px_12_, px_11_, px_10_, px_9_, px_8_, px_7_, px_6_, px_5_, 
        px_4_, px_3_, px_2_, px_1_, n108}), .CI(n108), .SUM({N102, N101, N100, 
        N99, N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, 
        N85, N84, SYNOPSYS_UNCONNECTED__39}) );
  abs_l2_exact_DW01_sub_0 sub_0_root_sub_0_root_sub_30 ( .A({N102, N101, N100, 
        N99, N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, 
        N85, N84, n108}), .B({py_18_, py_18_, py_17_, py_16_, py_15_, py_14_, 
        py_13_, py_12_, py_11_, py_10_, py_9_, py_8_, py_7_, py_6_, py_5_, 
        py_4_, py_3_, py_2_, py_1_, n108}), .CI(n108), .DIFF({p, 
        SYNOPSYS_UNCONNECTED__40}) );
  ND2D1 U133 ( .A1(n36), .A2(n37), .ZN(adjust_2_) );
  INVD1 U134 ( .I(n36), .ZN(n8) );
  ND2D1 U135 ( .A1(p[18]), .A2(n82), .ZN(n36) );
  ND2D1 U136 ( .A1(n83), .A2(n82), .ZN(n37) );
  INVD1 U137 ( .I(p[18]), .ZN(n83) );
  INVD1 U138 ( .I(a[8]), .ZN(n1010) );
  OAI222D0 U139 ( .A1(n36), .A2(n970), .B1(n37), .B2(n980), .C1(n82), .C2(n960), .ZN(frac[9]) );
  OAI222D0 U140 ( .A1(n36), .A2(n960), .B1(n37), .B2(n970), .C1(n82), .C2(n950), .ZN(frac[10]) );
  OAI222D0 U141 ( .A1(n36), .A2(n950), .B1(n37), .B2(n960), .C1(n82), .C2(n940), .ZN(frac[11]) );
  OAI222D0 U142 ( .A1(n36), .A2(n940), .B1(n37), .B2(n950), .C1(n82), .C2(n930), .ZN(frac[12]) );
  OAI222D0 U143 ( .A1(n36), .A2(n930), .B1(n37), .B2(n940), .C1(n82), .C2(n920), .ZN(frac[13]) );
  OAI222D0 U144 ( .A1(n36), .A2(n920), .B1(n37), .B2(n930), .C1(n82), .C2(n910), .ZN(frac[14]) );
  OAI222D0 U145 ( .A1(n36), .A2(n910), .B1(n37), .B2(n920), .C1(n82), .C2(n900), .ZN(frac[15]) );
  OAI222D0 U146 ( .A1(n36), .A2(n900), .B1(n37), .B2(n910), .C1(n82), .C2(n890), .ZN(frac[16]) );
  OAI222D0 U147 ( .A1(n36), .A2(n890), .B1(n37), .B2(n900), .C1(n82), .C2(n880), .ZN(frac[17]) );
  OAI222D0 U148 ( .A1(n36), .A2(n880), .B1(n37), .B2(n890), .C1(n82), .C2(n870), .ZN(frac[18]) );
  OAI222D0 U149 ( .A1(n36), .A2(n870), .B1(n37), .B2(n880), .C1(n82), .C2(n860), .ZN(frac[19]) );
  IND2D1 U150 ( .A1(a[6]), .B1(n72), .ZN(c[5]) );
  ND2D1 U151 ( .A1(n73), .A2(n54), .ZN(a[6]) );
  INVD1 U152 ( .I(p[19]), .ZN(n82) );
  ND2D1 U153 ( .A1(n72), .A2(n54), .ZN(a[2]) );
  ND2D1 U154 ( .A1(n72), .A2(n73), .ZN(a[3]) );
  ND2D1 U155 ( .A1(n73), .A2(n105), .ZN(a[8]) );
  INVD1 U156 ( .I(a[5]), .ZN(n105) );
  ND3D1 U157 ( .A1(n46), .A2(n47), .A3(n48), .ZN(c[7]) );
  ND2D1 U158 ( .A1(n65), .A2(n1010), .ZN(b[4]) );
  ND2D1 U159 ( .A1(n72), .A2(n1010), .ZN(a[7]) );
  INVD1 U160 ( .I(n58), .ZN(n104) );
  ND2D1 U161 ( .A1(n54), .A2(n105), .ZN(a[9]) );
  NR2D1 U162 ( .A1(n103), .A2(a[5]), .ZN(n44) );
  INVD1 U163 ( .I(n54), .ZN(a[10]) );
  OAI222D0 U164 ( .A1(n980), .A2(n36), .B1(n37), .B2(n990), .C1(n970), .C2(n82), .ZN(frac[8]) );
  OAI222D0 U165 ( .A1(n36), .A2(n990), .B1(n37), .B2(n1000), .C1(n980), .C2(
        n82), .ZN(frac[7]) );
  OAI222D0 U166 ( .A1(n36), .A2(n840), .B1(n37), .B2(n850), .C1(n83), .C2(n82), 
        .ZN(frac[22]) );
  OAI222D0 U167 ( .A1(n36), .A2(n860), .B1(n37), .B2(n870), .C1(n82), .C2(n850), .ZN(frac[20]) );
  OAI222D0 U168 ( .A1(n36), .A2(n850), .B1(n37), .B2(n860), .C1(n82), .C2(n840), .ZN(frac[21]) );
  OAI22D1 U169 ( .A1(n36), .A2(n1000), .B1(n82), .B2(n990), .ZN(frac[6]) );
  NR2D1 U170 ( .A1(n82), .A2(n1000), .ZN(frac[5]) );
  INVD1 U171 ( .I(p[17]), .ZN(n840) );
  INVD1 U172 ( .I(p[15]), .ZN(n860) );
  INVD1 U173 ( .I(p[14]), .ZN(n870) );
  INVD1 U174 ( .I(p[13]), .ZN(n880) );
  INVD1 U175 ( .I(p[12]), .ZN(n890) );
  INVD1 U176 ( .I(p[11]), .ZN(n900) );
  INVD1 U177 ( .I(p[10]), .ZN(n910) );
  INVD1 U178 ( .I(p[9]), .ZN(n920) );
  INVD1 U179 ( .I(p[8]), .ZN(n930) );
  INVD1 U180 ( .I(p[7]), .ZN(n940) );
  INVD1 U181 ( .I(p[6]), .ZN(n950) );
  INVD1 U182 ( .I(p[5]), .ZN(n960) );
  INVD1 U183 ( .I(p[4]), .ZN(n970) );
  INVD1 U184 ( .I(p[3]), .ZN(n980) );
  INR2D1 U185 ( .A1(n51), .B1(b[12]), .ZN(n54) );
  ND2D1 U186 ( .A1(n65), .A2(n45), .ZN(b[12]) );
  IND4D1 U187 ( .A1(b[12]), .B1(n104), .B2(n60), .B3(n39), .ZN(c[16]) );
  ND4D1 U188 ( .A1(n48), .A2(n42), .A3(n59), .A4(n41), .ZN(c[18]) );
  ND4D1 U189 ( .A1(n64), .A2(n61), .A3(n59), .A4(n45), .ZN(c[14]) );
  ND4D1 U192 ( .A1(n62), .A2(n104), .A3(n65), .A4(n41), .ZN(c[12]) );
  INVD1 U193 ( .I(n70), .ZN(n103) );
  ND4D1 U194 ( .A1(n104), .A2(n63), .A3(n66), .A4(n55), .ZN(c[11]) );
  ND4D1 U195 ( .A1(n104), .A2(n43), .A3(n57), .A4(n50), .ZN(c[10]) );
  ND4D1 U196 ( .A1(n38), .A2(n39), .A3(n40), .A4(n41), .ZN(c[9]) );
  ND4D1 U197 ( .A1(n57), .A2(n55), .A3(n40), .A4(n41), .ZN(a[5]) );
  ND4D1 U198 ( .A1(n42), .A2(n43), .A3(n44), .A4(n45), .ZN(c[8]) );
  ND3D1 U199 ( .A1(n38), .A2(n49), .A3(n46), .ZN(c[6]) );
  ND4D1 U200 ( .A1(n43), .A2(n49), .A3(n63), .A4(n60), .ZN(b[2]) );
  ND4D1 U201 ( .A1(n63), .A2(n70), .A3(n49), .A4(n71), .ZN(b[3]) );
  ND4D1 U202 ( .A1(n62), .A2(n104), .A3(n60), .A4(n45), .ZN(c[13]) );
  IND4D1 U203 ( .A1(c[13]), .B1(n69), .B2(n61), .B3(n51), .ZN(b[6]) );
  ND2D1 U204 ( .A1(n40), .A2(n49), .ZN(n58) );
  ND4D1 U205 ( .A1(n62), .A2(n61), .A3(n55), .A4(n50), .ZN(b[5]) );
  ND4D1 U206 ( .A1(n48), .A2(n44), .A3(n63), .A4(n53), .ZN(b[7]) );
  IND4D1 U207 ( .A1(b[5]), .B1(n41), .B2(n45), .B3(n68), .ZN(b[8]) );
  NR2D1 U208 ( .A1(n103), .A2(n58), .ZN(n68) );
  ND4D1 U209 ( .A1(n64), .A2(n48), .A3(n63), .A4(n51), .ZN(b[10]) );
  ND4D1 U210 ( .A1(n48), .A2(n49), .A3(n62), .A4(n67), .ZN(b[9]) );
  ND3D1 U211 ( .A1(n44), .A2(n49), .A3(n43), .ZN(b[11]) );
  INVD1 U212 ( .I(p[16]), .ZN(n850) );
  ND3D1 U213 ( .A1(n46), .A2(n41), .A3(n62), .ZN(c[17]) );
  ND4D1 U214 ( .A1(n53), .A2(n54), .A3(n55), .A4(n56), .ZN(c[19]) );
  INR3D0 U215 ( .A1(n57), .B1(n58), .B2(n103), .ZN(n56) );
  INVD1 U216 ( .I(p[2]), .ZN(n990) );
  INVD1 U217 ( .I(p[1]), .ZN(n1000) );
  ND2D1 U218 ( .A1(n80), .A2(n75), .ZN(n63) );
  ND2D1 U219 ( .A1(n77), .A2(n81), .ZN(n61) );
  IND4D1 U220 ( .A1(c[17]), .B1(n47), .B2(n61), .B3(n39), .ZN(c[15]) );
  ND2D1 U221 ( .A1(n78), .A2(n74), .ZN(n60) );
  ND2D1 U222 ( .A1(n79), .A2(n74), .ZN(n50) );
  ND2D1 U223 ( .A1(n77), .A2(n80), .ZN(n45) );
  ND2D1 U224 ( .A1(n79), .A2(n81), .ZN(n39) );
  ND2D1 U225 ( .A1(n78), .A2(n81), .ZN(n59) );
  ND2D1 U226 ( .A1(n80), .A2(n79), .ZN(n70) );
  ND2D1 U227 ( .A1(n78), .A2(n80), .ZN(n49) );
  ND2D1 U228 ( .A1(n79), .A2(n76), .ZN(n52) );
  ND2D1 U229 ( .A1(n81), .A2(n75), .ZN(n51) );
  ND2D1 U230 ( .A1(n74), .A2(n75), .ZN(n41) );
  ND2D1 U231 ( .A1(n76), .A2(n75), .ZN(n40) );
  ND2D1 U232 ( .A1(n77), .A2(n74), .ZN(n55) );
  ND2D1 U233 ( .A1(n77), .A2(n76), .ZN(n57) );
  ND2D1 U234 ( .A1(n78), .A2(n76), .ZN(n53) );
  INR2D1 U235 ( .A1(fx_22), .B1(fy_21), .ZN(n80) );
  INR2D1 U236 ( .A1(fx_21), .B1(fy_22), .ZN(n77) );
  NR2D1 U237 ( .A1(fy_22), .A2(fx_21), .ZN(n75) );
  NR2D1 U238 ( .A1(n107), .A2(fx_22), .ZN(n74) );
  INVD1 U239 ( .I(fy_21), .ZN(n107) );
  INR2D1 U240 ( .A1(fx_21), .B1(n106), .ZN(n78) );
  NR2D1 U241 ( .A1(fy_21), .A2(fx_22), .ZN(n81) );
  INVD1 U242 ( .I(fy_22), .ZN(n106) );
  NR2D1 U243 ( .A1(n106), .A2(fx_21), .ZN(n79) );
  INR2D1 U244 ( .A1(fx_22), .B1(n107), .ZN(n76) );
  INVD1 U245 ( .I(fx_20), .ZN(rx[4]) );
  INVD1 U246 ( .I(fy_20), .ZN(ry[4]) );
  TIEH U247 ( .Z(n109) );
  TIEL U248 ( .ZN(n108) );
  AN3XD1 U190 ( .A1(n59), .A2(n39), .A3(n70), .Z(n69) );
endmodule

