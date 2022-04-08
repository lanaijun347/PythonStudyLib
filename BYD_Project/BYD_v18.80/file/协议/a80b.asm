
    车型ID：a80b

    模拟：协议模拟-->a80b

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

  $*$*DTC/a80b0000_2BYTE


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

  $%  000:ECU车型系列:        $%    $%  ANS000.BYTE004  $%  if(x1==0x00)y=@0448;else if(x1==0x3A)y=@0962;else if(x1==0x5A)y=@07a3;else if(x1==0x5B)y=@0961;else if(x1==0x6A)y=@08ad;else if(x1==0x6B)y=@0963;else if(x1==0xA3)y=@0441;else if(x1==0xB6)y=@0447;else if(x1==0xC3)y=@0440;else if(x1==0xD6)y=@0446;else if(x1==0xDE)y=@02db;else if(x1==0xE6)y=@00f9;else if(x1==0xEA)y=@0361;else if(x1==0xF0)y=@043e;else if(x1==0xF3)y=@0266;else if(x1==0xF6)y=@0443;else if(x1==0xFB)y=@044c;else if(x1==0xFC)y=@0452;else if(x1==0xFD)y=@0451;else y=@007f;
  $%  001:驱动数:             $%    $%  ANS000.BYTE005  $%  y=x1;
  $%  002:软件版本:           $%    $%  ANS000.BYTE007  $%  y=SPRINTF([%.1f],x1*0.1);
  $%  003:硬件版本:           $%    $%  ANS000.BYTE008  $%  y=SPRINTF([%.1f],x1*0.1);
  $%  004:生产日期:           $%    $%  ANS000.BYTE009  $%  y=SPRINTF([20%02X/%02X/%02X],x1,x2,x3);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:730 03 22 00 05 00 00 00 00       $  ANS000:738 03 22 00 05 00 00 00 00
  $  REQ001:730 03 22 00 0D 00 00 00 00       $  ANS001:738 03 22 00 0D 00 00 00 00

  $  000.维修次数       $    $       $    $  ANS000.BYTE010  $  y=x1;
  $  001.ECU加密        $    $       $    $  ANS001.BYTE004  $  if(x1==0x00)y=@0052;else if(x1==0x01)y=@0053;else y=@003f;
  $  002.加密方式       $    $       $    $  ANS001.BYTE005  $  if(x1==0x00)y=@0964;else if(x1==0x01)y=@0189;else y=@003f;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:730 30 01 04 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
