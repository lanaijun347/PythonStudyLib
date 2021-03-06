
    车型ID：003b

    模拟：协议模拟-->003b

;******************************************************************************************************************************************************

    通讯线: $~03$~11$~500k$~790

进入命令:

  $~  REQ000:710 02 10 01 00 00 00 00 00       $~  ANS000:790 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:710 02 3E 00 00 00 00 00 00       $!  ANS000:790 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:710 03 19 02 09 00 00 00 00       $#  ANS000:790 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/2c000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:710 04 14 FF FF FF 00 00 00       $$  ANS000:790 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:710 03 22 F1 87 00 00 00 00       $%  ANS000:790 03 22 F1 87 00 00 00 00
  $%  REQ001:710 03 22 F1 8A 00 00 00 00       $%  ANS001:790 03 22 F1 8A 00 00 00 00
  $%  REQ002:710 03 22 F1 93 00 00 00 00       $%  ANS002:790 03 22 F1 93 00 00 00 00
  $%  REQ003:710 03 22 F1 95 00 00 00 00       $%  ANS003:790 03 22 F1 95 00 00 00 00
  $%  REQ004:710 03 22 F1 9D 00 00 00 00       $%  ANS004:790 03 22 F1 9D 00 00 00 00
  $%  REQ005:710 03 22 F1 8B 00 00 00 00       $%  ANS005:790 03 22 F1 8B 00 00 00 00
  $%  REQ006:710 03 22 F1 90 00 00 00 00       $%  ANS006:790 03 22 F1 90 00 00 00 00
  $%  REQ007:710 03 22 F1 84 00 00 00 00       $%  ANS007:790 03 22 F1 84 00 00 00 00
  $%  REQ008:710 03 22 F1 8C 00 00 00 00       $%  ANS008:790 03 22 F1 8C 00 00 00 00
  $%  REQ009:710 03 22 F1 98 00 00 00 00       $%  ANS009:790 03 22 F1 98 00 00 00 00

  $%  000:零部件件号:                     $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15);
  $%  001:系统供应商代码:                 $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  002:系统供应商ECU硬件版本号:        $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  003:系统供应商ECU软件版本号:        $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  004:ECU安装日期:                    $%    $%  ANS004.BYTE004  $%  HEX(x1,x2,x3,x4);
  $%  005:ECU制造日期:                    $%    $%  ANS005.BYTE004  $%  HEX(x1,x2,x3,x4);
  $%  006:VIN:                            $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  007:指纹数据标识符:                 $%    $%  ANS007.BYTE004  $%  y = SPRINTF([%02X%02X%02X%02X%c%c%c%c%c%c%c%c%c%c],x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14);
  $%  008:ECU序列号:                      $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  009:维修店代码/测试仪序列号:        $%    $%  ANS009.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);

;******************************************************************************************************************************************************

读数据流: 

  $)  00.转向力矩
  $  00.转向力矩
  $  REQ000:710 03 22 16 00 00 00 00 00       $  ANS000:790 03 22 16 00 00 00 00 00

  $  000.转向力矩       $    $  Nm     $    $  ANS000.BYTE004  $  y = SPRINTF([%d], (x1*256+x2)/4096-8);

  $)  01.系统运行模式
  $  01.系统运行模式
  $  REQ000:710 03 22 16 01 00 00 00 00       $  ANS000:790 03 22 16 01 00 00 00 00

  $  000.系统运行模式       $    $       $    $  ANS000.BYTE004  $  if(x1==1) y = @0084; else if(x1==2) y = @0085; else if(x1==3) y = @0086; else if(x1==4) y = @0087;else y = @0004;

  $)  02.电源电压
  $  02.电源电压
  $  REQ000:710 03 22 16 02 00 00 00 00       $  ANS000:790 03 22 16 02 00 00 00 00

  $  000.电源电压       $    $  V     $    $  ANS000.BYTE004  $  y = SPRINTF([%d], (x1*256+x2)/50);

  $)  03.助力使能状态
  $  03.助力使能状态
  $  REQ000:710 03 22 16 03 00 00 00 00       $  ANS000:790 03 22 16 03 00 00 00 00

  $  000.助力使能状态       $    $       $    $  ANS000.BYTE004  $  if(x1==0) y=@0083;else if(x1==1) y=@006b;else y=@0004;

  $)  04.EPS扭矩信号
  $  04.EPS扭矩信号
  $  REQ000:710 03 22 16 04 00 00 00 00       $  ANS000:790 03 22 16 04 00 00 00 00

  $  000.主扭矩信号周期         $    $  us     $    $  ANS000.BYTE004  $  y = SPRINTF([%d], (x1*256+x2)/10);
  $  001.辅扭矩信号周期         $    $  us     $    $  ANS000.BYTE006  $  y = SPRINTF([%d], (x1*256+x2)/10);
  $  002.主扭矩信号占空比       $    $  %      $    $  ANS000.BYTE008  $  y = SPRINTF([%d], (x1*256+x2)*100/4096);
  $  003.辅扭矩信号占空比       $    $  %      $    $  ANS000.BYTE010  $  y = SPRINTF([%d], (x1*256+x2)*100/4096);

  $)  05.EPS角度信号
  $  05.EPS角度信号
  $  REQ000:710 03 22 16 05 00 00 00 00       $  ANS000:790 03 22 16 05 00 00 00 00

  $  000.主角度信号周期         $    $  us     $    $  ANS000.BYTE004  $  y = SPRINTF([%d], (x1*256+x2)/10);
  $  001.辅角度信号周期         $    $  us     $    $  ANS000.BYTE006  $  y = SPRINTF([%d], (x1*256+x2)/10);
  $  002.主角度信号占空比       $    $  %      $    $  ANS000.BYTE008  $  y = SPRINTF([%d], (x1*256+x2)*100/4096);
  $  003.辅角度信号占空比       $    $  %      $    $  ANS000.BYTE010  $  y = SPRINTF([%d], (x1*256+x2)*100/4096);

  $)  06.ECU温度
  $  06.ECU温度
  $  REQ000:710 03 22 16 06 00 00 00 00       $  ANS000:790 03 22 16 06 00 00 00 00

  $  000.ECU温度       $    $  ℃     $    $  ANS000.BYTE004  $  y = SPRINTF([%d], (x1*256+x2)-32768);

  $)  07.EPS扭矩传感器电压
  $  07.EPS扭矩传感器电压
  $  REQ000:710 03 22 16 07 00 00 00 00       $  ANS000:790 03 22 16 07 00 00 00 00

  $  000.EPS 扭矩传感器电压       $    $  V     $    $  ANS000.BYTE004  $  y = SPRINTF([%d], (x1*256+x2)*5/1024);

  $)  08.MCU电压
  $  08.MCU电压
  $  REQ000:710 03 22 16 08 00 00 00 00       $  ANS000:790 03 22 16 08 00 00 00 00

  $  000.MCU电压       $    $  V     $    $  ANS000.BYTE004  $  y = SPRINTF([%d], (x1*256+x2)*9/1024);

  $)  09.车速
  $  09.车速
  $  REQ000:710 03 22 16 09 00 00 00 00       $  ANS000:790 03 22 16 09 00 00 00 00

  $  000.车速       $    $  km/h     $    $  ANS000.BYTE004  $  y = SPRINTF([%d], x1);

  $)  10.转向角度
  $  10.转向角度
  $  REQ000:710 03 22 16 10 00 00 00 00       $  ANS000:790 03 22 16 10 00 00 00 00

  $  000.转向角度       $    $  °     $    $  ANS000.BYTE004  $  y = SPRINTF([%d], (x1*256+x2)/16-2048);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:710 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
