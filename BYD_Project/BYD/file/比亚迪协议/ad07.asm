
    车型ID：ad07

    模拟：协议模拟-->ad07

;******************************************************************************************************************************************************

    通讯线: $~07$~07$~10400

进入命令:

  $~  REQ000:81 11 F1 81 04       $~  ANS000:81 11 F1 81 04

空闲命令:

  $!  REQ000:81 11 F1 3E C1       $!  ANS000:81 11 F1 3E C1

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:84 11 F1 18 00 00 00 9E       $#  ANS000:84 11 F1 18 00 00 00 9E

  ANS000.BYTE04 控制故障码个数，从$#ANS000.BYTE5$#开始每$#3$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/feff0000_2BYTE


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="1"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:83 11 F1 14 00 00 99       $$  ANS000:83 11 F1 14 00 00 99

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:82 11 F1 1A 92 30       $%  ANS000:82 11 F1 1A 92 30
  $%  REQ001:82 11 F1 1A 94 32       $%  ANS001:82 11 F1 1A 94 32
  $%  REQ002:82 11 F1 1A 95 33       $%  ANS002:82 11 F1 1A 95 33
  $%  REQ003:82 11 F1 1A 97 35       $%  ANS003:82 11 F1 1A 97 35
  $%  REQ004:82 11 F1 1A 99 37       $%  ANS004:82 11 F1 1A 99 37
  $%  REQ005:82 11 F1 1A 9F 3D       $%  ANS005:82 11 F1 1A 9F 3D
  $%  REQ006:82 11 F1 1A 90 2E       $%  ANS006:82 11 F1 1A 90 2E

  $%  000:硬件编号:                    $%    $%  ANS000.BYTE005  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19);
  $%  001:软件编号:                    $%    $%  ANS001.BYTE005  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  002:软件版本号:                  $%    $%  ANS002.BYTE005  $%  ASCII(x1,x2);
  $%  003:系统名称或发动机类型:        $%    $%  ANS003.BYTE005  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  004:编程日期:                    $%    $%  ANS004.BYTE005  $%  y=SPRINTF([%02X%02X%02X%02X],x1,x2,x3,x4);
  $%  005:零部件编号:                  $%    $%  ANS005.BYTE005  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  006:VIN:                         $%    $%  ANS006.BYTE005  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:82 11 F1 21 01 A6       $  ANS000:82 11 F1 21 01 A6

  $  000:电源电压                                           $    $  V            $    $  ANS000.BYTE036  $  y=x1*18.8/255;
  $  001:发动机转速                                         $    $  rpm          $    $  ANS000.BYTE037  $  y=x1*64+x2*63.8/255;
  $  002:目标怠速(有补偿)                                   $    $  rpm          $    $  ANS000.BYTE040  $  y=x1*10;
  $  003:冷却液温度                                         $    $  degree C     $    $  ANS000.BYTE044  $  y=x1-40;
  $  004:实际进气歧管压力                                   $    $  hPa          $    $  ANS000.BYTE052  $  y=x1*10;
  $  005:计算节气门位置                                     $    $  %            $    $  ANS000.BYTE060  $  y=x1*100.0/255;
  $  006:发动机相对负荷                                     $    $  %            $    $  ANS000.BYTE100  $  y=x1*6+x2*6.0/255;
  $  007:点火提前角                                         $    $  °           $    $  ANS000.BYTE071  $  y=x1*0.5-64;
  $  008:充磁时间                                           $    $  毫秒         $    $  ANS000.BYTE069  $  y=x1*0.1;
  $  009:喷油脉宽                                           $    $  毫秒         $    $  ANS000.BYTE070  $  y=x1*0.1;
  $  010:进气量                                             $    $  kg/h         $    $  ANS000.BYTE053  $  y=(x1*2560+x2)*10;
  $  011:目标怠速(无补偿)                                   $    $  rpm          $    $  ANS000.BYTE039  $  y=x1*10;
  $  012:车速                                               $    $  km/h         $    $  ANS000.BYTE041  $  y=x1;
  $  013:车辆加速度                                         $    $  m/s2         $    $  ANS000.BYTE042  $  if(x1>127)y=(x1-256)*27.78/128;else y=x1*27.78/128;
  $  014:运行里程                                           $    $  km           $    $  ANS000.BYTE111  $  y=UINT(x1*0x1000000+x2*0x10000+x3*0x100+x4);
  $  015:运行时间                                           $    $  分           $    $  ANS000.BYTE115  $  y=UINT(x1*0x1000000+x2*0x10000+x3*0x100+x4);
  $  016:故障后运行时间                                     $    $  分           $    $  ANS000.BYTE119  $  y=(x1*1536+x2*6);
  $  017:进气温度                                           $    $  degree C     $    $  ANS000.BYTE046  $  y=x1-40;
  $  018:环境温度                                           $    $  degree C     $    $  ANS000.BYTE047  $  y=x1-40;
  $  019:爆震传感器1信号                                    $    $               $    $  ANS000.BYTE077  $  y=x1*5+x2*5.0/255;
  $  020:爆震传感器2信号                                    $    $               $    $  ANS000.BYTE079  $  y=x1*5+x2*5.0/255;
  $  021:1组氧传感器电压,传感器1(氧传感器1)                 $    $  V            $    $  ANS000.BYTE089  $  y=x1*5.0/255;
  $  022:1组氧传感器电压,传感器2(氧传感器2)                 $    $  V            $    $  ANS000.BYTE090  $  y=x1*5.0/255;
  $  023:1组氧传感器积分值(短期修正)                        $    $               $    $  ANS000.BYTE087  $  y=x1*2.0/255;
  $  024:1组氧传感器积分值(长期修正)                        $    $               $    $  ANS000.BYTE093  $  y=x1*1.99/255;
  $  025:最终长期修正系数1                                  $    $  %            $    $  ANS000.BYTE095  $  if(x1<0x80) y=x1*1524.2/127+x2*12.0/255-1536.2;else y=(x1-0x80)*1536.2/127+x2*12.0/255;
  $  026:1缸推迟点火爆震控制                                $    $  Grad kw      $    $  ANS000.BYTE081  $  if(x1>127)y=(256-x1)*0.75;else y=0-(x1*0.75);
  $  027:2缸推迟点火爆震控制                                $    $  Grad kw      $    $  ANS000.BYTE082  $  if(x1>127)y=(256-x1)*0.75;else y=0-(x1*0.75);
  $  028:3缸推迟点火爆震控制                                $    $  Grad kw      $    $  ANS000.BYTE083  $  if(x1>127)y=(256-x1)*0.75;else y=0-(x1*0.75);
  $  029:4缸推迟点火爆震控制                                $    $  Grad kw      $    $  ANS000.BYTE084  $  if(x1>127)y=(256-x1)*0.75;else y=0-(x1*0.75);
  $  030:步进电机目标位置                                   $    $  步幅         $    $  ANS000.BYTE055  $  y=x1;
  $  031:空调蒸发器温度                                     $    $  degree C     $    $  ANS000.BYTE050  $  y=x1*191.2/255+x2*0.7-48;
  $  032:节气门位置信号                                     $    $  %            $    $  ANS000.BYTE059  $  y=(x1*99.6+x2*0.4)/255;
  $  033:节气门电机PWM(脉宽调制)                            $    $  %            $    $  ANS000.BYTE061  $  y=x1*99.6/255;
  $  034:碳罐阀占空比                                       $    $  %            $    $  ANS000.BYTE065  $  y=x1*99.6/255;
  $  035:耗油量                                             $    $  L/h          $    $  ANS000.BYTE075  $  y=(x1*140.1+x2*0.5)/255;
  $  036:模型进气温度                                       $    $  degree C     $    $  ANS000.BYTE099  $  y=x1*191.0/255-48;
  $  037:怠速扭矩自学习                                     $    $  %            $    $  ANS000.BYTE102  $  if(x1>127)y=(x1-256)*100.0/128+x2*0.8/255;else y=x1*100.0/128+x2*0.8/255;
  $  038:怠速转速控制目标扭矩修正                           $    $  %            $    $  ANS000.BYTE104  $  if(x1>127)y=(x1-256)*100.0/128+x2*0.8/255;else y=x1*100.0/128+x2*0.8/255;
  $  039:碳罐的相对喷油量                                   $    $  %            $    $  ANS000.BYTE106  $  if(x1>127)y=(x1-256)*0.2/128;else y=x1*0.2/128;
  $  040:碳罐净化率                                         $    $  %            $    $  ANS000.BYTE108  $  y=x1*0.5/255;
  $  041:碳罐负荷                                           $    $  %            $    $  ANS000.BYTE109  $  if(x1>127)y=(x1-256)*0.5+x2*0.5/255;else y=x1*0.5+x2*0.5/255;
  $  042:编程状态-激活安全进入                              $    $               $    $  ANS000.BYTE022  $  if(x1&0x01)y=@0000;else y=@0001;
  $  043:编程状态-变量字已编程                              $    $               $    $  ANS000.BYTE022  $  if(x1&0x02)y=@0000;else y=@0001;
  $  044:编程状态-CAN车辆配置已编程                         $    $               $    $  ANS000.BYTE022  $  if(x1&0x04)y=@0000;else y=@0001;
  $  045:编程状态-VIN已编程                                 $    $               $    $  ANS000.BYTE022  $  if(x1&0x08)y=@0000;else y=@0001;
  $  046:编程状态-动力总成数据已编程                        $    $               $    $  ANS000.BYTE022  $  if(x1&0x10)y=@0000;else y=@0001;
  $  047:发动机冷却系统-冷却风扇#1                          $    $               $    $  ANS000.BYTE024  $  if(x1&0x01)y=@0006;else y=@0007;
  $  048:发动机冷却系统-冷却风扇#2                          $    $               $    $  ANS000.BYTE024  $  if(x1&0x02)y=@0006;else y=@0007;
  $  049:冷却液温度传感器电压                               $    $  V            $    $  ANS000.BYTE043  $  y=x1*5.0/255;
  $  050:进气温度传感器                                     $    $  V            $    $  ANS000.BYTE045  $  y=x1*5.0/255;
  $  051:空调蒸发器温度AD值                                 $    $  V            $    $  ANS000.BYTE049  $  y=x1*5.0/255;
  $  052:实际进气歧管压力传感器电压                         $    $  V            $    $  ANS000.BYTE051  $  y=x1*5.0/255;
  $  053:节气门角度AD信号值                                 $    $  V            $    $  ANS000.BYTE056  $  y=x1*5.0/255;
  $  054:发动机稳态工况-点火接线端15开启                    $    $               $    $  ANS000.BYTE025  $  if(x1&0x01)y=@0000;else y=@0001;
  $  055:发动机稳态工况-主继电器工作                        $    $               $    $  ANS000.BYTE025  $  if(x1&0x02)y=@0000;else y=@0001;
  $  056:发动机稳态工况-燃油泵继电器工作                    $    $               $    $  ANS000.BYTE025  $  if(x1&0x04)y=@0004;else y=@0005;
  $  057:发动机稳态工况-起动机工作                          $    $               $    $  ANS000.BYTE025  $  if(x1&0x08)y=@0000;else y=@0001;
  $  058:发动机稳态工况-达到怠速转速                        $    $               $    $  ANS000.BYTE025  $  if(x1&0x10)y=@0000;else y=@0001;
  $  059:发动机稳态工况-同步条件                            $    $               $    $  ANS000.BYTE025  $  if(x1&0x20)y=@0002;else y=@0003;
  $  060:发动机稳态工况-达到发动机工作温度(大于80°C)       $    $               $    $  ANS000.BYTE025  $  if(x1&0x40)y=@0002;else y=@0003;
  $  061:发动机稳态工况-车辆行驶(收到速度脉冲)              $    $               $    $  ANS000.BYTE025  $  if(x1&0x80)y=@0000;else y=@0001;
  $  062:发动机动态工况-节气门处于怠速位置                  $    $               $    $  ANS000.BYTE026  $  if(x1&0x01)y=@0000;else y=@0001;
  $  063:发动机动态工况-节气门处于全负荷位置                $    $               $    $  ANS000.BYTE026  $  if(x1&0x02)y=@0000;else y=@0001;
  $  064:发动机动态工况-激活减速断油                        $    $               $    $  ANS000.BYTE026  $  if(x1&0x08)y=@0006;else y=@0007;
  $  065:发动机动态工况-激活加速加浓                        $    $               $    $  ANS000.BYTE026  $  if(x1&0x10)y=@0006;else y=@0007;
  $  066:排放控制-λ控制激活                                $    $               $    $  ANS000.BYTE027  $  if(x1&0x01)y=@0006;else y=@0007;
  $  067:排放控制-碳罐控制阀激活                            $    $               $    $  ANS000.BYTE027  $  if(x1&0x04)y=@0006;else y=@0007;
  $  068:排放控制-减速断油激活                              $    $               $    $  ANS000.BYTE027  $  if(x1&0x08)y=@0006;else y=@0007;
  $  069:排放控制-催化转换器保护加浓激活                    $    $               $    $  ANS000.BYTE027  $  if(x1&0x10)y=@0006;else y=@0007;
  $  070:排放控制-混合气自学习条件激活                      $    $               $    $  ANS000.BYTE027  $  if(x1&0x20)y=@0006;else y=@0007;
  $  071:氧传感器-氧传感器1信号                             $    $               $    $  ANS000.BYTE028  $  if(x1&0x01)y=@0008;else y=@0009;
  $  072:氧传感器-氧传感器2信号                             $    $               $    $  ANS000.BYTE028  $  if(x1&0x02)y=@0008;else y=@0009;
  $  073:氧传感器-氧传感器1加热                             $    $               $    $  ANS000.BYTE028  $  if(x1&0x10)y=@000a;else y=@000b;
  $  074:氧传感器-氧传感器2加热                             $    $               $    $  ANS000.BYTE028  $  if(x1&0x20)y=@000a;else y=@000b;
  $  075:发动机怠速-踏板位置确认怠速                        $    $               $    $  ANS000.BYTE029  $  if(x1&0x01)y=@0000;else y=@0001;
  $  076:发动机怠速-电气负载1                               $    $               $    $  ANS000.BYTE029  $  if(x1&0x02)y=@0004;else y=@0005;
  $  077:发动机怠速-电气负载2                               $    $               $    $  ANS000.BYTE029  $  if(x1&0x04)y=@0004;else y=@0005;
  $  078:指示灯SVS/MIL-MIL(故障指示灯)激活                  $    $               $    $  ANS000.BYTE030  $  if(x1&0x01)y=@0006;else y=@0007;
  $  079:指示灯SVS/MIL-MIL(故障指示灯)闪烁                  $    $               $    $  ANS000.BYTE030  $  if(x1&0x02)y=@0000;else y=@0001;
  $  080:指示灯SVS/MIL-SVS(系统维修指示灯)激活              $    $               $    $  ANS000.BYTE030  $  if(x1&0x10)y=@0006;else y=@0007;
  $  081:指示灯SVS/MIL-SVS(系统维修指示灯)闪烁              $    $               $    $  ANS000.BYTE030  $  if(x1&0x20)y=@0000;else y=@0001;
  $  082:指示灯SVS/MIL-SVS(系统维修指示灯)存在故障          $    $               $    $  ANS000.BYTE030  $  if(x1&0x40)y=@0000;else y=@0001;
  $  083:空调系统-空调开启                                  $    $               $    $  ANS000.BYTE032  $  if(x1&0x01)y=@0000;else y=@0001;
  $  084:空调系统-空调请求激活                              $    $               $    $  ANS000.BYTE032  $  if(x1&0x02)y=@0006;else y=@0007;
  $  085:空调系统-空调压缩机开                              $    $               $    $  ANS000.BYTE032  $  if(x1&0x04)y=@0000;else y=@0001;
  $  086:空调系统-空调断开或无空调                          $    $               $    $  ANS000.BYTE032  $  if(x1&0x08)y=@0000;else y=@0001;
  $  087:空调系统-空调因温度断开                            $    $               $    $  ANS000.BYTE032  $  if(x1&0x10)y=@0000;else y=@0001;
  $  088:空调系统-怠速转速因空调而增加                      $    $               $    $  ANS000.BYTE032  $  if(x1&0x20)y=@0000;else y=@0001;
  $  089:空调系统-全负荷时关闭空调压缩机                    $    $               $    $  ANS000.BYTE032  $  if(x1&0x40)y=@0000;else y=@0001;
  $  090:空调系统-空调中压开关开                            $    $               $    $  ANS000.BYTE032  $  if(x1&0x80)y=@0000;else y=@0001;
  $  091:AT/扭矩请求-AT转换离合器激活                       $    $               $    $  ANS000.BYTE033  $  if(x1&0x08)y=@0006;else y=@0007;

;******************************************************************************************************************************************************

