module lod #(parameter N = 32,
             parameter lgN = 5
            )(mode,
              a,
              pos_3,
              pos_2,
              pos_1,
              pos_0 
              );
  
  
    `include "LOD_function.v" 
    input  [1:0]             mode;
    input  [N-1:0]           a;
    
    output reg [lgN-1:0]     pos_3;
    output reg [lgN-3:0]     pos_2;
    output reg [lgN-2:0]     pos_1;
    output reg [lgN-3:0]     pos_0;
 
    genvar 	       i;
   
    reg  [1:0] seg_location_lower;
    reg  [1:0] seg_location_upper;
    reg  [2:0] seg_location;
    
    
    
    reg  temo_4_bit_0;
    reg  temo_4_bit_1;
    reg  temo_4_bit_2;
    reg  temo_4_bit_3;
    
    
    reg  [1:0]  seg_location_8_bit_0;
    reg  [1:0]  seg_location_8_bit_1;
    reg  [1:0]  seg_location_8_bit_2;
    reg  [1:0]  seg_location_8_bit_3;
    
    
    reg [2:0]     temp_0_8_bit;
    reg [2:0]     temp_1_8_bit;
    reg [2:0]     temp_2_8_bit;
    reg [2:0]     temp_3_8_bit;
    
    reg [3:0]     temp_0_16_bit;
    reg [3:0]     temp_1_16_bit;
    
    
    reg [4:0]     temp_0_32_bit;
    
    
    reg seg_location_0;
    reg [3:0] temp_variable_0;
    reg or_op_temp_variable_upper_0;
    
    
    reg seg_location_1;
    reg [3:0] temp_variable_1;
    reg or_op_temp_variable_upper_1;
    
    
    reg seg_location_2;
    reg [3:0] temp_variable_2;
    reg or_op_temp_variable_upper_2;
    
    
    reg seg_location_3;
    reg [3:0] temp_variable_3;
    reg or_op_temp_variable_upper_3;
   
      generate 
      if(lgN==5) begin : lgN5
       wire [N/4 -1: 0] or_op;     
            

//        for (i=0; i<N/4; i=i+1) begin: segment
//                always @* begin
//                    or_op[i] =  a[(4*i)+3] | a[(4*i)+2] | a[(4*i)+1] | a[(4*i)+0]; 
//                end            
//            end                        
            
 
            
            
         always @* begin
                             
//          seg_location_0 =  or_op[1];
//          temp_variable_0 = a[(seg_location_0)*4+:4];
//          or_op_temp_variable_upper_0 = temp_variable_0[3]| temp_variable_0[2];
//          temp_0_8_bit = {seg_location_0,  (or_op_temp_variable_upper_0) ?{1'b1, temp_variable_0[3] } : {1'b0 , temp_variable_0[1]}};
          
          
//          seg_location_1 =  or_op[3];
//          temp_variable_1 = a[(seg_location_1)*4 +8 +:4];
//          or_op_temp_variable_upper_1 = temp_variable_1[3]| temp_variable_1[2];
//          temp_1_8_bit = {seg_location_1,  (or_op_temp_variable_upper_1) ?{1'b1, temp_variable_1[3] } : {1'b0 , temp_variable_1[1]}};
          
//          seg_location_2 =  or_op[5];
//          temp_variable_2 = a[(seg_location_2)*4+16 +:4];
//          or_op_temp_variable_upper_2 = temp_variable_2[3]| temp_variable_2[2];
//          temp_2_8_bit = {seg_location_2,  (or_op_temp_variable_upper_2) ?{1'b1, temp_variable_2[3] } : {1'b0 , temp_variable_2[1]}};
          
//          seg_location_3 =  or_op[7];
//          temp_variable_3 = a[(seg_location_3)*4 + 24 +:4];
//          or_op_temp_variable_upper_3 = temp_variable_3[3]| temp_variable_3[2];
//          temp_3_8_bit = {seg_location_3,  (or_op_temp_variable_upper_3) ?{1'b1, temp_variable_3[3] } : {1'b0 , temp_variable_3[1]}};
          

            temp_0_8_bit =  lod_pos_8_bit(a[7:0]);
            temp_1_8_bit =  lod_pos_8_bit(a[15:8]);
            temp_2_8_bit =  lod_pos_8_bit(a[23:16]);
            temp_3_8_bit =  lod_pos_8_bit(a[31:24]);
            
            
            temp_0_16_bit =  (temp_1_8_bit==3'b000  &&  a[8]  == 1'b0) ? temp_0_8_bit :  {1'b1, temp_1_8_bit};
            temp_1_16_bit =  (temp_3_8_bit==3'b000  &&  a[24] == 1'b0) ? temp_2_8_bit :  {1'b1, temp_3_8_bit};
            temp_0_32_bit = (temp_1_16_bit==4'b0000  && a[16] == 1'b0) ? temp_0_16_bit : {1'b1,temp_1_16_bit};   

              if (mode[0] == 1'b1) begin //32-bit
                pos_3 = temp_0_32_bit;
                
              end
              else if (mode[1] == 1'b1) begin //16-bit

                pos_1 =  temp_0_16_bit;
                pos_3 =  temp_1_16_bit;
                
              end 
              else begin //8-bit
                pos_0 = temp_0_8_bit;
                pos_1 = temp_1_8_bit;
                pos_2 = temp_2_8_bit;
                pos_3 = temp_3_8_bit;
              end 
            end
         end

 
        
        endgenerate  
    
    
    
 
    
//    generate 
//      if(lgN==5) begin : lgN5
//        reg [N/2 -1: 0] or_op;         

//        for (i=0; i<N/2; i=i+1) begin: segment
//                always @* begin
//                    or_op[i] =  a[(2*i)+1] | a[(2*i)+0]; 
//                end            
//            end                        
            
//         always @* begin
            
 
//              temo_4_bit_0 = or_op[3] | or_op[2]; 
//              seg_location_8_bit_0 =  temo_4_bit_0 ? {1'b1, or_op[3]} : {1'b0, or_op[1]};
                 
//              temo_4_bit_1 =  or_op[7] | or_op[6];  
//              seg_location_8_bit_1  =  temo_4_bit_1 ? {1'b1, or_op[7]} : {1'b0, or_op[5]}; 
              
              
//              temo_4_bit_2 = or_op[11] | or_op[10]; 
//              seg_location_8_bit_2 =  temo_4_bit_2 ? {1'b1, or_op[11]} : {1'b0, or_op[9]};
                 
//              temo_4_bit_3 =  or_op[15] | or_op[14];  
//              seg_location_8_bit_3  =  temo_4_bit_3 ?   {1'b1, or_op[15]} : {1'b0, or_op[13]}; 
              
              
              
//               temp_0_8_bit =  {seg_location_8_bit_0, a[(seg_location_8_bit_0 << 1) + 1]};
//               temp_1_8_bit =  {seg_location_8_bit_1, a[(seg_location_8_bit_1 << 1) + 7]};
//               temp_2_8_bit =  {seg_location_8_bit_2, a[(seg_location_8_bit_2 << 1) + 15]};
//               temp_3_8_bit =  {seg_location_8_bit_3, a[(seg_location_8_bit_3 << 1) + 23]};
 
               
//            temp_0_16_bit =  (temp_1_8_bit==3'b000  && a[8]  == 1'b0) ? temp_0_8_bit :  {1'b1, temp_1_8_bit};
//            temp_1_16_bit =  (temp_3_8_bit==3'b000  && a[24] == 1'b0) ? temp_2_8_bit :  {1'b1, temp_3_8_bit};
 
//            temp_0_32_bit = (temp_1_16_bit==4'b0000  && a[16] == 1'b0) ? temp_0_16_bit : {1'b1,temp_1_16_bit } ;   

//              if (mode  ==0) begin //32-bit
 
//                pos_3 = temp_0_32_bit;
                
//              end
//              else if (mode  == 3 ) begin //16-bit

//                pos_1 =  temp_0_16_bit;
//                pos_3 =  temp_1_16_bit;
                
//              end 
//              else begin //8-bit
//                pos_0 = temp_0_8_bit;
//                pos_1 = temp_1_8_bit;
//                pos_2 = temp_2_8_bit;
//                pos_3 = temp_3_8_bit;
//              end 
//            end
//         end

//        else begin
        
//        end
        
        
//        endgenerate
 
     
endmodule
