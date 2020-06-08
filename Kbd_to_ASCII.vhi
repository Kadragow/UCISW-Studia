
-- VHDL Instantiation Created from source file Kbd_to_ASCII.vhd -- 23:05:48 06/07/2020
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Kbd_to_ASCII
	PORT(
		DataIN : IN std_logic_vector(7 downto 0);
		DataRdy : IN std_logic;          
		DataOUT : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_Kbd_to_ASCII: Kbd_to_ASCII PORT MAP(
		DataIN => ,
		DataRdy => ,
		DataOUT => 
	);


