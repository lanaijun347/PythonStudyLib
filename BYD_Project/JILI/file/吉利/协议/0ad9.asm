
    车型ID：0ad9

    模拟：协议模拟-->0ad9

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

  $  REQ000:7D2 03 22 F1 89 00 00 00 00       $  ANS000:7DA 03 22 F1 89 00 00 00 00
  $  REQ001:7D2 03 22 DF 00 00 00 00 00       $  ANS001:7DA 03 22 DF 00 00 00 00 00
  $  REQ002:7D2 03 22 DF 01 00 00 00 00       $  ANS002:7DA 03 22 DF 01 00 00 00 00
  $  REQ003:7D2 03 22 32 00 00 00 00 00       $  ANS003:7DA 03 22 32 00 00 00 00 00
  $  REQ004:7D2 03 22 32 01 00 00 00 00       $  ANS004:7DA 03 22 32 01 00 00 00 00
  $  REQ005:7D2 03 22 32 02 00 00 00 00       $  ANS005:7DA 03 22 32 02 00 00 00 00
  $  REQ006:7D2 03 22 32 04 00 00 00 00       $  ANS006:7DA 03 22 32 04 00 00 00 00
  $  REQ007:7D2 03 22 32 05 00 00 00 00       $  ANS007:7DA 03 22 32 05 00 00 00 00
  $  REQ008:7D2 03 22 32 07 00 00 00 00       $  ANS008:7DA 03 22 32 07 00 00 00 00
  $  REQ009:7D2 03 22 32 08 00 00 00 00       $  ANS009:7DA 03 22 32 08 00 00 00 00
  $  REQ010:7D2 03 22 32 0A 00 00 00 00       $  ANS010:7DA 03 22 32 0A 00 00 00 00
  $  REQ011:7D2 03 22 32 0B 00 00 00 00       $  ANS011:7DA 03 22 32 0B 00 00 00 00
  $  REQ012:7D2 03 22 32 0C 00 00 00 00       $  ANS012:7DA 03 22 32 0C 00 00 00 00
  $  REQ013:7D2 03 22 32 0D 00 00 00 00       $  ANS013:7DA 03 22 32 0D 00 00 00 00

  $  000.制造商ECU(电子控制器)软件版本号       $    $  /         $    $  ANS000.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $  001.ECU(电子控制器)供电电压               $    $  V         $    $  ANS001.BYTE004  $  y = X1*0.1;
  $  002.车速                                  $    $  km/h      $    $  ANS002.BYTE004  $  y = INT((X1*256+x2)*0.05625);
  $  003.转向角                                $    $  deg       $    $  ANS003.BYTE004  $  y = (X1*256+x2) *0.1-780;
  $  004.ECU(电子控制器)温度                   $    $  degC      $    $  ANS004.BYTE004  $  y = x1*1-40;
  $  005.扭矩输出比值                          $    $  %         $    $  ANS005.BYTE004  $  y = X1 *(100/255);
  $  006.转向速度                              $    $  deg/s     $    $  ANS006.BYTE004  $  y = (X1*256+x2) *0.1;
  $  007.方向盘扭矩                            $    $  Nm        $    $  ANS007.BYTE004  $  if(x1>=0x80)y = (X1*256+x2-0x10000)*0.01;else y=(X1*256+x2)*0.01;     
  $  008.电机输出扭矩                          $    $  Nm        $    $  ANS008.BYTE004  $  if(x1>=0x80)y = (X1*256+x2-0x10000)*0.01;else y=(X1*256+x2)*0.01;
  $  009.发动机状态                            $    $  /         $    $  ANS009.BYTE004  $  if(x1==0x00)y=@0204;else if(x1==0x01)y=@06a3;else if(x1==0x02)y=@0027;else if(x1==0x03)y=@09db;else if(x1==0xff)y=@06dd;else y=@0209;
  $  010.电机位置                              $    $  deg       $    $  ANS010.BYTE004  $  y = (X1*256+x2)*(360/4096);
  $  011.电机速度                              $    $  rpm       $    $  ANS011.BYTE004  $  if(x1>=0x80)y=x1*256+x2-0x10000;else y=x1*256+x2;
  $  012.左端缓冲机制状态                      $    $  /         $    $  ANS012.BYTE004  $  if((x1&0x03)==0x00)y=@0130;else if((x1&0x03)==0x01)y=@0387;else if((x1&0x03)==0x02)y=@0388;else if((x1&0x03)==0x03)y=@0209;  else y=@000b;
  $  013.右端缓冲机制状态                      $    $  /         $    $  ANS012.BYTE004  $  if((x1&0x0c)==0x00)y=@0130;else if((x1&0x0c)==0x04)y=@0387;else if((x1&0x0c)==0x08)y=@0388;else if((x1&0x0c)==0x0c)y=@0209;  else y=@000b;
  $  014.系统状态                              $    $  /         $    $  ANS013.BYTE004  $  if(x1==0x00)y=@0389;else if(x1==0x01)y=@038a;else if(x1==0x02)y=@038b;else if(x1==0x03)y=@038c;else if(x1==0x04)y=@038d;else if(x1==0x05)y=@038e;else if(x1==0x06)y=@038f;else if(x1>=0x07&&x1<=0xFE)y=@0209;else y=@06e3;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7D2 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
