
    车型ID：a2b6

    模拟：协议模拟-->a2b6

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:720 02 10 01 00 00 00 00 00       $~  ANS000:728 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:720 02 3E 01 00 00 00 00 00       $!  ANS000:728 02 3E 01 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:720 04 18 00 00 FF 00 00 00       $#  ANS000:728 04 18 00 00 FF 00 00 00

  ANS000.BYTE02 控制故障码个数，从$#ANS000.BYTE3$#开始每$#3$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/a2bd0000_2BYTE


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="1"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:720 03 14 00 FF 00 00 00 00       $$  ANS000:728 03 14 00 FF 00 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:720 03 22 00 01 00 00 00 00       $%  ANS000:728 03 22 00 01 00 00 00 00
  $%  REQ001:720 03 22 00 03 00 00 00 00       $%  ANS001:728 03 22 00 03 00 00 00 00
  $%  REQ002:720 03 22 00 02 00 00 00 00       $%  ANS002:728 03 22 00 02 00 00 00 00
  $%  REQ003:720 03 22 00 0A 00 00 00 00       $%  ANS003:728 03 22 00 0A 00 00 00 00
  $%  REQ004:720 03 22 00 20 00 00 00 00       $%  ANS004:728 03 22 00 20 00 00 00 00

  $%  000:软件版本:            $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1,x2,x3);
  $%  001:软件日期:            $%    $%  ANS000.BYTE007  $%  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@001d,x2,@001e,x3,@001f);
  $%  002:硬件版本:            $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1,x2,x3);
  $%  003:硬件日期:            $%    $%  ANS001.BYTE007  $%  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@001d,x2,@001e,x3,@001f);
  $%  004:序列号:              $%    $%  ANS002.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6);
  $%  005:已匹配钥匙数:        $%    $%  ANS003.BYTE004  $%  switxh(x1) 0x00: y=@0265; 0x01: y=@0266; 0x02: y=@0267; 0x03: y=@0268; 0x04: y=@0269;default: y=@0076;
  $%  006:VIN:                 $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:720 03 22 00 0D 00 00 00 00       $  ANS000:728 03 22 00 0D 00 00 00 00

  $  000:内部供电状况             $    $       $    $  ANS000.BYTE004  $  if(x1==0x00) y=@026c; else if(x1==0xFF) y=@026d; else y=@0076;
  $  001:读卡器是否失去通信       $    $       $    $  ANS000.BYTE005  $  if(x1==0x00) y=@026a; else if(x1==0xFF) y=@026b; else y=@0076;
  $  002:读卡器内部天线故障       $    $       $    $  ANS000.BYTE006  $  if(x1==0x00) y=@0022; else if(x1==0xFF) y=@003a; else y=@0076;
  $  003:钥匙状态                 $    $       $    $  ANS000.BYTE007  $  switxh(x1) 0x03: y=@0261; 0x04: y=@0262; 0x06: y=@0263;default: y=@0264;
  $  004:钥匙ID                   $    $       $    $  ANS000.BYTE007  $  if(x1==0x04) y=@0262;else if(x1==0x06) y=@0263;else y=x2*16777216+x3*65536+x4*256+x5;
  $  005:钥匙序号                 $    $       $    $  ANS000.BYTE007  $  if(x1==0x04) y=@0262;else if(x1==0x06) y=@0263;else if(x1==0x03) y=@0261;else y=x;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:720 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
