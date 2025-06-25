module mux_4to1 (in,sel,out);
input [3:0] in; 
input [1:0] sel;
output out;

assign out= in[sel];
endmodule

module mux16to1 (in,sel,out);
input[15:0] in;
input[3:0] sel;
output out;
wire[3:0] t;

mux_4to1 g1 (in[3:0],sel[1:0],t[0]);
mux_4to1 g2 (in[7:4],sel[1:0],t[1]);
mux_4to1 g3 (in[11:8],sel[1:0],t[2]);
mux_4to1 g4 (in[15:12],sel[1:0],t[3]);
mux_4to1 g5 (t,sel[3:2],out);
endmodule