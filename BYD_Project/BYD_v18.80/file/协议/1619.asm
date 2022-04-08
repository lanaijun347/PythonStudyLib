
    车型ID：1619

    模拟：协议模拟-->1619

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~738

进入命令:

  $~  REQ000:730 02 10 01 00 00 00 00 00       $~  ANS000:738 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:730 02 3E 80 00 00 00 00 00       $!  ANS000:738 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:730 04 18 00 00 FF 00 00 00       $#  ANS000:738 04 18 00 00 FF 00 00 00

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

  $$  REQ000:730 03 14 00 FF 00 00 00 00       $$  ANS000:738 03 14 00 FF 00 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:730 03 22 00 01 00 00 00 00       $%  ANS000:738 03 22 00 01 00 00 00 00

  $%  000:ECU车型系列:        $%    $%  ANS000.BYTE004  $%  y=@0051;
  $%  001:驱动数:             $%    $%  ANS000.BYTE005  $%  HEX(x1);
  $%  002:软件版本:           $%    $%  ANS000.BYTE007  $%  y=SPRINTF([%.2d.%.2d],x1/16,x1%16);
  $%  003:硬件版本:           $%    $%  ANS000.BYTE008  $%  y=SPRINTF([%.2d.%.2d],x1/16,x1%16);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:730 03 22 00 0D 00 00 00 00       $  ANS000:738 03 22 00 0D 00 00 00 00

  $  000.ECU加密信息       $    $       $    $  ANS000.BYTE004  $  if(x1==0x00)y=@0052;else if(x1==0x01)y=@0053;else y=@0002;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:730 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
