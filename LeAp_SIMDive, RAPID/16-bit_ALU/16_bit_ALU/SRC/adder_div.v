module adder #(parameter N = 20
              )(a,
                b,
                cin,
                sum
               );
   
   input  [N-1:0]     a;
   input  [N-1:0]     b;
   input              cin;
   output reg [N:0]   sum;

   always@(*)
     sum = a+b+cin;
   
endmodule

