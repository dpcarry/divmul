/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Wed Sep 16 00:56:53 2026
/////////////////////////////////////////////////////////////


module unified_div_drop_l3_separate_div_DW_mult_tc_1 ( a, b, product );
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
  INVD1 U55 ( .I(a[2]), .ZN(n81) );
  INVD1 U56 ( .I(a[0]), .ZN(n83) );
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


module unified_div_drop_l3_separate_div_DW_mult_tc_0 ( a, b, product );
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
  INVD1 U44 ( .I(b[0]), .ZN(n65) );
  CKBD1 U45 ( .I(product[7]), .Z(product[8]) );
  INVD1 U46 ( .I(a[3]), .ZN(n68) );
  INVD1 U47 ( .I(a[2]), .ZN(n69) );
  INVD1 U48 ( .I(a[1]), .ZN(n70) );
  INVD1 U49 ( .I(a[0]), .ZN(n71) );
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


module unified_div_drop_l3_separate_div_DW01_add_0 ( A, B, CI, SUM, CO );
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


module unified_div_drop_l3_separate_div ( fx, fy, value );
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
         n186, n187, n188, n189, n190, n191, n192, n193, n194, n196, n197,
         n198, n199, n201, n202, n203, n204, n205, n206, n207, n208, n209,
         n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, n220,
         n221, n222, n223, n224, n225, n226, n227, n228, py_9_, py_7_, py_6_,
         py_5_, py_4_, py_3_, py_2_, py_1_, py_0_, px_9, px_7_, px_6_, px_5_,
         px_4_, px_3_, px_2_, px_1_, px_0_, N244, N243, N242, N241, N240, N239,
         N238, N237, N236, N235, N234, N233, N232, n13, n14, n16, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n229, n230, n231,
         n2320, n2330, n2340, n2350, n2360, n2370, n2380, n2390, n2400, n2410,
         n2420, n2430, n2440, n245, n246, n247, n248, n249;
  wire   [2:0] a;
  wire   [4:0] b;
  wire   [11:0] t;
  wire   [12:1] sub_0_root_sub_78_carry;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1;

  AN4XD1 U12 ( .A1(n64), .A2(n65), .A3(n66), .A4(n67), .Z(n49) );
  AN4XD1 U21 ( .A1(n84), .A2(n85), .A3(n86), .A4(n87), .Z(n44) );
  AN4XD1 U23 ( .A1(n90), .A2(n91), .A3(n92), .A4(n93), .Z(n48) );
  AN4XD1 U30 ( .A1(n108), .A2(n109), .A3(n110), .A4(n111), .Z(n107) );
  AN4XD1 U49 ( .A1(n72), .A2(n30), .A3(n140), .A4(n51), .Z(n125) );
  AN4XD1 U70 ( .A1(n166), .A2(n167), .A3(n168), .A4(n169), .Z(n136) );
  AN4XD1 U79 ( .A1(n152), .A2(n72), .A3(n180), .A4(n51), .Z(n144) );
  AN4XD1 U81 ( .A1(n182), .A2(n85), .A3(n183), .A4(n184), .Z(n72) );
  AN3XD1 U86 ( .A1(n109), .A2(n108), .A3(n187), .Z(n152) );
  AN3XD1 U95 ( .A1(n196), .A2(fy[21]), .A3(fy[22]), .Z(n157) );
  AN3XD1 U96 ( .A1(n58), .A2(n88), .A3(n79), .Z(n168) );
  AN3XD1 U99 ( .A1(n150), .A2(fy[22]), .A3(fy[20]), .Z(n186) );
  AN2XD1 U101 ( .A1(n156), .A2(n77), .Z(n197) );
  AN4XD1 U104 ( .A1(n139), .A2(n156), .A3(n101), .A4(n165), .Z(n171) );
  AN3XD1 U118 ( .A1(n150), .A2(n247), .A3(n245), .Z(n199) );
  AN2XD1 U128 ( .A1(n208), .A2(n16), .Z(n135) );
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
  AN2XD1 U175 ( .A1(n219), .A2(n16), .Z(n123) );
  AN2XD1 U182 ( .A1(n227), .A2(n147), .Z(n158) );
  AN2XD1 U184 ( .A1(n223), .A2(n194), .Z(n76) );
  AN2XD1 U190 ( .A1(n223), .A2(n16), .Z(n129) );
  AN3XD1 U198 ( .A1(n150), .A2(fy[22]), .A3(n247), .Z(n226) );
  AN3XD1 U200 ( .A1(n196), .A2(n245), .A3(fy[21]), .Z(n222) );
  AN2XD1 U201 ( .A1(fx[22]), .A2(fy[20]), .Z(n196) );
  AN3XD1 U209 ( .A1(n150), .A2(fy[20]), .A3(n245), .Z(n221) );
  unified_div_drop_l3_separate_div_DW_mult_tc_1 mult_76_S2 ( .a({ry_3_, 
        fy[18:16]}), .b({n248, b}), .product({py_9_, SYNOPSYS_UNCONNECTED__0, 
        py_7_, py_6_, py_5_, py_4_, py_3_, py_2_, py_1_, py_0_}) );
  unified_div_drop_l3_separate_div_DW_mult_tc_0 mult_76 ( .a({rx_3_, fx[18:16]}), .b({n248, n13, a}), .product({px_9, px_7_, px_6_, px_5_, px_4_, px_3_, 
        px_2_, px_1_, px_0_}) );
  unified_div_drop_l3_separate_div_DW01_add_0 add_1_root_sub_78 ( .A({n248, 
        n248, t}), .B({px_9, px_9, px_9, px_9, px_9, px_9, px_7_, px_6_, px_5_, 
        px_4_, px_3_, px_2_, px_1_, px_0_}), .CI(n248), .SUM({
        SYNOPSYS_UNCONNECTED__1, N244, N243, N242, N241, N240, N239, N238, 
        N237, N236, N235, N234, N233, N232}) );
  TIEH U3 ( .Z(n13) );
  NR2D1 U17 ( .A1(n2440), .A2(fx[21]), .ZN(n194) );
  ND4D1 U18 ( .A1(n44), .A2(n45), .A3(n30), .A4(n46), .ZN(t[9]) );
  NR3D0 U19 ( .A1(n230), .A2(n2380), .A3(n40), .ZN(n46) );
  FA1D0 U20 ( .A(N240), .B(n25), .CI(sub_0_root_sub_78_carry[8]), .CO(
        sub_0_root_sub_78_carry[9]), .S(value[20]) );
  FA1D0 U22 ( .A(N241), .B(n25), .CI(sub_0_root_sub_78_carry[9]), .CO(
        sub_0_root_sub_78_carry[10]), .S(value[21]) );
  FA1D0 U24 ( .A(N242), .B(n25), .CI(sub_0_root_sub_78_carry[10]), .CO(
        sub_0_root_sub_78_carry[11]), .S(value[22]) );
  FA1D0 U25 ( .A(N243), .B(n25), .CI(sub_0_root_sub_78_carry[11]), .CO(
        sub_0_root_sub_78_carry[12]), .S(value[23]) );
  FA1D0 U26 ( .A(N238), .B(n23), .CI(sub_0_root_sub_78_carry[6]), .CO(
        sub_0_root_sub_78_carry[7]), .S(value[18]) );
  INVD1 U27 ( .I(py_6_), .ZN(n23) );
  FA1D0 U28 ( .A(N237), .B(n22), .CI(sub_0_root_sub_78_carry[5]), .CO(
        sub_0_root_sub_78_carry[6]), .S(value[17]) );
  INVD1 U29 ( .I(py_5_), .ZN(n22) );
  INVD1 U31 ( .I(n91), .ZN(n229) );
  FA1D0 U32 ( .A(N236), .B(n21), .CI(sub_0_root_sub_78_carry[4]), .CO(
        sub_0_root_sub_78_carry[5]), .S(value[16]) );
  INVD1 U33 ( .I(py_4_), .ZN(n21) );
  INVD1 U34 ( .I(n111), .ZN(n34) );
  INVD1 U35 ( .I(n141), .ZN(n30) );
  INVD1 U37 ( .I(n132), .ZN(n28) );
  INVD1 U38 ( .I(n139), .ZN(n36) );
  INR4D0 U39 ( .A1(n201), .B1(n57), .B2(n128), .B3(n94), .ZN(n112) );
  ND4D1 U40 ( .A1(n204), .A2(n112), .A3(n153), .A4(n205), .ZN(a[1]) );
  NR4D0 U41 ( .A1(n2390), .A2(n2350), .A3(n135), .A4(n96), .ZN(n205) );
  NR2D1 U42 ( .A1(n2370), .A2(n43), .ZN(n212) );
  NR4D0 U43 ( .A1(n62), .A2(n2340), .A3(n56), .A4(n229), .ZN(n213) );
  IND4D1 U44 ( .A1(n47), .B1(n48), .B2(n49), .B3(n50), .ZN(t[8]) );
  INR3D0 U45 ( .A1(n51), .B1(n2380), .B2(n35), .ZN(n50) );
  ND4D1 U46 ( .A1(n136), .A2(n125), .A3(n137), .A4(n86), .ZN(t[10]) );
  NR2D1 U47 ( .A1(n35), .A2(n76), .ZN(n137) );
  IIND4D1 U48 ( .A1(n131), .A2(n133), .B1(n29), .B2(n134), .ZN(t[11]) );
  NR4D0 U50 ( .A1(n57), .A2(n39), .A3(n103), .A4(n135), .ZN(n134) );
  IND4D1 U51 ( .A1(n52), .B1(n53), .B2(n54), .B3(n55), .ZN(t[7]) );
  INR2D1 U52 ( .A1(n58), .B1(n59), .ZN(n54) );
  NR4D0 U53 ( .A1(n231), .A2(n2400), .A3(n56), .A4(n57), .ZN(n55) );
  FA1D0 U54 ( .A(N239), .B(n24), .CI(sub_0_root_sub_78_carry[7]), .CO(
        sub_0_root_sub_78_carry[8]), .S(value[19]) );
  INVD1 U55 ( .I(py_7_), .ZN(n24) );
  ND3D1 U56 ( .A1(n29), .A2(n170), .A3(n171), .ZN(a[2]) );
  INR4D0 U59 ( .A1(n108), .B1(n35), .B2(n2350), .B3(n76), .ZN(n202) );
  IND4D1 U60 ( .A1(n60), .B1(n49), .B2(n30), .B3(n61), .ZN(t[6]) );
  NR4D0 U61 ( .A1(n40), .A2(n62), .A3(n63), .A4(n2350), .ZN(n61) );
  NR4D0 U62 ( .A1(n123), .A2(n62), .A3(n27), .A4(n35), .ZN(n228) );
  IND4D1 U63 ( .A1(n69), .B1(n89), .B2(n53), .B3(n216), .ZN(a[0]) );
  NR2D1 U64 ( .A1(n95), .A2(n131), .ZN(n216) );
  INR4D0 U65 ( .A1(n167), .B1(n14), .B2(n103), .B3(n39), .ZN(n82) );
  OR3XD1 U66 ( .A1(n76), .A2(n158), .A3(n2350), .Z(n14) );
  INR3D0 U67 ( .A1(n105), .B1(n129), .B2(n70), .ZN(n45) );
  ND4D1 U68 ( .A1(n72), .A2(n28), .A3(n73), .A4(n74), .ZN(t[5]) );
  NR4D0 U69 ( .A1(n26), .A2(n75), .A3(n56), .A4(n76), .ZN(n74) );
  INR3D0 U71 ( .A1(n79), .B1(n80), .B2(n81), .ZN(n73) );
  INVD1 U72 ( .I(n177), .ZN(n2340) );
  NR2D1 U73 ( .A1(n71), .A2(n176), .ZN(n220) );
  INVD1 U74 ( .I(n190), .ZN(n2350) );
  ND4D1 U75 ( .A1(n48), .A2(n44), .A3(n82), .A4(n83), .ZN(t[4]) );
  NR4D0 U76 ( .A1(n31), .A2(n2390), .A3(n2370), .A4(n43), .ZN(n83) );
  ND2D1 U77 ( .A1(n214), .A2(n147), .ZN(n91) );
  ND4D1 U78 ( .A1(n206), .A2(n170), .A3(n192), .A4(n207), .ZN(n96) );
  NR3D0 U80 ( .A1(n133), .A2(n35), .A3(n26), .ZN(n207) );
  ND3D1 U82 ( .A1(n65), .A2(n89), .A3(n119), .ZN(n133) );
  ND2D1 U83 ( .A1(n208), .A2(n147), .ZN(n119) );
  FA1D0 U84 ( .A(N235), .B(n20), .CI(sub_0_root_sub_78_carry[3]), .CO(
        sub_0_root_sub_78_carry[4]), .S(value[15]) );
  INVD1 U85 ( .I(py_3_), .ZN(n20) );
  INVD1 U87 ( .I(n166), .ZN(n43) );
  INVD1 U88 ( .I(n109), .ZN(n2370) );
  IND4D1 U89 ( .A1(n80), .B1(n112), .B2(n113), .B3(n114), .ZN(t[2]) );
  INR3D0 U90 ( .A1(n116), .B1(n117), .B2(n59), .ZN(n113) );
  NR4D0 U91 ( .A1(n115), .A2(n100), .A3(n27), .A4(n37), .ZN(n114) );
  INVD1 U92 ( .I(n178), .ZN(n35) );
  INVD1 U93 ( .I(n140), .ZN(n26) );
  NR2D1 U94 ( .A1(n2410), .A2(n217), .ZN(n103) );
  FA1D0 U97 ( .A(N234), .B(n19), .CI(sub_0_root_sub_78_carry[2]), .CO(
        sub_0_root_sub_78_carry[3]), .S(value[14]) );
  INVD1 U98 ( .I(py_2_), .ZN(n19) );
  INVD1 U100 ( .I(n120), .ZN(n39) );
  NR4D0 U102 ( .A1(n100), .A2(n26), .A3(n2340), .A4(n129), .ZN(n68) );
  NR3D0 U103 ( .A1(n37), .A2(n63), .A3(n38), .ZN(n84) );
  INVD1 U105 ( .I(n118), .ZN(n38) );
  ND2D1 U106 ( .A1(n219), .A2(n147), .ZN(n111) );
  ND2D1 U107 ( .A1(n199), .A2(n147), .ZN(n110) );
  ND2D1 U108 ( .A1(n110), .A2(n116), .ZN(n161) );
  ND2D1 U109 ( .A1(n223), .A2(n147), .ZN(n139) );
  INVD1 U110 ( .I(n206), .ZN(n27) );
  INVD1 U111 ( .I(n198), .ZN(n37) );
  ND4D1 U112 ( .A1(n177), .A2(n184), .A3(n188), .A4(n189), .ZN(b[0]) );
  NR3D0 U113 ( .A1(n27), .A2(n94), .A3(n2360), .ZN(n188) );
  NR4D0 U114 ( .A1(n47), .A2(n60), .A3(n132), .A4(n131), .ZN(n189) );
  ND4D1 U115 ( .A1(n125), .A2(n28), .A3(n126), .A4(n127), .ZN(t[1]) );
  INR4D0 U116 ( .A1(n65), .B1(n62), .B2(n128), .B3(n129), .ZN(n127) );
  FA1D0 U117 ( .A(N233), .B(n18), .CI(sub_0_root_sub_78_carry[1]), .CO(
        sub_0_root_sub_78_carry[2]), .S(value[13]) );
  INVD1 U120 ( .I(py_1_), .ZN(n18) );
  ND2D1 U121 ( .A1(n42), .A2(n147), .ZN(n90) );
  INVD1 U122 ( .I(n217), .ZN(n42) );
  INR3D0 U123 ( .A1(n175), .B1(n76), .B2(n39), .ZN(n153) );
  ND4D1 U124 ( .A1(n183), .A2(n77), .A3(n88), .A4(n225), .ZN(n95) );
  NR2D1 U125 ( .A1(n40), .A2(n129), .ZN(n180) );
  ND4D1 U126 ( .A1(n144), .A2(n136), .A3(n163), .A4(n164), .ZN(b[2]) );
  NR2D1 U127 ( .A1(n133), .A2(n161), .ZN(n163) );
  INR4D0 U129 ( .A1(n165), .B1(n62), .B2(n71), .B3(n39), .ZN(n164) );
  INR3D0 U130 ( .A1(n185), .B1(n117), .B2(n32), .ZN(n182) );
  ND3D1 U131 ( .A1(n64), .A2(n102), .A3(n92), .ZN(n117) );
  INVD1 U134 ( .I(n184), .ZN(n2390) );
  ND4D1 U136 ( .A1(n171), .A2(n144), .A3(n172), .A4(n173), .ZN(b[1]) );
  NR3D0 U138 ( .A1(n130), .A2(n176), .A3(n81), .ZN(n172) );
  NR4D0 U139 ( .A1(n70), .A2(n174), .A3(n100), .A4(n57), .ZN(n173) );
  ND2D1 U141 ( .A1(n175), .A2(n89), .ZN(n174) );
  INVD1 U142 ( .I(py_9_), .ZN(n25) );
  INVD1 U143 ( .I(n104), .ZN(n32) );
  ND4D1 U144 ( .A1(n142), .A2(n152), .A3(n153), .A4(n154), .ZN(b[3]) );
  NR3D0 U145 ( .A1(n131), .A2(n103), .A3(n141), .ZN(n154) );
  NR3D0 U146 ( .A1(n229), .A2(n2380), .A3(n100), .ZN(n169) );
  ND4D1 U148 ( .A1(n167), .A2(n190), .A3(n166), .A4(n191), .ZN(n132) );
  INR4D0 U150 ( .A1(n119), .B1(n2400), .B2(n70), .B3(n57), .ZN(n191) );
  INVD1 U151 ( .I(n192), .ZN(n2400) );
  INR4D0 U152 ( .A1(n160), .B1(n96), .B2(n135), .B3(n161), .ZN(n142) );
  NR3D0 U153 ( .A1(n57), .A2(n128), .A3(n33), .ZN(n160) );
  ND2D1 U154 ( .A1(n175), .A2(n162), .ZN(n69) );
  NR3D0 U155 ( .A1(n158), .A2(n94), .A3(n123), .ZN(n143) );
  ND4D1 U157 ( .A1(n124), .A2(n77), .A3(n143), .A4(n155), .ZN(n141) );
  INR3D0 U160 ( .A1(n156), .B1(n2330), .B2(n31), .ZN(n155) );
  INVD1 U161 ( .I(n170), .ZN(n2380) );
  INVD1 U162 ( .I(n181), .ZN(n40) );
  ND4D1 U163 ( .A1(n168), .A2(n110), .A3(n193), .A4(n109), .ZN(n60) );
  NR2D1 U165 ( .A1(n230), .A2(n231), .ZN(n193) );
  INVD1 U166 ( .I(n102), .ZN(n230) );
  ND4D1 U167 ( .A1(n118), .A2(n88), .A3(n105), .A4(n179), .ZN(n130) );
  NR3D0 U168 ( .A1(n135), .A2(n229), .A3(n103), .ZN(n179) );
  INVD1 U169 ( .I(n85), .ZN(n231) );
  ND4D1 U171 ( .A1(n185), .A2(n108), .A3(n197), .A4(n198), .ZN(n47) );
  INVD1 U172 ( .I(n101), .ZN(n31) );
  INVD1 U173 ( .I(n78), .ZN(n2330) );
  INVD1 U176 ( .I(n162), .ZN(n33) );
  INVD1 U177 ( .I(n183), .ZN(n2360) );
  ND4D1 U178 ( .A1(n142), .A2(n143), .A3(n144), .A4(n145), .ZN(t[0]) );
  NR4D0 U179 ( .A1(n38), .A2(n56), .A3(n2350), .A4(n34), .ZN(n145) );
  NR2D1 U180 ( .A1(n130), .A2(n131), .ZN(n126) );
  ND3D1 U181 ( .A1(n177), .A2(n178), .A3(n90), .ZN(n81) );
  ND4D1 U183 ( .A1(n120), .A2(n58), .A3(n121), .A4(n122), .ZN(n80) );
  NR2D1 U185 ( .A1(n33), .A2(n71), .ZN(n121) );
  NR4D0 U186 ( .A1(n2380), .A2(n31), .A3(n2320), .A4(n123), .ZN(n122) );
  INVD1 U187 ( .I(n124), .ZN(n2320) );
  ND4D1 U188 ( .A1(n104), .A2(n105), .A3(n106), .A4(n107), .ZN(n52) );
  NR3D0 U189 ( .A1(n36), .A2(n2330), .A3(n40), .ZN(n106) );
  INR4D0 U191 ( .A1(n138), .B1(n69), .B2(n2400), .B3(n128), .ZN(n86) );
  NR2D1 U192 ( .A1(n36), .A2(n27), .ZN(n138) );
  IINR4D0 U193 ( .A1(n88), .A2(n89), .B1(n62), .B2(n2360), .ZN(n87) );
  ND2D1 U194 ( .A1(n111), .A2(n108), .ZN(n115) );
  ND2D1 U195 ( .A1(n118), .A2(n119), .ZN(n59) );
  NR4D0 U196 ( .A1(n2330), .A2(n2320), .A3(n94), .A4(n56), .ZN(n93) );
  NR3D0 U197 ( .A1(n2390), .A2(n70), .A3(n71), .ZN(n66) );
  INR4D0 U199 ( .A1(n68), .B1(n32), .B2(n69), .B3(n59), .ZN(n67) );
  ND2D1 U202 ( .A1(n101), .A2(n102), .ZN(n99) );
  ND2D1 U203 ( .A1(n77), .A2(n78), .ZN(n75) );
  INR2D1 U204 ( .A1(n215), .B1(n151), .ZN(n223) );
  ND2D1 U205 ( .A1(n224), .A2(n159), .ZN(n177) );
  NR2D1 U206 ( .A1(n2420), .A2(n2440), .ZN(n147) );
  OAI211D1 U207 ( .A1(n2430), .A2(n217), .B(n204), .C(n218), .ZN(n131) );
  AOI211XD0 U208 ( .A1(n219), .A2(n159), .B(n41), .C(n34), .ZN(n218) );
  INVD1 U210 ( .I(n90), .ZN(n41) );
  ND2D1 U211 ( .A1(n224), .A2(n194), .ZN(n190) );
  IIND4D1 U212 ( .A1(n95), .A2(n96), .B1(n97), .B2(n98), .ZN(t[3]) );
  NR4D0 U213 ( .A1(n94), .A2(n99), .A3(n100), .A4(n76), .ZN(n98) );
  NR3D0 U214 ( .A1(n52), .A2(n103), .A3(n43), .ZN(n97) );
  ND2D1 U215 ( .A1(n159), .A2(n222), .ZN(n89) );
  ND2D1 U216 ( .A1(n214), .A2(n16), .ZN(n105) );
  INR2D1 U217 ( .A1(n211), .B1(n151), .ZN(n208) );
  ND2D1 U218 ( .A1(n214), .A2(n159), .ZN(n166) );
  ND2D1 U219 ( .A1(n159), .A2(n210), .ZN(n109) );
  ND2D1 U220 ( .A1(n208), .A2(n159), .ZN(n65) );
  ND2D1 U221 ( .A1(n223), .A2(n159), .ZN(n178) );
  ND2D1 U222 ( .A1(n221), .A2(n16), .ZN(n140) );
  INVD1 U223 ( .I(n159), .ZN(n2410) );
  ND2D1 U224 ( .A1(n203), .A2(n16), .ZN(n108) );
  ND2D1 U225 ( .A1(n222), .A2(n16), .ZN(n120) );
  INR2D1 U226 ( .A1(n226), .B1(n2410), .ZN(n100) );
  ND2D1 U227 ( .A1(n203), .A2(n147), .ZN(n118) );
  INR2D1 U228 ( .A1(n203), .B1(n2430), .ZN(n63) );
  INVD1 U229 ( .I(n194), .ZN(n2430) );
  NR3D0 U230 ( .A1(n245), .A2(n246), .A3(n151), .ZN(n219) );
  ND2D1 U231 ( .A1(n226), .A2(n16), .ZN(n167) );
  ND2D1 U232 ( .A1(n159), .A2(n199), .ZN(n116) );
  ND2D1 U233 ( .A1(n194), .A2(n210), .ZN(n187) );
  ND2D1 U234 ( .A1(n221), .A2(n194), .ZN(n206) );
  ND2D1 U235 ( .A1(n224), .A2(n16), .ZN(n165) );
  ND2D1 U236 ( .A1(n203), .A2(n159), .ZN(n198) );
  ND2D1 U237 ( .A1(n147), .A2(n222), .ZN(n181) );
  ND2D1 U238 ( .A1(n209), .A2(n159), .ZN(n192) );
  ND2D1 U239 ( .A1(n211), .A2(n196), .ZN(n217) );
  ND2D1 U240 ( .A1(n16), .A2(n210), .ZN(n170) );
  ND2D1 U241 ( .A1(n227), .A2(n16), .ZN(n51) );
  ND2D1 U242 ( .A1(n226), .A2(n194), .ZN(n92) );
  ND2D1 U243 ( .A1(n199), .A2(n16), .ZN(n101) );
  ND2D1 U244 ( .A1(n194), .A2(n199), .ZN(n156) );
  ND2D1 U245 ( .A1(n186), .A2(n159), .ZN(n64) );
  ND2D1 U246 ( .A1(n209), .A2(n16), .ZN(n184) );
  ND2D1 U247 ( .A1(n157), .A2(n16), .ZN(n102) );
  ND2D1 U248 ( .A1(n227), .A2(n194), .ZN(n185) );
  ND2D1 U249 ( .A1(n221), .A2(n159), .ZN(n175) );
  ND2D1 U250 ( .A1(n186), .A2(n147), .ZN(n104) );
  ND2D1 U251 ( .A1(n227), .A2(n159), .ZN(n183) );
  ND2D1 U252 ( .A1(n226), .A2(n147), .ZN(n88) );
  ND2D1 U253 ( .A1(n194), .A2(n157), .ZN(n85) );
  ND2D1 U254 ( .A1(n219), .A2(n194), .ZN(n162) );
  ND2D1 U255 ( .A1(n42), .A2(n16), .ZN(n77) );
  ND2D1 U256 ( .A1(n186), .A2(n194), .ZN(n58) );
  ND2D1 U257 ( .A1(n186), .A2(n16), .ZN(n79) );
  ND2D1 U258 ( .A1(n157), .A2(n147), .ZN(n78) );
  ND2D1 U259 ( .A1(n159), .A2(n157), .ZN(n124) );
  XOR3D1 U261 ( .A1(N244), .A2(n25), .A3(sub_0_root_sub_78_carry[12]), .Z(
        value[24]) );
  INR3D0 U262 ( .A1(n215), .B1(fx[22]), .B2(n247), .ZN(n210) );
  NR2D1 U263 ( .A1(fy[22]), .A2(fy[21]), .ZN(n215) );
  INR3D0 U264 ( .A1(n215), .B1(fx[22]), .B2(fy[20]), .ZN(n224) );
  INVD1 U265 ( .I(fx[20]), .ZN(n2440) );
  ND2D1 U266 ( .A1(fx[22]), .A2(n247), .ZN(n151) );
  INVD1 U267 ( .I(fy[20]), .ZN(n247) );
  INR3D0 U268 ( .A1(n211), .B1(n247), .B2(fx[22]), .ZN(n227) );
  NR2D1 U269 ( .A1(n245), .A2(fy[21]), .ZN(n211) );
  INVD1 U270 ( .I(fy[22]), .ZN(n245) );
  INVD1 U271 ( .I(fx[21]), .ZN(n2420) );
  NR2D1 U272 ( .A1(n2420), .A2(fx[20]), .ZN(n159) );
  NR2D1 U273 ( .A1(n246), .A2(fx[22]), .ZN(n150) );
  INVD1 U274 ( .I(fy[21]), .ZN(n246) );
  NR3D0 U277 ( .A1(n246), .A2(fy[22]), .A3(n151), .ZN(n203) );
  INR3D0 U278 ( .A1(n211), .B1(fx[22]), .B2(fy[20]), .ZN(n209) );
  NR2D1 U279 ( .A1(fy[22]), .A2(n146), .ZN(b[4]) );
  AOI221D0 U280 ( .A1(n147), .A2(n148), .B1(fx[22]), .B2(n246), .C(n149), .ZN(
        n146) );
  ND2D1 U281 ( .A1(fy[21]), .A2(n151), .ZN(n148) );
  AOI211XD0 U282 ( .A1(n2430), .A2(n2410), .B(fy[20]), .C(n150), .ZN(n149) );
  INVD1 U283 ( .I(fx[19]), .ZN(rx_3_) );
  INVD1 U284 ( .I(fy[19]), .ZN(ry_3_) );
  TIEL U285 ( .ZN(n248) );
  CKXOR2D0 U4 ( .A1(N232), .A2(py_0_), .Z(value[12]) );
  IND2D0 U5 ( .A1(N232), .B1(py_0_), .ZN(sub_0_root_sub_78_carry[1]) );
  NR2D0 U6 ( .A1(n249), .A2(n161), .ZN(n29) );
  ND3D0 U7 ( .A1(n202), .A2(n84), .A3(n201), .ZN(n249) );
  NR2XD0 U8 ( .A1(fx[21]), .A2(fx[20]), .ZN(n16) );
