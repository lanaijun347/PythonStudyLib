
    车型ID：a328

    模拟：协议模拟-->a328

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7E8

进入命令:

  $~  REQ000:7E0 02 10 01 00 00 00 00 00       $~  ANS000:7E8 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7E0 02 3E 80 00 00 00 00 00       $!  ANS000:7E8 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7E0 02 19 FF 00 00 00 00 00       $#  ANS000:7E8 02 19 FF 00 00 00 00 00

		控制公式：
			y=(x1<<8)+x2;

  帧长控制故障码个数，从$#ANS000.BYTE5$#开始每$#4$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/feff0000_2BYTE


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7E0 04 14 FF FF FF 00 00 00       $$  ANS000:7E8 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7E0 03 22 F1 92 00 00 00 00       $%  ANS000:7E8 03 22 F1 92 00 00 00 00
  $%  REQ001:7E0 03 22 F1 94 00 00 00 00       $%  ANS001:7E8 03 22 F1 94 00 00 00 00
  $%  REQ002:7E0 03 22 F1 95 00 00 00 00       $%  ANS002:7E8 03 22 F1 95 00 00 00 00
  $%  REQ003:7E0 03 22 F1 99 00 00 00 00       $%  ANS003:7E8 03 22 F1 99 00 00 00 00
  $%  REQ004:7E0 03 22 F1 8B 00 00 00 00       $%  ANS004:7E8 03 22 F1 8B 00 00 00 00
  $%  REQ005:7E0 03 22 F1 90 00 00 00 00       $%  ANS005:7E8 03 22 F1 90 00 00 00 00

  $%  000:硬件编号:           $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19);
  $%  001:软件编号:           $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  002:软件版本号:         $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2);
  $%  003:编程日期:           $%    $%  ANS003.BYTE004  $%  y=SPRINTF([%02X%02X%02X%02X],x1,x2,x3,x4);
  $%  004:ECU生产日期:        $%    $%  ANS004.BYTE004  $%  y=SPRINTF([%02X%02X%02X%02X],x1,x2,x3,x4);
  $%  005:学习到的VIN:        $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7E0 03 22 F1 01 00 00 00 00       $  ANS000:7E8 03 22 F1 01 00 00 00 00

  $  000.发动机转速                                         $    $  rpm          $    $  ANS000.BYTE036  $  y=x1*64+x2*64.0/255;
  $  001.电源电压                                           $    $  V            $    $  ANS000.BYTE035  $  y=x1*0.1;
  $  002.目标怠速(有补偿)                                   $    $  rpm          $    $  ANS000.BYTE039  $  y=x1*10;
  $  003.进气压力                                           $    $  kPa          $    $  ANS000.BYTE046  $  y=x1;
  $  004.冷却液温度                                         $    $  degree C     $    $  ANS000.BYTE042  $  y=x1-40;
  $  005.散热器出口冷却液温度                               $    $  degree C     $    $  ANS000.BYTE119  $  y=x1-40;
  $  006.目标油压                                           $    $  bar          $    $  ANS000.BYTE108  $  y=x1;
  $  007.实际油压                                           $    $  bar          $    $  ANS000.BYTE110  $  y=x1;
  $  008.节气门开度                                         $    $  %            $    $  ANS000.BYTE055  $  y=(x1*256+x2)*0.1;
  $  009.节气门目标开度                                     $    $  %            $    $  ANS000.BYTE049  $  y=(x1*256+x2)*0.1;
  $  010.加速踏板位置                                       $    $  %            $    $  ANS000.BYTE105  $  y=(x1*256+x2)*0.1;
  $  011.交流发电机负荷                                     $    $  %            $    $  ANS000.BYTE107  $  y=x1*100.0/255;
  $  012.充磁时间                                           $    $  毫秒         $    $  ANS000.BYTE063  $  y=x1*0.1;
  $  013.进气相位原始值                                     $    $  °           $    $  ANS000.BYTE131  $  y=(x1*256+x2)-100;
  $  014.喷油脉宽                                           $    $  毫秒         $    $  ANS000.BYTE064  $  y=x1*0.1;
  $  015.进气流量                                           $    $  kg/h         $    $  ANS000.BYTE047  $  y=(x1*256+x2)*0.1;
  $  016.目标怠速(无补偿)                                   $    $  rpm          $    $  ANS000.BYTE038  $  y=x1*10;
  $  017.车速                                               $    $  km/h         $    $  ANS000.BYTE040  $  y=x1;
  $  018.运行里程                                           $    $  km           $    $  ANS000.BYTE092  $  y=UINT(x1*0x1000000+x2*0x10000+x3*0x100+x4);
  $  019.运行时间                                           $    $  分           $    $  ANS000.BYTE096  $  y=UINT(x1*0x1000000+x2*0x10000+x3*0x100+x4);
  $  020.进气温度                                           $    $  degree C     $    $  ANS000.BYTE044  $  y=x1-40;
  $  021.增压气体温度                                       $    $  degree C     $    $  ANS000.BYTE117  $  y=x1-40;
  $  022.目标增压压力                                       $    $  kPa          $    $  ANS000.BYTE113  $  y=x1;
  $  023.实际增压压力                                       $    $  kPa          $    $  ANS000.BYTE115  $  y=x1;
  $  024.目标进气相位                                       $    $  °           $    $  ANS000.BYTE126  $  y=(x1*256+x2)-100;
  $  025.进气相位                                           $    $  °           $    $  ANS000.BYTE124  $  y=(x1*256+x2)-100;
  $  026.大气压力值                                         $    $  kPa          $    $  ANS000.BYTE120  $  y=x1;
  $  027.海拔校正                                           $    $  %            $    $  ANS000.BYTE121  $  y=x1*100.0/255;
  $  028.制动助力器压力                                     $    $  kPa          $    $  ANS000.BYTE112  $  y=x1;
  $  029.点火提前角                                         $    $  °           $    $  ANS000.BYTE065  $  y=x1-50;
  $  030.空燃比                                             $    $  %            $    $  ANS000.BYTE128  $  y=x1*0.1;
  $  031.倾角信息                                           $    $  °           $    $  ANS000.BYTE133  $  y=(x1*128/255)-60;
  $  032.巡航设定车速                                       $    $  km/h         $    $  ANS000.BYTE142  $  y=x1;
  $  033.爆震传感器1                                        $    $               $    $  ANS000.BYTE069  $  y=(x1*256+x2);
  $  034.1组氧传感器电压,传感器1(氧传感器1)                 $    $  V            $    $  ANS000.BYTE081  $  y=x1*1.000/255;
  $  035.1组氧传感器电压,传感器2(氧传感器2)                 $    $  V            $    $  ANS000.BYTE082  $  y=x1*1.000/255;
  $  036.1组氧传感器积分值(短期修正)                        $    $               $    $  ANS000.BYTE079  $  y=x1*1.992/255;
  $  037.1组氧传感器积分值(长期修正)                        $    $               $    $  ANS000.BYTE085  $  y=x1*1.992/255;
  $  038.1缸推迟点火爆震控制                                $    $  °           $    $  ANS000.BYTE073  $  y=x1*0.1;
  $  039.2缸推迟点火爆震控制                                $    $  °           $    $  ANS000.BYTE074  $  y=x1*0.1;
  $  040.3缸推迟点火爆震控制                                $    $  °           $    $  ANS000.BYTE075  $  y=x1*0.1;
  $  041.4缸推迟点火爆震控制                                $    $  °           $    $  ANS000.BYTE076  $  y=x1*0.1;
  $  042.空调压力                                           $    $  MPa          $    $  ANS000.BYTE067  $  y=(x1*65.3+x2*0.3)/255;
  $  043.无极风扇占空比                                     $    $  %            $    $  ANS000.BYTE102  $  y=x1*100.0/255;
  $  044.增压压力限制阀占空比                               $    $  %            $    $  ANS000.BYTE122  $  y=x1*100.0/255;
  $  045.计算节气门位置                                     $    $  %            $    $  ANS000.BYTE057  $  y=x1*100.0/255;
  $  046.节气门电机PWM(脉宽调制)                            $    $  %            $    $  ANS000.BYTE058  $  y=x1*100.0/255;
  $  047.碳罐阀占空比                                       $    $  %            $    $  ANS000.BYTE062  $  y=x1*100.0/255;
  $  048.旁通气量                                           $    $               $    $  ANS000.BYTE141  $  y=(((x1&0x0F)*4096)+x2*16+x3*15.0/255);
  $  049.离合位置                                           $    $  %            $    $  ANS000.BYTE157  $  y=x1*100/255;
  $  050.冷却液温度传感器                                   $    $  V            $    $  ANS000.BYTE041  $  y=x1*5.0/255;
  $  051.进气温度传感器                                     $    $  V            $    $  ANS000.BYTE043  $  y=x1*5.0/255;
  $  052.进气压力传感器                                     $    $  V            $    $  ANS000.BYTE045  $  y=x1*5.0/255;
  $  053.节气门位置传感器1                                  $    $  V            $    $  ANS000.BYTE051  $  y=(x1*4.98+x2*0.02)/255;
  $  054.节气门位置传感器2                                  $    $  V            $    $  ANS000.BYTE053  $  y=(x1*4.98+x2*0.02)/255;
  $  055.增压压力传感器                                     $    $  V            $    $  ANS000.BYTE114  $  y=x1*5.0/255;
  $  056.增压气体温度传感器                                 $    $  V            $    $  ANS000.BYTE116  $  y=x1*5.0/255;
  $  057.散热器出口冷却液温度传感器                         $    $  V            $    $  ANS000.BYTE118  $  y=x1*5.0/255;
  $  058.加速踏板1信号                                      $    $  V            $    $  ANS000.BYTE103  $  y=x1*5.0/255;
  $  059.加速踏板2信号                                      $    $  V            $    $  ANS000.BYTE104  $  y=x1*5.0/255;
  $  060.油压传感器                                         $    $  V            $    $  ANS000.BYTE109  $  y=x1*5.0/255;
  $  061.空调压力传感器                                     $    $  V            $    $  ANS000.BYTE066  $  y=x1*5.0/255;
  $  062.巡航开关电压                                       $    $  V            $    $  ANS000.BYTE143  $  y=x1*5.0/255;
  $  063.发动机防盗解锁-ECU发送码验证结果                   $    $               $    $  ANS000.BYTE022  $  if(x1&0x01)y=@001f;else y=@0020;
  $  064.发动机防盗解锁-IKey发送码验证结果                  $    $               $    $  ANS000.BYTE022  $  if(x1&0x02)y=@001f;else y=@0020;
  $  065.发动机防盗解锁-ECU新旧状态                         $    $               $    $  ANS000.BYTE022  $  if(x1&0x04)y=@0021;else y=@0022;
  $  066.发动机冷却系统-低速风扇是否开启                    $    $               $    $  ANS000.BYTE023  $  if(x1&0x01)y=@001b;else y=@001c;
  $  067.发动机冷却系统-高速风扇是否开启                    $    $               $    $  ANS000.BYTE023  $  if(x1&0x02)y=@001b;else y=@001c;
  $  068.发动机冷却系统-风扇类型                            $    $               $    $  ANS000.BYTE023  $  if((x1&0x0F)<0x04)y=@0023;else if((x1&0x0F)<0x08)y=@0024;else y=@0002;
  $  069.发动机稳态工况-点火电源开启                        $    $               $    $  ANS000.BYTE024  $  if(x1&0x01)y=@001b;else y=@001c;
  $  070.发动机稳态工况-主继电器工作                        $    $               $    $  ANS000.BYTE024  $  if(x1&0x02)y=@001b;else y=@001c;
  $  071.发动机稳态工况-燃油泵状态                          $    $               $    $  ANS000.BYTE024  $  if(x1&0x04)y=@0001;else y=@0000;
  $  072.发动机稳态工况-起动机工作                          $    $               $    $  ANS000.BYTE024  $  if(x1&0x08)y=@001b;else y=@001c;
  $  073.发动机稳态工况-达到怠速转速                        $    $               $    $  ANS000.BYTE024  $  if(x1&0x10)y=@001b;else y=@001c;
  $  074.发动机稳态工况-同步条件                            $    $               $    $  ANS000.BYTE024  $  if(x1&0x20)y=@0019;else y=@001a;
  $  075.发动机稳态工况-达到发动机工作温度(大于80°C)       $    $               $    $  ANS000.BYTE024  $  if(x1&0x40)y=@0019;else y=@001a;
  $  076.发动机稳态工况-车辆行驶(收到速度脉冲)              $    $               $    $  ANS000.BYTE024  $  if(x1&0x80)y=@001b;else y=@001c;
  $  077.发动机动态工况-节气门处于怠速位置                  $    $               $    $  ANS000.BYTE025  $  if(x1&0x01)y=@001b;else y=@001c;
  $  078.发动机动态工况-节气门处于部分打开位置              $    $               $    $  ANS000.BYTE025  $  if(x1&0x02)y=@001b;else y=@001c;
  $  079.发动机动态工况-节气门处于全开位置                  $    $               $    $  ANS000.BYTE025  $  if(x1&0x04)y=@001b;else y=@001c;
  $  080.发动机动态工况-激活减速断油                        $    $               $    $  ANS000.BYTE025  $  if(x1&0x08)y=@000e;else y=@000f;
  $  081.发动机动态工况-激活加速加浓                        $    $               $    $  ANS000.BYTE025  $  if(x1&0x10)y=@000e;else y=@000f;
  $  082.发动机动态工况-是否D档(前进挡)                     $    $               $    $  ANS000.BYTE025  $  if(x1&0x20)y=@001b;else y=@001c;
  $  083.发动机动态工况-是否R档(后退挡)                     $    $               $    $  ANS000.BYTE025  $  if(x1&0x40)y=@001b;else y=@001c;
  $  084.发动机动态工况-是否N档(空挡)                       $    $               $    $  ANS000.BYTE025  $  if(x1&0x80)y=@001b;else y=@001c;
  $  085.排放控制-λ控制激活                                $    $               $    $  ANS000.BYTE026  $  if(x1&0x01)y=@000e;else y=@000f;
  $  086.排放控制-碳罐控制阀激活                            $    $               $    $  ANS000.BYTE026  $  if(x1&0x04)y=@000e;else y=@000f;
  $  087.排放控制-减速断油激活                              $    $               $    $  ANS000.BYTE026  $  if(x1&0x08)y=@000e;else y=@000f;
  $  088.排放控制-催化转换器保护加浓激活                    $    $               $    $  ANS000.BYTE026  $  if(x1&0x10)y=@000e;else y=@000f;
  $  089.排放控制-混合气自学习条件激活                      $    $               $    $  ANS000.BYTE026  $  if(x1&0x20)y=@000e;else y=@000f;
  $  090.氧传感器-氧传感器1信号                             $    $               $    $  ANS000.BYTE027  $  if(x1&0x01)y=@001d;else y=@001e;
  $  091.氧传感器-氧传感器2信号                             $    $               $    $  ANS000.BYTE027  $  if(x1&0x02)y=@001d;else y=@001e;
  $  092.氧传感器-氧传感器1加热                             $    $               $    $  ANS000.BYTE027  $  if(x1&0x10)y=@00be;else y=@00bf;
  $  093.氧传感器-氧传感器2加热                             $    $               $    $  ANS000.BYTE027  $  if(x1&0x20)y=@00be;else y=@00bf;
  $  094.发动机怠速-踏板位置处于怠速位置                    $    $               $    $  ANS000.BYTE028  $  if(x1&0x01)y=@001b;else y=@001c;
  $  095.发动机怠速-制动器状态                              $    $               $    $  ANS000.BYTE028  $  if(x1&0x02)y=@0003;else y=@00c0;
  $  096.发动机怠速-是否有空调请求                          $    $               $    $  ANS000.BYTE028  $  if(x1&0x04)y=@001b;else y=@001c;
  $  097.发动机怠速-后车窗/前挡风玻璃加热                   $    $               $    $  ANS000.BYTE028  $  if(x1&0x08)y=@0001;else y=@0000;
  $  098.发动机怠速-动力转向开关                            $    $               $    $  ANS000.BYTE028  $  if(x1&0x10)y=@0001;else y=@0000;
  $  099.发动机怠速-离合器状态                              $    $               $    $  ANS000.BYTE028  $  if(x1&0x20)y=@0003;else y=@00c0;
  $  100.发动机怠速-真空泵状态                              $    $               $    $  ANS000.BYTE028  $  if(x1&0x40)y=@0001;else y=@0000;
  $  101.指示灯SVS/MIL-MIL(故障指示灯)激活                  $    $               $    $  ANS000.BYTE029  $  if(x1&0x01)y=@000e;else y=@000f;
  $  102.指示灯SVS/MIL-MIL(故障指示灯)闪烁                  $    $               $    $  ANS000.BYTE029  $  if(x1&0x02)y=@001b;else y=@001c;
  $  103.指示灯SVS/MIL-SVS(系统维修指示灯)激活              $    $               $    $  ANS000.BYTE029  $  if(x1&0x10)y=@000e;else y=@000f;
  $  104.指示灯SVS/MIL-SVS(系统维修指示灯)闪烁              $    $               $    $  ANS000.BYTE029  $  if(x1&0x20)y=@001b;else y=@001c;
  $  105.指示灯SVS/MIL-SVS(系统维修指示灯)存在故障          $    $               $    $  ANS000.BYTE029  $  if(x1&0x40)y=@001b;else y=@001c;
  $  106.空调系统-空调开启                                  $    $               $    $  ANS000.BYTE031  $  if(x1&0x01)y=@001b;else y=@001c;
  $  107.空调系统-空调请求激活                              $    $               $    $  ANS000.BYTE031  $  if(x1&0x02)y=@000e;else y=@000f;
  $  108.空调系统-空调压缩机开                              $    $               $    $  ANS000.BYTE031  $  if(x1&0x04)y=@001b;else y=@001c;
  $  109.空调系统-空调断开或无空调                          $    $               $    $  ANS000.BYTE031  $  if(x1&0x08)y=@001b;else y=@001c;
  $  110.空调系统-空调因温度断开                            $    $               $    $  ANS000.BYTE031  $  if(x1&0x10)y=@001b;else y=@001c;
  $  111.空调系统-怠速转速因空调而增加                      $    $               $    $  ANS000.BYTE031  $  if(x1&0x20)y=@001b;else y=@001c;
  $  112.空调系统-全负荷时关闭空调压缩机                    $    $               $    $  ANS000.BYTE031  $  if(x1&0x40)y=@001b;else y=@001c;
  $  113.空调系统-空调中压开关开                            $    $               $    $  ANS000.BYTE031  $  if(x1&0x80)y=@001b;else y=@001c;
  $  114.AT/扭矩请求-AT转换离合器激活                       $    $               $    $  ANS000.BYTE032  $  if(x1&0x08)y=@000e;else y=@000f;
  $  115.巡航控制-巡航功能                                  $    $               $    $  ANS000.BYTE033  $  if(x1&0x01)y=@0001;else y=@0000;
  $  116.巡航控制-巡航状态                                  $    $               $    $  ANS000.BYTE033  $  if(x1&0x02)y=@0093;else y=@003f;
  $  117.巡航控制-按键状态                                  $    $               $    $  ANS000.BYTE033  $  if((x1&0x1F)<0x04)y=@00b5;else if((x1&0x1F)<0x08)y=@00b6;else if((x1&0x1F)<0x0C)y=@00b7;else if((x1&0x1F)<0x10)y=@00b8;else if((x1&0x1F)<0x14)y=@00b9;else if((x1&0x1F)<0x18)y=@00ba;else y=@0002;
  $  118.发动机状态-刹车开关激活                            $    $               $    $  ANS000.BYTE034  $  if(x1&0x01)y=@000e;else y=@000f;
  $  119.发动机状态-刹车灯激活                              $    $               $    $  ANS000.BYTE034  $  if(x1&0x02)y=@000e;else y=@000f;
  $  120.发动机状态-离合器开关激活                          $    $               $    $  ANS000.BYTE034  $  if(x1&0x04)y=@000e;else y=@000f;
  $  121.发动机状态-水泵继电器状态                          $    $               $    $  ANS000.BYTE034  $  if(x1&0x08)y=@0001;else y=@0000;
  $  122.发动机状态-涡轮增压旁通阀                          $    $               $    $  ANS000.BYTE034  $  if(x1&0x10)y=@0001;else y=@0000;
  $  123.发动机状态-防盗锁定状态                            $    $               $    $  ANS000.BYTE034  $  if(x1&0x20)y=@0001;else y=@0000;
  $  124.发动机状态-燃油反馈状态                            $    $               $    $  ANS000.BYTE034  $  if(x1&0x40)y=@00bb;else y=@00bc;
  $  125.发动机状态-可变气门升程阀状态(VVL阀)               $    $               $    $  ANS000.BYTE034  $  if(x1&0x80)y=@0001;else y=@0000;

