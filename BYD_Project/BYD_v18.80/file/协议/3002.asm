
    车型ID：3002

    模拟：协议模拟-->3002

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7E8

进入命令:

  $~  REQ000:7E0 02 10 01 00 00 00 00 00       $~  ANS000:7E8 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7E0 02 3E 80 00 00 00 00 00       $!  ANS000:7E8 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7E0 03 19 02 09 00 00 00 00       $#  ANS000:7E8 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<8)+x2;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/b1020000_2BYTE


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7E0 04 14 FF FF FF 00 00 00       $$  ANS000:7E8 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7E0 03 22 F1 92 00 00 00 00       $%  ANS000:7E8 03 22 F1 92 00 00 00 00
  $%  REQ001:7E0 03 22 F1 93 00 00 00 00       $%  ANS001:7E8 03 22 F1 93 00 00 00 00
  $%  REQ002:7E0 03 22 F1 94 00 00 00 00       $%  ANS002:7E8 03 22 F1 94 00 00 00 00
  $%  REQ003:7E0 03 22 F1 95 00 00 00 00       $%  ANS003:7E8 03 22 F1 95 00 00 00 00
  $%  REQ004:7E0 03 22 F1 90 00 00 00 00       $%  ANS004:7E8 03 22 F1 90 00 00 00 00

  $%  000:硬件编号:           $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19);
  $%  001:硬件版本:           $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%d.%d.%d],(x1%1000-x1%100)/100,(x1%100-x1%10)/10,x1%10);
  $%  002:硬件日期:           $%    $%  ANS001.BYTE005  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  003:软件编号:           $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%02X%02X%02X%02X%02X%02X%02X%02X%02X],x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  004:软件版本:           $%    $%  ANS003.BYTE004  $%  y=SPRINTF([%d.%d%d.%d%d],((x1*256+x2)%100000-(x1*256+x2)%10000)/10000,((x1*256+x2)%10000-(x1*256+x2)%1000)/1000,((x1*256+x2)%1000-(x1*256+x2)%100)/100,((x1*256+x2)%100-(x1*256+x2)%10)/10,(x1*256+x2)%10);
  $%  005:软件日期:           $%    $%  ANS003.BYTE006  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  006:修改次数:           $%    $%  ANS003.BYTE009  $%  y=x1;
  $%  007:学习到的VIN:        $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);

;******************************************************************************************************************************************************

