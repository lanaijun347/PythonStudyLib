
    车型ID：a30f

    模拟：协议模拟-->a30f

;******************************************************************************************************************************************************

    通讯线: $~07$~07$~10400

$JSON{"P4":5}

<VCI>
	<ACTIVE_ADDNODE type="0" num="0">
	<param type="string" value="1"/>
	<param type="string" value="3,11,1,12,8"/>
	</ACTIVE_ADDNODE>
</VCI>

进入命令:

  $~  REQ000:81 11 F1 81 04       $~  ANS000:81 11 F1 81 04

空闲命令:

  $!  REQ000:81 11 F1 3E C1       $!  ANS000:81 11 F1 3E C1

退出命令:

  $@  REQ000:81 11 F1 82 05       $@  ANS000:81 11 F1 82 05


;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:84 11 F1 19 12 FF 00 B0       $#  ANS000:84 11 F1 19 12 FF 00 B0

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  ANS000.BYTE04 控制故障码个数，从$#ANS000.BYTE5$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/17000000


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="1"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:83 11 F1 14 FF 00 98       $$  ANS000:83 11 F1 14 FF 00 98

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:82 11 F1 1A 80 1E       $%  ANS000:82 11 F1 1A 80 1E

  $%  000:车辆识别号:        $%    $%  ANS000.BYTE005  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  001:厂家硬件号:        $%    $%  ANS000.BYTE023  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11);
  $%  002:系统硬件号:        $%    $%  ANS000.BYTE034  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20);
  $%  003:系统软件号:        $%    $%  ANS000.BYTE054  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  004:引擎类型:          $%    $%  ANS000.BYTE064  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  005:测试序列号:        $%    $%  ANS000.BYTE070  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  006:编程日期:          $%    $%  ANS000.BYTE077  $%  HEX(x1,x2,x3,x4);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:83 11 F1 22 00 04 AB       $  ANS000:83 11 F1 22 00 04 AB
  $  REQ001:83 11 F1 22 00 05 AC       $  ANS001:83 11 F1 22 00 05 AC
  $  REQ002:83 11 F1 22 00 06 AD       $  ANS002:83 11 F1 22 00 06 AD
  $  REQ003:83 11 F1 22 00 07 AE       $  ANS003:83 11 F1 22 00 07 AE
  $  REQ004:83 11 F1 22 00 0B B2       $  ANS004:83 11 F1 22 00 0B B2
  $  REQ005:83 11 F1 22 00 0C B3       $  ANS005:83 11 F1 22 00 0C B3
  $  REQ006:83 11 F1 22 00 0D B4       $  ANS006:83 11 F1 22 00 0D B4
  $  REQ007:83 11 F1 22 00 0E B5       $  ANS007:83 11 F1 22 00 0E B5
  $  REQ008:83 11 F1 22 00 0F B6       $  ANS008:83 11 F1 22 00 0F B6
  $  REQ009:83 11 F1 22 00 11 B8       $  ANS009:83 11 F1 22 00 11 B8
  $  REQ010:83 11 F1 22 00 14 BB       $  ANS010:83 11 F1 22 00 14 BB
  $  REQ011:83 11 F1 22 00 15 BC       $  ANS011:83 11 F1 22 00 15 BC
  $  REQ012:83 11 F1 22 00 21 C8       $  ANS012:83 11 F1 22 00 21 C8
  $  REQ013:83 11 F1 22 11 00 B8       $  ANS013:83 11 F1 22 11 00 B8
  $  REQ014:83 11 F1 22 11 01 B9       $  ANS014:83 11 F1 22 11 01 B9
  $  REQ015:83 11 F1 22 11 41 F9       $  ANS015:83 11 F1 22 11 41 F9
  $  REQ016:83 11 F1 22 11 43 FB       $  ANS016:83 11 F1 22 11 43 FB
  $  REQ017:83 11 F1 22 11 44 FC       $  ANS017:83 11 F1 22 11 44 FC
  $  REQ018:83 11 F1 22 11 4B 03       $  ANS018:83 11 F1 22 11 4B 03
  $  REQ019:83 11 F1 22 11 52 0A       $  ANS019:83 11 F1 22 11 52 0A
  $  REQ020:83 11 F1 22 11 55 0D       $  ANS020:83 11 F1 22 11 55 0D
  $  REQ021:83 11 F1 22 11 6F 27       $  ANS021:83 11 F1 22 11 6F 27
  $  REQ022:83 11 F1 22 11 71 29       $  ANS022:83 11 F1 22 11 71 29
  $  REQ023:83 11 F1 22 11 76 2E       $  ANS023:83 11 F1 22 11 76 2E
  $  REQ024:83 11 F1 22 11 92 4A       $  ANS024:83 11 F1 22 11 92 4A
  $  REQ025:83 11 F1 22 11 93 4B       $  ANS025:83 11 F1 22 11 93 4B
  $  REQ026:83 11 F1 22 11 9B 53       $  ANS026:83 11 F1 22 11 9B 53
  $  REQ027:83 11 F1 22 11 9D 55       $  ANS027:83 11 F1 22 11 9D 55
  $  REQ028:83 11 F1 22 11 9E 56       $  ANS028:83 11 F1 22 11 9E 56
  $  REQ029:83 11 F1 22 11 A1 59       $  ANS029:83 11 F1 22 11 A1 59
  $  REQ030:83 11 F1 22 11 A3 5B       $  ANS030:83 11 F1 22 11 A3 5B
  $  REQ031:83 11 F1 22 11 BB 73       $  ANS031:83 11 F1 22 11 BB 73
  $  REQ032:83 11 F1 22 11 BD 75       $  ANS032:83 11 F1 22 11 BD 75
  $  REQ033:83 11 F1 22 11 BE 76       $  ANS033:83 11 F1 22 11 BE 76
  $  REQ034:83 11 F1 22 11 C0 78       $  ANS034:83 11 F1 22 11 C0 78
  $  REQ035:83 11 F1 22 11 C1 79       $  ANS035:83 11 F1 22 11 C1 79
  $  REQ036:83 11 F1 22 11 D7 8F       $  ANS036:83 11 F1 22 11 D7 8F
  $  REQ037:83 11 F1 22 12 12 CB       $  ANS037:83 11 F1 22 12 12 CB
  $  REQ038:83 11 F1 22 12 1A D3       $  ANS038:83 11 F1 22 12 1A D3
  $  REQ039:83 11 F1 22 12 1E D7       $  ANS039:83 11 F1 22 12 1E D7
  $  REQ040:83 11 F1 22 12 3F F8       $  ANS040:83 11 F1 22 12 3F F8
  $  REQ041:83 11 F1 22 12 43 FC       $  ANS041:83 11 F1 22 12 43 FC
  $  REQ042:83 11 F1 22 12 C5 7E       $  ANS042:83 11 F1 22 12 C5 7E
  $  REQ043:83 11 F1 22 12 D4 8D       $  ANS043:83 11 F1 22 12 D4 8D
  $  REQ044:83 11 F1 22 12 E5 9E       $  ANS044:83 11 F1 22 12 E5 9E
  $  REQ045:83 11 F1 22 12 ED A6       $  ANS045:83 11 F1 22 12 ED A6
  $  REQ046:83 11 F1 22 12 EF A8       $  ANS046:83 11 F1 22 12 EF A8
  $  REQ047:83 11 F1 22 13 3C F6       $  ANS047:83 11 F1 22 13 3C F6
  $  REQ048:83 11 F1 22 13 3D F7       $  ANS048:83 11 F1 22 13 3D F7
  $  REQ049:83 11 F1 22 13 3E F8       $  ANS049:83 11 F1 22 13 3E F8
  $  REQ050:83 11 F1 22 13 3F F9       $  ANS050:83 11 F1 22 13 3F F9
  $  REQ051:83 11 F1 22 15 00 BC       $  ANS051:83 11 F1 22 15 00 BC
  $  REQ052:83 11 F1 22 15 01 BD       $  ANS052:83 11 F1 22 15 01 BD
  $  REQ053:83 11 F1 22 15 09 C5       $  ANS053:83 11 F1 22 15 09 C5
  $  REQ054:83 11 F1 22 15 0B C7       $  ANS054:83 11 F1 22 15 0B C7

  $  000.累计负荷                                $    $  %            $    $  ANS000.BYTE006  $  y=x1*100.0/255;
  $  001.冷却液温度                              $    $  degree C     $    $  ANS001.BYTE006  $  y=x1-40;
  $  002.燃油短期修正1                           $    $  %            $    $  ANS002.BYTE006  $  if(x1>127)y=(x1-256)*100.0/128;else y=x1*100.0/128;
  $  003.燃油长期修正1                           $    $  %            $    $  ANS003.BYTE006  $  if(x1>127)y=(x1-256)*100.0/128;else y=x1*100.0/128;
  $  004.进气歧管绝对压力                        $    $  kPa          $    $  ANS004.BYTE006  $  y=x1;
  $  005.发动机转速                              $    $  rpm          $    $  ANS005.BYTE006  $  y=x1*16320/255+x2*63/255;
  $  006.车速                                    $    $  km/h         $    $  ANS006.BYTE006  $  y=x1;
  $  007.点火提前角                              $    $  °           $    $  ANS007.BYTE006  $  y=x1*0.5-64;
  $  008.进气温度                                $    $  degree C     $    $  ANS008.BYTE006  $  y=x1-40;
  $  009.节气门绝对位置A                         $    $  %            $    $  ANS009.BYTE006  $  y=x1*100.0/255;
  $  010.B1-S1氧传感器电压                       $    $  V            $    $  ANS010.BYTE006  $  if(x1>127)y=(x1-256)*0.6/128;else y=x1*0.6/128;
  $  011.短期燃油修正                            $    $  %            $    $  ANS010.BYTE007  $  if(x1>127)y=(x1-256)*100.0/128;else y=x1*100.0/128;
  $  012.B1-S2氧传感器电压                       $    $  V            $    $  ANS011.BYTE006  $  if(x1>127)y=(x1-256)*0.6/128;else y=x1*0.6/128;
  $  013.MIL(故障指示灯)亮后行驶里程             $    $  km           $    $  ANS012.BYTE006  $  y=(x1*256+x2);
  $  014.节气门处于怠速位置                      $    $               $    $  ANS013.BYTE006  $  if(x1&0x01)y=@001b;else y=@001c;
  $  015.空调请求激活                            $    $               $    $  ANS013.BYTE006  $  if(x1&0x10)y=@001b;else y=@001c;
  $  016.空调压缩机状态                          $    $               $    $  ANS013.BYTE006  $  if(x1&0x20)y=@0001;else y=@0000;
  $  017.催化剂保护模式                          $    $               $    $  ANS013.BYTE006  $  if(x1&0x40)y=@001b;else y=@001c;
  $  018.燃油泵开启状态                          $    $               $    $  ANS013.BYTE006  $  if(x1&0x80)y=@0001;else y=@0000;
  $  019.发动机故障(MIL)指示灯状态               $    $               $    $  ANS014.BYTE006  $  if(x1&0x04)y=@0001;else y=@0000;
  $  020.发动机立即维修(SVS)指示灯状态           $    $               $    $  ANS014.BYTE006  $  if(x1&0x08)y=@0001;else y=@0000;
  $  021.点火电压                                $    $  V            $    $  ANS015.BYTE006  $  y=x1*0.1;
  $  022.节气门位置传感器                        $    $  V            $    $  ANS016.BYTE006  $  y=x1*5.0/255;
  $  023.空调压力AD值                            $    $  V            $    $  ANS017.BYTE006  $  y=x1*5.0/255;
  $  024.线性EGR(废气再循环)阀反馈电压           $    $  V            $    $  ANS018.BYTE006  $  y=x1*5.0/255;
  $  025.规格化的线性EGR(废气再循环)             $    $  %            $    $  ANS019.BYTE006  $  y=x1*100.0/255;
  $  026.燃油液面高度传感器电压                  $    $  V            $    $  ANS020.BYTE006  $  y=x1*5.0/255;
  $  027.启动时冷却液温度记录值                  $    $  degree C     $    $  ANS021.BYTE006  $  y=x1-40;
  $  028.EGR(废气再循环)阀占空比                 $    $  %            $    $  ANS022.BYTE006  $  y=x1*99.6/255;
  $  029.步进电机位置                            $    $  步幅         $    $  ANS023.BYTE006  $  y=x1;
  $  030.目标怠速                                $    $  rpm          $    $  ANS024.BYTE006  $  y=x1*3188.0/255;
  $  031.喷油脉宽                                $    $  毫秒         $    $  ANS025.BYTE006  $  y=x1*996/255+x2*4/255;
  $  032.目标EGR(废气再循环)阀开度               $    $  %            $    $  ANS026.BYTE006  $  y=x1*100.0/255;
  $  033.大气压强                                $    $  kPa          $    $  ANS027.BYTE006  $  y=x1*94.1/255+10.3;
  $  034.空燃比                                  $    $  %            $    $  ANS028.BYTE006  $  y=x1*0.1;
  $  035.本次发动机运行时间                      $    $  秒           $    $  ANS029.BYTE006  $  y=(x1*256+x2);
  $  036.催化转换器累计温度                      $    $  degree C     $    $  ANS030.BYTE006  $  y=x1*3+300;
  $  037.EGR(废气再循环)阀零点位置               $    $  %            $    $  ANS031.BYTE006  $  y=(x1*199.2+x2*0.8)/255;
  $  038.EGR(废气再循环)阀试验抽样减速次数       $    $               $    $  ANS032.BYTE006  $  y=x1;
  $  039.EGR(废气再循环)阀EWMA范围               $    $               $    $  ANS033.BYTE006  $  if(x1>127)y=(x1-256)*32768/128+x2;else y=x1*32768/128+x2;
  $  040.EGR(废气再循环)阀EWMA结果(服务)         $    $               $    $  ANS034.BYTE006  $  if(x1>127)y=(x1-256)*32768/128+x2;else y=x1*32768/128+x2;
  $  041.EGR(废气再循环)阀开度错误计数           $    $               $    $  ANS035.BYTE006  $  y=(x1*398+x2*2)/255;
  $  042.氧传感器稀转浓次数B1-S1                 $    $               $    $  ANS036.BYTE006  $  y=(x1*256+x2);
  $  043.氧传感器浓/稀-稀/浓反应比率B1-S1        $    $  %            $    $  ANS037.BYTE006  $  y=(x1*127.5+x2*0.5)/255;
  $  044.氧浓转稀次数B1-S1                       $    $               $    $  ANS038.BYTE006  $  y=(x1*256+x2);
  $  045.发动机里程表                            $    $  km           $    $  ANS039.BYTE006  $  y=(x1*256+x2)*10;
  $  046.氧稀转浓时间B1-S1                       $    $  毫秒         $    $  ANS040.BYTE006  $  y=(x1*1509836.8+x2*1991.6)/255;
  $  047.点火电压                                $    $  V            $    $  ANS015.BYTE006  $  y=x1*0.1;
  $  048.氧稀转浓平均时间B1-S1                   $    $  毫秒         $    $  ANS041.BYTE006  $  y=(x1*127.5+x2*0.5)/255;
  $  049.燃油液面的高度输出                      $    $  %            $    $  ANS042.BYTE006  $  y=x1*100.0/255;
  $  050.氧浓转稀平均时间B1-S1                   $    $  毫秒         $    $  ANS043.BYTE006  $  y=(x1*127.5+x2*0.5)/255;
  $  051.(启动)进气温度传感器温度                $    $  degree C     $    $  ANS043.BYTE006  $  y=x1-40;
  $  052.进气压力                                $    $  kPa          $    $  ANS044.BYTE006  $  if(x1<0x80) y=x1*254.0/127+x2*2.0/255-256;else y=(x1-128)*254.0/127+x2*2.0/255;
  $  053.加速度传感器                            $    $  V            $    $  ANS045.BYTE006  $  y=x1*15.9/255-8;
  $  054.TEC学习次数                             $    $               $    $  ANS046.BYTE006  $  y=x1;
  $  055.#1缸TEC学习值                           $    $               $    $  ANS047.BYTE006  $  y=(x1*256+x2);
  $  056.#2缸TEC学习值                           $    $               $    $  ANS048.BYTE006  $  y=(x1*256+x2);
  $  057.#3缸TEC学习值                           $    $               $    $  ANS049.BYTE006  $  y=(x1*256+x2);
  $  058.#4缸TEC学习值                           $    $               $    $  ANS050.BYTE006  $  y=(x1*256+x2);
  $  059.ICMD最低催化温度                        $    $  degree C     $    $  ANS051.BYTE006  $  y=x1*16+x2*16.0/255-500;
  $  060.ICMD最高催化温度                        $    $  degree C     $    $  ANS052.BYTE006  $  y=x1*16+x2*16.0/255-500;
  $  061.最近测试怠速催化监测时间                $    $  秒           $    $  ANS053.BYTE006  $  y=(x1*1020+x2*4)/255;
  $  062.阶段怠速催化监测时间                    $    $  秒           $    $  ANS054.BYTE006  $  y=(x1*1020+x2*4)/255;

