module second(x0, x1, x2, x3, a0, a1, z);
input x0, x1, x2, x3, a0, a1;
reg temp;
output z;

always @(a0, a1)
begin
	case({a1, a0})
		2'b00: temp <= x0;
		2'b01: temp <= x1;
		2'b10: temp <= x2;
		2'b11: temp <= x3;
	endcase
end

assign z = temp;

endmodule
