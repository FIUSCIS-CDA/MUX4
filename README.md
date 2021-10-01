#### MODULE NAME
       MUX4

#### DEPENDENCIES
       None

#### INPUTS
Name | Size(Bits)
-----|------------
A   |     1      
B   |     1      
C   |     1      
D   |     1      
S   |     2      

#### OUTPUTS
Name | Size(Bits)
-----|------------
Y   |     1      

#### DESCRIPTION
       Four-input multiplexor with one-bit inputs.  Sets output Y equal to:

       A if S = 00,

       B if S = 01,

       C if S = 10,

       D if S = 11.

#### AUTHOR
       Alexander T Pastoriza
       Trevor Cickovski

#### SEE ALSO
       qms(1), modclone(1)
----------------------- MUX 1:4 Code vhdl      
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity oneXfour_demux is
port(a0: in std_logic;
	  sel: in std_logic_vector(1 downto 0);
	  y0,y1,y2,y3: out std_logic);
end oneXfour_demux;

architecture Behavioral of oneXfour_demux is

begin
y0<= a0 when sel="00" else 'U'; 
y1<= a0 when sel="01" else 'U';
y2<= a0 when sel="10" else 'U';
y3<= a0 when sel="11";


end Behavioral;