;******************************************************************************************************************************************************

动作测试:

$^ 00.故障指示灯 
$^TYPE0
$^BUTTON:开 
$^REQ00: 84 11 F1 30 10 07 FF 00     $^

$^BUTTON:关 
$^REQ00: 84 11 F1 30 10 07 00 00     $^

$^BUTTON:退出 
$^REQ00: 83 11 F1 30 10 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 01.燃油泵 
$^TYPE0
$^BUTTON:开 
$^REQ00: 84 11 F1 30 12 07 FF 00     $^

$^BUTTON:关 
$^REQ00: 84 11 F1 30 12 07 00 00     $^

$^BUTTON:退出 
$^REQ00: 83 11 F1 30 12 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 02.低速风扇 
$^TYPE0
$^BUTTON:开 
$^REQ00: 84 11 F1 30 13 07 FF 00     $^

$^BUTTON:关 
$^REQ00: 84 11 F1 30 13 07 00 00     $^

$^BUTTON:退出 
$^REQ00: 83 11 F1 30 13 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 03.高速风扇 
$^TYPE0
$^BUTTON:开 
$^REQ00: 84 11 F1 30 14 07 FF 00     $^

$^BUTTON:关 
$^REQ00: 84 11 F1 30 14 07 00 00     $^

$^BUTTON:退出 
$^REQ00: 83 11 F1 30 14 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 04.空调离合器 
$^TYPE0
$^BUTTON:开 
$^REQ00: 84 11 F1 30 15 07 FF 00     $^

