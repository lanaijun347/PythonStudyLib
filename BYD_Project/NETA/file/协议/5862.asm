
    车型ID：5862

    模拟：协议模拟-->5862

;******************************************************************************************************************************************************

    通讯线: $~01$~09$~500k$~717

进入命令:

  $~  REQ000:707 02 10 03 FF FF FF FF FF       $~  ANS000:717 02 10 03 FF FF FF FF FF
  $~  REQ001:707 02 27 03 FF FF FF FF FF       $~  ANS001:717 02 27 03 FF FF FF FF FF
  $~  REQ002:707 04 27 04 1E B0 FF FF FF       $~  ANS002:717 04 27 04 1E B0 FF FF FF

空闲命令:

  $!  REQ000:707 02 3E 00 FF FF FF FF FF       $!  ANS000:717 02 3E 00 FF FF FF FF FF

退出命令:

  $@  REQ000:707 02 10 01 FF FF FF FF FF       $@  ANS000:717 02 10 01 FF FF FF FF FF


;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:707 03 19 02 29 FF FF FF FF       $#  ANS000:717 03 19 02 29 FF FF FF FF

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/9c000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:707 04 14 FF FF FF FF FF FF       $$  ANS000:717 04 14 FF FF FF FF FF FF

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:707 03 22 F1 80 FF FF FF FF       $%  ANS000:717 03 22 F1 80 FF FF FF FF
  $%  REQ001:707 03 22 F1 86 FF FF FF FF       $%  ANS001:717 03 22 F1 86 FF FF FF FF
  $%  REQ002:707 03 22 F1 87 FF FF FF FF       $%  ANS002:717 03 22 F1 87 FF FF FF FF
  $%  REQ003:707 03 22 F1 88 FF FF FF FF       $%  ANS003:717 03 22 F1 88 FF FF FF FF
  $%  REQ004:707 03 22 F1 B0 FF FF FF FF       $%  ANS004:717 03 22 F1 B0 FF FF FF FF
  $%  REQ005:707 03 22 F1 8A FF FF FF FF       $%  ANS005:717 03 22 F1 8A FF FF FF FF
  $%  REQ006:707 03 22 F1 8B FF FF FF FF       $%  ANS006:717 03 22 F1 8B FF FF FF FF
  $%  REQ007:707 03 22 F1 8C FF FF FF FF       $%  ANS007:717 03 22 F1 8C FF FF FF FF
  $%  REQ008:707 03 22 F1 90 FF FF FF FF       $%  ANS008:717 03 22 F1 90 FF FF FF FF
  $%  REQ009:707 03 22 F1 91 FF FF FF FF       $%  ANS009:717 03 22 F1 91 FF FF FF FF
  $%  REQ010:707 03 22 F1 98 FF FF FF FF       $%  ANS010:717 03 22 F1 98 FF FF FF FF
  $%  REQ011:707 03 22 F1 99 FF FF FF FF       $%  ANS011:717 03 22 F1 99 FF FF FF FF
  $%  REQ012:707 03 22 F1 BF FF FF FF FF       $%  ANS012:717 03 22 F1 BF FF FF FF FF
  $%  REQ013:707 03 22 F1 C0 FF FF FF FF       $%  ANS013:717 03 22 F1 C0 FF FF FF FF
  $%  REQ014:707 03 22 F1 9D FF FF FF FF       $%  ANS014:717 03 22 F1 9D FF FF FF FF
  $%  REQ015:707 03 22 F2 00 FF FF FF FF       $%  ANS015:717 03 22 F2 00 FF FF FF FF
  $%  REQ016:707 03 22 F1 D0 FF FF FF FF       $%  ANS016:717 03 22 F1 D0 FF FF FF FF

  $%  000:Bootloader软件版本号:                    $%    $%  ANS000.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  001:当前诊断任务模式:                        $%    $%  ANS001.BYTE004  $%  switxh(x) 0x01:y=@0384;0x02:y=@0191;0x03:y=@0385;default: y=@0007;
  $%  002:整车零部件号:                            $%    $%  ANS002.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13);
  $%  003:应用软件版本号（正常升级版本）:          $%    $%  ANS003.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  004:应用软件版本号（固定版本）:              $%    $%  ANS004.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  005:系统供应商代码:                          $%    $%  ANS005.BYTE004  $%  y=ASCII(x1,x2,x3);
  $%  006:ECU生产日期:                             $%    $%  ANS006.BYTE004  $%  y=HEX(x1,x2,x3,x4);
  $%  007:控制器序列号:                            $%    $%  ANS007.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11);
  $%  008:整车VIN:                                 $%    $%  ANS008.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  009:硬件版本号:                              $%    $%  ANS009.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5);
  $%  010:TesterSerialNumberDataIdentifier:        $%    $%  ANS010.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  011:刷新日期:                                $%    $%  ANS011.BYTE004  $%  y=HEX(x1,x2,x3,x4);
  $%  012:应用硬件版本号（固定版本）:              $%    $%  ANS012.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5);
  $%  013:软件总成版本号:                          $%    $%  ANS013.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  014:ECU装配日期:                             $%    $%  ANS014.BYTE004  $%  y=HEX(x1,x2,x3,x4);
  $%  015:电机编码:                                $%    $%  ANS015.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11);
  $%  016:软件零件总成号:                          $%    $%  ANS016.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:707 03 22 08 01 FF FF FF FF       $  ANS000:717 03 22 08 01 FF FF FF FF
  $  REQ001:707 03 22 08 02 FF FF FF FF       $  ANS001:717 03 22 08 02 FF FF FF FF
  $  REQ002:707 03 22 08 03 FF FF FF FF       $  ANS002:717 03 22 08 03 FF FF FF FF
  $  REQ003:707 03 22 08 04 FF FF FF FF       $  ANS003:717 03 22 08 04 FF FF FF FF
  $  REQ004:707 03 22 08 05 FF FF FF FF       $  ANS004:717 03 22 08 05 FF FF FF FF
  $  REQ005:707 03 22 08 06 FF FF FF FF       $  ANS005:717 03 22 08 06 FF FF FF FF
  $  REQ006:707 03 22 08 07 FF FF FF FF       $  ANS006:717 03 22 08 07 FF FF FF FF
  $  REQ007:707 03 22 08 08 FF FF FF FF       $  ANS007:717 03 22 08 08 FF FF FF FF
  $  REQ008:707 03 22 08 09 FF FF FF FF       $  ANS008:717 03 22 08 09 FF FF FF FF
  $  REQ009:707 03 22 08 0A FF FF FF FF       $  ANS009:717 03 22 08 0A FF FF FF FF
  $  REQ010:707 03 22 08 0B FF FF FF FF       $  ANS010:717 03 22 08 0B FF FF FF FF
  $  REQ011:707 03 22 08 10 FF FF FF FF       $  ANS011:717 03 22 08 10 FF FF FF FF
  $  REQ012:707 03 22 08 11 FF FF FF FF       $  ANS012:717 03 22 08 11 FF FF FF FF
  $  REQ013:707 03 22 08 12 FF FF FF FF       $  ANS013:717 03 22 08 12 FF FF FF FF
  $  REQ014:707 03 22 08 16 FF FF FF FF       $  ANS014:717 03 22 08 16 FF FF FF FF
  $  REQ015:707 03 22 08 17 FF FF FF FF       $  ANS015:717 03 22 08 17 FF FF FF FF
  $  REQ016:707 03 22 08 19 FF FF FF FF       $  ANS016:717 03 22 08 19 FF FF FF FF
  $  REQ017:707 03 22 08 1D FF FF FF FF       $  ANS017:717 03 22 08 1D FF FF FF FF
  $  REQ018:707 03 22 08 2A FF FF FF FF       $  ANS018:717 03 22 08 2A FF FF FF FF
  $  REQ019:707 03 22 08 2B FF FF FF FF       $  ANS019:717 03 22 08 2B FF FF FF FF
  $  REQ020:707 03 22 08 2C FF FF FF FF       $  ANS020:717 03 22 08 2C FF FF FF FF
  $  REQ021:707 03 22 08 2D FF FF FF FF       $  ANS021:717 03 22 08 2D FF FF FF FF
  $  REQ022:707 03 22 08 2E FF FF FF FF       $  ANS022:717 03 22 08 2E FF FF FF FF

  $  000.MCU使能命令                                     $    $               $    $  ANS000.BYTE004  $  switxh(x) 0x00:y=@0112;0x01:y=@0101;default: y=@0007;
  $  001.目标工作模式                                    $    $               $    $  ANS001.BYTE004  $  switxh(x) 0x00:y=@0113;0x01:y=@0042;0x02:y=@0114;0x03:y=@0115;0x0a:y=@0204;0x0b:y=@0205;0x12:y=@0206;0x1a:y=@0207;default: y=@0007;
  $  002.目标转矩命令                                    $    $  Nm           $    $  ANS002.BYTE004  $  y=x1*256+x2-500;
  $  003.目标转速命令                                    $    $  r/min        $    $  ANS003.BYTE004  $  y=x1*256+x2-12000;
  $  004.档位信号                                        $    $               $    $  ANS004.BYTE004  $  switxh(x) 0x00:y=@0113;0x01:y=@0042;0x02:y=@0114;0x03:y=@0115;0x0a:y=@0204;0x0b:y=@0205;0x12:y=@0206;0x1a:y=@0207;default: y=@0007;
  $  005.主动放电命令                                    $    $               $    $  ANS005.BYTE004  $  switxh(x) 0x00:y=@0008;0x01:y=@0009;default: y=@0007;
  $  006.防溜坡命令                                      $    $               $    $  ANS006.BYTE004  $  switxh(x) 0x00:y=@0100;0x01:y=@0101;default: y=@0007;
  $  007.实际工作模式                                    $    $               $    $  ANS007.BYTE004  $  switxh(x) 0x00:y=@0113;0x01:y=@0042;0x02:y=@0114;0x03:y=@0115;0x0a:y=@0204;0x0b:y=@0205;0x12:y=@0206;0x1a:y=@0207;default: y=@0007;
  $  008.实际反馈转矩                                    $    $  Nm           $    $  ANS008.BYTE004  $  y=x1*256+x2-500;
  $  009.实际反馈转速                                    $    $  r/min        $    $  ANS009.BYTE004  $  y=x1*256+x2-12000;
  $  010.旋变初始偏移位置                                $    $  degree       $    $  ANS010.BYTE004  $  y=(x1*256+x2)*0.1-360;
  $  011.电机电流有效值                                  $    $  A            $    $  ANS011.BYTE004  $  y=(x1*256+x2)*0.125-1000;
  $  012.允许最大输出转矩                                $    $  Nm           $    $  ANS012.BYTE004  $  y=x1*256+x2-500;
  $  013.直流母线电压                                    $    $  V            $    $  ANS013.BYTE004  $  y=x1*256+x2-500;
  $  014.IGBT温度                                        $    $  degree C     $    $  ANS014.BYTE004  $  y=x-40;
  $  015.电机温度                                        $    $  degree C     $    $  ANS015.BYTE004  $  y=x-40;
  $  016.钥匙信号                                        $    $               $    $  ANS016.BYTE004  $  switxh(x) 0x00:y=OFF;0x01:y=KEY_ON;default: y=@0007;
  $  017.12蓄电池电压                                    $    $  V            $    $  ANS017.BYTE004  $  y=x1*256+x2-12;
  $  018.MCU总故障编码0-DRV                              $    $               $    $  ANS018.BYTE004  $  switxh(x&0x02) 0x02:y=1;default: y=0;
  $  019.MCU总故障编码0-软件过流                         $    $               $    $  ANS018.BYTE004  $  switxh(x&0x04) 0x04:y=1;default: y=0;
  $  020.MCU总故障编码0-硬件过流                         $    $               $    $  ANS018.BYTE004  $  switxh(x&0x08) 0x08:y=1;default: y=0;
  $  021.MCU总故障编码0-12V过压                          $    $               $    $  ANS018.BYTE004  $  switxh(x&0x20) 0x20:y=1;default: y=0;
  $  022.MCU总故障编码0-12V欠压                          $    $               $    $  ANS018.BYTE004  $  switxh(x&0x40) 0x40:y=1;default: y=0;
  $  023.MCU总故障编码0-U相霍尔故障                      $    $               $    $  ANS018.BYTE004  $  switxh(x&0x80) 0x80:y=1;default: y=0;
  $  024.MCU总故障编码0-V相霍尔故障                      $    $               $    $  ANS018.BYTE005  $  switxh(x&0x01) 0x01:y=1;default: y=0;
  $  025.MCU总故障编码0-W相霍尔故障                      $    $               $    $  ANS018.BYTE005  $  switxh(x&0x02) 0x02:y=1;default: y=0;
  $  026.MCU总故障编码0-EEPROM故障                       $    $               $    $  ANS018.BYTE005  $  switxh(x&0x04) 0x04:y=1;default: y=0;
  $  027.MCU总故障编码0-母线过压                         $    $               $    $  ANS018.BYTE005  $  switxh(x&0x08) 0x08:y=1;default: y=0;
  $  028.MCU总故障编码0-母线欠压                         $    $               $    $  ANS018.BYTE005  $  switxh(x&0x10) 0x10:y=1;default: y=0;
  $  029.MCU总故障编码0-MCU过温                          $    $               $    $  ANS018.BYTE005  $  switxh(x&0x20) 0x20:y=1;default: y=0;
  $  030.MCU总故障编码0-PG故障                           $    $               $    $  ANS018.BYTE005  $  switxh(x&0x40) 0x40:y=1;default: y=0;
  $  031.MCU总故障编码0-反馈转矩和设定转矩校验故障       $    $               $    $  ANS018.BYTE005  $  switxh(x&0x80) 0x80:y=1;default: y=0;
  $  032.MCU总故障编码1-键盘紧急停机故障                 $    $               $    $  ANS019.BYTE004  $  switxh(x&0x01) 0x01:y=1;default: y=0;
  $  033.MCU总故障编码1-角度辨识故障                     $    $               $    $  ANS019.BYTE004  $  switxh(x&0x02) 0x02:y=1;default: y=0;
  $  034.MCU总故障编码1-参数设置错误                     $    $               $    $  ANS019.BYTE004  $  switxh(x&0x04) 0x04:y=1;default: y=0;
  $  035.MCU总故障编码1-U相IGBT温度过温                  $    $               $    $  ANS020.BYTE004  $  switxh(x&0x02) 0x02:y=1;default: y=0;
  $  036.MCU总故障编码1-V相IGBT温度过温                  $    $               $    $  ANS020.BYTE004  $  switxh(x&0x04) 0x04:y=1;default: y=0;
  $  037.MCU总故障编码1-W相IGBT温度过温                  $    $               $    $  ANS020.BYTE004  $  switxh(x&0x08) 0x08:y=1;default: y=0;
  $  038.MCU总故障编码1-与VCU通讯超时                    $    $               $    $  ANS020.BYTE004  $  switxh(x&0x10) 0x10:y=1;default: y=0;
  $  039.MCU总故障编码1-VCU给定转矩超限                  $    $               $    $  ANS020.BYTE004  $  switxh(x&0x20) 0x20:y=1;default: y=0;
  $  040.MCU总故障编码1-超速                             $    $               $    $  ANS020.BYTE004  $  switxh(x&0x40) 0x40:y=1;default: y=0;
  $  041.MCU总故障编码1-电机过温                         $    $               $    $  ANS020.BYTE004  $  switxh(x&0x80) 0x80:y=1;default: y=0;
  $  042.MCU总故障编码2-IGBT的U相温度传感器故障          $    $               $    $  ANS021.BYTE004  $  switxh(x&0x02) 0x02:y=1;default: y=0;
  $  043.MCU总故障编码2-IGBT的V相温度传感器故障          $    $               $    $  ANS021.BYTE004  $  switxh(x&0x04) 0x04:y=1;default: y=0;
  $  044.MCU总故障编码2-IGBT的W相温度传感器故障          $    $               $    $  ANS021.BYTE004  $  switxh(x&0x08) 0x08:y=1;default: y=0;
  $  045.MCU总故障编码2-电机温度传感器故障               $    $               $    $  ANS021.BYTE004  $  switxh(x&0x10) 0x10:y=1;default: y=0;
  $  046.MCU总故障编码2-EEPROM故障                       $    $               $    $  ANS021.BYTE004  $  switxh(x&0x40) 0x40:y=1;default: y=0;
  $  047.上下电状态                                      $    $               $    $  ANS022.BYTE004  $  y=x;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:707 30 00 01 FF FF FF FF FF  $FC 

;******************************************************************************************************************************************************
