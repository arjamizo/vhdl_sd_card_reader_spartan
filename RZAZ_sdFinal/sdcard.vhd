--TODO przeskoki miedzy stanami w osobnym procesie

----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:40:30 03/18/2013 
-- Design Name: 
-- Module Name:    init - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
  use IEEE.std_logic_unsigned.all;  
  use ieee.std_logic_arith.all;
  use ieee.std_logic_signed.all;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sdcard is
port (
	cs : out std_logic := '1';
	mosi : out std_logic := '1';
	miso : in std_logic := '1';
	rd : in std_logic := '0';
	sclk : out std_logic := '0';

	ledout : out std_logic_vector(7 downto 0);
	address : in std_logic_vector(31 downto 0); -- := (other => '0');
	output_strobe : out std_logic := '0';
	received : out std_logic := '0';
	clk : in std_logic;	-- dwa razy szybszy clock na spi
	reset : in std_logic
	);
end sdcard;

architecture Behavioral of sdcard is
type states is (
	idle, 
	Rst,
	readingDataBlock, 
	SetStrobe0, 
	cmd17_sending, 
	cmd17_load,
	Initialize,
	CMD0_loading,
	CMD0_sending,
	CMD0_finished,
	waitingFor0, 
	waitingFor1,
	CMD1_loading, 
	CMD1_sending, 
	CMD1_finished, 
	readyForReading8Bits, 
	initialion_success,
	finish,
	finished
	);
signal sclk_sig : std_logic := '0';
signal cmd_out : std_logic_vector(47 downto 0);
signal read_cmd : std_logic_vector(55 downto 0);
signal counter_sclk : std_logic_vector(31 downto 0):=conv_std_logic_vector(0, 32);
signal bit_counter : std_logic_vector(31 downto 0):=conv_std_logic_vector(0, 32);
signal state, next_state : states;
signal status : std_logic_vector(7 downto 0);
--signal counter_sclk : integer range 0 to 80;
--   signal counter_sclk : std_logic_vector(31 downto 0); 
--	signal zeros : std_logic_vector(31 downto 0);
begin

--			counter_sclk <= conv_std_logic_vector(0, 32); --default value, written only once
counter: process(clk) 
		--variable counter_sclk : integer range 0 to 60;
			begin
			if rising_edge(clk) then
--			zeros <= (others => '0');
--				if(counter_sclk = "00000000000000000000000000000000") then
				if(counter_sclk = 0) then
					--sclk_sig <= not sclk_sig;
--					counter_sclk <= std_logic_vector( 50 );
					counter_sclk <= conv_std_logic_vector(50, 32);
				else
--					counter_sclk := counter_sclk -1;
--					counter_sclk <= std_logic_vector( unsigned(counter_sclk) + 1 );
				counter_sclk <= counter_sclk - 1;  --the library include overloading 

				end if;
			end if;
	end process counter;
	
main: process (sclk_sig, reset)
--		variable bit_counter : integer range 0 to 160;
		begin 
		
		if rising_edge(sclk_sig) then
			if (reset = '1') then
				next_state <= Rst;
			else
				 case state is
					when Rst => 
						cs<='1';
						next_state<=Initialize;
--						bit_counter<=80;
						bit_counter<=conv_std_logic_vector(80, 32);
						status <= (others => '0');
						
						
					when Initialize => -- wylaczono chip select, wysylanie 80 taktow zegara, wlaczenie chip select
						if (bit_counter = 0) then
							cs <= '0';
							next_state <= CMD0_loading;
						else
							bit_counter <= bit_counter - 1;
						end if;	
						
					when CMD0_loading => 
						cmd_out <= x"400000000095";
--						bit_counter <= 47;
						bit_counter <= conv_std_logic_vector(47, 32);
						next_state <= CMD0_sending;
						
					when CMD0_sending => 
						--if (sclk_sig = '1') then
							if(bit_counter = 0) then 
								next_state<=CMD0_finished;
							else
								bit_counter <= bit_counter-1;
								cmd_out <= cmd_out(46 downto 0) & '1'; --rejestr przesuwny w prawo
							end if;
						--end if;
						
					when CMD0_finished => 
						status(0) <= '1';
						next_state <= waitingFor0;
					
					when waitingFor0 => 
						--to moglibysmy zrobic w ten sposob, ze process(miso) jesli w stanie waitingFor0 to zmieni stan przy przejsciu na 0, ALE nie ma czasu, zatem: 
						if (miso='0') then
							status(1) <= '1';
							next_state <= waitingFor1;
						end if;
					
					when waitingFor1 => 
						if (miso='1') then
							next_state <= CMD1_loading;
						end if;
						
					when CMD1_loading => 
						cmd_out <= x"410000000095";
--						bit_counter <= 47;
						bit_counter <= conv_std_logic_vector(47, 32);
						next_state <= CMD1_sending;
						
					when CMD1_sending => 
						--if (sclk_sig = '1') then
							if(bit_counter=0) then 
								next_state<=CMD1_finished;
							else
								bit_counter <= bit_counter-1;
								cmd_out <= cmd_out(46 downto 0) & '1'; --rejestr przesuwny w prawo
							end if;
						--end if;
					
					when CMD1_finished => 
						if(miso = '0') then
--							bit_counter <= 8;
							bit_counter <= conv_std_logic_vector(7, 32);
							next_state <= readyForReading8Bits;
						end if;
						
					when readyForReading8Bits => 
						--if(sclk_sig = '1') then
							bit_counter <= bit_counter - 1; 
							if(bit_counter=0 and miso='1') then 
								next_state <= initialion_success;
							elsif (bit_counter=0) then
								next_state <= CMD1_loading; --karta jeszcze nie jest gotowa
							end if;
						--end if;
						
					when initialion_success => 
						status(2) <= '1';
						next_state <= idle;
					
					when idle => 
						if (rd='1') then 
							next_state <= cmd17_load;
						else 
							next_state <= idle;
						end if;
					
					when cmd17_load => 
						read_cmd <= x"FF" & x"51" & address & x"FF";
						bit_counter <= conv_std_logic_vector(56-1, 32);
						next_state <= cmd17_sending;
						
					when cmd17_sending => 
							if(bit_counter=0) then
								next_state <= readingDataBlock;
								bit_counter <= conv_std_logic_vector(512-1, 32);
							else 
								bit_counter <= bit_counter - 1; 
								read_cmd <= read_cmd(54 downto 0) & '1'; --rejestr przesuwny w prawo
							end if;
					when readingDataBlock => 
						received <= miso;
						bit_counter <= bit_counter - 1; 
						if(bit_counter = 0) then
							next_state <= finished;
						else 
							output_strobe <= '1';
							next_state <= SetStrobe0;
						end if;
--						if(bit_counter = 0) then 	
--						else 
--							
--						end if;
					when SetStrobe0 => 
						output_strobe <= '0';
						next_state <= readingDataBlock; 
					when finished => 
						status(6) <= '1';
						next_state <= idle;
					when others => 
						next_state <= idle;
				end case; 
				
				
			end if;
		end if;
end process;

changestate: process (sclk_sig, reset)
begin
	if reset='1' then 
		state <= Rst;
	elsif falling_edge(sclk_sig) then
		state <= next_state;
	end if;
end process;

  sclk <= sclk_sig;
  mosi <= cmd_out(47);
  ledout <= status; 

end Behavioral;

