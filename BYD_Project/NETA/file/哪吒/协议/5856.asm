
    车型ID：5856

    模拟：协议模拟-->5856

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~716

进入命令:

  $~  REQ000:706 02 10 03 FF FF FF FF FF       $~  ANS000:716 02 10 03 FF FF FF FF FF
  $~  REQ001:706 02 27 03 FF FF FF FF FF       $~  ANS001:716 02 27 03 FF FF FF FF FF
  $~  REQ002:706 04 27 04 1E B0 FF FF FF       $~  ANS002:716 04 27 04 1E B0 FF FF FF

空闲命令:

  $!  REQ000:706 02 3E 00 FF FF FF FF FF       $!  ANS000:716 02 3E 00 FF FF FF FF FF

退出命令:

  $@  REQ000:706 02 10 01 FF FF FF FF FF       $@  ANS000:716 02 10 01 FF FF FF FF FF


;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:706 03 19 02 09 FF FF FF FF       $#  ANS000:716 03 19 02 09 FF FF FF FF

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/90000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:706 04 14 FF FF FF FF FF FF       $$  ANS000:716 04 14 FF FF FF FF FF FF

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:706 03 22 F1 80 FF FF FF FF       $%  ANS000:716 03 22 F1 80 FF FF FF FF
  $%  REQ001:706 03 22 F1 86 FF FF FF FF       $%  ANS001:716 03 22 F1 86 FF FF FF FF
  $%  REQ002:706 03 22 F1 87 FF FF FF FF       $%  ANS002:716 03 22 F1 87 FF FF FF FF
  $%  REQ003:706 03 22 F1 88 FF FF FF FF       $%  ANS003:716 03 22 F1 88 FF FF FF FF
  $%  REQ004:706 03 22 F1 B0 FF FF FF FF       $%  ANS004:716 03 22 F1 B0 FF FF FF FF
  $%  REQ005:706 03 22 F1 8A FF FF FF FF       $%  ANS005:716 03 22 F1 8A FF FF FF FF
  $%  REQ006:706 03 22 F1 8B FF FF FF FF       $%  ANS006:716 03 22 F1 8B FF FF FF FF
  $%  REQ007:706 03 22 F1 8C FF FF FF FF       $%  ANS007:716 03 22 F1 8C FF FF FF FF
  $%  REQ008:706 03 22 F1 90 FF FF FF FF       $%  ANS008:716 03 22 F1 90 FF FF FF FF
  $%  REQ009:706 03 22 F1 91 FF FF FF FF       $%  ANS009:716 03 22 F1 91 FF FF FF FF
  $%  REQ010:706 03 22 F1 98 FF FF FF FF       $%  ANS010:716 03 22 F1 98 FF FF FF FF
  $%  REQ011:706 03 22 F1 99 FF FF FF FF       $%  ANS011:716 03 22 F1 99 FF FF FF FF
  $%  REQ012:706 03 22 F1 9D FF FF FF FF       $%  ANS012:716 03 22 F1 9D FF FF FF FF

  $%  000:软件版本号:                        $%    $%  ANS000.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  001:当前诊断任务模式:                  $%    $%  ANS001.BYTE004  $%  switxh(x) 0x01:y=@0384;0x02:y=@0191;0x03:y=@0385;default: y=@0007;
  $%  002:整车零部件号:                      $%    $%  ANS002.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13);
  $%  003:应用软件版本号:                    $%    $%  ANS003.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  004:应用软件版本号（固定版本）:        $%    $%  ANS004.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  005:系统供应商代码:                    $%    $%  ANS005.BYTE004  $%  y=ASCII(x1,x2,x3);
  $%  006:ECU生产日期:                       $%    $%  ANS006.BYTE004  $%  y=HEX(x1,x2,x3,x4);
  $%  007:控制器序列号:                      $%    $%  ANS007.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11);
  $%  008:整车VIN:                           $%    $%  ANS008.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  009:硬件版本号:                        $%    $%  ANS009.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5);
  $%  010:诊断设备序列号:                    $%    $%  ANS010.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  011:刷新日期:                          $%    $%  ANS011.BYTE004  $%  y=HEX(x1,x2,x3,x4);
  $%  012:ECU装配日期:                       $%    $%  ANS012.BYTE004  $%  y=HEX(x1,x2,x3,x4);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:706 03 22 B1 00 FF FF FF FF       $  ANS000:716 03 22 B1 00 FF FF FF FF
  $  REQ001:706 03 22 E1 01 FF FF FF FF       $  ANS001:716 03 22 E1 01 FF FF FF FF
  $  REQ002:706 03 22 01 12 FF FF FF FF       $  ANS002:716 03 22 01 12 FF FF FF FF
  $  REQ003:706 03 22 20 03 FF FF FF FF       $  ANS003:716 03 22 20 03 FF FF FF FF
  $  REQ004:706 03 22 20 04 FF FF FF FF       $  ANS004:716 03 22 20 04 FF FF FF FF
  $  REQ005:706 03 22 20 05 FF FF FF FF       $  ANS005:716 03 22 20 05 FF FF FF FF
  $  REQ006:706 03 22 20 11 FF FF FF FF       $  ANS006:716 03 22 20 11 FF FF FF FF
  $  REQ007:706 03 22 20 16 FF FF FF FF       $  ANS007:716 03 22 20 16 FF FF FF FF
  $  REQ008:706 03 22 20 21 FF FF FF FF       $  ANS008:716 03 22 20 21 FF FF FF FF
  $  REQ009:706 03 22 20 25 FF FF FF FF       $  ANS009:716 03 22 20 25 FF FF FF FF
  $  REQ010:706 03 22 20 26 FF FF FF FF       $  ANS010:716 03 22 20 26 FF FF FF FF
  $  REQ011:706 03 22 20 27 FF FF FF FF       $  ANS011:716 03 22 20 27 FF FF FF FF
  $  REQ012:706 03 22 20 28 FF FF FF FF       $  ANS012:716 03 22 20 28 FF FF FF FF
  $  REQ013:706 03 22 20 29 FF FF FF FF       $  ANS013:716 03 22 20 29 FF FF FF FF
  $  REQ014:706 03 22 20 30 FF FF FF FF       $  ANS014:716 03 22 20 30 FF FF FF FF
  $  REQ015:706 03 22 20 31 FF FF FF FF       $  ANS015:716 03 22 20 31 FF FF FF FF
  $  REQ016:706 03 22 20 32 FF FF FF FF       $  ANS016:716 03 22 20 32 FF FF FF FF
  $  REQ017:706 03 22 20 33 FF FF FF FF       $  ANS017:716 03 22 20 33 FF FF FF FF
  $  REQ018:706 03 22 20 34 FF FF FF FF       $  ANS018:716 03 22 20 34 FF FF FF FF
  $  REQ019:706 03 22 20 35 FF FF FF FF       $  ANS019:716 03 22 20 35 FF FF FF FF
  $  REQ020:706 03 22 20 36 FF FF FF FF       $  ANS020:716 03 22 20 36 FF FF FF FF
  $  REQ021:706 03 22 20 37 FF FF FF FF       $  ANS021:716 03 22 20 37 FF FF FF FF
  $  REQ022:706 03 22 20 38 FF FF FF FF       $  ANS022:716 03 22 20 38 FF FF FF FF
  $  REQ023:706 03 22 20 39 FF FF FF FF       $  ANS023:716 03 22 20 39 FF FF FF FF
  $  REQ024:706 03 22 20 40 FF FF FF FF       $  ANS024:716 03 22 20 40 FF FF FF FF
  $  REQ025:706 03 22 20 41 FF FF FF FF       $  ANS025:716 03 22 20 41 FF FF FF FF
  $  REQ026:706 03 22 20 42 FF FF FF FF       $  ANS026:716 03 22 20 42 FF FF FF FF
  $  REQ027:706 03 22 20 43 FF FF FF FF       $  ANS027:716 03 22 20 43 FF FF FF FF
  $  REQ028:706 03 22 20 47 FF FF FF FF       $  ANS028:716 03 22 20 47 FF FF FF FF
  $  REQ029:706 03 22 20 48 FF FF FF FF       $  ANS029:716 03 22 20 48 FF FF FF FF
  $  REQ030:706 03 22 20 49 FF FF FF FF       $  ANS030:716 03 22 20 49 FF FF FF FF
  $  REQ031:706 03 22 20 50 FF FF FF FF       $  ANS031:716 03 22 20 50 FF FF FF FF
  $  REQ032:706 03 22 20 51 FF FF FF FF       $  ANS032:716 03 22 20 51 FF FF FF FF
  $  REQ033:706 03 22 20 53 FF FF FF FF       $  ANS033:716 03 22 20 53 FF FF FF FF
  $  REQ034:706 03 22 20 54 FF FF FF FF       $  ANS034:716 03 22 20 54 FF FF FF FF
  $  REQ035:706 03 22 20 55 FF FF FF FF       $  ANS035:716 03 22 20 55 FF FF FF FF
  $  REQ036:706 03 22 20 56 FF FF FF FF       $  ANS036:716 03 22 20 56 FF FF FF FF
  $  REQ037:706 03 22 20 57 FF FF FF FF       $  ANS037:716 03 22 20 57 FF FF FF FF
  $  REQ038:706 03 22 20 58 FF FF FF FF       $  ANS038:716 03 22 20 58 FF FF FF FF
  $  REQ039:706 03 22 20 59 FF FF FF FF       $  ANS039:716 03 22 20 59 FF FF FF FF
  $  REQ040:706 03 22 20 60 FF FF FF FF       $  ANS040:716 03 22 20 60 FF FF FF FF
  $  REQ041:706 03 22 20 61 FF FF FF FF       $  ANS041:716 03 22 20 61 FF FF FF FF
  $  REQ042:706 03 22 20 62 FF FF FF FF       $  ANS042:716 03 22 20 62 FF FF FF FF
  $  REQ043:706 03 22 20 63 FF FF FF FF       $  ANS043:716 03 22 20 63 FF FF FF FF
  $  REQ044:706 03 22 20 64 FF FF FF FF       $  ANS044:716 03 22 20 64 FF FF FF FF
  $  REQ045:706 03 22 20 65 FF FF FF FF       $  ANS045:716 03 22 20 65 FF FF FF FF
  $  REQ046:706 03 22 20 66 FF FF FF FF       $  ANS046:716 03 22 20 66 FF FF FF FF
  $  REQ047:706 03 22 20 67 FF FF FF FF       $  ANS047:716 03 22 20 67 FF FF FF FF
  $  REQ048:706 03 22 20 68 FF FF FF FF       $  ANS048:716 03 22 20 68 FF FF FF FF
  $  REQ049:706 03 22 20 69 FF FF FF FF       $  ANS049:716 03 22 20 69 FF FF FF FF
  $  REQ050:706 03 22 20 70 FF FF FF FF       $  ANS050:716 03 22 20 70 FF FF FF FF
  $  REQ051:706 03 22 20 71 FF FF FF FF       $  ANS051:716 03 22 20 71 FF FF FF FF
  $  REQ052:706 03 22 20 72 FF FF FF FF       $  ANS052:716 03 22 20 72 FF FF FF FF
  $  REQ053:706 03 22 20 73 FF FF FF FF       $  ANS053:716 03 22 20 73 FF FF FF FF
  $  REQ054:706 03 22 20 74 FF FF FF FF       $  ANS054:716 03 22 20 74 FF FF FF FF
  $  REQ055:706 03 22 20 75 FF FF FF FF       $  ANS055:716 03 22 20 75 FF FF FF FF
  $  REQ056:706 03 22 20 76 FF FF FF FF       $  ANS056:716 03 22 20 76 FF FF FF FF
  $  REQ057:706 03 22 20 77 FF FF FF FF       $  ANS057:716 03 22 20 77 FF FF FF FF
  $  REQ058:706 03 22 20 78 FF FF FF FF       $  ANS058:716 03 22 20 78 FF FF FF FF
  $  REQ059:706 03 22 20 79 FF FF FF FF       $  ANS059:716 03 22 20 79 FF FF FF FF
  $  REQ060:706 03 22 20 80 FF FF FF FF       $  ANS060:716 03 22 20 80 FF FF FF FF
  $  REQ061:706 03 22 20 81 FF FF FF FF       $  ANS061:716 03 22 20 81 FF FF FF FF
  $  REQ062:706 03 22 20 89 FF FF FF FF       $  ANS062:716 03 22 20 89 FF FF FF FF
  $  REQ063:706 03 22 20 92 FF FF FF FF       $  ANS063:716 03 22 20 92 FF FF FF FF
  $  REQ064:706 03 22 21 07 FF FF FF FF       $  ANS064:716 03 22 21 07 FF FF FF FF
  $  REQ065:706 03 22 21 09 FF FF FF FF       $  ANS065:716 03 22 21 09 FF FF FF FF
  $  REQ066:706 03 22 21 10 FF FF FF FF       $  ANS066:716 03 22 21 10 FF FF FF FF
  $  REQ067:706 03 22 21 17 FF FF FF FF       $  ANS067:716 03 22 21 17 FF FF FF FF
  $  REQ068:706 03 22 21 32 FF FF FF FF       $  ANS068:716 03 22 21 32 FF FF FF FF
  $  REQ069:706 03 22 21 33 FF FF FF FF       $  ANS069:716 03 22 21 33 FF FF FF FF
  $  REQ070:706 03 22 21 34 FF FF FF FF       $  ANS070:716 03 22 21 34 FF FF FF FF
  $  REQ071:706 03 22 21 35 FF FF FF FF       $  ANS071:716 03 22 21 35 FF FF FF FF
  $  REQ072:706 03 22 21 36 FF FF FF FF       $  ANS072:716 03 22 21 36 FF FF FF FF
  $  REQ073:706 03 22 21 37 FF FF FF FF       $  ANS073:716 03 22 21 37 FF FF FF FF
  $  REQ074:706 03 22 21 38 FF FF FF FF       $  ANS074:716 03 22 21 38 FF FF FF FF
  $  REQ075:706 03 22 21 43 FF FF FF FF       $  ANS075:716 03 22 21 43 FF FF FF FF
  $  REQ076:706 03 22 21 44 FF FF FF FF       $  ANS076:716 03 22 21 44 FF FF FF FF

  $  000.整车车速                                $    $  km/h         $    $  ANS000.BYTE004  $  y=x;
  $  001.里程                                    $    $  km           $    $  ANS001.BYTE004  $  y=x*65536+x2*256+x3;
  $  002.铅酸电池电压                            $    $  mV           $    $  ANS002.BYTE004  $  y=x1*256+x2;
  $  003.累加和电压                              $    $  V            $    $  ANS003.BYTE004  $  y=(x1*256+x2)*0.1;
  $  004.总线电流                                $    $  A            $    $  ANS004.BYTE004  $  y=(x1*256+x2)*6553.6+x3*256+x4-2000;
  $  005.总线电流有效性                          $    $               $    $  ANS005.BYTE004  $  y=x;
  $  006.充电过流限值                            $    $  A            $    $  ANS006.BYTE004  $  y=(x1*256+x2)*0.1;
  $  007.CAB1采样电流值                          $    $  A            $    $  ANS007.BYTE004  $  y=(x1*256+x2)*6553.6+x3*256+x4;
  $  008.CAB1电流传感器内部故障标志位            $    $               $    $  ANS008.BYTE004  $  y=x;
  $  009.主正继电器状态                          $    $               $    $  ANS009.BYTE004  $  switxh(x&0x01) 0x01:y=@0147;default: y=@0075;
  $  010.预充继电器状态                          $    $               $    $  ANS009.BYTE004  $  switxh(x&0x02) 0x02:y=@0147;default: y=@0075;
  $  011.主负继电器状态                          $    $               $    $  ANS009.BYTE004  $  switxh(x&0x04) 0x04:y=@0147;default: y=@0075;
  $  012.入水口温度                              $    $  degree C     $    $  ANS010.BYTE004  $  y=(x1*256+x2)*0.5-50;
  $  013.出水口温度                              $    $  degree C     $    $  ANS011.BYTE004  $  y=(x1*256+x2)*0.5-50;
  $  014.直流插座正温度                          $    $  degree C     $    $  ANS012.BYTE004  $  y=(x1*256+x2)*0.5-50;
  $  015.直流插座负温度                          $    $  degree C     $    $  ANS013.BYTE004  $  y=(x1*256+x2)*0.5-50;
  $  016.交流插座温度                            $    $  degree C     $    $  ANS014.BYTE004  $  y=(x1*256+x2)*0.5-50;
  $  017.最大均衡温度                            $    $  degree C     $    $  ANS015.BYTE004  $  y=(x1*256+x2)*0.5-50;
  $  018.均衡温度有效性                          $    $               $    $  ANS016.BYTE004  $  y=x1*256+x2;
  $  019.最大芯片内部温度                        $    $  degree C     $    $  ANS017.BYTE004  $  y=(x1*256+x2)*0.5-50;
  $  020.芯片内部温度有效性                      $    $               $    $  ANS018.BYTE004  $  y=x1*256+x2;
  $  021.BMU板温1                                $    $  degree C     $    $  ANS019.BYTE004  $  y=(x1*256+x2)*0.5-50;
  $  022.BMU板温2                                $    $  degree C     $    $  ANS020.BYTE004  $  y=(x1*256+x2)*0.5-50;
  $  023.模组温度Raw值                           $    $  degree C     $    $  ANS021.BYTE004  $  y=x1*256+x2;
  $  024.平均模组温度                            $    $  degree C     $    $  ANS022.BYTE004  $  y=(x1*256+x2)*0.5-50;
  $  025.最大模组温度                            $    $  degree C     $    $  ANS023.BYTE004  $  y=(x1*256+x2)*0.5-50;
  $  026.最小模组温度                            $    $  degree C     $    $  ANS024.BYTE004  $  y=(x1*256+x2)*0.5-50;
  $  027.最大模组温度CMC和位置                   $    $               $    $  ANS025.BYTE004  $  y=x;
  $  028.最小模组温度CMC和位置                   $    $               $    $  ANS026.BYTE004  $  y=x;
  $  029.模组温度有效性                          $    $               $    $  ANS027.BYTE004  $  y=x;
  $  030.最大电压SOC                             $    $  %            $    $  ANS028.BYTE004  $  y=(x1*256+x2)*0.1;
  $  031.最小电压SOC                             $    $  %            $    $  ANS029.BYTE004  $  y=(x1*256+x2)*0.1;
  $  032.平均电压SOC                             $    $  %            $    $  ANS030.BYTE004  $  y=(x1*256+x2)*0.1;
  $  033.显示SOC                                 $    $  %            $    $  ANS031.BYTE004  $  y=(x1*256+x2)*0.1;
  $  034.显示SOH                                 $    $  %            $    $  ANS032.BYTE004  $  y=(x1*256+x2)*0.1;
  $  035.非预期下电故障判断标志                  $    $               $    $  ANS033.BYTE004  $  y=x;
  $  036.模组温度菊花链更新标志位                $    $               $    $  ANS034.BYTE004  $  y=x;
  $  037.电芯电压菊花链更新标志位                $    $               $    $  ANS035.BYTE004  $  y=x;
  $  038.菊花链复位标志                          $    $               $    $  ANS036.BYTE004  $  y=x;
  $  039.ACAN碰撞信号                            $    $               $    $  ANS037.BYTE004  $  y=x;
  $  040.碰撞周期                                $    $  ms           $    $  ANS038.BYTE004  $  y=(x1*256+x2)*655.36+(x3*256+x4)*0.01;
  $  041.碰撞占空比                              $    $  %            $    $  ANS039.BYTE004  $  y=(x1*256+x2)*655.36+(x3*256+x4)*0.01;
  $  042.强制关闭绝缘检测命令                    $    $               $    $  ANS040.BYTE004  $  y=x;
  $  043.绝缘检测状态                            $    $               $    $  ANS041.BYTE004  $  y=x;
  $  044.绝缘电压采集状态                        $    $               $    $  ANS042.BYTE004  $  y=x;
  $  045.绝缘正极电压Raw值                       $    $               $    $  ANS043.BYTE004  $  y=x1*256+x2;
  $  046.绝缘负极电压Raw值                       $    $               $    $  ANS044.BYTE004  $  y=x1*256+x2;
  $  047.绝缘采样第一阶段正极电压值              $    $  V            $    $  ANS045.BYTE004  $  y=(x1*256+x2)*65536+x3*256+x4;
  $  048.绝缘采样第一阶段负极电压值              $    $  V            $    $  ANS046.BYTE004  $  y=(x1*256+x2)*65536+x3*256+x4;
  $  049.绝缘采样第二阶段正极电压值              $    $  V            $    $  ANS047.BYTE004  $  y=(x1*256+x2)*65536+x3*256+x4;
  $  050.绝缘采样第二阶段负极电压值              $    $  V            $    $  ANS048.BYTE004  $  y=(x1*256+x2)*65536+x3*256+x4;
  $  051.正极绝缘阻值                            $    $  KΩ          $    $  ANS049.BYTE004  $  y=x1*256+x2;
  $  052.负极绝缘阻值                            $    $  KΩ          $    $  ANS050.BYTE004  $  y=x1*256+x2;
  $  053.CC2采样电压                             $    $  mV           $    $  ANS051.BYTE004  $  y=x1*256+x2;
  $  054.快充停止原因                            $    $               $    $  ANS052.BYTE004  $  y=x;
  $  055.慢充停止原因                            $    $               $    $  ANS053.BYTE004  $  y=x;
  $  056.AC枪连接状态                            $    $               $    $  ANS054.BYTE004  $  y=x;
  $  057.DC枪连接状态                            $    $               $    $  ANS055.BYTE004  $  y=x;
  $  058.AC充电模式标志                          $    $               $    $  ANS056.BYTE004  $  y=x;
  $  059.DC充电模式标志                          $    $               $    $  ANS057.BYTE004  $  y=x;
  $  060.均衡回路开路故障CMC号                   $    $               $    $  ANS058.BYTE004  $  y=x;
  $  061.均衡回路开路故障Cell号                  $    $               $    $  ANS059.BYTE004  $  y=x;
  $  062.均衡回路短路故障CMC号                   $    $               $    $  ANS060.BYTE004  $  y=x;
  $  063.均衡回路短路故障Cell号                  $    $               $    $  ANS061.BYTE004  $  y=x;
  $  064.HVILCh0高边电压值                       $    $  mV           $    $  ANS062.BYTE004  $  y=x1*256+x2;
  $  065.HVILCh0低边电压值                       $    $  mV           $    $  ANS063.BYTE004  $  y=x1*256+x2;
  $  066.主正继电器内侧对主负内侧电压            $    $  V            $    $  ANS064.BYTE004  $  y=(x1*256+x2)*0.1;
  $  067.主正继电器外侧对主负内侧电压            $    $  V            $    $  ANS065.BYTE004  $  y=(x1*256+x2)*0.1;
  $  068.DC充电继电器外侧对主负内侧电压          $    $  V            $    $  ANS066.BYTE004  $  y=(x1*256+x2)*0.1;
  $  069.主正继电器外侧对主负外侧电压            $    $  V            $    $  ANS067.BYTE004  $  y=(x1*256+x2)*0.1;
  $  070.电芯电压采样芯片错误掩码                $    $               $    $  ANS068.BYTE004  $  y=x1*256+x2;
  $  071.最大电芯电压CMC和最大电芯电压位置       $    $               $    $  ANS069.BYTE004  $  y=x;
  $  072.最小电芯电压CMC和最小电芯电压位置       $    $               $    $  ANS070.BYTE004  $  y=x;
  $  073.电芯电压RAW                             $    $               $    $  ANS071.BYTE004  $  y=x;
  $  074.平均电芯电压                            $    $  mV           $    $  ANS072.BYTE004  $  y=x1*256+x2;
  $  075.最大电芯电压                            $    $  mV           $    $  ANS073.BYTE004  $  y=x1*256+x2;
  $  076.最小电芯电压                            $    $  mV           $    $  ANS074.BYTE004  $  y=x1*256+x2;
  $  077.每一个电芯电压的有效性                  $    $               $    $  ANS075.BYTE004  $  y=x;
  $  078.每一个模组电压的有效性                  $    $               $    $  ANS076.BYTE004  $  y=x;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:706 30 00 01 FF FF FF FF FF  $FC 

;******************************************************************************************************************************************************
