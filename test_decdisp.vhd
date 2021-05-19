library IEEE;
use IEEE.std_logic_1164.all;

entity test_decdisp is
end test_decdisp;

architecture SIM of test_decdisp is
    signal clk: std_logic := '0';
    signal rst: std_logic := '1';
    signal hex0: std_logic_vector(6 downto 0);
    signal hex1: std_logic_vector(6 downto 0);
    signal hex2: std_logic_vector(6 downto 0);
    signal hex3: std_logic_vector(6 downto 0);
    signal hex4: std_logic_vector(6 downto 0);
    signal data: std_logic_vector(15 downto 0);

    component decdisp is
        port (  clk :   in  std_logic;
                rst:    in  std_logic;
                data:   in  std_logic_vector(15 downto 0);
                hex0:   out std_logic_vector(6 downto 0);
                hex1:   out std_logic_vector(6 downto 0);
                hex2:   out std_logic_vector(6 downto 0);
                hex3:   out std_logic_vector(6 downto 0);
                hex4:   out std_logic_vector(6 downto 0) );
    end component;
begin
    U1: decdisp port map(clk, rst, data, hex0, hex1, hex2, hex3, hex4);

    process begin
        clk <= not clk;
        wait for 10 ns;
    end process;

    process begin
        data <= "1010101010101010";
        rst <= '1';  wait for 50 ns;
        rst <= '0';  wait for 20 ns;
        wait for 350 ns;
        data <= "0011001100110011";
        wait for 350 ns;
        assert false report "end." severity FAILURE;
    end process;
end SIM;
