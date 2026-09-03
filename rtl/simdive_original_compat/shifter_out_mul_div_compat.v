// Synthesis-only compatibility copy of the author-provided shifter output.
// The original top_module connects 32 bits to an input declared as 31 bits.
// Verilog simulators truncate the leading bit; this declaration makes that
// truncation explicit to Design Compiler while preserving all used bits.
module shifter_out_16_mul_div #(parameter N =16,
                             parameter lgN =4
                    )(mode,
                      a,
                      shifter_2,
                      shifter_0,
                      shifter_upper_half,
                      shifter_lower_half,
                      out
                     );

    input       [1:0]         mode;
    input       [N-1:0]       a;
    input       [lgN+1:0]     shifter_upper_half;
    input       [lgN-1:0]     shifter_2;
    input       [lgN-1:0]     shifter_0;
    input       [lgN:0]       shifter_lower_half;
    output reg  [2*N-1:0]     out;

    reg         [(2*N -1)+ N:0] shift_reg;
    reg         [(2*N -1)+ N:0] shift_reg_temp;
    wire                     append_upper;
    wire                     append_lower;

    assign append_upper = 1'b1;
    assign append_lower = 1'b1;

    always @(*) begin
        if (mode[0] == 1'b1) begin
            shift_reg_temp = {{(2*N -1){1'b0}}, append_upper, a[N-2:0]};
            shift_reg = shift_reg_temp << shifter_upper_half;
            out = shift_reg[(2*N + N-2) -:N*2];
        end else if (mode[1] == 1'b1) begin
            shift_reg_temp[(2*N -1)+ N: N + (N/2)] = {{(N-1){1'b0}}, append_upper, a[N -2 :N/2]};
            shift_reg_temp[N + (N/2) -1 :0] = {{(N-1){1'b0}}, append_lower, a[N/2 -2 :0]};
            shift_reg[(2*N -1)+ N :N + (N/2)] = shift_reg_temp[(2*N -1)+ N:N + (N/2)] << shifter_upper_half;
            shift_reg[N + (N/2) -1 :0] = shift_reg_temp[N + (N/2) -1 :0] << shifter_lower_half;
            out[2*N-1: N] = shift_reg[(2*N + (N-2)) -:N];
            out[N-1: 0] = shift_reg[N + (N/2) -2  -:N];
        end else begin
            shift_reg_temp[(2*N -1) + N :  (3*(2*N + N)/4)] = {{(N/2-1){1'b0}}, 1'b1, a[N -2 : 3*N/4]};
            shift_reg_temp[(3*(2*N + N)/4) - 1 : (2*N + N)/2] = {{(N/2-1){1'b0}}, 1'b1, a[3*N/4 -2 :N/2]};
            shift_reg_temp[(2*N + N)/2 -1 : ((2*N + N)/4)] = {{(N/2-1){1'b0}}, 1'b1, a[N/2 -2 :N/4]};
            shift_reg_temp[((2*N + N)/4) -1 :0] = {{(N/2-1){1'b0}}, 1'b1, a[N/4 -2 :0]};
            shift_reg[(2*N -1) + N :  (3*(2*N + N)/4)] = shift_reg_temp[(2*N -1) + N :  (3*(2*N + N)/4)] << shifter_upper_half;
            shift_reg[(3*(2*N + N)/4) - 1 : (2*N + N)/2] = shift_reg_temp[(3*(2*N + N)/4) - 1 : (2*N + N)/2] << shifter_2;
            shift_reg[(2*N + N)/2 -1 : ((2*N + N)/4)] = shift_reg_temp[(2*N + N)/2 -1 : ((2*N + N)/4)] << shifter_lower_half;
            shift_reg[((2*N + N)/4) -1 :0] = shift_reg_temp[((2*N + N)/4) -1 :0] << shifter_0;
            out[2*N-1 :3*N/2] = shift_reg[(3*N -2) -: N/2];
            out[3*N/2 -1 : N] = shift_reg[((3*(3*N)/4) - 2) -:N/2];
            out[N -1 :N/2] = shift_reg[((3*N)/2 -2) -:N/2];
            out[N/2 -1: 0] = shift_reg[((3*N)/4 -2) -:N/2];
        end
    end
endmodule
