module twos_complement_16#(parameter N = 8
              ) (
                mode,
                mode_func,
                func,
                in,
                out
                );
   
   input              mode;
   input              mode_func;
   input      [1:0]   func;
   input      [N-1:0] in;
   output reg [N-1:0] out;

   always@(*) begin
    if( mode == 0) 
      out  = (mode_func) ? ~(in)  + 1'b1 : in;
    else
      out[N -1:N/2]  = (func[1]) ? ~(in[N -1:N/2])  + 1'b1 : in[N -1:N/2];  
      out[N/2 -1:0]  = (func[0]) ? ~(in[N/2 -1:0])  + 1'b1 : in[N/2 -1:0];  
  end
endmodule