/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Sun Aug  9 14:37:18 2026
/////////////////////////////////////////////////////////////


module csa3_WIDTH29_2 ( input_a, input_b, input_c, sum, carry );
  input [28:0] input_a;
  input [28:0] input_b;
  input [28:0] input_c;
  output [28:0] sum;
  output [28:0] carry;


  CKAN2D0 U2 ( .A1(input_b[21]), .A2(input_a[21]), .Z(carry[22]) );
  CKAN2D1 U3 ( .A1(input_b[15]), .A2(input_a[15]), .Z(carry[16]) );
  CKAN2D1 U4 ( .A1(input_b[14]), .A2(input_a[14]), .Z(carry[15]) );
  CKAN2D1 U5 ( .A1(input_b[13]), .A2(input_a[13]), .Z(carry[14]) );
  CKAN2D1 U6 ( .A1(input_b[12]), .A2(input_a[12]), .Z(carry[13]) );
  CKAN2D1 U7 ( .A1(input_b[11]), .A2(input_a[11]), .Z(carry[12]) );
  CKAN2D1 U8 ( .A1(input_b[10]), .A2(input_a[10]), .Z(carry[11]) );
  AN2D0 U9 ( .A1(input_a[8]), .A2(input_b[8]), .Z(carry[9]) );
  CKAN2D1 U10 ( .A1(input_b[9]), .A2(input_a[9]), .Z(carry[10]) );
  CKAN2D1 U11 ( .A1(input_b[7]), .A2(input_a[7]), .Z(carry[8]) );
  CKAN2D1 U12 ( .A1(input_b[6]), .A2(input_a[6]), .Z(carry[7]) );
  XOR2D0 U13 ( .A1(input_b[6]), .A2(input_a[6]), .Z(sum[6]) );
  CKAN2D1 U14 ( .A1(input_b[5]), .A2(input_a[5]), .Z(carry[6]) );
  BUFFD0 U15 ( .I(input_b[28]), .Z(sum[28]) );
  BUFFD0 U16 ( .I(input_b[27]), .Z(sum[27]) );
  BUFFD0 U17 ( .I(input_b[26]), .Z(sum[26]) );
  BUFFD0 U18 ( .I(input_b[25]), .Z(sum[25]) );
  AN2D0 U19 ( .A1(input_b[24]), .A2(input_a[24]), .Z(carry[25]) );
  AN2XD1 U20 ( .A1(input_b[20]), .A2(input_a[20]), .Z(carry[21]) );
  AN2XD1 U21 ( .A1(input_b[19]), .A2(input_a[19]), .Z(carry[20]) );
  AN2XD1 U22 ( .A1(input_b[18]), .A2(input_a[18]), .Z(carry[19]) );
  AN2XD1 U23 ( .A1(input_b[16]), .A2(input_a[16]), .Z(carry[17]) );
  AN2XD1 U24 ( .A1(input_b[17]), .A2(input_a[17]), .Z(carry[18]) );
  IAO21D0 U25 ( .A1(input_b[10]), .A2(input_a[10]), .B(carry[11]), .ZN(sum[10]) );
  IAO21D0 U26 ( .A1(input_b[11]), .A2(input_a[11]), .B(carry[12]), .ZN(sum[11]) );
  IAO21D0 U27 ( .A1(input_b[12]), .A2(input_a[12]), .B(carry[13]), .ZN(sum[12]) );
  IAO21D0 U28 ( .A1(input_b[13]), .A2(input_a[13]), .B(carry[14]), .ZN(sum[13]) );
  IAO21D0 U29 ( .A1(input_b[9]), .A2(input_a[9]), .B(carry[10]), .ZN(sum[9])
         );
  IAO21D0 U30 ( .A1(input_b[20]), .A2(input_a[20]), .B(carry[21]), .ZN(sum[20]) );
  IAO21D0 U31 ( .A1(input_b[21]), .A2(input_a[21]), .B(carry[22]), .ZN(sum[21]) );
  IAO21D0 U32 ( .A1(input_b[22]), .A2(input_a[22]), .B(carry[23]), .ZN(sum[22]) );
  IAO21D0 U33 ( .A1(input_b[23]), .A2(input_a[23]), .B(carry[24]), .ZN(sum[23]) );
  IAO21D0 U34 ( .A1(input_b[24]), .A2(input_a[24]), .B(carry[25]), .ZN(sum[24]) );
  IAO21D0 U35 ( .A1(input_b[19]), .A2(input_a[19]), .B(carry[20]), .ZN(sum[19]) );
  IAO21D0 U36 ( .A1(input_b[14]), .A2(input_a[14]), .B(carry[15]), .ZN(sum[14]) );
  IAO21D0 U37 ( .A1(input_b[15]), .A2(input_a[15]), .B(carry[16]), .ZN(sum[15]) );
  IAO21D0 U38 ( .A1(input_b[16]), .A2(input_a[16]), .B(carry[17]), .ZN(sum[16]) );
  IAO21D0 U39 ( .A1(input_b[18]), .A2(input_a[18]), .B(carry[19]), .ZN(sum[18]) );
  IAO21D0 U40 ( .A1(input_b[17]), .A2(input_a[17]), .B(carry[18]), .ZN(sum[17]) );
  CKAN2D1 U41 ( .A1(input_b[23]), .A2(input_a[23]), .Z(carry[24]) );
  CKAN2D1 U42 ( .A1(input_b[22]), .A2(input_a[22]), .Z(carry[23]) );
  XOR2D0 U43 ( .A1(input_b[7]), .A2(input_a[7]), .Z(sum[7]) );
  XOR2D0 U44 ( .A1(input_a[8]), .A2(input_b[8]), .Z(sum[8]) );
  CKAN2D0 U45 ( .A1(input_a[0]), .A2(input_b[0]), .Z(carry[1]) );
  CKAN2D0 U46 ( .A1(input_a[1]), .A2(input_b[1]), .Z(carry[2]) );
  AN2D1 U47 ( .A1(input_a[2]), .A2(input_b[2]), .Z(carry[3]) );
  AN2D1 U48 ( .A1(input_a[3]), .A2(input_b[3]), .Z(carry[4]) );
  AN2XD1 U49 ( .A1(input_b[4]), .A2(input_a[4]), .Z(carry[5]) );
  XOR2D0 U50 ( .A1(input_a[0]), .A2(input_b[0]), .Z(sum[0]) );
  XOR2D0 U51 ( .A1(input_a[1]), .A2(input_b[1]), .Z(sum[1]) );
  CKXOR2D1 U52 ( .A1(input_a[2]), .A2(input_b[2]), .Z(sum[2]) );
  CKXOR2D1 U53 ( .A1(input_a[3]), .A2(input_b[3]), .Z(sum[3]) );
  CKXOR2D1 U54 ( .A1(input_b[4]), .A2(input_a[4]), .Z(sum[4]) );
  CKXOR2D1 U55 ( .A1(input_b[5]), .A2(input_a[5]), .Z(sum[5]) );
endmodule


module csa3_WIDTH29_1 ( input_a, input_b, input_c, sum, carry );
  input [28:0] input_a;
  input [28:0] input_b;
  input [28:0] input_c;
  output [28:0] sum;
  output [28:0] carry;


  CKAN2D1 U2 ( .A1(input_b[22]), .A2(input_a[22]), .Z(carry[23]) );
  CKAN2D1 U3 ( .A1(input_b[15]), .A2(input_a[15]), .Z(carry[16]) );
  CKAN2D1 U4 ( .A1(input_b[14]), .A2(input_a[14]), .Z(carry[15]) );
  CKAN2D1 U5 ( .A1(input_b[16]), .A2(input_a[16]), .Z(carry[17]) );
  CKAN2D1 U6 ( .A1(input_b[21]), .A2(input_a[21]), .Z(carry[22]) );
  CKAN2D1 U7 ( .A1(input_b[9]), .A2(input_a[9]), .Z(carry[10]) );
  CKAN2D1 U8 ( .A1(input_b[20]), .A2(input_a[20]), .Z(carry[21]) );
  CKAN2D1 U9 ( .A1(input_b[13]), .A2(input_a[13]), .Z(carry[14]) );
  CKAN2D1 U10 ( .A1(input_b[17]), .A2(input_a[17]), .Z(carry[18]) );
  CKAN2D1 U11 ( .A1(input_b[10]), .A2(input_a[10]), .Z(carry[11]) );
  CKAN2D1 U12 ( .A1(input_b[19]), .A2(input_a[19]), .Z(carry[20]) );
  CKAN2D1 U13 ( .A1(input_b[11]), .A2(input_a[11]), .Z(carry[12]) );
  CKAN2D1 U14 ( .A1(input_b[12]), .A2(input_a[12]), .Z(carry[13]) );
  CKAN2D1 U15 ( .A1(input_b[18]), .A2(input_a[18]), .Z(carry[19]) );
  AN2D0 U16 ( .A1(input_b[25]), .A2(input_a[25]), .Z(carry[26]) );
  CKAN2D1 U17 ( .A1(input_a[5]), .A2(input_b[5]), .Z(carry[6]) );
  CKAN2D1 U18 ( .A1(input_a[6]), .A2(input_b[6]), .Z(carry[7]) );
  CKAN2D1 U19 ( .A1(input_a[7]), .A2(input_b[7]), .Z(carry[8]) );
  AN2D0 U20 ( .A1(input_a[8]), .A2(input_b[8]), .Z(carry[9]) );
  BUFFD0 U21 ( .I(input_a[28]), .Z(sum[28]) );
  BUFFD0 U22 ( .I(input_a[27]), .Z(sum[27]) );
  BUFFD0 U23 ( .I(input_a[26]), .Z(sum[26]) );
  IAO21D0 U24 ( .A1(input_b[19]), .A2(input_a[19]), .B(carry[20]), .ZN(sum[19]) );
  IAO21D0 U25 ( .A1(input_b[18]), .A2(input_a[18]), .B(carry[19]), .ZN(sum[18]) );
  IAO21D0 U26 ( .A1(input_b[9]), .A2(input_a[9]), .B(carry[10]), .ZN(sum[9])
         );
  IAO21D0 U27 ( .A1(input_b[10]), .A2(input_a[10]), .B(carry[11]), .ZN(sum[10]) );
  IAO21D0 U28 ( .A1(input_b[17]), .A2(input_a[17]), .B(carry[18]), .ZN(sum[17]) );
  IAO21D0 U29 ( .A1(input_b[11]), .A2(input_a[11]), .B(carry[12]), .ZN(sum[11]) );
  IAO21D0 U30 ( .A1(input_b[16]), .A2(input_a[16]), .B(carry[17]), .ZN(sum[16]) );
  IAO21D0 U31 ( .A1(input_b[12]), .A2(input_a[12]), .B(carry[13]), .ZN(sum[12]) );
  IAO21D0 U32 ( .A1(input_b[13]), .A2(input_a[13]), .B(carry[14]), .ZN(sum[13]) );
  IAO21D0 U33 ( .A1(input_b[15]), .A2(input_a[15]), .B(carry[16]), .ZN(sum[15]) );
  IAO21D0 U34 ( .A1(input_b[14]), .A2(input_a[14]), .B(carry[15]), .ZN(sum[14]) );
  IAO21D0 U35 ( .A1(input_b[23]), .A2(input_a[23]), .B(carry[24]), .ZN(sum[23]) );
  IAO21D0 U36 ( .A1(input_b[24]), .A2(input_a[24]), .B(carry[25]), .ZN(sum[24]) );
  IAO21D0 U37 ( .A1(input_b[22]), .A2(input_a[22]), .B(carry[23]), .ZN(sum[22]) );
  IAO21D0 U38 ( .A1(input_b[20]), .A2(input_a[20]), .B(carry[21]), .ZN(sum[20]) );
  IAO21D0 U39 ( .A1(input_b[21]), .A2(input_a[21]), .B(carry[22]), .ZN(sum[21]) );
  CKAN2D1 U40 ( .A1(input_b[23]), .A2(input_a[23]), .Z(carry[24]) );
  IAO21D0 U41 ( .A1(input_b[25]), .A2(input_a[25]), .B(carry[26]), .ZN(sum[25]) );
  CKAN2D1 U42 ( .A1(input_b[24]), .A2(input_a[24]), .Z(carry[25]) );
  XOR2D0 U43 ( .A1(input_a[7]), .A2(input_b[7]), .Z(sum[7]) );
  XOR2D0 U44 ( .A1(input_a[8]), .A2(input_b[8]), .Z(sum[8]) );
  CKXOR2D1 U45 ( .A1(input_a[4]), .A2(input_b[4]), .Z(sum[4]) );
  BUFFD0 U46 ( .I(input_a[0]), .Z(sum[0]) );
  CKXOR2D1 U47 ( .A1(input_a[3]), .A2(input_b[3]), .Z(sum[3]) );
  CKAN2D0 U48 ( .A1(input_a[1]), .A2(input_b[1]), .Z(carry[2]) );
  CKAN2D0 U49 ( .A1(input_a[2]), .A2(input_b[2]), .Z(carry[3]) );
  AN2D1 U50 ( .A1(input_a[3]), .A2(input_b[3]), .Z(carry[4]) );
  AN2XD1 U51 ( .A1(input_a[4]), .A2(input_b[4]), .Z(carry[5]) );
  XOR2D0 U52 ( .A1(input_a[1]), .A2(input_b[1]), .Z(sum[1]) );
  XOR2D0 U53 ( .A1(input_a[2]), .A2(input_b[2]), .Z(sum[2]) );
  CKXOR2D1 U54 ( .A1(input_a[5]), .A2(input_b[5]), .Z(sum[5]) );
  CKXOR2D1 U55 ( .A1(input_a[6]), .A2(input_b[6]), .Z(sum[6]) );
endmodule


module csa3_WIDTH29_0 ( input_a, input_b, input_c, sum, carry );
  input [28:0] input_a;
  input [28:0] input_b;
  input [28:0] input_c;
  output [28:0] sum;
  output [28:0] carry;


  IAO21D1 U2 ( .A1(input_b[18]), .A2(input_a[18]), .B(carry[19]), .ZN(sum[18])
         );
  IAO21D1 U3 ( .A1(input_b[17]), .A2(input_a[17]), .B(carry[18]), .ZN(sum[17])
         );
  IAO21D1 U4 ( .A1(input_b[19]), .A2(input_a[19]), .B(carry[20]), .ZN(sum[19])
         );
  CKAN2D1 U5 ( .A1(input_b[23]), .A2(input_a[23]), .Z(carry[24]) );
  CKAN2D1 U6 ( .A1(input_b[22]), .A2(input_a[22]), .Z(carry[23]) );
  CKAN2D1 U7 ( .A1(input_b[21]), .A2(input_a[21]), .Z(carry[22]) );
  CKAN2D1 U8 ( .A1(input_b[20]), .A2(input_a[20]), .Z(carry[21]) );
  CKAN2D1 U9 ( .A1(input_b[9]), .A2(input_a[9]), .Z(carry[10]) );
  CKAN2D1 U10 ( .A1(input_b[19]), .A2(input_a[19]), .Z(carry[20]) );
  CKAN2D1 U11 ( .A1(input_b[10]), .A2(input_a[10]), .Z(carry[11]) );
  CKAN2D1 U12 ( .A1(input_b[18]), .A2(input_a[18]), .Z(carry[19]) );
  CKAN2D1 U13 ( .A1(input_b[11]), .A2(input_a[11]), .Z(carry[12]) );
  CKAN2D1 U14 ( .A1(input_b[16]), .A2(input_a[16]), .Z(carry[17]) );
  CKAN2D1 U15 ( .A1(input_b[13]), .A2(input_a[13]), .Z(carry[14]) );
  CKAN2D1 U16 ( .A1(input_b[14]), .A2(input_a[14]), .Z(carry[15]) );
  CKAN2D1 U17 ( .A1(input_b[15]), .A2(input_a[15]), .Z(carry[16]) );
  CKAN2D1 U18 ( .A1(input_b[12]), .A2(input_a[12]), .Z(carry[13]) );
  CKAN2D1 U19 ( .A1(input_b[17]), .A2(input_a[17]), .Z(carry[18]) );
  CKAN2D0 U20 ( .A1(input_a[5]), .A2(input_b[5]), .Z(carry[6]) );
  CKAN2D0 U21 ( .A1(input_a[6]), .A2(input_b[6]), .Z(carry[7]) );
  CKAN2D1 U22 ( .A1(input_a[7]), .A2(input_b[7]), .Z(carry[8]) );
  CKAN2D1 U23 ( .A1(input_a[8]), .A2(input_b[8]), .Z(carry[9]) );
  BUFFD0 U24 ( .I(input_a[27]), .Z(sum[27]) );
  IAO21D0 U25 ( .A1(input_b[15]), .A2(input_a[15]), .B(carry[16]), .ZN(sum[15]) );
  IAO21D0 U26 ( .A1(input_b[16]), .A2(input_a[16]), .B(carry[17]), .ZN(sum[16]) );
  IAO21D0 U27 ( .A1(input_b[14]), .A2(input_a[14]), .B(carry[15]), .ZN(sum[14]) );
  IAO21D0 U28 ( .A1(input_b[13]), .A2(input_a[13]), .B(carry[14]), .ZN(sum[13]) );
  IAO21D0 U29 ( .A1(input_b[12]), .A2(input_a[12]), .B(carry[13]), .ZN(sum[12]) );
  IAO21D0 U30 ( .A1(input_b[11]), .A2(input_a[11]), .B(carry[12]), .ZN(sum[11]) );
  IAO21D0 U31 ( .A1(input_b[10]), .A2(input_a[10]), .B(carry[11]), .ZN(sum[10]) );
  IAO21D0 U32 ( .A1(input_b[9]), .A2(input_a[9]), .B(carry[10]), .ZN(sum[9])
         );
  CKAN2D1 U33 ( .A1(input_b[24]), .A2(input_a[24]), .Z(carry[25]) );
  IAO21D0 U34 ( .A1(input_b[25]), .A2(input_a[25]), .B(carry[26]), .ZN(sum[25]) );
  CKAN2D1 U35 ( .A1(input_b[25]), .A2(input_a[25]), .Z(carry[26]) );
  IAO21D0 U36 ( .A1(input_b[26]), .A2(input_a[26]), .B(carry[27]), .ZN(sum[26]) );
  XOR2D0 U37 ( .A1(input_a[8]), .A2(input_b[8]), .Z(sum[8]) );
  XOR2D0 U38 ( .A1(input_a[6]), .A2(input_b[6]), .Z(sum[6]) );
  XOR2D0 U39 ( .A1(input_a[7]), .A2(input_b[7]), .Z(sum[7]) );
  XOR2D0 U40 ( .A1(input_a[5]), .A2(input_b[5]), .Z(sum[5]) );
  BUFFD0 U41 ( .I(input_a[28]), .Z(sum[28]) );
  BUFFD0 U42 ( .I(input_a[0]), .Z(sum[0]) );
  BUFFD0 U43 ( .I(input_a[1]), .Z(sum[1]) );
  CKAN2D0 U44 ( .A1(input_a[2]), .A2(input_b[2]), .Z(carry[3]) );
  CKAN2D0 U45 ( .A1(input_a[3]), .A2(input_b[3]), .Z(carry[4]) );
  AN2D1 U46 ( .A1(input_a[4]), .A2(input_b[4]), .Z(carry[5]) );
  CKAN2D0 U47 ( .A1(input_b[26]), .A2(input_a[26]), .Z(carry[27]) );
  IAO21D1 U48 ( .A1(input_b[20]), .A2(input_a[20]), .B(carry[21]), .ZN(sum[20]) );
  IAO21D1 U49 ( .A1(input_b[21]), .A2(input_a[21]), .B(carry[22]), .ZN(sum[21]) );
  IAO21D1 U50 ( .A1(input_b[22]), .A2(input_a[22]), .B(carry[23]), .ZN(sum[22]) );
  IAO21D1 U51 ( .A1(input_b[23]), .A2(input_a[23]), .B(carry[24]), .ZN(sum[23]) );
  IAO21D1 U52 ( .A1(input_b[24]), .A2(input_a[24]), .B(carry[25]), .ZN(sum[24]) );
  XOR2D0 U53 ( .A1(input_a[2]), .A2(input_b[2]), .Z(sum[2]) );
  CKXOR2D1 U54 ( .A1(input_a[3]), .A2(input_b[3]), .Z(sum[3]) );
  CKXOR2D1 U55 ( .A1(input_a[4]), .A2(input_b[4]), .Z(sum[4]) );
endmodule


module recip_scale_fixed_APPROX_LEVEL1_VALUE_WIDTH29 ( clk, value, 
        y_fraction_msb, scaled_value );
  input [28:0] value;
  input [3:0] y_fraction_msb;
  output [28:0] scaled_value;
  input clk;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
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
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333;
  wire   [35:8] product_comb;

  DFQD1 product_stage_reg_36_ ( .D(n26), .CP(clk), .Q(scaled_value[28]) );
  DFQD1 product_stage_reg_35_ ( .D(product_comb[35]), .CP(clk), .Q(
        scaled_value[27]) );
  DFQD1 product_stage_reg_34_ ( .D(product_comb[34]), .CP(clk), .Q(
        scaled_value[26]) );
  DFQD1 product_stage_reg_33_ ( .D(product_comb[33]), .CP(clk), .Q(
        scaled_value[25]) );
  DFQD1 product_stage_reg_32_ ( .D(product_comb[32]), .CP(clk), .Q(
        scaled_value[24]) );
  DFQD1 product_stage_reg_31_ ( .D(product_comb[31]), .CP(clk), .Q(
        scaled_value[23]) );
  DFQD1 product_stage_reg_30_ ( .D(product_comb[30]), .CP(clk), .Q(
        scaled_value[22]) );
  DFQD1 product_stage_reg_29_ ( .D(product_comb[29]), .CP(clk), .Q(
        scaled_value[21]) );
  DFQD1 product_stage_reg_28_ ( .D(product_comb[28]), .CP(clk), .Q(
        scaled_value[20]) );
  DFQD1 product_stage_reg_27_ ( .D(product_comb[27]), .CP(clk), .Q(
        scaled_value[19]) );
  DFQD1 product_stage_reg_26_ ( .D(product_comb[26]), .CP(clk), .Q(
        scaled_value[18]) );
  DFQD1 product_stage_reg_25_ ( .D(product_comb[25]), .CP(clk), .Q(
        scaled_value[17]) );
  DFQD1 product_stage_reg_24_ ( .D(product_comb[24]), .CP(clk), .Q(
        scaled_value[16]) );
  DFQD1 product_stage_reg_23_ ( .D(product_comb[23]), .CP(clk), .Q(
        scaled_value[15]) );
  DFQD1 product_stage_reg_22_ ( .D(product_comb[22]), .CP(clk), .Q(
        scaled_value[14]) );
  DFQD1 product_stage_reg_21_ ( .D(product_comb[21]), .CP(clk), .Q(
        scaled_value[13]) );
  DFQD1 product_stage_reg_20_ ( .D(product_comb[20]), .CP(clk), .Q(
        scaled_value[12]) );
  DFQD1 product_stage_reg_19_ ( .D(product_comb[19]), .CP(clk), .Q(
        scaled_value[11]) );
  DFQD1 product_stage_reg_18_ ( .D(product_comb[18]), .CP(clk), .Q(
        scaled_value[10]) );
  DFQD1 product_stage_reg_17_ ( .D(product_comb[17]), .CP(clk), .Q(
        scaled_value[9]) );
  DFQD1 product_stage_reg_16_ ( .D(product_comb[16]), .CP(clk), .Q(
        scaled_value[8]) );
  DFQD1 product_stage_reg_15_ ( .D(product_comb[15]), .CP(clk), .Q(
        scaled_value[7]) );
  DFQD1 product_stage_reg_14_ ( .D(product_comb[14]), .CP(clk), .Q(
        scaled_value[6]) );
  DFQD1 product_stage_reg_13_ ( .D(product_comb[13]), .CP(clk), .Q(
        scaled_value[5]) );
  DFQD1 product_stage_reg_12_ ( .D(product_comb[12]), .CP(clk), .Q(
        scaled_value[4]) );
  DFQD1 product_stage_reg_11_ ( .D(product_comb[11]), .CP(clk), .Q(
        scaled_value[3]) );
  DFQD1 product_stage_reg_10_ ( .D(product_comb[10]), .CP(clk), .Q(
        scaled_value[2]) );
  DFQD1 product_stage_reg_9_ ( .D(product_comb[9]), .CP(clk), .Q(
        scaled_value[1]) );
  DFQD1 product_stage_reg_8_ ( .D(product_comb[8]), .CP(clk), .Q(
        scaled_value[0]) );
  FA1D0 U3 ( .A(value[2]), .B(value[6]), .CI(value[4]), .CO(n274), .S(n68) );
  CKND2D0 U4 ( .A1(n236), .A2(n235), .ZN(n76) );
  CKND2D0 U5 ( .A1(n160), .A2(n159), .ZN(n78) );
  MUX2D0 U6 ( .I0(n85), .I1(n84), .S(n332), .Z(product_comb[33]) );
  AOI22D1 U7 ( .A1(n316), .A2(n32), .B1(n314), .B2(n313), .ZN(n177) );
  NR2D0 U8 ( .A1(n156), .A2(n155), .ZN(n57) );
  OR2D0 U9 ( .A1(n193), .A2(n192), .Z(n39) );
  ND2D1 U10 ( .A1(n156), .A2(n155), .ZN(n56) );
  CKND2D1 U11 ( .A1(n175), .A2(n174), .ZN(n50) );
  OR2D0 U12 ( .A1(n146), .A2(n145), .Z(n31) );
  ND2D1 U13 ( .A1(n98), .A2(n97), .ZN(n60) );
  NR2D0 U14 ( .A1(n98), .A2(n97), .ZN(n61) );
  NR2D0 U15 ( .A1(n203), .A2(n202), .ZN(n53) );
  OR2D0 U16 ( .A1(n102), .A2(n101), .Z(n36) );
  OR2D0 U17 ( .A1(n127), .A2(n126), .Z(n33) );
  NR2XD0 U18 ( .A1(n318), .A2(n317), .ZN(n73) );
  CKND2D1 U19 ( .A1(n203), .A2(n202), .ZN(n52) );
  INVD0 U20 ( .I(n317), .ZN(n72) );
  INVD0 U21 ( .I(n318), .ZN(n71) );
  NR2D0 U22 ( .A1(n296), .A2(n295), .ZN(n49) );
  OR2D0 U23 ( .A1(n197), .A2(n196), .Z(n38) );
  ND2D1 U24 ( .A1(n232), .A2(n231), .ZN(n54) );
  NR2D0 U25 ( .A1(n207), .A2(n206), .ZN(n75) );
  ND2D1 U26 ( .A1(n207), .A2(n206), .ZN(n74) );
  ND2D1 U27 ( .A1(n120), .A2(n119), .ZN(n80) );
  NR2D0 U28 ( .A1(n136), .A2(n135), .ZN(n59) );
  OR2D0 U29 ( .A1(n140), .A2(n139), .Z(n34) );
  OR2D0 U30 ( .A1(n150), .A2(n149), .Z(n30) );
  OR2D0 U31 ( .A1(n222), .A2(n221), .Z(n29) );
  ND2D1 U32 ( .A1(n136), .A2(n135), .ZN(n58) );
  NR2D0 U33 ( .A1(n232), .A2(n231), .ZN(n55) );
  NR2D0 U34 ( .A1(n236), .A2(n235), .ZN(n77) );
  OR2D0 U35 ( .A1(n226), .A2(n225), .Z(n28) );
  NR2D0 U36 ( .A1(n120), .A2(n119), .ZN(n81) );
  NR2D0 U37 ( .A1(n160), .A2(n159), .ZN(n79) );
  BUFFD0 U38 ( .I(value[8]), .Z(n10) );
  BUFFD0 U39 ( .I(value[9]), .Z(n11) );
  BUFFD0 U40 ( .I(n189), .Z(n218) );
  XNR2D0 U41 ( .A1(n94), .A2(n93), .ZN(n95) );
  OAI21D1 U42 ( .A1(n100), .A2(n61), .B(n60), .ZN(n90) );
  XNR2D0 U43 ( .A1(n104), .A2(n103), .ZN(n105) );
  XNR2D0 U44 ( .A1(n100), .A2(n99), .ZN(n106) );
  XNR2D0 U45 ( .A1(n110), .A2(n109), .ZN(n115) );
  XNR2D0 U46 ( .A1(n122), .A2(n121), .ZN(n124) );
  OAI21D1 U47 ( .A1(n138), .A2(n59), .B(n58), .ZN(n116) );
  XNR2D0 U48 ( .A1(n138), .A2(n137), .ZN(n144) );
  XNR2D0 U49 ( .A1(n142), .A2(n141), .ZN(n143) );
  XNR2D0 U50 ( .A1(n129), .A2(n128), .ZN(n134) );
  OAI21D1 U51 ( .A1(n158), .A2(n57), .B(n56), .ZN(n165) );
  XNR2D0 U52 ( .A1(n162), .A2(n161), .ZN(n163) );
  OAI21D1 U53 ( .A1(n162), .A2(n79), .B(n78), .ZN(n168) );
  OAI21D1 U54 ( .A1(n234), .A2(n55), .B(n54), .ZN(n241) );
  AOI22D1 U55 ( .A1(n228), .A2(n28), .B1(n226), .B2(n225), .ZN(n238) );
  OAI21D1 U56 ( .A1(n209), .A2(n75), .B(n74), .ZN(n215) );
  OAI21D1 U57 ( .A1(n205), .A2(n53), .B(n52), .ZN(n212) );
  OAI21D1 U58 ( .A1(n177), .A2(n51), .B(n50), .ZN(n183) );
  OAI22D1 U59 ( .A1(n320), .A2(n73), .B1(n72), .B2(n71), .ZN(n178) );
  OAI22D1 U60 ( .A1(n298), .A2(n49), .B1(n48), .B2(n47), .ZN(n304) );
  NR2D0 U61 ( .A1(n325), .A2(n326), .ZN(n83) );
  CKND2D1 U62 ( .A1(n325), .A2(n326), .ZN(n82) );
  NR2D0 U63 ( .A1(n175), .A2(n174), .ZN(n51) );
  OR2D0 U64 ( .A1(n314), .A2(n313), .Z(n32) );
  OR2D0 U65 ( .A1(n108), .A2(n107), .Z(n35) );
  OR2D0 U66 ( .A1(n308), .A2(n307), .Z(n37) );
  BUFFD1 U67 ( .I(value[7]), .Z(n9) );
  BUFFD1 U68 ( .I(value[11]), .Z(n13) );
  BUFFD1 U69 ( .I(value[10]), .Z(n12) );
  BUFFD1 U70 ( .I(value[12]), .Z(n14) );
  BUFFD1 U71 ( .I(value[14]), .Z(n16) );
  BUFFD1 U72 ( .I(value[13]), .Z(n15) );
  BUFFD1 U73 ( .I(value[15]), .Z(n17) );
  BUFFD1 U74 ( .I(value[17]), .Z(n19) );
  BUFFD1 U75 ( .I(value[16]), .Z(n18) );
  BUFFD1 U76 ( .I(value[18]), .Z(n20) );
  BUFFD1 U77 ( .I(value[20]), .Z(n22) );
  BUFFD1 U78 ( .I(value[19]), .Z(n21) );
  BUFFD1 U79 ( .I(value[21]), .Z(n23) );
  BUFFD1 U80 ( .I(value[23]), .Z(n25) );
  BUFFD1 U81 ( .I(value[22]), .Z(n24) );
  BUFFD1 U82 ( .I(value[6]), .Z(n8) );
  BUFFD1 U83 ( .I(value[24]), .Z(n1) );
  BUFFD1 U84 ( .I(value[25]), .Z(n2) );
  BUFFD1 U85 ( .I(value[26]), .Z(n3) );
  BUFFD0 U86 ( .I(value[27]), .Z(n4) );
  BUFFD1 U87 ( .I(value[3]), .Z(n5) );
  BUFFD1 U88 ( .I(value[4]), .Z(n6) );
  BUFFD1 U89 ( .I(value[5]), .Z(n7) );
  BUFFD1 U90 ( .I(value[28]), .Z(n26) );
  FA1D0 U91 ( .A(value[1]), .B(value[6]), .CI(n5), .CO(n43), .S(n42) );
  FA1D0 U92 ( .A(n4), .B(n26), .CI(n331), .CO(n333), .S(n89) );
  FA1D0 U93 ( .A(n4), .B(n26), .CI(n87), .CO(n88), .S(n84) );
  OR2D0 U94 ( .A1(n286), .A2(n285), .Z(n27) );
  FA1D0 U95 ( .A(value[1]), .B(value[5]), .CI(value[3]), .CO(n67), .S(n66) );
  FA1D0 U96 ( .A(value[5]), .B(n64), .CI(n41), .CO(n263) );
  AOI22D1 U97 ( .A1(n288), .A2(n27), .B1(n286), .B2(n285), .ZN(n298) );
  AOI22D1 U98 ( .A1(n310), .A2(n37), .B1(n308), .B2(n307), .ZN(n320) );
  AOI22D1 U99 ( .A1(n199), .A2(n38), .B1(n197), .B2(n196), .ZN(n209) );
  OAI21D1 U100 ( .A1(n238), .A2(n77), .B(n76), .ZN(n244) );
  AOI22D1 U101 ( .A1(n129), .A2(n33), .B1(n127), .B2(n126), .ZN(n138) );
  AOI22D1 U102 ( .A1(n110), .A2(n35), .B1(n108), .B2(n107), .ZN(n100) );
  FICIND1 U103 ( .CIN(n272), .B(n273), .A(n274), .CO(n280), .S(n275) );
  FA1D0 U104 ( .A(n291), .B(n290), .CI(n289), .CO(n299), .S(n293) );
  FA1D0 U105 ( .A(n217), .B(n216), .CI(n215), .CO(n228), .S(n219) );
  FA1D0 U106 ( .A(n170), .B(n169), .CI(n168), .CO(n130), .S(n172) );
  FA1D0 U107 ( .A(n91), .B(n102), .CI(n90), .CO(n324), .S(n96) );
  MUX2D0 U108 ( .I0(n330), .I1(n329), .S(n332), .Z(product_comb[32]) );
  FA1D0 U109 ( .A(value[27]), .B(n2), .CI(value[28]), .CO(n328), .S(n325) );
  FA1D0 U110 ( .A(value[26]), .B(n1), .CI(value[28]), .CO(n326), .S(n102) );
  FA1D0 U111 ( .A(value[2]), .B(value[7]), .CI(n6), .CO(n279), .S(n44) );
  NR2D0 U112 ( .A1(n44), .A2(n43), .ZN(n267) );
  NR2D0 U113 ( .A1(n42), .A2(n65), .ZN(n265) );
  NR2D0 U114 ( .A1(n267), .A2(n265), .ZN(n46) );
  HA1D0 U115 ( .A(value[2]), .B(value[0]), .CO(n65), .S(n64) );
  CKND2D0 U116 ( .A1(value[3]), .A2(value[0]), .ZN(n40) );
  FICIND1 U117 ( .CIN(n40), .B(value[4]), .A(value[1]), .CO(n41) );
  CKND2D0 U118 ( .A1(n42), .A2(n65), .ZN(n264) );
  CKND2D0 U119 ( .A1(n44), .A2(n43), .ZN(n268) );
  OAI21D0 U120 ( .A1(n267), .A2(n264), .B(n268), .ZN(n45) );
  AOI21D0 U121 ( .A1(n46), .A2(n263), .B(n45), .ZN(n277) );
  FA1D0 U122 ( .A(value[8]), .B(n5), .CI(n7), .CO(n285), .S(n278) );
  FA1D0 U123 ( .A(value[10]), .B(n7), .CI(n9), .CO(n306), .S(n296) );
  FA1D0 U124 ( .A(value[9]), .B(n6), .CI(n8), .CO(n295), .S(n286) );
  INVD0 U125 ( .I(n295), .ZN(n48) );
  INVD0 U126 ( .I(n296), .ZN(n47) );
  FA1D0 U127 ( .A(value[11]), .B(n8), .CI(n10), .CO(n313), .S(n305) );
  FA1D0 U128 ( .A(value[13]), .B(n10), .CI(value[10]), .CO(n185), .S(n175) );
  FA1D0 U129 ( .A(value[12]), .B(n9), .CI(n11), .CO(n174), .S(n314) );
  FA1D0 U130 ( .A(value[14]), .B(n11), .CI(n13), .CO(n192), .S(n184) );
  AOI22D2 U131 ( .A1(n195), .A2(n39), .B1(n193), .B2(n192), .ZN(n205) );
  FA1D0 U132 ( .A(value[16]), .B(n13), .CI(n15), .CO(n214), .S(n203) );
  FA1D0 U133 ( .A(value[15]), .B(n12), .CI(value[12]), .CO(n202), .S(n193) );
  FA1D0 U134 ( .A(value[17]), .B(n14), .CI(value[14]), .CO(n221), .S(n213) );
  AOI22D2 U135 ( .A1(n224), .A2(n29), .B1(n222), .B2(n221), .ZN(n234) );
  FA1D0 U136 ( .A(value[19]), .B(n16), .CI(value[16]), .CO(n243), .S(n232) );
  FA1D0 U137 ( .A(value[18]), .B(n15), .CI(value[15]), .CO(n231), .S(n222) );
  FA1D0 U138 ( .A(value[20]), .B(n17), .CI(value[17]), .CO(n145), .S(n242) );
  AOI22D2 U139 ( .A1(n148), .A2(n31), .B1(n146), .B2(n145), .ZN(n158) );
  FA1D0 U140 ( .A(value[22]), .B(n19), .CI(value[19]), .CO(n167), .S(n156) );
  FA1D0 U141 ( .A(value[21]), .B(n18), .CI(value[18]), .CO(n155), .S(n146) );
  FA1D0 U142 ( .A(value[23]), .B(n20), .CI(value[20]), .CO(n126), .S(n166) );
  FA1D0 U143 ( .A(value[25]), .B(n22), .CI(value[22]), .CO(n118), .S(n136) );
  FA1D0 U144 ( .A(value[24]), .B(n21), .CI(value[21]), .CO(n135), .S(n127) );
  FA1D0 U145 ( .A(value[26]), .B(n23), .CI(value[23]), .CO(n107), .S(n117) );
  FA1D0 U146 ( .A(value[25]), .B(n25), .CI(value[28]), .CO(n91), .S(n98) );
  FA1D0 U147 ( .A(value[27]), .B(n24), .CI(value[24]), .CO(n97), .S(n108) );
  FA1D0 U148 ( .A(value[23]), .B(n21), .CI(n23), .CO(n132), .S(n169) );
  FA1D0 U149 ( .A(value[13]), .B(n11), .CI(value[11]), .CO(n188), .S(n179) );
  FA1D0 U150 ( .A(value[9]), .B(n7), .CI(value[7]), .CO(n301), .S(n290) );
  FA1D0 U151 ( .A(value[8]), .B(n6), .CI(value[6]), .CO(n291), .S(n281) );
  FA1D0 U152 ( .A(value[7]), .B(n5), .CI(value[5]), .CO(n282), .S(n273) );
  NR2D0 U153 ( .A1(n68), .A2(n67), .ZN(n256) );
  NR2D0 U154 ( .A1(n66), .A2(n65), .ZN(n254) );
  NR2D0 U155 ( .A1(n256), .A2(n254), .ZN(n70) );
  CKND2D0 U156 ( .A1(value[2]), .A2(value[0]), .ZN(n62) );
  FICIND1 U157 ( .CIN(n62), .B(value[3]), .A(value[1]), .CO(n63) );
  FA1D0 U158 ( .A(value[4]), .B(n64), .CI(n63), .CO(n252) );
  CKND2D0 U159 ( .A1(n66), .A2(n65), .ZN(n253) );
  CKND2D0 U160 ( .A1(n68), .A2(n67), .ZN(n257) );
  OAI21D1 U161 ( .A1(n256), .A2(n253), .B(n257), .ZN(n69) );
  AOI21D1 U162 ( .A1(n70), .A2(n252), .B(n69), .ZN(n272) );
  FA1D0 U163 ( .A(value[10]), .B(n8), .CI(value[8]), .CO(n307), .S(n300) );
  FA1D0 U164 ( .A(value[12]), .B(n10), .CI(n12), .CO(n180), .S(n318) );
  FA1D0 U165 ( .A(value[11]), .B(n9), .CI(value[9]), .CO(n317), .S(n308) );
  FA1D0 U166 ( .A(value[14]), .B(n12), .CI(n14), .CO(n196), .S(n187) );
  FA1D0 U167 ( .A(value[16]), .B(n14), .CI(n16), .CO(n217), .S(n207) );
  FA1D0 U168 ( .A(value[15]), .B(n13), .CI(value[13]), .CO(n206), .S(n197) );
  FA1D0 U169 ( .A(value[17]), .B(n15), .CI(n17), .CO(n225), .S(n216) );
  FA1D0 U170 ( .A(value[19]), .B(n17), .CI(n19), .CO(n246), .S(n236) );
  FA1D0 U171 ( .A(value[18]), .B(n16), .CI(n18), .CO(n235), .S(n226) );
  FA1D0 U172 ( .A(value[20]), .B(n18), .CI(n20), .CO(n149), .S(n245) );
  AOI22D2 U173 ( .A1(n152), .A2(n30), .B1(n150), .B2(n149), .ZN(n162) );
  FA1D0 U174 ( .A(value[22]), .B(n20), .CI(n22), .CO(n170), .S(n160) );
  FA1D0 U175 ( .A(value[21]), .B(n19), .CI(n21), .CO(n159), .S(n150) );
  FA1D0 U176 ( .A(value[24]), .B(n22), .CI(n24), .CO(n139), .S(n131) );
  AOI22D2 U177 ( .A1(n142), .A2(n34), .B1(n140), .B2(n139), .ZN(n122) );
  FA1D0 U178 ( .A(value[26]), .B(n24), .CI(n1), .CO(n113), .S(n120) );
  FA1D0 U179 ( .A(value[25]), .B(n23), .CI(n25), .CO(n119), .S(n140) );
  OAI21D2 U180 ( .A1(n122), .A2(n81), .B(n80), .ZN(n111) );
  FA1D0 U181 ( .A(value[27]), .B(n25), .CI(n2), .CO(n101), .S(n112) );
  AOI22D2 U182 ( .A1(n104), .A2(n36), .B1(n102), .B2(n101), .ZN(n94) );
  OAI21D2 U183 ( .A1(n94), .A2(n83), .B(n82), .ZN(n327) );
  BUFFD1 U184 ( .I(y_fraction_msb[3]), .Z(n332) );
  FA1D1 U185 ( .A(n3), .B(n328), .CI(n86), .CO(n331), .S(n85) );
  MUX2D0 U186 ( .I0(n89), .I1(n88), .S(n332), .Z(product_comb[34]) );
  INVD0 U187 ( .I(n326), .ZN(n92) );
  XNR2D0 U188 ( .A1(n92), .A2(n325), .ZN(n93) );
  BUFFD1 U189 ( .I(y_fraction_msb[3]), .Z(n189) );
  BUFFD1 U190 ( .I(n189), .Z(n123) );
  MUX2D0 U191 ( .I0(n96), .I1(n95), .S(n123), .Z(product_comb[31]) );
  XOR2D0 U192 ( .A1(n98), .A2(n97), .Z(n99) );
  XNR2D0 U193 ( .A1(n102), .A2(n101), .ZN(n103) );
  MUX2D0 U194 ( .I0(n106), .I1(n105), .S(n123), .Z(product_comb[30]) );
  XNR2D0 U195 ( .A1(n108), .A2(n107), .ZN(n109) );
  FA1D1 U196 ( .A(n113), .B(n112), .CI(n111), .CO(n104), .S(n114) );
  MUX2D0 U197 ( .I0(n115), .I1(n114), .S(n123), .Z(product_comb[29]) );
  FA1D1 U198 ( .A(n118), .B(n117), .CI(n116), .CO(n110), .S(n125) );
  XOR2D0 U199 ( .A1(n120), .A2(n119), .Z(n121) );
  MUX2D0 U200 ( .I0(n125), .I1(n124), .S(n123), .Z(product_comb[28]) );
  XNR2D0 U201 ( .A1(n127), .A2(n126), .ZN(n128) );
  FA1D1 U202 ( .A(n132), .B(n131), .CI(n130), .CO(n142), .S(n133) );
  BUFFD1 U203 ( .I(n189), .Z(n171) );
  MUX2D0 U204 ( .I0(n134), .I1(n133), .S(n171), .Z(product_comb[26]) );
  XOR2D0 U205 ( .A1(n136), .A2(n135), .Z(n137) );
  XNR2D0 U206 ( .A1(n140), .A2(n139), .ZN(n141) );
  MUX2D0 U207 ( .I0(n144), .I1(n143), .S(n171), .Z(product_comb[27]) );
  XNR2D0 U208 ( .A1(n146), .A2(n145), .ZN(n147) );
  XNR2D0 U209 ( .A1(n148), .A2(n147), .ZN(n154) );
  XNR2D0 U210 ( .A1(n150), .A2(n149), .ZN(n151) );
  XNR2D1 U211 ( .A1(n152), .A2(n151), .ZN(n153) );
  BUFFD1 U212 ( .I(n189), .Z(n247) );
  MUX2D0 U213 ( .I0(n154), .I1(n153), .S(n247), .Z(product_comb[23]) );
  XOR2D0 U214 ( .A1(n156), .A2(n155), .Z(n157) );
  XNR2D0 U215 ( .A1(n158), .A2(n157), .ZN(n164) );
  XOR2D0 U216 ( .A1(n160), .A2(n159), .Z(n161) );
  MUX2D0 U217 ( .I0(n164), .I1(n163), .S(n171), .Z(product_comb[24]) );
  FA1D1 U218 ( .A(n167), .B(n166), .CI(n165), .CO(n129), .S(n173) );
  MUX2D0 U219 ( .I0(n173), .I1(n172), .S(n171), .Z(product_comb[25]) );
  XOR2D0 U220 ( .A1(n175), .A2(n174), .Z(n176) );
  XNR2D0 U221 ( .A1(n177), .A2(n176), .ZN(n182) );
  FA1D1 U222 ( .A(n180), .B(n179), .CI(n178), .CO(n186), .S(n181) );
  BUFFD0 U223 ( .I(y_fraction_msb[3]), .Z(n321) );
  MUX2D0 U224 ( .I0(n182), .I1(n181), .S(n321), .Z(product_comb[15]) );
  FA1D1 U225 ( .A(n185), .B(n184), .CI(n183), .CO(n195), .S(n191) );
  FA1D1 U226 ( .A(n188), .B(n187), .CI(n186), .CO(n199), .S(n190) );
  MUX2D0 U227 ( .I0(n191), .I1(n190), .S(n218), .Z(product_comb[16]) );
  XNR2D0 U228 ( .A1(n193), .A2(n192), .ZN(n194) );
  XNR2D0 U229 ( .A1(n195), .A2(n194), .ZN(n201) );
  XNR2D0 U230 ( .A1(n197), .A2(n196), .ZN(n198) );
  XNR2D0 U231 ( .A1(n199), .A2(n198), .ZN(n200) );
  MUX2D0 U232 ( .I0(n201), .I1(n200), .S(n218), .Z(product_comb[17]) );
  XOR2D0 U233 ( .A1(n203), .A2(n202), .Z(n204) );
  XNR2D0 U234 ( .A1(n205), .A2(n204), .ZN(n211) );
  XOR2D0 U235 ( .A1(n207), .A2(n206), .Z(n208) );
  XNR2D0 U236 ( .A1(n209), .A2(n208), .ZN(n210) );
  MUX2D0 U237 ( .I0(n211), .I1(n210), .S(n218), .Z(product_comb[18]) );
  FA1D1 U238 ( .A(n214), .B(n213), .CI(n212), .CO(n224), .S(n220) );
  MUX2D0 U239 ( .I0(n220), .I1(n219), .S(n218), .Z(product_comb[19]) );
  XNR2D0 U240 ( .A1(n222), .A2(n221), .ZN(n223) );
  XNR2D0 U241 ( .A1(n224), .A2(n223), .ZN(n230) );
  XNR2D0 U242 ( .A1(n226), .A2(n225), .ZN(n227) );
  XNR2D0 U243 ( .A1(n228), .A2(n227), .ZN(n229) );
  MUX2D0 U244 ( .I0(n230), .I1(n229), .S(n247), .Z(product_comb[20]) );
  XOR2D0 U245 ( .A1(n232), .A2(n231), .Z(n233) );
  XNR2D0 U246 ( .A1(n234), .A2(n233), .ZN(n240) );
  XOR2D0 U247 ( .A1(n236), .A2(n235), .Z(n237) );
  XNR2D0 U248 ( .A1(n238), .A2(n237), .ZN(n239) );
  MUX2D0 U249 ( .I0(n240), .I1(n239), .S(n247), .Z(product_comb[21]) );
  FA1D1 U250 ( .A(n243), .B(n242), .CI(n241), .CO(n148), .S(n249) );
  FA1D1 U251 ( .A(n246), .B(n245), .CI(n244), .CO(n152), .S(n248) );
  MUX2D0 U252 ( .I0(n249), .I1(n248), .S(n247), .Z(product_comb[22]) );
  INVD0 U253 ( .I(n265), .ZN(n250) );
  CKND2D0 U254 ( .A1(n250), .A2(n264), .ZN(n251) );
  XNR2D0 U255 ( .A1(n251), .A2(n263), .ZN(n262) );
  INVD0 U256 ( .I(n252), .ZN(n255) );
  OAI21D0 U257 ( .A1(n255), .A2(n254), .B(n253), .ZN(n260) );
  INVD0 U258 ( .I(n256), .ZN(n258) );
  CKND2D0 U259 ( .A1(n258), .A2(n257), .ZN(n259) );
  XNR2D0 U260 ( .A1(n260), .A2(n259), .ZN(n261) );
  BUFFD0 U261 ( .I(y_fraction_msb[3]), .Z(n292) );
  MUX2D0 U262 ( .I0(n262), .I1(n261), .S(n292), .Z(product_comb[8]) );
  INVD0 U263 ( .I(n263), .ZN(n266) );
  OAI21D0 U264 ( .A1(n266), .A2(n265), .B(n264), .ZN(n271) );
  INVD0 U265 ( .I(n267), .ZN(n269) );
  CKND2D0 U266 ( .A1(n269), .A2(n268), .ZN(n270) );
  XNR2D0 U267 ( .A1(n271), .A2(n270), .ZN(n276) );
  MUX2D0 U268 ( .I0(n276), .I1(n275), .S(n292), .Z(product_comb[9]) );
  FICIND1 U269 ( .CIN(n277), .B(n278), .A(n279), .CO(n288), .S(n284) );
  FA1D1 U270 ( .A(n282), .B(n281), .CI(n280), .CO(n289), .S(n283) );
  MUX2D0 U271 ( .I0(n284), .I1(n283), .S(n292), .Z(product_comb[10]) );
  XNR2D0 U272 ( .A1(n286), .A2(n285), .ZN(n287) );
  XNR2D0 U273 ( .A1(n288), .A2(n287), .ZN(n294) );
  MUX2D0 U274 ( .I0(n294), .I1(n293), .S(n292), .Z(product_comb[11]) );
  XOR2D0 U275 ( .A1(n296), .A2(n295), .Z(n297) );
  XNR2D0 U276 ( .A1(n298), .A2(n297), .ZN(n303) );
  FA1D1 U277 ( .A(n301), .B(n300), .CI(n299), .CO(n310), .S(n302) );
  MUX2D0 U278 ( .I0(n303), .I1(n302), .S(n321), .Z(product_comb[12]) );
  FA1D1 U279 ( .A(n306), .B(n305), .CI(n304), .CO(n316), .S(n312) );
  XNR2D0 U280 ( .A1(n308), .A2(n307), .ZN(n309) );
  XNR2D0 U281 ( .A1(n310), .A2(n309), .ZN(n311) );
  MUX2D0 U282 ( .I0(n312), .I1(n311), .S(n321), .Z(product_comb[13]) );
  XNR2D0 U283 ( .A1(n314), .A2(n313), .ZN(n315) );
  XNR2D0 U284 ( .A1(n316), .A2(n315), .ZN(n323) );
  XNR2D0 U285 ( .A1(n318), .A2(n317), .ZN(n319) );
  XOR2D0 U286 ( .A1(n320), .A2(n319), .Z(n322) );
  MUX2D0 U287 ( .I0(n323), .I1(n322), .S(n321), .Z(product_comb[14]) );
  FA1D1 U288 ( .A(n326), .B(n325), .CI(n324), .CO(n86), .S(n330) );
  FA1D1 U289 ( .A(n3), .B(n328), .CI(n327), .CO(n87), .S(n329) );
  MUX2D0 U290 ( .I0(n333), .I1(n26), .S(n332), .Z(product_comb[35]) );
