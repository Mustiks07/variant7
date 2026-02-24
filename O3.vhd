library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity O3 is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           Y : out STD_LOGIC );
end O3;

architecture Behavioral of O3 is
begin
    Y <= A OR B OR C;
end Behavioral;