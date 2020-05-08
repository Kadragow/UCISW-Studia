----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:36:41 05/08/2020 
-- Design Name: 
-- Module Name:    SendSample - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all; 

entity SendSample is 
    Port ( SampRdy : in  STD_LOGIC;
           SampL : in  STD_LOGIC_VECTOR (15 downto 0);
           SampR : in  STD_LOGIC_VECTOR (15 downto 0);
           SRate_Tick : in  STD_LOGIC;
           DWr_Busy : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           DWr_Start : out  STD_LOGIC;
           DWr_Cmd : out  STD_LOGIC_VECTOR (3 downto 0);
           DWr_Adr : out  STD_LOGIC_VECTOR (3 downto 0);
           DWr_Data : out  STD_LOGIC_VECTOR (11 downto 0);
           Samp_Pop : out  STD_LOGIC);
end SendSample;

architecture Behavioral of SendSample is
	type state_type is ( sReset, sReady, sWaitL, sSendL, sWaitR, sSendR );
	signal State, NextState : state_type; 
begin
-- State register (with asynchronous reset) = process1
  process ( Clk, Reset )
  begin
    if Reset = '1' then
      State <= sReset;
    elsif rising_edge( Clk ) then
      State <= NextState;
    end if;
  end process;

  -- Next state decoding = process2
  process ( State, SampRdy, SRate_Tick, DWr_Busy )
  begin
    
    NextState <= State; -- default

    case State is
      when sReset =>
        NextState <= sReady;

      when sReady =>
        if SampRdy = '1' and SRate_Tick = '1' then
          NextState <= sWaitL;
        end if;

      -- Wait until DAC is ready
		when sWaitL =>
        if DWr_Busy = '0' then
          NextState <= sSendL;
        end if;

      -- Send left channel sample
		when sSendL =>
        NextState <= sWaitR;
      
      -- Wait until DAC is ready
		when sWaitR =>
        if DWr_Busy = '0' then
          NextState <= sSendR;
        end if;

      -- Send right channel sample
      when sSendR =>
        NextState <= sReady;

    end case;
  end process;

  -- Outputs
  -- Pop FIFO with samples when sending the second (right) sample
  Samp_Pop <= '1' when State = sSendR else '0';

  -- DACWrite start: when sending either left or right channel sample
  DWr_Start <= '1' when State = sSendL or State = sSendR else '0';
  -- command: "write" when sending left sample, else "write&update"
  DWr_Cmd <= "0000" when State = sSendL or State = sWaitR else "0010";
  -- address: DAC C when sending left sample, else DAC D
  DWr_Adr <= "0010" when State = sSendL or State = sWaitR else "0011";
  -- data: left or right sample
  DWr_Data <= SampL( 15 downto 4 ) when State = sSendL or State = sWaitR else SampR( 15 downto 4 );



end Behavioral;

