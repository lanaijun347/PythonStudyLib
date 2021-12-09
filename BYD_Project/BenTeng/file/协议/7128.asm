
    车型ID：7128

    模拟：协议模拟-->7128

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:722 02 10 01 00 00 00 00 00       $~  ANS000:72A 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:722 02 3E 00 00 00 00 00 00       $!  ANS000:72A 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:722 03 19 02 08 00 00 00 00       $#  ANS000:72A 03 19 02 08 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:722 04 14 FF FF FF 00 00 00       $$  ANS000:72A 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:722 03 22 F1 87 00 00 00 00       $%  ANS000:72A 03 22 F1 87 00 00 00 00
  $%  REQ001:722 03 22 F1 89 00 00 00 00       $%  ANS001:72A 03 22 F1 89 00 00 00 00
  $%  REQ002:722 03 22 F1 90 00 00 00 00       $%  ANS002:72A 03 22 F1 90 00 00 00 00
  $%  REQ003:722 03 22 F1 91 00 00 00 00       $%  ANS003:72A 03 22 F1 91 00 00 00 00
  $%  REQ004:722 03 22 F1 98 00 00 00 00       $%  ANS004:72A 03 22 F1 98 00 00 00 00
  $%  REQ005:722 03 22 F1 99 00 00 00 00       $%  ANS005:72A 03 22 F1 99 00 00 00 00
  $%  REQ006:722 03 22 F1 9D 00 00 00 00       $%  ANS006:72A 03 22 F1 9D 00 00 00 00
  $%  REQ007:722 03 22 F1 A1 00 00 00 00       $%  ANS007:72A 03 22 F1 A1 00 00 00 00
  $%  REQ008:722 03 22 F1 93 00 00 00 00       $%  ANS008:72A 03 22 F1 93 00 00 00 00
  $%  REQ009:722 03 22 F1 95 00 00 00 00       $%  ANS009:72A 03 22 F1 95 00 00 00 00

  $%  000:零件号:                                 $%    $%  ANS000.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  001:ECU(电子控制器)软件号:                  $%    $%  ANS001.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  002:车辆VIN:                                $%    $%  ANS002.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  003:ECU(电子控制器)硬件版本号:              $%    $%  ANS003.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  004:诊断仪序列号:                           $%    $%  ANS004.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  005:编程日期:                               $%    $%  ANS005.BYTE004  $%  y=SPRINTF([%02x%02x-%02x-%02x],x1,x2,x3,x4);
  $%  006:ECU(电子控制器)安装日期:                $%    $%  ANS006.BYTE004  $%  y=SPRINTF([%02x%02x-%02x-%02x],x1,x2,x3,x4);
  $%  007:系统配置:                               $%    $%  ANS007.BYTE004  $%  Y=HEX(X1,X2,X3);
  $%  008:供应商ECU(电子控制器)硬件版本号:        $%    $%  ANS008.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  009:供应商ECU(电子控制器)软件版本号:        $%    $%  ANS009.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:722 03 22 2A 00 00 00 00 00       $  ANS000:72A 03 22 2A 00 00 00 00 00
  $  REQ001:722 03 22 2A 01 00 00 00 00       $  ANS001:72A 03 22 2A 01 00 00 00 00
  $  REQ002:722 03 22 2A 02 00 00 00 00       $  ANS002:72A 03 22 2A 02 00 00 00 00
  $  REQ003:722 03 22 2A 03 00 00 00 00       $  ANS003:72A 03 22 2A 03 00 00 00 00
  $  REQ004:722 03 22 2A 04 00 00 00 00       $  ANS004:72A 03 22 2A 04 00 00 00 00
  $  REQ005:722 03 22 2A 05 00 00 00 00       $  ANS005:72A 03 22 2A 05 00 00 00 00
  $  REQ006:722 03 22 2A 06 00 00 00 00       $  ANS006:72A 03 22 2A 06 00 00 00 00
  $  REQ007:722 03 22 2A 0E 00 00 00 00       $  ANS007:72A 03 22 2A 0E 00 00 00 00

  $  000.GPS时间                       $    $             $    $  ANS000.BYTE004  $  Y=HEX(X1,X2,X3,X4,X5,X6);
  $  001.总里程                        $    $  km         $    $  ANS001.BYTE004  $  Y=(X1*16777216+X2*65536+X3*256+X4)*0.1;
  $  002.ECU(电子控制器)供电电压       $    $  V          $    $  ANS002.BYTE004  $  Y=X1*0.1;
  $  003.室外温度                      $    $  degC       $    $  ANS003.BYTE004  $  Y=X1*0.5-40;
  $  004.电源模式                      $    $             $    $  ANS004.BYTE004  $  if(X1==0) y=@0002;else if(X1==1) y=@09b3;else if(X1==4) y=@09b4;else if(X1==5) y=@007e;else if(X1==6) y=@09b5;else if(X1==7) y=@09b6;else if(X1==8) y=@09b7;else y=@0006;
  $  005.车速                          $    $  km/h       $    $  ANS005.BYTE004  $  Y=(X1*256+X2)*0.01;
  $  006.相机高度                      $    $  mm         $    $  ANS006.BYTE004  $  Y=(X1*256+X2)*1;
  $  007.上次校准状态                  $    $             $    $  ANS007.BYTE004  $  if(X1==0) y=@09ae;else if(X1==2) y=@09af;else if(X1==4) y=@09b0;else if(X1==5) y=@09b1;else if(X1==6) y=@09b2;else if(X1==14) y=@09ae;else Y=@0006;
  $  008.校准角度-卷                   $    $  Degree     $    $  ANS006.BYTE006  $  Y=(X1*256+X2)*0.001-31.51268;
  $  009.校准角度-螺距                 $    $  Degree     $    $  ANS006.BYTE008  $  Y=(X1*256+X2)*0.001-31.51268;
  $  010.校准角度-偏航                 $    $  Degree     $    $  ANS006.BYTE010  $  Y=(X1*256+X2)*0.001-31.51268;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:722 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
