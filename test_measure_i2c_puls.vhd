library IEEE;
use IEEE.std_logic_1164.all;

entity test_measure_i2c_puls is
end test_measure_i2c_puls;

architecture SIM of test_measure_i2c_puls is
    component measure_i2c_puls is
        port (  clk :   in  std_logic;
                rst :   in  std_logic;
                sda :   in  std_logic;
                scl :   in  std_logic;
                wen :   out std_logic;
                wraddress :     out std_logic_vector(7 downto 0);
                wrdata :        out std_logic_vector(15 downto 0) );
    end component;

    signal clk, rst : std_logic := '0';
    signal sda, scl : std_logic := '1';
    signal wen : std_logic;
    signal add : std_logic_vector(7 downto 0);
    signal val : std_logic_vector(15 downto 0);
begin
    U1: measure_i2c_puls port map(clk, rst, sda, scl, wen, add, val);

    process begin
        clk <= not clk; wait for 5 ns;
    end process;

    rst <= '1' after 50 ns, '0' after 100 ns;
    process begin
        wait for 110 ns;
        sda <= '0'; wait for 100 ns;
        scl <= '0'; wait for 100 ns;
        sda <= '1'; wait for 100 ns;
        scl <= '1'; wait for 100 ns;
        scl <= '0'; wait for 100 ns;
        sda <= '0'; wait for 100 ns;
        scl <= '1'; wait for 100 ns;
        sda <= '1'; wait for 100 ns;
        scl <= '0'; wait for 100 ns;
        sda <= '0'; wait for 100 ns;
        assert false report "end." severity FAILURE;
    end process;
end SIM;

