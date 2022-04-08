
    车型ID：0a31

    模拟：协议模拟-->0a31

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
			y=x1*256+x2;

  ANS000.BYTE04 控制故障码个数，从$#ANS000.BYTE5$#开始每$#4$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/0a310000_2BYTE


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="1"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7E0 04 14 FF FF FF 00 00 00       $$  ANS000:7E8 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7E0 03 22 F1 90 00 00 00 00       $%  ANS000:7E8 03 22 F1 90 00 00 00 00
  $%  REQ001:7E0 03 22 F1 94 00 00 00 00       $%  ANS001:7E8 03 22 F1 94 00 00 00 00
  $%  REQ002:7E0 03 22 F1 92 00 00 00 00       $%  ANS002:7E8 03 22 F1 92 00 00 00 00
  $%  REQ003:7E0 03 22 F1 95 00 00 00 00       $%  ANS003:7E8 03 22 F1 95 00 00 00 00
  $%  REQ004:7E0 03 22 F1 8B 00 00 00 00       $%  ANS004:7E8 03 22 F1 8B 00 00 00 00
  $%  REQ005:7E0 03 22 F1 99 00 00 00 00       $%  ANS005:7E8 03 22 F1 99 00 00 00 00

  $%  000:VIN:               $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  001:软件编号:          $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  002:硬件编号:          $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19);
  $%  003:软件版本号:        $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2);
  $%  004:生产日期:          $%    $%  ANS004.BYTE004  $%  y=SPRINTF([%02x%02x%s%02x%s%02x%s],x1,x2,@0038,x3,@0039,x4,@003a);
  $%  005:编程日期:          $%    $%  ANS005.BYTE004  $%  y=SPRINTF([%02x%02x%s%02x%s%02x%s],x1,x2,@0038,x3,@0039,x4,@003a);

;******************************************************************************************************************************************************

