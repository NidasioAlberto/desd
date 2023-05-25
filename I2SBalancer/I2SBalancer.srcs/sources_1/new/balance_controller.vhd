library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity balance_controller is
    generic (
        -- Has to be from 0 to BITS_BALANCE - 2
        AMPLIFICATION_EXPONENT : positive := 6;

        -- Has to be at least AMPLIFICATION_EXPONENT + 2
        BITS_BALANCE           : positive := 10
    );
    port (
        -- Master interface (going to the balance controller module)
        m_axis_tvalid : out std_logic;
        m_axis_tlast  : out std_logic;
        m_axis_tdata  : out std_logic_vector(23 downto 0);
        m_axis_tready : in std_logic;

        -- Slave interface (coming from the i2s module)   
        s_axis_tvalid : in std_logic;
        s_axis_tlast  : in std_logic;
        s_axis_tdata  : in std_logic_vector(23 downto 0);
        s_axis_tready : out std_logic;

        aclk          : in std_logic;
        aresetn       : in std_logic;

        balance       : in std_logic_vector(BITS_BALANCE - 1 downto 0)
    );
end balance_controller;

architecture Behavioral of balance_controller is
    type state_type is (READ, COMPUTE_DECREASE, WRITE);
    signal state         : state_type;

    signal tlast         : std_logic;
    signal value         : signed(23 downto 0);
    signal balance_sign  : std_logic;
    signal balance_value : unsigned(BITS_BALANCE - 2 - AMPLIFICATION_EXPONENT downto 0);
begin
    -- The master port has data to output only when in write states
    with state select m_axis_tvalid <=
        '0' when READ,
        '0' when COMPUTE_DECREASE,
        '1' when WRITE;

    -- The slave port is ready only when reading
    with state select s_axis_tready <=
        '1' when READ,
        '0' when COMPUTE_DECREASE,
        '0' when WRITE;

    process (aclk, aresetn)
    begin
        if aresetn = '0' then
            -- On reset we restart the state machine
            state <= READ;
        elsif rising_edge(aclk) then
            case state is
                when READ =>
                    -- Receive the value if data is valid
                    if s_axis_tvalid = '1' then
                        -- We need to save tlast to write it back
                        tlast        <= s_axis_tlast;

                        -- Read the input value
                        value        <= signed(s_axis_tdata);

                        -- Read the balance sign (1 for positive, 0 for negative)
                        -- From the joystick we recevie an unsigned value from 0 to 1024.
                        -- From 0 to 511 the joystick is down, 512 is center, from 513 to 1024 is up.
                        -- So the most significan bit shows the sign
                        balance_sign <= balance(BITS_BALANCE - 1);

                        -- Then we need to save the value abs(balance - 512) / (2^AMPLIFICATION_EXPONENT)
                        if balance(BITS_BALANCE - 1) = '1' then
                            -- So if it is positive we just cut the value
                            balance_value <= unsigned(balance(BITS_BALANCE - 2 downto AMPLIFICATION_EXPONENT));
                        else
                            -- If it is positive we make a bitwise not plus 1
                            -- This computes abs(balance - 512) when balance < 512, so (balance - 512) is negative
                            balance_value <= not unsigned(balance(BITS_BALANCE - 2 downto AMPLIFICATION_EXPONENT));

                            -- Example with 4 bits.
                            --
                            -- Here the values go from 0 to 15 with the zero in 8, so:
                            --  0 = 0000 => sign = 0, value = !b000 + 1 = b111 + 1 = 8 = abs(-8)
                            --  1 = 0001 => sign = 0, value = !b001 + 1 = b110 + 1 = 7 = abs(-7)
                            --  2 = 0010 => sign = 0, value = !b010 + 1 = b101 + 1 = 6 = abs(-6)
                            --  3 = 0011 => sign = 0, value = !b011 + 1 = b100 + 1 = 5 = abs(-5)
                            --  4 = 0100 => sign = 0, value = !b100 + 1 = b011 + 1 = 4 = abs(-4)
                            --  5 = 0101 => sign = 0, value = !b101 + 1 = b010 + 1 = 3 = abs(-3)
                            --  6 = 0110 => sign = 0, value = !b110 + 1 = b001 + 1 = 2 = abs(-2)
                            --  7 = 0111 => sign = 0, value = !b111 + 1 = b000 + 1 = 1 = abs(-1)
                            --  8 = 1000 => sign = 1, value =  b000     = b000 + 1 = 0 = abs(0)
                            --  9 = 1001 => sign = 1, value =  b001     = b001 + 1 = 1 = abs(1)
                            -- 10 = 1010 => sign = 1, value =  b010     = b010 + 1 = 2 = abs(2)
                            -- 11 = 1011 => sign = 1, value =  b011     = b011 + 1 = 3 = abs(3)
                            -- 12 = 1100 => sign = 1, value =  b100     = b100 + 1 = 4 = abs(4)
                            -- 13 = 1101 => sign = 1, value =  b101     = b101 + 1 = 5 = abs(5)
                            -- 14 = 1110 => sign = 1, value =  b110     = b110 + 1 = 6 = abs(6)
                            -- 15 = 1111 => sign = 1, value =  b111     = b111 + 1 = 7 = abs(7)
                        end if;

                        -- Here we check if we actually need to adjust the volume
                        -- We need to if the balance is positive and we have read the right channel value
                        -- or if the balance is negative and we have read the left channel value
                        if balance_sign = tlast then
                            state <= COMPUTE_DECREASE;
                        else
                            -- If we do now need to change the channel volume we just write it back
                            state <= WRITE;
                        end if;
                    end if;
                when COMPUTE_DECREASE =>
                    -- Here we will loop this state until n=balance_value cycles have been completed
                    -- This allows to divide the channel value for the correct amount

                    -- Continue until the balance is 0
                    if balance_value > 0 then
                        -- Shift right
                        value         <= value(23) & value(23 downto 1);

                        -- Then we decrease the balance
                        balance_value <= balance_value - 1;
                    else
                        state <= WRITE;
                    end if;
                when WRITE =>
                    -- Write when slave is ready
                    if m_axis_tready = '1' then
                        m_axis_tdata <= std_logic_vector(value);
                        m_axis_tlast <= tlast;
                        state        <= READ;
                    end if;
            end case;
        end if;
    end process;
end Behavioral;