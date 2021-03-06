
    车型ID：65a6

    模拟：协议模拟-->65a6

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:7E4 02 10 01 00 00 00 00 00       $~  ANS000:7EC 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7E4 02 3E 00 00 00 00 00 00       $!  ANS000:7EC 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7E4 03 19 02 08 00 00 00 00       $#  ANS000:7EC 03 19 02 08 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/9c000000_2BYTE


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7E4 04 14 FF FF FF 00 00 00       $$  ANS000:7EC 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7E4 03 22 F1 91 00 00 00 00       $%  ANS000:7EC 03 22 F1 91 00 00 00 00
  $%  REQ001:7E4 03 22 F1 92 00 00 00 00       $%  ANS001:7EC 03 22 F1 92 00 00 00 00
  $%  REQ002:7E4 03 22 F1 93 00 00 00 00       $%  ANS002:7EC 03 22 F1 93 00 00 00 00
  $%  REQ003:7E4 03 22 F1 94 00 00 00 00       $%  ANS003:7EC 03 22 F1 94 00 00 00 00
  $%  REQ004:7E4 03 22 F1 95 00 00 00 00       $%  ANS004:7EC 03 22 F1 95 00 00 00 00
  $%  REQ005:7E4 03 22 F1 86 00 00 00 00       $%  ANS005:7EC 03 22 F1 86 00 00 00 00
  $%  REQ006:7E4 03 22 F1 87 00 00 00 00       $%  ANS006:7EC 03 22 F1 87 00 00 00 00
  $%  REQ007:7E4 03 22 F1 88 00 00 00 00       $%  ANS007:7EC 03 22 F1 88 00 00 00 00
  $%  REQ008:7E4 03 22 F1 89 00 00 00 00       $%  ANS008:7EC 03 22 F1 89 00 00 00 00
  $%  REQ009:7E4 03 22 F1 90 00 00 00 00       $%  ANS009:7EC 03 22 F1 90 00 00 00 00
  $%  REQ010:7E4 03 22 F1 97 00 00 00 00       $%  ANS010:7EC 03 22 F1 97 00 00 00 00
  $%  REQ011:7E4 03 22 F1 9D 00 00 00 00       $%  ANS011:7EC 03 22 F1 9D 00 00 00 00

  $%  000:力帆ECU硬件号:                $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  001:供应商硬件号:                 $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5);
  $%  002:供应商硬件版本号:             $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2);
  $%  003:供应商软件号:                 $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  004:供应商软件版本号:             $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2);
  $%  005:当前诊断模式:                 $%    $%  ANS005.BYTE004  $%  if(x1==0x01) y=@001e;else if(x1==0x03) y=@0020;else y=@0018;
  $%  006:整车厂定义的零件编号:         $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  007:整车厂 ECU 软件号:            $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  008:整车厂 ECU 软件版本号:        $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  009:车辆识别码:                   $%    $%  ANS009.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  010:系统名称:                     $%    $%  ANS010.BYTE004  $%  ASCII(x1,x2,x3,x4);
  $%  011:ECU 安装日期:                 $%    $%  ANS011.BYTE004  $%  SPRINTF([%2d%2d-%2d-%2d],x1,x2,x3,x4);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7E4 03 22 11 00 00 00 00 00       $  ANS000:7EC 03 22 11 00 00 00 00 00

  $  000.电池电压            $    $  V        $    $  ANS000.BYTE004  $  if(x1<=0xC6) y=x1*0.1;else y=19.8;
  $  001.硬件(HW)-扭矩       $    $  Nm       $    $  ANS000.BYTE005  $  y=x1*0.1-12.7;
  $  002.硬件(HW)-角度       $    $  Deg      $    $  ANS000.BYTE006  $  if(((x1-127)*256+x2-255)>1080) y=1080; else if(((x1-127)*256+x2-255)<(0-1080)) y=0-1080;else y=(x1-127)*256+x2-255;
  $  003.发动机转速          $    $  rpm      $    $  ANS000.BYTE008  $  if(x1<=0xCC) y=x1*40;else y=8192;
  $  004.汽车速度            $    $  km/h     $    $  ANS000.BYTE009  $  y=x1;
  $  005.反馈电机电流        $    $  A        $    $  ANS000.BYTE010  $  if((x1-127)<0) y=0;else if((x1-127)>75) y=75;else y=x1-127;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7E4 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
