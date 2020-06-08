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
   PORT( DataIN	:	IN	STD_LOGIC_VECTOR (7 downto 0);
			DataOUT	:	OUT STD_LOGIC_VECTOR (7 downto 0);
			DataRdy	:	IN STD_LOGIC;
--			 Clk_50MHz	:	IN	STD_LOGIC; 
--          PS2_Clk	:	IN STD_LOGIC;
--			 PS2_Data	:	IN STD_LOGIC;
--			 PS2_DO	:	OUT STD_LOGIC_VECTOR (7 downto 0);
--			 PS2_Rdy	:	OUT STD_LOGIC;
--			 Reset	:	IN	STD_LOGIC; 
--          SDC_MISO	:	IN	STD_LOGIC; 
--          SDC_MOSI	:	OUT	STD_LOGIC; 
--          SDC_SCK	:	OUT	STD_LOGIC; 
--          SDC_SS	:	OUT	STD_LOGIC; 
--          OUT_1	:	OUT	STD_LOGIC; 
--          OUT_2	:	OUT	STD_LOGIC; 
--          OUT_3	:	OUT	STD_LOGIC; 
--          OUT_4	:	OUT	STD_LOGIC_VECTOR (15 DOWNTO 0); 
--          OUT_5	:	OUT	STD_LOGIC_VECTOR (2 DOWNTO 0); 
--          FName	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0); 
--          Start	:	IN	STD_LOGIC; 
--          Abort	:	IN	STD_LOGIC; 
--          SPI_MISO	:	IN	STD_LOGIC; 
--          DAC_CLR	:	OUT	STD_LOGIC; 
--          DAC_CS	:	OUT	STD_LOGIC; 
--          SPI_MOSI	:	OUT	STD_LOGIC; 
--          SPI_SCK	:	OUT	STD_LOGIC; 
--          SPI_SS_B	:	OUT	STD_LOGIC; 
--          AMP_CS	:	OUT	STD_LOGIC; 
--          AD_CONV	:	OUT	STD_LOGIC; 
--          FPGA_INIT_B	:	OUT	STD_LOGIC; 
--          SF_CE0	:	OUT	STD_LOGIC;
--			 SampRdyTest : IN STD_LOGIC;			 
--			 SrateTickTest : IN STD_LOGIC;
--			 DWrBusyTest : IN STD_LOGIC;
--			 ResetTest : IN STD_LOGIC;
--			 ClkTest : IN STD_LOGIC;
--			 SampLTest	:	IN STD_LOGIC_VECTOR (15 downto 0);
--			 SampRTest	:	IN STD_LOGIC_VECTOR (15 downto 0);
--			 DWrStartTest	:	OUT	STD_LOGIC; 
--			 SampPopTest	:	OUT	STD_LOGIC; 
--			 DWrCmdTest	:	OUT	STD_LOGIC_VECTOR (3 DOWNTO 0);
--			 DWrAdrTest	:	OUT	STD_LOGIC_VECTOR (3 DOWNTO 0);
			 DataTest	:	OUT	STD_LOGIC_VECTOR (11 DOWNTO 0)
			 );
   END COMPONENT;

	signal DataIN	:	STD_LOGIC_VECTOR (7 downto 0) := X"1E";
	signal DataRdy	:	STD_LOGIC;
	signal DataOUT	:	STD_LOGIC_VECTOR (7 downto 0);

--   SIGNAL PS2_Clk	:	STD_LOGIC;
--	SIGNAL PS2_Data	:	STD_LOGIC;
--	SIGNAL PS2_DO	:	STD_LOGIC_VECTOR (7 downto 0);
--	SIGNAL clk_counter	:	integer range 0 to 3000 := 0;
--	SIGNAL bits_counter	:	integer range 0 to 11 :=0;
--	SIGNAL bits	:	STD_LOGIC_VECTOR (0 to 10) := X"1E"; 
--	SIGNAL PS2_Rdy	:	STD_LOGIC;
--	SIGNAL Clk_50MHz	:	STD_LOGIC;
--   SIGNAL Reset	:	STD_LOGIC;
--   SIGNAL SDC_MISO	:	STD_LOGIC;
--   SIGNAL SDC_MOSI	:	STD_LOGIC;
--   SIGNAL SDC_SCK	:	STD_LOGIC;
--   SIGNAL SDC_SS	:	STD_LOGIC;
--   SIGNAL OUT_1	:	STD_LOGIC;
--   SIGNAL OUT_2	:	STD_LOGIC;
--   SIGNAL OUT_3	:	STD_LOGIC;
--   SIGNAL OUT_4	:	STD_LOGIC_VECTOR (15 DOWNTO 0);
--   SIGNAL OUT_5	:	STD_LOGIC_VECTOR (2 DOWNTO 0);
--   SIGNAL FName	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
--   SIGNAL Start	:	STD_LOGIC;
--   SIGNAL Abort	:	STD_LOGIC;
--   SIGNAL SPI_MISO	:	STD_LOGIC;
--   SIGNAL DAC_CLR	:	STD_LOGIC;
--   SIGNAL DAC_CS	:	STD_LOGIC;
--   SIGNAL SPI_MOSI	:	STD_LOGIC;
--   SIGNAL SPI_SCK	:	STD_LOGIC;
--   SIGNAL SPI_SS_B	:	STD_LOGIC;
--   SIGNAL AMP_CS	:	STD_LOGIC;
--   SIGNAL AD_CONV	:	STD_LOGIC;
--   SIGNAL FPGA_INIT_B	:	STD_LOGIC;
--   SIGNAL SF_CE0	:	STD_LOGIC;
--	--Test
--	SIGNAL SampRdyTest : STD_LOGIC;
--	SIGNAL SrateTickTest : STD_LOGIC;
--	SIGNAL DWrBusyTest : STD_LOGIC;
--	SIGNAL ResetTest : STD_LOGIC;
--	SIGNAL ClkTest : STD_LOGIC;
--	SIGNAL SampLTest	: STD_LOGIC_VECTOR (15 downto 0);
--	SIGNAL SampRTest	: STD_LOGIC_VECTOR (15 downto 0);
--	SIGNAL DWrStartTest	: STD_LOGIC; 
--	SIGNAL SampPopTest	:	STD_LOGIC; 
--	SIGNAL DWrCmdTest	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
--	SIGNAL DWrAdrTest	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	SIGNAL DataTest :	STD_LOGIC_VECTOR (11 DOWNTO 0);

