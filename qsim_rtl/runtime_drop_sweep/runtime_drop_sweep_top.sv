module runtime_drop_sweep_top #(
    parameter integer RESIDUAL_DROP = 10,
    parameter integer SCALE_DROP = 14
) (
    input  wire [31:0] x,
    input  wire [31:0] y,
    input  wire [1:0]  level,
    input  wire        divide_mode,
    output wire [31:0] candidate_result,
    output wire [31:0] baseline_result
);
    oadm_runtime_drop_sweep #(
        .RESIDUAL_DROP(RESIDUAL_DROP), .SCALE_DROP(SCALE_DROP)
    ) candidate (
        .x(x), .y(y), .level(level), .divide_mode(divide_mode),
        .result(candidate_result)
    );

    oadm_runtime_root_opt baseline (
        .x(x), .y(y), .level(level), .divide_mode(divide_mode),
        .result(baseline_result)
    );
endmodule

