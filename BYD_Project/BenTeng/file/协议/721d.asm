
    车型ID：721d

    模拟：协议模拟-->721d

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:780 02 10 01 00 00 00 00 00       $~  ANS000:788 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:780 02 3E 00 00 00 00 00 00       $!  ANS000:788 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:780 03 19 02 08 00 00 00 00       $#  ANS000:788 03 19 02 08 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:780 04 14 FF FF FF 00 00 00       $$  ANS000:788 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:780 03 22 F1 87 00 00 00 00       $%  ANS000:788 03 22 F1 87 00 00 00 00
  $%  REQ001:780 03 22 F1 89 00 00 00 00       $%  ANS001:788 03 22 F1 89 00 00 00 00
  $%  REQ002:780 03 22 F1 90 00 00 00 00       $%  ANS002:788 03 22 F1 90 00 00 00 00
  $%  REQ003:780 03 22 F1 91 00 00 00 00       $%  ANS003:788 03 22 F1 91 00 00 00 00
  $%  REQ004:780 03 22 F1 93 00 00 00 00       $%  ANS004:788 03 22 F1 93 00 00 00 00
  $%  REQ005:780 03 22 F1 95 00 00 00 00       $%  ANS005:788 03 22 F1 95 00 00 00 00
  $%  REQ006:780 03 22 F1 98 00 00 00 00       $%  ANS006:788 03 22 F1 98 00 00 00 00
  $%  REQ007:780 03 22 F1 9D 00 00 00 00       $%  ANS007:788 03 22 F1 9D 00 00 00 00
  $%  REQ008:780 03 22 F1 A1 00 00 00 00       $%  ANS008:788 03 22 F1 A1 00 00 00 00
  $%  REQ009:780 03 22 F1 A5 00 00 00 00       $%  ANS009:788 03 22 F1 A5 00 00 00 00
  $%  REQ010:780 03 22 F1 A6 00 00 00 00       $%  ANS010:788 03 22 F1 A6 00 00 00 00

  $%  000:零件号:                                 $%    $%  ANS000.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  001:ECU(电子控制器)软件版本号:              $%    $%  ANS001.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  002:车辆VIN:                                $%    $%  ANS002.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  003:ECU(电子控制器)硬件版本号:              $%    $%  ANS003.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  004:供应商ECU(电子控制器)硬件版本号:        $%    $%  ANS004.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  005:供应商ECU(电子控制器)软件版本号:        $%    $%  ANS005.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  006:诊断仪序列号:                           $%    $%  ANS006.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  007:ECU(电子控制器)安装日期:                $%    $%  ANS007.BYTE004  $%  y=SPRINTF([%02x%02x-%02x-%02x],x1,x2,x3,x4);
  $%  008:系统配置:                               $%    $%  ANS008.BYTE004  $%  Y=HEX(X1,X2,X3,X4,X5,X6,X7,X8);
  $%  009:车辆规格号:                             $%    $%  ANS009.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18);
  $%  010:车辆生产日期:                           $%    $%  ANS010.BYTE004  $%  y=SPRINTF([%02x%02x-%02x-%02x],x1,x2,x3,x4);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:780 03 22 01 02 00 00 00 00       $  ANS000:788 03 22 01 02 00 00 00 00
  $  REQ001:780 03 22 01 01 00 00 00 00       $  ANS001:788 03 22 01 01 00 00 00 00
  $  REQ002:780 03 22 01 8A 00 00 00 00       $  ANS002:788 03 22 01 8A 00 00 00 00
  $  REQ003:780 03 22 01 8B 00 00 00 00       $  ANS003:788 03 22 01 8B 00 00 00 00

  $  000.电池电压                    $    $  V      $    $  ANS000.BYTE004  $  Y=(X1*256+X2)*0.001;
  $  001.里程                        $    $  km     $    $  ANS001.BYTE004  $  Y=(X4*16777216+X3*65536+X2*256+X1)*0.1;
  $  002.电池SOC(电池剩余电量)       $    $  %      $    $  ANS002.BYTE004  $  Y=X1*1;
  $  003.SOC(电池剩余电量)状态       $    $         $    $  ANS003.BYTE004  $  if(X1==0) Y=@0bc4;else if(X1==1) Y=@0bc5;else if(X1==2) Y=@0bc6;else if(X1==3) Y=@0006;else Y=@0006;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:780 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
