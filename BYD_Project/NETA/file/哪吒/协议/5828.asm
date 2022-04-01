
    车型ID：5828

    模拟：协议模拟-->5828

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

  $*$*DTC/69000000


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
  $%  REQ012:706 03 22 F1 00 FF FF FF FF       $%  ANS012:716 03 22 F1 00 FF FF FF FF
  $%  REQ013:706 03 22 F1 BF FF FF FF FF       $%  ANS013:716 03 22 F1 BF FF FF FF FF
  $%  REQ014:706 03 22 F1 C0 FF FF FF FF       $%  ANS014:716 03 22 F1 C0 FF FF FF FF
  $%  REQ015:706 03 22 F1 D0 FF FF FF FF       $%  ANS015:716 03 22 F1 D0 FF FF FF FF
  $%  REQ016:706 03 22 F1 9D FF FF FF FF       $%  ANS016:716 03 22 F1 9D FF FF FF FF

  $%  000:Bootloader软件版本号:                  $%    $%  ANS000.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  001:当前诊断任务模式:                      $%    $%  ANS001.BYTE004  $%  switxh(x) 0x01:y=@0384;0x02:y=@0191;0x03:y=@0385;default: y=@0007;
  $%  002:整车零部件号:                          $%    $%  ANS002.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13);
  $%  003:应用软件版本号（正常升级版本）:        $%    $%  ANS003.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  004:应用软件版本号（固定版本）:            $%    $%  ANS004.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  005:系统供应商代码:                        $%    $%  ANS005.BYTE004  $%  y=ASCII(x1,x2,x3);
  $%  006:ECU生产日期:                           $%    $%  ANS006.BYTE004  $%  y=HEX(x1,x2,x3,x4);
  $%  007:控制器序列号:                          $%    $%  ANS007.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11);
  $%  008:整车VIN:                               $%    $%  ANS008.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  009:硬件版本号:                            $%    $%  ANS009.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5);
  $%  010:诊断设备序列号:                        $%    $%  ANS010.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  011:刷新日期:                              $%    $%  ANS011.BYTE004  $%  y=HEX(x1,x2,x3,x4);
  $%  012:24位国标码:                            $%    $%  ANS012.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24);
  $%  013:应用硬件版本号（固定版本）:            $%    $%  ANS013.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5);
  $%  014:软件总成版本号:                        $%    $%  ANS014.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  015:软件总成零件号:                        $%    $%  ANS015.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13);
  $%  016:ECU装配日期:                           $%    $%  ANS016.BYTE004  $%  y=HEX(x1,x2,x3,x4);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:706 03 22 F0 12 FF FF FF FF       $  ANS000:716 03 22 F0 12 FF FF FF FF
  $  REQ001:706 03 22 F0 13 FF FF FF FF       $  ANS001:716 03 22 F0 13 FF FF FF FF
  $  REQ002:706 03 22 F0 14 FF FF FF FF       $  ANS002:716 03 22 F0 14 FF FF FF FF
  $  REQ003:706 03 22 20 00 FF FF FF FF       $  ANS003:716 03 22 20 00 FF FF FF FF
  $  REQ004:706 03 22 20 01 FF FF FF FF       $  ANS004:716 03 22 20 01 FF FF FF FF
  $  REQ005:706 03 22 20 02 FF FF FF FF       $  ANS005:716 03 22 20 02 FF FF FF FF
  $  REQ006:706 03 22 20 03 FF FF FF FF       $  ANS006:716 03 22 20 03 FF FF FF FF
  $  REQ007:706 03 22 20 05 FF FF FF FF       $  ANS007:716 03 22 20 05 FF FF FF FF
  $  REQ008:706 03 22 20 11 FF FF FF FF       $  ANS008:716 03 22 20 11 FF FF FF FF
  $  REQ009:706 03 22 20 19 FF FF FF FF       $  ANS009:716 03 22 20 19 FF FF FF FF
  $  REQ010:706 03 22 20 20 FF FF FF FF       $  ANS010:716 03 22 20 20 FF FF FF FF
  $  REQ011:706 03 22 20 24 FF FF FF FF       $  ANS011:716 03 22 20 24 FF FF FF FF
  $  REQ012:706 03 22 20 25 FF FF FF FF       $  ANS012:716 03 22 20 25 FF FF FF FF
  $  REQ013:706 03 22 20 28 FF FF FF FF       $  ANS013:716 03 22 20 28 FF FF FF FF
  $  REQ014:706 03 22 20 29 FF FF FF FF       $  ANS014:716 03 22 20 29 FF FF FF FF
  $  REQ015:706 03 22 20 30 FF FF FF FF       $  ANS015:716 03 22 20 30 FF FF FF FF
  $  REQ016:706 03 22 20 31 FF FF FF FF       $  ANS016:716 03 22 20 31 FF FF FF FF
  $  REQ017:706 03 22 20 32 FF FF FF FF       $  ANS017:716 03 22 20 32 FF FF FF FF
  $  REQ018:706 03 22 20 33 FF FF FF FF       $  ANS018:716 03 22 20 33 FF FF FF FF
  $  REQ019:706 03 22 20 34 FF FF FF FF       $  ANS019:716 03 22 20 34 FF FF FF FF
  $  REQ020:706 03 22 20 35 FF FF FF FF       $  ANS020:716 03 22 20 35 FF FF FF FF
  $  REQ021:706 03 22 20 36 FF FF FF FF       $  ANS021:716 03 22 20 36 FF FF FF FF
  $  REQ022:706 03 22 20 37 FF FF FF FF       $  ANS022:716 03 22 20 37 FF FF FF FF
  $  REQ023:706 03 22 20 38 FF FF FF FF       $  ANS023:716 03 22 20 38 FF FF FF FF
  $  REQ024:706 03 22 20 39 FF FF FF FF       $  ANS024:716 03 22 20 39 FF FF FF FF
  $  REQ025:706 03 22 20 40 FF FF FF FF       $  ANS025:716 03 22 20 40 FF FF FF FF
  $  REQ026:706 03 22 20 41 FF FF FF FF       $  ANS026:716 03 22 20 41 FF FF FF FF
  $  REQ027:706 03 22 20 42 FF FF FF FF       $  ANS027:716 03 22 20 42 FF FF FF FF
  $  REQ028:706 03 22 20 43 FF FF FF FF       $  ANS028:716 03 22 20 43 FF FF FF FF
  $  REQ029:706 03 22 20 47 FF FF FF FF       $  ANS029:716 03 22 20 47 FF FF FF FF
  $  REQ030:706 03 22 20 48 FF FF FF FF       $  ANS030:716 03 22 20 48 FF FF FF FF
  $  REQ031:706 03 22 20 49 FF FF FF FF       $  ANS031:716 03 22 20 49 FF FF FF FF
  $  REQ032:706 03 22 20 51 FF FF FF FF       $  ANS032:716 03 22 20 51 FF FF FF FF
  $  REQ033:706 03 22 20 52 FF FF FF FF       $  ANS033:716 03 22 20 52 FF FF FF FF
  $  REQ034:706 03 22 20 53 FF FF FF FF       $  ANS034:716 03 22 20 53 FF FF FF FF
  $  REQ035:706 03 22 20 54 FF FF FF FF       $  ANS035:716 03 22 20 54 FF FF FF FF
  $  REQ036:706 03 22 20 55 FF FF FF FF       $  ANS036:716 03 22 20 55 FF FF FF FF
  $  REQ037:706 03 22 20 56 FF FF FF FF       $  ANS037:716 03 22 20 56 FF FF FF FF
  $  REQ038:706 03 22 20 57 FF FF FF FF       $  ANS038:716 03 22 20 57 FF FF FF FF
  $  REQ039:706 03 22 20 61 FF FF FF FF       $  ANS039:716 03 22 20 61 FF FF FF FF
  $  REQ040:706 03 22 20 62 FF FF FF FF       $  ANS040:716 03 22 20 62 FF FF FF FF
  $  REQ041:706 03 22 20 63 FF FF FF FF       $  ANS041:716 03 22 20 63 FF FF FF FF
  $  REQ042:706 03 22 20 64 FF FF FF FF       $  ANS042:716 03 22 20 64 FF FF FF FF
  $  REQ043:706 03 22 20 65 FF FF FF FF       $  ANS043:716 03 22 20 65 FF FF FF FF
  $  REQ044:706 03 22 20 66 FF FF FF FF       $  ANS044:716 03 22 20 66 FF FF FF FF
  $  REQ045:706 03 22 20 67 FF FF FF FF       $  ANS045:716 03 22 20 67 FF FF FF FF
  $  REQ046:706 03 22 20 68 FF FF FF FF       $  ANS046:716 03 22 20 68 FF FF FF FF
  $  REQ047:706 03 22 20 69 FF FF FF FF       $  ANS047:716 03 22 20 69 FF FF FF FF
  $  REQ048:706 03 22 20 70 FF FF FF FF       $  ANS048:716 03 22 20 70 FF FF FF FF
  $  REQ049:706 03 22 20 71 FF FF FF FF       $  ANS049:716 03 22 20 71 FF FF FF FF
  $  REQ050:706 03 22 20 72 FF FF FF FF       $  ANS050:716 03 22 20 72 FF FF FF FF
  $  REQ051:706 03 22 20 73 FF FF FF FF       $  ANS051:716 03 22 20 73 FF FF FF FF
  $  REQ052:706 03 22 20 74 FF FF FF FF       $  ANS052:716 03 22 20 74 FF FF FF FF
  $  REQ053:706 03 22 20 75 FF FF FF FF       $  ANS053:716 03 22 20 75 FF FF FF FF
  $  REQ054:706 03 22 20 76 FF FF FF FF       $  ANS054:716 03 22 20 76 FF FF FF FF
  $  REQ055:706 03 22 20 77 FF FF FF FF       $  ANS055:716 03 22 20 77 FF FF FF FF
  $  REQ056:706 03 22 20 78 FF FF FF FF       $  ANS056:716 03 22 20 78 FF FF FF FF
  $  REQ057:706 03 22 20 79 FF FF FF FF       $  ANS057:716 03 22 20 79 FF FF FF FF
  $  REQ058:706 03 22 20 80 FF FF FF FF       $  ANS058:716 03 22 20 80 FF FF FF FF
  $  REQ059:706 03 22 20 81 FF FF FF FF       $  ANS059:716 03 22 20 81 FF FF FF FF
  $  REQ060:706 03 22 20 88 FF FF FF FF       $  ANS060:716 03 22 20 88 FF FF FF FF
  $  REQ061:706 03 22 20 89 FF FF FF FF       $  ANS061:716 03 22 20 89 FF FF FF FF
  $  REQ062:706 03 22 20 90 FF FF FF FF       $  ANS062:716 03 22 20 90 FF FF FF FF
  $  REQ063:706 03 22 20 92 FF FF FF FF       $  ANS063:716 03 22 20 92 FF FF FF FF
  $  REQ064:706 03 22 20 93 FF FF FF FF       $  ANS064:716 03 22 20 93 FF FF FF FF
  $  REQ065:706 03 22 21 09 FF FF FF FF       $  ANS065:716 03 22 21 09 FF FF FF FF
  $  REQ066:706 03 22 21 10 FF FF FF FF       $  ANS066:716 03 22 21 10 FF FF FF FF
  $  REQ067:706 03 22 21 15 FF FF FF FF       $  ANS067:716 03 22 21 15 FF FF FF FF
  $  REQ068:706 03 22 21 32 FF FF FF FF       $  ANS068:716 03 22 21 32 FF FF FF FF
  $  REQ069:706 03 22 21 33 FF FF FF FF       $  ANS069:716 03 22 21 33 FF FF FF FF
  $  REQ070:706 03 22 21 34 FF FF FF FF       $  ANS070:716 03 22 21 34 FF FF FF FF
  $  REQ071:706 03 22 21 35 FF FF FF FF       $  ANS071:716 03 22 21 35 FF FF FF FF
  $  REQ072:706 03 22 21 36 FF FF FF FF       $  ANS072:716 03 22 21 36 FF FF FF FF
  $  REQ073:706 03 22 21 37 FF FF FF FF       $  ANS073:716 03 22 21 37 FF FF FF FF
  $  REQ074:706 03 22 21 38 FF FF FF FF       $  ANS074:716 03 22 21 38 FF FF FF FF
  $  REQ075:706 03 22 21 43 FF FF FF FF       $  ANS075:716 03 22 21 43 FF FF FF FF
  $  REQ076:706 03 22 21 44 FF FF FF FF       $  ANS076:716 03 22 21 44 FF FF FF FF
  $  REQ077:706 03 22 21 45 FF FF FF FF       $  ANS077:716 03 22 21 45 FF FF FF FF
  $  REQ078:706 03 22 21 46 FF FF FF FF       $  ANS078:716 03 22 21 46 FF FF FF FF
  $  REQ079:706 03 22 21 47 FF FF FF FF       $  ANS079:716 03 22 21 47 FF FF FF FF
  $  REQ080:706 03 22 21 48 FF FF FF FF       $  ANS080:716 03 22 21 48 FF FF FF FF
  $  REQ081:706 03 22 21 49 FF FF FF FF       $  ANS081:716 03 22 21 49 FF FF FF FF
  $  REQ082:706 03 22 21 50 FF FF FF FF       $  ANS082:716 03 22 21 50 FF FF FF FF
  $  REQ083:706 03 22 21 51 FF FF FF FF       $  ANS083:716 03 22 21 51 FF FF FF FF

  $  000.动力电池总电压                            $    $  V            $    $  ANS000.BYTE004  $  y=(x1*256+x2)*0.05;
  $  001.动力电池当前电流                          $    $  A            $    $  ANS001.BYTE004  $  y=(x1*256+x2)*0.05-1600;
  $  002.电池SOC                                   $    $  %            $    $  ANS002.BYTE004  $  y=x;
  $  003.整车车速                                  $    $  km/h         $    $  ANS003.BYTE004  $  y=x;
  $  004.里程                                      $    $  km           $    $  ANS004.BYTE004  $  y=x*65536+x2*256+x3;
  $  005.铅酸电池电压                              $    $  mV           $    $  ANS005.BYTE004  $  y=x1*256+x2;
  $  006.累加和电压                                $    $  V            $    $  ANS006.BYTE004  $  y=(x1*256+x2)*0.1;
  $  007.总线电流有效性                            $    $               $    $  ANS007.BYTE004  $  y=x;
  $  008.充电过流限值                              $    $  A            $    $  ANS008.BYTE004  $  y=(x1*256+x2)*0.1;
  $  009.CSU采样电流值                             $    $  A            $    $  ANS009.BYTE004  $  y=(x1*256+x2)*6553.6+(x3*256+x4)*0.1;
  $  010.CSU采样电流方向                           $    $               $    $  ANS010.BYTE004  $  y=x;
  $  011.CSU电流采样不更新标志位                   $    $               $    $  ANS011.BYTE004  $  y=x;
  $  012.主回路继电器状态                          $    $               $    $  ANS012.BYTE004  $  y=x;
  $  013.直流插座正温度                            $    $  degree C     $    $  ANS013.BYTE004  $  y=(x1*256+x2)*0.5-50;
  $  014.直流插座负温度                            $    $  degree C     $    $  ANS014.BYTE004  $  y=(x1*256+x2)*0.5-50;
  $  015.交流插座温度                              $    $  degree C     $    $  ANS015.BYTE004  $  y=(x1*256+x2)*0.5-50;
  $  016.最大均衡温度                              $    $  degree C     $    $  ANS016.BYTE004  $  y=(x1*256+x2)*0.5-50;
  $  017.均衡温度有效性                            $    $               $    $  ANS017.BYTE004  $  y=x;
  $  018.最大芯片内部温度                          $    $  degree C     $    $  ANS018.BYTE004  $  y=(x1*256+x2)*0.5-50;
  $  019.芯片内部温度有效性                        $    $               $    $  ANS019.BYTE004  $  y=x;
  $  020.BMU板温1                                  $    $  degree C     $    $  ANS020.BYTE004  $  y=(x1*256+x2)*0.5-50;
  $  021.BMU板温2                                  $    $  degree C     $    $  ANS021.BYTE004  $  y=(x1*256+x2)*0.5-50;
  $  022.模组温度Raw值                             $    $  degree C     $    $  ANS022.BYTE004  $  y=x1*256+x2;
  $  023.平均模组温度                              $    $  degree C     $    $  ANS023.BYTE004  $  y=(x1*256+x2)*0.5-50;
  $  024.最大模组温度                              $    $  degree C     $    $  ANS024.BYTE004  $  y=(x1*256+x2)*0.5-50;
  $  025.最小模组温度                              $    $  degree C     $    $  ANS025.BYTE004  $  y=(x1*256+x2)*0.5-50;
  $  026.最大模组温度CMC和位置                     $    $               $    $  ANS026.BYTE004  $  y=x;
  $  027.最小模组温度CMC和位置                     $    $               $    $  ANS027.BYTE004  $  y=x;
  $  028.模组温度有效性                            $    $               $    $  ANS028.BYTE004  $  y=x1*256+x2;
  $  029.最大电压SOC                               $    $  %            $    $  ANS029.BYTE004  $  y=(x1*256+x2)*0.1;
  $  030.最小电压SOC                               $    $  %            $    $  ANS030.BYTE004  $  y=(x1*256+x2)*0.1;
  $  031.平均电压SOC                               $    $  %            $    $  ANS031.BYTE004  $  y=(x1*256+x2)*0.1;
  $  032.显示SOH                                   $    $  %            $    $  ANS032.BYTE004  $  y=(x1*256+x2)*0.1;
  $  033.CSU温度值                                 $    $  degree C     $    $  ANS033.BYTE004  $  y=x-50;
  $  034.非预期下电故障判断标志                    $    $               $    $  ANS034.BYTE004  $  y=x;
  $  035.模组温度菊花链更新标志位                  $    $               $    $  ANS035.BYTE004  $  y=x;
  $  036.电芯电压菊花链更新标志位                  $    $               $    $  ANS036.BYTE004  $  y=x;
  $  037.菊花链复位标志                            $    $               $    $  ANS037.BYTE004  $  y=x;
  $  038.ACAN碰撞信号                              $    $               $    $  ANS038.BYTE004  $  y=x;
  $  039.绝缘检测状态                              $    $               $    $  ANS039.BYTE004  $  y=x;
  $  040.绝缘电压采集状态                          $    $               $    $  ANS040.BYTE004  $  y=x;
  $  041.绝缘正极电压Raw值                         $    $               $    $  ANS041.BYTE004  $  y=x1*256+x2;
  $  042.绝缘负极电压Raw值                         $    $               $    $  ANS042.BYTE004  $  y=x1*256+x2;
  $  043.绝缘采样第一阶段正极电压值                $    $  V            $    $  ANS043.BYTE004  $  y=(x1*256+x2)*65536+x3*256+x4;
  $  044.绝缘采样第一阶段负极电压值                $    $  V            $    $  ANS044.BYTE004  $  y=(x1*256+x2)*65536+x3*256+x4;
  $  045.绝缘采样第二阶段正极电压值                $    $  V            $    $  ANS045.BYTE004  $  y=(x1*256+x2)*65536+x3*256+x4;
  $  046.绝缘采样第二阶段负极电压值                $    $  V            $    $  ANS046.BYTE004  $  y=(x1*256+x2)*65536+x3*256+x4;
  $  047.正极绝缘阻值                              $    $  KΩ          $    $  ANS047.BYTE004  $  y=x1*256+x2;
  $  048.负极绝缘阻值                              $    $  KΩ          $    $  ANS048.BYTE004  $  y=x1*256+x2;
  $  049.CC2采样电压                               $    $  mV           $    $  ANS049.BYTE004  $  y=x1*256+x2;
  $  050.快充停止原因                              $    $               $    $  ANS050.BYTE004  $  y=x;
  $  051.慢充停止原因                              $    $               $    $  ANS051.BYTE004  $  y=x;
  $  052.AC枪连接状态                              $    $               $    $  ANS052.BYTE004  $  y=x;
  $  053.DC枪连接状态                              $    $               $    $  ANS053.BYTE004  $  y=x;
  $  054.AC充电模式标志                            $    $               $    $  ANS054.BYTE004  $  y=x;
  $  055.DC充电模式标志                            $    $               $    $  ANS055.BYTE004  $  y=x;
  $  056.均衡回路开路故障CMC号                     $    $               $    $  ANS056.BYTE004  $  y=x;
  $  057.均衡回路开路故障Cell号                    $    $               $    $  ANS057.BYTE004  $  y=x;
  $  058.均衡回路短路故障CMC号                     $    $               $    $  ANS058.BYTE004  $  y=x;
  $  059.均衡回路短路故障Cell号                    $    $               $    $  ANS059.BYTE004  $  y=x;
  $  060.运输和生产模式                            $    $               $    $  ANS060.BYTE004  $  y=x;
  $  061.HVILCh0高边电压值                         $    $  mV           $    $  ANS061.BYTE004  $  y=x1*256+x2;
  $  062.HVILCh1高边电压值                         $    $  mV           $    $  ANS062.BYTE004  $  y=x1*256+x2;
  $  063.HVILCh0低边电压值                         $    $  mV           $    $  ANS063.BYTE004  $  y=x1*256+x2;
  $  064.HVILCh1低边电压值                         $    $  mV           $    $  ANS064.BYTE004  $  y=x1*256+x2;
  $  065.主正继电器外侧对主负内侧电压              $    $  V            $    $  ANS065.BYTE004  $  y=x1*256+x2;
  $  066.DC充电继电器外侧对主负内侧电压            $    $  V            $    $  ANS066.BYTE004  $  y=x1*256+x2;
  $  067.加热继电器外侧对主负内侧电压              $    $  V            $    $  ANS067.BYTE004  $  y=x1*256+x2;
  $  068.电芯电压采样芯片错误掩码                  $    $               $    $  ANS068.BYTE004  $  y=x;
  $  069.最大电芯电压CMC和最大电芯电压位置         $    $               $    $  ANS069.BYTE004  $  y=x;
  $  070.最小电芯电压CMC和最小电芯电压位置         $    $               $    $  ANS070.BYTE004  $  y=x;
  $  071.电芯电压RAW                               $    $               $    $  ANS071.BYTE004  $  y=x;
  $  072.平均电芯电压                              $    $  mV           $    $  ANS072.BYTE004  $  y=x1*256+x2;
  $  073.最大电芯电压                              $    $  mV           $    $  ANS073.BYTE004  $  y=x1*256+x2;
  $  074.最小电芯电压                              $    $  mV           $    $  ANS074.BYTE004  $  y=x1*256+x2;
  $  075.每一个电芯电压的有效性                    $    $               $    $  ANS075.BYTE004  $  y=x;
  $  076.每一个模组电压的有效性                    $    $               $    $  ANS076.BYTE004  $  y=x;
  $  077.CSU温度过高导致复位标志位                 $    $               $    $  ANS077.BYTE004  $  y=x;
  $  078.D2D通讯故障错误标志位                     $    $               $    $  ANS078.BYTE004  $  y=x;
  $  079.CSU供电电压状态                           $    $               $    $  ANS079.BYTE004  $  y=x;
  $  080.SHUNT开路标志位                           $    $               $    $  ANS080.BYTE004  $  y=x;
  $  081.因为PLL clock 引起CSU运行异常             $    $               $    $  ANS081.BYTE004  $  y=x;
  $  082.因为OSCILLATOR Clock引起CSU运行异常       $    $               $    $  ANS082.BYTE004  $  y=x;
  $  083.CSU程序运行异常,导致COP 复位              $    $               $    $  ANS083.BYTE004  $  y=x;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:706 30 00 01 FF FF FF FF FF  $FC 

;******************************************************************************************************************************************************
