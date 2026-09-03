
module select_ec_8_mul_div      (mode,
                                frac_a,
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


        localparam c00_m=8'b00000000; localparam c01_m=8'b00000001; localparam c02_m=8'b00000001; localparam c03_m=8'b00000010; localparam c04_m=8'b00000010;
        localparam c05_m=8'b00000100; localparam c06_m=8'b00000100; localparam c07_m=8'b00000010;
    
        localparam c11_m=8'b00000011; localparam c12_m=8'b00000110; localparam c13_m=8'b00001001; localparam c14_m=8'b00001100; localparam c15_m=8'b00001000;
        localparam c16_m=8'b00001010; localparam c17_m=8'b00000011;
    
        localparam c22_m=8'b00001010; localparam c23_m=8'b00001111; localparam c24_m=8'b00010100; localparam c25_m=8'b00001110; localparam c26_m=8'b00001001;
        localparam c27_m=8'b00000011;
    
        localparam c33_m=8'b00010100; localparam c34_m=8'b00010000; localparam c35_m=8'b00001100; localparam c36_m=8'b00000111; localparam c37_m=8'b00000010;
    
        localparam c44_m=8'b00001101; localparam c45_m=8'b00001001; localparam c46_m=8'b00000101; localparam c47_m=8'b00000001;
        
        localparam c55_m=8'b00000110; localparam c56_m=8'b00000100; localparam c57_m=8'b00000001;
        
        localparam c66_m=8'b00000010; localparam c67_m=8'b00000000;
        
        localparam c77_m=8'b00000000;
        
        
        
        
        localparam c00_d=8'b00000000; localparam c01_d=8'b00001001; localparam c02_d=8'b00010000; localparam c03_d=8'b00010001; localparam c04_d=8'b00010010;
        localparam c05_d=8'b00010000; localparam c06_d=8'b00001001; localparam c07_d=8'b00000001;
        
        
    
        localparam c10_d=8'b00000000; localparam c11_d=8'b00000001; localparam c12_d=8'b00001000; localparam c13_d=8'b00001100; localparam c14_d=8'b00001101;
        localparam c15_d=8'b00001011; localparam c16_d=8'b00001000; localparam c17_d=8'b00000011;
        
     
           
        
        localparam c20_d=8'b00000001; localparam c21_d=8'b00000010; localparam c22_d=8'b00000001; localparam c23_d=8'b00000110; localparam c24_d=8'b00001000;
        localparam c25_d=8'b00001000; localparam c26_d=8'b00000101; localparam c27_d=8'b00000010;
        
      
     
     
        localparam c30_d=8'b00000011; localparam c31_d=8'b00000100; localparam c32_d=8'b00000011; localparam c33_d=8'b00000001; localparam c34_d=8'b00000100;
        localparam c35_d=8'b00000101; localparam c36_d=8'b00000100; localparam c37_d=8'b00000010;
        
        
        localparam c40_d=8'b00000010; localparam c41_d=8'b00000111; localparam c42_d=8'b00000111; localparam c43_d=8'b00000100; localparam c44_d=8'b00000001;
        localparam c45_d=8'b00000010; localparam c46_d=8'b00000011; localparam c47_d=8'b00000001;
        
        
     
        
        localparam c50_d=8'b00000100; localparam c51_d=8'b00001001; localparam c52_d=8'b00001011; localparam c53_d=8'b00001001; localparam c54_d=8'b00000110;
        localparam c55_d=8'b00000001; localparam c56_d=8'b00000001; localparam c57_d=8'b00000001;
        
        
        
        localparam c60_d=8'b00000101; localparam c61_d=8'b00001110; localparam c62_d=8'b00001110; localparam c63_d=8'b00001111; localparam c64_d=8'b00001011;
        localparam c65_d=8'b00000110; localparam c66_d=8'b00000001; localparam c67_d=8'b00000000;
        
        
        
        localparam c70_d=8'b00000110; localparam c71_d=8'b00001111; localparam c72_d=8'b00010100; localparam c73_d=8'b00010100; localparam c74_d=8'b00010001;
        localparam c75_d=8'b00001011; localparam c76_d=8'b00000110; localparam c77_d=8'b00000001;

    
    
    input            mode;
 
    input      [2:0]  frac_a;
    input      [2:0]  frac_b;
 
    output reg [7:0] error_coeff;


    always@(*)
        begin
               if (mode == 0 ) begin            
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
               
               else   begin 
                          case({frac_a,frac_b})
                                                     {ZERO,ZERO}       :   error_coeff = c00_d;
                         {ZERO,ONE}      :   error_coeff = c01_d;
                         {ZERO,TWO}     :   error_coeff = c02_d;
                         {ZERO,THREE}      :   error_coeff = c03_d;
                         {ZERO,FOUR}     :   error_coeff = c04_d;
                         {ZERO,FIVE}      :   error_coeff = c05_d;
                         {ZERO,SIX}      :   error_coeff = c06_d;
                         {ZERO,SEVEN}    :   error_coeff = c07_d;
             
                         {ONE,ZERO}      :   error_coeff = c10_d;
                         {ONE,ONE}     :   error_coeff = c11_d;
                         {ONE,TWO}    :   error_coeff = c12_d;
                         {ONE,THREE}     :   error_coeff = c13_d;
                         {ONE,FOUR}    :   error_coeff = c14_d;
                         {ONE,FIVE}     :   error_coeff = c15_d;
                         {ONE,SIX}     :   error_coeff = c16_d;
                         {ONE,SEVEN}   :   error_coeff = c17_d;
             
                         {TWO,ZERO}     :   error_coeff = c20_d;
                         {TWO,ONE}    :   error_coeff = c21_d;
                         {TWO,TWO}   :   error_coeff = c22_d;
                         {TWO,THREE}    :   error_coeff = c23_d;
                         {TWO,FOUR}   :   error_coeff = c24_d;
                         {TWO,FIVE}    :   error_coeff = c25_d;
                         {TWO,SIX}    :   error_coeff = c26_d;
                         {TWO,SEVEN}  :   error_coeff = c27_d;
             
                         {THREE,ZERO}      :   error_coeff = c30_d;
                         {THREE,ONE}     :   error_coeff = c31_d;
                         {THREE,TWO}    :   error_coeff = c32_d;
                         {THREE,THREE}     :   error_coeff = c33_d;
                         {THREE,FOUR}    :   error_coeff = c34_d;
                         {THREE,FIVE}     :   error_coeff = c35_d;
                         {THREE,SIX}     :   error_coeff = c36_d;
                         {THREE,SEVEN}   :   error_coeff = c37_d;
             
                         {FOUR,ZERO}     :   error_coeff = c40_d;
                         {FOUR,ONE}    :   error_coeff = c41_d;
                         {FOUR,TWO}   :   error_coeff = c42_d;
                         {FOUR,THREE}    :   error_coeff = c43_d;
                         {FOUR,FOUR}   :   error_coeff = c44_d;
                         {FOUR,FIVE}    :   error_coeff = c45_d;
                         {FOUR,SIX}    :   error_coeff = c46_d;
                         {FOUR,SEVEN}  :   error_coeff = c47_d;
             
                         {FIVE,ZERO}      :   error_coeff = c50_d;
                         {FIVE,ONE}     :   error_coeff = c51_d;
                         {FIVE,TWO}    :   error_coeff = c52_d;
                         {FIVE,THREE}     :   error_coeff = c53_d;
                         {FIVE,FOUR}    :   error_coeff = c54_d;
                         {FIVE,FIVE}     :   error_coeff = c55_d;
                         {FIVE,SIX}     :   error_coeff = c56_d;
                         {FIVE,SEVEN}   :   error_coeff = c57_d;
             
                         {SIX,ZERO}      :   error_coeff = c60_d;
                         {SIX,ONE}     :   error_coeff = c61_d;
                         {SIX,TWO}    :   error_coeff = c62_d;
                         {SIX,THREE}     :   error_coeff = c63_d;
                         {SIX,FOUR}    :   error_coeff = c64_d;
                         {SIX,FIVE}     :   error_coeff = c65_d;
                         {SIX,SIX}     :   error_coeff = c66_d;
                         {SIX,SEVEN}   :   error_coeff = c67_d;
             
                         {SEVEN,ZERO}    :   error_coeff = c70_d;
                         {SEVEN,ONE}   :   error_coeff = c71_d;
                         {SEVEN,TWO}  :   error_coeff = c72_d;
                         {SEVEN,THREE}   :   error_coeff = c73_d;
                         {SEVEN,FOUR}  :   error_coeff = c74_d;
                         {SEVEN,FIVE}   :   error_coeff = c75_d;
                         {SEVEN,SIX}   :   error_coeff = c76_d;
                         {SEVEN,SEVEN} :   error_coeff = c77_d;
                         
                         
                        default            :   error_coeff = {8{1'b0}};
                                 endcase
               end  
              
                
        end

endmodule