;******************************************************************************************************************************************************

动作测试:

$^ 00.发动机故障(MIL)指示灯控制 
$^TYPE0
$^BUTTON:打开 
$^REQ00:7E0 05 2F 01 10 03 FF 00 00     $^

$^BUTTON:关闭 
$^REQ00:7E0 05 2F 01 10 03 00 00 00     $^

$^BUTTON:退出 
$^REQ00:7E0 04 2F 01 10 00 00 00 00     $^

$^TIP:整车上ON档电 
;----------------------------------------------------------------------------------------------------

$^ 01.碳罐控制阀控制 
$^IN  REQ00:7E0 02 10 03 00 00 00 00 00     $^IN  

 $^TYPE:2
$^BUTTON:输入
$^REQ00:7E0 05 2F 01 11 03 XX 00 00     $^

$^BUTTON:退出
$^REQ00:7E0 04 2F 01 11 00 00 00 00     $^

$^DSP:碳罐控制阀控制->%
$^TIP:整车上ON档电 
$^TIP:请输入测试值(范围:0~100) 
$^IN_F:y=x1*255/100;
$^RANGE:0,100
;----------------------------------------------------------------------------------------------------

$^ 02.燃油泵控制 
$^TYPE0
$^BUTTON:打开 
$^REQ00:7E0 05 2F 01 12 03 FF 00 00     $^

