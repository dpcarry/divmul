# Hardware Optimization References

本文档记录 OADM divider-multiplier 硬件研究中实际参考过的论文、源码和方法，
以及它们在本项目中的具体用途。文档只覆盖硬件算法、RTL、pipeline、PPA 和
accuracy evaluation；FairQuantize/application-level 工作不包含在这里。

为避免夸大引用关系，每项都标注为以下状态之一：

- **Current**：构成当前 RTL 或当前正式实验方法的一部分。
- **Retained experiment**：形成了有用的实验或对比，但不一定是最终主实现。
- **Rejected experiment**：受论文启发进行了实现，但综合结果变差，未进入最终 RTL。
- **Background only**：只用于理解或论文定位，没有直接复制其 RTL。

## 1. OADM Divider-Multiplier Working Manuscript

**Reference**

- *OADM: Optimally Approximate Floating-Point Divider-Multiplier with Runtime
  Configurability*.
- Local copy: [`divider_multiplier(2).pdf`](divider_multiplier(2).pdf)
- Status: **Current**

**Used in this project**

- 提供当前 divider-multiplier 的主要数学定义：基于 tangent plane 的 mantissa
  multiplication/division approximation、多级 correction，以及 runtime level 的含义。
- Eq. (6) 对应 baseline plane 和逐级 `delta` correction 的累加，是
  `rtl/oadm_core.v`、fixed-level RTL 和后续 no-pipeline RTL 的算法来源。
- Eq. (10) 和 Eq. (11) 描述 multiplier plane 与 divider plane/correction 之间的关系。
  项目在 `rtl/oadm_levels_opt/` 中做了独立复现实验。
- 该实验发现：直接按实数公式变换会因 Verilog arithmetic shift 的 floor/truncation
  语义产生低位差异；加入补偿后可以 bit-exact，但面积和功耗反而增加。因此 Eq. 10/11
  实验被保留作结构性验证，没有替换当前最佳 RTL。

**Effect**

- 决定了本项目“共享 approximate DIV/MUL”这一核心研究问题，而不是单纯把两个无关
  operator 放入同一 wrapper。
- 提供了 level-dependent accuracy/area tradeoff 的理论基础。

## 2. OAM Approximate Floating-Point Multiplier

**Reference**

- C. Chen, S. Yang, W. Qian, M. Imani, X. Yin, and C. Zhuo,
  “Optimally Approximated and Unbiased Floating-Point Multiplier with Runtime
  Configurability,” ICCAD, 2020.
