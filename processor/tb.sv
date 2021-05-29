module tb;
  reg clock;
  
  top dut(clock);

  initial
    begin
      $dumpfile("dump.vcd"); $dumpvars(0);
      #50000; $stop;
    end

  always
    begin
      clock <= 1; #5; clock <= 0; #5;
    end
endmodule
