/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Fri Sep  4 18:52:47 2026
/////////////////////////////////////////////////////////////


module fp32_normal_finite_wrapper_DW01_add_3 ( A, B, CI, SUM, CO );
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
  fp32_normal_finite_wrapper_DW01_add_3 add_1_root_add_0_root_add_25_2 ( .A(
        x[30:23]), .B({N42, N41, N40, N39, N38, N37, N36, N35}), .CI(n79), 
        .SUM({N34, N33, N32, N31, N30, N29, N28, N27}) );
  AN2XD1 U3 ( .A1(exponent_adjust[0]), .A2(N27), .Z(n1) );
  CKBD1 U38 ( .I(result_fraction[9]), .Z(result[9]) );
  CKBD1 U39 ( .I(result_fraction[10]), .Z(result[10]) );
  CKBD1 U40 ( .I(result_fraction[11]), .Z(result[11]) );
  CKBD1 U41 ( .I(result_fraction[12]), .Z(result[12]) );
  CKBD1 U42 ( .I(result_fraction[13]), .Z(result[13]) );
  CKBD1 U43 ( .I(result_fraction[8]), .Z(result[8]) );
  CKBD1 U44 ( .I(result_fraction[7]), .Z(result[7]) );
  CKBD1 U45 ( .I(result_fraction[6]), .Z(result[6]) );
  FA1D0 U46 ( .A(N28), .B(exponent_adjust[1]), .CI(n1), .CO(
        add_0_root_add_0_root_add_25_2_carry[2]), .S(result[24]) );
  FA1D0 U47 ( .A(N29), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[2]), .CO(
        add_0_root_add_0_root_add_25_2_carry[3]), .S(result[25]) );
  FA1D0 U48 ( .A(N30), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[3]), .CO(
        add_0_root_add_0_root_add_25_2_carry[4]), .S(result[26]) );
  FA1D0 U49 ( .A(N31), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[4]), .CO(
        add_0_root_add_0_root_add_25_2_carry[5]), .S(result[27]) );
  FA1D0 U50 ( .A(N32), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[5]), .CO(
        add_0_root_add_0_root_add_25_2_carry[6]), .S(result[28]) );
  FA1D0 U51 ( .A(N33), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[6]), .CO(
        add_0_root_add_0_root_add_25_2_carry[7]), .S(result[29]) );
  XOR3D1 U60 ( .A1(N34), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_25_2_carry[7]), .Z(result[30]) );
  AN2XD1 U68 ( .A1(y[23]), .A2(y[24]), .Z(n4) );
  AN2XD1 U69 ( .A1(n4), .A2(y[25]), .Z(n5) );
  AN2XD1 U70 ( .A1(n5), .A2(y[26]), .Z(n6) );
  AN2XD1 U71 ( .A1(n6), .A2(y[27]), .Z(n7) );
  AN2XD1 U72 ( .A1(n7), .A2(y[28]), .Z(n8) );
  CKBD1 U86 ( .I(x[22]), .Z(fraction_x[22]) );
  CKBD1 U87 ( .I(x[21]), .Z(fraction_x[21]) );
  CKBD1 U88 ( .I(x[20]), .Z(fraction_x[20]) );
  CKBD1 U89 ( .I(x[19]), .Z(fraction_x[19]) );
  CKBD1 U90 ( .I(x[18]), .Z(fraction_x[18]) );
  CKBD1 U91 ( .I(x[17]), .Z(fraction_x[17]) );
  CKBD1 U92 ( .I(x[16]), .Z(fraction_x[16]) );
  CKBD1 U93 ( .I(y[22]), .Z(fraction_y[22]) );
  CKBD1 U94 ( .I(y[21]), .Z(fraction_y[21]) );
  CKBD1 U95 ( .I(y[20]), .Z(fraction_y[20]) );
  CKBD1 U96 ( .I(y[19]), .Z(fraction_y[19]) );
  CKBD1 U97 ( .I(y[18]), .Z(fraction_y[18]) );
  CKBD1 U98 ( .I(y[17]), .Z(fraction_y[17]) );
  CKBD1 U99 ( .I(y[16]), .Z(fraction_y[16]) );
  CKBD1 U100 ( .I(result_fraction[22]), .Z(result[22]) );
  CKBD1 U101 ( .I(result_fraction[21]), .Z(result[21]) );
  CKBD1 U102 ( .I(result_fraction[20]), .Z(result[20]) );
  CKBD1 U103 ( .I(result_fraction[19]), .Z(result[19]) );
  CKBD1 U104 ( .I(result_fraction[18]), .Z(result[18]) );
  CKBD1 U105 ( .I(result_fraction[17]), .Z(result[17]) );
  CKBD1 U106 ( .I(result_fraction[16]), .Z(result[16]) );
  CKBD1 U107 ( .I(result_fraction[15]), .Z(result[15]) );
  CKBD1 U108 ( .I(result_fraction[14]), .Z(result[14]) );
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


