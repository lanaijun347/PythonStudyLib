
    车型ID：002e

    模拟：协议模拟-->002e

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~748

进入命令:

  $~  REQ000:740 02 10 01 00 00 00 00 00       $~  ANS000:748 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:740 02 3E 80 00 00 00 00 00       $!  ANS000:748 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:740 03 19 02 09 00 00 00 00       $#  ANS000:748 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/23000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:740 04 14 FF FF FF 00 00 00       $$  ANS000:748 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:740 03 22 F1 50 00 00 00 00       $%  ANS000:748 03 22 F1 50 00 00 00 00
  $%  REQ001:740 03 22 F1 80 00 00 00 00       $%  ANS001:748 03 22 F1 80 00 00 00 00
  $%  REQ002:740 03 22 F1 84 00 00 00 00       $%  ANS002:748 03 22 F1 84 00 00 00 00
  $%  REQ003:740 03 22 F1 87 00 00 00 00       $%  ANS003:748 03 22 F1 87 00 00 00 00
  $%  REQ004:740 03 22 F1 88 00 00 00 00       $%  ANS004:748 03 22 F1 88 00 00 00 00
  $%  REQ005:740 03 22 F1 89 00 00 00 00       $%  ANS005:748 03 22 F1 89 00 00 00 00
  $%  REQ006:740 03 22 F1 8A 00 00 00 00       $%  ANS006:748 03 22 F1 8A 00 00 00 00
  $%  REQ007:740 03 22 F1 8B 00 00 00 00       $%  ANS007:748 03 22 F1 8B 00 00 00 00
  $%  REQ008:740 03 22 F1 90 00 00 00 00       $%  ANS008:748 03 22 F1 90 00 00 00 00
  $%  REQ009:740 03 22 F1 91 00 00 00 00       $%  ANS009:748 03 22 F1 91 00 00 00 00
  $%  REQ010:740 03 22 F1 97 00 00 00 00       $%  ANS010:748 03 22 F1 97 00 00 00 00
  $%  REQ011:740 03 22 F1 99 00 00 00 00       $%  ANS011:748 03 22 F1 99 00 00 00 00

  $%  000:车厂ECU硬件版本号:        $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7);
  $%  001:Boot软件标识:             $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  002:应用软件指纹:             $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  003:物料号:                   $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19);
  $%  004:车厂ECU软件号:            $%    $%  ANS004.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  005:车厂ECU软件版本号:        $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  006:供应商代码:               $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  007:ECU生产日期:              $%    $%  ANS007.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  008:VIN码:                    $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  009:车厂ECU硬件号:            $%    $%  ANS009.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24);
  $%  010:产品型号:                 $%    $%  ANS010.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15);
  $%  011:升级程序日期:             $%    $%  ANS011.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:740 03 22 04 80 00 00 00 00       $  ANS000:748 03 22 04 80 00 00 00 00
  $  REQ001:740 03 22 04 81 00 00 00 00       $  ANS001:748 03 22 04 81 00 00 00 00
  $  REQ002:740 03 22 04 82 00 00 00 00       $  ANS002:748 03 22 04 82 00 00 00 00
  $  REQ003:740 03 22 04 83 00 00 00 00       $  ANS003:748 03 22 04 83 00 00 00 00
  $  REQ004:740 03 22 04 84 00 00 00 00       $  ANS004:748 03 22 04 84 00 00 00 00
  $  REQ005:740 03 22 04 85 00 00 00 00       $  ANS005:748 03 22 04 85 00 00 00 00

  $  000.OBC(车载充电机)输出电压           $    $  V      $    $  ANS000.BYTE004  $  if(x1*256+x2>10000) y=@0008; else y=SPRINTF([%.1f],(x1*256+x2)*0.1);
  $  001.OBC(车载充电机)输出电流           $    $  A      $    $  ANS001.BYTE004  $  if(x1*256+x2>1000) y=@0008; else y=SPRINTF([%.1f],(x1*256+x2)*0.1);
  $  002.OBC(车载充电机)温度               $    $  ℃     $    $  ANS002.BYTE004  $  if(x1<160) y=SPRINTF([%.1f],x1-40); else y=@010c;
  $  003.OBC(车载充电机)系统工作状态       $    $         $    $  ANS003.BYTE004  $  if(x1==0) y=@0006;else if(x1==1) y=@0003;else if(x1==2) y=@0007;else y=@0008;
  $  004.OBC(车载充电机)输入电压           $    $  V      $    $  ANS004.BYTE004  $  if(x1*256+x2>8000) y=@010c; else y=SPRINTF([%.1f],(x1*256+x2)*0.1);
  $  005.OBC(车载充电机)输入电流           $    $  A      $    $  ANS005.BYTE004  $  if(x1*256+x2>1000) y=@010c; else y=SPRINTF([%.1f],(x1*256+x2)*0.1);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:740 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
