
    车型ID：6a1f

    模拟：协议模拟-->6a1f

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:7A4 02 10 01 00 00 00 00 00       $~  ANS000:7AC 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7A4 02 3E 00 00 00 00 00 00       $!  ANS000:7AC 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7A4 03 19 02 09 00 00 00 00       $#  ANS000:7AC 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7A4 04 14 FF FF FF 00 00 00       $$  ANS000:7AC 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7A4 03 22 F1 87 00 00 00 00       $%  ANS000:7AC 03 22 F1 87 00 00 00 00
  $%  REQ001:7A4 03 22 F1 89 00 00 00 00       $%  ANS001:7AC 03 22 F1 89 00 00 00 00
  $%  REQ002:7A4 03 22 F1 90 00 00 00 00       $%  ANS002:7AC 03 22 F1 90 00 00 00 00
  $%  REQ003:7A4 03 22 F1 91 00 00 00 00       $%  ANS003:7AC 03 22 F1 91 00 00 00 00
  $%  REQ004:7A4 03 22 F1 93 00 00 00 00       $%  ANS004:7AC 03 22 F1 93 00 00 00 00
  $%  REQ005:7A4 03 22 F1 95 00 00 00 00       $%  ANS005:7AC 03 22 F1 95 00 00 00 00
  $%  REQ006:7A4 03 22 F1 98 00 00 00 00       $%  ANS006:7AC 03 22 F1 98 00 00 00 00
  $%  REQ007:7A4 03 22 F1 99 00 00 00 00       $%  ANS007:7AC 03 22 F1 99 00 00 00 00
  $%  REQ008:7A4 03 22 F1 9D 00 00 00 00       $%  ANS008:7AC 03 22 F1 9D 00 00 00 00
  $%  REQ009:7A4 03 22 F1 A1 00 00 00 00       $%  ANS009:7AC 03 22 F1 A1 00 00 00 00
  $%  REQ010:7A4 03 22 17 A6 00 00 00 00       $%  ANS010:7AC 03 22 17 A6 00 00 00 00

  $%  000:OEM（原厂设备）部件编号:            $%    $%  ANS000.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  001:ECU软件版本编号:                    $%    $%  ANS001.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  002:VIN（车辆识别码）:                  $%    $%  ANS002.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  003:ECU硬件版本编号:                    $%    $%  ANS003.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  004:供应商ECU硬件版本号:                $%    $%  ANS004.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  005:供应商ECU软件版本号:                $%    $%  ANS005.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  006:维修车间码和/或诊断仪序列号:        $%    $%  ANS006.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  007:编程日期:                           $%    $%  ANS007.BYTE004  $%  Y=HEX(X1,X2,X3,X4);
  $%  008:ECU安装日期:                        $%    $%  ANS008.BYTE004  $%  Y=HEX(X1,X2,X3,X4);
  $%  009:系统配置1（变量代码）:              $%    $%  ANS009.BYTE004  $%  Y=HEX(X1,X2,X3,X4,X5,X6,X7,X8);
  $%  010:BB号码:                             $%    $%  ANS010.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5);
  $%  011:SCMID:                              $%    $%  ANS010.BYTE009  $%  Y=ASCII(X1);
  $%  012:SCMMV:                              $%    $%  ANS010.BYTE010  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7A4 03 22 17 A0 00 00 00 00       $  ANS000:7AC 03 22 17 A0 00 00 00 00
  $  REQ001:7A4 03 22 17 A1 00 00 00 00       $  ANS001:7AC 03 22 17 A1 00 00 00 00
  $  REQ002:7A4 03 22 17 A2 00 00 00 00       $  ANS002:7AC 03 22 17 A2 00 00 00 00
  $  REQ003:7A4 03 22 17 A3 00 00 00 00       $  ANS003:7AC 03 22 17 A3 00 00 00 00
  $  REQ004:7A4 03 22 17 A4 00 00 00 00       $  ANS004:7AC 03 22 17 A4 00 00 00 00
  $  REQ005:7A4 03 22 17 A5 00 00 00 00       $  ANS005:7AC 03 22 17 A5 00 00 00 00
  $  REQ006:7A4 03 22 17 A7 00 00 00 00       $  ANS006:7AC 03 22 17 A7 00 00 00 00
  $  REQ007:7A4 03 22 17 A8 00 00 00 00       $  ANS007:7AC 03 22 17 A8 00 00 00 00

  $  000.车速                                   $    $  km/h      $    $  ANS000.BYTE004  $  if((X1*256+X2)<=5280) Y=(X1*256+X2)*0.05625;else Y=@0004;
  $  001.左前轮速度                             $    $  km/h      $    $  ANS000.BYTE006  $  if((X1*256+X2)<=5280) Y=(X1*256+X2)*0.05625;else Y=@0004;
  $  002.右前轮速度                             $    $  km/h      $    $  ANS000.BYTE008  $  if((X1*256+X2)<=5280) Y=(X1*256+X2)*0.05625;else Y=@0004;
  $  003.左后车轮速度                           $    $  km/h      $    $  ANS000.BYTE010  $  if((X1*256+X2)<=5280) Y=(X1*256+X2)*0.05625;else Y=@0004;
  $  004.右后车轮速度                           $    $  km/h      $    $  ANS000.BYTE012  $  if((X1*256+X2)<=5280) Y=(X1*256+X2)*0.05625;else Y=@0004;
  $  005.电池电压                               $    $  V         $    $  ANS001.BYTE004  $  Y=X1*0.08;
  $  006.制动灯开关                             $    $            $    $  ANS001.BYTE005  $  if(X1==0) y=@0014;else if(X1==1) y=@0015;else y=@0004;
  $  007.阀继电器状态                           $    $            $    $  ANS002.BYTE004  $  if(X1==0) y=@0014;else if(X1==1) y=@0015;else y=@0004;
  $  008.泵电机状态                             $    $            $    $  ANS002.BYTE005  $  if(X1==0) y=@0014;else if(X1==1) y=@0015;else y=@0004;
  $  009.阀门动作状态：左前进口阀（EVFL）       $    $            $    $  ANS002.BYTE006  $  if(((X1>>0)&1)) Y=@0016;else Y=@0005;
  $  010.阀门动作状态：左前出口阀（AVFL）       $    $            $    $  ANS002.BYTE006  $  if(((X1>>1)&1)) Y=@0016;else Y=@0005;
  $  011.阀门执行状态：右前进口阀（EVFR）       $    $            $    $  ANS002.BYTE006  $  if(((X1>>2)&1)) Y=@0016;else Y=@0005;
  $  012.阀门动作状态：右前出口阀（AVFR）       $    $            $    $  ANS002.BYTE006  $  if(((X1>>3)&1)) Y=@0016;else Y=@0005;
  $  013.阀门执行状态：左后进气阀（EVRL）       $    $            $    $  ANS002.BYTE006  $  if(((X1>>4)&1)) Y=@0016;else Y=@0005;
  $  014.阀门动作状态：左后出口阀（AVRL）       $    $            $    $  ANS002.BYTE006  $  if(((X1>>5)&1)) Y=@0016;else Y=@0005;
  $  015.阀门执行状态：右后进口阀（EVRR）       $    $            $    $  ANS002.BYTE006  $  if(((X1>>6)&1)) Y=@0016;else Y=@0005;
  $  016.阀门动作状态：右后出口阀（AVRR）       $    $            $    $  ANS002.BYTE006  $  if(((X1>>7)&1)) Y=@0016;else Y=@0005;
  $  017.阀门动作状态：阀门USV1                 $    $            $    $  ANS002.BYTE007  $  if(((X1>>0)&1)) Y=@0016;else Y=@0005;
  $  018.阀门动作状态：阀门USV2                 $    $            $    $  ANS002.BYTE007  $  if(((X1>>1)&1)) Y=@0016;else Y=@0005;
  $  019.阀门动作状态：阀门HSV1                 $    $            $    $  ANS002.BYTE007  $  if(((X1>>2)&1)) Y=@0016;else Y=@0005;
  $  020.阀门动作状态：阀门HSV2                 $    $            $    $  ANS002.BYTE007  $  if(((X1>>3)&1)) Y=@0016;else Y=@0005;
  $  021.填充状态                               $    $            $    $  ANS003.BYTE004  $  if(X1==0) y=@00c9;else if(X1==170) y=@00ca;else if(X1==238) y=@00cb;else y=@0004;
  $  022.EOL状态                                $    $            $    $  ANS004.BYTE004  $  if(X1==0) y=@00c6;else if(X1==170) y=@00c7;else if(X1==238) y=@00c8;else y=@0004;
  $  023.主循环压力                             $    $  bar       $    $  ANS005.BYTE004  $  if((X1*256+X2)<=0x6c82) Y=(X1*256+X2)*0.0153; else if((X1*256+X2)>0xf526) Y=((X1*256+X2)-0x10000)*0.0153;else y=@0004;
  $  024.转向角                                 $    $  deg       $    $  ANS005.BYTE006  $  if((X1*256+X2)<=0x1e78) Y=(X1*256+X2)*0.1; else if((X1*256+X2)>0xe188) Y=((X1*256+X2)-0x10000)*0.1;else y=@0004;
  $  025.横摆角速度                             $    $  rad/s     $    $  ANS005.BYTE008  $  if((X1*256+X2)<=0x3da) Y=(X1*256+X2)*0.00213; else if((X1*256+X2)>0xfc26) Y=((X1*256+X2)-0x10000)*0.00213;else y=@0004;
  $  026.横向加速度                             $    $  m/s^2     $    $  ANS005.BYTE010  $  if((X1*256+X2)<=0x31c) Y=(X1*256+X2)*0.02712; else if((X1*256+X2)>0xfce4) Y=((X1*256+X2)-0x10000)*0.02712;else y=@0004;
  $  027.纵向加速度                             $    $  m/s^2     $    $  ANS005.BYTE012  $  if((X1*256+X2)<=0x31c) Y=(X1*256+X2)*0.02712; else if((X1*256+X2)>0xfce4) Y=((X1*256+X2)-0x10000)*0.02712;else y=@0004;
  $  028.引导加载程序重新编程计数器             $    $            $    $  ANS006.BYTE004  $  if((X1*256+X2)<=90) Y=(X1*256+X2)*1;else Y=@0004;
  $  029.重新编程的最大数目                     $    $            $    $  ANS006.BYTE006  $  Y=x1*256+x2;
  $  030.诊断会话类型                           $    $            $    $  ANS007.BYTE004  $  if(X1==1) y=@00c1;else if(X1==3) y=@00c2;else if(X1==129) y=@00c3;else if(X1==130) y=@00c4;else if(X1==131) y=@00c5;else y=@0004;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7A4 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
