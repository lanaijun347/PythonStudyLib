
    车型ID：211b

    模拟：协议模拟-->211b

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7E8

进入命令:

  $~  REQ000:7E0 02 10 01 00 00 00 00 00       $~  ANS000:7E8 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7E0 02 3E 80 00 00 00 00 00       $!  ANS000:7E8 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7E0 03 19 02 08 00 00 00 00       $#  ANS000:7E8 03 19 02 08 00 00 00 00

		控制公式：
			y=(x1<<8)+x2;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/ae100000_2BYTE


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7E0 04 14 FF FF FF 00 00 00       $$  ANS000:7E8 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7E0 03 22 F1 92 00 00 00 00       $%  ANS000:7E8 03 22 F1 92 00 00 00 00
  $%  REQ001:7E0 03 22 F1 94 00 00 00 00       $%  ANS001:7E8 03 22 F1 94 00 00 00 00
  $%  REQ002:7E0 03 22 F1 95 00 00 00 00       $%  ANS002:7E8 03 22 F1 95 00 00 00 00
  $%  REQ003:7E0 03 22 F1 99 00 00 00 00       $%  ANS003:7E8 03 22 F1 99 00 00 00 00
  $%  REQ004:7E0 03 22 F1 90 00 00 00 00       $%  ANS004:7E8 03 22 F1 90 00 00 00 00

  $%  000:硬件编号:        $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19);
  $%  001:软件编号:        $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  002:软件版本:        $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  003:编程日期:        $%    $%  ANS003.BYTE004  $%  y=SPRINTF([%02X%02X%s%02X%s%02X%s],x1,x2,@0038,x3,@0039,x4,@003a);
  $%  004:VIN:             $%    $%  ANS004.BYTE002  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7E0 03 22 00 0C 00 00 00 00       $  ANS000:7E8 03 22 00 0C 00 00 00 00
  $  REQ001:7E0 03 22 11 92 00 00 00 00       $  ANS001:7E8 03 22 11 92 00 00 00 00
  $  REQ002:7E0 03 22 11 41 00 00 00 00       $  ANS002:7E8 03 22 11 41 00 00 00 00
  $  REQ003:7E0 03 22 12 E5 00 00 00 00       $  ANS003:7E8 03 22 12 E5 00 00 00 00
  $  REQ004:7E0 03 22 00 05 00 00 00 00       $  ANS004:7E8 03 22 00 05 00 00 00 00
  $  REQ005:7E0 03 22 00 45 00 00 00 00       $  ANS005:7E8 03 22 00 45 00 00 00 00
  $  REQ006:7E0 03 22 00 11 00 00 00 00       $  ANS006:7E8 03 22 00 11 00 00 00 00
  $  REQ007:7E0 03 22 00 47 00 00 00 00       $  ANS007:7E8 03 22 00 47 00 00 00 00
  $  REQ008:7E0 03 22 00 49 00 00 00 00       $  ANS008:7E8 03 22 00 49 00 00 00 00
  $  REQ009:7E0 03 22 00 4A 00 00 00 00       $  ANS009:7E8 03 22 00 4A 00 00 00 00
  $  REQ010:7E0 03 22 00 04 00 00 00 00       $  ANS010:7E8 03 22 00 04 00 00 00 00
  $  REQ011:7E0 03 22 00 0E 00 00 00 00       $  ANS011:7E8 03 22 00 0E 00 00 00 00
  $  REQ012:7E0 03 22 11 93 00 00 00 00       $  ANS012:7E8 03 22 11 93 00 00 00 00
  $  REQ013:7E0 03 22 00 0D 00 00 00 00       $  ANS013:7E8 03 22 00 0D 00 00 00 00
  $  REQ014:7E0 03 22 12 1E 00 00 00 00       $  ANS014:7E8 03 22 12 1E 00 00 00 00
  $  REQ015:7E0 03 22 11 A1 00 00 00 00       $  ANS015:7E8 03 22 11 A1 00 00 00 00
  $  REQ016:7E0 03 22 00 0F 00 00 00 00       $  ANS016:7E8 03 22 00 0F 00 00 00 00
  $  REQ017:7E0 03 22 00 0B 00 00 00 00       $  ANS017:7E8 03 22 00 0B 00 00 00 00
  $  REQ018:7E0 03 22 12 E2 00 00 00 00       $  ANS018:7E8 03 22 12 E2 00 00 00 00
  $  REQ019:7E0 03 22 11 9D 00 00 00 00       $  ANS019:7E8 03 22 11 9D 00 00 00 00
  $  REQ020:7E0 03 22 00 06 00 00 00 00       $  ANS020:7E8 03 22 00 06 00 00 00 00
  $  REQ021:7E0 03 22 00 07 00 00 00 00       $  ANS021:7E8 03 22 00 07 00 00 00 00
  $  REQ022:7E0 03 22 00 21 00 00 00 00       $  ANS022:7E8 03 22 00 21 00 00 00 00
  $  REQ023:7E0 03 22 14 69 00 00 00 00       $  ANS023:7E8 03 22 14 69 00 00 00 00
  $  REQ024:7E0 03 22 11 9E 00 00 00 00       $  ANS024:7E8 03 22 11 9E 00 00 00 00
  $  REQ025:7E0 03 22 16 16 00 00 00 00       $  ANS025:7E8 03 22 16 16 00 00 00 00
  $  REQ026:7E0 03 22 11 45 00 00 00 00       $  ANS026:7E8 03 22 11 45 00 00 00 00
  $  REQ027:7E0 03 22 11 46 00 00 00 00       $  ANS027:7E8 03 22 11 46 00 00 00 00
  $  REQ028:7E0 03 22 11 D7 00 00 00 00       $  ANS028:7E8 03 22 11 D7 00 00 00 00
  $  REQ029:7E0 03 22 12 12 00 00 00 00       $  ANS029:7E8 03 22 12 12 00 00 00 00
  $  REQ030:7E0 03 22 12 1A 00 00 00 00       $  ANS030:7E8 03 22 12 1A 00 00 00 00
  $  REQ031:7E0 03 22 12 3F 00 00 00 00       $  ANS031:7E8 03 22 12 3F 00 00 00 00
  $  REQ032:7E0 03 22 12 41 00 00 00 00       $  ANS032:7E8 03 22 12 41 00 00 00 00
  $  REQ033:7E0 03 22 12 43 00 00 00 00       $  ANS033:7E8 03 22 12 43 00 00 00 00
  $  REQ034:7E0 03 22 12 D4 00 00 00 00       $  ANS034:7E8 03 22 12 D4 00 00 00 00
  $  REQ035:7E0 03 22 14 81 00 00 00 00       $  ANS035:7E8 03 22 14 81 00 00 00 00
  $  REQ036:7E0 03 22 14 82 00 00 00 00       $  ANS036:7E8 03 22 14 82 00 00 00 00
  $  REQ037:7E0 03 22 16 78 00 00 00 00       $  ANS037:7E8 03 22 16 78 00 00 00 00
  $  REQ038:7E0 03 22 16 79 00 00 00 00       $  ANS038:7E8 03 22 16 79 00 00 00 00
  $  REQ039:7E0 03 22 11 A3 00 00 00 00       $  ANS039:7E8 03 22 11 A3 00 00 00 00
  $  REQ040:7E0 03 22 15 00 00 00 00 00       $  ANS040:7E8 03 22 15 00 00 00 00 00
  $  REQ041:7E0 03 22 15 01 00 00 00 00       $  ANS041:7E8 03 22 15 01 00 00 00 00
  $  REQ042:7E0 03 22 15 09 00 00 00 00       $  ANS042:7E8 03 22 15 09 00 00 00 00
  $  REQ043:7E0 03 22 15 0B 00 00 00 00       $  ANS043:7E8 03 22 15 0B 00 00 00 00
  $  REQ044:7E0 03 22 11 00 00 00 00 00       $  ANS044:7E8 03 22 11 00 00 00 00 00
  $  REQ045:7E0 03 22 11 03 00 00 00 00       $  ANS045:7E8 03 22 11 03 00 00 00 00
  $  REQ046:7E0 03 22 11 4B 00 00 00 00       $  ANS046:7E8 03 22 11 4B 00 00 00 00
  $  REQ047:7E0 03 22 11 52 00 00 00 00       $  ANS047:7E8 03 22 11 52 00 00 00 00
  $  REQ048:7E0 03 22 11 71 00 00 00 00       $  ANS048:7E8 03 22 11 71 00 00 00 00
  $  REQ049:7E0 03 22 11 9B 00 00 00 00       $  ANS049:7E8 03 22 11 9B 00 00 00 00
  $  REQ050:7E0 03 22 11 BB 00 00 00 00       $  ANS050:7E8 03 22 11 BB 00 00 00 00
  $  REQ051:7E0 03 22 11 BD 00 00 00 00       $  ANS051:7E8 03 22 11 BD 00 00 00 00
  $  REQ052:7E0 03 22 11 BE 00 00 00 00       $  ANS052:7E8 03 22 11 BE 00 00 00 00
  $  REQ053:7E0 03 22 11 C0 00 00 00 00       $  ANS053:7E8 03 22 11 C0 00 00 00 00
  $  REQ054:7E0 03 22 11 C1 00 00 00 00       $  ANS054:7E8 03 22 11 C1 00 00 00 00
  $  REQ055:7E0 03 22 13 44 00 00 00 00       $  ANS055:7E8 03 22 13 44 00 00 00 00
  $  REQ056:7E0 03 22 13 45 00 00 00 00       $  ANS056:7E8 03 22 13 45 00 00 00 00
  $  REQ057:7E0 03 22 13 46 00 00 00 00       $  ANS057:7E8 03 22 13 46 00 00 00 00
  $  REQ058:7E0 03 22 12 EF 00 00 00 00       $  ANS058:7E8 03 22 12 EF 00 00 00 00
  $  REQ059:7E0 03 22 13 3C 00 00 00 00       $  ANS059:7E8 03 22 13 3C 00 00 00 00
  $  REQ060:7E0 03 22 13 3D 00 00 00 00       $  ANS060:7E8 03 22 13 3D 00 00 00 00
  $  REQ061:7E0 03 22 13 3E 00 00 00 00       $  ANS061:7E8 03 22 13 3E 00 00 00 00
  $  REQ062:7E0 03 22 13 3F 00 00 00 00       $  ANS062:7E8 03 22 13 3F 00 00 00 00
  $  REQ063:7E0 03 22 11 44 00 00 00 00       $  ANS063:7E8 03 22 11 44 00 00 00 00
  $  REQ064:7E0 03 22 11 4E 00 00 00 00       $  ANS064:7E8 03 22 11 4E 00 00 00 00
  $  REQ065:7E0 03 22 11 55 00 00 00 00       $  ANS065:7E8 03 22 11 55 00 00 00 00
  $  REQ066:7E0 03 22 12 C5 00 00 00 00       $  ANS066:7E8 03 22 12 C5 00 00 00 00
  $  REQ067:7E0 03 22 11 70 00 00 00 00       $  ANS067:7E8 03 22 11 70 00 00 00 00
  $  REQ068:7E0 03 22 00 1C 00 00 00 00       $  ANS068:7E8 03 22 00 1C 00 00 00 00

  $  000.发动机转速                                  $    $  rpm          $    $  ANS000.BYTE004  $  y=x1*0.25;
  $  001.目标怠速                                    $    $  rpm          $    $  ANS001.BYTE004  $  y=x1*12.5;
  $  002.点火电压                                    $    $  V            $    $  ANS002.BYTE004  $  y=x1*1.0/10;
  $  003.进气压力                                    $    $  kPa          $    $  ANS003.BYTE004  $  y=(((x1<<8)+x2)-32768)*1.0/128;
  $  004.冷却液温度                                  $    $  degree C     $    $  ANS004.BYTE004  $  y=x1-40;
  $  005.节气门相对位置                              $    $  %            $    $  ANS005.BYTE004  $  y=x1*1.0/2.55;
  $  006.节气门绝对位置A                             $    $  %            $    $  ANS006.BYTE004  $  y=x1*1.0/2.55;
  $  007.节气门绝对位置B                             $    $  %            $    $  ANS007.BYTE004  $  y=x1*1.0/2.55;
  $  008.加速踏板位置D                               $    $  %            $    $  ANS008.BYTE004  $  y=x1*1.0/2.55;
  $  009.加速踏板位置E                               $    $  %            $    $  ANS009.BYTE004  $  y=x1*1.0/2.55;
  $  010.累计负荷                                    $    $  %            $    $  ANS010.BYTE004  $  y=x1*1.0/2.55;
  $  011.点火提前角                                  $    $  °           $    $  ANS011.BYTE004  $  y=x1*1.0/2-64;
  $  012.喷油脉宽                                    $    $  毫秒         $    $  ANS012.BYTE004  $  y=((x1<<8)+x2)*1.0/65.535;
  $  013.车速                                        $    $  km/h         $    $  ANS013.BYTE004  $  y=x1;
  $  014.发动机里程表                                $    $  km           $    $  ANS014.BYTE004  $  y=((x1<<8)+x2)*10;
  $  015.本次发动机运行时间                          $    $  秒           $    $  ANS015.BYTE004  $  y=(x1<<8)+x2;
  $  016.进气温度                                    $    $  degree C     $    $  ANS016.BYTE004  $  y=x1-40;
  $  017.进气歧管绝对压力                            $    $  kPa          $    $  ANS017.BYTE004  $  y=x1;
  $  018.(启动)进气温度传感器温度                    $    $  degree C     $    $  ANS018.BYTE004  $  y=x1-40;
  $  019.大气压强                                    $    $  kPa          $    $  ANS019.BYTE004  $  y=(x1+28)*1.0/2.71;
  $  020.燃油短期修正1                               $    $  %            $    $  ANS020.BYTE004  $  y=(x1-128)*1.0/1.28;
  $  021.燃油长期修正1                               $    $  %            $    $  ANS021.BYTE004  $  y=(x1-128)*1.0/1.28;
  $  022.MIL(故障指示灯)亮后行驶里程                 $    $  km           $    $  ANS022.BYTE004  $  y=(x1<<8)+x2;
  $  023.空调压力                                    $    $  kPa          $    $  ANS023.BYTE004  $  y=((x1<<8)+x2)*1.0/8-4096;
  $  024.空燃比                                      $    $  %            $    $  ANS024.BYTE004  $  y=x1*1.0/10;
  $  025.电压基准1                                   $    $  V            $    $  ANS025.BYTE004  $  y=x1*10*1.0/255;
  $  026.电压基准2                                   $    $  V            $    $  ANS025.BYTE005  $  y=x1*10*1.0/255;
  $  027.氧传感器B1-S1电压                           $    $  mV           $    $  ANS026.BYTE004  $  y=x1*1.0/0.2304;
  $  028.氧传感器B1-S1电压_1                         $    $  mV           $    $  ANS027.BYTE004  $  y=x1*1.0/0.2304;
  $  029.氧传感器稀转浓次数B1-S1                     $    $               $    $  ANS028.BYTE004  $  y=(x1<<8)+x2;
  $  030.氧传感器浓/稀-稀/浓反应比率B1-S1            $    $  %            $    $  ANS029.BYTE004  $  y=((x1<<8)+x2)*1.0/512;
  $  031.氧浓转稀次数B1-S1                           $    $               $    $  ANS030.BYTE004  $  y=(x1<<8)+x2;
  $  032.氧稀转浓时间B1-S1                           $    $  毫秒         $    $  ANS031.BYTE004  $  y=((x1<<8)+x2)*7.81;
  $  033.氧浓转稀时间B1-S1                           $    $  毫秒         $    $  ANS032.BYTE004  $  y=((x1<<8)+x2)*7.81;
  $  034.氧稀转浓平均时间B1-S1                       $    $  毫秒         $    $  ANS033.BYTE004  $  y=((x1<<8)+x2)*1.0/512;
  $  035.氧浓转稀平均时间B1-S1                       $    $  毫秒         $    $  ANS034.BYTE004  $  y=((x1<<8)+x2)*1.0/512;
  $  036.氧传感器加热B1-S1                           $    $  E            $    $  ANS035.BYTE004  $  y=((x1<<8)+x2)*0.02;
  $  037.氧传感器加热B1-S2                           $    $  E            $    $  ANS036.BYTE004  $  y=((x1<<8)+x2)*0.02;
  $  038.氧加热电流B1-S1                             $    $  A            $    $  ANS037.BYTE004  $  y=((x1<<8)+x2)*1.0/512;
  $  039.氧加热电流B1-S2                             $    $  A            $    $  ANS038.BYTE004  $  y=((x1<<8)+x2)*1.0/512;
  $  040.催化转换器累计温度                          $    $  degree C     $    $  ANS039.BYTE004  $  y=3*x1+300;
  $  041.ICMD最低催化温度                            $    $  degree C     $    $  ANS040.BYTE004  $  y=(((x1<<8)+x2)-32768)*1.0/16;
  $  042.ICMD最高催化温度                            $    $  degree C     $    $  ANS041.BYTE004  $  y=(((x1<<8)+x2)-32768)*1.0/16;
  $  043.最近测试怠速催化监测时间                    $    $  秒           $    $  ANS042.BYTE004  $  y=((x1<<8)+x2)*1.0/64;
  $  044.阶段怠速催化监测时间                        $    $  秒           $    $  ANS043.BYTE004  $  y=((x1<<8)+x2)*1.0/64;
  $  045.节气门处于怠速位置                          $    $               $    $  ANS044.BYTE004  $  if(x1&0x01) y=@001b;else y=@001c;
  $  046.空调请求激活                                $    $               $    $  ANS044.BYTE004  $  if(x1&0x10) y=@001b;else y=@001c;
  $  047.空调压缩机状态                              $    $               $    $  ANS044.BYTE004  $  if(x1&0x20) y=@0001;else y=@0000;
  $  048.催化剂保护模式                              $    $               $    $  ANS044.BYTE004  $  if(x1&0x40) y=@001b;else y=@001c;
  $  049.燃油泵开启命令                              $    $               $    $  ANS044.BYTE004  $  if(x1&0x80) y=@001b;else y=@001c;
  $  050.低速风扇状态                                $    $               $    $  ANS045.BYTE004  $  if(x1&0x01) y=@0001;else y=@0000;
  $  051.高速风扇状态                                $    $               $    $  ANS045.BYTE004  $  if(x1&0x02) y=@0001;else y=@0000;
  $  052.线性EGR(废气再循环)阀反馈电压               $    $  V            $    $  ANS046.BYTE004  $  y=x1*1.0/51;
  $  053.规格化的线性EGR(废气再循环)                 $    $  %            $    $  ANS047.BYTE004  $  y=x1*1.0/2.55;
  $  054.EGR(废气再循环)阀占空比                     $    $  %            $    $  ANS048.BYTE004  $  y=x1*1.0/2.56;
  $  055.目标EGR(废气再循环)阀开度                   $    $  %            $    $  ANS049.BYTE004  $  y=x1*1.0/2.55;
  $  056.EGR(废气再循环)阀零点位置                   $    $  %            $    $  ANS050.BYTE004  $  y=((x1<<8)+x2)*1.0/327.68;
  $  057.EGR(废气再循环)阀试验抽样减速次数           $    $               $    $  ANS051.BYTE004  $  y=x1;
  $  058.EGR(废气再循环)阀EWMA范围                   $    $               $    $  ANS052.BYTE004  $  if(x1<0x80)y=(x1<<8)+x2;else y=((x1-256)<<8)+x2;
  $  059.EGR(废气再循环)阀EWMA结果(服务)             $    $               $    $  ANS053.BYTE004  $  if(x1<0x80)y=(x1<<8)+x2;else y=((x1-256)<<8)+x2;
  $  060.EGR(废气再循环)阀开度错误计数               $    $               $    $  ANS054.BYTE004  $  y=((x1<<8)+x2)*1.0/163.84;
  $  061.EGR(废气再循环)阀EWMA结果                   $    $               $    $  ANS055.BYTE004  $  y=(x1<<8)+x2;
  $  062.EGR(废气再循环)阀减速试验通过计数器         $    $               $    $  ANS056.BYTE004  $  y=(x1<<8)+x2;
  $  063.EGR(废气再循环)阀减速试验未通过计数器       $    $               $    $  ANS057.BYTE004  $  y=(x1<<8)+x2;
  $  064.TEC学习次数                                 $    $               $    $  ANS058.BYTE004  $  y=x1;
  $  065.#1缸TEC学习值                               $    $               $    $  ANS059.BYTE004  $  y=(x1<<8)+x2;
  $  066.#2缸TEC学习值                               $    $               $    $  ANS060.BYTE004  $  y=(x1<<8)+x2;
  $  067.#3缸TEC学习值                               $    $               $    $  ANS061.BYTE004  $  y=(x1<<8)+x2;
  $  068.#4缸TEC学习值                               $    $               $    $  ANS062.BYTE004  $  y=(x1<<8)+x2;
  $  069.空调压力AD值                                $    $  V            $    $  ANS063.BYTE004  $  y=x1*1.0/51;
  $  070.燃料箱真空压强AD值                          $    $  V            $    $  ANS064.BYTE004  $  y=x1*1.0/51;
  $  071.燃油液面高度传感器电压                      $    $  V            $    $  ANS065.BYTE004  $  y=x1*1.0/51;
  $  072.燃油液面的高度输出                          $    $  %            $    $  ANS066.BYTE004  $  y=x1*1.0/2.55;
  $  073.EEVAP(燃油蒸发系统) PWM(脉宽调制)信号       $    $  %            $    $  ANS067.BYTE004  $  y=x1*1.0/2.55;
  $  074.车载诊断系统类型                            $    $               $    $  ANS068.BYTE004  $  switxh(x1)0x00: y=@06e6;0x01: y=@06e7;0x04: y=@06e8;0x08: y=@06e9;default: y=@0002;

