library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity jstk_uart_bridge is
    generic (
        HEADER_CODE : std_logic_vector(7 downto 0) := x"c0";     -- Header of the packet
        TX_DELAY    : positive                     := 1_000_000; -- Pause (in clock cycles) between two packets
        JSTK_BITS   : integer range 1 to 7         := 7          -- Number of bits of the joystick axis to transfer to the PC 
    );
    port (
        aclk          : in std_logic;
        aresetn       : in std_logic;

        -- Data going to the PC (i.e., joystick position and buttons state)
        m_axis_tvalid : out std_logic;
        m_axis_tdata  : out std_logic_vector(7 downto 0);
        m_axis_tready : in std_logic;

        -- Data coming from the PC (i.e., LED color)
        s_axis_tvalid : in std_logic;
        s_axis_tdata  : in std_logic_vector(7 downto 0);
        s_axis_tready : out std_logic;

        jstk_x        : in std_logic_vector(9 downto 0);
        jstk_y        : in std_logic_vector(9 downto 0);
        btn_jstk      : in std_logic;
        btn_trigger   : in std_logic;

        led_r         : out std_logic_vector(7 downto 0);
        led_g         : out std_logic_vector(7 downto 0);
        led_b         : out std_logic_vector(7 downto 0)
    );
end jstk_uart_bridge;

architecture Behavioral of jstk_uart_bridge is
    signal delay_counter : natural range 0 to 100_000_000;

    -- state of the TX process
    type tx_state_type is (DELAY, SEND_HEADER, SEND_JSTK_X, SEND_JSTK_Y, SEND_BUTTONS);
    signal tx_state : tx_state_type := SEND_HEADER;

    -- state of the RX process
    type rx_state_type is (GET_HEADER, GET_LED_R, GET_LED_G, GET_LED_B);
    signal rx_state : rx_state_type;
begin
    -- The master port has data to output only when in transmit states
    with tx_state select m_axis_tvalid <=
        '0' when DELAY,
        '1' when SEND_HEADER,
        '1' when SEND_JSTK_X,
        '1' when SEND_JSTK_Y,
        '1' when SEND_BUTTONS;

    -- TX process
    TX : process (aclk, aresetn)
    begin
        if aresetn = '0' then
            -- On reset, the delay counter is resetted and the state is brought to SEND_HEADER
            delay_counter <= 0;
            tx_state      <= SEND_HEADER;
        elsif rising_edge(aclk) then
            case tx_state is
                when DELAY =>
                    -- Waiting for the expected delay between two packets
                    if delay_counter = TX_DELAY then
                        delay_counter <= 0;
                        tx_state      <= SEND_HEADER;
                        -- Putting the header code on the tdata signal so that in the next step it will be written on the line
                        m_axis_tdata  <= HEADER_CODE;
                    else
                        delay_counter <= delay_counter + 1;
                    end if;
                when SEND_HEADER =>
                    -- Sending the proper header
                    if m_axis_tready = '1' then
                        tx_state     <= SEND_JSTK_X;
                        -- Putting the x_axis data on the tdata signal so that in the next step it will be written on the line
                        m_axis_tdata <= '0' & jstk_x(9 downto 10 - JSTK_BITS) & std_logic_vector(to_unsigned(0, 7 - JSTK_BITS));
                    end if;
                when SEND_JSTK_X =>
                    -- Sending the byte representing the speed on the x axis
                    if m_axis_tready = '1' then
                        tx_state     <= SEND_JSTK_Y;
                        -- Putting the y_axis data on the tdata signal so that in the next step it will be written on the line
                        m_axis_tdata <= '0' & jstk_y(9 downto 10 - JSTK_BITS) & std_logic_vector(to_unsigned(0, 7 - JSTK_BITS));
                    end if;
                when SEND_JSTK_Y =>
                    -- Sending the byte representing the speed on the y axis
                    if m_axis_tready = '1' then
                        tx_state     <= SEND_BUTTONS;
                        -- Putting the buttons state on the tdata signal so that in the next step it will be written on the line
                        m_axis_tdata <= (
                            0      => btn_jstk,
                            1      => btn_trigger,
                            others => '0');
                    end if;
                when SEND_BUTTONS =>
                    -- Sending the byte representing the buttons state
                    if m_axis_tready = '1' then
                        -- We go to the DELAY state
                        tx_state <= DELAY;
                    end if;
            end case;
        end if;
    end process;

    -- The slave input port is ready only when in receive states (in this case always ready)
    with rx_state select s_axis_tready <=
        '1' when GET_HEADER,
        '1' when GET_LED_R,
        '1' when GET_LED_G,
        '1' when GET_LED_B;

    -- RX process
    RX : process (aclk, aresetn)
    begin
        if aresetn = '0' then
            -- On reset, go to the "GET_HEADER" state
            rx_state <= GET_HEADER;
        elsif rising_edge(aclk) then
            case rx_state is
                when GET_HEADER =>
                    -- Receive the header code and go to the next state (GET_LED_R) if the header is correct
                    if s_axis_tvalid = '1' and s_axis_tdata = HEADER_CODE then
                        rx_state <= GET_LED_R;
                    end if;
                when GET_LED_R =>
                    -- Read the value for the RED led
                    if s_axis_tvalid = '1' then
                        led_r    <= s_axis_tdata;
                        rx_state <= GET_LED_G;
                    end if;
                when GET_LED_G =>
                    -- Read the value for the GREEN led
                    if s_axis_tvalid = '1' then
                        led_g    <= s_axis_tdata;
                        rx_state <= GET_LED_B;
                    end if;
                when GET_LED_B =>
                    -- Read the value for the BLUE led
                    if s_axis_tvalid = '1' then
                        led_b    <= s_axis_tdata;
                        rx_state <= GET_HEADER;
                    end if;
            end case;
        end if;
    end process;
end architecture;
