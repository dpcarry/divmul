module add_4_bit#(parameter N = 4
              ) (  
		          func_bit,
		          a,
                  b,
		          c,
                  result
                );
 
   input              func_bit;	
   input      [N-1:0] a;
   input      [N-1:0] b;      
   input              c;   
   output reg [N+1:0] result; 
   
   always@(*) begin
 
    	result = (func_bit) ?  (a + b + c) : (a - b -c);
 
    end
 
endmodule

