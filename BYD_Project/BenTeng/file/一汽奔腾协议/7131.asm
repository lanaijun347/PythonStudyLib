
    车型ID：7131

    模拟：协议模拟-->7131

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:773 02 10 01 00 00 00 00 00       $~  ANS000:77B 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:773 02 3E 00 00 00 00 00 00       $!  ANS000:77B 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:773 03 19 02 08 00 00 00 00       $#  ANS000:77B 03 19 02 08 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:773 04 14 FF FF FF 00 00 00       $$  ANS000:77B 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:773 03 22 F1 87 00 00 00 00       $%  ANS000:77B 03 22 F1 87 00 00 00 00
  $%  REQ001:773 03 22 F1 89 00 00 00 00       $%  ANS001:77B 03 22 F1 89 00 00 00 00
  $%  REQ002:773 03 22 F1 90 00 00 00 00       $%  ANS002:77B 03 22 F1 90 00 00 00 00
  $%  REQ003:773 03 22 F1 91 00 00 00 00       $%  ANS003:77B 03 22 F1 91 00 00 00 00
  $%  REQ004:773 03 22 F1 93 00 00 00 00       $%  ANS004:77B 03 22 F1 93 00 00 00 00
  $%  REQ005:773 03 22 F1 95 00 00 00 00       $%  ANS005:77B 03 22 F1 95 00 00 00 00
  $%  REQ006:773 03 22 F1 98 00 00 00 00       $%  ANS006:77B 03 22 F1 98 00 00 00 00
  $%  REQ007:773 03 22 F1 99 00 00 00 00       $%  ANS007:77B 03 22 F1 99 00 00 00 00
  $%  REQ008:773 03 22 F1 9D 00 00 00 00       $%  ANS008:77B 03 22 F1 9D 00 00 00 00
  $%  REQ009:773 03 22 F1 A5 00 00 00 00       $%  ANS009:77B 03 22 F1 A5 00 00 00 00
  $%  REQ010:773 03 22 F1 A6 00 00 00 00       $%  ANS010:77B 03 22 F1 A6 00 00 00 00
  $%  REQ011:773 03 22 F1 A1 00 00 00 00       $%  ANS011:77B 03 22 F1 A1 00 00 00 00
  $%  REQ012:773 03 22 F1 92 00 00 00 00       $%  ANS012:77B 03 22 F1 92 00 00 00 00
  $%  REQ013:773 03 22 F1 94 00 00 00 00       $%  ANS013:77B 03 22 F1 94 00 00 00 00
  $%  REQ014:773 03 22 F1 8C 00 00 00 00       $%  ANS014:77B 03 22 F1 8C 00 00 00 00

  $%  000:零件号:                                 $%    $%  ANS000.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  001:ECU(电子控制器)软件版本号:              $%    $%  ANS001.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  002:车辆VIN:                                $%    $%  ANS002.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  003:ECU(电子控制器)硬件版本号:              $%    $%  ANS003.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  004:供应商ECU(电子控制器)硬件版本号:        $%    $%  ANS004.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  005:供应商ECU(电子控制器)软件版本号:        $%    $%  ANS005.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  006:诊断仪序列号:                           $%    $%  ANS006.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  007:编程日期:                               $%    $%  ANS007.BYTE004  $%  y=SPRINTF([%02x%02x-%02x-%02x],x1,x2,x3,x4);
  $%  008:ECU(电子控制器)安装日期:                $%    $%  ANS008.BYTE004  $%  y=SPRINTF([%02x%02x-%02x-%02x],x1,x2,x3,x4);
  $%  009:车辆规格号:                             $%    $%  ANS009.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18);
  $%  010:车辆生产日期:                           $%    $%  ANS010.BYTE004  $%  y=SPRINTF([%02x%02x-%02x-%02x],x1,x2,x3,x4);
  $%  011:系统配置:                               $%    $%  ANS011.BYTE004  $%  Y=HEX(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  012:供应商ECU(电子控制器)硬件号:            $%    $%  ANS012.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  013:供应商ECU(电子控制器)软件号:            $%    $%  ANS013.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  014:ECU(电子控制器)序列号:                  $%    $%  ANS014.BYTE004  $%  Y=HEX(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:773 03 22 02 20 00 00 00 00       $  ANS000:77B 03 22 02 20 00 00 00 00
  $  REQ001:773 03 22 02 21 00 00 00 00       $  ANS001:77B 03 22 02 21 00 00 00 00
  $  REQ002:773 03 22 02 22 00 00 00 00       $  ANS002:77B 03 22 02 22 00 00 00 00
  $  REQ003:773 03 22 02 24 00 00 00 00       $  ANS003:77B 03 22 02 24 00 00 00 00
  $  REQ004:773 03 22 02 25 00 00 00 00       $  ANS004:77B 03 22 02 25 00 00 00 00
  $  REQ005:773 03 22 02 26 00 00 00 00       $  ANS005:77B 03 22 02 26 00 00 00 00
  $  REQ006:773 03 22 60 C0 00 00 00 00       $  ANS006:77B 03 22 60 C0 00 00 00 00
  $  REQ007:773 03 22 60 C1 00 00 00 00       $  ANS007:77B 03 22 60 C1 00 00 00 00
  $  REQ008:773 03 22 60 C2 00 00 00 00       $  ANS008:77B 03 22 60 C2 00 00 00 00
  $  REQ009:773 03 22 60 C3 00 00 00 00       $  ANS009:77B 03 22 60 C3 00 00 00 00
  $  REQ010:773 03 22 60 C4 00 00 00 00       $  ANS010:77B 03 22 60 C4 00 00 00 00

  $  000.Phy识别编号                           $    $       $    $  ANS000.BYTE004  $  Y=HEX(X1,X2,X3,X4,X5,X6,X7,X8,X9);
  $  001.连接状态/极性检测                     $    $       $    $  ANS001.BYTE004  $  Y=HEX(X1,X2);
  $  002.步骤中的SQI值                         $    $       $    $  ANS002.BYTE004  $  Y=HEX(X1);
  $  003.SQI                                   $    $       $    $  ANS003.BYTE004  $  Y=HEX(X1,X2);
  $  004.自上一次重置后phy发送数据包数量       $    $       $    $  ANS004.BYTE004  $  Y=HEX(X1,X2,X3,X4);
  $  005.自上一次重置后phy接收数据包数量       $    $       $    $  ANS005.BYTE004  $  Y=HEX(X1,X2,X3,X4);
  $  006.ICCID                                 $    $       $    $  ANS006.BYTE004  $  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20);
  $  007.IMSI                                  $    $       $    $  ANS007.BYTE004  $  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $  008.IMEI                                  $    $       $    $  ANS008.BYTE004  $  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $  009.MSISDN                                $    $       $    $  ANS009.BYTE004  $  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11);
  $  010.Pack_Bar_Code（包装条形码）           $    $       $    $  ANS010.BYTE004  $  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:773 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
