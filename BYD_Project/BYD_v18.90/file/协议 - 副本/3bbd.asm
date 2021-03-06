
    车型ID：3bbd

    模拟：协议模拟-->3bbd

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~719

进入命令:

  $~  REQ000:711 02 10 01 00 00 00 00 00       $~  ANS000:719 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:711 02 3E 80 00 00 00 00 00       $!  ANS000:719 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:711 03 19 02 09 00 00 00 00       $#  ANS000:719 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/6e000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:711 04 14 FF FF FF 00 00 00       $$  ANS000:719 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:711 03 22 F1 93 00 00 00 00       $%  ANS000:719 03 22 F1 93 00 00 00 00
  $%  REQ001:711 03 22 F1 94 00 00 00 00       $%  ANS001:719 03 22 F1 94 00 00 00 00
  $%  REQ002:711 03 22 F1 95 00 00 00 00       $%  ANS002:719 03 22 F1 95 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],(x1%1000-x1%100)/100,(x1%100-x1%10)/10,x1%10);
  $%  001:硬件日期:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0197,x2,@0198,x3,@0199);
  $%  002:软件编号:        $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%02X%02X%02X%02X%02X%02X%02X%02X%02X],x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%d%d.%d%d],((x1*256+x2)%100000-(x1*256+x2)%10000)/10000,((x1*256+x2)%10000-(x1*256+x2)%1000)/1000,((x1*256+x2)%1000-(x1*256+x2)%100)/100,((x1*256+x2)%100-(x1*256+x2)%10)/10,(x1*256+x2)%10);
  $%  004:软件日期:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0197,x2,@0198,x3,@0199);
  $%  005:修改次数:        $%    $%  ANS002.BYTE009  $%  y=x1;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:711 03 22 00 04 00 00 00 00       $  ANS000:719 03 22 00 04 00 00 00 00
  $  REQ001:711 03 22 00 05 00 00 00 00       $  ANS001:719 03 22 00 05 00 00 00 00

  $  000.音量增开关状态               $    $       $    $  ANS000.BYTE004  $  if(x1&0x01) y=@002a;else y=@00e4;
  $  001.音量减开关状态               $    $       $    $  ANS000.BYTE004  $  if(x1&0x02) y=@002a;else y=@00e4;
  $  002.上一频道开关状态             $    $       $    $  ANS000.BYTE004  $  if(x1&0x04) y=@002a;else y=@00e4;
  $  003.下一频道开关状态             $    $       $    $  ANS000.BYTE004  $  if(x1&0x08) y=@002a;else y=@00e4;
  $  004.模式开关状态                 $    $       $    $  ANS000.BYTE004  $  if(x1&0x10) y=@002a;else y=@00e4;
  $  005.蓝牙开关状态                 $    $       $    $  ANS000.BYTE004  $  if(x1&0x20) y=@002a;else y=@00e4;
  $  006.仪表确定开关状态             $    $       $    $  ANS000.BYTE004  $  if(x1&0x40) y=@002a;else y=@00e4;
  $  007.上翻页开关状态               $    $       $    $  ANS000.BYTE004  $  if(x1&0x80) y=@002a;else y=@00e4;
  $  008.下翻页开关状态               $    $       $    $  ANS000.BYTE005  $  if(x1&0x01) y=@002a;else y=@00e4;
  $  009.返回开关状态                 $    $       $    $  ANS000.BYTE005  $  if(x1&0x02) y=@002a;else y=@00e4;
  $  010.前影像开关状态               $    $       $    $  ANS000.BYTE005  $  if(x1&0x04) y=@002a;else y=@00e4;
  $  011.后影像开关状态               $    $       $    $  ANS000.BYTE005  $  if(x1&0x08) y=@002a;else y=@00e4;
  $  012.左影像开关状态               $    $       $    $  ANS000.BYTE005  $  if(x1&0x10) y=@002a;else y=@00e4;
  $  013.右影像开关状态               $    $       $    $  ANS000.BYTE005  $  if(x1&0x20) y=@002a;else y=@00e4;
  $  014.全景影像开关状态             $    $       $    $  ANS000.BYTE005  $  if(x1&0x40) y=@002a;else y=@00e4;
  $  015.多媒体菜单返回开关状态       $    $       $    $  ANS000.BYTE005  $  if(x1&0x80) y=@002a;else y=@00e4;
  $  016.振动马达状态                 $    $       $    $  ANS001.BYTE004  $  if(x1&0x01) y=@00e2;else y=@00e3;
  $  017.静音状态                     $    $       $    $  ANS001.BYTE004  $  if(x1&0x02) y=@002a;else y=@00e4;
  $  018.定制键状态                   $    $       $    $  ANS001.BYTE004  $  if(x1&0x04) y=@002a;else y=@00e4;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:711 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
