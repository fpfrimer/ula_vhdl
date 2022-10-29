library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ula_top is
    port (
        entrada     :   in  unsigned(4 downto 0);
        cin         :   in  std_logic;
        op          :   in  std_logic_vector( 3 downto 0);
        f           :   out unsigned(4 downto 0);       -- Saída
        z, c_out    :   out std_logic
    );
end entity ula_top;

architecture rtl of ula_top is

    signal aux  :   unsigned(4 downto 0);
    
begin
    
    u1: entity work.ula(rtl)
        port map(entrada, aux, cin, op, z, c_out);

    registrador: process(aux)
    begin
             

    end process registrador;
    
end architecture rtl;