`timescale 1ns / 1ps // time-unit = 1 ns, precision = 1 ps

module set_frac_16_8 #(parameter N =16,
                 parameter lgN = 4
                )(mode,
                  a,
                  lod_pos_upper_half,
                  lod_pos_lower_half,
                  pos_2,
                  pos_0,
                  out
                  );

input           [1:0]         mode;
input       	[N-1:0]       a;
input       	[lgN-1:0]     lod_pos_upper_half;
input       	[lgN-2:0]     lod_pos_lower_half;
input       	[lgN-3:0]     pos_2;
input       	[lgN-3:0]     pos_0;

output reg      [N-1:0]     out;



reg        [2*N-1:0]      temp;
 
   always@(*) begin 
      if (mode[0] == 1'b1) begin // 16-bit
         temp = { a, {N-1{1'b0}}};
         out  = temp >> lod_pos_upper_half;    // out1  = a<< N- lod_pos_upper_half; 
      end 

      else if (mode[1] == 1'b1) begin //8-bit
            
         temp[2*N-1: N] = { a[N-1: N/2] , {N/2 -1 {1'b0}}};
         temp[N-1:0]    = { a[(N/2)-1:0], {N/2 -1 {1'b0}}};
         
         
         out[N-1: N/2]    = temp >> lod_pos_upper_half; //  
         out[(N/2)-1:0]   = temp >> lod_pos_lower_half; //  
      end
      
      else begin
      
         temp[2*N-1      : (3*N)/2] = { a[N-1      : 3*N/4] , {N/4 -1 {1'b0}}};
         temp[(3*N)/2 -1 : N] = { a[3*N/4 -1 : N/2]   , {N/4 -1 {1'b0}}};
         
         temp[N-1:(3*N)/4] = { a[N/2   -1 : N/4]   , {N/4 -1 {1'b0}}};
         temp[(3*N)/4 -1: 0 ] = { a[N/4   -1 : 0]     , {N/4 -1 {1'b0}}};  
         
         out[N-1: 3*N/4]    = temp >> lod_pos_upper_half; //  
         out[3*N/4-1:N/2]   = temp >> pos_2; //  
         
         out[N/2 -1: N/4]   = temp >> lod_pos_lower_half; //  
         out[(N/4)-1:0]     = temp >> pos_0; //  
      end
      
        
    end
endmodule



