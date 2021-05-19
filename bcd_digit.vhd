library IEEE;
use IEEE.std_logic_1164.all;

entity bcd_digit is
    port (  clk :   in  std_logic;
            init:   in  std_logic;
            donein: in  std_logic;
            modin:  in  std_logic;
            modout: out std_logic;
            q:      out std_logic_vector(3 downto 0) );
end bcd_digit;

architecture RTL of bcd_digit is
    signal bcd: std_logic_vector(3 downto 0);
begin
    process(clk, init)
    begin
        if (clk'event and clk='1') then
            if init = '1' then
                bcd <= "0000";
            elsif donein = '0' then
                case bcd is
                    when "0000" => bcd <= "000" & modin; -- 0*2 + modin
                    when "0001" => bcd <= "001" & modin; -- 1*2 + modin
                    when "0010" => bcd <= "010" & modin; -- 2*2 + modin
                    when "0011" => bcd <= "011" & modin; -- 3*2 + modin
                    when "0100" => bcd <= "100" & modin; -- 4*2 + modin
                    when "0101" => bcd <= "000" & modin; -- 5*2 + modin (modout=1 after this line)
                    when "0110" => bcd <= "001" & modin; -- 6*2 + modin
                    when "0111" => bcd <= "010" & modin; -- 7*2 + modin
                    when "1000" => bcd <= "011" & modin; -- 8*2 + modin
                    when "1001" => bcd <= "100" & modin; -- 9*2 + modin
                    when others => bcd <= "0000";
                end case;
            end if;
        end if;
    end process;

    modout <= '1' when bcd >= "0101" else '0';
    q <= bcd;
end RTL;
            
