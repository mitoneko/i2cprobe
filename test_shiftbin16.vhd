library IEEE;
use IEEE.std_logic_1164.all;

entity test_shiftreg16 is
end test_shiftreg16;

architecture SIM of test_shiftreg16 is
    component shiftbin16 is
        port (  clk :   in  std_logic;
                load:   in  std_logic;
                data:   in  std_logic_vector(15 downto 0);
                init_o: out std_logic;
                done:   out std_logic;
                q:      out std_logic );
    end component;

    signal clk: std_logic := '0';
    signal load: std_logic := '0';
    signal data: std_logic_vector(15 downto 0) := "1010101010101010";
    signal init_o: std_logic;
    signal done: std_logic;
    signal q: std_logic;

begin
    U1 : shiftbin16 port map(clk, load, data, init_o, done, q);

    process begin
        clk <= not clk;
        wait for 10 ns;
    end process;

    process begin
        data <= "1010101010101010"; wait for 10 ns;
        load <= '1'; wait for 50 ns;
        load <= '0';
        wait for 400 ns;
        assert false report "end." severity FAILURE;
    end process;
end SIM;
