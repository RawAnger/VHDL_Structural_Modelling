--import std_logic from the IEEE library
library ieee;
use ieee.std_logic_1164.all;

--ENTITY DECLARATION: no inputs, no outputs
entity AND_gate_tb is
end AND_gate_tb;

-- Describe how to test the AND Gate
architecture tb of AND_gate_tb is
   --pass andGate entity to the testbench as component
   component AND_gate is	
     Port ( INA1 : in  STD_LOGIC;
          INA2 : in  STD_LOGIC;
			 INA3 : in  STD_LOGIC;
			 INA4 : in  STD_LOGIC;
          OA   : out STD_LOGIC);
  end component;
	
   signal  inA, inB, inC, inD, outF : std_logic;
begin 
   --map the testbench signals to the ports of the andGate
   mapping: AND_gate port map(inA, inB, inC, inD, outF);

   process
   begin
      --TEST 1
      inA <= '0';
      inB <= '0';
		inC <= '0';
		inD <= '0';
      wait for 15 ns;
      --TEST 2
      inA <= '0';
      inB <= '1';
		inC <= '0';
		inD <= '1';
      wait for 15 ns;
      --TEST 3
      inA <= '1';
      inB <= '1';
		inC <= '1';
		inD <= '1';
		wait for 15 ns;
		--TEST 4
      inA <= '1';
      inB <= '0';
      inC <= '0';
		inD <= '1';
		wait for 15 ns;
		--TEST 4
      inA <= '1';
      inB <= '0';
		inC <= '1';
		inD <= '0';
		wait for 15 ns;
		--TEST 5
      inA <= '0';
      inB <= '0';
		inC <= '0';
		inD <= '1';
		wait for 15 ns;
		--TEST 6
      inA <= '0';
      inB <= '0';
		inC <= '1';
		inD <= '1';
		wait for 15 ns;
		wait;
   end process;
end tb;
