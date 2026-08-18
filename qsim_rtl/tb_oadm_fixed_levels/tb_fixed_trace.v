`timescale 1ns/1ps

module tb_fixed_trace;
    reg clk;
    reg [31:0] x;
    reg [31:0] y;
    reg divide_mode;
    reg [31:0] lfsr_x;
    reg [31:0] lfsr_y;
    integer cycle_count;
    integer trace_file;

    wire [31:0] result_l0;
    wire [31:0] result_l1;
    wire [31:0] result_l2;
    wire [31:0] result_l3;
    wire [31:0] result_l4;

    oadm_dm_l0 dut_l0 (.clk(clk), .x(x), .y(y),
        .divide_mode(divide_mode), .result(result_l0));
    oadm_dm_l1 dut_l1 (.clk(clk), .x(x), .y(y),
        .divide_mode(divide_mode), .result(result_l1));
    oadm_dm_l2 dut_l2 (.clk(clk), .x(x), .y(y),
        .divide_mode(divide_mode), .result(result_l2));
    oadm_dm_l3 dut_l3 (.clk(clk), .x(x), .y(y),
        .divide_mode(divide_mode), .result(result_l3));
    oadm_dm_l4 dut_l4 (.clk(clk), .x(x), .y(y),
        .divide_mode(divide_mode), .result(result_l4));

    always #1 clk = ~clk;

    always @(negedge clk) begin
        lfsr_x <= {lfsr_x[30:0],
            lfsr_x[31] ^ lfsr_x[21] ^ lfsr_x[1] ^ lfsr_x[0]};
        lfsr_y <= {lfsr_y[30:0],
            lfsr_y[31] ^ lfsr_y[6] ^ lfsr_y[4] ^ lfsr_y[2]};
        x <= {lfsr_x[31], 8'd64 + lfsr_x[29:23], lfsr_x[22:0]};
        y <= {lfsr_y[31], 8'd64 + lfsr_y[29:23], lfsr_y[22:0]};
        divide_mode <= lfsr_x[7] ^ lfsr_y[13];

        case (cycle_count[7:0])
            8'h00: begin x <= 32'h00000000; y <= 32'h3f800000; end
            8'h01: begin x <= 32'h3f800000; y <= 32'h00000000; end
            8'h02: begin x <= 32'h7f800000; y <= 32'h3f800000; end
            8'h03: begin x <= 32'h3f800000; y <= 32'h7f800000; end
            8'h04: begin x <= 32'h7fc12345; y <= 32'h3f800000; end
            8'h05: begin x <= 32'h3f800000; y <= 32'h7fc54321; end
            8'h06: begin x <= 32'h00800000; y <= 32'h7f7fffff; end
            8'h07: begin x <= 32'h7f7fffff; y <= 32'h00800000; end
        endcase
    end

    always @(posedge clk) begin
        #0.01;
        cycle_count = cycle_count + 1;
        if (cycle_count > 10) begin
            $fdisplay(trace_file, "%0d %08h %08h %01h %08h %08h %08h %08h %08h",
                cycle_count, x, y, divide_mode, result_l0, result_l1,
                result_l2, result_l3, result_l4);
        end
        if (cycle_count == 20010) begin
            $fclose(trace_file);
            $finish;
        end
    end

    initial begin
        clk = 1'b0;
        x = 32'h3f800000;
        y = 32'h3f800000;
        divide_mode = 1'b0;
        lfsr_x = 32'h1aceb00c;
        lfsr_y = 32'hc001d00d;
        cycle_count = 0;
        trace_file = $fopen("fixed_trace.txt", "w");
        if (trace_file == 0) begin
            $display("FAIL: could not open fixed_trace.txt");
            $finish;
        end
    end
endmodule
