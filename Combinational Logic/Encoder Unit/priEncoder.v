/************************************************
目的：优先编码器

环境：Verilog-2001

范围：input      iCode1,iCode2,iCode3,iCode4 输入相应的码值 1bit
                 iSel   选择相应信号， 2bit
      output     oEncode   输出编码的结果 1 bit
               
      
功能：编码器，通过选择信号将，选择编码的方式。
编码方式由四个输入信号提供
		
日期：2017/12/27  
************************************************/
module priEncoder(
input 					iCode1,iCode2,iCode3,iCode4,
input				[1:0]	iSel,
output	reg			oEncode);
always @(iCode1, iCode2, iCode3, iCode4, iSel)
begin
	if(iSel == 2'b00)
		oEncode = iCode1;
	else if(iSel == 2'b01)
		oEncode = iCode2;
	else if(iSel == 2'b10)
		oEncode = iCode3;
	else
		oEncode = iCode4;
end
endmodule
