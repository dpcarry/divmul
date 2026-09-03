-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
-- Date        : Thu Mar 25 21:08:48 2021
-- Host        : athena running 64-bit unknown
-- Command     : write_vhdl -force -mode funcsim top_wrapper_netlist.vhd
-- Design      : top_wrapper
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7vx485tffg1761-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity adder is
  port (
    O : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \prod_reg[16]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \prod_reg[11]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \prod_reg[16]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \prod_reg[16]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    DI : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    \b_reg_reg[7]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    func_reg_reg : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \b_reg_reg[11]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \b_reg_reg[12]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \b_reg_reg[13]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    func_reg_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \b_reg_reg[13]_0\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \b_reg_reg[5]\ : in STD_LOGIC;
    \b_reg_reg[2]\ : in STD_LOGIC;
    \b_reg_reg[6]\ : in STD_LOGIC;
    \b_reg_reg[7]_0\ : in STD_LOGIC;
    \b_reg_reg[6]_0\ : in STD_LOGIC;
    \b_reg_reg[7]_1\ : in STD_LOGIC;
    \b_reg_reg[10]\ : in STD_LOGIC;
    \b_reg_reg[11]_0\ : in STD_LOGIC;
    \b_reg_reg[12]_0\ : in STD_LOGIC
  );
end adder;

architecture STRUCTURE of adder is
  signal \prod[16]_i_41_n_0\ : STD_LOGIC;
  signal \prod[16]_i_42_n_0\ : STD_LOGIC;
  signal \prod[27]_i_23_n_0\ : STD_LOGIC;
  signal \prod[27]_i_24_n_0\ : STD_LOGIC;
  signal \prod[27]_i_25_n_0\ : STD_LOGIC;
  signal \prod[27]_i_26_n_0\ : STD_LOGIC;
  signal \prod[29]_i_25_n_0\ : STD_LOGIC;
  signal \prod[29]_i_26_n_0\ : STD_LOGIC;
  signal \prod[29]_i_27_n_0\ : STD_LOGIC;
  signal \prod[30]_i_23_n_0\ : STD_LOGIC;
  signal \prod_reg[16]_i_33_n_0\ : STD_LOGIC;
  signal \prod_reg[27]_i_14_n_0\ : STD_LOGIC;
  signal \prod_reg[29]_i_14_n_0\ : STD_LOGIC;
  signal \prod_reg[30]_i_20_n_0\ : STD_LOGIC;
  signal \NLW_prod_reg[16]_i_33_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_prod_reg[27]_i_14_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_prod_reg[29]_i_14_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_prod_reg[30]_i_20_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_prod_reg[30]_i_20_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
\prod[16]_i_41\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1D1D1DE2E21DE2E2"
    )
        port map (
      I0 => \b_reg_reg[6]\,
      I1 => \b_reg_reg[2]\,
      I2 => \b_reg_reg[7]_0\,
      I3 => func_reg_reg_0(0),
      I4 => \out\(4),
      I5 => \b_reg_reg[13]_0\(4),
      O => \prod[16]_i_41_n_0\
    );
\prod[16]_i_42\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1D1D1DE2E21DE2E2"
    )
        port map (
      I0 => \b_reg_reg[5]\,
      I1 => \b_reg_reg[2]\,
      I2 => \b_reg_reg[6]\,
      I3 => func_reg_reg_0(0),
      I4 => \out\(3),
      I5 => \b_reg_reg[13]_0\(3),
      O => \prod[16]_i_42_n_0\
    );
\prod[27]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1D1D1DE2E21DE2E2"
    )
        port map (
      I0 => \b_reg_reg[10]\,
      I1 => \b_reg_reg[2]\,
      I2 => \b_reg_reg[11]_0\,
      I3 => func_reg_reg_0(0),
      I4 => \out\(8),
      I5 => \b_reg_reg[13]_0\(8),
      O => \prod[27]_i_23_n_0\
    );
\prod[27]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1D1D1DE2E21DE2E2"
    )
        port map (
      I0 => \b_reg_reg[7]_1\,
      I1 => \b_reg_reg[2]\,
      I2 => \b_reg_reg[10]\,
      I3 => func_reg_reg_0(0),
      I4 => \out\(7),
      I5 => \b_reg_reg[13]_0\(7),
      O => \prod[27]_i_24_n_0\
    );
\prod[27]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1D1D1DE2E21DE2E2"
    )
        port map (
      I0 => \b_reg_reg[6]_0\,
      I1 => \b_reg_reg[2]\,
      I2 => \b_reg_reg[7]_1\,
      I3 => func_reg_reg_0(0),
      I4 => \out\(6),
      I5 => \b_reg_reg[13]_0\(6),
      O => \prod[27]_i_25_n_0\
    );
\prod[27]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1D1D1DE2E21DE2E2"
    )
        port map (
      I0 => \b_reg_reg[7]_0\,
      I1 => \b_reg_reg[2]\,
      I2 => \b_reg_reg[6]_0\,
      I3 => func_reg_reg_0(0),
      I4 => \out\(5),
      I5 => \b_reg_reg[13]_0\(5),
      O => \prod[27]_i_26_n_0\
    );
\prod[29]_i_25\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"569A"
    )
        port map (
      I0 => DI(2),
      I1 => func_reg_reg_0(0),
      I2 => \out\(2),
      I3 => \b_reg_reg[13]_0\(2),
      O => \prod[29]_i_25_n_0\
    );
\prod[29]_i_26\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"569A"
    )
        port map (
      I0 => DI(1),
      I1 => func_reg_reg_0(0),
      I2 => \out\(1),
      I3 => \b_reg_reg[13]_0\(1),
      O => \prod[29]_i_26_n_0\
    );
\prod[29]_i_27\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"569A"
    )
        port map (
      I0 => DI(0),
      I1 => func_reg_reg_0(0),
      I2 => \out\(0),
      I3 => \b_reg_reg[13]_0\(0),
      O => \prod[29]_i_27_n_0\
    );
\prod[30]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => func_reg_reg_0(0),
      I1 => \prod_reg[30]_i_20_n_0\,
      O => \prod_reg[16]_1\(0)
    );
\prod[30]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1D1D1DE2E21DE2E2"
    )
        port map (
      I0 => \b_reg_reg[11]_0\,
      I1 => \b_reg_reg[2]\,
      I2 => \b_reg_reg[12]_0\,
      I3 => func_reg_reg_0(0),
      I4 => \out\(9),
      I5 => \b_reg_reg[13]_0\(9),
      O => \prod[30]_i_23_n_0\
    );
\prod_reg[16]_i_33\: unisim.vcomponents.CARRY4
     port map (
      CI => \prod_reg[29]_i_14_n_0\,
      CO(3) => \prod_reg[16]_i_33_n_0\,
      CO(2 downto 0) => \NLW_prod_reg[16]_i_33_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => \b_reg_reg[7]\(3 downto 0),
      O(3 downto 0) => \prod_reg[16]\(3 downto 0),
      S(3) => \prod[16]_i_41_n_0\,
      S(2) => \prod[16]_i_42_n_0\,
      S(1 downto 0) => func_reg_reg(1 downto 0)
    );
\prod_reg[27]_i_14\: unisim.vcomponents.CARRY4
     port map (
      CI => \prod_reg[16]_i_33_n_0\,
      CO(3) => \prod_reg[27]_i_14_n_0\,
      CO(2 downto 0) => \NLW_prod_reg[27]_i_14_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => \b_reg_reg[11]\(3 downto 0),
      O(3 downto 0) => \prod_reg[11]\(3 downto 0),
      S(3) => \prod[27]_i_23_n_0\,
      S(2) => \prod[27]_i_24_n_0\,
      S(1) => \prod[27]_i_25_n_0\,
      S(0) => \prod[27]_i_26_n_0\
    );
\prod_reg[29]_i_14\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \prod_reg[29]_i_14_n_0\,
      CO(2 downto 0) => \NLW_prod_reg[29]_i_14_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => DI(3 downto 0),
      O(3 downto 0) => O(3 downto 0),
      S(3) => S(0),
      S(2) => \prod[29]_i_25_n_0\,
      S(1) => \prod[29]_i_26_n_0\,
      S(0) => \prod[29]_i_27_n_0\
    );
\prod_reg[30]_i_20\: unisim.vcomponents.CARRY4
     port map (
      CI => \prod_reg[27]_i_14_n_0\,
      CO(3) => \prod_reg[30]_i_20_n_0\,
      CO(2 downto 0) => \NLW_prod_reg[30]_i_20_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \b_reg_reg[12]\(0),
      O(3) => \NLW_prod_reg[30]_i_20_O_UNCONNECTED\(3),
      O(2 downto 0) => \prod_reg[16]_0\(2 downto 0),
      S(3) => '1',
      S(2 downto 1) => \b_reg_reg[13]\(1 downto 0),
      S(0) => \prod[30]_i_23_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity adder_0 is
  port (
    \prod_reg[16]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \prod_reg[16]_0\ : out STD_LOGIC;
    \prod_reg[16]_1\ : out STD_LOGIC;
    \prod_reg[16]_2\ : out STD_LOGIC;
    \prod_reg[16]_3\ : out STD_LOGIC;
    DI : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \prod_reg[16]_4\ : out STD_LOGIC;
    \prod_reg[16]_5\ : out STD_LOGIC;
    \prod_reg[16]_6\ : out STD_LOGIC;
    \prod_reg[16]_7\ : out STD_LOGIC;
    \prod_reg[16]_8\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \prod_reg[16]_9\ : out STD_LOGIC;
    \prod_reg[16]_10\ : out STD_LOGIC;
    \prod_reg[16]_11\ : out STD_LOGIC;
    \prod_reg[11]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \prod_reg[11]_0\ : out STD_LOGIC;
    \prod_reg[11]_1\ : out STD_LOGIC;
    \prod_reg[11]_2\ : out STD_LOGIC;
    \prod_reg[11]_3\ : out STD_LOGIC;
    \prod_reg[16]_12\ : out STD_LOGIC;
    \prod_reg[16]_13\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \prod_reg[16]_14\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \prod_reg[11]_4\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \prod_reg[16]_15\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    \prod_reg[16]_16\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \prod_reg[16]_17\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \out\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \prod_reg[16]_18\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \b_reg_reg[15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \a_reg_reg[0]\ : in STD_LOGIC;
    func_reg_reg : in STD_LOGIC_VECTOR ( 3 downto 0 );
    func_reg_reg_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    func_reg_reg_1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    func_reg_reg_2 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    func_reg_reg_3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    func_reg_reg_4 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    O : in STD_LOGIC_VECTOR ( 3 downto 0 );
    func_reg_reg_5 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    func_reg_reg_6 : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of adder_0 : entity is "adder";
end adder_0;

architecture STRUCTURE of adder_0 is
  signal g0_b0_i_10_n_0 : STD_LOGIC;
  signal g0_b0_i_12_n_0 : STD_LOGIC;
  signal g0_b0_i_13_n_0 : STD_LOGIC;
  signal g0_b0_i_14_n_0 : STD_LOGIC;
  signal g0_b0_i_15_n_0 : STD_LOGIC;
  signal g0_b0_i_17_n_0 : STD_LOGIC;
  signal g0_b0_i_18_n_0 : STD_LOGIC;
  signal g0_b0_i_19_n_0 : STD_LOGIC;
  signal g0_b0_i_21_n_0 : STD_LOGIC;
  signal g0_b0_i_22_n_0 : STD_LOGIC;
  signal g0_b0_i_24_n_0 : STD_LOGIC;
  signal g0_b0_i_25_n_0 : STD_LOGIC;
  signal g0_b0_i_26_n_0 : STD_LOGIC;
  signal g0_b0_i_27_n_0 : STD_LOGIC;
  signal g0_b0_i_28_n_0 : STD_LOGIC;
  signal g0_b0_i_30_n_0 : STD_LOGIC;
  signal g0_b0_i_31_n_0 : STD_LOGIC;
  signal g0_b0_i_32_n_0 : STD_LOGIC;
  signal g0_b0_i_33_n_0 : STD_LOGIC;
  signal g0_b0_i_34_n_0 : STD_LOGIC;
  signal g0_b0_i_35_n_0 : STD_LOGIC;
  signal \g0_b3__0_n_0\ : STD_LOGIC;
  signal g0_b3_n_0 : STD_LOGIC;
  signal \g0_b4__0_n_0\ : STD_LOGIC;
  signal g0_b4_n_0 : STD_LOGIC;
  signal \g0_b5__0_n_0\ : STD_LOGIC;
  signal g0_b5_n_0 : STD_LOGIC;
  signal \inst_loda/lgN4.a_var__8\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \inst_lodb/lgN4.a_var__8\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \lgN4.lod_detected\ : STD_LOGIC;
  signal \lgN4.lod_detected__0\ : STD_LOGIC;
  signal lod_pos_return : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \lod_pos_return__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \prod[16]_i_11_n_0\ : STD_LOGIC;
  signal \prod[16]_i_14_n_0\ : STD_LOGIC;
  signal \prod[16]_i_28_n_0\ : STD_LOGIC;
  signal \prod[16]_i_29_n_0\ : STD_LOGIC;
  signal \prod[16]_i_30_n_0\ : STD_LOGIC;
  signal \prod[16]_i_31_n_0\ : STD_LOGIC;
  signal \prod[16]_i_34_n_0\ : STD_LOGIC;
  signal \prod[16]_i_35_n_0\ : STD_LOGIC;
  signal \prod[16]_i_36_n_0\ : STD_LOGIC;
  signal \prod[16]_i_45_n_0\ : STD_LOGIC;
  signal \prod[16]_i_48_n_0\ : STD_LOGIC;
  signal \prod[16]_i_49_n_0\ : STD_LOGIC;
  signal \prod[27]_i_10_n_0\ : STD_LOGIC;
  signal \prod[27]_i_11_n_0\ : STD_LOGIC;
  signal \prod[27]_i_12_n_0\ : STD_LOGIC;
  signal \prod[27]_i_13_n_0\ : STD_LOGIC;
  signal \prod[27]_i_15_n_0\ : STD_LOGIC;
  signal \prod[27]_i_16_n_0\ : STD_LOGIC;
  signal \prod[27]_i_17_n_0\ : STD_LOGIC;
  signal \prod[27]_i_18_n_0\ : STD_LOGIC;
  signal \prod[27]_i_27_n_0\ : STD_LOGIC;
  signal \prod[27]_i_28_n_0\ : STD_LOGIC;
  signal \prod[27]_i_33_n_0\ : STD_LOGIC;
  signal \prod[27]_i_34_n_0\ : STD_LOGIC;
  signal \prod[29]_i_10_n_0\ : STD_LOGIC;
  signal \prod[29]_i_11_n_0\ : STD_LOGIC;
  signal \prod[29]_i_12_n_0\ : STD_LOGIC;
  signal \prod[29]_i_15_n_0\ : STD_LOGIC;
  signal \prod[29]_i_16_n_0\ : STD_LOGIC;
  signal \prod[29]_i_17_n_0\ : STD_LOGIC;
  signal \prod[29]_i_18_n_0\ : STD_LOGIC;
  signal \prod[29]_i_19_n_0\ : STD_LOGIC;
  signal \prod[29]_i_28_n_0\ : STD_LOGIC;
  signal \prod[29]_i_29_n_0\ : STD_LOGIC;
  signal \prod[30]_i_13_n_0\ : STD_LOGIC;
  signal \prod[30]_i_17_n_0\ : STD_LOGIC;
  signal \prod[30]_i_18_n_0\ : STD_LOGIC;
  signal \prod[30]_i_19_n_0\ : STD_LOGIC;
  signal \^prod_reg[11]_0\ : STD_LOGIC;
  signal \^prod_reg[11]_1\ : STD_LOGIC;
  signal \^prod_reg[11]_2\ : STD_LOGIC;
  signal \^prod_reg[11]_3\ : STD_LOGIC;
  signal \^prod_reg[16]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^prod_reg[16]_0\ : STD_LOGIC;
  signal \^prod_reg[16]_1\ : STD_LOGIC;
  signal \^prod_reg[16]_10\ : STD_LOGIC;
  signal \^prod_reg[16]_11\ : STD_LOGIC;
  signal \^prod_reg[16]_12\ : STD_LOGIC;
  signal \^prod_reg[16]_2\ : STD_LOGIC;
  signal \^prod_reg[16]_3\ : STD_LOGIC;
  signal \^prod_reg[16]_4\ : STD_LOGIC;
  signal \^prod_reg[16]_5\ : STD_LOGIC;
  signal \^prod_reg[16]_6\ : STD_LOGIC;
  signal \^prod_reg[16]_7\ : STD_LOGIC;
  signal \^prod_reg[16]_9\ : STD_LOGIC;
  signal \prod_reg[16]_i_17_n_0\ : STD_LOGIC;
  signal \prod_reg[27]_i_5_n_0\ : STD_LOGIC;
  signal \prod_reg[29]_i_5_n_0\ : STD_LOGIC;
  signal sel : STD_LOGIC_VECTOR ( 5 downto 1 );
  signal \NLW_prod_reg[16]_i_17_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_prod_reg[27]_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_prod_reg[29]_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_prod_reg[30]_i_12_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  \prod_reg[11]_0\ <= \^prod_reg[11]_0\;
  \prod_reg[11]_1\ <= \^prod_reg[11]_1\;
  \prod_reg[11]_2\ <= \^prod_reg[11]_2\;
  \prod_reg[11]_3\ <= \^prod_reg[11]_3\;
  \prod_reg[16]\(0) <= \^prod_reg[16]\(0);
  \prod_reg[16]_0\ <= \^prod_reg[16]_0\;
  \prod_reg[16]_1\ <= \^prod_reg[16]_1\;
  \prod_reg[16]_10\ <= \^prod_reg[16]_10\;
  \prod_reg[16]_11\ <= \^prod_reg[16]_11\;
  \prod_reg[16]_12\ <= \^prod_reg[16]_12\;
  \prod_reg[16]_2\ <= \^prod_reg[16]_2\;
  \prod_reg[16]_3\ <= \^prod_reg[16]_3\;
  \prod_reg[16]_4\ <= \^prod_reg[16]_4\;
  \prod_reg[16]_5\ <= \^prod_reg[16]_5\;
  \prod_reg[16]_6\ <= \^prod_reg[16]_6\;
  \prod_reg[16]_7\ <= \^prod_reg[16]_7\;
  \prod_reg[16]_9\ <= \^prod_reg[16]_9\;
g0_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A64BFA7A90D7F0B"
    )
        port map (
      I0 => \^prod_reg[16]\(0),
      I1 => sel(1),
      I2 => sel(2),
      I3 => sel(3),
      I4 => sel(4),
      I5 => sel(5),
      O => \out\(0)
    );
\g0_b0__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9500008000800183"
    )
        port map (
      I0 => \^prod_reg[16]\(0),
      I1 => sel(1),
      I2 => sel(2),
      I3 => sel(3),
      I4 => sel(4),
      I5 => sel(5),
      O => \prod_reg[16]_18\(0)
    );
g0_b0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^prod_reg[16]_12\,
      I1 => \^prod_reg[16]_4\,
      I2 => \^prod_reg[11]_3\,
      O => \^prod_reg[16]\(0)
    );