$^BUTTON:关 
$^REQ00: 84 11 F1 30 15 07 00 00     $^

$^BUTTON:退出 
$^REQ00: 83 11 F1 30 15 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 05.齿讯自学习 
$^TYPE0
$^BUTTON:开 
$^REQ00: 84 11 F1 30 2C 07 FF 00     $^

$^BUTTON:关 
$^REQ00: 84 11 F1 30 2C 07 00 00     $^

$^BUTTON:退出 
$^REQ00: 83 11 F1 30 2C 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 06.组块(BLM)学习 
$^TYPE0
$^BUTTON:开 
$^REQ00: 84 11 F1 30 35 07 FF 00     $^

$^BUTTON:关 
$^REQ00: 84 11 F1 30 35 07 00 00     $^

$^BUTTON:退出 
$^REQ00: 83 11 F1 30 35 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 07.燃油系统开环 
$^TYPE0
$^BUTTON:开 
$^REQ00: 84 11 F1 30 37 07 FF 00     $^

$^BUTTON:关 
$^REQ00: 84 11 F1 30 37 07 00 00     $^

$^BUTTON:退出 
$^REQ00: 83 11 F1 30 37 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 08.怠速催化器监视 
$^TYPE0
$^BUTTON:开 
$^REQ00: 84 11 F1 30 42 07 FF 00     $^

