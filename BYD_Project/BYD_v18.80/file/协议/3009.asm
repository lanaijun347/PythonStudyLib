
    车型ID：3009

    模拟：协议模拟-->3009

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7E9

进入命令:

  $~  REQ000:7E1 02 10 01 00 00 00 00 00       $~  ANS000:7E9 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7E1 02 3E 80 00 00 00 00 00       $!  ANS000:7E9 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7E1 05 18 00 FF FF FF 00 00       $#  ANS000:7E9 05 18 00 FF FF FF 00 00

		控制公式：
			y=(x1<<8)+x2;

  ANS000.BYTE02 控制故障码个数，从$#ANS000.BYTE3$#开始每$#4$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/b1030000_2BYTE


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="1"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7E1 04 14 FF FF FF 00 00 00       $$  ANS000:7E9 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7E1 03 22 F1 92 00 00 00 00       $%  ANS000:7E9 03 22 F1 92 00 00 00 00
  $%  REQ001:7E1 03 22 F1 93 00 00 00 00       $%  ANS001:7E9 03 22 F1 93 00 00 00 00
  $%  REQ002:7E1 03 22 F1 94 00 00 00 00       $%  ANS002:7E9 03 22 F1 94 00 00 00 00
  $%  REQ003:7E1 03 22 F1 95 00 00 00 00       $%  ANS003:7E9 03 22 F1 95 00 00 00 00
  $%  REQ004:7E1 03 22 F1 99 00 00 00 00       $%  ANS004:7E9 03 22 F1 99 00 00 00 00

  $%  000:硬件编号:            $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  001:硬件版本信息:        $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2);
  $%  002:软件编号:            $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%02X%02X%02X%02X%02X%02X%02X%02X%02X],x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:            $%    $%  ANS003.BYTE004  $%  y=SPRINTF([%d.%d%d.%d%d],((x1*256+x2)%100000-(x1*256+x2)%10000)/10000,((x1*256+x2)%10000-(x1*256+x2)%1000)/1000,((x1*256+x2)%1000-(x1*256+x2)%100)/100,((x1*256+x2)%100-(x1*256+x2)%10)/10,(x1*256+x2)%10);
  $%  004:编程日期:            $%    $%  ANS004.BYTE004  $%  HEX(x1,x2,x3,x4);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7E1 03 22 00 05 00 00 00 00       $  ANS000:7E9 03 22 00 05 00 00 00 00
  $  REQ001:7E1 03 22 00 06 00 00 00 00       $  ANS001:7E9 03 22 00 06 00 00 00 00
  $  REQ002:7E1 03 22 00 07 00 00 00 00       $  ANS002:7E9 03 22 00 07 00 00 00 00
  $  REQ003:7E1 03 22 00 08 00 00 00 00       $  ANS003:7E9 03 22 00 08 00 00 00 00
  $  REQ004:7E1 03 22 00 09 00 00 00 00       $  ANS004:7E9 03 22 00 09 00 00 00 00
  $  REQ005:7E1 03 22 00 0A 00 00 00 00       $  ANS005:7E9 03 22 00 0A 00 00 00 00
  $  REQ006:7E1 03 22 00 0B 00 00 00 00       $  ANS006:7E9 03 22 00 0B 00 00 00 00
  $  REQ007:7E1 03 22 00 0C 00 00 00 00       $  ANS007:7E9 03 22 00 0C 00 00 00 00
  $  REQ008:7E1 03 22 00 0D 00 00 00 00       $  ANS008:7E9 03 22 00 0D 00 00 00 00
  $  REQ009:7E1 03 22 00 10 00 00 00 00       $  ANS009:7E9 03 22 00 10 00 00 00 00
  $  REQ010:7E1 03 22 00 11 00 00 00 00       $  ANS010:7E9 03 22 00 11 00 00 00 00
  $  REQ011:7E1 03 22 00 12 00 00 00 00       $  ANS011:7E9 03 22 00 12 00 00 00 00
  $  REQ012:7E1 03 22 00 13 00 00 00 00       $  ANS012:7E9 03 22 00 13 00 00 00 00
  $  REQ013:7E1 03 22 00 15 00 00 00 00       $  ANS013:7E9 03 22 00 15 00 00 00 00
  $  REQ014:7E1 03 22 00 20 00 00 00 00       $  ANS014:7E9 03 22 00 20 00 00 00 00
  $  REQ015:7E1 03 22 00 21 00 00 00 00       $  ANS015:7E9 03 22 00 21 00 00 00 00
  $  REQ016:7E1 03 22 00 22 00 00 00 00       $  ANS016:7E9 03 22 00 22 00 00 00 00
  $  REQ017:7E1 03 22 00 23 00 00 00 00       $  ANS017:7E9 03 22 00 23 00 00 00 00
  $  REQ018:7E1 03 22 00 24 00 00 00 00       $  ANS018:7E9 03 22 00 24 00 00 00 00
  $  REQ019:7E1 03 22 00 25 00 00 00 00       $  ANS019:7E9 03 22 00 25 00 00 00 00
  $  REQ020:7E1 03 22 00 26 00 00 00 00       $  ANS020:7E9 03 22 00 26 00 00 00 00
  $  REQ021:7E1 03 22 00 27 00 00 00 00       $  ANS021:7E9 03 22 00 27 00 00 00 00
  $  REQ022:7E1 03 22 00 28 00 00 00 00       $  ANS022:7E9 03 22 00 28 00 00 00 00
  $  REQ023:7E1 03 22 00 29 00 00 00 00       $  ANS023:7E9 03 22 00 29 00 00 00 00
  $  REQ024:7E1 03 22 00 2A 00 00 00 00       $  ANS024:7E9 03 22 00 2A 00 00 00 00
  $  REQ025:7E1 03 22 01 00 00 00 00 00       $  ANS025:7E9 03 22 01 00 00 00 00 00
  $  REQ026:7E1 03 22 01 01 00 00 00 00       $  ANS026:7E9 03 22 01 01 00 00 00 00
  $  REQ027:7E1 03 22 01 02 00 00 00 00       $  ANS027:7E9 03 22 01 02 00 00 00 00
  $  REQ028:7E1 03 22 00 2B 00 00 00 00       $  ANS028:7E9 03 22 00 2B 00 00 00 00
  $  REQ029:7E1 03 22 00 2D 00 00 00 00       $  ANS029:7E9 03 22 00 2D 00 00 00 00

  $  000.制动踏板状态                                  $    $           $    $  ANS000.BYTE004  $  switxh(x1)0x00: y=@0004;0x01: y=@0003;0x02: y=@00c6;0x03: y=@00c7;default: y=@0002;
  $  001.加速踏板位置状态                              $    $           $    $  ANS001.BYTE004  $  switxh(x1)0x00: y=@0045;0x01: y=@00c7;default: y=@0002;
  $  002.加速踏板位置                                  $    $  %        $    $  ANS001.BYTE005  $  y=SPRINTF([%.2f],x1*0.392);
  $  003.节气门位置状态                                $    $           $    $  ANS002.BYTE004  $  switxh(x1)0x00: y=@0045;0x01: y=@00c7;default: y=@0002;
  $  004.节气门位置                                    $    $  %        $    $  ANS002.BYTE005  $  y=SPRINTF([%.2f],x1*0.392);
  $  005.换挡手柄                                      $    $           $    $  ANS003.BYTE004  $  switxh(x1)0x00: y=@0069;0x01: y=@0073;0x02: y=@0074;0x03: y=@0075;0x04: y=@0076;0x05: y=@0077;0x06: y=@0078;0x07: y=@0079;0x08: y=@007a;default: y=@0002;
  $  006.当前档位                                      $    $           $    $  ANS003.BYTE005  $  switxh(x1)0x00: y=@0069;0x01: y=@006a;0x02: y=@006b;0x03: y=@006c;0x04: y=@006d;0x05: y=@006e;0x06: y=@006f;0x07: y=@0070;0x08: y=@0071;0x09: y=@0072;default: y=@0002;
  $  007.TCU发动机传感器转速                           $    $  rpm      $    $  ANS004.BYTE004  $  y=SPRINTF([%.2f],(x1*256+x2)*0.25);
  $  008.输入轴1传感器转速                             $    $  rpm      $    $  ANS005.BYTE004  $  y=SPRINTF([%.2f],(x1*256+x2)*0.25);
  $  009.输入轴2传感器转速                             $    $  rpm      $    $  ANS006.BYTE004  $  y=SPRINTF([%.2f],(x1*256+x2)*0.25);
  $  010.TCU计算车速                                   $    $  km/h     $    $  ANS007.BYTE004  $  y=SPRINTF([%.1f],(x1*256+x2)*0.06875);
  $  011.TCU计算车速状态                               $    $           $    $  ANS007.BYTE006  $  switxh(x1)0x00: y=@0045;0x01: y=@00c7;default: y=@0002;
  $  012.CAN车速                                       $    $  km/h     $    $  ANS008.BYTE004  $  y=SPRINTF([%.1f],(x1*256+x2)*0.06875);
  $  013.CAN车速状态                                   $    $           $    $  ANS008.BYTE006  $  switxh(x1)0x00: y=@0045;0x01: y=@00c7;default: y=@0002;
  $  014.电瓶电压                                      $    $  V        $    $  ANS009.BYTE004  $  y=SPRINTF([%.1f],(x1*256+x2)*0.0175);
  $  015.传感器电压                                    $    $  V        $    $  ANS009.BYTE006  $  y=SPRINTF([%.2f],(x1*256+x2)*0.00586);
  $  016.冷却液温度                                    $    $  oC       $    $  ANS010.BYTE004  $  y=SPRINTF([%d],x1-60);
  $  017.进气温度                                      $    $  oC       $    $  ANS010.BYTE005  $  y=SPRINTF([%d],x1-60);
  $  018.高原系数                                      $    $           $    $  ANS011.BYTE004  $  y=SPRINTF([%.2f],x1*0.0156);
  $  019.CAN发动机转速                                 $    $  rpm      $    $  ANS012.BYTE004  $  y=SPRINTF([%d],(x1*256+x2)/4);
  $  020.CAN发动机转速状态                             $    $           $    $  ANS012.BYTE006  $  switxh(x1)0x00: y=@0045;0x01: y=@00c7;default: y=@0002;
  $  021.主油路1压力供给                               $    $  MPa      $    $  ANS013.BYTE004  $  y=SPRINTF([%.2f],x1*0.04);
  $  022.主油路2压力供给                               $    $  MPa      $    $  ANS013.BYTE005  $  y=SPRINTF([%.2f],x1*0.04);
  $  023.油泵供给压力                                  $    $  MPa      $    $  ANS013.BYTE006  $  y=SPRINTF([%.2f],(x1*256+x2)*0.00976);
  $  024.促动器1位置传感器1                            $    $           $    $  ANS014.BYTE004  $  y=(x1*256+x2);
  $  025.促动器1位置传感器2                            $    $           $    $  ANS014.BYTE006  $  y=(x1*256+x2);
  $  026.促动器2位置传感器1                            $    $           $    $  ANS015.BYTE004  $  y=(x1*256+x2);
  $  027.促动器2位置传感器2                            $    $           $    $  ANS015.BYTE006  $  y=(x1*256+x2);
  $  028.促动器3位置传感器1                            $    $           $    $  ANS016.BYTE004  $  y=(x1*256+x2);
  $  029.促动器3位置传感器2                            $    $           $    $  ANS016.BYTE006  $  y=(x1*256+x2);
  $  030.促动器4位置传感器1                            $    $           $    $  ANS017.BYTE004  $  y=(x1*256+x2);
  $  031.促动器4位置传感器2                            $    $           $    $  ANS017.BYTE006  $  y=(x1*256+x2);
  $  032.离合器1最大位置                               $    $           $    $  ANS018.BYTE004  $  y=(x1*256+x2);
  $  033.离合器2最大位置                               $    $           $    $  ANS018.BYTE006  $  y=(x1*256+x2);
  $  034.离合器1最小位置                               $    $           $    $  ANS019.BYTE004  $  y=(x1*256+x2);
  $  035.离合器2最小位置                               $    $           $    $  ANS019.BYTE006  $  y=(x1*256+x2);
  $  036.离合器1半离合位置                             $    $           $    $  ANS020.BYTE004  $  y=(x1*256+x2);
  $  037.离合器2半离合位置                             $    $           $    $  ANS020.BYTE006  $  y=(x1*256+x2);
  $  038.促动器1中位置                                 $    $           $    $  ANS021.BYTE004  $  y=(x1*256+x2);
  $  039.促动器2中位置                                 $    $           $    $  ANS022.BYTE004  $  y=(x1*256+x2);
  $  040.促动器4中位置                                 $    $           $    $  ANS023.BYTE004  $  y=(x1*256+x2);
  $  041.油泵启动占空比                                $    $  %        $    $  ANS024.BYTE004  $  y=x1;
  $  042.油泵使能信息                                  $    $           $    $  ANS024.BYTE005  $  switxh(x1)0x00: y=@0066;0x01: y=@003e;default: y=@0002;
  $  043.油泵转速                                      $    $  rpm      $    $  ANS024.BYTE006  $  y=(x1*256+x2);
  $  044.SD1                                           $    $           $    $  ANS025.BYTE004  $  y=SPRINTF([%02X %02X %02X %02X %02X],x1,x2,x3,x4,x5);
  $  045.SD2                                           $    $           $    $  ANS026.BYTE004  $  y=SPRINTF([%02X %02X %02X %02X %02X],x1,x2,x3,x4,x5);
  $  046.SD3                                           $    $           $    $  ANS027.BYTE004  $  y=SPRINTF([%02X %02X %02X %02X %02X],x1,x2,x3,x4,x5);
  $  047.离合器强制脱开命令有效标志                    $    $           $    $  ANS028.BYTE004  $  switxh(x1)0x00: y=@003f;0x01: y=@0093;default: y=@0002;
  $  048.离合器强制脱开                                $    $           $    $  ANS028.BYTE005  $  switxh(x1)0x00: y=@02f7;0x01: y=@02f8;default: y=@0002;
  $  049.整车实际工作模式                              $    $           $    $  ANS028.BYTE006  $  switxh(x1)0x00: y=@003e;0x01: y=@02f9;0x02: y=@00d4;0x03: y=@02fa;default: y=@0002;
  $  050.SOC低于极限阙值次数                           $    $           $    $  ANS029.BYTE004  $  y=(x1*256+x2);
  $  051.BMS(电池管理器)放电功率低于极限阙值次数       $    $           $    $  ANS029.BYTE006  $  y=(x1*256+x2);

