
//module select_error_coeff_mul_64(frac_a,
//                                 frac_b,
//                                 error_coeff
//                                );
 
        
        
//    input      [2:0]  frac_a;
//    input      [2:0]  frac_b;
//    output     [15:0] error_coeff;
    
    
    
//           LUT6 #( .INIT(64'h0000000000000000) // Specify LUT Contents         
//              ) LUT6_inst (
//                 .O(error_coeff[15]), // 1-bit LUT6 output
                 
//                 .I0(frac_a[0]), 
//                 .I1(frac_a[1]), 
//                 .I2(frac_a[2]), 
//                 .I3(frac_b[0]), 
//                 .I4(frac_b[1]), 
//                 .I5(frac_b[2]) // 1-bit LUT input (fast MUX select only available to O6 output)
//                 );   
         
                 
         
//        LUT6 #( .INIT(64'h0000000000000000) // Specify LUT Contents         
//                     ) LUT6_inst1 (
//                     .O(error_coeff[14]), // 1-bit LUT6 output
                     
//                 .I0(frac_a[0]), 
//                     .I1(frac_a[1]), 
//                     .I2(frac_a[2]), 
//                     .I3(frac_b[0]), 
//                     .I4(frac_b[1]), 
//                     .I5(frac_b[2]) // 1-bit LUT input (fast MUX select only available to O6 output)
//                     );   
             
                     
                     
//         LUT6 #( .INIT(64'h0000000000000000) // Specify LUT Contents         
//         ) LUT6_inst2 (
//                 .O(error_coeff[13]), // 1-bit LUT6 output
                 
//                 .I0(frac_a[0]), 
//                 .I1(frac_a[1]), 
//                 .I2(frac_a[2]), 
//                 .I3(frac_b[0]), 
//                 .I4(frac_b[1]), 
//                 .I5(frac_b[2]) // 1-bit LUT input (fast MUX select only available to O6 output)
//                 );   
                 
         
//         LUT6 #( .INIT(64'h03210000480aa011) // Specify LUT Contents         
//         ) LUT6_inst3 (
//                 .O(error_coeff[3]), // 1-bit LUT6 output
                 
//                 .I0(frac_a[0]), 
//                 .I1(frac_a[1]), 
//                 .I2(frac_a[2]), 
//                 .I3(frac_b[0]), 
//                 .I4(frac_b[1]), 
//                 .I5(frac_b[2]) // 1-bit LUT input (fast MUX select only available to O6 output)
//                 );   
         
//         LUT6 #( .INIT(64'h01258606000d100d) // Specify LUT Contents         
//         ) LUT6_inst4 (
//                 .O(error_coeff[4]), // 1-bit LUT6 output
//                 .I0(frac_a[0]), 
//                 .I1(frac_a[1]), 
//                 .I2(frac_a[2]), 
//                 .I3(frac_b[0]), 
//                 .I4(frac_b[1]), 
//                 .I5(frac_b[2]) // 1-bit LUT input (fast MUX select only available to O6 output)
//                  );                                                                                     

         
         
//         LUT6 #( .INIT(64'h1125000600000d08) // Specify LUT Contents         
//         ) LUT6_inst5 (
//                 .O(error_coeff[5]), // 1-bit LUT6 output
                 
//                .I0(frac_a[0]), 
//                  .I1(frac_a[1]), 
//                  .I2(frac_a[2]), 
//                  .I3(frac_b[0]), 
//                  .I4(frac_b[1]), 
//                  .I5(frac_b[2]) // 1-bit LUT input (fast MUX select only available to O6 output)
//                  );                                                                                     
    
         
         
                                            
//         LUT6 #( .INIT(64'h0000000600000008) // Specify LUT Contents         
//         ) LUT6_inst6 (
//                 .O(error_coeff[6]), // 1-bit LUT6 output
                 
//                  .I0(frac_a[0]), 
//                  .I1(frac_a[1]), 
//                  .I2(frac_a[2]), 
//                  .I3(frac_b[0]), 
//                  .I4(frac_b[1]), 
//                  .I5(frac_b[2]) // 1-bit LUT input (fast MUX select only available to O6 output)
//                  );                                                                                     
  
                 
         
         
//         LUT6 #( .INIT(64'h9874000600000008) // Specify LUT Contents         
//         ) LUT6_inst7 (
//                 .O(error_coeff[7]), // 1-bit LUT6 output
                 
