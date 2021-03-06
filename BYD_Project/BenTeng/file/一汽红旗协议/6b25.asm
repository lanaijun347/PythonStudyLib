
    车型ID：6b25

    模拟：协议模拟-->6b25

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
  $%  REQ010:7A4 03 22 F1 86 00 00 00 00       $%  ANS010:7AC 03 22 F1 86 00 00 00 00
  $%  REQ011:7A4 03 22 17 A6 00 00 00 00       $%  ANS011:7AC 03 22 17 A6 00 00 00 00

  $%  000:OEM（原厂设备）零件号:              $%    $%  ANS000.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  001:ECU软件版本编号:                    $%    $%  ANS001.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  002:VIN（车辆识别码）:                  $%    $%  ANS002.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  003:ECU硬件版本编号:                    $%    $%  ANS003.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  004:供应商ECU硬件版本号:                $%    $%  ANS004.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  005:供应商ECU软件版本号:                $%    $%  ANS005.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5);
  $%  006:维修车间码和/或测试仪序列号:        $%    $%  ANS006.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  007:编程日期:                           $%    $%  ANS007.BYTE004  $%  Y=HEX(X1,X2,X3,X4);
  $%  008:ECU安装日期:                        $%    $%  ANS008.BYTE004  $%  Y=HEX(X1,X2,X3,X4);
  $%  009:系统配置1（变量编码）:              $%    $%  ANS009.BYTE004  $%  Y=HEX(X1,X2,X3,X4,X5,X6,X7,X8);
  $%  010:主动诊断会话:                       $%    $%  ANS010.BYTE004  $%  if(X1==1) y=@04e3;else if(X1==3) y=@04e4;else if(X1==129) y=@04e5;else if(X1==130) y=@04e6;else if(X1==131) y=@04e7;else y=@0004;
  $%  011:BB号码:                             $%    $%  ANS011.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5);
  $%  012:SCM ID:                             $%    $%  ANS011.BYTE009  $%  Y=ASCII(X1);
  $%  013:SCM版本:                            $%    $%  ANS011.BYTE010  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7A4 03 22 17 A0 00 00 00 00       $  ANS000:7AC 03 22 17 A0 00 00 00 00
  $  REQ001:7A4 03 22 17 A1 00 00 00 00       $  ANS001:7AC 03 22 17 A1 00 00 00 00
  $  REQ002:7A4 03 22 17 A2 00 00 00 00       $  ANS002:7AC 03 22 17 A2 00 00 00 00
  $  REQ003:7A4 03 22 17 A3 00 00 00 00       $  ANS003:7AC 03 22 17 A3 00 00 00 00
  $  REQ004:7A4 03 22 17 A4 00 00 00 00       $  ANS004:7AC 03 22 17 A4 00 00 00 00
  $  REQ005:7A4 03 22 17 A5 00 00 00 00       $  ANS005:7AC 03 22 17 A5 00 00 00 00

  $  000.车速                                   $    $  km/h      $    $  ANS000.BYTE004  $  if((X1*256+X2)<=4628) Y=(X1*256+X2)*0.05625;else y=@0004;
  $  001.左前轮速                               $    $  km/h      $    $  ANS000.BYTE006  $  if((X1*256+X2)<=4628) Y=(X1*256+X2)*0.05625;else y=@0004;
  $  002.右前轮速                               $    $  km/h      $    $  ANS000.BYTE008  $  if((X1*256+X2)<=4628) Y=(X1*256+X2)*0.05625;else y=@0004;
  $  003.左后轮速                               $    $  km/h      $    $  ANS000.BYTE010  $  if((X1*256+X2)<=4628) Y=(X1*256+X2)*0.05625;else y=@0004;
  $  004.右后轮速                               $    $  km/h      $    $  ANS000.BYTE012  $  if((X1*256+X2)<=4628) Y=(X1*256+X2)*0.05625;else y=@0004;
  $  005.电瓶电压                               $    $  V         $    $  ANS001.BYTE004  $  Y=X1*0.08;
  $  006.制动灯开关                             $    $            $    $  ANS001.BYTE005  $  if(X1==0) y=@0014;else if(X1==1) y=@0015;else y=@0004;
  $  007.阀门继电器状态                         $    $            $    $  ANS002.BYTE004  $  if(X1==0) y=@0014;else if(X1==1) y=@0015;else y=@0004;
  $  008.泵马达状态                             $    $            $    $  ANS002.BYTE005  $  if(X1==0) y=@0014;else if(X1==1) y=@0015;else y=@0004;
  $  009.阀门激活状态：左前进油阀（EVFL）       $    $            $    $  ANS002.BYTE006  $  if(((X1>>0)&1)) Y=@0016;else Y=@0005;
  $  010.阀门激活状态：左前出油阀（AVFL）       $    $            $    $  ANS002.BYTE006  $  if(((X1>>1)&1)) Y=@0016;else Y=@0005;
  $  011.阀门激活状态：右前进油阀（EVFR）       $    $            $    $  ANS002.BYTE006  $  if(((X1>>2)&1)) Y=@0016;else Y=@0005;
  $  012.阀门激活状态：右前出油阀（AVFR）       $    $            $    $  ANS002.BYTE006  $  if(((X1>>3)&1)) Y=@0016;else Y=@0005;
  $  013.阀门激活状态：左后进油阀（EVRL）       $    $            $    $  ANS002.BYTE006  $  if(((X1>>4)&1)) Y=@0016;else Y=@0005;
  $  014.阀门激活状态：左后出油阀（AVRL）       $    $            $    $  ANS002.BYTE006  $  if(((X1>>5)&1)) Y=@0016;else Y=@0005;
  $  015.阀门激活状态：右后进油阀（EVRR）       $    $            $    $  ANS002.BYTE006  $  if(((X1>>6)&1)) Y=@0016;else Y=@0005;
  $  016.阀门激活状态：右后出油阀（AVRR）       $    $            $    $  ANS002.BYTE006  $  if(((X1>>7)&1)) Y=@0016;else Y=@0005;
  $  017.阀门激活状态：阀USV1                   $    $            $    $  ANS002.BYTE007  $  if(((X1>>0)&1)) Y=@0016;else Y=@0005;
  $  018.阀门激活状态：阀USV2                   $    $            $    $  ANS002.BYTE007  $  if(((X1>>1)&1)) Y=@0016;else Y=@0005;
  $  019.阀门激活状态：HSV1阀                   $    $            $    $  ANS002.BYTE007  $  if(((X1>>2)&1)) Y=@0016;else Y=@0005;
  $  020.阀门激活状态：HSV2阀                   $    $            $    $  ANS002.BYTE007  $  if(((X1>>3)&1)) Y=@0016;else Y=@0005;
  $  021.加注状态                               $    $            $    $  ANS003.BYTE004  $  if(X1==0) y=@04eb;else if(X1==170) y=@04ec;else if(X1==238) y=@04ed;else y=@0004;
  $  022.EOL（下线测试）状态                    $    $            $    $  ANS004.BYTE004  $  if(X1==0) y=@04e8;else if(X1==170) y=@04e9;else if(X1==238) y=@04ea;else y=@0004;
  $  023.总泵压力                               $    $  bar       $    $  ANS005.BYTE004  $  if((X1*256+X2)<=0x6c82) Y=(X1*256+X2)*0.0153;else if((X1*256+X2)>=0xF526) Y=((X1*256+X2)-0x10000)*0.0153;else Y=@0004;
  $  024.转向角                                 $    $  deg       $    $  ANS005.BYTE006  $  if((X1*256+X2)<=7800) Y=(X1*256+X2)*0.1;else if((X1*256+X2)>=0xE188) Y=((X1*256+X2)-0x10000)*0.1;else Y=@0004;
  $  025.横摆率                                 $    $  rad/s     $    $  ANS005.BYTE008  $  if((X1*256+X2)<986) Y=(X1*256+X2)*0.00213;else if((X1*256+X2)>0xfc26) Y=((X1*256+X2)-0x10000)*0.00213;else Y=@0004;
  $  026.横向加速度                             $    $  m/s^2     $    $  ANS005.BYTE010  $  if((X1*256+X2)<=797) Y=(X1*256+X2)*0.02712;else if((X1*256+X2)>=0xFCE2) Y=((X1*256+X2)-0x10000)*0.02712;else Y=@0004;
  $  027.纵向加速度                             $    $  m/s^2     $    $  ANS005.BYTE012  $  if((X1*256+X2)<=797) Y=(X1*256+X2)*0.02712;else if((X1*256+X2)>=0xFCE2) Y=((X1*256+X2)-0x10000)*0.02712;else Y=@0004;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7A4 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
