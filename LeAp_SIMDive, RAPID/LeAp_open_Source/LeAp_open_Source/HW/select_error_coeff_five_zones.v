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

    module select_error_coeff_five_zones(x_frac_part,
                                    y_frac_part,
                                    error_coeff
                                    );
    
    
    
    input   [3:0]   x_frac_part;
    input   [3:0]   y_frac_part;
    output  [5:0]   error_coeff;
    
    reg     [5:0]   error_coeff;
 
// assign error_coeff = 0;   //for achieving Mitchell multiplier, make error_coeff "wire"
    always@(x_frac_part, y_frac_part)
        begin
        
//       coefficients of this version are in 8-bit format and could be regenerated for different size of multiplier
                if (x_frac_part == 4'b0000 ||x_frac_part == 4'b1111 || y_frac_part == 4'b0000 || y_frac_part == 4'b1111) 
                     error_coeff = 6'b000001; //c5
                     
                else if (x_frac_part >= 4'b0110 & x_frac_part <= 4'b1010 && y_frac_part >= 4'b0110 && y_frac_part <= 4'b1010)
                      error_coeff = 6'b100000;  //c1
                                          
                else if ((x_frac_part < 4'b0110 && y_frac_part < 4'b0110) || (x_frac_part >= 4'b1010 && y_frac_part >= 4'b1010))  
                      error_coeff = 6'b001000;   //c4
                      
                else if (x_frac_part > 4'b0010 && x_frac_part < 4'b1110 && y_frac_part > 4'b0010 && y_frac_part < 4'b1110) 
                     error_coeff = 6'b011000;   //c2
                     
                else
                     error_coeff = 6'b010000;  //c3
                end

endmodule
