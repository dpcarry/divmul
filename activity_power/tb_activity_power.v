`timescale 1ps/1ps

`ifndef DUT_MODULE
`define DUT_MODULE oadm_runtime_p6
`endif
`ifndef CLOCK_HALF_PS
`define CLOCK_HALF_PS 750
`endif
`ifndef LEVEL_VALUE
`define LEVEL_VALUE 0
`endif
`ifndef MODE_VALUE
`define MODE_VALUE 0
`endif
`ifndef WARMUP_CYCLES
`define WARMUP_CYCLES 20
`endif
`ifndef MEASURE_CYCLES
`define MEASURE_CYCLES 10000
`endif
`ifndef SDF_FILE
`define SDF_FILE "design.syn.sdf"
`endif
`ifndef VCD_FILE
`define VCD_FILE "activity.vcd"
`endif

module tb_activity_power;
    reg clk;
    reg [31:0] x;
    reg [31:0] y;
    reg [2:0] level;
    reg divide_mode;
    wire [31:0] result;

    reg [31:0] state_x;
    reg [31:0] state_y;
    integer cycle;
    time measure_start;
    time measure_end;

    `DUT_MODULE dut (
        .clk(clk),
        .x(x),
        .y(y),
`ifdef HAS_LEVEL
        .level(level),
`endif
`ifdef HAS_MODE
        .divide_mode(divide_mode),
`endif
        .result(result)
    );

    always #(`CLOCK_HALF_PS) clk = ~clk;

    initial $sdf_annotate(`SDF_FILE, dut);

    function [31:0] xorshift32;
        input [31:0] value;
        reg [31:0] shifted;
        begin
            shifted = value;
            shifted = shifted ^ (shifted << 13);
            shifted = shifted ^ (shifted >> 17);
            shifted = shifted ^ (shifted << 5);
            xorshift32 = shifted;
        end
    endfunction

    function [31:0] normalized_fp32;
        input [31:0] bits;
        integer exponent;
        begin
            // Uniform normalized FP32 encodings; exclude zero, subnormal, Inf, and NaN.
            exponent = (bits[30:23] % 254) + 1;
            normalized_fp32 = {bits[31], exponent[7:0], bits[22:0]};
        end
    endfunction

    task drive_next;
        begin
            state_x = xorshift32(state_x);
            state_y = xorshift32(state_y);
            x = normalized_fp32(state_x);
            y = normalized_fp32(state_y);
        end
    endtask

    initial begin
        clk = 1'b0;
        x = 32'h3f800000;
        y = 32'h3f800000;
        level = `LEVEL_VALUE;
        divide_mode = `MODE_VALUE;
        state_x = 32'h13579bdf;
        state_y = 32'h2468ace1;

        $dumpfile(`VCD_FILE);
        $dumpvars(0, dut);
        $dumpoff;

        for (cycle = 0; cycle < `WARMUP_CYCLES; cycle = cycle + 1) begin
            @(negedge clk);
            drive_next();
        end

        measure_start = $time;
        $dumpon;
        $dumpall;
        for (cycle = 0; cycle < `MEASURE_CYCLES; cycle = cycle + 1) begin
            @(negedge clk);
            drive_next();
        end
        measure_end = $time;
        $dumpall;
        $dumpoff;
        $dumpflush;

        $display("PASS: activity captured from %0t ps to %0t ps (%0d cycles)",
                 measure_start, measure_end, `MEASURE_CYCLES);
        $finish;
    end
endmodule
