--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
--Date        : Thu Aug  3 12:02:05 2023
--Host        : DESKTOP-JEI2OF3 running 64-bit major release  (build 9200)
--Command     : generate_target sweep_generator_bd_wrapper.bd
--Design      : sweep_generator_bd_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sweep_generator_bd_wrapper is
  port (
    clk : in STD_LOGIC;
    freq1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    freq2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ii : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rr : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end sweep_generator_bd_wrapper;

architecture STRUCTURE of sweep_generator_bd_wrapper is
  component sweep_generator_bd is
  port (
    clk : in STD_LOGIC;
    freq1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    freq2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ii : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rr : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component sweep_generator_bd;
begin
sweep_generator_bd_i: component sweep_generator_bd
     port map (
      clk => clk,
      freq1(15 downto 0) => freq1(15 downto 0),
      freq2(15 downto 0) => freq2(15 downto 0),
      ii(15 downto 0) => ii(15 downto 0),
      rr(15 downto 0) => rr(15 downto 0)
    );
end STRUCTURE;