BEGIN

   UUT: main PORT MAP(
		DataIN => DataIN,
		DataRdy => DataRdy,
		DataOUT => DataOUT,
--		PS2_Clk => PS2_Clk,
--		PS2_Data => PS2_Data,
--		PS2_DO => PS2_DO,
--		PS2_Rdy => PS2_Rdy,
--		Clk_50MHz => Clk_50MHz, 
--		Reset => Reset, 
--		SDC_MISO => SDC_MISO, 
--		SDC_MOSI => SDC_MOSI, 
--		SDC_SCK => SDC_SCK, 
--		SDC_SS => SDC_SS, 
--		OUT_1 => OUT_1, 
--		OUT_2 => OUT_2, 
--		OUT_3 => OUT_3, 
--		OUT_4 => OUT_4, 
--		OUT_5 => OUT_5, 
--		FName => FName, 
--		Start => Start, 
--		Abort => Abort, 
--		SPI_MISO => SPI_MISO, 
--		DAC_CLR => DAC_CLR, 
--		DAC_CS => DAC_CS, 
--		SPI_MOSI => SPI_MOSI, 
--		SPI_SCK => SPI_SCK, 
--		SPI_SS_B => SPI_SS_B, 
--		AMP_CS => AMP_CS, 
--		AD_CONV => AD_CONV, 
--		FPGA_INIT_B => FPGA_INIT_B, 
--		SF_CE0 => SF_CE0,
--		SampRdyTest => SampRdyTest,
--		SrateTickTest => SrateTickTest,
--		DWrBusyTest => DWrBusyTest,
--		ResetTest => ResetTest, 
--		ClkTest => ClkTest,
--		SampLTest => SampLTest,
--		SampRTest => SampRTest,
--		DWrStartTest => DWrStartTest,
--		SampPopTest	=> SampPopTest,
--		DWrCmdTest => DWrCmdTest,	
--		DWrAdrTest => DWrAdrTest,
		DataTest => DataTest
		
   );

-- *** Test Bench - User Defined Section ***

	tb_init : PROCESS
	BEGIN
		DataRdy <= '0';
--		Reset <= '0';
--		Abort <= '0';	
--		Start <= '0';
--		wait for 10ns;
--		Start <= '1';
--		wait for 10ns;
--		Start <= '0';
		wait;
	
	END PROCESS;
	
--	tb_tests : PROCESS
--	BEGIN
--		ResetTest <= '0';
--		SampRdyTest <= '1';
--		SrateTickTest <= '1';
--		DWrBusyTest <= '0';
--		SampRTest <= "0000000011111111";
--		SampLTest <= "1111111100000000";
--		wait;
--		
--	END PROCESS;
	

   tb : PROCESS
   BEGIN
		DataRdy <= '1';
		wait for 10 ns;
		DataRdy <= '0';
		
		
--		PS2_Data <= bits(bits_counter);
--		FName <= "00000001";
--      Clk_50MHz <= '0';
--		ClkTest <= '0';
--		wait for 10ns;
--		Clk_50Mhz <= '1';
--		ClkTest <= '1';
--		wait for 10ns;
--		if(clk_counter<1500) then
--			PS2_Clk <= '0';
--		else
--			PS2_Clk <= '1';
--		end if;
--		if(clk_counter<3000) then
--			clk_counter <= clk_counter+1;
--		else
--			if(bits_counter<10) then
--				PS2_Data <= bits(bits_counter);
--				bits_counter <= bits_counter+1;
--			else
--				bits_counter <= 0;
--			end if;
--			clk_counter <= 0;
--		end if;
		-- 0 0010 1010 0 1 -- sygna³ PS2_data dla znaku "v": 1 bit startowy, 8 bitów znaku, 1 bit parzystoœci (odd parity), 1 bit stopu
		
		
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
