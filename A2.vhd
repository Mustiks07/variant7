-- Автор: [Әбілбек Мұстафа Манапұлы]
-- Вариант: 7
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity A2 is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Y : out STD_LOGIC );
end A2;

architecture Behavioral of A2 is
begin
    Y <= A AND B;
end Behavioral;
