library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AND_gate4 is
    Port ( INA1 : in  STD_LOGIC;
           INA2 : in  STD_LOGIC;
			  INA3 : in  STD_LOGIC;
			  INA4 : in  STD_LOGIC;
           OA   : out STD_LOGIC);
end AND_gate4;




architecture and_4 of AND_gate4 is
begin
    OA <= INA1 and INA2 and INA3 and INA4 ;    -- 4 input AND gate
end and_4;



library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AND_gate3 is
    Port ( INA1 : in  STD_LOGIC;
           INA2 : in  STD_LOGIC;
			  INA3 : in  STD_LOGIC;
           OA   : out STD_LOGIC);
end AND_gate3;



architecture and_3 of AND_gate3 is
begin
	OA <= INA1 and INA2 and INA3 ;    -- 3 input AND gate
end and_3;