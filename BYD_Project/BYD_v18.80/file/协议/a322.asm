
    车型ID：a322

    模拟：协议模拟-->a322

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7E8

进入命令:

  $~  REQ000:7E0 02 10 01 00 00 00 00 00       $~  ANS000:7E8 02 10 01 00 00 00 00 00
  $~  REQ001:7E0 02 10 03 00 00 00 00 00       $~  ANS001:7E8 02 10 03 00 00 00 00 00

空闲命令:

  $!  REQ000:7E0 02 3E 80 00 00 00 00 00       $!  ANS000:7E8 02 3E 80 00 00 00 00 00

退出命令:

  $@  REQ000:7E0 02 10 01 00 00 00 00 00       $@  ANS000:7E8 02 10 01 00 00 00 00 00


;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7E0 02 19 FF 00 00 00 00 00       $#  ANS000:7E8 02 19 FF 00 00 00 00 00

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
  $%  REQ004:7E0 03 22 F1 90 00 00 00 00       $%  ANS004:7E8 03 22 F1 90 00 00 00 00

  $%  000:硬件编号:                 $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19);
  $%  001:软件编号:                 $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  002:软件版本号:               $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2);
  $%  003:编程日期:                 $%    $%  ANS003.BYTE004  $%  y=SPRINTF([%02X %02X %02X %02X],x1,x2,x3,x4);
  $%  004:汽车标识编码(VIN):        $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7E0 03 22 F1 01 00 00 00 00       $  ANS000:7E8 03 22 F1 01 00 00 00 00

  $  000.电源电压                                           $    $  V             $    $  ANS000.BYTE035  $  y=x1*17.4/255;
  $  001.发动机转速                                         $    $  rpm           $    $  ANS000.BYTE036  $  y=x1*64+x2*64.0/255;
  $  002.目标怠速(有补偿)                                   $    $  rpm           $    $  ANS000.BYTE039  $  y=x1*10;
  $  003.实际进气歧管压力                                   $    $  hPa           $    $  ANS000.BYTE056  $  y=x1*10;
  $  004.冷却液温度                                         $    $  degree C      $    $  ANS000.BYTE043  $  y=x1-40;
  $  005.目标节气门位置                                     $    $  %             $    $  ANS000.BYTE062  $  y=x1*100.0/255;
  $  006.节气门位置                                         $    $  %             $    $  ANS000.BYTE063  $  y=x1*100.0/255;
  $  007.标准油门踏板角度                                   $    $  %             $    $  ANS000.BYTE059  $  y=x1*100.0/255;
  $  008.发动机相对负荷                                     $    $  %             $    $  ANS000.BYTE095  $  y=x1*191.7/255;
  $  009.点火提前角                                         $    $  °            $    $  ANS000.BYTE070  $  y=x1*0.5-64;
  $  010.充电时间                                           $    $  毫秒          $    $  ANS000.BYTE069  $  y=x1*0.1;
  $  011.平均喷油脉宽                                       $    $  毫秒          $    $  ANS000.BYTE068  $  y=x1*0.1;
  $  012.空气流量滤清器                                     $    $  kg/h          $    $  ANS000.BYTE050  $  y=(x1*256+x2)*0.1;
  $  013.目标怠速(无补偿)                                   $    $  rpm           $    $  ANS000.BYTE038  $  y=x1*10;
  $  014.车速                                               $    $  km/h          $    $  ANS000.BYTE040  $  y=x1;
  $  015.车辆加速度                                         $    $  米/平方秒     $    $  ANS000.BYTE041  $  if(x1>127)y=(x1-256)*27.78/128;else y=x1*27.78/128;
  $  016.运行里程                                           $    $  km            $    $  ANS000.BYTE102  $  y=UINT(x1*0x1000000+x2*0x10000+x3*0x100+x4);
  $  017.运行时间                                           $    $  分            $    $  ANS000.BYTE106  $  y=UINT(x1*0x1000000+x2*0x10000+x3*0x100+x4);
  $  018.车辆故障后的运行时间                               $    $  分            $    $  ANS000.BYTE110  $  y=(x1*1536+x2*6);
  $  019.车速信号错误后的运行里程数                         $    $  km            $    $  ANS000.BYTE123  $  y=(x1*1536+x2*6);
  $  020.进气温度                                           $    $  degree C      $    $  ANS000.BYTE045  $  y=x1-40;
  $  021.环境温度                                           $    $  degree C      $    $  ANS000.BYTE046  $  y=x1-40;
  $  022.发动机机油温度                                     $    $  degree C      $    $  ANS000.BYTE049  $  y=x1-60;
  $  023.爆震传感器1信号                                    $    $  V             $    $  ANS000.BYTE073  $  y=x1*318.8/255+x2*1.2/255;
  $  024.爆震传感器2信号                                    $    $  V             $    $  ANS000.BYTE075  $  y=x1*318.8/255+x2*1.2/255;
  $  025.1组氧传感器电压,传感器1                            $    $  V             $    $  ANS000.BYTE085  $  y=x1*5.0/255;
  $  026.1组氧传感器电压,传感器2                            $    $  V             $    $  ANS000.BYTE086  $  y=x1*5.0/255;
  $  027.1组氧传感器积分值(短期修正)                        $    $                $    $  ANS000.BYTE083  $  y=x1*2.0/255;
  $  028.1组氧传感器积分值(长期修正)                        $    $                $    $  ANS000.BYTE089  $  y=x1*2.0/255;
  $  029.最终长期修正系数1                                  $    $  %             $    $  ANS000.BYTE090  $  if(x1<0x80) y=1524.2*x1/127 + 12*x2/255;else y=1524.2*(x1-256)/127 + 12*x2/255;
  $  030.2组氧传感器电压,传感器1                            $    $  V             $    $  ANS000.BYTE087  $  y=x1*5.0/255;
  $  031.2组氧传感器电压,传感器2                            $    $  V             $    $  ANS000.BYTE088  $  y=x1*5.0/255;
  $  032.2组氧传感器积分值(短期修正)                        $    $                $    $  ANS000.BYTE084  $  y=x1*2.0/255;
  $  033.1缸推迟点火爆震控制                                $    $  Grad kw       $    $  ANS000.BYTE077  $  y=0-(x1*191.3/255);
  $  034.2缸推迟点火爆震控制                                $    $  Grad kw       $    $  ANS000.BYTE078  $  y=0-(x1*191.3/255);
  $  035.3缸推迟点火爆震控制                                $    $  Grad kw       $    $  ANS000.BYTE079  $  y=0-(x1*191.3/255);
  $  036.4缸推迟点火爆震控制                                $    $  Grad kw       $    $  ANS000.BYTE080  $  y=0-(x1*191.3/255);
  $  037.冷却液温度传感器                                   $    $  V             $    $  ANS000.BYTE042  $  y=x1*5.0/255;
  $  038.进气温度传感器                                     $    $  V             $    $  ANS000.BYTE044  $  y=x1*5.0/255;
  $  039.实际进气歧管压力传感器电压                         $    $  V             $    $  ANS000.BYTE055  $  y=x1*5.0/255;
  $  040.加速踏板位置传感器1                                $    $  V             $    $  ANS000.BYTE057  $  y=x1*5.0/255;
  $  041.加速踏板位置传感器2                                $    $  V             $    $  ANS000.BYTE058  $  y=x1*5.0/255;
  $  042.节流阀电位计1传感器电压                            $    $  V             $    $  ANS000.BYTE060  $  y=x1*5.0/255;
  $  043.节流阀电位计2传感器电压                            $    $  V             $    $  ANS000.BYTE061  $  y=x1*5.0/255;
  $  044.节气门电机PWM(脉宽调制)控制信号                    $    $  %             $    $  ANS000.BYTE064  $  y=x1*99.6/255;
  $  045.燃油容积流量(升/小时)                              $    $  L/H           $    $  ANS000.BYTE071  $  y=x1*140.1/255+x2*0.5/255;
  $  046.怠速扭矩自学习                                     $    $  %             $    $  ANS000.BYTE096  $  if(x1<127)y=99.2*x1/127;else y=(x1-256)*99.2/127;
  $  047.怠速控制目标扭矩修正                               $    $  %             $    $  ANS000.BYTE097  $  if(x1<127)y=99.2*x1/127;else y=(x1-256)*99.2/127;
  $  048.碳罐净化率                                         $    $                $    $  ANS000.BYTE100  $  y=x1*0.5/255;
  $  049.碳罐负荷                                           $    $                $    $  ANS000.BYTE101  $  if(x1<127)y=63.5*x1/127;else y=(x1-256)*63.5/127;
  $  050.发动机冷却工况-冷却风扇#1                          $    $                $    $  ANS000.BYTE023  $  if(x1&0x01)y=@0001;else y=@0000;
  $  051.发动机冷却工况-冷却风扇#2                          $    $                $    $  ANS000.BYTE023  $  if(x1&0x02)y=@0001;else y=@0000;
  $  052.发动机稳态工况-点火线端15开启                      $    $                $    $  ANS000.BYTE024  $  if(x1&0x01)y=@001b;else y=@001c;
  $  053.发动机稳态工况-主继电器工作                        $    $                $    $  ANS000.BYTE024  $  if(x1&0x02)y=@001b;else y=@001c;
  $  054.发动机稳态工况-燃油泵继电器工作                    $    $                $    $  ANS000.BYTE024  $  if(x1&0x04)y=@0001;else y=@0000;
  $  055.发动机稳态工况-启动机工作                          $    $                $    $  ANS000.BYTE024  $  if(x1&0x08)y=@001b;else y=@001c;
  $  056.发动机稳态工况-达到怠速转速                        $    $                $    $  ANS000.BYTE024  $  if(x1&0x10)y=@001b;else y=@001c;
  $  057.发动机稳态工况-达到发动机工作温度(大于80°C)       $    $                $    $  ANS000.BYTE024  $  if(x1&0x40)y=@0019;else y=@001a;
  $  058.发动机稳态工况-车辆行驶(收到速度脉冲)              $    $                $    $  ANS000.BYTE024  $  if(x1&0x80)y=@001b;else y=@001c;
  $  059.发动机动态工况-节气门处于怠速位置                  $    $                $    $  ANS000.BYTE025  $  if(x1&0x01)y=@001b;else y=@001c;
  $  060.发动机动态工况-节气门处于全负荷位置                $    $                $    $  ANS000.BYTE025  $  if(x1&0x02)y=@001b;else y=@001c;
  $  061.发动机动态工况-激活减速断油                        $    $                $    $  ANS000.BYTE025  $  if(x1&0x08)y=@000e;else y=@000f;
  $  062.发动机动态工况-激活加速加浓                        $    $                $    $  ANS000.BYTE025  $  if(x1&0x10)y=@000e;else y=@000f;
  $  063.排放控制-λ控制激活                                $    $                $    $  ANS000.BYTE026  $  if(x1&0x01)y=@000e;else y=@000f;
  $  064.排放控制-碳罐控制阀激活                            $    $                $    $  ANS000.BYTE026  $  if(x1&0x04)y=@000e;else y=@000f;
  $  065.排放控制-减速断油激活                              $    $                $    $  ANS000.BYTE026  $  if(x1&0x08)y=@000e;else y=@000f;
  $  066.排放控制-催化转换器保护加浓激活                    $    $                $    $  ANS000.BYTE026  $  if(x1&0x10)y=@000e;else y=@000f;
  $  067.氧传感器-氧传感器1信号 浓                          $    $                $    $  ANS000.BYTE027  $  if(x1&0x01)y=@001e;else y=@001d;
  $  068.排放控制-氧传感器1信号 稀                          $    $                $    $  ANS000.BYTE027  $  if(x1&0x02)y=@001e;else y=@001d;
  $  069.排放控制-氧传感器1加热                             $    $                $    $  ANS000.BYTE027  $  if(x1&0x10)y=@00be;else y=@00bf;
  $  070.排放控制-氧传感器2加热                             $    $                $    $  ANS000.BYTE027  $  if(x1&0x20)y=@00be;else y=@00bf;
  $  071.发动机怠速-踏板位置确认怠速                        $    $                $    $  ANS000.BYTE028  $  if(x1&0x01)y=@001b;else y=@001c;
  $  072.发动机怠速-电气负载1                               $    $                $    $  ANS000.BYTE028  $  if(x1&0x02)y=@001b;else y=@001c;
  $  073.发动机怠速-电气负载2                               $    $                $    $  ANS000.BYTE028  $  if(x1&0x04)y=@001b;else y=@001c;
  $  074.指示灯SVS/MIL-MIL(故障指示灯)激活                  $    $                $    $  ANS000.BYTE029  $  if(x1&0x01)y=@000e;else y=@000f;
  $  075.指示灯SVS/MIL-MIL(故障指示灯)闪烁                  $    $                $    $  ANS000.BYTE029  $  if(x1&0x02)y=@001b;else y=@001c;
  $  076.指示灯SVS/MIL-SVS(系统维修指示灯)激活              $    $                $    $  ANS000.BYTE029  $  if(x1&0x10)y=@000e;else y=@000f;
  $  077.指示灯SVS/MIL-SVS(系统维修指示灯)闪烁              $    $                $    $  ANS000.BYTE029  $  if(x1&0x20)y=@001b;else y=@001c;
  $  078.指示灯SVS/MIL-SVS相关故障出现                      $    $                $    $  ANS000.BYTE029  $  if(x1&0x40)y=@001b;else y=@001c;
  $  079.发动机紧急工况-节气门位置或未知错误                $    $                $    $  ANS000.BYTE030  $  if(x1&0x01)y=@001b;else y=@001c;
  $  080.发动机紧急工况-ETC(电子节气门)相关动力故障         $    $                $    $  ANS000.BYTE030  $  if(x1&0x02)y=@001b;else y=@001c;
  $  081.空调系统-空调开启                                  $    $                $    $  ANS000.BYTE031  $  if(x1&0x01)y=@001b;else y=@001c;
  $  082.空调系统-空调请求激活                              $    $                $    $  ANS000.BYTE031  $  if(x1&0x02)y=@000e;else y=@000f;
  $  083.空调系统-怠速转速因空调而增加                      $    $                $    $  ANS000.BYTE031  $  if(x1&0x20)y=@001b;else y=@001c;
  $  084.空调系统-全负荷时关闭空调压缩机                    $    $                $    $  ANS000.BYTE031  $  if(x1&0x40)y=@001b;else y=@001c;
  $  085.AT/扭矩请求-AT转换离合器激活                       $    $                $    $  ANS000.BYTE032  $  if(x1&0x08)y=@000e;else y=@000f;

