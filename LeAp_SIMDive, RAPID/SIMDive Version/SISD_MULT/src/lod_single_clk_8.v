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
module lod_single_cycle_8_bit(
//           clk,
//           input_valid,
           operand,
           log_int_part,
           log_frac_part
           );
           
parameter N = 8;
parameter lgN = 3;

//input                   clk;
//input                   input_valid;
input      [N-1:0]      operand;
output                  log_int_part;
output                  log_frac_part;


reg                     log_valid;
reg        [(lgN)-1:0]  log_int_part;
reg        [(lgN)-1:0]  log_int_part_temp;
reg        [(lgN)-1:0]  log_int_part_temp2;
reg        [(N-1)-1:0]  log_frac_part;
reg                     zero_flag;
reg                     zero_temp;

reg        [(2*N) -1:0]      operand_temp;
reg        [(N-1)-1:0]       frac_temp;


wire       [(lgN)-1:0]  segment;
wire       [(lgN)-1:0]  sum;
wire       [(lgN)-1:0]  gen;
wire       [(lgN)-1:0]  prop;

reg         seg_location; 
reg         seg_location_temp; 
reg         [3:0]         log_int_part_wire;

 

//////////////////////////////////////Using LUTs to implement a down counter to find the leading one////////////////////////////////////////////////

genvar i;
    generate
     for (i = 0; i < 4; i = i + 1) 
        begin : generate_LUT6_2_counter
             LUT6_2 #(
            .INIT(64'h0000000600000008) // Specify LUT Contents         
            ) LUT6_2_inst (
            .O6(prop[i]), // 1-bit LUT6 output
            .O5(gen[i]), // 1-bit lower LUT5 output
            .I0(1), 
            .I1(log_int_part_wire[i]), 
            .I2(0), 
            .I3(0), 
            .I4(0), 
            .I5(1) // 1-bit LUT input (fast MUX select only available to O6 output)
            );
            end
    endgenerate
   

CARRY4 CARRY4_inst1 (
.CO(), // 4-bit carry out
.O(sum), // 4-bit carry chain XOR data out
.CI(0), // 1-bit carry cascade input
.CYINIT(0), // 1-bit carry initialization
.DI(gen), // 4-bit carry-MUX data in
.S(prop) // 4-bit carry-MUX select input
);
// End of CARRY4_inst instantiation



function       [1:0] lod_pos;
   input       [3:0]   	 a_var;
    begin
       casex(a_var)
         4'b1xxx : lod_pos = 2'b11;
         4'b01xx : lod_pos = 2'b10;
         4'b001x : lod_pos = 2'b01;
         4'b0001 : lod_pos = 2'b00;
       endcase
    end

endfunction


///////////////////////////////////  perform OR operation on every 4-bit to find the most significant segment having leading 1//////////////////////////////////////////
generate
     for (i = 0; i < 2; i = i + 1) 
        begin : generate_LUT6_2_segment
             LUT6_2 #(
            .INIT(64'h000000000000fffe) // Specify LUT Contents         
            ) LUT6_2_inst (
            .O6(), // 1-bit LUT6 output
            .O5(segment[i]), // 1-bit lower LUT5 output
            .I0(operand[4*i]), 
            .I1(operand[4*i+1]), 
            .I2(operand[4*i+2]), 
            .I3(operand[4*i+3]), 
            .I4(0), 
            .I5(0) // 1-bit LUT input (fast MUX select only available to O6 output)
            );
            end
endgenerate


//assign seg_location = lod_pos(segment);
//assign log_int_part_wire = {seg_location, lod_pos(operand[(seg_location)*4+:4])};
//assign   operand_temp  = {operand, {14{1'b0}}};





//always@(posedge clk)
//    begin
//       log_int_part  <= log_int_part_wire;
//       log_frac_part <= operand_temp >> sum;
//       zero_flag <= 1'b1;
//       log_valid <= 1'b1;
//   end
reg        segment_upper_half_or;
reg        operand_LO_segment_or;
reg        temp_or;

reg   [3:0] temp_var;
//always@(*)
//   begin

//     operand_temp        = {operand, {15{1'b0}}};
//     seg_location        = lod_pos(segment); //{(segment[3] | segment[2]), (segment[1] | segment[0])}
//     log_int_part        = {seg_location, lod_pos(operand[(seg_location)*4+:4])}; //here
//     log_frac_part       = operand_temp >> log_int_part;


//   operand_temp            = {operand, {N-1{1'b0}}};
//   seg_location = segment[1];
//   temp_var = operand[(seg_location)*4+:4];
//   operand_LO_segment_or  = temp_var[3]| temp_var[2];
//   log_int_part   =   {seg_location,  (operand_LO_segment_or) ?{1'b1, temp_var[3]} : {1'b0 , temp_var[1]} };
//   log_frac_part       = operand_temp >> log_int_part;
//  end
  
  reg   [3:0] lower;
  reg   [3:0] upper;
  reg   [1:0] total;
  
//  always@(*) begin
  
////         casex(operand)
////               8'b1xxx_xxxx : begin log_int_part = 3'd7;   log_frac_part = operand[6:0] ; end
////               8'b01xx_xxxx : begin log_int_part = 3'd6; log_frac_part = {operand[5:0], 1'b0};  end
////               8'b001x_xxxx : begin log_int_part = 3'd5; log_frac_part = {operand[4:0], 2'b0};  end
////               8'b0001_xxxx : begin log_int_part = 3'd4; log_frac_part = {operand[3:0], 3'b0};  end
////               8'b0000_1xxx : begin log_int_part = 3'd3; log_frac_part = {operand[2:0], 4'b0};  end 
////               8'b0000_01xx : begin log_int_part = 3'd2; log_frac_part = {operand[1:0], 5'b0};  end
////               8'b0000_001x : begin log_int_part = 3'd1; log_frac_part = {operand[0], 6'b0};  end
////               8'b0000_0001 : begin log_int_part = 3'd0; log_frac_part = {  7'b0};  end
////         endcase

                 
  
  
//  end 
  
 
     assign   {log_int_part, log_frac_part} =   operand[7] ? {3'd7, operand[6:0]} :  
                                                operand[6] ? {3'd6, operand[5:0], 1'b0} : 
                                                operand[5] ? {3'd5, operand[4:0], 2'b0} : 
                                                operand[4] ? {3'd4, operand[3:0], 3'b0} : 
                                                operand[3] ? {3'd3, operand[2:0], 4'b0} : 
                                                operand[2] ? {3'd2, operand[1:0], 5'b0} : 
                                                operand[1] ? {3'd1,   operand[0], 6'b0} : 
                                                {3'd6, 7'b0}; 
                
    
 
   
 endmodule
 

