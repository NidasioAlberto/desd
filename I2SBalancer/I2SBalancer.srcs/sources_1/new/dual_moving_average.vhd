library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity dual_moving_average is
    generic (
        FILTER_ORDER : positive := 32
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

        filter_enable : in std_logic
    );
end dual_moving_average;

architecture Behavioral of dual_moving_average is
    -- Left and write buffers
    subtype data_type is std_logic_vector(23 downto 0);
    type matrix_type is array (0 to FILTER_ORDER + 1) of data_type;
    signal buffer_left  : matrix_type                   := (others => (others => '0'));
    signal buffer_right : matrix_type                   := (others => (others => '0'));

    -- Left and write averages
    signal avg_left     : std_logic_vector(23 downto 0) := (others => '0');
    signal avg_right    : std_logic_vector(23 downto 0) := (others => '0');

    -- Logaritmic value of the filter order
    constant log_order  : integer                       := integer(ceil(log2(real(FILTER_ORDER))));

    type state_type is (READ_LEFT, READ_RIGHT, COMPUTE_SUM, COMPUTE_SUB, WRITE_LEFT, WRITE_RIGHT);
    signal state : state_type;
begin
    -- The master port has data to output only when in write states
    with state select m_axis_tvalid <=
        '0' when READ_LEFT,
        '0' when READ_RIGHT,
        '0' when COMPUTE_SUM,
        '0' when COMPUTE_SUB,
        '1' when WRITE_LEFT,
        '1' when WRITE_RIGHT;

    -- The slave port is ready only when reading
    with state select s_axis_tready <=
        '1' when READ_LEFT,
        '1' when READ_RIGHT,
        '0' when COMPUTE_SUM,
        '0' when COMPUTE_SUB,
        '0' when WRITE_LEFT,
        '0' when WRITE_RIGHT;

    -- tlast is 1 only when writing the right value
    with state select m_axis_tlast <=
        '0' when READ_LEFT,
        '0' when READ_RIGHT,
        '0' when COMPUTE_SUM,
        '0' when COMPUTE_SUB,
        '0' when WRITE_LEFT,
        '1' when WRITE_RIGHT;

    -- Main process
    moving_avg_proc : process (aclk, aresetn)
    begin
        if aresetn = '0' then
            -- On reset we zero the buffers and restart the state machine
            buffer_left  <= (others => (others => '0'));
            buffer_right <= (others => (others => '0'));
            state        <= READ_LEFT;
        elsif rising_edge(aclk) then
            -- Note: This state machine can be made more efficient by combining the compute states
            --       into the read and write states. Since the process runs at 180MHz we made it more
            --       readable by leaving the compute states.
            --       This two states adds two clock cycles of delay to the signal (11.1ns if clock is at 180MHz),
            --       not a big deal considering that the audio clock is at 44.1KHz (22.6us)

            case state is
                when READ_LEFT =>
                    -- Receive the first value if data is valid and not last
                    if s_axis_tvalid = '1' and s_axis_tlast = '0' then
                        buffer_left <= s_axis_tdata & buffer_left(0 to buffer_right'length - 2);
                        state       <= READ_RIGHT;
                    end if;
                when READ_RIGHT =>
                    -- Receive the second value if data is valid and last
                    if s_axis_tvalid = '1' and s_axis_tlast = '1' then
                        buffer_right <= s_axis_tdata & buffer_right(0 to buffer_right'length - 2);
                        state        <= COMPUTE_SUB;
                    end if;
                when COMPUTE_SUB =>
                    -- Some of tdata bits are discarded such that we do not have to compute a division
                    -- The filter order is always guaranteed to be a power of 2
                    avg_left  <= std_logic_vector(signed(avg_left) - signed(buffer_left(FILTER_ORDER)(23 downto log_order)));
                    avg_right <= std_logic_vector(signed(avg_right) - signed(buffer_right(FILTER_ORDER)(23 downto log_order)));
                    state     <= COMPUTE_SUM;
                when COMPUTE_SUM =>
                    avg_left  <= std_logic_vector(signed(avg_left) + signed(buffer_left(0)(23 downto log_order)));
                    avg_right <= std_logic_vector(signed(avg_right) + signed(buffer_right(0)(23 downto log_order)));
                    state     <= WRITE_LEFT;
                when WRITE_LEFT =>
                    if m_axis_tready = '1' then
                        if filter_enable = '1' then
                            m_axis_tdata <= avg_left;
                        else
                            m_axis_tdata <= buffer_left(0);
                        end if;

                        state <= WRITE_RIGHT;
                    end if;
                when WRITE_RIGHT =>
                    -- Write when slave is ready
                    if m_axis_tready = '1' then
                        if filter_enable = '1' then
                            m_axis_tdata <= avg_right;
                        else
                            m_axis_tdata <= buffer_right(0);
                        end if;

                        state <= READ_LEFT;
                    end if;
            end case;
        end if;
    end process;
end Behavioral;