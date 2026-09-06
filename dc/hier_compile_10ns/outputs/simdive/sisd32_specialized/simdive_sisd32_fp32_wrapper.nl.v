/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Thu Sep  3 16:02:37 2026
/////////////////////////////////////////////////////////////


module simdive_sisd32_lod_0 ( a, pos );
  input [31:0] a;
  output [4:0] pos;
  wire   n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n1,
         n2, n3, n4, n5;

  AN2XD1 U9 ( .A1(n7), .A2(n25), .Z(n13) );
  AN3XD1 U15 ( .A1(n10), .A2(n42), .A3(a[3]), .Z(n19) );
  AN2XD1 U18 ( .A1(n10), .A2(n42), .Z(n43) );
  AN3XD1 U20 ( .A1(n14), .A2(n42), .A3(a[5]), .Z(n41) );
  AN2XD1 U22 ( .A1(a[7]), .A2(n42), .Z(n39) );
  AN2XD1 U23 ( .A1(n6), .A2(n44), .Z(n42) );
  AN2XD1 U25 ( .A1(a[9]), .A2(n44), .Z(n38) );
  AN3XD1 U26 ( .A1(n8), .A2(n4), .A3(n7), .Z(n44) );
  AN3XD1 U28 ( .A1(n8), .A2(n4), .A3(a[11]), .Z(n37) );
  AN4XD1 U29 ( .A1(n45), .A2(n36), .A3(n17), .A4(n35), .Z(n8) );
  AN3XD1 U37 ( .A1(n9), .A2(n20), .A3(n11), .Z(n46) );
  AN3XD1 U40 ( .A1(n25), .A2(n9), .A3(a[21]), .Z(n34) );
  AN2XD1 U42 ( .A1(a[23]), .A2(n9), .Z(n32) );
  AN3XD1 U44 ( .A1(n47), .A2(n21), .A3(a[25]), .Z(n31) );
  OR2D1 U49 ( .A1(a[30]), .A2(a[31]), .Z(n23) );
  INVD1 U3 ( .I(pos[4]), .ZN(n4) );
  ND4D1 U4 ( .A1(n26), .A2(n27), .A3(n28), .A4(n29), .ZN(pos[0]) );
  NR4D0 U5 ( .A1(a[31]), .A2(n30), .A3(n31), .A4(n32), .ZN(n29) );
  IINR4D0 U6 ( .A1(n33), .A2(n20), .B1(n34), .B2(n3), .ZN(n28) );
  ND4D1 U7 ( .A1(n13), .A2(n14), .A3(n15), .A4(n16), .ZN(pos[1]) );
  INR4D0 U8 ( .A1(n17), .B1(n18), .B2(n19), .B3(n3), .ZN(n16) );
  ND4D1 U10 ( .A1(n10), .A2(n8), .A3(n11), .A4(n12), .ZN(pos[2]) );
  INR4D0 U11 ( .A1(n36), .B1(n37), .B2(n38), .B3(n39), .ZN(n27) );
  ND4D1 U12 ( .A1(n6), .A2(n7), .A3(n8), .A4(n9), .ZN(pos[3]) );
  INVD1 U13 ( .I(n35), .ZN(n3) );
  ND3D1 U14 ( .A1(n20), .A2(n21), .A3(n22), .ZN(n18) );
  IINR4D0 U16 ( .A1(n47), .A2(n21), .B1(a[24]), .B2(n31), .ZN(n9) );
  IND4D2 U17 ( .A1(a[16]), .B1(n22), .B2(n46), .B3(n33), .ZN(pos[4]) );
  AOI211XD0 U19 ( .A1(a[20]), .A2(n9), .B(n34), .C(n5), .ZN(n11) );
  INVD1 U21 ( .I(n25), .ZN(n5) );
  NR3D0 U24 ( .A1(a[28]), .A2(n30), .A3(n23), .ZN(n12) );
  AOI211XD0 U27 ( .A1(a[4]), .A2(n42), .B(n41), .C(n2), .ZN(n10) );
  INVD1 U30 ( .I(n14), .ZN(n2) );
  AOI21D1 U31 ( .A1(a[22]), .A2(n9), .B(n32), .ZN(n25) );
  ND2D1 U32 ( .A1(a[12]), .A2(n4), .ZN(n45) );
  AOI31D1 U33 ( .A1(n8), .A2(n4), .A3(a[10]), .B(n37), .ZN(n7) );
  AOI21D1 U34 ( .A1(a[6]), .A2(n42), .B(n39), .ZN(n14) );
  AOI21D1 U35 ( .A1(a[8]), .A2(n44), .B(n38), .ZN(n6) );
  ND2D1 U36 ( .A1(a[18]), .A2(n46), .ZN(n22) );
  ND3D1 U38 ( .A1(n46), .A2(n22), .A3(a[17]), .ZN(n33) );
  INR2D1 U39 ( .A1(n12), .B1(a[27]), .ZN(n47) );
  INR3D0 U41 ( .A1(n40), .B1(n41), .B2(n19), .ZN(n26) );
  AOI32D1 U43 ( .A1(n43), .A2(n24), .A3(a[1]), .B1(a[27]), .B2(n12), .ZN(n40)
         );
  INR2D1 U45 ( .A1(a[29]), .B1(n23), .ZN(n30) );
  ND3D1 U46 ( .A1(n17), .A2(n4), .A3(a[13]), .ZN(n36) );
  ND2D1 U47 ( .A1(a[14]), .A2(n4), .ZN(n17) );
  ND2D1 U48 ( .A1(a[26]), .A2(n47), .ZN(n21) );
  ND2D1 U50 ( .A1(a[2]), .A2(n43), .ZN(n24) );
  ND3D1 U51 ( .A1(n11), .A2(n9), .A3(a[19]), .ZN(n20) );
  ND2D1 U52 ( .A1(a[15]), .A2(n4), .ZN(n35) );
  AOI211XD0 U53 ( .A1(a[27]), .A2(n12), .B(n23), .C(n1), .ZN(n15) );
  INVD1 U54 ( .I(n24), .ZN(n1) );
endmodule


module simdive_sisd32_set_frac_0 ( a, lod_pos, out0 );
  input [31:0] a;
  input [4:0] lod_pos;
  output [31:0] out0;
  wire   n1, n2, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135;

  ND2D1 U2 ( .A1(n73), .A2(lod_pos[3]), .ZN(n34) );
  ND2D1 U3 ( .A1(n80), .A2(lod_pos[3]), .ZN(n51) );
  ND2D1 U4 ( .A1(n41), .A2(lod_pos[3]), .ZN(n112) );
  ND2D1 U5 ( .A1(n46), .A2(lod_pos[3]), .ZN(n129) );
  ND2D1 U6 ( .A1(n52), .A2(lod_pos[3]), .ZN(n130) );
  ND2D1 U7 ( .A1(n57), .A2(lod_pos[3]), .ZN(n131) );
  ND2D1 U8 ( .A1(n62), .A2(lod_pos[3]), .ZN(n132) );
  ND2D1 U9 ( .A1(n67), .A2(lod_pos[3]), .ZN(n133) );
  CKBD1 U11 ( .I(lod_pos[0]), .Z(n2) );
  CKBD1 U12 ( .I(lod_pos[0]), .Z(n1) );
  CKBD1 U13 ( .I(lod_pos[1]), .Z(n4) );
  CKBD1 U14 ( .I(lod_pos[1]), .Z(n5) );
  INR2D1 U15 ( .A1(lod_pos[2]), .B1(n11), .ZN(n73) );
  INR2D1 U16 ( .A1(lod_pos[2]), .B1(n35), .ZN(n80) );
  INR2D1 U17 ( .A1(lod_pos[2]), .B1(n22), .ZN(n41) );
  INR2D1 U18 ( .A1(lod_pos[2]), .B1(n26), .ZN(n46) );
  ND2D1 U19 ( .A1(n15), .A2(n4), .ZN(n35) );
  INVD1 U20 ( .I(n122), .ZN(n7) );
  ND2D1 U21 ( .A1(n8), .A2(n4), .ZN(n11) );
  INVD1 U22 ( .I(lod_pos[4]), .ZN(n6) );
  MUX2D0 U23 ( .I0(a[1]), .I1(a[2]), .S(lod_pos[0]), .Z(n10) );
  MUX2D0 U24 ( .I0(a[3]), .I1(a[4]), .S(lod_pos[0]), .Z(n9) );
  MUX2D0 U25 ( .I0(a[2]), .I1(a[3]), .S(n2), .Z(n17) );
  MUX2D0 U26 ( .I0(a[7]), .I1(a[8]), .S(n2), .Z(n12) );
  MUX2D0 U27 ( .I0(a[5]), .I1(a[6]), .S(lod_pos[0]), .Z(n13) );
  MUX2D0 U28 ( .I0(a[4]), .I1(a[5]), .S(n2), .Z(n16) );
  MUX2D0 U29 ( .I0(a[0]), .I1(a[1]), .S(n2), .Z(n15) );
  MUX2D0 U30 ( .I0(a[6]), .I1(a[7]), .S(n2), .Z(n19) );
  MUX2D0 U31 ( .I0(a[9]), .I1(a[10]), .S(n2), .Z(n14) );
  MUX2D0 U32 ( .I0(a[11]), .I1(a[12]), .S(n2), .Z(n23) );
  MUX2D0 U33 ( .I0(a[8]), .I1(a[9]), .S(n2), .Z(n18) );
  MUX2D0 U34 ( .I0(a[10]), .I1(a[11]), .S(n2), .Z(n20) );
  MUX2D0 U35 ( .I0(a[13]), .I1(a[14]), .S(n2), .Z(n31) );
  MUX2D0 U36 ( .I0(a[12]), .I1(a[13]), .S(n2), .Z(n27) );
  MUX2D0 U37 ( .I0(a[15]), .I1(a[16]), .S(n1), .Z(n42) );
  MUX2D0 U38 ( .I0(a[14]), .I1(a[15]), .S(n2), .Z(n38) );
  MUX2D0 U39 ( .I0(a[17]), .I1(a[18]), .S(n1), .Z(n53) );
  MUX2D0 U40 ( .I0(a[19]), .I1(a[20]), .S(n1), .Z(n63) );
  MUX2D0 U41 ( .I0(a[16]), .I1(a[17]), .S(n1), .Z(n47) );
  MUX2D0 U42 ( .I0(a[18]), .I1(a[19]), .S(n1), .Z(n58) );
  MUX2D0 U43 ( .I0(a[21]), .I1(a[22]), .S(n1), .Z(n74) );
  MUX2D0 U44 ( .I0(a[23]), .I1(a[24]), .S(n1), .Z(n86) );
  MUX2D0 U45 ( .I0(a[20]), .I1(a[21]), .S(n1), .Z(n68) );
  MUX2D0 U46 ( .I0(a[22]), .I1(a[23]), .S(n1), .Z(n81) );
  MUX2D0 U47 ( .I0(a[25]), .I1(a[26]), .S(n1), .Z(n98) );
  MUX2D0 U48 ( .I0(a[24]), .I1(a[25]), .S(n1), .Z(n92) );
  MUX2D0 U49 ( .I0(a[27]), .I1(a[28]), .S(n1), .Z(n114) );
  MUX2D0 U50 ( .I0(a[26]), .I1(a[27]), .S(n1), .Z(n105) );
  MUX2D0 U51 ( .I0(a[29]), .I1(a[30]), .S(n2), .Z(n113) );
  MUX2D0 U52 ( .I0(n122), .I1(n121), .S(n4), .Z(n123) );
  NR2D1 U53 ( .A1(n134), .A2(n6), .ZN(out0[8]) );
  NR2D1 U54 ( .A1(n135), .A2(n6), .ZN(out0[9]) );
  NR2D1 U55 ( .A1(n91), .A2(n6), .ZN(out0[10]) );
  NR2D1 U56 ( .A1(n97), .A2(n6), .ZN(out0[11]) );
  NR2D1 U57 ( .A1(n104), .A2(n6), .ZN(out0[12]) );
  NR2D1 U58 ( .A1(n111), .A2(n6), .ZN(out0[13]) );
  NR2D1 U59 ( .A1(n120), .A2(n6), .ZN(out0[14]) );
  NR2D1 U60 ( .A1(n127), .A2(n6), .ZN(out0[15]) );
  NR2D1 U61 ( .A1(n6), .A2(n34), .ZN(out0[0]) );
  NR2D1 U62 ( .A1(n6), .A2(n51), .ZN(out0[1]) );
  NR2D1 U63 ( .A1(n6), .A2(n112), .ZN(out0[2]) );
  NR2D1 U64 ( .A1(n6), .A2(n129), .ZN(out0[3]) );
  NR2D1 U65 ( .A1(n6), .A2(n130), .ZN(out0[4]) );
  NR2D1 U66 ( .A1(n6), .A2(n131), .ZN(out0[5]) );
  NR2D1 U67 ( .A1(n6), .A2(n132), .ZN(out0[6]) );
  NR2D1 U68 ( .A1(n6), .A2(n133), .ZN(out0[7]) );
  AN2XD1 U69 ( .A1(a[0]), .A2(lod_pos[0]), .Z(n8) );
  MUX2ND0 U70 ( .I0(n8), .I1(n10), .S(n4), .ZN(n22) );
  MUX2ND0 U71 ( .I0(n9), .I1(n13), .S(n4), .ZN(n21) );
  MUX2ND0 U72 ( .I0(n12), .I1(n14), .S(n4), .ZN(n24) );
  MUX2ND0 U73 ( .I0(n21), .I1(n24), .S(lod_pos[2]), .ZN(n44) );
  MUX2ND0 U74 ( .I0(n41), .I1(n44), .S(lod_pos[3]), .ZN(n91) );
  MUX2ND0 U75 ( .I0(n15), .I1(n17), .S(n4), .ZN(n26) );
  MUX2ND0 U76 ( .I0(n16), .I1(n19), .S(n4), .ZN(n25) );
  MUX2ND0 U77 ( .I0(n18), .I1(n20), .S(n5), .ZN(n28) );
  MUX2ND0 U78 ( .I0(n25), .I1(n28), .S(lod_pos[2]), .ZN(n49) );
  MUX2ND0 U79 ( .I0(n46), .I1(n49), .S(lod_pos[3]), .ZN(n97) );
  MUX2ND0 U80 ( .I0(n10), .I1(n9), .S(n4), .ZN(n30) );
  MUX2ND0 U81 ( .I0(n11), .I1(n30), .S(lod_pos[2]), .ZN(n52) );
  MUX2ND0 U82 ( .I0(n13), .I1(n12), .S(n4), .ZN(n29) );
  MUX2ND0 U83 ( .I0(n14), .I1(n23), .S(n4), .ZN(n32) );
  MUX2ND0 U84 ( .I0(n29), .I1(n32), .S(lod_pos[2]), .ZN(n55) );
  MUX2ND0 U85 ( .I0(n52), .I1(n55), .S(lod_pos[3]), .ZN(n104) );
  MUX2ND0 U86 ( .I0(n17), .I1(n16), .S(n4), .ZN(n37) );
  MUX2ND0 U87 ( .I0(n35), .I1(n37), .S(lod_pos[2]), .ZN(n57) );
  MUX2ND0 U88 ( .I0(n19), .I1(n18), .S(n4), .ZN(n36) );
  MUX2ND0 U89 ( .I0(n20), .I1(n27), .S(n4), .ZN(n39) );
  MUX2ND0 U90 ( .I0(n36), .I1(n39), .S(lod_pos[2]), .ZN(n60) );
  MUX2ND0 U91 ( .I0(n57), .I1(n60), .S(lod_pos[3]), .ZN(n111) );
  MUX2ND0 U92 ( .I0(n22), .I1(n21), .S(lod_pos[2]), .ZN(n62) );
  MUX2ND0 U93 ( .I0(n23), .I1(n31), .S(n4), .ZN(n43) );
  MUX2ND0 U94 ( .I0(n24), .I1(n43), .S(lod_pos[2]), .ZN(n65) );
  MUX2ND0 U95 ( .I0(n62), .I1(n65), .S(lod_pos[3]), .ZN(n120) );
  MUX2ND0 U96 ( .I0(n26), .I1(n25), .S(lod_pos[2]), .ZN(n67) );
  MUX2ND0 U97 ( .I0(n27), .I1(n38), .S(n5), .ZN(n48) );
  MUX2ND0 U98 ( .I0(n28), .I1(n48), .S(lod_pos[2]), .ZN(n70) );
  MUX2ND0 U99 ( .I0(n67), .I1(n70), .S(lod_pos[3]), .ZN(n127) );
  MUX2ND0 U100 ( .I0(n30), .I1(n29), .S(lod_pos[2]), .ZN(n72) );
  MUX2ND0 U101 ( .I0(n31), .I1(n42), .S(n5), .ZN(n54) );
  MUX2ND0 U102 ( .I0(n32), .I1(n54), .S(lod_pos[2]), .ZN(n77) );
  MUX2ND0 U103 ( .I0(n72), .I1(n77), .S(lod_pos[3]), .ZN(n33) );
  MUX2ND0 U104 ( .I0(n34), .I1(n33), .S(lod_pos[4]), .ZN(out0[16]) );
  MUX2ND0 U105 ( .I0(n37), .I1(n36), .S(lod_pos[2]), .ZN(n79) );
  MUX2ND0 U106 ( .I0(n38), .I1(n47), .S(n5), .ZN(n59) );
  MUX2ND0 U107 ( .I0(n39), .I1(n59), .S(lod_pos[2]), .ZN(n84) );
  MUX2ND0 U108 ( .I0(n79), .I1(n84), .S(lod_pos[3]), .ZN(n40) );
  MUX2ND0 U109 ( .I0(n51), .I1(n40), .S(lod_pos[4]), .ZN(out0[17]) );
  MUX2ND0 U110 ( .I0(n42), .I1(n53), .S(n5), .ZN(n64) );
  MUX2ND0 U111 ( .I0(n43), .I1(n64), .S(lod_pos[2]), .ZN(n89) );
  MUX2ND0 U112 ( .I0(n44), .I1(n89), .S(lod_pos[3]), .ZN(n45) );
  MUX2ND0 U113 ( .I0(n112), .I1(n45), .S(lod_pos[4]), .ZN(out0[18]) );
  MUX2ND0 U114 ( .I0(n47), .I1(n58), .S(n5), .ZN(n69) );
  MUX2ND0 U115 ( .I0(n48), .I1(n69), .S(lod_pos[2]), .ZN(n95) );
  MUX2ND0 U116 ( .I0(n49), .I1(n95), .S(lod_pos[3]), .ZN(n50) );
  MUX2ND0 U117 ( .I0(n129), .I1(n50), .S(lod_pos[4]), .ZN(out0[19]) );
  MUX2ND0 U118 ( .I0(n53), .I1(n63), .S(n5), .ZN(n75) );
  MUX2ND0 U119 ( .I0(n54), .I1(n75), .S(lod_pos[2]), .ZN(n102) );
  MUX2ND0 U120 ( .I0(n55), .I1(n102), .S(lod_pos[3]), .ZN(n56) );
  MUX2ND0 U121 ( .I0(n130), .I1(n56), .S(lod_pos[4]), .ZN(out0[20]) );
  MUX2ND0 U122 ( .I0(n58), .I1(n68), .S(n5), .ZN(n82) );
  MUX2ND0 U123 ( .I0(n59), .I1(n82), .S(lod_pos[2]), .ZN(n109) );
  MUX2ND0 U124 ( .I0(n60), .I1(n109), .S(lod_pos[3]), .ZN(n61) );
  MUX2ND0 U125 ( .I0(n131), .I1(n61), .S(lod_pos[4]), .ZN(out0[21]) );
  MUX2ND0 U126 ( .I0(n63), .I1(n74), .S(n5), .ZN(n87) );
  MUX2ND0 U127 ( .I0(n64), .I1(n87), .S(lod_pos[2]), .ZN(n118) );
  MUX2ND0 U128 ( .I0(n65), .I1(n118), .S(lod_pos[3]), .ZN(n66) );
  MUX2ND0 U129 ( .I0(n132), .I1(n66), .S(lod_pos[4]), .ZN(out0[22]) );
  MUX2ND0 U130 ( .I0(n68), .I1(n81), .S(n5), .ZN(n93) );
  MUX2ND0 U131 ( .I0(n69), .I1(n93), .S(lod_pos[2]), .ZN(n126) );
  MUX2ND0 U132 ( .I0(n70), .I1(n126), .S(lod_pos[3]), .ZN(n71) );
  MUX2ND0 U133 ( .I0(n133), .I1(n71), .S(lod_pos[4]), .ZN(out0[23]) );
  MUX2ND0 U134 ( .I0(n73), .I1(n72), .S(lod_pos[3]), .ZN(n134) );
  MUX2ND0 U135 ( .I0(n74), .I1(n86), .S(n5), .ZN(n100) );
  MUX2ND0 U136 ( .I0(n75), .I1(n100), .S(lod_pos[2]), .ZN(n76) );
  MUX2ND0 U137 ( .I0(n77), .I1(n76), .S(lod_pos[3]), .ZN(n78) );
  MUX2ND0 U138 ( .I0(n134), .I1(n78), .S(lod_pos[4]), .ZN(out0[24]) );
  MUX2ND0 U139 ( .I0(n80), .I1(n79), .S(lod_pos[3]), .ZN(n135) );
  MUX2ND0 U140 ( .I0(n81), .I1(n92), .S(n5), .ZN(n107) );
  MUX2ND0 U141 ( .I0(n82), .I1(n107), .S(lod_pos[2]), .ZN(n83) );
  MUX2ND0 U142 ( .I0(n84), .I1(n83), .S(lod_pos[3]), .ZN(n85) );
  MUX2ND0 U143 ( .I0(n135), .I1(n85), .S(lod_pos[4]), .ZN(out0[25]) );
  MUX2ND0 U144 ( .I0(n86), .I1(n98), .S(n5), .ZN(n116) );
  MUX2ND0 U145 ( .I0(n87), .I1(n116), .S(lod_pos[2]), .ZN(n88) );
  MUX2ND0 U146 ( .I0(n89), .I1(n88), .S(lod_pos[3]), .ZN(n90) );
  MUX2ND0 U147 ( .I0(n91), .I1(n90), .S(lod_pos[4]), .ZN(out0[26]) );
  MUX2ND0 U148 ( .I0(n92), .I1(n105), .S(n5), .ZN(n124) );
  MUX2ND0 U149 ( .I0(n93), .I1(n124), .S(lod_pos[2]), .ZN(n94) );
  MUX2ND0 U150 ( .I0(n95), .I1(n94), .S(lod_pos[3]), .ZN(n96) );
  MUX2ND0 U151 ( .I0(n97), .I1(n96), .S(lod_pos[4]), .ZN(out0[27]) );
  MUX2ND0 U152 ( .I0(n98), .I1(n114), .S(n5), .ZN(n99) );
  MUX2ND0 U153 ( .I0(n100), .I1(n99), .S(lod_pos[2]), .ZN(n101) );
  MUX2ND0 U154 ( .I0(n102), .I1(n101), .S(lod_pos[3]), .ZN(n103) );
  MUX2ND0 U155 ( .I0(n104), .I1(n103), .S(lod_pos[4]), .ZN(out0[28]) );
  MUX2ND0 U157 ( .I0(n105), .I1(n7), .S(n5), .ZN(n106) );
  MUX2ND0 U158 ( .I0(n107), .I1(n106), .S(lod_pos[2]), .ZN(n108) );
  MUX2ND0 U159 ( .I0(n109), .I1(n108), .S(lod_pos[3]), .ZN(n110) );
  MUX2ND0 U160 ( .I0(n111), .I1(n110), .S(lod_pos[4]), .ZN(out0[29]) );
  MUX2ND0 U161 ( .I0(n114), .I1(n113), .S(n4), .ZN(n115) );
  MUX2ND0 U162 ( .I0(n116), .I1(n115), .S(lod_pos[2]), .ZN(n117) );
  MUX2ND0 U163 ( .I0(n118), .I1(n117), .S(lod_pos[3]), .ZN(n119) );
  MUX2ND0 U164 ( .I0(n120), .I1(n119), .S(lod_pos[4]), .ZN(out0[30]) );
  MUX2ND0 U165 ( .I0(a[30]), .I1(a[31]), .S(lod_pos[0]), .ZN(n121) );
  MUX2ND0 U166 ( .I0(n124), .I1(n123), .S(lod_pos[2]), .ZN(n125) );
  MUX2ND0 U167 ( .I0(n126), .I1(n125), .S(lod_pos[3]), .ZN(n128) );
  MUX2ND0 U168 ( .I0(n128), .I1(n127), .S(n6), .ZN(out0[31]) );
  MUX2ND0 U10 ( .I0(a[28]), .I1(a[29]), .S(lod_pos[0]), .ZN(n122) );
