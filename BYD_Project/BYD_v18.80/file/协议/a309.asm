
    车型ID：a309

    模拟：协议模拟-->a309

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

  $*$*DTC/a3090000_2BYTE


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
  $%  004:生产日期:          $%    $%  ANS004.BYTE004  $%  HEX(x1,x2,x3,x4);
  $%  005:编程日期:          $%    $%  ANS005.BYTE004  $%  HEX(x1,x2,x3,x4);

;******************************************************************************************************************************************************

读数据流: 

  $)  00.动态数据
  $  00.动态数据
  $  REQ000:7E0 03 22 F1 01 00 00 00 00       $  ANS000:7E8 03 22 F1 01 00 00 00 00

  $  000.故障码数目                             $    $               $    $  ANS000.BYTE004  $  y=x1;
  $  001.车速                                   $    $  km/h         $    $  ANS000.BYTE040  $  y=x1;
  $  002.发动机转速                             $    $  rpm          $    $  ANS000.BYTE036  $  if((x1*64+x2*63/255)<64) y=0;else y=x1*64+x2*63/255;
  $  003.目标怠速                               $    $  rpm          $    $  ANS000.BYTE039  $  y=x1*10;
  $  004.电源电压                               $    $  V            $    $  ANS000.BYTE035  $  y=x1/10.0;
  $  005.点火提前角                             $    $  度           $    $  ANS000.BYTE065  $  y=x1-50;
  $  006.进气压力                               $    $  kPa          $    $  ANS000.BYTE046  $  y=x1;
  $  007.进气流量                               $    $  kg/h         $    $  ANS000.BYTE047  $  y=x1*25.6+x2*0.1;
  $  008.ETC(电子节气门)目标开度                $    $  %            $    $  ANS000.BYTE049  $  y=x1*25.6+x2*0.1;
  $  009.ETC(电子节气门)实际开度                $    $  %            $    $  ANS000.BYTE055  $  y=x1*25.6+x2*0.1;
  $  010.冷却液温度                             $    $  degree C     $    $  ANS000.BYTE042  $  y=x1-40;
  $  011.进气温度                               $    $  degree C     $    $  ANS000.BYTE044  $  y=x1-40;
  $  012.加速踏板位置                           $    $  %            $    $  ANS000.BYTE105  $  y=x1*25.6+x2*0.1;
  $  013.充磁时间                               $    $  毫秒         $    $  ANS000.BYTE063  $  y=x1/10.0;
  $  014.喷油脉宽                               $    $  毫秒         $    $  ANS000.BYTE064  $  y=x1/10.0;
  $  015.碳罐阀占空比                           $    $  %            $    $  ANS000.BYTE062  $  y=x1*100.0/255;
  $  016.燃油位置输出                           $    $  L            $    $  ANS000.BYTE138  $  y=x1;
  $  017.运行里程                               $    $  km           $    $  ANS000.BYTE092  $  y=x1*16777216+x2*65536+x3*256+x4;
  $  018.运行时间                               $    $  小时:分      $    $  ANS000.BYTE096  $  if(x1<0x80)y=SPRINTF([%d%s%d],((x1*16777216+x2*65536+x3*256+x4)/60),@08ff,((x1*16777216+x2*65536+x3*256+x4)%60));else y=0;
  $  019.故障里程                               $    $               $    $  ANS000.BYTE134  $  y=x1*16777216+x2*65536+x3*256+x4;
  $  020.大气压力值                             $    $  kPa          $    $  ANS000.BYTE120  $  y=x1;
  $  021.EGR(废气再循环)开度                    $    $  %            $    $  ANS000.BYTE139  $  y=x1*25.6+x2*0.1;
  $  022.爆震传感器                             $    $               $    $  ANS000.BYTE070  $  y=x1;
  $  023.ETC(电子节气门)电机PWM(脉宽调制)       $    $  %            $    $  ANS000.BYTE058  $  y=x1*100.0/255;
  $  024.氧传感器1                              $    $  V            $    $  ANS000.BYTE081  $  y=x1*1.00/255;
  $  025.氧传感器2                              $    $  V            $    $  ANS000.BYTE082  $  y=x1*1.00/255;
  $  026.ETC(电子节气门)位置传感器1             $    $  V            $    $  ANS000.BYTE051  $  y=x1*4.98/255+x2*0.01/132;
  $  027.ETC(电子节气门)位置传感器2             $    $  V            $    $  ANS000.BYTE053  $  y=x1*4.98/255+x2*0.01/132;
  $  028.进气压力传感器                         $    $  V            $    $  ANS000.BYTE045  $  y=x1*5.0/255;
  $  029.进气温度传感器                         $    $  V            $    $  ANS000.BYTE043  $  y=x1*5.0/255;
  $  030.冷却液温度传感器                       $    $  V            $    $  ANS000.BYTE041  $  y=x1*5.0/255;
  $  031.加速踏板1信号                          $    $  V            $    $  ANS000.BYTE103  $  y=x1*5.0/255;
  $  032.加速踏板2信号                          $    $  V            $    $  ANS000.BYTE104  $  y=x1*5.0/255;
  $  033.EGR(废气再循环)阀位置传感器电压        $    $  V            $    $  ANS000.BYTE141  $  y=x1*5.0/255;
  $  034.1缸推迟点火爆震控制                    $    $  度           $    $  ANS000.BYTE073  $  y=x1/10.0;
  $  035.2缸推迟点火爆震控制                    $    $  度           $    $  ANS000.BYTE074  $  y=x1/10.0;
  $  036.3缸推迟点火爆震控制                    $    $  度           $    $  ANS000.BYTE075  $  y=x1/10.0;
  $  037.4缸推迟点火爆震控制                    $    $  度           $    $  ANS000.BYTE076  $  y=x1/10.0;
  $  038.燃油短期修正值                         $    $               $    $  ANS000.BYTE079  $  y=x1*1.99/255;
  $  039.燃油长期修正值                         $    $               $    $  ANS000.BYTE085  $  y=x1*1.99/255;
  $  040.空燃比                                 $    $               $    $  ANS000.BYTE128  $  y=x1/10.0;
  $  041.倾角信息                               $    $  度           $    $  ANS000.BYTE133  $  if(x1<0xF1) y=x1*0.5-60;else y=@0005;

  $)  01.系统状态
  $  01.系统状态
  $  REQ000:7E0 03 22 F1 01 00 00 00 00       $  ANS000:7E8 03 22 F1 01 00 00 00 00

  $  000.点火电源开启                              $    $       $    $  ANS000.BYTE024  $  if(x1&0x01) y=@001b; else y=@001c;
  $  001.主继电器工作                              $    $       $    $  ANS000.BYTE024  $  if(x1&0x02) y=@001b; else y=@001c;
  $  002.燃油泵状态                                $    $       $    $  ANS000.BYTE024  $  if(x1&0x04) y=@0001; else y=@0000;
  $  003.ETC(电子节气门)处于怠速位置               $    $       $    $  ANS000.BYTE025  $  if(x1&0x01) y=@001b; else y=@001c;
  $  004.ETC(电子节气门)处于部分打开位置           $    $       $    $  ANS000.BYTE025  $  if(x1&0x02) y=@001b; else y=@001c;
  $  005.ETC(电子节气门)处于全开位置               $    $       $    $  ANS000.BYTE025  $  if(x1&0x04) y=@001b; else y=@001c;
  $  006.激活减速断油                              $    $       $    $  ANS000.BYTE025  $  if(x1&0x08) y=@000e; else y=@000f;
  $  007.激活加速加浓                              $    $       $    $  ANS000.BYTE025  $  if(x1&0x10) y=@000e; else y=@000f;
  $  008.档位状态                                  $    $       $    $  ANS000.BYTE025  $  if((x1<0x40)&&(x1>0x1F)) y=@0076;else if((x1<0x60)&&(x1>0x3F)) y=@0074;else if((x1<0xA0)&&(x1>0x7F)) y=@0075;else y=@0108;
  $  009.MIL(故障指示灯)激活                       $    $       $    $  ANS000.BYTE029  $  if(x1&0x01) y=@000e; else y=@000f;
  $  010.MIL(故障指示灯)闪烁                       $    $       $    $  ANS000.BYTE029  $  if(x1&0x02) y=@001b; else y=@001c;
  $  011.SVS(系统维修指示灯)激活                   $    $       $    $  ANS000.BYTE029  $  if(x1&0x10) y=@000e; else y=@000f;
  $  012.SVS(系统维修指示灯)闪烁                   $    $       $    $  ANS000.BYTE029  $  if(x1&0x20) y=@001b; else y=@001c;
  $  013.氧传感器1信号                             $    $       $    $  ANS000.BYTE027  $  if(x1&0x01) y=@001d; else y=@001e;
  $  014.氧传感器2信号                             $    $       $    $  ANS000.BYTE027  $  if(x1&0x02) y=@001d; else y=@001e;
  $  015.氧传感器1加热                             $    $       $    $  ANS000.BYTE027  $  if(x1&0x10) y=@00be; else y=@00bf;
  $  016.氧传感器2加热                             $    $       $    $  ANS000.BYTE027  $  if(x1&0x20) y=@00be; else y=@00bf;
  $  017.燃油反馈状态                              $    $       $    $  ANS000.BYTE034  $  if(x1&0x40) y=@00bb; else y=@00bc;
  $  018.加速踏板处于怠速位置                      $    $       $    $  ANS000.BYTE028  $  if(x1&0x01) y=@001b; else y=@001c;
  $  019.制动踏板状态                              $    $       $    $  ANS000.BYTE028  $  if(x1&0x02) y=@0003; else y=@00c0;
  $  020.是否有空调请求                            $    $       $    $  ANS000.BYTE028  $  if(x1&0x04) y=@001b; else y=@001c;
  $  021.动力转向开关                              $    $       $    $  ANS000.BYTE028  $  if(x1&0x08) y=@0001; else y=@0000;
  $  022.防盗锁定状态                              $    $       $    $  ANS000.BYTE034  $  if(x1&0x20) y=@0067; else y=@00bd;
  $  023.刹车开关激活                              $    $       $    $  ANS000.BYTE034  $  if(x1&0x01) y=@000e; else y=@000f;
  $  024.刹车灯激活                                $    $       $    $  ANS000.BYTE034  $  if(x1&0x02) y=@000e; else y=@000f;
  $  025.可变气门升程阀状态                        $    $       $    $  ANS000.BYTE034  $  if(x1&0x80) y=@0001; else y=@0000;
  $  026.空调请求激活                              $    $       $    $  ANS000.BYTE031  $  if(x1&0x02) y=@000e; else y=@000f;
  $  027.空调压缩机开                              $    $       $    $  ANS000.BYTE031  $  if(x1&0x04) y=@001b; else y=@001c;
  $  028.怠速转速因空调而增加                      $    $       $    $  ANS000.BYTE031  $  if(x1&0x20) y=@001b; else y=@001c;
  $  029.全负荷是关闭空调压缩机                    $    $       $    $  ANS000.BYTE031  $  if(x1&0x40) y=@001b; else y=@001c;
  $  030.空调中压开关                              $    $       $    $  ANS000.BYTE031  $  if(x1&0x20) y=@001b; else y=@001c;
  $  031.ECU发送码验证结果                         $    $       $    $  ANS000.BYTE022  $  if(x1&0x01) y=@001f; else y=@0020;
  $  032.IKEY发送码验证结果                        $    $       $    $  ANS000.BYTE022  $  if(x1&0x02) y=@001f; else y=@0020;
  $  033.节气门位置传感器线路A对地短路或开路       $    $       $    $  ANS000.BYTE022  $  if(x1&0x04) y=@0021; else y=@0022;
  $  034.节气门位置传感器线路A对电源短路           $    $       $    $  ANS000.BYTE023  $  if(x1&0x01) y=@001b; else y=@001c;
  $  035.高速风扇开启                              $    $       $    $  ANS000.BYTE023  $  if(x1&0x02) y=@001b; else y=@001c;