读数据流: 

  $)  00.数据流
  $  00.数据流
  $  REQ000:7E0 03 22 F1 01 00 00 00 00       $  ANS000:7E8 03 22 F1 01 00 00 00 00

  $  000.发动机转速                                         $    $  rpm      $    $  ANS000.BYTE036  $  y=SPRINTF([%d],(x1*256+x2)/4);
  $  001.电源电压                                           $    $  V        $    $  ANS000.BYTE035  $  y=SPRINTF([%.1f],x1/10);
  $  002.目标怠速(有补偿)                                   $    $  rpm      $    $  ANS000.BYTE039  $  y=SPRINTF([%d],x1*10);
  $  003.进气压力                                           $    $  kpa      $    $  ANS000.BYTE046  $  y=x1;
  $  004.冷却液温度                                         $    $  ℃       $    $  ANS000.BYTE042  $  y=SPRINTF([%d],x1-40);
  $  005.散热器出口冷却液温度                               $    $  ℃       $    $  ANS000.BYTE119  $  y=SPRINTF([%d],x1-40);
  $  006.目标油压                                           $    $  bar      $    $  ANS000.BYTE108  $  y=x1;
  $  007.实际油压                                           $    $  bar      $    $  ANS000.BYTE110  $  y=x1;
  $  008.节气门开度                                         $    $  %        $    $  ANS000.BYTE055  $  y=SPRINTF([%.1f],(x1*256+x2)/10);
  $  009.节气门目标开度                                     $    $  %        $    $  ANS000.BYTE049  $  y=SPRINTF([%.1f],(x1*256+x2)/10);
  $  010.加速踏板位置                                       $    $  %        $    $  ANS000.BYTE105  $  y=SPRINTF([%.1f],(x1*256+x2)/10);
  $  011.交流发电机负荷                                     $    $  %        $    $  ANS000.BYTE107  $  y=SPRINTF([%.1f],x1*100/255);
  $  012.充磁时间                                           $    $  ms       $    $  ANS000.BYTE063  $  y=SPRINTF([%.1f],x1/10);
  $  013.进气相位原始值                                     $    $  °       $    $  ANS000.BYTE131  $  y=SPRINTF([%d],(x1*256+x2)-100);
  $  014.喷油脉宽                                           $    $  ms       $    $  ANS000.BYTE064  $  y=SPRINTF([%.1f],x1/10);
  $  015.进气流量                                           $    $  Kg/h     $    $  ANS000.BYTE047  $  y=SPRINTF([%.1f],(x1*256+x2)/10);
  $  016.目标怠速(无补偿)                                   $    $  rpm      $    $  ANS000.BYTE038  $  y=SPRINTF([%d],x1*10);
  $  017.车速                                               $    $  Km/h     $    $  ANS000.BYTE040  $  y=x1;
  $  018.运行里程                                           $    $  KM       $    $  ANS000.BYTE092  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  019.运行时间                                           $    $  Min      $    $  ANS000.BYTE096  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  020.进气温度                                           $    $  ℃       $    $  ANS000.BYTE044  $  y=SPRINTF([%d],x1-40);
  $  021.增压气体温度                                       $    $  ℃       $    $  ANS000.BYTE117  $  y=SPRINTF([%d],x1-40);
  $  022.目标增压压力                                       $    $  kpa      $    $  ANS000.BYTE113  $  y=x1;
  $  023.实际增压压力                                       $    $  kpa      $    $  ANS000.BYTE115  $  y=x1;
  $  024.目标进气相位                                       $    $  °       $    $  ANS000.BYTE126  $  y=SPRINTF([%d],(x1*256+x2)-100);
  $  025.进气相位                                           $    $  °       $    $  ANS000.BYTE124  $  y=SPRINTF([%d],(x1*256+x2)-100);
  $  026.大气压力值                                         $    $  kpa      $    $  ANS000.BYTE120  $  y=x1;
  $  027.海拔校正                                           $    $  %        $    $  ANS000.BYTE121  $  y=SPRINTF([%.1f],x1*100/255);
  $  028.制动助力器压力                                     $    $  kpa      $    $  ANS000.BYTE112  $  y=x1;
  $  029.点火提前角                                         $    $  °       $    $  ANS000.BYTE065  $  y=SPRINTF([%d],x1-50);
  $  030.空燃比                                             $    $  %        $    $  ANS000.BYTE128  $  y=SPRINTF([%.1f],x1/10);
  $  031.倾角信息                                           $    $  °       $    $  ANS000.BYTE133  $  y=SPRINTF([%d],x1/2-60);
  $  032.巡航设定车速                                       $    $  km/h     $    $  ANS000.BYTE142  $  y=x1;
  $  033.爆震传感器1                                        $    $           $    $  ANS000.BYTE069  $  y=(x1*256+x2);
  $  034.1组氧传感器电压,传感器1(氧传感器1)                 $    $  V        $    $  ANS000.BYTE081  $  y=SPRINTF([%.3f],x1/255);
  $  035.1组氧传感器电压,传感器2(氧传感器2)                 $    $  V        $    $  ANS000.BYTE082  $  y=SPRINTF([%.3f],x1/255);
  $  036.1组氧传感器积分值(短期修正)                        $    $           $    $  ANS000.BYTE079  $  y=SPRINTF([%.3f],x1/128);
  $  037.1组氧传感器积分值(长期修正)                        $    $           $    $  ANS000.BYTE085  $  y=SPRINTF([%.3f],x1/128);
  $  038.1缸推迟点火爆震控制                                $    $  °       $    $  ANS000.BYTE073  $  y=SPRINTF([%.1f],x1/10);
  $  039.2缸推迟点火爆震控制                                $    $  °       $    $  ANS000.BYTE074  $  y=SPRINTF([%.1f],x1/10);
  $  040.3缸推迟点火爆震控制                                $    $  °       $    $  ANS000.BYTE075  $  y=SPRINTF([%.1f],x1/10);
  $  041.4缸推迟点火爆震控制                                $    $  °       $    $  ANS000.BYTE076  $  y=SPRINTF([%.1f],x1/10);
  $  042.空调压力                                           $    $  Mpa      $    $  ANS000.BYTE067  $  y=SPRINTF([%.1f],(x1*256+x2)/1000);
  $  043.无级风扇占空比                                     $    $  %        $    $  ANS000.BYTE102  $  y=SPRINTF([%.1f],x1*100/255);
  $  044.增压压力限制阀占空比                               $    $  %        $    $  ANS000.BYTE122  $  y=SPRINTF([%.1f],x1*100/255);
  $  045.计算节气门位置                                     $    $  %        $    $  ANS000.BYTE057  $  y=SPRINTF([%.1f],x1*100/255);
  $  046.节气门电机PWM                                      $    $  %        $    $  ANS000.BYTE058  $  y=SPRINTF([%.1f],x1*100/255);
  $  047.碳罐阀占空比                                       $    $  %        $    $  ANS000.BYTE062  $  y=SPRINTF([%.1f],x1*100/255);
  $  048.旁通气量                                           $    $           $    $  ANS000.BYTE141  $  y=(x1*256+x2);
  $  049.离合位置                                           $    $  %        $    $  ANS000.BYTE157  $  y=SPRINTF([%d],x1*100/255);
  $  050.冷却液温度传感器                                   $    $  V        $    $  ANS000.BYTE041  $  y=SPRINTF([%.2f],x1/51);
  $  051.进气温度传感器                                     $    $  V        $    $  ANS000.BYTE043  $  y=SPRINTF([%.2f],x1/51);
  $  052.进气压力传感器                                     $    $  V        $    $  ANS000.BYTE045  $  y=SPRINTF([%.2f],x1/51);
  $  053.节气门位置传感器1                                  $    $  V        $    $  ANS000.BYTE051  $  y=SPRINTF([%.2f],(x1*256+x2)/13107);
  $  054.节气门位置传感器2                                  $    $  V        $    $  ANS000.BYTE053  $  y=SPRINTF([%.2f],(x1*256+x2)/13107);
  $  055.增压压力传感器                                     $    $  V        $    $  ANS000.BYTE114  $  y=SPRINTF([%.2f],x1/51);
  $  056.增压气体温度传感器                                 $    $  V        $    $  ANS000.BYTE116  $  y=SPRINTF([%.2f],x1/51);
  $  057.散热器出口冷却液温度传感器                         $    $  V        $    $  ANS000.BYTE118  $  y=SPRINTF([%.2f],x1/51);
  $  058.加速踏板1信号                                      $    $  V        $    $  ANS000.BYTE103  $  y=SPRINTF([%.2f],x1/51);
  $  059.加速踏板2信号                                      $    $  V        $    $  ANS000.BYTE104  $  y=SPRINTF([%.2f],x1/51);
  $  060.油压传感器                                         $    $  V        $    $  ANS000.BYTE109  $  y=SPRINTF([%.2f],x1/51);
  $  061.空调压力传感器                                     $    $  V        $    $  ANS000.BYTE066  $  y=SPRINTF([%.2f],x1/51);
  $  062.巡航开关电压                                       $    $  V        $    $  ANS000.BYTE143  $  y=SPRINTF([%.2f],x1/51);
  $  063.发动机防盗解锁-ECU发送码验证结果                   $    $           $    $  ANS000.BYTE022  $  if(x1&0x01) y=@001f;else y=@0020;
  $  064.发动机防盗解锁-IKey发送码验证结果                  $    $           $    $  ANS000.BYTE022  $  if(x1&0x02) y=@001f;else y=@0020;
  $  065.发动机防盗解锁-ECU新旧状态                         $    $           $    $  ANS000.BYTE022  $  if(x1&0x04) y=@0021;else y=@0022;
  $  066.发动机冷却系统-低速风扇是否开启                    $    $           $    $  ANS000.BYTE023  $  if(x1&0x01) y=@001b;else y=@001c;
  $  067.发动机冷却系统-高速风扇是否开启                    $    $           $    $  ANS000.BYTE023  $  if(x1&0x02) y=@001b;else y=@001c;
  $  068.发动机冷却系统-风扇类型                            $    $           $    $  ANS000.BYTE023  $  if(x1&0x0C) y=@0024;else y=@0023;
  $  069.发动机稳态工况-点火电源开启                        $    $           $    $  ANS000.BYTE024  $  if(x1&0x01) y=@001b;else y=@001c;
  $  070.发动机稳态工况-主继电器工作                        $    $           $    $  ANS000.BYTE024  $  if(x1&0x02) y=@001b;else y=@001c;
  $  071.发动机稳态工况-燃油泵状态                          $    $           $    $  ANS000.BYTE024  $  if(x1&0x04) y=@0001;else y=@0000;
  $  072.发动机稳态工况-起动机工作                          $    $           $    $  ANS000.BYTE024  $  if(x1&0x08) y=@001b;else y=@001c;
  $  073.发动机稳态工况-达到怠速转速                        $    $           $    $  ANS000.BYTE024  $  if(x1&0x10) y=@001b;else y=@001c;
  $  074.发动机稳态工况-同步条件                            $    $           $    $  ANS000.BYTE024  $  if(x1&0x20) y=@0019;else y=@001a;
  $  075.发动机稳态工况-达到发动机工作温度(大于80°C)       $    $           $    $  ANS000.BYTE024  $  if(x1&0x40) y=@0019;else y=@001a;
  $  076.发动机稳态工况-车辆行驶(收到速度脉冲)              $    $           $    $  ANS000.BYTE024  $  if(x1&0x80) y=@001b;else y=@001c;
  $  077.发动机动态工况-节气门处于怠速位置                  $    $           $    $  ANS000.BYTE025  $  if(x1&0x01) y=@001b;else y=@001c;
  $  078.发动机动态工况-节气门处于部分打开位置              $    $           $    $  ANS000.BYTE025  $  if(x1&0x02) y=@001b;else y=@001c;
  $  079.发动机动态工况-节气门处于全开位置                  $    $           $    $  ANS000.BYTE025  $  if(x1&0x04) y=@001b;else y=@001c;
  $  080.发动机动态工况-激活减速断油                        $    $           $    $  ANS000.BYTE025  $  if(x1&0x08) y=@000e;else y=@000f;
  $  081.发动机动态工况-激活加速加浓                        $    $           $    $  ANS000.BYTE025  $  if(x1&0x10) y=@000e;else y=@000f;
  $  082.发动机动态工况-是否D档(前进档)                     $    $           $    $  ANS000.BYTE025  $  if(x1&0x20) y=@001b;else y=@001c;
  $  083.发动机动态工况-是否R档(后退档)                     $    $           $    $  ANS000.BYTE025  $  if(x1&0x40) y=@001b;else y=@001c;
  $  084.发动机动态工况-是否N档(空档)                       $    $           $    $  ANS000.BYTE025  $  if(x1&0x80) y=@001b;else y=@001c;
  $  085.排放控制-λ控制激活                                $    $           $    $  ANS000.BYTE026  $  if(x1&0x01) y=@000e;else y=@000f;
  $  086.排放控制-碳罐控制阀激活                            $    $           $    $  ANS000.BYTE026  $  if(x1&0x04) y=@000e;else y=@000f;
  $  087.排放控制-减速断油激活                              $    $           $    $  ANS000.BYTE026  $  if(x1&0x08) y=@000e;else y=@000f;
  $  088.排放控制-催化转换器保护加浓激活                    $    $           $    $  ANS000.BYTE026  $  if(x1&0x10) y=@000e;else y=@000f;
  $  089.排放控制-混合气自学习条件激活                      $    $           $    $  ANS000.BYTE026  $  if(x1&0x20) y=@000e;else y=@000f;
  $  090.氧传感器-氧传感器1信号                             $    $           $    $  ANS000.BYTE027  $  if(x1&0x01) y=@001d;else y=@001e;
  $  091.氧传感器-氧传感器2信号                             $    $           $    $  ANS000.BYTE027  $  if(x1&0x02) y=@001d;else y=@001e;
  $  092.氧传感器-氧传感器1加热                             $    $           $    $  ANS000.BYTE027  $  if(x1&0x10) y=@00be;else y=@00bf;
  $  093.氧传感器-氧传感器2加热                             $    $           $    $  ANS000.BYTE027  $  if(x1&0x20) y=@00be;else y=@00bf;
  $  094.发动机怠速-踏板位置处于怠速位置                    $    $           $    $  ANS000.BYTE028  $  if(x1&0x01) y=@001b;else y=@001c;
  $  095.发动机怠速-制动器状态                              $    $           $    $  ANS000.BYTE028  $  if(x1&0x02) y=@0003;else y=@00c0;
  $  096.发动机怠速-是否有空调请求                          $    $           $    $  ANS000.BYTE028  $  if(x1&0x04) y=@001b;else y=@001c;
  $  097.发动机怠速-后车窗/前风挡玻璃加热                   $    $           $    $  ANS000.BYTE028  $  if(x1&0x08) y=@0001;else y=@0000;
  $  098.发动机怠速-动力转向开关                            $    $           $    $  ANS000.BYTE028  $  if(x1&0x10) y=@0001;else y=@0000;
  $  099.发动机怠速-离合器状态                              $    $           $    $  ANS000.BYTE028  $  if(x1&0x20) y=@0003;else y=@00c0;
  $  100.发动机怠速-真空泵状态                              $    $           $    $  ANS000.BYTE028  $  if(x1&0x40) y=@0001;else y=@0000;
  $  101.指示灯SVS/MIL-MIL灯激活                            $    $           $    $  ANS000.BYTE029  $  if(x1&0x01) y=@000e;else y=@000f;
  $  102.指示灯SVS/MIL-MIL灯闪烁                            $    $           $    $  ANS000.BYTE029  $  if(x1&0x02) y=@001b;else y=@001c;
  $  103.指示灯SVS/MIL-SVS灯激活                            $    $           $    $  ANS000.BYTE029  $  if(x1&0x10) y=@000e;else y=@000f;
  $  104.指示灯SVS/MIL-SVS灯闪烁                            $    $           $    $  ANS000.BYTE029  $  if(x1&0x20) y=@001b;else y=@001c;
  $  105.指示灯SVS/MIL-SVS存在故障                          $    $           $    $  ANS000.BYTE029  $  if(x1&0x40) y=@001b;else y=@001c;
  $  106.空调系统-空调开启                                  $    $           $    $  ANS000.BYTE031  $  if(x1&0x01) y=@001b;else y=@001c;
  $  107.空调系统-空调请求激活                              $    $           $    $  ANS000.BYTE031  $  if(x1&0x02) y=@000e;else y=@000f;
  $  108.空调系统-空调压缩机开                              $    $           $    $  ANS000.BYTE031  $  if(x1&0x04) y=@001b;else y=@001c;
  $  109.空调系统-空调断开或无空调                          $    $           $    $  ANS000.BYTE031  $  if(x1&0x08) y=@001b;else y=@001c;
  $  110.空调系统-空调因温度断开                            $    $           $    $  ANS000.BYTE031  $  if(x1&0x10) y=@001b;else y=@001c;
  $  111.空调系统-怠速转速因空调而增加                      $    $           $    $  ANS000.BYTE031  $  if(x1&0x20) y=@001b;else y=@001c;
  $  112.空调系统-全负荷时关闭空调压缩机                    $    $           $    $  ANS000.BYTE031  $  if(x1&0x40) y=@001b;else y=@001c;
  $  113.空调系统-空调中压开关开                            $    $           $    $  ANS000.BYTE031  $  if(x1&0x80) y=@001b;else y=@001c;
  $  114.AT/扭矩请求-AT转换离合器激活                       $    $           $    $  ANS000.BYTE032  $  if(x1&0x08) y=@000e;else y=@000f;
  $  115.巡航控制-巡航功能                                  $    $           $    $  ANS000.BYTE033  $  if(x1&0x01) y=@0001;else y=@0000;
  $  116.巡航控制-巡航状态                                  $    $           $    $  ANS000.BYTE033  $  if(x1&0x02) y=@0093;else y=@003f;
  $  117.巡航控制-按键状态                                  $    $           $    $  ANS000.BYTE033  $  switxh(x1&0x1C)0x00: y=@00b5;0x04: y=@00b6;0x08: y=@00b7;0x0C: y=@00b8;0x10: y=@00b9;0x14: y=@00ba;default: y=@0002;
  $  118.发动机状态-刹车开关激活                            $    $           $    $  ANS000.BYTE034  $  if(x1&0x01) y=@000e;else y=@000f;
  $  119.发动机状态-刹车灯激活                              $    $           $    $  ANS000.BYTE034  $  if(x1&0x02) y=@000e;else y=@000f;
  $  120.发动机状态-离合器开关激活                          $    $           $    $  ANS000.BYTE034  $  if(x1&0x04) y=@000e;else y=@000f;
  $  121.发动机状态-水泵继电器状态                          $    $           $    $  ANS000.BYTE034  $  if(x1&0x08) y=@0001;else y=@0000;
  $  122.发动机状态-涡轮增压旁通阀                          $    $           $    $  ANS000.BYTE034  $  if(x1&0x10) y=@0001;else y=@0000;
  $  123.发动机状态-防盗锁定状态                            $    $           $    $  ANS000.BYTE034  $  if(x1&0x20) y=@0001;else y=@0000;
  $  124.发动机状态-燃油反馈状态                            $    $           $    $  ANS000.BYTE034  $  if(x1&0x40) y=@00bb;else y=@00bc;
  $  125.发动机状态-可变气门升程阀状态(VVL阀)               $    $           $    $  ANS000.BYTE034  $  if(x1&0x80) y=@0001;else y=@0000;

  $IN_01  REQ000:7E0 02 01 00 00 00 00 00 00       $IN_01  ANS000:7E8 02 01 00 00 00 00 00 00

  $)  01.IUPR
  $  01.IUPR
  $  REQ000:7E0 02 09 08 00 00 00 00 00       $  ANS000:7E8 02 09 08 00 00 00 00 00

  $  000.OBD监控完成次数                        $    $  次     $    $  ANS000.BYTE004  $  y=(x1*256+x2);
  $  001.点火循环次数                           $    $  次     $    $  ANS000.BYTE006  $  y=(x1*256+x2);
  $  002.催化转化系统组1监测完成次数            $    $  次     $    $  ANS000.BYTE008  $  y=(x1*256+x2);
  $  003.催化转化系统组1监测条件满足次数        $    $  次     $    $  ANS000.BYTE010  $  y=(x1*256+x2);
  $  004.催化转化系统组2监测完成次数            $    $  次     $    $  ANS000.BYTE012  $  y=(x1*256+x2);
  $  005.催化转化系统组2监测条件满足次数        $    $  次     $    $  ANS000.BYTE014  $  y=(x1*256+x2);
  $  006.氧传感器组1监测完成次数                $    $  次     $    $  ANS000.BYTE016  $  y=(x1*256+x2);
  $  007.氧传感器组1监测条件满足次数            $    $  次     $    $  ANS000.BYTE018  $  y=(x1*256+x2);
  $  008.氧传感器组2监测完成次数                $    $  次     $    $  ANS000.BYTE020  $  y=(x1*256+x2);
  $  009.氧传感器组2监测条件满足次数            $    $  次     $    $  ANS000.BYTE022  $  y=(x1*256+x2);
  $  010.废气再循环系统监测完成次数             $    $  次     $    $  ANS000.BYTE024  $  y=(x1*256+x2);
  $  011.废气再循环系统监测条件满足次数         $    $  次     $    $  ANS000.BYTE026  $  y=(x1*256+x2);
  $  012.空气监测完成次数                       $    $  次     $    $  ANS000.BYTE028  $  y=(x1*256+x2);
  $  013.空气监测条件满足次数                   $    $  次     $    $  ANS000.BYTE030  $  y=(x1*256+x2);
  $  014.燃油蒸发排放系统监测完成次数           $    $  次     $    $  ANS000.BYTE032  $  y=(x1*256+x2);
  $  015.燃油蒸发排放系统监测条件满足次数       $    $  次     $    $  ANS000.BYTE034  $  y=(x1*256+x2);
  $  016.二次氧传感器组1监测完成次数            $    $  次     $    $  ANS000.BYTE036  $  y=(x1*256+x2);
  $  017.二次氧传感器组1监测条件满足次数        $    $  次     $    $  ANS000.BYTE038  $  y=(x1*256+x2);
  $  018.二次氧传感器组2监测完成次数            $    $  次     $    $  ANS000.BYTE040  $  y=(x1*256+x2);
  $  019.二次氧传感器组2监测条件满足次数        $    $  次     $    $  ANS000.BYTE042  $  y=(x1*256+x2);

