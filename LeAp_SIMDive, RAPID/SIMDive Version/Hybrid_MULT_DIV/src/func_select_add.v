
module func_select_add #(parameter N = 4 ) 

                (func,
                 a,
                 output_o1,

                );
                

  input  [N-1:0] a;
  input          func; 
   
   output  [N-1:0] output_o1; 
 
  
  
  
  assign output_o1 = (func) ? ~a : a;
 
  
   
 
endmodule

