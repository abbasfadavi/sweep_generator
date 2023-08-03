-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
entity sweep_generator_stub is
  port (
    freq1 : in std_logic_vector( 16-1 downto 0 );
    freq2 : in std_logic_vector( 16-1 downto 0 );
    clk : in std_logic;
    ii : out std_logic_vector( 16-1 downto 0 );
    rr : out std_logic_vector( 16-1 downto 0 )
  );
end sweep_generator_stub;
architecture structural of sweep_generator_stub is 
begin
  sysgen_dut : entity xil_defaultlib.sweep_generator_0 
  port map (
    freq1 => freq1,
    freq2 => freq2,
    clk => clk,
    ii => ii,
    rr => rr
  );
end structural;
