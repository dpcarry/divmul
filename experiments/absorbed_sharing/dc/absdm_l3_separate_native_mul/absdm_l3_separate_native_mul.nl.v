/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Tue Sep 15 23:09:10 2026
/////////////////////////////////////////////////////////////


module absdm_l3_separate_native_mul_div_DW_mult_tc_1_DW_mult_tc_3 ( a, b, 
        product );
  input [3:0] a;
  input [5:0] b;
  output [9:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n37, n38, n39, n41, n42, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85;

  FA1D0 U3 ( .A(n9), .B(n24), .CI(n3), .CO(n2), .S(product[7]) );
  FA1D0 U4 ( .A(n11), .B(n10), .CI(n4), .CO(n3), .S(product[6]) );
  FA1D0 U5 ( .A(n16), .B(n12), .CI(n5), .CO(n4), .S(product[5]) );
  FA1D0 U6 ( .A(n17), .B(n18), .CI(n6), .CO(n5), .S(product[4]) );
  FA1D0 U7 ( .A(n19), .B(n21), .CI(n7), .CO(n6), .S(product[3]) );
  FA1D0 U8 ( .A(n8), .B(n33), .CI(n23), .CO(n7), .S(product[2]) );
  HA1D0 U9 ( .A(n42), .B(n38), .CO(n8), .S(product[1]) );
  FA1D0 U10 ( .A(n25), .B(n29), .CI(n13), .CO(n9), .S(n10) );
  FA1D0 U11 ( .A(n14), .B(n26), .CI(n15), .CO(n11), .S(n12) );
  HA1D0 U12 ( .A(n30), .B(n34), .CO(n13), .S(n14) );
  CMPE42D1 U13 ( .A(n31), .B(n39), .C(n35), .CIX(n20), .D(n27), .CO(n16), 
        .COX(n15), .S(n17) );
  FA1D0 U14 ( .A(n28), .B(n32), .CI(n22), .CO(n18), .S(n19) );
  HA1D0 U17 ( .A(n37), .B(n41), .CO(n22), .S(n23) );
  INVD1 U50 ( .I(b[0]), .ZN(n78) );
  INVD1 U51 ( .I(b[2]), .ZN(n79) );
  INVD1 U52 ( .I(b[1]), .ZN(n77) );
  INVD1 U53 ( .I(b[3]), .ZN(n76) );
  INVD1 U54 ( .I(b[4]), .ZN(n80) );
  INVD1 U55 ( .I(a[0]), .ZN(n83) );
  INVD1 U56 ( .I(a[2]), .ZN(n81) );
  INVD1 U57 ( .I(a[1]), .ZN(n82) );
  CKND0 U58 ( .I(n2), .ZN(product[9]) );
  NR2D0 U59 ( .A1(n83), .A2(n78), .ZN(product[0]) );
  NR2D0 U60 ( .A1(n83), .A2(n77), .ZN(n42) );
  NR2D0 U61 ( .A1(n83), .A2(n79), .ZN(n41) );
  NR2D0 U62 ( .A1(n83), .A2(n80), .ZN(n39) );
  NR2D0 U63 ( .A1(n78), .A2(n82), .ZN(n38) );
  NR2D0 U64 ( .A1(n77), .A2(n82), .ZN(n37) );
  NR2D0 U65 ( .A1(n82), .A2(n76), .ZN(n35) );
  NR2D0 U66 ( .A1(n80), .A2(n82), .ZN(n34) );
  NR2D0 U67 ( .A1(n78), .A2(n81), .ZN(n33) );
  NR2D0 U68 ( .A1(n77), .A2(n81), .ZN(n32) );
  NR2D0 U69 ( .A1(n79), .A2(n81), .ZN(n31) );
  NR2D0 U70 ( .A1(n76), .A2(n81), .ZN(n30) );
  NR2D0 U71 ( .A1(n80), .A2(n81), .ZN(n29) );
  CKND2D0 U72 ( .A1(a[3]), .A2(b[0]), .ZN(n28) );
  CKND2D0 U73 ( .A1(a[3]), .A2(b[1]), .ZN(n27) );
  CKND2D0 U74 ( .A1(a[3]), .A2(b[2]), .ZN(n26) );
  CKND2D0 U75 ( .A1(a[3]), .A2(b[3]), .ZN(n25) );
  CKND2D0 U76 ( .A1(a[3]), .A2(b[4]), .ZN(n24) );
  XNR2D0 U77 ( .A1(n84), .A2(n85), .ZN(n21) );
  CKND2D0 U78 ( .A1(n84), .A2(n85), .ZN(n20) );
  CKND2D0 U79 ( .A1(b[3]), .A2(a[0]), .ZN(n85) );
  CKND2D0 U80 ( .A1(a[1]), .A2(b[2]), .ZN(n84) );
endmodule


module absdm_l3_separate_native_mul_div_DW_mult_tc_0_DW_mult_tc_2 ( a, b, 
        product );
  input [3:0] a;
  input [4:0] b;
  output [8:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n21, n22, n23, n25, n26, n27, n30, n31, n33, n34, n65,
         n66, n67, n68, n69, n70, n71, n72;

  FA1D0 U3 ( .A(n8), .B(n68), .CI(n3), .CO(n2), .S(product[6]) );
  FA1D0 U4 ( .A(n10), .B(n9), .CI(n4), .CO(n3), .S(product[5]) );
  FA1D0 U5 ( .A(n11), .B(n14), .CI(n5), .CO(n4), .S(product[4]) );
  FA1D0 U6 ( .A(n15), .B(n17), .CI(n6), .CO(n5), .S(product[3]) );
  FA1D0 U7 ( .A(n7), .B(n27), .CI(n19), .CO(n6), .S(product[2]) );
  HA1D0 U8 ( .A(n34), .B(n31), .CO(n7), .S(product[1]) );
  FA1D0 U9 ( .A(n21), .B(a[2]), .CI(n12), .CO(n8), .S(n9) );
  FA1D0 U10 ( .A(n16), .B(n22), .CI(n13), .CO(n10), .S(n11) );
  HA1D0 U11 ( .A(n25), .B(a[1]), .CO(n12), .S(n13) );
  FA1D0 U12 ( .A(n23), .B(n26), .CI(n18), .CO(n14), .S(n15) );
  HA1D0 U15 ( .A(n30), .B(n33), .CO(n18), .S(n19) );
  INVD1 U42 ( .I(b[1]), .ZN(n66) );
  INVD1 U43 ( .I(b[2]), .ZN(n67) );
  CKBD1 U44 ( .I(product[7]), .Z(product[8]) );
  INVD1 U45 ( .I(b[0]), .ZN(n65) );
  INVD1 U46 ( .I(a[3]), .ZN(n68) );
  INVD1 U47 ( .I(a[0]), .ZN(n71) );
  INVD1 U48 ( .I(a[1]), .ZN(n70) );
  INVD1 U49 ( .I(a[2]), .ZN(n69) );
  CKND0 U50 ( .I(n2), .ZN(product[7]) );
  NR2D0 U51 ( .A1(n71), .A2(n65), .ZN(product[0]) );
  NR2D0 U52 ( .A1(n71), .A2(n66), .ZN(n34) );
  NR2D0 U53 ( .A1(n71), .A2(n67), .ZN(n33) );
  NR2D0 U54 ( .A1(n65), .A2(n70), .ZN(n31) );
  NR2D0 U55 ( .A1(n66), .A2(n70), .ZN(n30) );
  NR2D0 U56 ( .A1(n65), .A2(n69), .ZN(n27) );
  NR2D0 U57 ( .A1(n66), .A2(n69), .ZN(n26) );
  NR2D0 U58 ( .A1(n67), .A2(n69), .ZN(n25) );
  CKND2D0 U59 ( .A1(b[0]), .A2(a[3]), .ZN(n23) );
  CKND2D0 U60 ( .A1(b[1]), .A2(a[3]), .ZN(n22) );
  CKND2D0 U61 ( .A1(b[2]), .A2(a[3]), .ZN(n21) );
  CKXOR2D0 U62 ( .A1(a[0]), .A2(n72), .Z(n17) );
  CKND2D0 U63 ( .A1(n72), .A2(n71), .ZN(n16) );
  CKND2D0 U64 ( .A1(a[1]), .A2(b[2]), .ZN(n72) );
endmodule


module absdm_l3_separate_native_mul_div_DW01_add_0_DW01_add_6 ( A, B, CI, SUM, 
        CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [12:2] carry;

  FA1D0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1D0 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  FA1D0 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA1D0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1D0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1D0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA1D0 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA1D0 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FA1D0 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FA1D0 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FA1D0 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  AN2XD1 U1 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
  CKXOR2D1 U2 ( .A1(B[12]), .A2(carry[12]), .Z(SUM[12]) );
  CKXOR2D1 U3 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
endmodule


module absdm_l3_separate_native_mul_div ( fx, fy, value );
  input [22:0] fx;
  input [22:0] fy;
  output [28:0] value;
  wire   rx_3_, ry_3_, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196,
         n197, n198, n199, n201, n202, n203, n204, n205, n206, n207, n208,
         n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219,
         n220, n221, n222, n223, n224, n225, n226, n227, n228, py_9_, py_7_,
         py_6_, py_5_, py_4_, py_3_, py_2_, py_1_, py_0_, px_9, px_7_, px_6_,
         px_5_, px_4_, px_3_, px_2_, px_1_, px_0_, N244, N243, N242, N241,
         N240, N239, N238, N237, N236, N235, N234, N233, N232, n13, n14, n16,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n229,
         n230, n231, n2320, n2330, n2340, n2350, n2360, n2370, n2380, n2390,
         n2400, n2410, n2420, n2430, n2440, n245, n246, n247, n248;
  wire   [2:0] a;
  wire   [4:0] b;
  wire   [11:0] c;
  wire   [12:1] sub_0_root_sub_77_carry;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1;

  AN4XD1 U14 ( .A1(n64), .A2(n65), .A3(n66), .A4(n67), .Z(n49) );
  AN4XD1 U23 ( .A1(n84), .A2(n85), .A3(n86), .A4(n87), .Z(n44) );
  AN4XD1 U25 ( .A1(n90), .A2(n91), .A3(n92), .A4(n93), .Z(n48) );
  AN4XD1 U32 ( .A1(n108), .A2(n109), .A3(n110), .A4(n111), .Z(n107) );
  AN4XD1 U51 ( .A1(n72), .A2(n30), .A3(n140), .A4(n51), .Z(n125) );
  AN4XD1 U70 ( .A1(n166), .A2(n167), .A3(n168), .A4(n169), .Z(n136) );
  AN4XD1 U79 ( .A1(n152), .A2(n72), .A3(n180), .A4(n51), .Z(n144) );
  AN4XD1 U81 ( .A1(n182), .A2(n85), .A3(n183), .A4(n184), .Z(n72) );
  AN3XD1 U86 ( .A1(n109), .A2(n108), .A3(n187), .Z(n152) );
  AN3XD1 U95 ( .A1(n196), .A2(fy[21]), .A3(fy[22]), .Z(n157) );
  AN3XD1 U96 ( .A1(n58), .A2(n88), .A3(n79), .Z(n168) );
  AN3XD1 U99 ( .A1(n150), .A2(fy[22]), .A3(fy[20]), .Z(n186) );
  AN2XD1 U101 ( .A1(n156), .A2(n77), .Z(n197) );
  AN4XD1 U104 ( .A1(n139), .A2(n156), .A3(n101), .A4(n165), .Z(n171) );
  AN3XD1 U118 ( .A1(n150), .A2(n246), .A3(n16), .Z(n199) );
  AN2XD1 U128 ( .A1(n208), .A2(n195), .Z(n135) );
  AN2XD1 U132 ( .A1(n209), .A2(n147), .Z(n94) );
  AN2XD1 U133 ( .A1(n209), .A2(n194), .Z(n128) );
  AN2XD1 U135 ( .A1(n208), .A2(n194), .Z(n57) );
  AN4XD1 U137 ( .A1(n45), .A2(n187), .A3(n212), .A4(n213), .Z(n201) );
  AN2XD1 U140 ( .A1(n147), .A2(n210), .Z(n56) );
  AN2XD1 U147 ( .A1(n214), .A2(n194), .Z(n70) );
  AN2XD1 U149 ( .A1(n196), .A2(n215), .Z(n214) );
  AN4XD1 U156 ( .A1(n181), .A2(n165), .A3(n139), .A4(n220), .Z(n204) );
  AN2XD1 U158 ( .A1(n221), .A2(n147), .Z(n176) );
  AN2XD1 U159 ( .A1(n222), .A2(n194), .Z(n71) );
  AN2XD1 U164 ( .A1(n51), .A2(n92), .Z(n225) );
  AN4XD1 U170 ( .A1(n68), .A2(n185), .A3(n82), .A4(n228), .Z(n53) );
  AN2XD1 U174 ( .A1(n224), .A2(n147), .Z(n62) );
  AN2XD1 U175 ( .A1(n219), .A2(n195), .Z(n123) );
  AN2XD1 U182 ( .A1(n227), .A2(n147), .Z(n158) );
  AN2XD1 U184 ( .A1(n223), .A2(n194), .Z(n76) );
  AN2XD1 U190 ( .A1(n223), .A2(n195), .Z(n129) );
  AN3XD1 U198 ( .A1(n150), .A2(fy[22]), .A3(n246), .Z(n226) );
  AN3XD1 U200 ( .A1(n196), .A2(n16), .A3(fy[21]), .Z(n222) );
  AN2XD1 U201 ( .A1(fx[22]), .A2(fy[20]), .Z(n196) );
  AN3XD1 U209 ( .A1(n150), .A2(fy[20]), .A3(n16), .Z(n221) );
  absdm_l3_separate_native_mul_div_DW_mult_tc_1_DW_mult_tc_3 mult_75_S2 ( .a({
        ry_3_, fy[18:16]}), .b({n247, b}), .product({py_9_, 
        SYNOPSYS_UNCONNECTED__0, py_7_, py_6_, py_5_, py_4_, py_3_, py_2_, 
        py_1_, py_0_}) );
  absdm_l3_separate_native_mul_div_DW_mult_tc_0_DW_mult_tc_2 mult_75 ( .a({
        rx_3_, fx[18:16]}), .b({n247, n13, a}), .product({px_9, px_7_, px_6_, 
        px_5_, px_4_, px_3_, px_2_, px_1_, px_0_}) );
  absdm_l3_separate_native_mul_div_DW01_add_0_DW01_add_6 add_1_root_sub_77 ( 
        .A({n247, n247, c}), .B({px_9, px_9, px_9, px_9, px_9, px_9, px_7_, 
        px_6_, px_5_, px_4_, px_3_, px_2_, px_1_, px_0_}), .CI(n247), .SUM({
        SYNOPSYS_UNCONNECTED__1, N244, N243, N242, N241, N240, N239, N238, 
        N237, N236, N235, N234, N233, N232}) );
  TIEH U3 ( .Z(n13) );
  NR2D1 U17 ( .A1(n2420), .A2(n2440), .ZN(n147) );
  NR2D1 U18 ( .A1(n2420), .A2(fx[20]), .ZN(n159) );
  NR2D1 U19 ( .A1(n2440), .A2(fx[21]), .ZN(n194) );
  ND4D1 U20 ( .A1(n44), .A2(n45), .A3(n30), .A4(n46), .ZN(c[9]) );
  NR3D0 U21 ( .A1(n230), .A2(n2380), .A3(n40), .ZN(n46) );
  FA1D0 U22 ( .A(N240), .B(n25), .CI(sub_0_root_sub_77_carry[8]), .CO(
        sub_0_root_sub_77_carry[9]), .S(value[20]) );
  FA1D0 U24 ( .A(N241), .B(n25), .CI(sub_0_root_sub_77_carry[9]), .CO(
        sub_0_root_sub_77_carry[10]), .S(value[21]) );
  FA1D0 U26 ( .A(N242), .B(n25), .CI(sub_0_root_sub_77_carry[10]), .CO(
        sub_0_root_sub_77_carry[11]), .S(value[22]) );
  FA1D0 U27 ( .A(N243), .B(n25), .CI(sub_0_root_sub_77_carry[11]), .CO(
        sub_0_root_sub_77_carry[12]), .S(value[23]) );
  FA1D0 U28 ( .A(N238), .B(n23), .CI(sub_0_root_sub_77_carry[6]), .CO(
        sub_0_root_sub_77_carry[7]), .S(value[18]) );
  INVD1 U29 ( .I(py_6_), .ZN(n23) );
  FA1D0 U30 ( .A(N237), .B(n22), .CI(sub_0_root_sub_77_carry[5]), .CO(
        sub_0_root_sub_77_carry[6]), .S(value[17]) );
  INVD1 U31 ( .I(py_5_), .ZN(n22) );
  INVD1 U33 ( .I(n91), .ZN(n229) );
  FA1D0 U34 ( .A(N236), .B(n21), .CI(sub_0_root_sub_77_carry[4]), .CO(
        sub_0_root_sub_77_carry[5]), .S(value[16]) );
  INVD1 U35 ( .I(py_4_), .ZN(n21) );
  NR3D0 U36 ( .A1(n37), .A2(n63), .A3(n38), .ZN(n84) );
  INVD1 U37 ( .I(n118), .ZN(n38) );
  INVD1 U38 ( .I(n111), .ZN(n34) );
  INVD1 U40 ( .I(n141), .ZN(n30) );
  ND4D1 U41 ( .A1(n142), .A2(n143), .A3(n144), .A4(n145), .ZN(c[0]) );
  NR4D0 U42 ( .A1(n38), .A2(n56), .A3(n2350), .A4(n34), .ZN(n145) );
  INVD1 U43 ( .I(n132), .ZN(n28) );
  INVD1 U44 ( .I(n139), .ZN(n36) );
  ND2D1 U45 ( .A1(n118), .A2(n119), .ZN(n59) );
  INR4D0 U46 ( .A1(n201), .B1(n57), .B2(n128), .B3(n94), .ZN(n112) );
  ND4D1 U47 ( .A1(n204), .A2(n112), .A3(n153), .A4(n205), .ZN(a[1]) );
  NR4D0 U48 ( .A1(n2390), .A2(n2350), .A3(n135), .A4(n96), .ZN(n205) );
  NR2D1 U49 ( .A1(n2370), .A2(n43), .ZN(n212) );
  NR4D0 U50 ( .A1(n62), .A2(n2340), .A3(n56), .A4(n229), .ZN(n213) );
  IND4D1 U52 ( .A1(n47), .B1(n48), .B2(n49), .B3(n50), .ZN(c[8]) );
  INR3D0 U53 ( .A1(n51), .B1(n2380), .B2(n35), .ZN(n50) );
  ND4D1 U54 ( .A1(n136), .A2(n125), .A3(n137), .A4(n86), .ZN(c[10]) );
  NR2D1 U55 ( .A1(n35), .A2(n76), .ZN(n137) );
  IIND4D1 U56 ( .A1(n131), .A2(n133), .B1(n29), .B2(n134), .ZN(c[11]) );
  NR4D0 U57 ( .A1(n57), .A2(n39), .A3(n103), .A4(n135), .ZN(n134) );
  IND4D1 U58 ( .A1(n52), .B1(n53), .B2(n54), .B3(n55), .ZN(c[7]) );
  INR2D1 U59 ( .A1(n58), .B1(n59), .ZN(n54) );
  NR4D0 U60 ( .A1(n231), .A2(n2400), .A3(n56), .A4(n57), .ZN(n55) );
  FA1D0 U61 ( .A(N239), .B(n24), .CI(sub_0_root_sub_77_carry[7]), .CO(
        sub_0_root_sub_77_carry[8]), .S(value[19]) );
  INVD1 U62 ( .I(py_7_), .ZN(n24) );
  ND3D1 U63 ( .A1(n29), .A2(n170), .A3(n171), .ZN(a[2]) );
  INR4D0 U66 ( .A1(n108), .B1(n35), .B2(n2350), .B3(n76), .ZN(n202) );
  IND4D1 U67 ( .A1(n60), .B1(n49), .B2(n30), .B3(n61), .ZN(c[6]) );
  NR4D0 U68 ( .A1(n40), .A2(n62), .A3(n63), .A4(n2350), .ZN(n61) );
  ND4D1 U69 ( .A1(n72), .A2(n28), .A3(n73), .A4(n74), .ZN(c[5]) );
  NR4D0 U71 ( .A1(n26), .A2(n75), .A3(n56), .A4(n76), .ZN(n74) );
  INR3D0 U72 ( .A1(n79), .B1(n80), .B2(n81), .ZN(n73) );
  INR3D0 U73 ( .A1(n105), .B1(n129), .B2(n70), .ZN(n45) );
  INVD1 U74 ( .I(n177), .ZN(n2340) );
  NR4D0 U75 ( .A1(n123), .A2(n62), .A3(n27), .A4(n35), .ZN(n228) );
  INVD1 U76 ( .I(n190), .ZN(n2350) );
  IND4D1 U77 ( .A1(n69), .B1(n89), .B2(n53), .B3(n216), .ZN(a[0]) );
  NR2D1 U78 ( .A1(n95), .A2(n131), .ZN(n216) );
  INR4D0 U80 ( .A1(n167), .B1(n14), .B2(n103), .B3(n39), .ZN(n82) );
  OR3XD1 U82 ( .A1(n76), .A2(n158), .A3(n2350), .Z(n14) );
  ND2D1 U83 ( .A1(n214), .A2(n147), .ZN(n91) );
  ND4D1 U84 ( .A1(n48), .A2(n44), .A3(n82), .A4(n83), .ZN(c[4]) );
  NR4D0 U85 ( .A1(n31), .A2(n2390), .A3(n2370), .A4(n43), .ZN(n83) );
  INVD1 U87 ( .I(n109), .ZN(n2370) );
  NR2D1 U88 ( .A1(n71), .A2(n176), .ZN(n220) );
  INVD1 U89 ( .I(n166), .ZN(n43) );
  FA1D0 U90 ( .A(N235), .B(n20), .CI(sub_0_root_sub_77_carry[3]), .CO(
        sub_0_root_sub_77_carry[4]), .S(value[15]) );
  INVD1 U91 ( .I(py_3_), .ZN(n20) );
  ND4D1 U92 ( .A1(n206), .A2(n170), .A3(n192), .A4(n207), .ZN(n96) );
  NR3D0 U93 ( .A1(n133), .A2(n35), .A3(n26), .ZN(n207) );
  ND3D1 U94 ( .A1(n65), .A2(n89), .A3(n119), .ZN(n133) );
  ND2D1 U97 ( .A1(n208), .A2(n147), .ZN(n119) );
  IND4D1 U98 ( .A1(n80), .B1(n112), .B2(n113), .B3(n114), .ZN(c[2]) );
  INR3D0 U100 ( .A1(n116), .B1(n117), .B2(n59), .ZN(n113) );
  NR4D0 U102 ( .A1(n115), .A2(n100), .A3(n27), .A4(n37), .ZN(n114) );
  INVD1 U103 ( .I(n178), .ZN(n35) );
  FA1D0 U105 ( .A(N234), .B(n19), .CI(sub_0_root_sub_77_carry[2]), .CO(
        sub_0_root_sub_77_carry[3]), .S(value[14]) );
  INVD1 U106 ( .I(py_2_), .ZN(n19) );
  INVD1 U107 ( .I(n120), .ZN(n39) );
  ND2D1 U108 ( .A1(n223), .A2(n147), .ZN(n139) );
  INVD1 U109 ( .I(n140), .ZN(n26) );
  NR4D0 U110 ( .A1(n100), .A2(n26), .A3(n2340), .A4(n129), .ZN(n68) );
  ND2D1 U111 ( .A1(n203), .A2(n147), .ZN(n118) );
  INR2D1 U112 ( .A1(n226), .B1(n2410), .ZN(n100) );
  INR2D1 U113 ( .A1(n203), .B1(n2430), .ZN(n63) );
  ND4D1 U114 ( .A1(n125), .A2(n28), .A3(n126), .A4(n127), .ZN(c[1]) );
  INR4D0 U115 ( .A1(n65), .B1(n62), .B2(n128), .B3(n129), .ZN(n127) );
  ND2D1 U116 ( .A1(n219), .A2(n147), .ZN(n111) );
  NR2D1 U117 ( .A1(n2410), .A2(n217), .ZN(n103) );
  FA1D0 U119 ( .A(N233), .B(n18), .CI(sub_0_root_sub_77_carry[1]), .CO(
        sub_0_root_sub_77_carry[2]), .S(value[13]) );
  INVD1 U121 ( .I(py_1_), .ZN(n18) );
  ND2D1 U122 ( .A1(n110), .A2(n116), .ZN(n161) );
  ND2D1 U123 ( .A1(n199), .A2(n147), .ZN(n110) );
  ND4D1 U124 ( .A1(n177), .A2(n184), .A3(n188), .A4(n189), .ZN(b[0]) );
  NR3D0 U125 ( .A1(n27), .A2(n94), .A3(n2360), .ZN(n188) );
  NR4D0 U126 ( .A1(n47), .A2(n60), .A3(n132), .A4(n131), .ZN(n189) );
  INVD1 U127 ( .I(n206), .ZN(n27) );
  ND2D1 U129 ( .A1(n42), .A2(n147), .ZN(n90) );
  INVD1 U130 ( .I(n217), .ZN(n42) );
  INVD1 U131 ( .I(n198), .ZN(n37) );
  ND4D1 U134 ( .A1(n183), .A2(n77), .A3(n88), .A4(n225), .ZN(n95) );
  NR2D1 U136 ( .A1(n40), .A2(n129), .ZN(n180) );
  ND4D1 U138 ( .A1(n144), .A2(n136), .A3(n163), .A4(n164), .ZN(b[2]) );
  NR2D1 U139 ( .A1(n133), .A2(n161), .ZN(n163) );
  INR4D0 U141 ( .A1(n165), .B1(n62), .B2(n71), .B3(n39), .ZN(n164) );
  INR3D0 U142 ( .A1(n185), .B1(n117), .B2(n32), .ZN(n182) );
  ND3D1 U143 ( .A1(n64), .A2(n102), .A3(n92), .ZN(n117) );
  INR3D0 U144 ( .A1(n175), .B1(n76), .B2(n39), .ZN(n153) );
  INVD1 U145 ( .I(n184), .ZN(n2390) );
  INVD1 U146 ( .I(py_9_), .ZN(n25) );
  ND4D1 U148 ( .A1(n171), .A2(n144), .A3(n172), .A4(n173), .ZN(b[1]) );
  NR3D0 U150 ( .A1(n130), .A2(n176), .A3(n81), .ZN(n172) );
  NR4D0 U151 ( .A1(n70), .A2(n174), .A3(n100), .A4(n57), .ZN(n173) );
  ND2D1 U152 ( .A1(n175), .A2(n89), .ZN(n174) );
  NR3D0 U153 ( .A1(n229), .A2(n2380), .A3(n100), .ZN(n169) );
  INVD1 U154 ( .I(n170), .ZN(n2380) );
  ND4D1 U155 ( .A1(n142), .A2(n152), .A3(n153), .A4(n154), .ZN(b[3]) );
  NR3D0 U157 ( .A1(n131), .A2(n103), .A3(n141), .ZN(n154) );
  INVD1 U160 ( .I(n104), .ZN(n32) );
  ND4D1 U161 ( .A1(n167), .A2(n190), .A3(n166), .A4(n191), .ZN(n132) );
  INR4D0 U162 ( .A1(n119), .B1(n2400), .B2(n70), .B3(n57), .ZN(n191) );
  INVD1 U163 ( .I(n192), .ZN(n2400) );
  INR4D0 U165 ( .A1(n160), .B1(n96), .B2(n135), .B3(n161), .ZN(n142) );
  NR3D0 U166 ( .A1(n57), .A2(n128), .A3(n33), .ZN(n160) );
  ND2D1 U167 ( .A1(n226), .A2(n147), .ZN(n88) );
  NR3D0 U168 ( .A1(n158), .A2(n94), .A3(n123), .ZN(n143) );
  ND4D1 U169 ( .A1(n124), .A2(n77), .A3(n143), .A4(n155), .ZN(n141) );
  INR3D0 U171 ( .A1(n156), .B1(n2330), .B2(n31), .ZN(n155) );
  INVD1 U172 ( .I(n181), .ZN(n40) );
  ND2D1 U173 ( .A1(n175), .A2(n162), .ZN(n69) );
  ND4D1 U176 ( .A1(n168), .A2(n110), .A3(n193), .A4(n109), .ZN(n60) );
  NR2D1 U177 ( .A1(n230), .A2(n231), .ZN(n193) );
  INVD1 U178 ( .I(n102), .ZN(n230) );
  INVD1 U179 ( .I(n85), .ZN(n231) );
  ND4D1 U180 ( .A1(n118), .A2(n88), .A3(n105), .A4(n179), .ZN(n130) );
  NR3D0 U181 ( .A1(n135), .A2(n229), .A3(n103), .ZN(n179) );
  INVD1 U183 ( .I(n78), .ZN(n2330) );
  INVD1 U185 ( .I(n101), .ZN(n31) );
  ND4D1 U186 ( .A1(n185), .A2(n108), .A3(n197), .A4(n198), .ZN(n47) );
  ND3D1 U187 ( .A1(n177), .A2(n178), .A3(n90), .ZN(n81) );
  INVD1 U188 ( .I(n162), .ZN(n33) );
  INVD1 U189 ( .I(n183), .ZN(n2360) );
  NR2D1 U191 ( .A1(n130), .A2(n131), .ZN(n126) );
  ND4D1 U192 ( .A1(n120), .A2(n58), .A3(n121), .A4(n122), .ZN(n80) );
  NR2D1 U193 ( .A1(n33), .A2(n71), .ZN(n121) );
  NR4D0 U194 ( .A1(n2380), .A2(n31), .A3(n2320), .A4(n123), .ZN(n122) );
  ND4D1 U195 ( .A1(n104), .A2(n105), .A3(n106), .A4(n107), .ZN(n52) );
  NR3D0 U196 ( .A1(n36), .A2(n2330), .A3(n40), .ZN(n106) );
  INVD1 U197 ( .I(n124), .ZN(n2320) );
  INR4D0 U199 ( .A1(n138), .B1(n69), .B2(n2400), .B3(n128), .ZN(n86) );
  NR2D1 U202 ( .A1(n36), .A2(n27), .ZN(n138) );
  IINR4D0 U203 ( .A1(n88), .A2(n89), .B1(n62), .B2(n2360), .ZN(n87) );
  NR4D0 U204 ( .A1(n2330), .A2(n2320), .A3(n94), .A4(n56), .ZN(n93) );
  ND2D1 U205 ( .A1(n111), .A2(n108), .ZN(n115) );
  NR3D0 U206 ( .A1(n2390), .A2(n70), .A3(n71), .ZN(n66) );
  INR4D0 U207 ( .A1(n68), .B1(n32), .B2(n69), .B3(n59), .ZN(n67) );
  ND2D1 U208 ( .A1(n101), .A2(n102), .ZN(n99) );
  ND2D1 U210 ( .A1(n77), .A2(n78), .ZN(n75) );
  INR3D0 U211 ( .A1(n215), .B1(fx[22]), .B2(n246), .ZN(n210) );
  INR2D1 U212 ( .A1(n215), .B1(n151), .ZN(n223) );
  ND2D1 U213 ( .A1(n224), .A2(n159), .ZN(n177) );
  ND2D1 U214 ( .A1(n224), .A2(n194), .ZN(n190) );
  ND2D1 U215 ( .A1(n214), .A2(n195), .ZN(n105) );
  ND2D1 U216 ( .A1(n159), .A2(n210), .ZN(n109) );
  OAI211D1 U217 ( .A1(n2430), .A2(n217), .B(n204), .C(n218), .ZN(n131) );
  AOI211XD0 U218 ( .A1(n219), .A2(n159), .B(n41), .C(n34), .ZN(n218) );
  INVD1 U219 ( .I(n90), .ZN(n41) );
  IIND4D1 U220 ( .A1(n95), .A2(n96), .B1(n97), .B2(n98), .ZN(c[3]) );
  NR4D0 U221 ( .A1(n94), .A2(n99), .A3(n100), .A4(n76), .ZN(n98) );
  NR3D0 U222 ( .A1(n52), .A2(n103), .A3(n43), .ZN(n97) );
  INR3D0 U223 ( .A1(n211), .B1(n246), .B2(fx[22]), .ZN(n227) );
  ND2D1 U224 ( .A1(n214), .A2(n159), .ZN(n166) );
  ND2D1 U225 ( .A1(n159), .A2(n222), .ZN(n89) );
  ND2D1 U226 ( .A1(fx[22]), .A2(n246), .ZN(n151) );
  INR2D1 U227 ( .A1(n211), .B1(n151), .ZN(n208) );
  ND2D1 U228 ( .A1(n223), .A2(n159), .ZN(n178) );
  NR2D1 U229 ( .A1(n245), .A2(fx[22]), .ZN(n150) );
  ND2D1 U230 ( .A1(n208), .A2(n159), .ZN(n65) );
  ND2D1 U231 ( .A1(n194), .A2(n210), .ZN(n187) );
  ND2D1 U232 ( .A1(n224), .A2(n195), .ZN(n165) );
  ND2D1 U233 ( .A1(n222), .A2(n195), .ZN(n120) );
  ND2D1 U234 ( .A1(n221), .A2(n195), .ZN(n140) );
  ND2D1 U235 ( .A1(n195), .A2(n210), .ZN(n170) );
  NR3D0 U236 ( .A1(n245), .A2(fy[22]), .A3(n151), .ZN(n203) );
  ND2D1 U237 ( .A1(n203), .A2(n195), .ZN(n108) );
  ND2D1 U238 ( .A1(n147), .A2(n222), .ZN(n181) );
  NR3D0 U239 ( .A1(n16), .A2(n245), .A3(n151), .ZN(n219) );
  INVD1 U240 ( .I(n159), .ZN(n2410) );
  INVD1 U241 ( .I(n194), .ZN(n2430) );
  ND2D1 U242 ( .A1(n211), .A2(n196), .ZN(n217) );
  ND2D1 U243 ( .A1(n226), .A2(n195), .ZN(n167) );
  ND2D1 U244 ( .A1(n209), .A2(n159), .ZN(n192) );
  ND2D1 U245 ( .A1(n221), .A2(n194), .ZN(n206) );
  ND2D1 U246 ( .A1(n159), .A2(n199), .ZN(n116) );
  ND2D1 U247 ( .A1(n203), .A2(n159), .ZN(n198) );
  ND2D1 U248 ( .A1(n227), .A2(n195), .ZN(n51) );
  ND2D1 U249 ( .A1(n157), .A2(n195), .ZN(n102) );
  ND2D1 U250 ( .A1(n226), .A2(n194), .ZN(n92) );
  ND2D1 U251 ( .A1(n209), .A2(n195), .ZN(n184) );
  ND2D1 U252 ( .A1(n227), .A2(n194), .ZN(n185) );
  ND2D1 U253 ( .A1(n199), .A2(n195), .ZN(n101) );
  ND2D1 U254 ( .A1(n186), .A2(n159), .ZN(n64) );
  ND2D1 U255 ( .A1(n194), .A2(n199), .ZN(n156) );
  ND2D1 U256 ( .A1(n227), .A2(n159), .ZN(n183) );
  ND2D1 U257 ( .A1(n186), .A2(n147), .ZN(n104) );
  ND2D1 U258 ( .A1(n221), .A2(n159), .ZN(n175) );
  ND2D1 U259 ( .A1(n194), .A2(n157), .ZN(n85) );
  ND2D1 U260 ( .A1(n42), .A2(n195), .ZN(n77) );
  ND2D1 U261 ( .A1(n219), .A2(n194), .ZN(n162) );
  ND2D1 U262 ( .A1(n186), .A2(n194), .ZN(n58) );
  ND2D1 U263 ( .A1(n186), .A2(n195), .ZN(n79) );
  ND2D1 U264 ( .A1(n157), .A2(n147), .ZN(n78) );
  ND2D1 U265 ( .A1(n159), .A2(n157), .ZN(n124) );
  XOR3D1 U267 ( .A1(N244), .A2(n25), .A3(sub_0_root_sub_77_carry[12]), .Z(
        value[24]) );
  INR3D0 U268 ( .A1(n215), .B1(fx[22]), .B2(fy[20]), .ZN(n224) );
  NR2D1 U269 ( .A1(fy[22]), .A2(fy[21]), .ZN(n215) );
  INVD1 U270 ( .I(fy[22]), .ZN(n16) );
  NR2D1 U271 ( .A1(n16), .A2(fy[21]), .ZN(n211) );
  INVD1 U272 ( .I(fx[20]), .ZN(n2440) );
  INVD1 U273 ( .I(fy[20]), .ZN(n246) );
  INVD1 U274 ( .I(fx[21]), .ZN(n2420) );
  INVD1 U275 ( .I(fy[21]), .ZN(n245) );
  NR2D1 U276 ( .A1(fx[21]), .A2(fx[20]), .ZN(n195) );
  INR3D0 U277 ( .A1(n211), .B1(fx[22]), .B2(fy[20]), .ZN(n209) );
  NR2D1 U278 ( .A1(fy[22]), .A2(n146), .ZN(b[4]) );
  AOI221D0 U279 ( .A1(n147), .A2(n148), .B1(fx[22]), .B2(n245), .C(n149), .ZN(
        n146) );
  ND2D1 U280 ( .A1(fy[21]), .A2(n151), .ZN(n148) );
  AOI211XD0 U281 ( .A1(n2430), .A2(n2410), .B(fy[20]), .C(n150), .ZN(n149) );
  INVD1 U282 ( .I(fx[19]), .ZN(rx_3_) );
  INVD1 U283 ( .I(fy[19]), .ZN(ry_3_) );
  TIEL U284 ( .ZN(n247) );
  CKXOR2D0 U4 ( .A1(N232), .A2(py_0_), .Z(value[12]) );
  IND2D0 U5 ( .A1(N232), .B1(py_0_), .ZN(sub_0_root_sub_77_carry[1]) );
  NR2D0 U6 ( .A1(n248), .A2(n161), .ZN(n29) );
  ND3D0 U7 ( .A1(n201), .A2(n202), .A3(n84), .ZN(n248) );
endmodule


module oadm_fixed_mul_plane_root_opt_LEVEL3_RESIDUAL_DROP10_DW01_add_3 ( A, B, 
        CI, SUM, CO );
  input [28:0] A;
  input [28:0] B;
  output [28:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [24:8] carry;

  XOR3D1 U1_24 ( .A1(A[24]), .A2(B[24]), .A3(carry[24]), .Z(SUM[24]) );
  FA1D0 U1_7 ( .A(A[7]), .B(B[7]), .CI(n1), .CO(carry[8]), .S(SUM[7]) );
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
  FA1D0 U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  FA1D0 U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  FA1D0 U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  FA1D0 U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  FA1D0 U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  FA1D0 U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  AN2XD1 U1 ( .A1(B[6]), .A2(A[6]), .Z(n1) );
  CKXOR2D1 U2 ( .A1(B[6]), .A2(A[6]), .Z(SUM[6]) );
endmodule


module oadm_fixed_mul_plane_root_opt_LEVEL3_RESIDUAL_DROP10_DW_mult_tc_1 ( a, 
        b, product );
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
  INVD1 U127 ( .I(a[9]), .ZN(n172) );
  XNR2D1 U129 ( .A1(b[1]), .A2(n178), .ZN(n165) );
  XNR2D1 U131 ( .A1(b[1]), .A2(n179), .ZN(n166) );
  INVD1 U132 ( .I(a[0]), .ZN(n181) );
  XNR2D1 U133 ( .A1(b[1]), .A2(n180), .ZN(n167) );
  INVD1 U134 ( .I(a[6]), .ZN(n175) );
  INVD1 U135 ( .I(a[7]), .ZN(n174) );
  INVD1 U136 ( .I(a[8]), .ZN(n173) );
  INVD1 U137 ( .I(a[1]), .ZN(n180) );
  INVD1 U138 ( .I(a[2]), .ZN(n179) );
  INVD1 U139 ( .I(a[3]), .ZN(n178) );
  INVD1 U140 ( .I(a[4]), .ZN(n177) );
  INVD1 U141 ( .I(a[5]), .ZN(n176) );
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


module oadm_fixed_mul_plane_root_opt_LEVEL3_RESIDUAL_DROP10_DW_mult_tc_0 ( a, 
        b, product );
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
  INVD1 U127 ( .I(a[9]), .ZN(n172) );
  XNR2D1 U129 ( .A1(b[1]), .A2(n178), .ZN(n165) );
  XNR2D1 U131 ( .A1(b[1]), .A2(n179), .ZN(n166) );
  INVD1 U132 ( .I(a[0]), .ZN(n181) );
  XNR2D1 U133 ( .A1(b[1]), .A2(n180), .ZN(n167) );
  INVD1 U134 ( .I(a[6]), .ZN(n175) );
  INVD1 U135 ( .I(a[7]), .ZN(n174) );
  INVD1 U136 ( .I(a[8]), .ZN(n173) );
  INVD1 U137 ( .I(a[1]), .ZN(n180) );
  INVD1 U138 ( .I(a[2]), .ZN(n179) );
  INVD1 U139 ( .I(a[3]), .ZN(n178) );
  INVD1 U140 ( .I(a[4]), .ZN(n177) );
  INVD1 U141 ( .I(a[5]), .ZN(n176) );
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


module oadm_fixed_mul_plane_root_opt_LEVEL3_RESIDUAL_DROP10_DW_mult_uns_0 ( a, 
        b, product );
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
  XNR3D1 U59 ( .A1(n42), .A2(n46), .A3(n102), .ZN(n21) );
  INVD1 U60 ( .I(n22), .ZN(n95) );
  ND2D1 U61 ( .A1(n46), .A2(n26), .ZN(n105) );
  IND2D1 U62 ( .A1(n46), .B1(n26), .ZN(n104) );
  NR2D1 U63 ( .A1(n46), .A2(n22), .ZN(n106) );
  AN2XD1 U64 ( .A1(n46), .A2(n95), .Z(n88) );
  INVD1 U68 ( .I(b[3]), .ZN(n90) );
  INVD1 U69 ( .I(a[3]), .ZN(n91) );
  INVD1 U70 ( .I(a[1]), .ZN(n97) );
  INVD1 U71 ( .I(b[1]), .ZN(n99) );
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
  MUX2D0 U58 ( .I0(n106), .I1(n88), .S(n42), .Z(n107) );
  CKND0 U65 ( .I(n22), .ZN(n108) );
endmodule


module oadm_fixed_mul_plane_root_opt_LEVEL3_RESIDUAL_DROP10 ( x_mantissa, 
        y_mantissa, plane_value );
  input [23:0] x_mantissa;
  input [23:0] y_mantissa;
  output [28:0] plane_value;
  wire   x_residual_19_, y_residual_19_, N9, N8, N7, N6, N51, N50, net3419,
         N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36,
         N35, N34, N33, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14,
         N13, N12, N11, N10, add_52_carry_2_, add_52_carry_3_, n70, n80, n90,
         n100, n110, n120, n130, n140, n150, n160, n170, n180, n190, n200;
  wire   [15:9] x_product;
  wire   [15:0] y_product;
  wire   [9:1] midpoint_product;
  wire   [4:1] midpoint_sum;
  wire   [24:17] add_2_root_add_56_3_carry;
  wire   [11:8] add_1_root_add_56_3_carry;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10;

  oadm_fixed_mul_plane_root_opt_LEVEL3_RESIDUAL_DROP10_DW01_add_3 add_0_root_add_56_3 ( 
        .A({net3419, net3419, net3419, net3419, N24, N23, N22, N21, N20, N19, 
        N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, net3419, 
        net3419, net3419, net3419, net3419, net3419}), .B({net3419, net3419, 
        net3419, net3419, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, 
        N41, N40, N39, N38, N37, N36, N35, N34, N33, net3419, net3419, net3419, 
        net3419, net3419, net3419}), .CI(net3419), .SUM({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, plane_value[24:6], 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9}) );
  oadm_fixed_mul_plane_root_opt_LEVEL3_RESIDUAL_DROP10_DW_mult_tc_1 mult_33 ( 
        .a({x_residual_19_, x_mantissa[18:10]}), .b({net3419, n70, 
        y_mantissa[22:20], n70}), .product({x_product, N14, N13, N12, N11, N10, 
        N9, N8, N7, N6}) );
  oadm_fixed_mul_plane_root_opt_LEVEL3_RESIDUAL_DROP10_DW_mult_tc_0 mult_35 ( 
        .a({y_residual_19_, y_mantissa[18:10]}), .b({net3419, n70, 
        x_mantissa[22:20], n70}), .product(y_product) );
  oadm_fixed_mul_plane_root_opt_LEVEL3_RESIDUAL_DROP10_DW_mult_uns_0 mult_46 ( 
        .a({n70, x_mantissa[22:20], n70}), .b({n70, y_mantissa[22:20], n70}), 
        .product({midpoint_product, SYNOPSYS_UNCONNECTED__10}) );
  TIEH U3 ( .Z(n70) );
  AN2XD1 U11 ( .A1(midpoint_sum[1]), .A2(y_product[0]), .Z(n80) );
  AN2XD1 U12 ( .A1(n110), .A2(y_product[15]), .Z(n90) );
  AN2XD1 U13 ( .A1(n90), .A2(y_product[15]), .Z(n100) );
  FA1D0 U16 ( .A(midpoint_product[4]), .B(x_product[13]), .CI(
        add_2_root_add_56_3_carry[19]), .CO(add_2_root_add_56_3_carry[20]), 
        .S(N19) );
  AN2XD1 U17 ( .A1(n120), .A2(y_product[14]), .Z(n110) );
  AN2XD1 U18 ( .A1(n130), .A2(y_product[13]), .Z(n120) );
  AN2XD1 U19 ( .A1(n140), .A2(y_product[12]), .Z(n130) );
  AN2XD1 U20 ( .A1(n150), .A2(y_product[11]), .Z(n140) );
  FA1D0 U21 ( .A(midpoint_product[8]), .B(x_product[15]), .CI(
        add_2_root_add_56_3_carry[23]), .CO(add_2_root_add_56_3_carry[24]), 
        .S(N23) );
  FA1D0 U22 ( .A(midpoint_product[6]), .B(x_product[15]), .CI(
        add_2_root_add_56_3_carry[21]), .CO(add_2_root_add_56_3_carry[22]), 
        .S(N21) );
  FA1D0 U23 ( .A(midpoint_product[7]), .B(x_product[15]), .CI(
        add_2_root_add_56_3_carry[22]), .CO(add_2_root_add_56_3_carry[23]), 
        .S(N22) );
  XOR3D1 U24 ( .A1(midpoint_product[9]), .A2(x_product[15]), .A3(
        add_2_root_add_56_3_carry[24]), .Z(N24) );
  FA1D0 U25 ( .A(midpoint_product[5]), .B(x_product[14]), .CI(
        add_2_root_add_56_3_carry[20]), .CO(add_2_root_add_56_3_carry[21]), 
        .S(N20) );
  FA1D0 U26 ( .A(midpoint_product[3]), .B(x_product[12]), .CI(
        add_2_root_add_56_3_carry[18]), .CO(add_2_root_add_56_3_carry[19]), 
        .S(N18) );
  INVD1 U27 ( .I(x_product[9]), .ZN(N15) );
  AN2XD1 U28 ( .A1(n160), .A2(y_product[10]), .Z(n150) );
  AN2XD1 U29 ( .A1(n170), .A2(y_product[9]), .Z(n160) );
  AN2XD1 U30 ( .A1(n180), .A2(y_product[8]), .Z(n170) );
  AN2XD1 U31 ( .A1(n190), .A2(y_product[7]), .Z(n180) );
  AN2XD1 U32 ( .A1(n200), .A2(y_product[6]), .Z(n190) );
  AN2XD1 U33 ( .A1(add_1_root_add_56_3_carry[11]), .A2(y_product[5]), .Z(n200)
         );
  FA1D0 U35 ( .A(midpoint_product[2]), .B(x_product[11]), .CI(
        add_2_root_add_56_3_carry[17]), .CO(add_2_root_add_56_3_carry[18]), 
        .S(N17) );
  FA1D0 U36 ( .A(midpoint_product[1]), .B(x_product[10]), .CI(x_product[9]), 
        .CO(add_2_root_add_56_3_carry[17]), .S(N16) );
  FA1D0 U37 ( .A(y_product[3]), .B(midpoint_sum[4]), .CI(
        add_1_root_add_56_3_carry[9]), .CO(add_1_root_add_56_3_carry[10]), .S(
        N36) );
  FA1D0 U38 ( .A(y_product[2]), .B(midpoint_sum[3]), .CI(
        add_1_root_add_56_3_carry[8]), .CO(add_1_root_add_56_3_carry[9]), .S(
        N35) );
  FA1D0 U39 ( .A(y_product[1]), .B(midpoint_sum[2]), .CI(n80), .CO(
        add_1_root_add_56_3_carry[8]), .S(N34) );
  FA1D0 U40 ( .A(x_mantissa[22]), .B(y_mantissa[22]), .CI(add_52_carry_3_), 
        .CO(midpoint_sum[4]), .S(midpoint_sum[3]) );
  FA1D0 U43 ( .A(x_mantissa[21]), .B(y_mantissa[21]), .CI(add_52_carry_2_), 
        .CO(add_52_carry_3_), .S(midpoint_sum[2]) );
  INVD1 U47 ( .I(x_mantissa[19]), .ZN(x_residual_19_) );
  INVD1 U48 ( .I(y_mantissa[19]), .ZN(y_residual_19_) );
  TIEL U49 ( .ZN(net3419) );
  XNR2D1 U50 ( .A1(y_mantissa[20]), .A2(x_mantissa[20]), .ZN(midpoint_sum[1])
         );
  XNR2D1 U51 ( .A1(add_1_root_add_56_3_carry[10]), .A2(y_product[4]), .ZN(N37)
         );
  CKXOR2D1 U52 ( .A1(midpoint_sum[1]), .A2(y_product[0]), .Z(N33) );
  CKXOR2D1 U53 ( .A1(add_1_root_add_56_3_carry[11]), .A2(y_product[5]), .Z(N38) );
  CKXOR2D1 U54 ( .A1(n200), .A2(y_product[6]), .Z(N39) );
  CKXOR2D1 U55 ( .A1(n190), .A2(y_product[7]), .Z(N40) );
  CKXOR2D1 U56 ( .A1(n180), .A2(y_product[8]), .Z(N41) );
  CKXOR2D1 U57 ( .A1(n170), .A2(y_product[9]), .Z(N42) );
  CKXOR2D1 U58 ( .A1(n160), .A2(y_product[10]), .Z(N43) );
  CKXOR2D1 U59 ( .A1(n150), .A2(y_product[11]), .Z(N44) );
  CKXOR2D1 U60 ( .A1(n140), .A2(y_product[12]), .Z(N45) );
  CKXOR2D1 U61 ( .A1(n130), .A2(y_product[13]), .Z(N46) );
  CKXOR2D1 U62 ( .A1(n120), .A2(y_product[14]), .Z(N47) );
  CKXOR2D1 U63 ( .A1(n110), .A2(y_product[15]), .Z(N48) );
  CKXOR2D1 U64 ( .A1(n90), .A2(y_product[15]), .Z(N49) );
  CKXOR2D1 U65 ( .A1(n100), .A2(y_product[15]), .Z(N50) );
  INR2D0 U4 ( .A1(y_product[15]), .B1(n100), .ZN(N51) );
  OR2D0 U5 ( .A1(y_product[4]), .A2(add_1_root_add_56_3_carry[10]), .Z(
        add_1_root_add_56_3_carry[11]) );
  OR2D0 U6 ( .A1(x_mantissa[20]), .A2(y_mantissa[20]), .Z(add_52_carry_2_) );
endmodule


module fp32_normal_finite_wrapper_DW01_add_3_DW01_add_10 ( A, B, CI, SUM, CO
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


module fp32_normal_finite_wrapper_DW01_add_1_DW01_add_8 ( A, B, CI, SUM, CO );
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
  fp32_normal_finite_wrapper_DW01_add_3_DW01_add_10 add_1_root_add_0_root_add_25_2 ( 
        .A(x[30:23]), .B({N42, N41, N40, N39, N38, N37, N36, N11}), .CI(n79), 
        .SUM({N34, N33, N32, N31, N30, N29, N28, N27}) );
  fp32_normal_finite_wrapper_DW01_add_1_DW01_add_8 add_1_root_add_0_root_add_22_2 ( 
        .A(x[30:23]), .B({y[30], N17, N16, N15, N14, N13, N12, N11}), .CI(n79), 
        .SUM({N10, N9, N8, N7, N6, N5, N4, N3}) );
  AN2XD1 U3 ( .A1(exponent_adjust[0]), .A2(N3), .Z(n1) );
  AN2XD1 U4 ( .A1(exponent_adjust[0]), .A2(N27), .Z(n2) );
  CKBD1 U25 ( .I(result_fraction[11]), .Z(result[11]) );
  CKBD1 U26 ( .I(result_fraction[19]), .Z(result[19]) );
  CKBD1 U27 ( .I(result_fraction[12]), .Z(result[12]) );
  CKBD1 U28 ( .I(result_fraction[13]), .Z(result[13]) );
  CKBD1 U29 ( .I(result_fraction[14]), .Z(result[14]) );
  CKBD1 U30 ( .I(result_fraction[15]), .Z(result[15]) );
  CKBD1 U31 ( .I(result_fraction[16]), .Z(result[16]) );
  CKBD1 U32 ( .I(result_fraction[17]), .Z(result[17]) );
  CKBD1 U33 ( .I(result_fraction[18]), .Z(result[18]) );
  CKBD1 U34 ( .I(result_fraction[8]), .Z(result[8]) );
  CKBD1 U35 ( .I(result_fraction[9]), .Z(result[9]) );
  CKBD1 U36 ( .I(result_fraction[10]), .Z(result[10]) );
  CKBD1 U37 ( .I(result_fraction[7]), .Z(result[7]) );
  CKBD1 U38 ( .I(result_fraction[6]), .Z(result[6]) );
  CKBD1 U39 ( .I(result_fraction[5]), .Z(result[5]) );
  FA1D0 U40 ( .A(N4), .B(exponent_adjust[1]), .CI(n1), .CO(
        add_0_root_add_0_root_add_22_2_carry[2]), .S(N20) );
  FA1D0 U41 ( .A(N5), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[2]), .CO(
        add_0_root_add_0_root_add_22_2_carry[3]), .S(N21) );
  FA1D0 U42 ( .A(N6), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[3]), .CO(
        add_0_root_add_0_root_add_22_2_carry[4]), .S(N22) );
  FA1D0 U43 ( .A(N7), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[4]), .CO(
        add_0_root_add_0_root_add_22_2_carry[5]), .S(N23) );
  FA1D0 U44 ( .A(N8), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[5]), .CO(
        add_0_root_add_0_root_add_22_2_carry[6]), .S(N24) );
  FA1D0 U45 ( .A(N9), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[6]), .CO(
        add_0_root_add_0_root_add_22_2_carry[7]), .S(N25) );
  FA1D0 U46 ( .A(N28), .B(exponent_adjust[1]), .CI(n2), .CO(
        add_0_root_add_0_root_add_25_2_carry[2]), .S(N44) );
  FA1D0 U47 ( .A(N29), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[2]), .CO(
        add_0_root_add_0_root_add_25_2_carry[3]), .S(N45) );
  FA1D0 U48 ( .A(N30), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[3]), .CO(
        add_0_root_add_0_root_add_25_2_carry[4]), .S(N46) );
  FA1D0 U49 ( .A(N31), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[4]), .CO(
        add_0_root_add_0_root_add_25_2_carry[5]), .S(N47) );
  FA1D0 U50 ( .A(N32), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[5]), .CO(
        add_0_root_add_0_root_add_25_2_carry[6]), .S(N48) );
  FA1D0 U51 ( .A(N33), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[6]), .CO(
        add_0_root_add_0_root_add_25_2_carry[7]), .S(N49) );
  AO22D0 U52 ( .A1(N49), .A2(n78), .B1(N25), .B2(divide_mode), .Z(result[29])
         );
  AO22D0 U53 ( .A1(N48), .A2(n78), .B1(N24), .B2(divide_mode), .Z(result[28])
         );
  AO22D0 U54 ( .A1(N47), .A2(n78), .B1(N23), .B2(divide_mode), .Z(result[27])
         );
  AO22D0 U55 ( .A1(N46), .A2(n78), .B1(N22), .B2(divide_mode), .Z(result[26])
         );
  AO22D0 U56 ( .A1(N45), .A2(n78), .B1(N21), .B2(divide_mode), .Z(result[25])
         );
  AO22D0 U57 ( .A1(N44), .A2(n78), .B1(N20), .B2(divide_mode), .Z(result[24])
         );
  AO22D0 U58 ( .A1(N43), .A2(n78), .B1(N19), .B2(divide_mode), .Z(result[23])
         );
  INVD1 U59 ( .I(divide_mode), .ZN(n78) );
  AO22D0 U60 ( .A1(N50), .A2(n78), .B1(divide_mode), .B2(N26), .Z(result[30])
         );
  XOR3D1 U61 ( .A1(N34), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_25_2_carry[7]), .Z(N50) );
  XOR3D1 U62 ( .A1(N10), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_22_2_carry[7]), .Z(N26) );
  CKBD1 U63 ( .I(y[22]), .Z(fraction_y[22]) );
  CKBD1 U64 ( .I(y[20]), .Z(fraction_y[20]) );
  CKBD1 U65 ( .I(x[22]), .Z(fraction_x[22]) );
  CKBD1 U66 ( .I(x[20]), .Z(fraction_x[20]) );
  CKBD1 U67 ( .I(y[21]), .Z(fraction_y[21]) );
  CKBD1 U68 ( .I(x[21]), .Z(fraction_x[21]) );
  AN2XD1 U69 ( .A1(y[23]), .A2(y[24]), .Z(n35) );
  INVD1 U70 ( .I(y[29]), .ZN(N17) );
  INVD0 U71 ( .I(y[24]), .ZN(N12) );
  INVD1 U72 ( .I(y[25]), .ZN(N13) );
  INVD1 U73 ( .I(y[26]), .ZN(N14) );
  INVD1 U74 ( .I(y[27]), .ZN(N15) );
  INVD1 U75 ( .I(y[28]), .ZN(N16) );
  AN2XD1 U76 ( .A1(n35), .A2(y[25]), .Z(n410) );
  AN2XD1 U77 ( .A1(n410), .A2(y[26]), .Z(n51) );
  AN2XD1 U78 ( .A1(n51), .A2(y[27]), .Z(n60) );
  AN2XD1 U79 ( .A1(n60), .A2(y[28]), .Z(n70) );
  CKXOR2D1 U80 ( .A1(y[30]), .A2(n77), .Z(N42) );
  ND2D1 U81 ( .A1(n70), .A2(y[29]), .ZN(n77) );
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
  CKBD1 U97 ( .I(y[19]), .Z(fraction_y[19]) );
  CKBD1 U98 ( .I(y[18]), .Z(fraction_y[18]) );
  CKBD1 U99 ( .I(y[17]), .Z(fraction_y[17]) );
  CKBD1 U100 ( .I(y[16]), .Z(fraction_y[16]) );
  CKBD1 U101 ( .I(y[15]), .Z(fraction_y[15]) );
  CKBD1 U102 ( .I(y[14]), .Z(fraction_y[14]) );
  CKBD1 U103 ( .I(y[13]), .Z(fraction_y[13]) );
  CKBD1 U104 ( .I(y[12]), .Z(fraction_y[12]) );
  CKBD1 U105 ( .I(y[11]), .Z(fraction_y[11]) );
  CKBD1 U106 ( .I(y[10]), .Z(fraction_y[10]) );
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


