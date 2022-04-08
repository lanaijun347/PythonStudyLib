
    车型ID：2e0a

    模拟：协议模拟-->2e0a

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~74B

进入命令:

  $~  REQ000:743 02 10 01 00 00 00 00 00       $~  ANS000:74B 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:743 02 3E 80 00 00 00 00 00       $!  ANS000:74B 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:743 03 19 02 09 00 00 00 00       $#  ANS000:74B 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/78000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:743 04 14 FF FF FF 00 00 00       $$  ANS000:74B 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:743 03 22 F1 93 00 00 00 00       $%  ANS000:74B 03 22 F1 93 00 00 00 00
  $%  REQ001:743 03 22 F1 94 00 00 00 00       $%  ANS001:74B 03 22 F1 94 00 00 00 00
  $%  REQ002:743 03 22 F1 95 00 00 00 00       $%  ANS002:74B 03 22 F1 95 00 00 00 00
  $%  REQ003:743 03 22 F1 97 00 00 00 00       $%  ANS003:74B 03 22 F1 97 00 00 00 00

  $%  000:硬件版本:          $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],(x1%1000-x1%100)/100,(x1%100-x1%10)/10,x1%10);
  $%  001:硬件日期:          $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%d.%02d.%02d],x1+2000,x2,x3);
  $%  002:软件编号:          $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%02X%02X%02X%02X%02X%02X%02X%02X%02X],x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:          $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%d%d.%d%d],((x1*256+x2)%100000-(x1*256+x2)%10000)/10000,((x1*256+x2)%10000-(x1*256+x2)%1000)/1000,((x1*256+x2)%1000-(x1*256+x2)%100)/100,((x1*256+x2)%100-(x1*256+x2)%10)/10,(x1*256+x2)%10);
  $%  004:软件日期:          $%    $%  ANS002.BYTE006  $%  y=SPRINTF([%d.%02d.%02d],x1+2000,x2,x3);
  $%  005:修改次数:          $%    $%  ANS002.BYTE009  $%  y=x1;
  $%  006:软件版本号:        $%    $%  ANS003.BYTE004  $%  y=SPRINTF([%c%c%c%c%c%c%c%c],x1,x2,x3,x4,x5,x6,x7,x8);

;******************************************************************************************************************************************************