g0_b0_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \b_reg_reg[15]\(13),
      I1 => \b_reg_reg[15]\(5),
      I2 => \^prod_reg[16]_5\,
      I3 => \b_reg_reg[15]\(9),
      I4 => \^prod_reg[16]_6\,
      I5 => \b_reg_reg[15]\(1),
      O => g0_b0_i_10_n_0
    );
g0_b0_i_11: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \lgN4.lod_detected__0\,
      I1 => g0_b0_i_26_n_0,
      I2 => g0_b0_i_25_n_0,
      O => \^prod_reg[16]_7\
    );
g0_b0_i_12: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \b_reg_reg[15]\(11),
      I1 => \b_reg_reg[15]\(3),
      I2 => \^prod_reg[16]_5\,
      I3 => \^prod_reg[16]_6\,
      I4 => \b_reg_reg[15]\(7),
      O => g0_b0_i_12_n_0
    );
g0_b0_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \b_reg_reg[15]\(14),
      I1 => \b_reg_reg[15]\(6),
      I2 => \^prod_reg[16]_5\,
      I3 => \b_reg_reg[15]\(10),
      I4 => \^prod_reg[16]_6\,
      I5 => \b_reg_reg[15]\(2),
      O => g0_b0_i_13_n_0
    );
g0_b0_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \b_reg_reg[15]\(12),
      I1 => \b_reg_reg[15]\(4),
      I2 => \^prod_reg[16]_5\,
      I3 => \b_reg_reg[15]\(8),
      I4 => \^prod_reg[16]_6\,
      I5 => \b_reg_reg[15]\(0),
      O => g0_b0_i_14_n_0
    );
g0_b0_i_15: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => g0_b0_i_21_n_0,
      I1 => \^prod_reg[16]_1\,
      I2 => g0_b0_i_28_n_0,
      O => g0_b0_i_15_n_0
    );
g0_b0_i_16: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA08"
    )
        port map (
      I0 => \lgN4.lod_detected\,
      I1 => g0_b0_i_30_n_0,
      I2 => g0_b0_i_31_n_0,
      I3 => g0_b0_i_32_n_0,
      O => \^prod_reg[16]_0\
    );
g0_b0_i_17: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => g0_b0_i_33_n_0,
      I1 => \^prod_reg[16]_1\,
      I2 => g0_b0_i_34_n_0,
      O => g0_b0_i_17_n_0
    );
g0_b0_i_18: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => g0_b0_i_35_n_0,
      I1 => \^prod_reg[16]_1\,
      I2 => g0_b0_i_33_n_0,
      O => g0_b0_i_18_n_0
    );
g0_b0_i_19: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Q(14),
      I1 => Q(6),
      I2 => \^prod_reg[16]_3\,
      I3 => Q(10),
      I4 => \^prod_reg[16]_2\,
      I5 => Q(2),
      O => g0_b0_i_19_n_0
    );
g0_b0_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => g0_b0_i_10_n_0,
      I1 => \^prod_reg[16]_7\,
      I2 => g0_b0_i_12_n_0,
      I3 => \^prod_reg[16]_4\,
      I4 => \^prod_reg[16]_12\,
      O => sel(1)
    );
g0_b0_i_20: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \lgN4.lod_detected\,
      I1 => g0_b0_i_32_n_0,
      I2 => g0_b0_i_31_n_0,
      O => \^prod_reg[16]_1\
    );
g0_b0_i_21: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Q(12),
      I1 => Q(4),
      I2 => \^prod_reg[16]_3\,
      I3 => Q(8),
      I4 => \^prod_reg[16]_2\,
      I5 => Q(0),
      O => g0_b0_i_21_n_0
    );
g0_b0_i_22: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \b_reg_reg[15]\(10),
      I1 => \b_reg_reg[15]\(2),
      I2 => \^prod_reg[16]_5\,
      I3 => \^prod_reg[16]_6\,
      I4 => \b_reg_reg[15]\(6),
      O => g0_b0_i_22_n_0
    );
g0_b0_i_23: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \lod_pos_return__0\(1),
      I1 => \b_reg_reg[15]\(2),
      I2 => \b_reg_reg[15]\(1),
      I3 => \b_reg_reg[15]\(3),
      I4 => \b_reg_reg[15]\(0),
      I5 => \inst_lodb/lgN4.a_var__8\(1),
      O => \lgN4.lod_detected__0\
    );
g0_b0_i_24: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \b_reg_reg[15]\(13),
      I1 => \b_reg_reg[15]\(5),
      I2 => \lod_pos_return__0\(0),
      I3 => \b_reg_reg[15]\(9),
      I4 => \lod_pos_return__0\(1),
      I5 => \b_reg_reg[15]\(1),
      O => g0_b0_i_24_n_0
    );
g0_b0_i_25: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \b_reg_reg[15]\(14),
      I1 => \b_reg_reg[15]\(6),
      I2 => \lod_pos_return__0\(0),
      I3 => \b_reg_reg[15]\(10),
      I4 => \lod_pos_return__0\(1),
      I5 => \b_reg_reg[15]\(2),
      O => g0_b0_i_25_n_0
    );
g0_b0_i_26: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \b_reg_reg[15]\(15),
      I1 => \b_reg_reg[15]\(7),
      I2 => \lod_pos_return__0\(0),
      I3 => \b_reg_reg[15]\(11),
      I4 => \lod_pos_return__0\(1),
      I5 => \b_reg_reg[15]\(3),
      O => g0_b0_i_26_n_0
    );
g0_b0_i_27: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \b_reg_reg[15]\(9),
      I1 => \b_reg_reg[15]\(1),
      I2 => \^prod_reg[16]_5\,
      I3 => \^prod_reg[16]_6\,
      I4 => \b_reg_reg[15]\(5),
      O => g0_b0_i_27_n_0
    );
g0_b0_i_28: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => Q(10),
      I1 => Q(2),
      I2 => \^prod_reg[16]_3\,
      I3 => \^prod_reg[16]_2\,
      I4 => Q(6),
      O => g0_b0_i_28_n_0
    );
g0_b0_i_29: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => lod_pos_return(1),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(3),
      I4 => Q(0),
      I5 => \inst_loda/lgN4.a_var__8\(1),
      O => \lgN4.lod_detected\
    );
g0_b0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF33CC00B8B8B8B8"
    )
        port map (
      I0 => g0_b0_i_10_n_0,
      I1 => \^prod_reg[16]_7\,
      I2 => g0_b0_i_12_n_0,
      I3 => g0_b0_i_13_n_0,
      I4 => g0_b0_i_14_n_0,
      I5 => \^prod_reg[16]_4\,
      O => sel(2)
    );
g0_b0_i_30: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Q(13),
      I1 => Q(5),
      I2 => lod_pos_return(0),
      I3 => Q(9),
      I4 => lod_pos_return(1),
      I5 => Q(1),
      O => g0_b0_i_30_n_0
    );
g0_b0_i_31: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Q(14),
      I1 => Q(6),
      I2 => lod_pos_return(0),
      I3 => Q(10),
      I4 => lod_pos_return(1),
      I5 => Q(2),
      O => g0_b0_i_31_n_0
    );
g0_b0_i_32: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Q(15),
      I1 => Q(7),
      I2 => lod_pos_return(0),
      I3 => Q(11),
      I4 => lod_pos_return(1),
      I5 => Q(3),
      O => g0_b0_i_32_n_0
    );
g0_b0_i_33: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => Q(11),
      I1 => Q(3),
      I2 => \^prod_reg[16]_3\,
      I3 => \^prod_reg[16]_2\,
      I4 => Q(7),
      O => g0_b0_i_33_n_0
    );
g0_b0_i_34: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => Q(9),
      I1 => Q(1),
      I2 => \^prod_reg[16]_3\,
      I3 => \^prod_reg[16]_2\,
      I4 => Q(5),
      O => g0_b0_i_34_n_0
    );
g0_b0_i_35: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Q(13),
      I1 => Q(5),
      I2 => \^prod_reg[16]_3\,
      I3 => Q(9),
      I4 => \^prod_reg[16]_2\,
      I5 => Q(1),
      O => g0_b0_i_35_n_0
    );
g0_b0_i_36: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \b_reg_reg[15]\(6),
      I1 => \b_reg_reg[15]\(5),
      I2 => \b_reg_reg[15]\(7),
      I3 => \b_reg_reg[15]\(4),
      O => \inst_lodb/lgN4.a_var__8\(1)
    );
g0_b0_i_37: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Q(6),
      I1 => Q(5),
      I2 => Q(7),
      I3 => Q(4),
      O => \inst_loda/lgN4.a_var__8\(1)
    );
g0_b0_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => g0_b0_i_15_n_0,
      I1 => \^prod_reg[16]_0\,
      I2 => g0_b0_i_17_n_0,
      O => sel(3)
    );
g0_b0_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => g0_b0_i_18_n_0,
      I1 => \^prod_reg[16]_0\,
      I2 => g0_b0_i_15_n_0,
      O => sel(4)
    );
g0_b0_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => g0_b0_i_19_n_0,
      I1 => \^prod_reg[16]_1\,
      I2 => g0_b0_i_21_n_0,
      I3 => \^prod_reg[16]_0\,
      I4 => g0_b0_i_18_n_0,
      O => sel(5)
    );
g0_b0_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => g0_b0_i_14_n_0,
      I1 => \^prod_reg[16]_7\,
      I2 => g0_b0_i_22_n_0,
      O => \^prod_reg[16]_12\
    );
g0_b0_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA08"
    )
        port map (
      I0 => \lgN4.lod_detected__0\,
      I1 => g0_b0_i_24_n_0,
      I2 => g0_b0_i_25_n_0,
      I3 => g0_b0_i_26_n_0,
      O => \^prod_reg[16]_4\
    );
g0_b0_i_9: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => g0_b0_i_12_n_0,
      I1 => \^prod_reg[16]_7\,
      I2 => g0_b0_i_27_n_0,
      O => \^prod_reg[11]_3\
    );
g0_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A4D128BDD30E891E"
    )
        port map (
      I0 => \^prod_reg[16]\(0),
      I1 => sel(1),
      I2 => sel(2),
      I3 => sel(3),
      I4 => sel(4),
      I5 => sel(5),
      O => \out\(1)
    );
g0_b10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F2F110E72481800"
    )
        port map (
      I0 => \^prod_reg[16]\(0),
      I1 => sel(1),
      I2 => sel(2),
      I3 => sel(3),
      I4 => sel(4),
      I5 => sel(5),
      O => \out\(7)
    );
\g0_b10__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00396D566C3A1460"
    )
        port map (
      I0 => \^prod_reg[16]\(0),
      I1 => sel(1),
      I2 => sel(2),
      I3 => sel(3),
      I4 => sel(4),
      I5 => sel(5),
      O => \prod_reg[16]_18\(7)
    );
g0_b11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"221E0E0000307C42"
    )
        port map (
      I0 => \^prod_reg[16]\(0),
      I1 => sel(1),
      I2 => sel(2),
      I3 => sel(3),
      I4 => sel(4),
      I5 => sel(5),
      O => \out\(8)
    );
\g0_b11__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00061E32266C7800"
    )
        port map (
      I0 => \^prod_reg[16]\(0),
      I1 => sel(1),
      I2 => sel(2),
      I3 => sel(3),
      I4 => sel(4),
      I5 => sel(5),
      O => \prod_reg[16]_18\(8)
    );
g0_b12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1C0000000000003C"
    )
        port map (
      I0 => \^prod_reg[16]\(0),
      I1 => sel(1),
      I2 => sel(2),
      I3 => sel(3),
      I4 => sel(4),
      I5 => sel(5),
      O => \out\(9)
    );
\g0_b12__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000C18100000"
    )
        port map (
      I0 => \^prod_reg[16]\(0),
      I1 => sel(1),
      I2 => sel(2),
      I3 => sel(3),
      I4 => sel(4),
      I5 => sel(5),
      O => \prod_reg[16]_18\(9)
    );
\g0_b1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"155100C1008206D0"
    )
        port map (
      I0 => \^prod_reg[16]\(0),
      I1 => sel(1),
      I2 => sel(2),
      I3 => sel(3),
      I4 => sel(4),
      I5 => sel(5),
      O => \prod_reg[16]_18\(1)
    );
g0_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4A11F0731238F80C"
    )
        port map (
      I0 => \^prod_reg[16]\(0),
      I1 => sel(1),
      I2 => sel(2),
      I3 => sel(3),
      I4 => sel(4),
      I5 => sel(5),
      O => \out\(2)
    );
\g0_b2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0102021002046983"
    )
        port map (
      I0 => \^prod_reg[16]\(0),
      I1 => sel(1),
      I2 => sel(2),
      I3 => sel(3),
      I4 => sel(4),
      I5 => sel(5),
      O => \prod_reg[16]_18\(2)
    );