;******************************************************************************************************************************************************

动作测试:

$^ 00.发动机故障(MIL)指示灯控制 
$^IN  REQ00:7E0 02 10 03 00 00 00 00 00     $^IN  

$^TYPE0
$^BUTTON:打开 
$^REQ00:7E0 05 2F 01 10 03 FF 00 00     $^

$^BUTTON:关闭 
$^REQ00:7E0 05 2F 01 10 03 00 00 00     $^

$^BUTTON:退出 
$^REQ00:7E0 04 2F 01 10 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 01.燃油泵控制 
$^IN  REQ00:7E0 02 10 03 00 00 00 00 00     $^IN  

$^TYPE0
$^BUTTON:打开 
$^REQ00:7E0 05 2F 01 12 03 FF 00 00     $^

$^BUTTON:关闭 
$^REQ00:7E0 05 2F 01 12 03 00 00 00     $^

$^BUTTON:退出 
$^REQ00:7E0 04 2F 01 12 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 02.冷却风扇#1(低速风扇)控制 
$^IN  REQ00:7E0 02 10 03 00 00 00 00 00     $^IN  

$^TYPE0
$^BUTTON:打开 
$^REQ00:7E0 05 2F 01 13 03 FF 00 00     $^

$^BUTTON:关闭 
$^REQ00:7E0 05 2F 01 13 03 00 00 00     $^

