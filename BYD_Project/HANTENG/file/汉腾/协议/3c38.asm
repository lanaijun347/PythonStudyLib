
    车型ID：3c38

    模拟：协议模拟-->3c38

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~739

进入命令:

  $~  REQ000:731 02 10 01 00 00 00 00 00       $~  ANS000:739 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:731 02 3E 00 00 00 00 00 00       $!  ANS000:739 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:731 03 19 02 09 00 00 00 00       $#  ANS000:739 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/34000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:731 04 14 FF FF FF 00 00 00       $$  ANS000:739 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:731 03 22 F1 83 00 00 00 00       $%  ANS000:739 03 22 F1 83 00 00 00 00
  $%  REQ001:731 03 22 F1 90 00 00 00 00       $%  ANS001:739 03 22 F1 90 00 00 00 00
  $%  REQ002:731 03 22 F1 8A 00 00 00 00       $%  ANS002:739 03 22 F1 8A 00 00 00 00
  $%  REQ003:731 03 22 F1 91 00 00 00 00       $%  ANS003:739 03 22 F1 91 00 00 00 00
  $%  REQ004:731 03 22 F1 95 00 00 00 00       $%  ANS004:739 03 22 F1 95 00 00 00 00
  $%  REQ005:731 03 22 F1 99 00 00 00 00       $%  ANS005:739 03 22 F1 99 00 00 00 00

  $%  000:引导加载软件版本信息:           $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  001:车辆识别码(VIN码):              $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  002:供应商代码:                     $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5);
  $%  003:电控单元(ECU)硬件版本号:        $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5);
  $%  004:电控单元(ECU)软件版本号:        $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  005:编程日期:                       $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:731 03 22 02 02 00 00 00 00       $  ANS000:739 03 22 02 02 00 00 00 00
  $  REQ001:731 03 22 02 12 00 00 00 00       $  ANS001:739 03 22 02 12 00 00 00 00
  $  REQ002:731 03 22 02 03 00 00 00 00       $  ANS002:739 03 22 02 03 00 00 00 00
  $  REQ003:731 03 22 02 00 00 00 00 00       $  ANS003:739 03 22 02 00 00 00 00 00
  $  REQ004:731 03 22 02 01 00 00 00 00       $  ANS004:739 03 22 02 01 00 00 00 00
  $  REQ005:731 03 22 02 04 00 00 00 00       $  ANS005:739 03 22 02 04 00 00 00 00
  $  REQ006:731 03 22 02 06 00 00 00 00       $  ANS006:739 03 22 02 06 00 00 00 00
  $  REQ007:731 03 22 02 05 00 00 00 00       $  ANS007:739 03 22 02 05 00 00 00 00
  $  REQ008:731 03 22 02 07 00 00 00 00       $  ANS008:739 03 22 02 07 00 00 00 00
  $  REQ009:731 03 22 02 14 00 00 00 00       $  ANS009:739 03 22 02 14 00 00 00 00
  $  REQ010:731 03 22 02 08 00 00 00 00       $  ANS010:739 03 22 02 08 00 00 00 00
  $  REQ011:731 03 22 02 09 00 00 00 00       $  ANS011:739 03 22 02 09 00 00 00 00
  $  REQ012:731 03 22 02 0C 00 00 00 00       $  ANS012:739 03 22 02 0C 00 00 00 00
  $  REQ013:731 03 22 02 0E 00 00 00 00       $  ANS013:739 03 22 02 0E 00 00 00 00
  $  REQ014:731 03 22 02 0D 00 00 00 00       $  ANS014:739 03 22 02 0D 00 00 00 00
  $  REQ015:731 03 22 02 0F 00 00 00 00       $  ANS015:739 03 22 02 0F 00 00 00 00
  $  REQ016:731 03 22 02 0A 00 00 00 00       $  ANS016:739 03 22 02 0A 00 00 00 00
  $  REQ017:731 03 22 02 0B 00 00 00 00       $  ANS017:739 03 22 02 0B 00 00 00 00
  $  REQ018:731 03 22 02 17 00 00 00 00       $  ANS018:739 03 22 02 17 00 00 00 00
  $  REQ019:731 03 22 02 18 00 00 00 00       $  ANS019:739 03 22 02 18 00 00 00 00
  $  REQ020:731 03 22 02 10 00 00 00 00       $  ANS020:739 03 22 02 10 00 00 00 00

  $  000.电机控制系统(MCU)使能命令                         $    $           $    $  ANS000.BYTE004  $  if(((x>>0)&1)) y=@00d8;else y=@00d7;
  $  001.驱动电机工作模式命令                              $    $           $    $  ANS000.BYTE004  $  switxh((x>>1)&7) 0:y=@02c2;1:y=@02c3;2:y=@02c4;default:y=@02c1;
  $  002.驱动电机转矩、转速指令方向命令                    $    $           $    $  ANS000.BYTE004  $  switxh((x>>4)&3) 1:y=@02d0;2:y=@02d1;default:y=@02c1;
  $  003.档位信号                                          $    $           $    $  ANS001.BYTE004  $  switxh((x>>2)&7) 0:y=@02c1;1:y=@0121;2:y=@02cb;3:y=@02cc;4:y=@02cd;5:y=@02ce;6:y=@02cf;7:y=@001b;
  $  004.制动信号                                          $    $           $    $  ANS001.BYTE004  $  if(((x>>5)&1)) y=@02c9;else y=@02ca;
  $  005.防溜坡功能使能命令                                $    $           $    $  ANS001.BYTE004  $  if(((x>>7)&1)) y=@00d8;else y=@00d7;
  $  006.电机控制系统(MCU)初始化状态                       $    $           $    $  ANS002.BYTE004  $  if(((x>>0)&1)) y=@02c7;else y=@02c8;
  $  007.驱动电机当前状态                                  $    $           $    $  ANS002.BYTE004  $  switxh((x>>1)&3) 0:y=@02be;1:y=@02c5;2:y=@02c6;3:y=@02c1;
  $  008.驱动电机当前工作模式                              $    $           $    $  ANS002.BYTE004  $  switxh((x>>3)&7) 0:y=@02c2;1:y=@02c3;2:y=@02c4;default:y=@02c1;
  $  009.驱动电机当前旋转方向                              $    $           $    $  ANS002.BYTE004  $  switxh((x>>6)&3) 0:y=@02be;1:y=@02bf;2:y=@02c0;default:y=@02c1;
  $  010.驱动电机控制器高压检测完成标志                    $    $           $    $  ANS002.BYTE005  $  if(((x>>0)&1)) y=@02bd;else y=@003a;
  $  011.电可擦除只读存储器(EEPROM)写数据完成标志位        $    $           $    $  ANS002.BYTE005  $  if(((x>>1)&1)) y=@02bd;else y=@003a;
  $  012.驱动电机控制器高压放电完成标志位                  $    $           $    $  ANS002.BYTE005  $  if(((x>>2)&1)) y=@02bd;else y=@003a;
  $  013.驱动电机控制器低压下电请求标志位                  $    $           $    $  ANS002.BYTE005  $  if(((x>>3)&1)) y=@02bd;else y=@003a;
  $  014.驱动电机系统降功率请求标志位                      $    $           $    $  ANS002.BYTE005  $  if(((x>>4)&1)) y=@02bb;else y=@02bc;
  $  015.驱动电机控制器关闭使能请求标志位                  $    $           $    $  ANS002.BYTE005  $  if(((x>>5)&1)) y=@02b9;else y=@02ba;
  $  016.直流母线电压实际值                                $    $  V        $    $  ANS003.BYTE004  $  y=0.02*(x1*0x100+x2);
  $  017.直流母线电流实际值                                $    $  A        $    $  ANS004.BYTE004  $  y=0.04*(x1*0x100+x2)-1310;
  $  018.电机控制系统(MCU)接收到的转矩指令                 $    $  Nm       $    $  ANS005.BYTE004  $  y=0.04*(x1*0x100+x2)-1310;
  $  019.电机控制系统(MCU)接收到的转速指令                 $    $  rpm      $    $  ANS006.BYTE004  $  y=0.6*(x1*0x100+x2)-19660;
  $  020.电机当前转矩实际值                                $    $  Nm       $    $  ANS007.BYTE004  $  y=0.04*(x1*0x100+x2)-1310;
  $  021.电机当前转速实际值                                $    $  rpm      $    $  ANS008.BYTE004  $  y=0.6*(x1*0x100+x2)-19660;
  $  022.A相绝缘栅双极型晶体管(IGBT)模块当前内部温度       $    $  degC     $    $  ANS009.BYTE004  $  y=x-48;
  $  023.电机控制系统(MCU)当前散热底板温度                 $    $  degC     $    $  ANS010.BYTE004  $  y=x-48;
  $  024.驱动电机当前温度                                  $    $  degC     $    $  ANS011.BYTE004  $  y=x-48;
  $  025.D轴电流给定值                                     $    $  A        $    $  ANS012.BYTE004  $  y=0.04*(x1*0x100+x2)-1310;
  $  026.D轴电流反馈值                                     $    $  A        $    $  ANS013.BYTE004  $  y=0.04*(x1*0x100+x2)-1310;
  $  027.Q轴电流给定值                                     $    $  A        $    $  ANS014.BYTE004  $  y=0.04*(x1*0x100+x2)-1310;
  $  028.Q轴电流反馈值                                     $    $  A        $    $  ANS015.BYTE004  $  y=0.04*(x1*0x100+x2)-1310;
  $  029.D轴电压                                           $    $  V        $    $  ANS016.BYTE004  $  y=0.04*(x1*0x100+x2)-1310;
  $  030.Q轴电压                                           $    $  V        $    $  ANS017.BYTE004  $  y=0.04*(x1*0x100+x2)-1310;
  $  031.转子位置电角度                                    $    $  度       $    $  ANS018.BYTE004  $  y=1.5*x;
  $  032.转子位置初始角度                                  $    $  度       $    $  ANS019.BYTE004  $  y=1.5*x;
  $  033.电机控制系统(MCU)低压供电电源电压                 $    $  V        $    $  ANS020.BYTE004  $  y=0.12*x;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:731 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