$^BUTTON:关闭 
$^REQ00:7E0 05 2F 01 12 03 00 00 00     $^

$^BUTTON:退出 
$^REQ00:7E0 04 2F 01 12 00 00 00 00     $^

$^TIP:1.发动机工作中 2.车速为0,车速传感器无故障 
;----------------------------------------------------------------------------------------------------

$^ 03.空调离合器控制 
$^TYPE0
$^BUTTON:打开 
$^REQ00:7E0 05 2F 01 15 03 FF 00 00     $^

$^BUTTON:关闭 
$^REQ00:7E0 05 2F 01 15 03 00 00 00     $^

$^BUTTON:退出 
$^REQ00:7E0 04 2F 01 15 00 00 00 00     $^

$^TIP:1.整车上ON档电 2.发动机停止工作 
;----------------------------------------------------------------------------------------------------

$^ 04.车辆立即维修(SVS)指示灯控制 
$^TYPE0
$^BUTTON:打开 
$^REQ00:7E0 05 2F 01 18 03 FF 00 00     $^

$^BUTTON:关闭 
$^REQ00:7E0 05 2F 01 18 03 00 00 00     $^

$^BUTTON:退出 
$^REQ00:7E0 04 2F 01 18 00 00 00 00     $^

$^TIP:整车上ON档电 
;----------------------------------------------------------------------------------------------------

