/******************
	FileName	:	operation.v
	Author	:	daniel
	Description	:	Example of operation for +,-,*,/
	Revision	:	2017/12/20
	Company	:	***********
	code	:	Verilog-2001
************************/
module operation(
input 		[3:0]	iA,iB,
output reg	[4:0] oSum,
output reg	[3:0]	oSub,oDiv,
output reg	[7:0]	oMult);
always @(iA,iB)
begin
	oSum = iA + iB;
	oSub = iA - iB;
	oDiv = iA / iB;
	oMult = iA * iB;
end
endmodule