module dff (
    input clk, D, reset,
    output reg Q
);
    always @(posedge clk or posedge reset) begin
        if (reset) 
            Q <= 0; 
        else
            Q <= D;
    end
endmodule

module cla_4bit (
    input [3:0] A, B,  
    input Cin, clk, reset,  
    output [3:0] S_ff,    
    output Cout        
);
    wire [3:0] A_ff, B_ff, S;
    wire Cin_ff, Cout_ff;
    wire [3:0] P, G;   
    wire [3:1] C;      
    wire [25:0] temp;  

    // D flip-flops for inputs 
    dff dff_A0 (.D(A[0]), .clk(clk), .reset(reset), .Q(A_ff[0]));
    dff dff_A1 (.D(A[1]), .clk(clk), .reset(reset), .Q(A_ff[1]));
    dff dff_A2 (.D(A[2]), .clk(clk), .reset(reset), .Q(A_ff[2]));
    dff dff_A3 (.D(A[3]), .clk(clk), .reset(reset), .Q(A_ff[3]));

    dff dff_B0 (.D(B[0]), .clk(clk), .reset(reset), .Q(B_ff[0]));
    dff dff_B1 (.D(B[1]), .clk(clk), .reset(reset), .Q(B_ff[1]));
    dff dff_B2 (.D(B[2]), .clk(clk), .reset(reset), .Q(B_ff[2]));
    dff dff_B3 (.D(B[3]), .clk(clk), .reset(reset), .Q(B_ff[3]));

    dff dff_Cin (.D(Cin), .clk(clk), .reset(reset), .Q(Cin_ff));

    xor (P[0], A_ff[0], B_ff[0]);
    xor (P[1], A_ff[1], B_ff[1]);   
    xor (P[2], A_ff[2], B_ff[2]);
    xor (P[3], A_ff[3], B_ff[3]);

    and (G[0], A_ff[0], B_ff[0]);
    and (G[1], A_ff[1], B_ff[1]);
    and (G[2], A_ff[2], B_ff[2]);
    and (G[3], A_ff[3], B_ff[3]);

    and (temp[0], P[0], Cin_ff);
    or  (C[1], G[0], temp[0]);

    and (temp[1], P[1], G[0]);
    and (temp[2], P[1], P[0]);
    and (temp[3], temp[2], Cin_ff);
    or  (temp[4], temp[1], temp[3]);
    or  (C[2], G[1], temp[4]);

    and (temp[5], P[2], G[1]);
    and (temp[6], P[2], P[1]);
    and (temp[7], temp[6], G[0]);
    and (temp[8], P[2], P[1]);
    and (temp[9], temp[8], P[0]);
    and (temp[10], temp[9], Cin_ff);
    or  (temp[11], temp[5], temp[7]);
    or  (temp[12], temp[11], temp[10]);
    or  (C[3], G[2], temp[12]);

    and (temp[13], P[3], G[2]);
    and (temp[14], P[3], P[2]);
    and (temp[15], temp[14], G[1]);
    and (temp[16], P[3], P[2]);
    and (temp[17], temp[16], P[1]);
    and (temp[18], temp[17], G[0]);
    and (temp[19], P[3], P[2]);
    and (temp[20], temp[19], P[1]);
    and (temp[21], temp[20], P[0]);
    and (temp[22], temp[21], Cin_ff);
    or  (temp[23], temp[13], temp[15]);
    or  (temp[24], temp[23], temp[18]);
    or  (temp[25], temp[24], temp[22]);
    or  (Cout_ff, G[3], temp[25]);

    xor (S[0], P[0], Cin_ff);
    xor (S[1], P[1], C[1]);
    xor (S[2], P[2], C[2]);
    xor (S[3], P[3], C[3]);

    // D flip-flops for outputs
    dff dff_S0 (.D(S[0]), .clk(clk), .reset(reset), .Q(S_ff[0]));
    dff dff_S1 (.D(S[1]), .clk(clk), .reset(reset), .Q(S_ff[1]));
    dff dff_S2 (.D(S[2]), .clk(clk), .reset(reset), .Q(S_ff[2]));
    dff dff_S3 (.D(S[3]), .clk(clk), .reset(reset), .Q(S_ff[3]));

    dff dff_Cout (.D(Cout_ff), .clk(clk), .reset(reset), .Q(Cout));

endmodule

