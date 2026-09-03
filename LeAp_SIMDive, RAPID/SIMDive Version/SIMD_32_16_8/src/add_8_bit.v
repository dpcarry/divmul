module add_8_bit#(parameter N = 8
              ) (a,
                b,
		        cin,
                result
                );
                

   
   input      [N-1:0] a;
   input      [N-1:0] b;      
   input              cin;   
   output reg [N:0] result; 
   
   always@(*) begin
    result = a + b + cin;
  end
endmodule