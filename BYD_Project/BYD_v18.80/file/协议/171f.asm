
    车型ID：171f

    模拟：协议模拟-->171f

;******************************************************************************************************************************************************

    通讯线: $~03$~11$~125K$~7AC

进入命令:

  $~  REQ000:7A4 02 10 01 00 00 00 00 00       $~  ANS000:7AC 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7A4 02 3E 80 00 00 00 00 00       $!  ANS000:7AC 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7A4 03 22 00 01 00 00 00 00       $%  ANS000:7AC 03 22 00 01 00 00 00 00
  $%  REQ001:7A4 03 22 01 00 00 00 00 00       $%  ANS001:7AC 03 22 01 00 00 00 00 00

  $%  000:软件版本:            $%    $%  ANS000.BYTE004  $%  y=x1*0.1;
  $%  001:硬件版本:            $%    $%  ANS000.BYTE005  $%  y=x1*0.1;
  $%  002:生产日期:            $%    $%  ANS000.BYTE007  $%  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  003:重复编程次数:        $%    $%  ANS001.BYTE004  $%  y=x1*256+x2;
  $%  004:最大编程次数:        $%    $%  ANS001.BYTE006  $%  y=x1*256+x2;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7A4 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