;******************************************************************************************************************************************************

动作测试:

$^ 00.发动机故障(MIL)指示灯控制 
$^IN  REQ00:7E0 02 10 03 00 00 00 00 00     $^IN  

$^TYPE0
$^BUTTON:打开 
$^REQ00:7E0 05 2F 20 10 03 FF 00 00     $^

$^BUTTON:关闭 
$^REQ00:7E0 05 2F 20 10 03 00 00 00     $^

$^BUTTON:退出 
$^REQ00:7E0 04 2F 20 10 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 01.燃油泵继电器控制 
$^IN  REQ00:7E0 02 10 03 00 00 00 00 00     $^IN  

$^TYPE0
$^BUTTON:打开 
$^REQ00:7E0 05 2F 20 12 03 FF 00 00     $^

$^BUTTON:关闭 
$^REQ00:7E0 05 2F 20 12 03 00 00 00     $^

$^BUTTON:退出 
$^REQ00:7E0 04 2F 20 12 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 02.冷却风扇#1(低速风扇)控制 
$^IN  REQ00:7E0 02 10 03 00 00 00 00 00     $^IN  

$^TYPE0
$^BUTTON:打开 
$^REQ00:7E0 05 2F 20 13 03 FF 00 00     $^

$^BUTTON:关闭 
$^REQ00:7E0 05 2F 20 13 03 00 00 00     $^