;******************************************************************************************************************************************************

动作测试:

$^ 开关量组 
$^$^ 故障指示灯 
$^IN  REQ00:7E0 04 2F 01 10 04 00 00 00     $^IN  

$^TYPE0
$^BUTTON:开 
$^REQ00:7E0 05 2F 01 10 03 FF 00 00     $^

$^BUTTON:关 
$^REQ00:7E0 05 2F 01 10 03 00 00 00     $^

$^BUTTON:退出 
$^REQ00:7E0 04 2F 01 10 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^$^ 燃油泵继电器 
$^IN  REQ00:7E0 04 2F 01 12 04 00 00 00     $^IN  

$^TYPE0
$^BUTTON:开 
$^REQ00:7E0 05 2F 01 12 03 FF 00 00     $^

$^BUTTON:关 
$^REQ00:7E0 05 2F 01 12 03 00 00 00     $^

$^BUTTON:退出 
$^REQ00:7E0 04 2F 01 12 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^$^ 空调离合器 
$^IN  REQ00:7E0 04 2F 01 15 04 00 00 00     $^IN  

$^TYPE0
$^BUTTON:开 
$^REQ00:7E0 05 2F 01 15 03 FF 00 00     $^

$^BUTTON:关 
$^REQ00:7E0 05 2F 01 15 03 00 00 00     $^

