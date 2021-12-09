
    车型ID：1039

    模拟：协议模拟-->1039

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7A0

进入命令:

  $~  REQ000:720 02 10 01 00 00 00 00 00       $~  ANS000:7A0 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:720 02 3E 00 00 00 00 00 00       $!  ANS000:7A0 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:720 03 19 02 FF 00 00 00 00       $#  ANS000:7A0 03 19 02 FF 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/38000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:720 04 14 FF FF FF 00 00 00       $$  ANS000:7A0 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:720 03 22 F1 95 00 00 00 00       $%  ANS000:7A0 03 22 F1 95 00 00 00 00

  $%  000:软件版本号:        $%    $%  ANS000.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:720 03 22 08 03 00 00 00 00       $  ANS000:7A0 03 22 08 03 00 00 00 00
  $  REQ001:720 03 22 08 09 00 00 00 00       $  ANS001:7A0 03 22 08 09 00 00 00 00
  $  REQ002:720 03 22 08 0A 00 00 00 00       $  ANS002:7A0 03 22 08 0A 00 00 00 00
  $  REQ003:720 03 22 08 11 00 00 00 00       $  ANS003:7A0 03 22 08 11 00 00 00 00
  $  REQ004:720 03 22 08 12 00 00 00 00       $  ANS004:7A0 03 22 08 12 00 00 00 00
  $  REQ005:720 03 22 08 17 00 00 00 00       $  ANS005:7A0 03 22 08 17 00 00 00 00
  $  REQ006:720 03 22 08 16 00 00 00 00       $  ANS006:7A0 03 22 08 16 00 00 00 00
  $  REQ007:720 03 22 08 13 00 00 00 00       $  ANS007:7A0 03 22 08 13 00 00 00 00
  $  REQ008:720 03 22 08 14 00 00 00 00       $  ANS008:7A0 03 22 08 14 00 00 00 00
  $  REQ009:720 03 22 08 15 00 00 00 00       $  ANS009:7A0 03 22 08 15 00 00 00 00
  $  REQ010:720 03 22 08 10 00 00 00 00       $  ANS010:7A0 03 22 08 10 00 00 00 00
  $  REQ011:720 03 22 08 0B 00 00 00 00       $  ANS011:7A0 03 22 08 0B 00 00 00 00

  $  000.需求扭矩                           $    $  N.m     $    $  ANS000.BYTE004  $  y=x1*256+x2-500;
  $  001.实际扭矩                           $    $  N.m     $    $  ANS001.BYTE004  $  y=x1*256+x2-500;
  $  002.电机实际转速                       $    $  rpm     $    $  ANS002.BYTE004  $  y=x1*256+x2-30000;
  $  003.允许的最大扭矩                     $    $  N.m     $    $  ANS003.BYTE004  $  y=x1*256+x2-500;
  $  004.直流母线电压                       $    $  V       $    $  ANS004.BYTE004  $  y=x1*256+x2-30000;
  $  005.电机温度                           $    $  ℃      $    $  ANS005.BYTE004  $  y=x1*256+x2-40;
  $  006.IGBT(绝缘栅双极型晶体管)温度       $    $  ℃      $    $  ANS006.BYTE004  $  y=x1*256+x2-40;
  $  007.U相相电流                          $    $  A       $    $  ANS007.BYTE004  $  y=x1*256+x2-30000;
  $  008.V相相电流                          $    $  A       $    $  ANS008.BYTE004  $  y=x1*256+x2-30000;
  $  009.W相相电流                          $    $  A       $    $  ANS009.BYTE004  $  y=x1*256+x2-30000;
  $  010.电机电流有效值                     $    $  A       $    $  ANS010.BYTE004  $  y=x1*256+x2-30000;
  $  011.电机转子偏移角                     $    $  Deg     $    $  ANS011.BYTE004  $  y=(x1*256+x2)*0.1;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:720 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