//                 .I0(frac_a[0]), 
//                 .I1(frac_a[1]), 
//                 .I2(frac_a[2]), 
//                 .I3(frac_b[0]), 
//                 .I4(frac_b[1]), 
//                 .I5(frac_b[2]) // 1-bit LUT input (fast MUX select only available to O6 output)
//                 );   
                 
//  LUT6 #( .INIT(64'h0012450600001001) // Specify LUT Contents         
//                   ) LUT6_inst8 (
//                      .O(error_coeff[8]), // 1-bit LUT6 output
                      
//                      .I0(frac_a[0]), 
//                      .I1(frac_a[1]), 
//                      .I2(frac_a[2]), 
//                      .I3(frac_b[0]), 
//                      .I4(frac_b[1]), 
//                      .I5(frac_b[2]) // 1-bit LUT input (fast MUX select only available to O6 output)
//                      );   
              
                      
              
//             LUT6 #( .INIT(64'h31580002000000d8) // Specify LUT Contents         
//                          ) LUT6_inst9 (
//                          .O(error_coeff[9]), // 1-bit LUT6 output
                          
//                      .I0(frac_a[0]), 
//                          .I1(frac_a[1]), 
//                          .I2(frac_a[2]), 
//                          .I3(frac_b[0]), 
//                          .I4(frac_b[1]), 
//                          .I5(frac_b[2]) // 1-bit LUT input (fast MUX select only available to O6 output)
//                          );   
                  
                          
                          
//              LUT6 #( .INIT(64'h7011000600001110) // Specify LUT Contents         
//              ) LUT6_inst10 (
//                      .O(error_coeff[10]), // 1-bit LUT6 output
                      
//                      .I0(frac_a[0]), 
//                      .I1(frac_a[1]), 
//                      .I2(frac_a[2]), 
//                      .I3(frac_b[0]), 
//                      .I4(frac_b[1]), 
//                      .I5(frac_b[2]) // 1-bit LUT input (fast MUX select only available to O6 output)
//                      );   
                      
              
//              LUT6 #( .INIT(64'h03110000480aa010) // Specify LUT Contents         
//              ) LUT6_inst11 (
//                      .O(error_coeff[11]), // 1-bit LUT6 output
                      
//                      .I0(frac_a[0]), 
//                      .I1(frac_a[1]), 
//                      .I2(frac_a[2]), 
//                      .I3(frac_b[0]), 
//                      .I4(frac_b[1]), 
//                      .I5(frac_b[2]) // 1-bit LUT input (fast MUX select only available to O6 output)
//                      );   
              
//              LUT6 #( .INIT(64'h01251606000d1001) // Specify LUT Contents         
//              ) LUT6_inst12 (
//                      .O(error_coeff[12]), // 1-bit LUT6 output
//                      .I0(frac_a[0]), 
//                      .I1(frac_a[1]), 
//                      .I2(frac_a[2]), 
//                      .I3(frac_b[0]), 
//                      .I4(frac_b[1]), 
//                      .I5(frac_b[2]) // 1-bit LUT input (fast MUX select only available to O6 output)
//                       );                                                                                     
   
              
              
//              LUT6 #( .INIT(64'h1115000600000d01) // Specify LUT Contents         
//              ) LUT6_inst13 (
//                      .O(error_coeff[2]), // 1-bit LUT6 output
                      
//                     .I0(frac_a[0]), 
//                       .I1(frac_a[1]), 
//                       .I2(frac_a[2]), 
//                       .I3(frac_b[0]), 
//                       .I4(frac_b[1]), 
//                       .I5(frac_b[2]) // 1-bit LUT input (fast MUX select only available to O6 output)
//                       );                                                                                     
         
              
              
                                                 
//              LUT6 #( .INIT(64'h0000100100000018) // Specify LUT Contents         
//              ) LUT6_inst14 (
//                      .O(error_coeff[1]), // 1-bit LUT6 output
                      
//                       .I0(frac_a[0]), 
//                       .I1(frac_a[1]), 
//                       .I2(frac_a[2]), 
//                       .I3(frac_b[0]), 
//                       .I4(frac_b[1]), 
//                       .I5(frac_b[2]) // 1-bit LUT input (fast MUX select only available to O6 output)
//                       );                                                                                     
       
                      
              
              
//              LUT6 #( .INIT(64'h9814000600010008) // Specify LUT Contents         
//              ) LUT6_inst15 (
//                      .O(error_coeff[0]), // 1-bit LUT6 output
                      
//                      .I0(frac_a[0]), 
//                      .I1(frac_a[1]), 
//                      .I2(frac_a[2]), 
//                      .I3(frac_b[0]), 
//                      .I4(frac_b[1]), 
//                      .I5(frac_b[2]) // 1-bit LUT input (fast MUX select only available to O6 output)
//                      );                                                    
                                                    


