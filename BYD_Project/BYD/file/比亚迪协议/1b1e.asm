
    车型ID：1b1e

    模拟：协议模拟-->1b1e

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:741 02 10 01 00 00 00 00 00       $~  ANS000:749 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:741 02 3E 80 00 00 00 00 00       $!  ANS000:749 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:741 03 22 00 01 00 00 00 00       $%  ANS000:749 03 22 00 01 00 00 00 00

  $%  000:软件版本:        $%    $%  ANS000.BYTE004  $%  y=x1*0.1;
  $%  001:硬件版本:        $%    $%  ANS000.BYTE005  $%  y=x1*0.1;
  $%  002:生产日期:        $%    $%  ANS000.BYTE007  $%  y=SPRINTF([%02d/%02d/%02d],x1,x2,x3);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:741 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
