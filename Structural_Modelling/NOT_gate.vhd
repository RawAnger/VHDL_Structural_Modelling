library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity NOT_gate is
    Port ( INA1 : in  STD_LOGIC;
           OA   : out STD_LOGIC);
end NOT_gate;

architecture Behavioral of NOT_gate is
begin
    OA <= not INA1;    -- 2 input NOT gate
end Behavioral;