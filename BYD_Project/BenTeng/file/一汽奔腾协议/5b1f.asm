
    车型ID：5b1f

    模拟：协议模拟-->5b1f

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:7D0 02 10 01 00 00 00 00 00       $~  ANS000:7D8 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7D0 02 3E 00 00 00 00 00 00       $!  ANS000:7D8 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7D0 03 19 02 08 00 00 00 00       $#  ANS000:7D8 03 19 02 08 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7D0 04 14 FF FF FF 00 00 00       $$  ANS000:7D8 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7D0 03 22 F1 87 00 00 00 00       $%  ANS000:7D8 03 22 F1 87 00 00 00 00
  $%  REQ001:7D0 03 22 F1 89 00 00 00 00       $%  ANS001:7D8 03 22 F1 89 00 00 00 00
  $%  REQ002:7D0 03 22 F1 90 00 00 00 00       $%  ANS002:7D8 03 22 F1 90 00 00 00 00
  $%  REQ003:7D0 03 22 F1 91 00 00 00 00       $%  ANS003:7D8 03 22 F1 91 00 00 00 00
  $%  REQ004:7D0 03 22 F1 93 00 00 00 00       $%  ANS004:7D8 03 22 F1 93 00 00 00 00
  $%  REQ005:7D0 03 22 F1 95 00 00 00 00       $%  ANS005:7D8 03 22 F1 95 00 00 00 00
  $%  REQ006:7D0 03 22 F1 98 00 00 00 00       $%  ANS006:7D8 03 22 F1 98 00 00 00 00
  $%  REQ007:7D0 03 22 F1 9C 00 00 00 00       $%  ANS007:7D8 03 22 F1 9C 00 00 00 00
  $%  REQ008:7D0 03 22 F1 9D 00 00 00 00       $%  ANS008:7D8 03 22 F1 9D 00 00 00 00
  $%  REQ009:7D0 03 22 F1 A1 00 00 00 00       $%  ANS009:7D8 03 22 F1 A1 00 00 00 00
  $%  REQ010:7D0 03 22 F1 A5 00 00 00 00       $%  ANS010:7D8 03 22 F1 A5 00 00 00 00
  $%  REQ011:7D0 03 22 F1 A6 00 00 00 00       $%  ANS011:7D8 03 22 F1 A6 00 00 00 00
  $%  REQ012:7D0 03 22 F1 00 00 00 00 00       $%  ANS012:7D8 03 22 F1 00 00 00 00 00
  $%  REQ013:7D0 03 22 F1 80 00 00 00 00       $%  ANS013:7D8 03 22 F1 80 00 00 00 00
  $%  REQ014:7D0 03 22 F1 81 00 00 00 00       $%  ANS014:7D8 03 22 F1 81 00 00 00 00
  $%  REQ015:7D0 03 22 F1 83 00 00 00 00       $%  ANS015:7D8 03 22 F1 83 00 00 00 00
  $%  REQ016:7D0 03 22 F1 8C 00 00 00 00       $%  ANS016:7D8 03 22 F1 8C 00 00 00 00
  $%  REQ017:7D0 03 22 F1 92 00 00 00 00       $%  ANS017:7D8 03 22 F1 92 00 00 00 00
  $%  REQ018:7D0 03 22 F1 94 00 00 00 00       $%  ANS018:7D8 03 22 F1 94 00 00 00 00
  $%  REQ019:7D0 03 22 F1 A4 00 00 00 00       $%  ANS019:7D8 03 22 F1 A4 00 00 00 00

  $%  000:零件号:                                           $%    $%  ANS000.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  001:ECU软件号:                                        $%    $%  ANS001.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  002:车辆VIN:                                          $%    $%  ANS002.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  003:ECU硬件版本号:                                    $%    $%  ANS003.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  004:供应商ECU硬件版本号:                              $%    $%  ANS004.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  005:供应商ECU软件版本号:                              $%    $%  ANS005.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  006:诊断仪序列号:                                     $%    $%  ANS006.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  007:标定软件版本号:                                   $%    $%  ANS007.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  008:ECU安装日期:                                      $%    $%  ANS008.BYTE004  $%  Y=HEX(X1,X2,X3,X4);
  $%  009:系统配置:                                         $%    $%  ANS009.BYTE004  $%  Y=HEX(X1,X2,X3);
  $%  010:车辆规格号:                                       $%    $%  ANS010.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18);
  $%  011:车辆在FCC（汽车制造商）生产线上的生产日期:        $%    $%  ANS011.BYTE004  $%  Y=HEX(X1,X2,X3,X4);
  $%  012:车辆模式:                                         $%    $%  ANS012.BYTE004  $%  Y=HEX(X1);
  $%  013:ECU刷新软件版本号:                                $%    $%  ANS013.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  014:ECU应用软件版本号:                                $%    $%  ANS014.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  015:供应商ECU刷新软件版本号:                          $%    $%  ANS015.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12);
  $%  016:ECU序列号:                                        $%    $%  ANS016.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12);
  $%  017:供应商ECU硬件号:                                  $%    $%  ANS017.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  018:供应商ECU软件号:                                  $%    $%  ANS018.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  019:供应商ECU标定软件版本号:                          $%    $%  ANS019.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7D0 03 22 04 80 00 00 00 00       $  ANS000:7D8 03 22 04 80 00 00 00 00
  $  REQ001:7D0 03 22 04 81 00 00 00 00       $  ANS001:7D8 03 22 04 81 00 00 00 00
  $  REQ002:7D0 03 22 04 82 00 00 00 00       $  ANS002:7D8 03 22 04 82 00 00 00 00
  $  REQ003:7D0 03 22 04 83 00 00 00 00       $  ANS003:7D8 03 22 04 83 00 00 00 00
  $  REQ004:7D0 03 22 04 84 00 00 00 00       $  ANS004:7D8 03 22 04 84 00 00 00 00
  $  REQ005:7D0 03 22 04 85 00 00 00 00       $  ANS005:7D8 03 22 04 85 00 00 00 00
  $  REQ006:7D0 03 22 04 86 00 00 00 00       $  ANS006:7D8 03 22 04 86 00 00 00 00
  $  REQ007:7D0 03 22 04 87 00 00 00 00       $  ANS007:7D8 03 22 04 87 00 00 00 00
  $  REQ008:7D0 03 22 04 88 00 00 00 00       $  ANS008:7D8 03 22 04 88 00 00 00 00
  $  REQ009:7D0 03 22 04 89 00 00 00 00       $  ANS009:7D8 03 22 04 89 00 00 00 00

  $  000.终端供应状态                             $    $          $    $  ANS000.BYTE004  $  if(X1==0) y=@0014;else if(X1==1) y=@0015;else y=@0004;
  $  001.电源电压                                 $    $  V       $    $  ANS001.BYTE004  $  Y=X1*0.05;
  $  002.霍尔传感器1角度                          $    $  deg     $    $  ANS002.BYTE004  $  Y=(X1*256+X2)*0.022;
  $  003.霍尔传感器2电压                          $    $  deg     $    $  ANS003.BYTE004  $  Y=(X1*256+X2)*0.022;
  $  004.自动换挡状态                             $    $          $    $  ANS004.BYTE004  $  if(X1==0) y=@0cbc;else if(X1==1) y=@0024;else if(X1==2) y=@0024;else if(X1==4) y=@0cbd;else y=@0004;
  $  005.手动换挡状态                             $    $          $    $  ANS005.BYTE004  $  if(X1==0) y=@0cbe;else if(X1==1) y=@0024;else if(X1==2) y=@0024;else if(X1==3||X1==4) y=@0cbf;else y=@0004;
  $  006.SKA解锁按钮状态                          $    $          $    $  ANS006.BYTE004  $  if(X1==0) y=@00ab;else if(X1==1) y=@00ac;else if(X1==3) y=@0024;else y=@0004;
  $  007.TCU(自动变速箱控制器)换挡杆位置          $    $          $    $  ANS007.BYTE004  $  if(X1==0) y=@0018;else if(X1==1) y=@0019;else if(X1==2) y=@001a;else if(X1==3) y=@001b;else if(X1==4) y=@001c;else if(X1==5) y=@001d;else if(X1==7) y=@0089;else if(X1==8) y=@001f;else y=@0004;
  $  008.EGSM(电子换挡器)换挡杆位置               $    $          $    $  ANS008.BYTE004  $  if(X1==0) y=@0c70;else if(X1==1) y=@0308;else if(X1==2) y=@03d0;else if(X1==3) y=@0309;else if(X1==4) y=@03d1;else if(X1==5) y=@001d;else if(X1==7) y=@0004;else y=@0004;
  $  009.EGSM(电子换挡器)位于自动或手动位置       $    $          $    $  ANS009.BYTE004  $  if(X1==0) y=@0c71;else if(X1==1) y=@0c72;else if(X1==3) y=@0024;else y=@0004;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7D0 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
