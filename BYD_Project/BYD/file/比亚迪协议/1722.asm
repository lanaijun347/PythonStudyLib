
    车型ID：1722

    模拟：协议模拟-->1722

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:720 02 10 01 00 00 00 00 00       $~  ANS000:728 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:720 02 3E 80 00 00 00 00 00       $!  ANS000:728 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:720 04 18 00 00 FF 00 00 00       $#  ANS000:728 04 18 00 00 FF 00 00 00

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

  $$  REQ000:720 03 14 00 FF 00 00 00 00       $$  ANS000:728 03 14 00 FF 00 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:720 03 22 F1 93 00 00 00 00       $%  ANS000:728 03 22 F1 93 00 00 00 00
  $%  REQ001:720 03 22 F1 94 00 00 00 00       $%  ANS001:728 03 22 F1 94 00 00 00 00
  $%  REQ002:720 03 22 F1 95 00 00 00 00       $%  ANS002:728 03 22 F1 95 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1/100,(x1/10)%10,x1%10);
  $%  001:硬件日期:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@001d,x2,@001e,x3,@001f);
  $%  002:软件编号:        $%    $%  ANS001.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%.2d.%.2d],(x1*256+x2)/10000,((x1*256+x2)%10000)/100,(x1*256+x2)%100);
  $%  004:软件日期:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@001d,x2,@001e,x3,@001f);
  $%  005:修改次数:        $%    $%  ANS002.BYTE009  $%  y=x1;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:720 03 22 00 02 00 00 00 00       $  ANS000:728 03 22 00 02 00 00 00 00
  $  REQ001:720 03 22 00 0A 00 00 00 00       $  ANS001:728 03 22 00 0A 00 00 00 00
  $  REQ002:720 03 22 00 0D 00 00 00 00       $  ANS002:728 03 22 00 0D 00 00 00 00

  $  000:序列号                   $    $       $    $  ANS000.BYTE004  $  y=SPRINTF([%02X %02X %02X %02X %02X %02X],x1,x2,x3,x4,x5,x6);
  $  001:已匹配钥匙数             $    $       $    $  ANS001.BYTE004  $  if(x1==0x00) y=@060b;else if(x1==0x01)y=@0266;else if(x1==0x02)y=@0267;else if(x1==0x03)y=@0268;else if(x1==0x04)y=@0269;else y=@001c;
  $  002:内部供电状况             $    $       $    $  ANS002.BYTE004  $  if(x1==0x00)y=@026c;else if(x1==0xFF)y=@026d;else y=@001c;
  $  003:读卡器是否失去通信       $    $       $    $  ANS002.BYTE005  $  if(x1==0x00)y=@02e8;else if(x1==0xFF)y=@06d5;else y=@001c;
  $  004:内部天线状态             $    $       $    $  ANS002.BYTE006  $  if(x1==0x00)y=@0022;else if(x1==0xFF)y=@003a;else y=@001c;
  $  005:钥匙状态                 $    $       $    $  ANS002.BYTE007  $  switxh(x1)2:y=@0264;3:y=@0261;4:y=@0262;6:y=@0263;default: y=@001c;
  $  006:钥匙ID                   $    $       $    $  ANS002.BYTE008  $  y=SPRINTF([%02X %02X %02X %02X],x1,x2,x3,x4);
  $  007:钥匙序号                 $    $       $    $  ANS002.BYTE012  $  HEX(x1);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:720 30 00 0F 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
