
    车型ID：1b15

    模拟：协议模拟-->1b15

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:767 02 10 01 00 00 00 00 00       $~  ANS000:76F 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:767 02 3E 80 00 00 00 00 00       $!  ANS000:76F 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:767 04 18 00 00 FF 00 00 00       $#  ANS000:76F 04 18 00 00 FF 00 00 00

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

  $$  REQ000:767 03 14 00 FF 00 00 00 00       $$  ANS000:76F 03 14 00 FF 00 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:767 03 22 F1 93 00 00 00 00       $%  ANS000:76F 03 22 F1 93 00 00 00 00
  $%  REQ001:767 03 22 F1 94 00 00 00 00       $%  ANS001:76F 03 22 F1 94 00 00 00 00
  $%  REQ002:767 03 22 F1 95 00 00 00 00       $%  ANS002:76F 03 22 F1 95 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1/100,(x1/10)%10,x1%10);
  $%  001:硬件日期:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%02d/%02d/%02d],x1,x2,x3);
  $%  002:软件编号:        $%    $%  ANS001.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%.2d.%.2d],(x1*256+x2)/10000,((x1*256+x2)%10000)/100,(x1*256+x2)%100);
  $%  004:软件日期:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([%02d/%02d/%02d],x1,x2,x3);
  $%  005:修改次数:        $%    $%  ANS002.BYTE009  $%  y=x1;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:767 03 22 00 04 00 00 00 00       $  ANS000:76F 03 22 00 04 00 00 00 00
  $  REQ001:767 03 22 00 05 00 00 00 00       $  ANS001:76F 03 22 00 05 00 00 00 00

  $  000:座椅通风总档位数       $    $       $    $  ANS000.BYTE004  $  if(x1==0x00)y=@05cd;else if(x1==0x01)y=@055d;else y=@0440;
  $  001:座椅通风当前档位       $    $       $    $  ANS000.BYTE005  $  if(x1==0x00)y=@0005;else if(x1==0x01)y=@0295;else if(x1==0x02)y=@06ec;else if(x1==0x03)y=@0294;else y=@0440;
  $  002:座椅加热总档位数       $    $       $    $  ANS001.BYTE004  $  if(x1==0x00)y=@05cd;else if(x1==0x01)y=@055d;else y=@0440;
  $  003:座椅加热当前档位       $    $       $    $  ANS001.BYTE005  $  if(x1==0x00)y=@0005;else if(x1==0x01)y=@0295;else if(x1==0x02)y=@06ec;else if(x1==0x03)y=@0294;else y=@0440;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:767 30 01 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