$^BUTTON:退出 
$^REQ00:7E0 04 2F 20 13 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 03.冷却风扇#2(高速风扇)控制 
$^IN  REQ00:7E0 02 10 03 00 00 00 00 00     $^IN  

$^TYPE0
$^BUTTON:打开 
$^REQ00:7E0 05 2F 20 14 03 FF 00 00     $^

$^BUTTON:关闭 
$^REQ00:7E0 05 2F 20 14 03 00 00 00     $^

$^BUTTON:退出 
$^REQ00:7E0 04 2F 20 14 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 04.空调离合器控制 
$^IN  REQ00:7E0 02 10 03 00 00 00 00 00     $^IN  

$^TYPE0
$^BUTTON:打开 
$^REQ00:7E0 05 2F 20 15 03 FF 00 00     $^

$^BUTTON:关闭 
$^REQ00:7E0 05 2F 20 15 03 00 00 00     $^

$^BUTTON:退出 
$^REQ00:7E0 04 2F 20 15 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 05.碳罐控制阀控制 
$^IN  REQ00:7E0 02 10 03 00 00 00 00 00     $^IN  

$^TYPE0
$^BUTTON:打开 
$^REQ00:7E0 05 2F 20 31 03 FF 00 00     $^

$^BUTTON:关闭 
$^REQ00:7E0 05 2F 20 31 03 00 00 00     $^

