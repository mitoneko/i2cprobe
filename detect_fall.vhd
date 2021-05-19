-- 立ち上がりの検出
library IEEE;
use IEEE.std_logic_1164.all;

entity detect_fall is
    port (  clk : in    std_logic;
            sig : in    std_logic;
            fall : out  std_logic );
end detect_fall;

architecture RTL of detect_fall is
    signal shift_reg: std_logic_vector(3 downto 0);
begin
    process(clk)
    begin
        if (clk'event and clk='1') then
            shift_reg <= shift_reg(2 downto 0) & sig;
        end if;
    end process;
    fall <= '1' when shift_reg="1000" else '0';
end RTL;
