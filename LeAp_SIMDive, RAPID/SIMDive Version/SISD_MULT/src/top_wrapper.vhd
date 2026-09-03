library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
library UNISIM;
use UNISIM.VComponents.all;


entity top_wrapper is
generic (word_size: natural := 8);
    Port ( 
           a : in STD_LOGIC_VECTOR (word_size -1 downto 0);
           b : in STD_LOGIC_VECTOR (word_size -1 downto 0);
           prod : out STD_LOGIC_VECTOR (2*word_size -1 downto 0);
           clk : in STD_LOGIC;
           rst : in STD_LOGIC);
    end top_wrapper;

architecture Behavioral of top_wrapper is

component ez_mult_64 is
 
    Port ( input1_i : in  STD_LOGIC_VECTOR   (word_size -1  downto 0);
           input2_i : in  STD_LOGIC_VECTOR   (word_size - 1 downto 0);
           product_o : out  STD_LOGIC_VECTOR (2*word_size - 1 downto 0)
           );
end component;

signal a_reg : STD_LOGIC_VECTOR (word_size-1 downto 0);
signal b_reg : STD_LOGIC_VECTOR (word_size-1 downto 0);

signal prod_reg: STD_LOGIC_VECTOR (word_size * 2 - 1 downto 0);

begin

process (clk, rst)
begin
if(rst'event and rst = '1') then

a_reg <= (others => '0');
b_reg <= (others => '0');
prod  <= (others => '0');
end if;

if(clk'event and clk = '1') then

a_reg <= a;
b_reg <= b;
prod  <= prod_reg;
end if;
end process;

inst0 : ez_mult_64
  PORT MAP (
    input1_i  => a_reg,
    input2_i  => b_reg,
    product_o => prod_reg
  );

end Behavioral;