$^BUTTON:退出 
$^REQ00:7E0 04 2F 20 31 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 06.禁用燃油喷射控制 
$^IN  REQ00:7E0 02 10 03 00 00 00 00 00     $^IN  

$^TYPE0
$^BUTTON:禁止喷射#1缸 
$^REQ00:7E0 06 2F 20 32 03 00 01 00     $^

$^BUTTON:启动喷射#1缸 
$^REQ00:7E0 06 2F 20 32 03 01 01 00     $^

$^BUTTON:禁止喷射#2缸 
$^REQ00:7E0 06 2F 20 32 03 00 02 00     $^

$^BUTTON:启动喷射#2缸 
$^REQ00:7E0 06 2F 20 32 03 01 02 00     $^

$^BUTTON:禁止喷射#3缸 
$^REQ00:7E0 06 2F 20 32 03 00 03 00     $^

$^BUTTON:启动喷射#3缸 
$^REQ00:7E0 06 2F 20 32 03 01 03 00     $^

$^BUTTON:禁止喷射#4缸 
$^REQ00:7E0 06 2F 20 32 03 00 04 00     $^

$^BUTTON:启动喷射#4缸 
$^REQ00:7E0 06 2F 20 32 03 01 04 00     $^

$^BUTTON:退出 
$^REQ00:7E0 04 2F 20 32 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 07.VGIS(变进气道)控制 
$^IN  REQ00:7E0 02 10 03 00 00 00 00 00     $^IN  