;******************************************************************************************************************************************************

动作测试:

$^ 00.发动机故障(MIL)指示灯控制 
$^TYPE0
$^BUTTON:关闭 
$^REQ00:7E0 05 2F 01 10 03 00 00 00     $^

$^BUTTON:打开 
$^REQ00:7E0 05 2F 01 10 03 FF 00 00     $^

$^BUTTON:退出 
$^REQ00:7E0 04 2F 01 10 00 00 00 00     $^

$^TIP:操作说明： 1.整车上ON档电 
;----------------------------------------------------------------------------------------------------

$^ 01.碳罐控制阀控制 
 $^TYPE:2
$^BUTTON:输入
$^REQ00:7E0 05 2F 01 11 03 XX 00 00     $^

$^BUTTON:退出
$^REQ00:7E0 04 2F 01 11 00 00 00 00     $^

$^DSP:碳罐控制阀控制->%
$^TIP:操作说明： 1.整车上ON档电 
$^TIP:请输入测试值(范围:0~100) 
$^IN_F:y=x1/0.39216;
$^RANGE:0,100
;----------------------------------------------------------------------------------------------------

$^ 02.燃油泵控制 
$^TYPE0
$^BUTTON:关闭 
$^REQ00:7E0 05 2F 01 12 03 00 00 00     $^

