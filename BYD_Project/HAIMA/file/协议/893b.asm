
    车型ID：893b

    模拟：协议模拟-->893b

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:7E5 02 10 03 00 00 00 00 00       $~  ANS000:7ED 02 10 03 00 00 00 00 00

空闲命令:

  $!  REQ000:7E5 02 3E 00 00 00 00 00 00       $!  ANS000:7ED 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7E5 03 19 02 6B 00 00 00 00       $#  ANS000:7ED 03 19 02 6B 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/18000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7E5 04 14 FF FF FF 00 00 00       $$  ANS000:7ED 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7E5 03 22 F1 87 00 00 00 00       $%  ANS000:7ED 03 22 F1 87 00 00 00 00
  $%  REQ001:7E5 03 22 F1 88 00 00 00 00       $%  ANS001:7ED 03 22 F1 88 00 00 00 00
  $%  REQ002:7E5 03 22 F1 89 00 00 00 00       $%  ANS002:7ED 03 22 F1 89 00 00 00 00
  $%  REQ003:7E5 03 22 F1 8A 00 00 00 00       $%  ANS003:7ED 03 22 F1 8A 00 00 00 00
  $%  REQ004:7E5 03 22 F1 8B 00 00 00 00       $%  ANS004:7ED 03 22 F1 8B 00 00 00 00
  $%  REQ005:7E5 03 22 F1 8C 00 00 00 00       $%  ANS005:7ED 03 22 F1 8C 00 00 00 00
  $%  REQ006:7E5 03 22 F1 90 00 00 00 00       $%  ANS006:7ED 03 22 F1 90 00 00 00 00
  $%  REQ007:7E5 03 22 F1 91 00 00 00 00       $%  ANS007:7ED 03 22 F1 91 00 00 00 00
  $%  REQ008:7E5 03 22 F1 92 00 00 00 00       $%  ANS008:7ED 03 22 F1 92 00 00 00 00
  $%  REQ009:7E5 03 22 F1 93 00 00 00 00       $%  ANS009:7ED 03 22 F1 93 00 00 00 00
  $%  REQ010:7E5 03 22 F1 94 00 00 00 00       $%  ANS010:7ED 03 22 F1 94 00 00 00 00
  $%  REQ011:7E5 03 22 F1 95 00 00 00 00       $%  ANS011:7ED 03 22 F1 95 00 00 00 00
  $%  REQ012:7E5 03 22 F1 97 00 00 00 00       $%  ANS012:7ED 03 22 F1 97 00 00 00 00
  $%  REQ013:7E5 03 22 F1 99 00 00 00 00       $%  ANS013:7ED 03 22 F1 99 00 00 00 00
  $%  REQ014:7E5 03 22 F1 9B 00 00 00 00       $%  ANS014:7ED 03 22 F1 9B 00 00 00 00
  $%  REQ015:7E5 03 22 F1 9D 00 00 00 00       $%  ANS015:7ED 03 22 F1 9D 00 00 00 00

  $%  000:海马零部件号:            $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%c%c%c%c%02X%c%c%c],X1,X2,X3,X4,X5,X6,X7,X8);
  $%  001:海马软件编号:            $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%c%c%c%c%02X%c%c%c],X1,X2,X3,X4,X5,X6,X7,X8);
  $%  002:海马软件版本号:          $%    $%  ANS002.BYTE004  $%  HEX(x1,x2);
  $%  003:供应商代码:              $%    $%  ANS003.BYTE004  $%  y=SPRINTF([%02X%02X%c%02X%02X%c],X1,X2,X3,X4,X5,X6);
  $%  004:生产日期:                $%    $%  ANS004.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],X1,X2,X3,X4);
  $%  005:序列号:                  $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12);
  $%  006:车辆识别码:              $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  007:海马硬件编号:            $%    $%  ANS007.BYTE004  $%  y=SPRINTF([%c%c%c%c%02X%c%c%c],X1,X2,X3,X4,X5,X6,X7,X8);
  $%  008:供应商硬件编号:          $%    $%  ANS008.BYTE004  $%  y=SPRINTF([%c%c%c%c%02X%c%c%c],X1,X2,X3,X4,X5,X6,X7,X8);
  $%  009:供应商硬件版本号:        $%    $%  ANS009.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12);
  $%  010:供应商软件编号:          $%    $%  ANS010.BYTE004  $%  y=SPRINTF([%c%c%c%c%02X%c%c%c],X1,X2,X3,X4,X5,X6,X7,X8);
  $%  011:供应商软件版本号:        $%    $%  ANS011.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12);
  $%  012:系统名称:                $%    $%  ANS012.BYTE004  $%  ASCII(x1,x2,x3,x4);
  $%  013:编程日期:                $%    $%  ANS013.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],X1,X2,X3,X4);
  $%  014:标定日期:                $%    $%  ANS014.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],X1,X2,X3,X4);
  $%  015:装车日期:                $%    $%  ANS015.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],X1,X2,X3,X4);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7E5 03 22 F1 86 00 00 00 00       $  ANS000:7ED 03 22 F1 86 00 00 00 00
  $  REQ001:7E5 03 22 0B 01 00 00 00 00       $  ANS001:7ED 03 22 0B 01 00 00 00 00
  $  REQ002:7E5 03 22 0B 02 00 00 00 00       $  ANS002:7ED 03 22 0B 02 00 00 00 00
  $  REQ003:7E5 03 22 0B 03 00 00 00 00       $  ANS003:7ED 03 22 0B 03 00 00 00 00

  $  000.当前诊断模式         $    $           $    $  ANS000.BYTE004  $  switxh(x1&0xff)0x01:y=@0008;0x03:y=@0009;default:y=@0003;
  $  001.方向盘转角           $    $  °       $    $  ANS001.BYTE004  $  if(((((x1<<8)+x2))>=0x0000)&&((((x1<<8)+x2))<=0x1E78)) y=((x1<<8)+x2)*0.1;else if(((((x1<<8)+x2))>=0x1E79)&&((((x1<<8)+x2))<=0x7FFE)) y=@008a;else if(((((x1<<8)+x2))>=0x7FFF)&&((((x1<<8)+x2))<=0x7FFF)) y=@016e;else if(((((x1<<8)+x2))>=0x8000)&&((((x1<<8)+x2))<=0x9E78)) y=(32768-((x1<<8)+x2))*0.1;else if(((((x1<<8)+x2))>=0x9E79)&&((((x1<<8)+x2))<=0xFFFE)) y=@008a;else if(((((x1<<8)+x2))>=0xFFFF)&&((((x1<<8)+x2))<=0xFFFF)) y=@016e;
  $  002.方向盘角速度         $    $  °/s     $    $  ANS002.BYTE004  $  if(((((x1<<8)+x2)&0x7FFF)>=0x0000)&&((((x1<<8)+x2)&0x7FFF)<=0x27B0)) y=(((x1<<8)+x2)&32676)*0.1;else if(((((x1<<8)+x2)&0x7FFF)>=0x27B1)&&((((x1<<8)+x2)&0x7FFF)<=0x7FFE)) y=@008a;else if(((((x1<<8)+x2)&0x7FFF)>=0x7FFF)&&((((x1<<8)+x2)&0x7FFF)<=0x7FFF)) y=@016e;
  $  003.转角传感器状态       $    $           $    $  ANS003.BYTE004  $  switxh(x1&0xff)0x00:y=@03a7;0x01:y=@03a8;0x02:y=@03a9;0x03:y=@03aa;default:y=@0003;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7E5 30 00 01 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
