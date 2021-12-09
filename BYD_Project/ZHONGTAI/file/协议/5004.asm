
    车型ID：5004

    模拟：协议模拟-->5004

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:740 02 10 03 00 00 00 00 00       $~  ANS000:748 02 10 03 00 00 00 00 00

空闲命令:

  $!  REQ000:740 02 3E 00 00 00 00 00 00       $!  ANS000:748 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:740 03 19 02 09 00 00 00 00       $#  ANS000:748 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/24000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:740 04 14 FF FF FF 00 00 00       $$  ANS000:748 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:740 03 22 F1 83 00 00 00 00       $%  ANS000:748 03 22 F1 83 00 00 00 00
  $%  REQ001:740 03 22 F1 87 00 00 00 00       $%  ANS001:748 03 22 F1 87 00 00 00 00
  $%  REQ002:740 03 22 F1 8A 00 00 00 00       $%  ANS002:748 03 22 F1 8A 00 00 00 00
  $%  REQ003:740 03 22 F1 8B 00 00 00 00       $%  ANS003:748 03 22 F1 8B 00 00 00 00
  $%  REQ004:740 03 22 F1 8C 00 00 00 00       $%  ANS004:748 03 22 F1 8C 00 00 00 00
  $%  REQ005:740 03 22 F1 90 00 00 00 00       $%  ANS005:748 03 22 F1 90 00 00 00 00
  $%  REQ006:740 03 22 F1 91 00 00 00 00       $%  ANS006:748 03 22 F1 91 00 00 00 00
  $%  REQ007:740 03 22 F1 93 00 00 00 00       $%  ANS007:748 03 22 F1 93 00 00 00 00
  $%  REQ008:740 03 22 F1 95 00 00 00 00       $%  ANS008:748 03 22 F1 95 00 00 00 00
  $%  REQ009:740 03 22 F1 97 00 00 00 00       $%  ANS009:748 03 22 F1 97 00 00 00 00
  $%  REQ010:740 03 22 F1 99 00 00 00 00       $%  ANS010:748 03 22 F1 99 00 00 00 00

  $%  000:ECU加载软件参考号:          $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  001:零部件号:                   $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15);
  $%  002:ECU供应商编号:              $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5);
  $%  003:ECU生产日期:                $%    $%  ANS003.BYTE004  $%  HEX(x1,x2,x3);
  $%  004:供应商电控单元序列号:       $%    $%  ANS004.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  005:VIN码:                      $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  006:电控单元硬件号:             $%    $%  ANS006.BYTE004  $%  HEX(x1,x2,x3,x4,x5);
  $%  007:供应商硬件版本号:           $%    $%  ANS007.BYTE004  $%  HEX(x1,x2,x3,x4,x5);
  $%  008:供应商软件版本号:           $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11);
  $%  009:ECU 系统名称:               $%    $%  ANS009.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11);
  $%  010:软件刷新日期:               $%    $%  ANS010.BYTE004  $%  HEX(x1,x2,x3);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:740 03 22 F1 10 00 00 00 00       $  ANS000:748 03 22 F1 10 00 00 00 00
  $  REQ001:740 03 22 F1 11 00 00 00 00       $  ANS001:748 03 22 F1 11 00 00 00 00

  $  000.DCDC低压输出电压       $    $  V            $    $  ANS000.BYTE004  $  y=x1*25.6+x2*0.1;
  $  001.DCDC低压输出电流       $    $  A            $    $  ANS000.BYTE006  $  y=x1*25.6+x2*0.1;
  $  002.DCDC内部温度           $    $  degree C     $    $  ANS000.BYTE008  $  y=x1*256+x2*1-40;
  $  003.DCDC高压输入电压       $    $  V            $    $  ANS000.BYTE010  $  y=x1*25.6+x2*0.1;
  $  004.工作状态               $    $               $    $  ANS001.BYTE004  $  switxh(x1)0x01: y=@01e4;0x02: y=@00d8;0x03: y=@0101;0x04: y=@003d;0x05: y=@01e5;0x06: y=@01e6;default: y=@003f;
  $  005.输入电压状态           $    $               $    $  ANS001.BYTE005  $  switxh(x1)0x00: y=@0013;0x01: y=@01e7;0x02: y=@01e8;0x03: y=@0006;default: y=@003f;
  $  006.输出电压状态           $    $               $    $  ANS001.BYTE005  $  switxh(x1)0x00: y=@0013;0x04: y=@01e7;0x08: y=@01e8;0x0C: y=@0006;default: y=@003f;
  $  007.低压输出短路           $    $               $    $  ANS001.BYTE005  $  switxh(x1)0x00: y=@0013;0x10: y=@001d;0x20: y=@00d4;0x30: y=@0006;default: y=@003f;
  $  008.温度状态               $    $               $    $  ANS001.BYTE005  $  switxh(x1)0x00: y=@0013;0x40: y=@001d;0x80: y=@00d4;0xC0: y=@0006;default: y=@003f;
  $  009.电流传感器状态         $    $               $    $  ANS001.BYTE006  $  switxh(x1)0x00: y=@0013;0x01: y=@01e7;0x02: y=@01e8;0x03: y=@0006;default: y=@003f;
  $  010.温度传感器状态         $    $               $    $  ANS001.BYTE006  $  switxh(x1)0x00: y=@0013;0x04: y=@01e7;0x08: y=@01e8;0x0C: y=@0006;default: y=@003f;
  $  011.运行失败               $    $               $    $  ANS001.BYTE006  $  switxh(x1)0x00: y=@0013;0x10: y=@001d;0x20: y=@00d4;0x30: y=@0006;default: y=@003f;
  $  012.EEPROM状态             $    $               $    $  ANS001.BYTE006  $  switxh(x1)0x00: y=@0013;0x40: y=@001d;0x80: y=@00d4;0xC0: y=@0006;default: y=@003f;
  $  013.指令报文状态           $    $               $    $  ANS001.BYTE007  $  switxh(x1)0x00: y=@0013;0x01: y=@01e7;0x02: y=@01e8;0x03: y=@0006;default: y=@003f;
  $  014.BUS-OFF状态            $    $               $    $  ANS001.BYTE007  $  switxh(x1)0x00: y=@0013;0x04: y=@01e7;0x08: y=@01e8;0x0C: y=@0006;default: y=@003f;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:740 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
