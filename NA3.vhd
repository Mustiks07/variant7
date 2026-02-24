library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity NA3 is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           Y : out STD_LOGIC );
end NA3;

architecture Behavioral of NA3 is
begin
    Y <= NOT (A AND B AND C);
end Behavioral;