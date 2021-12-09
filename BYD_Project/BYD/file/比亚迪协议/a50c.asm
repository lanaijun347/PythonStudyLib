
    车型ID：a50c

    模拟：协议模拟-->a50c

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:782 02 10 01 00 00 00 00 00       $~  ANS000:78A 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:782 02 3E 80 00 00 00 00 00       $!  ANS000:78A 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:782 03 19 02 09 00 00 00 00       $#  ANS000:78A 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/fe000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:782 04 14 FF FF FF 00 00 00       $$  ANS000:78A 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:782 03 22 F1 92 00 00 00 00       $%  ANS000:78A 03 22 F1 92 00 00 00 00
  $%  REQ001:782 03 22 F1 95 00 00 00 00       $%  ANS001:78A 03 22 F1 95 00 00 00 00
  $%  REQ002:782 03 22 F1 97 00 00 00 00       $%  ANS002:78A 03 22 F1 97 00 00 00 00
  $%  REQ003:782 03 22 F1 91 00 00 00 00       $%  ANS003:78A 03 22 F1 91 00 00 00 00
  $%  REQ004:782 03 22 F1 12 00 00 00 00       $%  ANS004:78A 03 22 F1 12 00 00 00 00

  $%  000:系统供应商ECU硬件零件编号:        $%    $%  ANS000.BYTE004  $%  ASCII(x10,x9,x8,x7,x6,x5,x4,x3,x2,x1);
  $%  001:系统供应商ECU软件版本号:          $%    $%  ANS001.BYTE009  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  002:系统名称:                         $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3);
  $%  003:客户零部件编号:                   $%    $%  ANS003.BYTE004  $%  HEX(x1);
  $%  004:车辆名称:                         $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:782 03 22 20 01 00 00 00 00       $  ANS000:78A 03 22 20 01 00 00 00 00
  $  REQ001:782 03 22 20 02 00 00 00 00       $  ANS001:78A 03 22 20 02 00 00 00 00
  $  REQ002:782 03 22 20 04 00 00 00 00       $  ANS002:78A 03 22 20 04 00 00 00 00
  $  REQ003:782 03 22 20 05 00 00 00 00       $  ANS003:78A 03 22 20 05 00 00 00 00

  $  000:左前轮速                $    $  km/h     $    $  ANS000.BYTE004  $  y=(x1*256+x2)*4505.5/65535;
  $  001:右前轮速                $    $  km/h     $    $  ANS000.BYTE006  $  y=(x1*256+x2)*4505.5/65535;
  $  002:左后轮速                $    $  km/h     $    $  ANS000.BYTE008  $  y=(x1*256+x2)*4505.5/65535;
  $  003:右后轮速                $    $  km/h     $    $  ANS000.BYTE010  $  y=(x1*256+x2)*4505.5/65535;
  $  004:阀继电器电压(UVR)       $    $  V        $    $  ANS001.BYTE004  $  y=x1*20.4/255;
  $  005:UC电压                  $    $  V        $    $  ANS001.BYTE005  $  y=x1*20.4/255;
  $  006:点火循环次数            $    $           $    $  ANS001.BYTE006  $  y=x1*256+x2;
  $  007:加注状态                $    $           $    $  ANS002.BYTE004  $  if(x1==0x00)y=@000c;else if(x1==0xAA)y=@000d;else if(x1==0xEE)y=@000e;else y=@000f;
  $  008:下线检测状态            $    $           $    $  ANS003.BYTE004  $  if(x1==0x00)y=@0010;else if(x1==0xAA)y=@0011;else if(x1==0xEE)y=@0012;else y=@000f;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:782 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
