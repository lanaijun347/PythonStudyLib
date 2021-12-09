
    车型ID：6597

    模拟：协议模拟-->6597

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

  $*$*DTC/7f010000_2BYTE


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7E4 04 14 FF FF FF 00 00 00       $$  ANS000:7EC 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7E4 03 22 F1 86 00 00 00 00       $%  ANS000:7EC 03 22 F1 86 00 00 00 00
  $%  REQ001:7E4 03 22 F1 87 00 00 00 00       $%  ANS001:7EC 03 22 F1 87 00 00 00 00
  $%  REQ002:7E4 03 22 F1 88 00 00 00 00       $%  ANS002:7EC 03 22 F1 88 00 00 00 00
  $%  REQ003:7E4 03 22 F1 89 00 00 00 00       $%  ANS003:7EC 03 22 F1 89 00 00 00 00
  $%  REQ004:7E4 03 22 F1 8A 00 00 00 00       $%  ANS004:7EC 03 22 F1 8A 00 00 00 00
  $%  REQ005:7E4 03 22 F1 8B 00 00 00 00       $%  ANS005:7EC 03 22 F1 8B 00 00 00 00
  $%  REQ006:7E4 03 22 F1 8C 00 00 00 00       $%  ANS006:7EC 03 22 F1 8C 00 00 00 00
  $%  REQ007:7E4 03 22 F1 90 00 00 00 00       $%  ANS007:7EC 03 22 F1 90 00 00 00 00
  $%  REQ008:7E4 03 22 F1 91 00 00 00 00       $%  ANS008:7EC 03 22 F1 91 00 00 00 00
  $%  REQ009:7E4 03 22 F1 93 00 00 00 00       $%  ANS009:7EC 03 22 F1 93 00 00 00 00
  $%  REQ010:7E4 03 22 F1 95 00 00 00 00       $%  ANS010:7EC 03 22 F1 95 00 00 00 00
  $%  REQ011:7E4 03 22 F1 97 00 00 00 00       $%  ANS011:7EC 03 22 F1 97 00 00 00 00
  $%  REQ012:7E4 03 22 F1 9D 00 00 00 00       $%  ANS012:7EC 03 22 F1 9D 00 00 00 00

  $%  000:当前服务器的诊断会话模式:        $%    $%  ANS000.BYTE004  $%  if(x==0x01) y=@0019;else if(x==0x02) y=@001a;else if(x==0x03) y=@049b;else y=@0018; 
  $%  001:整车厂备件号:                    $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  002:整车厂软件号:                    $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  003:整车厂ECU软件版本号:             $%    $%  ANS003.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  004:ECU供应商标识符:                 $%    $%  ANS004.BYTE004  $%  HEX(x1,x2,x3,x4,x5);
  $%  005:ECU制造日期:                     $%    $%  ANS005.BYTE004  $%  y=SPRINTF([%02x%02x-%x-%x],x1,x2,x3,x4);
  $%  006:ECU序列号:                       $%    $%  ANS006.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6);
  $%  007:车辆标识符号:                    $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  008:整车厂ECU硬件部件号:             $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  009:供应商ECU硬件版本:               $%    $%  ANS009.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12);
  $%  010:供应商ECU软件版本:               $%    $%  ANS010.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  011:系统名称:                        $%    $%  ANS011.BYTE004  $%  ASCII(x1,x2,x3,x4);
  $%  012:ECU安装日期:                     $%    $%  ANS012.BYTE004  $%  y=SPRINTF([%02x%02x-%x-%x],x1,x2,x3,x4);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7E4 03 22 02 00 00 00 00 00       $  ANS000:7EC 03 22 02 00 00 00 00 00
  $  REQ001:7E4 03 22 02 01 00 00 00 00       $  ANS001:7EC 03 22 02 01 00 00 00 00
  $  REQ002:7E4 03 22 02 02 00 00 00 00       $  ANS002:7EC 03 22 02 02 00 00 00 00
  $  REQ003:7E4 03 22 02 03 00 00 00 00       $  ANS003:7EC 03 22 02 03 00 00 00 00
  $  REQ004:7E4 03 22 02 04 00 00 00 00       $  ANS004:7EC 03 22 02 04 00 00 00 00
  $  REQ005:7E4 03 22 02 05 00 00 00 00       $  ANS005:7EC 03 22 02 05 00 00 00 00

  $  000.发送机转速       $    $  rpm      $    $  ANS000.BYTE004  $  y=(x1*256+x2)*0.25;
  $  001.汽车速度         $    $  km/h     $    $  ANS001.BYTE004  $  y=x;
  $  002.电机电流         $    $  Arms     $    $  ANS002.BYTE004  $  y=(x1*256+x2)/10;
  $  003.转向力矩         $    $  Nm       $    $  ANS003.BYTE004  $  y=x/10-12.7;
  $  004.内部温度         $    $  degC     $    $  ANS004.BYTE004  $  y=x-40;
  $  005.电源电压         $    $  V        $    $  ANS005.BYTE004  $  y=x/10;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7E4 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