$^BUTTON:退出 
$^REQ00:7E0 04 2F 01 13 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 03.冷却风扇#2(高速风扇)控制 
$^IN  REQ00:7E0 02 10 03 00 00 00 00 00     $^IN  

$^TYPE0
$^BUTTON:打开 
$^REQ00:7E0 05 2F 01 14 03 FF 00 00     $^

$^BUTTON:关闭 
$^REQ00:7E0 05 2F 01 14 03 00 00 00     $^

$^BUTTON:退出 
$^REQ00:7E0 04 2F 01 14 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 04.空调离合器控制 
$^IN  REQ00:7E0 02 10 03 00 00 00 00 00     $^IN  

$^TYPE0
$^BUTTON:打开 
$^REQ00:7E0 05 2F 01 15 03 FF 00 00     $^

$^BUTTON:关闭 
$^REQ00:7E0 05 2F 01 15 03 00 00 00     $^

$^BUTTON:退出 
$^REQ00:7E0 04 2F 01 15 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 05.车辆立即维修(SVS)控制 
$^IN  REQ00:7E0 02 10 03 00 00 00 00 00     $^IN  

$^TYPE0
$^BUTTON:打开 
$^REQ00:7E0 05 2F 01 18 03 FF 00 00     $^

$^BUTTON:关闭 
$^REQ00:7E0 05 2F 01 18 03 00 00 00     $^

$^BUTTON:退出 
$^REQ00:7E0 04 2F 01 18 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 06.禁用燃油喷射控制 
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
$^REQ00:7E0 04 2F 01 20 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

30帧:

  $FC REQ000:7E0 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
