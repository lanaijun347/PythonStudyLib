
    车型ID：9f57

    模拟：协议模拟-->9f57

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~250K$~18FF0509,18FF0709,18FF0809,18FF0909,CFF0009,CFF0109,CFF0209,CFF0309

进入命令:

  $~  REQ000:0       $~  ANS000:18FF0509

空闲命令:


退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:0       $#  ANS000:18FF0509


  码库:

  $*$*DTC/ffffffff_1BYTE


;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:010220002400001c7f82848       $%  ANS000:18FF050910220002400001c7f82848
  $%  REQ001:010220002400001c7f83848       $%  ANS001:18FF050910220002400001c7f83848

  $%  000:电机型号:       $%    $%  ANS000.BYTE001  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  001:电机编号:       $%    $%  ANS001.BYTE001  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);

;******************************************************************************************************************************************************

读数据流: 

  $)  00.电机控制器的状态信息1
  $  00.电机控制器的状态信息1
  $  REQ000:01022000240000167f80048       $  ANS000:18FF05091022000240000167f80048

  $  000.电机转速                   $    $  rpm     $    $  ANS000.BYTE001  $  y=(x1+x2*256)-15000;
  $  001.电机转矩                   $    $  Nm      $    $  ANS000.BYTE003  $  y=(x1+x2*256)-5000;
  $  002.交流测电流有效值           $    $  A       $    $  ANS000.BYTE005  $  y=(x1+x2*256)*0.1;
  $  003.电机工作状态               $    $          $    $  ANS000.BYTE007  $  if((x&0x03)==0x00) y=@009a;else if((x&0x03)==0x01) y=@009b;else if((x&0x03)==0x02) y=@0013;else y=@009c;
  $  004.电机允许预充电             $    $          $    $  ANS000.BYTE007  $  if((x&0x10)==0x10) y=@0098;else y=@0099;
  $  005.电机主动放电反馈           $    $          $    $  ANS000.BYTE007  $  if((x&0x20)==0x20) y=@0098;else y=@0099;
  $  006.IGBT 使能状态反馈          $    $          $    $  ANS000.BYTE007  $  if((x&0x40)==0x40) y=@0098;else y=@0099;
  $  007.电机控制器循环计数器       $    $          $    $  ANS000.BYTE008  $  y=x;

  $)  01.电机控制器的状态信息2
  $  01.电机控制器的状态信息2
  $  REQ000:01022000240000167f80848       $  ANS000:18FF05091022000240000167f80848

  $  000.电机温度                   $    $  度     $    $  ANS000.BYTE001  $  y=x-40;
  $  001.电机控制器温度             $    $  度     $    $  ANS000.BYTE002  $  y=x-40;
  $  002.转矩上限                   $    $  Nm     $    $  ANS000.BYTE003  $  y=(x1+x2*256);
  $  003.转矩下限                   $    $  Nm     $    $  ANS000.BYTE005  $  y=(x1+x2*256)-5000;
  $  004.故障等级                   $    $         $    $  ANS000.BYTE007  $  if((x&0x07)==0x00) y=@0093;else if((x&0x07)==0x01) y=@0094;else if((x&0x07)==0x02) y=@0095;else if((x&0x07)==0x03) y=@0096;else if((x&0x07)==0x04) y=@0097;else y=@0006;
  $  005.电机控制器循环计数器       $    $         $    $  ANS000.BYTE008  $  y=x;

  $)  02.电机控制器的状态信息3
  $  02.电机控制器的状态信息3
  $  REQ000:01022000240000167f81048       $  ANS000:18FF05091022000240000167f81048

  $  000.直流电流               $    $  A      $    $  ANS000.BYTE003  $  y=(x1+x2*256)-1000;
  $  001.直流电压               $    $  V      $    $  ANS000.BYTE005  $  y=(x1+x2*256)*0.1;
  $  002.电机转数循环计数       $    $  转     $    $  ANS000.BYTE007  $  y=x;
  $  003.循环计数器             $    $         $    $  ANS000.BYTE008  $  y=x;

  $)  03.电机控制器的状态信息4
  $  03.电机控制器的状态信息4
  $  REQ000:01022000240000167f81848       $  ANS000:18FF05091022000240000167f81848

  $  000.硬件故障码1        $    $       $    $  ANS000.BYTE001  $  y=x;
  $  001.硬件故障码2        $    $       $    $  ANS000.BYTE002  $  y=x;
  $  002.硬件故障码3        $    $       $    $  ANS000.BYTE003  $  y=x;
  $  003.硬件故障码4        $    $       $    $  ANS000.BYTE004  $  y=x;
  $  004.硬件故障码5        $    $       $    $  ANS000.BYTE005  $  y=x;
  $  005.硬件故障码6        $    $       $    $  ANS000.BYTE006  $  y=x;
  $  006.驱动电机序号       $    $       $    $  ANS000.BYTE007  $  y=x;
  $  007.循环计数器         $    $       $    $  ANS000.BYTE008  $  y=x;

;******************************************************************************************************************************************************

