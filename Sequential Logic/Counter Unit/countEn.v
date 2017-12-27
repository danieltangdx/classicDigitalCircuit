/************************************************
目的：可配置的使能计数器

环境：Verilog-2001

范围：parameter  WIDTH   配置周期，2^WIDTH 
                 DELAY   使能有效后，到计数开始延迟时间
      input      iEnable,  为1 开始计数
                 iClock   时钟驱动
                 iReset	  复位
      output     oCoun   计数值 WIDETH bit
               
      
功能：带有复位和使能端的可配置计数器，计数器由时钟信号
驱动，通过配置计数器输出宽度，设计技术器能够计数的范围
此外配置延时信号，当使能信号有效后，延时一定时间开始计数
		
日期：2017/12/27  
************************************************/
module countEn #(parameter WIDTH = 8, DELAY = 1) (
input							iEnable,iClock,iReset,
output reg	[WIDTH-1:0]	oCoun);

always @(posedge iClock, negedge iReset)
if(!iReset)
	oCoun <= {WIDTH{1'b0}};
else if(iEnable)
	oCoun <= #DELAY oCoun + 1;
   
endmodule




