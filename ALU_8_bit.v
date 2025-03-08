

module ALU_8_bit(a,b,alu_sel,alu_out);
input [7:0] a;
input [7:0] b;
input [2:0] alu_sel;
output reg [7:0] alu_out;

always@(*)
begin
    case(alu_sel)
        3'b000: begin alu_out<= a+b; end
        3'b001: begin alu_out<= a-b; end
        3'b010: begin alu_out<= a&b; end
        3'b011: begin alu_out<= a|b; end
        3'b100: begin alu_out<= ~a; end
        default: alu_out<= a+b;
    endcase
end
endmodule