$^ 05.禁用燃油喷射控制 
$^IN  REQ00:7E0 02 10 03 00 00 00 00 00     $^IN  

$^TYPE0
$^BUTTON:禁止#1缸喷射 
$^REQ00:7E0 06 2F 01 20 03 FF 01 00     $^
$^REQ01:7E0 06 2F 01 20 03 FF 02 00     $^
$^REQ02:7E0 06 2F 01 20 03 FF 03 00     $^
$^REQ03:7E0 06 2F 01 20 03 FF 04 00     $^
$^REQ04:7E0 06 2F 01 20 03 00 01 00     $^

$^BUTTON:禁止#2缸喷射 
$^REQ00:7E0 06 2F 01 20 03 FF 01 00     $^
$^REQ01:7E0 06 2F 01 20 03 FF 02 00     $^
$^REQ02:7E0 06 2F 01 20 03 FF 03 00     $^
$^REQ03:7E0 06 2F 01 20 03 FF 04 00     $^
$^REQ04:7E0 06 2F 01 20 03 00 02 00     $^

$^BUTTON:禁止#3缸喷射 
$^REQ00:7E0 06 2F 01 20 03 FF 01 00     $^
$^REQ01:7E0 06 2F 01 20 03 FF 02 00     $^
$^REQ02:7E0 06 2F 01 20 03 FF 03 00     $^
$^REQ03:7E0 06 2F 01 20 03 FF 04 00     $^
$^REQ04:7E0 06 2F 01 20 03 00 03 00     $^

