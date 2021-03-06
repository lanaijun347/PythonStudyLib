
    车型ID：1f00

    模拟：协议模拟-->1f00

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:7E0 02 10 01 00 00 00 00 00       $~  ANS000:7E8 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7E0 02 3E 80 00 00 00 00 00       $!  ANS000:7E8 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7E0 02 19 FF 00 00 00 00 00       $#  ANS000:7E8 02 19 FF 00 00 00 00 00

  ANS000.BYTE04 控制故障码个数，从$#ANS000.BYTE5$#开始每$#4$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/feff0000


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

  $%  REQ000:7E0 03 22 F1 92 00 00 00 00       $%  ANS000:7E8 03 22 F1 92 00 00 00 00
  $%  REQ001:7E0 03 22 F1 94 00 00 00 00       $%  ANS001:7E8 03 22 F1 94 00 00 00 00
  $%  REQ002:7E0 03 22 F1 95 00 00 00 00       $%  ANS002:7E8 03 22 F1 95 00 00 00 00
  $%  REQ003:7E0 03 22 F1 99 00 00 00 00       $%  ANS003:7E8 03 22 F1 99 00 00 00 00
  $%  REQ004:7E0 03 22 F1 8B 00 00 00 00       $%  ANS004:7E8 03 22 F1 8B 00 00 00 00
  $%  REQ005:7E0 03 22 F1 90 00 00 00 00       $%  ANS005:7E8 03 22 F1 90 00 00 00 00

  $%  000:硬件编号:           $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19);
  $%  001:软件编号:           $%    $%  ANS001.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  002:软件版本:           $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%.2d.%.2d],(x1*256+x2)/10000,((x1*256+x2)%10000)/100,(x1*256+x2)%100);
  $%  003:软件日期:           $%    $%  ANS002.BYTE006  $%  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@001d,x2,@001e,x3,@001f);
  $%  004:修改次数:           $%    $%  ANS002.BYTE009  $%  y=x1;
  $%  005:编程日期:           $%    $%  ANS003.BYTE004  $%  y=SPRINTF([%02X%02X%02X%02X],x1,x2,x3,x4);
  $%  006:ECU生产日期:        $%    $%  ANS004.BYTE004  $%  y=SPRINTF([%02X%02X%02X%02X],x1,x2,x3,x4);
  $%  007:学习到的VIN:        $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7E0 03 22 F1 01 00 00 00 00       $  ANS000:7E8 03 22 F1 01 00 00 00 00

  $  000:发动机转速                                  $    $  rpm          $    $  ANS000.BYTE036  $  y=x1*64+x2*64/255;
  $  001:电源电压                                    $    $  V            $    $  ANS000.BYTE035  $  y=x1*0.1;
  $  002:目标怠速(有补偿)                            $    $  rpm          $    $  ANS000.BYTE039  $  y=x1*10;
  $  003:进气压力                                    $    $  kPa          $    $  ANS000.BYTE046  $  y=x1;
  $  004:冷却液温度                                  $    $  degree C     $    $  ANS000.BYTE042  $  y=x1-40;
  $  005:目标油压                                    $    $  bar          $    $  ANS000.BYTE108  $  y=x1;
  $  006:实际油压                                    $    $  bar          $    $  ANS000.BYTE110  $  y=x1;
  $  007:油压调节阀占空比                            $    $  %            $    $  ANS000.BYTE111  $  y=x1*100/255;
  $  008:节气门开度                                  $    $  %            $    $  ANS000.BYTE055  $  y=(x1*256+x2)*0.1;
  $  009:节气门目标开度                              $    $  %            $    $  ANS000.BYTE049  $  y=(x1*256+x2)*0.1;
  $  010:加速踏板位置                                $    $  %            $    $  ANS000.BYTE105  $  y=(x1*256+x2)*0.1;
  $  011:充磁时间                                    $    $  毫秒         $    $  ANS000.BYTE063  $  y=x1*0.1;
  $  012:进气相位原始值                              $    $  °           $    $  ANS000.BYTE131  $  y=(x1*256+x2)-100;
  $  013:喷油脉宽                                    $    $  毫秒         $    $  ANS000.BYTE064  $  y=x1*0.1;
  $  014:进气流量                                    $    $  kg/h         $    $  ANS000.BYTE047  $  y=(x1*256+x2)*0.1;
  $  015:目标怠速(无补偿)                            $    $  rpm          $    $  ANS000.BYTE038  $  y=x1*10;
  $  016:车速                                        $    $  km/h         $    $  ANS000.BYTE040  $  y=x1;
  $  017:运行里程                                    $    $  km           $    $  ANS000.BYTE092  $  y=UINT(x1*0x1000000+x2*0x10000+x3*0x100+x4);
  $  018:运行时间                                    $    $  分           $    $  ANS000.BYTE096  $  y=UINT(x1*0x1000000+x2*0x10000+x3*0x100+x4);
  $  019:进气温度                                    $    $  degree C     $    $  ANS000.BYTE044  $  y=x1-40;
  $  020:增压气体温度                                $    $  degree C     $    $  ANS000.BYTE117  $  y=x1-40;
  $  021:目标增压压力                                $    $  kPa          $    $  ANS000.BYTE113  $  y=x1;
  $  022:实际增压压力                                $    $  kPa          $    $  ANS000.BYTE115  $  y=x1;
  $  023:目标进气相位                                $    $  °           $    $  ANS000.BYTE126  $  y=(x1*256+x2)-100;
  $  024:进气相位                                    $    $  °           $    $  ANS000.BYTE124  $  y=(x1*256+x2)-100;
  $  025:大气压力值                                  $    $  kPa          $    $  ANS000.BYTE120  $  y=x1;
  $  026:海拔校正                                    $    $  %            $    $  ANS000.BYTE121  $  y=x1*100/255;
  $  027:制动助力器压力                              $    $  kPa          $    $  ANS000.BYTE112  $  y=x1;
  $  028:点火提前角                                  $    $  °           $    $  ANS000.BYTE065  $  y=x1-50;
  $  029:空燃比                                      $    $  %            $    $  ANS000.BYTE128  $  y=x1*0.1;
  $  030:巡航设定车速                                $    $  km/h         $    $  ANS000.BYTE142  $  y=x1;
  $  031:爆震传感器1                                 $    $               $    $  ANS000.BYTE069  $  y=(x1*256+x2);
  $  032:爆震传感器2                                 $    $               $    $  ANS000.BYTE071  $  y=(x1*256+x2);
  $  033:1组氧传感器电压,传感器1(氧传感器1)          $    $  V            $    $  ANS000.BYTE081  $  y=x1*1.000/255;
  $  034:1组氧传感器电压,传感器2(氧传感器2)          $    $  V            $    $  ANS000.BYTE082  $  y=x1*1.000/255;
  $  035:1组氧传感器积分值(短期修正)                 $    $               $    $  ANS000.BYTE079  $  y=x1*1.992/255;
  $  036:1组氧传感器积分值(长期修正)                 $    $               $    $  ANS000.BYTE085  $  y=x1*1.992/255;
  $  037:1缸推迟点火爆震控制                         $    $  °           $    $  ANS000.BYTE073  $  y=x1*0.1;
  $  038:2缸推迟点火爆震控制                         $    $  °           $    $  ANS000.BYTE074  $  y=x1*0.1;
  $  039:3缸推迟点火爆震控制                         $    $  °           $    $  ANS000.BYTE075  $  y=x1*0.1;
  $  040:4缸推迟点火爆震控制                         $    $  °           $    $  ANS000.BYTE076  $  y=x1*0.1;
  $  041:发电机励磁开度                              $    $  %            $    $  ANS000.BYTE144  $  y=x1*100/255;
  $  042:发电机目标电压                              $    $  V            $    $  ANS000.BYTE145  $  y=x1*0.1;
  $  043:发电机励磁电流限值                          $    $  A            $    $  ANS000.BYTE146  $  y=x1*0.1;
  $  044:发电机实发电压                              $    $  V            $    $  ANS000.BYTE148  $  y=x1*0.1;
  $  045:发电机励磁电流                              $    $  A            $    $  ANS000.BYTE149  $  y=x1*0.1;
  $  046:发电机负载响应时间                          $    $  秒           $    $  ANS000.BYTE150  $  y=x1;
  $  047:电池传感器电压(LIN)                         $    $  V            $    $  ANS000.BYTE157  $  y=x1*0.1;
  $  048:低压油压                                    $    $  bar          $    $  ANS000.BYTE158  $  y=x1*0.1;
  $  049:低压油压传感器电压                          $    $  V            $    $  ANS000.BYTE159  $  y=x1*5.00/255;
  $  050:制动压力传感器电压                          $    $  V            $    $  ANS000.BYTE160  $  y=x1*5.00/255;
  $  051:排气相位                                    $    $  °           $    $  ANS000.BYTE161  $  y=(x1*256+x2)-100;
  $  052:目标排气相位                                $    $  °           $    $  ANS000.BYTE163  $  y=(x1*256+x2)-100;
  $  053:排气相位原始值                              $    $  °           $    $  ANS000.BYTE166  $  y=(x1*256+x2)-100;
  $  054:空调压力                                    $    $  Mpa          $    $  ANS000.BYTE067  $  y=(x1*65.3+x2*0.3)/255;
  $  055:无极风扇占空比                              $    $  %            $    $  ANS000.BYTE102  $  y=x1*100.0/255;
  $  056:增压压力限制阀占空比                        $    $  %            $    $  ANS000.BYTE122  $  y=x1*100.0/255;
  $  057:计算节气门位置                              $    $  %            $    $  ANS000.BYTE057  $  y=x1*100.0/255;
  $  058:节气门电机PWM(脉宽调制)                     $    $  %            $    $  ANS000.BYTE058  $  y=x1*100.0/255;
  $  059:碳罐阀占空比                                $    $  %            $    $  ANS000.BYTE062  $  y=x1*100.0/255;
  $  060:旁通气量                                    $    $               $    $  ANS000.BYTE141  $  y=(((x1&0x0F)*4096)+x2*16+x3*15.0/255);
  $  061:冷却液温度传感器                            $    $  V            $    $  ANS000.BYTE041  $  y=x1*5.0/255;
  $  062:进气温度传感器                              $    $  V            $    $  ANS000.BYTE043  $  y=x1*5.0/255;
  $  063:进气压力传感器                              $    $  V            $    $  ANS000.BYTE045  $  y=x1*5.0/255;
  $  064:节气门位置传感器1                           $    $  V            $    $  ANS000.BYTE051  $  y=(x1*4.98+x2*0.02)/255;
  $  065:节气门位置传感器2                           $    $  V            $    $  ANS000.BYTE053  $  y=(x1*4.98+x2*0.02)/255;
  $  066:增压压力传感器                              $    $  V            $    $  ANS000.BYTE114  $  y=x1*5.00/255;
  $  067:增压气体温度传感器                          $    $  V            $    $  ANS000.BYTE116  $  y=x1*5.00/255;
  $  068:加速踏板1信号                               $    $  V            $    $  ANS000.BYTE103  $  y=x1*5.00/255;
  $  069:加速踏板2信号                               $    $  V            $    $  ANS000.BYTE104  $  y=x1*5.00/255;
  $  070:油压传感器                                  $    $  V            $    $  ANS000.BYTE109  $  y=x1*5.00/255;
  $  071:空调压力传感器                              $    $  V            $    $  ANS000.BYTE066  $  y=x1*5.00/255;
  $  072:巡航开关电压                                $    $  V            $    $  ANS000.BYTE143  $  y=x1*5.0/255;
  $  073:发动机冷却系统-低速风扇是否开启             $    $               $    $  ANS000.BYTE023  $  if(x1&0x01)y=@0000;else y=@0001;
  $  074:发动机冷却系统-高速风扇是否开启             $    $               $    $  ANS000.BYTE023  $  if(x1&0x02)y=@0000;else y=@0001;
  $  075:发动机冷却系统-风扇类型                     $    $               $    $  ANS000.BYTE023  $  if((x1&0x0F)<0x04)y=@01d2;else if((x1&0x0F)<0x08)y=@0249;else y=@001c;
  $  076:发动机稳态工况-点火电源开启                 $    $               $    $  ANS000.BYTE024  $  if(x1&0x01)y=@0000;else y=@0001;
  $  077:发动机稳态工况-主继电器工作                 $    $               $    $  ANS000.BYTE024  $  if(x1&0x02)y=@0000;else y=@0001;
  $  078:发动机动态工况-节气门处于怠速位置           $    $               $    $  ANS000.BYTE025  $  if(x1&0x01)y=@0000;else y=@0001;
  $  079:发动机动态工况-节气门处于部分打开位置       $    $               $    $  ANS000.BYTE025  $  if(x1&0x02)y=@0000;else y=@0001;
  $  080:发动机动态工况-节气门处于全开位置           $    $               $    $  ANS000.BYTE025  $  if(x1&0x04)y=@0000;else y=@0001;
  $  081:发动机动态工况-激活减速断油                 $    $               $    $  ANS000.BYTE025  $  if(x1&0x08)y=@0006;else y=@0007;
  $  082:发动机动态工况-激活加速加浓                 $    $               $    $  ANS000.BYTE025  $  if(x1&0x10)y=@0006;else y=@0007;
  $  083:发动机动态工况-是否D档(前进挡)              $    $               $    $  ANS000.BYTE025  $  if(x1&0x20)y=@0000;else y=@0001;
  $  084:发动机动态工况-是否R档(后退挡)              $    $               $    $  ANS000.BYTE025  $  if(x1&0x40)y=@0000;else y=@0001;
  $  085:发动机动态工况-是否N档(空挡)                $    $               $    $  ANS000.BYTE025  $  if(x1&0x80)y=@0000;else y=@0001;
  $  086:氧传感器-氧传感器1信号                      $    $               $    $  ANS000.BYTE027  $  if(x1&0x01)y=@0008;else y=@0009;
  $  087:氧传感器-氧传感器2信号                      $    $               $    $  ANS000.BYTE027  $  if(x1&0x02)y=@0008;else y=@0009;
  $  088:氧传感器-氧传感器1加热                      $    $               $    $  ANS000.BYTE027  $  if(x1&0x10)y=@000a;else y=@000b;
  $  089:氧传感器-氧传感器2加热                      $    $               $    $  ANS000.BYTE027  $  if(x1&0x20)y=@000a;else y=@000b;
  $  090:发动机怠速-踏板位置确认怠速                 $    $               $    $  ANS000.BYTE028  $  if(x1&0x01)y=@0000;else y=@0001;
  $  091:发动机怠速-制动器状态                       $    $               $    $  ANS000.BYTE028  $  if(x1&0x02)y=@0062;else y=@0063;
  $  092:发动机怠速-是否有空调请求                   $    $               $    $  ANS000.BYTE028  $  if(x1&0x04)y=@0000;else y=@0001;
  $  093:发动机怠速-后车窗/前挡风玻璃加热            $    $               $    $  ANS000.BYTE028  $  if(x1&0x08)y=@0004;else y=@0005;
  $  094:发动机怠速-动力转向开关                     $    $               $    $  ANS000.BYTE028  $  if(x1&0x10)y=@0004;else y=@0005;
  $  095:发动机怠速-真空泵状态                       $    $               $    $  ANS000.BYTE028  $  if(x1&0x40)y=@0004;else y=@0005;
  $  096:指示灯SVS/MIL-MIL(故障指示灯)激活           $    $               $    $  ANS000.BYTE029  $  if(x1&0x01)y=@0006;else y=@0007;
  $  097:指示灯SVS/MIL-MIL(故障指示灯)闪烁           $    $               $    $  ANS000.BYTE029  $  if(x1&0x02)y=@0000;else y=@0001;
  $  098:指示灯SVS/充电系统故障灯                    $    $               $    $  ANS000.BYTE029  $  if(x1&0x04)y=@0022;else y=@0059;
  $  099:指示灯SVS/MIL-SVS(系统维修指示灯)激活       $    $               $    $  ANS000.BYTE029  $  if(x1&0x10)y=@0006;else y=@0007;
  $  100:指示灯SVS/MIL-SVS(系统维修指示灯)闪烁       $    $               $    $  ANS000.BYTE029  $  if(x1&0x20)y=@0000;else y=@0001;
  $  101:空调系统-空调开启                           $    $               $    $  ANS000.BYTE031  $  if(x1&0x01)y=@0000;else y=@0001;
  $  102:空调系统-空调请求激活                       $    $               $    $  ANS000.BYTE031  $  if(x1&0x02)y=@0006;else y=@0007;
  $  103:空调系统-空调压缩机开                       $    $               $    $  ANS000.BYTE031  $  if(x1&0x04)y=@0000;else y=@0001;
  $  104:空调系统-空调断开或无空调                   $    $               $    $  ANS000.BYTE031  $  if(x1&0x08)y=@0000;else y=@0001;
  $  105:空调系统-空调因温度断开                     $    $               $    $  ANS000.BYTE031  $  if(x1&0x10)y=@0000;else y=@0001;
  $  106:空调系统-怠速转速因空调而增加               $    $               $    $  ANS000.BYTE031  $  if(x1&0x20)y=@0000;else y=@0001;
  $  107:空调系统-全负荷时关闭空调压缩机             $    $               $    $  ANS000.BYTE031  $  if(x1&0x40)y=@0000;else y=@0001;
  $  108:空调系统-空调中压开关开                     $    $               $    $  ANS000.BYTE031  $  if(x1&0x80)y=@0000;else y=@0001;
  $  109:AT/扭矩请求-AT转换离合器激活                $    $               $    $  ANS000.BYTE032  $  if(x1&0x08)y=@0006;else y=@0007;
  $  110:巡航控制-巡航功能                           $    $               $    $  ANS000.BYTE033  $  if(x1&0x01)y=@0004;else y=@0005;
  $  111:巡航控制-巡航状态                           $    $               $    $  ANS000.BYTE033  $  if(x1&0x02)y=@00e6;else y=@0048;
  $  112:巡航控制-按键状态                           $    $               $    $  ANS000.BYTE033  $  if((x1&0x1F)<0x04)y=@0066;else if((x1&0x1F)<0x08)y=@0067;else if((x1&0x1F)<0x0C)y=@0068;else if((x1&0x1F)<0x10)y=@0069;else if((x1&0x1F)<0x14)y=@006a;else if((x1&0x1F)<0x18)y=@006b;else y=@001c;
  $  113:发动机状态-刹车开关激活                     $    $               $    $  ANS000.BYTE034  $  if(x1&0x01)y=@0006;else y=@0007;
  $  114:发动机状态-刹车灯激活                       $    $               $    $  ANS000.BYTE034  $  if(x1&0x02)y=@0006;else y=@0007;
  $  115:发动机状态-涡轮增压旁通阀                   $    $               $    $  ANS000.BYTE034  $  if(x1&0x10)y=@0004;else y=@0005;
  $  116:发动机状态-防盗锁定状态                     $    $               $    $  ANS000.BYTE034  $  if(x1&0x20)y=@0064;else y=@0065;
  $  117:发动机状态-燃油反馈状态                     $    $               $    $  ANS000.BYTE034  $  if(x1&0x40)y=@006c;else y=@006d;
  $  118:发动机状态-可变气门升程阀状态(VVL阀)        $    $               $    $  ANS000.BYTE034  $  if(x1&0x80)y=@0004;else y=@0005;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7E0 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
