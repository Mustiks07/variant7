library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity VCC is
    Port ( Y : out STD_LOGIC );
end VCC;

architecture Behavioral of VCC is
begin
    Y <= '1';
end Behavioral;