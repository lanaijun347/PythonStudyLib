
    车型ID：0a81

    模拟：协议模拟-->0a81

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~758

进入命令:

  $~  REQ000:750 02 10 01 00 00 00 00 00       $~  ANS000:758 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:750 02 3E 00 00 00 00 00 00       $!  ANS000:758 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:750 03 22 F1 80 00 00 00 00       $%  ANS000:758 03 22 F1 80 00 00 00 00
  $%  REQ001:750 03 22 F1 93 00 00 00 00       $%  ANS001:758 03 22 F1 93 00 00 00 00
  $%  REQ002:750 03 22 F1 95 00 00 00 00       $%  ANS002:758 03 22 F1 95 00 00 00 00

  $%  000:驱动层软件版本:                   $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  001:ECU(电子控制器)硬件版本号:        $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  002:ECU(电子控制器)软件版本号:        $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:750 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