endmodule


module simdive_sisd32_set_frac_1 ( a, lod_pos, out0 );
  input [31:0] a;
  input [4:0] lod_pos;
  output [31:0] out0;
  wire   n35, n42, n47, n52, n58, n63, n68, n73, n80, n87, n92, n93, n98, n99,
         n105, n106, n112, n113, n121, n122, n129, n136, n137;

  INVD0 U2 ( .I(n129), .ZN(out0[15]) );
  INVD0 U3 ( .I(n122), .ZN(out0[14]) );
  INVD1 U4 ( .I(a[7]), .ZN(n129) );
  INVD0 U5 ( .I(n113), .ZN(out0[13]) );
  INVD1 U6 ( .I(a[6]), .ZN(n122) );
  INVD0 U7 ( .I(n106), .ZN(out0[12]) );
  INVD1 U8 ( .I(a[5]), .ZN(n113) );
  INVD0 U9 ( .I(n99), .ZN(out0[11]) );
  INVD1 U10 ( .I(a[4]), .ZN(n106) );
  INVD0 U11 ( .I(n93), .ZN(out0[10]) );
  INVD1 U12 ( .I(a[3]), .ZN(n99) );
  INVD0 U13 ( .I(n137), .ZN(out0[9]) );
  INVD1 U14 ( .I(a[2]), .ZN(n93) );
  INVD0 U15 ( .I(n136), .ZN(out0[8]) );
  INVD1 U16 ( .I(a[1]), .ZN(n137) );
  INVD1 U17 ( .I(a[0]), .ZN(n136) );
  CKND0 U18 ( .I(n98), .ZN(out0[27]) );
  CKND0 U19 ( .I(n92), .ZN(out0[26]) );
  INVD1 U20 ( .I(a[19]), .ZN(n98) );
  CKND0 U21 ( .I(n87), .ZN(out0[25]) );
  INVD1 U22 ( .I(a[18]), .ZN(n92) );
  CKND0 U23 ( .I(n80), .ZN(out0[24]) );
  INVD1 U24 ( .I(a[17]), .ZN(n87) );
  CKND0 U25 ( .I(n73), .ZN(out0[23]) );
  INVD1 U26 ( .I(a[16]), .ZN(n80) );
  CKND0 U27 ( .I(n68), .ZN(out0[22]) );
  INVD1 U28 ( .I(a[15]), .ZN(n73) );
  CKND0 U29 ( .I(n63), .ZN(out0[21]) );
  INVD1 U30 ( .I(a[14]), .ZN(n68) );
  CKND0 U31 ( .I(n58), .ZN(out0[20]) );
  INVD1 U32 ( .I(a[13]), .ZN(n63) );
  CKND0 U33 ( .I(n52), .ZN(out0[19]) );
  INVD1 U34 ( .I(a[12]), .ZN(n58) );
  CKND0 U35 ( .I(n47), .ZN(out0[18]) );
  INVD1 U36 ( .I(a[11]), .ZN(n52) );
  CKND0 U37 ( .I(n42), .ZN(out0[17]) );
  INVD1 U38 ( .I(a[10]), .ZN(n47) );
  CKND0 U39 ( .I(n35), .ZN(out0[16]) );
  INVD1 U40 ( .I(a[9]), .ZN(n42) );
  INVD1 U41 ( .I(a[8]), .ZN(n35) );
  INVD1 U42 ( .I(n112), .ZN(out0[29]) );
  INVD1 U43 ( .I(n105), .ZN(out0[28]) );
  INVD1 U44 ( .I(a[21]), .ZN(n112) );
  INVD1 U45 ( .I(n121), .ZN(out0[30]) );
  INVD1 U46 ( .I(a[20]), .ZN(n105) );
  INVD1 U47 ( .I(a[22]), .ZN(n121) );
endmodule


