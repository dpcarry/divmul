
module select_ec_16_8_mul_div  #(parameter N = 8)   
                                 (mode,
                                 func,
                                 frac_a,
                                 frac_b,
                                 frac_a_lsb,
                                 frac_b_lsb,
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
            input      [2:0]  func;
            input      [2:0]  frac_a;
            input      [2:0]  frac_b;
            input      [2:0]  frac_a_lsb;
            input      [2:0]  frac_b_lsb;
            output reg [N-1:0] error_coeff;
        
        
            always@(*)
                begin
                       if (mode == 0 && func[2] == 1'b0) begin            
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
                    
                        default            :   error_coeff = {13{1'b0}};
                        endcase
                       end
                       
                       else if (mode == 0 && func[2] ==  1'b1) begin 
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
                                         endcase
                       end  
                       
                       
                       
                       else if (mode == 1 && func[1:0] == 2'b00) begin
                           case({frac_a, frac_b})
                    
                {ZERO,ZERO}          :   error_coeff[N-1:N/2] = c00_m[N-1:N/2];           
                {ZERO,ONE}           :   error_coeff[N-1:N/2] = c01_m[N-1:N/2];
                {ONE,ZERO}           :   error_coeff[N-1:N/2] = c01_m[N-1:N/2];
                {ZERO,TWO}           :   error_coeff[N-1:N/2] = c02_m[N-1:N/2];
                {TWO,ZERO}           :   error_coeff[N-1:N/2] = c02_m[N-1:N/2];
                {ZERO,THREE}         :   error_coeff[N-1:N/2] = c03_m[N-1:N/2];
                {THREE,ZERO}         :   error_coeff[N-1:N/2] = c03_m[N-1:N/2];
                {ZERO,FOUR}          :   error_coeff[N-1:N/2] = c04_m[N-1:N/2];
                {FOUR,ZERO}          :   error_coeff[N-1:N/2] = c04_m[N-1:N/2];
                {ZERO,FIVE}          :   error_coeff[N-1:N/2] = c05_m[N-1:N/2];
                {FIVE,ZERO}          :   error_coeff[N-1:N/2] = c05_m[N-1:N/2];
                {ZERO,SIX}           :   error_coeff[N-1:N/2] = c06_m[N-1:N/2];
                {SIX,ZERO}           :   error_coeff[N-1:N/2] = c06_m[N-1:N/2];
                {ZERO,SEVEN}         :   error_coeff[N-1:N/2] = c07_m[N-1:N/2];
                {SEVEN,ZERO}         :   error_coeff[N-1:N/2] = c07_m[N-1:N/2];
                
                {ONE,ONE}            :   error_coeff[N-1:N/2] = c11_m[N-1:N/2];
                {ONE,TWO}            :   error_coeff[N-1:N/2] = c12_m[N-1:N/2];
                {TWO,ONE}            :   error_coeff[N-1:N/2] = c12_m[N-1:N/2];
                {ONE,THREE}          :   error_coeff[N-1:N/2] = c13_m[N-1:N/2];
                {THREE,ONE}          :   error_coeff[N-1:N/2] = c13_m[N-1:N/2];
                {ONE,FOUR}           :   error_coeff[N-1:N/2] = c14_m[N-1:N/2];
                {FOUR,ONE}           :   error_coeff[N-1:N/2] = c14_m[N-1:N/2];
                {ONE,FIVE}           :   error_coeff[N-1:N/2] = c15_m[N-1:N/2];
                {FIVE,ONE}           :   error_coeff[N-1:N/2] = c15_m[N-1:N/2];
                {ONE,SIX}            :   error_coeff[N-1:N/2] = c16_m[N-1:N/2];
                {SIX,ONE}            :   error_coeff[N-1:N/2] = c16_m[N-1:N/2];
                {ONE,SEVEN}          :   error_coeff[N-1:N/2] = c17_m[N-1:N/2];
                {SEVEN,ONE}          :    error_coeff[N-1:N/2] = c17_m[N-1:N/2];
                
                
                
                {TWO,TWO}           :   error_coeff[N-1:N/2] = c22_m[N-1:N/2];
                
                {TWO,THREE}         :   error_coeff[N-1:N/2] = c23_m[N-1:N/2];
                {THREE,TWO}         : error_coeff[N-1:N/2] = c23_m[N-1:N/2];
                {TWO,FOUR}          :   error_coeff[N-1:N/2] = c24_m[N-1:N/2];
                {FOUR,TWO}          :   error_coeff[N-1:N/2] = c24_m[N-1:N/2];
                {TWO,FIVE}          :   error_coeff[N-1:N/2] = c25_m[N-1:N/2];
                {FIVE,TWO}          :   error_coeff[N-1:N/2] = c25_m[N-1:N/2];
                {TWO,SIX}           :   error_coeff[N-1:N/2] = c26_m[N-1:N/2];
                {SIX,TWO}           :   error_coeff[N-1:N/2] = c26_m[N-1:N/2];
                {TWO,SEVEN}         :   error_coeff[N-1:N/2] = c27_m[N-1:N/2];
                {SEVEN,TWO}         :   error_coeff[N-1:N/2] = c27_m[N-1:N/2];
                
                
                {THREE,THREE}      :   error_coeff[N-1:N/2] = c33_m[N-1:N/2];
                
                {THREE,FOUR}       :   error_coeff[N-1:N/2] = c34_m[N-1:N/2];
                {FOUR,THREE}       :   error_coeff[N-1:N/2] = c34_m[N-1:N/2];
                {THREE,FIVE}       :   error_coeff[N-1:N/2] = c35_m[N-1:N/2];
                {FIVE,THREE}       :   error_coeff[N-1:N/2] = c35_m[N-1:N/2];
                {THREE,SIX}        :   error_coeff[N-1:N/2] = c36_m[N-1:N/2];
                {SIX,THREE}        :   error_coeff[N-1:N/2] = c36_m[N-1:N/2];
                {THREE,SEVEN}      :   error_coeff[N-1:N/2] = c37_m[N-1:N/2];
                {SEVEN,THREE}      :   error_coeff[N-1:N/2] = c37_m[N-1:N/2];
                
                
                {FOUR,FOUR}        :   error_coeff[N-1:N/2] = c44_m[N-1:N/2];
                {FOUR,FIVE}        :   error_coeff[N-1:N/2] = c45_m[N-1:N/2];
                {FIVE,FOUR}        :   error_coeff[N-1:N/2] = c45_m[N-1:N/2];
                {FOUR,SIX}         :   error_coeff[N-1:N/2] = c46_m[N-1:N/2];
                {SIX,FOUR}         :   error_coeff[N-1:N/2] = c46_m[N-1:N/2];
                {FOUR,SEVEN}       :   error_coeff[N-1:N/2] = c47_m[N-1:N/2];
                {SEVEN,FOUR}       :   error_coeff[N-1:N/2] = c47_m[N-1:N/2];
                
                {FIVE,FIVE}        :   error_coeff[N-1:N/2] = c55_m[N-1:N/2];
                {FIVE,SIX}         :   error_coeff[N-1:N/2] = c56_m[N-1:N/2];
                {SIX,FIVE}         :   error_coeff[N-1:N/2] = c56_m[N-1:N/2];
                {FIVE,SEVEN}       :   error_coeff[N-1:N/2] = c57_m[N-1:N/2];
                {SEVEN,FIVE}       :   error_coeff[N-1:N/2] = c57_m[N-1:N/2];
                
                
                {SIX,SIX}         :   error_coeff[N-1:N/2] = c66_m[N-1:N/2];
                {SIX,SEVEN}       :   error_coeff[N-1:N/2] = c67_m[N-1:N/2];
                {SEVEN,SIX}       :   error_coeff[N-1:N/2] = c67_m[N-1:N/2];
                
                {SEVEN,SEVEN}               :   error_coeff[N-1:N/2] = c77_m[N-1:N/2];
                                        
                                
                    
                    
                    
                         default  :   error_coeff[12:N/2] = {5{1'b0}};
                         endcase
                           case({frac_a_lsb, frac_b_lsb})
                                      {ZERO,ZERO}        :   error_coeff[N/2 -1:0] = c00_m[N-1:N/2];           
               {ZERO,ONE}           :   error_coeff[N/2 -1:0] = c01_m[N-1:N/2];
               {ONE,ZERO}           :   error_coeff[N/2 -1:0] = c01_m[N-1:N/2];
               {ZERO,TWO}           :   error_coeff[N/2 -1:0] = c02_m[N-1:N/2];
               {TWO,ZERO}           :   error_coeff[N/2 -1:0] = c02_m[N-1:N/2];
               {ZERO,THREE}         :   error_coeff[N/2 -1:0] = c03_m[N-1:N/2];
               {THREE,ZERO}         :   error_coeff[N/2 -1:0] = c03_m[N-1:N/2];
               {ZERO,FOUR}          :   error_coeff[N/2 -1:0] = c04_m[N-1:N/2];
               {FOUR,ZERO}          :   error_coeff[N/2 -1:0] = c04_m[N-1:N/2];
               {ZERO,FIVE}          :   error_coeff[N/2 -1:0] = c05_m[N-1:N/2];
               {FIVE,ZERO}          :   error_coeff[N/2 -1:0] = c05_m[N-1:N/2];
               {ZERO,SIX}           :   error_coeff[N/2 -1:0] = c06_m[N-1:N/2];
               {SIX,ZERO}           :   error_coeff[N/2 -1:0] = c06_m[N-1:N/2];
               {ZERO,SEVEN}         :   error_coeff[N/2 -1:0] = c07_m[N-1:N/2];
               {SEVEN,ZERO}         :   error_coeff[N/2 -1:0] = c07_m[N-1:N/2];
         
                {ONE,ONE}           :   error_coeff[N/2 -1:0] = c11_m[N-1:N/2];
               {ONE,TWO}            :   error_coeff[N/2 -1:0] = c12_m[N-1:N/2];
               {TWO,ONE}            :   error_coeff[N/2 -1:0] = c12_m[N-1:N/2];
               {ONE,THREE}          :   error_coeff[N/2 -1:0] = c13_m[N-1:N/2];
               {THREE,ONE}          :   error_coeff[N/2 -1:0] = c13_m[N-1:N/2];
               {ONE,FOUR}           :   error_coeff[N/2 -1:0] = c14_m[N-1:N/2];
               {FOUR,ONE}           :   error_coeff[N/2 -1:0] = c14_m[N-1:N/2];
               {ONE,FIVE}           :   error_coeff[N/2 -1:0] = c15_m[N-1:N/2];
                {FIVE,ONE}          :   error_coeff[N/2 -1:0] = c15_m[N-1:N/2];
               {ONE,SIX}            :   error_coeff[N/2 -1:0] = c16_m[N-1:N/2];
                 {SIX,ONE}          :   error_coeff[N/2 -1:0] = c16_m[N-1:N/2];
               {ONE,SEVEN}          :   error_coeff[N/2 -1:0] = c17_m[N-1:N/2];
                {SEVEN,ONE}         :    error_coeff[N/2 -1:0] = c17_m[N-1:N/2];
         
         
         
               {TWO,TWO}           :   error_coeff[N/2 -1:0] = c22_m[N-1:N/2];
         
                {TWO,THREE}        :   error_coeff[N/2 -1:0] = c23_m[N-1:N/2];
                {THREE,TWO}        : error_coeff[N/2 -1:0] = c23_m[N-1:N/2];
               {TWO,FOUR}          :   error_coeff[N/2 -1:0] = c24_m[N-1:N/2];
               {FOUR,TWO}          :   error_coeff[N/2 -1:0] = c24_m[N-1:N/2];
               {TWO,FIVE}          :   error_coeff[N/2 -1:0] = c25_m[N-1:N/2];
                {FIVE,TWO}         :   error_coeff[N/2 -1:0] = c25_m[N-1:N/2];
               {TWO,SIX}           :   error_coeff[N/2 -1:0] = c26_m[N-1:N/2];
               {SIX,TWO}           :   error_coeff[N/2 -1:0] = c26_m[N-1:N/2];
               {TWO,SEVEN}         :   error_coeff[N/2 -1:0] = c27_m[N-1:N/2];
               {SEVEN,TWO}         :   error_coeff[N/2 -1:0] = c27_m[N-1:N/2];
         
         
               {THREE,THREE}     :   error_coeff[N/2 -1:0] = c33_m[N-1:N/2];
         
               {THREE,FOUR}      :   error_coeff[N/2 -1:0] = c34_m[N-1:N/2];
                {FOUR,THREE}     :   error_coeff[N/2 -1:0] = c34_m[N-1:N/2];
               {THREE,FIVE}      :   error_coeff[N/2 -1:0] = c35_m[N-1:N/2];
               {FIVE,THREE}      :   error_coeff[N/2 -1:0] = c35_m[N-1:N/2];
               {THREE,SIX}       :   error_coeff[N/2 -1:0] = c36_m[N-1:N/2];
               {SIX,THREE}       :   error_coeff[N/2 -1:0] = c36_m[N-1:N/2];
               {THREE,SEVEN}     :   error_coeff[N/2 -1:0] = c37_m[N-1:N/2];
               {SEVEN,THREE}     :   error_coeff[N/2 -1:0] = c37_m[N-1:N/2];
         
         
               {FOUR,FOUR}       :   error_coeff[N/2 -1:0] = c44_m[N-1:N/2];
               {FOUR,FIVE}       :   error_coeff[N/2 -1:0] = c45_m[N-1:N/2];
               {FIVE,FOUR}       :   error_coeff[N/2 -1:0] = c45_m[N-1:N/2];
               {FOUR,SIX}        :   error_coeff[N/2 -1:0] = c46_m[N-1:N/2];
               {SIX,FOUR}        :   error_coeff[N/2 -1:0] = c46_m[N-1:N/2];
               {FOUR,SEVEN}      :   error_coeff[N/2 -1:0] = c47_m[N-1:N/2];
               {SEVEN,FOUR}      :   error_coeff[N/2 -1:0] = c47_m[N-1:N/2];
         
               {FIVE,FIVE}       :   error_coeff[N/2 -1:0] = c55_m[N-1:N/2];
               {FIVE,SIX}        :   error_coeff[N/2 -1:0] = c56_m[N-1:N/2];
               {SIX,FIVE}        :   error_coeff[N/2 -1:0] = c56_m[N-1:N/2];
               {FIVE,SEVEN}      :   error_coeff[N/2 -1:0] = c57_m[N-1:N/2];
               {SEVEN,FIVE}      :   error_coeff[N/2 -1:0] = c57_m[N-1:N/2];
         
         
               {SIX,SIX}       :   error_coeff[N/2 -1:0] = c66_m[N-1:N/2];
               {SIX,SEVEN}     :   error_coeff[N/2 -1:0] = c67_m[N-1:N/2];
               {SEVEN,SIX}     :   error_coeff[N/2 -1:0] = c67_m[N-1:N/2];
         
               {SEVEN,SEVEN}                       :   error_coeff[N/2 -1:0] = c77_m[N-1:N/2];
               
                    
                          default                             :   error_coeff[N/2 -1:0] = {8{1'b0}};
                          endcase
                       end
                       
                       
                          else if (mode == 1 && (func[1:0] == 2'b01 || func[1:0] == 2'b10) ) begin
                                     case({frac_a, frac_b})
                                                           {ZERO,ZERO}          :   error_coeff[N-1:N/2] = c00_m[N-1:N/2];           
                                                                            {ZERO,ONE}           :   error_coeff[N-1:N/2] = c01_m[N-1:N/2];
                                                                            {ONE,ZERO}           :   error_coeff[N-1:N/2] = c01_m[N-1:N/2];
                                                                            {ZERO,TWO}           :   error_coeff[N-1:N/2] = c02_m[N-1:N/2];
                                                                            {TWO,ZERO}           :   error_coeff[N-1:N/2] = c02_m[N-1:N/2];
                                                                            {ZERO,THREE}         :   error_coeff[N-1:N/2] = c03_m[N-1:N/2];
                                                                            {THREE,ZERO}         :   error_coeff[N-1:N/2] = c03_m[N-1:N/2];
                                                                            {ZERO,FOUR}          :   error_coeff[N-1:N/2] = c04_m[N-1:N/2];
                                                                            {FOUR,ZERO}          :   error_coeff[N-1:N/2] = c04_m[N-1:N/2];
                                                                            {ZERO,FIVE}          :   error_coeff[N-1:N/2] = c05_m[N-1:N/2];
                                                                            {FIVE,ZERO}          :   error_coeff[N-1:N/2] = c05_m[N-1:N/2];
                                                                            {ZERO,SIX}           :   error_coeff[N-1:N/2] = c06_m[N-1:N/2];
                                                                            {SIX,ZERO}           :   error_coeff[N-1:N/2] = c06_m[N-1:N/2];
                                                                            {ZERO,SEVEN}         :   error_coeff[N-1:N/2] = c07_m[N-1:N/2];
                                                                            {SEVEN,ZERO}         :   error_coeff[N-1:N/2] = c07_m[N-1:N/2];
                                                                
                                                                            {ONE,ONE}           :   error_coeff[N-1:N/2] = c11_m[N-1:N/2];
                                                                            {ONE,TWO}            :   error_coeff[N-1:N/2] = c12_m[N-1:N/2];
                                                                            {TWO,ONE}            :   error_coeff[N-1:N/2] = c12_m[N-1:N/2];
                                                                            {ONE,THREE}          :   error_coeff[N-1:N/2] = c13_m[N-1:N/2];
                                                                            {THREE,ONE}          :   error_coeff[N-1:N/2] = c13_m[N-1:N/2];
                                                                            {ONE,FOUR}           :   error_coeff[N-1:N/2] = c14_m[N-1:N/2];
                                                                            {FOUR,ONE}           :   error_coeff[N-1:N/2] = c14_m[N-1:N/2];
                                                                            {ONE,FIVE}           :   error_coeff[N-1:N/2] = c15_m[N-1:N/2];
                                                                            {FIVE,ONE}          :   error_coeff[N-1:N/2] = c15_m[N-1:N/2];
                                                                            {ONE,SIX}            :   error_coeff[N-1:N/2] = c16_m[N-1:N/2];
                                                                            {SIX,ONE}          :   error_coeff[N-1:N/2] = c16_m[N-1:N/2];
                                                                            {ONE,SEVEN}          :   error_coeff[N-1:N/2] = c17_m[N-1:N/2];
                                                                            {SEVEN,ONE}         :    error_coeff[N-1:N/2] = c17_m[N-1:N/2];
                                                                
                                                                     
                                                                
                                                                            {TWO,TWO}           :   error_coeff[N-1:N/2] = c22_m[N-1:N/2];
                                                                
                                                                            {TWO,THREE}        :   error_coeff[N-1:N/2] = c23_m[N-1:N/2];
                                                                            {THREE,TWO}        : error_coeff[N-1:N/2] = c23_m[N-1:N/2];
                                                                            {TWO,FOUR}          :   error_coeff[N-1:N/2] = c24_m[N-1:N/2];
                                                                            {FOUR,TWO}          :   error_coeff[N-1:N/2] = c24_m[N-1:N/2];
                                                                            {TWO,FIVE}          :   error_coeff[N-1:N/2] = c25_m[N-1:N/2];
                                                                            {FIVE,TWO}         :   error_coeff[N-1:N/2] = c25_m[N-1:N/2];
                                                                            {TWO,SIX}           :   error_coeff[N-1:N/2] = c26_m[N-1:N/2];
                                                                            {SIX,TWO}           :   error_coeff[N-1:N/2] = c26_m[N-1:N/2];
                                                                            {TWO,SEVEN}         :   error_coeff[N-1:N/2] = c27_m[N-1:N/2];
                                                                            {SEVEN,TWO}         :   error_coeff[N-1:N/2] = c27_m[N-1:N/2];
                                                                
                                                                
                                                                            {THREE,THREE}      :   error_coeff[N-1:N/2] = c33_m[N-1:N/2];
                                                                      
                                                                            {THREE,FOUR}      :   error_coeff[N-1:N/2] = c34_m[N-1:N/2];
                                                                            {FOUR,THREE}    :   error_coeff[N-1:N/2] = c34_m[N-1:N/2];
                                                                            {THREE,FIVE}       :   error_coeff[N-1:N/2] = c35_m[N-1:N/2];
                                                                            {FIVE,THREE}    :   error_coeff[N-1:N/2] = c35_m[N-1:N/2];
                                                                            {THREE,SIX}          :   error_coeff[N-1:N/2] = c36_m[N-1:N/2];
                                                                            {SIX,THREE}       :   error_coeff[N-1:N/2] = c36_m[N-1:N/2];
                                                                            {THREE,SEVEN}      :   error_coeff[N-1:N/2] = c37_m[N-1:N/2];
                                                                            {SEVEN,THREE}    :   error_coeff[N-1:N/2] = c37_m[N-1:N/2];
                                                                
                                                                
                                                                            {FOUR,FOUR}                         :   error_coeff[N-1:N/2] = c44_m[N-1:N/2];
                                                                            {FOUR,FIVE}        :   error_coeff[N-1:N/2] = c45_m[N-1:N/2];
                                                                            {FIVE,FOUR}      :   error_coeff[N-1:N/2] = c45_m[N-1:N/2];
                                                                            {FOUR,SIX}           :   error_coeff[N-1:N/2] = c46_m[N-1:N/2];
                                                                            {SIX,FOUR}        :   error_coeff[N-1:N/2] = c46_m[N-1:N/2];
                                                                            {FOUR,SEVEN}    :   error_coeff[N-1:N/2] = c47_m[N-1:N/2];
                                                                            {SEVEN,FOUR}   :   error_coeff[N-1:N/2] = c47_m[N-1:N/2];
                                                                
                                                                            {FIVE,FIVE}                         :   error_coeff[N-1:N/2] = c55_m[N-1:N/2];
                                                                            {FIVE,SIX}           :   error_coeff[N-1:N/2] = c56_m[N-1:N/2];
                                                                            {SIX,FIVE}        :   error_coeff[N-1:N/2] = c56_m[N-1:N/2];
                                                                            {FIVE,SEVEN}     :   error_coeff[N-1:N/2] = c57_m[N-1:N/2];
                                                                            {SEVEN,FIVE}   :   error_coeff[N-1:N/2] = c57_m[N-1:N/2];
                                                                
                                                                
                                                                            {SIX,SIX}                           :   error_coeff[N-1:N/2] = c66_m[N-1:N/2];
                                                                            {SIX,SEVEN}         :   error_coeff[N-1:N/2] = c67_m[N-1:N/2];
                                                                            {SEVEN,SIX}     :   error_coeff[N-1:N/2] = c67_m[N-1:N/2];
                                                                
                                                                            {SEVEN,SEVEN}                       :   error_coeff[N-1:N/2] = c77_m[N-1:N/2];
                                                                
                                    
                       
                      
                       
                       
                                   default                             :   error_coeff[12:N/2] = {5{1'b0}};
                                   endcase
                                     case({frac_a_lsb, frac_b_lsb})
                                                     {ZERO,ZERO}       :   error_coeff[N/2 -1:0] = c00_d[N-1:N/2];
                                                                                 {ZERO,ONE}      :   error_coeff[N/2 -1:0] = c01_d[N-1:N/2];
                                                                                 {ZERO,TWO}     :   error_coeff[N/2 -1:0] = c02_d[N-1:N/2];
                                                                                 {ZERO,THREE}      :   error_coeff[N/2 -1:0] = c03_d[N-1:N/2];
                                                                                 {ZERO,FOUR}     :   error_coeff[N/2 -1:0] = c04_d[N-1:N/2];
                                                                                 {ZERO,FIVE}      :   error_coeff[N/2 -1:0] = c05_d[N-1:N/2];
                                                                                 {ZERO,SIX}      :   error_coeff[N/2 -1:0] = c06_d[N-1:N/2];
                                                                                 {ZERO,SEVEN}    :   error_coeff[N/2 -1:0] = c07_d[N-1:N/2];
                                                                       
                                                                                 {ONE,ZERO}      :   error_coeff[N/2 -1:0] = c10_d[N-1:N/2];
                                                                                 {ONE,ONE}     :   error_coeff[N/2 -1:0] = c11_d[N-1:N/2];
                                                                                 {ONE,TWO}    :   error_coeff[N/2 -1:0] = c12_d[N-1:N/2];
                                                                                 {ONE,THREE}     :   error_coeff[N/2 -1:0] = c13_d[N-1:N/2];
                                                                                 {ONE,FOUR}    :   error_coeff[N/2 -1:0] = c14_d[N-1:N/2];
                                                                                 {ONE,FIVE}     :   error_coeff[N/2 -1:0] = c15_d[N-1:N/2];
                                                                                 {ONE,SIX}     :   error_coeff[N/2 -1:0] = c16_d[N-1:N/2];
                                                                                 {ONE,SEVEN}   :   error_coeff[N/2 -1:0] = c17_d[N-1:N/2];
                                                                       
                                                                                 {TWO,ZERO}     :   error_coeff[N/2 -1:0] = c20_d[N-1:N/2];
                                                                                 {TWO,ONE}    :   error_coeff[N/2 -1:0] = c21_d[N-1:N/2];
                                                                                 {TWO,TWO}   :   error_coeff[N/2 -1:0] = c22_d[N-1:N/2];
                                                                                 {TWO,THREE}    :   error_coeff[N/2 -1:0] = c23_d[N-1:N/2];
                                                                                 {TWO,FOUR}   :   error_coeff[N/2 -1:0] = c24_d[N-1:N/2];
                                                                                 {TWO,FIVE}    :   error_coeff[N/2 -1:0] = c25_d[N-1:N/2];
                                                                                 {TWO,SIX}    :   error_coeff[N/2 -1:0] = c26_d[N-1:N/2];
                                                                                 {TWO,SEVEN}  :   error_coeff[N/2 -1:0] = c27_d[N-1:N/2];
                                                                       
                                                                                 {THREE,ZERO}      :   error_coeff[N/2 -1:0] = c30_d[N-1:N/2];
                                                                                 {THREE,ONE}     :   error_coeff[N/2 -1:0] = c31_d[N-1:N/2];
                                                                                 {THREE,TWO}    :   error_coeff[N/2 -1:0] = c32_d[N-1:N/2];
                                                                                 {THREE,THREE}     :   error_coeff[N/2 -1:0] = c33_d[N-1:N/2];
                                                                                 {THREE,FOUR}    :   error_coeff[N/2 -1:0] = c34_d[N-1:N/2];
                                                                                 {THREE,FIVE}     :   error_coeff[N/2 -1:0] = c35_d[N-1:N/2];
                                                                                 {THREE,SIX}     :   error_coeff[N/2 -1:0] = c36_d[N-1:N/2];
                                                                                 {THREE,SEVEN}   :   error_coeff[N/2 -1:0] = c37_d[N-1:N/2];
                                                                       
                                                                                 {FOUR,ZERO}     :   error_coeff[N/2 -1:0] = c40_d[N-1:N/2];
                                                                                 {FOUR,ONE}    :   error_coeff[N/2 -1:0] = c41_d[N-1:N/2];
                                                                                 {FOUR,TWO}   :   error_coeff[N/2 -1:0] = c42_d[N-1:N/2];
                                                                                 {FOUR,THREE}    :   error_coeff[N/2 -1:0] = c43_d[N-1:N/2];
                                                                                 {FOUR,FOUR}   :   error_coeff[N/2 -1:0] = c44_d[N-1:N/2];
                                                                                 {FOUR,FIVE}    :   error_coeff[N/2 -1:0] = c45_d[N-1:N/2];
                                                                                 {FOUR,SIX}    :   error_coeff[N/2 -1:0] = c46_d[N-1:N/2];
                                                                                 {FOUR,SEVEN}  :   error_coeff[N/2 -1:0] = c47_d[N-1:N/2];
                                                                       
                                                                                 {FIVE,ZERO}      :   error_coeff[N/2 -1:0] = c50_d[N-1:N/2];
                                                                                 {FIVE,ONE}     :   error_coeff[N/2 -1:0] = c51_d[N-1:N/2];
                                                                                 {FIVE,TWO}    :   error_coeff[N/2 -1:0] = c52_d[N-1:N/2];
                                                                                 {FIVE,THREE}     :   error_coeff[N/2 -1:0] = c53_d[N-1:N/2];
                                                                                 {FIVE,FOUR}    :   error_coeff[N/2 -1:0] = c54_d[N-1:N/2];
                                                                                 {FIVE,FIVE}     :   error_coeff[N/2 -1:0] = c55_d[N-1:N/2];
                                                                                 {FIVE,SIX}     :   error_coeff[N/2 -1:0] = c56_d[N-1:N/2];
                                                                                 {FIVE,SEVEN}   :   error_coeff[N/2 -1:0] = c57_d[N-1:N/2];
                                                                       
                                                                                 {SIX,ZERO}      :   error_coeff[N/2 -1:0] = c60_d[N-1:N/2];
                                                                                 {SIX,ONE}     :   error_coeff[N/2 -1:0] = c61_d[N-1:N/2];
                                                                                 {SIX,TWO}    :   error_coeff[N/2 -1:0] = c62_d[N-1:N/2];
                                                                                 {SIX,THREE}     :   error_coeff[N/2 -1:0] = c63_d[N-1:N/2];
                                                                                 {SIX,FOUR}    :   error_coeff[N/2 -1:0] = c64_d[N-1:N/2];
                                                                                 {SIX,FIVE}     :   error_coeff[N/2 -1:0] = c65_d[N-1:N/2];
                                                                                 {SIX,SIX}     :   error_coeff[N/2 -1:0] = c66_d[N-1:N/2];
                                                                                 {SIX,SEVEN}   :   error_coeff[N/2 -1:0] = c67_d[N-1:N/2];
                                                                       
                                                                                 {SEVEN,ZERO}    :   error_coeff[N/2 -1:0] = c70_d[N-1:N/2];
                                                                                 {SEVEN,ONE}   :   error_coeff[N/2 -1:0] = c71_d[N-1:N/2];
                                                                                 {SEVEN,TWO}  :   error_coeff[N/2 -1:0] = c72_d[N-1:N/2];
                                                                                 {SEVEN,THREE}   :   error_coeff[N/2 -1:0] = c73_d[N-1:N/2];
                                                                                 {SEVEN,FOUR}  :   error_coeff[N/2 -1:0] = c74_d[N-1:N/2];
                                                                                 {SEVEN,FIVE}   :   error_coeff[N/2 -1:0] = c75_d[N-1:N/2];
                                                                                 {SEVEN,SIX}   :   error_coeff[N/2 -1:0] = c76_d[N-1:N/2];
                                                                                 {SEVEN,SEVEN} :   error_coeff[N/2 -1:0] = c77_d[N-1:N/2];
                              
                                    default                             :   error_coeff[N/2 -1:0] = {8{1'b0}};
                                    endcase
                           end
                                 
                                 
                
                    
                        else if (mode == 1 && func[1:0] == 2'b11) begin 
                                case({frac_a,frac_b})
                                                       {ZERO,ZERO}       :   error_coeff[N-1:N/2] = c00_d[N-1:N/2];
                         {ZERO,ONE}      :   error_coeff[N-1:N/2] = c01_d[N-1:N/2];
                         {ZERO,TWO}     :   error_coeff[N-1:N/2] = c02_d[N-1:N/2];
                         {ZERO,THREE}      :   error_coeff[N-1:N/2] = c03_d[N-1:N/2];
                         {ZERO,FOUR}     :   error_coeff[N-1:N/2] = c04_d[N-1:N/2];
                         {ZERO,FIVE}      :   error_coeff[N-1:N/2] = c05_d[N-1:N/2];
                         {ZERO,SIX}      :   error_coeff[N-1:N/2] = c06_d[N-1:N/2];
                         {ZERO,SEVEN}    :   error_coeff[N-1:N/2] = c07_d[N-1:N/2];
               
                         {ONE,ZERO}      :   error_coeff[N-1:N/2] = c10_d[N-1:N/2];
                         {ONE,ONE}     :   error_coeff[N-1:N/2] = c11_d[N-1:N/2];
                         {ONE,TWO}    :   error_coeff[N-1:N/2] = c12_d[N-1:N/2];
                         {ONE,THREE}     :   error_coeff[N-1:N/2] = c13_d[N-1:N/2];
                         {ONE,FOUR}    :   error_coeff[N-1:N/2] = c14_d[N-1:N/2];
                         {ONE,FIVE}     :   error_coeff[N-1:N/2] = c15_d[N-1:N/2];
                         {ONE,SIX}     :   error_coeff[N-1:N/2] = c16_d[N-1:N/2];
                         {ONE,SEVEN}   :   error_coeff[N-1:N/2] = c17_d[N-1:N/2];
               
                         {TWO,ZERO}     :   error_coeff[N-1:N/2] = c20_d[N-1:N/2];
                         {TWO,ONE}    :   error_coeff[N-1:N/2] = c21_d[N-1:N/2];
                         {TWO,TWO}   :   error_coeff[N-1:N/2] = c22_d[N-1:N/2];
                         {TWO,THREE}    :   error_coeff[N-1:N/2] = c23_d[N-1:N/2];
                         {TWO,FOUR}   :   error_coeff[N-1:N/2] = c24_d[N-1:N/2];
                         {TWO,FIVE}    :   error_coeff[N-1:N/2] = c25_d[N-1:N/2];
                         {TWO,SIX}    :   error_coeff[N-1:N/2] = c26_d[N-1:N/2];
                         {TWO,SEVEN}  :   error_coeff[N-1:N/2] = c27_d[N-1:N/2];
               
                         {THREE,ZERO}      :   error_coeff[N-1:N/2] = c30_d[N-1:N/2];
                         {THREE,ONE}     :   error_coeff[N-1:N/2] = c31_d[N-1:N/2];
                         {THREE,TWO}    :   error_coeff[N-1:N/2] = c32_d[N-1:N/2];
                         {THREE,THREE}     :   error_coeff[N-1:N/2] = c33_d[N-1:N/2];
                         {THREE,FOUR}    :   error_coeff[N-1:N/2] = c34_d[N-1:N/2];
                         {THREE,FIVE}     :   error_coeff[N-1:N/2] = c35_d[N-1:N/2];
                         {THREE,SIX}     :   error_coeff[N-1:N/2] = c36_d[N-1:N/2];
                         {THREE,SEVEN}   :   error_coeff[N-1:N/2] = c37_d[N-1:N/2];
               
                         {FOUR,ZERO}     :   error_coeff[N-1:N/2] = c40_d[N-1:N/2];
                         {FOUR,ONE}    :   error_coeff[N-1:N/2] = c41_d[N-1:N/2];
                         {FOUR,TWO}   :   error_coeff[N-1:N/2] = c42_d[N-1:N/2];
                         {FOUR,THREE}    :   error_coeff[N-1:N/2] = c43_d[N-1:N/2];
                         {FOUR,FOUR}   :   error_coeff[N-1:N/2] = c44_d[N-1:N/2];
                         {FOUR,FIVE}    :   error_coeff[N-1:N/2] = c45_d[N-1:N/2];
                         {FOUR,SIX}    :   error_coeff[N-1:N/2] = c46_d[N-1:N/2];
                         {FOUR,SEVEN}  :   error_coeff[N-1:N/2] = c47_d[N-1:N/2];
               
                         {FIVE,ZERO}      :   error_coeff[N-1:N/2] = c50_d[N-1:N/2];
                         {FIVE,ONE}     :   error_coeff[N-1:N/2] = c51_d[N-1:N/2];
                         {FIVE,TWO}    :   error_coeff[N-1:N/2] = c52_d[N-1:N/2];
                         {FIVE,THREE}     :   error_coeff[N-1:N/2] = c53_d[N-1:N/2];
                         {FIVE,FOUR}    :   error_coeff[N-1:N/2] = c54_d[N-1:N/2];
                         {FIVE,FIVE}     :   error_coeff[N-1:N/2] = c55_d[N-1:N/2];
                         {FIVE,SIX}     :   error_coeff[N-1:N/2] = c56_d[N-1:N/2];
                         {FIVE,SEVEN}   :   error_coeff[N-1:N/2] = c57_d[N-1:N/2];
               
                         {SIX,ZERO}      :   error_coeff[N-1:N/2] = c60_d[N-1:N/2];
                         {SIX,ONE}     :   error_coeff[N-1:N/2] = c61_d[N-1:N/2];
                         {SIX,TWO}    :   error_coeff[N-1:N/2] = c62_d[N-1:N/2];
                         {SIX,THREE}     :   error_coeff[N-1:N/2] = c63_d[N-1:N/2];
                         {SIX,FOUR}    :   error_coeff[N-1:N/2] = c64_d[N-1:N/2];
                         {SIX,FIVE}     :   error_coeff[N-1:N/2] = c65_d[N-1:N/2];
                         {SIX,SIX}     :   error_coeff[N-1:N/2] = c66_d[N-1:N/2];
                         {SIX,SEVEN}   :   error_coeff[N-1:N/2] = c67_d[N-1:N/2];
               
                         {SEVEN,ZERO}    :   error_coeff[N-1:N/2] = c70_d[N-1:N/2];
                         {SEVEN,ONE}   :   error_coeff[N-1:N/2] = c71_d[N-1:N/2];
                         {SEVEN,TWO}  :   error_coeff[N-1:N/2] = c72_d[N-1:N/2];
                         {SEVEN,THREE}   :   error_coeff[N-1:N/2] = c73_d[N-1:N/2];
                         {SEVEN,FOUR}  :   error_coeff[N-1:N/2] = c74_d[N-1:N/2];
                         {SEVEN,FIVE}   :   error_coeff[N-1:N/2] = c75_d[N-1:N/2];
                         {SEVEN,SIX}   :   error_coeff[N-1:N/2] = c76_d[N-1:N/2];
                         {SEVEN,SEVEN} :   error_coeff[N-1:N/2] = c77_d[N-1:N/2];
                                 endcase
                                case({frac_a_lsb,frac_b_lsb})
                                                     {ZERO,ZERO}       :   error_coeff[N/2 -1:0] = c00_d[N-1:N/2];
                                                      {ZERO,ONE}      :   error_coeff[N/2 -1:0] = c01_d[N-1:N/2];
                                                       {ZERO,TWO}     :   error_coeff[N/2 -1:0] = c02_d[N-1:N/2];
                                                        {ZERO,THREE}      :   error_coeff[N/2 -1:0] = c03_d[N-1:N/2];
                                                         {ZERO,FOUR}     :   error_coeff[N/2 -1:0] = c04_d[N-1:N/2];
                                                                {ZERO,FIVE}      :   error_coeff[N/2 -1:0] = c05_d[N-1:N/2];
                                                                {ZERO,SIX}      :   error_coeff[N/2 -1:0] = c06_d[N-1:N/2];
                                                                {ZERO,SEVEN}    :   error_coeff[N/2 -1:0] = c07_d[N-1:N/2];
                                                      
                                                                {ONE,ZERO}      :   error_coeff[N/2 -1:0] = c10_d[N-1:N/2];
                                                                {ONE,ONE}     :   error_coeff[N/2 -1:0] = c11_d[N-1:N/2];
                                                                {ONE,TWO}    :   error_coeff[N/2 -1:0] = c12_d[N-1:N/2];
                                                                {ONE,THREE}     :   error_coeff[N/2 -1:0] = c13_d[N-1:N/2];
                                                                {ONE,FOUR}    :   error_coeff[N/2 -1:0] = c14_d[N-1:N/2];
                                                                {ONE,FIVE}     :   error_coeff[N/2 -1:0] = c15_d[N-1:N/2];
                                                                {ONE,SIX}     :   error_coeff[N/2 -1:0] = c16_d[N-1:N/2];
                                                                {ONE,SEVEN}   :   error_coeff[N/2 -1:0] = c17_d[N-1:N/2];
                                                      
                                                                {TWO,ZERO}     :   error_coeff[N/2 -1:0] = c20_d[N-1:N/2];
                                                                {TWO,ONE}    :   error_coeff[N/2 -1:0] = c21_d[N-1:N/2];
                                                                {TWO,TWO}   :   error_coeff[N/2 -1:0] = c22_d[N-1:N/2];
                                                                {TWO,THREE}    :   error_coeff[N/2 -1:0] = c23_d[N-1:N/2];
                                                                {TWO,FOUR}   :   error_coeff[N/2 -1:0] = c24_d[N-1:N/2];
                                                                {TWO,FIVE}    :   error_coeff[N/2 -1:0] = c25_d[N-1:N/2];
                                                                {TWO,SIX}    :   error_coeff[N/2 -1:0] = c26_d[N-1:N/2];
                                                                {TWO,SEVEN}  :   error_coeff[N/2 -1:0] = c27_d[N-1:N/2];
                                                      
                                                                {THREE,ZERO}      :   error_coeff[N/2 -1:0] = c30_d[N-1:N/2];
                                                                {THREE,ONE}     :   error_coeff[N/2 -1:0] = c31_d[N-1:N/2];
                                                                {THREE,TWO}    :   error_coeff[N/2 -1:0] = c32_d[N-1:N/2];
                                                                {THREE,THREE}     :   error_coeff[N/2 -1:0] = c33_d[N-1:N/2];
                                                                {THREE,FOUR}    :   error_coeff[N/2 -1:0] = c34_d[N-1:N/2];
                                                                {THREE,FIVE}     :   error_coeff[N/2 -1:0] = c35_d[N-1:N/2];
                                                                {THREE,SIX}     :   error_coeff[N/2 -1:0] = c36_d[N-1:N/2];
                                                                {THREE,SEVEN}   :   error_coeff[N/2 -1:0] = c37_d[N-1:N/2];
                                                      
                                                                {FOUR,ZERO}     :   error_coeff[N/2 -1:0] = c40_d[N-1:N/2];
                                                                {FOUR,ONE}    :   error_coeff[N/2 -1:0] = c41_d[N-1:N/2];
                                                                {FOUR,TWO}   :   error_coeff[N/2 -1:0] = c42_d[N-1:N/2];
                                                                {FOUR,THREE}    :   error_coeff[N/2 -1:0] = c43_d[N-1:N/2];
                                                                {FOUR,FOUR}   :   error_coeff[N/2 -1:0] = c44_d[N-1:N/2];
                                                                {FOUR,FIVE}    :   error_coeff[N/2 -1:0] = c45_d[N-1:N/2];
                                                                {FOUR,SIX}    :   error_coeff[N/2 -1:0] = c46_d[N-1:N/2];
                                                                {FOUR,SEVEN}  :   error_coeff[N/2 -1:0] = c47_d[N-1:N/2];
                                                      
                                                                {FIVE,ZERO}      :   error_coeff[N/2 -1:0] = c50_d[N-1:N/2];
                                                                {FIVE,ONE}     :   error_coeff[N/2 -1:0] = c51_d[N-1:N/2];
                                                                {FIVE,TWO}    :   error_coeff[N/2 -1:0] = c52_d[N-1:N/2];
                                                                {FIVE,THREE}     :   error_coeff[N/2 -1:0] = c53_d[N-1:N/2];
                                                                {FIVE,FOUR}    :   error_coeff[N/2 -1:0] = c54_d[N-1:N/2];
                                                                {FIVE,FIVE}     :   error_coeff[N/2 -1:0] = c55_d[N-1:N/2];
                                                                {FIVE,SIX}     :   error_coeff[N/2 -1:0] = c56_d[N-1:N/2];
                                                                {FIVE,SEVEN}   :   error_coeff[N/2 -1:0] = c57_d[N-1:N/2];
                                                      
                                                                {SIX,ZERO}      :   error_coeff[N/2 -1:0] = c60_d[N-1:N/2];
                                                                {SIX,ONE}     :   error_coeff[N/2 -1:0] = c61_d[N-1:N/2];
                                                                {SIX,TWO}    :   error_coeff[N/2 -1:0] = c62_d[N-1:N/2];
                                                                {SIX,THREE}     :   error_coeff[N/2 -1:0] = c63_d[N-1:N/2];
                                                                {SIX,FOUR}    :   error_coeff[N/2 -1:0] = c64_d[N-1:N/2];
                                                                {SIX,FIVE}     :   error_coeff[N/2 -1:0] = c65_d[N-1:N/2];
                                                                {SIX,SIX}     :   error_coeff[N/2 -1:0] = c66_d[N-1:N/2];
                                                                {SIX,SEVEN}   :   error_coeff[N/2 -1:0] = c67_d[N-1:N/2];
                                                      
                                                                {SEVEN,ZERO}    :   error_coeff[N/2 -1:0] = c70_d[N-1:N/2];
                                                                {SEVEN,ONE}   :   error_coeff[N/2 -1:0] = c71_d[N-1:N/2];
                                                                {SEVEN,TWO}  :   error_coeff[N/2 -1:0] = c72_d[N-1:N/2];
                                                                {SEVEN,THREE}   :   error_coeff[N/2 -1:0] = c73_d[N-1:N/2];
                                                                {SEVEN,FOUR}  :   error_coeff[N/2 -1:0] = c74_d[N-1:N/2];
                                                                {SEVEN,FIVE}   :   error_coeff[N/2 -1:0] = c75_d[N-1:N/2];
                                                                {SEVEN,SIX}   :   error_coeff[N/2 -1:0] = c76_d[N-1:N/2];
                                                                {SEVEN,SEVEN} :   error_coeff[N/2 -1:0] = c77_d[N-1:N/2];
                            endcase 
                            end
                        
                end
        
        endmodule