$^BUTTON:退出 
$^REQ00:7E0 04 2F 01 15 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^$^ 立即维修指示灯 
$^IN  REQ00:7E0 04 2F 01 18 04 00 00 00     $^IN  

$^TYPE0
$^BUTTON:开 
$^REQ00:7E0 05 2F 01 18 03 FF 00 00     $^

$^BUTTON:关 
$^REQ00:7E0 05 2F 01 18 03 00 00 00     $^

$^BUTTON:退出 
$^REQ00:7E0 04 2F 01 18 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^$^ 禁用燃油喷射1# 
$^IN  REQ00:7E0 06 2F 01 20 04 55 01 00     $^IN  

$^TYPE0
$^BUTTON:开 
$^REQ00:7E0 06 2F 01 20 03 FF 01 00     $^

$^BUTTON:关 
$^REQ00:7E0 06 2F 01 20 03 00 01 00     $^

$^BUTTON:退出 
$^REQ00:7E0 06 2F 01 20 00 55 01 00     $^

;----------------------------------------------------------------------------------------------------

$^$^ 禁用燃油喷射2# 
$^IN  REQ00:7E0 06 2F 01 20 04 55 02 00     $^IN  

$^TYPE0
$^BUTTON:开 
$^REQ00:7E0 06 2F 01 20 03 FF 02 00     $^

