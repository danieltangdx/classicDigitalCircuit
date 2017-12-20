/******************
	FileName	:	shifter.v
	Author	:	daniel
	Description	:	Example of a shifter
	Revision	:	2017/12/20
	Company	:	***********
	code	:	Verilog-2001
************************/
module #(parameter CARRY = 2]shift(
input 	  [3:0] iData,
output reg [3:0] oLeftShift,oRightShift);
always @(iData)
begin
	oLeftShift = iData << CARRY;
	oRightShift = iData >> CARRY;
end
endmodule
