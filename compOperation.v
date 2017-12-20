/******************
	FileName	:	compOperation.v
	Author	:	daniel
	Description	:	Example of comparison operation for >,<,>=,<=
	Revision	:	2017/12/20
	Company	:	***********
	code	:	Verilog-2001
************************/
module compOperation(
input		  [3:0]	iA,iB,
output reg			oLarge,oSmall,
						oLargeEqual,oSmallEqual);
always @(iA,iB)
begin
	oLarge = iA > iB;
	oSmall = iA < iB;
	oLargeEqual = iA >= iB;
	oSmallEqual = iA <= iB;
end
endmodule
