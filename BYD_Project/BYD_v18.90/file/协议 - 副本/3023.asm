
    车型ID：3023

    模拟：协议模拟-->3023

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~72F

进入命令:

  $~  REQ000:727 02 10 01 00 00 00 00 00       $~  ANS000:72F 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:727 02 3E 80 00 00 00 00 00       $!  ANS000:72F 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:727 03 19 02 09 00 00 00 00       $#  ANS000:72F 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/d1000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:727 04 14 FF FF FF 00 00 00       $$  ANS000:72F 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:727 03 22 F1 93 00 00 00 00       $%  ANS000:72F 03 22 F1 93 00 00 00 00
  $%  REQ001:727 03 22 F1 94 00 00 00 00       $%  ANS001:72F 03 22 F1 94 00 00 00 00
  $%  REQ002:727 03 22 F1 95 00 00 00 00       $%  ANS002:72F 03 22 F1 95 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],(x1%1000-x1%100)/100,(x1%100-x1%10)/10,x1%10);
  $%  001:硬件日期:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0197,x2,@0198,x3,@0199);
  $%  002:软件编号:        $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%02X%02X%02X%02X%02X%02X%02X%02X%02X],x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%d%d.%d%d],((x1*256+x2)%100000-(x1*256+x2)%10000)/10000,((x1*256+x2)%10000-(x1*256+x2)%1000)/1000,((x1*256+x2)%1000-(x1*256+x2)%100)/100,((x1*256+x2)%100-(x1*256+x2)%10)/10,(x1*256+x2)%10);
  $%  004:软件日期:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0197,x2,@0198,x3,@0199);
  $%  005:修改次数:        $%    $%  ANS002.BYTE009  $%  y=x1;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:727 03 22 94 40 00 00 00 00       $  ANS000:72F 03 22 94 40 00 00 00 00
  $  REQ001:727 03 22 94 41 00 00 00 00       $  ANS001:72F 03 22 94 41 00 00 00 00
  $  REQ002:727 03 22 94 42 00 00 00 00       $  ANS002:72F 03 22 94 42 00 00 00 00
  $  REQ003:727 03 22 94 43 00 00 00 00       $  ANS003:72F 03 22 94 43 00 00 00 00
  $  REQ004:727 03 22 94 44 00 00 00 00       $  ANS004:72F 03 22 94 44 00 00 00 00
  $  REQ005:727 03 22 94 45 00 00 00 00       $  ANS005:72F 03 22 94 45 00 00 00 00
  $  REQ006:727 03 22 94 46 00 00 00 00       $  ANS006:72F 03 22 94 46 00 00 00 00
  $  REQ007:727 03 22 94 49 00 00 00 00       $  ANS007:72F 03 22 94 49 00 00 00 00
  $  REQ008:727 03 22 94 4A 00 00 00 00       $  ANS008:72F 03 22 94 4A 00 00 00 00
  $  REQ009:727 03 22 94 4B 00 00 00 00       $  ANS009:72F 03 22 94 4B 00 00 00 00
  $  REQ010:727 03 22 94 4C 00 00 00 00       $  ANS010:72F 03 22 94 4C 00 00 00 00
  $  REQ011:727 03 22 94 4D 00 00 00 00       $  ANS011:72F 03 22 94 4D 00 00 00 00
  $  REQ012:727 03 22 94 4F 00 00 00 00       $  ANS012:72F 03 22 94 4F 00 00 00 00
  $  REQ013:727 03 22 94 56 00 00 00 00       $  ANS013:72F 03 22 94 56 00 00 00 00
  $  REQ014:727 03 22 94 57 00 00 00 00       $  ANS014:72F 03 22 94 57 00 00 00 00
  $  REQ015:727 03 22 94 58 00 00 00 00       $  ANS015:72F 03 22 94 58 00 00 00 00
  $  REQ016:727 03 22 94 59 00 00 00 00       $  ANS016:72F 03 22 94 59 00 00 00 00
  $  REQ017:727 03 22 94 5A 00 00 00 00       $  ANS017:72F 03 22 94 5A 00 00 00 00
  $  REQ018:727 03 22 94 5B 00 00 00 00       $  ANS018:72F 03 22 94 5B 00 00 00 00
  $  REQ019:727 03 22 94 5C 00 00 00 00       $  ANS019:72F 03 22 94 5C 00 00 00 00
  $  REQ020:727 03 22 94 5D 00 00 00 00       $  ANS020:72F 03 22 94 5D 00 00 00 00
  $  REQ021:727 03 22 94 5E 00 00 00 00       $  ANS021:72F 03 22 94 5E 00 00 00 00
  $  REQ022:727 03 22 94 5F 00 00 00 00       $  ANS022:72F 03 22 94 5F 00 00 00 00
  $  REQ023:727 03 22 94 60 00 00 00 00       $  ANS023:72F 03 22 94 60 00 00 00 00
  $  REQ024:727 03 22 94 61 00 00 00 00       $  ANS024:72F 03 22 94 61 00 00 00 00
  $  REQ025:727 03 22 94 62 00 00 00 00       $  ANS025:72F 03 22 94 62 00 00 00 00
  $  REQ026:727 03 22 94 63 00 00 00 00       $  ANS026:72F 03 22 94 63 00 00 00 00
  $  REQ027:727 03 22 94 64 00 00 00 00       $  ANS027:72F 03 22 94 64 00 00 00 00
  $  REQ028:727 03 22 94 65 00 00 00 00       $  ANS028:72F 03 22 94 65 00 00 00 00
  $  REQ029:727 03 22 94 66 00 00 00 00       $  ANS029:72F 03 22 94 66 00 00 00 00
  $  REQ030:727 03 22 94 67 00 00 00 00       $  ANS030:72F 03 22 94 67 00 00 00 00
  $  REQ031:727 03 22 94 68 00 00 00 00       $  ANS031:72F 03 22 94 68 00 00 00 00
  $  REQ032:727 03 22 94 69 00 00 00 00       $  ANS032:72F 03 22 94 69 00 00 00 00
  $  REQ033:727 03 22 94 6A 00 00 00 00       $  ANS033:72F 03 22 94 6A 00 00 00 00
  $  REQ034:727 03 22 94 6B 00 00 00 00       $  ANS034:72F 03 22 94 6B 00 00 00 00
  $  REQ035:727 03 22 94 6C 00 00 00 00       $  ANS035:72F 03 22 94 6C 00 00 00 00
  $  REQ036:727 03 22 94 6D 00 00 00 00       $  ANS036:72F 03 22 94 6D 00 00 00 00
  $  REQ037:727 03 22 94 6E 00 00 00 00       $  ANS037:72F 03 22 94 6E 00 00 00 00
  $  REQ038:727 03 22 94 6F 00 00 00 00       $  ANS038:72F 03 22 94 6F 00 00 00 00
  $  REQ039:727 03 22 94 79 00 00 00 00       $  ANS039:72F 03 22 94 79 00 00 00 00
  $  REQ040:727 03 22 94 7A 00 00 00 00       $  ANS040:72F 03 22 94 7A 00 00 00 00
  $  REQ041:727 03 22 94 70 00 00 00 00       $  ANS041:72F 03 22 94 70 00 00 00 00
  $  REQ042:727 03 22 94 71 00 00 00 00       $  ANS042:72F 03 22 94 71 00 00 00 00
  $  REQ043:727 03 22 94 72 00 00 00 00       $  ANS043:72F 03 22 94 72 00 00 00 00
  $  REQ044:727 03 22 94 73 00 00 00 00       $  ANS044:72F 03 22 94 73 00 00 00 00
  $  REQ045:727 03 22 94 74 00 00 00 00       $  ANS045:72F 03 22 94 74 00 00 00 00
  $  REQ046:727 03 22 94 75 00 00 00 00       $  ANS046:72F 03 22 94 75 00 00 00 00
  $  REQ047:727 03 22 94 76 00 00 00 00       $  ANS047:72F 03 22 94 76 00 00 00 00
  $  REQ048:727 03 22 94 77 00 00 00 00       $  ANS048:72F 03 22 94 77 00 00 00 00
  $  REQ049:727 03 22 94 78 00 00 00 00       $  ANS049:72F 03 22 94 78 00 00 00 00
  $  REQ050:727 03 22 94 7B 00 00 00 00       $  ANS050:72F 03 22 94 7B 00 00 00 00

  $  000.车外温度                                      $    $  ℃       $    $  ANS000.BYTE004  $  y=SPRINTF([%.1f],(x2*256+x1)*0.5-40);
  $  001.车内温度                                      $    $  ℃       $    $  ANS001.BYTE004  $  y=SPRINTF([%.1f],(x2*256+x1)*0.5-40);
  $  002.蒸发器温度                                    $    $  ℃       $    $  ANS002.BYTE004  $  y=SPRINTF([%.1f],(x2*256+x1)*0.5-40);
  $  003.主驾吹面通道温度                              $    $  ℃       $    $  ANS003.BYTE004  $  y=SPRINTF([%.1f],(x2*256+x1)*0.5-40);
  $  004.主驾吹脚通道温度                              $    $  ℃       $    $  ANS004.BYTE004  $  y=SPRINTF([%.1f],(x2*256+x1)*0.5-40);
  $  005.副驾吹面通道温度                              $    $  ℃       $    $  ANS005.BYTE004  $  y=SPRINTF([%.1f],(x2*256+x1)*0.5-40);
  $  006.副驾吹脚通道温度                              $    $  ℃       $    $  ANS006.BYTE004  $  y=SPRINTF([%.1f],(x2*256+x1)*0.5-40);
  $  007.出风模式电机位置百分比                        $    $  %        $    $  ANS007.BYTE004  $  y=x1;
  $  008.内外循环电机位置百分比                        $    $  %        $    $  ANS008.BYTE004  $  y=x1;
  $  009.主驾冷暖电机位置百分比                        $    $  %        $    $  ANS009.BYTE004  $  y=x1;
  $  010.副驾冷暖电机位置百分比                        $    $  %        $    $  ANS010.BYTE004  $  y=x1;
  $  011.电动压缩机占空比                              $    $  %        $    $  ANS011.BYTE004  $  y=x1;
  $  012.电源电压                                      $    $  V        $    $  ANS012.BYTE004  $  y=SPRINTF([%.1f],x1*0.1);
  $  013.空调软件当前工作模式                          $    $           $    $  ANS013.BYTE004  $  switxh(x1)0x01: y=@0057;0x02: y=@0058;0x03: y=@0059;0x04: y=@005a;0x05: y=@005b;0x06: y=@005c;0x07: y=@005d;0x08: y=@005e;0x09: y=@005f;default: y=@0001;
  $  014.风速                                          $    $           $    $  ANS014.BYTE004  $  switxh(x1)0x00: y=@004f;0x01: y=@0050;0x02: y=@0051;0x03: y=@0052;0x04: y=@0053;0x05: y=@0054;0x06: y=@0055;0x07: y=@0056;default: y=@0001;
  $  015.模式                                          $    $           $    $  ANS015.BYTE004  $  switxh(x1)0x00: y=@006d;0x01: y=@006e;0x02: y=@006f;0x03: y=@0070;0x04: y=@0071;0x05: y=@0072;0x06: y=@0073;0x07: y=@0074;default: y=@0001;
  $  016.高压压力值                                    $    $  bar      $    $  ANS016.BYTE004  $  y=SPRINTF([%.1f],(x2*256+x1)*0.1);
  $  017.空调散热风扇需求占空比                        $    $  %        $    $  ANS017.BYTE004  $  y=x1;
  $  018.散热风扇实际控制的占空比                      $    $  %        $    $  ANS018.BYTE004  $  y=x1;
  $  019.风加热PTC(辅助加热)主驾占空比                 $    $  %        $    $  ANS019.BYTE004  $  y=x1;
  $  020.风加热副驾PTC(辅助加热)占空比                 $    $  %        $    $  ANS020.BYTE004  $  y=x1;
  $  021.BMS(电池管理器)允许空调开启高压模块           $    $           $    $  ANS021.BYTE004  $  switxh(x1)0x00: y=@0003;0x01: y=@006a;0x02: y=@006b;0x03: y=@006c;default: y=@0001;
  $  022.OK灯状态                                      $    $           $    $  ANS022.BYTE004  $  switxh(x1)0x00: y=@0067;0x01: y=@0068;0x02: y=@0069;default: y=@0001;
  $  023.电池热管理需求                                $    $           $    $  ANS023.BYTE004  $  switxh(x1)0x00: y=@0060;0x01: y=@0061;0x02: y=@0062;0x03: y=@0063;0x04: y=@0064;0x05: y=@0065;0x06: y=@0066;0x07: y=@004c;default: y=@0001;
  $  024.空调压缩机限功率档位                          $    $           $    $  ANS024.BYTE004  $  switxh(x1)0x00: y=@0045;0x01: y=@0046;0x02: y=@0047;0x03: y=@0048;default: y=@0001;
  $  025.板换出口侧冷却液温度信息                      $    $  ℃       $    $  ANS025.BYTE004  $  y=SPRINTF([%.1f],(x2*256+x1)*0.5-40);
  $  026.板式换热器出口冷媒压力                        $    $  bar      $    $  ANS026.BYTE004  $  y=SPRINTF([%.1f],x1*0.1);
  $  027.板式换热器出口冷媒温度                        $    $  ℃       $    $  ANS027.BYTE004  $  y=SPRINTF([%.1f],(x2*256+x1)*0.5-40);
  $  028.电池热管理水泵反馈占空比                      $    $  %        $    $  ANS028.BYTE004  $  y=x1;
  $  029.电磁阀状态                                    $    $           $    $  ANS029.BYTE004  $  switxh(x1)0x00: y=@0012;0x01: y=@0010;default: y=@0001;
  $  030.电子膨胀阀位置                                $    $  STEP     $    $  ANS030.BYTE004  $  y=(x1*256+x2);
  $  031.板式换热器出口冷媒过热度                      $    $  ℃       $    $  ANS031.BYTE004  $  y=SPRINTF([%.1f],(x2*256+x1)*0.5-40);
  $  032.空调请求开发动机                              $    $           $    $  ANS032.BYTE004  $  switxh(x1)0x00: y=@003f;0x01: y=@0044;default: y=@0001;
  $  033.空调请求开发动机原因                          $    $           $    $  ANS033.BYTE004  $  switxh(x1)0x00: y=@003f;0x01: y=@0040;0x02: y=@0041;0x03: y=@0042;0x04: y=@0043;default: y=@0001;
  $  034.空调暖风水泵工作状态                          $    $           $    $  ANS034.BYTE004  $  switxh(x1)0x00: y=@004d;0x01: y=@004e;default: y=@0001;
  $  035.读取PTC(辅助加热)软件版本号                   $    $           $    $  ANS035.BYTE004  $  y=x1;
  $  036.主驾侧PTC(辅助加热)芯体温度                   $    $  ℃       $    $  ANS036.BYTE004  $  y=SPRINTF([%.1f],x1-40);
  $  037.副驾侧PTC(辅助加热)芯体温度                   $    $  ℃       $    $  ANS037.BYTE004  $  y=SPRINTF([%.1f],x1-40);
  $  038.主驾侧PTC(辅助加热)预置档位                   $    $  %        $    $  ANS038.BYTE004  $  y=x1;
  $  039.电池冷却系统状态                              $    $           $    $  ANS039.BYTE004  $  switxh(x1)0x00: y=@0049;0x01: y=@004a;0x02: y=@004b;0x03: y=@004c;0x04: y=@001e;default: y=@0001;
  $  040.电池热管理水泵需求占空比                      $    $  %        $    $  ANS040.BYTE004  $  y=x1;
  $  041.副驾侧PTC(辅助加热)预置档位                   $    $  %        $    $  ANS041.BYTE004  $  y=x1;
  $  042.PTC(辅助加热)消耗功率                         $    $  W        $    $  ANS042.BYTE004  $  y=SPRINTF([%.1f],x1*50);
  $  043.PTC(辅助加热)控制板温度                       $    $  ℃       $    $  ANS043.BYTE004  $  y=SPRINTF([%.1f],x1-40);
  $  044.PTC(辅助加热)散热片温度                       $    $  ℃       $    $  ANS044.BYTE004  $  y=SPRINTF([%.1f],x1-40);
  $  045.PTC(辅助加热)高压电源值                       $    $  V        $    $  ANS045.BYTE004  $  y=SPRINTF([%.1f],x1*2);
  $  046.PTC(辅助加热)负载电流值                       $    $  A        $    $  ANS046.BYTE004  $  y=SPRINTF([%.1f],x1*0.2);
  $  047.前电机控制器对电子风扇占空比的请求            $    $  %        $    $  ANS047.BYTE004  $  y=x1;
  $  048.OBC(车载充电器)对电子风扇的占空比请求         $    $  %        $    $  ANS048.BYTE004  $  y=x1;
  $  049.ECM(发动机控制器)对电子风扇的占空比请求       $    $  %        $    $  ANS049.BYTE004  $  y=x1;
  $  050.风加热PTC(辅助加热)限功率状态                 $    $           $    $  ANS050.BYTE004  $  switxh(x1)0x00: y=@0045;0x01: y=@0075;0x02: y=@0076;0x03: y=@0077;default: y=@0001;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:727 30 08 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
