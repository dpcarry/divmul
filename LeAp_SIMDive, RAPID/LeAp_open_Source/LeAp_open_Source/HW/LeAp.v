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

module LeAp (clk,
           rst,
           operand_x,
           operand_y,
           input_data_valid,
           product,
           product_valid
           );

parameter N                      = 16;
parameter lgN                    = 4;
localparam S_IDLE                = 0;
localparam S_GET_LOG             = 1;
localparam S_VALID_PRODUCT       = 3;


input                       clk;
input                       rst;
input           [N-1:0]     operand_x;                //[15:0]
input           [N-1:0]     operand_y;                //[15:0]
input                       input_data_valid;
output                      product;
output                      product_valid;

reg              [2*N-1:0]   product;            //[31:0]
reg                          product_valid;

reg              [lgN:0]     x_int_part_reg;
reg              [lgN:0]     y_int_part_reg;       
reg              [(N-1)-1:0] x_frac_part_reg;        //[14:0]
reg              [(N-1)-1:0] y_frac_part_reg;        //[14:0]
reg              [1:0]       state = S_IDLE;
reg              [1:0]       next_state;

wire             [6:0]       correction;
wire             [31:0]      product_temp;           //Register to hold the product which needs to be shifted later on
wire             [N-1:0]     sum_frac_parts;      //15:0
wire             [lgN:0]     sum_int_parts;   
wire                         logx_reg;
wire                         logy_reg;
wire             [(lgN)-1:0] x_int_part;                //[4:0]
wire             [(lgN)-1:0] y_int_part;                //[4:0]
wire             [(N-1)-1:0] x_frac;        //[14:0]
wire             [(N-1)-1:0] y_frac;        //[14:0]
wire                         log_valid_x;
wire                         log_valid_y;

assign logx_reg = (next_state==S_VALID_PRODUCT);
assign logy_reg = (next_state==S_VALID_PRODUCT);

//assign next_state = S_VALID_PRODUCT;


lod inst0 (.clk (clk),                    //Calculates the approximate log of x
           .rst (rst),  
           .operand (operand_x),
           .input_data_valid (input_data_valid),
           .log_stored_i (logx_reg),
           .log_valid (log_valid_x),
           .log_int_part (x_int_part),
           .log_frac_part (x_frac)
           );

lod inst1 (.clk (clk),                    //Calculates the approximate log of y
           .rst (rst),  
           .operand (operand_y),
           .input_data_valid (input_data_valid),
           .log_stored_i (logy_reg),
           .log_valid (log_valid_y),
           .log_int_part (y_int_part),
           .log_frac_part (y_frac)
           );
           
select_error_coeff_five_zones inst2 (.x_frac_part (x_frac_part_reg[14:11]),
                                 .y_frac_part (y_frac_part_reg[14:11]),
                                 .error_coeff (correction)
                                 ); 
                                 
add_fraction_part inst5 (.x_frac_part (x_frac_part_reg),
                         .y_frac_part (y_frac_part_reg),
                          .correction_term (correction),
                         .sum_frac_parts (sum_frac_parts)
                        );
                    
add_integer_part inst6 (.x_int_part (x_int_part_reg[3:0]),
                       .y_int_part (y_int_part_reg[3:0]),
                       .carry_from_frac (sum_frac_parts[15]),
                       .sum_int_parts (sum_int_parts)
                       );

output_shift inst7 (.sum_int_parts (sum_int_parts),
                    .frac_sum_shifted ({{2*N-2{1'b0}}, 1'b1, sum_frac_parts[14:0]}),
                    .prod_out (product_temp)
                    );
          
          
          
          
always @(posedge clk)
    begin
        if(rst)
            state <= S_IDLE;
        else
            state <= next_state;
    end          

                    
always@(posedge clk)
begin
    case(state)
        S_IDLE   :
            begin
               product_valid <= 1'b0;
            end
        S_GET_LOG   :
            begin
                if(log_valid_x == 1 )       //Registering the log of the numbers
                     {x_int_part_reg, x_frac_part_reg} <= {x_int_part, x_frac};
                if(log_valid_y == 1)  
                    {y_int_part_reg, y_frac_part_reg} <= {y_int_part, y_frac};
            end
        S_VALID_PRODUCT :
            begin
                    product <= product_temp;
                product_valid <= 1'b1;
            end
                
    endcase
end


always@(*)
    begin
        case(state)
            S_IDLE :
                begin
                    if(input_data_valid==1)
                        next_state = S_GET_LOG;
                    else
                        next_state = S_IDLE;
                end
           S_GET_LOG :
                begin
                    if(log_valid_x && log_valid_y) //Checking if the log of the numbers are ready before moving to the next state
                        next_state = S_VALID_PRODUCT;
                    else
                        next_state = S_GET_LOG;
                end
           S_VALID_PRODUCT  :
                next_state = S_IDLE;
      endcase
  end
                 

                    endmodule