$^TYPE0
$^BUTTON:打开 
$^REQ00:7E0 05 2F 20 38 03 FF 00 00     $^

$^BUTTON:关闭 
$^REQ00:7E0 05 2F 20 38 03 00 00 00     $^

$^BUTTON:退出 
$^REQ00:7E0 04 2F 20 38 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 08.碳罐净化率控制 
$^IN  REQ00:7E0 02 10 03 00 00 00 00 00     $^IN  

 $^TYPE:2
$^BUTTON:输入
$^REQ00:7E0 05 2F 20 11 03 XX 00 00     $^

$^BUTTON:退出
$^REQ00:7E0 04 2F 20 11 00 00 00 00     $^

$^DSP:碳罐净化率控制
$^TIP:请输入测试值(范围:0~100) 
$^IN_F:y=x1;
$^RANGE:0,100
;----------------------------------------------------------------------------------------------------

$^ 09.EGR(废气再循环)阀占空比控制 
$^IN  REQ00:7E0 02 10 03 00 00 00 00 00     $^IN  

 $^TYPE:2
$^BUTTON:输入
$^REQ00:7E0 05 2F 20 19 03 XX 00 00     $^

$^BUTTON:退出
$^REQ00:7E0 04 2F 20 19 00 00 00 00     $^

$^DSP:EGR(废气再循环)阀占空比控制
$^TIP:请输入测试值(范围:0~100) 
$^IN_F:y=x1;
$^RANGE:0,100
;----------------------------------------------------------------------------------------------------