g0_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"26A042B57AFE0544"
    )
        port map (
      I0 => \^prod_reg[16]\(0),
      I1 => sel(1),
      I2 => sel(2),
      I3 => sel(3),
      I4 => sel(4),
      I5 => sel(5),
      O => g0_b3_n_0
    );
\g0_b3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0018127B50013317"
    )
        port map (
      I0 => \^prod_reg[16]\(0),
      I1 => sel(1),
      I2 => sel(2),
      I3 => sel(3),
      I4 => sel(4),
      I5 => sel(5),
      O => \g0_b3__0_n_0\
    );
g0_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2DE0013E2A2CD554"
    )
        port map (
      I0 => \^prod_reg[16]\(0),
      I1 => sel(1),
      I2 => sel(2),
      I3 => sel(3),
      I4 => sel(4),
      I5 => sel(5),
      O => g0_b4_n_0
    );
\g0_b4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"941900C3448C1251"
    )
        port map (
      I0 => \^prod_reg[16]\(0),
      I1 => sel(1),
      I2 => sel(2),
      I3 => sel(3),
      I4 => sel(4),
      I5 => sel(5),
      O => \g0_b4__0_n_0\
    );
g0_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"84D4CBAE34E3DD07"
    )
        port map (
      I0 => \^prod_reg[16]\(0),
      I1 => sel(1),
      I2 => sel(2),
      I3 => sel(3),
      I4 => sel(4),
      I5 => sel(5),
      O => g0_b5_n_0
    );
\g0_b5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D59211E2008553A7"
    )
        port map (
      I0 => \^prod_reg[16]\(0),
      I1 => sel(1),
      I2 => sel(2),
      I3 => sel(3),
      I4 => sel(4),
      I5 => sel(5),
      O => \g0_b5__0_n_0\
    );
g0_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E9D00EC736BD3C4E"
    )
        port map (
      I0 => \^prod_reg[16]\(0),
      I1 => sel(1),
      I2 => sel(2),
      I3 => sel(3),
      I4 => sel(4),
      I5 => sel(5),
      O => \out\(3)
    );
\g0_b6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"43812101050980FC"
    )
        port map (
      I0 => \^prod_reg[16]\(0),
      I1 => sel(1),
      I2 => sel(2),
      I3 => sel(3),
      I4 => sel(4),
      I5 => sel(5),
      O => \prod_reg[16]_18\(3)
    );
g0_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44106E366ED32542"
    )
        port map (
      I0 => \^prod_reg[16]\(0),
      I1 => sel(1),
      I2 => sel(2),
      I3 => sel(3),
      I4 => sel(4),
      I5 => sel(5),
      O => \out\(4)
    );
\g0_b7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7AC1A089940D8254"
    )
        port map (
      I0 => \^prod_reg[16]\(0),
      I1 => sel(1),
      I2 => sel(2),
      I3 => sel(3),
      I4 => sel(4),
      I5 => sel(5),
      O => \prod_reg[16]_18\(4)
    );
g0_b8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B259EED62D45B2CA"
    )
        port map (
      I0 => \^prod_reg[16]\(0),
      I1 => sel(1),
      I2 => sel(2),
      I3 => sel(3),
      I4 => sel(4),
      I5 => sel(5),
      O => \out\(5)
    );
\g0_b8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"361C90F046C98B06"
    )
        port map (
      I0 => \^prod_reg[16]\(0),
      I1 => sel(1),
      I2 => sel(2),
      I3 => sel(3),
      I4 => sel(4),
      I5 => sel(5),
      O => \prod_reg[16]_18\(5)
    );
g0_b9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"633E1467858AA010"
    )
        port map (
      I0 => \^prod_reg[16]\(0),
      I1 => sel(1),
      I2 => sel(2),
      I3 => sel(3),
      I4 => sel(4),
      I5 => sel(5),
      O => \out\(6)
    );
\g0_b9__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F4A2401C5AEC698"
    )
        port map (
      I0 => \^prod_reg[16]\(0),
      I1 => sel(1),
      I2 => sel(2),
      I3 => sel(3),
      I4 => sel(4),
      I5 => sel(5),
      O => \prod_reg[16]_18\(6)
    );
\prod[16]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \inst_lodb/lgN4.a_var__8\(1),
      I1 => \b_reg_reg[15]\(0),
      I2 => \b_reg_reg[15]\(3),
      I3 => \b_reg_reg[15]\(1),
      I4 => \b_reg_reg[15]\(2),
      O => \prod[16]_i_11_n_0\
    );
\prod[16]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \b_reg_reg[15]\(8),
      I1 => \b_reg_reg[15]\(11),
      I2 => \b_reg_reg[15]\(9),
      I3 => \b_reg_reg[15]\(10),
      I4 => \inst_lodb/lgN4.a_var__8\(3),
      O => \lod_pos_return__0\(1)
    );
\prod[16]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFEFFFE"
    )
        port map (
      I0 => \b_reg_reg[15]\(12),
      I1 => \b_reg_reg[15]\(15),
      I2 => \b_reg_reg[15]\(13),
      I3 => \b_reg_reg[15]\(14),
      I4 => \inst_lodb/lgN4.a_var__8\(2),
      I5 => \inst_lodb/lgN4.a_var__8\(1),
      O => \lod_pos_return__0\(0)
    );
\prod[16]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \inst_loda/lgN4.a_var__8\(1),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(1),
      I4 => Q(2),
      O => \prod[16]_i_14_n_0\
    );
\prod[16]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => Q(8),
      I1 => Q(11),
      I2 => Q(9),
      I3 => Q(10),
      I4 => \inst_loda/lgN4.a_var__8\(3),
      O => lod_pos_return(1)
    );
\prod[16]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFEFFFE"
    )
        port map (
      I0 => Q(12),
      I1 => Q(15),
      I2 => Q(13),
      I3 => Q(14),
      I4 => \inst_loda/lgN4.a_var__8\(2),
      I5 => \inst_loda/lgN4.a_var__8\(1),
      O => lod_pos_return(0)
    );
\prod[16]_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \b_reg_reg[15]\(14),
      I1 => \b_reg_reg[15]\(13),
      I2 => \b_reg_reg[15]\(15),
      I3 => \b_reg_reg[15]\(12),
      O => \inst_lodb/lgN4.a_var__8\(3)
    );
\prod[16]_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \b_reg_reg[15]\(10),
      I1 => \b_reg_reg[15]\(9),
      I2 => \b_reg_reg[15]\(11),
      I3 => \b_reg_reg[15]\(8),
      O => \inst_lodb/lgN4.a_var__8\(2)
    );
\prod[16]_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Q(14),
      I1 => Q(13),
      I2 => Q(15),
      I3 => Q(12),
      O => \inst_loda/lgN4.a_var__8\(3)
    );
\prod[16]_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Q(10),
      I1 => Q(9),
      I2 => Q(11),
      I3 => Q(8),
      O => \inst_loda/lgN4.a_var__8\(2)
    );
\prod[16]_i_28\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99966696"
    )
        port map (
      I0 => func_reg_reg_5(3),
      I1 => func_reg_reg(0),
      I2 => \prod[16]_i_34_n_0\,
      I3 => \^prod_reg[16]_0\,
      I4 => \prod[27]_i_18_n_0\,
      O => \prod[16]_i_28_n_0\
    );
\prod[16]_i_29\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99966696"
    )
        port map (
      I0 => func_reg_reg_5(2),
      I1 => func_reg_reg(0),
      I2 => \prod[16]_i_35_n_0\,
      I3 => \^prod_reg[16]_0\,
      I4 => \prod[16]_i_34_n_0\,
      O => \prod[16]_i_29_n_0\
    );
\prod[16]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \prod[16]_i_11_n_0\,
      I1 => \lod_pos_return__0\(1),
      I2 => \lod_pos_return__0\(0),
      O => \^prod_reg[16]_5\
    );
\prod[16]_i_30\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99966696"
    )
        port map (
      I0 => func_reg_reg_5(1),
      I1 => func_reg_reg(0),
      I2 => \prod[16]_i_36_n_0\,
      I3 => \^prod_reg[16]_0\,
      I4 => \prod[16]_i_35_n_0\,
      O => \prod[16]_i_30_n_0\
    );
\prod[16]_i_31\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99966696"
    )
        port map (
      I0 => func_reg_reg_5(0),
      I1 => func_reg_reg(0),
      I2 => \prod[29]_i_16_n_0\,
      I3 => \^prod_reg[16]_0\,
      I4 => \prod[16]_i_36_n_0\,
      O => \prod[16]_i_31_n_0\
    );
\prod[16]_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B080FFFFB0800000"
    )
        port map (
      I0 => Q(6),
      I1 => \^prod_reg[16]_3\,
      I2 => \^prod_reg[16]_2\,
      I3 => Q(2),
      I4 => \^prod_reg[16]_1\,
      I5 => \prod[16]_i_45_n_0\,
      O => \prod[16]_i_34_n_0\
    );
\prod[16]_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFC0A0C000000000"
    )
        port map (
      I0 => Q(5),
      I1 => Q(1),
      I2 => \^prod_reg[16]_1\,
      I3 => \^prod_reg[16]_3\,
      I4 => Q(3),
      I5 => \^prod_reg[16]_2\,
      O => \prod[16]_i_35_n_0\
    );
\prod[16]_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFC0A0C000000000"
    )
        port map (
      I0 => Q(4),
      I1 => Q(0),
      I2 => \^prod_reg[16]_1\,
      I3 => \^prod_reg[16]_3\,
      I4 => Q(2),
      I5 => \^prod_reg[16]_2\,
      O => \prod[16]_i_36_n_0\
    );
\prod[16]_i_37\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^prod_reg[16]_11\,
      I1 => \^prod_reg[16]_4\,
      I2 => \^prod_reg[16]_10\,
      O => \prod_reg[16]_8\(3)
    );
\prod[16]_i_38\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^prod_reg[16]_10\,
      I1 => \^prod_reg[16]_4\,
      I2 => \^prod_reg[16]_9\,
      O => \prod_reg[16]_8\(2)
    );
\prod[16]_i_39\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^prod_reg[16]_9\,
      I1 => \^prod_reg[16]_4\,
      I2 => \prod[16]_i_48_n_0\,
      O => \prod_reg[16]_8\(1)
    );
\prod[16]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \prod[16]_i_14_n_0\,
      I1 => lod_pos_return(1),
      I2 => lod_pos_return(0),
      O => \^prod_reg[16]_3\
    );
\prod[16]_i_40\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \prod[16]_i_48_n_0\,
      I1 => \^prod_reg[16]_4\,
      I2 => \prod[29]_i_28_n_0\,
      O => \prod_reg[16]_8\(0)
    );
\prod[16]_i_43\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"474747B8B847B8B8"
    )
        port map (
      I0 => \^prod_reg[16]_9\,
      I1 => \^prod_reg[16]_4\,
      I2 => \prod[16]_i_48_n_0\,
      I3 => func_reg_reg(0),
      I4 => \g0_b5__0_n_0\,
      I5 => g0_b5_n_0,
      O => \prod_reg[16]_16\(1)
    );
\prod[16]_i_44\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"474747B8B847B8B8"
    )
        port map (
      I0 => \prod[16]_i_48_n_0\,
      I1 => \^prod_reg[16]_4\,
      I2 => \prod[29]_i_28_n_0\,
      I3 => func_reg_reg(0),
      I4 => \g0_b4__0_n_0\,
      I5 => g0_b4_n_0,
      O => \prod_reg[16]_16\(0)
    );
\prod[16]_i_45\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => Q(4),
      I1 => \^prod_reg[16]_3\,
      I2 => \^prod_reg[16]_2\,
      I3 => Q(0),
      O => \prod[16]_i_45_n_0\
    );
\prod[16]_i_46\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B080FFFFB0800000"
    )
        port map (
      I0 => \b_reg_reg[15]\(6),
      I1 => \^prod_reg[16]_5\,
      I2 => \^prod_reg[16]_6\,
      I3 => \b_reg_reg[15]\(2),
      I4 => \^prod_reg[16]_7\,
      I5 => \prod[16]_i_49_n_0\,
      O => \^prod_reg[16]_10\
    );
\prod[16]_i_47\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFC0A0C000000000"
    )
        port map (
      I0 => \b_reg_reg[15]\(5),
      I1 => \b_reg_reg[15]\(1),
      I2 => \^prod_reg[16]_7\,
      I3 => \^prod_reg[16]_5\,
      I4 => \b_reg_reg[15]\(3),
      I5 => \^prod_reg[16]_6\,
      O => \^prod_reg[16]_9\
    );
\prod[16]_i_48\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFC0A0C000000000"
    )
        port map (
      I0 => \b_reg_reg[15]\(4),
      I1 => \b_reg_reg[15]\(0),
      I2 => \^prod_reg[16]_7\,
      I3 => \^prod_reg[16]_5\,
      I4 => \b_reg_reg[15]\(2),
      I5 => \^prod_reg[16]_6\,
      O => \prod[16]_i_48_n_0\
    );
\prod[16]_i_49\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => \b_reg_reg[15]\(4),
      I1 => \^prod_reg[16]_5\,
      I2 => \^prod_reg[16]_6\,
      I3 => \b_reg_reg[15]\(0),
      O => \prod[16]_i_49_n_0\
    );
\prod[16]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lgN4.lod_detected\,
      I1 => lod_pos_return(1),
      O => \^prod_reg[16]_2\
    );
\prod[16]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lgN4.lod_detected__0\,
      I1 => \lod_pos_return__0\(1),
      O => \^prod_reg[16]_6\
    );
\prod[27]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99966696"
    )
        port map (
      I0 => func_reg_reg_6(3),
      I1 => func_reg_reg(0),
      I2 => \prod[27]_i_15_n_0\,
      I3 => \^prod_reg[16]_0\,
      I4 => g0_b0_i_17_n_0,
      O => \prod[27]_i_10_n_0\
    );
\prod[27]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99966696"
    )
        port map (
      I0 => func_reg_reg_6(2),
      I1 => func_reg_reg(0),
      I2 => \prod[27]_i_16_n_0\,
      I3 => \^prod_reg[16]_0\,
      I4 => \prod[27]_i_15_n_0\,
      O => \prod[27]_i_11_n_0\
    );
\prod[27]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99966696"
    )
        port map (
      I0 => func_reg_reg_6(1),
      I1 => func_reg_reg(0),
      I2 => \prod[27]_i_17_n_0\,
      I3 => \^prod_reg[16]_0\,
      I4 => \prod[27]_i_16_n_0\,
      O => \prod[27]_i_12_n_0\
    );
\prod[27]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99966696"
    )
        port map (
      I0 => func_reg_reg_6(0),
      I1 => func_reg_reg(0),
      I2 => \prod[27]_i_18_n_0\,
      I3 => \^prod_reg[16]_0\,
      I4 => \prod[27]_i_17_n_0\,
      O => \prod[27]_i_13_n_0\
    );
\prod[27]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => g0_b0_i_28_n_0,
      I1 => \^prod_reg[16]_1\,
      I2 => \prod[27]_i_27_n_0\,
      O => \prod[27]_i_15_n_0\
    );
\prod[27]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BB8888B8888888"
    )
        port map (
      I0 => g0_b0_i_34_n_0,
      I1 => \^prod_reg[16]_1\,
      I2 => Q(7),
      I3 => \^prod_reg[16]_3\,
      I4 => \^prod_reg[16]_2\,
      I5 => Q(3),
      O => \prod[27]_i_16_n_0\
    );
\prod[27]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BB8888B8888888"
    )
        port map (
      I0 => \prod[27]_i_27_n_0\,
      I1 => \^prod_reg[16]_1\,
      I2 => Q(6),
      I3 => \^prod_reg[16]_3\,
      I4 => \^prod_reg[16]_2\,
      I5 => Q(2),
      O => \prod[27]_i_17_n_0\
    );
\prod[27]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B080FFFFB0800000"
    )
        port map (
      I0 => Q(7),
      I1 => \^prod_reg[16]_3\,
      I2 => \^prod_reg[16]_2\,
      I3 => Q(3),
      I4 => \^prod_reg[16]_1\,
      I5 => \prod[27]_i_28_n_0\,
      O => \prod[27]_i_18_n_0\
    );