- DOI: [10.1145/3400302.3415702](https://doi.org/10.1145/3400302.3415702)
- Local paper:
  [`Multiplier2023_Optimally_Approximated_and_Unbiased_Floating-Point_Multiplier_with_Runtime_Configurability.pdf`](Multiplier2023_Optimally_Approximated_and_Unbiased_Floating-Point_Multiplier_with_Runtime_Configurability.pdf)
- Reference RTL: [AM-Lib/OAM](https://github.com/skycrapers/AM-Lib/tree/main/OAM)
- Status: **Current**

**Used in this project**

- OADM multiplication mode 的 tangent-plane approximation、midpoint partition、correction
  level 和 runtime configurability 均以 OAM 为起点。
- AM-Lib RTL 用于确认每个 level 的 correction 结构、connector/partial-sum 组织方式，
  也用于构建 standalone approximate multiplier baseline。
- OAM 提出的 inversion、shift 和 addition 实现思想，指导本项目避免把所有表达式直接
  写成 full-precision multipliers。
- Fixed-level synthesis 通过 constant propagation 删除未使用的 level，沿用了 OAM
  “精度随 level 增加、硬件开销随之增加”的实验方式。

**Effect**

- 给出了乘法模式的可信 reference implementation。
- 使 shared DIV/MUL 与“standalone OAM multiplier + standalone divider”的面积 ablation
  成为可能。

## 3. PACE Approximate Floating-Point Divider

**Reference**

- C. Wen et al., “PACE: A Piece-Wise Approximate and Configurable Floating-Point
  Divider for Energy-Efficient Computing,” DATE, 2024.
- DOI: [10.23919/DATE58400.2024.10546711](https://doi.org/10.23919/DATE58400.2024.10546711)
- Local paper:
  [`2024_PACE_A_Piece-Wise_Approximate_and_Configurable_Floating_-_Point_Divider_for_Energy_-_Efficient_Computing-2.pdf`](2024_PACE_A_Piece-Wise_Approximate_and_Configurable_Floating_-_Point_Divider_for_Energy_-_Efficient_Computing-2.pdf)
- Local author RTL: [`PACE/`](PACE/)
- Status: **Current comparison methodology and baseline**

**Used in this project**

- PACE L1-L4 author RTL 被单独移植到本项目的 TSMC 65 nm DC/PT flow，作为公开 RTL
  approximate-divider baseline。
- 采用 PACE 的 accuracy campaign：在 `[1,2)` 中均匀取 10,000 个 mantissa，组成
  `10,000 x 10,000 = 10^8` 个 operand pairs，并报告 MAE、MRED 和 RMSE。
- 促成了 PACE-compatible OADM wrappers：只比较 normalized finite FP32 DIV datapath，
  避免把 OADM 的 MUL、runtime selector、pipeline 或更完整 special-value logic 错算到
  divider-only 对比中。
- 当前正式 PPA 对比将 PACE 与 OADM 都重新映射到同一个 TSMC65 typical CCS library、
  同一个 10 ns virtual-clock constraint 和相同 PT activity assumptions。

**Effect**

- 建立了当前最重要的同流程外部 baseline。
- 暴露了 OADM divider 的主要成本：tangent-plane arithmetic 和 reciprocal scaling 比
  PACE 的 power-of-two shift/add approximation 更重。
- PACE 论文中的 UMC40 绝对面积只作为 published reference；正式百分比比较使用本地
  TSMC65 重综合结果，避免跨工艺直接比较。

## 4. RAPID Pipelined Approximate Multiplier/Divider

**Reference**

- Z. Ebrahimi, M. Zaid, M. Wijtvliet, and A. Kumar,
  “RAPID: AppRoximAte Pipelined Soft Multipliers and Dividers for
  High-Throughput and Energy-Efficiency,” 2022.
- Preprint: [arXiv:2206.13970](https://arxiv.org/abs/2206.13970)
- Local copy: [`RAPID.pdf`](RAPID.pdf)
- Status: **Retained experiment**

**Used in this project**

- RAPID 的主要启发不是其 Mitchell arithmetic，也不是 FPGA 6-LUT implementation，
  而是对 approximate operator 做 fine-grained pipeline，并同时报告 pipeline depth、
  latency、throughput、area 和 energy tradeoff。
- 本项目据此建立了 NP、P2-P7 的 runtime-configurable 与 fixed-level pipeline sweep，
  而不是只测试一个任意的七级 pipeline。
- Pipeline stage 不直接照搬 RAPID；本项目按 OADM 自己的 unpack、plane/correction、
  reciprocal scale、normalization 和 pack 数据依赖重新划分 stage。

**Effect**

- 证明 pipeline 的主要收益是 initiation interval/throughput 和 timing closure，而不是
  自动减少单次 operation latency 或 area。
- 形成当前 PPA 报告中的 pipeline-depth Pareto analysis，并促成 no-pipeline baseline，
  防止把高 throughput 和低 combinational latency 混为一谈。

## 5. Multiplierless Constant Multiplication

**Reference**

- L. Aksoy, D. B. Roy, M. Imran, P. Karl, and S. Pagliarini,
  “Multiplierless Design of Very Large Constant Multiplications in
  Cryptography,” IEEE TCAS-II, vol. 69, no. 11, 2022.
- DOI: [10.1109/TCSII.2022.3191662](https://doi.org/10.1109/TCSII.2022.3191662)
- Preprint: [arXiv:2205.10591](https://arxiv.org/abs/2205.10591)
- Status: **Rejected experiment, retained design lesson**

**Used in this project**

- 论文中的 shift-add、adder graph、common-subexpression elimination 和
  delay-aware adder-step 思想用于研究 `w_n * reciprocal_coefficient` 的实现。
- 项目先后测试了 serial shift-add、balanced shift-add/CSD，以及针对有限 coefficient
  set 的 reconfigurable constant multiplier (RSCM)。
- 还测试了通过共享中间 shift/add term 来替代 generic small multiplier 的实现。

**Effect**

- 明确说明“shift-add 一定更快/更省”并不成立：对于本项目较小的 27x7 runtime
  coefficient multiplier，mux、sign handling 和共享网络开销使 RSCM 综合结果更差。
- 最终 RTL 因此保留让 Design Compiler 推断并优化小乘法器的表达方式；失败方案没有
  混入当前 winner。

## 6. Carry-Save Data-Flow Transformations

**Reference**

- A. K. Verma, P. Brisk, and P. Ienne,
  “Data-Flow Transformations to Maximize the Use of Carry-Save Representation
  in Arithmetic Circuits,” IEEE TCAD, vol. 27, no. 10, 2008.
- DOI: [10.1109/TCAD.2008.2003280](https://doi.org/10.1109/TCAD.2008.2003280)
- Status: **Partly current; hand-written experiment rejected**

**Used in this project**

- 该工作指导我们把多个 correction term 看成 compressor/carry-save reduction problem，
  尽量推迟最终 carry-propagate addition。
- 基线和 pipelined RTL 中使用了 `csa3.v` 的 3:2 compression 来合并 correction terms。
- 后续 L3 optimization 还测试了更显式的 hand-written CSA plane，希望保留更多
  carry-save representation 到最终 adder。

**Effect**

- Correction reduction 中的 CSA 思路被保留。
- 但 hand-written CSA plane 在当前 TSMC65/DC flow 下阻碍了综合器的高层 arithmetic
  optimization，面积/延迟变差，因此没有替代当前表达式。

## 7. Layout-Aware Arithmetic Synthesis

**Reference**

- J. Um and T. Kim, “Layout-Aware Synthesis of Arithmetic Circuits,” DAC, 2002,
  pp. 207-212.
- DOI: [10.1145/513918.513971](https://doi.org/10.1145/513918.513971)
- Status: **Rejected experiment, retained methodology**

**Used in this project**

- 该论文强调 arithmetic tree 不应只按 adder count 判断，还要考虑 CSA topology、
  interconnect regularity 和 bit-level connection。
- 它用于指导 balanced tree/CSA experiment，并提醒我们不能仅凭 RTL 中出现 shift/add
  就推断 post-synthesis timing 一定更好。
- 在当前阶段，由于主要结果是 DC/PT post-synthesis 而非重新做完整 APR，该文献主要
  影响候选结构的筛选和结果解释。

**Effect**

- 促使每个优化都必须通过同库 DC + PrimeTime 实测，而不是只比较 operation count。
- 解释了为什么理论 adder depth 较浅的手写结构仍可能因 mux/fanout/wiring 变差。

## 8. SIMDive Unified Approximate Multiplier-Divider

**Reference**

- Z. Ebrahimi, S. Ullah, and A. Kumar, “SIMDive: Approximate SIMD Soft
  Multiplier-Divider for FPGAs with Tunable Accuracy,” GLSVLSI, 2020.
- DOI: [10.1145/3386263.3406907](https://doi.org/10.1145/3386263.3406907)
- Preprint: [arXiv:2011.01148](https://arxiv.org/abs/2011.01148)
- Status: **Background only**

**Used in this project**

- 用于确认 approximate multiply/divide unified operator 和 tunable accuracy 是已有的
  合理研究方向，并用于思考 shared operator 应如何与 standalone operators 比较。
- SIMDive 面向 FPGA SIMD/LUT architecture，其算法和 RTL 没有复制到当前 ASIC OADM。

**Effect**

- 帮助界定 novelty：本项目不能只声称“第一个 approximate divmul”，而应强调
  tangent-plane OADM 公式、FP32 ASIC mapping、runtime/fixed-level comparison 和
  bit-exact sharing ablation。

## 9. Related Approximate-Arithmetic Background

以下论文用于 literature review 或选择比较指标，没有直接形成当前优化 RTL。

### ApproxLP

- M. Imani et al., “ApproxLP: Approximate Multiplication with Linearization and
  Iterative Error Control,” DAC, 2019.
- Status: **Background only**
- 用途：理解 piece-wise/iterative approximate multiplier 的 accuracy-cost tradeoff，
  并用于说明 OAM/OADM 相对于早期 linear approximation 的定位。

### Near-Zero-Bias Approximate Dividers

- H. Saadat et al., “Approximate Integer and Floating-Point Dividers with
  Near-Zero Error Bias,” DAC, 2019.
- Status: **Background only**
- 用途：说明 divider evaluation 不应只看平均绝对误差，也要关注 relative error 和
  error bias；没有复制其 divider datapath。

### IEEE 754-2019

- *IEEE Standard for Floating-Point Arithmetic*, IEEE Std 754-2019.
- DOI: [10.1109/IEEESTD.2019.8766229](https://doi.org/10.1109/IEEESTD.2019.8766229)
- Status: **Interface/reference semantics**
- 用途：定义 FP32 sign/exponent/fraction decomposition 和 special-value terminology。
  当前 OADM 会 flush subnormal，并采用截断而非完整 round-to-nearest-even，因此论文中
  不能把实现描述成 full IEEE-754 compliant。

## 10. Project-Original Optimizations

以下优化是本项目在上述理论与综合实验基础上自行推导的，不应错误归因给某一篇外部
论文：

- **Factored midpoint product**：将 `(17 + 2a)(17 + 2b)` 展开为
  `289 + 34(a + b) + 4ab`，减少 L3 critical-path multiplication complexity。
- **Centered residual plane**：把 mantissa 表示为 interval midpoint 加 signed residual，
  将两个 24x5 products bit-exact 地缩小为两个 20x5 products。
- **Subtractor-free residual recentering**：识别出 interval 内的 midpoint subtraction
  等价于 offset-binary residual 的 MSB inversion，以纯 wiring 替代显式减法；该改写
  对 L3 的时序有收益，并保持所有 tested outputs bit-exact。
- **Centered index factorization**：进一步利用 `midpoint = 17 + 2*index`，得到介于
  delay winner 与 area/power winner 之间的 Pareto point。
- **Post-scale correction relocation**：在保持 tested output bit-exact 的前提下调整
  correction 所在 arithmetic boundary，缩短关键路径。
- **Pipeline payload liveness optimization**：每一级只寄存后续仍会使用的 metadata，
  删除 dead pipeline bits，在不改变公式和 accuracy 的情况下减少寄存器面积/功耗。
- **PACE-I/O cone isolation**：为公平 divider-only 对比，仅综合 normal finite FP32 DIV
  所需 cone；这是 comparison wrapper，不是对完整 OADM 功能面积的虚假削减。

这些优化均要求经过 RTL bit-exact regression、同一 TSMC65 DC synthesis 和 PrimeTime
检查后才被记为正向结果。当前 L3 Pareto 数据及对应报告见
[`pt_dc/pace_oadm_compare/README.md`](pt_dc/pace_oadm_compare/README.md)。

## 11. Bit-Width-Aware Datapath Optimization

**References**

- J. Cong et al., “Bitwidth-Aware Scheduling and Binding in High-Level
  Synthesis,” ASP-DAC, 2005. DOI:
  [10.1109/ASPDAC.2005.1466476](https://doi.org/10.1109/ASPDAC.2005.1466476)
- A. C. I. Malerba et al., “Automatic Datapath Optimization using E-Graphs,”
  arXiv:2204.11478, 2022. [Preprint](https://arxiv.org/abs/2204.11478)
- Status: **Applied methodology; project-original RTL identity**

**Used in this project**

- 这些工作支持按真实消费位宽和 arithmetic identity 探索等价 datapath，而不是统一
  使用最宽 operator；每个候选仍由当前 DC/PT library mapping 决定是否保留。
- 基于该原则测试了 23-bit normalization mux 和 exact split high-product。前者被 DC
  自动优化成相同网表，后者面积增加 4.58%，因此都未进入最终 RTL。
- 最终保留的是 subtractor-free residual recentering：它不降低位宽精度，而是把
  midpoint subtraction 识别为一位编码转换。

**Effect**

- Fixed L3 PT delay 从 4.98826 ns 降至 4.82341 ns；面积从 4767.48 增至
  4773.24 um^2，vectorless power 从 0.229574 增至 0.230443 mW。
- Fixed L0-L2 与 runtime-configurable mapping 不变，完整 200,000-vector regression
  bit-exact PASS。详细记录见 `optimization_branches/final-opt/`。

## Citation and Claiming Rules

- 跨工艺论文数字（例如 PACE UMC40 与本项目 TSMC65）只能作为 published reference，
  不应直接计算百分比 improvement。
- “Inspired by” 不等于“implemented”：RAPID、SIMDive 和 constant-multiplier papers 的
  FPGA/algorithm-specific architecture 不应被描述成当前 RTL 的直接组成部分。
- 被综合淘汰的 RSCM、specialized CSD 和 hand-written CSA experiments 可以作为 design
  exploration negative results，但不能写成最终设计的 PPA contribution。
- 当前正式 PPA 百分比必须来自相同 library、constraints、wrapper scope 和 activity
  assumptions 的本地 reports。
