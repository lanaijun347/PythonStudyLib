
    车型ID：181e

    模拟：协议模拟-->181e

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7AC

进入命令:

  $~  REQ000:7A4 02 10 01 00 00 00 00 00       $~  ANS000:7AC 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7A4 02 3E 80 00 00 00 00 00       $!  ANS000:7AC 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7A4 03 22 00 01 00 00 00 00       $%  ANS000:7AC 03 22 00 01 00 00 00 00

  $%  000:软件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d],x1/10,x1%10);
  $%  001:硬件版本:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%d.%d],x1/10,x1%10);
  $%  002:生产日期:        $%    $%  ANS000.BYTE007  $%  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7A4 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
