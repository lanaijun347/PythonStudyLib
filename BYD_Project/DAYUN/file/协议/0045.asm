
    车型ID：0045

    模拟：协议模拟-->0045

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7AB

进入命令:

  $~  REQ000:72B 02 10 01 00 00 00 00 00       $~  ANS000:7AB 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:72B 02 3E 00 00 00 00 00 00       $!  ANS000:7AB 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:72B 03 19 02 09 00 00 00 00       $#  ANS000:7AB 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/36000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:72B 04 14 FF FF FF 00 00 00       $$  ANS000:7AB 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:72B 03 22 F1 87 00 00 00 00       $%  ANS000:7AB 03 22 F1 87 00 00 00 00
  $%  REQ001:72B 03 22 F1 8A 00 00 00 00       $%  ANS001:7AB 03 22 F1 8A 00 00 00 00
  $%  REQ002:72B 03 22 F1 93 00 00 00 00       $%  ANS002:7AB 03 22 F1 93 00 00 00 00
  $%  REQ003:72B 03 22 F1 95 00 00 00 00       $%  ANS003:7AB 03 22 F1 95 00 00 00 00
  $%  REQ004:72B 03 22 F1 9D 00 00 00 00       $%  ANS004:7AB 03 22 F1 9D 00 00 00 00
  $%  REQ005:72B 03 22 F1 8B 00 00 00 00       $%  ANS005:7AB 03 22 F1 8B 00 00 00 00
  $%  REQ006:72B 03 22 F1 90 00 00 00 00       $%  ANS006:7AB 03 22 F1 90 00 00 00 00
  $%  REQ007:72B 03 22 F1 8C 00 00 00 00       $%  ANS007:7AB 03 22 F1 8C 00 00 00 00
  $%  REQ008:72B 03 22 F1 98 00 00 00 00       $%  ANS008:7AB 03 22 F1 98 00 00 00 00

  $%  000:零部件件号:                     $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15);
  $%  001:系统供应商代码:                 $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  002:系统供应商ECU硬件版本号:        $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14);
  $%  003:系统供应商ECU软件版本号:        $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14);
  $%  004:ECU安装日期:                    $%    $%  ANS004.BYTE004  $%  HEX(x1,x2,x3,x4);
  $%  005:ECU制造日期:                    $%    $%  ANS005.BYTE004  $%  HEX(x1,x2,x3,x4);
  $%  006:VIN:                            $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  007:ECU序列号:                      $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  008:维修店代码/测试仪序列号:        $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:72B 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
