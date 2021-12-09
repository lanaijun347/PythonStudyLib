
    车型ID：10f1

    模拟：协议模拟-->10f1

;******************************************************************************************************************************************************

    通讯线: $~07$~07$~10400

进入命令:

  $~  REQ000:81 C0 F1 81 B3       $~  ANS000:81 C0 F1 81 B3
  $~  REQ001:82 C0 F1 10 81 C4       $~  ANS001:82 C0 F1 10 81 C4
  $~  REQ002:83 C0 F1 22 F1 8A D1       $~  ANS002:83 C0 F1 22 F1 8A D1

空闲命令:

  $!  REQ000:82 C0 F1 3E 00 71       $!  ANS000:82 C0 F1 3E 00 71

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:84 C0 F1 18 00 FF 00 4C       $#  ANS000:84 C0 F1 18 00 FF 00 4C

		控制公式：
			y=(x1<<8)+x2; 

  帧长控制故障码个数，从$#ANS000.BYTE5$#开始每$#3$#个字节表示一个故障码，前$#2$#表示码号。

  码库:  $*$*10F1


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:83 C0 F1 14 FF 00 47       $$  ANS000:83 C0 F1 14 FF 00 47

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:82 C0 F1 1A 90 DD       $%  ANS000:82 C0 F1 1A 90 DD
  $%  REQ001:82 C0 F1 1A 92 DF       $%  ANS001:82 C0 F1 1A 92 DF
  $%  REQ002:82 C0 F1 1A 93 E0       $%  ANS002:82 C0 F1 1A 93 E0
  $%  REQ003:82 C0 F1 1A 94 E1       $%  ANS003:82 C0 F1 1A 94 E1
  $%  REQ004:82 C0 F1 1A 95 E2       $%  ANS004:82 C0 F1 1A 95 E2
  $%  REQ005:82 C0 F1 1A B2 FF       $%  ANS005:82 C0 F1 1A B2 FF
  $%  REQ006:82 C0 F1 1A CB 18       $%  ANS006:82 C0 F1 1A CB 18

  $%  000:VIN码:                $%    $%  ANS000.BYTE005  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  001:ECU硬件号:            $%    $%  ANS001.BYTE005  $%  ASCII(x1,x2,x3);
  $%  002:ECU硬件版本号:        $%    $%  ANS002.BYTE005  $%  ASCII(x1,x2,x3,x4,x5,x6,x7);
  $%  003:ECU软件号:            $%    $%  ANS003.BYTE005  $%  ASCII(x1,x2,x3);
  $%  004:ECU软件版本号:        $%    $%  ANS004.BYTE005  $%  ASCII(x1,x2,x3,x4,x5,x6,x7);
  $%  005:制造日期:             $%    $%  ANS005.BYTE005  $%  HEX(x1,x2,x3,x4);
  $%  006:零件号:               $%    $%  ANS006.BYTE005  $%  y=x1*256*256*256+x2*256*256+x3*256+x4;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:82 C0 F1 21 D0 24       $  ANS000:82 C0 F1 21 D0 24
  $  REQ001:82 C0 F1 21 D1 25       $  ANS001:82 C0 F1 21 D1 25
  $  REQ002:82 C0 F1 21 D2 26       $  ANS002:82 C0 F1 21 D2 26
  $  REQ003:82 C0 F1 21 D3 27       $  ANS003:82 C0 F1 21 D3 27
  $  REQ004:82 C0 F1 21 D6 2A       $  ANS004:82 C0 F1 21 D6 2A
  $  REQ005:82 C0 F1 21 D7 2B       $  ANS005:82 C0 F1 21 D7 2B

  $  000.左前传感器ID             $    $               $    $  ANS000.BYTE005  $  HEX(x1,x2,x3,x4);
  $  001.右前传感器ID             $    $               $    $  ANS000.BYTE009  $  HEX(x1,x2,x3,x4);
  $  002.左后传感器ID             $    $               $    $  ANS000.BYTE013  $  HEX(x1,x2,x3,x4);
  $  003.右后传感器ID             $    $               $    $  ANS000.BYTE017  $  HEX(x1,x2,x3,x4);
  $  004.左前胎压压力             $    $  kPa          $    $  ANS001.BYTE005  $  HEX(x1);
  $  005.右前胎压压力             $    $  kPa          $    $  ANS001.BYTE006  $  HEX(x1);
  $  006.左后胎压压力             $    $  kPa          $    $  ANS001.BYTE007  $  HEX(x1);
  $  007.右后胎压压力             $    $  kPa          $    $  ANS001.BYTE008  $  HEX(x1);
  $  008.左前胎压温度             $    $  degree C     $    $  ANS002.BYTE005  $  HEX(x1);
  $  009.右前胎压温度             $    $  degree C     $    $  ANS002.BYTE005  $  HEX(x1);
  $  010.左后胎压温度             $    $  degree C     $    $  ANS002.BYTE005  $  HEX(x1);
  $  011.右后胎压温度             $    $  degree C     $    $  ANS002.BYTE005  $  HEX(x1);
  $  012.前胎压压力标准值         $    $  kPa          $    $  ANS003.BYTE005  $  HEX(x1);
  $  013.后胎压压力标准值         $    $  kPa          $    $  ANS003.BYTE006  $  HEX(x1);
  $  014.ECU输入电压              $    $  V            $    $  ANS004.BYTE005  $  HEX(x1,x2);
  $  015.前高压力报警偏离值       $    $  kPa          $    $  ANS005.BYTE005  $  HEX(x1);
  $  016.后高压力报警偏离值       $    $  kPa          $    $  ANS005.BYTE005  $  HEX(x1);

;******************************************************************************************************************************************************