$^BUTTON:关 
$^REQ00:7E0 06 2F 01 20 03 00 02 00     $^

$^BUTTON:退出 
$^REQ00:7E0 06 2F 01 20 00 55 02 00     $^

;----------------------------------------------------------------------------------------------------

$^$^ 禁用燃油喷射3# 
$^IN  REQ00:7E0 06 2F 01 20 04 55 03 00     $^IN  

$^TYPE0
$^BUTTON:开 
$^REQ00:7E0 06 2F 01 20 03 FF 03 00     $^

$^BUTTON:关 
$^REQ00:7E0 06 2F 01 20 03 00 03 00     $^

$^BUTTON:退出 
$^REQ00:7E0 06 2F 01 20 00 55 03 00     $^

;----------------------------------------------------------------------------------------------------

$^$^ 禁用燃油喷射4# 
$^IN  REQ00:7E0 06 2F 01 20 04 55 04 00     $^IN  

$^TYPE0
$^BUTTON:开 
$^REQ00:7E0 06 2F 01 20 03 FF 04 00     $^

$^BUTTON:关 
$^REQ00:7E0 06 2F 01 20 03 00 04 00     $^

$^BUTTON:退出 
$^REQ00:7E0 06 2F 01 20 00 55 04 00     $^

;----------------------------------------------------------------------------------------------------

$^$^ 高速风扇继电器 
$^IN  REQ00:7E0 04 2F 01 13 04 00 00 00     $^IN  

$^TYPE0
$^BUTTON:开 
$^REQ00:7E0 05 2F 01 13 03 FF 00 00     $^

$^BUTTON:关 
$^REQ00:7E0 05 2F 01 13 03 00 00 00     $^

