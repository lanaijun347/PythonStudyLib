
    车型ID：5705

    模拟：协议模拟-->5705

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:732 02 10 03 00 00 00 00 00       $~  ANS000:73A 02 10 03 00 00 00 00 00

空闲命令:

  $!  REQ000:732 02 3E 00 00 00 00 00 00       $!  ANS000:73A 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:732 03 19 02 09 00 00 00 00       $#  ANS000:73A 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/3e000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:732 04 14 FF FF FF 00 00 00       $$  ANS000:73A 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:732 03 22 F1 87 00 00 00 00       $%  ANS000:73A 03 22 F1 87 00 00 00 00
  $%  REQ001:732 03 22 F1 8A 00 00 00 00       $%  ANS001:73A 03 22 F1 8A 00 00 00 00
  $%  REQ002:732 03 22 F1 8B 00 00 00 00       $%  ANS002:73A 03 22 F1 8B 00 00 00 00
  $%  REQ003:732 03 22 F1 8C 00 00 00 00       $%  ANS003:73A 03 22 F1 8C 00 00 00 00
  $%  REQ004:732 03 22 F1 90 00 00 00 00       $%  ANS004:73A 03 22 F1 90 00 00 00 00
  $%  REQ005:732 03 22 F1 93 00 00 00 00       $%  ANS005:73A 03 22 F1 93 00 00 00 00
  $%  REQ006:732 03 22 F1 95 00 00 00 00       $%  ANS006:73A 03 22 F1 95 00 00 00 00
  $%  REQ007:732 03 22 F1 99 00 00 00 00       $%  ANS007:73A 03 22 F1 99 00 00 00 00

  $%  000:电控单元零件号:          $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  001:系统供应商标识号:        $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5);
  $%  002:ECU生产日期:             $%    $%  ANS002.BYTE004  $%  y=SPRINTF([20%02x%s%02x%s%02x%s],x1,@0007,x2,@0008,x3,@0009);
  $%  003:供应商ECU序列号:         $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  004:VIN码:                   $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  005:供应商硬件版本号:        $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  006:供应商软件版本号:        $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  007:编程日期:                $%    $%  ANS007.BYTE004  $%  y=SPRINTF([20%02x%s%02x%s%02x%s],x1,@0007,x2,@0008,x3,@0009);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:732 03 22 01 08 00 00 00 00       $  ANS000:73A 03 22 01 08 00 00 00 00
  $  REQ001:732 03 22 01 0A 00 00 00 00       $  ANS001:73A 03 22 01 0A 00 00 00 00
  $  REQ002:732 03 22 E1 01 00 00 00 00       $  ANS002:73A 03 22 E1 01 00 00 00 00
  $  REQ003:732 03 22 01 21 00 00 00 00       $  ANS003:73A 03 22 01 21 00 00 00 00
  $  REQ004:732 03 22 01 22 00 00 00 00       $  ANS004:73A 03 22 01 22 00 00 00 00
  $  REQ005:732 03 22 01 23 00 00 00 00       $  ANS005:73A 03 22 01 23 00 00 00 00
  $  REQ006:732 03 22 01 24 00 00 00 00       $  ANS006:73A 03 22 01 24 00 00 00 00
  $  REQ007:732 03 22 01 25 00 00 00 00       $  ANS007:73A 03 22 01 25 00 00 00 00
  $  REQ008:732 03 22 01 26 00 00 00 00       $  ANS008:73A 03 22 01 26 00 00 00 00
  $  REQ009:732 03 22 01 27 00 00 00 00       $  ANS009:73A 03 22 01 27 00 00 00 00
  $  REQ010:732 03 22 01 28 00 00 00 00       $  ANS010:73A 03 22 01 28 00 00 00 00
  $  REQ011:732 03 22 01 29 00 00 00 00       $  ANS011:73A 03 22 01 29 00 00 00 00
  $  REQ012:732 03 22 01 2A 00 00 00 00       $  ANS012:73A 03 22 01 2A 00 00 00 00
  $  REQ013:732 03 22 01 2B 00 00 00 00       $  ANS013:73A 03 22 01 2B 00 00 00 00
  $  REQ014:732 03 22 01 2D 00 00 00 00       $  ANS014:73A 03 22 01 2D 00 00 00 00
  $  REQ015:732 03 22 01 2E 00 00 00 00       $  ANS015:73A 03 22 01 2E 00 00 00 00
  $  REQ016:732 03 22 01 2F 00 00 00 00       $  ANS016:73A 03 22 01 2F 00 00 00 00
  $  REQ017:732 03 22 01 30 00 00 00 00       $  ANS017:73A 03 22 01 30 00 00 00 00
  $  REQ018:732 03 22 01 31 00 00 00 00       $  ANS018:73A 03 22 01 31 00 00 00 00
  $  REQ019:732 03 22 01 32 00 00 00 00       $  ANS019:73A 03 22 01 32 00 00 00 00
  $  REQ020:732 03 22 01 33 00 00 00 00       $  ANS020:73A 03 22 01 33 00 00 00 00
  $  REQ021:732 03 22 01 34 00 00 00 00       $  ANS021:73A 03 22 01 34 00 00 00 00
  $  REQ022:732 03 22 01 35 00 00 00 00       $  ANS022:73A 03 22 01 35 00 00 00 00
  $  REQ023:732 03 22 01 36 00 00 00 00       $  ANS023:73A 03 22 01 36 00 00 00 00
  $  REQ024:732 03 22 01 37 00 00 00 00       $  ANS024:73A 03 22 01 37 00 00 00 00
  $  REQ025:732 03 22 01 38 00 00 00 00       $  ANS025:73A 03 22 01 38 00 00 00 00

  $  000.车速                                $    $  Kmph         $    $  ANS000.BYTE004  $  y=x1;
  $  001.供电电压                            $    $  V            $    $  ANS001.BYTE004  $  y=x1*0.1;
  $  002.里程读数                            $    $  km           $    $  ANS002.BYTE004  $  y=x1*65536+x2*256+x3;
  $  003.电机转速                            $    $  rpm          $    $  ANS003.BYTE004  $  y=x1*256+x2;
  $  004.MCU(电机控制单元)直流主线电压       $    $  V            $    $  ANS004.BYTE004  $  y=x1*2.56+x2*0.01;
  $  005.MCU(电机控制单元)直流主线电流       $    $  A            $    $  ANS005.BYTE004  $  y=x1*2.56+x2*0.01;
  $  006.MCU(电机控制单元)电机相电流         $    $  A            $    $  ANS006.BYTE004  $  y=x1*2.56+x2*0.01;
  $  007.实际扭矩反馈                        $    $  Nm           $    $  ANS007.BYTE004  $  y=x1*0.392;
  $  008.MCU(电机控制单元)警告级别           $    $               $    $  ANS008.BYTE004  $  y=x1*256+x2;
  $  009.电机温度                            $    $  degree C     $    $  ANS009.BYTE004  $  y=x1-48;
  $  010.MCU(电机控制单元)硬件温度           $    $  degree C     $    $  ANS010.BYTE004  $  y=x1-48;
  $  011.BMS(电池管理系统)警告级别           $    $               $    $  ANS011.BYTE004  $  y=x1;
  $  012.高压断路器                          $    $  %            $    $  ANS012.BYTE004  $  y=x1*0.5;
  $  013.高压伏特                            $    $  V            $    $  ANS013.BYTE004  $  y=x1*25.6+x2*0.1;
  $  014.BMS(电池管理系统)电池最高温度       $    $  degree C     $    $  ANS014.BYTE004  $  y=x1-40;
  $  015.BMS(电池管理系统)电池最低温度       $    $  degree C     $    $  ANS015.BYTE004  $  y=x1-40;
  $  016.BMS(电池管理系统)电池最大电压       $    $  V            $    $  ANS016.BYTE004  $  y=x1*0.256+x2*0.001;
  $  017.BMS(电池管理系统)电池最小电压       $    $  V            $    $  ANS017.BYTE004  $  y=x1*0.256+x2*0.001;
  $  018.负继电器FB                          $    $  次           $    $  ANS018.BYTE004  $  y=x1;
  $  019.正继电器FB                          $    $               $    $  ANS019.BYTE004  $  y=x1;
  $  020.预充电继电器FB                      $    $               $    $  ANS020.BYTE004  $  y=x1;
  $  021.高压锁相开关                        $    $               $    $  ANS021.BYTE004  $  y=x1;
  $  022.安全气囊故障测试                    $    $               $    $  ANS022.BYTE004  $  y=x1;
  $  023.碰撞输出                            $    $               $    $  ANS023.BYTE004  $  y=x1;
  $  024.ACC踏板                             $    $  %            $    $  ANS024.BYTE004  $  y=x1;
  $  025.制动踏板                            $    $               $    $  ANS025.BYTE004  $  y=x1;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:732 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
