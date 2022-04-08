
    车型ID：282a

    模拟：协议模拟-->282a

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7FA

进入命令:

  $~  REQ000:7F2 02 10 01 00 00 00 00 00       $~  ANS000:7FA 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7F2 02 3E 80 00 00 00 00 00       $!  ANS000:7FA 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7F2 03 19 02 09 00 00 00 00       $#  ANS000:7FA 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/91000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7F2 04 14 FF FF FF 00 00 00       $$  ANS000:7FA 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7F2 03 22 F1 93 00 00 00 00       $%  ANS000:7FA 03 22 F1 93 00 00 00 00
  $%  REQ001:7F2 03 22 F1 94 00 00 00 00       $%  ANS001:7FA 03 22 F1 94 00 00 00 00
  $%  REQ002:7F2 03 22 F1 95 00 00 00 00       $%  ANS002:7FA 03 22 F1 95 00 00 00 00
  $%  REQ003:7F2 03 22 F1 80 00 00 00 00       $%  ANS003:7FA 03 22 F1 80 00 00 00 00

  $%  000:硬件版本:                           $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1/100,(x1/10)%10,x1%10);
  $%  001:硬件日期:                           $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  002:软件编号:                           $%    $%  ANS001.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:                           $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%.2d.%.2d],(x1*256+x2)/10000,((x1*256+x2)%10000)/100,(x1*256+x2)%100);
  $%  004:软件日期:                           $%    $%  ANS002.BYTE006  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  005:修改次数:                           $%    $%  ANS002.BYTE009  $%  y=x1;
  $%  006:引导程序软件版本号/日期(年):        $%    $%  ANS003.BYTE004  $%  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@0038,x2,@0521,x3,@0522);
  $%  007:软件版本_1:                         $%    $%  ANS003.BYTE007  $%  y=SPRINTF([%02d.%02d.%02d.],x1,x2,x3);
  $%  008:日期:                               $%    $%  ANS003.BYTE010  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7F2 03 22 12 34 00 00 00 00       $  ANS000:7FA 03 22 12 34 00 00 00 00
  $  REQ001:7F2 03 22 34 01 00 00 00 00       $  ANS001:7FA 03 22 34 01 00 00 00 00
  $  REQ002:7F2 03 22 F1 86 00 00 00 00       $  ANS002:7FA 03 22 F1 86 00 00 00 00
  $  REQ003:7F2 03 22 34 20 00 00 00 00       $  ANS003:7FA 03 22 34 20 00 00 00 00
  $  REQ004:7F2 03 22 F0 10 00 00 00 00       $  ANS004:7FA 03 22 F0 10 00 00 00 00
  $  REQ005:7F2 03 22 F0 11 00 00 00 00       $  ANS005:7FA 03 22 F0 11 00 00 00 00
  $  REQ006:7F2 03 22 02 85 00 00 00 00       $  ANS006:7FA 03 22 02 85 00 00 00 00
  $  REQ007:7F2 03 22 02 8D 00 00 00 00       $  ANS007:7FA 03 22 02 8D 00 00 00 00
  $  REQ008:7F2 03 22 10 11 00 00 00 00       $  ANS008:7FA 03 22 10 11 00 00 00 00
  $  REQ009:7F2 03 22 10 12 00 00 00 00       $  ANS009:7FA 03 22 10 12 00 00 00 00
  $  REQ010:7F2 03 22 34 06 00 00 00 00       $  ANS010:7FA 03 22 34 06 00 00 00 00
  $  REQ011:7F2 03 22 34 07 00 00 00 00       $  ANS011:7FA 03 22 34 07 00 00 00 00
  $  REQ012:7F2 03 22 34 08 00 00 00 00       $  ANS012:7FA 03 22 34 08 00 00 00 00
  $  REQ013:7F2 03 22 34 09 00 00 00 00       $  ANS013:7FA 03 22 34 09 00 00 00 00
  $  REQ014:7F2 03 22 34 0A 00 00 00 00       $  ANS014:7FA 03 22 34 0A 00 00 00 00
  $  REQ015:7F2 03 22 34 0B 00 00 00 00       $  ANS015:7FA 03 22 34 0B 00 00 00 00
  $  REQ016:7F2 03 22 F1 8B 00 00 00 00       $  ANS016:7FA 03 22 F1 8B 00 00 00 00
  $  REQ017:7F2 03 22 02 00 00 00 00 00       $  ANS017:7FA 03 22 02 00 00 00 00 00

  $  000.校准状态                                    $    $         $    $  ANS000.BYTE004  $  switxh(x1)0x00: y=@013f;0x01: y=@013e;default: y=@0002;
  $  001.生产方式                                    $    $         $    $  ANS001.BYTE004  $  switxh(x1)0x00: y=@000e;0x01: y=@000f;default: y=@0002;
  $  002.诊断会话模式                                $    $         $    $  ANS002.BYTE004  $  switxh(x1)0x00: y=@05ab;0x01: y=@05ac;0x02: y=@0547;default: y=@0002;
  $  003.雷达加热                                    $    $         $    $  ANS003.BYTE004  $  switxh(x1)0x00: y=@00cf;0x01: y=@000e;default: y=@0002;
  $  004.EOL垂直偏差角度                             $    $         $    $  ANS004.BYTE004  $  y=(((x1<<8)+x2)-300)*0.001;
  $  005.EOL水平偏差角度                             $    $         $    $  ANS005.BYTE004  $  y=(((x1<<8)+x2)-300)*0.001;
  $  006.雷达供电电压                                $    $         $    $  ANS006.BYTE004  $  y=x1*0.1;
  $  007.雷达温度                                    $    $         $    $  ANS007.BYTE004  $  if(x1<0x80)y=(x1<<8)+x2;else y=((x1-256)<<8)+x2;
  $  008.车速                                        $    $         $    $  ANS008.BYTE004  $  y=((x1<<8)+x2)*0.01;
  $  009.加速度                                      $    $         $    $  ANS009.BYTE004  $  y=(((x1<<8)+x2)-25)*0.01;
  $  010.校准水平偏差                                $    $  °     $    $  ANS010.BYTE004  $  y=57.2958*1.0/1638*((x1<<8)+x2);
  $  011.校准竖直偏差                                $    $  °     $    $  ANS011.BYTE004  $  y=57.2958*1.0/1638*((x1<<8)+x2);
  $  012.校准板的位置                                $    $         $    $  ANS012.BYTE004  $  switxh(x1)0x00: y=@080e;0x01: y=@080f;0x02: y=@0810;0x03: y=@0811;0x04: y=@0812;default: y=@0002;
  $  013.标准板需要调整的位置                        $    $         $    $  ANS013.BYTE004  $  switxh(x1)0x00: y=@0808;0x01: y=@0809;0x02: y=@080a;0x03: y=@080b;0x04: y=@080c;0x05: y=@080d;default: y=@0002;
  $  014.垂直方向调整操作-右下螺栓调整方向           $    $         $    $  ANS014.BYTE004  $  switxh(x1)0x00: y=@0813;0x01: y=@0814;0x02: y=@0815;default: y=@0002;
  $  015.垂直方向调整操作-右下螺栓调整旋转圈数       $    $         $    $  ANS014.BYTE005  $  y=x1*1.0/4;
  $  016.水平方向调整操作-左上螺栓调整方向           $    $         $    $  ANS015.BYTE004  $  switxh(x1)0x00: y=@0813;0x01: y=@0814;0x02: y=@0815;default: y=@0002;
  $  017.水平方向调整操作-左上螺栓旋转圈数           $    $         $    $  ANS015.BYTE005  $  y=x1*1.0/4;
  $  018.校准结果                                    $    $         $    $  ANS015.BYTE004  $  y=@0816;
  $  019.ECU生产日期                                 $    $         $    $  ANS016.BYTE004  $  y=SPRINTF([%02X%02X%02X%02X],x1,x2,x3,x4);
  $  020.程序运行计数器                              $    $         $    $  ANS017.BYTE004  $  y=x1;

;******************************************************************************************************************************************************

动作测试:

$^ 00.设定生产模式 
$^IN  REQ00:7F2 02 10 03 00 00 00 00 00     $^IN  

$^TYPE0
$^BUTTON:打开 
$^REQ00:7F2 04 2E 34 01 01 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:7F2 04 2E 34 01 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 01.设定雷达加热信息 
$^IN  REQ00:7F2 02 10 03 00 00 00 00 00     $^IN  

$^TYPE0
$^BUTTON:打开 
$^REQ00:7F2 04 2E 34 20 01 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:7F2 04 2E 34 20 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

30帧:

  $FC REQ000:7F2 30 08 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
