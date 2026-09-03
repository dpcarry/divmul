module top_module #(parameter N = 16,
                    parameter lgN =4
                    )(input1_i,
                      input2_i,
		              func, 
                      result
                     );
   
   input      [N-1:0]   	 input1_i;
   input      [N-1:0] 	     input2_i;
   input      [1:0]		     func; // to select the operation
   output reg [2*N-1:0] 	 result;
   wire       [2*N-1:0]      result_wire;
 

always@(*) begin 
    
        case (func) 
        
            2'b00   :   result = input1_i + input2_i ; // addition 
            2'b11   :   result = input1_i - input2_i ; // subtraction
            default :   result = result_wire;          // Hybrid mode result (Multiplication and Division)
                        
        endcase
end 

//Multiplication and Division
     hybrid #(.N(N), .lgN(lgN)) inst_1 
                          (.input1_i(input1_i),
                           .input2_i(input2_i),
                           .func(func[0]), // 0 for Multiplication and 1 for division
                           .result_o_hybrid(result_wire)
                          );


endmodule