$^BUTTON:关 
$^REQ00: 84 11 F1 30 42 07 00 00     $^

$^BUTTON:退出 
$^REQ00: 83 11 F1 30 42 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 09.氧传感器响应 
$^TYPE0
$^BUTTON:开 
$^REQ00: 84 11 F1 30 50 07 FF 00     $^

$^BUTTON:关 
$^REQ00: 84 11 F1 30 50 07 00 00     $^

$^BUTTON:退出 
$^REQ00: 83 11 F1 30 50 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 10.喷油器 #1 流量/禁用 
$^TYPE0
$^BUTTON:开 
$^REQ00: 85 11 F1 30 32 07 FF 00 00     $^

$^BUTTON:关 
$^REQ00: 85 11 F1 30 32 07 00 00 00     $^

$^BUTTON:退出 
$^REQ00: 83 11 F1 30 32 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 11.喷油器 #2 流量/禁用 
$^TYPE0
$^BUTTON:开 
$^REQ00: 85 11 F1 30 32 07 FF 01 00     $^

$^BUTTON:关 
$^REQ00: 85 11 F1 30 32 07 00 01 00     $^

$^BUTTON:退出 
$^REQ00: 83 11 F1 30 32 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 12.喷油器 #3 流量/禁用 
$^TYPE0
$^BUTTON:开 
$^REQ00: 85 11 F1 30 32 07 FF 02 00     $^