$^BUTTON:打开 
$^REQ00:7E0 05 2F 01 12 03 FF 00 00     $^

$^BUTTON:退出 
$^REQ00:7E0 04 2F 01 12 00 00 00 00     $^

$^TIP:操作说明： 1.发动机工作中  2.车速为0，车速传感器无故障 
;----------------------------------------------------------------------------------------------------

$^ 03.冷却风扇继电器#1 
$^TYPE0
$^BUTTON:关 
$^REQ00:7E0 05 2F 01 13 03 00 00 00     $^

$^BUTTON:开 
$^REQ00:7E0 05 2F 01 13 03 FF 00 00     $^

$^BUTTON:退出 
$^REQ00:7E0 04 2F 01 13 00 00 00 00     $^

$^TIP:操作说明： 1、 发动机冷却剂温度低于特定阀值（≤100℃），否则ECM 将启动冷却风扇防止发动机过热 2、测试时不要求空调请求 3、冷却风扇开启时的无条件限制 
;----------------------------------------------------------------------------------------------------

$^ 04.冷却风扇继电器#2 
$^TYPE0
$^BUTTON:关 
$^REQ00:7E0 05 2F 01 14 03 00 00 00     $^

$^BUTTON:开 
$^REQ00:7E0 05 2F 01 14 03 FF 00 00     $^

