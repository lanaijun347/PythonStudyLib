
    车型ID：5b1a

    模拟：协议模拟-->5b1a

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:774 02 10 01 00 00 00 00 00       $~  ANS000:794 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:774 02 3E 00 00 00 00 00 00       $!  ANS000:794 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:774 03 19 02 08 00 00 00 00       $#  ANS000:794 03 19 02 08 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:774 04 14 FF FF FF 00 00 00       $$  ANS000:794 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:774 03 22 F1 87 00 00 00 00       $%  ANS000:794 03 22 F1 87 00 00 00 00
  $%  REQ001:774 03 22 F1 89 00 00 00 00       $%  ANS001:794 03 22 F1 89 00 00 00 00
  $%  REQ002:774 03 22 F1 90 00 00 00 00       $%  ANS002:794 03 22 F1 90 00 00 00 00
  $%  REQ003:774 03 22 F1 91 00 00 00 00       $%  ANS003:794 03 22 F1 91 00 00 00 00
  $%  REQ004:774 03 22 F1 92 00 00 00 00       $%  ANS004:794 03 22 F1 92 00 00 00 00
  $%  REQ005:774 03 22 F1 93 00 00 00 00       $%  ANS005:794 03 22 F1 93 00 00 00 00
  $%  REQ006:774 03 22 F1 94 00 00 00 00       $%  ANS006:794 03 22 F1 94 00 00 00 00
  $%  REQ007:774 03 22 F1 95 00 00 00 00       $%  ANS007:794 03 22 F1 95 00 00 00 00
  $%  REQ008:774 03 22 F1 98 00 00 00 00       $%  ANS008:794 03 22 F1 98 00 00 00 00
  $%  REQ009:774 03 22 F1 99 00 00 00 00       $%  ANS009:794 03 22 F1 99 00 00 00 00
  $%  REQ010:774 03 22 F1 9D 00 00 00 00       $%  ANS010:794 03 22 F1 9D 00 00 00 00
  $%  REQ011:774 03 22 F1 A1 00 00 00 00       $%  ANS011:794 03 22 F1 A1 00 00 00 00
  $%  REQ012:774 03 22 F1 A5 00 00 00 00       $%  ANS012:794 03 22 F1 A5 00 00 00 00
  $%  REQ013:774 03 22 F1 A6 00 00 00 00       $%  ANS013:794 03 22 F1 A6 00 00 00 00

  $%  000:零件号:                                           $%    $%  ANS000.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  001:ECU刷新软件版本号:                                $%    $%  ANS001.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  002:车辆VIN:                                          $%    $%  ANS002.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  003:ECU硬件版本号:                                    $%    $%  ANS003.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  004:供应商ECU硬件号:                                  $%    $%  ANS004.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  005:供应商ECU硬件版本号:                              $%    $%  ANS005.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  006:供应商ECU软件号:                                  $%    $%  ANS006.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  007:供应商ECU软件版本号:                              $%    $%  ANS007.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  008:诊断仪序列号:                                     $%    $%  ANS008.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  009:编程日期:                                         $%    $%  ANS009.BYTE004  $%  Y=HEX(X1,X2,X3,X4);
  $%  010:ECU安装日期:                                      $%    $%  ANS010.BYTE004  $%  Y=HEX(X1,X2,X3,X4);
  $%  011:系统配置:                                         $%    $%  ANS011.BYTE004  $%  Y=HEX(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  012:车辆规格号:                                       $%    $%  ANS012.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18);
  $%  013:车辆在FCC（汽车制造商）生产线上的生产日期:        $%    $%  ANS013.BYTE004  $%  Y=HEX(X1,X2,X3,X4);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:774 03 22 60 C2 00 00 00 00       $  ANS000:794 03 22 60 C2 00 00 00 00
  $  REQ001:774 03 22 60 C3 00 00 00 00       $  ANS001:794 03 22 60 C3 00 00 00 00
  $  REQ002:774 03 22 60 C5 00 00 00 00       $  ANS002:794 03 22 60 C5 00 00 00 00
  $  REQ003:774 03 22 60 C6 00 00 00 00       $  ANS003:794 03 22 60 C6 00 00 00 00
  $  REQ004:774 03 22 60 C7 00 00 00 00       $  ANS004:794 03 22 60 C7 00 00 00 00
  $  REQ005:774 03 22 60 C8 00 00 00 00       $  ANS005:794 03 22 60 C8 00 00 00 00

  $  000.Apn1               $    $       $    $  ANS000.BYTE004  $  Y=ASCII(X1,X2,X3,X4);
  $  001.Apn2               $    $       $    $  ANS001.BYTE004  $  Y=ASCII(X1,X2,X3,X4);
  $  002.ICCID              $    $       $    $  ANS002.BYTE004  $  Y=ASCII(X1,X2,X3,X4);
  $  003.GPS状态            $    $       $    $  ANS003.BYTE004  $  if(X1==0) y=@01b3;else if(X1==1) y=@061c;else y=@0004;
  $  004.GPS搜星数量        $    $       $    $  ANS003.BYTE005  $  Y=X1;
  $  005.4G信号值           $    $       $    $  ANS004.BYTE005  $  Y=X1;
  $  006.4G工作状态         $    $       $    $  ANS004.BYTE004  $  if(X1==0) y=@0021;else if(X1==1) y=@01af;else y=@0004;
  $  007.信号值             $    $       $    $  ANS004.BYTE005  $  Y=X1;
  $  008.Wlan工作状态       $    $       $    $  ANS005.BYTE004  $  if(X1==0) y=@01b2;else if(X1==1) y=@003e;else y=@0004;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:774 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
