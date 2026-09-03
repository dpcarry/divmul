module add_4_bit#(parameter N = 4
              ) (mode,
	         mode_func,
		 func,
		 a,
                 b,
		 c,
                 result
                );
   input	      mode;
   input 	      mode_func;
   input              func;	
   input      [N-1:0] a;
   input      [N-1:0] b;      
   input              c;   
   output reg [N+1:0] result; 
   
   always@(*) begin
    if (mode == 0)  
    	result = (mode_func ==0) ?  (a + b + c) : (a - b -c);
    else 
        result = (func ==0) ?  (a + b + c) : (a - b -c);
    end
endmodule

