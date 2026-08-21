`timescale 1ns/1ps

module tb_multilevel_plane_equiv;
    reg [31:0] x;
    reg [31:0] y;
    reg [1:0] level;
    reg divide_mode;
    wire [31:0] ignored_result;
    wire signed [28:0] direct_plane;
    integer i;
    integer mode_index;
    integer level_index;
    integer failures;

    oadm_dm_pipe #(.PIPE_MASK(7'h00)) reference_dut (
        .clk(1'b0), .x(x), .y(y), .level(level),
        .divide_mode(divide_mode), .result(ignored_result)
    );

    oadm_multilevel_plane_direct optimized_plane (
        .x_mantissa({1'b1, x[22:0]}),
        .y_mantissa({1'b1, y[22:0]}),
        .level(level), .divide_mode(divide_mode),
        .plane_exact(direct_plane)
    );

    initial begin
        failures = 0;
        x = 32'h3f800000;
        y = 32'h3f800000;
        level = 0;
        divide_mode = 0;

        for (mode_index = 0; mode_index < 2; mode_index = mode_index + 1) begin
            for (level_index = 0; level_index < 4; level_index = level_index + 1) begin
                divide_mode = mode_index;
                level = level_index;
                for (i = 0; i < 25000; i = i + 1) begin
                    x[22:0] = $random;
                    y[22:0] = $random;
                    #1;
                    if (direct_plane !== reference_dut.shared_4) begin
                        failures = failures + 1;
                        if (failures <= 10) begin
                            $display("FAIL mode=%0d level=%0d x=%h y=%h ref=%0d opt=%0d delta=%0d",
                                     divide_mode, level, x, y,
                                     reference_dut.shared_4, direct_plane,
                                     direct_plane-reference_dut.shared_4);
                        end
                    end
                end
            end
        end

        if (failures == 0) begin
            $display("PASS: 200000 multilevel MUL/DIV plane comparisons");
        end else begin
            $display("FAIL: %0d multilevel plane mismatches", failures);
        end
        $finish;
    end
endmodule
