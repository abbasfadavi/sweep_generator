  sysgen_dut : entity xil_defaultlib.sweep_generator 
  port map (
    freq1 => freq1,
    freq2 => freq2,
    clk => clk,
    ii => ii,
    rr => rr
  );
