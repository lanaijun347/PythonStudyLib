
    车型ID：3c4c

    模拟：协议模拟-->3c4c

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~744,7A4

进入命令:

  $~  REQ000:7A4 02 10 01 00 00 00 00 00       $~  ANS000:744 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7A4 02 3E 00 00 00 00 00 00       $!  ANS000:744 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7A4 03 19 02 09 00 00 00 00       $#  ANS000:744 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/2b000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7A4 04 14 FF FF FF 00 00 00       $$  ANS000:744 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7A4 03 22 F1 83 00 00 00 00       $%  ANS000:744 03 22 F1 83 00 00 00 00
  $%  REQ001:7A4 03 22 F1 86 00 00 00 00       $%  ANS001:744 03 22 F1 86 00 00 00 00
  $%  REQ002:7A4 03 22 F1 87 00 00 00 00       $%  ANS002:744 03 22 F1 87 00 00 00 00
  $%  REQ003:7A4 03 22 F1 8A 00 00 00 00       $%  ANS003:744 03 22 F1 8A 00 00 00 00
  $%  REQ004:7A4 03 22 F1 8B 00 00 00 00       $%  ANS004:744 03 22 F1 8B 00 00 00 00
  $%  REQ005:7A4 03 22 F1 8C 00 00 00 00       $%  ANS005:744 03 22 F1 8C 00 00 00 00
  $%  REQ006:7A4 03 22 F1 90 00 00 00 00       $%  ANS006:744 03 22 F1 90 00 00 00 00
  $%  REQ007:7A4 03 22 F1 95 00 00 00 00       $%  ANS007:744 03 22 F1 95 00 00 00 00
  $%  REQ008:7A4 03 22 F1 97 00 00 00 00       $%  ANS008:744 03 22 F1 97 00 00 00 00
  $%  REQ009:7A4 03 22 F1 98 00 00 00 00       $%  ANS009:744 03 22 F1 98 00 00 00 00
  $%  REQ010:7A4 03 22 F1 99 00 00 00 00       $%  ANS010:744 03 22 F1 99 00 00 00 00

  $%  000:电控单元引导加载软件参考号:        $%    $%  ANS000.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  001:当前的诊断会话模式:                $%    $%  ANS001.BYTE004  $%  HEX(x1);
  $%  002:电控单元零件号:                    $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:系统供应商标识号:                  $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5);
  $%  004:电控单元制造日期:                  $%    $%  ANS004.BYTE004  $%  HEX(x1,x2,x3);
  $%  005:供应商电控单元序列号:              $%    $%  ANS005.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  006:车辆识别代码:                      $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  007:供应商软件版本号:                  $%    $%  ANS007.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  008:电控单元(ECU)系统名称:             $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  009:测试仪序列号:                      $%    $%  ANS009.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  010:软件刷新日期:                      $%    $%  ANS010.BYTE004  $%  HEX(x1,x2,x3);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7A4 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
