/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Wed Sep 16 00:58:08 2026
/////////////////////////////////////////////////////////////


module unified_div_drop_l3_shared_core_DW_mult_tc_1 ( a, b, product );
  input [3:0] a;
  input [5:0] b;
  output [9:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n37, n38, n39, n41, n42, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86;

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
  INVD1 U50 ( .I(b[4]), .ZN(n77) );
  INVD1 U51 ( .I(b[0]), .ZN(n78) );
  INVD1 U52 ( .I(b[3]), .ZN(n80) );
  INVD1 U53 ( .I(b[2]), .ZN(n79) );
  INVD1 U54 ( .I(b[1]), .ZN(n81) );
  CKBD1 U55 ( .I(product[8]), .Z(product[9]) );
  INVD1 U56 ( .I(a[0]), .ZN(n84) );
  INVD1 U57 ( .I(a[1]), .ZN(n83) );
  INVD1 U58 ( .I(a[2]), .ZN(n82) );
  CKND0 U59 ( .I(n2), .ZN(product[8]) );
  NR2D0 U60 ( .A1(n84), .A2(n78), .ZN(product[0]) );
  NR2D0 U61 ( .A1(n84), .A2(n81), .ZN(n42) );
  NR2D0 U62 ( .A1(n84), .A2(n79), .ZN(n41) );
  NR2D0 U63 ( .A1(n84), .A2(n77), .ZN(n39) );
  NR2D0 U64 ( .A1(n78), .A2(n83), .ZN(n38) );
  NR2D0 U65 ( .A1(n81), .A2(n83), .ZN(n37) );
  NR2D0 U66 ( .A1(n83), .A2(n80), .ZN(n35) );
  NR2D0 U67 ( .A1(n77), .A2(n83), .ZN(n34) );
  NR2D0 U68 ( .A1(n78), .A2(n82), .ZN(n33) );
  NR2D0 U69 ( .A1(n81), .A2(n82), .ZN(n32) );
  NR2D0 U70 ( .A1(n79), .A2(n82), .ZN(n31) );
  NR2D0 U71 ( .A1(n80), .A2(n82), .ZN(n30) );
  NR2D0 U72 ( .A1(n77), .A2(n82), .ZN(n29) );
  CKND2D0 U73 ( .A1(a[3]), .A2(b[0]), .ZN(n28) );
  CKND2D0 U74 ( .A1(a[3]), .A2(b[1]), .ZN(n27) );
  CKND2D0 U75 ( .A1(a[3]), .A2(b[2]), .ZN(n26) );
  CKND2D0 U76 ( .A1(a[3]), .A2(b[3]), .ZN(n25) );
  CKND2D0 U77 ( .A1(a[3]), .A2(b[4]), .ZN(n24) );
  XNR2D0 U78 ( .A1(n85), .A2(n86), .ZN(n21) );
  CKND2D0 U79 ( .A1(n85), .A2(n86), .ZN(n20) );
  CKND2D0 U80 ( .A1(b[3]), .A2(a[0]), .ZN(n86) );
  CKND2D0 U81 ( .A1(a[1]), .A2(b[2]), .ZN(n85) );
endmodule


module unified_div_drop_l3_shared_core_DW01_add_1 ( A, B, CI, SUM, CO );
  input [14:0] A;
  input [14:0] B;
  output [14:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [12:2] carry;

  FA1D0 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA1D0 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA1D0 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  FA1D0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1D0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1D0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1D0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA1D0 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FA1D0 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  FA1D0 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  XOR3D1 U1_12 ( .A1(A[12]), .A2(B[12]), .A3(carry[12]), .Z(SUM[12]) );
  FA1D0 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  AN2XD1 U1 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
  CKXOR2D1 U2 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
endmodule


module unified_div_drop_l3_shared_core_DW01_add_0 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [12:2] carry;

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
  FA1D0 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FA1D0 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  XOR3D1 U1_12 ( .A1(A[12]), .A2(B[12]), .A3(carry[12]), .Z(SUM[12]) );
  AN2XD1 U1 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
  CKXOR2D1 U2 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
endmodule


module unified_div_drop_l3_shared_core_DW_mult_tc_0 ( a, b, product );
  input [3:0] a;
  input [5:0] b;
  output [9:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n37, n38, n39, n41, n42, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86;

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
  INVD1 U50 ( .I(b[3]), .ZN(n79) );
  INVD1 U51 ( .I(b[2]), .ZN(n81) );
  INVD1 U52 ( .I(b[0]), .ZN(n77) );
  INVD1 U53 ( .I(b[4]), .ZN(n78) );
  INVD1 U54 ( .I(b[1]), .ZN(n80) );
  CKBD1 U55 ( .I(product[9]), .Z(product[8]) );
  INVD1 U56 ( .I(a[0]), .ZN(n84) );
  INVD1 U57 ( .I(a[1]), .ZN(n83) );
  INVD1 U58 ( .I(a[2]), .ZN(n82) );
  CKND0 U59 ( .I(n2), .ZN(product[9]) );
  NR2D0 U60 ( .A1(n84), .A2(n77), .ZN(product[0]) );
  NR2D0 U61 ( .A1(n84), .A2(n80), .ZN(n42) );
  NR2D0 U62 ( .A1(n84), .A2(n81), .ZN(n41) );
  NR2D0 U63 ( .A1(n84), .A2(n78), .ZN(n39) );
  NR2D0 U64 ( .A1(n77), .A2(n83), .ZN(n38) );
  NR2D0 U65 ( .A1(n80), .A2(n83), .ZN(n37) );
  NR2D0 U66 ( .A1(n83), .A2(n79), .ZN(n35) );
  NR2D0 U67 ( .A1(n78), .A2(n83), .ZN(n34) );
  NR2D0 U68 ( .A1(n77), .A2(n82), .ZN(n33) );
  NR2D0 U69 ( .A1(n80), .A2(n82), .ZN(n32) );
  NR2D0 U70 ( .A1(n81), .A2(n82), .ZN(n31) );
  NR2D0 U71 ( .A1(n79), .A2(n82), .ZN(n30) );
  NR2D0 U72 ( .A1(n78), .A2(n82), .ZN(n29) );
  CKND2D0 U73 ( .A1(a[3]), .A2(b[0]), .ZN(n28) );
  CKND2D0 U74 ( .A1(a[3]), .A2(b[1]), .ZN(n27) );
  CKND2D0 U75 ( .A1(a[3]), .A2(b[2]), .ZN(n26) );
  CKND2D0 U76 ( .A1(a[3]), .A2(b[3]), .ZN(n25) );
  CKND2D0 U77 ( .A1(a[3]), .A2(b[4]), .ZN(n24) );
  XNR2D0 U78 ( .A1(n85), .A2(n86), .ZN(n21) );
  CKND2D0 U79 ( .A1(n85), .A2(n86), .ZN(n20) );
  CKND2D0 U80 ( .A1(b[3]), .A2(a[0]), .ZN(n86) );
  CKND2D0 U81 ( .A1(a[1]), .A2(b[2]), .ZN(n85) );
endmodule


module unified_div_drop_l3_shared_core ( fx, fy, divide_mode, value );
  input [22:0] fx;
  input [22:0] fy;
  output [28:0] value;
  input divide_mode;
  wire   rx_3_, ry_3_, N437, N438, N439, N440, N441, N442, N443, N444, N445,
         N446, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194,
         n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n206,
         n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217,
         n218, n219, n221, n222, n223, n224, n225, n226, n227, n228, n229,
         n230, n231, n232, n233, n234, n235, n236, n237, n238, n239, n240,
         n241, n242, n243, n244, n245, n246, n247, n248, n249, n250, n251,
         n252, n253, n254, n255, n256, n257, n258, n259, n260, n261, n262,
         n263, n264, n265, n266, n267, n268, n269, n270, n271, n272, n273,
         n274, n275, n276, n277, n278, n279, n280, n281, n282, n283, n284,
         n285, n286, n287, n288, n289, n290, n291, n292, n293, n294, n295,
         n296, n297, n298, n299, n300, n301, n302, n303, n304, n305, n306,
         n307, n308, n309, n310, n311, n312, n313, n314, n315, n316, n318,
         n319, n320, n323, n324, n326, n328, n329, n332, n333, n334, n335,
         n336, n337, n338, n339, n340, n341, n342, n343, n344, n345, n346,
         n347, n348, n349, n350, n351, n352, n353, n354, n355, n356, n357,
         n358, n359, n360, n361, n362, n363, n364, n365, n366, n367, n368,
         n369, n370, n371, n372, n373, n374, n375, n376, n377, n378, n379,
         n380, n381, n382, n383, n384, n385, n386, n387, n388, n389, n390,
         n391, n392, n393, n394, n395, n396, n397, n398, n399, n400, n401,
         n402, n403, n404, n405, n406, n407, n408, n409, n410, n411, n412,
         n413, n414, n415, n416, n417, n418, n419, n420, n421, n422, n423,
         n424, n425, n426, n427, px_9_, px_8_, px_7_, px_6_, px_5_, px_4_,
         px_3_, px_2_, px_1_, px_0_, N460, N459, N458, N457, N456, N455, N454,
         N453, N452, N451, N450, N449, N448, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n205, n220, n428, n429, n430, n431, n432, n433,
         n434, n435, n436, n4370, n4380, n4390, n4400, n4410, n4420, n4430,
         n4440, n4450, n4460, n447, n4480, n4490, n4500, n4510, n4520, n4530,
         n4540, n4550, n4560;
  wire   [4:0] a;
  wire   [4:0] b;
  wire   [12:0] t;
  wire   [9:1] py;
  wire   [15:1] signed_y;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4;

  AN4XD1 U8 ( .A1(n73), .A2(n74), .A3(n75), .A4(n76), .Z(n70) );
  OR3D1 U30 ( .A1(n128), .A2(n129), .A3(n130), .Z(n116) );
  AN2XD1 U66 ( .A1(n197), .A2(n162), .Z(n211) );
  AN3XD1 U72 ( .A1(n194), .A2(n219), .A3(n87), .Z(n216) );
  AN3XD1 U100 ( .A1(n245), .A2(n246), .A3(n247), .Z(n240) );
  AN2XD1 U115 ( .A1(n276), .A2(n237), .Z(n272) );
  AN4XD1 U116 ( .A1(n277), .A2(n173), .A3(n278), .A4(n279), .Z(n215) );
  AN3XD1 U123 ( .A1(n151), .A2(n290), .A3(n291), .Z(n289) );
  AN3XD1 U133 ( .A1(n84), .A2(n94), .A3(n166), .Z(n301) );
  AN4XD1 U137 ( .A1(n298), .A2(n238), .A3(n308), .A4(n309), .Z(n204) );
  AN2XD1 U143 ( .A1(n315), .A2(n316), .Z(n97) );
  AN2XD1 U144 ( .A1(n315), .A2(n27), .Z(n92) );
  AN2XD1 U156 ( .A1(n328), .A2(n329), .Z(n315) );
  AN4XD1 U162 ( .A1(n277), .A2(n338), .A3(n266), .A4(n339), .Z(n337) );
  AN3XD1 U166 ( .A1(n223), .A2(n344), .A3(n169), .Z(n306) );
  AN4XD1 U168 ( .A1(n260), .A2(n139), .A3(n347), .A4(n276), .Z(n346) );
  AN2XD1 U169 ( .A1(n348), .A2(n115), .Z(n345) );
  AN4XD1 U170 ( .A1(n124), .A2(n153), .A3(n349), .A4(n125), .Z(n219) );
  AN4XD1 U180 ( .A1(n358), .A2(n252), .A3(n359), .A4(n261), .Z(n199) );
  AN2XD1 U187 ( .A1(n271), .A2(n115), .Z(n361) );
  AN2XD1 U191 ( .A1(n362), .A2(n363), .Z(n354) );
  AN4XD1 U200 ( .A1(n374), .A2(n176), .A3(n191), .A4(n314), .Z(n368) );
  AN2XD1 U209 ( .A1(n341), .A2(n158), .Z(n376) );
  AN3XD1 U222 ( .A1(n135), .A2(n270), .A3(n157), .Z(n387) );
  AN2XD1 U226 ( .A1(n371), .A2(n25), .Z(n332) );
  AN2XD1 U232 ( .A1(n362), .A2(n389), .Z(n371) );
  AN2XD1 U238 ( .A1(n329), .A2(n394), .Z(n373) );
  AN4XD1 U263 ( .A1(n177), .A2(n91), .A3(n156), .A4(n228), .Z(n407) );
  AN2XD1 U277 ( .A1(n394), .A2(n362), .Z(n402) );
  AN2XD1 U278 ( .A1(n399), .A2(n326), .Z(n108) );
  AN2XD1 U281 ( .A1(n329), .A2(n363), .Z(n401) );
  AN4XD1 U287 ( .A1(n290), .A2(n157), .A3(n388), .A4(n410), .Z(n364) );
  AN3XD1 U288 ( .A1(n123), .A2(n253), .A3(n96), .Z(n410) );
  AN2XD1 U310 ( .A1(n413), .A2(n326), .Z(n226) );
  AN2XD1 U317 ( .A1(n416), .A2(n27), .Z(n259) );
  AN2XD1 U337 ( .A1(n389), .A2(n421), .Z(n414) );
  AN2XD1 U339 ( .A1(n389), .A2(n422), .Z(n416) );
  AN2XD1 U341 ( .A1(n394), .A2(n422), .Z(n409) );
  AN2XD1 U343 ( .A1(n394), .A2(n421), .Z(n413) );
  AN2XD1 U348 ( .A1(n25), .A2(n411), .Z(n72) );
  AN2XD1 U367 ( .A1(n316), .A2(n411), .Z(n137) );
  AN2XD1 U387 ( .A1(n422), .A2(n363), .Z(n411) );
  AN2XD1 U392 ( .A1(n328), .A2(n362), .Z(n399) );
  AN2XD1 U399 ( .A1(n329), .A2(n389), .Z(n400) );
  unified_div_drop_l3_shared_core_DW_mult_tc_1 mult_140 ( .a({rx_3_, fx[18:16]}), .b({n4530, a}), .product({px_9_, px_8_, px_7_, px_6_, px_5_, px_4_, px_3_, 
        px_2_, px_1_, px_0_}) );
  unified_div_drop_l3_shared_core_DW01_add_1 add_1_root_add_143_2 ( .A({n4530, 
        n4530, t}), .B({px_9_, px_9_, px_9_, px_9_, px_9_, px_9_, px_8_, px_7_, 
        px_6_, px_5_, px_4_, px_3_, px_2_, px_1_, px_0_}), .CI(n4530), .SUM({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, N460, N459, N458, 
        N457, N456, N455, N454, N453, N452, N451, N450, N449, N448}) );
  unified_div_drop_l3_shared_core_DW01_add_0 add_0_root_add_143_2 ( .A({
        signed_y[15], signed_y[15], signed_y[15], signed_y[15], signed_y[15], 
        signed_y[15], signed_y[9:1], N437}), .B({1'b0, 1'b0, 1'b0, N460, N459, 
        N458, N457, N456, N455, N454, N453, N452, N451, N450, N449, N448}), 
        .CI(n4530), .SUM({SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, value[24:12]}) );
  unified_div_drop_l3_shared_core_DW_mult_tc_0 mult_140_S2 ( .a({ry_3_, 
        fy[18:16]}), .b({n4530, b}), .product({py, N437}) );
  NR3D0 U18 ( .A1(n447), .A2(n4480), .A3(n61), .ZN(n316) );
  NR3D0 U19 ( .A1(fx[20]), .A2(fx[22]), .A3(n447), .ZN(n323) );
  NR3D0 U20 ( .A1(fx[21]), .A2(fx[22]), .A3(fx[20]), .ZN(n326) );
  IND2D1 U21 ( .A1(t[12]), .B1(n162), .ZN(a[4]) );
  AN2XD1 U22 ( .A1(n21), .A2(n38), .Z(n14) );
  AN2XD1 U23 ( .A1(n16), .A2(n36), .Z(n15) );
  AN2XD1 U24 ( .A1(n17), .A2(n35), .Z(n16) );
  AN2XD1 U25 ( .A1(n18), .A2(n34), .Z(n17) );
  AN2XD1 U26 ( .A1(n22), .A2(n33), .Z(n18) );
  INVD1 U27 ( .I(n233), .ZN(n48) );
  IIND4D1 U28 ( .A1(n212), .A2(n203), .B1(n44), .B2(n213), .ZN(t[10]) );
  NR3D0 U29 ( .A1(n189), .A2(n50), .A3(n214), .ZN(n213) );
  IIND4D1 U32 ( .A1(n160), .A2(n230), .B1(n231), .B2(n232), .ZN(b[3]) );
  NR3D0 U33 ( .A1(n4440), .A2(n53), .A3(n42), .ZN(n231) );
  NR4D0 U34 ( .A1(n233), .A2(n203), .A3(n234), .A4(n210), .ZN(n232) );
  INR4D0 U35 ( .A1(n390), .B1(n313), .B2(n52), .B3(n62), .ZN(n255) );
  NR2D1 U36 ( .A1(n54), .A2(n50), .ZN(n390) );
  ND4D1 U37 ( .A1(n248), .A2(n215), .A3(n249), .A4(n250), .ZN(b[2]) );
  NR2D1 U38 ( .A1(n280), .A2(n281), .ZN(n248) );
  NR4D0 U39 ( .A1(n251), .A2(n4380), .A3(n64), .A4(n428), .ZN(n250) );
  NR4D0 U40 ( .A1(n4420), .A2(n82), .A3(n222), .A4(n147), .ZN(n249) );
  INVD1 U41 ( .I(n358), .ZN(n50) );
  INVD1 U42 ( .I(n297), .ZN(n40) );
  INVD1 U43 ( .I(n229), .ZN(n45) );
  INVD1 U44 ( .I(n288), .ZN(n51) );
  IND4D1 U45 ( .A1(n143), .B1(n235), .B2(n236), .B3(n219), .ZN(n203) );
  NR4D0 U46 ( .A1(n431), .A2(n4390), .A3(n137), .A4(n52), .ZN(n235) );
  INR4D0 U47 ( .A1(n255), .B1(n128), .B2(n206), .B3(n297), .ZN(n366) );
  INVD1 U48 ( .I(n171), .ZN(n44) );
  INR4D0 U49 ( .A1(n204), .B1(n20), .B2(n206), .B3(n80), .ZN(n132) );
  OR4XD1 U50 ( .A1(n429), .A2(n47), .A3(n56), .A4(n63), .Z(n20) );
  NR4D0 U51 ( .A1(n63), .A2(n56), .A3(n49), .A4(n435), .ZN(n194) );
  INVD1 U52 ( .I(n228), .ZN(n49) );
  NR3D0 U53 ( .A1(n154), .A2(n155), .A3(n144), .ZN(n149) );
  IND4D1 U54 ( .A1(n118), .B1(n119), .B2(n120), .B3(n121), .ZN(n98) );
  NR2D1 U55 ( .A1(n126), .A2(n127), .ZN(n119) );
  NR3D0 U56 ( .A1(n67), .A2(n52), .A3(n436), .ZN(n120) );
  NR4D0 U57 ( .A1(n122), .A2(n62), .A3(n65), .A4(n66), .ZN(n121) );
  NR3D0 U58 ( .A1(n81), .A2(n82), .A3(n83), .ZN(n68) );
  ND4D1 U60 ( .A1(n393), .A2(n236), .A3(n338), .A4(n427), .ZN(n130) );
  INR4D0 U61 ( .A1(n312), .B1(n137), .B2(n432), .B3(n56), .ZN(n427) );
  ND4D1 U62 ( .A1(n138), .A2(n300), .A3(n301), .A4(n302), .ZN(b[0]) );
  NR4D0 U63 ( .A1(n186), .A2(n127), .A3(n303), .A4(n304), .ZN(n302) );
  ND4D1 U64 ( .A1(n168), .A2(n93), .A3(n403), .A4(n404), .ZN(n304) );
  NR4D0 U65 ( .A1(n108), .A2(n405), .A3(n436), .A4(n202), .ZN(n404) );
  INR3D0 U67 ( .A1(n209), .B1(a[4]), .B2(n435), .ZN(n403) );
  ND2D1 U68 ( .A1(n191), .A2(n104), .ZN(n405) );
  IIND4D1 U69 ( .A1(n356), .A2(n234), .B1(n417), .B2(n418), .ZN(t[12]) );
  INR3D0 U70 ( .A1(n343), .B1(n280), .B2(n88), .ZN(n417) );
  INR4D0 U71 ( .A1(n260), .B1(n419), .B2(n63), .B3(n259), .ZN(n418) );
  ND2D1 U73 ( .A1(n239), .A2(n266), .ZN(n419) );
  IND4D1 U74 ( .A1(n146), .B1(n48), .B2(n423), .B3(n424), .ZN(n356) );
  NR4D0 U75 ( .A1(n425), .A2(n41), .A3(n72), .A4(n42), .ZN(n424) );
  NR3D0 U76 ( .A1(n130), .A2(n39), .A3(n126), .ZN(n423) );
  ND3D1 U77 ( .A1(n106), .A2(n348), .A3(n341), .ZN(n425) );
  INVD1 U78 ( .I(n342), .ZN(n432) );
  INVD1 U79 ( .I(n245), .ZN(n56) );
  INVD1 U80 ( .I(py[6]), .ZN(n36) );
  INR4D0 U81 ( .A1(n408), .B1(n80), .B2(n143), .B3(n189), .ZN(n162) );
  NR3D0 U82 ( .A1(n185), .A2(n226), .A3(n434), .ZN(n408) );
  IND4D1 U83 ( .A1(n117), .B1(n364), .B2(n381), .B3(n270), .ZN(n189) );
  INVD1 U84 ( .I(py[5]), .ZN(n35) );
  AN2XD1 U85 ( .A1(n15), .A2(n37), .Z(n21) );
  INVD1 U86 ( .I(py[4]), .ZN(n34) );
  ND2D1 U87 ( .A1(n316), .A2(n412), .ZN(n236) );
  INVD1 U88 ( .I(py[3]), .ZN(n33) );
  ND3D1 U89 ( .A1(n246), .A2(n349), .A3(n320), .ZN(n126) );
  INVD1 U90 ( .I(n386), .ZN(n42) );
  INVD1 U91 ( .I(n334), .ZN(n41) );
  ND4D1 U92 ( .A1(n391), .A2(n276), .A3(n278), .A4(n237), .ZN(n146) );
  INVD1 U93 ( .I(n291), .ZN(n39) );
  ND4D1 U94 ( .A1(n262), .A2(n395), .A3(n420), .A4(n105), .ZN(n234) );
  NR2D1 U95 ( .A1(n43), .A2(n57), .ZN(n420) );
  ND3D1 U96 ( .A1(n319), .A2(n311), .A3(n392), .ZN(n233) );
  INVD1 U97 ( .I(n139), .ZN(n57) );
  ND2D1 U98 ( .A1(n426), .A2(n316), .ZN(n311) );
  INVD1 U99 ( .I(n73), .ZN(n43) );
  IIND4D1 U101 ( .A1(n304), .A2(n335), .B1(n396), .B2(n397), .ZN(a[0]) );
  INR4D0 U102 ( .A1(n176), .B1(n398), .B2(n4430), .B3(n4370), .ZN(n397) );
  NR3D0 U103 ( .A1(n187), .A2(n66), .A3(n58), .ZN(n396) );
  ND2D1 U104 ( .A1(n243), .A2(n124), .ZN(n398) );
  IND4D1 U105 ( .A1(n79), .B1(n84), .B2(n85), .B3(n86), .ZN(t[8]) );
  INR3D0 U106 ( .A1(n91), .B1(n92), .B2(n54), .ZN(n85) );
  INR4D0 U107 ( .A1(n87), .B1(n88), .B2(n89), .B3(n90), .ZN(n86) );
  ND4D1 U108 ( .A1(n68), .A2(n69), .A3(n70), .A4(n71), .ZN(t[9]) );
  NR4D0 U109 ( .A1(n429), .A2(n53), .A3(n72), .A4(n42), .ZN(n71) );
  IND4D1 U110 ( .A1(n210), .B1(n45), .B2(n211), .B3(n48), .ZN(t[11]) );
  ND2D1 U111 ( .A1(n415), .A2(n316), .ZN(n319) );
  ND3D1 U112 ( .A1(n223), .A2(n227), .A3(n296), .ZN(n117) );
  AN2XD1 U113 ( .A1(n19), .A2(n32), .Z(n22) );
  IND4D1 U114 ( .A1(a[4]), .B1(n45), .B2(n44), .B3(n197), .ZN(b[4]) );
  INVD1 U117 ( .I(n114), .ZN(n434) );
  ND3D1 U118 ( .A1(n372), .A2(n324), .A3(n353), .ZN(n185) );
  ND2D1 U119 ( .A1(n111), .A2(n112), .ZN(t[6]) );
  NR4D0 U120 ( .A1(n113), .A2(n4460), .A3(n54), .A4(n220), .ZN(n112) );
  NR4D0 U121 ( .A1(n116), .A2(n117), .A3(n81), .A4(n98), .ZN(n111) );
  ND4D1 U122 ( .A1(n224), .A2(n374), .A3(n264), .A4(n285), .ZN(n80) );
  ND3D1 U124 ( .A1(n347), .A2(n333), .A3(n125), .ZN(n280) );
  ND2D1 U125 ( .A1(n414), .A2(n316), .ZN(n266) );
  INVD1 U126 ( .I(n267), .ZN(n63) );
  ND2D1 U128 ( .A1(n316), .A2(n416), .ZN(n333) );
  ND3D1 U129 ( .A1(n344), .A2(n247), .A3(n314), .ZN(n88) );
  ND4D1 U130 ( .A1(n131), .A2(n132), .A3(n133), .A4(n134), .ZN(t[5]) );
  NR2D1 U131 ( .A1(n145), .A2(n146), .ZN(n131) );
  NR3D0 U132 ( .A1(n142), .A2(n143), .A3(n144), .ZN(n133) );
  ND2D1 U134 ( .A1(n316), .A2(n402), .ZN(n74) );
  ND3D1 U135 ( .A1(n365), .A2(n74), .A3(n375), .ZN(n299) );
  ND2D1 U136 ( .A1(n409), .A2(n316), .ZN(n105) );
  IND4D1 U138 ( .A1(n147), .B1(n148), .B2(n149), .B3(n150), .ZN(t[4]) );
  INR4D0 U139 ( .A1(n151), .B1(n152), .B2(n55), .B3(n39), .ZN(n150) );
  NR2D1 U140 ( .A1(n159), .A2(n160), .ZN(n148) );
  ND3D1 U141 ( .A1(n265), .A2(n287), .A3(n379), .ZN(n143) );
  ND2D1 U142 ( .A1(n413), .A2(n316), .ZN(n262) );
  IND4D1 U145 ( .A1(n161), .B1(n162), .B2(n163), .B3(n164), .ZN(t[3]) );
  INR4D0 U146 ( .A1(n93), .B1(n60), .B2(n165), .B3(n78), .ZN(n164) );
  NR3D0 U147 ( .A1(n171), .A2(n118), .A3(n172), .ZN(n163) );
  ND2D1 U152 ( .A1(n400), .A2(n316), .ZN(n156) );
  ND2D1 U153 ( .A1(n399), .A2(n316), .ZN(n228) );
  ND2D1 U154 ( .A1(n401), .A2(n316), .ZN(n177) );
  ND4D1 U155 ( .A1(n254), .A2(n255), .A3(n256), .A4(n257), .ZN(n147) );
  NR2D1 U157 ( .A1(n268), .A2(n142), .ZN(n254) );
  NR4D0 U158 ( .A1(n258), .A2(n259), .A3(n108), .A4(n67), .ZN(n257) );
  INR3D0 U159 ( .A1(n262), .B1(n129), .B2(n221), .ZN(n256) );
  ND3D1 U160 ( .A1(n392), .A2(n393), .A3(n197), .ZN(n313) );
  ND4D1 U161 ( .A1(n300), .A2(n291), .A3(n336), .A4(n337), .ZN(n178) );
  NR2D1 U163 ( .A1(n259), .A2(n58), .ZN(n336) );
  ND4D1 U164 ( .A1(n266), .A2(n267), .A3(n84), .A4(n209), .ZN(n129) );
  ND4D1 U165 ( .A1(n271), .A2(n141), .A3(n272), .A4(n273), .ZN(n222) );
  IINR4D0 U167 ( .A1(n208), .A2(n274), .B1(n4430), .B2(n275), .ZN(n273) );
  INVD1 U171 ( .I(n207), .ZN(n4430) );
  INVD1 U172 ( .I(n395), .ZN(n54) );
  ND3D1 U173 ( .A1(n188), .A2(n104), .A3(n174), .ZN(n275) );
  ND2D1 U174 ( .A1(n373), .A2(n316), .ZN(n358) );
  ND4D1 U175 ( .A1(n201), .A2(n107), .A3(n382), .A4(n383), .ZN(n297) );
  INR4D0 U176 ( .A1(n333), .B1(n384), .B2(n41), .B3(n43), .ZN(n383) );
  NR3D0 U177 ( .A1(n82), .A2(n67), .A3(n4380), .ZN(n382) );
  ND2D1 U178 ( .A1(n84), .A2(n167), .ZN(n384) );
  INR3D0 U179 ( .A1(n348), .B1(n47), .B2(n90), .ZN(n107) );
  ND4D1 U181 ( .A1(n252), .A2(n386), .A3(n347), .A4(n387), .ZN(n90) );
  ND4D1 U182 ( .A1(n282), .A2(n40), .A3(n283), .A4(n284), .ZN(b[1]) );
  IINR4D0 U183 ( .A1(n285), .A2(n236), .B1(n286), .B2(n4430), .ZN(n284) );
  INR4D0 U184 ( .A1(n266), .B1(n428), .B2(n89), .B3(n109), .ZN(n283) );
  INR2D1 U185 ( .A1(n298), .B1(n299), .ZN(n282) );
  ND4D1 U186 ( .A1(n106), .A2(n167), .A3(n260), .A4(n261), .ZN(n258) );
  ND2D1 U188 ( .A1(n371), .A2(n316), .ZN(n274) );
  INVD1 U189 ( .I(n340), .ZN(n67) );
  IND4D1 U190 ( .A1(n172), .B1(n132), .B2(n199), .B3(n200), .ZN(t[1]) );
  INR3D0 U192 ( .A1(n201), .B1(n202), .B2(n203), .ZN(n200) );
  IINR4D0 U193 ( .A1(n318), .A2(n247), .B1(n275), .B2(n268), .ZN(n298) );
  NR4D0 U194 ( .A1(n4450), .A2(n60), .A3(n433), .A4(n4370), .ZN(n318) );
  ND4D1 U195 ( .A1(n319), .A2(n320), .A3(n168), .A4(n77), .ZN(n268) );
  NR4D0 U196 ( .A1(n310), .A2(n4410), .A3(n43), .A4(n4400), .ZN(n309) );
  NR3D0 U197 ( .A1(n230), .A2(n108), .A3(n313), .ZN(n308) );
  ND3D1 U198 ( .A1(n311), .A2(n312), .A3(n84), .ZN(n310) );
  IND4D1 U199 ( .A1(n281), .B1(n204), .B2(n207), .B3(n140), .ZN(n212) );
  IND4D1 U201 ( .A1(n83), .B1(n267), .B2(n306), .B3(n307), .ZN(a[3]) );
  NR4D0 U202 ( .A1(n154), .A2(n229), .A3(n210), .A4(n212), .ZN(n307) );
  ND4D1 U203 ( .A1(n263), .A2(n123), .A3(n264), .A4(n265), .ZN(n221) );
  INVD1 U204 ( .I(n263), .ZN(n4370) );
  INVD1 U205 ( .I(n324), .ZN(n433) );
  INVD1 U206 ( .I(n269), .ZN(n58) );
  INVD1 U207 ( .I(n279), .ZN(n60) );
  NR2D1 U208 ( .A1(n59), .A2(n51), .ZN(n359) );
  IND4D1 U210 ( .A1(n159), .B1(n199), .B2(n357), .B3(n191), .ZN(n229) );
  NR2D1 U211 ( .A1(n46), .A2(n430), .ZN(n357) );
  ND2D1 U212 ( .A1(n354), .A2(n316), .ZN(n288) );
  INVD1 U213 ( .I(n75), .ZN(n59) );
  INVD1 U214 ( .I(n170), .ZN(n4450) );
  ND3D1 U215 ( .A1(n269), .A2(n270), .A3(n236), .ZN(n142) );
  ND2D1 U216 ( .A1(n350), .A2(n351), .ZN(a[2]) );
  NR4D0 U217 ( .A1(n352), .A2(n4440), .A3(n4450), .A4(n4410), .ZN(n351) );
  NR4D0 U218 ( .A1(n355), .A2(n303), .A3(n356), .A4(n229), .ZN(n350) );
  ND3D1 U219 ( .A1(n339), .A2(n224), .A3(n277), .ZN(n352) );
  ND4D1 U220 ( .A1(n177), .A2(n311), .A3(n385), .A4(n312), .ZN(n82) );
  INR2D1 U221 ( .A1(n105), .B1(n137), .ZN(n385) );
  INVD1 U223 ( .I(n391), .ZN(n52) );
  ND4D1 U224 ( .A1(n151), .A2(n158), .A3(n135), .A4(n167), .ZN(n335) );
  INVD1 U225 ( .I(n360), .ZN(n436) );
  ND4D1 U227 ( .A1(n292), .A2(n156), .A3(n293), .A4(n294), .ZN(n89) );
  NR3D0 U228 ( .A1(n50), .A2(n432), .A3(n65), .ZN(n293) );
  NR4D0 U229 ( .A1(n295), .A2(n4390), .A3(n429), .A4(n46), .ZN(n294) );
  ND2D1 U230 ( .A1(n246), .A2(n243), .ZN(n295) );
  INVD1 U231 ( .I(n253), .ZN(n429) );
  INVD1 U233 ( .I(n344), .ZN(n62) );
  INVD1 U234 ( .I(n305), .ZN(n46) );
  INR4D0 U235 ( .A1(n314), .B1(n205), .B2(n92), .B3(n97), .ZN(n238) );
  INVD1 U236 ( .I(n191), .ZN(n65) );
  ND4D1 U237 ( .A1(n366), .A2(n367), .A3(n368), .A4(n369), .ZN(a[1]) );
  NR4D0 U239 ( .A1(n370), .A2(n4400), .A3(n72), .A4(n431), .ZN(n369) );
  INR4D0 U240 ( .A1(n375), .B1(n55), .B2(n4420), .B3(n110), .ZN(n367) );
  INVD1 U241 ( .I(n166), .ZN(n205) );
  ND3D1 U242 ( .A1(n274), .A2(n271), .A3(n340), .ZN(n193) );
  ND3D1 U243 ( .A1(n278), .A2(n333), .A3(n334), .ZN(n184) );
  INVD1 U244 ( .I(n115), .ZN(n4390) );
  INVD1 U245 ( .I(n192), .ZN(n430) );
  ND3D1 U246 ( .A1(n93), .A2(n102), .A3(n176), .ZN(n230) );
  ND3D1 U247 ( .A1(n94), .A2(n76), .A3(n360), .ZN(n159) );
  INVD1 U248 ( .I(n244), .ZN(n435) );
  INVD1 U249 ( .I(n169), .ZN(n431) );
  INVD1 U250 ( .I(n372), .ZN(n4400) );
  NR3D0 U251 ( .A1(n332), .A2(n434), .A3(n198), .ZN(n201) );
  ND3D1 U252 ( .A1(n239), .A2(n106), .A3(n343), .ZN(n198) );
  INVD1 U253 ( .I(n353), .ZN(n4410) );
  ND4D1 U254 ( .A1(n91), .A2(n96), .A3(n252), .A4(n253), .ZN(n251) );
  ND4D1 U255 ( .A1(n197), .A2(n173), .A3(n361), .A4(n340), .ZN(n303) );
  ND4D1 U256 ( .A1(n271), .A2(n288), .A3(n262), .A4(n289), .ZN(n109) );
  ND3D1 U257 ( .A1(n135), .A2(n74), .A3(n158), .ZN(n171) );
  INVD1 U258 ( .I(n300), .ZN(n47) );
  INVD1 U259 ( .I(n339), .ZN(n4380) );
  ND4D1 U260 ( .A1(n209), .A2(n260), .A3(n287), .A4(n75), .ZN(n286) );
  INVD1 U261 ( .I(n365), .ZN(n4420) );
  ND4D1 U262 ( .A1(n238), .A2(n239), .A3(n240), .A4(n241), .ZN(n160) );
  INR4D0 U264 ( .A1(n140), .B1(n242), .B2(n72), .B3(n4450), .ZN(n241) );
  ND3D1 U265 ( .A1(n243), .A2(n244), .A3(n227), .ZN(n242) );
  ND3D1 U266 ( .A1(n364), .A2(n365), .A3(n44), .ZN(n355) );
  ND3D1 U267 ( .A1(n190), .A2(n292), .A3(n138), .ZN(n281) );
  INVD1 U268 ( .I(n296), .ZN(n428) );
  INVD1 U269 ( .I(n381), .ZN(n64) );
  ND4D1 U270 ( .A1(n376), .A2(n269), .A3(n377), .A4(n378), .ZN(n110) );
  NR3D0 U271 ( .A1(n259), .A2(n430), .A3(n64), .ZN(n377) );
  IINR4D0 U272 ( .A1(n74), .A2(n379), .B1(n380), .B2(n59), .ZN(n378) );
  ND3D1 U273 ( .A1(n244), .A2(n261), .A3(n166), .ZN(n380) );
  ND3D1 U274 ( .A1(n274), .A2(n77), .A3(n190), .ZN(n127) );
  ND3D1 U275 ( .A1(n169), .A2(n305), .A3(n279), .ZN(n186) );
  INVD1 U276 ( .I(n141), .ZN(n4440) );
  IND4D1 U279 ( .A1(n214), .B1(n219), .B2(n345), .B3(n346), .ZN(n83) );
  INVD1 U280 ( .I(n237), .ZN(n53) );
  ND4D1 U282 ( .A1(n388), .A2(n208), .A3(n91), .A4(n243), .ZN(n128) );
  ND4D1 U283 ( .A1(n209), .A2(n243), .A3(n244), .A4(n141), .ZN(n214) );
  ND2D1 U284 ( .A1(n141), .A2(n153), .ZN(n370) );
  ND4D1 U285 ( .A1(n360), .A2(n274), .A3(n96), .A4(n305), .ZN(n206) );
  ND4D1 U286 ( .A1(n140), .A2(n102), .A3(n252), .A4(n261), .ZN(n187) );
  INVD1 U289 ( .I(n338), .ZN(n55) );
  INVD1 U290 ( .I(n292), .ZN(n66) );
  ND3D1 U291 ( .A1(n341), .A2(n342), .A3(n343), .ZN(n154) );
  ND4D1 U292 ( .A1(n223), .A2(n224), .A3(n192), .A4(n225), .ZN(n155) );
  NR4D0 U293 ( .A1(n226), .A2(n51), .A3(n431), .A4(n4410), .ZN(n225) );
  NR4D0 U294 ( .A1(n23), .A2(n155), .A3(n221), .A4(n222), .ZN(n87) );
  ND4D1 U295 ( .A1(n140), .A2(n139), .A3(n227), .A4(n176), .ZN(n23) );
  ND4D1 U296 ( .A1(n40), .A2(n215), .A3(n216), .A4(n217), .ZN(t[0]) );
  INR4D0 U297 ( .A1(n168), .B1(n205), .B2(n218), .B3(n436), .ZN(n217) );
  ND2D1 U298 ( .A1(n102), .A2(n77), .ZN(n218) );
  ND2D1 U299 ( .A1(n182), .A2(n183), .ZN(n81) );
  NR4D0 U300 ( .A1(n4450), .A2(n51), .A3(n92), .A4(n184), .ZN(n183) );
  NR4D0 U301 ( .A1(n185), .A2(n186), .A3(n187), .A4(n143), .ZN(n182) );
  IND4D1 U302 ( .A1(n193), .B1(n194), .B2(n195), .B3(n196), .ZN(n161) );
  INR2D1 U303 ( .A1(n197), .B1(n198), .ZN(n195) );
  NR4D0 U304 ( .A1(n59), .A2(n4440), .A3(n4370), .A4(n66), .ZN(n196) );
  ND4D1 U305 ( .A1(n151), .A2(n207), .A3(n208), .A4(n209), .ZN(n172) );
  ND4D1 U306 ( .A1(n190), .A2(n191), .A3(n192), .A4(n91), .ZN(n145) );
  ND4D1 U307 ( .A1(n173), .A2(n174), .A3(n175), .A4(n176), .ZN(n118) );
  INR2D1 U308 ( .A1(n177), .B1(n97), .ZN(n175) );
  ND2D1 U309 ( .A1(n94), .A2(n153), .ZN(n181) );
  INVD1 U311 ( .I(n188), .ZN(n220) );
  ND3D1 U312 ( .A1(n166), .A2(n167), .A3(n168), .ZN(n78) );
  ND2D1 U313 ( .A1(n169), .A2(n170), .ZN(n165) );
  ND4D1 U314 ( .A1(n114), .A2(n124), .A3(n153), .A4(n74), .ZN(n152) );
  ND3D1 U315 ( .A1(n156), .A2(n157), .A3(n158), .ZN(n144) );
  ND4D1 U316 ( .A1(n123), .A2(n124), .A3(n125), .A4(n73), .ZN(n122) );
  INR3D0 U318 ( .A1(n107), .B1(n108), .B2(n49), .ZN(n100) );
  INR4D0 U319 ( .A1(n135), .B1(n136), .B2(n4460), .B3(n137), .ZN(n134) );
  ND3D1 U320 ( .A1(n139), .A2(n140), .A3(n141), .ZN(n136) );
  INVD1 U321 ( .I(n138), .ZN(n4460) );
  ND4D1 U322 ( .A1(n93), .A2(n114), .A3(n115), .A4(n76), .ZN(n113) );
  ND3D1 U323 ( .A1(n104), .A2(n105), .A3(n106), .ZN(n103) );
  ND4D1 U324 ( .A1(n93), .A2(n94), .A3(n95), .A4(n96), .ZN(n79) );
  NR2D1 U325 ( .A1(n97), .A2(n434), .ZN(n95) );
  INR4D0 U326 ( .A1(n77), .B1(n78), .B2(n79), .B3(n80), .ZN(n69) );
  AO22D0 U328 ( .A1(n4520), .A2(py[9]), .B1(N446), .B2(divide_mode), .Z(
        signed_y[9]) );
  AO22D0 U329 ( .A1(py[8]), .A2(n4520), .B1(N445), .B2(divide_mode), .Z(
        signed_y[8]) );
  NR2D1 U330 ( .A1(n4510), .A2(divide_mode), .ZN(n422) );
  AO22D0 U334 ( .A1(py[7]), .A2(n4520), .B1(N444), .B2(divide_mode), .Z(
        signed_y[7]) );
  INVD1 U335 ( .I(py[7]), .ZN(n37) );
  AO22D0 U338 ( .A1(py[6]), .A2(n4520), .B1(N443), .B2(divide_mode), .Z(
        signed_y[6]) );
  ND2D1 U340 ( .A1(n26), .A2(n412), .ZN(n253) );
  ND2D1 U342 ( .A1(n323), .A2(n412), .ZN(n123) );
  ND2D1 U344 ( .A1(n323), .A2(n411), .ZN(n96) );
  AO22D0 U345 ( .A1(py[5]), .A2(n4520), .B1(N442), .B2(divide_mode), .Z(
        signed_y[5]) );
  AO22D0 U346 ( .A1(py[4]), .A2(n4520), .B1(N441), .B2(divide_mode), .Z(
        signed_y[4]) );
  NR2D1 U347 ( .A1(n4490), .A2(n4500), .ZN(n328) );
  AO22D0 U349 ( .A1(py[3]), .A2(n4520), .B1(N440), .B2(divide_mode), .Z(
        signed_y[3]) );
  ND2D1 U350 ( .A1(n415), .A2(n26), .ZN(n320) );
  ND2D1 U351 ( .A1(n411), .A2(n26), .ZN(n106) );
  ND2D1 U352 ( .A1(n426), .A2(n25), .ZN(n338) );
  ND2D1 U353 ( .A1(n29), .A2(n411), .ZN(n386) );
  ND2D1 U354 ( .A1(n29), .A2(n412), .ZN(n246) );
  ND2D1 U355 ( .A1(n415), .A2(n25), .ZN(n349) );
  ND2D1 U357 ( .A1(n426), .A2(n28), .ZN(n348) );
  AO22D0 U358 ( .A1(py[2]), .A2(n4520), .B1(N439), .B2(divide_mode), .Z(
        signed_y[2]) );
  INVD1 U359 ( .I(py[2]), .ZN(n32) );
  ND2D1 U360 ( .A1(n426), .A2(n326), .ZN(n341) );
  ND2D1 U361 ( .A1(n323), .A2(n426), .ZN(n393) );
  ND2D1 U362 ( .A1(n27), .A2(n412), .ZN(n237) );
  ND2D1 U363 ( .A1(n28), .A2(n411), .ZN(n157) );
  ND2D1 U364 ( .A1(n415), .A2(n29), .ZN(n291) );
  ND2D1 U365 ( .A1(n415), .A2(n27), .ZN(n278) );
  ND2D1 U366 ( .A1(n414), .A2(n25), .ZN(n139) );
  ND2D1 U369 ( .A1(n28), .A2(n412), .ZN(n290) );
  ND2D1 U370 ( .A1(n326), .A2(n411), .ZN(n388) );
  ND2D1 U371 ( .A1(n416), .A2(n29), .ZN(n73) );
  ND2D1 U372 ( .A1(n323), .A2(n415), .ZN(n276) );
  ND2D1 U373 ( .A1(n411), .A2(n27), .ZN(n391) );
  ND2D1 U374 ( .A1(n413), .A2(n26), .ZN(n296) );
  IND4D1 U376 ( .A1(n98), .B1(n99), .B2(n100), .B3(n101), .ZN(t[7]) );
  INR4D0 U377 ( .A1(n102), .B1(n103), .B2(n57), .B3(n433), .ZN(n101) );
  NR2D1 U378 ( .A1(n109), .A2(n110), .ZN(n99) );
  ND2D1 U379 ( .A1(n28), .A2(n409), .ZN(n114) );
  ND2D1 U381 ( .A1(n413), .A2(n25), .ZN(n227) );
  ND2D1 U382 ( .A1(n414), .A2(n26), .ZN(n260) );
  ND2D1 U384 ( .A1(n28), .A2(n414), .ZN(n324) );
  ND2D1 U385 ( .A1(n415), .A2(n326), .ZN(n353) );
  ND2D1 U386 ( .A1(n326), .A2(n412), .ZN(n224) );
  ND2D1 U388 ( .A1(n414), .A2(n326), .ZN(n223) );
  ND2D1 U389 ( .A1(n326), .A2(n416), .ZN(n372) );
  ND2D1 U390 ( .A1(n28), .A2(n413), .ZN(n285) );
  ND2D1 U391 ( .A1(n416), .A2(n26), .ZN(n347) );
  ND2D1 U393 ( .A1(n323), .A2(n413), .ZN(n264) );
  ND2D1 U394 ( .A1(n409), .A2(n29), .ZN(n239) );
  ND2D1 U395 ( .A1(n414), .A2(n27), .ZN(n125) );
  ND2D1 U396 ( .A1(n323), .A2(n414), .ZN(n267) );
  AO22D0 U397 ( .A1(py[1]), .A2(n4520), .B1(N438), .B2(divide_mode), .Z(
        signed_y[1]) );
  ND2D1 U398 ( .A1(n416), .A2(n25), .ZN(n314) );
  ND2D1 U400 ( .A1(n414), .A2(n29), .ZN(n247) );
  ND2D1 U401 ( .A1(n409), .A2(n326), .ZN(n374) );
  ND2D1 U402 ( .A1(n406), .A2(n407), .ZN(n202) );
  AOI221D0 U403 ( .A1(n399), .A2(n27), .B1(n400), .B2(n29), .C(n299), .ZN(n406) );
  ND2D1 U405 ( .A1(n323), .A2(n416), .ZN(n344) );
  ND2D1 U406 ( .A1(n401), .A2(n26), .ZN(n375) );
  ND2D1 U407 ( .A1(n409), .A2(n27), .ZN(n395) );
  ND2D1 U408 ( .A1(n409), .A2(n26), .ZN(n270) );
  ND2D1 U409 ( .A1(n28), .A2(n416), .ZN(n343) );
  ND2D1 U410 ( .A1(n413), .A2(n29), .ZN(n287) );
  ND2D1 U411 ( .A1(n326), .A2(n402), .ZN(n365) );
  ND2D1 U412 ( .A1(n409), .A2(n25), .ZN(n379) );
  ND2D1 U413 ( .A1(n413), .A2(n27), .ZN(n265) );
  ND2D1 U414 ( .A1(n323), .A2(n409), .ZN(n381) );
  NR2D1 U415 ( .A1(n4520), .A2(n4510), .ZN(n329) );
  ND2D1 U416 ( .A1(n401), .A2(n29), .ZN(n91) );
  IND4D1 U417 ( .A1(n178), .B1(n48), .B2(n179), .B3(n180), .ZN(t[2]) );
  NR4D0 U418 ( .A1(n220), .A2(n181), .A3(n50), .A4(n81), .ZN(n180) );
  NR3D0 U419 ( .A1(n161), .A2(n145), .A3(n189), .ZN(n179) );
  ND2D1 U420 ( .A1(n373), .A2(n27), .ZN(n197) );
  ND2D1 U421 ( .A1(n28), .A2(n373), .ZN(n339) );
  ND2D1 U422 ( .A1(n399), .A2(n26), .ZN(n209) );
  ND2D1 U423 ( .A1(n400), .A2(n326), .ZN(n207) );
  ND2D1 U424 ( .A1(n315), .A2(n26), .ZN(n174) );
  ND2D1 U425 ( .A1(n400), .A2(n28), .ZN(n104) );
  ND2D1 U426 ( .A1(n402), .A2(n26), .ZN(n261) );
  ND2D1 U427 ( .A1(n323), .A2(n373), .ZN(n340) );
  ND2D1 U428 ( .A1(n323), .A2(n354), .ZN(n277) );
  ND2D1 U429 ( .A1(n315), .A2(n29), .ZN(n77) );
  ND2D1 U430 ( .A1(n371), .A2(n326), .ZN(n84) );
  ND2D1 U431 ( .A1(n28), .A2(n399), .ZN(n263) );
  ND2D1 U432 ( .A1(n401), .A2(n27), .ZN(n167) );
  ND2D1 U433 ( .A1(n371), .A2(n27), .ZN(n208) );
  ND2D1 U434 ( .A1(n402), .A2(n27), .ZN(n135) );
  ND2D1 U435 ( .A1(n401), .A2(n25), .ZN(n269) );
  ND2D1 U436 ( .A1(n400), .A2(n323), .ZN(n168) );
  ND2D1 U437 ( .A1(n323), .A2(n315), .ZN(n188) );
  ND2D1 U438 ( .A1(n315), .A2(n25), .ZN(n279) );
  ND2D1 U439 ( .A1(n373), .A2(n25), .ZN(n75) );
  ND2D1 U440 ( .A1(n326), .A2(n354), .ZN(n170) );
  ND2D1 U441 ( .A1(n28), .A2(n402), .ZN(n360) );
  ND2D1 U442 ( .A1(n402), .A2(n29), .ZN(n158) );
  ND2D1 U443 ( .A1(n400), .A2(n26), .ZN(n124) );
  ND2D1 U444 ( .A1(n402), .A2(n25), .ZN(n252) );
  ND2D1 U445 ( .A1(n323), .A2(n402), .ZN(n191) );
  ND2D1 U446 ( .A1(n28), .A2(n371), .ZN(n153) );
  ND2D1 U447 ( .A1(n400), .A2(n27), .ZN(n151) );
  ND2D1 U448 ( .A1(n354), .A2(n26), .ZN(n173) );
  ND2D1 U449 ( .A1(n373), .A2(n29), .ZN(n305) );
  ND2D1 U451 ( .A1(n323), .A2(n371), .ZN(n166) );
  ND2D1 U452 ( .A1(n401), .A2(n323), .ZN(n243) );
  ND2D1 U453 ( .A1(n354), .A2(n25), .ZN(n271) );
  ND2D1 U454 ( .A1(n326), .A2(n373), .ZN(n141) );
  ND2D1 U455 ( .A1(n28), .A2(n354), .ZN(n115) );
  ND2D1 U456 ( .A1(n373), .A2(n26), .ZN(n192) );
  ND2D1 U457 ( .A1(n400), .A2(n25), .ZN(n93) );
  ND2D1 U458 ( .A1(n399), .A2(n25), .ZN(n102) );
  ND2D1 U459 ( .A1(n371), .A2(n29), .ZN(n300) );
  ND2D1 U460 ( .A1(n401), .A2(n28), .ZN(n244) );
  ND2D1 U461 ( .A1(n371), .A2(n26), .ZN(n169) );
  ND2D1 U462 ( .A1(n354), .A2(n27), .ZN(n94) );
  ND2D1 U463 ( .A1(n401), .A2(n326), .ZN(n176) );
  ND2D1 U464 ( .A1(n354), .A2(n29), .ZN(n76) );
  ND2D1 U465 ( .A1(n399), .A2(n29), .ZN(n140) );
  ND2D1 U466 ( .A1(n323), .A2(n399), .ZN(n292) );
  ND2D1 U467 ( .A1(n326), .A2(n315), .ZN(n138) );
  ND2D1 U468 ( .A1(n28), .A2(n315), .ZN(n190) );
  INVD1 U469 ( .I(fx[21]), .ZN(n447) );
  INVD1 U472 ( .I(fx[20]), .ZN(n4480) );
  NR2D1 U475 ( .A1(fy[20]), .A2(divide_mode), .ZN(n421) );
  INVD1 U476 ( .I(fx[22]), .ZN(n61) );
  NR2D1 U479 ( .A1(n4500), .A2(fy[22]), .ZN(n363) );
  INVD1 U480 ( .I(fy[21]), .ZN(n4500) );
  INVD1 U481 ( .I(fy[20]), .ZN(n4510) );
  INVD1 U482 ( .I(fy[22]), .ZN(n4490) );
  NR2D1 U487 ( .A1(n4520), .A2(fy[20]), .ZN(n362) );
  NR2D1 U488 ( .A1(n4490), .A2(fy[21]), .ZN(n389) );
  NR2D1 U489 ( .A1(fy[22]), .A2(fy[21]), .ZN(n394) );
  INVD1 U490 ( .I(fy[19]), .ZN(ry_3_) );
  INVD1 U491 ( .I(fx[19]), .ZN(rx_3_) );
  TIEL U492 ( .ZN(n4530) );
  CKXOR2D1 U493 ( .A1(n30), .A2(n31), .Z(N438) );
  CKXOR2D1 U494 ( .A1(n19), .A2(n32), .Z(N439) );
  CKXOR2D1 U495 ( .A1(n22), .A2(n33), .Z(N440) );
  CKXOR2D1 U496 ( .A1(n18), .A2(n34), .Z(N441) );
  CKXOR2D1 U497 ( .A1(n17), .A2(n35), .Z(N442) );
  CKXOR2D1 U498 ( .A1(n16), .A2(n36), .Z(N443) );
  CKXOR2D1 U499 ( .A1(n15), .A2(n37), .Z(N444) );
  CKXOR2D1 U500 ( .A1(n21), .A2(n38), .Z(N445) );
  CKXOR2D1 U501 ( .A1(n14), .A2(n38), .Z(N446) );
  OAI31D0 U3 ( .A1(py[9]), .A2(n14), .A3(n4520), .B(n4540), .ZN(signed_y[15])
         );
  CKND2D0 U4 ( .A1(py[9]), .A2(n4520), .ZN(n4540) );
  CKND0 U5 ( .I(divide_mode), .ZN(n4520) );
  CKND0 U6 ( .I(py[9]), .ZN(n38) );
  CKND0 U7 ( .I(py[1]), .ZN(n31) );
  CKND0 U9 ( .I(N437), .ZN(n30) );
  NR2D0 U10 ( .A1(N437), .A2(py[1]), .ZN(n19) );
  ND4D0 U11 ( .A1(n173), .A2(n208), .A3(n4560), .A4(n4550), .ZN(n210) );
  NR4D0 U12 ( .A1(n178), .A2(n202), .A3(n193), .A4(n335), .ZN(n4550) );
  NR2D0 U13 ( .A1(n332), .A2(n184), .ZN(n4560) );
  CKND2D0 U14 ( .A1(n27), .A2(n426), .ZN(n392) );
  AN2D0 U15 ( .A1(n422), .A2(n328), .Z(n426) );
  NR3D0 U16 ( .A1(n447), .A2(n61), .A3(fx[20]), .ZN(n27) );
  CKND2D0 U17 ( .A1(n29), .A2(n426), .ZN(n334) );
  NR3D0 U31 ( .A1(n4480), .A2(n61), .A3(fx[21]), .ZN(n29) );
  CKND2D0 U59 ( .A1(n26), .A2(n426), .ZN(n312) );
  NR3D0 U127 ( .A1(n4480), .A2(n447), .A3(fx[22]), .ZN(n26) );
  CKND2D0 U148 ( .A1(n412), .A2(n25), .ZN(n245) );
  NR3D0 U149 ( .A1(n61), .A2(fx[21]), .A3(fx[20]), .ZN(n25) );
  AN2D0 U150 ( .A1(n421), .A2(n363), .Z(n412) );
  CKND2D0 U151 ( .A1(n28), .A2(n415), .ZN(n342) );
  AN2D0 U327 ( .A1(n421), .A2(n328), .Z(n415) );
  NR3D0 U331 ( .A1(n4480), .A2(fx[22]), .A3(fx[21]), .ZN(n28) );
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
  AO22D0 U57 ( .A1(N50), .A2(n78), .B1(divide_mode), .B2(N26), .Z(result[30])
         );
  XOR3D1 U58 ( .A1(N34), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_25_2_carry[7]), .Z(N50) );
  XOR3D1 U59 ( .A1(N10), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_22_2_carry[7]), .Z(N26) );
  CKBD1 U60 ( .I(x[21]), .Z(fraction_x[21]) );
  CKBD1 U61 ( .I(x[20]), .Z(fraction_x[20]) );
  CKBD1 U62 ( .I(x[22]), .Z(fraction_x[22]) );
  AN2XD1 U63 ( .A1(y[23]), .A2(y[24]), .Z(n35) );
  INVD1 U64 ( .I(y[29]), .ZN(N17) );
  INVD0 U65 ( .I(y[24]), .ZN(N12) );
  INVD1 U66 ( .I(y[25]), .ZN(N13) );
  INVD1 U67 ( .I(y[26]), .ZN(N14) );
  INVD1 U68 ( .I(y[27]), .ZN(N15) );
  INVD1 U69 ( .I(y[28]), .ZN(N16) );
  AN2XD1 U70 ( .A1(n35), .A2(y[25]), .Z(n410) );
  AN2XD1 U71 ( .A1(n410), .A2(y[26]), .Z(n51) );
  AN2XD1 U72 ( .A1(n51), .A2(y[27]), .Z(n60) );
  AN2XD1 U73 ( .A1(n60), .A2(y[28]), .Z(n70) );
  CKXOR2D1 U74 ( .A1(y[30]), .A2(n77), .Z(N42) );
  ND2D1 U75 ( .A1(n70), .A2(y[29]), .ZN(n77) );
  CKBD1 U87 ( .I(x[19]), .Z(fraction_x[19]) );
  CKBD1 U88 ( .I(x[18]), .Z(fraction_x[18]) );
  CKBD1 U89 ( .I(x[17]), .Z(fraction_x[17]) );
  CKBD1 U90 ( .I(x[16]), .Z(fraction_x[16]) );
  CKBD1 U91 ( .I(y[22]), .Z(fraction_y[22]) );
  CKBD1 U92 ( .I(y[21]), .Z(fraction_y[21]) );
  CKBD1 U93 ( .I(y[20]), .Z(fraction_y[20]) );
  CKBD1 U94 ( .I(y[19]), .Z(fraction_y[19]) );
  CKBD1 U95 ( .I(y[18]), .Z(fraction_y[18]) );
  CKBD1 U96 ( .I(y[17]), .Z(fraction_y[17]) );
  CKBD1 U97 ( .I(y[16]), .Z(fraction_y[16]) );
  CKBD1 U98 ( .I(result_fraction[22]), .Z(result[22]) );
  CKBD1 U99 ( .I(result_fraction[21]), .Z(result[21]) );
  CKBD1 U100 ( .I(result_fraction[20]), .Z(result[20]) );
  CKBD1 U101 ( .I(result_fraction[19]), .Z(result[19]) );
  CKBD1 U102 ( .I(result_fraction[18]), .Z(result[18]) );
  CKBD1 U103 ( .I(result_fraction[17]), .Z(result[17]) );
  CKBD1 U104 ( .I(result_fraction[16]), .Z(result[16]) );
  CKBD1 U105 ( .I(result_fraction[15]), .Z(result[15]) );
  CKBD1 U106 ( .I(result_fraction[14]), .Z(result[14]) );
  CKBD1 U107 ( .I(result_fraction[13]), .Z(result[13]) );
  CKBD1 U108 ( .I(result_fraction[12]), .Z(result[12]) );
  CKBD1 U109 ( .I(result_fraction[11]), .Z(result[11]) );
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


module unified_div_drop_l3_shared ( x, y, divide_mode, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  input divide_mode;
  wire   n27, n29, n30, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n51,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69;
  wire   [22:16] fx;
  wire   [22:16] fy;
  wire   [24:12] core_value;
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
        SYNOPSYS_UNCONNECTED__58;
  assign result[0] = 1'b0;
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

  unified_div_drop_l3_shared_core shared_core ( .fx({fx, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .fy({fy, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .divide_mode(n51), .value(
        {SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, core_value, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15}) );
  fp32_normal_finite_wrapper wrapper ( .x({x[31:16], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y({y[31:16], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .divide_mode(n51), .fraction_x({
        fx, SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31}), .fraction_y({fy, 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, 
        SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39, 
        SYNOPSYS_UNCONNECTED__40, SYNOPSYS_UNCONNECTED__41, 
        SYNOPSYS_UNCONNECTED__42, SYNOPSYS_UNCONNECTED__43, 
        SYNOPSYS_UNCONNECTED__44, SYNOPSYS_UNCONNECTED__45, 
        SYNOPSYS_UNCONNECTED__46, SYNOPSYS_UNCONNECTED__47}), 
        .result_fraction({normalized_fraction, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .exponent_adjust({
        exponent_adjust[2], exponent_adjust[2], exponent_adjust[0]}), .result(
        {result[31:11], SYNOPSYS_UNCONNECTED__48, SYNOPSYS_UNCONNECTED__49, 
        SYNOPSYS_UNCONNECTED__50, SYNOPSYS_UNCONNECTED__51, 
        SYNOPSYS_UNCONNECTED__52, SYNOPSYS_UNCONNECTED__53, 
        SYNOPSYS_UNCONNECTED__54, SYNOPSYS_UNCONNECTED__55, 
        SYNOPSYS_UNCONNECTED__56, SYNOPSYS_UNCONNECTED__57, 
        SYNOPSYS_UNCONNECTED__58}) );
  IND2D1 U78 ( .A1(n29), .B1(n57), .ZN(exponent_adjust[2]) );
  INVD1 U79 ( .I(n30), .ZN(n57) );
  ND2D1 U80 ( .A1(n56), .A2(n57), .ZN(exponent_adjust[0]) );
  NR2D1 U81 ( .A1(n56), .A2(n69), .ZN(normalized_fraction[11]) );
  NR3D0 U82 ( .A1(core_value[23]), .A2(core_value[24]), .A3(n59), .ZN(n30) );
  NR3D0 U83 ( .A1(core_value[23]), .A2(core_value[24]), .A3(core_value[22]), 
        .ZN(n29) );
  INVD1 U84 ( .I(core_value[22]), .ZN(n59) );
  INVD1 U85 ( .I(core_value[24]), .ZN(n56) );
  ND2D1 U86 ( .A1(core_value[23]), .A2(n56), .ZN(n27) );
  OAI221D0 U87 ( .A1(n27), .A2(n68), .B1(n56), .B2(n67), .C(n47), .ZN(
        normalized_fraction[13]) );
  ND2D1 U88 ( .A1(core_value[12]), .A2(n30), .ZN(n47) );
  OAI22D1 U89 ( .A1(n27), .A2(n69), .B1(n56), .B2(n68), .ZN(
        normalized_fraction[12]) );
  INVD1 U90 ( .I(core_value[12]), .ZN(n69) );
  OAI221D0 U91 ( .A1(n59), .A2(n27), .B1(n58), .B2(n56), .C(n38), .ZN(
        normalized_fraction[22]) );
  INVD1 U92 ( .I(core_value[23]), .ZN(n58) );
  AOI22D1 U93 ( .A1(core_value[20]), .A2(n29), .B1(core_value[21]), .B2(n30), 
        .ZN(n38) );
  OAI221D0 U94 ( .A1(n27), .A2(n60), .B1(n59), .B2(n56), .C(n39), .ZN(
        normalized_fraction[21]) );
  AOI22D1 U95 ( .A1(core_value[19]), .A2(n29), .B1(core_value[20]), .B2(n30), 
        .ZN(n39) );
  OAI221D0 U96 ( .A1(n27), .A2(n67), .B1(n56), .B2(n66), .C(n46), .ZN(
        normalized_fraction[14]) );
  AOI22D1 U97 ( .A1(core_value[12]), .A2(n29), .B1(core_value[13]), .B2(n30), 
        .ZN(n46) );
  OAI221D0 U98 ( .A1(n27), .A2(n66), .B1(n56), .B2(n65), .C(n45), .ZN(
        normalized_fraction[15]) );
  AOI22D1 U99 ( .A1(core_value[13]), .A2(n29), .B1(core_value[14]), .B2(n30), 
        .ZN(n45) );
  OAI221D0 U100 ( .A1(n27), .A2(n65), .B1(n56), .B2(n64), .C(n44), .ZN(
        normalized_fraction[16]) );
  AOI22D1 U101 ( .A1(core_value[14]), .A2(n29), .B1(core_value[15]), .B2(n30), 
        .ZN(n44) );
  OAI221D0 U102 ( .A1(n27), .A2(n64), .B1(n56), .B2(n63), .C(n43), .ZN(
        normalized_fraction[17]) );
  AOI22D1 U103 ( .A1(core_value[15]), .A2(n29), .B1(core_value[16]), .B2(n30), 
        .ZN(n43) );
  OAI221D0 U104 ( .A1(n27), .A2(n63), .B1(n56), .B2(n62), .C(n42), .ZN(
        normalized_fraction[18]) );
  AOI22D1 U105 ( .A1(core_value[16]), .A2(n29), .B1(core_value[17]), .B2(n30), 
        .ZN(n42) );
  OAI221D0 U106 ( .A1(n27), .A2(n62), .B1(n56), .B2(n61), .C(n41), .ZN(
        normalized_fraction[19]) );
  AOI22D1 U107 ( .A1(core_value[17]), .A2(n29), .B1(core_value[18]), .B2(n30), 
        .ZN(n41) );
  OAI221D0 U108 ( .A1(n27), .A2(n61), .B1(n56), .B2(n60), .C(n40), .ZN(
        normalized_fraction[20]) );
  AOI22D1 U109 ( .A1(core_value[18]), .A2(n29), .B1(core_value[19]), .B2(n30), 
        .ZN(n40) );
  INVD1 U110 ( .I(core_value[21]), .ZN(n60) );
  INVD1 U111 ( .I(core_value[20]), .ZN(n61) );
  INVD1 U112 ( .I(core_value[19]), .ZN(n62) );
  INVD1 U113 ( .I(core_value[18]), .ZN(n63) );
  INVD1 U114 ( .I(core_value[17]), .ZN(n64) );
  INVD1 U115 ( .I(core_value[16]), .ZN(n65) );
  INVD1 U116 ( .I(core_value[15]), .ZN(n66) );
  INVD1 U117 ( .I(core_value[14]), .ZN(n67) );
  INVD1 U118 ( .I(core_value[13]), .ZN(n68) );
  CKBD1 U120 ( .I(divide_mode), .Z(n51) );
endmodule

