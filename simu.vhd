-- Vhdl test bench created from schematic C:\Users\Kamil\Desktop\ucisw\ucisw_projekt\main.sch - Fri May 08 15:31:05 2020
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY main_main_sch_tb IS
END main_main_sch_tb;
ARCHITECTURE behavioral OF main_main_sch_tb IS 

   COMPONENT main
   PORT( Clk_50MHz	:	IN	STD_LOGIC; 
          Reset	:	IN	STD_LOGIC; 
          SDC_MISO	:	IN	STD_LOGIC; 
          SDC_MOSI	:	OUT	STD_LOGIC; 
          SDC_SCK	:	OUT	STD_LOGIC; 
          SDC_SS	:	OUT	STD_LOGIC; 
          OUT_1	:	OUT	STD_LOGIC; 
          OUT_2	:	OUT	STD_LOGIC; 
          OUT_3	:	OUT	STD_LOGIC; 
          OUT_4	:	OUT	STD_LOGIC_VECTOR (15 DOWNTO 0); 
          OUT_5	:	OUT	STD_LOGIC_VECTOR (2 DOWNTO 0); 
          FName	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          Start	:	IN	STD_LOGIC; 
          Abort	:	IN	STD_LOGIC; 
          SPI_MISO	:	IN	STD_LOGIC; 
          DAC_CLR	:	OUT	STD_LOGIC; 
          DAC_CS	:	OUT	STD_LOGIC; 
          SPI_MOSI	:	OUT	STD_LOGIC; 
          SPI_SCK	:	OUT	STD_LOGIC; 
          SPI_SS_B	:	OUT	STD_LOGIC; 
          AMP_CS	:	OUT	STD_LOGIC; 
          AD_CONV	:	OUT	STD_LOGIC; 
          FPGA_INIT_B	:	OUT	STD_LOGIC; 
          SF_CE0	:	OUT	STD_LOGIC);
   END COMPONENT;

   SIGNAL Clk_50MHz	:	STD_LOGIC;
   SIGNAL Reset	:	STD_LOGIC;
   SIGNAL SDC_MISO	:	STD_LOGIC;
   SIGNAL SDC_MOSI	:	STD_LOGIC;
   SIGNAL SDC_SCK	:	STD_LOGIC;
   SIGNAL SDC_SS	:	STD_LOGIC;
   SIGNAL OUT_1	:	STD_LOGIC;
   SIGNAL OUT_2	:	STD_LOGIC;
   SIGNAL OUT_3	:	STD_LOGIC;
   SIGNAL OUT_4	:	STD_LOGIC_VECTOR (15 DOWNTO 0);
   SIGNAL OUT_5	:	STD_LOGIC_VECTOR (2 DOWNTO 0);
   SIGNAL FName	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL Start	:	STD_LOGIC;
   SIGNAL Abort	:	STD_LOGIC;
   SIGNAL SPI_MISO	:	STD_LOGIC;
   SIGNAL DAC_CLR	:	STD_LOGIC;
   SIGNAL DAC_CS	:	STD_LOGIC;
   SIGNAL SPI_MOSI	:	STD_LOGIC;
   SIGNAL SPI_SCK	:	STD_LOGIC;
   SIGNAL SPI_SS_B	:	STD_LOGIC;
   SIGNAL AMP_CS	:	STD_LOGIC;
   SIGNAL AD_CONV	:	STD_LOGIC;
   SIGNAL FPGA_INIT_B	:	STD_LOGIC;
   SIGNAL SF_CE0	:	STD_LOGIC;

BEGIN

   UUT: main PORT MAP(
		Clk_50MHz => Clk_50MHz, 
		Reset => Reset, 
		SDC_MISO => SDC_MISO, 
		SDC_MOSI => SDC_MOSI, 
		SDC_SCK => SDC_SCK, 
		SDC_SS => SDC_SS, 
		OUT_1 => OUT_1, 
		OUT_2 => OUT_2, 
		OUT_3 => OUT_3, 
		OUT_4 => OUT_4, 
		OUT_5 => OUT_5, 
		FName => FName, 
		Start => Start, 
		Abort => Abort, 
		SPI_MISO => SPI_MISO, 
		DAC_CLR => DAC_CLR, 
		DAC_CS => DAC_CS, 
		SPI_MOSI => SPI_MOSI, 
		SPI_SCK => SPI_SCK, 
		SPI_SS_B => SPI_SS_B, 
		AMP_CS => AMP_CS, 
		AD_CONV => AD_CONV, 
		FPGA_INIT_B => FPGA_INIT_B, 
		SF_CE0 => SF_CE0
   );

-- *** Test Bench - User Defined Section ***

	tb_init : PROCESS
	BEGIN
		Reset <= '0';
		Abort <= '0';	
		Start <= '0';
		wait for 10ns;
		Start <= '1';
		wait for 10ns;
		Start <= '0';
		wait;
	
	END PROCESS;
	

   tb : PROCESS
   BEGIN

		
      Clk_50MHz <= '0';
		wait for 10ns;
		Clk_50Mhz <= '1';
		wait for 10ns;		
		
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
