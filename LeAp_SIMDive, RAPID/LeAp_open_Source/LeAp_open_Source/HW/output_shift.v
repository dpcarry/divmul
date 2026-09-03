`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////// 
//
// Create Date: October 2020 
// Design Name: LeAp Multiplier
// Description: This general template of LeAp Multiplier can be reused for different bit-width
// Revision: 1
// Additional Comments: 
//    For collaboration and queries regarding furthur optimizations please email the corresponding author: Zahra Ebrahimi (zahra.ebrahimi_mamaghani@tu-dresden.de)
//    In case of usage please cite: 
//    Zahra Ebrahimi, Salim Ullah, and Akash Kumar. "LeAp: Leading-one Detection-based Softcore Approximate Multipliers with Tunable Accuracy." 2020 25th Asia and South Pacific Design Automation Conference (ASP-DAC).
// 
//////////////////////////////////////////////////////////////////////////////////

module output_shift(sum_int_parts,
                    frac_sum_shifted,
                    prod_out
                    );
                    
input       [4:0]   sum_int_parts;
input       [46:0]  frac_sum_shifted;
output      [31:0]  prod_out;
wire        [46:0]  prod_shifted;


assign prod_shifted = frac_sum_shifted << sum_int_parts; 
assign prod_out = prod_shifted[46:15];

endmodule