$^BUTTON:关 
$^REQ00: 85 11 F1 30 32 07 00 02 00     $^

$^BUTTON:退出 
$^REQ00: 83 11 F1 30 32 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 13.喷油器 #4 流量/禁用 
$^TYPE0
$^BUTTON:开 
$^REQ00: 85 11 F1 30 32 07 FF 03 00     $^

$^BUTTON:关 
$^REQ00: 85 11 F1 30 32 07 00 03 00     $^

$^BUTTON:退出 
$^REQ00: 83 11 F1 30 32 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 14.碳罐净化阀 
$^IN  REQ00: 84 11 F1 30 11 07 FD CB     $^IN  

 $^TYPE:2
$^BUTTON:输入
$^REQ00:84 11 F1 30 11 07 XX CB     $^

$^BUTTON:退出
$^REQ00: 83 11 F1 30 11 00 C6     $^

$^DSP:碳罐净化阀
$^TIP:请输入罐净化阀值,范围: 0~99:  
$^IN_F:y=x*253/99;
$^RANGE:0,99
;----------------------------------------------------------------------------------------------------

$^ 15.怠速空气控制步数 
$^IN  REQ00: 84 11 F1 30 16 07 FF D2     $^IN  

 $^TYPE:2
$^BUTTON:输入
$^REQ00:84 11 F1 30 16 07 XX D2     $^