endmodule


module oadm_core_fixed_APPROX_LEVEL1 ( clk, x_mantissa, y_mantissa, 
        divide_mode, mantissa_value );
  input [23:0] x_mantissa;
  input [23:0] y_mantissa;
  output [28:0] mantissa_value;
  input clk, divide_mode;
  wire   y_index_s1_3_, divide_s1, y_index_s2_3_, divide_s2, y_index_s3_3_,
         divide_s3, y_index_s4_3_, divide_s4, divide_s5, N427, N428, N429,
         N430, N431, N432, N433, N434, N435, N436, N437, N438, N439, N440,
         N441, N442, N443, N444, N445, N446, N447, N448, N449, N450, N451,
         N452, N453, N454, N455, DP_OP_20J1_131_4019_n134, n6, n7, n8, n9, n10,
         n11, n12, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206,
         n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217,
         n218, n219, n220, n221, n222, n223, n224, n225, n226, n227, n228,
         n229, n230, n231, n232, n233, n234, n235, n236, n237, n238, n239,
         n240, n241, n242, n243, n244, n245, n246, n247, n248, n249, n250,
         n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, n261,
         n262, n263, n264, n265, n266, n267, n268, n269, n270, n271, n272,
         n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283,
         n284, n285, n286, n287, n288, n289, n290, n291, n292, n293, n294,
         n295, n296, n297, n298, n299, n300, n301, n302, n303, n304, n305,
         n306, n307, n308, n309, n310, n311, n312, n313, n314, n315, n316,
         n317, n318, n319, n320, n321, n322, n323, n324, n325, n326, n327,
         n328, n329, n330, n331, n332, n333, n334, n335, n336, n337, n338,
         n339, n340, n341, n342, n343, n344, n345, n346, n347, n348, n349,
         n350, n351, n352, n353, n354, n355, n356, n357, n358, n359, n360,
         n361, n362, n363, n364, n365, n366, n367, n368, n369, n370, n371,
         n372, n373, n374, n375, n376, n377, n378, n379, n380, n381, n382,
         n383, n384, n385, n386, n387, n388, n389, n390, n391, n392, n393,
         n394, n395, n396, n397, n398, n399, n400, n401, n402, n403, n404,
         n405, n406, n407, n408, n409, n410, n411, n412, n413, n414, n415,
         n416, n417, n418, n419, n420, n421, n422, n423, n424, n425, n426,
         n4270, n4280, n4290, n4300, n4310, n4320, n4330, n4340, n4350, n4360,
         n4370, n4380, n4390, n4400, n4410, n4420, n4430, n4440, n4450, n4460,
         n4470, n4480, n4490, n4500, n4510, n4520, n4530, n4540, n4550, n456,
         n457, n458, n459, n460, n461, n462, n463, n464, n465, n466, n467,
         n468, n469, n470, n471, n472, n473, n474, n475, n476, n477, n478,
         n479, n480, n481, n482, n483, n484, n485, n486, n487, n488, n489,
         n490, n491, n492, n493, n494, n495, n496, n497, n498, n499, n500,
         n501, n502, n503, n504, n505, n506, n507, n508, n509, n510, n511,
         n512, n513, n514, n515, n516, n517, n518, n519, n520, n521, n522,
         n523, n524, n525, n526, n527, n528, n529, n530, n531, n532, n533,
         n534, n535, n536, n537, n538, n539, n540, n541, n542, n543, n544,
         n545, n546, n547, n548, n549, n550, n551, n552, n553, n554, n555,
         n556, n557, n558, n559, n560, n561, n562, n563, n564, n565, n566,
         n567, n568, n569, n570, n571, n572, n573, n574, n575, n576, n577,
         n578, n579, n580, n581, n582, n583, n584, n585, n586, n587, n588,
         n589, n590, n591, n592, n593, n594, n595, n596, n597, n598, n599,
         n600, n601, n602, n603, n604, n605, n606, n607, n608, n609, n610,
         n611, n612, n613, n614, n615, n616, n617, n618, n619, n620, n621,
         n622, n623, n624, n625, n626, n627, n628, n629, n630, n631, n632,
         n633, n634, n635, n636, n637, n638, n639, n640, n641, n642, n643,
         n644, n645, n646, n647, n648, n649, n650, n651, n652, n653, n654,
         n655, n656, n657, n658, n659, n660, n661, n662, n663, n664, n665,
         n666, n667, n668, n669, n670, n671, n672, n673, n674, n675, n676,
         n677, n678, n679, n680, n681, n682, n683, n684, n685, n686, n687,
         n688, n689, n690, n691, n692, n693, n694, n695, n696, n697, n698,
         n699, n700, n701, n702, n703, n704, n705, n706, n707, n708, n709,
         n710, n711, n712, n713, n714, n715, n716, n717, n718, n719, n720,
         n721, n722, n723, n724, n725, n726, n727, n728, n729, n730, n731,
         n732, n733, n734, n735, n736, n737, n738, n739, n740, n741, n742,
         n743, n744, n745, n746, n747, n748, n749, n750, n751, n752, n753,
         n754, n755, n756, n757, n758, n759, n760, n761, n762, n763, n764,
         n765, n766, n767, n768, n769, n770, n771, n772, n773, n774, n775,
         n776, n777, n778, n779, n780, n781, n782, n783, n784, n785, n786,
         n787, n788, n789, n790, n791, n792, n793, n794, n795, n796, n797,
         n798, n799, n800, n801, n802, n803, n804, n805, n806, n807, n808,
         n809, n810, n811, n812, n813, n814, n815, n816, n817, n818, n819,
         n820, n821, n822, n823, n824, n825, n826, n827, n828, n829, n830,
         n831, n832, n833, n834, n835, n836, n837, n838, n839, n840, n841,
         n842, n843, n844, n845, n846, n847, n848, n849, n850, n851, n852,
         n853, n854, n855, n856, n857, n858, n859, n860, n861, n862, n863,
         n864, n865, n866, n867, n868, n869, n870, n871, n872, n873, n874,
         n875, n876, n877, n878, n879, n880, n881, n882, n883, n884, n885,
         n886, n887, n888, n889, n890, n891, n892, n893, n894, n895, n896,
         n897, n898, n899, n900, n901, n902, n903, n904, n905, n906, n907,
         n908, n909, n910, n911, n912, n913, n914, n915, n916, n917, n918,
         n919, n920, n921, n922, n923, n924, n925, n926, n927, n928, n929,
         n930, n931, n932, n933, n934, n935, n936, n937, n938, n939, n940,
         n941, n942, n943, n944, n945, n946, n947, n948, n949, n950, n951,
         n952, n953, n954, n955, n956, n957, n958, n959, n960, n961, n962,
         n963, n964, n965, n966, n967, n968, n969, n970, n971, n972, n973,
         n974, n975, n976, n977, n978, n979, n980, n981, n982, n983, n984,
         n985, n986, n987, n988, n989, n990, n991, n992, n993, n994, n995,
         n996, n997, n998, n999, n1000, n1001, n1002, n1003, n1004, n1005,
         n1006, n1007, n1008, n1009, n1010, n1011, n1012, n1013, n1014, n1015,
         n1016, n1017, n1018, n1019, n1020, n1021, n1022, n1023, n1024, n1025,
         n1026, n1027, n1028, n1029, n1030, n1031, n1032, n1033, n1034, n1035,
         n1036, n1037, n1038, n1039, n1040, n1041, n1042, n1043, n1044, n1045,
         n1046, n1047, n1048, n1049, n1050, n1051, n1052, n1053, n1054, n1055,
         n1056, n1057, n1058, n1059, n1060, n1061, n1062, n1063, n1064, n1065,
         n1066, n1067, n1068, n1069, n1070, n1071, n1072, n1073, n1074, n1075,
         n1076, n1077, n1078, n1079, n1080, n1081, n1082, n1083, n1084, n1085,
         n1086, n1087, n1088, n1089, n1090, n1091, n1092, n1093, n1094, n1095,
         n1096, n1097, n1098, n1099, n1100, n1101, n1102, n1103, n1104, n1105,
         n1106, n1107, n1108, n1109, n1110, n1111, n1112, n1113, n1114, n1115,
         n1116, n1117, n1118, n1119, n1120, n1121, n1122, n1123, n1124, n1125,
         n1126, n1127, n1128, n1129, n1130, n1131, n1132, n1133, n1134, n1135,
         n1136, n1137, n1138, n1139, n1140, n1141, n1142, n1143, n1144, n1145,
         n1146, n1147, n1148, n1149, n1150, n1151, n1152, n1153, n1154, n1155,
         n1156, n1157, n1158, n1159, n1160, n1161, n1162, n1163, n1164, n1165,
         n1166, n1167, n1168, n1169, n1170, n1171, n1172, n1173, n1174, n1175,
         n1176, n1177, n1178, n1179, n1180, n1181, n1182, n1183, n1184, n1185,
         n1186, n1187, n1188, n1189, n1190, n1191, n1192, n1193, n1194, n1195,
         n1196, n1197, n1198, n1199, n1200, n1201, n1202, n1203, n1204, n1205,
         n1206, n1207, n1208, n1209, n1210, n1211, n1212, n1213, n1214, n1215,
         n1216, n1217, n1218, n1219, n1220, n1221, n1222, n1223, n1224, n1225,
         n1226, n1227, n1228, n1229, n1230, n1231, n1232, n1233, n1234, n1235,
         n1236, n1237, n1238, n1239, n1240, n1241, n1242, n1243, n1244, n1245,
         n1246, n1247, n1248, n1249, n1250, n1251, n1252, n1253, n1254, n1255,
         n1256, n1257, n1258, n1259, n1260, n1261, n1262, n1263, n1264, n1265,
         n1266, n1267, n1268, n1269, n1270, n1271, n1272, n1273, n1274, n1275,
         n1276, n1277, n1278, n1279, n1280, n1281, n1282, n1283, n1284, n1285,
         n1286, n1287, n1288, n1289, n1290, n1291, n1292, n1293, n1294, n1295,
         n1296, n1297, n1298, n1299, n1300, n1301, n1302, n1303, n1304, n1305,
         n1306, n1307, n1308, n1309, n1310, n1311, n1312, n1313, n1314, n1315,
         n1316, n1317, n1318, n1319, n1320, n1321, n1322, n1323, n1324, n1325,
         n1326, n1327, n1328, n1329, n1330, n1331, n1332, n1333, n1334, n1335,
         n1336, n1337, n1338, n1339, n1340, n1341, n1342, n1343, n1344, n1345,
         n1346, n1347, n1348, n1349, n1350, n1351, n1352, n1353, n1354, n1355,
         n1356, n1357, n1358, n1359, n1360, n1361, n1362, n1363, n1364, n1365,
         n1366, n1367, n1368, n1369, n1370, n1371, n1372, n1373, n1374, n1375,
         n1376, n1377, n1378, n1379, n1380, n1381, n1382, n1383, n1384, n1385,
         n1386, n1387, n1388, n1389, n1390, n1391, n1392, n1393, n1394, n1395,
         n1396, n1397, n1398, n1399, n1400, n1401, n1402, n1403, n1404, n1405,
         n1406, n1407, n1408, n1409, n1410, n1411, n1412, n1413, n1414, n1415,
         n1416, n1417, n1418, n1419, n1420, n1421, n1422, n1423, n1424, n1425,
         n1426, n1427, n1428, n1429, n1430, n1431, n1432, n1433, n1434, n1435,
         n1436, n1437, n1438, n1439, n1440, n1441, n1442, n1443;
  wire   [24:0] base_c1;
  wire   [28:0] d1_c1;
  wire   [24:0] base_s1;
  wire   [28:0] d1_s1;
  wire   [24:0] base_s2;
  wire   [28:0] d1_s2;
  wire   [24:0] base_s3;
  wire   [28:0] d1_s3;
  wire   [28:0] sum0;
  wire   [25:1] carry0;
  wire   [28:0] sum1;
  wire   [26:2] carry1;
  wire   [28:3] sum2;
  wire   [27:3] carry2;
  wire   [28:0] shared_comb;
  wire   [28:0] shared_s4;
  wire   [28:0] divided_s5;
  wire   [28:0] shared_s5;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11;

  csa3_WIDTH29_2 csa0 ( .input_a({1'b0, 1'b0, 1'b0, 1'b0, base_s3}), .input_b(
        d1_s3), .input_c({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .sum(sum0), .carry({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, carry0, SYNOPSYS_UNCONNECTED__3}) );
  csa3_WIDTH29_1 csa1 ( .input_a(sum0), .input_b({1'b0, 1'b0, 1'b0, carry0, 
        1'b0}), .input_c({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .sum(sum1), .carry({
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, carry1, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7}) );
  csa3_WIDTH29_0 csa2 ( .input_a(sum1), .input_b({1'b0, 1'b0, carry1, 1'b0, 
        1'b0}), .input_c({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .sum({sum2, 
        shared_comb[2:0]}), .carry({SYNOPSYS_UNCONNECTED__8, carry2, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11}) );
  recip_scale_fixed_APPROX_LEVEL1_VALUE_WIDTH29 division_scale ( .clk(clk), 
        .value({n120, n65, n63, n61, n59, n107, n105, n103, n101, n99, n97, 
        n95, n93, n91, n89, n87, n85, n83, n81, n79, n77, n71, n118, n117, n75, 
        n73, n9, n6, shared_s4[0]}), .y_fraction_msb({y_index_s4_3_, 1'b0, 
        1'b0, 1'b0}), .scaled_value(divided_s5) );
  DFQD1 base_s1_reg_24_ ( .D(base_c1[24]), .CP(clk), .Q(base_s1[24]) );
  DFQD1 base_s1_reg_23_ ( .D(base_c1[23]), .CP(clk), .Q(base_s1[23]) );
  DFQD1 base_s1_reg_22_ ( .D(base_c1[22]), .CP(clk), .Q(base_s1[22]) );
  DFQD1 base_s1_reg_21_ ( .D(base_c1[21]), .CP(clk), .Q(base_s1[21]) );
  DFQD1 base_s1_reg_20_ ( .D(base_c1[20]), .CP(clk), .Q(base_s1[20]) );
  DFQD1 base_s1_reg_19_ ( .D(base_c1[19]), .CP(clk), .Q(base_s1[19]) );
  DFQD1 base_s1_reg_18_ ( .D(base_c1[18]), .CP(clk), .Q(base_s1[18]) );
  DFQD1 base_s1_reg_17_ ( .D(base_c1[17]), .CP(clk), .Q(base_s1[17]) );
  DFQD1 base_s1_reg_16_ ( .D(base_c1[16]), .CP(clk), .Q(base_s1[16]) );
  DFQD1 base_s1_reg_15_ ( .D(base_c1[15]), .CP(clk), .Q(base_s1[15]) );
  DFQD1 base_s1_reg_14_ ( .D(base_c1[14]), .CP(clk), .Q(base_s1[14]) );
  DFQD1 base_s1_reg_13_ ( .D(base_c1[13]), .CP(clk), .Q(base_s1[13]) );
  DFQD1 base_s1_reg_12_ ( .D(base_c1[12]), .CP(clk), .Q(base_s1[12]) );
  DFQD1 base_s1_reg_11_ ( .D(base_c1[11]), .CP(clk), .Q(base_s1[11]) );
  DFQD1 base_s1_reg_10_ ( .D(base_c1[10]), .CP(clk), .Q(base_s1[10]) );
  DFQD1 base_s1_reg_9_ ( .D(base_c1[9]), .CP(clk), .Q(base_s1[9]) );
  DFQD1 base_s1_reg_8_ ( .D(base_c1[8]), .CP(clk), .Q(base_s1[8]) );
  DFQD1 base_s1_reg_7_ ( .D(base_c1[7]), .CP(clk), .Q(base_s1[7]) );
  DFQD1 base_s1_reg_6_ ( .D(base_c1[6]), .CP(clk), .Q(base_s1[6]) );
  DFQD1 base_s1_reg_5_ ( .D(base_c1[5]), .CP(clk), .Q(base_s1[5]) );
  DFQD1 base_s1_reg_4_ ( .D(base_c1[4]), .CP(clk), .Q(base_s1[4]) );
  DFQD1 base_s1_reg_3_ ( .D(base_c1[3]), .CP(clk), .Q(base_s1[3]) );
  DFQD1 base_s1_reg_2_ ( .D(base_c1[2]), .CP(clk), .Q(base_s1[2]) );
  DFQD1 base_s1_reg_1_ ( .D(base_c1[1]), .CP(clk), .Q(base_s1[1]) );
  DFQD1 base_s1_reg_0_ ( .D(base_c1[0]), .CP(clk), .Q(base_s1[0]) );
  DFQD1 d1_s1_reg_28_ ( .D(d1_c1[28]), .CP(clk), .Q(d1_s1[28]) );
  DFQD1 d1_s1_reg_27_ ( .D(d1_c1[27]), .CP(clk), .Q(d1_s1[27]) );
  DFQD1 d1_s1_reg_26_ ( .D(d1_c1[26]), .CP(clk), .Q(d1_s1[26]) );
  DFQD1 d1_s1_reg_25_ ( .D(d1_c1[25]), .CP(clk), .Q(d1_s1[25]) );
  DFQD1 d1_s1_reg_24_ ( .D(d1_c1[24]), .CP(clk), .Q(d1_s1[24]) );
  DFQD1 d1_s1_reg_23_ ( .D(d1_c1[23]), .CP(clk), .Q(d1_s1[23]) );
  DFQD1 d1_s1_reg_22_ ( .D(d1_c1[22]), .CP(clk), .Q(d1_s1[22]) );
  DFQD1 d1_s1_reg_21_ ( .D(d1_c1[21]), .CP(clk), .Q(d1_s1[21]) );
  DFQD1 d1_s1_reg_20_ ( .D(d1_c1[20]), .CP(clk), .Q(d1_s1[20]) );
  DFQD1 d1_s1_reg_19_ ( .D(d1_c1[19]), .CP(clk), .Q(d1_s1[19]) );
  DFQD1 d1_s1_reg_18_ ( .D(d1_c1[18]), .CP(clk), .Q(d1_s1[18]) );
  DFQD1 d1_s1_reg_17_ ( .D(d1_c1[17]), .CP(clk), .Q(d1_s1[17]) );
  DFQD1 d1_s1_reg_16_ ( .D(d1_c1[16]), .CP(clk), .Q(d1_s1[16]) );
  DFQD1 d1_s1_reg_15_ ( .D(d1_c1[15]), .CP(clk), .Q(d1_s1[15]) );
  DFQD1 d1_s1_reg_14_ ( .D(d1_c1[14]), .CP(clk), .Q(d1_s1[14]) );
  DFQD1 d1_s1_reg_13_ ( .D(d1_c1[13]), .CP(clk), .Q(d1_s1[13]) );
  DFQD1 d1_s1_reg_12_ ( .D(d1_c1[12]), .CP(clk), .Q(d1_s1[12]) );
  DFQD1 d1_s1_reg_11_ ( .D(d1_c1[11]), .CP(clk), .Q(d1_s1[11]) );
  DFQD1 d1_s1_reg_10_ ( .D(d1_c1[10]), .CP(clk), .Q(d1_s1[10]) );
  DFQD1 d1_s1_reg_9_ ( .D(d1_c1[9]), .CP(clk), .Q(d1_s1[9]) );
  DFQD1 d1_s1_reg_8_ ( .D(d1_c1[8]), .CP(clk), .Q(d1_s1[8]) );
  DFQD1 d1_s1_reg_7_ ( .D(d1_c1[7]), .CP(clk), .Q(d1_s1[7]) );
  DFQD1 d1_s1_reg_6_ ( .D(d1_c1[6]), .CP(clk), .Q(d1_s1[6]) );
  DFQD1 d1_s1_reg_5_ ( .D(d1_c1[5]), .CP(clk), .Q(d1_s1[5]) );
  DFQD1 d1_s1_reg_4_ ( .D(d1_c1[4]), .CP(clk), .Q(d1_s1[4]) );
  DFQD1 d1_s1_reg_3_ ( .D(d1_c1[3]), .CP(clk), .Q(d1_s1[3]) );
  DFQD1 d1_s1_reg_2_ ( .D(d1_c1[2]), .CP(clk), .Q(d1_s1[2]) );
  DFQD1 d1_s1_reg_1_ ( .D(d1_c1[1]), .CP(clk), .Q(d1_s1[1]) );
  DFQD1 d1_s1_reg_0_ ( .D(d1_c1[0]), .CP(clk), .Q(d1_s1[0]) );
  DFQD1 y_index_s1_reg_3_ ( .D(n128), .CP(clk), .Q(y_index_s1_3_) );
  DFQD1 divide_s1_reg ( .D(n1443), .CP(clk), .Q(divide_s1) );
  DFQD1 base_s2_reg_24_ ( .D(base_s1[24]), .CP(clk), .Q(base_s2[24]) );
  DFQD1 base_s2_reg_23_ ( .D(base_s1[23]), .CP(clk), .Q(base_s2[23]) );
  DFQD1 base_s2_reg_22_ ( .D(base_s1[22]), .CP(clk), .Q(base_s2[22]) );
  DFQD1 base_s2_reg_21_ ( .D(base_s1[21]), .CP(clk), .Q(base_s2[21]) );
  DFQD1 base_s2_reg_20_ ( .D(base_s1[20]), .CP(clk), .Q(base_s2[20]) );
  DFQD1 base_s2_reg_19_ ( .D(base_s1[19]), .CP(clk), .Q(base_s2[19]) );
  DFQD1 base_s2_reg_18_ ( .D(base_s1[18]), .CP(clk), .Q(base_s2[18]) );
  DFQD1 base_s2_reg_17_ ( .D(base_s1[17]), .CP(clk), .Q(base_s2[17]) );
  DFQD1 base_s2_reg_16_ ( .D(base_s1[16]), .CP(clk), .Q(base_s2[16]) );
  DFQD1 base_s2_reg_15_ ( .D(base_s1[15]), .CP(clk), .Q(base_s2[15]) );
  DFQD1 base_s2_reg_14_ ( .D(base_s1[14]), .CP(clk), .Q(base_s2[14]) );
  DFQD1 base_s2_reg_13_ ( .D(base_s1[13]), .CP(clk), .Q(base_s2[13]) );
  DFQD1 base_s2_reg_12_ ( .D(base_s1[12]), .CP(clk), .Q(base_s2[12]) );
  DFQD1 base_s2_reg_11_ ( .D(base_s1[11]), .CP(clk), .Q(base_s2[11]) );
  DFQD1 base_s2_reg_10_ ( .D(base_s1[10]), .CP(clk), .Q(base_s2[10]) );
  DFQD1 base_s2_reg_9_ ( .D(base_s1[9]), .CP(clk), .Q(base_s2[9]) );
  DFQD1 base_s2_reg_8_ ( .D(base_s1[8]), .CP(clk), .Q(base_s2[8]) );
  DFQD1 base_s2_reg_7_ ( .D(base_s1[7]), .CP(clk), .Q(base_s2[7]) );
  DFQD1 base_s2_reg_6_ ( .D(base_s1[6]), .CP(clk), .Q(base_s2[6]) );
  DFQD1 base_s2_reg_5_ ( .D(base_s1[5]), .CP(clk), .Q(base_s2[5]) );
  DFQD1 base_s2_reg_4_ ( .D(base_s1[4]), .CP(clk), .Q(base_s2[4]) );
  DFQD1 base_s2_reg_3_ ( .D(base_s1[3]), .CP(clk), .Q(base_s2[3]) );
  DFQD1 base_s2_reg_2_ ( .D(base_s1[2]), .CP(clk), .Q(base_s2[2]) );
  DFQD1 base_s2_reg_1_ ( .D(base_s1[1]), .CP(clk), .Q(base_s2[1]) );
  DFQD1 base_s2_reg_0_ ( .D(base_s1[0]), .CP(clk), .Q(base_s2[0]) );
  DFQD1 d1_s2_reg_28_ ( .D(d1_s1[28]), .CP(clk), .Q(d1_s2[28]) );
  DFQD1 d1_s2_reg_27_ ( .D(d1_s1[27]), .CP(clk), .Q(d1_s2[27]) );
  DFQD1 d1_s2_reg_26_ ( .D(d1_s1[26]), .CP(clk), .Q(d1_s2[26]) );
  DFQD1 d1_s2_reg_25_ ( .D(d1_s1[25]), .CP(clk), .Q(d1_s2[25]) );
  DFQD1 d1_s2_reg_24_ ( .D(d1_s1[24]), .CP(clk), .Q(d1_s2[24]) );
  DFQD1 d1_s2_reg_23_ ( .D(d1_s1[23]), .CP(clk), .Q(d1_s2[23]) );
  DFQD1 d1_s2_reg_22_ ( .D(d1_s1[22]), .CP(clk), .Q(d1_s2[22]) );
  DFQD1 d1_s2_reg_21_ ( .D(d1_s1[21]), .CP(clk), .Q(d1_s2[21]) );
  DFQD1 d1_s2_reg_20_ ( .D(d1_s1[20]), .CP(clk), .Q(d1_s2[20]) );
  DFQD1 d1_s2_reg_19_ ( .D(d1_s1[19]), .CP(clk), .Q(d1_s2[19]) );
  DFQD1 d1_s2_reg_18_ ( .D(d1_s1[18]), .CP(clk), .Q(d1_s2[18]) );
  DFQD1 d1_s2_reg_17_ ( .D(d1_s1[17]), .CP(clk), .Q(d1_s2[17]) );
  DFQD1 d1_s2_reg_16_ ( .D(d1_s1[16]), .CP(clk), .Q(d1_s2[16]) );
  DFQD1 d1_s2_reg_15_ ( .D(d1_s1[15]), .CP(clk), .Q(d1_s2[15]) );
  DFQD1 d1_s2_reg_14_ ( .D(d1_s1[14]), .CP(clk), .Q(d1_s2[14]) );
  DFQD1 d1_s2_reg_13_ ( .D(d1_s1[13]), .CP(clk), .Q(d1_s2[13]) );
  DFQD1 d1_s2_reg_12_ ( .D(d1_s1[12]), .CP(clk), .Q(d1_s2[12]) );
  DFQD1 d1_s2_reg_11_ ( .D(d1_s1[11]), .CP(clk), .Q(d1_s2[11]) );
  DFQD1 d1_s2_reg_10_ ( .D(d1_s1[10]), .CP(clk), .Q(d1_s2[10]) );
  DFQD1 d1_s2_reg_9_ ( .D(d1_s1[9]), .CP(clk), .Q(d1_s2[9]) );
  DFQD1 d1_s2_reg_8_ ( .D(d1_s1[8]), .CP(clk), .Q(d1_s2[8]) );
  DFQD1 d1_s2_reg_7_ ( .D(d1_s1[7]), .CP(clk), .Q(d1_s2[7]) );
  DFQD1 d1_s2_reg_6_ ( .D(d1_s1[6]), .CP(clk), .Q(d1_s2[6]) );
  DFQD1 d1_s2_reg_5_ ( .D(d1_s1[5]), .CP(clk), .Q(d1_s2[5]) );
  DFQD1 d1_s2_reg_4_ ( .D(d1_s1[4]), .CP(clk), .Q(d1_s2[4]) );
  DFQD1 d1_s2_reg_3_ ( .D(d1_s1[3]), .CP(clk), .Q(d1_s2[3]) );
  DFQD1 d1_s2_reg_2_ ( .D(d1_s1[2]), .CP(clk), .Q(d1_s2[2]) );
  DFQD1 d1_s2_reg_1_ ( .D(d1_s1[1]), .CP(clk), .Q(d1_s2[1]) );
  DFQD1 d1_s2_reg_0_ ( .D(d1_s1[0]), .CP(clk), .Q(d1_s2[0]) );
  DFQD1 y_index_s2_reg_3_ ( .D(y_index_s1_3_), .CP(clk), .Q(y_index_s2_3_) );
  DFQD1 divide_s2_reg ( .D(divide_s1), .CP(clk), .Q(divide_s2) );
  DFQD1 base_s3_reg_24_ ( .D(base_s2[24]), .CP(clk), .Q(base_s3[24]) );
  DFQD1 base_s3_reg_23_ ( .D(base_s2[23]), .CP(clk), .Q(base_s3[23]) );
  DFQD1 base_s3_reg_22_ ( .D(base_s2[22]), .CP(clk), .Q(base_s3[22]) );
  DFQD1 base_s3_reg_21_ ( .D(base_s2[21]), .CP(clk), .Q(base_s3[21]) );
  DFQD1 base_s3_reg_20_ ( .D(base_s2[20]), .CP(clk), .Q(base_s3[20]) );
  DFQD1 base_s3_reg_19_ ( .D(base_s2[19]), .CP(clk), .Q(base_s3[19]) );
  DFQD1 base_s3_reg_18_ ( .D(base_s2[18]), .CP(clk), .Q(base_s3[18]) );
  DFQD1 base_s3_reg_17_ ( .D(base_s2[17]), .CP(clk), .Q(base_s3[17]) );
  DFQD1 base_s3_reg_16_ ( .D(base_s2[16]), .CP(clk), .Q(base_s3[16]) );
  DFQD1 base_s3_reg_15_ ( .D(base_s2[15]), .CP(clk), .Q(base_s3[15]) );
  DFQD1 base_s3_reg_14_ ( .D(base_s2[14]), .CP(clk), .Q(base_s3[14]) );
  DFQD1 base_s3_reg_13_ ( .D(base_s2[13]), .CP(clk), .Q(base_s3[13]) );
  DFQD1 base_s3_reg_12_ ( .D(base_s2[12]), .CP(clk), .Q(base_s3[12]) );
  DFQD1 base_s3_reg_11_ ( .D(base_s2[11]), .CP(clk), .Q(base_s3[11]) );
  DFQD1 base_s3_reg_10_ ( .D(base_s2[10]), .CP(clk), .Q(base_s3[10]) );
  DFQD1 base_s3_reg_9_ ( .D(base_s2[9]), .CP(clk), .Q(base_s3[9]) );
  DFQD1 base_s3_reg_8_ ( .D(base_s2[8]), .CP(clk), .Q(base_s3[8]) );
  DFQD1 base_s3_reg_7_ ( .D(base_s2[7]), .CP(clk), .Q(base_s3[7]) );
  DFQD1 base_s3_reg_6_ ( .D(base_s2[6]), .CP(clk), .Q(base_s3[6]) );
  DFQD1 base_s3_reg_5_ ( .D(base_s2[5]), .CP(clk), .Q(base_s3[5]) );
  DFQD1 base_s3_reg_4_ ( .D(base_s2[4]), .CP(clk), .Q(base_s3[4]) );
  DFQD1 base_s3_reg_3_ ( .D(base_s2[3]), .CP(clk), .Q(base_s3[3]) );
  DFQD1 base_s3_reg_2_ ( .D(base_s2[2]), .CP(clk), .Q(base_s3[2]) );
  DFQD1 base_s3_reg_1_ ( .D(base_s2[1]), .CP(clk), .Q(base_s3[1]) );
  DFQD1 base_s3_reg_0_ ( .D(base_s2[0]), .CP(clk), .Q(base_s3[0]) );
  DFQD1 d1_s3_reg_28_ ( .D(d1_s2[28]), .CP(clk), .Q(d1_s3[28]) );
  DFQD1 d1_s3_reg_27_ ( .D(d1_s2[27]), .CP(clk), .Q(d1_s3[27]) );
  DFQD1 d1_s3_reg_26_ ( .D(d1_s2[26]), .CP(clk), .Q(d1_s3[26]) );
  DFQD1 d1_s3_reg_25_ ( .D(d1_s2[25]), .CP(clk), .Q(d1_s3[25]) );
  DFQD1 d1_s3_reg_24_ ( .D(d1_s2[24]), .CP(clk), .Q(d1_s3[24]) );
  DFQD1 d1_s3_reg_23_ ( .D(d1_s2[23]), .CP(clk), .Q(d1_s3[23]) );
  DFQD1 d1_s3_reg_22_ ( .D(d1_s2[22]), .CP(clk), .Q(d1_s3[22]) );
  DFQD1 d1_s3_reg_21_ ( .D(d1_s2[21]), .CP(clk), .Q(d1_s3[21]) );
  DFQD1 d1_s3_reg_20_ ( .D(d1_s2[20]), .CP(clk), .Q(d1_s3[20]) );
  DFQD1 d1_s3_reg_19_ ( .D(d1_s2[19]), .CP(clk), .Q(d1_s3[19]) );
  DFQD1 d1_s3_reg_18_ ( .D(d1_s2[18]), .CP(clk), .Q(d1_s3[18]) );
  DFQD1 d1_s3_reg_17_ ( .D(d1_s2[17]), .CP(clk), .Q(d1_s3[17]) );
  DFQD1 d1_s3_reg_16_ ( .D(d1_s2[16]), .CP(clk), .Q(d1_s3[16]) );
  DFQD1 d1_s3_reg_15_ ( .D(d1_s2[15]), .CP(clk), .Q(d1_s3[15]) );
  DFQD1 d1_s3_reg_14_ ( .D(d1_s2[14]), .CP(clk), .Q(d1_s3[14]) );
  DFQD1 d1_s3_reg_13_ ( .D(d1_s2[13]), .CP(clk), .Q(d1_s3[13]) );
  DFQD1 d1_s3_reg_12_ ( .D(d1_s2[12]), .CP(clk), .Q(d1_s3[12]) );
  DFQD1 d1_s3_reg_11_ ( .D(d1_s2[11]), .CP(clk), .Q(d1_s3[11]) );
  DFQD1 d1_s3_reg_10_ ( .D(d1_s2[10]), .CP(clk), .Q(d1_s3[10]) );
  DFQD1 d1_s3_reg_9_ ( .D(d1_s2[9]), .CP(clk), .Q(d1_s3[9]) );
  DFQD1 d1_s3_reg_8_ ( .D(d1_s2[8]), .CP(clk), .Q(d1_s3[8]) );
  DFQD1 d1_s3_reg_7_ ( .D(d1_s2[7]), .CP(clk), .Q(d1_s3[7]) );
  DFQD1 d1_s3_reg_6_ ( .D(d1_s2[6]), .CP(clk), .Q(d1_s3[6]) );
  DFQD1 d1_s3_reg_5_ ( .D(d1_s2[5]), .CP(clk), .Q(d1_s3[5]) );
  DFQD1 d1_s3_reg_4_ ( .D(d1_s2[4]), .CP(clk), .Q(d1_s3[4]) );
  DFQD1 d1_s3_reg_2_ ( .D(d1_s2[2]), .CP(clk), .Q(d1_s3[2]) );
  DFQD1 d1_s3_reg_1_ ( .D(d1_s2[1]), .CP(clk), .Q(d1_s3[1]) );
  DFQD1 d1_s3_reg_0_ ( .D(d1_s2[0]), .CP(clk), .Q(d1_s3[0]) );
  DFQD1 y_index_s3_reg_3_ ( .D(y_index_s2_3_), .CP(clk), .Q(y_index_s3_3_) );
  DFQD1 divide_s3_reg ( .D(divide_s2), .CP(clk), .Q(divide_s3) );
  DFQD1 shared_s4_reg_28_ ( .D(shared_comb[28]), .CP(clk), .Q(shared_s4[28])
         );
  DFQD1 shared_s4_reg_27_ ( .D(shared_comb[27]), .CP(clk), .Q(shared_s4[27])
         );
  DFQD1 shared_s4_reg_26_ ( .D(shared_comb[26]), .CP(clk), .Q(shared_s4[26])
         );
  DFQD1 shared_s4_reg_25_ ( .D(shared_comb[25]), .CP(clk), .Q(shared_s4[25])
         );
  DFQD1 shared_s4_reg_24_ ( .D(shared_comb[24]), .CP(clk), .Q(shared_s4[24])
         );
  DFQD1 shared_s4_reg_23_ ( .D(shared_comb[23]), .CP(clk), .Q(shared_s4[23])
         );
  DFQD1 shared_s4_reg_22_ ( .D(shared_comb[22]), .CP(clk), .Q(shared_s4[22])
         );
  DFQD1 shared_s4_reg_21_ ( .D(shared_comb[21]), .CP(clk), .Q(shared_s4[21])
         );
  DFQD1 shared_s4_reg_20_ ( .D(shared_comb[20]), .CP(clk), .Q(shared_s4[20])
         );
  DFQD1 shared_s4_reg_19_ ( .D(shared_comb[19]), .CP(clk), .Q(shared_s4[19])
         );
  DFQD1 shared_s4_reg_18_ ( .D(shared_comb[18]), .CP(clk), .Q(shared_s4[18])
         );
  DFQD1 shared_s4_reg_17_ ( .D(shared_comb[17]), .CP(clk), .Q(shared_s4[17])
         );
  DFQD1 shared_s4_reg_16_ ( .D(shared_comb[16]), .CP(clk), .Q(shared_s4[16])
         );
  DFQD1 shared_s4_reg_15_ ( .D(shared_comb[15]), .CP(clk), .Q(shared_s4[15])
         );
  DFQD1 shared_s4_reg_14_ ( .D(shared_comb[14]), .CP(clk), .Q(shared_s4[14])
         );
  DFQD1 shared_s4_reg_13_ ( .D(shared_comb[13]), .CP(clk), .Q(shared_s4[13])
         );
  DFQD1 shared_s4_reg_12_ ( .D(shared_comb[12]), .CP(clk), .Q(shared_s4[12])
         );
  DFQD1 shared_s4_reg_11_ ( .D(shared_comb[11]), .CP(clk), .Q(shared_s4[11])
         );
  DFQD1 shared_s4_reg_10_ ( .D(shared_comb[10]), .CP(clk), .Q(shared_s4[10])
         );
  DFQD1 shared_s4_reg_9_ ( .D(shared_comb[9]), .CP(clk), .Q(shared_s4[9]) );
  DFQD1 shared_s4_reg_8_ ( .D(shared_comb[8]), .CP(clk), .Q(shared_s4[8]) );
  DFQD1 shared_s4_reg_4_ ( .D(shared_comb[4]), .CP(clk), .Q(shared_s4[4]) );
  DFQD1 shared_s4_reg_3_ ( .D(shared_comb[3]), .CP(clk), .Q(shared_s4[3]) );
  DFQD1 shared_s4_reg_0_ ( .D(shared_comb[0]), .CP(clk), .Q(shared_s4[0]) );
  DFQD1 y_index_s4_reg_3_ ( .D(y_index_s3_3_), .CP(clk), .Q(y_index_s4_3_) );
  DFQD1 divide_s4_reg ( .D(divide_s3), .CP(clk), .Q(divide_s4) );
  DFQD1 shared_s5_reg_28_ ( .D(shared_s4[28]), .CP(clk), .Q(shared_s5[28]) );
  DFQD1 shared_s5_reg_27_ ( .D(shared_s4[27]), .CP(clk), .Q(shared_s5[27]) );
  DFQD1 shared_s5_reg_26_ ( .D(shared_s4[26]), .CP(clk), .Q(shared_s5[26]) );
  DFQD1 shared_s5_reg_25_ ( .D(shared_s4[25]), .CP(clk), .Q(shared_s5[25]) );
  DFQD1 shared_s5_reg_24_ ( .D(shared_s4[24]), .CP(clk), .Q(shared_s5[24]) );
  DFQD1 shared_s5_reg_23_ ( .D(shared_s4[23]), .CP(clk), .Q(shared_s5[23]) );
  DFQD1 shared_s5_reg_22_ ( .D(shared_s4[22]), .CP(clk), .Q(shared_s5[22]) );
  DFQD1 shared_s5_reg_21_ ( .D(shared_s4[21]), .CP(clk), .Q(shared_s5[21]) );
  DFQD1 shared_s5_reg_20_ ( .D(shared_s4[20]), .CP(clk), .Q(shared_s5[20]) );
  DFQD1 shared_s5_reg_19_ ( .D(shared_s4[19]), .CP(clk), .Q(shared_s5[19]) );
  DFQD1 shared_s5_reg_18_ ( .D(shared_s4[18]), .CP(clk), .Q(shared_s5[18]) );
  DFQD1 shared_s5_reg_17_ ( .D(shared_s4[17]), .CP(clk), .Q(shared_s5[17]) );
  DFQD1 shared_s5_reg_16_ ( .D(shared_s4[16]), .CP(clk), .Q(shared_s5[16]) );
  DFQD1 shared_s5_reg_15_ ( .D(shared_s4[15]), .CP(clk), .Q(shared_s5[15]) );
  DFQD1 shared_s5_reg_14_ ( .D(shared_s4[14]), .CP(clk), .Q(shared_s5[14]) );
  DFQD1 shared_s5_reg_13_ ( .D(shared_s4[13]), .CP(clk), .Q(shared_s5[13]) );
  DFQD1 shared_s5_reg_12_ ( .D(shared_s4[12]), .CP(clk), .Q(shared_s5[12]) );
  DFQD1 shared_s5_reg_11_ ( .D(shared_s4[11]), .CP(clk), .Q(shared_s5[11]) );
  DFQD1 shared_s5_reg_10_ ( .D(shared_s4[10]), .CP(clk), .Q(shared_s5[10]) );
  DFQD1 shared_s5_reg_9_ ( .D(shared_s4[9]), .CP(clk), .Q(shared_s5[9]) );
  DFQD1 shared_s5_reg_8_ ( .D(shared_s4[8]), .CP(clk), .Q(shared_s5[8]) );
  DFQD1 shared_s5_reg_7_ ( .D(shared_s4[7]), .CP(clk), .Q(shared_s5[7]) );
  DFQD1 shared_s5_reg_6_ ( .D(shared_s4[6]), .CP(clk), .Q(shared_s5[6]) );
  DFQD1 shared_s5_reg_5_ ( .D(shared_s4[5]), .CP(clk), .Q(shared_s5[5]) );
  DFQD1 shared_s5_reg_4_ ( .D(shared_s4[4]), .CP(clk), .Q(shared_s5[4]) );
  DFQD1 shared_s5_reg_2_ ( .D(n8), .CP(clk), .Q(shared_s5[2]) );
  DFQD1 shared_s5_reg_1_ ( .D(n7), .CP(clk), .Q(shared_s5[1]) );
  DFQD1 shared_s5_reg_0_ ( .D(shared_s4[0]), .CP(clk), .Q(shared_s5[0]) );
  DFQD1 divide_s5_reg ( .D(divide_s4), .CP(clk), .Q(divide_s5) );
  DFQD1 mantissa_value_reg_28_ ( .D(N455), .CP(clk), .Q(mantissa_value[28]) );
  DFQD1 mantissa_value_reg_27_ ( .D(N454), .CP(clk), .Q(mantissa_value[27]) );
  DFQD1 mantissa_value_reg_26_ ( .D(N453), .CP(clk), .Q(mantissa_value[26]) );
  DFQD1 mantissa_value_reg_25_ ( .D(N452), .CP(clk), .Q(mantissa_value[25]) );
  DFQD1 mantissa_value_reg_24_ ( .D(N451), .CP(clk), .Q(mantissa_value[24]) );
  DFQD1 mantissa_value_reg_23_ ( .D(N450), .CP(clk), .Q(mantissa_value[23]) );
  DFQD1 mantissa_value_reg_22_ ( .D(N449), .CP(clk), .Q(mantissa_value[22]) );
  DFQD1 mantissa_value_reg_21_ ( .D(N448), .CP(clk), .Q(mantissa_value[21]) );
  DFQD1 mantissa_value_reg_20_ ( .D(N447), .CP(clk), .Q(mantissa_value[20]) );
  DFQD1 mantissa_value_reg_19_ ( .D(N446), .CP(clk), .Q(mantissa_value[19]) );
  DFQD1 mantissa_value_reg_18_ ( .D(N445), .CP(clk), .Q(mantissa_value[18]) );
  DFQD1 mantissa_value_reg_17_ ( .D(N444), .CP(clk), .Q(mantissa_value[17]) );
  DFQD1 mantissa_value_reg_16_ ( .D(N443), .CP(clk), .Q(mantissa_value[16]) );
  DFQD1 mantissa_value_reg_15_ ( .D(N442), .CP(clk), .Q(mantissa_value[15]) );
  DFQD1 mantissa_value_reg_14_ ( .D(N441), .CP(clk), .Q(mantissa_value[14]) );
  DFQD1 mantissa_value_reg_13_ ( .D(N440), .CP(clk), .Q(mantissa_value[13]) );
  DFQD1 mantissa_value_reg_12_ ( .D(N439), .CP(clk), .Q(mantissa_value[12]) );
  DFQD1 mantissa_value_reg_11_ ( .D(N438), .CP(clk), .Q(mantissa_value[11]) );
  DFQD1 mantissa_value_reg_10_ ( .D(N437), .CP(clk), .Q(mantissa_value[10]) );
  DFQD1 mantissa_value_reg_9_ ( .D(N436), .CP(clk), .Q(mantissa_value[9]) );
  DFQD1 mantissa_value_reg_8_ ( .D(N435), .CP(clk), .Q(mantissa_value[8]) );
  DFQD1 mantissa_value_reg_7_ ( .D(N434), .CP(clk), .Q(mantissa_value[7]) );
  DFQD1 mantissa_value_reg_6_ ( .D(N433), .CP(clk), .Q(mantissa_value[6]) );
  DFQD1 mantissa_value_reg_5_ ( .D(N432), .CP(clk), .Q(mantissa_value[5]) );
  DFQD1 mantissa_value_reg_4_ ( .D(N431), .CP(clk), .Q(mantissa_value[4]) );
  DFQD1 mantissa_value_reg_3_ ( .D(N430), .CP(clk), .Q(mantissa_value[3]) );
  DFQD1 mantissa_value_reg_2_ ( .D(N429), .CP(clk), .Q(mantissa_value[2]) );
  DFQD1 mantissa_value_reg_1_ ( .D(N428), .CP(clk), .Q(mantissa_value[1]) );
  DFQD1 mantissa_value_reg_0_ ( .D(N427), .CP(clk), .Q(mantissa_value[0]) );
  DFQD1 shared_s4_reg_2_ ( .D(shared_comb[2]), .CP(clk), .Q(shared_s4[2]) );
  DFQD1 shared_s4_reg_1_ ( .D(shared_comb[1]), .CP(clk), .Q(shared_s4[1]) );
  DFQD1 shared_s4_reg_5_ ( .D(shared_comb[5]), .CP(clk), .Q(shared_s4[5]) );
  DFQD1 shared_s5_reg_3_ ( .D(shared_s4[3]), .CP(clk), .Q(shared_s5[3]) );
  DFQD1 d1_s3_reg_3_ ( .D(d1_s2[3]), .CP(clk), .Q(d1_s3[3]) );
  DFQD1 shared_s4_reg_6_ ( .D(shared_comb[6]), .CP(clk), .Q(shared_s4[6]) );
  DFQD1 shared_s4_reg_7_ ( .D(shared_comb[7]), .CP(clk), .Q(shared_s4[7]) );
  INVD1 U3 ( .I(divide_mode), .ZN(n982) );
  BUFFD2 U4 ( .I(shared_s4[1]), .Z(n6) );
  CKBD1 U5 ( .I(shared_s4[1]), .Z(n7) );
  CKBD1 U6 ( .I(shared_s4[2]), .Z(n8) );
  CKBD1 U7 ( .I(shared_s4[2]), .Z(n9) );
  INVD0 U8 ( .I(n1011), .ZN(n10) );
  INVD0 U9 ( .I(n10), .ZN(n11) );
  INVD0 U10 ( .I(n10), .ZN(n12) );
  CKND2D0 U11 ( .A1(n353), .A2(x_mantissa[13]), .ZN(n524) );
  CKND2D0 U12 ( .A1(n649), .A2(x_mantissa[19]), .ZN(n724) );
  OAI21D0 U13 ( .A1(n219), .A2(n218), .B(n217), .ZN(n582) );
  INVD0 U14 ( .I(n611), .ZN(n532) );
  OAI21D0 U15 ( .A1(n136), .A2(n641), .B(n640), .ZN(n657) );
  INVD0 U16 ( .I(y_mantissa[13]), .ZN(n989) );
  CKAN2D0 U17 ( .A1(n1034), .A2(n959), .Z(n974) );
  INVD0 U18 ( .I(y_mantissa[0]), .ZN(n1030) );
  INVD0 U19 ( .I(n125), .ZN(n961) );
  INVD0 U20 ( .I(n992), .ZN(n1002) );
  INVD0 U21 ( .I(n982), .ZN(n983) );
  INVD0 U22 ( .I(x_mantissa[19]), .ZN(n1079) );
  CKND2D0 U23 ( .A1(n1275), .A2(n127), .ZN(n1285) );
  CKND2D0 U24 ( .A1(n338), .A2(n55), .ZN(n499) );
  CKND2D0 U25 ( .A1(n651), .A2(n25), .ZN(n699) );
  OAI21D0 U26 ( .A1(n624), .A2(n744), .B(n751), .ZN(n679) );
  INVD0 U27 ( .I(n72), .ZN(n73) );
  INVD0 U28 ( .I(n90), .ZN(n91) );
  INVD0 U29 ( .I(x_mantissa[22]), .ZN(n1175) );
  INVD0 U30 ( .I(DP_OP_20J1_131_4019_n134), .ZN(n125) );
  INVD0 U31 ( .I(n112), .ZN(n113) );
  INVD0 U32 ( .I(n1049), .ZN(n1050) );
  INVD0 U33 ( .I(n506), .ZN(n463) );
  INVD0 U34 ( .I(n753), .ZN(n624) );
  OAI21D0 U35 ( .A1(n624), .A2(n566), .B(n565), .ZN(n690) );
  INVD0 U36 ( .I(n86), .ZN(n87) );
  INVD0 U37 ( .I(n106), .ZN(n107) );
  INVD0 U38 ( .I(n60), .ZN(n61) );
  INVD0 U39 ( .I(n121), .ZN(n122) );
  INVD0 U40 ( .I(n123), .ZN(n1295) );
  CKND2D0 U41 ( .A1(n707), .A2(n706), .ZN(n888) );
  CKND2D0 U42 ( .A1(n133), .A2(n1335), .ZN(n1337) );
  INVD0 U43 ( .I(n859), .ZN(n907) );
  INVD0 U44 ( .I(n835), .ZN(n890) );
  CKXOR2D1 U45 ( .A1(n150), .A2(sum2[28]), .Z(shared_comb[28]) );
  INVD0 U46 ( .I(n108), .ZN(n109) );
  INVD0 U47 ( .I(n1332), .ZN(n108) );
  INVD0 U48 ( .I(shared_s4[20]), .ZN(n100) );
  INVD0 U49 ( .I(shared_s4[17]), .ZN(n94) );
  INVD0 U50 ( .I(shared_s4[19]), .ZN(n98) );
  INVD0 U51 ( .I(shared_s4[21]), .ZN(n102) );
  INVD0 U52 ( .I(shared_s4[18]), .ZN(n96) );
  INVD0 U53 ( .I(shared_s4[7]), .ZN(n70) );
  INVD0 U54 ( .I(shared_s4[22]), .ZN(n104) );
  INVD0 U55 ( .I(shared_s4[13]), .ZN(n86) );
  INVD0 U56 ( .I(shared_s4[14]), .ZN(n88) );
  INVD0 U57 ( .I(shared_s4[3]), .ZN(n72) );
  INVD0 U58 ( .I(shared_s4[23]), .ZN(n106) );
  INVD0 U59 ( .I(shared_s4[4]), .ZN(n74) );
  INVD0 U60 ( .I(n1334), .ZN(n121) );
  INVD0 U61 ( .I(n121), .ZN(n123) );
  INVD0 U62 ( .I(shared_s4[16]), .ZN(n92) );
  INVD0 U63 ( .I(shared_s4[15]), .ZN(n90) );
  INVD0 U64 ( .I(shared_s4[24]), .ZN(n58) );
  INVD0 U65 ( .I(shared_s4[25]), .ZN(n60) );
  INVD0 U66 ( .I(shared_s4[26]), .ZN(n62) );
  INVD0 U67 ( .I(shared_s4[27]), .ZN(n64) );
  OAI21D0 U68 ( .A1(n876), .A2(n875), .B(n874), .ZN(n880) );
  AOI21D1 U69 ( .A1(n132), .A2(n814), .B(n813), .ZN(n830) );
  AOI21D1 U70 ( .A1(n887), .A2(n885), .B(n838), .ZN(n842) );
  OR2D0 U71 ( .A1(n123), .A2(n1307), .Z(n135) );
  OR2D0 U72 ( .A1(n124), .A2(n1312), .Z(n1314) );
  CKND2D0 U73 ( .A1(n124), .A2(n1333), .ZN(n1335) );
  OR2D0 U74 ( .A1(n124), .A2(n1333), .Z(n133) );
  OR2D0 U75 ( .A1(n124), .A2(n1319), .Z(n134) );
  CKND2D0 U76 ( .A1(n1334), .A2(n1325), .ZN(n1326) );
  OR2D1 U77 ( .A1(n123), .A2(n1268), .Z(n1339) );
  ND2D0 U78 ( .A1(n1344), .A2(n1343), .ZN(n1346) );
  AOI21D1 U79 ( .A1(n898), .A2(n896), .B(n853), .ZN(n858) );
  CKND2D0 U80 ( .A1(n882), .A2(n881), .ZN(n883) );
  NR2D0 U81 ( .A1(n718), .A2(n837), .ZN(n720) );
  NR2XD0 U82 ( .A1(n1267), .A2(n1266), .ZN(n1342) );
  ND2D0 U83 ( .A1(n840), .A2(n885), .ZN(n718) );
  ND2D0 U84 ( .A1(n1348), .A2(n1347), .ZN(n1350) );
  ND2D0 U85 ( .A1(n1353), .A2(n1352), .ZN(n1355) );
  ND2D0 U86 ( .A1(n843), .A2(n892), .ZN(n837) );
  CKND2D0 U87 ( .A1(n843), .A2(n888), .ZN(n844) );
  NR2D0 U88 ( .A1(n804), .A2(n803), .ZN(n831) );
  CKND2D0 U89 ( .A1(n840), .A2(n839), .ZN(n841) );
  CKND2D0 U90 ( .A1(n878), .A2(n833), .ZN(n812) );
  CKND2D0 U91 ( .A1(n892), .A2(n891), .ZN(n893) );
  CKND2D0 U92 ( .A1(n885), .A2(n884), .ZN(n886) );
  OR2D0 U93 ( .A1(n715), .A2(n714), .Z(n840) );
  CKND2D0 U94 ( .A1(n833), .A2(n874), .ZN(n834) );
  CKND2D0 U95 ( .A1(n910), .A2(n909), .ZN(n911) );
  CKND2D0 U96 ( .A1(n847), .A2(n849), .ZN(n600) );
  ND2D0 U97 ( .A1(n715), .A2(n714), .ZN(n839) );
  ND2D0 U98 ( .A1(n878), .A2(n877), .ZN(n879) );
  ND2D0 U99 ( .A1(n856), .A2(n855), .ZN(n857) );
  NR2D0 U100 ( .A1(n908), .A2(n906), .ZN(n495) );
  CKND2D0 U101 ( .A1(n860), .A2(n899), .ZN(n861) );
  ND2D0 U102 ( .A1(n709), .A2(n708), .ZN(n891) );
  ND2D0 U103 ( .A1(n808), .A2(n807), .ZN(n877) );
  OR2D0 U104 ( .A1(n713), .A2(n712), .Z(n885) );
  CKND2D0 U105 ( .A1(n849), .A2(n848), .ZN(n850) );
  ND2D0 U106 ( .A1(n828), .A2(n827), .ZN(n829) );
  OR2D0 U107 ( .A1(n709), .A2(n708), .Z(n892) );
  AOI21D0 U108 ( .A1(n902), .A2(n491), .B(n490), .ZN(n905) );
  NR2D0 U109 ( .A1(n854), .A2(n852), .ZN(n847) );
  NR2D0 U110 ( .A1(n707), .A2(n706), .ZN(n889) );
  OR2D0 U111 ( .A1(n808), .A2(n807), .Z(n878) );
  AOI21D1 U112 ( .A1(n793), .A2(n792), .B(n791), .ZN(n798) );
  OAI21D0 U113 ( .A1(n854), .A2(n895), .B(n855), .ZN(n846) );
  ND2D0 U114 ( .A1(n1357), .A2(n1356), .ZN(n1359) );
  NR2XD0 U115 ( .A1(n1256), .A2(n1255), .ZN(n1351) );
  ND2D0 U116 ( .A1(n860), .A2(n902), .ZN(n906) );
  CKND2D0 U117 ( .A1(n896), .A2(n895), .ZN(n897) );
  CKND2D0 U118 ( .A1(n902), .A2(n901), .ZN(n903) );
  OR2D1 U119 ( .A1(n1253), .A2(n1252), .Z(n1357) );
  ND2D0 U120 ( .A1(n493), .A2(n492), .ZN(n909) );
  NR2D0 U121 ( .A1(n806), .A2(n805), .ZN(n875) );
  ND2D0 U122 ( .A1(n1299), .A2(n1298), .ZN(n1301) );
  OR2D0 U123 ( .A1(n597), .A2(n596), .Z(n849) );
  CKND2D1 U124 ( .A1(n1253), .A2(n1252), .ZN(n1356) );
  CKND2D0 U125 ( .A1(n826), .A2(n825), .ZN(n827) );
  CKND2D0 U126 ( .A1(n922), .A2(n921), .ZN(n923) );
  NR2D0 U127 ( .A1(n487), .A2(n486), .ZN(n900) );
  INVD1 U128 ( .I(n679), .ZN(n702) );
  ND2D0 U129 ( .A1(n489), .A2(n488), .ZN(n901) );
  NR2D0 U130 ( .A1(n593), .A2(n592), .ZN(n852) );
  CKND2D0 U131 ( .A1(n865), .A2(n864), .ZN(n866) );
  NR2XD0 U132 ( .A1(n1251), .A2(n1250), .ZN(n1297) );
  CKND2D0 U133 ( .A1(n914), .A2(n913), .ZN(n915) );
  ND2D0 U134 ( .A1(n482), .A2(n481), .ZN(n864) );
  INVD0 U135 ( .I(n1360), .ZN(n1249) );
  CKND2D0 U136 ( .A1(n869), .A2(n917), .ZN(n870) );
  ND2D0 U137 ( .A1(n1361), .A2(n1360), .ZN(n1363) );
  ND2D0 U138 ( .A1(n1366), .A2(n1365), .ZN(n1368) );
  ND2D0 U139 ( .A1(n457), .A2(n456), .ZN(n921) );
  ND2D0 U140 ( .A1(n480), .A2(n479), .ZN(n913) );
  OR2D1 U141 ( .A1(n1248), .A2(n1247), .Z(n1361) );
  CKND2D1 U142 ( .A1(n1248), .A2(n1247), .ZN(n1360) );
  ND2D0 U143 ( .A1(n1375), .A2(n1374), .ZN(n1377) );
  ND2D0 U144 ( .A1(n1370), .A2(n1369), .ZN(n1372) );
  NR2D0 U145 ( .A1(n4550), .A2(n4540), .ZN(n918) );
  ND2D0 U146 ( .A1(n4550), .A2(n4540), .ZN(n917) );
  INVD0 U147 ( .I(n1082), .ZN(n1038) );
  NR2D0 U148 ( .A1(n750), .A2(n744), .ZN(n754) );
  XOR2D0 U149 ( .A1(n1084), .A2(n1082), .Z(n1083) );
  CKND2D1 U150 ( .A1(n1246), .A2(n1245), .ZN(n1365) );
  INVD0 U151 ( .I(n1369), .ZN(n1244) );
  NR2XD0 U152 ( .A1(n1246), .A2(n1245), .ZN(n1364) );
  CKND2D0 U153 ( .A1(n556), .A2(n563), .ZN(n557) );
  CKND2D1 U154 ( .A1(n1243), .A2(n1242), .ZN(n1369) );
  ND2D0 U155 ( .A1(n4500), .A2(n4490), .ZN(n927) );
  CKND2D0 U156 ( .A1(n689), .A2(n687), .ZN(n589) );
  CKND2D0 U157 ( .A1(n796), .A2(n795), .ZN(n797) );
  ND2D1 U158 ( .A1(n1089), .A2(n1088), .ZN(n1082) );
  ND2D0 U159 ( .A1(n743), .A2(n748), .ZN(n750) );
  ND2D0 U160 ( .A1(n623), .A2(n619), .ZN(n744) );
  CKND2D0 U161 ( .A1(n792), .A2(n790), .ZN(n673) );
  CKND2D0 U162 ( .A1(n700), .A2(n699), .ZN(n701) );
  ND2D0 U163 ( .A1(n4480), .A2(n4470), .ZN(n931) );
  ND2D0 U164 ( .A1(n1379), .A2(n1378), .ZN(n1381) );
  ND2D0 U165 ( .A1(n1384), .A2(n1383), .ZN(n1386) );
  INR2XD0 U166 ( .A1(n1095), .B1(n1096), .ZN(n1089) );
  CKND2D0 U167 ( .A1(n550), .A2(n562), .ZN(n551) );
  NR2D0 U168 ( .A1(n742), .A2(n794), .ZN(n748) );
  CKND2D0 U169 ( .A1(n682), .A2(n681), .ZN(n683) );
  ND2D0 U170 ( .A1(n497), .A2(n503), .ZN(n505) );
  CKND2D0 U171 ( .A1(n461), .A2(n460), .ZN(n462) );
  NR2D0 U172 ( .A1(n561), .A2(n564), .ZN(n619) );
  CKND2D0 U173 ( .A1(n356), .A2(n498), .ZN(n357) );
  CKND2D0 U174 ( .A1(n370), .A2(n499), .ZN(n371) );
  ND2D0 U175 ( .A1(n1241), .A2(n1240), .ZN(n1374) );
  NR2D0 U176 ( .A1(n588), .A2(n23), .ZN(n618) );
  CKND2D1 U177 ( .A1(n1238), .A2(n1237), .ZN(n1378) );
  OAI21D0 U178 ( .A1(n363), .A2(n460), .B(n364), .ZN(n502) );
  CKND2D0 U179 ( .A1(n365), .A2(n364), .ZN(n366) );
  NR2D0 U180 ( .A1(n677), .A2(n680), .ZN(n743) );
  NR2D0 U181 ( .A1(n468), .A2(n470), .ZN(n288) );
  CKND2D0 U182 ( .A1(n472), .A2(n471), .ZN(n473) );
  AOI21D0 U183 ( .A1(n378), .A2(n285), .B(n284), .ZN(n467) );
  CKND2D0 U184 ( .A1(n693), .A2(n692), .ZN(n694) );
  ND2D0 U185 ( .A1(n745), .A2(n1064), .ZN(n795) );
  ND2D0 U186 ( .A1(n355), .A2(n56), .ZN(n498) );
  NR2D0 U187 ( .A1(n323), .A2(n53), .ZN(n361) );
  HICIND1 U188 ( .A(n1111), .CIN(n1110), .CO(n1102), .S(n1112) );
  ND2D0 U189 ( .A1(n1393), .A2(n1392), .ZN(n1395) );
  ND2D0 U190 ( .A1(n549), .A2(n22), .ZN(n562) );
  NR2D0 U191 ( .A1(n651), .A2(n25), .ZN(n677) );
  ND2D0 U192 ( .A1(n1388), .A2(n1387), .ZN(n1390) );
  OAI21D0 U193 ( .A1(n1391), .A2(n1394), .B(n1392), .ZN(n1389) );
  ND2D0 U194 ( .A1(n1236), .A2(n1235), .ZN(n1383) );
  CKND2D0 U195 ( .A1(n384), .A2(n383), .ZN(n385) );
  CKND2D0 U196 ( .A1(n378), .A2(n377), .ZN(n379) );
  ND2D0 U197 ( .A1(n652), .A2(n26), .ZN(n681) );
  ND2D0 U198 ( .A1(n283), .A2(n51), .ZN(n377) );
  ND2D0 U199 ( .A1(n286), .A2(n52), .ZN(n471) );
  ND2D0 U200 ( .A1(n620), .A2(n24), .ZN(n692) );
  ND2D0 U201 ( .A1(n1233), .A2(n1232), .ZN(n1387) );
  ND2D0 U202 ( .A1(n324), .A2(n54), .ZN(n364) );
  NR2D0 U203 ( .A1(n282), .A2(n50), .ZN(n376) );
  ND2D0 U204 ( .A1(n1231), .A2(n1230), .ZN(n1392) );
  OAI21D0 U205 ( .A1(n1400), .A2(n1403), .B(n1401), .ZN(n1398) );
  ND2D0 U206 ( .A1(n282), .A2(n50), .ZN(n383) );
  ND2D0 U207 ( .A1(n278), .A2(n49), .ZN(n390) );
  ND2D0 U208 ( .A1(n275), .A2(n47), .ZN(n4360) );
  ND2D0 U209 ( .A1(n277), .A2(n48), .ZN(n396) );
  OAI21D0 U210 ( .A1(n1409), .A2(n1412), .B(n1410), .ZN(n1407) );
  CKND2D0 U211 ( .A1(n602), .A2(n607), .ZN(n610) );
  NR2D0 U212 ( .A1(n523), .A2(n530), .ZN(n602) );
  CKND2D0 U213 ( .A1(n656), .A2(n724), .ZN(n650) );
  CKND2D0 U214 ( .A1(n616), .A2(n638), .ZN(n617) );
  CKND2D0 U215 ( .A1(n756), .A2(n773), .ZN(n741) );
  CKND2D0 U216 ( .A1(n669), .A2(n723), .ZN(n670) );
  CKND2D0 U217 ( .A1(n768), .A2(n772), .ZN(n769) );
  CKND2D0 U218 ( .A1(n633), .A2(n637), .ZN(n634) );
  NR2D0 U219 ( .A1(n310), .A2(n303), .ZN(n313) );
  NR2D0 U220 ( .A1(n636), .A2(n639), .ZN(n722) );
  ND2D0 U221 ( .A1(n585), .A2(n603), .ZN(n586) );
  CKND2D0 U222 ( .A1(n547), .A2(n604), .ZN(n548) );
  ND2D0 U223 ( .A1(n522), .A2(n528), .ZN(n530) );
  CKND2D0 U224 ( .A1(n522), .A2(n524), .ZN(n354) );
  NR2D0 U225 ( .A1(n649), .A2(x_mantissa[19]), .ZN(n721) );
  CKND2D0 U226 ( .A1(n767), .A2(n1064), .ZN(n772) );
  ND2D0 U227 ( .A1(n615), .A2(x_mantissa[17]), .ZN(n638) );
  ND2D0 U228 ( .A1(n632), .A2(x_mantissa[18]), .ZN(n637) );
  NR2D0 U229 ( .A1(n615), .A2(x_mantissa[17]), .ZN(n636) );
  ND2D0 U230 ( .A1(n740), .A2(n27), .ZN(n773) );
  NR2D0 U231 ( .A1(n668), .A2(x_mantissa[20]), .ZN(n725) );
  NR2D0 U232 ( .A1(n767), .A2(n1064), .ZN(n774) );
  NR2D0 U233 ( .A1(n605), .A2(n601), .ZN(n607) );
  ND2D0 U234 ( .A1(n302), .A2(n307), .ZN(n310) );
  NR2D0 U235 ( .A1(n740), .A2(x_mantissa[21]), .ZN(n771) );
  ND2D0 U236 ( .A1(n668), .A2(x_mantissa[20]), .ZN(n723) );
  ND2D0 U237 ( .A1(n339), .A2(n343), .ZN(n523) );
  CKND2D0 U238 ( .A1(n339), .A2(n325), .ZN(n322) );
  CKND2D0 U239 ( .A1(n302), .A2(n289), .ZN(n237) );
  ND2D0 U240 ( .A1(n307), .A2(n304), .ZN(n300) );
  ND2D0 U241 ( .A1(n528), .A2(n525), .ZN(n519) );
  ND2D0 U242 ( .A1(n226), .A2(n231), .ZN(n303) );
  CKND2D0 U243 ( .A1(n343), .A2(n340), .ZN(n336) );
  CKND2D0 U244 ( .A1(n584), .A2(x_mantissa[16]), .ZN(n603) );
  INR2D0 U245 ( .A1(n696), .B1(n1443), .ZN(n615) );
  ND2D0 U246 ( .A1(n335), .A2(x_mantissa[12]), .ZN(n340) );
  ND2D0 U247 ( .A1(n321), .A2(x_mantissa[11]), .ZN(n325) );
  ND2D0 U248 ( .A1(n518), .A2(x_mantissa[14]), .ZN(n525) );
  NR2D0 U249 ( .A1(n353), .A2(x_mantissa[13]), .ZN(n507) );
  INR2D0 U250 ( .A1(n788), .B1(n783), .ZN(n767) );
  ND2D0 U251 ( .A1(n299), .A2(x_mantissa[10]), .ZN(n304) );
  OR2D0 U252 ( .A1(n800), .A2(n739), .Z(n740) );
  ND2D0 U253 ( .A1(n236), .A2(x_mantissa[9]), .ZN(n289) );
  CKND2D0 U254 ( .A1(n179), .A2(n44), .ZN(n249) );
  ND2D0 U255 ( .A1(n181), .A2(n46), .ZN(n271) );
  ND2D0 U256 ( .A1(n195), .A2(n47), .ZN(n244) );
  ND2D0 U257 ( .A1(n207), .A2(n49), .ZN(n227) );
  CKND2D0 U258 ( .A1(n223), .A2(n50), .ZN(n228) );
  INR2D0 U259 ( .A1(n464), .B1(n320), .ZN(n299) );
  INR2D0 U260 ( .A1(n406), .B1(n783), .ZN(n179) );
  NR2D0 U261 ( .A1(n207), .A2(n49), .ZN(n209) );
  INR2D0 U262 ( .A1(n476), .B1(n320), .ZN(n236) );
  CKND2D0 U263 ( .A1(n196), .A2(n48), .ZN(n240) );
  INR2D0 U264 ( .A1(n590), .B1(n1443), .ZN(n584) );
  INR2D0 U265 ( .A1(n559), .B1(n545), .ZN(n518) );
  NR2D0 U266 ( .A1(n785), .A2(n783), .ZN(n129) );
  ND2D0 U267 ( .A1(n180), .A2(n45), .ZN(n267) );
  INR2D0 U268 ( .A1(n412), .B1(n739), .ZN(n175) );
  INR2D0 U269 ( .A1(n386), .B1(n222), .ZN(n207) );
  BUFFD0 U270 ( .I(n675), .Z(n801) );
  INR2D0 U271 ( .A1(n381), .B1(n222), .ZN(n223) );
  INVD1 U272 ( .I(n1105), .ZN(n1103) );
  BUFFD0 U273 ( .I(n554), .Z(n697) );
  CKAN2D1 U274 ( .A1(n131), .A2(n1291), .Z(n1060) );
  INR2D0 U275 ( .A1(n4320), .B1(n983), .ZN(n180) );
  AO21D0 U276 ( .A1(n582), .A2(n581), .B(n580), .Z(n782) );
  INVD0 U277 ( .I(n1200), .ZN(n1198) );
  INVD0 U278 ( .I(n1169), .ZN(n1167) );
  INVD0 U279 ( .I(n1186), .ZN(n1183) );
  INVD0 U280 ( .I(n1280), .ZN(n1275) );
  NR2D0 U281 ( .A1(n571), .A2(n578), .ZN(n581) );
  CKND2D0 U282 ( .A1(n1107), .A2(n1106), .ZN(n1058) );
  INVD0 U283 ( .I(n997), .ZN(n66) );
  CKND2D1 U284 ( .A1(n1171), .A2(n1056), .ZN(n1140) );
  CKND2D0 U285 ( .A1(n233), .A2(n294), .ZN(n234) );
  CKND2D0 U286 ( .A1(n315), .A2(n328), .ZN(n297) );
  ND2D0 U287 ( .A1(n327), .A2(n332), .ZN(n571) );
  CKND2D0 U288 ( .A1(n643), .A2(n661), .ZN(n630) );
  CKAN2D0 U289 ( .A1(n1055), .A2(n1146), .Z(n1056) );
  CKAN2D0 U290 ( .A1(n1057), .A2(n1114), .Z(n1107) );
  CKND2D0 U291 ( .A1(n646), .A2(n662), .ZN(n647) );
  CKND2D0 U292 ( .A1(n350), .A2(n512), .ZN(n351) );
  ND2D0 U293 ( .A1(n570), .A2(n576), .ZN(n578) );
  CKND2D0 U294 ( .A1(n542), .A2(n573), .ZN(n543) );
  CKND2D0 U295 ( .A1(n347), .A2(n511), .ZN(n333) );
  CKND2D0 U296 ( .A1(n980), .A2(n979), .ZN(n958) );
  CKND2D0 U297 ( .A1(n612), .A2(n627), .ZN(n613) );
  NR2D0 U298 ( .A1(n659), .A2(n658), .ZN(n665) );
  CKND2D0 U299 ( .A1(n515), .A2(n572), .ZN(n516) );
  NR2D0 U300 ( .A1(n326), .A2(n990), .ZN(n332) );
  NR2D0 U301 ( .A1(n569), .A2(n568), .ZN(n576) );
  CKAN2D0 U302 ( .A1(n957), .A2(n985), .Z(n980) );
  CKAN2D0 U303 ( .A1(n955), .A2(n999), .Z(n956) );
  NR2D0 U304 ( .A1(n36), .A2(n35), .ZN(n291) );
  ND2D0 U305 ( .A1(y_mantissa[17]), .A2(n42), .ZN(n626) );
  NR2D0 U306 ( .A1(n19), .A2(n18), .ZN(n659) );
  ND2D0 U307 ( .A1(y_mantissa[9]), .A2(n34), .ZN(n293) );
  NR2D0 U308 ( .A1(n43), .A2(n18), .ZN(n625) );
  NR2D0 U309 ( .A1(n39), .A2(n38), .ZN(n510) );
  NR2D0 U310 ( .A1(n40), .A2(n39), .ZN(n509) );
  ND2D0 U311 ( .A1(y_mantissa[15]), .A2(n40), .ZN(n572) );
  ND2D0 U312 ( .A1(n33), .A2(n32), .ZN(n212) );
  ND2D0 U313 ( .A1(n31), .A2(n30), .ZN(n190) );
  ND2D0 U314 ( .A1(n32), .A2(n31), .ZN(n191) );
  ND2D0 U315 ( .A1(n29), .A2(n28), .ZN(n165) );
  CKND2D0 U316 ( .A1(n1156), .A2(n1155), .ZN(n1147) );
  CKND2D0 U317 ( .A1(n1124), .A2(n1123), .ZN(n1115) );
  CKND2D0 U318 ( .A1(n1179), .A2(n1178), .ZN(n1054) );
  CKAN2D1 U319 ( .A1(n1053), .A2(n1210), .Z(n1195) );
  CKAN2D1 U320 ( .A1(n953), .A2(n1027), .Z(n1022) );
  BUFFD0 U321 ( .I(n1441), .Z(n1442) );
  CKND2D0 U322 ( .A1(n990), .A2(n989), .ZN(n986) );
  CKND2D0 U323 ( .A1(n1005), .A2(n1004), .ZN(n1000) );
  CKND2D0 U324 ( .A1(n1014), .A2(n1013), .ZN(n954) );
  CKBD1 U325 ( .I(n1175), .Z(n1048) );
  CKAN2D0 U326 ( .A1(n1209), .A2(n1201), .Z(n1053) );
  CKAN2D0 U327 ( .A1(n1194), .A2(n1187), .Z(n1179) );
  CKAN2D0 U328 ( .A1(n1170), .A2(n1163), .Z(n1156) );
  CKAN2D0 U329 ( .A1(n1139), .A2(n1132), .Z(n1124) );
  NR2D0 U330 ( .A1(n210), .A2(n1005), .ZN(n216) );
  BUFFD0 U331 ( .I(divide_s5), .Z(n1438) );
  BUFFD0 U332 ( .I(divide_s5), .Z(n1434) );
  INVD0 U333 ( .I(x_mantissa[1]), .ZN(n1052) );
  ND2D0 U334 ( .A1(y_mantissa[11]), .A2(y_mantissa[10]), .ZN(n328) );
  INVD1 U335 ( .I(y_mantissa[10]), .ZN(n999) );
  INVD1 U336 ( .I(y_mantissa[6]), .ZN(n1013) );
  CKND2D0 U337 ( .A1(y_mantissa[19]), .A2(y_mantissa[18]), .ZN(n661) );
  ND2D0 U338 ( .A1(y_mantissa[13]), .A2(y_mantissa[12]), .ZN(n511) );
  INVD1 U339 ( .I(y_mantissa[14]), .ZN(n985) );
  XOR2D0 U340 ( .A1(n1322), .A2(n1321), .Z(d1_c1[24]) );
  INVD1 U341 ( .I(n1328), .ZN(n1321) );
  XOR2D0 U342 ( .A1(n1337), .A2(n1336), .Z(d1_c1[22]) );
  XNR2D0 U343 ( .A1(n880), .A2(n879), .ZN(base_c1[23]) );
  XOR2D0 U344 ( .A1(n1309), .A2(n1336), .Z(d1_c1[26]) );
  INVD1 U345 ( .I(n1336), .ZN(n1328) );
  XNR2D0 U346 ( .A1(n1341), .A2(n1340), .ZN(d1_c1[21]) );
  INVD0 U347 ( .I(n1302), .ZN(n1296) );
  XOR2D0 U348 ( .A1(n876), .A2(n834), .Z(base_c1[22]) );
  XOR2D0 U349 ( .A1(n830), .A2(n829), .Z(base_c1[24]) );
  CKND2D1 U350 ( .A1(n1303), .A2(n1302), .ZN(n1304) );
  XOR2D0 U351 ( .A1(n842), .A2(n841), .Z(base_c1[20]) );
  OR2D1 U352 ( .A1(n1295), .A2(n1294), .Z(n1303) );
  CKND2D1 U353 ( .A1(n1295), .A2(n1294), .ZN(n1302) );
  XNR2D0 U354 ( .A1(n132), .A2(n883), .ZN(base_c1[21]) );
  XNR2D0 U355 ( .A1(n887), .A2(n886), .ZN(base_c1[19]) );
  CKND2D0 U356 ( .A1(n1339), .A2(n1338), .ZN(n1341) );
  CKND2D1 U357 ( .A1(n135), .A2(n1308), .ZN(n1309) );
  CKND2D1 U358 ( .A1(n1314), .A2(n1313), .ZN(n1316) );
  CKND2D1 U359 ( .A1(n1327), .A2(n1326), .ZN(n1329) );
  XNR2D0 U360 ( .A1(n894), .A2(n893), .ZN(base_c1[18]) );
  CKND2D1 U361 ( .A1(n134), .A2(n1320), .ZN(n1322) );
  XOR2D0 U362 ( .A1(n858), .A2(n857), .Z(base_c1[15]) );
  XOR2D0 U363 ( .A1(n851), .A2(n850), .Z(base_c1[16]) );
  CKND2D0 U364 ( .A1(n122), .A2(n1312), .ZN(n1313) );
  XOR2D0 U365 ( .A1(n890), .A2(n844), .Z(base_c1[17]) );
  CKND2D0 U366 ( .A1(n123), .A2(n1307), .ZN(n1308) );
  OAI21D0 U367 ( .A1(n890), .A2(n889), .B(n888), .ZN(n894) );
  XOR2D0 U368 ( .A1(n1346), .A2(n1345), .Z(d1_c1[20]) );
  OR2D0 U369 ( .A1(n122), .A2(n1325), .Z(n1327) );
  CKND2D0 U370 ( .A1(n122), .A2(n1319), .ZN(n1320) );
  XNR2D0 U371 ( .A1(n898), .A2(n897), .ZN(base_c1[14]) );
  OAI21D0 U372 ( .A1(n718), .A2(n836), .B(n717), .ZN(n719) );
  AOI21D0 U373 ( .A1(n898), .A2(n847), .B(n846), .ZN(n851) );
  INVD0 U374 ( .I(n121), .ZN(n124) );
  INVD0 U375 ( .I(n881), .ZN(n832) );
  INVD0 U376 ( .I(n831), .ZN(n882) );
  XNR2D0 U377 ( .A1(n904), .A2(n903), .ZN(base_c1[12]) );
  XNR2D0 U378 ( .A1(n912), .A2(n911), .ZN(base_c1[13]) );
  AOI21D0 U379 ( .A1(n840), .A2(n838), .B(n716), .ZN(n717) );
  INVD0 U380 ( .I(n1342), .ZN(n1344) );
  NR2D0 U381 ( .A1(n812), .A2(n831), .ZN(n814) );
  XOR2D0 U382 ( .A1(n1355), .A2(n1354), .Z(d1_c1[18]) );
  OAI21D0 U383 ( .A1(n812), .A2(n881), .B(n811), .ZN(n813) );
  XNR2D0 U384 ( .A1(n1350), .A2(n1349), .ZN(d1_c1[19]) );
  XOR2D0 U385 ( .A1(n907), .A2(n861), .Z(base_c1[11]) );
  CKND2D1 U386 ( .A1(n804), .A2(n803), .ZN(n881) );
  OAI21D0 U387 ( .A1(n907), .A2(n900), .B(n899), .ZN(n904) );
  INVD0 U388 ( .I(n1347), .ZN(n1259) );
  INVD0 U389 ( .I(n839), .ZN(n716) );
  OAI21D0 U390 ( .A1(n907), .A2(n906), .B(n905), .ZN(n912) );
  CKND2D1 U391 ( .A1(n1267), .A2(n1266), .ZN(n1343) );
  OR2D1 U392 ( .A1(n1258), .A2(n1257), .Z(n1348) );
  INVD0 U393 ( .I(n1351), .ZN(n1353) );
  INVD0 U394 ( .I(n889), .ZN(n843) );
  CKND2D1 U395 ( .A1(n1258), .A2(n1257), .ZN(n1347) );
  XNR2D0 U396 ( .A1(n1359), .A2(n1358), .ZN(d1_c1[17]) );
  INVD0 U397 ( .I(n884), .ZN(n838) );
  OAI21D0 U398 ( .A1(n908), .A2(n905), .B(n909), .ZN(n494) );
  XOR2D0 U399 ( .A1(n867), .A2(n866), .Z(base_c1[10]) );
  INVD0 U400 ( .I(n891), .ZN(n710) );
  XOR2D0 U401 ( .A1(n798), .A2(n797), .Z(n804) );
  AOI21D0 U402 ( .A1(n846), .A2(n849), .B(n598), .ZN(n599) );
  XNR2D0 U403 ( .A1(n1263), .A2(n1260), .ZN(n1262) );
  INVD0 U404 ( .I(n1356), .ZN(n1254) );
  INVD0 U405 ( .I(n875), .ZN(n833) );
  CKND2D1 U406 ( .A1(n1256), .A2(n1255), .ZN(n1352) );
  INVD0 U407 ( .I(n848), .ZN(n598) );
  OAI21D0 U408 ( .A1(n862), .A2(n485), .B(n484), .ZN(n859) );
  CKND2D1 U409 ( .A1(n1041), .A2(n1260), .ZN(n1042) );
  XNR2D0 U410 ( .A1(n924), .A2(n923), .ZN(base_c1[8]) );
  XNR2D0 U411 ( .A1(n793), .A2(n673), .ZN(n715) );
  XOR2D0 U412 ( .A1(n1301), .A2(n1300), .Z(d1_c1[16]) );
  AOI21D0 U413 ( .A1(n916), .A2(n914), .B(n863), .ZN(n867) );
  INVD0 U414 ( .I(n854), .ZN(n856) );
  XNR2D0 U415 ( .A1(n916), .A2(n915), .ZN(base_c1[9]) );
  CKND2D1 U416 ( .A1(n713), .A2(n712), .ZN(n884) );
  CKND2D1 U417 ( .A1(n806), .A2(n805), .ZN(n874) );
  AOI21D0 U418 ( .A1(n865), .A2(n863), .B(n483), .ZN(n484) );
  NR2XD0 U419 ( .A1(n595), .A2(n594), .ZN(n854) );
  CKND2D1 U420 ( .A1(n595), .A2(n594), .ZN(n855) );
  XOR2D0 U421 ( .A1(n784), .A2(n818), .Z(n808) );
  NR2XD0 U422 ( .A1(n493), .A2(n492), .ZN(n908) );
  INVD0 U423 ( .I(n901), .ZN(n490) );
  XOR2D0 U424 ( .A1(n695), .A2(n694), .Z(n707) );
  XOR2D0 U425 ( .A1(n919), .A2(n870), .Z(base_c1[7]) );
  NR2XD0 U426 ( .A1(n1069), .A2(n1067), .ZN(n1260) );
  INVD0 U427 ( .I(n895), .ZN(n853) );
  XOR2D0 U428 ( .A1(n702), .A2(n701), .Z(n709) );
  INVD0 U429 ( .I(n862), .ZN(n916) );
  OAI21D0 U430 ( .A1(n919), .A2(n918), .B(n917), .ZN(n924) );
  OR2D0 U431 ( .A1(n826), .A2(n825), .Z(n828) );
  INVD0 U432 ( .I(n900), .ZN(n860) );
  INVD0 U433 ( .I(n852), .ZN(n896) );
  XOR2D0 U434 ( .A1(n684), .A2(n683), .Z(n713) );
  CKND2D1 U435 ( .A1(n597), .A2(n596), .ZN(n848) );
  FA1D1 U436 ( .A(carry2[26]), .B(sum2[26]), .CI(n148), .CO(n149), .S(
        shared_comb[26]) );
  CKND2D1 U437 ( .A1(n487), .A2(n486), .ZN(n899) );
  XNR2D0 U438 ( .A1(n787), .A2(n815), .ZN(n806) );
  OR2D0 U439 ( .A1(n489), .A2(n488), .Z(n902) );
  INVD0 U440 ( .I(n864), .ZN(n483) );
  AOI21D0 U441 ( .A1(n679), .A2(n700), .B(n678), .ZN(n684) );
  INVD0 U442 ( .I(n1297), .ZN(n1299) );
  XNR2D0 U443 ( .A1(n358), .A2(n357), .ZN(n493) );
  XOR2D0 U444 ( .A1(n1368), .A2(n1367), .Z(d1_c1[14]) );
  INVD0 U445 ( .I(n868), .ZN(n919) );
  NR2XD0 U446 ( .A1(n787), .A2(n815), .ZN(n784) );
  CKND2D1 U447 ( .A1(n593), .A2(n592), .ZN(n895) );
  XNR2D0 U448 ( .A1(n690), .A2(n589), .ZN(n597) );
  AOI21D0 U449 ( .A1(n459), .A2(n868), .B(n458), .ZN(n862) );
  XNR2D0 U450 ( .A1(n1363), .A2(n1362), .ZN(d1_c1[15]) );
  CKND2D1 U451 ( .A1(n1040), .A2(n1070), .ZN(n1067) );
  XNR2D0 U452 ( .A1(n1072), .A2(n1070), .ZN(n1071) );
  CKND2D0 U453 ( .A1(n865), .A2(n914), .ZN(n485) );
  XNR2D0 U454 ( .A1(n552), .A2(n551), .ZN(n595) );
  OAI21D0 U455 ( .A1(n819), .A2(n818), .B(n817), .ZN(n823) );
  XOR2D0 U456 ( .A1(n624), .A2(n557), .Z(n593) );
  OAI21D0 U457 ( .A1(n372), .A2(n496), .B(n499), .ZN(n358) );
  OAI21D0 U458 ( .A1(n624), .A2(n561), .B(n563), .ZN(n552) );
  CKND2D1 U459 ( .A1(n1251), .A2(n1250), .ZN(n1298) );
  OAI21D0 U460 ( .A1(n4530), .A2(n925), .B(n4520), .ZN(n868) );
  NR2XD0 U461 ( .A1(n1078), .A2(n1076), .ZN(n1070) );
  XOR2D0 U462 ( .A1(n372), .A2(n371), .Z(n489) );
  XOR2D0 U463 ( .A1(n367), .A2(n366), .Z(n487) );
  OR2D0 U464 ( .A1(n482), .A2(n481), .Z(n865) );
  INVD0 U465 ( .I(n913), .ZN(n863) );
  OAI21D0 U466 ( .A1(n920), .A2(n917), .B(n921), .ZN(n458) );
  XOR2D0 U467 ( .A1(n1377), .A2(n1376), .Z(d1_c1[12]) );
  XNR2D0 U468 ( .A1(n463), .A2(n462), .ZN(n482) );
  NR2XD0 U469 ( .A1(n457), .A2(n456), .ZN(n920) );
  OR2D0 U470 ( .A1(n480), .A2(n479), .Z(n914) );
  XNR2D0 U471 ( .A1(n1372), .A2(n1371), .ZN(d1_c1[13]) );
  XOR2D0 U472 ( .A1(n930), .A2(n929), .Z(base_c1[6]) );
  AOI21D0 U473 ( .A1(n463), .A2(n461), .B(n362), .ZN(n367) );
  CKND2D1 U474 ( .A1(n1039), .A2(n1038), .ZN(n1076) );
  INVD0 U475 ( .I(n1364), .ZN(n1366) );
  AOI21D0 U476 ( .A1(n928), .A2(n926), .B(n4510), .ZN(n4520) );
  XNR2D0 U477 ( .A1(n380), .A2(n379), .ZN(n457) );
  INVD0 U478 ( .I(n1277), .ZN(n1306) );
  OAI21D0 U479 ( .A1(n751), .A2(n750), .B(n749), .ZN(n752) );
  AOI21D0 U480 ( .A1(n933), .A2(n932), .B(n926), .ZN(n930) );
  CKND2D0 U481 ( .A1(n928), .A2(n927), .ZN(n929) );
  XNR2D0 U482 ( .A1(n474), .A2(n473), .ZN(n480) );
  CKND2D0 U483 ( .A1(n928), .A2(n932), .ZN(n4530) );
  CKND2D0 U484 ( .A1(n932), .A2(n931), .ZN(n934) );
  XOR2D0 U485 ( .A1(n469), .A2(n385), .Z(n4550) );
  XNR2D0 U486 ( .A1(n1089), .A2(n1091), .ZN(n1090) );
  OAI21D0 U487 ( .A1(n469), .A2(n376), .B(n383), .ZN(n380) );
  AOI21D0 U488 ( .A1(n748), .A2(n747), .B(n746), .ZN(n749) );
  INVD0 U489 ( .I(n622), .ZN(n565) );
  IOA21D0 U490 ( .A1(n1276), .A2(n113), .B(n1285), .ZN(n1277) );
  XOR2D0 U491 ( .A1(n1386), .A2(n1385), .Z(d1_c1[10]) );
  OAI21D0 U492 ( .A1(n469), .A2(n468), .B(n467), .ZN(n474) );
  XNR2D0 U493 ( .A1(n1381), .A2(n1380), .ZN(d1_c1[11]) );
  OR2D0 U494 ( .A1(n4500), .A2(n4490), .Z(n928) );
  OR2D0 U495 ( .A1(n4480), .A2(n4470), .Z(n932) );
  AOI21D0 U496 ( .A1(n937), .A2(n936), .B(n4460), .ZN(n925) );
  AOI21D0 U497 ( .A1(n503), .A2(n502), .B(n501), .ZN(n504) );
  OAI21D0 U498 ( .A1(n794), .A2(n790), .B(n795), .ZN(n746) );
  XNR2D0 U499 ( .A1(n1096), .A2(n1095), .ZN(n1097) );
  XOR2D0 U500 ( .A1(n821), .A2(n129), .Z(n822) );
  INVD0 U501 ( .I(n375), .ZN(n469) );
  INVD0 U502 ( .I(n687), .ZN(n688) );
  INVD0 U503 ( .I(n1378), .ZN(n1239) );
  INVD0 U504 ( .I(n618), .ZN(n689) );
  OAI21D0 U505 ( .A1(n564), .A2(n563), .B(n562), .ZN(n622) );
  INVD0 U506 ( .I(n561), .ZN(n556) );
  INVD0 U507 ( .I(n790), .ZN(n791) );
  INVD0 U508 ( .I(n742), .ZN(n792) );
  CKND2D0 U509 ( .A1(n816), .A2(n815), .ZN(n817) );
  OAI21D0 U510 ( .A1(n691), .A2(n687), .B(n692), .ZN(n621) );
  XOR2D0 U511 ( .A1(n1274), .A2(n1283), .Z(n1276) );
  INVD0 U512 ( .I(n794), .ZN(n796) );
  INVD0 U513 ( .I(n816), .ZN(n818) );
  XOR2D0 U514 ( .A1(n393), .A2(n392), .Z(n4500) );
  IOA21D0 U515 ( .A1(n1279), .A2(n116), .B(n1285), .ZN(n1311) );
  NR2XD0 U516 ( .A1(n691), .A2(n618), .ZN(n623) );
  CKND2D0 U517 ( .A1(n941), .A2(n940), .ZN(n942) );
  OAI21D0 U518 ( .A1(n467), .A2(n470), .B(n471), .ZN(n287) );
  INVD0 U519 ( .I(n747), .ZN(n653) );
  NR2XD0 U520 ( .A1(n1241), .A2(n1240), .ZN(n1373) );
  NR2XD0 U521 ( .A1(n745), .A2(x_mantissa[22]), .ZN(n794) );
  CKND2D1 U522 ( .A1(n672), .A2(n27), .ZN(n790) );
  OAI21D0 U523 ( .A1(n680), .A2(n699), .B(n681), .ZN(n747) );
  XNR2D0 U524 ( .A1(n399), .A2(n398), .ZN(n4480) );
  AOI21D0 U525 ( .A1(n399), .A2(n397), .B(n389), .ZN(n393) );
  NR2XD0 U526 ( .A1(n672), .A2(n27), .ZN(n742) );
  XNR2D0 U527 ( .A1(n1390), .A2(n1389), .ZN(d1_c1[9]) );
  OAI21D0 U528 ( .A1(n281), .A2(n388), .B(n280), .ZN(n375) );
  CKND2D1 U529 ( .A1(n521), .A2(n57), .ZN(n563) );
  NR2XD0 U530 ( .A1(n496), .A2(n500), .ZN(n503) );
  OAI21D0 U531 ( .A1(n943), .A2(n939), .B(n940), .ZN(n937) );
  INVD0 U532 ( .I(n460), .ZN(n362) );
  INVD0 U533 ( .I(n677), .ZN(n700) );
  XNR2D0 U534 ( .A1(n820), .A2(n129), .ZN(n816) );
  INVD0 U535 ( .I(n699), .ZN(n678) );
  INVD0 U536 ( .I(n680), .ZN(n682) );
  NR2XD0 U537 ( .A1(n521), .A2(n57), .ZN(n561) );
  NR2XD0 U538 ( .A1(n361), .A2(n363), .ZN(n497) );
  CKND2D0 U539 ( .A1(n936), .A2(n935), .ZN(n938) );
  CKND2D1 U540 ( .A1(n588), .A2(n23), .ZN(n687) );
  INVD0 U541 ( .I(n361), .ZN(n461) );
  OAI21D0 U542 ( .A1(n500), .A2(n499), .B(n498), .ZN(n501) );
  NR2D0 U543 ( .A1(n820), .A2(n129), .ZN(n821) );
  IOA21D0 U544 ( .A1(n1282), .A2(n115), .B(n1285), .ZN(n1318) );
  NR2XD0 U545 ( .A1(n549), .A2(n22), .ZN(n564) );
  CKND2D0 U546 ( .A1(n384), .A2(n378), .ZN(n468) );
  XNR2D0 U547 ( .A1(n587), .A2(n586), .ZN(n588) );
  AOI21D0 U548 ( .A1(n945), .A2(n946), .B(n425), .ZN(n943) );
  XOR2D0 U549 ( .A1(n775), .A2(n741), .Z(n745) );
  NR2XD0 U550 ( .A1(n1236), .A2(n1235), .ZN(n1382) );
  NR2XD0 U551 ( .A1(n338), .A2(n55), .ZN(n496) );
  XNR2D0 U552 ( .A1(n520), .A2(n519), .ZN(n521) );
  INVD0 U553 ( .I(n691), .ZN(n693) );
  AOI21D0 U554 ( .A1(n391), .A2(n389), .B(n279), .ZN(n280) );
  IOA21D0 U555 ( .A1(n1286), .A2(n113), .B(n1285), .ZN(n1324) );
  XOR2D0 U556 ( .A1(n671), .A2(n670), .Z(n672) );
  CKND2D0 U557 ( .A1(n4450), .A2(n4440), .ZN(n935) );
  CKND2D0 U558 ( .A1(n4350), .A2(n4340), .ZN(n940) );
  NR2D0 U559 ( .A1(n4350), .A2(n4340), .ZN(n939) );
  NR2XD0 U560 ( .A1(n652), .A2(n26), .ZN(n680) );
  INVD0 U561 ( .I(n388), .ZN(n399) );
  XOR2D0 U562 ( .A1(n770), .A2(n769), .Z(n815) );
  NR2XD0 U563 ( .A1(n355), .A2(n56), .ZN(n500) );
  CKND2D1 U564 ( .A1(n323), .A2(n53), .ZN(n460) );
  OAI21D0 U565 ( .A1(n775), .A2(n138), .B(n137), .ZN(n820) );
  OAI21D0 U566 ( .A1(n508), .A2(n507), .B(n524), .ZN(n520) );
  NR2XD0 U567 ( .A1(n286), .A2(n52), .ZN(n470) );
  INVD0 U568 ( .I(n757), .ZN(n775) );
  XOR2D0 U569 ( .A1(n508), .A2(n354), .Z(n355) );
  XOR2D0 U570 ( .A1(n337), .A2(n336), .Z(n338) );
  AOI21D0 U571 ( .A1(n757), .A2(n756), .B(n755), .ZN(n770) );
  OR2D0 U572 ( .A1(n283), .A2(n51), .Z(n378) );
  XOR2D0 U573 ( .A1(n567), .A2(n548), .Z(n549) );
  NR2XD0 U574 ( .A1(n324), .A2(n54), .ZN(n363) );
  NR2XD0 U575 ( .A1(n620), .A2(n24), .ZN(n691) );
  XNR2D0 U576 ( .A1(n635), .A2(n634), .ZN(n651) );
  CKND2D0 U577 ( .A1(n950), .A2(n949), .ZN(n952) );
  XNR2D0 U578 ( .A1(n657), .A2(n650), .ZN(n652) );
  AOI21D0 U579 ( .A1(n4380), .A2(n4370), .B(n276), .ZN(n388) );
  AOI21D0 U580 ( .A1(n657), .A2(n656), .B(n655), .ZN(n671) );
  CKND2D0 U581 ( .A1(n391), .A2(n397), .ZN(n281) );
  CKND2D0 U582 ( .A1(n945), .A2(n944), .ZN(n947) );
  OAI21D0 U583 ( .A1(n567), .A2(n601), .B(n604), .ZN(n587) );
  CKND2D0 U584 ( .A1(n391), .A2(n390), .ZN(n392) );
  XOR2D0 U585 ( .A1(n301), .A2(n300), .Z(n323) );
  INVD0 U586 ( .I(n390), .ZN(n279) );
  INVD0 U587 ( .I(n376), .ZN(n384) );
  CKND2D0 U588 ( .A1(n1397), .A2(n1396), .ZN(n1399) );
  XNR2D0 U589 ( .A1(n532), .A2(n322), .ZN(n324) );
  XNR2D0 U590 ( .A1(n225), .A2(n224), .ZN(n283) );
  CKND2D0 U591 ( .A1(n397), .A2(n396), .ZN(n398) );
  AOI21D0 U592 ( .A1(n290), .A2(n302), .B(n306), .ZN(n301) );
  CKND2D0 U593 ( .A1(n1402), .A2(n1401), .ZN(n1404) );
  CKND2D0 U594 ( .A1(n4370), .A2(n4360), .ZN(n4390) );
  XNR2D0 U595 ( .A1(n290), .A2(n237), .ZN(n286) );
  OAI21D0 U596 ( .A1(n4300), .A2(n426), .B(n4270), .ZN(n4380) );
  OAI21D0 U597 ( .A1(n136), .A2(n636), .B(n638), .ZN(n635) );
  CKND2D0 U598 ( .A1(n4280), .A2(n4270), .ZN(n4290) );
  AOI21D0 U599 ( .A1(n532), .A2(n339), .B(n342), .ZN(n337) );
  CKND2D0 U600 ( .A1(n424), .A2(n423), .ZN(n944) );
  OAI21D0 U601 ( .A1(n136), .A2(n730), .B(n729), .ZN(n757) );
  XOR2D0 U602 ( .A1(n136), .A2(n617), .Z(n620) );
  INVD0 U603 ( .I(n396), .ZN(n389) );
  NR2XD0 U604 ( .A1(n1231), .A2(n1230), .ZN(n1391) );
  OR2D0 U605 ( .A1(n278), .A2(n49), .Z(n391) );
  OAI21D0 U606 ( .A1(n948), .A2(n422), .B(n949), .ZN(n946) );
  HICIND1 U607 ( .A(n1128), .CIN(n1127), .CO(n1118), .S(n1130) );
  AOI21D0 U608 ( .A1(n403), .A2(n404), .B(n262), .ZN(n4300) );
  OR2D0 U609 ( .A1(n277), .A2(n48), .Z(n397) );
  XOR2D0 U610 ( .A1(n243), .A2(n242), .Z(n278) );
  HICOND1 U611 ( .A(n1136), .CI(n1135), .CON(n1127), .S(n1137) );
  OA21D0 U612 ( .A1(n611), .A2(n610), .B(n609), .Z(n136) );
  INVD0 U613 ( .I(n1265), .ZN(n1257) );
  CKND2D0 U614 ( .A1(n1228), .A2(n1227), .ZN(n1396) );
  XOR2D0 U615 ( .A1(n232), .A2(n208), .Z(n282) );
  OAI21D0 U616 ( .A1(n232), .A2(n209), .B(n227), .ZN(n225) );
  CKND2D0 U617 ( .A1(n421), .A2(n420), .ZN(n949) );
  CKND2D0 U618 ( .A1(n1411), .A2(n1410), .ZN(n1413) );
  XNR2D0 U619 ( .A1(n247), .A2(n246), .ZN(n277) );
  XNR2D0 U620 ( .A1(n274), .A2(n273), .ZN(n275) );
  CKND2D0 U621 ( .A1(n1226), .A2(n1225), .ZN(n1401) );
  INVD0 U622 ( .I(n312), .ZN(n232) );
  CKND2D0 U623 ( .A1(n266), .A2(n46), .ZN(n4270) );
  AOI21D0 U624 ( .A1(n247), .A2(n245), .B(n239), .ZN(n243) );
  CKND2D0 U625 ( .A1(n1406), .A2(n1405), .ZN(n1408) );
  HICIND1 U626 ( .A(n1143), .CIN(n1142), .CO(n1135), .S(n1144) );
  CKND2D0 U627 ( .A1(n403), .A2(n402), .ZN(n405) );
  INVD0 U628 ( .I(n1263), .ZN(n1041) );
  CKND2D0 U629 ( .A1(n261), .A2(n45), .ZN(n402) );
  INVD0 U630 ( .I(n238), .ZN(n247) );
  OAI21D0 U631 ( .A1(n269), .A2(n268), .B(n267), .ZN(n274) );
  OAI21D0 U632 ( .A1(n238), .A2(n199), .B(n198), .ZN(n312) );
  CKND2D0 U633 ( .A1(n722), .A2(n728), .ZN(n730) );
  CKND2D0 U634 ( .A1(n1223), .A2(n1222), .ZN(n1405) );
  AOI21D0 U635 ( .A1(n728), .A2(n727), .B(n726), .ZN(n729) );
  AOI21D0 U636 ( .A1(n608), .A2(n607), .B(n606), .ZN(n609) );
  OR2D1 U637 ( .A1(n1046), .A2(n963), .Z(n1263) );
  OR2D1 U638 ( .A1(n1046), .A2(n960), .Z(n1043) );
  CKND2D0 U639 ( .A1(n410), .A2(n409), .ZN(n411) );
  INVD0 U640 ( .I(n727), .ZN(n640) );
  INVD0 U641 ( .I(n639), .ZN(n633) );
  INVD0 U642 ( .I(n1072), .ZN(n1040) );
  XNR2D0 U643 ( .A1(n962), .A2(n961), .ZN(n963) );
  INVD0 U644 ( .I(n724), .ZN(n655) );
  OAI21D0 U645 ( .A1(n639), .A2(n638), .B(n637), .ZN(n727) );
  OAI21D0 U646 ( .A1(n531), .A2(n530), .B(n529), .ZN(n608) );
  NR2D0 U647 ( .A1(n721), .A2(n725), .ZN(n728) );
  INVD0 U648 ( .I(n636), .ZN(n616) );
  HICIND1 U649 ( .A(n1160), .CIN(n1159), .CO(n1150), .S(n1161) );
  INVD0 U650 ( .I(n721), .ZN(n656) );
  INVD0 U651 ( .I(n725), .ZN(n669) );
  CKND2D0 U652 ( .A1(n1221), .A2(n1220), .ZN(n1410) );
  OAI21D0 U653 ( .A1(n725), .A2(n724), .B(n723), .ZN(n726) );
  INVD0 U654 ( .I(n531), .ZN(n344) );
  AOI21D0 U655 ( .A1(n183), .A2(n264), .B(n182), .ZN(n238) );
  OAI21D0 U656 ( .A1(n310), .A2(n309), .B(n308), .ZN(n311) );
  INVD0 U657 ( .I(n771), .ZN(n756) );
  INVD0 U658 ( .I(n773), .ZN(n755) );
  OA21D0 U659 ( .A1(n774), .A2(n773), .B(n772), .Z(n137) );
  CKND2D0 U660 ( .A1(n1415), .A2(n1414), .ZN(n1417) );
  CKND2D0 U661 ( .A1(n260), .A2(n44), .ZN(n409) );
  XOR2D0 U662 ( .A1(n705), .A2(n801), .Z(n708) );
  XOR2D0 U663 ( .A1(n789), .A2(n873), .Z(n805) );
  CKND2D0 U664 ( .A1(n1218), .A2(n1217), .ZN(n1414) );
  XOR2D0 U665 ( .A1(n686), .A2(n801), .Z(n712) );
  XOR2D0 U666 ( .A1(n698), .A2(n697), .Z(n706) );
  CKND2D0 U667 ( .A1(n250), .A2(n249), .ZN(n252) );
  CKND2D0 U668 ( .A1(n272), .A2(n271), .ZN(n273) );
  XOR2D0 U669 ( .A1(n676), .A2(n801), .Z(n714) );
  XOR2D0 U670 ( .A1(n802), .A2(n801), .Z(n803) );
  INVD0 U671 ( .I(n605), .ZN(n585) );
  HICOND1 U672 ( .A(n1167), .CI(n1166), .CON(n1159), .S(n1168) );
  OAI21D0 U673 ( .A1(n251), .A2(n248), .B(n249), .ZN(n264) );
  AOI21D0 U674 ( .A1(n307), .A2(n306), .B(n305), .ZN(n308) );
  AOI21D0 U675 ( .A1(n528), .A2(n527), .B(n526), .ZN(n529) );
  OAI21D0 U676 ( .A1(n605), .A2(n604), .B(n603), .ZN(n606) );
  NR2XD0 U677 ( .A1(n632), .A2(x_mantissa[18]), .ZN(n639) );
  AOI21D0 U678 ( .A1(n343), .A2(n342), .B(n341), .ZN(n531) );
  FA1D1 U679 ( .A(carry2[11]), .B(sum2[11]), .CI(n153), .CO(n141), .S(
        shared_comb[11]) );
  INVD0 U680 ( .I(n304), .ZN(n305) );
  INVD0 U681 ( .I(n340), .ZN(n341) );
  INVD0 U682 ( .I(n525), .ZN(n526) );
  XOR2D0 U683 ( .A1(n591), .A2(n697), .Z(n596) );
  INVD0 U684 ( .I(n325), .ZN(n342) );
  INVD0 U685 ( .I(n507), .ZN(n522) );
  INVD0 U686 ( .I(n289), .ZN(n306) );
  NR2XD0 U687 ( .A1(n584), .A2(x_mantissa[16]), .ZN(n605) );
  AOI21D0 U688 ( .A1(n241), .A2(n239), .B(n197), .ZN(n198) );
  INR2XD0 U689 ( .A1(n704), .B1(n975), .ZN(n632) );
  OAI21D0 U690 ( .A1(n270), .A2(n267), .B(n271), .ZN(n182) );
  INR2XD0 U691 ( .A1(n674), .B1(n739), .ZN(n668) );
  CKND2D0 U692 ( .A1(n1216), .A2(n1215), .ZN(n1419) );
  INVD0 U693 ( .I(n1084), .ZN(n1039) );
  INR2XD0 U694 ( .A1(n685), .B1(n415), .ZN(n649) );
  AOI21D0 U695 ( .A1(n254), .A2(n255), .B(n176), .ZN(n251) );
  AOI21D0 U696 ( .A1(n231), .A2(n230), .B(n229), .ZN(n309) );
  CKND2D0 U697 ( .A1(n226), .A2(n227), .ZN(n208) );
  CKND2D0 U698 ( .A1(n263), .A2(n267), .ZN(n265) );
  XNR2D0 U699 ( .A1(n738), .A2(n737), .ZN(n800) );
  XNR2D0 U700 ( .A1(n648), .A2(n647), .ZN(n685) );
  XNR2D0 U701 ( .A1(n631), .A2(n630), .ZN(n704) );
  CKND2D0 U702 ( .A1(n245), .A2(n244), .ZN(n246) );
  XNR2D0 U703 ( .A1(n614), .A2(n613), .ZN(n696) );
  NR2XD0 U704 ( .A1(n546), .A2(x_mantissa[15]), .ZN(n601) );
  CKND2D0 U705 ( .A1(n241), .A2(n240), .ZN(n242) );
  XNR2D0 U706 ( .A1(n667), .A2(n666), .ZN(n674) );
  XNR2D0 U707 ( .A1(n766), .A2(n15), .ZN(n788) );
  CKND2D1 U708 ( .A1(n546), .A2(x_mantissa[15]), .ZN(n604) );
  CKND2D0 U709 ( .A1(n1213), .A2(n1212), .ZN(n1423) );
  INVD0 U710 ( .I(n209), .ZN(n226) );
  CKND2D0 U711 ( .A1(n231), .A2(n228), .ZN(n224) );
  INVD0 U712 ( .I(n244), .ZN(n239) );
  INVD0 U713 ( .I(n240), .ZN(n197) );
  INVD0 U714 ( .I(n1098), .ZN(n1095) );
  OR2D0 U715 ( .A1(n236), .A2(n51), .Z(n302) );
  CKND2D0 U716 ( .A1(n245), .A2(n241), .ZN(n199) );
  INVD0 U717 ( .I(n228), .ZN(n229) );
  OR2D0 U718 ( .A1(n299), .A2(x_mantissa[10]), .Z(n307) );
  NR2XD0 U719 ( .A1(n181), .A2(n46), .ZN(n270) );
  XOR2D0 U720 ( .A1(n555), .A2(n697), .Z(n594) );
  NR2D0 U721 ( .A1(n179), .A2(n44), .ZN(n248) );
  XOR2D0 U722 ( .A1(n560), .A2(n697), .Z(n592) );
  OR2D0 U723 ( .A1(n321), .A2(n53), .Z(n339) );
  OR2D0 U724 ( .A1(n335), .A2(x_mantissa[12]), .Z(n343) );
  HICOND1 U725 ( .A(n1183), .CI(n1182), .CON(n1173), .S(n1185) );
  CKND2D0 U726 ( .A1(n254), .A2(n253), .ZN(n256) );
  OR2D0 U727 ( .A1(n518), .A2(x_mantissa[14]), .Z(n528) );
  XOR2D0 U728 ( .A1(n360), .A2(n465), .Z(n492) );
  INVD0 U729 ( .I(n1091), .ZN(n1088) );
  OR2D0 U730 ( .A1(n195), .A2(n47), .Z(n245) );
  OAI21D0 U731 ( .A1(n111), .A2(n629), .B(n628), .ZN(n631) );
  INVD0 U732 ( .I(n1131), .ZN(n1128) );
  INR2XD0 U733 ( .A1(n4410), .B1(n783), .ZN(n181) );
  OAI21D0 U734 ( .A1(n111), .A2(n959), .B(n626), .ZN(n614) );
  CKND2D0 U735 ( .A1(n175), .A2(x_mantissa[1]), .ZN(n253) );
  INVD0 U736 ( .I(n1138), .ZN(n1136) );
  OR2D0 U737 ( .A1(n196), .A2(n48), .Z(n241) );
  INVD0 U738 ( .I(n1122), .ZN(n1119) );
  HICIND1 U739 ( .A(n1191), .CIN(n1190), .CO(n1182), .S(n1192) );
  CKND2D0 U740 ( .A1(n1428), .A2(n1427), .ZN(n1429) );
  OAI21D0 U741 ( .A1(n110), .A2(n645), .B(n644), .ZN(n648) );
  INR2XD0 U742 ( .A1(n359), .B1(n545), .ZN(n353) );
  OAI21D0 U743 ( .A1(n110), .A2(n781), .B(n765), .ZN(n766) );
  OAI21D0 U744 ( .A1(n111), .A2(n781), .B(n780), .ZN(n785) );
  INVD0 U745 ( .I(n1113), .ZN(n1111) );
  OAI21D0 U746 ( .A1(n110), .A2(n760), .B(n779), .ZN(n667) );
  XOR2D0 U747 ( .A1(n110), .A2(n1035), .Z(n590) );
  OR2D0 U748 ( .A1(n223), .A2(x_mantissa[8]), .Z(n231) );
  INR2XD0 U749 ( .A1(n368), .B1(n320), .ZN(n321) );
  INR2XD0 U750 ( .A1(n373), .B1(n545), .ZN(n335) );
  INR2XD0 U751 ( .A1(n553), .B1(n545), .ZN(n546) );
  OAI21D0 U752 ( .A1(n111), .A2(n735), .B(n734), .ZN(n738) );
  XNR2D0 U753 ( .A1(n544), .A2(n543), .ZN(n553) );
  CKND2D0 U754 ( .A1(n417), .A2(n17), .ZN(n418) );
  BUFFD0 U755 ( .I(n675), .Z(n415) );
  INR2XD0 U756 ( .A1(n394), .B1(n222), .ZN(n196) );
  INR2XD0 U757 ( .A1(n400), .B1(n222), .ZN(n195) );
  INVD0 U758 ( .I(n1060), .ZN(n1270) );
  BUFFD0 U759 ( .I(n675), .Z(n873) );
  BUFFD0 U760 ( .I(n675), .Z(n4420) );
  XOR2D0 U761 ( .A1(n1034), .A2(n977), .Z(n978) );
  XNR2D0 U762 ( .A1(n235), .A2(n234), .ZN(n476) );
  XNR2D0 U763 ( .A1(n517), .A2(n516), .ZN(n559) );
  BUFFD1 U764 ( .I(n739), .Z(n783) );
  NR2D0 U765 ( .A1(n180), .A2(n45), .ZN(n268) );
  INVD0 U766 ( .I(n782), .ZN(n110) );
  INR2XD0 U767 ( .A1(n68), .B1(n1058), .ZN(n1100) );
  XOR2D0 U768 ( .A1(n1047), .A2(n1261), .Z(n1332) );
  XNR2D0 U769 ( .A1(n334), .A2(n333), .ZN(n373) );
  INVD0 U770 ( .I(n782), .ZN(n111) );
  XNR2D0 U771 ( .A1(n298), .A2(n297), .ZN(n464) );
  XNR2D0 U772 ( .A1(n352), .A2(n351), .ZN(n359) );
  XNR2D0 U773 ( .A1(n319), .A2(n994), .ZN(n368) );
  XOR2D0 U774 ( .A1(n206), .A2(n1008), .Z(n386) );
  INVD0 U775 ( .I(n1140), .ZN(n69) );
  OAI21D0 U776 ( .A1(n119), .A2(n514), .B(n513), .ZN(n517) );
  BUFFD1 U777 ( .I(n554), .Z(n675) );
  OAI21D0 U778 ( .A1(n119), .A2(n349), .B(n348), .ZN(n352) );
  INVD0 U779 ( .I(n1291), .ZN(n1287) );
  XOR2D0 U780 ( .A1(n194), .A2(n193), .Z(n394) );
  XOR2D0 U781 ( .A1(n541), .A2(n221), .Z(n381) );
  BUFFD0 U782 ( .I(n554), .Z(n465) );
  XOR2D0 U783 ( .A1(n66), .A2(n996), .Z(n998) );
  OAI21D0 U784 ( .A1(n541), .A2(n571), .B(n579), .ZN(n334) );
  OAI21D0 U785 ( .A1(n119), .A2(n540), .B(n539), .ZN(n544) );
  HICIND1 U786 ( .A(n1205), .CIN(n1204), .CO(n1197), .S(n1207) );
  XOR2D0 U787 ( .A1(n188), .A2(n187), .Z(n400) );
  OAI21D0 U788 ( .A1(n119), .A2(n317), .B(n316), .ZN(n319) );
  OAI21D0 U789 ( .A1(n541), .A2(n296), .B(n295), .ZN(n298) );
  OAI21D0 U790 ( .A1(n541), .A2(n292), .B(n293), .ZN(n235) );
  INVD0 U791 ( .I(n1145), .ZN(n1143) );
  BUFFD0 U792 ( .I(n554), .Z(n477) );
  INVD0 U793 ( .I(n1154), .ZN(n1151) );
  AOI21D0 U794 ( .A1(n204), .A2(n211), .B(n215), .ZN(n194) );
  AOI21D0 U795 ( .A1(n204), .A2(n185), .B(n184), .ZN(n188) );
  CKND2D0 U796 ( .A1(n257), .A2(x_mantissa[0]), .ZN(n258) );
  INVD0 U797 ( .I(n1162), .ZN(n1160) );
  INVD0 U798 ( .I(n1275), .ZN(n1283) );
  INVD0 U799 ( .I(n1177), .ZN(n1174) );
  AOI21D0 U800 ( .A1(n204), .A2(n203), .B(n202), .ZN(n206) );
  INVD0 U801 ( .I(n582), .ZN(n119) );
  AOI21D0 U802 ( .A1(n764), .A2(n733), .B(n732), .ZN(n734) );
  AOI21D0 U803 ( .A1(n538), .A2(n537), .B(n536), .ZN(n539) );
  AOI21D0 U804 ( .A1(n538), .A2(n570), .B(n575), .ZN(n513) );
  CKND2D0 U805 ( .A1(n537), .A2(n534), .ZN(n540) );
  AOI21D0 U806 ( .A1(n538), .A2(n347), .B(n346), .ZN(n348) );
  CKND2D0 U807 ( .A1(n534), .A2(n347), .ZN(n349) );
  AOI21D0 U808 ( .A1(n764), .A2(n763), .B(n776), .ZN(n765) );
  CKND2D0 U809 ( .A1(n534), .A2(n570), .ZN(n514) );
  INVD1 U810 ( .I(n1443), .ZN(n1046) );
  INVD0 U811 ( .I(n582), .ZN(n541) );
  CKND2D0 U812 ( .A1(n1049), .A2(n1273), .ZN(n131) );
  INR2D0 U813 ( .A1(n414), .B1(n320), .ZN(n257) );
  INVD0 U814 ( .I(n579), .ZN(n538) );
  NR2D0 U815 ( .A1(n533), .A2(n569), .ZN(n537) );
  OAI21D0 U816 ( .A1(n201), .A2(n210), .B(n212), .ZN(n202) );
  OAI21D0 U817 ( .A1(n579), .A2(n578), .B(n577), .ZN(n580) );
  INVD0 U818 ( .I(n219), .ZN(n204) );
  BUFFD1 U819 ( .I(n1049), .Z(n545) );
  OAI21D0 U820 ( .A1(n178), .A2(n953), .B(n165), .ZN(n170) );
  AOI21D0 U821 ( .A1(n664), .A2(n643), .B(n642), .ZN(n644) );
  CKND2D0 U822 ( .A1(n660), .A2(n643), .ZN(n645) );
  INVD0 U823 ( .I(n664), .ZN(n628) );
  CKND2D0 U824 ( .A1(n733), .A2(n761), .ZN(n666) );
  CKND2D0 U825 ( .A1(n327), .A2(n315), .ZN(n317) );
  AOI21D0 U826 ( .A1(n331), .A2(n315), .B(n314), .ZN(n316) );
  BUFFD1 U827 ( .I(n983), .Z(n320) );
  AOI21D0 U828 ( .A1(n665), .A2(n664), .B(n663), .ZN(n779) );
  CKND2D1 U829 ( .A1(n1273), .A2(n1272), .ZN(n1280) );
  CKND2D0 U830 ( .A1(n660), .A2(n665), .ZN(n760) );
  BUFFD1 U831 ( .I(n983), .Z(n222) );
  CKND2D0 U832 ( .A1(n220), .A2(n293), .ZN(n221) );
  AOI21D0 U833 ( .A1(n576), .A2(n575), .B(n574), .ZN(n577) );
  CKND2D1 U834 ( .A1(n12), .A2(n956), .ZN(n997) );
  AOI21D0 U835 ( .A1(n332), .A2(n331), .B(n330), .ZN(n579) );
  AOI21D0 U836 ( .A1(n216), .A2(n215), .B(n214), .ZN(n217) );
  CKND2D0 U837 ( .A1(n736), .A2(n762), .ZN(n737) );
  AOI21D0 U838 ( .A1(n162), .A2(n164), .B(n161), .ZN(n219) );
  CKND2D0 U839 ( .A1(n186), .A2(n191), .ZN(n187) );
  CKND2D0 U840 ( .A1(n211), .A2(n216), .ZN(n218) );
  NR2D0 U841 ( .A1(n1014), .A2(n189), .ZN(n211) );
  NR2XD0 U842 ( .A1(n292), .A2(n291), .ZN(n327) );
  INR2XD0 U843 ( .A1(n1195), .B1(n1054), .ZN(n1171) );
  INVD0 U844 ( .I(n1147), .ZN(n1055) );
  CKND2D0 U845 ( .A1(n192), .A2(n212), .ZN(n193) );
  NR2XD0 U846 ( .A1(n510), .A2(n509), .ZN(n570) );
  INVD0 U847 ( .I(n510), .ZN(n347) );
  NR2D0 U848 ( .A1(n959), .A2(n625), .ZN(n660) );
  INVD0 U849 ( .I(n326), .ZN(n315) );
  INVD0 U850 ( .I(n112), .ZN(n116) );
  INVD0 U851 ( .I(n659), .ZN(n643) );
  INVD0 U852 ( .I(n1115), .ZN(n1057) );
  INVD0 U853 ( .I(n1206), .ZN(n1064) );
  OAI21D0 U854 ( .A1(n535), .A2(n569), .B(n572), .ZN(n536) );
  INVD0 U855 ( .I(n758), .ZN(n733) );
  INVD0 U856 ( .I(n961), .ZN(n15) );
  XOR2D0 U857 ( .A1(n33), .A2(n205), .Z(n1008) );
  XOR2D0 U858 ( .A1(n37), .A2(n318), .Z(n994) );
  XOR2D0 U859 ( .A1(n42), .A2(n583), .Z(n1035) );
  NR2XD0 U860 ( .A1(n37), .A2(n36), .ZN(n326) );
  INVD0 U861 ( .I(n986), .ZN(n957) );
  INVD0 U862 ( .I(n1000), .ZN(n955) );
  NR2D0 U863 ( .A1(y_mantissa[6]), .A2(n31), .ZN(n189) );
  CKND2D0 U864 ( .A1(y_mantissa[16]), .A2(n41), .ZN(n573) );
  BUFFD1 U865 ( .I(n1048), .Z(n1273) );
  NR2XD0 U866 ( .A1(n35), .A2(n34), .ZN(n292) );
  NR2XD0 U867 ( .A1(n43), .A2(n42), .ZN(n959) );
  CKND2D0 U868 ( .A1(n38), .A2(n37), .ZN(n329) );
  CKND2D0 U869 ( .A1(n30), .A2(n29), .ZN(n167) );
  NR2D0 U870 ( .A1(y_mantissa[16]), .A2(n41), .ZN(n568) );
  CKND2D0 U871 ( .A1(y_mantissa[21]), .A2(n20), .ZN(n761) );
  CKND2D0 U872 ( .A1(n28), .A2(y_mantissa[1]), .ZN(n171) );
  NR2D0 U873 ( .A1(y_mantissa[20]), .A2(n19), .ZN(n658) );
  NR2D0 U874 ( .A1(n126), .A2(n21), .ZN(n759) );
  CKND2D0 U875 ( .A1(y_mantissa[8]), .A2(n33), .ZN(n213) );
  NR2D0 U876 ( .A1(y_mantissa[21]), .A2(n20), .ZN(n758) );
  CKND2D0 U877 ( .A1(n128), .A2(n21), .ZN(n762) );
  INVD0 U878 ( .I(n1061), .ZN(n27) );
  INVD0 U879 ( .I(n973), .ZN(n18) );
  INVD0 U880 ( .I(n967), .ZN(n20) );
  INVD0 U881 ( .I(n970), .ZN(n19) );
  INVD0 U882 ( .I(n1163), .ZN(n50) );
  INVD0 U883 ( .I(n964), .ZN(n21) );
  INVD0 U884 ( .I(n985), .ZN(n40) );
  INVD0 U885 ( .I(n1139), .ZN(n53) );
  INVD0 U886 ( .I(n1010), .ZN(n33) );
  INVD0 U887 ( .I(n1013), .ZN(n32) );
  INVD0 U888 ( .I(n1021), .ZN(n30) );
  INVD0 U889 ( .I(n1004), .ZN(n35) );
  INVD0 U890 ( .I(n163), .ZN(n31) );
  INVD0 U891 ( .I(n999), .ZN(n36) );
  INVD0 U892 ( .I(n205), .ZN(n34) );
  INVD0 U893 ( .I(n996), .ZN(n37) );
  INVD0 U894 ( .I(n318), .ZN(n38) );
  INVD0 U895 ( .I(n989), .ZN(n39) );
  INVD0 U896 ( .I(n1026), .ZN(n28) );
  INVD0 U897 ( .I(n979), .ZN(n41) );
  INVD0 U898 ( .I(n177), .ZN(n29) );
  INVD0 U899 ( .I(n1194), .ZN(n46) );
  INVD0 U900 ( .I(n1073), .ZN(n26) );
  INVD0 U901 ( .I(n1201), .ZN(n45) );
  INVD0 U902 ( .I(n1079), .ZN(n25) );
  INVD0 U903 ( .I(n1187), .ZN(n47) );
  INVD0 U904 ( .I(n1146), .ZN(n52) );
  HA1D0 U905 ( .A(n1052), .B(n1051), .CO(n1210) );
  INVD0 U906 ( .I(n1178), .ZN(n48) );
  INVD0 U907 ( .I(n1155), .ZN(n51) );
  INVD0 U908 ( .I(n1123), .ZN(n55) );
  INVD0 U909 ( .I(n1132), .ZN(n54) );
  INVD0 U910 ( .I(n1085), .ZN(n24) );
  INVD0 U911 ( .I(n1092), .ZN(n23) );
  INVD0 U912 ( .I(n1170), .ZN(n49) );
  INVD0 U913 ( .I(n1106), .ZN(n57) );
  INVD0 U914 ( .I(n1114), .ZN(n56) );
  INVD0 U915 ( .I(n1099), .ZN(n22) );
  INVD0 U916 ( .I(shared_s4[9]), .ZN(n78) );
  INVD0 U917 ( .I(shared_s4[10]), .ZN(n80) );
  INVD0 U918 ( .I(shared_s4[8]), .ZN(n76) );
  BUFFD0 U919 ( .I(divide_s5), .Z(n1441) );
  INVD0 U920 ( .I(shared_s4[12]), .ZN(n84) );
  INVD0 U921 ( .I(shared_s4[11]), .ZN(n82) );
  BUFFD1 U922 ( .I(shared_s4[28]), .Z(n120) );
  INVD0 U923 ( .I(DP_OP_20J1_131_4019_n134), .ZN(n126) );
  INVD0 U924 ( .I(x_mantissa[4]), .ZN(n1194) );
  INVD0 U925 ( .I(x_mantissa[3]), .ZN(n1201) );
  INVD0 U926 ( .I(x_mantissa[2]), .ZN(n1209) );
  NR2XD0 U927 ( .A1(y_mantissa[3]), .A2(y_mantissa[2]), .ZN(n953) );
  INVD0 U928 ( .I(x_mantissa[14]), .ZN(n1114) );
  INVD0 U929 ( .I(x_mantissa[7]), .ZN(n1170) );
  INVD0 U930 ( .I(x_mantissa[13]), .ZN(n1123) );
  INVD0 U931 ( .I(x_mantissa[9]), .ZN(n1155) );
  INVD0 U932 ( .I(x_mantissa[8]), .ZN(n1163) );
  INVD0 U933 ( .I(x_mantissa[6]), .ZN(n1178) );
  INVD0 U934 ( .I(x_mantissa[5]), .ZN(n1187) );
  INVD0 U935 ( .I(x_mantissa[11]), .ZN(n1139) );
  INVD0 U936 ( .I(x_mantissa[15]), .ZN(n1106) );
  INVD0 U937 ( .I(x_mantissa[12]), .ZN(n1132) );
  INVD0 U938 ( .I(DP_OP_20J1_131_4019_n134), .ZN(n127) );
  INVD0 U939 ( .I(y_mantissa[7]), .ZN(n1010) );
  INVD0 U940 ( .I(y_mantissa[4]), .ZN(n1021) );
  INVD0 U941 ( .I(y_mantissa[5]), .ZN(n163) );
  INVD0 U942 ( .I(y_mantissa[9]), .ZN(n1004) );
  NR2XD0 U943 ( .A1(y_mantissa[8]), .A2(y_mantissa[7]), .ZN(n1005) );
  NR2XD0 U944 ( .A1(y_mantissa[7]), .A2(y_mantissa[6]), .ZN(n210) );
  CKND2D0 U945 ( .A1(y_mantissa[17]), .A2(y_mantissa[18]), .ZN(n627) );
  NR2XD0 U946 ( .A1(y_mantissa[5]), .A2(y_mantissa[4]), .ZN(n1014) );
  CKND2D0 U947 ( .A1(y_mantissa[20]), .A2(y_mantissa[19]), .ZN(n662) );
  INVD0 U948 ( .I(y_mantissa[2]), .ZN(n1026) );
  NR2XD0 U949 ( .A1(y_mantissa[12]), .A2(y_mantissa[11]), .ZN(n990) );
  INVD0 U950 ( .I(y_mantissa[3]), .ZN(n177) );
  NR2XD0 U951 ( .A1(y_mantissa[15]), .A2(y_mantissa[14]), .ZN(n569) );
  CKND2D0 U952 ( .A1(y_mantissa[10]), .A2(y_mantissa[9]), .ZN(n294) );
  INVD0 U953 ( .I(DP_OP_20J1_131_4019_n134), .ZN(n128) );
  INVD0 U954 ( .I(y_mantissa[8]), .ZN(n205) );
  INVD0 U955 ( .I(y_mantissa[11]), .ZN(n996) );
  CKND2D0 U956 ( .A1(y_mantissa[14]), .A2(y_mantissa[13]), .ZN(n512) );
  INVD0 U957 ( .I(x_mantissa[10]), .ZN(n1146) );
  INVD0 U958 ( .I(y_mantissa[12]), .ZN(n318) );
  CKND2D0 U959 ( .A1(y_mantissa[1]), .A2(y_mantissa[0]), .ZN(n173) );
  INVD0 U960 ( .I(x_mantissa[0]), .ZN(n1051) );
  BUFFD0 U962 ( .I(n1171), .Z(n14) );
  INVD0 U963 ( .I(n1031), .ZN(n16) );
  INVD0 U964 ( .I(n1052), .ZN(n17) );
  INVD1 U965 ( .I(n977), .ZN(n42) );
  INVD1 U966 ( .I(n583), .ZN(n43) );
  INVD0 U967 ( .I(n1209), .ZN(n44) );
  INVD1 U968 ( .I(n58), .ZN(n59) );
  INVD1 U969 ( .I(n62), .ZN(n63) );
  INVD1 U970 ( .I(n64), .ZN(n65) );
  INVD1 U971 ( .I(n997), .ZN(n67) );
  INVD1 U972 ( .I(n1140), .ZN(n68) );
  INVD1 U973 ( .I(n70), .ZN(n71) );
  INVD1 U974 ( .I(n74), .ZN(n75) );
  INVD1 U975 ( .I(n76), .ZN(n77) );
  INVD1 U976 ( .I(n78), .ZN(n79) );
  MUX2D0 U977 ( .I0(n30), .I1(n1023), .S(n1028), .Z(n1193) );
  INVD1 U978 ( .I(n80), .ZN(n81) );
  INVD1 U979 ( .I(n82), .ZN(n83) );
  INVD1 U980 ( .I(n84), .ZN(n85) );
  INVD1 U981 ( .I(n88), .ZN(n89) );
  INVD1 U982 ( .I(n92), .ZN(n93) );
  INVD1 U983 ( .I(n94), .ZN(n95) );
  INVD1 U984 ( .I(n96), .ZN(n97) );
  INVD1 U985 ( .I(n98), .ZN(n99) );
  INVD1 U986 ( .I(n100), .ZN(n101) );
  INVD1 U987 ( .I(n102), .ZN(n103) );
  INVD1 U988 ( .I(n104), .ZN(n105) );
  INVD1 U989 ( .I(n1289), .ZN(n112) );
  INVD1 U990 ( .I(n112), .ZN(n114) );
  INVD1 U991 ( .I(n112), .ZN(n115) );
  BUFFD1 U992 ( .I(shared_s4[5]), .Z(n117) );
  FA1D0 U993 ( .A(carry2[5]), .B(sum2[5]), .CI(n151), .CO(n1432), .S(
        shared_comb[5]) );
  CKBD1 U994 ( .I(shared_s4[6]), .Z(n118) );
  INVD1 U995 ( .I(y_mantissa[22]), .ZN(DP_OP_20J1_131_4019_n134) );
  OR2D0 U996 ( .A1(n28), .A2(n16), .Z(n130) );
  AO21D1 U997 ( .A1(n835), .A2(n720), .B(n719), .Z(n132) );
  OR2D0 U998 ( .A1(n771), .A2(n774), .Z(n138) );
  INR2D1 U999 ( .A1(n1022), .B1(n954), .ZN(n1011) );
  INVD0 U1000 ( .I(n1032), .ZN(n1033) );
  HICOND1 U1001 ( .A(n1198), .CI(n1197), .CON(n1190), .S(n1199) );
  HICIND1 U1002 ( .A(n1174), .CIN(n1173), .CO(n1166), .S(n1176) );
  HICOND1 U1003 ( .A(n1151), .CI(n1150), .CON(n1142), .S(n1153) );
  HICOND1 U1004 ( .A(n1119), .CI(n1118), .CON(n1110), .S(n1121) );
  MUX2D0 U1005 ( .I0(n28), .I1(n1029), .S(n1028), .Z(n1208) );
  MUX2D0 U1006 ( .I0(n1072), .I1(n1071), .S(n1261), .Z(n1256) );
  AOI21D1 U1007 ( .A1(n1339), .A2(n1340), .B(n1269), .ZN(n1336) );
  FA1D0 U1008 ( .A(carry2[12]), .B(sum2[12]), .CI(n141), .CO(n154), .S(
        shared_comb[12]) );
  FA1D0 U1009 ( .A(carry2[27]), .B(sum2[27]), .CI(n149), .CO(n150), .S(
        shared_comb[27]) );
  FA1D2 U1010 ( .A(carry2[8]), .B(sum2[8]), .CI(n139), .CO(n152), .S(
        shared_comb[8]) );
  FA1D2 U1011 ( .A(carry2[10]), .B(sum2[10]), .CI(n140), .CO(n153), .S(
        shared_comb[10]) );
  FA1D2 U1012 ( .A(carry2[14]), .B(sum2[14]), .CI(n142), .CO(n155), .S(
        shared_comb[14]) );
  FA1D2 U1013 ( .A(carry2[16]), .B(sum2[16]), .CI(n143), .CO(n156), .S(
        shared_comb[16]) );
  FA1D2 U1014 ( .A(carry2[18]), .B(sum2[18]), .CI(n144), .CO(n157), .S(
        shared_comb[18]) );
  FA1D2 U1015 ( .A(carry2[20]), .B(sum2[20]), .CI(n145), .CO(n158), .S(
        shared_comb[20]) );
  FA1D2 U1016 ( .A(carry2[22]), .B(sum2[22]), .CI(n146), .CO(n159), .S(
        shared_comb[22]) );
  FA1D2 U1017 ( .A(carry2[24]), .B(sum2[24]), .CI(n147), .CO(n160), .S(
        shared_comb[24]) );
  FA1D2 U1018 ( .A(carry2[9]), .B(sum2[9]), .CI(n152), .CO(n140), .S(
        shared_comb[9]) );
  FA1D2 U1019 ( .A(carry2[13]), .B(sum2[13]), .CI(n154), .CO(n142), .S(
        shared_comb[13]) );
  FA1D2 U1020 ( .A(carry2[15]), .B(sum2[15]), .CI(n155), .CO(n143), .S(
        shared_comb[15]) );
  FA1D2 U1021 ( .A(carry2[17]), .B(sum2[17]), .CI(n156), .CO(n144), .S(
        shared_comb[17]) );
  FA1D2 U1022 ( .A(carry2[19]), .B(sum2[19]), .CI(n157), .CO(n145), .S(
        shared_comb[19]) );
  FA1D2 U1023 ( .A(carry2[21]), .B(sum2[21]), .CI(n158), .CO(n146), .S(
        shared_comb[21]) );
  FA1D2 U1024 ( .A(carry2[23]), .B(sum2[23]), .CI(n159), .CO(n147), .S(
        shared_comb[23]) );
  FA1D2 U1025 ( .A(carry2[25]), .B(sum2[25]), .CI(n160), .CO(n148), .S(
        shared_comb[25]) );
  NR2D0 U1026 ( .A1(n30), .A2(n29), .ZN(n166) );
  NR2D0 U1027 ( .A1(n953), .A2(n166), .ZN(n162) );
  CKND2D0 U1028 ( .A1(n171), .A2(n173), .ZN(n164) );
  CKND2D0 U1029 ( .A1(n167), .A2(n165), .ZN(n161) );
  XOR2D0 U1030 ( .A1(y_mantissa[4]), .A2(n163), .Z(n1018) );
  XNR2D0 U1031 ( .A1(n204), .A2(n1018), .ZN(n4410) );
  INVD1 U1032 ( .I(n1046), .ZN(n739) );
  INVD0 U1033 ( .I(n164), .ZN(n178) );
  INVD0 U1034 ( .I(n166), .ZN(n168) );
  CKND2D0 U1035 ( .A1(n168), .A2(n167), .ZN(n169) );
  XNR2D0 U1036 ( .A1(n170), .A2(n169), .ZN(n4320) );
  NR2D0 U1037 ( .A1(n270), .A2(n268), .ZN(n183) );
  CKND2D0 U1038 ( .A1(n130), .A2(n171), .ZN(n172) );
  XOR2D0 U1039 ( .A1(n172), .A2(n173), .Z(n412) );
  OR2D0 U1040 ( .A1(n175), .A2(x_mantissa[1]), .Z(n254) );
  OR2D0 U1041 ( .A1(n16), .A2(y_mantissa[0]), .Z(n174) );
  CKAN2D0 U1042 ( .A1(n174), .A2(n173), .Z(n414) );
  INVD0 U1043 ( .I(n258), .ZN(n255) );
  INVD0 U1044 ( .I(n253), .ZN(n176) );
  XOR2D0 U1045 ( .A1(y_mantissa[2]), .A2(n177), .Z(n1024) );
  XOR2D0 U1046 ( .A1(n178), .A2(n1024), .Z(n406) );
  INVD0 U1047 ( .I(n1014), .ZN(n185) );
  INVD0 U1048 ( .I(n190), .ZN(n184) );
  INVD0 U1049 ( .I(n189), .ZN(n186) );
  CKND2D0 U1050 ( .A1(n191), .A2(n190), .ZN(n215) );
  INVD0 U1051 ( .I(n210), .ZN(n192) );
  INVD0 U1052 ( .I(n211), .ZN(n200) );
  NR2D0 U1053 ( .A1(n200), .A2(n210), .ZN(n203) );
  INVD0 U1054 ( .I(n215), .ZN(n201) );
  CKND2D0 U1055 ( .A1(n213), .A2(n212), .ZN(n214) );
  INVD0 U1056 ( .I(n292), .ZN(n220) );
  INVD0 U1057 ( .I(n227), .ZN(n230) );
  OAI21D1 U1058 ( .A1(n232), .A2(n303), .B(n309), .ZN(n290) );
  INVD0 U1059 ( .I(n291), .ZN(n233) );
  INVD0 U1060 ( .I(n248), .ZN(n250) );
  XOR2D0 U1061 ( .A1(n252), .A2(n251), .Z(n261) );
  OR2D0 U1062 ( .A1(n261), .A2(n45), .Z(n403) );
  XNR2D0 U1063 ( .A1(n256), .A2(n255), .ZN(n260) );
  NR2D0 U1064 ( .A1(n260), .A2(n44), .ZN(n408) );
  OR2D0 U1065 ( .A1(n257), .A2(x_mantissa[0]), .Z(n259) );
  CKAN2D0 U1066 ( .A1(n259), .A2(n258), .Z(n417) );
  OAI21D0 U1067 ( .A1(n408), .A2(n418), .B(n409), .ZN(n404) );
  INVD0 U1068 ( .I(n402), .ZN(n262) );
  INVD0 U1069 ( .I(n268), .ZN(n263) );
  INVD0 U1070 ( .I(n264), .ZN(n269) );
  XOR2D0 U1071 ( .A1(n265), .A2(n269), .Z(n266) );
  NR2D0 U1072 ( .A1(n266), .A2(n46), .ZN(n426) );
  INVD0 U1073 ( .I(n270), .ZN(n272) );
  OR2D0 U1074 ( .A1(n275), .A2(n47), .Z(n4370) );
  INVD0 U1075 ( .I(n4360), .ZN(n276) );
  INVD0 U1076 ( .I(n383), .ZN(n285) );
  INVD0 U1077 ( .I(n377), .ZN(n284) );
  AOI21D1 U1078 ( .A1(n288), .A2(n375), .B(n287), .ZN(n506) );
  INVD0 U1079 ( .I(n327), .ZN(n296) );
  CKND2D0 U1080 ( .A1(n294), .A2(n293), .ZN(n331) );
  INVD0 U1081 ( .I(n331), .ZN(n295) );
  AOI21D1 U1082 ( .A1(n313), .A2(n312), .B(n311), .ZN(n611) );
  INVD0 U1083 ( .I(n328), .ZN(n314) );
  AOI21D1 U1084 ( .A1(n463), .A2(n497), .B(n502), .ZN(n372) );
  CKND2D0 U1085 ( .A1(n329), .A2(n328), .ZN(n330) );
  INVD0 U1086 ( .I(n523), .ZN(n345) );
  AOI21D1 U1087 ( .A1(n532), .A2(n345), .B(n344), .ZN(n508) );
  INVD0 U1088 ( .I(n571), .ZN(n534) );
  INVD0 U1089 ( .I(n511), .ZN(n346) );
  INVD0 U1090 ( .I(n509), .ZN(n350) );
  INVD0 U1091 ( .I(n500), .ZN(n356) );
  CKBD1 U1092 ( .I(n982), .Z(n1272) );
  INVD0 U1093 ( .I(n1050), .ZN(n558) );
  CKAN2D0 U1094 ( .A1(n359), .A2(n558), .Z(n360) );
  INVD1 U1095 ( .I(n1272), .ZN(n1049) );
  INVD1 U1096 ( .I(n1050), .ZN(n554) );
  INVD0 U1097 ( .I(n363), .ZN(n365) );
  INVD0 U1098 ( .I(n1272), .ZN(n475) );
  CKAN2D0 U1099 ( .A1(n368), .A2(n475), .Z(n369) );
  XOR2D0 U1100 ( .A1(n369), .A2(n465), .Z(n486) );
  INVD0 U1101 ( .I(n496), .ZN(n370) );
  CKAN2D0 U1102 ( .A1(n373), .A2(n558), .Z(n374) );
  XOR2D0 U1103 ( .A1(n374), .A2(n465), .Z(n488) );
  CKAN2D0 U1104 ( .A1(n381), .A2(n475), .Z(n382) );
  XOR2D0 U1105 ( .A1(n382), .A2(n477), .Z(n456) );
  INVD0 U1106 ( .I(n1272), .ZN(n4400) );
  CKAN2D0 U1107 ( .A1(n386), .A2(n4400), .Z(n387) );
  XOR2D0 U1108 ( .A1(n387), .A2(n477), .Z(n4540) );
  NR2D0 U1109 ( .A1(n920), .A2(n918), .ZN(n459) );
  CKAN2D0 U1110 ( .A1(n394), .A2(n4400), .Z(n395) );
  XOR2D0 U1111 ( .A1(n395), .A2(n477), .Z(n4490) );
  CKAN2D0 U1112 ( .A1(n400), .A2(n4400), .Z(n401) );
  XOR2D0 U1113 ( .A1(n401), .A2(n4420), .Z(n4470) );
  XNR2D0 U1114 ( .A1(n405), .A2(n404), .ZN(n424) );
  INVD0 U1115 ( .I(n1050), .ZN(n4310) );
  CKAN2D0 U1116 ( .A1(n406), .A2(n4310), .Z(n407) );
  XOR2D0 U1117 ( .A1(n407), .A2(n4420), .Z(n423) );
  OR2D0 U1118 ( .A1(n424), .A2(n423), .Z(n945) );
  INVD0 U1119 ( .I(n408), .ZN(n410) );
  XOR2D0 U1120 ( .A1(n411), .A2(n418), .Z(n421) );
  CKAN2D0 U1121 ( .A1(n412), .A2(n4310), .Z(n413) );
  XOR2D0 U1122 ( .A1(n413), .A2(n415), .Z(n420) );
  NR2D0 U1123 ( .A1(n421), .A2(n420), .ZN(n948) );
  CKAN2D0 U1124 ( .A1(n414), .A2(n4310), .Z(n416) );
  XOR2D0 U1125 ( .A1(n416), .A2(n415), .Z(n872) );
  OR2D0 U1126 ( .A1(n417), .A2(n17), .Z(n419) );
  CKAN2D0 U1127 ( .A1(n419), .A2(n418), .Z(n871) );
  INVD0 U1128 ( .I(n951), .ZN(n422) );
  INVD0 U1129 ( .I(n944), .ZN(n425) );
  INVD0 U1130 ( .I(n426), .ZN(n4280) );
  XOR2D0 U1131 ( .A1(n4300), .A2(n4290), .Z(n4350) );
  CKAN2D0 U1132 ( .A1(n4320), .A2(n4310), .Z(n4330) );
  XOR2D0 U1133 ( .A1(n4330), .A2(n4420), .Z(n4340) );
  XNR2D0 U1134 ( .A1(n4390), .A2(n4380), .ZN(n4450) );
  CKAN2D0 U1135 ( .A1(n4410), .A2(n4400), .Z(n4430) );
  XOR2D0 U1136 ( .A1(n4430), .A2(n4420), .Z(n4440) );
  OR2D0 U1137 ( .A1(n4450), .A2(n4440), .Z(n936) );
  INVD0 U1138 ( .I(n935), .ZN(n4460) );
  INVD0 U1139 ( .I(n931), .ZN(n926) );
  INVD0 U1140 ( .I(n927), .ZN(n4510) );
  CKAN2D0 U1141 ( .A1(n464), .A2(n475), .Z(n466) );
  XOR2D0 U1142 ( .A1(n466), .A2(n465), .Z(n481) );
  INVD0 U1143 ( .I(n470), .ZN(n472) );
  CKAN2D0 U1144 ( .A1(n476), .A2(n475), .Z(n478) );
  XOR2D0 U1145 ( .A1(n478), .A2(n477), .Z(n479) );
  INVD0 U1146 ( .I(n899), .ZN(n491) );
  AOI21D1 U1147 ( .A1(n495), .A2(n859), .B(n494), .ZN(n845) );
  OAI21D1 U1148 ( .A1(n506), .A2(n505), .B(n504), .ZN(n753) );
  CKND2D0 U1149 ( .A1(n512), .A2(n511), .ZN(n575) );
  INVD0 U1150 ( .I(n569), .ZN(n515) );
  INVD0 U1151 ( .I(n524), .ZN(n527) );
  AOI21D1 U1152 ( .A1(n532), .A2(n602), .B(n608), .ZN(n567) );
  INVD0 U1153 ( .I(n570), .ZN(n533) );
  INVD0 U1154 ( .I(n575), .ZN(n535) );
  INVD0 U1155 ( .I(n568), .ZN(n542) );
  INVD0 U1156 ( .I(n601), .ZN(n547) );
  INVD0 U1157 ( .I(n564), .ZN(n550) );
  CKAN2D0 U1158 ( .A1(n553), .A2(n558), .Z(n555) );
  CKAN2D0 U1159 ( .A1(n559), .A2(n558), .Z(n560) );
  INVD0 U1160 ( .I(n619), .ZN(n566) );
  CKND2D0 U1161 ( .A1(n573), .A2(n572), .ZN(n574) );
  INVD1 U1162 ( .I(y_mantissa[17]), .ZN(n583) );
  CKBD1 U1163 ( .I(n982), .Z(n1019) );
  INVD0 U1164 ( .I(n1019), .ZN(n703) );
  CKAN2D0 U1165 ( .A1(n590), .A2(n703), .Z(n591) );
  OAI21D1 U1166 ( .A1(n845), .A2(n600), .B(n599), .ZN(n835) );
  INVD0 U1167 ( .I(n625), .ZN(n612) );
  AOI21D1 U1168 ( .A1(n623), .A2(n622), .B(n621), .ZN(n751) );
  INVD0 U1169 ( .I(n660), .ZN(n629) );
  CKND2D0 U1170 ( .A1(n627), .A2(n626), .ZN(n664) );
  INVD0 U1171 ( .I(n722), .ZN(n641) );
  INVD0 U1172 ( .I(n661), .ZN(n642) );
  INVD0 U1173 ( .I(n658), .ZN(n646) );
  INVD0 U1174 ( .I(n743), .ZN(n654) );
  OAI21D1 U1175 ( .A1(n702), .A2(n654), .B(n653), .ZN(n793) );
  CKND2D0 U1176 ( .A1(n662), .A2(n661), .ZN(n663) );
  INVD0 U1177 ( .I(n982), .ZN(n799) );
  CKAN2D0 U1178 ( .A1(n674), .A2(n799), .Z(n676) );
  CKAN2D0 U1179 ( .A1(n685), .A2(n703), .Z(n686) );
  AOI21D1 U1180 ( .A1(n690), .A2(n689), .B(n688), .ZN(n695) );
  CKAN2D0 U1181 ( .A1(n696), .A2(n703), .Z(n698) );
  CKAN2D0 U1182 ( .A1(n704), .A2(n703), .Z(n705) );
  INVD0 U1183 ( .I(n888), .ZN(n711) );
  AOI21D1 U1184 ( .A1(n711), .A2(n892), .B(n710), .ZN(n836) );
  INVD0 U1185 ( .I(n760), .ZN(n731) );
  CKND2D0 U1186 ( .A1(n731), .A2(n733), .ZN(n735) );
  INVD0 U1187 ( .I(n779), .ZN(n764) );
  INVD0 U1188 ( .I(n761), .ZN(n732) );
  INVD0 U1189 ( .I(n759), .ZN(n736) );
  AOI21D1 U1190 ( .A1(n754), .A2(n753), .B(n752), .ZN(n819) );
  INVD1 U1191 ( .I(n819), .ZN(n787) );
  NR2D0 U1192 ( .A1(n759), .A2(n758), .ZN(n763) );
  INVD0 U1193 ( .I(n763), .ZN(n778) );
  OR2D0 U1194 ( .A1(n760), .A2(n778), .Z(n781) );
  CKND2D0 U1195 ( .A1(n762), .A2(n761), .ZN(n776) );
  INVD0 U1196 ( .I(n774), .ZN(n768) );
  NR2D0 U1197 ( .A1(n776), .A2(n126), .ZN(n777) );
  OA21D0 U1198 ( .A1(n779), .A2(n778), .B(n777), .Z(n780) );
  CKAN2D0 U1199 ( .A1(n785), .A2(n799), .Z(n824) );
  INVD0 U1200 ( .I(n824), .ZN(n786) );
  XOR2D0 U1201 ( .A1(n786), .A2(n873), .Z(n807) );
  IND2D0 U1202 ( .A1(n788), .B1(n799), .ZN(n789) );
  IND2D0 U1203 ( .A1(n800), .B1(n799), .ZN(n802) );
  INVD0 U1204 ( .I(n874), .ZN(n810) );
  INVD0 U1205 ( .I(n877), .ZN(n809) );
  NR2D0 U1206 ( .A1(n810), .A2(n809), .ZN(n811) );
  HA1D0 U1207 ( .A(n823), .B(n822), .S(n826) );
  XOR2D0 U1208 ( .A1(n824), .A2(n873), .Z(n825) );
  AOI21D1 U1209 ( .A1(n132), .A2(n882), .B(n832), .ZN(n876) );
  OAI21D1 U1210 ( .A1(n890), .A2(n837), .B(n836), .ZN(n887) );
  INVD1 U1211 ( .I(n845), .ZN(n898) );
  INVD0 U1212 ( .I(n918), .ZN(n869) );
  FA1D0 U1213 ( .A(n873), .B(n872), .CI(n871), .CO(n951), .S(base_c1[0]) );
  INVD0 U1214 ( .I(n908), .ZN(n910) );
  INVD0 U1215 ( .I(n920), .ZN(n922) );
  INVD0 U1216 ( .I(n925), .ZN(n933) );
  XNR2D0 U1217 ( .A1(n934), .A2(n933), .ZN(base_c1[5]) );
  XNR2D0 U1218 ( .A1(n938), .A2(n937), .ZN(base_c1[4]) );
  INVD0 U1219 ( .I(n939), .ZN(n941) );
  XOR2D0 U1220 ( .A1(n943), .A2(n942), .Z(base_c1[3]) );
  XNR2D0 U1221 ( .A1(n947), .A2(n946), .ZN(base_c1[2]) );
  INVD0 U1222 ( .I(n948), .ZN(n950) );
  XNR2D0 U1223 ( .A1(n952), .A2(n951), .ZN(base_c1[1]) );
  CKBD1 U1224 ( .I(n1019), .Z(n992) );
  INVD1 U1225 ( .I(n992), .ZN(n1443) );
  INVD1 U1226 ( .I(y_mantissa[1]), .ZN(n1031) );
  INVD1 U1227 ( .I(y_mantissa[15]), .ZN(n979) );
  INR2D1 U1228 ( .A1(n67), .B1(n958), .ZN(n1034) );
  INVD1 U1229 ( .I(y_mantissa[18]), .ZN(n973) );
  INVD1 U1230 ( .I(y_mantissa[19]), .ZN(n970) );
  INVD1 U1231 ( .I(y_mantissa[20]), .ZN(n967) );
  INVD1 U1232 ( .I(y_mantissa[21]), .ZN(n964) );
  NR2D1 U1233 ( .A1(n962), .A2(n961), .ZN(n960) );
  HA1D0 U1234 ( .A(n965), .B(n964), .CO(n962), .S(n966) );
  INVD1 U1235 ( .I(n992), .ZN(n975) );
  MUX2D0 U1236 ( .I0(n21), .I1(n966), .S(n975), .Z(n1069) );
  HA1D0 U1237 ( .A(n968), .B(n967), .CO(n965), .S(n969) );
  INVD1 U1238 ( .I(n992), .ZN(n1036) );
  MUX2D0 U1239 ( .I0(n20), .I1(n969), .S(n1036), .Z(n1072) );
  HA1D0 U1240 ( .A(n971), .B(n970), .CO(n968), .S(n972) );
  MUX2D0 U1241 ( .I0(n19), .I1(n972), .S(n975), .Z(n1078) );
  HA1D0 U1242 ( .A(n974), .B(n973), .CO(n971), .S(n976) );
  MUX2D0 U1243 ( .I0(n18), .I1(n976), .S(n975), .Z(n1084) );
  INVD1 U1244 ( .I(y_mantissa[16]), .ZN(n977) );
  MUX2D0 U1245 ( .I0(n42), .I1(n978), .S(n1036), .Z(n1098) );
  XNR2D0 U1246 ( .A1(n980), .A2(n979), .ZN(n981) );
  MUX2ND0 U1247 ( .I0(n41), .I1(n981), .S(n67), .ZN(n984) );
  MUX2D0 U1248 ( .I0(n41), .I1(n984), .S(n983), .Z(n1105) );
  XOR2D0 U1249 ( .A1(n986), .A2(n985), .Z(n987) );
  MUX2ND0 U1250 ( .I0(n40), .I1(n987), .S(n66), .ZN(n988) );
  MUX2D0 U1251 ( .I0(n40), .I1(n988), .S(n1036), .Z(n1113) );
  XNR2D0 U1252 ( .A1(n990), .A2(n989), .ZN(n991) );
  MUX2ND0 U1253 ( .I0(n39), .I1(n991), .S(n66), .ZN(n993) );
  MUX2D0 U1254 ( .I0(n39), .I1(n993), .S(n1002), .Z(n1122) );
  MUX2ND0 U1255 ( .I0(n38), .I1(n994), .S(n67), .ZN(n995) );
  MUX2D0 U1256 ( .I0(n38), .I1(n995), .S(n1002), .Z(n1131) );
  MUX2D0 U1257 ( .I0(n37), .I1(n998), .S(n1002), .Z(n1138) );
  XOR2D0 U1258 ( .A1(n1000), .A2(n999), .Z(n1001) );
  MUX2ND0 U1259 ( .I0(n36), .I1(n1001), .S(n12), .ZN(n1003) );
  MUX2D0 U1260 ( .I0(n36), .I1(n1003), .S(n1002), .Z(n1145) );
  XNR2D0 U1261 ( .A1(n1005), .A2(n1004), .ZN(n1006) );
  MUX2ND0 U1262 ( .I0(n35), .I1(n1006), .S(n12), .ZN(n1007) );
  INVD1 U1263 ( .I(n1019), .ZN(n1016) );
  MUX2D0 U1264 ( .I0(n35), .I1(n1007), .S(n1016), .Z(n1154) );
  MUX2ND0 U1265 ( .I0(n34), .I1(n1008), .S(n12), .ZN(n1009) );
  MUX2D0 U1266 ( .I0(n34), .I1(n1009), .S(n1016), .Z(n1162) );
  XOR2D0 U1267 ( .A1(n11), .A2(n1010), .Z(n1012) );
  MUX2D0 U1268 ( .I0(n33), .I1(n1012), .S(n1016), .Z(n1169) );
  XNR2D0 U1269 ( .A1(n1014), .A2(n1013), .ZN(n1015) );
  MUX2ND0 U1270 ( .I0(n32), .I1(n1015), .S(n1022), .ZN(n1017) );
  MUX2D0 U1271 ( .I0(n32), .I1(n1017), .S(n1016), .Z(n1177) );
  MUX2ND0 U1272 ( .I0(y_mantissa[5]), .I1(n1018), .S(n1022), .ZN(n1020) );
  INVD1 U1273 ( .I(n1019), .ZN(n1028) );
  MUX2D0 U1274 ( .I0(n31), .I1(n1020), .S(n1028), .Z(n1186) );
  XOR2D0 U1275 ( .A1(n1022), .A2(n1021), .Z(n1023) );
  INVD1 U1276 ( .I(n1193), .ZN(n1191) );
  MUX2ND0 U1277 ( .I0(y_mantissa[3]), .I1(n1024), .S(n1027), .ZN(n1025) );
  MUX2D0 U1278 ( .I0(n29), .I1(n1025), .S(n1028), .Z(n1200) );
  XOR2D0 U1279 ( .A1(n1027), .A2(n1026), .Z(n1029) );
  INVD0 U1280 ( .I(n1208), .ZN(n1205) );
  HA1D0 U1281 ( .A(n1031), .B(n1030), .CO(n1027), .S(n1032) );
  HICOND1 U1282 ( .A(n1033), .CI(n1030), .CON(n1204) );
  MUX2ND0 U1283 ( .I0(n43), .I1(n1035), .S(n1034), .ZN(n1037) );
  MUX2D0 U1284 ( .I0(n43), .I1(n1037), .S(n1036), .Z(n1091) );
  CKXOR2D1 U1285 ( .A1(n1043), .A2(n1042), .Z(n1045) );
  BUFFD1 U1286 ( .I(n1048), .Z(n1261) );
  ND2D1 U1287 ( .A1(n1043), .A2(x_mantissa[22]), .ZN(n1044) );
  IOA21D1 U1288 ( .A1(n1045), .A2(n1261), .B(n1044), .ZN(n1334) );
  NR2D0 U1289 ( .A1(n15), .A2(n1046), .ZN(n1047) );
  IND2D0 U1290 ( .A1(n1273), .B1(n1050), .ZN(n1291) );
  INVD1 U1291 ( .I(x_mantissa[16]), .ZN(n1099) );
  INVD1 U1292 ( .I(x_mantissa[17]), .ZN(n1092) );
  INVD1 U1293 ( .I(x_mantissa[18]), .ZN(n1085) );
  INVD1 U1294 ( .I(x_mantissa[20]), .ZN(n1073) );
  INVD1 U1295 ( .I(x_mantissa[21]), .ZN(n1061) );
  BUFFD1 U1296 ( .I(n1175), .Z(n1184) );
  BUFFD1 U1297 ( .I(n1184), .Z(n1206) );
  INVD1 U1298 ( .I(n125), .ZN(n1289) );
  MUX2D0 U1299 ( .I0(n1060), .I1(n1059), .S(n115), .Z(n1293) );
  HA1D0 U1300 ( .A(n1062), .B(n1061), .CO(n1065), .S(n1063) );
  MUX2D0 U1301 ( .I0(x_mantissa[21]), .I1(n1063), .S(n113), .Z(n1265) );
  HA1D0 U1302 ( .A(n1065), .B(n1064), .CO(n1271), .S(n1066) );
  MUX2D0 U1303 ( .I0(n1273), .I1(n1066), .S(n114), .Z(n1264) );
  CKXOR2D1 U1304 ( .A1(n1069), .A2(n1067), .Z(n1068) );
  BUFFD1 U1305 ( .I(n1175), .Z(n1129) );
  MUX2D0 U1306 ( .I0(n1069), .I1(n1068), .S(n1129), .Z(n1258) );
  HA1D0 U1307 ( .A(n1074), .B(n1073), .CO(n1062), .S(n1075) );
  MUX2D0 U1308 ( .I0(n26), .I1(n1075), .S(n114), .Z(n1255) );
  CKXOR2D1 U1309 ( .A1(n1078), .A2(n1076), .Z(n1077) );
  MUX2D0 U1310 ( .I0(n1078), .I1(n1077), .S(n1129), .Z(n1253) );
  HA1D0 U1311 ( .A(n1080), .B(n1079), .CO(n1074), .S(n1081) );
  MUX2D0 U1312 ( .I0(n25), .I1(n1081), .S(n116), .Z(n1252) );
  BUFFD1 U1313 ( .I(n1129), .Z(n1120) );
  MUX2D0 U1314 ( .I0(n1084), .I1(n1083), .S(n1120), .Z(n1251) );
  HA1D0 U1315 ( .A(n1086), .B(n1085), .CO(n1080), .S(n1087) );
  MUX2D0 U1316 ( .I0(n24), .I1(n1087), .S(n115), .Z(n1250) );
  MUX2D0 U1317 ( .I0(n1091), .I1(n1090), .S(n1048), .Z(n1248) );
  HA1D0 U1318 ( .A(n1093), .B(n1092), .CO(n1086), .S(n1094) );
  MUX2D0 U1319 ( .I0(n23), .I1(n1094), .S(n113), .Z(n1247) );
  MUX2D0 U1320 ( .I0(n1098), .I1(n1097), .S(n1048), .Z(n1246) );
  HA1D0 U1321 ( .A(n1100), .B(n1099), .CO(n1093), .S(n1101) );
  MUX2D0 U1322 ( .I0(n22), .I1(n1101), .S(n116), .Z(n1245) );
  HICOND1 U1323 ( .A(n1103), .CI(n1102), .CON(n1096), .S(n1104) );
  MUX2D0 U1324 ( .I0(n1105), .I1(n1104), .S(n1120), .Z(n1243) );
  XNR2D0 U1325 ( .A1(n1107), .A2(n1106), .ZN(n1108) );
  MUX2ND0 U1326 ( .I0(n57), .I1(n1108), .S(n69), .ZN(n1109) );
  MUX2D0 U1327 ( .I0(n1109), .I1(n57), .S(n128), .Z(n1242) );
  OR2D1 U1328 ( .A1(n1243), .A2(n1242), .Z(n1370) );
  MUX2D0 U1329 ( .I0(n1113), .I1(n1112), .S(n1120), .Z(n1241) );
  XOR2D0 U1330 ( .A1(n1115), .A2(n1114), .Z(n1116) );
  MUX2ND0 U1331 ( .I0(n56), .I1(n1116), .S(n68), .ZN(n1117) );
  MUX2D0 U1332 ( .I0(n1117), .I1(n56), .S(n127), .Z(n1240) );
  MUX2D0 U1333 ( .I0(n1122), .I1(n1121), .S(n1120), .Z(n1238) );
  XNR2D0 U1334 ( .A1(n1124), .A2(n1123), .ZN(n1125) );
  MUX2ND0 U1335 ( .I0(n55), .I1(n1125), .S(n69), .ZN(n1126) );
  MUX2D0 U1336 ( .I0(n1126), .I1(n55), .S(n126), .Z(n1237) );
  OR2D1 U1337 ( .A1(n1238), .A2(n1237), .Z(n1379) );
  BUFFD1 U1338 ( .I(n1129), .Z(n1152) );
  MUX2D0 U1339 ( .I0(n1131), .I1(n1130), .S(n1152), .Z(n1236) );
  XOR2D0 U1340 ( .A1(x_mantissa[11]), .A2(n1132), .Z(n1133) );
  MUX2ND0 U1341 ( .I0(n54), .I1(n1133), .S(n68), .ZN(n1134) );
  MUX2D0 U1342 ( .I0(n1134), .I1(n54), .S(n125), .Z(n1235) );
  MUX2D0 U1343 ( .I0(n1138), .I1(n1137), .S(n1152), .Z(n1233) );
  XOR2D0 U1344 ( .A1(n69), .A2(n1139), .Z(n1141) );
  MUX2D0 U1345 ( .I0(n53), .I1(n1141), .S(n116), .Z(n1232) );
  OR2D1 U1346 ( .A1(n1233), .A2(n1232), .Z(n1388) );
  MUX2D0 U1347 ( .I0(n1145), .I1(n1144), .S(n1152), .Z(n1231) );
  XOR2D0 U1348 ( .A1(n1147), .A2(n1146), .Z(n1148) );
  MUX2ND0 U1349 ( .I0(n52), .I1(n1148), .S(n14), .ZN(n1149) );
  MUX2D0 U1350 ( .I0(n1149), .I1(n52), .S(n127), .Z(n1230) );
  MUX2D0 U1351 ( .I0(n1154), .I1(n1153), .S(n1152), .Z(n1228) );
  XNR2D0 U1352 ( .A1(n1156), .A2(n1155), .ZN(n1157) );
  MUX2ND0 U1353 ( .I0(x_mantissa[9]), .I1(n1157), .S(n14), .ZN(n1158) );
  MUX2D0 U1354 ( .I0(n1158), .I1(n51), .S(n125), .Z(n1227) );
  OR2D0 U1355 ( .A1(n1228), .A2(n1227), .Z(n1397) );
  MUX2D0 U1356 ( .I0(n1162), .I1(n1161), .S(n1184), .Z(n1226) );
  XOR2D0 U1357 ( .A1(x_mantissa[7]), .A2(n1163), .Z(n1164) );
  MUX2ND0 U1358 ( .I0(x_mantissa[8]), .I1(n1164), .S(n1171), .ZN(n1165) );
  MUX2D0 U1359 ( .I0(n1165), .I1(n50), .S(n15), .Z(n1225) );
  NR2XD0 U1360 ( .A1(n1226), .A2(n1225), .ZN(n1400) );
  MUX2D0 U1361 ( .I0(n1169), .I1(n1168), .S(n1184), .Z(n1223) );
  XOR2D0 U1362 ( .A1(n1171), .A2(n1170), .Z(n1172) );
  MUX2D0 U1363 ( .I0(x_mantissa[7]), .I1(n1172), .S(n115), .Z(n1222) );
  OR2D0 U1364 ( .A1(n1223), .A2(n1222), .Z(n1406) );
  MUX2D0 U1365 ( .I0(n1177), .I1(n1176), .S(n1175), .Z(n1221) );
  XNR2D0 U1366 ( .A1(n1179), .A2(n1178), .ZN(n1180) );
  MUX2ND0 U1367 ( .I0(x_mantissa[6]), .I1(n1180), .S(n1195), .ZN(n1181) );
  MUX2D0 U1368 ( .I0(n1181), .I1(x_mantissa[6]), .S(n128), .Z(n1220) );
  NR2D0 U1369 ( .A1(n1221), .A2(n1220), .ZN(n1409) );
  MUX2D0 U1370 ( .I0(n1186), .I1(n1185), .S(n1184), .Z(n1218) );
  XOR2D0 U1371 ( .A1(x_mantissa[4]), .A2(n1187), .Z(n1188) );
  MUX2ND0 U1372 ( .I0(x_mantissa[5]), .I1(n1188), .S(n1195), .ZN(n1189) );
  MUX2D0 U1373 ( .I0(n1189), .I1(x_mantissa[5]), .S(n127), .Z(n1217) );
  OR2D0 U1374 ( .A1(n1218), .A2(n1217), .Z(n1415) );
  MUX2D0 U1375 ( .I0(n1193), .I1(n1192), .S(n1206), .Z(n1216) );
  XOR2D0 U1376 ( .A1(n1195), .A2(n1194), .Z(n1196) );
  MUX2D0 U1377 ( .I0(x_mantissa[4]), .I1(n1196), .S(n114), .Z(n1215) );
  NR2D0 U1378 ( .A1(n1216), .A2(n1215), .ZN(n1418) );
  MUX2D0 U1379 ( .I0(n1200), .I1(n1199), .S(n1206), .Z(n1213) );
  XOR2D0 U1380 ( .A1(x_mantissa[2]), .A2(n1201), .Z(n1202) );
  MUX2ND0 U1381 ( .I0(x_mantissa[3]), .I1(n1202), .S(n1210), .ZN(n1203) );
  MUX2D0 U1382 ( .I0(n1203), .I1(x_mantissa[3]), .S(n126), .Z(n1212) );
  OR2D0 U1383 ( .A1(n1213), .A2(n1212), .Z(n1424) );
  MUX2D0 U1384 ( .I0(n1208), .I1(n1207), .S(n1206), .Z(n1428) );
  XOR2D0 U1385 ( .A1(n1210), .A2(n1209), .Z(n1211) );
  MUX2D0 U1386 ( .I0(x_mantissa[2]), .I1(n1211), .S(n1289), .Z(n1427) );
  INVD0 U1387 ( .I(n1429), .ZN(n1425) );
  INVD0 U1388 ( .I(n1423), .ZN(n1214) );
  AOI21D0 U1389 ( .A1(n1424), .A2(n1425), .B(n1214), .ZN(n1421) );
  OAI21D0 U1390 ( .A1(n1418), .A2(n1421), .B(n1419), .ZN(n1416) );
  INVD0 U1391 ( .I(n1414), .ZN(n1219) );
  AOI21D0 U1392 ( .A1(n1415), .A2(n1416), .B(n1219), .ZN(n1412) );
  INVD0 U1393 ( .I(n1405), .ZN(n1224) );
  AOI21D1 U1394 ( .A1(n1406), .A2(n1407), .B(n1224), .ZN(n1403) );
  INVD0 U1395 ( .I(n1396), .ZN(n1229) );
  AOI21D1 U1396 ( .A1(n1397), .A2(n1398), .B(n1229), .ZN(n1394) );
  INVD0 U1397 ( .I(n1387), .ZN(n1234) );
  AOI21D1 U1398 ( .A1(n1388), .A2(n1389), .B(n1234), .ZN(n1385) );
  OAI21D1 U1399 ( .A1(n1382), .A2(n1385), .B(n1383), .ZN(n1380) );
  AOI21D1 U1400 ( .A1(n1379), .A2(n1380), .B(n1239), .ZN(n1376) );
  OAI21D1 U1401 ( .A1(n1373), .A2(n1376), .B(n1374), .ZN(n1371) );
  AOI21D1 U1402 ( .A1(n1370), .A2(n1371), .B(n1244), .ZN(n1367) );
  OAI21D1 U1403 ( .A1(n1364), .A2(n1367), .B(n1365), .ZN(n1362) );
  AOI21D1 U1404 ( .A1(n1361), .A2(n1362), .B(n1249), .ZN(n1300) );
  OAI21D1 U1405 ( .A1(n1297), .A2(n1300), .B(n1298), .ZN(n1358) );
  AOI21D1 U1406 ( .A1(n1357), .A2(n1358), .B(n1254), .ZN(n1354) );
  OAI21D1 U1407 ( .A1(n1351), .A2(n1354), .B(n1352), .ZN(n1349) );
  AOI21D1 U1408 ( .A1(n1348), .A2(n1349), .B(n1259), .ZN(n1345) );
  MUX2D0 U1409 ( .I0(n1263), .I1(n1262), .S(n1261), .Z(n1267) );
  FA1D0 U1410 ( .A(n109), .B(n1265), .CI(n1264), .CO(n1292), .S(n1266) );
  OAI21D1 U1411 ( .A1(n1345), .A2(n1342), .B(n1343), .ZN(n1340) );
  ND2D1 U1412 ( .A1(n122), .A2(n1268), .ZN(n1338) );
  INVD1 U1413 ( .I(n1338), .ZN(n1269) );
  INVD0 U1414 ( .I(n1321), .ZN(n1315) );
  HA1D0 U1415 ( .A(n1271), .B(n1270), .CO(n1288), .S(n1059) );
  HA1D0 U1416 ( .A(n1278), .B(n1280), .CO(n1274), .S(n1279) );
  HA1D0 U1417 ( .A(n1281), .B(n1280), .CO(n1278), .S(n1282) );
  HA1D0 U1418 ( .A(n1284), .B(n1283), .CO(n1281), .S(n1286) );
  HA1D0 U1419 ( .A(n1288), .B(n1287), .CO(n1284), .S(n1290) );
  MUX2D0 U1420 ( .I0(n1291), .I1(n1290), .S(n114), .Z(n1331) );
  FA1D0 U1421 ( .A(n1332), .B(n1293), .CI(n1292), .CO(n1330), .S(n1268) );
  AOI21D1 U1422 ( .A1(n1328), .A2(n1303), .B(n1296), .ZN(d1_c1[28]) );
  XNR2D1 U1423 ( .A1(n1304), .A2(n1328), .ZN(d1_c1[27]) );
  FA1D0 U1424 ( .A(n108), .B(n1306), .CI(n1305), .CO(n1294), .S(n1307) );
  FA1D0 U1425 ( .A(n1332), .B(n1311), .CI(n1310), .CO(n1305), .S(n1312) );
  XNR2D1 U1426 ( .A1(n1316), .A2(n1315), .ZN(d1_c1[25]) );
  FA1D0 U1427 ( .A(n109), .B(n1318), .CI(n1317), .CO(n1310), .S(n1319) );
  FA1D0 U1428 ( .A(n1332), .B(n1324), .CI(n1323), .CO(n1317), .S(n1325) );
  XNR2D1 U1429 ( .A1(n1329), .A2(n1328), .ZN(d1_c1[23]) );
  FA1D0 U1430 ( .A(n109), .B(n1331), .CI(n1330), .CO(n1323), .S(n1333) );
  INVD0 U1431 ( .I(n1373), .ZN(n1375) );
  INVD0 U1432 ( .I(n1382), .ZN(n1384) );
  INVD0 U1433 ( .I(n1391), .ZN(n1393) );
  XOR2D0 U1434 ( .A1(n1395), .A2(n1394), .Z(d1_c1[8]) );
  XNR2D0 U1435 ( .A1(n1399), .A2(n1398), .ZN(d1_c1[7]) );
  INVD0 U1436 ( .I(n1400), .ZN(n1402) );
  XOR2D0 U1437 ( .A1(n1404), .A2(n1403), .Z(d1_c1[6]) );
  XNR2D0 U1438 ( .A1(n1408), .A2(n1407), .ZN(d1_c1[5]) );
  INVD0 U1439 ( .I(n1409), .ZN(n1411) );
  XOR2D0 U1440 ( .A1(n1413), .A2(n1412), .Z(d1_c1[4]) );
  XNR2D0 U1441 ( .A1(n1417), .A2(n1416), .ZN(d1_c1[3]) );
  INVD0 U1442 ( .I(n1418), .ZN(n1420) );
  CKND2D0 U1443 ( .A1(n1420), .A2(n1419), .ZN(n1422) );
  XOR2D0 U1444 ( .A1(n1422), .A2(n1421), .Z(d1_c1[2]) );
  CKND2D0 U1445 ( .A1(n1424), .A2(n1423), .ZN(n1426) );
  XNR2D0 U1446 ( .A1(n1426), .A2(n1425), .ZN(d1_c1[1]) );
  OR2D0 U1447 ( .A1(n1428), .A2(n1427), .Z(n1430) );
  CKAN2D0 U1448 ( .A1(n1430), .A2(n1429), .Z(d1_c1[0]) );
  FA1D0 U1449 ( .A(carry2[4]), .B(sum2[4]), .CI(n1431), .CO(n151), .S(
        shared_comb[4]) );
  FA1D0 U1450 ( .A(carry2[6]), .B(sum2[6]), .CI(n1432), .CO(n1433), .S(
        shared_comb[6]) );
  FA1D0 U1451 ( .A(carry2[7]), .B(sum2[7]), .CI(n1433), .CO(n139), .S(
        shared_comb[7]) );
  MUX2D0 U1452 ( .I0(shared_s5[27]), .I1(divided_s5[27]), .S(divide_s5), .Z(
        N454) );
  MUX2D0 U1453 ( .I0(shared_s5[0]), .I1(divided_s5[0]), .S(n1434), .Z(N427) );
  MUX2D0 U1454 ( .I0(shared_s5[25]), .I1(divided_s5[25]), .S(n1441), .Z(N452)
         );
  MUX2D0 U1455 ( .I0(shared_s5[28]), .I1(divided_s5[28]), .S(n1441), .Z(N455)
         );
  MUX2D0 U1456 ( .I0(shared_s5[26]), .I1(divided_s5[26]), .S(n1441), .Z(N453)
         );
  BUFFD0 U1457 ( .I(n1438), .Z(n1437) );
  MUX2D0 U1458 ( .I0(shared_s5[10]), .I1(divided_s5[10]), .S(n1437), .Z(N437)
         );
  MUX2D0 U1459 ( .I0(shared_s5[9]), .I1(divided_s5[9]), .S(n1437), .Z(N436) );
  BUFFD0 U1460 ( .I(n1434), .Z(n1435) );
  MUX2D0 U1461 ( .I0(shared_s5[7]), .I1(divided_s5[7]), .S(n1435), .Z(N434) );
  MUX2D0 U1462 ( .I0(shared_s5[5]), .I1(divided_s5[5]), .S(n1435), .Z(N432) );
  BUFFD0 U1463 ( .I(n1434), .Z(n1436) );
  MUX2D0 U1464 ( .I0(shared_s5[4]), .I1(divided_s5[4]), .S(n1436), .Z(N431) );
  MUX2D0 U1465 ( .I0(shared_s5[8]), .I1(divided_s5[8]), .S(n1435), .Z(N435) );
  MUX2D0 U1466 ( .I0(shared_s5[3]), .I1(divided_s5[3]), .S(n1436), .Z(N430) );
  MUX2D0 U1467 ( .I0(shared_s5[6]), .I1(divided_s5[6]), .S(n1435), .Z(N433) );
  MUX2D0 U1468 ( .I0(shared_s5[1]), .I1(divided_s5[1]), .S(n1436), .Z(N428) );
  MUX2D0 U1469 ( .I0(shared_s5[2]), .I1(divided_s5[2]), .S(n1436), .Z(N429) );
  MUX2D0 U1470 ( .I0(shared_s5[11]), .I1(divided_s5[11]), .S(n1437), .Z(N438)
         );
  MUX2D0 U1471 ( .I0(shared_s5[12]), .I1(divided_s5[12]), .S(n1437), .Z(N439)
         );
  BUFFD0 U1472 ( .I(n1438), .Z(n1440) );
  MUX2D0 U1473 ( .I0(shared_s5[19]), .I1(divided_s5[19]), .S(n1440), .Z(N446)
         );
  MUX2D0 U1474 ( .I0(shared_s5[17]), .I1(divided_s5[17]), .S(n1440), .Z(N444)
         );
  BUFFD0 U1475 ( .I(n1438), .Z(n1439) );
  MUX2D0 U1476 ( .I0(shared_s5[16]), .I1(divided_s5[16]), .S(n1439), .Z(N443)
         );
  MUX2D0 U1477 ( .I0(shared_s5[15]), .I1(divided_s5[15]), .S(n1439), .Z(N442)
         );
  MUX2D0 U1478 ( .I0(shared_s5[13]), .I1(divided_s5[13]), .S(n1439), .Z(N440)
         );
  MUX2D0 U1479 ( .I0(shared_s5[14]), .I1(divided_s5[14]), .S(n1439), .Z(N441)
         );
  MUX2D0 U1480 ( .I0(shared_s5[20]), .I1(divided_s5[20]), .S(n1440), .Z(N447)
         );
  MUX2D0 U1481 ( .I0(shared_s5[18]), .I1(divided_s5[18]), .S(n1440), .Z(N445)
         );
  MUX2D0 U1482 ( .I0(shared_s5[24]), .I1(divided_s5[24]), .S(n1442), .Z(N451)
         );
  MUX2D0 U1483 ( .I0(shared_s5[22]), .I1(divided_s5[22]), .S(n1442), .Z(N449)
         );
  MUX2D0 U1484 ( .I0(shared_s5[23]), .I1(divided_s5[23]), .S(n1442), .Z(N450)
         );
  MUX2D0 U1485 ( .I0(shared_s5[21]), .I1(divided_s5[21]), .S(n1442), .Z(N448)
         );
  HA1D0 U1486 ( .A(sum2[3]), .B(carry2[3]), .CO(n1431), .S(shared_comb[3]) );
endmodule


module oadm_dm_fixed_APPROX_LEVEL1 ( clk, x, y, divide_mode, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  input clk, divide_mode;
  wire   sign_out, invalid_operation, infinity_result, zero_result, sign_s1,
         invalid_s1, infinity_s1, zero_s1, sign_s2, invalid_s2, infinity_s2,
         zero_s2, sign_s3, invalid_s3, infinity_s3, zero_s3, sign_s4,
         invalid_s4, infinity_s4, zero_s4, N62, N63, N64, N65, N66, N67, N68,
         N69, N70, sign_s5, invalid_s6, invalid_s5, infinity_s6, infinity_s5,
         zero_s6, zero_s5, finite_result_31_, N150, N151, N152, N153, N154,
         N155, N156, N157, N158, N159, N160, N161, N162, N163, N164, N165,
         N166, N167, N168, N169, N170, N171, N181, n148, n149, n1500, n1510,
         n1520, n1530, n1540, n1550, n1560, C2_Z_7, C2_Z_6, C2_Z_5, C2_Z_4,
         C2_Z_3, C2_Z_2, C2_Z_1, C2_Z_0, DP_OP_58J2_123_7635_n50,
         DP_OP_58J2_123_7635_n49, DP_OP_58J2_123_7635_n48,
         DP_OP_58J2_123_7635_n47, DP_OP_58J2_123_7635_n46,
         DP_OP_58J2_123_7635_n45, DP_OP_58J2_123_7635_n44,
         DP_OP_58J2_123_7635_n43, DP_OP_58J2_123_7635_n10,
         DP_OP_58J2_123_7635_n9, DP_OP_58J2_123_7635_n8,
         DP_OP_58J2_123_7635_n7, DP_OP_58J2_123_7635_n6,
         DP_OP_58J2_123_7635_n5, DP_OP_58J2_123_7635_n4,
         DP_OP_58J2_123_7635_n3, DP_OP_57J2_122_2635_n8,
         DP_OP_57J2_122_2635_n7, DP_OP_57J2_122_2635_n6,
         DP_OP_57J2_122_2635_n5, DP_OP_57J2_122_2635_n4,
         DP_OP_57J2_122_2635_n3, DP_OP_57J2_122_2635_n2,
         DP_OP_57J2_122_2635_n1, n1, n2, n3, n4, n5, n6, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n620, n630, n640, n650, n660, n670,
         n680, n690, n700, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n1570, n1580, n1590,
         n1600, n1610, n1620, n1630, n1640, n1650, n1660, n1670, n1680, n1690,
         n1700, n1710, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n1810, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235,
         n236, n237, n238, n239, n240, n241, n242, n243, n244, n245, n246,
         n247, n248, n249, n250, n251, n252, n253, n254, n255, n256, n257,
         n258, n259, n260, n261, n262, n263, n264, n265, n266, n267, n268,
         n269, n270, n271, n272, n273, n274, n275, n276, n277, n278, n279,
         n280, n281, n282, n283, n284;
  wire   [28:0] core_value;
  wire   [10:0] exponent_s1;
  wire   [10:0] exponent_s2;
  wire   [10:0] exponent_s3;
  wire   [10:0] exponent_s4;
  wire   [11:0] exponent_s6;
  wire   [10:0] exponent_s5;

  oadm_core_fixed_APPROX_LEVEL1 mantissa_core ( .clk(clk), .x_mantissa({1'b0, 
        x[22:0]}), .y_mantissa({1'b0, y[22:0]}), .divide_mode(n284), 
        .mantissa_value(core_value) );
  DFQD1 infinity_s1_reg ( .D(infinity_result), .CP(clk), .Q(infinity_s1) );
  DFQD1 invalid_s1_reg ( .D(invalid_operation), .CP(clk), .Q(invalid_s1) );
  DFQD1 zero_s1_reg ( .D(zero_result), .CP(clk), .Q(zero_s1) );
  DFQD1 zero_s2_reg ( .D(zero_s1), .CP(clk), .Q(zero_s2) );
  DFQD1 zero_s3_reg ( .D(zero_s2), .CP(clk), .Q(zero_s3) );
  DFQD1 zero_s4_reg ( .D(zero_s3), .CP(clk), .Q(zero_s4) );
  DFQD1 zero_s5_reg ( .D(zero_s4), .CP(clk), .Q(zero_s5) );
  DFQD1 zero_s6_reg ( .D(zero_s5), .CP(clk), .Q(zero_s6) );
  DFQD1 infinity_s2_reg ( .D(infinity_s1), .CP(clk), .Q(infinity_s2) );
  DFQD1 infinity_s3_reg ( .D(infinity_s2), .CP(clk), .Q(infinity_s3) );
  DFQD1 infinity_s4_reg ( .D(infinity_s3), .CP(clk), .Q(infinity_s4) );
  DFQD1 infinity_s5_reg ( .D(infinity_s4), .CP(clk), .Q(infinity_s5) );
  DFQD1 infinity_s6_reg ( .D(infinity_s5), .CP(clk), .Q(infinity_s6) );
  DFQD1 invalid_s2_reg ( .D(invalid_s1), .CP(clk), .Q(invalid_s2) );
  DFQD1 invalid_s3_reg ( .D(invalid_s2), .CP(clk), .Q(invalid_s3) );
  DFQD1 invalid_s4_reg ( .D(invalid_s3), .CP(clk), .Q(invalid_s4) );
  DFQD1 invalid_s5_reg ( .D(invalid_s4), .CP(clk), .Q(invalid_s5) );
  DFQD1 invalid_s6_reg ( .D(invalid_s5), .CP(clk), .Q(invalid_s6) );
  DFQD1 exponent_s1_reg_10_ ( .D(n276), .CP(clk), .Q(exponent_s1[10]) );
  DFQD1 exponent_s2_reg_10_ ( .D(exponent_s1[10]), .CP(clk), .Q(
        exponent_s2[10]) );
  DFQD1 exponent_s3_reg_10_ ( .D(exponent_s2[10]), .CP(clk), .Q(
        exponent_s3[10]) );
  DFQD1 exponent_s4_reg_10_ ( .D(exponent_s3[10]), .CP(clk), .Q(
        exponent_s4[10]) );
  DFQD1 exponent_s5_reg_10_ ( .D(exponent_s4[10]), .CP(clk), .Q(
        exponent_s5[10]) );
  DFQD1 exponent_s6_reg_10_ ( .D(exponent_s5[10]), .CP(clk), .Q(
        exponent_s6[10]) );
  DFQD1 exponent_s6_reg_11_ ( .D(exponent_s5[10]), .CP(clk), .Q(
        exponent_s6[11]) );
  DFQD1 exponent_s5_reg_9_ ( .D(exponent_s4[10]), .CP(clk), .Q(exponent_s5[9])
         );
  DFQD1 exponent_s6_reg_9_ ( .D(exponent_s5[9]), .CP(clk), .Q(exponent_s6[9])
         );
  DFQD1 exponent_s1_reg_8_ ( .D(N70), .CP(clk), .Q(exponent_s1[8]) );
  DFQD1 exponent_s2_reg_8_ ( .D(exponent_s1[8]), .CP(clk), .Q(exponent_s2[8])
         );
  DFQD1 exponent_s3_reg_8_ ( .D(exponent_s2[8]), .CP(clk), .Q(exponent_s3[8])
         );
  DFQD1 exponent_s4_reg_8_ ( .D(exponent_s3[8]), .CP(clk), .Q(exponent_s4[8])
         );
  DFQD1 exponent_s5_reg_8_ ( .D(exponent_s4[8]), .CP(clk), .Q(exponent_s5[8])
         );
  DFQD1 exponent_s6_reg_8_ ( .D(exponent_s5[8]), .CP(clk), .Q(exponent_s6[8])
         );
  DFQD1 exponent_s1_reg_7_ ( .D(N69), .CP(clk), .Q(exponent_s1[7]) );
  DFQD1 exponent_s2_reg_7_ ( .D(exponent_s1[7]), .CP(clk), .Q(exponent_s2[7])
         );
  DFQD1 exponent_s3_reg_7_ ( .D(exponent_s2[7]), .CP(clk), .Q(exponent_s3[7])
         );
  DFQD1 exponent_s4_reg_7_ ( .D(exponent_s3[7]), .CP(clk), .Q(exponent_s4[7])
         );
  DFQD1 exponent_s5_reg_7_ ( .D(exponent_s4[7]), .CP(clk), .Q(exponent_s5[7])
         );
  DFQD1 exponent_s6_reg_7_ ( .D(exponent_s5[7]), .CP(clk), .Q(exponent_s6[7])
         );
  DFQD1 exponent_s1_reg_6_ ( .D(N68), .CP(clk), .Q(exponent_s1[6]) );
  DFQD1 exponent_s2_reg_6_ ( .D(exponent_s1[6]), .CP(clk), .Q(exponent_s2[6])
         );
  DFQD1 exponent_s3_reg_6_ ( .D(exponent_s2[6]), .CP(clk), .Q(exponent_s3[6])
         );
  DFQD1 exponent_s4_reg_6_ ( .D(exponent_s3[6]), .CP(clk), .Q(exponent_s4[6])
         );
  DFQD1 exponent_s5_reg_6_ ( .D(exponent_s4[6]), .CP(clk), .Q(exponent_s5[6])
         );
  DFQD1 exponent_s6_reg_6_ ( .D(exponent_s5[6]), .CP(clk), .Q(exponent_s6[6])
         );
  DFQD1 exponent_s1_reg_5_ ( .D(N67), .CP(clk), .Q(exponent_s1[5]) );
  DFQD1 exponent_s2_reg_5_ ( .D(exponent_s1[5]), .CP(clk), .Q(exponent_s2[5])
         );
  DFQD1 exponent_s3_reg_5_ ( .D(exponent_s2[5]), .CP(clk), .Q(exponent_s3[5])
         );
  DFQD1 exponent_s4_reg_5_ ( .D(exponent_s3[5]), .CP(clk), .Q(exponent_s4[5])
         );
  DFQD1 exponent_s5_reg_5_ ( .D(exponent_s4[5]), .CP(clk), .Q(exponent_s5[5])
         );
  DFQD1 exponent_s6_reg_5_ ( .D(exponent_s5[5]), .CP(clk), .Q(exponent_s6[5])
         );
  DFQD1 exponent_s1_reg_4_ ( .D(N66), .CP(clk), .Q(exponent_s1[4]) );
  DFQD1 exponent_s2_reg_4_ ( .D(exponent_s1[4]), .CP(clk), .Q(exponent_s2[4])
         );
  DFQD1 exponent_s3_reg_4_ ( .D(exponent_s2[4]), .CP(clk), .Q(exponent_s3[4])
         );
  DFQD1 exponent_s4_reg_4_ ( .D(exponent_s3[4]), .CP(clk), .Q(exponent_s4[4])
         );
  DFQD1 exponent_s5_reg_4_ ( .D(exponent_s4[4]), .CP(clk), .Q(exponent_s5[4])
         );
  DFQD1 exponent_s6_reg_4_ ( .D(exponent_s5[4]), .CP(clk), .Q(exponent_s6[4])
         );
  DFQD1 exponent_s1_reg_3_ ( .D(N65), .CP(clk), .Q(exponent_s1[3]) );
  DFQD1 exponent_s2_reg_3_ ( .D(exponent_s1[3]), .CP(clk), .Q(exponent_s2[3])
         );
  DFQD1 exponent_s3_reg_3_ ( .D(exponent_s2[3]), .CP(clk), .Q(exponent_s3[3])
         );
  DFQD1 exponent_s4_reg_3_ ( .D(exponent_s3[3]), .CP(clk), .Q(exponent_s4[3])
         );
  DFQD1 exponent_s5_reg_3_ ( .D(exponent_s4[3]), .CP(clk), .Q(exponent_s5[3])
         );
  DFQD1 exponent_s6_reg_3_ ( .D(exponent_s5[3]), .CP(clk), .Q(exponent_s6[3])
         );
  DFQD1 exponent_s1_reg_2_ ( .D(N64), .CP(clk), .Q(exponent_s1[2]) );
  DFQD1 exponent_s2_reg_2_ ( .D(exponent_s1[2]), .CP(clk), .Q(exponent_s2[2])
         );
  DFQD1 exponent_s3_reg_2_ ( .D(exponent_s2[2]), .CP(clk), .Q(exponent_s3[2])
         );
  DFQD1 exponent_s4_reg_2_ ( .D(exponent_s3[2]), .CP(clk), .Q(exponent_s4[2])
         );
  DFQD1 exponent_s5_reg_2_ ( .D(exponent_s4[2]), .CP(clk), .Q(exponent_s5[2])
         );
  DFQD1 exponent_s6_reg_2_ ( .D(exponent_s5[2]), .CP(clk), .Q(exponent_s6[2])
         );
  DFQD1 exponent_s1_reg_1_ ( .D(N63), .CP(clk), .Q(exponent_s1[1]) );
  DFQD1 exponent_s2_reg_1_ ( .D(exponent_s1[1]), .CP(clk), .Q(exponent_s2[1])
         );
  DFQD1 exponent_s3_reg_1_ ( .D(exponent_s2[1]), .CP(clk), .Q(exponent_s3[1])
         );
  DFQD1 exponent_s4_reg_1_ ( .D(exponent_s3[1]), .CP(clk), .Q(exponent_s4[1])
         );
  DFQD1 exponent_s5_reg_1_ ( .D(exponent_s4[1]), .CP(clk), .Q(exponent_s5[1])
         );
  DFQD1 exponent_s6_reg_1_ ( .D(exponent_s5[1]), .CP(clk), .Q(exponent_s6[1])
         );
  DFQD1 exponent_s1_reg_0_ ( .D(N62), .CP(clk), .Q(exponent_s1[0]) );
  DFQD1 exponent_s2_reg_0_ ( .D(exponent_s1[0]), .CP(clk), .Q(exponent_s2[0])
         );
  DFQD1 exponent_s3_reg_0_ ( .D(exponent_s2[0]), .CP(clk), .Q(exponent_s3[0])
         );
  DFQD1 exponent_s4_reg_0_ ( .D(exponent_s3[0]), .CP(clk), .Q(exponent_s4[0])
         );
  DFQD1 exponent_s5_reg_0_ ( .D(exponent_s4[0]), .CP(clk), .Q(exponent_s5[0])
         );
  DFQD1 exponent_s6_reg_0_ ( .D(exponent_s5[0]), .CP(clk), .Q(exponent_s6[0])
         );
  DFQD1 sign_s1_reg ( .D(sign_out), .CP(clk), .Q(sign_s1) );
  DFQD1 sign_s2_reg ( .D(sign_s1), .CP(clk), .Q(sign_s2) );
  DFQD1 sign_s3_reg ( .D(sign_s2), .CP(clk), .Q(sign_s3) );
  DFQD1 sign_s4_reg ( .D(sign_s3), .CP(clk), .Q(sign_s4) );
  DFQD1 sign_s5_reg ( .D(sign_s4), .CP(clk), .Q(sign_s5) );
  DFQD1 sign_s6_reg ( .D(sign_s5), .CP(clk), .Q(finite_result_31_) );
  FA1D0 DP_OP_58J2_123_7635_U11 ( .A(n277), .B(DP_OP_58J2_123_7635_n44), .CI(
        DP_OP_58J2_123_7635_n10), .CO(DP_OP_58J2_123_7635_n9), .S(N63) );
  FA1D0 DP_OP_58J2_123_7635_U10 ( .A(n278), .B(DP_OP_58J2_123_7635_n45), .CI(
        DP_OP_58J2_123_7635_n9), .CO(DP_OP_58J2_123_7635_n8), .S(N64) );
  FA1D0 DP_OP_58J2_123_7635_U9 ( .A(n279), .B(DP_OP_58J2_123_7635_n46), .CI(
        DP_OP_58J2_123_7635_n8), .CO(DP_OP_58J2_123_7635_n7), .S(N65) );
  FA1D0 DP_OP_58J2_123_7635_U8 ( .A(n280), .B(DP_OP_58J2_123_7635_n47), .CI(
        DP_OP_58J2_123_7635_n7), .CO(DP_OP_58J2_123_7635_n6), .S(N66) );
  FA1D0 DP_OP_58J2_123_7635_U7 ( .A(n281), .B(DP_OP_58J2_123_7635_n48), .CI(
        DP_OP_58J2_123_7635_n6), .CO(DP_OP_58J2_123_7635_n5), .S(N67) );
  FA1D0 DP_OP_58J2_123_7635_U6 ( .A(n282), .B(DP_OP_58J2_123_7635_n49), .CI(
        DP_OP_58J2_123_7635_n5), .CO(DP_OP_58J2_123_7635_n4), .S(N68) );
  FA1D0 DP_OP_58J2_123_7635_U5 ( .A(n283), .B(DP_OP_58J2_123_7635_n50), .CI(
        DP_OP_58J2_123_7635_n4), .CO(DP_OP_58J2_123_7635_n3), .S(N69) );
  HA1D0 DP_OP_57J2_122_2635_U9 ( .A(x[23]), .B(C2_Z_0), .CO(
        DP_OP_57J2_122_2635_n8), .S(DP_OP_58J2_123_7635_n43) );
  FA1D0 DP_OP_57J2_122_2635_U8 ( .A(x[24]), .B(C2_Z_1), .CI(
        DP_OP_57J2_122_2635_n8), .CO(DP_OP_57J2_122_2635_n7), .S(
        DP_OP_58J2_123_7635_n44) );
  FA1D0 DP_OP_57J2_122_2635_U7 ( .A(x[25]), .B(C2_Z_2), .CI(
        DP_OP_57J2_122_2635_n7), .CO(DP_OP_57J2_122_2635_n6), .S(
        DP_OP_58J2_123_7635_n45) );
  FA1D0 DP_OP_57J2_122_2635_U6 ( .A(x[26]), .B(C2_Z_3), .CI(
        DP_OP_57J2_122_2635_n6), .CO(DP_OP_57J2_122_2635_n5), .S(
        DP_OP_58J2_123_7635_n46) );
  FA1D0 DP_OP_57J2_122_2635_U5 ( .A(x[27]), .B(C2_Z_4), .CI(
        DP_OP_57J2_122_2635_n5), .CO(DP_OP_57J2_122_2635_n4), .S(
        DP_OP_58J2_123_7635_n47) );
  FA1D0 DP_OP_57J2_122_2635_U4 ( .A(x[28]), .B(C2_Z_5), .CI(
        DP_OP_57J2_122_2635_n4), .CO(DP_OP_57J2_122_2635_n3), .S(
        DP_OP_58J2_123_7635_n48) );
  FA1D0 DP_OP_57J2_122_2635_U3 ( .A(x[29]), .B(C2_Z_6), .CI(
        DP_OP_57J2_122_2635_n3), .CO(DP_OP_57J2_122_2635_n2), .S(
        DP_OP_58J2_123_7635_n49) );
  FA1D0 DP_OP_57J2_122_2635_U2 ( .A(x[30]), .B(C2_Z_7), .CI(
        DP_OP_57J2_122_2635_n2), .CO(DP_OP_57J2_122_2635_n1), .S(
        DP_OP_58J2_123_7635_n50) );
  DFQD1 result_reg_31_ ( .D(N181), .CP(clk), .Q(result[31]) );
  DFQD1 result_reg_30_ ( .D(n148), .CP(clk), .Q(result[30]) );
  DFQD1 result_reg_29_ ( .D(n149), .CP(clk), .Q(result[29]) );
  DFQD1 result_reg_28_ ( .D(n1500), .CP(clk), .Q(result[28]) );
  DFQD1 result_reg_27_ ( .D(n1510), .CP(clk), .Q(result[27]) );
  DFQD1 result_reg_26_ ( .D(n1520), .CP(clk), .Q(result[26]) );
  DFQD1 result_reg_25_ ( .D(n1530), .CP(clk), .Q(result[25]) );
  DFQD1 result_reg_24_ ( .D(n1540), .CP(clk), .Q(result[24]) );
  DFQD1 result_reg_23_ ( .D(n1550), .CP(clk), .Q(result[23]) );
  DFQD1 result_reg_22_ ( .D(n1560), .CP(clk), .Q(result[22]) );
  DFQD1 result_reg_21_ ( .D(N171), .CP(clk), .Q(result[21]) );
  DFQD1 result_reg_20_ ( .D(N170), .CP(clk), .Q(result[20]) );
  DFQD1 result_reg_19_ ( .D(N169), .CP(clk), .Q(result[19]) );
  DFQD1 result_reg_18_ ( .D(N168), .CP(clk), .Q(result[18]) );
  DFQD1 result_reg_17_ ( .D(N167), .CP(clk), .Q(result[17]) );
  DFQD1 result_reg_16_ ( .D(N166), .CP(clk), .Q(result[16]) );
  DFQD1 result_reg_15_ ( .D(N165), .CP(clk), .Q(result[15]) );
  DFQD1 result_reg_14_ ( .D(N164), .CP(clk), .Q(result[14]) );
  DFQD1 result_reg_13_ ( .D(N163), .CP(clk), .Q(result[13]) );
  DFQD1 result_reg_12_ ( .D(N162), .CP(clk), .Q(result[12]) );
  DFQD1 result_reg_11_ ( .D(N161), .CP(clk), .Q(result[11]) );
  DFQD1 result_reg_10_ ( .D(N160), .CP(clk), .Q(result[10]) );
  DFQD1 result_reg_9_ ( .D(N159), .CP(clk), .Q(result[9]) );
  DFQD1 result_reg_8_ ( .D(N158), .CP(clk), .Q(result[8]) );
  DFQD1 result_reg_7_ ( .D(N157), .CP(clk), .Q(result[7]) );
  DFQD1 result_reg_6_ ( .D(N156), .CP(clk), .Q(result[6]) );
  DFQD1 result_reg_5_ ( .D(N155), .CP(clk), .Q(result[5]) );
  DFQD1 result_reg_4_ ( .D(N154), .CP(clk), .Q(result[4]) );
  DFQD1 result_reg_3_ ( .D(N153), .CP(clk), .Q(result[3]) );
  DFQD1 result_reg_2_ ( .D(N152), .CP(clk), .Q(result[2]) );
  DFQD1 result_reg_1_ ( .D(N151), .CP(clk), .Q(result[1]) );
  DFQD1 result_reg_0_ ( .D(N150), .CP(clk), .Q(result[0]) );
  OR2D1 U3 ( .A1(n232), .A2(n131), .Z(n262) );
  CKND2D1 U4 ( .A1(n220), .A2(n130), .ZN(n224) );
  INVD1 U5 ( .I(n113), .ZN(n53) );
  INVD1 U6 ( .I(n113), .ZN(n54) );
  AN2XD1 U7 ( .A1(n83), .A2(n232), .Z(n113) );
  NR2XD0 U8 ( .A1(n2), .A2(core_value[23]), .ZN(n132) );
  INVD0 U9 ( .I(n227), .ZN(n1) );
  INVD0 U10 ( .I(n1), .ZN(n2) );
  INVD0 U11 ( .I(n1), .ZN(n3) );
  INVD0 U12 ( .I(n263), .ZN(n4) );
  INVD0 U13 ( .I(n4), .ZN(n5) );
  INVD0 U14 ( .I(n4), .ZN(n6) );
  INVD0 U15 ( .I(n84), .ZN(n83) );
  INVD0 U16 ( .I(core_value[28]), .ZN(n79) );
  INVD0 U17 ( .I(n133), .ZN(n131) );
  INVD0 U18 ( .I(divide_mode), .ZN(n207) );
  INVD0 U19 ( .I(n265), .ZN(n660) );
  CKND2D0 U20 ( .A1(n680), .A2(n670), .ZN(n227) );
  AO211D0 U21 ( .A1(n220), .A2(n219), .B(infinity_s6), .C(invalid_s6), .Z(n223) );
  INVD0 U22 ( .I(n209), .ZN(n284) );
  INVD0 U23 ( .I(n256), .ZN(n58) );
  INVD0 U24 ( .I(n256), .ZN(n57) );
  OR2D0 U25 ( .A1(infinity_s6), .A2(n224), .Z(n234) );
  AO222D0 U26 ( .A1(n41), .A2(core_value[0]), .B1(n45), .B2(n11), .C1(n36), 
        .C2(core_value[2]), .Z(N151) );
  CKND2D0 U27 ( .A1(n238), .A2(n237), .ZN(N152) );
  OAI211D0 U28 ( .A1(n172), .A2(n55), .B(n1710), .C(n1700), .ZN(N167) );
  INVD0 U29 ( .I(n265), .ZN(n630) );
  CKND2D0 U30 ( .A1(n133), .A2(n3), .ZN(n261) );
  INVD0 U31 ( .I(n258), .ZN(n44) );
  CKND2D0 U32 ( .A1(n133), .A2(n226), .ZN(n268) );
  INVD0 U33 ( .I(n114), .ZN(n115) );
  FA1D0 U34 ( .A(exponent_s6[0]), .B(n54), .CI(n112), .CO(n116), .S(n114) );
  OAI211D1 U35 ( .A1(n250), .A2(n55), .B(n249), .C(n248), .ZN(N163) );
  CKBD1 U36 ( .I(n268), .Z(n258) );
  NR2D2 U37 ( .A1(n234), .A2(invalid_s6), .ZN(n133) );
  OR2XD1 U38 ( .A1(n97), .A2(n96), .Z(n127) );
  INVD1 U39 ( .I(n113), .ZN(n51) );
  CKND2D1 U40 ( .A1(n132), .A2(n82), .ZN(n232) );
  NR2D1 U41 ( .A1(core_value[27]), .A2(core_value[26]), .ZN(n680) );
  NR2D1 U42 ( .A1(core_value[25]), .A2(core_value[24]), .ZN(n670) );
  OAI211D1 U43 ( .A1(n241), .A2(n56), .B(n240), .C(n239), .ZN(N154) );
  OAI211D1 U44 ( .A1(n247), .A2(n58), .B(n246), .C(n245), .ZN(N162) );
  OAI211D1 U45 ( .A1(n244), .A2(n57), .B(n243), .C(n242), .ZN(N158) );
  OAI211D1 U46 ( .A1(n257), .A2(n57), .B(n255), .C(n254), .ZN(N168) );
  OAI211D1 U47 ( .A1(n253), .A2(n8), .B(n252), .C(n251), .ZN(N165) );
  INVD0 U48 ( .I(n264), .ZN(n8) );
  BUFFD1 U49 ( .I(n6), .Z(n9) );
  BUFFD1 U50 ( .I(n6), .Z(n61) );
  BUFFD1 U51 ( .I(n5), .Z(n60) );
  BUFFD1 U52 ( .I(n6), .Z(n620) );
  BUFFD1 U53 ( .I(n5), .Z(n59) );
  AN2D1 U54 ( .A1(n229), .A2(n133), .Z(n256) );
  OAI21D0 U55 ( .A1(n222), .A2(n49), .B(n39), .ZN(n148) );
  OAI21D0 U56 ( .A1(n225), .A2(n50), .B(n39), .ZN(n1510) );
  OAI21D0 U57 ( .A1(n101), .A2(n224), .B(n39), .ZN(n149) );
  OAI21D0 U58 ( .A1(n221), .A2(n50), .B(n39), .ZN(n1500) );
  OAI21D0 U59 ( .A1(n108), .A2(n224), .B(n38), .ZN(n1520) );
  OAI21D0 U60 ( .A1(n115), .A2(n50), .B(n38), .ZN(n1550) );
  OAI21D0 U61 ( .A1(n111), .A2(n49), .B(n38), .ZN(n1530) );
  OAI21D0 U62 ( .A1(n119), .A2(n49), .B(n38), .ZN(n1540) );
  OAI21D0 U63 ( .A1(n235), .A2(n234), .B(n233), .ZN(n1560) );
  CKND2D0 U64 ( .A1(n220), .A2(n130), .ZN(n50) );
  CKND2D0 U65 ( .A1(n220), .A2(n130), .ZN(n49) );
  AO21D1 U66 ( .A1(n129), .A2(n128), .B(n127), .Z(n219) );
  IND2D1 U67 ( .A1(n94), .B1(n93), .ZN(n97) );
  INVD1 U68 ( .I(n92), .ZN(n93) );
  CKAN2D1 U69 ( .A1(n100), .A2(n125), .Z(n129) );
  INVD0 U70 ( .I(n126), .ZN(n222) );
  INVD1 U71 ( .I(n103), .ZN(n221) );
  INVD1 U72 ( .I(n105), .ZN(n225) );
  XOR2D0 U73 ( .A1(n51), .A2(n84), .Z(n117) );
  XOR2D0 U74 ( .A1(n52), .A2(exponent_s6[11]), .Z(n88) );
  INVD1 U75 ( .I(n113), .ZN(n52) );
  ND2D1 U76 ( .A1(n86), .A2(n81), .ZN(n84) );
  ND3D0 U77 ( .A1(n86), .A2(n85), .A3(n232), .ZN(n87) );
  ND2D1 U78 ( .A1(n80), .A2(n79), .ZN(n228) );
  CKND2D0 U79 ( .A1(n78), .A2(n136), .ZN(n76) );
  ND2D1 U80 ( .A1(n132), .A2(n690), .ZN(n82) );
  NR2D0 U81 ( .A1(n132), .A2(n3), .ZN(n226) );
  INVD0 U82 ( .I(n3), .ZN(n85) );
  ND4D0 U83 ( .A1(n73), .A2(n72), .A3(n71), .A4(n700), .ZN(n77) );
  CKND2D0 U84 ( .A1(n214), .A2(n213), .ZN(C2_Z_3) );
  CKND2D0 U85 ( .A1(n215), .A2(n209), .ZN(C2_Z_4) );
  CKND2D0 U86 ( .A1(n212), .A2(n213), .ZN(C2_Z_2) );
  BUFFD0 U87 ( .I(core_value[19]), .Z(n30) );
  BUFFD0 U88 ( .I(core_value[20]), .Z(n12) );
  BUFFD0 U89 ( .I(core_value[18]), .Z(n29) );
  CKND2D0 U90 ( .A1(n177), .A2(n176), .ZN(n271) );
  CKND2D0 U91 ( .A1(n217), .A2(n207), .ZN(C2_Z_6) );
  CKND2D0 U92 ( .A1(n216), .A2(n207), .ZN(C2_Z_5) );
  BUFFD0 U93 ( .I(n207), .Z(n213) );
  BUFFD0 U95 ( .I(core_value[0]), .Z(n10) );
  INVD0 U96 ( .I(n136), .ZN(n11) );
  INVD0 U97 ( .I(n241), .ZN(n13) );
  INVD0 U98 ( .I(n139), .ZN(n14) );
  INVD0 U99 ( .I(n142), .ZN(n15) );
  INVD0 U100 ( .I(n145), .ZN(n16) );
  INVD0 U101 ( .I(n244), .ZN(n17) );
  INVD0 U102 ( .I(n1570), .ZN(n18) );
  INVD0 U103 ( .I(n1600), .ZN(n19) );
  INVD0 U104 ( .I(n1630), .ZN(n20) );
  INVD0 U105 ( .I(n247), .ZN(n21) );
  INVD0 U106 ( .I(n250), .ZN(n22) );
  INVD0 U107 ( .I(n1660), .ZN(n23) );
  INVD0 U108 ( .I(n253), .ZN(n24) );
  INVD0 U109 ( .I(n1690), .ZN(n25) );
  INVD0 U110 ( .I(n172), .ZN(n26) );
  INVD0 U111 ( .I(n257), .ZN(n27) );
  INVD0 U112 ( .I(n175), .ZN(n28) );
  INVD1 U113 ( .I(n40), .ZN(n31) );
  INVD1 U114 ( .I(n31), .ZN(n32) );
  INVD1 U115 ( .I(n31), .ZN(n33) );
  INVD1 U116 ( .I(n268), .ZN(n34) );
  INVD1 U117 ( .I(n268), .ZN(n35) );
  INVD1 U118 ( .I(n261), .ZN(n36) );
  INVD1 U119 ( .I(n261), .ZN(n37) );
  INVD1 U120 ( .I(n223), .ZN(n38) );
  INVD1 U121 ( .I(n223), .ZN(n39) );
  INVD1 U122 ( .I(n262), .ZN(n40) );
  INVD1 U123 ( .I(n262), .ZN(n41) );
  INVD1 U124 ( .I(n262), .ZN(n42) );
  INVD1 U125 ( .I(n262), .ZN(n43) );
  INVD1 U126 ( .I(n258), .ZN(n45) );
  INVD1 U127 ( .I(n258), .ZN(n46) );
  INVD1 U128 ( .I(n258), .ZN(n47) );
  INVD0 U129 ( .I(n206), .ZN(n48) );
  INVD1 U130 ( .I(n256), .ZN(n55) );
  INVD1 U131 ( .I(n256), .ZN(n56) );
  INVD1 U132 ( .I(n55), .ZN(n264) );
  INR2D1 U133 ( .A1(n228), .B1(n131), .ZN(n263) );
  CKBD1 U134 ( .I(n261), .Z(n265) );
  INVD1 U135 ( .I(n265), .ZN(n640) );
  INVD1 U136 ( .I(n265), .ZN(n650) );
  INVD0 U137 ( .I(core_value[1]), .ZN(n136) );
  INVD0 U138 ( .I(core_value[21]), .ZN(n269) );
  INVD1 U139 ( .I(core_value[22]), .ZN(n690) );
  INR2D1 U140 ( .A1(core_value[21]), .B1(n82), .ZN(n229) );
  NR4D0 U141 ( .A1(core_value[12]), .A2(core_value[13]), .A3(core_value[14]), 
        .A4(core_value[11]), .ZN(n73) );
  NR4D0 U142 ( .A1(core_value[19]), .A2(core_value[15]), .A3(core_value[17]), 
        .A4(core_value[16]), .ZN(n72) );
  NR4D0 U143 ( .A1(core_value[4]), .A2(core_value[6]), .A3(core_value[5]), 
        .A4(core_value[3]), .ZN(n71) );
  NR4D0 U144 ( .A1(core_value[10]), .A2(core_value[8]), .A3(core_value[9]), 
        .A4(core_value[7]), .ZN(n700) );
  NR2XD0 U145 ( .A1(n82), .A2(core_value[21]), .ZN(n78) );
  OR4D0 U146 ( .A1(core_value[2]), .A2(core_value[0]), .A3(core_value[18]), 
        .A4(core_value[20]), .Z(n75) );
  NR2D0 U147 ( .A1(core_value[28]), .A2(zero_s6), .ZN(n74) );
  OAI31D1 U148 ( .A1(n77), .A2(n76), .A3(n75), .B(n74), .ZN(n124) );
  INVD1 U149 ( .I(n78), .ZN(n80) );
  INVD1 U150 ( .I(n228), .ZN(n86) );
  INVD1 U151 ( .I(n229), .ZN(n81) );
  CKXOR2D1 U152 ( .A1(n51), .A2(n87), .Z(n112) );
  CKXOR2D1 U153 ( .A1(n89), .A2(n88), .Z(n123) );
  FA1D0 U154 ( .A(n53), .B(exponent_s6[9]), .CI(n90), .CO(n95), .S(n94) );
  FA1D0 U155 ( .A(n54), .B(exponent_s6[8]), .CI(n91), .CO(n90), .S(n92) );
  FA1D0 U156 ( .A(n54), .B(exponent_s6[10]), .CI(n95), .CO(n89), .S(n96) );
  FA1D0 U157 ( .A(n53), .B(exponent_s6[7]), .CI(n98), .CO(n91), .S(n126) );
  FA1D0 U158 ( .A(n52), .B(exponent_s6[6]), .CI(n99), .CO(n98), .S(n100) );
  INVD0 U159 ( .I(n100), .ZN(n101) );
  FA1D0 U160 ( .A(n53), .B(exponent_s6[5]), .CI(n102), .CO(n99), .S(n103) );
  FA1D0 U161 ( .A(n54), .B(exponent_s6[4]), .CI(n104), .CO(n102), .S(n105) );
  FA1D0 U162 ( .A(n52), .B(exponent_s6[3]), .CI(n106), .CO(n104), .S(n107) );
  INVD0 U163 ( .I(n107), .ZN(n108) );
  FA1D0 U164 ( .A(n53), .B(exponent_s6[2]), .CI(n109), .CO(n106), .S(n110) );
  INVD0 U165 ( .I(n110), .ZN(n111) );
  FA1D0 U166 ( .A(n117), .B(exponent_s6[1]), .CI(n116), .CO(n109), .S(n118) );
  INVD0 U167 ( .I(n118), .ZN(n119) );
  NR4D0 U168 ( .A1(n107), .A2(n110), .A3(n114), .A4(n118), .ZN(n120) );
  ND3D1 U169 ( .A1(n221), .A2(n225), .A3(n120), .ZN(n121) );
  NR4D0 U170 ( .A1(n127), .A2(n126), .A3(n100), .A4(n121), .ZN(n122) );
  NR3D0 U171 ( .A1(n124), .A2(n123), .A3(n122), .ZN(n220) );
  NR3D0 U172 ( .A1(n221), .A2(n108), .A3(n119), .ZN(n125) );
  NR4D0 U173 ( .A1(n222), .A2(n225), .A3(n111), .A4(n115), .ZN(n128) );
  INVD1 U174 ( .I(n219), .ZN(n130) );
  AOI22D0 U175 ( .A1(n13), .A2(n42), .B1(core_value[0]), .B2(n59), .ZN(n135)
         );
  AOI22D0 U176 ( .A1(n15), .A2(n36), .B1(n14), .B2(n46), .ZN(n134) );
  OAI211D1 U177 ( .A1(n136), .A2(n58), .B(n135), .C(n134), .ZN(N153) );
  INVD0 U178 ( .I(core_value[3]), .ZN(n139) );
  AOI22D0 U179 ( .A1(core_value[2]), .A2(n620), .B1(core_value[4]), .B2(n33), 
        .ZN(n138) );
  AOI22D0 U180 ( .A1(n17), .A2(n660), .B1(n16), .B2(n45), .ZN(n137) );
  OAI211D1 U181 ( .A1(n139), .A2(n8), .B(n138), .C(n137), .ZN(N155) );
  INVD0 U182 ( .I(core_value[4]), .ZN(n142) );
  AOI22D0 U183 ( .A1(n16), .A2(n42), .B1(core_value[3]), .B2(n61), .ZN(n141)
         );
  AOI22D0 U184 ( .A1(n18), .A2(n630), .B1(n17), .B2(n47), .ZN(n140) );
  OAI211D1 U185 ( .A1(n142), .A2(n56), .B(n141), .C(n140), .ZN(N156) );
  INVD0 U186 ( .I(core_value[5]), .ZN(n145) );
  AOI22D0 U187 ( .A1(n15), .A2(n60), .B1(core_value[6]), .B2(n40), .ZN(n144)
         );
  AOI22D0 U188 ( .A1(n19), .A2(n640), .B1(core_value[7]), .B2(n35), .ZN(n143)
         );
  OAI211D1 U189 ( .A1(n145), .A2(n57), .B(n144), .C(n143), .ZN(N157) );
  INVD0 U190 ( .I(core_value[7]), .ZN(n1570) );
  AOI22D0 U191 ( .A1(n19), .A2(n32), .B1(core_value[6]), .B2(n60), .ZN(n147)
         );
  AOI22D0 U192 ( .A1(n21), .A2(n37), .B1(n20), .B2(n34), .ZN(n146) );
  OAI211D1 U193 ( .A1(n1570), .A2(n58), .B(n147), .C(n146), .ZN(N159) );
  INVD0 U194 ( .I(core_value[8]), .ZN(n1600) );
  AOI22D0 U195 ( .A1(n20), .A2(n41), .B1(core_value[7]), .B2(n9), .ZN(n1590)
         );
  AOI22D0 U196 ( .A1(n22), .A2(n640), .B1(core_value[10]), .B2(n45), .ZN(n1580) );
  OAI211D1 U197 ( .A1(n1600), .A2(n55), .B(n1590), .C(n1580), .ZN(N160) );
  INVD0 U198 ( .I(core_value[9]), .ZN(n1630) );
  AOI22D0 U199 ( .A1(n21), .A2(n40), .B1(core_value[8]), .B2(n9), .ZN(n1620)
         );
  AOI22D0 U200 ( .A1(n23), .A2(n660), .B1(core_value[11]), .B2(n46), .ZN(n1610) );
  OAI211D1 U201 ( .A1(n1630), .A2(n56), .B(n1620), .C(n1610), .ZN(N161) );
  INVD0 U202 ( .I(core_value[12]), .ZN(n1660) );
  AOI22D0 U203 ( .A1(n24), .A2(n40), .B1(core_value[11]), .B2(n59), .ZN(n1650)
         );
  AOI22D0 U204 ( .A1(n26), .A2(n650), .B1(n25), .B2(n44), .ZN(n1640) );
  OAI211D1 U205 ( .A1(n1660), .A2(n57), .B(n1650), .C(n1640), .ZN(N164) );
  INVD0 U206 ( .I(core_value[14]), .ZN(n1690) );
  AOI22D0 U207 ( .A1(n26), .A2(n33), .B1(core_value[13]), .B2(n61), .ZN(n1680)
         );
  AOI22D0 U208 ( .A1(n28), .A2(n36), .B1(n27), .B2(n35), .ZN(n1670) );
  OAI211D1 U209 ( .A1(n1690), .A2(n58), .B(n1680), .C(n1670), .ZN(N166) );
  INVD0 U210 ( .I(core_value[15]), .ZN(n172) );
  AOI22D0 U211 ( .A1(n27), .A2(n43), .B1(n25), .B2(n60), .ZN(n1710) );
  AOI22D0 U212 ( .A1(n29), .A2(n630), .B1(n28), .B2(n44), .ZN(n1700) );
  INVD0 U213 ( .I(core_value[17]), .ZN(n175) );
  AOI22D0 U214 ( .A1(n29), .A2(n43), .B1(core_value[16]), .B2(n620), .ZN(n174)
         );
  AOI22D0 U215 ( .A1(n12), .A2(n650), .B1(n30), .B2(n47), .ZN(n173) );
  OAI211D1 U216 ( .A1(n175), .A2(n56), .B(n174), .C(n173), .ZN(N169) );
  CKBD1 U217 ( .I(n207), .Z(n209) );
  AN4D0 U218 ( .A1(y[30]), .A2(y[29]), .A3(y[28]), .A4(y[27]), .Z(n177) );
  AN4D0 U219 ( .A1(y[26]), .A2(y[25]), .A3(y[24]), .A4(y[23]), .Z(n176) );
  AN4D0 U220 ( .A1(x[30]), .A2(x[29]), .A3(x[28]), .A4(x[27]), .Z(n179) );
  AN4D0 U221 ( .A1(x[26]), .A2(x[25]), .A3(x[24]), .A4(x[23]), .Z(n178) );
  CKND2D0 U222 ( .A1(n179), .A2(n178), .ZN(n203) );
  NR4D0 U223 ( .A1(y[30]), .A2(y[29]), .A3(y[28]), .A4(y[27]), .ZN(n1810) );
  NR4D0 U224 ( .A1(y[26]), .A2(y[25]), .A3(y[24]), .A4(y[23]), .ZN(n180) );
  CKND2D0 U225 ( .A1(n1810), .A2(n180), .ZN(n274) );
  NR4D0 U226 ( .A1(x[22]), .A2(x[20]), .A3(x[9]), .A4(x[10]), .ZN(n186) );
  OR4D0 U227 ( .A1(x[2]), .A2(x[18]), .A3(x[6]), .A4(x[8]), .Z(n182) );
  NR4D0 U228 ( .A1(x[0]), .A2(x[3]), .A3(x[4]), .A4(n182), .ZN(n185) );
  NR4D0 U229 ( .A1(x[11]), .A2(x[15]), .A3(x[16]), .A4(x[14]), .ZN(n184) );
  NR4D0 U230 ( .A1(x[1]), .A2(x[7]), .A3(x[12]), .A4(x[13]), .ZN(n183) );
  ND4D0 U231 ( .A1(n186), .A2(n185), .A3(n184), .A4(n183), .ZN(n196) );
  INVD0 U232 ( .I(n203), .ZN(n201) );
  OR4D0 U233 ( .A1(x[5]), .A2(x[19]), .A3(x[17]), .A4(x[21]), .Z(n195) );
  NR4D0 U234 ( .A1(y[5]), .A2(y[19]), .A3(y[17]), .A4(y[21]), .ZN(n193) );
  NR4D0 U235 ( .A1(y[22]), .A2(y[20]), .A3(y[9]), .A4(y[10]), .ZN(n192) );
  NR4D0 U236 ( .A1(y[2]), .A2(y[18]), .A3(y[6]), .A4(y[8]), .ZN(n190) );
  NR3D0 U237 ( .A1(y[0]), .A2(y[3]), .A3(y[4]), .ZN(n189) );
  NR4D0 U238 ( .A1(y[11]), .A2(y[15]), .A3(y[16]), .A4(y[14]), .ZN(n188) );
  NR4D0 U239 ( .A1(y[1]), .A2(y[7]), .A3(y[12]), .A4(y[13]), .ZN(n187) );
  AN4D0 U240 ( .A1(n190), .A2(n189), .A3(n188), .A4(n187), .Z(n191) );
  AOI31D0 U241 ( .A1(n193), .A2(n192), .A3(n191), .B(n48), .ZN(n194) );
  AOI221D0 U242 ( .A1(n196), .A2(n201), .B1(n195), .B2(n201), .C(n194), .ZN(
        n199) );
  OAI211D0 U243 ( .A1(n203), .A2(n274), .B(n199), .C(n209), .ZN(n275) );
  INVD0 U244 ( .I(n275), .ZN(n205) );
  NR4D0 U245 ( .A1(x[30]), .A2(x[29]), .A3(x[28]), .A4(x[27]), .ZN(n198) );
  NR4D0 U246 ( .A1(x[26]), .A2(x[25]), .A3(x[24]), .A4(x[23]), .ZN(n197) );
  CKND2D0 U247 ( .A1(n198), .A2(n197), .ZN(n273) );
  INVD0 U248 ( .I(n271), .ZN(n206) );
  OAI211D0 U249 ( .A1(n273), .A2(n274), .B(divide_mode), .C(n199), .ZN(n200)
         );
  AOI21D0 U250 ( .A1(n201), .A2(n206), .B(n200), .ZN(n202) );
  AOI221D0 U251 ( .A1(n271), .A2(n205), .B1(n273), .B2(n205), .C(n202), .ZN(
        invalid_operation) );
  INVD0 U252 ( .I(y[25]), .ZN(n212) );
  CKAN2D0 U253 ( .A1(n212), .A2(n284), .Z(n278) );
  INVD0 U254 ( .I(y[26]), .ZN(n214) );
  CKAN2D0 U255 ( .A1(n214), .A2(n284), .Z(n279) );
  AOI21D0 U256 ( .A1(n205), .A2(n271), .B(n202), .ZN(n272) );
  INVD0 U257 ( .I(n202), .ZN(n270) );
  OAI22D0 U258 ( .A1(n272), .A2(n203), .B1(n274), .B2(n270), .ZN(n204) );
  AO31D0 U259 ( .A1(n206), .A2(n205), .A3(n273), .B(n204), .Z(infinity_result)
         );
  NR2D0 U260 ( .A1(DP_OP_58J2_123_7635_n3), .A2(DP_OP_57J2_122_2635_n1), .ZN(
        n276) );
  INVD0 U261 ( .I(y[23]), .ZN(n210) );
  CKAN2D0 U262 ( .A1(n210), .A2(n284), .Z(n236) );
  OR2D0 U263 ( .A1(n236), .A2(DP_OP_58J2_123_7635_n43), .Z(
        DP_OP_58J2_123_7635_n10) );
  INVD0 U264 ( .I(y[24]), .ZN(n211) );
  INVD0 U265 ( .I(n213), .ZN(n208) );
  CKAN2D0 U266 ( .A1(n211), .A2(n208), .Z(n277) );
  INVD0 U267 ( .I(y[27]), .ZN(n215) );
  CKAN2D0 U268 ( .A1(n215), .A2(n208), .Z(n280) );
  INVD0 U269 ( .I(y[28]), .ZN(n216) );
  CKAN2D0 U270 ( .A1(n216), .A2(n208), .Z(n281) );
  INVD0 U271 ( .I(y[29]), .ZN(n217) );
  CKAN2D0 U272 ( .A1(n217), .A2(n208), .Z(n282) );
  CKND2D0 U273 ( .A1(y[30]), .A2(divide_mode), .ZN(n283) );
  CKND2D0 U274 ( .A1(n210), .A2(n209), .ZN(C2_Z_0) );
  CKND2D0 U275 ( .A1(n211), .A2(n213), .ZN(C2_Z_1) );
  INVD0 U276 ( .I(y[30]), .ZN(n218) );
  NR2D0 U277 ( .A1(n218), .A2(divide_mode), .ZN(C2_Z_7) );
  AOI22D0 U278 ( .A1(core_value[23]), .A2(n3), .B1(core_value[22]), .B2(n226), 
        .ZN(n231) );
  AOI22D0 U279 ( .A1(core_value[20]), .A2(n229), .B1(core_value[19]), .B2(n228), .ZN(n230) );
  OA211D0 U280 ( .A1(n269), .A2(n232), .B(n231), .C(n230), .Z(n235) );
  INVD0 U281 ( .I(invalid_s6), .ZN(n233) );
  XOR2D0 U282 ( .A1(y[31]), .A2(x[31]), .Z(sign_out) );
  INR2D0 U283 ( .A1(finite_result_31_), .B1(invalid_s6), .ZN(N181) );
  XNR2D0 U284 ( .A1(DP_OP_58J2_123_7635_n43), .A2(n236), .ZN(N62) );
  XNR2D0 U285 ( .A1(DP_OP_57J2_122_2635_n1), .A2(DP_OP_58J2_123_7635_n3), .ZN(
        N70) );
  AO22D0 U286 ( .A1(core_value[1]), .A2(n37), .B1(n10), .B2(n35), .Z(N150) );
  AOI22D0 U287 ( .A1(n13), .A2(n47), .B1(n14), .B2(n660), .ZN(n238) );
  AOI22D0 U288 ( .A1(core_value[1]), .A2(n33), .B1(n10), .B2(n264), .ZN(n237)
         );
  INVD0 U289 ( .I(core_value[2]), .ZN(n241) );
  AOI22D0 U290 ( .A1(core_value[1]), .A2(n620), .B1(core_value[3]), .B2(n32), 
        .ZN(n240) );
  AOI22D0 U291 ( .A1(core_value[4]), .A2(n34), .B1(core_value[5]), .B2(n630), 
        .ZN(n239) );
  INVD0 U292 ( .I(core_value[6]), .ZN(n244) );
  AOI22D0 U293 ( .A1(n18), .A2(n41), .B1(core_value[5]), .B2(n61), .ZN(n243)
         );
  AOI22D0 U294 ( .A1(core_value[8]), .A2(n44), .B1(core_value[9]), .B2(n660), 
        .ZN(n242) );
  INVD0 U295 ( .I(core_value[10]), .ZN(n247) );
  AOI22D0 U296 ( .A1(n22), .A2(n42), .B1(core_value[9]), .B2(n60), .ZN(n246)
         );
  AOI22D0 U297 ( .A1(n23), .A2(n47), .B1(core_value[13]), .B2(n640), .ZN(n245)
         );
  INVD0 U298 ( .I(core_value[11]), .ZN(n250) );
  AOI22D0 U299 ( .A1(core_value[12]), .A2(n32), .B1(core_value[10]), .B2(n620), 
        .ZN(n249) );
  AOI22D0 U300 ( .A1(n24), .A2(n46), .B1(core_value[14]), .B2(n37), .ZN(n248)
         );
  INVD0 U301 ( .I(core_value[13]), .ZN(n253) );
  AOI22D0 U302 ( .A1(core_value[12]), .A2(n61), .B1(core_value[14]), .B2(n43), 
        .ZN(n252) );
  AOI22D0 U303 ( .A1(core_value[15]), .A2(n45), .B1(core_value[16]), .B2(n650), 
        .ZN(n251) );
  INVD0 U304 ( .I(core_value[16]), .ZN(n257) );
  AOI22D0 U305 ( .A1(core_value[15]), .A2(n59), .B1(core_value[17]), .B2(n41), 
        .ZN(n255) );
  AOI22D0 U306 ( .A1(core_value[18]), .A2(n46), .B1(n30), .B2(n640), .ZN(n254)
         );
  AOI22D0 U307 ( .A1(n30), .A2(n43), .B1(core_value[17]), .B2(n59), .ZN(n260)
         );
  AOI22D0 U308 ( .A1(n29), .A2(n264), .B1(n12), .B2(n34), .ZN(n259) );
  OAI211D0 U309 ( .A1(n269), .A2(n261), .B(n260), .C(n259), .ZN(N170) );
  AOI22D0 U310 ( .A1(core_value[18]), .A2(n9), .B1(core_value[20]), .B2(n42), 
        .ZN(n267) );
  AOI22D0 U311 ( .A1(core_value[22]), .A2(n650), .B1(core_value[19]), .B2(n264), .ZN(n266) );
  OAI211D0 U312 ( .A1(n269), .A2(n268), .B(n267), .C(n266), .ZN(N171) );
  OAI222D0 U313 ( .A1(n275), .A2(n274), .B1(n273), .B2(n272), .C1(n271), .C2(
        n270), .ZN(zero_result) );
endmodule


module oadm_dm_l1 ( clk, x, y, divide_mode, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  input clk, divide_mode;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44;

  oadm_dm_fixed_APPROX_LEVEL1 impl ( .clk(clk), .x({x[31:23], n44, n43, n42, 
        n41, n40, n39, n38, n37, n36, n35, n34, n33, n32, n31, n30, n29, n28, 
        n27, n26, n25, n24, n23, x[0]}), .y({y[31:22], n22, n21, n20, n19, n18, 
        n17, n16, n15, n14, n13, n12, n11, n10, n9, n8, n7, n6, n5, n4, n3, n2, 
        n1}), .divide_mode(divide_mode), .result(result) );
  BUFFD1 U1 ( .I(x[9]), .Z(n31) );
  BUFFD1 U2 ( .I(x[7]), .Z(n29) );
  BUFFD1 U3 ( .I(y[1]), .Z(n2) );
  BUFFD1 U4 ( .I(x[21]), .Z(n43) );
  BUFFD1 U5 ( .I(x[20]), .Z(n42) );
  BUFFD1 U6 ( .I(x[19]), .Z(n41) );
  BUFFD1 U7 ( .I(x[18]), .Z(n40) );
  BUFFD1 U8 ( .I(x[17]), .Z(n39) );
  BUFFD0 U9 ( .I(x[5]), .Z(n27) );
  BUFFD0 U10 ( .I(x[4]), .Z(n26) );
  BUFFD0 U11 ( .I(x[1]), .Z(n23) );
  BUFFD0 U12 ( .I(x[3]), .Z(n25) );
  BUFFD0 U13 ( .I(x[6]), .Z(n28) );
  BUFFD0 U14 ( .I(x[2]), .Z(n24) );
  BUFFD1 U15 ( .I(y[21]), .Z(n22) );
  BUFFD1 U16 ( .I(y[20]), .Z(n21) );
  BUFFD1 U17 ( .I(y[19]), .Z(n20) );
  BUFFD0 U18 ( .I(x[8]), .Z(n30) );
  BUFFD1 U19 ( .I(y[18]), .Z(n19) );
  BUFFD1 U20 ( .I(y[17]), .Z(n18) );
  BUFFD1 U21 ( .I(y[16]), .Z(n17) );
  BUFFD1 U22 ( .I(y[15]), .Z(n16) );
  BUFFD1 U23 ( .I(y[14]), .Z(n15) );
  BUFFD1 U24 ( .I(y[13]), .Z(n14) );
  BUFFD1 U25 ( .I(y[12]), .Z(n13) );
  BUFFD1 U26 ( .I(x[10]), .Z(n32) );
  BUFFD1 U27 ( .I(y[11]), .Z(n12) );
  BUFFD1 U28 ( .I(y[10]), .Z(n11) );
  BUFFD1 U29 ( .I(y[9]), .Z(n10) );
  BUFFD1 U30 ( .I(y[8]), .Z(n9) );
  BUFFD0 U31 ( .I(x[12]), .Z(n34) );
  BUFFD1 U32 ( .I(x[16]), .Z(n38) );
  BUFFD1 U33 ( .I(x[15]), .Z(n37) );
  BUFFD1 U34 ( .I(y[2]), .Z(n3) );
  BUFFD1 U35 ( .I(y[3]), .Z(n4) );
  BUFFD1 U36 ( .I(y[0]), .Z(n1) );
  BUFFD1 U37 ( .I(x[14]), .Z(n36) );
  BUFFD1 U38 ( .I(y[4]), .Z(n5) );
  BUFFD1 U39 ( .I(y[5]), .Z(n6) );
  BUFFD1 U40 ( .I(y[6]), .Z(n7) );
  BUFFD1 U41 ( .I(y[7]), .Z(n8) );
  CKBD1 U42 ( .I(x[22]), .Z(n44) );
  BUFFD1 U43 ( .I(x[13]), .Z(n35) );
  BUFFD1 U44 ( .I(x[11]), .Z(n33) );
endmodule

