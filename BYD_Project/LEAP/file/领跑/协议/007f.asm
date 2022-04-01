
    车型ID：007f

    模拟：协议模拟-->007f

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~79E

进入命令:

  $~  REQ000:796 02 10 01 00 00 00 00 00       $~  ANS000:79E 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:796 02 3E 80 00 00 00 00 00       $!  ANS000:79E 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:796 03 22 F1 90 00 00 00 00       $%  ANS000:79E 03 22 F1 90 00 00 00 00
  $%  REQ001:796 03 22 F1 87 00 00 00 00       $%  ANS001:79E 03 22 F1 87 00 00 00 00
  $%  REQ002:796 03 22 F1 8A 00 00 00 00       $%  ANS002:79E 03 22 F1 8A 00 00 00 00
  $%  REQ003:796 03 22 F1 8B 00 00 00 00       $%  ANS003:79E 03 22 F1 8B 00 00 00 00
  $%  REQ004:796 03 22 F1 50 00 00 00 00       $%  ANS004:79E 03 22 F1 50 00 00 00 00
  $%  REQ005:796 03 22 F1 89 00 00 00 00       $%  ANS005:79E 03 22 F1 89 00 00 00 00
  $%  REQ006:796 03 22 F1 88 00 00 00 00       $%  ANS006:79E 03 22 F1 88 00 00 00 00
  $%  REQ007:796 03 22 F1 97 00 00 00 00       $%  ANS007:79E 03 22 F1 97 00 00 00 00
  $%  REQ008:796 03 22 F1 80 00 00 00 00       $%  ANS008:79E 03 22 F1 80 00 00 00 00
  $%  REQ009:796 03 22 F1 99 00 00 00 00       $%  ANS009:79E 03 22 F1 99 00 00 00 00
  $%  REQ010:796 03 22 FF 00 00 00 00 00       $%  ANS010:79E 03 22 FF 00 00 00 00 00
  $%  REQ011:796 03 22 F1 84 00 00 00 00       $%  ANS011:79E 03 22 F1 84 00 00 00 00
  $%  REQ012:796 03 22 F1 EF 00 00 00 00       $%  ANS012:79E 03 22 F1 EF 00 00 00 00

  $%  000:VIN码:                    $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  001:物料号:                   $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19);
  $%  002:系统供应商识别符:         $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  003:ECU生产日期:              $%    $%  ANS003.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  004:车厂ECU硬件版本号:        $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7);
  $%  005:车厂ECU软件版本号:        $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7);
  $%  006:车厂ECU软件号:            $%    $%  ANS006.BYTE004  $%  y=SPRINTF([%02X%02X%02X%02X],x1,x2,x3,x4);
  $%  007:产品型号:                 $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  008:Boot软件标识:             $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  009:升级程序日期:             $%    $%  ANS009.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  010:UDS版本号:                $%    $%  ANS010.BYTE004  $%  y=SPRINTF([%X.%X.%X.%X],x1,x2,x3,x4);
  $%  011:应用软件指纹:             $%    $%  ANS011.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  012:BOOT应用分区标识:         $%    $%  ANS012.BYTE004  $%  if(x==0) y=@000b; else if(x==1) y=@000c; else if(x==2) y=@0059;else y=@0008;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:796 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
