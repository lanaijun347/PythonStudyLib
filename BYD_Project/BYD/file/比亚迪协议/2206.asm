
    车型ID：2206

    模拟：协议模拟-->2206

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:725 02 10 01 00 00 00 00 00       $~  ANS000:72D 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:725 02 3E 80 00 00 00 00 00       $!  ANS000:72D 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:725 04 18 00 00 FF 00 00 00       $#  ANS000:72D 04 18 00 00 FF 00 00 00

  ANS000.BYTE02 控制故障码个数，从$#ANS000.BYTE3$#开始每$#3$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/be010000_2BYTE


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="1"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:725 03 14 00 FF 00 00 00 00       $$  ANS000:72D 03 14 00 FF 00 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:725 03 22 00 01 00 00 00 00       $%  ANS000:72D 03 22 00 01 00 00 00 00

  $%  000:软件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1/100+x1%100/10/10,x1%100/10+x1%10/10,x1%10);
  $%  001:硬件版本:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%d.%d.%d],x1/100+x1%100/10/10,x1%100/10+x1%10/10,x1%10);
  $%  002:生产日期:        $%    $%  ANS000.BYTE007  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@001d,x2,@001e,x3,@001f);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:725 03 22 00 03 00 00 00 00       $  ANS000:72D 03 22 00 03 00 00 00 00
  $  REQ001:725 03 22 00 04 00 00 00 00       $  ANS001:72D 03 22 00 04 00 00 00 00
  $  REQ002:725 03 22 00 05 00 00 00 00       $  ANS002:72D 03 22 00 05 00 00 00 00

  $  000:小灯开关                         $    $       $    $  ANS000.BYTE004  $  if(x1&0x02) y=@00d4;else y=@00d3;
  $  001:近光灯开关                       $    $       $    $  ANS000.BYTE004  $  if(x1&0x04) y=@00d4;else y=@00d3;
  $  002:远光灯开关                       $    $       $    $  ANS000.BYTE004  $  if(x1&0x08) y=@00d4;else y=@00d3;
  $  003:左转向灯开关                     $    $       $    $  ANS000.BYTE004  $  if(x1&0x10) y=@00d4;else y=@00d3;
  $  004:右转向灯开关                     $    $       $    $  ANS000.BYTE004  $  if(x1&0x20) y=@00d4;else y=@00d3;
  $  005:前雾灯开关                       $    $       $    $  ANS000.BYTE004  $  if(x1&0x40) y=@00d4;else y=@00d3;
  $  006:后雾灯开关                       $    $       $    $  ANS000.BYTE004  $  if(x1&0x80) y=@00d4;else y=@00d3;
  $  007:前刮水器单次刮擦(MIST)开关       $    $       $    $  ANS001.BYTE004  $  if(x1&0x01) y=@00d4;else y=@00d3;
  $  008:前刮水器高速档开关               $    $       $    $  ANS001.BYTE004  $  if(x1&0x02) y=@00d4;else y=@00d3;
  $  009:前刮水器低速档开关               $    $       $    $  ANS001.BYTE004  $  if(x1&0x04) y=@00d4;else y=@00d3;
  $  010:前刮水器间歇(INT)开关            $    $       $    $  ANS001.BYTE004  $  switxh(x1&0x70)0x00: y=@045d;0x10: y=@045e;0x20: y=@045f;0x30: y=@0460;0x40: y=@0461;default: y=@001c;
  $  011:前刮水器自动(AUTO)开关           $    $       $    $  ANS001.BYTE005  $  switxh(x1&0x07)0x00: y=@0469;0x01: y=@046a;0x02: y=@046b;0x03: y=@046c;0x04: y=@046d;default: y=@001c;
  $  012:前洗涤器开关                     $    $       $    $  ANS001.BYTE005  $  if(x1&0x04) y=@00d4;else y=@00d3;
  $  013:回家照明功能时间                 $    $       $    $  ANS002.BYTE004  $  switxh(x1&0x07)0x00: y=@047f;0x01: y=@0463;0x02: y=@0464;0x03: y=@0465;0x04: y=@0466;0x05: y=@0467;0x06: y=@0468;default: y=@001c;
  $  014:离家照明功能时间                 $    $       $    $  ANS002.BYTE004  $  switxh(x1&0x38)0x00: y=@047e;0x08: y=@0457;0x10: y=@0458;0x18: y=@0459;0x20: y=@045a;0x28: y=@045b;0x30: y=@045c;default: y=@001c;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:725 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
