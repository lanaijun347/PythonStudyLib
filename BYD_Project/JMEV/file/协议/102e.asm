
    车型ID：102e

    模拟：协议模拟-->102e

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7A1

进入命令:

  $~  REQ000:721 02 10 01 00 00 00 00 00       $~  ANS000:7A1 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:721 02 3E 00 00 00 00 00 00       $!  ANS000:7A1 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:721 03 19 02 FF 00 00 00 00       $#  ANS000:7A1 03 19 02 FF 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/2e000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:721 04 14 FF FF FF 00 00 00       $$  ANS000:7A1 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:721 03 22 F1 91 00 00 00 00       $%  ANS000:7A1 03 22 F1 91 00 00 00 00
  $%  REQ001:721 03 22 F1 93 00 00 00 00       $%  ANS001:7A1 03 22 F1 93 00 00 00 00
  $%  REQ002:721 03 22 F1 95 00 00 00 00       $%  ANS002:7A1 03 22 F1 95 00 00 00 00
  $%  REQ003:721 03 22 F1 97 00 00 00 00       $%  ANS003:7A1 03 22 F1 97 00 00 00 00

  $%  000:电池编码号:              $%    $%  ANS000.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34,X35,X36,X37);
  $%  001:BMS硬件版本号:           $%    $%  ANS001.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  002:BMS软件件版本号 :        $%    $%  ANS002.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  003:BMS软件修正号:           $%    $%  ANS003.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:721 03 22 09 00 00 00 00 00       $  ANS000:7A1 03 22 09 00 00 00 00 00
  $  REQ001:721 03 22 09 01 00 00 00 00       $  ANS001:7A1 03 22 09 01 00 00 00 00
  $  REQ002:721 03 22 09 02 00 00 00 00       $  ANS002:7A1 03 22 09 02 00 00 00 00
  $  REQ003:721 03 22 09 04 00 00 00 00       $  ANS003:7A1 03 22 09 04 00 00 00 00
  $  REQ004:721 03 22 09 05 00 00 00 00       $  ANS004:7A1 03 22 09 05 00 00 00 00
  $  REQ005:721 03 22 09 06 00 00 00 00       $  ANS005:7A1 03 22 09 06 00 00 00 00
  $  REQ006:721 03 22 09 07 00 00 00 00       $  ANS006:7A1 03 22 09 07 00 00 00 00
  $  REQ007:721 03 22 09 08 00 00 00 00       $  ANS007:7A1 03 22 09 08 00 00 00 00
  $  REQ008:721 03 22 09 09 00 00 00 00       $  ANS008:7A1 03 22 09 09 00 00 00 00
  $  REQ009:721 03 22 09 0A 00 00 00 00       $  ANS009:7A1 03 22 09 0A 00 00 00 00
  $  REQ010:721 03 22 09 0B 00 00 00 00       $  ANS010:7A1 03 22 09 0B 00 00 00 00
  $  REQ011:721 03 22 09 0C 00 00 00 00       $  ANS011:7A1 03 22 09 0C 00 00 00 00
  $  REQ012:721 03 22 09 14 00 00 00 00       $  ANS012:7A1 03 22 09 14 00 00 00 00
  $  REQ013:721 03 22 09 15 00 00 00 00       $  ANS013:7A1 03 22 09 15 00 00 00 00
  $  REQ014:721 03 22 09 16 00 00 00 00       $  ANS014:7A1 03 22 09 16 00 00 00 00
  $  REQ015:721 03 22 09 18 00 00 00 00       $  ANS015:7A1 03 22 09 18 00 00 00 00
  $  REQ016:721 03 22 09 19 00 00 00 00       $  ANS016:7A1 03 22 09 19 00 00 00 00
  $  REQ017:721 03 22 09 1A 00 00 00 00       $  ANS017:7A1 03 22 09 1A 00 00 00 00
  $  REQ018:721 03 22 09 1B 00 00 00 00       $  ANS018:7A1 03 22 09 1B 00 00 00 00
  $  REQ019:721 03 22 09 1C 00 00 00 00       $  ANS019:7A1 03 22 09 1C 00 00 00 00
  $  REQ020:721 03 22 09 1D 00 00 00 00       $  ANS020:7A1 03 22 09 1D 00 00 00 00
  $  REQ021:721 03 22 09 1E 00 00 00 00       $  ANS021:7A1 03 22 09 1E 00 00 00 00
  $  REQ022:721 03 22 09 1F 00 00 00 00       $  ANS022:7A1 03 22 09 1F 00 00 00 00

  $  000.BMS(电池控制器)供电电压               $    $  V       $    $  ANS000.BYTE004  $  y=x*0.1;
  $  001.BMS(电池控制器)总电压                 $    $  V       $    $  ANS001.BYTE004  $  y=(x1*256+x2)*0.1;
  $  002.BMS(电池控制器)电流                   $    $  A       $    $  ANS002.BYTE004  $  y=(x1*256+x2)*0.1-500;
  $  003.BMS(电池控制器)单体最大电压           $    $  V       $    $  ANS003.BYTE004  $  y=(x1*256+x2)*0.001;
  $  004.BMS(电池控制器)单体最大电压编号       $    $          $    $  ANS004.BYTE004  $  y=x*1;
  $  005.BMS(电池控制器)单体最小电压           $    $  V       $    $  ANS005.BYTE004  $  y=(x1*256+x2)*0.001;
  $  006.BMS(电池控制器)单体最小电压编号       $    $          $    $  ANS006.BYTE004  $  y=x*1;
  $  007.BMS(电池控制器)单体最大温度           $    $  ℃      $    $  ANS007.BYTE004  $  y=x*1-40;
  $  008.BMS(电池控制器)单体最大温度编号       $    $          $    $  ANS008.BYTE004  $  y=x*1;
  $  009.BMS(电池控制器)单体最小温度           $    $  ℃      $    $  ANS009.BYTE004  $  y=x*1-40;
  $  010.BMS(电池控制器)单体最小温度编号       $    $          $    $  ANS010.BYTE004  $  y=x*1;
  $  011.BMS(电池控制器)荷电状态               $    $  %       $    $  ANS011.BYTE004  $  y=x*1;
  $  012.电池SOC(充电状态)C                    $    $  %       $    $  ANS012.BYTE004  $  y=x*1;
  $  013.最大允许充电机充电电压                $    $  V       $    $  ANS013.BYTE004  $  y=(x1*256+x2)*0.01;
  $  014.最大允许充电机充电电流                $    $  A       $    $  ANS014.BYTE004  $  y=(x1*256+x2)*0.01;
  $  015.最大脉冲放电                          $    $  A       $    $  ANS015.BYTE004  $  y=(x1*256+x2)*0.5;
  $  016.最大脉冲FB电                          $    $  A       $    $  ANS016.BYTE004  $  y=(x1*256+x2)*0.5;
  $  017.最大持续放电                          $    $  A       $    $  ANS017.BYTE004  $  y=(x1*256+x2)*0.5;
  $  018.最大持续FB电                          $    $  A       $    $  ANS018.BYTE004  $  y=(x1*256+x2)*0.5;
  $  019.BMS(电池管理系统）绝缘阻抗            $    $  KΩ     $    $  ANS019.BYTE004  $  y=(x1*256+x2)*1;
  $  020.电池平均电流                          $    $  A       $    $  ANS020.BYTE004  $  y=x*1-40;
  $  021.电池单元电压                          $    $  V       $    $  ANS021.BYTE004  $  y=(x1*256+x2)*0.001;
  $  022.电池单元温度                          $    $  ℃      $    $  ANS022.BYTE004  $  y=x*1;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:721 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
