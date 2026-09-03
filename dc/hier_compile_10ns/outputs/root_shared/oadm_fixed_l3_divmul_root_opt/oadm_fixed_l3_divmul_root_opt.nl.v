/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Thu Sep  3 13:59:44 2026
/////////////////////////////////////////////////////////////


module fp32_normal_finite_wrapper_DW01_add_3_DW01_add_9 ( A, B, CI, SUM, CO );
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


module fp32_normal_finite_wrapper_DW01_add_1_DW01_add_7 ( A, B, CI, SUM, CO );
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
         N12, N11, N10, n1, n2, n35, n410, n51, n60, n70, n76, n77, n78, n80;
  wire   [7:2] add_0_root_add_0_root_add_22_2_carry;
  wire   [7:2] add_0_root_add_0_root_add_25_2_carry;

  CKXOR2D1 U2 ( .A1(y[31]), .A2(x[31]), .Z(result[31]) );
  fp32_normal_finite_wrapper_DW01_add_3_DW01_add_9 add_1_root_add_0_root_add_25_2 ( 
        .A(x[30:23]), .B({N42, N41, N40, N39, N38, N37, N36, N11}), .CI(n80), 
        .SUM({N34, N33, N32, N31, N30, N29, N28, N27}) );
  fp32_normal_finite_wrapper_DW01_add_1_DW01_add_7 add_1_root_add_0_root_add_22_2 ( 
        .A(x[30:23]), .B({y[30], N17, N16, N15, N14, N13, N12, N11}), .CI(n80), 
        .SUM({N10, N9, N8, N7, N6, N5, N4, N3}) );
  AN2XD1 U3 ( .A1(exponent_adjust[0]), .A2(N3), .Z(n1) );
  AN2XD1 U4 ( .A1(exponent_adjust[0]), .A2(N27), .Z(n2) );
  INVD1 U25 ( .I(n77), .ZN(n78) );
  CKBD1 U26 ( .I(result_fraction[8]), .Z(result[8]) );
  CKBD1 U27 ( .I(result_fraction[7]), .Z(result[7]) );
  CKBD1 U28 ( .I(result_fraction[15]), .Z(result[15]) );
  CKBD1 U29 ( .I(result_fraction[16]), .Z(result[16]) );
  CKBD1 U30 ( .I(result_fraction[17]), .Z(result[17]) );
  CKBD1 U31 ( .I(result_fraction[18]), .Z(result[18]) );
  CKBD1 U32 ( .I(result_fraction[19]), .Z(result[19]) );
  CKBD1 U33 ( .I(result_fraction[20]), .Z(result[20]) );
  CKBD1 U34 ( .I(result_fraction[11]), .Z(result[11]) );
  CKBD1 U35 ( .I(result_fraction[12]), .Z(result[12]) );
  CKBD1 U36 ( .I(result_fraction[13]), .Z(result[13]) );
  CKBD1 U37 ( .I(result_fraction[14]), .Z(result[14]) );
  CKBD1 U38 ( .I(result_fraction[10]), .Z(result[10]) );
  CKBD1 U39 ( .I(result_fraction[6]), .Z(result[6]) );
  CKBD1 U40 ( .I(result_fraction[5]), .Z(result[5]) );
  CKBD1 U41 ( .I(divide_mode), .Z(n77) );
  AO22D0 U42 ( .A1(N49), .A2(n78), .B1(N25), .B2(n77), .Z(result[29]) );
  AO22D0 U43 ( .A1(N48), .A2(n78), .B1(N24), .B2(n77), .Z(result[28]) );
  AO22D0 U44 ( .A1(N47), .A2(n78), .B1(N23), .B2(n77), .Z(result[27]) );
  AO22D0 U45 ( .A1(N46), .A2(n78), .B1(N22), .B2(n77), .Z(result[26]) );
  AO22D0 U46 ( .A1(N45), .A2(n78), .B1(N21), .B2(n77), .Z(result[25]) );
  AO22D0 U47 ( .A1(N44), .A2(n78), .B1(N20), .B2(n77), .Z(result[24]) );
  CKBD1 U48 ( .I(result_fraction[9]), .Z(result[9]) );
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
  AO22D0 U61 ( .A1(N43), .A2(n78), .B1(N19), .B2(n77), .Z(result[23]) );
  AO22D0 U62 ( .A1(N50), .A2(n78), .B1(n77), .B2(N26), .Z(result[30]) );
  XOR3D1 U63 ( .A1(N34), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_25_2_carry[7]), .Z(N50) );
  XOR3D1 U64 ( .A1(N10), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_22_2_carry[7]), .Z(N26) );
  CKBD1 U65 ( .I(x[22]), .Z(fraction_x[22]) );
  CKBD1 U66 ( .I(y[22]), .Z(fraction_y[22]) );
  CKBD1 U67 ( .I(x[20]), .Z(fraction_x[20]) );
  CKBD1 U68 ( .I(y[20]), .Z(fraction_y[20]) );
  CKBD1 U69 ( .I(y[21]), .Z(fraction_y[21]) );
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
  CKXOR2D1 U81 ( .A1(y[30]), .A2(n76), .Z(N42) );
  ND2D1 U82 ( .A1(n70), .A2(y[29]), .ZN(n76) );
  CKBD1 U88 ( .I(x[21]), .Z(fraction_x[21]) );
  CKBD1 U89 ( .I(x[19]), .Z(fraction_x[19]) );
  CKBD1 U90 ( .I(x[18]), .Z(fraction_x[18]) );
  CKBD1 U91 ( .I(x[17]), .Z(fraction_x[17]) );
  CKBD1 U92 ( .I(x[16]), .Z(fraction_x[16]) );
  CKBD1 U93 ( .I(x[15]), .Z(fraction_x[15]) );
  CKBD1 U94 ( .I(x[14]), .Z(fraction_x[14]) );
  CKBD1 U95 ( .I(x[13]), .Z(fraction_x[13]) );
  CKBD1 U96 ( .I(x[12]), .Z(fraction_x[12]) );
  CKBD1 U97 ( .I(x[11]), .Z(fraction_x[11]) );
  CKBD1 U98 ( .I(x[10]), .Z(fraction_x[10]) );
  CKBD1 U99 ( .I(y[19]), .Z(fraction_y[19]) );
  CKBD1 U100 ( .I(y[18]), .Z(fraction_y[18]) );
  CKBD1 U101 ( .I(y[17]), .Z(fraction_y[17]) );
  CKBD1 U102 ( .I(y[16]), .Z(fraction_y[16]) );
  CKBD1 U103 ( .I(y[15]), .Z(fraction_y[15]) );
  CKBD1 U104 ( .I(y[14]), .Z(fraction_y[14]) );
  CKBD1 U105 ( .I(y[13]), .Z(fraction_y[13]) );
  CKBD1 U106 ( .I(y[12]), .Z(fraction_y[12]) );
  CKBD1 U107 ( .I(y[11]), .Z(fraction_y[11]) );
  CKBD1 U108 ( .I(y[10]), .Z(fraction_y[10]) );
  CKBD1 U109 ( .I(result_fraction[22]), .Z(result[22]) );
  CKBD1 U110 ( .I(result_fraction[21]), .Z(result[21]) );
  TIEL U111 ( .ZN(n80) );
  CKXOR2D1 U112 ( .A1(exponent_adjust[0]), .A2(N3), .Z(N19) );
  CKXOR2D1 U113 ( .A1(exponent_adjust[0]), .A2(N27), .Z(N43) );
  CKXOR2D1 U114 ( .A1(y[23]), .A2(y[24]), .Z(N36) );
  CKXOR2D1 U115 ( .A1(n35), .A2(y[25]), .Z(N37) );
  CKXOR2D1 U116 ( .A1(n410), .A2(y[26]), .Z(N38) );
  CKXOR2D1 U117 ( .A1(n51), .A2(y[27]), .Z(N39) );
  CKXOR2D1 U118 ( .A1(n60), .A2(y[28]), .Z(N40) );
  CKXOR2D1 U119 ( .A1(n70), .A2(y[29]), .Z(N41) );
  CKND0 U120 ( .I(y[23]), .ZN(N11) );
