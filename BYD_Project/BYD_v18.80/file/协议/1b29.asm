
    车型ID：1b29

    模拟：协议模拟-->1b29

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7D9

进入命令:

  $~  REQ000:7D1 02 10 01 00 00 00 00 00       $~  ANS000:7D9 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7D1 02 3E 80 00 00 00 00 00       $!  ANS000:7D9 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7D1 03 22 00 01 00 00 00 00       $%  ANS000:7D9 03 22 00 01 00 00 00 00
  $%  REQ001:7D1 03 22 00 04 00 00 00 00       $%  ANS001:7D9 03 22 00 04 00 00 00 00

  $%  000:DZ60软件版本:        $%    $%  ANS000.BYTE004  $%  y=x1*0.1;
  $%  001:DZ60硬件版本:        $%    $%  ANS000.BYTE005  $%  y=x1*0.1;
  $%  002:DZ60软件日期:        $%    $%  ANS000.BYTE007  $%  y=SPRINTF([%d/%d/%d],x1,x2,x3);
  $%  003:STK软件版本:         $%    $%  ANS001.BYTE004  $%  y=x1*0.1;
  $%  004:STK硬件版本:         $%    $%  ANS001.BYTE005  $%  y=x1*0.1;
  $%  005:STK软件日期:         $%    $%  ANS001.BYTE007  $%  y=SPRINTF([%d/%d/%d],x1,x2,x3);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7D1 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
