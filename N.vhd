library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity N is
    Port ( A : in  STD_LOGIC;
           Y : out STD_LOGIC );
end N;

architecture Behavioral of N is
begin
    Y <= NOT A;
end Behavioral;