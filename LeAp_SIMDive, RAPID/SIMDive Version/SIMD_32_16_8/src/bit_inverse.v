module twos_complement_16#(parameter N = 8
              ) (
                mode,
                func_4_bit_add,
                func,
                in,
                out
                );
   
   input   [1:0]           mode;
   output reg    [3:0]   func_4_bit_add;
   input      [3:0]   func;
   input      [N-1:0] in;
   output reg [N-1:0] out;

   always@(*) begin
    if( mode[0] == 1'b1) 
      {out,func_4_bit_add[3]}  = (func == 0) ?  {in , 1'b1}:  {(~(in)  + 1'b1 ), 1'b0};
    else if (mode[1] == 1'b1) begin
      {out[N -1:N/2] ,func_4_bit_add[3]} = (func >= 3) ? {in[N -1:N/2], 1'b1} : {(~(in[N -1:N/2])  + 1'b1), 1'b0};  
      {out[N/2 -1:0] ,func_4_bit_add[1]} = (func == 2) ? {in[N/2 -1:0], 1'b1} : {(~(in[N/2 -1:0])  + 1'b1), 1'b0};  
      end
    else begin
      {out[N -1: 3*N/4]   ,func_4_bit_add[3]}   = (func <= 8) ? {in[N -1: 3*N/4],  1'b1}    : {(~(in[N -1: 3*N/4])     + 1'b1), 1'b0};  
      {out[3*N/4 -1: N/2] ,func_4_bit_add[2]}   = (func <= 7) ? {in[3*N/4 -1: N/2] ,  1'b1} : {(~(in[3*N/4 -1: N/2])   + 1'b1), 1'b0};
      {out[N/2 -1: N/4]   ,func_4_bit_add[1]}   = (func <= 6) ? {in[N/2 -1: N/4],     1'b1} : {(~(in[N/2 -1: N/4])     + 1'b1), 1'b0};  
      {out[N/4 -1: 0]     ,func_4_bit_add[0]}   = (func <= 5) ? {in[N/4 -1: 0] ,     1'b1}  : {(~(in[N/4 -1: 0])       + 1'b1), 1'b0}; 
    end  
 
  end
endmodule