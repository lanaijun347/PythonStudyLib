
    车型ID：2106

    模拟：协议模拟-->2106

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

  $*$*DTC/ae020000_2BYTE


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

  $%  000:硬件编号:                       $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19);
  $%  001:软件编号:                       $%    $%  ANS001.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  002:软件版本:                       $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%.2d.%.2d],(x1*256+x2)/10000,((x1*256+x2)%10000)/100,(x1*256+x2)%100);
  $%  003:软件日期:                       $%    $%  ANS002.BYTE006  $%  y=SPRINTF([20%d%s%d%s%d%s],x1,@0197,x2,@0198,x3,@0199);
  $%  004:修改次数:                       $%    $%  ANS002.BYTE009  $%  y=x1;
  $%  005:编程日期:                       $%    $%  ANS003.BYTE004  $%  y=SPRINTF([%02X %02X %02X %02X],x1,x2,x3,x4);
  $%  006:学习到的VIN(车辆识别码):        $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);

;******************************************************************************************************************************************************

读数据流: 

  $)  00.数据流
  $  00.数据流
  $  REQ000:7E0 03 22 F1 01 00 00 00 00       $  ANS000:7E8 03 22 F1 01 00 00 00 00
  $  REQ001:7E0 03 22 F1 06 00 00 00 00       $  ANS001:7E8 03 22 F1 06 00 00 00 00

  $  000.发动机转速                                  $    $  rpm          $    $  ANS000.BYTE036  $  y=((x1<<8)+x2)*1.0/4;
  $  001.电源电压                                    $    $  V            $    $  ANS000.BYTE035  $  y=x1*1.0/10;
  $  002.目标怠速(有补偿)                            $    $  rpm          $    $  ANS000.BYTE039  $  y=x1*10;
  $  003.进气压力                                    $    $  kPa          $    $  ANS000.BYTE046  $  y=x1;
  $  004.冷却液温度                                  $    $  degree C     $    $  ANS000.BYTE042  $  y=x1-40;
  $  005.散热器出口冷却液温度                        $    $  degree C     $    $  ANS000.BYTE119  $  y=x1-40;
  $  006.目标油压                                    $    $  bar          $    $  ANS000.BYTE108  $  y=x1;
  $  007.实际油压                                    $    $  bar          $    $  ANS000.BYTE110  $  y=x1;
  $  008.节气门开度                                  $    $  %            $    $  ANS000.BYTE055  $  y=((x1<<8)+x2)*1.0/10;
  $  009.节气门目标开度                              $    $  %            $    $  ANS000.BYTE049  $  y=((x1<<8)+x2)*1.0/10;
  $  010.充磁时间                                    $    $  毫秒         $    $  ANS000.BYTE063  $  y=x1*1.0/10;
  $  011.进气相位原始值                              $    $  °           $    $  ANS000.BYTE131  $  y=((x1<<8)+x2)-100;
  $  012.喷油脉宽                                    $    $  毫秒         $    $  ANS000.BYTE064  $  y=x1*1.0/10;
  $  013.进气流量                                    $    $  kg/h         $    $  ANS000.BYTE047  $  y=((x1<<8)+x2)*1.0/10;
  $  014.目标怠速(无补偿)                            $    $  rpm          $    $  ANS000.BYTE038  $  y=x1*10;
  $  015.车速                                        $    $  km/h         $    $  ANS000.BYTE040  $  y=x1;
  $  016.运行里程                                    $    $  km           $    $  ANS000.BYTE092  $  y=UINT(x1*0x1000000+x2*0x10000+x3*0x100+x4);
  $  017.运行时间                                    $    $  分钟         $    $  ANS000.BYTE096  $  y=UINT(x1*0x1000000+x2*0x10000+x3*0x100+x4);
  $  018.进气温度                                    $    $  degree C     $    $  ANS000.BYTE044  $  y=x1-40;
  $  019.增压气体温度                                $    $  degree C     $    $  ANS000.BYTE117  $  y=x1-40;
  $  020.目标增压压力                                $    $  kPa          $    $  ANS000.BYTE113  $  y=x1;
  $  021.实际增压压力                                $    $  kPa          $    $  ANS000.BYTE115  $  y=x1;
  $  022.目标进气相位                                $    $  °           $    $  ANS000.BYTE126  $  y=((x1<<8)+x2)-100;
  $  023.进气相位                                    $    $  °           $    $  ANS000.BYTE124  $  y=((x1<<8)+x2)-100;
  $  024.大气压力值                                  $    $  kPa          $    $  ANS000.BYTE120  $  y=x1;
  $  025.海拔校正                                    $    $  %            $    $  ANS000.BYTE121  $  y=x1*100*1.0/255;
  $  026.制动助力器压力                              $    $  kPa          $    $  ANS000.BYTE112  $  y=x1;
  $  027.点火提前角                                  $    $  °           $    $  ANS000.BYTE065  $  y=x1-50;
  $  028.空燃比                                      $    $  %            $    $  ANS000.BYTE128  $  y=x1*1.0/10;
  $  029.旁通气量                                    $    $               $    $  ANS000.BYTE129  $  y=(x1<<8)+x2;
  $  030.发电机励磁开度                              $    $  %            $    $  ANS000.BYTE144  $  y=x1*100*1.0/255;
  $  031.发电机目标电压                              $    $  V            $    $  ANS000.BYTE145  $  y=x1*1.0/10;
  $  032.发电机励磁电流限制                          $    $  A            $    $  ANS000.BYTE146  $  y=x1*1.0/10;
  $  033.机油温度                                    $    $  degree C     $    $  ANS000.BYTE147  $  y=x1-40;
  $  034.发电机实发电压                              $    $  V            $    $  ANS000.BYTE148  $  y=x1*1.0/10;
  $  035.发电机励磁电流                              $    $  A            $    $  ANS000.BYTE149  $  y=x1*1.0/10;
  $  036.发电机负荷响应时间                          $    $  秒           $    $  ANS000.BYTE150  $  y=x1;
  $  037.机油液位                                    $    $               $    $  ANS000.BYTE153  $  switxh(x1)0x00: y=@0899;0x01: y=@089a;0x02: y=@089b;0x03: y=@089c;0x04: y=@089d;0x05: y=@089e;0x06: y=@089f;0x07: y=@08a0;0x08: y=@08a1;0x09: y=@08a2;0x0A: y=@08a3;0x0B: y=@08a4;0x0C: y=@08a5;0x0D: y=@0027;default: y=@0001;
  $  038.爆震传感器1                                 $    $               $    $  ANS000.BYTE069  $  y=(x1<<8)+x2;
  $  039.1组氧传感器电压,传感器1(氧传感器1)          $    $  V            $    $  ANS000.BYTE081  $  y=x1*1.0/255;
  $  040.1组氧传感器电压,传感器2(氧传感器2)          $    $  V            $    $  ANS000.BYTE082  $  y=x1*1.0/255;
  $  041.1组氧传感器积分值(短期修正)                 $    $               $    $  ANS000.BYTE079  $  y=x1*1.0/128;
  $  042.1组氧传感器积分值(长期修正)                 $    $               $    $  ANS000.BYTE085  $  y=x1*1.0/128;
  $  043.1缸推迟点火爆震控制                         $    $  °           $    $  ANS000.BYTE073  $  y=x1*1.0/10;
  $  044.2缸推迟点火爆震控制                         $    $  °           $    $  ANS000.BYTE074  $  y=x1*1.0/10;
  $  045.3缸推迟点火爆震控制                         $    $  °           $    $  ANS000.BYTE075  $  y=x1*1.0/10;
  $  046.4缸推迟点火爆震控制                         $    $  °           $    $  ANS000.BYTE076  $  y=x1*1.0/10;
  $  047.无级风扇占空比                              $    $  %            $    $  ANS000.BYTE102  $  y=x1*100*1.0/255;
  $  048.增压压力限制阀占空比                        $    $  %            $    $  ANS000.BYTE122  $  y=x1*100*1.0/255;
  $  049.电子燃油泵占空比                            $    $  %            $    $  ANS000.BYTE123  $  y=x1*100*1.0/255;
  $  050.计算节气门位置                              $    $  %            $    $  ANS000.BYTE057  $  y=x1*100*1.0/255;
  $  051.节气门电机PWM(脉宽调制)                     $    $  %            $    $  ANS000.BYTE058  $  y=x1*100*1.0/255;
  $  052.碳罐阀占空比                                $    $  %            $    $  ANS000.BYTE062  $  y=x1*100*1.0/255;
  $  053.低压油压                                    $    $  bar          $    $  ANS000.BYTE158  $  y=x1*1.0/10;
  $  054.冷却液温度传感器                            $    $  V            $    $  ANS000.BYTE041  $  y=x1*1.0/51;
  $  055.进气温度传感器                              $    $  V            $    $  ANS000.BYTE043  $  y=x1*1.0/51;
  $  056.进气压力传感器                              $    $  V            $    $  ANS000.BYTE045  $  y=x1*1.0/51;
  $  057.节气门位置传感器1                           $    $  V            $    $  ANS000.BYTE051  $  y=((x1<<8)+x2)*1.0/13107;
  $  058.节气门位置传感器2                           $    $  V            $    $  ANS000.BYTE053  $  y=((x1<<8)+x2)*1.0/13107;
  $  059.增压压力传感器                              $    $  V            $    $  ANS000.BYTE114  $  y=x1*1.0/51;
  $  060.增压气体温度传感器                          $    $  V            $    $  ANS000.BYTE116  $  y=x1*1.0/51;
  $  061.散热器出口冷却液温度传感器                  $    $  V            $    $  ANS000.BYTE118  $  y=x1*1.0/51;
  $  062.油压传感器                                  $    $  V            $    $  ANS000.BYTE109  $  y=x1*1.0/51;
  $  063.低压油压传感器电压                          $    $  V            $    $  ANS000.BYTE159  $  y=x1*1.0/51;
  $  064.发动机启动禁止状态                          $    $               $    $  ANS000.BYTE018  $  if(x1&0x01) y=@04a0;else y=@0196;
  $  065.发动机启动命令                              $    $               $    $  ANS000.BYTE018  $  switxh(x1&0x06)0x00: y=@0003;0x02: y=@011a;0x04: y=@08a8;0x06: y=@0003;default: y=@0001;
  $  066.低压启动电池状态                            $    $               $    $  ANS000.BYTE018  $  switxh(x1&0x18)0x00: y=@002a;0x08: y=@002b;0x10: y=@002a;0x18: y=@0003;default: y=@0001;
  $  067.发动机启动超时次数                          $    $               $    $  ANS000.BYTE018  $  switxh(x1&0x60)0x00: y=@0078;0x20: y=@08a6;0x40: y=@08a7;0x60: y=@0003;default: y=@0001;
  $  068.真空泵控制回路#1                            $    $               $    $  ANS000.BYTE020  $  switxh(x1&0x06)0x00: y=@0606;0x02: y=@0214;0x04: y=@0078;0x06: y=@0003;default: y=@0001;
  $  069.真空泵控制回路#2                            $    $               $    $  ANS000.BYTE020  $  switxh(x1&0x18)0x00: y=@0606;0x08: y=@0214;0x10: y=@0078;0x18: y=@0003;default: y=@0001;
  $  070.真空泵泄露状态                              $    $               $    $  ANS000.BYTE020  $  switxh(x1&0x60)0x00: y=@0606;0x20: y=@08a9;0x40: y=@049a;0x60: y=@0078;default: y=@0001;
  $  071.低速风扇是否开启                            $    $               $    $  ANS000.BYTE023  $  if(x1&0x01) y=@0185;else y=@0186;
  $  072.高速风扇是否开启                            $    $               $    $  ANS000.BYTE023  $  if(x1&0x02) y=@0185;else y=@0186;
  $  073.风扇类型                                    $    $               $    $  ANS000.BYTE023  $  switxh(x1&0x0C)0x00: y=@0194;0x04: y=@0193;default: y=@007b;
  $  074.发动机稳态工况-点火电源开启                 $    $               $    $  ANS000.BYTE024  $  if(x1&0x01) y=@0185;else y=@0186;
  $  075.发动机稳态工况-主继电器工作                 $    $               $    $  ANS000.BYTE024  $  if(x1&0x02) y=@0185;else y=@0186;
  $  076.发动机稳态工况-燃油泵状态                   $    $               $    $  ANS000.BYTE024  $  if(x1&0x04) y=@001d;else y=@001e;
  $  077.发动机动态工况-节气门处于怠速位置           $    $               $    $  ANS000.BYTE025  $  if(x1&0x01) y=@0185;else y=@0186;
  $  078.发动机动态工况-节气门处于部分打开位置       $    $               $    $  ANS000.BYTE025  $  if(x1&0x02) y=@0185;else y=@0186;
  $  079.发动机动态工况-节气门处于全开位置           $    $               $    $  ANS000.BYTE025  $  if(x1&0x04) y=@0185;else y=@0186;
  $  080.发动机动态工况-激活减速断油                 $    $               $    $  ANS000.BYTE025  $  if(x1&0x08) y=@00f2;else y=@0181;
  $  081.发动机动态工况-激活加速加浓                 $    $               $    $  ANS000.BYTE025  $  if(x1&0x10) y=@00f2;else y=@0181;
  $  082.发动机动态工况-D档                          $    $               $    $  ANS000.BYTE025  $  if(x1&0x20) y=@0185;else y=@0186;
  $  083.发动机动态工况-R档                          $    $               $    $  ANS000.BYTE025  $  if(x1&0x40) y=@0185;else y=@0186;
  $  084.发动机动态工况-N档                          $    $               $    $  ANS000.BYTE025  $  if(x1&0x80) y=@0185;else y=@0186;
  $  085.氧传感器1信号                               $    $               $    $  ANS000.BYTE027  $  if(x1&0x01) y=@0180;else y=@017f;
  $  086.氧传感器2信号                               $    $               $    $  ANS000.BYTE027  $  if(x1&0x02) y=@0180;else y=@017f;
  $  087.氧传感器1加热                               $    $               $    $  ANS000.BYTE027  $  if(x1&0x10) y=@0183;else y=@0184;
  $  088.氧传感器2加热                               $    $               $    $  ANS000.BYTE027  $  if(x1&0x20) y=@0183;else y=@0184;
  $  089.发动机怠速-制动踏板状态                     $    $               $    $  ANS000.BYTE028  $  if(x1&0x02) y=@0118;else y=@0182;
  $  090.MIL(故障指示灯)激活                         $    $               $    $  ANS000.BYTE029  $  if(x1&0x01) y=@00f2;else y=@0181;
  $  091.MIL(故障指示灯)闪烁                         $    $               $    $  ANS000.BYTE029  $  if(x1&0x02) y=@0185;else y=@0186;
  $  092.SVS(系统维修指示灯)激活                     $    $               $    $  ANS000.BYTE029  $  if(x1&0x10) y=@00f2;else y=@0181;
  $  093.SVS(系统维修指示灯)闪烁                     $    $               $    $  ANS000.BYTE029  $  if(x1&0x20) y=@0185;else y=@0186;
  $  094.AT/扭矩请求-AT转换离合器激活                $    $               $    $  ANS000.BYTE032  $  if(x1&0x08) y=@00f2;else y=@0181;
  $  095.发动机状态-刹车开关激活                     $    $               $    $  ANS000.BYTE034  $  if(x1&0x01) y=@00f2;else y=@0181;
  $  096.发动机状态-刹车灯激活                       $    $               $    $  ANS000.BYTE034  $  if(x1&0x02) y=@00f2;else y=@0181;
  $  097.发动机状态-水泵继电器状态                   $    $               $    $  ANS000.BYTE034  $  if(x1&0x08) y=@001d;else y=@001e;
  $  098.发动机状态-涡轮增压旁通阀                   $    $               $    $  ANS000.BYTE034  $  if(x1&0x10) y=@001d;else y=@001e;
  $  099.发动机状态-防盗锁定状态                     $    $               $    $  ANS000.BYTE034  $  if(x1&0x20) y=@000a;else y=@0459;
  $  100.真空泵工作时间                              $    $  小时         $    $  ANS001.BYTE004  $  y=(x1<<8)+x2;

  $)  01.诊断实际检测率(IUPR)
  $  01.诊断实际检测率(IUPR)
  $  REQ000:7E0 03 22 F1 04 00 00 00 00       $  ANS000:7E8 03 22 F1 04 00 00 00 00

  $  000.一般监测条件满足次数                     $    $  次     $    $  ANS000.BYTE004  $  y=(x1<<8)+x2;
  $  001.点火循环次数                             $    $  次     $    $  ANS000.BYTE006  $  y=(x1<<8)+x2;
  $  002.三元催化器监测完成次数                   $    $  次     $    $  ANS000.BYTE008  $  y=(x1<<8)+x2;
  $  003.三元催化器监测条件满足次数               $    $  次     $    $  ANS000.BYTE010  $  y=(x1<<8)+x2;
  $  004.前氧传感器监测完成次数                   $    $  次     $    $  ANS000.BYTE012  $  y=(x1<<8)+x2;
  $  005.前氧传感器监测条件满足次数               $    $  次     $    $  ANS000.BYTE014  $  y=(x1<<8)+x2;
  $  006.VVT(可变气门正时)监测完成次数            $    $  次     $    $  ANS000.BYTE016  $  y=(x1<<8)+x2;
  $  007.VVT(可变气门正时)监测条件满足次数        $    $  次     $    $  ANS000.BYTE018  $  y=(x1<<8)+x2;
  $  008.EVAP(燃油蒸发系统)监测完成次数           $    $  次     $    $  ANS000.BYTE020  $  y=(x1<<8)+x2;
  $  009.EVAP(燃油蒸发系统)监测条件满足次数       $    $  次     $    $  ANS000.BYTE022  $  y=(x1<<8)+x2;
  $  010.后氧传感器监测完成次数                   $    $  次     $    $  ANS000.BYTE024  $  y=(x1<<8)+x2;
  $  011.后氧传感器监测条件满足次数               $    $  次     $    $  ANS000.BYTE026  $  y=(x1<<8)+x2;
  $  012.增压系统监测完成次数                     $    $  次     $    $  ANS000.BYTE028  $  y=(x1<<8)+x2;
  $  013.增压系统监测条件满足次数                 $    $  次     $    $  ANS000.BYTE030  $  y=(x1<<8)+x2;
  $  014.燃油系统监测完成次数                     $    $  次     $    $  ANS000.BYTE032  $  y=(x1<<8)+x2;
  $  015.燃油系统监测条件满足次数                 $    $  次     $    $  ANS000.BYTE034  $  y=(x1<<8)+x2;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7E0 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