$^BUTTON:禁止#4缸喷射 
$^REQ00:7E0 06 2F 01 20 03 FF 01 00     $^
$^REQ01:7E0 06 2F 01 20 03 FF 02 00     $^
$^REQ02:7E0 06 2F 01 20 03 FF 03 00     $^
$^REQ03:7E0 06 2F 01 20 03 FF 04 00     $^
$^REQ04:7E0 06 2F 01 20 03 00 04 00     $^

$^BUTTON:启动#1缸喷射 
$^REQ00:7E0 06 2F 01 20 03 FF 01 00     $^

$^BUTTON:启动#2缸喷射 
$^REQ00:7E0 06 2F 01 20 03 FF 02 00     $^

$^BUTTON:启动#3缸喷射 
$^REQ00:7E0 06 2F 01 20 03 FF 03 00     $^

$^BUTTON:启动#4缸喷射 
$^REQ00:7E0 06 2F 01 20 03 FF 04 00     $^

$^BUTTON:退出 
$^REQ00:7E0 04 2F 01 20 00 00 00 00     $^

$^TIP:1.发动机工作中 2.车速为0,车速传感器无故障 3.禁止同时关闭2个或以上喷油器 
;----------------------------------------------------------------------------------------------------

$^ 06.怠速转速控制-短期调整 
$^IN  REQ00:7E0 02 10 03 00 00 00 00 00     $^IN  

 $^TYPE:2
