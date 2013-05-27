--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:50:42 05/23/2013
-- Design Name:   
-- Module Name:   C:/XilinxPrj/RZAZ_sdFinal/testStevena.vhd
-- Project Name:  RZAZ_sdFinal
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: sd_controller
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
 
ENTITY testStevena IS
END testStevena;
 
ARCHITECTURE behavior OF testStevena IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sd_controller
    PORT(
         cs : OUT  std_logic;
         mosi : OUT  std_logic;
         miso : IN  std_logic;
         sclk : OUT  std_logic;
         rd : IN  std_logic;
         wr : IN  std_logic;
         dm_in : IN  std_logic;
         reset : IN  std_logic;
         led : OUT  std_logic_vector(2 downto 0);
         dout_changed : OUT  std_logic;
         din : IN  std_logic_vector(7 downto 0);
         dout : OUT  std_logic_vector(7 downto 0);
         clk : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal miso : std_logic := '0';
   signal rd : std_logic := '0';
   signal wr : std_logic := '0';
   signal dm_in : std_logic := '0';
   signal reset : std_logic := '0';
   signal din : std_logic_vector(7 downto 0) := (others => '0');
   signal clk : std_logic := '0';

 	--Outputs
   signal cs : std_logic;
   signal mosi : std_logic;
   signal sclk : std_logic;
   signal led : std_logic_vector(2 downto 0);
   signal dout_changed : std_logic;
   signal dout : std_logic_vector(7 downto 0);
	
	
   signal prepmiso : std_logic;
   signal clocker : std_logic := '0';
   signal onlyonce : std_logic := '0';

   -- Clock period definitions
   constant sclk_period : time := 10 ns;
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sd_controller PORT MAP (
          cs => cs,
          mosi => mosi,
          miso => miso,
          sclk => sclk,
          rd => rd,
          wr => wr,
          dm_in => dm_in,
          reset => reset,
          led => led,
          dout_changed => dout_changed,
          din => din,
          dout => dout,
          clk => clk
        );
		  
	clk <= not clk after 10 us;
	
	
	onlyonce <= '1', '0' after 150 ms;
	clocker <= not clocker after 33 us;
	prepmiso <= onlyonce or clocker;
	miso <= prepmiso; 
	
	reset <= '0', '1' after 100 ms, '0' after 110 ms; 
	rd <= '0', '1' after 200 ms, '0' after 210 ms; 
END;
