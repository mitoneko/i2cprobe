-- i2c client
library IEEE;
use IEEE.std_logic_1164.all;

entity i2c_client is
    generic ( i2c_addr : std_logic_vector(6 downto 0) := "0001000" );
    port (  clk: in     std_logic;
            rst: in     std_logic;
            scl: in     std_logic;
            sda: inout  std_logic;
            busy: out   std_logic;
            recv: out   std_logic;
            data: out   std_logic_vector(7 downto 0) );
end i2c_client;

architecture RTL of i2c_client is
    type fsmstate is (idle, addr, ack_addr, ack_addr_end, recv_data, ack_data, ack_data_end, send_recv, stop);
    signal state : fsmstate;
    signal rise_scl : std_logic;
    signal fall_scl : std_logic;
    signal rise_sda : std_logic;
    signal fall_sda : std_logic;
    signal bit_cnt : integer range 0 to 8;
    signal shift_reg : std_logic_vector(7 downto 0);
    signal start_sig : std_logic;
    signal end_sig : std_logic;

    component detect_fall is
        port (  clk : in    std_logic;
                sig : in    std_logic;
                fall : out  std_logic );
    end component;

    component detect_rise is
        port (  clk : in    std_logic;
                sig : in    std_logic;
                rise : out  std_logic );
    end component;
begin

    U1 : detect_rise port map( clk => clk, sig => scl, rise => rise_scl);
    U2 : detect_fall port map( clk => clk, sig => scl, fall => fall_scl);
    U3 : detect_rise port map( clk => clk, sig => sda, rise => rise_sda);
    U4 : detect_fall port map( clk => clk, sig => sda, fall => fall_sda);

    -- main control
    process(clk)
    begin
        if (clk'event and clk='1') then
            if (rst = '1') then
                state <= idle;
            else
                case state is
                    when idle =>
                        if (scl='1' and fall_sda='1') then
                            state <= addr;
                        end if;
                        bit_cnt <= 0;
                    when addr =>
                        if ((start_sig = '1') or (end_sig = '1')) then
                            state <= idle;
                        elsif (bit_cnt = 8) then 
                            state <= ack_addr;
                        elsif (rise_scl = '1') then
                           shift_reg <= shift_reg(6 downto 0) & sda;
                           bit_cnt <= bit_cnt + 1;
                        end if;
                    when ack_addr =>
                        if ((start_sig = '1') or (end_sig = '1')) then
                            state <= idle;
                        elsif (fall_scl = '1') then
                            if (shift_reg(7 downto 1) = i2c_addr) and (shift_reg(0) = '0') then
                                state <= ack_addr_end;
                            else 
                                state <= idle;
                            end if;
                        end if;
                    when ack_addr_end =>
                        if (fall_scl = '1') then
                            state <= recv_data;
                            bit_cnt <= 0;
                        end if;
                    when recv_data =>
                        if (start_sig = '1') then
                            state <= idle;
                        elsif (end_sig = '1') then
                            state <= stop;
                        elsif (bit_cnt = 8) then
                            state <= ack_data;
                        elsif (rise_scl = '1') then
                            shift_reg <= shift_reg(6 downto 0) & sda;
                            bit_cnt <= bit_cnt + 1;
                        end if;
                    when ack_data =>
                        if ((start_sig = '1') or (end_sig = '1')) then
                            state <= idle;
                        elsif (fall_scl = '1') then
                            data <= shift_reg;
                            state <= ack_data_end;
                        end if;
                    when ack_data_end =>
                        if (fall_scl = '1') then
                            state <= send_recv;
                            bit_cnt <= 0;
                        end if;
                    when send_recv =>
                        state <= recv_data; 
                    when others => 
                        state <= idle;
                end case;
            end if;
        end if;
    end process;
    start_sig <= scl and fall_sda;
    end_sig <= scl and rise_sda;
    sda <= '0' when state = ack_addr_end else 
           '0' when state = ack_data_end else
           'Z';
    recv <= '1' when state = send_recv else '0';
    busy <= '0' when state = idle else
            '0' when state = addr else 
            '0' when state = ack_addr else 
            '1';
end RTL;
