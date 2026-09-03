// Paper-faithful reconstruction of SIMDive's 16-bit SISD Mitchell core.
// The 64-entry Q0.3 correction LUT is generated as the mean signed residual
// of each {frac_x[MSB:MSB-2], frac_y[MSB:MSB-2]} region.
module simdive_sisd16_recon (
    input wire [15:0] x, y,
    input wire divide_mode,
    output reg [31:0] result
);
    integer kx, ky, i, expn;
    reg [15:0] fx, fy;
    reg signed [17:0] delta, corr, mant;
    reg [31:0] scaled;

    function integer lod16;
        input [15:0] value;
        integer n;
        begin
            lod16 = 0;
            for (n = 0; n < 16; n = n + 1)
                if (value[n]) lod16 = n;
        end
    endfunction

    function signed [17:0] correction;
        input mode;
        input [2:0] a, b;
        begin
            correction = 0;
            if (!mode) begin
                case (a)
                    3'd1: if ((b >= 3) && (b <= 6)) correction = 4096;
                    3'd2: if ((b >= 2) && (b <= 6)) correction = 4096;
                    3'd3: begin
                        if (b == 3) correction = 8192;
                        else if ((b == 1) || (b == 2) || (b == 4) || (b == 5)) correction = 4096;
                    end
                    3'd4: if ((b >= 1) && (b <= 5)) correction = 4096;
                    3'd5: if ((b >= 1) && (b <= 4)) correction = 4096;
                    3'd6: if ((b == 1) || (b == 2)) correction = 4096;
                endcase
            end else begin
                case (a)
                    3'd0: if ((b >= 1) && (b <= 6)) correction = -4096;
                    3'd1: if ((b >= 2) && (b <= 6)) correction = -4096;
                    3'd2: if ((b == 4) || (b == 5)) correction = -4096;
                    3'd5: if ((b >= 1) && (b <= 3)) correction = -4096;
                    3'd6: if ((b >= 1) && (b <= 4)) correction = -4096;
                    3'd7: if ((b >= 1) && (b <= 5)) correction = -4096;
                endcase
            end
        end
    endfunction

    always @* begin
        result = 0;
        if ((x != 0) && (y != 0)) begin
            kx = lod16(x);
            ky = lod16(y);
            fx = (x - (16'd1 << kx)) << (15-kx);
            fy = (y - (16'd1 << ky)) << (15-ky);
            corr = correction(divide_mode, fx[14:12], fy[14:12]);
            if (!divide_mode) begin
                delta = {1'b0, fx} + {1'b0, fy};
                if (delta < 32768) begin mant = 32768 + delta + corr; expn = kx + ky; end
                else begin mant = delta + corr; expn = kx + ky + 1; end
            end else begin
                delta = $signed({1'b0, fx}) - $signed({1'b0, fy});
                if (delta >= 0) begin mant = 32768 + delta + corr; expn = kx - ky; end
                else begin mant = 65536 + delta + corr; expn = kx - ky - 1; end
            end
            if (mant < 0) mant = 0;
            if (expn >= 15) scaled = mant << (expn - 15);
            else scaled = mant >> (15 - expn);
            result = scaled;
        end
    end
endmodule