读数据流: 

  $)  00.数据流
  $  00.数据流
  $  REQ000:743 03 22 00 01 00 00 00 00       $  ANS000:74B 03 22 00 01 00 00 00 00
  $  REQ001:743 03 22 00 02 00 00 00 00       $  ANS001:74B 03 22 00 02 00 00 00 00
  $  REQ002:743 03 22 00 03 00 00 00 00       $  ANS002:74B 03 22 00 03 00 00 00 00
  $  REQ003:743 03 22 00 04 00 00 00 00       $  ANS003:74B 03 22 00 04 00 00 00 00
  $  REQ004:743 03 22 00 05 00 00 00 00       $  ANS004:74B 03 22 00 05 00 00 00 00
  $  REQ005:743 03 22 00 06 00 00 00 00       $  ANS005:74B 03 22 00 06 00 00 00 00
  $  REQ006:743 03 22 00 07 00 00 00 00       $  ANS006:74B 03 22 00 07 00 00 00 00
  $  REQ007:743 03 22 00 08 00 00 00 00       $  ANS007:74B 03 22 00 08 00 00 00 00
  $  REQ008:743 03 22 00 09 00 00 00 00       $  ANS008:74B 03 22 00 09 00 00 00 00
  $  REQ009:743 03 22 00 0A 00 00 00 00       $  ANS009:74B 03 22 00 0A 00 00 00 00
  $  REQ010:743 03 22 00 0B 00 00 00 00       $  ANS010:74B 03 22 00 0B 00 00 00 00
  $  REQ011:743 03 22 00 0C 00 00 00 00       $  ANS011:74B 03 22 00 0C 00 00 00 00
  $  REQ012:743 03 22 00 0D 00 00 00 00       $  ANS012:74B 03 22 00 0D 00 00 00 00
  $  REQ013:743 03 22 00 0E 00 00 00 00       $  ANS013:74B 03 22 00 0E 00 00 00 00
  $  REQ014:743 03 22 01 01 00 00 00 00       $  ANS014:74B 03 22 01 01 00 00 00 00
  $  REQ015:743 03 22 01 02 00 00 00 00       $  ANS015:74B 03 22 01 02 00 00 00 00
  $  REQ016:743 03 22 01 04 00 00 00 00       $  ANS016:74B 03 22 01 04 00 00 00 00
  $  REQ017:743 03 22 01 06 00 00 00 00       $  ANS017:74B 03 22 01 06 00 00 00 00
  $  REQ018:743 03 22 01 07 00 00 00 00       $  ANS018:74B 03 22 01 07 00 00 00 00
  $  REQ019:743 03 22 01 08 00 00 00 00       $  ANS019:74B 03 22 01 08 00 00 00 00
  $  REQ020:743 03 22 01 09 00 00 00 00       $  ANS020:74B 03 22 01 09 00 00 00 00
  $  REQ021:743 03 22 00 16 00 00 00 00       $  ANS021:74B 03 22 00 16 00 00 00 00
  $  REQ022:743 03 22 00 1F 00 00 00 00       $  ANS022:74B 03 22 00 1F 00 00 00 00
  $  REQ023:743 03 22 00 20 00 00 00 00       $  ANS023:74B 03 22 00 20 00 00 00 00
  $  REQ024:743 03 22 00 21 00 00 00 00       $  ANS024:74B 03 22 00 21 00 00 00 00
  $  REQ025:743 03 22 00 22 00 00 00 00       $  ANS025:74B 03 22 00 22 00 00 00 00
  $  REQ026:743 03 22 00 23 00 00 00 00       $  ANS026:74B 03 22 00 23 00 00 00 00
  $  REQ027:743 03 22 00 24 00 00 00 00       $  ANS027:74B 03 22 00 24 00 00 00 00
  $  REQ028:743 03 22 00 25 00 00 00 00       $  ANS028:74B 03 22 00 25 00 00 00 00
  $  REQ029:743 03 22 00 26 00 00 00 00       $  ANS029:74B 03 22 00 26 00 00 00 00
  $  REQ030:743 03 22 00 2F 00 00 00 00       $  ANS030:74B 03 22 00 2F 00 00 00 00
  $  REQ031:743 03 22 00 1D 00 00 00 00       $  ANS031:74B 03 22 00 1D 00 00 00 00
  $  REQ032:743 03 22 00 1E 00 00 00 00       $  ANS032:74B 03 22 00 1E 00 00 00 00
  $  REQ033:743 03 22 00 36 00 00 00 00       $  ANS033:74B 03 22 00 36 00 00 00 00
  $  REQ034:743 03 22 00 37 00 00 00 00       $  ANS034:74B 03 22 00 37 00 00 00 00
  $  REQ035:743 03 22 00 38 00 00 00 00       $  ANS035:74B 03 22 00 38 00 00 00 00
  $  REQ036:743 03 22 00 39 00 00 00 00       $  ANS036:74B 03 22 00 39 00 00 00 00
  $  REQ037:743 03 22 00 40 00 00 00 00       $  ANS037:74B 03 22 00 40 00 00 00 00
  $  REQ038:743 03 22 00 41 00 00 00 00       $  ANS038:74B 03 22 00 41 00 00 00 00
  $  REQ039:743 03 22 00 42 00 00 00 00       $  ANS039:74B 03 22 00 42 00 00 00 00

  $  000.档位故障                        $    $           $    $  ANS000.BYTE004  $  switxh(x1)0x00: y=@001f;0x01: y=@0020;default: y=@02ae;
  $  001.过载告警                        $    $           $    $  ANS001.BYTE004  $  switxh(x1)0x00: y=@001f;0x01: y=@0020;default: y=@02ae;
  $  002.堵转告警                        $    $           $    $  ANS002.BYTE004  $  switxh(x1)0x00: y=@001f;0x01: y=@0020;default: y=@02ae;
  $  003.油门错误                        $    $           $    $  ANS003.BYTE004  $  switxh(x1)0x00: y=@001f;0x01: y=@0020;default: y=@02ae;
  $  004.碰撞告警                        $    $           $    $  ANS004.BYTE004  $  switxh(x1)0x00: y=@0108;0x01: y=@04bc;0x02: y=@04bd;0x03: y=@0108;default: y=@02ae;
  $  005.主接触器状态                    $    $           $    $  ANS005.BYTE004  $  switxh(x1)0x00: y=@0047;0x01: y=@0048;default: y=@02ae;
  $  006.整车控制器启动允许              $    $           $    $  ANS006.BYTE004  $  switxh(x1)0x00: y=@00e4;0x01: y=@02c7;default: y=@02ae;
  $  007.整车控制器防盗解除状态          $    $           $    $  ANS007.BYTE004  $  switxh((x2*256+x1))0x00: y=@04be;0x01: y=@001f;0x02: y=@0020;default: y=@02ae;
  $  008.整车档位                        $    $           $    $  ANS008.BYTE004  $  switxh(x1)0x01: y=@00d7;0x02: y=@0071;0x03: y=@0072;0x04: y=@00d8;default: y=@02ae;
  $  009.整车工作模式                    $    $           $    $  ANS009.BYTE004  $  switxh(x1)0x00: y=@02b1;0x01: y=@030d;0x06: y=@0312;0x07: y=@0313;0x08: y=@07bd;default: y=@02ae;
  $  010.整车运行模式                    $    $           $    $  ANS010.BYTE004  $  switxh(x1)0x01: y=@00d9;0x02: y=@00da;0x03: y=@07be;0x04: y=@07bf;0x05: y=@07c0;default: y=@02ae;
  $  011.动力系统状态                    $    $           $    $  ANS011.BYTE004  $  switxh((x2*256+x1))0x00: y=@0045;0x01: y=@02ba;0x02: y=@02bb;0x03: y=@02bc;default: y=@02ae;
  $  012.水泵状态                        $    $           $    $  ANS012.BYTE004  $  switxh((x2*256+x1))0x00: y=@002d;0x01: y=@0000;0x02: y=@010e;default: y=@02ae;
  $  013.巡航状态                        $    $           $    $  ANS013.BYTE004  $  switxh(x1)0x00: y=@02bd;0x01: y=@02be;default: y=@02ae;
  $  014.油门深度                        $    $  %        $    $  ANS014.BYTE004  $  y=(x2*256+x1);
  $  015.刹车深度                        $    $  %        $    $  ANS015.BYTE004  $  y=(x2*256+x1);
  $  016.前驱目标扭矩                    $    $  NM       $    $  ANS016.BYTE004  $  y=SPRINTF([%d],(x2*256+x1)*0.1-500);
  $  017.巡航目标车速                    $    $  Km/h     $    $  ANS017.BYTE004  $  y=SPRINTF([%d],(x2*256+x1)*0.1);
  $  018.OK灯状态                        $    $           $    $  ANS018.BYTE004  $  switxh(x1)0x00: y=@02bf;0x01: y=@02c0;0x02: y=@02c1;default: y=@0002;
  $  019.风扇请求状态                    $    $  %        $    $  ANS019.BYTE004  $  y=x1;
  $  020.真空泵状态                      $    $  %        $    $  ANS020.BYTE004  $  switxh(x1)0x00: y=@04c0;0x01: y=@04c1;default: y=@0002;
  $  021.EPB(电子驻车系统)状态           $    $           $    $  ANS021.BYTE004  $  switxh(x1)0x00: y=@0009;0x01: y=@0004;0x02: y=@00ea;0x03: y=@00eb;0x04: y=@0046;default: y=@0002;
  $  022.水温值                          $    $           $    $  ANS022.BYTE004  $  y=SPRINTF([%d],x1-40);
  $  023.真空压力值                      $    $           $    $  ANS023.BYTE004  $  y=x1;
  $  024.水温报警                        $    $           $    $  ANS024.BYTE004  $  switxh(x1)0x00: y=@0045;0x01: y=@07c1;default: y=@0002;
  $  025.真空压力报警                    $    $           $    $  ANS025.BYTE004  $  if(x1==0) y=@0045;else if(x1==1) y=@0231;else if(x1==2) y=@0232;else y=@0002;
  $  026.真空泵工作时间                  $    $  Min      $    $  ANS026.BYTE004  $  y=(x4*256*256*256+x3*256*256+x2*256+x1);
  $  027.真空泵继电器状态                $    $           $    $  ANS027.BYTE004  $  if(x1==0) y=@0045;else if(x1==1) y=@04c5;else if(x1==2) y=@04c6;else if(x1==3) y=@04c7;else y=@0002;
  $  028.整车车速                        $    $  km/h     $    $  ANS028.BYTE004  $  if((x1>=0)&&(x1<=7530)) y=SPRINTF([%.1f],x1*0.1);else if(x1==65535) y=@00c7;else y=@0002;
  $  029.总里程                          $    $  km       $    $  ANS029.BYTE004  $  y=SPRINTF([%.1f],(x3*256*256+x2*256+x1)/10);
  $  030.倾角标定工作信息/是否校准       $    $           $    $  ANS030.BYTE004  $  if((x2*256+x1)==0) y=@00ec;else if((x2*256+x1)==1) y=@00ed;else y=@02ae;
  $  031.坡道坡度                        $    $           $    $  ANS031.BYTE004  $  if(((x2*256+x1)>=0)&&((x2*256+x1)<=200)) y=(x2*256+x1)-100;else if((x2*256+x1)==32767) y=@04c3;else y=@02ae;
  $  032.售后软件版本号                  $    $           $    $  ANS032.BYTE004  $  y=SPRINTF([%d.%d.%d],x1,x2,x3);
  $  033.制动深度电压1                   $    $  V        $    $  ANS033.BYTE004  $  y=SPRINTF([%.3f],(x2*256+x1)/1000);
  $  034.制动深度电压2                   $    $  V        $    $  ANS034.BYTE004  $  y=SPRINTF([%.3f],(x2*256+x1)/1000);
  $  035.油门深度电压1                   $    $  V        $    $  ANS035.BYTE004  $  y=SPRINTF([%.3f],(x2*256+x1)/1000);
  $  036.油门深度电压2                   $    $  V        $    $  ANS036.BYTE004  $  y=SPRINTF([%.3f],(x2*256+x1)/1000);
  $  037.巡航配置状态                    $    $           $    $  ANS037.BYTE004  $  switxh((x2*256+x1))0x00: y=@0013;0x01: y=@034e;0x02: y=@034f;default: y=@0002;
  $  038.制动开关状态                    $    $           $    $  ANS038.BYTE004  $  if((x2*256+x1)==0) y=@00c0;else if((x2*256+x1)==1) y=@0003;else y=@0002;
  $  039.VIN是否写入                     $    $           $    $  ANS039.BYTE004  $  if((x2*256+x1)==0) y=@0265;else if((x2*256+x1)==1) y=@04bf;else y=@0002;

  $)  01.读取巡航配置功能
  $  01.读取巡航配置功能
  $  REQ000:743 03 22 00 40 00 00 00 00       $  ANS000:74B 03 22 00 40 00 00 00 00

  $  000.巡航配置状态       $    $       $    $  ANS000.BYTE004  $  switxh((x2*256+x1))0x00: y=@0013;0x01: y=@034e;0x02: y=@034f;default: y=@0002;

;******************************************************************************************************************************************************

动作测试:

$^ 00.写真空泵工作时间 
 $^TYPE:2
$^BUTTON:输入
$^REQ00:743 07 2E 01 01 XX XX XX XX     $^

$^DSP:写真空泵工作时间->Min
$^TIP:标定条件要求 (1) 整车上OK档电 
$^TIP:请输入测试值(范围:0~72000) 
$^IN_F:y=(x4*256*256*256+x3*256*256+x2*256+x1);
$^RANGE:0,72000
;----------------------------------------------------------------------------------------------------

30帧:

  $FC REQ000:743 30 01 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
