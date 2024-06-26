-- A DUT entity is used to wrap your design.

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(1 downto 0);
       	output_vector: out std_logic_vector(1 downto 0));
end entity;

architecture DutWrap of DUT is
	-- Instantiate your own top Module component in place of ALU_1
	
component HalfAdder_1 is
port(in3,in4 : in std_logic; S,C : out std_logic);
end component;

begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: HalfAdder_1 port map (in3 => input_vector(1),in4 => input_vector(0),
											S => output_vector(1),C => output_vector(0));

end DutWrap;