$^BUTTON:退出 
$^REQ00:7E0 04 2F 01 14 00 00 00 00     $^

$^TIP:操作说明： 1、 发动机冷却剂温度低于特定阀值（≤100℃），否则ECM 将启动冷却风扇防止发动机过热 2、测试时不要求空调请求 3、冷却风扇开启时的无条件限制 
;----------------------------------------------------------------------------------------------------

$^ 05.空调离合器 
$^TYPE0
$^BUTTON:关 
$^REQ00:7E0 05 2F 01 15 03 00 00 00     $^

$^BUTTON:开 
$^REQ00:7E0 05 2F 01 15 03 FF 00 00     $^

$^BUTTON:退出 
$^REQ00:7E0 04 2F 01 15 00 00 00 00     $^

$^TIP:操作说明： 1、空调离合器关闭测试无条件 2、空调离合器开启测试无条件：发动机必须停止运转 
;----------------------------------------------------------------------------------------------------

$^ 06.车辆立即维修(SVS)指示灯控制 
$^TYPE0
$^BUTTON:关闭 
$^REQ00:7E0 05 2F 01 18 03 00 00 00     $^

$^BUTTON:打开 
$^REQ00:7E0 05 2F 01 18 03 FF 00 00     $^

$^BUTTON:退出 
$^REQ00:7E0 04 2F 01 18 00 00 00 00     $^

