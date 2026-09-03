

module shifter_out_mul_div #(parameter N =16,
                             parameter lgN =4 
                    )(func,
                      a,
                      shifter,
                      out
                     );
                     
    input                     func;
    input       [N-2:0]       a;
    input       [lgN+1:0]     shifter;
    output reg  [2*N-1:0]     out;

reg        [(N-2) + (2*N):0]      temp;
 
    always@(*)
        begin
         temp = {{2*N-1{1'b0}}, 1'b1, a} << shifter;
         out   = temp[(N-2) + (2*N) -:N*2];       
        end


endmodule