//endmodule



































module select_error_coeff_mul_64(frac_a,
                                 frac_b,
                                 error_coeff
                                );


    localparam ZERO   = 3'b000;   //0     = 0.000
    localparam ONE    = 3'b001;   //0.125 = 0.001
    localparam TWO    = 3'b010;   //0.250 = 0.010
    localparam THREE  = 3'b011;   //0.375 = 0.011
    localparam FOUR   = 3'b100;   //0.5   = 0.100
    localparam FIVE   = 3'b101;   //0.625 = 0.101
    localparam SIX    = 3'b110;   //0.750 = 0.110
    localparam SEVEN  = 3'b111;   //0.875 = 0.111
    

        localparam c00_m=13'b0000000111101; localparam c01_m=13'b0000100101101; localparam c02_m=13'b0000111101000; localparam c03_m=13'b0001001000000; localparam c04_m=13'b0001011011010;
        localparam c05_m=13'b0010001100000; localparam c06_m=13'b0010011010010; localparam c07_m=13'b0001001100111;
    
        localparam c11_m=13'b0001110111010; localparam c12_m=13'b0011000000010; localparam c13_m=13'b0100100000100; localparam c14_m=13'b0110000111000; localparam c15_m=13'b0100000001100;
        localparam c16_m=13'b0101000100100; localparam c17_m=13'b0001111000000;
    
        localparam c22_m=13'b0101010110100; localparam c23_m=13'b0111111010000; localparam c24_m=13'b1010000000000; localparam c25_m=13'b0111000000000; localparam c26_m=13'b0100100000000;
        localparam c27_m=13'b0001100110011;
    
        localparam c33_m=13'b1010000000000; localparam c34_m=13'b1000010001000; localparam c35_m=13'b0110000000000; localparam c36_m=13'b0011100011000; localparam c37_m=13'b0001010000000;
    
        localparam c44_m=13'b0110100001100; localparam c45_m=13'b0100100101000; localparam c46_m=13'b0010100111010; localparam c47_m=13'b0000110110011;
        
        localparam c55_m=13'b0011011000000; localparam c56_m=13'b0010000000000; localparam c57_m=13'b0000110000000;
        
        localparam c66_m=13'b0001010000010; localparam c67_m=13'b0000011100000;
        
        localparam c77_m=13'b0000000110001;
        
        
    input      [2:0]  frac_a;
    input      [2:0]  frac_b;
    output reg [15:0] error_coeff;

//    wire               fracA_fracB;
//    wire               zero_zero, zero_one_one_zero, zero_two_two_zero, zero_three_three_zero, zero_four_four_zero, zero_five_five_zero, zero_six_six_zero, zero_seven_seven_zero;
//    wire               one_one, one_two_two_one, one_three_three_one, one_four_four_one, one_five_five_one, one_six_six_one, one_seven_seven_one;
//    wire               two_two, two_three_three_two, two_four_four_two, two_five_five_two, two_six_six_two, two_seven_seven_two;
//    wire               three_three, three_four_four_three, three_five_five_three, three_six_six_three, three_seven_seven_three;
//    wire               four_four, four_five_five_four, four_six_six_four, four_seven_seven_four;
//    wire               five_five, five_six_six_five, five_seven_seven_five;
//    wire               six_six, six_seven_seven_six;
//    wire               seven_seven;

//    assign zero_zero                 = (frac_a==ZERO & frac_b==ZERO);
//    assign zero_one_one_zero         = ((frac_a==ZERO & frac_b==ONE) | (frac_a==ONE & frac_b==ZERO));
//    assign zero_two_two_zero         = ((frac_a==ZERO & frac_b==TWO) | (frac_a==TWO & frac_b==ZERO));
//    assign zero_three_three_zero     = ((frac_a==ZERO & frac_b==THREE) | (frac_a==THREE & frac_b==ZERO));
//    assign zero_four_four_zero       = ((frac_a==ZERO & frac_b==FOUR) | (frac_a==FOUR & frac_b==ZERO));
//    assign zero_five_five_zero       = ((frac_a==ZERO & frac_b==FIVE) | (frac_a==FIVE & frac_b==ZERO));
//    assign zero_six_six_zero         = ((frac_a==ZERO & frac_b==SIX) | (frac_a==SIX & frac_b==ZERO));
//    assign zero_seven_seven_zero     = ((frac_a==ZERO & frac_b==SEVEN) | (frac_a==SEVEN & frac_b==ZERO));

