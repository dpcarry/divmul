
module select_ec_16_8_mul_div_alternate  #(parameter N = 32)   
                                 (
 
                                func,
                                frac_a,
                                frac_a_pos_2,
                                frac_a_lsb,
                                frac_a_pos_0,
                                frac_b,
                                frac_b_pos_2,
                                frac_b_lsb,
                                frac_b_pos_0,
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


        localparam c00_m=16'b0000000000111101; localparam c01_m=16'b0000000100101101; localparam c02_m=16'b0000000111101000; localparam c03_m=16'b0000001001000000; localparam c04_m=16'b0000001011011010;
        localparam c05_m=16'b0000010001100000; localparam c06_m=16'b0000010011010010; localparam c07_m=16'b0000001001100111;
    
        localparam c11_m=16'b0000001110111010; localparam c12_m=16'b0000011000000010; localparam c13_m=16'b0000100100000100; localparam c14_m=16'b0000110000111000; localparam c15_m=16'b0000100000001100;
        localparam c16_m=16'b0000101000100100; localparam c17_m=16'b0000001111000000;
    
        localparam c22_m=16'b0000101010110100; localparam c23_m=16'b0000111111010000; localparam c24_m=16'b0001010000000000; localparam c25_m=16'b0000111000000000; localparam c26_m=16'b0000100100000000;
        localparam c27_m=16'b0000001100110011;
    
        localparam c33_m=16'b0001010000000000; localparam c34_m=16'b0001000010001000; localparam c35_m=16'b0000110000000000; localparam c36_m=16'b0000011100011000; localparam c37_m=16'b0000001010000000;
    
        localparam c44_m=16'b0000110100001100; localparam c45_m=16'b0000100100101000; localparam c46_m=16'b0000010100111010; localparam c47_m=16'b0000000110110011;
        
        localparam c55_m=16'b0000011011000000; localparam c56_m=16'b0000010000000000; localparam c57_m=16'b0000000110000000;
        
        localparam c66_m=16'b0000001010000010; localparam c67_m=16'b0000000011100000;
        
        localparam c77_m=16'b0000000000110001;
        
        
        
        
        localparam c00_d=16'b0000000000100001; localparam c01_d=16'b0000100111100011; localparam c02_d=16'b0001000001111110; localparam c03_d=16'b0001000101000111; localparam c04_d=16'b0001001000010010;
        localparam c05_d=16'b0001000000000000; localparam c06_d=16'b0000100111011000; localparam c07_d=16'b0000000100000000;
        
        
    
        localparam c10_d=16'b0000000010111011; localparam c11_d=16'b0000000100000001; localparam c12_d=16'b0000100011111001; localparam c13_d=16'b0000110001100111; localparam c14_d=16'b0000110101110101;
        localparam c15_d=16'b0000101111000101; localparam c16_d=16'b0000100000110101; localparam c17_d=16'b0000001100110110;
        
     
           
        
        localparam c20_d=16'b0000000111100001; localparam c21_d=16'b0000001010101010; localparam c22_d=16'b0000000101011011; localparam c23_d=16'b0000011001011111; localparam c24_d=16'b0000100011001100;
        localparam c25_d=16'b0000100001111100; localparam c26_d=16'b0000010110101000; localparam c27_d=16'b0000001011101000;
        
      
     
     
        localparam c30_d=16'b0000001100000011; localparam c31_d=16'b0000010011011110; localparam c32_d=16'b0000001111100000; localparam c33_d=16'b0000000110011001; localparam c34_d=16'b0000010001101110;
        localparam c35_d=16'b0000010111111001; localparam c36_d=16'b0000010010001010; localparam c37_d=16'b0000001000000011;
        
        
        localparam c40_d=16'b0000001001001111; localparam c41_d=16'b0000011111110101; localparam c42_d=16'b0000011111111011; localparam c43_d=16'b0000010000110010; localparam c44_d=16'b0000000110011110;
        localparam c45_d=16'b0000001010111111; localparam c46_d=16'b0000001101000100; localparam c47_d=16'b0000000101101011;
        
        
     
        
        localparam c50_d=16'b0000010000110001; localparam c51_d=16'b0000100111101001; localparam c52_d=16'b0000101111000001; localparam c53_d=16'b0000100111100011; localparam c54_d=16'b0000011000000101;
        localparam c55_d=16'b0000000110000111; localparam c56_d=16'b0000000110101100; localparam c57_d=16'b0000000100100101;
        
        
        
        localparam c60_d=16'b0000010100000110; localparam c61_d=16'b0000111000000000; localparam c62_d=16'b0000111000100001; localparam c63_d=16'b0000111100000000; localparam c64_d=16'b0000101111100110;
        localparam c65_d=16'b0000011000011001; localparam c66_d=16'b0000000101110011; localparam c67_d=16'b0000000001111010;
        
        
        
        localparam c70_d=16'b0000011001010000; localparam c71_d=16'b0000111100001101; localparam c72_d=16'b0001010010111010; localparam c73_d=16'b0001010001010101; localparam c74_d=16'b0001000100000000;
        localparam c75_d=16'b0000101101011010; localparam c76_d=16'b0000011011000100; localparam c77_d=16'b0000000101100011;



 
            input      [3:0]  func;
            input      [2:0]  frac_a;
            input      [2:0]  frac_b;
            input      [2:0]  frac_a_lsb;
            input      [2:0]  frac_b_lsb;
            input      [2:0]  frac_a_pos_2;
            input      [2:0]  frac_a_pos_0;
            input      [2:0]  frac_b_pos_2;
            input      [2:0]  frac_b_pos_0;
            output reg [N-1:0] error_coeff;
            
            reg [31:0] temp_32_bit_mul;
            reg [31:0] temp_32_bit_div;
            
            reg [15:0] temp_16_bit_mul_upper;
            reg [15:0] temp_16_bit_div_upper;
            
            
            reg [15:0] temp_16_bit_mul_lower;
            reg [15:0] temp_16_bit_div_lower;
            
            
            reg [7:0] temp_8_bit_div_0;
            reg [7:0] temp_8_bit_div_1;
            reg [7:0] temp_8_bit_div_2;
            reg [7:0] temp_8_bit_div_3;
            
            
            reg [7:0] temp_8_bit_mul_0;
            reg [7:0] temp_8_bit_mul_1;
            reg [7:0] temp_8_bit_mul_2;
            reg [7:0] temp_8_bit_mul_3;
        
        
            always@(*)
                begin
                   
                case({frac_a, frac_b})
                        {ZERO,ZERO}          :begin      temp_16_bit_mul_upper = c00_m; temp_16_bit_div_upper = c00_d;   temp_8_bit_mul_3 = c00_m[15:8];  temp_8_bit_div_3 = c00_d[15:8]; end
                         {ZERO,ONE}           :begin      temp_16_bit_mul_upper = c01_m; temp_16_bit_div_upper = c01_d;   temp_8_bit_mul_3 = c01_m[15:8];    temp_8_bit_div_3 = c01_d[15:8]; end
                         {ZERO,TWO}           :begin      temp_16_bit_mul_upper = c02_m; temp_16_bit_div_upper = c02_d;   temp_8_bit_mul_3 = c02_m[15:8];  temp_8_bit_div_3 = c02_d[15:8]; end
                         {ZERO,THREE}         :begin      temp_16_bit_mul_upper = c03_m; temp_16_bit_div_upper = c03_d;   temp_8_bit_mul_3 = c03_m[15:8];  temp_8_bit_div_3 = c03_d[15:8]; end
                         {ZERO,FOUR}          :begin      temp_16_bit_mul_upper = c04_m; temp_16_bit_div_upper = c04_d;   temp_8_bit_mul_3 = c04_m[15:8];  temp_8_bit_div_3 = c04_d[15:8]; end
                         {ZERO,FIVE}          :begin      temp_16_bit_mul_upper = c05_m; temp_16_bit_div_upper = c05_d;   temp_8_bit_mul_3 = c05_m[15:8];  temp_8_bit_div_3 = c05_d[15:8]; end
                         {ZERO,SIX}           :begin      temp_16_bit_mul_upper = c06_m; temp_16_bit_div_upper = c06_d;   temp_8_bit_mul_3 = c06_m[15:8];  temp_8_bit_div_3 = c06_d[15:8]; end
                         {ZERO,SEVEN}         :begin      temp_16_bit_mul_upper = c07_m; temp_16_bit_div_upper = c07_d;   temp_8_bit_mul_3 = c07_m[15:8];  temp_8_bit_div_3 = c07_d[15:8]; end
                         
                         
                         {ONE,ZERO}           :begin      temp_16_bit_mul_upper = c01_m; temp_16_bit_div_upper = c10_d;   temp_8_bit_mul_3 = c01_m[15:8];  temp_8_bit_div_3 = c10_d[15:8]; end
                         {ONE,ONE}            :begin      temp_16_bit_mul_upper = c11_m; temp_16_bit_div_upper = c11_d;   temp_8_bit_mul_3 = c11_m[15:8];  temp_8_bit_div_3 = c11_d[15:8]; end
                         {ONE,TWO}            :begin      temp_16_bit_mul_upper = c12_m; temp_16_bit_div_upper = c12_d;   temp_8_bit_mul_3 = c12_m[15:8];  temp_8_bit_div_3 = c12_d[15:8]; end
                         {ONE,THREE}          :begin      temp_16_bit_mul_upper = c13_m; temp_16_bit_div_upper = c13_d;   temp_8_bit_mul_3 = c13_m[15:8];  temp_8_bit_div_3 = c13_d[15:8]; end
                         {ONE,FOUR}           :begin      temp_16_bit_mul_upper = c14_m; temp_16_bit_div_upper = c14_d;   temp_8_bit_mul_3 = c14_m[15:8];  temp_8_bit_div_3 = c14_d[15:8]; end
                         {ONE,FIVE}           :begin      temp_16_bit_mul_upper = c15_m; temp_16_bit_div_upper = c15_d;   temp_8_bit_mul_3 = c15_m[15:8];  temp_8_bit_div_3 = c15_d[15:8]; end
                         {ONE,SIX}            :begin      temp_16_bit_mul_upper = c16_m; temp_16_bit_div_upper = c16_d;   temp_8_bit_mul_3 = c16_m[15:8];  temp_8_bit_div_3 = c16_d[15:8]; end
                         {ONE,SEVEN}          :begin      temp_16_bit_mul_upper = c17_m; temp_16_bit_div_upper = c17_d;   temp_8_bit_mul_3 = c17_m[15:8];  temp_8_bit_div_3 = c17_d[15:8]; end
                         
                         
                         {TWO,ZERO}          :begin      temp_16_bit_mul_upper = c02_m; temp_16_bit_div_upper = c20_d;   temp_8_bit_mul_3 = c02_m[15:8];  temp_8_bit_div_3 = c20_d[15:8]; end
                         {TWO,ONE}           :begin      temp_16_bit_mul_upper = c12_m; temp_16_bit_div_upper = c21_d;   temp_8_bit_mul_3 = c12_m[15:8];  temp_8_bit_div_3 = c21_d[15:8]; end
                         {TWO,TWO}           :begin      temp_16_bit_mul_upper = c22_m; temp_16_bit_div_upper = c22_d;   temp_8_bit_mul_3 = c22_m[15:8];  temp_8_bit_div_3 = c22_d[15:8]; end
                         {TWO,THREE}         :begin      temp_16_bit_mul_upper = c23_m; temp_16_bit_div_upper = c23_d;   temp_8_bit_mul_3 = c23_m[15:8];  temp_8_bit_div_3 = c23_d[15:8]; end
                         {TWO,FOUR}          :begin      temp_16_bit_mul_upper = c24_m; temp_16_bit_div_upper = c24_d;   temp_8_bit_mul_3 = c24_m[15:8];  temp_8_bit_div_3 = c24_d[15:8]; end
                         {TWO,FIVE}          :begin      temp_16_bit_mul_upper = c25_m; temp_16_bit_div_upper = c25_d;   temp_8_bit_mul_3 = c25_m[15:8];  temp_8_bit_div_3 = c25_d[15:8]; end
                         {TWO,SIX}           :begin      temp_16_bit_mul_upper = c26_m; temp_16_bit_div_upper = c26_d;   temp_8_bit_mul_3 = c26_m[15:8];  temp_8_bit_div_3 = c26_d[15:8]; end
                         {TWO,SEVEN}         :begin      temp_16_bit_mul_upper = c27_m; temp_16_bit_div_upper = c27_d;   temp_8_bit_mul_3 = c27_m[15:8];  temp_8_bit_div_3 = c27_d[15:8]; end
                         
                         
                         
                         {THREE,ZERO}       :begin      temp_16_bit_mul_upper = c03_m; temp_16_bit_div_upper = c30_d;   temp_8_bit_mul_3 = c03_m[15:8];  temp_8_bit_div_3 = c30_d[15:8]; end
                         {THREE,ONE}        :begin      temp_16_bit_mul_upper = c13_m; temp_16_bit_div_upper = c31_d;   temp_8_bit_mul_3 = c13_m[15:8];  temp_8_bit_div_3 = c31_d[15:8]; end
                         {THREE,TWO}        :begin      temp_16_bit_mul_upper = c23_m; temp_16_bit_div_upper = c32_d;   temp_8_bit_mul_3 = c23_m[15:8];  temp_8_bit_div_3 = c32_d[15:8]; end
                         {THREE,THREE}      :begin      temp_16_bit_mul_upper = c33_m; temp_16_bit_div_upper = c33_d;   temp_8_bit_mul_3 = c33_m[15:8];  temp_8_bit_div_3 = c33_d[15:8]; end
                         {THREE,FOUR}       :begin      temp_16_bit_mul_upper = c34_m; temp_16_bit_div_upper = c34_d;   temp_8_bit_mul_3 = c34_m[15:8];  temp_8_bit_div_3 = c34_d[15:8]; end
                         {THREE,FIVE}       :begin      temp_16_bit_mul_upper = c35_m; temp_16_bit_div_upper = c35_d;   temp_8_bit_mul_3 = c35_m[15:8];  temp_8_bit_div_3 = c35_d[15:8]; end
                         {THREE,SIX}        :begin      temp_16_bit_mul_upper = c36_m; temp_16_bit_div_upper = c36_d;   temp_8_bit_mul_3 = c36_m[15:8];  temp_8_bit_div_3 = c36_d[15:8]; end
                         {THREE,SEVEN}      :begin      temp_16_bit_mul_upper = c37_m; temp_16_bit_div_upper = c37_d;   temp_8_bit_mul_3 = c37_m[15:8];  temp_8_bit_div_3 = c37_d[15:8]; end
                         
                         
                         
                         
                         
                         
                         {FOUR,ZERO}        :begin      temp_16_bit_mul_upper = c04_m; temp_16_bit_div_upper = c40_d;   temp_8_bit_mul_3 = c04_m[15:8];  temp_8_bit_div_3 = c40_d[15:8]; end
                         {FOUR,ONE}         :begin      temp_16_bit_mul_upper = c14_m; temp_16_bit_div_upper = c41_d;   temp_8_bit_mul_3 = c14_m[15:8];  temp_8_bit_div_3 = c41_d[15:8]; end
                         {FOUR,TWO}         :begin      temp_16_bit_mul_upper = c24_m; temp_16_bit_div_upper = c42_d;   temp_8_bit_mul_3 = c24_m[15:8];  temp_8_bit_div_3 = c42_d[15:8]; end
                         {FOUR,THREE}       :begin      temp_16_bit_mul_upper = c34_m; temp_16_bit_div_upper = c43_d;   temp_8_bit_mul_3 = c34_m[15:8];  temp_8_bit_div_3 = c43_d[15:8]; end
                         {FOUR,FOUR}        :begin      temp_16_bit_mul_upper = c44_m; temp_16_bit_div_upper = c44_d;   temp_8_bit_mul_3 = c44_m[15:8];  temp_8_bit_div_3 = c44_d[15:8]; end
                         {FOUR,FIVE}        :begin      temp_16_bit_mul_upper = c45_m; temp_16_bit_div_upper = c45_d;   temp_8_bit_mul_3 = c45_m[15:8];  temp_8_bit_div_3 = c45_d[15:8]; end
                         {FOUR,SIX}         :begin      temp_16_bit_mul_upper = c46_m; temp_16_bit_div_upper = c46_d;   temp_8_bit_mul_3 = c46_m[15:8];  temp_8_bit_div_3 = c46_d[15:8]; end
                         {FOUR,SEVEN}       :begin      temp_16_bit_mul_upper = c47_m; temp_16_bit_div_upper = c47_d;   temp_8_bit_mul_3 = c47_m[15:8];  temp_8_bit_div_3 = c47_d[15:8]; end
                         
                         
                         
                         {FIVE,ZERO}        :begin      temp_16_bit_mul_upper = c05_m; temp_16_bit_div_upper = c50_d;   temp_8_bit_mul_3 = c05_m[15:8];  temp_8_bit_div_3 = c50_d[15:8]; end
                         {FIVE,ONE}         :begin      temp_16_bit_mul_upper = c15_m; temp_16_bit_div_upper = c51_d;   temp_8_bit_mul_3 = c15_m[15:8];  temp_8_bit_div_3 = c51_d[15:8]; end
                         {FIVE,TWO}         :begin      temp_16_bit_mul_upper = c25_m; temp_16_bit_div_upper = c52_d;   temp_8_bit_mul_3 = c25_m[15:8];  temp_8_bit_div_3 = c52_d[15:8]; end
                         {FIVE,THREE}       :begin      temp_16_bit_mul_upper = c35_m; temp_16_bit_div_upper = c53_d;   temp_8_bit_mul_3 = c35_m[15:8];  temp_8_bit_div_3 = c53_d[15:8]; end
                         {FIVE,FOUR}        :begin      temp_16_bit_mul_upper = c45_m; temp_16_bit_div_upper = c54_d;   temp_8_bit_mul_3 = c45_m[15:8];  temp_8_bit_div_3 = c54_d[15:8]; end
                         {FIVE,FIVE}        :begin      temp_16_bit_mul_upper = c55_m; temp_16_bit_div_upper = c55_d;   temp_8_bit_mul_3 = c55_m[15:8];  temp_8_bit_div_3 = c55_d[15:8]; end
                         {FIVE,SIX}         :begin      temp_16_bit_mul_upper = c56_m; temp_16_bit_div_upper = c56_d;   temp_8_bit_mul_3 = c56_m[15:8];  temp_8_bit_div_3 = c56_d[15:8]; end
                         {FIVE,SEVEN}       :begin      temp_16_bit_mul_upper = c57_m; temp_16_bit_div_upper = c57_d;   temp_8_bit_mul_3 = c57_m[15:8];  temp_8_bit_div_3 = c57_d[15:8]; end
                         
                         
                         
                         
                         {SIX,ZERO}         :begin      temp_16_bit_mul_upper = c06_m; temp_16_bit_div_upper = c60_d;   temp_8_bit_mul_3 = c06_m[15:8];  temp_8_bit_div_3 = c60_d[15:8]; end
                         {SIX,ONE}          :begin      temp_16_bit_mul_upper = c16_m; temp_16_bit_div_upper = c61_d;   temp_8_bit_mul_3 = c16_m[15:8];  temp_8_bit_div_3 = c61_d[15:8]; end
                         {SIX,TWO}          :begin      temp_16_bit_mul_upper = c26_m; temp_16_bit_div_upper = c62_d;   temp_8_bit_mul_3 = c26_m[15:8];  temp_8_bit_div_3 = c62_d[15:8]; end
                         {SIX,THREE}        :begin      temp_16_bit_mul_upper = c36_m; temp_16_bit_div_upper = c63_d;   temp_8_bit_mul_3 = c36_m[15:8];  temp_8_bit_div_3 = c63_d[15:8]; end
                         {SIX,FOUR}         :begin      temp_16_bit_mul_upper = c46_m; temp_16_bit_div_upper = c64_d;   temp_8_bit_mul_3 = c46_m[15:8];  temp_8_bit_div_3 = c64_d[15:8]; end
                         {SIX,FIVE}         :begin      temp_16_bit_mul_upper = c56_m; temp_16_bit_div_upper = c65_d;   temp_8_bit_mul_3 = c56_m[15:8];  temp_8_bit_div_3 = c65_d[15:8]; end
                         {SIX,SIX}          :begin      temp_16_bit_mul_upper = c66_m; temp_16_bit_div_upper = c66_d;   temp_8_bit_mul_3 = c66_m[15:8];  temp_8_bit_div_3 = c66_d[15:8]; end
                         {SIX,SEVEN}        :begin      temp_16_bit_mul_upper = c67_m; temp_16_bit_div_upper = c67_d;   temp_8_bit_mul_3 = c67_m[15:8];  temp_8_bit_div_3 = c67_d[15:8]; end
                         
                         
                         
                         
                         {SEVEN,ZERO}       :begin      temp_16_bit_mul_upper = c07_m; temp_16_bit_div_upper = c70_d;   temp_8_bit_mul_3 = c07_m[15:8];  temp_8_bit_div_3 = c70_d[15:8]; end
                         {SEVEN,ONE}        :begin      temp_16_bit_mul_upper = c17_m; temp_16_bit_div_upper = c71_d;   temp_8_bit_mul_3 = c17_m[15:8];  temp_8_bit_div_3 = c71_d[15:8]; end
                         {SEVEN,TWO}        :begin      temp_16_bit_mul_upper = c27_m; temp_16_bit_div_upper = c72_d;   temp_8_bit_mul_3 = c27_m[15:8];  temp_8_bit_div_3 = c72_d[15:8]; end
                         {SEVEN,THREE}      :begin      temp_16_bit_mul_upper = c37_m; temp_16_bit_div_upper = c73_d;   temp_8_bit_mul_3 = c37_m[15:8];  temp_8_bit_div_3 = c73_d[15:8]; end
                         {SEVEN,FOUR}       :begin      temp_16_bit_mul_upper = c47_m; temp_16_bit_div_upper = c74_d;   temp_8_bit_mul_3 = c47_m[15:8];  temp_8_bit_div_3 = c74_d[15:8]; end
                         {SEVEN,FIVE}       :begin      temp_16_bit_mul_upper = c57_m; temp_16_bit_div_upper = c75_d;   temp_8_bit_mul_3 = c57_m[15:8];  temp_8_bit_div_3 = c75_d[15:8]; end
                         {SEVEN,SIX}        :begin      temp_16_bit_mul_upper = c67_m; temp_16_bit_div_upper = c76_d;   temp_8_bit_mul_3 = c67_m[15:8];  temp_8_bit_div_3 = c76_d[15:8]; end
                         {SEVEN,SEVEN}      :begin      temp_16_bit_mul_upper = c77_m; temp_16_bit_div_upper = c77_d;   temp_8_bit_mul_3 = c77_m[15:8];  temp_8_bit_div_3 = c77_d[15:8]; end

                     
                        endcase
                case({frac_a_pos_2,frac_b_pos_2})
                {ZERO,ZERO}          :begin        temp_8_bit_mul_2 = c00_m[15:8];  temp_8_bit_div_2 = c00_d[15:8]; end
                {ZERO,ONE}           :begin        temp_8_bit_mul_2 = c01_m[15:8];    temp_8_bit_div_2 = c01_d[15:8]; end
                {ZERO,TWO}           :begin        temp_8_bit_mul_2 = c02_m[15:8];  temp_8_bit_div_2 = c02_d[15:8]; end
                {ZERO,THREE}         :begin        temp_8_bit_mul_2 = c03_m[15:8];  temp_8_bit_div_2 = c03_d[15:8]; end
                {ZERO,FOUR}          :begin        temp_8_bit_mul_2 = c04_m[15:8];  temp_8_bit_div_2 = c04_d[15:8]; end
                {ZERO,FIVE}          :begin        temp_8_bit_mul_2 = c05_m[15:8];  temp_8_bit_div_2 = c05_d[15:8]; end
                {ZERO,SIX}           :begin        temp_8_bit_mul_2 = c06_m[15:8];  temp_8_bit_div_2 = c06_d[15:8]; end
                {ZERO,SEVEN}         :begin        temp_8_bit_mul_2 = c07_m[15:8];  temp_8_bit_div_2 = c07_d[15:8]; end
                
                
                {ONE,ZERO}           :begin        temp_8_bit_mul_2 = c01_m[15:8];  temp_8_bit_div_2 = c10_d[15:8]; end
                {ONE,ONE}            :begin        temp_8_bit_mul_2 = c11_m[15:8];  temp_8_bit_div_2 = c11_d[15:8]; end
                {ONE,TWO}            :begin        temp_8_bit_mul_2 = c12_m[15:8];  temp_8_bit_div_2 = c12_d[15:8]; end
                {ONE,THREE}          :begin        temp_8_bit_mul_2 = c13_m[15:8];  temp_8_bit_div_2 = c13_d[15:8]; end
                {ONE,FOUR}           :begin        temp_8_bit_mul_2 = c14_m[15:8];  temp_8_bit_div_2 = c14_d[15:8]; end
                {ONE,FIVE}           :begin        temp_8_bit_mul_2 = c15_m[15:8];  temp_8_bit_div_2 = c15_d[15:8]; end
                {ONE,SIX}            :begin        temp_8_bit_mul_2 = c16_m[15:8];  temp_8_bit_div_2 = c16_d[15:8]; end
                {ONE,SEVEN}          :begin        temp_8_bit_mul_2 = c17_m[15:8];  temp_8_bit_div_2 = c17_d[15:8]; end
                
                
                {TWO,ZERO}          :begin        temp_8_bit_mul_2 = c02_m[15:8];  temp_8_bit_div_2 = c20_d[15:8]; end
                {TWO,ONE}           :begin        temp_8_bit_mul_2 = c12_m[15:8];  temp_8_bit_div_2 = c21_d[15:8]; end
                {TWO,TWO}           :begin        temp_8_bit_mul_2 = c22_m[15:8];  temp_8_bit_div_2 = c22_d[15:8]; end
                {TWO,THREE}         :begin        temp_8_bit_mul_2 = c23_m[15:8];  temp_8_bit_div_2 = c23_d[15:8]; end
                {TWO,FOUR}          :begin        temp_8_bit_mul_2 = c24_m[15:8];  temp_8_bit_div_2 = c24_d[15:8]; end
                {TWO,FIVE}          :begin        temp_8_bit_mul_2 = c25_m[15:8];  temp_8_bit_div_2 = c25_d[15:8]; end
                {TWO,SIX}           :begin        temp_8_bit_mul_2 = c26_m[15:8];  temp_8_bit_div_2 = c26_d[15:8]; end
                {TWO,SEVEN}         :begin        temp_8_bit_mul_2 = c27_m[15:8];  temp_8_bit_div_2 = c27_d[15:8]; end
                
                
                
                {THREE,ZERO}       :begin        temp_8_bit_mul_2 = c03_m[15:8];  temp_8_bit_div_2 = c30_d[15:8]; end
                {THREE,ONE}        :begin        temp_8_bit_mul_2 = c13_m[15:8];  temp_8_bit_div_2 = c31_d[15:8]; end
                {THREE,TWO}        :begin        temp_8_bit_mul_2 = c23_m[15:8];  temp_8_bit_div_2 = c32_d[15:8]; end
                {THREE,THREE}      :begin        temp_8_bit_mul_2 = c33_m[15:8];  temp_8_bit_div_2 = c33_d[15:8]; end
                {THREE,FOUR}       :begin        temp_8_bit_mul_2 = c34_m[15:8];  temp_8_bit_div_2 = c34_d[15:8]; end
                {THREE,FIVE}       :begin        temp_8_bit_mul_2 = c35_m[15:8];  temp_8_bit_div_2 = c35_d[15:8]; end
                {THREE,SIX}        :begin        temp_8_bit_mul_2 = c36_m[15:8];  temp_8_bit_div_2 = c36_d[15:8]; end
                {THREE,SEVEN}      :begin        temp_8_bit_mul_2 = c37_m[15:8];  temp_8_bit_div_2 = c37_d[15:8]; end
                
                
                
                
                
                
                {FOUR,ZERO}        :begin        temp_8_bit_mul_2 = c04_m[15:8];  temp_8_bit_div_2 = c40_d[15:8]; end
                {FOUR,ONE}         :begin        temp_8_bit_mul_2 = c14_m[15:8];  temp_8_bit_div_2 = c41_d[15:8]; end
                {FOUR,TWO}         :begin        temp_8_bit_mul_2 = c24_m[15:8];  temp_8_bit_div_2 = c42_d[15:8]; end
                {FOUR,THREE}       :begin        temp_8_bit_mul_2 = c34_m[15:8];  temp_8_bit_div_2 = c43_d[15:8]; end
                {FOUR,FOUR}        :begin        temp_8_bit_mul_2 = c44_m[15:8];  temp_8_bit_div_2 = c44_d[15:8]; end
                {FOUR,FIVE}        :begin        temp_8_bit_mul_2 = c45_m[15:8];  temp_8_bit_div_2 = c45_d[15:8]; end
                {FOUR,SIX}         :begin        temp_8_bit_mul_2 = c46_m[15:8];  temp_8_bit_div_2 = c46_d[15:8]; end
                {FOUR,SEVEN}       :begin        temp_8_bit_mul_2 = c47_m[15:8];  temp_8_bit_div_2 = c47_d[15:8]; end
                
                
                
                {FIVE,ZERO}        :begin        temp_8_bit_mul_2 = c05_m[15:8];  temp_8_bit_div_2 = c50_d[15:8]; end
                {FIVE,ONE}         :begin        temp_8_bit_mul_2 = c15_m[15:8];  temp_8_bit_div_2 = c51_d[15:8]; end
                {FIVE,TWO}         :begin        temp_8_bit_mul_2 = c25_m[15:8];  temp_8_bit_div_2 = c52_d[15:8]; end
                {FIVE,THREE}       :begin        temp_8_bit_mul_2 = c35_m[15:8];  temp_8_bit_div_2 = c53_d[15:8]; end
                {FIVE,FOUR}        :begin        temp_8_bit_mul_2 = c45_m[15:8];  temp_8_bit_div_2 = c54_d[15:8]; end
                {FIVE,FIVE}        :begin        temp_8_bit_mul_2 = c55_m[15:8];  temp_8_bit_div_2 = c55_d[15:8]; end
                {FIVE,SIX}         :begin        temp_8_bit_mul_2 = c56_m[15:8];  temp_8_bit_div_2 = c56_d[15:8]; end
                {FIVE,SEVEN}       :begin        temp_8_bit_mul_2 = c57_m[15:8];  temp_8_bit_div_2 = c57_d[15:8]; end
                
                
                
                
                {SIX,ZERO}         :begin        temp_8_bit_mul_2 = c06_m[15:8];  temp_8_bit_div_2 = c60_d[15:8]; end
                {SIX,ONE}          :begin        temp_8_bit_mul_2 = c16_m[15:8];  temp_8_bit_div_2 = c61_d[15:8]; end
                {SIX,TWO}          :begin        temp_8_bit_mul_2 = c26_m[15:8];  temp_8_bit_div_2 = c62_d[15:8]; end
                {SIX,THREE}        :begin        temp_8_bit_mul_2 = c36_m[15:8];  temp_8_bit_div_2 = c63_d[15:8]; end
                {SIX,FOUR}         :begin        temp_8_bit_mul_2 = c46_m[15:8];  temp_8_bit_div_2 = c64_d[15:8]; end
                {SIX,FIVE}         :begin        temp_8_bit_mul_2 = c56_m[15:8];  temp_8_bit_div_2 = c65_d[15:8]; end
                {SIX,SIX}          :begin        temp_8_bit_mul_2 = c66_m[15:8];  temp_8_bit_div_2 = c66_d[15:8]; end
                {SIX,SEVEN}        :begin        temp_8_bit_mul_2 = c67_m[15:8];  temp_8_bit_div_2 = c67_d[15:8]; end
                
                
                
                
                {SEVEN,ZERO}       :begin        temp_8_bit_mul_2 = c07_m[15:8];  temp_8_bit_div_2 = c70_d[15:8]; end
                {SEVEN,ONE}        :begin        temp_8_bit_mul_2 = c17_m[15:8];  temp_8_bit_div_2 = c71_d[15:8]; end
                {SEVEN,TWO}        :begin        temp_8_bit_mul_2 = c27_m[15:8];  temp_8_bit_div_2 = c72_d[15:8]; end
                {SEVEN,THREE}      :begin        temp_8_bit_mul_2 = c37_m[15:8];  temp_8_bit_div_2 = c73_d[15:8]; end
                {SEVEN,FOUR}       :begin        temp_8_bit_mul_2 = c47_m[15:8];  temp_8_bit_div_2 = c74_d[15:8]; end
                {SEVEN,FIVE}       :begin        temp_8_bit_mul_2 = c57_m[15:8];  temp_8_bit_div_2 = c75_d[15:8]; end
                {SEVEN,SIX}        :begin        temp_8_bit_mul_2 = c67_m[15:8];  temp_8_bit_div_2 = c76_d[15:8]; end
                {SEVEN,SEVEN}      :begin        temp_8_bit_mul_2 = c77_m[15:8];  temp_8_bit_div_2 = c77_d[15:8]; end

                    
                               endcase        
                case({frac_a_lsb,frac_b_lsb})
                {ZERO,ZERO}          :begin      temp_16_bit_mul_lower = c00_m; temp_16_bit_div_lower = c00_d;   temp_8_bit_mul_1 = c00_m[15:8];  temp_8_bit_div_1 = c00_d[15:8]; end
                {ZERO,ONE}           :begin      temp_16_bit_mul_lower = c01_m; temp_16_bit_div_lower = c01_d;   temp_8_bit_mul_1 = c01_m[15:8];    temp_8_bit_div_1 = c01_d[15:8]; end
                {ZERO,TWO}           :begin      temp_16_bit_mul_lower = c02_m; temp_16_bit_div_lower = c02_d;   temp_8_bit_mul_1 = c02_m[15:8];  temp_8_bit_div_1 = c02_d[15:8]; end
                {ZERO,THREE}         :begin      temp_16_bit_mul_lower = c03_m; temp_16_bit_div_lower = c03_d;   temp_8_bit_mul_1 = c03_m[15:8];  temp_8_bit_div_1 = c03_d[15:8]; end
                {ZERO,FOUR}          :begin      temp_16_bit_mul_lower = c04_m; temp_16_bit_div_lower = c04_d;   temp_8_bit_mul_1 = c04_m[15:8];  temp_8_bit_div_1 = c04_d[15:8]; end
                {ZERO,FIVE}          :begin      temp_16_bit_mul_lower = c05_m; temp_16_bit_div_lower = c05_d;   temp_8_bit_mul_1 = c05_m[15:8];  temp_8_bit_div_1 = c05_d[15:8]; end
                {ZERO,SIX}           :begin      temp_16_bit_mul_lower = c06_m; temp_16_bit_div_lower = c06_d;   temp_8_bit_mul_1 = c06_m[15:8];  temp_8_bit_div_1 = c06_d[15:8]; end
                {ZERO,SEVEN}         :begin      temp_16_bit_mul_lower = c07_m; temp_16_bit_div_lower = c07_d;   temp_8_bit_mul_1 = c07_m[15:8];  temp_8_bit_div_1 = c07_d[15:8]; end
                
                
                {ONE,ZERO}           :begin      temp_16_bit_mul_lower = c01_m; temp_16_bit_div_lower = c10_d;   temp_8_bit_mul_1 = c01_m[15:8];  temp_8_bit_div_1 = c10_d[15:8]; end
                {ONE,ONE}            :begin      temp_16_bit_mul_lower = c11_m; temp_16_bit_div_lower = c11_d;   temp_8_bit_mul_1 = c11_m[15:8];  temp_8_bit_div_1 = c11_d[15:8]; end
                {ONE,TWO}            :begin      temp_16_bit_mul_lower = c12_m; temp_16_bit_div_lower = c12_d;   temp_8_bit_mul_1 = c12_m[15:8];  temp_8_bit_div_1 = c12_d[15:8]; end
                {ONE,THREE}          :begin      temp_16_bit_mul_lower = c13_m; temp_16_bit_div_lower = c13_d;   temp_8_bit_mul_1 = c13_m[15:8];  temp_8_bit_div_1 = c13_d[15:8]; end
                {ONE,FOUR}           :begin      temp_16_bit_mul_lower = c14_m; temp_16_bit_div_lower = c14_d;   temp_8_bit_mul_1 = c14_m[15:8];  temp_8_bit_div_1 = c14_d[15:8]; end
                {ONE,FIVE}           :begin      temp_16_bit_mul_lower = c15_m; temp_16_bit_div_lower = c15_d;   temp_8_bit_mul_1 = c15_m[15:8];  temp_8_bit_div_1 = c15_d[15:8]; end
                {ONE,SIX}            :begin      temp_16_bit_mul_lower = c16_m; temp_16_bit_div_lower = c16_d;   temp_8_bit_mul_1 = c16_m[15:8];  temp_8_bit_div_1 = c16_d[15:8]; end
                {ONE,SEVEN}          :begin      temp_16_bit_mul_lower = c17_m; temp_16_bit_div_lower = c17_d;   temp_8_bit_mul_1 = c17_m[15:8];  temp_8_bit_div_1 = c17_d[15:8]; end
                
                
                {TWO,ZERO}          :begin      temp_16_bit_mul_lower = c02_m; temp_16_bit_div_lower = c20_d;   temp_8_bit_mul_1 = c02_m[15:8];  temp_8_bit_div_1 = c20_d[15:8]; end
                {TWO,ONE}           :begin      temp_16_bit_mul_lower = c12_m; temp_16_bit_div_lower = c21_d;   temp_8_bit_mul_1 = c12_m[15:8];  temp_8_bit_div_1 = c21_d[15:8]; end
                {TWO,TWO}           :begin      temp_16_bit_mul_lower = c22_m; temp_16_bit_div_lower = c22_d;   temp_8_bit_mul_1 = c22_m[15:8];  temp_8_bit_div_1 = c22_d[15:8]; end
                {TWO,THREE}         :begin      temp_16_bit_mul_lower = c23_m; temp_16_bit_div_lower = c23_d;   temp_8_bit_mul_1 = c23_m[15:8];  temp_8_bit_div_1 = c23_d[15:8]; end
                {TWO,FOUR}          :begin      temp_16_bit_mul_lower = c24_m; temp_16_bit_div_lower = c24_d;   temp_8_bit_mul_1 = c24_m[15:8];  temp_8_bit_div_1 = c24_d[15:8]; end
                {TWO,FIVE}          :begin      temp_16_bit_mul_lower = c25_m; temp_16_bit_div_lower = c25_d;   temp_8_bit_mul_1 = c25_m[15:8];  temp_8_bit_div_1 = c25_d[15:8]; end
                {TWO,SIX}           :begin      temp_16_bit_mul_lower = c26_m; temp_16_bit_div_lower = c26_d;   temp_8_bit_mul_1 = c26_m[15:8];  temp_8_bit_div_1 = c26_d[15:8]; end
                {TWO,SEVEN}         :begin      temp_16_bit_mul_lower = c27_m; temp_16_bit_div_lower = c27_d;   temp_8_bit_mul_1 = c27_m[15:8];  temp_8_bit_div_1 = c27_d[15:8]; end
                
                
                
                {THREE,ZERO}       :begin      temp_16_bit_mul_lower = c03_m; temp_16_bit_div_lower = c30_d;   temp_8_bit_mul_1 = c03_m[15:8];  temp_8_bit_div_1 = c30_d[15:8]; end
                {THREE,ONE}        :begin      temp_16_bit_mul_lower = c13_m; temp_16_bit_div_lower = c31_d;   temp_8_bit_mul_1 = c13_m[15:8];  temp_8_bit_div_1 = c31_d[15:8]; end
                {THREE,TWO}        :begin      temp_16_bit_mul_lower = c23_m; temp_16_bit_div_lower = c32_d;   temp_8_bit_mul_1 = c23_m[15:8];  temp_8_bit_div_1 = c32_d[15:8]; end
                {THREE,THREE}      :begin      temp_16_bit_mul_lower = c33_m; temp_16_bit_div_lower = c33_d;   temp_8_bit_mul_1 = c33_m[15:8];  temp_8_bit_div_1 = c33_d[15:8]; end
                {THREE,FOUR}       :begin      temp_16_bit_mul_lower = c34_m; temp_16_bit_div_lower = c34_d;   temp_8_bit_mul_1 = c34_m[15:8];  temp_8_bit_div_1 = c34_d[15:8]; end
                {THREE,FIVE}       :begin      temp_16_bit_mul_lower = c35_m; temp_16_bit_div_lower = c35_d;   temp_8_bit_mul_1 = c35_m[15:8];  temp_8_bit_div_1 = c35_d[15:8]; end
                {THREE,SIX}        :begin      temp_16_bit_mul_lower = c36_m; temp_16_bit_div_lower = c36_d;   temp_8_bit_mul_1 = c36_m[15:8];  temp_8_bit_div_1 = c36_d[15:8]; end
                {THREE,SEVEN}      :begin      temp_16_bit_mul_lower = c37_m; temp_16_bit_div_lower = c37_d;   temp_8_bit_mul_1 = c37_m[15:8];  temp_8_bit_div_1 = c37_d[15:8]; end
                
                
                
                
                
                
                {FOUR,ZERO}        :begin      temp_16_bit_mul_lower = c04_m; temp_16_bit_div_lower = c40_d;   temp_8_bit_mul_1 = c04_m[15:8];  temp_8_bit_div_1 = c40_d[15:8]; end
                {FOUR,ONE}         :begin      temp_16_bit_mul_lower = c14_m; temp_16_bit_div_lower = c41_d;   temp_8_bit_mul_1 = c14_m[15:8];  temp_8_bit_div_1 = c41_d[15:8]; end
                {FOUR,TWO}         :begin      temp_16_bit_mul_lower = c24_m; temp_16_bit_div_lower = c42_d;   temp_8_bit_mul_1 = c24_m[15:8];  temp_8_bit_div_1 = c42_d[15:8]; end
                {FOUR,THREE}       :begin      temp_16_bit_mul_lower = c34_m; temp_16_bit_div_lower = c43_d;   temp_8_bit_mul_1 = c34_m[15:8];  temp_8_bit_div_1 = c43_d[15:8]; end
                {FOUR,FOUR}        :begin      temp_16_bit_mul_lower = c44_m; temp_16_bit_div_lower = c44_d;   temp_8_bit_mul_1 = c44_m[15:8];  temp_8_bit_div_1 = c44_d[15:8]; end
                {FOUR,FIVE}        :begin      temp_16_bit_mul_lower = c45_m; temp_16_bit_div_lower = c45_d;   temp_8_bit_mul_1 = c45_m[15:8];  temp_8_bit_div_1 = c45_d[15:8]; end
                {FOUR,SIX}         :begin      temp_16_bit_mul_lower = c46_m; temp_16_bit_div_lower = c46_d;   temp_8_bit_mul_1 = c46_m[15:8];  temp_8_bit_div_1 = c46_d[15:8]; end
                {FOUR,SEVEN}       :begin      temp_16_bit_mul_lower = c47_m; temp_16_bit_div_lower = c47_d;   temp_8_bit_mul_1 = c47_m[15:8];  temp_8_bit_div_1 = c47_d[15:8]; end
                
                
                
                {FIVE,ZERO}        :begin      temp_16_bit_mul_lower = c05_m; temp_16_bit_div_lower = c50_d;   temp_8_bit_mul_1 = c05_m[15:8];  temp_8_bit_div_1 = c50_d[15:8]; end
                {FIVE,ONE}         :begin      temp_16_bit_mul_lower = c15_m; temp_16_bit_div_lower = c51_d;   temp_8_bit_mul_1 = c15_m[15:8];  temp_8_bit_div_1 = c51_d[15:8]; end
                {FIVE,TWO}         :begin      temp_16_bit_mul_lower = c25_m; temp_16_bit_div_lower = c52_d;   temp_8_bit_mul_1 = c25_m[15:8];  temp_8_bit_div_1 = c52_d[15:8]; end
                {FIVE,THREE}       :begin      temp_16_bit_mul_lower = c35_m; temp_16_bit_div_lower = c53_d;   temp_8_bit_mul_1 = c35_m[15:8];  temp_8_bit_div_1 = c53_d[15:8]; end
                {FIVE,FOUR}        :begin      temp_16_bit_mul_lower = c45_m; temp_16_bit_div_lower = c54_d;   temp_8_bit_mul_1 = c45_m[15:8];  temp_8_bit_div_1 = c54_d[15:8]; end
                {FIVE,FIVE}        :begin      temp_16_bit_mul_lower = c55_m; temp_16_bit_div_lower = c55_d;   temp_8_bit_mul_1 = c55_m[15:8];  temp_8_bit_div_1 = c55_d[15:8]; end
                {FIVE,SIX}         :begin      temp_16_bit_mul_lower = c56_m; temp_16_bit_div_lower = c56_d;   temp_8_bit_mul_1 = c56_m[15:8];  temp_8_bit_div_1 = c56_d[15:8]; end
                {FIVE,SEVEN}       :begin      temp_16_bit_mul_lower = c57_m; temp_16_bit_div_lower = c57_d;   temp_8_bit_mul_1 = c57_m[15:8];  temp_8_bit_div_1 = c57_d[15:8]; end
                
                
                
                
                {SIX,ZERO}         :begin      temp_16_bit_mul_lower = c06_m; temp_16_bit_div_lower = c60_d;   temp_8_bit_mul_1 = c06_m[15:8];  temp_8_bit_div_1 = c60_d[15:8]; end
                {SIX,ONE}          :begin      temp_16_bit_mul_lower = c16_m; temp_16_bit_div_lower = c61_d;   temp_8_bit_mul_1 = c16_m[15:8];  temp_8_bit_div_1 = c61_d[15:8]; end
                {SIX,TWO}          :begin      temp_16_bit_mul_lower = c26_m; temp_16_bit_div_lower = c62_d;   temp_8_bit_mul_1 = c26_m[15:8];  temp_8_bit_div_1 = c62_d[15:8]; end
                {SIX,THREE}        :begin      temp_16_bit_mul_lower = c36_m; temp_16_bit_div_lower = c63_d;   temp_8_bit_mul_1 = c36_m[15:8];  temp_8_bit_div_1 = c63_d[15:8]; end
                {SIX,FOUR}         :begin      temp_16_bit_mul_lower = c46_m; temp_16_bit_div_lower = c64_d;   temp_8_bit_mul_1 = c46_m[15:8];  temp_8_bit_div_1 = c64_d[15:8]; end
                {SIX,FIVE}         :begin      temp_16_bit_mul_lower = c56_m; temp_16_bit_div_lower = c65_d;   temp_8_bit_mul_1 = c56_m[15:8];  temp_8_bit_div_1 = c65_d[15:8]; end
                {SIX,SIX}          :begin      temp_16_bit_mul_lower = c66_m; temp_16_bit_div_lower = c66_d;   temp_8_bit_mul_1 = c66_m[15:8];  temp_8_bit_div_1 = c66_d[15:8]; end
                {SIX,SEVEN}        :begin      temp_16_bit_mul_lower = c67_m; temp_16_bit_div_lower = c67_d;   temp_8_bit_mul_1 = c67_m[15:8];  temp_8_bit_div_1 = c67_d[15:8]; end
                
                
                
                
                {SEVEN,ZERO}       :begin      temp_16_bit_mul_lower = c07_m; temp_16_bit_div_lower = c70_d;   temp_8_bit_mul_1 = c07_m[15:8];  temp_8_bit_div_1 = c70_d[15:8]; end
                {SEVEN,ONE}        :begin      temp_16_bit_mul_lower = c17_m; temp_16_bit_div_lower = c71_d;   temp_8_bit_mul_1 = c17_m[15:8];  temp_8_bit_div_1 = c71_d[15:8]; end
                {SEVEN,TWO}        :begin      temp_16_bit_mul_lower = c27_m; temp_16_bit_div_lower = c72_d;   temp_8_bit_mul_1 = c27_m[15:8];  temp_8_bit_div_1 = c72_d[15:8]; end
                {SEVEN,THREE}      :begin      temp_16_bit_mul_lower = c37_m; temp_16_bit_div_lower = c73_d;   temp_8_bit_mul_1 = c37_m[15:8];  temp_8_bit_div_1 = c73_d[15:8]; end
                {SEVEN,FOUR}       :begin      temp_16_bit_mul_lower = c47_m; temp_16_bit_div_lower = c74_d;   temp_8_bit_mul_1 = c47_m[15:8];  temp_8_bit_div_1 = c74_d[15:8]; end
                {SEVEN,FIVE}       :begin      temp_16_bit_mul_lower = c57_m; temp_16_bit_div_lower = c75_d;   temp_8_bit_mul_1 = c57_m[15:8];  temp_8_bit_div_1 = c75_d[15:8]; end
                {SEVEN,SIX}        :begin      temp_16_bit_mul_lower = c67_m; temp_16_bit_div_lower = c76_d;   temp_8_bit_mul_1 = c67_m[15:8];  temp_8_bit_div_1 = c76_d[15:8]; end
                {SEVEN,SEVEN}      :begin      temp_16_bit_mul_lower = c77_m; temp_16_bit_div_lower = c77_d;   temp_8_bit_mul_1 = c77_m[15:8];  temp_8_bit_div_1 = c77_d[15:8]; end

                               
                         
                           
                               endcase
                case({frac_a_pos_0,frac_b_pos_0})
                {ZERO,ZERO}          :begin        temp_8_bit_mul_0 = c00_m[15:8];  temp_8_bit_div_0 = c00_d[15:8]; end
                {ZERO,ONE}           :begin        temp_8_bit_mul_0 = c01_m[15:8];    temp_8_bit_div_0 = c01_d[15:8]; end
                {ZERO,TWO}           :begin        temp_8_bit_mul_0 = c02_m[15:8];  temp_8_bit_div_0 = c02_d[15:8]; end
                {ZERO,THREE}         :begin        temp_8_bit_mul_0 = c03_m[15:8];  temp_8_bit_div_0 = c03_d[15:8]; end
                {ZERO,FOUR}          :begin        temp_8_bit_mul_0 = c04_m[15:8];  temp_8_bit_div_0 = c04_d[15:8]; end
                {ZERO,FIVE}          :begin        temp_8_bit_mul_0 = c05_m[15:8];  temp_8_bit_div_0 = c05_d[15:8]; end
                {ZERO,SIX}           :begin        temp_8_bit_mul_0 = c06_m[15:8];  temp_8_bit_div_0 = c06_d[15:8]; end
                {ZERO,SEVEN}         :begin        temp_8_bit_mul_0 = c07_m[15:8];  temp_8_bit_div_0 = c07_d[15:8]; end
                
                
                {ONE,ZERO}           :begin        temp_8_bit_mul_0 = c01_m[15:8];  temp_8_bit_div_0 = c10_d[15:8]; end
                {ONE,ONE}            :begin        temp_8_bit_mul_0 = c11_m[15:8];  temp_8_bit_div_0 = c11_d[15:8]; end
                {ONE,TWO}            :begin        temp_8_bit_mul_0 = c12_m[15:8];  temp_8_bit_div_0 = c12_d[15:8]; end
                {ONE,THREE}          :begin        temp_8_bit_mul_0 = c13_m[15:8];  temp_8_bit_div_0 = c13_d[15:8]; end
                {ONE,FOUR}           :begin        temp_8_bit_mul_0 = c14_m[15:8];  temp_8_bit_div_0 = c14_d[15:8]; end
                {ONE,FIVE}           :begin        temp_8_bit_mul_0 = c15_m[15:8];  temp_8_bit_div_0 = c15_d[15:8]; end
                {ONE,SIX}            :begin        temp_8_bit_mul_0 = c16_m[15:8];  temp_8_bit_div_0 = c16_d[15:8]; end
                {ONE,SEVEN}          :begin        temp_8_bit_mul_0 = c17_m[15:8];  temp_8_bit_div_0 = c17_d[15:8]; end
                
                
                {TWO,ZERO}          :begin        temp_8_bit_mul_0 = c02_m[15:8];  temp_8_bit_div_0 = c20_d[15:8]; end
                {TWO,ONE}           :begin        temp_8_bit_mul_0 = c12_m[15:8];  temp_8_bit_div_0 = c21_d[15:8]; end
                {TWO,TWO}           :begin        temp_8_bit_mul_0 = c22_m[15:8];  temp_8_bit_div_0 = c22_d[15:8]; end
                {TWO,THREE}         :begin        temp_8_bit_mul_0 = c23_m[15:8];  temp_8_bit_div_0 = c23_d[15:8]; end
                {TWO,FOUR}          :begin        temp_8_bit_mul_0 = c24_m[15:8];  temp_8_bit_div_0 = c24_d[15:8]; end
                {TWO,FIVE}          :begin        temp_8_bit_mul_0 = c25_m[15:8];  temp_8_bit_div_0 = c25_d[15:8]; end
                {TWO,SIX}           :begin        temp_8_bit_mul_0 = c26_m[15:8];  temp_8_bit_div_0 = c26_d[15:8]; end
                {TWO,SEVEN}         :begin        temp_8_bit_mul_0 = c27_m[15:8];  temp_8_bit_div_0 = c27_d[15:8]; end
                
                
                
                {THREE,ZERO}       :begin        temp_8_bit_mul_0 = c03_m[15:8];  temp_8_bit_div_0 = c30_d[15:8]; end
                {THREE,ONE}        :begin        temp_8_bit_mul_0 = c13_m[15:8];  temp_8_bit_div_0 = c31_d[15:8]; end
                {THREE,TWO}        :begin        temp_8_bit_mul_0 = c23_m[15:8];  temp_8_bit_div_0 = c32_d[15:8]; end
                {THREE,THREE}      :begin        temp_8_bit_mul_0 = c33_m[15:8];  temp_8_bit_div_0 = c33_d[15:8]; end
                {THREE,FOUR}       :begin        temp_8_bit_mul_0 = c34_m[15:8];  temp_8_bit_div_0 = c34_d[15:8]; end
                {THREE,FIVE}       :begin        temp_8_bit_mul_0 = c35_m[15:8];  temp_8_bit_div_0 = c35_d[15:8]; end
                {THREE,SIX}        :begin        temp_8_bit_mul_0 = c36_m[15:8];  temp_8_bit_div_0 = c36_d[15:8]; end
                {THREE,SEVEN}      :begin        temp_8_bit_mul_0 = c37_m[15:8];  temp_8_bit_div_0 = c37_d[15:8]; end
                
                
                
                
                
                
                {FOUR,ZERO}        :begin        temp_8_bit_mul_0 = c04_m[15:8];  temp_8_bit_div_0 = c40_d[15:8]; end
                {FOUR,ONE}         :begin        temp_8_bit_mul_0 = c14_m[15:8];  temp_8_bit_div_0 = c41_d[15:8]; end
                {FOUR,TWO}         :begin        temp_8_bit_mul_0 = c24_m[15:8];  temp_8_bit_div_0 = c42_d[15:8]; end
                {FOUR,THREE}       :begin        temp_8_bit_mul_0 = c34_m[15:8];  temp_8_bit_div_0 = c43_d[15:8]; end
                {FOUR,FOUR}        :begin        temp_8_bit_mul_0 = c44_m[15:8];  temp_8_bit_div_0 = c44_d[15:8]; end
                {FOUR,FIVE}        :begin        temp_8_bit_mul_0 = c45_m[15:8];  temp_8_bit_div_0 = c45_d[15:8]; end
                {FOUR,SIX}         :begin        temp_8_bit_mul_0 = c46_m[15:8];  temp_8_bit_div_0 = c46_d[15:8]; end
                {FOUR,SEVEN}       :begin        temp_8_bit_mul_0 = c47_m[15:8];  temp_8_bit_div_0 = c47_d[15:8]; end
                
                
                
                {FIVE,ZERO}        :begin        temp_8_bit_mul_0 = c05_m[15:8];  temp_8_bit_div_0 = c50_d[15:8]; end
                {FIVE,ONE}         :begin        temp_8_bit_mul_0 = c15_m[15:8];  temp_8_bit_div_0 = c51_d[15:8]; end
                {FIVE,TWO}         :begin        temp_8_bit_mul_0 = c25_m[15:8];  temp_8_bit_div_0 = c52_d[15:8]; end
                {FIVE,THREE}       :begin        temp_8_bit_mul_0 = c35_m[15:8];  temp_8_bit_div_0 = c53_d[15:8]; end
                {FIVE,FOUR}        :begin        temp_8_bit_mul_0 = c45_m[15:8];  temp_8_bit_div_0 = c54_d[15:8]; end
                {FIVE,FIVE}        :begin        temp_8_bit_mul_0 = c55_m[15:8];  temp_8_bit_div_0 = c55_d[15:8]; end
                {FIVE,SIX}         :begin        temp_8_bit_mul_0 = c56_m[15:8];  temp_8_bit_div_0 = c56_d[15:8]; end
                {FIVE,SEVEN}       :begin        temp_8_bit_mul_0 = c57_m[15:8];  temp_8_bit_div_0 = c57_d[15:8]; end
                
                
                
                
                {SIX,ZERO}         :begin        temp_8_bit_mul_0 = c06_m[15:8];  temp_8_bit_div_0 = c60_d[15:8]; end
                {SIX,ONE}          :begin        temp_8_bit_mul_0 = c16_m[15:8];  temp_8_bit_div_0 = c61_d[15:8]; end
                {SIX,TWO}          :begin        temp_8_bit_mul_0 = c26_m[15:8];  temp_8_bit_div_0 = c62_d[15:8]; end
                {SIX,THREE}        :begin        temp_8_bit_mul_0 = c36_m[15:8];  temp_8_bit_div_0 = c63_d[15:8]; end
                {SIX,FOUR}         :begin        temp_8_bit_mul_0 = c46_m[15:8];  temp_8_bit_div_0 = c64_d[15:8]; end
                {SIX,FIVE}         :begin        temp_8_bit_mul_0 = c56_m[15:8];  temp_8_bit_div_0 = c65_d[15:8]; end
                {SIX,SIX}          :begin        temp_8_bit_mul_0 = c66_m[15:8];  temp_8_bit_div_0 = c66_d[15:8]; end
                {SIX,SEVEN}        :begin        temp_8_bit_mul_0 = c67_m[15:8];  temp_8_bit_div_0 = c67_d[15:8]; end
                
                
                
                
                {SEVEN,ZERO}       :begin        temp_8_bit_mul_0 = c07_m[15:8];  temp_8_bit_div_0 = c70_d[15:8]; end
                {SEVEN,ONE}        :begin        temp_8_bit_mul_0 = c17_m[15:8];  temp_8_bit_div_0 = c71_d[15:8]; end
                {SEVEN,TWO}        :begin        temp_8_bit_mul_0 = c27_m[15:8];  temp_8_bit_div_0 = c72_d[15:8]; end
                {SEVEN,THREE}      :begin        temp_8_bit_mul_0 = c37_m[15:8];  temp_8_bit_div_0 = c73_d[15:8]; end
                {SEVEN,FOUR}       :begin        temp_8_bit_mul_0 = c47_m[15:8];  temp_8_bit_div_0 = c74_d[15:8]; end
                {SEVEN,FIVE}       :begin        temp_8_bit_mul_0 = c57_m[15:8];  temp_8_bit_div_0 = c75_d[15:8]; end
                {SEVEN,SIX}        :begin        temp_8_bit_mul_0 = c67_m[15:8];  temp_8_bit_div_0 = c76_d[15:8]; end
                {SEVEN,SEVEN}      :begin        temp_8_bit_mul_0 = c77_m[15:8];  temp_8_bit_div_0 = c77_d[15:8]; end
 
   
                               endcase                                 
                
                
                
                case(func) 
                    0 : error_coeff = {temp_16_bit_mul_upper, 16'd0};
                    1 : error_coeff = {temp_16_bit_div_upper, 16'd0};
                    2 : error_coeff = {temp_16_bit_mul_upper, temp_16_bit_mul_lower};
                    3 : error_coeff = {temp_16_bit_mul_upper, temp_16_bit_div_lower};
                    4 : error_coeff = {temp_16_bit_div_upper, temp_16_bit_div_lower};
                    5 : error_coeff = {temp_8_bit_mul_3, temp_8_bit_mul_2, temp_8_bit_mul_1, temp_8_bit_mul_0 };
                    6 : error_coeff = {temp_8_bit_mul_3, temp_8_bit_mul_2, temp_8_bit_mul_1, temp_8_bit_div_0 };
                    7 : error_coeff = {temp_8_bit_mul_3, temp_8_bit_mul_2, temp_8_bit_div_1, temp_8_bit_div_0 };
                    8 : error_coeff = {temp_8_bit_mul_3, temp_8_bit_div_2, temp_8_bit_div_1, temp_8_bit_div_0 };                    
                    9 : error_coeff = {temp_8_bit_div_3, temp_8_bit_div_2, temp_8_bit_div_1, temp_8_bit_div_0 };
                    
                  default            :   error_coeff = {32{1'b0}};
                endcase 
                        
                end
        
        endmodule