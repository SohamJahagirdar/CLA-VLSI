`include "cla.v"

`timescale 1ns/1ps

module cla_4bit_tb;
    reg [3:0] A, B;      
    reg clk, reset, cin; 
    wire [3:0] S;        
    wire Cout;           

    cla_4bit uut (
        .A(A),
        .B(B),
        .Cin(cin),    
        .clk(clk),    
        .reset(reset), 
        .S_ff(S),
        .Cout(Cout)
    );

    
    initial begin
        $dumpfile("cla_4bit_tb.vcd");
        $dumpvars(0, cla_4bit_tb);
        clk = 0;
        forever #5 clk = ~clk; 
    end

    
    initial begin
        reset = 1;        
        #10 
        reset = 0;
        A = 4'b0000;
        B = 4'b0000;
        cin = 0;
        
        #20 A = 4'b0011; B = 4'b0101; // 3 and 5
        #20 A = 4'b1111; B = 4'b1111; // 15 and 15
        #20 A = 4'b1010; B = 4'b0101; // 10 and 5
        #20 A = 4'b0110; B = 4'b1001; // 6 and 9
        #40 $finish;       
    end

    initial begin
        $monitor("Time = %0t | Reset = %b | A = %b | B = %b | Cout = %b | S = %b",
                 $time, reset, A, B, Cout, S);
    end


endmodule
