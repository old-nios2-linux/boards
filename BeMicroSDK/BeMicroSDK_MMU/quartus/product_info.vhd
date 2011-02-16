library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_UNSIGNED.all;

						
entity product_info is
	port (
		clk: in std_logic;
		reset_n : in std_logic;
		
		chipselect_n : in std_logic; -- chip select signal
		read_n : in std_logic; -- output enable
		av_address : in std_logic_vector(1 downto 0);
		av_data_read : out std_logic_vector(31 downto 0)
		
	);
end product_info;

architecture rtl of product_info is
	constant sof : std_logic_vector(31 downto 0):=x"4C696E78"; -- Linx project

	constant board : std_logic_vector(31 downto 0):=x"42654D63"; -- BeMc
	constant product : std_logic_vector(31 downto 0):=x"41727277"; -- Arrw
	constant version : std_logic_vector(31 downto 0):=x"00000001"; -- version

begin

	process(reset_n, clk)begin
		if(reset_n = '0')then
			av_data_read <= (others => '0');
		elsif(clk'event and clk = '1')then
			if(chipselect_n = '0' and read_n = '0')then
				case av_address is
					when "00" => av_data_read <= product;
					when "01" => av_data_read <= board;
					when "10" => av_data_read <= sof;
					when "11" => av_data_read <= version;
				end case;
			end if;
		end if;
	end process;
end rtl;

