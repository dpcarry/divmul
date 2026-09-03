
module func_select_add #(parameter N = 4 ) 

                (func,
                 input_i,
                 output_o
                );
                

  input  [N-1:0] input_i;
  input          func; 
   
  output  [N-1:0] output_o; 
  assign output_o = (func) ? ~input_i : input_i;
 
  
endmodule