endmodule


module unified_div_drop_l3_separate_mul_DW_mult_tc_1_DW_mult_tc_3 ( a, b, 
        product );
  input [3:0] a;
  input [5:0] b;
  output [9:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n25, n26, n27, n30, n31, n32, n35,
         n36, n37, n41, n42, n77, n78, n79, n80, n81, n82, n83, n84;

  FA1D0 U3 ( .A(n9), .B(n80), .CI(n3), .CO(n2), .S(product[7]) );
  FA1D0 U4 ( .A(n11), .B(n10), .CI(n4), .CO(n3), .S(product[6]) );
  FA1D0 U5 ( .A(n16), .B(n12), .CI(n5), .CO(n4), .S(product[5]) );
  FA1D0 U6 ( .A(n17), .B(n18), .CI(n6), .CO(n5), .S(product[4]) );
  FA1D0 U7 ( .A(n19), .B(n21), .CI(n7), .CO(n6), .S(product[3]) );
  FA1D0 U8 ( .A(n8), .B(n37), .CI(n23), .CO(n7), .S(product[2]) );
  HA1D0 U9 ( .A(n42), .B(a[1]), .CO(n8), .S(product[1]) );
  FA1D0 U10 ( .A(n25), .B(a[2]), .CI(n13), .CO(n9), .S(n10) );
  FA1D0 U11 ( .A(n14), .B(n26), .CI(n15), .CO(n11), .S(n12) );
  HA1D0 U12 ( .A(n30), .B(a[1]), .CO(n13), .S(n14) );
  CMPE42D1 U13 ( .A(n35), .B(a[0]), .C(n31), .CIX(n20), .D(n27), .CO(n16), 
        .COX(n15), .S(n17) );
  FA1D0 U14 ( .A(n32), .B(n36), .CI(n22), .CO(n18), .S(n19) );
  HA1D0 U17 ( .A(n41), .B(a[2]), .CO(n22), .S(n23) );
  INVD1 U49 ( .I(b[3]), .ZN(n78) );
  CKBD1 U50 ( .I(product[8]), .Z(product[9]) );
  INVD1 U51 ( .I(b[2]), .ZN(n77) );
  INVD1 U52 ( .I(b[1]), .ZN(n79) );
  INVD1 U53 ( .I(a[3]), .ZN(n80) );
  INVD1 U54 ( .I(a[1]), .ZN(n82) );
  INVD1 U55 ( .I(a[0]), .ZN(n83) );
  INVD1 U56 ( .I(a[2]), .ZN(n81) );
  CKBD1 U57 ( .I(a[0]), .Z(product[0]) );
  CKND0 U58 ( .I(n2), .ZN(product[8]) );
  NR2D0 U59 ( .A1(n83), .A2(n79), .ZN(n42) );
  NR2D0 U60 ( .A1(n83), .A2(n77), .ZN(n41) );
  NR2D0 U61 ( .A1(n79), .A2(n82), .ZN(n37) );
  NR2D0 U62 ( .A1(n77), .A2(n82), .ZN(n36) );
  NR2D0 U63 ( .A1(n82), .A2(n78), .ZN(n35) );
  NR2D0 U64 ( .A1(n79), .A2(n81), .ZN(n32) );
  NR2D0 U65 ( .A1(n77), .A2(n81), .ZN(n31) );
  NR2D0 U66 ( .A1(n78), .A2(n81), .ZN(n30) );
  CKND2D0 U67 ( .A1(b[1]), .A2(a[3]), .ZN(n27) );
  CKND2D0 U68 ( .A1(b[2]), .A2(a[3]), .ZN(n26) );
  CKND2D0 U69 ( .A1(b[3]), .A2(a[3]), .ZN(n25) );
  CKXOR2D0 U70 ( .A1(n84), .A2(n80), .Z(n21) );
  CKND2D0 U71 ( .A1(n84), .A2(a[3]), .ZN(n20) );
  CKND2D0 U72 ( .A1(b[3]), .A2(a[0]), .ZN(n84) );
endmodule


module unified_div_drop_l3_separate_mul_DW_mult_tc_0_DW_mult_tc_2 ( a, b, 
        product );
  input [3:0] a;
  input [5:0] b;
  output [9:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n25, n26, n27, n30, n31, n32, n35,
         n36, n37, n41, n42, n77, n78, n79, n80, n81, n82, n83, n84;

  FA1D0 U3 ( .A(n9), .B(n80), .CI(n3), .CO(n2), .S(product[7]) );
  FA1D0 U4 ( .A(n11), .B(n10), .CI(n4), .CO(n3), .S(product[6]) );
  FA1D0 U5 ( .A(n16), .B(n12), .CI(n5), .CO(n4), .S(product[5]) );
  FA1D0 U6 ( .A(n17), .B(n18), .CI(n6), .CO(n5), .S(product[4]) );
  FA1D0 U7 ( .A(n19), .B(n21), .CI(n7), .CO(n6), .S(product[3]) );
  FA1D0 U8 ( .A(n8), .B(n37), .CI(n23), .CO(n7), .S(product[2]) );
  HA1D0 U9 ( .A(n42), .B(a[1]), .CO(n8), .S(product[1]) );
  FA1D0 U10 ( .A(n25), .B(a[2]), .CI(n13), .CO(n9), .S(n10) );
  FA1D0 U11 ( .A(n14), .B(n26), .CI(n15), .CO(n11), .S(n12) );
  HA1D0 U12 ( .A(n30), .B(a[1]), .CO(n13), .S(n14) );
  CMPE42D1 U13 ( .A(n35), .B(a[0]), .C(n31), .CIX(n20), .D(n27), .CO(n16), 
        .COX(n15), .S(n17) );
  FA1D0 U14 ( .A(n32), .B(n36), .CI(n22), .CO(n18), .S(n19) );
  HA1D0 U17 ( .A(n41), .B(a[2]), .CO(n22), .S(n23) );
  INVD1 U49 ( .I(b[2]), .ZN(n77) );
  CKBD1 U50 ( .I(product[8]), .Z(product[9]) );
  INVD1 U51 ( .I(b[1]), .ZN(n78) );
  INVD1 U52 ( .I(b[3]), .ZN(n79) );
  INVD1 U53 ( .I(a[3]), .ZN(n80) );
  INVD1 U54 ( .I(a[1]), .ZN(n82) );
  INVD1 U55 ( .I(a[2]), .ZN(n81) );
  INVD1 U56 ( .I(a[0]), .ZN(n83) );
  CKBD1 U57 ( .I(a[0]), .Z(product[0]) );
  CKND0 U58 ( .I(n2), .ZN(product[8]) );
  NR2D0 U59 ( .A1(n83), .A2(n78), .ZN(n42) );
  NR2D0 U60 ( .A1(n83), .A2(n77), .ZN(n41) );
  NR2D0 U61 ( .A1(n78), .A2(n82), .ZN(n37) );
  NR2D0 U62 ( .A1(n77), .A2(n82), .ZN(n36) );
  NR2D0 U63 ( .A1(n82), .A2(n79), .ZN(n35) );
  NR2D0 U64 ( .A1(n78), .A2(n81), .ZN(n32) );
  NR2D0 U65 ( .A1(n77), .A2(n81), .ZN(n31) );
  NR2D0 U66 ( .A1(n79), .A2(n81), .ZN(n30) );
  CKND2D0 U67 ( .A1(b[1]), .A2(a[3]), .ZN(n27) );
  CKND2D0 U68 ( .A1(b[2]), .A2(a[3]), .ZN(n26) );
  CKND2D0 U69 ( .A1(b[3]), .A2(a[3]), .ZN(n25) );
  CKXOR2D0 U70 ( .A1(n84), .A2(n80), .Z(n21) );
  CKND2D0 U71 ( .A1(n84), .A2(a[3]), .ZN(n20) );
  CKND2D0 U72 ( .A1(b[3]), .A2(a[0]), .ZN(n84) );
endmodule


module unified_div_drop_l3_separate_mul_DW01_add_1_DW01_add_2 ( A, B, CI, SUM, 
        CO );
  input [14:0] A;
  input [14:0] B;
  output [14:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [12:2] carry;

  FA1D0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1D0 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  FA1D0 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA1D0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1D0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1D0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA1D0 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA1D0 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FA1D0 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  FA1D0 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FA1D0 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  XOR3D1 U1_12 ( .A1(A[12]), .A2(B[12]), .A3(carry[12]), .Z(SUM[12]) );
  AN2XD1 U1 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
  CKXOR2D1 U2 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
endmodule


module unified_div_drop_l3_separate_mul ( fx, fy, value );
  input [22:0] fx;
  input [22:0] fy;
  output [28:0] value;
  wire   rx_3_, ry_3_, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, py_9_, py_8_, py_7_, py_6_,
         py_5_, py_4_, py_3_, py_2_, py_1_, py_0_, px_9_, px_8_, px_7_, px_6_,
         px_5_, px_4_, px_3_, px_2_, px_1_, px_0_, N244, N243, N242, N241,
         N240, N239, N238, N237, N236, N235, N234, N233, N232, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206;
  wire   [3:1] a;
  wire   [3:1] b;
  wire   [12:0] t;
  wire   [12:2] add_0_root_add_159_2_carry;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1;

  AN4XD1 U9 ( .A1(n54), .A2(n55), .A3(n56), .A4(n57), .Z(n53) );
  CKXOR2D1 U17 ( .A1(fy[21]), .A2(fx[21]), .Z(n73) );
  CKXOR2D1 U25 ( .A1(fy[20]), .A2(n201), .Z(n83) );
  XNR2D1 U37 ( .A1(fy[22]), .A2(n17), .ZN(n60) );
  AN4XD1 U44 ( .A1(n99), .A2(n100), .A3(n101), .A4(n102), .Z(n36) );
  AN3XD1 U49 ( .A1(n110), .A2(n57), .A3(n111), .Z(n89) );
  AN4XD1 U53 ( .A1(n117), .A2(n99), .A3(n118), .A4(n119), .Z(n43) );
  AN2XD1 U57 ( .A1(n103), .A2(n15), .Z(n98) );
  OA211D1 U64 ( .A1(n77), .A2(n129), .B(n117), .C(n55), .Z(n113) );
  AN4XD1 U65 ( .A1(n130), .A2(n131), .A3(n132), .A4(n133), .Z(n92) );
  AN4XD1 U70 ( .A1(n67), .A2(n100), .A3(n117), .A4(n134), .Z(n139) );
  AN2XD1 U73 ( .A1(n140), .A2(n141), .Z(n103) );
  AN4XD1 U75 ( .A1(n143), .A2(n94), .A3(n144), .A4(n145), .Z(n50) );
  AN4XD1 U89 ( .A1(n155), .A2(n156), .A3(n157), .A4(n158), .Z(n93) );
  AN4XD1 U90 ( .A1(n159), .A2(n142), .A3(n160), .A4(n161), .Z(n158) );
  AN3XD1 U95 ( .A1(n110), .A2(n54), .A3(n95), .Z(n130) );
  AN4XD1 U96 ( .A1(n164), .A2(n114), .A3(n143), .A4(n165), .Z(n95) );
  OA211D1 U97 ( .A1(n166), .A2(n67), .B(n167), .C(n168), .Z(n165) );
  AN2XD1 U114 ( .A1(n175), .A2(n15), .Z(n126) );
  AN4XD1 U116 ( .A1(n159), .A2(n167), .A3(n176), .A4(n177), .Z(n51) );
  AN2XD1 U119 ( .A1(n174), .A2(n15), .Z(n115) );
  AN4XD1 U124 ( .A1(n168), .A2(n131), .A3(n180), .A4(n181), .Z(n111) );
  AN2XD1 U144 ( .A1(n192), .A2(n200), .Z(n184) );
  AN2XD1 U145 ( .A1(n191), .A2(n200), .Z(n48) );
  AN2XD1 U146 ( .A1(n192), .A2(n34), .Z(n178) );
  AN4XD1 U147 ( .A1(n151), .A2(n57), .A3(n193), .A4(n182), .Z(n128) );
  AN2XD1 U162 ( .A1(n194), .A2(n199), .Z(n58) );
  unified_div_drop_l3_separate_mul_DW_mult_tc_1_DW_mult_tc_3 mult_157_S2 ( .a(
        {ry_3_, fy[18:16]}), .b({n206, n13, b, n13}), .product({py_9_, py_8_, 
        py_7_, py_6_, py_5_, py_4_, py_3_, py_2_, py_1_, py_0_}) );
  unified_div_drop_l3_separate_mul_DW_mult_tc_0_DW_mult_tc_2 mult_157 ( .a({
        rx_3_, fx[18:16]}), .b({n206, n13, a, n13}), .product({px_9_, px_8_, 
        px_7_, px_6_, px_5_, px_4_, px_3_, px_2_, px_1_, px_0_}) );
  unified_div_drop_l3_separate_mul_DW01_add_1_DW01_add_2 add_1_root_add_159_2 ( 
        .A({n206, n206, t}), .B({px_9_, px_9_, px_9_, px_9_, px_9_, px_9_, 
        px_8_, px_7_, px_6_, px_5_, px_4_, px_3_, px_2_, px_1_, px_0_}), .CI(
        n206), .SUM({SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, N244, 
        N243, N242, N241, N240, N239, N238, N237, N236, N235, N234, N233, N232}) );
  TIEH U3 ( .Z(n13) );
  AN2XD1 U18 ( .A1(py_0_), .A2(N232), .Z(n14) );
  FA1D0 U19 ( .A(py_9_), .B(N241), .CI(add_0_root_add_159_2_carry[9]), .CO(
        add_0_root_add_159_2_carry[10]), .S(value[21]) );
  FA1D0 U20 ( .A(py_9_), .B(N242), .CI(add_0_root_add_159_2_carry[10]), .CO(
        add_0_root_add_159_2_carry[11]), .S(value[22]) );
  FA1D0 U21 ( .A(py_9_), .B(N243), .CI(add_0_root_add_159_2_carry[11]), .CO(
        add_0_root_add_159_2_carry[12]), .S(value[23]) );
  IND4D1 U22 ( .A1(n91), .B1(n92), .B2(n93), .B3(n94), .ZN(t[12]) );
  FA1D0 U23 ( .A(py_8_), .B(N240), .CI(add_0_root_add_159_2_carry[8]), .CO(
        add_0_root_add_159_2_carry[9]), .S(value[20]) );
  ND2D1 U24 ( .A1(n128), .A2(n149), .ZN(n91) );
  NR3D0 U26 ( .A1(n178), .A2(n48), .A3(n184), .ZN(n149) );
  INVD1 U27 ( .I(n163), .ZN(n19) );
  INVD1 U28 ( .I(n162), .ZN(n31) );
  INVD1 U29 ( .I(n151), .ZN(n25) );
  INVD1 U30 ( .I(n76), .ZN(n203) );
  ND3D1 U31 ( .A1(n162), .A2(n120), .A3(n114), .ZN(n35) );
  INVD1 U32 ( .I(n166), .ZN(n24) );
  INVD1 U33 ( .I(n155), .ZN(n29) );
  ND3D1 U34 ( .A1(n136), .A2(n94), .A3(n160), .ZN(n127) );
  INVD1 U35 ( .I(n156), .ZN(n30) );
  INVD1 U36 ( .I(n142), .ZN(n32) );
  ND4D1 U38 ( .A1(n90), .A2(n43), .A3(n39), .A4(n114), .ZN(t[0]) );
  AOI211XD0 U39 ( .A1(n199), .A2(n26), .B(n20), .C(n58), .ZN(n185) );
  INVD1 U40 ( .I(n161), .ZN(n20) );
  INR4D0 U41 ( .A1(n182), .B1(n183), .B2(n184), .B3(n29), .ZN(n181) );
  INR2D1 U42 ( .A1(n185), .B1(n41), .ZN(n180) );
  ND4D1 U43 ( .A1(n111), .A2(n51), .A3(n170), .A4(n171), .ZN(a[2]) );
  NR4D0 U45 ( .A1(n30), .A2(n126), .A3(n35), .A4(n121), .ZN(n171) );
  IND4D1 U46 ( .A1(n42), .B1(n43), .B2(n44), .B3(n45), .ZN(t[8]) );
  NR2D1 U47 ( .A1(n30), .A2(n41), .ZN(n44) );
  INR4D0 U48 ( .A1(n46), .B1(n47), .B2(n48), .B3(n49), .ZN(n45) );
  IND3D1 U50 ( .A1(n104), .B1(n89), .B2(n96), .ZN(t[10]) );
  IINR4D0 U54 ( .A1(n38), .A2(n39), .B1(n40), .B2(n23), .ZN(n37) );
  ND4D1 U55 ( .A1(n95), .A2(n36), .A3(n96), .A4(n97), .ZN(t[11]) );
  NR3D0 U56 ( .A1(n41), .A2(n98), .A3(n25), .ZN(n97) );
  ND4D1 U58 ( .A1(n50), .A2(n51), .A3(n52), .A4(n53), .ZN(t[7]) );
  NR2D1 U59 ( .A1(n58), .A2(n29), .ZN(n52) );
  FA1D0 U60 ( .A(py_7_), .B(N239), .CI(add_0_root_add_159_2_carry[7]), .CO(
        add_0_root_add_159_2_carry[8]), .S(value[19]) );
  FA1D0 U61 ( .A(py_6_), .B(N238), .CI(add_0_root_add_159_2_carry[6]), .CO(
        add_0_root_add_159_2_carry[7]), .S(value[18]) );
  IND4D1 U62 ( .A1(n187), .B1(n170), .B2(n185), .B3(n188), .ZN(a[1]) );
  IND4D1 U63 ( .A1(n196), .B1(n152), .B2(n143), .B3(n159), .ZN(n187) );
  NR3D0 U66 ( .A1(n127), .A2(n91), .A3(n42), .ZN(n188) );
  ND2D1 U67 ( .A1(n55), .A2(n148), .ZN(n196) );
  NR2D1 U68 ( .A1(n147), .A2(n47), .ZN(n193) );
  ND2D1 U69 ( .A1(n192), .A2(n199), .ZN(n161) );
  NR2D1 U71 ( .A1(n49), .A2(n108), .ZN(n176) );
  NR4D0 U72 ( .A1(n115), .A2(n47), .A3(n178), .A4(n122), .ZN(n177) );
  AOI221D0 U74 ( .A1(n200), .A2(n189), .B1(n34), .B2(n26), .C(n183), .ZN(n151)
         );
  FA1D0 U76 ( .A(py_4_), .B(N236), .CI(add_0_root_add_159_2_carry[4]), .CO(
        add_0_root_add_159_2_carry[5]), .S(value[16]) );
  ND4D1 U77 ( .A1(n130), .A2(n149), .A3(n93), .A4(n150), .ZN(a[3]) );
  IINR4D0 U78 ( .A1(n57), .A2(n123), .B1(n112), .B2(n25), .ZN(n150) );
  ND2D1 U79 ( .A1(n174), .A2(n34), .ZN(n167) );
  NR3D0 U80 ( .A1(n19), .A2(n40), .A3(n31), .ZN(n157) );
  ND2D1 U81 ( .A1(n191), .A2(n34), .ZN(n160) );
  INVD1 U82 ( .I(n164), .ZN(n26) );
  ND2D1 U83 ( .A1(n191), .A2(n199), .ZN(n163) );
  ND2D1 U84 ( .A1(n200), .A2(n194), .ZN(n182) );
  FA1D0 U85 ( .A(py_3_), .B(N235), .CI(add_0_root_add_159_2_carry[3]), .CO(
        add_0_root_add_159_2_carry[4]), .S(value[15]) );
  ND3D1 U86 ( .A1(n152), .A2(n56), .A3(n153), .ZN(n112) );
  ND2D1 U87 ( .A1(n199), .A2(n154), .ZN(n142) );
  ND2D1 U88 ( .A1(n173), .A2(n199), .ZN(n162) );
  INR3D0 U91 ( .A1(n136), .B1(n137), .B2(n126), .ZN(n132) );
  INR4D0 U92 ( .A1(n134), .B1(n135), .B2(n49), .B3(n58), .ZN(n133) );
  ND2D1 U93 ( .A1(n120), .A2(n38), .ZN(n135) );
  ND4D1 U94 ( .A1(n92), .A2(n128), .A3(n113), .A4(n125), .ZN(b[3]) );
  ND2D1 U98 ( .A1(n27), .A2(n203), .ZN(n166) );
  ND2D1 U99 ( .A1(n205), .A2(n204), .ZN(n76) );
  ND2D1 U100 ( .A1(n175), .A2(n199), .ZN(n120) );
  ND2D1 U101 ( .A1(n174), .A2(n200), .ZN(n168) );
  IINR4D0 U102 ( .A1(n46), .A2(n169), .B1(n115), .B2(n116), .ZN(n110) );
  ND2D1 U103 ( .A1(n189), .A2(n34), .ZN(n57) );
  ND2D1 U104 ( .A1(n34), .A2(n24), .ZN(n46) );
  ND2D1 U105 ( .A1(n34), .A2(n154), .ZN(n56) );
  INR3D0 U106 ( .A1(n38), .B1(n21), .B2(n26), .ZN(n170) );
  ND2D1 U107 ( .A1(n189), .A2(n199), .ZN(n143) );
  ND2D1 U108 ( .A1(n173), .A2(n200), .ZN(n155) );
  FA1D0 U109 ( .A(py_2_), .B(N234), .CI(add_0_root_add_159_2_carry[2]), .CO(
        add_0_root_add_159_2_carry[3]), .S(value[14]) );
  ND3D1 U110 ( .A1(n153), .A2(n101), .A3(n106), .ZN(n121) );
  ND2D1 U111 ( .A1(n174), .A2(n199), .ZN(n114) );
  ND2D1 U112 ( .A1(n173), .A2(n34), .ZN(n156) );
  ND2D1 U113 ( .A1(n28), .A2(n199), .ZN(n106) );
  INVD1 U115 ( .I(n172), .ZN(n28) );
  ND2D1 U117 ( .A1(n175), .A2(n200), .ZN(n131) );
  ND3D1 U118 ( .A1(n163), .A2(n134), .A3(n169), .ZN(n42) );
  ND2D1 U120 ( .A1(n190), .A2(n199), .ZN(n134) );
  ND2D1 U121 ( .A1(n190), .A2(n34), .ZN(n136) );
  ND2D1 U122 ( .A1(n21), .A2(n200), .ZN(n94) );
  INVD1 U123 ( .I(n179), .ZN(n21) );
  NR3D0 U125 ( .A1(n107), .A2(n19), .A3(n137), .ZN(n144) );
  NR4D0 U126 ( .A1(n146), .A2(n48), .A3(n116), .A4(n147), .ZN(n145) );
  ND2D1 U127 ( .A1(n124), .A2(n106), .ZN(n146) );
  IND2D1 U128 ( .A1(n112), .B1(n113), .ZN(n104) );
  INVD1 U129 ( .I(n148), .ZN(n18) );
  ND2D1 U130 ( .A1(n18), .A2(n200), .ZN(n124) );
  ND2D1 U131 ( .A1(n33), .A2(n199), .ZN(n117) );
  NR3D0 U132 ( .A1(n115), .A2(n116), .A3(n91), .ZN(n39) );
  ND2D1 U133 ( .A1(n103), .A2(n199), .ZN(n100) );
  INR3D0 U134 ( .A1(n100), .B1(n98), .B2(n23), .ZN(n118) );
  INR4D0 U135 ( .A1(n120), .B1(n31), .B2(n109), .B3(n121), .ZN(n119) );
  IND4D1 U136 ( .A1(n122), .B1(n123), .B2(n124), .B3(n125), .ZN(n109) );
  INVD1 U137 ( .I(n54), .ZN(n23) );
  NR3D0 U138 ( .A1(n32), .A2(n126), .A3(n127), .ZN(n90) );
  ND2D1 U139 ( .A1(n34), .A2(n18), .ZN(n99) );
  ND3D1 U140 ( .A1(n200), .A2(n204), .A3(n16), .ZN(n62) );
  INVD1 U141 ( .I(n80), .ZN(n198) );
  INR3D0 U142 ( .A1(n186), .B1(n17), .B2(n205), .ZN(n194) );
  INVD1 U143 ( .I(fy[21]), .ZN(n204) );
  OAI222D0 U148 ( .A1(n59), .A2(n60), .B1(n61), .B2(n16), .C1(fy[20]), .C2(n62), .ZN(t[6]) );
  AOI222D0 U149 ( .A1(n197), .A2(n205), .B1(fy[21]), .B2(n63), .C1(n201), .C2(
        n204), .ZN(n61) );
  AOI221D0 U150 ( .A1(fy[21]), .A2(n64), .B1(n27), .B2(n65), .C(n66), .ZN(n59)
         );
  INR2D1 U151 ( .A1(n194), .B1(n77), .ZN(n47) );
  FA1D0 U152 ( .A(py_5_), .B(N237), .CI(add_0_root_add_159_2_carry[5]), .CO(
        add_0_root_add_159_2_carry[6]), .S(value[17]) );
  INR3D0 U153 ( .A1(n195), .B1(n202), .B2(n204), .ZN(n192) );
  OAI22D1 U154 ( .A1(n27), .A2(n81), .B1(n82), .B2(n83), .ZN(t[4]) );
  AOI21D1 U155 ( .A1(fy[21]), .A2(n60), .B(n27), .ZN(n82) );
  INVD1 U156 ( .I(fy[20]), .ZN(n205) );
  INVD1 U157 ( .I(n72), .ZN(n27) );
  NR2D1 U158 ( .A1(n164), .A2(n67), .ZN(n183) );
  ND3D1 U159 ( .A1(fy[20]), .A2(fy[21]), .A3(n27), .ZN(n164) );
  INR3D0 U160 ( .A1(n140), .B1(n205), .B2(n17), .ZN(n190) );
  INR2D1 U161 ( .A1(n190), .B1(n67), .ZN(n147) );
  INVD1 U163 ( .I(n77), .ZN(n34) );
  AOI21D1 U164 ( .A1(n87), .A2(n60), .B(n27), .ZN(t[3]) );
  INVD1 U165 ( .I(n78), .ZN(n199) );
  ND2D1 U166 ( .A1(n192), .A2(n15), .ZN(n159) );
  INR3D0 U167 ( .A1(n195), .B1(n202), .B2(fy[21]), .ZN(n191) );
  INR3D0 U168 ( .A1(n186), .B1(fy[20]), .B2(n17), .ZN(n175) );
  INR2D1 U169 ( .A1(n175), .B1(n77), .ZN(n49) );
  INR3D0 U170 ( .A1(n141), .B1(fy[21]), .B2(n202), .ZN(n154) );
  INR2D1 U171 ( .A1(n154), .B1(n67), .ZN(n40) );
  ND2D1 U172 ( .A1(n191), .A2(n15), .ZN(n152) );
  INR3D0 U173 ( .A1(n141), .B1(n204), .B2(n202), .ZN(n173) );
  ND2D1 U174 ( .A1(n154), .A2(n15), .ZN(n123) );
  OAI22D1 U175 ( .A1(n87), .A2(n16), .B1(n88), .B2(n60), .ZN(t[2]) );
  AOI21D1 U176 ( .A1(fy[21]), .A2(n80), .B(n63), .ZN(n88) );
  ND2D1 U177 ( .A1(n173), .A2(n15), .ZN(n153) );
  NR3D0 U178 ( .A1(n204), .A2(fy[20]), .A3(n72), .ZN(n174) );
  NR3D0 U179 ( .A1(n205), .A2(fy[21]), .A3(n72), .ZN(n189) );
  ND2D1 U180 ( .A1(n189), .A2(n15), .ZN(n169) );
  ND4D1 U181 ( .A1(n111), .A2(n50), .A3(n138), .A4(n139), .ZN(b[2]) );
  NR2D1 U182 ( .A1(n32), .A2(n35), .ZN(n138) );
  ND2D1 U183 ( .A1(n15), .A2(n194), .ZN(n38) );
  INVD1 U184 ( .I(n67), .ZN(n200) );
  NR2D1 U185 ( .A1(n78), .A2(n166), .ZN(n116) );
  OAI22D1 U186 ( .A1(n67), .A2(n172), .B1(n78), .B2(n179), .ZN(n41) );
  ND2D1 U187 ( .A1(n195), .A2(n186), .ZN(n179) );
  ND2D1 U188 ( .A1(n141), .A2(n186), .ZN(n172) );
  NR2D1 U189 ( .A1(n179), .A2(n77), .ZN(n122) );
  ND3D1 U190 ( .A1(n89), .A2(n36), .A3(n90), .ZN(t[1]) );
  ND2D1 U191 ( .A1(n28), .A2(n15), .ZN(n101) );
  ND2D1 U192 ( .A1(n190), .A2(n15), .ZN(n55) );
  FA1D0 U193 ( .A(py_1_), .B(N233), .CI(n14), .CO(
        add_0_root_add_159_2_carry[2]), .S(value[13]) );
  NR2D1 U194 ( .A1(n172), .A2(n77), .ZN(n108) );
  ND2D1 U195 ( .A1(n24), .A2(n15), .ZN(n54) );
  AOI221D0 U196 ( .A1(n18), .A2(n15), .B1(n34), .B2(n103), .C(n104), .ZN(n102)
         );
  ND2D1 U197 ( .A1(n195), .A2(n140), .ZN(n148) );
  INVD1 U198 ( .I(n129), .ZN(n33) );
  NR2D1 U199 ( .A1(n129), .A2(n67), .ZN(n137) );
  NR2D1 U200 ( .A1(n148), .A2(n78), .ZN(n107) );
  ND2D1 U201 ( .A1(n33), .A2(n15), .ZN(n125) );
  ND2D1 U202 ( .A1(n77), .A2(n67), .ZN(b[1]) );
  OAI221D0 U203 ( .A1(fy[20]), .A2(n67), .B1(n205), .B2(n78), .C(n79), .ZN(n74) );
  OA221D0 U204 ( .A1(n197), .A2(n16), .B1(n60), .B2(n68), .C(n80), .Z(n79) );
  INVD1 U205 ( .I(n60), .ZN(n16) );
  ND2D1 U206 ( .A1(n34), .A2(fy[20]), .ZN(n68) );
  OAI22D1 U207 ( .A1(n205), .A2(n62), .B1(n76), .B2(n77), .ZN(n75) );
  AOI221D0 U208 ( .A1(n201), .A2(n203), .B1(n204), .B2(n197), .C(n198), .ZN(
        n87) );
  ND2D1 U209 ( .A1(n15), .A2(n205), .ZN(n80) );
  NR2D1 U210 ( .A1(n68), .A2(fy[21]), .ZN(n66) );
  OAI21D1 U211 ( .A1(n205), .A2(n197), .B(n67), .ZN(n63) );
  OAI211D1 U212 ( .A1(fy[21]), .A2(n67), .B(n68), .C(n69), .ZN(n65) );
  AOI22D1 U213 ( .A1(n15), .A2(fy[21]), .B1(n199), .B2(n205), .ZN(n69) );
  AO22D0 U214 ( .A1(n205), .A2(n199), .B1(fy[20]), .B2(n15), .Z(n64) );
  IINR4D0 U215 ( .A1(n105), .A2(n106), .B1(n107), .B2(n108), .ZN(n96) );
  AOI221D0 U216 ( .A1(n21), .A2(n15), .B1(n103), .B2(n200), .C(n109), .ZN(n105) );
  NR2D1 U217 ( .A1(n204), .A2(fy[22]), .ZN(n186) );
  XOR3D1 U218 ( .A1(py_9_), .A2(N244), .A3(add_0_root_add_159_2_carry[12]), 
        .Z(value[24]) );
  OAI22D1 U219 ( .A1(n27), .A2(n71), .B1(n72), .B2(n73), .ZN(t[5]) );
  AOI221D0 U220 ( .A1(n64), .A2(n204), .B1(fy[21]), .B2(n74), .C(n75), .ZN(n71) );
  NR2D1 U221 ( .A1(n205), .A2(fx[22]), .ZN(n195) );
  ND2D1 U222 ( .A1(fy[22]), .A2(fx[22]), .ZN(n72) );
  NR2D1 U223 ( .A1(fy[22]), .A2(fy[21]), .ZN(n140) );
  ND2D1 U224 ( .A1(fx[20]), .A2(n197), .ZN(n77) );
  INVD1 U225 ( .I(fx[21]), .ZN(n197) );
  ND2D1 U226 ( .A1(fx[21]), .A2(n201), .ZN(n78) );
  INVD1 U227 ( .I(fx[20]), .ZN(n201) );
  NR2D1 U228 ( .A1(fy[20]), .A2(fx[22]), .ZN(n141) );
  ND2D1 U229 ( .A1(fx[21]), .A2(fx[20]), .ZN(n67) );
  INVD1 U230 ( .I(fx[22]), .ZN(n17) );
  INVD1 U231 ( .I(fy[22]), .ZN(n202) );
  ND3D1 U234 ( .A1(fx[22]), .A2(n205), .A3(n140), .ZN(n129) );
  NR4D0 U235 ( .A1(n84), .A2(n85), .A3(n66), .A4(n198), .ZN(n81) );
  NR3D0 U236 ( .A1(n76), .A2(n16), .A3(n197), .ZN(n85) );
  OAI32D1 U237 ( .A1(n60), .A2(fy[20]), .A3(fx[20]), .B1(n86), .B2(n205), .ZN(
        n84) );
  AOI22D1 U238 ( .A1(n16), .A2(fx[20]), .B1(n199), .B2(n60), .ZN(n86) );
  INVD1 U239 ( .I(fx[19]), .ZN(rx_3_) );
  INVD1 U240 ( .I(fy[19]), .ZN(ry_3_) );
  TIEL U241 ( .ZN(n206) );
  CKXOR2D1 U242 ( .A1(N232), .A2(py_0_), .Z(value[12]) );
  IIND4D0 U4 ( .A1(n35), .A2(n41), .B1(n36), .B2(n37), .ZN(t[9]) );
  NR2D1 U5 ( .A1(fx[21]), .A2(fx[20]), .ZN(n15) );
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
  FA1D0 U37 ( .A(N4), .B(exponent_adjust[1]), .CI(n1), .CO(
        add_0_root_add_0_root_add_22_2_carry[2]), .S(N20) );
  FA1D0 U38 ( .A(N5), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[2]), .CO(
        add_0_root_add_0_root_add_22_2_carry[3]), .S(N21) );
  FA1D0 U39 ( .A(N6), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[3]), .CO(
        add_0_root_add_0_root_add_22_2_carry[4]), .S(N22) );
  FA1D0 U40 ( .A(N7), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[4]), .CO(
        add_0_root_add_0_root_add_22_2_carry[5]), .S(N23) );
  FA1D0 U41 ( .A(N8), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[5]), .CO(
        add_0_root_add_0_root_add_22_2_carry[6]), .S(N24) );
  FA1D0 U42 ( .A(N9), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[6]), .CO(
        add_0_root_add_0_root_add_22_2_carry[7]), .S(N25) );
  FA1D0 U43 ( .A(N28), .B(exponent_adjust[1]), .CI(n2), .CO(
        add_0_root_add_0_root_add_25_2_carry[2]), .S(N44) );
  FA1D0 U44 ( .A(N29), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[2]), .CO(
        add_0_root_add_0_root_add_25_2_carry[3]), .S(N45) );
  FA1D0 U45 ( .A(N30), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[3]), .CO(
        add_0_root_add_0_root_add_25_2_carry[4]), .S(N46) );
  FA1D0 U46 ( .A(N31), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[4]), .CO(
        add_0_root_add_0_root_add_25_2_carry[5]), .S(N47) );
  FA1D0 U47 ( .A(N32), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[5]), .CO(
        add_0_root_add_0_root_add_25_2_carry[6]), .S(N48) );
  FA1D0 U48 ( .A(N33), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[6]), .CO(
        add_0_root_add_0_root_add_25_2_carry[7]), .S(N49) );
  AO22D0 U49 ( .A1(N49), .A2(n78), .B1(N25), .B2(divide_mode), .Z(result[29])
         );
  AO22D0 U50 ( .A1(N48), .A2(n78), .B1(N24), .B2(divide_mode), .Z(result[28])
         );
  AO22D0 U51 ( .A1(N47), .A2(n78), .B1(N23), .B2(divide_mode), .Z(result[27])
         );
  AO22D0 U52 ( .A1(N46), .A2(n78), .B1(N22), .B2(divide_mode), .Z(result[26])
         );
  AO22D0 U53 ( .A1(N45), .A2(n78), .B1(N21), .B2(divide_mode), .Z(result[25])
         );
  AO22D0 U54 ( .A1(N44), .A2(n78), .B1(N20), .B2(divide_mode), .Z(result[24])
         );
  AO22D0 U55 ( .A1(N43), .A2(n78), .B1(N19), .B2(divide_mode), .Z(result[23])
         );
  INVD1 U56 ( .I(divide_mode), .ZN(n78) );
  CKBD1 U57 ( .I(y[21]), .Z(fraction_y[21]) );
  AO22D0 U58 ( .A1(N50), .A2(n78), .B1(divide_mode), .B2(N26), .Z(result[30])
         );
  XOR3D1 U59 ( .A1(N34), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_25_2_carry[7]), .Z(N50) );
  XOR3D1 U60 ( .A1(N10), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_22_2_carry[7]), .Z(N26) );
  CKBD1 U61 ( .I(y[22]), .Z(fraction_y[22]) );
  CKBD1 U62 ( .I(x[20]), .Z(fraction_x[20]) );
  CKBD1 U63 ( .I(y[20]), .Z(fraction_y[20]) );
  CKBD1 U64 ( .I(x[22]), .Z(fraction_x[22]) );
  CKBD1 U65 ( .I(x[21]), .Z(fraction_x[21]) );
  CKBD1 U66 ( .I(x[17]), .Z(fraction_x[17]) );
  CKBD1 U67 ( .I(x[18]), .Z(fraction_x[18]) );
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
  CKBD1 U89 ( .I(x[19]), .Z(fraction_x[19]) );
  CKBD1 U90 ( .I(x[16]), .Z(fraction_x[16]) );
  CKBD1 U91 ( .I(y[19]), .Z(fraction_y[19]) );
  CKBD1 U92 ( .I(y[18]), .Z(fraction_y[18]) );
  CKBD1 U93 ( .I(y[17]), .Z(fraction_y[17]) );
  CKBD1 U94 ( .I(y[16]), .Z(fraction_y[16]) );
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


