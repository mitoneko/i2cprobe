library IEEE;
use IEEE.std_logic_1164.all;

entity test_detect_rise is
end test_detect_rise;

architecture SIM of test_detect_rise is
    signal clk : std_logic := '0';
    signal l_sig : std_logic := '0';
    signal rise : std_logic := '0';
    signal fall : std_logic := '0';

    component detect_rise is
        port (  clk : in    std_logic;
                sig : in    std_logic;
                rise : out  std_logic );
    end component;

    component detect_fall is
        port (  clk : in    std_logic;
                sig : in    std_logic;
                fall : out  std_logic );
    end component;
begin
    -- generate clock
    process begin
        clk <= not clk;
        wait for 50 ns;
    end process;

    l_sig <= '1' after 200 ns, '0' after 500 ns, '1' after 600 ns, '0' after 900 ns;

    U1: detect_rise port map( clk => clk, sig => l_sig, rise => rise);
    U2: detect_fall port map( clk => clk, sig => l_sig, fall => fall);
end SIM;
