
module mips_tb( );
    logic clk, reset, memwrite;
    logic[31:0] writedata, dataddr, pc, instr, readdata;
    
    top dut(clk, reset, writedata, dataddr, pc, instr, readdata, memwrite);
    
    initial begin
        reset = 1'b1; #10;
        reset = 1'b0;
    end
    always begin
        clk = 1'b1; #10;
        clk = 1'b0; #10;
    end
endmodule