module input_trunc_core_BITS7_BIAS1_DIVIDE0_DW_mult_uns_0 ( a, b, product );
  input [8:0] a;
  input [8:0] b;
  output [17:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n22, n23, n24, n25, n26, n27, n28, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n43, n44, n45, n46, n47, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n120,
         n121, n122, n123, n124, n125, n240, n241, n242, n243, n244, n245,
         n246, n248, n249, n250, n251, n252, n253, n254, n255, n256, n257,
         n258, n259, n260, n261, n262, n263, n264, n265, n266, n267, n268,
         n269, n270, n271, n272, n273, n274, n275, n276, n277, n278, n279,
         n280, n281, n282, n283, n284, n285;

  FA1D0 U3 ( .A(n19), .B(n18), .CI(n3), .CO(n2), .S(product[16]) );
  FA1D0 U4 ( .A(n24), .B(n20), .CI(n4), .CO(n3), .S(product[15]) );
  FA1D0 U5 ( .A(n27), .B(n25), .CI(n5), .CO(n4), .S(product[14]) );
  FA1D0 U6 ( .A(n32), .B(n28), .CI(n6), .CO(n5), .S(product[13]) );
  FA1D0 U7 ( .A(n37), .B(n33), .CI(n7), .CO(n6), .S(product[12]) );
  FA1D0 U8 ( .A(n38), .B(n44), .CI(n8), .CO(n7), .S(product[11]) );
  FA1D0 U9 ( .A(n50), .B(n45), .CI(n9), .CO(n8), .S(product[10]) );
  FA1D0 U10 ( .A(n51), .B(n55), .CI(n10), .CO(n9), .S(product[9]) );
  FA1D0 U11 ( .A(n56), .B(n60), .CI(n11), .CO(n10), .S(product[8]) );
  FA1D0 U12 ( .A(n61), .B(n65), .CI(n12), .CO(n11), .S(product[7]) );
  FA1D0 U13 ( .A(n66), .B(n67), .CI(n13), .CO(n12), .S(product[6]) );
  FA1D0 U14 ( .A(n68), .B(n71), .CI(n14), .CO(n13), .S(product[5]) );
  FA1D0 U15 ( .A(n72), .B(n73), .CI(n15), .CO(n14), .S(product[4]) );
  FA1D0 U16 ( .A(n16), .B(n116), .CI(n74), .CO(n15), .S(product[3]) );
  FA1D0 U18 ( .A(n241), .B(n78), .CI(n85), .CO(n17), .S(n18) );
  FA1D0 U19 ( .A(n86), .B(n22), .CI(n23), .CO(n19), .S(n20) );
  CMPE42D1 U21 ( .A(n79), .B(n240), .C(n87), .CIX(n26), .D(n96), .CO(n24), 
        .COX(n23), .S(n25) );
  CMPE42D1 U22 ( .A(n88), .B(n30), .C(n97), .CIX(n31), .D(n34), .CO(n27), 
        .COX(n26), .S(n28) );
  CMPE42D1 U24 ( .A(n107), .B(n89), .C(n39), .CIX(n36), .D(n35), .CO(n32), 
        .COX(n31), .S(n33) );
  FA1D0 U25 ( .A(n80), .B(n248), .CI(n98), .CO(n34), .S(n35) );
  CMPE42D1 U26 ( .A(n108), .B(n90), .C(n46), .CIX(n43), .D(n40), .CO(n37), 
        .COX(n36), .S(n38) );
  FA1D0 U27 ( .A(n81), .B(a[1]), .CI(n99), .CO(n39), .S(n40) );
  CMPE42D1 U29 ( .A(n91), .B(n100), .C(n52), .CIX(n49), .D(n47), .CO(n44), 
        .COX(n43), .S(n45) );
  FA1D0 U30 ( .A(n82), .B(a[1]), .CI(n109), .CO(n46), .S(n47) );
  CMPE42D1 U32 ( .A(n92), .B(n101), .C(n57), .CIX(n54), .D(n53), .CO(n50), 
        .COX(n49), .S(n51) );
  FA1D0 U33 ( .A(n83), .B(a[1]), .CI(n110), .CO(n52), .S(n53) );
  CMPE42D1 U34 ( .A(n93), .B(n102), .C(n62), .CIX(n59), .D(n58), .CO(n55), 
        .COX(n54), .S(n56) );
  FA1D0 U35 ( .A(n248), .B(n242), .CI(n111), .CO(n57), .S(n58) );
  CMPE42D1 U36 ( .A(n94), .B(n112), .C(n103), .CIX(n63), .D(n64), .CO(n60), 
        .COX(n59), .S(n61) );
  HA1D0 U37 ( .A(n75), .B(n120), .CO(n62), .S(n63) );
  CMPE42D1 U38 ( .A(n243), .B(n121), .C(n113), .CIX(n69), .D(n104), .CO(n65), 
        .COX(n64), .S(n66) );
  FA1D0 U39 ( .A(n105), .B(n114), .CI(n70), .CO(n67), .S(n68) );
  HA1D0 U40 ( .A(n76), .B(n122), .CO(n69), .S(n70) );
  FA1D0 U41 ( .A(n245), .B(n123), .CI(n115), .CO(n71), .S(n72) );
  HA1D0 U42 ( .A(n77), .B(n124), .CO(n73), .S(n74) );
  INVD1 U175 ( .I(a[3]), .ZN(n246) );
  ND2D1 U176 ( .A1(n279), .A2(n271), .ZN(n269) );
  INVD1 U177 ( .I(n258), .ZN(n245) );
  INVD1 U178 ( .I(a[5]), .ZN(n244) );
  ND2D1 U179 ( .A1(n285), .A2(n258), .ZN(n257) );
  INVD1 U181 ( .I(a[1]), .ZN(n248) );
  CKXOR2D1 U182 ( .A1(n246), .A2(a[4]), .Z(n258) );
  INVD1 U183 ( .I(n260), .ZN(n243) );
  INVD1 U184 ( .I(a[7]), .ZN(n242) );
  ND2D1 U185 ( .A1(n270), .A2(n260), .ZN(n261) );
  CKXOR2D1 U187 ( .A1(n244), .A2(a[6]), .Z(n260) );
  INVD1 U188 ( .I(b[4]), .ZN(n252) );
  INVD1 U189 ( .I(b[5]), .ZN(n251) );
  INVD1 U190 ( .I(b[6]), .ZN(n250) );
  INVD1 U191 ( .I(b[7]), .ZN(n249) );
  INVD1 U192 ( .I(n30), .ZN(n240) );
  INVD1 U193 ( .I(n22), .ZN(n241) );
  INVD1 U194 ( .I(b[2]), .ZN(n254) );
  INVD1 U195 ( .I(b[3]), .ZN(n253) );
  INVD1 U196 ( .I(b[1]), .ZN(n255) );
  XNR2D0 U197 ( .A1(n255), .A2(a[1]), .ZN(product[1]) );
  XNR3D0 U198 ( .A1(n2), .A2(n17), .A3(a[7]), .ZN(product[17]) );
  OAI22D0 U199 ( .A1(n256), .A2(n257), .B1(n258), .B2(n259), .ZN(n99) );
  OAI22D0 U200 ( .A1(n259), .A2(n257), .B1(a[5]), .B2(n258), .ZN(n98) );
  XNR2D0 U201 ( .A1(n244), .A2(n249), .ZN(n259) );
  MUX2ND0 U202 ( .I0(n258), .I1(n257), .S(n244), .ZN(n97) );
  IOA21D0 U203 ( .A1(n257), .A2(n258), .B(a[5]), .ZN(n96) );
  OAI22D0 U204 ( .A1(a[7]), .A2(n261), .B1(n260), .B2(n262), .ZN(n94) );
  OAI22D0 U205 ( .A1(n262), .A2(n261), .B1(n260), .B2(n263), .ZN(n93) );
  XNR2D0 U206 ( .A1(n242), .A2(n255), .ZN(n262) );
  OAI22D0 U207 ( .A1(n263), .A2(n261), .B1(n260), .B2(n264), .ZN(n92) );
  XNR2D0 U208 ( .A1(n242), .A2(n254), .ZN(n263) );
  OAI22D0 U209 ( .A1(n264), .A2(n261), .B1(n260), .B2(n265), .ZN(n91) );
  XNR2D0 U210 ( .A1(n242), .A2(n253), .ZN(n264) );
  OAI22D0 U211 ( .A1(n265), .A2(n261), .B1(n260), .B2(n266), .ZN(n90) );
  XNR2D0 U212 ( .A1(n242), .A2(n252), .ZN(n265) );
  OAI22D0 U213 ( .A1(n266), .A2(n261), .B1(n260), .B2(n267), .ZN(n89) );
  XNR2D0 U214 ( .A1(n242), .A2(n251), .ZN(n266) );
  OAI22D0 U215 ( .A1(n267), .A2(n261), .B1(n260), .B2(n268), .ZN(n88) );
  XNR2D0 U216 ( .A1(n242), .A2(n250), .ZN(n267) );
  OAI22D0 U217 ( .A1(n268), .A2(n261), .B1(a[7]), .B2(n260), .ZN(n87) );
  XNR2D0 U218 ( .A1(n242), .A2(n249), .ZN(n268) );
  MUX2ND0 U219 ( .I0(n260), .I1(n261), .S(n242), .ZN(n86) );
  IOA21D0 U220 ( .A1(n261), .A2(n260), .B(a[7]), .ZN(n85) );
  CKND2D0 U221 ( .A1(n242), .A2(n255), .ZN(n83) );
  MUX2ND0 U222 ( .I0(n255), .I1(n254), .S(n242), .ZN(n82) );
  MUX2ND0 U223 ( .I0(n254), .I1(n253), .S(n242), .ZN(n81) );
  MUX2ND0 U224 ( .I0(n253), .I1(n252), .S(n242), .ZN(n80) );
  MUX2ND0 U225 ( .I0(n251), .I1(n250), .S(n242), .ZN(n79) );
  CKND2D0 U226 ( .A1(a[7]), .A2(n249), .ZN(n78) );
  NR2D0 U227 ( .A1(n246), .A2(n269), .ZN(n77) );
  NR2D0 U228 ( .A1(n244), .A2(n257), .ZN(n76) );
  NR2D0 U229 ( .A1(n242), .A2(n261), .ZN(n75) );
  XNR2D0 U230 ( .A1(n242), .A2(a[6]), .ZN(n270) );
  MUX2ND0 U231 ( .I0(b[4]), .I1(b[5]), .S(n242), .ZN(n30) );
  MUX2ND0 U232 ( .I0(b[6]), .I1(b[7]), .S(n242), .ZN(n22) );
  XNR2D0 U233 ( .A1(n254), .A2(a[1]), .ZN(n125) );
  XNR2D0 U234 ( .A1(n253), .A2(a[1]), .ZN(n124) );
  XNR2D0 U235 ( .A1(n252), .A2(a[1]), .ZN(n123) );
  XNR2D0 U236 ( .A1(n251), .A2(a[1]), .ZN(n122) );
  XNR2D0 U237 ( .A1(n250), .A2(a[1]), .ZN(n121) );
  XNR2D0 U238 ( .A1(n249), .A2(a[1]), .ZN(n120) );
  OAI22D0 U239 ( .A1(a[3]), .A2(n269), .B1(n271), .B2(n272), .ZN(n116) );
  OAI22D0 U240 ( .A1(n272), .A2(n269), .B1(n271), .B2(n273), .ZN(n115) );
  XNR2D0 U241 ( .A1(n246), .A2(n255), .ZN(n272) );
  OAI22D0 U242 ( .A1(n273), .A2(n269), .B1(n271), .B2(n274), .ZN(n114) );
  XNR2D0 U243 ( .A1(n246), .A2(n254), .ZN(n273) );
  OAI22D0 U244 ( .A1(n274), .A2(n269), .B1(n271), .B2(n275), .ZN(n113) );
  XNR2D0 U245 ( .A1(n246), .A2(n253), .ZN(n274) );
  OAI22D0 U246 ( .A1(n275), .A2(n269), .B1(n271), .B2(n276), .ZN(n112) );
  XNR2D0 U247 ( .A1(n246), .A2(n252), .ZN(n275) );
  OAI22D0 U248 ( .A1(n276), .A2(n269), .B1(n271), .B2(n277), .ZN(n111) );
  XNR2D0 U249 ( .A1(n246), .A2(n251), .ZN(n276) );
  OAI22D0 U250 ( .A1(n277), .A2(n269), .B1(n271), .B2(n278), .ZN(n110) );
  XNR2D0 U251 ( .A1(n246), .A2(n250), .ZN(n277) );
  OAI22D0 U252 ( .A1(n278), .A2(n269), .B1(a[3]), .B2(n271), .ZN(n109) );
  XNR2D0 U253 ( .A1(n246), .A2(n249), .ZN(n278) );
  MUX2ND0 U254 ( .I0(n271), .I1(n269), .S(n246), .ZN(n108) );
  IOA21D0 U255 ( .A1(n269), .A2(n271), .B(a[3]), .ZN(n107) );
  XNR2D0 U256 ( .A1(n246), .A2(a[2]), .ZN(n279) );
  OAI22D0 U257 ( .A1(a[5]), .A2(n257), .B1(n258), .B2(n280), .ZN(n105) );
  OAI22D0 U258 ( .A1(n280), .A2(n257), .B1(n258), .B2(n281), .ZN(n104) );
  XNR2D0 U259 ( .A1(n244), .A2(n255), .ZN(n280) );
  OAI22D0 U260 ( .A1(n281), .A2(n257), .B1(n258), .B2(n282), .ZN(n103) );
  XNR2D0 U261 ( .A1(n244), .A2(n254), .ZN(n281) );
  OAI22D0 U262 ( .A1(n282), .A2(n257), .B1(n258), .B2(n283), .ZN(n102) );
  XNR2D0 U263 ( .A1(n244), .A2(n253), .ZN(n282) );
  OAI22D0 U264 ( .A1(n283), .A2(n257), .B1(n258), .B2(n284), .ZN(n101) );
  XNR2D0 U265 ( .A1(n244), .A2(n252), .ZN(n283) );
  OAI22D0 U266 ( .A1(n284), .A2(n257), .B1(n258), .B2(n256), .ZN(n100) );
  XNR2D0 U267 ( .A1(n244), .A2(n250), .ZN(n256) );
  XNR2D0 U268 ( .A1(n244), .A2(a[4]), .ZN(n285) );
  XNR2D0 U269 ( .A1(n244), .A2(n251), .ZN(n284) );
  INR2D0 U180 ( .A1(n125), .B1(n271), .ZN(n16) );
  XNR2D0 U186 ( .A1(n271), .A2(n125), .ZN(product[2]) );
  CKXOR2D0 U270 ( .A1(n248), .A2(a[2]), .Z(n271) );
endmodule


module input_trunc_core_BITS7_BIAS1_DIVIDE0 ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   adjustment_0_, n1, n20, n21, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19;
  wire   [7:1] a;
  wire   [7:1] b;
  wire   [17:1] multiplication_product;
  wire   [22:7] fraction;
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
        SYNOPSYS_UNCONNECTED__38;

  fp32_normal_finite_wrapper wrapper ( .x({x[31:16], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y({y[31:16], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .divide_mode(1'b0), .fraction_x(
        {a, SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15}), .fraction_y({b, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31}), 
        .result_fraction({fraction, multiplication_product[17], 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .exponent_adjust({n1, n1, adjustment_0_}), 
        .result({result[31:6], SYNOPSYS_UNCONNECTED__32, 
        SYNOPSYS_UNCONNECTED__33, SYNOPSYS_UNCONNECTED__34, 
        SYNOPSYS_UNCONNECTED__35, SYNOPSYS_UNCONNECTED__36, 
        SYNOPSYS_UNCONNECTED__37}) );
  input_trunc_core_BITS7_BIAS1_DIVIDE0_DW_mult_uns_0 mult_22 ( .a({n19, a, n19}), .b({n19, b, n19}), .product({multiplication_product, 
        SYNOPSYS_UNCONNECTED__38}) );
  INVD1 U3 ( .I(multiplication_product[11]), .ZN(n8) );
  INVD1 U4 ( .I(multiplication_product[10]), .ZN(n9) );
  INVD1 U5 ( .I(multiplication_product[9]), .ZN(n10) );
  INVD1 U6 ( .I(n21), .ZN(n1) );
  INVD1 U7 ( .I(multiplication_product[16]), .ZN(n3) );
  INVD1 U8 ( .I(multiplication_product[15]), .ZN(n4) );
  INVD1 U9 ( .I(multiplication_product[14]), .ZN(n5) );
  INVD1 U10 ( .I(multiplication_product[13]), .ZN(n6) );
  INVD1 U11 ( .I(multiplication_product[12]), .ZN(n7) );
  INVD1 U12 ( .I(multiplication_product[8]), .ZN(n11) );
  INVD1 U13 ( .I(multiplication_product[7]), .ZN(n12) );
  INVD1 U14 ( .I(multiplication_product[6]), .ZN(n13) );
  INVD1 U15 ( .I(multiplication_product[5]), .ZN(n14) );
  INVD1 U16 ( .I(multiplication_product[4]), .ZN(n15) );
  ND2D1 U17 ( .A1(n3), .A2(n2), .ZN(n21) );
  ND2D1 U18 ( .A1(n2), .A2(n21), .ZN(adjustment_0_) );
  ND2D1 U19 ( .A1(multiplication_product[16]), .A2(n2), .ZN(n20) );
  OAI222D0 U20 ( .A1(n20), .A2(n17), .B1(n21), .B2(n18), .C1(n2), .C2(n16), 
        .ZN(fraction[9]) );
  OAI222D0 U21 ( .A1(n20), .A2(n16), .B1(n21), .B2(n17), .C1(n2), .C2(n15), 
        .ZN(fraction[10]) );
  OAI222D0 U22 ( .A1(n20), .A2(n15), .B1(n21), .B2(n16), .C1(n2), .C2(n14), 
        .ZN(fraction[11]) );
  OAI222D0 U23 ( .A1(n20), .A2(n14), .B1(n21), .B2(n15), .C1(n2), .C2(n13), 
        .ZN(fraction[12]) );
  OAI222D0 U24 ( .A1(n20), .A2(n13), .B1(n21), .B2(n14), .C1(n2), .C2(n12), 
        .ZN(fraction[13]) );
  OAI221D0 U25 ( .A1(n17), .A2(n2), .B1(n18), .B2(n20), .C(n21), .ZN(
        fraction[8]) );
  OAI222D0 U26 ( .A1(n20), .A2(n4), .B1(n21), .B2(n5), .C1(n3), .C2(n2), .ZN(
        fraction[22]) );
  OAI222D0 U27 ( .A1(n20), .A2(n12), .B1(n21), .B2(n13), .C1(n2), .C2(n11), 
        .ZN(fraction[14]) );
  OAI222D0 U28 ( .A1(n20), .A2(n11), .B1(n21), .B2(n12), .C1(n2), .C2(n10), 
        .ZN(fraction[15]) );
  OAI222D0 U29 ( .A1(n20), .A2(n10), .B1(n21), .B2(n11), .C1(n2), .C2(n9), 
        .ZN(fraction[16]) );
  OAI222D0 U30 ( .A1(n20), .A2(n9), .B1(n21), .B2(n10), .C1(n2), .C2(n8), .ZN(
        fraction[17]) );
  OAI222D0 U31 ( .A1(n20), .A2(n8), .B1(n21), .B2(n9), .C1(n2), .C2(n7), .ZN(
        fraction[18]) );
  OAI222D0 U32 ( .A1(n20), .A2(n7), .B1(n21), .B2(n8), .C1(n2), .C2(n6), .ZN(
        fraction[19]) );
  OAI222D0 U33 ( .A1(n20), .A2(n6), .B1(n21), .B2(n7), .C1(n2), .C2(n5), .ZN(
        fraction[20]) );
  OAI222D0 U34 ( .A1(n20), .A2(n5), .B1(n21), .B2(n6), .C1(n2), .C2(n4), .ZN(
        fraction[21]) );
  OAI21D1 U35 ( .A1(n18), .A2(n2), .B(n20), .ZN(fraction[7]) );
  INVD1 U37 ( .I(multiplication_product[3]), .ZN(n16) );
  INVD1 U38 ( .I(multiplication_product[2]), .ZN(n17) );
  INVD1 U40 ( .I(multiplication_product[1]), .ZN(n18) );
  TIEH U42 ( .Z(n19) );
  CKND0 U36 ( .I(multiplication_product[17]), .ZN(n2) );
endmodule


module input_mul_b7_bias1 ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;

  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5;
  assign result[0] = 1'b0;
  assign result[1] = 1'b0;
  assign result[2] = 1'b0;
  assign result[3] = 1'b0;
  assign result[4] = 1'b0;
  assign result[5] = 1'b0;

  input_trunc_core_BITS7_BIAS1_DIVIDE0 dut ( .x({x[31:16], 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .y({y[31:16], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .result({
        result[31:6], SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5}) );
endmodule

