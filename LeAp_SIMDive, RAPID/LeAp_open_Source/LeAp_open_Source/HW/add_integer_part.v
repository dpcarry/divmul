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

module add_integer_part(x_int_part,
                        y_int_part,
                        carry_from_frac,
                        sum_int_parts
                        );

input   [3:0]   x_int_part;
input   [3:0]   y_int_part;
input           carry_from_frac;
output  [4:0]   sum_int_parts;




    wire [3:0] gen;
    wire [3:0] prop;
    wire [2:0] cout_temp;
    
    genvar i;
    generate
    
     for (i = 0; i < 4; i = i + 1) 
        begin : generate_LUT6_2
             LUT6_2 #(
            .INIT(64'h0000000600000008) // Specify LUT Contents         
            ) LUT6_2_inst (
            .O6(prop[i]), // 1-bit LUT6 output
            .O5(gen[i]), // 1-bit lower LUT5 output
            .I0(x_int_part[i]), 
            .I1(y_int_part[i]), 
            .I2(0), 
            .I3(0), 
            .I4(0), 
            .I5(1) 
            );
            end
       endgenerate
            

    CARRY4 CARRY4_inst1 (
    .CO({sum_int_parts[4], cout_temp[2:0]}), // 4-bit carry out
    .O(sum_int_parts[3:0]), // 4-bit carry chain XOR data out
    .CI(0), 
    .CYINIT(carry_from_frac), // 1-bit carry initialization
    .DI(gen[3:0]), // 4-bit carry-MUX data in
    .S(prop[3:0]) // 4-bit carry-MUX select input
    );

    
endmodule