//    assign one_one                   = (frac_a==ONE & frac_b==ONE);
//    assign one_two_two_one           = ((frac_a==ONE & frac_b==TWO) | (frac_a==TWO & frac_b==ONE));
//    assign one_three_three_one       = ((frac_a==ONE & frac_b==THREE) | (frac_a==THREE & frac_b==ONE));
//    assign one_four_four_one         = ((frac_a==ONE & frac_b==FOUR) | (frac_a==FOUR & frac_b==ONE));
//    assign one_five_five_one         = ((frac_a==ONE & frac_b==FIVE) | (frac_a==FIVE & frac_b==ONE));
//    assign one_six_six_one           = ((frac_a==ONE & frac_b==SIX) | (frac_a==SIX & frac_b==ONE));
//    assign one_seven_seven_one       = ((frac_a==ONE & frac_b==SEVEN) | (frac_a==SEVEN & frac_b==ONE));

//    assign two_two                   = (frac_a==TWO & frac_b==TWO);
//    assign two_three_three_two       = ((frac_a==TWO & frac_b==THREE) | (frac_a==THREE & frac_b==TWO));
//    assign two_four_four_two         = ((frac_a==TWO & frac_b==FOUR) | (frac_a==FOUR & frac_b==TWO));
//    assign two_five_five_two         = ((frac_a==TWO & frac_b==FIVE) | (frac_a==FIVE & frac_b==TWO));
//    assign two_six_six_two           = ((frac_a==TWO & frac_b==SIX) | (frac_a==SIX & frac_b==TWO));
//    assign two_seven_seven_two       = ((frac_a==TWO & frac_b==SEVEN) | (frac_a==SEVEN & frac_b==TWO));

//    assign three_three               = (frac_a==THREE & frac_b==THREE);
//    assign three_four_four_three     = ((frac_a==THREE & frac_b==FOUR) | (frac_a==FOUR & frac_b==THREE));
//    assign three_five_five_three     = ((frac_a==THREE & frac_b==FIVE) | (frac_a==FIVE & frac_b==THREE));
//    assign three_six_six_three       = ((frac_a==THREE & frac_b==SIX) | (frac_a==SIX & frac_b==THREE));
//    assign three_seven_seven_three   = ((frac_a==THREE & frac_b==SEVEN) | (frac_a==SEVEN & frac_b==THREE));

//    assign four_four                 = (frac_a==FOUR & frac_b==FOUR);
//    assign four_five_five_four       = ((frac_a==FOUR & frac_b==FIVE) | (frac_a==FIVE & frac_b==FOUR));
//    assign four_six_six_four         = ((frac_a==FOUR & frac_b==SIX) | (frac_a==SIX & frac_b==FOUR));
//    assign four_seven_seven_four     = ((frac_a==FOUR & frac_b==SEVEN) | (frac_a==SEVEN & frac_b==FOUR));

//    assign five_five                 = (frac_a==FIVE & frac_b==FIVE);
//    assign five_six_six_five         = ((frac_a==FIVE & frac_b==SIX) | (frac_a==SIX & frac_b==FIVE));
//    assign five_seven_seven_five     = ((frac_a==FIVE & frac_b==SEVEN) | (frac_a==SEVEN & frac_b==FIVE));

//    assign six_six                   = (frac_a==SIX & frac_b==SIX);
//    assign six_seven_seven_six       = ((frac_a==SIX & frac_b==SEVEN) | (frac_a==SEVEN & frac_b==SIX));

//    assign seven_seven               = (frac_a==SEVEN & frac_b==SEVEN);