module simdive_sisd32_coeff ( divide_mode, frac_a, frac_b, error_coeff );
  input [2:0] frac_a;
  input [2:0] frac_b;
  output [31:0] error_coeff;
  input divide_mode;
  wire   n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
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
         n255, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n256,
         n257, n258, n259, n260, n261, n262, n263, n264, n265, n266, n267,
         n268, n269, n270, n271, n272, n273, n274, n275;

  AN2XD1 U4 ( .A1(n34), .A2(n35), .Z(n33) );
  AN4XD1 U13 ( .A1(n62), .A2(n63), .A3(n64), .A4(n65), .Z(n61) );
  AN4XD1 U31 ( .A1(n70), .A2(n59), .A3(n109), .A4(n110), .Z(n108) );
  AN3XD1 U38 ( .A1(n53), .A2(n42), .A3(n70), .Z(n125) );
  AN4XD1 U76 ( .A1(n171), .A2(n159), .A3(n80), .A4(n151), .Z(n183) );
  AN4XD1 U88 ( .A1(n35), .A2(n126), .A3(n55), .A4(n196), .Z(n136) );
  AN3XD1 U89 ( .A1(n109), .A2(n51), .A3(n98), .Z(n196) );
  AN2XD1 U90 ( .A1(n180), .A2(n127), .Z(n55) );
  AN3XD1 U123 ( .A1(n95), .A2(n190), .A3(n139), .Z(n221) );
  AN3XD1 U136 ( .A1(n54), .A2(n41), .A3(n67), .Z(n231) );
  AN3XD1 U142 ( .A1(n93), .A2(n69), .A3(n190), .Z(n210) );
  AN3XD1 U145 ( .A1(n178), .A2(n174), .A3(n106), .Z(n234) );
  AN2XD1 U148 ( .A1(n229), .A2(n213), .Z(n199) );
  MOAI22D1 U152 ( .A1(n236), .A2(n21), .B1(n21), .B2(n156), .ZN(
        error_coeff[16]) );
  AN4XD1 U154 ( .A1(n173), .A2(n172), .A3(n42), .A4(n87), .Z(n237) );
  AN3XD1 U157 ( .A1(n139), .A2(n71), .A3(n195), .Z(n117) );
  AN2XD1 U159 ( .A1(n239), .A2(n240), .Z(n198) );
  AN2XD1 U163 ( .A1(n241), .A2(n239), .Z(n37) );
  AN3XD1 U166 ( .A1(n217), .A2(n173), .A3(n180), .Z(n244) );
  AN2XD1 U171 ( .A1(n191), .A2(n175), .Z(n101) );
  AN2XD1 U172 ( .A1(n246), .A2(n240), .Z(n191) );
  AN3XD1 U185 ( .A1(n110), .A2(n174), .A3(n97), .Z(n248) );
  AN2XD1 U189 ( .A1(n251), .A2(n252), .Z(n176) );
  AN3XD1 U191 ( .A1(n178), .A2(n65), .A3(n51), .Z(n253) );
  AN2XD1 U199 ( .A1(n241), .A2(n251), .Z(n232) );
  AN2XD1 U200 ( .A1(n247), .A2(n192), .Z(n66) );
  AN2XD1 U201 ( .A1(n254), .A2(n246), .Z(n247) );
  AN2XD1 U203 ( .A1(n255), .A2(n252), .Z(n215) );
  AN2XD1 U205 ( .A1(n255), .A2(n241), .Z(n224) );
  AN3XD1 U206 ( .A1(n171), .A2(n62), .A3(n118), .Z(n188) );
  AN2XD1 U209 ( .A1(n254), .A2(n239), .Z(n227) );
  AN2XD1 U214 ( .A1(n254), .A2(n251), .Z(n245) );
  AN2XD1 U217 ( .A1(n252), .A2(n239), .Z(n229) );
  AN2XD1 U220 ( .A1(n241), .A2(n246), .Z(n235) );
  AN2XD1 U224 ( .A1(n246), .A2(n252), .Z(n238) );
  AN2XD1 U226 ( .A1(frac_a[2]), .A2(n273), .Z(n246) );
  AN2XD1 U229 ( .A1(n251), .A2(n240), .Z(n228) );
  AN2XD1 U233 ( .A1(n254), .A2(n255), .Z(n209) );
  AN2XD1 U237 ( .A1(n255), .A2(n240), .Z(n233) );
  AN2XD1 U239 ( .A1(frac_a[2]), .A2(frac_b[2]), .Z(n255) );
  INVD1 U25 ( .I(divide_mode), .ZN(n21) );
  INVD1 U26 ( .I(n150), .ZN(n24) );
  NR2D1 U27 ( .A1(n274), .A2(n275), .ZN(n252) );
  INVD1 U28 ( .I(n115), .ZN(n29) );
  IND4D1 U29 ( .A1(n83), .B1(n210), .B2(n211), .B3(n212), .ZN(n149) );
  NR2D1 U30 ( .A1(n30), .A2(n269), .ZN(n211) );
  NR4D0 U32 ( .A1(n268), .A2(n261), .A3(n260), .A4(n26), .ZN(n212) );
  NR2D1 U33 ( .A1(n269), .A2(n259), .ZN(n103) );
  NR3D0 U34 ( .A1(n262), .A2(n260), .A3(n265), .ZN(n35) );
  NR3D0 U35 ( .A1(n28), .A2(n23), .A3(n256), .ZN(n45) );
  INVD1 U36 ( .I(n122), .ZN(n258) );
  INR4D0 U37 ( .A1(n172), .B1(n66), .B2(n25), .B3(n265), .ZN(n230) );
  ND4D1 U39 ( .A1(n188), .A2(n195), .A3(n230), .A4(n253), .ZN(n150) );
  NR4D0 U40 ( .A1(n242), .A2(n243), .A3(n121), .A4(n163), .ZN(n236) );
  ND2D1 U41 ( .A1(n190), .A2(n106), .ZN(n243) );
  ND4D1 U42 ( .A1(n80), .A2(n216), .A3(n54), .A4(n94), .ZN(n242) );
  IND4D1 U43 ( .A1(n114), .B1(n24), .B2(n248), .B3(n249), .ZN(n121) );
  INR4D0 U44 ( .A1(n93), .B1(n250), .B2(n27), .B3(n262), .ZN(n249) );
  ND2D1 U45 ( .A1(n138), .A2(n63), .ZN(n250) );
  INVD1 U46 ( .I(n71), .ZN(n25) );
  NR2D1 U47 ( .A1(n274), .A2(frac_a[1]), .ZN(n254) );
  NR2D1 U48 ( .A1(frac_a[1]), .A2(frac_a[0]), .ZN(n241) );
  INVD1 U49 ( .I(n102), .ZN(n265) );
  INVD1 U50 ( .I(frac_a[1]), .ZN(n275) );
  INVD1 U51 ( .I(frac_a[0]), .ZN(n274) );
  NR2D1 U52 ( .A1(n275), .A2(frac_a[0]), .ZN(n240) );
  INR4D0 U53 ( .A1(n110), .B1(n225), .B2(n226), .B3(n147), .ZN(n218) );
  ND3D1 U54 ( .A1(n98), .A2(n119), .A3(n109), .ZN(n226) );
  IND4D1 U55 ( .A1(n131), .B1(n210), .B2(n230), .B3(n29), .ZN(n225) );
  IND4D1 U56 ( .A1(n135), .B1(n203), .B2(n50), .B3(n231), .ZN(n115) );
  NR3D0 U57 ( .A1(n267), .A2(n263), .A3(n101), .ZN(n58) );
  ND4D1 U58 ( .A1(n203), .A2(n159), .A3(n58), .A4(n244), .ZN(n163) );
  INVD1 U59 ( .I(n119), .ZN(n263) );
  ND3D1 U60 ( .A1(n52), .A2(n87), .A3(n217), .ZN(n135) );
  IND4D1 U61 ( .A1(n144), .B1(n34), .B2(n195), .B3(n234), .ZN(n131) );
  INVD1 U62 ( .I(n205), .ZN(n267) );
  INVD1 U63 ( .I(n181), .ZN(n262) );
  NR2D1 U64 ( .A1(n199), .A2(n264), .ZN(n34) );
  ND4D1 U65 ( .A1(n103), .A2(n195), .A3(n221), .A4(n222), .ZN(n170) );
  IINR4D0 U66 ( .A1(n87), .A2(n86), .B1(n223), .B2(n270), .ZN(n222) );
  ND2D1 U67 ( .A1(n42), .A2(n40), .ZN(n223) );
  INR4D0 U68 ( .A1(n178), .B1(n220), .B2(n143), .B3(n170), .ZN(n219) );
  ND2D1 U69 ( .A1(n109), .A2(n180), .ZN(n220) );
  INVD1 U70 ( .I(n127), .ZN(n270) );
  ND3D1 U71 ( .A1(n97), .A2(n86), .A3(n152), .ZN(n144) );
  IND4D1 U72 ( .A1(n143), .B1(n117), .B2(n203), .B3(n237), .ZN(n156) );
  INVD1 U73 ( .I(n68), .ZN(n27) );
  INVD1 U74 ( .I(n165), .ZN(n264) );
  ND2D1 U75 ( .A1(n95), .A2(n208), .ZN(n114) );
  ND2D1 U77 ( .A1(n96), .A2(n151), .ZN(n143) );
  NR4D0 U78 ( .A1(n206), .A2(n207), .A3(n149), .A4(n164), .ZN(n200) );
  ND4D1 U79 ( .A1(n97), .A2(n205), .A3(n62), .A4(n68), .ZN(n206) );
  ND2D1 U80 ( .A1(n258), .A2(n45), .ZN(n207) );
  ND4D1 U81 ( .A1(n104), .A2(n52), .A3(n214), .A4(n54), .ZN(n83) );
  NR2D1 U82 ( .A1(n199), .A2(n263), .ZN(n214) );
  INVD1 U83 ( .I(n69), .ZN(n259) );
  INVD1 U84 ( .I(n79), .ZN(n269) );
  INVD1 U85 ( .I(n63), .ZN(n26) );
  INVD1 U86 ( .I(n72), .ZN(n260) );
  INVD1 U87 ( .I(n41), .ZN(n268) );
  NR4D0 U91 ( .A1(n193), .A2(n194), .A3(n22), .A4(n257), .ZN(n184) );
  ND3D1 U92 ( .A1(n65), .A2(n68), .A3(n174), .ZN(n194) );
  IND4D1 U93 ( .A1(n162), .B1(n29), .B2(n136), .B3(n195), .ZN(n193) );
  NR4D0 U94 ( .A1(n202), .A2(n157), .A3(n134), .A4(n143), .ZN(n201) );
  ND3D1 U95 ( .A1(n119), .A2(n173), .A3(n52), .ZN(n202) );
  ND4D1 U96 ( .A1(n203), .A2(n50), .A3(n204), .A4(n65), .ZN(n134) );
  NR2D1 U97 ( .A1(n25), .A2(n26), .ZN(n204) );
  INVD1 U98 ( .I(n64), .ZN(n30) );
  INVD1 U99 ( .I(n94), .ZN(n261) );
  INVD1 U100 ( .I(n216), .ZN(n256) );
  INVD1 U101 ( .I(n171), .ZN(n23) );
  NR4D0 U102 ( .A1(n186), .A2(n187), .A3(n134), .A4(n158), .ZN(n185) );
  ND4D1 U103 ( .A1(n98), .A2(n70), .A3(n40), .A4(n173), .ZN(n186) );
  ND2D1 U104 ( .A1(n34), .A2(n190), .ZN(n187) );
  ND4D1 U105 ( .A1(n103), .A2(n95), .A3(n188), .A4(n189), .ZN(n158) );
  NR3D0 U106 ( .A1(n256), .A2(n268), .A3(n28), .ZN(n189) );
  ND4D1 U107 ( .A1(n152), .A2(n139), .A3(n197), .A4(n53), .ZN(n162) );
  NR2D1 U108 ( .A1(n199), .A2(n30), .ZN(n197) );
  INVD1 U109 ( .I(n217), .ZN(n28) );
  ND2D1 U110 ( .A1(n40), .A2(n123), .ZN(n147) );
  INR4D0 U111 ( .A1(n49), .B1(n169), .B2(n170), .B3(n77), .ZN(n168) );
  ND4D1 U112 ( .A1(n98), .A2(n171), .A3(n172), .A4(n173), .ZN(n169) );
  NR4D0 U113 ( .A1(n177), .A2(n115), .A3(n147), .A4(n92), .ZN(n167) );
  IND4D1 U114 ( .A1(n84), .B1(n152), .B2(n127), .B3(n181), .ZN(n177) );
  ND4D1 U115 ( .A1(n51), .A2(n62), .A3(n182), .A4(n183), .ZN(n84) );
  NR3D0 U116 ( .A1(n264), .A2(n261), .A3(n265), .ZN(n182) );
  ND3D1 U117 ( .A1(n205), .A2(n59), .A3(n174), .ZN(n157) );
  ND2D1 U118 ( .A1(n50), .A2(n86), .ZN(n122) );
  NR4D0 U119 ( .A1(n160), .A2(n161), .A3(n162), .A4(n163), .ZN(n153) );
  ND4D1 U120 ( .A1(n87), .A2(n41), .A3(n165), .A4(n166), .ZN(n160) );
  IND3D1 U121 ( .A1(n164), .B1(n24), .B2(n109), .ZN(n161) );
  NR2D1 U122 ( .A1(n259), .A2(n271), .ZN(n166) );
  ND3D1 U124 ( .A1(n123), .A2(n126), .A3(n208), .ZN(n164) );
  INR4D0 U125 ( .A1(n146), .B1(n147), .B2(n257), .B3(n271), .ZN(n107) );
  INR2D1 U126 ( .A1(n54), .B1(n27), .ZN(n146) );
  NR4D0 U127 ( .A1(n142), .A2(n143), .A3(n144), .A4(n132), .ZN(n141) );
  ND3D1 U128 ( .A1(n110), .A2(n93), .A3(n31), .ZN(n142) );
  ND4D1 U129 ( .A1(n107), .A2(n118), .A3(n145), .A4(n104), .ZN(n132) );
  NR2D1 U130 ( .A1(n268), .A2(n270), .ZN(n145) );
  INR2D1 U131 ( .A1(n174), .B1(n271), .ZN(n49) );
  ND4D1 U132 ( .A1(n178), .A2(n174), .A3(n179), .A4(n180), .ZN(n92) );
  NR2D1 U133 ( .A1(n30), .A2(n267), .ZN(n179) );
  INVD1 U134 ( .I(n124), .ZN(n271) );
  NR4D0 U135 ( .A1(n155), .A2(n156), .A3(n157), .A4(n158), .ZN(n154) );
  ND3D1 U137 ( .A1(n152), .A2(n104), .A3(n31), .ZN(n155) );
  INVD1 U138 ( .I(n190), .ZN(n257) );
  INVD1 U139 ( .I(n80), .ZN(n22) );
  NR4D0 U140 ( .A1(n133), .A2(n134), .A3(n76), .A4(n135), .ZN(n128) );
  ND4D1 U141 ( .A1(n118), .A2(n139), .A3(n104), .A4(n53), .ZN(n133) );
  ND4D1 U143 ( .A1(n97), .A2(n124), .A3(n136), .A4(n137), .ZN(n76) );
  NR4D0 U144 ( .A1(n259), .A2(n266), .A3(n66), .A4(n23), .ZN(n137) );
  NR4D0 U146 ( .A1(n148), .A2(n149), .A3(n105), .A4(n150), .ZN(n140) );
  ND4D1 U147 ( .A1(n55), .A2(n49), .A3(n152), .A4(n67), .ZN(n148) );
  NR4D0 U149 ( .A1(n130), .A2(n131), .A3(n114), .A4(n132), .ZN(n129) );
  ND3D1 U150 ( .A1(n94), .A2(n42), .A3(n67), .ZN(n130) );
  ND3D1 U151 ( .A1(n62), .A2(n70), .A3(n54), .ZN(n77) );
  INVD1 U153 ( .I(n78), .ZN(n31) );
  NR4D0 U155 ( .A1(n120), .A2(n121), .A3(n122), .A4(n116), .ZN(n111) );
  ND4D1 U156 ( .A1(n96), .A2(n126), .A3(n127), .A4(n67), .ZN(n120) );
  NR4D0 U158 ( .A1(n99), .A2(n100), .A3(n101), .A4(n22), .ZN(n88) );
  ND3D1 U160 ( .A1(n67), .A2(n102), .A3(n63), .ZN(n100) );
  IND4D1 U161 ( .A1(n91), .B1(n103), .B2(n45), .B3(n104), .ZN(n99) );
  IND4D1 U162 ( .A1(n105), .B1(n106), .B2(n107), .B3(n108), .ZN(n91) );
  INVD1 U164 ( .I(n138), .ZN(n266) );
  ND3D1 U165 ( .A1(n151), .A2(n138), .A3(n139), .ZN(n105) );
  NR4D0 U167 ( .A1(n90), .A2(n91), .A3(n39), .A4(n92), .ZN(n89) );
  ND4D1 U168 ( .A1(n95), .A2(n96), .A3(n97), .A4(n98), .ZN(n90) );
  NR4D0 U169 ( .A1(n113), .A2(n114), .A3(n115), .A4(n116), .ZN(n112) );
  ND4D1 U170 ( .A1(n117), .A2(n85), .A3(n118), .A4(n119), .ZN(n113) );
  INR4D0 U173 ( .A1(n98), .B1(n256), .B2(n101), .B3(n27), .ZN(n85) );
  ND4D1 U174 ( .A1(n123), .A2(n124), .A3(n103), .A4(n125), .ZN(n116) );
  NR4D0 U175 ( .A1(n75), .A2(n76), .A3(n77), .A4(n78), .ZN(n74) );
  ND4D1 U176 ( .A1(n258), .A2(n79), .A3(n80), .A4(n64), .ZN(n75) );
  NR4D0 U177 ( .A1(n81), .A2(n82), .A3(n83), .A4(n84), .ZN(n73) );
  ND4D1 U178 ( .A1(n53), .A2(n59), .A3(n70), .A4(n87), .ZN(n81) );
  ND2D1 U179 ( .A1(n85), .A2(n86), .ZN(n82) );
  ND3D1 U180 ( .A1(n87), .A2(n93), .A3(n94), .ZN(n39) );
  INR4D0 U181 ( .A1(n45), .B1(n46), .B2(n47), .B3(n48), .ZN(n44) );
  ND4D1 U182 ( .A1(n51), .A2(n52), .A3(n53), .A4(n54), .ZN(n46) );
  ND2D1 U183 ( .A1(n49), .A2(n50), .ZN(n47) );
  ND4D1 U184 ( .A1(n58), .A2(n59), .A3(n60), .A4(n61), .ZN(n48) );
  NR2D1 U186 ( .A1(n266), .A2(n66), .ZN(n60) );
  INR4D0 U187 ( .A1(n55), .B1(n56), .B2(n57), .B3(n48), .ZN(n43) );
  ND2D1 U188 ( .A1(n67), .A2(n68), .ZN(n57) );
  ND4D1 U190 ( .A1(n69), .A2(n70), .A3(n71), .A4(n72), .ZN(n56) );
  ND3D1 U192 ( .A1(n40), .A2(n41), .A3(n42), .ZN(n38) );
  ND2D1 U193 ( .A1(n36), .A2(n232), .ZN(n71) );
  NR2D1 U194 ( .A1(n273), .A2(frac_a[2]), .ZN(n239) );
  ND2D1 U195 ( .A1(n227), .A2(n213), .ZN(n62) );
  ND2D1 U196 ( .A1(n175), .A2(n235), .ZN(n102) );
  ND2D1 U197 ( .A1(n36), .A2(n229), .ZN(n51) );
  ND2D1 U198 ( .A1(n228), .A2(n213), .ZN(n118) );
  ND2D1 U202 ( .A1(n215), .A2(n192), .ZN(n172) );
  ND2D1 U204 ( .A1(n247), .A2(n36), .ZN(n65) );
  ND2D1 U207 ( .A1(n233), .A2(n175), .ZN(n178) );
  ND2D1 U208 ( .A1(n36), .A2(n235), .ZN(n171) );
  ND2D1 U210 ( .A1(n228), .A2(n192), .ZN(n54) );
  ND2D1 U211 ( .A1(n232), .A2(n175), .ZN(n41) );
  ND2D1 U212 ( .A1(n227), .A2(n36), .ZN(n63) );
  ND2D1 U213 ( .A1(n232), .A2(n192), .ZN(n93) );
  ND2D1 U215 ( .A1(n245), .A2(n192), .ZN(n119) );
  ND2D1 U216 ( .A1(n36), .A2(n176), .ZN(n52) );
  ND2D1 U218 ( .A1(n228), .A2(n175), .ZN(n174) );
  ND2D1 U219 ( .A1(n224), .A2(n192), .ZN(n195) );
  ND2D1 U221 ( .A1(n229), .A2(n192), .ZN(n106) );
  ND2D1 U222 ( .A1(n36), .A2(n215), .ZN(n67) );
  ND2D1 U223 ( .A1(n232), .A2(n213), .ZN(n173) );
  ND2D1 U225 ( .A1(n227), .A2(n175), .ZN(n205) );
  ND2D1 U227 ( .A1(n247), .A2(n175), .ZN(n138) );
  ND2D1 U228 ( .A1(n245), .A2(n175), .ZN(n180) );
  ND2D1 U230 ( .A1(n192), .A2(n176), .ZN(n181) );
  ND2D1 U231 ( .A1(n224), .A2(n36), .ZN(n217) );
  ND2D1 U232 ( .A1(n37), .A2(n175), .ZN(n127) );
  ND2D1 U234 ( .A1(n176), .A2(n213), .ZN(n110) );
  ND2D1 U235 ( .A1(n209), .A2(n36), .ZN(n97) );
  ND2D1 U236 ( .A1(n233), .A2(n192), .ZN(n152) );
  ND2D1 U238 ( .A1(n37), .A2(n213), .ZN(n40) );
  ND2D1 U240 ( .A1(n36), .A2(n238), .ZN(n68) );
  ND2D1 U241 ( .A1(n238), .A2(n175), .ZN(n87) );
  ND2D1 U242 ( .A1(n192), .A2(n198), .ZN(n139) );
  ND2D1 U243 ( .A1(n235), .A2(n192), .ZN(n165) );
  ND2D1 U244 ( .A1(n245), .A2(n213), .ZN(n203) );
  ND2D1 U245 ( .A1(n191), .A2(n213), .ZN(n86) );
  ND2D1 U246 ( .A1(n245), .A2(n36), .ZN(n95) );
  ND2D1 U247 ( .A1(n224), .A2(n213), .ZN(n50) );
  ND2D1 U248 ( .A1(n37), .A2(n192), .ZN(n96) );
  ND2D1 U249 ( .A1(n209), .A2(n192), .ZN(n208) );
  ND2D1 U250 ( .A1(n215), .A2(n213), .ZN(n42) );
  ND2D1 U251 ( .A1(n233), .A2(n213), .ZN(n69) );
  ND2D1 U252 ( .A1(n235), .A2(n213), .ZN(n190) );
  ND2D1 U253 ( .A1(n224), .A2(n175), .ZN(n79) );
  ND2D1 U254 ( .A1(n213), .A2(n198), .ZN(n72) );
  ND2D1 U255 ( .A1(n247), .A2(n213), .ZN(n159) );
  ND2D1 U256 ( .A1(n229), .A2(n175), .ZN(n98) );
  ND2D1 U257 ( .A1(n238), .A2(n213), .ZN(n151) );
  ND2D1 U258 ( .A1(n228), .A2(n36), .ZN(n109) );
  ND2D1 U259 ( .A1(n233), .A2(n36), .ZN(n80) );
  ND2D1 U260 ( .A1(n209), .A2(n213), .ZN(n216) );
  ND2D1 U261 ( .A1(n36), .A2(n198), .ZN(n64) );
  ND2D1 U262 ( .A1(n238), .A2(n192), .ZN(n94) );
  ND2D1 U263 ( .A1(n215), .A2(n175), .ZN(n104) );
  ND2D1 U264 ( .A1(n227), .A2(n192), .ZN(n123) );
  ND2D1 U265 ( .A1(n175), .A2(n198), .ZN(n53) );
  ND2D1 U266 ( .A1(n209), .A2(n175), .ZN(n126) );
  ND2D1 U267 ( .A1(n191), .A2(n36), .ZN(n59) );
  ND2D1 U268 ( .A1(n175), .A2(n176), .ZN(n124) );
  ND2D1 U269 ( .A1(n191), .A2(n192), .ZN(n70) );
  IOA21D1 U270 ( .A1(n37), .A2(n36), .B(n159), .ZN(n78) );
  NR2D1 U271 ( .A1(frac_b[2]), .A2(frac_a[2]), .ZN(n251) );
  OAI22D1 U272 ( .A1(n200), .A2(n21), .B1(divide_mode), .B2(n201), .ZN(
        error_coeff[18]) );
  OAI22D1 U273 ( .A1(n184), .A2(n21), .B1(divide_mode), .B2(n185), .ZN(
        error_coeff[19]) );
  OAI22D1 U274 ( .A1(n153), .A2(n21), .B1(divide_mode), .B2(n154), .ZN(
        error_coeff[21]) );
  OAI22D1 U275 ( .A1(n140), .A2(n21), .B1(divide_mode), .B2(n141), .ZN(
        error_coeff[22]) );
  OAI22D1 U276 ( .A1(n128), .A2(n21), .B1(divide_mode), .B2(n129), .ZN(
        error_coeff[23]) );
  OAI22D1 U277 ( .A1(n111), .A2(n21), .B1(divide_mode), .B2(n112), .ZN(
        error_coeff[24]) );
  OAI22D1 U278 ( .A1(n88), .A2(n21), .B1(divide_mode), .B2(n89), .ZN(
        error_coeff[25]) );
  OAI22D1 U279 ( .A1(n73), .A2(n21), .B1(divide_mode), .B2(n74), .ZN(
        error_coeff[26]) );
  OAI22D1 U280 ( .A1(n218), .A2(n21), .B1(divide_mode), .B2(n219), .ZN(
        error_coeff[17]) );
  OAI22D1 U281 ( .A1(n167), .A2(n21), .B1(divide_mode), .B2(n168), .ZN(
        error_coeff[20]) );
  OAI22D1 U282 ( .A1(n43), .A2(n21), .B1(divide_mode), .B2(n44), .ZN(
        error_coeff[27]) );
  OAI22D1 U283 ( .A1(n32), .A2(n21), .B1(divide_mode), .B2(n33), .ZN(
        error_coeff[28]) );
  AOI211XD0 U284 ( .A1(n36), .A2(n37), .B(n38), .C(n39), .ZN(n32) );
  INVD1 U285 ( .I(frac_b[2]), .ZN(n273) );
  NR2D1 U286 ( .A1(n272), .A2(frac_b[1]), .ZN(n36) );
  AN2XD1 U287 ( .A1(frac_b[1]), .A2(n272), .Z(n175) );
  INVD1 U288 ( .I(frac_b[0]), .ZN(n272) );
  NR2D1 U289 ( .A1(frac_b[1]), .A2(frac_b[0]), .ZN(n213) );
  AN2XD1 U290 ( .A1(frac_b[1]), .A2(frac_b[0]), .Z(n192) );
endmodule


module add_8_bit_7_DW01_add_0_DW01_add_7 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;


  FA1D0 U1_7 ( .A(A[7]), .B(1'b0), .CI(1'b0), .S(SUM[7]) );
  FA1D0 U1_6 ( .A(A[6]), .B(1'b0), .CI(1'b0), .S(SUM[6]) );
  FA1D0 U1_5 ( .A(A[5]), .B(1'b0), .CI(1'b0), .S(SUM[5]) );
  FA1D0 U1_4 ( .A(A[4]), .B(1'b0), .CI(1'b0), .S(SUM[4]) );
  FA1D0 U1_3 ( .A(A[3]), .B(1'b0), .CI(1'b0), .S(SUM[3]) );
  FA1D0 U1_2 ( .A(A[2]), .B(1'b0), .CI(1'b0), .S(SUM[2]) );
  FA1D0 U1_1 ( .A(A[1]), .B(1'b0), .CI(1'b0), .S(SUM[1]) );
  FA1D0 U1_0 ( .A(A[0]), .B(1'b0), .CI(1'b0), .S(SUM[0]) );
endmodule


