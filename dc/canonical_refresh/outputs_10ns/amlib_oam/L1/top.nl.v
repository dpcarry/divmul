/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Wed Sep  2 17:10:04 2026
/////////////////////////////////////////////////////////////


module top ( mantissa_x, mantissa_y, sign_x, sign_y, exp_x, exp_y, 
        mantissa_out, sign_out, exp_out );
  input [22:0] mantissa_x;
  input [22:0] mantissa_y;
  input [7:0] exp_x;
  input [7:0] exp_y;
  output [22:0] mantissa_out;
  output [7:0] exp_out;
  input sign_x, sign_y;
  output sign_out;
  wire   intadd_0_A_16_, intadd_0_A_15_, intadd_0_A_14_, intadd_0_A_13_,
         intadd_0_A_12_, intadd_0_A_11_, intadd_0_A_10_, intadd_0_A_9_,
         intadd_0_A_8_, intadd_0_A_7_, intadd_0_A_6_, intadd_0_A_5_,
         intadd_0_A_4_, intadd_0_A_3_, intadd_0_A_2_, intadd_0_A_1_,
         intadd_0_A_0_, intadd_0_B_16_, intadd_0_B_15_, intadd_0_B_14_,
         intadd_0_B_13_, intadd_0_B_12_, intadd_0_B_11_, intadd_0_B_10_,
         intadd_0_B_9_, intadd_0_B_8_, intadd_0_B_7_, intadd_0_B_6_,
         intadd_0_B_5_, intadd_0_B_4_, intadd_0_B_3_, intadd_0_B_2_,
         intadd_0_B_1_, intadd_0_B_0_, intadd_0_CI, intadd_0_SUM_16_,
         intadd_0_SUM_15_, intadd_0_SUM_14_, intadd_0_SUM_13_,
         intadd_0_SUM_12_, intadd_0_SUM_11_, intadd_0_SUM_10_, intadd_0_SUM_9_,
         intadd_0_SUM_8_, intadd_0_SUM_7_, intadd_0_SUM_6_, intadd_0_SUM_5_,
         intadd_0_SUM_4_, intadd_0_SUM_3_, intadd_0_SUM_2_, intadd_0_SUM_1_,
         intadd_0_SUM_0_, intadd_0_n17, intadd_0_n16, intadd_0_n15,
         intadd_0_n14, intadd_0_n13, intadd_0_n12, intadd_0_n11, intadd_0_n10,
         intadd_0_n9, intadd_0_n8, intadd_0_n7, intadd_0_n6, intadd_0_n5,
         intadd_0_n4, intadd_0_n3, intadd_0_n2, intadd_0_n1, intadd_1_A_7_,
         intadd_1_A_6_, intadd_1_A_5_, intadd_1_A_4_, intadd_1_A_3_,
         intadd_1_A_2_, intadd_1_A_1_, intadd_1_B_7_, intadd_1_B_6_,
         intadd_1_B_5_, intadd_1_B_4_, intadd_1_B_3_, intadd_1_B_2_,
         intadd_1_B_1_, intadd_1_CI, intadd_1_SUM_7_, intadd_1_SUM_6_,
         intadd_1_SUM_5_, intadd_1_SUM_4_, intadd_1_SUM_3_, intadd_1_SUM_2_,
         intadd_1_SUM_1_, intadd_1_SUM_0_, intadd_1_n8, intadd_1_n7,
         intadd_1_n6, intadd_1_n5, intadd_1_n4, intadd_1_n3, intadd_1_n2,
         intadd_1_n1, intadd_2_A_2_, intadd_2_A_1_, intadd_2_A_0_,
         intadd_2_B_2_, intadd_2_B_1_, intadd_2_B_0_, intadd_2_CI,
         intadd_2_SUM_2_, intadd_2_SUM_1_, intadd_2_SUM_0_, intadd_2_n3,
         intadd_2_n2, intadd_2_n1, n375, n376, n377, n378, n379, n380, n381,
         n382, n383, n384, n385, n386, n387, n388, n389, n390, n391, n392,
         n393, n394, n395, n396, n397, n398, n399, n400, n401, n402, n403,
         n404, n405, n406, n407, n408, n409, n410, n411, n412, n413, n414,
         n415, n416, n417, n418, n419, n420, n421, n422, n423, n424, n425,
         n426, n427, n428, n429, n430, n431, n432, n433, n434, n435, n436,
         n437, n438, n439, n440, n441, n442, n444, n445, n446, n447, n448,
         n449, n450, n451, n452, n453, n454, n455, n456, n457, n458, n459,
         n460, n461, n462, n463, n464, n465, n466, n467, n468, n469, n470,
         n471, n472, n473, n474, n475, n476, n477, n478, n479, n480, n481,
         n482, n483, n484, n485, n486, n487, n488, n489, n490, n491, n492,
         n493, n494, n495, n496, n497, n498, n499, n500, n501, n502, n503,
         n504, n505, n506, n507, n508, n509, n510, n511, n512, n513, n514,
         n515, n516, n517, n518, n519, n520, n521, n522, n523, n524, n525,
         n526, n527, n528, n529, n530, n531, n532, n533, n534, n535, n536,
         n537, n538, n539, n540, n541, n542, n543, n544, n545, n546, n547,
         n548, n549, n550, n551, n552, n553, n554, n555, n556, n557, n558,
         n559, n560, n561, n562, n563, n564, n565, n566, n567, n568, n569,
         n570, n571, n572, n573, n574, n575, n576, n577, n578, n579, n580,
         n581, n582, n583, n584, n585, n586, n587, n588, n589, n590, n591,
         n592, n593, n594, n595, n596, n597, n598, n599, n600, n601, n602,
         n603, n604, n605, n606, n607, n608, n609, n610, n611, n612, n613,
         n614, n615, n616, n617, n618, n619, n620, n621, n622, n623, n624,
         n625, n626, n627, n628, n629, n630, n631, n632, n633, n634, n635,
         n636, n637, n638, n639, n640, n641, n642, n643, n644, n645, n646,
         n647, n648, n649, n650, n651, n652, n653, n654, n655, n656, n657,
         n658, n659, n660, n661, n662, n663, n664, n665, n666, n667, n668,
         n669, n670, n671, n672, n673, n674, n675, n676, n677, n678, n679,
         n680, n681, n682, n683, n684, n685, n686, n687, n688, n689, n690,
         n691, n692, n693, n694, n695, n696, n697, n698, n699, n700, n701,
         n702, n703, n704, n705, n706, n707, n708, n709, n710, n711, n712,
         n713, n714, n715, n716, n717, n718, n719, n720, n721, n722, n723,
         n724, n725, n726, n727, n728, n729, n730, n731, n732, n733, n734,
         n735, n736, n737, n738, n739, n740, n741, n742, n743, n744, n745,
         n746, n747, n748, n749, n750, n751, n752, n753, n754, n755, n756,
         n757, n758, n759, n760, n761, n762, n763, n764, n765, n766, n767,
         n768, n769, n770, n771, n772, n773, n774, n775, n776, n777, n778,
         n779, n780, n781, n782, n783, n784, n785, n786, n787, n788, n789,
         n790, n791, n792;

  FA1D0 intadd_0_U18 ( .A(intadd_0_A_0_), .B(intadd_0_B_0_), .CI(intadd_0_CI), 
        .CO(intadd_0_n17), .S(intadd_0_SUM_0_) );
  FA1D0 intadd_0_U17 ( .A(intadd_0_A_1_), .B(intadd_0_B_1_), .CI(intadd_0_n17), 
        .CO(intadd_0_n16), .S(intadd_0_SUM_1_) );
  FA1D0 intadd_0_U16 ( .A(intadd_0_A_2_), .B(intadd_0_B_2_), .CI(intadd_0_n16), 
        .CO(intadd_0_n15), .S(intadd_0_SUM_2_) );
  FA1D0 intadd_0_U15 ( .A(intadd_0_A_3_), .B(intadd_0_B_3_), .CI(intadd_0_n15), 
        .CO(intadd_0_n14), .S(intadd_0_SUM_3_) );
  FA1D0 intadd_0_U14 ( .A(intadd_0_A_4_), .B(intadd_0_B_4_), .CI(intadd_0_n14), 
        .CO(intadd_0_n13), .S(intadd_0_SUM_4_) );
  FA1D0 intadd_0_U13 ( .A(intadd_0_A_5_), .B(intadd_0_B_5_), .CI(intadd_0_n13), 
        .CO(intadd_0_n12), .S(intadd_0_SUM_5_) );
  FA1D0 intadd_0_U12 ( .A(intadd_0_A_6_), .B(intadd_0_B_6_), .CI(intadd_0_n12), 
        .CO(intadd_0_n11), .S(intadd_0_SUM_6_) );
  FA1D0 intadd_0_U11 ( .A(intadd_0_A_7_), .B(intadd_0_B_7_), .CI(intadd_0_n11), 
        .CO(intadd_0_n10), .S(intadd_0_SUM_7_) );
  FA1D0 intadd_0_U10 ( .A(intadd_0_A_8_), .B(intadd_0_B_8_), .CI(intadd_0_n10), 
        .CO(intadd_0_n9), .S(intadd_0_SUM_8_) );
  FA1D0 intadd_0_U9 ( .A(intadd_0_A_9_), .B(intadd_0_B_9_), .CI(intadd_0_n9), 
        .CO(intadd_0_n8), .S(intadd_0_SUM_9_) );
  FA1D0 intadd_0_U8 ( .A(intadd_0_A_10_), .B(intadd_0_B_10_), .CI(intadd_0_n8), 
        .CO(intadd_0_n7), .S(intadd_0_SUM_10_) );
  FA1D0 intadd_0_U7 ( .A(intadd_0_A_11_), .B(intadd_0_B_11_), .CI(intadd_0_n7), 
        .CO(intadd_0_n6), .S(intadd_0_SUM_11_) );
  FA1D0 intadd_0_U6 ( .A(intadd_0_A_12_), .B(intadd_0_B_12_), .CI(intadd_0_n6), 
        .CO(intadd_0_n5), .S(intadd_0_SUM_12_) );
  FA1D0 intadd_0_U5 ( .A(intadd_0_A_13_), .B(intadd_0_B_13_), .CI(intadd_0_n5), 
        .CO(intadd_0_n4), .S(intadd_0_SUM_13_) );
  FA1D0 intadd_0_U4 ( .A(intadd_0_A_14_), .B(intadd_0_B_14_), .CI(intadd_0_n4), 
        .CO(intadd_0_n3), .S(intadd_0_SUM_14_) );
  FA1D0 intadd_0_U3 ( .A(intadd_0_A_15_), .B(intadd_0_B_15_), .CI(intadd_0_n3), 
        .CO(intadd_0_n2), .S(intadd_0_SUM_15_) );
  FA1D0 intadd_0_U2 ( .A(intadd_0_A_16_), .B(intadd_0_B_16_), .CI(intadd_0_n2), 
        .CO(intadd_0_n1), .S(intadd_0_SUM_16_) );
  FA1D0 intadd_1_U9 ( .A(exp_x[0]), .B(exp_y[0]), .CI(intadd_1_CI), .CO(
        intadd_1_n8), .S(intadd_1_SUM_0_) );
  FA1D0 intadd_1_U8 ( .A(intadd_1_A_1_), .B(intadd_1_B_1_), .CI(intadd_1_n8), 
        .CO(intadd_1_n7), .S(intadd_1_SUM_1_) );
  FA1D0 intadd_1_U7 ( .A(intadd_1_A_2_), .B(intadd_1_B_2_), .CI(intadd_1_n7), 
        .CO(intadd_1_n6), .S(intadd_1_SUM_2_) );
  FA1D0 intadd_1_U6 ( .A(intadd_1_A_3_), .B(intadd_1_B_3_), .CI(intadd_1_n6), 
        .CO(intadd_1_n5), .S(intadd_1_SUM_3_) );
  FA1D0 intadd_1_U5 ( .A(intadd_1_A_4_), .B(intadd_1_B_4_), .CI(intadd_1_n5), 
        .CO(intadd_1_n4), .S(intadd_1_SUM_4_) );
  FA1D0 intadd_1_U4 ( .A(intadd_1_A_5_), .B(intadd_1_B_5_), .CI(intadd_1_n4), 
        .CO(intadd_1_n3), .S(intadd_1_SUM_5_) );
  FA1D0 intadd_1_U3 ( .A(intadd_1_A_6_), .B(intadd_1_B_6_), .CI(intadd_1_n3), 
        .CO(intadd_1_n2), .S(intadd_1_SUM_6_) );
  FA1D0 intadd_2_U4 ( .A(intadd_2_A_0_), .B(intadd_2_B_0_), .CI(intadd_2_CI), 
        .CO(intadd_2_n3), .S(intadd_2_SUM_0_) );
  FA1D0 intadd_2_U3 ( .A(intadd_2_A_1_), .B(intadd_2_B_1_), .CI(intadd_2_n3), 
        .CO(intadd_2_n2), .S(intadd_2_SUM_1_) );
  FA1D0 intadd_2_U2 ( .A(intadd_2_A_2_), .B(intadd_2_B_2_), .CI(intadd_2_n2), 
        .CO(intadd_2_n1), .S(intadd_2_SUM_2_) );
  FA1D0 intadd_1_U2 ( .A(intadd_1_A_7_), .B(intadd_1_B_7_), .CI(intadd_1_n2), 
        .CO(intadd_1_n1), .S(intadd_1_SUM_7_) );
  INVD0 U436 ( .I(mantissa_y[18]), .ZN(n375) );
  INVD0 U437 ( .I(n375), .ZN(n376) );
  INVD0 U438 ( .I(mantissa_x[16]), .ZN(n377) );
  INVD0 U439 ( .I(n377), .ZN(n378) );
  INVD0 U440 ( .I(mantissa_x[18]), .ZN(n379) );
  INVD0 U441 ( .I(n379), .ZN(n380) );
  INVD0 U442 ( .I(mantissa_x[4]), .ZN(n381) );
  INVD0 U443 ( .I(n381), .ZN(n382) );
  INVD0 U444 ( .I(mantissa_x[12]), .ZN(n383) );
  INVD0 U445 ( .I(n383), .ZN(n384) );
  INVD0 U446 ( .I(mantissa_x[14]), .ZN(n385) );
  INVD0 U447 ( .I(n385), .ZN(n386) );
  INVD0 U448 ( .I(mantissa_y[9]), .ZN(n387) );
  INVD0 U449 ( .I(n387), .ZN(n388) );
  INVD0 U450 ( .I(mantissa_y[8]), .ZN(n389) );
  INVD0 U451 ( .I(n389), .ZN(n390) );
  INVD0 U452 ( .I(mantissa_y[7]), .ZN(n391) );
  INVD0 U453 ( .I(n391), .ZN(n392) );
  INVD0 U454 ( .I(mantissa_y[5]), .ZN(n393) );
  INVD0 U455 ( .I(n393), .ZN(n394) );
  INVD0 U456 ( .I(mantissa_y[15]), .ZN(n395) );
  INVD0 U457 ( .I(n395), .ZN(n396) );
  INVD0 U458 ( .I(mantissa_x[7]), .ZN(n397) );
  INVD0 U459 ( .I(n397), .ZN(n398) );
  INVD0 U460 ( .I(mantissa_y[1]), .ZN(n399) );
  INVD0 U461 ( .I(n399), .ZN(n400) );
  INVD0 U462 ( .I(mantissa_x[0]), .ZN(n401) );
  INVD0 U463 ( .I(n401), .ZN(n402) );
  INVD0 U464 ( .I(mantissa_x[21]), .ZN(n403) );
  INVD0 U465 ( .I(n403), .ZN(n404) );
  INVD0 U466 ( .I(mantissa_x[3]), .ZN(n405) );
  INVD0 U467 ( .I(n405), .ZN(n406) );
  INVD0 U468 ( .I(mantissa_x[11]), .ZN(n407) );
  INVD0 U469 ( .I(n407), .ZN(n408) );
  INVD0 U470 ( .I(mantissa_y[16]), .ZN(n409) );
  INVD0 U471 ( .I(n409), .ZN(n410) );
  INVD0 U472 ( .I(mantissa_x[5]), .ZN(n411) );
  INVD0 U473 ( .I(n411), .ZN(n412) );
  INVD0 U474 ( .I(mantissa_x[13]), .ZN(n413) );
  INVD0 U475 ( .I(n413), .ZN(n414) );
  INVD0 U476 ( .I(mantissa_x[15]), .ZN(n415) );
  INVD0 U477 ( .I(n415), .ZN(n416) );
  INVD0 U478 ( .I(mantissa_x[10]), .ZN(n417) );
  INVD0 U479 ( .I(n417), .ZN(n418) );
  INVD0 U480 ( .I(mantissa_x[8]), .ZN(n419) );
  INVD0 U481 ( .I(n419), .ZN(n420) );
  INVD0 U482 ( .I(mantissa_x[6]), .ZN(n421) );
  INVD0 U483 ( .I(n421), .ZN(n422) );
  INVD0 U484 ( .I(mantissa_y[6]), .ZN(n423) );
  INVD0 U485 ( .I(n423), .ZN(n424) );
  INVD0 U486 ( .I(mantissa_x[2]), .ZN(n425) );
  INVD0 U487 ( .I(n425), .ZN(n426) );
  INVD0 U488 ( .I(mantissa_y[20]), .ZN(n427) );
  INVD0 U489 ( .I(n427), .ZN(n428) );
  INVD0 U490 ( .I(mantissa_y[10]), .ZN(n429) );
  INVD0 U491 ( .I(n429), .ZN(n430) );
  INVD0 U492 ( .I(mantissa_y[0]), .ZN(n431) );
  INVD0 U493 ( .I(n431), .ZN(n432) );
  INVD0 U494 ( .I(mantissa_y[14]), .ZN(n433) );
  INVD0 U495 ( .I(n433), .ZN(n434) );
  INVD0 U496 ( .I(mantissa_y[12]), .ZN(n435) );
  INVD0 U497 ( .I(n435), .ZN(n436) );
  INVD0 U498 ( .I(mantissa_y[21]), .ZN(n437) );
  INVD0 U499 ( .I(n437), .ZN(n438) );
  INVD0 U500 ( .I(mantissa_y[2]), .ZN(n439) );
  INVD0 U501 ( .I(n439), .ZN(n440) );
  INVD0 U502 ( .I(mantissa_y[4]), .ZN(n441) );
  INVD0 U503 ( .I(n441), .ZN(n442) );
  AOI22D1 U504 ( .A1(mantissa_y[22]), .A2(n619), .B1(n618), .B2(n766), .ZN(
        n771) );
  INVD0 U508 ( .I(n656), .ZN(n458) );
  ND4D0 U509 ( .A1(intadd_1_SUM_3_), .A2(intadd_1_SUM_6_), .A3(intadd_1_SUM_2_), .A4(intadd_1_SUM_4_), .ZN(n446) );
  ND4D0 U510 ( .A1(intadd_1_SUM_7_), .A2(intadd_1_SUM_0_), .A3(intadd_1_SUM_5_), .A4(intadd_1_SUM_1_), .ZN(n445) );
  NR2D0 U511 ( .A1(n670), .A2(intadd_1_n1), .ZN(n444) );
  AO221D0 U512 ( .A1(n656), .A2(n446), .B1(n656), .B2(n445), .C(n444), .Z(n661) );
  OA21D0 U513 ( .A1(intadd_1_SUM_0_), .A2(n458), .B(n661), .Z(exp_out[0]) );
  INVD0 U514 ( .I(mantissa_y[22]), .ZN(n766) );
  INVD0 U515 ( .I(n766), .ZN(n765) );
  AOI22D0 U516 ( .A1(n765), .A2(n404), .B1(n403), .B2(n766), .ZN(n508) );
  BUFFD0 U517 ( .I(mantissa_x[22]), .Z(n618) );
  INVD0 U518 ( .I(n618), .ZN(n619) );
  AOI22D0 U519 ( .A1(n618), .A2(n428), .B1(n427), .B2(n619), .ZN(n506) );
  MUX2ND0 U520 ( .I0(n437), .I1(n438), .S(n506), .ZN(n507) );
  MUX2ND0 U521 ( .I0(n508), .I1(n427), .S(n507), .ZN(n639) );
  NR2D0 U522 ( .A1(n771), .A2(n438), .ZN(n447) );
  AOI21D0 U523 ( .A1(n438), .A2(n771), .B(n447), .ZN(n637) );
  FA1D0 U524 ( .A(mantissa_x[20]), .B(n428), .CI(n404), .CO(n648), .S(n638) );
  MUX2ND0 U525 ( .I0(n403), .I1(n404), .S(n447), .ZN(n650) );
  INVD0 U526 ( .I(n771), .ZN(n772) );
  CKND2D0 U527 ( .A1(n765), .A2(n618), .ZN(n449) );
  NR2D0 U528 ( .A1(n449), .A2(n437), .ZN(n451) );
  OAI22D0 U529 ( .A1(n438), .A2(n404), .B1(n772), .B2(n451), .ZN(n448) );
  OA31D0 U530 ( .A1(n438), .A2(n765), .A3(n618), .B(n448), .Z(n534) );
  AOI211D0 U531 ( .A1(n649), .A2(n648), .B(n650), .C(n534), .ZN(n532) );
  NR2D0 U532 ( .A1(n438), .A2(n404), .ZN(n450) );
  OAI22D0 U533 ( .A1(n450), .A2(n771), .B1(n438), .B2(n449), .ZN(n454) );
  XNR3D0 U534 ( .A1(intadd_2_n1), .A2(n532), .A3(n454), .ZN(n456) );
  CKND2D0 U535 ( .A1(intadd_2_n1), .A2(n532), .ZN(n453) );
  NR2D0 U536 ( .A1(intadd_2_n1), .A2(n532), .ZN(n452) );
  AOI211D0 U537 ( .A1(n454), .A2(n453), .B(n452), .C(n451), .ZN(n457) );
  ND3D0 U538 ( .A1(n456), .A2(n656), .A3(n457), .ZN(n530) );
  AO211D0 U539 ( .A1(n457), .A2(intadd_2_SUM_2_), .B(n456), .C(n458), .Z(n455)
         );
  ND3D0 U540 ( .A1(n661), .A2(n530), .A3(n455), .ZN(mantissa_out[22]) );
  INVD0 U541 ( .I(n457), .ZN(intadd_1_A_1_) );
  NR2D0 U542 ( .A1(intadd_1_A_1_), .A2(n456), .ZN(intadd_1_CI) );
  CKND2D0 U543 ( .A1(intadd_1_CI), .A2(n656), .ZN(n529) );
  INVD0 U544 ( .I(intadd_0_SUM_14_), .ZN(n462) );
  INVD0 U545 ( .I(n530), .ZN(n668) );
  NR2D0 U546 ( .A1(n458), .A2(n457), .ZN(n666) );
  AOI22D0 U547 ( .A1(n668), .A2(intadd_0_SUM_13_), .B1(n666), .B2(
        intadd_0_SUM_15_), .ZN(n459) );
  OAI211D0 U548 ( .A1(n529), .A2(n462), .B(n459), .C(n661), .ZN(
        mantissa_out[16]) );
  INVD0 U549 ( .I(intadd_0_SUM_12_), .ZN(n471) );
  INVD0 U550 ( .I(n529), .ZN(n662) );
  AOI22D0 U551 ( .A1(n662), .A2(intadd_0_SUM_13_), .B1(n666), .B2(
        intadd_0_SUM_14_), .ZN(n460) );
  OAI211D0 U552 ( .A1(n530), .A2(n471), .B(n460), .C(n661), .ZN(
        mantissa_out[15]) );
  AOI22D0 U553 ( .A1(n662), .A2(intadd_0_SUM_15_), .B1(n666), .B2(
        intadd_0_SUM_16_), .ZN(n461) );
  OAI211D0 U554 ( .A1(n530), .A2(n462), .B(n461), .C(n661), .ZN(
        mantissa_out[17]) );
  INVD0 U555 ( .I(intadd_0_SUM_10_), .ZN(n465) );
  AOI22D0 U556 ( .A1(n662), .A2(intadd_0_SUM_11_), .B1(n666), .B2(
        intadd_0_SUM_12_), .ZN(n463) );
  OAI211D0 U557 ( .A1(n530), .A2(n465), .B(n463), .C(n661), .ZN(
        mantissa_out[13]) );
  AOI22D0 U558 ( .A1(n668), .A2(intadd_0_SUM_9_), .B1(n666), .B2(
        intadd_0_SUM_11_), .ZN(n464) );
  OAI211D0 U559 ( .A1(n529), .A2(n465), .B(n464), .C(n661), .ZN(
        mantissa_out[12]) );
  INVD0 U560 ( .I(intadd_0_SUM_8_), .ZN(n468) );
  AOI22D0 U561 ( .A1(n662), .A2(intadd_0_SUM_9_), .B1(n666), .B2(
        intadd_0_SUM_10_), .ZN(n466) );
  OAI211D0 U562 ( .A1(n530), .A2(n468), .B(n466), .C(n661), .ZN(
        mantissa_out[11]) );
  AOI22D0 U563 ( .A1(n668), .A2(intadd_0_SUM_7_), .B1(n666), .B2(
        intadd_0_SUM_9_), .ZN(n467) );
  OAI211D0 U564 ( .A1(n529), .A2(n468), .B(n467), .C(n661), .ZN(
        mantissa_out[10]) );
  INVD0 U565 ( .I(intadd_0_SUM_6_), .ZN(n473) );
  AOI22D0 U566 ( .A1(n662), .A2(intadd_0_SUM_7_), .B1(n666), .B2(
        intadd_0_SUM_8_), .ZN(n469) );
  OAI211D0 U567 ( .A1(n530), .A2(n473), .B(n469), .C(n661), .ZN(
        mantissa_out[9]) );
  AOI22D0 U568 ( .A1(n668), .A2(intadd_0_SUM_11_), .B1(n666), .B2(
        intadd_0_SUM_13_), .ZN(n470) );
  OAI211D0 U569 ( .A1(n529), .A2(n471), .B(n470), .C(n661), .ZN(
        mantissa_out[14]) );
  AOI22D0 U570 ( .A1(n668), .A2(intadd_0_SUM_5_), .B1(n666), .B2(
        intadd_0_SUM_7_), .ZN(n472) );
  OAI211D0 U571 ( .A1(n529), .A2(n473), .B(n472), .C(n661), .ZN(
        mantissa_out[8]) );
  INVD0 U572 ( .I(intadd_0_SUM_4_), .ZN(n476) );
  AOI22D0 U573 ( .A1(n662), .A2(intadd_0_SUM_5_), .B1(n666), .B2(
        intadd_0_SUM_6_), .ZN(n474) );
  OAI211D0 U574 ( .A1(n530), .A2(n476), .B(n474), .C(n661), .ZN(
        mantissa_out[7]) );
  AOI22D0 U575 ( .A1(n668), .A2(intadd_0_SUM_3_), .B1(n666), .B2(
        intadd_0_SUM_5_), .ZN(n475) );
  OAI211D0 U576 ( .A1(n529), .A2(n476), .B(n475), .C(n661), .ZN(
        mantissa_out[6]) );
  INVD0 U577 ( .I(intadd_0_SUM_2_), .ZN(n479) );
  AOI22D0 U578 ( .A1(n662), .A2(intadd_0_SUM_3_), .B1(n666), .B2(
        intadd_0_SUM_4_), .ZN(n477) );
  OAI211D0 U579 ( .A1(n530), .A2(n479), .B(n477), .C(n661), .ZN(
        mantissa_out[5]) );
  AOI22D0 U580 ( .A1(n668), .A2(intadd_0_SUM_1_), .B1(n666), .B2(
        intadd_0_SUM_3_), .ZN(n478) );
  OAI211D0 U581 ( .A1(n529), .A2(n479), .B(n478), .C(n661), .ZN(
        mantissa_out[4]) );
  NR2D0 U582 ( .A1(n426), .A2(n440), .ZN(n480) );
  AOI21D0 U583 ( .A1(n440), .A2(n426), .B(n480), .ZN(n542) );
  MUX2ND0 U584 ( .I0(n771), .I1(n772), .S(n542), .ZN(n493) );
  INVD0 U585 ( .I(n493), .ZN(n483) );
  INVD0 U586 ( .I(mantissa_y[3]), .ZN(n694) );
  AOI22D0 U587 ( .A1(mantissa_y[3]), .A2(n406), .B1(n405), .B2(n694), .ZN(n689) );
  MUX2ND0 U588 ( .I0(n483), .I1(n493), .S(n689), .ZN(n678) );
  AOI22D0 U589 ( .A1(n765), .A2(n425), .B1(n426), .B2(n766), .ZN(n481) );
  OAI22D0 U590 ( .A1(n619), .A2(n439), .B1(n440), .B2(n618), .ZN(n543) );
  MAOI222D0 U591 ( .A(n400), .B(n481), .C(n543), .ZN(n677) );
  INVD0 U592 ( .I(mantissa_x[1]), .ZN(n671) );
  AOI22D0 U593 ( .A1(mantissa_x[1]), .A2(n400), .B1(n399), .B2(n671), .ZN(n672) );
  INVD0 U594 ( .I(n672), .ZN(n673) );
  XNR3D0 U595 ( .A1(n678), .A2(n677), .A3(n673), .ZN(n496) );
  NR2D0 U596 ( .A1(n432), .A2(n402), .ZN(n482) );
  AOI21D0 U597 ( .A1(n402), .A2(n432), .B(n482), .ZN(n492) );
  MUX2ND0 U598 ( .I0(n671), .I1(mantissa_x[1]), .S(n492), .ZN(n486) );
  AOI22D0 U599 ( .A1(n493), .A2(n400), .B1(n399), .B2(n483), .ZN(n485) );
  AOI22D0 U600 ( .A1(n618), .A2(n432), .B1(n431), .B2(n619), .ZN(n487) );
  MUX2ND0 U601 ( .I0(n399), .I1(n400), .S(n487), .ZN(n484) );
  MUX3ND0 U602 ( .I0(n766), .I1(n765), .I2(n431), .S0(n671), .S1(n484), .ZN(
        n491) );
  MAOI222D0 U603 ( .A(n486), .B(n485), .C(n491), .ZN(n495) );
  MAOI222D0 U604 ( .A(n432), .B(n402), .C(mantissa_x[1]), .ZN(n494) );
  INVD0 U605 ( .I(intadd_0_SUM_0_), .ZN(n536) );
  NR2D0 U606 ( .A1(n765), .A2(n487), .ZN(n490) );
  MUX2ND0 U607 ( .I0(n766), .I1(n402), .S(n487), .ZN(n657) );
  MUX2ND0 U608 ( .I0(n431), .I1(n432), .S(n672), .ZN(n488) );
  MUX2ND0 U609 ( .I0(n772), .I1(n771), .S(n488), .ZN(n658) );
  IND2D0 U610 ( .A1(n657), .B1(n658), .ZN(n489) );
  OAI21D0 U611 ( .A1(n402), .A2(n490), .B(n489), .ZN(n659) );
  XNR4D0 U612 ( .A1(n493), .A2(n492), .A3(n491), .A4(n672), .ZN(n660) );
  NR2D0 U613 ( .A1(n659), .A2(n660), .ZN(n501) );
  FA1D0 U614 ( .A(n496), .B(n495), .CI(n494), .CO(n537), .S(n497) );
  INVD0 U615 ( .I(n497), .ZN(n499) );
  CKND2D0 U616 ( .A1(n501), .A2(n499), .ZN(n535) );
  AOI22D0 U617 ( .A1(n662), .A2(intadd_0_SUM_1_), .B1(n666), .B2(
        intadd_0_SUM_2_), .ZN(n498) );
  OAI211D0 U618 ( .A1(n504), .A2(n530), .B(n498), .C(n661), .ZN(
        mantissa_out[3]) );
  OA21D0 U619 ( .A1(n501), .A2(n499), .B(n535), .Z(n665) );
  AOI22D0 U620 ( .A1(n668), .A2(n665), .B1(n666), .B2(intadd_0_SUM_1_), .ZN(
        n500) );
  OAI211D0 U621 ( .A1(n504), .A2(n529), .B(n500), .C(n661), .ZN(
        mantissa_out[2]) );
  INVD0 U622 ( .I(n666), .ZN(n528) );
  AOI211D0 U623 ( .A1(n660), .A2(n659), .B(n501), .C(n530), .ZN(n502) );
  AOI21D0 U624 ( .A1(n665), .A2(n662), .B(n502), .ZN(n503) );
  OAI211D0 U625 ( .A1(n504), .A2(n528), .B(n503), .C(n661), .ZN(
        mantissa_out[1]) );
  INVD0 U626 ( .I(mantissa_x[19]), .ZN(n641) );
  INVD0 U627 ( .I(mantissa_x[20]), .ZN(n640) );
  INVD0 U628 ( .I(mantissa_y[19]), .ZN(n642) );
  AOI22D0 U629 ( .A1(mantissa_y[19]), .A2(mantissa_x[20]), .B1(n640), .B2(n642), .ZN(n510) );
  MUX2ND0 U630 ( .I0(n641), .I1(mantissa_x[19]), .S(n510), .ZN(n645) );
  AOI22D0 U631 ( .A1(n765), .A2(mantissa_x[20]), .B1(n640), .B2(n766), .ZN(
        n505) );
  MAOI222D0 U632 ( .A(n506), .B(n505), .C(n642), .ZN(n644) );
  XOR2D0 U633 ( .A1(n508), .A2(n507), .Z(n643) );
  AOI22D0 U634 ( .A1(n765), .A2(n641), .B1(mantissa_x[19]), .B2(n766), .ZN(
        n518) );
  AOI22D0 U635 ( .A1(n618), .A2(n376), .B1(n375), .B2(n619), .ZN(n517) );
  MUX2ND0 U636 ( .I0(n642), .I1(mantissa_y[19]), .S(n517), .ZN(n520) );
  MUX2ND0 U637 ( .I0(n518), .I1(n376), .S(n520), .ZN(n515) );
  NR2D0 U638 ( .A1(n376), .A2(n380), .ZN(n509) );
  AOI21D0 U639 ( .A1(n380), .A2(n376), .B(n509), .ZN(n514) );
  MAOI22D0 U640 ( .A1(n514), .A2(n641), .B1(n641), .B2(n514), .ZN(n513) );
  MUX2ND0 U641 ( .I0(n427), .I1(n428), .S(n510), .ZN(n511) );
  MUX2ND0 U642 ( .I0(n772), .I1(n771), .S(n511), .ZN(n512) );
  MAOI222D0 U643 ( .A(n515), .B(n513), .C(n512), .ZN(n635) );
  MAOI222D0 U644 ( .A(n375), .B(n379), .C(n641), .ZN(n634) );
  MUX2ND0 U645 ( .I0(n771), .I1(n772), .S(n514), .ZN(n784) );
  XNR4D0 U646 ( .A1(n784), .A2(n515), .A3(n428), .A4(n645), .ZN(n683) );
  INVD0 U647 ( .I(mantissa_x[17]), .ZN(n789) );
  INVD0 U648 ( .I(mantissa_y[17]), .ZN(n785) );
  AOI22D0 U649 ( .A1(mantissa_y[17]), .A2(mantissa_x[17]), .B1(n789), .B2(n785), .ZN(n769) );
  MUX2ND0 U650 ( .I0(n379), .I1(n380), .S(n769), .ZN(n781) );
  AOI22D0 U651 ( .A1(n765), .A2(n380), .B1(n379), .B2(n766), .ZN(n516) );
  MAOI222D0 U652 ( .A(n517), .B(n516), .C(n785), .ZN(n780) );
  INVD0 U653 ( .I(n520), .ZN(n519) );
  MUX2ND0 U654 ( .I0(n520), .I1(n519), .S(n518), .ZN(n779) );
  MAOI222D0 U655 ( .A(n785), .B(n789), .C(n379), .ZN(n681) );
  NR2D0 U656 ( .A1(n521), .A2(n522), .ZN(intadd_2_B_0_) );
  AO21D0 U657 ( .A1(n522), .A2(n521), .B(intadd_2_B_0_), .Z(n523) );
  CKND2D0 U658 ( .A1(intadd_0_n1), .A2(n523), .ZN(intadd_2_CI) );
  OAI21D0 U659 ( .A1(intadd_0_n1), .A2(n523), .B(intadd_2_CI), .ZN(n527) );
  AOI22D0 U660 ( .A1(n662), .A2(intadd_0_SUM_16_), .B1(n668), .B2(
        intadd_0_SUM_15_), .ZN(n524) );
  OAI211D0 U661 ( .A1(n528), .A2(n527), .B(n524), .C(n661), .ZN(
        mantissa_out[18]) );
  OA22D0 U662 ( .A1(intadd_2_SUM_1_), .A2(n528), .B1(n530), .B2(n527), .Z(n525) );
  OAI211D0 U663 ( .A1(intadd_2_SUM_0_), .A2(n529), .B(n525), .C(n661), .ZN(
        mantissa_out[20]) );
  MAOI22D0 U664 ( .A1(n668), .A2(intadd_0_SUM_16_), .B1(intadd_2_SUM_0_), .B2(
        n528), .ZN(n526) );
  OAI211D0 U665 ( .A1(n529), .A2(n527), .B(n526), .C(n661), .ZN(
        mantissa_out[19]) );
  OA22D0 U666 ( .A1(intadd_2_SUM_1_), .A2(n529), .B1(intadd_2_SUM_2_), .B2(
        n528), .Z(n531) );
  ND3D0 U667 ( .A1(n531), .A2(n661), .A3(n530), .ZN(mantissa_out[21]) );
  CKAN2D0 U668 ( .A1(exp_x[1]), .A2(exp_y[1]), .Z(intadd_1_B_2_) );
  CKAN2D0 U669 ( .A1(exp_x[2]), .A2(exp_y[2]), .Z(intadd_1_B_3_) );
  CKAN2D0 U670 ( .A1(exp_x[3]), .A2(exp_y[3]), .Z(intadd_1_B_4_) );
  CKAN2D0 U671 ( .A1(exp_x[4]), .A2(exp_y[4]), .Z(intadd_1_B_5_) );
  CKAN2D0 U672 ( .A1(exp_x[5]), .A2(exp_y[5]), .Z(intadd_1_B_6_) );
  CKAN2D0 U673 ( .A1(exp_x[6]), .A2(exp_y[6]), .Z(intadd_1_B_7_) );
  OR2D0 U674 ( .A1(n649), .A2(n648), .Z(n533) );
  AOI31D0 U675 ( .A1(n534), .A2(n650), .A3(n533), .B(n532), .ZN(intadd_2_A_2_)
         );
  FA1D0 U676 ( .A(n537), .B(n536), .CI(n535), .CO(n538), .S(n504) );
  INVD0 U677 ( .I(n538), .ZN(intadd_0_B_1_) );
  CKND2D0 U678 ( .A1(n442), .A2(n382), .ZN(n539) );
  OAI21D0 U679 ( .A1(n442), .A2(n382), .B(n539), .ZN(n556) );
  INVD0 U680 ( .I(n556), .ZN(n680) );
  AOI22D0 U681 ( .A1(n394), .A2(n412), .B1(n411), .B2(n393), .ZN(n701) );
  MUX2ND0 U682 ( .I0(n772), .I1(n771), .S(n701), .ZN(n688) );
  MUX2ND0 U683 ( .I0(n680), .I1(n556), .S(n688), .ZN(n684) );
  MAOI22D0 U684 ( .A1(n618), .A2(n442), .B1(n442), .B2(n618), .ZN(n557) );
  AOI22D0 U685 ( .A1(n765), .A2(n382), .B1(n381), .B2(n766), .ZN(n540) );
  MAOI222D0 U686 ( .A(n557), .B(n694), .C(n540), .ZN(n687) );
  XNR3D0 U687 ( .A1(n684), .A2(n689), .A3(n687), .ZN(n551) );
  AOI22D0 U688 ( .A1(n680), .A2(mantissa_y[3]), .B1(n694), .B2(n556), .ZN(n541) );
  MUX2ND0 U689 ( .I0(n771), .I1(n772), .S(n541), .ZN(n547) );
  MUX2ND0 U690 ( .I0(n405), .I1(n406), .S(n542), .ZN(n546) );
  MUX2ND0 U691 ( .I0(mantissa_y[3]), .I1(n694), .S(n543), .ZN(n544) );
  MUX3ND0 U692 ( .I0(n766), .I1(n765), .I2(n440), .S0(n406), .S1(n544), .ZN(
        n679) );
  INVD0 U693 ( .I(n679), .ZN(n545) );
  MAOI222D0 U694 ( .A(n547), .B(n546), .C(n545), .ZN(n550) );
  MAOI222D0 U695 ( .A(n426), .B(n440), .C(n406), .ZN(n549) );
  INVD0 U696 ( .I(n548), .ZN(intadd_0_A_1_) );
  FA1D0 U697 ( .A(n551), .B(n550), .CI(n549), .CO(n552), .S(n548) );
  INVD0 U698 ( .I(n552), .ZN(intadd_0_B_2_) );
  AOI22D0 U699 ( .A1(n765), .A2(n421), .B1(n422), .B2(n766), .ZN(n553) );
  AOI22D0 U700 ( .A1(n618), .A2(n423), .B1(n424), .B2(n619), .ZN(n571) );
  MAOI222D0 U701 ( .A(n394), .B(n553), .C(n571), .ZN(n706) );
  NR2D0 U702 ( .A1(n424), .A2(n422), .ZN(n554) );
  AOI21D0 U703 ( .A1(n422), .A2(n424), .B(n554), .ZN(n686) );
  AOI22D0 U704 ( .A1(n392), .A2(n398), .B1(n397), .B2(n391), .ZN(n713) );
  INVD0 U705 ( .I(n713), .ZN(n702) );
  INVD0 U706 ( .I(n686), .ZN(n570) );
  AOI22D0 U707 ( .A1(n686), .A2(n702), .B1(n713), .B2(n570), .ZN(n698) );
  XOR3D0 U708 ( .A1(n688), .A2(n706), .A3(n698), .Z(n565) );
  AOI22D0 U709 ( .A1(n686), .A2(n394), .B1(n393), .B2(n570), .ZN(n555) );
  MUX2ND0 U710 ( .I0(n771), .I1(n772), .S(n555), .ZN(n561) );
  AOI22D0 U711 ( .A1(n412), .A2(n680), .B1(n556), .B2(n411), .ZN(n560) );
  MUX2ND0 U712 ( .I0(n393), .I1(n394), .S(n557), .ZN(n558) );
  MUX3ND0 U713 ( .I0(n766), .I1(n765), .I2(n442), .S0(n412), .S1(n558), .ZN(
        n685) );
  INVD0 U714 ( .I(n685), .ZN(n559) );
  MAOI222D0 U715 ( .A(n561), .B(n560), .C(n559), .ZN(n564) );
  MAOI222D0 U716 ( .A(n442), .B(n412), .C(n382), .ZN(n563) );
  INVD0 U717 ( .I(n562), .ZN(intadd_0_A_3_) );
  FA1D0 U718 ( .A(n565), .B(n564), .CI(n563), .CO(n566), .S(n562) );
  INVD0 U719 ( .I(n566), .ZN(intadd_0_B_4_) );
  NR2D0 U720 ( .A1(n420), .A2(n390), .ZN(n567) );
  AOI21D0 U721 ( .A1(n390), .A2(n420), .B(n567), .ZN(n711) );
  MUX2ND0 U722 ( .I0(n771), .I1(n772), .S(n711), .ZN(n700) );
  OAI22D0 U723 ( .A1(n619), .A2(n389), .B1(n390), .B2(n618), .ZN(n582) );
  AOI22D0 U724 ( .A1(n765), .A2(n419), .B1(n420), .B2(n766), .ZN(n568) );
  MAOI222D0 U725 ( .A(n392), .B(n582), .C(n568), .ZN(n715) );
  INVD0 U726 ( .I(mantissa_x[9]), .ZN(n732) );
  AOI22D0 U727 ( .A1(mantissa_x[9]), .A2(n387), .B1(n388), .B2(n732), .ZN(n726) );
  INVD0 U728 ( .I(n726), .ZN(n727) );
  AOI22D0 U729 ( .A1(n727), .A2(n702), .B1(n713), .B2(n726), .ZN(n569) );
  XNR3D0 U730 ( .A1(n700), .A2(n715), .A3(n569), .ZN(n578) );
  AOI22D0 U731 ( .A1(n686), .A2(n398), .B1(n397), .B2(n570), .ZN(n574) );
  MUX2ND0 U732 ( .I0(n391), .I1(n392), .S(n700), .ZN(n573) );
  MUX2ND0 U733 ( .I0(n392), .I1(n391), .S(n571), .ZN(n572) );
  MUX3ND0 U734 ( .I0(n765), .I1(n766), .I2(n423), .S0(n398), .S1(n572), .ZN(
        n699) );
  MAOI222D0 U735 ( .A(n574), .B(n573), .C(n699), .ZN(n577) );
  MAOI222D0 U736 ( .A(n424), .B(n422), .C(n398), .ZN(n576) );
  INVD0 U737 ( .I(n575), .ZN(intadd_0_A_5_) );
  FA1D0 U738 ( .A(n578), .B(n577), .CI(n576), .CO(n579), .S(n575) );
  INVD0 U739 ( .I(n579), .ZN(intadd_0_B_6_) );
  NR2D0 U740 ( .A1(n430), .A2(n418), .ZN(n580) );
  AOI21D0 U741 ( .A1(n418), .A2(n430), .B(n580), .ZN(n594) );
  MUX2ND0 U742 ( .I0(n771), .I1(n772), .S(n594), .ZN(n722) );
  MUX2ND0 U743 ( .I0(n726), .I1(n727), .S(n722), .ZN(n712) );
  AOI22D0 U744 ( .A1(n765), .A2(n417), .B1(n418), .B2(n766), .ZN(n581) );
  AOI22D0 U745 ( .A1(n618), .A2(n429), .B1(n430), .B2(n619), .ZN(n595) );
  MAOI222D0 U746 ( .A(n388), .B(n581), .C(n595), .ZN(n731) );
  INVD0 U747 ( .I(mantissa_y[11]), .ZN(n746) );
  AOI22D0 U748 ( .A1(mantissa_y[11]), .A2(n408), .B1(n407), .B2(n746), .ZN(
        n741) );
  XOR3D0 U749 ( .A1(n712), .A2(n731), .A3(n741), .Z(n589) );
  MUX2ND0 U750 ( .I0(n732), .I1(mantissa_x[9]), .S(n711), .ZN(n585) );
  INVD0 U751 ( .I(n722), .ZN(n721) );
  AOI22D0 U752 ( .A1(n388), .A2(n722), .B1(n721), .B2(n387), .ZN(n584) );
  MUX2ND0 U753 ( .I0(n388), .I1(n387), .S(n582), .ZN(n583) );
  MUX3ND0 U754 ( .I0(n766), .I1(n765), .I2(n389), .S0(n732), .S1(n583), .ZN(
        n710) );
  MAOI222D0 U755 ( .A(n585), .B(n584), .C(n710), .ZN(n588) );
  MAOI222D0 U756 ( .A(mantissa_x[9]), .B(n420), .C(n390), .ZN(n587) );
  INVD0 U757 ( .I(n586), .ZN(intadd_0_A_7_) );
  FA1D0 U758 ( .A(n589), .B(n588), .CI(n587), .CO(n590), .S(n586) );
  INVD0 U759 ( .I(n590), .ZN(intadd_0_B_8_) );
  CKND2D0 U760 ( .A1(n436), .A2(n384), .ZN(n591) );
  OAI21D0 U761 ( .A1(n436), .A2(n384), .B(n591), .ZN(n607) );
  INVD0 U762 ( .I(n607), .ZN(n725) );
  INVD0 U763 ( .I(mantissa_y[13]), .ZN(n759) );
  AOI22D0 U764 ( .A1(mantissa_y[13]), .A2(n414), .B1(n413), .B2(n759), .ZN(
        n755) );
  MUX2ND0 U765 ( .I0(n771), .I1(n772), .S(n755), .ZN(n740) );
  MUX2ND0 U766 ( .I0(n607), .I1(n725), .S(n740), .ZN(n736) );
  AOI22D0 U767 ( .A1(n618), .A2(n436), .B1(n435), .B2(n619), .ZN(n608) );
  AOI22D0 U768 ( .A1(n765), .A2(n384), .B1(n383), .B2(n766), .ZN(n592) );
  MAOI222D0 U769 ( .A(n608), .B(n746), .C(n592), .ZN(n739) );
  XNR3D0 U770 ( .A1(n736), .A2(n741), .A3(n739), .ZN(n602) );
  AOI22D0 U771 ( .A1(n725), .A2(mantissa_y[11]), .B1(n746), .B2(n607), .ZN(
        n593) );
  MUX2ND0 U772 ( .I0(n771), .I1(n772), .S(n593), .ZN(n598) );
  MUX2ND0 U773 ( .I0(n407), .I1(n408), .S(n594), .ZN(n597) );
  MUX2ND0 U774 ( .I0(mantissa_y[11]), .I1(n746), .S(n595), .ZN(n596) );
  MUX3ND0 U775 ( .I0(n765), .I1(n766), .I2(n429), .S0(n408), .S1(n596), .ZN(
        n724) );
  MAOI222D0 U776 ( .A(n598), .B(n597), .C(n724), .ZN(n601) );
  MAOI222D0 U777 ( .A(n430), .B(n418), .C(n408), .ZN(n600) );
  INVD0 U778 ( .I(n599), .ZN(intadd_0_A_9_) );
  FA1D0 U779 ( .A(n602), .B(n601), .CI(n600), .CO(n603), .S(n599) );
  INVD0 U780 ( .I(n603), .ZN(intadd_0_B_10_) );
  CKND2D0 U781 ( .A1(n434), .A2(n386), .ZN(n604) );
  OAI21D0 U782 ( .A1(n434), .A2(n386), .B(n604), .ZN(n623) );
  INVD0 U783 ( .I(n623), .ZN(n738) );
  AOI22D0 U784 ( .A1(n396), .A2(n416), .B1(n415), .B2(n395), .ZN(n768) );
  MUX2ND0 U785 ( .I0(n771), .I1(n772), .S(n768), .ZN(n753) );
  MUX2ND0 U786 ( .I0(n623), .I1(n738), .S(n753), .ZN(n750) );
  AOI22D0 U787 ( .A1(n618), .A2(n434), .B1(n433), .B2(n619), .ZN(n624) );
  AOI22D0 U788 ( .A1(n765), .A2(n386), .B1(n385), .B2(n766), .ZN(n605) );
  MAOI222D0 U789 ( .A(n624), .B(n759), .C(n605), .ZN(n752) );
  XNR3D0 U790 ( .A1(n750), .A2(n755), .A3(n752), .ZN(n616) );
  AOI22D0 U791 ( .A1(n738), .A2(mantissa_y[13]), .B1(n759), .B2(n623), .ZN(
        n606) );
  MUX2ND0 U792 ( .I0(n771), .I1(n772), .S(n606), .ZN(n612) );
  AOI22D0 U793 ( .A1(n414), .A2(n725), .B1(n607), .B2(n413), .ZN(n611) );
  MUX2ND0 U794 ( .I0(n759), .I1(mantissa_y[13]), .S(n608), .ZN(n609) );
  MUX3ND0 U795 ( .I0(n766), .I1(n765), .I2(n436), .S0(n414), .S1(n609), .ZN(
        n737) );
  INVD0 U796 ( .I(n737), .ZN(n610) );
  MAOI222D0 U797 ( .A(n612), .B(n611), .C(n610), .ZN(n615) );
  MAOI222D0 U798 ( .A(n436), .B(n414), .C(n384), .ZN(n614) );
  INVD0 U799 ( .I(n613), .ZN(intadd_0_A_11_) );
  FA1D0 U800 ( .A(n616), .B(n615), .CI(n614), .CO(n617), .S(n613) );
  INVD0 U801 ( .I(n617), .ZN(intadd_0_B_12_) );
  AOI22D0 U802 ( .A1(n765), .A2(n377), .B1(n378), .B2(n766), .ZN(n620) );
  OAI22D0 U803 ( .A1(n619), .A2(n409), .B1(n410), .B2(n618), .ZN(n763) );
  MAOI222D0 U804 ( .A(n396), .B(n620), .C(n763), .ZN(n775) );
  NR2D0 U805 ( .A1(n410), .A2(n378), .ZN(n621) );
  AOI21D0 U806 ( .A1(n378), .A2(n410), .B(n621), .ZN(n783) );
  INVD0 U807 ( .I(n783), .ZN(n782) );
  MUX2ND0 U808 ( .I0(n782), .I1(n783), .S(n769), .ZN(n767) );
  INVD0 U809 ( .I(n753), .ZN(n754) );
  XNR3D0 U810 ( .A1(n775), .A2(n767), .A3(n754), .ZN(n632) );
  AOI22D0 U811 ( .A1(n783), .A2(n396), .B1(n395), .B2(n782), .ZN(n622) );
  MUX2ND0 U812 ( .I0(n771), .I1(n772), .S(n622), .ZN(n628) );
  AOI22D0 U813 ( .A1(n416), .A2(n738), .B1(n623), .B2(n415), .ZN(n627) );
  MUX2ND0 U814 ( .I0(n395), .I1(n396), .S(n624), .ZN(n625) );
  MUX3ND0 U815 ( .I0(n766), .I1(n765), .I2(n434), .S0(n416), .S1(n625), .ZN(
        n751) );
  INVD0 U816 ( .I(n751), .ZN(n626) );
  MAOI222D0 U817 ( .A(n628), .B(n627), .C(n626), .ZN(n631) );
  MAOI222D0 U818 ( .A(n434), .B(n416), .C(n386), .ZN(n630) );
  INVD0 U819 ( .I(n629), .ZN(intadd_0_A_13_) );
  FA1D0 U820 ( .A(n632), .B(n631), .CI(n630), .CO(n633), .S(n629) );
  INVD0 U821 ( .I(n633), .ZN(intadd_0_B_14_) );
  FA1D0 U822 ( .A(n636), .B(n635), .CI(n634), .CO(n647), .S(n521) );
  FA1D0 U823 ( .A(n639), .B(n638), .CI(n637), .CO(n649), .S(n653) );
  MAOI222D0 U824 ( .A(n642), .B(n641), .C(n640), .ZN(n652) );
  FA1D0 U825 ( .A(n645), .B(n644), .CI(n643), .CO(n651), .S(n636) );
  CKND2D0 U826 ( .A1(n647), .A2(n646), .ZN(intadd_2_B_1_) );
  OAI21D0 U827 ( .A1(n647), .A2(n646), .B(intadd_2_B_1_), .ZN(intadd_2_A_0_)
         );
  XOR3D0 U828 ( .A1(n650), .A2(n649), .A3(n648), .Z(n655) );
  FA1D0 U829 ( .A(n653), .B(n652), .CI(n651), .CO(n654), .S(n646) );
  CKND2D0 U830 ( .A1(n655), .A2(n654), .ZN(intadd_2_B_2_) );
  OAI21D0 U831 ( .A1(n655), .A2(n654), .B(intadd_2_B_2_), .ZN(intadd_2_A_1_)
         );
  IOA21D0 U832 ( .A1(intadd_1_SUM_7_), .A2(n656), .B(n661), .ZN(exp_out[7]) );
  IOA21D0 U833 ( .A1(intadd_1_SUM_2_), .A2(n656), .B(n661), .ZN(exp_out[2]) );
  IOA21D0 U834 ( .A1(intadd_1_SUM_3_), .A2(n656), .B(n661), .ZN(exp_out[3]) );
  IOA21D0 U835 ( .A1(intadd_1_SUM_4_), .A2(n656), .B(n661), .ZN(exp_out[4]) );
  IOA21D0 U836 ( .A1(intadd_1_SUM_5_), .A2(n656), .B(n661), .ZN(exp_out[5]) );
  IOA21D0 U837 ( .A1(intadd_1_SUM_6_), .A2(n656), .B(n661), .ZN(exp_out[6]) );
  IOA21D0 U838 ( .A1(intadd_1_SUM_1_), .A2(n656), .B(n661), .ZN(exp_out[1]) );
  MAOI22D0 U839 ( .A1(n658), .A2(n657), .B1(n658), .B2(n657), .ZN(n669) );
  MAOI22D0 U840 ( .A1(n660), .A2(n659), .B1(n660), .B2(n659), .ZN(n663) );
  IOA21D0 U841 ( .A1(n663), .A2(n662), .B(n661), .ZN(n664) );
  AOI21D0 U842 ( .A1(n666), .A2(n665), .B(n664), .ZN(n667) );
  IOA21D0 U843 ( .A1(n669), .A2(n668), .B(n667), .ZN(mantissa_out[0]) );
  IAO21D0 U844 ( .A1(exp_x[1]), .A2(exp_y[1]), .B(intadd_1_B_2_), .ZN(
        intadd_1_B_1_) );
  IAO21D0 U845 ( .A1(exp_x[2]), .A2(exp_y[2]), .B(intadd_1_B_3_), .ZN(
        intadd_1_A_2_) );
  IAO21D0 U846 ( .A1(exp_x[3]), .A2(exp_y[3]), .B(intadd_1_B_4_), .ZN(
        intadd_1_A_3_) );
  IAO21D0 U847 ( .A1(exp_x[4]), .A2(exp_y[4]), .B(intadd_1_B_5_), .ZN(
        intadd_1_A_4_) );
  IAO21D0 U848 ( .A1(exp_x[5]), .A2(exp_y[5]), .B(intadd_1_B_6_), .ZN(
        intadd_1_A_5_) );
  IAO21D0 U849 ( .A1(exp_x[6]), .A2(exp_y[6]), .B(intadd_1_B_7_), .ZN(
        intadd_1_A_6_) );
  IOA21D0 U850 ( .A1(exp_y[7]), .A2(exp_x[7]), .B(n670), .ZN(intadd_1_A_7_) );
  MAOI222D0 U851 ( .A(n425), .B(n671), .C(n399), .ZN(intadd_0_CI) );
  AOI22D0 U852 ( .A1(n426), .A2(n673), .B1(n672), .B2(n425), .ZN(n676) );
  INVD0 U853 ( .I(n689), .ZN(n690) );
  AOI22D0 U854 ( .A1(n440), .A2(n689), .B1(n690), .B2(n439), .ZN(n674) );
  MUX2ND0 U855 ( .I0(n772), .I1(n771), .S(n674), .ZN(n675) );
  MAOI222D0 U856 ( .A(n677), .B(n676), .C(n675), .ZN(intadd_0_B_0_) );
  XNR3D0 U857 ( .A1(n680), .A2(n679), .A3(n678), .ZN(intadd_0_A_0_) );
  XOR2D0 U858 ( .A1(sign_y), .A2(sign_x), .Z(sign_out) );
  FA1D0 U859 ( .A(n683), .B(n682), .CI(n681), .CO(n522), .S(intadd_0_A_16_) );
  XNR3D0 U860 ( .A1(n686), .A2(n685), .A3(n684), .ZN(n697) );
  INVD0 U861 ( .I(n687), .ZN(n693) );
  MAOI22D0 U862 ( .A1(n442), .A2(n688), .B1(n688), .B2(n442), .ZN(n692) );
  AOI22D0 U863 ( .A1(n382), .A2(n690), .B1(n689), .B2(n381), .ZN(n691) );
  MAOI222D0 U864 ( .A(n693), .B(n692), .C(n691), .ZN(n696) );
  MAOI222D0 U865 ( .A(n381), .B(n694), .C(n405), .ZN(n695) );
  FA1D0 U866 ( .A(n697), .B(n696), .CI(n695), .CO(intadd_0_B_3_), .S(
        intadd_0_A_2_) );
  XNR3D0 U867 ( .A1(n700), .A2(n699), .A3(n698), .ZN(n709) );
  MUX2ND0 U868 ( .I0(n422), .I1(n421), .S(n701), .ZN(n705) );
  AOI22D0 U869 ( .A1(n424), .A2(n713), .B1(n702), .B2(n423), .ZN(n703) );
  MUX2ND0 U870 ( .I0(n772), .I1(n771), .S(n703), .ZN(n704) );
  MAOI222D0 U871 ( .A(n706), .B(n705), .C(n704), .ZN(n708) );
  MAOI222D0 U872 ( .A(n421), .B(n393), .C(n411), .ZN(n707) );
  FA1D0 U873 ( .A(n709), .B(n708), .CI(n707), .CO(intadd_0_B_5_), .S(
        intadd_0_A_4_) );
  XOR3D0 U874 ( .A1(n712), .A2(n711), .A3(n710), .Z(n720) );
  MUX2ND0 U875 ( .I0(n420), .I1(n419), .S(n713), .ZN(n717) );
  AOI22D0 U876 ( .A1(n727), .A2(n390), .B1(n389), .B2(n726), .ZN(n714) );
  MUX2ND0 U877 ( .I0(n772), .I1(n771), .S(n714), .ZN(n716) );
  MAOI222D0 U878 ( .A(n717), .B(n716), .C(n715), .ZN(n719) );
  MAOI222D0 U879 ( .A(n419), .B(n391), .C(n397), .ZN(n718) );
  FA1D0 U880 ( .A(n720), .B(n719), .CI(n718), .CO(intadd_0_B_7_), .S(
        intadd_0_A_6_) );
  INVD0 U881 ( .I(n741), .ZN(n742) );
  AOI22D0 U882 ( .A1(n722), .A2(n742), .B1(n741), .B2(n721), .ZN(n723) );
  XNR3D0 U883 ( .A1(n725), .A2(n724), .A3(n723), .ZN(n735) );
  AOI22D0 U884 ( .A1(n727), .A2(n417), .B1(n418), .B2(n726), .ZN(n730) );
  MUX2ND0 U885 ( .I0(n429), .I1(n430), .S(n741), .ZN(n728) );
  MUX2ND0 U886 ( .I0(n772), .I1(n771), .S(n728), .ZN(n729) );
  MAOI222D0 U887 ( .A(n731), .B(n730), .C(n729), .ZN(n734) );
  MAOI222D0 U888 ( .A(n732), .B(n387), .C(n417), .ZN(n733) );
  FA1D0 U889 ( .A(n735), .B(n734), .CI(n733), .CO(intadd_0_B_9_), .S(
        intadd_0_A_8_) );
  XNR3D0 U890 ( .A1(n738), .A2(n737), .A3(n736), .ZN(n749) );
  INVD0 U891 ( .I(n739), .ZN(n745) );
  MUX2ND0 U892 ( .I0(n436), .I1(n435), .S(n740), .ZN(n744) );
  AOI22D0 U893 ( .A1(n384), .A2(n742), .B1(n741), .B2(n383), .ZN(n743) );
  MAOI222D0 U894 ( .A(n745), .B(n744), .C(n743), .ZN(n748) );
  MAOI222D0 U895 ( .A(n383), .B(n746), .C(n407), .ZN(n747) );
  FA1D0 U896 ( .A(n749), .B(n748), .CI(n747), .CO(intadd_0_B_11_), .S(
        intadd_0_A_10_) );
  XNR3D0 U897 ( .A1(n783), .A2(n751), .A3(n750), .ZN(n762) );
  INVD0 U898 ( .I(n752), .ZN(n758) );
  AOI22D0 U899 ( .A1(n434), .A2(n754), .B1(n753), .B2(n433), .ZN(n757) );
  MUX2ND0 U900 ( .I0(n386), .I1(n385), .S(n755), .ZN(n756) );
  MAOI222D0 U901 ( .A(n758), .B(n757), .C(n756), .ZN(n761) );
  MAOI222D0 U902 ( .A(n385), .B(n759), .C(n413), .ZN(n760) );
  FA1D0 U903 ( .A(n762), .B(n761), .CI(n760), .CO(intadd_0_B_13_), .S(
        intadd_0_A_12_) );
  MUX2ND0 U904 ( .I0(mantissa_y[17]), .I1(n785), .S(n763), .ZN(n764) );
  MUX3ND0 U905 ( .I0(n766), .I1(n765), .I2(n410), .S0(mantissa_x[17]), .S1(
        n764), .ZN(n788) );
  XNR3D0 U906 ( .A1(n788), .A2(n784), .A3(n767), .ZN(n778) );
  MUX2ND0 U907 ( .I0(n378), .I1(n377), .S(n768), .ZN(n774) );
  MUX2ND0 U908 ( .I0(n409), .I1(n410), .S(n769), .ZN(n770) );
  MUX2ND0 U909 ( .I0(n772), .I1(n771), .S(n770), .ZN(n773) );
  MAOI222D0 U910 ( .A(n775), .B(n774), .C(n773), .ZN(n777) );
  MAOI222D0 U911 ( .A(n377), .B(n395), .C(n415), .ZN(n776) );
  FA1D0 U912 ( .A(n778), .B(n777), .CI(n776), .CO(intadd_0_B_15_), .S(
        intadd_0_A_14_) );
  FA1D0 U913 ( .A(n781), .B(n780), .CI(n779), .CO(n682), .S(n792) );
  AOI22D0 U914 ( .A1(n783), .A2(n789), .B1(mantissa_x[17]), .B2(n782), .ZN(
        n787) );
  MUX2ND0 U915 ( .I0(mantissa_y[17]), .I1(n785), .S(n784), .ZN(n786) );
  MAOI222D0 U916 ( .A(n788), .B(n787), .C(n786), .ZN(n791) );
  MAOI222D0 U917 ( .A(n409), .B(n377), .C(n789), .ZN(n790) );
  FA1D0 U918 ( .A(n792), .B(n791), .CI(n790), .CO(intadd_0_B_16_), .S(
        intadd_0_A_15_) );
  CKXOR2D0 U505 ( .A1(intadd_1_n1), .A2(n670), .Z(n656) );
  OR2D0 U506 ( .A1(exp_y[7]), .A2(exp_x[7]), .Z(n670) );
endmodule