$^ 10.ETC(电子节气门)电机占空比控制 
$^IN  REQ00:7E0 02 10 03 00 00 00 00 00     $^IN  

 $^TYPE:2
$^BUTTON:输入
$^REQ00:7E0 05 2F 20 52 03 XX 00 00     $^

$^BUTTON:退出
$^REQ00:7E0 04 2F 20 52 00 00 00 00     $^

$^DSP:ETC(电子节气门)电机占空比控制
$^TIP:请输入测试值(范围:0~100) 
$^IN_F:y=x1;
$^RANGE:0,100
;----------------------------------------------------------------------------------------------------

$^ 11.CAM活塞同步器进气装置控制 
$^IN  REQ00:7E0 02 10 03 00 00 00 00 00     $^IN  

 $^TYPE:2
$^BUTTON:输入
$^REQ00:7E0 05 2F 20 65 03 XX 00 00     $^

$^BUTTON:退出
$^REQ00:7E0 04 2F 20 65 00 00 00 00     $^

$^DSP:CAM活塞同步器进气装置控制
$^TIP:请输入测试值(范围:0~60) 
$^IN_F:y=x1;
$^RANGE:0,60
;----------------------------------------------------------------------------------------------------

$^ 12.CAM活塞同步器进气装置油控制阀控制 
$^IN  REQ00:7E0 02 10 03 00 00 00 00 00     $^IN  

 $^TYPE:2
