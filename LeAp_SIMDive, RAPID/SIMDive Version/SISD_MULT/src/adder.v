module adder #(parameter N = 16
              )(a,
                b,
		        c,
		        cin,
                result
                );
   
   input      [N-1:0] a;
   input      [N-1:0] b;      
   input      [N-1:0] c;
   input              cin;   
   output reg [N:0] result; 

   always@(*) begin

      result = a+b+c+cin;
  end
endmodule

