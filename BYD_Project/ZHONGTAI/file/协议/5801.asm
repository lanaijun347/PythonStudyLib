
    车型ID：5801

    模拟：协议模拟-->5801

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~250K

进入命令:

  $~  REQ000:731 02 10 03 00 00 00 00 00       $~  ANS000:739 02 10 03 00 00 00 00 00
  $~~ REQ001:731 02 27 01 00 00 00 00 00       $~~ ANS001:739 02 27 01 00 00 00 00 00
  $~~ REQ002:731 06 27 02 00 00 00 00 00       $~~ ANS002:739 06 27 02 00 00 00 00 00

空闲命令:

  $!  REQ000:731 02 3E 00 00 00 00 00 00       $!  ANS000:739 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:731 02 19 02 00 00 00 00 00       $#  ANS000:739 02 19 02 00 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE3$#开始每$#3$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/47000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:731 04 14 FF FF FF 00 00 00       $$  ANS000:739 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:731 03 22 F1 83 00 00 00 00       $%  ANS000:739 03 22 F1 83 00 00 00 00
  $%  REQ001:731 03 22 F1 8A 00 00 00 00       $%  ANS001:739 03 22 F1 8A 00 00 00 00
  $%  REQ002:731 03 22 F1 90 00 00 00 00       $%  ANS002:739 03 22 F1 90 00 00 00 00
  $%  REQ003:731 03 22 F1 91 00 00 00 00       $%  ANS003:739 03 22 F1 91 00 00 00 00
  $%  REQ004:731 03 22 F1 95 00 00 00 00       $%  ANS004:739 03 22 F1 95 00 00 00 00
  $%  REQ005:731 03 22 F1 99 00 00 00 00       $%  ANS005:739 03 22 F1 99 00 00 00 00

  $%  000:Bootloader(启动加载程序) 版本:        $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  001:供应商代码:                           $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5);
  $%  002:VIN码:                                $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  003:ECU硬件版本号:                        $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5);
  $%  004:ECU软件版本号:                        $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  005:编程日期:                             $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:731 03 22 02 02 00 00 00 00       $  ANS000:739 03 22 02 02 00 00 00 00
  $  REQ001:731 03 22 02 03 00 00 00 00       $  ANS001:739 03 22 02 03 00 00 00 00
  $  REQ002:731 03 22 02 04 00 00 00 00       $  ANS002:739 03 22 02 04 00 00 00 00
  $  REQ003:731 03 22 02 05 00 00 00 00       $  ANS003:739 03 22 02 05 00 00 00 00
  $  REQ004:731 03 22 02 06 00 00 00 00       $  ANS004:739 03 22 02 06 00 00 00 00
  $  REQ005:731 03 22 02 07 00 00 00 00       $  ANS005:739 03 22 02 07 00 00 00 00
  $  REQ006:731 03 22 02 08 00 00 00 00       $  ANS006:739 03 22 02 08 00 00 00 00
  $  REQ007:731 03 22 02 09 00 00 00 00       $  ANS007:739 03 22 02 09 00 00 00 00
  $  REQ008:731 03 22 02 0A 00 00 00 00       $  ANS008:739 03 22 02 0A 00 00 00 00
  $  REQ009:731 03 22 02 0B 00 00 00 00       $  ANS009:739 03 22 02 0B 00 00 00 00
  $  REQ010:731 03 22 02 0C 00 00 00 00       $  ANS010:739 03 22 02 0C 00 00 00 00
  $  REQ011:731 03 22 02 0D 00 00 00 00       $  ANS011:739 03 22 02 0D 00 00 00 00
  $  REQ012:731 03 22 02 0E 00 00 00 00       $  ANS012:739 03 22 02 0E 00 00 00 00
  $  REQ013:731 03 22 02 0F 00 00 00 00       $  ANS013:739 03 22 02 0F 00 00 00 00
  $  REQ014:731 03 22 02 10 00 00 00 00       $  ANS014:739 03 22 02 10 00 00 00 00
  $  REQ015:731 03 22 02 11 00 00 00 00       $  ANS015:739 03 22 02 11 00 00 00 00
  $  REQ016:731 03 22 02 12 00 00 00 00       $  ANS016:739 03 22 02 12 00 00 00 00
  $  REQ017:731 03 22 02 13 00 00 00 00       $  ANS017:739 03 22 02 13 00 00 00 00
  $  REQ018:731 03 22 02 14 00 00 00 00       $  ANS018:739 03 22 02 14 00 00 00 00
  $  REQ019:731 03 22 02 15 00 00 00 00       $  ANS019:739 03 22 02 15 00 00 00 00
  $  REQ020:731 03 22 02 16 00 00 00 00       $  ANS020:739 03 22 02 16 00 00 00 00

  $  000.MCU(电机控制单元)使能命令                                 $    $               $    $  ANS000.BYTE004  $  if(x1&0x01) y=@001f;else y=@0020;
  $  001.驱动电机工作模式命令                                      $    $               $    $  ANS000.BYTE004  $  switxh(x1&0x0F) 0x00: y=@0021;0x02: y=@0022;0x04: y=@0023;default: y=@0006;
  $  002.转矩、转速指令方向命令                                    $    $               $    $  ANS000.BYTE004  $  switxh(x1&0x30) 0x00: y=@0006;0x10: y=@0024;0x20: y=@0025;default: y=@0006;
  $  003.档位信号                                                  $    $               $    $  ANS001.BYTE004  $  switxh(x1) 0x00: y=@0006;0x04: y=@0026;0x08: y=@0027;0x0c: y=@0028;0x10: y=@0029;0x14: y=@002a;0x18: y=@002b;default: y=@0006;
  $  004.制动信号                                                  $    $               $    $  ANS001.BYTE004  $  if(x1&0x20) y=@002c;else y=@002d;
  $  005.防溜坡功能使能命令                                        $    $               $    $  ANS001.BYTE004  $  if(x1&0x80) y=@001f;else y=@0020;
  $  006.MCU(电机控制单元)初始化状态                               $    $               $    $  ANS002.BYTE004  $  if(x1&0x01) y=@002e;else y=@002f;
  $  007.驱动电机当前状态                                          $    $               $    $  ANS002.BYTE004  $  switxh(x1&0x06) 0x00: y=@0030;0x02: y=@0031;0x04: y=@0032;default: y=@0006;
  $  008.驱动电机工作模式命令                                      $    $               $    $  ANS002.BYTE004  $  switxh(x1&0x38) 0x00: y=@0021;0x08: y=@0022;0x10: y=@0023;default: y=@0006;
  $  009.驱动电机当前旋转方向                                      $    $               $    $  ANS002.BYTE004  $  switxh(x1) 0x00: y=@0021;0x40: y=@0033;0x80: y=@0034;default: y=@0006;
  $  010.驱动电机控制器高压检测完成标志                            $    $               $    $  ANS002.BYTE005  $  if(x1&0x01) y=@0035;else y=@0036;
  $  011.EEPROM(电可擦除只读存储器) 写数据完成标志位               $    $               $    $  ANS002.BYTE005  $  if(x1&0x02) y=@0035;else y=@0036;
  $  012.驱动电机控制器高压放电完成标志位                          $    $               $    $  ANS002.BYTE005  $  if(x1&0x04) y=@0035;else y=@0036;
  $  013.驱动电机控制器低压下电请求标志位                          $    $               $    $  ANS002.BYTE005  $  if(x1&0x08) y=@0035;else y=@0036;
  $  014.驱动电机系统降功率请求标志位                              $    $               $    $  ANS002.BYTE005  $  if(x1&0x10) y=@0037;else y=@0038;
  $  015.驱动电机控制器关闭使能请求标志位                          $    $               $    $  ANS002.BYTE005  $  if(x1&0x20) y=@0039;else y=@003a;
  $  016.直流母线电压                                              $    $  V            $    $  ANS003.BYTE004  $  y=x1*256+x2*1;
  $  017.直流母线电流                                              $    $  A            $    $  ANS004.BYTE004  $  y=x1*25.6+x2*0.1-320;
  $  018.驱动电机目标转矩命令                                      $    $  Nm           $    $  ANS005.BYTE004  $  y=x1*25.6+x2*0.1-3000;
  $  019.驱动电机目标转速命令                                      $    $  rpm          $    $  ANS006.BYTE004  $  y=x1*256+x2*1-30000;
  $  020.驱动电机当前转矩                                          $    $  Nm           $    $  ANS007.BYTE004  $  y=x1*25.6+x2*0.1-3000;
  $  021.驱动电机当前转速                                          $    $  rpm          $    $  ANS008.BYTE004  $  y=x1*256+x2*1-30000;
  $  022.MCU(电机控制单元) IGBT(绝缘栅双极型晶体管芯片) 温度       $    $  degree C     $    $  ANS009.BYTE004  $  y=x1*256+x2*1-48;
  $  023.MCU(电机控制单元)温度                                     $    $  degree C     $    $  ANS010.BYTE004  $  y=x1*256+x2*1-48;
  $  024.驱动电机温度                                              $    $  degree C     $    $  ANS011.BYTE004  $  y=x1*256+x2*1-48;
  $  025.D 轴电流给定值                                            $    $  A            $    $  ANS012.BYTE004  $  y=x1*256+x2*1-30000;
  $  026.D 轴电流反馈值                                            $    $  A            $    $  ANS013.BYTE004  $  y=x1*256+x2*1-30000;
  $  027.Q 轴电流给定值                                            $    $  A            $    $  ANS014.BYTE004  $  y=x1*256+x2*1-30000;
  $  028.Q 轴电流反馈值                                            $    $  A            $    $  ANS015.BYTE004  $  y=x1*256+x2*1-30000;
  $  029.D 轴电压                                                  $    $  V            $    $  ANS016.BYTE004  $  y=x1*256+x2*1-30000;
  $  030.Q 轴电压                                                  $    $  V            $    $  ANS017.BYTE004  $  y=x1*256+x2*1-30000;
  $  031.转子位置电角度                                            $    $  度           $    $  ANS018.BYTE004  $  y=x1*25.6+x2*0.1;
  $  032.转子位置初始角度                                          $    $  度           $    $  ANS019.BYTE004  $  y=x1*25.6+x2*0.1;
  $  033.MCU(电机控制单元)低压电源电压                             $    $  V            $    $  ANS020.BYTE004  $  y=x1*256+x2*1;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:731 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
