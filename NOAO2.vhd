-- Автор: [Әбілбек Мұстафа Манапұлы]
-- Вариант: 7
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity NOAO2 is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           D : in  STD_LOGIC;
           Y : out STD_LOGIC );
end NOAO2;

architecture Behavioral of NOAO2 is
begin
    Y <= NOT ((A OR B) AND (C OR D));
end Behavioral;
