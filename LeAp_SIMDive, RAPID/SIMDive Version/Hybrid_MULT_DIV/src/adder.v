module adder #(parameter N = 11
              )(a,
                b,
		        c,
                result
                );
   
   input      [N-2:0] a;
   input      [N-2:0] b;      
   input      [N-1:0] c;   
   output reg [N-1:0] result; 
   
   reg  [N-1:0]  temp;
 
   always@(*) begin
//      temp = a[N-1:1]  + b[N-1:1];
//      result = temp+c;

      temp = a[N-2:0]  + b[N-2:0];
      result = temp+c;
  end
endmodule

