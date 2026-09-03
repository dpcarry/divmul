
module add_integer_part #(parameter lgN = 4 ) 

                (
                 func,
                 a,
                 b,
		         c,
                 result
                );
                

   input        func;
   input        [lgN-1:0] a;    
   input        [lgN-1:0] b;    
   input        c;
   output reg [lgN+1:0] result; 
   
   always@(*) begin
    if(func)        
    result = a - b - c;
    else
    result = a + b + c;
  end
endmodule

