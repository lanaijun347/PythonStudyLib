
    车型ID：1066

    模拟：协议模拟-->1066

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7E8

进入命令:

  $~  REQ000:7E0 02 10 01 00 00 00 00 00       $~  ANS000:7E8 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7E0 02 3E 00 00 00 00 00 00       $!  ANS000:7E8 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7E0 03 19 02 FF 00 00 00 00       $#  ANS000:7E8 03 19 02 FF 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/66000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7E0 04 14 FF FF FF 00 00 00       $$  ANS000:7E8 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7E0 03 22 F1 90 00 00 00 00       $%  ANS000:7E8 03 22 F1 90 00 00 00 00
  $%  REQ001:7E0 03 22 01 20 00 00 00 00       $%  ANS001:7E8 03 22 01 20 00 00 00 00
  $%  REQ002:7E0 03 22 F1 91 00 00 00 00       $%  ANS002:7E8 03 22 F1 91 00 00 00 00
  $%  REQ003:7E0 03 22 F1 95 00 00 00 00       $%  ANS003:7E8 03 22 F1 95 00 00 00 00

  $%  000:VIN:               $%    $%  ANS000.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  001:电机编码:          $%    $%  ANS001.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34,X35,X36,X37,X38,X39,X40,X41,X42,X43,X44,X45,X46,X47,X48,X49,X50);
  $%  002:车型码:            $%    $%  ANS002.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  003:软件版本号:        $%    $%  ANS003.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7E0 03 22 01 00 00 00 00 00       $  ANS000:7E8 03 22 01 00 00 00 00 00
  $  REQ001:7E0 03 22 01 01 00 00 00 00       $  ANS001:7E8 03 22 01 01 00 00 00 00
  $  REQ002:7E0 03 22 01 02 00 00 00 00       $  ANS002:7E8 03 22 01 02 00 00 00 00
  $  REQ003:7E0 03 22 01 03 00 00 00 00       $  ANS003:7E8 03 22 01 03 00 00 00 00
  $  REQ004:7E0 03 22 01 04 00 00 00 00       $  ANS004:7E8 03 22 01 04 00 00 00 00
  $  REQ005:7E0 03 22 01 05 00 00 00 00       $  ANS005:7E8 03 22 01 05 00 00 00 00
  $  REQ006:7E0 03 22 01 06 00 00 00 00       $  ANS006:7E8 03 22 01 06 00 00 00 00
  $  REQ007:7E0 03 22 01 07 00 00 00 00       $  ANS007:7E8 03 22 01 07 00 00 00 00
  $  REQ008:7E0 03 22 01 08 00 00 00 00       $  ANS008:7E8 03 22 01 08 00 00 00 00
  $  REQ009:7E0 03 22 01 09 00 00 00 00       $  ANS009:7E8 03 22 01 09 00 00 00 00
  $  REQ010:7E0 03 22 01 13 00 00 00 00       $  ANS010:7E8 03 22 01 13 00 00 00 00
  $  REQ011:7E0 03 22 01 14 00 00 00 00       $  ANS011:7E8 03 22 01 14 00 00 00 00
  $  REQ012:7E0 03 22 01 19 00 00 00 00       $  ANS012:7E8 03 22 01 19 00 00 00 00
  $  REQ013:7E0 03 22 01 1A 00 00 00 00       $  ANS013:7E8 03 22 01 1A 00 00 00 00

  $  000.1路油门电压              $    $  V      $    $  ANS000.BYTE004  $  y=(x1*256+x2)*0.001;
  $  001.2路油门电压              $    $  V      $    $  ANS001.BYTE004  $  y=(x1*256+x2)*0.001;
  $  002.1路制动电压              $    $  V      $    $  ANS002.BYTE004  $  y=(x1*256+x2)*0.001;
  $  003.2路制动电压              $    $  V      $    $  ANS003.BYTE004  $  y=(x1*256+x2)*0.001;
  $  004.油门踏板深度             $    $  %      $    $  ANS004.BYTE004  $  y=(x1*256+x2)*1;
  $  005.油门深度初始值           $    $  V      $    $  ANS005.BYTE004  $  y=(x1*256+x2)*0.001;
  $  006.油门深度最大值           $    $  V      $    $  ANS006.BYTE004  $  y=(x1*256+x2)*0.001;
  $  007.制动踏板深度             $    $  %      $    $  ANS007.BYTE004  $  y=(x1*256+x2)*1;
  $  008.制动踏板深度初始值       $    $  V      $    $  ANS008.BYTE004  $  y=(x1*256+x2)*0.001;
  $  009.制动踏板深度最大值       $    $  V      $    $  ANS009.BYTE004  $  y=(x1*256+x2)*0.001;
  $  010.CP(占空比)               $    $  %      $    $  ANS010.BYTE004  $  y=x1*256+x2;
  $  011.CC2                      $    $         $    $  ANS011.BYTE004  $  y=x1*256+x2;
  $  012.续驶里程                 $    $  Km     $    $  ANS012.BYTE004  $  y=(x1*256+x2)*0.1;
  $  013.允许锁电机命令           $    $         $    $  ANS013.BYTE004  $  y=x1*256+x2;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7E0 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
