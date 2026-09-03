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

module select_error_coeff_two_zones(x_frac_part,
                                    y_frac_part,
                                    error_coeff
                                    );
    
    
    
    input   [3:0]   x_frac_part;
    input   [3:0]   y_frac_part;
    output  [5:0]   error_coeff;
    
    reg     [5:0]   error_coeff;
    
    always@(x_frac_part, y_frac_part)
        begin
        
//       coefficients of this version are in 8-bit format and could be regenerated for different size of multiplier
             if(x_frac_part > 4'b0011 && x_frac_part < 4'b1101 &&
                 y_frac_part > 4'b0011 && y_frac_part < 4'b1101)
                 error_coeff = 6'b0010010;
             else
                 error_coeff =  6'b0000101;
         end

endmodule