\prod[27]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^prod_reg[11]_3\,
      I1 => \^prod_reg[16]_4\,
      I2 => \^prod_reg[11]_2\,
      O => \prod_reg[11]\(3)
    );
\prod[27]_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^prod_reg[11]_2\,
      I1 => \^prod_reg[16]_4\,
      I2 => \^prod_reg[11]_1\,
      O => \prod_reg[11]\(2)
    );
\prod[27]_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^prod_reg[11]_1\,
      I1 => \^prod_reg[16]_4\,
      I2 => \^prod_reg[11]_0\,
      O => \prod_reg[11]\(1)
    );
\prod[27]_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^prod_reg[11]_0\,
      I1 => \^prod_reg[16]_4\,
      I2 => \^prod_reg[16]_11\,
      O => \prod_reg[11]\(0)
    );
\prod[27]_i_27\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => Q(8),
      I1 => Q(0),
      I2 => \^prod_reg[16]_3\,
      I3 => \^prod_reg[16]_2\,
      I4 => Q(4),
      O => \prod[27]_i_27_n_0\
    );
\prod[27]_i_28\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => Q(5),
      I1 => \^prod_reg[16]_3\,
      I2 => \^prod_reg[16]_2\,
      I3 => Q(1),
      O => \prod[27]_i_28_n_0\
    );
\prod[27]_i_29\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => g0_b0_i_22_n_0,
      I1 => \^prod_reg[16]_7\,
      I2 => \prod[27]_i_33_n_0\,
      O => \^prod_reg[11]_2\
    );
\prod[27]_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BB8888B8888888"
    )
        port map (
      I0 => g0_b0_i_27_n_0,
      I1 => \^prod_reg[16]_7\,
      I2 => \b_reg_reg[15]\(7),
      I3 => \^prod_reg[16]_5\,
      I4 => \^prod_reg[16]_6\,
      I5 => \b_reg_reg[15]\(3),
      O => \^prod_reg[11]_1\
    );
\prod[27]_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BB8888B8888888"
    )
        port map (
      I0 => \prod[27]_i_33_n_0\,
      I1 => \^prod_reg[16]_7\,
      I2 => \b_reg_reg[15]\(6),
      I3 => \^prod_reg[16]_5\,
      I4 => \^prod_reg[16]_6\,
      I5 => \b_reg_reg[15]\(2),
      O => \^prod_reg[11]_0\
    );
\prod[27]_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B080FFFFB0800000"
    )
        port map (
      I0 => \b_reg_reg[15]\(7),
      I1 => \^prod_reg[16]_5\,
      I2 => \^prod_reg[16]_6\,
      I3 => \b_reg_reg[15]\(3),
      I4 => \^prod_reg[16]_7\,
      I5 => \prod[27]_i_34_n_0\,
      O => \^prod_reg[16]_11\
    );
\prod[27]_i_33\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \b_reg_reg[15]\(8),
      I1 => \b_reg_reg[15]\(0),
      I2 => \^prod_reg[16]_5\,
      I3 => \^prod_reg[16]_6\,
      I4 => \b_reg_reg[15]\(4),
      O => \prod[27]_i_33_n_0\
    );
\prod[27]_i_34\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => \b_reg_reg[15]\(5),
      I1 => \^prod_reg[16]_5\,
      I2 => \^prod_reg[16]_6\,
      I3 => \b_reg_reg[15]\(1),
      O => \prod[27]_i_34_n_0\
    );
\prod[29]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99966696"
    )
        port map (
      I0 => O(3),
      I1 => func_reg_reg(0),
      I2 => \prod[29]_i_15_n_0\,
      I3 => \^prod_reg[16]_0\,
      I4 => \prod[29]_i_16_n_0\,
      O => \prod[29]_i_10_n_0\
    );
\prod[29]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99966696"
    )
        port map (
      I0 => O(2),
      I1 => func_reg_reg(0),
      I2 => \prod[29]_i_17_n_0\,
      I3 => \^prod_reg[16]_0\,
      I4 => \prod[29]_i_15_n_0\,
      O => \prod[29]_i_11_n_0\
    );
\prod[29]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9966966666669666"
    )
        port map (
      I0 => O(1),
      I1 => func_reg_reg(0),
      I2 => \prod[29]_i_18_n_0\,
      I3 => \^prod_reg[16]_1\,
      I4 => \^prod_reg[16]_0\,
      I5 => \prod[29]_i_19_n_0\,
      O => \prod[29]_i_12_n_0\
    );
\prod[29]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B0800000"
    )
        port map (
      I0 => Q(2),
      I1 => \^prod_reg[16]_1\,
      I2 => \^prod_reg[16]_3\,
      I3 => Q(0),
      I4 => \^prod_reg[16]_2\,
      O => \prod[29]_i_15_n_0\
    );
\prod[29]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B0800000"
    )
        port map (
      I0 => Q(3),
      I1 => \^prod_reg[16]_1\,
      I2 => \^prod_reg[16]_3\,
      I3 => Q(1),
      I4 => \^prod_reg[16]_2\,
      O => \prod[29]_i_16_n_0\
    );
\prod[29]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^prod_reg[16]_1\,
      I1 => \^prod_reg[16]_2\,
      I2 => Q(1),
      I3 => \^prod_reg[16]_3\,
      O => \prod[29]_i_17_n_0\
    );
\prod[29]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^prod_reg[16]_3\,
      I1 => Q(0),
      I2 => \^prod_reg[16]_2\,
      O => \prod[29]_i_18_n_0\
    );
\prod[29]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^prod_reg[16]_3\,
      I1 => Q(1),
      I2 => \^prod_reg[16]_2\,
      O => \prod[29]_i_19_n_0\
    );
\prod[29]_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \prod[29]_i_28_n_0\,
      I1 => \^prod_reg[16]_4\,
      I2 => \prod[29]_i_29_n_0\,
      O => DI(3)
    );
\prod[29]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888888888888888"
    )
        port map (
      I0 => \prod[29]_i_29_n_0\,
      I1 => \^prod_reg[16]_4\,
      I2 => \^prod_reg[16]_7\,
      I3 => \^prod_reg[16]_6\,
      I4 => \b_reg_reg[15]\(1),
      I5 => \^prod_reg[16]_5\,
      O => DI(2)
    );
\prod[29]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B000800000000000"
    )
        port map (
      I0 => \b_reg_reg[15]\(1),
      I1 => \^prod_reg[16]_4\,
      I2 => \^prod_reg[16]_7\,
      I3 => \^prod_reg[16]_6\,
      I4 => \b_reg_reg[15]\(0),
      I5 => \^prod_reg[16]_5\,
      O => DI(1)
    );
\prod[29]_i_23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \^prod_reg[16]_4\,
      I1 => \^prod_reg[16]_5\,
      I2 => \b_reg_reg[15]\(0),
      I3 => \^prod_reg[16]_6\,
      I4 => \^prod_reg[16]_7\,
      O => DI(0)
    );
\prod[29]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"474747B8B847B8B8"
    )
        port map (
      I0 => \prod[29]_i_28_n_0\,
      I1 => \^prod_reg[16]_4\,
      I2 => \prod[29]_i_29_n_0\,
      I3 => func_reg_reg(0),
      I4 => \g0_b3__0_n_0\,
      I5 => g0_b3_n_0,
      O => S(0)
    );
\prod[29]_i_28\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B0800000"
    )
        port map (
      I0 => \b_reg_reg[15]\(3),
      I1 => \^prod_reg[16]_7\,
      I2 => \^prod_reg[16]_5\,
      I3 => \b_reg_reg[15]\(1),
      I4 => \^prod_reg[16]_6\,
      O => \prod[29]_i_28_n_0\
    );
\prod[29]_i_29\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B0800000"
    )
        port map (
      I0 => \b_reg_reg[15]\(2),
      I1 => \^prod_reg[16]_7\,
      I2 => \^prod_reg[16]_5\,
      I3 => \b_reg_reg[15]\(0),
      I4 => \^prod_reg[16]_6\,
      O => \prod[29]_i_29_n_0\
    );
\prod[30]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => func_reg_reg(0),
      I1 => func_reg_reg_4(2),
      O => \prod[30]_i_13_n_0\
    );
\prod[30]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"565656A6A6A656A6"
    )
        port map (
      I0 => \prod[30]_i_13_n_0\,
      I1 => g0_b0_i_18_n_0,
      I2 => \^prod_reg[16]_0\,
      I3 => g0_b0_i_21_n_0,
      I4 => \^prod_reg[16]_1\,
      I5 => g0_b0_i_19_n_0,
      O => \prod[30]_i_17_n_0\
    );
\prod[30]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99966696"
    )
        port map (
      I0 => func_reg_reg_4(1),
      I1 => func_reg_reg(0),
      I2 => g0_b0_i_15_n_0,
      I3 => \^prod_reg[16]_0\,
      I4 => g0_b0_i_18_n_0,
      O => \prod[30]_i_18_n_0\
    );
\prod[30]_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99966696"
    )
        port map (
      I0 => func_reg_reg_4(0),
      I1 => func_reg_reg(0),
      I2 => g0_b0_i_17_n_0,
      I3 => \^prod_reg[16]_0\,
      I4 => g0_b0_i_15_n_0,
      O => \prod[30]_i_19_n_0\
    );
\prod[30]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF33CC00B8B8B8B8"
    )
        port map (
      I0 => g0_b0_i_10_n_0,
      I1 => \^prod_reg[16]_7\,
      I2 => g0_b0_i_12_n_0,
      I3 => g0_b0_i_13_n_0,
      I4 => g0_b0_i_14_n_0,
      I5 => \^prod_reg[16]_4\,
      O => \prod_reg[16]_17\(1)
    );
\prod[30]_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => g0_b0_i_10_n_0,
      I1 => \^prod_reg[16]_7\,
      I2 => g0_b0_i_12_n_0,
      I3 => \^prod_reg[16]_4\,
      I4 => \^prod_reg[16]_12\,
      O => \prod_reg[16]_17\(0)
    );
\prod_reg[16]_i_17\: unisim.vcomponents.CARRY4
     port map (
      CI => \prod_reg[29]_i_5_n_0\,
      CO(3) => \prod_reg[16]_i_17_n_0\,
      CO(2 downto 0) => \NLW_prod_reg[16]_i_17_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => func_reg_reg_0(3 downto 0),
      O(3 downto 0) => \prod_reg[16]_14\(3 downto 0),
      S(3) => \prod[16]_i_28_n_0\,
      S(2) => \prod[16]_i_29_n_0\,
      S(1) => \prod[16]_i_30_n_0\,
      S(0) => \prod[16]_i_31_n_0\
    );
\prod_reg[27]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \prod_reg[16]_i_17_n_0\,
      CO(3) => \prod_reg[27]_i_5_n_0\,
      CO(2 downto 0) => \NLW_prod_reg[27]_i_5_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => func_reg_reg_1(3 downto 0),
      O(3 downto 0) => \prod_reg[11]_4\(3 downto 0),
      S(3) => \prod[27]_i_10_n_0\,
      S(2) => \prod[27]_i_11_n_0\,
      S(1) => \prod[27]_i_12_n_0\,
      S(0) => \prod[27]_i_13_n_0\
    );
\prod_reg[29]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \prod_reg[29]_i_5_n_0\,
      CO(2 downto 0) => \NLW_prod_reg[29]_i_5_CO_UNCONNECTED\(2 downto 0),
      CYINIT => \a_reg_reg[0]\,
      DI(3 downto 0) => func_reg_reg(3 downto 0),
      O(3 downto 0) => \prod_reg[16]_13\(3 downto 0),
      S(3) => \prod[29]_i_10_n_0\,
      S(2) => \prod[29]_i_11_n_0\,
      S(1) => \prod[29]_i_12_n_0\,
      S(0) => O(0)
    );
