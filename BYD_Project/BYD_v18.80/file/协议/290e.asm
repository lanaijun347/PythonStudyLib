
    车型ID：290e

    模拟：协议模拟-->290e

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~77C

进入命令:

  $~  REQ000:774 02 10 01 00 00 00 00 00       $~  ANS000:77C 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:774 02 3E 80 00 00 00 00 00       $!  ANS000:77C 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:774 03 22 F1 94 00 00 00 00       $%  ANS000:77C 03 22 F1 94 00 00 00 00
  $%  REQ001:774 03 22 F1 95 00 00 00 00       $%  ANS001:77C 03 22 F1 95 00 00 00 00
  $%  REQ002:774 03 22 F1 93 00 00 00 00       $%  ANS002:77C 03 22 F1 93 00 00 00 00
  $%  REQ003:774 03 22 F1 80 00 00 00 00       $%  ANS003:77C 03 22 F1 80 00 00 00 00

  $%  000:软件编号:          $%    $%  ANS000.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  001:软件版本:          $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%d.%.2d.%.2d],(x1*256+x2)/10000,((x1*256+x2)%10000)/100,(x1*256+x2)%100);
  $%  002:软件日期:          $%    $%  ANS001.BYTE006  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  003:修改次数:          $%    $%  ANS001.BYTE009  $%  y=x1;
  $%  004:硬件版本:          $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1/100,(x1/10)%10,x1%10);
  $%  005:硬件日期:          $%    $%  ANS002.BYTE005  $%  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  006:硬件版本_1:        $%    $%  ANS003.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1/100,(x1/10)%10,x1%10);
  $%  007:硬件日期_1:        $%    $%  ANS003.BYTE005  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:774 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
