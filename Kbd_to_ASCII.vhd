----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:58:01 06/05/2020 
-- Design Name: 
-- Module Name:    Kbd_to_ASCII - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Kbd_to_ASCII is
    Port ( DataIN : in  STD_LOGIC_VECTOR (7 downto 0) := x"00" ;
			  DataRdy : in STD_LOGIC;
           DataOUT : out  STD_LOGIC_VECTOR (7 downto 0)
			  );
end Kbd_to_ASCII;

architecture Behavioral of Kbd_to_ASCII is
	signal data : STD_LOGIC_VECTOR (7 downto 0);

begin
	process(DataRdy)
	
	begin
	
	case DataIN is
		-- 1
		when X"16" =>	DataOUT <= X"31";
		
		-- 2
		when X"1E" =>	DataOUT <= X"32";
		
		-- 3
		when X"26" =>	DataOUT <= X"33";
			
		-- 4
		when X"25" =>	DataOUT <= X"34";
			
		-- 5
		when X"2E" =>	DataOUT <= X"35";
			
		-- 6
		when X"36" =>	DataOUT <= X"36";
			
		-- 7
		when X"3D" =>	DataOUT <= X"37";
			
		-- 8
		when X"3E" =>	DataOUT <= X"38";
			
		-- 9
		when X"46" =>	DataOUT <= X"39";
			
		-- 0
		when X"45" =>	DataOUT <= X"30";
			
		when others =>	DataOUT <= X"00";
		
	end case;

	end process;

end Behavioral;

