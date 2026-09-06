module simdive_oadm_common_accuracy_top (
    input  wire [31:0] x,
    input  wire [31:0] y,
    input  wire [1:0]  level,
    input  wire        divide_mode,
    output wire [31:0] simdive_result,
    output wire [31:0] simdive_original_result,
    output wire [31:0] oadm_result
);
    simdive_sisd32_fp32_wrapper simdive_specialized (
        .x(x), .y(y), .divide_mode(divide_mode), .result(simdive_result)
    );
    simdive_original_fp32_wrapper simdive_original (
        .x(x), .y(y), .divide_mode(divide_mode),
        .result(simdive_original_result)
    );

    oadm_runtime_root_opt oadm (
        .x(x), .y(y), .level(level), .divide_mode(divide_mode),
        .result(oadm_result)
    );
endmodule
