library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity variant7 is
    Port ( 
        x1, x2, x3, x4 : in  STD_LOGIC;
        y1, y2, y3, y4 : out STD_LOGIC
    );
end variant7;

architecture Structural of variant7 is

    signal sig_N_out      : STD_LOGIC;
    signal sig_N1_out     : STD_LOGIC;
    signal sig_NA3_out    : STD_LOGIC;
    signal sig_NA3O2_out  : STD_LOGIC;
    signal sig_O3_out     : STD_LOGIC;
    signal sig_NOAO2_out  : STD_LOGIC;
    signal sig_NOA2_out   : STD_LOGIC;
    signal sig_A2_out     : STD_LOGIC;
    signal sig_NA4_out    : STD_LOGIC;
    signal sig_vcc_out    : STD_LOGIC;

    component N is Port ( A : in STD_LOGIC; Y : out STD_LOGIC ); end component;
    component A2 is Port ( A, B : in STD_LOGIC; Y : out STD_LOGIC ); end component;
    component O3 is Port ( A, B, C : in STD_LOGIC; Y : out STD_LOGIC ); end component;
    component NA3 is Port ( A, B, C : in STD_LOGIC; Y : out STD_LOGIC ); end component;
    component NA4 is Port ( A, B, C, D : in STD_LOGIC; Y : out STD_LOGIC ); end component;
    component NA3O2 is Port ( A, B, C, D : in STD_LOGIC; Y : out STD_LOGIC ); end component;
    component NOA2 is Port ( A, B, C : in STD_LOGIC; Y : out STD_LOGIC ); end component;
    component NAO3 is Port ( A, B, C, D : in STD_LOGIC; Y : out STD_LOGIC ); end component;
    component NOAO2 is Port ( A, B, C, D : in STD_LOGIC; Y : out STD_LOGIC ); end component;
    component VCC is Port ( Y : out STD_LOGIC ); end component;

begin

    gate_N:  N  port map ( A => x2, Y => sig_N_out );
    gate_N1: N  port map ( A => x3, Y => sig_N1_out );

    gate_NA3: NA3 port map ( A => sig_N_out, B => x4, C => x1, Y => sig_NA3_out );

    gate_NA3O2: NA3O2 port map ( 
        A => x1, 
        B => sig_N_out, 
        C => x4, 
        D => x3, 
        Y => sig_NA3O2_out 
    );

    gate_O3: O3 port map ( A => sig_N_out, B => x4, C => x1, Y => sig_O3_out );

    gate_A2: A2 port map ( A => x2, B => x4, Y => sig_A2_out );

    gate_NA4: NA4 port map ( A => x2, B => x4, C => x3, D => x1, Y => sig_NA4_out );

    gate_NOAO2: NOAO2 port map ( 
        A => sig_N1_out, 
        B => sig_NA3_out, 
        C => x1, 
        D => sig_N_out, 
        Y => sig_NOAO2_out 
    );

    gate_NOA2: NOA2 port map ( 
        A => sig_NOAO2_out, 
        B => sig_O3_out, 
        C => sig_NA3O2_out, 
        Y => sig_NOA2_out 
    );

    gate_NAO3: NAO3 port map ( 
        A => sig_NA4_out, 
        B => sig_A2_out, 
        C => x3, 
        D => sig_NOA2_out, 
        Y => y3 
    );

    gate_VCC: VCC port map ( Y => sig_vcc_out );

    y1 <= sig_NOA2_out;
    y2 <= sig_NOAO2_out;
    y4 <= sig_vcc_out;

end Structural;