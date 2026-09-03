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

module add_fraction_part(x_frac_part,
                         y_frac_part,
                         correction_term,
                         sum_frac_parts
                        );
                        
input   [14:0]  x_frac_part;
input   [14:0]  y_frac_part;
input   [5:0]  correction_term;

output  [15:0]  sum_frac_parts;

    wire [16:0] gen;
    wire [15:0] prop;
    wire [15:0] cout_temp;
    wire [14:0] correction_term_temp;
    
    
//assign sum_frac = fraction_x + fraction_y + {2'b00, correction_term, 7'b0000000};
 
assign correction_term_temp = {2'b00, correction_term, 7'b0000000}; 
assign gen [0] = 1'b0;

LUT6_2 #(
        .INIT(64'h96969696E8E8E8E8) // Specify LUT Contents         
        ) LUT6_2_inst0 (
        .O6(prop[0]), // 1-bit LUT6 output
        .O5(gen[1]), // 1-bit lower LUT5 output
        .I0(x_frac_part[0]), 
        .I1(y_frac_part[0]), 
        .I2(correction_term_temp[0]), 
        .I3(1), 
        .I4(1), 
        .I5(1) 
        );

            
genvar i;
    generate
    
     for (i = 1; i < 15; i = i + 1) 
        begin : generate_LUT6_2
             LUT6_2 #(
            .INIT(64'h69966996E8E8E8E8) // Specify LUT Contents         
            ) LUT6_2_inst (
            .O6(prop[i]), // 1-bit LUT6 output
            .O5(gen[i+1]), // 1-bit lower LUT5 output
            .I0(x_frac_part[i]), 
            .I1(y_frac_part[i]), 
            .I2(correction_term_temp[i]), 
            .I3(gen[i]), 
            .I4(1), 
            .I5(1) 
            );
            end
       endgenerate
 
 
LUT6_2 #(
           .INIT(64'h17E817E8E8E8E8E8) // Specify LUT Contents         
           ) LUT6_2_inst16 (
           .O6(prop[15]), // 1-bit LUT6 output
           .O5(gen[16]), // 1-bit lower LUT5 output
           .I0(x_frac_part[14]), 
           .I1(y_frac_part[14]), 
           .I2(0), 
           .I3(0), 
           .I4(1), 
           .I5(1) 
           );      




  CARRY4 CARRY4_inst0 (
    .CO(cout_temp[3:0]), // 4-bit carry out
    .O(sum_frac_parts[3:0]), // 4-bit carry chain XOR data out
    .CI(0), 
    .CYINIT(0), // 1-bit carry initialization
    .DI(gen[3:0]), // 4-bit carry-MUX data in
    .S(prop[3:0]) // 4-bit carry-MUX select input
    );
    
    
generate
     for (i = 1; i < 4; i = i + 1) 
        begin : generate_carry4
           CARRY4 CARRY4_inst (
          .CO(cout_temp[4*i+3 : 4*i]), // 4-bit carry out
          .O(sum_frac_parts[4*i+3 : 4*i]), // 4-bit carry chain XOR data out
          .CI(0), 
          .CYINIT(cout_temp[4*i-1]), // 1-bit carry initialization
          .DI(gen[4*i+3 : 4*i]), // 4-bit carry-MUX data in
          .S(prop[4*i+3 : 4*i]) // 4-bit carry-MUX select input
          );
            end
       endgenerate    
endmodule
