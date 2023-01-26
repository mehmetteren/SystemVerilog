module flipflop(
     input logic d,
     input logic clk,
     input logic reset,
     output logic q
     );
     
     always_ff@(posedge clk)
     if(reset) q <= 1'b0;
     else q <= d;
     
endmodule


module shift_register
 #(parameter N = 8)
 (input logic clk, input logic reset,
 input logic load, input logic shift,
 input logic[N-1:0] in, input logic sin,
 output logic[N-1:0] q, output logic sout );
 logic[N-1:0] d;
 
 assign sout = q[0];
 
 flipflop f0(d[N-1], clk, reset, q[N-1]);
 flipflop f1(d[N-2], clk, reset, q[N-2]);
 flipflop f2(d[N-3], clk, reset, q[N-3]);
 flipflop f3(d[N-4], clk, reset, q[N-4]);
 flipflop f4(d[N-5], clk, reset, q[N-5]);
 flipflop f5(d[N-6], clk, reset, q[N-6]);
 flipflop f6(d[N-7], clk, reset, q[N-7]);
 flipflop f7(d[N-8], clk, reset, q[N-8]);
 always_comb 
 if(reset) {d} = 8'b00000000;
 else if(load) {d} = {in};
 else if(shift) {d} = {sin, d[N-1:1]};
 
endmodule


module serial_adder
 #(parameter N = 8)
 (input logic clk, input logic reset,
 input logic load, input logic shift,
 input logic[N-1:0] in1, input logic[N-1:0] in2,
 output logic[N-1:0] out);
 
 logic aOut, bOut, cout, q0, ffClock, sum, serialSum;
 logic[7:0] q1, q2;

    always_comb
    if(load) cout = (q0 & (in1[0] ^ in2[0])) | (in1[0] & in2[0]);
    else if(shift) cout = (q0 & (q1[0] ^ q2[0])) | (q1[0] & q2[0]);
    
    always_comb
    if(load) sum = q0 ^ (in1[0] ^ in2[0]);
    else if(shift) sum = q0 ^ (q1[0] ^ q2[0]);
    
 
 shift_register registerA(clk, reset, load, shift, in1, 1'b0, q1, aOut);
 shift_register registerB(clk, reset, load, shift, in2, 1'b0, q2, bOut);
 shift_register registerOut(clk, reset, load, shift, 8'b00000000, sum, out, serialSum);
 
 flipflop f0(cout, clk, reset, q0);
endmodule

module serialadder_tb();
 logic clk, reset, load, shift, sout;
 logic[7:0] in1 = 8'b01001010;
 logic[7:0] in2 = 8'b00110011;
 logic[7:0] out;
 
 serial_adder dut(clk, reset, load, shift, in1, in2, out);
 
 initial begin
 reset = 1; #15;
 reset = 0; #10
 load = 1; #15;
 load = 0; #5;
 shift = 1; #20; shift = 0; #10;
 shift = 1; #20; shift = 0; #10;
 shift = 1; #20; shift = 0; #10;
 shift = 1; #20; shift = 0; #10;
 shift = 1; #20; shift = 0; #10;
 shift = 1; #20; shift = 0; #10;
 shift = 1; #20; shift = 0; #10;
 shift = 1; #20; shift = 0; #10;
 end
 always begin
 clk = 1'b0; #10;
 clk = 1'b1; #10;
 end
endmodule

