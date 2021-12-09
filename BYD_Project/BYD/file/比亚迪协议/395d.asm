
    车型ID：395d

    模拟：协议模拟-->395d

;******************************************************************************************************************************************************

    通讯线: $~03$~11$~125K

进入命令:

  $~  REQ000:720 02 10 01 00 00 00 00 00       $~  ANS000:720 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:720 02 3E 00 00 00 00 00 00       $!  ANS000:720 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

    通讯线: $~03$~11$~125K

进入命令:

  $~  REQ000:720 02 10 01 00 00 00 00 00       $~  ANS000:728 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:720 02 3E 00 00 00 00 00 00       $!  ANS000:728 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:720 04 18 00 00 FF 00 00 00       $#  ANS000:720 04 18 00 00 FF 00 00 00

  ANS000.BYTE02 控制故障码个数，从$#ANS000.BYTE3$#开始每$#3$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/10060000


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="1"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:720 03 14 00 FF 00 00 00 00       $$  ANS000:720 03 14 00 FF 00 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:720 03 22 00 01 00 00 00 00       $%  ANS000:720 03 22 00 01 00 00 00 00
  $%  REQ001:720 03 22 00 03 00 00 00 00       $%  ANS001:720 03 22 00 03 00 00 00 00
  $%  REQ002:720 03 22 00 02 00 00 00 00       $%  ANS002:720 03 22 00 02 00 00 00 00
  $%  REQ003:720 03 22 00 20 00 00 00 00       $%  ANS003:720 03 22 00 20 00 00 00 00

  $%  000:软件版本:          $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%02d.%02d.%02d],X1,X2,X3);
  $%  001:软件日期:          $%    $%  ANS000.BYTE007  $%  y=SPRINTF([2%.3d-%02d-%02d],X1,X2,X3);
  $%  002:硬件版本:          $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%02d.%02d.%02d],X1,X2,X3);
  $%  003:硬件日期:          $%    $%  ANS001.BYTE007  $%  y=SPRINTF([2%.3d-%02d-%02d],X1,X2,X3);
  $%  004:产品序列号:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%02x%02x%02x%02x%02x%02x],X1,X2,X3,X4,X5,X6);
  $%  005:VIN:               $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:720 03 22 00 0D 00 00 00 00       $  ANS000:720 03 22 00 0D 00 00 00 00

  $  000:内部供电状况             $    $       $    $  ANS000.BYTE004  $  if(x==0x00)y=@026c;else if(x==0xff)y=@026d;else y=@0076;
  $  001:读卡器是否失去通信       $    $       $    $  ANS000.BYTE005  $  if(x==0x00)y=@02e8;else if(x==0xff)y=@0371;else y=@0076;
  $  002:读卡器内部天线故障       $    $       $    $  ANS000.BYTE006  $  if(x==0x00)y=@0022;else if(x==0xff)y=@003a;else y=@0076;
  $  003:钥匙状态                 $    $       $    $  ANS000.BYTE007  $  if(x==3)y=@0261;else if(x==4)y=@0262;else if(x==6)y=@0263;else y=@0264;
  $  004:钥匙ID                   $    $       $    $  ANS000.BYTE008  $  y=SPRINTF([%02x%02x%02x%02x],X1,X2,X3,X4);
  $  005:钥匙序号                 $    $       $    $  ANS000.BYTE012  $  y=SPRINTF([%02x],X1);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:720 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
