-- Автор: [Әбілбек Мұстафа Манапұлы]
-- Вариант: 7
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity NA4 is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           D : in  STD_LOGIC;
           Y : out STD_LOGIC );
end NA4;

architecture Behavioral of NA4 is
begin
    Y <= NOT (A AND B AND C AND D);
end Behavioral;
