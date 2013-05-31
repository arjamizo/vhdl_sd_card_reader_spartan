--TODO przeskoki miedzy stanami w osobnym procesie

----------------------------------------------------------------------------------
-- Company: Politechnika Wroc³awska
-- Engineer: Artur Zochniak
-- 
-- Create Date:    09:40:30 03/18/2013 
-- Design Name: 
-- Module Name:    SDCard 
-- Project Name: 
-- Target Devices: Spartan 3E
-- Tool versions: Xilinx 14.2
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
	address : in std_logic_vector(31 downto 0);
	output_strobe : out std_logic := '0';
	recv : out std_logic_vector(7 downto 0) := (others => '1');
	clk : in std_logic;	-- podczas pracy z kart¹ - na ka¿dy takt 
	--pracy karty SD przypadaj¹ dwa takty pracy tego modu³u
	reset : in std_logic
	);
end sdcard;

architecture Behavioral of sdcard is
type states is (
	Rst, 
	waitingForErasingBuffersEtc,
	Initialize,
	CMD0_sending,
	CMD0_finished,
	waitingFor0, 
	waitingFor1,
	CMD1_loading, 
	CMD1_sending, 
	CMD1_finished, 
	readyForReading8Bits, 
	initialion_success,
	idle, 
	cmd17_load,
	cmd17_sending, 
	readingDataBlock, 
	SetStrobe0,
	finished
	);
	

signal sclk_sig : std_logic := '0';
signal forcesig : std_logic := '0';
signal cmd_out : std_logic_vector(47 downto 0);
signal read_cmd : std_logic_vector(47 downto 0);
signal counter_sclk : std_logic_vector(31 downto 0):=conv_std_logic_vector(0, 32);
signal bit_counter : std_logic_vector(31 downto 0):=conv_std_logic_vector(0, 32);
signal byte_counter : std_logic_vector(31 downto 0):=conv_std_logic_vector(0, 32);
signal state, next_state : states;
signal status : std_logic_vector(7 downto 0);
signal cmd_mode : std_logic := '1'; --1 for 48-bit commands, 0 for read command
signal received : std_logic_vector(7 downto 0);
--signal counter_sclk : integer range 0 to 80;
--   signal counter_sclk : std_logic_vector(31 downto 0); 
--	signal zeros : std_logic_vector(31 downto 0);
begin

--			counter_sclk <= conv_std_logic_vector(0, 32); --default value, written only once
counter: process(clk) 
		--variable counter_sclk : integer range 0 to 60;
			begin
			if rising_edge(clk) then
					--sclk_sig <= not sclk_sig;
--			zeros <= (others => '0');
--				if(counter_sclk = "00000000000000000000000000000000") then
--				if(counter_sclk = 0) then
--					sclk_sig <= not sclk_sig;
----					counter_sclk <= std_logic_vector( 50 );
--					counter_sclk <= conv_std_logic_vector(50, 32);
--				else
----					counter_sclk := counter_sclk -1;
----					counter_sclk <= std_logic_vector( unsigned(counter_sclk) + 1 );
--				counter_sclk <= counter_sclk - 1;  --the library include overloading 

--				end if;
			end if;
	end process counter;
	
main: process (clk, reset)
--		variable bit_counter : integer range 0 to 160;
		begin 
		
		if rising_edge(clk) then
			if (reset = '1') then
				next_state <= Rst;
			else
				 case state is
					when Rst => 
						cs<='1';
						next_state<=waitingForErasingBuffersEtc;
