library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;


use STD.TEXTIO.ALL;
use IEEE.STD_LOGIC_TEXTIO.ALL;

entity top_tb is
end top_tb;

architecture Behavioral of top_tb is
constant N : integer := 16; --width
constant M : integer := 16; --height

signal clock : std_logic := '0';
signal reset : std_logic := '0';

signal a : std_logic_vector(N-1 downto 0) := '1' & (N-2 downto 0 => '0'); --width
signal b : std_logic_vector(M-1 downto 0) := '1' & (M-2 downto 0 => '0'); --height

signal mode_temp : std_logic_vector(M-1 downto 0) := '1' & (M-2 downto 0 => '0'); --height

signal mode : std_logic;
signal func : std_logic_vector (2 downto 0) ; 

signal p : std_logic_vector(N+M-1 downto 0);

signal acc_p, acc_p_reg : std_logic_vector(N+M-1 downto 0);
signal a1, a2 : std_logic_vector(N-1 downto 0) := (others => '0');
signal b1, b2 : std_logic_vector(M-1 downto 0) := (others => '0');
signal func1, func2 :std_logic_vector (2 downto 0);
signal mode1, mode2 : std_logic;
signal running : std_logic := '1';

signal total_clocks_sim : std_logic_vector(3*N-1 downto 0) := (3*N-8 downto 0 => '0') & "0100010" ;
constant clk_period : time := 8.578 ns;

component top_wrapper is
   --width and heigth of the multiplier
Port ( a : in STD_LOGIC_VECTOR (N -1 downto 0);
              b : in STD_LOGIC_VECTOR (M -1 downto 0);
              func: in  STD_LOGIC_VECTOR (2 downto 0);
              mode:  in STD_LOGIC;
              prod : out STD_LOGIC_VECTOR (N+M -1 downto 0);
              clk : in STD_LOGIC;
              rst : in STD_LOGIC)
              ;
end component;

  begin

  clock <= clock xor running after clk_period;

  DUT : top_wrapper

    port map(
    a => a,
    b => b,
    func => func,
    mode => mode,
    prod => p,
    clk => clock,
    rst => reset

  );


  Stimuli : process

  file file_results : text;
  file file_clocks : text;

  variable file_oline : line;
  variable file_oline_clock : line;

   file file_input1, file_input2, file_input3, file_input4 : text;
   variable file_iline1, file_iline2, file_iline3, file_iline4 : line;
   variable input_a : integer;
   variable input_b : integer;
   variable func_var : integer;
   variable mode_var : integer;
  begin

    wait for clk_period * 59;
-- I have already fixed the error
    file_open(file_clocks, "/afs/pd.inf.tu-dresden.de/users/muza153a/Desktop/SIMDive/SIMD_16_8/src//total_clocks.txt", write_mode);
    file_open(file_results, "/afs/pd.inf.tu-dresden.de/users/muza153a/Desktop/SIMDive/SIMD_16_8/src//mul_results_0.csv", write_mode);
    

    write(file_oline, string'("a, b, acc, approx"));
    writeline(file_results, file_oline);

    write(file_oline_clock, string'("Total number of clocks consumed for simulation: "));
    writeline(file_clocks, file_oline_clock);

    file_open(file_input1, "/afs/pd.inf.tu-dresden.de/users/muza153a/Desktop/SIMDive/SIMD_16_8/src/tb_in_a0.txt", read_mode);

    for i in 0 to 1000 loop
      readline (file_input1, file_iline1);
      read(file_iline1, input_a);
      a <= std_logic_vector(to_unsigned(input_a, a'length));
      
      file_open(file_input3, "/afs/pd.inf.tu-dresden.de/users/muza153a/Desktop/SIMDive/SIMD_16_8/src/binary.txt", read_mode);
   
               readline (file_input3, file_iline3);
               read(file_iline3, mode_var);
               mode_temp <=  std_logic_vector(to_unsigned(mode_var, mode_temp'length));
               mode <= mode_temp(0);
               func(2) <= mode_temp(0);
      file_open(file_input4, "/afs/pd.inf.tu-dresden.de/users/muza153a/Desktop/SIMDive/SIMD_16_8/src/function.txt", read_mode);
               
               readline (file_input4, file_iline4);
               read(file_iline4, func_var);
               func(1 downto 0) <=  std_logic_vector(to_unsigned(func_var, 2));
               wait until rising_edge(clock);   
      
      
   file_open(file_input2, "/afs/pd.inf.tu-dresden.de/users/muza153a/Desktop/SIMDive/SIMD_16_8/src/tb_in_b0.txt", read_mode);
      for j in 0 to 1000 loop
            readline (file_input2, file_iline2);
            read(file_iline2, input_b);
            b <= std_logic_vector(to_unsigned(input_b, b'length));
        


        a1 <= a;
        b1 <= b;
        func1 <= func;
        mode1 <= mode;
        a2 <= a1;
        b2 <= b1;
        func2 <= func1;
        mode2 <= mode;
        
        total_clocks_sim <= std_logic_vector(unsigned(total_clocks_sim) + 1);

       acc_p <= std_logic_vector(unsigned(a) * unsigned(b));
       acc_p_reg <= acc_p;

       write(file_oline, integer'image(to_integer(unsigned(a2))));
       write(file_oline, string'(", "));
       write(file_oline, integer'image(to_integer(unsigned(b2))));
       write(file_oline, string'(", "));
       write(file_oline, integer'image(to_integer(unsigned(acc_p_reg))));
       write(file_oline, string'(", "));
       write(file_oline, integer'image(to_integer(unsigned(p))));
       writeline(file_results, file_oline);

   
    end loop; file_close(file_input2);
   end loop; file_close(file_input1); 
   
   wait until rising_edge(clock);
    write(file_oline, integer'image(to_integer(unsigned(a2))));
    write(file_oline, string'(", "));
           write(file_oline, integer'image(to_integer(unsigned(b2))));
           write(file_oline, string'(", "));
           write(file_oline, integer'image(to_integer(unsigned(acc_p_reg))));
           write(file_oline, string'(", "));
           write(file_oline, integer'image(to_integer(unsigned(p))));
           writeline(file_results, file_oline);

        wait until rising_edge(clock);

           write(file_oline, integer'image(to_integer(unsigned(a1))));
           write(file_oline, string'(", "));
           write(file_oline, integer'image(to_integer(unsigned(b1))));
           write(file_oline, string'(", "));
           write(file_oline, integer'image(to_integer(unsigned(acc_p))));
           write(file_oline, string'(", "));
           write(file_oline, integer'image(to_integer(unsigned(p))));
           writeline(file_results, file_oline);

    wait for clk_period * 6;

    write(file_oline_clock, integer'image(to_integer(unsigned(total_clocks_sim))));
    writeline(file_clocks, file_oline_clock);

    file_close(file_results);
    file_close(file_clocks);
     running <= '0';
     wait;
end process;

end Behavioral;