$^BUTTON:输入
$^REQ00:7E0 05 2F 01 24 03 XX 00 00     $^

$^BUTTON:退出
$^REQ00:7E0 04 2F 01 24 00 00 00 00     $^

$^DSP:怠速转速控制-短期调整
$^TIP:1.发动机工作时短期调整需低于1000转/分,停止工作时无限制 
$^TIP:请输入测试值(范围:500~2500) 
$^IN_F:y=((x1<<8)+x2)/10;
$^RANGE:500,2500
;----------------------------------------------------------------------------------------------------

$^ 07.怠速转速控制-长期调整 
$^IN  REQ00:7E0 02 10 03 00 00 00 00 00     $^IN  

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

$^ 08.制动真空泵控制 
$^TYPE0
$^BUTTON:打开 
$^REQ00:7E0 05 2F 01 FB 03 FF 00 00     $^

$^BUTTON:关闭 
$^REQ00:7E0 05 2F 01 FB 03 00 00 00     $^

$^BUTTON:退出 
$^REQ00:7E0 04 2F 01 FB 00 00 00 00     $^

$^TIP:整车上ON档电,发动机停止工作 
;----------------------------------------------------------------------------------------------------

$^ 09.冷却液循环泵控制 
$^TYPE0
$^BUTTON:打开 
$^REQ00:7E0 05 2F 01 FC 03 FF 00 00     $^

