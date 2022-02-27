LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY Behavioral_Modelling_tb IS
END Behavioral_Modelling_tb;
 
ARCHITECTURE behavior OF Behavioral_Modelling_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Structural_Modelling
    PORT(
         x : IN  std_logic;
         y : IN  std_logic;
         z : IN  std_logic;
         t : IN  std_logic;
         w : IN  std_logic;
         f : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal x : std_logic := '0';
   signal y : std_logic := '0';
   signal z : std_logic := '0';
   signal t : std_logic := '0';
   signal w : std_logic := '0';

 	--Outputs
   signal f : std_logic;
 
BEGIN
 
	mapping: Behavioral_Modelling port map(inX, inY, inZ, inT, inW, outF);
	
	process
	begin
		--TEST 1
      inX  <= '1';
      inY  <= '1';
		inZ  <= '1';
		inT  <= '0';
		inW  <= '0';
      wait for 15 ns;
		--TEST 2
      inX  <= '1';
      inY  <= '1';
		inZ  <= '1';
		inT  <= '0';
		inW  <= '0';
      wait for 15 ns;
		--TEST 3
      inX  <= '1';
      inY  <= '1';
		inZ  <= '0';
		inT  <= '0';
		inW  <= '0';
      wait for 15 ns;
		--TEST 4
      inX  <= '1';
      inY  <= '1';
		inZ  <= '1';
		inT  <= '1';
		inW  <= '0';
      wait for 15 ns;
		--TEST 5
      inX  <= '0';
      inY  <= '1';
		inZ  <= '0';
		inT  <= '1';
		inW  <= '0';
      wait for 15 ns;
		--TEST 6
      inX  <= '0';
      inY  <= '1';
		inZ  <= '1';
		inT  <= '1';
		inW  <= '0';
      wait for 15 ns;
		--TEST 7
      inX  <= '1';
      inY  <= '1';
		inZ  <= '1';
		inT  <= '1';
		inW  <= '1';
      wait for 15 ns;
		--TEST 8
      inX  <= '0';
      inY  <= '1';
		inZ  <= '1';
		inT  <= '1';
		inW  <= '1';
      wait for 15 ns;
		--TEST 9
      inX  <= '1';
      inY  <= '0';
		inZ  <= '0';
		inT  <= '0';
		inW  <= '0';
      wait;
	end process;

END;