读数据流: 

  $)  00.普通数据流
  $  00.普通数据流
  $  REQ000:7E0 03 22 F1 01 00 00 00 00       $  ANS000:7E8 03 22 F1 01 00 00 00 00

  $  000.故障码数量                             $    $               $    $  ANS000.BYTE004  $  y=x;
  $  001.车速                                   $    $  Km/h         $    $  ANS000.BYTE040  $  y=x;
  $  002.发动机转速                             $    $  rpm          $    $  ANS000.BYTE036  $  y=(x1*256+x2)*0.25;
  $  003.目标怠速                               $    $  rpm          $    $  ANS000.BYTE039  $  y=x*10;
  $  004.电源电压                               $    $  V            $    $  ANS000.BYTE035  $  y=x*0.1;
  $  005.点火提前角                             $    $  °           $    $  ANS000.BYTE065  $  y=x-50;
  $  006.目标增压压力                           $    $  kPa          $    $  ANS000.BYTE113  $  y=x;
  $  007.进气压力                               $    $  kPa          $    $  ANS000.BYTE046  $  y=x;
  $  008.实际增压压力                           $    $  kPa          $    $  ANS000.BYTE115  $  y=x;
  $  009.进气流量                               $    $  kg/h         $    $  ANS000.BYTE047  $  y=0.1*(x1*256+x2);
  $  010.ETC(电子节气门)目标开度                $    $  %            $    $  ANS000.BYTE049  $  y=0.1*(x1*256+x2);
  $  011.ETC(电子节气门)实际开度                $    $  %            $    $  ANS000.BYTE055  $  y=0.1*(x1*256+x2);
  $  012.冷却液温度                             $    $  degree C     $    $  ANS000.BYTE042  $  y=x-40;
  $  013.散热器出口温度                         $    $  degree C     $    $  ANS000.BYTE119  $  y=x-40;
  $  014.进气温度                               $    $  degree C     $    $  ANS000.BYTE044  $  y=x-40;
  $  015.增压气体温度                           $    $  degree C     $    $  ANS000.BYTE117  $  y=x-40;
  $  016.加速踏板位置                           $    $  %            $    $  ANS000.BYTE105  $  y=0.1*(x1*256+x2);
  $  017.目标油压                               $    $  bar          $    $  ANS000.BYTE108  $  y=x;
  $  018.实际油压                               $    $  bar          $    $  ANS000.BYTE110  $  y=x;
  $  019.充磁时间                               $    $  ms           $    $  ANS000.BYTE063  $  y=x*0.1;
  $  020.喷油脉宽                               $    $  ms           $    $  ANS000.BYTE064  $  y=x*0.1;
  $  021.碳罐阀占空比                           $    $  %            $    $  ANS000.BYTE061  $  y=100*x/255;
  $  022.无极风扇占空比                         $    $  %            $    $  ANS000.BYTE102  $  y=100*x/255;
  $  023.交流发电机负荷                         $    $  %            $    $  ANS000.BYTE107  $  y=100*x/255;
  $  024.油压调节阀占空比                       $    $  %            $    $  ANS000.BYTE111  $  y=100*x/255;
  $  025.增压压力阀占空比                       $    $  %            $    $  ANS000.BYTE122  $  y=100*x/255;
  $  026.运行里程                               $    $  KM           $    $  ANS000.BYTE094  $  y=x1*256+x2;
  $  027.运行时间                               $    $  分钟         $    $  ANS000.BYTE098  $  y=x1*256+x2;
  $  028.大气压力值                             $    $  kPa          $    $  ANS000.BYTE120  $  y=x;
  $  029.空调压力                               $    $  Mpa          $    $  ANS000.BYTE067  $  y=3F(0.001*(x1*256+x2));
  $  030.爆震传感器                             $    $               $    $  ANS000.BYTE069  $  y=x1*256+x2;
  $  031.ETC(电子节气门)电机PWM(脉宽调制)       $    $  %            $    $  ANS000.BYTE048  $  y=100*x/255;
  $  032.氧传感器1                              $    $  V            $    $  ANS000.BYTE081  $  y=1.0*x/255;
  $  033.氧传感器2                              $    $  V            $    $  ANS000.BYTE082  $  y=1.0*x/255;
  $  034.ETC(电子节气门)位置传感器1             $    $  V            $    $  ANS000.BYTE051  $  y=5.0*(x1*256+x2)/65535;
  $  035.ETC(电子节气门)位置传感器2             $    $  V            $    $  ANS000.BYTE053  $  y=5.0*(x1*256+x2)/65535;
  $  036.进气压力传感器                         $    $  V            $    $  ANS000.BYTE045  $  y=5.0*x/255;
  $  037.进气温度传感器                         $    $  V            $    $  ANS000.BYTE043  $  y=5.0*x/255;
  $  038.冷却液温度传感器                       $    $  V            $    $  ANS000.BYTE041  $  y=5.0*x/255;
  $  039.增压压力传感器                         $    $  V            $    $  ANS000.BYTE114  $  y=5.0*x/255;
  $  040.增压气体温度传感器                     $    $  V            $    $  ANS000.BYTE116  $  y=5.0*x/255;
  $  041.散热器出口温度传感器                   $    $  V            $    $  ANS000.BYTE118  $  y=5.0*x/255;
  $  042.油压传感器                             $    $  V            $    $  ANS000.BYTE109  $  y=5.0*x/255;
  $  043.空调压力传感器                         $    $  V            $    $  ANS000.BYTE066  $  y=5.0*x/255;
  $  044.加速踏板1信号                          $    $  V            $    $  ANS000.BYTE103  $  y=5.0*x/255;
  $  045.加速踏板2信号                          $    $  V            $    $  ANS000.BYTE104  $  y=5.0*x/255;
  $  046.1缸推迟点火爆震控制                    $    $  °           $    $  ANS000.BYTE073  $  y=0.1*x;
  $  047.2缸推迟点火爆震控制                    $    $  °           $    $  ANS000.BYTE074  $  y=0.1*x;
  $  048.3缸推迟点火爆震控制                    $    $  °           $    $  ANS000.BYTE075  $  y=0.1*x;
  $  049.4缸推迟点火爆震控制                    $    $  °           $    $  ANS000.BYTE076  $  y=0.1*x;
  $  050.海拔校正                               $    $  %            $    $  ANS000.BYTE121  $  y=100*x/255;
  $  051.实际进气相位                           $    $  °           $    $  ANS000.BYTE124  $  y=(x1*256+x2)-100;
  $  052.目标进气相位                           $    $  °           $    $  ANS000.BYTE126  $  y=x-100;
  $  053.燃油短期修正值                         $    $               $    $  ANS000.BYTE079  $  y=1.99*x/255;
  $  054.燃油长期修正值                         $    $               $    $  ANS000.BYTE083  $  y=1.99*x/255;
  $  055.空燃比                                 $    $               $    $  ANS000.BYTE128  $  y=0.1*x;
  $  056.怠速流量控制                           $    $               $    $  ANS000.BYTE129  $  y=x1*256+x2;
  $  057.凸轮轴相位                             $    $  °           $    $  ANS000.BYTE131  $  y=(x1*256+x2)-100;
  $  058.倾角信息                               $    $  °           $    $  ANS000.BYTE133  $  if(x>0xF0) y=@0005;else y=0.5*x-60.0;
  $  059.制动助力器压力                         $    $  kPa          $    $  ANS000.BYTE112  $  y=x;
  $  060.巡航设定车速                           $    $  Km/h         $    $  ANS000.BYTE142  $  y=x;
  $  061.巡航开关电压                           $    $  V            $    $  ANS000.BYTE143  $  y=5.0*x/255;
  $  062.机油温度                               $    $  degree C     $    $  ANS000.BYTE147  $  y=x-40;
  $  063.发动机实发电压                         $    $  V            $    $  ANS000.BYTE148  $  y=x*0.1;
  $  064.发动机励磁电流                         $    $  A            $    $  ANS000.BYTE149  $  y=x*0.1;
  $  065.发动机负载响应时间                     $    $  s            $    $  ANS000.BYTE150  $  y=x;
  $  066.机油液位                               $    $               $    $  ANS000.BYTE153  $  if(x==0x00) y=@029e;else if(x==0x01) y=@029f;else if(x==0x02) y=@02a0;else if(x==0x03) y=@02a1;else if(x==0x04) y=@02a2;else if(x==0x05) y=@02a3;else if(x==0x06) y=@02a4;else if(x==0x07) y=@02a5;else if(x==0x08) y=@02a6;else if(x==0x09) y=@02a7;else if(x==0x0A) y=@03ad;else if(x==0x0B) y=@03ae;else if(x==0x0C) y=@0045;else if(x==0x0D) y=@03af;else y=@010e;

  $)  01.发动机稳态工况
  $  01.发动机稳态工况
  $  REQ000:7E0 03 22 F1 01 00 00 00 00       $  ANS000:7E8 03 22 F1 01 00 00 00 00

  $  000.点火电源开启       $    $       $    $  ANS000.BYTE024  $  if(x&0x01) y=@001b;else y=@001c;
  $  001.主继电器工作       $    $       $    $  ANS000.BYTE024  $  if(x&0x02) y=@001b;else y=@001c;
  $  002.燃油泵状态         $    $       $    $  ANS000.BYTE024  $  if(x&0x08) y=@0001; else y=@0000;

  $)  02.发动机动态工况
  $  02.发动机动态工况
  $  REQ000:7E0 03 22 F1 01 00 00 00 00       $  ANS000:7E8 03 22 F1 01 00 00 00 00

  $  000.节气门处于怠速位置           $    $       $    $  ANS000.BYTE025  $  if(x&0x01) y=@001b;else y=@001c;
  $  001.节气门处于部分打开位置       $    $       $    $  ANS000.BYTE025  $  if(x&0x02) y=@001b;else y=@001c;
  $  002.节气门处于全开位置           $    $       $    $  ANS000.BYTE025  $  if(x&0x04) y=@001b;else y=@001c;
  $  003.激活减速断油                 $    $       $    $  ANS000.BYTE025  $  if(x&0x08) y=@000e;else y=@000f;
  $  004.激活加速加浓                 $    $       $    $  ANS000.BYTE025  $  if(x&0x10) y=@000e;else y=@000f;
  $  005.档位状态                     $    $       $    $  ANS000.BYTE025  $  if(x&0x20) y=@0076;else if(x&0x40) y=@0074;else if(x&0x80) y=@0075;else y=@0108;

  $)  03.指示灯SVS/MIL
  $  03.指示灯SVS/MIL
  $  REQ000:7E0 03 22 F1 01 00 00 00 00       $  ANS000:7E8 03 22 F1 01 00 00 00 00

  $  000.MIL(故障指示灯)激活           $    $       $    $  ANS000.BYTE029  $  if(x&0x01) y=@000e;else y=@000f;
  $  001.MIL(故障指示灯)闪烁           $    $       $    $  ANS000.BYTE029  $  if(x&0x02) y=@001b;else y=@001c;
  $  002.SVS(系统维修指示灯)激活       $    $       $    $  ANS000.BYTE029  $  if(x&0x10) y=@000e;else y=@000f;
  $  003.SVS(系统维修指示灯)闪烁       $    $       $    $  ANS000.BYTE029  $  if(x&0x20) y=@001b;else y=@001c;

  $)  04.氧传感器
  $  04.氧传感器
  $  REQ000:7E0 03 22 F1 01 00 00 00 00       $  ANS000:7E8 03 22 F1 01 00 00 00 00

  $  000.氧传感器1信号        $    $       $    $  ANS000.BYTE027  $  if(x&0x01) y=@001d;else y=@001e;
  $  001.氧传感器2信号        $    $       $    $  ANS000.BYTE027  $  if(x&0x02) y=@001d;else y=@001e;
  $  002.氧传感器1加热        $    $       $    $  ANS000.BYTE027  $  if(x&0x10) y=@00be;else y=@00bf;
  $  003.氧传感器2加热        $    $       $    $  ANS000.BYTE027  $  if(x&0x20) y=@00be;else y=@00bf;
  $  004.制动踏板状态         $    $       $    $  ANS000.BYTE028  $  if(x&0x02) y=@0003;else y=@00c0;
  $  005.防盗锁定状态         $    $       $    $  ANS000.BYTE034  $  if(x&0x20) y=@0067;else y=@00bd;
  $  006.刹车开关激活         $    $       $    $  ANS000.BYTE034  $  if(x&0x01) y=@000e;else y=@000f;
  $  007.刹车灯激活           $    $       $    $  ANS000.BYTE034  $  if(x&0x02) y=@000e;else y=@000f;
  $  008.水泵继电器状态       $    $       $    $  ANS000.BYTE034  $  if(x&0x04) y=@0001;else y=@0000;
  $  009.进气旁通阀           $    $       $    $  ANS000.BYTE034  $  if(x&0x08) y=@0001; else y=@0000;

  $)  05.发动机冷却系统
  $  05.发动机冷却系统
  $  REQ000:7E0 03 22 F1 01 00 00 00 00       $  ANS000:7E8 03 22 F1 01 00 00 00 00

  $  000.低速风扇开启       $    $       $    $  ANS000.BYTE023  $  if(x&0x01) y=@001b;else y=@001c;
  $  001.高速风扇开启       $    $       $    $  ANS000.BYTE023  $  if(x&0x02) y=@001b;else y=@001c;
  $  002.风扇类型           $    $       $    $  ANS000.BYTE023  $  if(x&0x04) y=@02ab;else if(x&0x08) y=@010e;else y=@0023;

  $)  06.整车信息
  $  06.整车信息
  $  REQ000:7E0 03 22 F1 01 00 00 00 00       $  ANS000:7E8 03 22 F1 01 00 00 00 00

  $  000.车型状态               $    $       $    $  ANS000.BYTE020  $  if(x&0x01) y=@0256;else y=@0255;
  $  001.真空泵控制回路1#       $    $       $    $  ANS000.BYTE020  $  if(x&0x02) y=@00cf;else if(x&0x04) y=@0045;else y=@00ce;
  $  002.真空泵控制回路2#       $    $       $    $  ANS000.BYTE020  $  if(x&0x08) y=@00cf;else if(x&0x10) y=@0045;else y=@00ce;
  $  003.真空泵泄露状态         $    $       $    $  ANS000.BYTE020  $  if((x>=0x20)&&(x<0x40)) y=@00d0;else if((x>=0x40)&&(x<0x60)) y=@00d1;else if((x>=0x60)&&(x<0x80)) y=@0045;else y=@00ce;

  $)  07.发动机启动前相关条件
  $  07.发动机启动前相关条件
  $  REQ000:7E0 03 22 F1 01 00 00 00 00       $  ANS000:7E8 03 22 F1 01 00 00 00 00

  $  000.发动机启动禁止           $    $       $    $  ANS000.BYTE018  $  if(x&0x01) y=@029d;else y=@004d;
  $  001.发动机启动命令           $    $       $    $  ANS000.BYTE018  $  if(x&0x02) y=@0066;else if(x&0x04) y=@0107;else y=@003f;
  $  002.发动机启动超时次数       $    $       $    $  ANS000.BYTE018  $  if(x&0x20) y=@00cc;else if(x&0x40) y=@00cd;else y=@0045;

