`timescale 1ns/1ps

`ifndef DUT_MODULE
`define DUT_MODULE oadm_runtime_p6
`endif
`ifndef PIPE_MASK
`define PIPE_MASK 7'h5f
`endif
`ifndef PIPE_DEPTH
`define PIPE_DEPTH 6
`endif
`ifndef SDF_FILE
`define SDF_FILE "../../dc/pipeline_sweep/outputs/runtime/p6/oadm_runtime_p6.syn.sdf"
`endif

module tb_pipeline_dc;
    localparam TEST_VECTORS = 1000;

    reg clk;
    reg [31:0] x;
    reg [31:0] y;
    reg [2:0] level;
    reg divide_mode;
    wire [31:0] gate_result;
    wire [31:0] rtl_result;

    integer vector_index;
    integer errors;
    integer checked;
    reg [7:0] exponent_x;
    reg [7:0] exponent_y;
    reg [31:0] random_x;
    reg [31:0] random_y;

    `DUT_MODULE dut (
        .clk(clk), .x(x), .y(y), .level(level),
        .divide_mode(divide_mode), .result(gate_result)
    );

    oadm_dm_pipe #(.PIPE_MASK(`PIPE_MASK)) reference (
        .clk(clk), .x(x), .y(y), .level(level),
        .divide_mode(divide_mode), .result(rtl_result)
    );

    always #5 clk = ~clk;

    initial $sdf_annotate(`SDF_FILE, dut);

    task drive_vector;
        input integer number;
        begin
            level = number % 5;
            divide_mode = number[0];
            exponent_x = 8'd1 + ($random & 8'h7f);
            exponent_y = 8'd1 + ($random & 8'h7f);
            random_x = $random;
            random_y = $random;
            x = {random_x[31], exponent_x, random_x[22:0]};
            y = {random_y[31], exponent_y, random_y[22:0]};
            case (number % 64)
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

    initial begin
        clk = 0;
        x = 32'h3f800000;
        y = 32'h3f800000;
        level = 0;
        divide_mode = 0;
        errors = 0;
        checked = 0;

        for (vector_index = 0; vector_index < TEST_VECTORS;
             vector_index = vector_index + 1) begin
            @(negedge clk);
            drive_vector(vector_index);
            @(posedge clk);
            #2;
            if (vector_index >= `PIPE_DEPTH) begin
                checked = checked + 1;
                if (gate_result !== rtl_result) begin
                    errors = errors + 1;
                    if (errors <= 20) begin
                        $display("ERROR vector=%0d level=%0d mode=%0d rtl=%h gate=%h",
                            vector_index, level, divide_mode,
                            rtl_result, gate_result);
                    end
                end
            end
        end

        if (errors == 0)
            $display("PASS: %m matched %0d post-DC vectors", checked);
        else
            $display("FAIL: %m found %0d mismatches in %0d checks",
                     errors, checked);
        $finish;
    end
endmodule
