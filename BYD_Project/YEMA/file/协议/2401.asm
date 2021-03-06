
    车型ID：2401

    模拟：协议模拟-->2401

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~729

进入命令:

  $~  REQ000:721 02 10 01 00 00 00 00 00       $~  ANS000:729 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:721 02 3E 00 00 00 00 00 00       $!  ANS000:729 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:721 03 19 02 09 00 00 00 00       $#  ANS000:729 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/06000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:721 04 14 FF FF FF 00 00 00       $$  ANS000:729 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:721 03 22 F1 87 00 00 00 00       $%  ANS000:729 03 22 F1 87 00 00 00 00
  $%  REQ001:721 03 22 F1 8A 00 00 00 00       $%  ANS001:729 03 22 F1 8A 00 00 00 00
  $%  REQ002:721 03 22 F1 97 00 00 00 00       $%  ANS002:729 03 22 F1 97 00 00 00 00
  $%  REQ003:721 03 22 F1 93 00 00 00 00       $%  ANS003:729 03 22 F1 93 00 00 00 00
  $%  REQ004:721 03 22 F1 95 00 00 00 00       $%  ANS004:729 03 22 F1 95 00 00 00 00
  $%  REQ005:721 03 22 F1 8C 00 00 00 00       $%  ANS005:729 03 22 F1 8C 00 00 00 00
  $%  REQ006:721 03 22 F1 90 00 00 00 00       $%  ANS006:729 03 22 F1 90 00 00 00 00
  $%  REQ007:721 03 22 F1 92 00 00 00 00       $%  ANS007:729 03 22 F1 92 00 00 00 00
  $%  REQ008:721 03 22 F1 8B 00 00 00 00       $%  ANS008:729 03 22 F1 8B 00 00 00 00
  $%  REQ009:721 03 22 F1 94 00 00 00 00       $%  ANS009:729 03 22 F1 94 00 00 00 00

  $%  000:汽车制造商备件编号:           $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12);
  $%  001:系统供应商标识符:             $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  002:系统名称:                     $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  003:统供应商ECU硬件版本号:        $%    $%  ANS003.BYTE004  $%  y=SPRINTF([V%c.%c],x1,x2);
  $%  004:统供应商ECU软件版本号:        $%    $%  ANS004.BYTE004  $%  y=SPRINTF([V%c.%c.%c%c],x1,x2,x3,x4);
  $%  005:ECU序列号:                    $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  006:VIN:                          $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  007:供应商ECU硬件号:              $%    $%  ANS007.BYTE004  $%  y=SPRINTF([%d%d%d%d%d%d%d%d],x1,x2,x3,x4,x5,x6,x7,x8);
  $%  008:ECU生产日期:                  $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3);
  $%  009:供应商ECU软件编号:            $%    $%  ANS009.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);

;******************************************************************************************************************************************************

