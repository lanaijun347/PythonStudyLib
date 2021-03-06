
    车型ID：3c99

    模拟：协议模拟-->3c99

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

  $*$*DTC/17010000_2BYTE


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7E0 04 14 FF FF FF 00 00 00       $$  ANS000:7E8 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7E0 03 22 F1 93 00 00 00 00       $%  ANS000:7E8 03 22 F1 93 00 00 00 00
  $%  REQ001:7E0 03 22 F1 94 00 00 00 00       $%  ANS001:7E8 03 22 F1 94 00 00 00 00
  $%  REQ002:7E0 03 22 F1 95 00 00 00 00       $%  ANS002:7E8 03 22 F1 95 00 00 00 00
  $%  REQ003:7E0 03 22 F1 90 00 00 00 00       $%  ANS003:7E8 03 22 F1 90 00 00 00 00

  $%  000:硬件版本:                       $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],(x1%1000-x1%100)/100,(x1%100-x1%10)/10,x1%10);
  $%  001:硬件日期:                       $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0197,x2,@0198,x3,@0199);
  $%  002:软件编号:                       $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%02X%02X%02X%02X%02X%02X%02X%02X%02X],x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:                       $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%d%d.%d%d],((x1*256+x2)%100000-(x1*256+x2)%10000)/10000,((x1*256+x2)%10000-(x1*256+x2)%1000)/1000,((x1*256+x2)%1000-(x1*256+x2)%100)/100,((x1*256+x2)%100-(x1*256+x2)%10)/10,(x1*256+x2)%10);
  $%  004:软件日期:                       $%    $%  ANS002.BYTE006  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0197,x2,@0198,x3,@0199);
  $%  005:修改次数:                       $%    $%  ANS002.BYTE009  $%  y=x1;
  $%  006:学习到的VIN(车辆识别码):        $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);

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
  $  046.节气门电机PWM(脉宽调制)                            $    $  %        $    $  ANS000.BYTE058  $  y=SPRINTF([%.1f],x1*100/255);
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
  $  063.发动机防盗解锁-ECU发送码验证结果                   $    $           $    $  ANS000.BYTE022  $  if(x1&0x01) y=@0191;else y=@0192;
  $  064.发动机防盗解锁-IKey发送码验证结果                  $    $           $    $  ANS000.BYTE022  $  if(x1&0x02) y=@0191;else y=@0192;
  $  065.发动机防盗解锁-ECU新旧状态                         $    $           $    $  ANS000.BYTE022  $  if(x1&0x04) y=@00ef;else y=@00ee;
  $  066.发动机冷却系统-低速风扇是否开启                    $    $           $    $  ANS000.BYTE023  $  if(x1&0x01) y=@0185;else y=@0186;
  $  067.发动机冷却系统-高速风扇是否开启                    $    $           $    $  ANS000.BYTE023  $  if(x1&0x02) y=@0185;else y=@0186;
  $  068.发动机冷却系统-风扇类型                            $    $           $    $  ANS000.BYTE023  $  if(x1&0x0C) y=@0193;else y=@0194;
  $  069.发动机稳态工况-点火电源开启                        $    $           $    $  ANS000.BYTE024  $  if(x1&0x01) y=@0185;else y=@0186;
  $  070.发动机稳态工况-主继电器工作                        $    $           $    $  ANS000.BYTE024  $  if(x1&0x02) y=@0185;else y=@0186;
  $  071.发动机稳态工况-燃油泵状态                          $    $           $    $  ANS000.BYTE024  $  if(x1&0x04) y=@001d;else y=@001e;
  $  072.发动机稳态工况-起动机工作                          $    $           $    $  ANS000.BYTE024  $  if(x1&0x08) y=@0185;else y=@0186;
  $  073.发动机稳态工况-达到怠速转速                        $    $           $    $  ANS000.BYTE024  $  if(x1&0x10) y=@0185;else y=@0186;
  $  074.发动机稳态工况-同步条件                            $    $           $    $  ANS000.BYTE024  $  if(x1&0x20) y=@0187;else y=@0188;
  $  075.发动机稳态工况-达到发动机工作温度(大于80°C)       $    $           $    $  ANS000.BYTE024  $  if(x1&0x40) y=@0187;else y=@0188;
  $  076.发动机稳态工况-车辆行驶(收到速度脉冲)              $    $           $    $  ANS000.BYTE024  $  if(x1&0x80) y=@0185;else y=@0186;
  $  077.发动机动态工况-节气门处于怠速位置                  $    $           $    $  ANS000.BYTE025  $  if(x1&0x01) y=@0185;else y=@0186;
  $  078.发动机动态工况-节气门处于部分打开位置              $    $           $    $  ANS000.BYTE025  $  if(x1&0x02) y=@0185;else y=@0186;
  $  079.发动机动态工况-节气门处于全开位置                  $    $           $    $  ANS000.BYTE025  $  if(x1&0x04) y=@0185;else y=@0186;
  $  080.发动机动态工况-激活减速断油                        $    $           $    $  ANS000.BYTE025  $  if(x1&0x08) y=@00f2;else y=@0181;
  $  081.发动机动态工况-激活加速加浓                        $    $           $    $  ANS000.BYTE025  $  if(x1&0x10) y=@00f2;else y=@0181;
  $  082.发动机动态工况-是否D档(前进档)                     $    $           $    $  ANS000.BYTE025  $  if(x1&0x20) y=@0185;else y=@0186;
  $  083.发动机动态工况-是否R档(后退档)                     $    $           $    $  ANS000.BYTE025  $  if(x1&0x40) y=@0185;else y=@0186;
  $  084.发动机动态工况-是否N档(空档)                       $    $           $    $  ANS000.BYTE025  $  if(x1&0x80) y=@0185;else y=@0186;
  $  085.排放控制-λ控制激活                                $    $           $    $  ANS000.BYTE026  $  if(x1&0x01) y=@00f2;else y=@0181;
  $  086.排放控制-碳罐控制阀激活                            $    $           $    $  ANS000.BYTE026  $  if(x1&0x04) y=@00f2;else y=@0181;
  $  087.排放控制-减速断油激活                              $    $           $    $  ANS000.BYTE026  $  if(x1&0x08) y=@00f2;else y=@0181;
  $  088.排放控制-催化转换器保护加浓激活                    $    $           $    $  ANS000.BYTE026  $  if(x1&0x10) y=@00f2;else y=@0181;
  $  089.排放控制-混合气自学习条件激活                      $    $           $    $  ANS000.BYTE026  $  if(x1&0x20) y=@00f2;else y=@0181;
  $  090.氧传感器-氧传感器1信号                             $    $           $    $  ANS000.BYTE027  $  if(x1&0x01) y=@017f;else y=@0180;
  $  091.氧传感器-氧传感器2信号                             $    $           $    $  ANS000.BYTE027  $  if(x1&0x02) y=@017f;else y=@0180;
  $  092.氧传感器-氧传感器1加热                             $    $           $    $  ANS000.BYTE027  $  if(x1&0x10) y=@0183;else y=@0184;
  $  093.氧传感器-氧传感器2加热                             $    $           $    $  ANS000.BYTE027  $  if(x1&0x20) y=@0183;else y=@0184;
  $  094.发动机怠速-踏板位置处于怠速位置                    $    $           $    $  ANS000.BYTE028  $  if(x1&0x01) y=@0185;else y=@0186;
  $  095.发动机怠速-制动器状态                              $    $           $    $  ANS000.BYTE028  $  if(x1&0x02) y=@0118;else y=@0182;
  $  096.发动机怠速-是否有空调请求                          $    $           $    $  ANS000.BYTE028  $  if(x1&0x04) y=@0185;else y=@0186;
  $  097.发动机怠速-后车窗/前风挡玻璃加热                   $    $           $    $  ANS000.BYTE028  $  if(x1&0x08) y=@001d;else y=@001e;
  $  098.发动机怠速-动力转向开关                            $    $           $    $  ANS000.BYTE028  $  if(x1&0x10) y=@001d;else y=@001e;
  $  099.发动机怠速-离合器状态                              $    $           $    $  ANS000.BYTE028  $  if(x1&0x20) y=@0118;else y=@0182;
  $  100.发动机怠速-真空泵状态                              $    $           $    $  ANS000.BYTE028  $  if(x1&0x40) y=@001d;else y=@001e;
  $  101.指示灯SVS/MIL-MIL灯激活                            $    $           $    $  ANS000.BYTE029  $  if(x1&0x01) y=@00f2;else y=@0181;
  $  102.指示灯SVS/MIL-MIL灯闪烁                            $    $           $    $  ANS000.BYTE029  $  if(x1&0x02) y=@0185;else y=@0186;
  $  103.指示灯SVS/MIL-SVS灯激活                            $    $           $    $  ANS000.BYTE029  $  if(x1&0x10) y=@00f2;else y=@0181;
  $  104.指示灯SVS/MIL-SVS灯闪烁                            $    $           $    $  ANS000.BYTE029  $  if(x1&0x20) y=@0185;else y=@0186;
  $  105.指示灯SVS/MIL-SVS存在故障                          $    $           $    $  ANS000.BYTE029  $  if(x1&0x40) y=@0185;else y=@0186;
  $  106.空调系统-空调开启                                  $    $           $    $  ANS000.BYTE031  $  if(x1&0x01) y=@0185;else y=@0186;
  $  107.空调系统-空调请求激活                              $    $           $    $  ANS000.BYTE031  $  if(x1&0x02) y=@00f2;else y=@0181;
  $  108.空调系统-空调压缩机开                              $    $           $    $  ANS000.BYTE031  $  if(x1&0x04) y=@0185;else y=@0186;
  $  109.空调系统-空调断开或无空调                          $    $           $    $  ANS000.BYTE031  $  if(x1&0x08) y=@0185;else y=@0186;
  $  110.空调系统-空调因温度断开                            $    $           $    $  ANS000.BYTE031  $  if(x1&0x10) y=@0185;else y=@0186;
  $  111.空调系统-怠速转速因空调而增加                      $    $           $    $  ANS000.BYTE031  $  if(x1&0x20) y=@0185;else y=@0186;
  $  112.空调系统-全负荷时关闭空调压缩机                    $    $           $    $  ANS000.BYTE031  $  if(x1&0x40) y=@0185;else y=@0186;
  $  113.空调系统-空调中压开关开                            $    $           $    $  ANS000.BYTE031  $  if(x1&0x80) y=@0185;else y=@0186;
  $  114.AT/扭矩请求-AT转换离合器激活                       $    $           $    $  ANS000.BYTE032  $  if(x1&0x08) y=@00f2;else y=@0181;
  $  115.巡航控制-巡航功能                                  $    $           $    $  ANS000.BYTE033  $  if(x1&0x01) y=@001d;else y=@001e;
  $  116.巡航控制-巡航状态                                  $    $           $    $  ANS000.BYTE033  $  if(x1&0x02) y=@0002;else y=@0003;
  $  117.巡航控制-按键状态                                  $    $           $    $  ANS000.BYTE033  $  switxh(x1&0x1C)0x00: y=@018b;0x04: y=@018c;0x08: y=@018d;0x0C: y=@018e;0x10: y=@018f;0x14: y=@0190;default: y=@0001;
  $  118.发动机状态-刹车开关激活                            $    $           $    $  ANS000.BYTE034  $  if(x1&0x01) y=@00f2;else y=@0181;
  $  119.发动机状态-刹车灯激活                              $    $           $    $  ANS000.BYTE034  $  if(x1&0x02) y=@00f2;else y=@0181;
  $  120.发动机状态-离合器开关激活                          $    $           $    $  ANS000.BYTE034  $  if(x1&0x04) y=@00f2;else y=@0181;
  $  121.发动机状态-水泵继电器状态                          $    $           $    $  ANS000.BYTE034  $  if(x1&0x08) y=@001d;else y=@001e;
  $  122.发动机状态-涡轮增压旁通阀                          $    $           $    $  ANS000.BYTE034  $  if(x1&0x10) y=@001d;else y=@001e;
  $  123.发动机状态-防盗锁定状态                            $    $           $    $  ANS000.BYTE034  $  if(x1&0x20) y=@001d;else y=@001e;
  $  124.发动机状态-燃油反馈状态                            $    $           $    $  ANS000.BYTE034  $  if(x1&0x40) y=@0189;else y=@018a;
  $  125.发动机状态-可变气门升程阀状态(VVL阀)               $    $           $    $  ANS000.BYTE034  $  if(x1&0x80) y=@001d;else y=@001e;
  $  126.水泵工作状态                                       $    $           $    $  ANS000.BYTE176  $  if(x1==0) y=@03b5;else if(x1==1) y=@03b6;else if(x1==2) y=@03b7;else if(x1==3) y=@03b8;else if(x1==4) y=@03b9;else if(x1==5) y=@03ba;else y=@0001;
  $  127.电子水泵状态字1-水泵紧急模式状态                   $    $           $    $  ANS000.BYTE177  $  if((x1&0xC0)==0x00) y=@0643;else if((x1&0xC0)==0x40) y=@0644;else if((x1&0xC0)==0x80) y=@03b1;else y=@0001;
  $  128.电子水泵状态字1-水泵过温状态                       $    $           $    $  ANS000.BYTE177  $  if((x1&0x30)==0x00) y=@0078;else if((x1&0x30)==0x10) y=@03b2;else if((x1&0x30)==0x20) y=@03b1;else y=@0001;
  $  129.电子水泵状态字1-水泵过流状态                       $    $           $    $  ANS000.BYTE177  $  if((x1&0x0C)==0x00) y=@0078;else if((x1&0x0C)==0x04) y=@0345;else if((x1&0x0C)==0x08) y=@03b1;else y=@0001;
  $  130.电子水泵状态字1-水泵干转状态                       $    $           $    $  ANS000.BYTE177  $  if((x1&0x03)==0x00) y=@0078;else if((x1&0x03)==0x01) y=@03bb;else if((x1&0x03)==0x02) y=@03b1;else y=@0001;
  $  131.电子水泵状态字2-水泵电压状态                       $    $           $    $  ANS000.BYTE178  $  if((x1&0xC0)==0x00) y=@0078;else if((x1&0xC0)==0x40) y=@01e8;else if((x1&0xC0)==0x80) y=@03b1;else y=@0001;
  $  132.电子水泵状态字2-水泵堵转状态                       $    $           $    $  ANS000.BYTE178  $  if((x1&0x30)==0x00) y=@0078;else if((x1&0x30)==0x10) y=@0347;else if((x1&0x30)==0x20) y=@03b1;else y=@0001;
  $  133.颗粒捕集器压差                                     $    $  Kpa      $    $  ANS000.BYTE179  $  y=SPRINTF([%d],(x1*256+x2)*0.01-20);
  $  134.颗粒捕集器入口温度                                 $    $  ℃       $    $  ANS000.BYTE181  $  y=SPRINTF([%d],(x1*256+x2)-60);
  $  135.颗粒捕集器内部累碳量                               $    $  mg       $    $  ANS000.BYTE183  $  y=(x1*256+x2);
  $  136.当前排气氧流量                                     $    $  g/s      $    $  ANS000.BYTE187  $  y=(x1*256+x2);
  $  137.颗粒捕集器再生指令                                 $    $           $    $  ANS000.BYTE189  $  if(x1==0) y=@03af;else if(x1==1) y=@03b0;else y=@0001;
  $  138.颗粒捕集器再生条件满足                             $    $           $    $  ANS000.BYTE190  $  if(x1==0) y=@03af;else if(x1==1) y=@03b0;else y=@0001;
  $  139.颗粒捕集器再生里程                                 $    $  Km       $    $  ANS000.BYTE191  $  y=(x1*256*256+x2*256+x3);

  $IN_01  REQ000:7E0 02 01 00 00 00 00 00 00       $IN_01  ANS000:7E8 02 01 00 00 00 00 00 00

  $)  01.IUPR
  $  01.IUPR
  $  REQ000:7E0 02 09 04 00 00 00 00 00       $  ANS000:7E8 02 09 04 00 00 00 00 00
  $  REQ001:7E0 02 09 06 00 00 00 00 00       $  ANS001:7E8 02 09 06 00 00 00 00 00
  $  REQ002:7E0 02 09 08 00 00 00 00 00       $  ANS002:7E8 02 09 08 00 00 00 00 00

  $  000.ECU CALID                              $    $         $    $  ANS000.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $  001.ECU CVN                                $    $         $    $  ANS001.BYTE004  $  HEX(x1,x2,x3,x4);
  $  002.OBD(车载诊断系统)监控完成次数          $    $  次     $    $  ANS002.BYTE004  $  y=(x1*256+x2);
  $  003.点火循环次数                           $    $  次     $    $  ANS002.BYTE006  $  y=(x1*256+x2);
  $  004.催化转化系统组1监测完成次数            $    $  次     $    $  ANS002.BYTE008  $  y=(x1*256+x2);
  $  005.催化转化系统组1监测条件满足次数        $    $  次     $    $  ANS002.BYTE010  $  y=(x1*256+x2);
  $  006.催化转化系统组2监测完成次数            $    $  次     $    $  ANS002.BYTE012  $  y=(x1*256+x2);
  $  007.催化转化系统组2监测条件满足次数        $    $  次     $    $  ANS002.BYTE014  $  y=(x1*256+x2);
  $  008.氧传感器组1监测完成次数                $    $  次     $    $  ANS002.BYTE016  $  y=(x1*256+x2);
  $  009.氧传感器组1监测条件满足次数            $    $  次     $    $  ANS002.BYTE018  $  y=(x1*256+x2);
  $  010.氧传感器组2监测完成次数                $    $  次     $    $  ANS002.BYTE020  $  y=(x1*256+x2);
  $  011.氧传感器组2监测条件满足次数            $    $  次     $    $  ANS002.BYTE022  $  y=(x1*256+x2);
  $  012.废气再循环系统监测完成次数             $    $  次     $    $  ANS002.BYTE024  $  y=(x1*256+x2);
  $  013.废气再循环系统监测条件满足次数         $    $  次     $    $  ANS002.BYTE026  $  y=(x1*256+x2);
  $  014.空气监测完成次数                       $    $  次     $    $  ANS002.BYTE028  $  y=(x1*256+x2);
  $  015.空气监测条件满足次数                   $    $  次     $    $  ANS002.BYTE030  $  y=(x1*256+x2);
  $  016.燃油蒸发排放系统监测完成次数           $    $  次     $    $  ANS002.BYTE032  $  y=(x1*256+x2);
  $  017.燃油蒸发排放系统监测条件满足次数       $    $  次     $    $  ANS002.BYTE034  $  y=(x1*256+x2);
  $  018.二次氧传感器组1监测完成次数            $    $  次     $    $  ANS002.BYTE036  $  y=(x1*256+x2);
  $  019.二次氧传感器组1监测条件满足次数        $    $  次     $    $  ANS002.BYTE038  $  y=(x1*256+x2);
  $  020.二次氧传感器组2监测完成次数            $    $  次     $    $  ANS002.BYTE040  $  y=(x1*256+x2);
  $  021.二次氧传感器组2监测条件满足次数        $    $  次     $    $  ANS002.BYTE042  $  y=(x1*256+x2);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7E0 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