\prod_reg[30]_i_12\: unisim.vcomponents.CARRY4
     port map (
      CI => \prod_reg[27]_i_5_n_0\,
      CO(3 downto 0) => \NLW_prod_reg[30]_i_12_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \prod[30]_i_13_n_0\,
      DI(1 downto 0) => func_reg_reg_2(1 downto 0),
      O(3 downto 0) => \prod_reg[16]_15\(3 downto 0),
      S(3) => func_reg_reg_3(0),
      S(2) => \prod[30]_i_17_n_0\,
      S(1) => \prod[30]_i_18_n_0\,
      S(0) => \prod[30]_i_19_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity hybrid is
  port (
    ka : out STD_LOGIC_VECTOR ( 3 downto 0 );
    kb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    O : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \prod_reg[16]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \prod_reg[11]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \prod_reg[16]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \prod_reg[16]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \prod_reg[16]_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \prod_reg[11]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \prod_reg[16]_3\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \b_reg_reg[15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \a_reg_reg[0]\ : in STD_LOGIC;
    DI : in STD_LOGIC_VECTOR ( 3 downto 0 );
    func_reg_reg : in STD_LOGIC_VECTOR ( 3 downto 0 );
    func_reg_reg_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    func_reg_reg_1 : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end hybrid;

architecture STRUCTURE of hybrid is
  signal \^o\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal adder_inst_1_n_12 : STD_LOGIC;
  signal adder_inst_1_n_15 : STD_LOGIC;
  signal adder_inst_1_n_3 : STD_LOGIC;
  signal adder_inst_2_n_13 : STD_LOGIC;
  signal adder_inst_2_n_14 : STD_LOGIC;
  signal adder_inst_2_n_15 : STD_LOGIC;
  signal adder_inst_2_n_16 : STD_LOGIC;
  signal adder_inst_2_n_17 : STD_LOGIC;
  signal adder_inst_2_n_18 : STD_LOGIC;
  signal adder_inst_2_n_19 : STD_LOGIC;
  signal adder_inst_2_n_20 : STD_LOGIC;
  signal adder_inst_2_n_21 : STD_LOGIC;
  signal adder_inst_2_n_22 : STD_LOGIC;
  signal adder_inst_2_n_23 : STD_LOGIC;
  signal adder_inst_2_n_24 : STD_LOGIC;
  signal adder_inst_2_n_25 : STD_LOGIC;
  signal adder_inst_2_n_26 : STD_LOGIC;
  signal adder_inst_2_n_27 : STD_LOGIC;
  signal adder_inst_2_n_28 : STD_LOGIC;
  signal adder_inst_2_n_45 : STD_LOGIC;
  signal adder_inst_2_n_46 : STD_LOGIC;
  signal adder_inst_2_n_47 : STD_LOGIC;
  signal adder_inst_2_n_48 : STD_LOGIC;
  signal adder_inst_2_n_49 : STD_LOGIC;
  signal adder_inst_2_n_5 : STD_LOGIC;
  signal adder_inst_2_n_50 : STD_LOGIC;
  signal adder_inst_2_n_51 : STD_LOGIC;
  signal adder_inst_2_n_52 : STD_LOGIC;
  signal adder_inst_2_n_53 : STD_LOGIC;
  signal adder_inst_2_n_54 : STD_LOGIC;
  signal adder_inst_2_n_55 : STD_LOGIC;
  signal adder_inst_2_n_56 : STD_LOGIC;
  signal adder_inst_2_n_57 : STD_LOGIC;
  signal adder_inst_2_n_58 : STD_LOGIC;
  signal adder_inst_2_n_59 : STD_LOGIC;
  signal adder_inst_2_n_6 : STD_LOGIC;
  signal adder_inst_2_n_60 : STD_LOGIC;
  signal adder_inst_2_n_61 : STD_LOGIC;
  signal adder_inst_2_n_62 : STD_LOGIC;
  signal adder_inst_2_n_63 : STD_LOGIC;
  signal adder_inst_2_n_64 : STD_LOGIC;
  signal adder_inst_2_n_65 : STD_LOGIC;
  signal adder_inst_2_n_66 : STD_LOGIC;
  signal adder_inst_2_n_67 : STD_LOGIC;
  signal adder_inst_2_n_68 : STD_LOGIC;
  signal adder_inst_2_n_69 : STD_LOGIC;
  signal adder_inst_2_n_7 : STD_LOGIC;
  signal adder_inst_2_n_8 : STD_LOGIC;
  signal \^kb\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^prod_reg[11]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^prod_reg[16]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^prod_reg[16]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal sel : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  O(2 downto 0) <= \^o\(2 downto 0);
  kb(3 downto 0) <= \^kb\(3 downto 0);
  \prod_reg[11]\(3 downto 0) <= \^prod_reg[11]\(3 downto 0);
  \prod_reg[16]\(3 downto 0) <= \^prod_reg[16]\(3 downto 0);
  \prod_reg[16]_0\(1 downto 0) <= \^prod_reg[16]_0\(1 downto 0);
adder_inst_1: entity work.adder
     port map (
      DI(3) => adder_inst_2_n_5,
      DI(2) => adder_inst_2_n_6,
      DI(1) => adder_inst_2_n_7,
      DI(0) => adder_inst_2_n_8,
      O(3 downto 1) => \^o\(2 downto 0),
      O(0) => adder_inst_1_n_3,
      S(0) => adder_inst_2_n_45,
      \b_reg_reg[10]\ => adder_inst_2_n_26,
      \b_reg_reg[11]\(3) => adder_inst_2_n_20,
      \b_reg_reg[11]\(2) => adder_inst_2_n_21,
      \b_reg_reg[11]\(1) => adder_inst_2_n_22,
      \b_reg_reg[11]\(0) => adder_inst_2_n_23,
      \b_reg_reg[11]_0\ => adder_inst_2_n_27,
      \b_reg_reg[12]\(0) => sel(0),
      \b_reg_reg[12]_0\ => adder_inst_2_n_28,
      \b_reg_reg[13]\(1) => adder_inst_2_n_48,
      \b_reg_reg[13]\(0) => adder_inst_2_n_49,
      \b_reg_reg[13]_0\(9) => adder_inst_2_n_50,
      \b_reg_reg[13]_0\(8) => adder_inst_2_n_51,
      \b_reg_reg[13]_0\(7) => adder_inst_2_n_52,
      \b_reg_reg[13]_0\(6) => adder_inst_2_n_53,
      \b_reg_reg[13]_0\(5) => adder_inst_2_n_54,
      \b_reg_reg[13]_0\(4) => adder_inst_2_n_55,
      \b_reg_reg[13]_0\(3) => adder_inst_2_n_56,
      \b_reg_reg[13]_0\(2) => adder_inst_2_n_57,
      \b_reg_reg[13]_0\(1) => adder_inst_2_n_58,
      \b_reg_reg[13]_0\(0) => adder_inst_2_n_59,
      \b_reg_reg[2]\ => \^kb\(0),
      \b_reg_reg[5]\ => adder_inst_2_n_17,
      \b_reg_reg[6]\ => adder_inst_2_n_18,
      \b_reg_reg[6]_0\ => adder_inst_2_n_24,
      \b_reg_reg[7]\(3) => adder_inst_2_n_13,
      \b_reg_reg[7]\(2) => adder_inst_2_n_14,
      \b_reg_reg[7]\(1) => adder_inst_2_n_15,
      \b_reg_reg[7]\(0) => adder_inst_2_n_16,
      \b_reg_reg[7]_0\ => adder_inst_2_n_19,
      \b_reg_reg[7]_1\ => adder_inst_2_n_25,
      func_reg_reg(1) => adder_inst_2_n_46,
      func_reg_reg(0) => adder_inst_2_n_47,
      func_reg_reg_0(0) => DI(0),
      \out\(9) => adder_inst_2_n_60,
      \out\(8) => adder_inst_2_n_61,
      \out\(7) => adder_inst_2_n_62,
      \out\(6) => adder_inst_2_n_63,
      \out\(5) => adder_inst_2_n_64,
      \out\(4) => adder_inst_2_n_65,
      \out\(3) => adder_inst_2_n_66,
      \out\(2) => adder_inst_2_n_67,
      \out\(1) => adder_inst_2_n_68,
      \out\(0) => adder_inst_2_n_69,
      \prod_reg[11]\(3 downto 0) => \^prod_reg[11]\(3 downto 0),
      \prod_reg[16]\(3 downto 0) => \^prod_reg[16]\(3 downto 0),
      \prod_reg[16]_0\(2) => adder_inst_1_n_12,
      \prod_reg[16]_0\(1 downto 0) => \^prod_reg[16]_0\(1 downto 0),
      \prod_reg[16]_1\(0) => adder_inst_1_n_15
    );
adder_inst_2: entity work.adder_0
     port map (
      DI(3) => adder_inst_2_n_5,
      DI(2) => adder_inst_2_n_6,
      DI(1) => adder_inst_2_n_7,
      DI(0) => adder_inst_2_n_8,
      O(3 downto 1) => \^o\(2 downto 0),
      O(0) => adder_inst_1_n_3,
      Q(15 downto 0) => Q(15 downto 0),
      S(0) => adder_inst_2_n_45,
      \a_reg_reg[0]\ => \a_reg_reg[0]\,
      \b_reg_reg[15]\(15 downto 0) => \b_reg_reg[15]\(15 downto 0),
      func_reg_reg(3 downto 0) => DI(3 downto 0),
      func_reg_reg_0(3 downto 0) => func_reg_reg(3 downto 0),
      func_reg_reg_1(3 downto 0) => func_reg_reg_0(3 downto 0),
      func_reg_reg_2(1 downto 0) => func_reg_reg_1(1 downto 0),
      func_reg_reg_3(0) => adder_inst_1_n_15,
      func_reg_reg_4(2) => adder_inst_1_n_12,
      func_reg_reg_4(1 downto 0) => \^prod_reg[16]_0\(1 downto 0),
      func_reg_reg_5(3 downto 0) => \^prod_reg[16]\(3 downto 0),
      func_reg_reg_6(3 downto 0) => \^prod_reg[11]\(3 downto 0),
      \out\(9) => adder_inst_2_n_50,
      \out\(8) => adder_inst_2_n_51,
      \out\(7) => adder_inst_2_n_52,
      \out\(6) => adder_inst_2_n_53,
      \out\(5) => adder_inst_2_n_54,
      \out\(4) => adder_inst_2_n_55,
      \out\(3) => adder_inst_2_n_56,
      \out\(2) => adder_inst_2_n_57,
      \out\(1) => adder_inst_2_n_58,
      \out\(0) => adder_inst_2_n_59,
      \prod_reg[11]\(3) => adder_inst_2_n_20,
      \prod_reg[11]\(2) => adder_inst_2_n_21,
      \prod_reg[11]\(1) => adder_inst_2_n_22,
      \prod_reg[11]\(0) => adder_inst_2_n_23,
      \prod_reg[11]_0\ => adder_inst_2_n_24,
      \prod_reg[11]_1\ => adder_inst_2_n_25,
      \prod_reg[11]_2\ => adder_inst_2_n_26,
      \prod_reg[11]_3\ => adder_inst_2_n_27,
      \prod_reg[11]_4\(3 downto 0) => \prod_reg[11]_0\(3 downto 0),
      \prod_reg[16]\(0) => sel(0),
      \prod_reg[16]_0\ => ka(0),
      \prod_reg[16]_1\ => ka(1),
      \prod_reg[16]_10\ => adder_inst_2_n_18,
      \prod_reg[16]_11\ => adder_inst_2_n_19,
      \prod_reg[16]_12\ => adder_inst_2_n_28,
      \prod_reg[16]_13\(3 downto 0) => \prod_reg[16]_1\(3 downto 0),
      \prod_reg[16]_14\(3 downto 0) => \prod_reg[16]_2\(3 downto 0),
      \prod_reg[16]_15\(3 downto 0) => \prod_reg[16]_3\(3 downto 0),
      \prod_reg[16]_16\(1) => adder_inst_2_n_46,
      \prod_reg[16]_16\(0) => adder_inst_2_n_47,
      \prod_reg[16]_17\(1) => adder_inst_2_n_48,
      \prod_reg[16]_17\(0) => adder_inst_2_n_49,
      \prod_reg[16]_18\(9) => adder_inst_2_n_60,
      \prod_reg[16]_18\(8) => adder_inst_2_n_61,
      \prod_reg[16]_18\(7) => adder_inst_2_n_62,
      \prod_reg[16]_18\(6) => adder_inst_2_n_63,
      \prod_reg[16]_18\(5) => adder_inst_2_n_64,
      \prod_reg[16]_18\(4) => adder_inst_2_n_65,
      \prod_reg[16]_18\(3) => adder_inst_2_n_66,
      \prod_reg[16]_18\(2) => adder_inst_2_n_67,
      \prod_reg[16]_18\(1) => adder_inst_2_n_68,
      \prod_reg[16]_18\(0) => adder_inst_2_n_69,
      \prod_reg[16]_2\ => ka(3),
      \prod_reg[16]_3\ => ka(2),
      \prod_reg[16]_4\ => \^kb\(0),
      \prod_reg[16]_5\ => \^kb\(2),
      \prod_reg[16]_6\ => \^kb\(3),
      \prod_reg[16]_7\ => \^kb\(1),
      \prod_reg[16]_8\(3) => adder_inst_2_n_13,
      \prod_reg[16]_8\(2) => adder_inst_2_n_14,
      \prod_reg[16]_8\(1) => adder_inst_2_n_15,
      \prod_reg[16]_8\(0) => adder_inst_2_n_16,
      \prod_reg[16]_9\ => adder_inst_2_n_17
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_wrapper is
  port (
    a : in STD_LOGIC_VECTOR ( 15 downto 0 );
    b : in STD_LOGIC_VECTOR ( 15 downto 0 );
    prod : out STD_LOGIC_VECTOR ( 31 downto 0 );
    func : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of top_wrapper : entity is true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of top_wrapper : entity is "7f7874a";
  attribute word_size : integer;
  attribute word_size of top_wrapper : entity is 16;
end top_wrapper;

architecture STRUCTURE of top_wrapper is
  signal a_IBUF : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal a_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \add_int_part_inst/0\ : STD_LOGIC;
  signal b_IBUF : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal b_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal clk_IBUF : STD_LOGIC;
  signal clk_IBUF_BUFG : STD_LOGIC;
  signal clk_IBUF_BUFG_repN : STD_LOGIC;
  signal func_IBUF : STD_LOGIC;
  signal func_reg_reg_n_0 : STD_LOGIC;
  signal inst0_n_10 : STD_LOGIC;
  signal inst0_n_11 : STD_LOGIC;
  signal inst0_n_12 : STD_LOGIC;
  signal inst0_n_13 : STD_LOGIC;
  signal inst0_n_14 : STD_LOGIC;
  signal inst0_n_15 : STD_LOGIC;
  signal inst0_n_16 : STD_LOGIC;
  signal inst0_n_17 : STD_LOGIC;
  signal inst0_n_18 : STD_LOGIC;
  signal inst0_n_19 : STD_LOGIC;
  signal inst0_n_20 : STD_LOGIC;
  signal inst0_n_21 : STD_LOGIC;
  signal inst0_n_22 : STD_LOGIC;
  signal inst0_n_23 : STD_LOGIC;
  signal inst0_n_24 : STD_LOGIC;
  signal inst0_n_25 : STD_LOGIC;
  signal inst0_n_26 : STD_LOGIC;
  signal inst0_n_27 : STD_LOGIC;
  signal inst0_n_28 : STD_LOGIC;
  signal inst0_n_29 : STD_LOGIC;
  signal inst0_n_30 : STD_LOGIC;
  signal inst0_n_31 : STD_LOGIC;
  signal inst0_n_32 : STD_LOGIC;
  signal inst0_n_34 : STD_LOGIC;
  signal inst0_n_35 : STD_LOGIC;
  signal inst0_n_36 : STD_LOGIC;
  signal inst0_n_8 : STD_LOGIC;
  signal inst0_n_9 : STD_LOGIC;
  signal ka : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal kb : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal log_int : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \prod[0]_i_1_n_0\ : STD_LOGIC;
  signal \prod[10]_i_1_n_0\ : STD_LOGIC;
  signal \prod[11]_i_1_n_0\ : STD_LOGIC;
  signal \prod[12]_i_1_n_0\ : STD_LOGIC;
  signal \prod[12]_i_2_n_0\ : STD_LOGIC;
  signal \prod[13]_i_1_n_0\ : STD_LOGIC;
  signal \prod[14]_i_1_n_0\ : STD_LOGIC;
  signal \prod[15]_i_1_n_0\ : STD_LOGIC;
  signal \prod[16]_i_10_n_0\ : STD_LOGIC;
  signal \prod[16]_i_18_n_0\ : STD_LOGIC;
  signal \prod[16]_i_19_n_0\ : STD_LOGIC;
  signal \prod[16]_i_1_n_0\ : STD_LOGIC;
  signal \prod[16]_i_24_n_0\ : STD_LOGIC;
  signal \prod[16]_i_25_n_0\ : STD_LOGIC;
  signal \prod[16]_i_26_n_0\ : STD_LOGIC;
  signal \prod[16]_i_27_n_0\ : STD_LOGIC;
  signal \prod[16]_i_2_n_0\ : STD_LOGIC;
  signal \prod[16]_i_32_n_0\ : STD_LOGIC;
  signal \prod[16]_i_5_n_0\ : STD_LOGIC;
  signal \prod[16]_i_8_n_0\ : STD_LOGIC;
  signal \prod[1]_i_1_n_0\ : STD_LOGIC;
  signal \prod[24]_i_2_n_0\ : STD_LOGIC;
  signal \prod[24]_i_3_n_0\ : STD_LOGIC;
  signal \prod[24]_i_4_n_0\ : STD_LOGIC;
  signal \prod[25]_i_2_n_0\ : STD_LOGIC;
  signal \prod[25]_i_3_n_0\ : STD_LOGIC;
  signal \prod[25]_i_4_n_0\ : STD_LOGIC;
  signal \prod[26]_i_2_n_0\ : STD_LOGIC;
  signal \prod[26]_i_3_n_0\ : STD_LOGIC;
  signal \prod[26]_i_4_n_0\ : STD_LOGIC;
  signal \prod[27]_i_2_n_0\ : STD_LOGIC;
  signal \prod[27]_i_3_n_0\ : STD_LOGIC;
  signal \prod[27]_i_4_n_0\ : STD_LOGIC;
  signal \prod[27]_i_6_n_0\ : STD_LOGIC;
  signal \prod[27]_i_7_n_0\ : STD_LOGIC;
  signal \prod[27]_i_8_n_0\ : STD_LOGIC;
  signal \prod[27]_i_9_n_0\ : STD_LOGIC;
  signal \prod[28]_i_2_n_0\ : STD_LOGIC;
  signal \prod[28]_i_3_n_0\ : STD_LOGIC;
  signal \prod[28]_i_4_n_0\ : STD_LOGIC;
  signal \prod[29]_i_2_n_0\ : STD_LOGIC;
  signal \prod[29]_i_3_n_0\ : STD_LOGIC;
  signal \prod[29]_i_4_n_0\ : STD_LOGIC;
  signal \prod[29]_i_6_n_0\ : STD_LOGIC;
  signal \prod[29]_i_7_n_0\ : STD_LOGIC;
  signal \prod[29]_i_8_n_0\ : STD_LOGIC;
  signal \prod[29]_i_9_n_0\ : STD_LOGIC;
  signal \prod[2]_i_1_n_0\ : STD_LOGIC;
  signal \prod[30]_i_10_n_0\ : STD_LOGIC;
  signal \prod[30]_i_11_n_0\ : STD_LOGIC;
  signal \prod[30]_i_14_n_0\ : STD_LOGIC;
  signal \prod[30]_i_15_n_0\ : STD_LOGIC;
  signal \prod[30]_i_2_n_0\ : STD_LOGIC;
  signal \prod[30]_i_3_n_0\ : STD_LOGIC;
  signal \prod[30]_i_4_n_0\ : STD_LOGIC;
  signal \prod[30]_i_5_n_0\ : STD_LOGIC;
  signal \prod[30]_i_6_n_0\ : STD_LOGIC;
  signal \prod[30]_i_7_n_0\ : STD_LOGIC;
  signal \prod[30]_i_8_n_0\ : STD_LOGIC;
  signal \prod[30]_i_9_n_0\ : STD_LOGIC;
  signal \prod[31]_i_11_n_0\ : STD_LOGIC;
  signal \prod[31]_i_12_n_0\ : STD_LOGIC;
  signal \prod[31]_i_13_n_0\ : STD_LOGIC;
  signal \prod[31]_i_14_n_0\ : STD_LOGIC;
  signal \prod[31]_i_15_n_0\ : STD_LOGIC;
  signal \prod[31]_i_16_n_0\ : STD_LOGIC;
  signal \prod[31]_i_17_n_0\ : STD_LOGIC;
  signal \prod[31]_i_19_n_0\ : STD_LOGIC;
  signal \prod[31]_i_20_n_0\ : STD_LOGIC;
  signal \prod[31]_i_2_n_0\ : STD_LOGIC;
  signal \prod[31]_i_3_n_0\ : STD_LOGIC;
  signal \prod[31]_i_5_n_0\ : STD_LOGIC;
  signal \prod[31]_i_7_n_0\ : STD_LOGIC;
  signal \prod[31]_i_8_n_0\ : STD_LOGIC;
  signal \prod[31]_i_9_n_0\ : STD_LOGIC;
  signal \prod[3]_i_1_n_0\ : STD_LOGIC;
  signal \prod[4]_i_1_n_0\ : STD_LOGIC;
  signal \prod[5]_i_1_n_0\ : STD_LOGIC;
  signal \prod[6]_i_1_n_0\ : STD_LOGIC;
  signal \prod[7]_i_1_n_0\ : STD_LOGIC;
  signal \prod[8]_i_1_n_0\ : STD_LOGIC;
  signal \prod[9]_i_1_n_0\ : STD_LOGIC;
  signal prod_OBUF : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \prod_reg__0\ : STD_LOGIC_VECTOR ( 31 downto 17 );
  attribute ORIG_CELL_NAME : string;
  attribute ORIG_CELL_NAME of clk_IBUF_BUFG_inst_replica : label is "clk_IBUF_BUFG_inst";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \prod[10]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \prod[11]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \prod[13]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \prod[14]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \prod[15]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \prod[1]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \prod[2]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \prod[3]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \prod[5]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \prod[6]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \prod[7]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \prod[9]_i_1\ : label is "soft_lutpair16";
begin
\a_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => a(0),
      O => a_IBUF(0)
    );
\a_IBUF[10]_inst\: unisim.vcomponents.IBUF
     port map (
      I => a(10),
      O => a_IBUF(10)
    );
\a_IBUF[11]_inst\: unisim.vcomponents.IBUF
     port map (
      I => a(11),
      O => a_IBUF(11)
    );
\a_IBUF[12]_inst\: unisim.vcomponents.IBUF
     port map (
      I => a(12),
      O => a_IBUF(12)
    );
\a_IBUF[13]_inst\: unisim.vcomponents.IBUF
     port map (
      I => a(13),
      O => a_IBUF(13)
    );
\a_IBUF[14]_inst\: unisim.vcomponents.IBUF
     port map (
      I => a(14),
      O => a_IBUF(14)
    );
\a_IBUF[15]_inst\: unisim.vcomponents.IBUF
     port map (
      I => a(15),
      O => a_IBUF(15)
    );
\a_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => a(1),
      O => a_IBUF(1)
    );
\a_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => a(2),
      O => a_IBUF(2)
    );
\a_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => a(3),
      O => a_IBUF(3)
    );
\a_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => a(4),
      O => a_IBUF(4)
    );
