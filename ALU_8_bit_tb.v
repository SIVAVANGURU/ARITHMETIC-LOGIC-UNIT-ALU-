module ALU_8_bit_tb();

reg [7:0] a,b;
reg [2:0] alu_sel;
wire [7:0] alu_out;

ALU_8_bit uut(a,b,alu_sel,alu_out);

initial
begin
a=8'b01010110;b=8'b00101110;
alu_sel=3'd0;
#10;

a=8'b11110110;b=8'b10011110;
alu_sel=3'd1;
#10;

a=8'b11011001;b=8'b10001001;
alu_sel=3'd2;
#10;

a=8'b1010110;b=8'b11110001;
alu_sel=3'd3;
#10;

a=8'b01110110;b=8'b11100001;
alu_sel=3'd4;
#10;

$finish;
end
endmodule
