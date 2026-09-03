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
module lod(clk,
           rst,  
           operand,
           input_data_valid,
           log_stored_i,
           log_valid,
           log_int_part,
           log_frac_part
           );
           
parameter N = 16;
parameter lgN = 4;
localparam  S_IDLE          = 0;
localparam  S_GET_SEGMENT   = 1;
localparam  S_GENERATE_LOG  = 3;
localparam  S_LOG_GENERATED = 2;
localparam  S_SEND_CONFIRMATION = 6;



input                   clk;
input                   rst;
input      [N-1:0]      operand;
input                   input_data_valid;
input                   log_stored_i;
output                  log_int_part;
output                  log_frac_part;
output                  log_valid;

reg        [(lgN)-1:0]  log_int_part;
reg        [(lgN)-1:0]  log_int_part_temp;
reg        [(N-1)-1:0]  log_frac_part;
reg        [2:0]        state;
reg        [2:0]        next_state;
reg        [3:0]        count;
reg        [N-1:0]      operand_temp;
reg        [(N-1)-1:0]  frac_temp;


wire       [(lgN)-1:0]  segment;
wire       [(lgN)-1:0]  sum;
wire       [(lgN)-1:0]  gen;
wire       [(lgN)-1:0]  prop;
wire                    log_valid;



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
            .I1(count[i]), 
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



///////////////////////////////////  perform OR operation on every 4-bit to find the most significant segment having leading 1//////////////////////////////////////////
generate
     for (i = 0; i < 4; i = i + 1) 
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
    
  
 assign log_valid = (state==S_SEND_CONFIRMATION);


always@(posedge clk)
    begin
        if(rst)
            state <= S_IDLE;
        else
            state <= next_state;
    end
    

 
always@(posedge clk)
    begin
        case(state)
            S_IDLE :
                begin
                    if(input_data_valid)
                        begin
                            log_int_part <= 0;
                            log_frac_part <= 0;
                            operand_temp <= operand;               //Registering the input number
                        end
                end
            S_GET_SEGMENT :
                begin
                    casex(segment)
                        4'b1xxx  :   begin                  //Initializing counter according to the segment containing leading one
                                        count  <= 4'b1111;  
                                        operand_temp    <= operand_temp;
                                     end 
                        4'b01xx   :  begin
                                        count  <= 4'b1011;
                                        operand_temp    <= {operand_temp[11:0],{4{1'b0}}};
                                     end
                        4'b001x  :   begin
                                        count  <= 4'b0111;
                                        operand_temp    <= {operand_temp[7:0],{8{1'b0}}};
                                     end 
                        4'b0001   :  begin
                                        count  <= 4'b0011;
                                        operand_temp    <= {operand_temp[3:0],{12{1'b0}}};
                                     end
                        default   :  begin
                                        count  <= 4'b0000;
                                        log_int_part_temp[3:0] <= 4'b0000;
                                        frac_temp <= 14'b0;
                                     end
                    endcase
                end
            S_GENERATE_LOG :
                begin
                    if(operand_temp[15]==1)                              //Check if leading one found
                     begin
                         log_int_part_temp[3:0] <= count;
                         frac_temp <= operand_temp[14:0];
                      end
                    else                                        //Shift the number left if the leading one not found
                     operand_temp <= operand_temp << 1;
                 count <= sum;
               end
            S_LOG_GENERATED :
               begin   
                   log_int_part <= log_int_part_temp;
                   log_frac_part <= frac_temp;
               end
           
       endcase
   end
   
always@(*)
         begin
             case(state)
                 S_IDLE :
                     begin
                         if(input_data_valid)
                             next_state = S_GET_SEGMENT;
                         else
                             next_state = S_IDLE;
                     end
                 S_GET_SEGMENT :
                         next_state = S_GENERATE_LOG;
                 S_GENERATE_LOG :
                         begin
                             if(operand_temp[15] == 1)
                                 next_state = S_LOG_GENERATED;
                             else
                                 next_state = S_GENERATE_LOG;
                         end
                 S_LOG_GENERATED :
                         next_state = S_SEND_CONFIRMATION;
                 S_SEND_CONFIRMATION :
                       begin
                          if(log_stored_i)
                               next_state = S_IDLE;
                          else
                               next_state = S_SEND_CONFIRMATION;
                       end
             endcase
         end
   endmodule