\a_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => a(5),
      O => a_IBUF(5)
    );
\a_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => a(6),
      O => a_IBUF(6)
    );
\a_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => a(7),
      O => a_IBUF(7)
    );
\a_IBUF[8]_inst\: unisim.vcomponents.IBUF
     port map (
      I => a(8),
      O => a_IBUF(8)
    );
\a_IBUF[9]_inst\: unisim.vcomponents.IBUF
     port map (
      I => a(9),
      O => a_IBUF(9)
    );
\a_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => a_IBUF(0),
      Q => a_reg(0),
      R => '0'
    );
\a_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => a_IBUF(10),
      Q => a_reg(10),
      R => '0'
    );
\a_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => a_IBUF(11),
      Q => a_reg(11),
      R => '0'
    );
\a_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => a_IBUF(12),
      Q => a_reg(12),
      R => '0'
    );
\a_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => a_IBUF(13),
      Q => a_reg(13),
      R => '0'
    );
\a_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => a_IBUF(14),
      Q => a_reg(14),
      R => '0'
    );
\a_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => a_IBUF(15),
      Q => a_reg(15),
      R => '0'
    );
\a_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => a_IBUF(1),
      Q => a_reg(1),
      R => '0'
    );
\a_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => a_IBUF(2),
      Q => a_reg(2),
      R => '0'
    );
\a_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => a_IBUF(3),
      Q => a_reg(3),
      R => '0'
    );
\a_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => a_IBUF(4),
      Q => a_reg(4),
      R => '0'
    );
\a_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => a_IBUF(5),
      Q => a_reg(5),
      R => '0'
    );
\a_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_IBUF_BUFG_repN,
      CE => '1',
      D => a_IBUF(6),
      Q => a_reg(6),
      R => '0'
    );
\a_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => a_IBUF(7),
      Q => a_reg(7),
      R => '0'
    );
\a_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => a_IBUF(8),
      Q => a_reg(8),
      R => '0'
    );
\a_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => a_IBUF(9),
      Q => a_reg(9),
      R => '0'
    );
\b_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => b(0),
      O => b_IBUF(0)
    );
\b_IBUF[10]_inst\: unisim.vcomponents.IBUF
     port map (
      I => b(10),
      O => b_IBUF(10)
    );
\b_IBUF[11]_inst\: unisim.vcomponents.IBUF
     port map (
      I => b(11),
      O => b_IBUF(11)
    );
\b_IBUF[12]_inst\: unisim.vcomponents.IBUF
     port map (
      I => b(12),
      O => b_IBUF(12)
    );
\b_IBUF[13]_inst\: unisim.vcomponents.IBUF
     port map (
      I => b(13),
      O => b_IBUF(13)
    );
\b_IBUF[14]_inst\: unisim.vcomponents.IBUF
     port map (
      I => b(14),
      O => b_IBUF(14)
    );
\b_IBUF[15]_inst\: unisim.vcomponents.IBUF
     port map (
      I => b(15),
      O => b_IBUF(15)
    );
\b_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => b(1),
      O => b_IBUF(1)
    );
\b_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => b(2),
      O => b_IBUF(2)
    );
\b_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => b(3),
      O => b_IBUF(3)
    );
\b_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => b(4),
      O => b_IBUF(4)
    );
\b_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => b(5),
      O => b_IBUF(5)
    );
\b_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => b(6),
      O => b_IBUF(6)
    );
\b_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => b(7),
      O => b_IBUF(7)
    );
\b_IBUF[8]_inst\: unisim.vcomponents.IBUF
     port map (
      I => b(8),
      O => b_IBUF(8)
    );
\b_IBUF[9]_inst\: unisim.vcomponents.IBUF
     port map (
      I => b(9),
      O => b_IBUF(9)
    );
\b_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_IBUF_BUFG_repN,
      CE => '1',
      D => b_IBUF(0),
      Q => b_reg(0),
      R => '0'
    );
\b_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => b_IBUF(10),
      Q => b_reg(10),
      R => '0'
    );
\b_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => b_IBUF(11),
      Q => b_reg(11),
      R => '0'
    );
\b_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_IBUF_BUFG_repN,
      CE => '1',
      D => b_IBUF(12),
      Q => b_reg(12),
      R => '0'
    );
\b_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_IBUF_BUFG_repN,
      CE => '1',
      D => b_IBUF(13),
      Q => b_reg(13),
      R => '0'
    );
\b_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => b_IBUF(14),
      Q => b_reg(14),
      R => '0'
    );
\b_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => b_IBUF(15),
      Q => b_reg(15),
      R => '0'
    );
\b_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => b_IBUF(1),
      Q => b_reg(1),
      R => '0'
    );
\b_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => b_IBUF(2),
      Q => b_reg(2),
      R => '0'
    );
\b_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => b_IBUF(3),
      Q => b_reg(3),
      R => '0'
    );
\b_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => b_IBUF(4),
      Q => b_reg(4),
      R => '0'
    );
\b_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => b_IBUF(5),
      Q => b_reg(5),
      R => '0'
    );
\b_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => b_IBUF(6),
      Q => b_reg(6),
      R => '0'
    );
\b_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => b_IBUF(7),
      Q => b_reg(7),
      R => '0'
    );
\b_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => b_IBUF(8),
      Q => b_reg(8),
      R => '0'
    );
\b_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => b_IBUF(9),
      Q => b_reg(9),
      R => '0'
    );
clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_IBUF_BUFG_repN,
      O => clk_IBUF_BUFG
    );
clk_IBUF_BUFG_inst_replica: unisim.vcomponents.BUFG
     port map (
      I => clk_IBUF,
      O => clk_IBUF_BUFG_repN
    );
clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clk,
      O => clk_IBUF
    );
func_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => func,
      O => func_IBUF
    );
func_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => func_IBUF,
      Q => func_reg_reg_n_0,
      R => '0'
    );
inst0: entity work.hybrid
     port map (
      DI(3) => \prod[29]_i_7_n_0\,
      DI(2) => \prod[29]_i_8_n_0\,
      DI(1) => \prod[29]_i_9_n_0\,
      DI(0) => func_reg_reg_n_0,
      O(2) => inst0_n_8,
      O(1) => inst0_n_9,
      O(0) => inst0_n_10,
      Q(15 downto 0) => a_reg(15 downto 0),
      \a_reg_reg[0]\ => \prod[29]_i_6_n_0\,
      \b_reg_reg[15]\(15 downto 0) => b_reg(15 downto 0),
      func_reg_reg(3) => \prod[16]_i_24_n_0\,
      func_reg_reg(2) => \prod[16]_i_25_n_0\,
      func_reg_reg(1) => \prod[16]_i_26_n_0\,
      func_reg_reg(0) => \prod[16]_i_27_n_0\,
      func_reg_reg_0(3) => \prod[27]_i_6_n_0\,
      func_reg_reg_0(2) => \prod[27]_i_7_n_0\,
      func_reg_reg_0(1) => \prod[27]_i_8_n_0\,
      func_reg_reg_0(0) => \prod[27]_i_9_n_0\,
      func_reg_reg_1(1) => \prod[30]_i_14_n_0\,
      func_reg_reg_1(0) => \prod[30]_i_15_n_0\,
      ka(3 downto 0) => ka(3 downto 0),
      kb(3 downto 0) => kb(3 downto 0),
      \prod_reg[11]\(3) => inst0_n_15,
      \prod_reg[11]\(2) => inst0_n_16,
      \prod_reg[11]\(1) => inst0_n_17,
      \prod_reg[11]\(0) => inst0_n_18,
      \prod_reg[11]_0\(3) => inst0_n_29,
      \prod_reg[11]_0\(2) => inst0_n_30,
      \prod_reg[11]_0\(1) => inst0_n_31,
      \prod_reg[11]_0\(0) => inst0_n_32,
      \prod_reg[16]\(3) => inst0_n_11,
      \prod_reg[16]\(2) => inst0_n_12,
      \prod_reg[16]\(1) => inst0_n_13,
      \prod_reg[16]\(0) => inst0_n_14,
      \prod_reg[16]_0\(1) => inst0_n_19,
      \prod_reg[16]_0\(0) => inst0_n_20,
      \prod_reg[16]_1\(3) => inst0_n_21,
      \prod_reg[16]_1\(2) => inst0_n_22,
      \prod_reg[16]_1\(1) => inst0_n_23,
      \prod_reg[16]_1\(0) => inst0_n_24,
      \prod_reg[16]_2\(3) => inst0_n_25,
      \prod_reg[16]_2\(2) => inst0_n_26,
      \prod_reg[16]_2\(1) => inst0_n_27,
      \prod_reg[16]_2\(0) => inst0_n_28,
      \prod_reg[16]_3\(3) => \add_int_part_inst/0\,
      \prod_reg[16]_3\(2) => inst0_n_34,
      \prod_reg[16]_3\(1) => inst0_n_35,
      \prod_reg[16]_3\(0) => inst0_n_36
    );
\prod[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \prod[24]_i_3_n_0\,
      I1 => log_int(3),
      I2 => \prod[16]_i_8_n_0\,
      I3 => log_int(2),
      I4 => \prod[16]_i_10_n_0\,
      I5 => log_int(4),
      O => \prod[0]_i_1_n_0\
    );
\prod[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \prod[26]_i_3_n_0\,
      I1 => \prod[26]_i_2_n_0\,
      I2 => log_int(4),
      I3 => log_int(3),
      I4 => \prod[26]_i_4_n_0\,
      O => \prod[10]_i_1_n_0\
    );
\prod[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \prod[27]_i_3_n_0\,
      I1 => \prod[27]_i_2_n_0\,
      I2 => log_int(4),
      I3 => log_int(3),
      I4 => \prod[27]_i_4_n_0\,
      O => \prod[11]_i_1_n_0\
    );
\prod[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FC000C0A0C0A0C0"
    )
        port map (
      I0 => \prod[16]_i_10_n_0\,
      I1 => \prod[28]_i_2_n_0\,
      I2 => log_int(4),
      I3 => log_int(3),
      I4 => \prod[12]_i_2_n_0\,
      I5 => log_int(2),
      O => \prod[12]_i_1_n_0\
    );
\prod[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0CFCF"
    )
        port map (
      I0 => inst0_n_36,
      I1 => inst0_n_35,
      I2 => log_int(1),
      I3 => inst0_n_34,
      I4 => log_int(0),
      O => \prod[12]_i_2_n_0\
    );
\prod[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \prod[29]_i_3_n_0\,
      I1 => \prod[29]_i_2_n_0\,
      I2 => log_int(4),
      I3 => log_int(3),
      I4 => \prod[29]_i_4_n_0\,
      O => \prod[13]_i_1_n_0\
    );
\prod[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \prod[30]_i_3_n_0\,
      I1 => \prod[30]_i_2_n_0\,
      I2 => log_int(4),
      I3 => log_int(3),
      I4 => \prod[30]_i_4_n_0\,
      O => \prod[14]_i_1_n_0\
    );
\prod[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \prod[31]_i_3_n_0\,
      I1 => \prod[31]_i_2_n_0\,
      I2 => log_int(4),
      I3 => log_int(3),
      I4 => \prod[31]_i_5_n_0\,
      O => \prod[15]_i_1_n_0\
    );
\prod[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"088AAAAA0000088A"
    )
        port map (
      I0 => func_reg_reg_n_0,
      I1 => kb(2),
      I2 => ka(2),
      I3 => \prod[16]_i_5_n_0\,
      I4 => ka(3),
      I5 => kb(3),
      O => \prod[16]_i_1_n_0\
    );
\prod[16]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => inst0_n_24,
      I1 => inst0_n_23,
      I2 => log_int(1),
      I3 => inst0_n_22,
      I4 => log_int(0),
      I5 => inst0_n_21,
      O => \prod[16]_i_10_n_0\
    );
\prod[16]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"001717FFFFE8E800"
    )
        port map (
      I0 => \add_int_part_inst/0\,
      I1 => ka(0),
      I2 => kb(0),
      I3 => ka(1),
      I4 => kb(1),
      I5 => \prod[16]_i_32_n_0\,
      O => \prod[16]_i_18_n_0\
    );
\prod[16]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D00FF4DB2FF00B2"
    )
        port map (
      I0 => \add_int_part_inst/0\,
      I1 => ka(0),
      I2 => kb(0),
      I3 => ka(1),
      I4 => kb(1),
      I5 => \prod[16]_i_32_n_0\,
      O => \prod[16]_i_19_n_0\
    );
