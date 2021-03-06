
    车型ID：7219

    模拟：协议模拟-->7219

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
  $%  REQ004:7D0 03 22 F1 98 00 00 00 00       $%  ANS004:7D8 03 22 F1 98 00 00 00 00
  $%  REQ005:7D0 03 22 F1 9D 00 00 00 00       $%  ANS005:7D8 03 22 F1 9D 00 00 00 00
  $%  REQ006:7D0 03 22 F1 9C 00 00 00 00       $%  ANS006:7D8 03 22 F1 9C 00 00 00 00
  $%  REQ007:7D0 03 22 F1 A6 00 00 00 00       $%  ANS007:7D8 03 22 F1 A6 00 00 00 00
  $%  REQ008:7D0 03 22 F1 00 00 00 00 00       $%  ANS008:7D8 03 22 F1 00 00 00 00 00
  $%  REQ009:7D0 03 22 F1 80 00 00 00 00       $%  ANS009:7D8 03 22 F1 80 00 00 00 00
  $%  REQ010:7D0 03 22 F1 81 00 00 00 00       $%  ANS010:7D8 03 22 F1 81 00 00 00 00
  $%  REQ011:7D0 03 22 F1 99 00 00 00 00       $%  ANS011:7D8 03 22 F1 99 00 00 00 00

  $%  000:零件号:                               $%    $%  ANS000.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  001:ECU(电子控制器)软件号:                $%    $%  ANS001.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  002:车辆VIN:                              $%    $%  ANS002.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  003:ECU(电子控制器)硬件版本号:            $%    $%  ANS003.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  004:诊断仪序列号:                         $%    $%  ANS004.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  005:ECU(电子控制器)安装日期:              $%    $%  ANS005.BYTE004  $%  y=SPRINTF([%02x%02x-%02x-%02x],x1,x2,x3,x4);
  $%  006:标定软件版本号:                       $%    $%  ANS006.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  007:车辆在生产线上的生产日期:             $%    $%  ANS007.BYTE004  $%  y=SPRINTF([%02x%02x-%02x-%02x],x1,x2,x3,x4);
  $%  008:车辆模式:                             $%    $%  ANS008.BYTE004  $%  Y=HEX(X1);
  $%  009:ECU(电子控制器)刷新软件版本号:        $%    $%  ANS009.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  010:ECU(电子控制器)应用软件版本号:        $%    $%  ANS010.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  011:重新编程日期:                         $%    $%  ANS011.BYTE004  $%  y=SPRINTF([%02x%02x-%02x-%02x],x1,x2,x3,x4);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7D0 03 22 04 80 00 00 00 00       $  ANS000:7D8 03 22 04 80 00 00 00 00
  $  REQ001:7D0 03 22 04 81 00 00 00 00       $  ANS001:7D8 03 22 04 81 00 00 00 00
  $  REQ002:7D0 03 22 04 8A 00 00 00 00       $  ANS002:7D8 03 22 04 8A 00 00 00 00
  $  REQ003:7D0 03 22 04 89 00 00 00 00       $  ANS003:7D8 03 22 04 89 00 00 00 00
  $  REQ004:7D0 03 22 04 88 00 00 00 00       $  ANS004:7D8 03 22 04 88 00 00 00 00
  $  REQ005:7D0 03 22 04 8B 00 00 00 00       $  ANS005:7D8 03 22 04 8B 00 00 00 00
  $  REQ006:7D0 03 22 04 85 00 00 00 00       $  ANS006:7D8 03 22 04 85 00 00 00 00
  $  REQ007:7D0 03 22 04 82 00 00 00 00       $  ANS007:7D8 03 22 04 82 00 00 00 00
  $  REQ008:7D0 03 22 04 83 00 00 00 00       $  ANS008:7D8 03 22 04 83 00 00 00 00
  $  REQ009:7D0 03 22 04 84 00 00 00 00       $  ANS009:7D8 03 22 04 84 00 00 00 00
  $  REQ010:7D0 03 22 04 8C 00 00 00 00       $  ANS010:7D8 03 22 04 8C 00 00 00 00

  $  000.KL15供电状态                        $    $          $    $  ANS000.BYTE004  $  if(X1==0) y=@0002;else if(X1==1) y=@0001;else Y=@0006;
  $  001.电源电压                            $    $  V       $    $  ANS001.BYTE004  $  Y=(X1*256+X2)*0.005;
  $  002.手动按钮状态                        $    $          $    $  ANS002.BYTE004  $  if(X1==0) y=@007f;else if(X1==1) y=@0080;else if(X1==3) y=@02e4;else Y=@0006;
  $  003.驻车按钮状态                        $    $          $    $  ANS003.BYTE004  $  if(X1==0) y=@007f;else if(X1==1) y=@0080;else if(X1==3) y=@02e4;else Y=@0006;
  $  004.解锁按钮状态                        $    $          $    $  ANS004.BYTE004  $  if(X1==0) y=@007f;else if(X1==1) y=@0080;else if(X1==3) y=@02e4;else Y=@0006;
  $  005.TCU(自动变速箱控制器)档位位置       $    $          $    $  ANS005.BYTE004  $  if(X1==0) y=@0404;else if(X1==1) y=@00de;else if(X1==2) y=@0405;else if(X1==3) y=@00df;else if(X1==4) y=@0406;else if(X1==7) y=@02e4;else Y=@0006;
  $  006.EGSM(电子换挡器)档位位置            $    $          $    $  ANS006.BYTE004  $  if(X1==0) y=@0404;else if(X1==1) y=@00de;else if(X1==2) y=@0405;else if(X1==3) y=@00df;else if(X1==4) y=@0406;else if(X1==7) y=@02e4;else Y=@0006;
  $  007.线性霍尔传感器1角度                 $    $  deg     $    $  ANS007.BYTE004  $  Y=(x1*256+x2)*0.022;
  $  008.线性霍尔传感器2角度                 $    $  deg     $    $  ANS008.BYTE004  $  Y=(x1*256+x2)*0.022;
  $  009.开关传感器状态                      $    $          $    $  ANS009.BYTE004  $  if(((X1>>0)&1)) y=@0a26;else if(((X1>>1)&1)) y=@0a27;else if(((X1>>2)&1)) y=@0c93;else if(((X1>>3)&1)) y=@0c94;else if(X1==55) y=@0c95;else Y=@0006;
  $  010.里程值                              $    $  km      $    $  ANS010.BYTE004  $  Y=(X1*16777216+X2*65536+X3*256+X4)*0.1;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7D0 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
