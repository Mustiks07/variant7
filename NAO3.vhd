library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity NAO3 is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           D : in  STD_LOGIC;
           Y : out STD_LOGIC );
end NAO3;

architecture Behavioral of NAO3 is
begin
    Y <= NOT (A AND (B OR C OR D));
end Behavioral;