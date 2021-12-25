
    车型ID：0873

    模拟：协议模拟-->0873

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7EC

进入命令:

  $~  REQ000:7E4 02 10 01 00 00 00 00 00       $~  ANS000:7EC 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7E4 02 3E 00 00 00 00 00 00       $!  ANS000:7EC 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  00.读故障码
  $#  REQ000:7E4 03 19 02 09 00 00 00 00       $#  ANS000:7EC 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/ad000000


  $#  01.读故障码库
  $#  REQ000:7E4 02 19 0A 00 00 00 00 00       $#  ANS000:7EC 02 19 0A 00 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/ad000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7E4 04 14 FF FF FF 00 00 00       $$  ANS000:7EC 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7E4 03 22 F1 12 00 00 00 00       $%  ANS000:7EC 03 22 F1 12 00 00 00 00
  $%  REQ001:7E4 03 22 F1 87 00 00 00 00       $%  ANS001:7EC 03 22 F1 87 00 00 00 00
  $%  REQ002:7E4 03 22 F1 8A 00 00 00 00       $%  ANS002:7EC 03 22 F1 8A 00 00 00 00
  $%  REQ003:7E4 03 22 F1 8B 00 00 00 00       $%  ANS003:7EC 03 22 F1 8B 00 00 00 00
  $%  REQ004:7E4 03 22 F1 8C 00 00 00 00       $%  ANS004:7EC 03 22 F1 8C 00 00 00 00
  $%  REQ005:7E4 03 22 F1 90 00 00 00 00       $%  ANS005:7EC 03 22 F1 90 00 00 00 00
  $%  REQ006:7E4 03 22 F1 93 00 00 00 00       $%  ANS006:7EC 03 22 F1 93 00 00 00 00
  $%  REQ007:7E4 03 22 F1 95 00 00 00 00       $%  ANS007:7EC 03 22 F1 95 00 00 00 00
  $%  REQ008:7E4 03 22 F1 98 00 00 00 00       $%  ANS008:7EC 03 22 F1 98 00 00 00 00
  $%  REQ009:7E4 03 22 F1 97 00 00 00 00       $%  ANS009:7EC 03 22 F1 97 00 00 00 00
  $%  REQ010:7E4 03 22 F1 82 00 00 00 00       $%  ANS010:7EC 03 22 F1 82 00 00 00 00
  $%  REQ011:7E4 03 22 F1 80 00 00 00 00       $%  ANS011:7EC 03 22 F1 80 00 00 00 00
  $%  REQ012:7E4 03 22 F1 13 00 00 00 00       $%  ANS012:7EC 03 22 F1 13 00 00 00 00

  $%  000:车辆名称:                                    $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  001:零件号:                                      $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  002:供应商代码:                                  $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  003:ECU(电子控制器)生产日期:                     $%    $%  ANS003.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  004:ECU(电子控制器)序列号:                       $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24);
  $%  005:车辆识别号（VIN码）:                         $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  006:ECU(电子控制器)硬件版本号:                   $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  007:ECU(电子控制器)软件版本号:                   $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  008:ECU(电子控制器)刷写维修店代号或设备号:       $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  009:ECU(电子控制器)系统名称或发动机类型:         $%    $%  ANS009.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  010:标定软件版本号:                              $%    $%  ANS010.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  011:驱动层软件版本:                              $%    $%  ANS011.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  012:诊断协议版本:                                $%    $%  ANS012.BYTE004  $%  y=SPRINTF([%d%d%d%d],x1,x2,x3,x4);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7E4 03 22 DF 00 00 00 00 00       $  ANS000:7EC 03 22 DF 00 00 00 00 00
  $  REQ001:7E4 03 22 DF 01 00 00 00 00       $  ANS001:7EC 03 22 DF 01 00 00 00 00
  $  REQ002:7E4 03 22 30 00 00 00 00 00       $  ANS002:7EC 03 22 30 00 00 00 00 00
  $  REQ003:7E4 03 22 30 01 00 00 00 00       $  ANS003:7EC 03 22 30 01 00 00 00 00
  $  REQ004:7E4 03 22 30 02 00 00 00 00       $  ANS004:7EC 03 22 30 02 00 00 00 00
  $  REQ005:7E4 03 22 30 03 00 00 00 00       $  ANS005:7EC 03 22 30 03 00 00 00 00
  $  REQ006:7E4 03 22 30 04 00 00 00 00       $  ANS006:7EC 03 22 30 04 00 00 00 00
  $  REQ007:7E4 03 22 30 05 00 00 00 00       $  ANS007:7EC 03 22 30 05 00 00 00 00
  $  REQ008:7E4 03 22 30 06 00 00 00 00       $  ANS008:7EC 03 22 30 06 00 00 00 00
  $  REQ009:7E4 03 22 30 07 00 00 00 00       $  ANS009:7EC 03 22 30 07 00 00 00 00
  $  REQ010:7E4 03 22 30 08 00 00 00 00       $  ANS010:7EC 03 22 30 08 00 00 00 00
  $  REQ011:7E4 03 22 30 09 00 00 00 00       $  ANS011:7EC 03 22 30 09 00 00 00 00
  $  REQ012:7E4 03 22 30 0A 00 00 00 00       $  ANS012:7EC 03 22 30 0A 00 00 00 00

  $  000.ECU(电子控制器)供电电压                    $    $  V         $    $  ANS000.BYTE004  $  y=x*0.1;
  $  001.车速                                       $    $  km/h      $    $  ANS001.BYTE004  $  y=INT((x1*256+x2)*0.05625);
  $  002.加注状态                                   $    $  /         $    $  ANS002.BYTE004  $  switxh(x)0x00:y=@001f;0x01:y=@08a7;0x02:y=@08a8;0xFF:y=@0201; default:y=@000b;
  $  003.下线检测状态                               $    $  /         $    $  ANS003.BYTE004  $  switxh(x)0x00:y=@08a3;0x01:y=@08a4;0x02:y=@08a5;0xFF:y=@0201;  default:y=@000b;
  $  004.左前轮速                                   $    $  km/h      $    $  ANS004.BYTE004  $  if((x1*0x100+x2)==0xffff)y=@0132;else y=(x1*0x100+x2)*0.05625;
  $  005.右前轮速                                   $    $  km/h      $    $  ANS004.BYTE006  $  if((x1*0x100+x2)==0xffff)y=@0132;else y=(x1*0x100+x2)*0.05625;
  $  006.左后轮速                                   $    $  km/h      $    $  ANS004.BYTE008  $  if((x1*0x100+x2)==0xffff)y=@0132;else y=(x1*0x100+x2)*0.05625;
  $  007.右后轮速                                   $    $  km/h      $    $  ANS004.BYTE010  $  if((x1*0x100+x2)==0xffff)y=@0132;else y=(x1*0x100+x2)*0.05625;
  $  008.阀继电器状态                               $    $  /         $    $  ANS005.BYTE004  $  switxh(x)0x00:y=@0000;0x01:y=@0001;default:y=@0162;
  $  009.泵马达状态                                 $    $  /         $    $  ANS005.BYTE005  $  switxh(x)0x00:y=@0000;0x01:y=@0001;default:y=@0162;
  $  010.左前进气阀状态                             $    $  /         $    $  ANS005.BYTE006  $  if(((x>>0)&1))y=@0001;else y=@0000;
  $  011.左前排气阀状态                             $    $  /         $    $  ANS005.BYTE006  $  if(((x>>1)&1))y=@0001;else y=@0000;
  $  012.右前进气阀状态                             $    $  /         $    $  ANS005.BYTE006  $  if(((x>>2)&1))y=@0001;else y=@0000;
  $  013.右前排气阀状态                             $    $  /         $    $  ANS005.BYTE006  $  if(((x>>3)&1))y=@0001;else y=@0000;
  $  014.左后进气阀状态                             $    $  /         $    $  ANS005.BYTE006  $  if(((x>>4)&1))y=@0001;else y=@0000;
  $  015.左后排气阀状态                             $    $  /         $    $  ANS005.BYTE006  $  if(((x>>5)&1))y=@0001;else y=@0000;
  $  016.右后进气阀状态                             $    $  /         $    $  ANS005.BYTE006  $  if(((x>>6)&1))y=@0001;else y=@0000;
  $  017.右后排气阀状态                             $    $  /         $    $  ANS005.BYTE006  $  if(((x>>7)&1))y=@0001;else y=@0000;
  $  018.回路控制阀1状态(仅ESP(电控稳定系统))       $    $  /         $    $  ANS005.BYTE007  $  if(((x>>0)&1))y=@0001;else y=@0000;
  $  019.回路控制阀2状态(仅ESP(电控稳定系统))       $    $  /         $    $  ANS005.BYTE007  $  if(((x>>1)&1))y=@0001;else y=@0000;
  $  020.高压开关阀1状态(仅ESP(电控稳定系统))       $    $  /         $    $  ANS005.BYTE007  $  if(((x>>2)&1))y=@0001;else y=@0000;
  $  021.高压开关阀2状态(仅ESP(电控稳定系统))       $    $  /         $    $  ANS005.BYTE007  $  if(((x>>3)&1))y=@0001;else y=@0000;
  $  022.刹车灯开关                                 $    $  /         $    $  ANS006.BYTE004  $  switxh(x)0x00:y=@0000;0x01:y=@0001;default:y=@0162;
  $  023.主缸压力                                   $    $  bar       $    $  ANS007.BYTE004  $  if((x1*0x100+x2)<0x7FFF)y=(x1*0x100+x2)*0.0153;else if((x1*0x100+x2)>0x7FFF) y=((x1*0x100+x2)-0x10000)*0.0153;else y=@0132;
  $  024.转向角                                     $    $  deg       $    $  ANS008.BYTE004  $  if((x1*0x100+x2)<0x7FFF)y=(x1*0x100+x2)*0.1;else if((x1*0x100+x2)>0x7FFF) y=((x1*0x100+x2)-0x10000)*0.1;else y=@0132;
  $  025.横摆角                                     $    $  rad/s     $    $  ANS009.BYTE004  $  if((x1*0x100+x2)<0x7FFF)y=(x1*0x100+x2)*0.00213;else if((x1*0x100+x2)>0x7FFF) y=((x1*0x100+x2)-0x10000)*0.00213;else y=@0132;
  $  026.横向加速度                                 $    $  m/s^2     $    $  ANS010.BYTE004  $  if((x1*0x100+x2)<0x7FFF)y=(x1*0x100+x2)*0.02712;else if((x1*0x100+x2)>0x7FFF) y=((x1*0x100+x2)-0x10000)*0.02712;else y=@0132;
  $  027.纵向加速度                                 $    $  m/s^2     $    $  ANS011.BYTE004  $  if((x1*0x100+x2)<0x7FFF)y=(x1*0x100+x2)*0.02712;else if((x1*0x100+x2)>0x7FFF) y=((x1*0x100+x2)-0x10000)*0.02712;else y=@0132;
  $  028.电子驻车状态                               $    $  /         $    $  ANS012.BYTE004  $  switxh(x)0x00:y=@0018;0x01:y=@0019;0x02:y=@0f0c;default:y=@0209;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7E4 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
