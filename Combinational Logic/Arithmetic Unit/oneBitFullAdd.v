/************************************************
目的：计算两个1位二进制数相加
环境：Verilog-2001
范围：input    iNum1,iNum2 待相加的数  1bit
               iCout  进位   1bit
      output   oSum   相加的结果  1bit
               oCout	 相加的进位	 1bit
      
功能：一位全加器，将输入的两数和进位相加
      输出结果和进位。输入改变，输出立即改变
		
日期：2017/12/27  
************************************************/
module oneBitFullAdd(
input		iNum1,iNum2,iCout,
output	oSum,oCout);
assign	oSum = iNum1 ^ iNum2 ^ iCout;
assign	oCout = (iNum1 ^ iNum2) | (iNum2 & iCout) 
               | (iNum1 & iCout);
endmodule

	