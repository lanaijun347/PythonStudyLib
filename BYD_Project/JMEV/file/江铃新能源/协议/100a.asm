
    车型ID：100a

    模拟：协议模拟-->100a

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7A7

进入命令:

  $~  REQ000:727 02 10 01 00 00 00 00 00       $~  ANS000:7A7 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:727 02 3E 00 00 00 00 00 00       $!  ANS000:7A7 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:727 03 19 02 FF 00 00 00 00       $#  ANS000:7A7 03 19 02 FF 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/0a000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:727 04 14 FF FF FF 00 00 00       $$  ANS000:7A7 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:727 03 22 F1 95 00 00 00 00       $%  ANS000:7A7 03 22 F1 95 00 00 00 00

  $%  000:软件版本号:        $%    $%  ANS000.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:727 03 22 0F 01 00 00 00 00       $  ANS000:7A7 03 22 0F 01 00 00 00 00
  $  REQ001:727 03 22 0F 02 00 00 00 00       $  ANS001:7A7 03 22 0F 02 00 00 00 00
  $  REQ002:727 03 22 0F 03 00 00 00 00       $  ANS002:7A7 03 22 0F 03 00 00 00 00
  $  REQ003:727 03 22 0F 04 00 00 00 00       $  ANS003:7A7 03 22 0F 04 00 00 00 00
  $  REQ004:727 03 22 0F 05 00 00 00 00       $  ANS004:7A7 03 22 0F 05 00 00 00 00
  $  REQ005:727 03 22 0F 06 00 00 00 00       $  ANS005:7A7 03 22 0F 06 00 00 00 00
  $  REQ006:727 03 22 0F 07 00 00 00 00       $  ANS006:7A7 03 22 0F 07 00 00 00 00
  $  REQ007:727 03 22 0F 08 00 00 00 00       $  ANS007:7A7 03 22 0F 08 00 00 00 00
  $  REQ008:727 03 22 0F 09 00 00 00 00       $  ANS008:7A7 03 22 0F 09 00 00 00 00

  $  000.ECU(电子控制单元)供电电压       $    $  V          $    $  ANS000.BYTE004  $  y=x*0.1;
  $  001.车速                            $    $  Km/h       $    $  ANS001.BYTE004  $  y=(x1*256+x2)*0.1;
  $  002.转向角                          $    $  degree     $    $  ANS002.BYTE004  $  y=(x1*256+x2)*0.1-780;
  $  003.ECU(电子控制单元)温度           $    $  °C        $    $  ANS003.BYTE004  $  y=x*1-40;
  $  004.电机电流                        $    $  A          $    $  ANS004.BYTE004  $  y=(x1*256+x2)*0.1;
  $  005.方向盘扭矩                      $    $  Nm         $    $  ANS005.BYTE004  $  y=(x1*256+x2)*0.00234-19.2;
  $  006.扭矩传感器供电电压              $    $  V          $    $  ANS006.BYTE004  $  y=x*0.1;
  $  007.助力电机速度                    $    $  rpm        $    $  ANS007.BYTE004  $  y=x1*256+x2-12000;
  $  008.助力模式                        $    $             $    $  ANS008.BYTE004  $  y=x;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:727 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
