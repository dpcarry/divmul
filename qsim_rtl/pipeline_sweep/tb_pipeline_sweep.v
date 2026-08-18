`timescale 1ns/1ps

module tb_pipeline_sweep;
    localparam TEST_CYCLES = 5000;

    reg clk;
    reg [31:0] x;
    reg [31:0] y;
    reg [2:0] level;
    reg divide_mode;

    wire [31:0] legacy_l0;
    wire [31:0] legacy_l1;
    wire [31:0] legacy_l2;
    wire [31:0] legacy_l3;
    wire [31:0] legacy_l4;
    wire [31:0] result_np;
    wire [31:0] result_p2;
    wire [31:0] result_p3;
    wire [31:0] result_p4;
    wire [31:0] result_p5;
    wire [31:0] result_p6;
    wire [31:0] result_p7;

    integer cycle;
    integer errors;
    integer shift_index;
    integer init_index;
    integer vector_index;
    reg [31:0] expected;
    reg [2:0] level_history [0:6];
    reg [31:0] np_history [0:6];
    reg [31:0] p2_history [0:5];
    reg [31:0] p3_history [0:4];
    reg [31:0] p4_history [0:3];
    reg [31:0] p5_history [0:2];
    reg [31:0] p6_history [0:1];

    oadm_dm_fixed #(.APPROX_LEVEL(0)) ref_l0 (
        .clk(clk), .x(x), .y(y), .divide_mode(divide_mode), .result(legacy_l0)
    );
    oadm_dm_fixed #(.APPROX_LEVEL(1)) ref_l1 (
        .clk(clk), .x(x), .y(y), .divide_mode(divide_mode), .result(legacy_l1)
    );
    oadm_dm_fixed #(.APPROX_LEVEL(2)) ref_l2 (
        .clk(clk), .x(x), .y(y), .divide_mode(divide_mode), .result(legacy_l2)
    );
    oadm_dm_fixed #(.APPROX_LEVEL(3)) ref_l3 (
        .clk(clk), .x(x), .y(y), .divide_mode(divide_mode), .result(legacy_l3)
    );
    oadm_dm_fixed #(.APPROX_LEVEL(4)) ref_l4 (
        .clk(clk), .x(x), .y(y), .divide_mode(divide_mode), .result(legacy_l4)
    );

    oadm_dm_pipe #(.PIPE_MASK(7'h00)) dut_np (
        .clk(clk), .x(x), .y(y), .level(level),
        .divide_mode(divide_mode), .result(result_np)
    );
    oadm_dm_pipe #(.PIPE_MASK(7'h44)) dut_p2 (
        .clk(clk), .x(x), .y(y), .level(level),
        .divide_mode(divide_mode), .result(result_p2)
    );
    oadm_dm_pipe #(.PIPE_MASK(7'h4a)) dut_p3 (
        .clk(clk), .x(x), .y(y), .level(level),
        .divide_mode(divide_mode), .result(result_p3)
    );
    oadm_dm_pipe #(.PIPE_MASK(7'h56)) dut_p4 (
        .clk(clk), .x(x), .y(y), .level(level),
        .divide_mode(divide_mode), .result(result_p4)
    );
    oadm_dm_pipe #(.PIPE_MASK(7'h5d)) dut_p5 (
        .clk(clk), .x(x), .y(y), .level(level),
        .divide_mode(divide_mode), .result(result_p5)
    );
    oadm_dm_pipe #(.PIPE_MASK(7'h5f)) dut_p6 (
        .clk(clk), .x(x), .y(y), .level(level),
        .divide_mode(divide_mode), .result(result_p6)
    );
    oadm_dm_pipe #(.PIPE_MASK(7'h7f)) dut_p7 (
        .clk(clk), .x(x), .y(y), .level(level),
        .divide_mode(divide_mode), .result(result_p7)
    );

    always #5 clk = ~clk;

    task drive_vector;
        input integer vector_number;
        reg [7:0] exponent_x;
        reg [7:0] exponent_y;
        begin
            level = vector_number % 5;
            divide_mode = vector_number[0];
            exponent_x = 8'd1 + ($random & 8'h7f);
            exponent_y = 8'd1 + ($random & 8'h7f);
            x = {$random & 1, exponent_x, $random & 23'h7fffff};
            y = {$random & 1, exponent_y, $random & 23'h7fffff};
            case (vector_number % 64)
                0: begin x = 32'h3f800000; y = 32'h3f800000; end
                1: begin x = 32'h00000000; y = 32'h3f800000; end
                2: begin x = 32'h3f800000; y = 32'h00000000; end
                3: begin x = 32'h7f800000; y = 32'h3f800000; end
                4: begin x = 32'h3f800000; y = 32'h7f800000; end
                5: begin x = 32'h7fc00001; y = 32'h3f800000; end
                6: begin x = 32'h3f800000; y = 32'h7fc00001; end
            endcase
        end
    endtask

    task report_mismatch;
        input [8*4-1:0] name;
        input [31:0] actual;
        input [31:0] wanted;
        begin
            errors = errors + 1;
            if (errors <= 20) begin
                $display("ERROR %s cycle=%0d level=%0d expected=%h actual=%h",
                         name, cycle, level_history[6], wanted, actual);
            end
        end
    endtask

    always @(posedge clk) begin
        #1;
        for (shift_index = 6; shift_index > 0; shift_index = shift_index - 1) begin
            level_history[shift_index] = level_history[shift_index-1];
            np_history[shift_index] = np_history[shift_index-1];
        end
        for (shift_index = 5; shift_index > 0; shift_index = shift_index - 1)
            p2_history[shift_index] = p2_history[shift_index-1];
        for (shift_index = 4; shift_index > 0; shift_index = shift_index - 1)
            p3_history[shift_index] = p3_history[shift_index-1];
        for (shift_index = 3; shift_index > 0; shift_index = shift_index - 1)
            p4_history[shift_index] = p4_history[shift_index-1];
        for (shift_index = 2; shift_index > 0; shift_index = shift_index - 1)
            p5_history[shift_index] = p5_history[shift_index-1];
        p6_history[1] = p6_history[0];

        level_history[0] = level;
        np_history[0] = result_np;
        p2_history[0] = result_p2;
        p3_history[0] = result_p3;
        p4_history[0] = result_p4;
        p5_history[0] = result_p5;
        p6_history[0] = result_p6;

        if (cycle >= 7) begin
            case (level_history[6])
                3'd0: expected = legacy_l0;
                3'd1: expected = legacy_l1;
                3'd2: expected = legacy_l2;
                3'd3: expected = legacy_l3;
                default: expected = legacy_l4;
            endcase
            if (np_history[6] !== expected)
                report_mismatch("NP", np_history[6], expected);
            if (p2_history[5] !== expected)
                report_mismatch("P2", p2_history[5], expected);
            if (p3_history[4] !== expected)
                report_mismatch("P3", p3_history[4], expected);
            if (p4_history[3] !== expected)
                report_mismatch("P4", p4_history[3], expected);
            if (p5_history[2] !== expected)
                report_mismatch("P5", p5_history[2], expected);
            if (p6_history[1] !== expected)
                report_mismatch("P6", p6_history[1], expected);
            if (result_p7 !== expected)
                report_mismatch("P7", result_p7, expected);
        end
        cycle = cycle + 1;
    end

    initial begin
        clk = 0;
        x = 32'h3f800000;
        y = 32'h3f800000;
        level = 0;
        divide_mode = 0;
        cycle = 0;
        errors = 0;
        for (init_index = 0; init_index <= 6; init_index = init_index + 1) begin
            level_history[init_index] = 0;
            np_history[init_index] = 0;
        end
        for (init_index = 0; init_index <= 5; init_index = init_index + 1)
            p2_history[init_index] = 0;
        for (init_index = 0; init_index <= 4; init_index = init_index + 1)
            p3_history[init_index] = 0;
        for (init_index = 0; init_index <= 3; init_index = init_index + 1)
            p4_history[init_index] = 0;
        for (init_index = 0; init_index <= 2; init_index = init_index + 1)
            p5_history[init_index] = 0;
        for (init_index = 0; init_index <= 1; init_index = init_index + 1)
            p6_history[init_index] = 0;

        for (vector_index = 0; vector_index < TEST_CYCLES;
             vector_index = vector_index + 1) begin
            @(negedge clk);
            drive_vector(vector_index);
        end
        repeat (10) @(posedge clk);
        if (errors == 0)
            $display("PASS: NP/P2-P7 runtime configurations are bit-exact over %0d transactions", TEST_CYCLES);
        else
            $display("FAIL: %0d pipeline-sweep mismatches", errors);
        $finish;
    end
endmodule
