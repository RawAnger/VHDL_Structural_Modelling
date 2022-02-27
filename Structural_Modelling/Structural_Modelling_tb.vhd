--import std_logic from the IEEE library
library ieee;
use ieee.std_logic_1164.all;

--ENTITY DECLARATION: no inputs, no outputs
entity Structural_Modelling_tb is
end Structural_Modelling_tb;

-- Describe how to test the AND Gate
architecture tb of Structural_Modelling_tb is
   --pass andGate entity to the testbench as component
   component Structural_Modelling is	
     Port (x : in  STD_LOGIC;
           y : in  STD_LOGIC;
			  z : in  STD_LOGIC;
			  t : in  STD_LOGIC;
			  w : in  STD_LOGIC;
           f : out  STD_LOGIC);
  end component;
	
   signal  inX, inY, inZ, inT, inW, outF : std_logic;
begin 
   --map the testbench signals to the ports of the andGate
   mapping: Structural_Modelling port map(inX, inY, inZ, inT, inW, outF);

   process
   begin
      --TEST 1
      inX <= '0';
		inY <= '0';
		inZ <= '0';
		inT <= '0';
		inW <= '0';
      wait for 15 ns;
      --TEST 2
      inX <= '0';
		inY <= '0';
		inZ <= '0';
		inT <= '1';
		inW <= '0';
      wait for 15 ns;
		--TEST 3
      inX <= '1';
		inY <= '0';
		inZ <= '0';
		inT <= '0';
		inW <= '0';
      wait for 15 ns;
		--TEST 4
      inX <= '1';
		inY <= '0';
		inZ <= '0';
		inT <= '1';
		inW <= '0';
      wait for 15 ns;
		--TEST 5
      inX <= '0';
		inY <= '0';
		inZ <= '0';
		inT <= '0';
		inW <= '1';
      wait for 15 ns;
		--TEST 6
      inX <= '0';
		inY <= '1';
		inZ <= '1';
		inT <= '1';
		inW <= '0';
      wait for 15 ns;
		--TEST 7
      inX <= '0';
		inY <= '1';
		inZ <= '0';
		inT <= '1';
		inW <= '0';
      wait for 15 ns;
		--TEST 8
      inX <= '0';
		inY <= '0';
		inZ <= '0';
		inT <= '1';
		inW <= '1';
      wait for 15 ns;
		--TEST 9
      inX <= '1';
		inY <= '1';
		inZ <= '1';
		inT <= '0';
		inW <= '0';
      wait for 15 ns;
		--TEST 10
      inX <= '1';
		inY <= '1';
		inZ <= '0';
		inT <= '0';
		inW <= '0';
      wait;
   end process;
end tb;
