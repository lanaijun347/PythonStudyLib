
    车型ID：1a32

    模拟：协议模拟-->1a32

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7BF

进入命令:

  $~  REQ000:7B7 02 10 01 00 00 00 00 00       $~  ANS000:7BF 02 10 01 00 00 00 00 00
  $~  REQ001:7B7 02 10 01 00 00 00 00 00       $~  ANS001:7BF 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7B7 02 3E 80 00 00 00 00 00       $!  ANS000:7BF 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7B7 03 19 02 09 00 00 00 00       $#  ANS000:7BF 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/fe000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7B7 04 14 FF FF FF 00 00 00       $$  ANS000:7BF 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7B7 03 22 F1 93 00 00 00 00       $%  ANS000:7BF 03 22 F1 93 00 00 00 00
  $%  REQ001:7B7 03 22 F1 94 00 00 00 00       $%  ANS001:7BF 03 22 F1 94 00 00 00 00
  $%  REQ002:7B7 03 22 F1 95 00 00 00 00       $%  ANS002:7BF 03 22 F1 95 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1/100,(x1/10)%10,x1%10);
  $%  001:硬件日期:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%02d/%02d/%02d],x1,x2,x3);
  $%  002:软件编号:        $%    $%  ANS001.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%.2d.%.2d],(x1*256+x2)/10000,((x1*256+x2)%10000)/100,(x1*256+x2)%100);
  $%  004:软件日期:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([%02d/%02d/%02d],x1,x2,x3);
  $%  005:修改次数:        $%    $%  ANS002.BYTE009  $%  y=x1;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7B7 03 22 01 08 00 00 00 00       $  ANS000:7BF 03 22 01 08 00 00 00 00

  $  000.左儿童锁闭锁状态           $    $       $    $  ANS000.BYTE007  $  if(x1&0x01) y = @000a;else y = @0009;
  $  001.右儿童锁闭锁状态           $    $       $    $  ANS000.BYTE007  $  if(x1&0x02) y = @000a;else y = @0009;
  $  002.交流充电口状态             $    $       $    $  ANS000.BYTE007  $  if(x1&0x04) y = @001d;else y = @001e;
  $  003.交流充电口照明灯状态       $    $       $    $  ANS000.BYTE007  $  if(x1&0x08) y = @001d;else y = @001e;
  $  004.行李箱解锁开关状态         $    $       $    $  ANS000.BYTE007  $  if(x1&0x10) y = @0002;else y = @0003;
  $  005.行李箱灯开关状态           $    $       $    $  ANS000.BYTE007  $  if(x1&0x20)y=@001d;else y=@001e;
  $  006.行李箱状态                 $    $       $    $  ANS000.BYTE007  $  if(x1&0x40)y=@001d;else y=@001e;
  $  007.行李箱灯状态               $    $       $    $  ANS000.BYTE007  $  if(x1&0x80)y=@001d;else y=@001e;
  $  008.油箱口盖状态               $    $       $    $  ANS000.BYTE008  $  if(x1&0x01) y = @001d;else y = @001e;
  $  009.后雨刮复位信号             $    $       $    $  ANS000.BYTE008  $  if(x1&0x02) y = @0002;else y = @0003;
  $  010.后小灯状态                 $    $       $    $  ANS000.BYTE008  $  if(x1&0x04) y = @001d;else y = @001e;
  $  011.倒车灯状态                 $    $       $    $  ANS000.BYTE008  $  if(x1&0x08) y = @001d;else y = @001e;
  $  012.后雾灯状态                 $    $       $    $  ANS000.BYTE008  $  if(x1&0x10) y = @001d;else y = @001e;
  $  013.报警器状态                 $    $       $    $  ANS000.BYTE008  $  if(x1&0x20)y=@001d;else y=@001e;
  $  014.后除霜状态                 $    $       $    $  ANS000.BYTE008  $  if(x1&0x40)y=@001d;else y=@001e;
  $  015.后舱ACC电状态              $    $       $    $  ANS000.BYTE008  $  if(x1&0x80)y=@001d;else y=@001e;
  $  016.后雨刮开关状态             $    $       $    $  ANS000.BYTE009  $  if(x1&0x01) y = @001d;else y = @001e;
  $  017.后鼓风机状态               $    $       $    $  ANS000.BYTE009  $  if(x1&0x02) y = @001d;else y = @001e;
  $  018.后洗涤状态                 $    $       $    $  ANS000.BYTE009  $  if(x1&0x04) y = @001d;else y = @001e;
  $  019.前洗涤状态                 $    $       $    $  ANS000.BYTE009  $  if(x1&0x08) y = @001d;else y = @001e;
  $  020.直流充电口盖状态           $    $       $    $  ANS000.BYTE009  $  if(x1&0x10) y = @001d;else y = @001e;
  $  021.直流充电口照明状态         $    $       $    $  ANS000.BYTE009  $  if(x1&0x20)y=@001d;else y=@001e;
  $  022.交流充电枪连接状态         $    $       $    $  ANS000.BYTE009  $  if(x1&0x40) y = @05d7;else y = @0254;
  $  023.直流充电枪连接状态         $    $       $    $  ANS000.BYTE009  $  if(x1&0x80) y = @05d7;else y = @0254;
  $  024.交流充电枪闭锁位置         $    $       $    $  ANS000.BYTE010  $  if(x1&0x01) y = @000a;else y = @0009;
  $  025.直流充电枪闭锁位置         $    $       $    $  ANS000.BYTE010  $  if(x1&0x02) y = @000a;else y = @0009;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7B7 30 01 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
