
    车型ID：0b3d

    模拟：协议模拟-->0b3d

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:756 02 10 01 00 00 00 00 00       $~  ANS000:75E 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:756 02 3E 80 00 00 00 00 00       $!  ANS000:75E 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:756 03 22 00 01 00 00 00 00       $%  ANS000:75E 03 22 00 01 00 00 00 00

  $%  000:软件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d],x1/10,x1%10);
  $%  001:硬件版本:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%d.%d],x1/10,x1%10);
  $%  002:硬件日期:        $%    $%  ANS000.BYTE007  $%  y=SPRINTF([%d%s%d%s%d%s],x1,@001d,x2,@001e,x3,@001f);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:756 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
