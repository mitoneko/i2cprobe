library IEEE;
use IEEE.std_logic_1164.all;

entity shiftbin16 is
    port (  clk :   in  std_logic;
            load:   in  std_logic;
            data:   in  std_logic_vector(15 downto 0);
            init_o: out std_logic;
            done:   out std_logic;
            q:      out std_logic );
end shiftbin16;

architecture RTL of shiftbin16 is
    signal shiftreg : std_logic_vector(16 downto 0);
    signal cnt : integer range 0 to 16;
begin
    process(clk) 
    begin
        if (clk'event and clk = '1') then
            if (load = '1') then
                shiftreg <= '0' & data;
                cnt <= 0;
            elsif (cnt <= 16) then 
                shiftreg <= shiftreg(15 downto 0) & '0';
                cnt <= cnt + 1;
            end if;
        end if;
    end process;
    init_o <= load;
    done <= '1' when cnt=17 else '0';
    q <= shiftreg(16);
end RTL;
