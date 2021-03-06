
    车型ID：1043

    模拟：协议模拟-->1043

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~6DA

进入命令:


空闲命令:

  $!  REQ000:60A 02 3E 00 00 00 00 00 00       $!  ANS000:6DA 02 3E 00 00 00 00 00 00
  $!  REQ001:60A 02 3E 00 00 00 00 00 00       $!  ANS001:6DA 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:60A 03 19 02 09 00 00 00 00       $#  ANS000:6DA 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/3a000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:60A 04 14 FF FF FF 00 00 00       $$  ANS000:6DA 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:60A 03 22 F1 87 00 00 00 00       $%  ANS000:6DA 03 22 F1 87 00 00 00 00
  $%  REQ001:60A 03 22 F1 8A 00 00 00 00       $%  ANS001:6DA 03 22 F1 8A 00 00 00 00
  $%  REQ002:60A 03 22 F1 93 00 00 00 00       $%  ANS002:6DA 03 22 F1 93 00 00 00 00
  $%  REQ003:60A 03 22 F1 95 00 00 00 00       $%  ANS003:6DA 03 22 F1 95 00 00 00 00

  $%  000:零部件号:          $%    $%  ANS000.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  001:供应商代码:        $%    $%  ANS001.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9);
  $%  002:硬件版本号:        $%    $%  ANS002.BYTE004  $%  ASCII(X1,X2,X3);
  $%  003:软件版本号:        $%    $%  ANS003.BYTE004  $%  ASCII(X1,X2,X3);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:60A 03 22 0B 05 00 00 00 00       $  ANS000:6DA 03 22 0B 05 00 00 00 00
  $  REQ001:60A 03 22 0B 06 00 00 00 00       $  ANS001:6DA 03 22 0B 06 00 00 00 00
  $  REQ002:60A 03 22 0B 02 00 00 00 00       $  ANS002:6DA 03 22 0B 02 00 00 00 00

  $  000.闭锁电机电压             $    $  V     $    $  ANS000.BYTE004  $  y=x*6/51;
  $  001.电源电压                 $    $  V     $    $  ANS000.BYTE005  $  y=x*6/51;
  $  002.解锁电机电压             $    $  V     $    $  ANS000.BYTE006  $  y=x*6/51;
  $  003.解锁传感器输出电压       $    $  V     $    $  ANS000.BYTE007  $  y=x/51;
  $  004.解锁传感器供电电压       $    $  V     $    $  ANS000.BYTE008  $  y=x*6/51;
  $  005.闭锁传感器输出电压       $    $  V     $    $  ANS000.BYTE009  $  y=x/51;
  $  006.闭锁次数                 $    $        $    $  ANS001.BYTE004  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  007.解锁次数                 $    $        $    $  ANS001.BYTE008  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  008.解闭锁失败次数           $    $        $    $  ANS001.BYTE012  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  009.上电复位次数             $    $        $    $  ANS001.BYTE016  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  010.ECU序列号                $    $        $    $  ANS002.BYTE004  $  HEX(X1,X2,X3,X4,X5,X6);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:60A 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
