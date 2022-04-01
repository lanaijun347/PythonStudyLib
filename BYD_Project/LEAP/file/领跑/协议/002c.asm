
    车型ID：002c

    模拟：协议模拟-->002c

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7EB

进入命令:

  $~  REQ000:7E3 02 10 01 00 00 00 00 00       $~  ANS000:7EB 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7E3 02 3E 80 00 00 00 00 00       $!  ANS000:7EB 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7E3 03 19 02 09 00 00 00 00       $#  ANS000:7EB 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/21000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7E3 04 14 FF FF FF 00 00 00       $$  ANS000:7EB 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7E3 03 22 F1 90 00 00 00 00       $%  ANS000:7EB 03 22 F1 90 00 00 00 00
  $%  REQ001:7E3 03 22 F1 87 00 00 00 00       $%  ANS001:7EB 03 22 F1 87 00 00 00 00
  $%  REQ002:7E3 03 22 F1 8A 00 00 00 00       $%  ANS002:7EB 03 22 F1 8A 00 00 00 00
  $%  REQ003:7E3 03 22 F1 8C 00 00 00 00       $%  ANS003:7EB 03 22 F1 8C 00 00 00 00
  $%  REQ004:7E3 03 22 F1 8B 00 00 00 00       $%  ANS004:7EB 03 22 F1 8B 00 00 00 00
  $%  REQ005:7E3 03 22 F1 93 00 00 00 00       $%  ANS005:7EB 03 22 F1 93 00 00 00 00
  $%  REQ006:7E3 03 22 F1 95 00 00 00 00       $%  ANS006:7EB 03 22 F1 95 00 00 00 00
  $%  REQ007:7E3 03 22 F1 99 00 00 00 00       $%  ANS007:7EB 03 22 F1 99 00 00 00 00
  $%  REQ008:7E3 03 22 F1 9D 00 00 00 00       $%  ANS008:7EB 03 22 F1 9D 00 00 00 00

  $%  000:VIN码:                    $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  001:车厂备件号:               $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  002:供应商识别符:             $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  003:ECU序列号:                $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  004:ECU生产日期:              $%    $%  ANS004.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  005:车厂ECU硬件版本号:        $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2);
  $%  006:车厂ECU软件版本号:        $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2);
  $%  007:升级程序日期:             $%    $%  ANS007.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  008:ECU安装日期:              $%    $%  ANS008.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);

;******************************************************************************************************************************************************

