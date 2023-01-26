module decoder1to2 (input logic a, s, output logic y0, y1);
assign y0 = a & ~s;
assign y1 = a & s;
endmodule

module decoder2to4 (input logic a0, a1, s, output logic y0, y1, y2, y3);
logic e0, e1;
decoder1to2 d1(a0, s, e0, e1);
decoder1to2 d2(a1, ~e0, y0, y1);
decoder1to2 d3(a1, ~e1, y2, y3);
endmodule

module mux2to1 (input logic[1:0] a, logic s, output logic y);
logic o1, o2;
assign o1 = a[0] & ~s;
assign o2 = a[1] & s;
assign y = o1 | o2;
endmodule

module mux4to1 (input logic[1:0] a, b, logic s0, s1, output logic y);
logic o1, o2;
logic[1:0] o3;
mux2to1 m1(a, s0, o1);
mux2to1 m2(b, s0, o2);

assign o3[0] = o1;
assign o3[1] = o2;

mux2to1 m3(o3, s1, y);
endmodule

module mux8to1 (input logic[7:0] a, logic s0, s1, s2, output logic y);
logic o1, o2, o3, o4;
mux4to1 m1 (a[1:0], a[3:2], s0, s1, o1);
mux4to1 m2 (a[5:4], a[7:6], s0, s1, o2);
and and1(o1, ~s2, o3);
and and2(o2, s2, o4);
or or1(o3, o4, y);
endmodule


module F_function(input logic a, b, c, d, output logic y);

logic[7:0] i;

assign i[0] = 0;
assign i[1] = d;
assign i[2] = d;
assign i[3] = d;
assign i[4] = ~d;
assign i[5] = ~d;
assign i[6] = ~d;
assign i[7] = 0;

mux8to1 m1 (i, a, b, c, y);

endmodule






//testbenches
module decoder2to4_tb();

logic a0, a1, s, y0, y1, y2, y3;

decoder2to4 dut(a0, a1, s, y0, y1, y2, y3);
    initial begin
        a0 = 0; a1 = 0; s = 0; #10;
        a0 = 0; a1 = 1; #10;
        a0 = 1; a1 = 0; #10;
        a0 = 1; a1 = 1; #10;
        a0 = 0; a1 = 0; s = 1; #10;
        a0 = 0; a1 = 1; #10;
        a0 = 1; a1 = 0; #10;
        a0 = 1; a1 = 1; #10;
    end
endmodule


module mux2to1_tb();

logic[1:0] a;
logic  s, y;

mux2to1 dut(a[1:0], s, y);
    initial begin
        a[0] = 0; a[1] = 0; s = 0; #10;
        a[0] = 0; a[1] = 1; #10;
        a[0] = 1; a[1] = 0; #10;
        a[0] = 1; a[1] = 1; #10;
        a[0] = 0; a[1] = 0; s = 1; #10;
        a[0] = 0; a[1] = 1; #10;
        a[0] = 1; a[1] = 0; #10;
        a[0] = 1; a[1] = 1; #10;
    end
endmodule

//just the first part of the testbench, not full, hardcoded
module mux4to1_tb();
logic[1:0] a, b; 
logic s0, s1, y;
mux4to1 dut(a, b, s0, s1, y);
initial begin
a[1] = 0; a[0] = 0; b[1] = 0; b[0] = 0; s0 = 0; #10;
a[1] = 0; a[0] = 1; #10;
a[1] = 1; a[0] = 0; #10;
a[1] = 1; a[0] = 1; #10;
a[1] = 0; a[0] = 0; b[1] = 0; b[0] = 1; #10;
a[1] = 0; a[0] = 1; #10;
a[1] = 1; a[0] = 0; #10;
a[1] = 1; a[0] = 1; #10;
a[1] = 0; a[0] = 0; b[1] = 1; b[0] = 0; #10;
a[1] = 0; a[0] = 1; #10;
a[1] = 1; a[0] = 0; #10;
a[1] = 1; a[0] = 1; #10;
a[1] = 0; a[0] = 0; b[1] = 1; b[0] = 1; #10;
a[1] = 0; a[0] = 1; #10;
a[1] = 1; a[0] = 0; #10;
a[1] = 1; a[0] = 1; #10;
end
endmodule




module F_function_tb();
    
logic a,b,c,d;
logic y;    

F_function dut(a,b,c,d,y);

      initial begin
        for (int x=0; x<16; x=x+1)
            begin
                {a,b,c,d} = x; #10;
            end    
    end
endmodule