$^BUTTON:输入
$^REQ00:7E0 05 2F 20 66 03 XX 00 00     $^

$^BUTTON:退出
$^REQ00:7E0 04 2F 20 66 00 00 00 00     $^

$^DSP:CAM活塞同步器进气装置油控制阀控制
$^TIP:请输入测试值(范围:0~100) 
$^IN_F:y=x1;
$^RANGE:0,100
;----------------------------------------------------------------------------------------------------

$^ 13.CAM活塞同步器排气装置控制 
$^IN  REQ00:7E0 02 10 03 00 00 00 00 00     $^IN  

 $^TYPE:2
$^BUTTON:输入
$^REQ00:7E0 05 2F 20 67 03 XX 00 00     $^

$^BUTTON:退出
$^REQ00:7E0 04 2F 20 67 00 00 00 00     $^

$^DSP:CAM活塞同步器排气装置控制
$^TIP:请输入测试值(范围:0~60) 
$^IN_F:y=x1;
$^RANGE:0,60
;----------------------------------------------------------------------------------------------------

$^ 14.CAM活塞同步器排气装置油控制阀控制 
$^IN  REQ00:7E0 02 10 03 00 00 00 00 00     $^IN  

 $^TYPE:2
$^BUTTON:输入
$^REQ00:7E0 05 2F 20 68 03 XX 00 00     $^