$^TIP:操作条件： 1.整车上ON档电 
;----------------------------------------------------------------------------------------------------

$^ 07.禁用燃油喷射控制 
$^TYPE0
$^BUTTON:禁止#1缸喷射 
$^REQ00:7E0 06 2F 01 20 03 00 01 00     $^
$^REQ01:7E0 06 2F 01 20 03 FF 01 00     $^

$^BUTTON:禁止#2缸喷射 
$^REQ00:7E0 06 2F 01 20 03 00 02 00     $^
$^REQ01:7E0 06 2F 01 20 03 FF 02 00     $^

$^BUTTON:禁止#3缸喷射 
$^REQ00:7E0 06 2F 01 20 03 00 03 00     $^
$^REQ01:7E0 06 2F 01 20 03 FF 03 00     $^

$^BUTTON:禁止#4缸喷射 
$^REQ00:7E0 06 2F 01 20 03 00 04 00     $^
$^REQ01:7E0 06 2F 01 20 03 FF 04 00     $^

$^BUTTON:启动#1缸喷射 
$^REQ00:7E0 06 2F 01 20 03 FF 01 00     $^

$^BUTTON:启动#2缸喷射 
$^REQ00:7E0 06 2F 01 20 03 FF 02 00     $^

$^BUTTON:启动#3缸喷射 
$^REQ00:7E0 06 2F 01 20 03 FF 03 00     $^

