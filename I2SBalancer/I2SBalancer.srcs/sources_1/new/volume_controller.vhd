library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity volume_controller is
    generic (
        -- Has to be from 0 to BITS_VOLUME - 2
        AMPLIFICATION_EXPONENT : positive := 6;

        -- Has to be at least AMPLIFICATION_EXPONENT + 2
        BITS_VOLUME            : positive := 10
    );
    port (
        -- Master interface (going to the volume controller module)
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

        volume        : in std_logic_vector(BITS_VOLUME - 1 downto 0)
    );
end volume_controller;

architecture Behavioral of volume_controller is
    constant max_value_tdata : signed(23 downto 0) := to_signed(2 ** 23 - 1, 24);
    constant min_value_tdata : signed(23 downto 0) := to_signed(2 ** 23, 24);

    type state_type is (READ, COMPUTE_INCREASE, COMPUTE_DECREASE, WRITE);
    signal state        : state_type;

    signal tlast        : std_logic;
    signal value        : signed(23 downto 0);
    signal volume_sign  : std_logic;
    signal volume_value : unsigned(BITS_VOLUME - 2 - AMPLIFICATION_EXPONENT downto 0);
begin
    -- The master port has data to output only when in write states
    with state select m_axis_tvalid <=
        '0' when READ,
        '0' when COMPUTE_INCREASE,
        '0' when COMPUTE_DECREASE,
        '1' when WRITE;

    -- The slave port is ready only when reading
    with state select s_axis_tready <=
        '1' when READ,
        '0' when COMPUTE_INCREASE,
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
                        tlast       <= s_axis_tlast;

                        -- Read the input value
                        value       <= signed(s_axis_tdata);

                        -- Read the volume_value sign (1 for positive, 0 for negative)
                        -- From the joystick we recevie an unsigned value from 0 to 1024.
                        -- From 0 to 511 the joystick is down, 512 is center, from 513 to 1024 is up.
                        -- So the most significan bit shows the sign
                        volume_sign <= volume(BITS_VOLUME - 1);

                        -- Then we need to save the value abs(volume - 512) / (2^AMPLIFICATION_EXPONENT)
                        if volume(BITS_VOLUME - 1) = '1' then
                            -- So if it is positive we just cut the value
                            volume_value <= unsigned(volume(BITS_VOLUME - 2 downto AMPLIFICATION_EXPONENT));
                        else
                            -- If it is positive we make a bitwise not plus 1
                            -- This computes abs(volume - 512) when volume < 512, so (volume - 512) is negative
                            volume_value <= not unsigned(volume(BITS_VOLUME - 2 downto AMPLIFICATION_EXPONENT));

                            -- See balance_controller for a better explanation of this operation
                        end if;

                        -- Check if the volume_value value is positive or negative
                        if volume_sign = '1' then
                            -- If it is positive we will increase the volume
                            state <= COMPUTE_INCREASE;
                        else
                            -- If it is negative we will decrease it
                            state <= COMPUTE_DECREASE;
                        end if;
                    end if;
                when COMPUTE_INCREASE =>
                    -- Here we will loop this state until n=volume_value cycles have been completed
                    -- This allows to divide the channel value for the correct amount

                    -- Continue until the volume_value is 0
                    if volume_value > 0 then
                        -- First we check if the value will overflow
                        if value(23) = value(22) then
                            -- The value will not overflow, so we can shift
                            value <= value(22 downto 0) & '0';
                        else
                            -- The value will overflow, so we cap it
                            if value(23) = '0' then
                                value <= max_value_tdata;
                            else
                                value <= min_value_tdata;
                            end if;

                            -- In this case we can jump straight to writing back the value
                            state <= WRITE;
                        end if;
                        -- Then we decrease the volume_value
                        volume_value <= volume_value - 1;
                    else
                        state <= WRITE;
                    end if;
                when COMPUTE_DECREASE =>
                    -- Here we will loop this state until n=volume_value cycles have been completed
                    -- This allows to divide the channel value for the correct amount

                    -- Continue until the volume_value is 0
                    if volume_value > 0 then
                        -- Shift right
                        value        <= value(23) & value(23 downto 1);

                        -- Then we decrease the volume_value
                        volume_value <= volume_value - 1;
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