library ieee;
use ieee.std_logic_1164.all;

--Use the Gates package already uploaded in my previous repository named AND_using_NAND.
library work;
use work.Gates.all;

entity HalfAdder_1 is
	port(in3,in4:in std_logic;
		  S,C:out std_logic);
end entity;

architecture struct of HalfAdder_1 is
	--The code for the below code is uploaded in my repository named XOR_using_NAND.
	--If you dont want to use this component you can directly use XOR_2 component already present in the Gates package.
	component XOR_1 is
		port(in1,in2:in std_logic;
			out1:out std_logic);
	end component;
   signal sig1:std_logic;
	
begin
	inst1: XOR_1 port map(in1=>in3,in2=>in4,out1=>S);
	inst2: NAND_2 port map(A=>in3,B=>in4,Y=>sig1);
	inst3: NAND_2 port map(A=>sig1,B=>sig1,Y=>C);
	
end architecture;
