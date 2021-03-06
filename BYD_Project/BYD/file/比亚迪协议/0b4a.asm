
    车型ID：0b4a

    模拟：协议模拟-->0b4a

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:711 02 10 01 00 00 00 00 00       $~  ANS000:719 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:711 02 3E 01 00 00 00 00 00       $!  ANS000:719 02 3E 01 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:711 04 18 00 00 FF 00 00 00       $#  ANS000:719 04 18 00 00 FF 00 00 00

  ANS000.BYTE02 控制故障码个数，从$#ANS000.BYTE3$#开始每$#3$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/0b4a0000_2BYTE


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="1"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:711 03 14 00 FF 00 00 00 00       $$  ANS000:719 03 14 00 FF 00 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:711 03 22 00 01 00 00 00 00       $%  ANS000:719 03 22 00 01 00 00 00 00
  $%  REQ001:711 03 22 00 03 00 00 00 00       $%  ANS001:719 03 22 00 03 00 00 00 00

  $%  000:软件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1,x2,x3);
  $%  001:生产日期:        $%    $%  ANS000.BYTE007  $%  y=SPRINTF([2%03d/%d/%d],x1,x2,x3);
  $%  002:硬件版本:        $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1,x2,x3);
  $%  003:生产日期:        $%    $%  ANS001.BYTE007  $%  y=SPRINTF([2%03d/%d/%d],x1,x2,x3);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:711 03 22 00 04 00 00 00 00       $  ANS000:719 03 22 00 04 00 00 00 00

  $  000:音量增               $    $       $    $  ANS000.BYTE004  $  if(x1&0x01) y=@002e;else y=@003e;
  $  001:音量减               $    $       $    $  ANS000.BYTE004  $  if(x1&0x02) y=@002e;else y=@003e;
  $  002:上一频道             $    $       $    $  ANS000.BYTE004  $  if(x1&0x04) y=@002e;else y=@003e;
  $  003:下一频道             $    $       $    $  ANS000.BYTE004  $  if(x1&0x08) y=@002e;else y=@003e;
  $  004:模式                 $    $       $    $  ANS000.BYTE004  $  if(x1&0x10) y=@002e;else y=@003e;
  $  005:蓝牙                 $    $       $    $  ANS000.BYTE004  $  if(x1&0x20) y=@002e;else y=@003e;
  $  006:仪表确定             $    $       $    $  ANS000.BYTE004  $  if(x1&0x40) y=@002e;else y=@003e;
  $  007:上翻页               $    $       $    $  ANS000.BYTE004  $  if(x1&0x80) y=@002e;else y=@003e;
  $  008:下翻页               $    $       $    $  ANS000.BYTE005  $  if(x1&0x01) y=@002e;else y=@003e;
  $  009:语言控制             $    $       $    $  ANS000.BYTE005  $  if(x1&0x02) y=@002e;else y=@003e;
  $  010:前影像               $    $       $    $  ANS000.BYTE005  $  if(x1&0x04) y=@002e;else y=@003e;
  $  011:后影像               $    $       $    $  ANS000.BYTE005  $  if(x1&0x08) y=@002e;else y=@003e;
  $  012:左影像               $    $       $    $  ANS000.BYTE005  $  if(x1&0x10) y=@002e;else y=@003e;
  $  013:右影像               $    $       $    $  ANS000.BYTE005  $  if(x1&0x20) y=@002e;else y=@003e;
  $  014:全景影像             $    $       $    $  ANS000.BYTE005  $  if(x1&0x40) y=@002e;else y=@003e;
  $  015:多媒体菜单返回       $    $       $    $  ANS000.BYTE005  $  if(x1&0x80) y=@002e;else y=@003e;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:711 30 01 04 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