$^BUTTON:关闭 
$^REQ00:7E0 05 2F 01 FC 03 00 00 00     $^

$^BUTTON:退出 
$^REQ00:7E0 04 2F 01 FC 00 00 00 00     $^

$^TIP:整车上ON档电,发动机停止工作 
;----------------------------------------------------------------------------------------------------

$^ 10.涡轮增压旁通阀控制 
$^TYPE0
$^BUTTON:打开 
$^REQ00:7E0 05 2F 01 FD 03 FF 00 00     $^

$^BUTTON:关闭 
$^REQ00:7E0 05 2F 01 FD 03 00 00 00     $^

$^BUTTON:退出 
$^REQ00:7E0 04 2F 01 FD 00 00 00 00     $^

$^TIP:整车上ON档电,发动机停止工作 
;----------------------------------------------------------------------------------------------------

$^ 11.无极风扇控制 
$^IN  REQ00:7E0 02 10 03 00 00 00 00 00     $^IN  

 $^TYPE:2
$^BUTTON:输入
$^REQ00:7E0 05 2F 01 FE 03 XX 00 00     $^

$^BUTTON:退出
$^REQ00:7E0 04 2F 01 FE 00 00 00 00     $^

$^DSP:无极风扇控制->%
$^TIP:整车上ON档电,发动机停止工作 
$^TIP:请输入测试值(范围:0~100) 
$^IN_F:y=x1*255/100;
$^RANGE:0,100
;----------------------------------------------------------------------------------------------------

$^ 12.增压压力限制阀控制 
$^IN  REQ00:7E0 02 10 03 00 00 00 00 00     $^IN  

 $^TYPE:2
$^BUTTON:输入
$^REQ00:7E0 05 2F 02 00 03 XX 00 00     $^

$^BUTTON:退出
$^REQ00:7E0 04 2F 02 00 00 00 00 00     $^

$^DSP:增压压力限制阀控制->%
$^TIP:整车上ON档电,发动机停止工作 
$^TIP:请输入测试值(范围:0~100) 
$^IN_F:y=x1*255/100;
$^RANGE:0,100
;----------------------------------------------------------------------------------------------------