module add_8_bit_7 ( a, b, cin, result );
  input [7:0] a;
  input [7:0] b;
  output [8:0] result;
  input cin;
  wire   n2;
  wire   SYNOPSYS_UNCONNECTED__0;

  add_8_bit_7_DW01_add_0_DW01_add_7 add_1_root_add_16_2 ( .A({n2, a}), .B({n2, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM({
        SYNOPSYS_UNCONNECTED__0, result[7:0]}) );
  TIEL U1 ( .ZN(n2) );
endmodule


module add_8_bit_6_DW01_add_0_DW01_add_6 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;

  wire   [7:1] carry;

  FA1D0 U1_0 ( .A(A[0]), .B(B[0]), .CI(1'b0), .CO(carry[1]), .S(SUM[0]) );
  FA1D0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1D0 U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1]) );
  FA1D0 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
  FA1D0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA1D0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1D0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1D0 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
endmodule


module add_8_bit_6 ( a, b, cin, result );
  input [7:0] a;
  input [7:0] b;
  output [8:0] result;
  input cin;
  wire   n2;

  add_8_bit_6_DW01_add_0_DW01_add_6 add_1_root_add_16_2 ( .A({n2, a}), .B({n2, 
        b}), .CI(1'b0), .SUM(result) );
  TIEL U1 ( .ZN(n2) );
endmodule


module add_8_bit_5_DW01_add_0_DW01_add_5 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;

  wire   [7:1] carry;

  FA1D0 U1_7 ( .A(1'b1), .B(1'b0), .CI(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
  FA1D0 U1_5 ( .A(A[5]), .B(1'b0), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1D0 U1_6 ( .A(A[6]), .B(1'b0), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA1D0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1D0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1D0 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA1D0 U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1]) );
  FA1D0 U1_0 ( .A(A[0]), .B(B[0]), .CI(CI), .CO(carry[1]), .S(SUM[0]) );
endmodule


module add_8_bit_5 ( a, b, cin, result );
  input [7:0] a;
  input [7:0] b;
  output [8:0] result;
  input cin;
  wire   n2;

  add_8_bit_5_DW01_add_0_DW01_add_5 add_1_root_add_16_2 ( .A({n2, 1'b1, a[6:0]}), .B({n2, 1'b0, 1'b0, 1'b0, b[4:0]}), .CI(cin), .SUM(result) );
  TIEL U1 ( .ZN(n2) );
endmodule


module add_8_bit_4_DW01_add_0_DW01_add_4 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;

  wire   [7:1] carry;

  FA1D0 U1_7 ( .A(A[7]), .B(1'b0), .CI(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
  FA1D0 U1_6 ( .A(A[6]), .B(1'b0), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA1D0 U1_5 ( .A(A[5]), .B(1'b0), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1D0 U1_4 ( .A(A[4]), .B(1'b0), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1D0 U1_3 ( .A(A[3]), .B(1'b0), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1D0 U1_2 ( .A(A[2]), .B(1'b0), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA1D0 U1_1 ( .A(A[1]), .B(1'b0), .CI(carry[1]), .CO(carry[2]), .S(SUM[1]) );
  FA1D0 U1_0 ( .A(A[0]), .B(1'b0), .CI(CI), .CO(carry[1]), .S(SUM[0]) );
endmodule


module add_8_bit_4 ( a, b, cin, result );
  input [7:0] a;
  input [7:0] b;
  output [8:0] result;
  input cin;
  wire   n2;

  add_8_bit_4_DW01_add_0_DW01_add_4 add_1_root_add_16_2 ( .A({n2, a}), .B({n2, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(cin), .SUM(
        result) );
  TIEL U1 ( .ZN(n2) );
endmodule


module add_8_bit_3_DW01_add_0_DW01_add_3 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;

  wire   [7:1] carry;

  FA1D0 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
  FA1D0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA1D0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1D0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1D0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1D0 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA1D0 U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1]) );
  FA1D0 U1_0 ( .A(A[0]), .B(B[0]), .CI(CI), .CO(carry[1]), .S(SUM[0]) );
endmodule


module add_8_bit_3 ( a, b, cin, result );
  input [7:0] a;
  input [7:0] b;
  output [8:0] result;
  input cin;
  wire   n2;

  add_8_bit_3_DW01_add_0_DW01_add_3 add_1_root_add_16_2 ( .A({n2, a}), .B({n2, 
        b}), .CI(cin), .SUM(result) );
  TIEL U1 ( .ZN(n2) );
endmodule


module add_8_bit_2_DW01_add_0_DW01_add_2 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;

  wire   [7:1] carry;

  FA1D0 U1_0 ( .A(A[0]), .B(B[0]), .CI(CI), .CO(carry[1]), .S(SUM[0]) );
  FA1D0 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
  FA1D0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA1D0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1D0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1D0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1D0 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA1D0 U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1]) );
endmodule


module add_8_bit_2 ( a, b, cin, result );
  input [7:0] a;
  input [7:0] b;
  output [8:0] result;
  input cin;
  wire   n2;

  add_8_bit_2_DW01_add_0_DW01_add_2 add_1_root_add_16_2 ( .A({n2, a}), .B({n2, 
        b}), .CI(cin), .SUM(result) );
  TIEL U1 ( .ZN(n2) );
endmodule


module add_8_bit_1_DW01_add_0_DW01_add_1 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [7:1] carry;

  FA1D0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA1D0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1D0 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(n1), .S(SUM[7]) );
  FA1D0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1D0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1D0 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA1D0 U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1]) );
  FA1D0 U1_0 ( .A(A[0]), .B(B[0]), .CI(CI), .CO(carry[1]), .S(SUM[0]) );
endmodule


module add_8_bit_1 ( a, b, cin, result );
  input [7:0] a;
  input [7:0] b;
  output [8:0] result;
  input cin;
  wire   n2;
  wire   SYNOPSYS_UNCONNECTED__0;

  add_8_bit_1_DW01_add_0_DW01_add_1 add_1_root_add_16_2 ( .A({n2, a}), .B({n2, 
        b}), .CI(cin), .SUM({SYNOPSYS_UNCONNECTED__0, result[7:0]}) );
  TIEL U1 ( .ZN(n2) );
endmodule


module add_4_bit_N5 ( func_bit, a, b, c, result );
  input [4:0] a;
  input [4:0] b;
  output [6:0] result;
  input func_bit, c;
  wire   N9, N10, N11, N12, N13, N14, N22, N23, N24, N25, N26, N27, N28, N21,
         N20, N19, N18, N17, N16, n5, n8, n170;
  wire   [4:1] add_1_root_add_18_2_carry;
  wire   [5:1] sub_18_2_carry;
  wire   [5:2] sub_18_carry;

  INVD1 U6 ( .I(func_bit), .ZN(n8) );
  AO22D0 U7 ( .A1(N25), .A2(n8), .B1(N12), .B2(func_bit), .Z(result[3]) );
  AO22D0 U8 ( .A1(N9), .A2(func_bit), .B1(N22), .B2(n8), .Z(result[0]) );
  AO22D0 U9 ( .A1(N24), .A2(n8), .B1(N11), .B2(func_bit), .Z(result[2]) );
  AO22D0 U10 ( .A1(N23), .A2(n8), .B1(N10), .B2(func_bit), .Z(result[1]) );
  AO22D0 U18 ( .A1(N26), .A2(n8), .B1(N13), .B2(func_bit), .Z(result[4]) );
  FA1D0 U19 ( .A(a[0]), .B(1'b1), .CI(c), .CO(add_1_root_add_18_2_carry[1]), 
        .S(N9) );
  FA1D0 U20 ( .A(a[3]), .B(1'b0), .CI(add_1_root_add_18_2_carry[3]), .CO(
        add_1_root_add_18_2_carry[4]), .S(N12) );
  FA1D0 U21 ( .A(a[2]), .B(1'b1), .CI(add_1_root_add_18_2_carry[2]), .CO(
        add_1_root_add_18_2_carry[3]), .S(N11) );
  FA1D0 U22 ( .A(a[1]), .B(1'b1), .CI(add_1_root_add_18_2_carry[1]), .CO(
        add_1_root_add_18_2_carry[2]), .S(N10) );
  INVD1 U23 ( .I(c), .ZN(n170) );
  AO22D0 U24 ( .A1(N27), .A2(n8), .B1(N14), .B2(func_bit), .Z(result[5]) );
  FA1D0 U26 ( .A(a[3]), .B(1'b1), .CI(sub_18_carry[3]), .CO(sub_18_carry[4]), 
        .S(N19) );
  FA1D0 U28 ( .A(a[2]), .B(1'b0), .CI(sub_18_carry[2]), .CO(sub_18_carry[3]), 
        .S(N18) );
  FA1D0 U30 ( .A(a[1]), .B(1'b0), .CI(a[0]), .CO(sub_18_carry[2]), .S(N17) );
  FA1D0 U34 ( .A(a[4]), .B(1'b1), .CI(add_1_root_add_18_2_carry[4]), .CO(N14), 
        .S(N13) );
  FA1D0 U35 ( .A(a[4]), .B(1'b0), .CI(sub_18_carry[4]), .CO(sub_18_carry[5]), 
        .S(N20) );
  XNR2D1 U40 ( .A1(sub_18_2_carry[1]), .A2(N17), .ZN(N23) );
  XNR2D1 U41 ( .A1(sub_18_2_carry[2]), .A2(N18), .ZN(N24) );
  XNR2D1 U42 ( .A1(sub_18_2_carry[3]), .A2(N19), .ZN(N25) );
  XNR2D1 U43 ( .A1(sub_18_2_carry[4]), .A2(N20), .ZN(N26) );
  XNR2D1 U44 ( .A1(sub_18_2_carry[5]), .A2(N21), .ZN(N27) );
  XNR2D1 U46 ( .A1(n170), .A2(N16), .ZN(N22) );
  AN2XD1 U49 ( .A1(N28), .A2(n8), .Z(result[6]) );
  CKND0 U1 ( .I(sub_18_carry[5]), .ZN(N21) );
  IND2D0 U2 ( .A1(n5), .B1(sub_18_carry[5]), .ZN(N28) );
  CKND0 U3 ( .I(n5), .ZN(sub_18_2_carry[5]) );
  NR2D0 U4 ( .A1(sub_18_2_carry[4]), .A2(N20), .ZN(n5) );
  OR2D0 U5 ( .A1(sub_18_2_carry[3]), .A2(N19), .Z(sub_18_2_carry[4]) );
  OR2D0 U11 ( .A1(sub_18_2_carry[2]), .A2(N18), .Z(sub_18_2_carry[3]) );
  OR2D0 U12 ( .A1(sub_18_2_carry[1]), .A2(N17), .Z(sub_18_2_carry[2]) );
  OR2D0 U13 ( .A1(N16), .A2(n170), .Z(sub_18_2_carry[1]) );
  INVD1 U14 ( .I(a[0]), .ZN(N16) );
endmodule


module simdive_sisd32_core_DW01_inc_0 ( A, SUM );
  input [31:0] A;
  output [31:0] SUM;

  wire   [31:9] carry;

  HA1D0 U1_1_15 ( .A(A[15]), .B(carry[15]), .CO(carry[16]), .S(SUM[15]) );
  HA1D0 U1_1_14 ( .A(A[14]), .B(carry[14]), .CO(carry[15]), .S(SUM[14]) );
  HA1D0 U1_1_13 ( .A(A[13]), .B(carry[13]), .CO(carry[14]), .S(SUM[13]) );
  HA1D0 U1_1_12 ( .A(A[12]), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  HA1D0 U1_1_11 ( .A(A[11]), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  HA1D0 U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  HA1D0 U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  HA1D0 U1_1_8 ( .A(A[8]), .B(1'b1), .CO(carry[9]), .S(SUM[8]) );
  HA1D0 U1_1_29 ( .A(A[29]), .B(carry[29]), .CO(carry[30]), .S(SUM[29]) );
  HA1D0 U1_1_30 ( .A(A[30]), .B(carry[30]), .CO(carry[31]), .S(SUM[30]) );
  HA1D0 U1_1_16 ( .A(A[16]), .B(carry[16]), .CO(carry[17]), .S(SUM[16]) );
  HA1D0 U1_1_19 ( .A(A[19]), .B(carry[19]), .CO(carry[20]), .S(SUM[19]) );
  HA1D0 U1_1_18 ( .A(A[18]), .B(carry[18]), .CO(carry[19]), .S(SUM[18]) );
  HA1D0 U1_1_17 ( .A(A[17]), .B(carry[17]), .CO(carry[18]), .S(SUM[17]) );
  HA1D0 U1_1_27 ( .A(A[27]), .B(carry[27]), .CO(carry[28]), .S(SUM[27]) );
  HA1D0 U1_1_26 ( .A(A[26]), .B(carry[26]), .CO(carry[27]), .S(SUM[26]) );
  HA1D0 U1_1_25 ( .A(A[25]), .B(carry[25]), .CO(carry[26]), .S(SUM[25]) );
  HA1D0 U1_1_24 ( .A(A[24]), .B(carry[24]), .CO(carry[25]), .S(SUM[24]) );
  HA1D0 U1_1_23 ( .A(A[23]), .B(carry[23]), .CO(carry[24]), .S(SUM[23]) );
  HA1D0 U1_1_22 ( .A(A[22]), .B(carry[22]), .CO(carry[23]), .S(SUM[22]) );
  HA1D0 U1_1_21 ( .A(A[21]), .B(carry[21]), .CO(carry[22]), .S(SUM[21]) );
  HA1D0 U1_1_20 ( .A(A[20]), .B(carry[20]), .CO(carry[21]), .S(SUM[20]) );
  HA1D0 U1_1_28 ( .A(A[28]), .B(carry[28]), .CO(carry[29]), .S(SUM[28]) );
  CKXOR2D0 U1 ( .A1(carry[31]), .A2(A[31]), .Z(SUM[31]) );
endmodule


module simdive_sisd32_core ( input1_i, input2_i, divide_mode, result_o_hybrid
 );
  input [31:0] input1_i;
  input [31:0] input2_i;
  output [63:0] result_o_hybrid;
  input divide_mode;
  wire   add_b_2__8_, add_b_3__8_, N44, N45, N46, N47, N48, N49, N50, N51, N52,
         N53, N54, N55, N56, N57, N58, N59, N60, N61, N62, N63, N64, N65, N66,
         N67, add_a_0__8_, add_a_1__8_, add_a_2__8_, n1, n2, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n440, n450, n460, n470, n480, n490, n500, n510, n520,
         n530, n540, n550, n560, n570, n580, n590, n600, n610, n620, n630,
         n640, n650, n660, n670, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235,
         n236, n237, n238, n239, n240, n241, n242, n243, n244, n245, n246,
         n247, n248, n249, n250, n251, n252, n253, n254, n255, n256, n257,
         n258, n259, n260, n261, n262, n263, n264, n265, n266, n267, n268,
         n269, n270, n271, n272, n273, n274, n275, n276, n277, n278, n279,
         n280, n281, n282, n283, n284, n285, n286, n287, n288, n289, n290,
         n291, n292, n293, n294, n295, n296, n297, n298, n299, n300, n301,
         n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, n312,
         n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323,
         n324, n325, n326, n327, n328, n329, n330, n331, n332, n333, n334,
         n335, n336, n337, n338, n339, n340, n341, n342, n343, n344, n345,
         n346, n347, n348, n349, n350, n351, n352, n353, n354, n355, n356,
         n357, n358, n359, n360, n361, n362, n363, n364, n365, n366, n367,
         n368, n369, n370, n371, n372, n373, n374, n375, n376, n377, n378,
         n379, n380, n381, n382, n383, n384, n385, n386, n387;
  wire   [31:8] corrected_b;
  wire   [31:8] signed_correction;
  wire   [31:0] mantissa_result;
  wire   [6:0] log_result;
  wire   [4:0] ka;
  wire   [31:0] fraction_a;
  wire   [30:8] fraction_b;
  wire   [28:16] correction;
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
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37;

  MOAI22D1 U5 ( .A1(n1), .A2(n386), .B1(N45), .B2(n1), .ZN(
        signed_correction[9]) );
  MOAI22D1 U6 ( .A1(n1), .A2(n387), .B1(N44), .B2(n1), .ZN(
        signed_correction[8]) );
  MOAI22D1 U12 ( .A1(n1), .A2(n364), .B1(N67), .B2(n1), .ZN(
        signed_correction[31]) );
  MOAI22D1 U13 ( .A1(n1), .A2(n365), .B1(N66), .B2(n1), .ZN(
        signed_correction[30]) );
  MOAI22D1 U15 ( .A1(n1), .A2(n366), .B1(N65), .B2(n1), .ZN(
        signed_correction[29]) );
  MOAI22D1 U16 ( .A1(n1), .A2(n367), .B1(N64), .B2(n1), .ZN(
        signed_correction[28]) );
  MOAI22D1 U17 ( .A1(n1), .A2(n368), .B1(N63), .B2(n1), .ZN(
        signed_correction[27]) );
  MOAI22D1 U18 ( .A1(n1), .A2(n369), .B1(N62), .B2(n1), .ZN(
        signed_correction[26]) );
  MOAI22D1 U19 ( .A1(n1), .A2(n370), .B1(N61), .B2(n1), .ZN(
        signed_correction[25]) );
  MOAI22D1 U20 ( .A1(n1), .A2(n371), .B1(N60), .B2(n1), .ZN(
        signed_correction[24]) );
  MOAI22D1 U21 ( .A1(n1), .A2(n372), .B1(N59), .B2(n1), .ZN(
        signed_correction[23]) );
  MOAI22D1 U22 ( .A1(n1), .A2(n373), .B1(N58), .B2(n1), .ZN(
        signed_correction[22]) );
  MOAI22D1 U23 ( .A1(n1), .A2(n374), .B1(N57), .B2(n1), .ZN(
        signed_correction[21]) );
  MOAI22D1 U24 ( .A1(n1), .A2(n375), .B1(N56), .B2(n1), .ZN(
        signed_correction[20]) );
  MOAI22D1 U26 ( .A1(n1), .A2(n376), .B1(N55), .B2(n1), .ZN(
        signed_correction[19]) );
  MOAI22D1 U27 ( .A1(n1), .A2(n377), .B1(N54), .B2(n1), .ZN(
        signed_correction[18]) );
  MOAI22D1 U28 ( .A1(n1), .A2(n378), .B1(N53), .B2(n1), .ZN(
        signed_correction[17]) );
  MOAI22D1 U29 ( .A1(n1), .A2(n379), .B1(N52), .B2(n1), .ZN(
        signed_correction[16]) );
  MOAI22D1 U30 ( .A1(n1), .A2(n380), .B1(N51), .B2(n1), .ZN(
        signed_correction[15]) );
  MOAI22D1 U31 ( .A1(n1), .A2(n381), .B1(N50), .B2(n1), .ZN(
        signed_correction[14]) );
  MOAI22D1 U32 ( .A1(n1), .A2(n382), .B1(N49), .B2(n1), .ZN(
        signed_correction[13]) );
  MOAI22D1 U33 ( .A1(n1), .A2(n383), .B1(N48), .B2(n1), .ZN(
        signed_correction[12]) );
  MOAI22D1 U34 ( .A1(n1), .A2(n384), .B1(N47), .B2(n1), .ZN(
        signed_correction[11]) );
  MOAI22D1 U35 ( .A1(n1), .A2(n385), .B1(N46), .B2(n1), .ZN(
        signed_correction[10]) );
  simdive_sisd32_lod_0 lod_a ( .a({input1_i[31:1], 1'b0}), .pos(ka) );
  simdive_sisd32_set_frac_0 frac_a ( .a(input1_i), .lod_pos({ka[4], n10, n9, 
        ka[1:0]}), .out0(fraction_a) );
  simdive_sisd32_set_frac_1 frac_b ( .a({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b1, input2_i[22:0]}), .lod_pos({1'b1, 1'b0, 1'b1, 1'b1, 
        1'b1}), .out0({SYNOPSYS_UNCONNECTED__0, fraction_b, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8}) );
  simdive_sisd32_coeff coeff ( .divide_mode(n1), .frac_a(fraction_a[30:28]), 
        .frac_b(fraction_b[30:28]), .error_coeff({SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, correction, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27}) );
  add_8_bit_7 b1 ( .a(fraction_b[15:8]), .b({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0}), .cin(1'b0), .result({SYNOPSYS_UNCONNECTED__28, 
        corrected_b[15:8]}) );
  add_8_bit_6 b2 ( .a(fraction_b[23:16]), .b(correction[23:16]), .cin(1'b0), 
        .result({add_b_2__8_, corrected_b[23:16]}) );
  add_8_bit_5 b3 ( .a({1'b1, fraction_b[30:24]}), .b({1'b0, 1'b0, 1'b0, 
        correction[28:24]}), .cin(add_b_2__8_), .result({add_b_3__8_, 
        corrected_b[31:24]}) );
  add_8_bit_4 a0 ( .a(fraction_a[7:0]), .b({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .cin(add_b_3__8_), .result({add_a_0__8_, 
        mantissa_result[7:0]}) );
  add_8_bit_3 a1 ( .a(fraction_a[15:8]), .b(signed_correction[15:8]), .cin(
        add_a_0__8_), .result({add_a_1__8_, mantissa_result[15:8]}) );
  add_8_bit_2 a2 ( .a(fraction_a[23:16]), .b(signed_correction[23:16]), .cin(
        add_a_1__8_), .result({add_a_2__8_, mantissa_result[23:16]}) );
  add_8_bit_1 a3 ( .a(fraction_a[31:24]), .b(signed_correction[31:24]), .cin(
        add_a_2__8_), .result({SYNOPSYS_UNCONNECTED__29, 
        mantissa_result[31:24]}) );
  add_4_bit_N5 exponent_add ( .func_bit(n2), .a({ka[4], n10, n9, ka[1:0]}), 
        .b({1'b1, 1'b0, 1'b1, 1'b1, 1'b1}), .c(mantissa_result[31]), .result(
        log_result) );
  simdive_sisd32_core_DW01_inc_0 add_126 ( .A({n364, n365, n366, n367, n368, 
        n369, n370, n371, n372, n373, n374, n375, n376, n377, n378, n379, n380, 
        n381, n382, n383, n384, n385, n386, n387, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1}), .SUM({N67, N66, N65, N64, N63, N62, N61, N60, N59, 
        N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, 
        N44, SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31, 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37}) );
  BUFFD1 U3 ( .I(log_result[6]), .Z(n23) );
  ND2D1 U4 ( .A1(n170), .A2(n16), .ZN(n235) );
  NR2D1 U37 ( .A1(log_result[6]), .A2(n190), .ZN(result_o_hybrid[19]) );
  NR2D1 U38 ( .A1(log_result[6]), .A2(n194), .ZN(result_o_hybrid[20]) );
  ND2D1 U39 ( .A1(n241), .A2(n22), .ZN(n242) );
  ND2D1 U40 ( .A1(n20), .A2(n240), .ZN(n243) );
  NR2D1 U41 ( .A1(log_result[6]), .A2(n218), .ZN(result_o_hybrid[26]) );
  INVD1 U42 ( .I(n17), .ZN(n16) );
  NR2D1 U43 ( .A1(log_result[6]), .A2(n169), .ZN(result_o_hybrid[14]) );
  NR2D1 U44 ( .A1(n23), .A2(n222), .ZN(result_o_hybrid[27]) );
  NR2D1 U45 ( .A1(log_result[6]), .A2(n198), .ZN(result_o_hybrid[21]) );
  ND2D1 U46 ( .A1(n245), .A2(n22), .ZN(n246) );
  ND2D1 U47 ( .A1(n20), .A2(n244), .ZN(n247) );
  NR2D1 U48 ( .A1(log_result[6]), .A2(n175), .ZN(result_o_hybrid[15]) );
  NR2D1 U49 ( .A1(n23), .A2(n226), .ZN(result_o_hybrid[28]) );
  ND2D1 U50 ( .A1(n249), .A2(n22), .ZN(n250) );
  ND2D1 U51 ( .A1(n20), .A2(n248), .ZN(n251) );
  NR2D1 U52 ( .A1(log_result[6]), .A2(n163), .ZN(result_o_hybrid[13]) );
  NR2D1 U53 ( .A1(log_result[6]), .A2(n202), .ZN(result_o_hybrid[22]) );
  ND2D1 U54 ( .A1(n297), .A2(n22), .ZN(n298) );
  ND2D1 U55 ( .A1(n20), .A2(n296), .ZN(n299) );
  NR2D1 U56 ( .A1(n23), .A2(n230), .ZN(result_o_hybrid[29]) );
  ND2D1 U57 ( .A1(n253), .A2(n22), .ZN(n254) );
  ND2D1 U58 ( .A1(n20), .A2(n252), .ZN(n255) );
  ND2D1 U59 ( .A1(n301), .A2(n22), .ZN(n302) );
  ND2D1 U60 ( .A1(n300), .A2(n20), .ZN(n303) );
  NR2D1 U61 ( .A1(n232), .A2(n18), .ZN(n293) );
  NR2D1 U62 ( .A1(n236), .A2(n18), .ZN(n297) );
  ND2D1 U63 ( .A1(n269), .A2(n22), .ZN(n270) );
  ND2D1 U64 ( .A1(n20), .A2(n268), .ZN(n271) );
  ND2D1 U65 ( .A1(n273), .A2(n22), .ZN(n274) );
  ND2D1 U66 ( .A1(log_result[5]), .A2(n272), .ZN(n275) );
  ND2D1 U67 ( .A1(n304), .A2(n20), .ZN(n307) );
  ND2D1 U68 ( .A1(n305), .A2(n22), .ZN(n306) );
  NR2D1 U69 ( .A1(log_result[6]), .A2(n139), .ZN(result_o_hybrid[9]) );
  ND2D1 U70 ( .A1(n277), .A2(n22), .ZN(n278) );
  ND2D1 U71 ( .A1(n20), .A2(n276), .ZN(n279) );
  NR2D1 U72 ( .A1(n228), .A2(n18), .ZN(n289) );
  ND2D1 U73 ( .A1(n161), .A2(n17), .ZN(n196) );
  ND2D1 U74 ( .A1(n149), .A2(n17), .ZN(n188) );
  NR2D1 U75 ( .A1(n177), .A2(n18), .ZN(n301) );
  ND2D1 U76 ( .A1(n308), .A2(n20), .ZN(n311) );
  ND2D1 U77 ( .A1(n309), .A2(n22), .ZN(n310) );
  ND2D1 U78 ( .A1(n155), .A2(n17), .ZN(n192) );
  ND2D1 U79 ( .A1(n281), .A2(n22), .ZN(n282) );
  ND2D1 U80 ( .A1(log_result[5]), .A2(n280), .ZN(n283) );
  NR2D1 U81 ( .A1(log_result[6]), .A2(n157), .ZN(result_o_hybrid[12]) );
  ND2D1 U82 ( .A1(n167), .A2(n17), .ZN(n200) );
  ND2D1 U83 ( .A1(n164), .A2(n16), .ZN(n231) );
  NR2D1 U84 ( .A1(n23), .A2(n238), .ZN(result_o_hybrid[31]) );
  NR2D1 U85 ( .A1(log_result[6]), .A2(n186), .ZN(result_o_hybrid[18]) );
  NR2D1 U86 ( .A1(n180), .A2(n18), .ZN(n241) );
  NR2D1 U87 ( .A1(log_result[6]), .A2(n210), .ZN(result_o_hybrid[24]) );
  NR2D1 U88 ( .A1(log_result[6]), .A2(n214), .ZN(result_o_hybrid[25]) );
  NR2D1 U89 ( .A1(log_result[6]), .A2(n145), .ZN(result_o_hybrid[10]) );
  NR2D1 U90 ( .A1(n184), .A2(n18), .ZN(n245) );
  ND2D1 U91 ( .A1(n356), .A2(n20), .ZN(n359) );
  ND2D1 U92 ( .A1(n357), .A2(n22), .ZN(n358) );
  NR2D1 U93 ( .A1(n23), .A2(n178), .ZN(result_o_hybrid[16]) );
  ND2D1 U94 ( .A1(n20), .A2(n360), .ZN(n363) );
  ND2D1 U95 ( .A1(n361), .A2(n22), .ZN(n362) );
  ND2D1 U96 ( .A1(n158), .A2(n16), .ZN(n227) );
  NR2D1 U97 ( .A1(n188), .A2(n18), .ZN(n249) );
  ND2D1 U98 ( .A1(n289), .A2(n22), .ZN(n290) );
  ND2D1 U99 ( .A1(log_result[5]), .A2(n288), .ZN(n291) );
  NR2D1 U100 ( .A1(log_result[6]), .A2(n206), .ZN(result_o_hybrid[23]) );
  NR2D1 U101 ( .A1(log_result[6]), .A2(n234), .ZN(result_o_hybrid[30]) );
  NR2D1 U102 ( .A1(n212), .A2(n18), .ZN(n273) );
  ND2D1 U103 ( .A1(n140), .A2(n16), .ZN(n215) );
  ND2D1 U104 ( .A1(n352), .A2(n20), .ZN(n355) );
  ND2D1 U105 ( .A1(n353), .A2(n22), .ZN(n354) );
  NR2D1 U106 ( .A1(log_result[6]), .A2(n151), .ZN(result_o_hybrid[11]) );
  ND2D1 U107 ( .A1(n146), .A2(n16), .ZN(n219) );
  ND2D1 U108 ( .A1(n129), .A2(n16), .ZN(n207) );
  ND2D1 U109 ( .A1(n134), .A2(n16), .ZN(n211) );
  NR2D1 U110 ( .A1(log_result[6]), .A2(n182), .ZN(result_o_hybrid[17]) );
  NR2D1 U111 ( .A1(n216), .A2(n18), .ZN(n277) );
  NR2D1 U112 ( .A1(n192), .A2(n18), .ZN(n253) );
  ND2D1 U113 ( .A1(log_result[1]), .A2(n11), .ZN(n119) );
  ND2D1 U114 ( .A1(n324), .A2(n20), .ZN(n327) );
  ND2D1 U115 ( .A1(n325), .A2(n22), .ZN(n326) );
  ND2D1 U116 ( .A1(n328), .A2(n20), .ZN(n331) );
  ND2D1 U117 ( .A1(n329), .A2(n22), .ZN(n330) );
  INVD1 U118 ( .I(n22), .ZN(n21) );
  ND2D1 U119 ( .A1(n293), .A2(n22), .ZN(n294) );
  ND2D1 U120 ( .A1(n20), .A2(n292), .ZN(n295) );
  ND2D1 U121 ( .A1(n152), .A2(n16), .ZN(n223) );
  ND2D1 U122 ( .A1(n285), .A2(n22), .ZN(n286) );
  ND2D1 U123 ( .A1(log_result[5]), .A2(n284), .ZN(n287) );
  ND2D1 U124 ( .A1(n257), .A2(n22), .ZN(n258) );
  ND2D1 U125 ( .A1(log_result[5]), .A2(n256), .ZN(n259) );
  ND2D1 U126 ( .A1(n344), .A2(n20), .ZN(n347) );
  ND2D1 U127 ( .A1(n345), .A2(n22), .ZN(n346) );
  ND2D1 U128 ( .A1(n265), .A2(n22), .ZN(n266) );
  ND2D1 U129 ( .A1(log_result[5]), .A2(n264), .ZN(n267) );
  NR2D1 U130 ( .A1(n224), .A2(n18), .ZN(n285) );
  NR2D1 U131 ( .A1(n220), .A2(n18), .ZN(n281) );
  ND2D1 U132 ( .A1(n332), .A2(n20), .ZN(n335) );
  ND2D1 U133 ( .A1(n333), .A2(n22), .ZN(n334) );
  ND2D1 U134 ( .A1(n348), .A2(n20), .ZN(n351) );
  ND2D1 U135 ( .A1(n349), .A2(n22), .ZN(n350) );
  ND2D1 U136 ( .A1(n261), .A2(n22), .ZN(n262) );
  ND2D1 U137 ( .A1(n20), .A2(n260), .ZN(n263) );
  NR2D1 U138 ( .A1(n208), .A2(n18), .ZN(n269) );
  ND2D1 U139 ( .A1(n316), .A2(n20), .ZN(n319) );
  ND2D1 U140 ( .A1(n317), .A2(n22), .ZN(n318) );
  ND2D1 U141 ( .A1(n132), .A2(n17), .ZN(n208) );
  ND2D1 U142 ( .A1(n336), .A2(n20), .ZN(n339) );
  ND2D1 U143 ( .A1(n337), .A2(n22), .ZN(n338) );
  ND2D1 U144 ( .A1(n340), .A2(n20), .ZN(n343) );
  ND2D1 U145 ( .A1(n341), .A2(n22), .ZN(n342) );
  ND2D1 U146 ( .A1(n320), .A2(n20), .ZN(n323) );
  ND2D1 U147 ( .A1(n321), .A2(n22), .ZN(n322) );
  ND2D1 U148 ( .A1(n173), .A2(n17), .ZN(n204) );
  ND2D1 U149 ( .A1(n312), .A2(n20), .ZN(n315) );
  ND2D1 U150 ( .A1(n313), .A2(n22), .ZN(n314) );
  ND2D1 U151 ( .A1(n137), .A2(n17), .ZN(n180) );
  INVD1 U152 ( .I(n22), .ZN(n20) );
  ND2D1 U153 ( .A1(n143), .A2(n17), .ZN(n184) );
  NR2D1 U154 ( .A1(n119), .A2(n15), .ZN(n170) );
  NR2D1 U155 ( .A1(n204), .A2(n18), .ZN(n265) );
  NR2D1 U156 ( .A1(n196), .A2(n18), .ZN(n257) );
  NR2D1 U157 ( .A1(n200), .A2(n18), .ZN(n261) );
  NR2D1 U158 ( .A1(log_result[6]), .A2(n133), .ZN(result_o_hybrid[8]) );
  NR2D1 U159 ( .A1(n23), .A2(n550), .ZN(result_o_hybrid[1]) );
  NR2D1 U160 ( .A1(n23), .A2(n89), .ZN(result_o_hybrid[3]) );
  NR2D1 U161 ( .A1(n23), .A2(n72), .ZN(result_o_hybrid[2]) );
  NR2D1 U162 ( .A1(n23), .A2(n98), .ZN(result_o_hybrid[4]) );
  NR2D1 U163 ( .A1(log_result[6]), .A2(n108), .ZN(result_o_hybrid[5]) );
  NR2D1 U164 ( .A1(log_result[6]), .A2(n118), .ZN(result_o_hybrid[6]) );
  NR3D0 U165 ( .A1(n239), .A2(log_result[6]), .A3(log_result[5]), .ZN(
        result_o_hybrid[0]) );
  NR2D1 U166 ( .A1(log_result[6]), .A2(n128), .ZN(result_o_hybrid[7]) );
  CKBD1 U167 ( .I(log_result[0]), .Z(n11) );
  INVD1 U168 ( .I(n19), .ZN(n18) );
  NR2D1 U169 ( .A1(n19), .A2(n187), .ZN(n312) );
  NR2D1 U170 ( .A1(n19), .A2(n191), .ZN(n316) );
  NR2D1 U171 ( .A1(n19), .A2(n195), .ZN(n320) );
  NR2D1 U172 ( .A1(n126), .A2(log_result[2]), .ZN(n149) );
  NR2D1 U173 ( .A1(n15), .A2(n90), .ZN(n152) );
  NR2D1 U174 ( .A1(n19), .A2(n199), .ZN(n324) );
  NR2D1 U175 ( .A1(n97), .A2(log_result[2]), .ZN(n155) );
  NR2D1 U176 ( .A1(n19), .A2(n176), .ZN(n300) );
  INVD1 U177 ( .I(n14), .ZN(n15) );
  NR2D1 U178 ( .A1(n15), .A2(n99), .ZN(n158) );
  INVD1 U179 ( .I(n12), .ZN(n13) );
  NR2D1 U180 ( .A1(n19), .A2(n179), .ZN(n304) );
  NR2D1 U181 ( .A1(n116), .A2(log_result[2]), .ZN(n143) );
  NR2D1 U182 ( .A1(n215), .A2(n19), .ZN(n340) );
  NR2D1 U183 ( .A1(n219), .A2(n19), .ZN(n344) );
  NR2D1 U184 ( .A1(n19), .A2(n183), .ZN(n308) );
  NR2D1 U185 ( .A1(n223), .A2(n19), .ZN(n348) );
  NR2D1 U186 ( .A1(n227), .A2(n19), .ZN(n352) );
  NR2D1 U187 ( .A1(n19), .A2(n203), .ZN(n328) );
  NR3D0 U188 ( .A1(n239), .A2(log_result[6]), .A3(n22), .ZN(
        result_o_hybrid[32]) );
  MUX2D0 U189 ( .I0(n177), .I1(n176), .S(n19), .Z(n239) );
  NR2D1 U190 ( .A1(n109), .A2(n15), .ZN(n164) );
  NR2D1 U191 ( .A1(n235), .A2(n19), .ZN(n360) );
  NR2D1 U192 ( .A1(n207), .A2(n19), .ZN(n332) );
  NR2D1 U193 ( .A1(n211), .A2(n19), .ZN(n336) );
  NR2D1 U194 ( .A1(n231), .A2(n19), .ZN(n356) );
  NR2D1 U195 ( .A1(n106), .A2(log_result[2]), .ZN(n137) );
  INVD1 U196 ( .I(log_result[3]), .ZN(n17) );
  CKBD1 U197 ( .I(log_result[2]), .Z(n14) );
  CKBD1 U198 ( .I(log_result[1]), .Z(n12) );
  ND2D1 U199 ( .A1(n71), .A2(n13), .ZN(n116) );
  ND2D1 U200 ( .A1(log_result[1]), .A2(n560), .ZN(n109) );
  INVD1 U201 ( .I(log_result[5]), .ZN(n22) );
  ND2D1 U202 ( .A1(n87), .A2(n13), .ZN(n106) );
  INVD1 U203 ( .I(mantissa_result[28]), .ZN(n26) );
  INVD1 U204 ( .I(mantissa_result[27]), .ZN(n27) );
  INVD1 U205 ( .I(mantissa_result[26]), .ZN(n28) );
  INVD1 U206 ( .I(mantissa_result[25]), .ZN(n29) );
  INVD1 U207 ( .I(mantissa_result[24]), .ZN(n30) );
  INVD1 U208 ( .I(mantissa_result[23]), .ZN(n31) );
  INVD1 U209 ( .I(mantissa_result[22]), .ZN(n32) );
  INVD1 U210 ( .I(mantissa_result[21]), .ZN(n33) );
  INVD1 U211 ( .I(mantissa_result[20]), .ZN(n34) );
  INVD1 U212 ( .I(mantissa_result[19]), .ZN(n35) );
  INVD1 U213 ( .I(mantissa_result[18]), .ZN(n36) );
  INVD1 U214 ( .I(mantissa_result[17]), .ZN(n37) );
  INVD2 U215 ( .I(n2), .ZN(n1) );
  INVD1 U216 ( .I(log_result[4]), .ZN(n19) );
  ND2D1 U218 ( .A1(n11), .A2(n24), .ZN(n560) );
  NR2D1 U219 ( .A1(n540), .A2(log_result[0]), .ZN(n87) );
  CKBD1 U221 ( .I(ka[2]), .Z(n9) );
  CKBD1 U222 ( .I(ka[3]), .Z(n10) );
  INVD1 U223 ( .I(mantissa_result[16]), .ZN(n38) );
  INVD1 U224 ( .I(corrected_b[28]), .ZN(n367) );
  INVD1 U225 ( .I(corrected_b[20]), .ZN(n375) );
  INVD1 U226 ( .I(corrected_b[21]), .ZN(n374) );
  INVD1 U227 ( .I(corrected_b[22]), .ZN(n373) );
  INVD1 U228 ( .I(corrected_b[23]), .ZN(n372) );
  INVD1 U229 ( .I(corrected_b[24]), .ZN(n371) );
  INVD1 U230 ( .I(corrected_b[25]), .ZN(n370) );
  INVD1 U231 ( .I(corrected_b[26]), .ZN(n369) );
  INVD1 U232 ( .I(corrected_b[27]), .ZN(n368) );
  INVD1 U233 ( .I(corrected_b[17]), .ZN(n378) );
  INVD1 U234 ( .I(corrected_b[18]), .ZN(n377) );
  INVD1 U235 ( .I(corrected_b[19]), .ZN(n376) );
  INVD1 U236 ( .I(divide_mode), .ZN(n2) );
  INVD1 U237 ( .I(mantissa_result[30]), .ZN(n24) );
  INVD1 U238 ( .I(mantissa_result[29]), .ZN(n25) );
  INVD1 U239 ( .I(mantissa_result[15]), .ZN(n39) );
  INVD1 U240 ( .I(mantissa_result[14]), .ZN(n40) );
  INVD1 U241 ( .I(mantissa_result[13]), .ZN(n41) );
  INVD1 U242 ( .I(mantissa_result[12]), .ZN(n42) );
  INVD1 U243 ( .I(mantissa_result[11]), .ZN(n43) );
  INVD1 U244 ( .I(mantissa_result[10]), .ZN(n440) );
  INVD1 U245 ( .I(corrected_b[16]), .ZN(n379) );
  INVD1 U246 ( .I(mantissa_result[9]), .ZN(n450) );
  INVD1 U247 ( .I(mantissa_result[8]), .ZN(n460) );
  INVD1 U248 ( .I(mantissa_result[7]), .ZN(n470) );
  INVD1 U249 ( .I(mantissa_result[6]), .ZN(n480) );
  INVD1 U250 ( .I(mantissa_result[5]), .ZN(n490) );
  INVD1 U251 ( .I(mantissa_result[4]), .ZN(n500) );
  INVD1 U252 ( .I(mantissa_result[3]), .ZN(n510) );
  INVD1 U253 ( .I(mantissa_result[2]), .ZN(n520) );
  INVD1 U254 ( .I(mantissa_result[1]), .ZN(n530) );
  INVD1 U255 ( .I(mantissa_result[0]), .ZN(n540) );
  INVD1 U256 ( .I(corrected_b[31]), .ZN(n364) );
  INVD1 U257 ( .I(corrected_b[30]), .ZN(n365) );
  INVD1 U258 ( .I(corrected_b[29]), .ZN(n366) );
  INVD1 U259 ( .I(corrected_b[8]), .ZN(n387) );
  INVD1 U260 ( .I(corrected_b[9]), .ZN(n386) );
  INVD1 U261 ( .I(corrected_b[10]), .ZN(n385) );
  INVD1 U262 ( .I(corrected_b[11]), .ZN(n384) );
  INVD1 U263 ( .I(corrected_b[12]), .ZN(n383) );
  INVD1 U264 ( .I(corrected_b[13]), .ZN(n382) );
  INVD1 U265 ( .I(corrected_b[14]), .ZN(n381) );
  INVD1 U266 ( .I(corrected_b[15]), .ZN(n380) );
  MUX2ND0 U280 ( .I0(n39), .I1(n40), .S(log_result[0]), .ZN(n630) );
  MUX2ND0 U281 ( .I0(n41), .I1(n42), .S(log_result[0]), .ZN(n660) );
  MUX2ND0 U282 ( .I0(n630), .I1(n660), .S(log_result[1]), .ZN(n93) );
  MUX2ND0 U283 ( .I0(n43), .I1(n440), .S(log_result[0]), .ZN(n650) );
  MUX2ND0 U284 ( .I0(n450), .I1(n460), .S(log_result[0]), .ZN(n68) );
  MUX2ND0 U285 ( .I0(n650), .I1(n68), .S(log_result[1]), .ZN(n96) );
  MUX2ND0 U286 ( .I0(n93), .I1(n96), .S(log_result[2]), .ZN(n130) );
  MUX2ND0 U287 ( .I0(n470), .I1(n480), .S(log_result[0]), .ZN(n670) );
  MUX2ND0 U288 ( .I0(n490), .I1(n500), .S(log_result[0]), .ZN(n70) );
  MUX2ND0 U289 ( .I0(n670), .I1(n70), .S(log_result[1]), .ZN(n95) );
  MUX2ND0 U290 ( .I0(n510), .I1(n520), .S(log_result[0]), .ZN(n69) );
  MUX2ND0 U291 ( .I0(n530), .I1(n540), .S(log_result[0]), .ZN(n71) );
  MUX2ND0 U292 ( .I0(n69), .I1(n71), .S(log_result[1]), .ZN(n97) );
  MUX2ND0 U293 ( .I0(n95), .I1(n97), .S(log_result[2]), .ZN(n132) );
  MUX2ND0 U294 ( .I0(n130), .I1(n132), .S(n16), .ZN(n177) );
  MUX2ND0 U295 ( .I0(n25), .I1(n26), .S(log_result[0]), .ZN(n580) );
  MUX2ND0 U296 ( .I0(n560), .I1(n580), .S(log_result[1]), .ZN(n90) );
  MUX2ND0 U297 ( .I0(n27), .I1(n28), .S(log_result[0]), .ZN(n570) );
  MUX2ND0 U298 ( .I0(n29), .I1(n30), .S(log_result[0]), .ZN(n600) );
  MUX2ND0 U299 ( .I0(n570), .I1(n600), .S(log_result[1]), .ZN(n92) );
  MUX2ND0 U300 ( .I0(n90), .I1(n92), .S(n14), .ZN(n129) );
  MUX2ND0 U301 ( .I0(n31), .I1(n32), .S(log_result[0]), .ZN(n590) );
  MUX2ND0 U302 ( .I0(n33), .I1(n34), .S(log_result[0]), .ZN(n620) );
  MUX2ND0 U303 ( .I0(n590), .I1(n620), .S(log_result[1]), .ZN(n91) );
  MUX2ND0 U304 ( .I0(n35), .I1(n36), .S(n11), .ZN(n610) );
  MUX2ND0 U305 ( .I0(n37), .I1(n38), .S(log_result[0]), .ZN(n640) );
  MUX2ND0 U306 ( .I0(n610), .I1(n640), .S(log_result[1]), .ZN(n94) );
  MUX2ND0 U307 ( .I0(n91), .I1(n94), .S(log_result[2]), .ZN(n131) );
  MUX2ND0 U308 ( .I0(n129), .I1(n131), .S(n16), .ZN(n176) );
  MUX2ND0 U309 ( .I0(n24), .I1(n25), .S(n11), .ZN(n74) );
  MUX2ND0 U310 ( .I0(n11), .I1(n74), .S(log_result[1]), .ZN(n99) );
  MUX2ND0 U311 ( .I0(n26), .I1(n27), .S(n11), .ZN(n73) );
  MUX2ND0 U312 ( .I0(n28), .I1(n29), .S(n11), .ZN(n76) );
  MUX2ND0 U313 ( .I0(n73), .I1(n76), .S(log_result[1]), .ZN(n101) );
  MUX2ND0 U314 ( .I0(n99), .I1(n101), .S(n14), .ZN(n134) );
  MUX2ND0 U315 ( .I0(n30), .I1(n31), .S(n11), .ZN(n75) );
  MUX2ND0 U316 ( .I0(n32), .I1(n33), .S(n11), .ZN(n78) );
  MUX2ND0 U317 ( .I0(n75), .I1(n78), .S(log_result[1]), .ZN(n100) );
  MUX2ND0 U318 ( .I0(n34), .I1(n35), .S(n11), .ZN(n77) );
  MUX2ND0 U319 ( .I0(n36), .I1(n37), .S(n11), .ZN(n80) );
  MUX2ND0 U320 ( .I0(n77), .I1(n80), .S(log_result[1]), .ZN(n103) );
  MUX2ND0 U321 ( .I0(n100), .I1(n103), .S(n14), .ZN(n136) );
  MUX2ND0 U322 ( .I0(n134), .I1(n136), .S(n16), .ZN(n179) );
  MUX2ND0 U323 ( .I0(n38), .I1(n39), .S(n11), .ZN(n79) );
  MUX2ND0 U324 ( .I0(n40), .I1(n41), .S(n11), .ZN(n82) );
  MUX2ND0 U325 ( .I0(n79), .I1(n82), .S(n12), .ZN(n102) );
  MUX2ND0 U326 ( .I0(n42), .I1(n43), .S(n11), .ZN(n81) );
  MUX2ND0 U327 ( .I0(n440), .I1(n450), .S(n11), .ZN(n84) );
  MUX2ND0 U328 ( .I0(n81), .I1(n84), .S(n12), .ZN(n105) );
  MUX2ND0 U329 ( .I0(n102), .I1(n105), .S(n14), .ZN(n135) );
  MUX2ND0 U330 ( .I0(n460), .I1(n470), .S(n11), .ZN(n83) );
  MUX2ND0 U331 ( .I0(n480), .I1(n490), .S(n11), .ZN(n86) );
  MUX2ND0 U332 ( .I0(n83), .I1(n86), .S(n12), .ZN(n104) );
  MUX2ND0 U333 ( .I0(n500), .I1(n510), .S(n11), .ZN(n85) );
  MUX2ND0 U334 ( .I0(n520), .I1(n530), .S(log_result[0]), .ZN(n88) );
  MUX2ND0 U335 ( .I0(n85), .I1(n88), .S(n12), .ZN(n107) );
  MUX2ND0 U336 ( .I0(n104), .I1(n107), .S(n14), .ZN(n138) );
  MUX2ND0 U337 ( .I0(n135), .I1(n138), .S(n16), .ZN(n181) );
  MUX2ND0 U338 ( .I0(n179), .I1(n181), .S(n18), .ZN(n240) );
  MUX2ND0 U339 ( .I0(n240), .I1(n241), .S(log_result[5]), .ZN(n550) );
  MUX2ND0 U340 ( .I0(n580), .I1(n570), .S(n12), .ZN(n111) );
  MUX2ND0 U341 ( .I0(n109), .I1(n111), .S(n14), .ZN(n140) );
  MUX2ND0 U342 ( .I0(n600), .I1(n590), .S(n12), .ZN(n110) );
  MUX2ND0 U343 ( .I0(n620), .I1(n610), .S(n12), .ZN(n113) );
  MUX2ND0 U344 ( .I0(n110), .I1(n113), .S(n14), .ZN(n142) );
  MUX2ND0 U345 ( .I0(n140), .I1(n142), .S(n16), .ZN(n183) );
  MUX2ND0 U346 ( .I0(n640), .I1(n630), .S(n12), .ZN(n112) );
  MUX2ND0 U347 ( .I0(n660), .I1(n650), .S(n12), .ZN(n115) );
  MUX2ND0 U348 ( .I0(n112), .I1(n115), .S(n14), .ZN(n141) );
  MUX2ND0 U349 ( .I0(n68), .I1(n670), .S(n12), .ZN(n114) );
  MUX2ND0 U350 ( .I0(n70), .I1(n69), .S(n12), .ZN(n117) );
  MUX2ND0 U351 ( .I0(n114), .I1(n117), .S(n14), .ZN(n144) );
  MUX2ND0 U352 ( .I0(n141), .I1(n144), .S(n16), .ZN(n185) );
  MUX2ND0 U353 ( .I0(n183), .I1(n185), .S(n18), .ZN(n244) );
  MUX2ND0 U354 ( .I0(n244), .I1(n245), .S(log_result[5]), .ZN(n72) );
  MUX2ND0 U355 ( .I0(n74), .I1(n73), .S(n12), .ZN(n121) );
  MUX2ND0 U356 ( .I0(n119), .I1(n121), .S(n14), .ZN(n146) );
  MUX2ND0 U357 ( .I0(n76), .I1(n75), .S(n12), .ZN(n120) );
  MUX2ND0 U358 ( .I0(n78), .I1(n77), .S(n12), .ZN(n123) );
  MUX2ND0 U359 ( .I0(n120), .I1(n123), .S(n14), .ZN(n148) );
  MUX2ND0 U360 ( .I0(n146), .I1(n148), .S(log_result[3]), .ZN(n187) );
  MUX2ND0 U361 ( .I0(n80), .I1(n79), .S(n12), .ZN(n122) );
  MUX2ND0 U362 ( .I0(n82), .I1(n81), .S(n12), .ZN(n125) );
  MUX2ND0 U363 ( .I0(n122), .I1(n125), .S(n14), .ZN(n147) );
  MUX2ND0 U364 ( .I0(n84), .I1(n83), .S(n12), .ZN(n124) );
  MUX2ND0 U365 ( .I0(n86), .I1(n85), .S(n12), .ZN(n127) );
  MUX2ND0 U366 ( .I0(n124), .I1(n127), .S(n14), .ZN(n150) );
  MUX2ND0 U367 ( .I0(n147), .I1(n150), .S(n16), .ZN(n189) );
  MUX2ND0 U368 ( .I0(n187), .I1(n189), .S(n18), .ZN(n248) );
  MUX2ND0 U369 ( .I0(n88), .I1(n87), .S(log_result[1]), .ZN(n126) );
  MUX2ND0 U370 ( .I0(n248), .I1(n249), .S(log_result[5]), .ZN(n89) );
  MUX2ND0 U371 ( .I0(n92), .I1(n91), .S(n14), .ZN(n154) );
  MUX2ND0 U372 ( .I0(n152), .I1(n154), .S(log_result[3]), .ZN(n191) );
  MUX2ND0 U373 ( .I0(n94), .I1(n93), .S(n14), .ZN(n153) );
  MUX2ND0 U374 ( .I0(n96), .I1(n95), .S(n14), .ZN(n156) );
  MUX2ND0 U375 ( .I0(n153), .I1(n156), .S(log_result[3]), .ZN(n193) );
  MUX2ND0 U376 ( .I0(n191), .I1(n193), .S(n18), .ZN(n252) );
  MUX2ND0 U377 ( .I0(n252), .I1(n253), .S(log_result[5]), .ZN(n98) );
  MUX2ND0 U378 ( .I0(n101), .I1(n100), .S(log_result[2]), .ZN(n160) );
  MUX2ND0 U379 ( .I0(n158), .I1(n160), .S(log_result[3]), .ZN(n195) );
  MUX2ND0 U380 ( .I0(n103), .I1(n102), .S(n14), .ZN(n159) );
  MUX2ND0 U381 ( .I0(n105), .I1(n104), .S(log_result[2]), .ZN(n162) );
  MUX2ND0 U382 ( .I0(n159), .I1(n162), .S(log_result[3]), .ZN(n197) );
  MUX2ND0 U383 ( .I0(n195), .I1(n197), .S(n18), .ZN(n256) );
  MUX2ND0 U384 ( .I0(n107), .I1(n106), .S(log_result[2]), .ZN(n161) );
  MUX2ND0 U385 ( .I0(n256), .I1(n257), .S(log_result[5]), .ZN(n108) );
  MUX2ND0 U386 ( .I0(n111), .I1(n110), .S(log_result[2]), .ZN(n166) );
  MUX2ND0 U387 ( .I0(n164), .I1(n166), .S(log_result[3]), .ZN(n199) );
  MUX2ND0 U388 ( .I0(n113), .I1(n112), .S(n14), .ZN(n165) );
  MUX2ND0 U389 ( .I0(n115), .I1(n114), .S(log_result[2]), .ZN(n168) );
  MUX2ND0 U390 ( .I0(n165), .I1(n168), .S(log_result[3]), .ZN(n201) );
  MUX2ND0 U391 ( .I0(n199), .I1(n201), .S(n18), .ZN(n260) );
  MUX2ND0 U392 ( .I0(n117), .I1(n116), .S(log_result[2]), .ZN(n167) );
  MUX2ND0 U393 ( .I0(n260), .I1(n261), .S(log_result[5]), .ZN(n118) );
  MUX2ND0 U394 ( .I0(n121), .I1(n120), .S(log_result[2]), .ZN(n172) );
  MUX2ND0 U395 ( .I0(n170), .I1(n172), .S(log_result[3]), .ZN(n203) );
  MUX2ND0 U396 ( .I0(n123), .I1(n122), .S(log_result[2]), .ZN(n171) );
  MUX2ND0 U397 ( .I0(n125), .I1(n124), .S(log_result[2]), .ZN(n174) );
  MUX2ND0 U398 ( .I0(n171), .I1(n174), .S(log_result[3]), .ZN(n205) );
  MUX2ND0 U399 ( .I0(n203), .I1(n205), .S(log_result[4]), .ZN(n264) );
  MUX2ND0 U400 ( .I0(n127), .I1(n126), .S(log_result[2]), .ZN(n173) );
  MUX2ND0 U401 ( .I0(n264), .I1(n265), .S(log_result[5]), .ZN(n128) );
  MUX2ND0 U402 ( .I0(n131), .I1(n130), .S(log_result[3]), .ZN(n209) );
  MUX2ND0 U403 ( .I0(n207), .I1(n209), .S(n18), .ZN(n268) );
  MUX2ND0 U404 ( .I0(n268), .I1(n269), .S(log_result[5]), .ZN(n133) );
  MUX2ND0 U405 ( .I0(n136), .I1(n135), .S(log_result[3]), .ZN(n213) );
  MUX2ND0 U406 ( .I0(n211), .I1(n213), .S(n18), .ZN(n272) );
  MUX2ND0 U407 ( .I0(n138), .I1(n137), .S(log_result[3]), .ZN(n212) );
  MUX2ND0 U408 ( .I0(n272), .I1(n273), .S(log_result[5]), .ZN(n139) );
  MUX2ND0 U409 ( .I0(n142), .I1(n141), .S(log_result[3]), .ZN(n217) );
  MUX2ND0 U410 ( .I0(n215), .I1(n217), .S(log_result[4]), .ZN(n276) );
  MUX2ND0 U411 ( .I0(n144), .I1(n143), .S(log_result[3]), .ZN(n216) );
  MUX2ND0 U412 ( .I0(n276), .I1(n277), .S(log_result[5]), .ZN(n145) );
  MUX2ND0 U413 ( .I0(n148), .I1(n147), .S(log_result[3]), .ZN(n221) );
  MUX2ND0 U414 ( .I0(n219), .I1(n221), .S(log_result[4]), .ZN(n280) );
  MUX2ND0 U415 ( .I0(n150), .I1(n149), .S(log_result[3]), .ZN(n220) );
  MUX2ND0 U416 ( .I0(n280), .I1(n281), .S(n21), .ZN(n151) );
  MUX2ND0 U417 ( .I0(n154), .I1(n153), .S(n16), .ZN(n225) );
  MUX2ND0 U418 ( .I0(n223), .I1(n225), .S(n18), .ZN(n284) );
  MUX2ND0 U419 ( .I0(n156), .I1(n155), .S(n16), .ZN(n224) );
  MUX2ND0 U420 ( .I0(n284), .I1(n285), .S(n21), .ZN(n157) );
  MUX2ND0 U421 ( .I0(n160), .I1(n159), .S(n16), .ZN(n229) );
  MUX2ND0 U422 ( .I0(n227), .I1(n229), .S(n18), .ZN(n288) );
  MUX2ND0 U423 ( .I0(n162), .I1(n161), .S(n16), .ZN(n228) );
  MUX2ND0 U424 ( .I0(n288), .I1(n289), .S(n21), .ZN(n163) );
  MUX2ND0 U425 ( .I0(n166), .I1(n165), .S(n16), .ZN(n233) );
  MUX2ND0 U426 ( .I0(n231), .I1(n233), .S(n18), .ZN(n292) );
  MUX2ND0 U427 ( .I0(n168), .I1(n167), .S(n16), .ZN(n232) );
  MUX2ND0 U428 ( .I0(n292), .I1(n293), .S(n21), .ZN(n169) );
  MUX2ND0 U429 ( .I0(n172), .I1(n171), .S(n16), .ZN(n237) );
  MUX2ND0 U430 ( .I0(n235), .I1(n237), .S(n18), .ZN(n296) );
  MUX2ND0 U431 ( .I0(n174), .I1(n173), .S(n16), .ZN(n236) );
  MUX2ND0 U432 ( .I0(n296), .I1(n297), .S(n21), .ZN(n175) );
  MUX2ND0 U433 ( .I0(n300), .I1(n301), .S(n21), .ZN(n178) );
  MUX2ND0 U434 ( .I0(n181), .I1(n180), .S(n18), .ZN(n305) );
  MUX2ND0 U435 ( .I0(n304), .I1(n305), .S(n21), .ZN(n182) );
  MUX2ND0 U436 ( .I0(n185), .I1(n184), .S(n18), .ZN(n309) );
  MUX2ND0 U437 ( .I0(n308), .I1(n309), .S(n21), .ZN(n186) );
  MUX2ND0 U438 ( .I0(n189), .I1(n188), .S(n18), .ZN(n313) );
  MUX2ND0 U439 ( .I0(n312), .I1(n313), .S(n21), .ZN(n190) );
  MUX2ND0 U440 ( .I0(n193), .I1(n192), .S(n18), .ZN(n317) );
  MUX2ND0 U441 ( .I0(n316), .I1(n317), .S(n21), .ZN(n194) );
  MUX2ND0 U442 ( .I0(n197), .I1(n196), .S(n18), .ZN(n321) );
  MUX2ND0 U443 ( .I0(n320), .I1(n321), .S(n21), .ZN(n198) );
  MUX2ND0 U444 ( .I0(n201), .I1(n200), .S(log_result[4]), .ZN(n325) );
  MUX2ND0 U445 ( .I0(n324), .I1(n325), .S(n21), .ZN(n202) );
  MUX2ND0 U446 ( .I0(n205), .I1(n204), .S(log_result[4]), .ZN(n329) );
  MUX2ND0 U447 ( .I0(n328), .I1(n329), .S(n21), .ZN(n206) );
  MUX2ND0 U448 ( .I0(n209), .I1(n208), .S(log_result[4]), .ZN(n333) );
  MUX2ND0 U449 ( .I0(n332), .I1(n333), .S(n21), .ZN(n210) );
  MUX2ND0 U450 ( .I0(n213), .I1(n212), .S(log_result[4]), .ZN(n337) );
  MUX2ND0 U451 ( .I0(n336), .I1(n337), .S(n21), .ZN(n214) );
  MUX2ND0 U452 ( .I0(n217), .I1(n216), .S(log_result[4]), .ZN(n341) );
  MUX2ND0 U453 ( .I0(n340), .I1(n341), .S(n21), .ZN(n218) );
  MUX2ND0 U454 ( .I0(n221), .I1(n220), .S(log_result[4]), .ZN(n345) );
  MUX2ND0 U455 ( .I0(n344), .I1(n345), .S(n21), .ZN(n222) );
  MUX2ND0 U456 ( .I0(n225), .I1(n224), .S(log_result[4]), .ZN(n349) );
  MUX2ND0 U457 ( .I0(n348), .I1(n349), .S(n20), .ZN(n226) );
  MUX2ND0 U458 ( .I0(n229), .I1(n228), .S(log_result[4]), .ZN(n353) );
  MUX2ND0 U459 ( .I0(n352), .I1(n353), .S(n21), .ZN(n230) );
  MUX2ND0 U460 ( .I0(n233), .I1(n232), .S(log_result[4]), .ZN(n357) );
  MUX2ND0 U461 ( .I0(n356), .I1(n357), .S(log_result[5]), .ZN(n234) );
  MUX2ND0 U462 ( .I0(n237), .I1(n236), .S(log_result[4]), .ZN(n361) );
  MUX2ND0 U463 ( .I0(n360), .I1(n361), .S(log_result[5]), .ZN(n238) );
  MUX2ND0 U464 ( .I0(n243), .I1(n242), .S(n23), .ZN(result_o_hybrid[33]) );
  MUX2ND0 U465 ( .I0(n247), .I1(n246), .S(n23), .ZN(result_o_hybrid[34]) );
  MUX2ND0 U466 ( .I0(n251), .I1(n250), .S(n23), .ZN(result_o_hybrid[35]) );
  MUX2ND0 U467 ( .I0(n255), .I1(n254), .S(n23), .ZN(result_o_hybrid[36]) );
  MUX2ND0 U468 ( .I0(n259), .I1(n258), .S(n23), .ZN(result_o_hybrid[37]) );
  MUX2ND0 U469 ( .I0(n263), .I1(n262), .S(n23), .ZN(result_o_hybrid[38]) );
  MUX2ND0 U470 ( .I0(n267), .I1(n266), .S(n23), .ZN(result_o_hybrid[39]) );
  MUX2ND0 U471 ( .I0(n271), .I1(n270), .S(log_result[6]), .ZN(
        result_o_hybrid[40]) );
  MUX2ND0 U472 ( .I0(n275), .I1(n274), .S(log_result[6]), .ZN(
        result_o_hybrid[41]) );
  MUX2ND0 U473 ( .I0(n279), .I1(n278), .S(log_result[6]), .ZN(
        result_o_hybrid[42]) );
  MUX2ND0 U474 ( .I0(n283), .I1(n282), .S(log_result[6]), .ZN(
        result_o_hybrid[43]) );
  MUX2ND0 U475 ( .I0(n287), .I1(n286), .S(n23), .ZN(result_o_hybrid[44]) );
  MUX2ND0 U476 ( .I0(n291), .I1(n290), .S(n23), .ZN(result_o_hybrid[45]) );
  MUX2ND0 U477 ( .I0(n295), .I1(n294), .S(n23), .ZN(result_o_hybrid[46]) );
  MUX2ND0 U478 ( .I0(n299), .I1(n298), .S(log_result[6]), .ZN(
        result_o_hybrid[47]) );
  MUX2ND0 U479 ( .I0(n303), .I1(n302), .S(log_result[6]), .ZN(
        result_o_hybrid[48]) );
  MUX2ND0 U480 ( .I0(n307), .I1(n306), .S(log_result[6]), .ZN(
        result_o_hybrid[49]) );
  MUX2ND0 U481 ( .I0(n311), .I1(n310), .S(log_result[6]), .ZN(
        result_o_hybrid[50]) );
  MUX2ND0 U482 ( .I0(n315), .I1(n314), .S(log_result[6]), .ZN(
        result_o_hybrid[51]) );
  MUX2ND0 U483 ( .I0(n319), .I1(n318), .S(n23), .ZN(result_o_hybrid[52]) );
  MUX2ND0 U484 ( .I0(n323), .I1(n322), .S(log_result[6]), .ZN(
        result_o_hybrid[53]) );
  MUX2ND0 U485 ( .I0(n327), .I1(n326), .S(log_result[6]), .ZN(
        result_o_hybrid[54]) );
  MUX2ND0 U486 ( .I0(n331), .I1(n330), .S(log_result[6]), .ZN(
        result_o_hybrid[55]) );
  MUX2ND0 U487 ( .I0(n335), .I1(n334), .S(log_result[6]), .ZN(
        result_o_hybrid[56]) );
  MUX2ND0 U488 ( .I0(n339), .I1(n338), .S(log_result[6]), .ZN(
        result_o_hybrid[57]) );
  MUX2ND0 U489 ( .I0(n343), .I1(n342), .S(log_result[6]), .ZN(
        result_o_hybrid[58]) );
  MUX2ND0 U490 ( .I0(n347), .I1(n346), .S(n23), .ZN(result_o_hybrid[59]) );
  MUX2ND0 U491 ( .I0(n351), .I1(n350), .S(log_result[6]), .ZN(
        result_o_hybrid[60]) );
  MUX2ND0 U492 ( .I0(n355), .I1(n354), .S(log_result[6]), .ZN(
        result_o_hybrid[61]) );
  MUX2ND0 U493 ( .I0(n359), .I1(n358), .S(log_result[6]), .ZN(
        result_o_hybrid[62]) );
  MUX2ND0 U494 ( .I0(n363), .I1(n362), .S(n23), .ZN(result_o_hybrid[63]) );
endmodule


module fp32_normal_finite_wrapper_DW01_add_3_DW01_add_12 ( A, B, CI, SUM, CO
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


module fp32_normal_finite_wrapper_DW01_add_1_DW01_add_10 ( A, B, CI, SUM, CO
 );
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
  fp32_normal_finite_wrapper_DW01_add_3_DW01_add_12 add_1_root_add_0_root_add_25_2 ( 
        .A(x[30:23]), .B({N42, N41, N40, N39, N38, N37, N36, N11}), .CI(n79), 
        .SUM({N34, N33, N32, N31, N30, N29, N28, N27}) );
  fp32_normal_finite_wrapper_DW01_add_1_DW01_add_10 add_1_root_add_0_root_add_22_2 ( 
        .A(x[30:23]), .B({y[30], N17, N16, N15, N14, N13, N12, N11}), .CI(n79), 
        .SUM({N10, N9, N8, N7, N6, N5, N4, N3}) );
  AN2XD1 U3 ( .A1(exponent_adjust[0]), .A2(N3), .Z(n1) );
  AN2XD1 U4 ( .A1(exponent_adjust[0]), .A2(N27), .Z(n2) );
  CKBD1 U5 ( .I(result_fraction[0]), .Z(result[0]) );
  CKBD1 U6 ( .I(result_fraction[1]), .Z(result[1]) );
  CKBD1 U7 ( .I(result_fraction[2]), .Z(result[2]) );
  CKBD1 U8 ( .I(result_fraction[3]), .Z(result[3]) );
  CKBD1 U9 ( .I(result_fraction[4]), .Z(result[4]) );
  CKBD1 U10 ( .I(result_fraction[5]), .Z(result[5]) );
  CKBD1 U11 ( .I(result_fraction[7]), .Z(result[7]) );
  CKBD1 U12 ( .I(result_fraction[6]), .Z(result[6]) );
  CKBD1 U13 ( .I(result_fraction[8]), .Z(result[8]) );
  CKBD1 U14 ( .I(result_fraction[9]), .Z(result[9]) );
  CKBD1 U15 ( .I(result_fraction[10]), .Z(result[10]) );
  CKBD1 U16 ( .I(result_fraction[11]), .Z(result[11]) );
  CKBD1 U17 ( .I(result_fraction[12]), .Z(result[12]) );
  CKBD1 U18 ( .I(result_fraction[13]), .Z(result[13]) );
  CKBD1 U19 ( .I(result_fraction[14]), .Z(result[14]) );
  INVD1 U20 ( .I(divide_mode), .ZN(n78) );
  CKBD1 U21 ( .I(result_fraction[22]), .Z(result[22]) );
  CKBD1 U22 ( .I(result_fraction[21]), .Z(result[21]) );
  CKBD1 U23 ( .I(result_fraction[20]), .Z(result[20]) );
  CKBD1 U24 ( .I(result_fraction[16]), .Z(result[16]) );
  CKBD1 U25 ( .I(result_fraction[17]), .Z(result[17]) );
  CKBD1 U26 ( .I(result_fraction[18]), .Z(result[18]) );
  CKBD1 U27 ( .I(result_fraction[19]), .Z(result[19]) );
  CKBD1 U28 ( .I(result_fraction[15]), .Z(result[15]) );
  AO22D0 U29 ( .A1(N49), .A2(n78), .B1(N25), .B2(divide_mode), .Z(result[29])
         );
  AO22D0 U30 ( .A1(N48), .A2(n78), .B1(N24), .B2(divide_mode), .Z(result[28])
         );
  AO22D0 U31 ( .A1(N47), .A2(n78), .B1(N23), .B2(divide_mode), .Z(result[27])
         );
  AO22D0 U32 ( .A1(N46), .A2(n78), .B1(N22), .B2(divide_mode), .Z(result[26])
         );
  AO22D0 U33 ( .A1(N45), .A2(n78), .B1(N21), .B2(divide_mode), .Z(result[25])
         );
  AO22D0 U34 ( .A1(N44), .A2(n78), .B1(N20), .B2(divide_mode), .Z(result[24])
         );
  FA1D0 U35 ( .A(N4), .B(exponent_adjust[1]), .CI(n1), .CO(
        add_0_root_add_0_root_add_22_2_carry[2]), .S(N20) );
  FA1D0 U36 ( .A(N5), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[2]), .CO(
        add_0_root_add_0_root_add_22_2_carry[3]), .S(N21) );
  FA1D0 U37 ( .A(N6), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[3]), .CO(
        add_0_root_add_0_root_add_22_2_carry[4]), .S(N22) );
  FA1D0 U38 ( .A(N7), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[4]), .CO(
        add_0_root_add_0_root_add_22_2_carry[5]), .S(N23) );
  FA1D0 U39 ( .A(N8), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[5]), .CO(
        add_0_root_add_0_root_add_22_2_carry[6]), .S(N24) );
  FA1D0 U40 ( .A(N9), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_22_2_carry[6]), .CO(
        add_0_root_add_0_root_add_22_2_carry[7]), .S(N25) );
  FA1D0 U41 ( .A(N28), .B(exponent_adjust[1]), .CI(n2), .CO(
        add_0_root_add_0_root_add_25_2_carry[2]), .S(N44) );
  FA1D0 U42 ( .A(N29), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[2]), .CO(
        add_0_root_add_0_root_add_25_2_carry[3]), .S(N45) );
  FA1D0 U43 ( .A(N30), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[3]), .CO(
        add_0_root_add_0_root_add_25_2_carry[4]), .S(N46) );
  FA1D0 U44 ( .A(N31), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[4]), .CO(
        add_0_root_add_0_root_add_25_2_carry[5]), .S(N47) );
  FA1D0 U45 ( .A(N32), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[5]), .CO(
        add_0_root_add_0_root_add_25_2_carry[6]), .S(N48) );
  FA1D0 U46 ( .A(N33), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[6]), .CO(
        add_0_root_add_0_root_add_25_2_carry[7]), .S(N49) );
  AO22D0 U47 ( .A1(N43), .A2(n78), .B1(N19), .B2(divide_mode), .Z(result[23])
         );
  AO22D0 U48 ( .A1(N50), .A2(n78), .B1(divide_mode), .B2(N26), .Z(result[30])
         );
  XOR3D1 U49 ( .A1(N34), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_25_2_carry[7]), .Z(N50) );
  XOR3D1 U50 ( .A1(N10), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_22_2_carry[7]), .Z(N26) );
  CKBD1 U51 ( .I(y[22]), .Z(fraction_y[22]) );
  CKBD1 U52 ( .I(y[21]), .Z(fraction_y[21]) );
  CKBD1 U53 ( .I(y[20]), .Z(fraction_y[20]) );
  CKBD1 U54 ( .I(y[8]), .Z(fraction_y[8]) );
  CKBD1 U55 ( .I(y[9]), .Z(fraction_y[9]) );
  CKBD1 U56 ( .I(y[10]), .Z(fraction_y[10]) );
  CKBD1 U57 ( .I(y[11]), .Z(fraction_y[11]) );
  CKBD1 U58 ( .I(y[12]), .Z(fraction_y[12]) );
  CKBD1 U59 ( .I(y[13]), .Z(fraction_y[13]) );
  CKBD1 U60 ( .I(y[14]), .Z(fraction_y[14]) );
  CKBD1 U61 ( .I(y[15]), .Z(fraction_y[15]) );
  CKBD1 U62 ( .I(y[16]), .Z(fraction_y[16]) );
  CKBD1 U63 ( .I(y[17]), .Z(fraction_y[17]) );
  CKBD1 U64 ( .I(y[18]), .Z(fraction_y[18]) );
  CKBD1 U65 ( .I(y[19]), .Z(fraction_y[19]) );
  CKBD1 U66 ( .I(y[0]), .Z(fraction_y[0]) );
  CKBD1 U67 ( .I(y[1]), .Z(fraction_y[1]) );
  CKBD1 U68 ( .I(y[2]), .Z(fraction_y[2]) );
  CKBD1 U69 ( .I(y[3]), .Z(fraction_y[3]) );
  CKBD1 U70 ( .I(y[4]), .Z(fraction_y[4]) );
  CKBD1 U71 ( .I(y[5]), .Z(fraction_y[5]) );
  CKBD1 U72 ( .I(y[6]), .Z(fraction_y[6]) );
  CKBD1 U73 ( .I(y[7]), .Z(fraction_y[7]) );
  AN2XD1 U74 ( .A1(y[23]), .A2(y[24]), .Z(n35) );
  INVD1 U75 ( .I(y[29]), .ZN(N17) );
  INVD0 U76 ( .I(y[24]), .ZN(N12) );
  INVD1 U77 ( .I(y[25]), .ZN(N13) );
  INVD1 U78 ( .I(y[26]), .ZN(N14) );
  INVD1 U79 ( .I(y[27]), .ZN(N15) );
  INVD1 U80 ( .I(y[28]), .ZN(N16) );
  AN2XD1 U81 ( .A1(n35), .A2(y[25]), .Z(n410) );
  AN2XD1 U82 ( .A1(n410), .A2(y[26]), .Z(n51) );
  AN2XD1 U83 ( .A1(n51), .A2(y[27]), .Z(n60) );
  AN2XD1 U84 ( .A1(n60), .A2(y[28]), .Z(n70) );
  CKXOR2D1 U85 ( .A1(y[30]), .A2(n77), .Z(N42) );
  ND2D1 U86 ( .A1(n70), .A2(y[29]), .ZN(n77) );
  CKBD1 U87 ( .I(x[22]), .Z(fraction_x[22]) );
  CKBD1 U88 ( .I(x[21]), .Z(fraction_x[21]) );
  CKBD1 U89 ( .I(x[20]), .Z(fraction_x[20]) );
  CKBD1 U90 ( .I(x[19]), .Z(fraction_x[19]) );
  CKBD1 U91 ( .I(x[18]), .Z(fraction_x[18]) );
  CKBD1 U92 ( .I(x[17]), .Z(fraction_x[17]) );
  CKBD1 U93 ( .I(x[16]), .Z(fraction_x[16]) );
  CKBD1 U94 ( .I(x[15]), .Z(fraction_x[15]) );
  CKBD1 U95 ( .I(x[14]), .Z(fraction_x[14]) );
  CKBD1 U96 ( .I(x[13]), .Z(fraction_x[13]) );
  CKBD1 U97 ( .I(x[12]), .Z(fraction_x[12]) );
  CKBD1 U98 ( .I(x[11]), .Z(fraction_x[11]) );
  CKBD1 U99 ( .I(x[10]), .Z(fraction_x[10]) );
  CKBD1 U100 ( .I(x[9]), .Z(fraction_x[9]) );
  CKBD1 U101 ( .I(x[8]), .Z(fraction_x[8]) );
  CKBD1 U102 ( .I(x[7]), .Z(fraction_x[7]) );
  CKBD1 U103 ( .I(x[6]), .Z(fraction_x[6]) );
  CKBD1 U104 ( .I(x[5]), .Z(fraction_x[5]) );
  CKBD1 U105 ( .I(x[4]), .Z(fraction_x[4]) );
  CKBD1 U106 ( .I(x[3]), .Z(fraction_x[3]) );
  CKBD1 U107 ( .I(x[2]), .Z(fraction_x[2]) );
  CKBD1 U108 ( .I(x[1]), .Z(fraction_x[1]) );
  CKBD1 U109 ( .I(x[0]), .Z(fraction_x[0]) );
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


module simdive_sisd32_fp32_wrapper ( x, y, divide_mode, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  input divide_mode;
  wire   N12, N38, N39, N40, N41, N42, N43, N44, N45, N46, N47, N48, N49, N50,
         N51, N52, N53, N54, N55, N56, N57, N58, N59, N60, n400, n410, n420,
         n430, n440, n450, n460, n470, n480, n490, n500, n510, n520, n530,
         n540, n550, n560, n570, n580, n590, n600, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119;
  wire   [22:0] mantissa_x;
  wire   [22:0] mantissa_y;
  wire   [30:0] core_x;
  wire   [63:0] core_result;
  wire   [22:0] result_fraction;
  wire   [2:0] exponent_adjust;
  wire   [21:10] sub_190_carry;

  AO222D1 U11 ( .A1(core_result[33]), .A2(n94), .B1(core_result[32]), .B2(n400), .C1(N47), .C2(n410), .Z(result_fraction[9]) );
  AO222D1 U12 ( .A1(n94), .A2(core_result[32]), .B1(core_result[31]), .B2(n400), .C1(N46), .C2(n410), .Z(result_fraction[8]) );
  AO222D1 U13 ( .A1(core_result[31]), .A2(n94), .B1(core_result[30]), .B2(n400), .C1(N45), .C2(n410), .Z(result_fraction[7]) );
  AO222D1 U14 ( .A1(core_result[30]), .A2(n94), .B1(core_result[29]), .B2(n400), .C1(N44), .C2(n410), .Z(result_fraction[6]) );
  AO222D1 U15 ( .A1(core_result[29]), .A2(n94), .B1(core_result[28]), .B2(n400), .C1(N43), .C2(n410), .Z(result_fraction[5]) );
  AO222D1 U16 ( .A1(core_result[28]), .A2(n94), .B1(core_result[27]), .B2(n400), .C1(N42), .C2(n410), .Z(result_fraction[4]) );
  AO222D1 U17 ( .A1(core_result[27]), .A2(n94), .B1(core_result[26]), .B2(n400), .C1(N41), .C2(n410), .Z(result_fraction[3]) );
  AO222D1 U18 ( .A1(core_result[26]), .A2(n94), .B1(core_result[25]), .B2(n400), .C1(N40), .C2(n410), .Z(result_fraction[2]) );
  AO222D1 U20 ( .A1(n94), .A2(core_result[46]), .B1(n400), .B2(core_result[45]), .C1(exponent_adjust[2]), .C2(N43), .Z(n430) );
  AO222D1 U22 ( .A1(n94), .A2(core_result[45]), .B1(n400), .B2(core_result[44]), .C1(exponent_adjust[2]), .C2(N42), .Z(n440) );
  AO222D1 U24 ( .A1(n94), .A2(core_result[44]), .B1(n400), .B2(core_result[43]), .C1(exponent_adjust[2]), .C2(N41), .Z(n450) );
  AO222D1 U25 ( .A1(core_result[25]), .A2(n94), .B1(core_result[24]), .B2(n400), .C1(N39), .C2(n410), .Z(result_fraction[1]) );
  AO222D1 U27 ( .A1(n94), .A2(core_result[43]), .B1(n400), .B2(core_result[42]), .C1(exponent_adjust[2]), .C2(N40), .Z(n460) );
  AO222D1 U29 ( .A1(n94), .A2(core_result[42]), .B1(n400), .B2(core_result[41]), .C1(exponent_adjust[2]), .C2(N39), .Z(n470) );
  AO222D1 U31 ( .A1(n94), .A2(core_result[41]), .B1(n400), .B2(core_result[40]), .C1(exponent_adjust[2]), .C2(N38), .Z(n480) );
  AO222D1 U33 ( .A1(n94), .A2(core_result[40]), .B1(n400), .B2(core_result[39]), .C1(exponent_adjust[2]), .C2(core_result[0]), .Z(n490) );
  AO222D1 U37 ( .A1(core_result[38]), .A2(n94), .B1(core_result[37]), .B2(n400), .C1(N52), .C2(n410), .Z(result_fraction[14]) );
  AO222D1 U38 ( .A1(core_result[37]), .A2(n94), .B1(core_result[36]), .B2(n400), .C1(N51), .C2(n410), .Z(result_fraction[13]) );
  AO222D1 U39 ( .A1(core_result[36]), .A2(n94), .B1(core_result[35]), .B2(n400), .C1(N50), .C2(n410), .Z(result_fraction[12]) );
  AO222D1 U40 ( .A1(core_result[35]), .A2(n94), .B1(core_result[34]), .B2(n400), .C1(N49), .C2(n410), .Z(result_fraction[11]) );
  AO222D1 U41 ( .A1(core_result[34]), .A2(n94), .B1(core_result[33]), .B2(n400), .C1(N48), .C2(n410), .Z(result_fraction[10]) );
  AO222D1 U42 ( .A1(core_result[24]), .A2(n94), .B1(core_result[23]), .B2(n400), .C1(N38), .C2(n410), .Z(result_fraction[0]) );
  OR3D1 U44 ( .A1(n410), .A2(exponent_adjust[2]), .A3(n94), .Z(
        exponent_adjust[0]) );
  OR4D1 U52 ( .A1(core_result[33]), .A2(core_result[34]), .A3(core_result[35]), 
        .A4(core_result[36]), .Z(n62) );
  OR4D1 U54 ( .A1(core_result[26]), .A2(core_result[27]), .A3(core_result[28]), 
        .A4(core_result[29]), .Z(n63) );
  simdive_sisd32_core core ( .input1_i({n85, core_x}), .input2_i({1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, mantissa_y}), .divide_mode(
        n85), .result_o_hybrid({core_result[63:9], N45, N44, N43, N42, N41, 
        N40, N39, N38, core_result[0]}) );
  fp32_normal_finite_wrapper shared_wrapper ( .x(x), .y(y), .divide_mode(n85), 
        .fraction_x(mantissa_x), .fraction_y(mantissa_y), .result_fraction(
        result_fraction), .exponent_adjust({exponent_adjust[2], 
        exponent_adjust[2], exponent_adjust[0]}), .result(result) );
  INVD1 U140 ( .I(n86), .ZN(n85) );
  INR4D0 U141 ( .A1(n540), .B1(n550), .B2(n560), .B3(n570), .ZN(n520) );
  ND4D1 U142 ( .A1(n66), .A2(n67), .A3(n68), .A4(n69), .ZN(n560) );
  IND4D1 U143 ( .A1(core_result[37]), .B1(n92), .B2(n93), .B3(n70), .ZN(n550)
         );
  INR4D0 U144 ( .A1(n71), .B1(core_result[45]), .B2(core_result[46]), .B3(
        core_result[44]), .ZN(n540) );
  INR4D0 U145 ( .A1(n64), .B1(core_result[18]), .B2(core_result[16]), .B3(
        core_result[17]), .ZN(n590) );
  NR4D0 U146 ( .A1(core_result[22]), .A2(core_result[21]), .A3(core_result[20]), .A4(core_result[19]), .ZN(n64) );
  INR2D1 U147 ( .A1(n520), .B1(N45), .ZN(n530) );
  NR3D0 U148 ( .A1(core_result[13]), .A2(core_result[15]), .A3(core_result[14]), .ZN(n65) );
  NR4D0 U149 ( .A1(core_result[50]), .A2(core_result[49]), .A3(core_result[48]), .A4(core_result[47]), .ZN(n71) );
  NR4D0 U150 ( .A1(core_result[43]), .A2(core_result[42]), .A3(core_result[41]), .A4(core_result[40]), .ZN(n70) );
  NR4D0 U151 ( .A1(core_result[9]), .A2(core_result[63]), .A3(core_result[62]), 
        .A4(core_result[61]), .ZN(n69) );
  NR4D0 U152 ( .A1(core_result[57]), .A2(core_result[56]), .A3(core_result[55]), .A4(core_result[54]), .ZN(n67) );
  NR3D0 U153 ( .A1(core_result[58]), .A2(core_result[60]), .A3(core_result[59]), .ZN(n68) );
  INVD1 U154 ( .I(core_result[39]), .ZN(n93) );
  INVD1 U155 ( .I(core_result[38]), .ZN(n92) );
  NR3D0 U156 ( .A1(core_result[51]), .A2(core_result[53]), .A3(core_result[52]), .ZN(n66) );
  ND4D1 U170 ( .A1(n580), .A2(n590), .A3(n600), .A4(n61), .ZN(n570) );
  INR4D0 U171 ( .A1(n65), .B1(core_result[12]), .B2(core_result[10]), .B3(
        core_result[11]), .ZN(n580) );
  NR4D0 U172 ( .A1(n63), .A2(core_result[23]), .A3(core_result[25]), .A4(
        core_result[24]), .ZN(n600) );
  NR4D0 U173 ( .A1(n62), .A2(core_result[30]), .A3(core_result[32]), .A4(
        core_result[31]), .ZN(n61) );
  INVD1 U174 ( .I(core_result[9]), .ZN(N46) );
  INVD1 U175 ( .I(n500), .ZN(n94) );
  AO221D0 U176 ( .A1(N44), .A2(n420), .B1(N60), .B2(n410), .C(n430), .Z(
        result_fraction[22]) );
  AO221D0 U177 ( .A1(n420), .A2(N43), .B1(N59), .B2(n410), .C(n440), .Z(
        result_fraction[21]) );
  AO221D0 U178 ( .A1(N42), .A2(n420), .B1(N58), .B2(n410), .C(n450), .Z(
        result_fraction[20]) );
  AO221D0 U179 ( .A1(N38), .A2(n420), .B1(N54), .B2(n410), .C(n490), .Z(
        result_fraction[16]) );
  AO221D0 U180 ( .A1(N39), .A2(n420), .B1(N55), .B2(n410), .C(n480), .Z(
        result_fraction[17]) );
  AO221D0 U181 ( .A1(N40), .A2(n420), .B1(N56), .B2(n410), .C(n470), .Z(
        result_fraction[18]) );
  AO221D0 U182 ( .A1(N41), .A2(n420), .B1(N57), .B2(n410), .C(n460), .Z(
        result_fraction[19]) );
  OAI221D0 U183 ( .A1(n95), .A2(n92), .B1(n500), .B2(n93), .C(n510), .ZN(
        result_fraction[15]) );
  INVD1 U184 ( .I(n400), .ZN(n95) );
  AOI22D1 U185 ( .A1(core_result[0]), .A2(n420), .B1(N53), .B2(n410), .ZN(n510) );
  NR2D1 U186 ( .A1(N12), .A2(n85), .ZN(n400) );
  NR2D1 U188 ( .A1(n86), .A2(n520), .ZN(n410) );
  ND2D1 U189 ( .A1(N12), .A2(n86), .ZN(n500) );
  INR3D0 U190 ( .A1(n520), .B1(n86), .B2(n530), .ZN(n420) );
  NR2D1 U191 ( .A1(n86), .A2(n96), .ZN(core_x[30]) );
  NR2D1 U192 ( .A1(n86), .A2(n97), .ZN(core_x[29]) );
  NR2D1 U193 ( .A1(n86), .A2(n98), .ZN(core_x[28]) );
  NR2D1 U194 ( .A1(n86), .A2(n99), .ZN(core_x[27]) );
  NR2D1 U195 ( .A1(n86), .A2(n100), .ZN(core_x[26]) );
  NR2D1 U196 ( .A1(n86), .A2(n101), .ZN(core_x[25]) );
  NR2D1 U197 ( .A1(n86), .A2(n102), .ZN(core_x[24]) );
  ND2D1 U198 ( .A1(n85), .A2(n103), .ZN(core_x[23]) );
  OAI22D1 U199 ( .A1(n86), .A2(n104), .B1(n85), .B2(n96), .ZN(core_x[22]) );
  OAI22D1 U200 ( .A1(n86), .A2(n105), .B1(n85), .B2(n97), .ZN(core_x[21]) );
  OAI22D1 U201 ( .A1(n86), .A2(n106), .B1(n85), .B2(n98), .ZN(core_x[20]) );
  OAI22D1 U202 ( .A1(n86), .A2(n107), .B1(n85), .B2(n99), .ZN(core_x[19]) );
  OAI22D1 U203 ( .A1(n86), .A2(n108), .B1(n85), .B2(n100), .ZN(core_x[18]) );
  OAI22D1 U204 ( .A1(n86), .A2(n109), .B1(n85), .B2(n101), .ZN(core_x[17]) );
  OAI22D1 U205 ( .A1(n86), .A2(n110), .B1(n85), .B2(n102), .ZN(core_x[16]) );
  OAI22D1 U206 ( .A1(n86), .A2(n112), .B1(n85), .B2(n104), .ZN(core_x[14]) );
  OAI22D1 U207 ( .A1(n86), .A2(n113), .B1(n85), .B2(n105), .ZN(core_x[13]) );
  OAI22D1 U208 ( .A1(n86), .A2(n111), .B1(n85), .B2(n103), .ZN(core_x[15]) );
  OAI22D1 U209 ( .A1(n86), .A2(n114), .B1(n85), .B2(n106), .ZN(core_x[12]) );
  OAI22D1 U210 ( .A1(n86), .A2(n115), .B1(n85), .B2(n107), .ZN(core_x[11]) );
  OAI22D1 U211 ( .A1(n86), .A2(n116), .B1(n85), .B2(n108), .ZN(core_x[10]) );
  OAI22D1 U212 ( .A1(n86), .A2(n117), .B1(n85), .B2(n109), .ZN(core_x[9]) );
  OAI22D1 U213 ( .A1(n86), .A2(n118), .B1(n85), .B2(n110), .ZN(core_x[8]) );
  NR2D1 U214 ( .A1(n85), .A2(n111), .ZN(core_x[7]) );
  NR2D1 U215 ( .A1(n85), .A2(n112), .ZN(core_x[6]) );
  NR2D1 U216 ( .A1(n85), .A2(n113), .ZN(core_x[5]) );
  NR2D1 U217 ( .A1(n85), .A2(n114), .ZN(core_x[4]) );
  NR2D1 U218 ( .A1(n85), .A2(n117), .ZN(core_x[1]) );
  NR2D1 U219 ( .A1(n85), .A2(n116), .ZN(core_x[2]) );
  NR2D1 U220 ( .A1(n85), .A2(n115), .ZN(core_x[3]) );
  NR2D1 U221 ( .A1(n85), .A2(n118), .ZN(core_x[0]) );
  INVD1 U222 ( .I(divide_mode), .ZN(n86) );
  INVD1 U223 ( .I(mantissa_x[22]), .ZN(n96) );
  INVD1 U224 ( .I(mantissa_x[21]), .ZN(n97) );
  INVD1 U225 ( .I(mantissa_x[20]), .ZN(n98) );
  INVD1 U226 ( .I(mantissa_x[19]), .ZN(n99) );
  INVD1 U227 ( .I(mantissa_x[18]), .ZN(n100) );
  INVD1 U228 ( .I(mantissa_x[17]), .ZN(n101) );
  INVD1 U229 ( .I(mantissa_x[16]), .ZN(n102) );
  INVD1 U230 ( .I(mantissa_x[15]), .ZN(n103) );
  INVD1 U231 ( .I(mantissa_x[14]), .ZN(n104) );
  INVD1 U232 ( .I(mantissa_x[13]), .ZN(n105) );
  INVD1 U233 ( .I(mantissa_x[12]), .ZN(n106) );
  INVD1 U234 ( .I(mantissa_x[11]), .ZN(n107) );
  INVD1 U235 ( .I(mantissa_x[10]), .ZN(n108) );
  INVD1 U236 ( .I(mantissa_x[9]), .ZN(n109) );
  INVD1 U237 ( .I(mantissa_x[8]), .ZN(n110) );
  INVD1 U238 ( .I(mantissa_x[6]), .ZN(n112) );
  INVD1 U239 ( .I(mantissa_x[5]), .ZN(n113) );
  INVD1 U240 ( .I(mantissa_x[7]), .ZN(n111) );
  INVD1 U241 ( .I(mantissa_x[4]), .ZN(n114) );
  INVD1 U242 ( .I(mantissa_x[3]), .ZN(n115) );
  INVD1 U243 ( .I(mantissa_x[2]), .ZN(n116) );
  INVD1 U244 ( .I(mantissa_x[1]), .ZN(n117) );
  INVD1 U245 ( .I(mantissa_x[0]), .ZN(n118) );
  XNR2D1 U248 ( .A1(sub_190_carry[10]), .A2(core_result[11]), .ZN(N48) );
  XNR2D1 U249 ( .A1(sub_190_carry[11]), .A2(core_result[12]), .ZN(N49) );
  XNR2D1 U250 ( .A1(sub_190_carry[12]), .A2(core_result[13]), .ZN(N50) );
  XNR2D1 U251 ( .A1(sub_190_carry[13]), .A2(core_result[14]), .ZN(N51) );
  XNR2D1 U252 ( .A1(sub_190_carry[14]), .A2(core_result[15]), .ZN(N52) );
  XNR2D1 U253 ( .A1(sub_190_carry[15]), .A2(core_result[16]), .ZN(N53) );
  XNR2D1 U254 ( .A1(sub_190_carry[16]), .A2(core_result[17]), .ZN(N54) );
  XNR2D1 U255 ( .A1(sub_190_carry[17]), .A2(core_result[18]), .ZN(N55) );
  XNR2D1 U256 ( .A1(sub_190_carry[18]), .A2(core_result[19]), .ZN(N56) );
  XNR2D1 U257 ( .A1(sub_190_carry[19]), .A2(core_result[20]), .ZN(N57) );
  XNR2D1 U258 ( .A1(sub_190_carry[20]), .A2(core_result[21]), .ZN(N58) );
  XNR2D1 U259 ( .A1(sub_190_carry[21]), .A2(core_result[22]), .ZN(N59) );
  XNR2D1 U261 ( .A1(core_result[9]), .A2(core_result[10]), .ZN(N47) );
  NR4D0 U262 ( .A1(core_result[50]), .A2(core_result[49]), .A3(core_result[48]), .A4(core_result[47]), .ZN(n91) );
  NR4D0 U263 ( .A1(core_result[54]), .A2(core_result[53]), .A3(core_result[52]), .A4(core_result[51]), .ZN(n90) );
  NR4D0 U264 ( .A1(core_result[58]), .A2(core_result[57]), .A3(core_result[56]), .A4(core_result[55]), .ZN(n89) );
  NR2D0 U265 ( .A1(core_result[63]), .A2(core_result[62]), .ZN(n87) );
  INR4D0 U266 ( .A1(n87), .B1(core_result[60]), .B2(core_result[59]), .B3(
        core_result[61]), .ZN(n88) );
  ND4D0 U267 ( .A1(n91), .A2(n90), .A3(n89), .A4(n88), .ZN(N12) );
  CKXOR2D0 U127 ( .A1(core_result[23]), .A2(n119), .Z(N60) );
  NR2D0 U128 ( .A1(sub_190_carry[21]), .A2(core_result[22]), .ZN(n119) );
  OR2D0 U129 ( .A1(sub_190_carry[20]), .A2(core_result[21]), .Z(
        sub_190_carry[21]) );
  OR2D0 U130 ( .A1(sub_190_carry[19]), .A2(core_result[20]), .Z(
        sub_190_carry[20]) );
  OR2D0 U131 ( .A1(sub_190_carry[18]), .A2(core_result[19]), .Z(
        sub_190_carry[19]) );
  OR2D0 U132 ( .A1(sub_190_carry[17]), .A2(core_result[18]), .Z(
        sub_190_carry[18]) );
  OR2D0 U133 ( .A1(sub_190_carry[16]), .A2(core_result[17]), .Z(
        sub_190_carry[17]) );
  OR2D0 U134 ( .A1(sub_190_carry[15]), .A2(core_result[16]), .Z(
        sub_190_carry[16]) );
  OR2D0 U135 ( .A1(sub_190_carry[14]), .A2(core_result[15]), .Z(
        sub_190_carry[15]) );
  OR2D0 U136 ( .A1(sub_190_carry[13]), .A2(core_result[14]), .Z(
        sub_190_carry[14]) );
  OR2D0 U137 ( .A1(sub_190_carry[12]), .A2(core_result[13]), .Z(
        sub_190_carry[13]) );
  OR2D0 U138 ( .A1(sub_190_carry[11]), .A2(core_result[12]), .Z(
        sub_190_carry[12]) );
  OR2D0 U139 ( .A1(sub_190_carry[10]), .A2(core_result[11]), .Z(
        sub_190_carry[11]) );
  OR2D0 U157 ( .A1(core_result[9]), .A2(core_result[10]), .Z(sub_190_carry[10]) );
  AN2XD1 U158 ( .A1(n530), .A2(divide_mode), .Z(exponent_adjust[2]) );
endmodule

