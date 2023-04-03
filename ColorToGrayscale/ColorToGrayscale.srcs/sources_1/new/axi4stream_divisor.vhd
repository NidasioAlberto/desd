library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity axi4stream_divisor is
	generic (
		TDATA_WIDTH : positive := 8
	);
	port (
		clk           : in std_logic;
		resetn        : in std_logic;

		-- Input AXI4STREAM port
		s_axis_tvalid : in std_logic;
		s_axis_tdata  : in std_logic_vector(TDATA_WIDTH - 1 downto 0);
		s_axis_tready : out std_logic;

		-- Output AXI4STREAM port
		m_axis_tvalid : out std_logic;
		m_axis_tdata  : out std_logic_vector(TDATA_WIDTH - 1 downto 0);
		m_axis_tready : in std_logic
	);
end axi4stream_divisor;

architecture Behavioral of axi4stream_divisor is
	type state_type is (IDLE, RECEIVE_BYTE_1, RECEIVE_BYTE_2, RECEIVE_BYTE_3, COMPUTE, TRANSMIT);
	signal state : state_type := IDLE;
	signal sum   : integer range 0 to 1023;
begin
	-- The slave input port is ready only when in receive state
	with state select s_axis_tready <=
		'0' when IDLE,
		'1' when RECEIVE_BYTE_1,
		'1' when RECEIVE_BYTE_2,
		'1' when RECEIVE_BYTE_3,
		'0' when COMPUTE,
		'0' when TRANSMIT;

	-- The master port has data to output only when in transmit state
	with state select m_axis_tvalid <=
		'0' when IDLE,
		'0' when RECEIVE_BYTE_1,
		'0' when RECEIVE_BYTE_2,
		'0' when RECEIVE_BYTE_3,
		'0' when COMPUTE,
		'1' when TRANSMIT;

	FSM : process (clk, resetn)
		-- variable t : unsigned(2 * TDATA_WIDTH + 1 downto 0) := (others => '0');
		variable t : std_logic_vector(TDATA_WIDTH - 1 downto 0);
	begin
		if resetn = '0' then
			state <= IDLE;
			sum   <= 0;
		elsif rising_edge(clk) then
			case state is
				when IDLE =>
					state <= RECEIVE_BYTE_1;
				when RECEIVE_BYTE_1 =>
					if s_axis_tvalid = '1' then
						sum   <= to_integer(unsigned(s_axis_tdata));
						state <= RECEIVE_BYTE_2;
					end if;
				when RECEIVE_BYTE_2 =>
					if s_axis_tvalid = '1' then
						sum   <= sum + to_integer(unsigned(s_axis_tdata));
						state <= RECEIVE_BYTE_3;
					end if;
				when RECEIVE_BYTE_3 =>
					if s_axis_tvalid = '1' then
						sum   <= sum + to_integer(unsigned(s_axis_tdata));
						state <= COMPUTE;
					end if;
				when COMPUTE =>
					t := std_logic_vector(to_unsigned(sum / 3, TDATA_WIDTH));
					m_axis_tdata <= t;
					state        <= TRANSMIT;
				when TRANSMIT =>
					if m_axis_tready = '1' then
						state <= RECEIVE_BYTE_1;
					end if;
			end case;
		end if;
	end process;
end Behavioral;