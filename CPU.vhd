--
--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 
--
--   To use any of the example code shown below, uncomment the lines and modify as necessary
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity REG is
	port( i_DATAIN: IN STD_LOGIC_VECTOR(7 downto 0);
		i_ADDRESS: IN STD_LOGIC_VECTOR(7 downto 0);
		i_W_R : IN boolean;
		o_DATAOUT : OUT STD_LOGIC_VECTOR(7 downto 0);
		i_clock : IN boolean);
	end entity;
	architecture BEHAVE of REG is
		type MEM is ARRAY (255 downto 0) OF STD_LOGIC_VECTOR(7 downto 0);
		SIGNAL MEMORY : MEM;
		SIGNAL ADDR : INTEGER range 0 to 255;
		BEGIN
			PROCESS(i_ADDRESS,i_DATAIN,i_W_R,i_clock)
				BEGIN
			ADDR<=conv_integer(i_ADDRESS);
			o_DATAOUT <= MEMORY(ADDR);
				if(i_W_R and i_clock)THEN
					MEMORY(ADDR)<=i_DATAIN;
				END IF;
			END process;
		END BEHAVE;
		
		
package CPU is

-- type <new_type> is
--  record
--    <type_name>        : std_logic_vector( 7 downto 0);
--    <type_name>        : std_logic;
-- end record;
--
-- Declare constants
--
-- constant <constant_name>		: time := <time_unit> ns;
-- constant <constant_name>		: integer := <value;
--
-- Declare functions and procedure
--
-- function <function_name>  (signal <signal_name> : in <type_declaration>) return <type_declaration>;
-- procedure <procedure_name> (<type_declaration> <constant_name>	: in <type_declaration>);
--

end CPU;

package body CPU is

---- Example 1
--  function <function_name>  (signal <signal_name> : in <type_declaration>  ) return <type_declaration> is
--    variable <variable_name>     : <type_declaration>;
--  begin
--    <variable_name> := <signal_name> xor <signal_name>;
--    return <variable_name>; 
--  end <function_name>;

---- Example 2
--  function <function_name>  (signal <signal_name> : in <type_declaration>;
--                         signal <signal_name>   : in <type_declaration>  ) return <type_declaration> is
--  begin
--    if (<signal_name> = '1') then
--      return <signal_name>;
--    else
--      return 'Z';
--    end if;
--  end <function_name>;

---- Procedure Example
--  procedure <procedure_name>  (<type_declaration> <constant_name>  : in <type_declaration>) is
--    
--  begin
--    
--  end <procedure_name>;
 
end CPU;
