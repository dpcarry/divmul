module lod #(parameter N = 16,
             parameter lgN = 4
            )(mode,
              a,
              pos,
              pos_lower
              );
  
  
//   `include "LOD_function.v" 
   input                    mode;
   input  [N-1:0]           a;
   output reg [lgN-1:0]      pos;
   output reg [lgN-2:0]      pos_lower;
   genvar 	       i;
   
   
   generate

      if(lgN==4)
       begin : lgN4
            reg         segment_upper_half_or_op_result;
            reg         operand_LO_segment_or_op_result;
            reg         operand_LO_segment_or_op_result_lower;
            
            wire [lgN-1: 0] or_op;
            reg  [1:0] seg_location;
            reg  [3:0] temp_var;
            reg  [3:0] temp_var_lower;
            
            reg  seg_location_lower;
            wire zero_flag;
            
//            for(i=0;i<lgN;i=i+1)
//                begin :segments
//                    always @* begin
//                        or_op[i] = a[(4*i)+ 3] | a[(4*i)+2] | a[(4*i)+1] | a[(4*i)+0];
//                    end
//            end
 
     
                 for (i = 0; i < lgN; i = i + 1) 
                    begin : segments
                         LUT6_2 #(
                        .INIT(64'h000000000000fffe) // Specify LUT Contents         
                        ) LUT6_2_inst (
                        .O6(), // 1-bit LUT6 output
                        .O5(or_op[i]), // 1-bit lower LUT5 output
                        .I0(a[4*i]), 
                        .I1(a[4*i+1]), 
                        .I2(a[4*i+2]), 
                        .I3(a[4*i+3]), 
                        .I4(0), 
                        .I5(0) // 1-bit LUT input (fast MUX select only available to O6 output)
                        );
                        end
   
           
           
           

                    always @* begin
                        segment_upper_half_or_op_result = or_op[3] | or_op[2];
                        seg_location = (segment_upper_half_or_op_result) ? {1'b1, or_op[3]} : {1'b0, or_op[1]};
                        operand_LO_segment_or_op_result = temp_var[3]| temp_var[2];
                        temp_var = a[(seg_location)*4+:4];
                        
                        seg_location_lower =  or_op[1];
                        temp_var_lower = a[(seg_location_lower)*4+:4];
                        operand_LO_segment_or_op_result_lower = temp_var_lower[3]| temp_var_lower[2];
                        
                        if (mode == 1'b0) begin
                            pos = {seg_location,  (operand_LO_segment_or_op_result) ?{1'b1, temp_var[3] } : {1'b0 , temp_var[1]}};
                           pos_lower = {lgN-1{1'b0}};
                           end
                        else  begin
                             pos = ( {seg_location,  (operand_LO_segment_or_op_result) ?{1'b1, temp_var[3] } : {1'b0 , temp_var[1]}} ) >> 3;
                             pos_lower = {seg_location_lower,  (operand_LO_segment_or_op_result_lower) ?{1'b1, temp_var_lower[3] } : {1'b0 , temp_var_lower[1]} };
                        end 
                    end

	   end
	   
	   
	   
else if(lgN==3)
	begin : lgN3
	        reg [1:0]   or_op;
            reg         seg_location;
 
            reg         operand_LO_segment_or_op_result;
            reg         operand_LO_segment_or_op_result_lower;
            reg [3:0]   temp_var;
            reg [3:0]   temp_var_lower;
            
            
            for(i=0;i<lgN-1;i=i+1)
                begin :segments
                    always @* begin
                        or_op[i] = a[(4*i)+ 3] | a[(4*i)+2] | a[(4*i)+1] | a[(4*i)+0];
                end
            end
            
            
//              for (i = 0; i < lgN-1; i = i + 1) 
//               begin : segments
//                    LUT6_2 #(
//                   .INIT(64'h000000000000fffe) // Specify LUT Contents         
//                   ) LUT6_2_inst (
//                   .O6(), // 1-bit LUT6 output
//                   .O5(or_op[i]), // 1-bit lower LUT5 output
//                   .I0(a[4*i]), 
//                   .I1(a[4*i+1]), 
//                   .I2(a[4*i+2]), 
//                   .I3(a[4*i+3]), 
//                   .I4(0), 
//                   .I5(0) // 1-bit LUT input (fast MUX select only available to O6 output)
//                   );
//                end
            
            
            
         
            always @* begin
                    seg_location =  or_op[1];
                    temp_var = a[(seg_location)*4+:4];
                    operand_LO_segment_or_op_result   = temp_var[3] | temp_var[2];
                    
                    
                    operand_LO_segment_or_op_result_lower =  a[3] | a[2];
                    if (mode == 1'b0) begin 
                        pos = {seg_location,  (operand_LO_segment_or_op_result) ?{1'b1, temp_var[3] } : {1'b0 , temp_var[1]} };
                        pos_lower = {lgN-1{1'b0}};
                    end
                    
                    else begin
                        pos = {seg_location,  (operand_LO_segment_or_op_result) ?{1'b1, temp_var[3] } : {1'b0 , temp_var[1]}} >> 2;
                        pos_lower =  (operand_LO_segment_or_op_result) ?{1'b1, a[3] } : {1'b0 , a[1]} ;
                    end

            end
            
	end


   endgenerate 
endmodule