读数据流: 

  $)  00.输入输出数据流
  $  00.输入输出数据流
  $  REQ000:7E3 03 22 08 01 00 00 00 00       $  ANS000:7EB 03 22 08 01 00 00 00 00

  $  000.电池电压                                          $    $  V       $    $  ANS000.BYTE004  $  y = SPRINTF([%.5f], (x1*1.1328)/12+0.7);
  $  001.DAB的能量储备电压                                 $    $  V       $    $  ANS000.BYTE005  $  y = SPRINTF([%.3f], x1*0.1536);
  $  002.PAB的能量储备电压                                 $    $  V       $    $  ANS000.BYTE006  $  y = SPRINTF([%.3f], x1*0.1536);
  $  003.DRPT的能量储备电压                                $    $  V       $    $  ANS000.BYTE007  $  y = SPRINTF([%.3f], x1*0.1536);
  $  004.PRPT的能量储备电压                                $    $  V       $    $  ANS000.BYTE008  $  y = SPRINTF([%.3f], x1*0.1536);
  $  005.DSAB的能量储备电压                                $    $  V       $    $  ANS000.BYTE009  $  y = SPRINTF([%.3f], x1*0.1536);
  $  006.PSAB的储能电压                                    $    $  V       $    $  ANS000.BYTE010  $  y = SPRINTF([%.3f], x1*0.1536);
  $  007.DCAB的能量储备电压                                $    $  V       $    $  ANS000.BYTE011  $  y = SPRINTF([%.3f], x1*0.1536);
  $  008.PCAB的能量储备电压                                $    $  V       $    $  ANS000.BYTE012  $  y = SPRINTF([%.3f], x1*0.1536);
  $  009.后DSAB的能量储备电压                              $    $  V       $    $  ANS000.BYTE013  $  y = SPRINTF([%.3f], x1*0.1536);
  $  010.后PSAB的能量储备电压                              $    $  V       $    $  ANS000.BYTE014  $  y = SPRINTF([%.3f], x1*0.1536);
  $  011.后RDBPT/的能量储备电压/后DKAB的能量储备电压       $    $  V       $    $  ANS000.BYTE015  $  y = SPRINTF([%.3f], x1*0.1536);
  $  012.后RPBPT/的能量储备电压后PKAB的能量储备电压        $    $  V       $    $  ANS000.BYTE016  $  y = SPRINTF([%.3f], x1*0.1536);
  $  013.脉管电压                                          $    $  V       $    $  ANS000.BYTE017  $  y = SPRINTF([%.3f], x1*0.06966);
  $  014.DAB电阻                                           $    $  ohm     $    $  ANS000.BYTE018  $  y = SPRINTF([%.3f], x1*0.0392);
  $  015.PAB电阻                                           $    $  ohm     $    $  ANS000.BYTE019  $  y = SPRINTF([%.3f], x1*0.0392);
  $  016.牵开器DPT阻力                                     $    $  ohm     $    $  ANS000.BYTE020  $  y = SPRINTF([%.3f], x1*0.0392);
  $  017.牵开器PPT阻力                                     $    $  ohm     $    $  ANS000.BYTE021  $  y = SPRINTF([%.3f], x1*0.0392);
  $  018.DSAB阻力                                          $    $  ohm     $    $  ANS000.BYTE022  $  y = SPRINTF([%.3f], x1*0.0392);
  $  019.PSAB阻力                                          $    $  ohm     $    $  ANS000.BYTE023  $  y = SPRINTF([%.3f], x1*0.0392);
  $  020.DCAB阻力                                          $    $  ohm     $    $  ANS000.BYTE024  $  y = SPRINTF([%.3f], x1*0.0392);
  $  021.PCAB阻力                                          $    $  ohm     $    $  ANS000.BYTE025  $  y = SPRINTF([%.3f], x1*0.0392);
  $  022.后方DSAB阻力                                      $    $  ohm     $    $  ANS000.BYTE026  $  y = SPRINTF([%.3f], x1*0.0392);
  $  023.后方PSAB阻力                                      $    $  ohm     $    $  ANS000.BYTE027  $  y = SPRINTF([%.3f], x1*0.0392);
  $  024.后RDBPT电阻/后方DBPT抵抗                          $    $  ohm     $    $  ANS000.BYTE028  $  y = SPRINTF([%.3f], x1*0.0392);
  $  025.后RPBPT电阻/后方PBPT抵抗                          $    $  ohm     $    $  ANS000.BYTE029  $  y = SPRINTF([%.3f], x1*0.0392);
  $  026.驱动器扣开关状态                                  $    $          $    $  ANS000.BYTE030  $  switxh(x1&0x03) 0x00: y=@013e; 0x01: y=@013f; 0x02: y=@0007; 0x03: y=@013b;
  $  027.乘客扣开关状态                                    $    $          $    $  ANS000.BYTE030  $  switxh(x1&0x0C) 0x00: y=@013e; 0x04: y=@013f; 0x08: y=@0007; 0x0C: y=@013b;
  $  028.乘客安全气囊关闭开关状态                          $    $          $    $  ANS000.BYTE030  $  switxh((x1>>4)&0x03) 0x00: y=@013e; 0x01: y=@013f; 0x02: y=@0007; 0x03: y=@013b;

  $)  01.ECU配置服务数据流
  $  01.ECU配置服务数据流
  $  REQ000:7E3 03 22 02 00 00 00 00 00       $  ANS000:7EB 03 22 02 00 00 00 00 00

  $  000.输出选项                      $    $       $    $  ANS000.BYTE004  $  if(((x1>>0)&1)) y=@0136;else y=@0137;
  $  001.输出类型                      $    $       $    $  ANS000.BYTE004  $  if(((x1>>1)&1)) y=@0136;else y=@0137;
  $  002.SBSO选项                      $    $       $    $  ANS000.BYTE004  $  if(((x1>>2)&1)) y=@0136;else y=@0137;
  $  003.WL Blink类型                  $    $       $    $  ANS000.BYTE004  $  if(((x1>>3)&1)) y=@0140;else y=@0141;
  $  004.PADA选项                      $    $       $    $  ANS000.BYTE004  $  if(((x1>>4)&1)) y=@0136;else y=@0137;
  $  005.PADA类型                      $    $       $    $  ANS000.BYTE004  $  if(((x1>>5)&1)) y=@0131;else y=@0132;
  $  006.RDSAB选项                     $    $       $    $  ANS000.BYTE005  $  if(((x1>>0)&1)) y=@0136;else y=@0137;
  $  007.RPSAB选项                     $    $       $    $  ANS000.BYTE005  $  if(((x1>>1)&1)) y=@0136;else y=@0137;
  $  008.DAB 选项                      $    $       $    $  ANS000.BYTE006  $  if(((x1>>0)&1)) y=@0136;else y=@0137;
  $  009.PAB 选项                      $    $       $    $  ANS000.BYTE006  $  if(((x1>>1)&1)) y=@0136;else y=@0137;
  $  010.DBPT 选项                     $    $       $    $  ANS000.BYTE006  $  if(((x1>>2)&1)) y=@0136;else y=@0137;
  $  011.PBPT 选项                     $    $       $    $  ANS000.BYTE006  $  if(((x1>>3)&1)) y=@0136;else y=@0137;
  $  012.DSAB 选项                     $    $       $    $  ANS000.BYTE006  $  if(((x1>>4)&1)) y=@0136;else y=@0137;
  $  013.PSAB 选项                     $    $       $    $  ANS000.BYTE006  $  if(((x1>>5)&1)) y=@0136;else y=@0137;
  $  014.DCAB 选项                     $    $       $    $  ANS000.BYTE006  $  if(((x1>>6)&1)) y=@0136;else y=@0137;
  $  015.PCAB 选项                     $    $       $    $  ANS000.BYTE006  $  if(((x1>>7)&1)) y=@0136;else y=@0137;
  $  016.WL 选项                       $    $       $    $  ANS000.BYTE007  $  if(((x1>>0)&1)) y=@0136;else y=@0137;
  $  017.PADI 选项                     $    $       $    $  ANS000.BYTE007  $  if(((x1>>1)&1)) y=@0136;else y=@0137;
  $  018.WL 类型                       $    $       $    $  ANS000.BYTE007  $  if(((x1>>2)&1)) y=@012f;else y=@0130;
  $  019.PADI 类型                     $    $       $    $  ANS000.BYTE007  $  if(((x1>>3)&1)) y=@012f;else y=@0130;
  $  020.DSB 选项                      $    $       $    $  ANS000.BYTE008  $  if(((x1>>0)&1)) y=@0136;else y=@0137;
  $  021.PSB 选项                      $    $       $    $  ANS000.BYTE008  $  if(((x1>>1)&1)) y=@0136;else y=@0137;
  $  022.DSB 类型                      $    $       $    $  ANS000.BYTE008  $  if(((x1>>2)&1)) y=@0131;else y=@0132;
  $  023.PSB 类型                      $    $       $    $  ANS000.BYTE008  $  if(((x1>>3)&1)) y=@0131;else y=@0132;
  $  024.DRIVER SIS 选项               $    $       $    $  ANS000.BYTE009  $  if(((x1>>0)&1)) y=@0136;else y=@0137;
  $  025.PASSENGER SIS 选项            $    $       $    $  ANS000.BYTE009  $  if(((x1>>1)&1)) y=@0136;else y=@0137;
  $  026.DRIVER SIS 类型               $    $       $    $  ANS000.BYTE009  $  if(((x1>>2)&1)) y=@0136;else y=@0137;
  $  027.PASSENGER REAR SIS 类型       $    $       $    $  ANS000.BYTE009  $  if(((x1>>3)&1)) y=@0136;else y=@0137;

  $)  02.系统识别帧标识符
  $  02.系统识别帧标识符
  $  REQ000:7E3 03 22 08 04 00 00 00 00       $  ANS000:7EB 03 22 08 04 00 00 00 00

  $  000.报警灯状态                 $    $       $    $  ANS000.BYTE011  $  if(((x1>>0)&1)) y=@0093;else y=@0092;
  $  001.主驾安全带状态             $    $       $    $  ANS000.BYTE012  $  if(x1==1) y=@0133;else if(x1==2) y=@0134;else if(x1==3) y=@0004;else if(x1==4) y=@0135;else y=@0030;
  $  002.副驾安全带状态             $    $       $    $  ANS000.BYTE013  $  if(x1==1) y=@0133;else if(x1==2) y=@0134;else if(x1==3) y=@0004;else if(x1==4) y=@0135;else y=@0030;
  $  003.诊断模式与控制器模式       $    $       $    $  ANS000.BYTE014  $  if(x1==1) y=@0138;else if(x1==2) y=@0139;else if(x1==4) y=@013a;else if(x1==8) y=@013b;else if(x1==16) y=@013c;else y=@013d;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7E3 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