--						bit_counter<=80;
						bit_counter<=conv_std_logic_vector(20, 32);
						status <= (others => '0');
						cmd_mode <= '1';
						forcesig <= '0';
					
					when waitingForErasingBuffersEtc => 
					if(sclk_sig = '1') then 
						if (bit_counter = 1) then
							next_state <= Initialize;
							bit_counter<=conv_std_logic_vector(8, 32);
						else
							bit_counter <= bit_counter - 1;
						end if;
					end if;
							sclk_sig <= not sclk_sig;
						
						
					when Initialize => -- wylaczono chip select, wysylanie 80 taktow zegara, wlaczenie chip select
					if(sclk_sig = '1') then 
						if (bit_counter = 1) then
							next_state <= CMD0_sending;
							cmd_out <= x"400000000095";
							--cmd_out <= x"B00000000095";
							bit_counter <= conv_std_logic_vector(48, 32);
							sclk_sig <= not sclk_sig;
						else
							bit_counter <= bit_counter - 1;
						end if;
					end if;
					cs <= '0'; --wlaczenie zasilania
					sclk_sig <= not sclk_sig;
					
					when CMD0_sending => 
							if(bit_counter = 1) then 
								next_state<=CMD0_finished;
							else
						if (sclk_sig = '1') then
								bit_counter <= bit_counter-1;
								cmd_out <= cmd_out(46 downto 0) & '0'; --rejestr przesuwny w prawo
							end if;
						end if;
						sclk_sig <= not sclk_sig;
						
					when CMD0_finished => 
						status(0) <= '1';
						next_state <= waitingFor0;
					
					when waitingFor0 => 
					if (sclk_sig = '1') then
						--to moglibysmy zrobic w ten sposob, ze process(miso) jesli w stanie waitingFor0 to zmieni stan przy przejsciu na 0, ALE nie ma czasu, zatem: 
						if (miso='0') then
							status(1) <= '1';
							next_state <= waitingFor1;
						end if;
					end if;
					sclk_sig <= not sclk_sig;
					
					when waitingFor1 => 
					if (sclk_sig = '1') then
						if (miso='1') then
						next_state <= CMD1_loading;
						end if;
					end if;
					sclk_sig <= not sclk_sig;
					
					when CMD1_loading => 
					
						cmd_out <= x"410000000095";
						bit_counter <= conv_std_logic_vector(48, 32);
						next_state <= CMD1_sending;
						
					when CMD1_sending => 
						if (sclk_sig = '1') then
							if(bit_counter=1) then 
								next_state<=CMD1_finished;
							else
								bit_counter <= bit_counter-1;
								cmd_out <= cmd_out(46 downto 0) & '0'; --rejestr przesuwny w prawo
							end if;
						end if;
						sclk_sig <= not sclk_sig;
					
					when CMD1_finished => 
						if (sclk_sig = '1') then
							if(miso = '0') then
								bit_counter <= conv_std_logic_vector(8, 32);
								next_state <= readyForReading8Bits;
							end if;
						end if;
					sclk_sig <= not sclk_sig;
						
					when readyForReading8Bits => 
						if(sclk_sig = '1') then
							bit_counter <= bit_counter - 1; 
							if(bit_counter=1 and miso='1') then 
								next_state <= initialion_success;
							elsif (bit_counter=1) then
								next_state <= CMD1_loading; --karta jeszcze nie jest gotowa
							end if;
						end if;
						if (next_state /= initialion_success) then
							sclk_sig <= not sclk_sig;
						end if;
						
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
						status(3) <= '1';
						read_cmd <= x"51" & address & x"FF";
						cmd_mode <= '0'; --set cmd writing to reading content
						bit_counter <= conv_std_logic_vector(48, 32);
						next_state <= cmd17_sending;
						
					when cmd17_sending => 
						status(4) <= '1';
						if(sclk_sig = '1') then
							if(bit_counter=1) then
								byte_counter <= conv_std_logic_vector(64, 32);
								bit_counter <= conv_std_logic_vector(8, 32);
								next_state <= readingDataBlock;
							else 
								bit_counter <= bit_counter - 1; 
								read_cmd <= read_cmd(46 downto 0) & '0'; --rejestr przesuwny w prawo
							end if;
						end if;
					sclk_sig <= not sclk_sig;
					

					when readingDataBlock => 
						status(5) <= '1';
						if (sclk_sig = '1') then
							--forcesig <= '0';
							received <= received (6 downto 0) & miso;
							bit_counter <= bit_counter - 1; 
							if(bit_counter = 1) then
									output_strobe <= '1';
									byte_counter <= byte_counter - 1;
									next_state <= SetStrobe0;
							end if;
						end if;
						if((bit_counter /= 0)) then 
							sclk_sig <= not sclk_sig;
						end if;
						
					when SetStrobe0 => 
					
						status(5) <= '0';
						output_strobe <= '0';
						--if (sclk_sig = '1') then
							if (byte_counter = 1) then
								next_state <= finished; 
							else 
								next_state <= readingDataBlock; 
								bit_counter <= conv_std_logic_vector(8, 32);
								--forcesig <= '1';
								--sclk_sig <= not sclk_sig;
							end if;
						--end if;
					
					
					when finished => 
						status(6) <= '1';
						next_state <= idle;
					when others => 
						next_state <= idle;
						
				end case; 
				
				
			end if;
		end if;
end process;

changestate: process (clk, reset)
begin
	if reset='1' then 
		state <= Rst;
	elsif rising_edge(clk) then
		state <= next_state;
	end if;
end process;


  sclk <= sclk_sig; -- wyprowadzenie sygna³u pracy karty na wyjscie
  mosi <= (cmd_out(47) and cmd_mode) or (read_cmd(47) and (not cmd_mode));
  -- demultipleksacja komendy 48-butowa lub 56-bitowa
  ledout <= status; -- wypowadzenie aktualnego stanu na diody
  recv <= received; -- wypowadzenie danych odczytanych z karty
  


end Behavioral;

