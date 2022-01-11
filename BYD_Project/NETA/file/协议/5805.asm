
    车型ID：5805

    模拟：协议模拟-->5805

;******************************************************************************************************************************************************

    通讯线: $~03$~11$~500k$~734

进入命令:

  $~  REQ000:724 02 10 03 FF FF FF FF FF       $~  ANS000:734 02 10 03 FF FF FF FF FF

空闲命令:

  $!  REQ000:724 02 3E 00 FF FF FF FF FF       $!  ANS000:734 02 3E 00 FF FF FF FF FF

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:724 03 19 02 09 FF FF FF FF       $#  ANS000:734 03 19 02 09 FF FF FF FF

		控制公式：
			y=(x1<<8)+x2;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/58040000_2BYTE


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:724 04 14 FF FF FF FF FF FF       $$  ANS000:734 04 14 FF FF FF FF FF FF

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:724 03 22 F1 91 FF FF FF FF       $%  ANS000:734 03 22 F1 91 FF FF FF FF
  $%  REQ001:724 03 22 F1 88 FF FF FF FF       $%  ANS001:734 03 22 F1 88 FF FF FF FF
  $%  REQ002:724 03 22 F1 8A FF FF FF FF       $%  ANS002:734 03 22 F1 8A FF FF FF FF
  $%  REQ003:724 03 22 F1 87 FF FF FF FF       $%  ANS003:734 03 22 F1 87 FF FF FF FF

  $%  000:硬件版本号:            $%    $%  ANS000.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5);
  $%  001:软件版本号:            $%    $%  ANS001.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  002:系统供应商代码:        $%    $%  ANS002.BYTE004  $%  y=ASCII(x1,x2,x3);
  $%  003:整车零部件号:          $%    $%  ANS003.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11);

;******************************************************************************************************************************************************

读数据流: 

  $)  00.读取动态数据流
  $  00.读取动态数据流
  $  REQ000:724 03 22 03 00 FF FF FF FF       $  ANS000:734 03 22 03 00 FF FF FF FF

  $  000.电池电压           $    $  V          $    $  ANS000.BYTE004  $  y=x*0.1;
  $  001.扭矩               $    $  V          $    $  ANS000.BYTE005  $  y=x*0.1-12.7;
  $  002.角度               $    $  degree     $    $  ANS000.BYTE006  $  y=x1*256+x2-3276.7;
  $  003.车速               $    $  km/h       $    $  ANS000.BYTE009  $  y=x;
  $  004.电机电流反馈       $    $  A          $    $  ANS000.BYTE010  $  y=x-127;

  $)  01.总线数据监听
  $  01.总线数据监听
;  $  REQ000:724       $  ANS000:734

;  $  000.方向盘转角信号                 $    $  degree     $    $  ANS000.BYTE002  $  y=((x1*256+x2)/2)*0.1-1080;
;  $  001.转向角传感器零位标定状态       $    $             $    $  ANS000.BYTE004  $  switxh(x&0x40) 0x40:y=@0319;default: y=@0320;
;  $  002.方向盘转角速率信号             $    $  degree     $    $  ANS000.BYTE004  $  y=(x1&15)*409.6+x2*1.6+x3/160-1080;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:724 30 00 01 FF FF FF FF FF  $FC 

;******************************************************************************************************************************************************
