`timescale 1ns/1ps

module tb_recip_scale_exact;
    reg clk;
    reg signed [28:0] value;
    reg [3:0] y_fraction_msb;
    reg [31:0] lfsr;
    integer cycle_count;
    integer error_count;
    integer level_index;

    wire [7:0] coefficient [0:4];
    wire signed [28:0] old_scaled [0:4];
    wire signed [28:0] new_scaled [0:4];

    genvar level;
    generate
        for (level = 0; level < 5; level = level + 1) begin : gen_level
            recip_lut_fixed #(.APPROX_LEVEL(level)) old_lut (
                .y_fraction_msb(y_fraction_msb),
                .reciprocal_square(coefficient[level])
            );
            sa_scale #(.VALUE_WIDTH(29), .COEFF_WIDTH(8)) old_scale (
                .clk(clk), .value(value), .coefficient(coefficient[level]),
                .scaled_value(old_scaled[level])
            );
            recip_scale_fixed #(.APPROX_LEVEL(level), .VALUE_WIDTH(29)) new_scale (
                .clk(clk), .value(value), .y_fraction_msb(y_fraction_msb),
                .scaled_value(new_scaled[level])
            );
        end
    endgenerate

    always #1 clk = ~clk;

    always @(negedge clk) begin
        lfsr <= {lfsr[30:0], lfsr[31] ^ lfsr[21] ^ lfsr[1] ^ lfsr[0]};
        value <= lfsr[28:0];
        y_fraction_msb <= lfsr[12:9];
        case (cycle_count[7:0])
            8'h00: value <= 29'sh00000000;
            8'h01: value <= 29'sh00000001;
            8'h02: value <= 29'sh0fffffff;
            8'h03: value <= 29'sh10000000;
            8'h04: value <= 29'sh1fffffff;
        endcase
    end

    always @(posedge clk) begin
        #0.01;
        cycle_count = cycle_count + 1;
        if (cycle_count > 2) begin
            for (level_index = 0; level_index < 5;
                 level_index = level_index + 1) begin
                if (new_scaled[level_index] !== old_scaled[level_index]) begin
                    $display("FAIL cycle=%0d level=%0d old=%h new=%h",
                        cycle_count, level_index, old_scaled[level_index],
                        new_scaled[level_index]);
                    error_count = error_count + 1;
                end
            end
        end
        if (cycle_count == 100002) begin
            if (error_count == 0)
                $display("PASS: fused scaler is bit-exact for all levels");
            else
                $display("FAIL: %0d fused scaler mismatches", error_count);
            $finish;
        end
    end

    initial begin
        clk = 1'b0;
        value = 29'sd0;
        y_fraction_msb = 4'd0;
        lfsr = 32'h6d2b79f5;
        cycle_count = 0;
        error_count = 0;
    end
endmodule