$^BUTTON:启动#4缸喷射 
$^REQ00:7E0 06 2F 01 20 03 FF 04 00     $^

$^BUTTON:退出 
$^REQ00:7E0 04 2F FF 00 00 00 00 00     $^

$^TIP:操作条件： 1.发动机工作中  2.车速为0，车速传感器无故障  3.禁止同时关闭2个或以上喷油器 
;----------------------------------------------------------------------------------------------------

$^ 08.怠速转速控制-短期调整 
 $^TYPE:2
$^BUTTON:输入
$^REQ00:7E0 05 2F 01 24 03 XX 00 00     $^

$^BUTTON:退出
$^REQ00:7E0 04 2F 01 24 00 00 00 00     $^

$^DSP:怠速转速控制-短期调整
$^TIP:操作条件： 1.发动机工作时短期调整需低于1000转/分,停止工作时无限制 
$^TIP:请输入测试值(范围:500~2500) 
$^IN_F:y=((x1<<8)+x2)/10;
$^RANGE:500,2500
;----------------------------------------------------------------------------------------------------

$^ 09.怠速转速控制-长期调整 
 $^TYPE:2
$^BUTTON:输入
$^REQ00:7E0 05 2F 01 24 08 XX 00 00     $^

$^BUTTON:退出
$^REQ00:7E0 04 2F 01 24 00 00 00 00     $^

$^DSP:怠速转速控制-长期调整
$^TIP:请输入测试值(范围:500~2500) 
$^IN_F:y=((x1<<8)+x2)/10;
$^RANGE:500,2500
;----------------------------------------------------------------------------------------------------

$^ 10.制动真空泵控制 
$^TYPE0
$^BUTTON:关闭 
$^REQ00:7E0 05 2F 01 FB 03 00 00 00     $^

$^BUTTON:打开 
$^REQ00:7E0 05 2F 01 FB 03 FF 00 00     $^

$^BUTTON:退出 
$^REQ00:7E0 04 2F 01 FB 00 00 00 00     $^

$^TIP:操作条件： 1.整车上ON档电，发动机停止工作 
;----------------------------------------------------------------------------------------------------

$^ 11.冷却液循环泵控制 
$^TYPE0
$^BUTTON:关闭 
$^REQ00:7E0 05 2F 01 FC 03 00 00 00     $^

$^BUTTON:打开 
$^REQ00:7E0 05 2F 01 FC 03 FF 00 00     $^

$^BUTTON:退出 
$^REQ00:7E0 04 2F 01 FC 00 00 00 00     $^

$^TIP:操作条件： 1.整车上ON档电，发动机停止工作 
;----------------------------------------------------------------------------------------------------

$^ 12.涡轮增压旁通阀控制 
$^TYPE0
$^BUTTON:关闭 
$^REQ00:7E0 05 2F 01 FD 03 00 00 00     $^

$^BUTTON:打开 
$^REQ00:7E0 05 2F 01 FD 03 FF 00 00     $^

$^BUTTON:退出 
$^REQ00:7E0 04 2F 01 FD 00 00 00 00     $^

$^TIP:操作条件： 1.整车上ON档电，发动机停止工作 
;----------------------------------------------------------------------------------------------------

$^ 13.无级风扇控制 
 $^TYPE:2
$^BUTTON:输入
$^REQ00:7E0 05 2F 01 FE 03 XX 00 00     $^

$^BUTTON:退出
$^REQ00:7E0 04 2F 01 FE 00 00 00 00     $^

$^DSP:无级风扇控制
$^TIP:请输入测试值(范围:0~100) 
$^IN_F:y=x1/0.39216;
$^RANGE:0,100
;----------------------------------------------------------------------------------------------------

$^ 14.增压压力限制阀控制 
 $^TYPE:2
$^BUTTON:输入
$^REQ00:7E0 05 2F 02 00 03 XX 00 00     $^

$^BUTTON:退出
$^REQ00:7E0 04 2F 02 00 00 00 00 00     $^

$^DSP:增压压力限制阀控制
$^TIP:操作条件： 1.整车上ON档电，发动机停止工作 
$^TIP:请输入测试值(范围:0~100) 
$^IN_F:y=x1/0.39216;
$^RANGE:0,100
;----------------------------------------------------------------------------------------------------

