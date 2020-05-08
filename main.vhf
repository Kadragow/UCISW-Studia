--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : main.vhf
-- /___/   /\     Timestamp : 05/08/2020 18:10:04
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl C:/Users/Kamil/Desktop/ucisw/ucisw_projekt/main.vhf -w C:/Users/Kamil/Desktop/ucisw/ucisw_projekt/main.sch
--Design Name: main
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity main is
   port ( Abort       : in    std_logic; 
          Clk_50MHz   : in    std_logic; 
          FName       : in    std_logic_vector (7 downto 0); 
          Reset       : in    std_logic; 
          SDC_MISO    : in    std_logic; 
          SPI_MISO    : in    std_logic; 
          Start       : in    std_logic; 
          AD_CONV     : out   std_logic; 
          AMP_CS      : out   std_logic; 
          DAC_CLR     : out   std_logic; 
          DAC_CS      : out   std_logic; 
          FPGA_INIT_B : out   std_logic; 
          OUT_1       : out   std_logic; 
          OUT_2       : out   std_logic; 
          OUT_3       : out   std_logic; 
          OUT_4       : out   std_logic_vector (15 downto 0); 
          OUT_5       : out   std_logic_vector (2 downto 0); 
          SDC_MOSI    : out   std_logic; 
          SDC_SCK     : out   std_logic; 
          SDC_SS      : out   std_logic; 
          SF_CE0      : out   std_logic; 
          SPI_MOSI    : out   std_logic; 
          SPI_SCK     : out   std_logic; 
          SPI_SS_B    : out   std_logic);
end main;

architecture BEHAVIORAL of main is
   signal XLXN_13     : std_logic;
   signal XLXN_14     : std_logic;
   signal XLXN_17     : std_logic;
   signal XLXN_22     : std_logic;
   signal XLXN_23     : std_logic_vector (15 downto 0);
   signal XLXN_24     : std_logic_vector (15 downto 0);
   signal XLXN_30     : std_logic;
   signal XLXN_31     : std_logic_vector (3 downto 0);
   signal XLXN_32     : std_logic_vector (3 downto 0);
   signal XLXN_33     : std_logic_vector (11 downto 0);
   component SendSample
      port ( SampRdy    : in    std_logic; 
             SRate_Tick : in    std_logic; 
             DWr_Busy   : in    std_logic; 
             Reset      : in    std_logic; 
             Clk        : in    std_logic; 
             SampL      : in    std_logic_vector (15 downto 0); 
             SampR      : in    std_logic_vector (15 downto 0); 
             DWr_Start  : out   std_logic; 
             Samp_Pop   : out   std_logic; 
             DWr_Cmd    : out   std_logic_vector (3 downto 0); 
             DWr_Adr    : out   std_logic_vector (3 downto 0); 
             DWr_Data   : out   std_logic_vector (11 downto 0));
   end component;
   
   component WAVreader
      port ( FName      : in    std_logic_vector (7 downto 0); 
             Start      : in    std_logic; 
             Abort      : in    std_logic; 
             SDC_MOSI   : out   std_logic; 
             SDC_SCK    : out   std_logic; 
             SDC_SS     : out   std_logic; 
             SDC_MISO   : in    std_logic; 
             DO_Rdy     : out   std_logic; 
             DO_L       : out   std_logic_vector (15 downto 0); 
             DO_R       : out   std_logic_vector (15 downto 0); 
             DO_Pop     : in    std_logic; 
             Busy       : out   std_logic; 
             FmtMnS     : out   std_logic; 
             Fmt8n16    : out   std_logic; 
             FmtSRate   : out   std_logic_vector (15 downto 0); 
             SRate_Tick : out   std_logic; 
             Error      : out   std_logic_vector (2 downto 0); 
             Reset      : in    std_logic; 
             Clk_50MHz  : in    std_logic; 
             Clk_Sys    : in    std_logic);
   end component;
   
   component DACWrite
      port ( Reset       : in    std_logic; 
             Start       : in    std_logic; 
             SPI_MISO    : in    std_logic; 
             Cmd         : in    std_logic_vector (3 downto 0); 
             Addr        : in    std_logic_vector (3 downto 0); 
             DATA        : in    std_logic_vector (11 downto 0); 
             DAC_CLR     : out   std_logic; 
             DAC_CS      : out   std_logic; 
             SPI_MOSI    : out   std_logic; 
             SPI_SCK     : out   std_logic; 
             SPI_SS_B    : out   std_logic; 
             AMP_CS      : out   std_logic; 
             AD_CONV     : out   std_logic; 
             SF_CE0      : out   std_logic; 
             FPGA_INIT_B : out   std_logic; 
             Busy        : out   std_logic; 
             Clk_50MHz   : in    std_logic; 
             Clk_Sys     : in    std_logic);
   end component;
   
begin
   XLXI_1 : SendSample
      port map (Clk=>Clk_50MHz,
                DWr_Busy=>XLXN_14,
                Reset=>Reset,
                SampL(15 downto 0)=>XLXN_23(15 downto 0),
                SampR(15 downto 0)=>XLXN_24(15 downto 0),
                SampRdy=>XLXN_22,
                SRate_Tick=>XLXN_13,
                DWr_Adr(3 downto 0)=>XLXN_32(3 downto 0),
                DWr_Cmd(3 downto 0)=>XLXN_31(3 downto 0),
                DWr_Data(11 downto 0)=>XLXN_33(11 downto 0),
                DWr_Start=>XLXN_30,
                Samp_Pop=>XLXN_17);
   
   XLXI_2 : WAVreader
      port map (Abort=>Abort,
                Clk_Sys=>Clk_50MHz,
                Clk_50MHz=>Clk_50MHz,
                DO_Pop=>XLXN_17,
                FName(7 downto 0)=>FName(7 downto 0),
                Reset=>Reset,
                SDC_MISO=>SDC_MISO,
                Start=>Start,
                Busy=>OUT_1,
                DO_L(15 downto 0)=>XLXN_23(15 downto 0),
                DO_R(15 downto 0)=>XLXN_24(15 downto 0),
                DO_Rdy=>XLXN_22,
                Error(2 downto 0)=>OUT_5(2 downto 0),
                FmtMnS=>OUT_2,
                FmtSRate(15 downto 0)=>OUT_4(15 downto 0),
                Fmt8n16=>OUT_3,
                SDC_MOSI=>SDC_MOSI,
                SDC_SCK=>SDC_SCK,
                SDC_SS=>SDC_SS,
                SRate_Tick=>XLXN_13);
   
   XLXI_3 : DACWrite
      port map (Addr(3 downto 0)=>XLXN_32(3 downto 0),
                Clk_Sys=>Clk_50MHz,
                Clk_50MHz=>Clk_50MHz,
                Cmd(3 downto 0)=>XLXN_31(3 downto 0),
                DATA(11 downto 0)=>XLXN_33(11 downto 0),
                Reset=>Reset,
                SPI_MISO=>SPI_MISO,
                Start=>XLXN_30,
                AD_CONV=>AD_CONV,
                AMP_CS=>AMP_CS,
                Busy=>XLXN_14,
                DAC_CLR=>DAC_CLR,
                DAC_CS=>DAC_CS,
                FPGA_INIT_B=>FPGA_INIT_B,
                SF_CE0=>SF_CE0,
                SPI_MOSI=>SPI_MOSI,
                SPI_SCK=>SPI_SCK,
                SPI_SS_B=>SPI_SS_B);
   
end BEHAVIORAL;


