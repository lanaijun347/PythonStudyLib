
    车型ID：721c

    模拟：协议模拟-->721c

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:711 02 10 01 00 00 00 00 00       $~  ANS000:719 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:711 02 3E 00 00 00 00 00 00       $!  ANS000:719 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:711 03 19 02 08 00 00 00 00       $#  ANS000:719 03 19 02 08 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:711 04 14 FF FF FF 00 00 00       $$  ANS000:719 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:711 03 22 F1 00 00 00 00 00       $%  ANS000:719 03 22 F1 00 00 00 00 00
  $%  REQ001:711 03 22 F1 87 00 00 00 00       $%  ANS001:719 03 22 F1 87 00 00 00 00
  $%  REQ002:711 03 22 F1 89 00 00 00 00       $%  ANS002:719 03 22 F1 89 00 00 00 00
  $%  REQ003:711 03 22 F1 90 00 00 00 00       $%  ANS003:719 03 22 F1 90 00 00 00 00
  $%  REQ004:711 03 22 F1 91 00 00 00 00       $%  ANS004:719 03 22 F1 91 00 00 00 00
  $%  REQ005:711 03 22 F1 98 00 00 00 00       $%  ANS005:719 03 22 F1 98 00 00 00 00
  $%  REQ006:711 03 22 F1 99 00 00 00 00       $%  ANS006:719 03 22 F1 99 00 00 00 00
  $%  REQ007:711 03 22 F1 9D 00 00 00 00       $%  ANS007:719 03 22 F1 9D 00 00 00 00
  $%  REQ008:711 03 22 F1 A1 00 00 00 00       $%  ANS008:719 03 22 F1 A1 00 00 00 00
  $%  REQ009:711 03 22 F1 93 00 00 00 00       $%  ANS009:719 03 22 F1 93 00 00 00 00
  $%  REQ010:711 03 22 F1 95 00 00 00 00       $%  ANS010:719 03 22 F1 95 00 00 00 00

  $%  000:模式配置:                               $%    $%  ANS000.BYTE004  $%  if(X1==0) y=@0953;else if(X1==1) y=@0954;else Y=@0006;
  $%  001:零件号:                                 $%    $%  ANS001.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  002:ECU(电子控制器)软件号:                  $%    $%  ANS002.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  003:车辆VIN:                                $%    $%  ANS003.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  004:ECU(电子控制器)硬件版本号:              $%    $%  ANS004.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  005:诊断仪序列号:                           $%    $%  ANS005.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  006:编程日期:                               $%    $%  ANS006.BYTE004  $%  y=SPRINTF([%02x%02x-%02x-%02x],x1,x2,x3,x4);
  $%  007:ECU(电子控制器)安装日期:                $%    $%  ANS007.BYTE004  $%  y=SPRINTF([%02x%02x-%02x-%02x],x1,x2,x3,x4);
  $%  008:系统配置:                               $%    $%  ANS008.BYTE004  $%  Y=HEX(X1,X2,X3,X4,X5,X6);
  $%  009:供应商ECU(电子控制器)硬件版本号:        $%    $%  ANS009.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  010:供应商ECU(电子控制器)软件版本号:        $%    $%  ANS010.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:711 03 22 1A 56 00 00 00 00       $  ANS000:719 03 22 1A 56 00 00 00 00
  $  REQ001:711 03 22 1A 57 00 00 00 00       $  ANS001:719 03 22 1A 57 00 00 00 00
  $  REQ002:711 03 22 1A 53 00 00 00 00       $  ANS002:719 03 22 1A 53 00 00 00 00
  $  REQ003:711 03 22 1A 42 00 00 00 00       $  ANS003:719 03 22 1A 42 00 00 00 00
  $  REQ004:711 03 22 1A 43 00 00 00 00       $  ANS004:719 03 22 1A 43 00 00 00 00

  $  000.生命周期读取                                $    $            $    $  ANS000.BYTE004  $  if(X1==1) y=@0955;else if(X1==2) y=@0956;else if(X1==3) y=@0957;else if(X1==10) y=@0958;else if(X1==11) y=@0959;else if(X1==12) y=@095a;else Y=@0006;
  $  001.生命周期设置                                $    $            $    $  ANS001.BYTE004  $  if(X1==0) y=@095b;else if(X1==1) y=@095c;else Y=@0006;
  $  002.车辆钥匙信息                                $    $            $    $  ANS002.BYTE004  $  Y=(X1*256+X2)/128;
  $  003.加速踏板位置                                $    $  %         $    $  ANS003.BYTE009  $  Y=X1*0.01;
  $  004.主缸压力                                    $    $  bar       $    $  ANS004.BYTE010  $  Y=x1;
  $  005.转向角                                      $    $  rad       $    $  ANS004.BYTE011  $  if(x1<0x80) y=(x1*256+x2)*0.0009765;else y =(x1*256+x2-65535)*0.0009765;
  $  006.转向角速度                                  $    $  rad/s     $    $  ANS004.BYTE013  $  if(x1<0x80) y=(x1*256+x2)*0.0009765;else y =(x1*256+x2-65535)*0.0009765;
  $  007.本车纵向速度                                $    $  m/s       $    $  ANS004.BYTE015  $  if(x<=0x7f) y=x;else y=0x80-x;
  $  008.本车纵向加速度                              $    $  m/s^2     $    $  ANS004.BYTE016  $  if(x1<=0x7f) y=x1*0.2;else y=(0x80-x1)*0.2;
  $  009.本车横向加速度                              $    $  m/s^2     $    $  ANS004.BYTE017  $  if(x1<=0x7f) y=x1*0.2;else y=(0x80-x1)*0.2;
  $  010.偏差角度                                    $    $  rad       $    $  ANS004.BYTE018  $  if(x1<=0x7f) y=x1*0.001;else y=(0x80-x1)*0.001;
  $  011.纵向距离                                    $    $  m         $    $  ANS004.BYTE019  $  if(x1<=0x7f) y=x1*0.5;else y=(0x80-x1)*0.5;
  $  012.横向距离                                    $    $  m         $    $  ANS004.BYTE020  $  if(x1<=0x7f) y=x1*0.15;else y=(0x80-x1)*0.15;
  $  013.纵向相对速度                                $    $  m/s       $    $  ANS004.BYTE021  $  if(x<=0x7f) y=x;else y=0x80-x;
  $  014.横向相对速度                                $    $  m/s       $    $  ANS004.BYTE022  $  if(x<=0x7f) y=x;else y=0x80-x;
  $  015.纵向相对加速度                              $    $  m/s^2     $    $  ANS004.BYTE023  $  if(x1<=0x7f) y=x1*0.1;else y=(0x80-x1)*0.1;
  $  016.横向相对加速度                              $    $  m/s^2     $    $  ANS004.BYTE024  $  if(x1<=0x7f) y=x1*0.16;else y=(0x80-x1)*0.16;
  $  017.最大加速踏板位置                            $    $  %         $    $  ANS004.BYTE025  $  Y=X1*0.01;
  $  018.最大主缸压力                                $    $  bar       $    $  ANS004.BYTE026  $  Y=x1;
  $  019.最大转向角                                  $    $  rad       $    $  ANS004.BYTE027  $  if(x1<0x80) y=(x1*256+x2)*0.0009765;else y =(x1*256+x2-65535)*0.0009765;
  $  020.最大转向角速度                              $    $  rad/s     $    $  ANS004.BYTE029  $  if(x1<0x80) y=(x1*256+x2)*0.0009765;else y =(x1*256+x2-65535)*0.0009765;
  $  021.最小加速踏板位置                            $    $  %         $    $  ANS004.BYTE031  $  Y=X1*0.01;
  $  022.最小主缸压力                                $    $  bar       $    $  ANS004.BYTE032  $  Y=x1;
  $  023.最小转向角                                  $    $  rad       $    $  ANS004.BYTE033  $  if(x1<0x80) y=(x1*256+x2)*0.0009765;else y =(x1*256+x2-65535)*0.0009765;
  $  024.最小转向角速度                              $    $  rad/s     $    $  ANS004.BYTE035  $  if(x1<0x80) y=(x1*256+x2)*0.0009765;else y =(x1*256+x2-65535)*0.0009765;
  $  025.本车最大纵向加速                            $    $  m/s^2     $    $  ANS004.BYTE037  $  if(x1<=0x7f) y=x1*0.2;else y=(0x80-x1)*0.2;
  $  026.本车最小纵向加速度                          $    $  m/s^2     $    $  ANS004.BYTE038  $  if(x1<=0x7f) y=x1*0.2;else y=(0x80-x1)*0.2;
  $  027.本车最大横向加速度                          $    $  m/s^2     $    $  ANS004.BYTE039  $  if(x1<=0x7f) y=x1*0.2;else y=(0x80-x1)*0.2;
  $  028.本车最小横向加速度                          $    $  m/s^2     $    $  ANS004.BYTE040  $  if(x1<=0x7f) y=x1*0.2;else y=(0x80-x1)*0.2;
  $  029.持续时间                                    $    $  s         $    $  ANS004.BYTE041  $  Y=x1*0.0004882;
  $  030.速度下降值                                  $    $  m/s       $    $  ANS004.BYTE042  $  if(x1<=0x7f) y=x1*0.3;else y=(0x80-x1)*0.3;
  $  031.最大相对速度                                $    $  m/s       $    $  ANS004.BYTE043  $  if(x<=0x7f) y=x;else y=0x80-x;
  $  032.ESP(电控稳定系统)是否执行紧急报警           $    $            $    $  ANS004.BYTE044  $  if(((X1>>7)&1)) y=@003a;else y=@0037;
  $  033.ESP(电控稳定系统)是否执行自动紧急制动       $    $            $    $  ANS004.BYTE044  $  if(((X1>>6)&1)) y=@003a;else y=@0037;
  $  034.里程                                        $    $  km        $    $  ANS004.BYTE045  $  Y=x1*256+x2;
  $  035.最小纵向距离                                $    $  m         $    $  ANS004.BYTE047  $  if(x1<=0x7f) y=x1*0.2;else y=(0x80-x1)*0.2;
  $  036.纵向距离最小时的相对横向距离                $    $  m         $    $  ANS004.BYTE048  $  if(x1<=0x7f) y=x1*0.15;else y=(0x80-x1)*0.15;
  $  037.纵向距离最小时的时间                        $    $  s         $    $  ANS004.BYTE049  $  Y=x1*0.0004882;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:711 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