module unified_div_drop_l3_separate ( x, y, divide_mode, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  input divide_mode;
  wire   n3, n4, n7, n9, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n51, n63;
  wire   [22:16] fx;
  wire   [22:16] fy;
  wire   [24:12] div_value;
  wire   [24:12] mul_value;
  wire   [22:11] normalized_fraction;
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
        SYNOPSYS_UNCONNECTED__62, SYNOPSYS_UNCONNECTED__63, 
        SYNOPSYS_UNCONNECTED__64, SYNOPSYS_UNCONNECTED__65, 
        SYNOPSYS_UNCONNECTED__66, SYNOPSYS_UNCONNECTED__67, 
        SYNOPSYS_UNCONNECTED__68, SYNOPSYS_UNCONNECTED__69, 
        SYNOPSYS_UNCONNECTED__70, SYNOPSYS_UNCONNECTED__71, 
        SYNOPSYS_UNCONNECTED__72, SYNOPSYS_UNCONNECTED__73, 
        SYNOPSYS_UNCONNECTED__74;
  assign result[10] = 1'b0;
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

  unified_div_drop_l3_separate_div div_core ( .fx({fx, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .fy({fy, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .value({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, div_value, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15}) );
  unified_div_drop_l3_separate_mul mul_core ( .fx({fx, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .fy({fy, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .value({SYNOPSYS_UNCONNECTED__16, 
        SYNOPSYS_UNCONNECTED__17, SYNOPSYS_UNCONNECTED__18, 
        SYNOPSYS_UNCONNECTED__19, mul_value, SYNOPSYS_UNCONNECTED__20, 
        SYNOPSYS_UNCONNECTED__21, SYNOPSYS_UNCONNECTED__22, 
        SYNOPSYS_UNCONNECTED__23, SYNOPSYS_UNCONNECTED__24, 
        SYNOPSYS_UNCONNECTED__25, SYNOPSYS_UNCONNECTED__26, 
        SYNOPSYS_UNCONNECTED__27, SYNOPSYS_UNCONNECTED__28, 
        SYNOPSYS_UNCONNECTED__29, SYNOPSYS_UNCONNECTED__30, 
        SYNOPSYS_UNCONNECTED__31}) );
  fp32_normal_finite_wrapper wrapper ( .x({x[31:16], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y({y[31:16], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .divide_mode(n51), .fraction_x({
        fx, SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, 
        SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39, 
        SYNOPSYS_UNCONNECTED__40, SYNOPSYS_UNCONNECTED__41, 
        SYNOPSYS_UNCONNECTED__42, SYNOPSYS_UNCONNECTED__43, 
        SYNOPSYS_UNCONNECTED__44, SYNOPSYS_UNCONNECTED__45, 
        SYNOPSYS_UNCONNECTED__46, SYNOPSYS_UNCONNECTED__47}), .fraction_y({fy, 
        SYNOPSYS_UNCONNECTED__48, SYNOPSYS_UNCONNECTED__49, 
        SYNOPSYS_UNCONNECTED__50, SYNOPSYS_UNCONNECTED__51, 
        SYNOPSYS_UNCONNECTED__52, SYNOPSYS_UNCONNECTED__53, 
        SYNOPSYS_UNCONNECTED__54, SYNOPSYS_UNCONNECTED__55, 
        SYNOPSYS_UNCONNECTED__56, SYNOPSYS_UNCONNECTED__57, 
        SYNOPSYS_UNCONNECTED__58, SYNOPSYS_UNCONNECTED__59, 
        SYNOPSYS_UNCONNECTED__60, SYNOPSYS_UNCONNECTED__61, 
        SYNOPSYS_UNCONNECTED__62, SYNOPSYS_UNCONNECTED__63}), 
        .result_fraction({normalized_fraction, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .exponent_adjust({
        exponent_adjust[2], exponent_adjust[2], exponent_adjust[0]}), .result(
        {result[31:11], SYNOPSYS_UNCONNECTED__64, SYNOPSYS_UNCONNECTED__65, 
        SYNOPSYS_UNCONNECTED__66, SYNOPSYS_UNCONNECTED__67, 
        SYNOPSYS_UNCONNECTED__68, SYNOPSYS_UNCONNECTED__69, 
        SYNOPSYS_UNCONNECTED__70, SYNOPSYS_UNCONNECTED__71, 
        SYNOPSYS_UNCONNECTED__72, SYNOPSYS_UNCONNECTED__73, 
        SYNOPSYS_UNCONNECTED__74}) );
  ND2D1 U78 ( .A1(n9), .A2(n7), .ZN(exponent_adjust[2]) );
  IND3D1 U80 ( .A1(n25), .B1(n26), .B2(n4), .ZN(n9) );
  ND3D1 U81 ( .A1(n26), .A2(n25), .A3(n4), .ZN(n7) );
  ND2D1 U82 ( .A1(n4), .A2(n9), .ZN(exponent_adjust[0]) );
  OAI221D0 U83 ( .A1(n25), .A2(n3), .B1(n4), .B2(n26), .C(n27), .ZN(
        normalized_fraction[22]) );
  OA22D0 U84 ( .A1(n7), .A2(n28), .B1(n9), .B2(n29), .Z(n27) );
  OAI221D0 U85 ( .A1(n29), .A2(n3), .B1(n4), .B2(n25), .C(n30), .ZN(
        normalized_fraction[21]) );
  OA22D0 U86 ( .A1(n7), .A2(n31), .B1(n9), .B2(n28), .Z(n30) );
  OAI221D0 U87 ( .A1(n28), .A2(n3), .B1(n4), .B2(n29), .C(n32), .ZN(
        normalized_fraction[20]) );
  OA22D0 U88 ( .A1(n7), .A2(n33), .B1(n9), .B2(n31), .Z(n32) );
  OAI221D0 U89 ( .A1(n41), .A2(n3), .B1(n4), .B2(n39), .C(n44), .ZN(
        normalized_fraction[14]) );
  OA22D0 U90 ( .A1(n7), .A2(n45), .B1(n9), .B2(n43), .Z(n44) );
  OAI221D0 U91 ( .A1(n39), .A2(n3), .B1(n4), .B2(n37), .C(n42), .ZN(
        normalized_fraction[15]) );
  OA22D0 U92 ( .A1(n7), .A2(n43), .B1(n9), .B2(n41), .Z(n42) );
  OAI221D0 U93 ( .A1(n37), .A2(n3), .B1(n4), .B2(n35), .C(n40), .ZN(
        normalized_fraction[16]) );
  OA22D0 U94 ( .A1(n7), .A2(n41), .B1(n9), .B2(n39), .Z(n40) );
  OAI221D0 U95 ( .A1(n35), .A2(n3), .B1(n4), .B2(n33), .C(n38), .ZN(
        normalized_fraction[17]) );
  OA22D0 U96 ( .A1(n7), .A2(n39), .B1(n9), .B2(n37), .Z(n38) );
  OAI221D0 U97 ( .A1(n33), .A2(n3), .B1(n4), .B2(n31), .C(n36), .ZN(
        normalized_fraction[18]) );
  OA22D0 U98 ( .A1(n7), .A2(n37), .B1(n9), .B2(n35), .Z(n36) );
  OAI221D0 U99 ( .A1(n31), .A2(n3), .B1(n4), .B2(n28), .C(n34), .ZN(
        normalized_fraction[19]) );
  OA22D0 U100 ( .A1(n7), .A2(n35), .B1(n9), .B2(n33), .Z(n34) );
  OAI221D0 U101 ( .A1(n43), .A2(n3), .B1(n4), .B2(n41), .C(n46), .ZN(
        normalized_fraction[13]) );
  IND2D1 U104 ( .A1(n26), .B1(n4), .ZN(n3) );
  OAI22D1 U105 ( .A1(n45), .A2(n3), .B1(n4), .B2(n43), .ZN(
        normalized_fraction[12]) );
  NR2D1 U106 ( .A1(n4), .A2(n45), .ZN(normalized_fraction[11]) );
  AOI22D1 U107 ( .A1(mul_value[24]), .A2(n63), .B1(n51), .B2(div_value[24]), 
        .ZN(n4) );
  AOI22D1 U108 ( .A1(mul_value[23]), .A2(n63), .B1(div_value[23]), .B2(n51), 
        .ZN(n26) );
  AOI22D1 U109 ( .A1(mul_value[22]), .A2(n63), .B1(div_value[22]), .B2(n51), 
        .ZN(n25) );
  AOI22D1 U110 ( .A1(mul_value[21]), .A2(n63), .B1(div_value[21]), .B2(n51), 
        .ZN(n29) );
  AOI22D1 U111 ( .A1(mul_value[20]), .A2(n63), .B1(div_value[20]), .B2(n51), 
        .ZN(n28) );
  AOI22D1 U112 ( .A1(mul_value[19]), .A2(n63), .B1(div_value[19]), .B2(n51), 
        .ZN(n31) );
  AOI22D1 U113 ( .A1(mul_value[18]), .A2(n63), .B1(div_value[18]), .B2(n51), 
        .ZN(n33) );
  AOI22D1 U114 ( .A1(mul_value[17]), .A2(n63), .B1(div_value[17]), .B2(n51), 
        .ZN(n35) );
  AOI22D1 U115 ( .A1(mul_value[16]), .A2(n63), .B1(div_value[16]), .B2(n51), 
        .ZN(n37) );
  AOI22D1 U116 ( .A1(mul_value[15]), .A2(n63), .B1(div_value[15]), .B2(n51), 
        .ZN(n39) );
  AOI22D1 U117 ( .A1(mul_value[14]), .A2(n63), .B1(div_value[14]), .B2(n51), 
        .ZN(n41) );
  AOI22D1 U118 ( .A1(mul_value[13]), .A2(n63), .B1(div_value[13]), .B2(n51), 
        .ZN(n43) );
  AOI22D1 U119 ( .A1(mul_value[12]), .A2(n63), .B1(div_value[12]), .B2(n51), 
        .ZN(n45) );
  INVD1 U120 ( .I(n51), .ZN(n63) );
  CKBD1 U129 ( .I(divide_mode), .Z(n51) );
  OR2D1 U79 ( .A1(n9), .A2(n45), .Z(n46) );
endmodule

