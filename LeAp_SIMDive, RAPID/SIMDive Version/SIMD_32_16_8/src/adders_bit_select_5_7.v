
module 		adder_5_7select_bit
                (
                 mode, //0=16
                 cin_i1,
                 cin_i2,
                 cin_i3, 
                 cin_o
                );
                
  input          [1:0] mode; 
  input          cin_i1;
  input          cin_i2;
  input          cin_i3;
  output reg     cin_o;

  
  always @* begin 
  
  if (mode[0] == 1'b1)
    cin_o = cin_i1;
  else if (mode[1] == 1'b1)
    cin_o = cin_i2;
  else
    cin_o = cin_i3;
  
  end
 

endmodule