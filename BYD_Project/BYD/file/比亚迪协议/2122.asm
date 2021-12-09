
    车型ID：2122

    模拟：协议模拟-->2122

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:7E0 02 10 01 00 00 00 00 00       $~  ANS000:7E8 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7E0 02 3E 80 00 00 00 00 00       $!  ANS000:7E8 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7E0 03 19 02 09 00 00 00 00       $#  ANS000:7E8 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/ae110000_2BYTE


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7E0 04 14 FF FF FF 00 00 00       $$  ANS000:7E8 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7E0 03 22 F1 88 00 00 00 00       $%  ANS000:7E8 03 22 F1 88 00 00 00 00
  $%  REQ001:7E0 03 22 F1 94 00 00 00 00       $%  ANS001:7E8 03 22 F1 94 00 00 00 00
  $%  REQ002:7E0 03 22 F1 91 00 00 00 00       $%  ANS002:7E8 03 22 F1 91 00 00 00 00
  $%  REQ003:7E0 03 22 F1 92 00 00 00 00       $%  ANS003:7E8 03 22 F1 92 00 00 00 00
  $%  REQ004:7E0 03 22 F1 99 00 00 00 00       $%  ANS004:7E8 03 22 F1 99 00 00 00 00
  $%  REQ005:7E0 03 22 F1 F4 00 00 00 00       $%  ANS005:7E8 03 22 F1 F4 00 00 00 00
  $%  REQ006:7E0 03 22 F1 90 00 00 00 00       $%  ANS006:7E8 03 22 F1 90 00 00 00 00

  $%  000:汽车制造商ECU软件号:        $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19);
  $%  001:系统供应商ECU软件号:        $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  002:汽车制造商ECU硬件号:        $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19);
  $%  003:系统供应商ECU硬件号:        $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  004:编程日期:                   $%    $%  ANS004.BYTE004  $%  y=SPRINTF([%02X%02X%s%02X%s%02X%s],x1,x2,@001d,x3,@001e,x4,@001f);
  $%  005:ECU硬件号:                  $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19);
  $%  006:VIN:                        $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7E0 03 22 01 04 00 00 00 00       $  ANS000:7E8 03 22 01 04 00 00 00 00
  $  REQ001:7E0 03 22 D0 00 00 00 00 00       $  ANS001:7E8 03 22 D0 00 00 00 00 00
  $  REQ002:7E0 03 22 01 6E 00 00 00 00       $  ANS002:7E8 03 22 01 6E 00 00 00 00
  $  REQ003:7E0 03 22 01 45 00 00 00 00       $  ANS003:7E8 03 22 01 45 00 00 00 00
  $  REQ004:7E0 03 22 01 8E 00 00 00 00       $  ANS004:7E8 03 22 01 8E 00 00 00 00
  $  REQ005:7E0 03 22 01 2F 00 00 00 00       $  ANS005:7E8 03 22 01 2F 00 00 00 00
  $  REQ006:7E0 03 22 01 0B 00 00 00 00       $  ANS006:7E8 03 22 01 0B 00 00 00 00
  $  REQ007:7E0 03 22 01 10 00 00 00 00       $  ANS007:7E8 03 22 01 10 00 00 00 00
  $  REQ008:7E0 03 22 01 25 00 00 00 00       $  ANS008:7E8 03 22 01 25 00 00 00 00
  $  REQ009:7E0 03 22 01 7E 00 00 00 00       $  ANS009:7E8 03 22 01 7E 00 00 00 00
  $  REQ010:7E0 03 22 01 36 00 00 00 00       $  ANS010:7E8 03 22 01 36 00 00 00 00
  $  REQ011:7E0 03 22 D0 01 00 00 00 00       $  ANS011:7E8 03 22 D0 01 00 00 00 00
  $  REQ012:7E0 03 22 01 7B 00 00 00 00       $  ANS012:7E8 03 22 01 7B 00 00 00 00
  $  REQ013:7E0 03 22 01 0D 00 00 00 00       $  ANS013:7E8 03 22 01 0D 00 00 00 00
  $  REQ014:7E0 03 22 01 03 00 00 00 00       $  ANS014:7E8 03 22 01 03 00 00 00 00
  $  REQ015:7E0 03 22 01 0E 00 00 00 00       $  ANS015:7E8 03 22 01 0E 00 00 00 00
  $  REQ016:7E0 03 22 01 56 00 00 00 00       $  ANS016:7E8 03 22 01 56 00 00 00 00
  $  REQ017:7E0 03 22 01 20 00 00 00 00       $  ANS017:7E8 03 22 01 20 00 00 00 00
  $  REQ018:7E0 03 22 01 00 00 00 00 00       $  ANS018:7E8 03 22 01 00 00 00 00 00
  $  REQ019:7E0 03 22 01 01 00 00 00 00       $  ANS019:7E8 03 22 01 01 00 00 00 00
  $  REQ020:7E0 03 22 D0 05 00 00 00 00       $  ANS020:7E8 03 22 D0 05 00 00 00 00
  $  REQ021:7E0 03 22 01 23 00 00 00 00       $  ANS021:7E8 03 22 01 23 00 00 00 00
  $  REQ022:7E0 03 22 01 41 00 00 00 00       $  ANS022:7E8 03 22 01 41 00 00 00 00
  $  REQ023:7E0 03 22 01 8A 00 00 00 00       $  ANS023:7E8 03 22 01 8A 00 00 00 00
  $  REQ024:7E0 03 22 01 AA 00 00 00 00       $  ANS024:7E8 03 22 01 AA 00 00 00 00
  $  REQ025:7E0 03 22 01 AB 00 00 00 00       $  ANS025:7E8 03 22 01 AB 00 00 00 00
  $  REQ026:7E0 03 22 01 E0 00 00 00 00       $  ANS026:7E8 03 22 01 E0 00 00 00 00
  $  REQ027:7E0 03 22 01 E1 00 00 00 00       $  ANS027:7E8 03 22 01 E1 00 00 00 00
  $  REQ028:7E0 03 22 01 E2 00 00 00 00       $  ANS028:7E8 03 22 01 E2 00 00 00 00
  $  REQ029:7E0 03 22 01 E5 00 00 00 00       $  ANS029:7E8 03 22 01 E5 00 00 00 00
  $  REQ030:7E0 03 22 01 E6 00 00 00 00       $  ANS030:7E8 03 22 01 E6 00 00 00 00
  $  REQ031:7E0 03 22 01 E8 00 00 00 00       $  ANS031:7E8 03 22 01 E8 00 00 00 00
  $  REQ032:7E0 03 22 01 E9 00 00 00 00       $  ANS032:7E8 03 22 01 E9 00 00 00 00
  $  REQ033:7E0 03 22 01 EA 00 00 00 00       $  ANS033:7E8 03 22 01 EA 00 00 00 00
  $  REQ034:7E0 03 22 01 EB 00 00 00 00       $  ANS034:7E8 03 22 01 EB 00 00 00 00
  $  REQ035:7E0 03 22 01 EC 00 00 00 00       $  ANS035:7E8 03 22 01 EC 00 00 00 00
  $  REQ036:7E0 03 22 01 ED 00 00 00 00       $  ANS036:7E8 03 22 01 ED 00 00 00 00
  $  REQ037:7E0 03 22 01 EE 00 00 00 00       $  ANS037:7E8 03 22 01 EE 00 00 00 00
  $  REQ038:7E0 03 22 01 EF 00 00 00 00       $  ANS038:7E8 03 22 01 EF 00 00 00 00
  $  REQ039:7E0 03 22 01 F0 00 00 00 00       $  ANS039:7E8 03 22 01 F0 00 00 00 00
  $  REQ040:7E0 03 22 30 00 00 00 00 00       $  ANS040:7E8 03 22 30 00 00 00 00 00
  $  REQ041:7E0 03 22 30 01 00 00 00 00       $  ANS041:7E8 03 22 30 01 00 00 00 00
  $  REQ042:7E0 03 22 30 02 00 00 00 00       $  ANS042:7E8 03 22 30 02 00 00 00 00
  $  REQ043:7E0 03 22 30 03 00 00 00 00       $  ANS043:7E8 03 22 30 03 00 00 00 00
  $  REQ044:7E0 03 22 30 04 00 00 00 00       $  ANS044:7E8 03 22 30 04 00 00 00 00
  $  REQ045:7E0 03 22 30 05 00 00 00 00       $  ANS045:7E8 03 22 30 05 00 00 00 00
  $  REQ046:7E0 03 22 30 06 00 00 00 00       $  ANS046:7E8 03 22 30 06 00 00 00 00
  $  REQ047:7E0 03 22 30 07 00 00 00 00       $  ANS047:7E8 03 22 30 07 00 00 00 00
  $  REQ048:7E0 03 22 30 08 00 00 00 00       $  ANS048:7E8 03 22 30 08 00 00 00 00
  $  REQ049:7E0 03 22 30 09 00 00 00 00       $  ANS049:7E8 03 22 30 09 00 00 00 00
  $  REQ050:7E0 03 22 30 0A 00 00 00 00       $  ANS050:7E8 03 22 30 0A 00 00 00 00
  $  REQ051:7E0 03 22 30 0B 00 00 00 00       $  ANS051:7E8 03 22 30 0B 00 00 00 00
  $  REQ052:7E0 03 22 30 0C 00 00 00 00       $  ANS052:7E8 03 22 30 0C 00 00 00 00
  $  REQ053:7E0 03 22 F1 04 00 00 00 00       $  ANS053:7E8 03 22 F1 04 00 00 00 00

  $  000:发动机转速                                $    $  rpm          $    $  ANS000.BYTE004  $  y=((x1<<8)+x2)*0.25;
  $  001:电瓶电压                                  $    $  V            $    $  ANS001.BYTE004  $  y=((x1<<8)+x2)*0.000390625;
  $  002:怠速转速                                  $    $  rpm          $    $  ANS002.BYTE004  $  y=x1*10;
  $  003:绝对进气歧管压力                          $    $  hPa          $    $  ANS003.BYTE004  $  y=((x1<<8)+x2)*0.0390625;
  $  004:实际进气歧管压力                          $    $  hPa          $    $  ANS004.BYTE004  $  y=((x1<<8)+x2)*0.039063096;
  $  005:冷却液温度计算值                          $    $  degree C     $    $  ANS005.BYTE004  $  y=x1*0.75-48;
  $  006:节气门相对下止点开度                      $    $  %            $    $  ANS006.BYTE004  $  y=((x1<<8)+x2)*0.024414063;
  $  007:加速踏板角度                              $    $  %            $    $  ANS007.BYTE004  $  y=((x1<<8)+x2)*0.001525879;
  $  008:相对负荷                                  $    $  %            $    $  ANS008.BYTE004  $  y=x1*0.75;
  $  009:基本点火角                                $    $  °           $    $  ANS009.BYTE004  $  y=x1*0.75;
  $  010:实际点火角                                $    $  GradKW       $    $  ANS010.BYTE004  $  if(x1<0x80)y=x1*0.75;else y=(x1-256)*0.75;
  $  011:车速                                      $    $  km/h         $    $  ANS011.BYTE004  $  y=((x1<<8)+x2)*0.007812;
  $  012:MIL(故障指示灯)亮后行驶里程               $    $  km           $    $  ANS012.BYTE004  $  y=(x1<<8)+x2;
  $  013:进气温度                                  $    $  degree C     $    $  ANS013.BYTE004  $  y=x1*0.75-48;
  $  014:发动机温度                                $    $  degree C     $    $  ANS014.BYTE004  $  y=x1*0.75-48;
  $  015:环境温度                                  $    $  degree C     $    $  ANS015.BYTE004  $  y=x1*0.75-48;
  $  016:油温                                      $    $  degree C     $    $  ANS016.BYTE004  $  y=((x1<<8)+x2)*0.0234375-273.15;
  $  017:进气量                                    $    $  kg/h         $    $  ANS017.BYTE004  $  y=x1*4;
  $  018:最大可达指示扭矩                          $    $  %            $    $  ANS018.BYTE004  $  y=((x1<<8)+x2)*0.001525879;
  $  019:实际指示扭矩                              $    $  %            $    $  ANS019.BYTE004  $  y=((x1<<8)+x2)*0.001525879;
  $  020:期望指示扭矩                              $    $  %            $    $  ANS020.BYTE004  $  y=((x1<<8)+x2)*0.001525879;
  $  021:下游氧传感器输出电压                      $    $  V            $    $  ANS021.BYTE004  $  y=x1*0.005228758-0.2;
  $  022:车辆加速度                                $    $  m/s2         $    $  ANS022.BYTE004  $  if(x1<0x80)y=x1*0.217;else y=(x1-256)*0.217;
  $  023:碳罐控制阀占空比                          $    $  %            $    $  ANS023.BYTE004  $  y=((x1<<8)+x2)*0.001525879;
  $  024:上游氧传感器电压                          $    $  V            $    $  ANS024.BYTE004  $  y=((x1<<8)+x2)*0.004882734;
  $  025:下游氧传感器电压                          $    $  V            $    $  ANS025.BYTE004  $  y=((x1<<8)+x2)*0.004882734;
  $  026:油泵激活请求                              $    $               $    $  ANS026.BYTE004  $  switxh(x1)0x00: y=@00d4;0x01: y=@00d3;default: y=@001c;
  $  027:风扇1开启标志位                           $    $               $    $  ANS027.BYTE004  $  switxh(x1)0x00: y=@00d4;0x01: y=@00d3;default: y=@001c;
  $  028:风扇2开启标志位                           $    $               $    $  ANS028.BYTE004  $  switxh(x1)0x00: y=@00d4;0x01: y=@00d3;default: y=@001c;
  $  029:进气歧管进气状态                          $    $               $    $  ANS029.BYTE004  $  switxh(x1)0x00: y=@00d4;0x01: y=@00d3;default: y=@001c;
  $  030:VIN是否已编程                             $    $               $    $  ANS030.BYTE004  $  if(x1&0x08) y=@0000;else y=@0001;
  $  031:点火开关15端                              $    $               $    $  ANS031.BYTE004  $  if(x1&0x01) y=@00d3;else y=@00d4;
  $  032:主继电器上电                              $    $               $    $  ANS031.BYTE004  $  if(x1&0x02) y=@0000;else y=@0001;
  $  033:油泵继电器上电                            $    $               $    $  ANS031.BYTE004  $  if(x1&0x04) y=@0000;else y=@0001;
  $  034:发动机运转                                $    $               $    $  ANS031.BYTE004  $  if(x1&0x08) y=@0000;else y=@0001;
  $  035:发动机达到怠速转速                        $    $               $    $  ANS031.BYTE004  $  if(x1&0x10) y=@0000;else y=@0001;
  $  036:曲轴是否同步                              $    $               $    $  ANS031.BYTE004  $  if(x1&0x20) y=@0000;else y=@0001;
  $  037:发动机正常运行水温达到                    $    $               $    $  ANS031.BYTE004  $  if(x1&0x40) y=@0000;else y=@0001;
  $  038:车辆是否运行                              $    $               $    $  ANS031.BYTE004  $  if(x1&0x80) y=@0000;else y=@0001;
  $  039:节气门阀片在怠速位置                      $    $               $    $  ANS032.BYTE004  $  if(x1&0x01) y=@0000;else y=@0001;
  $  040:节气门全开                                $    $               $    $  ANS032.BYTE004  $  if(x1&0x02) y=@0000;else y=@0001;
  $  041:减速断油状态                              $    $               $    $  ANS032.BYTE004  $  if(x1&0x08) y=@0000;else y=@0001;
  $  042:加速加浓状态                              $    $               $    $  ANS032.BYTE004  $  if(x1&0x10) y=@0000;else y=@0001;
  $  043:λ控制激活                                $    $               $    $  ANS033.BYTE004  $  if(x1&0x01) y=@0000;else y=@0001;
  $  044:碳罐控制阀激活                            $    $               $    $  ANS033.BYTE004  $  if(x1&0x04) y=@0000;else y=@0001;
  $  045:减速断油激活                              $    $               $    $  ANS033.BYTE004  $  if(x1&0x08) y=@0000;else y=@0001;
  $  046:加速加浓激活                              $    $               $    $  ANS033.BYTE004  $  if(x1&0x10) y=@0000;else y=@0001;
  $  047:混合气自学习激活                          $    $               $    $  ANS033.BYTE004  $  if(x1&0x20) y=@0000;else y=@0001;
  $  048:前氧信号浓                                $    $               $    $  ANS034.BYTE004  $  if(x1&0x01) y=@0000;else y=@0001;
  $  049:前氧信号稀                                $    $               $    $  ANS034.BYTE004  $  if(x1&0x02) y=@0000;else y=@0001;
  $  050:前氧加热                                  $    $               $    $  ANS034.BYTE004  $  if(x1&0x10) y=@0000;else y=@0001;
  $  051:后氧加热                                  $    $               $    $  ANS034.BYTE004  $  if(x1&0x20) y=@0000;else y=@0001;
  $  052:加速踏板在怠速位置                        $    $               $    $  ANS035.BYTE004  $  if(x1&0x01) y=@0000;else y=@0001;
  $  053:负载1(转向助力)                           $    $               $    $  ANS035.BYTE004  $  if(x1&0x02) y=@009f;else y=@00a0;
  $  054:负载2(鼓风机)                             $    $               $    $  ANS035.BYTE004  $  if(x1&0x04) y=@009f;else y=@00a0;
  $  055:MIL(故障指示灯)亮                         $    $               $    $  ANS036.BYTE004  $  if(x1&0x01) y=@0000;else y=@0001;
  $  056:MIL(故障指示灯)闪亮                       $    $               $    $  ANS036.BYTE004  $  if(x1&0x02) y=@0000;else y=@0001;
  $  057:SVS(系统维修指示灯)亮                     $    $               $    $  ANS036.BYTE004  $  if(x1&0x10) y=@0000;else y=@0001;
  $  058:SVS(系统维修指示灯)闪亮                   $    $               $    $  ANS036.BYTE004  $  if(x1&0x20) y=@0000;else y=@0001;
  $  059:SVS(系统维修指示灯)故障                   $    $               $    $  ANS036.BYTE004  $  if(x1&0x40) y=@0000;else y=@0001;
  $  060:节气门体位置错误或未知                    $    $               $    $  ANS037.BYTE004  $  if(x1&0x01) y=@0000;else y=@0001;
  $  061:压缩机是否工作                            $    $               $    $  ANS038.BYTE004  $  if(x1&0x01) y=@0000;else y=@0001;
  $  062:压缩机工作请求                            $    $               $    $  ANS038.BYTE004  $  if(x1&0x02) y=@0000;else y=@0001;
  $  063:压缩机提升怠速转速请求                    $    $               $    $  ANS038.BYTE004  $  if(x1&0x20) y=@0000;else y=@0001;
  $  064:大负荷时压缩机关闭                        $    $               $    $  ANS038.BYTE004  $  if(x1&0x40) y=@0000;else y=@0001;
  $  065:压缩机压力开关状态                        $    $               $    $  ANS038.BYTE004  $  if(x1&0x80) y=@009f;else y=@00a0;
  $  066:自动变速器离合器接合                      $    $               $    $  ANS039.BYTE004  $  if(x1&0x08) y=@009f;else y=@00a0;
  $  067:车辆禁止停止                              $    $               $    $  ANS040.BYTE004  $  if((x1==0x00)&&(x2==0x00)) y=@060e;else if((x1==0x01)&&(x2==0x00)) y=@060f;else if((x1==0x02)&&(x2==0x00)) y=@0610;else if((x1==0x03)&&(x2==0x00)) y=@0611;else if((x1==0x04)&&(x2==0x00)) y=@0612;else if((x1==0x05)&&(x2==0x00)) y=@0613;else if((x1==0x06)&&(x2==0x00)) y=@0614;else if((x1==0x07)&&(x2==0x00)) y=@0615;else if((x1==0x08)&&(x2==0x00)) y=@0616;else if((x1==0x09)&&(x2==0x00)) y=@0617;else if((x1==0x0A)&&(x2==0x00)) y=@009e;else if((x1==0x0B)&&(x2==0x00)) y=@009e;else if((x1==0x0C)&&(x2==0x00)) y=@0618;else if((x1==0x0D)&&(x2==0x00)) y=@009e;else if((x1==0x0E)&&(x2==0x00)) y=@0619;else y=@001c;
  $  068:车辆禁止停止_1                            $    $               $    $  ANS040.BYTE004  $  if((x1==0x00)&&(x2==0x00)) y=@060e;else if((x1==0x01)&&(x2==0x00)) y=@060f;else if((x1==0x02)&&(x2==0x00)) y=@0610;else if((x1==0x03)&&(x2==0x00)) y=@0611;else if((x1==0x04)&&(x2==0x00)) y=@0612;else if((x1==0x05)&&(x2==0x00)) y=@0613;else if((x1==0x06)&&(x2==0x00)) y=@0614;else if((x1==0x07)&&(x2==0x00)) y=@0615;else if((x1==0x08)&&(x2==0x00)) y=@0616;else if((x1==0x09)&&(x2==0x00)) y=@0617;else if((x1==0x0A)&&(x2==0x00)) y=@009e;else if((x1==0x0B)&&(x2==0x00)) y=@009e;else if((x1==0x0C)&&(x2==0x00)) y=@0618;else if((x1==0x0D)&&(x2==0x00)) y=@009e;else if((x1==0x0E)&&(x2==0x00)) y=@0619;else y=@001c;
  $  069:发动机禁止停止                            $    $               $    $  ANS041.BYTE004  $  if((x1==0x06)&&(x2==0x00)) y=@060d;else y=@001c;
  $  070:发动机故障禁止停止                        $    $               $    $  ANS042.BYTE004  $  if((x1==0x00)&&(x2==0x00)) y=@061d;else if((x1==0x01)&&(x2==0x00)) y=@061e;else if((x1==0x04)&&(x2==0x00)) y=@061f;else if((x1==0x08)&&(x2==0x00)) y=@0620;else y=@001c;
  $  071:电池荷电状态                              $    $  %            $    $  ANS043.BYTE004  $  y=x1;
  $  072:电池启动状态1                             $    $  V            $    $  ANS044.BYTE004  $  y=x1*0.0625;
  $  073:SOFV1的精度                               $    $               $    $  ANS045.BYTE004  $  switxh(x1)0x00: y=@0624;0x01: y=@0625;0x02: y=@0625;0x03: y=@001c;default: y=@001c;
  $  074:电池启动状态2                             $    $  V            $    $  ANS046.BYTE004  $  y=x1*0.0625;
  $  075:SOFV2的精度                               $    $               $    $  ANS047.BYTE004  $  switxh(x1)0x00: y=@0624;0x01: y=@0625;0x02: y=@0625;0x03: y=@001c;default: y=@001c;
  $  076:SOC电量精度                               $    $               $    $  ANS048.BYTE004  $  switxh(x1)0x00: y=@0621;0x01: y=@0622;0x02: y=@0623;0x03: y=@001c;default: y=@001c;
  $  077:电池温度                                  $    $  degree C     $    $  ANS049.BYTE004  $  y=x1;
  $  078:真空度                                    $    $               $    $  ANS050.BYTE004  $  y=((x1<<8)+x2)*0.0390625;
  $  079:电机启动次数                              $    $               $    $  ANS051.BYTE004  $  y=UINT(x1*0x1000000+x2*0x10000+x3*0x100+x4);
  $  080:起停状态字节                              $    $               $    $  ANS052.BYTE004  $  switxh(x1)0x00: y=@061a;0x01: y=@061b;0x02: y=@061c;default: y=@001c;
  $  081:EGR(废气再循环)阀位置反馈电压信号         $    $  V            $    $  ANS053.BYTE004  $  y=((x1<<8)+x2)*0.00048828125;
  $  082:废气循环利用率                            $    $               $    $  ANS053.BYTE006  $  y=((x1<<8)+x2)*0.0015258789;
  $  083:EGR(废气再循环)激活条件状态               $    $               $    $  ANS053.BYTE008  $  if(x1&0x04) y=@00d3;else y=@00d4;
  $  084:EGR(废气再循环)阀位置预设值               $    $               $    $  ANS053.BYTE009  $  y=((x1<<8)+x2)*0.0015258789;
  $  085:EGR(废气再循环)阀控制器I部件              $    $               $    $  ANS053.BYTE011  $  y=((x1<<8)+x2)*0.0030517578;
  $  086:EGR(废气再循环)阀控制器P部件              $    $               $    $  ANS053.BYTE013  $  y=((x1<<8)+x2)*0.0030517578;
  $  087:EGR(废气再循环)阀控制器D部件              $    $               $    $  ANS053.BYTE015  $  y=((x1<<8)+x2)*0.0030517578;
  $  088:EGR(废气再循环)阀效率                     $    $               $    $  ANS053.BYTE017  $  y=((x1<<8)+x2)*0.0015258789;
  $  089:EGR(废气再循环)阀延迟时间错误             $    $               $    $  ANS053.BYTE019  $  y=x1*0.1;
  $  090:EGR(废气再循环)阀延迟不可信错误时间       $    $               $    $  ANS053.BYTE020  $  y=x1*0.1;
  $  091:EGR(废气再循环)阀占空比                   $    $               $    $  ANS053.BYTE021  $  y=x1*0.390625;
  $  092:EGR(废气再循环)阀升高条件                 $    $               $    $  ANS053.BYTE022  $  if(x1&0x80) y=@00d3;else y=@00d4;
  $  093:档位触发VVL(可变气门升程阀)转换           $    $               $    $  ANS053.BYTE023  $  if(x1&0x08) y=1;else y=0;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7E0 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
