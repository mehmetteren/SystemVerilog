module half_adder(input logic a, b, output logic s, c);

    assign s = a ^ b;
    assign c = a & b;
    
endmodule

module half_adder_tb();

    logic a, b, s, c;
    
    half_adder dut(a, b, s, c);
    
    initial begin
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;
    end
endmodule


module half_subtractor(input logic a, b, output logic d, bout);

    assign d = a ^ b;
    assign bout = a & ~b;

endmodule

module half_subtractor_tb();
logic a, b, d, bout;
half_subtractor dut(a, b, d,
bout);
initial begin
a = 0; b = 0; #10
a = 0; b = 1; #10
a = 1; b = 0; #10
a = 1; b = 1; #10
end
endmodule


module full_adder(input logic a, b, cin
output logic s, cout)
logic o1, o2, o3;
half_adder add1(a, b, o1, o2);
half_adder add2(o1, cin, s, o3);
or orgate(o3, o2, cout);
endmodule


module full_adder_tb();
logic a, b, cin, s, bout;
full_adder dut(a, b, cin, s, bout);
initial begin
a = 0; b = 0; cin = 0; #10
a = 0; b = 1; #10
a = 1; b = 0; #10
a = 1; b = 1; #10
a = 0; b = 0; cin = 1; #10
a = 0; b = 1; #10
a = 1; b = 0; #10
a = 1; b = 1; #10
end
endmodule

module twobit_adder(input logic[1:0] a, b, logic cin
output logic s[1:0], logic cout)
logic o1;
full_adder adder1(a[0], b[0], cin, s[0], o1);
full_adder adder2(a[1], b[1], o1, s[1], cout);
endmodule

module twobit_adder_tb();
logic a[1:0], b[1:0], cin, s[1:0], cout;
lab_calculator dut(a[1:0], b, cin, s[1:0], cout);
initial begin
a[1] = 0; a[0] = 0; b[1] = 0; b[0] = 0; cin = 0; #10
a[1] = 0; a[0] = 1; #10
a[1] = 1; a[0] = 0; #10
a[1] = 1; a[0] = 1; #10
a[1] = 0; a[0] = 0; b[1] = 0; b[0] = 1; #10
a[1] = 0; a[0] = 1; #10
a[1] = 1; a[0] = 0; #10
a[1] = 1; a[0] = 1; #10
a[1] = 0; a[0] = 0; b[1] = 1; b[0] = 0; #10
a[1] = 0; a[0] = 1; #10
a[1] = 1; a[0] = 0; #10
a[1] = 1; a[0] = 1; #10
a[1] = 0; a[0] = 0; b[1] = 1; b[0] = 1; #10
a[1] = 0; a[0] = 1; #10
a[1] = 1; a[0] = 0; #10
a[1] = 1; a[0] = 1; #10
a[1] = 0; a[0] = 0; b[1] = 0; b[0] = 0; cin = 1; #10
a[1] = 0; a[0] = 1; #10
a[1] = 1; a[0] = 0; #10
a[1] = 1; a[0] = 1; #10
a[1] = 0; a[0] = 0; b[1] = 0; b[0] = 1; #10
a[1] = 0; a[0] = 1; #10
a[1] = 1; a[0] = 0; #10
a[1] = 1; a[0] = 1; #10
a[1] = 0; a[0] = 0; b[1] = 1; b[0] = 0; #10
a[1] = 0; a[0] = 1; #10
a[1] = 1; a[0] = 0; #10
a[1] = 1; a[0] = 1; #10
a[1] = 0; a[0] = 0; b[1] = 1; b[0] = 1; #10
a[1] = 0; a[0] = 1; #10
a[1] = 1; a[0] = 0; #10
a[1] = 1; a[0] = 1; #10




module and3(input logic a, b, c, output y);

    assign y = a & b & c;
    
endmodule


module or4(input a, b, c, d, output y);

    assign y = a | b | c | d;
    
endmodule


 
module lab_calculator (input logic a, b, c, d, output logic y, z);

logic o1, o2, o3, o4, o5, o6, o7, o8, o9, o10;

xor x1(a, b, o1);
nand n1(a, b, o2);
half_adder add1(a, b, o3, o9);
half_subtractor sub1(a, b, o4, o10);
and3 a1(o1, ~c, ~d, o5);
and3 a2(o2, ~c, d, o6);
and3 a3(o3, c, ~d, o7);
and3 a4(o4, c, d, o8);
or4 or1(o5, o6, o7, o8, y);
or or2(o9, o10, z);

endmodule


module lab_calculator_tb();
logic a, b, c, d, y, z;
lab_calculator dut(a, b, c, d, y, z);
initial begin
a = 0; b = 0; c = 0; d = 0; #10
a = 0; b = 1; #10
a = 1; b = 0; #10
a = 1; b = 1; #10
a = 0; b = 0; c = 0; d = 1; #10
a = 0; b = 1; #10
a = 1; b = 0; #10
a = 1; b = 1; #10
a = 0; b = 0; c = 1; d = 0; #10
a = 0; b = 1; #10
a = 1; b = 0; #10
a = 1; b = 1; #10
a = 0; b = 0; c = 1; d = 1; #10
a = 0; b = 1; #10
a = 1; b = 0; #10
a = 1; b = 1; #10
end
endmodule



