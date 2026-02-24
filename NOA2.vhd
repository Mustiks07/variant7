-- Автор: [Әбілбек Мұстафа Манапұлы]
-- Вариант: 7
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity NOA2 is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           Y : out STD_LOGIC );
end NOA2;

architecture Behavioral of NOA2 is
begin
    Y <= NOT (A OR (B AND C));
end Behavioral;