;******************************************************************************************************************************************************

动作测试:

$^ 00.故障指示灯 
$^IN  REQ00:7E0 04 2F 01 10 04 55 55 55     $^IN  

$^TYPE0
$^BUTTON:打开 
$^REQ00:7E0 05 2F 01 10 03 FF 55 55     $^

$^BUTTON:关闭 
$^REQ00:7E0 05 2F 01 10 03 00 55 55     $^

$^BUTTON:退出 
$^REQ00:7E0 04 2F 01 10 00 55 55 55     $^

;----------------------------------------------------------------------------------------------------

$^ 01.燃油泵继电器 
$^IN  REQ00:7E0 04 2F 01 12 04 55 55 55     $^IN  

$^TYPE0
$^BUTTON:打开 
$^REQ00:7E0 05 2F 01 12 03 FF 55 55     $^

$^BUTTON:关闭 
$^REQ00:7E0 05 2F 01 12 03 00 55 55     $^

$^BUTTON:退出 
$^REQ00:7E0 04 2F 01 12 00 55 55 55     $^

;----------------------------------------------------------------------------------------------------

$^ 02.空调离合继电器 
$^IN  REQ00:7E0 04 2F 01 15 04 55 55 55     $^IN  

$^TYPE0
$^BUTTON:打开 
$^REQ00:7E0 05 2F 01 15 03 FF 55 55     $^