\prod[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A8080808A808"
    )
        port map (
      I0 => log_int(4),
      I1 => \prod[24]_i_3_n_0\,
      I2 => log_int(3),
      I3 => \prod[16]_i_8_n_0\,
      I4 => log_int(2),
      I5 => \prod[16]_i_10_n_0\,
      O => \prod[16]_i_2_n_0\
    );
\prod[16]_i_24\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => func_reg_reg_n_0,
      I1 => inst0_n_11,
      O => \prod[16]_i_24_n_0\
    );
\prod[16]_i_25\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => func_reg_reg_n_0,
      I1 => inst0_n_12,
      O => \prod[16]_i_25_n_0\
    );
\prod[16]_i_26\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => func_reg_reg_n_0,
      I1 => inst0_n_13,
      O => \prod[16]_i_26_n_0\
    );
\prod[16]_i_27\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => func_reg_reg_n_0,
      I1 => inst0_n_14,
      O => \prod[16]_i_27_n_0\
    );
\prod[16]_i_32\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ka(2),
      I1 => kb(2),
      O => \prod[16]_i_32_n_0\
    );
\prod[16]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4D44DD4D"
    )
        port map (
      I0 => kb(1),
      I1 => ka(1),
      I2 => kb(0),
      I3 => ka(0),
      I4 => \add_int_part_inst/0\,
      O => \prod[16]_i_5_n_0\
    );
\prod[16]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => inst0_n_28,
      I1 => inst0_n_27,
      I2 => log_int(1),
      I3 => inst0_n_26,
      I4 => log_int(0),
      I5 => inst0_n_25,
      O => \prod[16]_i_8_n_0\
    );
\prod[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3030380800003808"
    )
        port map (
      I0 => \prod[25]_i_3_n_0\,
      I1 => \prod[16]_i_1_n_0\,
      I2 => log_int(4),
      I3 => \prod[25]_i_4_n_0\,
      I4 => log_int(3),
      I5 => \prod[25]_i_2_n_0\,
      O => \prod_reg__0\(17)
    );
\prod[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3030380800003808"
    )
        port map (
      I0 => \prod[26]_i_3_n_0\,
      I1 => \prod[16]_i_1_n_0\,
      I2 => log_int(4),
      I3 => \prod[26]_i_4_n_0\,
      I4 => log_int(3),
      I5 => \prod[26]_i_2_n_0\,
      O => \prod_reg__0\(18)
    );
\prod[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3030380800003808"
    )
        port map (
      I0 => \prod[27]_i_3_n_0\,
      I1 => \prod[16]_i_1_n_0\,
      I2 => log_int(4),
      I3 => \prod[27]_i_4_n_0\,
      I4 => log_int(3),
      I5 => \prod[27]_i_2_n_0\,
      O => \prod_reg__0\(19)
    );
\prod[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \prod[25]_i_3_n_0\,
      I1 => log_int(4),
      I2 => \prod[25]_i_2_n_0\,
      I3 => log_int(3),
      I4 => \prod[25]_i_4_n_0\,
      O => \prod[1]_i_1_n_0\
    );
\prod[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3030380800003808"
    )
        port map (
      I0 => \prod[28]_i_3_n_0\,
      I1 => \prod[16]_i_1_n_0\,
      I2 => log_int(4),
      I3 => \prod[28]_i_4_n_0\,
      I4 => log_int(3),
      I5 => \prod[28]_i_2_n_0\,
      O => \prod_reg__0\(20)
    );
\prod[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3030380800003808"
    )
        port map (
      I0 => \prod[29]_i_3_n_0\,
      I1 => \prod[16]_i_1_n_0\,
      I2 => log_int(4),
      I3 => \prod[29]_i_4_n_0\,
      I4 => log_int(3),
      I5 => \prod[29]_i_2_n_0\,
      O => \prod_reg__0\(21)
    );
\prod[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3030380800003808"
    )
        port map (
      I0 => \prod[30]_i_3_n_0\,
      I1 => \prod[16]_i_1_n_0\,
      I2 => log_int(4),
      I3 => \prod[30]_i_4_n_0\,
      I4 => log_int(3),
      I5 => \prod[30]_i_2_n_0\,
      O => \prod_reg__0\(22)
    );
\prod[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3030380800003808"
    )
        port map (
      I0 => \prod[31]_i_3_n_0\,
      I1 => \prod[16]_i_1_n_0\,
      I2 => log_int(4),
      I3 => \prod[31]_i_5_n_0\,
      I4 => log_int(3),
      I5 => \prod[31]_i_2_n_0\,
      O => \prod_reg__0\(23)
    );
\prod[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30000808"
    )
        port map (
      I0 => \prod[24]_i_2_n_0\,
      I1 => \prod[16]_i_1_n_0\,
      I2 => log_int(4),
      I3 => \prod[24]_i_3_n_0\,
      I4 => log_int(3),
      O => \prod_reg__0\(24)
    );
\prod[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \prod[30]_i_9_n_0\,
      I1 => \prod[30]_i_10_n_0\,
      I2 => log_int(2),
      I3 => \prod[30]_i_11_n_0\,
      I4 => log_int(1),
      I5 => \prod[30]_i_5_n_0\,
      O => \prod[24]_i_2_n_0\
    );
\prod[24]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \prod[30]_i_6_n_0\,
      I1 => \prod[30]_i_7_n_0\,
      I2 => log_int(2),
      I3 => \prod[30]_i_8_n_0\,
      I4 => log_int(1),
      I5 => \prod[24]_i_4_n_0\,
      O => \prod[24]_i_3_n_0\
    );
\prod[24]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BEEB"
    )
        port map (
      I0 => inst0_n_34,
      I1 => ka(0),
      I2 => \add_int_part_inst/0\,
      I3 => kb(0),
      O => \prod[24]_i_4_n_0\
    );
\prod[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FC000C000A000A0"
    )
        port map (
      I0 => \prod[25]_i_2_n_0\,
      I1 => \prod[25]_i_3_n_0\,
      I2 => \prod[16]_i_1_n_0\,
      I3 => log_int(4),
      I4 => \prod[25]_i_4_n_0\,
      I5 => log_int(3),
      O => \prod_reg__0\(25)
    );
\prod[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \prod[31]_i_13_n_0\,
      I1 => \prod[31]_i_14_n_0\,
      I2 => log_int(2),
      I3 => \prod[31]_i_15_n_0\,
      I4 => log_int(1),
      I5 => \prod[31]_i_7_n_0\,
      O => \prod[25]_i_2_n_0\
    );
\prod[25]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => log_int(1),
      I1 => inst0_n_24,
      I2 => log_int(0),
      I3 => log_int(2),
      O => \prod[25]_i_3_n_0\
    );
\prod[25]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \prod[31]_i_8_n_0\,
      I1 => \prod[31]_i_9_n_0\,
      I2 => log_int(2),
      I3 => \prod[31]_i_11_n_0\,
      I4 => log_int(1),
      I5 => log_int(0),
      O => \prod[25]_i_4_n_0\
    );
\prod[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FC000C000A000A0"
    )
        port map (
      I0 => \prod[26]_i_2_n_0\,
      I1 => \prod[26]_i_3_n_0\,
      I2 => \prod[16]_i_1_n_0\,
      I3 => log_int(4),
      I4 => \prod[26]_i_4_n_0\,
      I5 => log_int(3),
      O => \prod_reg__0\(26)
    );
\prod[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \prod[30]_i_10_n_0\,
      I1 => \prod[30]_i_11_n_0\,
      I2 => log_int(2),
      I3 => \prod[30]_i_5_n_0\,
      I4 => log_int(1),
      I5 => \prod[30]_i_6_n_0\,
      O => \prod[26]_i_2_n_0\
    );
\prod[26]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => log_int(1),
      I1 => inst0_n_24,
      I2 => log_int(0),
      I3 => inst0_n_23,
      I4 => log_int(2),
      O => \prod[26]_i_3_n_0\
    );
\prod[26]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFC0AFC0A0C0AFC0"
    )
        port map (
      I0 => \prod[30]_i_7_n_0\,
      I1 => \prod[30]_i_8_n_0\,
      I2 => log_int(2),
      I3 => log_int(1),
      I4 => log_int(0),
      I5 => inst0_n_34,
      O => \prod[26]_i_4_n_0\
    );
\prod[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FC000C000A000A0"
    )
        port map (
      I0 => \prod[27]_i_2_n_0\,
      I1 => \prod[27]_i_3_n_0\,
      I2 => \prod[16]_i_1_n_0\,
      I3 => log_int(4),
      I4 => \prod[27]_i_4_n_0\,
      I5 => log_int(3),
      O => \prod_reg__0\(27)
    );
\prod[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \prod[31]_i_14_n_0\,
      I1 => \prod[31]_i_15_n_0\,
      I2 => log_int(2),
      I3 => \prod[31]_i_7_n_0\,
      I4 => log_int(1),
      I5 => \prod[31]_i_8_n_0\,
      O => \prod[27]_i_2_n_0\
    );
\prod[27]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => inst0_n_22,
      I1 => log_int(0),
      I2 => inst0_n_23,
      I3 => log_int(1),
      I4 => inst0_n_24,
      I5 => log_int(2),
      O => \prod[27]_i_3_n_0\
    );
\prod[27]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFF000CC00F000"
    )
        port map (
      I0 => inst0_n_29,
      I1 => inst0_n_36,
      I2 => \prod[31]_i_11_n_0\,
      I3 => log_int(2),
      I4 => log_int(1),
      I5 => log_int(0),
      O => \prod[27]_i_4_n_0\
    );
\prod[27]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => func_reg_reg_n_0,
      I1 => inst0_n_15,
      O => \prod[27]_i_6_n_0\
    );
\prod[27]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => func_reg_reg_n_0,
      I1 => inst0_n_16,
      O => \prod[27]_i_7_n_0\
    );
\prod[27]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => func_reg_reg_n_0,
      I1 => inst0_n_17,
      O => \prod[27]_i_8_n_0\
    );
\prod[27]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => func_reg_reg_n_0,
      I1 => inst0_n_18,
      O => \prod[27]_i_9_n_0\
    );
\prod[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FC000C000A000A0"
    )
        port map (
      I0 => \prod[28]_i_2_n_0\,
      I1 => \prod[28]_i_3_n_0\,
      I2 => \prod[16]_i_1_n_0\,
      I3 => log_int(4),
      I4 => \prod[28]_i_4_n_0\,
      I5 => log_int(3),
      O => \prod_reg__0\(28)
    );
\prod[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \prod[30]_i_11_n_0\,
      I1 => \prod[30]_i_5_n_0\,
      I2 => log_int(2),
      I3 => \prod[30]_i_6_n_0\,
      I4 => log_int(1),
      I5 => \prod[30]_i_7_n_0\,
      O => \prod[28]_i_2_n_0\
    );
\prod[28]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \prod[30]_i_10_n_0\,
      I1 => log_int(1),
      I2 => inst0_n_23,
      I3 => log_int(0),
      I4 => inst0_n_24,
      I5 => log_int(2),
      O => \prod[28]_i_3_n_0\
    );
\prod[28]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA288A222A200A2"
    )
        port map (
      I0 => log_int(2),
      I1 => log_int(0),
      I2 => inst0_n_34,
      I3 => log_int(1),
      I4 => inst0_n_35,
      I5 => inst0_n_36,
      O => \prod[28]_i_4_n_0\
    );
\prod[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FC000C000A000A0"
    )
        port map (
      I0 => \prod[29]_i_2_n_0\,
      I1 => \prod[29]_i_3_n_0\,
      I2 => \prod[16]_i_1_n_0\,
      I3 => log_int(4),
      I4 => \prod[29]_i_4_n_0\,
      I5 => log_int(3),
      O => \prod_reg__0\(29)
    );
\prod[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \prod[31]_i_15_n_0\,
      I1 => \prod[31]_i_7_n_0\,
      I2 => log_int(2),
      I3 => \prod[31]_i_8_n_0\,
      I4 => log_int(1),
      I5 => \prod[31]_i_9_n_0\,
      O => \prod[29]_i_2_n_0\
    );
\prod[29]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F004F4F0F004040"
    )
        port map (
      I0 => log_int(0),
      I1 => inst0_n_24,
      I2 => log_int(2),
      I3 => \prod[31]_i_13_n_0\,
      I4 => log_int(1),
      I5 => \prod[31]_i_14_n_0\,
      O => \prod[29]_i_3_n_0\
    );
\prod[29]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8882808"
    )
        port map (
      I0 => log_int(2),
      I1 => log_int(0),
      I2 => log_int(1),
      I3 => inst0_n_34,
      I4 => inst0_n_35,
      O => \prod[29]_i_4_n_0\
    );
\prod[29]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => ka(0),
      I1 => ka(2),
      I2 => a_reg(0),
      I3 => ka(3),
      I4 => ka(1),
      O => \prod[29]_i_6_n_0\
    );
\prod[29]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => func_reg_reg_n_0,
      I1 => inst0_n_8,
      O => \prod[29]_i_7_n_0\
    );
\prod[29]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => func_reg_reg_n_0,
      I1 => inst0_n_9,
      O => \prod[29]_i_8_n_0\
    );
\prod[29]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => func_reg_reg_n_0,
      I1 => inst0_n_10,
      O => \prod[29]_i_9_n_0\
    );
\prod[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \prod[26]_i_3_n_0\,
      I1 => log_int(4),
      I2 => \prod[26]_i_2_n_0\,
      I3 => log_int(3),
      I4 => \prod[26]_i_4_n_0\,
      O => \prod[2]_i_1_n_0\
    );
\prod[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FC000C000A000A0"
    )
        port map (
      I0 => \prod[30]_i_2_n_0\,
      I1 => \prod[30]_i_3_n_0\,
      I2 => \prod[16]_i_1_n_0\,
      I3 => log_int(4),
      I4 => \prod[30]_i_4_n_0\,
      I5 => log_int(3),
      O => \prod_reg__0\(30)
    );
\prod[30]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEEB8228"
    )
        port map (
      I0 => inst0_n_22,
      I1 => kb(0),
      I2 => \add_int_part_inst/0\,
      I3 => ka(0),
      I4 => inst0_n_21,
      O => \prod[30]_i_10_n_0\
    );
\prod[30]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEEB8228"
    )
        port map (
      I0 => inst0_n_28,
      I1 => kb(0),
      I2 => \add_int_part_inst/0\,
      I3 => ka(0),
      I4 => inst0_n_27,
      O => \prod[30]_i_11_n_0\
    );
\prod[30]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => func_reg_reg_n_0,
      I1 => inst0_n_19,
      O => \prod[30]_i_14_n_0\
    );
\prod[30]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => func_reg_reg_n_0,
      I1 => inst0_n_20,
      O => \prod[30]_i_15_n_0\
    );
\prod[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \prod[30]_i_5_n_0\,
      I1 => \prod[30]_i_6_n_0\,
      I2 => log_int(2),
      I3 => \prod[30]_i_7_n_0\,
      I4 => log_int(1),
      I5 => \prod[30]_i_8_n_0\,
      O => \prod[30]_i_2_n_0\
    );
\prod[30]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \prod[30]_i_9_n_0\,
      I1 => log_int(2),
      I2 => \prod[30]_i_10_n_0\,
      I3 => log_int(1),
      I4 => \prod[30]_i_11_n_0\,
      O => \prod[30]_i_3_n_0\
    );
\prod[30]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A00"
    )
        port map (
      I0 => log_int(2),
      I1 => inst0_n_34,
      I2 => log_int(0),
      I3 => log_int(1),
      O => \prod[30]_i_4_n_0\
    );
\prod[30]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEEB8228"
    )
        port map (
      I0 => inst0_n_26,
      I1 => kb(0),
      I2 => \add_int_part_inst/0\,
      I3 => ka(0),
      I4 => inst0_n_25,
      O => \prod[30]_i_5_n_0\
    );
\prod[30]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEEB8228"
    )
        port map (
      I0 => inst0_n_32,
      I1 => kb(0),
      I2 => \add_int_part_inst/0\,
      I3 => ka(0),
      I4 => inst0_n_31,
      O => \prod[30]_i_6_n_0\
    );
