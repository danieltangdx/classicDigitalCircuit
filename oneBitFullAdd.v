/******************
	FileName	:	oneBitFullAdd.v
	Author		:	daniel
	Description	:	Example of a one-bit full add
	Revision	:	2017/12/20
	Company		:	***********
	Code	: 	Verilog-2011
************************/
module oneBitFullAdd(
input	iA,iB,iC,
output	oSum,oCout
	);
assign	oSum = iA ^ iB ^ iC;
assign	oCout = (iA ^ iB) | (iB & iC) | (iA & iC);
endmodule

	