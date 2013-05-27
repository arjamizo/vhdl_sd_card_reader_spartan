--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:43:10 05/24/2013
-- Design Name:   
-- Module Name:   C:/XilinxPrj/RZAZ_sdFinal/sdcard_test3.vhd
-- Project Name:  RZAZ_sdFinal
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: sdcard
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY sdcard_test3 IS
END sdcard_test3;
 
ARCHITECTURE behavior OF sdcard_test3 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sdcard
    PORT(
         cs : OUT  std_logic;
         mosi : OUT  std_logic;
         miso : IN  std_logic;
         rd : IN  std_logic;
         sclk : OUT  std_logic;
         ledout : OUT  std_logic_vector(7 downto 0);
         address : IN  std_logic_vector(31 downto 0);
         output_strobe : OUT  std_logic;
         recv : OUT  std_logic_vector(7 downto 0);
         clk : IN  std_logic;
         reset : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal miso : std_logic := '0';
   signal rd : std_logic := '0';
   signal address : std_logic_vector(31 downto 0) := (others => '0');
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal cs : std_logic;
   signal mosi : std_logic;
   signal sclk : std_logic;
   signal ledout : std_logic_vector(7 downto 0);
   signal output_strobe : std_logic;
   signal recv : std_logic_vector(7 downto 0);

 
	
   signal prepmiso : std_logic;
   signal clocker : std_logic := '0';
   signal onlyonce : std_logic := '0';
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sdcard PORT MAP (
          cs => cs,
          mosi => mosi,
          miso => miso,
          rd => rd,
          sclk => sclk,
          ledout => ledout,
          address => address,
          output_strobe => output_strobe,
          recv => recv,
          clk => clk,
          reset => reset
        );

	--linia zegarowa
   clk <= not clk after 10 us;
	--linia reset
	reset <= '0', '1' after 100 ms, '0' after 110 ms;
	--linia symulacji ¿¹dania odczytu danych
	rd <= '0', '1' after 180 ms, '0' after 190 ms;
	
	-- ponizsze cztery linie powoduja, 
	-- ze tylko na poczatku linia miso bedzie 
	-- high, pozniej bedzie juz tylko pulsowac
	onlyonce <= '1', '0' after 150 ms;
	clocker <= not clocker after 33 us;
	prepmiso <= onlyonce or clocker;
	miso <= prepmiso; 
	
END;