\prod[30]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEEB8228"
    )
        port map (
      I0 => inst0_n_30,
      I1 => kb(0),
      I2 => \add_int_part_inst/0\,
      I3 => ka(0),
      I4 => inst0_n_29,
      O => \prod[30]_i_7_n_0\
    );
\prod[30]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEEB8228"
    )
        port map (
      I0 => inst0_n_36,
      I1 => kb(0),
      I2 => \add_int_part_inst/0\,
      I3 => ka(0),
      I4 => inst0_n_35,
      O => \prod[30]_i_8_n_0\
    );
\prod[30]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEEB8228"
    )
        port map (
      I0 => inst0_n_24,
      I1 => kb(0),
      I2 => \add_int_part_inst/0\,
      I3 => ka(0),
      I4 => inst0_n_23,
      O => \prod[30]_i_9_n_0\
    );
\prod[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FC000C000A000A0"
    )
        port map (
      I0 => \prod[31]_i_2_n_0\,
      I1 => \prod[31]_i_3_n_0\,
      I2 => \prod[16]_i_1_n_0\,
      I3 => log_int(4),
      I4 => \prod[31]_i_5_n_0\,
      I5 => log_int(3),
      O => \prod_reg__0\(31)
    );
\prod[31]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DE4821B721B7DE48"
    )
        port map (
      I0 => func_reg_reg_n_0,
      I1 => kb(0),
      I2 => ka(0),
      I3 => \add_int_part_inst/0\,
      I4 => kb(1),
      I5 => ka(1),
      O => log_int(1)
    );
\prod[31]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEEB8228"
    )
        port map (
      I0 => inst0_n_35,
      I1 => kb(0),
      I2 => \add_int_part_inst/0\,
      I3 => ka(0),
      I4 => inst0_n_34,
      O => \prod[31]_i_11_n_0\
    );
\prod[31]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2882"
    )
        port map (
      I0 => inst0_n_24,
      I1 => ka(0),
      I2 => \add_int_part_inst/0\,
      I3 => kb(0),
      O => \prod[31]_i_12_n_0\
    );
\prod[31]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEEB8228"
    )
        port map (
      I0 => inst0_n_23,
      I1 => kb(0),
      I2 => \add_int_part_inst/0\,
      I3 => ka(0),
      I4 => inst0_n_22,
      O => \prod[31]_i_13_n_0\
    );
\prod[31]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEEB8228"
    )
        port map (
      I0 => inst0_n_21,
      I1 => kb(0),
      I2 => \add_int_part_inst/0\,
      I3 => ka(0),
      I4 => inst0_n_28,
      O => \prod[31]_i_14_n_0\
    );
\prod[31]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEEB8228"
    )
        port map (
      I0 => inst0_n_27,
      I1 => kb(0),
      I2 => \add_int_part_inst/0\,
      I3 => ka(0),
      I4 => inst0_n_26,
      O => \prod[31]_i_15_n_0\
    );
\prod[31]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => kb(3),
      I1 => ka(3),
      I2 => \prod[31]_i_19_n_0\,
      I3 => ka(2),
      I4 => kb(2),
      O => \prod[31]_i_16_n_0\
    );
\prod[31]_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2BFF002B"
    )
        port map (
      I0 => kb(2),
      I1 => ka(2),
      I2 => \prod[16]_i_5_n_0\,
      I3 => ka(3),
      I4 => kb(3),
      O => \prod[31]_i_17_n_0\
    );
\prod[31]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => kb(0),
      I1 => \add_int_part_inst/0\,
      I2 => ka(0),
      O => log_int(0)
    );
\prod[31]_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => kb(1),
      I1 => ka(1),
      I2 => kb(0),
      I3 => ka(0),
      I4 => \add_int_part_inst/0\,
      O => \prod[31]_i_19_n_0\
    );
\prod[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \prod[31]_i_7_n_0\,
      I1 => \prod[31]_i_8_n_0\,
      I2 => log_int(2),
      I3 => \prod[31]_i_9_n_0\,
      I4 => log_int(1),
      I5 => \prod[31]_i_11_n_0\,
      O => \prod[31]_i_2_n_0\
    );
\prod[31]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ka(3),
      I1 => kb(3),
      O => \prod[31]_i_20_n_0\
    );
\prod[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \prod[31]_i_12_n_0\,
      I1 => \prod[31]_i_13_n_0\,
      I2 => log_int(2),
      I3 => \prod[31]_i_14_n_0\,
      I4 => log_int(1),
      I5 => \prod[31]_i_15_n_0\,
      O => \prod[31]_i_3_n_0\
    );
\prod[31]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => log_int(2),
      I1 => log_int(0),
      I2 => log_int(1),
      O => \prod[31]_i_5_n_0\
    );
\prod[31]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8803CFBB77FC3044"
    )
        port map (
      I0 => \prod[16]_i_5_n_0\,
      I1 => func_reg_reg_n_0,
      I2 => \prod[31]_i_19_n_0\,
      I3 => ka(2),
      I4 => kb(2),
      I5 => \prod[31]_i_20_n_0\,
      O => log_int(3)
    );
\prod[31]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEEB8228"
    )
        port map (
      I0 => inst0_n_25,
      I1 => kb(0),
      I2 => \add_int_part_inst/0\,
      I3 => ka(0),
      I4 => inst0_n_32,
      O => \prod[31]_i_7_n_0\
    );
\prod[31]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEEB8228"
    )
        port map (
      I0 => inst0_n_31,
      I1 => kb(0),
      I2 => \add_int_part_inst/0\,
      I3 => ka(0),
      I4 => inst0_n_30,
      O => \prod[31]_i_8_n_0\
    );
\prod[31]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEEB8228"
    )
        port map (
      I0 => inst0_n_29,
      I1 => kb(0),
      I2 => \add_int_part_inst/0\,
      I3 => ka(0),
      I4 => inst0_n_36,
      O => \prod[31]_i_9_n_0\
    );
\prod[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \prod[27]_i_3_n_0\,
      I1 => log_int(4),
      I2 => \prod[27]_i_2_n_0\,
      I3 => log_int(3),
      I4 => \prod[27]_i_4_n_0\,
      O => \prod[3]_i_1_n_0\
    );
\prod[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3033308830003088"
    )
        port map (
      I0 => \prod[16]_i_10_n_0\,
      I1 => log_int(4),
      I2 => \prod[28]_i_2_n_0\,
      I3 => log_int(3),
      I4 => log_int(2),
      I5 => \prod[12]_i_2_n_0\,
      O => \prod[4]_i_1_n_0\
    );
\prod[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \prod[29]_i_3_n_0\,
      I1 => log_int(4),
      I2 => \prod[29]_i_2_n_0\,
      I3 => log_int(3),
      I4 => \prod[29]_i_4_n_0\,
      O => \prod[5]_i_1_n_0\
    );
\prod[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \prod[30]_i_3_n_0\,
      I1 => log_int(4),
      I2 => \prod[30]_i_2_n_0\,
      I3 => log_int(3),
      I4 => \prod[30]_i_4_n_0\,
      O => \prod[6]_i_1_n_0\
    );
\prod[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \prod[31]_i_3_n_0\,
      I1 => log_int(4),
      I2 => \prod[31]_i_2_n_0\,
      I3 => log_int(3),
      I4 => \prod[31]_i_5_n_0\,
      O => \prod[7]_i_1_n_0\
    );
\prod[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFE2000000E200"
    )
        port map (
      I0 => \prod[16]_i_8_n_0\,
      I1 => log_int(2),
      I2 => \prod[16]_i_10_n_0\,
      I3 => log_int(4),
      I4 => log_int(3),
      I5 => \prod[24]_i_3_n_0\,
      O => \prod[8]_i_1_n_0\
    );
\prod[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \prod[25]_i_3_n_0\,
      I1 => \prod[25]_i_2_n_0\,
      I2 => log_int(4),
      I3 => log_int(3),
      I4 => \prod[25]_i_4_n_0\,
      O => \prod[9]_i_1_n_0\
    );
\prod_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => prod_OBUF(0),
      O => prod(0)
    );
\prod_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => prod_OBUF(10),
      O => prod(10)
    );
\prod_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => prod_OBUF(11),
      O => prod(11)
    );
\prod_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => prod_OBUF(12),
      O => prod(12)
    );
\prod_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => prod_OBUF(13),
      O => prod(13)
    );
\prod_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => prod_OBUF(14),
      O => prod(14)
    );
\prod_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => prod_OBUF(15),
      O => prod(15)
    );
\prod_OBUF[16]_inst\: unisim.vcomponents.OBUF
     port map (
      I => prod_OBUF(16),
      O => prod(16)
    );
\prod_OBUF[17]_inst\: unisim.vcomponents.OBUF
     port map (
      I => prod_OBUF(17),
      O => prod(17)
    );
\prod_OBUF[18]_inst\: unisim.vcomponents.OBUF
     port map (
      I => prod_OBUF(18),
      O => prod(18)
    );
\prod_OBUF[19]_inst\: unisim.vcomponents.OBUF
     port map (
      I => prod_OBUF(19),
      O => prod(19)
    );
\prod_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => prod_OBUF(1),
      O => prod(1)
    );
\prod_OBUF[20]_inst\: unisim.vcomponents.OBUF
     port map (
      I => prod_OBUF(20),
      O => prod(20)
    );
\prod_OBUF[21]_inst\: unisim.vcomponents.OBUF
     port map (
      I => prod_OBUF(21),
      O => prod(21)
    );
\prod_OBUF[22]_inst\: unisim.vcomponents.OBUF
     port map (
      I => prod_OBUF(22),
      O => prod(22)
    );
\prod_OBUF[23]_inst\: unisim.vcomponents.OBUF
     port map (
      I => prod_OBUF(23),
      O => prod(23)
    );
\prod_OBUF[24]_inst\: unisim.vcomponents.OBUF
     port map (
      I => prod_OBUF(24),
      O => prod(24)
    );
\prod_OBUF[25]_inst\: unisim.vcomponents.OBUF
     port map (
      I => prod_OBUF(25),
      O => prod(25)
    );
\prod_OBUF[26]_inst\: unisim.vcomponents.OBUF
     port map (
      I => prod_OBUF(26),
      O => prod(26)
    );
\prod_OBUF[27]_inst\: unisim.vcomponents.OBUF
     port map (
      I => prod_OBUF(27),
      O => prod(27)
    );
\prod_OBUF[28]_inst\: unisim.vcomponents.OBUF
     port map (
      I => prod_OBUF(28),
      O => prod(28)
    );
\prod_OBUF[29]_inst\: unisim.vcomponents.OBUF
     port map (
      I => prod_OBUF(29),
      O => prod(29)
    );
\prod_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => prod_OBUF(2),
      O => prod(2)
    );
\prod_OBUF[30]_inst\: unisim.vcomponents.OBUF
     port map (
      I => prod_OBUF(30),
      O => prod(30)
    );
\prod_OBUF[31]_inst\: unisim.vcomponents.OBUF
     port map (
      I => prod_OBUF(31),
      O => prod(31)
    );
\prod_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => prod_OBUF(3),
      O => prod(3)
    );
\prod_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => prod_OBUF(4),
      O => prod(4)
    );
\prod_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => prod_OBUF(5),
      O => prod(5)
    );
\prod_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => prod_OBUF(6),
      O => prod(6)
    );
\prod_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => prod_OBUF(7),
      O => prod(7)
    );
\prod_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => prod_OBUF(8),
      O => prod(8)
    );
\prod_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => prod_OBUF(9),
      O => prod(9)
    );
\prod_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \prod[0]_i_1_n_0\,
      Q => prod_OBUF(0),
      R => \prod[16]_i_1_n_0\
    );
\prod_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \prod[10]_i_1_n_0\,
      Q => prod_OBUF(10),
      R => \prod[16]_i_1_n_0\
    );
\prod_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \prod[11]_i_1_n_0\,
      Q => prod_OBUF(11),
      R => \prod[16]_i_1_n_0\
    );
\prod_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \prod[12]_i_1_n_0\,
      Q => prod_OBUF(12),
      R => \prod[16]_i_1_n_0\
    );
\prod_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \prod[13]_i_1_n_0\,
      Q => prod_OBUF(13),
      R => \prod[16]_i_1_n_0\
    );
\prod_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \prod[14]_i_1_n_0\,
      Q => prod_OBUF(14),
      R => \prod[16]_i_1_n_0\
    );
\prod_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \prod[15]_i_1_n_0\,
      Q => prod_OBUF(15),
      R => \prod[16]_i_1_n_0\
    );
\prod_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \prod[16]_i_2_n_0\,
      Q => prod_OBUF(16),
      R => \prod[16]_i_1_n_0\
    );
\prod_reg[16]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \prod[16]_i_18_n_0\,
      I1 => \prod[16]_i_19_n_0\,
      O => log_int(2),
      S => func_reg_reg_n_0
    );
\prod_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \prod_reg__0\(17),
      Q => prod_OBUF(17),
      R => '0'
    );
\prod_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \prod_reg__0\(18),
      Q => prod_OBUF(18),
      R => '0'
    );
\prod_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \prod_reg__0\(19),
      Q => prod_OBUF(19),
      R => '0'
    );
\prod_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \prod[1]_i_1_n_0\,
      Q => prod_OBUF(1),
      R => \prod[16]_i_1_n_0\
    );
\prod_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \prod_reg__0\(20),
      Q => prod_OBUF(20),
      R => '0'
    );
\prod_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \prod_reg__0\(21),
      Q => prod_OBUF(21),
      R => '0'
    );
\prod_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \prod_reg__0\(22),
      Q => prod_OBUF(22),
      R => '0'
    );
\prod_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \prod_reg__0\(23),
      Q => prod_OBUF(23),
      R => '0'
    );
\prod_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \prod_reg__0\(24),
      Q => prod_OBUF(24),
      R => '0'
    );
\prod_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \prod_reg__0\(25),
      Q => prod_OBUF(25),
      R => '0'
    );
\prod_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \prod_reg__0\(26),
      Q => prod_OBUF(26),
      R => '0'
    );
\prod_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \prod_reg__0\(27),
      Q => prod_OBUF(27),
      R => '0'
    );
\prod_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \prod_reg__0\(28),
      Q => prod_OBUF(28),
      R => '0'
    );
\prod_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \prod_reg__0\(29),
      Q => prod_OBUF(29),
      R => '0'
    );
\prod_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \prod[2]_i_1_n_0\,
      Q => prod_OBUF(2),
      R => \prod[16]_i_1_n_0\
    );
\prod_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \prod_reg__0\(30),
      Q => prod_OBUF(30),
      R => '0'
    );
\prod_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \prod_reg__0\(31),
      Q => prod_OBUF(31),
      R => '0'
    );
\prod_reg[31]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \prod[31]_i_16_n_0\,
      I1 => \prod[31]_i_17_n_0\,
      O => log_int(4),
      S => func_reg_reg_n_0
    );
\prod_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \prod[3]_i_1_n_0\,
      Q => prod_OBUF(3),
      R => \prod[16]_i_1_n_0\
    );
\prod_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \prod[4]_i_1_n_0\,
      Q => prod_OBUF(4),
      R => \prod[16]_i_1_n_0\
    );
\prod_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \prod[5]_i_1_n_0\,
      Q => prod_OBUF(5),
      R => \prod[16]_i_1_n_0\
    );
\prod_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \prod[6]_i_1_n_0\,
      Q => prod_OBUF(6),
      R => \prod[16]_i_1_n_0\
    );
\prod_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \prod[7]_i_1_n_0\,
      Q => prod_OBUF(7),
      R => \prod[16]_i_1_n_0\
    );
\prod_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \prod[8]_i_1_n_0\,
      Q => prod_OBUF(8),
      R => \prod[16]_i_1_n_0\
    );
\prod_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \prod[9]_i_1_n_0\,
      Q => prod_OBUF(9),
      R => \prod[16]_i_1_n_0\
    );
end STRUCTURE;
