
    车型ID：a129

    模拟：协议模拟-->a129

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:700 02 10 01 00 00 00 00 00       $~  ANS000:708 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:700 02 3E 80 00 00 00 00 00       $!  ANS000:708 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:700 03 22 00 01 00 00 00 00       $%  ANS000:708 03 22 00 01 00 00 00 00
  $%  REQ001:700 03 22 00 03 00 00 00 00       $%  ANS001:708 03 22 00 03 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1,x2,x3);
  $%  001:软件版本:        $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1,x2,x3);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:700 03 22 00 04 00 00 00 00       $  ANS000:708 03 22 00 04 00 00 00 00

  $  000:主动泄放状态       $    $       $    $  ANS000.BYTE004  $  if(x1==0x00)y=@01b8;else if(x1==0x01)y=@01cf;else if(x1==0x02)y=@01d0;else if(x1==0x03)y=@01d1;else y=@0076;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:700 30 01 04 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
