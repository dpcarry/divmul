/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Sat Aug 15 02:42:42 2026
/////////////////////////////////////////////////////////////


module csa3_WIDTH29_2 ( input_a, input_b, input_c, sum, carry );
  input [28:0] input_a;
  input [28:0] input_b;
  input [28:0] input_c;
  output [28:0] sum;
  output [28:0] carry;


  CKAN2D0 U2 ( .A1(input_b[9]), .A2(input_a[9]), .Z(carry[10]) );
  XOR2D0 U3 ( .A1(input_b[23]), .A2(input_a[23]), .Z(sum[23]) );
  XOR2D0 U4 ( .A1(input_b[22]), .A2(input_a[22]), .Z(sum[22]) );
  CKAN2D0 U5 ( .A1(input_b[22]), .A2(input_a[22]), .Z(carry[23]) );
  CKAN2D0 U6 ( .A1(input_b[21]), .A2(input_a[21]), .Z(carry[22]) );
  AN2D0 U7 ( .A1(input_b[20]), .A2(input_a[20]), .Z(carry[21]) );
  AN2D0 U8 ( .A1(input_b[19]), .A2(input_a[19]), .Z(carry[20]) );
  AN2D0 U9 ( .A1(input_b[13]), .A2(input_a[13]), .Z(carry[14]) );
  CKAN2D1 U10 ( .A1(input_b[12]), .A2(input_a[12]), .Z(carry[13]) );
  CKAN2D1 U11 ( .A1(input_b[11]), .A2(input_a[11]), .Z(carry[12]) );
  CKAN2D0 U12 ( .A1(input_b[7]), .A2(input_a[7]), .Z(carry[8]) );
  XOR2D0 U13 ( .A1(input_b[28]), .A2(input_a[28]), .Z(sum[28]) );
  XOR2D0 U14 ( .A1(input_b[21]), .A2(input_a[21]), .Z(sum[21]) );
  XOR2D0 U15 ( .A1(input_b[20]), .A2(input_a[20]), .Z(sum[20]) );
  XOR2D0 U16 ( .A1(input_b[19]), .A2(input_a[19]), .Z(sum[19]) );
  XOR2D0 U17 ( .A1(input_b[18]), .A2(input_a[18]), .Z(sum[18]) );
  CKAN2D0 U18 ( .A1(input_b[18]), .A2(input_a[18]), .Z(carry[19]) );
  XOR2D0 U19 ( .A1(input_b[17]), .A2(input_a[17]), .Z(sum[17]) );
  XOR2D0 U20 ( .A1(input_b[15]), .A2(input_a[15]), .Z(sum[15]) );
  XOR2D0 U21 ( .A1(input_b[16]), .A2(input_a[16]), .Z(sum[16]) );
  XOR2D0 U22 ( .A1(input_b[14]), .A2(input_a[14]), .Z(sum[14]) );
  AN2D0 U23 ( .A1(input_b[8]), .A2(input_a[8]), .Z(carry[9]) );
  AN2XD1 U24 ( .A1(input_b[10]), .A2(input_a[10]), .Z(carry[11]) );
  CKAN2D0 U25 ( .A1(input_b[5]), .A2(input_a[5]), .Z(carry[6]) );
  CKAN2D0 U26 ( .A1(input_b[3]), .A2(input_a[3]), .Z(carry[4]) );
  CKAN2D0 U27 ( .A1(input_b[0]), .A2(input_a[0]), .Z(carry[1]) );
  CKAN2D0 U28 ( .A1(input_b[1]), .A2(input_a[1]), .Z(carry[2]) );
  CKAN2D0 U29 ( .A1(input_b[2]), .A2(input_a[2]), .Z(carry[3]) );
  CKAN2D0 U30 ( .A1(input_b[16]), .A2(input_a[16]), .Z(carry[17]) );
  CKAN2D0 U31 ( .A1(input_b[15]), .A2(input_a[15]), .Z(carry[16]) );
  CKAN2D0 U32 ( .A1(input_b[14]), .A2(input_a[14]), .Z(carry[15]) );
  CKAN2D0 U33 ( .A1(input_b[17]), .A2(input_a[17]), .Z(carry[18]) );
  CKAN2D0 U34 ( .A1(input_b[27]), .A2(input_a[27]), .Z(carry[28]) );
  CKXOR2D1 U35 ( .A1(input_b[5]), .A2(input_a[5]), .Z(sum[5]) );
  CKAN2D1 U36 ( .A1(input_b[4]), .A2(input_a[4]), .Z(carry[5]) );
  CKAN2D1 U37 ( .A1(input_b[6]), .A2(input_a[6]), .Z(carry[7]) );
  CKAN2D1 U38 ( .A1(input_b[23]), .A2(input_a[23]), .Z(carry[24]) );
  CKAN2D1 U39 ( .A1(input_b[24]), .A2(input_a[24]), .Z(carry[25]) );
  CKAN2D1 U40 ( .A1(input_b[25]), .A2(input_a[25]), .Z(carry[26]) );
  CKAN2D1 U41 ( .A1(input_b[26]), .A2(input_a[26]), .Z(carry[27]) );
  XOR2D0 U42 ( .A1(input_b[0]), .A2(input_a[0]), .Z(sum[0]) );
  XOR2D0 U43 ( .A1(input_b[1]), .A2(input_a[1]), .Z(sum[1]) );
  XOR2D0 U44 ( .A1(input_b[2]), .A2(input_a[2]), .Z(sum[2]) );
  CKXOR2D1 U45 ( .A1(input_b[3]), .A2(input_a[3]), .Z(sum[3]) );
  CKXOR2D1 U46 ( .A1(input_b[4]), .A2(input_a[4]), .Z(sum[4]) );
  CKXOR2D1 U47 ( .A1(input_b[6]), .A2(input_a[6]), .Z(sum[6]) );
  CKXOR2D1 U48 ( .A1(input_b[7]), .A2(input_a[7]), .Z(sum[7]) );
  CKXOR2D1 U49 ( .A1(input_b[8]), .A2(input_a[8]), .Z(sum[8]) );
  CKXOR2D1 U50 ( .A1(input_b[9]), .A2(input_a[9]), .Z(sum[9]) );
  CKXOR2D1 U51 ( .A1(input_b[10]), .A2(input_a[10]), .Z(sum[10]) );
  CKXOR2D1 U52 ( .A1(input_b[11]), .A2(input_a[11]), .Z(sum[11]) );
  CKXOR2D1 U53 ( .A1(input_b[12]), .A2(input_a[12]), .Z(sum[12]) );
  CKXOR2D1 U54 ( .A1(input_b[13]), .A2(input_a[13]), .Z(sum[13]) );
  CKXOR2D1 U55 ( .A1(input_b[24]), .A2(input_a[24]), .Z(sum[24]) );
  CKXOR2D1 U56 ( .A1(input_b[25]), .A2(input_a[25]), .Z(sum[25]) );
  CKXOR2D1 U57 ( .A1(input_b[26]), .A2(input_a[26]), .Z(sum[26]) );
  CKXOR2D1 U58 ( .A1(input_b[27]), .A2(input_a[27]), .Z(sum[27]) );
endmodule


module csa3_WIDTH29_1 ( input_a, input_b, input_c, sum, carry );
  input [28:0] input_a;
  input [28:0] input_b;
  input [28:0] input_c;
  output [28:0] sum;
  output [28:0] carry;


  XOR2D0 U2 ( .A1(input_a[23]), .A2(input_b[23]), .Z(sum[23]) );
  AN2D0 U3 ( .A1(input_a[22]), .A2(input_b[22]), .Z(carry[23]) );
  AN2D0 U4 ( .A1(input_a[21]), .A2(input_b[21]), .Z(carry[22]) );
  AN2D0 U5 ( .A1(input_a[20]), .A2(input_b[20]), .Z(carry[21]) );
  AN2D0 U6 ( .A1(input_a[19]), .A2(input_b[19]), .Z(carry[20]) );
  CKAN2D0 U7 ( .A1(input_a[18]), .A2(input_b[18]), .Z(carry[19]) );
  AN2D0 U8 ( .A1(input_a[12]), .A2(input_b[12]), .Z(carry[13]) );
  AN2D0 U9 ( .A1(input_a[13]), .A2(input_b[13]), .Z(carry[14]) );
  AN2D0 U10 ( .A1(input_a[11]), .A2(input_b[11]), .Z(carry[12]) );
  CKAN2D1 U11 ( .A1(input_a[23]), .A2(input_b[23]), .Z(carry[24]) );
  CKAN2D0 U12 ( .A1(input_a[17]), .A2(input_b[17]), .Z(carry[18]) );
  CKAN2D0 U13 ( .A1(input_a[7]), .A2(input_b[7]), .Z(carry[8]) );
  CKXOR2D1 U14 ( .A1(input_a[25]), .A2(input_b[25]), .Z(sum[25]) );
  XOR2D0 U15 ( .A1(input_a[21]), .A2(input_b[21]), .Z(sum[21]) );
  XOR2D0 U16 ( .A1(input_a[20]), .A2(input_b[20]), .Z(sum[20]) );
  XOR2D0 U17 ( .A1(input_a[19]), .A2(input_b[19]), .Z(sum[19]) );
  XOR2D0 U18 ( .A1(input_a[18]), .A2(input_b[18]), .Z(sum[18]) );
  XOR2D0 U19 ( .A1(input_a[17]), .A2(input_b[17]), .Z(sum[17]) );
  XOR2D0 U20 ( .A1(input_a[16]), .A2(input_b[16]), .Z(sum[16]) );
  XOR2D0 U21 ( .A1(input_a[15]), .A2(input_b[15]), .Z(sum[15]) );
  AN2D1 U22 ( .A1(input_a[8]), .A2(input_b[8]), .Z(carry[9]) );
  AN2D1 U23 ( .A1(input_a[6]), .A2(input_b[6]), .Z(carry[7]) );
  AN2D1 U24 ( .A1(input_a[10]), .A2(input_b[10]), .Z(carry[11]) );
  CKAN2D0 U25 ( .A1(input_a[5]), .A2(input_b[5]), .Z(carry[6]) );
  CKAN2D0 U26 ( .A1(input_a[9]), .A2(input_b[9]), .Z(carry[10]) );
  AN2XD1 U27 ( .A1(input_a[26]), .A2(input_b[26]), .Z(carry[27]) );
  AN2XD1 U28 ( .A1(input_a[27]), .A2(input_b[27]), .Z(carry[28]) );
  AN2XD1 U29 ( .A1(input_a[24]), .A2(input_b[24]), .Z(carry[25]) );
  AN2XD1 U30 ( .A1(input_a[25]), .A2(input_b[25]), .Z(carry[26]) );
  CKXOR2D1 U31 ( .A1(input_a[5]), .A2(input_b[5]), .Z(sum[5]) );
  BUFFD0 U32 ( .I(input_a[0]), .Z(sum[0]) );
  CKAN2D0 U33 ( .A1(input_a[3]), .A2(input_b[3]), .Z(carry[4]) );
  CKAN2D0 U34 ( .A1(input_a[1]), .A2(input_b[1]), .Z(carry[2]) );
  CKAN2D0 U35 ( .A1(input_a[2]), .A2(input_b[2]), .Z(carry[3]) );
  CKAN2D0 U36 ( .A1(input_a[15]), .A2(input_b[15]), .Z(carry[16]) );
  CKAN2D0 U37 ( .A1(input_a[16]), .A2(input_b[16]), .Z(carry[17]) );
  CKAN2D0 U38 ( .A1(input_a[14]), .A2(input_b[14]), .Z(carry[15]) );
  CKAN2D0 U39 ( .A1(input_a[4]), .A2(input_b[4]), .Z(carry[5]) );
  XOR2D0 U40 ( .A1(input_a[1]), .A2(input_b[1]), .Z(sum[1]) );
  XOR2D0 U41 ( .A1(input_a[2]), .A2(input_b[2]), .Z(sum[2]) );
  CKXOR2D1 U42 ( .A1(input_a[3]), .A2(input_b[3]), .Z(sum[3]) );
  CKXOR2D1 U43 ( .A1(input_a[4]), .A2(input_b[4]), .Z(sum[4]) );
  CKXOR2D1 U44 ( .A1(input_a[6]), .A2(input_b[6]), .Z(sum[6]) );
  CKXOR2D1 U45 ( .A1(input_a[7]), .A2(input_b[7]), .Z(sum[7]) );
  CKXOR2D1 U46 ( .A1(input_a[8]), .A2(input_b[8]), .Z(sum[8]) );
  CKXOR2D1 U47 ( .A1(input_a[9]), .A2(input_b[9]), .Z(sum[9]) );
  CKXOR2D1 U48 ( .A1(input_a[10]), .A2(input_b[10]), .Z(sum[10]) );
  CKXOR2D1 U49 ( .A1(input_a[11]), .A2(input_b[11]), .Z(sum[11]) );
  CKXOR2D1 U50 ( .A1(input_a[12]), .A2(input_b[12]), .Z(sum[12]) );
  CKXOR2D1 U51 ( .A1(input_a[13]), .A2(input_b[13]), .Z(sum[13]) );
  CKXOR2D1 U52 ( .A1(input_a[14]), .A2(input_b[14]), .Z(sum[14]) );
  CKXOR2D1 U53 ( .A1(input_a[22]), .A2(input_b[22]), .Z(sum[22]) );
  CKXOR2D1 U54 ( .A1(input_a[24]), .A2(input_b[24]), .Z(sum[24]) );
  CKXOR2D1 U55 ( .A1(input_a[26]), .A2(input_b[26]), .Z(sum[26]) );
  CKXOR2D1 U56 ( .A1(input_a[27]), .A2(input_b[27]), .Z(sum[27]) );
  CKXOR2D1 U57 ( .A1(input_a[28]), .A2(input_b[28]), .Z(sum[28]) );
endmodule


module csa3_WIDTH29_0 ( input_a, input_b, input_c, sum, carry );
  input [28:0] input_a;
  input [28:0] input_b;
  input [28:0] input_c;
  output [28:0] sum;
  output [28:0] carry;


  CKAN2D1 U2 ( .A1(input_a[24]), .A2(input_b[24]), .Z(carry[25]) );
  CKAN2D0 U3 ( .A1(input_a[23]), .A2(input_b[23]), .Z(carry[24]) );
  AN2D0 U4 ( .A1(input_a[22]), .A2(input_b[22]), .Z(carry[23]) );
  CKAN2D0 U5 ( .A1(input_a[21]), .A2(input_b[21]), .Z(carry[22]) );
  CKAN2D0 U6 ( .A1(input_a[20]), .A2(input_b[20]), .Z(carry[21]) );
  AN2D0 U7 ( .A1(input_a[19]), .A2(input_b[19]), .Z(carry[20]) );
  AN2D0 U8 ( .A1(input_a[12]), .A2(input_b[12]), .Z(carry[13]) );
  AN2D0 U9 ( .A1(input_a[11]), .A2(input_b[11]), .Z(carry[12]) );
  CKAN2D0 U10 ( .A1(input_a[9]), .A2(input_b[9]), .Z(carry[10]) );
  CKAN2D0 U11 ( .A1(input_a[7]), .A2(input_b[7]), .Z(carry[8]) );
  AN2D0 U12 ( .A1(input_a[5]), .A2(input_b[5]), .Z(carry[6]) );
  AN2D0 U13 ( .A1(input_a[4]), .A2(input_b[4]), .Z(carry[5]) );
  XOR2D0 U14 ( .A1(input_a[23]), .A2(input_b[23]), .Z(sum[23]) );
  XOR2D0 U15 ( .A1(input_a[22]), .A2(input_b[22]), .Z(sum[22]) );
  XOR2D0 U16 ( .A1(input_a[21]), .A2(input_b[21]), .Z(sum[21]) );
  XOR2D0 U17 ( .A1(input_a[20]), .A2(input_b[20]), .Z(sum[20]) );
  XOR2D0 U18 ( .A1(input_a[19]), .A2(input_b[19]), .Z(sum[19]) );
  XOR2D0 U19 ( .A1(input_a[18]), .A2(input_b[18]), .Z(sum[18]) );
  XOR2D0 U20 ( .A1(input_a[17]), .A2(input_b[17]), .Z(sum[17]) );
  XOR2D0 U21 ( .A1(input_a[16]), .A2(input_b[16]), .Z(sum[16]) );
  XOR2D0 U22 ( .A1(input_a[15]), .A2(input_b[15]), .Z(sum[15]) );
  XOR2D0 U23 ( .A1(input_a[12]), .A2(input_b[12]), .Z(sum[12]) );
  XOR2D0 U24 ( .A1(input_a[13]), .A2(input_b[13]), .Z(sum[13]) );
  XOR2D0 U25 ( .A1(input_a[14]), .A2(input_b[14]), .Z(sum[14]) );
  AN2D0 U26 ( .A1(input_a[10]), .A2(input_b[10]), .Z(carry[11]) );
  AN2D0 U27 ( .A1(input_a[8]), .A2(input_b[8]), .Z(carry[9]) );
  AN2D0 U28 ( .A1(input_a[6]), .A2(input_b[6]), .Z(carry[7]) );
  AN2XD1 U29 ( .A1(input_a[26]), .A2(input_b[26]), .Z(carry[27]) );
  AN2XD1 U30 ( .A1(input_a[27]), .A2(input_b[27]), .Z(carry[28]) );
  AN2XD1 U31 ( .A1(input_a[25]), .A2(input_b[25]), .Z(carry[26]) );
  BUFFD0 U32 ( .I(input_a[0]), .Z(sum[0]) );
  BUFFD0 U33 ( .I(input_a[1]), .Z(sum[1]) );
  CKAN2D0 U34 ( .A1(input_a[16]), .A2(input_b[16]), .Z(carry[17]) );
  CKAN2D0 U35 ( .A1(input_a[3]), .A2(input_b[3]), .Z(carry[4]) );
  CKAN2D0 U36 ( .A1(input_a[2]), .A2(input_b[2]), .Z(carry[3]) );
  CKAN2D0 U37 ( .A1(input_a[14]), .A2(input_b[14]), .Z(carry[15]) );
  CKAN2D0 U38 ( .A1(input_a[15]), .A2(input_b[15]), .Z(carry[16]) );
  CKAN2D0 U39 ( .A1(input_a[17]), .A2(input_b[17]), .Z(carry[18]) );
  CKAN2D0 U40 ( .A1(input_a[13]), .A2(input_b[13]), .Z(carry[14]) );
  CKAN2D0 U41 ( .A1(input_a[18]), .A2(input_b[18]), .Z(carry[19]) );
  CKXOR2D1 U42 ( .A1(input_a[26]), .A2(input_b[26]), .Z(sum[26]) );
  CKXOR2D1 U43 ( .A1(input_a[28]), .A2(input_b[28]), .Z(sum[28]) );
  XOR2D0 U44 ( .A1(input_a[5]), .A2(input_b[5]), .Z(sum[5]) );
  XOR2D0 U45 ( .A1(input_a[2]), .A2(input_b[2]), .Z(sum[2]) );
  XOR2D0 U46 ( .A1(input_a[3]), .A2(input_b[3]), .Z(sum[3]) );
  CKXOR2D1 U47 ( .A1(input_a[4]), .A2(input_b[4]), .Z(sum[4]) );
  CKXOR2D1 U48 ( .A1(input_a[6]), .A2(input_b[6]), .Z(sum[6]) );
  CKXOR2D1 U49 ( .A1(input_a[7]), .A2(input_b[7]), .Z(sum[7]) );
  CKXOR2D1 U50 ( .A1(input_a[8]), .A2(input_b[8]), .Z(sum[8]) );
  CKXOR2D1 U51 ( .A1(input_a[9]), .A2(input_b[9]), .Z(sum[9]) );
  CKXOR2D1 U52 ( .A1(input_a[10]), .A2(input_b[10]), .Z(sum[10]) );
  CKXOR2D1 U53 ( .A1(input_a[11]), .A2(input_b[11]), .Z(sum[11]) );
  CKXOR2D1 U54 ( .A1(input_a[24]), .A2(input_b[24]), .Z(sum[24]) );
  CKXOR2D1 U55 ( .A1(input_a[25]), .A2(input_b[25]), .Z(sum[25]) );
  CKXOR2D1 U56 ( .A1(input_a[27]), .A2(input_b[27]), .Z(sum[27]) );
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
         n310, n311, n312, n313, n314;
  wire   [35:8] product_comb;

  DFQD1 product_stage_reg_36_ ( .D(n28), .CP(clk), .Q(scaled_value[28]) );
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
  FA1D1 U3 ( .A(value[2]), .B(value[6]), .CI(value[4]), .CO(n266), .S(n63) );
  CKND2D0 U4 ( .A1(n190), .A2(n189), .ZN(n66) );
  NR2D0 U5 ( .A1(n186), .A2(n185), .ZN(n50) );
  CKND2D1 U6 ( .A1(n232), .A2(n231), .ZN(n51) );
  CKND2D0 U7 ( .A1(n287), .A2(n286), .ZN(n46) );
  ND2D0 U8 ( .A1(n91), .A2(n92), .ZN(n55) );
  CKND2D1 U9 ( .A1(n131), .A2(n130), .ZN(n53) );
  CKND2D1 U10 ( .A1(n135), .A2(n134), .ZN(n72) );
  CKND2D1 U11 ( .A1(n144), .A2(n143), .ZN(n70) );
  ND2D0 U12 ( .A1(n217), .A2(n216), .ZN(n68) );
  BUFFD1 U13 ( .I(value[11]), .Z(n12) );
  BUFFD0 U14 ( .I(value[28]), .Z(n28) );
  BUFFD0 U15 ( .I(y_fraction_msb[3]), .Z(n313) );
  NR2D0 U16 ( .A1(n135), .A2(n134), .ZN(n73) );
  OR2D0 U17 ( .A1(n125), .A2(n124), .Z(n30) );
  NR2D0 U18 ( .A1(n190), .A2(n189), .ZN(n67) );
  NR2D0 U19 ( .A1(n144), .A2(n143), .ZN(n71) );
  OR2D0 U20 ( .A1(n236), .A2(n235), .Z(n33) );
  OR2D0 U21 ( .A1(n175), .A2(n174), .Z(n35) );
  INVD0 U22 ( .I(n185), .ZN(n49) );
  OR2D0 U23 ( .A1(n207), .A2(n206), .Z(n32) );
  NR2D0 U24 ( .A1(n131), .A2(n130), .ZN(n54) );
  OR2D0 U25 ( .A1(n121), .A2(n120), .Z(n31) );
  OR2D0 U26 ( .A1(n223), .A2(n222), .Z(n29) );
  INVD0 U27 ( .I(n186), .ZN(n48) );
  NR2D0 U28 ( .A1(n232), .A2(n231), .ZN(n52) );
  BUFFD1 U29 ( .I(value[25]), .Z(n3) );
  OAI21D1 U30 ( .A1(n82), .A2(n56), .B(n55), .ZN(n76) );
  XNR2D0 U31 ( .A1(n82), .A2(n81), .ZN(n86) );
  XNR2D0 U32 ( .A1(n89), .A2(n88), .ZN(n94) );
  XNR2D0 U33 ( .A1(n133), .A2(n132), .ZN(n139) );
  XNR2D0 U34 ( .A1(n123), .A2(n122), .ZN(n129) );
  OAI21D1 U35 ( .A1(n137), .A2(n73), .B(n72), .ZN(n114) );
  OAI21D1 U36 ( .A1(n192), .A2(n67), .B(n66), .ZN(n198) );
  CKND2D1 U37 ( .A1(n47), .A2(n46), .ZN(n295) );
  NR2D0 U38 ( .A1(n91), .A2(n92), .ZN(n56) );
  OR2D0 U39 ( .A1(n99), .A2(n87), .Z(n36) );
  NR2D0 U40 ( .A1(n217), .A2(n216), .ZN(n69) );
  OR2D0 U41 ( .A1(n179), .A2(n178), .Z(n34) );
  BUFFD1 U42 ( .I(value[13]), .Z(n14) );
  BUFFD1 U43 ( .I(value[12]), .Z(n13) );
  BUFFD1 U44 ( .I(value[15]), .Z(n16) );
  BUFFD1 U45 ( .I(value[17]), .Z(n18) );
  BUFFD1 U46 ( .I(value[14]), .Z(n15) );
  BUFFD1 U47 ( .I(value[16]), .Z(n17) );
  BUFFD1 U48 ( .I(value[18]), .Z(n19) );
  BUFFD1 U49 ( .I(value[20]), .Z(n21) );
  BUFFD1 U50 ( .I(value[22]), .Z(n23) );
  BUFFD1 U51 ( .I(value[19]), .Z(n20) );
  BUFFD1 U52 ( .I(value[21]), .Z(n22) );
  BUFFD0 U53 ( .I(n182), .Z(n117) );
  BUFFD0 U54 ( .I(n182), .Z(n163) );
  BUFFD1 U55 ( .I(value[7]), .Z(n11) );
  BUFFD0 U56 ( .I(value[26]), .Z(n4) );
  BUFFD1 U57 ( .I(value[10]), .Z(n27) );
  BUFFD1 U58 ( .I(value[9]), .Z(n26) );
  BUFFD1 U59 ( .I(value[8]), .Z(n25) );
  BUFFD1 U60 ( .I(value[1]), .Z(n1) );
  BUFFD0 U61 ( .I(value[2]), .Z(n2) );
  BUFFD1 U62 ( .I(value[24]), .Z(n5) );
  BUFFD1 U63 ( .I(value[27]), .Z(n6) );
  BUFFD1 U64 ( .I(value[3]), .Z(n7) );
  BUFFD1 U65 ( .I(value[4]), .Z(n8) );
  BUFFD1 U66 ( .I(value[5]), .Z(n9) );
  CKBD1 U67 ( .I(value[6]), .Z(n10) );
  BUFFD1 U68 ( .I(value[23]), .Z(n24) );
  FA1D0 U69 ( .A(n4), .B(n84), .CI(n83), .CO(n77), .S(n85) );
  FA1D0 U70 ( .A(n4), .B(n84), .CI(n76), .CO(n312), .S(n75) );
  FA1D0 U71 ( .A(n1), .B(value[6]), .CI(n7), .CO(n40), .S(n39) );
  AOI22D1 U72 ( .A1(n181), .A2(n34), .B1(n179), .B2(n178), .ZN(n192) );
  OAI21D1 U73 ( .A1(n219), .A2(n69), .B(n68), .ZN(n226) );
  AOI22D1 U74 ( .A1(n127), .A2(n30), .B1(n125), .B2(n124), .ZN(n137) );
  BUFFD1 U75 ( .I(y_fraction_msb[3]), .Z(n182) );
  FICIND1 U76 ( .CIN(n264), .B(n265), .A(n266), .CO(n272), .S(n267) );
  FA1D0 U77 ( .A(n305), .B(n304), .CI(n303), .CO(n166), .S(n311) );
  FA1D0 U78 ( .A(n228), .B(n227), .CI(n226), .CO(n238), .S(n229) );
  FA1D0 U79 ( .A(n116), .B(n115), .CI(n114), .CO(n106), .S(n118) );
  FA1D0 U80 ( .A(n6), .B(n28), .CI(n312), .CO(n314), .S(n79) );
  MUX2D0 U81 ( .I0(n75), .I1(n74), .S(n313), .Z(product_comb[33]) );
  FA1D0 U82 ( .A(value[27]), .B(n23), .CI(n5), .CO(n97), .S(n104) );
  FA1D0 U83 ( .A(value[26]), .B(n22), .CI(n24), .CO(n105), .S(n112) );
  FA1D0 U84 ( .A(value[22]), .B(n18), .CI(n20), .CO(n159), .S(n150) );
  FA1D0 U85 ( .A(value[21]), .B(n17), .CI(n19), .CO(n151), .S(n141) );
  FA1D0 U86 ( .A(value[17]), .B(n13), .CI(n15), .CO(n215), .S(n204) );
  FA1D0 U87 ( .A(value[16]), .B(n12), .CI(n14), .CO(n205), .S(n196) );
  FA1D0 U88 ( .A(value[12]), .B(n11), .CI(n26), .CO(n168), .S(n304) );
  FA1D0 U89 ( .A(value[11]), .B(n10), .CI(n25), .CO(n305), .S(n296) );
  FA1D0 U90 ( .A(value[10]), .B(n9), .CI(n11), .CO(n297), .S(n287) );
  INVD0 U91 ( .I(n287), .ZN(n45) );
  INVD0 U92 ( .I(n286), .ZN(n44) );
  FA1D0 U93 ( .A(value[9]), .B(n8), .CI(n10), .CO(n286), .S(n278) );
  FA1D0 U94 ( .A(value[8]), .B(n7), .CI(n9), .CO(n279), .S(n270) );
  FA1D0 U95 ( .A(n2), .B(value[7]), .CI(n8), .CO(n271), .S(n41) );
  NR2D0 U96 ( .A1(n41), .A2(n40), .ZN(n259) );
  NR2D0 U97 ( .A1(n39), .A2(n60), .ZN(n257) );
  NR2D0 U98 ( .A1(n259), .A2(n257), .ZN(n43) );
  HA1D0 U99 ( .A(value[2]), .B(value[0]), .CO(n60), .S(n59) );
  CKND2D0 U100 ( .A1(value[3]), .A2(value[0]), .ZN(n37) );
  FICIND1 U101 ( .CIN(n37), .B(value[4]), .A(n1), .CO(n38) );
  FA1D0 U102 ( .A(value[5]), .B(n59), .CI(n38), .CO(n255) );
  CKND2D0 U103 ( .A1(n39), .A2(n60), .ZN(n256) );
  CKND2D0 U104 ( .A1(n41), .A2(n40), .ZN(n260) );
  OAI21D0 U105 ( .A1(n259), .A2(n256), .B(n260), .ZN(n42) );
  AOI21D1 U106 ( .A1(n43), .A2(n255), .B(n42), .ZN(n269) );
  IOA21D1 U107 ( .A1(n45), .A2(n44), .B(n289), .ZN(n47) );
  FA1D0 U108 ( .A(value[13]), .B(n25), .CI(n27), .CO(n174), .S(n167) );
  AOI22D2 U109 ( .A1(n177), .A2(n35), .B1(n175), .B2(n174), .ZN(n188) );
  FA1D0 U110 ( .A(value[15]), .B(n27), .CI(n13), .CO(n197), .S(n186) );
  FA1D0 U111 ( .A(value[14]), .B(n26), .CI(n12), .CO(n185), .S(n175) );
  OAI22D2 U112 ( .A1(n188), .A2(n50), .B1(n49), .B2(n48), .ZN(n195) );
  FA1D0 U113 ( .A(value[18]), .B(n14), .CI(n16), .CO(n222), .S(n214) );
  AOI22D2 U114 ( .A1(n225), .A2(n29), .B1(n223), .B2(n222), .ZN(n234) );
  FA1D0 U115 ( .A(value[20]), .B(n16), .CI(n18), .CO(n142), .S(n232) );
  FA1D0 U116 ( .A(value[19]), .B(n15), .CI(n17), .CO(n231), .S(n223) );
  OAI21D2 U117 ( .A1(n234), .A2(n52), .B(n51), .ZN(n140) );
  FA1D0 U118 ( .A(value[23]), .B(n19), .CI(n21), .CO(n120), .S(n158) );
  AOI22D2 U119 ( .A1(n123), .A2(n31), .B1(n121), .B2(n120), .ZN(n133) );
  FA1D0 U120 ( .A(value[25]), .B(n21), .CI(n23), .CO(n113), .S(n131) );
  FA1D0 U121 ( .A(value[24]), .B(n20), .CI(n22), .CO(n130), .S(n121) );
  OAI21D2 U122 ( .A1(n133), .A2(n54), .B(n53), .ZN(n111) );
  FA1D0 U123 ( .A(value[25]), .B(n24), .CI(value[28]), .CO(n87), .S(n96) );
  AOI22D2 U124 ( .A1(n89), .A2(n36), .B1(n99), .B2(n87), .ZN(n82) );
  FA1D0 U125 ( .A(n6), .B(n3), .CI(value[28]), .CO(n84), .S(n91) );
  FA1D0 U126 ( .A(value[26]), .B(n5), .CI(value[28]), .CO(n92), .S(n99) );
  FA1D0 U127 ( .A(value[27]), .B(n24), .CI(n3), .CO(n100), .S(n107) );
  FA1D0 U128 ( .A(value[26]), .B(n23), .CI(n5), .CO(n108), .S(n115) );
  FA1D0 U129 ( .A(value[22]), .B(n19), .CI(value[20]), .CO(n162), .S(n153) );
  FA1D0 U130 ( .A(value[12]), .B(n25), .CI(n27), .CO(n171), .S(n307) );
  FA1D0 U131 ( .A(value[11]), .B(n11), .CI(n26), .CO(n308), .S(n299) );
  FA1D0 U132 ( .A(value[10]), .B(n10), .CI(n25), .CO(n300), .S(n291) );
  FA1D0 U133 ( .A(value[9]), .B(n9), .CI(value[7]), .CO(n292), .S(n281) );
  FA1D0 U134 ( .A(value[8]), .B(n8), .CI(value[6]), .CO(n282), .S(n273) );
  FA1D0 U135 ( .A(value[7]), .B(n7), .CI(value[5]), .CO(n274), .S(n265) );
  NR2XD0 U136 ( .A1(n63), .A2(n62), .ZN(n248) );
  FA1D0 U137 ( .A(value[1]), .B(value[5]), .CI(value[3]), .CO(n62), .S(n61) );
  NR2D0 U138 ( .A1(n61), .A2(n60), .ZN(n246) );
  NR2D0 U139 ( .A1(n248), .A2(n246), .ZN(n65) );
  CKND2D0 U140 ( .A1(n2), .A2(value[0]), .ZN(n57) );
  FICIND1 U141 ( .CIN(n57), .B(value[3]), .A(value[1]), .CO(n58) );
  FA1D0 U142 ( .A(value[4]), .B(n59), .CI(n58), .CO(n244) );
  CKND2D0 U143 ( .A1(n61), .A2(n60), .ZN(n245) );
  CKND2D0 U144 ( .A1(n63), .A2(n62), .ZN(n249) );
  OAI21D0 U145 ( .A1(n248), .A2(n245), .B(n249), .ZN(n64) );
  AOI21D1 U146 ( .A1(n65), .A2(n244), .B(n64), .ZN(n264) );
  FA1D0 U147 ( .A(value[13]), .B(n26), .CI(value[11]), .CO(n178), .S(n170) );
  FA1D0 U148 ( .A(value[15]), .B(n12), .CI(value[13]), .CO(n200), .S(n190) );
  FA1D0 U149 ( .A(value[14]), .B(n27), .CI(value[12]), .CO(n189), .S(n179) );
  FA1D0 U150 ( .A(value[16]), .B(n13), .CI(value[14]), .CO(n206), .S(n199) );
  AOI22D2 U151 ( .A1(n209), .A2(n32), .B1(n207), .B2(n206), .ZN(n219) );
  FA1D0 U152 ( .A(value[18]), .B(n15), .CI(value[16]), .CO(n228), .S(n217) );
  FA1D0 U153 ( .A(value[17]), .B(n14), .CI(value[15]), .CO(n216), .S(n207) );
  FA1D0 U154 ( .A(value[19]), .B(n16), .CI(value[17]), .CO(n235), .S(n227) );
  AOI22D2 U155 ( .A1(n238), .A2(n33), .B1(n236), .B2(n235), .ZN(n146) );
  FA1D0 U156 ( .A(value[21]), .B(n18), .CI(value[19]), .CO(n154), .S(n144) );
  FA1D0 U157 ( .A(value[20]), .B(n17), .CI(value[18]), .CO(n143), .S(n236) );
  OAI21D2 U158 ( .A1(n146), .A2(n71), .B(n70), .ZN(n152) );
  FA1D0 U159 ( .A(value[23]), .B(n20), .CI(value[21]), .CO(n124), .S(n161) );
  FA1D0 U160 ( .A(value[25]), .B(n22), .CI(value[23]), .CO(n116), .S(n135) );
  FA1D0 U161 ( .A(value[24]), .B(n21), .CI(value[22]), .CO(n134), .S(n125) );
  FA1D1 U162 ( .A(n6), .B(n28), .CI(n77), .CO(n78), .S(n74) );
  MUX2D0 U163 ( .I0(n79), .I1(n78), .S(n313), .Z(product_comb[34]) );
  INVD0 U164 ( .I(n92), .ZN(n80) );
  XNR2D0 U165 ( .A1(n80), .A2(n91), .ZN(n81) );
  MUX2D0 U166 ( .I0(n86), .I1(n85), .S(n313), .Z(product_comb[32]) );
  XNR2D0 U167 ( .A1(n99), .A2(n87), .ZN(n88) );
  FA1D1 U168 ( .A(n92), .B(n91), .CI(n90), .CO(n83), .S(n93) );
  MUX2D0 U169 ( .I0(n94), .I1(n93), .S(n117), .Z(product_comb[31]) );
  FA1D1 U170 ( .A(n97), .B(n96), .CI(n95), .CO(n89), .S(n102) );
  FA1D1 U171 ( .A(n100), .B(n99), .CI(n98), .CO(n90), .S(n101) );
  MUX2D0 U172 ( .I0(n102), .I1(n101), .S(n117), .Z(product_comb[30]) );
  FA1D1 U173 ( .A(n105), .B(n104), .CI(n103), .CO(n95), .S(n110) );
  FA1D1 U174 ( .A(n108), .B(n107), .CI(n106), .CO(n98), .S(n109) );
  MUX2D0 U175 ( .I0(n110), .I1(n109), .S(n117), .Z(product_comb[29]) );
  FA1D1 U176 ( .A(n113), .B(n112), .CI(n111), .CO(n103), .S(n119) );
  MUX2D0 U177 ( .I0(n119), .I1(n118), .S(n117), .Z(product_comb[28]) );
  XNR2D0 U178 ( .A1(n121), .A2(n120), .ZN(n122) );
  XNR2D0 U179 ( .A1(n125), .A2(n124), .ZN(n126) );
  XNR2D1 U180 ( .A1(n127), .A2(n126), .ZN(n128) );
  MUX2D0 U181 ( .I0(n129), .I1(n128), .S(n163), .Z(product_comb[26]) );
  XOR2D0 U182 ( .A1(n131), .A2(n130), .Z(n132) );
  XOR2D0 U183 ( .A1(n135), .A2(n134), .Z(n136) );
  XNR2D1 U184 ( .A1(n137), .A2(n136), .ZN(n138) );
  MUX2D0 U185 ( .I0(n139), .I1(n138), .S(n163), .Z(product_comb[27]) );
  FA1D1 U186 ( .A(n142), .B(n141), .CI(n140), .CO(n149), .S(n148) );
  XOR2D0 U187 ( .A1(n144), .A2(n143), .Z(n145) );
  XNR2D0 U188 ( .A1(n146), .A2(n145), .ZN(n147) );
  BUFFD0 U189 ( .I(n182), .Z(n239) );
  MUX2D0 U190 ( .I0(n148), .I1(n147), .S(n239), .Z(product_comb[23]) );
  FA1D1 U191 ( .A(n151), .B(n150), .CI(n149), .CO(n157), .S(n156) );
  FA1D1 U192 ( .A(n154), .B(n153), .CI(n152), .CO(n160), .S(n155) );
  MUX2D0 U193 ( .I0(n156), .I1(n155), .S(n163), .Z(product_comb[24]) );
  FA1D1 U194 ( .A(n159), .B(n158), .CI(n157), .CO(n123), .S(n165) );
  FA1D1 U195 ( .A(n162), .B(n161), .CI(n160), .CO(n127), .S(n164) );
  MUX2D0 U196 ( .I0(n165), .I1(n164), .S(n163), .Z(product_comb[25]) );
  FA1D1 U197 ( .A(n168), .B(n167), .CI(n166), .CO(n177), .S(n173) );
  FA1D1 U198 ( .A(n171), .B(n170), .CI(n169), .CO(n181), .S(n172) );
  BUFFD0 U199 ( .I(y_fraction_msb[3]), .Z(n309) );
  MUX2D0 U200 ( .I0(n173), .I1(n172), .S(n309), .Z(product_comb[15]) );
  XNR2D0 U201 ( .A1(n175), .A2(n174), .ZN(n176) );
  XNR2D0 U202 ( .A1(n177), .A2(n176), .ZN(n184) );
  XNR2D0 U203 ( .A1(n179), .A2(n178), .ZN(n180) );
  XNR2D0 U204 ( .A1(n181), .A2(n180), .ZN(n183) );
  BUFFD0 U205 ( .I(n182), .Z(n210) );
  MUX2D0 U206 ( .I0(n184), .I1(n183), .S(n210), .Z(product_comb[16]) );
  XNR2D0 U207 ( .A1(n186), .A2(n185), .ZN(n187) );
  XOR2D0 U208 ( .A1(n188), .A2(n187), .Z(n194) );
  XOR2D0 U209 ( .A1(n190), .A2(n189), .Z(n191) );
  XNR2D0 U210 ( .A1(n192), .A2(n191), .ZN(n193) );
  MUX2D0 U211 ( .I0(n194), .I1(n193), .S(n210), .Z(product_comb[17]) );
  FA1D1 U212 ( .A(n197), .B(n196), .CI(n195), .CO(n203), .S(n202) );
  FA1D1 U213 ( .A(n200), .B(n199), .CI(n198), .CO(n209), .S(n201) );
  MUX2D0 U214 ( .I0(n202), .I1(n201), .S(n210), .Z(product_comb[18]) );
  FA1D1 U215 ( .A(n205), .B(n204), .CI(n203), .CO(n213), .S(n212) );
  XNR2D0 U216 ( .A1(n207), .A2(n206), .ZN(n208) );
  XNR2D0 U217 ( .A1(n209), .A2(n208), .ZN(n211) );
  MUX2D0 U218 ( .I0(n212), .I1(n211), .S(n210), .Z(product_comb[19]) );
  FA1D1 U219 ( .A(n215), .B(n214), .CI(n213), .CO(n225), .S(n221) );
  XOR2D0 U220 ( .A1(n217), .A2(n216), .Z(n218) );
  XNR2D0 U221 ( .A1(n219), .A2(n218), .ZN(n220) );
  MUX2D0 U222 ( .I0(n221), .I1(n220), .S(n239), .Z(product_comb[20]) );
  XNR2D0 U223 ( .A1(n223), .A2(n222), .ZN(n224) );
  XNR2D0 U224 ( .A1(n225), .A2(n224), .ZN(n230) );
  MUX2D0 U225 ( .I0(n230), .I1(n229), .S(n239), .Z(product_comb[21]) );
  XOR2D0 U226 ( .A1(n232), .A2(n231), .Z(n233) );
  XNR2D0 U227 ( .A1(n234), .A2(n233), .ZN(n241) );
  XNR2D0 U228 ( .A1(n236), .A2(n235), .ZN(n237) );
  XNR2D0 U229 ( .A1(n238), .A2(n237), .ZN(n240) );
  MUX2D0 U230 ( .I0(n241), .I1(n240), .S(n239), .Z(product_comb[22]) );
  INVD0 U231 ( .I(n257), .ZN(n242) );
  CKND2D0 U232 ( .A1(n242), .A2(n256), .ZN(n243) );
  XNR2D0 U233 ( .A1(n243), .A2(n255), .ZN(n254) );
  INVD0 U234 ( .I(n244), .ZN(n247) );
  OAI21D0 U235 ( .A1(n247), .A2(n246), .B(n245), .ZN(n252) );
  INVD0 U236 ( .I(n248), .ZN(n250) );
  CKND2D0 U237 ( .A1(n250), .A2(n249), .ZN(n251) );
  XNR2D0 U238 ( .A1(n252), .A2(n251), .ZN(n253) );
  BUFFD0 U239 ( .I(y_fraction_msb[3]), .Z(n283) );
  MUX2D0 U240 ( .I0(n254), .I1(n253), .S(n283), .Z(product_comb[8]) );
  INVD0 U241 ( .I(n255), .ZN(n258) );
  OAI21D0 U242 ( .A1(n258), .A2(n257), .B(n256), .ZN(n263) );
  INVD0 U243 ( .I(n259), .ZN(n261) );
  CKND2D0 U244 ( .A1(n261), .A2(n260), .ZN(n262) );
  XNR2D0 U245 ( .A1(n263), .A2(n262), .ZN(n268) );
  MUX2D0 U246 ( .I0(n268), .I1(n267), .S(n283), .Z(product_comb[9]) );
  FICIND2 U247 ( .CIN(n269), .B(n270), .A(n271), .CO(n277), .S(n276) );
  FA1D1 U248 ( .A(n274), .B(n273), .CI(n272), .CO(n280), .S(n275) );
  MUX2D0 U249 ( .I0(n276), .I1(n275), .S(n283), .Z(product_comb[10]) );
  FA1D1 U250 ( .A(n279), .B(n278), .CI(n277), .CO(n289), .S(n285) );
  FA1D1 U251 ( .A(n282), .B(n281), .CI(n280), .CO(n290), .S(n284) );
  MUX2D0 U252 ( .I0(n285), .I1(n284), .S(n283), .Z(product_comb[11]) );
  XOR2D0 U253 ( .A1(n287), .A2(n286), .Z(n288) );
  XOR2D0 U254 ( .A1(n289), .A2(n288), .Z(n294) );
  FA1D1 U255 ( .A(n292), .B(n291), .CI(n290), .CO(n298), .S(n293) );
  MUX2D0 U256 ( .I0(n294), .I1(n293), .S(n309), .Z(product_comb[12]) );
  FA1D1 U257 ( .A(n297), .B(n296), .CI(n295), .CO(n303), .S(n302) );
  FA1D1 U258 ( .A(n300), .B(n299), .CI(n298), .CO(n306), .S(n301) );
  MUX2D0 U259 ( .I0(n302), .I1(n301), .S(n309), .Z(product_comb[13]) );
  FA1D1 U260 ( .A(n308), .B(n307), .CI(n306), .CO(n169), .S(n310) );
  MUX2D0 U261 ( .I0(n311), .I1(n310), .S(n309), .Z(product_comb[14]) );
  MUX2D0 U262 ( .I0(n314), .I1(n28), .S(n313), .Z(product_comb[35]) );
