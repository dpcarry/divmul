`timescale 1ns/1ps

module tb_grid_model_crosscheck;
    localparam PIPE_DEPTH = 6;

    reg clk;
    reg [31:0] x;
    reg [31:0] y;
    reg [2:0] level;
    reg divide_mode;
    wire [31:0] result;

    integer vector_file;
    integer scan_count;
    integer checked;
    integer errors;
    reg [31:0] expected;

    oadm_dm_pipe #(.PIPE_MASK(7'h5f)) dut (
        .clk(clk), .x(x), .y(y), .level(level),
        .divide_mode(divide_mode), .result(result)
    );

    always #1 clk = ~clk;

    initial begin
        clk = 0;
        x = 32'h3f800000;
        y = 32'h3f800000;
        level = 0;
        divide_mode = 0;
        checked = 0;
        errors = 0;
        vector_file = $fopen("rtl_crosscheck_vectors.txt", "r");
        if (vector_file == 0) begin
            $display("FAIL: cannot open rtl_crosscheck_vectors.txt");
            $finish;
        end

        while (!$feof(vector_file)) begin
            scan_count = $fscanf(vector_file, "%h %h %d %d %h\n",
                                 x, y, level, divide_mode, expected);
            if (scan_count == 5) begin
                repeat (PIPE_DEPTH) @(posedge clk);
                #0.4;
                checked = checked + 1;
                if (result !== expected) begin
                    errors = errors + 1;
                    if (errors <= 20)
                        $display("ERROR vector=%0d level=%0d mode=%0d x=%h y=%h expected=%h actual=%h",
                                 checked, level, divide_mode, x, y,
                                 expected, result);
                end
                @(negedge clk);
            end
        end
        $fclose(vector_file);
        if (errors == 0)
            $display("PASS: NumPy model matched P6 RTL for %0d vectors", checked);
        else
            $display("FAIL: %0d mismatches in %0d vectors", errors, checked);
        $finish;
    end
endmodule
