
module 		cin_bit_select
                (mode, //0=16
                 cin_i1,
                 cin_i2, 
                 cin_o
                );


input          mode; 
input          cin_i1;
input          cin_i2;
output         cin_o;
assign cin_o = (mode==0) ?  cin_i1  : cin_i2 ;


endmodule
