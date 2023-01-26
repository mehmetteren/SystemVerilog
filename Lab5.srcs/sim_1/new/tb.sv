
module mips_tb( );
    logic clk, reset, PcSrcD, MemWriteD, MemtoRegD, 
        ALUSrcD, BranchD, RegDstD, RegWriteD;
    logic[31:0] instrF, PC, PCF, instrD, ALUOutE, WriteDataE;
    logic [2:0]  alucontrol;
    logic [1:0] ForwardAE, ForwardBE;
    logic ForwardAD, ForwardBD;
    
    
    top_mips dut(clk, reset, instrF, PC, PCF, PcSrcD, MemWriteD, 
        MemtoRegD, ALUSrcD, BranchD, RegDstD, RegWriteD, alucontrol, instrD, 
        ALUOutE, WriteDataE, ForwardAE, ForwardBE, ForwardAD, ForwardBD);
    
    initial begin
        reset = 1'b1; #10;
        reset = 1'b0;
    end
    always begin
        clk = 1'b1; #10;
        clk = 1'b0; #10;
    end
endmodule
