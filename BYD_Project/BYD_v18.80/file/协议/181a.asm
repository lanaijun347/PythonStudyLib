
    车型ID：181a

    模拟：协议模拟-->181a

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~73D

进入命令:

  $~  REQ000:735 02 10 01 00 00 00 00 00       $~  ANS000:73D 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:735 02 3E 80 00 00 00 00 00       $!  ANS000:73D 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:735 04 18 00 00 FF 00 00 00       $#  ANS000:73D 04 18 00 00 FF 00 00 00

		控制公式：
			y=(x1<<8)+x2;

  ANS000.BYTE02 控制故障码个数，从$#ANS000.BYTE3$#开始每$#3$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/feff0000_2BYTE


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="1"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:735 03 14 00 FF 00 00 00 00       $$  ANS000:73D 03 14 00 FF 00 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:735 03 22 00 01 00 00 00 00       $%  ANS000:73D 03 22 00 01 00 00 00 00

  $%  000:软件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d],x1/10,x1%10);
  $%  001:硬件版本:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%d.%d],x1/10,x1%10);
  $%  002:生产日期:        $%    $%  ANS000.BYTE007  $%  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:735 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
