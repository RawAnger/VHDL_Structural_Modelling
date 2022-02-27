library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Structural_Modelling is
    Port ( x : in  STD_LOGIC;
           y : in  STD_LOGIC;
			  z : in  STD_LOGIC;
			  t : in  STD_LOGIC;
			  w : in  STD_LOGIC;
           f : out  STD_LOGIC);
end Structural_Modelling;

architecture Structure of Structural_Modelling is

component AND_gate4 is
    Port ( INA1 : in  STD_LOGIC;
           INA2 : in  STD_LOGIC;
			  INA3 : in  STD_LOGIC;
			  INA4 : in  STD_LOGIC;
           OA   : out STD_LOGIC);
end component;

component AND_gate3 is
    Port ( INA1 : in  STD_LOGIC;
           INA2 : in  STD_LOGIC;
			  INA3 : in  STD_LOGIC;
           OA   : out STD_LOGIC);
end component;

component OR_gate is
    Port ( INA1 : in  STD_LOGIC;
           INA2 : in  STD_LOGIC;
			  INA3 : in  STD_LOGIC;
			  INA4 : in  STD_LOGIC;
           OA   : out STD_LOGIC);
end component;

component NOT_gate is
    Port ( INA1 : in  STD_LOGIC;
           OA   : out STD_LOGIC);
end component;

signal wire1, wire2, wire3, wire4 : STD_LOGIC;
signal nx, ny, nz, nt, nw : STD_LOGIC; -- nots of inputs


begin
	NOT1: NOT_gate port map(x,nx);
	NOT2: NOT_gate port map(y,ny);
	NOT3: NOT_gate port map(z,nz);
	NOT4: NOT_gate port map(t,nt);
	NOT5: NOT_gate port map(w,nw);
	AND1 : AND_gate4 port map (nx,y,t,nw,wire1);
	AND2 : AND_gate4 port map (x,y,nt,nw,wire2);
	AND3 : AND_gate3 port map (y,z,w,wire3);
	AND4 : AND_gate3 port map (ny,nz,nw,wire4);
	OR1  : OR_gate port map (wire1, wire2, wire3, wire4, f);

end Structure;

