library IEEE;
use IEEE.std_logic_1164.all;

entity test_bintobcd is
end test_bintobcd;

architecture SIM of test_bintobcd is
    component bintobcd is
        port (  clk:    in  std_logic;
                x:      in  std_logic_vector(15 downto 0);
                load:   in  std_logic;
                q0:     out std_logic_vector(3 downto 0);
                q1:     out std_logic_vector(3 downto 0);
                q2:     out std_logic_vector(3 downto 0);
                q3:     out std_logic_vector(3 downto 0);
                q4:     out std_logic_vector(3 downto 0);
                done:   out std_logic );
    end component;

    signal clk: std_logic := '0';
    signal x: std_logic_vector(15 downto 0);
    signal load: std_logic := '0';
    signal q0, q1, q2, q3, q4: std_logic_vector(3 downto 0);
    signal done: std_logic;

begin
    U1: bintobcd port map(clk, x, load, q0, q1, q2, q3, q4, done);

    process begin
        clk <= not clk; 
        wait for 10 ns;
    end process;

    process begin
        x <= "1010101010101010";
        wait for 5 ns;
        load <= '1'; wait for 50 ns;
        load <= '0';
        wait until done='1' for 400 ns;
        wait for 30 ns;
        assert false report "end." severity FAILURE;
    end process;
end SIM;