;******************************************************************************************************************************************************

动作测试:

$^ 00.档位动作测试 
$^TYPE0
$^BUTTON:挂1档 
$^REQ00:7E1 05 2F 20 01 03 01 00 00     $^

$^BUTTON:挂2档 
$^REQ00:7E1 05 2F 20 01 03 02 00 00     $^

$^BUTTON:挂3档 
$^REQ00:7E1 05 2F 20 01 03 03 00 00     $^

$^BUTTON:挂4档 
$^REQ00:7E1 05 2F 20 01 03 04 00 00     $^

$^BUTTON:挂5档 
$^REQ00:7E1 05 2F 20 01 03 05 00 00     $^

$^BUTTON:挂6档 
$^REQ00:7E1 05 2F 20 01 03 06 00 00     $^

$^BUTTON:挂R档 
$^REQ00:7E1 05 2F 20 01 03 08 00 00     $^

$^BUTTON:1,3档挂N档 
$^REQ00:7E1 05 2F 20 01 03 09 00 00     $^

$^BUTTON:2,4档挂N档 
$^REQ00:7E1 05 2F 20 01 03 0A 00 00     $^

$^BUTTON:5,7档挂N档 
$^REQ00:7E1 05 2F 20 01 03 0B 00 00     $^

$^BUTTON:6,R档挂N档 
$^REQ00:7E1 05 2F 20 01 03 0C 00 00     $^