$^BUTTON:关闭 
$^REQ00:7E0 05 2F 01 15 03 00 55 55     $^

$^BUTTON:退出 
$^REQ00:7E0 04 2F 01 15 00 55 55 55     $^

;----------------------------------------------------------------------------------------------------

$^ 03.立即维修指示灯 
$^IN  REQ00:7E0 04 2F 01 18 04 55 55 55     $^IN  

$^TYPE0
$^BUTTON:打开 
$^REQ00:7E0 05 2F 01 18 03 FF 55 55     $^

$^BUTTON:关闭 
$^REQ00:7E0 05 2F 01 18 03 00 55 55     $^

$^BUTTON:退出 
$^REQ00:7E0 04 2F 01 18 00 55 55 55     $^

;----------------------------------------------------------------------------------------------------

$^ 04.禁用喷油嘴1 
$^IN  REQ00:7E0 06 2F 01 20 04 55 01 55     $^IN  

$^TYPE0
$^BUTTON:打开 
$^REQ00:7E0 06 2F 01 20 03 FF 01 55     $^

$^BUTTON:关闭 
$^REQ00:7E0 06 2F 01 20 03 00 01 55     $^

$^BUTTON:退出 
$^REQ00:7E0 06 2F 01 20 00 55 01 55     $^

;----------------------------------------------------------------------------------------------------