$^ 15.节气门开度控制 
 $^TYPE:2
$^BUTTON:输入
$^REQ00:7E0 05 2F 02 02 03 XX 00 00     $^

$^BUTTON:退出
$^REQ00:7E0 04 2F 02 02 00 00 00 00     $^

$^DSP:节气门开度控制
$^TIP:操作条件： 1.整车上ON档电，发动机停止工作 
$^TIP:请输入测试值(范围:0~100) 
$^IN_F:y=x1/0.39216;
$^RANGE:0,100
;----------------------------------------------------------------------------------------------------

$^ 16.清除修正值 
$^TYPE0
$^BUTTON:清除点火提前角长期修正 
$^REQ00:7E0 05 2F 02 03 03 01 00 00     $^

$^BUTTON:清除燃油长期修正值 
$^REQ00:7E0 05 2F 02 03 03 02 00 00     $^

$^BUTTON:清除怠速长期修正 
$^REQ00:7E0 05 2F 02 03 03 03 00 00     $^

$^BUTTON:清除所有修正值 
$^REQ00:7E0 05 2F 02 03 03 FF 00 00     $^

$^BUTTON:退出 
$^REQ00:7E0 04 2F 02 03 00 00 00 00     $^

$^TIP:操作条件： 1.整车上ON档电 
;----------------------------------------------------------------------------------------------------

$^ 17.坡度传感器零位学习 
$^TYPE0
$^BUTTON:关 
$^REQ00:7E0 05 2F 02 04 03 00 00 00     $^

$^BUTTON:开 
$^REQ00:7E0 05 2F 02 04 03 FF 00 00     $^

$^BUTTON:退出 
$^REQ00:7E0 04 2F 02 04 00 00 00 00     $^

$^TIP:操作条件： 1、车辆处于校正水平路面 2、上ON 档电 3、发动机熄火 
;----------------------------------------------------------------------------------------------------

$^ 18.风扇类型学习 
$^TYPE0
$^BUTTON:两级风扇 
$^REQ00:7E0 05 2F 02 05 03 00 00 00     $^

$^BUTTON:无级风扇 
$^REQ00:7E0 05 2F 02 05 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:7E0 04 2F 02 05 00 00 00 00     $^

$^TIP:操作条件： 1、上ON 档电 2、发动机转速为0 
;----------------------------------------------------------------------------------------------------

$^ 19.巡航主开关灯 
$^TYPE0
$^BUTTON:关闭 
$^REQ00:7E0 05 2F 02 09 03 00 00 00     $^

$^BUTTON:打开 
$^REQ00:7E0 05 2F 02 09 03 FF 00 00     $^

$^BUTTON:退出 
$^REQ00:7E0 04 2F 02 09 00 00 00 00     $^

$^TIP:操作条件： 1、上ON 档电 2、发动机熄火 
;----------------------------------------------------------------------------------------------------

$^ 20.巡航状态灯 
$^TYPE0
$^BUTTON:关闭 
$^REQ00:7E0 05 2F 02 0A 03 00 00 00     $^

$^BUTTON:打开 
$^REQ00:7E0 05 2F 02 0A 03 FF 00 00     $^

$^BUTTON:退出 
$^REQ00:7E0 04 2F 02 0A 00 00 00 00     $^

$^TIP:操作条件： 1、上ON 档电 2、发动机熄火 
;----------------------------------------------------------------------------------------------------

$^ 21.巡航车速设置 
 $^TYPE:2
$^BUTTON:输入
$^REQ00:7E0 05 2F 02 0B 03 XX 00 00     $^

$^BUTTON:退出
$^REQ00:7E0 04 2F 02 0B 00 00 00 00     $^

$^DSP:巡航车速设置->km/h
$^TIP:操作条件： 1、巡航功能打开并使车辆处于巡航控制状态 2、调整范围：40~160 km/h 
$^TIP:请输入测试值(范围:40~160) 
$^IN_F:y=x1;
$^RANGE:40,160
;----------------------------------------------------------------------------------------------------

$^ 22.齿讯学习控制 
$^TYPE0
$^BUTTON:关闭 
$^REQ00:7E0 05 2F 02 12 03 00 00 00     $^

$^BUTTON:打开 
$^REQ00:7E0 05 2F 02 12 03 FF 00 00     $^

$^BUTTON:退出 
$^REQ00:7E0 04 2F 02 12 00 00 00 00     $^

$^TIP:操作条件： 1.发动机启动中  2.整车N档位 3.快踩油门到最大并保持住，发动机转速大概会在1300rpm-3800rpm之间进行2-5个循环 4.最后在1200rpm附近趋于稳定，此时自学习完成，松开油门踏板 
;----------------------------------------------------------------------------------------------------

30帧:

  $FC REQ000:7E0 30 00 05 00 00 00 00 00  $FC 
  $FC REQ001:7E0 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
