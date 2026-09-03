


module 		adder_3_select_bit
                (
                 mode, //0=16
                 cin_i1,
                 cin_i2, 
                 cin_o
                );
                
  input          [1:0] mode; 
  input          cin_i1;
  input          cin_i2;
  output         cin_o;

  
  assign cin_o = (mode[0] == 1'b1) ? cin_i1  : cin_i2;

endmodule