$^ 05.禁用喷油嘴2 
$^IN  REQ00:7E0 06 2F 01 20 04 55 02 55     $^IN  

$^TYPE0
$^BUTTON:打开 
$^REQ00:7E0 06 2F 01 20 03 FF 02 55     $^

$^BUTTON:关闭 
$^REQ00:7E0 06 2F 01 20 03 00 02 55     $^

$^BUTTON:退出 
$^REQ00:7E0 06 2F 01 20 00 55 02 55     $^

;----------------------------------------------------------------------------------------------------

$^ 06.禁用喷油嘴3 
$^IN  REQ00:7E0 06 2F 01 20 04 55 03 55     $^IN  

$^TYPE0
$^BUTTON:打开 
$^REQ00:7E0 06 2F 01 20 03 FF 03 55     $^

$^BUTTON:关闭 
$^REQ00:7E0 06 2F 01 20 03 00 03 55     $^

$^BUTTON:退出 
$^REQ00:7E0 06 2F 01 20 00 55 03 55     $^

;----------------------------------------------------------------------------------------------------

$^ 07.禁用喷油嘴4 
$^IN  REQ00:7E0 06 2F 01 20 04 55 04 55     $^IN  

$^TYPE0
$^BUTTON:打开 
$^REQ00:7E0 06 2F 01 20 03 FF 04 55     $^

