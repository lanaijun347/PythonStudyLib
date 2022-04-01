
    车型ID：0067

    模拟：协议模拟-->0067

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~749

进入命令:

  $~  REQ000:741 02 10 01 00 00 00 00 00       $~  ANS000:749 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:741 02 3E 80 00 00 00 00 00       $!  ANS000:749 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:741 03 19 02 09 00 00 00 00       $#  ANS000:749 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/45000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:741 04 14 FF FF FF 00 00 00       $$  ANS000:749 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:741 03 22 F1 90 00 00 00 00       $%  ANS000:749 03 22 F1 90 00 00 00 00
  $%  REQ001:741 03 22 F1 87 00 00 00 00       $%  ANS001:749 03 22 F1 87 00 00 00 00
  $%  REQ002:741 03 22 F1 8A 00 00 00 00       $%  ANS002:749 03 22 F1 8A 00 00 00 00
  $%  REQ003:741 03 22 F1 8B 00 00 00 00       $%  ANS003:749 03 22 F1 8B 00 00 00 00
  $%  REQ004:741 03 22 F1 50 00 00 00 00       $%  ANS004:749 03 22 F1 50 00 00 00 00
  $%  REQ005:741 03 22 F1 89 00 00 00 00       $%  ANS005:749 03 22 F1 89 00 00 00 00
  $%  REQ006:741 03 22 F1 88 00 00 00 00       $%  ANS006:749 03 22 F1 88 00 00 00 00
  $%  REQ007:741 03 22 F1 97 00 00 00 00       $%  ANS007:749 03 22 F1 97 00 00 00 00
  $%  REQ008:741 03 22 F1 80 00 00 00 00       $%  ANS008:749 03 22 F1 80 00 00 00 00
  $%  REQ009:741 03 22 F1 83 00 00 00 00       $%  ANS009:749 03 22 F1 83 00 00 00 00
  $%  REQ010:741 03 22 F1 84 00 00 00 00       $%  ANS010:749 03 22 F1 84 00 00 00 00
  $%  REQ011:741 03 22 F1 99 00 00 00 00       $%  ANS011:749 03 22 F1 99 00 00 00 00
  $%  REQ012:741 03 22 F1 9B 00 00 00 00       $%  ANS012:749 03 22 F1 9B 00 00 00 00
  $%  REQ013:741 03 22 FF 00 00 00 00 00       $%  ANS013:749 03 22 FF 00 00 00 00 00

  $%  000:VIN码:                    $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  001:物料号:                   $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19);
  $%  002:系统供应商识别符:         $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  003:ECU生产日期:              $%    $%  ANS003.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  004:车厂ECU硬件版本号:        $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7);
  $%  005:车厂ECU软件版本号:        $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  006:车厂ECU软件号:            $%    $%  ANS006.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  007:产品型号:                 $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  008:Boot软件标识:             $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  009:Boot软件指纹:             $%    $%  ANS009.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  010:应用软件指纹:             $%    $%  ANS010.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  011:升级程序日期:             $%    $%  ANS011.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  012:标定日期:                 $%    $%  ANS012.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  013:UDS版本号:                $%    $%  ANS013.BYTE004  $%  y=SPRINTF([%X.%X.%X.%X],x1,x2,x3,x4);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:741 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