//    assign fracA_fracB  = (zero_zero | zero_one_one_zero | zero_two_two_zero | zero_three_three_zero | zero_four_four_zero | zero_five_five_zero | zero_six_six_zero | zero_seven_seven_zero |
//                           one_one | one_two_two_one | one_three_three_one | one_four_four_one | one_five_five_one | one_six_six_one | one_seven_seven_one |
//                           two_two | two_three_three_two | two_four_four_two | two_five_five_two | two_six_six_two | two_seven_seven_two |
//                           three_three | three_four_four_three | three_five_five_three | three_six_six_three | three_seven_seven_three |
//                           four_four | four_five_five_four | four_six_six_four | four_seven_seven_four |
//                           five_five | five_six_six_five | five_seven_seven_five |
//                           six_six | six_seven_seven_six |
//                           seven_seven );
    always@(*)
        begin
             case({frac_a, frac_b})
            
                            {ZERO,ZERO}          :   error_coeff = c00_m;           
                            {ZERO,ONE}           :   error_coeff = c01_m;
                            {ONE,ZERO}           :   error_coeff = c01_m;
                            {ZERO,TWO}           :   error_coeff = c02_m;
                            {TWO,ZERO}           :   error_coeff = c02_m;
                            {ZERO,THREE}         :   error_coeff = c03_m;
                            {THREE,ZERO}         :   error_coeff = c03_m;
                            {ZERO,FOUR}          :   error_coeff = c04_m;
                            {FOUR,ZERO}          :   error_coeff = c04_m;
                            {ZERO,FIVE}          :   error_coeff = c05_m;
                            {FIVE,ZERO}          :   error_coeff = c05_m;
                            {ZERO,SIX}           :   error_coeff = c06_m;
                            {SIX,ZERO}           :   error_coeff = c06_m;
                            {ZERO,SEVEN}         :   error_coeff = c07_m;
                            {SEVEN,ZERO}         :   error_coeff = c07_m;
                
                            {ONE,ONE}            :   error_coeff = c11_m;
                            {ONE,TWO}            :   error_coeff = c12_m;
                            {TWO,ONE}            :   error_coeff = c12_m;
                            {ONE,THREE}          :   error_coeff = c13_m;
                            {THREE,ONE}          :   error_coeff = c13_m;
                            {ONE,FOUR}           :   error_coeff = c14_m;
                            {FOUR,ONE}           :   error_coeff = c14_m;
                            {ONE,FIVE}           :   error_coeff = c15_m;
                            {FIVE,ONE}           :   error_coeff = c15_m;
                            {ONE,SIX}            :   error_coeff = c16_m;
                            {SIX,ONE}            :   error_coeff = c16_m;
                            {ONE,SEVEN}          :   error_coeff = c17_m;
                            {SEVEN,ONE}          :    error_coeff = c17_m;
                
                     
                
                            {TWO,TWO}           :   error_coeff = c22_m;
                
                            {TWO,THREE}         :   error_coeff = c23_m;
                            {THREE,TWO}         : error_coeff = c23_m;
                            {TWO,FOUR}          :   error_coeff = c24_m;
                            {FOUR,TWO}          :   error_coeff = c24_m;
                            {TWO,FIVE}          :   error_coeff = c25_m;
                            {FIVE,TWO}          :   error_coeff = c25_m;
                            {TWO,SIX}           :   error_coeff = c26_m;
                            {SIX,TWO}           :   error_coeff = c26_m;
                            {TWO,SEVEN}         :   error_coeff = c27_m;
                            {SEVEN,TWO}         :   error_coeff = c27_m;
                
                
                            {THREE,THREE}      :   error_coeff = c33_m;
                      
                            {THREE,FOUR}       :   error_coeff = c34_m;
                            {FOUR,THREE}       :   error_coeff = c34_m;
                            {THREE,FIVE}       :   error_coeff = c35_m;
                            {FIVE,THREE}       :   error_coeff = c35_m;
                            {THREE,SIX}        :   error_coeff = c36_m;
                            {SIX,THREE}        :   error_coeff = c36_m;
                            {THREE,SEVEN}      :   error_coeff = c37_m;
                            {SEVEN,THREE}      :   error_coeff = c37_m;
                
                
                            {FOUR,FOUR}        :   error_coeff = c44_m;
                            {FOUR,FIVE}        :   error_coeff = c45_m;
                            {FIVE,FOUR}        :   error_coeff = c45_m;
                            {FOUR,SIX}         :   error_coeff = c46_m;
                            {SIX,FOUR}         :   error_coeff = c46_m;
                            {FOUR,SEVEN}       :   error_coeff = c47_m;
                            {SEVEN,FOUR}       :   error_coeff = c47_m;
                
                            {FIVE,FIVE}        :   error_coeff = c55_m;
                            {FIVE,SIX}         :   error_coeff = c56_m;
                            {SIX,FIVE}         :   error_coeff = c56_m;
                            {FIVE,SEVEN}       :   error_coeff = c57_m;
                            {SEVEN,FIVE}       :   error_coeff = c57_m;
                
                
                            {SIX,SIX}          :   error_coeff = c66_m;
                            {SIX,SEVEN}        :   error_coeff = c67_m;
                            {SEVEN,SIX}        :   error_coeff = c67_m;
                
                            {SEVEN,SEVEN}      :   error_coeff = c77_m;
            
                default            :   error_coeff = {16{1'b0}};
                endcase
        end

endmodule