$^ 13.节气门开度控制 
$^IN  REQ00:7E0 02 10 03 00 00 00 00 00     $^IN  

 $^TYPE:2
$^BUTTON:输入
$^REQ00:7E0 05 2F 02 02 03 XX 00 00     $^

$^BUTTON:退出
$^REQ00:7E0 04 2F 02 02 00 00 00 00     $^

$^DSP:节气门开度控制->%
$^TIP:整车上ON档电,发动机停止工作 
$^TIP:请输入测试值(范围:0~100) 
$^IN_F:y=x1*255/100;
$^RANGE:0,100
;----------------------------------------------------------------------------------------------------

$^ 14.清除修正值 
$^TYPE0
$^BUTTON:清除点火提前角长期修正 
$^REQ00:7E0 05 2F 02 03 03 01 00 00     $^

$^BUTTON:清除燃油长期修正值 
$^REQ00:7E0 05 2F 02 03 03 02 00 00     $^

$^BUTTON:清除怠速长期修正 
$^REQ00:7E0 05 2F 02 03 03 03 00 00     $^

$^BUTTON:清除所有修正值 
$^REQ00:7E0 05 2F 02 03 03 FF 00 00     $^

$^TIP:整车上ON档电 
;----------------------------------------------------------------------------------------------------

$^ 15.坡度传感器自学习控制 
$^TYPE0
$^BUTTON:打开 
$^REQ00:7E0 05 2F 02 04 03 FF 00 00     $^

$^BUTTON:关闭 
$^REQ00:7E0 05 2F 02 04 03 00 00 00     $^

$^BUTTON:退出 
$^REQ00:7E0 04 2F 02 04 00 00 00 00     $^

$^TIP:1.整车上ON档电 2.发动机停止工作 3.车辆处于校正过的水平路面 
;----------------------------------------------------------------------------------------------------

$^ 16.巡航开关灯控制 
$^TYPE0
$^BUTTON:打开 
$^REQ00:7E0 05 2F 02 09 03 FF 00 00     $^

$^BUTTON:关闭 
$^REQ00:7E0 05 2F 02 09 03 00 00 00     $^

$^BUTTON:退出 
$^REQ00:7E0 04 2F 02 09 00 00 00 00     $^

$^TIP:1.整车上ON档电 2.发动机停止工作 
;----------------------------------------------------------------------------------------------------

$^ 17.巡航状态灯控制 
$^TYPE0
$^BUTTON:打开 
$^REQ00:7E0 05 2F 02 0A 03 FF 00 00     $^

$^BUTTON:关闭 
$^REQ00:7E0 05 2F 02 0A 03 00 00 00     $^

$^BUTTON:退出 
$^REQ00:7E0 04 2F 02 0A 00 00 00 00     $^

$^TIP:1.整车上ON档电 2.发动机停止工作 
;----------------------------------------------------------------------------------------------------

$^ 18.巡航车速设定 
$^IN  REQ00:7E0 02 10 03 00 00 00 00 00     $^IN  

 $^TYPE:2
$^BUTTON:输入
$^REQ00:7E0 05 2F 02 0B 03 XX 00 00     $^

$^BUTTON:退出
$^REQ00:7E0 04 2F 02 0B 00 00 00 00     $^

$^DSP:巡航车速设定->km/h
$^TIP:1.发动机工作中,车辆行驶中 2.巡航功能开 3.车辆处于巡航状态 
$^TIP:请输入测试值(范围:40~160) 
$^IN_F:y=x1;
$^RANGE:40,160
;----------------------------------------------------------------------------------------------------

$^ 19.齿讯学习控制 
$^TYPE0
$^BUTTON:打开 
$^REQ00:7E0 05 2F 02 12 03 FF 00 00     $^

$^BUTTON:关闭 
$^REQ00:7E0 05 2F 02 12 03 00 00 00     $^

$^BUTTON:退出 
$^REQ00:7E0 04 2F 02 12 00 00 00 00     $^

$^TIP:1.发动机启动中 2.整车P档位 3.快踩油门到最大并保持住,发动机转速大概会在1300转/分-3800转/分之间进行2-5个循环 4.最后在1200转/分附近趋于稳定,此时自学习完成,松开油门踏板 
;----------------------------------------------------------------------------------------------------

30帧:

  $FC REQ000:7E0 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
