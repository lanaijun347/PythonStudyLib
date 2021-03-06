
    车型ID：e201

    模拟：协议模拟-->e201

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7E1

进入命令:

  $~  REQ000:781 02 10 01 00 00 00 00 00       $~  ANS000:7E1 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:781 02 3E 00 00 00 00 00 00       $!  ANS000:7E1 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:781 03 19 02 09 00 00 00 00       $#  ANS000:7E1 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/21000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:781 04 14 FF FF FF 00 00 00       $$  ANS000:7E1 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:781 03 22 F1 87 00 00 00 00       $%  ANS000:7E1 03 22 F1 87 00 00 00 00
  $%  REQ001:781 03 22 F1 8A 00 00 00 00       $%  ANS001:7E1 03 22 F1 8A 00 00 00 00
  $%  REQ002:781 03 22 F1 93 00 00 00 00       $%  ANS002:7E1 03 22 F1 93 00 00 00 00
  $%  REQ003:781 03 22 F1 95 00 00 00 00       $%  ANS003:7E1 03 22 F1 95 00 00 00 00
  $%  REQ004:781 03 22 F1 8C 00 00 00 00       $%  ANS004:7E1 03 22 F1 8C 00 00 00 00
  $%  REQ005:781 03 22 F1 90 00 00 00 00       $%  ANS005:7E1 03 22 F1 90 00 00 00 00
  $%  REQ006:781 03 22 F1 98 00 00 00 00       $%  ANS006:7E1 03 22 F1 98 00 00 00 00
  $%  REQ007:781 03 22 F1 99 00 00 00 00       $%  ANS007:7E1 03 22 F1 99 00 00 00 00

  $%  000:零件号:                     $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13);
  $%  001:供应商名称:                 $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  002:硬件版本号:                 $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%s%02X%s%02X%s%02X%02X%02X%02X],@0073,X1,@0074,X2,@0075,X6,X5,X4,X3);
  $%  003:软件版本号:                 $%    $%  ANS003.BYTE004  $%  y=SPRINTF([%s%02X%s%02X%s%02X%02X%02X%02X],@0073,X1,@0074,X2,@0075,X6,X5,X4,X3);
  $%  004:ECU流水编号:                $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14);
  $%  005:车辆识别编号(VIN码):        $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  006:测试仪序列号:               $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  007:软件编程日期:               $%    $%  ANS007.BYTE004  $%  y=SPRINTF([%02X%s%02X%s%02X%s],X3,@0070,X2,@0071,X1,@0072);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:781 03 22 0A 01 00 00 00 00       $  ANS000:7E1 03 22 0A 01 00 00 00 00
  $  REQ001:781 03 22 0A 02 00 00 00 00       $  ANS001:7E1 03 22 0A 02 00 00 00 00
  $  REQ002:781 03 22 0A 03 00 00 00 00       $  ANS002:7E1 03 22 0A 03 00 00 00 00
  $  REQ003:781 03 22 0A 04 00 00 00 00       $  ANS003:7E1 03 22 0A 04 00 00 00 00
  $  REQ004:781 03 22 0A 05 00 00 00 00       $  ANS004:7E1 03 22 0A 05 00 00 00 00
  $  REQ005:781 03 22 0A 06 00 00 00 00       $  ANS005:7E1 03 22 0A 06 00 00 00 00
  $  REQ006:781 03 22 0A 07 00 00 00 00       $  ANS006:7E1 03 22 0A 07 00 00 00 00
  $  REQ007:781 03 22 0A 08 00 00 00 00       $  ANS007:7E1 03 22 0A 08 00 00 00 00
  $  REQ008:781 03 22 0A 09 00 00 00 00       $  ANS008:7E1 03 22 0A 09 00 00 00 00
  $  REQ009:781 03 22 0A 10 00 00 00 00       $  ANS009:7E1 03 22 0A 10 00 00 00 00
  $  REQ010:781 03 22 0A 11 00 00 00 00       $  ANS010:7E1 03 22 0A 11 00 00 00 00
  $  REQ011:781 03 22 0A 12 00 00 00 00       $  ANS011:7E1 03 22 0A 12 00 00 00 00
  $  REQ012:781 03 22 0A 13 00 00 00 00       $  ANS012:7E1 03 22 0A 13 00 00 00 00
  $  REQ013:781 03 22 0A 14 00 00 00 00       $  ANS013:7E1 03 22 0A 14 00 00 00 00
  $  REQ014:781 03 22 0A 15 00 00 00 00       $  ANS014:7E1 03 22 0A 15 00 00 00 00
  $  REQ015:781 03 22 0A 16 00 00 00 00       $  ANS015:7E1 03 22 0A 16 00 00 00 00
  $  REQ016:781 03 22 0A 17 00 00 00 00       $  ANS016:7E1 03 22 0A 17 00 00 00 00
  $  REQ017:781 03 22 0A 18 00 00 00 00       $  ANS017:7E1 03 22 0A 18 00 00 00 00
  $  REQ018:781 03 22 0A 19 00 00 00 00       $  ANS018:7E1 03 22 0A 19 00 00 00 00
  $  REQ019:781 03 22 0A 20 00 00 00 00       $  ANS019:7E1 03 22 0A 20 00 00 00 00
  $  REQ020:781 03 22 0A 21 00 00 00 00       $  ANS020:7E1 03 22 0A 21 00 00 00 00
  $  REQ021:781 03 22 01 F0 00 00 00 00       $  ANS021:7E1 03 22 01 F0 00 00 00 00

  $  000.驾驶员需求扭矩                $    $  Nm            $    $  ANS000.BYTE004  $  y=x1*256*0.5+x2*0.5-300;
  $  001.车速                          $    $  kph           $    $  ANS001.BYTE004  $  y=x1*256*0.1+x2*0.1;
  $  002.蓄电池电压                    $    $  V             $    $  ANS002.BYTE004  $  y=x1*0.1;
  $  003.油门踏板位置                  $    $  %             $    $  ANS003.BYTE004  $  y=x1*0.4;
  $  004.VCU控制电机工作状态请求       $    $                $    $  ANS004.BYTE004  $  switxh(x1) 0x02: y=@005e;0x03: y=@0068;0x04: y=@003b;0x0b: y=@003d;0x0d: y=@0069;0x0f: y=@0013;default: y=@000c;
  $  005.当前档位状态                  $    $                $    $  ANS005.BYTE004  $  switxh(x1) 0x00: y=@006a;0x0a: y=@006b;0x0d: y=@006c;0x0e: y=@006d;default: y=@000c;
  $  006.刹车踏板状态                  $    $                $    $  ANS006.BYTE004  $  if(x1&0x01) y=@006e;else y=@006f;
  $  007.点火开关状态                  $    $                $    $  ANS007.BYTE004  $  switxh(x1&0x07) 0x00: y=@0000;0x01: y=@0003;0x02: y=@0066;0x04: y=@0067;default: y=@000c;
  $  008.电机使能状态                  $    $                $    $  ANS008.BYTE004  $  if(x1&0x01) y=@0060;else y=@0061;
  $  009.BMS使能状态                   $    $                $    $  ANS009.BYTE004  $  if(x1&0x01) y=@0060;else y=@0061;
  $  010.空调控制器继电器状态          $    $                $    $  ANS010.BYTE004  $  if(x1&0x01) y=@003f;else y=@0033;
  $  011.高速风扇使能状态              $    $                $    $  ANS011.BYTE004  $  if(x1&0x01) y=@003f;else y=@0033;
  $  012.低速风扇使能状态              $    $                $    $  ANS012.BYTE004  $  if(x1&0x01) y=@003f;else y=@0033;
  $  013.VCU控制BMS请求状态            $    $                $    $  ANS013.BYTE004  $  switxh(x1) 0x02: y=@005e;0x04: y=@003b;0x0a: y=@005f;0x0b: y=@003d;default: y=@000c;
  $  014.真空压力值                    $    $  Kpa           $    $  ANS014.BYTE004  $  y=x1*256+x2;
  $  015.水温                          $    $  degree C      $    $  ANS015.BYTE004  $  y=x1-40;
  $  016.真空泵继电器状态              $    $                $    $  ANS016.BYTE004  $  if(x1&0x01) y=@003f;else y=@0033;
  $  017.水泵继电器状态                $    $                $    $  ANS017.BYTE004  $  if(x1&0x01) y=@003f;else y=@0033;
  $  018.水泵调速PWM值                 $    $  %             $    $  ANS018.BYTE004  $  y=x1*256+x2;
  $  019.充电允许状态                  $    $                $    $  ANS019.BYTE004  $  if(x1&0x01) y=@003f;else y=@0033;
  $  020.整车故障等级                  $    $                $    $  ANS020.BYTE004  $  switxh(x1&0x07) 0x00: y=@003b;0x01: y=@0078;0x02: y=@0079;0x03: y=@007a;0x04: y=@007b;0x05: y=@007c;0x06: y=@007d;default: y=@000c;
  $  021.VCU学习状态                   $    $                $    $  ANS021.BYTE004  $  if(x1&0x01) y=@0016;else y=@0017;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:781 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
