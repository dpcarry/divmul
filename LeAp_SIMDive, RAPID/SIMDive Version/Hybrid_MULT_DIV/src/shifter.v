module shifter #(parameter N=16,
                 parameter lgN=4
                )(a,
                  shifter,
                  out
                  );
   
input        [N-1:0]       a;
input        [lgN-1:0] 	   shifter;
output reg   [N-1:0] 	   out;
   
reg        [(2*N) -2:0]      operand_temp;
reg        [(N) -1:0]       operand_temp_1;

   always@(*) begin 
     operand_temp        = {a, {N-1 {1'b0}} };
     out =  operand_temp >> shifter;
   end 
endmodule
