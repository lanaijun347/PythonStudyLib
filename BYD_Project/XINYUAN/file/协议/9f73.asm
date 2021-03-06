
    车型ID：9f73

    模拟：协议模拟-->9f73

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7B2

进入命令:

  $~  REQ000:732 02 10 01 00 00 00 00 00       $~  ANS000:7B2 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:732 02 3E 00 00 00 00 00 00       $!  ANS000:7B2 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:732 03 19 02 FF 00 00 00 00       $#  ANS000:7B2 03 19 02 FF 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/11000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:732 04 14 FF FF FF 00 00 00       $$  ANS000:7B2 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:732 03 22 F1 86 00 00 00 00       $%  ANS000:7B2 03 22 F1 86 00 00 00 00
  $%  REQ001:732 03 22 F1 87 00 00 00 00       $%  ANS001:7B2 03 22 F1 87 00 00 00 00
  $%  REQ002:732 03 22 F1 89 00 00 00 00       $%  ANS002:7B2 03 22 F1 89 00 00 00 00
  $%  REQ003:732 03 22 F1 8A 00 00 00 00       $%  ANS003:7B2 03 22 F1 8A 00 00 00 00
  $%  REQ004:732 03 22 F1 8B 00 00 00 00       $%  ANS004:7B2 03 22 F1 8B 00 00 00 00
  $%  REQ005:732 03 22 F1 90 00 00 00 00       $%  ANS005:7B2 03 22 F1 90 00 00 00 00
  $%  REQ006:732 03 22 F1 93 00 00 00 00       $%  ANS006:7B2 03 22 F1 93 00 00 00 00
  $%  REQ007:732 03 22 F1 97 00 00 00 00       $%  ANS007:7B2 03 22 F1 97 00 00 00 00

  $%  000:当前诊断模式:                   $%    $%  ANS000.BYTE004  $%  if(x==0x01) y=@0196;else if(x==0x02) y=@0197;else if(x==0x03) y=@0198;else y=@0199;
  $%  001:汽车制造商BOM号:                $%    $%  ANS001.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21);
  $%  002:汽车制造商ECU软件版本号:        $%    $%  ANS002.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  003:供应商识别号:                   $%    $%  ANS003.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  004:ECU制造日期:                    $%    $%  ANS004.BYTE004  $%  HEX(X1,X2,X3,X4);
  $%  005:车辆VIN码:                      $%    $%  ANS005.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  006:系统供应商ECU硬件版本号:        $%    $%  ANS006.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  007:ECU控制器名称:                  $%    $%  ANS007.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:732 03 22 08 01 00 00 00 00       $  ANS000:7B2 03 22 08 01 00 00 00 00
  $  REQ001:732 03 22 08 02 00 00 00 00       $  ANS001:7B2 03 22 08 02 00 00 00 00
  $  REQ002:732 03 22 08 03 00 00 00 00       $  ANS002:7B2 03 22 08 03 00 00 00 00
  $  REQ003:732 03 22 08 04 00 00 00 00       $  ANS003:7B2 03 22 08 04 00 00 00 00
  $  REQ004:732 03 22 08 05 00 00 00 00       $  ANS004:7B2 03 22 08 05 00 00 00 00
  $  REQ005:732 03 22 08 06 00 00 00 00       $  ANS005:7B2 03 22 08 06 00 00 00 00
  $  REQ006:732 03 22 08 07 00 00 00 00       $  ANS006:7B2 03 22 08 07 00 00 00 00
  $  REQ007:732 03 22 08 08 00 00 00 00       $  ANS007:7B2 03 22 08 08 00 00 00 00
  $  REQ008:732 03 22 08 09 00 00 00 00       $  ANS008:7B2 03 22 08 09 00 00 00 00
  $  REQ009:732 03 22 08 10 00 00 00 00       $  ANS009:7B2 03 22 08 10 00 00 00 00
  $  REQ010:732 03 22 08 11 00 00 00 00       $  ANS010:7B2 03 22 08 11 00 00 00 00
  $  REQ011:732 03 22 08 12 00 00 00 00       $  ANS011:7B2 03 22 08 12 00 00 00 00
  $  REQ012:732 03 22 08 13 00 00 00 00       $  ANS012:7B2 03 22 08 13 00 00 00 00

  $  000.电机使能命令       $    $             $    $  ANS000.BYTE004  $  if(x==0x00) y=@0187;else if(x==0x01) y=@009b;else y=@0188;
  $  001.目标扭矩命令       $    $  牛米       $    $  ANS001.BYTE004  $  if((x1*256+x2)>0x4E20) y=@0000;else y=(x1*256+x2)-1000;
  $  002.电机工作状态       $    $             $    $  ANS002.BYTE004  $  if(x==0x00) y=@0187;else if(x==0x01) y=@009b;else y=@0188;
  $  003.电机实际扭矩       $    $  牛米       $    $  ANS003.BYTE004  $  if((x1*256+x2)>0x4E20) y=@0000;else y=(x1*256+x2)*0.1-1000;
  $  004.电机实际转速       $    $  转/分      $    $  ANS004.BYTE004  $  if((x1*256+x2)>0x9C40) y=@0000;else y=(x1*256+x2)-20000;
  $  005.电机最大扭矩       $    $  牛米       $    $  ANS005.BYTE004  $  if((x1*256+x2)>0x4E20) y=@0000;else y=(x1*256+x2)-1000;
  $  006.相电流有效值       $    $  安         $    $  ANS006.BYTE004  $  if((x1*256+x2)>0x2710) y=@0000;else y=(x1*256+x2)*0.1;
  $  007.直流母线电压       $    $  V          $    $  ANS007.BYTE004  $  if((x1*256+x2)>0x2710) y=@0000;else y=(x1*256+x2)*0.1;
  $  008.直流母线电流       $    $  安         $    $  ANS008.BYTE004  $  if((x1*256+x2)>0x4E20) y=@0000;else y=(x1*256+x2)*0.1-1000;
  $  009.IGBT模块温度       $    $  摄氏度     $    $  ANS009.BYTE004  $  if(x>0xA0) y=@0000;else y=x-40;
  $  010.电机温度           $    $  摄氏度     $    $  ANS010.BYTE004  $  if(x>0xB4) y=@0000;else y=x-40;
  $  011.电机编码           $    $             $    $  ANS011.BYTE004  $  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $  012.散热器温度         $    $  摄氏度     $    $  ANS012.BYTE004  $  if(x>0xA0) y=@0000;else y=x-40;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:732 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
