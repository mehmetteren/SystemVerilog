`timescale 1ns / 1ps

module tb();
logic execute, isexternal, load_ins, load_reg, clear, clk; 
logic[15:0] in = 16'b0000_1000_0000_0001;
logic[5:0] state;
logic[6:0] ssd;
processor dut(in, execute, isexternal, load_ins, load_reg, clear, clk, ssd, state);

initial begin
clear = 1; #10;
clear = 0; #10;
load_ins = 1; #10;
load_ins = 0; #30;
load_ins = 1; #10;
load_ins = 0; #10;
end

always begin
clk = 1; #10;
clk = 0; #10; 
end

endmodule