$^BUTTON:退出
$^REQ00: 83 11 F1 30 16 00 CB     $^

$^DSP:怠速空气控制步数
$^TIP:请输入怠速空气控制步数值,范围: 0~100:  
$^IN_F:y=x;
$^RANGE:0,100
;----------------------------------------------------------------------------------------------------

$^ 16.怠速空气控制转速 
$^IN  REQ00: 84 11 F1 30 17 07 FE D2     $^IN  

 $^TYPE:2
$^BUTTON:输入
$^REQ00:84 11 F1 30 17 07 XX D2     $^

$^BUTTON:退出
$^REQ00: 83 11 F1 30 17 00 CC     $^

$^DSP:怠速空气控制转速->rpm
$^TIP:请输入怠速空气控制转速值,范围: 1000~4506:  
$^IN_F:y=(x1*256+x2)*254/4506;
$^RANGE:1000,4506
;----------------------------------------------------------------------------------------------------

$^ 17.点火提前/延迟 
$^IN  REQ00: 84 11 F1 30 23 07 FE DE     $^IN  

 $^TYPE:2
$^BUTTON:输入
$^REQ00:84 11 F1 30 23 07 XX DE     $^

$^BUTTON:退出
$^REQ00: 83 11 F1 30 23 00 D8     $^

$^DSP:点火提前/延迟->°
$^TIP:请输入点火提前/延迟值,范围: -90~89:  
$^IN_F:y=(x+90)*128/90;
$^RANGE:-99,89
;----------------------------------------------------------------------------------------------------