module absdm_l3_separate_native_mul ( x, y, divide_mode, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  input divide_mode;
  wire   n2, n3, n5, n6, n7, n8, n9, n10, n11, n12, n13, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n56, n63;
  wire   [22:10] fx;
  wire   [22:10] fy;
  wire   [24:12] div_value;
  wire   [24:6] mul_value;
  wire   [22:5] normalized_fraction;
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
        SYNOPSYS_UNCONNECTED__50;
  assign result[1] = 1'b0;
  assign result[2] = 1'b0;
  assign result[3] = 1'b0;
  assign result[4] = 1'b0;
  assign result[0] = 1'b0;

  absdm_l3_separate_native_mul_div div_core ( .fx({fx[22:16], 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .fy({fy[22:16], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .value({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, div_value, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15}) );
  oadm_fixed_mul_plane_root_opt_LEVEL3_RESIDUAL_DROP10 mul_core ( .x_mantissa(
        {1'b0, fx, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y_mantissa({1'b0, fy, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .plane_value({SYNOPSYS_UNCONNECTED__16, 
        SYNOPSYS_UNCONNECTED__17, SYNOPSYS_UNCONNECTED__18, 
        SYNOPSYS_UNCONNECTED__19, mul_value, SYNOPSYS_UNCONNECTED__20, 
        SYNOPSYS_UNCONNECTED__21, SYNOPSYS_UNCONNECTED__22, 
        SYNOPSYS_UNCONNECTED__23, SYNOPSYS_UNCONNECTED__24, 
        SYNOPSYS_UNCONNECTED__25}) );
  fp32_normal_finite_wrapper wrapper ( .x({x[31:10], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y({y[31:10], 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .divide_mode(n51), 
        .fraction_x({fx, SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31, 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35}), .fraction_y({fy, 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, 
        SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39, 
        SYNOPSYS_UNCONNECTED__40, SYNOPSYS_UNCONNECTED__41, 
        SYNOPSYS_UNCONNECTED__42, SYNOPSYS_UNCONNECTED__43, 
        SYNOPSYS_UNCONNECTED__44, SYNOPSYS_UNCONNECTED__45}), 
        .result_fraction({normalized_fraction, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .exponent_adjust({exponent_adjust[2], exponent_adjust[2], 
        exponent_adjust[0]}), .result({result[31:5], SYNOPSYS_UNCONNECTED__46, 
        SYNOPSYS_UNCONNECTED__47, SYNOPSYS_UNCONNECTED__48, 
        SYNOPSYS_UNCONNECTED__49, SYNOPSYS_UNCONNECTED__50}) );
  ND2D1 U78 ( .A1(n9), .A2(n7), .ZN(exponent_adjust[2]) );
  IND3D1 U80 ( .A1(n25), .B1(n26), .B2(n56), .ZN(n9) );
  ND3D1 U81 ( .A1(n26), .A2(n25), .A3(n56), .ZN(n7) );
  ND2D1 U82 ( .A1(n56), .A2(n9), .ZN(exponent_adjust[0]) );
  OAI221D0 U83 ( .A1(n47), .A2(n3), .B1(n56), .B2(n45), .C(n49), .ZN(
        normalized_fraction[11]) );
  OA22D0 U84 ( .A1(n7), .A2(n2), .B1(n9), .B2(n5), .Z(n49) );
  OAI221D0 U85 ( .A1(n31), .A2(n3), .B1(n56), .B2(n28), .C(n34), .ZN(
        normalized_fraction[19]) );
  OA22D0 U86 ( .A1(n7), .A2(n35), .B1(n9), .B2(n33), .Z(n34) );
  OAI221D0 U87 ( .A1(n45), .A2(n3), .B1(n56), .B2(n43), .C(n48), .ZN(
        normalized_fraction[12]) );
  OA22D0 U88 ( .A1(n7), .A2(n5), .B1(n9), .B2(n47), .Z(n48) );
  OAI221D0 U89 ( .A1(n43), .A2(n3), .B1(n56), .B2(n41), .C(n46), .ZN(
        normalized_fraction[13]) );
  OA22D0 U90 ( .A1(n7), .A2(n47), .B1(n9), .B2(n45), .Z(n46) );
  OAI221D0 U91 ( .A1(n41), .A2(n3), .B1(n56), .B2(n39), .C(n44), .ZN(
        normalized_fraction[14]) );
  OA22D0 U92 ( .A1(n7), .A2(n45), .B1(n9), .B2(n43), .Z(n44) );
  OAI221D0 U93 ( .A1(n39), .A2(n3), .B1(n56), .B2(n37), .C(n42), .ZN(
        normalized_fraction[15]) );
  OA22D0 U94 ( .A1(n7), .A2(n43), .B1(n9), .B2(n41), .Z(n42) );
  OAI221D0 U95 ( .A1(n37), .A2(n3), .B1(n56), .B2(n35), .C(n40), .ZN(
        normalized_fraction[16]) );
  OA22D0 U96 ( .A1(n7), .A2(n41), .B1(n9), .B2(n39), .Z(n40) );
  OAI221D0 U97 ( .A1(n35), .A2(n3), .B1(n56), .B2(n33), .C(n38), .ZN(
        normalized_fraction[17]) );
  OA22D0 U98 ( .A1(n7), .A2(n39), .B1(n9), .B2(n37), .Z(n38) );
  OAI221D0 U99 ( .A1(n33), .A2(n3), .B1(n56), .B2(n31), .C(n36), .ZN(
        normalized_fraction[18]) );
  OA22D0 U100 ( .A1(n7), .A2(n37), .B1(n9), .B2(n35), .Z(n36) );
  OAI221D0 U101 ( .A1(n10), .A2(n3), .B1(n56), .B2(n2), .C(n11), .ZN(
        normalized_fraction[8]) );
  OA22D0 U102 ( .A1(n7), .A2(n12), .B1(n9), .B2(n8), .Z(n11) );
  OAI221D0 U103 ( .A1(n2), .A2(n3), .B1(n56), .B2(n5), .C(n6), .ZN(
        normalized_fraction[9]) );
  OA22D0 U104 ( .A1(n7), .A2(n8), .B1(n9), .B2(n10), .Z(n6) );
  OAI221D0 U105 ( .A1(n5), .A2(n3), .B1(n56), .B2(n47), .C(n50), .ZN(
        normalized_fraction[10]) );
  OA22D0 U106 ( .A1(n7), .A2(n10), .B1(n9), .B2(n2), .Z(n50) );
  OAI221D0 U107 ( .A1(n25), .A2(n3), .B1(n56), .B2(n26), .C(n27), .ZN(
        normalized_fraction[22]) );
  OA22D0 U108 ( .A1(n7), .A2(n28), .B1(n9), .B2(n29), .Z(n27) );
  OAI221D0 U109 ( .A1(n29), .A2(n3), .B1(n56), .B2(n25), .C(n30), .ZN(
        normalized_fraction[21]) );
  OA22D0 U110 ( .A1(n7), .A2(n31), .B1(n9), .B2(n28), .Z(n30) );
  OAI221D0 U111 ( .A1(n28), .A2(n3), .B1(n56), .B2(n29), .C(n32), .ZN(
        normalized_fraction[20]) );
  OA22D0 U112 ( .A1(n7), .A2(n33), .B1(n9), .B2(n31), .Z(n32) );
  OAI221D0 U113 ( .A1(n8), .A2(n3), .B1(n56), .B2(n10), .C(n13), .ZN(
        normalized_fraction[7]) );
  IND2D1 U116 ( .A1(n26), .B1(n56), .ZN(n3) );
  OAI22D1 U117 ( .A1(n12), .A2(n3), .B1(n56), .B2(n8), .ZN(
        normalized_fraction[6]) );
  NR2D1 U118 ( .A1(n56), .A2(n12), .ZN(normalized_fraction[5]) );
  ND2D1 U119 ( .A1(mul_value[11]), .A2(n63), .ZN(n47) );
  ND2D1 U120 ( .A1(mul_value[10]), .A2(n63), .ZN(n5) );
  ND2D1 U121 ( .A1(mul_value[9]), .A2(n63), .ZN(n2) );
  ND2D1 U122 ( .A1(mul_value[8]), .A2(n63), .ZN(n10) );
  ND2D1 U123 ( .A1(mul_value[7]), .A2(n63), .ZN(n8) );
  ND2D1 U124 ( .A1(mul_value[6]), .A2(n63), .ZN(n12) );
  AOI22D1 U127 ( .A1(mul_value[23]), .A2(n63), .B1(div_value[23]), .B2(n51), 
        .ZN(n26) );
  AOI22D1 U128 ( .A1(mul_value[22]), .A2(n63), .B1(div_value[22]), .B2(n51), 
        .ZN(n25) );
  AOI22D1 U129 ( .A1(mul_value[21]), .A2(n63), .B1(div_value[21]), .B2(n51), 
        .ZN(n29) );
  AOI22D1 U130 ( .A1(mul_value[20]), .A2(n63), .B1(div_value[20]), .B2(n51), 
        .ZN(n28) );
  AOI22D1 U131 ( .A1(mul_value[19]), .A2(n63), .B1(div_value[19]), .B2(n51), 
        .ZN(n31) );
  AOI22D1 U132 ( .A1(mul_value[18]), .A2(n63), .B1(div_value[18]), .B2(n51), 
        .ZN(n33) );
  AOI22D1 U133 ( .A1(mul_value[17]), .A2(n63), .B1(div_value[17]), .B2(n51), 
        .ZN(n35) );
  AOI22D1 U134 ( .A1(mul_value[16]), .A2(n63), .B1(div_value[16]), .B2(n51), 
        .ZN(n37) );
  AOI22D1 U135 ( .A1(mul_value[15]), .A2(n63), .B1(div_value[15]), .B2(n51), 
        .ZN(n39) );
  AOI22D1 U136 ( .A1(mul_value[14]), .A2(n63), .B1(div_value[14]), .B2(n51), 
        .ZN(n41) );
  AOI22D1 U137 ( .A1(mul_value[13]), .A2(n63), .B1(div_value[13]), .B2(n51), 
        .ZN(n43) );
  AOI22D1 U138 ( .A1(mul_value[12]), .A2(n63), .B1(div_value[12]), .B2(n51), 
        .ZN(n45) );
  INVD1 U139 ( .I(n51), .ZN(n63) );
  CKBD1 U147 ( .I(divide_mode), .Z(n51) );
  OR2D1 U79 ( .A1(n9), .A2(n12), .Z(n13) );
  AOI22D1 U114 ( .A1(n63), .A2(mul_value[24]), .B1(div_value[24]), .B2(n51), 
        .ZN(n56) );
endmodule