endmodule



    module oadm_fixed_divmul_root_opt_3_16_10_16_8_e3_b6_95_7c_69_5a_4e_44_DW_mult_uns_1 ( 
        a, b, product );
  input [8:0] a;
  input [7:0] b;
  output [16:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237;

  FA1D0 U2 ( .A(n16), .B(n95), .CI(n2), .CO(product[16]), .S(product[15]) );
  FA1D0 U3 ( .A(n19), .B(n17), .CI(n3), .CO(n2), .S(product[14]) );
  FA1D0 U4 ( .A(n22), .B(n20), .CI(n4), .CO(n3), .S(product[13]) );
  FA1D0 U5 ( .A(n27), .B(n23), .CI(n5), .CO(n4), .S(product[12]) );
  FA1D0 U6 ( .A(n33), .B(n28), .CI(n6), .CO(n5), .S(product[11]) );
  FA1D0 U7 ( .A(n41), .B(n34), .CI(n7), .CO(n6), .S(product[10]) );
  FA1D0 U8 ( .A(n51), .B(n42), .CI(n8), .CO(n7), .S(product[9]) );
  FA1D0 U9 ( .A(n52), .B(n60), .CI(n9), .CO(n8), .S(product[8]) );
  FA1D0 U10 ( .A(n61), .B(n70), .CI(n10), .CO(n9), .S(product[7]) );
  FA1D0 U11 ( .A(n71), .B(n78), .CI(n11), .CO(n10), .S(product[6]) );
  FA1D0 U12 ( .A(n79), .B(n85), .CI(n12), .CO(n11), .S(product[5]) );
  FA1D0 U13 ( .A(n86), .B(n89), .CI(n13), .CO(n12), .S(product[4]) );
  FA1D0 U14 ( .A(n90), .B(n92), .CI(n14), .CO(n13), .S(product[3]) );
  FA1D0 U15 ( .A(n15), .B(n148), .CI(n94), .CO(n14), .S(product[2]) );
  HA1D0 U16 ( .A(n165), .B(n157), .CO(n15), .S(product[1]) );
  FA1D0 U17 ( .A(n96), .B(n104), .CI(n18), .CO(n16), .S(n17) );
  CMPE42D1 U18 ( .A(n97), .B(n113), .C(n105), .CIX(n21), .D(n24), .CO(n19), 
        .COX(n18), .S(n20) );
  CMPE42D1 U19 ( .A(n29), .B(n106), .C(n25), .CIX(n26), .D(n30), .CO(n22), 
        .COX(n21), .S(n23) );
  FA1D0 U20 ( .A(n114), .B(n122), .CI(n98), .CO(n24), .S(n25) );
  CMPE42D1 U21 ( .A(n35), .B(n107), .C(n31), .CIX(n32), .D(n36), .CO(n27), 
        .COX(n26), .S(n28) );
  CMPE42D1 U22 ( .A(n99), .B(n115), .C(n131), .CIX(n38), .D(n123), .CO(n30), 
        .COX(n29), .S(n31) );
  CMPE42D1 U23 ( .A(n43), .B(n46), .C(n37), .CIX(n40), .D(n44), .CO(n33), 
        .COX(n32), .S(n34) );
  CMPE42D1 U24 ( .A(n132), .B(n116), .C(n124), .CIX(n39), .D(n48), .CO(n36), 
        .COX(n35), .S(n37) );
  FA1D0 U25 ( .A(n100), .B(n140), .CI(n108), .CO(n38), .S(n39) );
  CMPE42D1 U26 ( .A(n57), .B(n56), .C(n54), .CIX(n50), .D(n45), .CO(n41), 
        .COX(n40), .S(n42) );
  CMPE42D1 U27 ( .A(n117), .B(n133), .C(n49), .CIX(n47), .D(n53), .CO(n44), 
        .COX(n43), .S(n45) );
  FA1D0 U28 ( .A(n149), .B(n125), .CI(n141), .CO(n46), .S(n47) );
  HA1D0 U29 ( .A(n101), .B(n109), .CO(n48), .S(n49) );
  CMPE42D1 U30 ( .A(n55), .B(n67), .C(n58), .CIX(n59), .D(n63), .CO(n51), 
        .COX(n50), .S(n52) );
  CMPE42D1 U31 ( .A(n134), .B(n158), .C(n150), .CIX(n62), .D(n142), .CO(n54), 
        .COX(n53), .S(n55) );
  CMPE42D1 U32 ( .A(n102), .B(n110), .C(n118), .CIX(n65), .D(n126), .CO(n57), 
        .COX(n56), .S(n58) );
  CMPE42D1 U33 ( .A(n72), .B(n68), .C(n69), .CIX(n73), .D(n64), .CO(n60), 
        .COX(n59), .S(n61) );
  CMPE42D1 U34 ( .A(n135), .B(n151), .C(n143), .CIX(n66), .D(n75), .CO(n63), 
        .COX(n62), .S(n64) );
  FA1D0 U35 ( .A(n119), .B(n159), .CI(n127), .CO(n65), .S(n66) );
  HA1D0 U36 ( .A(n103), .B(n111), .CO(n67), .S(n68) );
  CMPE42D1 U37 ( .A(n82), .B(n144), .C(n76), .CIX(n74), .D(n77), .CO(n70), 
        .COX(n69), .S(n71) );
  CMPE42D1 U38 ( .A(n128), .B(n160), .C(n152), .CIX(n80), .D(n136), .CO(n73), 
        .COX(n72), .S(n74) );
  HA1D0 U39 ( .A(n112), .B(n120), .CO(n75), .S(n76) );
  CMPE42D1 U40 ( .A(n87), .B(n153), .C(n83), .CIX(n81), .D(n84), .CO(n78), 
        .COX(n77), .S(n79) );
  FA1D0 U41 ( .A(n137), .B(n161), .CI(n145), .CO(n80), .S(n81) );
  HA1D0 U42 ( .A(n121), .B(n129), .CO(n82), .S(n83) );
  CMPE42D1 U43 ( .A(n146), .B(n162), .C(n154), .CIX(n88), .D(n91), .CO(n85), 
        .COX(n84), .S(n86) );
  HA1D0 U44 ( .A(n130), .B(n138), .CO(n87), .S(n88) );
  FA1D0 U45 ( .A(n155), .B(n163), .CI(n93), .CO(n89), .S(n90) );
  HA1D0 U46 ( .A(n139), .B(n147), .CO(n91), .S(n92) );
  HA1D0 U47 ( .A(n156), .B(n164), .CO(n93), .S(n94) );
  INVD1 U139 ( .I(a[8]), .ZN(n221) );
  INVD1 U140 ( .I(a[7]), .ZN(n222) );
  INVD1 U141 ( .I(a[6]), .ZN(n223) );
  INVD1 U142 ( .I(a[5]), .ZN(n224) );
  INVD1 U143 ( .I(a[4]), .ZN(n225) );
  INVD1 U144 ( .I(a[3]), .ZN(n226) );
  INVD1 U145 ( .I(a[2]), .ZN(n227) );
  INVD1 U146 ( .I(a[1]), .ZN(n228) );
  INVD1 U147 ( .I(a[0]), .ZN(n229) );
  INVD1 U148 ( .I(b[3]), .ZN(n232) );
  INVD1 U149 ( .I(b[2]), .ZN(n230) );
  INVD1 U150 ( .I(b[1]), .ZN(n235) );
  INVD1 U151 ( .I(b[4]), .ZN(n231) );
  INVD1 U152 ( .I(b[0]), .ZN(n237) );
  INVD1 U153 ( .I(b[5]), .ZN(n234) );
  INVD1 U154 ( .I(b[6]), .ZN(n233) );
  INVD1 U155 ( .I(b[7]), .ZN(n236) );
  NR2D0 U156 ( .A1(n229), .A2(n237), .ZN(product[0]) );
  NR2D0 U157 ( .A1(n225), .A2(n236), .ZN(n99) );
  NR2D0 U158 ( .A1(n236), .A2(n224), .ZN(n98) );
  NR2D0 U159 ( .A1(n236), .A2(n223), .ZN(n97) );
  NR2D0 U160 ( .A1(n236), .A2(n222), .ZN(n96) );
  NR2D0 U161 ( .A1(n236), .A2(n221), .ZN(n95) );
  NR2D0 U162 ( .A1(n237), .A2(n228), .ZN(n165) );
  NR2D0 U163 ( .A1(n237), .A2(n227), .ZN(n164) );
  NR2D0 U164 ( .A1(n237), .A2(n226), .ZN(n163) );
  NR2D0 U165 ( .A1(n237), .A2(n225), .ZN(n162) );
  NR2D0 U166 ( .A1(n237), .A2(n224), .ZN(n161) );
  NR2D0 U167 ( .A1(n237), .A2(n223), .ZN(n160) );
  NR2D0 U168 ( .A1(n237), .A2(n222), .ZN(n159) );
  NR2D0 U169 ( .A1(n237), .A2(n221), .ZN(n158) );
  NR2D0 U170 ( .A1(n229), .A2(n235), .ZN(n157) );
  NR2D0 U171 ( .A1(n228), .A2(n235), .ZN(n156) );
  NR2D0 U172 ( .A1(n227), .A2(n235), .ZN(n155) );
  NR2D0 U173 ( .A1(n226), .A2(n235), .ZN(n154) );
  NR2D0 U174 ( .A1(n225), .A2(n235), .ZN(n153) );
  NR2D0 U175 ( .A1(n224), .A2(n235), .ZN(n152) );
  NR2D0 U176 ( .A1(n223), .A2(n235), .ZN(n151) );
  NR2D0 U177 ( .A1(n222), .A2(n235), .ZN(n150) );
  NR2D0 U178 ( .A1(n221), .A2(n235), .ZN(n149) );
  NR2D0 U179 ( .A1(n229), .A2(n230), .ZN(n148) );
  NR2D0 U180 ( .A1(n228), .A2(n230), .ZN(n147) );
  NR2D0 U181 ( .A1(n227), .A2(n230), .ZN(n146) );
  NR2D0 U182 ( .A1(n226), .A2(n230), .ZN(n145) );
  NR2D0 U183 ( .A1(n225), .A2(n230), .ZN(n144) );
  NR2D0 U184 ( .A1(n224), .A2(n230), .ZN(n143) );
  NR2D0 U185 ( .A1(n223), .A2(n230), .ZN(n142) );
  NR2D0 U186 ( .A1(n222), .A2(n230), .ZN(n141) );
  NR2D0 U187 ( .A1(n221), .A2(n230), .ZN(n140) );
  NR2D0 U188 ( .A1(n229), .A2(n232), .ZN(n139) );
  NR2D0 U189 ( .A1(n228), .A2(n232), .ZN(n138) );
  NR2D0 U190 ( .A1(n227), .A2(n232), .ZN(n137) );
  NR2D0 U191 ( .A1(n226), .A2(n232), .ZN(n136) );
  NR2D0 U192 ( .A1(n225), .A2(n232), .ZN(n135) );
  NR2D0 U193 ( .A1(n224), .A2(n232), .ZN(n134) );
  NR2D0 U194 ( .A1(n223), .A2(n232), .ZN(n133) );
  NR2D0 U195 ( .A1(n222), .A2(n232), .ZN(n132) );
  NR2D0 U196 ( .A1(n221), .A2(n232), .ZN(n131) );
  NR2D0 U197 ( .A1(n229), .A2(n231), .ZN(n130) );
  NR2D0 U198 ( .A1(n228), .A2(n231), .ZN(n129) );
  NR2D0 U199 ( .A1(n227), .A2(n231), .ZN(n128) );
  NR2D0 U200 ( .A1(n226), .A2(n231), .ZN(n127) );
  NR2D0 U201 ( .A1(n225), .A2(n231), .ZN(n126) );
  NR2D0 U202 ( .A1(n224), .A2(n231), .ZN(n125) );
  NR2D0 U203 ( .A1(n223), .A2(n231), .ZN(n124) );
  NR2D0 U204 ( .A1(n222), .A2(n231), .ZN(n123) );
  NR2D0 U205 ( .A1(n221), .A2(n231), .ZN(n122) );
  NR2D0 U206 ( .A1(n229), .A2(n234), .ZN(n121) );
  NR2D0 U207 ( .A1(n228), .A2(n234), .ZN(n120) );
  NR2D0 U208 ( .A1(n227), .A2(n234), .ZN(n119) );
  NR2D0 U209 ( .A1(n226), .A2(n234), .ZN(n118) );
  NR2D0 U210 ( .A1(n225), .A2(n234), .ZN(n117) );
  NR2D0 U211 ( .A1(n224), .A2(n234), .ZN(n116) );
  NR2D0 U212 ( .A1(n223), .A2(n234), .ZN(n115) );
  NR2D0 U213 ( .A1(n222), .A2(n234), .ZN(n114) );
  NR2D0 U214 ( .A1(n221), .A2(n234), .ZN(n113) );
  NR2D0 U215 ( .A1(n229), .A2(n233), .ZN(n112) );
  NR2D0 U216 ( .A1(n228), .A2(n233), .ZN(n111) );
  NR2D0 U217 ( .A1(n227), .A2(n233), .ZN(n110) );
  NR2D0 U218 ( .A1(n226), .A2(n233), .ZN(n109) );
  NR2D0 U219 ( .A1(n225), .A2(n233), .ZN(n108) );
  NR2D0 U220 ( .A1(n224), .A2(n233), .ZN(n107) );
  NR2D0 U221 ( .A1(n223), .A2(n233), .ZN(n106) );
  NR2D0 U222 ( .A1(n222), .A2(n233), .ZN(n105) );
  NR2D0 U223 ( .A1(n221), .A2(n233), .ZN(n104) );
  NR2D0 U224 ( .A1(n229), .A2(n236), .ZN(n103) );
  NR2D0 U225 ( .A1(n236), .A2(n228), .ZN(n102) );
  NR2D0 U226 ( .A1(n236), .A2(n227), .ZN(n101) );
  NR2D0 U227 ( .A1(n236), .A2(n226), .ZN(n100) );
endmodule



    module oadm_fixed_divmul_root_opt_3_16_10_16_8_e3_b6_95_7c_69_5a_4e_44_DW_mult_tc_1 ( 
        a, b, product );
  input [9:0] a;
  input [5:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n17,
         n18, n19, n20, n21, n23, n24, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n63,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n195;

  FA1D0 U2 ( .A(n172), .B(n15), .CI(n2), .CO(n1), .S(product[14]) );
  FA1D0 U3 ( .A(n17), .B(n170), .CI(n3), .CO(n2), .S(product[13]) );
  FA1D0 U4 ( .A(n19), .B(n18), .CI(n4), .CO(n3), .S(product[12]) );
  FA1D0 U5 ( .A(n23), .B(n20), .CI(n5), .CO(n4), .S(product[11]) );
  FA1D0 U6 ( .A(n24), .B(n26), .CI(n6), .CO(n5), .S(product[10]) );
  FA1D0 U7 ( .A(n28), .B(n27), .CI(n7), .CO(n6), .S(product[9]) );
  FA1D0 U8 ( .A(n30), .B(n29), .CI(n8), .CO(n7), .S(product[8]) );
  FA1D0 U9 ( .A(n32), .B(n31), .CI(n9), .CO(n8), .S(product[7]) );
  FA1D0 U10 ( .A(n34), .B(n33), .CI(n10), .CO(n9), .S(product[6]) );
  FA1D0 U11 ( .A(n36), .B(n35), .CI(n11), .CO(n10), .S(product[5]) );
  FA1D0 U12 ( .A(n37), .B(n38), .CI(n12), .CO(n11), .S(product[4]) );
  FA1D0 U13 ( .A(n39), .B(n40), .CI(n13), .CO(n12), .S(product[3]) );
  FA1D0 U14 ( .A(n166), .B(n61), .CI(n14), .CO(n13), .S(product[2]) );
  HA1D0 U15 ( .A(n167), .B(n41), .CO(n14), .S(product[1]) );
  FA1D0 U17 ( .A(n43), .B(n21), .CI(n51), .CO(n17), .S(n18) );
  FA1D0 U18 ( .A(n52), .B(n44), .CI(n169), .CO(n19), .S(n20) );
  FA1D0 U20 ( .A(n171), .B(n53), .CI(n169), .CO(n23), .S(n24) );
  FA1D0 U22 ( .A(n63), .B(n45), .CI(n54), .CO(n26), .S(n27) );
  FA1D0 U23 ( .A(n164), .B(n46), .CI(n55), .CO(n28), .S(n29) );
  FA1D0 U24 ( .A(n163), .B(n47), .CI(n56), .CO(n30), .S(n31) );
  FA1D0 U25 ( .A(n162), .B(n48), .CI(n57), .CO(n32), .S(n33) );
  FA1D0 U26 ( .A(n161), .B(n49), .CI(n58), .CO(n34), .S(n35) );
  FA1D0 U27 ( .A(n160), .B(n50), .CI(n59), .CO(n36), .S(n37) );
  HA1D0 U28 ( .A(n60), .B(n165), .CO(n38), .S(n39) );
  XNR2D1 U118 ( .A1(b[1]), .A2(n177), .ZN(n160) );
  XNR2D1 U119 ( .A1(b[1]), .A2(n176), .ZN(n161) );
  XNR2D1 U120 ( .A1(b[1]), .A2(n175), .ZN(n162) );
  XNR2D1 U121 ( .A1(b[1]), .A2(n174), .ZN(n163) );
  XNR2D1 U122 ( .A1(b[1]), .A2(n173), .ZN(n164) );
  INVD1 U123 ( .I(n15), .ZN(n170) );
  INVD1 U124 ( .I(b[3]), .ZN(n168) );
  INVD1 U125 ( .I(n63), .ZN(n171) );
  INVD1 U126 ( .I(n21), .ZN(n169) );
  XNR2D1 U127 ( .A1(b[1]), .A2(n178), .ZN(n165) );
  INVD1 U128 ( .I(a[0]), .ZN(n181) );
  XNR2D1 U131 ( .A1(b[1]), .A2(n179), .ZN(n166) );
  XNR2D1 U132 ( .A1(b[1]), .A2(n180), .ZN(n167) );
  INVD1 U133 ( .I(a[9]), .ZN(n172) );
  INVD1 U134 ( .I(a[1]), .ZN(n180) );
  INVD1 U135 ( .I(a[2]), .ZN(n179) );
  INVD1 U136 ( .I(a[3]), .ZN(n178) );
  INVD1 U137 ( .I(a[4]), .ZN(n177) );
  INVD1 U138 ( .I(a[5]), .ZN(n176) );
  INVD1 U139 ( .I(a[6]), .ZN(n175) );
  INVD1 U140 ( .I(a[7]), .ZN(n174) );
  INVD1 U141 ( .I(a[8]), .ZN(n173) );
  CKND0 U142 ( .I(n181), .ZN(product[0]) );
  AN2D0 U143 ( .A1(n181), .A2(b[1]), .Z(n41) );
  CKND0 U144 ( .I(n1), .ZN(product[15]) );
  XNR2D0 U145 ( .A1(b[1]), .A2(n172), .ZN(n63) );
  NR2D0 U146 ( .A1(n182), .A2(n181), .ZN(n61) );
  OAI22D0 U147 ( .A1(n183), .A2(n184), .B1(n182), .B2(n185), .ZN(n60) );
  CKXOR2D0 U148 ( .A1(b[3]), .A2(n181), .Z(n183) );
  OAI22D0 U149 ( .A1(n185), .A2(n184), .B1(n182), .B2(n186), .ZN(n59) );
  CKXOR2D0 U150 ( .A1(b[3]), .A2(n180), .Z(n185) );
  OAI22D0 U151 ( .A1(n186), .A2(n184), .B1(n182), .B2(n187), .ZN(n58) );
  CKXOR2D0 U152 ( .A1(b[3]), .A2(n179), .Z(n186) );
  OAI22D0 U153 ( .A1(n187), .A2(n184), .B1(n182), .B2(n188), .ZN(n57) );
  CKXOR2D0 U154 ( .A1(b[3]), .A2(n178), .Z(n187) );
  OAI22D0 U155 ( .A1(n188), .A2(n184), .B1(n182), .B2(n189), .ZN(n56) );
  CKXOR2D0 U156 ( .A1(b[3]), .A2(n177), .Z(n188) );
  OAI22D0 U157 ( .A1(n189), .A2(n184), .B1(n182), .B2(n190), .ZN(n55) );
  CKXOR2D0 U158 ( .A1(b[3]), .A2(n176), .Z(n189) );
  OAI22D0 U159 ( .A1(n190), .A2(n184), .B1(n182), .B2(n191), .ZN(n54) );
  CKXOR2D0 U160 ( .A1(b[3]), .A2(n175), .Z(n190) );
  OAI22D0 U161 ( .A1(n191), .A2(n184), .B1(n182), .B2(n192), .ZN(n53) );
  CKXOR2D0 U162 ( .A1(b[3]), .A2(n174), .Z(n191) );
  OAI22D0 U163 ( .A1(n192), .A2(n184), .B1(n182), .B2(n193), .ZN(n52) );
  CKXOR2D0 U164 ( .A1(b[3]), .A2(n173), .Z(n192) );
  AO21D0 U165 ( .A1(n184), .A2(n182), .B(n193), .Z(n51) );
  CKXOR2D0 U166 ( .A1(n168), .A2(a[9]), .Z(n193) );
  NR2D0 U167 ( .A1(b[3]), .A2(n181), .ZN(n50) );
  OAI22D0 U168 ( .A1(n181), .A2(n168), .B1(b[3]), .B2(n180), .ZN(n49) );
  OAI22D0 U169 ( .A1(n180), .A2(n168), .B1(b[3]), .B2(n179), .ZN(n48) );
  OAI22D0 U170 ( .A1(n179), .A2(n168), .B1(b[3]), .B2(n178), .ZN(n47) );
  OAI22D0 U171 ( .A1(n178), .A2(n168), .B1(b[3]), .B2(n177), .ZN(n46) );
  OAI22D0 U172 ( .A1(n177), .A2(n168), .B1(b[3]), .B2(n176), .ZN(n45) );
  OAI22D0 U173 ( .A1(n175), .A2(n168), .B1(b[3]), .B2(n174), .ZN(n44) );
  OAI22D0 U174 ( .A1(n174), .A2(n168), .B1(b[3]), .B2(n173), .ZN(n43) );
  OAI32D0 U175 ( .A1(n168), .A2(a[0]), .A3(n182), .B1(n168), .B2(n184), .ZN(
        n40) );
  OAI22D0 U177 ( .A1(n176), .A2(n168), .B1(b[3]), .B2(n175), .ZN(n21) );
  OAI22D0 U178 ( .A1(b[3]), .A2(n172), .B1(n173), .B2(n168), .ZN(n15) );
  OAI211D0 U129 ( .A1(b[2]), .A2(b[3]), .B(n195), .C(n182), .ZN(n184) );
  XNR2D0 U130 ( .A1(b[2]), .A2(b[1]), .ZN(n182) );
  CKND2D0 U176 ( .A1(b[2]), .A2(b[3]), .ZN(n195) );
endmodule



    module oadm_fixed_divmul_root_opt_3_16_10_16_8_e3_b6_95_7c_69_5a_4e_44_DW_mult_tc_0 ( 
        a, b, product );
  input [9:0] a;
  input [5:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n17,
         n18, n19, n20, n21, n23, n24, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n63,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n195;

  FA1D0 U2 ( .A(n172), .B(n15), .CI(n2), .CO(n1), .S(product[14]) );
  FA1D0 U3 ( .A(n17), .B(n170), .CI(n3), .CO(n2), .S(product[13]) );
  FA1D0 U4 ( .A(n19), .B(n18), .CI(n4), .CO(n3), .S(product[12]) );
  FA1D0 U5 ( .A(n23), .B(n20), .CI(n5), .CO(n4), .S(product[11]) );
  FA1D0 U6 ( .A(n24), .B(n26), .CI(n6), .CO(n5), .S(product[10]) );
  FA1D0 U7 ( .A(n28), .B(n27), .CI(n7), .CO(n6), .S(product[9]) );
  FA1D0 U8 ( .A(n30), .B(n29), .CI(n8), .CO(n7), .S(product[8]) );
  FA1D0 U9 ( .A(n32), .B(n31), .CI(n9), .CO(n8), .S(product[7]) );
  FA1D0 U10 ( .A(n34), .B(n33), .CI(n10), .CO(n9), .S(product[6]) );
  FA1D0 U11 ( .A(n36), .B(n35), .CI(n11), .CO(n10), .S(product[5]) );
  FA1D0 U12 ( .A(n37), .B(n38), .CI(n12), .CO(n11), .S(product[4]) );
  FA1D0 U13 ( .A(n39), .B(n40), .CI(n13), .CO(n12), .S(product[3]) );
  FA1D0 U14 ( .A(n166), .B(n61), .CI(n14), .CO(n13), .S(product[2]) );
  HA1D0 U15 ( .A(n167), .B(n41), .CO(n14), .S(product[1]) );
  FA1D0 U17 ( .A(n43), .B(n21), .CI(n51), .CO(n17), .S(n18) );
  FA1D0 U18 ( .A(n52), .B(n44), .CI(n169), .CO(n19), .S(n20) );
  FA1D0 U20 ( .A(n171), .B(n53), .CI(n169), .CO(n23), .S(n24) );
  FA1D0 U22 ( .A(n63), .B(n45), .CI(n54), .CO(n26), .S(n27) );
  FA1D0 U23 ( .A(n164), .B(n46), .CI(n55), .CO(n28), .S(n29) );
  FA1D0 U24 ( .A(n163), .B(n47), .CI(n56), .CO(n30), .S(n31) );
  FA1D0 U25 ( .A(n162), .B(n48), .CI(n57), .CO(n32), .S(n33) );
  FA1D0 U26 ( .A(n161), .B(n49), .CI(n58), .CO(n34), .S(n35) );
  FA1D0 U27 ( .A(n160), .B(n50), .CI(n59), .CO(n36), .S(n37) );
  HA1D0 U28 ( .A(n60), .B(n165), .CO(n38), .S(n39) );
  XNR2D1 U118 ( .A1(b[1]), .A2(n177), .ZN(n160) );
  XNR2D1 U119 ( .A1(b[1]), .A2(n176), .ZN(n161) );
  XNR2D1 U120 ( .A1(b[1]), .A2(n175), .ZN(n162) );
  XNR2D1 U121 ( .A1(b[1]), .A2(n174), .ZN(n163) );
  XNR2D1 U122 ( .A1(b[1]), .A2(n173), .ZN(n164) );
  INVD1 U123 ( .I(n15), .ZN(n170) );
  INVD1 U124 ( .I(n63), .ZN(n171) );
  INVD1 U125 ( .I(n21), .ZN(n169) );
  XNR2D1 U126 ( .A1(b[1]), .A2(n178), .ZN(n165) );
  INVD1 U127 ( .I(a[0]), .ZN(n181) );
  INVD1 U129 ( .I(b[3]), .ZN(n168) );
  XNR2D1 U131 ( .A1(b[1]), .A2(n179), .ZN(n166) );
  XNR2D1 U132 ( .A1(b[1]), .A2(n180), .ZN(n167) );
  INVD1 U133 ( .I(a[9]), .ZN(n172) );
  INVD1 U134 ( .I(a[1]), .ZN(n180) );
  INVD1 U135 ( .I(a[2]), .ZN(n179) );
  INVD1 U136 ( .I(a[3]), .ZN(n178) );
  INVD1 U137 ( .I(a[4]), .ZN(n177) );
  INVD1 U138 ( .I(a[5]), .ZN(n176) );
  INVD1 U139 ( .I(a[6]), .ZN(n175) );
  INVD1 U140 ( .I(a[7]), .ZN(n174) );
  INVD1 U141 ( .I(a[8]), .ZN(n173) );
  CKND0 U142 ( .I(n181), .ZN(product[0]) );
  AN2D0 U143 ( .A1(n181), .A2(b[1]), .Z(n41) );
  CKND0 U144 ( .I(n1), .ZN(product[15]) );
  XNR2D0 U145 ( .A1(b[1]), .A2(n172), .ZN(n63) );
  NR2D0 U146 ( .A1(n182), .A2(n181), .ZN(n61) );
  OAI22D0 U147 ( .A1(n183), .A2(n184), .B1(n182), .B2(n185), .ZN(n60) );
  CKXOR2D0 U148 ( .A1(b[3]), .A2(n181), .Z(n183) );
  OAI22D0 U149 ( .A1(n185), .A2(n184), .B1(n182), .B2(n186), .ZN(n59) );
  CKXOR2D0 U150 ( .A1(b[3]), .A2(n180), .Z(n185) );
  OAI22D0 U151 ( .A1(n186), .A2(n184), .B1(n182), .B2(n187), .ZN(n58) );
  CKXOR2D0 U152 ( .A1(b[3]), .A2(n179), .Z(n186) );
  OAI22D0 U153 ( .A1(n187), .A2(n184), .B1(n182), .B2(n188), .ZN(n57) );
  CKXOR2D0 U154 ( .A1(b[3]), .A2(n178), .Z(n187) );
  OAI22D0 U155 ( .A1(n188), .A2(n184), .B1(n182), .B2(n189), .ZN(n56) );
  CKXOR2D0 U156 ( .A1(b[3]), .A2(n177), .Z(n188) );
  OAI22D0 U157 ( .A1(n189), .A2(n184), .B1(n182), .B2(n190), .ZN(n55) );
  CKXOR2D0 U158 ( .A1(b[3]), .A2(n176), .Z(n189) );
  OAI22D0 U159 ( .A1(n190), .A2(n184), .B1(n182), .B2(n191), .ZN(n54) );
  CKXOR2D0 U160 ( .A1(b[3]), .A2(n175), .Z(n190) );
  OAI22D0 U161 ( .A1(n191), .A2(n184), .B1(n182), .B2(n192), .ZN(n53) );
  CKXOR2D0 U162 ( .A1(b[3]), .A2(n174), .Z(n191) );
  OAI22D0 U163 ( .A1(n192), .A2(n184), .B1(n182), .B2(n193), .ZN(n52) );
  CKXOR2D0 U164 ( .A1(b[3]), .A2(n173), .Z(n192) );
  AO21D0 U165 ( .A1(n184), .A2(n182), .B(n193), .Z(n51) );
  CKXOR2D0 U166 ( .A1(n168), .A2(a[9]), .Z(n193) );
  NR2D0 U167 ( .A1(b[3]), .A2(n181), .ZN(n50) );
  OAI22D0 U168 ( .A1(n181), .A2(n168), .B1(b[3]), .B2(n180), .ZN(n49) );
  OAI22D0 U169 ( .A1(n180), .A2(n168), .B1(b[3]), .B2(n179), .ZN(n48) );
  OAI22D0 U170 ( .A1(n179), .A2(n168), .B1(b[3]), .B2(n178), .ZN(n47) );
  OAI22D0 U171 ( .A1(n178), .A2(n168), .B1(b[3]), .B2(n177), .ZN(n46) );
  OAI22D0 U172 ( .A1(n177), .A2(n168), .B1(b[3]), .B2(n176), .ZN(n45) );
  OAI22D0 U173 ( .A1(n175), .A2(n168), .B1(b[3]), .B2(n174), .ZN(n44) );
  OAI22D0 U174 ( .A1(n174), .A2(n168), .B1(b[3]), .B2(n173), .ZN(n43) );
  OAI32D0 U175 ( .A1(n168), .A2(a[0]), .A3(n182), .B1(n168), .B2(n184), .ZN(
        n40) );
  OAI22D0 U177 ( .A1(n176), .A2(n168), .B1(b[3]), .B2(n175), .ZN(n21) );
  OAI22D0 U178 ( .A1(b[3]), .A2(n172), .B1(n173), .B2(n168), .ZN(n15) );
  OAI211D0 U128 ( .A1(b[2]), .A2(b[3]), .B(n195), .C(n182), .ZN(n184) );
  XNR2D0 U130 ( .A1(b[2]), .A2(b[1]), .ZN(n182) );
  CKND2D0 U176 ( .A1(b[2]), .A2(b[3]), .ZN(n195) );
endmodule



    module oadm_fixed_divmul_root_opt_3_16_10_16_8_e3_b6_95_7c_69_5a_4e_44_DW_mult_uns_0 ( 
        a, b, product );
  input [4:0] a;
  input [4:0] b;
  output [9:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n20, n21, n22, n24, n25, n26, n27, n28, n29, n36, n37, n41,
         n42, n43, n46, n47, n48, n88, n89, n90, n91, n95, n96, n97, n98, n99,
         n102, n103, n104, n105, n106, n107, n108;

  FA1D0 U3 ( .A(n12), .B(n10), .CI(n3), .CO(n2), .S(product[7]) );
  FA1D0 U4 ( .A(n15), .B(n13), .CI(n4), .CO(n3), .S(product[6]) );
  FA1D0 U5 ( .A(n16), .B(n20), .CI(n5), .CO(n4), .S(product[5]) );
  FA1D0 U6 ( .A(n21), .B(n24), .CI(n6), .CO(n5), .S(product[4]) );
  FA1D0 U7 ( .A(n25), .B(n27), .CI(n7), .CO(n6), .S(product[3]) );
  FA1D0 U8 ( .A(n8), .B(a[2]), .CI(n29), .CO(n7), .S(product[2]) );
  HA1D0 U9 ( .A(b[1]), .B(a[1]), .CO(n8), .S(product[1]) );
  FA1D0 U10 ( .A(b[3]), .B(a[3]), .CI(n11), .CO(n9), .S(n10) );
  CMPE42D1 U11 ( .A(b[2]), .B(a[2]), .C(n36), .CIX(n14), .D(n17), .CO(n12), 
        .COX(n11), .S(n13) );
  CMPE42D1 U12 ( .A(n41), .B(a[1]), .C(n22), .CIX(n89), .D(n18), .CO(n15), 
        .COX(n14), .S(n16) );
  HA1D0 U13 ( .A(b[1]), .B(n37), .CO(n17), .S(n18) );
  FA1D0 U16 ( .A(n47), .B(b[3]), .CI(n28), .CO(n24), .S(n25) );
  HA1D0 U17 ( .A(a[3]), .B(n43), .CO(n26), .S(n27) );
  HA1D0 U18 ( .A(n48), .B(b[2]), .CO(n28), .S(n29) );
  XNR3D1 U58 ( .A1(n42), .A2(n46), .A3(n102), .ZN(n21) );
  INVD1 U59 ( .I(n22), .ZN(n95) );
  ND2D1 U60 ( .A1(n46), .A2(n26), .ZN(n105) );
  IND2D1 U61 ( .A1(n46), .B1(n26), .ZN(n104) );
  NR2D1 U63 ( .A1(n46), .A2(n22), .ZN(n106) );
  AN2XD1 U64 ( .A1(n46), .A2(n95), .Z(n88) );
  INVD1 U68 ( .I(b[3]), .ZN(n90) );
  INVD1 U69 ( .I(b[1]), .ZN(n99) );
  INVD1 U70 ( .I(a[1]), .ZN(n97) );
  INVD1 U71 ( .I(a[3]), .ZN(n91) );
  INVD1 U72 ( .I(a[2]), .ZN(n96) );
  OR2D1 U73 ( .A1(n46), .A2(n42), .Z(n89) );
  INVD1 U74 ( .I(b[2]), .ZN(n98) );
  XNR2D1 U75 ( .A1(n2), .A2(n9), .ZN(product[8]) );
  MUX2ND0 U76 ( .I0(n104), .I1(n105), .S(n42), .ZN(n103) );
  CKXOR2D1 U77 ( .A1(n26), .A2(n95), .Z(n102) );
  NR2D0 U79 ( .A1(n99), .A2(n97), .ZN(n48) );
  NR2D0 U80 ( .A1(n98), .A2(n97), .ZN(n47) );
  NR2D0 U81 ( .A1(n90), .A2(n97), .ZN(n46) );
  NR2D0 U82 ( .A1(n99), .A2(n96), .ZN(n43) );
  NR2D0 U83 ( .A1(n98), .A2(n96), .ZN(n42) );
  NR2D0 U84 ( .A1(n90), .A2(n96), .ZN(n41) );
  NR2D0 U85 ( .A1(n99), .A2(n91), .ZN(n22) );
  NR2D0 U86 ( .A1(n98), .A2(n91), .ZN(n37) );
  NR2D0 U87 ( .A1(n90), .A2(n91), .ZN(n36) );
  OR2D0 U56 ( .A1(n9), .A2(n2), .Z(product[9]) );
  AO211D0 U57 ( .A1(n108), .A2(n26), .B(n103), .C(n107), .Z(n20) );
  MUX2D0 U62 ( .I0(n106), .I1(n88), .S(n42), .Z(n107) );
  CKND0 U65 ( .I(n22), .ZN(n108) );
endmodule


module oadm_fixed_divmul_root_opt_3_16_10_16_8_e3_b6_95_7c_69_5a_4e_44 ( x, y, 
        divide_mode, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  input divide_mode;
  wire   x_residual_19_, y_residual_19_, N31, N32, N33, N34, N35, N36, N37,
         N38, N39, N40, N41, N42, N43, N44, N45, N46, N47, N55, N56, N57, N58,
         N59, N60, N61, N62, N63, N64, N65, N66, N67, N68, N69, N72, n360,
         n380, n390, n400, n410, n420, n430, n54, n550, n560, n570, n580, n590,
         n600, n610, n620, n630, n640, n660, n670, n680, n690, n70, n71, n720,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, N99, N98, N97, N96, N95, N94, N930,
         N920, N910, N900, N890, N880, N870, N130, N129, N128, N127, N126,
         N125, N124, N123, N122, N115, N114, N113, N112, N105, N104, N103,
         N102, N101, N100, add_77_carry_2_, add_77_carry_3_, n1, n2, n3, n4,
         n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n17, n18, n19, n20,
         n21, n22, n23, n24, n26, n29, n30, n320, n340, n350, n440, n450, n460,
         n470, n48, n49, n50, n51, n52, n53, n650, n83, n940, n950, n960, n970,
         n980, n990, n1000, n1010, n1020, n1030;
  wire   [19:10] x_mantissa;
  wire   [19:10] y_mantissa;
  wire   [3:1] x_midpoint;
  wire   [3:1] y_midpoint;
  wire   [5:0] x_shared_residual;
  wire   [5:0] y_shared_residual;
  wire   [15:0] x_product;
  wire   [15:1] y_product;
  wire   [4:2] midpoint_sum;
  wire   [24:6] plane_value;
  wire   [7:0] coefficient;
  wire   [16:0] reduced_scale_product;
  wire   [22:5] normalized_fraction;
  wire   [2:0] exponent_adjust;
  wire   [24:8] add_0_root_add_0_root_add_80_3_carry;
  wire   [24:8] add_1_root_add_0_root_add_80_3_carry;
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
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25;

  MAOI22D1 U85 ( .A1(n990), .A2(n1000), .B1(n590), .B2(n360), .ZN(n82) );
  AN3XD1 U106 ( .A1(n93), .A2(n85), .A3(n89), .Z(n90) );
  AN2XD1 U110 ( .A1(n86), .A2(n93), .Z(n84) );
  fp32_normal_finite_wrapper fp_wrapper ( .x({x[31:10], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y({y[31:10], 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .divide_mode(divide_mode), 
        .fraction_x({x_midpoint, x_mantissa, SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9}), .fraction_y({y_midpoint, y_mantissa, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19}), 
        .result_fraction({normalized_fraction, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .exponent_adjust({exponent_adjust[2], exponent_adjust[2], 
        exponent_adjust[0]}), .result({result[31:5], SYNOPSYS_UNCONNECTED__20, 
        SYNOPSYS_UNCONNECTED__21, SYNOPSYS_UNCONNECTED__22, 
        SYNOPSYS_UNCONNECTED__23, SYNOPSYS_UNCONNECTED__24}) );
  oadm_fixed_divmul_root_opt_3_16_10_16_8_e3_b6_95_7c_69_5a_4e_44_DW_mult_uns_1 mult_113 ( 
        .a(plane_value[24:16]), .b(coefficient), .product(
        reduced_scale_product) );
  oadm_fixed_divmul_root_opt_3_16_10_16_8_e3_b6_95_7c_69_5a_4e_44_DW_mult_tc_1 mult_61 ( 
        .a({x_residual_19_, x_mantissa[18:16], x_shared_residual}), .b({n1030, 
        n1, y_midpoint, n1}), .product(x_product) );
  oadm_fixed_divmul_root_opt_3_16_10_16_8_e3_b6_95_7c_69_5a_4e_44_DW_mult_tc_0 mult_63 ( 
        .a({y_residual_19_, y_mantissa[18:16], y_shared_residual}), .b({n1030, 
        n1, x_midpoint, n1}), .product({y_product, N31}) );
  oadm_fixed_divmul_root_opt_3_16_10_16_8_e3_b6_95_7c_69_5a_4e_44_DW_mult_uns_0 mult_74 ( 
        .a({n1, x_midpoint, n1}), .b({n1, y_midpoint, n1}), .product({N130, 
        N129, N128, N127, N126, N125, N124, N123, N122, 
        SYNOPSYS_UNCONNECTED__25}) );
  TIEH U3 ( .Z(n1) );
  AO22D0 U4 ( .A1(n30), .A2(y_product[15]), .B1(N47), .B2(divide_mode), .Z(N72) );
  AN2XD1 U5 ( .A1(x_product[0]), .A2(N112), .Z(n2) );
  AN2XD1 U6 ( .A1(N870), .A2(N31), .Z(n3) );
  AOI22D1 U7 ( .A1(n430), .A2(plane_value[6]), .B1(n970), .B2(plane_value[7]), 
        .ZN(n4) );
  ND2D1 U8 ( .A1(n590), .A2(n570), .ZN(exponent_adjust[2]) );
  AN2XD1 U9 ( .A1(n6), .A2(n940), .Z(n5) );
  AN2XD1 U11 ( .A1(n7), .A2(n83), .Z(n6) );
  AN2XD1 U12 ( .A1(n8), .A2(n650), .Z(n7) );
  AN2XD1 U13 ( .A1(n9), .A2(n53), .Z(n8) );
  AN2XD1 U14 ( .A1(n10), .A2(n52), .Z(n9) );
  AN2XD1 U15 ( .A1(n11), .A2(n51), .Z(n10) );
  AN2XD1 U16 ( .A1(n12), .A2(n50), .Z(n11) );
  AN2XD1 U17 ( .A1(n13), .A2(n49), .Z(n12) );
  AN2XD1 U18 ( .A1(n14), .A2(n48), .Z(n13) );
  AN2XD1 U19 ( .A1(n15), .A2(n470), .Z(n14) );
  AN2XD1 U20 ( .A1(n19), .A2(n460), .Z(n15) );
  INVD1 U21 ( .I(n590), .ZN(n980) );
  INVD1 U22 ( .I(n430), .ZN(n960) );
  INVD1 U23 ( .I(n570), .ZN(n990) );
  IND3D1 U24 ( .A1(n54), .B1(n550), .B2(n29), .ZN(n590) );
  XOR3D1 U25 ( .A1(N105), .A2(N72), .A3(
        add_0_root_add_0_root_add_80_3_carry[24]), .Z(plane_value[24]) );
  XOR3D1 U26 ( .A1(N130), .A2(x_product[15]), .A3(
        add_1_root_add_0_root_add_80_3_carry[24]), .Z(N105) );
  FA1D0 U27 ( .A(N103), .B(N72), .CI(add_0_root_add_0_root_add_80_3_carry[22]), 
        .CO(add_0_root_add_0_root_add_80_3_carry[23]), .S(plane_value[22]) );
  FA1D0 U28 ( .A(N104), .B(N72), .CI(add_0_root_add_0_root_add_80_3_carry[23]), 
        .CO(add_0_root_add_0_root_add_80_3_carry[24]), .S(plane_value[23]) );
  INVD1 U29 ( .I(y_product[14]), .ZN(n940) );
  FA1D0 U30 ( .A(N127), .B(x_product[15]), .CI(
        add_1_root_add_0_root_add_80_3_carry[21]), .CO(
        add_1_root_add_0_root_add_80_3_carry[22]), .S(N102) );
  FA1D0 U31 ( .A(N129), .B(x_product[15]), .CI(
        add_1_root_add_0_root_add_80_3_carry[23]), .CO(
        add_1_root_add_0_root_add_80_3_carry[24]), .S(N104) );
  FA1D0 U32 ( .A(N128), .B(x_product[15]), .CI(
        add_1_root_add_0_root_add_80_3_carry[22]), .CO(
        add_1_root_add_0_root_add_80_3_carry[23]), .S(N103) );
  INVD1 U33 ( .I(y_product[13]), .ZN(n83) );
  INVD1 U34 ( .I(y_product[12]), .ZN(n650) );
  FA1D0 U35 ( .A(N126), .B(x_product[14]), .CI(
        add_1_root_add_0_root_add_80_3_carry[20]), .CO(
        add_1_root_add_0_root_add_80_3_carry[21]), .S(N101) );
  ND3D1 U36 ( .A1(n550), .A2(n54), .A3(n29), .ZN(n570) );
  INVD1 U37 ( .I(y_product[11]), .ZN(n53) );
  FA1D0 U38 ( .A(N125), .B(x_product[13]), .CI(
        add_1_root_add_0_root_add_80_3_carry[19]), .CO(
        add_1_root_add_0_root_add_80_3_carry[20]), .S(N100) );
  INVD1 U39 ( .I(y_product[10]), .ZN(n52) );
  FA1D0 U40 ( .A(N124), .B(x_product[12]), .CI(
        add_1_root_add_0_root_add_80_3_carry[18]), .CO(
        add_1_root_add_0_root_add_80_3_carry[19]), .S(N99) );
  INVD1 U41 ( .I(y_product[9]), .ZN(n51) );
  INVD1 U42 ( .I(y_product[8]), .ZN(n50) );
  ND2D1 U43 ( .A1(n29), .A2(n590), .ZN(exponent_adjust[0]) );
  INVD1 U44 ( .I(y_product[7]), .ZN(n49) );
  INVD1 U45 ( .I(y_product[6]), .ZN(n48) );
  INVD1 U46 ( .I(y_product[5]), .ZN(n470) );
  INVD1 U47 ( .I(y_product[4]), .ZN(n460) );
  AN2XD1 U49 ( .A1(n20), .A2(x_product[7]), .Z(n17) );
  AN2XD1 U50 ( .A1(add_1_root_add_0_root_add_80_3_carry[11]), .A2(x_product[5]), .Z(n18) );
  AN2XD1 U51 ( .A1(n21), .A2(n450), .Z(n19) );
  AN2XD1 U52 ( .A1(n18), .A2(x_product[6]), .Z(n20) );
  AN2XD1 U53 ( .A1(n22), .A2(n440), .Z(n21) );
  OAI222D0 U56 ( .A1(n400), .A2(n960), .B1(divide_mode), .B2(n410), .C1(n29), 
        .C2(n360), .ZN(normalized_fraction[8]) );
  AOI22D1 U57 ( .A1(plane_value[6]), .A2(n990), .B1(n980), .B2(plane_value[7]), 
        .ZN(n410) );
  OAI22D1 U58 ( .A1(n29), .A2(n400), .B1(divide_mode), .B2(n420), .ZN(
        normalized_fraction[7]) );
  AOI22D1 U59 ( .A1(n430), .A2(plane_value[7]), .B1(plane_value[6]), .B2(n980), 
        .ZN(n420) );
  OAI221D0 U60 ( .A1(n71), .A2(n960), .B1(n29), .B2(n690), .C(n74), .ZN(
        normalized_fraction[15]) );
  OA22D0 U61 ( .A1(n570), .A2(n75), .B1(n590), .B2(n73), .Z(n74) );
  OAI221D0 U62 ( .A1(n690), .A2(n960), .B1(n29), .B2(n670), .C(n720), .ZN(
        normalized_fraction[16]) );
  OA22D0 U63 ( .A1(n570), .A2(n73), .B1(n590), .B2(n71), .Z(n720) );
  OAI221D0 U64 ( .A1(n670), .A2(n960), .B1(n29), .B2(n640), .C(n70), .ZN(
        normalized_fraction[17]) );
  OA22D0 U65 ( .A1(n570), .A2(n71), .B1(n590), .B2(n690), .Z(n70) );
  OAI221D0 U66 ( .A1(n640), .A2(n960), .B1(n29), .B2(n620), .C(n680), .ZN(
        normalized_fraction[18]) );
  OA22D0 U67 ( .A1(n570), .A2(n690), .B1(n590), .B2(n670), .Z(n680) );
  OAI221D0 U68 ( .A1(n620), .A2(n960), .B1(n29), .B2(n580), .C(n660), .ZN(
        normalized_fraction[19]) );
  OA22D0 U69 ( .A1(n570), .A2(n670), .B1(n590), .B2(n640), .Z(n660) );
  OAI221D0 U70 ( .A1(n580), .A2(n960), .B1(n29), .B2(n600), .C(n630), .ZN(
        normalized_fraction[20]) );
  OA22D0 U71 ( .A1(n570), .A2(n640), .B1(n590), .B2(n620), .Z(n630) );
  OAI221D0 U72 ( .A1(n79), .A2(n960), .B1(n29), .B2(n77), .C(n81), .ZN(
        normalized_fraction[11]) );
  OA22D0 U73 ( .A1(n570), .A2(n360), .B1(n590), .B2(n380), .Z(n81) );
  OAI221D0 U74 ( .A1(n77), .A2(n960), .B1(n29), .B2(n75), .C(n80), .ZN(
        normalized_fraction[12]) );
  OA22D0 U75 ( .A1(n570), .A2(n380), .B1(n590), .B2(n79), .Z(n80) );
  OAI221D0 U76 ( .A1(n75), .A2(n960), .B1(n29), .B2(n73), .C(n78), .ZN(
        normalized_fraction[13]) );
  OA22D0 U77 ( .A1(n570), .A2(n79), .B1(n590), .B2(n77), .Z(n78) );
  OAI221D0 U78 ( .A1(n73), .A2(n960), .B1(n29), .B2(n71), .C(n76), .ZN(
        normalized_fraction[14]) );
  OA22D0 U79 ( .A1(n570), .A2(n77), .B1(n590), .B2(n75), .Z(n76) );
  OAI221D0 U80 ( .A1(n54), .A2(n960), .B1(n29), .B2(n550), .C(n560), .ZN(
        normalized_fraction[22]) );
  OA22D0 U81 ( .A1(n570), .A2(n580), .B1(n590), .B2(n600), .Z(n560) );
  OAI221D0 U82 ( .A1(n600), .A2(n960), .B1(n29), .B2(n54), .C(n610), .ZN(
        normalized_fraction[21]) );
  OA22D0 U83 ( .A1(n570), .A2(n620), .B1(n590), .B2(n580), .Z(n610) );
  NR2D1 U84 ( .A1(n970), .A2(n550), .ZN(n430) );
  OAI221D0 U86 ( .A1(n380), .A2(n960), .B1(n29), .B2(n79), .C(n82), .ZN(
        normalized_fraction[10]) );
  INVD1 U87 ( .I(n29), .ZN(n970) );
  NR2D1 U88 ( .A1(divide_mode), .A2(n4), .ZN(normalized_fraction[6]) );
  NR2D1 U89 ( .A1(divide_mode), .A2(n1020), .ZN(normalized_fraction[5]) );
  ND2D1 U90 ( .A1(n970), .A2(plane_value[6]), .ZN(n1020) );
  INVD1 U91 ( .I(n400), .ZN(n1000) );
  AOI22D1 U92 ( .A1(reduced_scale_product[15]), .A2(divide_mode), .B1(
        plane_value[23]), .B2(n30), .ZN(n550) );
  FA1D0 U93 ( .A(N102), .B(N69), .CI(add_0_root_add_0_root_add_80_3_carry[21]), 
        .CO(add_0_root_add_0_root_add_80_3_carry[22]), .S(plane_value[21]) );
  AO22D0 U94 ( .A1(n30), .A2(y_product[15]), .B1(N46), .B2(divide_mode), .Z(
        N69) );
  FA1D0 U95 ( .A(N101), .B(N68), .CI(add_0_root_add_0_root_add_80_3_carry[20]), 
        .CO(add_0_root_add_0_root_add_80_3_carry[21]), .S(plane_value[20]) );
  AO22D0 U96 ( .A1(y_product[14]), .A2(n30), .B1(N45), .B2(divide_mode), .Z(
        N68) );
  FA1D0 U97 ( .A(N100), .B(N67), .CI(add_0_root_add_0_root_add_80_3_carry[19]), 
        .CO(add_0_root_add_0_root_add_80_3_carry[20]), .S(plane_value[19]) );
  AO22D0 U98 ( .A1(y_product[13]), .A2(n30), .B1(N44), .B2(divide_mode), .Z(
        N67) );
  FA1D0 U103 ( .A(N99), .B(N66), .CI(add_0_root_add_0_root_add_80_3_carry[18]), 
        .CO(add_0_root_add_0_root_add_80_3_carry[19]), .S(plane_value[18]) );
  AO22D0 U104 ( .A1(y_product[12]), .A2(n30), .B1(N43), .B2(divide_mode), .Z(
        N66) );
  FA1D0 U105 ( .A(N98), .B(N65), .CI(add_0_root_add_0_root_add_80_3_carry[17]), 
        .CO(add_0_root_add_0_root_add_80_3_carry[18]), .S(plane_value[17]) );
  AO22D0 U107 ( .A1(y_product[11]), .A2(n30), .B1(N42), .B2(divide_mode), .Z(
        N65) );
  FA1D0 U108 ( .A(N97), .B(N64), .CI(add_0_root_add_0_root_add_80_3_carry[16]), 
        .CO(add_0_root_add_0_root_add_80_3_carry[17]), .S(plane_value[16]) );
  AO22D0 U109 ( .A1(y_product[10]), .A2(n30), .B1(N41), .B2(divide_mode), .Z(
        N64) );
  FA1D0 U111 ( .A(N96), .B(N63), .CI(add_0_root_add_0_root_add_80_3_carry[15]), 
        .CO(add_0_root_add_0_root_add_80_3_carry[16]), .S(plane_value[15]) );
  AO22D0 U112 ( .A1(y_product[9]), .A2(n30), .B1(N40), .B2(divide_mode), .Z(
        N63) );
  FA1D0 U113 ( .A(N123), .B(x_product[11]), .CI(
        add_1_root_add_0_root_add_80_3_carry[17]), .CO(
        add_1_root_add_0_root_add_80_3_carry[18]), .S(N98) );
  AOI22D1 U114 ( .A1(reduced_scale_product[14]), .A2(divide_mode), .B1(
        plane_value[22]), .B2(n30), .ZN(n54) );
  FA1D0 U115 ( .A(N95), .B(N62), .CI(add_0_root_add_0_root_add_80_3_carry[14]), 
        .CO(add_0_root_add_0_root_add_80_3_carry[15]), .S(plane_value[14]) );
  AO22D0 U116 ( .A1(y_product[8]), .A2(n30), .B1(N39), .B2(divide_mode), .Z(
        N62) );
  FA1D0 U117 ( .A(N122), .B(x_product[10]), .CI(
        add_1_root_add_0_root_add_80_3_carry[16]), .CO(
        add_1_root_add_0_root_add_80_3_carry[17]), .S(N97) );
  FA1D0 U121 ( .A(N94), .B(N61), .CI(add_0_root_add_0_root_add_80_3_carry[13]), 
        .CO(add_0_root_add_0_root_add_80_3_carry[14]), .S(plane_value[13]) );
  AO22D0 U122 ( .A1(y_product[7]), .A2(n30), .B1(N38), .B2(divide_mode), .Z(
        N61) );
  FA1D0 U123 ( .A(N930), .B(N60), .CI(add_0_root_add_0_root_add_80_3_carry[12]), .CO(add_0_root_add_0_root_add_80_3_carry[13]), .S(plane_value[12]) );
  AO22D0 U124 ( .A1(y_product[6]), .A2(n30), .B1(N37), .B2(divide_mode), .Z(
        N60) );
  FA1D0 U125 ( .A(N920), .B(N59), .CI(add_0_root_add_0_root_add_80_3_carry[11]), .CO(add_0_root_add_0_root_add_80_3_carry[12]), .S(plane_value[11]) );
  AO22D0 U126 ( .A1(y_product[5]), .A2(n30), .B1(N36), .B2(divide_mode), .Z(
        N59) );
  FA1D0 U127 ( .A(N910), .B(N58), .CI(add_0_root_add_0_root_add_80_3_carry[10]), .CO(add_0_root_add_0_root_add_80_3_carry[11]), .S(plane_value[10]) );
  AO22D0 U128 ( .A1(y_product[4]), .A2(n30), .B1(N35), .B2(divide_mode), .Z(
        N58) );
  FA1D0 U129 ( .A(N900), .B(N57), .CI(add_0_root_add_0_root_add_80_3_carry[9]), 
        .CO(add_0_root_add_0_root_add_80_3_carry[10]), .S(plane_value[9]) );
  AO22D0 U130 ( .A1(y_product[3]), .A2(n30), .B1(N34), .B2(divide_mode), .Z(
        N57) );
  INVD1 U131 ( .I(y_product[3]), .ZN(n450) );
  FA1D0 U132 ( .A(n30), .B(x_product[4]), .CI(
        add_1_root_add_0_root_add_80_3_carry[10]), .CO(
        add_1_root_add_0_root_add_80_3_carry[11]), .S(N910) );
  FA1D0 U133 ( .A(N115), .B(x_product[3]), .CI(
        add_1_root_add_0_root_add_80_3_carry[9]), .CO(
        add_1_root_add_0_root_add_80_3_carry[10]), .S(N900) );
  INR2D1 U134 ( .A1(midpoint_sum[4]), .B1(divide_mode), .ZN(N115) );
  FA1D0 U135 ( .A(N890), .B(N56), .CI(add_0_root_add_0_root_add_80_3_carry[8]), 
        .CO(add_0_root_add_0_root_add_80_3_carry[9]), .S(plane_value[8]) );
  AO22D0 U136 ( .A1(y_product[2]), .A2(n30), .B1(N33), .B2(divide_mode), .Z(
        N56) );
  INVD1 U137 ( .I(y_product[2]), .ZN(n440) );
  FA1D0 U138 ( .A(N880), .B(N55), .CI(n3), .CO(
        add_0_root_add_0_root_add_80_3_carry[8]), .S(plane_value[7]) );
  AO22D0 U139 ( .A1(y_product[1]), .A2(n30), .B1(N32), .B2(divide_mode), .Z(
        N55) );
  FA1D0 U141 ( .A(N114), .B(x_product[2]), .CI(
        add_1_root_add_0_root_add_80_3_carry[8]), .CO(
        add_1_root_add_0_root_add_80_3_carry[9]), .S(N890) );
  INR2D1 U142 ( .A1(midpoint_sum[3]), .B1(divide_mode), .ZN(N114) );
  FA1D0 U143 ( .A(N113), .B(x_product[1]), .CI(n2), .CO(
        add_1_root_add_0_root_add_80_3_carry[8]), .S(N880) );
  INR2D1 U144 ( .A1(midpoint_sum[2]), .B1(divide_mode), .ZN(N113) );
  OAI221D0 U145 ( .A1(n360), .A2(n960), .B1(n29), .B2(n380), .C(n390), .ZN(
        normalized_fraction[9]) );
  AOI32D1 U146 ( .A1(n990), .A2(n30), .A3(plane_value[7]), .B1(n980), .B2(
        n1000), .ZN(n390) );
  AOI22D1 U148 ( .A1(reduced_scale_product[13]), .A2(divide_mode), .B1(
        plane_value[21]), .B2(n30), .ZN(n600) );
  AOI22D1 U149 ( .A1(reduced_scale_product[12]), .A2(divide_mode), .B1(
        plane_value[20]), .B2(n30), .ZN(n580) );
  AOI22D1 U150 ( .A1(reduced_scale_product[11]), .A2(divide_mode), .B1(
        plane_value[19]), .B2(n30), .ZN(n620) );
  AOI22D1 U151 ( .A1(reduced_scale_product[10]), .A2(divide_mode), .B1(
        plane_value[18]), .B2(n30), .ZN(n640) );
  AOI22D1 U152 ( .A1(reduced_scale_product[9]), .A2(divide_mode), .B1(
        plane_value[17]), .B2(n30), .ZN(n670) );
  AOI22D1 U153 ( .A1(reduced_scale_product[8]), .A2(divide_mode), .B1(
        plane_value[16]), .B2(n30), .ZN(n690) );
  AOI22D1 U154 ( .A1(reduced_scale_product[7]), .A2(divide_mode), .B1(
        plane_value[15]), .B2(n30), .ZN(n71) );
  AOI22D1 U155 ( .A1(reduced_scale_product[6]), .A2(divide_mode), .B1(
        plane_value[14]), .B2(n30), .ZN(n73) );
  AOI22D1 U156 ( .A1(reduced_scale_product[5]), .A2(divide_mode), .B1(
        plane_value[13]), .B2(n30), .ZN(n75) );
  AOI22D1 U157 ( .A1(reduced_scale_product[4]), .A2(divide_mode), .B1(
        plane_value[12]), .B2(n30), .ZN(n77) );
  ND3D1 U158 ( .A1(n92), .A2(n87), .A3(n90), .ZN(coefficient[2]) );
  ND4D1 U159 ( .A1(n92), .A2(n91), .A3(n88), .A4(n89), .ZN(coefficient[3]) );
  ND3D1 U160 ( .A1(n24), .A2(n1010), .A3(y_midpoint[3]), .ZN(n88) );
  ND3D1 U161 ( .A1(n92), .A2(n91), .A3(n84), .ZN(coefficient[1]) );
  ND2D1 U162 ( .A1(n90), .A2(n91), .ZN(coefficient[4]) );
  ND3D1 U163 ( .A1(n85), .A2(n86), .A3(n88), .ZN(coefficient[0]) );
  ND3D1 U164 ( .A1(n88), .A2(n89), .A3(n84), .ZN(coefficient[5]) );
  IND3D1 U165 ( .A1(coefficient[3]), .B1(n86), .B2(n87), .ZN(coefficient[6])
         );
  AOI22D1 U166 ( .A1(reduced_scale_product[3]), .A2(divide_mode), .B1(
        plane_value[11]), .B2(n30), .ZN(n79) );
  ND2D1 U167 ( .A1(n84), .A2(n85), .ZN(coefficient[7]) );
  AOI22D1 U168 ( .A1(reduced_scale_product[2]), .A2(divide_mode), .B1(
        plane_value[10]), .B2(n30), .ZN(n380) );
  AOI22D1 U169 ( .A1(reduced_scale_product[1]), .A2(divide_mode), .B1(
        plane_value[9]), .B2(n30), .ZN(n360) );
  AOI22D1 U170 ( .A1(reduced_scale_product[0]), .A2(divide_mode), .B1(
        plane_value[8]), .B2(n30), .ZN(n400) );
  FA1D0 U172 ( .A(x_midpoint[2]), .B(y_midpoint[2]), .CI(add_77_carry_2_), 
        .CO(add_77_carry_3_), .S(midpoint_sum[2]) );
  FA1D0 U176 ( .A(x_midpoint[3]), .B(y_midpoint[3]), .CI(add_77_carry_3_), 
        .CO(midpoint_sum[4]), .S(midpoint_sum[3]) );
  NR2D1 U177 ( .A1(n23), .A2(divide_mode), .ZN(N112) );
  CKXOR2D1 U178 ( .A1(y_midpoint[1]), .A2(x_midpoint[1]), .Z(n23) );
  ND3D1 U179 ( .A1(n24), .A2(n320), .A3(y_midpoint[2]), .ZN(n85) );
  ND3D1 U180 ( .A1(y_midpoint[2]), .A2(n320), .A3(y_midpoint[1]), .ZN(n89) );
  ND3D1 U181 ( .A1(y_midpoint[1]), .A2(n1010), .A3(y_midpoint[3]), .ZN(n91) );
  INVD1 U182 ( .I(y_midpoint[2]), .ZN(n1010) );
  ND3D1 U183 ( .A1(n1010), .A2(n320), .A3(y_midpoint[1]), .ZN(n93) );
  ND3D1 U184 ( .A1(y_midpoint[2]), .A2(n24), .A3(y_midpoint[3]), .ZN(n92) );
  ND3D1 U185 ( .A1(n1010), .A2(n320), .A3(n24), .ZN(n86) );
  ND2D1 U186 ( .A1(y_midpoint[1]), .A2(y_midpoint[2]), .ZN(n87) );
  INR2D1 U187 ( .A1(y_mantissa[11]), .B1(divide_mode), .ZN(
        y_shared_residual[1]) );
  INR2D1 U189 ( .A1(x_mantissa[11]), .B1(divide_mode), .ZN(
        x_shared_residual[1]) );
  INR2D1 U190 ( .A1(y_mantissa[10]), .B1(divide_mode), .ZN(
        y_shared_residual[0]) );
  INR2D1 U191 ( .A1(x_mantissa[10]), .B1(divide_mode), .ZN(
        x_shared_residual[0]) );
  INR2D1 U194 ( .A1(y_mantissa[12]), .B1(divide_mode), .ZN(
        y_shared_residual[2]) );
  INR2D1 U195 ( .A1(x_mantissa[12]), .B1(divide_mode), .ZN(
        x_shared_residual[2]) );
  INR2D1 U196 ( .A1(y_mantissa[13]), .B1(divide_mode), .ZN(
        y_shared_residual[3]) );
  INR2D1 U197 ( .A1(y_mantissa[14]), .B1(divide_mode), .ZN(
        y_shared_residual[4]) );
  INR2D1 U198 ( .A1(x_mantissa[13]), .B1(divide_mode), .ZN(
        x_shared_residual[3]) );
  INR2D1 U199 ( .A1(x_mantissa[14]), .B1(divide_mode), .ZN(
        x_shared_residual[4]) );
  INR2D1 U200 ( .A1(y_mantissa[15]), .B1(divide_mode), .ZN(
        y_shared_residual[5]) );
  INR2D1 U201 ( .A1(x_mantissa[15]), .B1(divide_mode), .ZN(
        x_shared_residual[5]) );
  INVD1 U202 ( .I(y_mantissa[19]), .ZN(y_residual_19_) );
  INVD1 U203 ( .I(x_mantissa[19]), .ZN(x_residual_19_) );
  TIEL U204 ( .ZN(n1030) );
  CKXOR2D1 U206 ( .A1(n340), .A2(n350), .Z(N32) );
  CKXOR2D1 U207 ( .A1(n22), .A2(n440), .Z(N33) );
  CKXOR2D1 U208 ( .A1(n21), .A2(n450), .Z(N34) );
  CKXOR2D1 U209 ( .A1(n19), .A2(n460), .Z(N35) );
  CKXOR2D1 U210 ( .A1(n15), .A2(n470), .Z(N36) );
  CKXOR2D1 U211 ( .A1(n14), .A2(n48), .Z(N37) );
  CKXOR2D1 U212 ( .A1(n13), .A2(n49), .Z(N38) );
  CKXOR2D1 U213 ( .A1(n12), .A2(n50), .Z(N39) );
  CKXOR2D1 U214 ( .A1(n11), .A2(n51), .Z(N40) );
  CKXOR2D1 U215 ( .A1(n10), .A2(n52), .Z(N41) );
  CKXOR2D1 U216 ( .A1(n9), .A2(n53), .Z(N42) );
  CKXOR2D1 U217 ( .A1(n8), .A2(n650), .Z(N43) );
  CKXOR2D1 U218 ( .A1(n7), .A2(n83), .Z(N44) );
  CKXOR2D1 U219 ( .A1(n6), .A2(n940), .Z(N45) );
  CKXOR2D1 U220 ( .A1(n5), .A2(n950), .Z(N46) );
  CKXOR2D1 U221 ( .A1(N31), .A2(N870), .Z(plane_value[6]) );
  CKXOR2D1 U222 ( .A1(x_product[0]), .A2(N112), .Z(N870) );
  CKXOR2D1 U223 ( .A1(add_1_root_add_0_root_add_80_3_carry[11]), .A2(
        x_product[5]), .Z(N920) );
  CKXOR2D1 U224 ( .A1(n18), .A2(x_product[6]), .Z(N930) );
  CKXOR2D1 U225 ( .A1(n20), .A2(x_product[7]), .Z(N94) );
  CKXOR2D1 U226 ( .A1(n17), .A2(x_product[8]), .Z(N95) );
  AOI22D1 U10 ( .A1(divide_mode), .A2(reduced_scale_product[16]), .B1(n30), 
        .B2(plane_value[24]), .ZN(n29) );
  CKND0 U48 ( .I(y_product[15]), .ZN(n950) );
  NR2D0 U54 ( .A1(y_product[15]), .A2(n5), .ZN(N47) );
  IND2D0 U55 ( .A1(x_product[9]), .B1(n26), .ZN(
        add_1_root_add_0_root_add_80_3_carry[16]) );
  CKND2D0 U99 ( .A1(x_product[8]), .A2(n17), .ZN(n26) );
  CKXOR2D0 U100 ( .A1(x_product[9]), .A2(n26), .Z(N96) );
  INVD1 U101 ( .I(divide_mode), .ZN(n30) );
  CKND0 U102 ( .I(N31), .ZN(n340) );
  CKND0 U118 ( .I(y_product[1]), .ZN(n350) );
  NR2D0 U119 ( .A1(N31), .A2(y_product[1]), .ZN(n22) );
  IND2D0 U120 ( .A1(x_midpoint[1]), .B1(n24), .ZN(add_77_carry_2_) );
  CKND0 U140 ( .I(y_midpoint[1]), .ZN(n24) );
  CKND0 U147 ( .I(y_midpoint[3]), .ZN(n320) );
endmodule


module oadm_fixed_l3_divmul_root_opt ( x, y, divide_mode, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  input divide_mode;
  wire   n4;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4;
  assign result[4] = 1'b0;
  assign result[3] = 1'b0;
  assign result[2] = 1'b0;
  assign result[1] = 1'b0;
  assign result[0] = 1'b0;

  oadm_fixed_divmul_root_opt_3_16_10_16_8_e3_b6_95_7c_69_5a_4e_44 implementation ( 
        .x({x[31:10], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .y({y[31:10], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .divide_mode(n4), .result({result[31:5], 
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4}) );
  CKBD1 U1 ( .I(divide_mode), .Z(n4) );
endmodule

