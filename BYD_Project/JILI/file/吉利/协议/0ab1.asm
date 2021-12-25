
    车型ID：0ab1

    模拟：协议模拟-->0ab1

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7BC

进入命令:

  $~  REQ000:7B4 02 10 01 00 00 00 00 00       $~  ANS000:7BC 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7B4 02 3E 00 00 00 00 00 00       $!  ANS000:7BC 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  00.读故障码
  $#  REQ000:7B4 03 19 02 09 00 00 00 00       $#  ANS000:7BC 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/93000000


  $#  01.读故障码库
  $#  REQ000:7B4 02 19 0A 00 00 00 00 00       $#  ANS000:7BC 02 19 0A 00 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/93000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7B4 04 14 FF FF FF 00 00 00       $$  ANS000:7BC 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7B4 03 22 F1 12 00 00 00 00       $%  ANS000:7BC 03 22 F1 12 00 00 00 00
  $%  REQ001:7B4 03 22 F1 87 00 00 00 00       $%  ANS001:7BC 03 22 F1 87 00 00 00 00
  $%  REQ002:7B4 03 22 F1 89 00 00 00 00       $%  ANS002:7BC 03 22 F1 89 00 00 00 00
  $%  REQ003:7B4 03 22 F1 8A 00 00 00 00       $%  ANS003:7BC 03 22 F1 8A 00 00 00 00
  $%  REQ004:7B4 03 22 F1 8B 00 00 00 00       $%  ANS004:7BC 03 22 F1 8B 00 00 00 00
  $%  REQ005:7B4 03 22 F1 8C 00 00 00 00       $%  ANS005:7BC 03 22 F1 8C 00 00 00 00
  $%  REQ006:7B4 03 22 F1 90 00 00 00 00       $%  ANS006:7BC 03 22 F1 90 00 00 00 00
  $%  REQ007:7B4 03 22 F1 93 00 00 00 00       $%  ANS007:7BC 03 22 F1 93 00 00 00 00
  $%  REQ008:7B4 03 22 F1 95 00 00 00 00       $%  ANS008:7BC 03 22 F1 95 00 00 00 00
  $%  REQ009:7B4 03 22 F1 9D 00 00 00 00       $%  ANS009:7BC 03 22 F1 9D 00 00 00 00
  $%  REQ010:7B4 03 22 F1 98 00 00 00 00       $%  ANS010:7BC 03 22 F1 98 00 00 00 00
  $%  REQ011:7B4 03 22 F1 99 00 00 00 00       $%  ANS011:7BC 03 22 F1 99 00 00 00 00
  $%  REQ012:7B4 03 22 F1 82 00 00 00 00       $%  ANS012:7BC 03 22 F1 82 00 00 00 00

  $%  000:车辆名称:                                    $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  001:零件号:                                      $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  002:Geely软件版本号:                             $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  003:供应商代码:                                  $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  004:ECU(电子控制器)生产日期:                     $%    $%  ANS004.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  005:ECU(电子控制器)序列号:                       $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24);
  $%  006:车辆识别号（VIN码）:                         $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  007:ECU(电子控制器)硬件版本号:                   $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  008:ECU(电子控制器)软件版本号:                   $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  009:ECU(电子控制器)安装日期:                     $%    $%  ANS009.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  010:ECU(电子控制器)刷写维修店代号或设备号:       $%    $%  ANS010.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  011:ECU(电子控制器)刷写日期:                     $%    $%  ANS011.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  012:标定软件版本号:                              $%    $%  ANS012.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7B4 03 22 DF 00 00 00 00 00       $  ANS000:7BC 03 22 DF 00 00 00 00 00
  $  REQ001:7B4 03 22 4E 00 00 00 00 00       $  ANS001:7BC 03 22 4E 00 00 00 00 00
  $  REQ002:7B4 03 22 4E 01 00 00 00 00       $  ANS002:7BC 03 22 4E 01 00 00 00 00
  $  REQ003:7B4 03 22 4E 02 00 00 00 00       $  ANS003:7BC 03 22 4E 02 00 00 00 00
  $  REQ004:7B4 03 22 4E 03 00 00 00 00       $  ANS004:7BC 03 22 4E 03 00 00 00 00
  $  REQ005:7B4 03 22 4E 21 00 00 00 00       $  ANS005:7BC 03 22 4E 21 00 00 00 00
  $  REQ006:7B4 03 22 4E 22 00 00 00 00       $  ANS006:7BC 03 22 4E 22 00 00 00 00
  $  REQ007:7B4 03 22 4E 07 00 00 00 00       $  ANS007:7BC 03 22 4E 07 00 00 00 00
  $  REQ008:7B4 03 22 4E 23 00 00 00 00       $  ANS008:7BC 03 22 4E 23 00 00 00 00
  $  REQ009:7B4 03 22 4E 24 00 00 00 00       $  ANS009:7BC 03 22 4E 24 00 00 00 00
  $  REQ010:7B4 03 22 4E 25 00 00 00 00       $  ANS010:7BC 03 22 4E 25 00 00 00 00
  $  REQ011:7B4 03 22 4E 26 00 00 00 00       $  ANS011:7BC 03 22 4E 26 00 00 00 00
  $  REQ012:7B4 03 22 4E 11 00 00 00 00       $  ANS012:7BC 03 22 4E 11 00 00 00 00
  $  REQ013:7B4 03 22 4E 2A 00 00 00 00       $  ANS013:7BC 03 22 4E 2A 00 00 00 00
  $  REQ014:7B4 03 22 4E 2B 00 00 00 00       $  ANS014:7BC 03 22 4E 2B 00 00 00 00
  $  REQ015:7B4 03 22 4E 27 00 00 00 00       $  ANS015:7BC 03 22 4E 27 00 00 00 00
  $  REQ016:7B4 03 22 4E 28 00 00 00 00       $  ANS016:7BC 03 22 4E 28 00 00 00 00
  $  REQ017:7B4 03 22 4E 2C 00 00 00 00       $  ANS017:7BC 03 22 4E 2C 00 00 00 00
  $  REQ018:7B4 03 22 4E 2D 00 00 00 00       $  ANS018:7BC 03 22 4E 2D 00 00 00 00
  $  REQ019:7B4 03 22 4E 2E 00 00 00 00       $  ANS019:7BC 03 22 4E 2E 00 00 00 00
  $  REQ020:7B4 03 22 4E 2F 00 00 00 00       $  ANS020:7BC 03 22 4E 2F 00 00 00 00
  $  REQ021:7B4 03 22 4E 30 00 00 00 00       $  ANS021:7BC 03 22 4E 30 00 00 00 00
  $  REQ022:7B4 03 22 4E 29 00 00 00 00       $  ANS022:7BC 03 22 4E 29 00 00 00 00

  $  000.ECU(电子控制器)供电电压       $    $  V        $    $  ANS000.BYTE004  $  y=x*0.1;
  $  001.低压端电流值                  $    $  A        $    $  ANS001.BYTE004  $  y=(x1*256+x2)-255;
  $  002.高压端电压值                  $    $  V        $    $  ANS002.BYTE004  $  y=(x1*256+x2)*0.1;
  $  003.高压端电流值                  $    $  A        $    $  ANS003.BYTE004  $  y=(x1*256+x2)-255;
  $  004.PCB板温度                     $    $  degC     $    $  ANS004.BYTE004  $  y=x-48;
  $  005.48V侧内侧实际电压             $    $  V        $    $  ANS005.BYTE004  $  y=(x1*0x100+x2)/256;
  $  006.12V侧内侧实际电压             $    $  V        $    $  ANS006.BYTE004  $  y=(x1*0x100+x2)/512;
  $  007.请求模式                      $    $  /        $    $  ANS007.BYTE004  $  if(x==1) y=@05cb;else if(x==2) y=@0cff;else if(x==4) y=@05c4; else y=@0220;
  $  008.12V侧电压设定值               $    $  V        $    $  ANS008.BYTE004  $  y=(x1*0x100+x2)/512;
  $  009.12V侧电流设定值               $    $  A        $    $  ANS009.BYTE004  $  y=(x1*0x100+x2)/64;
  $  010.48V侧电压设定值               $    $  V        $    $  ANS010.BYTE004  $  y=(x1*0x100+x2)/128;
  $  011.48V侧电流设定值               $    $  A        $    $  ANS011.BYTE004  $  y=(x1*0x100+x2)/256;
  $  012.DCDC功率降额原因              $    $  /        $    $  ANS012.BYTE004  $  if(x==0) y=@0cf2;else if(x==1) y=@0cf3;else if(x==2) y=@0cf4; else if(x==3) y=@0cf5;else if(x==4) y=@0cf6;else if(x==5) y=@0cf7;else if(x==6) y=@0cf8;else if(x==7) y=@0cf9;else if(x==8) y=@0cfa;else if(x==9) y=@0cfb;else if(x==10) y=@0cfc;else if(x==11) y=@0cfd;else if(x==12) y=@0cfe;else y=@0220;
  $  013.DCDC实际工作模式              $    $  /        $    $  ANS013.BYTE004  $  if(x==0) y=@0318;else if(x==1) y=@05cb;else if(x==2) y=@05c4; else if(x==3) y=@0cff;else if(x==4) y=@0d00;else if(x==5) y=@01b0;else if(x==6) y=@0d01;else if(x==7) y=@0d02;else if(x==8) y=@06ae;else y=@0220;
  $  014.DCDC实际控制环                $    $  /        $    $  ANS014.BYTE004  $  if(x==0) y=@0d03;else if(x==1) y=@0d04; else y=@0220;
  $  015.驱动电路实际电压              $    $  V        $    $  ANS015.BYTE004  $  y=(x1*0x100+x2)/512;
  $  016.实际占空比                    $    $  /        $    $  ANS016.BYTE004  $  y=(x1*0x100+x2)/4096;
  $  017.低压侧硬件过流状态            $    $  /        $    $  ANS017.BYTE004  $  if(x==0) y=@01ac;else if(x==1) y=@051a; else y=@0220;
  $  018.低压侧硬件过压状态            $    $  /        $    $  ANS018.BYTE004  $  if(x==0) y=@01ac;else if(x==1) y=@051a; else y=@0220;
  $  019.高压侧硬件过流状态            $    $  /        $    $  ANS019.BYTE004  $  if(x==0) y=@01ac;else if(x==1) y=@051a; else y=@0220;
  $  020.高压侧硬件过压状态            $    $  /        $    $  ANS020.BYTE004  $  if(x==0) y=@01ac;else if(x==1) y=@051a; else y=@0220;
  $  021.5V电压状态                    $    $  /        $    $  ANS021.BYTE004  $  if(x==0) y=@01ac;else if(x==1) y=@051a; else y=@0220;
  $  022.2.5V参考电压AD值              $    $  /        $    $  ANS022.BYTE004  $  y=(x1*0x100+x2);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7B4 30 00 00 00 00 00 00 00  $FC 
  $FC REQ001:7B4 30 00 0B 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
