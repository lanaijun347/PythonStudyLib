
    车型ID：08cc

    模拟：协议模拟-->08cc

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7DA

进入命令:

  $~  REQ000:7D2 02 10 01 00 00 00 00 00       $~  ANS000:7DA 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7D2 02 3E 00 00 00 00 00 00       $!  ANS000:7DA 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  00.读故障码
  $#  REQ000:7D2 03 19 02 09 00 00 00 00       $#  ANS000:7DA 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/af000000


  $#  01.读故障码库
  $#  REQ000:7D2 02 19 0A 00 00 00 00 00       $#  ANS000:7DA 02 19 0A 00 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/af000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7D2 04 14 FF FF FF 00 00 00       $$  ANS000:7DA 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7D2 03 22 F1 12 00 00 00 00       $%  ANS000:7DA 03 22 F1 12 00 00 00 00
  $%  REQ001:7D2 03 22 F1 80 00 00 00 00       $%  ANS001:7DA 03 22 F1 80 00 00 00 00
  $%  REQ002:7D2 03 22 F1 87 00 00 00 00       $%  ANS002:7DA 03 22 F1 87 00 00 00 00
  $%  REQ003:7D2 03 22 F1 8A 00 00 00 00       $%  ANS003:7DA 03 22 F1 8A 00 00 00 00
  $%  REQ004:7D2 03 22 F1 8B 00 00 00 00       $%  ANS004:7DA 03 22 F1 8B 00 00 00 00
  $%  REQ005:7D2 03 22 F1 8C 00 00 00 00       $%  ANS005:7DA 03 22 F1 8C 00 00 00 00
  $%  REQ006:7D2 03 22 F1 90 00 00 00 00       $%  ANS006:7DA 03 22 F1 90 00 00 00 00
  $%  REQ007:7D2 03 22 F1 93 00 00 00 00       $%  ANS007:7DA 03 22 F1 93 00 00 00 00
  $%  REQ008:7D2 03 22 F1 95 00 00 00 00       $%  ANS008:7DA 03 22 F1 95 00 00 00 00
  $%  REQ009:7D2 03 22 F1 98 00 00 00 00       $%  ANS009:7DA 03 22 F1 98 00 00 00 00
  $%  REQ010:7D2 03 22 F1 99 00 00 00 00       $%  ANS010:7DA 03 22 F1 99 00 00 00 00
  $%  REQ011:7D2 03 22 F1 9D 00 00 00 00       $%  ANS011:7DA 03 22 F1 9D 00 00 00 00
  $%  REQ012:7D2 03 22 F1 82 00 00 00 00       $%  ANS012:7DA 03 22 F1 82 00 00 00 00

  $%  000:车辆名称:                                    $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  001:引导程序软件识别号:                          $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  002:零件号:                                      $%    $%  ANS002.BYTE004  $%  0 ASCII
  $%  003:供应商代码:                                  $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  004:ECU(电子控制器)生产日期:                     $%    $%  ANS004.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  005:ECU(电子控制器)序列号:                       $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24);
  $%  006:车辆识别号（VIN码）:                         $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  007:ECU(电子控制器)硬件版本号:                   $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  008:ECU(电子控制器)软件版本号:                   $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  009:ECU(电子控制器)刷写维修店代号或设备号:       $%    $%  ANS009.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  010:ECU(电子控制器)刷写日期:                     $%    $%  ANS010.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  011:ECU(电子控制器)安装日期:                     $%    $%  ANS011.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  012:标定软件版本号:                              $%    $%  ANS012.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7D2 03 22 DF 00 00 00 00 00       $  ANS000:7DA 03 22 DF 00 00 00 00 00
  $  REQ001:7D2 03 22 32 00 00 00 00 00       $  ANS001:7DA 03 22 32 00 00 00 00 00
  $  REQ002:7D2 03 22 32 01 00 00 00 00       $  ANS002:7DA 03 22 32 01 00 00 00 00
  $  REQ003:7D2 03 22 32 07 00 00 00 00       $  ANS003:7DA 03 22 32 07 00 00 00 00
  $  REQ004:7D2 03 22 32 08 00 00 00 00       $  ANS004:7DA 03 22 32 08 00 00 00 00
  $  REQ005:7D2 03 22 32 0B 00 00 00 00       $  ANS005:7DA 03 22 32 0B 00 00 00 00
  $  REQ006:7D2 03 22 32 0C 00 00 00 00       $  ANS006:7DA 03 22 32 0C 00 00 00 00
  $  REQ007:7D2 03 22 32 0F 00 00 00 00       $  ANS007:7DA 03 22 32 0F 00 00 00 00
  $  REQ008:7D2 03 22 32 10 00 00 00 00       $  ANS008:7DA 03 22 32 10 00 00 00 00
  $  REQ009:7D2 03 22 32 11 00 00 00 00       $  ANS009:7DA 03 22 32 11 00 00 00 00
  $  REQ010:7D2 03 22 32 12 00 00 00 00       $  ANS010:7DA 03 22 32 12 00 00 00 00

  $  000.ECU(电子控制器)供电电压       $    $  V        $    $  ANS000.BYTE004  $  y = X1*0.1;
  $  001.转向角                        $    $  deg      $    $  ANS001.BYTE004  $  y = (X1*256+x2) *0.1-780;
  $  002.ECU(电子控制器)温度           $    $  degC     $    $  ANS002.BYTE004  $  y = x1*1-40;
  $  003.电机输出扭矩                  $    $  Nm       $    $  ANS003.BYTE004  $  if(x1>=0x80)y = (X1*256+x2-0x10000)*0.01;else y=(X1*256+x2)*0.01;
  $  004.发动机状态                    $    $  /        $    $  ANS004.BYTE004  $  if(x1==0x00)y=@0204;else if(x1==0x01)y=@06a3;else if(x1==0x02)y=@0027;else if(x1==0x03)y=@09db;else if(x1==0xff)y=@06dd;else y=@0209;
  $  005.电机速度                      $    $  rpm      $    $  ANS005.BYTE004  $  if(x1>=0x80)y=x1*256+x2-0x10000;else y=x1*256+x2;
  $  006.左端缓冲机制状态              $    $  /        $    $  ANS006.BYTE004  $  if((x1&0x03)==0x00)y=@0130;else if((x1&0x03)==0x01)y=@0387;else if((x1&0x03)==0x02)y=@0388;else if((x1&0x03)==0x03)y=@0209;  else y=@000b;
  $  007.右端缓冲机制状态              $    $  /        $    $  ANS006.BYTE004  $  if((x1&0x0c)==0x00)y=@0130;else if((x1&0x0c)==0x04)y=@0387;else if((x1&0x0c)==0x08)y=@0388;else if((x1&0x0c)==0x0c)y=@0209;  else y=@000b;
  $  008.启停系统状态                  $    $  /        $    $  ANS007.BYTE004  $  if(x1==0x00)y=@06de;else if(x1==0x01)y=@06df;else if(x1==0x02)y=@06e0;else if(x1==0x03)y=@06e1;else if(x1==0x04)y=@06e2;else if(x1==0x05)y=@09dc;else if(x1==0x06)y=@09dd;else if(x1==0xFF)y=@06dd;else y=@0209;
  $  009.个性化工作模式                $    $  /        $    $  ANS008.BYTE004  $  if(x==0x00) y=@0719; else if(x==0x01) y=@000d; else if(x==0x10) y=@0188; else y=@000b;
  $  010.电池电流                      $    $  A        $    $  ANS009.BYTE004  $  y=x*0.5;
  $  011.方向盘角度内部偏置            $    $  deg      $    $  ANS010.BYTE004  $  y=x-127;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7D2 30 00 00 00 00 00 00 00  $FC 
  $FC REQ001:7D2 30 00 0B 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