$^BUTTON:关闭 
$^REQ00:7E0 06 2F 01 20 03 00 04 55     $^

$^BUTTON:退出 
$^REQ00:7E0 06 2F 01 20 00 55 04 55     $^

;----------------------------------------------------------------------------------------------------

$^ 08.制动真空泵 
$^IN  REQ00:7E0 04 2F 01 FB 04 55 55 55     $^IN  

$^TYPE0
$^BUTTON:打开 
$^REQ00:7E0 05 2F 01 FB 03 FF 55 55     $^

$^BUTTON:关闭 
$^REQ00:7E0 05 2F 01 FB 03 00 55 55     $^

$^BUTTON:退出 
$^REQ00:7E0 04 2F 01 FB 00 55 55 55     $^

;----------------------------------------------------------------------------------------------------

$^ 09.冷却液循环泵 
$^IN  REQ00:7E0 04 2F 01 FC 04 55 55 55     $^IN  

$^TYPE0
$^BUTTON:打开 
$^REQ00:7E0 05 2F 01 FC 03 FF 55 55     $^

$^BUTTON:关闭 
$^REQ00:7E0 05 2F 01 FC 03 00 55 55     $^

$^BUTTON:退出 
$^REQ00:7E0 04 2F 01 FC 00 55 55 55     $^

;----------------------------------------------------------------------------------------------------

$^ 10.涡轮增压旁通阀 
$^IN  REQ00:7E0 04 2F 01 FD 04 55 55 55     $^IN  

$^TYPE0
$^BUTTON:打开 
$^REQ00:7E0 05 2F 01 FD 03 FF 55 55     $^

$^BUTTON:关闭 
$^REQ00:7E0 05 2F 01 FD 03 00 55 55     $^

$^BUTTON:退出 
$^REQ00:7E0 04 2F 01 FD 00 55 55 55     $^

;----------------------------------------------------------------------------------------------------

$^ 11.冷却风扇继电器1 
$^IN  REQ00:7E0 04 2F 01 13 04 55 55 55     $^IN  

$^TYPE0
$^BUTTON:打开 
$^REQ00:7E0 05 2F 01 13 03 FF 55 55     $^

$^BUTTON:关闭 
$^REQ00:7E0 05 2F 01 13 03 00 55 55     $^

$^BUTTON:退出 
$^REQ00:7E0 04 2F 01 13 00 55 55 55     $^

;----------------------------------------------------------------------------------------------------

$^ 12.冷却风扇继电器2 
$^IN  REQ00:7E0 04 2F 01 14 04 55 55 55     $^IN  

$^TYPE0
$^BUTTON:打开 
$^REQ00:7E0 05 2F 01 14 03 FF 55 55     $^

$^BUTTON:关闭 
$^REQ00:7E0 05 2F 01 14 03 00 55 55     $^

$^BUTTON:退出 
$^REQ00:7E0 04 2F 01 14 00 55 55 55     $^

;----------------------------------------------------------------------------------------------------

$^ 13.巡航开关灯 
$^IN  REQ00:7E0 04 2F 02 09 04 55 55 55     $^IN  

$^TYPE0
$^BUTTON:打开 
$^REQ00:7E0 05 2F 02 09 03 FF 55 55     $^

$^BUTTON:关闭 
$^REQ00:7E0 05 2F 02 09 03 00 55 55     $^

$^BUTTON:退出 
$^REQ00:7E0 04 2F 02 09 00 55 55 55     $^

