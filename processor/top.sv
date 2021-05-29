module top(
  input sysclk, // 125MHz
  output [3:0] led,
  output led5_r, led5_g, led5_b, led6_r, led6_g, led6_b,
  output [3:0] VGA_R, VGA_G, VGA_B, 
  output VGA_HS_O, VGA_VS_O);

  wire pixel_clk, reset, we; 
  wire [7:0] address, data, vaddr, vdata;
  
  power_on_reset por(sysclk, reset);
  clk_wiz_1 clockdiv(pixel_clk, sysclk); // 25MHz
  cpu proc(sysclk, reset, data, we, address);
  mem #("vga.bin") ram(sysclk, we, address, data, vaddr, vdata); 
  vga video(pixel_clk, reset, vdata, vaddr, VGA_R, VGA_G, VGA_B, VGA_HS_O, VGA_VS_O);
endmodule

