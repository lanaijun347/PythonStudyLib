
    车型ID：7121

    模拟：协议模拟-->7121

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:7A2 02 10 01 00 00 00 00 00       $~  ANS000:7AA 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7A2 02 3E 00 00 00 00 00 00       $!  ANS000:7AA 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7A2 03 19 02 08 00 00 00 00       $#  ANS000:7AA 03 19 02 08 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7A2 04 14 FF FF FF 00 00 00       $$  ANS000:7AA 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7A2 03 22 F1 87 00 00 00 00       $%  ANS000:7AA 03 22 F1 87 00 00 00 00
  $%  REQ001:7A2 03 22 F1 89 00 00 00 00       $%  ANS001:7AA 03 22 F1 89 00 00 00 00
  $%  REQ002:7A2 03 22 F1 90 00 00 00 00       $%  ANS002:7AA 03 22 F1 90 00 00 00 00
  $%  REQ003:7A2 03 22 F1 91 00 00 00 00       $%  ANS003:7AA 03 22 F1 91 00 00 00 00
  $%  REQ004:7A2 03 22 F1 98 00 00 00 00       $%  ANS004:7AA 03 22 F1 98 00 00 00 00
  $%  REQ005:7A2 03 22 F1 99 00 00 00 00       $%  ANS005:7AA 03 22 F1 99 00 00 00 00
  $%  REQ006:7A2 03 22 F1 9D 00 00 00 00       $%  ANS006:7AA 03 22 F1 9D 00 00 00 00
  $%  REQ007:7A2 03 22 F1 A1 00 00 00 00       $%  ANS007:7AA 03 22 F1 A1 00 00 00 00
  $%  REQ008:7A2 03 22 F1 83 00 00 00 00       $%  ANS008:7AA 03 22 F1 83 00 00 00 00
  $%  REQ009:7A2 03 22 F1 8C 00 00 00 00       $%  ANS009:7AA 03 22 F1 8C 00 00 00 00
  $%  REQ010:7A2 03 22 F1 93 00 00 00 00       $%  ANS010:7AA 03 22 F1 93 00 00 00 00
  $%  REQ011:7A2 03 22 F1 95 00 00 00 00       $%  ANS011:7AA 03 22 F1 95 00 00 00 00

  $%  000:零件号:                                     $%    $%  ANS000.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  001:ECU(电子控制器)软件版本号:                  $%    $%  ANS001.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  002:车辆VIN:                                    $%    $%  ANS002.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  003:ECU(电子控制器)硬件版本号:                  $%    $%  ANS003.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  004:诊断仪序列号:                               $%    $%  ANS004.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  005:编程日期:                                   $%    $%  ANS005.BYTE004  $%  y=SPRINTF([%02x%02x-%02x-%02x],x1,x2,x3,x4);
  $%  006:ECU(电子控制器)安装日期:                    $%    $%  ANS006.BYTE004  $%  y=SPRINTF([%02x%02x-%02x-%02x],x1,x2,x3,x4);
  $%  007:系统配置:                                   $%    $%  ANS007.BYTE004  $%  Y=HEX(X1,X2,X3,X4);
  $%  008:供应商ECU(电子控制器)刷新软件版本号:        $%    $%  ANS008.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12);
  $%  009:ECU(电子控制器)序列号:                      $%    $%  ANS009.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12);
  $%  010:供应商ECU(电子控制器)硬件版本号:            $%    $%  ANS010.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  011:供应商ECU(电子控制器)软件版本号:            $%    $%  ANS011.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7A2 03 22 18 00 00 00 00 00       $  ANS000:7AA 03 22 18 00 00 00 00 00
  $  REQ001:7A2 03 22 18 01 00 00 00 00       $  ANS001:7AA 03 22 18 01 00 00 00 00
  $  REQ002:7A2 03 22 18 81 00 00 00 00       $  ANS002:7AA 03 22 18 81 00 00 00 00
  $  REQ003:7A2 03 22 18 83 00 00 00 00       $  ANS003:7AA 03 22 18 83 00 00 00 00
  $  REQ004:7A2 03 22 18 84 00 00 00 00       $  ANS004:7AA 03 22 18 84 00 00 00 00
  $  REQ005:7A2 03 22 18 86 00 00 00 00       $  ANS005:7AA 03 22 18 86 00 00 00 00
  $  REQ006:7A2 03 22 18 90 00 00 00 00       $  ANS006:7AA 03 22 18 90 00 00 00 00

  $  000.车速                                 $    $  km/h     $    $  ANS000.BYTE004  $  Y=(X1*256+X2)*0.1;
  $  001.里程                                 $    $  km       $    $  ANS001.BYTE004  $  Y=(X1*16777216+X2*65536+X3*256+X4)*0.1;
  $  002.ECU(电子控制器)供电电压              $    $  V        $    $  ANS002.BYTE004  $  Y=X1*0.11096;
  $  003.HCU(整车控制器)_EV(电动) Ready       $    $           $    $  ANS003.BYTE004  $  Y=HEX(X1);
  $  004.转向角                               $    $  deg      $    $  ANS004.BYTE004  $  if(x1<0x80) y=(x1*256+x2)*0.04375;else y=(x1*256+x2-65535)*0.04375;
  $  005.SAS(转角传感器)角速度                $    $  deg      $    $  ANS005.BYTE004  $  if(x1<0x80) y=(x1*256+x2)*0.04375;else y=(x1*256+x2-65535)*0.04375;
  $  006.SAS(转角传感器)标定状态              $    $           $    $  ANS006.BYTE004  $  if(X1==0) Y=@0451;else if(X1==1) Y=@099f;else Y=@0006;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7A2 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
