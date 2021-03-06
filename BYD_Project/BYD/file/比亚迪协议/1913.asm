
    车型ID：1913

    模拟：协议模拟-->1913

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:710 02 10 01 00 00 00 00 00       $~  ANS000:718 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:710 02 3E 80 00 00 00 00 00       $!  ANS000:718 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:710 03 19 02 C9 00 00 00 00       $#  ANS000:718 03 19 02 C9 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/fe000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:710 04 14 FF FF FF 00 00 00       $$  ANS000:718 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:710 03 22 F1 F0 00 00 00 00       $%  ANS000:718 03 22 F1 F0 00 00 00 00

  $%  000:系统名称:             $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11);
  $%  001:ECU版本:              $%    $%  ANS000.BYTE015  $%  ASCII(x1,x2,x3);
  $%  002:车型:                 $%    $%  ANS000.BYTE019  $%  ASCII(x1,x2);
  $%  003:系统代码:             $%    $%  ANS000.BYTE021  $%  ASCII(x1);
  $%  004:控制逻辑版本:         $%    $%  ANS000.BYTE023  $%  ASCII(x1,x2);
  $%  005:Failsafe版本:         $%    $%  ANS000.BYTE025  $%  ASCII(x1,x2);
  $%  006:诊断版本:             $%    $%  ANS000.BYTE027  $%  ASCII(x1,x2);
  $%  007:Sub-micom版本:        $%    $%  ANS000.BYTE030  $%  ASCII(x1);
  $%  008:发布日期:             $%    $%  ANS000.BYTE032  $%  ASCII(x1,x2,x3,x4);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:710 03 22 10 00 00 00 00 00       $  ANS000:718 03 22 10 00 00 00 00 00
  $  REQ001:710 03 22 10 01 00 00 00 00       $  ANS001:718 03 22 10 01 00 00 00 00
  $  REQ002:710 03 22 10 02 00 00 00 00       $  ANS002:718 03 22 10 02 00 00 00 00
  $  REQ003:710 03 22 11 00 00 00 00 00       $  ANS003:718 03 22 11 00 00 00 00 00
  $  REQ004:710 03 22 11 01 00 00 00 00       $  ANS004:718 03 22 11 01 00 00 00 00
  $  REQ005:710 03 22 11 02 00 00 00 00       $  ANS005:718 03 22 11 02 00 00 00 00
  $  REQ006:710 03 22 12 00 00 00 00 00       $  ANS006:718 03 22 12 00 00 00 00 00
  $  REQ007:710 03 22 12 02 00 00 00 00       $  ANS007:718 03 22 12 02 00 00 00 00
  $  REQ008:710 03 22 20 01 00 00 00 00       $  ANS008:718 03 22 20 01 00 00 00 00
  $  REQ009:710 03 22 21 00 00 00 00 00       $  ANS009:718 03 22 21 00 00 00 00 00
  $  REQ010:710 03 22 21 01 00 00 00 00       $  ANS010:718 03 22 21 01 00 00 00 00
  $  REQ011:710 03 22 21 02 00 00 00 00       $  ANS011:718 03 22 21 02 00 00 00 00
  $  REQ012:710 03 22 21 03 00 00 00 00       $  ANS012:718 03 22 21 03 00 00 00 00
  $  REQ013:710 03 22 21 04 00 00 00 00       $  ANS013:718 03 22 21 04 00 00 00 00
  $  REQ014:710 03 22 21 05 00 00 00 00       $  ANS014:718 03 22 21 05 00 00 00 00
  $  REQ015:710 03 22 21 06 00 00 00 00       $  ANS015:718 03 22 21 06 00 00 00 00
  $  REQ016:710 03 22 21 07 00 00 00 00       $  ANS016:718 03 22 21 07 00 00 00 00
  $  REQ017:710 03 22 21 08 00 00 00 00       $  ANS017:718 03 22 21 08 00 00 00 00
  $  REQ018:710 03 22 21 09 00 00 00 00       $  ANS018:718 03 22 21 09 00 00 00 00
  $  REQ019:710 03 22 21 0A 00 00 00 00       $  ANS019:718 03 22 21 0A 00 00 00 00
  $  REQ020:710 03 22 22 00 00 00 00 00       $  ANS020:718 03 22 22 00 00 00 00 00

  $  000:电源电压                                   $    $  V            $    $  ANS000.BYTE004  $  y=x1*0.1+3.0;
  $  001:执行器检测电压                             $    $  V            $    $  ANS001.BYTE004  $  y=x1*0.1;
  $  002:打开拉起功能电路正常                       $    $               $    $  ANS002.BYTE004  $  if(x1&0x01)y=@0004;else y=@0005;
  $  003:关闭拉起功能电路正常                       $    $               $    $  ANS002.BYTE004  $  if(x1&0x02)y=@0004;else y=@0005;
  $  004:关闭释放功能电路正常                       $    $               $    $  ANS002.BYTE004  $  if(x1&0x04)y=@0004;else y=@0005;
  $  005:打开释放功能电路正常                       $    $               $    $  ANS002.BYTE004  $  if(x1&0x08)y=@0004;else y=@0005;
  $  006:供应电压电路                               $    $               $    $  ANS002.BYTE004  $  if(x1&0x10)y=@0004;else y=@0005;
  $  007:执行器拉力                                 $    $  N            $    $  ANS003.BYTE004  $  y=x1*10;
  $  008:左电机电流                                 $    $  A            $    $  ANS004.BYTE004  $  y=x1*0.1;
  $  009:右电机电流                                 $    $  A            $    $  ANS004.BYTE005  $  y=x1*0.1;
  $  010:ECU温度                                    $    $  degree C     $    $  ANS005.BYTE004  $  y=x1-40;
  $  011:驻车制动开关状态                           $    $               $    $  ANS006.BYTE004  $  if(x1==0x00)y=@0045;else if(x1==0x01)y=@0046;else if(x1==0x02)y=@0047;else if(x1==0x03)y=@0048;else y=@001c;
  $  012:霍尔传感器计数                             $    $  Pulse        $    $  ANS007.BYTE004  $  y=(x1*256+x2);
  $  013:目标拉力                                   $    $  N            $    $  ANS008.BYTE004  $  y=x1*10;
  $  014:EPB(电子驻车)状态                          $    $               $    $  ANS009.BYTE004  $  if(x1==0x00)y=@0055;else if(x1==0x01)y=@0056;else if(x1==0x02)y=@0057;else if(x1==0x03)y=@0058;else if(x1==0x04)y=@0059;else y=@001c;
  $  015:EPB(电子驻车)校准检测状态                  $    $               $    $  ANS010.BYTE004  $  if(x1==0x00)y=@0053;else if(x1==0x01)y=@0054;else y=@001c;
  $  016:IGN状态                                    $    $               $    $  ANS011.BYTE004  $  if(x1==0x00)y=@005a;else if(x1==0x01)y=@005b;else if(x1==0x02)y=@005c;else if(x1==0x03)y=@005d;else y=@001c;
  $  017:EPB(电子驻车)执行器位置状态                $    $               $    $  ANS012.BYTE004  $  if(x1==0x00)y=@0047;else if(x1==0x01)y=@0045;else if(x1==0x02)y=@0046;else y=@001c;
  $  018:零点位置计数器                             $    $  次           $    $  ANS013.BYTE004  $  y=(x1*256+x2);
  $  019:最大力拉起                                 $    $  次           $    $  ANS014.BYTE004  $  y=UINT(x1*0x1000000+x2*0x10000+x3*0x100+x4);
  $  020:中力拉起                                   $    $  次           $    $  ANS014.BYTE008  $  y=UINT(x1*0x1000000+x2*0x10000+x3*0x100+x4);
  $  021:小力拉起                                   $    $  次           $    $  ANS014.BYTE012  $  y=UINT(x1*0x1000000+x2*0x10000+x3*0x100+x4);
  $  022:维修模式                                   $    $               $    $  ANS015.BYTE004  $  if(x1==0x00)y=@004b;else if(x1==0x01)y=@004c;else if(x1==0x02)y=@004d;else y=@001c;
  $  023:EPB(电子驻车)电机操作有效                  $    $               $    $  ANS016.BYTE004  $  if(x1==0x00)y=@0049;else if(x1==0x01)y=@004a;else y=@001c;
  $  024:动态拉起状态                               $    $               $    $  ANS017.BYTE004  $  if(x1==0x00)y=@0047;else if(x1==0x01)y=@0050;else if(x1==0x02)y=@0051;else if(x1==0x03)y=@0052;else y=@001c;
  $  025:EPB(电子驻车)操作模式                      $    $               $    $  ANS018.BYTE004  $  if(x1==0x00)y=@004e;else if(x1==0x01)y=@004f;else y=@001c;
  $  026:装配位置校准完成                           $    $               $    $  ANS019.BYTE004  $  if(x1&0x01)y=@005e;else y=@005f;
  $  027:拉力校准完成                               $    $               $    $  ANS019.BYTE004  $  if(x1&0x02)y=@005e;else y=@005f;
  $  028:Run-ln完成                                 $    $               $    $  ANS019.BYTE004  $  if(x1&0x04)y=@005e;else y=@005f;
  $  029:EPB(电子驻车)执行器PWM(脉宽调制)控制       $    $               $    $  ANS020.BYTE004  $  y=x1*100.00/255;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:710 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
