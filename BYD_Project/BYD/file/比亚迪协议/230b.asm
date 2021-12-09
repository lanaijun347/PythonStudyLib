
    车型ID：230b

    模拟：协议模拟-->230b

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:790 02 10 01 00 00 00 00 00       $~  ANS000:798 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:790 02 3E 80 00 00 00 00 00       $!  ANS000:798 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:790 05 18 00 FF FF FF 00 00       $#  ANS000:798 05 18 00 FF FF FF 00 00

  ANS000.BYTE02 控制故障码个数，从$#ANS000.BYTE3$#开始每$#4$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/ce0d0000_2BYTE


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="1"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:790 04 14 FF FF FF 00 00 00       $$  ANS000:798 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:790 03 22 00 01 00 00 00 00       $%  ANS000:798 03 22 00 01 00 00 00 00
  $%  REQ001:790 03 22 00 03 00 00 00 00       $%  ANS001:798 03 22 00 03 00 00 00 00

  $%  000:硬件日期:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@001d,x2,@001e,x3,@001f);
  $%  001:硬件版本:        $%    $%  ANS000.BYTE007  $%  y=SPRINTF([%d.%d.%d],x3,x2,x1);
  $%  002:软件日期:        $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@001d,x2,@001e,x3,@001f);
  $%  003:软件版本:        $%    $%  ANS001.BYTE007  $%  y=SPRINTF([%d.%d.%d],x3,x2,x1);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:790 03 22 00 04 00 00 00 00       $  ANS000:798 03 22 00 04 00 00 00 00
  $  REQ001:790 03 22 00 05 00 00 00 00       $  ANS001:798 03 22 00 05 00 00 00 00
  $  REQ002:790 03 22 00 06 00 00 00 00       $  ANS002:798 03 22 00 06 00 00 00 00
  $  REQ003:790 03 22 00 07 00 00 00 00       $  ANS003:798 03 22 00 07 00 00 00 00
  $  REQ004:790 03 22 00 09 00 00 00 00       $  ANS004:798 03 22 00 09 00 00 00 00
  $  REQ005:790 03 22 00 0A 00 00 00 00       $  ANS005:798 03 22 00 0A 00 00 00 00
  $  REQ006:790 03 22 00 0C 00 00 00 00       $  ANS006:798 03 22 00 0C 00 00 00 00
  $  REQ007:790 03 22 00 0D 00 00 00 00       $  ANS007:798 03 22 00 0D 00 00 00 00
  $  REQ008:790 03 22 00 0E 00 00 00 00       $  ANS008:798 03 22 00 0E 00 00 00 00
  $  REQ009:790 03 22 00 0F 00 00 00 00       $  ANS009:798 03 22 00 0F 00 00 00 00
  $  REQ010:790 03 22 00 10 00 00 00 00       $  ANS010:798 03 22 00 10 00 00 00 00

  $  000:P档电机状态                                              $    $        $    $  ANS000.BYTE004  $  switxh(x1)0x00: y=@0048;0x01: y=@011f;0x02: y=@00da;0x03: y=@00db;0x04: y=@00dc;default: y=@001c;
  $  001:驱动管或电机状态                                         $    $        $    $  ANS001.BYTE004  $  switxh(x1)0x00: y=@0022;0x01: y=@011e;default: y=@001c;
  $  002:备用霍尔信号状态                                         $    $        $    $  ANS002.BYTE004  $  switxh(x1)0x00: y=@0022;0x01: y=@0119;default: y=@001c;
  $  003:位置霍尔状态                                             $    $        $    $  ANS003.BYTE004  $  switxh(x1)0x00: y=@0022;0x01: y=@0653;0x02: y=@0121;default: y=@001c;
  $  004:电机缺相                                                 $    $        $    $  ANS004.BYTE004  $  switxh(x1)0x00: y=@0022;0x01: y=@0224;0x02: y=@0225;0x03: y=@0226;0x04: y=@0227;0x05: y=@0228;0x06: y=@0229;0x07: y=@0665;default: y=@001c;
  $  005:与ABS/ESP(防抱死刹车系统/电子车身稳定系统)通讯状态       $    $        $    $  ANS005.BYTE004  $  switxh(x1)0x00: y=@0022;0x01: y=@003a;default: y=@001c;
  $  006:驱动电压                                                 $    $  V     $    $  ANS006.BYTE004  $  y=x1;
  $  007:控制器电流                                               $    $  A     $    $  ANS007.BYTE004  $  y=x1*0.1;
  $  008:霍尔脉冲个数                                             $    $        $    $  ANS008.BYTE004  $  y=x1;
  $  009:反弹霍尔脉冲个数                                         $    $        $    $  ANS009.BYTE004  $  y=x1;
  $  010:控制状态                                                 $    $        $    $  ANS010.BYTE004  $  switxh(x1)0x00: y=@0022;0x01: y=@01a6;0x02: y=@01a7;default: y=@001c;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:790 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
