-- i2c client_test
library IEEE;
use IEEE.std_logic_1164.all;

entity test_i2c_client is
end test_i2c_client;

architecture SIM of test_i2c_client is
    signal clk : std_logic := '0';
    signal rst : std_logic := '0';
    signal scl : std_logic := '1';
    signal sda : std_logic := '1';
    signal recv : std_logic ;
    signal data : std_logic_vector(7 downto 0);
    
    component i2c_client is
        generic ( i2c_addr : std_logic_vector(6 downto 0) := "0001000" );
        port (  clk: in     std_logic;
                rst: in     std_logic;
                scl: in     std_logic;
                sda: inout  std_logic;
                recv: out   std_logic;
                data: out   std_logic_vector(7 downto 0) );
    end component;
begin
    -- clk and reset
    process begin
        clk <= not clk;
        wait for 50 ns;
    end process;
    rst <= '1' after 100 ns, '0' after 320 ns;

    -- scl
    process begin
        scl <= '1';
        sda <= '1'; wait for 1 us;
        sda <= '0'; wait for 1 us; -- start cond
        scl <= '0';
        sda <= '0'; wait for 1 us;
        scl <= '1'; wait for 1 us; -- bit 7
        scl <= '0'; wait for 1 us;
        scl <= '1'; wait for 1 us; -- bit 6
        scl <= '0'; wait for 1 us;
        scl <= '1'; wait for 1 us; -- bit 5
        scl <= '0'; 
        sda <= '1'; wait for 1 us; 
        scl <= '1'; wait for 1 us; -- bit 4
        scl <= '0'; 
        sda <= '0'; wait for 1 us;
        scl <= '1'; wait for 1 us; -- bit 3
        scl <= '0'; wait for 1 us;
        scl <= '1'; wait for 1 us; -- bit 2
        scl <= '0'; wait for 1 us;
        scl <= '1'; wait for 1 us; -- bit 1
        scl <= '0'; wait for 1 us;
        scl <= '1'; wait for 1 us; -- bit 0
        scl <= '0';
        sda <= 'Z'; wait for 1 us;
        scl <= '1'; wait for 1 us; -- ack
        scl <= '0';
        sda <= '1'; wait for 1 us;
        scl <= '1'; wait for 1 us; -- bit 7
        scl <= '0'; wait for 1 us;
        scl <= '1'; wait for 1 us; -- bit 6
        scl <= '0';
        sda <= '0'; wait for 1 us;
        scl <= '1'; wait for 1 us; -- bit 5
        scl <= '0'; wait for 1 us; 
        scl <= '1'; wait for 1 us; -- bit 4
        scl <= '0';
        sda <= '1'; wait for 1 us;
        scl <= '1'; wait for 1 us; -- bit 3
        scl <= '0'; wait for 1 us;
        scl <= '1'; wait for 1 us; -- bit 2
        scl <= '0'; 
        sda <= '0'; wait for 1 us; 
        scl <= '1'; wait for 1 us; -- bit 1
        scl <= '0'; wait for 1 us;
        scl <= '1'; wait for 1 us; -- bit 0
        scl <= '0';
        sda <= 'Z'; wait for 1 us;
        scl <= '1'; wait for 1 us; -- ack
        scl <= '0';
        sda <= '0'; wait for 1 us;
        scl <= '1'; wait for 500 ns;
        sda <= '1'; wait for 500 ns; -- end cond
        wait for 1 us;
        assert false report "end." severity FAILURE;
    end process;

    -- logic
    U1 : i2c_client port map(clk, rst, scl, sda, recv, data); 
end SIM;