$^BUTTON:退出
$^REQ00:7E0 04 2F 20 68 00 00 00 00     $^

$^DSP:CAM活塞同步器排气装置油控制阀控制
$^TIP:请输入测试值(范围:0~100) 
$^IN_F:y=x1;
$^RANGE:0,100
;----------------------------------------------------------------------------------------------------

$^ 15.曲轴自适应控制 
$^IN  REQ00:7E0 02 10 03 00 00 00 00 00     $^IN  

$^TYPE0
$^BUTTON:禁用 
$^REQ00:7E0 05 2F 20 2C 03 00 00 00     $^

$^BUTTON:启用 
$^REQ00:7E0 05 2F 20 2C 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:7E0 04 2F 20 2C 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 16.禁用BLM自学习控制 
$^IN  REQ00:7E0 02 10 03 00 00 00 00 00     $^IN  

$^TYPE0
$^BUTTON:禁用BLM自学习 
$^REQ00:7E0 05 2F 20 35 03 01 00 00     $^

$^BUTTON:启用BLM自学习 
$^REQ00:7E0 05 2F 20 35 03 00 00 00     $^

$^BUTTON:退出 
$^REQ00:7E0 04 2F 20 35 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 17.燃料开环控制 
$^IN  REQ00:7E0 02 10 03 00 00 00 00 00     $^IN  

$^TYPE0
$^BUTTON:强制开环 
$^REQ00:7E0 05 2F 20 37 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:7E0 04 2F 20 37 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 18.怠速状态下催化剂监测控制 
$^IN  REQ00:7E0 02 10 03 00 00 00 00 00     $^IN  

$^TYPE0
$^BUTTON:强制ICMD 
$^REQ00:7E0 05 2F 20 42 03 FF 00 00     $^

$^BUTTON:退出 
$^REQ00:7E0 04 2F 20 42 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 19.氧反应控制 
$^IN  REQ00:7E0 02 10 03 00 00 00 00 00     $^IN  

$^TYPE0
$^BUTTON:强制氧反馈诊断 
$^REQ00:7E0 05 2F 20 50 03 FF 00 00     $^

$^BUTTON:退出 
$^REQ00:7E0 04 2F 20 50 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 20.目标怠速控制 
$^IN  REQ00:7E0 02 10 03 00 00 00 00 00     $^IN  

 $^TYPE:2
$^BUTTON:输入
$^REQ00:7E0 05 2F 20 83 03 XX 00 00     $^

$^BUTTON:退出
$^REQ00:7E0 04 2F 20 83 00 00 00 00     $^

$^DSP:目标怠速控制
$^TIP:请输入测试值(范围:500~2000) 
$^IN_F:y=((x1<<8)+x2)/12.5;
$^RANGE:500,2000
;----------------------------------------------------------------------------------------------------

$^ 21.BLM重置控制 
$^IN  REQ00:7E0 02 10 03 00 00 00 00 00     $^IN  

$^TYPE0
$^BUTTON:BLM重置 
$^REQ00:7E0 05 2F 20 40 03 FF 00 00     $^

$^BUTTON:退出 
$^REQ00:7E0 04 2F 20 40 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 22.TPS 最小值 Learn算法重置控制 
$^IN  REQ00:7E0 02 10 03 00 00 00 00 00     $^IN  

$^TYPE0
$^BUTTON:TPS 最小值 Learn算法重置 
$^REQ00:7E0 05 2F 20 62 03 FF 00 00     $^

$^BUTTON:退出 
$^REQ00:7E0 04 2F 20 62 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

30帧:

  $FC REQ000:7E0 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