endmodule


module oadm_core_eq1011_APPROX_LEVEL1 ( clk, x_mantissa, y_mantissa, 
        divide_mode, mantissa_value );
  input [23:0] x_mantissa;
  input [23:0] y_mantissa;
  output [28:0] mantissa_value;
  input clk, divide_mode;
  wire   y_index_s1_3_, divide_s1, y_index_s2_3_, divide_s2, y_index_s3_3_,
         divide_s3, y_index_s4_3_, divide_s4, divide_s5, N385, N386, N387,
         N388, N389, N390, N391, N392, N393, N394, N395, N396, N397, N398,
         N399, N400, N401, N402, N403, N404, N405, N406, N407, N408, N409,
         N410, N411, N412, N413, sub_x_11_B_0_, n9, DP_OP_53J1_122_9842_n90,
         DP_OP_53J1_122_9842_n87, DP_OP_53J1_122_9842_n86,
         DP_OP_53J1_122_9842_n85, DP_OP_53J1_122_9842_n84,
         DP_OP_53J1_122_9842_n83, DP_OP_53J1_122_9842_n82,
         DP_OP_53J1_122_9842_n81, DP_OP_53J1_122_9842_n80,
         DP_OP_53J1_122_9842_n79, DP_OP_53J1_122_9842_n78,
         DP_OP_53J1_122_9842_n77, DP_OP_53J1_122_9842_n76,
         DP_OP_53J1_122_9842_n75, DP_OP_53J1_122_9842_n74,
         DP_OP_53J1_122_9842_n73, DP_OP_53J1_122_9842_n72,
         DP_OP_53J1_122_9842_n71, DP_OP_53J1_122_9842_n70,
         DP_OP_53J1_122_9842_n69, DP_OP_53J1_122_9842_n68,
         DP_OP_53J1_122_9842_n67, DP_OP_53J1_122_9842_n66,
         DP_OP_53J1_122_9842_n65, DP_OP_53J1_122_9842_n64,
         DP_OP_53J1_122_9842_n63, DP_OP_53J1_122_9842_n62,
         DP_OP_53J1_122_9842_n61, DP_OP_53J1_122_9842_n60,
         DP_OP_53J1_122_9842_n59, DP_OP_53J1_122_9842_n58,
         DP_OP_53J1_122_9842_n57, DP_OP_53J1_122_9842_n56,
         DP_OP_53J1_122_9842_n55, DP_OP_53J1_122_9842_n54,
         DP_OP_53J1_122_9842_n53, DP_OP_53J1_122_9842_n52,
         DP_OP_53J1_122_9842_n51, DP_OP_53J1_122_9842_n50,
         DP_OP_53J1_122_9842_n49, DP_OP_53J1_122_9842_n48,
         DP_OP_53J1_122_9842_n47, DP_OP_53J1_122_9842_n46,
         DP_OP_53J1_122_9842_n45, DP_OP_53J1_122_9842_n44,
         DP_OP_53J1_122_9842_n43, DP_OP_53J1_122_9842_n42,
         DP_OP_53J1_122_9842_n41, DP_OP_53J1_122_9842_n40,
         DP_OP_53J1_122_9842_n39, DP_OP_53J1_122_9842_n38,
         DP_OP_53J1_122_9842_n37, DP_OP_53J1_122_9842_n36,
         DP_OP_53J1_122_9842_n35, DP_OP_53J1_122_9842_n34,
         DP_OP_53J1_122_9842_n33, DP_OP_53J1_122_9842_n32,
         DP_OP_53J1_122_9842_n31, DP_OP_53J1_122_9842_n29,
         DP_OP_53J1_122_9842_n28, intadd_0_A_23_, intadd_0_A_1_,
         intadd_0_B_23_, intadd_0_B_22_, intadd_0_B_2_, intadd_0_B_1_,
         intadd_0_CI, intadd_0_n24, intadd_0_n23, intadd_0_n22, intadd_0_n21,
         intadd_0_n20, intadd_0_n19, intadd_0_n18, intadd_0_n17, intadd_0_n16,
         intadd_0_n15, intadd_0_n14, intadd_0_n13, intadd_0_n12, intadd_0_n11,
         intadd_0_n10, intadd_0_n9, intadd_0_n8, intadd_0_n7, intadd_0_n6,
         intadd_0_n5, intadd_0_n4, intadd_0_n3, intadd_0_n2, intadd_0_n1,
         DP_OP_56J1_125_979_n41, DP_OP_56J1_125_979_n40,
         DP_OP_56J1_125_979_n39, DP_OP_56J1_125_979_n38,
         DP_OP_56J1_125_979_n37, DP_OP_56J1_125_979_n36,
         DP_OP_56J1_125_979_n35, DP_OP_56J1_125_979_n34,
         DP_OP_56J1_125_979_n12, DP_OP_56J1_125_979_n11,
         DP_OP_56J1_125_979_n10, DP_OP_56J1_125_979_n9, DP_OP_56J1_125_979_n8,
         DP_OP_56J1_125_979_n7, DP_OP_56J1_125_979_n6, DP_OP_56J1_125_979_n5,
         DP_OP_56J1_125_979_n4, DP_OP_56J1_125_979_n3, n6, n7, n8, n10, n11,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
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
         n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207,
         n208, n209, n210, n211, n212, n213, n214, n215, n216, n217, n218,
         n219, n220, n221, n222, n223, n224, n225, n226, n227, n228, n229,
         n230, n231, n232, n233, n234, n235, n236, n237, n238, n239, n240,
         n241, n242, n243, n244, n245, n246, n247, n248, n249, n250, n251,
         n252, n253, n254, n255, n256, n257, n258, n259, n260, n261, n262,
         n263, n264, n265, n266, n267, n268, n269, n270, n271, n272, n273,
         n274, n275, n276, n277, n278, n279, n280, n281, n282, n283, n284,
         n285, n286, n287, n288, n289, n290, n291, n292, n293, n294, n295,
         n296, n297, n298, n299, n300, n301, n302, n303, n304, n305, n306,
         n307, n308, n309, n310, n311, n312, n313, n314, n315, n316, n317,
         n318, n319, n320, n321, n322, n323, n324, n325, n326, n327, n328,
         n329, n330, n331, n332, n333, n334, n335, n336, n337, n338, n339,
         n340, n341, n342, n343, n344, n345, n346, n347, n348, n349, n350,
         n351, n352, n353, n354, n355, n356, n357, n358, n359, n360, n361,
         n362, n363, n364, n365, n366, n367, n368, n369, n370, n371, n372,
         n373, n374, n375, n376, n377, n378, n379, n380, n381, n382, n383,
         n384, n3850, n3860, n3870, n3880, n3890, n3900, n3910, n3920, n3930,
         n3940, n3950, n3960, n3970, n3980, n3990, n4000, n4010, n4020, n4030,
         n4040, n4050, n4060, n4070, n4080, n4090, n4100, n4110, n4120, n4130,
         n414, n415, n416, n417, n418, n419, n420, n421, n422, n423, n424,
         n425, n426, n427, n428, n429, n430, n431, n432, n433, n434, n435,
         n436, n437, n438, n439, n440, n441, n442, n443, n444, n445, n446,
         n447, n448, n449, n450, n451, n452, n453, n454, n455, n456, n457,
         n458, n459, n460, n461, n462, n463, n464, n465, n466, n467, n468,
         n469, n470, n471, n472, n473, n474, n475, n476, n477, n478, n479,
         n480, n481, n482, n483, n484, n485, n486, n487, n488, n489, n490,
         n491, n492, n493, n494, n495, n496, n497, n498, n499, n500, n501,
         n502, n503, n504, n505, n506, n507, n508, n509, n510, n511, n512,
         n513, n514, n515, n516, n517, n518, n519, n520, n521, n522, n523,
         n524, n525, n526, n527, n528, n529, n530, n531, n532, n533, n534,
         n535, n536, n537, n538, n539, n540, n541, n542, n543, n544, n545,
         n546, n547, n548, n549, n550, n551, n552, n553, n554, n555, n556,
         n557, n558, n559, n560, n561, n562, n563, n564, n565, n566, n567,
         n568, n569, n570, n571, n572, n573, n574, n575, n576, n577, n578,
         n579, n580, n581, n582, n583, n584, n585, n586, n587, n588, n589,
         n590, n591, n592, n593, n594, n595, n596, n597, n598, n599, n600,
         n601, n602, n603, n604, n605, n606, n607, n608, n609, n610, n611,
         n612, n613, n614, n615, n616, n617, n618, n619, n620, n621, n622,
         n623, n624, n625, n626, n627, n628, n629, n630, n631, n632, n633,
         n634, n635, n636, n637, n638, n639, n640, n641, n642, n643, n644,
         n645, n646, n647, n648, n649, n650, n651, n652, n653, n654, n655,
         n656, n657, n658, n659, n660, n661, n662, n663, n664, n665, n666,
         n667, n668, n669, n670, n671, n672, n673, n674, n675, n676, n677,
         n678, n679, n680, n681, n682, n683, n684, n685, n686, n687, n688,
         n689, n690, n691, n692, n693, n694, n695, n696, n697, n698, n699,
         n700, n701, n702, n703, n704, n705, n706, n707, n708, n709, n710,
         n711, n712, n713, n714, n715, n716, n717, n718, n719, n720, n721,
         n722, n723, n724, n725, n726, n727, n728, n729, n730, n731, n732,
         n733, n734, n735, n736, n737, n738, n739, n740, n741, n742, n743,
         n744, n745, n746, n747, n748, n749, n750, n751, n752, n753, n754,
         n755, n756, n757, n758, n759, n760, n761, n762, n763, n764, n765,
         n766, n767, n768, n769, n770, n771, n772, n773, n774, n775, n776,
         n777, n778, n779, n780, n781, n782, n783, n784, n785, n786, n787,
         n788, n789, n790, n791, n792, n793, n794, n795, n796, n797, n798,
         n799, n800, n801, n802, n803, n804, n805, n806, n807, n808, n809,
         n810, n811, n812, n813, n814, n815, n816, n817, n818, n819, n820,
         n821, n822, n823, n824, n825, n826, n827, n828, n829, n830, n831,
         n832, n833, n834, n835, n836, n837, n838, n839, n840, n841, n842,
         n843, n844, n845, n846, n847, n848, n849, n850, n851, n852, n853,
         n854, n855, n856, n857, n858, n859, n860, n861, n862, n863, n864,
         n865, n866, n867, n868, n869, n870, n871, n872, n873, n874, n875,
         n876, n877, n878, n879, n880, n881, n882, n883, n884, n885, n886,
         n887, n888, n889, n890, n891, n892, n893, n894, n895, n896, n897,
         n898, n899, n900, n901, n902, n903, n904, n905, n906, n907, n908,
         n909, n910, n911, n912, n913, n914, n915, n916, n917, n918, n919,
         n920, n921, n922, n923, n924, n925, n926, n927, n928, n929, n930,
         n931, n932, n933, n934, n935, n936, n937, n938, n939, n940, n941,
         n942, n943, n944, n945, n946, n947, n948, n949, n950, n951, n952,
         n953, n954, n955, n956, n957, n958, n959, n960, n961, n962, n963,
         n964, n965, n966, n967, n968, n969, n970, n971, n972, n973, n974,
         n975, n976, n977, n978, n979, n980, n981, n982, n983, n984, n985,
         n986, n987, n988, n989, n990, n991, n992, n993, n994, n995, n996,
         n997, n998, n999, n1000, n1001, n1002, n1003, n1004, n1005, n1006,
         n1007, n1008, n1009, n1010, n1011, n1012, n1013, n1014, n1015, n1016,
         n1017, n1018, n1019, n1020, n1021, n1022, n1023, n1024, n1025, n1026,
         n1027, n1028, n1029, n1030, n1031, n1032, n1033, n1034, n1035, n1036,
         n1037, n1038, n1039, n1040, n1041, n1042, n1043, n1044, n1045, n1046,
         n1047, n1048, n1049, n1050, n1051, n1052, n1053, n1054, n1055, n1056,
         n1057, n1058, n1059, n1060, n1061, n1062, n1063, n1064, n1065, n1066,
         n1067, n1068, n1069, n1070, n1071, n1072, n1073, n1074, n1075, n1076,
         n1077, n1078, n1079, n1080, n1081, n1082, n1083, n1084, n1085, n1086,
         n1087, n1088, n1089, n1090, n1091, n1092, n1093, n1094, n1095, n1096,
         n1097, n1098, n1099, n1100, n1101;
  wire   [23:0] zm0_c1;
  wire   [26:0] z1_c1;
  wire   [24:0] zm0_s1;
  wire   [26:0] z1_s1;
  wire   [1:0] epsilon1_s1;
  wire   [22:0] x_s1;
  wire   [24:0] zm0_s2;
  wire   [26:0] z1_s2;
  wire   [1:0] epsilon1_s2;
  wire   [22:0] x_s2;
  wire   [24:0] zm0_s3;
  wire   [26:0] z1_s3;
  wire   [1:0] epsilon1_s3;
  wire   [22:0] x_s3;
  wire   [24:1] plane0;
  wire   [27:0] plane1;
  wire   [28:0] sum0;
  wire   [28:1] carry0;
  wire   [28:0] sum1;
  wire   [28:2] carry1;
  wire   [28:3] sum2;
  wire   [28:3] carry2;
  wire   [28:0] shared_comb;
  wire   [28:0] shared_s4;
  wire   [28:0] divided_s5;
  wire   [28:0] shared_s5;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5;

  csa3_WIDTH29_2 csa0 ( .input_a({n95, n94, n93, n1098, plane0, zm0_s3[0]}), 
        .input_b({plane1[27], plane1}), .input_c({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .sum(sum0), .carry({carry0, SYNOPSYS_UNCONNECTED__0}) );
  csa3_WIDTH29_1 csa1 ( .input_a(sum0), .input_b({carry0, 1'b0}), .input_c({
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .sum(sum1), .carry({carry1, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2}) );
  csa3_WIDTH29_0 csa2 ( .input_a(sum1), .input_b({carry1, 1'b0, 1'b0}), 
        .input_c({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .sum({sum2, 
        shared_comb[2:0]}), .carry({carry2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5}) );
  recip_scale_fixed_APPROX_LEVEL1_VALUE_WIDTH29 division_scale ( .clk(clk), 
        .value({n72, shared_s4[27], n104, n74, shared_s4[24], n92, n90, n70, 
        n68, n66, n88, n64, n86, n84, n62, n60, n82, n58, shared_s4[10:8], 
        n105, n107, n76, n80, n78, shared_s4[2:0]}), .y_fraction_msb({
        y_index_s4_3_, 1'b0, 1'b0, 1'b0}), .scaled_value(divided_s5) );
  DFQD1 zm0_s1_reg_24_ ( .D(intadd_0_n1), .CP(clk), .Q(zm0_s1[24]) );
  DFQD1 zm0_s1_reg_23_ ( .D(zm0_c1[23]), .CP(clk), .Q(zm0_s1[23]) );
  DFQD1 zm0_s1_reg_22_ ( .D(zm0_c1[22]), .CP(clk), .Q(zm0_s1[22]) );
  DFQD1 zm0_s1_reg_21_ ( .D(zm0_c1[21]), .CP(clk), .Q(zm0_s1[21]) );
  DFQD1 zm0_s1_reg_20_ ( .D(zm0_c1[20]), .CP(clk), .Q(zm0_s1[20]) );
  DFQD1 zm0_s1_reg_19_ ( .D(zm0_c1[19]), .CP(clk), .Q(zm0_s1[19]) );
  DFQD1 zm0_s1_reg_18_ ( .D(zm0_c1[18]), .CP(clk), .Q(zm0_s1[18]) );
  DFQD1 zm0_s1_reg_17_ ( .D(zm0_c1[17]), .CP(clk), .Q(zm0_s1[17]) );
  DFQD1 zm0_s1_reg_16_ ( .D(zm0_c1[16]), .CP(clk), .Q(zm0_s1[16]) );
  DFQD1 zm0_s1_reg_15_ ( .D(zm0_c1[15]), .CP(clk), .Q(zm0_s1[15]) );
  DFQD1 zm0_s1_reg_14_ ( .D(zm0_c1[14]), .CP(clk), .Q(zm0_s1[14]) );
  DFQD1 zm0_s1_reg_13_ ( .D(zm0_c1[13]), .CP(clk), .Q(zm0_s1[13]) );
  DFQD1 zm0_s1_reg_12_ ( .D(zm0_c1[12]), .CP(clk), .Q(zm0_s1[12]) );
  DFQD1 zm0_s1_reg_11_ ( .D(zm0_c1[11]), .CP(clk), .Q(zm0_s1[11]) );
  DFQD1 zm0_s1_reg_10_ ( .D(zm0_c1[10]), .CP(clk), .Q(zm0_s1[10]) );
  DFQD1 zm0_s1_reg_9_ ( .D(zm0_c1[9]), .CP(clk), .Q(zm0_s1[9]) );
  DFQD1 zm0_s1_reg_8_ ( .D(zm0_c1[8]), .CP(clk), .Q(zm0_s1[8]) );
  DFQD1 zm0_s1_reg_7_ ( .D(zm0_c1[7]), .CP(clk), .Q(zm0_s1[7]) );
  DFQD1 zm0_s1_reg_6_ ( .D(zm0_c1[6]), .CP(clk), .Q(zm0_s1[6]) );
  DFQD1 zm0_s1_reg_5_ ( .D(zm0_c1[5]), .CP(clk), .Q(zm0_s1[5]) );
  DFQD1 zm0_s1_reg_4_ ( .D(zm0_c1[4]), .CP(clk), .Q(zm0_s1[4]) );
  DFQD1 zm0_s1_reg_3_ ( .D(zm0_c1[3]), .CP(clk), .Q(zm0_s1[3]) );
  DFQD1 zm0_s1_reg_2_ ( .D(zm0_c1[2]), .CP(clk), .Q(zm0_s1[2]) );
  DFQD1 zm0_s1_reg_1_ ( .D(zm0_c1[1]), .CP(clk), .Q(zm0_s1[1]) );
  DFQD1 zm0_s1_reg_0_ ( .D(zm0_c1[0]), .CP(clk), .Q(zm0_s1[0]) );
  DFQD1 z1_s1_reg_26_ ( .D(z1_c1[26]), .CP(clk), .Q(z1_s1[26]) );
  DFQD1 z1_s1_reg_25_ ( .D(z1_c1[25]), .CP(clk), .Q(z1_s1[25]) );
  DFQD1 z1_s1_reg_24_ ( .D(z1_c1[24]), .CP(clk), .Q(z1_s1[24]) );
  DFQD1 z1_s1_reg_23_ ( .D(z1_c1[23]), .CP(clk), .Q(z1_s1[23]) );
  DFQD1 z1_s1_reg_22_ ( .D(z1_c1[22]), .CP(clk), .Q(z1_s1[22]) );
  DFQD1 z1_s1_reg_21_ ( .D(z1_c1[21]), .CP(clk), .Q(z1_s1[21]) );
  DFQD1 z1_s1_reg_20_ ( .D(z1_c1[20]), .CP(clk), .Q(z1_s1[20]) );
  DFQD1 z1_s1_reg_19_ ( .D(z1_c1[19]), .CP(clk), .Q(z1_s1[19]) );
  DFQD1 z1_s1_reg_18_ ( .D(z1_c1[18]), .CP(clk), .Q(z1_s1[18]) );
  DFQD1 z1_s1_reg_17_ ( .D(z1_c1[17]), .CP(clk), .Q(z1_s1[17]) );
  DFQD1 z1_s1_reg_16_ ( .D(z1_c1[16]), .CP(clk), .Q(z1_s1[16]) );
  DFQD1 z1_s1_reg_15_ ( .D(z1_c1[15]), .CP(clk), .Q(z1_s1[15]) );
  DFQD1 z1_s1_reg_14_ ( .D(z1_c1[14]), .CP(clk), .Q(z1_s1[14]) );
  DFQD1 z1_s1_reg_13_ ( .D(z1_c1[13]), .CP(clk), .Q(z1_s1[13]) );
  DFQD1 z1_s1_reg_12_ ( .D(z1_c1[12]), .CP(clk), .Q(z1_s1[12]) );
  DFQD1 z1_s1_reg_11_ ( .D(z1_c1[11]), .CP(clk), .Q(z1_s1[11]) );
  DFQD1 z1_s1_reg_10_ ( .D(z1_c1[10]), .CP(clk), .Q(z1_s1[10]) );
  DFQD1 z1_s1_reg_9_ ( .D(z1_c1[9]), .CP(clk), .Q(z1_s1[9]) );
  DFQD1 z1_s1_reg_8_ ( .D(z1_c1[8]), .CP(clk), .Q(z1_s1[8]) );
  DFQD1 z1_s1_reg_7_ ( .D(z1_c1[7]), .CP(clk), .Q(z1_s1[7]) );
  DFQD1 z1_s1_reg_6_ ( .D(z1_c1[6]), .CP(clk), .Q(z1_s1[6]) );
  DFQD1 z1_s1_reg_5_ ( .D(z1_c1[5]), .CP(clk), .Q(z1_s1[5]) );
  DFQD1 z1_s1_reg_4_ ( .D(z1_c1[4]), .CP(clk), .Q(z1_s1[4]) );
  DFQD1 z1_s1_reg_3_ ( .D(z1_c1[3]), .CP(clk), .Q(z1_s1[3]) );
  DFQD1 z1_s1_reg_2_ ( .D(z1_c1[2]), .CP(clk), .Q(z1_s1[2]) );
  DFQD1 z1_s1_reg_1_ ( .D(z1_c1[1]), .CP(clk), .Q(z1_s1[1]) );
  DFQD1 z1_s1_reg_0_ ( .D(z1_c1[0]), .CP(clk), .Q(z1_s1[0]) );
  DFQD1 epsilon1_s1_reg_1_ ( .D(n9), .CP(clk), .Q(epsilon1_s1[1]) );
  DFQD1 epsilon1_s1_reg_0_ ( .D(sub_x_11_B_0_), .CP(clk), .Q(epsilon1_s1[0])
         );
  DFQD1 x_s1_reg_22_ ( .D(intadd_0_A_23_), .CP(clk), .Q(x_s1[22]) );
  DFQD1 x_s1_reg_21_ ( .D(n56), .CP(clk), .Q(x_s1[21]) );
  DFQD1 x_s1_reg_20_ ( .D(n53), .CP(clk), .Q(x_s1[20]) );
  DFQD1 x_s1_reg_19_ ( .D(n52), .CP(clk), .Q(x_s1[19]) );
  DFQD1 x_s1_reg_18_ ( .D(n51), .CP(clk), .Q(x_s1[18]) );
  DFQD1 x_s1_reg_17_ ( .D(n50), .CP(clk), .Q(x_s1[17]) );
  DFQD1 x_s1_reg_16_ ( .D(n49), .CP(clk), .Q(x_s1[16]) );
  DFQD1 x_s1_reg_15_ ( .D(n48), .CP(clk), .Q(x_s1[15]) );
  DFQD1 x_s1_reg_14_ ( .D(n47), .CP(clk), .Q(x_s1[14]) );
  DFQD1 x_s1_reg_13_ ( .D(n46), .CP(clk), .Q(x_s1[13]) );
  DFQD1 x_s1_reg_12_ ( .D(n45), .CP(clk), .Q(x_s1[12]) );
  DFQD1 x_s1_reg_11_ ( .D(n44), .CP(clk), .Q(x_s1[11]) );
  DFQD1 x_s1_reg_10_ ( .D(n43), .CP(clk), .Q(x_s1[10]) );
  DFQD1 x_s1_reg_9_ ( .D(n42), .CP(clk), .Q(x_s1[9]) );
  DFQD1 x_s1_reg_8_ ( .D(n41), .CP(clk), .Q(x_s1[8]) );
  DFQD1 x_s1_reg_7_ ( .D(n40), .CP(clk), .Q(x_s1[7]) );
  DFQD1 x_s1_reg_6_ ( .D(n39), .CP(clk), .Q(x_s1[6]) );
  DFQD1 x_s1_reg_5_ ( .D(n38), .CP(clk), .Q(x_s1[5]) );
  DFQD1 x_s1_reg_4_ ( .D(n37), .CP(clk), .Q(x_s1[4]) );
  DFQD1 x_s1_reg_3_ ( .D(n36), .CP(clk), .Q(x_s1[3]) );
  DFQD1 x_s1_reg_2_ ( .D(x_mantissa[2]), .CP(clk), .Q(x_s1[2]) );
  DFQD1 x_s1_reg_1_ ( .D(n55), .CP(clk), .Q(x_s1[1]) );
  DFQD1 x_s1_reg_0_ ( .D(x_mantissa[0]), .CP(clk), .Q(x_s1[0]) );
  DFQD1 y_index_s1_reg_3_ ( .D(n1101), .CP(clk), .Q(y_index_s1_3_) );
  DFQD1 divide_s1_reg ( .D(divide_mode), .CP(clk), .Q(divide_s1) );
  DFQD1 zm0_s2_reg_24_ ( .D(zm0_s1[24]), .CP(clk), .Q(zm0_s2[24]) );
  DFQD1 zm0_s2_reg_23_ ( .D(zm0_s1[23]), .CP(clk), .Q(zm0_s2[23]) );
  DFQD1 zm0_s2_reg_22_ ( .D(zm0_s1[22]), .CP(clk), .Q(zm0_s2[22]) );
  DFQD1 zm0_s2_reg_21_ ( .D(zm0_s1[21]), .CP(clk), .Q(zm0_s2[21]) );
  DFQD1 zm0_s2_reg_20_ ( .D(zm0_s1[20]), .CP(clk), .Q(zm0_s2[20]) );
  DFQD1 zm0_s2_reg_19_ ( .D(zm0_s1[19]), .CP(clk), .Q(zm0_s2[19]) );
  DFQD1 zm0_s2_reg_18_ ( .D(zm0_s1[18]), .CP(clk), .Q(zm0_s2[18]) );
  DFQD1 zm0_s2_reg_17_ ( .D(zm0_s1[17]), .CP(clk), .Q(zm0_s2[17]) );
  DFQD1 zm0_s2_reg_16_ ( .D(zm0_s1[16]), .CP(clk), .Q(zm0_s2[16]) );
  DFQD1 zm0_s2_reg_15_ ( .D(zm0_s1[15]), .CP(clk), .Q(zm0_s2[15]) );
  DFQD1 zm0_s2_reg_14_ ( .D(zm0_s1[14]), .CP(clk), .Q(zm0_s2[14]) );
  DFQD1 zm0_s2_reg_13_ ( .D(zm0_s1[13]), .CP(clk), .Q(zm0_s2[13]) );
  DFQD1 zm0_s2_reg_12_ ( .D(zm0_s1[12]), .CP(clk), .Q(zm0_s2[12]) );
  DFQD1 zm0_s2_reg_11_ ( .D(zm0_s1[11]), .CP(clk), .Q(zm0_s2[11]) );
  DFQD1 zm0_s2_reg_10_ ( .D(zm0_s1[10]), .CP(clk), .Q(zm0_s2[10]) );
  DFQD1 zm0_s2_reg_9_ ( .D(zm0_s1[9]), .CP(clk), .Q(zm0_s2[9]) );
  DFQD1 zm0_s2_reg_8_ ( .D(zm0_s1[8]), .CP(clk), .Q(zm0_s2[8]) );
  DFQD1 zm0_s2_reg_7_ ( .D(zm0_s1[7]), .CP(clk), .Q(zm0_s2[7]) );
  DFQD1 zm0_s2_reg_6_ ( .D(zm0_s1[6]), .CP(clk), .Q(zm0_s2[6]) );
  DFQD1 zm0_s2_reg_5_ ( .D(zm0_s1[5]), .CP(clk), .Q(zm0_s2[5]) );
  DFQD1 zm0_s2_reg_4_ ( .D(zm0_s1[4]), .CP(clk), .Q(zm0_s2[4]) );
  DFQD1 zm0_s2_reg_3_ ( .D(zm0_s1[3]), .CP(clk), .Q(zm0_s2[3]) );
  DFQD1 zm0_s2_reg_2_ ( .D(zm0_s1[2]), .CP(clk), .Q(zm0_s2[2]) );
  DFQD1 zm0_s2_reg_1_ ( .D(zm0_s1[1]), .CP(clk), .Q(zm0_s2[1]) );
  DFQD1 zm0_s2_reg_0_ ( .D(zm0_s1[0]), .CP(clk), .Q(zm0_s2[0]) );
  DFQD1 z1_s2_reg_26_ ( .D(z1_s1[26]), .CP(clk), .Q(z1_s2[26]) );
  DFQD1 z1_s2_reg_25_ ( .D(z1_s1[25]), .CP(clk), .Q(z1_s2[25]) );
  DFQD1 z1_s2_reg_24_ ( .D(z1_s1[24]), .CP(clk), .Q(z1_s2[24]) );
  DFQD1 z1_s2_reg_23_ ( .D(z1_s1[23]), .CP(clk), .Q(z1_s2[23]) );
  DFQD1 z1_s2_reg_22_ ( .D(z1_s1[22]), .CP(clk), .Q(z1_s2[22]) );
  DFQD1 z1_s2_reg_21_ ( .D(z1_s1[21]), .CP(clk), .Q(z1_s2[21]) );
  DFQD1 z1_s2_reg_20_ ( .D(z1_s1[20]), .CP(clk), .Q(z1_s2[20]) );
  DFQD1 z1_s2_reg_19_ ( .D(z1_s1[19]), .CP(clk), .Q(z1_s2[19]) );
  DFQD1 z1_s2_reg_18_ ( .D(z1_s1[18]), .CP(clk), .Q(z1_s2[18]) );
  DFQD1 z1_s2_reg_17_ ( .D(z1_s1[17]), .CP(clk), .Q(z1_s2[17]) );
  DFQD1 z1_s2_reg_16_ ( .D(z1_s1[16]), .CP(clk), .Q(z1_s2[16]) );
  DFQD1 z1_s2_reg_15_ ( .D(z1_s1[15]), .CP(clk), .Q(z1_s2[15]) );
  DFQD1 z1_s2_reg_14_ ( .D(z1_s1[14]), .CP(clk), .Q(z1_s2[14]) );
  DFQD1 z1_s2_reg_13_ ( .D(z1_s1[13]), .CP(clk), .Q(z1_s2[13]) );
  DFQD1 z1_s2_reg_12_ ( .D(z1_s1[12]), .CP(clk), .Q(z1_s2[12]) );
  DFQD1 z1_s2_reg_11_ ( .D(z1_s1[11]), .CP(clk), .Q(z1_s2[11]) );
  DFQD1 z1_s2_reg_10_ ( .D(z1_s1[10]), .CP(clk), .Q(z1_s2[10]) );
  DFQD1 z1_s2_reg_9_ ( .D(z1_s1[9]), .CP(clk), .Q(z1_s2[9]) );
  DFQD1 z1_s2_reg_8_ ( .D(z1_s1[8]), .CP(clk), .Q(z1_s2[8]) );
  DFQD1 z1_s2_reg_7_ ( .D(z1_s1[7]), .CP(clk), .Q(z1_s2[7]) );
  DFQD1 z1_s2_reg_6_ ( .D(z1_s1[6]), .CP(clk), .Q(z1_s2[6]) );
  DFQD1 z1_s2_reg_5_ ( .D(z1_s1[5]), .CP(clk), .Q(z1_s2[5]) );
  DFQD1 z1_s2_reg_4_ ( .D(z1_s1[4]), .CP(clk), .Q(z1_s2[4]) );
  DFQD1 z1_s2_reg_3_ ( .D(z1_s1[3]), .CP(clk), .Q(z1_s2[3]) );
  DFQD1 z1_s2_reg_2_ ( .D(z1_s1[2]), .CP(clk), .Q(z1_s2[2]) );
  DFQD1 z1_s2_reg_1_ ( .D(z1_s1[1]), .CP(clk), .Q(z1_s2[1]) );
  DFQD1 z1_s2_reg_0_ ( .D(z1_s1[0]), .CP(clk), .Q(z1_s2[0]) );
  DFQD1 epsilon1_s2_reg_1_ ( .D(epsilon1_s1[1]), .CP(clk), .Q(epsilon1_s2[1])
         );
  DFQD1 epsilon1_s2_reg_0_ ( .D(epsilon1_s1[0]), .CP(clk), .Q(epsilon1_s2[0])
         );
  DFQD1 x_s2_reg_22_ ( .D(x_s1[22]), .CP(clk), .Q(x_s2[22]) );
  DFQD1 x_s2_reg_21_ ( .D(x_s1[21]), .CP(clk), .Q(x_s2[21]) );
  DFQD1 x_s2_reg_20_ ( .D(x_s1[20]), .CP(clk), .Q(x_s2[20]) );
  DFQD1 x_s2_reg_19_ ( .D(x_s1[19]), .CP(clk), .Q(x_s2[19]) );
  DFQD1 x_s2_reg_18_ ( .D(x_s1[18]), .CP(clk), .Q(x_s2[18]) );
  DFQD1 x_s2_reg_17_ ( .D(x_s1[17]), .CP(clk), .Q(x_s2[17]) );
  DFQD1 x_s2_reg_16_ ( .D(x_s1[16]), .CP(clk), .Q(x_s2[16]) );
  DFQD1 x_s2_reg_15_ ( .D(x_s1[15]), .CP(clk), .Q(x_s2[15]) );
  DFQD1 x_s2_reg_14_ ( .D(x_s1[14]), .CP(clk), .Q(x_s2[14]) );
  DFQD1 x_s2_reg_13_ ( .D(x_s1[13]), .CP(clk), .Q(x_s2[13]) );
  DFQD1 x_s2_reg_12_ ( .D(x_s1[12]), .CP(clk), .Q(x_s2[12]) );
  DFQD1 x_s2_reg_11_ ( .D(x_s1[11]), .CP(clk), .Q(x_s2[11]) );
  DFQD1 x_s2_reg_10_ ( .D(x_s1[10]), .CP(clk), .Q(x_s2[10]) );
  DFQD1 x_s2_reg_9_ ( .D(x_s1[9]), .CP(clk), .Q(x_s2[9]) );
  DFQD1 x_s2_reg_8_ ( .D(x_s1[8]), .CP(clk), .Q(x_s2[8]) );
  DFQD1 x_s2_reg_7_ ( .D(x_s1[7]), .CP(clk), .Q(x_s2[7]) );
  DFQD1 x_s2_reg_6_ ( .D(x_s1[6]), .CP(clk), .Q(x_s2[6]) );
  DFQD1 x_s2_reg_5_ ( .D(x_s1[5]), .CP(clk), .Q(x_s2[5]) );
  DFQD1 x_s2_reg_4_ ( .D(x_s1[4]), .CP(clk), .Q(x_s2[4]) );
  DFQD1 x_s2_reg_3_ ( .D(x_s1[3]), .CP(clk), .Q(x_s2[3]) );
  DFQD1 x_s2_reg_2_ ( .D(x_s1[2]), .CP(clk), .Q(x_s2[2]) );
  DFQD1 x_s2_reg_1_ ( .D(x_s1[1]), .CP(clk), .Q(x_s2[1]) );
  DFQD1 x_s2_reg_0_ ( .D(x_s1[0]), .CP(clk), .Q(x_s2[0]) );
  DFQD1 y_index_s2_reg_3_ ( .D(y_index_s1_3_), .CP(clk), .Q(y_index_s2_3_) );
  DFQD1 divide_s2_reg ( .D(divide_s1), .CP(clk), .Q(divide_s2) );
  DFQD1 zm0_s3_reg_24_ ( .D(zm0_s2[24]), .CP(clk), .Q(zm0_s3[24]) );
  DFQD1 zm0_s3_reg_23_ ( .D(zm0_s2[23]), .CP(clk), .Q(zm0_s3[23]) );
  DFQD1 zm0_s3_reg_22_ ( .D(zm0_s2[22]), .CP(clk), .Q(zm0_s3[22]) );
  DFQD1 zm0_s3_reg_21_ ( .D(zm0_s2[21]), .CP(clk), .Q(zm0_s3[21]) );
  DFQD1 zm0_s3_reg_20_ ( .D(zm0_s2[20]), .CP(clk), .Q(zm0_s3[20]) );
  DFQD1 zm0_s3_reg_19_ ( .D(zm0_s2[19]), .CP(clk), .Q(zm0_s3[19]) );
  DFQD1 zm0_s3_reg_18_ ( .D(zm0_s2[18]), .CP(clk), .Q(zm0_s3[18]) );
  DFQD1 zm0_s3_reg_17_ ( .D(zm0_s2[17]), .CP(clk), .Q(zm0_s3[17]) );
  DFQD1 zm0_s3_reg_16_ ( .D(zm0_s2[16]), .CP(clk), .Q(zm0_s3[16]) );
  DFQD1 zm0_s3_reg_15_ ( .D(zm0_s2[15]), .CP(clk), .Q(zm0_s3[15]) );
  DFQD1 zm0_s3_reg_14_ ( .D(zm0_s2[14]), .CP(clk), .Q(zm0_s3[14]) );
  DFQD1 zm0_s3_reg_13_ ( .D(zm0_s2[13]), .CP(clk), .Q(zm0_s3[13]) );
  DFQD1 zm0_s3_reg_12_ ( .D(zm0_s2[12]), .CP(clk), .Q(zm0_s3[12]) );
  DFQD1 zm0_s3_reg_11_ ( .D(zm0_s2[11]), .CP(clk), .Q(zm0_s3[11]) );
  DFQD1 zm0_s3_reg_10_ ( .D(zm0_s2[10]), .CP(clk), .Q(zm0_s3[10]) );
  DFQD1 zm0_s3_reg_9_ ( .D(zm0_s2[9]), .CP(clk), .Q(zm0_s3[9]) );
  DFQD1 zm0_s3_reg_8_ ( .D(zm0_s2[8]), .CP(clk), .Q(zm0_s3[8]) );
  DFQD1 zm0_s3_reg_7_ ( .D(zm0_s2[7]), .CP(clk), .Q(zm0_s3[7]) );
  DFQD1 zm0_s3_reg_6_ ( .D(zm0_s2[6]), .CP(clk), .Q(zm0_s3[6]) );
  DFQD1 zm0_s3_reg_5_ ( .D(zm0_s2[5]), .CP(clk), .Q(zm0_s3[5]) );
  DFQD1 zm0_s3_reg_4_ ( .D(zm0_s2[4]), .CP(clk), .Q(zm0_s3[4]) );
  DFQD1 zm0_s3_reg_3_ ( .D(zm0_s2[3]), .CP(clk), .Q(zm0_s3[3]) );
  DFQD1 zm0_s3_reg_2_ ( .D(zm0_s2[2]), .CP(clk), .Q(zm0_s3[2]) );
  DFQD1 zm0_s3_reg_1_ ( .D(zm0_s2[1]), .CP(clk), .Q(zm0_s3[1]) );
  DFQD1 zm0_s3_reg_0_ ( .D(zm0_s2[0]), .CP(clk), .Q(zm0_s3[0]) );
  DFQD1 z1_s3_reg_26_ ( .D(z1_s2[26]), .CP(clk), .Q(z1_s3[26]) );
  DFQD1 z1_s3_reg_25_ ( .D(z1_s2[25]), .CP(clk), .Q(z1_s3[25]) );
  DFQD1 z1_s3_reg_24_ ( .D(z1_s2[24]), .CP(clk), .Q(z1_s3[24]) );
  DFQD1 z1_s3_reg_23_ ( .D(z1_s2[23]), .CP(clk), .Q(z1_s3[23]) );
  DFQD1 z1_s3_reg_22_ ( .D(z1_s2[22]), .CP(clk), .Q(z1_s3[22]) );
  DFQD1 z1_s3_reg_21_ ( .D(z1_s2[21]), .CP(clk), .Q(z1_s3[21]) );
  DFQD1 z1_s3_reg_20_ ( .D(z1_s2[20]), .CP(clk), .Q(z1_s3[20]) );
  DFQD1 z1_s3_reg_19_ ( .D(z1_s2[19]), .CP(clk), .Q(z1_s3[19]) );
  DFQD1 z1_s3_reg_18_ ( .D(z1_s2[18]), .CP(clk), .Q(z1_s3[18]) );
  DFQD1 z1_s3_reg_17_ ( .D(z1_s2[17]), .CP(clk), .Q(z1_s3[17]) );
  DFQD1 z1_s3_reg_16_ ( .D(z1_s2[16]), .CP(clk), .Q(z1_s3[16]) );
  DFQD1 z1_s3_reg_15_ ( .D(z1_s2[15]), .CP(clk), .Q(z1_s3[15]) );
  DFQD1 z1_s3_reg_14_ ( .D(z1_s2[14]), .CP(clk), .Q(z1_s3[14]) );
  DFQD1 z1_s3_reg_13_ ( .D(z1_s2[13]), .CP(clk), .Q(z1_s3[13]) );
  DFQD1 z1_s3_reg_12_ ( .D(z1_s2[12]), .CP(clk), .Q(z1_s3[12]) );
  DFQD1 z1_s3_reg_11_ ( .D(z1_s2[11]), .CP(clk), .Q(z1_s3[11]) );
  DFQD1 z1_s3_reg_10_ ( .D(z1_s2[10]), .CP(clk), .Q(z1_s3[10]) );
  DFQD1 z1_s3_reg_9_ ( .D(z1_s2[9]), .CP(clk), .Q(z1_s3[9]) );
  DFQD1 z1_s3_reg_8_ ( .D(z1_s2[8]), .CP(clk), .Q(z1_s3[8]) );
  DFQD1 z1_s3_reg_7_ ( .D(z1_s2[7]), .CP(clk), .Q(z1_s3[7]) );
  DFQD1 z1_s3_reg_6_ ( .D(z1_s2[6]), .CP(clk), .Q(z1_s3[6]) );
  DFQD1 z1_s3_reg_5_ ( .D(z1_s2[5]), .CP(clk), .Q(z1_s3[5]) );
  DFQD1 z1_s3_reg_4_ ( .D(z1_s2[4]), .CP(clk), .Q(z1_s3[4]) );
  DFQD1 z1_s3_reg_3_ ( .D(z1_s2[3]), .CP(clk), .Q(z1_s3[3]) );
  DFQD1 z1_s3_reg_2_ ( .D(z1_s2[2]), .CP(clk), .Q(z1_s3[2]) );
  DFQD1 z1_s3_reg_1_ ( .D(z1_s2[1]), .CP(clk), .Q(z1_s3[1]) );
  DFQD1 z1_s3_reg_0_ ( .D(z1_s2[0]), .CP(clk), .Q(z1_s3[0]) );
  DFQD1 epsilon1_s3_reg_1_ ( .D(epsilon1_s2[1]), .CP(clk), .Q(epsilon1_s3[1])
         );
  DFQD1 epsilon1_s3_reg_0_ ( .D(epsilon1_s2[0]), .CP(clk), .Q(epsilon1_s3[0])
         );
  DFQD1 x_s3_reg_22_ ( .D(x_s2[22]), .CP(clk), .Q(x_s3[22]) );
  DFQD1 x_s3_reg_21_ ( .D(x_s2[21]), .CP(clk), .Q(x_s3[21]) );
  DFQD1 x_s3_reg_20_ ( .D(x_s2[20]), .CP(clk), .Q(x_s3[20]) );
  DFQD1 x_s3_reg_19_ ( .D(x_s2[19]), .CP(clk), .Q(x_s3[19]) );
  DFQD1 x_s3_reg_18_ ( .D(x_s2[18]), .CP(clk), .Q(x_s3[18]) );
  DFQD1 x_s3_reg_17_ ( .D(x_s2[17]), .CP(clk), .Q(x_s3[17]) );
  DFQD1 x_s3_reg_16_ ( .D(x_s2[16]), .CP(clk), .Q(x_s3[16]) );
  DFQD1 x_s3_reg_15_ ( .D(x_s2[15]), .CP(clk), .Q(x_s3[15]) );
  DFQD1 x_s3_reg_14_ ( .D(x_s2[14]), .CP(clk), .Q(x_s3[14]) );
  DFQD1 x_s3_reg_13_ ( .D(x_s2[13]), .CP(clk), .Q(x_s3[13]) );
  DFQD1 x_s3_reg_12_ ( .D(x_s2[12]), .CP(clk), .Q(x_s3[12]) );
  DFQD1 x_s3_reg_11_ ( .D(x_s2[11]), .CP(clk), .Q(x_s3[11]) );
  DFQD1 x_s3_reg_10_ ( .D(x_s2[10]), .CP(clk), .Q(x_s3[10]) );
  DFQD1 x_s3_reg_9_ ( .D(x_s2[9]), .CP(clk), .Q(x_s3[9]) );
  DFQD1 x_s3_reg_8_ ( .D(x_s2[8]), .CP(clk), .Q(x_s3[8]) );
  DFQD1 x_s3_reg_7_ ( .D(x_s2[7]), .CP(clk), .Q(x_s3[7]) );
  DFQD1 x_s3_reg_6_ ( .D(x_s2[6]), .CP(clk), .Q(x_s3[6]) );
  DFQD1 x_s3_reg_5_ ( .D(x_s2[5]), .CP(clk), .Q(x_s3[5]) );
  DFQD1 x_s3_reg_4_ ( .D(x_s2[4]), .CP(clk), .Q(x_s3[4]) );
  DFQD1 x_s3_reg_3_ ( .D(x_s2[3]), .CP(clk), .Q(x_s3[3]) );
  DFQD1 x_s3_reg_2_ ( .D(x_s2[2]), .CP(clk), .Q(x_s3[2]) );
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
  DFQD1 shared_s4_reg_0_ ( .D(shared_comb[0]), .CP(clk), .Q(shared_s4[0]) );
  DFQD1 y_index_s4_reg_3_ ( .D(n1100), .CP(clk), .Q(y_index_s4_3_) );
  DFQD1 divide_s4_reg ( .D(n1099), .CP(clk), .Q(divide_s4) );
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
  DFQD1 shared_s5_reg_6_ ( .D(n108), .CP(clk), .Q(shared_s5[6]) );
  DFQD1 shared_s5_reg_5_ ( .D(shared_s4[5]), .CP(clk), .Q(shared_s5[5]) );
  DFQD1 shared_s5_reg_4_ ( .D(shared_s4[4]), .CP(clk), .Q(shared_s5[4]) );
  DFQD1 shared_s5_reg_3_ ( .D(shared_s4[3]), .CP(clk), .Q(shared_s5[3]) );
  DFQD1 shared_s5_reg_2_ ( .D(shared_s4[2]), .CP(clk), .Q(shared_s5[2]) );
  DFQD1 shared_s5_reg_1_ ( .D(shared_s4[1]), .CP(clk), .Q(shared_s5[1]) );
  DFQD1 shared_s5_reg_0_ ( .D(shared_s4[0]), .CP(clk), .Q(shared_s5[0]) );
  DFQD1 divide_s5_reg ( .D(divide_s4), .CP(clk), .Q(divide_s5) );
  DFQD1 mantissa_value_reg_28_ ( .D(N413), .CP(clk), .Q(mantissa_value[28]) );
  DFQD1 mantissa_value_reg_27_ ( .D(N412), .CP(clk), .Q(mantissa_value[27]) );
  DFQD1 mantissa_value_reg_26_ ( .D(N411), .CP(clk), .Q(mantissa_value[26]) );
  DFQD1 mantissa_value_reg_25_ ( .D(N410), .CP(clk), .Q(mantissa_value[25]) );
  DFQD1 mantissa_value_reg_24_ ( .D(N409), .CP(clk), .Q(mantissa_value[24]) );
  DFQD1 mantissa_value_reg_23_ ( .D(N408), .CP(clk), .Q(mantissa_value[23]) );
  DFQD1 mantissa_value_reg_22_ ( .D(N407), .CP(clk), .Q(mantissa_value[22]) );
  DFQD1 mantissa_value_reg_21_ ( .D(N406), .CP(clk), .Q(mantissa_value[21]) );
  DFQD1 mantissa_value_reg_20_ ( .D(N405), .CP(clk), .Q(mantissa_value[20]) );
  DFQD1 mantissa_value_reg_19_ ( .D(N404), .CP(clk), .Q(mantissa_value[19]) );
  DFQD1 mantissa_value_reg_18_ ( .D(N403), .CP(clk), .Q(mantissa_value[18]) );
  DFQD1 mantissa_value_reg_17_ ( .D(N402), .CP(clk), .Q(mantissa_value[17]) );
  DFQD1 mantissa_value_reg_16_ ( .D(N401), .CP(clk), .Q(mantissa_value[16]) );
  DFQD1 mantissa_value_reg_15_ ( .D(N400), .CP(clk), .Q(mantissa_value[15]) );
  DFQD1 mantissa_value_reg_14_ ( .D(N399), .CP(clk), .Q(mantissa_value[14]) );
  DFQD1 mantissa_value_reg_13_ ( .D(N398), .CP(clk), .Q(mantissa_value[13]) );
  DFQD1 mantissa_value_reg_12_ ( .D(N397), .CP(clk), .Q(mantissa_value[12]) );
  DFQD1 mantissa_value_reg_11_ ( .D(N396), .CP(clk), .Q(mantissa_value[11]) );
  DFQD1 mantissa_value_reg_10_ ( .D(N395), .CP(clk), .Q(mantissa_value[10]) );
  DFQD1 mantissa_value_reg_9_ ( .D(N394), .CP(clk), .Q(mantissa_value[9]) );
  DFQD1 mantissa_value_reg_8_ ( .D(N393), .CP(clk), .Q(mantissa_value[8]) );
  DFQD1 mantissa_value_reg_7_ ( .D(N392), .CP(clk), .Q(mantissa_value[7]) );
  DFQD1 mantissa_value_reg_6_ ( .D(N391), .CP(clk), .Q(mantissa_value[6]) );
  DFQD1 mantissa_value_reg_5_ ( .D(N390), .CP(clk), .Q(mantissa_value[5]) );
  DFQD1 mantissa_value_reg_4_ ( .D(N389), .CP(clk), .Q(mantissa_value[4]) );
  DFQD1 mantissa_value_reg_3_ ( .D(N388), .CP(clk), .Q(mantissa_value[3]) );
  DFQD1 mantissa_value_reg_2_ ( .D(N387), .CP(clk), .Q(mantissa_value[2]) );
  DFQD1 mantissa_value_reg_1_ ( .D(N386), .CP(clk), .Q(mantissa_value[1]) );
  DFQD1 mantissa_value_reg_0_ ( .D(N385), .CP(clk), .Q(mantissa_value[0]) );
  CMPE42D1 DP_OP_53J1_122_9842_U47 ( .A(n7), .B(x_mantissa[4]), .C(
        x_mantissa[3]), .CIX(DP_OP_53J1_122_9842_n85), .D(y_mantissa[3]), .CO(
        DP_OP_53J1_122_9842_n83), .COX(DP_OP_53J1_122_9842_n82), .S(
        DP_OP_53J1_122_9842_n84) );
  CMPE42D1 DP_OP_53J1_122_9842_U46 ( .A(n8), .B(x_mantissa[5]), .C(
        x_mantissa[4]), .CIX(DP_OP_53J1_122_9842_n82), .D(y_mantissa[4]), .CO(
        DP_OP_53J1_122_9842_n80), .COX(DP_OP_53J1_122_9842_n79), .S(
        DP_OP_53J1_122_9842_n81) );
  CMPE42D1 DP_OP_53J1_122_9842_U45 ( .A(n10), .B(x_mantissa[6]), .C(
        x_mantissa[5]), .CIX(DP_OP_53J1_122_9842_n79), .D(y_mantissa[5]), .CO(
        DP_OP_53J1_122_9842_n77), .COX(DP_OP_53J1_122_9842_n76), .S(
        DP_OP_53J1_122_9842_n78) );
  CMPE42D1 DP_OP_53J1_122_9842_U44 ( .A(n11), .B(x_mantissa[7]), .C(
        x_mantissa[6]), .CIX(DP_OP_53J1_122_9842_n76), .D(y_mantissa[6]), .CO(
        DP_OP_53J1_122_9842_n74), .COX(DP_OP_53J1_122_9842_n73), .S(
        DP_OP_53J1_122_9842_n75) );
  CMPE42D1 DP_OP_53J1_122_9842_U43 ( .A(n13), .B(x_mantissa[8]), .C(
        x_mantissa[7]), .CIX(DP_OP_53J1_122_9842_n73), .D(y_mantissa[7]), .CO(
        DP_OP_53J1_122_9842_n71), .COX(DP_OP_53J1_122_9842_n70), .S(
        DP_OP_53J1_122_9842_n72) );
  CMPE42D1 DP_OP_53J1_122_9842_U42 ( .A(n14), .B(x_mantissa[9]), .C(
        x_mantissa[8]), .CIX(DP_OP_53J1_122_9842_n70), .D(y_mantissa[8]), .CO(
        DP_OP_53J1_122_9842_n68), .COX(DP_OP_53J1_122_9842_n67), .S(
        DP_OP_53J1_122_9842_n69) );
  CMPE42D1 DP_OP_53J1_122_9842_U41 ( .A(n15), .B(x_mantissa[10]), .C(
        x_mantissa[9]), .CIX(DP_OP_53J1_122_9842_n67), .D(y_mantissa[9]), .CO(
        DP_OP_53J1_122_9842_n65), .COX(DP_OP_53J1_122_9842_n64), .S(
        DP_OP_53J1_122_9842_n66) );
  CMPE42D1 DP_OP_53J1_122_9842_U40 ( .A(n16), .B(x_mantissa[11]), .C(
        x_mantissa[10]), .CIX(DP_OP_53J1_122_9842_n64), .D(y_mantissa[10]), 
        .CO(DP_OP_53J1_122_9842_n62), .COX(DP_OP_53J1_122_9842_n61), .S(
        DP_OP_53J1_122_9842_n63) );
  CMPE42D1 DP_OP_53J1_122_9842_U39 ( .A(n17), .B(x_mantissa[12]), .C(
        x_mantissa[11]), .CIX(DP_OP_53J1_122_9842_n61), .D(y_mantissa[11]), 
        .CO(DP_OP_53J1_122_9842_n59), .COX(DP_OP_53J1_122_9842_n58), .S(
        DP_OP_53J1_122_9842_n60) );
  CMPE42D1 DP_OP_53J1_122_9842_U38 ( .A(n18), .B(x_mantissa[13]), .C(
        x_mantissa[12]), .CIX(DP_OP_53J1_122_9842_n58), .D(y_mantissa[12]), 
        .CO(DP_OP_53J1_122_9842_n56), .COX(DP_OP_53J1_122_9842_n55), .S(
        DP_OP_53J1_122_9842_n57) );
  CMPE42D1 DP_OP_53J1_122_9842_U37 ( .A(n19), .B(x_mantissa[14]), .C(
        x_mantissa[13]), .CIX(DP_OP_53J1_122_9842_n55), .D(y_mantissa[13]), 
        .CO(DP_OP_53J1_122_9842_n53), .COX(DP_OP_53J1_122_9842_n52), .S(
        DP_OP_53J1_122_9842_n54) );
  CMPE42D1 DP_OP_53J1_122_9842_U36 ( .A(n20), .B(x_mantissa[15]), .C(
        x_mantissa[14]), .CIX(DP_OP_53J1_122_9842_n52), .D(y_mantissa[14]), 
        .CO(DP_OP_53J1_122_9842_n50), .COX(DP_OP_53J1_122_9842_n49), .S(
        DP_OP_53J1_122_9842_n51) );
  CMPE42D1 DP_OP_53J1_122_9842_U35 ( .A(n21), .B(x_mantissa[16]), .C(
        x_mantissa[15]), .CIX(DP_OP_53J1_122_9842_n49), .D(y_mantissa[15]), 
        .CO(DP_OP_53J1_122_9842_n47), .COX(DP_OP_53J1_122_9842_n46), .S(
        DP_OP_53J1_122_9842_n48) );
  CMPE42D1 DP_OP_53J1_122_9842_U34 ( .A(n22), .B(x_mantissa[17]), .C(
        x_mantissa[16]), .CIX(DP_OP_53J1_122_9842_n46), .D(y_mantissa[16]), 
        .CO(DP_OP_53J1_122_9842_n44), .COX(DP_OP_53J1_122_9842_n43), .S(
        DP_OP_53J1_122_9842_n45) );
  CMPE42D1 DP_OP_53J1_122_9842_U33 ( .A(n23), .B(x_mantissa[18]), .C(n50), 
        .CIX(DP_OP_53J1_122_9842_n43), .D(y_mantissa[17]), .CO(
        DP_OP_53J1_122_9842_n41), .COX(DP_OP_53J1_122_9842_n40), .S(
        DP_OP_53J1_122_9842_n42) );
  CMPE42D1 DP_OP_53J1_122_9842_U32 ( .A(n24), .B(x_mantissa[19]), .C(n51), 
        .CIX(DP_OP_53J1_122_9842_n40), .D(y_mantissa[18]), .CO(
        DP_OP_53J1_122_9842_n38), .COX(DP_OP_53J1_122_9842_n37), .S(
        DP_OP_53J1_122_9842_n39) );
  CMPE42D1 DP_OP_53J1_122_9842_U31 ( .A(n25), .B(x_mantissa[20]), .C(n52), 
        .CIX(DP_OP_53J1_122_9842_n37), .D(y_mantissa[19]), .CO(
        DP_OP_53J1_122_9842_n35), .COX(DP_OP_53J1_122_9842_n34), .S(
        DP_OP_53J1_122_9842_n36) );
  CMPE42D1 DP_OP_53J1_122_9842_U30 ( .A(y_mantissa[21]), .B(x_mantissa[21]), 
        .C(n53), .CIX(DP_OP_53J1_122_9842_n34), .D(y_mantissa[20]), .CO(
        DP_OP_53J1_122_9842_n32), .COX(DP_OP_53J1_122_9842_n31), .S(
        DP_OP_53J1_122_9842_n33) );
  FA1D0 intadd_0_U24 ( .A(intadd_0_A_1_), .B(intadd_0_B_1_), .CI(intadd_0_n24), 
        .CO(intadd_0_n23), .S(zm0_c1[1]) );
  DFQD1 y_index_s3_reg_3_ ( .D(y_index_s2_3_), .CP(clk), .Q(y_index_s3_3_) );
  DFQD1 shared_s4_reg_2_ ( .D(shared_comb[2]), .CP(clk), .Q(shared_s4[2]) );
  DFQD1 shared_s4_reg_3_ ( .D(shared_comb[3]), .CP(clk), .Q(shared_s4[3]) );
  DFQD1 shared_s4_reg_5_ ( .D(shared_comb[5]), .CP(clk), .Q(shared_s4[5]) );
  FA1D0 intadd_0_U6 ( .A(DP_OP_53J1_122_9842_n36), .B(DP_OP_53J1_122_9842_n38), 
        .CI(intadd_0_n6), .CO(intadd_0_n5), .S(zm0_c1[19]) );
  FA1D0 intadd_0_U8 ( .A(DP_OP_53J1_122_9842_n42), .B(DP_OP_53J1_122_9842_n44), 
        .CI(intadd_0_n8), .CO(intadd_0_n7), .S(zm0_c1[17]) );
  FA1D0 intadd_0_U10 ( .A(DP_OP_53J1_122_9842_n48), .B(DP_OP_53J1_122_9842_n50), .CI(intadd_0_n10), .CO(intadd_0_n9), .S(zm0_c1[15]) );
  FA1D0 intadd_0_U14 ( .A(DP_OP_53J1_122_9842_n60), .B(DP_OP_53J1_122_9842_n62), .CI(intadd_0_n14), .CO(intadd_0_n13), .S(zm0_c1[11]) );
  FA1D0 intadd_0_U16 ( .A(DP_OP_53J1_122_9842_n66), .B(DP_OP_53J1_122_9842_n68), .CI(intadd_0_n16), .CO(intadd_0_n15), .S(zm0_c1[9]) );
  FA1D0 intadd_0_U18 ( .A(DP_OP_53J1_122_9842_n72), .B(DP_OP_53J1_122_9842_n74), .CI(intadd_0_n18), .CO(intadd_0_n17), .S(zm0_c1[7]) );
  FA1D0 intadd_0_U21 ( .A(DP_OP_53J1_122_9842_n81), .B(DP_OP_53J1_122_9842_n83), .CI(intadd_0_n21), .CO(intadd_0_n20), .S(zm0_c1[4]) );
  FA1D0 intadd_0_U23 ( .A(DP_OP_53J1_122_9842_n87), .B(intadd_0_B_2_), .CI(
        intadd_0_n23), .CO(intadd_0_n22), .S(zm0_c1[2]) );
  DFQD4 x_s3_reg_1_ ( .D(x_s2[1]), .CP(clk), .Q(x_s3[1]) );
  DFQD4 x_s3_reg_0_ ( .D(x_s2[0]), .CP(clk), .Q(x_s3[0]) );
  DFQD1 shared_s4_reg_1_ ( .D(shared_comb[1]), .CP(clk), .Q(shared_s4[1]) );
  FA1D0 intadd_0_U13 ( .A(DP_OP_53J1_122_9842_n57), .B(DP_OP_53J1_122_9842_n59), .CI(intadd_0_n13), .CO(intadd_0_n12), .S(zm0_c1[12]) );
  FA1D0 intadd_0_U22 ( .A(DP_OP_53J1_122_9842_n84), .B(DP_OP_53J1_122_9842_n86), .CI(intadd_0_n22), .CO(intadd_0_n21), .S(zm0_c1[3]) );
  DFQD1 shared_s4_reg_6_ ( .D(shared_comb[6]), .CP(clk), .Q(shared_s4[6]) );
  DFQD1 shared_s4_reg_7_ ( .D(shared_comb[7]), .CP(clk), .Q(shared_s4[7]) );
  FA1D1 intadd_0_U9 ( .A(DP_OP_53J1_122_9842_n45), .B(DP_OP_53J1_122_9842_n47), 
        .CI(intadd_0_n9), .CO(intadd_0_n8), .S(zm0_c1[16]) );
  FA1D1 intadd_0_U7 ( .A(DP_OP_53J1_122_9842_n39), .B(DP_OP_53J1_122_9842_n41), 
        .CI(intadd_0_n7), .CO(intadd_0_n6), .S(zm0_c1[18]) );
  FA1D1 intadd_0_U5 ( .A(DP_OP_53J1_122_9842_n33), .B(DP_OP_53J1_122_9842_n35), 
        .CI(intadd_0_n5), .CO(intadd_0_n4), .S(zm0_c1[20]) );
  FA1D1 intadd_0_U4 ( .A(DP_OP_53J1_122_9842_n29), .B(DP_OP_53J1_122_9842_n32), 
        .CI(intadd_0_n4), .CO(intadd_0_n3), .S(zm0_c1[21]) );
  FA1D0 intadd_0_U20 ( .A(DP_OP_53J1_122_9842_n78), .B(DP_OP_53J1_122_9842_n80), .CI(intadd_0_n20), .CO(intadd_0_n19), .S(zm0_c1[5]) );
  FA1D0 intadd_0_U19 ( .A(DP_OP_53J1_122_9842_n75), .B(DP_OP_53J1_122_9842_n77), .CI(intadd_0_n19), .CO(intadd_0_n18), .S(zm0_c1[6]) );
  FA1D0 intadd_0_U17 ( .A(DP_OP_53J1_122_9842_n69), .B(DP_OP_53J1_122_9842_n71), .CI(intadd_0_n17), .CO(intadd_0_n16), .S(zm0_c1[8]) );
  FA1D0 intadd_0_U15 ( .A(DP_OP_53J1_122_9842_n63), .B(DP_OP_53J1_122_9842_n65), .CI(intadd_0_n15), .CO(intadd_0_n14), .S(zm0_c1[10]) );
  FA1D0 U3 ( .A(n660), .B(n665), .CI(n659), .CO(n662), .S(
        DP_OP_56J1_125_979_n34) );
  NR2D1 U4 ( .A1(sum2[25]), .A2(carry2[25]), .ZN(n540) );
  FIICOND1 U5 ( .A(DP_OP_56J1_125_979_n41), .B(DP_OP_56J1_125_979_n40), .C(
        DP_OP_56J1_125_979_n12), .CON0(DP_OP_56J1_125_979_n11), .CON1(
        DP_OP_56J1_125_979_n10), .S(z1_c1[21]) );
  FA1D1 U6 ( .A(n980), .B(n666), .CI(n665), .CO(DP_OP_56J1_125_979_n39), .S(
        DP_OP_56J1_125_979_n40) );
  FA1D0 U7 ( .A(DP_OP_53J1_122_9842_n51), .B(DP_OP_53J1_122_9842_n53), .CI(
        intadd_0_n11), .CO(intadd_0_n10), .S(zm0_c1[14]) );
  CKND2D1 U8 ( .A1(n285), .A2(n284), .ZN(n282) );
  FA1D0 U9 ( .A(n253), .B(n252), .CI(n251), .CO(n364), .S(z1_c1[6]) );
  INVD1 U10 ( .I(n132), .ZN(n170) );
  CKND2D1 U11 ( .A1(n176), .A2(n175), .ZN(n132) );
  INVD1 U12 ( .I(n75), .ZN(n76) );
  HA1D0 U13 ( .A(n215), .B(n214), .CO(n209), .S(n216) );
  HA1D0 U14 ( .A(n218), .B(n217), .CO(n212), .S(n219) );
  ND3D2 U15 ( .A1(n348), .A2(n347), .A3(n346), .ZN(n4060) );
  INVD1 U16 ( .I(y_index_s3_3_), .ZN(n373) );
  INVD0 U17 ( .I(n214), .ZN(n6) );
  INVD0 U18 ( .I(n208), .ZN(n7) );
  INVD0 U19 ( .I(n201), .ZN(n8) );
  INVD0 U20 ( .I(n196), .ZN(n10) );
  INVD0 U21 ( .I(n189), .ZN(n11) );
  INVD0 U22 ( .I(y_mantissa[3]), .ZN(n214) );
  INVD0 U23 ( .I(n303), .ZN(n28) );
  INVD0 U24 ( .I(x_s3[6]), .ZN(n346) );
  CKND2D0 U25 ( .A1(n3880), .A2(n3890), .ZN(n383) );
  OAI21D0 U26 ( .A1(n994), .A2(n991), .B(n995), .ZN(n344) );
  INVD0 U27 ( .I(n1020), .ZN(n1027) );
  OAI21D0 U28 ( .A1(n1026), .A2(n440), .B(n439), .ZN(n441) );
  CKND2D0 U29 ( .A1(n353), .A2(n352), .ZN(n3990) );
  OAI21D0 U30 ( .A1(n4050), .A2(n4040), .B(n4030), .ZN(n1007) );
  CKND2D0 U31 ( .A1(n435), .A2(n434), .ZN(n1020) );
  CKND2D0 U32 ( .A1(n468), .A2(n467), .ZN(n1037) );
  CKND2D0 U33 ( .A1(n472), .A2(n471), .ZN(n1045) );
  INVD0 U34 ( .I(n373), .ZN(n376) );
  INVD0 U35 ( .I(x_s3[3]), .ZN(n331) );
  OAI21D0 U36 ( .A1(n1031), .A2(n1030), .B(n1029), .ZN(n1034) );
  INVD0 U37 ( .I(n905), .ZN(n954) );
  INVD0 U38 ( .I(n905), .ZN(n940) );
  INVD0 U39 ( .I(divide_s3), .ZN(n805) );
  AO22D0 U40 ( .A1(n355), .A2(n1018), .B1(z1_s3[7]), .B2(n999), .Z(plane1[7])
         );
  INVD0 U41 ( .I(n65), .ZN(n66) );
  INVD0 U42 ( .I(n91), .ZN(n92) );
  INVD0 U43 ( .I(y_mantissa[21]), .ZN(n284) );
  INVD0 U44 ( .I(y_mantissa[0]), .ZN(n128) );
  INVD0 U45 ( .I(y_mantissa[9]), .ZN(n178) );
  INVD0 U46 ( .I(y_mantissa[14]), .ZN(n148) );
  INVD0 U47 ( .I(y_mantissa[19]), .ZN(n246) );
  CKND2D0 U48 ( .A1(sum2[8]), .A2(carry2[8]), .ZN(n556) );
  CKND2D0 U49 ( .A1(sum2[12]), .A2(carry2[12]), .ZN(n609) );
  CKND2D0 U50 ( .A1(sum2[18]), .A2(carry2[18]), .ZN(n582) );
  CKND2D0 U51 ( .A1(sum2[22]), .A2(carry2[22]), .ZN(n564) );
  INVD0 U52 ( .I(x_mantissa[22]), .ZN(n203) );
  INVD0 U53 ( .I(n650), .ZN(n652) );
  INVD0 U54 ( .I(n227), .ZN(n273) );
  CKND2D0 U55 ( .A1(n531), .A2(n530), .ZN(n532) );
  INVD0 U56 ( .I(x_mantissa[11]), .ZN(n169) );
  INVD0 U57 ( .I(n423), .ZN(n1100) );
  INVD0 U58 ( .I(n269), .ZN(intadd_0_A_23_) );
  FA1D0 U59 ( .A(n369), .B(n368), .CI(n367), .CO(n257), .S(z1_c1[9]) );
  INVD0 U60 ( .I(n664), .ZN(z1_c1[26]) );
  FA1D0 U61 ( .A(DP_OP_53J1_122_9842_n54), .B(DP_OP_53J1_122_9842_n56), .CI(
        intadd_0_n12), .CO(intadd_0_n11), .S(zm0_c1[13]) );
  INVD0 U62 ( .I(shared_s4[19]), .ZN(n65) );
  INVD0 U63 ( .I(shared_s4[28]), .ZN(n71) );
  INVD0 U64 ( .I(shared_s4[16]), .ZN(n85) );
  INVD0 U65 ( .I(shared_s4[21]), .ZN(n69) );
  INVD0 U66 ( .I(shared_s4[20]), .ZN(n67) );
  INVD0 U67 ( .I(shared_s4[15]), .ZN(n83) );
  INVD0 U68 ( .I(shared_s4[23]), .ZN(n91) );
  INVD0 U69 ( .I(shared_s4[22]), .ZN(n89) );
  INVD0 U70 ( .I(shared_s4[5]), .ZN(n75) );
  INVD0 U71 ( .I(shared_s4[17]), .ZN(n63) );
  INVD0 U72 ( .I(shared_s4[18]), .ZN(n87) );
  INVD0 U73 ( .I(shared_s4[14]), .ZN(n61) );
  INVD0 U74 ( .I(shared_s4[3]), .ZN(n77) );
  INVD0 U75 ( .I(shared_s4[4]), .ZN(n79) );
  INVD0 U76 ( .I(shared_s4[25]), .ZN(n73) );
  ND2D0 U77 ( .A1(n126), .A2(n526), .ZN(n527) );
  CKND2D1 U78 ( .A1(n547), .A2(n546), .ZN(n549) );
  CKND2D0 U79 ( .A1(n565), .A2(n564), .ZN(n567) );
  ND2D0 U80 ( .A1(n361), .A2(n360), .ZN(n241) );
  ND2D0 U81 ( .A1(sum2[19]), .A2(carry2[19]), .ZN(n577) );
  OR2D0 U82 ( .A1(sum2[17]), .A2(carry2[17]), .Z(n587) );
  CKND2D0 U83 ( .A1(sum2[13]), .A2(carry2[13]), .ZN(n604) );
  AN2D0 U84 ( .A1(n757), .A2(n961), .Z(n1098) );
  NR2XD0 U85 ( .A1(n756), .A2(n755), .ZN(n754) );
  INVD0 U86 ( .I(n771), .ZN(n475) );
  CKND2D0 U87 ( .A1(n761), .A2(n760), .ZN(intadd_0_B_23_) );
  AOI21D0 U88 ( .A1(n718), .A2(n809), .B(n717), .ZN(n719) );
  CKND2D1 U89 ( .A1(n212), .A2(n211), .ZN(n130) );
  INVD0 U90 ( .I(n1065), .ZN(n1080) );
  BUFFD0 U91 ( .I(n828), .Z(n1040) );
  BUFFD1 U92 ( .I(n805), .Z(n905) );
  BUFFD1 U93 ( .I(n167), .Z(n650) );
  INVD1 U94 ( .I(y_mantissa[8]), .ZN(n182) );
  INVD1 U95 ( .I(x_s3[18]), .ZN(n481) );
  INVD0 U96 ( .I(x_mantissa[12]), .ZN(n163) );
  BUFFD1 U97 ( .I(n203), .Z(n167) );
  INVD0 U98 ( .I(x_mantissa[16]), .ZN(n139) );
  XNR2D0 U99 ( .A1(n544), .A2(n543), .ZN(shared_comb[25]) );
  CKND2D0 U100 ( .A1(n542), .A2(n541), .ZN(n543) );
  MUX2D2 U101 ( .I0(DP_OP_56J1_125_979_n9), .I1(DP_OP_56J1_125_979_n8), .S(
        DP_OP_56J1_125_979_n12), .Z(DP_OP_56J1_125_979_n7) );
  CKND2D1 U102 ( .A1(n519), .A2(n577), .ZN(n575) );
  INVD1 U103 ( .I(n654), .ZN(n656) );
  CKND2D1 U104 ( .A1(sum2[21]), .A2(carry2[21]), .ZN(n569) );
  CKND2D1 U105 ( .A1(sum2[20]), .A2(carry2[20]), .ZN(n573) );
  CKND2D1 U106 ( .A1(n271), .A2(n270), .ZN(n272) );
  CKND2D0 U107 ( .A1(sum2[17]), .A2(carry2[17]), .ZN(n586) );
  CKND2D0 U108 ( .A1(sum2[15]), .A2(carry2[15]), .ZN(n595) );
  OAI21D1 U109 ( .A1(n617), .A2(n620), .B(n618), .ZN(n615) );
  XNR2D0 U110 ( .A1(n625), .A2(n624), .ZN(shared_comb[9]) );
  INVD0 U111 ( .I(n613), .ZN(n515) );
  CKND2D1 U112 ( .A1(n237), .A2(n236), .ZN(n238) );
  CKND2D1 U113 ( .A1(sum2[7]), .A2(carry2[7]), .ZN(n626) );
  CKND2D1 U114 ( .A1(n151), .A2(n150), .ZN(n134) );
  AOI21D0 U115 ( .A1(n772), .A2(n476), .B(n475), .ZN(n477) );
  CKND2D1 U116 ( .A1(n164), .A2(n163), .ZN(n133) );
  CKND2D0 U117 ( .A1(n1062), .A2(n1061), .ZN(n501) );
  CKND2D0 U118 ( .A1(n495), .A2(n494), .ZN(n1057) );
  CKND2D0 U119 ( .A1(n486), .A2(n485), .ZN(n1052) );
  INVD0 U120 ( .I(n1014), .ZN(n432) );
  INVD0 U121 ( .I(n1003), .ZN(n4020) );
  INVD0 U122 ( .I(n1013), .ZN(n1008) );
  FA1D0 U123 ( .A(z1_s3[15]), .B(n451), .CI(n450), .CO(n473), .S(n472) );
  CKND2D0 U124 ( .A1(n470), .A2(n469), .ZN(n778) );
  CKND2D0 U125 ( .A1(n124), .A2(n1003), .ZN(n1004) );
  INVD0 U126 ( .I(n3990), .ZN(n1001) );
  FA1D0 U127 ( .A(z1_s3[8]), .B(n4100), .CI(n4090), .CO(n428), .S(n4010) );
  FA1D0 U128 ( .A(z1_s3[6]), .B(n351), .CI(n350), .CO(n352), .S(n343) );
  FA1D0 U129 ( .A(z1_s3[5]), .B(n308), .CI(n307), .CO(n342), .S(n341) );
  NR4D2 U130 ( .A1(n4060), .A2(x_s3[11]), .A3(x_s3[10]), .A4(n4070), .ZN(n453)
         );
  XOR2D0 U131 ( .A1(n302), .A2(x_s3[5]), .Z(n304) );
  INVD1 U132 ( .I(n980), .ZN(n660) );
  INVD1 U133 ( .I(n423), .ZN(n489) );
  CKND2D1 U134 ( .A1(n300), .A2(n321), .ZN(n316) );
  INVD1 U135 ( .I(n57), .ZN(n58) );
  INVD1 U136 ( .I(n59), .ZN(n60) );
  INVD1 U137 ( .I(n481), .ZN(n102) );
  INVD1 U138 ( .I(n81), .ZN(n82) );
  INVD1 U139 ( .I(y_mantissa[10]), .ZN(n172) );
  INVD1 U140 ( .I(y_mantissa[11]), .ZN(n166) );
  INVD1 U141 ( .I(y_mantissa[13]), .ZN(n153) );
  INVD1 U142 ( .I(x_mantissa[13]), .ZN(n156) );
  INVD1 U143 ( .I(x_mantissa[14]), .ZN(n150) );
  INVD1 U144 ( .I(x_mantissa[15]), .ZN(n145) );
  INVD1 U145 ( .I(y_mantissa[22]), .ZN(n683) );
  XNR2D0 U146 ( .A1(n533), .A2(n532), .ZN(shared_comb[27]) );
  XNR2D0 U147 ( .A1(n528), .A2(n527), .ZN(shared_comb[28]) );
  XOR2D0 U148 ( .A1(n554), .A2(n553), .Z(shared_comb[23]) );
  AOI21D1 U149 ( .A1(n565), .A2(n566), .B(n521), .ZN(n554) );
  XOR2D0 U150 ( .A1(n572), .A2(n571), .Z(shared_comb[21]) );
  INVD0 U151 ( .I(n529), .ZN(n531) );
  XNR2D0 U152 ( .A1(n576), .A2(n575), .ZN(shared_comb[20]) );
  AOI21D1 U153 ( .A1(n574), .A2(n575), .B(n520), .ZN(n571) );
  OR2D1 U154 ( .A1(sum2[28]), .A2(carry2[28]), .Z(n126) );
  CKND2D0 U155 ( .A1(sum2[28]), .A2(carry2[28]), .ZN(n526) );
  INVD0 U156 ( .I(n540), .ZN(n542) );
  ND2D1 U157 ( .A1(n579), .A2(n578), .ZN(n519) );
  INVD0 U158 ( .I(n545), .ZN(n547) );
  XNR2D0 U159 ( .A1(n580), .A2(n579), .ZN(shared_comb[19]) );
  OAI21D1 U160 ( .A1(n584), .A2(n581), .B(n582), .ZN(n579) );
  XOR2D0 U161 ( .A1(n585), .A2(n584), .Z(shared_comb[18]) );
  FA1D1 U162 ( .A(n666), .B(n980), .CI(n665), .CO(DP_OP_56J1_125_979_n37), .S(
        DP_OP_56J1_125_979_n38) );
  AOI21D1 U163 ( .A1(n587), .A2(n588), .B(n518), .ZN(n584) );
  XNR2D0 U164 ( .A1(n589), .A2(n588), .ZN(shared_comb[17]) );
  INVD0 U165 ( .I(n564), .ZN(n521) );
  CKMUX2D1 U166 ( .I0(z1_s3[26]), .I1(n504), .S(n1092), .Z(plane1[27]) );
  XOR2D0 U167 ( .A1(n594), .A2(n593), .Z(shared_comb[16]) );
  OAI21D1 U168 ( .A1(n590), .A2(n593), .B(n591), .ZN(n588) );
  OR2D1 U169 ( .A1(sum2[22]), .A2(carry2[22]), .Z(n565) );
  MUX2D0 U170 ( .I0(z1_s3[26]), .I1(n1093), .S(n1092), .Z(plane1[26]) );
  INVD0 U171 ( .I(n658), .ZN(n642) );
  IOA21D1 U172 ( .A1(n293), .A2(n292), .B(n291), .ZN(n641) );
  XNR2D0 U173 ( .A1(n598), .A2(n597), .ZN(shared_comb[15]) );
  AOI21D1 U174 ( .A1(n596), .A2(n597), .B(n517), .ZN(n593) );
  INVD0 U175 ( .I(n573), .ZN(n520) );
  XOR2D0 U176 ( .A1(n288), .A2(n250), .Z(z1_c1[18]) );
  INVD1 U177 ( .I(n665), .ZN(n663) );
  FA1D1 U178 ( .A(z1_s3[25]), .B(n506), .CI(n505), .CO(n1090), .S(n507) );
  OR2D1 U179 ( .A1(sum2[20]), .A2(carry2[20]), .Z(n574) );
  XOR2D0 U180 ( .A1(n603), .A2(n602), .Z(shared_comb[14]) );
  XOR2D0 U181 ( .A1(n292), .A2(n293), .Z(n250) );
  XNR2D0 U182 ( .A1(n363), .A2(n362), .ZN(z1_c1[17]) );
  OAI21D1 U183 ( .A1(n363), .A2(n242), .B(n241), .ZN(n288) );
  OR2D1 U184 ( .A1(sum2[19]), .A2(carry2[19]), .Z(n578) );
  XNR2D0 U185 ( .A1(n607), .A2(n606), .ZN(shared_comb[13]) );
  FA1D1 U186 ( .A(z1_s3[24]), .B(n1087), .CI(n1086), .CO(n505), .S(n1089) );
  INVD1 U187 ( .I(n272), .ZN(n276) );
  XNR2D0 U188 ( .A1(n359), .A2(n358), .ZN(z1_c1[16]) );
  FA1D1 U189 ( .A(intadd_0_A_23_), .B(intadd_0_B_23_), .CI(intadd_0_n2), .CO(
        intadd_0_n1), .S(zm0_c1[23]) );
  XOR2D0 U190 ( .A1(n361), .A2(n360), .Z(n362) );
  INVD0 U191 ( .I(n586), .ZN(n518) );
  FA1D1 U192 ( .A(n1084), .B(n1083), .CI(n1082), .CO(n1086), .S(n1085) );
  XOR2D0 U193 ( .A1(n612), .A2(n611), .Z(shared_comb[12]) );
  XOR2D0 U194 ( .A1(n271), .A2(n270), .Z(n245) );
  FA1D1 U195 ( .A(DP_OP_53J1_122_9842_n28), .B(intadd_0_B_22_), .CI(
        intadd_0_n3), .CO(intadd_0_n2), .S(zm0_c1[22]) );
  XNR2D0 U196 ( .A1(n357), .A2(n356), .ZN(n358) );
  IND2D0 U197 ( .A1(n357), .B1(n231), .ZN(n232) );
  XNR2D0 U198 ( .A1(n616), .A2(n615), .ZN(shared_comb[11]) );
  XOR2D0 U199 ( .A1(n621), .A2(n620), .Z(shared_comb[10]) );
  INVD0 U200 ( .I(n595), .ZN(n517) );
  FA1D1 U201 ( .A(n1078), .B(n1077), .CI(n1076), .CO(n1082), .S(n1081) );
  INVD1 U202 ( .I(n282), .ZN(n647) );
  FA1D1 U203 ( .A(n268), .B(n267), .CI(n266), .CO(n359), .S(z1_c1[15]) );
  ND2D0 U204 ( .A1(sum2[16]), .A2(carry2[16]), .ZN(n591) );
  OR2D1 U205 ( .A1(sum2[15]), .A2(carry2[15]), .Z(n596) );
  INVD0 U206 ( .I(n604), .ZN(n516) );
  XOR2D0 U207 ( .A1(n285), .A2(n284), .Z(n287) );
  XOR2D0 U208 ( .A1(n559), .A2(n558), .Z(shared_comb[8]) );
  FA1D1 U209 ( .A(n1070), .B(n1069), .CI(n1068), .CO(n1072), .S(n1071) );
  OR2D1 U210 ( .A1(sum2[13]), .A2(carry2[13]), .Z(n605) );
  XNR2D0 U211 ( .A1(n1064), .A2(n1063), .ZN(n1067) );
  XOR2D0 U212 ( .A1(n140), .A2(n139), .Z(n141) );
  XNR2D0 U213 ( .A1(n1059), .A2(n1058), .ZN(n1060) );
  INVD1 U214 ( .I(n238), .ZN(n247) );
  XOR2D0 U215 ( .A1(n1055), .A2(n1054), .Z(n1056) );
  INVD0 U216 ( .I(n1097), .ZN(n94) );
  INVD0 U217 ( .I(n1097), .ZN(n93) );
  FA1D1 U218 ( .A(n372), .B(n371), .CI(n370), .CO(n260), .S(z1_c1[11]) );
  INVD1 U219 ( .I(n134), .ZN(n146) );
  XOR2D0 U220 ( .A1(n237), .A2(n236), .Z(n230) );
  CKND2D1 U221 ( .A1(n754), .A2(n961), .ZN(n1097) );
  XOR2D0 U222 ( .A1(n1048), .A2(n1047), .Z(n1050) );
  XOR2D0 U223 ( .A1(n774), .A2(n773), .Z(n775) );
  XNR2D0 U224 ( .A1(n756), .A2(n755), .ZN(n757) );
  XNR2D0 U225 ( .A1(n781), .A2(n780), .ZN(n782) );
  XNR2D0 U226 ( .A1(n1044), .A2(n1039), .ZN(n1041) );
  IOA21D1 U227 ( .A1(n478), .A2(n1042), .B(n477), .ZN(n479) );
  XNR2D0 U228 ( .A1(n1034), .A2(n1033), .ZN(n1035) );
  XOR2D0 U229 ( .A1(n137), .A2(n136), .Z(n138) );
  FA1D1 U230 ( .A(n259), .B(n258), .CI(n257), .CO(n370), .S(z1_c1[10]) );
  XNR2D0 U231 ( .A1(n1022), .A2(n1021), .ZN(n1023) );
  XNR2D0 U232 ( .A1(n1016), .A2(n1015), .ZN(n1019) );
  INVD1 U233 ( .I(n133), .ZN(n157) );
  FA1D0 U234 ( .A(z1_s3[21]), .B(n3870), .CI(n3860), .CO(n1077), .S(n1073) );
  INVD0 U235 ( .I(n1057), .ZN(n496) );
  NR2XD0 U236 ( .A1(n1062), .A2(n1061), .ZN(n502) );
  XOR2D0 U237 ( .A1(n1062), .A2(n1061), .Z(n1063) );
  OR2D1 U238 ( .A1(n495), .A2(n494), .Z(n119) );
  FA1D0 U239 ( .A(z1_s3[20]), .B(n3920), .CI(n3910), .CO(n1074), .S(n1069) );
  XOR2D0 U240 ( .A1(n1005), .A2(n1004), .Z(n1006) );
  FA1D0 U241 ( .A(z1_s3[18]), .B(n500), .CI(n499), .CO(n1061), .S(n495) );
  XOR2D0 U242 ( .A1(n380), .A2(n33), .Z(n382) );
  FA1D0 U243 ( .A(z1_s3[19]), .B(n498), .CI(n497), .CO(n1070), .S(n1062) );
  FA1D1 U244 ( .A(n366), .B(n365), .CI(n364), .CO(n254), .S(z1_c1[7]) );
  CKND2D0 U245 ( .A1(n1008), .A2(n1012), .ZN(n1009) );
  FA1D0 U246 ( .A(z1_s3[17]), .B(n493), .CI(n492), .CO(n494), .S(n486) );
  CKND2D0 U247 ( .A1(n120), .A2(n1014), .ZN(n1015) );
  INVD0 U248 ( .I(n1032), .ZN(n438) );
  CKND2D0 U249 ( .A1(n122), .A2(n1020), .ZN(n1021) );
  XOR2D0 U250 ( .A1(n488), .A2(x_s3[19]), .Z(n491) );
  XOR2D0 U251 ( .A1(n3880), .A2(x_s3[20]), .Z(n3900) );
  FA1D0 U252 ( .A(z1_s3[14]), .B(n464), .CI(n463), .CO(n471), .S(n470) );
  FA1D0 U253 ( .A(z1_s3[12]), .B(n462), .CI(n461), .CO(n467), .S(n437) );
  FA1D0 U254 ( .A(z1_s3[13]), .B(n466), .CI(n465), .CO(n469), .S(n468) );
  FA1D0 U255 ( .A(z1_s3[10]), .B(n420), .CI(n419), .CO(n434), .S(n431) );
  MUX2ND0 U256 ( .I0(n448), .I1(n447), .S(n458), .ZN(n450) );
  FA1D0 U257 ( .A(z1_s3[11]), .B(n427), .CI(n426), .CO(n436), .S(n435) );
  CKND2D1 U258 ( .A1(n446), .A2(n447), .ZN(n443) );
  FA1D0 U259 ( .A(n296), .B(n295), .CI(n294), .CO(n678), .S(z1_c1[4]) );
  MUX2ND0 U260 ( .I0(n3960), .I1(n3950), .S(n3940), .ZN(n4090) );
  INVD1 U261 ( .I(n131), .ZN(n193) );
  MUX2ND0 U262 ( .I0(n349), .I1(n377), .S(n3940), .ZN(n3970) );
  AOI21D0 U263 ( .A1(n945), .A2(n923), .B(n893), .ZN(n894) );
  AOI21D0 U264 ( .A1(n945), .A2(n944), .B(n943), .ZN(n946) );
  AOI21D0 U265 ( .A1(n945), .A2(n883), .B(n882), .ZN(n884) );
  XOR2D0 U266 ( .A1(n453), .A2(x_s3[12]), .Z(n418) );
  CKND2D1 U267 ( .A1(n199), .A2(n198), .ZN(n131) );
  AOI21D0 U268 ( .A1(n872), .A2(n871), .B(n870), .ZN(n877) );
  INVD0 U269 ( .I(n872), .ZN(n109) );
  XOR3D0 U270 ( .A1(n982), .A2(n101), .A3(DP_OP_53J1_122_9842_n31), .Z(
        DP_OP_53J1_122_9842_n29) );
  IOA21D0 U271 ( .A1(n1095), .A2(n1094), .B(intadd_0_B_23_), .ZN(
        intadd_0_B_22_) );
  INVD1 U272 ( .I(n130), .ZN(n206) );
  INVD0 U273 ( .I(n660), .ZN(n101) );
  MAOI222D0 U274 ( .A(x_mantissa[22]), .B(n984), .C(n983), .ZN(
        DP_OP_53J1_122_9842_n28) );
  CKND2D2 U275 ( .A1(n329), .A2(n331), .ZN(n313) );
  INVD1 U276 ( .I(n1079), .ZN(n1088) );
  HA1D1 U277 ( .A(n224), .B(n223), .CO(n215), .S(n225) );
  BUFFD0 U278 ( .I(n1010), .Z(n999) );
  INVD1 U279 ( .I(n905), .ZN(n918) );
  INVD0 U280 ( .I(n182), .ZN(n13) );
  INVD1 U281 ( .I(n758), .ZN(n279) );
  INVD0 U282 ( .I(n178), .ZN(n14) );
  INVD0 U283 ( .I(n246), .ZN(n24) );
  INVD0 U284 ( .I(n172), .ZN(n15) );
  INVD0 U285 ( .I(n236), .ZN(n23) );
  INVD0 U286 ( .I(n166), .ZN(n16) );
  INVD0 U287 ( .I(n229), .ZN(n22) );
  INVD0 U288 ( .I(n159), .ZN(n17) );
  INVD0 U289 ( .I(n136), .ZN(n21) );
  INVD0 U290 ( .I(n142), .ZN(n20) );
  INVD0 U291 ( .I(n148), .ZN(n19) );
  INVD0 U292 ( .I(n153), .ZN(n18) );
  INVD0 U293 ( .I(n414), .ZN(n29) );
  INVD1 U294 ( .I(n89), .ZN(n90) );
  INVD1 U295 ( .I(n83), .ZN(n84) );
  XNR2D0 U296 ( .A1(n688), .A2(x_s3[22]), .ZN(n844) );
  INVD1 U297 ( .I(n87), .ZN(n88) );
  INVD0 U298 ( .I(n455), .ZN(n31) );
  INVD1 U299 ( .I(n85), .ZN(n86) );
  INVD0 U300 ( .I(n421), .ZN(n98) );
  INVD1 U301 ( .I(n61), .ZN(n62) );
  INVD0 U302 ( .I(n459), .ZN(n97) );
  INVD1 U303 ( .I(n63), .ZN(n64) );
  INVD0 U304 ( .I(n424), .ZN(n30) );
  INVD1 U305 ( .I(n67), .ZN(n68) );
  INVD1 U306 ( .I(n73), .ZN(n74) );
  INVD1 U307 ( .I(n69), .ZN(n70) );
  INVD1 U308 ( .I(n71), .ZN(n72) );
  INVD0 U309 ( .I(n381), .ZN(n33) );
  INVD0 U310 ( .I(n384), .ZN(n96) );
  INVD0 U311 ( .I(n490), .ZN(n32) );
  INVD0 U312 ( .I(n4110), .ZN(n99) );
  INVD1 U313 ( .I(y_mantissa[12]), .ZN(n159) );
  INVD1 U314 ( .I(y_mantissa[15]), .ZN(n142) );
  INVD1 U315 ( .I(y_mantissa[16]), .ZN(n136) );
  INVD1 U316 ( .I(y_mantissa[17]), .ZN(n229) );
  INVD0 U317 ( .I(n226), .ZN(n50) );
  INVD1 U318 ( .I(y_mantissa[18]), .ZN(n236) );
  INVD0 U319 ( .I(n233), .ZN(n51) );
  INVD1 U320 ( .I(y_mantissa[20]), .ZN(n280) );
  INVD1 U321 ( .I(n981), .ZN(n758) );
  INVD1 U322 ( .I(x_mantissa[17]), .ZN(n226) );
  INVD1 U323 ( .I(x_mantissa[18]), .ZN(n233) );
  INVD1 U324 ( .I(x_mantissa[19]), .ZN(n243) );
  INVD1 U325 ( .I(x_mantissa[20]), .ZN(n270) );
  INVD1 U326 ( .I(x_mantissa[21]), .ZN(n275) );
  INVD0 U328 ( .I(n280), .ZN(n25) );
  INVD0 U329 ( .I(n220), .ZN(n26) );
  INVD1 U330 ( .I(x_mantissa[2]), .ZN(n220) );
  INVD1 U331 ( .I(n663), .ZN(n27) );
  INVD0 U332 ( .I(n127), .ZN(n34) );
  INVD0 U333 ( .I(n284), .ZN(n35) );
  INVD0 U334 ( .I(n217), .ZN(n36) );
  INVD0 U335 ( .I(n211), .ZN(n37) );
  INVD0 U336 ( .I(n205), .ZN(n38) );
  INVD0 U337 ( .I(n198), .ZN(n39) );
  INVD0 U338 ( .I(n192), .ZN(n40) );
  INVD0 U339 ( .I(n185), .ZN(n41) );
  INVD0 U340 ( .I(n180), .ZN(n42) );
  INVD0 U341 ( .I(n175), .ZN(n43) );
  INVD0 U342 ( .I(n169), .ZN(n44) );
  INVD0 U343 ( .I(n163), .ZN(n45) );
  INVD0 U344 ( .I(n156), .ZN(n46) );
  INVD0 U345 ( .I(n150), .ZN(n47) );
  INVD0 U346 ( .I(n145), .ZN(n48) );
  INVD0 U347 ( .I(n139), .ZN(n49) );
  INVD0 U348 ( .I(n243), .ZN(n52) );
  INVD0 U349 ( .I(n270), .ZN(n53) );
  INVD1 U350 ( .I(n106), .ZN(n107) );
  INVD0 U351 ( .I(n128), .ZN(n54) );
  INVD0 U352 ( .I(n682), .ZN(n55) );
  INVD0 U353 ( .I(n275), .ZN(n56) );
  INVD0 U354 ( .I(shared_s4[11]), .ZN(n57) );
  INVD0 U355 ( .I(shared_s4[13]), .ZN(n59) );
  INVD1 U356 ( .I(n77), .ZN(n78) );
  INVD1 U357 ( .I(n79), .ZN(n80) );
  MUX2D0 U358 ( .I0(n278), .I1(x_mantissa[21]), .S(n1095), .Z(n658) );
  INVD0 U359 ( .I(shared_s4[12]), .ZN(n81) );
  INVD0 U360 ( .I(n1097), .ZN(n95) );
  INVD0 U361 ( .I(n317), .ZN(n100) );
  FA1D0 U362 ( .A(n980), .B(n658), .CI(n657), .CO(DP_OP_56J1_125_979_n41), .S(
        n668) );
  FA1D0 U363 ( .A(n101), .B(n666), .CI(n27), .CO(DP_OP_56J1_125_979_n35), .S(
        DP_OP_56J1_125_979_n36) );
  INVD0 U364 ( .I(n314), .ZN(n103) );
  BUFFD1 U365 ( .I(shared_s4[26]), .Z(n104) );
  CKBD1 U366 ( .I(shared_s4[7]), .Z(n105) );
  INVD1 U367 ( .I(shared_s4[6]), .ZN(n106) );
  INVD0 U368 ( .I(n106), .ZN(n108) );
  CKBD1 U369 ( .I(n1017), .Z(n828) );
  AN2XD1 U370 ( .A1(n154), .A2(n153), .Z(n110) );
  AN2XD1 U371 ( .A1(n186), .A2(n185), .Z(n111) );
  AN2XD1 U372 ( .A1(n140), .A2(n139), .Z(n112) );
  AN2XD1 U373 ( .A1(n137), .A2(n136), .Z(n113) );
  AN2XD1 U374 ( .A1(n173), .A2(n172), .Z(n114) );
  AN2XD1 U375 ( .A1(n183), .A2(n182), .Z(n115) );
  AN2XD1 U376 ( .A1(n202), .A2(n201), .Z(n116) );
  INVD0 U377 ( .I(y_mantissa[2]), .ZN(n223) );
  OR2D0 U378 ( .A1(n325), .A2(n324), .Z(n117) );
  OR2D1 U379 ( .A1(n353), .A2(n352), .Z(n118) );
  OR2D1 U380 ( .A1(n431), .A2(n430), .Z(n120) );
  OR2D0 U381 ( .A1(n336), .A2(n335), .Z(n121) );
  OR2D1 U382 ( .A1(n435), .A2(n434), .Z(n122) );
  OR2D1 U383 ( .A1(n437), .A2(n436), .Z(n123) );
  OR2D1 U384 ( .A1(n4010), .A2(n4000), .Z(n124) );
  INVD0 U385 ( .I(y_mantissa[1]), .ZN(n127) );
  OA21D1 U386 ( .A1(n529), .A2(n535), .B(n530), .Z(n125) );
  BUFFD1 U387 ( .I(n203), .Z(n248) );
  CKBD1 U388 ( .I(n683), .Z(n981) );
  FA1D0 U389 ( .A(z1_s3[7]), .B(n3980), .CI(n3970), .CO(n4000), .S(n353) );
  FA1D0 U390 ( .A(z1_s3[9]), .B(n417), .CI(n416), .CO(n430), .S(n429) );
  FA1D0 U391 ( .A(z1_s3[16]), .B(n484), .CI(n483), .CO(n485), .S(n474) );
  OAI21D1 U392 ( .A1(n1064), .A2(n502), .B(n501), .ZN(n1068) );
  FA1D0 U393 ( .A(n1074), .B(n1073), .CI(n1072), .CO(n1076), .S(n1075) );
  MUX2D0 U394 ( .I0(z1_s3[23]), .I1(n1085), .S(n1092), .Z(plane1[23]) );
  INVD1 U395 ( .I(divide_s3), .ZN(n1017) );
  AN2XD1 U396 ( .A1(n128), .A2(n127), .Z(n224) );
  XNR2D1 U397 ( .A1(n279), .A2(n647), .ZN(n283) );
  IOA21D1 U398 ( .A1(n290), .A2(n289), .B(n288), .ZN(n291) );
  BUFFD0 U399 ( .I(divide_s5), .Z(n976) );
  MUX2D0 U400 ( .I0(n6), .I1(n216), .S(n269), .Z(n674) );
  MUX2D0 U401 ( .I0(n138), .I1(y_mantissa[16]), .S(n239), .Z(n646) );
  AOI22D1 U402 ( .A1(n359), .A2(n232), .B1(n357), .B2(n356), .ZN(n363) );
  FA1D0 U403 ( .A(n256), .B(n255), .CI(n254), .CO(n367), .S(z1_c1[8]) );
  INVD0 U404 ( .I(y_mantissa[4]), .ZN(n208) );
  INVD0 U405 ( .I(y_mantissa[5]), .ZN(n201) );
  INVD0 U406 ( .I(y_mantissa[6]), .ZN(n196) );
  INVD0 U407 ( .I(y_mantissa[7]), .ZN(n189) );
  INVD0 U408 ( .I(n167), .ZN(n239) );
  MUX2D0 U409 ( .I0(n129), .I1(y_mantissa[17]), .S(n239), .Z(n268) );
  INVD1 U410 ( .I(x_mantissa[1]), .ZN(n682) );
  INVD1 U411 ( .I(x_mantissa[0]), .ZN(n681) );
  INVD0 U412 ( .I(x_mantissa[3]), .ZN(n217) );
  INVD0 U413 ( .I(x_mantissa[4]), .ZN(n211) );
  INVD0 U414 ( .I(x_mantissa[5]), .ZN(n205) );
  INVD0 U415 ( .I(x_mantissa[6]), .ZN(n198) );
  INVD0 U416 ( .I(x_mantissa[7]), .ZN(n192) );
  INVD0 U417 ( .I(x_mantissa[8]), .ZN(n185) );
  INVD0 U418 ( .I(x_mantissa[9]), .ZN(n180) );
  INVD0 U419 ( .I(x_mantissa[10]), .ZN(n175) );
  MUX2D0 U420 ( .I0(n135), .I1(x_mantissa[17]), .S(n187), .Z(n267) );
  MUX2D0 U421 ( .I0(n141), .I1(n49), .S(n1101), .Z(n645) );
  HA1D0 U422 ( .A(n143), .B(n142), .CO(n137), .S(n144) );
  INVD0 U423 ( .I(n650), .ZN(n161) );
  MUX2D0 U424 ( .I0(n144), .I1(y_mantissa[15]), .S(n161), .Z(n265) );
  HA1D0 U425 ( .A(n146), .B(n145), .CO(n140), .S(n147) );
  MUX2D0 U426 ( .I0(n147), .I1(n48), .S(n1101), .Z(n264) );
  HA1D0 U427 ( .A(n110), .B(n148), .CO(n143), .S(n149) );
  MUX2D0 U428 ( .I0(n149), .I1(y_mantissa[14]), .S(n161), .Z(n262) );
  XOR2D0 U429 ( .A1(n151), .A2(n150), .Z(n152) );
  MUX2D0 U430 ( .I0(n152), .I1(n47), .S(n1101), .Z(n261) );
  XOR2D0 U431 ( .A1(n154), .A2(n153), .Z(n155) );
  MUX2D0 U432 ( .I0(n155), .I1(y_mantissa[13]), .S(n161), .Z(n372) );
  HA1D0 U433 ( .A(n157), .B(n156), .CO(n151), .S(n158) );
  INVD0 U434 ( .I(n981), .ZN(n194) );
  MUX2D0 U435 ( .I0(n158), .I1(n46), .S(n194), .Z(n371) );
  HA1D0 U436 ( .A(n160), .B(n159), .CO(n154), .S(n162) );
  MUX2D0 U437 ( .I0(n162), .I1(y_mantissa[12]), .S(n161), .Z(n259) );
  XOR2D0 U438 ( .A1(n164), .A2(n163), .Z(n165) );
  MUX2D0 U439 ( .I0(n165), .I1(n45), .S(n194), .Z(n258) );
  HA1D0 U440 ( .A(n114), .B(n166), .CO(n160), .S(n168) );
  MUX2D0 U441 ( .I0(n168), .I1(y_mantissa[11]), .S(n652), .Z(n369) );
  HA1D0 U442 ( .A(n170), .B(n169), .CO(n164), .S(n171) );
  MUX2D0 U443 ( .I0(n171), .I1(n44), .S(n194), .Z(n368) );
  XOR2D0 U444 ( .A1(n173), .A2(n172), .Z(n174) );
  MUX2D0 U445 ( .I0(n174), .I1(y_mantissa[10]), .S(n652), .Z(n256) );
  XOR2D0 U446 ( .A1(n176), .A2(n175), .Z(n177) );
  INVD0 U447 ( .I(n981), .ZN(n187) );
  MUX2D0 U448 ( .I0(n177), .I1(n43), .S(n187), .Z(n255) );
  HA1D0 U449 ( .A(n115), .B(n178), .CO(n173), .S(n179) );
  MUX2D0 U450 ( .I0(n179), .I1(y_mantissa[9]), .S(intadd_0_A_23_), .Z(n366) );
  HA1D0 U451 ( .A(n111), .B(n180), .CO(n176), .S(n181) );
  MUX2D0 U452 ( .I0(n181), .I1(n42), .S(n187), .Z(n365) );
  XOR2D0 U453 ( .A1(n183), .A2(n182), .Z(n184) );
  MUX2D0 U454 ( .I0(n184), .I1(y_mantissa[8]), .S(n652), .Z(n253) );
  XOR2D0 U455 ( .A1(n186), .A2(n185), .Z(n188) );
  MUX2D0 U456 ( .I0(n188), .I1(n41), .S(n187), .Z(n252) );
  HA1D0 U457 ( .A(n190), .B(n189), .CO(n183), .S(n191) );
  MUX2D0 U458 ( .I0(n191), .I1(y_mantissa[7]), .S(n286), .Z(n680) );
  HA1D0 U459 ( .A(n193), .B(n192), .CO(n186), .S(n195) );
  MUX2D0 U460 ( .I0(n195), .I1(n40), .S(n194), .Z(n679) );
  HA1D0 U461 ( .A(n116), .B(n196), .CO(n190), .S(n197) );
  MUX2D0 U462 ( .I0(y_mantissa[6]), .I1(n197), .S(n248), .Z(n296) );
  XOR2D0 U463 ( .A1(n199), .A2(n198), .Z(n200) );
  BUFFD1 U464 ( .I(n683), .Z(n760) );
  BUFFD1 U465 ( .I(n760), .Z(n227) );
  MUX2D0 U466 ( .I0(n39), .I1(n200), .S(n227), .Z(n295) );
  XOR2D0 U467 ( .A1(n202), .A2(n201), .Z(n204) );
  MUX2D0 U468 ( .I0(y_mantissa[5]), .I1(n204), .S(n203), .Z(n677) );
  HA1D0 U469 ( .A(n206), .B(n205), .CO(n199), .S(n207) );
  MUX2D0 U470 ( .I0(n38), .I1(n207), .S(n227), .Z(n676) );
  HA1D0 U471 ( .A(n209), .B(n208), .CO(n202), .S(n210) );
  BUFFD1 U472 ( .I(n248), .Z(n269) );
  MUX2D0 U473 ( .I0(y_mantissa[4]), .I1(n210), .S(n269), .Z(n299) );
  XOR2D0 U474 ( .A1(n212), .A2(n211), .Z(n213) );
  BUFFD1 U475 ( .I(n760), .Z(n277) );
  MUX2D0 U476 ( .I0(n37), .I1(n213), .S(n277), .Z(n298) );
  MUX2D0 U477 ( .I0(n36), .I1(n219), .S(n277), .Z(n673) );
  HA1D0 U478 ( .A(n221), .B(n220), .CO(n218), .S(n222) );
  MUX2D0 U479 ( .I0(x_mantissa[2]), .I1(n222), .S(n277), .Z(n671) );
  MUX2D0 U480 ( .I0(y_mantissa[2]), .I1(n225), .S(n269), .Z(n670) );
  HA1D0 U481 ( .A(n112), .B(n226), .CO(n234), .S(n135) );
  MUX2D0 U482 ( .I0(n228), .I1(x_mantissa[18]), .S(n273), .Z(n357) );
  HA1D0 U483 ( .A(n113), .B(n229), .CO(n237), .S(n129) );
  MUX2D0 U484 ( .I0(n230), .I1(y_mantissa[18]), .S(n239), .Z(n356) );
  INVD0 U485 ( .I(n356), .ZN(n231) );
  HA1D0 U486 ( .A(n234), .B(n233), .CO(n244), .S(n228) );
  MUX2D0 U487 ( .I0(n235), .I1(x_mantissa[19]), .S(n273), .Z(n361) );
  MUX2D0 U488 ( .I0(n240), .I1(y_mantissa[19]), .S(n239), .Z(n360) );
  NR2XD0 U489 ( .A1(n361), .A2(n360), .ZN(n242) );
  HA1D0 U490 ( .A(n244), .B(n243), .CO(n271), .S(n235) );
  MUX2D0 U491 ( .I0(n245), .I1(x_mantissa[20]), .S(n273), .Z(n292) );
  HA1D0 U492 ( .A(n247), .B(n246), .CO(n281), .S(n240) );
  INVD0 U493 ( .I(n248), .ZN(n286) );
  MUX2D0 U494 ( .I0(n249), .I1(y_mantissa[20]), .S(n286), .Z(n293) );
  FA1D1 U495 ( .A(n262), .B(n261), .CI(n260), .CO(n263), .S(z1_c1[12]) );
  FA1D1 U496 ( .A(n265), .B(n264), .CI(n263), .CO(n644), .S(z1_c1[13]) );
  XNR2D0 U497 ( .A1(n167), .A2(n653), .ZN(n274) );
  MUX2D0 U498 ( .I0(n274), .I1(n248), .S(n273), .Z(n669) );
  XNR2D1 U499 ( .A1(n758), .A2(intadd_0_A_23_), .ZN(n980) );
  HA1D0 U500 ( .A(n276), .B(n275), .CO(n653), .S(n278) );
  INVD0 U501 ( .I(n277), .ZN(n1095) );
  HA1D0 U502 ( .A(n281), .B(n280), .CO(n285), .S(n249) );
  MUX2D0 U503 ( .I0(n283), .I1(n279), .S(n286), .Z(n657) );
  MUX2D0 U504 ( .I0(n287), .I1(y_mantissa[21]), .S(n286), .Z(n643) );
  INVD0 U505 ( .I(n292), .ZN(n290) );
  INVD0 U506 ( .I(n293), .ZN(n289) );
  FA1D0 U507 ( .A(n299), .B(n298), .CI(n297), .CO(n675), .S(z1_c1[2]) );
  INVD0 U508 ( .I(z1_s3[4]), .ZN(n308) );
  INVD0 U509 ( .I(x_s3[0]), .ZN(n300) );
  INVD1 U510 ( .I(x_s3[1]), .ZN(n321) );
  NR2XD0 U511 ( .A1(n316), .A2(x_s3[2]), .ZN(n329) );
  NR3D2 U512 ( .A1(n313), .A2(n28), .A3(x_s3[4]), .ZN(n348) );
  XOR2D0 U513 ( .A1(n348), .A2(x_s3[6]), .Z(n301) );
  CKBD1 U514 ( .I(n373), .Z(n423) );
  MUX2ND0 U515 ( .I0(n301), .I1(n346), .S(n376), .ZN(n307) );
  INVD0 U516 ( .I(z1_s3[3]), .ZN(n310) );
  NR2XD0 U517 ( .A1(n313), .A2(n103), .ZN(n302) );
  INVD0 U518 ( .I(x_s3[5]), .ZN(n303) );
  INVD0 U519 ( .I(n373), .ZN(n3940) );
  MUX2ND0 U520 ( .I0(n304), .I1(n303), .S(n3940), .ZN(n309) );
  NR2XD0 U521 ( .A1(n341), .A2(n340), .ZN(n992) );
  INVD0 U522 ( .I(z1_s3[5]), .ZN(n351) );
  CKND2D0 U523 ( .A1(n348), .A2(n346), .ZN(n305) );
  INVD1 U524 ( .I(x_s3[7]), .ZN(n347) );
  XOR2D0 U525 ( .A1(n305), .A2(n347), .Z(n306) );
  MUX2ND0 U526 ( .I0(n306), .I1(n347), .S(n3940), .ZN(n350) );
  NR2XD0 U527 ( .A1(n343), .A2(n342), .ZN(n994) );
  NR2D0 U528 ( .A1(n992), .A2(n994), .ZN(n345) );
  FA1D1 U529 ( .A(z1_s3[4]), .B(n310), .CI(n309), .CO(n340), .S(n339) );
  INVD0 U530 ( .I(z1_s3[2]), .ZN(n312) );
  INVD0 U531 ( .I(epsilon1_s3[1]), .ZN(n328) );
  INVD0 U532 ( .I(z1_s3[1]), .ZN(n320) );
  INVD0 U533 ( .I(z1_s3[0]), .ZN(n319) );
  NR2XD0 U534 ( .A1(n339), .A2(n338), .ZN(n985) );
  FA1D0 U535 ( .A(z1_s3[3]), .B(n312), .CI(n311), .CO(n338), .S(n336) );
  XNR2D0 U536 ( .A1(n313), .A2(n103), .ZN(n315) );
  INVD0 U537 ( .I(x_s3[4]), .ZN(n314) );
  INVD0 U538 ( .I(n373), .ZN(n330) );
  MUX2ND0 U539 ( .I0(n315), .I1(n314), .S(n330), .ZN(n335) );
  XNR2D0 U540 ( .A1(n100), .A2(n316), .ZN(n318) );
  INVD0 U541 ( .I(x_s3[2]), .ZN(n317) );
  MUX2ND0 U542 ( .I0(n318), .I1(n317), .S(n330), .ZN(n325) );
  FA1D0 U543 ( .A(epsilon1_s3[1]), .B(n320), .CI(n319), .CO(n327), .S(n324) );
  XNR2D0 U544 ( .A1(x_s3[0]), .A2(x_s3[1]), .ZN(n322) );
  MUX2ND0 U545 ( .I0(n322), .I1(n321), .S(n330), .ZN(n960) );
  INVD0 U546 ( .I(n960), .ZN(n323) );
  NR2D0 U547 ( .A1(z1_s3[0]), .A2(epsilon1_s3[0]), .ZN(n956) );
  CKND2D0 U548 ( .A1(z1_s3[0]), .A2(epsilon1_s3[0]), .ZN(n957) );
  OAI21D0 U549 ( .A1(n323), .A2(n956), .B(n957), .ZN(n928) );
  CKND2D0 U550 ( .A1(n325), .A2(n324), .ZN(n927) );
  INVD0 U551 ( .I(n927), .ZN(n326) );
  AOI21D0 U552 ( .A1(n117), .A2(n928), .B(n326), .ZN(n826) );
  FA1D0 U553 ( .A(z1_s3[2]), .B(n328), .CI(n327), .CO(n311), .S(n334) );
  XOR2D0 U554 ( .A1(x_s3[3]), .A2(n329), .Z(n332) );
  MUX2ND0 U555 ( .I0(n332), .I1(n331), .S(n330), .ZN(n333) );
  NR2D0 U556 ( .A1(n334), .A2(n333), .ZN(n823) );
  CKND2D0 U557 ( .A1(n334), .A2(n333), .ZN(n824) );
  OAI21D0 U558 ( .A1(n826), .A2(n823), .B(n824), .ZN(n763) );
  CKND2D0 U559 ( .A1(n336), .A2(n335), .ZN(n762) );
  INVD0 U560 ( .I(n762), .ZN(n337) );
  AOI21D1 U561 ( .A1(n121), .A2(n763), .B(n337), .ZN(n988) );
  CKND2D1 U562 ( .A1(n339), .A2(n338), .ZN(n986) );
  OAI21D1 U563 ( .A1(n985), .A2(n988), .B(n986), .ZN(n508) );
  CKND2D1 U564 ( .A1(n341), .A2(n340), .ZN(n991) );
  CKND2D1 U565 ( .A1(n343), .A2(n342), .ZN(n995) );
  AOI21D1 U566 ( .A1(n345), .A2(n508), .B(n344), .ZN(n4050) );
  INVD1 U567 ( .I(n4050), .ZN(n1002) );
  INVD0 U568 ( .I(z1_s3[6]), .ZN(n3980) );
  INVD0 U569 ( .I(x_s3[8]), .ZN(n377) );
  XOR2D0 U570 ( .A1(n4060), .A2(n377), .Z(n349) );
  CKND2D0 U571 ( .A1(n118), .A2(n3990), .ZN(n354) );
  XNR2D0 U572 ( .A1(n1002), .A2(n354), .ZN(n355) );
  BUFFD1 U573 ( .I(n1017), .Z(n1010) );
  INVD0 U574 ( .I(n1010), .ZN(n1018) );
  INVD0 U575 ( .I(z1_s3[25]), .ZN(n1091) );
  INVD0 U576 ( .I(z1_s3[24]), .ZN(n506) );
  INVD0 U577 ( .I(z1_s3[23]), .ZN(n375) );
  INVD0 U578 ( .I(z1_s3[22]), .ZN(n374) );
  FA1D0 U579 ( .A(n376), .B(n375), .CI(n374), .CO(n1087), .S(n1084) );
  INVD0 U580 ( .I(z1_s3[21]), .ZN(n379) );
  INVD0 U581 ( .I(x_s3[9]), .ZN(n3950) );
  CKND2D0 U582 ( .A1(n3950), .A2(n377), .ZN(n4070) );
  NR2D0 U583 ( .A1(x_s3[13]), .A2(x_s3[12]), .ZN(n452) );
  CKND2D1 U584 ( .A1(n453), .A2(n452), .ZN(n457) );
  NR3D2 U585 ( .A1(n457), .A2(x_s3[15]), .A3(x_s3[14]), .ZN(n446) );
  INVD0 U586 ( .I(x_s3[17]), .ZN(n444) );
  INVD0 U587 ( .I(x_s3[16]), .ZN(n447) );
  ND3D1 U588 ( .A1(n446), .A2(n444), .A3(n447), .ZN(n487) );
  NR3D0 U589 ( .A1(n487), .A2(n32), .A3(x_s3[18]), .ZN(n3880) );
  INVD0 U590 ( .I(x_s3[20]), .ZN(n3890) );
  NR2XD0 U591 ( .A1(n383), .A2(x_s3[21]), .ZN(n380) );
  INVD0 U592 ( .I(x_s3[22]), .ZN(n381) );
  AO21D0 U593 ( .A1(n380), .A2(n381), .B(n1100), .Z(n378) );
  FA1D0 U594 ( .A(z1_s3[22]), .B(n379), .CI(n378), .CO(n1083), .S(n1078) );
  INVD0 U595 ( .I(z1_s3[20]), .ZN(n3870) );
  MUX2ND0 U596 ( .I0(n382), .I1(n381), .S(n1100), .ZN(n3860) );
  INVD0 U597 ( .I(z1_s3[19]), .ZN(n3920) );
  XNR2D0 U598 ( .A1(n383), .A2(n96), .ZN(n3850) );
  INVD0 U599 ( .I(x_s3[21]), .ZN(n384) );
  MUX2ND0 U600 ( .I0(n3850), .I1(n384), .S(n489), .ZN(n3910) );
  INVD0 U601 ( .I(z1_s3[18]), .ZN(n498) );
  MUX2ND0 U602 ( .I0(n3900), .I1(n3890), .S(n1100), .ZN(n497) );
  INVD0 U603 ( .I(z1_s3[7]), .ZN(n4100) );
  NR2XD0 U604 ( .A1(n4060), .A2(x_s3[8]), .ZN(n3930) );
  XOR2D0 U605 ( .A1(n3930), .A2(x_s3[9]), .Z(n3960) );
  CKND2D0 U606 ( .A1(n124), .A2(n118), .ZN(n4040) );
  CKND2D1 U607 ( .A1(n4010), .A2(n4000), .ZN(n1003) );
  AOI21D1 U608 ( .A1(n124), .A2(n1001), .B(n4020), .ZN(n4030) );
  INVD0 U609 ( .I(z1_s3[8]), .ZN(n417) );
  NR2XD0 U610 ( .A1(n4070), .A2(n4060), .ZN(n4120) );
  XOR2D0 U611 ( .A1(n4120), .A2(x_s3[10]), .Z(n4080) );
  INVD0 U612 ( .I(x_s3[10]), .ZN(n4110) );
  MUX2ND0 U613 ( .I0(n4080), .I1(n4110), .S(n376), .ZN(n416) );
  NR2XD0 U614 ( .A1(n429), .A2(n428), .ZN(n1013) );
  INVD0 U615 ( .I(z1_s3[9]), .ZN(n420) );
  CKND2D1 U616 ( .A1(n4120), .A2(n4110), .ZN(n4130) );
  XNR2D0 U617 ( .A1(n4130), .A2(x_s3[11]), .ZN(n415) );
  INVD0 U618 ( .I(x_s3[11]), .ZN(n414) );
  MUX2ND0 U619 ( .I0(n415), .I1(n414), .S(n376), .ZN(n419) );
  CKND2D1 U620 ( .A1(n1008), .A2(n120), .ZN(n1024) );
  INVD0 U621 ( .I(z1_s3[10]), .ZN(n427) );
  INVD0 U622 ( .I(x_s3[12]), .ZN(n421) );
  MUX2ND0 U623 ( .I0(n418), .I1(n421), .S(y_index_s3_3_), .ZN(n426) );
  INVD0 U624 ( .I(z1_s3[11]), .ZN(n462) );
  CKND2D1 U625 ( .A1(n453), .A2(n421), .ZN(n422) );
  XNR2D0 U626 ( .A1(n422), .A2(x_s3[13]), .ZN(n425) );
  INVD0 U627 ( .I(x_s3[13]), .ZN(n424) );
  INVD0 U628 ( .I(n423), .ZN(n458) );
  MUX2ND0 U629 ( .I0(n425), .I1(n424), .S(n458), .ZN(n461) );
  CKND2D1 U630 ( .A1(n122), .A2(n123), .ZN(n440) );
  NR2XD0 U631 ( .A1(n1024), .A2(n440), .ZN(n442) );
  CKND2D1 U632 ( .A1(n429), .A2(n428), .ZN(n1012) );
  INVD0 U633 ( .I(n1012), .ZN(n433) );
  CKND2D1 U634 ( .A1(n431), .A2(n430), .ZN(n1014) );
  AOI21D1 U635 ( .A1(n120), .A2(n433), .B(n432), .ZN(n1026) );
  CKND2D1 U636 ( .A1(n437), .A2(n436), .ZN(n1032) );
  AOI21D1 U637 ( .A1(n123), .A2(n1027), .B(n438), .ZN(n439) );
  AOI21D1 U638 ( .A1(n1007), .A2(n442), .B(n441), .ZN(n776) );
  INVD1 U639 ( .I(n776), .ZN(n1044) );
  INVD0 U640 ( .I(z1_s3[15]), .ZN(n484) );
  XOR2D0 U641 ( .A1(n443), .A2(n444), .Z(n445) );
  MUX2ND0 U642 ( .I0(n445), .I1(n444), .S(n489), .ZN(n483) );
  INVD0 U643 ( .I(z1_s3[14]), .ZN(n451) );
  XOR2D0 U644 ( .A1(n446), .A2(x_s3[16]), .Z(n448) );
  NR2XD0 U645 ( .A1(n474), .A2(n473), .ZN(n449) );
  INVD1 U646 ( .I(n449), .ZN(n772) );
  INVD0 U647 ( .I(z1_s3[13]), .ZN(n464) );
  INVD0 U648 ( .I(x_s3[14]), .ZN(n459) );
  ND3D1 U649 ( .A1(n453), .A2(n452), .A3(n459), .ZN(n454) );
  XNR2D0 U650 ( .A1(n454), .A2(x_s3[15]), .ZN(n456) );
  INVD0 U651 ( .I(x_s3[15]), .ZN(n455) );
  MUX2ND0 U652 ( .I0(n456), .I1(n455), .S(n458), .ZN(n463) );
  NR2XD0 U653 ( .A1(n472), .A2(n471), .ZN(n767) );
  INVD1 U654 ( .I(n767), .ZN(n1046) );
  AN2D1 U655 ( .A1(n772), .A2(n1046), .Z(n478) );
  INVD0 U656 ( .I(z1_s3[12]), .ZN(n466) );
  XNR2D0 U657 ( .A1(n457), .A2(x_s3[14]), .ZN(n460) );
  MUX2ND0 U658 ( .I0(n460), .I1(n459), .S(n458), .ZN(n465) );
  NR2XD0 U659 ( .A1(n468), .A2(n467), .ZN(n1036) );
  NR2XD0 U660 ( .A1(n470), .A2(n469), .ZN(n777) );
  NR2XD0 U661 ( .A1(n1036), .A2(n777), .ZN(n1043) );
  CKAN2D0 U662 ( .A1(n478), .A2(n1043), .Z(n480) );
  OAI21D1 U663 ( .A1(n777), .A2(n1037), .B(n778), .ZN(n1042) );
  INVD0 U664 ( .I(n1045), .ZN(n476) );
  ND2D1 U665 ( .A1(n474), .A2(n473), .ZN(n771) );
  AOI21D1 U666 ( .A1(n1044), .A2(n480), .B(n479), .ZN(n1055) );
  INVD0 U667 ( .I(z1_s3[16]), .ZN(n493) );
  XNR2D0 U668 ( .A1(n487), .A2(x_s3[18]), .ZN(n482) );
  MUX2ND0 U669 ( .I0(n482), .I1(n481), .S(n489), .ZN(n492) );
  NR2XD0 U670 ( .A1(n486), .A2(n485), .ZN(n1051) );
  OAI21D1 U671 ( .A1(n1055), .A2(n1051), .B(n1052), .ZN(n1059) );
  INVD0 U672 ( .I(z1_s3[17]), .ZN(n500) );
  NR2XD0 U673 ( .A1(n487), .A2(x_s3[18]), .ZN(n488) );
  INVD0 U674 ( .I(x_s3[19]), .ZN(n490) );
  MUX2ND0 U675 ( .I0(n491), .I1(n490), .S(n489), .ZN(n499) );
  AOI21D2 U676 ( .A1(n1059), .A2(n119), .B(n496), .ZN(n1064) );
  INVD1 U677 ( .I(n503), .ZN(n504) );
  INVD0 U678 ( .I(n805), .ZN(n1092) );
  MUX2D0 U679 ( .I0(z1_s3[25]), .I1(n507), .S(n1092), .Z(plane1[25]) );
  INVD0 U680 ( .I(n999), .ZN(n1099) );
  INVD0 U681 ( .I(n508), .ZN(n993) );
  INVD0 U682 ( .I(n992), .ZN(n509) );
  CKND2D0 U683 ( .A1(n509), .A2(n991), .ZN(n510) );
  XOR2D0 U684 ( .A1(n993), .A2(n510), .Z(n511) );
  AO22D1 U685 ( .A1(n511), .A2(n1099), .B1(z1_s3[5]), .B2(n999), .Z(plane1[5])
         );
  NR2XD0 U686 ( .A1(sum2[24]), .A2(carry2[24]), .ZN(n545) );
  NR2XD0 U687 ( .A1(n540), .A2(n545), .ZN(n523) );
  NR2XD0 U688 ( .A1(sum2[21]), .A2(carry2[21]), .ZN(n568) );
  NR2D0 U689 ( .A1(sum2[16]), .A2(carry2[16]), .ZN(n590) );
  NR2D0 U690 ( .A1(sum2[14]), .A2(carry2[14]), .ZN(n599) );
  NR2XD0 U691 ( .A1(sum2[12]), .A2(carry2[12]), .ZN(n608) );
  OR2D1 U692 ( .A1(sum2[11]), .A2(carry2[11]), .Z(n614) );
  NR2XD0 U693 ( .A1(sum2[10]), .A2(carry2[10]), .ZN(n617) );
  OR2D1 U694 ( .A1(sum2[9]), .A2(carry2[9]), .Z(n623) );
  NR2XD0 U695 ( .A1(sum2[8]), .A2(carry2[8]), .ZN(n555) );
  OR2D0 U696 ( .A1(sum2[7]), .A2(carry2[7]), .Z(n627) );
  NR2XD0 U697 ( .A1(sum2[6]), .A2(carry2[6]), .ZN(n630) );
  OR2D1 U698 ( .A1(sum2[5]), .A2(carry2[5]), .Z(n636) );
  NR2XD0 U699 ( .A1(sum2[4]), .A2(carry2[4]), .ZN(n560) );
  CKND2D0 U700 ( .A1(sum2[3]), .A2(carry2[3]), .ZN(n639) );
  CKND2D1 U701 ( .A1(sum2[4]), .A2(carry2[4]), .ZN(n561) );
  OAI21D1 U702 ( .A1(n560), .A2(n639), .B(n561), .ZN(n637) );
  ND2D1 U703 ( .A1(sum2[5]), .A2(carry2[5]), .ZN(n635) );
  INVD0 U704 ( .I(n635), .ZN(n512) );
  AOI21D1 U705 ( .A1(n636), .A2(n637), .B(n512), .ZN(n633) );
  CKND2D1 U706 ( .A1(sum2[6]), .A2(carry2[6]), .ZN(n631) );
  OAI21D1 U707 ( .A1(n630), .A2(n633), .B(n631), .ZN(n628) );
  INVD0 U708 ( .I(n626), .ZN(n513) );
  AOI21D1 U709 ( .A1(n627), .A2(n628), .B(n513), .ZN(n558) );
  OAI21D1 U710 ( .A1(n555), .A2(n558), .B(n556), .ZN(n624) );
  CKND2D1 U711 ( .A1(sum2[9]), .A2(carry2[9]), .ZN(n622) );
  INVD1 U712 ( .I(n622), .ZN(n514) );
  AOI21D1 U713 ( .A1(n623), .A2(n624), .B(n514), .ZN(n620) );
  CKND2D1 U714 ( .A1(sum2[10]), .A2(carry2[10]), .ZN(n618) );
  CKND2D1 U715 ( .A1(sum2[11]), .A2(carry2[11]), .ZN(n613) );
  AOI21D2 U716 ( .A1(n614), .A2(n615), .B(n515), .ZN(n611) );
  OAI21D1 U717 ( .A1(n608), .A2(n611), .B(n609), .ZN(n606) );
  AOI21D1 U718 ( .A1(n605), .A2(n606), .B(n516), .ZN(n602) );
  CKND2D0 U719 ( .A1(sum2[14]), .A2(carry2[14]), .ZN(n600) );
  OAI21D1 U720 ( .A1(n599), .A2(n602), .B(n600), .ZN(n597) );
  NR2XD0 U721 ( .A1(sum2[18]), .A2(carry2[18]), .ZN(n581) );
  OAI21D1 U722 ( .A1(n568), .A2(n571), .B(n569), .ZN(n566) );
  NR2XD0 U723 ( .A1(sum2[23]), .A2(carry2[23]), .ZN(n550) );
  CKND2D1 U724 ( .A1(sum2[23]), .A2(carry2[23]), .ZN(n551) );
  OAI21D1 U725 ( .A1(n554), .A2(n550), .B(n551), .ZN(n539) );
  CKND2D1 U726 ( .A1(sum2[24]), .A2(carry2[24]), .ZN(n546) );
  CKND2D1 U727 ( .A1(sum2[25]), .A2(carry2[25]), .ZN(n541) );
  OAI21D1 U728 ( .A1(n540), .A2(n546), .B(n541), .ZN(n522) );
  AOI21D2 U729 ( .A1(n523), .A2(n539), .B(n522), .ZN(n538) );
  NR2XD0 U730 ( .A1(sum2[27]), .A2(carry2[27]), .ZN(n529) );
  NR2XD0 U731 ( .A1(sum2[26]), .A2(carry2[26]), .ZN(n534) );
  NR2XD0 U732 ( .A1(n529), .A2(n534), .ZN(n524) );
  INVD1 U733 ( .I(n524), .ZN(n525) );
  CKND2D1 U734 ( .A1(sum2[26]), .A2(carry2[26]), .ZN(n535) );
  CKND2D1 U735 ( .A1(sum2[27]), .A2(carry2[27]), .ZN(n530) );
  OAI21D1 U736 ( .A1(n538), .A2(n525), .B(n125), .ZN(n528) );
  OAI21D1 U737 ( .A1(n538), .A2(n534), .B(n535), .ZN(n533) );
  INVD1 U738 ( .I(n534), .ZN(n536) );
  CKND2D1 U739 ( .A1(n536), .A2(n535), .ZN(n537) );
  XOR2D0 U740 ( .A1(n538), .A2(n537), .Z(shared_comb[26]) );
  INVD1 U741 ( .I(n539), .ZN(n548) );
  OAI21D1 U742 ( .A1(n545), .A2(n548), .B(n546), .ZN(n544) );
  XOR2D0 U743 ( .A1(n549), .A2(n548), .Z(shared_comb[24]) );
  INVD0 U744 ( .I(n550), .ZN(n552) );
  CKND2D0 U745 ( .A1(n552), .A2(n551), .ZN(n553) );
  INVD0 U746 ( .I(n555), .ZN(n557) );
  CKND2D0 U747 ( .A1(n557), .A2(n556), .ZN(n559) );
  INVD0 U748 ( .I(n560), .ZN(n562) );
  CKND2D0 U749 ( .A1(n562), .A2(n561), .ZN(n563) );
  XOR2D0 U750 ( .A1(n563), .A2(n639), .Z(shared_comb[4]) );
  XNR2D1 U751 ( .A1(n567), .A2(n566), .ZN(shared_comb[22]) );
  INVD0 U752 ( .I(n568), .ZN(n570) );
  CKND2D0 U753 ( .A1(n570), .A2(n569), .ZN(n572) );
  CKND2D0 U754 ( .A1(n574), .A2(n573), .ZN(n576) );
  CKND2D0 U755 ( .A1(n578), .A2(n577), .ZN(n580) );
  INVD0 U756 ( .I(n581), .ZN(n583) );
  CKND2D0 U757 ( .A1(n583), .A2(n582), .ZN(n585) );
  CKND2D0 U758 ( .A1(n587), .A2(n586), .ZN(n589) );
  INVD0 U759 ( .I(n590), .ZN(n592) );
  CKND2D0 U760 ( .A1(n592), .A2(n591), .ZN(n594) );
  CKND2D0 U761 ( .A1(n596), .A2(n595), .ZN(n598) );
  INVD0 U762 ( .I(n599), .ZN(n601) );
  CKND2D0 U763 ( .A1(n601), .A2(n600), .ZN(n603) );
  CKND2D0 U764 ( .A1(n605), .A2(n604), .ZN(n607) );
  INVD0 U765 ( .I(n608), .ZN(n610) );
  CKND2D0 U766 ( .A1(n610), .A2(n609), .ZN(n612) );
  CKND2D0 U767 ( .A1(n614), .A2(n613), .ZN(n616) );
  INVD0 U768 ( .I(n617), .ZN(n619) );
  CKND2D0 U769 ( .A1(n619), .A2(n618), .ZN(n621) );
  CKND2D0 U770 ( .A1(n623), .A2(n622), .ZN(n625) );
  CKND2D0 U771 ( .A1(n627), .A2(n626), .ZN(n629) );
  XNR2D0 U772 ( .A1(n629), .A2(n628), .ZN(shared_comb[7]) );
  INVD0 U773 ( .I(n630), .ZN(n632) );
  CKND2D0 U774 ( .A1(n632), .A2(n631), .ZN(n634) );
  XOR2D0 U775 ( .A1(n634), .A2(n633), .Z(shared_comb[6]) );
  CKND2D0 U776 ( .A1(n636), .A2(n635), .ZN(n638) );
  XNR2D0 U777 ( .A1(n638), .A2(n637), .ZN(shared_comb[5]) );
  OR2D0 U778 ( .A1(sum2[3]), .A2(carry2[3]), .Z(n640) );
  CKAN2D0 U779 ( .A1(n640), .A2(n639), .Z(shared_comb[3]) );
  FA1D1 U780 ( .A(n643), .B(n642), .CI(n641), .CO(n667), .S(z1_c1[19]) );
  FA1D1 U781 ( .A(n646), .B(n645), .CI(n644), .CO(n266), .S(z1_c1[14]) );
  OR2D0 U782 ( .A1(n647), .A2(n279), .Z(n648) );
  INVD0 U783 ( .I(n648), .ZN(n651) );
  CKND2D0 U784 ( .A1(n279), .A2(x_mantissa[22]), .ZN(n649) );
  IOA21D1 U785 ( .A1(n651), .A2(n650), .B(n649), .ZN(n665) );
  IND2D1 U786 ( .A1(n653), .B1(n652), .ZN(n654) );
  CKND2D0 U787 ( .A1(n650), .A2(n758), .ZN(n655) );
  IOA21D1 U788 ( .A1(n656), .A2(n227), .B(n655), .ZN(n666) );
  INVD0 U789 ( .I(n666), .ZN(n659) );
  CKMUX2D1 U790 ( .I0(DP_OP_56J1_125_979_n4), .I1(DP_OP_56J1_125_979_n3), .S(
        DP_OP_56J1_125_979_n7), .Z(n661) );
  FA1D0 U791 ( .A(n663), .B(n662), .CI(n661), .CO(n664), .S(z1_c1[25]) );
  FA1D2 U792 ( .A(n669), .B(n668), .CI(n667), .CO(DP_OP_56J1_125_979_n12), .S(
        z1_c1[20]) );
  HA1D0 U793 ( .A(n671), .B(n670), .CO(n672), .S(z1_c1[0]) );
  FA1D0 U794 ( .A(n674), .B(n673), .CI(n672), .CO(n297), .S(z1_c1[1]) );
  FA1D0 U795 ( .A(n677), .B(n676), .CI(n675), .CO(n294), .S(z1_c1[3]) );
  FA1D0 U796 ( .A(n680), .B(n679), .CI(n678), .CO(n251), .S(z1_c1[5]) );
  INVD0 U797 ( .I(n683), .ZN(n1101) );
  HA1D0 U798 ( .A(n682), .B(n681), .CO(n221), .S(n684) );
  CKND2D0 U799 ( .A1(n684), .A2(n683), .ZN(n685) );
  IOA21D0 U800 ( .A1(n1095), .A2(n55), .B(n685), .ZN(n686) );
  INVD0 U801 ( .I(n686), .ZN(n979) );
  NR2D0 U802 ( .A1(n54), .A2(n34), .ZN(n687) );
  INVD0 U803 ( .I(n687), .ZN(n978) );
  CKND2D0 U804 ( .A1(n979), .A2(n687), .ZN(n9) );
  INVD0 U805 ( .I(zm0_s3[23]), .ZN(n688) );
  OR2D0 U806 ( .A1(n688), .A2(x_s3[22]), .Z(n801) );
  INVD0 U807 ( .I(zm0_s3[22]), .ZN(n689) );
  INVD0 U808 ( .I(zm0_s3[21]), .ZN(n690) );
  FA1D0 U809 ( .A(x_s3[21]), .B(x_s3[22]), .CI(n689), .CO(n843), .S(n847) );
  INVD0 U810 ( .I(zm0_s3[20]), .ZN(n691) );
  FA1D0 U811 ( .A(x_s3[20]), .B(x_s3[21]), .CI(n690), .CO(n848), .S(n839) );
  INVD0 U812 ( .I(zm0_s3[19]), .ZN(n692) );
  FA1D0 U813 ( .A(x_s3[19]), .B(x_s3[20]), .CI(n691), .CO(n840), .S(n916) );
  INVD0 U814 ( .I(zm0_s3[18]), .ZN(n693) );
  FA1D0 U815 ( .A(n102), .B(x_s3[19]), .CI(n692), .CO(n917), .S(n912) );
  INVD0 U816 ( .I(zm0_s3[17]), .ZN(n694) );
  FA1D0 U817 ( .A(x_s3[17]), .B(n102), .CI(n693), .CO(n913), .S(n908) );
  INVD0 U818 ( .I(zm0_s3[16]), .ZN(n695) );
  FA1D0 U819 ( .A(x_s3[16]), .B(x_s3[17]), .CI(n694), .CO(n909), .S(n903) );
  INVD0 U820 ( .I(zm0_s3[15]), .ZN(n728) );
  FA1D0 U821 ( .A(x_s3[15]), .B(x_s3[16]), .CI(n695), .CO(n904), .S(n938) );
  INVD0 U822 ( .I(zm0_s3[3]), .ZN(n705) );
  INVD0 U823 ( .I(zm0_s3[2]), .ZN(n696) );
  NR2D0 U824 ( .A1(n702), .A2(n701), .ZN(n831) );
  FA1D0 U825 ( .A(x_s3[1]), .B(x_s3[2]), .CI(n696), .CO(n701), .S(n700) );
  NR2D0 U826 ( .A1(n700), .A2(n699), .ZN(n931) );
  NR2D0 U827 ( .A1(n831), .A2(n931), .ZN(n704) );
  HA1D0 U828 ( .A(x_s3[1]), .B(x_s3[0]), .CO(n699), .S(n698) );
  INVD0 U829 ( .I(zm0_s3[1]), .ZN(n697) );
  NR2D0 U830 ( .A1(n698), .A2(n697), .ZN(n963) );
  CKND2D0 U831 ( .A1(n698), .A2(n697), .ZN(n964) );
  OAI21D0 U832 ( .A1(n963), .A2(zm0_s3[0]), .B(n964), .ZN(n830) );
  CKND2D0 U833 ( .A1(n700), .A2(n699), .ZN(n932) );
  CKND2D0 U834 ( .A1(n702), .A2(n701), .ZN(n832) );
  OAI21D0 U835 ( .A1(n831), .A2(n932), .B(n832), .ZN(n703) );
  AOI21D1 U836 ( .A1(n704), .A2(n830), .B(n703), .ZN(n783) );
  INVD0 U837 ( .I(zm0_s3[4]), .ZN(n706) );
  FA1D0 U838 ( .A(x_s3[2]), .B(x_s3[3]), .CI(n705), .CO(n709), .S(n702) );
  NR2D0 U839 ( .A1(n710), .A2(n709), .ZN(n784) );
  INVD0 U840 ( .I(zm0_s3[5]), .ZN(n707) );
  FA1D0 U841 ( .A(x_s3[3]), .B(x_s3[4]), .CI(n706), .CO(n711), .S(n710) );
  NR2D0 U842 ( .A1(n712), .A2(n711), .ZN(n786) );
  NR2D0 U843 ( .A1(n784), .A2(n786), .ZN(n807) );
  INVD0 U844 ( .I(zm0_s3[6]), .ZN(n708) );
  FA1D0 U845 ( .A(x_s3[4]), .B(x_s3[5]), .CI(n707), .CO(n713), .S(n712) );
  NR2D0 U846 ( .A1(n714), .A2(n713), .ZN(n811) );
  INVD0 U847 ( .I(zm0_s3[7]), .ZN(n721) );
  FA1D0 U848 ( .A(x_s3[5]), .B(x_s3[6]), .CI(n708), .CO(n715), .S(n714) );
  NR2D0 U849 ( .A1(n716), .A2(n715), .ZN(n816) );
  NR2D0 U850 ( .A1(n811), .A2(n816), .ZN(n718) );
  CKND2D0 U851 ( .A1(n807), .A2(n718), .ZN(n720) );
  CKND2D0 U852 ( .A1(n710), .A2(n709), .ZN(n796) );
  CKND2D0 U853 ( .A1(n712), .A2(n711), .ZN(n787) );
  OAI21D0 U854 ( .A1(n786), .A2(n796), .B(n787), .ZN(n809) );
  CKND2D0 U855 ( .A1(n714), .A2(n713), .ZN(n810) );
  CKND2D0 U856 ( .A1(n716), .A2(n715), .ZN(n817) );
  OAI21D0 U857 ( .A1(n816), .A2(n810), .B(n817), .ZN(n717) );
  OAI21D0 U858 ( .A1(n783), .A2(n720), .B(n719), .ZN(n872) );
  INVD0 U859 ( .I(n872), .ZN(n948) );
  INVD0 U860 ( .I(zm0_s3[8]), .ZN(n722) );
  FA1D0 U861 ( .A(x_s3[6]), .B(x_s3[7]), .CI(n721), .CO(n730), .S(n716) );
  NR2D0 U862 ( .A1(n731), .A2(n730), .ZN(n803) );
  INVD0 U863 ( .I(zm0_s3[9]), .ZN(n723) );
  FA1D0 U864 ( .A(x_s3[7]), .B(x_s3[8]), .CI(n722), .CO(n732), .S(n731) );
  NR2D0 U865 ( .A1(n733), .A2(n732), .ZN(n873) );
  NR2D0 U866 ( .A1(n803), .A2(n873), .ZN(n860) );
  INVD0 U867 ( .I(zm0_s3[10]), .ZN(n724) );
  FA1D0 U868 ( .A(x_s3[8]), .B(x_s3[9]), .CI(n723), .CO(n734), .S(n733) );
  NR2D0 U869 ( .A1(n735), .A2(n734), .ZN(n850) );
  INVD0 U870 ( .I(zm0_s3[11]), .ZN(n725) );
  FA1D0 U871 ( .A(x_s3[9]), .B(x_s3[10]), .CI(n724), .CO(n736), .S(n735) );
  NR2D0 U872 ( .A1(n737), .A2(n736), .ZN(n854) );
  NR2D0 U873 ( .A1(n850), .A2(n854), .ZN(n739) );
  CKND2D0 U874 ( .A1(n860), .A2(n739), .ZN(n921) );
  INVD0 U875 ( .I(zm0_s3[12]), .ZN(n726) );
  FA1D0 U876 ( .A(n99), .B(x_s3[11]), .CI(n725), .CO(n740), .S(n737) );
  NR2D0 U877 ( .A1(n741), .A2(n740), .ZN(n892) );
  INVD0 U878 ( .I(zm0_s3[13]), .ZN(n727) );
  FA1D0 U879 ( .A(n29), .B(x_s3[12]), .CI(n726), .CO(n742), .S(n741) );
  NR2D0 U880 ( .A1(n743), .A2(n742), .ZN(n896) );
  NR2D0 U881 ( .A1(n892), .A2(n896), .ZN(n944) );
  INVD0 U882 ( .I(zm0_s3[14]), .ZN(n729) );
  FA1D0 U883 ( .A(n98), .B(n30), .CI(n727), .CO(n744), .S(n743) );
  NR2D0 U884 ( .A1(n745), .A2(n744), .ZN(n949) );
  FA1D0 U885 ( .A(n97), .B(n31), .CI(n728), .CO(n939), .S(n747) );
  FA1D0 U886 ( .A(x_s3[13]), .B(x_s3[14]), .CI(n729), .CO(n746), .S(n745) );
  NR2D0 U887 ( .A1(n747), .A2(n746), .ZN(n886) );
  NR2D0 U888 ( .A1(n949), .A2(n886), .ZN(n749) );
  CKND2D0 U889 ( .A1(n944), .A2(n749), .ZN(n751) );
  OR2D0 U890 ( .A1(n921), .A2(n751), .Z(n753) );
  CKND2D0 U891 ( .A1(n731), .A2(n730), .ZN(n869) );
  CKND2D0 U892 ( .A1(n733), .A2(n732), .ZN(n874) );
  OAI21D0 U893 ( .A1(n873), .A2(n869), .B(n874), .ZN(n861) );
  CKND2D0 U894 ( .A1(n735), .A2(n734), .ZN(n864) );
  CKND2D0 U895 ( .A1(n737), .A2(n736), .ZN(n855) );
  OAI21D0 U896 ( .A1(n854), .A2(n864), .B(n855), .ZN(n738) );
  AOI21D1 U897 ( .A1(n739), .A2(n861), .B(n738), .ZN(n920) );
  CKND2D0 U898 ( .A1(n741), .A2(n740), .ZN(n922) );
  CKND2D0 U899 ( .A1(n743), .A2(n742), .ZN(n897) );
  OAI21D0 U900 ( .A1(n896), .A2(n922), .B(n897), .ZN(n943) );
  CKND2D0 U901 ( .A1(n745), .A2(n744), .ZN(n950) );
  CKND2D0 U902 ( .A1(n747), .A2(n746), .ZN(n887) );
  OAI21D0 U903 ( .A1(n886), .A2(n950), .B(n887), .ZN(n748) );
  AOI21D1 U904 ( .A1(n749), .A2(n943), .B(n748), .ZN(n750) );
  OA21D0 U905 ( .A1(n920), .A2(n751), .B(n750), .Z(n752) );
  OAI21D0 U906 ( .A1(n948), .A2(n753), .B(n752), .ZN(n937) );
  INVD0 U907 ( .I(zm0_s3[24]), .ZN(n755) );
  INVD0 U908 ( .I(n905), .ZN(n961) );
  MAOI22D0 U909 ( .A1(n55), .A2(n54), .B1(y_mantissa[0]), .B2(x_mantissa[1]), 
        .ZN(intadd_0_CI) );
  NR2D0 U910 ( .A1(n220), .A2(n223), .ZN(DP_OP_53J1_122_9842_n90) );
  OA21D0 U911 ( .A1(n34), .A2(n54), .B(n55), .Z(intadd_0_B_2_) );
  OAI21D0 U912 ( .A1(n56), .A2(n758), .B(n35), .ZN(n759) );
  IOA21D0 U913 ( .A1(n1095), .A2(n56), .B(n759), .ZN(n1094) );
  INVD0 U914 ( .I(n1094), .ZN(n761) );
  CKND2D0 U915 ( .A1(n121), .A2(n762), .ZN(n764) );
  XNR2D0 U916 ( .A1(n764), .A2(n763), .ZN(n765) );
  BUFFD1 U917 ( .I(n828), .Z(n1079) );
  MUX2D0 U918 ( .I0(z1_s3[3]), .I1(n765), .S(n1088), .Z(plane1[3]) );
  INVD0 U919 ( .I(n1043), .ZN(n766) );
  NR2D0 U920 ( .A1(n766), .A2(n767), .ZN(n770) );
  INVD0 U921 ( .I(n1042), .ZN(n768) );
  OAI21D0 U922 ( .A1(n768), .A2(n767), .B(n1045), .ZN(n769) );
  AOI21D1 U923 ( .A1(n1044), .A2(n770), .B(n769), .ZN(n774) );
  CKND2D0 U924 ( .A1(n772), .A2(n771), .ZN(n773) );
  INVD0 U925 ( .I(n836), .ZN(n1066) );
  AO22D0 U926 ( .A1(n775), .A2(n1066), .B1(z1_s3[16]), .B2(n1017), .Z(
        plane1[16]) );
  OAI21D0 U927 ( .A1(n776), .A2(n1036), .B(n1037), .ZN(n781) );
  INVD0 U928 ( .I(n777), .ZN(n779) );
  CKND2D0 U929 ( .A1(n779), .A2(n778), .ZN(n780) );
  INVD0 U930 ( .I(n1040), .ZN(n1049) );
  AO22D0 U931 ( .A1(n782), .A2(n1049), .B1(z1_s3[14]), .B2(n836), .Z(
        plane1[14]) );
  INVD0 U932 ( .I(n783), .ZN(n815) );
  INVD0 U933 ( .I(n784), .ZN(n797) );
  INVD0 U934 ( .I(n796), .ZN(n785) );
  AOI21D0 U935 ( .A1(n815), .A2(n797), .B(n785), .ZN(n790) );
  INVD0 U936 ( .I(n786), .ZN(n788) );
  CKND2D0 U937 ( .A1(n788), .A2(n787), .ZN(n789) );
  XOR2D0 U938 ( .A1(n790), .A2(n789), .Z(n791) );
  BUFFD1 U939 ( .I(n805), .Z(n836) );
  INVD0 U940 ( .I(n836), .ZN(n821) );
  MUX2D0 U941 ( .I0(zm0_s3[5]), .I1(n791), .S(n821), .Z(plane0[5]) );
  AOI21D0 U942 ( .A1(n815), .A2(n807), .B(n809), .ZN(n794) );
  INVD0 U943 ( .I(n811), .ZN(n792) );
  CKND2D0 U944 ( .A1(n792), .A2(n810), .ZN(n793) );
  XOR2D0 U945 ( .A1(n794), .A2(n793), .Z(n795) );
  MUX2D0 U946 ( .I0(zm0_s3[6]), .I1(n795), .S(n821), .Z(plane0[6]) );
  CKND2D0 U947 ( .A1(n797), .A2(n796), .ZN(n798) );
  XNR2D0 U948 ( .A1(n815), .A2(n798), .ZN(n799) );
  MUX2D0 U949 ( .I0(zm0_s3[4]), .I1(n799), .S(n821), .Z(plane0[4]) );
  FA1D0 U950 ( .A(zm0_s3[24]), .B(n801), .CI(n800), .CO(n756), .S(n802) );
  MUX2D0 U951 ( .I0(zm0_s3[24]), .I1(n802), .S(n961), .Z(plane0[24]) );
  INVD0 U952 ( .I(n803), .ZN(n871) );
  CKND2D0 U953 ( .A1(n871), .A2(n869), .ZN(n804) );
  XOR2D0 U954 ( .A1(n948), .A2(n804), .Z(n806) );
  INVD0 U955 ( .I(n805), .ZN(n878) );
  MUX2D0 U956 ( .I0(zm0_s3[8]), .I1(n806), .S(n878), .Z(plane0[8]) );
  INVD0 U957 ( .I(n807), .ZN(n808) );
  NR2D0 U958 ( .A1(n808), .A2(n811), .ZN(n814) );
  INVD0 U959 ( .I(n809), .ZN(n812) );
  OAI21D0 U960 ( .A1(n812), .A2(n811), .B(n810), .ZN(n813) );
  AOI21D1 U961 ( .A1(n815), .A2(n814), .B(n813), .ZN(n820) );
  INVD0 U962 ( .I(n816), .ZN(n818) );
  CKND2D0 U963 ( .A1(n818), .A2(n817), .ZN(n819) );
  XOR2D0 U964 ( .A1(n820), .A2(n819), .Z(n822) );
  MUX2D0 U965 ( .I0(zm0_s3[7]), .I1(n822), .S(n821), .Z(plane0[7]) );
  INVD0 U966 ( .I(n823), .ZN(n825) );
  CKND2D0 U967 ( .A1(n825), .A2(n824), .ZN(n827) );
  XOR2D0 U968 ( .A1(n827), .A2(n826), .Z(n829) );
  BUFFD1 U969 ( .I(n828), .Z(n1065) );
  MUX2D0 U970 ( .I0(z1_s3[2]), .I1(n829), .S(n1080), .Z(plane1[2]) );
  INVD0 U971 ( .I(n830), .ZN(n934) );
  OAI21D0 U972 ( .A1(n931), .A2(n934), .B(n932), .ZN(n835) );
  INVD0 U973 ( .I(n831), .ZN(n833) );
  CKND2D0 U974 ( .A1(n833), .A2(n832), .ZN(n834) );
  XNR2D0 U975 ( .A1(n835), .A2(n834), .ZN(n837) );
  INVD0 U976 ( .I(n836), .ZN(n967) );
  MUX2D0 U977 ( .I0(zm0_s3[3]), .I1(n837), .S(n967), .Z(plane0[3]) );
  FA1D0 U978 ( .A(n840), .B(n839), .CI(n838), .CO(n846), .S(n841) );
  MUX2D0 U979 ( .I0(zm0_s3[21]), .I1(n841), .S(n918), .Z(plane0[21]) );
  FA1D0 U980 ( .A(n844), .B(n843), .CI(n842), .CO(n800), .S(n845) );
  MUX2D0 U981 ( .I0(zm0_s3[23]), .I1(n845), .S(n918), .Z(plane0[23]) );
  FA1D0 U982 ( .A(n848), .B(n847), .CI(n846), .CO(n842), .S(n849) );
  MUX2D0 U983 ( .I0(zm0_s3[22]), .I1(n849), .S(n918), .Z(plane0[22]) );
  INVD0 U984 ( .I(n850), .ZN(n865) );
  CKND2D0 U985 ( .A1(n860), .A2(n865), .ZN(n853) );
  INVD0 U986 ( .I(n864), .ZN(n851) );
  AOI21D0 U987 ( .A1(n861), .A2(n865), .B(n851), .ZN(n852) );
  OAI21D0 U988 ( .A1(n948), .A2(n853), .B(n852), .ZN(n858) );
  INVD0 U989 ( .I(n854), .ZN(n856) );
  CKND2D0 U990 ( .A1(n856), .A2(n855), .ZN(n857) );
  XNR2D0 U991 ( .A1(n858), .A2(n857), .ZN(n859) );
  MUX2D0 U992 ( .I0(zm0_s3[11]), .I1(n859), .S(n878), .Z(plane0[11]) );
  INVD0 U993 ( .I(n860), .ZN(n863) );
  INVD0 U994 ( .I(n861), .ZN(n862) );
  OAI21D0 U995 ( .A1(n948), .A2(n863), .B(n862), .ZN(n867) );
  CKND2D0 U996 ( .A1(n865), .A2(n864), .ZN(n866) );
  XNR2D0 U997 ( .A1(n867), .A2(n866), .ZN(n868) );
  MUX2D0 U998 ( .I0(zm0_s3[10]), .I1(n868), .S(n878), .Z(plane0[10]) );
  INVD0 U999 ( .I(n869), .ZN(n870) );
  INVD0 U1000 ( .I(n873), .ZN(n875) );
  CKND2D0 U1001 ( .A1(n875), .A2(n874), .ZN(n876) );
  XOR2D0 U1002 ( .A1(n877), .A2(n876), .Z(n879) );
  MUX2D0 U1003 ( .I0(zm0_s3[9]), .I1(n879), .S(n878), .Z(plane0[9]) );
  INVD0 U1004 ( .I(n944), .ZN(n880) );
  NR2D0 U1005 ( .A1(n880), .A2(n949), .ZN(n883) );
  INVD0 U1006 ( .I(n921), .ZN(n942) );
  CKND2D0 U1007 ( .A1(n883), .A2(n942), .ZN(n885) );
  INVD0 U1008 ( .I(n920), .ZN(n945) );
  INVD0 U1009 ( .I(n943), .ZN(n881) );
  OAI21D0 U1010 ( .A1(n881), .A2(n949), .B(n950), .ZN(n882) );
  OAI21D0 U1011 ( .A1(n109), .A2(n885), .B(n884), .ZN(n890) );
  INVD0 U1012 ( .I(n886), .ZN(n888) );
  CKND2D0 U1013 ( .A1(n888), .A2(n887), .ZN(n889) );
  XNR2D0 U1014 ( .A1(n890), .A2(n889), .ZN(n891) );
  MUX2D0 U1015 ( .I0(zm0_s3[15]), .I1(n891), .S(n954), .Z(plane0[15]) );
  INVD0 U1016 ( .I(n892), .ZN(n923) );
  CKND2D0 U1017 ( .A1(n942), .A2(n923), .ZN(n895) );
  INVD0 U1018 ( .I(n922), .ZN(n893) );
  OAI21D0 U1019 ( .A1(n109), .A2(n895), .B(n894), .ZN(n900) );
  INVD0 U1020 ( .I(n896), .ZN(n898) );
  CKND2D0 U1021 ( .A1(n898), .A2(n897), .ZN(n899) );
  XNR2D0 U1022 ( .A1(n900), .A2(n899), .ZN(n901) );
  MUX2D0 U1023 ( .I0(zm0_s3[13]), .I1(n901), .S(n954), .Z(plane0[13]) );
  FA1D0 U1024 ( .A(n904), .B(n903), .CI(n902), .CO(n907), .S(n906) );
  MUX2D0 U1025 ( .I0(zm0_s3[17]), .I1(n906), .S(n940), .Z(plane0[17]) );
  FA1D0 U1026 ( .A(n909), .B(n908), .CI(n907), .CO(n911), .S(n910) );
  MUX2D0 U1027 ( .I0(zm0_s3[18]), .I1(n910), .S(n940), .Z(plane0[18]) );
  FA1D0 U1028 ( .A(n913), .B(n912), .CI(n911), .CO(n915), .S(n914) );
  MUX2D0 U1029 ( .I0(zm0_s3[19]), .I1(n914), .S(n940), .Z(plane0[19]) );
  FA1D0 U1030 ( .A(n917), .B(n916), .CI(n915), .CO(n838), .S(n919) );
  MUX2D0 U1031 ( .I0(zm0_s3[20]), .I1(n919), .S(n918), .Z(plane0[20]) );
  OAI21D0 U1032 ( .A1(n109), .A2(n921), .B(n920), .ZN(n925) );
  CKND2D0 U1033 ( .A1(n923), .A2(n922), .ZN(n924) );
  XNR2D0 U1034 ( .A1(n925), .A2(n924), .ZN(n926) );
  MUX2D0 U1035 ( .I0(zm0_s3[12]), .I1(n926), .S(n954), .Z(plane0[12]) );
  CKND2D0 U1036 ( .A1(n117), .A2(n927), .ZN(n929) );
  XNR2D0 U1037 ( .A1(n929), .A2(n928), .ZN(n930) );
  MUX2D0 U1038 ( .I0(z1_s3[1]), .I1(n930), .S(n1088), .Z(plane1[1]) );
  INVD0 U1039 ( .I(n931), .ZN(n933) );
  CKND2D0 U1040 ( .A1(n933), .A2(n932), .ZN(n935) );
  XOR2D0 U1041 ( .A1(n935), .A2(n934), .Z(n936) );
  MUX2D0 U1042 ( .I0(zm0_s3[2]), .I1(n936), .S(n967), .Z(plane0[2]) );
  FA1D0 U1043 ( .A(n939), .B(n938), .CI(n937), .CO(n902), .S(n941) );
  MUX2D0 U1044 ( .I0(zm0_s3[16]), .I1(n941), .S(n940), .Z(plane0[16]) );
  CKND2D0 U1045 ( .A1(n942), .A2(n944), .ZN(n947) );
  OAI21D0 U1046 ( .A1(n109), .A2(n947), .B(n946), .ZN(n953) );
  INVD0 U1047 ( .I(n949), .ZN(n951) );
  CKND2D0 U1048 ( .A1(n951), .A2(n950), .ZN(n952) );
  XNR2D0 U1049 ( .A1(n953), .A2(n952), .ZN(n955) );
  MUX2D0 U1050 ( .I0(zm0_s3[14]), .I1(n955), .S(n954), .Z(plane0[14]) );
  INVD0 U1051 ( .I(n956), .ZN(n958) );
  CKND2D0 U1052 ( .A1(n958), .A2(n957), .ZN(n959) );
  XNR2D0 U1053 ( .A1(n960), .A2(n959), .ZN(n962) );
  MUX2D0 U1054 ( .I0(z1_s3[0]), .I1(n962), .S(n961), .Z(plane1[0]) );
  INVD0 U1055 ( .I(n963), .ZN(n965) );
  CKND2D0 U1056 ( .A1(n965), .A2(n964), .ZN(n966) );
  XOR2D0 U1057 ( .A1(n966), .A2(zm0_s3[0]), .Z(n968) );
  MUX2D0 U1058 ( .I0(zm0_s3[1]), .I1(n968), .S(n967), .Z(plane0[1]) );
  MUX2D0 U1059 ( .I0(shared_s5[27]), .I1(divided_s5[27]), .S(divide_s5), .Z(
        N412) );
  BUFFD0 U1060 ( .I(divide_s5), .Z(n969) );
  MUX2D0 U1061 ( .I0(shared_s5[0]), .I1(divided_s5[0]), .S(n969), .Z(N385) );
  MUX2D0 U1062 ( .I0(shared_s5[25]), .I1(divided_s5[25]), .S(n976), .Z(N410)
         );
  MUX2D0 U1063 ( .I0(shared_s5[28]), .I1(divided_s5[28]), .S(n976), .Z(N413)
         );
  MUX2D0 U1064 ( .I0(shared_s5[26]), .I1(divided_s5[26]), .S(n976), .Z(N411)
         );
  BUFFD0 U1065 ( .I(divide_s5), .Z(n973) );
  BUFFD0 U1066 ( .I(n973), .Z(n972) );
  MUX2D0 U1067 ( .I0(shared_s5[9]), .I1(divided_s5[9]), .S(n972), .Z(N394) );
  MUX2D0 U1068 ( .I0(shared_s5[10]), .I1(divided_s5[10]), .S(n972), .Z(N395)
         );
  BUFFD0 U1069 ( .I(n969), .Z(n971) );
  MUX2D0 U1070 ( .I0(shared_s5[2]), .I1(divided_s5[2]), .S(n971), .Z(N387) );
  BUFFD0 U1071 ( .I(n969), .Z(n970) );
  MUX2D0 U1072 ( .I0(shared_s5[8]), .I1(divided_s5[8]), .S(n970), .Z(N393) );
  MUX2D0 U1073 ( .I0(shared_s5[4]), .I1(divided_s5[4]), .S(n971), .Z(N389) );
  MUX2D0 U1074 ( .I0(shared_s5[6]), .I1(divided_s5[6]), .S(n970), .Z(N391) );
  MUX2D0 U1075 ( .I0(shared_s5[5]), .I1(divided_s5[5]), .S(n970), .Z(N390) );
  MUX2D0 U1076 ( .I0(shared_s5[7]), .I1(divided_s5[7]), .S(n970), .Z(N392) );
  MUX2D0 U1077 ( .I0(shared_s5[1]), .I1(divided_s5[1]), .S(n971), .Z(N386) );
  MUX2D0 U1078 ( .I0(shared_s5[3]), .I1(divided_s5[3]), .S(n971), .Z(N388) );
  MUX2D0 U1079 ( .I0(shared_s5[11]), .I1(divided_s5[11]), .S(n972), .Z(N396)
         );
  MUX2D0 U1080 ( .I0(shared_s5[12]), .I1(divided_s5[12]), .S(n972), .Z(N397)
         );
  BUFFD0 U1081 ( .I(n973), .Z(n974) );
  MUX2D0 U1082 ( .I0(shared_s5[16]), .I1(divided_s5[16]), .S(n974), .Z(N401)
         );
  BUFFD0 U1083 ( .I(n973), .Z(n975) );
  MUX2D0 U1084 ( .I0(shared_s5[19]), .I1(divided_s5[19]), .S(n975), .Z(N404)
         );
  MUX2D0 U1085 ( .I0(shared_s5[18]), .I1(divided_s5[18]), .S(n975), .Z(N403)
         );
  MUX2D0 U1086 ( .I0(shared_s5[13]), .I1(divided_s5[13]), .S(n974), .Z(N398)
         );
  MUX2D0 U1087 ( .I0(shared_s5[15]), .I1(divided_s5[15]), .S(n974), .Z(N400)
         );
  MUX2D0 U1088 ( .I0(shared_s5[14]), .I1(divided_s5[14]), .S(n974), .Z(N399)
         );
  MUX2D0 U1089 ( .I0(shared_s5[17]), .I1(divided_s5[17]), .S(n975), .Z(N402)
         );
  MUX2D0 U1090 ( .I0(shared_s5[20]), .I1(divided_s5[20]), .S(n975), .Z(N405)
         );
  BUFFD0 U1091 ( .I(n976), .Z(n977) );
  MUX2D0 U1092 ( .I0(shared_s5[21]), .I1(divided_s5[21]), .S(n977), .Z(N406)
         );
  MUX2D0 U1093 ( .I0(shared_s5[23]), .I1(divided_s5[23]), .S(n977), .Z(N408)
         );
  MUX2D0 U1094 ( .I0(shared_s5[22]), .I1(divided_s5[22]), .S(n977), .Z(N407)
         );
  MUX2D0 U1095 ( .I0(shared_s5[24]), .I1(divided_s5[24]), .S(n977), .Z(N409)
         );
  XNR2D0 U1096 ( .A1(n979), .A2(n978), .ZN(sub_x_11_B_0_) );
  AOI21D0 U1097 ( .A1(n223), .A2(n220), .B(DP_OP_53J1_122_9842_n90), .ZN(
        intadd_0_A_1_) );
  XOR2D0 U1098 ( .A1(n35), .A2(n56), .Z(n982) );
  INVD0 U1099 ( .I(DP_OP_53J1_122_9842_n31), .ZN(n984) );
  XOR2D0 U1100 ( .A1(n982), .A2(n981), .Z(n983) );
  INVD0 U1101 ( .I(n985), .ZN(n987) );
  CKND2D0 U1102 ( .A1(n987), .A2(n986), .ZN(n989) );
  XOR2D0 U1103 ( .A1(n989), .A2(n988), .Z(n990) );
  MUX2D0 U1104 ( .I0(z1_s3[4]), .I1(n990), .S(n1088), .Z(plane1[4]) );
  OAI21D1 U1105 ( .A1(n993), .A2(n992), .B(n991), .ZN(n998) );
  INVD0 U1106 ( .I(n994), .ZN(n996) );
  CKND2D0 U1107 ( .A1(n996), .A2(n995), .ZN(n997) );
  XNR2D0 U1108 ( .A1(n998), .A2(n997), .ZN(n1000) );
  AO22D0 U1109 ( .A1(n1000), .A2(n1099), .B1(z1_s3[6]), .B2(n999), .Z(
        plane1[6]) );
  AOI21D1 U1110 ( .A1(n1002), .A2(n118), .B(n1001), .ZN(n1005) );
  AO22D0 U1111 ( .A1(n1006), .A2(n1018), .B1(z1_s3[8]), .B2(n1010), .Z(
        plane1[8]) );
  INVD1 U1112 ( .I(n1007), .ZN(n1031) );
  XOR2D0 U1113 ( .A1(n1031), .A2(n1009), .Z(n1011) );
  AO22D0 U1114 ( .A1(n1011), .A2(n1018), .B1(z1_s3[9]), .B2(n1010), .Z(
        plane1[9]) );
  OAI21D1 U1115 ( .A1(n1031), .A2(n1013), .B(n1012), .ZN(n1016) );
  AO22D0 U1116 ( .A1(n1019), .A2(n1018), .B1(z1_s3[10]), .B2(n1017), .Z(
        plane1[10]) );
  OAI21D1 U1117 ( .A1(n1031), .A2(n1024), .B(n1026), .ZN(n1022) );
  AO22D0 U1118 ( .A1(n1023), .A2(n1049), .B1(z1_s3[11]), .B2(n1040), .Z(
        plane1[11]) );
  INVD0 U1119 ( .I(n1024), .ZN(n1025) );
  CKND2D0 U1120 ( .A1(n1025), .A2(n122), .ZN(n1030) );
  INVD0 U1121 ( .I(n1026), .ZN(n1028) );
  AOI21D1 U1122 ( .A1(n1028), .A2(n122), .B(n1027), .ZN(n1029) );
  CKND2D0 U1123 ( .A1(n123), .A2(n1032), .ZN(n1033) );
  AO22D0 U1124 ( .A1(n1035), .A2(n1049), .B1(z1_s3[12]), .B2(n1040), .Z(
        plane1[12]) );
  INVD0 U1125 ( .I(n1036), .ZN(n1038) );
  CKND2D0 U1126 ( .A1(n1038), .A2(n1037), .ZN(n1039) );
  AO22D0 U1127 ( .A1(n1041), .A2(n1099), .B1(z1_s3[13]), .B2(n1040), .Z(
        plane1[13]) );
  AOI21D1 U1128 ( .A1(n1044), .A2(n1043), .B(n1042), .ZN(n1048) );
  CKND2D0 U1129 ( .A1(n1046), .A2(n1045), .ZN(n1047) );
  AO22D0 U1130 ( .A1(n1050), .A2(n1049), .B1(z1_s3[15]), .B2(n828), .Z(
        plane1[15]) );
  INVD0 U1131 ( .I(n1051), .ZN(n1053) );
  CKND2D0 U1132 ( .A1(n1053), .A2(n1052), .ZN(n1054) );
  AO22D0 U1133 ( .A1(n1056), .A2(n1066), .B1(z1_s3[17]), .B2(n1065), .Z(
        plane1[17]) );
  CKND2D0 U1134 ( .A1(n119), .A2(n1057), .ZN(n1058) );
  AO22D0 U1135 ( .A1(n1060), .A2(n1066), .B1(z1_s3[18]), .B2(n1065), .Z(
        plane1[18]) );
  AO22D0 U1136 ( .A1(n1067), .A2(n1066), .B1(z1_s3[19]), .B2(n1065), .Z(
        plane1[19]) );
  AO22D0 U1137 ( .A1(n1071), .A2(n1080), .B1(z1_s3[20]), .B2(n1079), .Z(
        plane1[20]) );
  AO22D0 U1138 ( .A1(n1075), .A2(n1080), .B1(z1_s3[21]), .B2(n1079), .Z(
        plane1[21]) );
  AO22D0 U1139 ( .A1(n1081), .A2(n1080), .B1(z1_s3[22]), .B2(n1079), .Z(
        plane1[22]) );
  MUX2D0 U1140 ( .I0(z1_s3[24]), .I1(n1089), .S(n1088), .Z(plane1[24]) );
  FA1D1 U1141 ( .A(z1_s3[26]), .B(n1091), .CI(n1090), .CO(n503), .S(n1093) );
  INR2D0 U1142 ( .A1(x_mantissa[1]), .B1(y_mantissa[0]), .ZN(n1096) );
  MUX2ND0 U1143 ( .I0(n127), .I1(y_mantissa[1]), .S(n1096), .ZN(intadd_0_B_1_)
         );
  FIICOND1 U1144 ( .A(DP_OP_56J1_125_979_n37), .B(DP_OP_56J1_125_979_n36), .C(
        DP_OP_56J1_125_979_n7), .CON0(DP_OP_56J1_125_979_n6), .CON1(
        DP_OP_56J1_125_979_n5), .S(z1_c1[23]) );
  FCSICIND1 U1145 ( .CIN1(DP_OP_56J1_125_979_n5), .B(DP_OP_56J1_125_979_n35), 
        .A(DP_OP_56J1_125_979_n34), .CIN0(DP_OP_56J1_125_979_n6), .CS(
        DP_OP_56J1_125_979_n7), .CO1(DP_OP_56J1_125_979_n3), .CO0(
        DP_OP_56J1_125_979_n4), .S(z1_c1[24]) );
  FCSICIND1 U1146 ( .CIN1(DP_OP_56J1_125_979_n10), .B(DP_OP_56J1_125_979_n39), 
        .A(DP_OP_56J1_125_979_n38), .CIN0(DP_OP_56J1_125_979_n11), .CS(
        DP_OP_56J1_125_979_n12), .CO1(DP_OP_56J1_125_979_n8), .CO0(
        DP_OP_56J1_125_979_n9), .S(z1_c1[22]) );
  FA1D0 U1147 ( .A(x_mantissa[0]), .B(y_mantissa[1]), .CI(intadd_0_CI), .CO(
        intadd_0_n24), .S(zm0_c1[0]) );
  CMPE42D1 U1148 ( .A(y_mantissa[3]), .B(x_mantissa[3]), .C(n26), .CIX(
        DP_OP_53J1_122_9842_n90), .D(y_mantissa[2]), .CO(
        DP_OP_53J1_122_9842_n86), .COX(DP_OP_53J1_122_9842_n85), .S(
        DP_OP_53J1_122_9842_n87) );
endmodule


module oadm_dm_eq1011_APPROX_LEVEL1 ( clk, x, y, divide_mode, result );
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
         DP_OP_57J2_122_2635_n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
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
         n269, n270, n271, n272, n273, n274, n275, n276, n277, n278, n279;
  wire   [28:0] core_value;
  wire   [10:0] exponent_s1;
  wire   [10:0] exponent_s2;
  wire   [10:0] exponent_s3;
  wire   [10:0] exponent_s4;
  wire   [11:0] exponent_s6;
  wire   [10:0] exponent_s5;

  oadm_core_eq1011_APPROX_LEVEL1 mantissa_core ( .clk(clk), .x_mantissa({1'b0, 
        x[22:0]}), .y_mantissa({1'b0, y[22:0]}), .divide_mode(n56), 
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
  DFQD1 exponent_s1_reg_10_ ( .D(n271), .CP(clk), .Q(exponent_s1[10]) );
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
  FA1D0 DP_OP_58J2_123_7635_U11 ( .A(n272), .B(DP_OP_58J2_123_7635_n44), .CI(
        DP_OP_58J2_123_7635_n10), .CO(DP_OP_58J2_123_7635_n9), .S(N63) );
  FA1D0 DP_OP_58J2_123_7635_U10 ( .A(n273), .B(DP_OP_58J2_123_7635_n45), .CI(
        DP_OP_58J2_123_7635_n9), .CO(DP_OP_58J2_123_7635_n8), .S(N64) );
  FA1D0 DP_OP_58J2_123_7635_U9 ( .A(n274), .B(DP_OP_58J2_123_7635_n46), .CI(
        DP_OP_58J2_123_7635_n8), .CO(DP_OP_58J2_123_7635_n7), .S(N65) );
  FA1D0 DP_OP_58J2_123_7635_U8 ( .A(n275), .B(DP_OP_58J2_123_7635_n47), .CI(
        DP_OP_58J2_123_7635_n7), .CO(DP_OP_58J2_123_7635_n6), .S(N66) );
  FA1D0 DP_OP_58J2_123_7635_U7 ( .A(n276), .B(DP_OP_58J2_123_7635_n48), .CI(
        DP_OP_58J2_123_7635_n6), .CO(DP_OP_58J2_123_7635_n5), .S(N67) );
  FA1D0 DP_OP_58J2_123_7635_U6 ( .A(n277), .B(DP_OP_58J2_123_7635_n49), .CI(
        DP_OP_58J2_123_7635_n5), .CO(DP_OP_58J2_123_7635_n4), .S(N68) );
  FA1D0 DP_OP_58J2_123_7635_U5 ( .A(n278), .B(DP_OP_58J2_123_7635_n50), .CI(
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
  INVD1 U3 ( .I(n212), .ZN(n128) );
  INVD0 U4 ( .I(core_value[28]), .ZN(n77) );
  CKAN2D0 U5 ( .A1(n81), .A2(n225), .Z(n111) );
  INVD0 U6 ( .I(n111), .ZN(n39) );
  INVD0 U7 ( .I(n40), .ZN(n41) );
  INVD0 U8 ( .I(n29), .ZN(n31) );
  INVD0 U9 ( .I(n257), .ZN(n640) );
  AO211D0 U10 ( .A1(n213), .A2(n212), .B(infinity_s6), .C(invalid_s6), .Z(n217) );
  INVD0 U11 ( .I(n263), .ZN(n26) );
  INVD0 U12 ( .I(n251), .ZN(n60) );
  INVD0 U13 ( .I(n251), .ZN(n58) );
  OR2D0 U14 ( .A1(infinity_s6), .A2(n218), .Z(n227) );
  CKND2D0 U15 ( .A1(n233), .A2(n232), .ZN(N152) );
  OAI211D0 U16 ( .A1(n1700), .A2(n57), .B(n1690), .C(n1680), .ZN(N167) );
  INVD0 U17 ( .I(n260), .ZN(n48) );
  CKND2D0 U18 ( .A1(n131), .A2(n220), .ZN(n256) );
  INVD0 U19 ( .I(n253), .ZN(n44) );
  CKND2D0 U20 ( .A1(n131), .A2(n219), .ZN(n263) );
  AO222D1 U21 ( .A1(n620), .A2(core_value[0]), .B1(n44), .B2(n5), .C1(n27), 
        .C2(core_value[2]), .Z(N151) );
  CKAN2D1 U22 ( .A1(n98), .A2(n123), .Z(n127) );
  XOR2D0 U23 ( .A1(n36), .A2(n85), .Z(n110) );
  ND2D1 U24 ( .A1(n130), .A2(n80), .ZN(n225) );
  NR2XD0 U25 ( .A1(n80), .A2(core_value[21]), .ZN(n76) );
  CKND2D1 U26 ( .A1(n130), .A2(n670), .ZN(n80) );
  NR2D1 U27 ( .A1(n220), .A2(core_value[23]), .ZN(n130) );
  ND2D1 U28 ( .A1(n660), .A2(n650), .ZN(n220) );
  NR2D1 U29 ( .A1(core_value[25]), .A2(core_value[24]), .ZN(n650) );
  NR2D1 U30 ( .A1(core_value[27]), .A2(core_value[26]), .ZN(n660) );
  BUFFD0 U31 ( .I(divide_mode), .Z(n279) );
  OAI211D1 U32 ( .A1(n252), .A2(n59), .B(n250), .C(n249), .ZN(N168) );
  OAI211D1 U33 ( .A1(n239), .A2(n59), .B(n238), .C(n237), .ZN(N158) );
  OAI211D1 U34 ( .A1(n236), .A2(n58), .B(n235), .C(n234), .ZN(N154) );
  OAI211D1 U35 ( .A1(n248), .A2(n3), .B(n247), .C(n246), .ZN(N165) );
  OAI211D1 U36 ( .A1(n242), .A2(n60), .B(n241), .C(n240), .ZN(N162) );
  INVD1 U37 ( .I(n40), .ZN(n43) );
  INVD1 U38 ( .I(n40), .ZN(n2) );
  INVD1 U39 ( .I(n40), .ZN(n42) );
  INVD1 U40 ( .I(n257), .ZN(n620) );
  INVD1 U41 ( .I(n257), .ZN(n61) );
  INVD1 U42 ( .I(n257), .ZN(n630) );
  CKBD1 U43 ( .I(n256), .Z(n260) );
  CKBD1 U44 ( .I(n263), .Z(n253) );
  INVD0 U45 ( .I(n251), .ZN(n59) );
  INVD1 U46 ( .I(n131), .ZN(n129) );
  AN2D1 U47 ( .A1(n222), .A2(n131), .Z(n251) );
  NR2D2 U48 ( .A1(n227), .A2(invalid_s6), .ZN(n131) );
  CKND2D2 U49 ( .A1(n213), .A2(n128), .ZN(n218) );
  OR2XD1 U50 ( .A1(n95), .A2(n94), .Z(n125) );
  BUFFD0 U51 ( .I(n279), .Z(n209) );
  INVD1 U52 ( .I(n256), .ZN(n28) );
  INVD1 U53 ( .I(n61), .ZN(n29) );
  INVD0 U54 ( .I(n259), .ZN(n3) );
  INVD1 U55 ( .I(n57), .ZN(n259) );
  INVD1 U56 ( .I(n217), .ZN(n32) );
  INVD1 U57 ( .I(n217), .ZN(n33) );
  CKND2D0 U58 ( .A1(n213), .A2(n128), .ZN(n55) );
  CKND2D0 U59 ( .A1(n213), .A2(n128), .ZN(n54) );
  AO21D1 U60 ( .A1(n127), .A2(n126), .B(n125), .Z(n212) );
  IND2D1 U61 ( .A1(n92), .B1(n91), .ZN(n95) );
  INVD1 U62 ( .I(n90), .ZN(n91) );
  ND3D1 U63 ( .A1(n216), .A2(n215), .A3(n118), .ZN(n119) );
  INVD1 U64 ( .I(n101), .ZN(n216) );
  INVD1 U65 ( .I(n103), .ZN(n215) );
  XOR2D0 U66 ( .A1(n36), .A2(n82), .Z(n115) );
  XOR2D0 U67 ( .A1(n37), .A2(exponent_s6[11]), .Z(n86) );
  INVD1 U68 ( .I(n111), .ZN(n38) );
  INVD1 U69 ( .I(n111), .ZN(n37) );
  INVD1 U70 ( .I(n111), .ZN(n36) );
  ND2D1 U71 ( .A1(n84), .A2(n79), .ZN(n82) );
  OAI31D1 U72 ( .A1(n75), .A2(n74), .A3(n73), .B(n72), .ZN(n122) );
  NR2D0 U73 ( .A1(n130), .A2(n220), .ZN(n219) );
  BUFFD0 U74 ( .I(core_value[19]), .Z(n24) );
  BUFFD0 U75 ( .I(core_value[18]), .Z(n23) );
  BUFFD0 U76 ( .I(core_value[20]), .Z(n6) );
  OR4D0 U77 ( .A1(core_value[2]), .A2(core_value[0]), .A3(core_value[18]), 
        .A4(core_value[20]), .Z(n73) );
  INVD1 U79 ( .I(n258), .ZN(n40) );
  INR2D1 U80 ( .A1(n221), .B1(n129), .ZN(n258) );
  BUFFD0 U81 ( .I(core_value[0]), .Z(n4) );
  INVD0 U82 ( .I(n134), .ZN(n5) );
  INVD0 U83 ( .I(n236), .ZN(n7) );
  INVD0 U84 ( .I(n137), .ZN(n8) );
  INVD0 U85 ( .I(n140), .ZN(n9) );
  INVD0 U86 ( .I(n143), .ZN(n10) );
  INVD0 U87 ( .I(n239), .ZN(n11) );
  INVD0 U88 ( .I(n146), .ZN(n12) );
  INVD0 U89 ( .I(n1580), .ZN(n13) );
  INVD0 U90 ( .I(n1610), .ZN(n14) );
  INVD0 U91 ( .I(n242), .ZN(n15) );
  INVD0 U92 ( .I(n245), .ZN(n16) );
  INVD0 U93 ( .I(n1640), .ZN(n17) );
  INVD0 U94 ( .I(n248), .ZN(n18) );
  INVD0 U95 ( .I(n1670), .ZN(n19) );
  INVD0 U96 ( .I(n1700), .ZN(n20) );
  INVD0 U97 ( .I(n252), .ZN(n21) );
  INVD0 U98 ( .I(n173), .ZN(n22) );
  INVD0 U99 ( .I(n263), .ZN(n25) );
  INVD0 U100 ( .I(n256), .ZN(n27) );
  INVD0 U101 ( .I(n29), .ZN(n30) );
  INVD0 U102 ( .I(n209), .ZN(n34) );
  INVD0 U103 ( .I(n209), .ZN(n35) );
  INVD0 U104 ( .I(n253), .ZN(n45) );
  INVD0 U105 ( .I(n253), .ZN(n46) );
  INVD0 U106 ( .I(n253), .ZN(n47) );
  INVD0 U107 ( .I(n260), .ZN(n49) );
  INVD0 U108 ( .I(n260), .ZN(n50) );
  INVD0 U109 ( .I(n260), .ZN(n51) );
  INVD0 U110 ( .I(n202), .ZN(n52) );
  INVD0 U111 ( .I(n83), .ZN(n53) );
  BUFFD0 U112 ( .I(divide_mode), .Z(n56) );
  INVD1 U113 ( .I(n251), .ZN(n57) );
  OR2XD1 U114 ( .A1(n225), .A2(n129), .Z(n257) );
  FA1D0 U115 ( .A(n115), .B(exponent_s6[1]), .CI(n114), .CO(n107), .S(n116) );
  ND2D1 U116 ( .A1(n78), .A2(n77), .ZN(n221) );
  INVD0 U117 ( .I(core_value[1]), .ZN(n134) );
  INVD0 U118 ( .I(core_value[21]), .ZN(n264) );
  INVD1 U119 ( .I(core_value[22]), .ZN(n670) );
  INR2D1 U120 ( .A1(core_value[21]), .B1(n80), .ZN(n222) );
  NR4D0 U121 ( .A1(core_value[12]), .A2(core_value[13]), .A3(core_value[14]), 
        .A4(core_value[11]), .ZN(n71) );
  NR4D0 U122 ( .A1(core_value[19]), .A2(core_value[15]), .A3(core_value[17]), 
        .A4(core_value[16]), .ZN(n700) );
  NR4D0 U123 ( .A1(core_value[4]), .A2(core_value[6]), .A3(core_value[5]), 
        .A4(core_value[3]), .ZN(n690) );
  NR4D0 U124 ( .A1(core_value[10]), .A2(core_value[8]), .A3(core_value[9]), 
        .A4(core_value[7]), .ZN(n680) );
  ND4D0 U125 ( .A1(n71), .A2(n700), .A3(n690), .A4(n680), .ZN(n75) );
  CKND2D0 U126 ( .A1(n76), .A2(n134), .ZN(n74) );
  NR2D0 U127 ( .A1(core_value[28]), .A2(zero_s6), .ZN(n72) );
  INVD1 U128 ( .I(n76), .ZN(n78) );
  INVD1 U129 ( .I(n221), .ZN(n84) );
  INVD1 U130 ( .I(n222), .ZN(n79) );
  INVD1 U131 ( .I(n82), .ZN(n81) );
  INVD0 U132 ( .I(n220), .ZN(n83) );
  ND3D0 U133 ( .A1(n84), .A2(n83), .A3(n225), .ZN(n85) );
  CKXOR2D1 U134 ( .A1(n87), .A2(n86), .Z(n121) );
  FA1D0 U135 ( .A(n39), .B(exponent_s6[9]), .CI(n88), .CO(n93), .S(n92) );
  FA1D0 U136 ( .A(n38), .B(exponent_s6[8]), .CI(n89), .CO(n88), .S(n90) );
  FA1D0 U137 ( .A(n38), .B(exponent_s6[10]), .CI(n93), .CO(n87), .S(n94) );
  FA1D0 U138 ( .A(n39), .B(exponent_s6[7]), .CI(n96), .CO(n89), .S(n124) );
  FA1D0 U139 ( .A(n37), .B(exponent_s6[6]), .CI(n97), .CO(n96), .S(n98) );
  INVD0 U140 ( .I(n98), .ZN(n99) );
  FA1D0 U141 ( .A(n38), .B(exponent_s6[5]), .CI(n100), .CO(n97), .S(n101) );
  FA1D0 U142 ( .A(n39), .B(exponent_s6[4]), .CI(n102), .CO(n100), .S(n103) );
  FA1D0 U143 ( .A(n37), .B(exponent_s6[3]), .CI(n104), .CO(n102), .S(n105) );
  INVD0 U144 ( .I(n105), .ZN(n106) );
  FA1D0 U145 ( .A(n38), .B(exponent_s6[2]), .CI(n107), .CO(n104), .S(n108) );
  INVD0 U146 ( .I(n108), .ZN(n109) );
  FA1D0 U147 ( .A(exponent_s6[0]), .B(n39), .CI(n110), .CO(n114), .S(n112) );
  INVD0 U148 ( .I(n112), .ZN(n113) );
  INVD0 U149 ( .I(n116), .ZN(n117) );
  NR4D0 U150 ( .A1(n105), .A2(n108), .A3(n112), .A4(n116), .ZN(n118) );
  NR4D0 U151 ( .A1(n125), .A2(n124), .A3(n98), .A4(n119), .ZN(n120) );
  NR3D0 U152 ( .A1(n122), .A2(n121), .A3(n120), .ZN(n213) );
  NR3D0 U153 ( .A1(n216), .A2(n106), .A3(n117), .ZN(n123) );
  INVD0 U154 ( .I(n124), .ZN(n214) );
  NR4D0 U155 ( .A1(n214), .A2(n215), .A3(n109), .A4(n113), .ZN(n126) );
  AOI22D0 U156 ( .A1(n7), .A2(n620), .B1(core_value[0]), .B2(n43), .ZN(n133)
         );
  AOI22D0 U157 ( .A1(n9), .A2(n49), .B1(n8), .B2(n47), .ZN(n132) );
  OAI211D1 U158 ( .A1(n134), .A2(n60), .B(n133), .C(n132), .ZN(N153) );
  INVD0 U159 ( .I(core_value[3]), .ZN(n137) );
  AOI22D0 U160 ( .A1(core_value[2]), .A2(n43), .B1(core_value[4]), .B2(n30), 
        .ZN(n136) );
  AOI22D0 U161 ( .A1(n11), .A2(n28), .B1(n10), .B2(n25), .ZN(n135) );
  OAI211D1 U162 ( .A1(n137), .A2(n3), .B(n136), .C(n135), .ZN(N155) );
  INVD0 U163 ( .I(core_value[4]), .ZN(n140) );
  AOI22D0 U164 ( .A1(n10), .A2(n620), .B1(core_value[3]), .B2(n2), .ZN(n139)
         );
  AOI22D0 U165 ( .A1(n12), .A2(n51), .B1(n11), .B2(n45), .ZN(n138) );
  OAI211D1 U166 ( .A1(n140), .A2(n58), .B(n139), .C(n138), .ZN(N156) );
  INVD0 U167 ( .I(core_value[5]), .ZN(n143) );
  AOI22D0 U168 ( .A1(n9), .A2(n41), .B1(core_value[6]), .B2(n640), .ZN(n142)
         );
  AOI22D0 U169 ( .A1(n13), .A2(n50), .B1(core_value[7]), .B2(n44), .ZN(n141)
         );
  OAI211D1 U170 ( .A1(n143), .A2(n59), .B(n142), .C(n141), .ZN(N157) );
  INVD0 U171 ( .I(core_value[7]), .ZN(n146) );
  AOI22D0 U172 ( .A1(n13), .A2(n31), .B1(core_value[6]), .B2(n42), .ZN(n145)
         );
  AOI22D0 U173 ( .A1(n15), .A2(n28), .B1(n14), .B2(n26), .ZN(n144) );
  OAI211D1 U174 ( .A1(n146), .A2(n60), .B(n145), .C(n144), .ZN(N159) );
  INVD0 U175 ( .I(core_value[8]), .ZN(n1580) );
  AOI22D0 U176 ( .A1(n14), .A2(n630), .B1(core_value[7]), .B2(n41), .ZN(n1570)
         );
  AOI22D0 U177 ( .A1(n16), .A2(n50), .B1(core_value[10]), .B2(n45), .ZN(n147)
         );
  OAI211D1 U178 ( .A1(n1580), .A2(n57), .B(n1570), .C(n147), .ZN(N160) );
  INVD0 U179 ( .I(core_value[9]), .ZN(n1610) );
  AOI22D0 U180 ( .A1(n15), .A2(n630), .B1(core_value[8]), .B2(n41), .ZN(n1600)
         );
  AOI22D0 U181 ( .A1(n17), .A2(n51), .B1(core_value[11]), .B2(n47), .ZN(n1590)
         );
  OAI211D1 U182 ( .A1(n1610), .A2(n58), .B(n1600), .C(n1590), .ZN(N161) );
  INVD0 U183 ( .I(core_value[12]), .ZN(n1640) );
  AOI22D0 U184 ( .A1(n18), .A2(n630), .B1(core_value[11]), .B2(n42), .ZN(n1630) );
  AOI22D0 U185 ( .A1(n20), .A2(n49), .B1(n19), .B2(n46), .ZN(n1620) );
  OAI211D1 U186 ( .A1(n1640), .A2(n59), .B(n1630), .C(n1620), .ZN(N164) );
  INVD0 U187 ( .I(core_value[14]), .ZN(n1670) );
  AOI22D0 U188 ( .A1(n20), .A2(n31), .B1(core_value[13]), .B2(n2), .ZN(n1660)
         );
  AOI22D0 U189 ( .A1(n22), .A2(n28), .B1(n21), .B2(n26), .ZN(n1650) );
  OAI211D1 U190 ( .A1(n1670), .A2(n60), .B(n1660), .C(n1650), .ZN(N166) );
  INVD0 U191 ( .I(core_value[15]), .ZN(n1700) );
  AOI22D0 U192 ( .A1(n21), .A2(n640), .B1(n19), .B2(n258), .ZN(n1690) );
  AOI22D0 U193 ( .A1(n23), .A2(n51), .B1(n22), .B2(n44), .ZN(n1680) );
  INVD0 U194 ( .I(core_value[17]), .ZN(n173) );
  AOI22D0 U195 ( .A1(n23), .A2(n640), .B1(core_value[16]), .B2(n258), .ZN(n172) );
  AOI22D0 U196 ( .A1(n6), .A2(n49), .B1(n24), .B2(n46), .ZN(n1710) );
  OAI211D1 U197 ( .A1(n173), .A2(n58), .B(n172), .C(n1710), .ZN(N169) );
  AN4D0 U198 ( .A1(y[30]), .A2(y[29]), .A3(y[28]), .A4(y[27]), .Z(n175) );
  AN4D0 U199 ( .A1(y[26]), .A2(y[25]), .A3(y[24]), .A4(y[23]), .Z(n174) );
  CKND2D0 U200 ( .A1(n175), .A2(n174), .ZN(n266) );
  INVD0 U201 ( .I(n266), .ZN(n202) );
  AN4D0 U202 ( .A1(x[30]), .A2(x[29]), .A3(x[28]), .A4(x[27]), .Z(n177) );
  AN4D0 U203 ( .A1(x[26]), .A2(x[25]), .A3(x[24]), .A4(x[23]), .Z(n176) );
  CKND2D0 U204 ( .A1(n177), .A2(n176), .ZN(n200) );
  NR4D0 U205 ( .A1(y[30]), .A2(y[29]), .A3(y[28]), .A4(y[27]), .ZN(n179) );
  NR4D0 U206 ( .A1(y[26]), .A2(y[25]), .A3(y[24]), .A4(y[23]), .ZN(n178) );
  CKND2D0 U207 ( .A1(n179), .A2(n178), .ZN(n269) );
  NR4D0 U208 ( .A1(x[22]), .A2(x[20]), .A3(x[9]), .A4(x[10]), .ZN(n184) );
  OR4D0 U209 ( .A1(x[2]), .A2(x[18]), .A3(x[6]), .A4(x[8]), .Z(n180) );
  NR4D0 U210 ( .A1(x[0]), .A2(x[3]), .A3(x[4]), .A4(n180), .ZN(n183) );
  NR4D0 U211 ( .A1(x[11]), .A2(x[15]), .A3(x[16]), .A4(x[14]), .ZN(n182) );
  NR4D0 U212 ( .A1(x[1]), .A2(x[7]), .A3(x[12]), .A4(x[13]), .ZN(n1810) );
  ND4D0 U213 ( .A1(n184), .A2(n183), .A3(n182), .A4(n1810), .ZN(n194) );
  INVD0 U214 ( .I(n200), .ZN(n199) );
  OR4D0 U215 ( .A1(x[5]), .A2(x[19]), .A3(x[17]), .A4(x[21]), .Z(n193) );
  NR4D0 U216 ( .A1(y[5]), .A2(y[19]), .A3(y[17]), .A4(y[21]), .ZN(n191) );
  NR4D0 U217 ( .A1(y[22]), .A2(y[20]), .A3(y[9]), .A4(y[10]), .ZN(n190) );
  NR4D0 U218 ( .A1(y[2]), .A2(y[18]), .A3(y[6]), .A4(y[8]), .ZN(n188) );
  NR3D0 U219 ( .A1(y[0]), .A2(y[3]), .A3(y[4]), .ZN(n187) );
  NR4D0 U220 ( .A1(y[11]), .A2(y[15]), .A3(y[16]), .A4(y[14]), .ZN(n186) );
  NR4D0 U221 ( .A1(y[1]), .A2(y[7]), .A3(y[12]), .A4(y[13]), .ZN(n185) );
  AN4D0 U222 ( .A1(n188), .A2(n187), .A3(n186), .A4(n185), .Z(n189) );
  AOI31D0 U223 ( .A1(n191), .A2(n190), .A3(n189), .B(n52), .ZN(n192) );
  AOI221D0 U224 ( .A1(n194), .A2(n199), .B1(n193), .B2(n199), .C(n192), .ZN(
        n197) );
  OAI211D0 U225 ( .A1(n200), .A2(n269), .B(n197), .C(n35), .ZN(n270) );
  INVD0 U226 ( .I(n270), .ZN(n230) );
  NR4D0 U227 ( .A1(x[30]), .A2(x[29]), .A3(x[28]), .A4(x[27]), .ZN(n196) );
  NR4D0 U228 ( .A1(x[26]), .A2(x[25]), .A3(x[24]), .A4(x[23]), .ZN(n195) );
  CKND2D0 U229 ( .A1(n196), .A2(n195), .ZN(n268) );
  OAI211D0 U230 ( .A1(n268), .A2(n269), .B(n279), .C(n197), .ZN(n198) );
  AOI21D0 U231 ( .A1(n199), .A2(n202), .B(n198), .ZN(n229) );
  AOI21D0 U232 ( .A1(n230), .A2(n266), .B(n229), .ZN(n267) );
  INVD0 U233 ( .I(n229), .ZN(n265) );
  OAI22D0 U234 ( .A1(n267), .A2(n200), .B1(n269), .B2(n265), .ZN(n201) );
  AO31D0 U235 ( .A1(n202), .A2(n230), .A3(n268), .B(n201), .Z(infinity_result)
         );
  NR2D0 U236 ( .A1(DP_OP_58J2_123_7635_n3), .A2(DP_OP_57J2_122_2635_n1), .ZN(
        n271) );
  INVD0 U237 ( .I(y[23]), .ZN(n203) );
  CKAN2D0 U238 ( .A1(n203), .A2(divide_mode), .Z(n231) );
  OR2D0 U239 ( .A1(n231), .A2(DP_OP_58J2_123_7635_n43), .Z(
        DP_OP_58J2_123_7635_n10) );
  INVD0 U240 ( .I(y[24]), .ZN(n204) );
  CKAN2D0 U241 ( .A1(n204), .A2(n56), .Z(n272) );
  INVD0 U242 ( .I(y[25]), .ZN(n205) );
  CKAN2D0 U243 ( .A1(n205), .A2(n279), .Z(n273) );
  INVD0 U244 ( .I(y[26]), .ZN(n206) );
  CKAN2D0 U245 ( .A1(n206), .A2(divide_mode), .Z(n274) );
  INVD0 U246 ( .I(y[27]), .ZN(n207) );
  CKAN2D0 U247 ( .A1(n207), .A2(n56), .Z(n275) );
  INVD0 U248 ( .I(y[28]), .ZN(n208) );
  CKAN2D0 U249 ( .A1(n208), .A2(n279), .Z(n276) );
  INVD0 U250 ( .I(y[29]), .ZN(n210) );
  CKAN2D0 U251 ( .A1(n210), .A2(n56), .Z(n277) );
  CKND2D0 U252 ( .A1(y[30]), .A2(n209), .ZN(n278) );
  CKND2D0 U253 ( .A1(n203), .A2(n34), .ZN(C2_Z_0) );
  CKND2D0 U254 ( .A1(n204), .A2(n35), .ZN(C2_Z_1) );
  CKND2D0 U255 ( .A1(n205), .A2(n34), .ZN(C2_Z_2) );
  CKND2D0 U256 ( .A1(n206), .A2(n35), .ZN(C2_Z_3) );
  CKND2D0 U257 ( .A1(n207), .A2(n34), .ZN(C2_Z_4) );
  CKND2D0 U258 ( .A1(n208), .A2(n35), .ZN(C2_Z_5) );
  CKND2D0 U259 ( .A1(n210), .A2(n34), .ZN(C2_Z_6) );
  INVD0 U260 ( .I(y[30]), .ZN(n211) );
  NR2D0 U261 ( .A1(n211), .A2(n209), .ZN(C2_Z_7) );
  OAI21D0 U262 ( .A1(n214), .A2(n54), .B(n32), .ZN(n148) );
  OAI21D0 U263 ( .A1(n106), .A2(n55), .B(n33), .ZN(n1520) );
  OAI21D0 U264 ( .A1(n215), .A2(n218), .B(n32), .ZN(n1510) );
  OAI21D0 U265 ( .A1(n109), .A2(n54), .B(n33), .ZN(n1530) );
  OAI21D0 U266 ( .A1(n117), .A2(n55), .B(n32), .ZN(n1540) );
  OAI21D0 U267 ( .A1(n113), .A2(n218), .B(n33), .ZN(n1550) );
  OAI21D0 U268 ( .A1(n216), .A2(n54), .B(n32), .ZN(n1500) );
  OAI21D0 U269 ( .A1(n99), .A2(n55), .B(n33), .ZN(n149) );
  AOI22D0 U270 ( .A1(core_value[23]), .A2(n53), .B1(core_value[22]), .B2(n219), 
        .ZN(n224) );
  AOI22D0 U271 ( .A1(core_value[20]), .A2(n222), .B1(core_value[19]), .B2(n221), .ZN(n223) );
  OA211D0 U272 ( .A1(n264), .A2(n225), .B(n224), .C(n223), .Z(n228) );
  INVD0 U273 ( .I(invalid_s6), .ZN(n226) );
  OAI21D0 U274 ( .A1(n228), .A2(n227), .B(n226), .ZN(n1560) );
  AOI221D0 U275 ( .A1(n266), .A2(n230), .B1(n268), .B2(n230), .C(n229), .ZN(
        invalid_operation) );
  XOR2D0 U276 ( .A1(y[31]), .A2(x[31]), .Z(sign_out) );
  INR2D0 U277 ( .A1(finite_result_31_), .B1(invalid_s6), .ZN(N181) );
  XNR2D0 U278 ( .A1(DP_OP_58J2_123_7635_n43), .A2(n231), .ZN(N62) );
  XNR2D0 U279 ( .A1(DP_OP_57J2_122_2635_n1), .A2(DP_OP_58J2_123_7635_n3), .ZN(
        N70) );
  AO22D0 U280 ( .A1(core_value[1]), .A2(n28), .B1(n4), .B2(n26), .Z(N150) );
  AOI22D0 U281 ( .A1(n7), .A2(n46), .B1(n8), .B2(n50), .ZN(n233) );
  AOI22D0 U282 ( .A1(core_value[1]), .A2(n31), .B1(n4), .B2(n259), .ZN(n232)
         );
  INVD0 U283 ( .I(core_value[2]), .ZN(n236) );
  AOI22D0 U284 ( .A1(core_value[1]), .A2(n42), .B1(core_value[3]), .B2(n30), 
        .ZN(n235) );
  AOI22D0 U285 ( .A1(core_value[4]), .A2(n45), .B1(core_value[5]), .B2(n48), 
        .ZN(n234) );
  INVD0 U286 ( .I(core_value[6]), .ZN(n239) );
  AOI22D0 U287 ( .A1(n12), .A2(n620), .B1(core_value[5]), .B2(n2), .ZN(n238)
         );
  AOI22D0 U288 ( .A1(core_value[8]), .A2(n47), .B1(core_value[9]), .B2(n27), 
        .ZN(n237) );
  INVD0 U289 ( .I(core_value[10]), .ZN(n242) );
  AOI22D0 U290 ( .A1(n16), .A2(n630), .B1(core_value[9]), .B2(n41), .ZN(n241)
         );
  AOI22D0 U291 ( .A1(n17), .A2(n46), .B1(core_value[13]), .B2(n48), .ZN(n240)
         );
  INVD0 U292 ( .I(core_value[11]), .ZN(n245) );
  AOI22D0 U293 ( .A1(core_value[12]), .A2(n31), .B1(core_value[10]), .B2(n42), 
        .ZN(n244) );
  AOI22D0 U294 ( .A1(n18), .A2(n45), .B1(core_value[14]), .B2(n51), .ZN(n243)
         );
  OAI211D0 U295 ( .A1(n245), .A2(n57), .B(n244), .C(n243), .ZN(N163) );
  INVD0 U296 ( .I(core_value[13]), .ZN(n248) );
  AOI22D0 U297 ( .A1(core_value[12]), .A2(n43), .B1(core_value[14]), .B2(n61), 
        .ZN(n247) );
  AOI22D0 U298 ( .A1(core_value[15]), .A2(n47), .B1(core_value[16]), .B2(n48), 
        .ZN(n246) );
  INVD0 U299 ( .I(core_value[16]), .ZN(n252) );
  AOI22D0 U300 ( .A1(core_value[15]), .A2(n258), .B1(core_value[17]), .B2(n61), 
        .ZN(n250) );
  AOI22D0 U301 ( .A1(core_value[18]), .A2(n26), .B1(n24), .B2(n49), .ZN(n249)
         );
  AOI22D0 U302 ( .A1(n24), .A2(n640), .B1(core_value[17]), .B2(n43), .ZN(n255)
         );
  AOI22D0 U303 ( .A1(n23), .A2(n259), .B1(n6), .B2(n25), .ZN(n254) );
  OAI211D0 U304 ( .A1(n264), .A2(n256), .B(n255), .C(n254), .ZN(N170) );
  AOI22D0 U305 ( .A1(core_value[18]), .A2(n2), .B1(core_value[20]), .B2(n61), 
        .ZN(n262) );
  AOI22D0 U306 ( .A1(core_value[22]), .A2(n50), .B1(core_value[19]), .B2(n259), 
        .ZN(n261) );
  OAI211D0 U307 ( .A1(n264), .A2(n263), .B(n262), .C(n261), .ZN(N171) );
  OAI222D0 U308 ( .A1(n270), .A2(n269), .B1(n268), .B2(n267), .C1(n266), .C2(
        n265), .ZN(zero_result) );
endmodule


module oadm_dm_eq_l1 ( clk, x, y, divide_mode, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  input clk, divide_mode;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64;

  oadm_dm_eq1011_APPROX_LEVEL1 impl ( .clk(clk), .x({x[31:22], n22, n6, n18, 
        n17, n15, n9, n5, n13, n12, n8, n10, n11, n7, n14, n4, n3, n16, n2, n1, 
        n26, x[1:0]}), .y({y[31:22], n19, n44, n42, n40, n52, n50, n38, n62, 
        n60, n48, n54, n58, n46, n56, n36, n30, n32, n34, n64, n24, n28, n20}), 
        .divide_mode(divide_mode), .result(result) );
  INVD0 U1 ( .I(n29), .ZN(n30) );
  INVD0 U2 ( .I(n31), .ZN(n32) );
  INVD0 U3 ( .I(n35), .ZN(n36) );
  INVD0 U4 ( .I(n63), .ZN(n64) );
  INVD0 U5 ( .I(n53), .ZN(n54) );
  INVD0 U6 ( .I(n49), .ZN(n50) );
  INVD1 U7 ( .I(n27), .ZN(n28) );
  INVD1 U8 ( .I(n45), .ZN(n46) );
  INVD1 U9 ( .I(n55), .ZN(n56) );
  BUFFD1 U10 ( .I(x[7]), .Z(n4) );
  INVD1 U11 ( .I(n51), .ZN(n52) );
  INVD1 U12 ( .I(n47), .ZN(n48) );
  INVD1 U13 ( .I(n61), .ZN(n62) );
  INVD1 U14 ( .I(n59), .ZN(n60) );
  INVD1 U15 ( .I(n57), .ZN(n58) );
  INVD1 U16 ( .I(n43), .ZN(n44) );
  INVD1 U17 ( .I(n37), .ZN(n38) );
  INVD1 U18 ( .I(n39), .ZN(n40) );
  INVD1 U19 ( .I(n41), .ZN(n42) );
  INVD0 U20 ( .I(y[3]), .ZN(n63) );
  BUFFD1 U21 ( .I(x[3]), .Z(n1) );
  BUFFD1 U22 ( .I(x[4]), .Z(n2) );
  BUFFD1 U23 ( .I(x[6]), .Z(n3) );
  BUFFD1 U24 ( .I(x[15]), .Z(n5) );
  BUFFD1 U25 ( .I(x[20]), .Z(n6) );
  BUFFD1 U26 ( .I(x[9]), .Z(n7) );
  BUFFD1 U27 ( .I(x[12]), .Z(n8) );
  BUFFD1 U28 ( .I(x[16]), .Z(n9) );
  BUFFD1 U29 ( .I(x[11]), .Z(n10) );
  BUFFD1 U30 ( .I(x[10]), .Z(n11) );
  BUFFD1 U31 ( .I(x[13]), .Z(n12) );
  BUFFD1 U32 ( .I(x[14]), .Z(n13) );
  BUFFD1 U33 ( .I(x[8]), .Z(n14) );
  BUFFD1 U34 ( .I(x[17]), .Z(n15) );
  BUFFD1 U35 ( .I(x[5]), .Z(n16) );
  BUFFD1 U36 ( .I(x[18]), .Z(n17) );
  BUFFD1 U37 ( .I(x[19]), .Z(n18) );
  BUFFD1 U38 ( .I(y[21]), .Z(n19) );
  BUFFD1 U39 ( .I(y[0]), .Z(n20) );
  BUFFD1 U40 ( .I(x[21]), .Z(n22) );
  INVD0 U41 ( .I(y[2]), .ZN(n23) );
  INVD0 U42 ( .I(n23), .ZN(n24) );
  INVD0 U43 ( .I(x[2]), .ZN(n25) );
  INVD0 U44 ( .I(n25), .ZN(n26) );
  INVD0 U45 ( .I(y[1]), .ZN(n27) );
  INVD0 U46 ( .I(y[6]), .ZN(n29) );
  INVD0 U47 ( .I(y[5]), .ZN(n31) );
  INVD0 U48 ( .I(y[4]), .ZN(n33) );
  INVD0 U49 ( .I(n33), .ZN(n34) );
  INVD0 U50 ( .I(y[7]), .ZN(n35) );
  INVD0 U51 ( .I(y[15]), .ZN(n37) );
  INVD0 U52 ( .I(y[18]), .ZN(n39) );
  INVD0 U53 ( .I(y[19]), .ZN(n41) );
  INVD0 U54 ( .I(y[20]), .ZN(n43) );
  INVD0 U55 ( .I(y[9]), .ZN(n45) );
  INVD0 U56 ( .I(y[12]), .ZN(n47) );
  INVD0 U57 ( .I(y[16]), .ZN(n49) );
  INVD0 U58 ( .I(y[17]), .ZN(n51) );
  INVD0 U59 ( .I(y[11]), .ZN(n53) );
  INVD0 U60 ( .I(y[8]), .ZN(n55) );
  INVD0 U61 ( .I(y[10]), .ZN(n57) );
  INVD0 U62 ( .I(y[13]), .ZN(n59) );
  INVD0 U63 ( .I(y[14]), .ZN(n61) );
endmodule