读数据流: 

  $)  00.读数据流
  $  00.读数据流
  $  REQ000:721 03 22 05 06 00 00 00 00       $  ANS000:729 03 22 05 06 00 00 00 00
  $  REQ001:721 03 22 05 07 00 00 00 00       $  ANS001:729 03 22 05 07 00 00 00 00
  $  REQ002:721 03 22 05 08 00 00 00 00       $  ANS002:729 03 22 05 08 00 00 00 00
  $  REQ003:721 03 22 05 09 00 00 00 00       $  ANS003:729 03 22 05 09 00 00 00 00
  $  REQ004:721 03 22 05 12 00 00 00 00       $  ANS004:729 03 22 05 12 00 00 00 00
  $  REQ005:721 03 22 05 13 00 00 00 00       $  ANS005:729 03 22 05 13 00 00 00 00
  $  REQ006:721 03 22 05 14 00 00 00 00       $  ANS006:729 03 22 05 14 00 00 00 00
  $  REQ007:721 03 22 05 16 00 00 00 00       $  ANS007:729 03 22 05 16 00 00 00 00
  $  REQ008:721 03 22 05 17 00 00 00 00       $  ANS008:729 03 22 05 17 00 00 00 00
  $  REQ009:721 03 22 05 18 00 00 00 00       $  ANS009:729 03 22 05 18 00 00 00 00
  $  REQ010:721 03 22 05 19 00 00 00 00       $  ANS010:729 03 22 05 19 00 00 00 00

  $  000.辅助扭矩                                  $    $  Nm       $    $  ANS000.BYTE004  $  y=(x1*256+x2)/4096-8;
  $  001.系统运行模式                              $    $           $    $  ANS001.BYTE004  $  if(x==0x01)y=@00ec;else if(x==0x02)y=@00ed;else if(x==0x03)y=@00ee;else if(x==0x04)y=@00ef;else y=@005c;
  $  002.电池电压                                  $    $  V        $    $  ANS002.BYTE004  $  y=(x1*256+x2)/50;
  $  003.发动机运行状态                            $    $           $    $  ANS003.BYTE004  $  if(((x>>0)&1))y=@000d;else y=@00eb;
  $  004.ECU(电子控制器)的温度                     $    $  degC     $    $  ANS004.BYTE004  $  y=(x1*256+x2)-32768;
  $  005.EPS(电动助力转向系统)扭矩传感器电压       $    $  V        $    $  ANS005.BYTE004  $  y=(x1*256+x2)*5/1024;
  $  006.MCU(驱动电机控制单元)电压                 $    $  V        $    $  ANS006.BYTE004  $  y=(x1*256+x2)*9/1204;
  $  007.MCU(驱动电机控制单元)从电压               $    $  V        $    $  ANS007.BYTE004  $  y=(x1*256+x2)*5/1024;
  $  008.车速                                      $    $  km/h     $    $  ANS008.BYTE004  $  y=x;
  $  009.发动机转速                                $    $  rpm      $    $  ANS009.BYTE004  $  y=x1*256+x2;
  $  010.转向角                                    $    $  deg      $    $  ANS010.BYTE004  $  y=(x1*256+x2)/16-1048;

  $)  01.EPS(电动助力转向系统)扭矩传感器
  $  01.EPS(电动助力转向系统)扭矩传感器
  $  REQ000:721 03 22 05 10 00 00 00 00       $  ANS000:729 03 22 05 10 00 00 00 00

  $  000.T1 周期        $    $  us     $    $  ANS000.BYTE004  $  if((x1*256+x2)==0x00)y=@00e9;else if((x1*256+x2)==0xffff)y=@00ea;else y=(x1*256+x2)/10;
  $  001.T2 周期        $    $  us     $    $  ANS000.BYTE006  $  if((x1*256+x2)==0x00)y=@00e9;else if((x1*256+x2)==0xffff)y=@00ea;else y=(x1*256+x2)/10;
  $  002.T1的职责       $    $  %      $    $  ANS000.BYTE008  $  if((x1*256+x2)==0x00)y=@00e7;else if((x1*256+x2)==0x4096)y=@00e8;else if((x1*256+x2)==0xffff)y=@00e9;else y=(x1*256+x2)*1000/4096;
  $  003.T2的职责       $    $  %      $    $  ANS000.BYTE010  $  if((x1*256+x2)==0x00)y=@00e7;else if((x1*256+x2)==0x4096)y=@00e8;else if((x1*256+x2)==0xffff)y=@00e9;else y=(x1*256+x2)*1000/4096;

  $)  02.转向角度传感器
  $  02.转向角度传感器
  $  REQ000:721 03 22 05 11 00 00 00 00       $  ANS000:729 03 22 05 11 00 00 00 00

  $  000.P 周期        $    $  us     $    $  ANS000.BYTE004  $  if((x1*256+x2)==0x00)y=@00e9;else if((x1*256+x2)==0xffff)y=@00ea;else y=(x1*256+x2)/10;
  $  001.S 周期        $    $  us     $    $  ANS000.BYTE006  $  if((x1*256+x2)==0x00)y=@00e9;else if((x1*256+x2)==0xffff)y=@00ea;else y=(x1*256+x2)/10;
  $  002.P的职责       $    $  %      $    $  ANS000.BYTE008  $  if((x1*256+x2)==0x00)y=@00e7;else if((x1*256+x2)==0x4096)y=@00e8;else if((x1*256+x2)==0xffff)y=@00e9;else y=(x1*256+x2)*1000/4096;
  $  003.S的职责       $    $  %      $    $  ANS000.BYTE010  $  if((x1*256+x2)==0x00)y=@00e7;else if((x1*256+x2)==0x4096)y=@00e8;else if((x1*256+x2)==0xffff)y=@00e9;else y=(x1*256+x2)*1000/4096;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:721 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
