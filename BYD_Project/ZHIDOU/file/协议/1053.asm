
    车型ID：1053

    模拟：协议模拟-->1053

;******************************************************************************************************************************************************

    通讯线: $~01$~09$~500k$~7EB

进入命令:

  $~  REQ000:7E3 02 10 01 00 00 00 00 00       $~  ANS000:7EB 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7E3 02 3E 01 00 00 00 00 00       $!  ANS000:7EB 02 3E 01 00 00 00 00 00

退出命令:

  $@  REQ000:7E3 01 20 00 00 00 00 00 00       $@  ANS000:7EB 01 20 00 00 00 00 00 00


;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7E3 02 24 02 00 00 00 00 00       $%  ANS000:7EB 02 24 02 00 00 00 00 00
  $%  REQ001:7E3 02 24 03 00 00 00 00 00       $%  ANS001:7EB 02 24 03 00 00 00 00 00
  $%  REQ002:7E3 02 24 04 00 00 00 00 00       $%  ANS002:7EB 02 24 04 00 00 00 00 00
  $%  REQ003:7E3 02 24 05 00 00 00 00 00       $%  ANS003:7EB 02 24 05 00 00 00 00 00

  $%  000:零部件供应商代码:        $%    $%  ANS000.BYTE003  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8);
  $%  001:零部件图号:              $%    $%  ANS001.BYTE003  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12);
  $%  002:零部件批次号:            $%    $%  ANS002.BYTE003  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8);
  $%  003:ECU软硬件版本号:         $%    $%  ANS003.BYTE003  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11);

;******************************************************************************************************************************************************

读数据流: 

  $)  00.读取动态数据流
  $  00.读取动态数据流
  $  REQ000:7E3 03 22 00 01 00 00 00 00       $  ANS000:7EB 03 22 00 01 00 00 00 00
  $  REQ001:7E3 03 22 00 02 00 00 00 00       $  ANS001:7EB 03 22 00 02 00 00 00 00
  $  REQ002:7E3 03 22 00 03 00 00 00 00       $  ANS002:7EB 03 22 00 03 00 00 00 00
  $  REQ003:7E3 03 22 00 04 00 00 00 00       $  ANS003:7EB 03 22 00 04 00 00 00 00

  $  000.充电机输入端电压                   $    $  V       $    $  ANS000.BYTE004  $  y=(x1+x2*256);
  $  001.充电机输入端电流                   $    $  A       $    $  ANS000.BYTE006  $  y=x*0.5;
  $  002.充电机高压端输出电压               $    $  V       $    $  ANS001.BYTE004  $  y=x*0.5;
  $  003.充电机高压端输出电流               $    $  A       $    $  ANS001.BYTE005  $  y=x;
  $  004.充电机高压端最大允许输出电压       $    $  V       $    $  ANS001.BYTE006  $  y=x*0.5;
  $  005.充电机高压端最大允许输出电流       $    $  A       $    $  ANS001.BYTE007  $  y=x;
  $  006.充电机温度                         $    $  °C     $    $  ANS002.BYTE004  $  y=x-40;
  $  007.充电机低压端输出电压               $    $  V       $    $  ANS003.BYTE004  $  y=x*0.1;
  $  008.充电机低压端输出电流               $    $  A       $    $  ANS003.BYTE005  $  y=x;

  $)  01.读取状态数据流
  $  01.读取状态数据流
  $  REQ000:7E3 03 22 01 01 00 00 00 00       $  ANS000:7EB 03 22 01 01 00 00 00 00

  $  000.充电机运行状态       $    $       $    $  ANS000.BYTE004  $  if(x==0x01) y=@0077;else if(x==0x02) y=@016e;else if(x==0x04) y=@0000;else if(x==0x07) y=@0170;else if(x==0x09) y=@0171;else if(x==0x0A) y=@0172;else if(x==0x0B) y=@0173;else y=@000d;
  $  001.充电机故障等级       $    $       $    $  ANS000.BYTE005  $  if(x==0x00) y=@0167;else if(x==0x01) y=@0168;else if(x==0x02) y=@0169;else if(x==0x03) y=@016a;else y=@000d;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7E3 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
