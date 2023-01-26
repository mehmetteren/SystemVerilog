`timescale 1ns / 1ps


module displayer(input logic[3:0] digit1, digit2, digit3, digit4, reset, clk, 
                 output logic[6:0] LED_out, output logic[3:0] Anode_Activate);
logic [19:0] refresh_counter; 
// the first 18-bit for creating 2.6ms digit period
// the other 2-bit for creating 4 LED-activating signals
logic [1:0] LED_activating_counter; 
// count        0    ->  1  ->  2  ->  3
// activates    LED1    LED2   LED3   LED4
// and repeat
always_ff @(posedge clk)
    if(reset == 1) refresh_counter <= 0;
    else refresh_counter <= refresh_counter + 1;

assign LED_activating_counter = refresh_counter[19:18];

// anode activating signals for 4 LEDs
    logic[3:0] LED_BCD; 
    always_comb
        case(LED_activating_counter)
        2'b00: begin
            Anode_Activate = 4'b0111; 
            // activate LED1 and Deactivate LED2, LED3, LED4
            LED_BCD = digit1;
            // the first hex-digit of the 16-bit number
             end
        2'b01: begin
            Anode_Activate = 4'b1011; 
            // activate LED2 and Deactivate LED1, LED3, LED4
            LED_BCD = digit2;
            // the second hex-digit of the 16-bit number
                end
        2'b10: begin
            Anode_Activate = 4'b1101; 
            // activate LED3 and Deactivate LED2, LED1, LED4
            LED_BCD = digit3;
             // the third hex-digit of the 16-bit number
              end
        2'b11: begin
            Anode_Activate = 4'b1110; 
            // activate LED4 and Deactivate LED2, LED3, LED1
             LED_BCD = digit4;
             // the fourth hex-digit of the 16-bit number 
               end   
        default:begin
             Anode_Activate = 4'b1111; 
            LED_BCD = digit1;
            // the first hex-digit of the 16-bit number
            end
        endcase

// Cathode patterns of the 7-segment LED display 
always_comb
     case(LED_BCD)
     4'b0000: LED_out = 7'b0000001; // "0"  
     4'b0001: LED_out = 7'b1001111; // "1" 
     4'b0010: LED_out = 7'b0010010; // "2" 
     4'b0011: LED_out = 7'b0000110; // "3" 
     4'b0100: LED_out = 7'b1001100; // "4" 
     4'b0101: LED_out = 7'b0100100; // "5" 
     4'b0110: LED_out = 7'b0100000; // "6" 
     4'b0111: LED_out = 7'b0001111; // "7" 
     4'b1000: LED_out = 7'b0000000; // "8"  
     4'b1001: LED_out = 7'b0000100; // "9"
     4'b1010: LED_out = 7'b0001000; // Hexadecimal A
     4'b1011: LED_out = 7'b1100000; // Hexadecimal B
     4'b1100: LED_out = 7'b0110001;	// Hexadecimal C
     4'b1101: LED_out = 7'b1000010;	// Hexadecimal D
     4'b1110: LED_out = 7'b0110000;	// Hexadecimal E    
     4'b1111: LED_out = 7'b0111000; // Hexadecimal F     
     default: LED_out = 7'b0000001; // "0"
     endcase

endmodule
 
 
module register_file#(parameter N = 3, M = 4)
                     (input logic clk, we1, we2, input logic[N-1:0] w_address1, w_address2, r_address1, r_address2,
                      input logic[M-1:0] din1, din2, output logic[M-1:0] dout1, dout2);
                      
    logic [M-1:0] mem[2**N-1:0];

    always_ff@(posedge clk)
        if(we1 & we2)begin
            mem[w_address1] <= din1;
            mem[w_address2] <= din2;
            end 
        else if (we2) mem[w_address2] <= din2;
        else if(we1) mem[w_address1] <= din1;
              
    assign dout1 = mem[r_address1]; 
    assign dout2 = mem[r_address2]; 
    
endmodule


module IM#(parameter N = 3, M = 12)
                     (input logic clk, we, input logic[N-1:0] w_address, r_address,
                      input logic[M-1:0] din, output logic[M-1:0] dout);
                      
    logic [M-1:0] mem[2**N-1:0];

    always_ff@(posedge clk)
        if(we) mem[w_address] <= din;
        
    assign dout = mem[r_address]; 
    
endmodule


module memory#(parameter N = 4, M = 4)
                     (input logic clk, we, re, input logic[N-1:0] address,
                      input logic[M-1:0] din, output logic[M-1:0] dout);
                      
    logic [M-1:0] mem[2**N-1:0];

    always_ff@(posedge clk)
        if(we) mem[address] <= din;
        
    always_comb
        if(re) dout = mem[address]; 
    
endmodule


module register(input logic[11:0] in, input logic clk, load, reset, output logic [11:0] out);

    logic[11:0] data;
    
    always_ff@(posedge clk)
        if(reset) data <= 0;
        else if(load) data <= in;
    
    assign out = data;
endmodule



module processor(input logic[15:0] in, input logic execute, isexternal, load_ins, load_reg, clear, clk, 
                 output logic[6:0] ssd, output logic[3:0] anode_activate, output logic[4:0] state_output,
                 output logic[2:0] pc_out, irout);
    
    typedef enum logic[4:0]{reset, init, load_ins_state, resetX, external, load_data,
                            fetch, resetPC , decode, choose, display, store,
                            load, alu_init, sub, add, mul, div, display_result, extra1} statetype;
    statetype state, nextstate;
    logic we_rf1, we_rf2, we_im, M_we, M_re, ir_load;
    logic[2:0] PC, PC_next, x, x_next, rf_wadd1, rf_wadd2, rf_radd1, rf_radd2, im_wadd, im_radd;
    logic[3:0] rf_din1, rf_din2, rf_dout1, rf_dout2, M_add, M_wd, M_rd;
    logic[11:0] ir_in, ir_out, im_din, im_dout;
    logic[2:0] ins_code, read_add1, read_add2, write_add;
    logic[3:0] digit1, digit2, digit3, digit4;
    logic[3:0] a, b, result, result2;
       
    displayer d1(digit1, digit2, digit3, digit4, clear, clk, ssd, anode_activate);
    //clock_divider cd(clk, clks);
                                                 
    register_file rf(clk, we_rf1, we_rf2, rf_wadd1, rf_wadd2, rf_radd1, rf_radd2, rf_din1, rf_din2, rf_dout1, rf_dout2);
    IM insmem(clk, we_im, im_wadd, im_radd, im_din, im_dout);
    memory M(clk, M_we, M_re, M_add, M_wd, M_rd);                           
                            
    register IR(ir_in, clk, ir_load, clear, ir_out); 
                            
    always_ff@(posedge clk)
        if(clear) begin 
            state <= reset;
            PC <= 0;
            x <= 0;
            end
        else begin 
            state <= nextstate;
            PC <= PC_next;
            x <= x_next;
            end

     
    always_comb
        case(state)
            reset:
                nextstate = init;
            init: 
                if(execute) nextstate = fetch;
                else if(load_ins) nextstate = load_ins_state;
                else if(isexternal) nextstate = external;
                else if(load_reg) nextstate = load_data;
                else nextstate = init;
            load_ins_state: 
                if(x >= 7) nextstate = resetX;
                else nextstate = init;
            resetX:
                nextstate = init;      
            external:
                nextstate = decode;
            load_data:
                nextstate = init;
            fetch: 
                if(PC >= 7) nextstate = resetPC;
                else nextstate = decode;
            resetPC:
                nextstate = decode;
            decode:
                nextstate = choose;
            choose:
                if(ir_out[11:9] == 3'b000) nextstate = load;
                else if(ir_out[11:9] == 3'b001) nextstate = store;
                else if(ir_out[11:9] == 3'b110) nextstate = display;
                else nextstate = alu_init;
            load:
                nextstate = init;
            store:
                nextstate = init;
            display:
                if(execute) nextstate = init;
                else nextstate = display;                
            alu_init:
                if(ir_out[11:9] == 3'b010) nextstate = sub;
                else if(ir_out[11:9] == 3'b011) nextstate = add;
                else if(ir_out[11:9] == 3'b100) nextstate = mul;
                else if(ir_out[11:9] == 3'b101) nextstate = div;
                else nextstate = display_result;
            sub:
                nextstate = display_result;
            add:
                nextstate = display_result;            
            mul:
                nextstate = display_result;            
            div:
                nextstate = display_result;            
            display_result:
                if(clear) nextstate = reset;
                else if(execute) nextstate = init;
                else nextstate = display_result;
            
            default: nextstate = init;
         endcase
    
    always_comb
        case (state)
            reset: begin //reset memories?
                ir_load = 0;
                we_rf1 = 0; we_rf2 = 0; we_im = 0; M_we = 0; M_re = 0;
                PC_next = 0; x_next = 0; rf_wadd1 = 0; rf_wadd2 = 0; rf_radd1 = 0; rf_radd2 = 0; im_wadd = 0; im_radd = 0;
                rf_din1 = 0; rf_din2 = 0; M_add = 0; M_wd = 0;
                ir_in = 0; im_din = 0;
                digit1 = 0; digit2 = 0; digit3 = 0; digit4 = 0;
                a = 0; b = 0; result = 0; result2 = 0;
                end
            init: begin
                ir_load = 0;
                we_rf1 = 0; we_rf2 = 0; we_im = 0; M_we = 0; M_re = 0; 
                //not completed
                digit1 = 0; digit2 = 0; digit3 = 0; digit4 = 0;
                a = 0; b = 0; result = 0; result2 = 0;
                end
            load_ins_state: begin
                im_wadd = x;
                im_din = in[11:0];
                we_im = 1;
                x_next = x + 1'b1;
                end
            resetX:
                x_next = 0;
            external: begin
                ir_in = in[11:0];
                ir_load = 1;                
                end
            load_data: begin
                rf_wadd1 = in[11:9];
                rf_din1 = in[15:12];
                we_rf1 = 1;
                end
            fetch: begin
                im_radd = PC;
                ir_in = im_dout;
                ir_load = 1;
                PC_next = PC + 1'b1;
                end               
            resetPC:
                PC_next = 0;
            decode: begin
                ir_load = 0;
                x_next = PC;
                end
            //choose:
            load: begin
                M_add = ir_out[3:0];
                M_re = 1;
                rf_wadd1 = ir_out[6:4];
                rf_din1 = M_rd;
                we_rf1 = 1; 
                end
             store: begin
                rf_radd1 = ir_out[6:4];
                M_add = ir_out[3:0];
                M_wd = rf_dout1;
                M_we = 1;
                end   
             display: begin
                rf_radd1 = ir_out[2:0];
                digit1 = rf_dout1;
                digit2 = 0; digit3 = 0; digit4 = 0;
                //turnoff other leds
                end
            alu_init: begin
                //write_add = in[8:6];
                end
            sub: begin
                rf_radd1 = ir_out[5:3];
                rf_radd2 = ir_out[2:0];
                a = rf_dout1;
                b = rf_dout2;            
                result = (a - b);
                rf_wadd1 = ir_out[8:6];
                rf_din1 = result;
                we_rf1 = 1;                 
                end
            add: begin
                rf_radd1 = ir_out[5:3];
                rf_radd2 = ir_out[2:0];
                a = rf_dout1;
                b = rf_dout2;
                result = (a + b);
                rf_wadd1 = ir_out[8:6];
                rf_din1 = result;
                we_rf1 = 1;                 
                end
            mul: begin
                rf_radd1 = ir_out[5:3];
                rf_radd2 = ir_out[2:0];
                a = rf_dout1;
                b = rf_dout2;
                result = (a*b); // debuggggggggggggggggg
                rf_wadd1 = ir_out[8:6];
                rf_din1 = result;
                we_rf1 = 1;                 
                end
            div: begin
                            rf_radd1 = ir_out[5:3];
                rf_radd2 = ir_out[2:0];
                a = rf_dout1;
                b = rf_dout2;            
                result2 = (a / b); 
                result = (a % b);
                rf_wadd1 = ir_out[8:6];
                rf_din1 = result2;
                if(ir_out[8:6] == 7) rf_wadd2 = 3'b000;
                else rf_wadd2 = (ir_out[8:6] + 1);
                rf_din2 = result;
                we_rf1 = 1;
                we_rf2 = 1;            
                end
            display_result: begin
                digit1 = rf_dout1;
                digit2 = rf_dout2;
                digit3 = result2;
                digit4 = result;
                end
        endcase
        
        
    assign irout = ir_out[11:9];
    assign pc_out = PC;
    assign state_output = state;        
endmodule












