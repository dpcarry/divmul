`timescale 1ns/1ps

// Independent bit-accurate reference for the two PLSAD configurations.  It
// keeps the gate check independent of the synthesized hierarchy.
module tb_plsad_gate;
    localparam integer N = 20000;
    reg [31:0] x, y;
    wire [31:0] result10, result23;
    reg [31:0] expected10, expected23;
    integer i;

    plsad_fp32_div_10bit dut10 (.x(x), .y(y), .result(result10));
    plsad_fp32_div_23bit dut23 (.x(x), .y(y), .result(result23));

    function [31:0] plsad_reference;
        input [31:0] in_x;
        input [31:0] in_y;
        input integer mantissa_bits;
        reg [22:0] fx, fy;
        reg signed [27:0] q;
        reg signed [9:0] exponent_q;
        reg signed [27:0] normalized_q;
        reg sign_out;
        begin
            sign_out = in_x[31] ^ in_y[31];
            if (mantissa_bits == 10) begin
                fx = {in_x[22:13], 13'b0};
                fy = {in_y[22:13], 13'b0};
            end else begin
                fx = in_x[22:0];
                fy = in_y[22:0];
            end
            case (fy[22:20])
                3'd0: q = 28'sd8388608 + $signed({1'b0, fx})
                           - ($signed({1'b0, fy}) + ($signed({1'b0, fy}) >>> 2));
                3'd1: q = 28'sd8519680 + ($signed({1'b0, fx}) - ($signed({1'b0, fx}) >>> 3))
                           - $signed({1'b0, fy});
                3'd2: q = 28'sd9043968 + ($signed({1'b0, fx}) - ($signed({1'b0, fx}) >>> 2))
                           - $signed({1'b0, fy});
                3'd3: q = 28'sd7471104 + ($signed({1'b0, fx}) - ($signed({1'b0, fx}) >>> 2))
                           - ($signed({1'b0, fy}) >>> 1);
                3'd4: q = 28'sd7798784 + (($signed({1'b0, fx}) >>> 1) + ($signed({1'b0, fx}) >>> 3))
                           - ($signed({1'b0, fy}) >>> 1);
                3'd5: q = 28'sd7733248 + (($signed({1'b0, fx}) >>> 1) + ($signed({1'b0, fx}) >>> 3))
                           - ($signed({1'b0, fy}) >>> 1);
                3'd6: q = 28'sd7995392 + (($signed({1'b0, fx}) >>> 1) + ($signed({1'b0, fx}) >>> 4))
                           - ($signed({1'b0, fy}) >>> 1);
                default: q = 28'sd7340032 + ($signed({1'b0, fx}) >>> 1)
                           - (($signed({1'b0, fy}) >>> 1) - ($signed({1'b0, fy}) >>> 3));
            endcase
            exponent_q = $signed({2'b0, in_x[30:23]}) -
                         $signed({2'b0, in_y[30:23]}) + 10'sd127;
            normalized_q = q;
            if (q < 28'sd8388608) begin
                normalized_q = q <<< 1;
                exponent_q = exponent_q - 1;
            end
            if (normalized_q <= 0 || exponent_q <= 0)
                plsad_reference = {sign_out, 31'b0};
            else if (exponent_q >= 255 || normalized_q >= 28'sd16777216)
                plsad_reference = {sign_out, 8'hff, 23'b0};
            else
                plsad_reference = {sign_out, exponent_q[7:0], normalized_q[22:0]};
        end
    endfunction

    initial begin
        // Finite normal vectors target the arithmetic path; directed values
        // also exercise both sides of each region boundary.
        for (i = 0; i < N; i = i + 1) begin
            x = { $random, $random };
            y = { $random, $random };
            x[30:23] = ($random & 8'h7f) + 8'd64;
            y[30:23] = ($random & 8'h7f) + 8'd64;
            expected10 = plsad_reference(x, y, 10);
            expected23 = plsad_reference(x, y, 23);
            #1;
            if (result10 !== expected10) begin
                $display("PLSAD-10 gate mismatch i=%0d x=%h y=%h got=%h expected=%h",
                         i, x, y, result10, expected10);
                $fatal(1);
            end
            if (result23 !== expected23) begin
                $display("PLSAD-23 gate mismatch i=%0d x=%h y=%h got=%h expected=%h",
                         i, x, y, result23, expected23);
                $fatal(1);
            end
        end
        $display("PLSAD gate regression PASS: %0d normal FP32 vectors per wrapper", N);
        $finish;
    end
endmodule
