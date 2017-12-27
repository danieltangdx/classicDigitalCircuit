/************************************************
目的：3-8线解码器

环境：Verilog-2001

范围：input      iEnable,  为1时解码 1bit
                 iData   输入待解码的数， 3bit
      output     oDecode   解码输出值 8 bit
               
      
功能：带有使能端的3-8线解码器，但使能有效时，将
输入的3位数，解码成相应的8为one-hot数，
		
日期：2017/12/27  
************************************************/
module decodeThreeoEight(
input 					iEnable,
input				[2:0]	iData,
output	reg	[7:0]	oDecode);
always @(iEnable or iData)
begin
	if(!iEnable)
		oDecode = 8'b0;
	else
		case(iData)
		3'b000: oDecode = 8'b0000_0001;
		3'b001: oDecode = 8'b0000_0010;
		3'b010: oDecode = 8'b0000_0100;
		3'b011: oDecode = 8'b0000_1000;
		3'b100: oDecode = 8'b0001_0000;
		3'b101: oDecode = 8'b0010_0000;
		3'b110: oDecode = 8'b0100_0000;
		3'b111: oDecode = 8'b1000_0000;
		default:oDecode = 8'b0000_0000;
		endcase
end
endmodule
