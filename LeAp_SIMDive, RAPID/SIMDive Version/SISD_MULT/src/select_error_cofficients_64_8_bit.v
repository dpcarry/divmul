
module select_error_coeff_mul_64_8_bit(frac_a,
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
    


//        localparam c00_m=8'b00000000; localparam c01_m=8'b00000001; localparam c02_m=8'b00000001; localparam c03_m=8'b00000010; localparam c04_m=8'b00000010;
//        localparam c05_m=8'b00000100; localparam c06_m=8'b00000100; localparam c07_m=8'b00000010;
    
//        localparam c11_m=8'b00000011; localparam c12_m=8'b00000110; localparam c13_m=8'b00001001; localparam c14_m=8'b00001100; localparam c15_m=8'b00001000;
//        localparam c16_m=8'b00001010; localparam c17_m=8'b00000011;
    
//        localparam c22_m=8'b00001010; localparam c23_m=8'b00001111; localparam c24_m=8'b00010100; localparam c25_m=8'b00001110; localparam c26_m=8'b00001001;
//        localparam c27_m=8'b00000011;
    
//        localparam c33_m=8'b00010100; localparam c34_m=8'b00010000; localparam c35_m=8'b00001100; localparam c36_m=8'b00000111; localparam c37_m=8'b00000010;
    
//        localparam c44_m=8'b00001101; localparam c45_m=8'b00001001; localparam c46_m=8'b00000101; localparam c47_m=8'b00000001;
        
//        localparam c55_m=8'b00000110; localparam c56_m=8'b00000100; localparam c57_m=8'b00000001;
        
//        localparam c66_m=8'b00000010; localparam c67_m=8'b00000000;
        
//        localparam c77_m=8'b00000000;



        localparam c00_m=3'b000; localparam c01_m=3'b000; localparam c02_m=3'b000; localparam c03_m=3'b000; localparam c04_m=3'b000;
        localparam c05_m=3'b001; localparam c06_m=3'b001; localparam c07_m=3'b000;
    
        localparam c11_m=3'b000; localparam c12_m=3'b001; localparam c13_m=3'b010; localparam c14_m=3'b011; localparam c15_m=3'b010;
        localparam c16_m=3'b010; localparam c17_m=3'b000;
    
        localparam c22_m=3'b010; localparam c23_m=3'b011; localparam c24_m=3'b101; localparam c25_m=3'b011; localparam c26_m=3'b010;
        localparam c27_m=3'b000;
    
        localparam c33_m=3'b101; localparam c34_m=3'b100; localparam c35_m=3'b011; localparam c36_m=3'b001; localparam c37_m=3'b000;
    
        localparam c44_m=3'b011; localparam c45_m=3'b010; localparam c46_m=3'b001; localparam c47_m=3'b000;
        
        localparam c55_m=3'b001; localparam c56_m=3'b001; localparam c57_m=3'b000;
        
        localparam c66_m=3'b000; localparam c67_m=3'b000;
        
        localparam c77_m=3'b000;
        
    input      [2:0]  frac_a;
    input      [2:0]  frac_b;
    output reg [2:0] error_coeff;

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
            
                default            :   error_coeff = {3{1'b0}};
                endcase
        end

endmodule







//module select_error_coeff_mul_64_8_bit(frac_a,
//                                 frac_b,
//                                 error_coeff
//                                );


        
//    input      [2:0]  frac_a;
//    input      [2:0]  frac_b;
//    output      [7:0] error_coeff;


//            LUT6 #( .INIT(64'h0002450600001008) // Specify LUT Contents         
//                 ) LUT6_inst (
//                    .O(error_coeff[0]), // 1-bit LUT6 output
                    
//                    .I0(frac_a[0]), 
//                    .I1(frac_a[1]), 
//                    .I2(frac_a[2]), 
//                    .I3(frac_b[0]), 
//                    .I4(frac_b[1]), 
//                    .I5(frac_b[2]) // 1-bit LUT input (fast MUX select only available to O6 output)
//                    );   
            
                    
            
//           LUT6 #( .INIT(64'h34580002000000d2) // Specify LUT Contents         
//                        ) LUT6_inst1 (
//                        .O(error_coeff[1]), // 1-bit LUT6 output
                        
//                    .I0(frac_a[0]), 
//                        .I1(frac_a[1]), 
//                        .I2(frac_a[2]), 
//                        .I3(frac_b[0]), 
//                        .I4(frac_b[1]), 
//                        .I5(frac_b[2]) // 1-bit LUT input (fast MUX select only available to O6 output)
//                        );   
                
                        
                        
//            LUT6 #( .INIT(64'h7021000600001116) // Specify LUT Contents         
//            ) LUT6_inst2 (
//                    .O(error_coeff[2]), // 1-bit LUT6 output
                    
//                    .I0(frac_a[0]), 
//                    .I1(frac_a[1]), 
//                    .I2(frac_a[2]), 
//                    .I3(frac_b[0]), 
//                    .I4(frac_b[1]), 
//                    .I5(frac_b[2]) // 1-bit LUT input (fast MUX select only available to O6 output)
//                    );   
                    
                                                                                                                                                                           


//endmodule




