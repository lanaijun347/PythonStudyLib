
    车型ID：2406

    模拟：协议模拟-->2406

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:794 02 10 01 00 00 00 00 00       $~  ANS000:79C 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:794 02 3E 80 00 00 00 00 00       $!  ANS000:79C 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:794 03 22 F1 93 00 00 00 00       $%  ANS000:79C 03 22 F1 93 00 00 00 00
  $%  REQ001:794 03 22 F1 94 00 00 00 00       $%  ANS001:79C 03 22 F1 94 00 00 00 00
  $%  REQ002:794 03 22 F1 95 00 00 00 00       $%  ANS002:79C 03 22 F1 95 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1/100,(x1/10)%10,x1%10);
  $%  001:硬件日期:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@001d,x2,@001e,x3,@001f);
  $%  002:软件编号:        $%    $%  ANS001.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%.2d.%.2d],(x1*256+x2)/10000,((x1*256+x2)%10000)/100,(x1*256+x2)%100);
  $%  004:软件日期:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@001d,x2,@001e,x3,@001f);
  $%  005:修改次数:        $%    $%  ANS002.BYTE009  $%  y=x1;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:794 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
