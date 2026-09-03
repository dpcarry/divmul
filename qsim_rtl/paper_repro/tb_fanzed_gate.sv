`timescale 1ns/1ps

// Gate-level check for the explicitly labelled FaNZeD Eq. (5) reconstruction.
module tb_fanzed_gate;
    localparam integer N = 20000;
    reg [31:0] x, y;
    wire [31:0] result;
    reg [31:0] expected;
    integer i;

`ifdef FANZED_T15
    fanzed_fp32_div_t15 dut (.x(x), .y(y), .result(result));
`else
    fanzed_fp32_div_t0 dut (.x(x), .y(y), .result(result));
`endif

    function [31:0] fanzed_reference;
        input [31:0] in_x;
        input [31:0] in_y;
        input integer truncate_bits;
        reg [22:0] fx, fy;
        reg signed [27:0] q;
        reg signed [9:0] exponent_q;
        reg signed [27:0] normalized_q;
        reg sign_out;
        begin
            sign_out = in_x[31] ^ in_y[31];
            if (truncate_bits == 0) begin
                fx = in_x[22:0];
                fy = in_y[22:0];
            end else begin
                // This regression instantiates the paper's t=15 point.
                fx = {in_x[22:15], 15'b0};
                fy = {in_y[22:15], 15'b0};
            end
            if ($signed({1'b0, fx}) < $signed({1'b0, fy}))
                q = 28'sd8388608 + (($signed({1'b0, fx}) - $signed({1'b0, fy})) >>> 1) - 28'sd327680;
            else
                q = 28'sd8388608 + $signed({1'b0, fx}) - $signed({1'b0, fy}) - 28'sd327680;
            exponent_q = $signed({2'b0, in_x[30:23]}) -
                         $signed({2'b0, in_y[30:23]}) + 10'sd127;
            normalized_q = q;
            if (q < 28'sd8388608) begin
                normalized_q = q <<< 1;
                exponent_q = exponent_q - 1;
            end
            if (normalized_q <= 0 || exponent_q <= 0)
                fanzed_reference = {sign_out, 31'b0};
            else if (exponent_q >= 255 || normalized_q >= 28'sd16777216)
                fanzed_reference = {sign_out, 8'hff, 23'b0};
            else
                fanzed_reference = {sign_out, exponent_q[7:0], normalized_q[22:0]};
        end
    endfunction

    initial begin
        for (i = 0; i < N; i = i + 1) begin
            x = { $random, $random };
            y = { $random, $random };
            x[30:23] = ($random & 8'h7f) + 8'd64;
            y[30:23] = ($random & 8'h7f) + 8'd64;
`ifdef FANZED_T15
            expected = fanzed_reference(x, y, 15);
`else
            expected = fanzed_reference(x, y, 0);
`endif
            #1;
            if (result !== expected) begin
                $display("FaNZeD gate mismatch i=%0d x=%h y=%h got=%h expected=%h",
                         i, x, y, result, expected);
                $fatal(1);
            end
        end
        $display("FaNZeD formula-reconstruction gate PASS: %0d normal FP32 vectors", N);
        $finish;
    end
endmodule
