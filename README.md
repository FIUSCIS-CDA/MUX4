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

#### SEE ALSO
       qms(1), modclone(1)
