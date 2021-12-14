
    车型ID：3c3b

    模拟：协议模拟-->3c3b

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~715

进入命令:

  $~  REQ000:775 02 10 03 00 00 00 00 00       $~  ANS000:715 02 10 03 00 00 00 00 00

空闲命令:

  $!  REQ000:775 02 3E 00 00 00 00 00 00       $!  ANS000:715 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:775 03 19 02 09 00 00 00 00       $#  ANS000:715 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/d4000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:775 04 14 FF FF FF 00 00 00       $$  ANS000:715 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:775 03 22 F1 87 00 00 00 00       $%  ANS000:715 03 22 F1 87 00 00 00 00
  $%  REQ001:775 03 22 F1 8A 00 00 00 00       $%  ANS001:715 03 22 F1 8A 00 00 00 00
  $%  REQ002:775 03 22 F1 8B 00 00 00 00       $%  ANS002:715 03 22 F1 8B 00 00 00 00
  $%  REQ003:775 03 22 F1 8C 00 00 00 00       $%  ANS003:715 03 22 F1 8C 00 00 00 00
  $%  REQ004:775 03 22 F1 90 00 00 00 00       $%  ANS004:715 03 22 F1 90 00 00 00 00
  $%  REQ005:775 03 22 F1 91 00 00 00 00       $%  ANS005:715 03 22 F1 91 00 00 00 00
  $%  REQ006:775 03 22 F1 95 00 00 00 00       $%  ANS006:715 03 22 F1 95 00 00 00 00
  $%  REQ007:775 03 22 F1 97 00 00 00 00       $%  ANS007:715 03 22 F1 97 00 00 00 00

  $%  000:电控单元零件号:               $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15);
  $%  001:系统供应商标识号:             $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5);
  $%  002:电控单元制造日期:             $%    $%  ANS002.BYTE004  $%  HEX(x1,x2,x3);
  $%  003:供应商电控单元序列号:         $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29);
  $%  004:车辆识别代码:                 $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  005:电控单元硬件号:               $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  006:供应商软件版本号:             $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  007:电控单元(ECU)系统名称:        $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:775 03 22 B0 11 00 00 00 00       $  ANS000:715 03 22 B0 11 00 00 00 00
  $  REQ001:775 03 22 B0 20 00 00 00 00       $  ANS001:715 03 22 B0 20 00 00 00 00
  $  REQ002:775 03 22 B0 21 00 00 00 00       $  ANS002:715 03 22 B0 21 00 00 00 00
  $  REQ003:775 03 22 B0 2A 00 00 00 00       $  ANS003:715 03 22 B0 2A 00 00 00 00
  $  REQ004:775 03 22 B0 2E 00 00 00 00       $  ANS004:715 03 22 B0 2E 00 00 00 00
  $  REQ005:775 03 22 B0 2F 00 00 00 00       $  ANS005:715 03 22 B0 2F 00 00 00 00
  $  REQ006:775 03 22 B0 30 00 00 00 00       $  ANS006:715 03 22 B0 30 00 00 00 00
  $  REQ007:775 03 22 B0 31 00 00 00 00       $  ANS007:715 03 22 B0 31 00 00 00 00
  $  REQ008:775 03 22 B0 32 00 00 00 00       $  ANS008:715 03 22 B0 32 00 00 00 00
  $  REQ009:775 03 22 B0 33 00 00 00 00       $  ANS009:715 03 22 B0 33 00 00 00 00
  $  REQ010:775 03 22 B0 35 00 00 00 00       $  ANS010:715 03 22 B0 35 00 00 00 00
  $  REQ011:775 03 22 B0 36 00 00 00 00       $  ANS011:715 03 22 B0 36 00 00 00 00

  $  000.网络状态                           $    $       $    $  ANS000.BYTE004  $  if(((x>>7)&1))y=@0144;else y=@0145;
  $  001.3G网络类型                         $    $       $    $  ANS000.BYTE004  $  if(((x>>6)&1))y=@0142;else y=@0143;
  $  002.激活状态                           $    $       $    $  ANS001.BYTE004  $  if(((x>>7)&1))y=@002d;else y=@002c;
  $  003.车辆网主机系统(TBOX)激活种子       $    $       $    $  ANS002.BYTE004  $  HEX(x1,x2,x3,x4);
  $  004.国际移动用户识别码                 $    $       $    $  ANS003.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15);
  $  005.无钥匙启动系统(PEPS)鉴权密钥       $    $       $    $  ANS004.BYTE004  $  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $  006.车型类型                           $    $       $    $  ANS005.BYTE004  $  SPRINTF([%c%02x],x1,x2);
  $  007.车辆网主机系统(TBOX)型号           $    $       $    $  ANS006.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $  008.紧急救援电话号码                   $    $       $    $  ANS007.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18);
  $  009.集成电路卡识别码                   $    $       $    $  ANS008.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20);
  $  010.车辆网主机系统(TBOX)电话号码       $    $       $    $  ANS009.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15);
  $  011.车型配置                           $    $       $    $  ANS010.BYTE004  $  HEX(x1,x2,x3);
  $  012.TSP预制密钥                        $    $       $    $  ANS011.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:775 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
