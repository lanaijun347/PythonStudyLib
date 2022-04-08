
    车型ID：1b1c

    模拟：协议模拟-->1b1c

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~77B

进入命令:

  $~  REQ000:773 02 10 01 00 00 00 00 00       $~  ANS000:77B 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:773 02 3E 80 00 00 00 00 00       $!  ANS000:77B 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:773 04 18 00 00 FF 00 00 00       $#  ANS000:77B 04 18 00 00 FF 00 00 00

		控制公式：
			y=(x1<<8)+x2;

  ANS000.BYTE02 控制故障码个数，从$#ANS000.BYTE3$#开始每$#3$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/1b000000_2BYTE


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="1"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:773 03 14 00 FF 00 00 00 00       $$  ANS000:77B 03 14 00 FF 00 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:773 03 22 00 01 00 00 00 00       $%  ANS000:77B 03 22 00 01 00 00 00 00
  $%  REQ001:773 03 22 00 03 00 00 00 00       $%  ANS001:77B 03 22 00 03 00 00 00 00
  $%  REQ002:773 03 22 F1 8C 00 00 00 00       $%  ANS002:77B 03 22 F1 8C 00 00 00 00
  $%  REQ003:773 03 22 00 06 00 00 00 00       $%  ANS003:77B 03 22 00 06 00 00 00 00

  $%  000:MCU软件版本:             $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1,x2,x3);
  $%  001:生产日期:                $%    $%  ANS000.BYTE007  $%  y=SPRINTF([%d/%d/%d],x1,x2,x3);
  $%  002:MCU硬件版本:             $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1,x2,x3);
  $%  003:生产日期:                $%    $%  ANS001.BYTE007  $%  y=SPRINTF([%d/%d/%d],x1,x2,x3);
  $%  004:全景产品序列号:          $%    $%  ANS002.BYTE004  $%  HEX(x1,x2,x3);
  $%  005:生产日期:                $%    $%  ANS002.BYTE007  $%  y=SPRINTF([%d/%d/%d],x1,x2,x3);
  $%  006:前摄像头配置信息:        $%    $%  ANS003.BYTE004  $%  if(x1==0x00)y=@005c;else if(x1==0x01)y=@005d;else  y=x1;
  $%  007:后摄像头配置信息:        $%    $%  ANS003.BYTE005  $%  if(x1==0x00)y=@005c;else if(x1==0x01)y=@005d;else  y=x1;
  $%  008:左摄像头配置信息:        $%    $%  ANS003.BYTE006  $%  if(x1==0x00)y=@005c;else if(x1==0x01)y=@005d;else  y=x1;
  $%  009:右摄像头配置信息:        $%    $%  ANS003.BYTE007  $%  if(x1==0x00)y=@005c;else if(x1==0x01)y=@005d;else  y=x1;
  $%  010:倒车雷达使能状态:        $%    $%  ANS003.BYTE008  $%  if(x1==0x00)y=@005a;else if(x1==0x01)y=@005b;else y=@0054;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:773 03 22 00 06 00 00 00 00       $  ANS000:77B 03 22 00 06 00 00 00 00

  $  000.前摄像头配置信息       $    $       $    $  ANS000.BYTE004  $  if(x1==0x00)y=@005c;else if(x1==0x01)y=@005d;else  y=x1;
  $  001.后摄像头配置信息       $    $       $    $  ANS000.BYTE005  $  if(x1==0x00)y=@005c;else if(x1==0x01)y=@005d;else  y=x1;
  $  002.左摄像头配置信息       $    $       $    $  ANS000.BYTE006  $  if(x1==0x00)y=@005c;else if(x1==0x01)y=@005d;else  y=x1;
  $  003.右摄像头配置信息       $    $       $    $  ANS000.BYTE007  $  if(x1==0x00)y=@005c;else if(x1==0x01)y=@005d;else  y=x1;
  $  004.倒车雷达使能状态       $    $       $    $  ANS000.BYTE008  $  if(x1==0x00)y=@005a;else if(x1==0x01)y=@005b;else y=@0002;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:773 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