;----------------------------------------------------------------------------------------------------

$^ 14.巡航状态灯 
$^IN  REQ00:7E0 04 2F 02 0A 04 55 55 55     $^IN  

$^TYPE0
$^BUTTON:打开 
$^REQ00:7E0 05 2F 02 0A 03 FF 55 55     $^

$^BUTTON:关闭 
$^REQ00:7E0 05 2F 02 0A 03 00 55 55     $^

$^BUTTON:退出 
$^REQ00:7E0 04 2F 02 0A 00 55 55 55     $^

;----------------------------------------------------------------------------------------------------

$^ 15.碳罐控制阀 
 $^TYPE:2
$^BUTTON:测试值
$^REQ00:7E0 05 2F 01 11 03 XX 55 55     $^

$^BUTTON:退出
$^REQ00:7E0 04 2F 01 11 00 55 55 55     $^

$^DSP:碳罐控制阀
$^TIP:请输入测试值,范围:0~100 
$^IN_F:y=x*2.54;
$^RANGE:0,100
;----------------------------------------------------------------------------------------------------

$^ 16.怠速转速控制 
 $^TYPE:2
$^BUTTON:测试值
$^REQ00:7E0 05 2F 01 24 08 XX 55 55     $^

$^BUTTON:退出
$^REQ00:7E0 04 2F 01 24 00 55 55 55     $^

$^DSP:怠速转速控制->rpm
$^TIP:请输入测试值,范围:0~2000 
$^IN_F:y=(x1*256+x2)/10;
$^RANGE:0,2000
;----------------------------------------------------------------------------------------------------

$^ 17.无极风扇控制 
 $^TYPE:2
$^BUTTON:测试值
$^REQ00:7E0 05 2F 01 FE 03 XX 55 55     $^

$^BUTTON:退出
$^REQ00:7E0 04 2F 01 FE 00 55 55 55     $^

$^DSP:无极风扇控制
$^TIP:请输入测试值,范围:0~100 
$^IN_F:y=x*2.54;
$^RANGE:0,100
;----------------------------------------------------------------------------------------------------

$^ 18.节气门开度控制 
 $^TYPE:2
$^BUTTON:测试值
$^REQ00:7E0 05 2F 02 02 03 XX 55 55     $^

$^BUTTON:退出
$^REQ00:7E0 04 2F 02 02 00 55 55 55     $^

$^DSP:节气门开度控制->%
$^TIP:请输入测试值,范围:0~100 
$^IN_F:y=x*2.54;
$^RANGE:0,100
;----------------------------------------------------------------------------------------------------

$^ 19.增压压力限制阀 
 $^TYPE:2
$^BUTTON:测试值
$^REQ00:7E0 05 2F 02 00 03 XX 55 55     $^

$^BUTTON:退出
$^REQ00:7E0 04 2F 02 00 00 55 55 55     $^

$^DSP:增压压力限制阀->%
$^TIP:请输入测试值,范围:0~100 
$^IN_F:y=x*2.54;
$^RANGE:0,100
;----------------------------------------------------------------------------------------------------

$^ 20.风扇类型控制 
 $^TYPE:2
$^BUTTON:测试值
$^REQ00:7E0 05 2F 02 05 08 XX 55 55     $^

$^BUTTON:退出
$^REQ00:7E0 04 2F 02 05 00 55 55 55     $^

$^DSP:风扇类型自学习
$^TIP:请输入测试值,范围:0~1  0:两级风扇  1:为无极风扇. 
$^IN_F:if(x==0x00) y=@0023;else y=@02ab;
$^RANGE:0,1
;----------------------------------------------------------------------------------------------------

$^ 21.巡航车速设置 
 $^TYPE:2
$^BUTTON:测试值
$^REQ00:7E0 05 2F 02 0B 03 XX 55 55     $^

$^BUTTON:退出
$^REQ00:7E0 04 2F 02 0B 00 55 55 55     $^

$^DSP:巡航车速设置->km/h
$^TIP:请输入测试值,范围:0~160 
$^IN_F:y=x;
$^RANGE:0,160
;----------------------------------------------------------------------------------------------------

30帧:

  $FC REQ000:7E0 30 01 04 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
