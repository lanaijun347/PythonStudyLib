
    车型ID：2400

    模拟：协议模拟-->2400

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~794

进入命令:

  $~  REQ000:714 02 10 03 00 00 00 00 00       $~  ANS000:794 02 10 03 00 00 00 00 00

空闲命令:

  $!  REQ000:714 02 3E 00 00 00 00 00 00       $!  ANS000:794 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:714 03 19 02 AB 00 00 00 00       $#  ANS000:794 03 19 02 AB 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/26000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:714 04 14 FF FF FF 00 00 00       $$  ANS000:794 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:714 03 22 F1 87 00 00 00 00       $%  ANS000:794 03 22 F1 87 00 00 00 00
  $%  REQ001:714 03 22 F1 8A 00 00 00 00       $%  ANS001:794 03 22 F1 8A 00 00 00 00
  $%  REQ002:714 03 22 F1 8C 00 00 00 00       $%  ANS002:794 03 22 F1 8C 00 00 00 00
  $%  REQ003:714 03 22 F1 95 00 00 00 00       $%  ANS003:794 03 22 F1 95 00 00 00 00
  $%  REQ004:714 03 22 F1 90 00 00 00 00       $%  ANS004:794 03 22 F1 90 00 00 00 00
  $%  REQ005:714 03 22 F1 93 00 00 00 00       $%  ANS005:794 03 22 F1 93 00 00 00 00
  $%  REQ006:714 03 22 F1 97 00 00 00 00       $%  ANS006:794 03 22 F1 97 00 00 00 00

  $%  000:零件编号:               $%    $%  ANS000.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  001:供应商标识:             $%    $%  ANS001.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  002:产品系列号:             $%    $%  ANS002.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  003:软件版本号:             $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  004:车辆识别码(VIN):        $%    $%  ANS004.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  005:ECU硬件版本号:          $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4);
  $%  006:系统名字:               $%    $%  ANS006.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);

;******************************************************************************************************************************************************

读数据流: 

  $)  00.速度信息
  $  00.速度信息
  $  REQ000:714 03 22 FD 00 00 00 00 00       $  ANS000:794 03 22 FD 00 00 00 00 00

  $  000.车速             $    $  km/h     $    $  ANS000.BYTE004  $  y=(x1*256+x2)*0.05625;
  $  001.左前轮速度       $    $  km/h     $    $  ANS000.BYTE006  $  y=(x1*256+x2)*0.05625;
  $  002.右前轮速度       $    $  km/h     $    $  ANS000.BYTE008  $  y=(x1*256+x2)*0.05625;
  $  003.左后轮速度       $    $  km/h     $    $  ANS000.BYTE010  $  y=(x1*256+x2)*0.05625;
  $  004.右后轮速度       $    $  km/h     $    $  ANS000.BYTE012  $  y=(x1*256+x2)*0.05625;

  $)  01.输入数据
  $  01.输入数据
  $  REQ000:714 03 22 FD 01 00 00 00 00       $  ANS000:794 03 22 FD 01 00 00 00 00

  $  000.电池电压         $    $  V     $    $  ANS000.BYTE004  $  y=x*0.08;
  $  001.刹车灯开关       $    $        $    $  ANS000.BYTE005  $  switxh(x) 0x00: y=@0058; 0x01: y=@0057;

  $)  02.驱动状态
  $  02.驱动状态
  $  REQ000:714 03 22 FD 02 00 00 00 00       $  ANS000:794 03 22 FD 02 00 00 00 00

  $  000.阀门继电器状态                  $    $       $    $  ANS000.BYTE004  $  switxh(x) 0x00: y=@0058; 0x01: y=@0057;
  $  001.水泵电机状态                    $    $       $    $  ANS000.BYTE005  $  switxh(x) 0x00: y=@0058; 0x01: y=@0057;
  $  002.左前阀 (进油)阀门驱动状态       $    $       $    $  ANS000.BYTE006  $  switxh(((x>>0)&1)) 0x0:y=@009e;0x1:y=@009d;
  $  003.左前阀 (出油)阀门驱动状态       $    $       $    $  ANS000.BYTE006  $  switxh(((x>>1)&1)) 0x0:y=@009e;0x1:y=@009d;
  $  004.右前阀 (进油)阀门驱动状态       $    $       $    $  ANS000.BYTE006  $  switxh(((x>>2)&1)) 0x0:y=@009e;0x1:y=@009d;
  $  005.右前阀 (出油)阀门驱动状态       $    $       $    $  ANS000.BYTE006  $  switxh(((x>>3)&1)) 0x0:y=@009e;0x1:y=@009d;
  $  006.右后阀 (进油)阀门驱动状态       $    $       $    $  ANS000.BYTE006  $  switxh(((x>>4)&1)) 0x0:y=@009e;0x1:y=@009d;
  $  007.右后阀 (出油)阀门驱动状态       $    $       $    $  ANS000.BYTE006  $  switxh(((x>>5)&1)) 0x0:y=@009e;0x1:y=@009d;
  $  008.左后阀 (进油)阀门驱动状态       $    $       $    $  ANS000.BYTE006  $  switxh(((x>>6)&1)) 0x0:y=@009e;0x1:y=@009d;
  $  009.左后阀 (出油)阀门驱动状态       $    $       $    $  ANS000.BYTE006  $  switxh(((x>>7)&1)) 0x0:y=@009e;0x1:y=@009d;

  $)  03.填充状态
  $  03.填充状态
  $  REQ000:714 03 22 FD 03 00 00 00 00       $  ANS000:794 03 22 FD 03 00 00 00 00

  $  000.填充状态       $    $       $    $  ANS000.BYTE004  $  if(x==0) y=@0059;else if(x==0xAA) y=@005a;else if(x==0xEE) y=@005b;else y=@005c;

  $)  04.EOL(下线配置)状态
  $  04.EOL(下线配置)状态
  $  REQ000:714 03 22 FD 04 00 00 00 00       $  ANS000:794 03 22 FD 04 00 00 00 00

  $  000.EOL(下线配置)状态       $    $       $    $  ANS000.BYTE004  $  if(x==0) y=@0059;else if(x==0xAA) y=@005a;else if(x==0xEE) y=@005b;else y=@005c;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:714 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
