
    车型ID：001f

    模拟：协议模拟-->001f

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~784

进入命令:

  $~  REQ000:704 02 10 01 00 00 00 00 00       $~  ANS000:784 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:704 02 3E 80 00 00 00 00 00       $!  ANS000:784 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:704 03 19 02 09 00 00 00 00       $#  ANS000:784 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/1e000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:704 04 14 FF FF FF 00 00 00       $$  ANS000:784 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:704 03 22 F1 80 00 00 00 00       $%  ANS000:784 03 22 F1 80 00 00 00 00
  $%  REQ001:704 03 22 F1 87 00 00 00 00       $%  ANS001:784 03 22 F1 87 00 00 00 00
  $%  REQ002:704 03 22 F1 8A 00 00 00 00       $%  ANS002:784 03 22 F1 8A 00 00 00 00
  $%  REQ003:704 03 22 F1 97 00 00 00 00       $%  ANS003:784 03 22 F1 97 00 00 00 00
  $%  REQ004:704 03 22 F1 93 00 00 00 00       $%  ANS004:784 03 22 F1 93 00 00 00 00
  $%  REQ005:704 03 22 F1 95 00 00 00 00       $%  ANS005:784 03 22 F1 95 00 00 00 00
  $%  REQ006:704 03 22 F1 8C 00 00 00 00       $%  ANS006:784 03 22 F1 8C 00 00 00 00
  $%  REQ007:704 03 22 F1 90 00 00 00 00       $%  ANS007:784 03 22 F1 90 00 00 00 00
  $%  REQ008:704 03 22 F1 99 00 00 00 00       $%  ANS008:784 03 22 F1 99 00 00 00 00
  $%  REQ009:704 03 22 F0 89 00 00 00 00       $%  ANS009:784 03 22 F0 89 00 00 00 00
  $%  REQ010:704 03 22 F1 89 00 00 00 00       $%  ANS010:784 03 22 F1 89 00 00 00 00

  $%  000:引导加载程序版本号:          $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  001:零件号:                      $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12);
  $%  002:系统供应商号:                $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  003:系统名称:                    $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  004:系统供应商硬件版本号:        $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  005:系统供应商软件版本号:        $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21);
  $%  006:ECU序列号:                   $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  007:VIN码:                       $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  008:软件发布日期:                $%    $%  ANS008.BYTE004  $%  HEX(x1,x2,x3,x4);
  $%  009:供应商内部硬件版本号:        $%    $%  ANS009.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  010:供应商内部软件版本号:        $%    $%  ANS010.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:704 03 22 1A 00 00 00 00 00       $  ANS000:784 03 22 1A 00 00 00 00 00
  $  REQ001:704 03 22 1A 01 00 00 00 00       $  ANS001:784 03 22 1A 01 00 00 00 00
  $  REQ002:704 03 22 1A 02 00 00 00 00       $  ANS002:784 03 22 1A 02 00 00 00 00
  $  REQ003:704 03 22 1A 03 00 00 00 00       $  ANS003:784 03 22 1A 03 00 00 00 00
  $  REQ004:704 03 22 1A 04 00 00 00 00       $  ANS004:784 03 22 1A 04 00 00 00 00
  $  REQ005:704 03 22 1A 05 00 00 00 00       $  ANS005:784 03 22 1A 05 00 00 00 00
  $  REQ006:704 03 22 1A 06 00 00 00 00       $  ANS006:784 03 22 1A 06 00 00 00 00
  $  REQ007:704 03 22 F1 86 00 00 00 00       $  ANS007:784 03 22 F1 86 00 00 00 00

  $  000.电机电源路电压                 $    $  V        $    $  ANS000.BYTE004  $  y = SPRINTF([%.2f], (x1*256+x2)/1024.0*5/10*57);
  $  001.数字电源路电压                 $    $  V        $    $  ANS001.BYTE004  $  y = SPRINTF([%.2f], (x1*256+x2)/1024.0*5/10*57);
  $  002.防夹条1                        $    $  V        $    $  ANS002.BYTE004  $  y = SPRINTF([%.2f], (x1*256+x2)/1024.0*5.0);
  $  003.防夹条2                        $    $  V        $    $  ANS003.BYTE004  $  y = SPRINTF([%.2f], (x1*256+x2)/1024.0*5.0);
  $  004.尾门位置                       $    $  Hall     $    $  ANS004.BYTE004  $  y = SPRINTF([%d], (x1*256+x2));
  $  005.中控开关                       $    $           $    $  ANS005.BYTE004  $  if(((x1>>0)&1)) y=@0053;else y=@0052;
  $  006.外部关闭开关                   $    $           $    $  ANS005.BYTE004  $  if(((x1>>1)&1)) y=@0053;else y=@0052;
  $  007.全锁位置                       $    $           $    $  ANS005.BYTE004  $  if(((x1>>2)&1)) y=@0053;else y=@0052;
  $  008.半锁位置                       $    $           $    $  ANS005.BYTE004  $  if(((x1>>3)&1)) y=@0053;else y=@0052;
  $  009.闭锁器状态                     $    $           $    $  ANS005.BYTE004  $  if(((x1>>4)&1)) y=@0053;else y=@0052;
  $  010.数字输入5-B7数字输入状态       $    $           $    $  ANS005.BYTE004  $  if(((x1>>5)&1)) y=@0053;else y=@0052;
  $  011.数字输入6-棘爪信号             $    $           $    $  ANS005.BYTE004  $  if(((x1>>6)&1)) y=@0053;else y=@0052;
  $  012.数字输入7                      $    $           $    $  ANS005.BYTE004  $  if(((x1>>7)&1)) y=@0053;else y=@0052;
  $  013.继电器1状态                    $    $           $    $  ANS006.BYTE004  $  if(((x1>>0)&1)) y=@0053;else y=@0052;
  $  014.继电器2状态                    $    $           $    $  ANS006.BYTE004  $  if(((x1>>1)&1)) y=@0053;else y=@0052;
  $  015.继电器3状态                    $    $           $    $  ANS006.BYTE004  $  if(((x1>>2)&1)) y=@0053;else y=@0052;
  $  016.继电器4状态                    $    $           $    $  ANS006.BYTE004  $  if(((x1>>3)&1)) y=@0053;else y=@0052;
  $  017.继电器5状态                    $    $           $    $  ANS006.BYTE004  $  if(((x1>>4)&1)) y=@0053;else y=@0052;
  $  018.继电器6状态                    $    $           $    $  ANS006.BYTE004  $  if(((x1>>5)&1)) y=@0053;else y=@0052;
  $  019.继电器7状态                    $    $           $    $  ANS006.BYTE004  $  if(((x1>>6)&1)) y=@0053;else y=@0052;
  $  020.继电器8状态                    $    $           $    $  ANS006.BYTE004  $  if(((x1>>7)&1)) y=@0053;else y=@0052;
  $  021.当前诊断会话模式               $    $           $    $  ANS007.BYTE004  $  if(x1==1) y=@0054;else if(x1==2) y=@0055;else if(x1==3) y=@0056;else if(x1==96) y=@0057;else y=@0003;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:704 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
