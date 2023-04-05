library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity digilent_jstk2 is
    generic (
        DELAY_US     : integer := 25;          -- Delay (in us) between two packets
        CLKFREQ      : integer := 100_000_000; -- Frequency of the aclk signal (in Hz)
        SPI_SCLKFREQ : integer := 66_666       -- Frequency of the SPI SCLK clock signal (in Hz)
    );
    port (
        aclk          : in std_logic;
        aresetn       : in std_logic;

        -- Data going to the SPI IP-Core (and so, to the JSTK2 module)
        m_axis_tvalid : out std_logic;
        m_axis_tdata  : out std_logic_vector(7 downto 0);
        m_axis_tready : in std_logic;

        -- Data coming from the SPI IP-Core (and so, from the JSTK2 module)
        -- There is no tready signal, so you must be always ready to accept and use the incoming data, or it will be lost!
        s_axis_tvalid : in std_logic;
        s_axis_tdata  : in std_logic_vector(7 downto 0);

        -- Joystick and button values read from the module
        jstk_x        : out std_logic_vector(9 downto 0);
        jstk_y        : out std_logic_vector(9 downto 0);
        btn_jstk      : out std_logic;
        btn_trigger   : out std_logic;

        -- LED color to send to the module
        led_r         : in std_logic_vector(7 downto 0);
        led_g         : in std_logic_vector(7 downto 0);
        led_b         : in std_logic_vector(7 downto 0)
    );
end digilent_jstk2;

architecture Behavioral of digilent_jstk2 is
    -- Code for the SetLEDRGB command, see the JSTK2 datasheet.
    constant CMDSETLEDRGB : std_logic_vector(7 downto 0) := x"84";

    -- Do not forget that you MUST wait a bit between two packets. See the JSTK2 datasheet (and the SPI IP-Core README).
    -- Inter-packet delay plus the time needed to transfer 1 byte (for the CS de-assertion)
    constant DELAY_CYCLES : integer                      := DELAY_US * (CLKFREQ / 1_000_000) + CLKFREQ / SPI_SCLKFREQ;
    signal delay_counter  : natural range 0 to 100_000_000;

    type state_cmd_type is (WAIT_DELAY, SEND_CMD, SEND_RED, SEND_GREEN, SEND_BLUE, SEND_DUMMY);
    signal state_cmd : state_cmd_type := SEND_CMD;

    type state_sts_type is (GET_X_LSB, GET_X_MSB, GET_Y_LSB, GET_Y_MSB, GET_BUTTONS);
    signal state_sts : state_sts_type := GET_X_LSB;

begin
    -- The master port has data to output only when in transmit states
    with state_cmd select m_axis_tvalid <=
        '0' when WAIT_DELAY,
        '1' when SEND_CMD,
        '1' when SEND_RED,
        '1' when SEND_GREEN,
        '1' when SEND_BLUE,
        '1' when SEND_DUMMY;

    -- TX process
    TX : process (aclk, aresetn)
    begin
        if aresetn = '0' then
            delay_counter <= 0;
            state_cmd     <= WAIT_DELAY;
        elsif rising_edge(aclk) then
            case state_cmd is
                when WAIT_DELAY =>
                    if delay_counter = DELAY_CYCLES then
                        delay_counter <= 0;
                        state_cmd     <= SEND_CMD;
                        m_axis_tdata  <= CMDSETLEDRGB;
                    else
                        delay_counter <= delay_counter + 1;
                    end if;
                when SEND_CMD =>
                    if m_axis_tready = '1' then
                        state_cmd    <= SEND_RED;
                        m_axis_tdata <= led_r;
                    end if;
                when SEND_RED =>
                    if m_axis_tready = '1' then
                        state_cmd    <= SEND_GREEN;
                        m_axis_tdata <= led_g;
                    end if;
                when SEND_GREEN =>
                    if m_axis_tready = '1' then
                        state_cmd    <= SEND_BLUE;
                        m_axis_tdata <= led_b;
                    end if;
                when SEND_BLUE =>
                    if m_axis_tready = '1' then
                        state_cmd    <= SEND_DUMMY;
                        m_axis_tdata <= (others => '0');
                    end if;
                when SEND_DUMMY =>
                    if m_axis_tready = '1' then
                        state_cmd <= WAIT_DELAY;
                    end if;
            end case;
        end if;
    end process;

    -- RX process
    RX : process (aclk, aresetn)
    begin
        if aresetn = '0' then
            state_sts <= GET_X_LSB;
        elsif rising_edge(aclk) then
            case state_sts is
                when GET_X_LSB =>
                    if s_axis_tvalid = '1' then
                        jstk_x(7 downto 0) <= s_axis_tdata;
                        state_sts          <= GET_X_MSB;
                    end if;
                when GET_X_MSB =>
                    if s_axis_tvalid = '1' then
                        jstk_x(9 downto 8) <= s_axis_tdata(1 downto 0);
                        state_sts          <= GET_Y_LSB;
                    end if;
                when GET_Y_LSB =>
                    if s_axis_tvalid = '1' then
                        jstk_y(7 downto 0) <= s_axis_tdata;
                        state_sts          <= GET_Y_MSB;
                    end if;
                when GET_Y_MSB =>
                    if s_axis_tvalid = '1' then
                        jstk_y(9 downto 8) <= s_axis_tdata(1 downto 0);
                        state_sts          <= GET_BUTTONS;
                    end if;
                when GET_BUTTONS =>
                    if s_axis_tvalid = '1' then
                        btn_jstk    <= s_axis_tdata(0);
                        btn_trigger <= s_axis_tdata(1);
                        state_sts   <= GET_X_LSB;
                    end if;
            end case;
        end if;
    end process;
end architecture;