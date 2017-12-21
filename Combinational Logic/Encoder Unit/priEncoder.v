/******************
	FileName	:	priEncoder.v
	Author	:	daniel
	Description	:	Example of a priority encoder
	Revision	:	2017/12/20
	Company	:	***********
	code	:	Verilog-2001
************************/
module priEncoder(
input 					iA,iB,iC,iD,
input				[1:0]	iS,
output	reg			oA);
always @(iA or iB or iC or iD or iS)
begin
	if(iS == 2'b00)
		oA = iA;
	else if(iS == 2'b01)
		oA = iB;
	else if(iS == 2'b10)
		oA = iC;
	else
		oA = iD;
end
endmodule
