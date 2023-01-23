`timescale 100ns / 100ps

module tb();

logic[7:0] sum, a, b;
logic cout, clk;
serial dut(sum,cout,a,b,clk);

initial begin
a = 8'b01001010;
b = 8'b00110011;
end

always begin
clk = 0; #10;
clk = 1; #10;
end

endmodule

