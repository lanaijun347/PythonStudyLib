
    车型ID：0b56

    模拟：协议模拟-->0b56

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~75E

进入命令:

  $~  REQ000:756 02 10 01 00 00 00 00 00       $~  ANS000:75E 02 10 01 00 00 00 00 00
  $~  REQ001:756 03 22 F1 94 00 00 00 00       $~  ANS001:75E 03 22 F1 94 00 00 00 00

空闲命令:

  $!  REQ000:756 02 3E 80 00 00 00 00 00       $!  ANS000:75E 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:756 03 22 F1 94 00 00 00 00       $%  ANS000:75E 03 22 F1 94 00 00 00 00
  $%  REQ001:756 03 22 F1 95 00 00 00 00       $%  ANS001:75E 03 22 F1 95 00 00 00 00
  $%  REQ002:756 03 22 F1 80 00 00 00 00       $%  ANS002:75E 03 22 F1 80 00 00 00 00

  $%  000:软件编号:            $%    $%  ANS000.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  001:软件版本:            $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%d.%.2d.%.2d],(x1*256+x2)/10000,((x1*256+x2)%10000)/100,(x1*256+x2)%100);
  $%  002:软件日期:            $%    $%  ANS001.BYTE006  $%  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@0197,x2,@0198,x3,@0199);
  $%  003:修改次数:            $%    $%  ANS001.BYTE009  $%  y=x;
  $%  004:Boot版本号:          $%    $%  ANS002.BYTE004  $%  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@0197,x2,@0198,x3,@0199);
  $%  005:Boot版本信息:        $%    $%  ANS002.BYTE007  $%  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@0197,x2,@0198,x3,@0199);
  $%  006:发布日期:            $%    $%  ANS002.BYTE010  $%  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@0197,x2,@0198,x3,@0199);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:756 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