$^BUTTON:退出 
$^REQ00:7E0 04 2F 01 13 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^$^ 低速风扇继电器 
$^IN  REQ00:7E0 04 2F 01 14 04 00 00 00     $^IN  

$^TYPE0
$^BUTTON:开 
$^REQ00:7E0 05 2F 01 14 03 FF 00 00     $^

$^BUTTON:关 
$^REQ00:7E0 05 2F 01 14 03 00 00 00     $^

$^BUTTON:退出 
$^REQ00:7E0 04 2F 01 14 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^$^ 可变气门升程阀 
$^IN  REQ00:7E0 04 2F 02 08 04 00 00 00     $^IN  

$^TYPE0
$^BUTTON:开 
$^REQ00:7E0 05 2F 02 08 03 FF 00 00     $^

$^BUTTON:关 
$^REQ00:7E0 05 2F 02 08 03 00 00 00     $^

$^BUTTON:退出 
$^REQ00:7E0 04 2F 02 08 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^$^ 倾角长期修正 
$^TYPE0
$^BUTTON:执行 
$^REQ00:7E0 04 2F 02 04 08 00 00 00     $^
$^REQ01:7E0 04 2F 02 04 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 控制量组 
$^$^ 碳罐控制阀 
$^IN  REQ00:7E0 05 2F 01 11 03 00 00 00     $^IN  

 $^TYPE:2
$^BUTTON:输入
$^REQ00:7E0 05 2F 01 11 03 XX 00 00     $^

$^BUTTON:退出
$^REQ00:7E0 04 2F 01 11 00 00 00 00     $^

$^DSP:碳罐控制阀
$^TIP:请输入设置值(范围:0-100): 
$^IN_F:y=2.54*x;
$^RANGE:0,100
;----------------------------------------------------------------------------------------------------

$^$^ 怠速转速控制 
$^IN  REQ00:7E0 05 2F 01 24 08 00 00 00     $^IN  

 $^TYPE:2
$^BUTTON:输入
$^REQ00:7E0 05 2F 01 24 08 XX 00 00     $^

$^BUTTON:退出
$^REQ00:7E0 04 2F 01 24 00 00 00 00     $^

$^DSP:怠速转速控制->rpm
$^TIP:请输入设置值(范围:0-2000): 
$^IN_F:y=0.1*(x1*256+x2);
$^RANGE:0,2000
;----------------------------------------------------------------------------------------------------

$^$^ EGR(废气再循环)阀占空比控制 
$^IN  REQ00:7E0 05 2F 02 06 03 00 00 00     $^IN  

 $^TYPE:2
$^BUTTON:输入
$^REQ00:7E0 05 2F 02 06 03 XX 00 00     $^

$^BUTTON:退出
$^REQ00:7E0 04 2F 02 06 00 00 00 00     $^

$^DSP:EGR(废气再循环)阀占空比控制
$^TIP:请输入设置值(范围:0-100): 
$^IN_F:y=2.54*x;
$^RANGE:0,100
;----------------------------------------------------------------------------------------------------

$^$^ 节气门开度控制 
$^IN  REQ00:7E0 05 2F 02 02 03 00 00 00     $^IN  

 $^TYPE:2
$^BUTTON:输入
$^REQ00:7E0 05 2F 02 02 03 XX 00 00     $^

$^BUTTON:退出
$^REQ00:7E0 04 2F 02 02 00 00 00 00     $^

$^DSP:节气门开度控制->%
$^TIP:请输入设置值(范围:0-100): 
$^IN_F:y=2.54*x;
$^RANGE:0,100
;----------------------------------------------------------------------------------------------------

$^$^ 点火提前角控制 
$^IN  REQ00:7E0 05 2F 02 07 03 00 00 00     $^IN  

 $^TYPE:2
$^BUTTON:输入
$^REQ00:7E0 05 2F 02 07 03 XX 00 00     $^

$^BUTTON:退出
$^REQ00:7E0 04 2F 02 07 00 00 00 00     $^

$^DSP:点火提前角控制
$^TIP:请输入设置值(范围:0-40): 
$^IN_F:y=x;
$^RANGE:0,40
;----------------------------------------------------------------------------------------------------

30帧:

  $FC REQ000:7E0 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
