`timescale 1ns / 10ps

module lightsystem(input logic clk, reset, SA, SB,
            output logic[2:0] LA, LB);
    
    typedef enum logic[3:0]{s0,s1,s2,s3,s4,s5,s6,s7,s8,s9} statetype;
    statetype[3:0] state, nextstate;
    parameter green = 3'b100;
    parameter yellow = 3'b110;
    parameter red = 3'b111;
    
    always_ff@(posedge clk, posedge reset)
        if(reset) state <= s0;
        else state <= nextstate;
        
    always_comb
        case(state)
            s0: if(SA & SB) nextstate = s8;
                else if(SB) nextstate = s1;  //else if, else?
                else if(~SB) nextstate = s0;
                else if (~SA&SB) nextstate = s1;
            s1: nextstate = s2;
            s2: nextstate = s3; //maybe change them to nonblocking assignment
            s3: nextstate = s4;
            s4: if(SA & SB) nextstate = s9;
                else if(SA) nextstate = s5;
                else if(~SA) nextstate = s4;
                else nextstate = s5;
            s5: nextstate = s6;
            s6: nextstate = s7;
            s7: nextstate = s0;
            s8: if(~SB) nextstate = s8;
                else if(SB) nextstate = s1;
                else nextstate = s1;
            s9: if(SA) nextstate = s5;
                else if(~SA) nextstate = s9; 
                else nextstate = s5;   
            default: nextstate = s0;
        endcase
            
    always_comb
        case(state)
            s0: {LA, LB} = {green , red};
            s1: {LA, LB} = {yellow , red};
            s2: {LA, LB} = {red , red};
            s3: {LA, LB} = {red , yellow};
            s4: {LA, LB} = {red , green};
            s5: {LA, LB} = {red , yellow};
            s6: {LA, LB} = {red , red};
            s7: {LA, LB} = {yellow , red};
            s8: {LA, LB} = {green , red};
            s9: {LA, LB} = {red , green};
            default: {LA, LB} = {green , red};
        endcase
endmodule

module Clock_divider(input clk, input reset, output out);

logic[20:0] x= {21{1'b0}};
localparam localParameter = 7500000;

always @(posedge clk)
begin
    if (x == localParameter || reset == 1)
        x <= {32{1'b0}};



`timescale 1ns / 1ps

module lightsystem_tb();

    logic clk, reset, SA, SB; 
    logic[2:0] LA, LB;
    
    lightsystem dut(clk, reset, SA, SB, LA, LB);

    initial begin
    SA = 0; SB = 0; #100;
    SA = 0; SB = 1; #100;
    SA = 1; SB = 0; #100;
    SA = 1; SB = 1; #100;
    end
    
    always begin
        clk = 1'b0; #10;
        clk = 1'b1; #10;
    end
endmodule