$^BUTTON:所有档位回N档 
$^REQ00:7E1 05 2F 20 01 03 0D 00 00     $^

$^BUTTON:挂EV1档 
$^REQ00:7E1 05 2F 20 01 03 0E 00 00     $^

$^BUTTON:挂EV2档 
$^REQ00:7E1 05 2F 20 01 03 0F 00 00     $^

$^BUTTON:EV档挂N档 
$^REQ00:7E1 05 2F 20 01 03 10 00 00     $^

$^BUTTON:退出 
$^REQ00:7E1 04 2F 20 01 00 00 00 00     $^

$^TIP:执行条件要求 (1)整车ON档电 (2)发动机停止 
;----------------------------------------------------------------------------------------------------

$^ 01.离合器1间隙测试 
 $^TYPE:2
$^BUTTON:输入
$^REQ00:7E1 06 2F 20 02 03 XX XX 00     $^

$^BUTTON:退出
$^REQ00:7E1 04 2F 20 02 00 00 00 00     $^

$^DSP:离合器1间隙测试
$^TIP:执行条件要求 (1)整车ON档电 (2)发动机停止 (3)查看当前执行间隙值请查看监控数据流 
$^TIP:请输入测试值(范围:200~2000) 
$^IN_F:y=(x1*256+x2);
$^RANGE:200,2000
;----------------------------------------------------------------------------------------------------

$^ 02.离合器2间隙测试 
 $^TYPE:2
$^BUTTON:输入
$^REQ00:7E1 06 2F 20 03 03 XX XX 00     $^

$^BUTTON:退出
$^REQ00:7E1 04 2F 20 03 00 00 00 00     $^

$^DSP:离合器2间隙测试
$^TIP:执行条件要求 (1)整车ON档电 (2)发动机停止 (3)查看当前执行间隙值请查看监控数据流 
$^TIP:请输入测试值(范围:200~2000) 
$^IN_F:y=(x1*256+x2);
$^RANGE:200,2000
;----------------------------------------------------------------------------------------------------

30帧:

  $FC REQ000:7E1 30 01 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
