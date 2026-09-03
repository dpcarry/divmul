module add_4_bit #(parameter lgN = 4)

                (a,
                b,
		        c,
                result
                );
                

   
   input      [lgN-1:0] a;
   input      [lgN-1:0] b;      
   input              c;   
   output reg [lgN:0] result; 
   

 
   always@(*) begin
    result = a + b + c;
  end
endmodule

